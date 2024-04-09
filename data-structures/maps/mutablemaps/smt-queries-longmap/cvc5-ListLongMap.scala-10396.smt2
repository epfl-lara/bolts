; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122536 () Bool)

(assert start!122536)

(declare-fun b!1418988 () Bool)

(declare-fun e!802954 () Bool)

(assert (=> b!1418988 (= e!802954 false)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96858 0))(
  ( (array!96859 (arr!46744 (Array (_ BitVec 32) (_ BitVec 64))) (size!47295 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96858)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun lt!625663 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418988 (= lt!625663 (toIndex!0 (select (store (arr!46744 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1418989 () Bool)

(declare-fun res!954617 () Bool)

(assert (=> b!1418989 (=> (not res!954617) (not e!802954))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11051 0))(
  ( (MissingZero!11051 (index!46595 (_ BitVec 32))) (Found!11051 (index!46596 (_ BitVec 32))) (Intermediate!11051 (undefined!11863 Bool) (index!46597 (_ BitVec 32)) (x!128274 (_ BitVec 32))) (Undefined!11051) (MissingVacant!11051 (index!46598 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96858 (_ BitVec 32)) SeekEntryResult!11051)

(assert (=> b!1418989 (= res!954617 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46744 a!2831) j!81) mask!2608) (select (arr!46744 a!2831) j!81) a!2831 mask!2608) (Intermediate!11051 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1418990 () Bool)

(declare-fun res!954623 () Bool)

(assert (=> b!1418990 (=> (not res!954623) (not e!802954))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418990 (= res!954623 (validKeyInArray!0 (select (arr!46744 a!2831) i!982)))))

(declare-fun b!1418991 () Bool)

(declare-fun res!954618 () Bool)

(assert (=> b!1418991 (=> (not res!954618) (not e!802954))))

(assert (=> b!1418991 (= res!954618 (validKeyInArray!0 (select (arr!46744 a!2831) j!81)))))

(declare-fun res!954619 () Bool)

(assert (=> start!122536 (=> (not res!954619) (not e!802954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122536 (= res!954619 (validMask!0 mask!2608))))

(assert (=> start!122536 e!802954))

(assert (=> start!122536 true))

(declare-fun array_inv!35689 (array!96858) Bool)

(assert (=> start!122536 (array_inv!35689 a!2831)))

(declare-fun b!1418992 () Bool)

(declare-fun res!954621 () Bool)

(assert (=> b!1418992 (=> (not res!954621) (not e!802954))))

(assert (=> b!1418992 (= res!954621 (and (= (size!47295 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47295 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47295 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418993 () Bool)

(declare-fun res!954624 () Bool)

(assert (=> b!1418993 (=> (not res!954624) (not e!802954))))

(declare-datatypes ((List!33434 0))(
  ( (Nil!33431) (Cons!33430 (h!34729 (_ BitVec 64)) (t!48135 List!33434)) )
))
(declare-fun arrayNoDuplicates!0 (array!96858 (_ BitVec 32) List!33434) Bool)

(assert (=> b!1418993 (= res!954624 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33431))))

(declare-fun b!1418994 () Bool)

(declare-fun res!954622 () Bool)

(assert (=> b!1418994 (=> (not res!954622) (not e!802954))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96858 (_ BitVec 32)) Bool)

(assert (=> b!1418994 (= res!954622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418995 () Bool)

(declare-fun res!954620 () Bool)

(assert (=> b!1418995 (=> (not res!954620) (not e!802954))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418995 (= res!954620 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47295 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47295 a!2831))))))

(assert (= (and start!122536 res!954619) b!1418992))

(assert (= (and b!1418992 res!954621) b!1418990))

(assert (= (and b!1418990 res!954623) b!1418991))

(assert (= (and b!1418991 res!954618) b!1418994))

(assert (= (and b!1418994 res!954622) b!1418993))

(assert (= (and b!1418993 res!954624) b!1418995))

(assert (= (and b!1418995 res!954620) b!1418989))

(assert (= (and b!1418989 res!954617) b!1418988))

(declare-fun m!1309547 () Bool)

(assert (=> b!1418993 m!1309547))

(declare-fun m!1309549 () Bool)

(assert (=> b!1418994 m!1309549))

(declare-fun m!1309551 () Bool)

(assert (=> b!1418991 m!1309551))

(assert (=> b!1418991 m!1309551))

(declare-fun m!1309553 () Bool)

(assert (=> b!1418991 m!1309553))

(declare-fun m!1309555 () Bool)

(assert (=> b!1418990 m!1309555))

(assert (=> b!1418990 m!1309555))

(declare-fun m!1309557 () Bool)

(assert (=> b!1418990 m!1309557))

(assert (=> b!1418989 m!1309551))

(assert (=> b!1418989 m!1309551))

(declare-fun m!1309559 () Bool)

(assert (=> b!1418989 m!1309559))

(assert (=> b!1418989 m!1309559))

(assert (=> b!1418989 m!1309551))

(declare-fun m!1309561 () Bool)

(assert (=> b!1418989 m!1309561))

(declare-fun m!1309563 () Bool)

(assert (=> start!122536 m!1309563))

(declare-fun m!1309565 () Bool)

(assert (=> start!122536 m!1309565))

(declare-fun m!1309567 () Bool)

(assert (=> b!1418988 m!1309567))

(declare-fun m!1309569 () Bool)

(assert (=> b!1418988 m!1309569))

(assert (=> b!1418988 m!1309569))

(declare-fun m!1309571 () Bool)

(assert (=> b!1418988 m!1309571))

(push 1)

(assert (not b!1418988))

(assert (not b!1418993))

(assert (not b!1418991))

(assert (not b!1418990))

(assert (not b!1418994))

(assert (not b!1418989))

(assert (not start!122536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

