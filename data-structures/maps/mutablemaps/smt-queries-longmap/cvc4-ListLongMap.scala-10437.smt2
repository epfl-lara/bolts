; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122828 () Bool)

(assert start!122828)

(declare-fun b!1423465 () Bool)

(declare-fun res!959020 () Bool)

(declare-fun e!804611 () Bool)

(assert (=> b!1423465 (=> res!959020 e!804611)))

(declare-fun lt!627106 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97111 0))(
  ( (array!97112 (arr!46869 (Array (_ BitVec 32) (_ BitVec 64))) (size!47420 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97111)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11176 0))(
  ( (MissingZero!11176 (index!47095 (_ BitVec 32))) (Found!11176 (index!47096 (_ BitVec 32))) (Intermediate!11176 (undefined!11988 Bool) (index!47097 (_ BitVec 32)) (x!128733 (_ BitVec 32))) (Undefined!11176) (MissingVacant!11176 (index!47098 (_ BitVec 32))) )
))
(declare-fun lt!627101 () SeekEntryResult!11176)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97111 (_ BitVec 32)) SeekEntryResult!11176)

(assert (=> b!1423465 (= res!959020 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627106 (select (arr!46869 a!2831) j!81) a!2831 mask!2608) lt!627101)))))

(declare-fun b!1423466 () Bool)

(declare-fun e!804608 () Bool)

(assert (=> b!1423466 (= e!804608 e!804611)))

(declare-fun res!959013 () Bool)

(assert (=> b!1423466 (=> res!959013 e!804611)))

