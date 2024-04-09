; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125448 () Bool)

(assert start!125448)

(declare-fun b!1466785 () Bool)

(declare-fun res!995524 () Bool)

(declare-fun e!824020 () Bool)

(assert (=> b!1466785 (=> (not res!995524) (not e!824020))))

(declare-fun e!824021 () Bool)

(assert (=> b!1466785 (= res!995524 e!824021)))

(declare-fun c!135145 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1466785 (= c!135145 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466786 () Bool)

(declare-fun res!995535 () Bool)

(assert (=> b!1466786 (=> (not res!995535) (not e!824020))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1466786 (= res!995535 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466787 () Bool)

(declare-fun res!995527 () Bool)

(declare-fun e!824015 () Bool)

(assert (=> b!1466787 (=> (not res!995527) (not e!824015))))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98813 0))(
  ( (array!98814 (arr!47690 (Array (_ BitVec 32) (_ BitVec 64))) (size!48241 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98813)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11965 0))(
  ( (MissingZero!11965 (index!50251 (_ BitVec 32))) (Found!11965 (index!50252 (_ BitVec 32))) (Intermediate!11965 (undefined!12777 Bool) (index!50253 (_ BitVec 32)) (x!131825 (_ BitVec 32))) (Undefined!11965) (MissingVacant!11965 (index!50254 (_ BitVec 32))) )
))
(declare-fun lt!641852 () SeekEntryResult!11965)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98813 (_ BitVec 32)) SeekEntryResult!11965)

(assert (=> b!1466787 (= res!995527 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47690 a!2862) j!93) a!2862 mask!2687) lt!641852))))

(declare-fun b!1466788 () Bool)

(assert (=> b!1466788 (= e!824015 e!824020)))

(declare-fun res!995529 () Bool)

(assert (=> b!1466788 (=> (not res!995529) (not e!824020))))

(declare-fun lt!641848 () SeekEntryResult!11965)

(assert (=> b!1466788 (= res!995529 (= lt!641848 (Intermediate!11965 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!641849 () (_ BitVec 64))

(declare-fun lt!641854 () array!98813)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466788 (= lt!641848 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641849 mask!2687) lt!641849 lt!641854 mask!2687))))

