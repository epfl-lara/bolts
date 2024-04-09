; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120844 () Bool)

(assert start!120844)

(declare-fun b!1405513 () Bool)

(declare-fun res!943843 () Bool)

(declare-fun e!795607 () Bool)

(assert (=> b!1405513 (=> (not res!943843) (not e!795607))))

(declare-datatypes ((array!96069 0))(
  ( (array!96070 (arr!46378 (Array (_ BitVec 32) (_ BitVec 64))) (size!46929 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96069)

(declare-datatypes ((List!33077 0))(
  ( (Nil!33074) (Cons!33073 (h!34327 (_ BitVec 64)) (t!47778 List!33077)) )
))
(declare-fun arrayNoDuplicates!0 (array!96069 (_ BitVec 32) List!33077) Bool)

(assert (=> b!1405513 (= res!943843 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33074))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1405514 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!795606 () Bool)

(declare-datatypes ((SeekEntryResult!10711 0))(
  ( (MissingZero!10711 (index!45220 (_ BitVec 32))) (Found!10711 (index!45221 (_ BitVec 32))) (Intermediate!10711 (undefined!11523 Bool) (index!45222 (_ BitVec 32)) (x!126841 (_ BitVec 32))) (Undefined!10711) (MissingVacant!10711 (index!45223 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96069 (_ BitVec 32)) SeekEntryResult!10711)

(assert (=> b!1405514 (= e!795606 (= (seekEntryOrOpen!0 (select (arr!46378 a!2901) j!112) a!2901 mask!2840) (Found!10711 j!112)))))

(declare-fun b!1405515 () Bool)

(declare-fun res!943844 () Bool)

(assert (=> b!1405515 (=> (not res!943844) (not e!795607))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405515 (= res!943844 (validKeyInArray!0 (select (arr!46378 a!2901) i!1037)))))

(declare-fun res!943840 () Bool)

(assert (=> start!120844 (=> (not res!943840) (not e!795607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120844 (= res!943840 (validMask!0 mask!2840))))

(assert (=> start!120844 e!795607))

(assert (=> start!120844 true))

(declare-fun array_inv!35323 (array!96069) Bool)

(assert (=> start!120844 (array_inv!35323 a!2901)))

(declare-fun b!1405516 () Bool)

(assert (=> b!1405516 (= e!795607 (not true))))

(assert (=> b!1405516 e!795606))

(declare-fun res!943842 () Bool)

(assert (=> b!1405516 (=> (not res!943842) (not e!795606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96069 (_ BitVec 32)) Bool)

(assert (=> b!1405516 (= res!943842 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47346 0))(
  ( (Unit!47347) )
))
(declare-fun lt!619012 () Unit!47346)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47346)

(assert (=> b!1405516 (= lt!619012 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!619011 () SeekEntryResult!10711)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96069 (_ BitVec 32)) SeekEntryResult!10711)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405516 (= lt!619011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46378 a!2901) j!112) mask!2840) (select (arr!46378 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405517 () Bool)

(declare-fun res!943845 () Bool)

(assert (=> b!1405517 (=> (not res!943845) (not e!795607))))

(assert (=> b!1405517 (= res!943845 (validKeyInArray!0 (select (arr!46378 a!2901) j!112)))))

(declare-fun b!1405518 () Bool)

(declare-fun res!943841 () Bool)

(assert (=> b!1405518 (=> (not res!943841) (not e!795607))))

(assert (=> b!1405518 (= res!943841 (and (= (size!46929 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46929 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46929 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405519 () Bool)

(declare-fun res!943839 () Bool)

(assert (=> b!1405519 (=> (not res!943839) (not e!795607))))

(assert (=> b!1405519 (= res!943839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120844 res!943840) b!1405518))

(assert (= (and b!1405518 res!943841) b!1405515))

(assert (= (and b!1405515 res!943844) b!1405517))

(assert (= (and b!1405517 res!943845) b!1405519))

(assert (= (and b!1405519 res!943839) b!1405513))

(assert (= (and b!1405513 res!943843) b!1405516))

(assert (= (and b!1405516 res!943842) b!1405514))

(declare-fun m!1294391 () Bool)

(assert (=> b!1405514 m!1294391))

(assert (=> b!1405514 m!1294391))

(declare-fun m!1294393 () Bool)

(assert (=> b!1405514 m!1294393))

(declare-fun m!1294395 () Bool)

(assert (=> b!1405519 m!1294395))

(declare-fun m!1294397 () Bool)

(assert (=> b!1405515 m!1294397))

(assert (=> b!1405515 m!1294397))

(declare-fun m!1294399 () Bool)

(assert (=> b!1405515 m!1294399))

(declare-fun m!1294401 () Bool)

(assert (=> b!1405513 m!1294401))

(assert (=> b!1405517 m!1294391))

(assert (=> b!1405517 m!1294391))

(declare-fun m!1294403 () Bool)

(assert (=> b!1405517 m!1294403))

(assert (=> b!1405516 m!1294391))

(declare-fun m!1294405 () Bool)

(assert (=> b!1405516 m!1294405))

(assert (=> b!1405516 m!1294391))

(declare-fun m!1294407 () Bool)

(assert (=> b!1405516 m!1294407))

(assert (=> b!1405516 m!1294405))

(assert (=> b!1405516 m!1294391))

(declare-fun m!1294409 () Bool)

(assert (=> b!1405516 m!1294409))

(declare-fun m!1294411 () Bool)

(assert (=> b!1405516 m!1294411))

(declare-fun m!1294413 () Bool)

(assert (=> start!120844 m!1294413))

(declare-fun m!1294415 () Bool)

(assert (=> start!120844 m!1294415))

(push 1)

(assert (not b!1405514))

(assert (not b!1405513))

(assert (not b!1405517))

(assert (not b!1405515))

(assert (not b!1405516))

(assert (not start!120844))

(assert (not b!1405519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

