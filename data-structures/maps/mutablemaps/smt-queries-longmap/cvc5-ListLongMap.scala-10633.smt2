; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124978 () Bool)

(assert start!124978)

(declare-fun b!1451814 () Bool)

(declare-fun e!817400 () Bool)

(declare-fun e!817395 () Bool)

(assert (=> b!1451814 (= e!817400 e!817395)))

(declare-fun res!983114 () Bool)

(assert (=> b!1451814 (=> (not res!983114) (not e!817395))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11730 0))(
  ( (MissingZero!11730 (index!49311 (_ BitVec 32))) (Found!11730 (index!49312 (_ BitVec 32))) (Intermediate!11730 (undefined!12542 Bool) (index!49313 (_ BitVec 32)) (x!130966 (_ BitVec 32))) (Undefined!11730) (MissingVacant!11730 (index!49314 (_ BitVec 32))) )
))
(declare-fun lt!636727 () SeekEntryResult!11730)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1451814 (= res!983114 (= lt!636727 (Intermediate!11730 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636724 () (_ BitVec 64))

(declare-datatypes ((array!98343 0))(
  ( (array!98344 (arr!47455 (Array (_ BitVec 32) (_ BitVec 64))) (size!48006 (_ BitVec 32))) )
))
(declare-fun lt!636725 () array!98343)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98343 (_ BitVec 32)) SeekEntryResult!11730)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451814 (= lt!636727 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636724 mask!2687) lt!636724 lt!636725 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98343)

