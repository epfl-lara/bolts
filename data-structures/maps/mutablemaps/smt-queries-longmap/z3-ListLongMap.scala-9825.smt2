; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116656 () Bool)

(assert start!116656)

(declare-fun b!1374834 () Bool)

(declare-fun res!918085 () Bool)

(declare-fun e!778873 () Bool)

(assert (=> b!1374834 (=> (not res!918085) (not e!778873))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374834 (= res!918085 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374835 () Bool)

(declare-fun res!918083 () Bool)

(assert (=> b!1374835 (=> (not res!918083) (not e!778873))))

(declare-datatypes ((array!93264 0))(
  ( (array!93265 (arr!45032 (Array (_ BitVec 32) (_ BitVec 64))) (size!45583 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93264)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374835 (= res!918083 (validKeyInArray!0 (select (arr!45032 a!4142) i!1457)))))

(declare-fun lt!603864 () array!93264)

(declare-fun e!778874 () Bool)

(declare-fun b!1374836 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93264 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374836 (= e!778874 (= (arrayCountValidKeys!0 lt!603864 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)) (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457))))))

(declare-fun b!1374837 () Bool)

(declare-fun res!918084 () Bool)

(assert (=> b!1374837 (=> (not res!918084) (not e!778873))))

(assert (=> b!1374837 (= res!918084 (bvslt (size!45583 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374838 () Bool)

(assert (=> b!1374838 (= e!778873 (not e!778874))))

(declare-fun res!918086 () Bool)

(assert (=> b!1374838 (=> res!918086 e!778874)))

(assert (=> b!1374838 (= res!918086 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(assert (=> b!1374838 (= (arrayCountValidKeys!0 lt!603864 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374838 (= lt!603864 (array!93265 (store (arr!45032 a!4142) i!1457 k0!2959) (size!45583 a!4142)))))

(declare-datatypes ((Unit!45451 0))(
  ( (Unit!45452) )
))
(declare-fun lt!603865 () Unit!45451)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93264 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45451)

(assert (=> b!1374838 (= lt!603865 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun res!918087 () Bool)

(assert (=> start!116656 (=> (not res!918087) (not e!778873))))

(assert (=> start!116656 (= res!918087 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45583 a!4142))))))

(assert (=> start!116656 e!778873))

(assert (=> start!116656 true))

(declare-fun array_inv!33977 (array!93264) Bool)

(assert (=> start!116656 (array_inv!33977 a!4142)))

(assert (= (and start!116656 res!918087) b!1374835))

(assert (= (and b!1374835 res!918083) b!1374834))

(assert (= (and b!1374834 res!918085) b!1374837))

(assert (= (and b!1374837 res!918084) b!1374838))

(assert (= (and b!1374838 (not res!918086)) b!1374836))

(declare-fun m!1258479 () Bool)

(assert (=> b!1374834 m!1258479))

(declare-fun m!1258481 () Bool)

(assert (=> start!116656 m!1258481))

(declare-fun m!1258483 () Bool)

(assert (=> b!1374835 m!1258483))

(assert (=> b!1374835 m!1258483))

(declare-fun m!1258485 () Bool)

(assert (=> b!1374835 m!1258485))

(declare-fun m!1258487 () Bool)

(assert (=> b!1374838 m!1258487))

(declare-fun m!1258489 () Bool)

(assert (=> b!1374838 m!1258489))

(declare-fun m!1258491 () Bool)

(assert (=> b!1374838 m!1258491))

(declare-fun m!1258493 () Bool)

(assert (=> b!1374838 m!1258493))

(declare-fun m!1258495 () Bool)

(assert (=> b!1374836 m!1258495))

(declare-fun m!1258497 () Bool)

(assert (=> b!1374836 m!1258497))

(check-sat (not b!1374834) (not b!1374838) (not start!116656) (not b!1374836) (not b!1374835))
(check-sat)
(get-model)

(declare-fun d!148105 () Bool)

(assert (=> d!148105 (= (array_inv!33977 a!4142) (bvsge (size!45583 a!4142) #b00000000000000000000000000000000))))

(assert (=> start!116656 d!148105))

(declare-fun d!148107 () Bool)

(assert (=> d!148107 (= (validKeyInArray!0 (select (arr!45032 a!4142) i!1457)) (and (not (= (select (arr!45032 a!4142) i!1457) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45032 a!4142) i!1457) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1374835 d!148107))

(declare-fun b!1374862 () Bool)

(declare-fun e!778889 () (_ BitVec 32))

(declare-fun call!65655 () (_ BitVec 32))

(assert (=> b!1374862 (= e!778889 (bvadd #b00000000000000000000000000000001 call!65655))))

(declare-fun b!1374863 () Bool)

(declare-fun e!778888 () (_ BitVec 32))

(assert (=> b!1374863 (= e!778888 e!778889)))

(declare-fun c!127822 () Bool)

(assert (=> b!1374863 (= c!127822 (validKeyInArray!0 (select (arr!45032 lt!603864) (bvadd #b00000000000000000000000000000001 i!1457))))))

(declare-fun b!1374864 () Bool)

(assert (=> b!1374864 (= e!778889 call!65655)))

(declare-fun b!1374865 () Bool)

(assert (=> b!1374865 (= e!778888 #b00000000000000000000000000000000)))

(declare-fun d!148109 () Bool)

(declare-fun lt!603874 () (_ BitVec 32))

(assert (=> d!148109 (and (bvsge lt!603874 #b00000000000000000000000000000000) (bvsle lt!603874 (bvsub (size!45583 lt!603864) (bvadd #b00000000000000000000000000000001 i!1457))))))

(assert (=> d!148109 (= lt!603874 e!778888)))

(declare-fun c!127823 () Bool)

(assert (=> d!148109 (= c!127823 (bvsge (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148109 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45583 lt!603864)))))

(assert (=> d!148109 (= (arrayCountValidKeys!0 lt!603864 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)) lt!603874)))

(declare-fun bm!65652 () Bool)

(assert (=> bm!65652 (= call!65655 (arrayCountValidKeys!0 lt!603864 (bvadd #b00000000000000000000000000000001 i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and d!148109 c!127823) b!1374865))

(assert (= (and d!148109 (not c!127823)) b!1374863))

(assert (= (and b!1374863 c!127822) b!1374862))

(assert (= (and b!1374863 (not c!127822)) b!1374864))

(assert (= (or b!1374862 b!1374864) bm!65652))

(declare-fun m!1258519 () Bool)

(assert (=> b!1374863 m!1258519))

(assert (=> b!1374863 m!1258519))

(declare-fun m!1258521 () Bool)

(assert (=> b!1374863 m!1258521))

(declare-fun m!1258523 () Bool)

(assert (=> bm!65652 m!1258523))

(assert (=> b!1374836 d!148109))

(declare-fun b!1374866 () Bool)

(declare-fun e!778891 () (_ BitVec 32))

(declare-fun call!65656 () (_ BitVec 32))

(assert (=> b!1374866 (= e!778891 (bvadd #b00000000000000000000000000000001 call!65656))))

(declare-fun b!1374867 () Bool)

(declare-fun e!778890 () (_ BitVec 32))

(assert (=> b!1374867 (= e!778890 e!778891)))

(declare-fun c!127824 () Bool)

(assert (=> b!1374867 (= c!127824 (validKeyInArray!0 (select (arr!45032 a!4142) (bvadd #b00000000000000000000000000000001 i!1457))))))

(declare-fun b!1374868 () Bool)

(assert (=> b!1374868 (= e!778891 call!65656)))

(declare-fun b!1374869 () Bool)

(assert (=> b!1374869 (= e!778890 #b00000000000000000000000000000000)))

(declare-fun d!148111 () Bool)

(declare-fun lt!603875 () (_ BitVec 32))

(assert (=> d!148111 (and (bvsge lt!603875 #b00000000000000000000000000000000) (bvsle lt!603875 (bvsub (size!45583 a!4142) (bvadd #b00000000000000000000000000000001 i!1457))))))

(assert (=> d!148111 (= lt!603875 e!778890)))

(declare-fun c!127825 () Bool)

(assert (=> d!148111 (= c!127825 (bvsge (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148111 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45583 a!4142)))))

(assert (=> d!148111 (= (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)) lt!603875)))

(declare-fun bm!65653 () Bool)

(assert (=> bm!65653 (= call!65656 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and d!148111 c!127825) b!1374869))

(assert (= (and d!148111 (not c!127825)) b!1374867))

(assert (= (and b!1374867 c!127824) b!1374866))

(assert (= (and b!1374867 (not c!127824)) b!1374868))

(assert (= (or b!1374866 b!1374868) bm!65653))

(declare-fun m!1258525 () Bool)

(assert (=> b!1374867 m!1258525))

(assert (=> b!1374867 m!1258525))

(declare-fun m!1258527 () Bool)

(assert (=> b!1374867 m!1258527))

(declare-fun m!1258529 () Bool)

(assert (=> bm!65653 m!1258529))

(assert (=> b!1374836 d!148111))

(declare-fun b!1374870 () Bool)

(declare-fun e!778893 () (_ BitVec 32))

(declare-fun call!65657 () (_ BitVec 32))

(assert (=> b!1374870 (= e!778893 (bvadd #b00000000000000000000000000000001 call!65657))))

(declare-fun b!1374871 () Bool)

(declare-fun e!778892 () (_ BitVec 32))

(assert (=> b!1374871 (= e!778892 e!778893)))

(declare-fun c!127826 () Bool)

(assert (=> b!1374871 (= c!127826 (validKeyInArray!0 (select (arr!45032 lt!603864) #b00000000000000000000000000000000)))))

(declare-fun b!1374872 () Bool)

(assert (=> b!1374872 (= e!778893 call!65657)))

(declare-fun b!1374873 () Bool)

(assert (=> b!1374873 (= e!778892 #b00000000000000000000000000000000)))

(declare-fun d!148113 () Bool)

(declare-fun lt!603876 () (_ BitVec 32))

(assert (=> d!148113 (and (bvsge lt!603876 #b00000000000000000000000000000000) (bvsle lt!603876 (bvsub (size!45583 lt!603864) #b00000000000000000000000000000000)))))

(assert (=> d!148113 (= lt!603876 e!778892)))

(declare-fun c!127827 () Bool)

(assert (=> d!148113 (= c!127827 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148113 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45583 lt!603864)))))

(assert (=> d!148113 (= (arrayCountValidKeys!0 lt!603864 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603876)))

(declare-fun bm!65654 () Bool)

(assert (=> bm!65654 (= call!65657 (arrayCountValidKeys!0 lt!603864 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and d!148113 c!127827) b!1374873))

(assert (= (and d!148113 (not c!127827)) b!1374871))

(assert (= (and b!1374871 c!127826) b!1374870))

(assert (= (and b!1374871 (not c!127826)) b!1374872))

(assert (= (or b!1374870 b!1374872) bm!65654))

(declare-fun m!1258531 () Bool)

(assert (=> b!1374871 m!1258531))

(assert (=> b!1374871 m!1258531))

(declare-fun m!1258533 () Bool)

(assert (=> b!1374871 m!1258533))

(declare-fun m!1258535 () Bool)

(assert (=> bm!65654 m!1258535))

(assert (=> b!1374838 d!148113))

(declare-fun b!1374874 () Bool)

(declare-fun e!778895 () (_ BitVec 32))

(declare-fun call!65658 () (_ BitVec 32))

(assert (=> b!1374874 (= e!778895 (bvadd #b00000000000000000000000000000001 call!65658))))

(declare-fun b!1374875 () Bool)

(declare-fun e!778894 () (_ BitVec 32))

(assert (=> b!1374875 (= e!778894 e!778895)))

(declare-fun c!127828 () Bool)

(assert (=> b!1374875 (= c!127828 (validKeyInArray!0 (select (arr!45032 a!4142) #b00000000000000000000000000000000)))))

(declare-fun b!1374876 () Bool)

(assert (=> b!1374876 (= e!778895 call!65658)))

(declare-fun b!1374877 () Bool)

(assert (=> b!1374877 (= e!778894 #b00000000000000000000000000000000)))

(declare-fun d!148115 () Bool)

(declare-fun lt!603877 () (_ BitVec 32))

(assert (=> d!148115 (and (bvsge lt!603877 #b00000000000000000000000000000000) (bvsle lt!603877 (bvsub (size!45583 a!4142) #b00000000000000000000000000000000)))))

(assert (=> d!148115 (= lt!603877 e!778894)))

(declare-fun c!127829 () Bool)

(assert (=> d!148115 (= c!127829 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148115 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45583 a!4142)))))

(assert (=> d!148115 (= (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603877)))

(declare-fun bm!65655 () Bool)

(assert (=> bm!65655 (= call!65658 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and d!148115 c!127829) b!1374877))

(assert (= (and d!148115 (not c!127829)) b!1374875))

(assert (= (and b!1374875 c!127828) b!1374874))

(assert (= (and b!1374875 (not c!127828)) b!1374876))

(assert (= (or b!1374874 b!1374876) bm!65655))

(declare-fun m!1258537 () Bool)

(assert (=> b!1374875 m!1258537))

(assert (=> b!1374875 m!1258537))

(declare-fun m!1258539 () Bool)

(assert (=> b!1374875 m!1258539))

(declare-fun m!1258541 () Bool)

(assert (=> bm!65655 m!1258541))

(assert (=> b!1374838 d!148115))

(declare-fun d!148117 () Bool)

(declare-fun e!778898 () Bool)

(assert (=> d!148117 e!778898))

(declare-fun res!918105 () Bool)

(assert (=> d!148117 (=> (not res!918105) (not e!778898))))

(assert (=> d!148117 (= res!918105 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45583 a!4142))))))

(declare-fun lt!603880 () Unit!45451)

(declare-fun choose!4 (array!93264 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45451)

(assert (=> d!148117 (= lt!603880 (choose!4 a!4142 i!1457 k0!2959 i!1457))))

(assert (=> d!148117 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45583 a!4142)))))

(assert (=> d!148117 (= (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457) lt!603880)))

(declare-fun b!1374880 () Bool)

(assert (=> b!1374880 (= e!778898 (= (arrayCountValidKeys!0 (array!93265 (store (arr!45032 a!4142) i!1457 k0!2959) (size!45583 a!4142)) #b00000000000000000000000000000000 (bvadd i!1457 #b00000000000000000000000000000001)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd i!1457 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))))

(assert (= (and d!148117 res!918105) b!1374880))

(declare-fun m!1258543 () Bool)

(assert (=> d!148117 m!1258543))

(assert (=> b!1374880 m!1258491))

(declare-fun m!1258545 () Bool)

(assert (=> b!1374880 m!1258545))

(declare-fun m!1258547 () Bool)

(assert (=> b!1374880 m!1258547))

(assert (=> b!1374838 d!148117))

(declare-fun d!148125 () Bool)

(assert (=> d!148125 (= (validKeyInArray!0 k0!2959) (and (not (= k0!2959 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2959 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1374834 d!148125))

(check-sat (not b!1374880) (not b!1374863) (not bm!65653) (not d!148117) (not bm!65652) (not b!1374875) (not b!1374871) (not bm!65654) (not bm!65655) (not b!1374867))
(check-sat)
