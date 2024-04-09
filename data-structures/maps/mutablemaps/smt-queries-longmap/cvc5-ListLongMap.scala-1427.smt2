; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27598 () Bool)

(assert start!27598)

(declare-fun b!285033 () Bool)

(declare-fun res!147585 () Bool)

(declare-fun e!180698 () Bool)

(assert (=> b!285033 (=> (not res!147585) (not e!180698))))

(declare-datatypes ((array!14237 0))(
  ( (array!14238 (arr!6757 (Array (_ BitVec 32) (_ BitVec 64))) (size!7109 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14237)

(declare-datatypes ((List!4586 0))(
  ( (Nil!4583) (Cons!4582 (h!5255 (_ BitVec 64)) (t!9676 List!4586)) )
))
(declare-fun arrayNoDuplicates!0 (array!14237 (_ BitVec 32) List!4586) Bool)

(assert (=> b!285033 (= res!147585 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4583))))

(declare-fun b!285034 () Bool)

(declare-fun res!147583 () Bool)

(declare-fun e!180697 () Bool)

(assert (=> b!285034 (=> (not res!147583) (not e!180697))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!285034 (= res!147583 (and (bvslt startIndex!26 (bvsub (size!7109 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!285035 () Bool)

(declare-fun res!147588 () Bool)

(declare-fun e!180699 () Bool)

(assert (=> b!285035 (=> (not res!147588) (not e!180699))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14237 (_ BitVec 32)) Bool)

(assert (=> b!285035 (= res!147588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!285036 () Bool)

(assert (=> b!285036 (= e!180699 e!180697)))

(declare-fun res!147581 () Bool)

(assert (=> b!285036 (=> (not res!147581) (not e!180697))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!285036 (= res!147581 (not (= startIndex!26 i!1267)))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!140708 () array!14237)

(assert (=> b!285036 (= lt!140708 (array!14238 (store (arr!6757 a!3325) i!1267 k!2581) (size!7109 a!3325)))))

(declare-fun b!285037 () Bool)

(declare-fun res!147587 () Bool)

(assert (=> b!285037 (=> (not res!147587) (not e!180697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285037 (= res!147587 (not (validKeyInArray!0 (select (arr!6757 a!3325) startIndex!26))))))

(declare-fun b!285038 () Bool)

(declare-fun res!147579 () Bool)

(assert (=> b!285038 (=> (not res!147579) (not e!180698))))

(assert (=> b!285038 (= res!147579 (and (= (size!7109 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7109 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7109 a!3325))))))

(declare-fun b!285039 () Bool)

(assert (=> b!285039 (= e!180697 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140708 mask!3868)))))

(assert (=> b!285039 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!140708 mask!3868)))

(declare-datatypes ((Unit!9037 0))(
  ( (Unit!9038) )
))
(declare-fun lt!140706 () Unit!9037)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14237 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9037)

(assert (=> b!285039 (= lt!140706 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!285040 () Bool)

(declare-fun res!147580 () Bool)

(assert (=> b!285040 (=> (not res!147580) (not e!180698))))

(declare-fun arrayContainsKey!0 (array!14237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285040 (= res!147580 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!285041 () Bool)

(assert (=> b!285041 (= e!180698 e!180699)))

(declare-fun res!147586 () Bool)

(assert (=> b!285041 (=> (not res!147586) (not e!180699))))

(declare-datatypes ((SeekEntryResult!1926 0))(
  ( (MissingZero!1926 (index!9874 (_ BitVec 32))) (Found!1926 (index!9875 (_ BitVec 32))) (Intermediate!1926 (undefined!2738 Bool) (index!9876 (_ BitVec 32)) (x!28045 (_ BitVec 32))) (Undefined!1926) (MissingVacant!1926 (index!9877 (_ BitVec 32))) )
))
(declare-fun lt!140707 () SeekEntryResult!1926)

(assert (=> b!285041 (= res!147586 (or (= lt!140707 (MissingZero!1926 i!1267)) (= lt!140707 (MissingVacant!1926 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14237 (_ BitVec 32)) SeekEntryResult!1926)

(assert (=> b!285041 (= lt!140707 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!285042 () Bool)

(declare-fun res!147584 () Bool)

(assert (=> b!285042 (=> (not res!147584) (not e!180698))))

(assert (=> b!285042 (= res!147584 (validKeyInArray!0 k!2581))))

(declare-fun res!147582 () Bool)

(assert (=> start!27598 (=> (not res!147582) (not e!180698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27598 (= res!147582 (validMask!0 mask!3868))))

(assert (=> start!27598 e!180698))

(declare-fun array_inv!4711 (array!14237) Bool)

(assert (=> start!27598 (array_inv!4711 a!3325)))

(assert (=> start!27598 true))

(assert (= (and start!27598 res!147582) b!285038))

(assert (= (and b!285038 res!147579) b!285042))

(assert (= (and b!285042 res!147584) b!285033))

(assert (= (and b!285033 res!147585) b!285040))

(assert (= (and b!285040 res!147580) b!285041))

(assert (= (and b!285041 res!147586) b!285035))

(assert (= (and b!285035 res!147588) b!285036))

(assert (= (and b!285036 res!147581) b!285037))

(assert (= (and b!285037 res!147587) b!285034))

(assert (= (and b!285034 res!147583) b!285039))

(declare-fun m!299935 () Bool)

(assert (=> b!285035 m!299935))

(declare-fun m!299937 () Bool)

(assert (=> b!285042 m!299937))

(declare-fun m!299939 () Bool)

(assert (=> b!285039 m!299939))

(declare-fun m!299941 () Bool)

(assert (=> b!285039 m!299941))

(declare-fun m!299943 () Bool)

(assert (=> b!285039 m!299943))

(declare-fun m!299945 () Bool)

(assert (=> b!285040 m!299945))

(declare-fun m!299947 () Bool)

(assert (=> b!285037 m!299947))

(assert (=> b!285037 m!299947))

(declare-fun m!299949 () Bool)

(assert (=> b!285037 m!299949))

(declare-fun m!299951 () Bool)

(assert (=> start!27598 m!299951))

(declare-fun m!299953 () Bool)

(assert (=> start!27598 m!299953))

(declare-fun m!299955 () Bool)

(assert (=> b!285041 m!299955))

(declare-fun m!299957 () Bool)

(assert (=> b!285036 m!299957))

(declare-fun m!299959 () Bool)

(assert (=> b!285033 m!299959))

(push 1)

(assert (not b!285037))

(assert (not b!285042))

(assert (not b!285035))

(assert (not b!285039))

(assert (not b!285033))

(assert (not b!285041))

(assert (not start!27598))

(assert (not b!285040))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65611 () Bool)

(declare-fun res!147662 () Bool)

(declare-fun e!180741 () Bool)

(assert (=> d!65611 (=> res!147662 e!180741)))

(assert (=> d!65611 (= res!147662 (= (select (arr!6757 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!65611 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!180741)))

(declare-fun b!285122 () Bool)

(declare-fun e!180742 () Bool)

(assert (=> b!285122 (= e!180741 e!180742)))

(declare-fun res!147663 () Bool)

(assert (=> b!285122 (=> (not res!147663) (not e!180742))))

(assert (=> b!285122 (= res!147663 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7109 a!3325)))))

(declare-fun b!285123 () Bool)

(assert (=> b!285123 (= e!180742 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65611 (not res!147662)) b!285122))

(assert (= (and b!285122 res!147663) b!285123))

(declare-fun m!300021 () Bool)

(assert (=> d!65611 m!300021))

(declare-fun m!300023 () Bool)

(assert (=> b!285123 m!300023))

(assert (=> b!285040 d!65611))

(declare-fun b!285156 () Bool)

(declare-fun e!180771 () Bool)

(declare-fun call!25541 () Bool)

(assert (=> b!285156 (= e!180771 call!25541)))

(declare-fun b!285157 () Bool)

(declare-fun e!180770 () Bool)

(assert (=> b!285157 (= e!180770 call!25541)))

(declare-fun bm!25538 () Bool)

(assert (=> bm!25538 (= call!25541 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!140708 mask!3868))))

(declare-fun b!285159 () Bool)

(declare-fun e!180772 () Bool)

(assert (=> b!285159 (= e!180772 e!180771)))

(declare-fun c!46289 () Bool)

(assert (=> b!285159 (= c!46289 (validKeyInArray!0 (select (arr!6757 lt!140708) startIndex!26)))))

(declare-fun d!65613 () Bool)

(declare-fun res!147686 () Bool)

(assert (=> d!65613 (=> res!147686 e!180772)))

(assert (=> d!65613 (= res!147686 (bvsge startIndex!26 (size!7109 lt!140708)))))

(assert (=> d!65613 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140708 mask!3868) e!180772)))

(declare-fun b!285158 () Bool)

(assert (=> b!285158 (= e!180771 e!180770)))

(declare-fun lt!140742 () (_ BitVec 64))

(assert (=> b!285158 (= lt!140742 (select (arr!6757 lt!140708) startIndex!26))))

(declare-fun lt!140744 () Unit!9037)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14237 (_ BitVec 64) (_ BitVec 32)) Unit!9037)

(assert (=> b!285158 (= lt!140744 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140708 lt!140742 startIndex!26))))

(assert (=> b!285158 (arrayContainsKey!0 lt!140708 lt!140742 #b00000000000000000000000000000000)))

(declare-fun lt!140743 () Unit!9037)

(assert (=> b!285158 (= lt!140743 lt!140744)))

(declare-fun res!147687 () Bool)

(assert (=> b!285158 (= res!147687 (= (seekEntryOrOpen!0 (select (arr!6757 lt!140708) startIndex!26) lt!140708 mask!3868) (Found!1926 startIndex!26)))))

(assert (=> b!285158 (=> (not res!147687) (not e!180770))))

(assert (= (and d!65613 (not res!147686)) b!285159))

(assert (= (and b!285159 c!46289) b!285158))

(assert (= (and b!285159 (not c!46289)) b!285156))

(assert (= (and b!285158 res!147687) b!285157))

(assert (= (or b!285157 b!285156) bm!25538))

(declare-fun m!300039 () Bool)

(assert (=> bm!25538 m!300039))

(declare-fun m!300041 () Bool)

(assert (=> b!285159 m!300041))

(assert (=> b!285159 m!300041))

(declare-fun m!300043 () Bool)

(assert (=> b!285159 m!300043))

(assert (=> b!285158 m!300041))

(declare-fun m!300045 () Bool)

(assert (=> b!285158 m!300045))

(declare-fun m!300047 () Bool)

(assert (=> b!285158 m!300047))

(assert (=> b!285158 m!300041))

(declare-fun m!300049 () Bool)

(assert (=> b!285158 m!300049))

(assert (=> b!285039 d!65613))

(declare-fun b!285160 () Bool)

(declare-fun e!180774 () Bool)

(declare-fun call!25542 () Bool)

(assert (=> b!285160 (= e!180774 call!25542)))

(declare-fun b!285161 () Bool)

(declare-fun e!180773 () Bool)

(assert (=> b!285161 (= e!180773 call!25542)))

(declare-fun bm!25539 () Bool)

(assert (=> bm!25539 (= call!25542 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) lt!140708 mask!3868))))

(declare-fun b!285163 () Bool)

(declare-fun e!180775 () Bool)

(assert (=> b!285163 (= e!180775 e!180774)))

(declare-fun c!46290 () Bool)

(assert (=> b!285163 (= c!46290 (validKeyInArray!0 (select (arr!6757 lt!140708) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(declare-fun d!65623 () Bool)

(declare-fun res!147688 () Bool)

(assert (=> d!65623 (=> res!147688 e!180775)))

(assert (=> d!65623 (= res!147688 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) (size!7109 lt!140708)))))

(assert (=> d!65623 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!140708 mask!3868) e!180775)))

(declare-fun b!285162 () Bool)

(assert (=> b!285162 (= e!180774 e!180773)))

(declare-fun lt!140745 () (_ BitVec 64))

(assert (=> b!285162 (= lt!140745 (select (arr!6757 lt!140708) (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(declare-fun lt!140747 () Unit!9037)

(assert (=> b!285162 (= lt!140747 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140708 lt!140745 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> b!285162 (arrayContainsKey!0 lt!140708 lt!140745 #b00000000000000000000000000000000)))

(declare-fun lt!140746 () Unit!9037)

(assert (=> b!285162 (= lt!140746 lt!140747)))

(declare-fun res!147689 () Bool)

(assert (=> b!285162 (= res!147689 (= (seekEntryOrOpen!0 (select (arr!6757 lt!140708) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!140708 mask!3868) (Found!1926 (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (=> b!285162 (=> (not res!147689) (not e!180773))))

(assert (= (and d!65623 (not res!147688)) b!285163))

(assert (= (and b!285163 c!46290) b!285162))

(assert (= (and b!285163 (not c!46290)) b!285160))

(assert (= (and b!285162 res!147689) b!285161))

(assert (= (or b!285161 b!285160) bm!25539))

(declare-fun m!300051 () Bool)

(assert (=> bm!25539 m!300051))

(declare-fun m!300053 () Bool)

(assert (=> b!285163 m!300053))

(assert (=> b!285163 m!300053))

(declare-fun m!300055 () Bool)

(assert (=> b!285163 m!300055))

(assert (=> b!285162 m!300053))

(declare-fun m!300057 () Bool)

(assert (=> b!285162 m!300057))

(declare-fun m!300059 () Bool)

(assert (=> b!285162 m!300059))

(assert (=> b!285162 m!300053))

(declare-fun m!300061 () Bool)

(assert (=> b!285162 m!300061))

(assert (=> b!285039 d!65623))

(declare-fun d!65625 () Bool)

(declare-fun e!180790 () Bool)

(assert (=> d!65625 e!180790))

(declare-fun res!147701 () Bool)

(assert (=> d!65625 (=> (not res!147701) (not e!180790))))

(assert (=> d!65625 (= res!147701 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7109 a!3325))))))

(declare-fun lt!140750 () Unit!9037)

(declare-fun choose!98 (array!14237 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9037)

(assert (=> d!65625 (= lt!140750 (choose!98 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> d!65625 (validMask!0 mask!3868)))

(assert (=> d!65625 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868) lt!140750)))

(declare-fun b!285181 () Bool)

(assert (=> b!285181 (= e!180790 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!14238 (store (arr!6757 a!3325) i!1267 k!2581) (size!7109 a!3325)) mask!3868))))

(assert (= (and d!65625 res!147701) b!285181))

(declare-fun m!300069 () Bool)

(assert (=> d!65625 m!300069))

(assert (=> d!65625 m!299951))

(assert (=> b!285181 m!299957))

(declare-fun m!300071 () Bool)

(assert (=> b!285181 m!300071))

(assert (=> b!285039 d!65625))

(declare-fun bm!25547 () Bool)

(declare-fun call!25550 () Bool)

(declare-fun c!46300 () Bool)

(assert (=> bm!25547 (= call!25550 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46300 (Cons!4582 (select (arr!6757 a!3325) #b00000000000000000000000000000000) Nil!4583) Nil!4583)))))

(declare-fun b!285204 () Bool)

(declare-fun e!180809 () Bool)

(assert (=> b!285204 (= e!180809 call!25550)))

(declare-fun b!285205 () Bool)

(declare-fun e!180810 () Bool)

(declare-fun contains!1996 (List!4586 (_ BitVec 64)) Bool)

(assert (=> b!285205 (= e!180810 (contains!1996 Nil!4583 (select (arr!6757 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285206 () Bool)

(assert (=> b!285206 (= e!180809 call!25550)))

(declare-fun b!285207 () Bool)

(declare-fun e!180807 () Bool)

(declare-fun e!180808 () Bool)

(assert (=> b!285207 (= e!180807 e!180808)))

(declare-fun res!147714 () Bool)

(assert (=> b!285207 (=> (not res!147714) (not e!180808))))

(assert (=> b!285207 (= res!147714 (not e!180810))))

(declare-fun res!147712 () Bool)

(assert (=> b!285207 (=> (not res!147712) (not e!180810))))

(assert (=> b!285207 (= res!147712 (validKeyInArray!0 (select (arr!6757 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285208 () Bool)

(assert (=> b!285208 (= e!180808 e!180809)))

(assert (=> b!285208 (= c!46300 (validKeyInArray!0 (select (arr!6757 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!65629 () Bool)

(declare-fun res!147713 () Bool)

(assert (=> d!65629 (=> res!147713 e!180807)))

(assert (=> d!65629 (= res!147713 (bvsge #b00000000000000000000000000000000 (size!7109 a!3325)))))

(assert (=> d!65629 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4583) e!180807)))

(assert (= (and d!65629 (not res!147713)) b!285207))

(assert (= (and b!285207 res!147712) b!285205))

(assert (= (and b!285207 res!147714) b!285208))

(assert (= (and b!285208 c!46300) b!285206))

(assert (= (and b!285208 (not c!46300)) b!285204))

(assert (= (or b!285206 b!285204) bm!25547))

(assert (=> bm!25547 m!300021))

(declare-fun m!300073 () Bool)

(assert (=> bm!25547 m!300073))

(assert (=> b!285205 m!300021))

(assert (=> b!285205 m!300021))

(declare-fun m!300075 () Bool)

(assert (=> b!285205 m!300075))

(assert (=> b!285207 m!300021))

(assert (=> b!285207 m!300021))

(declare-fun m!300077 () Bool)

(assert (=> b!285207 m!300077))

(assert (=> b!285208 m!300021))

(assert (=> b!285208 m!300021))

(assert (=> b!285208 m!300077))

(assert (=> b!285033 d!65629))

(declare-fun d!65631 () Bool)

(assert (=> d!65631 (= (validKeyInArray!0 (select (arr!6757 a!3325) startIndex!26)) (and (not (= (select (arr!6757 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6757 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285037 d!65631))

(declare-fun d!65635 () Bool)

(assert (=> d!65635 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285042 d!65635))

(declare-fun d!65637 () Bool)

(assert (=> d!65637 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27598 d!65637))

(declare-fun d!65647 () Bool)

(assert (=> d!65647 (= (array_inv!4711 a!3325) (bvsge (size!7109 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27598 d!65647))

(declare-fun b!285279 () Bool)

(declare-fun e!180855 () SeekEntryResult!1926)

(declare-fun lt!140802 () SeekEntryResult!1926)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14237 (_ BitVec 32)) SeekEntryResult!1926)

(assert (=> b!285279 (= e!180855 (seekKeyOrZeroReturnVacant!0 (x!28045 lt!140802) (index!9876 lt!140802) (index!9876 lt!140802) k!2581 a!3325 mask!3868))))

(declare-fun b!285280 () Bool)

(declare-fun e!180856 () SeekEntryResult!1926)

(assert (=> b!285280 (= e!180856 (Found!1926 (index!9876 lt!140802)))))

(declare-fun b!285281 () Bool)

(declare-fun c!46329 () Bool)

(declare-fun lt!140803 () (_ BitVec 64))

(assert (=> b!285281 (= c!46329 (= lt!140803 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285281 (= e!180856 e!180855)))

(declare-fun b!285282 () Bool)

(assert (=> b!285282 (= e!180855 (MissingZero!1926 (index!9876 lt!140802)))))

(declare-fun d!65649 () Bool)

(declare-fun lt!140804 () SeekEntryResult!1926)

(assert (=> d!65649 (and (or (is-Undefined!1926 lt!140804) (not (is-Found!1926 lt!140804)) (and (bvsge (index!9875 lt!140804) #b00000000000000000000000000000000) (bvslt (index!9875 lt!140804) (size!7109 a!3325)))) (or (is-Undefined!1926 lt!140804) (is-Found!1926 lt!140804) (not (is-MissingZero!1926 lt!140804)) (and (bvsge (index!9874 lt!140804) #b00000000000000000000000000000000) (bvslt (index!9874 lt!140804) (size!7109 a!3325)))) (or (is-Undefined!1926 lt!140804) (is-Found!1926 lt!140804) (is-MissingZero!1926 lt!140804) (not (is-MissingVacant!1926 lt!140804)) (and (bvsge (index!9877 lt!140804) #b00000000000000000000000000000000) (bvslt (index!9877 lt!140804) (size!7109 a!3325)))) (or (is-Undefined!1926 lt!140804) (ite (is-Found!1926 lt!140804) (= (select (arr!6757 a!3325) (index!9875 lt!140804)) k!2581) (ite (is-MissingZero!1926 lt!140804) (= (select (arr!6757 a!3325) (index!9874 lt!140804)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1926 lt!140804) (= (select (arr!6757 a!3325) (index!9877 lt!140804)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!180854 () SeekEntryResult!1926)

(assert (=> d!65649 (= lt!140804 e!180854)))

(declare-fun c!46328 () Bool)

(assert (=> d!65649 (= c!46328 (and (is-Intermediate!1926 lt!140802) (undefined!2738 lt!140802)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14237 (_ BitVec 32)) SeekEntryResult!1926)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65649 (= lt!140802 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!65649 (validMask!0 mask!3868)))

(assert (=> d!65649 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!140804)))

(declare-fun b!285283 () Bool)

(assert (=> b!285283 (= e!180854 e!180856)))

(assert (=> b!285283 (= lt!140803 (select (arr!6757 a!3325) (index!9876 lt!140802)))))

(declare-fun c!46330 () Bool)

(assert (=> b!285283 (= c!46330 (= lt!140803 k!2581))))

(declare-fun b!285284 () Bool)

(assert (=> b!285284 (= e!180854 Undefined!1926)))

(assert (= (and d!65649 c!46328) b!285284))

(assert (= (and d!65649 (not c!46328)) b!285283))

(assert (= (and b!285283 c!46330) b!285280))

(assert (= (and b!285283 (not c!46330)) b!285281))

(assert (= (and b!285281 c!46329) b!285282))

(assert (= (and b!285281 (not c!46329)) b!285279))

(declare-fun m!300171 () Bool)

(assert (=> b!285279 m!300171))

(declare-fun m!300173 () Bool)

(assert (=> d!65649 m!300173))

(declare-fun m!300175 () Bool)

(assert (=> d!65649 m!300175))

(declare-fun m!300177 () Bool)

(assert (=> d!65649 m!300177))

(declare-fun m!300179 () Bool)

(assert (=> d!65649 m!300179))

(declare-fun m!300181 () Bool)

(assert (=> d!65649 m!300181))

(assert (=> d!65649 m!300179))

(assert (=> d!65649 m!299951))

(declare-fun m!300183 () Bool)

(assert (=> b!285283 m!300183))

(assert (=> b!285041 d!65649))

(declare-fun b!285285 () Bool)

(declare-fun e!180858 () Bool)

(declare-fun call!25556 () Bool)

(assert (=> b!285285 (= e!180858 call!25556)))

(declare-fun b!285286 () Bool)

(declare-fun e!180857 () Bool)

(assert (=> b!285286 (= e!180857 call!25556)))

