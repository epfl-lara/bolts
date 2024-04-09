; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48046 () Bool)

(assert start!48046)

(declare-fun b!529064 () Bool)

(declare-fun res!325107 () Bool)

(declare-fun e!308288 () Bool)

(assert (=> b!529064 (=> (not res!325107) (not e!308288))))

(declare-datatypes ((array!33499 0))(
  ( (array!33500 (arr!16095 (Array (_ BitVec 32) (_ BitVec 64))) (size!16459 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33499)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529064 (= res!325107 (validKeyInArray!0 (select (arr!16095 a!3235) j!176)))))

(declare-fun b!529065 () Bool)

(declare-fun e!308290 () Bool)

(declare-fun lt!243954 () Bool)

(declare-datatypes ((SeekEntryResult!4569 0))(
  ( (MissingZero!4569 (index!20500 (_ BitVec 32))) (Found!4569 (index!20501 (_ BitVec 32))) (Intermediate!4569 (undefined!5381 Bool) (index!20502 (_ BitVec 32)) (x!49500 (_ BitVec 32))) (Undefined!4569) (MissingVacant!4569 (index!20503 (_ BitVec 32))) )
))
(declare-fun lt!243959 () SeekEntryResult!4569)

(assert (=> b!529065 (= e!308290 (or (and (not lt!243954) (undefined!5381 lt!243959)) (and (not lt!243954) (not (undefined!5381 lt!243959)))))))

(assert (=> b!529065 (= lt!243954 (not (is-Intermediate!4569 lt!243959)))))

(declare-fun b!529066 () Bool)

(declare-fun e!308286 () Bool)

(assert (=> b!529066 (= e!308288 e!308286)))

(declare-fun res!325110 () Bool)

(assert (=> b!529066 (=> (not res!325110) (not e!308286))))

(declare-fun lt!243958 () SeekEntryResult!4569)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!529066 (= res!325110 (or (= lt!243958 (MissingZero!4569 i!1204)) (= lt!243958 (MissingVacant!4569 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33499 (_ BitVec 32)) SeekEntryResult!4569)

(assert (=> b!529066 (= lt!243958 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!529067 () Bool)

(declare-fun res!325108 () Bool)

(assert (=> b!529067 (=> (not res!325108) (not e!308286))))

(declare-datatypes ((List!10306 0))(
  ( (Nil!10303) (Cons!10302 (h!11239 (_ BitVec 64)) (t!16542 List!10306)) )
))
(declare-fun arrayNoDuplicates!0 (array!33499 (_ BitVec 32) List!10306) Bool)

(assert (=> b!529067 (= res!325108 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10303))))

(declare-fun b!529069 () Bool)

(declare-fun e!308289 () Bool)

(assert (=> b!529069 (= e!308289 (= (seekEntryOrOpen!0 (select (arr!16095 a!3235) j!176) a!3235 mask!3524) (Found!4569 j!176)))))

(declare-fun b!529070 () Bool)

(declare-fun res!325104 () Bool)

(assert (=> b!529070 (=> (not res!325104) (not e!308288))))

(declare-fun arrayContainsKey!0 (array!33499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529070 (= res!325104 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529071 () Bool)

(declare-fun res!325103 () Bool)

(assert (=> b!529071 (=> (not res!325103) (not e!308286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33499 (_ BitVec 32)) Bool)

(assert (=> b!529071 (= res!325103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529072 () Bool)

(declare-fun res!325106 () Bool)

(assert (=> b!529072 (=> (not res!325106) (not e!308288))))

(assert (=> b!529072 (= res!325106 (validKeyInArray!0 k!2280))))

(declare-fun b!529073 () Bool)

(declare-fun res!325111 () Bool)

(assert (=> b!529073 (=> (not res!325111) (not e!308288))))

(assert (=> b!529073 (= res!325111 (and (= (size!16459 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16459 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16459 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529068 () Bool)

(assert (=> b!529068 (= e!308286 (not e!308290))))

(declare-fun res!325105 () Bool)

(assert (=> b!529068 (=> res!325105 e!308290)))

(declare-fun lt!243955 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33499 (_ BitVec 32)) SeekEntryResult!4569)

(assert (=> b!529068 (= res!325105 (= lt!243959 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243955 (select (store (arr!16095 a!3235) i!1204 k!2280) j!176) (array!33500 (store (arr!16095 a!3235) i!1204 k!2280) (size!16459 a!3235)) mask!3524)))))

(declare-fun lt!243956 () (_ BitVec 32))

(assert (=> b!529068 (= lt!243959 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243956 (select (arr!16095 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529068 (= lt!243955 (toIndex!0 (select (store (arr!16095 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!529068 (= lt!243956 (toIndex!0 (select (arr!16095 a!3235) j!176) mask!3524))))

(assert (=> b!529068 e!308289))

(declare-fun res!325112 () Bool)

(assert (=> b!529068 (=> (not res!325112) (not e!308289))))

(assert (=> b!529068 (= res!325112 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16742 0))(
  ( (Unit!16743) )
))
(declare-fun lt!243957 () Unit!16742)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33499 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16742)

(assert (=> b!529068 (= lt!243957 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!325109 () Bool)

(assert (=> start!48046 (=> (not res!325109) (not e!308288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48046 (= res!325109 (validMask!0 mask!3524))))

(assert (=> start!48046 e!308288))

(assert (=> start!48046 true))

(declare-fun array_inv!11869 (array!33499) Bool)

(assert (=> start!48046 (array_inv!11869 a!3235)))

(assert (= (and start!48046 res!325109) b!529073))

(assert (= (and b!529073 res!325111) b!529064))

(assert (= (and b!529064 res!325107) b!529072))

(assert (= (and b!529072 res!325106) b!529070))

(assert (= (and b!529070 res!325104) b!529066))

(assert (= (and b!529066 res!325110) b!529071))

(assert (= (and b!529071 res!325103) b!529067))

(assert (= (and b!529067 res!325108) b!529068))

(assert (= (and b!529068 res!325112) b!529069))

(assert (= (and b!529068 (not res!325105)) b!529065))

(declare-fun m!509647 () Bool)

(assert (=> start!48046 m!509647))

(declare-fun m!509649 () Bool)

(assert (=> start!48046 m!509649))

(declare-fun m!509651 () Bool)

(assert (=> b!529070 m!509651))

(declare-fun m!509653 () Bool)

(assert (=> b!529064 m!509653))

(assert (=> b!529064 m!509653))

(declare-fun m!509655 () Bool)

(assert (=> b!529064 m!509655))

(assert (=> b!529069 m!509653))

(assert (=> b!529069 m!509653))

(declare-fun m!509657 () Bool)

(assert (=> b!529069 m!509657))

(declare-fun m!509659 () Bool)

(assert (=> b!529068 m!509659))

(declare-fun m!509661 () Bool)

(assert (=> b!529068 m!509661))

(declare-fun m!509663 () Bool)

(assert (=> b!529068 m!509663))

(assert (=> b!529068 m!509653))

(declare-fun m!509665 () Bool)

(assert (=> b!529068 m!509665))

(assert (=> b!529068 m!509653))

(declare-fun m!509667 () Bool)

(assert (=> b!529068 m!509667))

(assert (=> b!529068 m!509663))

(declare-fun m!509669 () Bool)

(assert (=> b!529068 m!509669))

(assert (=> b!529068 m!509663))

(declare-fun m!509671 () Bool)

(assert (=> b!529068 m!509671))

(assert (=> b!529068 m!509653))

(declare-fun m!509673 () Bool)

(assert (=> b!529068 m!509673))

(declare-fun m!509675 () Bool)

(assert (=> b!529072 m!509675))

(declare-fun m!509677 () Bool)

(assert (=> b!529071 m!509677))

(declare-fun m!509679 () Bool)

(assert (=> b!529066 m!509679))

(declare-fun m!509681 () Bool)

(assert (=> b!529067 m!509681))

(push 1)

(assert (not b!529069))

(assert (not b!529066))

(assert (not b!529067))

(assert (not b!529064))

(assert (not b!529071))

(assert (not b!529070))

(assert (not b!529072))

(assert (not b!529068))

(assert (not start!48046))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80901 () Bool)

(declare-fun res!325187 () Bool)

(declare-fun e!308346 () Bool)

(assert (=> d!80901 (=> res!325187 e!308346)))

(assert (=> d!80901 (= res!325187 (= (select (arr!16095 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80901 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!308346)))

(declare-fun b!529171 () Bool)

(declare-fun e!308347 () Bool)

(assert (=> b!529171 (= e!308346 e!308347)))

(declare-fun res!325188 () Bool)

(assert (=> b!529171 (=> (not res!325188) (not e!308347))))

(assert (=> b!529171 (= res!325188 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16459 a!3235)))))

(declare-fun b!529172 () Bool)

(assert (=> b!529172 (= e!308347 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80901 (not res!325187)) b!529171))

(assert (= (and b!529171 res!325188) b!529172))

(declare-fun m!509777 () Bool)

(assert (=> d!80901 m!509777))

(declare-fun m!509779 () Bool)

(assert (=> b!529172 m!509779))

(assert (=> b!529070 d!80901))

(declare-fun d!80905 () Bool)

(assert (=> d!80905 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!48046 d!80905))

(declare-fun d!80907 () Bool)

(assert (=> d!80907 (= (array_inv!11869 a!3235) (bvsge (size!16459 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!48046 d!80907))

(declare-fun b!529272 () Bool)

(declare-fun e!308409 () SeekEntryResult!4569)

(declare-fun lt!244052 () SeekEntryResult!4569)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33499 (_ BitVec 32)) SeekEntryResult!4569)

(assert (=> b!529272 (= e!308409 (seekKeyOrZeroReturnVacant!0 (x!49500 lt!244052) (index!20502 lt!244052) (index!20502 lt!244052) (select (arr!16095 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!529273 () Bool)

(declare-fun e!308407 () SeekEntryResult!4569)

(assert (=> b!529273 (= e!308407 (Found!4569 (index!20502 lt!244052)))))

(declare-fun d!80909 () Bool)

(declare-fun lt!244051 () SeekEntryResult!4569)

(assert (=> d!80909 (and (or (is-Undefined!4569 lt!244051) (not (is-Found!4569 lt!244051)) (and (bvsge (index!20501 lt!244051) #b00000000000000000000000000000000) (bvslt (index!20501 lt!244051) (size!16459 a!3235)))) (or (is-Undefined!4569 lt!244051) (is-Found!4569 lt!244051) (not (is-MissingZero!4569 lt!244051)) (and (bvsge (index!20500 lt!244051) #b00000000000000000000000000000000) (bvslt (index!20500 lt!244051) (size!16459 a!3235)))) (or (is-Undefined!4569 lt!244051) (is-Found!4569 lt!244051) (is-MissingZero!4569 lt!244051) (not (is-MissingVacant!4569 lt!244051)) (and (bvsge (index!20503 lt!244051) #b00000000000000000000000000000000) (bvslt (index!20503 lt!244051) (size!16459 a!3235)))) (or (is-Undefined!4569 lt!244051) (ite (is-Found!4569 lt!244051) (= (select (arr!16095 a!3235) (index!20501 lt!244051)) (select (arr!16095 a!3235) j!176)) (ite (is-MissingZero!4569 lt!244051) (= (select (arr!16095 a!3235) (index!20500 lt!244051)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4569 lt!244051) (= (select (arr!16095 a!3235) (index!20503 lt!244051)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!308408 () SeekEntryResult!4569)

(assert (=> d!80909 (= lt!244051 e!308408)))

(declare-fun c!62337 () Bool)

(assert (=> d!80909 (= c!62337 (and (is-Intermediate!4569 lt!244052) (undefined!5381 lt!244052)))))

(assert (=> d!80909 (= lt!244052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16095 a!3235) j!176) mask!3524) (select (arr!16095 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80909 (validMask!0 mask!3524)))

(assert (=> d!80909 (= (seekEntryOrOpen!0 (select (arr!16095 a!3235) j!176) a!3235 mask!3524) lt!244051)))

(declare-fun b!529274 () Bool)

(assert (=> b!529274 (= e!308409 (MissingZero!4569 (index!20502 lt!244052)))))

(declare-fun b!529275 () Bool)

(assert (=> b!529275 (= e!308408 Undefined!4569)))

(declare-fun b!529276 () Bool)

(assert (=> b!529276 (= e!308408 e!308407)))

(declare-fun lt!244053 () (_ BitVec 64))

(assert (=> b!529276 (= lt!244053 (select (arr!16095 a!3235) (index!20502 lt!244052)))))

(declare-fun c!62338 () Bool)

(assert (=> b!529276 (= c!62338 (= lt!244053 (select (arr!16095 a!3235) j!176)))))

(declare-fun b!529277 () Bool)

(declare-fun c!62339 () Bool)

(assert (=> b!529277 (= c!62339 (= lt!244053 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!529277 (= e!308407 e!308409)))

(assert (= (and d!80909 c!62337) b!529275))

(assert (= (and d!80909 (not c!62337)) b!529276))

(assert (= (and b!529276 c!62338) b!529273))

(assert (= (and b!529276 (not c!62338)) b!529277))

(assert (= (and b!529277 c!62339) b!529274))

(assert (= (and b!529277 (not c!62339)) b!529272))

(assert (=> b!529272 m!509653))

(declare-fun m!509835 () Bool)

(assert (=> b!529272 m!509835))

(assert (=> d!80909 m!509665))

(assert (=> d!80909 m!509653))

(declare-fun m!509839 () Bool)

(assert (=> d!80909 m!509839))

(declare-fun m!509843 () Bool)

(assert (=> d!80909 m!509843))

(declare-fun m!509845 () Bool)

(assert (=> d!80909 m!509845))

(declare-fun m!509847 () Bool)

(assert (=> d!80909 m!509847))

(assert (=> d!80909 m!509647))

(assert (=> d!80909 m!509653))

(assert (=> d!80909 m!509665))

(declare-fun m!509849 () Bool)

(assert (=> b!529276 m!509849))

(assert (=> b!529069 d!80909))

(declare-fun d!80931 () Bool)

(assert (=> d!80931 (= (validKeyInArray!0 (select (arr!16095 a!3235) j!176)) (and (not (= (select (arr!16095 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16095 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!529064 d!80931))

(declare-fun b!529300 () Bool)

(declare-fun e!308424 () Bool)

(declare-fun call!31923 () Bool)

(assert (=> b!529300 (= e!308424 call!31923)))

(declare-fun b!529301 () Bool)

(declare-fun e!308427 () Bool)

(declare-fun e!308425 () Bool)

(assert (=> b!529301 (= e!308427 e!308425)))

(declare-fun res!325225 () Bool)

(assert (=> b!529301 (=> (not res!325225) (not e!308425))))

(declare-fun e!308426 () Bool)

(assert (=> b!529301 (= res!325225 (not e!308426))))

(declare-fun res!325226 () Bool)

(assert (=> b!529301 (=> (not res!325226) (not e!308426))))

(assert (=> b!529301 (= res!325226 (validKeyInArray!0 (select (arr!16095 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80935 () Bool)

(declare-fun res!325224 () Bool)

(assert (=> d!80935 (=> res!325224 e!308427)))

(assert (=> d!80935 (= res!325224 (bvsge #b00000000000000000000000000000000 (size!16459 a!3235)))))

(assert (=> d!80935 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10303) e!308427)))

(declare-fun b!529302 () Bool)

(assert (=> b!529302 (= e!308424 call!31923)))

(declare-fun b!529303 () Bool)

(declare-fun contains!2785 (List!10306 (_ BitVec 64)) Bool)

(assert (=> b!529303 (= e!308426 (contains!2785 Nil!10303 (select (arr!16095 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!529305 () Bool)

(assert (=> b!529305 (= e!308425 e!308424)))

(declare-fun c!62346 () Bool)

(assert (=> b!529305 (= c!62346 (validKeyInArray!0 (select (arr!16095 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31920 () Bool)

(assert (=> bm!31920 (= call!31923 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62346 (Cons!10302 (select (arr!16095 a!3235) #b00000000000000000000000000000000) Nil!10303) Nil!10303)))))

(assert (= (and d!80935 (not res!325224)) b!529301))

(assert (= (and b!529301 res!325226) b!529303))

(assert (= (and b!529301 res!325225) b!529305))

(assert (= (and b!529305 c!62346) b!529302))

(assert (= (and b!529305 (not c!62346)) b!529300))

(assert (= (or b!529302 b!529300) bm!31920))

(assert (=> b!529301 m!509777))

(assert (=> b!529301 m!509777))

(declare-fun m!509871 () Bool)

(assert (=> b!529301 m!509871))

(assert (=> b!529303 m!509777))

(assert (=> b!529303 m!509777))

(declare-fun m!509873 () Bool)

(assert (=> b!529303 m!509873))

(assert (=> b!529305 m!509777))

(assert (=> b!529305 m!509777))

(assert (=> b!529305 m!509871))

(assert (=> bm!31920 m!509777))

(declare-fun m!509875 () Bool)

(assert (=> bm!31920 m!509875))

(assert (=> b!529067 d!80935))

(declare-fun d!80941 () Bool)

(declare-fun lt!244071 () (_ BitVec 32))

(declare-fun lt!244070 () (_ BitVec 32))

(assert (=> d!80941 (= lt!244071 (bvmul (bvxor lt!244070 (bvlshr lt!244070 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80941 (= lt!244070 ((_ extract 31 0) (bvand (bvxor (select (arr!16095 a!3235) j!176) (bvlshr (select (arr!16095 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80941 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!325227 (let ((h!11243 ((_ extract 31 0) (bvand (bvxor (select (arr!16095 a!3235) j!176) (bvlshr (select (arr!16095 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49506 (bvmul (bvxor h!11243 (bvlshr h!11243 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49506 (bvlshr x!49506 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!325227 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!325227 #b00000000000000000000000000000000))))))

(assert (=> d!80941 (= (toIndex!0 (select (arr!16095 a!3235) j!176) mask!3524) (bvand (bvxor lt!244071 (bvlshr lt!244071 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!529068 d!80941))

(declare-fun b!529344 () Bool)

(declare-fun e!308457 () Bool)

(declare-fun call!31926 () Bool)

(assert (=> b!529344 (= e!308457 call!31926)))

(declare-fun b!529345 () Bool)

(declare-fun e!308455 () Bool)

(assert (=> b!529345 (= e!308455 e!308457)))

(declare-fun lt!244086 () (_ BitVec 64))

(assert (=> b!529345 (= lt!244086 (select (arr!16095 a!3235) j!176))))

(declare-fun lt!244084 () Unit!16742)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33499 (_ BitVec 64) (_ BitVec 32)) Unit!16742)

(assert (=> b!529345 (= lt!244084 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!244086 j!176))))

(assert (=> b!529345 (arrayContainsKey!0 a!3235 lt!244086 #b00000000000000000000000000000000)))

(declare-fun lt!244085 () Unit!16742)

(assert (=> b!529345 (= lt!244085 lt!244084)))

(declare-fun res!325249 () Bool)

(assert (=> b!529345 (= res!325249 (= (seekEntryOrOpen!0 (select (arr!16095 a!3235) j!176) a!3235 mask!3524) (Found!4569 j!176)))))

(assert (=> b!529345 (=> (not res!325249) (not e!308457))))

(declare-fun d!80945 () Bool)

(declare-fun res!325248 () Bool)

(declare-fun e!308456 () Bool)

(assert (=> d!80945 (=> res!325248 e!308456)))

(assert (=> d!80945 (= res!325248 (bvsge j!176 (size!16459 a!3235)))))

(assert (=> d!80945 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!308456)))

(declare-fun b!529346 () Bool)

(assert (=> b!529346 (= e!308455 call!31926)))

(declare-fun bm!31923 () Bool)

(assert (=> bm!31923 (= call!31926 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!529347 () Bool)

(assert (=> b!529347 (= e!308456 e!308455)))

(declare-fun c!62358 () Bool)

(assert (=> b!529347 (= c!62358 (validKeyInArray!0 (select (arr!16095 a!3235) j!176)))))

(assert (= (and d!80945 (not res!325248)) b!529347))

(assert (= (and b!529347 c!62358) b!529345))

(assert (= (and b!529347 (not c!62358)) b!529346))

(assert (= (and b!529345 res!325249) b!529344))

(assert (= (or b!529344 b!529346) bm!31923))

(assert (=> b!529345 m!509653))

(declare-fun m!509887 () Bool)

(assert (=> b!529345 m!509887))

(declare-fun m!509889 () Bool)

(assert (=> b!529345 m!509889))

(assert (=> b!529345 m!509653))

(assert (=> b!529345 m!509657))

(declare-fun m!509891 () Bool)

(assert (=> bm!31923 m!509891))

(assert (=> b!529347 m!509653))

(assert (=> b!529347 m!509653))

(assert (=> b!529347 m!509655))

(assert (=> b!529068 d!80945))

(declare-fun d!80955 () Bool)

(assert (=> d!80955 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!244100 () Unit!16742)

(declare-fun choose!38 (array!33499 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16742)

(assert (=> d!80955 (= lt!244100 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80955 (validMask!0 mask!3524)))

(assert (=> d!80955 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!244100)))

(declare-fun bs!16570 () Bool)

(assert (= bs!16570 d!80955))

(assert (=> bs!16570 m!509667))

(declare-fun m!509899 () Bool)

(assert (=> bs!16570 m!509899))

(assert (=> bs!16570 m!509647))

(assert (=> b!529068 d!80955))

(declare-fun d!80959 () Bool)

(declare-fun lt!244102 () (_ BitVec 32))

(declare-fun lt!244101 () (_ BitVec 32))

(assert (=> d!80959 (= lt!244102 (bvmul (bvxor lt!244101 (bvlshr lt!244101 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80959 (= lt!244101 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16095 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!16095 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80959 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!325227 (let ((h!11243 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16095 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!16095 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49506 (bvmul (bvxor h!11243 (bvlshr h!11243 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49506 (bvlshr x!49506 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!325227 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!325227 #b00000000000000000000000000000000))))))

(assert (=> d!80959 (= (toIndex!0 (select (store (arr!16095 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!244102 (bvlshr lt!244102 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!529068 d!80959))

(declare-fun b!529397 () Bool)

(declare-fun e!308495 () Bool)

(declare-fun lt!244116 () SeekEntryResult!4569)

(assert (=> b!529397 (= e!308495 (bvsge (x!49500 lt!244116) #b01111111111111111111111111111110))))

(declare-fun b!529398 () Bool)

(assert (=> b!529398 (and (bvsge (index!20502 lt!244116) #b00000000000000000000000000000000) (bvslt (index!20502 lt!244116) (size!16459 (array!33500 (store (arr!16095 a!3235) i!1204 k!2280) (size!16459 a!3235)))))))

(declare-fun e!308491 () Bool)

(assert (=> b!529398 (= e!308491 (= (select (arr!16095 (array!33500 (store (arr!16095 a!3235) i!1204 k!2280) (size!16459 a!3235))) (index!20502 lt!244116)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!529399 () Bool)

(declare-fun e!308492 () SeekEntryResult!4569)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529399 (= e!308492 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243955 #b00000000000000000000000000000000 mask!3524) (select (store (arr!16095 a!3235) i!1204 k!2280) j!176) (array!33500 (store (arr!16095 a!3235) i!1204 k!2280) (size!16459 a!3235)) mask!3524))))

(declare-fun b!529400 () Bool)

(assert (=> b!529400 (and (bvsge (index!20502 lt!244116) #b00000000000000000000000000000000) (bvslt (index!20502 lt!244116) (size!16459 (array!33500 (store (arr!16095 a!3235) i!1204 k!2280) (size!16459 a!3235)))))))

(declare-fun res!325275 () Bool)

(assert (=> b!529400 (= res!325275 (= (select (arr!16095 (array!33500 (store (arr!16095 a!3235) i!1204 k!2280) (size!16459 a!3235))) (index!20502 lt!244116)) (select (store (arr!16095 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!529400 (=> res!325275 e!308491)))

(declare-fun e!308494 () Bool)

(assert (=> b!529400 (= e!308494 e!308491)))

(declare-fun b!529401 () Bool)

(assert (=> b!529401 (and (bvsge (index!20502 lt!244116) #b00000000000000000000000000000000) (bvslt (index!20502 lt!244116) (size!16459 (array!33500 (store (arr!16095 a!3235) i!1204 k!2280) (size!16459 a!3235)))))))

(declare-fun res!325274 () Bool)

(assert (=> b!529401 (= res!325274 (= (select (arr!16095 (array!33500 (store (arr!16095 a!3235) i!1204 k!2280) (size!16459 a!3235))) (index!20502 lt!244116)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!529401 (=> res!325274 e!308491)))

(declare-fun b!529402 () Bool)

(declare-fun e!308493 () SeekEntryResult!4569)

(assert (=> b!529402 (= e!308493 (Intermediate!4569 true lt!243955 #b00000000000000000000000000000000))))

(declare-fun d!80963 () Bool)

(assert (=> d!80963 e!308495))

(declare-fun c!62372 () Bool)

(assert (=> d!80963 (= c!62372 (and (is-Intermediate!4569 lt!244116) (undefined!5381 lt!244116)))))

(assert (=> d!80963 (= lt!244116 e!308493)))

(declare-fun c!62373 () Bool)

(assert (=> d!80963 (= c!62373 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!244115 () (_ BitVec 64))

(assert (=> d!80963 (= lt!244115 (select (arr!16095 (array!33500 (store (arr!16095 a!3235) i!1204 k!2280) (size!16459 a!3235))) lt!243955))))

(assert (=> d!80963 (validMask!0 mask!3524)))

(assert (=> d!80963 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243955 (select (store (arr!16095 a!3235) i!1204 k!2280) j!176) (array!33500 (store (arr!16095 a!3235) i!1204 k!2280) (size!16459 a!3235)) mask!3524) lt!244116)))

(declare-fun b!529403 () Bool)

(assert (=> b!529403 (= e!308492 (Intermediate!4569 false lt!243955 #b00000000000000000000000000000000))))

(declare-fun b!529404 () Bool)

(assert (=> b!529404 (= e!308495 e!308494)))

(declare-fun res!325273 () Bool)

(assert (=> b!529404 (= res!325273 (and (is-Intermediate!4569 lt!244116) (not (undefined!5381 lt!244116)) (bvslt (x!49500 lt!244116) #b01111111111111111111111111111110) (bvsge (x!49500 lt!244116) #b00000000000000000000000000000000) (bvsge (x!49500 lt!244116) #b00000000000000000000000000000000)))))

(assert (=> b!529404 (=> (not res!325273) (not e!308494))))

(declare-fun b!529405 () Bool)

(assert (=> b!529405 (= e!308493 e!308492)))

(declare-fun c!62374 () Bool)

(assert (=> b!529405 (= c!62374 (or (= lt!244115 (select (store (arr!16095 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!244115 lt!244115) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!80963 c!62373) b!529402))

(assert (= (and d!80963 (not c!62373)) b!529405))

(assert (= (and b!529405 c!62374) b!529403))

(assert (= (and b!529405 (not c!62374)) b!529399))

(assert (= (and d!80963 c!62372) b!529397))

(assert (= (and d!80963 (not c!62372)) b!529404))

(assert (= (and b!529404 res!325273) b!529400))

(assert (= (and b!529400 (not res!325275)) b!529401))

(assert (= (and b!529401 (not res!325274)) b!529398))

(declare-fun m!509921 () Bool)

(assert (=> b!529400 m!509921))

(assert (=> b!529401 m!509921))

(declare-fun m!509923 () Bool)

(assert (=> d!80963 m!509923))

(assert (=> d!80963 m!509647))

(assert (=> b!529398 m!509921))

(declare-fun m!509925 () Bool)

(assert (=> b!529399 m!509925))

(assert (=> b!529399 m!509925))

(assert (=> b!529399 m!509663))

(declare-fun m!509927 () Bool)

(assert (=> b!529399 m!509927))

(assert (=> b!529068 d!80963))

(declare-fun b!529406 () Bool)

(declare-fun e!308500 () Bool)

(declare-fun lt!244118 () SeekEntryResult!4569)

(assert (=> b!529406 (= e!308500 (bvsge (x!49500 lt!244118) #b01111111111111111111111111111110))))

(declare-fun b!529407 () Bool)

(assert (=> b!529407 (and (bvsge (index!20502 lt!244118) #b00000000000000000000000000000000) (bvslt (index!20502 lt!244118) (size!16459 a!3235)))))

(declare-fun e!308496 () Bool)

(assert (=> b!529407 (= e!308496 (= (select (arr!16095 a!3235) (index!20502 lt!244118)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!308497 () SeekEntryResult!4569)

(declare-fun b!529408 () Bool)

(assert (=> b!529408 (= e!308497 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243956 #b00000000000000000000000000000000 mask!3524) (select (arr!16095 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!529409 () Bool)

(assert (=> b!529409 (and (bvsge (index!20502 lt!244118) #b00000000000000000000000000000000) (bvslt (index!20502 lt!244118) (size!16459 a!3235)))))

(declare-fun res!325278 () Bool)

(assert (=> b!529409 (= res!325278 (= (select (arr!16095 a!3235) (index!20502 lt!244118)) (select (arr!16095 a!3235) j!176)))))

(assert (=> b!529409 (=> res!325278 e!308496)))

(declare-fun e!308499 () Bool)

(assert (=> b!529409 (= e!308499 e!308496)))

(declare-fun b!529410 () Bool)

(assert (=> b!529410 (and (bvsge (index!20502 lt!244118) #b00000000000000000000000000000000) (bvslt (index!20502 lt!244118) (size!16459 a!3235)))))

(declare-fun res!325277 () Bool)

(assert (=> b!529410 (= res!325277 (= (select (arr!16095 a!3235) (index!20502 lt!244118)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!529410 (=> res!325277 e!308496)))

(declare-fun b!529411 () Bool)

(declare-fun e!308498 () SeekEntryResult!4569)

(assert (=> b!529411 (= e!308498 (Intermediate!4569 true lt!243956 #b00000000000000000000000000000000))))

(declare-fun d!80975 () Bool)

(assert (=> d!80975 e!308500))

(declare-fun c!62375 () Bool)

(assert (=> d!80975 (= c!62375 (and (is-Intermediate!4569 lt!244118) (undefined!5381 lt!244118)))))

(assert (=> d!80975 (= lt!244118 e!308498)))