(assert (=> b!1451814 (= lt!636724 (select (store (arr!47455 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451815 () Bool)

(declare-fun e!817399 () Bool)

(assert (=> b!1451815 (= e!817399 e!817400)))

(declare-fun res!983112 () Bool)

(assert (=> b!1451815 (=> (not res!983112) (not e!817400))))

(declare-fun lt!636726 () SeekEntryResult!11730)

(assert (=> b!1451815 (= res!983112 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47455 a!2862) j!93) mask!2687) (select (arr!47455 a!2862) j!93) a!2862 mask!2687) lt!636726))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451815 (= lt!636726 (Intermediate!11730 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451816 () Bool)

(declare-fun res!983108 () Bool)

(declare-fun e!817394 () Bool)

(assert (=> b!1451816 (=> (not res!983108) (not e!817394))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451816 (= res!983108 (validKeyInArray!0 (select (arr!47455 a!2862) i!1006)))))

(declare-fun b!1451817 () Bool)

(assert (=> b!1451817 (= e!817394 e!817399)))

(declare-fun res!983109 () Bool)

(assert (=> b!1451817 (=> (not res!983109) (not e!817399))))

(assert (=> b!1451817 (= res!983109 (= (select (store (arr!47455 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451817 (= lt!636725 (array!98344 (store (arr!47455 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48006 a!2862)))))

(declare-fun b!1451818 () Bool)

(declare-fun res!983110 () Bool)

(assert (=> b!1451818 (=> (not res!983110) (not e!817394))))

(assert (=> b!1451818 (= res!983110 (and (= (size!48006 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48006 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48006 a!2862)) (not (= i!1006 j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!817396 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1451819 () Bool)

(assert (=> b!1451819 (= e!817396 (and (or (= (select (arr!47455 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47455 a!2862) intermediateBeforeIndex!19) (select (arr!47455 a!2862) j!93))) (or (and (= (select (arr!47455 a!2862) index!646) (select (store (arr!47455 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47455 a!2862) index!646) (select (arr!47455 a!2862) j!93))) (= (select (arr!47455 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47455 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451820 () Bool)

(declare-fun res!983115 () Bool)

(assert (=> b!1451820 (=> (not res!983115) (not e!817394))))

(declare-datatypes ((List!34136 0))(
  ( (Nil!34133) (Cons!34132 (h!35482 (_ BitVec 64)) (t!48837 List!34136)) )
))
(declare-fun arrayNoDuplicates!0 (array!98343 (_ BitVec 32) List!34136) Bool)

(assert (=> b!1451820 (= res!983115 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34133))))

(declare-fun res!983107 () Bool)

(assert (=> start!124978 (=> (not res!983107) (not e!817394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124978 (= res!983107 (validMask!0 mask!2687))))

(assert (=> start!124978 e!817394))

(assert (=> start!124978 true))

(declare-fun array_inv!36400 (array!98343) Bool)

(assert (=> start!124978 (array_inv!36400 a!2862)))

(declare-fun b!1451821 () Bool)

(declare-fun res!983111 () Bool)

(assert (=> b!1451821 (=> (not res!983111) (not e!817395))))

(assert (=> b!1451821 (= res!983111 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451822 () Bool)

(declare-fun res!983105 () Bool)

(assert (=> b!1451822 (=> (not res!983105) (not e!817400))))

(assert (=> b!1451822 (= res!983105 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47455 a!2862) j!93) a!2862 mask!2687) lt!636726))))

(declare-fun b!1451823 () Bool)

(declare-fun res!983116 () Bool)

(assert (=> b!1451823 (=> (not res!983116) (not e!817394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98343 (_ BitVec 32)) Bool)

(assert (=> b!1451823 (= res!983116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451824 () Bool)

(assert (=> b!1451824 (= e!817395 (not (or (and (= (select (arr!47455 a!2862) index!646) (select (store (arr!47455 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47455 a!2862) index!646) (select (arr!47455 a!2862) j!93))) (= (select (arr!47455 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1451824 e!817396))

(declare-fun res!983106 () Bool)

(assert (=> b!1451824 (=> (not res!983106) (not e!817396))))

(assert (=> b!1451824 (= res!983106 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48904 0))(
  ( (Unit!48905) )
))
(declare-fun lt!636723 () Unit!48904)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98343 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48904)

(assert (=> b!1451824 (= lt!636723 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451825 () Bool)

(declare-fun res!983117 () Bool)

(assert (=> b!1451825 (=> (not res!983117) (not e!817396))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98343 (_ BitVec 32)) SeekEntryResult!11730)

(assert (=> b!1451825 (= res!983117 (= (seekEntryOrOpen!0 (select (arr!47455 a!2862) j!93) a!2862 mask!2687) (Found!11730 j!93)))))

(declare-fun b!1451826 () Bool)

(declare-fun res!983104 () Bool)

(assert (=> b!1451826 (=> (not res!983104) (not e!817395))))

(declare-fun e!817397 () Bool)

(assert (=> b!1451826 (= res!983104 e!817397)))

(declare-fun c!133868 () Bool)

(assert (=> b!1451826 (= c!133868 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451827 () Bool)

(assert (=> b!1451827 (= e!817397 (= lt!636727 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636724 lt!636725 mask!2687)))))

(declare-fun b!1451828 () Bool)

(declare-fun res!983113 () Bool)

(assert (=> b!1451828 (=> (not res!983113) (not e!817394))))

(assert (=> b!1451828 (= res!983113 (validKeyInArray!0 (select (arr!47455 a!2862) j!93)))))

(declare-fun b!1451829 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98343 (_ BitVec 32)) SeekEntryResult!11730)

(assert (=> b!1451829 (= e!817397 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636724 lt!636725 mask!2687) (seekEntryOrOpen!0 lt!636724 lt!636725 mask!2687)))))

(declare-fun b!1451830 () Bool)

(declare-fun res!983118 () Bool)

(assert (=> b!1451830 (=> (not res!983118) (not e!817394))))

(assert (=> b!1451830 (= res!983118 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48006 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48006 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48006 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!124978 res!983107) b!1451818))

(assert (= (and b!1451818 res!983110) b!1451816))

(assert (= (and b!1451816 res!983108) b!1451828))

(assert (= (and b!1451828 res!983113) b!1451823))

(assert (= (and b!1451823 res!983116) b!1451820))

(assert (= (and b!1451820 res!983115) b!1451830))

(assert (= (and b!1451830 res!983118) b!1451817))

(assert (= (and b!1451817 res!983109) b!1451815))

(assert (= (and b!1451815 res!983112) b!1451822))

(assert (= (and b!1451822 res!983105) b!1451814))

(assert (= (and b!1451814 res!983114) b!1451826))

(assert (= (and b!1451826 c!133868) b!1451827))

(assert (= (and b!1451826 (not c!133868)) b!1451829))

(assert (= (and b!1451826 res!983104) b!1451821))

(assert (= (and b!1451821 res!983111) b!1451824))

(assert (= (and b!1451824 res!983106) b!1451825))

(assert (= (and b!1451825 res!983117) b!1451819))

(declare-fun m!1340457 () Bool)

(assert (=> b!1451817 m!1340457))

(declare-fun m!1340459 () Bool)

(assert (=> b!1451817 m!1340459))

(declare-fun m!1340461 () Bool)

(assert (=> b!1451820 m!1340461))

(declare-fun m!1340463 () Bool)

(assert (=> start!124978 m!1340463))

(declare-fun m!1340465 () Bool)

(assert (=> start!124978 m!1340465))

(declare-fun m!1340467 () Bool)

(assert (=> b!1451825 m!1340467))

(assert (=> b!1451825 m!1340467))

(declare-fun m!1340469 () Bool)

(assert (=> b!1451825 m!1340469))

(declare-fun m!1340471 () Bool)

(assert (=> b!1451814 m!1340471))

(assert (=> b!1451814 m!1340471))

(declare-fun m!1340473 () Bool)

(assert (=> b!1451814 m!1340473))

(assert (=> b!1451814 m!1340457))

(declare-fun m!1340475 () Bool)

(assert (=> b!1451814 m!1340475))

(assert (=> b!1451822 m!1340467))

(assert (=> b!1451822 m!1340467))

(declare-fun m!1340477 () Bool)

(assert (=> b!1451822 m!1340477))

(assert (=> b!1451819 m!1340457))

(declare-fun m!1340479 () Bool)

(assert (=> b!1451819 m!1340479))

(declare-fun m!1340481 () Bool)

(assert (=> b!1451819 m!1340481))

(declare-fun m!1340483 () Bool)

(assert (=> b!1451819 m!1340483))

(assert (=> b!1451819 m!1340467))

(declare-fun m!1340485 () Bool)

(assert (=> b!1451823 m!1340485))

(declare-fun m!1340487 () Bool)

(assert (=> b!1451824 m!1340487))

(assert (=> b!1451824 m!1340457))

(assert (=> b!1451824 m!1340481))

(assert (=> b!1451824 m!1340483))

(declare-fun m!1340489 () Bool)

(assert (=> b!1451824 m!1340489))

(assert (=> b!1451824 m!1340467))

(declare-fun m!1340491 () Bool)

(assert (=> b!1451829 m!1340491))

(declare-fun m!1340493 () Bool)

(assert (=> b!1451829 m!1340493))

(declare-fun m!1340495 () Bool)

(assert (=> b!1451827 m!1340495))

(assert (=> b!1451815 m!1340467))

(assert (=> b!1451815 m!1340467))

(declare-fun m!1340497 () Bool)

(assert (=> b!1451815 m!1340497))

(assert (=> b!1451815 m!1340497))

(assert (=> b!1451815 m!1340467))

(declare-fun m!1340499 () Bool)

(assert (=> b!1451815 m!1340499))

(assert (=> b!1451828 m!1340467))

(assert (=> b!1451828 m!1340467))

(declare-fun m!1340501 () Bool)

(assert (=> b!1451828 m!1340501))

(declare-fun m!1340503 () Bool)

(assert (=> b!1451816 m!1340503))

(assert (=> b!1451816 m!1340503))

(declare-fun m!1340505 () Bool)

(assert (=> b!1451816 m!1340505))

(push 1)

