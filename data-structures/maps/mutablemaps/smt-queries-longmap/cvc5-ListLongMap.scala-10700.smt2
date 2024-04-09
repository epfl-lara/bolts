; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125380 () Bool)

(assert start!125380)

(declare-fun b!1464541 () Bool)

(declare-fun res!993699 () Bool)

(declare-fun e!823052 () Bool)

(assert (=> b!1464541 (=> (not res!993699) (not e!823052))))

(declare-datatypes ((array!98745 0))(
  ( (array!98746 (arr!47656 (Array (_ BitVec 32) (_ BitVec 64))) (size!48207 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98745)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98745 (_ BitVec 32)) Bool)

(assert (=> b!1464541 (= res!993699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464542 () Bool)

(declare-fun res!993687 () Bool)

(declare-fun e!823044 () Bool)

(assert (=> b!1464542 (=> (not res!993687) (not e!823044))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11931 0))(
  ( (MissingZero!11931 (index!50115 (_ BitVec 32))) (Found!11931 (index!50116 (_ BitVec 32))) (Intermediate!11931 (undefined!12743 Bool) (index!50117 (_ BitVec 32)) (x!131703 (_ BitVec 32))) (Undefined!11931) (MissingVacant!11931 (index!50118 (_ BitVec 32))) )
))
(declare-fun lt!641086 () SeekEntryResult!11931)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98745 (_ BitVec 32)) SeekEntryResult!11931)

(assert (=> b!1464542 (= res!993687 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47656 a!2862) j!93) a!2862 mask!2687) lt!641086))))

(declare-fun b!1464543 () Bool)

(declare-fun res!993698 () Bool)

(declare-fun e!823046 () Bool)

(assert (=> b!1464543 (=> (not res!993698) (not e!823046))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98745 (_ BitVec 32)) SeekEntryResult!11931)

(assert (=> b!1464543 (= res!993698 (= (seekEntryOrOpen!0 (select (arr!47656 a!2862) j!93) a!2862 mask!2687) (Found!11931 j!93)))))

(declare-fun b!1464544 () Bool)

(declare-fun res!993702 () Bool)

(declare-fun e!823050 () Bool)

