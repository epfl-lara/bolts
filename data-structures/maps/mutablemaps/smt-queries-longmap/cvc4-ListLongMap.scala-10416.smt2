; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122702 () Bool)

(assert start!122702)

(declare-fun b!1420807 () Bool)

(declare-fun res!956358 () Bool)

(declare-fun e!803524 () Bool)

(assert (=> b!1420807 (=> (not res!956358) (not e!803524))))

(declare-datatypes ((array!96985 0))(
  ( (array!96986 (arr!46806 (Array (_ BitVec 32) (_ BitVec 64))) (size!47357 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96985)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96985 (_ BitVec 32)) Bool)

(assert (=> b!1420807 (= res!956358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420808 () Bool)

(declare-fun e!803525 () Bool)

(declare-fun e!803522 () Bool)

(assert (=> b!1420808 (= e!803525 e!803522)))

(declare-fun res!956356 () Bool)

(assert (=> b!1420808 (=> (not res!956356) (not e!803522))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!625979 () (_ BitVec 64))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun lt!625980 () array!96985)

(declare-datatypes ((SeekEntryResult!11113 0))(
  ( (MissingZero!11113 (index!46843 (_ BitVec 32))) (Found!11113 (index!46844 (_ BitVec 32))) (Intermediate!11113 (undefined!11925 Bool) (index!46845 (_ BitVec 32)) (x!128502 (_ BitVec 32))) (Undefined!11113) (MissingVacant!11113 (index!46846 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96985 (_ BitVec 32)) SeekEntryResult!11113)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420808 (= res!956356 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!625979 mask!2608) lt!625979 lt!625980 mask!2608) (Intermediate!11113 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420808 (= lt!625979 (select (store (arr!46806 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420808 (= lt!625980 (array!96986 (store (arr!46806 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47357 a!2831)))))

(declare-fun b!1420809 () Bool)

(declare-fun res!956349 () Bool)

(assert (=> b!1420809 (=> (not res!956349) (not e!803524))))

(declare-datatypes ((List!33496 0))(
  ( (Nil!33493) (Cons!33492 (h!34794 (_ BitVec 64)) (t!48197 List!33496)) )
))
(declare-fun arrayNoDuplicates!0 (array!96985 (_ BitVec 32) List!33496) Bool)

(assert (=> b!1420809 (= res!956349 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33493))))

(declare-fun b!1420810 () Bool)

(declare-fun res!956351 () Bool)

(assert (=> b!1420810 (=> (not res!956351) (not e!803524))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420810 (= res!956351 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47357 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47357 a!2831))))))

(declare-fun b!1420811 () Bool)

(assert (=> b!1420811 (= e!803522 false)))

(declare-fun lt!625981 () SeekEntryResult!11113)

(assert (=> b!1420811 (= lt!625981 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!625979 lt!625980 mask!2608))))

(declare-fun b!1420812 () Bool)

(declare-fun res!956352 () Bool)

(assert (=> b!1420812 (=> (not res!956352) (not e!803524))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420812 (= res!956352 (validKeyInArray!0 (select (arr!46806 a!2831) j!81)))))

(declare-fun b!1420813 () Bool)

(assert (=> b!1420813 (= e!803524 e!803525)))

(declare-fun res!956355 () Bool)

(assert (=> b!1420813 (=> (not res!956355) (not e!803525))))

(declare-fun lt!625978 () SeekEntryResult!11113)

(assert (=> b!1420813 (= res!956355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46806 a!2831) j!81) mask!2608) (select (arr!46806 a!2831) j!81) a!2831 mask!2608) lt!625978))))

(assert (=> b!1420813 (= lt!625978 (Intermediate!11113 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!956354 () Bool)

(assert (=> start!122702 (=> (not res!956354) (not e!803524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122702 (= res!956354 (validMask!0 mask!2608))))

(assert (=> start!122702 e!803524))

(assert (=> start!122702 true))

(declare-fun array_inv!35751 (array!96985) Bool)

(assert (=> start!122702 (array_inv!35751 a!2831)))

(declare-fun b!1420814 () Bool)

(declare-fun res!956350 () Bool)

(assert (=> b!1420814 (=> (not res!956350) (not e!803522))))

(assert (=> b!1420814 (= res!956350 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46806 a!2831) j!81) a!2831 mask!2608) lt!625978))))

(declare-fun b!1420815 () Bool)

(declare-fun res!956357 () Bool)

(assert (=> b!1420815 (=> (not res!956357) (not e!803524))))

(assert (=> b!1420815 (= res!956357 (and (= (size!47357 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47357 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47357 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420816 () Bool)

(declare-fun res!956353 () Bool)

(assert (=> b!1420816 (=> (not res!956353) (not e!803524))))

(assert (=> b!1420816 (= res!956353 (validKeyInArray!0 (select (arr!46806 a!2831) i!982)))))

(assert (= (and start!122702 res!956354) b!1420815))

(assert (= (and b!1420815 res!956357) b!1420816))

(assert (= (and b!1420816 res!956353) b!1420812))

(assert (= (and b!1420812 res!956352) b!1420807))

(assert (= (and b!1420807 res!956358) b!1420809))

(assert (= (and b!1420809 res!956349) b!1420810))

(assert (= (and b!1420810 res!956351) b!1420813))

(assert (= (and b!1420813 res!956355) b!1420808))

(assert (= (and b!1420808 res!956356) b!1420814))

(assert (= (and b!1420814 res!956350) b!1420811))

(declare-fun m!1311399 () Bool)

(assert (=> b!1420808 m!1311399))

(assert (=> b!1420808 m!1311399))

(declare-fun m!1311401 () Bool)

(assert (=> b!1420808 m!1311401))

(declare-fun m!1311403 () Bool)

(assert (=> b!1420808 m!1311403))

(declare-fun m!1311405 () Bool)

(assert (=> b!1420808 m!1311405))

(declare-fun m!1311407 () Bool)

(assert (=> b!1420807 m!1311407))

(declare-fun m!1311409 () Bool)

(assert (=> b!1420816 m!1311409))

(assert (=> b!1420816 m!1311409))

(declare-fun m!1311411 () Bool)

(assert (=> b!1420816 m!1311411))

(declare-fun m!1311413 () Bool)

(assert (=> b!1420812 m!1311413))

(assert (=> b!1420812 m!1311413))

(declare-fun m!1311415 () Bool)

(assert (=> b!1420812 m!1311415))

(declare-fun m!1311417 () Bool)

(assert (=> start!122702 m!1311417))

(declare-fun m!1311419 () Bool)

(assert (=> start!122702 m!1311419))

(declare-fun m!1311421 () Bool)

(assert (=> b!1420811 m!1311421))

(declare-fun m!1311423 () Bool)

(assert (=> b!1420809 m!1311423))

(assert (=> b!1420814 m!1311413))

(assert (=> b!1420814 m!1311413))

(declare-fun m!1311425 () Bool)

(assert (=> b!1420814 m!1311425))

(assert (=> b!1420813 m!1311413))

(assert (=> b!1420813 m!1311413))

(declare-fun m!1311427 () Bool)

(assert (=> b!1420813 m!1311427))

(assert (=> b!1420813 m!1311427))

(assert (=> b!1420813 m!1311413))

(declare-fun m!1311429 () Bool)

(assert (=> b!1420813 m!1311429))

(push 1)

(assert (not b!1420807))

(assert (not b!1420813))

(assert (not b!1420811))

(assert (not b!1420808))

(assert (not b!1420809))

(assert (not b!1420816))

