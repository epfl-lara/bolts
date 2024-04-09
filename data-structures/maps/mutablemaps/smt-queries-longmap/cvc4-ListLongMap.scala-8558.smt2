; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104540 () Bool)

(assert start!104540)

(declare-fun res!832080 () Bool)

(declare-fun e!707146 () Bool)

(assert (=> start!104540 (=> (not res!832080) (not e!707146))))

(declare-datatypes ((array!80256 0))(
  ( (array!80257 (arr!38699 (Array (_ BitVec 32) (_ BitVec 64))) (size!39236 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80256)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104540 (= res!832080 (and (bvslt (size!39236 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39236 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39236 a!3892))))))

(assert (=> start!104540 e!707146))

(declare-fun array_inv!29475 (array!80256) Bool)

(assert (=> start!104540 (array_inv!29475 a!3892)))

(assert (=> start!104540 true))

(declare-fun b!1246745 () Bool)

(declare-fun res!832081 () Bool)

(assert (=> b!1246745 (=> (not res!832081) (not e!707146))))

(declare-datatypes ((List!27680 0))(
  ( (Nil!27677) (Cons!27676 (h!28885 (_ BitVec 64)) (t!41156 List!27680)) )
))
(declare-fun arrayNoDuplicates!0 (array!80256 (_ BitVec 32) List!27680) Bool)

(assert (=> b!1246745 (= res!832081 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27677))))

(declare-fun b!1246746 () Bool)

(declare-fun res!832079 () Bool)

(assert (=> b!1246746 (=> (not res!832079) (not e!707146))))

(assert (=> b!1246746 (= res!832079 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39236 a!3892)) (= newFrom!287 (size!39236 a!3892))))))

(declare-fun b!1246747 () Bool)

(assert (=> b!1246747 (= e!707146 (not (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27677)))))

(assert (= (and start!104540 res!832080) b!1246745))

(assert (= (and b!1246745 res!832081) b!1246746))

(assert (= (and b!1246746 res!832079) b!1246747))

(declare-fun m!1148513 () Bool)

(assert (=> start!104540 m!1148513))

(declare-fun m!1148515 () Bool)

(assert (=> b!1246745 m!1148515))

(declare-fun m!1148517 () Bool)

(assert (=> b!1246747 m!1148517))

(push 1)

(assert (not b!1246747))

(assert (not b!1246745))

