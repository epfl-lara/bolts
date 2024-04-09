; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86990 () Bool)

(assert start!86990)

(declare-fun b!1008771 () Bool)

(declare-fun res!677833 () Bool)

(declare-fun e!567581 () Bool)

(assert (=> b!1008771 (=> (not res!677833) (not e!567581))))

(declare-datatypes ((array!63590 0))(
  ( (array!63591 (arr!30612 (Array (_ BitVec 32) (_ BitVec 64))) (size!31115 (_ BitVec 32))) )
))
(declare-fun lt!445875 () array!63590)

(declare-datatypes ((SeekEntryResult!9544 0))(
  ( (MissingZero!9544 (index!40546 (_ BitVec 32))) (Found!9544 (index!40547 (_ BitVec 32))) (Intermediate!9544 (undefined!10356 Bool) (index!40548 (_ BitVec 32)) (x!87959 (_ BitVec 32))) (Undefined!9544) (MissingVacant!9544 (index!40549 (_ BitVec 32))) )
))
(declare-fun lt!445876 () SeekEntryResult!9544)

(declare-fun lt!445881 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63590 (_ BitVec 32)) SeekEntryResult!9544)

(assert (=> b!1008771 (= res!677833 (not (= lt!445876 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445881 lt!445875 mask!3464))))))

(declare-fun b!1008772 () Bool)

(declare-fun res!677831 () Bool)

(declare-fun e!567582 () Bool)

(assert (=> b!1008772 (=> (not res!677831) (not e!567582))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008772 (= res!677831 (validKeyInArray!0 k!2224))))

(declare-fun b!1008773 () Bool)

(declare-fun res!677823 () Bool)

(assert (=> b!1008773 (=> (not res!677823) (not e!567581))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008773 (= res!677823 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008774 () Bool)

(declare-fun res!677824 () Bool)

(declare-fun e!567580 () Bool)

(assert (=> b!1008774 (=> (not res!677824) (not e!567580))))

(declare-fun a!3219 () array!63590)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63590 (_ BitVec 32)) Bool)

(assert (=> b!1008774 (= res!677824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008775 () Bool)

(declare-fun res!677820 () Bool)

(assert (=> b!1008775 (=> (not res!677820) (not e!567580))))

(declare-datatypes ((List!21414 0))(
  ( (Nil!21411) (Cons!21410 (h!22596 (_ BitVec 64)) (t!30423 List!21414)) )
))
(declare-fun arrayNoDuplicates!0 (array!63590 (_ BitVec 32) List!21414) Bool)

(assert (=> b!1008775 (= res!677820 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21411))))

(declare-fun b!1008776 () Bool)

(declare-fun res!677826 () Bool)

(assert (=> b!1008776 (=> (not res!677826) (not e!567580))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008776 (= res!677826 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31115 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31115 a!3219))))))

(declare-fun b!1008777 () Bool)

(declare-fun res!677821 () Bool)

(assert (=> b!1008777 (=> (not res!677821) (not e!567582))))

