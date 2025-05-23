/*
  mini versiya
*/

#include <stdio.h>
#include <conio.h>
#include <math.h>
#include <stdlib.h>
#include <dos.h>
#include <alloc.h>
#include "833drive.h"

//=================================================
// Opisania peremennih i parametrov
//=================================================
//usnsigned int func=0;
//usnsigned int option=0;
//extern int   pcl833(func, option);
unsigned BIOSTimerSpeed=1;

unsigned TimerFreq=(unsigned)(1193181L/65536L);
static cnt=0;
unsigned char maskpuls,aush,ausl,maskupr,diskrupr,diskruph;
unsigned int base=0x0200;   // bazovij adres PCL-833
unsigned int baseacl=0x2C0; // bazovij adres ACL-6126
unsigned int iflag=0;       // flag proizoshedshego prerivania
long q1,q2,E1,E2; // polozhenie s datchikov, rassoglasovanie
float q1p,q2p; // zhelaemoe polozhenie
float far buff_q1[16000], far buff_q2[16000], far buff_q1p[16000], far buff_q2p[16000]; // buferi polozheniya
long buff_i; // indeks bufferov
//float kusp1=1, kusp2=1;
// peremennie ispolzuyushiesa pri polu4enii polozheniya s dat4ikov
  short int  U1,U2;
  long UP1,UP2;
  int u,r,b,znak;
  unsigned char uu,rr,bb,mask;
  long intr1, intu, intb, p1, p2;
  long res;
  //{=================
	 float Ed2ip=0;//integral proshliy
	 float Ed2i;//integral tekushiy
	 float Ed2t;//znachenie tekushee rassogl
	 float Ed2p=0;//znachenie predidushee rassogl
	 float qs2=0;// OS po skorosti privoda
	 float kusp1=80;
	 float Ki=130;//30//115;//46;//koeficient i-regulatora polozheniya OU
	 float Kos2=0.13;//0.12//0.086;//0.14;//dempfirovanie//koefficient OS po speed OU
	 float kusp2=90;//60//250;//50;//koefficienti usileniya po polozheniyu
	 float q1pr=0;//predidushee znachenie q1
// ================= // }//dobavleno


// end
float Period;
int flag_start=0;   // flag razreshenia raboti obrabotchika prerivanij (pri 1)
int t_smb=0; // kod nazhatoi klavishi, 27 = esc
float proc_time; // vremya raboti
float betta, bettaref; //dlya vichisleniya vh vozdeistviya
char buf[14]; // imya faila s dannimi

#ifdef __cplusplus
				#define __CPPARGS ...
#else
		#define __CPPARGS
#endif

void interrupt NewInt08(__CPPARGS);
void interrupt (*SvInt08)(__CPPARGS)=NULL;

void STOP_intr();
int SetTimer(unsigned cnt); // ustanovka taimera
void SetTimerFreq(unsigned freq); // ustanovka chastoti
void DeactivateTimer(void); // otkluchenie taimera
void Set8254Counter(unsigned cnt);
void zadergka(int aa); // zaderzhka ziklom
void outzap(int U,int basezap); // vivod upravleniya

