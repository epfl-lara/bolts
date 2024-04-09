; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123754 () Bool)

(assert start!123754)

(declare-fun b!1433859 () Bool)

(declare-datatypes ((array!97530 0))(
  ( (array!97531 (arr!47065 (Array (_ BitVec 32) (_ BitVec 64))) (size!47616 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97530)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun e!809341 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11366 0))(
  ( (MissingZero!11366 (index!47855 (_ BitVec 32))) (Found!11366 (index!47856 (_ BitVec 32))) (Intermediate!11366 (undefined!12178 Bool) (index!47857 (_ BitVec 32)) (x!129517 (_ BitVec 32))) (Undefined!11366) (MissingVacant!11366 (index!47858 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97530 (_ BitVec 32)) SeekEntryResult!11366)

(assert (=> b!1433859 (= e!809341 (= (seekEntryOrOpen!0 (select (arr!47065 a!2831) j!81) a!2831 mask!2608) (Found!11366 j!81)))))

(declare-fun res!967441 () Bool)

(declare-fun e!809344 () Bool)

(assert (=> start!123754 (=> (not res!967441) (not e!809344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123754 (= res!967441 (validMask!0 mask!2608))))

(assert (=> start!123754 e!809344))

(assert (=> start!123754 true))

(declare-fun array_inv!36010 (array!97530) Bool)

(assert (=> start!123754 (array_inv!36010 a!2831)))

(declare-fun b!1433860 () Bool)

(declare-fun res!967435 () Bool)

(assert (=> b!1433860 (=> (not res!967435) (not e!809344))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1433860 (= res!967435 (and (= (size!47616 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47616 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47616 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1433861 () Bool)

(declare-fun e!809340 () Bool)

(assert (=> b!1433861 (= e!809340 true)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!631194 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433861 (= lt!631194 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1433862 () Bool)

(declare-fun res!967442 () Bool)

(assert (=> b!1433862 (=> (not res!967442) (not e!809344))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1433862 (= res!967442 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47616 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47616 a!2831))))))

(declare-fun b!1433863 () Bool)

(declare-fun res!967438 () Bool)

(assert (=> b!1433863 (=> (not res!967438) (not e!809344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97530 (_ BitVec 32)) Bool)

(assert (=> b!1433863 (= res!967438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1433864 () Bool)

(declare-fun res!967433 () Bool)

(assert (=> b!1433864 (=> (not res!967433) (not e!809344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1433864 (= res!967433 (validKeyInArray!0 (select (arr!47065 a!2831) i!982)))))

(declare-fun b!1433865 () Bool)

(declare-fun res!967439 () Bool)

(assert (=> b!1433865 (=> (not res!967439) (not e!809344))))

(declare-datatypes ((List!33755 0))(
  ( (Nil!33752) (Cons!33751 (h!35080 (_ BitVec 64)) (t!48456 List!33755)) )
))
(declare-fun arrayNoDuplicates!0 (array!97530 (_ BitVec 32) List!33755) Bool)

(assert (=> b!1433865 (= res!967439 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33752))))

(declare-fun b!1433866 () Bool)

(declare-fun e!809345 () Bool)

(declare-fun e!809343 () Bool)

(assert (=> b!1433866 (= e!809345 e!809343)))

(declare-fun res!967430 () Bool)

(assert (=> b!1433866 (=> (not res!967430) (not e!809343))))

(declare-fun lt!631195 () array!97530)

(declare-fun lt!631197 () SeekEntryResult!11366)

(declare-fun lt!631193 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97530 (_ BitVec 32)) SeekEntryResult!11366)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433866 (= res!967430 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631193 mask!2608) lt!631193 lt!631195 mask!2608) lt!631197))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1433866 (= lt!631197 (Intermediate!11366 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1433866 (= lt!631193 (select (store (arr!47065 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1433866 (= lt!631195 (array!97531 (store (arr!47065 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47616 a!2831)))))

(declare-fun b!1433867 () Bool)

(declare-fun res!967432 () Bool)

(assert (=> b!1433867 (=> (not res!967432) (not e!809344))))

(assert (=> b!1433867 (= res!967432 (validKeyInArray!0 (select (arr!47065 a!2831) j!81)))))

(declare-fun b!1433868 () Bool)

(assert (=> b!1433868 (= e!809343 (not e!809340))))

(declare-fun res!967437 () Bool)

(assert (=> b!1433868 (=> res!967437 e!809340)))

(assert (=> b!1433868 (= res!967437 (or (= (select (arr!47065 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47065 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47065 a!2831) index!585) (select (arr!47065 a!2831) j!81)) (= (select (store (arr!47065 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1433868 e!809341))

(declare-fun res!967434 () Bool)

(assert (=> b!1433868 (=> (not res!967434) (not e!809341))))

(assert (=> b!1433868 (= res!967434 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48426 0))(
  ( (Unit!48427) )
))
(declare-fun lt!631198 () Unit!48426)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48426)

(assert (=> b!1433868 (= lt!631198 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1433869 () Bool)

(declare-fun res!967431 () Bool)

(assert (=> b!1433869 (=> (not res!967431) (not e!809343))))

(assert (=> b!1433869 (= res!967431 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1433870 () Bool)

(declare-fun res!967443 () Bool)

(assert (=> b!1433870 (=> (not res!967443) (not e!809343))))

(assert (=> b!1433870 (= res!967443 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631193 lt!631195 mask!2608) lt!631197))))

(declare-fun b!1433871 () Bool)

(assert (=> b!1433871 (= e!809344 e!809345)))

(declare-fun res!967440 () Bool)

(assert (=> b!1433871 (=> (not res!967440) (not e!809345))))

(declare-fun lt!631196 () SeekEntryResult!11366)

(assert (=> b!1433871 (= res!967440 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47065 a!2831) j!81) mask!2608) (select (arr!47065 a!2831) j!81) a!2831 mask!2608) lt!631196))))

(assert (=> b!1433871 (= lt!631196 (Intermediate!11366 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1433872 () Bool)

(declare-fun res!967436 () Bool)

(assert (=> b!1433872 (=> (not res!967436) (not e!809343))))

(assert (=> b!1433872 (= res!967436 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47065 a!2831) j!81) a!2831 mask!2608) lt!631196))))

(assert (= (and start!123754 res!967441) b!1433860))

(assert (= (and b!1433860 res!967435) b!1433864))

(assert (= (and b!1433864 res!967433) b!1433867))

(assert (= (and b!1433867 res!967432) b!1433863))

(assert (= (and b!1433863 res!967438) b!1433865))

(assert (= (and b!1433865 res!967439) b!1433862))

(assert (= (and b!1433862 res!967442) b!1433871))

(assert (= (and b!1433871 res!967440) b!1433866))

(assert (= (and b!1433866 res!967430) b!1433872))

(assert (= (and b!1433872 res!967436) b!1433870))

(assert (= (and b!1433870 res!967443) b!1433869))

(assert (= (and b!1433869 res!967431) b!1433868))

(assert (= (and b!1433868 res!967434) b!1433859))

(assert (= (and b!1433868 (not res!967437)) b!1433861))

(declare-fun m!1323521 () Bool)

(assert (=> b!1433870 m!1323521))

(declare-fun m!1323523 () Bool)

(assert (=> b!1433863 m!1323523))

(declare-fun m!1323525 () Bool)

(assert (=> b!1433867 m!1323525))

(assert (=> b!1433867 m!1323525))

(declare-fun m!1323527 () Bool)

(assert (=> b!1433867 m!1323527))

(declare-fun m!1323529 () Bool)

(assert (=> b!1433865 m!1323529))

(declare-fun m!1323531 () Bool)

(assert (=> start!123754 m!1323531))

(declare-fun m!1323533 () Bool)

(assert (=> start!123754 m!1323533))

(assert (=> b!1433859 m!1323525))

(assert (=> b!1433859 m!1323525))

(declare-fun m!1323535 () Bool)

(assert (=> b!1433859 m!1323535))

(declare-fun m!1323537 () Bool)

(assert (=> b!1433866 m!1323537))

(assert (=> b!1433866 m!1323537))

(declare-fun m!1323539 () Bool)

(assert (=> b!1433866 m!1323539))

(declare-fun m!1323541 () Bool)

(assert (=> b!1433866 m!1323541))

(declare-fun m!1323543 () Bool)

(assert (=> b!1433866 m!1323543))

(assert (=> b!1433868 m!1323541))

(declare-fun m!1323545 () Bool)

(assert (=> b!1433868 m!1323545))

(declare-fun m!1323547 () Bool)

(assert (=> b!1433868 m!1323547))

(declare-fun m!1323549 () Bool)

(assert (=> b!1433868 m!1323549))

(assert (=> b!1433868 m!1323525))

(declare-fun m!1323551 () Bool)

(assert (=> b!1433868 m!1323551))

(assert (=> b!1433872 m!1323525))

(assert (=> b!1433872 m!1323525))

(declare-fun m!1323553 () Bool)

(assert (=> b!1433872 m!1323553))

(declare-fun m!1323555 () Bool)

(assert (=> b!1433861 m!1323555))

(declare-fun m!1323557 () Bool)

(assert (=> b!1433864 m!1323557))

(assert (=> b!1433864 m!1323557))

(declare-fun m!1323559 () Bool)

(assert (=> b!1433864 m!1323559))

(assert (=> b!1433871 m!1323525))

(assert (=> b!1433871 m!1323525))

(declare-fun m!1323561 () Bool)

(assert (=> b!1433871 m!1323561))

(assert (=> b!1433871 m!1323561))

(assert (=> b!1433871 m!1323525))

(declare-fun m!1323563 () Bool)

(assert (=> b!1433871 m!1323563))

(push 1)

