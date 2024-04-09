; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104048 () Bool)

(assert start!104048)

(declare-fun b!1244535 () Bool)

(declare-fun res!830254 () Bool)

(declare-fun e!705472 () Bool)

(assert (=> b!1244535 (=> (not res!830254) (not e!705472))))

(declare-datatypes ((array!80053 0))(
  ( (array!80054 (arr!38614 (Array (_ BitVec 32) (_ BitVec 64))) (size!39151 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80053)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27595 0))(
  ( (Nil!27592) (Cons!27591 (h!28800 (_ BitVec 64)) (t!41071 List!27595)) )
))
(declare-fun arrayNoDuplicates!0 (array!80053 (_ BitVec 32) List!27595) Bool)

(assert (=> b!1244535 (= res!830254 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27592))))

(declare-fun b!1244536 () Bool)

(declare-fun res!830257 () Bool)

(declare-fun e!705476 () Bool)

(assert (=> b!1244536 (=> res!830257 e!705476)))

(declare-fun noDuplicate!2036 (List!27595) Bool)

(assert (=> b!1244536 (= res!830257 (not (noDuplicate!2036 Nil!27592)))))

(declare-fun b!1244537 () Bool)

(declare-fun res!830253 () Bool)

(declare-fun e!705475 () Bool)

(assert (=> b!1244537 (=> (not res!830253) (not e!705475))))

(assert (=> b!1244537 (= res!830253 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27592))))

(declare-fun b!1244538 () Bool)

(declare-datatypes ((Unit!41332 0))(
  ( (Unit!41333) )
))
(declare-fun e!705473 () Unit!41332)

(declare-fun Unit!41334 () Unit!41332)

(assert (=> b!1244538 (= e!705473 Unit!41334)))

(declare-fun b!1244539 () Bool)

(declare-fun e!705471 () Bool)

(assert (=> b!1244539 (= e!705476 e!705471)))

(declare-fun res!830255 () Bool)

(assert (=> b!1244539 (=> (not res!830255) (not e!705471))))

(declare-fun contains!7446 (List!27595 (_ BitVec 64)) Bool)

