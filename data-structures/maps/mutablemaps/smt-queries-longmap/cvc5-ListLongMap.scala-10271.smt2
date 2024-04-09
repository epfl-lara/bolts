; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120826 () Bool)

(assert start!120826)

(declare-fun b!1405324 () Bool)

(declare-fun res!943653 () Bool)

(declare-fun e!795526 () Bool)

(assert (=> b!1405324 (=> (not res!943653) (not e!795526))))

(declare-datatypes ((array!96051 0))(
  ( (array!96052 (arr!46369 (Array (_ BitVec 32) (_ BitVec 64))) (size!46920 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96051)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96051 (_ BitVec 32)) Bool)

(assert (=> b!1405324 (= res!943653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405325 () Bool)

(declare-fun res!943651 () Bool)

(assert (=> b!1405325 (=> (not res!943651) (not e!795526))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405325 (= res!943651 (validKeyInArray!0 (select (arr!46369 a!2901) j!112)))))

(declare-fun b!1405326 () Bool)

(declare-fun res!943656 () Bool)

(assert (=> b!1405326 (=> (not res!943656) (not e!795526))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405326 (= res!943656 (and (= (size!46920 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46920 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46920 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!943650 () Bool)

(assert (=> start!120826 (=> (not res!943650) (not e!795526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120826 (= res!943650 (validMask!0 mask!2840))))

(assert (=> start!120826 e!795526))

(assert (=> start!120826 true))

(declare-fun array_inv!35314 (array!96051) Bool)

(assert (=> start!120826 (array_inv!35314 a!2901)))

(declare-fun b!1405327 () Bool)

(declare-fun res!943655 () Bool)

(assert (=> b!1405327 (=> (not res!943655) (not e!795526))))

(assert (=> b!1405327 (= res!943655 (validKeyInArray!0 (select (arr!46369 a!2901) i!1037)))))

(declare-fun b!1405328 () Bool)

(declare-fun res!943654 () Bool)

(assert (=> b!1405328 (=> (not res!943654) (not e!795526))))

(declare-datatypes ((List!33068 0))(
  ( (Nil!33065) (Cons!33064 (h!34318 (_ BitVec 64)) (t!47769 List!33068)) )
))
(declare-fun arrayNoDuplicates!0 (array!96051 (_ BitVec 32) List!33068) Bool)

(assert (=> b!1405328 (= res!943654 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33065))))

(declare-fun b!1405329 () Bool)

(assert (=> b!1405329 (= e!795526 (not true))))

(declare-fun e!795527 () Bool)

(assert (=> b!1405329 e!795527))

(declare-fun res!943652 () Bool)

(assert (=> b!1405329 (=> (not res!943652) (not e!795527))))

(assert (=> b!1405329 (= res!943652 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47328 0))(
  ( (Unit!47329) )
))
(declare-fun lt!618958 () Unit!47328)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96051 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47328)

(assert (=> b!1405329 (= lt!618958 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10702 0))(
  ( (MissingZero!10702 (index!45184 (_ BitVec 32))) (Found!10702 (index!45185 (_ BitVec 32))) (Intermediate!10702 (undefined!11514 Bool) (index!45186 (_ BitVec 32)) (x!126808 (_ BitVec 32))) (Undefined!10702) (MissingVacant!10702 (index!45187 (_ BitVec 32))) )
))
(declare-fun lt!618957 () SeekEntryResult!10702)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96051 (_ BitVec 32)) SeekEntryResult!10702)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405329 (= lt!618957 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46369 a!2901) j!112) mask!2840) (select (arr!46369 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405330 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96051 (_ BitVec 32)) SeekEntryResult!10702)

(assert (=> b!1405330 (= e!795527 (= (seekEntryOrOpen!0 (select (arr!46369 a!2901) j!112) a!2901 mask!2840) (Found!10702 j!112)))))

(assert (= (and start!120826 res!943650) b!1405326))

(assert (= (and b!1405326 res!943656) b!1405327))

(assert (= (and b!1405327 res!943655) b!1405325))

(assert (= (and b!1405325 res!943651) b!1405324))

(assert (= (and b!1405324 res!943653) b!1405328))

(assert (= (and b!1405328 res!943654) b!1405329))

(assert (= (and b!1405329 res!943652) b!1405330))

(declare-fun m!1294157 () Bool)

(assert (=> start!120826 m!1294157))

(declare-fun m!1294159 () Bool)

(assert (=> start!120826 m!1294159))

(declare-fun m!1294161 () Bool)

(assert (=> b!1405327 m!1294161))

(assert (=> b!1405327 m!1294161))

(declare-fun m!1294163 () Bool)

(assert (=> b!1405327 m!1294163))

(declare-fun m!1294165 () Bool)

(assert (=> b!1405328 m!1294165))

(declare-fun m!1294167 () Bool)

(assert (=> b!1405329 m!1294167))

(declare-fun m!1294169 () Bool)

(assert (=> b!1405329 m!1294169))

(assert (=> b!1405329 m!1294167))

(declare-fun m!1294171 () Bool)

(assert (=> b!1405329 m!1294171))

(assert (=> b!1405329 m!1294169))

(assert (=> b!1405329 m!1294167))

(declare-fun m!1294173 () Bool)

(assert (=> b!1405329 m!1294173))

(declare-fun m!1294175 () Bool)

(assert (=> b!1405329 m!1294175))

(declare-fun m!1294177 () Bool)

(assert (=> b!1405324 m!1294177))

(assert (=> b!1405325 m!1294167))

(assert (=> b!1405325 m!1294167))

(declare-fun m!1294179 () Bool)

(assert (=> b!1405325 m!1294179))

(assert (=> b!1405330 m!1294167))

(assert (=> b!1405330 m!1294167))

(declare-fun m!1294181 () Bool)

(assert (=> b!1405330 m!1294181))

(push 1)

(assert (not b!1405328))

(assert (not b!1405325))

(assert (not b!1405327))

(assert (not b!1405329))

(assert (not b!1405330))

(assert (not start!120826))

(assert (not b!1405324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

