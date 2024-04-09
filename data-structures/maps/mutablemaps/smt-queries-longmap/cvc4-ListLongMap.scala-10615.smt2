; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124874 () Bool)

(assert start!124874)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1448854 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!815960 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1448854 (= e!815960 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448855 () Bool)

(declare-fun res!980462 () Bool)

(declare-fun e!815966 () Bool)

(assert (=> b!1448855 (=> (not res!980462) (not e!815966))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((array!98239 0))(
  ( (array!98240 (arr!47403 (Array (_ BitVec 32) (_ BitVec 64))) (size!47954 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98239)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448855 (= res!980462 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47954 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47954 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47954 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448856 () Bool)

(declare-fun e!815965 () Bool)

(assert (=> b!1448856 (= e!815966 e!815965)))

(declare-fun res!980466 () Bool)

(assert (=> b!1448856 (=> (not res!980466) (not e!815965))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1448856 (= res!980466 (= (select (store (arr!47403 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!635659 () array!98239)

(assert (=> b!1448856 (= lt!635659 (array!98240 (store (arr!47403 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47954 a!2862)))))

(declare-fun b!1448857 () Bool)

(declare-fun res!980457 () Bool)

(assert (=> b!1448857 (=> (not res!980457) (not e!815966))))

(declare-datatypes ((List!34084 0))(
  ( (Nil!34081) (Cons!34080 (h!35430 (_ BitVec 64)) (t!48785 List!34084)) )
))
(declare-fun arrayNoDuplicates!0 (array!98239 (_ BitVec 32) List!34084) Bool)

(assert (=> b!1448857 (= res!980457 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34081))))

(declare-fun b!1448859 () Bool)

(declare-fun e!815958 () Bool)

(assert (=> b!1448859 (= e!815958 e!815960)))

(declare-fun res!980467 () Bool)

(assert (=> b!1448859 (=> (not res!980467) (not e!815960))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11678 0))(
  ( (MissingZero!11678 (index!49103 (_ BitVec 32))) (Found!11678 (index!49104 (_ BitVec 32))) (Intermediate!11678 (undefined!12490 Bool) (index!49105 (_ BitVec 32)) (x!130770 (_ BitVec 32))) (Undefined!11678) (MissingVacant!11678 (index!49106 (_ BitVec 32))) )
))
(declare-fun lt!635653 () SeekEntryResult!11678)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98239 (_ BitVec 32)) SeekEntryResult!11678)

(assert (=> b!1448859 (= res!980467 (= lt!635653 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47403 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448860 () Bool)

(declare-fun e!815961 () Bool)

(declare-fun e!815962 () Bool)

(assert (=> b!1448860 (= e!815961 (not e!815962))))

(declare-fun res!980468 () Bool)

(assert (=> b!1448860 (=> res!980468 e!815962)))

(assert (=> b!1448860 (= res!980468 (or (and (= (select (arr!47403 a!2862) index!646) (select (store (arr!47403 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47403 a!2862) index!646) (select (arr!47403 a!2862) j!93))) (not (= (select (arr!47403 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47403 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815957 () Bool)

(assert (=> b!1448860 e!815957))

(declare-fun res!980460 () Bool)

(assert (=> b!1448860 (=> (not res!980460) (not e!815957))))

(assert (=> b!1448860 (= res!980460 (and (= lt!635653 (Found!11678 j!93)) (or (= (select (arr!47403 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47403 a!2862) intermediateBeforeIndex!19) (select (arr!47403 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98239 (_ BitVec 32)) SeekEntryResult!11678)

(assert (=> b!1448860 (= lt!635653 (seekEntryOrOpen!0 (select (arr!47403 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98239 (_ BitVec 32)) Bool)

(assert (=> b!1448860 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48800 0))(
  ( (Unit!48801) )
))
(declare-fun lt!635657 () Unit!48800)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98239 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48800)

(assert (=> b!1448860 (= lt!635657 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448861 () Bool)

(declare-fun res!980458 () Bool)

(assert (=> b!1448861 (=> (not res!980458) (not e!815966))))

(assert (=> b!1448861 (= res!980458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448862 () Bool)

(declare-fun res!980464 () Bool)

(assert (=> b!1448862 (=> (not res!980464) (not e!815966))))

(assert (=> b!1448862 (= res!980464 (and (= (size!47954 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47954 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47954 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448863 () Bool)

(declare-fun e!815959 () Bool)

(assert (=> b!1448863 (= e!815965 e!815959)))

(declare-fun res!980469 () Bool)

(assert (=> b!1448863 (=> (not res!980469) (not e!815959))))

(declare-fun lt!635658 () SeekEntryResult!11678)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98239 (_ BitVec 32)) SeekEntryResult!11678)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448863 (= res!980469 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47403 a!2862) j!93) mask!2687) (select (arr!47403 a!2862) j!93) a!2862 mask!2687) lt!635658))))

(assert (=> b!1448863 (= lt!635658 (Intermediate!11678 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448864 () Bool)

(assert (=> b!1448864 (= e!815959 e!815961)))

(declare-fun res!980461 () Bool)

(assert (=> b!1448864 (=> (not res!980461) (not e!815961))))

(declare-fun lt!635656 () SeekEntryResult!11678)

(assert (=> b!1448864 (= res!980461 (= lt!635656 (Intermediate!11678 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635655 () (_ BitVec 64))

(assert (=> b!1448864 (= lt!635656 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635655 mask!2687) lt!635655 lt!635659 mask!2687))))

(assert (=> b!1448864 (= lt!635655 (select (store (arr!47403 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448865 () Bool)

(declare-fun res!980465 () Bool)

(assert (=> b!1448865 (=> (not res!980465) (not e!815966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448865 (= res!980465 (validKeyInArray!0 (select (arr!47403 a!2862) j!93)))))

(declare-fun b!1448866 () Bool)

(assert (=> b!1448866 (= e!815962 true)))

(declare-fun lt!635654 () SeekEntryResult!11678)

(assert (=> b!1448866 (= lt!635654 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47403 a!2862) j!93) a!2862 mask!2687))))

(declare-fun res!980456 () Bool)

(assert (=> start!124874 (=> (not res!980456) (not e!815966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124874 (= res!980456 (validMask!0 mask!2687))))

(assert (=> start!124874 e!815966))

(assert (=> start!124874 true))

(declare-fun array_inv!36348 (array!98239) Bool)

(assert (=> start!124874 (array_inv!36348 a!2862)))

(declare-fun b!1448858 () Bool)

(assert (=> b!1448858 (= e!815957 e!815958)))

(declare-fun res!980470 () Bool)

(assert (=> b!1448858 (=> res!980470 e!815958)))

(assert (=> b!1448858 (= res!980470 (or (and (= (select (arr!47403 a!2862) index!646) (select (store (arr!47403 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47403 a!2862) index!646) (select (arr!47403 a!2862) j!93))) (not (= (select (arr!47403 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448867 () Bool)

(declare-fun e!815963 () Bool)

(assert (=> b!1448867 (= e!815963 (= lt!635656 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635655 lt!635659 mask!2687)))))

(declare-fun b!1448868 () Bool)

(declare-fun res!980471 () Bool)

(assert (=> b!1448868 (=> (not res!980471) (not e!815959))))

(assert (=> b!1448868 (= res!980471 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47403 a!2862) j!93) a!2862 mask!2687) lt!635658))))

(declare-fun b!1448869 () Bool)

(declare-fun res!980463 () Bool)

(assert (=> b!1448869 (=> (not res!980463) (not e!815961))))

(assert (=> b!1448869 (= res!980463 e!815963)))

(declare-fun c!133712 () Bool)

(assert (=> b!1448869 (= c!133712 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448870 () Bool)

(declare-fun res!980459 () Bool)

(assert (=> b!1448870 (=> (not res!980459) (not e!815966))))

(assert (=> b!1448870 (= res!980459 (validKeyInArray!0 (select (arr!47403 a!2862) i!1006)))))

(declare-fun b!1448871 () Bool)

(declare-fun res!980472 () Bool)

(assert (=> b!1448871 (=> (not res!980472) (not e!815961))))

(assert (=> b!1448871 (= res!980472 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448872 () Bool)

(assert (=> b!1448872 (= e!815963 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635655 lt!635659 mask!2687) (seekEntryOrOpen!0 lt!635655 lt!635659 mask!2687)))))

(assert (= (and start!124874 res!980456) b!1448862))

(assert (= (and b!1448862 res!980464) b!1448870))

(assert (= (and b!1448870 res!980459) b!1448865))

(assert (= (and b!1448865 res!980465) b!1448861))

(assert (= (and b!1448861 res!980458) b!1448857))

(assert (= (and b!1448857 res!980457) b!1448855))

(assert (= (and b!1448855 res!980462) b!1448856))

(assert (= (and b!1448856 res!980466) b!1448863))

(assert (= (and b!1448863 res!980469) b!1448868))

(assert (= (and b!1448868 res!980471) b!1448864))

(assert (= (and b!1448864 res!980461) b!1448869))

(assert (= (and b!1448869 c!133712) b!1448867))

(assert (= (and b!1448869 (not c!133712)) b!1448872))

(assert (= (and b!1448869 res!980463) b!1448871))

(assert (= (and b!1448871 res!980472) b!1448860))

(assert (= (and b!1448860 res!980460) b!1448858))

(assert (= (and b!1448858 (not res!980470)) b!1448859))

(assert (= (and b!1448859 res!980467) b!1448854))

(assert (= (and b!1448860 (not res!980468)) b!1448866))

(declare-fun m!1337649 () Bool)

(assert (=> b!1448863 m!1337649))

(assert (=> b!1448863 m!1337649))

(declare-fun m!1337651 () Bool)

(assert (=> b!1448863 m!1337651))

(assert (=> b!1448863 m!1337651))

(assert (=> b!1448863 m!1337649))

(declare-fun m!1337653 () Bool)

(assert (=> b!1448863 m!1337653))

(declare-fun m!1337655 () Bool)

(assert (=> start!124874 m!1337655))

(declare-fun m!1337657 () Bool)

(assert (=> start!124874 m!1337657))

(declare-fun m!1337659 () Bool)

(assert (=> b!1448858 m!1337659))

(declare-fun m!1337661 () Bool)

(assert (=> b!1448858 m!1337661))

(declare-fun m!1337663 () Bool)

(assert (=> b!1448858 m!1337663))

(assert (=> b!1448858 m!1337649))

(assert (=> b!1448865 m!1337649))

(assert (=> b!1448865 m!1337649))

(declare-fun m!1337665 () Bool)

(assert (=> b!1448865 m!1337665))

(assert (=> b!1448859 m!1337649))

(assert (=> b!1448859 m!1337649))

(declare-fun m!1337667 () Bool)

(assert (=> b!1448859 m!1337667))

(declare-fun m!1337669 () Bool)

(assert (=> b!1448861 m!1337669))

(declare-fun m!1337671 () Bool)

(assert (=> b!1448860 m!1337671))

(assert (=> b!1448860 m!1337661))

(declare-fun m!1337673 () Bool)

(assert (=> b!1448860 m!1337673))

(assert (=> b!1448860 m!1337663))

(assert (=> b!1448860 m!1337659))

(assert (=> b!1448860 m!1337649))

(declare-fun m!1337675 () Bool)

(assert (=> b!1448860 m!1337675))

(declare-fun m!1337677 () Bool)

(assert (=> b!1448860 m!1337677))

(assert (=> b!1448860 m!1337649))

(assert (=> b!1448856 m!1337661))

(declare-fun m!1337679 () Bool)

(assert (=> b!1448856 m!1337679))

(declare-fun m!1337681 () Bool)

(assert (=> b!1448864 m!1337681))

(assert (=> b!1448864 m!1337681))

(declare-fun m!1337683 () Bool)

(assert (=> b!1448864 m!1337683))

(assert (=> b!1448864 m!1337661))

(declare-fun m!1337685 () Bool)

(assert (=> b!1448864 m!1337685))

(assert (=> b!1448866 m!1337649))

(assert (=> b!1448866 m!1337649))

(declare-fun m!1337687 () Bool)

(assert (=> b!1448866 m!1337687))

(declare-fun m!1337689 () Bool)

(assert (=> b!1448857 m!1337689))

(declare-fun m!1337691 () Bool)

(assert (=> b!1448870 m!1337691))

(assert (=> b!1448870 m!1337691))

(declare-fun m!1337693 () Bool)

(assert (=> b!1448870 m!1337693))

(declare-fun m!1337695 () Bool)

(assert (=> b!1448872 m!1337695))

(declare-fun m!1337697 () Bool)

(assert (=> b!1448872 m!1337697))

(declare-fun m!1337699 () Bool)

(assert (=> b!1448867 m!1337699))

(assert (=> b!1448868 m!1337649))

(assert (=> b!1448868 m!1337649))

(declare-fun m!1337701 () Bool)

(assert (=> b!1448868 m!1337701))

(push 1)

