; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127314 () Bool)

(assert start!127314)

(declare-fun b!1495644 () Bool)

(declare-fun res!1017450 () Bool)

(declare-fun e!837766 () Bool)

(assert (=> b!1495644 (=> (not res!1017450) (not e!837766))))

(declare-datatypes ((array!99752 0))(
  ( (array!99753 (arr!48137 (Array (_ BitVec 32) (_ BitVec 64))) (size!48688 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99752)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99752 (_ BitVec 32)) Bool)

(assert (=> b!1495644 (= res!1017450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1495645 () Bool)

(declare-fun res!1017457 () Bool)

(assert (=> b!1495645 (=> (not res!1017457) (not e!837766))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1495645 (= res!1017457 (validKeyInArray!0 (select (arr!48137 a!2862) j!93)))))

(declare-fun b!1495646 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!837759 () Bool)

(assert (=> b!1495646 (= e!837759 (or (= (select (arr!48137 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48137 a!2862) intermediateBeforeIndex!19) (select (arr!48137 a!2862) j!93))))))

(declare-fun lt!651787 () array!99752)

(declare-fun e!837762 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1495647 () Bool)

(declare-datatypes ((SeekEntryResult!12400 0))(
  ( (MissingZero!12400 (index!51991 (_ BitVec 32))) (Found!12400 (index!51992 (_ BitVec 32))) (Intermediate!12400 (undefined!13212 Bool) (index!51993 (_ BitVec 32)) (x!133611 (_ BitVec 32))) (Undefined!12400) (MissingVacant!12400 (index!51994 (_ BitVec 32))) )
))
(declare-fun lt!651782 () SeekEntryResult!12400)

(declare-fun lt!651783 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99752 (_ BitVec 32)) SeekEntryResult!12400)

(assert (=> b!1495647 (= e!837762 (= lt!651782 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651783 lt!651787 mask!2687)))))

(declare-fun b!1495648 () Bool)

(declare-fun e!837758 () Bool)

(declare-fun e!837764 () Bool)

(assert (=> b!1495648 (= e!837758 e!837764)))

(declare-fun res!1017441 () Bool)

(assert (=> b!1495648 (=> (not res!1017441) (not e!837764))))

(declare-fun lt!651786 () SeekEntryResult!12400)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1495648 (= res!1017441 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48137 a!2862) j!93) mask!2687) (select (arr!48137 a!2862) j!93) a!2862 mask!2687) lt!651786))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1495648 (= lt!651786 (Intermediate!12400 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1495649 () Bool)

(declare-fun res!1017449 () Bool)

(assert (=> b!1495649 (=> (not res!1017449) (not e!837766))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1495649 (= res!1017449 (and (= (size!48688 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48688 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48688 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1495650 () Bool)

(declare-fun res!1017445 () Bool)

(assert (=> b!1495650 (=> (not res!1017445) (not e!837759))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99752 (_ BitVec 32)) SeekEntryResult!12400)

(assert (=> b!1495650 (= res!1017445 (= (seekEntryOrOpen!0 (select (arr!48137 a!2862) j!93) a!2862 mask!2687) (Found!12400 j!93)))))

(declare-fun b!1495651 () Bool)

(declare-fun e!837761 () Bool)

(declare-fun e!837767 () Bool)

(assert (=> b!1495651 (= e!837761 e!837767)))

(declare-fun res!1017448 () Bool)

(assert (=> b!1495651 (=> res!1017448 e!837767)))

(declare-fun lt!651785 () (_ BitVec 32))

(assert (=> b!1495651 (= res!1017448 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!651785 #b00000000000000000000000000000000) (bvsge lt!651785 (size!48688 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1495651 (= lt!651785 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1495652 () Bool)

(declare-fun res!1017442 () Bool)

(declare-fun e!837765 () Bool)

(assert (=> b!1495652 (=> (not res!1017442) (not e!837765))))

(assert (=> b!1495652 (= res!1017442 e!837762)))

(declare-fun c!138638 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1495652 (= c!138638 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1495653 () Bool)

(declare-fun res!1017454 () Bool)

(assert (=> b!1495653 (=> res!1017454 e!837767)))

(assert (=> b!1495653 (= res!1017454 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651785 (select (arr!48137 a!2862) j!93) a!2862 mask!2687) lt!651786)))))

(declare-fun b!1495654 () Bool)

(declare-fun res!1017455 () Bool)

(assert (=> b!1495654 (=> (not res!1017455) (not e!837766))))

(declare-datatypes ((List!34818 0))(
  ( (Nil!34815) (Cons!34814 (h!36209 (_ BitVec 64)) (t!49519 List!34818)) )
))
(declare-fun arrayNoDuplicates!0 (array!99752 (_ BitVec 32) List!34818) Bool)

(assert (=> b!1495654 (= res!1017455 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34815))))

(declare-fun b!1495655 () Bool)

(assert (=> b!1495655 (= e!837764 e!837765)))

(declare-fun res!1017451 () Bool)

(assert (=> b!1495655 (=> (not res!1017451) (not e!837765))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1495655 (= res!1017451 (= lt!651782 (Intermediate!12400 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1495655 (= lt!651782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651783 mask!2687) lt!651783 lt!651787 mask!2687))))

(assert (=> b!1495655 (= lt!651783 (select (store (arr!48137 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1495656 () Bool)

(declare-fun res!1017456 () Bool)

(assert (=> b!1495656 (=> (not res!1017456) (not e!837764))))

(assert (=> b!1495656 (= res!1017456 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48137 a!2862) j!93) a!2862 mask!2687) lt!651786))))

(declare-fun b!1495657 () Bool)

(declare-fun e!837760 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99752 (_ BitVec 32)) SeekEntryResult!12400)

(assert (=> b!1495657 (= e!837760 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651785 intermediateAfterIndex!19 lt!651783 lt!651787 mask!2687) (seekEntryOrOpen!0 lt!651783 lt!651787 mask!2687))))))

(declare-fun b!1495658 () Bool)

(declare-fun res!1017446 () Bool)

(assert (=> b!1495658 (=> (not res!1017446) (not e!837765))))

(assert (=> b!1495658 (= res!1017446 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1495659 () Bool)

(declare-fun res!1017443 () Bool)

(assert (=> b!1495659 (=> res!1017443 e!837767)))

(assert (=> b!1495659 (= res!1017443 e!837760)))

(declare-fun c!138637 () Bool)

(assert (=> b!1495659 (= c!138637 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1495660 () Bool)

(declare-fun res!1017459 () Bool)

(assert (=> b!1495660 (=> (not res!1017459) (not e!837766))))

(assert (=> b!1495660 (= res!1017459 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48688 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48688 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48688 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1495661 () Bool)

(assert (=> b!1495661 (= e!837760 (not (= lt!651782 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651785 lt!651783 lt!651787 mask!2687))))))

(declare-fun b!1495662 () Bool)

(assert (=> b!1495662 (= e!837762 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651783 lt!651787 mask!2687) (seekEntryOrOpen!0 lt!651783 lt!651787 mask!2687)))))

(declare-fun b!1495663 () Bool)

(assert (=> b!1495663 (= e!837767 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1495664 () Bool)

(declare-fun res!1017452 () Bool)

(assert (=> b!1495664 (=> (not res!1017452) (not e!837766))))

(assert (=> b!1495664 (= res!1017452 (validKeyInArray!0 (select (arr!48137 a!2862) i!1006)))))

(declare-fun b!1495665 () Bool)

(assert (=> b!1495665 (= e!837765 (not e!837761))))

(declare-fun res!1017447 () Bool)

(assert (=> b!1495665 (=> res!1017447 e!837761)))

(assert (=> b!1495665 (= res!1017447 (or (and (= (select (arr!48137 a!2862) index!646) (select (store (arr!48137 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48137 a!2862) index!646) (select (arr!48137 a!2862) j!93))) (= (select (arr!48137 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1495665 e!837759))

(declare-fun res!1017444 () Bool)

(assert (=> b!1495665 (=> (not res!1017444) (not e!837759))))

(assert (=> b!1495665 (= res!1017444 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50088 0))(
  ( (Unit!50089) )
))
(declare-fun lt!651784 () Unit!50088)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99752 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50088)

(assert (=> b!1495665 (= lt!651784 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1495666 () Bool)

(assert (=> b!1495666 (= e!837766 e!837758)))

(declare-fun res!1017453 () Bool)

(assert (=> b!1495666 (=> (not res!1017453) (not e!837758))))

(assert (=> b!1495666 (= res!1017453 (= (select (store (arr!48137 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495666 (= lt!651787 (array!99753 (store (arr!48137 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48688 a!2862)))))

(declare-fun res!1017458 () Bool)

(assert (=> start!127314 (=> (not res!1017458) (not e!837766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127314 (= res!1017458 (validMask!0 mask!2687))))

(assert (=> start!127314 e!837766))

(assert (=> start!127314 true))

(declare-fun array_inv!37082 (array!99752) Bool)

(assert (=> start!127314 (array_inv!37082 a!2862)))

(assert (= (and start!127314 res!1017458) b!1495649))

(assert (= (and b!1495649 res!1017449) b!1495664))

(assert (= (and b!1495664 res!1017452) b!1495645))

(assert (= (and b!1495645 res!1017457) b!1495644))

(assert (= (and b!1495644 res!1017450) b!1495654))

(assert (= (and b!1495654 res!1017455) b!1495660))

(assert (= (and b!1495660 res!1017459) b!1495666))

(assert (= (and b!1495666 res!1017453) b!1495648))

(assert (= (and b!1495648 res!1017441) b!1495656))

(assert (= (and b!1495656 res!1017456) b!1495655))

(assert (= (and b!1495655 res!1017451) b!1495652))

(assert (= (and b!1495652 c!138638) b!1495647))

(assert (= (and b!1495652 (not c!138638)) b!1495662))

(assert (= (and b!1495652 res!1017442) b!1495658))

(assert (= (and b!1495658 res!1017446) b!1495665))

(assert (= (and b!1495665 res!1017444) b!1495650))

(assert (= (and b!1495650 res!1017445) b!1495646))

(assert (= (and b!1495665 (not res!1017447)) b!1495651))

(assert (= (and b!1495651 (not res!1017448)) b!1495653))

(assert (= (and b!1495653 (not res!1017454)) b!1495659))

(assert (= (and b!1495659 c!138637) b!1495661))

(assert (= (and b!1495659 (not c!138637)) b!1495657))

(assert (= (and b!1495659 (not res!1017443)) b!1495663))

(declare-fun m!1379083 () Bool)

(assert (=> b!1495645 m!1379083))

(assert (=> b!1495645 m!1379083))

(declare-fun m!1379085 () Bool)

(assert (=> b!1495645 m!1379085))

(assert (=> b!1495650 m!1379083))

(assert (=> b!1495650 m!1379083))

(declare-fun m!1379087 () Bool)

(assert (=> b!1495650 m!1379087))

(declare-fun m!1379089 () Bool)

(assert (=> b!1495661 m!1379089))

(declare-fun m!1379091 () Bool)

(assert (=> b!1495666 m!1379091))

(declare-fun m!1379093 () Bool)

(assert (=> b!1495666 m!1379093))

(declare-fun m!1379095 () Bool)

(assert (=> b!1495647 m!1379095))

(declare-fun m!1379097 () Bool)

(assert (=> b!1495654 m!1379097))

(declare-fun m!1379099 () Bool)

(assert (=> b!1495657 m!1379099))

(declare-fun m!1379101 () Bool)

(assert (=> b!1495657 m!1379101))

(declare-fun m!1379103 () Bool)

(assert (=> b!1495662 m!1379103))

(assert (=> b!1495662 m!1379101))

(declare-fun m!1379105 () Bool)

(assert (=> start!127314 m!1379105))

(declare-fun m!1379107 () Bool)

(assert (=> start!127314 m!1379107))

(assert (=> b!1495656 m!1379083))

(assert (=> b!1495656 m!1379083))

(declare-fun m!1379109 () Bool)

(assert (=> b!1495656 m!1379109))

(declare-fun m!1379111 () Bool)

(assert (=> b!1495665 m!1379111))

(assert (=> b!1495665 m!1379091))

(declare-fun m!1379113 () Bool)

(assert (=> b!1495665 m!1379113))

(declare-fun m!1379115 () Bool)

(assert (=> b!1495665 m!1379115))

(declare-fun m!1379117 () Bool)

(assert (=> b!1495665 m!1379117))

(assert (=> b!1495665 m!1379083))

(declare-fun m!1379119 () Bool)

(assert (=> b!1495646 m!1379119))

(assert (=> b!1495646 m!1379083))

(declare-fun m!1379121 () Bool)

(assert (=> b!1495651 m!1379121))

(declare-fun m!1379123 () Bool)

(assert (=> b!1495664 m!1379123))

(assert (=> b!1495664 m!1379123))

(declare-fun m!1379125 () Bool)

(assert (=> b!1495664 m!1379125))

(assert (=> b!1495653 m!1379083))

(assert (=> b!1495653 m!1379083))

(declare-fun m!1379127 () Bool)

(assert (=> b!1495653 m!1379127))

(assert (=> b!1495648 m!1379083))

(assert (=> b!1495648 m!1379083))

(declare-fun m!1379129 () Bool)

(assert (=> b!1495648 m!1379129))

(assert (=> b!1495648 m!1379129))

(assert (=> b!1495648 m!1379083))

(declare-fun m!1379131 () Bool)

(assert (=> b!1495648 m!1379131))

(declare-fun m!1379133 () Bool)

(assert (=> b!1495644 m!1379133))

(declare-fun m!1379135 () Bool)

(assert (=> b!1495655 m!1379135))

(assert (=> b!1495655 m!1379135))

(declare-fun m!1379137 () Bool)

(assert (=> b!1495655 m!1379137))

(assert (=> b!1495655 m!1379091))

(declare-fun m!1379139 () Bool)

(assert (=> b!1495655 m!1379139))

(check-sat (not b!1495662) (not b!1495656) (not b!1495665) (not b!1495644) (not b!1495661) (not b!1495657) (not b!1495647) (not b!1495653) (not start!127314) (not b!1495650) (not b!1495648) (not b!1495654) (not b!1495664) (not b!1495651) (not b!1495645) (not b!1495655))
(check-sat)
(get-model)

(declare-fun d!157239 () Bool)

(declare-fun lt!651808 () (_ BitVec 32))

(assert (=> d!157239 (and (bvsge lt!651808 #b00000000000000000000000000000000) (bvslt lt!651808 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157239 (= lt!651808 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!157239 (validMask!0 mask!2687)))

(assert (=> d!157239 (= (nextIndex!0 index!646 x!665 mask!2687) lt!651808)))

(declare-fun bs!42914 () Bool)

(assert (= bs!42914 d!157239))

(declare-fun m!1379199 () Bool)

(assert (=> bs!42914 m!1379199))

(assert (=> bs!42914 m!1379105))

(assert (=> b!1495651 d!157239))

(declare-fun b!1495748 () Bool)

(declare-fun e!837804 () SeekEntryResult!12400)

(assert (=> b!1495748 (= e!837804 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!651783 lt!651787 mask!2687))))

(declare-fun lt!651813 () SeekEntryResult!12400)

(declare-fun d!157241 () Bool)

(get-info :version)

(assert (=> d!157241 (and (or ((_ is Undefined!12400) lt!651813) (not ((_ is Found!12400) lt!651813)) (and (bvsge (index!51992 lt!651813) #b00000000000000000000000000000000) (bvslt (index!51992 lt!651813) (size!48688 lt!651787)))) (or ((_ is Undefined!12400) lt!651813) ((_ is Found!12400) lt!651813) (not ((_ is MissingVacant!12400) lt!651813)) (not (= (index!51994 lt!651813) intermediateAfterIndex!19)) (and (bvsge (index!51994 lt!651813) #b00000000000000000000000000000000) (bvslt (index!51994 lt!651813) (size!48688 lt!651787)))) (or ((_ is Undefined!12400) lt!651813) (ite ((_ is Found!12400) lt!651813) (= (select (arr!48137 lt!651787) (index!51992 lt!651813)) lt!651783) (and ((_ is MissingVacant!12400) lt!651813) (= (index!51994 lt!651813) intermediateAfterIndex!19) (= (select (arr!48137 lt!651787) (index!51994 lt!651813)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!837806 () SeekEntryResult!12400)

(assert (=> d!157241 (= lt!651813 e!837806)))

(declare-fun c!138651 () Bool)

(assert (=> d!157241 (= c!138651 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651814 () (_ BitVec 64))

(assert (=> d!157241 (= lt!651814 (select (arr!48137 lt!651787) index!646))))

(assert (=> d!157241 (validMask!0 mask!2687)))

(assert (=> d!157241 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651783 lt!651787 mask!2687) lt!651813)))

(declare-fun b!1495749 () Bool)

(assert (=> b!1495749 (= e!837804 (MissingVacant!12400 intermediateAfterIndex!19))))

(declare-fun b!1495750 () Bool)

(declare-fun e!837805 () SeekEntryResult!12400)

(assert (=> b!1495750 (= e!837806 e!837805)))

(declare-fun c!138652 () Bool)

(assert (=> b!1495750 (= c!138652 (= lt!651814 lt!651783))))

(declare-fun b!1495751 () Bool)

(assert (=> b!1495751 (= e!837805 (Found!12400 index!646))))

(declare-fun b!1495752 () Bool)

(declare-fun c!138653 () Bool)

(assert (=> b!1495752 (= c!138653 (= lt!651814 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495752 (= e!837805 e!837804)))

(declare-fun b!1495753 () Bool)

(assert (=> b!1495753 (= e!837806 Undefined!12400)))

(assert (= (and d!157241 c!138651) b!1495753))

(assert (= (and d!157241 (not c!138651)) b!1495750))

(assert (= (and b!1495750 c!138652) b!1495751))

(assert (= (and b!1495750 (not c!138652)) b!1495752))

(assert (= (and b!1495752 c!138653) b!1495749))

(assert (= (and b!1495752 (not c!138653)) b!1495748))

(assert (=> b!1495748 m!1379121))

(assert (=> b!1495748 m!1379121))

(declare-fun m!1379201 () Bool)

(assert (=> b!1495748 m!1379201))

(declare-fun m!1379203 () Bool)

(assert (=> d!157241 m!1379203))

(declare-fun m!1379205 () Bool)

(assert (=> d!157241 m!1379205))

(declare-fun m!1379207 () Bool)

(assert (=> d!157241 m!1379207))

(assert (=> d!157241 m!1379105))

(assert (=> b!1495662 d!157241))

(declare-fun b!1495766 () Bool)

(declare-fun e!837814 () SeekEntryResult!12400)

(declare-fun lt!651822 () SeekEntryResult!12400)

(assert (=> b!1495766 (= e!837814 (MissingZero!12400 (index!51993 lt!651822)))))

(declare-fun d!157243 () Bool)

(declare-fun lt!651823 () SeekEntryResult!12400)

(assert (=> d!157243 (and (or ((_ is Undefined!12400) lt!651823) (not ((_ is Found!12400) lt!651823)) (and (bvsge (index!51992 lt!651823) #b00000000000000000000000000000000) (bvslt (index!51992 lt!651823) (size!48688 lt!651787)))) (or ((_ is Undefined!12400) lt!651823) ((_ is Found!12400) lt!651823) (not ((_ is MissingZero!12400) lt!651823)) (and (bvsge (index!51991 lt!651823) #b00000000000000000000000000000000) (bvslt (index!51991 lt!651823) (size!48688 lt!651787)))) (or ((_ is Undefined!12400) lt!651823) ((_ is Found!12400) lt!651823) ((_ is MissingZero!12400) lt!651823) (not ((_ is MissingVacant!12400) lt!651823)) (and (bvsge (index!51994 lt!651823) #b00000000000000000000000000000000) (bvslt (index!51994 lt!651823) (size!48688 lt!651787)))) (or ((_ is Undefined!12400) lt!651823) (ite ((_ is Found!12400) lt!651823) (= (select (arr!48137 lt!651787) (index!51992 lt!651823)) lt!651783) (ite ((_ is MissingZero!12400) lt!651823) (= (select (arr!48137 lt!651787) (index!51991 lt!651823)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12400) lt!651823) (= (select (arr!48137 lt!651787) (index!51994 lt!651823)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!837815 () SeekEntryResult!12400)

(assert (=> d!157243 (= lt!651823 e!837815)))

(declare-fun c!138661 () Bool)

(assert (=> d!157243 (= c!138661 (and ((_ is Intermediate!12400) lt!651822) (undefined!13212 lt!651822)))))

(assert (=> d!157243 (= lt!651822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651783 mask!2687) lt!651783 lt!651787 mask!2687))))

(assert (=> d!157243 (validMask!0 mask!2687)))

(assert (=> d!157243 (= (seekEntryOrOpen!0 lt!651783 lt!651787 mask!2687) lt!651823)))

(declare-fun b!1495767 () Bool)

(assert (=> b!1495767 (= e!837814 (seekKeyOrZeroReturnVacant!0 (x!133611 lt!651822) (index!51993 lt!651822) (index!51993 lt!651822) lt!651783 lt!651787 mask!2687))))

(declare-fun b!1495768 () Bool)

(declare-fun e!837813 () SeekEntryResult!12400)

(assert (=> b!1495768 (= e!837813 (Found!12400 (index!51993 lt!651822)))))

(declare-fun b!1495769 () Bool)

(assert (=> b!1495769 (= e!837815 e!837813)))

(declare-fun lt!651821 () (_ BitVec 64))

(assert (=> b!1495769 (= lt!651821 (select (arr!48137 lt!651787) (index!51993 lt!651822)))))

(declare-fun c!138662 () Bool)

(assert (=> b!1495769 (= c!138662 (= lt!651821 lt!651783))))

(declare-fun b!1495770 () Bool)

(declare-fun c!138660 () Bool)

(assert (=> b!1495770 (= c!138660 (= lt!651821 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495770 (= e!837813 e!837814)))

(declare-fun b!1495771 () Bool)

(assert (=> b!1495771 (= e!837815 Undefined!12400)))

(assert (= (and d!157243 c!138661) b!1495771))

(assert (= (and d!157243 (not c!138661)) b!1495769))

(assert (= (and b!1495769 c!138662) b!1495768))

(assert (= (and b!1495769 (not c!138662)) b!1495770))

(assert (= (and b!1495770 c!138660) b!1495766))

(assert (= (and b!1495770 (not c!138660)) b!1495767))

(assert (=> d!157243 m!1379135))

(declare-fun m!1379209 () Bool)

(assert (=> d!157243 m!1379209))

(assert (=> d!157243 m!1379105))

(declare-fun m!1379211 () Bool)

(assert (=> d!157243 m!1379211))

(assert (=> d!157243 m!1379135))

(assert (=> d!157243 m!1379137))

(declare-fun m!1379213 () Bool)

(assert (=> d!157243 m!1379213))

(declare-fun m!1379215 () Bool)

(assert (=> b!1495767 m!1379215))

(declare-fun m!1379217 () Bool)

(assert (=> b!1495769 m!1379217))

(assert (=> b!1495662 d!157243))

(declare-fun b!1495790 () Bool)

(declare-fun lt!651828 () SeekEntryResult!12400)

(assert (=> b!1495790 (and (bvsge (index!51993 lt!651828) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651828) (size!48688 lt!651787)))))

(declare-fun res!1017525 () Bool)

(assert (=> b!1495790 (= res!1017525 (= (select (arr!48137 lt!651787) (index!51993 lt!651828)) lt!651783))))

(declare-fun e!837829 () Bool)

(assert (=> b!1495790 (=> res!1017525 e!837829)))

(declare-fun e!837826 () Bool)

(assert (=> b!1495790 (= e!837826 e!837829)))

(declare-fun b!1495791 () Bool)

(declare-fun e!837828 () Bool)

(assert (=> b!1495791 (= e!837828 e!837826)))

(declare-fun res!1017524 () Bool)

(assert (=> b!1495791 (= res!1017524 (and ((_ is Intermediate!12400) lt!651828) (not (undefined!13212 lt!651828)) (bvslt (x!133611 lt!651828) #b01111111111111111111111111111110) (bvsge (x!133611 lt!651828) #b00000000000000000000000000000000) (bvsge (x!133611 lt!651828) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1495791 (=> (not res!1017524) (not e!837826))))

(declare-fun d!157245 () Bool)

(assert (=> d!157245 e!837828))

(declare-fun c!138670 () Bool)

(assert (=> d!157245 (= c!138670 (and ((_ is Intermediate!12400) lt!651828) (undefined!13212 lt!651828)))))

(declare-fun e!837827 () SeekEntryResult!12400)

(assert (=> d!157245 (= lt!651828 e!837827)))

(declare-fun c!138671 () Bool)

(assert (=> d!157245 (= c!138671 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!651829 () (_ BitVec 64))

(assert (=> d!157245 (= lt!651829 (select (arr!48137 lt!651787) lt!651785))))

(assert (=> d!157245 (validMask!0 mask!2687)))

(assert (=> d!157245 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651785 lt!651783 lt!651787 mask!2687) lt!651828)))

(declare-fun b!1495792 () Bool)

(assert (=> b!1495792 (and (bvsge (index!51993 lt!651828) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651828) (size!48688 lt!651787)))))

(assert (=> b!1495792 (= e!837829 (= (select (arr!48137 lt!651787) (index!51993 lt!651828)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495793 () Bool)

(declare-fun e!837830 () SeekEntryResult!12400)

(assert (=> b!1495793 (= e!837827 e!837830)))

(declare-fun c!138669 () Bool)

(assert (=> b!1495793 (= c!138669 (or (= lt!651829 lt!651783) (= (bvadd lt!651829 lt!651829) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495794 () Bool)

(assert (=> b!1495794 (= e!837827 (Intermediate!12400 true lt!651785 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495795 () Bool)

(assert (=> b!1495795 (= e!837830 (Intermediate!12400 false lt!651785 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495796 () Bool)

(assert (=> b!1495796 (= e!837828 (bvsge (x!133611 lt!651828) #b01111111111111111111111111111110))))

(declare-fun b!1495797 () Bool)

(assert (=> b!1495797 (= e!837830 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651785 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) lt!651783 lt!651787 mask!2687))))

(declare-fun b!1495798 () Bool)

(assert (=> b!1495798 (and (bvsge (index!51993 lt!651828) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651828) (size!48688 lt!651787)))))

(declare-fun res!1017523 () Bool)

(assert (=> b!1495798 (= res!1017523 (= (select (arr!48137 lt!651787) (index!51993 lt!651828)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495798 (=> res!1017523 e!837829)))

(assert (= (and d!157245 c!138671) b!1495794))

(assert (= (and d!157245 (not c!138671)) b!1495793))

(assert (= (and b!1495793 c!138669) b!1495795))

(assert (= (and b!1495793 (not c!138669)) b!1495797))

(assert (= (and d!157245 c!138670) b!1495796))

(assert (= (and d!157245 (not c!138670)) b!1495791))

(assert (= (and b!1495791 res!1017524) b!1495790))

(assert (= (and b!1495790 (not res!1017525)) b!1495798))

(assert (= (and b!1495798 (not res!1017523)) b!1495792))

(declare-fun m!1379219 () Bool)

(assert (=> b!1495790 m!1379219))

(declare-fun m!1379221 () Bool)

(assert (=> b!1495797 m!1379221))

(assert (=> b!1495797 m!1379221))

(declare-fun m!1379223 () Bool)

(assert (=> b!1495797 m!1379223))

(assert (=> b!1495792 m!1379219))

(declare-fun m!1379225 () Bool)

(assert (=> d!157245 m!1379225))

(assert (=> d!157245 m!1379105))

(assert (=> b!1495798 m!1379219))

(assert (=> b!1495661 d!157245))

(declare-fun b!1495809 () Bool)

(declare-fun e!837839 () Bool)

(declare-fun e!837842 () Bool)

(assert (=> b!1495809 (= e!837839 e!837842)))

(declare-fun res!1017533 () Bool)

(assert (=> b!1495809 (=> (not res!1017533) (not e!837842))))

(declare-fun e!837840 () Bool)

(assert (=> b!1495809 (= res!1017533 (not e!837840))))

(declare-fun res!1017534 () Bool)

(assert (=> b!1495809 (=> (not res!1017534) (not e!837840))))

(assert (=> b!1495809 (= res!1017534 (validKeyInArray!0 (select (arr!48137 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!157247 () Bool)

(declare-fun res!1017532 () Bool)

(assert (=> d!157247 (=> res!1017532 e!837839)))

(assert (=> d!157247 (= res!1017532 (bvsge #b00000000000000000000000000000000 (size!48688 a!2862)))))

(assert (=> d!157247 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34815) e!837839)))

(declare-fun b!1495810 () Bool)

(declare-fun e!837841 () Bool)

(assert (=> b!1495810 (= e!837842 e!837841)))

(declare-fun c!138674 () Bool)

(assert (=> b!1495810 (= c!138674 (validKeyInArray!0 (select (arr!48137 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1495811 () Bool)

(declare-fun contains!9945 (List!34818 (_ BitVec 64)) Bool)

(assert (=> b!1495811 (= e!837840 (contains!9945 Nil!34815 (select (arr!48137 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1495812 () Bool)

(declare-fun call!68022 () Bool)

(assert (=> b!1495812 (= e!837841 call!68022)))

(declare-fun b!1495813 () Bool)

(assert (=> b!1495813 (= e!837841 call!68022)))

(declare-fun bm!68019 () Bool)

(assert (=> bm!68019 (= call!68022 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!138674 (Cons!34814 (select (arr!48137 a!2862) #b00000000000000000000000000000000) Nil!34815) Nil!34815)))))

(assert (= (and d!157247 (not res!1017532)) b!1495809))

(assert (= (and b!1495809 res!1017534) b!1495811))

(assert (= (and b!1495809 res!1017533) b!1495810))

(assert (= (and b!1495810 c!138674) b!1495813))

(assert (= (and b!1495810 (not c!138674)) b!1495812))

(assert (= (or b!1495813 b!1495812) bm!68019))

(declare-fun m!1379227 () Bool)

(assert (=> b!1495809 m!1379227))

(assert (=> b!1495809 m!1379227))

(declare-fun m!1379229 () Bool)

(assert (=> b!1495809 m!1379229))

(assert (=> b!1495810 m!1379227))

(assert (=> b!1495810 m!1379227))

(assert (=> b!1495810 m!1379229))

(assert (=> b!1495811 m!1379227))

(assert (=> b!1495811 m!1379227))

(declare-fun m!1379231 () Bool)

(assert (=> b!1495811 m!1379231))

(assert (=> bm!68019 m!1379227))

(declare-fun m!1379233 () Bool)

(assert (=> bm!68019 m!1379233))

(assert (=> b!1495654 d!157247))

(declare-fun b!1495814 () Bool)

(declare-fun lt!651830 () SeekEntryResult!12400)

(assert (=> b!1495814 (and (bvsge (index!51993 lt!651830) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651830) (size!48688 a!2862)))))

(declare-fun res!1017537 () Bool)

(assert (=> b!1495814 (= res!1017537 (= (select (arr!48137 a!2862) (index!51993 lt!651830)) (select (arr!48137 a!2862) j!93)))))

(declare-fun e!837846 () Bool)

(assert (=> b!1495814 (=> res!1017537 e!837846)))

(declare-fun e!837843 () Bool)

(assert (=> b!1495814 (= e!837843 e!837846)))

(declare-fun b!1495815 () Bool)

(declare-fun e!837845 () Bool)

(assert (=> b!1495815 (= e!837845 e!837843)))

(declare-fun res!1017536 () Bool)

(assert (=> b!1495815 (= res!1017536 (and ((_ is Intermediate!12400) lt!651830) (not (undefined!13212 lt!651830)) (bvslt (x!133611 lt!651830) #b01111111111111111111111111111110) (bvsge (x!133611 lt!651830) #b00000000000000000000000000000000) (bvsge (x!133611 lt!651830) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1495815 (=> (not res!1017536) (not e!837843))))

(declare-fun d!157249 () Bool)

(assert (=> d!157249 e!837845))

(declare-fun c!138676 () Bool)

(assert (=> d!157249 (= c!138676 (and ((_ is Intermediate!12400) lt!651830) (undefined!13212 lt!651830)))))

(declare-fun e!837844 () SeekEntryResult!12400)

(assert (=> d!157249 (= lt!651830 e!837844)))

(declare-fun c!138677 () Bool)

(assert (=> d!157249 (= c!138677 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!651831 () (_ BitVec 64))

(assert (=> d!157249 (= lt!651831 (select (arr!48137 a!2862) lt!651785))))

(assert (=> d!157249 (validMask!0 mask!2687)))

(assert (=> d!157249 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651785 (select (arr!48137 a!2862) j!93) a!2862 mask!2687) lt!651830)))

(declare-fun b!1495816 () Bool)

(assert (=> b!1495816 (and (bvsge (index!51993 lt!651830) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651830) (size!48688 a!2862)))))

(assert (=> b!1495816 (= e!837846 (= (select (arr!48137 a!2862) (index!51993 lt!651830)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495817 () Bool)

(declare-fun e!837847 () SeekEntryResult!12400)

(assert (=> b!1495817 (= e!837844 e!837847)))

(declare-fun c!138675 () Bool)

(assert (=> b!1495817 (= c!138675 (or (= lt!651831 (select (arr!48137 a!2862) j!93)) (= (bvadd lt!651831 lt!651831) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495818 () Bool)

(assert (=> b!1495818 (= e!837844 (Intermediate!12400 true lt!651785 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495819 () Bool)

(assert (=> b!1495819 (= e!837847 (Intermediate!12400 false lt!651785 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495820 () Bool)

(assert (=> b!1495820 (= e!837845 (bvsge (x!133611 lt!651830) #b01111111111111111111111111111110))))

(declare-fun b!1495821 () Bool)

(assert (=> b!1495821 (= e!837847 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651785 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) (select (arr!48137 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495822 () Bool)

(assert (=> b!1495822 (and (bvsge (index!51993 lt!651830) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651830) (size!48688 a!2862)))))

(declare-fun res!1017535 () Bool)

(assert (=> b!1495822 (= res!1017535 (= (select (arr!48137 a!2862) (index!51993 lt!651830)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495822 (=> res!1017535 e!837846)))

(assert (= (and d!157249 c!138677) b!1495818))

(assert (= (and d!157249 (not c!138677)) b!1495817))

(assert (= (and b!1495817 c!138675) b!1495819))

(assert (= (and b!1495817 (not c!138675)) b!1495821))

(assert (= (and d!157249 c!138676) b!1495820))

(assert (= (and d!157249 (not c!138676)) b!1495815))

(assert (= (and b!1495815 res!1017536) b!1495814))

(assert (= (and b!1495814 (not res!1017537)) b!1495822))

(assert (= (and b!1495822 (not res!1017535)) b!1495816))

(declare-fun m!1379235 () Bool)

(assert (=> b!1495814 m!1379235))

(assert (=> b!1495821 m!1379221))

(assert (=> b!1495821 m!1379221))

(assert (=> b!1495821 m!1379083))

(declare-fun m!1379237 () Bool)

(assert (=> b!1495821 m!1379237))

(assert (=> b!1495816 m!1379235))

(declare-fun m!1379239 () Bool)

(assert (=> d!157249 m!1379239))

(assert (=> d!157249 m!1379105))

(assert (=> b!1495822 m!1379235))

(assert (=> b!1495653 d!157249))

(declare-fun d!157251 () Bool)

(assert (=> d!157251 (= (validKeyInArray!0 (select (arr!48137 a!2862) i!1006)) (and (not (= (select (arr!48137 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48137 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1495664 d!157251))

(declare-fun b!1495823 () Bool)

(declare-fun lt!651832 () SeekEntryResult!12400)

(assert (=> b!1495823 (and (bvsge (index!51993 lt!651832) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651832) (size!48688 lt!651787)))))

(declare-fun res!1017540 () Bool)

(assert (=> b!1495823 (= res!1017540 (= (select (arr!48137 lt!651787) (index!51993 lt!651832)) lt!651783))))

(declare-fun e!837851 () Bool)

(assert (=> b!1495823 (=> res!1017540 e!837851)))

(declare-fun e!837848 () Bool)

(assert (=> b!1495823 (= e!837848 e!837851)))

(declare-fun b!1495824 () Bool)

(declare-fun e!837850 () Bool)

(assert (=> b!1495824 (= e!837850 e!837848)))

(declare-fun res!1017539 () Bool)

(assert (=> b!1495824 (= res!1017539 (and ((_ is Intermediate!12400) lt!651832) (not (undefined!13212 lt!651832)) (bvslt (x!133611 lt!651832) #b01111111111111111111111111111110) (bvsge (x!133611 lt!651832) #b00000000000000000000000000000000) (bvsge (x!133611 lt!651832) #b00000000000000000000000000000000)))))

(assert (=> b!1495824 (=> (not res!1017539) (not e!837848))))

(declare-fun d!157253 () Bool)

(assert (=> d!157253 e!837850))

(declare-fun c!138679 () Bool)

(assert (=> d!157253 (= c!138679 (and ((_ is Intermediate!12400) lt!651832) (undefined!13212 lt!651832)))))

(declare-fun e!837849 () SeekEntryResult!12400)

(assert (=> d!157253 (= lt!651832 e!837849)))

(declare-fun c!138680 () Bool)

(assert (=> d!157253 (= c!138680 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!651833 () (_ BitVec 64))

(assert (=> d!157253 (= lt!651833 (select (arr!48137 lt!651787) (toIndex!0 lt!651783 mask!2687)))))

(assert (=> d!157253 (validMask!0 mask!2687)))

(assert (=> d!157253 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651783 mask!2687) lt!651783 lt!651787 mask!2687) lt!651832)))

(declare-fun b!1495825 () Bool)

(assert (=> b!1495825 (and (bvsge (index!51993 lt!651832) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651832) (size!48688 lt!651787)))))

(assert (=> b!1495825 (= e!837851 (= (select (arr!48137 lt!651787) (index!51993 lt!651832)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495826 () Bool)

(declare-fun e!837852 () SeekEntryResult!12400)

(assert (=> b!1495826 (= e!837849 e!837852)))

(declare-fun c!138678 () Bool)

(assert (=> b!1495826 (= c!138678 (or (= lt!651833 lt!651783) (= (bvadd lt!651833 lt!651833) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495827 () Bool)

(assert (=> b!1495827 (= e!837849 (Intermediate!12400 true (toIndex!0 lt!651783 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495828 () Bool)

(assert (=> b!1495828 (= e!837852 (Intermediate!12400 false (toIndex!0 lt!651783 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495829 () Bool)

(assert (=> b!1495829 (= e!837850 (bvsge (x!133611 lt!651832) #b01111111111111111111111111111110))))

(declare-fun b!1495830 () Bool)

(assert (=> b!1495830 (= e!837852 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!651783 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!651783 lt!651787 mask!2687))))

(declare-fun b!1495831 () Bool)

(assert (=> b!1495831 (and (bvsge (index!51993 lt!651832) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651832) (size!48688 lt!651787)))))

(declare-fun res!1017538 () Bool)

(assert (=> b!1495831 (= res!1017538 (= (select (arr!48137 lt!651787) (index!51993 lt!651832)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495831 (=> res!1017538 e!837851)))

(assert (= (and d!157253 c!138680) b!1495827))

(assert (= (and d!157253 (not c!138680)) b!1495826))

(assert (= (and b!1495826 c!138678) b!1495828))

(assert (= (and b!1495826 (not c!138678)) b!1495830))

(assert (= (and d!157253 c!138679) b!1495829))

(assert (= (and d!157253 (not c!138679)) b!1495824))

(assert (= (and b!1495824 res!1017539) b!1495823))

(assert (= (and b!1495823 (not res!1017540)) b!1495831))

(assert (= (and b!1495831 (not res!1017538)) b!1495825))

(declare-fun m!1379241 () Bool)

(assert (=> b!1495823 m!1379241))

(assert (=> b!1495830 m!1379135))

(declare-fun m!1379243 () Bool)

(assert (=> b!1495830 m!1379243))

(assert (=> b!1495830 m!1379243))

(declare-fun m!1379245 () Bool)

(assert (=> b!1495830 m!1379245))

(assert (=> b!1495825 m!1379241))

(assert (=> d!157253 m!1379135))

(declare-fun m!1379247 () Bool)

(assert (=> d!157253 m!1379247))

(assert (=> d!157253 m!1379105))

(assert (=> b!1495831 m!1379241))

(assert (=> b!1495655 d!157253))

(declare-fun d!157255 () Bool)

(declare-fun lt!651839 () (_ BitVec 32))

(declare-fun lt!651838 () (_ BitVec 32))

(assert (=> d!157255 (= lt!651839 (bvmul (bvxor lt!651838 (bvlshr lt!651838 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157255 (= lt!651838 ((_ extract 31 0) (bvand (bvxor lt!651783 (bvlshr lt!651783 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157255 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017541 (let ((h!36211 ((_ extract 31 0) (bvand (bvxor lt!651783 (bvlshr lt!651783 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133616 (bvmul (bvxor h!36211 (bvlshr h!36211 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133616 (bvlshr x!133616 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017541 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017541 #b00000000000000000000000000000000))))))

(assert (=> d!157255 (= (toIndex!0 lt!651783 mask!2687) (bvand (bvxor lt!651839 (bvlshr lt!651839 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1495655 d!157255))

(declare-fun b!1495840 () Bool)

(declare-fun e!837859 () Bool)

(declare-fun e!837860 () Bool)

(assert (=> b!1495840 (= e!837859 e!837860)))

(declare-fun lt!651847 () (_ BitVec 64))

(assert (=> b!1495840 (= lt!651847 (select (arr!48137 a!2862) j!93))))

(declare-fun lt!651846 () Unit!50088)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99752 (_ BitVec 64) (_ BitVec 32)) Unit!50088)

(assert (=> b!1495840 (= lt!651846 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651847 j!93))))

(declare-fun arrayContainsKey!0 (array!99752 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1495840 (arrayContainsKey!0 a!2862 lt!651847 #b00000000000000000000000000000000)))

(declare-fun lt!651848 () Unit!50088)

(assert (=> b!1495840 (= lt!651848 lt!651846)))

(declare-fun res!1017547 () Bool)

(assert (=> b!1495840 (= res!1017547 (= (seekEntryOrOpen!0 (select (arr!48137 a!2862) j!93) a!2862 mask!2687) (Found!12400 j!93)))))

(assert (=> b!1495840 (=> (not res!1017547) (not e!837860))))

(declare-fun d!157257 () Bool)

(declare-fun res!1017546 () Bool)

(declare-fun e!837861 () Bool)

(assert (=> d!157257 (=> res!1017546 e!837861)))

(assert (=> d!157257 (= res!1017546 (bvsge j!93 (size!48688 a!2862)))))

(assert (=> d!157257 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!837861)))

(declare-fun b!1495841 () Bool)

(declare-fun call!68025 () Bool)

(assert (=> b!1495841 (= e!837860 call!68025)))

(declare-fun b!1495842 () Bool)

(assert (=> b!1495842 (= e!837861 e!837859)))

(declare-fun c!138683 () Bool)

(assert (=> b!1495842 (= c!138683 (validKeyInArray!0 (select (arr!48137 a!2862) j!93)))))

(declare-fun b!1495843 () Bool)

(assert (=> b!1495843 (= e!837859 call!68025)))

(declare-fun bm!68022 () Bool)

(assert (=> bm!68022 (= call!68025 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!157257 (not res!1017546)) b!1495842))

(assert (= (and b!1495842 c!138683) b!1495840))

(assert (= (and b!1495842 (not c!138683)) b!1495843))

(assert (= (and b!1495840 res!1017547) b!1495841))

(assert (= (or b!1495841 b!1495843) bm!68022))

(assert (=> b!1495840 m!1379083))

(declare-fun m!1379249 () Bool)

(assert (=> b!1495840 m!1379249))

(declare-fun m!1379251 () Bool)

(assert (=> b!1495840 m!1379251))

(assert (=> b!1495840 m!1379083))

(assert (=> b!1495840 m!1379087))

(assert (=> b!1495842 m!1379083))

(assert (=> b!1495842 m!1379083))

(assert (=> b!1495842 m!1379085))

(declare-fun m!1379253 () Bool)

(assert (=> bm!68022 m!1379253))

(assert (=> b!1495665 d!157257))

(declare-fun d!157261 () Bool)

(assert (=> d!157261 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!651851 () Unit!50088)

(declare-fun choose!38 (array!99752 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50088)

(assert (=> d!157261 (= lt!651851 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!157261 (validMask!0 mask!2687)))

(assert (=> d!157261 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!651851)))

(declare-fun bs!42915 () Bool)

(assert (= bs!42915 d!157261))

(assert (=> bs!42915 m!1379117))

(declare-fun m!1379255 () Bool)

(assert (=> bs!42915 m!1379255))

(assert (=> bs!42915 m!1379105))

(assert (=> b!1495665 d!157261))

(declare-fun b!1495844 () Bool)

(declare-fun e!837862 () Bool)

(declare-fun e!837863 () Bool)

(assert (=> b!1495844 (= e!837862 e!837863)))

(declare-fun lt!651853 () (_ BitVec 64))

(assert (=> b!1495844 (= lt!651853 (select (arr!48137 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!651852 () Unit!50088)

(assert (=> b!1495844 (= lt!651852 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651853 #b00000000000000000000000000000000))))

(assert (=> b!1495844 (arrayContainsKey!0 a!2862 lt!651853 #b00000000000000000000000000000000)))

(declare-fun lt!651854 () Unit!50088)

(assert (=> b!1495844 (= lt!651854 lt!651852)))

(declare-fun res!1017549 () Bool)

(assert (=> b!1495844 (= res!1017549 (= (seekEntryOrOpen!0 (select (arr!48137 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12400 #b00000000000000000000000000000000)))))

(assert (=> b!1495844 (=> (not res!1017549) (not e!837863))))

(declare-fun d!157263 () Bool)

(declare-fun res!1017548 () Bool)

(declare-fun e!837864 () Bool)

(assert (=> d!157263 (=> res!1017548 e!837864)))

(assert (=> d!157263 (= res!1017548 (bvsge #b00000000000000000000000000000000 (size!48688 a!2862)))))

(assert (=> d!157263 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!837864)))

(declare-fun b!1495845 () Bool)

(declare-fun call!68026 () Bool)

(assert (=> b!1495845 (= e!837863 call!68026)))

(declare-fun b!1495846 () Bool)

(assert (=> b!1495846 (= e!837864 e!837862)))

(declare-fun c!138684 () Bool)

(assert (=> b!1495846 (= c!138684 (validKeyInArray!0 (select (arr!48137 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1495847 () Bool)

(assert (=> b!1495847 (= e!837862 call!68026)))

(declare-fun bm!68023 () Bool)

(assert (=> bm!68023 (= call!68026 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!157263 (not res!1017548)) b!1495846))

(assert (= (and b!1495846 c!138684) b!1495844))

(assert (= (and b!1495846 (not c!138684)) b!1495847))

(assert (= (and b!1495844 res!1017549) b!1495845))

(assert (= (or b!1495845 b!1495847) bm!68023))

(assert (=> b!1495844 m!1379227))

(declare-fun m!1379257 () Bool)

(assert (=> b!1495844 m!1379257))

(declare-fun m!1379259 () Bool)

(assert (=> b!1495844 m!1379259))

(assert (=> b!1495844 m!1379227))

(declare-fun m!1379261 () Bool)

(assert (=> b!1495844 m!1379261))

(assert (=> b!1495846 m!1379227))

(assert (=> b!1495846 m!1379227))

(assert (=> b!1495846 m!1379229))

(declare-fun m!1379263 () Bool)

(assert (=> bm!68023 m!1379263))

(assert (=> b!1495644 d!157263))

(declare-fun d!157265 () Bool)

(assert (=> d!157265 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!127314 d!157265))

(declare-fun d!157267 () Bool)

(assert (=> d!157267 (= (array_inv!37082 a!2862) (bvsge (size!48688 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!127314 d!157267))

(declare-fun d!157269 () Bool)

(assert (=> d!157269 (= (validKeyInArray!0 (select (arr!48137 a!2862) j!93)) (and (not (= (select (arr!48137 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48137 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1495645 d!157269))

(declare-fun b!1495866 () Bool)

(declare-fun lt!651859 () SeekEntryResult!12400)

(assert (=> b!1495866 (and (bvsge (index!51993 lt!651859) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651859) (size!48688 a!2862)))))

(declare-fun res!1017558 () Bool)

(assert (=> b!1495866 (= res!1017558 (= (select (arr!48137 a!2862) (index!51993 lt!651859)) (select (arr!48137 a!2862) j!93)))))

(declare-fun e!837878 () Bool)

(assert (=> b!1495866 (=> res!1017558 e!837878)))

(declare-fun e!837875 () Bool)

(assert (=> b!1495866 (= e!837875 e!837878)))

(declare-fun b!1495867 () Bool)

(declare-fun e!837877 () Bool)

(assert (=> b!1495867 (= e!837877 e!837875)))

(declare-fun res!1017557 () Bool)

(assert (=> b!1495867 (= res!1017557 (and ((_ is Intermediate!12400) lt!651859) (not (undefined!13212 lt!651859)) (bvslt (x!133611 lt!651859) #b01111111111111111111111111111110) (bvsge (x!133611 lt!651859) #b00000000000000000000000000000000) (bvsge (x!133611 lt!651859) x!665)))))

(assert (=> b!1495867 (=> (not res!1017557) (not e!837875))))

(declare-fun d!157271 () Bool)

(assert (=> d!157271 e!837877))

(declare-fun c!138692 () Bool)

(assert (=> d!157271 (= c!138692 (and ((_ is Intermediate!12400) lt!651859) (undefined!13212 lt!651859)))))

(declare-fun e!837876 () SeekEntryResult!12400)

(assert (=> d!157271 (= lt!651859 e!837876)))

(declare-fun c!138693 () Bool)

(assert (=> d!157271 (= c!138693 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651860 () (_ BitVec 64))

(assert (=> d!157271 (= lt!651860 (select (arr!48137 a!2862) index!646))))

(assert (=> d!157271 (validMask!0 mask!2687)))

(assert (=> d!157271 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48137 a!2862) j!93) a!2862 mask!2687) lt!651859)))

(declare-fun b!1495868 () Bool)

(assert (=> b!1495868 (and (bvsge (index!51993 lt!651859) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651859) (size!48688 a!2862)))))

(assert (=> b!1495868 (= e!837878 (= (select (arr!48137 a!2862) (index!51993 lt!651859)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495869 () Bool)

(declare-fun e!837879 () SeekEntryResult!12400)

(assert (=> b!1495869 (= e!837876 e!837879)))

(declare-fun c!138691 () Bool)

(assert (=> b!1495869 (= c!138691 (or (= lt!651860 (select (arr!48137 a!2862) j!93)) (= (bvadd lt!651860 lt!651860) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495870 () Bool)

(assert (=> b!1495870 (= e!837876 (Intermediate!12400 true index!646 x!665))))

(declare-fun b!1495871 () Bool)

(assert (=> b!1495871 (= e!837879 (Intermediate!12400 false index!646 x!665))))

(declare-fun b!1495872 () Bool)

(assert (=> b!1495872 (= e!837877 (bvsge (x!133611 lt!651859) #b01111111111111111111111111111110))))

(declare-fun b!1495873 () Bool)

(assert (=> b!1495873 (= e!837879 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48137 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495874 () Bool)

(assert (=> b!1495874 (and (bvsge (index!51993 lt!651859) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651859) (size!48688 a!2862)))))

(declare-fun res!1017556 () Bool)

(assert (=> b!1495874 (= res!1017556 (= (select (arr!48137 a!2862) (index!51993 lt!651859)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495874 (=> res!1017556 e!837878)))

(assert (= (and d!157271 c!138693) b!1495870))

(assert (= (and d!157271 (not c!138693)) b!1495869))

(assert (= (and b!1495869 c!138691) b!1495871))

(assert (= (and b!1495869 (not c!138691)) b!1495873))

(assert (= (and d!157271 c!138692) b!1495872))

(assert (= (and d!157271 (not c!138692)) b!1495867))

(assert (= (and b!1495867 res!1017557) b!1495866))

(assert (= (and b!1495866 (not res!1017558)) b!1495874))

(assert (= (and b!1495874 (not res!1017556)) b!1495868))

(declare-fun m!1379265 () Bool)

(assert (=> b!1495866 m!1379265))

(assert (=> b!1495873 m!1379121))

(assert (=> b!1495873 m!1379121))

(assert (=> b!1495873 m!1379083))

(declare-fun m!1379267 () Bool)

(assert (=> b!1495873 m!1379267))

(assert (=> b!1495868 m!1379265))

(assert (=> d!157271 m!1379115))

(assert (=> d!157271 m!1379105))

(assert (=> b!1495874 m!1379265))

(assert (=> b!1495656 d!157271))

(declare-fun b!1495875 () Bool)

(declare-fun lt!651861 () SeekEntryResult!12400)

(assert (=> b!1495875 (and (bvsge (index!51993 lt!651861) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651861) (size!48688 lt!651787)))))

(declare-fun res!1017561 () Bool)

(assert (=> b!1495875 (= res!1017561 (= (select (arr!48137 lt!651787) (index!51993 lt!651861)) lt!651783))))

(declare-fun e!837883 () Bool)

(assert (=> b!1495875 (=> res!1017561 e!837883)))

(declare-fun e!837880 () Bool)

(assert (=> b!1495875 (= e!837880 e!837883)))

(declare-fun b!1495876 () Bool)

(declare-fun e!837882 () Bool)

(assert (=> b!1495876 (= e!837882 e!837880)))

(declare-fun res!1017560 () Bool)

(assert (=> b!1495876 (= res!1017560 (and ((_ is Intermediate!12400) lt!651861) (not (undefined!13212 lt!651861)) (bvslt (x!133611 lt!651861) #b01111111111111111111111111111110) (bvsge (x!133611 lt!651861) #b00000000000000000000000000000000) (bvsge (x!133611 lt!651861) x!665)))))

(assert (=> b!1495876 (=> (not res!1017560) (not e!837880))))

(declare-fun d!157273 () Bool)

(assert (=> d!157273 e!837882))

(declare-fun c!138695 () Bool)

(assert (=> d!157273 (= c!138695 (and ((_ is Intermediate!12400) lt!651861) (undefined!13212 lt!651861)))))

(declare-fun e!837881 () SeekEntryResult!12400)

(assert (=> d!157273 (= lt!651861 e!837881)))

(declare-fun c!138696 () Bool)

(assert (=> d!157273 (= c!138696 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651862 () (_ BitVec 64))

(assert (=> d!157273 (= lt!651862 (select (arr!48137 lt!651787) index!646))))

(assert (=> d!157273 (validMask!0 mask!2687)))

(assert (=> d!157273 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651783 lt!651787 mask!2687) lt!651861)))

(declare-fun b!1495877 () Bool)

(assert (=> b!1495877 (and (bvsge (index!51993 lt!651861) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651861) (size!48688 lt!651787)))))

(assert (=> b!1495877 (= e!837883 (= (select (arr!48137 lt!651787) (index!51993 lt!651861)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495878 () Bool)

(declare-fun e!837884 () SeekEntryResult!12400)

(assert (=> b!1495878 (= e!837881 e!837884)))

(declare-fun c!138694 () Bool)

(assert (=> b!1495878 (= c!138694 (or (= lt!651862 lt!651783) (= (bvadd lt!651862 lt!651862) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495879 () Bool)

(assert (=> b!1495879 (= e!837881 (Intermediate!12400 true index!646 x!665))))

(declare-fun b!1495880 () Bool)

(assert (=> b!1495880 (= e!837884 (Intermediate!12400 false index!646 x!665))))

(declare-fun b!1495881 () Bool)

(assert (=> b!1495881 (= e!837882 (bvsge (x!133611 lt!651861) #b01111111111111111111111111111110))))

(declare-fun b!1495882 () Bool)

(assert (=> b!1495882 (= e!837884 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!651783 lt!651787 mask!2687))))

(declare-fun b!1495883 () Bool)

(assert (=> b!1495883 (and (bvsge (index!51993 lt!651861) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651861) (size!48688 lt!651787)))))

(declare-fun res!1017559 () Bool)

(assert (=> b!1495883 (= res!1017559 (= (select (arr!48137 lt!651787) (index!51993 lt!651861)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495883 (=> res!1017559 e!837883)))

(assert (= (and d!157273 c!138696) b!1495879))

(assert (= (and d!157273 (not c!138696)) b!1495878))

(assert (= (and b!1495878 c!138694) b!1495880))

(assert (= (and b!1495878 (not c!138694)) b!1495882))

(assert (= (and d!157273 c!138695) b!1495881))

(assert (= (and d!157273 (not c!138695)) b!1495876))

(assert (= (and b!1495876 res!1017560) b!1495875))

(assert (= (and b!1495875 (not res!1017561)) b!1495883))

(assert (= (and b!1495883 (not res!1017559)) b!1495877))

(declare-fun m!1379269 () Bool)

(assert (=> b!1495875 m!1379269))

(assert (=> b!1495882 m!1379121))

(assert (=> b!1495882 m!1379121))

(declare-fun m!1379271 () Bool)

(assert (=> b!1495882 m!1379271))

(assert (=> b!1495877 m!1379269))

(assert (=> d!157273 m!1379207))

(assert (=> d!157273 m!1379105))

(assert (=> b!1495883 m!1379269))

(assert (=> b!1495647 d!157273))

(declare-fun e!837890 () SeekEntryResult!12400)

(declare-fun b!1495893 () Bool)

(assert (=> b!1495893 (= e!837890 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651785 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) intermediateAfterIndex!19 lt!651783 lt!651787 mask!2687))))

(declare-fun d!157275 () Bool)

(declare-fun lt!651865 () SeekEntryResult!12400)

(assert (=> d!157275 (and (or ((_ is Undefined!12400) lt!651865) (not ((_ is Found!12400) lt!651865)) (and (bvsge (index!51992 lt!651865) #b00000000000000000000000000000000) (bvslt (index!51992 lt!651865) (size!48688 lt!651787)))) (or ((_ is Undefined!12400) lt!651865) ((_ is Found!12400) lt!651865) (not ((_ is MissingVacant!12400) lt!651865)) (not (= (index!51994 lt!651865) intermediateAfterIndex!19)) (and (bvsge (index!51994 lt!651865) #b00000000000000000000000000000000) (bvslt (index!51994 lt!651865) (size!48688 lt!651787)))) (or ((_ is Undefined!12400) lt!651865) (ite ((_ is Found!12400) lt!651865) (= (select (arr!48137 lt!651787) (index!51992 lt!651865)) lt!651783) (and ((_ is MissingVacant!12400) lt!651865) (= (index!51994 lt!651865) intermediateAfterIndex!19) (= (select (arr!48137 lt!651787) (index!51994 lt!651865)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!837892 () SeekEntryResult!12400)

(assert (=> d!157275 (= lt!651865 e!837892)))

(declare-fun c!138700 () Bool)

(assert (=> d!157275 (= c!138700 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!651866 () (_ BitVec 64))

(assert (=> d!157275 (= lt!651866 (select (arr!48137 lt!651787) lt!651785))))

(assert (=> d!157275 (validMask!0 mask!2687)))

(assert (=> d!157275 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651785 intermediateAfterIndex!19 lt!651783 lt!651787 mask!2687) lt!651865)))

(declare-fun b!1495894 () Bool)

(assert (=> b!1495894 (= e!837890 (MissingVacant!12400 intermediateAfterIndex!19))))

(declare-fun b!1495895 () Bool)

(declare-fun e!837891 () SeekEntryResult!12400)

(assert (=> b!1495895 (= e!837892 e!837891)))

(declare-fun c!138701 () Bool)

(assert (=> b!1495895 (= c!138701 (= lt!651866 lt!651783))))

(declare-fun b!1495896 () Bool)

(assert (=> b!1495896 (= e!837891 (Found!12400 lt!651785))))

(declare-fun b!1495897 () Bool)

(declare-fun c!138702 () Bool)

(assert (=> b!1495897 (= c!138702 (= lt!651866 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495897 (= e!837891 e!837890)))

(declare-fun b!1495898 () Bool)

(assert (=> b!1495898 (= e!837892 Undefined!12400)))

(assert (= (and d!157275 c!138700) b!1495898))

(assert (= (and d!157275 (not c!138700)) b!1495895))

(assert (= (and b!1495895 c!138701) b!1495896))

(assert (= (and b!1495895 (not c!138701)) b!1495897))

(assert (= (and b!1495897 c!138702) b!1495894))

(assert (= (and b!1495897 (not c!138702)) b!1495893))

(assert (=> b!1495893 m!1379221))

(assert (=> b!1495893 m!1379221))

(declare-fun m!1379275 () Bool)

(assert (=> b!1495893 m!1379275))

(declare-fun m!1379277 () Bool)

(assert (=> d!157275 m!1379277))

(declare-fun m!1379279 () Bool)

(assert (=> d!157275 m!1379279))

(assert (=> d!157275 m!1379225))

(assert (=> d!157275 m!1379105))

(assert (=> b!1495657 d!157275))

(assert (=> b!1495657 d!157243))

(declare-fun b!1495899 () Bool)

(declare-fun lt!651867 () SeekEntryResult!12400)

(assert (=> b!1495899 (and (bvsge (index!51993 lt!651867) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651867) (size!48688 a!2862)))))

(declare-fun res!1017567 () Bool)

(assert (=> b!1495899 (= res!1017567 (= (select (arr!48137 a!2862) (index!51993 lt!651867)) (select (arr!48137 a!2862) j!93)))))

(declare-fun e!837896 () Bool)

(assert (=> b!1495899 (=> res!1017567 e!837896)))

(declare-fun e!837893 () Bool)

(assert (=> b!1495899 (= e!837893 e!837896)))

(declare-fun b!1495900 () Bool)

(declare-fun e!837895 () Bool)

(assert (=> b!1495900 (= e!837895 e!837893)))

(declare-fun res!1017566 () Bool)

(assert (=> b!1495900 (= res!1017566 (and ((_ is Intermediate!12400) lt!651867) (not (undefined!13212 lt!651867)) (bvslt (x!133611 lt!651867) #b01111111111111111111111111111110) (bvsge (x!133611 lt!651867) #b00000000000000000000000000000000) (bvsge (x!133611 lt!651867) #b00000000000000000000000000000000)))))

(assert (=> b!1495900 (=> (not res!1017566) (not e!837893))))

(declare-fun d!157277 () Bool)

(assert (=> d!157277 e!837895))

(declare-fun c!138704 () Bool)

(assert (=> d!157277 (= c!138704 (and ((_ is Intermediate!12400) lt!651867) (undefined!13212 lt!651867)))))

(declare-fun e!837894 () SeekEntryResult!12400)

(assert (=> d!157277 (= lt!651867 e!837894)))

(declare-fun c!138705 () Bool)

(assert (=> d!157277 (= c!138705 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!651868 () (_ BitVec 64))

(assert (=> d!157277 (= lt!651868 (select (arr!48137 a!2862) (toIndex!0 (select (arr!48137 a!2862) j!93) mask!2687)))))

(assert (=> d!157277 (validMask!0 mask!2687)))

(assert (=> d!157277 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48137 a!2862) j!93) mask!2687) (select (arr!48137 a!2862) j!93) a!2862 mask!2687) lt!651867)))

(declare-fun b!1495901 () Bool)

(assert (=> b!1495901 (and (bvsge (index!51993 lt!651867) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651867) (size!48688 a!2862)))))

(assert (=> b!1495901 (= e!837896 (= (select (arr!48137 a!2862) (index!51993 lt!651867)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495902 () Bool)

(declare-fun e!837897 () SeekEntryResult!12400)

(assert (=> b!1495902 (= e!837894 e!837897)))

(declare-fun c!138703 () Bool)

(assert (=> b!1495902 (= c!138703 (or (= lt!651868 (select (arr!48137 a!2862) j!93)) (= (bvadd lt!651868 lt!651868) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495903 () Bool)

(assert (=> b!1495903 (= e!837894 (Intermediate!12400 true (toIndex!0 (select (arr!48137 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495904 () Bool)

(assert (=> b!1495904 (= e!837897 (Intermediate!12400 false (toIndex!0 (select (arr!48137 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495905 () Bool)

(assert (=> b!1495905 (= e!837895 (bvsge (x!133611 lt!651867) #b01111111111111111111111111111110))))

(declare-fun b!1495906 () Bool)

(assert (=> b!1495906 (= e!837897 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48137 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48137 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495907 () Bool)

(assert (=> b!1495907 (and (bvsge (index!51993 lt!651867) #b00000000000000000000000000000000) (bvslt (index!51993 lt!651867) (size!48688 a!2862)))))

(declare-fun res!1017565 () Bool)

(assert (=> b!1495907 (= res!1017565 (= (select (arr!48137 a!2862) (index!51993 lt!651867)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495907 (=> res!1017565 e!837896)))

(assert (= (and d!157277 c!138705) b!1495903))

(assert (= (and d!157277 (not c!138705)) b!1495902))

(assert (= (and b!1495902 c!138703) b!1495904))

(assert (= (and b!1495902 (not c!138703)) b!1495906))

(assert (= (and d!157277 c!138704) b!1495905))

(assert (= (and d!157277 (not c!138704)) b!1495900))

(assert (= (and b!1495900 res!1017566) b!1495899))

(assert (= (and b!1495899 (not res!1017567)) b!1495907))

(assert (= (and b!1495907 (not res!1017565)) b!1495901))

(declare-fun m!1379283 () Bool)

(assert (=> b!1495899 m!1379283))

(assert (=> b!1495906 m!1379129))

(declare-fun m!1379285 () Bool)

(assert (=> b!1495906 m!1379285))

(assert (=> b!1495906 m!1379285))

(assert (=> b!1495906 m!1379083))

(declare-fun m!1379287 () Bool)

(assert (=> b!1495906 m!1379287))

(assert (=> b!1495901 m!1379283))

(assert (=> d!157277 m!1379129))

(declare-fun m!1379289 () Bool)

(assert (=> d!157277 m!1379289))

(assert (=> d!157277 m!1379105))

(assert (=> b!1495907 m!1379283))

(assert (=> b!1495648 d!157277))

(declare-fun d!157281 () Bool)

(declare-fun lt!651870 () (_ BitVec 32))

(declare-fun lt!651869 () (_ BitVec 32))

(assert (=> d!157281 (= lt!651870 (bvmul (bvxor lt!651869 (bvlshr lt!651869 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157281 (= lt!651869 ((_ extract 31 0) (bvand (bvxor (select (arr!48137 a!2862) j!93) (bvlshr (select (arr!48137 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157281 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017541 (let ((h!36211 ((_ extract 31 0) (bvand (bvxor (select (arr!48137 a!2862) j!93) (bvlshr (select (arr!48137 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133616 (bvmul (bvxor h!36211 (bvlshr h!36211 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133616 (bvlshr x!133616 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017541 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017541 #b00000000000000000000000000000000))))))

(assert (=> d!157281 (= (toIndex!0 (select (arr!48137 a!2862) j!93) mask!2687) (bvand (bvxor lt!651870 (bvlshr lt!651870 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1495648 d!157281))

(declare-fun b!1495908 () Bool)

(declare-fun e!837899 () SeekEntryResult!12400)

(declare-fun lt!651872 () SeekEntryResult!12400)

(assert (=> b!1495908 (= e!837899 (MissingZero!12400 (index!51993 lt!651872)))))

(declare-fun d!157283 () Bool)

(declare-fun lt!651873 () SeekEntryResult!12400)

(assert (=> d!157283 (and (or ((_ is Undefined!12400) lt!651873) (not ((_ is Found!12400) lt!651873)) (and (bvsge (index!51992 lt!651873) #b00000000000000000000000000000000) (bvslt (index!51992 lt!651873) (size!48688 a!2862)))) (or ((_ is Undefined!12400) lt!651873) ((_ is Found!12400) lt!651873) (not ((_ is MissingZero!12400) lt!651873)) (and (bvsge (index!51991 lt!651873) #b00000000000000000000000000000000) (bvslt (index!51991 lt!651873) (size!48688 a!2862)))) (or ((_ is Undefined!12400) lt!651873) ((_ is Found!12400) lt!651873) ((_ is MissingZero!12400) lt!651873) (not ((_ is MissingVacant!12400) lt!651873)) (and (bvsge (index!51994 lt!651873) #b00000000000000000000000000000000) (bvslt (index!51994 lt!651873) (size!48688 a!2862)))) (or ((_ is Undefined!12400) lt!651873) (ite ((_ is Found!12400) lt!651873) (= (select (arr!48137 a!2862) (index!51992 lt!651873)) (select (arr!48137 a!2862) j!93)) (ite ((_ is MissingZero!12400) lt!651873) (= (select (arr!48137 a!2862) (index!51991 lt!651873)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12400) lt!651873) (= (select (arr!48137 a!2862) (index!51994 lt!651873)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!837900 () SeekEntryResult!12400)

(assert (=> d!157283 (= lt!651873 e!837900)))

(declare-fun c!138707 () Bool)

(assert (=> d!157283 (= c!138707 (and ((_ is Intermediate!12400) lt!651872) (undefined!13212 lt!651872)))))

(assert (=> d!157283 (= lt!651872 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48137 a!2862) j!93) mask!2687) (select (arr!48137 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!157283 (validMask!0 mask!2687)))

(assert (=> d!157283 (= (seekEntryOrOpen!0 (select (arr!48137 a!2862) j!93) a!2862 mask!2687) lt!651873)))

(declare-fun b!1495909 () Bool)

(assert (=> b!1495909 (= e!837899 (seekKeyOrZeroReturnVacant!0 (x!133611 lt!651872) (index!51993 lt!651872) (index!51993 lt!651872) (select (arr!48137 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495910 () Bool)

(declare-fun e!837898 () SeekEntryResult!12400)

(assert (=> b!1495910 (= e!837898 (Found!12400 (index!51993 lt!651872)))))

(declare-fun b!1495911 () Bool)

(assert (=> b!1495911 (= e!837900 e!837898)))

(declare-fun lt!651871 () (_ BitVec 64))

(assert (=> b!1495911 (= lt!651871 (select (arr!48137 a!2862) (index!51993 lt!651872)))))

(declare-fun c!138708 () Bool)

(assert (=> b!1495911 (= c!138708 (= lt!651871 (select (arr!48137 a!2862) j!93)))))

(declare-fun b!1495912 () Bool)

(declare-fun c!138706 () Bool)

(assert (=> b!1495912 (= c!138706 (= lt!651871 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495912 (= e!837898 e!837899)))

(declare-fun b!1495913 () Bool)

(assert (=> b!1495913 (= e!837900 Undefined!12400)))

(assert (= (and d!157283 c!138707) b!1495913))

(assert (= (and d!157283 (not c!138707)) b!1495911))

(assert (= (and b!1495911 c!138708) b!1495910))

(assert (= (and b!1495911 (not c!138708)) b!1495912))

(assert (= (and b!1495912 c!138706) b!1495908))

(assert (= (and b!1495912 (not c!138706)) b!1495909))

(assert (=> d!157283 m!1379083))

(assert (=> d!157283 m!1379129))

(declare-fun m!1379291 () Bool)

(assert (=> d!157283 m!1379291))

(assert (=> d!157283 m!1379105))

(declare-fun m!1379293 () Bool)

(assert (=> d!157283 m!1379293))

(assert (=> d!157283 m!1379129))

(assert (=> d!157283 m!1379083))

(assert (=> d!157283 m!1379131))

(declare-fun m!1379295 () Bool)

(assert (=> d!157283 m!1379295))

(assert (=> b!1495909 m!1379083))

(declare-fun m!1379297 () Bool)

(assert (=> b!1495909 m!1379297))

(declare-fun m!1379299 () Bool)

(assert (=> b!1495911 m!1379299))

(assert (=> b!1495650 d!157283))

(check-sat (not bm!68023) (not b!1495830) (not b!1495809) (not b!1495873) (not d!157275) (not b!1495810) (not b!1495821) (not b!1495906) (not b!1495797) (not b!1495811) (not bm!68022) (not d!157283) (not b!1495882) (not d!157277) (not d!157243) (not bm!68019) (not d!157261) (not d!157239) (not d!157271) (not b!1495748) (not b!1495893) (not b!1495840) (not d!157245) (not d!157253) (not d!157249) (not d!157273) (not b!1495767) (not b!1495909) (not b!1495842) (not b!1495846) (not d!157241) (not b!1495844))
(check-sat)
