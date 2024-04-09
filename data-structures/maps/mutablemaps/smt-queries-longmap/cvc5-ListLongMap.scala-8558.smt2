; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104536 () Bool)

(assert start!104536)

(declare-fun res!832062 () Bool)

(declare-fun e!707134 () Bool)

(assert (=> start!104536 (=> (not res!832062) (not e!707134))))

(declare-datatypes ((array!80252 0))(
  ( (array!80253 (arr!38697 (Array (_ BitVec 32) (_ BitVec 64))) (size!39234 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80252)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104536 (= res!832062 (and (bvslt (size!39234 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39234 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39234 a!3892))))))

(assert (=> start!104536 e!707134))

(declare-fun array_inv!29473 (array!80252) Bool)

(assert (=> start!104536 (array_inv!29473 a!3892)))

(assert (=> start!104536 true))

(declare-fun b!1246727 () Bool)

(declare-fun res!832061 () Bool)

(assert (=> b!1246727 (=> (not res!832061) (not e!707134))))

(declare-datatypes ((List!27678 0))(
  ( (Nil!27675) (Cons!27674 (h!28883 (_ BitVec 64)) (t!41154 List!27678)) )
))
(declare-fun arrayNoDuplicates!0 (array!80252 (_ BitVec 32) List!27678) Bool)

(assert (=> b!1246727 (= res!832061 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27675))))

(declare-fun b!1246728 () Bool)

(declare-fun res!832063 () Bool)

(assert (=> b!1246728 (=> (not res!832063) (not e!707134))))

(assert (=> b!1246728 (= res!832063 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39234 a!3892)) (= newFrom!287 (size!39234 a!3892))))))

(declare-fun b!1246729 () Bool)

(assert (=> b!1246729 (= e!707134 (not (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27675)))))

(assert (= (and start!104536 res!832062) b!1246727))

(assert (= (and b!1246727 res!832061) b!1246728))

(assert (= (and b!1246728 res!832063) b!1246729))

(declare-fun m!1148501 () Bool)

(assert (=> start!104536 m!1148501))

(declare-fun m!1148503 () Bool)

(assert (=> b!1246727 m!1148503))

(declare-fun m!1148505 () Bool)

(assert (=> b!1246729 m!1148505))

(push 1)

(assert (not b!1246729))

(assert (not b!1246727))

