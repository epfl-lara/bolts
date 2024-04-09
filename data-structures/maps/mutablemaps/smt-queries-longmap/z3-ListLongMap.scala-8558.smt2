; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104538 () Bool)

(assert start!104538)

(declare-fun res!832070 () Bool)

(declare-fun e!707139 () Bool)

(assert (=> start!104538 (=> (not res!832070) (not e!707139))))

(declare-datatypes ((array!80254 0))(
  ( (array!80255 (arr!38698 (Array (_ BitVec 32) (_ BitVec 64))) (size!39235 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80254)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104538 (= res!832070 (and (bvslt (size!39235 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39235 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39235 a!3892))))))

(assert (=> start!104538 e!707139))

(declare-fun array_inv!29474 (array!80254) Bool)

(assert (=> start!104538 (array_inv!29474 a!3892)))

(assert (=> start!104538 true))

(declare-fun b!1246736 () Bool)

(declare-fun res!832072 () Bool)

(assert (=> b!1246736 (=> (not res!832072) (not e!707139))))

(declare-datatypes ((List!27679 0))(
  ( (Nil!27676) (Cons!27675 (h!28884 (_ BitVec 64)) (t!41155 List!27679)) )
))
(declare-fun arrayNoDuplicates!0 (array!80254 (_ BitVec 32) List!27679) Bool)

(assert (=> b!1246736 (= res!832072 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27676))))

(declare-fun b!1246737 () Bool)

(declare-fun res!832071 () Bool)

(assert (=> b!1246737 (=> (not res!832071) (not e!707139))))

(assert (=> b!1246737 (= res!832071 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39235 a!3892)) (= newFrom!287 (size!39235 a!3892))))))

(declare-fun b!1246738 () Bool)

(assert (=> b!1246738 (= e!707139 (not (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27676)))))

(assert (= (and start!104538 res!832070) b!1246736))

(assert (= (and b!1246736 res!832072) b!1246737))

(assert (= (and b!1246737 res!832071) b!1246738))

(declare-fun m!1148507 () Bool)

(assert (=> start!104538 m!1148507))

(declare-fun m!1148509 () Bool)

(assert (=> b!1246736 m!1148509))

(declare-fun m!1148511 () Bool)

(assert (=> b!1246738 m!1148511))

(check-sat (not b!1246738) (not start!104538) (not b!1246736))
(check-sat)
(get-model)

(declare-fun d!137607 () Bool)

(declare-fun res!832096 () Bool)

(declare-fun e!707164 () Bool)

(assert (=> d!137607 (=> res!832096 e!707164)))

(assert (=> d!137607 (= res!832096 (bvsge newFrom!287 (size!39235 a!3892)))))

(assert (=> d!137607 (= (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27676) e!707164)))

(declare-fun b!1246768 () Bool)

(declare-fun e!707165 () Bool)

(assert (=> b!1246768 (= e!707164 e!707165)))

(declare-fun res!832095 () Bool)

(assert (=> b!1246768 (=> (not res!832095) (not e!707165))))

(declare-fun e!707163 () Bool)

(assert (=> b!1246768 (= res!832095 (not e!707163))))

(declare-fun res!832094 () Bool)

