; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122648 () Bool)

(assert start!122648)

(declare-fun b!1420018 () Bool)

(declare-fun res!955559 () Bool)

(declare-fun e!803281 () Bool)

(assert (=> b!1420018 (=> (not res!955559) (not e!803281))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!96931 0))(
  ( (array!96932 (arr!46779 (Array (_ BitVec 32) (_ BitVec 64))) (size!47330 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96931)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420018 (= res!955559 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47330 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47330 a!2831))))))

(declare-fun b!1420019 () Bool)

(assert (=> b!1420019 (= e!803281 false)))

(declare-datatypes ((SeekEntryResult!11086 0))(
  ( (MissingZero!11086 (index!46735 (_ BitVec 32))) (Found!11086 (index!46736 (_ BitVec 32))) (Intermediate!11086 (undefined!11898 Bool) (index!46737 (_ BitVec 32)) (x!128403 (_ BitVec 32))) (Undefined!11086) (MissingVacant!11086 (index!46738 (_ BitVec 32))) )
))
(declare-fun lt!625819 () SeekEntryResult!11086)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96931 (_ BitVec 32)) SeekEntryResult!11086)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420019 (= lt!625819 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46779 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46779 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96932 (store (arr!46779 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47330 a!2831)) mask!2608))))

(declare-fun b!1420020 () Bool)

(declare-fun res!955565 () Bool)

(assert (=> b!1420020 (=> (not res!955565) (not e!803281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96931 (_ BitVec 32)) Bool)

(assert (=> b!1420020 (= res!955565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420021 () Bool)

(declare-fun res!955564 () Bool)

(assert (=> b!1420021 (=> (not res!955564) (not e!803281))))

(assert (=> b!1420021 (= res!955564 (and (= (size!47330 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47330 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47330 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420022 () Bool)

(declare-fun res!955562 () Bool)

(assert (=> b!1420022 (=> (not res!955562) (not e!803281))))

(declare-datatypes ((List!33469 0))(
  ( (Nil!33466) (Cons!33465 (h!34767 (_ BitVec 64)) (t!48170 List!33469)) )
))
(declare-fun arrayNoDuplicates!0 (array!96931 (_ BitVec 32) List!33469) Bool)

(assert (=> b!1420022 (= res!955562 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33466))))

(declare-fun b!1420017 () Bool)

(declare-fun res!955563 () Bool)

(assert (=> b!1420017 (=> (not res!955563) (not e!803281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420017 (= res!955563 (validKeyInArray!0 (select (arr!46779 a!2831) j!81)))))

(declare-fun res!955561 () Bool)

(assert (=> start!122648 (=> (not res!955561) (not e!803281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122648 (= res!955561 (validMask!0 mask!2608))))

(assert (=> start!122648 e!803281))

(assert (=> start!122648 true))

(declare-fun array_inv!35724 (array!96931) Bool)

(assert (=> start!122648 (array_inv!35724 a!2831)))

(declare-fun b!1420023 () Bool)

(declare-fun res!955566 () Bool)

(assert (=> b!1420023 (=> (not res!955566) (not e!803281))))

(assert (=> b!1420023 (= res!955566 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46779 a!2831) j!81) mask!2608) (select (arr!46779 a!2831) j!81) a!2831 mask!2608) (Intermediate!11086 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1420024 () Bool)

(declare-fun res!955560 () Bool)

(assert (=> b!1420024 (=> (not res!955560) (not e!803281))))

(assert (=> b!1420024 (= res!955560 (validKeyInArray!0 (select (arr!46779 a!2831) i!982)))))

(assert (= (and start!122648 res!955561) b!1420021))

(assert (= (and b!1420021 res!955564) b!1420024))

(assert (= (and b!1420024 res!955560) b!1420017))

(assert (= (and b!1420017 res!955563) b!1420020))

(assert (= (and b!1420020 res!955565) b!1420022))

(assert (= (and b!1420022 res!955562) b!1420018))

(assert (= (and b!1420018 res!955559) b!1420023))

(assert (= (and b!1420023 res!955566) b!1420019))

(declare-fun m!1310569 () Bool)

(assert (=> b!1420022 m!1310569))

(declare-fun m!1310571 () Bool)

(assert (=> b!1420019 m!1310571))

(declare-fun m!1310573 () Bool)

(assert (=> b!1420019 m!1310573))

(assert (=> b!1420019 m!1310573))

(declare-fun m!1310575 () Bool)

(assert (=> b!1420019 m!1310575))

(assert (=> b!1420019 m!1310575))

(assert (=> b!1420019 m!1310573))

(declare-fun m!1310577 () Bool)

(assert (=> b!1420019 m!1310577))

(declare-fun m!1310579 () Bool)

(assert (=> start!122648 m!1310579))

(declare-fun m!1310581 () Bool)

(assert (=> start!122648 m!1310581))

(declare-fun m!1310583 () Bool)

(assert (=> b!1420020 m!1310583))

(declare-fun m!1310585 () Bool)

(assert (=> b!1420023 m!1310585))

(assert (=> b!1420023 m!1310585))

(declare-fun m!1310587 () Bool)

(assert (=> b!1420023 m!1310587))

(assert (=> b!1420023 m!1310587))

(assert (=> b!1420023 m!1310585))

(declare-fun m!1310589 () Bool)

(assert (=> b!1420023 m!1310589))

(assert (=> b!1420017 m!1310585))

(assert (=> b!1420017 m!1310585))

(declare-fun m!1310591 () Bool)

(assert (=> b!1420017 m!1310591))

(declare-fun m!1310593 () Bool)

(assert (=> b!1420024 m!1310593))

(assert (=> b!1420024 m!1310593))

(declare-fun m!1310595 () Bool)

(assert (=> b!1420024 m!1310595))

(push 1)

(assert (not b!1420020))

(assert (not b!1420017))

(assert (not start!122648))

(assert (not b!1420024))

(assert (not b!1420019))

(assert (not b!1420022))

(assert (not b!1420023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

