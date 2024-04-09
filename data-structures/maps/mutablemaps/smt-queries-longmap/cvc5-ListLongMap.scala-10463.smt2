; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122980 () Bool)

(assert start!122980)

(declare-fun b!1426021 () Bool)

(declare-fun e!805569 () Bool)

(declare-fun e!805568 () Bool)

(assert (=> b!1426021 (= e!805569 e!805568)))

(declare-fun res!961572 () Bool)

(assert (=> b!1426021 (=> (not res!961572) (not e!805568))))

(declare-datatypes ((SeekEntryResult!11246 0))(
  ( (MissingZero!11246 (index!47375 (_ BitVec 32))) (Found!11246 (index!47376 (_ BitVec 32))) (Intermediate!11246 (undefined!12058 Bool) (index!47377 (_ BitVec 32)) (x!129011 (_ BitVec 32))) (Undefined!11246) (MissingVacant!11246 (index!47378 (_ BitVec 32))) )
))
(declare-fun lt!627962 () SeekEntryResult!11246)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97263 0))(
  ( (array!97264 (arr!46945 (Array (_ BitVec 32) (_ BitVec 64))) (size!47496 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97263)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97263 (_ BitVec 32)) SeekEntryResult!11246)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426021 (= res!961572 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46945 a!2831) j!81) mask!2608) (select (arr!46945 a!2831) j!81) a!2831 mask!2608) lt!627962))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1426021 (= lt!627962 (Intermediate!11246 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426022 () Bool)

(declare-fun res!961571 () Bool)

(assert (=> b!1426022 (=> (not res!961571) (not e!805569))))

(declare-datatypes ((List!33635 0))(
  ( (Nil!33632) (Cons!33631 (h!34933 (_ BitVec 64)) (t!48336 List!33635)) )
))
(declare-fun arrayNoDuplicates!0 (array!97263 (_ BitVec 32) List!33635) Bool)

(assert (=> b!1426022 (= res!961571 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33632))))

(declare-fun b!1426023 () Bool)

(declare-fun res!961568 () Bool)

(assert (=> b!1426023 (=> (not res!961568) (not e!805569))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426023 (= res!961568 (validKeyInArray!0 (select (arr!46945 a!2831) i!982)))))

(declare-fun res!961569 () Bool)

(assert (=> start!122980 (=> (not res!961569) (not e!805569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122980 (= res!961569 (validMask!0 mask!2608))))

(assert (=> start!122980 e!805569))

(assert (=> start!122980 true))

(declare-fun array_inv!35890 (array!97263) Bool)

(assert (=> start!122980 (array_inv!35890 a!2831)))

(declare-fun b!1426024 () Bool)

(declare-fun res!961567 () Bool)

(assert (=> b!1426024 (=> (not res!961567) (not e!805569))))

(assert (=> b!1426024 (= res!961567 (validKeyInArray!0 (select (arr!46945 a!2831) j!81)))))

(declare-fun b!1426025 () Bool)

(declare-fun res!961566 () Bool)

(assert (=> b!1426025 (=> (not res!961566) (not e!805569))))

(assert (=> b!1426025 (= res!961566 (and (= (size!47496 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47496 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47496 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426026 () Bool)

(declare-fun e!805570 () Bool)

(assert (=> b!1426026 (= e!805568 e!805570)))

(declare-fun res!961570 () Bool)

(assert (=> b!1426026 (=> (not res!961570) (not e!805570))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!627964 () array!97263)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun lt!627963 () (_ BitVec 64))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1426026 (= res!961570 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627963 mask!2608) lt!627963 lt!627964 mask!2608) (Intermediate!11246 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1426026 (= lt!627963 (select (store (arr!46945 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426026 (= lt!627964 (array!97264 (store (arr!46945 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47496 a!2831)))))

(declare-fun b!1426027 () Bool)

(assert (=> b!1426027 (= e!805570 false)))

(declare-fun lt!627961 () SeekEntryResult!11246)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1426027 (= lt!627961 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627963 lt!627964 mask!2608))))

(declare-fun b!1426028 () Bool)

(declare-fun res!961565 () Bool)

(assert (=> b!1426028 (=> (not res!961565) (not e!805570))))

(assert (=> b!1426028 (= res!961565 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46945 a!2831) j!81) a!2831 mask!2608) lt!627962))))

(declare-fun b!1426029 () Bool)

(declare-fun res!961563 () Bool)

(assert (=> b!1426029 (=> (not res!961563) (not e!805569))))

(assert (=> b!1426029 (= res!961563 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47496 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47496 a!2831))))))

(declare-fun b!1426030 () Bool)

(declare-fun res!961564 () Bool)

(assert (=> b!1426030 (=> (not res!961564) (not e!805569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97263 (_ BitVec 32)) Bool)

(assert (=> b!1426030 (= res!961564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122980 res!961569) b!1426025))

(assert (= (and b!1426025 res!961566) b!1426023))

(assert (= (and b!1426023 res!961568) b!1426024))

(assert (= (and b!1426024 res!961567) b!1426030))

(assert (= (and b!1426030 res!961564) b!1426022))

(assert (= (and b!1426022 res!961571) b!1426029))

(assert (= (and b!1426029 res!961563) b!1426021))

(assert (= (and b!1426021 res!961572) b!1426026))

(assert (= (and b!1426026 res!961570) b!1426028))

(assert (= (and b!1426028 res!961565) b!1426027))

(declare-fun m!1316687 () Bool)

(assert (=> b!1426024 m!1316687))

(assert (=> b!1426024 m!1316687))

(declare-fun m!1316689 () Bool)

(assert (=> b!1426024 m!1316689))

(declare-fun m!1316691 () Bool)

(assert (=> b!1426023 m!1316691))

(assert (=> b!1426023 m!1316691))

(declare-fun m!1316693 () Bool)

(assert (=> b!1426023 m!1316693))

(assert (=> b!1426021 m!1316687))

(assert (=> b!1426021 m!1316687))

(declare-fun m!1316695 () Bool)

(assert (=> b!1426021 m!1316695))

(assert (=> b!1426021 m!1316695))

(assert (=> b!1426021 m!1316687))

(declare-fun m!1316697 () Bool)

(assert (=> b!1426021 m!1316697))

(declare-fun m!1316699 () Bool)

(assert (=> start!122980 m!1316699))

(declare-fun m!1316701 () Bool)

(assert (=> start!122980 m!1316701))

(declare-fun m!1316703 () Bool)

(assert (=> b!1426030 m!1316703))

(declare-fun m!1316705 () Bool)

(assert (=> b!1426026 m!1316705))

(assert (=> b!1426026 m!1316705))

(declare-fun m!1316707 () Bool)

(assert (=> b!1426026 m!1316707))

(declare-fun m!1316709 () Bool)

(assert (=> b!1426026 m!1316709))

(declare-fun m!1316711 () Bool)

(assert (=> b!1426026 m!1316711))

(declare-fun m!1316713 () Bool)

(assert (=> b!1426022 m!1316713))

(assert (=> b!1426028 m!1316687))

(assert (=> b!1426028 m!1316687))

(declare-fun m!1316715 () Bool)

(assert (=> b!1426028 m!1316715))

(declare-fun m!1316717 () Bool)

(assert (=> b!1426027 m!1316717))

(push 1)

