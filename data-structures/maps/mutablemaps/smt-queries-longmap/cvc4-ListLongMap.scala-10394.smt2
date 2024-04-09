; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122486 () Bool)

(assert start!122486)

(declare-fun b!1418730 () Bool)

(declare-fun res!954446 () Bool)

(declare-fun e!802822 () Bool)

(assert (=> b!1418730 (=> (not res!954446) (not e!802822))))

(declare-datatypes ((array!96847 0))(
  ( (array!96848 (arr!46740 (Array (_ BitVec 32) (_ BitVec 64))) (size!47291 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96847)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96847 (_ BitVec 32)) Bool)

(assert (=> b!1418730 (= res!954446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418731 () Bool)

(declare-fun res!954451 () Bool)

(assert (=> b!1418731 (=> (not res!954451) (not e!802822))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418731 (= res!954451 (validKeyInArray!0 (select (arr!46740 a!2831) i!982)))))

(declare-fun b!1418732 () Bool)

(declare-fun res!954449 () Bool)

(assert (=> b!1418732 (=> (not res!954449) (not e!802822))))

(declare-datatypes ((List!33430 0))(
  ( (Nil!33427) (Cons!33426 (h!34722 (_ BitVec 64)) (t!48131 List!33430)) )
))
(declare-fun arrayNoDuplicates!0 (array!96847 (_ BitVec 32) List!33430) Bool)

(assert (=> b!1418732 (= res!954449 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33427))))

(declare-fun b!1418733 () Bool)

(declare-fun res!954450 () Bool)

(assert (=> b!1418733 (=> (not res!954450) (not e!802822))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418733 (= res!954450 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47291 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47291 a!2831))))))

(declare-fun b!1418734 () Bool)

(declare-fun res!954452 () Bool)

(assert (=> b!1418734 (=> (not res!954452) (not e!802822))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11047 0))(
  ( (MissingZero!11047 (index!46579 (_ BitVec 32))) (Found!11047 (index!46580 (_ BitVec 32))) (Intermediate!11047 (undefined!11859 Bool) (index!46581 (_ BitVec 32)) (x!128248 (_ BitVec 32))) (Undefined!11047) (MissingVacant!11047 (index!46582 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96847 (_ BitVec 32)) SeekEntryResult!11047)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418734 (= res!954452 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46740 a!2831) j!81) mask!2608) (select (arr!46740 a!2831) j!81) a!2831 mask!2608) (Intermediate!11047 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1418735 () Bool)

(declare-fun res!954447 () Bool)

(assert (=> b!1418735 (=> (not res!954447) (not e!802822))))

(assert (=> b!1418735 (= res!954447 (validKeyInArray!0 (select (arr!46740 a!2831) j!81)))))

(declare-fun b!1418736 () Bool)

(assert (=> b!1418736 (= e!802822 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun b!1418737 () Bool)

(declare-fun res!954453 () Bool)

(assert (=> b!1418737 (=> (not res!954453) (not e!802822))))

(assert (=> b!1418737 (= res!954453 (and (= (size!47291 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47291 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47291 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!954448 () Bool)

(assert (=> start!122486 (=> (not res!954448) (not e!802822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122486 (= res!954448 (validMask!0 mask!2608))))

(assert (=> start!122486 e!802822))

(assert (=> start!122486 true))

(declare-fun array_inv!35685 (array!96847) Bool)

(assert (=> start!122486 (array_inv!35685 a!2831)))

(assert (= (and start!122486 res!954448) b!1418737))

(assert (= (and b!1418737 res!954453) b!1418731))

(assert (= (and b!1418731 res!954451) b!1418735))

(assert (= (and b!1418735 res!954447) b!1418730))

(assert (= (and b!1418730 res!954446) b!1418732))

(assert (= (and b!1418732 res!954449) b!1418733))

(assert (= (and b!1418733 res!954450) b!1418734))

(assert (= (and b!1418734 res!954452) b!1418736))

(declare-fun m!1309395 () Bool)

(assert (=> start!122486 m!1309395))

(declare-fun m!1309397 () Bool)

(assert (=> start!122486 m!1309397))

(declare-fun m!1309399 () Bool)

(assert (=> b!1418732 m!1309399))

(declare-fun m!1309401 () Bool)

(assert (=> b!1418730 m!1309401))

(declare-fun m!1309403 () Bool)

(assert (=> b!1418734 m!1309403))

(assert (=> b!1418734 m!1309403))

(declare-fun m!1309405 () Bool)

(assert (=> b!1418734 m!1309405))

(assert (=> b!1418734 m!1309405))

(assert (=> b!1418734 m!1309403))

(declare-fun m!1309407 () Bool)

(assert (=> b!1418734 m!1309407))

(declare-fun m!1309409 () Bool)

(assert (=> b!1418731 m!1309409))

(assert (=> b!1418731 m!1309409))

(declare-fun m!1309411 () Bool)

(assert (=> b!1418731 m!1309411))

(assert (=> b!1418735 m!1309403))

(assert (=> b!1418735 m!1309403))

(declare-fun m!1309413 () Bool)

(assert (=> b!1418735 m!1309413))

(push 1)

(assert (not b!1418734))

(assert (not start!122486))

(assert (not b!1418731))

(assert (not b!1418730))

(assert (not b!1418732))

(assert (not b!1418735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