(assert (=> b!1244539 (= res!830255 (not (contains!7446 Nil!27592 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1244541 () Bool)

(assert (=> b!1244541 (= e!705471 (not (contains!7446 Nil!27592 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1244542 () Bool)

(assert (=> b!1244542 (= e!705475 e!705472)))

(declare-fun res!830259 () Bool)

(assert (=> b!1244542 (=> (not res!830259) (not e!705472))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244542 (= res!830259 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562733 () Unit!41332)

(assert (=> b!1244542 (= lt!562733 e!705473)))

(declare-fun c!121828 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244542 (= c!121828 (validKeyInArray!0 (select (arr!38614 a!3892) from!3270)))))

(declare-fun b!1244543 () Bool)

(assert (=> b!1244543 (= e!705472 (not e!705476))))

(declare-fun res!830258 () Bool)

(assert (=> b!1244543 (=> res!830258 e!705476)))

(assert (=> b!1244543 (= res!830258 (bvslt newFrom!287 #b00000000000000000000000000000000))))

(assert (=> b!1244543 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27592)))

(declare-fun lt!562734 () Unit!41332)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80053 (_ BitVec 32) (_ BitVec 32)) Unit!41332)

(assert (=> b!1244543 (= lt!562734 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1244544 () Bool)

(declare-fun res!830256 () Bool)

(assert (=> b!1244544 (=> (not res!830256) (not e!705475))))

(assert (=> b!1244544 (= res!830256 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39151 a!3892)) (not (= newFrom!287 (size!39151 a!3892)))))))

(declare-fun res!830260 () Bool)

(assert (=> start!104048 (=> (not res!830260) (not e!705475))))

(assert (=> start!104048 (= res!830260 (and (bvslt (size!39151 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39151 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39151 a!3892))))))

(assert (=> start!104048 e!705475))

(declare-fun array_inv!29390 (array!80053) Bool)

(assert (=> start!104048 (array_inv!29390 a!3892)))

(assert (=> start!104048 true))

(declare-fun b!1244540 () Bool)

(declare-fun lt!562735 () Unit!41332)

(assert (=> b!1244540 (= e!705473 lt!562735)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80053 List!27595 List!27595 (_ BitVec 32)) Unit!41332)

(assert (=> b!1244540 (= lt!562735 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27591 (select (arr!38614 a!3892) from!3270) Nil!27592) Nil!27592 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244540 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27592)))

(assert (= (and start!104048 res!830260) b!1244537))

(assert (= (and b!1244537 res!830253) b!1244544))

(assert (= (and b!1244544 res!830256) b!1244542))

(assert (= (and b!1244542 c!121828) b!1244540))

(assert (= (and b!1244542 (not c!121828)) b!1244538))

(assert (= (and b!1244542 res!830259) b!1244535))

(assert (= (and b!1244535 res!830254) b!1244543))

(assert (= (and b!1244543 (not res!830258)) b!1244536))

(assert (= (and b!1244536 (not res!830257)) b!1244539))

(assert (= (and b!1244539 res!830255) b!1244541))

(declare-fun m!1146805 () Bool)

(assert (=> b!1244535 m!1146805))

(declare-fun m!1146807 () Bool)

(assert (=> b!1244542 m!1146807))

(assert (=> b!1244542 m!1146807))

(declare-fun m!1146809 () Bool)

(assert (=> b!1244542 m!1146809))

(declare-fun m!1146811 () Bool)

(assert (=> b!1244539 m!1146811))

(declare-fun m!1146813 () Bool)

(assert (=> b!1244541 m!1146813))

(declare-fun m!1146815 () Bool)

(assert (=> start!104048 m!1146815))

(assert (=> b!1244540 m!1146807))

(declare-fun m!1146817 () Bool)

(assert (=> b!1244540 m!1146817))

(assert (=> b!1244540 m!1146805))

(declare-fun m!1146819 () Bool)

(assert (=> b!1244543 m!1146819))

(declare-fun m!1146821 () Bool)

(assert (=> b!1244543 m!1146821))

(declare-fun m!1146823 () Bool)

(assert (=> b!1244537 m!1146823))

(declare-fun m!1146825 () Bool)

(assert (=> b!1244536 m!1146825))

(check-sat (not b!1244536) (not b!1244541) (not b!1244540) (not b!1244537) (not start!104048) (not b!1244543) (not b!1244535) (not b!1244539) (not b!1244542))
(check-sat)
(get-model)

(declare-fun b!1244595 () Bool)

(declare-fun e!705513 () Bool)

(declare-fun e!705512 () Bool)

(assert (=> b!1244595 (= e!705513 e!705512)))

(declare-fun res!830298 () Bool)

(assert (=> b!1244595 (=> (not res!830298) (not e!705512))))

(declare-fun e!705514 () Bool)

(assert (=> b!1244595 (= res!830298 (not e!705514))))

(declare-fun res!830299 () Bool)

(assert (=> b!1244595 (=> (not res!830299) (not e!705514))))

(assert (=> b!1244595 (= res!830299 (validKeyInArray!0 (select (arr!38614 a!3892) newFrom!287)))))

(declare-fun b!1244596 () Bool)

(declare-fun e!705511 () Bool)

(declare-fun call!61424 () Bool)

(assert (=> b!1244596 (= e!705511 call!61424)))

(declare-fun d!137081 () Bool)

(declare-fun res!830297 () Bool)

(assert (=> d!137081 (=> res!830297 e!705513)))

(assert (=> d!137081 (= res!830297 (bvsge newFrom!287 (size!39151 a!3892)))))

(assert (=> d!137081 (= (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27592) e!705513)))

(declare-fun b!1244597 () Bool)

(assert (=> b!1244597 (= e!705514 (contains!7446 Nil!27592 (select (arr!38614 a!3892) newFrom!287)))))

(declare-fun b!1244598 () Bool)

(assert (=> b!1244598 (= e!705512 e!705511)))

(declare-fun c!121836 () Bool)

(assert (=> b!1244598 (= c!121836 (validKeyInArray!0 (select (arr!38614 a!3892) newFrom!287)))))

(declare-fun bm!61421 () Bool)

(assert (=> bm!61421 (= call!61424 (arrayNoDuplicates!0 a!3892 (bvadd newFrom!287 #b00000000000000000000000000000001) (ite c!121836 (Cons!27591 (select (arr!38614 a!3892) newFrom!287) Nil!27592) Nil!27592)))))

(declare-fun b!1244599 () Bool)

(assert (=> b!1244599 (= e!705511 call!61424)))

(assert (= (and d!137081 (not res!830297)) b!1244595))

(assert (= (and b!1244595 res!830299) b!1244597))

(assert (= (and b!1244595 res!830298) b!1244598))

(assert (= (and b!1244598 c!121836) b!1244596))

(assert (= (and b!1244598 (not c!121836)) b!1244599))

(assert (= (or b!1244596 b!1244599) bm!61421))

(declare-fun m!1146849 () Bool)

(assert (=> b!1244595 m!1146849))

(assert (=> b!1244595 m!1146849))

(declare-fun m!1146851 () Bool)

(assert (=> b!1244595 m!1146851))

(assert (=> b!1244597 m!1146849))

(assert (=> b!1244597 m!1146849))

(declare-fun m!1146853 () Bool)

(assert (=> b!1244597 m!1146853))

(assert (=> b!1244598 m!1146849))

(assert (=> b!1244598 m!1146849))

(assert (=> b!1244598 m!1146851))

(assert (=> bm!61421 m!1146849))

(declare-fun m!1146855 () Bool)

(assert (=> bm!61421 m!1146855))

(assert (=> b!1244543 d!137081))

(declare-fun d!137085 () Bool)

(assert (=> d!137085 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27592)))

(declare-fun lt!562747 () Unit!41332)

(declare-fun choose!39 (array!80053 (_ BitVec 32) (_ BitVec 32)) Unit!41332)

(assert (=> d!137085 (= lt!562747 (choose!39 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(assert (=> d!137085 (bvslt (size!39151 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137085 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287) lt!562747)))

(declare-fun bs!35041 () Bool)

(assert (= bs!35041 d!137085))

(assert (=> bs!35041 m!1146819))

(declare-fun m!1146861 () Bool)

(assert (=> bs!35041 m!1146861))

(assert (=> b!1244543 d!137085))

(declare-fun d!137091 () Bool)

(assert (=> d!137091 (= (validKeyInArray!0 (select (arr!38614 a!3892) from!3270)) (and (not (= (select (arr!38614 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38614 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1244542 d!137091))

(declare-fun b!1244605 () Bool)

(declare-fun e!705521 () Bool)

(declare-fun e!705520 () Bool)

(assert (=> b!1244605 (= e!705521 e!705520)))

(declare-fun res!830304 () Bool)

(assert (=> b!1244605 (=> (not res!830304) (not e!705520))))

(declare-fun e!705522 () Bool)

(assert (=> b!1244605 (= res!830304 (not e!705522))))

(declare-fun res!830305 () Bool)

(assert (=> b!1244605 (=> (not res!830305) (not e!705522))))

(assert (=> b!1244605 (= res!830305 (validKeyInArray!0 (select (arr!38614 a!3892) from!3270)))))

(declare-fun b!1244606 () Bool)

(declare-fun e!705519 () Bool)

(declare-fun call!61426 () Bool)

(assert (=> b!1244606 (= e!705519 call!61426)))

(declare-fun d!137093 () Bool)

(declare-fun res!830303 () Bool)

(assert (=> d!137093 (=> res!830303 e!705521)))

(assert (=> d!137093 (= res!830303 (bvsge from!3270 (size!39151 a!3892)))))

(assert (=> d!137093 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27592) e!705521)))

(declare-fun b!1244607 () Bool)

(assert (=> b!1244607 (= e!705522 (contains!7446 Nil!27592 (select (arr!38614 a!3892) from!3270)))))

(declare-fun b!1244608 () Bool)

(assert (=> b!1244608 (= e!705520 e!705519)))

(declare-fun c!121838 () Bool)

(assert (=> b!1244608 (= c!121838 (validKeyInArray!0 (select (arr!38614 a!3892) from!3270)))))

(declare-fun bm!61423 () Bool)

(assert (=> bm!61423 (= call!61426 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121838 (Cons!27591 (select (arr!38614 a!3892) from!3270) Nil!27592) Nil!27592)))))

(declare-fun b!1244609 () Bool)

(assert (=> b!1244609 (= e!705519 call!61426)))

(assert (= (and d!137093 (not res!830303)) b!1244605))

(assert (= (and b!1244605 res!830305) b!1244607))

(assert (= (and b!1244605 res!830304) b!1244608))

(assert (= (and b!1244608 c!121838) b!1244606))

(assert (= (and b!1244608 (not c!121838)) b!1244609))

(assert (= (or b!1244606 b!1244609) bm!61423))

(assert (=> b!1244605 m!1146807))

(assert (=> b!1244605 m!1146807))

(assert (=> b!1244605 m!1146809))

(assert (=> b!1244607 m!1146807))

(assert (=> b!1244607 m!1146807))

(declare-fun m!1146865 () Bool)

(assert (=> b!1244607 m!1146865))

(assert (=> b!1244608 m!1146807))

(assert (=> b!1244608 m!1146807))

(assert (=> b!1244608 m!1146809))

(assert (=> bm!61423 m!1146807))

(declare-fun m!1146867 () Bool)

(assert (=> bm!61423 m!1146867))

(assert (=> b!1244537 d!137093))

(declare-fun d!137097 () Bool)

(declare-fun lt!562756 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!617 (List!27595) (InoxSet (_ BitVec 64)))

(assert (=> d!137097 (= lt!562756 (select (content!617 Nil!27592) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!705544 () Bool)

(assert (=> d!137097 (= lt!562756 e!705544)))

(declare-fun res!830323 () Bool)

(assert (=> d!137097 (=> (not res!830323) (not e!705544))))

(get-info :version)

(assert (=> d!137097 (= res!830323 ((_ is Cons!27591) Nil!27592))))

(assert (=> d!137097 (= (contains!7446 Nil!27592 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562756)))

(declare-fun b!1244634 () Bool)

(declare-fun e!705543 () Bool)

(assert (=> b!1244634 (= e!705544 e!705543)))

(declare-fun res!830322 () Bool)

(assert (=> b!1244634 (=> res!830322 e!705543)))

(assert (=> b!1244634 (= res!830322 (= (h!28800 Nil!27592) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1244635 () Bool)

(assert (=> b!1244635 (= e!705543 (contains!7446 (t!41071 Nil!27592) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137097 res!830323) b!1244634))

(assert (= (and b!1244634 (not res!830322)) b!1244635))

(declare-fun m!1146887 () Bool)

(assert (=> d!137097 m!1146887))

(declare-fun m!1146889 () Bool)

(assert (=> d!137097 m!1146889))

(declare-fun m!1146891 () Bool)

(assert (=> b!1244635 m!1146891))

(assert (=> b!1244539 d!137097))

(declare-fun d!137105 () Bool)

(assert (=> d!137105 (= (array_inv!29390 a!3892) (bvsge (size!39151 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104048 d!137105))

(declare-fun d!137107 () Bool)

(assert (=> d!137107 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27592)))

(declare-fun lt!562762 () Unit!41332)

(declare-fun choose!80 (array!80053 List!27595 List!27595 (_ BitVec 32)) Unit!41332)

(assert (=> d!137107 (= lt!562762 (choose!80 a!3892 (Cons!27591 (select (arr!38614 a!3892) from!3270) Nil!27592) Nil!27592 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> d!137107 (bvslt (size!39151 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137107 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27591 (select (arr!38614 a!3892) from!3270) Nil!27592) Nil!27592 (bvadd #b00000000000000000000000000000001 from!3270)) lt!562762)))

(declare-fun bs!35045 () Bool)

(assert (= bs!35045 d!137107))

(assert (=> bs!35045 m!1146805))

(declare-fun m!1146903 () Bool)

(assert (=> bs!35045 m!1146903))

(assert (=> b!1244540 d!137107))

(declare-fun b!1244650 () Bool)

(declare-fun e!705559 () Bool)

(declare-fun e!705558 () Bool)

(assert (=> b!1244650 (= e!705559 e!705558)))

(declare-fun res!830335 () Bool)

(assert (=> b!1244650 (=> (not res!830335) (not e!705558))))

(declare-fun e!705560 () Bool)

(assert (=> b!1244650 (= res!830335 (not e!705560))))

(declare-fun res!830336 () Bool)

(assert (=> b!1244650 (=> (not res!830336) (not e!705560))))

(assert (=> b!1244650 (= res!830336 (validKeyInArray!0 (select (arr!38614 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244651 () Bool)

(declare-fun e!705557 () Bool)

(declare-fun call!61433 () Bool)

(assert (=> b!1244651 (= e!705557 call!61433)))

(declare-fun d!137113 () Bool)

(declare-fun res!830334 () Bool)

(assert (=> d!137113 (=> res!830334 e!705559)))

(assert (=> d!137113 (= res!830334 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39151 a!3892)))))

(assert (=> d!137113 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27592) e!705559)))

(declare-fun b!1244652 () Bool)

(assert (=> b!1244652 (= e!705560 (contains!7446 Nil!27592 (select (arr!38614 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244653 () Bool)

(assert (=> b!1244653 (= e!705558 e!705557)))

(declare-fun c!121845 () Bool)

(assert (=> b!1244653 (= c!121845 (validKeyInArray!0 (select (arr!38614 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun bm!61430 () Bool)

(assert (=> bm!61430 (= call!61433 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121845 (Cons!27591 (select (arr!38614 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) Nil!27592) Nil!27592)))))

(declare-fun b!1244654 () Bool)

(assert (=> b!1244654 (= e!705557 call!61433)))

(assert (= (and d!137113 (not res!830334)) b!1244650))

(assert (= (and b!1244650 res!830336) b!1244652))

(assert (= (and b!1244650 res!830335) b!1244653))

(assert (= (and b!1244653 c!121845) b!1244651))

(assert (= (and b!1244653 (not c!121845)) b!1244654))

(assert (= (or b!1244651 b!1244654) bm!61430))

(declare-fun m!1146909 () Bool)

(assert (=> b!1244650 m!1146909))

(assert (=> b!1244650 m!1146909))

(declare-fun m!1146911 () Bool)

(assert (=> b!1244650 m!1146911))

(assert (=> b!1244652 m!1146909))

(assert (=> b!1244652 m!1146909))

(declare-fun m!1146915 () Bool)

(assert (=> b!1244652 m!1146915))

(assert (=> b!1244653 m!1146909))

(assert (=> b!1244653 m!1146909))

(assert (=> b!1244653 m!1146911))

(assert (=> bm!61430 m!1146909))

(declare-fun m!1146919 () Bool)

(assert (=> bm!61430 m!1146919))

(assert (=> b!1244540 d!137113))

(assert (=> b!1244535 d!137113))

(declare-fun d!137119 () Bool)

(declare-fun res!830347 () Bool)

(declare-fun e!705571 () Bool)

(assert (=> d!137119 (=> res!830347 e!705571)))

(assert (=> d!137119 (= res!830347 ((_ is Nil!27592) Nil!27592))))

(assert (=> d!137119 (= (noDuplicate!2036 Nil!27592) e!705571)))

(declare-fun b!1244665 () Bool)

(declare-fun e!705572 () Bool)

(assert (=> b!1244665 (= e!705571 e!705572)))

(declare-fun res!830348 () Bool)

(assert (=> b!1244665 (=> (not res!830348) (not e!705572))))

(assert (=> b!1244665 (= res!830348 (not (contains!7446 (t!41071 Nil!27592) (h!28800 Nil!27592))))))

(declare-fun b!1244666 () Bool)

(assert (=> b!1244666 (= e!705572 (noDuplicate!2036 (t!41071 Nil!27592)))))

(assert (= (and d!137119 (not res!830347)) b!1244665))

(assert (= (and b!1244665 res!830348) b!1244666))

(declare-fun m!1146921 () Bool)

(assert (=> b!1244665 m!1146921))

(declare-fun m!1146923 () Bool)

(assert (=> b!1244666 m!1146923))

(assert (=> b!1244536 d!137119))

(declare-fun d!137125 () Bool)

(declare-fun lt!562765 () Bool)

(assert (=> d!137125 (= lt!562765 (select (content!617 Nil!27592) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!705574 () Bool)

(assert (=> d!137125 (= lt!562765 e!705574)))

(declare-fun res!830350 () Bool)

(assert (=> d!137125 (=> (not res!830350) (not e!705574))))

(assert (=> d!137125 (= res!830350 ((_ is Cons!27591) Nil!27592))))

(assert (=> d!137125 (= (contains!7446 Nil!27592 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562765)))

(declare-fun b!1244667 () Bool)

(declare-fun e!705573 () Bool)

(assert (=> b!1244667 (= e!705574 e!705573)))

(declare-fun res!830349 () Bool)

(assert (=> b!1244667 (=> res!830349 e!705573)))

(assert (=> b!1244667 (= res!830349 (= (h!28800 Nil!27592) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1244668 () Bool)

(assert (=> b!1244668 (= e!705573 (contains!7446 (t!41071 Nil!27592) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137125 res!830350) b!1244667))

(assert (= (and b!1244667 (not res!830349)) b!1244668))

(assert (=> d!137125 m!1146887))

(declare-fun m!1146925 () Bool)

(assert (=> d!137125 m!1146925))

(declare-fun m!1146927 () Bool)

(assert (=> b!1244668 m!1146927))

(assert (=> b!1244541 d!137125))

(check-sat (not b!1244598) (not bm!61430) (not b!1244668) (not b!1244650) (not bm!61421) (not b!1244666) (not b!1244635) (not b!1244597) (not b!1244608) (not b!1244653) (not d!137085) (not b!1244665) (not d!137125) (not b!1244605) (not b!1244607) (not d!137097) (not b!1244595) (not bm!61423) (not b!1244652) (not d!137107))
(check-sat)
