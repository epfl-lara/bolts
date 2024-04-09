; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124268 () Bool)

(assert start!124268)

(declare-fun b!1437767 () Bool)

(declare-fun res!970655 () Bool)

(declare-fun e!811129 () Bool)

(assert (=> b!1437767 (=> (not res!970655) (not e!811129))))

(declare-datatypes ((array!97750 0))(
  ( (array!97751 (arr!47163 (Array (_ BitVec 32) (_ BitVec 64))) (size!47714 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97750)

(declare-datatypes ((List!33844 0))(
  ( (Nil!33841) (Cons!33840 (h!35181 (_ BitVec 64)) (t!48545 List!33844)) )
))
(declare-fun arrayNoDuplicates!0 (array!97750 (_ BitVec 32) List!33844) Bool)

(assert (=> b!1437767 (= res!970655 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33841))))

(declare-fun b!1437768 () Bool)

(declare-fun res!970654 () Bool)

(assert (=> b!1437768 (=> (not res!970654) (not e!811129))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437768 (= res!970654 (validKeyInArray!0 (select (arr!47163 a!2862) i!1006)))))

(declare-fun b!1437769 () Bool)

(declare-fun res!970661 () Bool)

(assert (=> b!1437769 (=> (not res!970661) (not e!811129))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97750 (_ BitVec 32)) Bool)

(assert (=> b!1437769 (= res!970661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437770 () Bool)

(declare-fun res!970660 () Bool)

(assert (=> b!1437770 (=> (not res!970660) (not e!811129))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1437770 (= res!970660 (validKeyInArray!0 (select (arr!47163 a!2862) j!93)))))

(declare-fun b!1437771 () Bool)

(declare-fun e!811128 () Bool)

(declare-fun lt!632344 () (_ BitVec 32))

(assert (=> b!1437771 (= e!811128 (and (bvsge mask!2687 #b00000000000000000000000000000000) (or (bvslt lt!632344 #b00000000000000000000000000000000) (bvsge lt!632344 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437771 (= lt!632344 (toIndex!0 (select (store (arr!47163 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1437772 () Bool)

(declare-fun res!970656 () Bool)

(assert (=> b!1437772 (=> (not res!970656) (not e!811129))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1437772 (= res!970656 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47714 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47714 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47714 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47163 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437773 () Bool)

(assert (=> b!1437773 (= e!811129 e!811128)))

(declare-fun res!970662 () Bool)

(assert (=> b!1437773 (=> (not res!970662) (not e!811128))))

(declare-datatypes ((SeekEntryResult!11438 0))(
  ( (MissingZero!11438 (index!48143 (_ BitVec 32))) (Found!11438 (index!48144 (_ BitVec 32))) (Intermediate!11438 (undefined!12250 Bool) (index!48145 (_ BitVec 32)) (x!129872 (_ BitVec 32))) (Undefined!11438) (MissingVacant!11438 (index!48146 (_ BitVec 32))) )
))
(declare-fun lt!632343 () SeekEntryResult!11438)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97750 (_ BitVec 32)) SeekEntryResult!11438)

(assert (=> b!1437773 (= res!970662 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47163 a!2862) j!93) mask!2687) (select (arr!47163 a!2862) j!93) a!2862 mask!2687) lt!632343))))

(assert (=> b!1437773 (= lt!632343 (Intermediate!11438 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437774 () Bool)

(declare-fun res!970659 () Bool)

(assert (=> b!1437774 (=> (not res!970659) (not e!811129))))

(assert (=> b!1437774 (= res!970659 (and (= (size!47714 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47714 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47714 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437775 () Bool)

(declare-fun res!970658 () Bool)

(assert (=> b!1437775 (=> (not res!970658) (not e!811128))))

(assert (=> b!1437775 (= res!970658 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47163 a!2862) j!93) a!2862 mask!2687) lt!632343))))

(declare-fun res!970657 () Bool)

(assert (=> start!124268 (=> (not res!970657) (not e!811129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124268 (= res!970657 (validMask!0 mask!2687))))

(assert (=> start!124268 e!811129))

(assert (=> start!124268 true))

(declare-fun array_inv!36108 (array!97750) Bool)

(assert (=> start!124268 (array_inv!36108 a!2862)))

(assert (= (and start!124268 res!970657) b!1437774))

(assert (= (and b!1437774 res!970659) b!1437768))

(assert (= (and b!1437768 res!970654) b!1437770))

(assert (= (and b!1437770 res!970660) b!1437769))

(assert (= (and b!1437769 res!970661) b!1437767))

(assert (= (and b!1437767 res!970655) b!1437772))

(assert (= (and b!1437772 res!970656) b!1437773))

(assert (= (and b!1437773 res!970662) b!1437775))

(assert (= (and b!1437775 res!970658) b!1437771))

(declare-fun m!1327083 () Bool)

(assert (=> b!1437773 m!1327083))

(assert (=> b!1437773 m!1327083))

(declare-fun m!1327085 () Bool)

(assert (=> b!1437773 m!1327085))

(assert (=> b!1437773 m!1327085))

(assert (=> b!1437773 m!1327083))

(declare-fun m!1327087 () Bool)

(assert (=> b!1437773 m!1327087))

(declare-fun m!1327089 () Bool)

(assert (=> b!1437767 m!1327089))

(declare-fun m!1327091 () Bool)

(assert (=> b!1437771 m!1327091))

(declare-fun m!1327093 () Bool)

(assert (=> b!1437771 m!1327093))

(assert (=> b!1437771 m!1327093))

(declare-fun m!1327095 () Bool)

(assert (=> b!1437771 m!1327095))

(declare-fun m!1327097 () Bool)

(assert (=> start!124268 m!1327097))

(declare-fun m!1327099 () Bool)

(assert (=> start!124268 m!1327099))

(assert (=> b!1437772 m!1327091))

(declare-fun m!1327101 () Bool)

(assert (=> b!1437772 m!1327101))

(declare-fun m!1327103 () Bool)

(assert (=> b!1437769 m!1327103))

(declare-fun m!1327105 () Bool)

(assert (=> b!1437768 m!1327105))

(assert (=> b!1437768 m!1327105))

(declare-fun m!1327107 () Bool)

(assert (=> b!1437768 m!1327107))

(assert (=> b!1437770 m!1327083))

(assert (=> b!1437770 m!1327083))

(declare-fun m!1327109 () Bool)

(assert (=> b!1437770 m!1327109))

(assert (=> b!1437775 m!1327083))

(assert (=> b!1437775 m!1327083))

(declare-fun m!1327111 () Bool)

(assert (=> b!1437775 m!1327111))

(push 1)

(assert (not start!124268))

(assert (not b!1437767))

(assert (not b!1437769))

(assert (not b!1437771))

(assert (not b!1437768))

(assert (not b!1437773))

(assert (not b!1437770))

(assert (not b!1437775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1437813 () Bool)

(declare-fun e!811157 () Bool)

(declare-fun call!67644 () Bool)

(assert (=> b!1437813 (= e!811157 call!67644)))

(declare-fun b!1437815 () Bool)

(declare-fun e!811156 () Bool)

(declare-fun contains!9901 (List!33844 (_ BitVec 64)) Bool)

(assert (=> b!1437815 (= e!811156 (contains!9901 Nil!33841 (select (arr!47163 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437816 () Bool)

(assert (=> b!1437816 (= e!811157 call!67644)))

(declare-fun b!1437817 () Bool)

(declare-fun e!811155 () Bool)

(assert (=> b!1437817 (= e!811155 e!811157)))

(declare-fun c!133076 () Bool)

(assert (=> b!1437817 (= c!133076 (validKeyInArray!0 (select (arr!47163 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67641 () Bool)

(assert (=> bm!67641 (= call!67644 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!133076 (Cons!33840 (select (arr!47163 a!2862) #b00000000000000000000000000000000) Nil!33841) Nil!33841)))))

(declare-fun d!154639 () Bool)

(declare-fun res!970680 () Bool)

(declare-fun e!811154 () Bool)

(assert (=> d!154639 (=> res!970680 e!811154)))

(assert (=> d!154639 (= res!970680 (bvsge #b00000000000000000000000000000000 (size!47714 a!2862)))))

(assert (=> d!154639 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33841) e!811154)))

(declare-fun b!1437814 () Bool)

(assert (=> b!1437814 (= e!811154 e!811155)))

(declare-fun res!970679 () Bool)

(assert (=> b!1437814 (=> (not res!970679) (not e!811155))))

(assert (=> b!1437814 (= res!970679 (not e!811156))))

(declare-fun res!970681 () Bool)

(assert (=> b!1437814 (=> (not res!970681) (not e!811156))))

(assert (=> b!1437814 (= res!970681 (validKeyInArray!0 (select (arr!47163 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!154639 (not res!970680)) b!1437814))

(assert (= (and b!1437814 res!970681) b!1437815))

(assert (= (and b!1437814 res!970679) b!1437817))

(assert (= (and b!1437817 c!133076) b!1437816))

(assert (= (and b!1437817 (not c!133076)) b!1437813))

(assert (= (or b!1437816 b!1437813) bm!67641))

(declare-fun m!1327121 () Bool)

(assert (=> b!1437815 m!1327121))

(assert (=> b!1437815 m!1327121))

(declare-fun m!1327123 () Bool)

(assert (=> b!1437815 m!1327123))

(assert (=> b!1437817 m!1327121))

(assert (=> b!1437817 m!1327121))

(declare-fun m!1327125 () Bool)

(assert (=> b!1437817 m!1327125))

(assert (=> bm!67641 m!1327121))

(declare-fun m!1327127 () Bool)

(assert (=> bm!67641 m!1327127))

(assert (=> b!1437814 m!1327121))

(assert (=> b!1437814 m!1327121))

(assert (=> b!1437814 m!1327125))

(assert (=> b!1437767 d!154639))

(declare-fun d!154643 () Bool)

(declare-fun e!811201 () Bool)

(assert (=> d!154643 e!811201))

(declare-fun c!133099 () Bool)

(declare-fun lt!632377 () SeekEntryResult!11438)

(assert (=> d!154643 (= c!133099 (and (is-Intermediate!11438 lt!632377) (undefined!12250 lt!632377)))))

(declare-fun e!811204 () SeekEntryResult!11438)

(assert (=> d!154643 (= lt!632377 e!811204)))

(declare-fun c!133100 () Bool)

(assert (=> d!154643 (= c!133100 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!632378 () (_ BitVec 64))

(assert (=> d!154643 (= lt!632378 (select (arr!47163 a!2862) (toIndex!0 (select (arr!47163 a!2862) j!93) mask!2687)))))

(assert (=> d!154643 (validMask!0 mask!2687)))

(assert (=> d!154643 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47163 a!2862) j!93) mask!2687) (select (arr!47163 a!2862) j!93) a!2862 mask!2687) lt!632377)))

(declare-fun b!1437887 () Bool)

(assert (=> b!1437887 (and (bvsge (index!48145 lt!632377) #b00000000000000000000000000000000) (bvslt (index!48145 lt!632377) (size!47714 a!2862)))))

(declare-fun res!970711 () Bool)

(assert (=> b!1437887 (= res!970711 (= (select (arr!47163 a!2862) (index!48145 lt!632377)) (select (arr!47163 a!2862) j!93)))))

(declare-fun e!811200 () Bool)

(assert (=> b!1437887 (=> res!970711 e!811200)))

(declare-fun e!811203 () Bool)

(assert (=> b!1437887 (= e!811203 e!811200)))

(declare-fun b!1437888 () Bool)

(assert (=> b!1437888 (= e!811204 (Intermediate!11438 true (toIndex!0 (select (arr!47163 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1437889 () Bool)

(assert (=> b!1437889 (= e!811201 e!811203)))

(declare-fun res!970710 () Bool)

(assert (=> b!1437889 (= res!970710 (and (is-Intermediate!11438 lt!632377) (not (undefined!12250 lt!632377)) (bvslt (x!129872 lt!632377) #b01111111111111111111111111111110) (bvsge (x!129872 lt!632377) #b00000000000000000000000000000000) (bvsge (x!129872 lt!632377) #b00000000000000000000000000000000)))))

(assert (=> b!1437889 (=> (not res!970710) (not e!811203))))

(declare-fun b!1437890 () Bool)

(assert (=> b!1437890 (and (bvsge (index!48145 lt!632377) #b00000000000000000000000000000000) (bvslt (index!48145 lt!632377) (size!47714 a!2862)))))

(declare-fun res!970712 () Bool)

(assert (=> b!1437890 (= res!970712 (= (select (arr!47163 a!2862) (index!48145 lt!632377)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1437890 (=> res!970712 e!811200)))

(declare-fun b!1437891 () Bool)

(assert (=> b!1437891 (and (bvsge (index!48145 lt!632377) #b00000000000000000000000000000000) (bvslt (index!48145 lt!632377) (size!47714 a!2862)))))

(assert (=> b!1437891 (= e!811200 (= (select (arr!47163 a!2862) (index!48145 lt!632377)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1437892 () Bool)

(declare-fun e!811202 () SeekEntryResult!11438)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437892 (= e!811202 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47163 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47163 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1437893 () Bool)

(assert (=> b!1437893 (= e!811204 e!811202)))

(declare-fun c!133098 () Bool)

(assert (=> b!1437893 (= c!133098 (or (= lt!632378 (select (arr!47163 a!2862) j!93)) (= (bvadd lt!632378 lt!632378) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437894 () Bool)

(assert (=> b!1437894 (= e!811201 (bvsge (x!129872 lt!632377) #b01111111111111111111111111111110))))

(declare-fun b!1437895 () Bool)

(assert (=> b!1437895 (= e!811202 (Intermediate!11438 false (toIndex!0 (select (arr!47163 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!154643 c!133100) b!1437888))

(assert (= (and d!154643 (not c!133100)) b!1437893))

(assert (= (and b!1437893 c!133098) b!1437895))

(assert (= (and b!1437893 (not c!133098)) b!1437892))

(assert (= (and d!154643 c!133099) b!1437894))

(assert (= (and d!154643 (not c!133099)) b!1437889))

(assert (= (and b!1437889 res!970710) b!1437887))

(assert (= (and b!1437887 (not res!970711)) b!1437890))

(assert (= (and b!1437890 (not res!970712)) b!1437891))

(assert (=> b!1437892 m!1327085))

(declare-fun m!1327153 () Bool)

(assert (=> b!1437892 m!1327153))

(assert (=> b!1437892 m!1327153))

(assert (=> b!1437892 m!1327083))

(declare-fun m!1327155 () Bool)

(assert (=> b!1437892 m!1327155))

(declare-fun m!1327157 () Bool)

(assert (=> b!1437890 m!1327157))

(assert (=> b!1437891 m!1327157))

(assert (=> b!1437887 m!1327157))

(assert (=> d!154643 m!1327085))

(declare-fun m!1327159 () Bool)

(assert (=> d!154643 m!1327159))

(assert (=> d!154643 m!1327097))

(assert (=> b!1437773 d!154643))

(declare-fun d!154663 () Bool)

(declare-fun lt!632399 () (_ BitVec 32))

(declare-fun lt!632398 () (_ BitVec 32))

(assert (=> d!154663 (= lt!632399 (bvmul (bvxor lt!632398 (bvlshr lt!632398 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154663 (= lt!632398 ((_ extract 31 0) (bvand (bvxor (select (arr!47163 a!2862) j!93) (bvlshr (select (arr!47163 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154663 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!970717 (let ((h!35184 ((_ extract 31 0) (bvand (bvxor (select (arr!47163 a!2862) j!93) (bvlshr (select (arr!47163 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129878 (bvmul (bvxor h!35184 (bvlshr h!35184 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129878 (bvlshr x!129878 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!970717 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!970717 #b00000000000000000000000000000000))))))

(assert (=> d!154663 (= (toIndex!0 (select (arr!47163 a!2862) j!93) mask!2687) (bvand (bvxor lt!632399 (bvlshr lt!632399 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1437773 d!154663))

(declare-fun d!154671 () Bool)

(assert (=> d!154671 (= (validKeyInArray!0 (select (arr!47163 a!2862) i!1006)) (and (not (= (select (arr!47163 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47163 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1437768 d!154671))

(declare-fun d!154673 () Bool)

(declare-fun lt!632401 () (_ BitVec 32))

(declare-fun lt!632400 () (_ BitVec 32))

(assert (=> d!154673 (= lt!632401 (bvmul (bvxor lt!632400 (bvlshr lt!632400 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154673 (= lt!632400 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47163 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47163 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154673 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!970717 (let ((h!35184 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47163 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47163 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129878 (bvmul (bvxor h!35184 (bvlshr h!35184 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129878 (bvlshr x!129878 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!970717 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!970717 #b00000000000000000000000000000000))))))

(assert (=> d!154673 (= (toIndex!0 (select (store (arr!47163 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (bvand (bvxor lt!632401 (bvlshr lt!632401 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1437771 d!154673))

(declare-fun d!154675 () Bool)

(declare-fun e!811224 () Bool)

(assert (=> d!154675 e!811224))

(declare-fun c!133108 () Bool)

(declare-fun lt!632405 () SeekEntryResult!11438)

(assert (=> d!154675 (= c!133108 (and (is-Intermediate!11438 lt!632405) (undefined!12250 lt!632405)))))

(declare-fun e!811227 () SeekEntryResult!11438)

(assert (=> d!154675 (= lt!632405 e!811227)))

(declare-fun c!133109 () Bool)

(assert (=> d!154675 (= c!133109 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!632406 () (_ BitVec 64))

(assert (=> d!154675 (= lt!632406 (select (arr!47163 a!2862) index!646))))

(assert (=> d!154675 (validMask!0 mask!2687)))

(assert (=> d!154675 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47163 a!2862) j!93) a!2862 mask!2687) lt!632405)))

(declare-fun b!1437920 () Bool)

(assert (=> b!1437920 (and (bvsge (index!48145 lt!632405) #b00000000000000000000000000000000) (bvslt (index!48145 lt!632405) (size!47714 a!2862)))))

(declare-fun res!970727 () Bool)

(assert (=> b!1437920 (= res!970727 (= (select (arr!47163 a!2862) (index!48145 lt!632405)) (select (arr!47163 a!2862) j!93)))))

(declare-fun e!811223 () Bool)

(assert (=> b!1437920 (=> res!970727 e!811223)))

(declare-fun e!811226 () Bool)

(assert (=> b!1437920 (= e!811226 e!811223)))

(declare-fun b!1437921 () Bool)

(assert (=> b!1437921 (= e!811227 (Intermediate!11438 true index!646 x!665))))

(declare-fun b!1437922 () Bool)

(assert (=> b!1437922 (= e!811224 e!811226)))

(declare-fun res!970726 () Bool)

(assert (=> b!1437922 (= res!970726 (and (is-Intermediate!11438 lt!632405) (not (undefined!12250 lt!632405)) (bvslt (x!129872 lt!632405) #b01111111111111111111111111111110) (bvsge (x!129872 lt!632405) #b00000000000000000000000000000000) (bvsge (x!129872 lt!632405) x!665)))))

(assert (=> b!1437922 (=> (not res!970726) (not e!811226))))

(declare-fun b!1437923 () Bool)

(assert (=> b!1437923 (and (bvsge (index!48145 lt!632405) #b00000000000000000000000000000000) (bvslt (index!48145 lt!632405) (size!47714 a!2862)))))

(declare-fun res!970728 () Bool)

(assert (=> b!1437923 (= res!970728 (= (select (arr!47163 a!2862) (index!48145 lt!632405)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1437923 (=> res!970728 e!811223)))

(declare-fun b!1437924 () Bool)

(assert (=> b!1437924 (and (bvsge (index!48145 lt!632405) #b00000000000000000000000000000000) (bvslt (index!48145 lt!632405) (size!47714 a!2862)))))

(assert (=> b!1437924 (= e!811223 (= (select (arr!47163 a!2862) (index!48145 lt!632405)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!811225 () SeekEntryResult!11438)

(declare-fun b!1437925 () Bool)

(assert (=> b!1437925 (= e!811225 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47163 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1437926 () Bool)

(assert (=> b!1437926 (= e!811227 e!811225)))

(declare-fun c!133107 () Bool)

(assert (=> b!1437926 (= c!133107 (or (= lt!632406 (select (arr!47163 a!2862) j!93)) (= (bvadd lt!632406 lt!632406) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437927 () Bool)

(assert (=> b!1437927 (= e!811224 (bvsge (x!129872 lt!632405) #b01111111111111111111111111111110))))

(declare-fun b!1437928 () Bool)

(assert (=> b!1437928 (= e!811225 (Intermediate!11438 false index!646 x!665))))

(assert (= (and d!154675 c!133109) b!1437921))

(assert (= (and d!154675 (not c!133109)) b!1437926))

(assert (= (and b!1437926 c!133107) b!1437928))

(assert (= (and b!1437926 (not c!133107)) b!1437925))

(assert (= (and d!154675 c!133108) b!1437927))

(assert (= (and d!154675 (not c!133108)) b!1437922))

(assert (= (and b!1437922 res!970726) b!1437920))

(assert (= (and b!1437920 (not res!970727)) b!1437923))

(assert (= (and b!1437923 (not res!970728)) b!1437924))

(declare-fun m!1327181 () Bool)

(assert (=> b!1437925 m!1327181))

(assert (=> b!1437925 m!1327181))

(assert (=> b!1437925 m!1327083))

(declare-fun m!1327183 () Bool)

(assert (=> b!1437925 m!1327183))

(declare-fun m!1327185 () Bool)

(assert (=> b!1437923 m!1327185))

(assert (=> b!1437924 m!1327185))

(assert (=> b!1437920 m!1327185))

(declare-fun m!1327187 () Bool)

(assert (=> d!154675 m!1327187))

(assert (=> d!154675 m!1327097))

(assert (=> b!1437775 d!154675))

(declare-fun d!154679 () Bool)

(assert (=> d!154679 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124268 d!154679))

(declare-fun d!154687 () Bool)

(assert (=> d!154687 (= (array_inv!36108 a!2862) (bvsge (size!47714 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124268 d!154687))

(declare-fun d!154689 () Bool)

(assert (=> d!154689 (= (validKeyInArray!0 (select (arr!47163 a!2862) j!93)) (and (not (= (select (arr!47163 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47163 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1437770 d!154689))

(declare-fun b!1437961 () Bool)

(declare-fun e!811253 () Bool)

(declare-fun e!811252 () Bool)

(assert (=> b!1437961 (= e!811253 e!811252)))

(declare-fun c!133118 () Bool)

(assert (=> b!1437961 (= c!133118 (validKeyInArray!0 (select (arr!47163 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154691 () Bool)

(declare-fun res!970745 () Bool)

(assert (=> d!154691 (=> res!970745 e!811253)))

(assert (=> d!154691 (= res!970745 (bvsge #b00000000000000000000000000000000 (size!47714 a!2862)))))

(assert (=> d!154691 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!811253)))

(declare-fun bm!67656 () Bool)

(declare-fun call!67659 () Bool)

(assert (=> bm!67656 (= call!67659 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1437962 () Bool)

(declare-fun e!811251 () Bool)

(assert (=> b!1437962 (= e!811251 call!67659)))

(declare-fun b!1437963 () Bool)

(assert (=> b!1437963 (= e!811252 e!811251)))

(declare-fun lt!632419 () (_ BitVec 64))

(assert (=> b!1437963 (= lt!632419 (select (arr!47163 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48510 0))(
  ( (Unit!48511) )
))
(declare-fun lt!632418 () Unit!48510)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97750 (_ BitVec 64) (_ BitVec 32)) Unit!48510)

(assert (=> b!1437963 (= lt!632418 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632419 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1437963 (arrayContainsKey!0 a!2862 lt!632419 #b00000000000000000000000000000000)))

(declare-fun lt!632417 () Unit!48510)

(assert (=> b!1437963 (= lt!632417 lt!632418)))

(declare-fun res!970746 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97750 (_ BitVec 32)) SeekEntryResult!11438)

(assert (=> b!1437963 (= res!970746 (= (seekEntryOrOpen!0 (select (arr!47163 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11438 #b00000000000000000000000000000000)))))

(assert (=> b!1437963 (=> (not res!970746) (not e!811251))))

(declare-fun b!1437964 () Bool)

(assert (=> b!1437964 (= e!811252 call!67659)))

(assert (= (and d!154691 (not res!970745)) b!1437961))

(assert (= (and b!1437961 c!133118) b!1437963))

(assert (= (and b!1437961 (not c!133118)) b!1437964))

(assert (= (and b!1437963 res!970746) b!1437962))

(assert (= (or b!1437962 b!1437964) bm!67656))

(assert (=> b!1437961 m!1327121))

(assert (=> b!1437961 m!1327121))

(assert (=> b!1437961 m!1327125))

(declare-fun m!1327201 () Bool)

(assert (=> bm!67656 m!1327201))

(assert (=> b!1437963 m!1327121))

(declare-fun m!1327203 () Bool)

(assert (=> b!1437963 m!1327203))

(declare-fun m!1327205 () Bool)

(assert (=> b!1437963 m!1327205))

(assert (=> b!1437963 m!1327121))

(declare-fun m!1327207 () Bool)

(assert (=> b!1437963 m!1327207))

(assert (=> b!1437769 d!154691))

(push 1)