(assert (=> b!1246768 (=> (not res!832094) (not e!707163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246768 (= res!832094 (validKeyInArray!0 (select (arr!38698 a!3892) newFrom!287)))))

(declare-fun b!1246769 () Bool)

(declare-fun e!707166 () Bool)

(assert (=> b!1246769 (= e!707165 e!707166)))

(declare-fun c!122024 () Bool)

(assert (=> b!1246769 (= c!122024 (validKeyInArray!0 (select (arr!38698 a!3892) newFrom!287)))))

(declare-fun b!1246770 () Bool)

(declare-fun call!61540 () Bool)

(assert (=> b!1246770 (= e!707166 call!61540)))

(declare-fun b!1246771 () Bool)

(declare-fun contains!7479 (List!27679 (_ BitVec 64)) Bool)

(assert (=> b!1246771 (= e!707163 (contains!7479 Nil!27676 (select (arr!38698 a!3892) newFrom!287)))))

(declare-fun b!1246772 () Bool)

(assert (=> b!1246772 (= e!707166 call!61540)))

(declare-fun bm!61537 () Bool)

(assert (=> bm!61537 (= call!61540 (arrayNoDuplicates!0 a!3892 (bvadd newFrom!287 #b00000000000000000000000000000001) (ite c!122024 (Cons!27675 (select (arr!38698 a!3892) newFrom!287) Nil!27676) Nil!27676)))))

(assert (= (and d!137607 (not res!832096)) b!1246768))

(assert (= (and b!1246768 res!832094) b!1246771))

(assert (= (and b!1246768 res!832095) b!1246769))

(assert (= (and b!1246769 c!122024) b!1246772))

(assert (= (and b!1246769 (not c!122024)) b!1246770))

(assert (= (or b!1246772 b!1246770) bm!61537))

(declare-fun m!1148519 () Bool)

(assert (=> b!1246768 m!1148519))

(assert (=> b!1246768 m!1148519))

(declare-fun m!1148521 () Bool)

(assert (=> b!1246768 m!1148521))

(assert (=> b!1246769 m!1148519))

(assert (=> b!1246769 m!1148519))

(assert (=> b!1246769 m!1148521))

(assert (=> b!1246771 m!1148519))

(assert (=> b!1246771 m!1148519))

(declare-fun m!1148523 () Bool)

(assert (=> b!1246771 m!1148523))

(assert (=> bm!61537 m!1148519))

(declare-fun m!1148525 () Bool)

(assert (=> bm!61537 m!1148525))

(assert (=> b!1246738 d!137607))

(declare-fun d!137613 () Bool)

(assert (=> d!137613 (= (array_inv!29474 a!3892) (bvsge (size!39235 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104538 d!137613))

(declare-fun d!137615 () Bool)

(declare-fun res!832108 () Bool)

(declare-fun e!707180 () Bool)

(assert (=> d!137615 (=> res!832108 e!707180)))

(assert (=> d!137615 (= res!832108 (bvsge from!3270 (size!39235 a!3892)))))

(assert (=> d!137615 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27676) e!707180)))

(declare-fun b!1246788 () Bool)

(declare-fun e!707181 () Bool)

(assert (=> b!1246788 (= e!707180 e!707181)))

(declare-fun res!832107 () Bool)

(assert (=> b!1246788 (=> (not res!832107) (not e!707181))))

(declare-fun e!707179 () Bool)

(assert (=> b!1246788 (= res!832107 (not e!707179))))

(declare-fun res!832106 () Bool)

(assert (=> b!1246788 (=> (not res!832106) (not e!707179))))

(assert (=> b!1246788 (= res!832106 (validKeyInArray!0 (select (arr!38698 a!3892) from!3270)))))

(declare-fun b!1246789 () Bool)

(declare-fun e!707182 () Bool)

(assert (=> b!1246789 (= e!707181 e!707182)))

(declare-fun c!122028 () Bool)

(assert (=> b!1246789 (= c!122028 (validKeyInArray!0 (select (arr!38698 a!3892) from!3270)))))

(declare-fun b!1246790 () Bool)

(declare-fun call!61544 () Bool)

(assert (=> b!1246790 (= e!707182 call!61544)))

(declare-fun b!1246791 () Bool)

(assert (=> b!1246791 (= e!707179 (contains!7479 Nil!27676 (select (arr!38698 a!3892) from!3270)))))

(declare-fun b!1246792 () Bool)

(assert (=> b!1246792 (= e!707182 call!61544)))

(declare-fun bm!61541 () Bool)

(assert (=> bm!61541 (= call!61544 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!122028 (Cons!27675 (select (arr!38698 a!3892) from!3270) Nil!27676) Nil!27676)))))

(assert (= (and d!137615 (not res!832108)) b!1246788))

(assert (= (and b!1246788 res!832106) b!1246791))

(assert (= (and b!1246788 res!832107) b!1246789))

(assert (= (and b!1246789 c!122028) b!1246792))

(assert (= (and b!1246789 (not c!122028)) b!1246790))

(assert (= (or b!1246792 b!1246790) bm!61541))

(declare-fun m!1148529 () Bool)

(assert (=> b!1246788 m!1148529))

(assert (=> b!1246788 m!1148529))

(declare-fun m!1148533 () Bool)

(assert (=> b!1246788 m!1148533))

(assert (=> b!1246789 m!1148529))

(assert (=> b!1246789 m!1148529))

(assert (=> b!1246789 m!1148533))

(assert (=> b!1246791 m!1148529))

(assert (=> b!1246791 m!1148529))

(declare-fun m!1148537 () Bool)

(assert (=> b!1246791 m!1148537))

(assert (=> bm!61541 m!1148529))

(declare-fun m!1148541 () Bool)

(assert (=> bm!61541 m!1148541))

(assert (=> b!1246736 d!137615))

(check-sat (not b!1246788) (not bm!61541) (not b!1246768) (not bm!61537) (not b!1246771) (not b!1246791) (not b!1246769) (not b!1246789))
(check-sat)