(assert (not start!104540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1246798 () Bool)

(declare-fun e!707188 () Bool)

(declare-fun e!707187 () Bool)

(assert (=> b!1246798 (= e!707188 e!707187)))

(declare-fun res!832114 () Bool)

(assert (=> b!1246798 (=> (not res!832114) (not e!707187))))

(declare-fun e!707189 () Bool)

(assert (=> b!1246798 (= res!832114 (not e!707189))))

(declare-fun res!832112 () Bool)

(assert (=> b!1246798 (=> (not res!832112) (not e!707189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246798 (= res!832112 (validKeyInArray!0 (select (arr!38699 a!3892) newFrom!287)))))

(declare-fun d!137611 () Bool)

(declare-fun res!832113 () Bool)

(assert (=> d!137611 (=> res!832113 e!707188)))

(assert (=> d!137611 (= res!832113 (bvsge newFrom!287 (size!39236 a!3892)))))

(assert (=> d!137611 (= (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27677) e!707188)))

(declare-fun b!1246799 () Bool)

(declare-fun e!707190 () Bool)

(declare-fun call!61546 () Bool)

(assert (=> b!1246799 (= e!707190 call!61546)))

(declare-fun bm!61543 () Bool)

(declare-fun c!122030 () Bool)

(assert (=> bm!61543 (= call!61546 (arrayNoDuplicates!0 a!3892 (bvadd newFrom!287 #b00000000000000000000000000000001) (ite c!122030 (Cons!27676 (select (arr!38699 a!3892) newFrom!287) Nil!27677) Nil!27677)))))

(declare-fun b!1246800 () Bool)

(declare-fun contains!7480 (List!27680 (_ BitVec 64)) Bool)

(assert (=> b!1246800 (= e!707189 (contains!7480 Nil!27677 (select (arr!38699 a!3892) newFrom!287)))))

(declare-fun b!1246801 () Bool)

(assert (=> b!1246801 (= e!707190 call!61546)))

(declare-fun b!1246802 () Bool)

(assert (=> b!1246802 (= e!707187 e!707190)))

(assert (=> b!1246802 (= c!122030 (validKeyInArray!0 (select (arr!38699 a!3892) newFrom!287)))))

(assert (= (and d!137611 (not res!832113)) b!1246798))

(assert (= (and b!1246798 res!832112) b!1246800))

(assert (= (and b!1246798 res!832114) b!1246802))

(assert (= (and b!1246802 c!122030) b!1246799))

(assert (= (and b!1246802 (not c!122030)) b!1246801))

(assert (= (or b!1246799 b!1246801) bm!61543))

(declare-fun m!1148551 () Bool)

(assert (=> b!1246798 m!1148551))

(assert (=> b!1246798 m!1148551))

(declare-fun m!1148553 () Bool)

(assert (=> b!1246798 m!1148553))

(assert (=> bm!61543 m!1148551))

(declare-fun m!1148555 () Bool)

(assert (=> bm!61543 m!1148555))

(assert (=> b!1246800 m!1148551))

(assert (=> b!1246800 m!1148551))

(declare-fun m!1148557 () Bool)

(assert (=> b!1246800 m!1148557))

(assert (=> b!1246802 m!1148551))

(assert (=> b!1246802 m!1148551))

(assert (=> b!1246802 m!1148553))

(assert (=> b!1246747 d!137611))

(declare-fun b!1246803 () Bool)

(declare-fun e!707192 () Bool)

(declare-fun e!707191 () Bool)

(assert (=> b!1246803 (= e!707192 e!707191)))

(declare-fun res!832117 () Bool)

(assert (=> b!1246803 (=> (not res!832117) (not e!707191))))

(declare-fun e!707193 () Bool)

(assert (=> b!1246803 (= res!832117 (not e!707193))))

(declare-fun res!832115 () Bool)

(assert (=> b!1246803 (=> (not res!832115) (not e!707193))))

(assert (=> b!1246803 (= res!832115 (validKeyInArray!0 (select (arr!38699 a!3892) from!3270)))))

(declare-fun d!137621 () Bool)

(declare-fun res!832116 () Bool)

(assert (=> d!137621 (=> res!832116 e!707192)))

(assert (=> d!137621 (= res!832116 (bvsge from!3270 (size!39236 a!3892)))))

(assert (=> d!137621 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27677) e!707192)))

(declare-fun b!1246804 () Bool)

(declare-fun e!707194 () Bool)

(declare-fun call!61547 () Bool)

(assert (=> b!1246804 (= e!707194 call!61547)))

(declare-fun bm!61544 () Bool)

(declare-fun c!122031 () Bool)

(assert (=> bm!61544 (= call!61547 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!122031 (Cons!27676 (select (arr!38699 a!3892) from!3270) Nil!27677) Nil!27677)))))

(declare-fun b!1246805 () Bool)

(assert (=> b!1246805 (= e!707193 (contains!7480 Nil!27677 (select (arr!38699 a!3892) from!3270)))))

(declare-fun b!1246806 () Bool)

(assert (=> b!1246806 (= e!707194 call!61547)))

(declare-fun b!1246807 () Bool)

(assert (=> b!1246807 (= e!707191 e!707194)))

(assert (=> b!1246807 (= c!122031 (validKeyInArray!0 (select (arr!38699 a!3892) from!3270)))))

(assert (= (and d!137621 (not res!832116)) b!1246803))

(assert (= (and b!1246803 res!832115) b!1246805))

(assert (= (and b!1246803 res!832117) b!1246807))

(assert (= (and b!1246807 c!122031) b!1246804))

(assert (= (and b!1246807 (not c!122031)) b!1246806))

(assert (= (or b!1246804 b!1246806) bm!61544))

(declare-fun m!1148559 () Bool)

(assert (=> b!1246803 m!1148559))

(assert (=> b!1246803 m!1148559))

(declare-fun m!1148561 () Bool)

(assert (=> b!1246803 m!1148561))

(assert (=> bm!61544 m!1148559))

(declare-fun m!1148563 () Bool)

(assert (=> bm!61544 m!1148563))

(assert (=> b!1246805 m!1148559))

(assert (=> b!1246805 m!1148559))

(declare-fun m!1148565 () Bool)

(assert (=> b!1246805 m!1148565))

(assert (=> b!1246807 m!1148559))

(assert (=> b!1246807 m!1148559))

(assert (=> b!1246807 m!1148561))

(assert (=> b!1246745 d!137621))

(declare-fun d!137623 () Bool)

(assert (=> d!137623 (= (array_inv!29475 a!3892) (bvsge (size!39236 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104540 d!137623))

(push 1)

