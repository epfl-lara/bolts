; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123308 () Bool)

(assert start!123308)

(declare-fun b!1429402 () Bool)

(declare-fun res!964142 () Bool)

(declare-fun e!807140 () Bool)

(assert (=> b!1429402 (=> (not res!964142) (not e!807140))))

(declare-datatypes ((array!97387 0))(
  ( (array!97388 (arr!47001 (Array (_ BitVec 32) (_ BitVec 64))) (size!47552 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97387)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429402 (= res!964142 (validKeyInArray!0 (select (arr!47001 a!2831) i!982)))))

(declare-fun b!1429403 () Bool)

(declare-fun res!964147 () Bool)

(declare-fun e!807143 () Bool)

(assert (=> b!1429403 (=> (not res!964147) (not e!807143))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1429403 (= res!964147 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429404 () Bool)

(declare-fun e!807142 () Bool)

(assert (=> b!1429404 (= e!807142 e!807143)))

(declare-fun res!964149 () Bool)

(assert (=> b!1429404 (=> (not res!964149) (not e!807143))))

(declare-datatypes ((SeekEntryResult!11302 0))(
  ( (MissingZero!11302 (index!47599 (_ BitVec 32))) (Found!11302 (index!47600 (_ BitVec 32))) (Intermediate!11302 (undefined!12114 Bool) (index!47601 (_ BitVec 32)) (x!129235 (_ BitVec 32))) (Undefined!11302) (MissingVacant!11302 (index!47602 (_ BitVec 32))) )
))
(declare-fun lt!629324 () SeekEntryResult!11302)

(declare-fun lt!629323 () array!97387)

(declare-fun lt!629322 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97387 (_ BitVec 32)) SeekEntryResult!11302)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429404 (= res!964149 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629322 mask!2608) lt!629322 lt!629323 mask!2608) lt!629324))))

