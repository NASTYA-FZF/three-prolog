fibonacci(N,Ch):-
    N<0, write("�� ������� ������������� �����"), !;
    N=0, Ch is 0, !;
    N=1, Ch is 1, !;
    N>1, N1 is N-1, N2 is N-2, !,
    fibonacci(N1,Ch1), fibonacci(N2, Ch2),
    Ch is Ch1+Ch2, !.

multy2chislo(Ch1, Ch2, Res):-
    Ch1=<0; Ch2=<0, write("�� ������� ������������� ����� � 0"), !;
    Ch1=1, Res is Ch2, !;
    Ch2=1, Res is Ch1, !;
    Ch1>1, Ch2>1, N is Ch2-1, !,
    multy2chislo(Ch1, N, Res1),
    Res is Ch1+Res1.

summa_del2(N, Res):-
    N=<0, write("����� ����� ������ ����� �� ����� ���� <= 0"), !;
    N=1, Res is 2, !;
    N>1, N1 is N-1, Ch2 is N*2, !,
    summa_del2(N1, Res1),
    Res is Ch2+Res1.

summ_vvod(Res, Porog):-
    write("������� ����� ������������� �����"), nl,
    read(Ch),
    (   Ch=<0, write("�� ������� ������������� ����� � 0"), nl,
        summ_vvod(Res, Porog);
    Ch>0, Res1 is Res+Ch,
        (   Res1=<Porog, write("Result: "), write(Res1), nl,
            summ_vvod(Res1, Porog);
        Res1 > Porog, write("��������� �������� �����: "), write(Res1),
        nl)
    ), !.

summ_in_process:-
    write("������� ��������� ��������"), nl,
    read(Porog),
    (   Porog=<0, write("�� ������� ������������� ����� � 0"), nl,
        summ_in_process; Porog>0),
    Res is 0, !,
    summ_vvod(Res, Porog).
