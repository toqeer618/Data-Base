#include<iostream>
#include <iomanip>
#include<string>
#include<fstream>
//#include<conio.h>
//#include<Windows.h>
//#include<time.h>
using namespace std;
class store             //main class
{
	
	float price;
	int type;
	store()
	{

		cout<<" \a ENTER YOUR DEMAND PRESS (1) FOR TABLESTS PRESS (2) FOR SYRUPS AND PRESS (3) FOR INJECTIONS"<<endl;
	}
	/*	void choice(int  t)
	{

		if(type==1)

        if(type==2)
	    if(type==3)

	}*/


};
class total
{

};
class pharmacy				//product1
{
	

public:
	pharmacy()
	{
		
	}
	
	virtual void data( ifstream &)=0;
	virtual void print()=0;

~pharmacy()
	{
		
	}
};
class tablets : public pharmacy            // subclass p1
{
	double amu, *pric;
	int q, index;
	string *s; 
	float *p;
	int *quan;
public:
	
	tablets()
	{
	amu=0.0;
	pric;
	q=0;
	index=0;
		
	s = new string [28];
	p= new float [28];
	quan= new int [28];
	}
	/*void pharmacy::*/void  data(ifstream &tab )
	{
		tab.open("tab.txt");
		for (int i=0; i<28; i++)
	{
		tab>>s[i]  >> p[i] >>quan[i];
		
	}
	}
	void	 print()	
		{
	for (int i = 0; i < 28; i++)
	{
		cout<<left;
        cout<<setfill(' ');
		cout<<setw(25)<<s[i]<<setw(25)<<p[i]<<setw(20)<<quan[i]<<endl;
	}

	}
	void select_data1()
	{
		cout<<"\a  ENTER WHICH PRODUCT DO U WANT TO PURCHASE		:"<<endl;
		cin>>index;
		cout<< "\a  ENTER THE QUANTITY OF PRODUCT WHICH YOU WANT TO PURCHASE		:"<< endl;
		cin>>q;
		if (quan[index]==0)
		{
			cout<<"\a  PLEASE UPDATE THE STOCK "<<endl;
		}

		if(q>quan[index])
			{
				cout<<"\a ENTER THE (QAUNTITY) LESS THAN OR EQUAL TO THE SHOCK"<<endl;
				cin>>q;
		}
	}
	double amount()
	{
		amu=p[index]*q;
		pric=&amu;
		return *pric;
	}
~tablets()
	{
		delete[]p;
		delete[]s;
		delete[]quan;
		delete[]pric;
		pric=0;
		p=0;
		s=0;
		quan=0;
}
};
class syp		:public pharmacy  			// subclass p1
{
	double amu, *pric;
	int q,index;
	string *s1, *s2; 
	float *p1;
	int *quan;
public:
	
	syp()
	{
	amu=0.0;
	pric;
	q=0;
	index=0;	
	s1 = new string [14];
	s2 = new string [14];
	p1= new float [14];
	quan= new int [14];
	}
	void  data(ifstream &syp )
	{
		syp.open("syp.txt");
		for (int i=0; i<14; i++)
	{
		syp>>s1[i]  >> s2[i] >> p1[i] >> quan[i];
		
	}
	}
	void	 print()	
		{
	for (int i = 0; i < 14; i++)
	{
		cout<<left;
        cout<<setfill(' ');
		cout<<setw(30)<<s1[i]<<setw(30)<<s2[i]<<setw(20)<<p1[i]<<setw(10)<<quan[i]<<endl;
	}
	}
	void select_data1()
	{
		cout<<"\a ENTER WHICH PRODUCT DO U WANT TO PURCHASE		:"<<endl;
		cin>>index;
		cout<< "\a ENTER THE QUANTITY OF PRODUCT WHICH YOU WANT TO PURCHASE		:"<< endl;
		cin>>q;
		if (quan[index]==0)
		{
			cout<<"\a PLEASE UPDATE THE STOCK "<<endl;
		}

		if(q>quan[index])
			{
				cout<<"\a ENTER THE (QAUNTITY) LESS THAN OR EQUAL TO THE SHOCK"<<endl;
				cin>>q;
		}
	}
	double amount()
	{
		amu=(p1[index]*q);
		pric=&amu;
		return *pric;
	}
~syp()
	{
		
		delete[]s1;
		delete[]s2;
		delete[]p1;
		delete[]quan;
		delete[]pric;
		s1=0;
		pric=0;
		s2=0;
		p1=0;
		quan=0;
}

};
class inject	:public pharmacy  				// subclass p1
{
	double amu, *pric;
	int q, index;
	string *injs; 
	float *injp;
	int *quan;
public:
	
