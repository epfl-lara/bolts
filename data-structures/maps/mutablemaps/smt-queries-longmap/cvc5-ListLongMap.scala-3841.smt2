; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52814 () Bool)

(assert start!52814)

(declare-fun b!575606 () Bool)

(declare-fun res!364172 () Bool)

(declare-fun e!331204 () Bool)

(assert (=> b!575606 (=> (not res!364172) (not e!331204))))

(declare-datatypes ((array!35913 0))(
  ( (array!35914 (arr!17235 (Array (_ BitVec 32) (_ BitVec 64))) (size!17599 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35913)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575606 (= res!364172 (validKeyInArray!0 (select (arr!17235 a!3118) j!142)))))

(declare-fun b!575607 () Bool)

(declare-fun e!331202 () Bool)

(declare-fun e!331203 () Bool)

(assert (=> b!575607 (= e!331202 e!331203)))

(declare-fun res!364180 () Bool)

(assert (=> b!575607 (=> (not res!364180) (not e!331203))))

(declare-datatypes ((SeekEntryResult!5691 0))(
  ( (MissingZero!5691 (index!24991 (_ BitVec 32))) (Found!5691 (index!24992 (_ BitVec 32))) (Intermediate!5691 (undefined!6503 Bool) (index!24993 (_ BitVec 32)) (x!53911 (_ BitVec 32))) (Undefined!5691) (MissingVacant!5691 (index!24994 (_ BitVec 32))) )
))
(declare-fun lt!263401 () SeekEntryResult!5691)

(declare-fun lt!263400 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35913 (_ BitVec 32)) SeekEntryResult!5691)

(assert (=> b!575607 (= res!364180 (= lt!263401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263400 (select (store (arr!17235 a!3118) i!1132 k!1914) j!142) (array!35914 (store (arr!17235 a!3118) i!1132 k!1914) (size!17599 a!3118)) mask!3119)))))

(declare-fun lt!263399 () (_ BitVec 32))

