; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124266 () Bool)

(assert start!124266)

(declare-fun b!1437740 () Bool)

(declare-fun e!811120 () Bool)

(declare-fun e!811119 () Bool)

(assert (=> b!1437740 (= e!811120 e!811119)))

(declare-fun res!970634 () Bool)

(assert (=> b!1437740 (=> (not res!970634) (not e!811119))))

(declare-datatypes ((SeekEntryResult!11437 0))(
  ( (MissingZero!11437 (index!48139 (_ BitVec 32))) (Found!11437 (index!48140 (_ BitVec 32))) (Intermediate!11437 (undefined!12249 Bool) (index!48141 (_ BitVec 32)) (x!129871 (_ BitVec 32))) (Undefined!11437) (MissingVacant!11437 (index!48142 (_ BitVec 32))) )
))
(declare-fun lt!632337 () SeekEntryResult!11437)

(declare-datatypes ((array!97748 0))(
  ( (array!97749 (arr!47162 (Array (_ BitVec 32) (_ BitVec 64))) (size!47713 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97748)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97748 (_ BitVec 32)) SeekEntryResult!11437)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437740 (= res!970634 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47162 a!2862) j!93) mask!2687) (select (arr!47162 a!2862) j!93) a!2862 mask!2687) lt!632337))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1437740 (= lt!632337 (Intermediate!11437 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437741 () Bool)

(declare-fun res!970627 () Bool)

(assert (=> b!1437741 (=> (not res!970627) (not e!811120))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1437741 (= res!970627 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47713 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47713 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47713 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47162 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437742 () Bool)

(declare-fun lt!632338 () (_ BitVec 32))

(assert (=> b!1437742 (= e!811119 (and (bvsge mask!2687 #b00000000000000000000000000000000) (or (bvslt lt!632338 #b00000000000000000000000000000000) (bvsge lt!632338 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1437742 (= lt!632338 (toIndex!0 (select (store (arr!47162 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1437743 () Bool)

(declare-fun res!970633 () Bool)

(assert (=> b!1437743 (=> (not res!970633) (not e!811120))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437743 (= res!970633 (validKeyInArray!0 (select (arr!47162 a!2862) j!93)))))

(declare-fun b!1437744 () Bool)

(declare-fun res!970630 () Bool)

(assert (=> b!1437744 (=> (not res!970630) (not e!811120))))

(declare-datatypes ((List!33843 0))(
  ( (Nil!33840) (Cons!33839 (h!35180 (_ BitVec 64)) (t!48544 List!33843)) )
))
(declare-fun arrayNoDuplicates!0 (array!97748 (_ BitVec 32) List!33843) Bool)

(assert (=> b!1437744 (= res!970630 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33840))))

(declare-fun b!1437746 () Bool)

(declare-fun res!970632 () Bool)

(assert (=> b!1437746 (=> (not res!970632) (not e!811120))))

(assert (=> b!1437746 (= res!970632 (validKeyInArray!0 (select (arr!47162 a!2862) i!1006)))))

(declare-fun b!1437745 () Bool)

(declare-fun res!970631 () Bool)

(assert (=> b!1437745 (=> (not res!970631) (not e!811120))))

(assert (=> b!1437745 (= res!970631 (and (= (size!47713 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47713 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47713 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!970628 () Bool)

(assert (=> start!124266 (=> (not res!970628) (not e!811120))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124266 (= res!970628 (validMask!0 mask!2687))))

(assert (=> start!124266 e!811120))

(assert (=> start!124266 true))

(declare-fun array_inv!36107 (array!97748) Bool)

(assert (=> start!124266 (array_inv!36107 a!2862)))

(declare-fun b!1437747 () Bool)

(declare-fun res!970629 () Bool)

(assert (=> b!1437747 (=> (not res!970629) (not e!811120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97748 (_ BitVec 32)) Bool)

(assert (=> b!1437747 (= res!970629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437748 () Bool)

(declare-fun res!970635 () Bool)

(assert (=> b!1437748 (=> (not res!970635) (not e!811119))))

(assert (=> b!1437748 (= res!970635 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47162 a!2862) j!93) a!2862 mask!2687) lt!632337))))

(assert (= (and start!124266 res!970628) b!1437745))

(assert (= (and b!1437745 res!970631) b!1437746))

(assert (= (and b!1437746 res!970632) b!1437743))

(assert (= (and b!1437743 res!970633) b!1437747))

(assert (= (and b!1437747 res!970629) b!1437744))

(assert (= (and b!1437744 res!970630) b!1437741))

(assert (= (and b!1437741 res!970627) b!1437740))

(assert (= (and b!1437740 res!970634) b!1437748))

(assert (= (and b!1437748 res!970635) b!1437742))

(declare-fun m!1327053 () Bool)

(assert (=> start!124266 m!1327053))

(declare-fun m!1327055 () Bool)

(assert (=> start!124266 m!1327055))

(declare-fun m!1327057 () Bool)

(assert (=> b!1437742 m!1327057))

(declare-fun m!1327059 () Bool)

(assert (=> b!1437742 m!1327059))

(assert (=> b!1437742 m!1327059))

(declare-fun m!1327061 () Bool)

(assert (=> b!1437742 m!1327061))

(declare-fun m!1327063 () Bool)

(assert (=> b!1437740 m!1327063))

(assert (=> b!1437740 m!1327063))

(declare-fun m!1327065 () Bool)

(assert (=> b!1437740 m!1327065))

(assert (=> b!1437740 m!1327065))

(assert (=> b!1437740 m!1327063))

(declare-fun m!1327067 () Bool)

(assert (=> b!1437740 m!1327067))

(declare-fun m!1327069 () Bool)

(assert (=> b!1437744 m!1327069))

(declare-fun m!1327071 () Bool)

(assert (=> b!1437747 m!1327071))

(assert (=> b!1437748 m!1327063))

(assert (=> b!1437748 m!1327063))

(declare-fun m!1327073 () Bool)

(assert (=> b!1437748 m!1327073))

(assert (=> b!1437741 m!1327057))

(declare-fun m!1327075 () Bool)

(assert (=> b!1437741 m!1327075))

(assert (=> b!1437743 m!1327063))

(assert (=> b!1437743 m!1327063))

(declare-fun m!1327077 () Bool)

(assert (=> b!1437743 m!1327077))

(declare-fun m!1327079 () Bool)

(assert (=> b!1437746 m!1327079))

(assert (=> b!1437746 m!1327079))

(declare-fun m!1327081 () Bool)

(assert (=> b!1437746 m!1327081))

(check-sat (not b!1437743) (not b!1437744) (not b!1437747) (not b!1437742) (not b!1437740) (not b!1437746) (not start!124266) (not b!1437748))
(check-sat)
(get-model)

(declare-fun d!154633 () Bool)

(assert (=> d!154633 (= (validKeyInArray!0 (select (arr!47162 a!2862) i!1006)) (and (not (= (select (arr!47162 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47162 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1437746 d!154633))

(declare-fun e!811141 () SeekEntryResult!11437)

(declare-fun b!1437794 () Bool)

(assert (=> b!1437794 (= e!811141 (Intermediate!11437 true (toIndex!0 (select (arr!47162 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1437795 () Bool)

(declare-fun lt!632350 () SeekEntryResult!11437)

(assert (=> b!1437795 (and (bvsge (index!48141 lt!632350) #b00000000000000000000000000000000) (bvslt (index!48141 lt!632350) (size!47713 a!2862)))))

(declare-fun res!970669 () Bool)

(assert (=> b!1437795 (= res!970669 (= (select (arr!47162 a!2862) (index!48141 lt!632350)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!811144 () Bool)

(assert (=> b!1437795 (=> res!970669 e!811144)))

(declare-fun e!811142 () SeekEntryResult!11437)

(declare-fun b!1437796 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437796 (= e!811142 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47162 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47162 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!154635 () Bool)

(declare-fun e!811143 () Bool)

(assert (=> d!154635 e!811143))

(declare-fun c!133072 () Bool)

(get-info :version)

(assert (=> d!154635 (= c!133072 (and ((_ is Intermediate!11437) lt!632350) (undefined!12249 lt!632350)))))

(assert (=> d!154635 (= lt!632350 e!811141)))

(declare-fun c!133073 () Bool)

(assert (=> d!154635 (= c!133073 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!632349 () (_ BitVec 64))

(assert (=> d!154635 (= lt!632349 (select (arr!47162 a!2862) (toIndex!0 (select (arr!47162 a!2862) j!93) mask!2687)))))

(assert (=> d!154635 (validMask!0 mask!2687)))

(assert (=> d!154635 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47162 a!2862) j!93) mask!2687) (select (arr!47162 a!2862) j!93) a!2862 mask!2687) lt!632350)))

(declare-fun b!1437797 () Bool)

(assert (=> b!1437797 (= e!811141 e!811142)))

(declare-fun c!133071 () Bool)

(assert (=> b!1437797 (= c!133071 (or (= lt!632349 (select (arr!47162 a!2862) j!93)) (= (bvadd lt!632349 lt!632349) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437798 () Bool)

(declare-fun e!811145 () Bool)

(assert (=> b!1437798 (= e!811143 e!811145)))

(declare-fun res!970670 () Bool)

(assert (=> b!1437798 (= res!970670 (and ((_ is Intermediate!11437) lt!632350) (not (undefined!12249 lt!632350)) (bvslt (x!129871 lt!632350) #b01111111111111111111111111111110) (bvsge (x!129871 lt!632350) #b00000000000000000000000000000000) (bvsge (x!129871 lt!632350) #b00000000000000000000000000000000)))))

(assert (=> b!1437798 (=> (not res!970670) (not e!811145))))

(declare-fun b!1437799 () Bool)

(assert (=> b!1437799 (= e!811143 (bvsge (x!129871 lt!632350) #b01111111111111111111111111111110))))

(declare-fun b!1437800 () Bool)

(assert (=> b!1437800 (and (bvsge (index!48141 lt!632350) #b00000000000000000000000000000000) (bvslt (index!48141 lt!632350) (size!47713 a!2862)))))

(declare-fun res!970671 () Bool)

(assert (=> b!1437800 (= res!970671 (= (select (arr!47162 a!2862) (index!48141 lt!632350)) (select (arr!47162 a!2862) j!93)))))

(assert (=> b!1437800 (=> res!970671 e!811144)))

(assert (=> b!1437800 (= e!811145 e!811144)))

(declare-fun b!1437801 () Bool)

(assert (=> b!1437801 (and (bvsge (index!48141 lt!632350) #b00000000000000000000000000000000) (bvslt (index!48141 lt!632350) (size!47713 a!2862)))))

(assert (=> b!1437801 (= e!811144 (= (select (arr!47162 a!2862) (index!48141 lt!632350)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1437802 () Bool)

(assert (=> b!1437802 (= e!811142 (Intermediate!11437 false (toIndex!0 (select (arr!47162 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!154635 c!133073) b!1437794))

(assert (= (and d!154635 (not c!133073)) b!1437797))

(assert (= (and b!1437797 c!133071) b!1437802))

(assert (= (and b!1437797 (not c!133071)) b!1437796))

(assert (= (and d!154635 c!133072) b!1437799))

(assert (= (and d!154635 (not c!133072)) b!1437798))

(assert (= (and b!1437798 res!970670) b!1437800))

(assert (= (and b!1437800 (not res!970671)) b!1437795))

(assert (= (and b!1437795 (not res!970669)) b!1437801))

(declare-fun m!1327113 () Bool)

(assert (=> b!1437801 m!1327113))

(assert (=> b!1437795 m!1327113))

(assert (=> b!1437796 m!1327065))

(declare-fun m!1327115 () Bool)

(assert (=> b!1437796 m!1327115))

(assert (=> b!1437796 m!1327115))

(assert (=> b!1437796 m!1327063))

(declare-fun m!1327117 () Bool)

(assert (=> b!1437796 m!1327117))

(assert (=> b!1437800 m!1327113))

(assert (=> d!154635 m!1327065))

(declare-fun m!1327119 () Bool)

(assert (=> d!154635 m!1327119))

(assert (=> d!154635 m!1327053))

(assert (=> b!1437740 d!154635))

(declare-fun d!154641 () Bool)

(declare-fun lt!632356 () (_ BitVec 32))

(declare-fun lt!632355 () (_ BitVec 32))

(assert (=> d!154641 (= lt!632356 (bvmul (bvxor lt!632355 (bvlshr lt!632355 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154641 (= lt!632355 ((_ extract 31 0) (bvand (bvxor (select (arr!47162 a!2862) j!93) (bvlshr (select (arr!47162 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154641 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!970678 (let ((h!35182 ((_ extract 31 0) (bvand (bvxor (select (arr!47162 a!2862) j!93) (bvlshr (select (arr!47162 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129874 (bvmul (bvxor h!35182 (bvlshr h!35182 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129874 (bvlshr x!129874 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!970678 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!970678 #b00000000000000000000000000000000))))))

(assert (=> d!154641 (= (toIndex!0 (select (arr!47162 a!2862) j!93) mask!2687) (bvand (bvxor lt!632356 (bvlshr lt!632356 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1437740 d!154641))

(declare-fun d!154645 () Bool)

(assert (=> d!154645 (= (validKeyInArray!0 (select (arr!47162 a!2862) j!93)) (and (not (= (select (arr!47162 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47162 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1437743 d!154645))

(declare-fun d!154647 () Bool)

(assert (=> d!154647 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124266 d!154647))

(declare-fun d!154651 () Bool)

(assert (=> d!154651 (= (array_inv!36107 a!2862) (bvsge (size!47713 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124266 d!154651))

(declare-fun bm!67644 () Bool)

(declare-fun call!67647 () Bool)

(declare-fun c!133097 () Bool)

(assert (=> bm!67644 (= call!67647 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!133097 (Cons!33839 (select (arr!47162 a!2862) #b00000000000000000000000000000000) Nil!33840) Nil!33840)))))

(declare-fun d!154653 () Bool)

(declare-fun res!970708 () Bool)

(declare-fun e!811199 () Bool)

(assert (=> d!154653 (=> res!970708 e!811199)))

(assert (=> d!154653 (= res!970708 (bvsge #b00000000000000000000000000000000 (size!47713 a!2862)))))

(assert (=> d!154653 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33840) e!811199)))

(declare-fun b!1437882 () Bool)

(declare-fun e!811196 () Bool)

(declare-fun e!811197 () Bool)

(assert (=> b!1437882 (= e!811196 e!811197)))

(assert (=> b!1437882 (= c!133097 (validKeyInArray!0 (select (arr!47162 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437883 () Bool)

(assert (=> b!1437883 (= e!811197 call!67647)))

(declare-fun b!1437884 () Bool)

(assert (=> b!1437884 (= e!811199 e!811196)))

(declare-fun res!970709 () Bool)

(assert (=> b!1437884 (=> (not res!970709) (not e!811196))))

(declare-fun e!811198 () Bool)

(assert (=> b!1437884 (= res!970709 (not e!811198))))

(declare-fun res!970707 () Bool)

(assert (=> b!1437884 (=> (not res!970707) (not e!811198))))

(assert (=> b!1437884 (= res!970707 (validKeyInArray!0 (select (arr!47162 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437885 () Bool)

(assert (=> b!1437885 (= e!811197 call!67647)))

(declare-fun b!1437886 () Bool)

(declare-fun contains!9900 (List!33843 (_ BitVec 64)) Bool)

(assert (=> b!1437886 (= e!811198 (contains!9900 Nil!33840 (select (arr!47162 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!154653 (not res!970708)) b!1437884))

(assert (= (and b!1437884 res!970707) b!1437886))

(assert (= (and b!1437884 res!970709) b!1437882))

(assert (= (and b!1437882 c!133097) b!1437883))

(assert (= (and b!1437882 (not c!133097)) b!1437885))

(assert (= (or b!1437883 b!1437885) bm!67644))

(declare-fun m!1327145 () Bool)

(assert (=> bm!67644 m!1327145))

(declare-fun m!1327147 () Bool)

(assert (=> bm!67644 m!1327147))

(assert (=> b!1437882 m!1327145))

(assert (=> b!1437882 m!1327145))

(declare-fun m!1327149 () Bool)

(assert (=> b!1437882 m!1327149))

(assert (=> b!1437884 m!1327145))

(assert (=> b!1437884 m!1327145))

(assert (=> b!1437884 m!1327149))

(assert (=> b!1437886 m!1327145))

(assert (=> b!1437886 m!1327145))

(declare-fun m!1327151 () Bool)

(assert (=> b!1437886 m!1327151))

(assert (=> b!1437744 d!154653))

(declare-fun b!1437916 () Bool)

(declare-fun e!811221 () Bool)

(declare-fun call!67653 () Bool)

(assert (=> b!1437916 (= e!811221 call!67653)))

(declare-fun b!1437917 () Bool)

(declare-fun e!811222 () Bool)

(assert (=> b!1437917 (= e!811221 e!811222)))

(declare-fun lt!632402 () (_ BitVec 64))

(assert (=> b!1437917 (= lt!632402 (select (arr!47162 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48506 0))(
  ( (Unit!48507) )
))
(declare-fun lt!632403 () Unit!48506)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97748 (_ BitVec 64) (_ BitVec 32)) Unit!48506)

(assert (=> b!1437917 (= lt!632403 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632402 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1437917 (arrayContainsKey!0 a!2862 lt!632402 #b00000000000000000000000000000000)))

(declare-fun lt!632404 () Unit!48506)

(assert (=> b!1437917 (= lt!632404 lt!632403)))

(declare-fun res!970724 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97748 (_ BitVec 32)) SeekEntryResult!11437)

(assert (=> b!1437917 (= res!970724 (= (seekEntryOrOpen!0 (select (arr!47162 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11437 #b00000000000000000000000000000000)))))

(assert (=> b!1437917 (=> (not res!970724) (not e!811222))))

(declare-fun d!154661 () Bool)

(declare-fun res!970725 () Bool)

(declare-fun e!811220 () Bool)

(assert (=> d!154661 (=> res!970725 e!811220)))

(assert (=> d!154661 (= res!970725 (bvsge #b00000000000000000000000000000000 (size!47713 a!2862)))))

(assert (=> d!154661 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!811220)))

(declare-fun b!1437918 () Bool)

(assert (=> b!1437918 (= e!811220 e!811221)))

(declare-fun c!133106 () Bool)

(assert (=> b!1437918 (= c!133106 (validKeyInArray!0 (select (arr!47162 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437919 () Bool)

(assert (=> b!1437919 (= e!811222 call!67653)))

(declare-fun bm!67650 () Bool)

(assert (=> bm!67650 (= call!67653 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!154661 (not res!970725)) b!1437918))

(assert (= (and b!1437918 c!133106) b!1437917))

(assert (= (and b!1437918 (not c!133106)) b!1437916))

(assert (= (and b!1437917 res!970724) b!1437919))

(assert (= (or b!1437919 b!1437916) bm!67650))

(assert (=> b!1437917 m!1327145))

(declare-fun m!1327173 () Bool)

(assert (=> b!1437917 m!1327173))

(declare-fun m!1327175 () Bool)

(assert (=> b!1437917 m!1327175))

(assert (=> b!1437917 m!1327145))

(declare-fun m!1327177 () Bool)

(assert (=> b!1437917 m!1327177))

(assert (=> b!1437918 m!1327145))

(assert (=> b!1437918 m!1327145))

(assert (=> b!1437918 m!1327149))

(declare-fun m!1327179 () Bool)

(assert (=> bm!67650 m!1327179))

(assert (=> b!1437747 d!154661))

(declare-fun d!154677 () Bool)

(declare-fun lt!632408 () (_ BitVec 32))

(declare-fun lt!632407 () (_ BitVec 32))

(assert (=> d!154677 (= lt!632408 (bvmul (bvxor lt!632407 (bvlshr lt!632407 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154677 (= lt!632407 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47162 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47162 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154677 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!970678 (let ((h!35182 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47162 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47162 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129874 (bvmul (bvxor h!35182 (bvlshr h!35182 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129874 (bvlshr x!129874 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!970678 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!970678 #b00000000000000000000000000000000))))))

(assert (=> d!154677 (= (toIndex!0 (select (store (arr!47162 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (bvand (bvxor lt!632408 (bvlshr lt!632408 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1437742 d!154677))

(declare-fun b!1437929 () Bool)

(declare-fun e!811228 () SeekEntryResult!11437)

(assert (=> b!1437929 (= e!811228 (Intermediate!11437 true index!646 x!665))))

(declare-fun b!1437930 () Bool)

(declare-fun lt!632410 () SeekEntryResult!11437)

(assert (=> b!1437930 (and (bvsge (index!48141 lt!632410) #b00000000000000000000000000000000) (bvslt (index!48141 lt!632410) (size!47713 a!2862)))))

(declare-fun res!970729 () Bool)

(assert (=> b!1437930 (= res!970729 (= (select (arr!47162 a!2862) (index!48141 lt!632410)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!811231 () Bool)

(assert (=> b!1437930 (=> res!970729 e!811231)))

(declare-fun b!1437931 () Bool)

(declare-fun e!811229 () SeekEntryResult!11437)

(assert (=> b!1437931 (= e!811229 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47162 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!154681 () Bool)

(declare-fun e!811230 () Bool)

(assert (=> d!154681 e!811230))

(declare-fun c!133111 () Bool)

(assert (=> d!154681 (= c!133111 (and ((_ is Intermediate!11437) lt!632410) (undefined!12249 lt!632410)))))

(assert (=> d!154681 (= lt!632410 e!811228)))

(declare-fun c!133112 () Bool)

(assert (=> d!154681 (= c!133112 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!632409 () (_ BitVec 64))

(assert (=> d!154681 (= lt!632409 (select (arr!47162 a!2862) index!646))))

(assert (=> d!154681 (validMask!0 mask!2687)))

(assert (=> d!154681 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47162 a!2862) j!93) a!2862 mask!2687) lt!632410)))

(declare-fun b!1437932 () Bool)

(assert (=> b!1437932 (= e!811228 e!811229)))

(declare-fun c!133110 () Bool)

(assert (=> b!1437932 (= c!133110 (or (= lt!632409 (select (arr!47162 a!2862) j!93)) (= (bvadd lt!632409 lt!632409) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437933 () Bool)

(declare-fun e!811232 () Bool)

(assert (=> b!1437933 (= e!811230 e!811232)))

(declare-fun res!970730 () Bool)

(assert (=> b!1437933 (= res!970730 (and ((_ is Intermediate!11437) lt!632410) (not (undefined!12249 lt!632410)) (bvslt (x!129871 lt!632410) #b01111111111111111111111111111110) (bvsge (x!129871 lt!632410) #b00000000000000000000000000000000) (bvsge (x!129871 lt!632410) x!665)))))

(assert (=> b!1437933 (=> (not res!970730) (not e!811232))))

(declare-fun b!1437934 () Bool)

(assert (=> b!1437934 (= e!811230 (bvsge (x!129871 lt!632410) #b01111111111111111111111111111110))))

(declare-fun b!1437935 () Bool)

(assert (=> b!1437935 (and (bvsge (index!48141 lt!632410) #b00000000000000000000000000000000) (bvslt (index!48141 lt!632410) (size!47713 a!2862)))))

(declare-fun res!970731 () Bool)

(assert (=> b!1437935 (= res!970731 (= (select (arr!47162 a!2862) (index!48141 lt!632410)) (select (arr!47162 a!2862) j!93)))))

(assert (=> b!1437935 (=> res!970731 e!811231)))

(assert (=> b!1437935 (= e!811232 e!811231)))

(declare-fun b!1437936 () Bool)

(assert (=> b!1437936 (and (bvsge (index!48141 lt!632410) #b00000000000000000000000000000000) (bvslt (index!48141 lt!632410) (size!47713 a!2862)))))

(assert (=> b!1437936 (= e!811231 (= (select (arr!47162 a!2862) (index!48141 lt!632410)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1437937 () Bool)

(assert (=> b!1437937 (= e!811229 (Intermediate!11437 false index!646 x!665))))

(assert (= (and d!154681 c!133112) b!1437929))

(assert (= (and d!154681 (not c!133112)) b!1437932))

(assert (= (and b!1437932 c!133110) b!1437937))

(assert (= (and b!1437932 (not c!133110)) b!1437931))

(assert (= (and d!154681 c!133111) b!1437934))

(assert (= (and d!154681 (not c!133111)) b!1437933))

(assert (= (and b!1437933 res!970730) b!1437935))

(assert (= (and b!1437935 (not res!970731)) b!1437930))

(assert (= (and b!1437930 (not res!970729)) b!1437936))

(declare-fun m!1327189 () Bool)

(assert (=> b!1437936 m!1327189))

(assert (=> b!1437930 m!1327189))

(declare-fun m!1327191 () Bool)

(assert (=> b!1437931 m!1327191))

(assert (=> b!1437931 m!1327191))

(assert (=> b!1437931 m!1327063))

(declare-fun m!1327193 () Bool)

(assert (=> b!1437931 m!1327193))

(assert (=> b!1437935 m!1327189))

(declare-fun m!1327195 () Bool)

(assert (=> d!154681 m!1327195))

(assert (=> d!154681 m!1327053))

(assert (=> b!1437748 d!154681))

(check-sat (not b!1437917) (not d!154635) (not b!1437918) (not b!1437931) (not bm!67644) (not b!1437886) (not d!154681) (not b!1437884) (not b!1437796) (not bm!67650) (not b!1437882))
(check-sat)