int main(void)  // glavnaya funkciya-=-=-=-=-==-=-=-=-=-
{
		flag_start=0;
//=======================================================
		  //initialisaziya privodov
		   diskrupr=0;
		   diskruph=0;
		   outportb(baseacl+13,diskrupr); // Vse viklucheno. Po I1 zadani nulevie skorosti; ST=0
		   zadergka(200);
		   outzap(0,baseacl);          // obnulenie ZAP'ov
		   outzap(0,baseacl+2);
		   outzap(0,baseacl+4);
		   outportb(base+7, 0x07); // Sbros vseh schetchikov
		   zadergka(200);
		   // Reset vseh privodov ----------------------------------
		   maskpuls=0xC0; ausl=diskruph|maskpuls;
		   //ustanovka 6-go i 7-go razradov (aktivacia RST privodov 1 i 2)
		   outportb(baseacl+13,ausl);    // zadanie RST=1
		   delay(500);
		   maskpuls=0x3F; ausl=diskruph&maskpuls;
		   //sbros 6-go i 7-go razradov (otkluchenie +24V ot RST privodov 1 i 2)
		   outportb(baseacl+13,ausl);    // zadanie RST=0
		   //-------------------------------------------------------
  //initialising privodov complete
clrscr();

// Initialisazia PCL-833

  outportb(base+0, 0x00); // ����� ��� 1 ������
  zadergka(200);
  outportb(base+1, 0x00); // ����� ��� 2 ������
  zadergka(200);
  outportb(base+2, 0x00); // ����� ��� 3 ������
  zadergka(200);
  outportb(base+3, 0x00); // �ணࠬ���� ��饫������� ��� 1 ������. �� ���뢠��� ���稪 �� ���뢠��.
  zadergka(200);
  outportb(base+4, 0x00); // �ணࠬ���� ��饫������� ��� 2 ������. �� ���뢠��� ���稪 �� ���뢠��.
  zadergka(200);
  outportb(base+5, 0x00); // �ணࠬ���� ��饫������� ��� 3 ������. �� ���뢠��� ���稪 �� ���뢠��.
  zadergka(200);
  outportb(base+6, 0x07); // �த������� ��� ��᫥ ��९�������
  zadergka(200);
  outportb(base+8, 0x00); // 8 MHz, 24 bit
  zadergka(200);
  outportb(base+7, 0x07); // ���� ��� ���稪��
  zadergka(200);
  outportb(base+0, 0x03); // ��⠭����� ��� 1 ������ ०�� �4. �� ��� ���稪�� ������ 0.
  zadergka(200);

  outportb(base+1, 0x03); // ��⠭����� ��� 2 ������ ०�� �4. �� ��� ���稪�� ������ 0.
  zadergka(200);
  outportb(base+2, 0x03); // ��⠭����� ��� 3 ������ ०�� �4. �� ��� ���稪�� ������ 0.
  zadergka(200);
  outportb(base+10,0x00);   // divider = 0
  zadergka(200);

 // Nachalnie znachenia peremennih

  q1p=0; q2p=0;
  U1=0; U2=0;

//=======================================================
  mask=0x80;  // maska dla videlenia znaka signala datchika

   SetTimer(4096);   // Pri 4096 chastota primerno = 291 Hz
   Period=0.0034364261;     // Pri 4096 Period = 0.0034364261 sek
//=====================================================================
enable();

outportb(base+7, 0x07); // Sbros vseh schetchikov
zadergka(200);

q1=0; q2=0;
q1p=0; q2p=0;


// !!!!!! ===== Zadeystvovanie privodov ===== !!!!!!!!!!!
diskrupr=0x34;
// Vkluchenie 2 razryada - razreshenie upravleniya
// Vkluchenie 4 i 5 razryadov - vkluchenie modulazii ST vseh privodov)
ausl=diskrupr;
outportb(baseacl+13,ausl);
zadergka(200);
//-=-=-=--==-==------------
delay(2000);    // Pausa dla srabativanya storogevogo taymera
//=============================================================
		   q1p=0; q2p=0;
		   outportb(base+7, 0x07); // Sbros vseh schetchikov
		   zadergka(200);
		   q1=0; q2=0;
		  // pcl833(CounterReset, Reset_Ch1);

//=======================================================
  gotoxy(1,1); printf("programma gotova k rabote");
//
//getch();
//==== konez inicializacii ============
gotoxy(1,2); printf("vedetsa zapis'...");
int k=0, i=0;        // Razreshaet zikl (sm. nige)
buff_i = 0;
betta = 0;
bettaref=0;
proc_time = 0;
flag_start=1;  // Teper' prerivanie ot taymera obrabativaetsa
while (k==0)
{
		// vihod iz cikla po nazhatiyu esc ili dostizheniyu 16000 taktov
		if(kbhit()) { t_smb=getch();  if(t_smb==27) {k=1;} };
		if (buff_i > 15999){k=1;}

		if (iflag==1)
		{

		iflag = 0; //sbros flaga proisshedshego prerivaniya
		//	if (buff_i > 5000)
		//	{
		//	getch();
		//	}
//		Ed2ip=Ed2i;//prediduschiy integral
//		Ed2p=Ed2t;//prediduschee rassoglasovanie
//		q1pr=q1;//prediduschiy ugol povorota OU

		proc_time = proc_time+Period;
		// Formirovanie sleduyushego polozheniya
		q1p=1000;//100*sin(proc_time);
		//q2p = 1000;
//		q2p=250000*4/2/3.14159265359*(0.5); //0.01);
//		q2p=5000*4/2/3.14159265359*(0.1);
//		q2p=250000*4/2/3.14159265359*0.5*sin(proc_time*1);//(proc_time*1)
//		q2p=4096/2/3.14159265359*10*(0.5);
//		q2p=4096/2/3.14159265359*(0.5)*sin(proc_time*160);
//		q2p=4096/2/3.14159265359*(0.5);
//		if (proc_time<1) betta=0;
//		else if ((proc_time-1)*1.417 > 1) betta=1;
//		else betta=(proc_time-1)*1.417;
//		q2p=4096/2/3.14159265359*1*(betta);
		bettaref=0.1;
		if (1.05*(proc_time-1) >= bettaref) betta=bettaref;
		else if (1.05*(proc_time-1) <= 0) betta=0;
		else betta = 1.05*(proc_time-1);
		q2p=250000*4/2/3.14159265359*1*(betta);

//		q2p=4096/2/3.14159265359*10*1*(betta);
//		q2p = 0;
//		q2p=4096/2/3.14159265359*10*0.5*sin(proc_time*1);
		//q2p=-4096/2/3.14159265359*10*0.05/50*cos(50*proc_time);//for determination of speed cutoff frequency

		// vivod indeksa massiva dannih
		gotoxy(1,3); printf("indeks: %d /16000 ", buff_i);
		}

}
flag_start=0;  // Teper' prerivanie ot taymera ne obrabativaetsa
gotoxy(1,4); printf("zapis' zavershena, vvedite imya faila (*.csv): "); gets(buf); // zapros imeni faila plya zapisi dannih
// zapis' dannih, format csv
FILE *lout;
lout = fopen(buf, "wt");
fprintf(lout,"takt;q1;q2;q2p\n");
for(i=0; i<buff_i; i++) fprintf(lout,"%d;%f;%f;%f\n", i, buff_q1[i], buff_q2[i], buff_q2p[i]);//  buff_q1p[i]
fclose(lout);

gotoxy(1,5); printf("rabota zavershena");

//========================================================
// ostanov

disable();
flag_start=0;
delay(1000);   // Zadergka = 1 sec dla zaversheniya perehodnih prozessov
maskpuls=0x00; ausl=diskrupr&maskpuls;
//zadanie nulevoy skorosti vseh privodov, otkluchenie modulazii, zapret upravleniya
outportb(baseacl+13,ausl);
zadergka(200);
outzap(0,baseacl);          // obnulenie ZAP'ov
outzap(0,baseacl+2);
outzap(0,baseacl+4);
STOP_intr();
getch();
return 0;
}               // End main

