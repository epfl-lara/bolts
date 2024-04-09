; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126430 () Bool)

(assert start!126430)

(declare-fun b!1481634 () Bool)

(declare-fun res!1007040 () Bool)

(declare-fun e!830974 () Bool)

(assert (=> b!1481634 (=> (not res!1007040) (not e!830974))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!99366 0))(
  ( (array!99367 (arr!47956 (Array (_ BitVec 32) (_ BitVec 64))) (size!48507 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99366)

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12219 0))(
  ( (MissingZero!12219 (index!51267 (_ BitVec 32))) (Found!12219 (index!51268 (_ BitVec 32))) (Intermediate!12219 (undefined!13031 Bool) (index!51269 (_ BitVec 32)) (x!132857 (_ BitVec 32))) (Undefined!12219) (MissingVacant!12219 (index!51270 (_ BitVec 32))) )
))
(declare-fun lt!646800 () SeekEntryResult!12219)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99366 (_ BitVec 32)) SeekEntryResult!12219)

(assert (=> b!1481634 (= res!1007040 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47956 a!2862) j!93) a!2862 mask!2687) lt!646800))))

(declare-fun b!1481635 () Bool)

(declare-fun res!1007037 () Bool)

(declare-fun e!830975 () Bool)

(assert (=> b!1481635 (=> (not res!1007037) (not e!830975))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481635 (= res!1007037 (validKeyInArray!0 (select (arr!47956 a!2862) i!1006)))))

(declare-fun res!1007036 () Bool)