	inject()
	{
	index=0;	
	amu=0.0;
	pric;
	q=0;
	injs = new string [18];
	injp= new float [18];
	quan= new int [18];
	}
	/*void pharmacy::*/void  data(ifstream &inj )
	{
		inj.open("inj.txt");
		for (int i=0; i<18; i++)
	{
		inj >> injs[i]  >> injp[i]	>> quan[i];
		
	}
	}
	void	 print()	
		{
	for (int i = 0; i < 18; i++)
	{
		cout<<left;
        cout<<setfill(' ');
		cout<<setw(25)<<injs[i]<<setw(25)<<injp[i]<<setw(20)<<quan[i]<<endl;
	}
	}
	void select_data1()
	{
		cout<<"\a ENTER WHICH PRODUCT DO U WANT TO PURCHASE		:"<<endl;
		cin>>index;
		cout<< "\a ENTER THE QUANTITY OF PRODUCT WHICH YOU WANT TO PURCHASE		:"<< endl;
		cin>>q;
		if (quan[index]==0)
		{
			cout<<"\a PLEASE UPDATE TNE STOCK "<<endl;
		}

		if(q>quan[index])
			{
				cout<<"\a ENTER THE (QAUNTITY) LESS THAN OR EQUAL TO THE SHOCK"<<endl;
				cin>>q;
		}
	}
	double amount()
	{
		amu=(injp[index]*q);
		pric=&amu;
		return *pric;
	}
~inject()
	{
		delete[]injp;
		delete[]injs;
		delete[]quan;
		delete[]pric;
		injp=0;
		pric=0;
		injs=0;
		quan=0;
}

};
class cosmetics				//product 2
{

public:
	cosmetics()
	{
		
	}

virtual	void c_data(ifstream & )=0;
virtual void c_print()=0;
~cosmetics()
	{
	
	}
};

