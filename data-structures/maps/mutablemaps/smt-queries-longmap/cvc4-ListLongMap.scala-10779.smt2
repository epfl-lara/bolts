; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126218 () Bool)

(assert start!126218)

(declare-fun b!1477646 () Bool)

(declare-fun e!828974 () Bool)

(assert (=> b!1477646 (= e!828974 (not true))))

(declare-fun e!828978 () Bool)

(assert (=> b!1477646 e!828978))

(declare-fun res!1003861 () Bool)

(assert (=> b!1477646 (=> (not res!1003861) (not e!828978))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12158 0))(
  ( (MissingZero!12158 (index!51023 (_ BitVec 32))) (Found!12158 (index!51024 (_ BitVec 32))) (Intermediate!12158 (undefined!12970 Bool) (index!51025 (_ BitVec 32)) (x!132616 (_ BitVec 32))) (Undefined!12158) (MissingVacant!12158 (index!51026 (_ BitVec 32))) )
))
(declare-fun lt!645385 () SeekEntryResult!12158)

(declare-datatypes ((array!99241 0))(
  ( (array!99242 (arr!47895 (Array (_ BitVec 32) (_ BitVec 64))) (size!48446 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99241)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1477646 (= res!1003861 (and (= lt!645385 (Found!12158 j!93)) (or (= (select (arr!47895 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47895 a!2862) intermediateBeforeIndex!19) (select (arr!47895 a!2862) j!93)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99241 (_ BitVec 32)) SeekEntryResult!12158)

(assert (=> b!1477646 (= lt!645385 (seekEntryOrOpen!0 (select (arr!47895 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99241 (_ BitVec 32)) Bool)

(assert (=> b!1477646 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49604 0))(
  ( (Unit!49605) )
))
(declare-fun lt!645386 () Unit!49604)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99241 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49604)

(assert (=> b!1477646 (= lt!645386 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477647 () Bool)

(declare-fun res!1003857 () Bool)

(declare-fun e!828977 () Bool)

(assert (=> b!1477647 (=> (not res!1003857) (not e!828977))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1477647 (= res!1003857 (and (= (size!48446 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48446 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48446 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477648 () Bool)

(declare-fun res!1003859 () Bool)

(assert (=> b!1477648 (=> (not res!1003859) (not e!828977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477648 (= res!1003859 (validKeyInArray!0 (select (arr!47895 a!2862) i!1006)))))

(declare-fun b!1477649 () Bool)

(declare-fun e!828975 () Bool)

(declare-fun e!828980 () Bool)

(assert (=> b!1477649 (= e!828975 e!828980)))

(declare-fun res!1003854 () Bool)

(assert (=> b!1477649 (=> (not res!1003854) (not e!828980))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99241 (_ BitVec 32)) SeekEntryResult!12158)

(assert (=> b!1477649 (= res!1003854 (= lt!645385 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47895 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477650 () Bool)

(declare-fun res!1003863 () Bool)

(assert (=> b!1477650 (=> (not res!1003863) (not e!828977))))

(declare-datatypes ((List!34576 0))(
  ( (Nil!34573) (Cons!34572 (h!35940 (_ BitVec 64)) (t!49277 List!34576)) )
))
(declare-fun arrayNoDuplicates!0 (array!99241 (_ BitVec 32) List!34576) Bool)

(assert (=> b!1477650 (= res!1003863 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34573))))

(declare-fun b!1477651 () Bool)

(assert (=> b!1477651 (= e!828978 e!828975)))

(declare-fun res!1003855 () Bool)

(assert (=> b!1477651 (=> res!1003855 e!828975)))

(assert (=> b!1477651 (= res!1003855 (or (and (= (select (arr!47895 a!2862) index!646) (select (store (arr!47895 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47895 a!2862) index!646) (select (arr!47895 a!2862) j!93))) (not (= (select (arr!47895 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477652 () Bool)

(declare-fun e!828972 () Bool)

(assert (=> b!1477652 (= e!828972 e!828974)))

(declare-fun res!1003851 () Bool)

(assert (=> b!1477652 (=> (not res!1003851) (not e!828974))))

(declare-fun lt!645388 () SeekEntryResult!12158)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477652 (= res!1003851 (= lt!645388 (Intermediate!12158 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645383 () (_ BitVec 64))

(declare-fun lt!645387 () array!99241)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99241 (_ BitVec 32)) SeekEntryResult!12158)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477652 (= lt!645388 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645383 mask!2687) lt!645383 lt!645387 mask!2687))))

(assert (=> b!1477652 (= lt!645383 (select (store (arr!47895 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477653 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1477653 (= e!828980 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477654 () Bool)

(declare-fun e!828979 () Bool)

(assert (=> b!1477654 (= e!828979 e!828972)))

(declare-fun res!1003862 () Bool)

(assert (=> b!1477654 (=> (not res!1003862) (not e!828972))))

(declare-fun lt!645384 () SeekEntryResult!12158)

(assert (=> b!1477654 (= res!1003862 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47895 a!2862) j!93) mask!2687) (select (arr!47895 a!2862) j!93) a!2862 mask!2687) lt!645384))))

(assert (=> b!1477654 (= lt!645384 (Intermediate!12158 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477655 () Bool)

(declare-fun res!1003856 () Bool)

(assert (=> b!1477655 (=> (not res!1003856) (not e!828977))))

(assert (=> b!1477655 (= res!1003856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477656 () Bool)

(assert (=> b!1477656 (= e!828977 e!828979)))

(declare-fun res!1003852 () Bool)

(assert (=> b!1477656 (=> (not res!1003852) (not e!828979))))

(assert (=> b!1477656 (= res!1003852 (= (select (store (arr!47895 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477656 (= lt!645387 (array!99242 (store (arr!47895 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48446 a!2862)))))

(declare-fun b!1477657 () Bool)

(declare-fun res!1003849 () Bool)

(assert (=> b!1477657 (=> (not res!1003849) (not e!828974))))

(assert (=> b!1477657 (= res!1003849 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477658 () Bool)

(declare-fun res!1003860 () Bool)

(assert (=> b!1477658 (=> (not res!1003860) (not e!828977))))

(assert (=> b!1477658 (= res!1003860 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48446 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48446 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48446 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477659 () Bool)

(declare-fun res!1003858 () Bool)

(assert (=> b!1477659 (=> (not res!1003858) (not e!828977))))

(assert (=> b!1477659 (= res!1003858 (validKeyInArray!0 (select (arr!47895 a!2862) j!93)))))

(declare-fun b!1477660 () Bool)

(declare-fun res!1003848 () Bool)

(assert (=> b!1477660 (=> (not res!1003848) (not e!828972))))

(assert (=> b!1477660 (= res!1003848 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47895 a!2862) j!93) a!2862 mask!2687) lt!645384))))

(declare-fun res!1003850 () Bool)

(assert (=> start!126218 (=> (not res!1003850) (not e!828977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126218 (= res!1003850 (validMask!0 mask!2687))))

(assert (=> start!126218 e!828977))

(assert (=> start!126218 true))

(declare-fun array_inv!36840 (array!99241) Bool)

(assert (=> start!126218 (array_inv!36840 a!2862)))

(declare-fun e!828973 () Bool)

(declare-fun b!1477661 () Bool)

(assert (=> b!1477661 (= e!828973 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645383 lt!645387 mask!2687) (seekEntryOrOpen!0 lt!645383 lt!645387 mask!2687)))))

(declare-fun b!1477662 () Bool)

(assert (=> b!1477662 (= e!828973 (= lt!645388 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645383 lt!645387 mask!2687)))))

(declare-fun b!1477663 () Bool)

(declare-fun res!1003853 () Bool)

(assert (=> b!1477663 (=> (not res!1003853) (not e!828974))))

(assert (=> b!1477663 (= res!1003853 e!828973)))

(declare-fun c!136421 () Bool)

(assert (=> b!1477663 (= c!136421 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126218 res!1003850) b!1477647))

(assert (= (and b!1477647 res!1003857) b!1477648))

(assert (= (and b!1477648 res!1003859) b!1477659))

(assert (= (and b!1477659 res!1003858) b!1477655))

(assert (= (and b!1477655 res!1003856) b!1477650))

(assert (= (and b!1477650 res!1003863) b!1477658))

(assert (= (and b!1477658 res!1003860) b!1477656))

(assert (= (and b!1477656 res!1003852) b!1477654))

(assert (= (and b!1477654 res!1003862) b!1477660))

(assert (= (and b!1477660 res!1003848) b!1477652))

(assert (= (and b!1477652 res!1003851) b!1477663))

(assert (= (and b!1477663 c!136421) b!1477662))

(assert (= (and b!1477663 (not c!136421)) b!1477661))

(assert (= (and b!1477663 res!1003853) b!1477657))

(assert (= (and b!1477657 res!1003849) b!1477646))

(assert (= (and b!1477646 res!1003861) b!1477651))

(assert (= (and b!1477651 (not res!1003855)) b!1477649))

(assert (= (and b!1477649 res!1003854) b!1477653))

(declare-fun m!1363643 () Bool)

(assert (=> b!1477662 m!1363643))

(declare-fun m!1363645 () Bool)

(assert (=> b!1477652 m!1363645))

(assert (=> b!1477652 m!1363645))

(declare-fun m!1363647 () Bool)

(assert (=> b!1477652 m!1363647))

(declare-fun m!1363649 () Bool)

(assert (=> b!1477652 m!1363649))

(declare-fun m!1363651 () Bool)

(assert (=> b!1477652 m!1363651))

(declare-fun m!1363653 () Bool)

(assert (=> b!1477654 m!1363653))

(assert (=> b!1477654 m!1363653))

(declare-fun m!1363655 () Bool)

(assert (=> b!1477654 m!1363655))

(assert (=> b!1477654 m!1363655))

(assert (=> b!1477654 m!1363653))

(declare-fun m!1363657 () Bool)

(assert (=> b!1477654 m!1363657))

(declare-fun m!1363659 () Bool)

(assert (=> b!1477661 m!1363659))

(declare-fun m!1363661 () Bool)

(assert (=> b!1477661 m!1363661))

(declare-fun m!1363663 () Bool)

(assert (=> b!1477648 m!1363663))

(assert (=> b!1477648 m!1363663))

(declare-fun m!1363665 () Bool)

(assert (=> b!1477648 m!1363665))

(declare-fun m!1363667 () Bool)

(assert (=> b!1477650 m!1363667))

(declare-fun m!1363669 () Bool)

(assert (=> b!1477651 m!1363669))

(assert (=> b!1477651 m!1363649))

(declare-fun m!1363671 () Bool)

(assert (=> b!1477651 m!1363671))

(assert (=> b!1477651 m!1363653))

(declare-fun m!1363673 () Bool)

(assert (=> b!1477655 m!1363673))

(assert (=> b!1477649 m!1363653))

(assert (=> b!1477649 m!1363653))

(declare-fun m!1363675 () Bool)

(assert (=> b!1477649 m!1363675))

(assert (=> b!1477659 m!1363653))

(assert (=> b!1477659 m!1363653))

(declare-fun m!1363677 () Bool)

(assert (=> b!1477659 m!1363677))

(assert (=> b!1477656 m!1363649))

(declare-fun m!1363679 () Bool)

(assert (=> b!1477656 m!1363679))

(assert (=> b!1477660 m!1363653))

(assert (=> b!1477660 m!1363653))

(declare-fun m!1363681 () Bool)

(assert (=> b!1477660 m!1363681))

(declare-fun m!1363683 () Bool)

(assert (=> start!126218 m!1363683))

(declare-fun m!1363685 () Bool)

(assert (=> start!126218 m!1363685))

(declare-fun m!1363687 () Bool)

(assert (=> b!1477646 m!1363687))

(declare-fun m!1363689 () Bool)

(assert (=> b!1477646 m!1363689))

(assert (=> b!1477646 m!1363653))

(declare-fun m!1363691 () Bool)

(assert (=> b!1477646 m!1363691))

(declare-fun m!1363693 () Bool)

(assert (=> b!1477646 m!1363693))

(assert (=> b!1477646 m!1363653))

(push 1)