(assert (=> b!1464544 (=> (not res!993702) (not e!823050))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1464544 (= res!993702 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464545 () Bool)

(declare-fun res!993688 () Bool)

(assert (=> b!1464545 (=> (not res!993688) (not e!823052))))

(assert (=> b!1464545 (= res!993688 (and (= (size!48207 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48207 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48207 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464546 () Bool)

(declare-fun e!823043 () Bool)

(assert (=> b!1464546 (= e!823043 true)))

(declare-fun lt!641083 () Bool)

(declare-fun e!823049 () Bool)

(assert (=> b!1464546 (= lt!641083 e!823049)))

(declare-fun c!134941 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1464546 (= c!134941 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464547 () Bool)

(declare-fun e!823048 () Bool)

(assert (=> b!1464547 (= e!823052 e!823048)))

(declare-fun res!993686 () Bool)

(assert (=> b!1464547 (=> (not res!993686) (not e!823048))))

(assert (=> b!1464547 (= res!993686 (= (select (store (arr!47656 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!641084 () array!98745)

(assert (=> b!1464547 (= lt!641084 (array!98746 (store (arr!47656 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48207 a!2862)))))

(declare-fun b!1464548 () Bool)

(declare-fun res!993695 () Bool)

(assert (=> b!1464548 (=> (not res!993695) (not e!823052))))

(declare-datatypes ((List!34337 0))(
  ( (Nil!34334) (Cons!34333 (h!35683 (_ BitVec 64)) (t!49038 List!34337)) )
))
(declare-fun arrayNoDuplicates!0 (array!98745 (_ BitVec 32) List!34337) Bool)

(assert (=> b!1464548 (= res!993695 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34334))))

(declare-fun e!823047 () Bool)

(declare-fun lt!641085 () (_ BitVec 64))

(declare-fun b!1464550 () Bool)

(declare-fun lt!641087 () SeekEntryResult!11931)

(assert (=> b!1464550 (= e!823047 (= lt!641087 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641085 lt!641084 mask!2687)))))

(declare-fun lt!641089 () (_ BitVec 32))

(declare-fun b!1464551 () Bool)

(assert (=> b!1464551 (= e!823049 (not (= lt!641087 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641089 lt!641085 lt!641084 mask!2687))))))

(declare-fun b!1464552 () Bool)

(declare-fun res!993692 () Bool)

(assert (=> b!1464552 (=> (not res!993692) (not e!823050))))

(assert (=> b!1464552 (= res!993692 e!823047)))

(declare-fun c!134942 () Bool)

(assert (=> b!1464552 (= c!134942 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464553 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98745 (_ BitVec 32)) SeekEntryResult!11931)

(assert (=> b!1464553 (= e!823049 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641089 intermediateAfterIndex!19 lt!641085 lt!641084 mask!2687) (seekEntryOrOpen!0 lt!641085 lt!641084 mask!2687))))))

(declare-fun b!1464554 () Bool)

(declare-fun res!993697 () Bool)

(assert (=> b!1464554 (=> (not res!993697) (not e!823052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464554 (= res!993697 (validKeyInArray!0 (select (arr!47656 a!2862) j!93)))))

(declare-fun b!1464555 () Bool)

(declare-fun res!993700 () Bool)

(assert (=> b!1464555 (=> (not res!993700) (not e!823052))))

(assert (=> b!1464555 (= res!993700 (validKeyInArray!0 (select (arr!47656 a!2862) i!1006)))))

(declare-fun b!1464556 () Bool)

(assert (=> b!1464556 (= e!823044 e!823050)))

(declare-fun res!993689 () Bool)

(assert (=> b!1464556 (=> (not res!993689) (not e!823050))))

(assert (=> b!1464556 (= res!993689 (= lt!641087 (Intermediate!11931 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464556 (= lt!641087 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641085 mask!2687) lt!641085 lt!641084 mask!2687))))

(assert (=> b!1464556 (= lt!641085 (select (store (arr!47656 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464557 () Bool)

(declare-fun e!823051 () Bool)

(assert (=> b!1464557 (= e!823050 (not e!823051))))

(declare-fun res!993685 () Bool)

(assert (=> b!1464557 (=> res!993685 e!823051)))

(assert (=> b!1464557 (= res!993685 (or (and (= (select (arr!47656 a!2862) index!646) (select (store (arr!47656 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47656 a!2862) index!646) (select (arr!47656 a!2862) j!93))) (= (select (arr!47656 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1464557 e!823046))

(declare-fun res!993696 () Bool)

(assert (=> b!1464557 (=> (not res!993696) (not e!823046))))

(assert (=> b!1464557 (= res!993696 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49306 0))(
  ( (Unit!49307) )
))
(declare-fun lt!641088 () Unit!49306)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49306)

(assert (=> b!1464557 (= lt!641088 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464549 () Bool)

(assert (=> b!1464549 (= e!823051 e!823043)))

(declare-fun res!993693 () Bool)

(assert (=> b!1464549 (=> res!993693 e!823043)))

(assert (=> b!1464549 (= res!993693 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641089 #b00000000000000000000000000000000) (bvsge lt!641089 (size!48207 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464549 (= lt!641089 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!993701 () Bool)

(assert (=> start!125380 (=> (not res!993701) (not e!823052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125380 (= res!993701 (validMask!0 mask!2687))))

(assert (=> start!125380 e!823052))

(assert (=> start!125380 true))

(declare-fun array_inv!36601 (array!98745) Bool)

(assert (=> start!125380 (array_inv!36601 a!2862)))

(declare-fun b!1464558 () Bool)

(assert (=> b!1464558 (= e!823047 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641085 lt!641084 mask!2687) (seekEntryOrOpen!0 lt!641085 lt!641084 mask!2687)))))

(declare-fun b!1464559 () Bool)

(assert (=> b!1464559 (= e!823048 e!823044)))

(declare-fun res!993694 () Bool)

(assert (=> b!1464559 (=> (not res!993694) (not e!823044))))

(assert (=> b!1464559 (= res!993694 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47656 a!2862) j!93) mask!2687) (select (arr!47656 a!2862) j!93) a!2862 mask!2687) lt!641086))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1464559 (= lt!641086 (Intermediate!11931 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464560 () Bool)

(assert (=> b!1464560 (= e!823046 (or (= (select (arr!47656 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47656 a!2862) intermediateBeforeIndex!19) (select (arr!47656 a!2862) j!93))))))

(declare-fun b!1464561 () Bool)

(declare-fun res!993691 () Bool)

(assert (=> b!1464561 (=> (not res!993691) (not e!823052))))

(assert (=> b!1464561 (= res!993691 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48207 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48207 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48207 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464562 () Bool)

(declare-fun res!993690 () Bool)

(assert (=> b!1464562 (=> res!993690 e!823043)))

(assert (=> b!1464562 (= res!993690 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641089 (select (arr!47656 a!2862) j!93) a!2862 mask!2687) lt!641086)))))

(assert (= (and start!125380 res!993701) b!1464545))

(assert (= (and b!1464545 res!993688) b!1464555))

(assert (= (and b!1464555 res!993700) b!1464554))

(assert (= (and b!1464554 res!993697) b!1464541))

(assert (= (and b!1464541 res!993699) b!1464548))

(assert (= (and b!1464548 res!993695) b!1464561))

(assert (= (and b!1464561 res!993691) b!1464547))

(assert (= (and b!1464547 res!993686) b!1464559))

(assert (= (and b!1464559 res!993694) b!1464542))

(assert (= (and b!1464542 res!993687) b!1464556))

(assert (= (and b!1464556 res!993689) b!1464552))

(assert (= (and b!1464552 c!134942) b!1464550))

(assert (= (and b!1464552 (not c!134942)) b!1464558))

(assert (= (and b!1464552 res!993692) b!1464544))

(assert (= (and b!1464544 res!993702) b!1464557))

(assert (= (and b!1464557 res!993696) b!1464543))

(assert (= (and b!1464543 res!993698) b!1464560))

(assert (= (and b!1464557 (not res!993685)) b!1464549))

(assert (= (and b!1464549 (not res!993693)) b!1464562))

(assert (= (and b!1464562 (not res!993690)) b!1464546))

(assert (= (and b!1464546 c!134941) b!1464551))

(assert (= (and b!1464546 (not c!134941)) b!1464553))

(declare-fun m!1351791 () Bool)

(assert (=> b!1464555 m!1351791))

(assert (=> b!1464555 m!1351791))

(declare-fun m!1351793 () Bool)

(assert (=> b!1464555 m!1351793))

(declare-fun m!1351795 () Bool)

(assert (=> b!1464541 m!1351795))

(declare-fun m!1351797 () Bool)

(assert (=> b!1464543 m!1351797))

(assert (=> b!1464543 m!1351797))

(declare-fun m!1351799 () Bool)

(assert (=> b!1464543 m!1351799))

(declare-fun m!1351801 () Bool)

(assert (=> b!1464558 m!1351801))

(declare-fun m!1351803 () Bool)

(assert (=> b!1464558 m!1351803))

(assert (=> b!1464554 m!1351797))

(assert (=> b!1464554 m!1351797))

(declare-fun m!1351805 () Bool)

(assert (=> b!1464554 m!1351805))

(declare-fun m!1351807 () Bool)

(assert (=> b!1464548 m!1351807))

(assert (=> b!1464562 m!1351797))

(assert (=> b!1464562 m!1351797))

(declare-fun m!1351809 () Bool)

(assert (=> b!1464562 m!1351809))

(assert (=> b!1464542 m!1351797))

(assert (=> b!1464542 m!1351797))

(declare-fun m!1351811 () Bool)

(assert (=> b!1464542 m!1351811))

(declare-fun m!1351813 () Bool)

(assert (=> b!1464547 m!1351813))

(declare-fun m!1351815 () Bool)

(assert (=> b!1464547 m!1351815))

(declare-fun m!1351817 () Bool)

(assert (=> b!1464557 m!1351817))

(assert (=> b!1464557 m!1351813))

(declare-fun m!1351819 () Bool)

(assert (=> b!1464557 m!1351819))

(declare-fun m!1351821 () Bool)

(assert (=> b!1464557 m!1351821))

(declare-fun m!1351823 () Bool)

(assert (=> b!1464557 m!1351823))

(assert (=> b!1464557 m!1351797))

(declare-fun m!1351825 () Bool)

(assert (=> start!125380 m!1351825))

(declare-fun m!1351827 () Bool)

(assert (=> start!125380 m!1351827))

(declare-fun m!1351829 () Bool)

(assert (=> b!1464549 m!1351829))

(declare-fun m!1351831 () Bool)

(assert (=> b!1464550 m!1351831))

(declare-fun m!1351833 () Bool)

(assert (=> b!1464556 m!1351833))

(assert (=> b!1464556 m!1351833))

(declare-fun m!1351835 () Bool)

(assert (=> b!1464556 m!1351835))

(assert (=> b!1464556 m!1351813))

(declare-fun m!1351837 () Bool)

(assert (=> b!1464556 m!1351837))

(assert (=> b!1464559 m!1351797))

(assert (=> b!1464559 m!1351797))

(declare-fun m!1351839 () Bool)

(assert (=> b!1464559 m!1351839))

(assert (=> b!1464559 m!1351839))

(assert (=> b!1464559 m!1351797))

(declare-fun m!1351841 () Bool)

(assert (=> b!1464559 m!1351841))

(declare-fun m!1351843 () Bool)

(assert (=> b!1464553 m!1351843))

(assert (=> b!1464553 m!1351803))

(declare-fun m!1351845 () Bool)

(assert (=> b!1464551 m!1351845))

(declare-fun m!1351847 () Bool)

(assert (=> b!1464560 m!1351847))

(assert (=> b!1464560 m!1351797))

(push 1)