(assert (not start!104536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1246783 () Bool)

(declare-fun e!707177 () Bool)

(declare-fun contains!7478 (List!27678 (_ BitVec 64)) Bool)

(assert (=> b!1246783 (= e!707177 (contains!7478 Nil!27675 (select (arr!38697 a!3892) newFrom!287)))))

(declare-fun bm!61540 () Bool)

(declare-fun c!122027 () Bool)

(declare-fun call!61543 () Bool)

(assert (=> bm!61540 (= call!61543 (arrayNoDuplicates!0 a!3892 (bvadd newFrom!287 #b00000000000000000000000000000001) (ite c!122027 (Cons!27674 (select (arr!38697 a!3892) newFrom!287) Nil!27675) Nil!27675)))))

(declare-fun b!1246785 () Bool)

(declare-fun e!707175 () Bool)

(declare-fun e!707178 () Bool)

(assert (=> b!1246785 (= e!707175 e!707178)))

(declare-fun res!832103 () Bool)

(assert (=> b!1246785 (=> (not res!832103) (not e!707178))))

(assert (=> b!1246785 (= res!832103 (not e!707177))))

(declare-fun res!832105 () Bool)

(assert (=> b!1246785 (=> (not res!832105) (not e!707177))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246785 (= res!832105 (validKeyInArray!0 (select (arr!38697 a!3892) newFrom!287)))))

(declare-fun b!1246786 () Bool)

(declare-fun e!707176 () Bool)

(assert (=> b!1246786 (= e!707176 call!61543)))

(declare-fun b!1246787 () Bool)

(assert (=> b!1246787 (= e!707176 call!61543)))

(declare-fun b!1246784 () Bool)

(assert (=> b!1246784 (= e!707178 e!707176)))

(assert (=> b!1246784 (= c!122027 (validKeyInArray!0 (select (arr!38697 a!3892) newFrom!287)))))

(declare-fun d!137609 () Bool)

(declare-fun res!832104 () Bool)

(assert (=> d!137609 (=> res!832104 e!707175)))

(assert (=> d!137609 (= res!832104 (bvsge newFrom!287 (size!39234 a!3892)))))

(assert (=> d!137609 (= (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27675) e!707175)))

(assert (= (and d!137609 (not res!832104)) b!1246785))

(assert (= (and b!1246785 res!832105) b!1246783))

(assert (= (and b!1246785 res!832103) b!1246784))

(assert (= (and b!1246784 c!122027) b!1246786))

(assert (= (and b!1246784 (not c!122027)) b!1246787))

(assert (= (or b!1246786 b!1246787) bm!61540))

(declare-fun m!1148527 () Bool)

(assert (=> b!1246783 m!1148527))

(assert (=> b!1246783 m!1148527))

(declare-fun m!1148531 () Bool)

(assert (=> b!1246783 m!1148531))

(assert (=> bm!61540 m!1148527))

(declare-fun m!1148535 () Bool)

(assert (=> bm!61540 m!1148535))

(assert (=> b!1246785 m!1148527))

(assert (=> b!1246785 m!1148527))

(declare-fun m!1148539 () Bool)

(assert (=> b!1246785 m!1148539))

(assert (=> b!1246784 m!1148527))

(assert (=> b!1246784 m!1148527))

(assert (=> b!1246784 m!1148539))

(assert (=> b!1246729 d!137609))

(declare-fun b!1246793 () Bool)

(declare-fun e!707185 () Bool)

(assert (=> b!1246793 (= e!707185 (contains!7478 Nil!27675 (select (arr!38697 a!3892) from!3270)))))

(declare-fun bm!61542 () Bool)

(declare-fun call!61545 () Bool)

(declare-fun c!122029 () Bool)

(assert (=> bm!61542 (= call!61545 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!122029 (Cons!27674 (select (arr!38697 a!3892) from!3270) Nil!27675) Nil!27675)))))

(declare-fun b!1246795 () Bool)

(declare-fun e!707183 () Bool)

(declare-fun e!707186 () Bool)

(assert (=> b!1246795 (= e!707183 e!707186)))

(declare-fun res!832109 () Bool)

(assert (=> b!1246795 (=> (not res!832109) (not e!707186))))

(assert (=> b!1246795 (= res!832109 (not e!707185))))

(declare-fun res!832111 () Bool)

(assert (=> b!1246795 (=> (not res!832111) (not e!707185))))

(assert (=> b!1246795 (= res!832111 (validKeyInArray!0 (select (arr!38697 a!3892) from!3270)))))

(declare-fun b!1246796 () Bool)

(declare-fun e!707184 () Bool)

(assert (=> b!1246796 (= e!707184 call!61545)))

(declare-fun b!1246797 () Bool)

(assert (=> b!1246797 (= e!707184 call!61545)))

(declare-fun b!1246794 () Bool)

(assert (=> b!1246794 (= e!707186 e!707184)))

(assert (=> b!1246794 (= c!122029 (validKeyInArray!0 (select (arr!38697 a!3892) from!3270)))))

(declare-fun d!137617 () Bool)

(declare-fun res!832110 () Bool)

(assert (=> d!137617 (=> res!832110 e!707183)))

(assert (=> d!137617 (= res!832110 (bvsge from!3270 (size!39234 a!3892)))))

(assert (=> d!137617 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27675) e!707183)))

(assert (= (and d!137617 (not res!832110)) b!1246795))

(assert (= (and b!1246795 res!832111) b!1246793))

(assert (= (and b!1246795 res!832109) b!1246794))

(assert (= (and b!1246794 c!122029) b!1246796))

(assert (= (and b!1246794 (not c!122029)) b!1246797))

(assert (= (or b!1246796 b!1246797) bm!61542))

(declare-fun m!1148543 () Bool)

(assert (=> b!1246793 m!1148543))

(assert (=> b!1246793 m!1148543))

(declare-fun m!1148545 () Bool)

(assert (=> b!1246793 m!1148545))

(assert (=> bm!61542 m!1148543))

(declare-fun m!1148547 () Bool)

(assert (=> bm!61542 m!1148547))

(assert (=> b!1246795 m!1148543))

(assert (=> b!1246795 m!1148543))

(declare-fun m!1148549 () Bool)

(assert (=> b!1246795 m!1148549))

(assert (=> b!1246794 m!1148543))

(assert (=> b!1246794 m!1148543))

(assert (=> b!1246794 m!1148549))

(assert (=> b!1246727 d!137617))

(declare-fun d!137619 () Bool)

(assert (=> d!137619 (= (array_inv!29473 a!3892) (bvsge (size!39234 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104536 d!137619))

(push 1)

(assert (not b!1246793))

(assert (not bm!61542))

(assert (not b!1246784))

(assert (not b!1246783))

(assert (not b!1246794))

(assert (not bm!61540))

(assert (not b!1246795))

(assert (not b!1246785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