(assert (=> b!1429404 (= lt!629324 (Intermediate!11302 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1429404 (= lt!629322 (select (store (arr!47001 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429404 (= lt!629323 (array!97388 (store (arr!47001 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47552 a!2831)))))

(declare-fun b!1429405 () Bool)

(declare-fun res!964140 () Bool)

(assert (=> b!1429405 (=> (not res!964140) (not e!807143))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1429405 (= res!964140 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629322 lt!629323 mask!2608) lt!629324))))

(declare-fun b!1429406 () Bool)

(declare-fun res!964151 () Bool)

(assert (=> b!1429406 (=> (not res!964151) (not e!807140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97387 (_ BitVec 32)) Bool)

(assert (=> b!1429406 (= res!964151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429407 () Bool)

(declare-fun res!964141 () Bool)

(assert (=> b!1429407 (=> (not res!964141) (not e!807140))))

(assert (=> b!1429407 (= res!964141 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47552 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47552 a!2831))))))

(declare-fun b!1429409 () Bool)

(assert (=> b!1429409 (= e!807143 (not true))))

(declare-fun e!807139 () Bool)

(assert (=> b!1429409 e!807139))

(declare-fun res!964145 () Bool)

(assert (=> b!1429409 (=> (not res!964145) (not e!807139))))

(assert (=> b!1429409 (= res!964145 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48298 0))(
  ( (Unit!48299) )
))
(declare-fun lt!629326 () Unit!48298)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97387 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48298)

(assert (=> b!1429409 (= lt!629326 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429410 () Bool)

(assert (=> b!1429410 (= e!807140 e!807142)))

(declare-fun res!964144 () Bool)

(assert (=> b!1429410 (=> (not res!964144) (not e!807142))))

(declare-fun lt!629325 () SeekEntryResult!11302)

(assert (=> b!1429410 (= res!964144 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47001 a!2831) j!81) mask!2608) (select (arr!47001 a!2831) j!81) a!2831 mask!2608) lt!629325))))

(assert (=> b!1429410 (= lt!629325 (Intermediate!11302 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429411 () Bool)

(declare-fun res!964146 () Bool)

(assert (=> b!1429411 (=> (not res!964146) (not e!807140))))

(declare-datatypes ((List!33691 0))(
  ( (Nil!33688) (Cons!33687 (h!35001 (_ BitVec 64)) (t!48392 List!33691)) )
))
(declare-fun arrayNoDuplicates!0 (array!97387 (_ BitVec 32) List!33691) Bool)

(assert (=> b!1429411 (= res!964146 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33688))))

(declare-fun b!1429412 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97387 (_ BitVec 32)) SeekEntryResult!11302)

(assert (=> b!1429412 (= e!807139 (= (seekEntryOrOpen!0 (select (arr!47001 a!2831) j!81) a!2831 mask!2608) (Found!11302 j!81)))))

(declare-fun b!1429413 () Bool)

(declare-fun res!964150 () Bool)

(assert (=> b!1429413 (=> (not res!964150) (not e!807140))))

(assert (=> b!1429413 (= res!964150 (and (= (size!47552 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47552 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47552 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429414 () Bool)

(declare-fun res!964143 () Bool)

(assert (=> b!1429414 (=> (not res!964143) (not e!807140))))

(assert (=> b!1429414 (= res!964143 (validKeyInArray!0 (select (arr!47001 a!2831) j!81)))))

(declare-fun res!964152 () Bool)

(assert (=> start!123308 (=> (not res!964152) (not e!807140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123308 (= res!964152 (validMask!0 mask!2608))))

(assert (=> start!123308 e!807140))

(assert (=> start!123308 true))

(declare-fun array_inv!35946 (array!97387) Bool)

(assert (=> start!123308 (array_inv!35946 a!2831)))

(declare-fun b!1429408 () Bool)

(declare-fun res!964148 () Bool)

(assert (=> b!1429408 (=> (not res!964148) (not e!807143))))

(assert (=> b!1429408 (= res!964148 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47001 a!2831) j!81) a!2831 mask!2608) lt!629325))))

(assert (= (and start!123308 res!964152) b!1429413))

(assert (= (and b!1429413 res!964150) b!1429402))

(assert (= (and b!1429402 res!964142) b!1429414))

(assert (= (and b!1429414 res!964143) b!1429406))

(assert (= (and b!1429406 res!964151) b!1429411))

(assert (= (and b!1429411 res!964146) b!1429407))

(assert (= (and b!1429407 res!964141) b!1429410))

(assert (= (and b!1429410 res!964144) b!1429404))

(assert (= (and b!1429404 res!964149) b!1429408))

(assert (= (and b!1429408 res!964148) b!1429405))

(assert (= (and b!1429405 res!964140) b!1429403))

(assert (= (and b!1429403 res!964147) b!1429409))

(assert (= (and b!1429409 res!964145) b!1429412))

(declare-fun m!1319559 () Bool)

(assert (=> b!1429402 m!1319559))

(assert (=> b!1429402 m!1319559))

(declare-fun m!1319561 () Bool)

(assert (=> b!1429402 m!1319561))

(declare-fun m!1319563 () Bool)

(assert (=> b!1429409 m!1319563))

(declare-fun m!1319565 () Bool)

(assert (=> b!1429409 m!1319565))

(declare-fun m!1319567 () Bool)

(assert (=> b!1429404 m!1319567))

(assert (=> b!1429404 m!1319567))

(declare-fun m!1319569 () Bool)

(assert (=> b!1429404 m!1319569))

(declare-fun m!1319571 () Bool)

(assert (=> b!1429404 m!1319571))

(declare-fun m!1319573 () Bool)

(assert (=> b!1429404 m!1319573))

(declare-fun m!1319575 () Bool)

(assert (=> b!1429414 m!1319575))

(assert (=> b!1429414 m!1319575))

(declare-fun m!1319577 () Bool)

(assert (=> b!1429414 m!1319577))

(declare-fun m!1319579 () Bool)

(assert (=> b!1429406 m!1319579))

(declare-fun m!1319581 () Bool)

(assert (=> b!1429411 m!1319581))

(declare-fun m!1319583 () Bool)

(assert (=> start!123308 m!1319583))

(declare-fun m!1319585 () Bool)

(assert (=> start!123308 m!1319585))

(assert (=> b!1429410 m!1319575))

(assert (=> b!1429410 m!1319575))

(declare-fun m!1319587 () Bool)

(assert (=> b!1429410 m!1319587))

(assert (=> b!1429410 m!1319587))

(assert (=> b!1429410 m!1319575))

(declare-fun m!1319589 () Bool)

(assert (=> b!1429410 m!1319589))

(declare-fun m!1319591 () Bool)

(assert (=> b!1429405 m!1319591))

(assert (=> b!1429408 m!1319575))

(assert (=> b!1429408 m!1319575))

(declare-fun m!1319593 () Bool)

(assert (=> b!1429408 m!1319593))

(assert (=> b!1429412 m!1319575))

(assert (=> b!1429412 m!1319575))

(declare-fun m!1319595 () Bool)

(assert (=> b!1429412 m!1319595))

(push 1)