class perfume:public cosmetics					// subclass p2
{
	double amu, *pric;
	int q, index;
	string *n_p;
    float *p_p;
	int *quan;
public:
	perfume()
	{
		index=0;
	amu=0.0;
	pric;
	q=0;
		n_p= new string [75];
		p_p= new float [75];
		quan= new int [75];
	}
	void c_data ( ifstream &perf)
	{
		perf.open("perfum.txt");
			for (int i = 0; i < 75; i++)
			{
				perf>> n_p[i] >> p_p[i]	>>quan[i];
			}
	}
	void c_print()
	{
		for (int i = 0; i < 75; i++)
		{
			cout<<left;
            cout<<setfill(' ');
			cout<<setw(35)<<n_p[i]<<setw(30)<<p_p[i]<<setw(20)<<quan[i]<<endl;
		}

	}
	void select_data1()
	{
		cout<<"\a ENTER WHICH PRODUCT DO U WANT TO PURCHASE		:"<<endl;
		cin>>index;
		cout<< "\a ENTER THE QUANTITY OF PRODUCT WHICH YOU WANT TO PURCHASE		:"<< endl;
		cin>>q;
		if (quan[index]==0)
		{
			cout<<"\a PLEASE UPDATE THE STOCK "<<endl;
		}

		if(q>quan[index])
			{
				cout<<"\a ENTER THE (QAUNTITY) LESS THAN OR EQUAL TO THE SHOCK"<<endl;
				cin>>q;
		}
	}
	double amount()
	{
		amu=(p_p[index]*q);
		pric=&amu;
		return *pric;
	}
	~perfume()
	{
		delete[]n_p;
		delete[]p_p;
		delete[]quan;
		delete[]pric;
		pric=0;
		n_p=0;
		p_p=0;
		quan=0;
	}
};
class jewellary:public cosmetics			// subclass p1
{
	float amu, *pric;
	int q, index;
	string  *j_n;
	float *j_p;
	int *quan;
public:
	jewellary()
	{
	amu=0.0;
	pric;
	q=0;
	index=0;
		j_n= new string[14];
		j_p= new float [14];
		quan= new int [14];
	}
	void c_data( ifstream &jew )
	{
		jew.open("jewell.txt");
		for (int i = 0; i < 14; i++)
		{
          jew>>j_n[i]>>j_p[i]>>quan[i];
		}
		
	}
	void c_print()
	{
		for (int i = 0; i < 14; i++)
		{
			cout<<left;
            cout<<setfill(' ');
			cout<<setw(25)<< j_n[i]<<setw(25)<<j_p[i]<<setw(20)<<quan[i]<<endl; 
		}
	}
	void select_data1()
	{
		cout<<"\a ENTER WHICH PRODUCT DO U WANT TO PURCHASE		:"<<endl;
		cin>>index;
		cout<< "\a ENTER THE QUANTITY OF PRODUCT WHICH YOU WANT TO PURCHASE		:"<< endl;
		cin>>q;
		if (quan[index]==0)
		{
			cout<<"\a PLEASE UPDATE TNE STOCK "<<endl;
		}

		if(q>quan[index])
			{
				cout<<"\a Enter the QUANTITY less than or equal to stock"<<endl;
				cin>>q;
		}
	}
	double amount()
	{
		amu=(j_p[index]*q);
		pric=&amu;
		return *pric;
	}
	~jewellary()
	{
		 delete [] j_n;
		delete [] j_p;
		delete [] quan;
		delete[]pric;
		pric=0;
		j_n=0;
		j_p=0;
		quan=0;

	}
};
class b_products:public cosmetics				// subclass p1
{
private:
	double amu, *pric;
	int q, index;
	string  *b_n;
	float *b_p;
	int *quan;
public:
	b_products()
	{
	amu=0.0;
	pric;
	q=0;
	index=0;
		b_n =new string[23] ;
		b_p = new float [23];
		quan= new int [23];
	}
	void c_data( ifstream& but)
	{
		but.open("beauty.txt");
		for (int i = 0; i < 23 ; i++)
		{
			but>>b_n[i]>>b_p[i]>>quan[i];
		}
	}
	void c_print()
	{
		for (int i = 0; i < 23; i++)
		{
			cout<<left;
            cout<<setfill(' ');
			cout<<setw(25)<<b_n[i]<<setw(25)<<b_p[i]<<setw(20)<<quan[i]<<endl;
		}
	}
	void select_data1()
	{
		cout<<"\a ENTER WHICH PRODUCT DO U WANT TO PURCHASE		:"<<endl;
		cin>>index;
		cout<< "\a ENTER THE QUANTITY OF PRODUCT WHICH YOU WANT TO PURCHASE		:"<< endl;
		cin>>q;
		if (quan[index]==0)
		{
			cout<<"\a PLEASE UPDATE THE STOCK "<<endl;
		}

		if(q>quan[index])
			{
				cout<<"\a Enter the QUANTITY less than or equal to stock"<<endl;
				cin>>q;
		}
	}
	double amount()
	{
		amu=(b_p[index])*q;
		pric=&amu;
		return *pric;
	}

~b_products()
	{
		delete [] b_n;
		delete [] b_p;
		delete [] quan;
		b_n=0;
		b_p=0;
		quan=0;
	}
};

class hygine_prod							// product 3
{
	float amu, pric;
	int q,index;
	string h_name[15];
	float h_price[15];
	int quan[15];
public:
	hygine_prod()
	{
		index=0;
	amu=0.0;
	pric=0.0;
	q=0;
		for (int i = 0; i < 15; i++)
		{
	h_name[i]="";
		h_price[i]=0.0;
		quan[i]=0;
		}
	
	}
void	in_hygine(ifstream &hyg)
{
	/*ifstream hyg;*/
	hyg.open ("hyg.txt");

	for (int i = 0; i < 15; i++)
	{
		hyg>>h_name[i] >> h_price[i]>>quan[i];
		
	}
}
	void h_print()
	{
			for (int i = 0; i < 15; i++)
			{
				cout<<left;
                cout<<setfill(' ');
     			cout<<setw(25)<<h_name[i]<<setw(25)<< h_price[i]<<setw(20)<<quan[i]<<endl;
			}
	}
	void select_data1()
	{
		cout<<"\a ENTER WHICH PRODUCT DO U WANT TO PURCHASE		:"<<endl;
		cin>>index;
		cout<< "ENTER THE QUANTITY OF PRODUCT WHICH YOU WANT TO PURCHASE		:"<< endl;
		cin>>q;
		if (quan[index]==0)
		{
			cout<<"\a PLEASE UPDATE TNE STOCK "<<endl;
		}

		if(q>quan[index])
			{
				cout<<"\a Enter the QUANTITY less than or equal to stock"<<endl;
				cin>>q;
		}
	}
	float amount()
	{
		pric=(h_price[index]*q);
		return pric;
	}