(assert (=> b!1423466 (= res!959013 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627106 #b00000000000000000000000000000000) (bvsge lt!627106 (size!47420 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423466 (= lt!627106 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423467 () Bool)

(declare-fun res!959008 () Bool)

(declare-fun e!804612 () Bool)

(assert (=> b!1423467 (=> (not res!959008) (not e!804612))))

(declare-datatypes ((List!33559 0))(
  ( (Nil!33556) (Cons!33555 (h!34857 (_ BitVec 64)) (t!48260 List!33559)) )
))
(declare-fun arrayNoDuplicates!0 (array!97111 (_ BitVec 32) List!33559) Bool)

(assert (=> b!1423467 (= res!959008 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33556))))

(declare-fun b!1423468 () Bool)

(declare-fun res!959011 () Bool)

(assert (=> b!1423468 (=> (not res!959011) (not e!804612))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423468 (= res!959011 (validKeyInArray!0 (select (arr!46869 a!2831) j!81)))))

(declare-fun b!1423469 () Bool)

(declare-fun e!804610 () Bool)

(assert (=> b!1423469 (= e!804610 (not e!804608))))

(declare-fun res!959007 () Bool)

(assert (=> b!1423469 (=> res!959007 e!804608)))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423469 (= res!959007 (or (= (select (arr!46869 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46869 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46869 a!2831) index!585) (select (arr!46869 a!2831) j!81)) (= (select (store (arr!46869 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804614 () Bool)

(assert (=> b!1423469 e!804614))

(declare-fun res!959014 () Bool)

(assert (=> b!1423469 (=> (not res!959014) (not e!804614))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97111 (_ BitVec 32)) Bool)

(assert (=> b!1423469 (= res!959014 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48136 0))(
  ( (Unit!48137) )
))
(declare-fun lt!627100 () Unit!48136)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48136)

(assert (=> b!1423469 (= lt!627100 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423470 () Bool)

(declare-fun res!959010 () Bool)

(assert (=> b!1423470 (=> (not res!959010) (not e!804612))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1423470 (= res!959010 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47420 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47420 a!2831))))))

(declare-fun res!959019 () Bool)

(assert (=> start!122828 (=> (not res!959019) (not e!804612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122828 (= res!959019 (validMask!0 mask!2608))))

(assert (=> start!122828 e!804612))

(assert (=> start!122828 true))

(declare-fun array_inv!35814 (array!97111) Bool)

(assert (=> start!122828 (array_inv!35814 a!2831)))

(declare-fun b!1423471 () Bool)

(declare-fun res!959021 () Bool)

(assert (=> b!1423471 (=> (not res!959021) (not e!804610))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423471 (= res!959021 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423472 () Bool)

(declare-fun res!959018 () Bool)

(assert (=> b!1423472 (=> (not res!959018) (not e!804612))))

(assert (=> b!1423472 (= res!959018 (and (= (size!47420 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47420 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47420 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423473 () Bool)

(declare-fun e!804613 () Bool)

(assert (=> b!1423473 (= e!804612 e!804613)))

(declare-fun res!959016 () Bool)

(assert (=> b!1423473 (=> (not res!959016) (not e!804613))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423473 (= res!959016 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46869 a!2831) j!81) mask!2608) (select (arr!46869 a!2831) j!81) a!2831 mask!2608) lt!627101))))

(assert (=> b!1423473 (= lt!627101 (Intermediate!11176 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423474 () Bool)

(assert (=> b!1423474 (= e!804613 e!804610)))

(declare-fun res!959012 () Bool)

(assert (=> b!1423474 (=> (not res!959012) (not e!804610))))

(declare-fun lt!627102 () (_ BitVec 64))

(declare-fun lt!627104 () SeekEntryResult!11176)

(declare-fun lt!627103 () array!97111)

(assert (=> b!1423474 (= res!959012 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627102 mask!2608) lt!627102 lt!627103 mask!2608) lt!627104))))

(assert (=> b!1423474 (= lt!627104 (Intermediate!11176 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423474 (= lt!627102 (select (store (arr!46869 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423474 (= lt!627103 (array!97112 (store (arr!46869 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47420 a!2831)))))

(declare-fun b!1423475 () Bool)

(declare-fun res!959022 () Bool)

(assert (=> b!1423475 (=> (not res!959022) (not e!804610))))

(assert (=> b!1423475 (= res!959022 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627102 lt!627103 mask!2608) lt!627104))))

(declare-fun b!1423476 () Bool)

(declare-fun res!959009 () Bool)

(assert (=> b!1423476 (=> (not res!959009) (not e!804610))))

(assert (=> b!1423476 (= res!959009 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46869 a!2831) j!81) a!2831 mask!2608) lt!627101))))

(declare-fun b!1423477 () Bool)

(declare-fun res!959017 () Bool)

(assert (=> b!1423477 (=> (not res!959017) (not e!804612))))

(assert (=> b!1423477 (= res!959017 (validKeyInArray!0 (select (arr!46869 a!2831) i!982)))))

(declare-fun b!1423478 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97111 (_ BitVec 32)) SeekEntryResult!11176)

(assert (=> b!1423478 (= e!804614 (= (seekEntryOrOpen!0 (select (arr!46869 a!2831) j!81) a!2831 mask!2608) (Found!11176 j!81)))))

(declare-fun b!1423479 () Bool)

(assert (=> b!1423479 (= e!804611 true)))

(declare-fun lt!627105 () SeekEntryResult!11176)

(assert (=> b!1423479 (= lt!627105 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627106 lt!627102 lt!627103 mask!2608))))

(declare-fun b!1423480 () Bool)

(declare-fun res!959015 () Bool)

(assert (=> b!1423480 (=> (not res!959015) (not e!804612))))

(assert (=> b!1423480 (= res!959015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122828 res!959019) b!1423472))

(assert (= (and b!1423472 res!959018) b!1423477))

(assert (= (and b!1423477 res!959017) b!1423468))

(assert (= (and b!1423468 res!959011) b!1423480))

(assert (= (and b!1423480 res!959015) b!1423467))

(assert (= (and b!1423467 res!959008) b!1423470))

(assert (= (and b!1423470 res!959010) b!1423473))

(assert (= (and b!1423473 res!959016) b!1423474))

(assert (= (and b!1423474 res!959012) b!1423476))

(assert (= (and b!1423476 res!959009) b!1423475))

(assert (= (and b!1423475 res!959022) b!1423471))

(assert (= (and b!1423471 res!959021) b!1423469))

(assert (= (and b!1423469 res!959014) b!1423478))

(assert (= (and b!1423469 (not res!959007)) b!1423466))

(assert (= (and b!1423466 (not res!959013)) b!1423465))

(assert (= (and b!1423465 (not res!959020)) b!1423479))

(declare-fun m!1314071 () Bool)

(assert (=> b!1423479 m!1314071))

(declare-fun m!1314073 () Bool)

(assert (=> b!1423477 m!1314073))

(assert (=> b!1423477 m!1314073))

(declare-fun m!1314075 () Bool)

(assert (=> b!1423477 m!1314075))

(declare-fun m!1314077 () Bool)

(assert (=> b!1423473 m!1314077))

(assert (=> b!1423473 m!1314077))

(declare-fun m!1314079 () Bool)

(assert (=> b!1423473 m!1314079))

(assert (=> b!1423473 m!1314079))

(assert (=> b!1423473 m!1314077))

(declare-fun m!1314081 () Bool)

(assert (=> b!1423473 m!1314081))

(declare-fun m!1314083 () Bool)

(assert (=> b!1423466 m!1314083))

(assert (=> b!1423465 m!1314077))

(assert (=> b!1423465 m!1314077))

(declare-fun m!1314085 () Bool)

(assert (=> b!1423465 m!1314085))

(assert (=> b!1423468 m!1314077))

(assert (=> b!1423468 m!1314077))

(declare-fun m!1314087 () Bool)

(assert (=> b!1423468 m!1314087))

(declare-fun m!1314089 () Bool)

(assert (=> start!122828 m!1314089))

(declare-fun m!1314091 () Bool)

(assert (=> start!122828 m!1314091))

(declare-fun m!1314093 () Bool)

(assert (=> b!1423475 m!1314093))

(assert (=> b!1423476 m!1314077))

(assert (=> b!1423476 m!1314077))

(declare-fun m!1314095 () Bool)

(assert (=> b!1423476 m!1314095))

(declare-fun m!1314097 () Bool)

(assert (=> b!1423469 m!1314097))

(declare-fun m!1314099 () Bool)

(assert (=> b!1423469 m!1314099))

(declare-fun m!1314101 () Bool)

(assert (=> b!1423469 m!1314101))

(declare-fun m!1314103 () Bool)

(assert (=> b!1423469 m!1314103))

(assert (=> b!1423469 m!1314077))

(declare-fun m!1314105 () Bool)

(assert (=> b!1423469 m!1314105))

(declare-fun m!1314107 () Bool)

(assert (=> b!1423474 m!1314107))

(assert (=> b!1423474 m!1314107))

(declare-fun m!1314109 () Bool)

(assert (=> b!1423474 m!1314109))

(assert (=> b!1423474 m!1314097))

(declare-fun m!1314111 () Bool)

(assert (=> b!1423474 m!1314111))

(declare-fun m!1314113 () Bool)

(assert (=> b!1423467 m!1314113))

(declare-fun m!1314115 () Bool)

(assert (=> b!1423480 m!1314115))

(assert (=> b!1423478 m!1314077))

(assert (=> b!1423478 m!1314077))

(declare-fun m!1314117 () Bool)

(assert (=> b!1423478 m!1314117))

(push 1)

