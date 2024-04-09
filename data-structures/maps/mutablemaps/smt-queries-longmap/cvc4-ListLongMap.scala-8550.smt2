; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104426 () Bool)

(assert start!104426)

(declare-fun b!1246131 () Bool)

(declare-fun res!831639 () Bool)

(declare-fun e!706717 () Bool)

(assert (=> b!1246131 (=> (not res!831639) (not e!706717))))

(declare-datatypes ((array!80202 0))(
  ( (array!80203 (arr!38675 (Array (_ BitVec 32) (_ BitVec 64))) (size!39212 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80202)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1246131 (= res!831639 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39212 a!3892)) (not (= newFrom!287 (size!39212 a!3892)))))))

(declare-fun b!1246132 () Bool)

(declare-fun res!831645 () Bool)

(declare-fun e!706715 () Bool)

(assert (=> b!1246132 (=> (not res!831645) (not e!706715))))

(declare-datatypes ((List!27656 0))(
  ( (Nil!27653) (Cons!27652 (h!28861 (_ BitVec 64)) (t!41132 List!27656)) )
))
(declare-fun lt!562972 () List!27656)

(declare-fun contains!7474 (List!27656 (_ BitVec 64)) Bool)

(assert (=> b!1246132 (= res!831645 (not (contains!7474 lt!562972 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1246134 () Bool)

(declare-fun res!831647 () Bool)

(assert (=> b!1246134 (=> (not res!831647) (not e!706715))))

(assert (=> b!1246134 (= res!831647 (not (contains!7474 Nil!27653 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1246135 () Bool)

(declare-fun res!831642 () Bool)

(assert (=> b!1246135 (=> (not res!831642) (not e!706715))))

(assert (=> b!1246135 (= res!831642 (not (contains!7474 Nil!27653 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1246136 () Bool)

(declare-fun res!831643 () Bool)

(assert (=> b!1246136 (=> (not res!831643) (not e!706717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246136 (= res!831643 (validKeyInArray!0 (select (arr!38675 a!3892) from!3270)))))

(declare-fun b!1246137 () Bool)

(assert (=> b!1246137 (= e!706717 e!706715)))

(declare-fun res!831644 () Bool)

(assert (=> b!1246137 (=> (not res!831644) (not e!706715))))

(assert (=> b!1246137 (= res!831644 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1246137 (= lt!562972 (Cons!27652 (select (arr!38675 a!3892) from!3270) Nil!27653))))

(declare-fun b!1246138 () Bool)

(declare-fun res!831640 () Bool)

(assert (=> b!1246138 (=> (not res!831640) (not e!706715))))

(assert (=> b!1246138 (= res!831640 (not (contains!7474 lt!562972 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1246133 () Bool)

(declare-fun res!831641 () Bool)

(assert (=> b!1246133 (=> (not res!831641) (not e!706715))))

(declare-fun noDuplicate!2064 (List!27656) Bool)

(assert (=> b!1246133 (= res!831641 (noDuplicate!2064 lt!562972))))

(declare-fun res!831649 () Bool)

(assert (=> start!104426 (=> (not res!831649) (not e!706717))))

(assert (=> start!104426 (= res!831649 (and (bvslt (size!39212 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39212 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39212 a!3892))))))

(assert (=> start!104426 e!706717))

(declare-fun array_inv!29451 (array!80202) Bool)

(assert (=> start!104426 (array_inv!29451 a!3892)))

(assert (=> start!104426 true))

(declare-fun b!1246139 () Bool)

(declare-fun res!831646 () Bool)

(assert (=> b!1246139 (=> (not res!831646) (not e!706715))))

(declare-fun subseq!658 (List!27656 List!27656) Bool)

(assert (=> b!1246139 (= res!831646 (subseq!658 Nil!27653 lt!562972))))

(declare-fun b!1246140 () Bool)

(declare-fun res!831648 () Bool)

(assert (=> b!1246140 (=> (not res!831648) (not e!706717))))

(declare-fun arrayNoDuplicates!0 (array!80202 (_ BitVec 32) List!27656) Bool)

(assert (=> b!1246140 (= res!831648 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27653))))

(declare-fun b!1246141 () Bool)

(assert (=> b!1246141 (= e!706715 (not (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562972)))))

(declare-datatypes ((Unit!41342 0))(
  ( (Unit!41343) )
))
(declare-fun lt!562973 () Unit!41342)

(declare-fun noDuplicateSubseq!109 (List!27656 List!27656) Unit!41342)

(assert (=> b!1246141 (= lt!562973 (noDuplicateSubseq!109 Nil!27653 lt!562972))))

(assert (= (and start!104426 res!831649) b!1246140))

(assert (= (and b!1246140 res!831648) b!1246131))

(assert (= (and b!1246131 res!831639) b!1246136))

(assert (= (and b!1246136 res!831643) b!1246137))

(assert (= (and b!1246137 res!831644) b!1246133))

(assert (= (and b!1246133 res!831641) b!1246138))

(assert (= (and b!1246138 res!831640) b!1246132))

(assert (= (and b!1246132 res!831645) b!1246134))

(assert (= (and b!1246134 res!831647) b!1246135))

(assert (= (and b!1246135 res!831642) b!1246139))

(assert (= (and b!1246139 res!831646) b!1246141))

(declare-fun m!1148039 () Bool)

(assert (=> b!1246138 m!1148039))

(declare-fun m!1148041 () Bool)

(assert (=> b!1246134 m!1148041))

(declare-fun m!1148043 () Bool)

(assert (=> start!104426 m!1148043))

(declare-fun m!1148045 () Bool)

(assert (=> b!1246132 m!1148045))

(declare-fun m!1148047 () Bool)

(assert (=> b!1246135 m!1148047))

(declare-fun m!1148049 () Bool)

(assert (=> b!1246141 m!1148049))

(declare-fun m!1148051 () Bool)

(assert (=> b!1246141 m!1148051))

(declare-fun m!1148053 () Bool)

(assert (=> b!1246137 m!1148053))

(declare-fun m!1148055 () Bool)

(assert (=> b!1246140 m!1148055))

(declare-fun m!1148057 () Bool)

(assert (=> b!1246133 m!1148057))

(declare-fun m!1148059 () Bool)

(assert (=> b!1246139 m!1148059))

(assert (=> b!1246136 m!1148053))

(assert (=> b!1246136 m!1148053))

(declare-fun m!1148061 () Bool)

(assert (=> b!1246136 m!1148061))

(push 1)

(assert (not b!1246141))

(assert (not b!1246140))

(assert (not b!1246136))

(assert (not b!1246139))

(assert (not b!1246134))

(assert (not start!104426))

(assert (not b!1246135))

(assert (not b!1246138))

(assert (not b!1246133))

(assert (not b!1246132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137503 () Bool)

(declare-fun lt!562979 () Bool)

(declare-fun content!637 (List!27656) (Set (_ BitVec 64)))

(assert (=> d!137503 (= lt!562979 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!637 Nil!27653)))))

(declare-fun e!706748 () Bool)

(assert (=> d!137503 (= lt!562979 e!706748)))

(declare-fun res!831676 () Bool)

(assert (=> d!137503 (=> (not res!831676) (not e!706748))))

(assert (=> d!137503 (= res!831676 (is-Cons!27652 Nil!27653))))

(assert (=> d!137503 (= (contains!7474 Nil!27653 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562979)))

(declare-fun b!1246177 () Bool)

(declare-fun e!706749 () Bool)

(assert (=> b!1246177 (= e!706748 e!706749)))

(declare-fun res!831675 () Bool)

(assert (=> b!1246177 (=> res!831675 e!706749)))

(assert (=> b!1246177 (= res!831675 (= (h!28861 Nil!27653) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246178 () Bool)

(assert (=> b!1246178 (= e!706749 (contains!7474 (t!41132 Nil!27653) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137503 res!831676) b!1246177))

(assert (= (and b!1246177 (not res!831675)) b!1246178))

(declare-fun m!1148077 () Bool)

(assert (=> d!137503 m!1148077))

(declare-fun m!1148079 () Bool)

(assert (=> d!137503 m!1148079))

(declare-fun m!1148081 () Bool)

(assert (=> b!1246178 m!1148081))

(assert (=> b!1246135 d!137503))

(declare-fun d!137507 () Bool)

(assert (=> d!137507 (= (array_inv!29451 a!3892) (bvsge (size!39212 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104426 d!137507))

(declare-fun b!1246215 () Bool)

(declare-fun e!706782 () Bool)

(declare-fun e!706783 () Bool)

(assert (=> b!1246215 (= e!706782 e!706783)))

(declare-fun c!121942 () Bool)

(assert (=> b!1246215 (= c!121942 (validKeyInArray!0 (select (arr!38675 a!3892) from!3270)))))

(declare-fun b!1246216 () Bool)

(declare-fun e!706785 () Bool)

(assert (=> b!1246216 (= e!706785 e!706782)))

(declare-fun res!831707 () Bool)

(assert (=> b!1246216 (=> (not res!831707) (not e!706782))))

(declare-fun e!706784 () Bool)

(assert (=> b!1246216 (= res!831707 (not e!706784))))

(declare-fun res!831705 () Bool)

(assert (=> b!1246216 (=> (not res!831705) (not e!706784))))

(assert (=> b!1246216 (= res!831705 (validKeyInArray!0 (select (arr!38675 a!3892) from!3270)))))

(declare-fun call!61521 () Bool)

(declare-fun bm!61518 () Bool)

(assert (=> bm!61518 (= call!61521 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121942 (Cons!27652 (select (arr!38675 a!3892) from!3270) Nil!27653) Nil!27653)))))

(declare-fun b!1246217 () Bool)

(assert (=> b!1246217 (= e!706783 call!61521)))

(declare-fun b!1246218 () Bool)

(assert (=> b!1246218 (= e!706784 (contains!7474 Nil!27653 (select (arr!38675 a!3892) from!3270)))))

(declare-fun b!1246219 () Bool)

(assert (=> b!1246219 (= e!706783 call!61521)))

(declare-fun d!137509 () Bool)

(declare-fun res!831706 () Bool)

(assert (=> d!137509 (=> res!831706 e!706785)))

(assert (=> d!137509 (= res!831706 (bvsge from!3270 (size!39212 a!3892)))))

(assert (=> d!137509 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27653) e!706785)))

(assert (= (and d!137509 (not res!831706)) b!1246216))

(assert (= (and b!1246216 res!831705) b!1246218))

(assert (= (and b!1246216 res!831707) b!1246215))

(assert (= (and b!1246215 c!121942) b!1246219))

(assert (= (and b!1246215 (not c!121942)) b!1246217))

(assert (= (or b!1246219 b!1246217) bm!61518))

(assert (=> b!1246215 m!1148053))

(assert (=> b!1246215 m!1148053))

(assert (=> b!1246215 m!1148061))

(assert (=> b!1246216 m!1148053))

(assert (=> b!1246216 m!1148053))

(assert (=> b!1246216 m!1148061))

(assert (=> bm!61518 m!1148053))

(declare-fun m!1148107 () Bool)

(assert (=> bm!61518 m!1148107))

(assert (=> b!1246218 m!1148053))

(assert (=> b!1246218 m!1148053))

(declare-fun m!1148109 () Bool)

(assert (=> b!1246218 m!1148109))

(assert (=> b!1246140 d!137509))

(declare-fun b!1246224 () Bool)

(declare-fun e!706790 () Bool)

(declare-fun e!706791 () Bool)

(assert (=> b!1246224 (= e!706790 e!706791)))

(declare-fun c!121943 () Bool)

(assert (=> b!1246224 (= c!121943 (validKeyInArray!0 (select (arr!38675 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1246225 () Bool)

(declare-fun e!706793 () Bool)

(assert (=> b!1246225 (= e!706793 e!706790)))

(declare-fun res!831714 () Bool)

(assert (=> b!1246225 (=> (not res!831714) (not e!706790))))

(declare-fun e!706792 () Bool)

(assert (=> b!1246225 (= res!831714 (not e!706792))))

(declare-fun res!831712 () Bool)

(assert (=> b!1246225 (=> (not res!831712) (not e!706792))))

(assert (=> b!1246225 (= res!831712 (validKeyInArray!0 (select (arr!38675 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun call!61522 () Bool)

(declare-fun bm!61519 () Bool)

(assert (=> bm!61519 (= call!61522 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121943 (Cons!27652 (select (arr!38675 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) lt!562972) lt!562972)))))

(declare-fun b!1246226 () Bool)

(assert (=> b!1246226 (= e!706791 call!61522)))

(declare-fun b!1246227 () Bool)

(assert (=> b!1246227 (= e!706792 (contains!7474 lt!562972 (select (arr!38675 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1246228 () Bool)

(assert (=> b!1246228 (= e!706791 call!61522)))

(declare-fun d!137523 () Bool)

(declare-fun res!831713 () Bool)

(assert (=> d!137523 (=> res!831713 e!706793)))

(assert (=> d!137523 (= res!831713 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39212 a!3892)))))

(assert (=> d!137523 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562972) e!706793)))

(assert (= (and d!137523 (not res!831713)) b!1246225))

(assert (= (and b!1246225 res!831712) b!1246227))

(assert (= (and b!1246225 res!831714) b!1246224))

(assert (= (and b!1246224 c!121943) b!1246228))

(assert (= (and b!1246224 (not c!121943)) b!1246226))

(assert (= (or b!1246228 b!1246226) bm!61519))

(declare-fun m!1148115 () Bool)

(assert (=> b!1246224 m!1148115))

(assert (=> b!1246224 m!1148115))

(declare-fun m!1148117 () Bool)

(assert (=> b!1246224 m!1148117))

(assert (=> b!1246225 m!1148115))

(assert (=> b!1246225 m!1148115))

(assert (=> b!1246225 m!1148117))

(assert (=> bm!61519 m!1148115))

(declare-fun m!1148125 () Bool)

(assert (=> bm!61519 m!1148125))

(assert (=> b!1246227 m!1148115))

(assert (=> b!1246227 m!1148115))

(declare-fun m!1148127 () Bool)

(assert (=> b!1246227 m!1148127))

(assert (=> b!1246141 d!137523))

(declare-fun d!137529 () Bool)

(assert (=> d!137529 (noDuplicate!2064 Nil!27653)))

(declare-fun lt!562996 () Unit!41342)

(declare-fun choose!1854 (List!27656 List!27656) Unit!41342)

(assert (=> d!137529 (= lt!562996 (choose!1854 Nil!27653 lt!562972))))

(declare-fun e!706816 () Bool)

(assert (=> d!137529 e!706816))

(declare-fun res!831736 () Bool)

(assert (=> d!137529 (=> (not res!831736) (not e!706816))))

(assert (=> d!137529 (= res!831736 (subseq!658 Nil!27653 lt!562972))))

(assert (=> d!137529 (= (noDuplicateSubseq!109 Nil!27653 lt!562972) lt!562996)))