	~hygine_prod()
	{

	}
};
class utilities								// product 4
{
	float amu, pric;
	int q, index;
	string u_name[11];
	int quan[11];
	float u_price[11];
	/*string rice[2], oil[2], wheat[2], salt[2], biscuits[2],ketchups[2];
	float p_sugar;
	float p_rice[2], p_oil[2], p_wheat[2], p_salt[2], p_biscuits[2], p_ketchups[2];*/

public:
	utilities()
	{
	amu=0.0;
	pric=0.0;
	q=0;
	index=0;
		for (int i = 0; i < 11; i++)
		{
 u_name[i]="";
	 quan[i]=0;
	 u_price[i]=0.0;
		}

	}
	void in_utiliti(ifstream &utiliti)
{
	
		utiliti.open("utiliti.txt");
		for (int i = 0; i < 11; i++)
		{
utiliti>> u_name[i] >> u_price[i] >>quan[i] ;

		}
	

	}
	
	void print1()
	{

	for (int i = 0; i < 11; i++)
		{
			cout<<left;
            cout<<setfill(' ');
			cout<<setw(25) << u_name[i] <<setw(25)<< u_price[i] <<setw(20)<<quan[i] << endl;
	     }
	}
	void select_data1()
	{
		cout<<"\a ENTER WHICH PRODUCT DO U WANT TO PURCHASE		:"<<endl;
		cin>>index;
		cout<< "\a ENTER THE QUANTITY OF PRODUCT WHICH YOU WANT TO PURCHASE		:"<< endl;
		cin>>q;
		if (quan[index]==0)
		{
			cout<<"\a PLEASE UPDATE TNE STOCK "<<endl;
		}

		if(q>quan[index])
			{
				cout<<"\a Enter the QUANTITY less than or equal to stock"<<endl;
				cin>>q;
		}
	}
	float amount()
	{
		pric=(u_price[index]*q);
		return pric;
	}
	~utilities()
	{
	
	}
};
class drinks1								// product 5
{
private:
	float dprice[8];
	string dname[8];
	int quan[8];
	float amu, pric;
	int q,index;
public:
	
	drinks1()
	{
	index=0;
	amu=0.0;
	pric=0.0;
	q=0;
		for (int i = 0; i < 8; i++)
		{
			dprice[i]=0.0;
		dname[i]=" ";
		quan[i]=0;
		}
		
	}
void getdrinks(ifstream &drinks)
{
	
		drinks.open("drinks.txt");
	/*while(drinks != NULL)*/
		
		/*drinks>>dname[i]>>dprice[i]>>;
		cout << dname[i]<<"          " << dprice[i] << "        "<<endl;;*/
	for ( int i=0; i < 8; i++)
	{
drinks>>dname[i]>>dprice[i]>>quan[i];
cout<<left;
cout<<setfill(' ');
cout <<setw(25)<< dname[i]<<setw(20)<< dprice[i]<<setw(10)<<quan[i] <<endl;
	}
	
}
void select_data1()
	{
		cout<<"\a ENTER WHICH PRODUCT DO U WANT TO PURCHASE		:"<<endl;
		cin>>index;
		cout<< "\a ENTER THE QUANTITY OF PRODUCT WHICH YOU WANT TO PURCHASE		:"<< endl;
		cin>>q;
		if (quan[index]==0)
		{
			cout<<"\a PLEASE UPDATE TNE STOCK "<<endl;
		}

		if(q>quan[index])
			{
				cout<<"\a Enter the QUANTITY less than or equal to stock"<<endl;
				cin>>q;
		}
	}
	float amount()
	{
		pric=(dprice[index]*q);
		return pric;
	}


~drinks1()
{

}
};
class select
{
private:
	double bill;
	perfume x1;
	b_products x8;
	jewellary  x9;
	utilities x2;
	drinks1   x3;
	syp       x4;
	inject    x5;
	tablets   x6;
	hygine_prod x7;
	int ind , ind1;
public:
	
