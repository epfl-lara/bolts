; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116654 () Bool)

(assert start!116654)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun e!778863 () Bool)

(declare-datatypes ((array!93262 0))(
  ( (array!93263 (arr!45031 (Array (_ BitVec 32) (_ BitVec 64))) (size!45582 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93262)

(declare-fun b!1374819 () Bool)

(declare-fun lt!603859 () array!93262)

(declare-fun arrayCountValidKeys!0 (array!93262 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374819 (= e!778863 (= (arrayCountValidKeys!0 lt!603859 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)) (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457))))))

(declare-fun b!1374820 () Bool)

(declare-fun res!918071 () Bool)

(declare-fun e!778865 () Bool)

(assert (=> b!1374820 (=> (not res!918071) (not e!778865))))

(assert (=> b!1374820 (= res!918071 (bvslt (size!45582 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374821 () Bool)

(declare-fun res!918068 () Bool)

(assert (=> b!1374821 (=> (not res!918068) (not e!778865))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374821 (= res!918068 (validKeyInArray!0 (select (arr!45031 a!4142) i!1457)))))

(declare-fun res!918069 () Bool)

(assert (=> start!116654 (=> (not res!918069) (not e!778865))))

(assert (=> start!116654 (= res!918069 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45582 a!4142))))))

(assert (=> start!116654 e!778865))

(assert (=> start!116654 true))

(declare-fun array_inv!33976 (array!93262) Bool)

(assert (=> start!116654 (array_inv!33976 a!4142)))

(declare-fun b!1374822 () Bool)

(assert (=> b!1374822 (= e!778865 (not e!778863))))

(declare-fun res!918072 () Bool)

(assert (=> b!1374822 (=> res!918072 e!778863)))

(assert (=> b!1374822 (= res!918072 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(assert (=> b!1374822 (= (arrayCountValidKeys!0 lt!603859 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374822 (= lt!603859 (array!93263 (store (arr!45031 a!4142) i!1457 k!2959) (size!45582 a!4142)))))

(declare-datatypes ((Unit!45449 0))(
  ( (Unit!45450) )
))
(declare-fun lt!603858 () Unit!45449)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93262 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45449)

(assert (=> b!1374822 (= lt!603858 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374823 () Bool)

(declare-fun res!918070 () Bool)

(assert (=> b!1374823 (=> (not res!918070) (not e!778865))))

(assert (=> b!1374823 (= res!918070 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116654 res!918069) b!1374821))

(assert (= (and b!1374821 res!918068) b!1374823))

(assert (= (and b!1374823 res!918070) b!1374820))

(assert (= (and b!1374820 res!918071) b!1374822))

(assert (= (and b!1374822 (not res!918072)) b!1374819))

(declare-fun m!1258459 () Bool)

(assert (=> start!116654 m!1258459))

(declare-fun m!1258461 () Bool)

(assert (=> b!1374823 m!1258461))

(declare-fun m!1258463 () Bool)

(assert (=> b!1374822 m!1258463))

(declare-fun m!1258465 () Bool)

(assert (=> b!1374822 m!1258465))

(declare-fun m!1258467 () Bool)

(assert (=> b!1374822 m!1258467))

(declare-fun m!1258469 () Bool)

(assert (=> b!1374822 m!1258469))

(declare-fun m!1258471 () Bool)

(assert (=> b!1374819 m!1258471))

(declare-fun m!1258473 () Bool)

(assert (=> b!1374819 m!1258473))

(declare-fun m!1258475 () Bool)

(assert (=> b!1374821 m!1258475))

(assert (=> b!1374821 m!1258475))

(declare-fun m!1258477 () Bool)

(assert (=> b!1374821 m!1258477))

(push 1)

(assert (not start!116654))

(assert (not b!1374823))

(assert (not b!1374819))

(assert (not b!1374821))

(assert (not b!1374822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148119 () Bool)

(assert (=> d!148119 (= (array_inv!33976 a!4142) (bvsge (size!45582 a!4142) #b00000000000000000000000000000000))))

(assert (=> start!116654 d!148119))

(declare-fun d!148121 () Bool)

(assert (=> d!148121 (= (validKeyInArray!0 (select (arr!45031 a!4142) i!1457)) (and (not (= (select (arr!45031 a!4142) i!1457) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45031 a!4142) i!1457) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1374821 d!148121))

(declare-fun b!1374889 () Bool)

(declare-fun e!778903 () (_ BitVec 32))

(declare-fun call!65661 () (_ BitVec 32))

(assert (=> b!1374889 (= e!778903 (bvadd #b00000000000000000000000000000001 call!65661))))

(declare-fun bm!65658 () Bool)

(assert (=> bm!65658 (= call!65661 (arrayCountValidKeys!0 lt!603859 (bvadd #b00000000000000000000000000000001 i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun d!148123 () Bool)

(declare-fun lt!603883 () (_ BitVec 32))

(assert (=> d!148123 (and (bvsge lt!603883 #b00000000000000000000000000000000) (bvsle lt!603883 (bvsub (size!45582 lt!603859) (bvadd #b00000000000000000000000000000001 i!1457))))))

(declare-fun e!778904 () (_ BitVec 32))

(assert (=> d!148123 (= lt!603883 e!778904)))

(declare-fun c!127834 () Bool)

(assert (=> d!148123 (= c!127834 (bvsge (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148123 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45582 lt!603859)))))

(assert (=> d!148123 (= (arrayCountValidKeys!0 lt!603859 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)) lt!603883)))

(declare-fun b!1374890 () Bool)

(assert (=> b!1374890 (= e!778904 #b00000000000000000000000000000000)))

(declare-fun b!1374891 () Bool)

(assert (=> b!1374891 (= e!778904 e!778903)))

(declare-fun c!127835 () Bool)

(assert (=> b!1374891 (= c!127835 (validKeyInArray!0 (select (arr!45031 lt!603859) (bvadd #b00000000000000000000000000000001 i!1457))))))

(declare-fun b!1374892 () Bool)

(assert (=> b!1374892 (= e!778903 call!65661)))

(assert (= (and d!148123 c!127834) b!1374890))

(assert (= (and d!148123 (not c!127834)) b!1374891))

(assert (= (and b!1374891 c!127835) b!1374889))

(assert (= (and b!1374891 (not c!127835)) b!1374892))

(assert (= (or b!1374889 b!1374892) bm!65658))

(declare-fun m!1258549 () Bool)

(assert (=> bm!65658 m!1258549))

(declare-fun m!1258551 () Bool)

(assert (=> b!1374891 m!1258551))

(assert (=> b!1374891 m!1258551))

(declare-fun m!1258553 () Bool)

(assert (=> b!1374891 m!1258553))

(assert (=> b!1374819 d!148123))

(declare-fun b!1374893 () Bool)

(declare-fun e!778905 () (_ BitVec 32))

(declare-fun call!65662 () (_ BitVec 32))

(assert (=> b!1374893 (= e!778905 (bvadd #b00000000000000000000000000000001 call!65662))))

(declare-fun bm!65659 () Bool)

(assert (=> bm!65659 (= call!65662 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun d!148129 () Bool)

(declare-fun lt!603884 () (_ BitVec 32))

(assert (=> d!148129 (and (bvsge lt!603884 #b00000000000000000000000000000000) (bvsle lt!603884 (bvsub (size!45582 a!4142) (bvadd #b00000000000000000000000000000001 i!1457))))))

(declare-fun e!778906 () (_ BitVec 32))

(assert (=> d!148129 (= lt!603884 e!778906)))

(declare-fun c!127836 () Bool)

(assert (=> d!148129 (= c!127836 (bvsge (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148129 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45582 a!4142)))))

(assert (=> d!148129 (= (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)) lt!603884)))

(declare-fun b!1374894 () Bool)

(assert (=> b!1374894 (= e!778906 #b00000000000000000000000000000000)))

(declare-fun b!1374895 () Bool)

(assert (=> b!1374895 (= e!778906 e!778905)))

(declare-fun c!127837 () Bool)

(assert (=> b!1374895 (= c!127837 (validKeyInArray!0 (select (arr!45031 a!4142) (bvadd #b00000000000000000000000000000001 i!1457))))))

(declare-fun b!1374896 () Bool)

(assert (=> b!1374896 (= e!778905 call!65662)))

(assert (= (and d!148129 c!127836) b!1374894))

(assert (= (and d!148129 (not c!127836)) b!1374895))

(assert (= (and b!1374895 c!127837) b!1374893))

(assert (= (and b!1374895 (not c!127837)) b!1374896))

(assert (= (or b!1374893 b!1374896) bm!65659))

(declare-fun m!1258555 () Bool)

(assert (=> bm!65659 m!1258555))

(declare-fun m!1258557 () Bool)

(assert (=> b!1374895 m!1258557))

(assert (=> b!1374895 m!1258557))

(declare-fun m!1258559 () Bool)

(assert (=> b!1374895 m!1258559))

(assert (=> b!1374819 d!148129))

(declare-fun d!148131 () Bool)

(assert (=> d!148131 (= (validKeyInArray!0 k!2959) (and (not (= k!2959 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2959 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1374823 d!148131))

(declare-fun b!1374897 () Bool)

(declare-fun e!778907 () (_ BitVec 32))

(declare-fun call!65663 () (_ BitVec 32))

(assert (=> b!1374897 (= e!778907 (bvadd #b00000000000000000000000000000001 call!65663))))

(declare-fun bm!65660 () Bool)

(assert (=> bm!65660 (= call!65663 (arrayCountValidKeys!0 lt!603859 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun d!148133 () Bool)

(declare-fun lt!603885 () (_ BitVec 32))

(assert (=> d!148133 (and (bvsge lt!603885 #b00000000000000000000000000000000) (bvsle lt!603885 (bvsub (size!45582 lt!603859) #b00000000000000000000000000000000)))))

(declare-fun e!778908 () (_ BitVec 32))

(assert (=> d!148133 (= lt!603885 e!778908)))

(declare-fun c!127838 () Bool)

(assert (=> d!148133 (= c!127838 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148133 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45582 lt!603859)))))

(assert (=> d!148133 (= (arrayCountValidKeys!0 lt!603859 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603885)))

(declare-fun b!1374898 () Bool)

(assert (=> b!1374898 (= e!778908 #b00000000000000000000000000000000)))

(declare-fun b!1374899 () Bool)

(assert (=> b!1374899 (= e!778908 e!778907)))

(declare-fun c!127839 () Bool)

(assert (=> b!1374899 (= c!127839 (validKeyInArray!0 (select (arr!45031 lt!603859) #b00000000000000000000000000000000)))))

(declare-fun b!1374900 () Bool)

(assert (=> b!1374900 (= e!778907 call!65663)))

(assert (= (and d!148133 c!127838) b!1374898))

(assert (= (and d!148133 (not c!127838)) b!1374899))

(assert (= (and b!1374899 c!127839) b!1374897))

(assert (= (and b!1374899 (not c!127839)) b!1374900))

(assert (= (or b!1374897 b!1374900) bm!65660))

(declare-fun m!1258561 () Bool)

(assert (=> bm!65660 m!1258561))

(declare-fun m!1258563 () Bool)

(assert (=> b!1374899 m!1258563))

(assert (=> b!1374899 m!1258563))

(declare-fun m!1258565 () Bool)

(assert (=> b!1374899 m!1258565))

(assert (=> b!1374822 d!148133))

(declare-fun b!1374901 () Bool)

(declare-fun e!778909 () (_ BitVec 32))

(declare-fun call!65664 () (_ BitVec 32))

(assert (=> b!1374901 (= e!778909 (bvadd #b00000000000000000000000000000001 call!65664))))

(declare-fun bm!65661 () Bool)

(assert (=> bm!65661 (= call!65664 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun d!148135 () Bool)

(declare-fun lt!603886 () (_ BitVec 32))

(assert (=> d!148135 (and (bvsge lt!603886 #b00000000000000000000000000000000) (bvsle lt!603886 (bvsub (size!45582 a!4142) #b00000000000000000000000000000000)))))

(declare-fun e!778910 () (_ BitVec 32))

(assert (=> d!148135 (= lt!603886 e!778910)))

(declare-fun c!127840 () Bool)

(assert (=> d!148135 (= c!127840 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148135 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45582 a!4142)))))

(assert (=> d!148135 (= (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603886)))

(declare-fun b!1374902 () Bool)

(assert (=> b!1374902 (= e!778910 #b00000000000000000000000000000000)))

(declare-fun b!1374903 () Bool)

(assert (=> b!1374903 (= e!778910 e!778909)))

(declare-fun c!127841 () Bool)

(assert (=> b!1374903 (= c!127841 (validKeyInArray!0 (select (arr!45031 a!4142) #b00000000000000000000000000000000)))))

(declare-fun b!1374904 () Bool)

(assert (=> b!1374904 (= e!778909 call!65664)))

(assert (= (and d!148135 c!127840) b!1374902))

(assert (= (and d!148135 (not c!127840)) b!1374903))

(assert (= (and b!1374903 c!127841) b!1374901))

(assert (= (and b!1374903 (not c!127841)) b!1374904))

(assert (= (or b!1374901 b!1374904) bm!65661))

(declare-fun m!1258567 () Bool)

(assert (=> bm!65661 m!1258567))

(declare-fun m!1258569 () Bool)

(assert (=> b!1374903 m!1258569))

(assert (=> b!1374903 m!1258569))