(assert (=> start!126430 (=> (not res!1007036) (not e!830975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126430 (= res!1007036 (validMask!0 mask!2687))))

(assert (=> start!126430 e!830975))

(assert (=> start!126430 true))

(declare-fun array_inv!36901 (array!99366) Bool)

(assert (=> start!126430 (array_inv!36901 a!2862)))

(declare-fun b!1481636 () Bool)

(declare-fun e!830976 () Bool)

(assert (=> b!1481636 (= e!830975 e!830976)))

(declare-fun res!1007043 () Bool)

(assert (=> b!1481636 (=> (not res!1007043) (not e!830976))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1481636 (= res!1007043 (= (select (store (arr!47956 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!646797 () array!99366)

(assert (=> b!1481636 (= lt!646797 (array!99367 (store (arr!47956 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48507 a!2862)))))

(declare-fun b!1481637 () Bool)

(declare-fun res!1007049 () Bool)

(assert (=> b!1481637 (=> (not res!1007049) (not e!830975))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1481637 (= res!1007049 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48507 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48507 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48507 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481638 () Bool)

(assert (=> b!1481638 (= e!830976 e!830974)))

(declare-fun res!1007048 () Bool)

(assert (=> b!1481638 (=> (not res!1007048) (not e!830974))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481638 (= res!1007048 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47956 a!2862) j!93) mask!2687) (select (arr!47956 a!2862) j!93) a!2862 mask!2687) lt!646800))))

(assert (=> b!1481638 (= lt!646800 (Intermediate!12219 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481639 () Bool)

(declare-fun res!1007042 () Bool)

(assert (=> b!1481639 (=> (not res!1007042) (not e!830975))))

(declare-datatypes ((List!34637 0))(
  ( (Nil!34634) (Cons!34633 (h!36004 (_ BitVec 64)) (t!49338 List!34637)) )
))
(declare-fun arrayNoDuplicates!0 (array!99366 (_ BitVec 32) List!34637) Bool)

(assert (=> b!1481639 (= res!1007042 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34634))))

(declare-fun b!1481640 () Bool)

(declare-fun res!1007039 () Bool)

(assert (=> b!1481640 (=> (not res!1007039) (not e!830975))))

(assert (=> b!1481640 (= res!1007039 (and (= (size!48507 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48507 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48507 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481641 () Bool)

(declare-fun res!1007035 () Bool)

(declare-fun e!830978 () Bool)

(assert (=> b!1481641 (=> (not res!1007035) (not e!830978))))

(assert (=> b!1481641 (= res!1007035 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!646799 () (_ BitVec 64))

(declare-fun e!830977 () Bool)

(declare-fun lt!646801 () SeekEntryResult!12219)

(declare-fun b!1481642 () Bool)

(assert (=> b!1481642 (= e!830977 (= lt!646801 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646799 lt!646797 mask!2687)))))

(declare-fun b!1481643 () Bool)

(assert (=> b!1481643 (= e!830978 (not true))))

(declare-fun e!830973 () Bool)

(assert (=> b!1481643 e!830973))

(declare-fun res!1007047 () Bool)

(assert (=> b!1481643 (=> (not res!1007047) (not e!830973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99366 (_ BitVec 32)) Bool)

(assert (=> b!1481643 (= res!1007047 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49726 0))(
  ( (Unit!49727) )
))
(declare-fun lt!646798 () Unit!49726)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99366 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49726)

(assert (=> b!1481643 (= lt!646798 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481644 () Bool)

(declare-fun res!1007041 () Bool)

(assert (=> b!1481644 (=> (not res!1007041) (not e!830978))))

(assert (=> b!1481644 (= res!1007041 e!830977)))

(declare-fun c!136823 () Bool)

(assert (=> b!1481644 (= c!136823 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481645 () Bool)

(declare-fun res!1007045 () Bool)

(assert (=> b!1481645 (=> (not res!1007045) (not e!830975))))

(assert (=> b!1481645 (= res!1007045 (validKeyInArray!0 (select (arr!47956 a!2862) j!93)))))

(declare-fun b!1481646 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99366 (_ BitVec 32)) SeekEntryResult!12219)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99366 (_ BitVec 32)) SeekEntryResult!12219)

(assert (=> b!1481646 (= e!830977 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646799 lt!646797 mask!2687) (seekEntryOrOpen!0 lt!646799 lt!646797 mask!2687)))))

(declare-fun b!1481647 () Bool)

(declare-fun res!1007046 () Bool)

(assert (=> b!1481647 (=> (not res!1007046) (not e!830973))))

(assert (=> b!1481647 (= res!1007046 (= (seekEntryOrOpen!0 (select (arr!47956 a!2862) j!93) a!2862 mask!2687) (Found!12219 j!93)))))

(declare-fun b!1481648 () Bool)

(assert (=> b!1481648 (= e!830974 e!830978)))

(declare-fun res!1007044 () Bool)

(assert (=> b!1481648 (=> (not res!1007044) (not e!830978))))

(assert (=> b!1481648 (= res!1007044 (= lt!646801 (Intermediate!12219 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1481648 (= lt!646801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646799 mask!2687) lt!646799 lt!646797 mask!2687))))

(assert (=> b!1481648 (= lt!646799 (select (store (arr!47956 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481649 () Bool)

(assert (=> b!1481649 (= e!830973 (and (or (= (select (arr!47956 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47956 a!2862) intermediateBeforeIndex!19) (select (arr!47956 a!2862) j!93))) (or (and (= (select (arr!47956 a!2862) index!646) (select (store (arr!47956 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47956 a!2862) index!646) (select (arr!47956 a!2862) j!93))) (= (select (arr!47956 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47956 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1481650 () Bool)

(declare-fun res!1007038 () Bool)

(assert (=> b!1481650 (=> (not res!1007038) (not e!830975))))

(assert (=> b!1481650 (= res!1007038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!126430 res!1007036) b!1481640))

(assert (= (and b!1481640 res!1007039) b!1481635))

(assert (= (and b!1481635 res!1007037) b!1481645))

(assert (= (and b!1481645 res!1007045) b!1481650))

(assert (= (and b!1481650 res!1007038) b!1481639))

(assert (= (and b!1481639 res!1007042) b!1481637))

(assert (= (and b!1481637 res!1007049) b!1481636))

(assert (= (and b!1481636 res!1007043) b!1481638))

(assert (= (and b!1481638 res!1007048) b!1481634))

(assert (= (and b!1481634 res!1007040) b!1481648))

(assert (= (and b!1481648 res!1007044) b!1481644))

(assert (= (and b!1481644 c!136823) b!1481642))

(assert (= (and b!1481644 (not c!136823)) b!1481646))

(assert (= (and b!1481644 res!1007041) b!1481641))

(assert (= (and b!1481641 res!1007035) b!1481643))

(assert (= (and b!1481643 res!1007047) b!1481647))

(assert (= (and b!1481647 res!1007046) b!1481649))

(declare-fun m!1367427 () Bool)

(assert (=> b!1481648 m!1367427))

(assert (=> b!1481648 m!1367427))

(declare-fun m!1367429 () Bool)

(assert (=> b!1481648 m!1367429))

(declare-fun m!1367431 () Bool)

(assert (=> b!1481648 m!1367431))

(declare-fun m!1367433 () Bool)

(assert (=> b!1481648 m!1367433))

(declare-fun m!1367435 () Bool)

(assert (=> b!1481643 m!1367435))

(declare-fun m!1367437 () Bool)

(assert (=> b!1481643 m!1367437))

(assert (=> b!1481649 m!1367431))

(declare-fun m!1367439 () Bool)

(assert (=> b!1481649 m!1367439))

(declare-fun m!1367441 () Bool)

(assert (=> b!1481649 m!1367441))

(declare-fun m!1367443 () Bool)

(assert (=> b!1481649 m!1367443))

(declare-fun m!1367445 () Bool)

(assert (=> b!1481649 m!1367445))

(assert (=> b!1481647 m!1367445))

(assert (=> b!1481647 m!1367445))

(declare-fun m!1367447 () Bool)

(assert (=> b!1481647 m!1367447))

(declare-fun m!1367449 () Bool)

(assert (=> start!126430 m!1367449))

(declare-fun m!1367451 () Bool)

(assert (=> start!126430 m!1367451))

(assert (=> b!1481638 m!1367445))

(assert (=> b!1481638 m!1367445))

(declare-fun m!1367453 () Bool)

(assert (=> b!1481638 m!1367453))

(assert (=> b!1481638 m!1367453))

(assert (=> b!1481638 m!1367445))

(declare-fun m!1367455 () Bool)

(assert (=> b!1481638 m!1367455))

(assert (=> b!1481645 m!1367445))

(assert (=> b!1481645 m!1367445))

(declare-fun m!1367457 () Bool)

(assert (=> b!1481645 m!1367457))

(assert (=> b!1481634 m!1367445))

(assert (=> b!1481634 m!1367445))

(declare-fun m!1367459 () Bool)

(assert (=> b!1481634 m!1367459))

(declare-fun m!1367461 () Bool)

(assert (=> b!1481639 m!1367461))

(assert (=> b!1481636 m!1367431))

(declare-fun m!1367463 () Bool)

(assert (=> b!1481636 m!1367463))

(declare-fun m!1367465 () Bool)

(assert (=> b!1481650 m!1367465))

(declare-fun m!1367467 () Bool)

(assert (=> b!1481642 m!1367467))

(declare-fun m!1367469 () Bool)

(assert (=> b!1481635 m!1367469))

(assert (=> b!1481635 m!1367469))

(declare-fun m!1367471 () Bool)

(assert (=> b!1481635 m!1367471))

(declare-fun m!1367473 () Bool)

(assert (=> b!1481646 m!1367473))

(declare-fun m!1367475 () Bool)

(assert (=> b!1481646 m!1367475))

(push 1)