	select()
	{
		ind=0;
		ind1=0;
		bill=0;
	}
	
		/*void tot_amo();*/




	//virtual int total (int )=0;
	void in_select() /*cosmetics a1, utilities a2, drinks1   a3, syp       a4, inject    a5, tablets   a6, hygine_prod a7*/
	{
label:

		int mm=1;
	char xyy;
	
		//	Beep(53,50);
				cout<<"\a (a) 'FOR UTILITY')"<<endl;
			    cout<<"\a (b) 'FOR COSMETICS')"<<endl;
				cout<<"\a (c) 'FOR PHARMACY')"<<endl;
				cout<<"\a (d) 'FOR HYGINE PRODUCTS')"<<endl;
				cout<<"\a (e) 'FOR DRINKS')"<<endl;
			cin>>xyy;
			switch (xyy)
				{
				case 'a':
					{
		ifstream ut;
		x2.in_utiliti(ut);
	    x2.print1();
		x2.select_data1();
		x2.amount();
		cout<<" \a IF YOU WANT TO BUY MORE PRESS (1) ELSE PRESS (2)"<<endl;
		cin>>mm;
		if(mm==1)
		{
			system("CLS");
			goto label;
		}
		
			break;	
				}	
					
				case 'b':
					{
						cout<<"\a ENTER (1) FOR JEWELLERY      "<<endl;
						cout<<"\a ENTER (2) FOR PERFUME        "<<endl;
						cout<<"\a ENTER (3) FOR BEAUTY PRODUCTS"<<endl;
						cin>>ind;
						switch (ind)
						{
						case 1:
							{
								ifstream jew;
								x9.c_data( jew );
								x9.c_print();
								x9.select_data1();
								x9.amount();
		cout<<"\a IF YOU WANT TO BUY MORE PRESS (1) ELSE PRESS (2)"<<endl;
		cin>>mm;
		if(mm==1)
		{
			system("CLS");
			goto label;
		}
								break;
							}
						case 2:
							{
								ifstream perf;
									x1.c_data(perf);
									x1.c_print();
									x1.select_data1();
									x1.amount();
		cout<<"\a IF YOU WANT TO BUY MORE PRESS (1) ELSE PRESS (2)"<<endl;
		cin>>mm;
		if(mm==1)
		{
			system("CLS");
			goto label;
		}
									break;
							}
						case 3:
							{
								ifstream bprod;
								x8.c_data(bprod);
									x8.c_print();
									x8.select_data1();
									x8.amount();
		cout<<"\a IF YOU WANT TO BUY MORE PRESS (1) ELSE PRESS (2)"<<endl;
		cin>>mm;
		if(mm==1)
		{
			system("CLS");
			goto label;
		}
									break;
							}
						default:
							{
							cout<<"\a WRONG INPUT"<<endl;
							break;
							}
						
						//optional break statment check later
						}
						break;
					}
				case 'c':
					{
						cout<<"\a ENTER (1) FOR TABLETS   "<<endl;
						cout<<"\a ENTER (2) FOR SYRUPS    "<<endl;
						cout<<"\a ENTER (3) FOR INJECTIONS"<<endl;
						cin>>ind1;
						switch (ind1)
						{
						case 1:
							{
								ifstream tab1;
								x6.data(tab1);
								x6.print();
								x6.select_data1();
								x6.amount();
		cout<<"\a IF YOU WANT TO BUY MORE PRESS (1) ELSE PRESS (2))"<<endl;
		cin>>mm;
		if(mm==1)
		{
			system("CLS");
			goto label;
		}
								break;
							}
						case 2:
							{
								ifstream syp1;
								x4.data(syp1);
								x4.print();
								x4.select_data1();
								x4.amount();
		cout<<"\a IF YOU WANT TO BUY MORE PRESS (1) ELSE PRESS (2)"<<endl;
		cin>>mm;
		if(mm==1)
		{
			system("CLS");
			goto label;
		}
									break;
							}
						case 3:
							{
								ifstream inj1;
								x5.data(inj1);
								x5.print();
								x5.select_data1();
								x5.amount();
		cout<<"\a IF YOU WANT TO BUY MORE PRESS (1) ELSE PRESS (2)"<<endl;
		cin>>mm;
		if(mm==1)
		{
			system("CLS");
			goto label;
		}
								break;
							}
						default:
							{
							cout<<"\a WRONG INPUT"<<endl;
							break;
							}
						}
						break;
					}
					case 'd':
					{
						ifstream hyg;	
					x7.in_hygine(hyg);
					x7.h_print();
					x7.select_data1();
					x7.amount();
		cout<<"\a IF YOU WANT TO BUY MORE PRESS (1) ELSE PRESS (2)"<<endl;
		cin>>mm;
		if(mm==1)
		{
			system("CLS");
			goto label;
		}
						break;
					}
					case 'e':
					{
		ifstream dr;
		x3.getdrinks(dr);
		x3.select_data1();
		x3.amount();
		cout<<"\a IF YOU WANT TO BUY MORE PRESS (1) ELSE PRESS (2)"<<endl;
		cin>>mm;
		if(mm==1)
		{
			system("CLS");
			goto label;
		}	
		break;													//optional we will check later
					}	
					default:
						break;
					


}
}

void data(string name,	string adress,	char gender,int age, string num)
{
	system ("CLS");
	cout<<"                             THE NAME OF THE COMPANY "<<endl;
	cout<<"                        ********************************"<<endl;
	cout<<"                           THE NAME OF THE COSTUMER  "<<name<<endl;
	cout<<"                        ********************************"<<endl;
	cout<<"                         THE ADRESS TO BE DELIVERED  "<<adress<<endl;
	cout<<"                        ********************************"<<endl;
	cout<<"                            THE GENDER  "<<gender<<endl;
	cout<<"                        ********************************"<<endl;
	cout<<"                              THE AGE "<<age<<endl;
	cout<<"                        ********************************"<<endl;
	cout<<"                             THE CONTACT NUMBER "<<num<<endl;
	cout<<"                        ********************************"<<endl;
	
}

void amo_tot()
{
	
		
		bill= bill + x1.amount();
		bill= bill + x2.amount();
		bill= bill + x3.amount();	
		bill= bill + x4.amount();	
		bill= bill + x5.amount();	
		bill= bill + x6.amount();
		bill= bill + x7.amount();
		bill= bill + x8.amount();	
		bill= bill + x9.amount();
		cout<<"                    \a \a  \a YOUR HANDSOME AMOUNT OF BILL IS ="<< bill <<endl;
	cout<<"                        *********************************"<<endl;
	cout<<"                             THANKYOU FOR SHOPPING"<<endl;
	
		}



// tot_amo()
//	{
////label1:
//	
//	
// 
//	}

~select()
{
}
};
	int main()
{	
	//Sleep(1000);
	
	string name=" ";
	string adress=" ",num="";
	char gender='a'; 
	int age=0,x=0;
	cout<<"	\a ENTER THE FULL NAME"<<endl;
	getline(cin,name);
	cout<<"\a 	Enter YOUR CURRENT ADDRESS"<<endl;
	getline(cin,adress);
	cout<<"\a ENTER YOUR GENDER M/F	"<<endl;
	cin>>gender;
	cout<<"\a ENTER YOUR AGE	"<<endl;
	cin>>age;
	cout<<"\a ENTER YOUR CELL NUMBER	"<<endl;
	cin>>num;
	cout<<" \a if you want to order press one (1) else any other key to cancel	"<<endl;
	cin>>x;
	for (int i = 0; i < 1; i++)
	{
		if(x==1)
	{
	continue;

	}
		else
		break;
	}
	
	select  obj;
system("CLS");

	obj.in_select();
	obj.data(name, adress, gender, age, num);
	obj.amo_tot();
	system("color 70");
	system("pause");
	return 0;
}