//=====================
void zadergka(int aa)
// aa=200 daet 3,3 mksec
// aa=60,6 daet 1 mksec
{ while(aa>0) aa=aa-1; }
//=====================
void outzap(int U,int basezap)
{
int UZ,hbyte,lbyte;
if(U>2047) U=2047;
if(U<-2047) U=-2047;
UZ=U+2048;
hbyte=UZ/256;
outportb(basezap,hbyte);
zadergka(200);
lbyte=UZ-hbyte*256;
outportb(basezap+1,lbyte);
zadergka(200);
}

//=====================
void STOP_intr()
{
  disable();
  asm {
  push ds
  push si
  push di
  cli
  mov al,0x20
  out 0x20,al
		  }
  SetTimer(0);
  _dos_setvect(8,SvInt08);
  asm {
  sti
  pop di
  pop si
  pop ds
		  }
  enable();
}

//=====================
int SetTimer(unsigned count)
 { /* ���� ���������� 0, �� ��������� ����
   ��������� ��������� */
   if(!count)
	{ Set8254Counter(0);
	  /* ��������� �� ���������� */
	  if(SvInt08) _dos_setvect(8,SvInt08);
	  return 0;
	}
   TimerFreq=1193181L/count;
   Set8254Counter(count);
   SvInt08=_dos_getvect(8); _dos_setvect(8,NewInt08);
   atexit(DeactivateTimer);
   return 1;
 }

// ======================================
void SetTimerFreq(unsigned freq)
 { SetTimer((unsigned)(1193181L/freq)); }

void DeactivateTimer(void)
 { SetTimer(0); }

void Set8254Counter(unsigned cnt)
 { long l=cnt;
   if(!cnt) l=65536L; /* ���� 0, �� �� ����� ���� 65536 */
   BIOSTimerSpeed=(unsigned)(65536L/l);
   outportb(0x43,6);
   outportb(0x40,(char)cnt);
   outportb(0x40,(char)(cnt>>8));
 }