(assert (=> b!1466788 (= lt!641849 (select (store (arr!47690 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466789 () Bool)

(declare-fun res!995526 () Bool)

(declare-fun e!824018 () Bool)

(assert (=> b!1466789 (=> res!995526 e!824018)))

(assert (=> b!1466789 (= res!995526 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466791 () Bool)

(declare-fun lt!641847 () (_ BitVec 32))

(declare-fun e!824014 () Bool)

(assert (=> b!1466791 (= e!824014 (not (= lt!641848 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641847 lt!641849 lt!641854 mask!2687))))))

(declare-fun b!1466792 () Bool)

(declare-fun e!824013 () Bool)

(assert (=> b!1466792 (= e!824020 (not e!824013))))

(declare-fun res!995522 () Bool)

(assert (=> b!1466792 (=> res!995522 e!824013)))

(assert (=> b!1466792 (= res!995522 (or (and (= (select (arr!47690 a!2862) index!646) (select (store (arr!47690 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47690 a!2862) index!646) (select (arr!47690 a!2862) j!93))) (= (select (arr!47690 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun lt!641851 () SeekEntryResult!11965)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1466792 (and (= lt!641851 (Found!11965 j!93)) (or (= (select (arr!47690 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47690 a!2862) intermediateBeforeIndex!19) (select (arr!47690 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98813 (_ BitVec 32)) SeekEntryResult!11965)

(assert (=> b!1466792 (= lt!641851 (seekEntryOrOpen!0 (select (arr!47690 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98813 (_ BitVec 32)) Bool)

(assert (=> b!1466792 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49374 0))(
  ( (Unit!49375) )
))
(declare-fun lt!641853 () Unit!49374)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49374)

(assert (=> b!1466792 (= lt!641853 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466793 () Bool)

(declare-fun res!995525 () Bool)

(declare-fun e!824019 () Bool)

(assert (=> b!1466793 (=> (not res!995525) (not e!824019))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466793 (= res!995525 (validKeyInArray!0 (select (arr!47690 a!2862) j!93)))))

(declare-fun b!1466794 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98813 (_ BitVec 32)) SeekEntryResult!11965)

(assert (=> b!1466794 (= e!824021 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641849 lt!641854 mask!2687) (seekEntryOrOpen!0 lt!641849 lt!641854 mask!2687)))))

(declare-fun b!1466795 () Bool)

(declare-fun res!995533 () Bool)

(assert (=> b!1466795 (=> (not res!995533) (not e!824019))))

(assert (=> b!1466795 (= res!995533 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48241 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48241 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48241 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1466796 () Bool)

(declare-fun res!995538 () Bool)

(assert (=> b!1466796 (=> res!995538 e!824018)))

(assert (=> b!1466796 (= res!995538 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641847 (select (arr!47690 a!2862) j!93) a!2862 mask!2687) lt!641852)))))

(declare-fun b!1466797 () Bool)

(assert (=> b!1466797 (= e!824014 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641847 intermediateAfterIndex!19 lt!641849 lt!641854 mask!2687) (seekEntryOrOpen!0 lt!641849 lt!641854 mask!2687))))))

(declare-fun b!1466798 () Bool)

(declare-fun res!995534 () Bool)

(assert (=> b!1466798 (=> (not res!995534) (not e!824019))))

(declare-datatypes ((List!34371 0))(
  ( (Nil!34368) (Cons!34367 (h!35717 (_ BitVec 64)) (t!49072 List!34371)) )
))
(declare-fun arrayNoDuplicates!0 (array!98813 (_ BitVec 32) List!34371) Bool)

(assert (=> b!1466798 (= res!995534 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34368))))

(declare-fun b!1466799 () Bool)

(declare-fun res!995537 () Bool)

(assert (=> b!1466799 (=> (not res!995537) (not e!824019))))

(assert (=> b!1466799 (= res!995537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466800 () Bool)

(declare-fun e!824016 () Bool)

(assert (=> b!1466800 (= e!824016 e!824015)))

(declare-fun res!995536 () Bool)

(assert (=> b!1466800 (=> (not res!995536) (not e!824015))))

(assert (=> b!1466800 (= res!995536 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47690 a!2862) j!93) mask!2687) (select (arr!47690 a!2862) j!93) a!2862 mask!2687) lt!641852))))

(assert (=> b!1466800 (= lt!641852 (Intermediate!11965 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466801 () Bool)

(declare-fun res!995530 () Bool)

(assert (=> b!1466801 (=> (not res!995530) (not e!824019))))

(assert (=> b!1466801 (= res!995530 (and (= (size!48241 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48241 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48241 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1466802 () Bool)

(assert (=> b!1466802 (= e!824021 (= lt!641848 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641849 lt!641854 mask!2687)))))

(declare-fun b!1466803 () Bool)

(declare-fun res!995523 () Bool)

(assert (=> b!1466803 (=> res!995523 e!824018)))

(assert (=> b!1466803 (= res!995523 e!824014)))

(declare-fun c!135146 () Bool)

(assert (=> b!1466803 (= c!135146 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466804 () Bool)

(declare-fun res!995521 () Bool)

(assert (=> b!1466804 (=> (not res!995521) (not e!824019))))

(assert (=> b!1466804 (= res!995521 (validKeyInArray!0 (select (arr!47690 a!2862) i!1006)))))

(declare-fun b!1466805 () Bool)

(assert (=> b!1466805 (= e!824019 e!824016)))

(declare-fun res!995532 () Bool)

(assert (=> b!1466805 (=> (not res!995532) (not e!824016))))

(assert (=> b!1466805 (= res!995532 (= (select (store (arr!47690 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466805 (= lt!641854 (array!98814 (store (arr!47690 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48241 a!2862)))))

(declare-fun b!1466806 () Bool)

(assert (=> b!1466806 (= e!824013 e!824018)))

(declare-fun res!995528 () Bool)

(assert (=> b!1466806 (=> res!995528 e!824018)))

(assert (=> b!1466806 (= res!995528 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641847 #b00000000000000000000000000000000) (bvsge lt!641847 (size!48241 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466806 (= lt!641847 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466790 () Bool)

(assert (=> b!1466790 (= e!824018 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1466790 (= lt!641851 (seekEntryOrOpen!0 lt!641849 lt!641854 mask!2687))))

(declare-fun lt!641850 () Unit!49374)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49374)

(assert (=> b!1466790 (= lt!641850 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641847 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!995531 () Bool)

(assert (=> start!125448 (=> (not res!995531) (not e!824019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125448 (= res!995531 (validMask!0 mask!2687))))

(assert (=> start!125448 e!824019))

(assert (=> start!125448 true))

(declare-fun array_inv!36635 (array!98813) Bool)

(assert (=> start!125448 (array_inv!36635 a!2862)))

(assert (= (and start!125448 res!995531) b!1466801))

(assert (= (and b!1466801 res!995530) b!1466804))

(assert (= (and b!1466804 res!995521) b!1466793))

(assert (= (and b!1466793 res!995525) b!1466799))

(assert (= (and b!1466799 res!995537) b!1466798))

(assert (= (and b!1466798 res!995534) b!1466795))

(assert (= (and b!1466795 res!995533) b!1466805))

(assert (= (and b!1466805 res!995532) b!1466800))

(assert (= (and b!1466800 res!995536) b!1466787))

(assert (= (and b!1466787 res!995527) b!1466788))

(assert (= (and b!1466788 res!995529) b!1466785))

(assert (= (and b!1466785 c!135145) b!1466802))

(assert (= (and b!1466785 (not c!135145)) b!1466794))

(assert (= (and b!1466785 res!995524) b!1466786))

(assert (= (and b!1466786 res!995535) b!1466792))

(assert (= (and b!1466792 (not res!995522)) b!1466806))

(assert (= (and b!1466806 (not res!995528)) b!1466796))

(assert (= (and b!1466796 (not res!995538)) b!1466803))

(assert (= (and b!1466803 c!135146) b!1466791))

(assert (= (and b!1466803 (not c!135146)) b!1466797))

(assert (= (and b!1466803 (not res!995523)) b!1466789))

(assert (= (and b!1466789 (not res!995526)) b!1466790))

(declare-fun m!1353795 () Bool)

(assert (=> b!1466793 m!1353795))

(assert (=> b!1466793 m!1353795))

(declare-fun m!1353797 () Bool)

(assert (=> b!1466793 m!1353797))

(declare-fun m!1353799 () Bool)

(assert (=> b!1466797 m!1353799))

(declare-fun m!1353801 () Bool)

(assert (=> b!1466797 m!1353801))

(assert (=> b!1466796 m!1353795))

(assert (=> b!1466796 m!1353795))

(declare-fun m!1353803 () Bool)

(assert (=> b!1466796 m!1353803))

(declare-fun m!1353805 () Bool)

(assert (=> b!1466802 m!1353805))

(declare-fun m!1353807 () Bool)

(assert (=> b!1466805 m!1353807))

(declare-fun m!1353809 () Bool)

(assert (=> b!1466805 m!1353809))

(assert (=> b!1466787 m!1353795))

(assert (=> b!1466787 m!1353795))

(declare-fun m!1353811 () Bool)

(assert (=> b!1466787 m!1353811))

(declare-fun m!1353813 () Bool)

(assert (=> b!1466794 m!1353813))

(assert (=> b!1466794 m!1353801))

(declare-fun m!1353815 () Bool)

(assert (=> start!125448 m!1353815))

(declare-fun m!1353817 () Bool)

(assert (=> start!125448 m!1353817))

(declare-fun m!1353819 () Bool)

(assert (=> b!1466804 m!1353819))

(assert (=> b!1466804 m!1353819))

(declare-fun m!1353821 () Bool)

(assert (=> b!1466804 m!1353821))

(declare-fun m!1353823 () Bool)

(assert (=> b!1466799 m!1353823))

(declare-fun m!1353825 () Bool)

(assert (=> b!1466788 m!1353825))

(assert (=> b!1466788 m!1353825))

(declare-fun m!1353827 () Bool)

(assert (=> b!1466788 m!1353827))

(assert (=> b!1466788 m!1353807))

(declare-fun m!1353829 () Bool)

(assert (=> b!1466788 m!1353829))

(assert (=> b!1466800 m!1353795))

(assert (=> b!1466800 m!1353795))

(declare-fun m!1353831 () Bool)

(assert (=> b!1466800 m!1353831))

(assert (=> b!1466800 m!1353831))

(assert (=> b!1466800 m!1353795))

(declare-fun m!1353833 () Bool)

(assert (=> b!1466800 m!1353833))

(declare-fun m!1353835 () Bool)

(assert (=> b!1466791 m!1353835))

(assert (=> b!1466790 m!1353801))

(declare-fun m!1353837 () Bool)

(assert (=> b!1466790 m!1353837))

(declare-fun m!1353839 () Bool)

(assert (=> b!1466806 m!1353839))

(declare-fun m!1353841 () Bool)

(assert (=> b!1466792 m!1353841))

(assert (=> b!1466792 m!1353807))

(declare-fun m!1353843 () Bool)

(assert (=> b!1466792 m!1353843))

(declare-fun m!1353845 () Bool)

(assert (=> b!1466792 m!1353845))

(declare-fun m!1353847 () Bool)

(assert (=> b!1466792 m!1353847))

(assert (=> b!1466792 m!1353795))

(declare-fun m!1353849 () Bool)

(assert (=> b!1466792 m!1353849))

(declare-fun m!1353851 () Bool)

(assert (=> b!1466792 m!1353851))

(assert (=> b!1466792 m!1353795))

(declare-fun m!1353853 () Bool)

(assert (=> b!1466798 m!1353853))

(check-sat (not start!125448) (not b!1466806) (not b!1466797) (not b!1466794) (not b!1466799) (not b!1466798) (not b!1466804) (not b!1466792) (not b!1466788) (not b!1466787) (not b!1466796) (not b!1466802) (not b!1466793) (not b!1466791) (not b!1466800) (not b!1466790))
(check-sat)
