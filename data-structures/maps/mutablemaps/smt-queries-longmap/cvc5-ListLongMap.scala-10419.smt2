; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122716 () Bool)

(assert start!122716)

(declare-fun b!1421021 () Bool)

(declare-fun e!803609 () Bool)

(assert (=> b!1421021 (= e!803609 (not true))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96999 0))(
  ( (array!97000 (arr!46813 (Array (_ BitVec 32) (_ BitVec 64))) (size!47364 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96999)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96999 (_ BitVec 32)) Bool)

(assert (=> b!1421021 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48024 0))(
  ( (Unit!48025) )
))
(declare-fun lt!626067 () Unit!48024)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96999 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48024)

(assert (=> b!1421021 (= lt!626067 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421022 () Bool)

(declare-fun res!956564 () Bool)

(assert (=> b!1421022 (=> (not res!956564) (not e!803609))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421022 (= res!956564 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421023 () Bool)

(declare-fun res!956573 () Bool)

(declare-fun e!803606 () Bool)

(assert (=> b!1421023 (=> (not res!956573) (not e!803606))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421023 (= res!956573 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47364 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47364 a!2831))))))

(declare-fun b!1421024 () Bool)

(declare-fun res!956566 () Bool)

(assert (=> b!1421024 (=> (not res!956566) (not e!803606))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421024 (= res!956566 (and (= (size!47364 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47364 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47364 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421025 () Bool)

(declare-fun res!956565 () Bool)

(assert (=> b!1421025 (=> (not res!956565) (not e!803606))))

(assert (=> b!1421025 (= res!956565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421026 () Bool)

(declare-fun e!803607 () Bool)

(assert (=> b!1421026 (= e!803607 e!803609)))

(declare-fun res!956571 () Bool)

(assert (=> b!1421026 (=> (not res!956571) (not e!803609))))

(declare-datatypes ((SeekEntryResult!11120 0))(
  ( (MissingZero!11120 (index!46871 (_ BitVec 32))) (Found!11120 (index!46872 (_ BitVec 32))) (Intermediate!11120 (undefined!11932 Bool) (index!46873 (_ BitVec 32)) (x!128533 (_ BitVec 32))) (Undefined!11120) (MissingVacant!11120 (index!46874 (_ BitVec 32))) )
))
(declare-fun lt!626066 () SeekEntryResult!11120)

(declare-fun lt!626064 () (_ BitVec 64))

(declare-fun lt!626068 () array!96999)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96999 (_ BitVec 32)) SeekEntryResult!11120)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421026 (= res!956571 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626064 mask!2608) lt!626064 lt!626068 mask!2608) lt!626066))))

(assert (=> b!1421026 (= lt!626066 (Intermediate!11120 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421026 (= lt!626064 (select (store (arr!46813 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421026 (= lt!626068 (array!97000 (store (arr!46813 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47364 a!2831)))))

(declare-fun b!1421027 () Bool)

(assert (=> b!1421027 (= e!803606 e!803607)))

(declare-fun res!956567 () Bool)

(assert (=> b!1421027 (=> (not res!956567) (not e!803607))))

(declare-fun lt!626065 () SeekEntryResult!11120)

(assert (=> b!1421027 (= res!956567 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46813 a!2831) j!81) mask!2608) (select (arr!46813 a!2831) j!81) a!2831 mask!2608) lt!626065))))

(assert (=> b!1421027 (= lt!626065 (Intermediate!11120 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421028 () Bool)

(declare-fun res!956568 () Bool)

(assert (=> b!1421028 (=> (not res!956568) (not e!803609))))

(assert (=> b!1421028 (= res!956568 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46813 a!2831) j!81) a!2831 mask!2608) lt!626065))))

(declare-fun b!1421030 () Bool)

(declare-fun res!956570 () Bool)

(assert (=> b!1421030 (=> (not res!956570) (not e!803606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421030 (= res!956570 (validKeyInArray!0 (select (arr!46813 a!2831) i!982)))))

(declare-fun b!1421031 () Bool)

(declare-fun res!956569 () Bool)

(assert (=> b!1421031 (=> (not res!956569) (not e!803609))))

(assert (=> b!1421031 (= res!956569 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626064 lt!626068 mask!2608) lt!626066))))

(declare-fun b!1421032 () Bool)

(declare-fun res!956574 () Bool)

(assert (=> b!1421032 (=> (not res!956574) (not e!803606))))

(declare-datatypes ((List!33503 0))(
  ( (Nil!33500) (Cons!33499 (h!34801 (_ BitVec 64)) (t!48204 List!33503)) )
))
(declare-fun arrayNoDuplicates!0 (array!96999 (_ BitVec 32) List!33503) Bool)

(assert (=> b!1421032 (= res!956574 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33500))))

(declare-fun b!1421029 () Bool)

(declare-fun res!956563 () Bool)

(assert (=> b!1421029 (=> (not res!956563) (not e!803606))))

(assert (=> b!1421029 (= res!956563 (validKeyInArray!0 (select (arr!46813 a!2831) j!81)))))

(declare-fun res!956572 () Bool)

(assert (=> start!122716 (=> (not res!956572) (not e!803606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122716 (= res!956572 (validMask!0 mask!2608))))

(assert (=> start!122716 e!803606))

(assert (=> start!122716 true))

(declare-fun array_inv!35758 (array!96999) Bool)

(assert (=> start!122716 (array_inv!35758 a!2831)))

(assert (= (and start!122716 res!956572) b!1421024))

(assert (= (and b!1421024 res!956566) b!1421030))

(assert (= (and b!1421030 res!956570) b!1421029))

(assert (= (and b!1421029 res!956563) b!1421025))

(assert (= (and b!1421025 res!956565) b!1421032))

(assert (= (and b!1421032 res!956574) b!1421023))

(assert (= (and b!1421023 res!956573) b!1421027))

(assert (= (and b!1421027 res!956567) b!1421026))

(assert (= (and b!1421026 res!956571) b!1421028))

(assert (= (and b!1421028 res!956568) b!1421031))

(assert (= (and b!1421031 res!956569) b!1421022))

(assert (= (and b!1421022 res!956564) b!1421021))

(declare-fun m!1311623 () Bool)

(assert (=> b!1421030 m!1311623))

(assert (=> b!1421030 m!1311623))

(declare-fun m!1311625 () Bool)

(assert (=> b!1421030 m!1311625))

(declare-fun m!1311627 () Bool)

(assert (=> b!1421021 m!1311627))

(declare-fun m!1311629 () Bool)

(assert (=> b!1421021 m!1311629))

(declare-fun m!1311631 () Bool)

(assert (=> b!1421027 m!1311631))

(assert (=> b!1421027 m!1311631))

(declare-fun m!1311633 () Bool)

(assert (=> b!1421027 m!1311633))

(assert (=> b!1421027 m!1311633))

(assert (=> b!1421027 m!1311631))

(declare-fun m!1311635 () Bool)

(assert (=> b!1421027 m!1311635))

(declare-fun m!1311637 () Bool)

(assert (=> start!122716 m!1311637))

(declare-fun m!1311639 () Bool)

(assert (=> start!122716 m!1311639))

(declare-fun m!1311641 () Bool)

(assert (=> b!1421032 m!1311641))

(declare-fun m!1311643 () Bool)

(assert (=> b!1421025 m!1311643))

(assert (=> b!1421028 m!1311631))

(assert (=> b!1421028 m!1311631))

(declare-fun m!1311645 () Bool)

(assert (=> b!1421028 m!1311645))

(declare-fun m!1311647 () Bool)

(assert (=> b!1421031 m!1311647))

(assert (=> b!1421029 m!1311631))

(assert (=> b!1421029 m!1311631))

(declare-fun m!1311649 () Bool)

(assert (=> b!1421029 m!1311649))

(declare-fun m!1311651 () Bool)

(assert (=> b!1421026 m!1311651))

(assert (=> b!1421026 m!1311651))

(declare-fun m!1311653 () Bool)

(assert (=> b!1421026 m!1311653))

(declare-fun m!1311655 () Bool)

(assert (=> b!1421026 m!1311655))

(declare-fun m!1311657 () Bool)

(assert (=> b!1421026 m!1311657))

(push 1)