/**************************************************************/
/*                INTERRUPT SERVICE ROUTINE                   */
/**************************************************************/
// ����� ������ �� ������ !!!
void interrupt NewInt08(__CPPARGS)
 {

	cnt++;  /* ��������� ������� ����������� ����� */

   /* ���� ���� �������� ���������� BIOS...*/
   if(cnt>=BIOSTimerSpeed) { cnt=0; SvInt08(); }
   /* ����� ��������� ��������� ���������� */

   iflag =1;
// Pri flag_start==0 privodi nikak ne reagiruyut na prerivaniya ot taimera
  if(flag_start==0) goto finish;

//Privod-1 polu4enie dannih s datchikov
				b = inportb(base+2);
				zadergka(200);
				u = inportb(base+1);
				zadergka(100);
				r = inportb(base+0);
				znak=b&mask;
				if(znak==0) {  intr1=(long)r; intu=(long)u; intb=(long)b;
										 res=intb*65536+intu*256+intr1;  }
				else { rr=~r; uu=~u; bb=~b;
				   intr1=(long)rr; intu=(long)uu; intb=(long)bb;
				   intr1=intr1+1;
				   if(intr1==256) { p1=1; intr1=0;} else { p1=0;}
				   intu=intu+p1;
				   if(intu==256)  { p2=1; intu=0;} else { p2=0;}
				   intb=intb+p2;
				   res=intb*65536+intu*256+intr1;
				   res=-res;
						 }
				q1=res;
								//gotovo
//========== !!!!!!!!!!!!!!!!!! =======================
//   q1=q1p; // Eto tolko dla otladki bez privodov
//========== !!!!!!!!!!!!!!!!!! ======================
								//vi4islenie oshibki i zadayushego vozdeistviya
				E1=q1p-q1; UP1=kusp1*E1/100;
				if(UP1>2000) UP1=2000; if(UP1<-2000) UP1=-2000;
				U1=(short int)UP1;
				outzap(U1,baseacl+0); // outzap(U1,baseacl); // vivod zadayushego vozdeistviya

//Privod-2
				b = inportb(base+6);
				zadergka(200);
				u = inportb(base+5);
				zadergka(100);
				r = inportb(base+4);
				znak=b&mask;
				if(znak==0) {  intr1=(long)r; intu=(long)u; intb=(long)b;
										 res=intb*65536+intu*256+intr1;  }
				else { rr=~r; uu=~u; bb=~b;
				   intr1=(long)rr; intu=(long)uu; intb=(long)bb;
				   intr1=intr1+1;
				   if(intr1==256) { p1=1; intr1=0;} else { p1=0;}
				   intu=intu+p1;
				   if(intu==256)  { p2=1; intu=0;} else { p2=0;}
				   intb=intb+p2;
				   res=intb*65536+intu*256+intr1;
				   res=-res;
						 }
				q2=res;
//========== !!!!!!!!!!!!!!!!!! ======================
//   q2=q2p; // Eto tolko dla otladki bez privodov
//========== !!!!!!!!!!!!!!!!!! ======================
				//{ INTEGRATOR POLOZHENIYA PRIVODA
				Ed2t=q2p+q1;//tekuschee rassoglasovanie
				Ed2ip=Ed2ip+Ed2t;
				Ed2i=Ki/100*Period*Ed2ip;
				//Ed2i=Ed2ip+Ki*(Ed2t+Ed2p);//tekuschiy integral
				//if(Ed2i>8591) Ed2i=8591;
				//if(Ed2i<-8591) Ed2i=-8591;

				qs2=Kos2*(-q1+q1pr);//(-q1-q1pr)//OS po skorosti privoda
//				E2=q2p-q2-qs2; //VSP with velocity feedback
				//E2=Ed2i-q2;
				E2=Ed2i-q2-qs2;//precision dual-motor drive

				//Ed2ip=Ed2i;//prediduschiy integral
				//Ed2p=Ed2t;//prediduschee rassoglasovanie
				q1pr=q1;//prediduschiy ugol povorota OU

				//}added

				//E2=q2p+q1;
//				E2=q2p-q2;//only VSP

				UP2=kusp2*E2/100;
				//UP2=q2p;
				//UP2=UP2+47;
				UP2=UP2+52.63;
//				UP2=100;
				if(UP2>2047) UP2=2047; if(UP2<-2047) UP2=-2047;//vernut' 2000
//				UP2=52.8; //ustanovka zadannogo koda na DAC
				U2=(short int)UP2;
				outzap(U2,baseacl+2); //	outzap(U2,baseacl+2);


		if(flag_start==1) // sohranenie dannih v buffer
				if(buff_i<16000) { buff_q1[buff_i]=q1; buff_q2[buff_i]=q2; buff_q1p[buff_i]=q1p; buff_q2p[buff_i]=q2p; buff_i++; };


   finish:
   outportb(0x20,0x20);
 }
// interrupt service routine end
//==================== KONEZ ==========================
