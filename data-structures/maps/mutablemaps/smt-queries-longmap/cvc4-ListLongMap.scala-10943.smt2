; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128042 () Bool)

(assert start!128042)

(declare-fun b!1503683 () Bool)

(declare-fun res!1024638 () Bool)

(declare-fun e!840686 () Bool)

(assert (=> b!1503683 (=> (not res!1024638) (not e!840686))))

(declare-datatypes ((array!100270 0))(
  ( (array!100271 (arr!48387 (Array (_ BitVec 32) (_ BitVec 64))) (size!48938 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100270)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503683 (= res!1024638 (validKeyInArray!0 (select (arr!48387 a!2850) i!996)))))

(declare-fun b!1503685 () Bool)

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1503685 (= e!840686 (or (bvslt (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110)))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun lt!653521 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503685 (= lt!653521 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503686 () Bool)

(declare-fun res!1024636 () Bool)

(assert (=> b!1503686 (=> (not res!1024636) (not e!840686))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503686 (= res!1024636 (not (= (select (arr!48387 a!2850) index!625) (select (arr!48387 a!2850) j!87))))))

(declare-fun b!1503687 () Bool)

(declare-fun res!1024637 () Bool)

(assert (=> b!1503687 (=> (not res!1024637) (not e!840686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100270 (_ BitVec 32)) Bool)

(assert (=> b!1503687 (= res!1024637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503688 () Bool)

(declare-fun res!1024641 () Bool)

(assert (=> b!1503688 (=> (not res!1024641) (not e!840686))))

(declare-datatypes ((List!35059 0))(
  ( (Nil!35056) (Cons!35055 (h!36453 (_ BitVec 64)) (t!49760 List!35059)) )
))
(declare-fun arrayNoDuplicates!0 (array!100270 (_ BitVec 32) List!35059) Bool)

(assert (=> b!1503688 (= res!1024641 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35056))))

(declare-fun b!1503689 () Bool)

(declare-fun res!1024634 () Bool)

(assert (=> b!1503689 (=> (not res!1024634) (not e!840686))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503689 (= res!1024634 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48938 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48938 a!2850)) (= (select (arr!48387 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48387 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48938 a!2850))))))

(declare-fun b!1503690 () Bool)

(declare-fun res!1024640 () Bool)

(assert (=> b!1503690 (=> (not res!1024640) (not e!840686))))

(declare-datatypes ((SeekEntryResult!12604 0))(
  ( (MissingZero!12604 (index!52807 (_ BitVec 32))) (Found!12604 (index!52808 (_ BitVec 32))) (Intermediate!12604 (undefined!13416 Bool) (index!52809 (_ BitVec 32)) (x!134497 (_ BitVec 32))) (Undefined!12604) (MissingVacant!12604 (index!52810 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100270 (_ BitVec 32)) SeekEntryResult!12604)

(assert (=> b!1503690 (= res!1024640 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48387 a!2850) j!87) a!2850 mask!2661) (Found!12604 j!87)))))

(declare-fun b!1503691 () Bool)

(declare-fun res!1024635 () Bool)

(assert (=> b!1503691 (=> (not res!1024635) (not e!840686))))

(assert (=> b!1503691 (= res!1024635 (and (= (size!48938 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48938 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48938 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503684 () Bool)

(declare-fun res!1024633 () Bool)

(assert (=> b!1503684 (=> (not res!1024633) (not e!840686))))

(assert (=> b!1503684 (= res!1024633 (validKeyInArray!0 (select (arr!48387 a!2850) j!87)))))

(declare-fun res!1024639 () Bool)

(assert (=> start!128042 (=> (not res!1024639) (not e!840686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128042 (= res!1024639 (validMask!0 mask!2661))))

(assert (=> start!128042 e!840686))

(assert (=> start!128042 true))

(declare-fun array_inv!37332 (array!100270) Bool)

(assert (=> start!128042 (array_inv!37332 a!2850)))

(assert (= (and start!128042 res!1024639) b!1503691))

(assert (= (and b!1503691 res!1024635) b!1503683))

(assert (= (and b!1503683 res!1024638) b!1503684))

(assert (= (and b!1503684 res!1024633) b!1503687))

(assert (= (and b!1503687 res!1024637) b!1503688))

(assert (= (and b!1503688 res!1024641) b!1503689))

(assert (= (and b!1503689 res!1024634) b!1503690))

(assert (= (and b!1503690 res!1024640) b!1503686))

(assert (= (and b!1503686 res!1024636) b!1503685))

(declare-fun m!1387001 () Bool)

(assert (=> b!1503687 m!1387001))

(declare-fun m!1387003 () Bool)

(assert (=> b!1503685 m!1387003))

(declare-fun m!1387005 () Bool)

(assert (=> b!1503686 m!1387005))

(declare-fun m!1387007 () Bool)

(assert (=> b!1503686 m!1387007))

(declare-fun m!1387009 () Bool)

(assert (=> start!128042 m!1387009))

(declare-fun m!1387011 () Bool)

(assert (=> start!128042 m!1387011))

(assert (=> b!1503684 m!1387007))

(assert (=> b!1503684 m!1387007))

(declare-fun m!1387013 () Bool)

(assert (=> b!1503684 m!1387013))

(assert (=> b!1503690 m!1387007))

(assert (=> b!1503690 m!1387007))

(declare-fun m!1387015 () Bool)

(assert (=> b!1503690 m!1387015))

(declare-fun m!1387017 () Bool)

(assert (=> b!1503688 m!1387017))

(declare-fun m!1387019 () Bool)

(assert (=> b!1503683 m!1387019))

(assert (=> b!1503683 m!1387019))

(declare-fun m!1387021 () Bool)

(assert (=> b!1503683 m!1387021))

(declare-fun m!1387023 () Bool)

(assert (=> b!1503689 m!1387023))

(declare-fun m!1387025 () Bool)

(assert (=> b!1503689 m!1387025))

(declare-fun m!1387027 () Bool)

(assert (=> b!1503689 m!1387027))

(push 1)

(assert (not b!1503685))

(assert (not b!1503688))

(assert (not b!1503683))

(assert (not start!128042))

(assert (not b!1503687))

(assert (not b!1503690))

(assert (not b!1503684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157737 () Bool)

(assert (=> d!157737 (= (validKeyInArray!0 (select (arr!48387 a!2850) j!87)) (and (not (= (select (arr!48387 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48387 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1503684 d!157737))

(declare-fun d!157741 () Bool)

(assert (=> d!157741 (= (validKeyInArray!0 (select (arr!48387 a!2850) i!996)) (and (not (= (select (arr!48387 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48387 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1503683 d!157741))

(declare-fun b!1503702 () Bool)

(declare-fun e!840698 () Bool)

(declare-fun call!68106 () Bool)

(assert (=> b!1503702 (= e!840698 call!68106)))

(declare-fun b!1503703 () Bool)

(assert (=> b!1503703 (= e!840698 call!68106)))

(declare-fun d!157743 () Bool)

(declare-fun res!1024650 () Bool)

(declare-fun e!840697 () Bool)

(assert (=> d!157743 (=> res!1024650 e!840697)))

(assert (=> d!157743 (= res!1024650 (bvsge #b00000000000000000000000000000000 (size!48938 a!2850)))))

(assert (=> d!157743 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35056) e!840697)))

(declare-fun bm!68103 () Bool)

(declare-fun c!139064 () Bool)

(assert (=> bm!68103 (= call!68106 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139064 (Cons!35055 (select (arr!48387 a!2850) #b00000000000000000000000000000000) Nil!35056) Nil!35056)))))

(declare-fun b!1503704 () Bool)

(declare-fun e!840696 () Bool)

(assert (=> b!1503704 (= e!840696 e!840698)))

(assert (=> b!1503704 (= c!139064 (validKeyInArray!0 (select (arr!48387 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1503705 () Bool)

(declare-fun e!840695 () Bool)

(declare-fun contains!9956 (List!35059 (_ BitVec 64)) Bool)

(assert (=> b!1503705 (= e!840695 (contains!9956 Nil!35056 (select (arr!48387 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1503706 () Bool)

(assert (=> b!1503706 (= e!840697 e!840696)))

(declare-fun res!1024648 () Bool)

(assert (=> b!1503706 (=> (not res!1024648) (not e!840696))))

(assert (=> b!1503706 (= res!1024648 (not e!840695))))

(declare-fun res!1024649 () Bool)

(assert (=> b!1503706 (=> (not res!1024649) (not e!840695))))

(assert (=> b!1503706 (= res!1024649 (validKeyInArray!0 (select (arr!48387 a!2850) #b00000000000000000000000000000000)))))

(assert (= (and d!157743 (not res!1024650)) b!1503706))

(assert (= (and b!1503706 res!1024649) b!1503705))

(assert (= (and b!1503706 res!1024648) b!1503704))

(assert (= (and b!1503704 c!139064) b!1503702))

(assert (= (and b!1503704 (not c!139064)) b!1503703))

(assert (= (or b!1503702 b!1503703) bm!68103))

(declare-fun m!1387031 () Bool)

(assert (=> bm!68103 m!1387031))

(declare-fun m!1387033 () Bool)

(assert (=> bm!68103 m!1387033))

(assert (=> b!1503704 m!1387031))

(assert (=> b!1503704 m!1387031))

(declare-fun m!1387035 () Bool)

(assert (=> b!1503704 m!1387035))

(assert (=> b!1503705 m!1387031))

(assert (=> b!1503705 m!1387031))

(declare-fun m!1387037 () Bool)

(assert (=> b!1503705 m!1387037))

(assert (=> b!1503706 m!1387031))

(assert (=> b!1503706 m!1387031))

(assert (=> b!1503706 m!1387035))

(assert (=> b!1503688 d!157743))

(declare-fun bm!68109 () Bool)

(declare-fun call!68114 () Bool)

(assert (=> bm!68109 (= call!68114 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1503740 () Bool)

(declare-fun e!840725 () Bool)

(assert (=> b!1503740 (= e!840725 call!68114)))

(declare-fun d!157753 () Bool)

(declare-fun res!1024671 () Bool)

(declare-fun e!840727 () Bool)

(assert (=> d!157753 (=> res!1024671 e!840727)))

(assert (=> d!157753 (= res!1024671 (bvsge #b00000000000000000000000000000000 (size!48938 a!2850)))))

(assert (=> d!157753 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!840727)))

(declare-fun b!1503741 () Bool)

(declare-fun e!840726 () Bool)

(assert (=> b!1503741 (= e!840725 e!840726)))

(declare-fun lt!653534 () (_ BitVec 64))

(assert (=> b!1503741 (= lt!653534 (select (arr!48387 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50206 0))(
  ( (Unit!50207) )
))
(declare-fun lt!653536 () Unit!50206)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100270 (_ BitVec 64) (_ BitVec 32)) Unit!50206)

(assert (=> b!1503741 (= lt!653536 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653534 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1503741 (arrayContainsKey!0 a!2850 lt!653534 #b00000000000000000000000000000000)))

(declare-fun lt!653535 () Unit!50206)

(assert (=> b!1503741 (= lt!653535 lt!653536)))

(declare-fun res!1024670 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100270 (_ BitVec 32)) SeekEntryResult!12604)

(assert (=> b!1503741 (= res!1024670 (= (seekEntryOrOpen!0 (select (arr!48387 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12604 #b00000000000000000000000000000000)))))

(assert (=> b!1503741 (=> (not res!1024670) (not e!840726))))

(declare-fun b!1503742 () Bool)

(assert (=> b!1503742 (= e!840726 call!68114)))

(declare-fun b!1503743 () Bool)

(assert (=> b!1503743 (= e!840727 e!840725)))

(declare-fun c!139072 () Bool)

(assert (=> b!1503743 (= c!139072 (validKeyInArray!0 (select (arr!48387 a!2850) #b00000000000000000000000000000000)))))

(assert (= (and d!157753 (not res!1024671)) b!1503743))

(assert (= (and b!1503743 c!139072) b!1503741))

(assert (= (and b!1503743 (not c!139072)) b!1503740))

(assert (= (and b!1503741 res!1024670) b!1503742))

(assert (= (or b!1503742 b!1503740) bm!68109))

(declare-fun m!1387049 () Bool)

(assert (=> bm!68109 m!1387049))

(assert (=> b!1503741 m!1387031))

(declare-fun m!1387051 () Bool)

(assert (=> b!1503741 m!1387051))

(declare-fun m!1387053 () Bool)

(assert (=> b!1503741 m!1387053))

(assert (=> b!1503741 m!1387031))

(declare-fun m!1387055 () Bool)

(assert (=> b!1503741 m!1387055))

(assert (=> b!1503743 m!1387031))

(assert (=> b!1503743 m!1387031))

(assert (=> b!1503743 m!1387035))

(assert (=> b!1503687 d!157753))

(declare-fun d!157759 () Bool)

(assert (=> d!157759 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!128042 d!157759))

(declare-fun d!157763 () Bool)

(assert (=> d!157763 (= (array_inv!37332 a!2850) (bvsge (size!48938 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!128042 d!157763))

(declare-fun d!157765 () Bool)

(declare-fun lt!653548 () (_ BitVec 32))

(assert (=> d!157765 (and (bvsge lt!653548 #b00000000000000000000000000000000) (bvslt lt!653548 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157765 (= lt!653548 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157765 (validMask!0 mask!2661)))

(assert (=> d!157765 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653548)))

(declare-fun bs!43171 () Bool)

(assert (= bs!43171 d!157765))

(declare-fun m!1387073 () Bool)

(assert (=> bs!43171 m!1387073))

(assert (=> bs!43171 m!1387009))

(assert (=> b!1503685 d!157765))

(declare-fun b!1503785 () Bool)

(declare-fun e!840758 () SeekEntryResult!12604)

(assert (=> b!1503785 (= e!840758 (MissingVacant!12604 vacantBefore!10))))

(declare-fun b!1503786 () Bool)

(declare-fun e!840757 () SeekEntryResult!12604)

(assert (=> b!1503786 (= e!840757 (Found!12604 index!625))))

(declare-fun b!1503787 () Bool)

(assert (=> b!1503787 (= e!840758 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48387 a!2850) j!87) a!2850 mask!2661))))

(declare-fun lt!653562 () SeekEntryResult!12604)

(declare-fun d!157769 () Bool)

(assert (=> d!157769 (and (or (is-Undefined!12604 lt!653562) (not (is-Found!12604 lt!653562)) (and (bvsge (index!52808 lt!653562) #b00000000000000000000000000000000) (bvslt (index!52808 lt!653562) (size!48938 a!2850)))) (or (is-Undefined!12604 lt!653562) (is-Found!12604 lt!653562) (not (is-MissingVacant!12604 lt!653562)) (not (= (index!52810 lt!653562) vacantBefore!10)) (and (bvsge (index!52810 lt!653562) #b00000000000000000000000000000000) (bvslt (index!52810 lt!653562) (size!48938 a!2850)))) (or (is-Undefined!12604 lt!653562) (ite (is-Found!12604 lt!653562) (= (select (arr!48387 a!2850) (index!52808 lt!653562)) (select (arr!48387 a!2850) j!87)) (and (is-MissingVacant!12604 lt!653562) (= (index!52810 lt!653562) vacantBefore!10) (= (select (arr!48387 a!2850) (index!52810 lt!653562)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!840756 () SeekEntryResult!12604)

(assert (=> d!157769 (= lt!653562 e!840756)))

(declare-fun c!139087 () Bool)

(assert (=> d!157769 (= c!139087 (bvsge x!647 #b01111111111111111111111111111110))))

(declare-fun lt!653563 () (_ BitVec 64))

(assert (=> d!157769 (= lt!653563 (select (arr!48387 a!2850) index!625))))

(assert (=> d!157769 (validMask!0 mask!2661)))

(assert (=> d!157769 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48387 a!2850) j!87) a!2850 mask!2661) lt!653562)))

(declare-fun b!1503788 () Bool)

(assert (=> b!1503788 (= e!840756 Undefined!12604)))

(declare-fun b!1503789 () Bool)

(assert (=> b!1503789 (= e!840756 e!840757)))

(declare-fun c!139088 () Bool)

(assert (=> b!1503789 (= c!139088 (= lt!653563 (select (arr!48387 a!2850) j!87)))))

(declare-fun b!1503790 () Bool)

(declare-fun c!139086 () Bool)

(assert (=> b!1503790 (= c!139086 (= lt!653563 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1503790 (= e!840757 e!840758)))

(assert (= (and d!157769 c!139087) b!1503788))

(assert (= (and d!157769 (not c!139087)) b!1503789))

(assert (= (and b!1503789 c!139088) b!1503786))

(assert (= (and b!1503789 (not c!139088)) b!1503790))

(assert (= (and b!1503790 c!139086) b!1503785))

(assert (= (and b!1503790 (not c!139086)) b!1503787))

(assert (=> b!1503787 m!1387003))

(assert (=> b!1503787 m!1387003))

(assert (=> b!1503787 m!1387007))

(declare-fun m!1387083 () Bool)

(assert (=> b!1503787 m!1387083))

(declare-fun m!1387085 () Bool)

(assert (=> d!157769 m!1387085))

(declare-fun m!1387087 () Bool)

(assert (=> d!157769 m!1387087))

(assert (=> d!157769 m!1387005))

(assert (=> d!157769 m!1387009))

(assert (=> b!1503690 d!157769))

(push 1)

(assert (not d!157769))

(assert (not b!1503787))

(assert (not bm!68103))

(assert (not b!1503706))

(assert (not b!1503743))

(assert (not b!1503705))

(assert (not d!157765))

(assert (not b!1503704))

(assert (not bm!68109))

(assert (not b!1503741))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