(declare-fun arrayContainsKey!0 (array!63590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008777 (= res!677821 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008778 () Bool)

(assert (=> b!1008778 (= e!567581 (bvsgt (bvadd #b00000000000000000000000000000001 x!1245) resX!38))))

(declare-fun lt!445878 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008778 (= lt!445878 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008779 () Bool)

(assert (=> b!1008779 (= e!567582 e!567580)))

(declare-fun res!677829 () Bool)

(assert (=> b!1008779 (=> (not res!677829) (not e!567580))))

(declare-fun lt!445880 () SeekEntryResult!9544)

(assert (=> b!1008779 (= res!677829 (or (= lt!445880 (MissingVacant!9544 i!1194)) (= lt!445880 (MissingZero!9544 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63590 (_ BitVec 32)) SeekEntryResult!9544)

(assert (=> b!1008779 (= lt!445880 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008780 () Bool)

(declare-fun e!567579 () Bool)

(declare-fun e!567584 () Bool)

(assert (=> b!1008780 (= e!567579 e!567584)))

(declare-fun res!677832 () Bool)

(assert (=> b!1008780 (=> (not res!677832) (not e!567584))))

(declare-fun lt!445877 () SeekEntryResult!9544)

(assert (=> b!1008780 (= res!677832 (= lt!445876 lt!445877))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1008780 (= lt!445876 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30612 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!677828 () Bool)

(assert (=> start!86990 (=> (not res!677828) (not e!567582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86990 (= res!677828 (validMask!0 mask!3464))))

(assert (=> start!86990 e!567582))

(declare-fun array_inv!23602 (array!63590) Bool)

(assert (=> start!86990 (array_inv!23602 a!3219)))

(assert (=> start!86990 true))

(declare-fun b!1008781 () Bool)

(declare-fun res!677830 () Bool)

(assert (=> b!1008781 (=> (not res!677830) (not e!567582))))

(assert (=> b!1008781 (= res!677830 (and (= (size!31115 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31115 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31115 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008782 () Bool)

(assert (=> b!1008782 (= e!567580 e!567579)))

(declare-fun res!677822 () Bool)

(assert (=> b!1008782 (=> (not res!677822) (not e!567579))))

(declare-fun lt!445879 () SeekEntryResult!9544)

(assert (=> b!1008782 (= res!677822 (= lt!445879 lt!445877))))

(assert (=> b!1008782 (= lt!445877 (Intermediate!9544 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008782 (= lt!445879 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) (select (arr!30612 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008783 () Bool)

(assert (=> b!1008783 (= e!567584 e!567581)))

(declare-fun res!677825 () Bool)

(assert (=> b!1008783 (=> (not res!677825) (not e!567581))))

(assert (=> b!1008783 (= res!677825 (not (= lt!445879 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445881 mask!3464) lt!445881 lt!445875 mask!3464))))))

(assert (=> b!1008783 (= lt!445881 (select (store (arr!30612 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008783 (= lt!445875 (array!63591 (store (arr!30612 a!3219) i!1194 k!2224) (size!31115 a!3219)))))

(declare-fun b!1008784 () Bool)

(declare-fun res!677827 () Bool)

(assert (=> b!1008784 (=> (not res!677827) (not e!567582))))

(assert (=> b!1008784 (= res!677827 (validKeyInArray!0 (select (arr!30612 a!3219) j!170)))))

(assert (= (and start!86990 res!677828) b!1008781))

(assert (= (and b!1008781 res!677830) b!1008784))

(assert (= (and b!1008784 res!677827) b!1008772))

(assert (= (and b!1008772 res!677831) b!1008777))

(assert (= (and b!1008777 res!677821) b!1008779))

(assert (= (and b!1008779 res!677829) b!1008774))

(assert (= (and b!1008774 res!677824) b!1008775))

(assert (= (and b!1008775 res!677820) b!1008776))

(assert (= (and b!1008776 res!677826) b!1008782))

(assert (= (and b!1008782 res!677822) b!1008780))

(assert (= (and b!1008780 res!677832) b!1008783))

(assert (= (and b!1008783 res!677825) b!1008771))

(assert (= (and b!1008771 res!677833) b!1008773))

(assert (= (and b!1008773 res!677823) b!1008778))

(declare-fun m!933567 () Bool)

(assert (=> b!1008778 m!933567))

(declare-fun m!933569 () Bool)

(assert (=> b!1008772 m!933569))

(declare-fun m!933571 () Bool)

(assert (=> b!1008784 m!933571))

(assert (=> b!1008784 m!933571))

(declare-fun m!933573 () Bool)

(assert (=> b!1008784 m!933573))

(declare-fun m!933575 () Bool)

(assert (=> b!1008775 m!933575))

(assert (=> b!1008782 m!933571))

(assert (=> b!1008782 m!933571))

(declare-fun m!933577 () Bool)

(assert (=> b!1008782 m!933577))

(assert (=> b!1008782 m!933577))

(assert (=> b!1008782 m!933571))

(declare-fun m!933579 () Bool)

(assert (=> b!1008782 m!933579))

(declare-fun m!933581 () Bool)

(assert (=> b!1008771 m!933581))

(declare-fun m!933583 () Bool)

(assert (=> b!1008779 m!933583))

(declare-fun m!933585 () Bool)

(assert (=> b!1008783 m!933585))

(assert (=> b!1008783 m!933585))

(declare-fun m!933587 () Bool)

(assert (=> b!1008783 m!933587))

(declare-fun m!933589 () Bool)

(assert (=> b!1008783 m!933589))

(declare-fun m!933591 () Bool)

(assert (=> b!1008783 m!933591))

(assert (=> b!1008780 m!933571))

(assert (=> b!1008780 m!933571))

(declare-fun m!933593 () Bool)

(assert (=> b!1008780 m!933593))

(declare-fun m!933595 () Bool)

(assert (=> b!1008777 m!933595))

(declare-fun m!933597 () Bool)

(assert (=> b!1008774 m!933597))

(declare-fun m!933599 () Bool)

(assert (=> start!86990 m!933599))

(declare-fun m!933601 () Bool)

(assert (=> start!86990 m!933601))

(push 1)

(assert (not b!1008774))

(assert (not b!1008772))

(assert (not b!1008777))

(assert (not b!1008780))

(assert (not b!1008782))

(assert (not b!1008784))

(assert (not b!1008779))

(assert (not b!1008783))

(assert (not b!1008775))

(assert (not b!1008771))

(assert (not b!1008778))

(assert (not start!86990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!119665 () Bool)

(assert (=> d!119665 (= (validKeyInArray!0 (select (arr!30612 a!3219) j!170)) (and (not (= (select (arr!30612 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30612 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1008784 d!119665))

(declare-fun bm!42369 () Bool)

(declare-fun call!42372 () Bool)

(assert (=> bm!42369 (= call!42372 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1008837 () Bool)

(declare-fun e!567619 () Bool)

(declare-fun e!567617 () Bool)

(assert (=> b!1008837 (= e!567619 e!567617)))

(declare-fun lt!445910 () (_ BitVec 64))

(assert (=> b!1008837 (= lt!445910 (select (arr!30612 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32962 0))(
  ( (Unit!32963) )
))
(declare-fun lt!445909 () Unit!32962)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63590 (_ BitVec 64) (_ BitVec 32)) Unit!32962)

(assert (=> b!1008837 (= lt!445909 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!445910 #b00000000000000000000000000000000))))

(assert (=> b!1008837 (arrayContainsKey!0 a!3219 lt!445910 #b00000000000000000000000000000000)))

(declare-fun lt!445908 () Unit!32962)

(assert (=> b!1008837 (= lt!445908 lt!445909)))

(declare-fun res!677856 () Bool)

(assert (=> b!1008837 (= res!677856 (= (seekEntryOrOpen!0 (select (arr!30612 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9544 #b00000000000000000000000000000000)))))

(assert (=> b!1008837 (=> (not res!677856) (not e!567617))))

(declare-fun b!1008838 () Bool)

(assert (=> b!1008838 (= e!567617 call!42372)))

(declare-fun d!119667 () Bool)

(declare-fun res!677855 () Bool)

(declare-fun e!567618 () Bool)

(assert (=> d!119667 (=> res!677855 e!567618)))

(assert (=> d!119667 (= res!677855 (bvsge #b00000000000000000000000000000000 (size!31115 a!3219)))))

(assert (=> d!119667 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!567618)))

(declare-fun b!1008839 () Bool)

(assert (=> b!1008839 (= e!567619 call!42372)))

(declare-fun b!1008840 () Bool)

(assert (=> b!1008840 (= e!567618 e!567619)))

(declare-fun c!101645 () Bool)

(assert (=> b!1008840 (= c!101645 (validKeyInArray!0 (select (arr!30612 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119667 (not res!677855)) b!1008840))

(assert (= (and b!1008840 c!101645) b!1008837))

(assert (= (and b!1008840 (not c!101645)) b!1008839))

(assert (= (and b!1008837 res!677856) b!1008838))

(assert (= (or b!1008838 b!1008839) bm!42369))

(declare-fun m!933617 () Bool)

(assert (=> bm!42369 m!933617))

(declare-fun m!933619 () Bool)

(assert (=> b!1008837 m!933619))

(declare-fun m!933621 () Bool)

(assert (=> b!1008837 m!933621))

(declare-fun m!933623 () Bool)

(assert (=> b!1008837 m!933623))

(assert (=> b!1008837 m!933619))

(declare-fun m!933625 () Bool)

(assert (=> b!1008837 m!933625))

(assert (=> b!1008840 m!933619))

(assert (=> b!1008840 m!933619))

(declare-fun m!933627 () Bool)

(assert (=> b!1008840 m!933627))

(assert (=> b!1008774 d!119667))

(declare-fun d!119677 () Bool)

(assert (=> d!119677 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1008772 d!119677))

(declare-fun b!1008929 () Bool)

(declare-fun e!567677 () SeekEntryResult!9544)

(assert (=> b!1008929 (= e!567677 (Intermediate!9544 true (toIndex!0 lt!445881 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1008930 () Bool)

(declare-fun e!567679 () SeekEntryResult!9544)

(assert (=> b!1008930 (= e!567679 (Intermediate!9544 false (toIndex!0 lt!445881 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1008931 () Bool)

(declare-fun e!567680 () Bool)

(declare-fun lt!445937 () SeekEntryResult!9544)

(assert (=> b!1008931 (= e!567680 (bvsge (x!87959 lt!445937) #b01111111111111111111111111111110))))

(declare-fun b!1008932 () Bool)

(assert (=> b!1008932 (= e!567677 e!567679)))

(declare-fun c!101671 () Bool)

(declare-fun lt!445936 () (_ BitVec 64))

(assert (=> b!1008932 (= c!101671 (or (= lt!445936 lt!445881) (= (bvadd lt!445936 lt!445936) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1008933 () Bool)

(assert (=> b!1008933 (and (bvsge (index!40548 lt!445937) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445937) (size!31115 lt!445875)))))

(declare-fun e!567676 () Bool)

(assert (=> b!1008933 (= e!567676 (= (select (arr!30612 lt!445875) (index!40548 lt!445937)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119679 () Bool)

(assert (=> d!119679 e!567680))

(declare-fun c!101673 () Bool)

(assert (=> d!119679 (= c!101673 (and (is-Intermediate!9544 lt!445937) (undefined!10356 lt!445937)))))

(assert (=> d!119679 (= lt!445937 e!567677)))

(declare-fun c!101672 () Bool)

(assert (=> d!119679 (= c!101672 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119679 (= lt!445936 (select (arr!30612 lt!445875) (toIndex!0 lt!445881 mask!3464)))))

(assert (=> d!119679 (validMask!0 mask!3464)))

(assert (=> d!119679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445881 mask!3464) lt!445881 lt!445875 mask!3464) lt!445937)))

(declare-fun b!1008934 () Bool)

(assert (=> b!1008934 (and (bvsge (index!40548 lt!445937) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445937) (size!31115 lt!445875)))))

(declare-fun res!677896 () Bool)

(assert (=> b!1008934 (= res!677896 (= (select (arr!30612 lt!445875) (index!40548 lt!445937)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1008934 (=> res!677896 e!567676)))

(declare-fun b!1008935 () Bool)

(declare-fun e!567678 () Bool)

(assert (=> b!1008935 (= e!567680 e!567678)))

(declare-fun res!677898 () Bool)

(assert (=> b!1008935 (= res!677898 (and (is-Intermediate!9544 lt!445937) (not (undefined!10356 lt!445937)) (bvslt (x!87959 lt!445937) #b01111111111111111111111111111110) (bvsge (x!87959 lt!445937) #b00000000000000000000000000000000) (bvsge (x!87959 lt!445937) #b00000000000000000000000000000000)))))

(assert (=> b!1008935 (=> (not res!677898) (not e!567678))))

(declare-fun b!1008936 () Bool)

(assert (=> b!1008936 (and (bvsge (index!40548 lt!445937) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445937) (size!31115 lt!445875)))))

(declare-fun res!677897 () Bool)

(assert (=> b!1008936 (= res!677897 (= (select (arr!30612 lt!445875) (index!40548 lt!445937)) lt!445881))))

(assert (=> b!1008936 (=> res!677897 e!567676)))

(assert (=> b!1008936 (= e!567678 e!567676)))

(declare-fun b!1008937 () Bool)

(assert (=> b!1008937 (= e!567679 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!445881 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!445881 lt!445875 mask!3464))))

(assert (= (and d!119679 c!101672) b!1008929))

(assert (= (and d!119679 (not c!101672)) b!1008932))

(assert (= (and b!1008932 c!101671) b!1008930))

(assert (= (and b!1008932 (not c!101671)) b!1008937))

(assert (= (and d!119679 c!101673) b!1008931))

(assert (= (and d!119679 (not c!101673)) b!1008935))

(assert (= (and b!1008935 res!677898) b!1008936))

(assert (= (and b!1008936 (not res!677897)) b!1008934))

(assert (= (and b!1008934 (not res!677896)) b!1008933))

(assert (=> b!1008937 m!933585))

(declare-fun m!933669 () Bool)

(assert (=> b!1008937 m!933669))

(assert (=> b!1008937 m!933669))

(declare-fun m!933671 () Bool)

(assert (=> b!1008937 m!933671))

(declare-fun m!933673 () Bool)

(assert (=> b!1008936 m!933673))

(assert (=> d!119679 m!933585))

(declare-fun m!933675 () Bool)

(assert (=> d!119679 m!933675))

(assert (=> d!119679 m!933599))

(assert (=> b!1008933 m!933673))

(assert (=> b!1008934 m!933673))

(assert (=> b!1008783 d!119679))

(declare-fun d!119697 () Bool)

(declare-fun lt!445943 () (_ BitVec 32))

(declare-fun lt!445942 () (_ BitVec 32))

(assert (=> d!119697 (= lt!445943 (bvmul (bvxor lt!445942 (bvlshr lt!445942 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119697 (= lt!445942 ((_ extract 31 0) (bvand (bvxor lt!445881 (bvlshr lt!445881 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119697 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!677899 (let ((h!22599 ((_ extract 31 0) (bvand (bvxor lt!445881 (bvlshr lt!445881 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87965 (bvmul (bvxor h!22599 (bvlshr h!22599 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87965 (bvlshr x!87965 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!677899 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!677899 #b00000000000000000000000000000000))))))

(assert (=> d!119697 (= (toIndex!0 lt!445881 mask!3464) (bvand (bvxor lt!445943 (bvlshr lt!445943 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1008783 d!119697))

(declare-fun b!1008948 () Bool)

(declare-fun e!567690 () SeekEntryResult!9544)

(assert (=> b!1008948 (= e!567690 (Intermediate!9544 true index!1507 x!1245))))

(declare-fun b!1008949 () Bool)

(declare-fun e!567692 () SeekEntryResult!9544)

(assert (=> b!1008949 (= e!567692 (Intermediate!9544 false index!1507 x!1245))))

(declare-fun b!1008950 () Bool)

(declare-fun e!567693 () Bool)

(declare-fun lt!445945 () SeekEntryResult!9544)

(assert (=> b!1008950 (= e!567693 (bvsge (x!87959 lt!445945) #b01111111111111111111111111111110))))

(declare-fun b!1008951 () Bool)

(assert (=> b!1008951 (= e!567690 e!567692)))

(declare-fun c!101676 () Bool)

(declare-fun lt!445944 () (_ BitVec 64))

(assert (=> b!1008951 (= c!101676 (or (= lt!445944 lt!445881) (= (bvadd lt!445944 lt!445944) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1008952 () Bool)

(assert (=> b!1008952 (and (bvsge (index!40548 lt!445945) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445945) (size!31115 lt!445875)))))

(declare-fun e!567689 () Bool)

(assert (=> b!1008952 (= e!567689 (= (select (arr!30612 lt!445875) (index!40548 lt!445945)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119699 () Bool)

(assert (=> d!119699 e!567693))

(declare-fun c!101678 () Bool)

(assert (=> d!119699 (= c!101678 (and (is-Intermediate!9544 lt!445945) (undefined!10356 lt!445945)))))

(assert (=> d!119699 (= lt!445945 e!567690)))

(declare-fun c!101677 () Bool)

(assert (=> d!119699 (= c!101677 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119699 (= lt!445944 (select (arr!30612 lt!445875) index!1507))))

(assert (=> d!119699 (validMask!0 mask!3464)))

(assert (=> d!119699 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445881 lt!445875 mask!3464) lt!445945)))

(declare-fun b!1008953 () Bool)

(assert (=> b!1008953 (and (bvsge (index!40548 lt!445945) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445945) (size!31115 lt!445875)))))

(declare-fun res!677906 () Bool)

(assert (=> b!1008953 (= res!677906 (= (select (arr!30612 lt!445875) (index!40548 lt!445945)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1008953 (=> res!677906 e!567689)))

(declare-fun b!1008954 () Bool)

(declare-fun e!567691 () Bool)

(assert (=> b!1008954 (= e!567693 e!567691)))

(declare-fun res!677908 () Bool)

(assert (=> b!1008954 (= res!677908 (and (is-Intermediate!9544 lt!445945) (not (undefined!10356 lt!445945)) (bvslt (x!87959 lt!445945) #b01111111111111111111111111111110) (bvsge (x!87959 lt!445945) #b00000000000000000000000000000000) (bvsge (x!87959 lt!445945) x!1245)))))

(assert (=> b!1008954 (=> (not res!677908) (not e!567691))))

(declare-fun b!1008955 () Bool)

(assert (=> b!1008955 (and (bvsge (index!40548 lt!445945) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445945) (size!31115 lt!445875)))))

(declare-fun res!677907 () Bool)

(assert (=> b!1008955 (= res!677907 (= (select (arr!30612 lt!445875) (index!40548 lt!445945)) lt!445881))))

(assert (=> b!1008955 (=> res!677907 e!567689)))

(assert (=> b!1008955 (= e!567691 e!567689)))

(declare-fun b!1008956 () Bool)

(assert (=> b!1008956 (= e!567692 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!445881 lt!445875 mask!3464))))

(assert (= (and d!119699 c!101677) b!1008948))

(assert (= (and d!119699 (not c!101677)) b!1008951))

(assert (= (and b!1008951 c!101676) b!1008949))

(assert (= (and b!1008951 (not c!101676)) b!1008956))

(assert (= (and d!119699 c!101678) b!1008950))

(assert (= (and d!119699 (not c!101678)) b!1008954))

(assert (= (and b!1008954 res!677908) b!1008955))

(assert (= (and b!1008955 (not res!677907)) b!1008953))

(assert (= (and b!1008953 (not res!677906)) b!1008952))

(assert (=> b!1008956 m!933567))

(assert (=> b!1008956 m!933567))

(declare-fun m!933683 () Bool)

(assert (=> b!1008956 m!933683))

(declare-fun m!933685 () Bool)

(assert (=> b!1008955 m!933685))

(declare-fun m!933687 () Bool)

(assert (=> d!119699 m!933687))

(assert (=> d!119699 m!933599))

(assert (=> b!1008952 m!933685))

(assert (=> b!1008953 m!933685))

(assert (=> b!1008771 d!119699))

(declare-fun e!567699 () SeekEntryResult!9544)

(declare-fun b!1008962 () Bool)

(assert (=> b!1008962 (= e!567699 (Intermediate!9544 true (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1008963 () Bool)

(declare-fun e!567701 () SeekEntryResult!9544)

(assert (=> b!1008963 (= e!567701 (Intermediate!9544 false (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1008964 () Bool)

(declare-fun e!567702 () Bool)

(declare-fun lt!445947 () SeekEntryResult!9544)

(assert (=> b!1008964 (= e!567702 (bvsge (x!87959 lt!445947) #b01111111111111111111111111111110))))

(declare-fun b!1008965 () Bool)

(assert (=> b!1008965 (= e!567699 e!567701)))

(declare-fun c!101680 () Bool)

(declare-fun lt!445946 () (_ BitVec 64))

(assert (=> b!1008965 (= c!101680 (or (= lt!445946 (select (arr!30612 a!3219) j!170)) (= (bvadd lt!445946 lt!445946) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1008966 () Bool)

(assert (=> b!1008966 (and (bvsge (index!40548 lt!445947) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445947) (size!31115 a!3219)))))

(declare-fun e!567698 () Bool)

(assert (=> b!1008966 (= e!567698 (= (select (arr!30612 a!3219) (index!40548 lt!445947)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119701 () Bool)

(assert (=> d!119701 e!567702))

(declare-fun c!101682 () Bool)

(assert (=> d!119701 (= c!101682 (and (is-Intermediate!9544 lt!445947) (undefined!10356 lt!445947)))))

(assert (=> d!119701 (= lt!445947 e!567699)))

(declare-fun c!101681 () Bool)

(assert (=> d!119701 (= c!101681 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119701 (= lt!445946 (select (arr!30612 a!3219) (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464)))))

(assert (=> d!119701 (validMask!0 mask!3464)))

(assert (=> d!119701 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) (select (arr!30612 a!3219) j!170) a!3219 mask!3464) lt!445947)))

(declare-fun b!1008967 () Bool)

(assert (=> b!1008967 (and (bvsge (index!40548 lt!445947) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445947) (size!31115 a!3219)))))

(declare-fun res!677912 () Bool)

(assert (=> b!1008967 (= res!677912 (= (select (arr!30612 a!3219) (index!40548 lt!445947)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1008967 (=> res!677912 e!567698)))

(declare-fun b!1008968 () Bool)

(declare-fun e!567700 () Bool)

(assert (=> b!1008968 (= e!567702 e!567700)))

(declare-fun res!677914 () Bool)

(assert (=> b!1008968 (= res!677914 (and (is-Intermediate!9544 lt!445947) (not (undefined!10356 lt!445947)) (bvslt (x!87959 lt!445947) #b01111111111111111111111111111110) (bvsge (x!87959 lt!445947) #b00000000000000000000000000000000) (bvsge (x!87959 lt!445947) #b00000000000000000000000000000000)))))

(assert (=> b!1008968 (=> (not res!677914) (not e!567700))))

(declare-fun b!1008969 () Bool)

(assert (=> b!1008969 (and (bvsge (index!40548 lt!445947) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445947) (size!31115 a!3219)))))

(declare-fun res!677913 () Bool)

(assert (=> b!1008969 (= res!677913 (= (select (arr!30612 a!3219) (index!40548 lt!445947)) (select (arr!30612 a!3219) j!170)))))

(assert (=> b!1008969 (=> res!677913 e!567698)))

(assert (=> b!1008969 (= e!567700 e!567698)))

(declare-fun b!1008970 () Bool)

(assert (=> b!1008970 (= e!567701 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30612 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and d!119701 c!101681) b!1008962))

(assert (= (and d!119701 (not c!101681)) b!1008965))

(assert (= (and b!1008965 c!101680) b!1008963))

(assert (= (and b!1008965 (not c!101680)) b!1008970))

(assert (= (and d!119701 c!101682) b!1008964))

(assert (= (and d!119701 (not c!101682)) b!1008968))

(assert (= (and b!1008968 res!677914) b!1008969))

(assert (= (and b!1008969 (not res!677913)) b!1008967))

(assert (= (and b!1008967 (not res!677912)) b!1008966))

(assert (=> b!1008970 m!933577))

(declare-fun m!933691 () Bool)

(assert (=> b!1008970 m!933691))

(assert (=> b!1008970 m!933691))

(assert (=> b!1008970 m!933571))

(declare-fun m!933693 () Bool)

(assert (=> b!1008970 m!933693))

(declare-fun m!933695 () Bool)

(assert (=> b!1008969 m!933695))

(assert (=> d!119701 m!933577))

(declare-fun m!933697 () Bool)

(assert (=> d!119701 m!933697))

(assert (=> d!119701 m!933599))

(assert (=> b!1008966 m!933695))

(assert (=> b!1008967 m!933695))

(assert (=> b!1008782 d!119701))

(declare-fun d!119705 () Bool)

(declare-fun lt!445955 () (_ BitVec 32))

(declare-fun lt!445954 () (_ BitVec 32))

(assert (=> d!119705 (= lt!445955 (bvmul (bvxor lt!445954 (bvlshr lt!445954 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119705 (= lt!445954 ((_ extract 31 0) (bvand (bvxor (select (arr!30612 a!3219) j!170) (bvlshr (select (arr!30612 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119705 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!677899 (let ((h!22599 ((_ extract 31 0) (bvand (bvxor (select (arr!30612 a!3219) j!170) (bvlshr (select (arr!30612 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87965 (bvmul (bvxor h!22599 (bvlshr h!22599 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87965 (bvlshr x!87965 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!677899 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!677899 #b00000000000000000000000000000000))))))

(assert (=> d!119705 (= (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) (bvand (bvxor lt!445955 (bvlshr lt!445955 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1008782 d!119705))

(declare-fun b!1008983 () Bool)

(declare-fun e!567710 () SeekEntryResult!9544)

(assert (=> b!1008983 (= e!567710 (Intermediate!9544 true index!1507 x!1245))))

(declare-fun b!1008984 () Bool)

(declare-fun e!567712 () SeekEntryResult!9544)

(assert (=> b!1008984 (= e!567712 (Intermediate!9544 false index!1507 x!1245))))

(declare-fun b!1008985 () Bool)

(declare-fun e!567713 () Bool)

(declare-fun lt!445957 () SeekEntryResult!9544)

(assert (=> b!1008985 (= e!567713 (bvsge (x!87959 lt!445957) #b01111111111111111111111111111110))))

(declare-fun b!1008986 () Bool)

(assert (=> b!1008986 (= e!567710 e!567712)))

(declare-fun lt!445956 () (_ BitVec 64))

(declare-fun c!101689 () Bool)

(assert (=> b!1008986 (= c!101689 (or (= lt!445956 (select (arr!30612 a!3219) j!170)) (= (bvadd lt!445956 lt!445956) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1008987 () Bool)

(assert (=> b!1008987 (and (bvsge (index!40548 lt!445957) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445957) (size!31115 a!3219)))))

(declare-fun e!567709 () Bool)

(assert (=> b!1008987 (= e!567709 (= (select (arr!30612 a!3219) (index!40548 lt!445957)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119707 () Bool)

(assert (=> d!119707 e!567713))

(declare-fun c!101691 () Bool)

(assert (=> d!119707 (= c!101691 (and (is-Intermediate!9544 lt!445957) (undefined!10356 lt!445957)))))

(assert (=> d!119707 (= lt!445957 e!567710)))

(declare-fun c!101690 () Bool)

(assert (=> d!119707 (= c!101690 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119707 (= lt!445956 (select (arr!30612 a!3219) index!1507))))

(assert (=> d!119707 (validMask!0 mask!3464)))

(assert (=> d!119707 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30612 a!3219) j!170) a!3219 mask!3464) lt!445957)))

(declare-fun b!1008988 () Bool)

(assert (=> b!1008988 (and (bvsge (index!40548 lt!445957) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445957) (size!31115 a!3219)))))

(declare-fun res!677915 () Bool)

(assert (=> b!1008988 (= res!677915 (= (select (arr!30612 a!3219) (index!40548 lt!445957)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1008988 (=> res!677915 e!567709)))

(declare-fun b!1008989 () Bool)

(declare-fun e!567711 () Bool)

(assert (=> b!1008989 (= e!567713 e!567711)))

(declare-fun res!677917 () Bool)

(assert (=> b!1008989 (= res!677917 (and (is-Intermediate!9544 lt!445957) (not (undefined!10356 lt!445957)) (bvslt (x!87959 lt!445957) #b01111111111111111111111111111110) (bvsge (x!87959 lt!445957) #b00000000000000000000000000000000) (bvsge (x!87959 lt!445957) x!1245)))))

(assert (=> b!1008989 (=> (not res!677917) (not e!567711))))

(declare-fun b!1008990 () Bool)

(assert (=> b!1008990 (and (bvsge (index!40548 lt!445957) #b00000000000000000000000000000000) (bvslt (index!40548 lt!445957) (size!31115 a!3219)))))

(declare-fun res!677916 () Bool)

(assert (=> b!1008990 (= res!677916 (= (select (arr!30612 a!3219) (index!40548 lt!445957)) (select (arr!30612 a!3219) j!170)))))

(assert (=> b!1008990 (=> res!677916 e!567709)))

(assert (=> b!1008990 (= e!567711 e!567709)))

(declare-fun b!1008991 () Bool)

(assert (=> b!1008991 (= e!567712 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30612 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and d!119707 c!101690) b!1008983))

(assert (= (and d!119707 (not c!101690)) b!1008986))

(assert (= (and b!1008986 c!101689) b!1008984))

(assert (= (and b!1008986 (not c!101689)) b!1008991))

(assert (= (and d!119707 c!101691) b!1008985))

(assert (= (and d!119707 (not c!101691)) b!1008989))

(assert (= (and b!1008989 res!677917) b!1008990))

(assert (= (and b!1008990 (not res!677916)) b!1008988))

(assert (= (and b!1008988 (not res!677915)) b!1008987))

(assert (=> b!1008991 m!933567))

(assert (=> b!1008991 m!933567))

(assert (=> b!1008991 m!933571))

(declare-fun m!933699 () Bool)

(assert (=> b!1008991 m!933699))

(declare-fun m!933701 () Bool)

(assert (=> b!1008990 m!933701))

(declare-fun m!933703 () Bool)

(assert (=> d!119707 m!933703))

(assert (=> d!119707 m!933599))

(assert (=> b!1008987 m!933701))

(assert (=> b!1008988 m!933701))

(assert (=> b!1008780 d!119707))

(declare-fun b!1009037 () Bool)

(declare-fun e!567738 () SeekEntryResult!9544)

(declare-fun lt!445985 () SeekEntryResult!9544)

(assert (=> b!1009037 (= e!567738 (Found!9544 (index!40548 lt!445985)))))

(declare-fun e!567739 () SeekEntryResult!9544)

(declare-fun b!1009038 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63590 (_ BitVec 32)) SeekEntryResult!9544)

(assert (=> b!1009038 (= e!567739 (seekKeyOrZeroReturnVacant!0 (x!87959 lt!445985) (index!40548 lt!445985) (index!40548 lt!445985) k!2224 a!3219 mask!3464))))

(declare-fun b!1009039 () Bool)

(declare-fun e!567737 () SeekEntryResult!9544)

(assert (=> b!1009039 (= e!567737 e!567738)))

(declare-fun lt!445987 () (_ BitVec 64))

(assert (=> b!1009039 (= lt!445987 (select (arr!30612 a!3219) (index!40548 lt!445985)))))

(declare-fun c!101714 () Bool)

(assert (=> b!1009039 (= c!101714 (= lt!445987 k!2224))))

(declare-fun b!1009040 () Bool)

(assert (=> b!1009040 (= e!567739 (MissingZero!9544 (index!40548 lt!445985)))))

(declare-fun b!1009042 () Bool)

(declare-fun c!101715 () Bool)

(assert (=> b!1009042 (= c!101715 (= lt!445987 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009042 (= e!567738 e!567739)))

(declare-fun b!1009041 () Bool)

(assert (=> b!1009041 (= e!567737 Undefined!9544)))

(declare-fun d!119709 () Bool)

(declare-fun lt!445986 () SeekEntryResult!9544)

(assert (=> d!119709 (and (or (is-Undefined!9544 lt!445986) (not (is-Found!9544 lt!445986)) (and (bvsge (index!40547 lt!445986) #b00000000000000000000000000000000) (bvslt (index!40547 lt!445986) (size!31115 a!3219)))) (or (is-Undefined!9544 lt!445986) (is-Found!9544 lt!445986) (not (is-MissingZero!9544 lt!445986)) (and (bvsge (index!40546 lt!445986) #b00000000000000000000000000000000) (bvslt (index!40546 lt!445986) (size!31115 a!3219)))) (or (is-Undefined!9544 lt!445986) (is-Found!9544 lt!445986) (is-MissingZero!9544 lt!445986) (not (is-MissingVacant!9544 lt!445986)) (and (bvsge (index!40549 lt!445986) #b00000000000000000000000000000000) (bvslt (index!40549 lt!445986) (size!31115 a!3219)))) (or (is-Undefined!9544 lt!445986) (ite (is-Found!9544 lt!445986) (= (select (arr!30612 a!3219) (index!40547 lt!445986)) k!2224) (ite (is-MissingZero!9544 lt!445986) (= (select (arr!30612 a!3219) (index!40546 lt!445986)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9544 lt!445986) (= (select (arr!30612 a!3219) (index!40549 lt!445986)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119709 (= lt!445986 e!567737)))

(declare-fun c!101713 () Bool)

(assert (=> d!119709 (= c!101713 (and (is-Intermediate!9544 lt!445985) (undefined!10356 lt!445985)))))

(assert (=> d!119709 (= lt!445985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119709 (validMask!0 mask!3464)))

(assert (=> d!119709 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!445986)))

(assert (= (and d!119709 c!101713) b!1009041))

(assert (= (and d!119709 (not c!101713)) b!1009039))

(assert (= (and b!1009039 c!101714) b!1009037))

(assert (= (and b!1009039 (not c!101714)) b!1009042))

(assert (= (and b!1009042 c!101715) b!1009040))

(assert (= (and b!1009042 (not c!101715)) b!1009038))

(declare-fun m!933745 () Bool)

(assert (=> b!1009038 m!933745))

(declare-fun m!933747 () Bool)

(assert (=> b!1009039 m!933747))

(declare-fun m!933749 () Bool)

(assert (=> d!119709 m!933749))

(assert (=> d!119709 m!933599))

(declare-fun m!933751 () Bool)

(assert (=> d!119709 m!933751))

(declare-fun m!933753 () Bool)

(assert (=> d!119709 m!933753))

(declare-fun m!933755 () Bool)

(assert (=> d!119709 m!933755))

(assert (=> d!119709 m!933755))

(declare-fun m!933757 () Bool)

(assert (=> d!119709 m!933757))

(assert (=> b!1008779 d!119709))

(declare-fun d!119729 () Bool)

(declare-fun lt!445995 () (_ BitVec 32))

(assert (=> d!119729 (and (bvsge lt!445995 #b00000000000000000000000000000000) (bvslt lt!445995 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!119729 (= lt!445995 (choose!52 index!1507 x!1245 mask!3464))))

(assert (=> d!119729 (validMask!0 mask!3464)))

(assert (=> d!119729 (= (nextIndex!0 index!1507 x!1245 mask!3464) lt!445995)))

(declare-fun bs!28690 () Bool)

(assert (= bs!28690 d!119729))

(declare-fun m!933771 () Bool)

(assert (=> bs!28690 m!933771))

(assert (=> bs!28690 m!933599))

(assert (=> b!1008778 d!119729))

(declare-fun d!119735 () Bool)

(assert (=> d!119735 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86990 d!119735))

(declare-fun d!119741 () Bool)

(assert (=> d!119741 (= (array_inv!23602 a!3219) (bvsge (size!31115 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86990 d!119741))

(declare-fun d!119745 () Bool)

(declare-fun res!677937 () Bool)

(declare-fun e!567760 () Bool)

(assert (=> d!119745 (=> res!677937 e!567760)))

(assert (=> d!119745 (= res!677937 (= (select (arr!30612 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119745 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!567760)))

(declare-fun b!1009071 () Bool)

(declare-fun e!567761 () Bool)

(assert (=> b!1009071 (= e!567760 e!567761)))

(declare-fun res!677938 () Bool)

(assert (=> b!1009071 (=> (not res!677938) (not e!567761))))

(assert (=> b!1009071 (= res!677938 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31115 a!3219)))))

(declare-fun b!1009072 () Bool)

(assert (=> b!1009072 (= e!567761 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119745 (not res!677937)) b!1009071))

(assert (= (and b!1009071 res!677938) b!1009072))

(assert (=> d!119745 m!933619))

(declare-fun m!933775 () Bool)

(assert (=> b!1009072 m!933775))

(assert (=> b!1008777 d!119745))

(declare-fun b!1009095 () Bool)

(declare-fun e!567780 () Bool)

(declare-fun e!567781 () Bool)

(assert (=> b!1009095 (= e!567780 e!567781)))

(declare-fun c!101727 () Bool)

(assert (=> b!1009095 (= c!101727 (validKeyInArray!0 (select (arr!30612 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42382 () Bool)

(declare-fun call!42385 () Bool)

(assert (=> bm!42382 (= call!42385 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101727 (Cons!21410 (select (arr!30612 a!3219) #b00000000000000000000000000000000) Nil!21411) Nil!21411)))))

(declare-fun b!1009096 () Bool)

(assert (=> b!1009096 (= e!567781 call!42385)))

(declare-fun b!1009097 () Bool)

(declare-fun e!567782 () Bool)

(assert (=> b!1009097 (= e!567782 e!567780)))

(declare-fun res!677953 () Bool)

(assert (=> b!1009097 (=> (not res!677953) (not e!567780))))

(declare-fun e!567779 () Bool)

(assert (=> b!1009097 (= res!677953 (not e!567779))))

(declare-fun res!677952 () Bool)

(assert (=> b!1009097 (=> (not res!677952) (not e!567779))))

(assert (=> b!1009097 (= res!677952 (validKeyInArray!0 (select (arr!30612 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1009098 () Bool)

(assert (=> b!1009098 (= e!567781 call!42385)))

(declare-fun b!1009099 () Bool)

(declare-fun contains!5899 (List!21414 (_ BitVec 64)) Bool)

(assert (=> b!1009099 (= e!567779 (contains!5899 Nil!21411 (select (arr!30612 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119749 () Bool)

(declare-fun res!677951 () Bool)

(assert (=> d!119749 (=> res!677951 e!567782)))

(assert (=> d!119749 (= res!677951 (bvsge #b00000000000000000000000000000000 (size!31115 a!3219)))))

(assert (=> d!119749 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21411) e!567782)))

(assert (= (and d!119749 (not res!677951)) b!1009097))

(assert (= (and b!1009097 res!677952) b!1009099))

(assert (= (and b!1009097 res!677953) b!1009095))

(assert (= (and b!1009095 c!101727) b!1009098))

(assert (= (and b!1009095 (not c!101727)) b!1009096))

(assert (= (or b!1009098 b!1009096) bm!42382))

(assert (=> b!1009095 m!933619))

(assert (=> b!1009095 m!933619))

(assert (=> b!1009095 m!933627))

(assert (=> bm!42382 m!933619))

(declare-fun m!933785 () Bool)

(assert (=> bm!42382 m!933785))

(assert (=> b!1009097 m!933619))

(assert (=> b!1009097 m!933619))

(assert (=> b!1009097 m!933627))

(assert (=> b!1009099 m!933619))

(assert (=> b!1009099 m!933619))

(declare-fun m!933787 () Bool)

(assert (=> b!1009099 m!933787))

(assert (=> b!1008775 d!119749))

(push 1)

(assert (not b!1009099))

(assert (not d!119699))

(assert (not d!119707))

(assert (not b!1008837))

(assert (not bm!42369))

(assert (not d!119709))

(assert (not b!1008956))

(assert (not b!1008991))

(assert (not b!1008840))

(assert (not b!1008970))

(assert (not d!119679))

(assert (not b!1009097))

(assert (not b!1009095))

(assert (not bm!42382))

(assert (not d!119701))

(assert (not d!119729))

(assert (not b!1009038))

(assert (not b!1008937))

(assert (not b!1009072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1009188 () Bool)

(declare-fun e!567838 () SeekEntryResult!9544)

(assert (=> b!1009188 (= e!567838 (Intermediate!9544 true (toIndex!0 k!2224 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1009189 () Bool)

(declare-fun e!567840 () SeekEntryResult!9544)

(assert (=> b!1009189 (= e!567840 (Intermediate!9544 false (toIndex!0 k!2224 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1009190 () Bool)

(declare-fun e!567841 () Bool)

(declare-fun lt!446038 () SeekEntryResult!9544)

(assert (=> b!1009190 (= e!567841 (bvsge (x!87959 lt!446038) #b01111111111111111111111111111110))))

(declare-fun b!1009191 () Bool)

(assert (=> b!1009191 (= e!567838 e!567840)))

(declare-fun c!101757 () Bool)

(declare-fun lt!446037 () (_ BitVec 64))

(assert (=> b!1009191 (= c!101757 (or (= lt!446037 k!2224) (= (bvadd lt!446037 lt!446037) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009192 () Bool)

(assert (=> b!1009192 (and (bvsge (index!40548 lt!446038) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446038) (size!31115 a!3219)))))

(declare-fun e!567837 () Bool)

(assert (=> b!1009192 (= e!567837 (= (select (arr!30612 a!3219) (index!40548 lt!446038)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119787 () Bool)

(assert (=> d!119787 e!567841))

(declare-fun c!101759 () Bool)

(assert (=> d!119787 (= c!101759 (and (is-Intermediate!9544 lt!446038) (undefined!10356 lt!446038)))))

(assert (=> d!119787 (= lt!446038 e!567838)))

(declare-fun c!101758 () Bool)

(assert (=> d!119787 (= c!101758 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119787 (= lt!446037 (select (arr!30612 a!3219) (toIndex!0 k!2224 mask!3464)))))

(assert (=> d!119787 (validMask!0 mask!3464)))

(assert (=> d!119787 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464) lt!446038)))

(declare-fun b!1009193 () Bool)

(assert (=> b!1009193 (and (bvsge (index!40548 lt!446038) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446038) (size!31115 a!3219)))))

(declare-fun res!677987 () Bool)

(assert (=> b!1009193 (= res!677987 (= (select (arr!30612 a!3219) (index!40548 lt!446038)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009193 (=> res!677987 e!567837)))

(declare-fun b!1009194 () Bool)

(declare-fun e!567839 () Bool)

(assert (=> b!1009194 (= e!567841 e!567839)))

(declare-fun res!677989 () Bool)

(assert (=> b!1009194 (= res!677989 (and (is-Intermediate!9544 lt!446038) (not (undefined!10356 lt!446038)) (bvslt (x!87959 lt!446038) #b01111111111111111111111111111110) (bvsge (x!87959 lt!446038) #b00000000000000000000000000000000) (bvsge (x!87959 lt!446038) #b00000000000000000000000000000000)))))

(assert (=> b!1009194 (=> (not res!677989) (not e!567839))))

(declare-fun b!1009195 () Bool)

(assert (=> b!1009195 (and (bvsge (index!40548 lt!446038) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446038) (size!31115 a!3219)))))

(declare-fun res!677988 () Bool)

(assert (=> b!1009195 (= res!677988 (= (select (arr!30612 a!3219) (index!40548 lt!446038)) k!2224))))

(assert (=> b!1009195 (=> res!677988 e!567837)))

(assert (=> b!1009195 (= e!567839 e!567837)))

(declare-fun b!1009196 () Bool)

(assert (=> b!1009196 (= e!567840 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2224 mask!3464) #b00000000000000000000000000000000 mask!3464) k!2224 a!3219 mask!3464))))

(assert (= (and d!119787 c!101758) b!1009188))

(assert (= (and d!119787 (not c!101758)) b!1009191))

(assert (= (and b!1009191 c!101757) b!1009189))

(assert (= (and b!1009191 (not c!101757)) b!1009196))

(assert (= (and d!119787 c!101759) b!1009190))

(assert (= (and d!119787 (not c!101759)) b!1009194))

(assert (= (and b!1009194 res!677989) b!1009195))

(assert (= (and b!1009195 (not res!677988)) b!1009193))

(assert (= (and b!1009193 (not res!677987)) b!1009192))

(assert (=> b!1009196 m!933755))

(declare-fun m!933881 () Bool)

(assert (=> b!1009196 m!933881))

(assert (=> b!1009196 m!933881))

(declare-fun m!933883 () Bool)

(assert (=> b!1009196 m!933883))

(declare-fun m!933885 () Bool)

(assert (=> b!1009195 m!933885))

(assert (=> d!119787 m!933755))

(declare-fun m!933887 () Bool)

(assert (=> d!119787 m!933887))

(assert (=> d!119787 m!933599))

(assert (=> b!1009192 m!933885))

(assert (=> b!1009193 m!933885))

(assert (=> d!119709 d!119787))

(declare-fun d!119789 () Bool)

(declare-fun lt!446040 () (_ BitVec 32))

(declare-fun lt!446039 () (_ BitVec 32))

(assert (=> d!119789 (= lt!446040 (bvmul (bvxor lt!446039 (bvlshr lt!446039 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119789 (= lt!446039 ((_ extract 31 0) (bvand (bvxor k!2224 (bvlshr k!2224 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119789 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!677899 (let ((h!22599 ((_ extract 31 0) (bvand (bvxor k!2224 (bvlshr k!2224 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87965 (bvmul (bvxor h!22599 (bvlshr h!22599 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87965 (bvlshr x!87965 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!677899 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!677899 #b00000000000000000000000000000000))))))

(assert (=> d!119789 (= (toIndex!0 k!2224 mask!3464) (bvand (bvxor lt!446040 (bvlshr lt!446040 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> d!119709 d!119789))

(assert (=> d!119709 d!119735))

(declare-fun d!119791 () Bool)

(assert (=> d!119791 (= (validKeyInArray!0 (select (arr!30612 a!3219) #b00000000000000000000000000000000)) (and (not (= (select (arr!30612 a!3219) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30612 a!3219) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1008840 d!119791))

(declare-fun e!567843 () SeekEntryResult!9544)

(declare-fun b!1009197 () Bool)

(assert (=> b!1009197 (= e!567843 (Intermediate!9544 true (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(declare-fun b!1009198 () Bool)

(declare-fun e!567845 () SeekEntryResult!9544)

(assert (=> b!1009198 (= e!567845 (Intermediate!9544 false (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(declare-fun b!1009199 () Bool)

(declare-fun e!567846 () Bool)

(declare-fun lt!446042 () SeekEntryResult!9544)

(assert (=> b!1009199 (= e!567846 (bvsge (x!87959 lt!446042) #b01111111111111111111111111111110))))

(declare-fun b!1009200 () Bool)

(assert (=> b!1009200 (= e!567843 e!567845)))

(declare-fun c!101760 () Bool)

(declare-fun lt!446041 () (_ BitVec 64))

(assert (=> b!1009200 (= c!101760 (or (= lt!446041 lt!445881) (= (bvadd lt!446041 lt!446041) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009201 () Bool)

(assert (=> b!1009201 (and (bvsge (index!40548 lt!446042) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446042) (size!31115 lt!445875)))))

(declare-fun e!567842 () Bool)

(assert (=> b!1009201 (= e!567842 (= (select (arr!30612 lt!445875) (index!40548 lt!446042)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119793 () Bool)

(assert (=> d!119793 e!567846))

(declare-fun c!101762 () Bool)

(assert (=> d!119793 (= c!101762 (and (is-Intermediate!9544 lt!446042) (undefined!10356 lt!446042)))))

(assert (=> d!119793 (= lt!446042 e!567843)))

(declare-fun c!101761 () Bool)

(assert (=> d!119793 (= c!101761 (bvsge (bvadd x!1245 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!119793 (= lt!446041 (select (arr!30612 lt!445875) (nextIndex!0 index!1507 x!1245 mask!3464)))))

(assert (=> d!119793 (validMask!0 mask!3464)))

(assert (=> d!119793 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!445881 lt!445875 mask!3464) lt!446042)))

(declare-fun b!1009202 () Bool)

(assert (=> b!1009202 (and (bvsge (index!40548 lt!446042) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446042) (size!31115 lt!445875)))))

(declare-fun res!677990 () Bool)

(assert (=> b!1009202 (= res!677990 (= (select (arr!30612 lt!445875) (index!40548 lt!446042)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009202 (=> res!677990 e!567842)))

(declare-fun b!1009203 () Bool)

(declare-fun e!567844 () Bool)

(assert (=> b!1009203 (= e!567846 e!567844)))

(declare-fun res!677992 () Bool)

(assert (=> b!1009203 (= res!677992 (and (is-Intermediate!9544 lt!446042) (not (undefined!10356 lt!446042)) (bvslt (x!87959 lt!446042) #b01111111111111111111111111111110) (bvsge (x!87959 lt!446042) #b00000000000000000000000000000000) (bvsge (x!87959 lt!446042) (bvadd x!1245 #b00000000000000000000000000000001))))))

(assert (=> b!1009203 (=> (not res!677992) (not e!567844))))

(declare-fun b!1009204 () Bool)

(assert (=> b!1009204 (and (bvsge (index!40548 lt!446042) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446042) (size!31115 lt!445875)))))

(declare-fun res!677991 () Bool)

(assert (=> b!1009204 (= res!677991 (= (select (arr!30612 lt!445875) (index!40548 lt!446042)) lt!445881))))

(assert (=> b!1009204 (=> res!677991 e!567842)))

(assert (=> b!1009204 (= e!567844 e!567842)))

(declare-fun b!1009205 () Bool)

(assert (=> b!1009205 (= e!567845 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001) mask!3464) lt!445881 lt!445875 mask!3464))))

(assert (= (and d!119793 c!101761) b!1009197))

(assert (= (and d!119793 (not c!101761)) b!1009200))

(assert (= (and b!1009200 c!101760) b!1009198))

(assert (= (and b!1009200 (not c!101760)) b!1009205))

(assert (= (and d!119793 c!101762) b!1009199))

(assert (= (and d!119793 (not c!101762)) b!1009203))

(assert (= (and b!1009203 res!677992) b!1009204))

(assert (= (and b!1009204 (not res!677991)) b!1009202))

(assert (= (and b!1009202 (not res!677990)) b!1009201))

(assert (=> b!1009205 m!933567))

(declare-fun m!933889 () Bool)

(assert (=> b!1009205 m!933889))

(assert (=> b!1009205 m!933889))

(declare-fun m!933891 () Bool)

(assert (=> b!1009205 m!933891))

(declare-fun m!933893 () Bool)

(assert (=> b!1009204 m!933893))

(assert (=> d!119793 m!933567))

(declare-fun m!933895 () Bool)

(assert (=> d!119793 m!933895))

(assert (=> d!119793 m!933599))

(assert (=> b!1009201 m!933893))

(assert (=> b!1009202 m!933893))

(assert (=> b!1008956 d!119793))

(assert (=> b!1008956 d!119729))

(assert (=> d!119699 d!119735))

(declare-fun d!119795 () Bool)

(declare-fun lt!446045 () Bool)

(declare-fun content!487 (List!21414) (Set (_ BitVec 64)))

(assert (=> d!119795 (= lt!446045 (member (select (arr!30612 a!3219) #b00000000000000000000000000000000) (content!487 Nil!21411)))))

(declare-fun e!567851 () Bool)

(assert (=> d!119795 (= lt!446045 e!567851)))

(declare-fun res!677998 () Bool)

(assert (=> d!119795 (=> (not res!677998) (not e!567851))))

(assert (=> d!119795 (= res!677998 (is-Cons!21410 Nil!21411))))

(assert (=> d!119795 (= (contains!5899 Nil!21411 (select (arr!30612 a!3219) #b00000000000000000000000000000000)) lt!446045)))

(declare-fun b!1009210 () Bool)

(declare-fun e!567852 () Bool)

(assert (=> b!1009210 (= e!567851 e!567852)))

(declare-fun res!677997 () Bool)

(assert (=> b!1009210 (=> res!677997 e!567852)))

(assert (=> b!1009210 (= res!677997 (= (h!22596 Nil!21411) (select (arr!30612 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1009211 () Bool)

(assert (=> b!1009211 (= e!567852 (contains!5899 (t!30423 Nil!21411) (select (arr!30612 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119795 res!677998) b!1009210))

(assert (= (and b!1009210 (not res!677997)) b!1009211))

(declare-fun m!933897 () Bool)

(assert (=> d!119795 m!933897))

(assert (=> d!119795 m!933619))

(declare-fun m!933899 () Bool)

(assert (=> d!119795 m!933899))

(assert (=> b!1009211 m!933619))

(declare-fun m!933901 () Bool)

(assert (=> b!1009211 m!933901))

(assert (=> b!1009099 d!119795))

(assert (=> d!119701 d!119735))

(declare-fun b!1009212 () Bool)

(declare-fun e!567854 () Bool)

(declare-fun e!567855 () Bool)

(assert (=> b!1009212 (= e!567854 e!567855)))

(declare-fun c!101763 () Bool)

(assert (=> b!1009212 (= c!101763 (validKeyInArray!0 (select (arr!30612 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun call!42388 () Bool)

(declare-fun bm!42385 () Bool)

(assert (=> bm!42385 (= call!42388 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!101763 (Cons!21410 (select (arr!30612 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!101727 (Cons!21410 (select (arr!30612 a!3219) #b00000000000000000000000000000000) Nil!21411) Nil!21411)) (ite c!101727 (Cons!21410 (select (arr!30612 a!3219) #b00000000000000000000000000000000) Nil!21411) Nil!21411))))))

(declare-fun b!1009213 () Bool)

(assert (=> b!1009213 (= e!567855 call!42388)))

(declare-fun b!1009214 () Bool)

(declare-fun e!567856 () Bool)

(assert (=> b!1009214 (= e!567856 e!567854)))

(declare-fun res!678001 () Bool)

(assert (=> b!1009214 (=> (not res!678001) (not e!567854))))

(declare-fun e!567853 () Bool)

(assert (=> b!1009214 (= res!678001 (not e!567853))))

(declare-fun res!678000 () Bool)

(assert (=> b!1009214 (=> (not res!678000) (not e!567853))))

(assert (=> b!1009214 (= res!678000 (validKeyInArray!0 (select (arr!30612 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1009215 () Bool)

(assert (=> b!1009215 (= e!567855 call!42388)))

(declare-fun b!1009216 () Bool)

(assert (=> b!1009216 (= e!567853 (contains!5899 (ite c!101727 (Cons!21410 (select (arr!30612 a!3219) #b00000000000000000000000000000000) Nil!21411) Nil!21411) (select (arr!30612 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!119797 () Bool)

(declare-fun res!677999 () Bool)

(assert (=> d!119797 (=> res!677999 e!567856)))

(assert (=> d!119797 (= res!677999 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31115 a!3219)))))

(assert (=> d!119797 (= (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101727 (Cons!21410 (select (arr!30612 a!3219) #b00000000000000000000000000000000) Nil!21411) Nil!21411)) e!567856)))

(assert (= (and d!119797 (not res!677999)) b!1009214))

(assert (= (and b!1009214 res!678000) b!1009216))

(assert (= (and b!1009214 res!678001) b!1009212))

(assert (= (and b!1009212 c!101763) b!1009215))

(assert (= (and b!1009212 (not c!101763)) b!1009213))

(assert (= (or b!1009215 b!1009213) bm!42385))

(declare-fun m!933903 () Bool)

(assert (=> b!1009212 m!933903))

(assert (=> b!1009212 m!933903))

(declare-fun m!933905 () Bool)

(assert (=> b!1009212 m!933905))

(assert (=> bm!42385 m!933903))

(declare-fun m!933907 () Bool)

(assert (=> bm!42385 m!933907))

(assert (=> b!1009214 m!933903))

(assert (=> b!1009214 m!933903))

(assert (=> b!1009214 m!933905))

(assert (=> b!1009216 m!933903))

(assert (=> b!1009216 m!933903))

(declare-fun m!933909 () Bool)

(assert (=> b!1009216 m!933909))

(assert (=> bm!42382 d!119797))

(declare-fun d!119799 () Bool)

(assert (=> d!119799 (arrayContainsKey!0 a!3219 lt!445910 #b00000000000000000000000000000000)))

(declare-fun lt!446048 () Unit!32962)

(declare-fun choose!13 (array!63590 (_ BitVec 64) (_ BitVec 32)) Unit!32962)

(assert (=> d!119799 (= lt!446048 (choose!13 a!3219 lt!445910 #b00000000000000000000000000000000))))

(assert (=> d!119799 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!119799 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!445910 #b00000000000000000000000000000000) lt!446048)))

(declare-fun bs!28694 () Bool)

(assert (= bs!28694 d!119799))

(assert (=> bs!28694 m!933623))

(declare-fun m!933911 () Bool)

(assert (=> bs!28694 m!933911))

(assert (=> b!1008837 d!119799))

(declare-fun d!119801 () Bool)

(declare-fun res!678002 () Bool)

(declare-fun e!567857 () Bool)

(assert (=> d!119801 (=> res!678002 e!567857)))

(assert (=> d!119801 (= res!678002 (= (select (arr!30612 a!3219) #b00000000000000000000000000000000) lt!445910))))

(assert (=> d!119801 (= (arrayContainsKey!0 a!3219 lt!445910 #b00000000000000000000000000000000) e!567857)))

(declare-fun b!1009217 () Bool)

(declare-fun e!567858 () Bool)

(assert (=> b!1009217 (= e!567857 e!567858)))

(declare-fun res!678003 () Bool)

(assert (=> b!1009217 (=> (not res!678003) (not e!567858))))

(assert (=> b!1009217 (= res!678003 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31115 a!3219)))))

(declare-fun b!1009218 () Bool)

(assert (=> b!1009218 (= e!567858 (arrayContainsKey!0 a!3219 lt!445910 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119801 (not res!678002)) b!1009217))

(assert (= (and b!1009217 res!678003) b!1009218))

(assert (=> d!119801 m!933619))

(declare-fun m!933913 () Bool)

(assert (=> b!1009218 m!933913))

(assert (=> b!1008837 d!119801))

(declare-fun b!1009219 () Bool)

(declare-fun e!567860 () SeekEntryResult!9544)

(declare-fun lt!446049 () SeekEntryResult!9544)

(assert (=> b!1009219 (= e!567860 (Found!9544 (index!40548 lt!446049)))))

(declare-fun b!1009220 () Bool)

(declare-fun e!567861 () SeekEntryResult!9544)

(assert (=> b!1009220 (= e!567861 (seekKeyOrZeroReturnVacant!0 (x!87959 lt!446049) (index!40548 lt!446049) (index!40548 lt!446049) (select (arr!30612 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464))))

(declare-fun b!1009221 () Bool)

(declare-fun e!567859 () SeekEntryResult!9544)

(assert (=> b!1009221 (= e!567859 e!567860)))

(declare-fun lt!446051 () (_ BitVec 64))

(assert (=> b!1009221 (= lt!446051 (select (arr!30612 a!3219) (index!40548 lt!446049)))))

(declare-fun c!101765 () Bool)

(assert (=> b!1009221 (= c!101765 (= lt!446051 (select (arr!30612 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1009222 () Bool)

(assert (=> b!1009222 (= e!567861 (MissingZero!9544 (index!40548 lt!446049)))))

(declare-fun b!1009224 () Bool)

(declare-fun c!101766 () Bool)

(assert (=> b!1009224 (= c!101766 (= lt!446051 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009224 (= e!567860 e!567861)))

(declare-fun b!1009223 () Bool)

(assert (=> b!1009223 (= e!567859 Undefined!9544)))

(declare-fun d!119803 () Bool)

(declare-fun lt!446050 () SeekEntryResult!9544)

(assert (=> d!119803 (and (or (is-Undefined!9544 lt!446050) (not (is-Found!9544 lt!446050)) (and (bvsge (index!40547 lt!446050) #b00000000000000000000000000000000) (bvslt (index!40547 lt!446050) (size!31115 a!3219)))) (or (is-Undefined!9544 lt!446050) (is-Found!9544 lt!446050) (not (is-MissingZero!9544 lt!446050)) (and (bvsge (index!40546 lt!446050) #b00000000000000000000000000000000) (bvslt (index!40546 lt!446050) (size!31115 a!3219)))) (or (is-Undefined!9544 lt!446050) (is-Found!9544 lt!446050) (is-MissingZero!9544 lt!446050) (not (is-MissingVacant!9544 lt!446050)) (and (bvsge (index!40549 lt!446050) #b00000000000000000000000000000000) (bvslt (index!40549 lt!446050) (size!31115 a!3219)))) (or (is-Undefined!9544 lt!446050) (ite (is-Found!9544 lt!446050) (= (select (arr!30612 a!3219) (index!40547 lt!446050)) (select (arr!30612 a!3219) #b00000000000000000000000000000000)) (ite (is-MissingZero!9544 lt!446050) (= (select (arr!30612 a!3219) (index!40546 lt!446050)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9544 lt!446050) (= (select (arr!30612 a!3219) (index!40549 lt!446050)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119803 (= lt!446050 e!567859)))

(declare-fun c!101764 () Bool)

(assert (=> d!119803 (= c!101764 (and (is-Intermediate!9544 lt!446049) (undefined!10356 lt!446049)))))

(assert (=> d!119803 (= lt!446049 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30612 a!3219) #b00000000000000000000000000000000) mask!3464) (select (arr!30612 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464))))

(assert (=> d!119803 (validMask!0 mask!3464)))

(assert (=> d!119803 (= (seekEntryOrOpen!0 (select (arr!30612 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) lt!446050)))

(assert (= (and d!119803 c!101764) b!1009223))

(assert (= (and d!119803 (not c!101764)) b!1009221))

(assert (= (and b!1009221 c!101765) b!1009219))

(assert (= (and b!1009221 (not c!101765)) b!1009224))

(assert (= (and b!1009224 c!101766) b!1009222))

(assert (= (and b!1009224 (not c!101766)) b!1009220))

(assert (=> b!1009220 m!933619))

(declare-fun m!933915 () Bool)

(assert (=> b!1009220 m!933915))

(declare-fun m!933917 () Bool)

(assert (=> b!1009221 m!933917))

(declare-fun m!933919 () Bool)

(assert (=> d!119803 m!933919))

(assert (=> d!119803 m!933599))

(declare-fun m!933921 () Bool)

(assert (=> d!119803 m!933921))

(declare-fun m!933923 () Bool)

(assert (=> d!119803 m!933923))

(assert (=> d!119803 m!933619))

(declare-fun m!933925 () Bool)

(assert (=> d!119803 m!933925))

(assert (=> d!119803 m!933925))

(assert (=> d!119803 m!933619))

(declare-fun m!933927 () Bool)

(assert (=> d!119803 m!933927))

(assert (=> b!1008837 d!119803))

(assert (=> b!1009097 d!119791))

(declare-fun d!119805 () Bool)

(declare-fun res!678006 () (_ BitVec 32))

(assert (=> d!119805 (and (bvsge res!678006 #b00000000000000000000000000000000) (bvslt res!678006 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(assert (=> d!119805 true))

(assert (=> d!119805 (= (choose!52 index!1507 x!1245 mask!3464) res!678006)))

(assert (=> d!119729 d!119805))

(assert (=> d!119729 d!119735))

(assert (=> d!119679 d!119735))

(declare-fun bm!42386 () Bool)

(declare-fun call!42389 () Bool)

(assert (=> bm!42386 (= call!42389 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1009225 () Bool)

(declare-fun e!567864 () Bool)

(declare-fun e!567862 () Bool)

(assert (=> b!1009225 (= e!567864 e!567862)))

(declare-fun lt!446054 () (_ BitVec 64))

(assert (=> b!1009225 (= lt!446054 (select (arr!30612 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!446053 () Unit!32962)

(assert (=> b!1009225 (= lt!446053 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446054 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1009225 (arrayContainsKey!0 a!3219 lt!446054 #b00000000000000000000000000000000)))

(declare-fun lt!446052 () Unit!32962)

(assert (=> b!1009225 (= lt!446052 lt!446053)))

(declare-fun res!678008 () Bool)

(assert (=> b!1009225 (= res!678008 (= (seekEntryOrOpen!0 (select (arr!30612 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3219 mask!3464) (Found!9544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1009225 (=> (not res!678008) (not e!567862))))

(declare-fun b!1009226 () Bool)

(assert (=> b!1009226 (= e!567862 call!42389)))

(declare-fun d!119807 () Bool)

(declare-fun res!678007 () Bool)

(declare-fun e!567863 () Bool)

(assert (=> d!119807 (=> res!678007 e!567863)))

(assert (=> d!119807 (= res!678007 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31115 a!3219)))))

(assert (=> d!119807 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464) e!567863)))

(declare-fun b!1009227 () Bool)

(assert (=> b!1009227 (= e!567864 call!42389)))

(declare-fun b!1009228 () Bool)

(assert (=> b!1009228 (= e!567863 e!567864)))

(declare-fun c!101767 () Bool)

(assert (=> b!1009228 (= c!101767 (validKeyInArray!0 (select (arr!30612 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!119807 (not res!678007)) b!1009228))

(assert (= (and b!1009228 c!101767) b!1009225))

(assert (= (and b!1009228 (not c!101767)) b!1009227))

(assert (= (and b!1009225 res!678008) b!1009226))

(assert (= (or b!1009226 b!1009227) bm!42386))

(declare-fun m!933929 () Bool)

(assert (=> bm!42386 m!933929))

(assert (=> b!1009225 m!933903))

(declare-fun m!933931 () Bool)

(assert (=> b!1009225 m!933931))

(declare-fun m!933933 () Bool)

(assert (=> b!1009225 m!933933))

(assert (=> b!1009225 m!933903))

(declare-fun m!933935 () Bool)

(assert (=> b!1009225 m!933935))

(assert (=> b!1009228 m!933903))

(assert (=> b!1009228 m!933903))

(assert (=> b!1009228 m!933905))

(assert (=> bm!42369 d!119807))

(assert (=> b!1009095 d!119791))

(declare-fun b!1009229 () Bool)

(declare-fun e!567866 () SeekEntryResult!9544)

(assert (=> b!1009229 (= e!567866 (Intermediate!9544 true (nextIndex!0 (toIndex!0 lt!445881 mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1009230 () Bool)

(declare-fun e!567868 () SeekEntryResult!9544)

(assert (=> b!1009230 (= e!567868 (Intermediate!9544 false (nextIndex!0 (toIndex!0 lt!445881 mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1009231 () Bool)

(declare-fun e!567869 () Bool)

(declare-fun lt!446056 () SeekEntryResult!9544)

(assert (=> b!1009231 (= e!567869 (bvsge (x!87959 lt!446056) #b01111111111111111111111111111110))))

(declare-fun b!1009232 () Bool)

(assert (=> b!1009232 (= e!567866 e!567868)))

(declare-fun c!101768 () Bool)

(declare-fun lt!446055 () (_ BitVec 64))

(assert (=> b!1009232 (= c!101768 (or (= lt!446055 lt!445881) (= (bvadd lt!446055 lt!446055) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009233 () Bool)

(assert (=> b!1009233 (and (bvsge (index!40548 lt!446056) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446056) (size!31115 lt!445875)))))

(declare-fun e!567865 () Bool)

(assert (=> b!1009233 (= e!567865 (= (select (arr!30612 lt!445875) (index!40548 lt!446056)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119809 () Bool)

(assert (=> d!119809 e!567869))

(declare-fun c!101770 () Bool)

(assert (=> d!119809 (= c!101770 (and (is-Intermediate!9544 lt!446056) (undefined!10356 lt!446056)))))

(assert (=> d!119809 (= lt!446056 e!567866)))

(declare-fun c!101769 () Bool)

(assert (=> d!119809 (= c!101769 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!119809 (= lt!446055 (select (arr!30612 lt!445875) (nextIndex!0 (toIndex!0 lt!445881 mask!3464) #b00000000000000000000000000000000 mask!3464)))))

(assert (=> d!119809 (validMask!0 mask!3464)))

(assert (=> d!119809 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!445881 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!445881 lt!445875 mask!3464) lt!446056)))

(declare-fun b!1009234 () Bool)

(assert (=> b!1009234 (and (bvsge (index!40548 lt!446056) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446056) (size!31115 lt!445875)))))

(declare-fun res!678009 () Bool)

(assert (=> b!1009234 (= res!678009 (= (select (arr!30612 lt!445875) (index!40548 lt!446056)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009234 (=> res!678009 e!567865)))

(declare-fun b!1009235 () Bool)

(declare-fun e!567867 () Bool)

(assert (=> b!1009235 (= e!567869 e!567867)))

(declare-fun res!678011 () Bool)

(assert (=> b!1009235 (= res!678011 (and (is-Intermediate!9544 lt!446056) (not (undefined!10356 lt!446056)) (bvslt (x!87959 lt!446056) #b01111111111111111111111111111110) (bvsge (x!87959 lt!446056) #b00000000000000000000000000000000) (bvsge (x!87959 lt!446056) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1009235 (=> (not res!678011) (not e!567867))))

(declare-fun b!1009236 () Bool)

(assert (=> b!1009236 (and (bvsge (index!40548 lt!446056) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446056) (size!31115 lt!445875)))))

(declare-fun res!678010 () Bool)

(assert (=> b!1009236 (= res!678010 (= (select (arr!30612 lt!445875) (index!40548 lt!446056)) lt!445881))))

(assert (=> b!1009236 (=> res!678010 e!567865)))

(assert (=> b!1009236 (= e!567867 e!567865)))

(declare-fun b!1009237 () Bool)

(assert (=> b!1009237 (= e!567868 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 lt!445881 mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3464) lt!445881 lt!445875 mask!3464))))

(assert (= (and d!119809 c!101769) b!1009229))

(assert (= (and d!119809 (not c!101769)) b!1009232))

(assert (= (and b!1009232 c!101768) b!1009230))

(assert (= (and b!1009232 (not c!101768)) b!1009237))

(assert (= (and d!119809 c!101770) b!1009231))

(assert (= (and d!119809 (not c!101770)) b!1009235))

(assert (= (and b!1009235 res!678011) b!1009236))

(assert (= (and b!1009236 (not res!678010)) b!1009234))

(assert (= (and b!1009234 (not res!678009)) b!1009233))

(assert (=> b!1009237 m!933669))

(declare-fun m!933937 () Bool)

(assert (=> b!1009237 m!933937))

(assert (=> b!1009237 m!933937))

(declare-fun m!933939 () Bool)

(assert (=> b!1009237 m!933939))

(declare-fun m!933941 () Bool)

(assert (=> b!1009236 m!933941))

(assert (=> d!119809 m!933669))

(declare-fun m!933943 () Bool)

(assert (=> d!119809 m!933943))

(assert (=> d!119809 m!933599))

(assert (=> b!1009233 m!933941))

(assert (=> b!1009234 m!933941))

(assert (=> b!1008937 d!119809))

(declare-fun d!119811 () Bool)

(declare-fun lt!446057 () (_ BitVec 32))

(assert (=> d!119811 (and (bvsge lt!446057 #b00000000000000000000000000000000) (bvslt lt!446057 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(assert (=> d!119811 (= lt!446057 (choose!52 (toIndex!0 lt!445881 mask!3464) #b00000000000000000000000000000000 mask!3464))))

(assert (=> d!119811 (validMask!0 mask!3464)))

(assert (=> d!119811 (= (nextIndex!0 (toIndex!0 lt!445881 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446057)))

(declare-fun bs!28695 () Bool)

(assert (= bs!28695 d!119811))

(assert (=> bs!28695 m!933585))

(declare-fun m!933945 () Bool)

(assert (=> bs!28695 m!933945))

(assert (=> bs!28695 m!933599))

(assert (=> b!1008937 d!119811))

(declare-fun e!567871 () SeekEntryResult!9544)

(declare-fun b!1009238 () Bool)

(assert (=> b!1009238 (= e!567871 (Intermediate!9544 true (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(declare-fun e!567873 () SeekEntryResult!9544)

(declare-fun b!1009239 () Bool)

(assert (=> b!1009239 (= e!567873 (Intermediate!9544 false (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(declare-fun b!1009240 () Bool)

(declare-fun e!567874 () Bool)

(declare-fun lt!446059 () SeekEntryResult!9544)

(assert (=> b!1009240 (= e!567874 (bvsge (x!87959 lt!446059) #b01111111111111111111111111111110))))

(declare-fun b!1009241 () Bool)

(assert (=> b!1009241 (= e!567871 e!567873)))

(declare-fun lt!446058 () (_ BitVec 64))

(declare-fun c!101771 () Bool)

(assert (=> b!1009241 (= c!101771 (or (= lt!446058 (select (arr!30612 a!3219) j!170)) (= (bvadd lt!446058 lt!446058) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009242 () Bool)

(assert (=> b!1009242 (and (bvsge (index!40548 lt!446059) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446059) (size!31115 a!3219)))))

(declare-fun e!567870 () Bool)

(assert (=> b!1009242 (= e!567870 (= (select (arr!30612 a!3219) (index!40548 lt!446059)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119813 () Bool)

(assert (=> d!119813 e!567874))

(declare-fun c!101773 () Bool)

(assert (=> d!119813 (= c!101773 (and (is-Intermediate!9544 lt!446059) (undefined!10356 lt!446059)))))

(assert (=> d!119813 (= lt!446059 e!567871)))

(declare-fun c!101772 () Bool)

(assert (=> d!119813 (= c!101772 (bvsge (bvadd x!1245 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!119813 (= lt!446058 (select (arr!30612 a!3219) (nextIndex!0 index!1507 x!1245 mask!3464)))))

(assert (=> d!119813 (validMask!0 mask!3464)))

(assert (=> d!119813 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30612 a!3219) j!170) a!3219 mask!3464) lt!446059)))

(declare-fun b!1009243 () Bool)

(assert (=> b!1009243 (and (bvsge (index!40548 lt!446059) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446059) (size!31115 a!3219)))))

(declare-fun res!678012 () Bool)

(assert (=> b!1009243 (= res!678012 (= (select (arr!30612 a!3219) (index!40548 lt!446059)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009243 (=> res!678012 e!567870)))

(declare-fun b!1009244 () Bool)

(declare-fun e!567872 () Bool)

(assert (=> b!1009244 (= e!567874 e!567872)))

(declare-fun res!678014 () Bool)

(assert (=> b!1009244 (= res!678014 (and (is-Intermediate!9544 lt!446059) (not (undefined!10356 lt!446059)) (bvslt (x!87959 lt!446059) #b01111111111111111111111111111110) (bvsge (x!87959 lt!446059) #b00000000000000000000000000000000) (bvsge (x!87959 lt!446059) (bvadd x!1245 #b00000000000000000000000000000001))))))

(assert (=> b!1009244 (=> (not res!678014) (not e!567872))))

(declare-fun b!1009245 () Bool)

(assert (=> b!1009245 (and (bvsge (index!40548 lt!446059) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446059) (size!31115 a!3219)))))

(declare-fun res!678013 () Bool)

(assert (=> b!1009245 (= res!678013 (= (select (arr!30612 a!3219) (index!40548 lt!446059)) (select (arr!30612 a!3219) j!170)))))

(assert (=> b!1009245 (=> res!678013 e!567870)))

(assert (=> b!1009245 (= e!567872 e!567870)))

(declare-fun b!1009246 () Bool)

(assert (=> b!1009246 (= e!567873 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001) mask!3464) (select (arr!30612 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and d!119813 c!101772) b!1009238))

(assert (= (and d!119813 (not c!101772)) b!1009241))

(assert (= (and b!1009241 c!101771) b!1009239))

(assert (= (and b!1009241 (not c!101771)) b!1009246))

(assert (= (and d!119813 c!101773) b!1009240))

(assert (= (and d!119813 (not c!101773)) b!1009244))

(assert (= (and b!1009244 res!678014) b!1009245))

(assert (= (and b!1009245 (not res!678013)) b!1009243))

(assert (= (and b!1009243 (not res!678012)) b!1009242))

(assert (=> b!1009246 m!933567))

(assert (=> b!1009246 m!933889))

(assert (=> b!1009246 m!933889))

(assert (=> b!1009246 m!933571))

(declare-fun m!933947 () Bool)

(assert (=> b!1009246 m!933947))

(declare-fun m!933949 () Bool)

(assert (=> b!1009245 m!933949))

(assert (=> d!119813 m!933567))

(declare-fun m!933951 () Bool)

(assert (=> d!119813 m!933951))

(assert (=> d!119813 m!933599))

(assert (=> b!1009242 m!933949))

(assert (=> b!1009243 m!933949))

(assert (=> b!1008991 d!119813))

(assert (=> b!1008991 d!119729))

(assert (=> d!119707 d!119735))

(declare-fun d!119815 () Bool)

(declare-fun res!678015 () Bool)

(declare-fun e!567875 () Bool)

(assert (=> d!119815 (=> res!678015 e!567875)))

(assert (=> d!119815 (= res!678015 (= (select (arr!30612 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k!2224))))

(assert (=> d!119815 (= (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!567875)))

(declare-fun b!1009247 () Bool)

(declare-fun e!567876 () Bool)

(assert (=> b!1009247 (= e!567875 e!567876)))

(declare-fun res!678016 () Bool)

(assert (=> b!1009247 (=> (not res!678016) (not e!567876))))

(assert (=> b!1009247 (= res!678016 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31115 a!3219)))))

(declare-fun b!1009248 () Bool)

(assert (=> b!1009248 (= e!567876 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!119815 (not res!678015)) b!1009247))

(assert (= (and b!1009247 res!678016) b!1009248))

(assert (=> d!119815 m!933903))

(declare-fun m!933953 () Bool)

(assert (=> b!1009248 m!933953))

(assert (=> b!1009072 d!119815))

(declare-fun b!1009261 () Bool)

(declare-fun e!567885 () SeekEntryResult!9544)

(assert (=> b!1009261 (= e!567885 (seekKeyOrZeroReturnVacant!0 (bvadd (x!87959 lt!445985) #b00000000000000000000000000000001) (nextIndex!0 (index!40548 lt!445985) (x!87959 lt!445985) mask!3464) (index!40548 lt!445985) k!2224 a!3219 mask!3464))))

(declare-fun d!119817 () Bool)

(declare-fun lt!446065 () SeekEntryResult!9544)

(assert (=> d!119817 (and (or (is-Undefined!9544 lt!446065) (not (is-Found!9544 lt!446065)) (and (bvsge (index!40547 lt!446065) #b00000000000000000000000000000000) (bvslt (index!40547 lt!446065) (size!31115 a!3219)))) (or (is-Undefined!9544 lt!446065) (is-Found!9544 lt!446065) (not (is-MissingVacant!9544 lt!446065)) (not (= (index!40549 lt!446065) (index!40548 lt!445985))) (and (bvsge (index!40549 lt!446065) #b00000000000000000000000000000000) (bvslt (index!40549 lt!446065) (size!31115 a!3219)))) (or (is-Undefined!9544 lt!446065) (ite (is-Found!9544 lt!446065) (= (select (arr!30612 a!3219) (index!40547 lt!446065)) k!2224) (and (is-MissingVacant!9544 lt!446065) (= (index!40549 lt!446065) (index!40548 lt!445985)) (= (select (arr!30612 a!3219) (index!40549 lt!446065)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!567884 () SeekEntryResult!9544)

(assert (=> d!119817 (= lt!446065 e!567884)))

(declare-fun c!101782 () Bool)

(assert (=> d!119817 (= c!101782 (bvsge (x!87959 lt!445985) #b01111111111111111111111111111110))))

(declare-fun lt!446064 () (_ BitVec 64))

(assert (=> d!119817 (= lt!446064 (select (arr!30612 a!3219) (index!40548 lt!445985)))))

(assert (=> d!119817 (validMask!0 mask!3464)))

(assert (=> d!119817 (= (seekKeyOrZeroReturnVacant!0 (x!87959 lt!445985) (index!40548 lt!445985) (index!40548 lt!445985) k!2224 a!3219 mask!3464) lt!446065)))

(declare-fun b!1009262 () Bool)

(declare-fun e!567883 () SeekEntryResult!9544)

(assert (=> b!1009262 (= e!567884 e!567883)))

(declare-fun c!101781 () Bool)

(assert (=> b!1009262 (= c!101781 (= lt!446064 k!2224))))

(declare-fun b!1009263 () Bool)

(assert (=> b!1009263 (= e!567883 (Found!9544 (index!40548 lt!445985)))))

(declare-fun b!1009264 () Bool)

(assert (=> b!1009264 (= e!567885 (MissingVacant!9544 (index!40548 lt!445985)))))

(declare-fun b!1009265 () Bool)

(assert (=> b!1009265 (= e!567884 Undefined!9544)))

(declare-fun b!1009266 () Bool)

(declare-fun c!101780 () Bool)

(assert (=> b!1009266 (= c!101780 (= lt!446064 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009266 (= e!567883 e!567885)))

(assert (= (and d!119817 c!101782) b!1009265))

(assert (= (and d!119817 (not c!101782)) b!1009262))

(assert (= (and b!1009262 c!101781) b!1009263))

(assert (= (and b!1009262 (not c!101781)) b!1009266))

(assert (= (and b!1009266 c!101780) b!1009264))

(assert (= (and b!1009266 (not c!101780)) b!1009261))

(declare-fun m!933955 () Bool)

(assert (=> b!1009261 m!933955))

(assert (=> b!1009261 m!933955))

(declare-fun m!933957 () Bool)

(assert (=> b!1009261 m!933957))

(declare-fun m!933959 () Bool)

(assert (=> d!119817 m!933959))

(declare-fun m!933961 () Bool)

(assert (=> d!119817 m!933961))

(assert (=> d!119817 m!933747))

(assert (=> d!119817 m!933599))

(assert (=> b!1009038 d!119817))

(declare-fun b!1009267 () Bool)

(declare-fun e!567887 () SeekEntryResult!9544)

(assert (=> b!1009267 (= e!567887 (Intermediate!9544 true (nextIndex!0 (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1009268 () Bool)

(declare-fun e!567889 () SeekEntryResult!9544)

(assert (=> b!1009268 (= e!567889 (Intermediate!9544 false (nextIndex!0 (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1009269 () Bool)

(declare-fun e!567890 () Bool)

(declare-fun lt!446067 () SeekEntryResult!9544)

(assert (=> b!1009269 (= e!567890 (bvsge (x!87959 lt!446067) #b01111111111111111111111111111110))))

(declare-fun b!1009270 () Bool)

(assert (=> b!1009270 (= e!567887 e!567889)))

(declare-fun lt!446066 () (_ BitVec 64))

(declare-fun c!101783 () Bool)

(assert (=> b!1009270 (= c!101783 (or (= lt!446066 (select (arr!30612 a!3219) j!170)) (= (bvadd lt!446066 lt!446066) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009271 () Bool)

(assert (=> b!1009271 (and (bvsge (index!40548 lt!446067) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446067) (size!31115 a!3219)))))

(declare-fun e!567886 () Bool)

(assert (=> b!1009271 (= e!567886 (= (select (arr!30612 a!3219) (index!40548 lt!446067)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119819 () Bool)

(assert (=> d!119819 e!567890))

(declare-fun c!101785 () Bool)

(assert (=> d!119819 (= c!101785 (and (is-Intermediate!9544 lt!446067) (undefined!10356 lt!446067)))))

(assert (=> d!119819 (= lt!446067 e!567887)))

(declare-fun c!101784 () Bool)

(assert (=> d!119819 (= c!101784 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!119819 (= lt!446066 (select (arr!30612 a!3219) (nextIndex!0 (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464)))))

(assert (=> d!119819 (validMask!0 mask!3464)))

(assert (=> d!119819 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30612 a!3219) j!170) a!3219 mask!3464) lt!446067)))

(declare-fun b!1009272 () Bool)

(assert (=> b!1009272 (and (bvsge (index!40548 lt!446067) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446067) (size!31115 a!3219)))))

(declare-fun res!678017 () Bool)

(assert (=> b!1009272 (= res!678017 (= (select (arr!30612 a!3219) (index!40548 lt!446067)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009272 (=> res!678017 e!567886)))

(declare-fun b!1009273 () Bool)

(declare-fun e!567888 () Bool)

(assert (=> b!1009273 (= e!567890 e!567888)))

(declare-fun res!678019 () Bool)

(assert (=> b!1009273 (= res!678019 (and (is-Intermediate!9544 lt!446067) (not (undefined!10356 lt!446067)) (bvslt (x!87959 lt!446067) #b01111111111111111111111111111110) (bvsge (x!87959 lt!446067) #b00000000000000000000000000000000) (bvsge (x!87959 lt!446067) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1009273 (=> (not res!678019) (not e!567888))))

(declare-fun b!1009274 () Bool)

(assert (=> b!1009274 (and (bvsge (index!40548 lt!446067) #b00000000000000000000000000000000) (bvslt (index!40548 lt!446067) (size!31115 a!3219)))))

(declare-fun res!678018 () Bool)

(assert (=> b!1009274 (= res!678018 (= (select (arr!30612 a!3219) (index!40548 lt!446067)) (select (arr!30612 a!3219) j!170)))))

(assert (=> b!1009274 (=> res!678018 e!567886)))

(assert (=> b!1009274 (= e!567888 e!567886)))

(declare-fun b!1009275 () Bool)

(assert (=> b!1009275 (= e!567889 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3464) (select (arr!30612 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and d!119819 c!101784) b!1009267))

(assert (= (and d!119819 (not c!101784)) b!1009270))

(assert (= (and b!1009270 c!101783) b!1009268))

(assert (= (and b!1009270 (not c!101783)) b!1009275))

(assert (= (and d!119819 c!101785) b!1009269))

(assert (= (and d!119819 (not c!101785)) b!1009273))

(assert (= (and b!1009273 res!678019) b!1009274))

(assert (= (and b!1009274 (not res!678018)) b!1009272))

(assert (= (and b!1009272 (not res!678017)) b!1009271))

(assert (=> b!1009275 m!933691))

(declare-fun m!933963 () Bool)

(assert (=> b!1009275 m!933963))

(assert (=> b!1009275 m!933963))

(assert (=> b!1009275 m!933571))

(declare-fun m!933965 () Bool)

(assert (=> b!1009275 m!933965))

(declare-fun m!933967 () Bool)

(assert (=> b!1009274 m!933967))

(assert (=> d!119819 m!933691))

(declare-fun m!933969 () Bool)

(assert (=> d!119819 m!933969))

(assert (=> d!119819 m!933599))

(assert (=> b!1009271 m!933967))

(assert (=> b!1009272 m!933967))

(assert (=> b!1008970 d!119819))

(declare-fun d!119821 () Bool)

(declare-fun lt!446068 () (_ BitVec 32))

(assert (=> d!119821 (and (bvsge lt!446068 #b00000000000000000000000000000000) (bvslt lt!446068 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(assert (=> d!119821 (= lt!446068 (choose!52 (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464))))

(assert (=> d!119821 (validMask!0 mask!3464)))

(assert (=> d!119821 (= (nextIndex!0 (toIndex!0 (select (arr!30612 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446068)))

(declare-fun bs!28696 () Bool)

(assert (= bs!28696 d!119821))

(assert (=> bs!28696 m!933577))

(declare-fun m!933971 () Bool)

(assert (=> bs!28696 m!933971))

(assert (=> bs!28696 m!933599))

(assert (=> b!1008970 d!119821))

(push 1)

(assert (not d!119809))

(assert (not bm!42385))

(assert (not b!1009248))

(assert (not d!119813))

(assert (not d!119819))

(assert (not d!119799))

(assert (not b!1009216))

(assert (not d!119787))

(assert (not d!119811))

(assert (not d!119817))

(assert (not d!119821))

(assert (not b!1009220))

(assert (not b!1009225))

(assert (not d!119803))

(assert (not d!119793))

(assert (not b!1009214))

(assert (not b!1009237))

(assert (not b!1009196))

(assert (not b!1009211))

(assert (not b!1009228))

(assert (not b!1009218))

(assert (not b!1009212))

(assert (not b!1009261))

(assert (not b!1009246))

(assert (not b!1009275))

(assert (not b!1009205))

(assert (not bm!42386))

(assert (not d!119795))

(check-sat)

(pop 1)

(push 1)

(check-sat)