(assert (=> b!575607 (= lt!263401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263399 (select (arr!17235 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575607 (= lt!263400 (toIndex!0 (select (store (arr!17235 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!575607 (= lt!263399 (toIndex!0 (select (arr!17235 a!3118) j!142) mask!3119))))

(declare-fun b!575608 () Bool)

(declare-fun res!364175 () Bool)

(assert (=> b!575608 (=> (not res!364175) (not e!331202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35913 (_ BitVec 32)) Bool)

(assert (=> b!575608 (= res!364175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!364176 () Bool)

(assert (=> start!52814 (=> (not res!364176) (not e!331204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52814 (= res!364176 (validMask!0 mask!3119))))

(assert (=> start!52814 e!331204))

(assert (=> start!52814 true))

(declare-fun array_inv!13009 (array!35913) Bool)

(assert (=> start!52814 (array_inv!13009 a!3118)))

(declare-fun b!575609 () Bool)

(declare-fun res!364173 () Bool)

(assert (=> b!575609 (=> (not res!364173) (not e!331204))))

(assert (=> b!575609 (= res!364173 (and (= (size!17599 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17599 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17599 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575610 () Bool)

(declare-fun res!364179 () Bool)

(assert (=> b!575610 (=> (not res!364179) (not e!331204))))

(declare-fun arrayContainsKey!0 (array!35913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575610 (= res!364179 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575611 () Bool)

(declare-fun lt!263398 () Bool)

(assert (=> b!575611 (= e!331203 (not (or (and (not lt!263398) (undefined!6503 lt!263401)) (and (not lt!263398) (not (undefined!6503 lt!263401))))))))

(assert (=> b!575611 (= lt!263398 (not (is-Intermediate!5691 lt!263401)))))

(declare-fun e!331201 () Bool)

(assert (=> b!575611 e!331201))

(declare-fun res!364178 () Bool)

(assert (=> b!575611 (=> (not res!364178) (not e!331201))))

(assert (=> b!575611 (= res!364178 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18084 0))(
  ( (Unit!18085) )
))
(declare-fun lt!263402 () Unit!18084)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35913 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18084)

(assert (=> b!575611 (= lt!263402 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575612 () Bool)

(declare-fun res!364181 () Bool)

(assert (=> b!575612 (=> (not res!364181) (not e!331202))))

(declare-datatypes ((List!11368 0))(
  ( (Nil!11365) (Cons!11364 (h!12403 (_ BitVec 64)) (t!17604 List!11368)) )
))
(declare-fun arrayNoDuplicates!0 (array!35913 (_ BitVec 32) List!11368) Bool)

(assert (=> b!575612 (= res!364181 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11365))))

(declare-fun b!575613 () Bool)

(declare-fun res!364174 () Bool)

(assert (=> b!575613 (=> (not res!364174) (not e!331204))))

(assert (=> b!575613 (= res!364174 (validKeyInArray!0 k!1914))))

(declare-fun b!575614 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35913 (_ BitVec 32)) SeekEntryResult!5691)

(assert (=> b!575614 (= e!331201 (= (seekEntryOrOpen!0 (select (arr!17235 a!3118) j!142) a!3118 mask!3119) (Found!5691 j!142)))))

(declare-fun b!575615 () Bool)

(assert (=> b!575615 (= e!331204 e!331202)))

(declare-fun res!364177 () Bool)

(assert (=> b!575615 (=> (not res!364177) (not e!331202))))

(declare-fun lt!263397 () SeekEntryResult!5691)

(assert (=> b!575615 (= res!364177 (or (= lt!263397 (MissingZero!5691 i!1132)) (= lt!263397 (MissingVacant!5691 i!1132))))))

(assert (=> b!575615 (= lt!263397 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!52814 res!364176) b!575609))

(assert (= (and b!575609 res!364173) b!575606))

(assert (= (and b!575606 res!364172) b!575613))

(assert (= (and b!575613 res!364174) b!575610))

(assert (= (and b!575610 res!364179) b!575615))

(assert (= (and b!575615 res!364177) b!575608))

(assert (= (and b!575608 res!364175) b!575612))

(assert (= (and b!575612 res!364181) b!575607))

(assert (= (and b!575607 res!364180) b!575611))

(assert (= (and b!575611 res!364178) b!575614))

(declare-fun m!554623 () Bool)

(assert (=> b!575606 m!554623))

(assert (=> b!575606 m!554623))

(declare-fun m!554625 () Bool)

(assert (=> b!575606 m!554625))

(declare-fun m!554627 () Bool)

(assert (=> start!52814 m!554627))

(declare-fun m!554629 () Bool)

(assert (=> start!52814 m!554629))

(declare-fun m!554631 () Bool)

(assert (=> b!575615 m!554631))

(declare-fun m!554633 () Bool)

(assert (=> b!575608 m!554633))

(declare-fun m!554635 () Bool)

(assert (=> b!575613 m!554635))

(assert (=> b!575607 m!554623))

(declare-fun m!554637 () Bool)

(assert (=> b!575607 m!554637))

(assert (=> b!575607 m!554623))

(declare-fun m!554639 () Bool)

(assert (=> b!575607 m!554639))

(assert (=> b!575607 m!554623))

(declare-fun m!554641 () Bool)

(assert (=> b!575607 m!554641))

(declare-fun m!554643 () Bool)

(assert (=> b!575607 m!554643))

(assert (=> b!575607 m!554639))

(declare-fun m!554645 () Bool)

(assert (=> b!575607 m!554645))

(assert (=> b!575607 m!554639))

(declare-fun m!554647 () Bool)

(assert (=> b!575607 m!554647))

(declare-fun m!554649 () Bool)

(assert (=> b!575611 m!554649))

(declare-fun m!554651 () Bool)

(assert (=> b!575611 m!554651))

(declare-fun m!554653 () Bool)

(assert (=> b!575610 m!554653))

(assert (=> b!575614 m!554623))

(assert (=> b!575614 m!554623))

(declare-fun m!554655 () Bool)

(assert (=> b!575614 m!554655))

(declare-fun m!554657 () Bool)

(assert (=> b!575612 m!554657))

(push 1)

(assert (not b!575610))

(assert (not b!575607))

(assert (not b!575611))

(assert (not b!575608))

(assert (not start!52814))

(assert (not b!575614))

(assert (not b!575606))

(assert (not b!575615))

(assert (not b!575613))

(assert (not b!575612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!575742 () Bool)

(declare-fun c!66101 () Bool)

(declare-fun lt!263466 () (_ BitVec 64))

(assert (=> b!575742 (= c!66101 (= lt!263466 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331285 () SeekEntryResult!5691)

(declare-fun e!331283 () SeekEntryResult!5691)

(assert (=> b!575742 (= e!331285 e!331283)))

(declare-fun d!85195 () Bool)

(declare-fun lt!263467 () SeekEntryResult!5691)

(assert (=> d!85195 (and (or (is-Undefined!5691 lt!263467) (not (is-Found!5691 lt!263467)) (and (bvsge (index!24992 lt!263467) #b00000000000000000000000000000000) (bvslt (index!24992 lt!263467) (size!17599 a!3118)))) (or (is-Undefined!5691 lt!263467) (is-Found!5691 lt!263467) (not (is-MissingZero!5691 lt!263467)) (and (bvsge (index!24991 lt!263467) #b00000000000000000000000000000000) (bvslt (index!24991 lt!263467) (size!17599 a!3118)))) (or (is-Undefined!5691 lt!263467) (is-Found!5691 lt!263467) (is-MissingZero!5691 lt!263467) (not (is-MissingVacant!5691 lt!263467)) (and (bvsge (index!24994 lt!263467) #b00000000000000000000000000000000) (bvslt (index!24994 lt!263467) (size!17599 a!3118)))) (or (is-Undefined!5691 lt!263467) (ite (is-Found!5691 lt!263467) (= (select (arr!17235 a!3118) (index!24992 lt!263467)) (select (arr!17235 a!3118) j!142)) (ite (is-MissingZero!5691 lt!263467) (= (select (arr!17235 a!3118) (index!24991 lt!263467)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5691 lt!263467) (= (select (arr!17235 a!3118) (index!24994 lt!263467)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!331284 () SeekEntryResult!5691)

(assert (=> d!85195 (= lt!263467 e!331284)))

(declare-fun c!66100 () Bool)

(declare-fun lt!263468 () SeekEntryResult!5691)

(assert (=> d!85195 (= c!66100 (and (is-Intermediate!5691 lt!263468) (undefined!6503 lt!263468)))))

(assert (=> d!85195 (= lt!263468 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17235 a!3118) j!142) mask!3119) (select (arr!17235 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!85195 (validMask!0 mask!3119)))

(assert (=> d!85195 (= (seekEntryOrOpen!0 (select (arr!17235 a!3118) j!142) a!3118 mask!3119) lt!263467)))

(declare-fun b!575743 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35913 (_ BitVec 32)) SeekEntryResult!5691)

(assert (=> b!575743 (= e!331283 (seekKeyOrZeroReturnVacant!0 (x!53911 lt!263468) (index!24993 lt!263468) (index!24993 lt!263468) (select (arr!17235 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575744 () Bool)

(assert (=> b!575744 (= e!331285 (Found!5691 (index!24993 lt!263468)))))

(declare-fun b!575745 () Bool)

(assert (=> b!575745 (= e!331284 e!331285)))

(assert (=> b!575745 (= lt!263466 (select (arr!17235 a!3118) (index!24993 lt!263468)))))

(declare-fun c!66099 () Bool)

(assert (=> b!575745 (= c!66099 (= lt!263466 (select (arr!17235 a!3118) j!142)))))

(declare-fun b!575746 () Bool)

(assert (=> b!575746 (= e!331284 Undefined!5691)))

(declare-fun b!575747 () Bool)

(assert (=> b!575747 (= e!331283 (MissingZero!5691 (index!24993 lt!263468)))))

(assert (= (and d!85195 c!66100) b!575746))

(assert (= (and d!85195 (not c!66100)) b!575745))

(assert (= (and b!575745 c!66099) b!575744))

(assert (= (and b!575745 (not c!66099)) b!575742))

(assert (= (and b!575742 c!66101) b!575747))

(assert (= (and b!575742 (not c!66101)) b!575743))

(assert (=> d!85195 m!554627))

(assert (=> d!85195 m!554637))

(assert (=> d!85195 m!554623))

(declare-fun m!554763 () Bool)

(assert (=> d!85195 m!554763))

(declare-fun m!554765 () Bool)

(assert (=> d!85195 m!554765))

(declare-fun m!554767 () Bool)

(assert (=> d!85195 m!554767))

(declare-fun m!554769 () Bool)

(assert (=> d!85195 m!554769))

(assert (=> d!85195 m!554623))

(assert (=> d!85195 m!554637))

(assert (=> b!575743 m!554623))

(declare-fun m!554771 () Bool)

(assert (=> b!575743 m!554771))

(declare-fun m!554773 () Bool)

(assert (=> b!575745 m!554773))

(assert (=> b!575614 d!85195))

(declare-fun b!575748 () Bool)

(declare-fun c!66104 () Bool)

(declare-fun lt!263469 () (_ BitVec 64))

(assert (=> b!575748 (= c!66104 (= lt!263469 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331288 () SeekEntryResult!5691)

(declare-fun e!331286 () SeekEntryResult!5691)

(assert (=> b!575748 (= e!331288 e!331286)))

(declare-fun d!85207 () Bool)

(declare-fun lt!263470 () SeekEntryResult!5691)

(assert (=> d!85207 (and (or (is-Undefined!5691 lt!263470) (not (is-Found!5691 lt!263470)) (and (bvsge (index!24992 lt!263470) #b00000000000000000000000000000000) (bvslt (index!24992 lt!263470) (size!17599 a!3118)))) (or (is-Undefined!5691 lt!263470) (is-Found!5691 lt!263470) (not (is-MissingZero!5691 lt!263470)) (and (bvsge (index!24991 lt!263470) #b00000000000000000000000000000000) (bvslt (index!24991 lt!263470) (size!17599 a!3118)))) (or (is-Undefined!5691 lt!263470) (is-Found!5691 lt!263470) (is-MissingZero!5691 lt!263470) (not (is-MissingVacant!5691 lt!263470)) (and (bvsge (index!24994 lt!263470) #b00000000000000000000000000000000) (bvslt (index!24994 lt!263470) (size!17599 a!3118)))) (or (is-Undefined!5691 lt!263470) (ite (is-Found!5691 lt!263470) (= (select (arr!17235 a!3118) (index!24992 lt!263470)) k!1914) (ite (is-MissingZero!5691 lt!263470) (= (select (arr!17235 a!3118) (index!24991 lt!263470)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5691 lt!263470) (= (select (arr!17235 a!3118) (index!24994 lt!263470)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!331287 () SeekEntryResult!5691)

(assert (=> d!85207 (= lt!263470 e!331287)))

(declare-fun c!66103 () Bool)

(declare-fun lt!263471 () SeekEntryResult!5691)

(assert (=> d!85207 (= c!66103 (and (is-Intermediate!5691 lt!263471) (undefined!6503 lt!263471)))))

(assert (=> d!85207 (= lt!263471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!85207 (validMask!0 mask!3119)))

(assert (=> d!85207 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!263470)))

(declare-fun b!575749 () Bool)

(assert (=> b!575749 (= e!331286 (seekKeyOrZeroReturnVacant!0 (x!53911 lt!263471) (index!24993 lt!263471) (index!24993 lt!263471) k!1914 a!3118 mask!3119))))

(declare-fun b!575750 () Bool)

(assert (=> b!575750 (= e!331288 (Found!5691 (index!24993 lt!263471)))))

(declare-fun b!575751 () Bool)

(assert (=> b!575751 (= e!331287 e!331288)))

(assert (=> b!575751 (= lt!263469 (select (arr!17235 a!3118) (index!24993 lt!263471)))))

(declare-fun c!66102 () Bool)

(assert (=> b!575751 (= c!66102 (= lt!263469 k!1914))))

(declare-fun b!575752 () Bool)

(assert (=> b!575752 (= e!331287 Undefined!5691)))

(declare-fun b!575753 () Bool)

(assert (=> b!575753 (= e!331286 (MissingZero!5691 (index!24993 lt!263471)))))

(assert (= (and d!85207 c!66103) b!575752))

(assert (= (and d!85207 (not c!66103)) b!575751))

(assert (= (and b!575751 c!66102) b!575750))

(assert (= (and b!575751 (not c!66102)) b!575748))

(assert (= (and b!575748 c!66104) b!575753))

(assert (= (and b!575748 (not c!66104)) b!575749))

(assert (=> d!85207 m!554627))

(declare-fun m!554775 () Bool)

(assert (=> d!85207 m!554775))

(declare-fun m!554777 () Bool)

(assert (=> d!85207 m!554777))

(declare-fun m!554779 () Bool)

(assert (=> d!85207 m!554779))

(declare-fun m!554781 () Bool)

(assert (=> d!85207 m!554781))

(declare-fun m!554783 () Bool)

(assert (=> d!85207 m!554783))

(assert (=> d!85207 m!554775))

(declare-fun m!554785 () Bool)

(assert (=> b!575749 m!554785))

(declare-fun m!554787 () Bool)

(assert (=> b!575751 m!554787))

(assert (=> b!575615 d!85207))

(declare-fun d!85209 () Bool)

(declare-fun res!364276 () Bool)

(declare-fun e!331293 () Bool)

(assert (=> d!85209 (=> res!364276 e!331293)))

(assert (=> d!85209 (= res!364276 (= (select (arr!17235 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!85209 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!331293)))

(declare-fun b!575758 () Bool)

(declare-fun e!331294 () Bool)

(assert (=> b!575758 (= e!331293 e!331294)))

(declare-fun res!364277 () Bool)

(assert (=> b!575758 (=> (not res!364277) (not e!331294))))

(assert (=> b!575758 (= res!364277 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17599 a!3118)))))

(declare-fun b!575759 () Bool)

(assert (=> b!575759 (= e!331294 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85209 (not res!364276)) b!575758))

(assert (= (and b!575758 res!364277) b!575759))

(declare-fun m!554789 () Bool)

(assert (=> d!85209 m!554789))

(declare-fun m!554791 () Bool)

(assert (=> b!575759 m!554791))

(assert (=> b!575610 d!85209))

(declare-fun b!575816 () Bool)

(declare-fun e!331329 () Bool)

(declare-fun e!331327 () Bool)

(assert (=> b!575816 (= e!331329 e!331327)))

(declare-fun lt!263494 () (_ BitVec 64))

(assert (=> b!575816 (= lt!263494 (select (arr!17235 a!3118) j!142))))

(declare-fun lt!263492 () Unit!18084)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35913 (_ BitVec 64) (_ BitVec 32)) Unit!18084)

(assert (=> b!575816 (= lt!263492 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!263494 j!142))))

(assert (=> b!575816 (arrayContainsKey!0 a!3118 lt!263494 #b00000000000000000000000000000000)))

(declare-fun lt!263493 () Unit!18084)

(assert (=> b!575816 (= lt!263493 lt!263492)))

(declare-fun res!364294 () Bool)

(assert (=> b!575816 (= res!364294 (= (seekEntryOrOpen!0 (select (arr!17235 a!3118) j!142) a!3118 mask!3119) (Found!5691 j!142)))))

(assert (=> b!575816 (=> (not res!364294) (not e!331327))))

(declare-fun call!32720 () Bool)

(declare-fun bm!32717 () Bool)

(assert (=> bm!32717 (= call!32720 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!575817 () Bool)

(assert (=> b!575817 (= e!331327 call!32720)))

(declare-fun b!575818 () Bool)

(assert (=> b!575818 (= e!331329 call!32720)))

(declare-fun b!575819 () Bool)

(declare-fun e!331328 () Bool)

(assert (=> b!575819 (= e!331328 e!331329)))

(declare-fun c!66125 () Bool)

(assert (=> b!575819 (= c!66125 (validKeyInArray!0 (select (arr!17235 a!3118) j!142)))))

(declare-fun d!85211 () Bool)

(declare-fun res!364295 () Bool)

(assert (=> d!85211 (=> res!364295 e!331328)))

(assert (=> d!85211 (= res!364295 (bvsge j!142 (size!17599 a!3118)))))

(assert (=> d!85211 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!331328)))

(assert (= (and d!85211 (not res!364295)) b!575819))

(assert (= (and b!575819 c!66125) b!575816))

(assert (= (and b!575819 (not c!66125)) b!575818))

(assert (= (and b!575816 res!364294) b!575817))

(assert (= (or b!575817 b!575818) bm!32717))

(assert (=> b!575816 m!554623))

(declare-fun m!554809 () Bool)

(assert (=> b!575816 m!554809))

(declare-fun m!554811 () Bool)

(assert (=> b!575816 m!554811))

(assert (=> b!575816 m!554623))

(assert (=> b!575816 m!554655))

(declare-fun m!554813 () Bool)

(assert (=> bm!32717 m!554813))

(assert (=> b!575819 m!554623))

(assert (=> b!575819 m!554623))

(assert (=> b!575819 m!554625))

(assert (=> b!575611 d!85211))

(declare-fun d!85217 () Bool)

(assert (=> d!85217 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!263506 () Unit!18084)

(declare-fun choose!38 (array!35913 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18084)

(assert (=> d!85217 (= lt!263506 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!85217 (validMask!0 mask!3119)))

(assert (=> d!85217 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!263506)))

(declare-fun bs!17797 () Bool)

(assert (= bs!17797 d!85217))

(assert (=> bs!17797 m!554649))

(declare-fun m!554829 () Bool)

(assert (=> bs!17797 m!554829))

(assert (=> bs!17797 m!554627))

(assert (=> b!575611 d!85217))

(declare-fun d!85223 () Bool)

(assert (=> d!85223 (= (validKeyInArray!0 (select (arr!17235 a!3118) j!142)) (and (not (= (select (arr!17235 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17235 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!575606 d!85223))

(declare-fun b!575846 () Bool)

(declare-fun e!331348 () Bool)

(declare-fun call!32724 () Bool)

(assert (=> b!575846 (= e!331348 call!32724)))

(declare-fun b!575847 () Bool)

(assert (=> b!575847 (= e!331348 call!32724)))

(declare-fun d!85231 () Bool)

(declare-fun res!364307 () Bool)

(declare-fun e!331347 () Bool)

(assert (=> d!85231 (=> res!364307 e!331347)))

(assert (=> d!85231 (= res!364307 (bvsge #b00000000000000000000000000000000 (size!17599 a!3118)))))

(assert (=> d!85231 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11365) e!331347)))

(declare-fun b!575848 () Bool)

(declare-fun e!331350 () Bool)

(assert (=> b!575848 (= e!331350 e!331348)))

(declare-fun c!66135 () Bool)

(assert (=> b!575848 (= c!66135 (validKeyInArray!0 (select (arr!17235 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32721 () Bool)

(assert (=> bm!32721 (= call!32724 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66135 (Cons!11364 (select (arr!17235 a!3118) #b00000000000000000000000000000000) Nil!11365) Nil!11365)))))

(declare-fun b!575849 () Bool)

(declare-fun e!331349 () Bool)

(declare-fun contains!2899 (List!11368 (_ BitVec 64)) Bool)

(assert (=> b!575849 (= e!331349 (contains!2899 Nil!11365 (select (arr!17235 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!575850 () Bool)

(assert (=> b!575850 (= e!331347 e!331350)))

(declare-fun res!364306 () Bool)

(assert (=> b!575850 (=> (not res!364306) (not e!331350))))

(assert (=> b!575850 (= res!364306 (not e!331349))))

(declare-fun res!364305 () Bool)

(assert (=> b!575850 (=> (not res!364305) (not e!331349))))

(assert (=> b!575850 (= res!364305 (validKeyInArray!0 (select (arr!17235 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!85231 (not res!364307)) b!575850))

(assert (= (and b!575850 res!364305) b!575849))

(assert (= (and b!575850 res!364306) b!575848))

(assert (= (and b!575848 c!66135) b!575846))

(assert (= (and b!575848 (not c!66135)) b!575847))

(assert (= (or b!575846 b!575847) bm!32721))

(assert (=> b!575848 m!554789))

(assert (=> b!575848 m!554789))

(declare-fun m!554851 () Bool)

(assert (=> b!575848 m!554851))

(assert (=> bm!32721 m!554789))

(declare-fun m!554853 () Bool)

(assert (=> bm!32721 m!554853))

(assert (=> b!575849 m!554789))

(assert (=> b!575849 m!554789))

(declare-fun m!554855 () Bool)

(assert (=> b!575849 m!554855))

(assert (=> b!575850 m!554789))

(assert (=> b!575850 m!554789))

(assert (=> b!575850 m!554851))

(assert (=> b!575612 d!85231))

(declare-fun b!575925 () Bool)

(declare-fun e!331393 () SeekEntryResult!5691)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575925 (= e!331393 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!263400 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17235 a!3118) i!1132 k!1914) j!142) (array!35914 (store (arr!17235 a!3118) i!1132 k!1914) (size!17599 a!3118)) mask!3119))))

(declare-fun b!575926 () Bool)

(declare-fun e!331395 () SeekEntryResult!5691)

(assert (=> b!575926 (= e!331395 (Intermediate!5691 true lt!263400 #b00000000000000000000000000000000))))

(declare-fun d!85239 () Bool)

(declare-fun e!331394 () Bool)

(assert (=> d!85239 e!331394))

(declare-fun c!66165 () Bool)

(declare-fun lt!263540 () SeekEntryResult!5691)

(assert (=> d!85239 (= c!66165 (and (is-Intermediate!5691 lt!263540) (undefined!6503 lt!263540)))))

(assert (=> d!85239 (= lt!263540 e!331395)))

(declare-fun c!66163 () Bool)

(assert (=> d!85239 (= c!66163 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!263539 () (_ BitVec 64))

(assert (=> d!85239 (= lt!263539 (select (arr!17235 (array!35914 (store (arr!17235 a!3118) i!1132 k!1914) (size!17599 a!3118))) lt!263400))))

(assert (=> d!85239 (validMask!0 mask!3119)))

(assert (=> d!85239 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263400 (select (store (arr!17235 a!3118) i!1132 k!1914) j!142) (array!35914 (store (arr!17235 a!3118) i!1132 k!1914) (size!17599 a!3118)) mask!3119) lt!263540)))

(declare-fun b!575927 () Bool)

(assert (=> b!575927 (and (bvsge (index!24993 lt!263540) #b00000000000000000000000000000000) (bvslt (index!24993 lt!263540) (size!17599 (array!35914 (store (arr!17235 a!3118) i!1132 k!1914) (size!17599 a!3118)))))))

(declare-fun res!364331 () Bool)

(assert (=> b!575927 (= res!364331 (= (select (arr!17235 (array!35914 (store (arr!17235 a!3118) i!1132 k!1914) (size!17599 a!3118))) (index!24993 lt!263540)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331392 () Bool)

(assert (=> b!575927 (=> res!364331 e!331392)))

(declare-fun b!575928 () Bool)

(assert (=> b!575928 (and (bvsge (index!24993 lt!263540) #b00000000000000000000000000000000) (bvslt (index!24993 lt!263540) (size!17599 (array!35914 (store (arr!17235 a!3118) i!1132 k!1914) (size!17599 a!3118)))))))

(declare-fun res!364330 () Bool)

(assert (=> b!575928 (= res!364330 (= (select (arr!17235 (array!35914 (store (arr!17235 a!3118) i!1132 k!1914) (size!17599 a!3118))) (index!24993 lt!263540)) (select (store (arr!17235 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!575928 (=> res!364330 e!331392)))

(declare-fun e!331396 () Bool)

(assert (=> b!575928 (= e!331396 e!331392)))

(declare-fun b!575929 () Bool)

(assert (=> b!575929 (= e!331395 e!331393)))

(declare-fun c!66164 () Bool)

(assert (=> b!575929 (= c!66164 (or (= lt!263539 (select (store (arr!17235 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!263539 lt!263539) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!575930 () Bool)

(assert (=> b!575930 (= e!331393 (Intermediate!5691 false lt!263400 #b00000000000000000000000000000000))))

(declare-fun b!575931 () Bool)

(assert (=> b!575931 (= e!331394 (bvsge (x!53911 lt!263540) #b01111111111111111111111111111110))))

(declare-fun b!575932 () Bool)

(assert (=> b!575932 (= e!331394 e!331396)))

(declare-fun res!364329 () Bool)

(assert (=> b!575932 (= res!364329 (and (is-Intermediate!5691 lt!263540) (not (undefined!6503 lt!263540)) (bvslt (x!53911 lt!263540) #b01111111111111111111111111111110) (bvsge (x!53911 lt!263540) #b00000000000000000000000000000000) (bvsge (x!53911 lt!263540) #b00000000000000000000000000000000)))))

(assert (=> b!575932 (=> (not res!364329) (not e!331396))))

(declare-fun b!575933 () Bool)

(assert (=> b!575933 (and (bvsge (index!24993 lt!263540) #b00000000000000000000000000000000) (bvslt (index!24993 lt!263540) (size!17599 (array!35914 (store (arr!17235 a!3118) i!1132 k!1914) (size!17599 a!3118)))))))

(assert (=> b!575933 (= e!331392 (= (select (arr!17235 (array!35914 (store (arr!17235 a!3118) i!1132 k!1914) (size!17599 a!3118))) (index!24993 lt!263540)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!85239 c!66163) b!575926))

(assert (= (and d!85239 (not c!66163)) b!575929))

(assert (= (and b!575929 c!66164) b!575930))

(assert (= (and b!575929 (not c!66164)) b!575925))

(assert (= (and d!85239 c!66165) b!575931))

(assert (= (and d!85239 (not c!66165)) b!575932))

(assert (= (and b!575932 res!364329) b!575928))

(assert (= (and b!575928 (not res!364330)) b!575927))

(assert (= (and b!575927 (not res!364331)) b!575933))

(declare-fun m!554885 () Bool)

(assert (=> b!575933 m!554885))

(declare-fun m!554887 () Bool)

(assert (=> d!85239 m!554887))

(assert (=> d!85239 m!554627))

(declare-fun m!554889 () Bool)

(assert (=> b!575925 m!554889))

(assert (=> b!575925 m!554889))

(assert (=> b!575925 m!554639))

(declare-fun m!554891 () Bool)

(assert (=> b!575925 m!554891))

(assert (=> b!575927 m!554885))

(assert (=> b!575928 m!554885))

(assert (=> b!575607 d!85239))

(declare-fun b!575936 () Bool)

(declare-fun e!331400 () SeekEntryResult!5691)

(assert (=> b!575936 (= e!331400 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!263399 #b00000000000000000000000000000000 mask!3119) (select (arr!17235 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575937 () Bool)

(declare-fun e!331402 () SeekEntryResult!5691)

(assert (=> b!575937 (= e!331402 (Intermediate!5691 true lt!263399 #b00000000000000000000000000000000))))

(declare-fun d!85247 () Bool)

(declare-fun e!331401 () Bool)

(assert (=> d!85247 e!331401))

(declare-fun c!66168 () Bool)

(declare-fun lt!263548 () SeekEntryResult!5691)

(assert (=> d!85247 (= c!66168 (and (is-Intermediate!5691 lt!263548) (undefined!6503 lt!263548)))))

(assert (=> d!85247 (= lt!263548 e!331402)))

(declare-fun c!66166 () Bool)

(assert (=> d!85247 (= c!66166 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!263547 () (_ BitVec 64))

(assert (=> d!85247 (= lt!263547 (select (arr!17235 a!3118) lt!263399))))

(assert (=> d!85247 (validMask!0 mask!3119)))

(assert (=> d!85247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263399 (select (arr!17235 a!3118) j!142) a!3118 mask!3119) lt!263548)))

(declare-fun b!575938 () Bool)

(assert (=> b!575938 (and (bvsge (index!24993 lt!263548) #b00000000000000000000000000000000) (bvslt (index!24993 lt!263548) (size!17599 a!3118)))))

(declare-fun res!364336 () Bool)

(assert (=> b!575938 (= res!364336 (= (select (arr!17235 a!3118) (index!24993 lt!263548)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331399 () Bool)

(assert (=> b!575938 (=> res!364336 e!331399)))

(declare-fun b!575939 () Bool)

(assert (=> b!575939 (and (bvsge (index!24993 lt!263548) #b00000000000000000000000000000000) (bvslt (index!24993 lt!263548) (size!17599 a!3118)))))

(declare-fun res!364335 () Bool)

(assert (=> b!575939 (= res!364335 (= (select (arr!17235 a!3118) (index!24993 lt!263548)) (select (arr!17235 a!3118) j!142)))))

(assert (=> b!575939 (=> res!364335 e!331399)))

(declare-fun e!331403 () Bool)

(assert (=> b!575939 (= e!331403 e!331399)))

(declare-fun b!575940 () Bool)

(assert (=> b!575940 (= e!331402 e!331400)))

(declare-fun c!66167 () Bool)

(assert (=> b!575940 (= c!66167 (or (= lt!263547 (select (arr!17235 a!3118) j!142)) (= (bvadd lt!263547 lt!263547) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!575941 () Bool)

(assert (=> b!575941 (= e!331400 (Intermediate!5691 false lt!263399 #b00000000000000000000000000000000))))

(declare-fun b!575942 () Bool)

(assert (=> b!575942 (= e!331401 (bvsge (x!53911 lt!263548) #b01111111111111111111111111111110))))

(declare-fun b!575943 () Bool)

(assert (=> b!575943 (= e!331401 e!331403)))

(declare-fun res!364334 () Bool)

(assert (=> b!575943 (= res!364334 (and (is-Intermediate!5691 lt!263548) (not (undefined!6503 lt!263548)) (bvslt (x!53911 lt!263548) #b01111111111111111111111111111110) (bvsge (x!53911 lt!263548) #b00000000000000000000000000000000) (bvsge (x!53911 lt!263548) #b00000000000000000000000000000000)))))

(assert (=> b!575943 (=> (not res!364334) (not e!331403))))

(declare-fun b!575944 () Bool)

(assert (=> b!575944 (and (bvsge (index!24993 lt!263548) #b00000000000000000000000000000000) (bvslt (index!24993 lt!263548) (size!17599 a!3118)))))

(assert (=> b!575944 (= e!331399 (= (select (arr!17235 a!3118) (index!24993 lt!263548)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!85247 c!66166) b!575937))

(assert (= (and d!85247 (not c!66166)) b!575940))

(assert (= (and b!575940 c!66167) b!575941))

(assert (= (and b!575940 (not c!66167)) b!575936))

(assert (= (and d!85247 c!66168) b!575942))

(assert (= (and d!85247 (not c!66168)) b!575943))

(assert (= (and b!575943 res!364334) b!575939))

(assert (= (and b!575939 (not res!364335)) b!575938))

(assert (= (and b!575938 (not res!364336)) b!575944))

(declare-fun m!554895 () Bool)

(assert (=> b!575944 m!554895))

(declare-fun m!554897 () Bool)

(assert (=> d!85247 m!554897))

(assert (=> d!85247 m!554627))

(declare-fun m!554899 () Bool)

(assert (=> b!575936 m!554899))

(assert (=> b!575936 m!554899))

(assert (=> b!575936 m!554623))

(declare-fun m!554901 () Bool)

(assert (=> b!575936 m!554901))

(assert (=> b!575938 m!554895))

(assert (=> b!575939 m!554895))

(assert (=> b!575607 d!85247))

(declare-fun d!85257 () Bool)

(declare-fun lt!263559 () (_ BitVec 32))

(declare-fun lt!263558 () (_ BitVec 32))

(assert (=> d!85257 (= lt!263559 (bvmul (bvxor lt!263558 (bvlshr lt!263558 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85257 (= lt!263558 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17235 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17235 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85257 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!364339 (let ((h!12408 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17235 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17235 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53919 (bvmul (bvxor h!12408 (bvlshr h!12408 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53919 (bvlshr x!53919 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!364339 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!364339 #b00000000000000000000000000000000))))))

(assert (=> d!85257 (= (toIndex!0 (select (store (arr!17235 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!263559 (bvlshr lt!263559 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!575607 d!85257))

(declare-fun d!85265 () Bool)

(declare-fun lt!263561 () (_ BitVec 32))

(declare-fun lt!263560 () (_ BitVec 32))

(assert (=> d!85265 (= lt!263561 (bvmul (bvxor lt!263560 (bvlshr lt!263560 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85265 (= lt!263560 ((_ extract 31 0) (bvand (bvxor (select (arr!17235 a!3118) j!142) (bvlshr (select (arr!17235 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85265 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!364339 (let ((h!12408 ((_ extract 31 0) (bvand (bvxor (select (arr!17235 a!3118) j!142) (bvlshr (select (arr!17235 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53919 (bvmul (bvxor h!12408 (bvlshr h!12408 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53919 (bvlshr x!53919 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!364339 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!364339 #b00000000000000000000000000000000))))))

(assert (=> d!85265 (= (toIndex!0 (select (arr!17235 a!3118) j!142) mask!3119) (bvand (bvxor lt!263561 (bvlshr lt!263561 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!575607 d!85265))

(declare-fun d!85267 () Bool)

(assert (=> d!85267 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52814 d!85267))

(declare-fun d!85275 () Bool)

(assert (=> d!85275 (= (array_inv!13009 a!3118) (bvsge (size!17599 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52814 d!85275))

(declare-fun d!85277 () Bool)

(assert (=> d!85277 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!575613 d!85277))

(declare-fun b!575963 () Bool)

(declare-fun e!331420 () Bool)

(declare-fun e!331418 () Bool)

(assert (=> b!575963 (= e!331420 e!331418)))

(declare-fun lt!263567 () (_ BitVec 64))

(assert (=> b!575963 (= lt!263567 (select (arr!17235 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!263565 () Unit!18084)

(assert (=> b!575963 (= lt!263565 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!263567 #b00000000000000000000000000000000))))

(assert (=> b!575963 (arrayContainsKey!0 a!3118 lt!263567 #b00000000000000000000000000000000)))

(declare-fun lt!263566 () Unit!18084)

(assert (=> b!575963 (= lt!263566 lt!263565)))

(declare-fun res!364348 () Bool)

(assert (=> b!575963 (= res!364348 (= (seekEntryOrOpen!0 (select (arr!17235 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5691 #b00000000000000000000000000000000)))))

(assert (=> b!575963 (=> (not res!364348) (not e!331418))))

(declare-fun bm!32723 () Bool)

(declare-fun call!32726 () Bool)

(assert (=> bm!32723 (= call!32726 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!575964 () Bool)

(assert (=> b!575964 (= e!331418 call!32726)))

(declare-fun b!575965 () Bool)

(assert (=> b!575965 (= e!331420 call!32726)))

(declare-fun b!575966 () Bool)

(declare-fun e!331419 () Bool)

(assert (=> b!575966 (= e!331419 e!331420)))

(declare-fun c!66173 () Bool)

(assert (=> b!575966 (= c!66173 (validKeyInArray!0 (select (arr!17235 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!85279 () Bool)

(declare-fun res!364349 () Bool)

(assert (=> d!85279 (=> res!364349 e!331419)))

(assert (=> d!85279 (= res!364349 (bvsge #b00000000000000000000000000000000 (size!17599 a!3118)))))

(assert (=> d!85279 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!331419)))

(assert (= (and d!85279 (not res!364349)) b!575966))

(assert (= (and b!575966 c!66173) b!575963))

(assert (= (and b!575966 (not c!66173)) b!575965))

(assert (= (and b!575963 res!364348) b!575964))

(assert (= (or b!575964 b!575965) bm!32723))

(assert (=> b!575963 m!554789))

(declare-fun m!554927 () Bool)

(assert (=> b!575963 m!554927))

(declare-fun m!554929 () Bool)

(assert (=> b!575963 m!554929))

(assert (=> b!575963 m!554789))

(declare-fun m!554931 () Bool)

(assert (=> b!575963 m!554931))

(declare-fun m!554933 () Bool)

(assert (=> bm!32723 m!554933))

(assert (=> b!575966 m!554789))

(assert (=> b!575966 m!554789))

(assert (=> b!575966 m!554851))

(assert (=> b!575608 d!85279))

(push 1)

