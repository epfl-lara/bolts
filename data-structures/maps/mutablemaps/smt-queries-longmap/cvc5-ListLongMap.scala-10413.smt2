; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122680 () Bool)

(assert start!122680)

(declare-fun b!1420470 () Bool)

(declare-fun e!803398 () Bool)

(declare-fun e!803397 () Bool)

(assert (=> b!1420470 (= e!803398 e!803397)))

(declare-fun res!956021 () Bool)

(assert (=> b!1420470 (=> (not res!956021) (not e!803397))))

(declare-datatypes ((array!96963 0))(
  ( (array!96964 (arr!46795 (Array (_ BitVec 32) (_ BitVec 64))) (size!47346 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96963)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11102 0))(
  ( (MissingZero!11102 (index!46799 (_ BitVec 32))) (Found!11102 (index!46800 (_ BitVec 32))) (Intermediate!11102 (undefined!11914 Bool) (index!46801 (_ BitVec 32)) (x!128467 (_ BitVec 32))) (Undefined!11102) (MissingVacant!11102 (index!46802 (_ BitVec 32))) )
))
(declare-fun lt!625867 () SeekEntryResult!11102)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96963 (_ BitVec 32)) SeekEntryResult!11102)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420470 (= res!956021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46795 a!2831) j!81) mask!2608) (select (arr!46795 a!2831) j!81) a!2831 mask!2608) lt!625867))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420470 (= lt!625867 (Intermediate!11102 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420471 () Bool)

(declare-fun res!956020 () Bool)

(assert (=> b!1420471 (=> (not res!956020) (not e!803398))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420471 (= res!956020 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47346 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47346 a!2831))))))

(declare-fun b!1420472 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420472 (= e!803397 (not (validKeyInArray!0 (select (store (arr!46795 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))))

(declare-fun b!1420473 () Bool)

(declare-fun res!956017 () Bool)

(assert (=> b!1420473 (=> (not res!956017) (not e!803397))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420473 (= res!956017 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46795 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46795 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96964 (store (arr!46795 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47346 a!2831)) mask!2608) (Intermediate!11102 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun res!956016 () Bool)

(assert (=> start!122680 (=> (not res!956016) (not e!803398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122680 (= res!956016 (validMask!0 mask!2608))))

(assert (=> start!122680 e!803398))

(assert (=> start!122680 true))

(declare-fun array_inv!35740 (array!96963) Bool)

(assert (=> start!122680 (array_inv!35740 a!2831)))

(declare-fun b!1420474 () Bool)

(declare-fun res!956022 () Bool)

(assert (=> b!1420474 (=> (not res!956022) (not e!803398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96963 (_ BitVec 32)) Bool)

(assert (=> b!1420474 (= res!956022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420475 () Bool)

(declare-fun res!956012 () Bool)

(assert (=> b!1420475 (=> (not res!956012) (not e!803397))))

(assert (=> b!1420475 (= res!956012 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46795 a!2831) j!81) a!2831 mask!2608) lt!625867))))

(declare-fun b!1420476 () Bool)

(declare-fun res!956014 () Bool)

(assert (=> b!1420476 (=> (not res!956014) (not e!803397))))

(assert (=> b!1420476 (= res!956014 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvslt index!585 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(declare-fun b!1420477 () Bool)

(declare-fun res!956015 () Bool)

(assert (=> b!1420477 (=> (not res!956015) (not e!803398))))

(assert (=> b!1420477 (= res!956015 (validKeyInArray!0 (select (arr!46795 a!2831) j!81)))))

(declare-fun b!1420478 () Bool)

(declare-fun res!956018 () Bool)

(assert (=> b!1420478 (=> (not res!956018) (not e!803398))))

(assert (=> b!1420478 (= res!956018 (validKeyInArray!0 (select (arr!46795 a!2831) i!982)))))

(declare-fun b!1420479 () Bool)

(declare-fun res!956013 () Bool)

(assert (=> b!1420479 (=> (not res!956013) (not e!803398))))

(declare-datatypes ((List!33485 0))(
  ( (Nil!33482) (Cons!33481 (h!34783 (_ BitVec 64)) (t!48186 List!33485)) )
))
(declare-fun arrayNoDuplicates!0 (array!96963 (_ BitVec 32) List!33485) Bool)

(assert (=> b!1420479 (= res!956013 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33482))))

(declare-fun b!1420480 () Bool)

(declare-fun res!956019 () Bool)

(assert (=> b!1420480 (=> (not res!956019) (not e!803398))))

(assert (=> b!1420480 (= res!956019 (and (= (size!47346 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47346 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47346 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122680 res!956016) b!1420480))

(assert (= (and b!1420480 res!956019) b!1420478))

(assert (= (and b!1420478 res!956018) b!1420477))

(assert (= (and b!1420477 res!956015) b!1420474))

(assert (= (and b!1420474 res!956022) b!1420479))

(assert (= (and b!1420479 res!956013) b!1420471))

(assert (= (and b!1420471 res!956020) b!1420470))

(assert (= (and b!1420470 res!956021) b!1420473))

(assert (= (and b!1420473 res!956017) b!1420475))

(assert (= (and b!1420475 res!956012) b!1420476))

(assert (= (and b!1420476 res!956014) b!1420472))

(declare-fun m!1311047 () Bool)

(assert (=> b!1420477 m!1311047))

(assert (=> b!1420477 m!1311047))

(declare-fun m!1311049 () Bool)

(assert (=> b!1420477 m!1311049))

(declare-fun m!1311051 () Bool)

(assert (=> b!1420473 m!1311051))

(declare-fun m!1311053 () Bool)

(assert (=> b!1420473 m!1311053))

(assert (=> b!1420473 m!1311053))

(declare-fun m!1311055 () Bool)

(assert (=> b!1420473 m!1311055))

(assert (=> b!1420473 m!1311055))

(assert (=> b!1420473 m!1311053))

(declare-fun m!1311057 () Bool)

(assert (=> b!1420473 m!1311057))

(declare-fun m!1311059 () Bool)

(assert (=> b!1420474 m!1311059))

(assert (=> b!1420472 m!1311051))

(assert (=> b!1420472 m!1311053))

(assert (=> b!1420472 m!1311053))

(declare-fun m!1311061 () Bool)

(assert (=> b!1420472 m!1311061))

(declare-fun m!1311063 () Bool)

(assert (=> b!1420478 m!1311063))

(assert (=> b!1420478 m!1311063))

(declare-fun m!1311065 () Bool)

(assert (=> b!1420478 m!1311065))

(assert (=> b!1420470 m!1311047))

(assert (=> b!1420470 m!1311047))

(declare-fun m!1311067 () Bool)

(assert (=> b!1420470 m!1311067))

(assert (=> b!1420470 m!1311067))

(assert (=> b!1420470 m!1311047))

(declare-fun m!1311069 () Bool)

(assert (=> b!1420470 m!1311069))

(assert (=> b!1420475 m!1311047))

(assert (=> b!1420475 m!1311047))

(declare-fun m!1311071 () Bool)

(assert (=> b!1420475 m!1311071))

(declare-fun m!1311073 () Bool)

(assert (=> start!122680 m!1311073))

(declare-fun m!1311075 () Bool)

(assert (=> start!122680 m!1311075))

(declare-fun m!1311077 () Bool)

(assert (=> b!1420479 m!1311077))

(push 1)

