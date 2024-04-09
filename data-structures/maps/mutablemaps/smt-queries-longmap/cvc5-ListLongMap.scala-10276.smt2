; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120856 () Bool)

(assert start!120856)

(declare-fun b!1405650 () Bool)

(declare-fun e!795673 () Bool)

(assert (=> b!1405650 (= e!795673 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96081 0))(
  ( (array!96082 (arr!46384 (Array (_ BitVec 32) (_ BitVec 64))) (size!46935 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96081)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!619059 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405650 (= lt!619059 (toIndex!0 (select (store (arr!46384 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun res!943979 () Bool)

(declare-fun e!795674 () Bool)

(assert (=> start!120856 (=> (not res!943979) (not e!795674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120856 (= res!943979 (validMask!0 mask!2840))))

(assert (=> start!120856 e!795674))

(assert (=> start!120856 true))

(declare-fun array_inv!35329 (array!96081) Bool)

(assert (=> start!120856 (array_inv!35329 a!2901)))

(declare-fun b!1405651 () Bool)

(declare-fun res!943976 () Bool)

(assert (=> b!1405651 (=> (not res!943976) (not e!795674))))

(assert (=> b!1405651 (= res!943976 (and (= (size!46935 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46935 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46935 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405652 () Bool)

(declare-fun e!795671 () Bool)

(declare-datatypes ((SeekEntryResult!10717 0))(
  ( (MissingZero!10717 (index!45244 (_ BitVec 32))) (Found!10717 (index!45245 (_ BitVec 32))) (Intermediate!10717 (undefined!11529 Bool) (index!45246 (_ BitVec 32)) (x!126863 (_ BitVec 32))) (Undefined!10717) (MissingVacant!10717 (index!45247 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96081 (_ BitVec 32)) SeekEntryResult!10717)

(assert (=> b!1405652 (= e!795671 (= (seekEntryOrOpen!0 (select (arr!46384 a!2901) j!112) a!2901 mask!2840) (Found!10717 j!112)))))

(declare-fun b!1405653 () Bool)

(declare-fun res!943983 () Bool)

(assert (=> b!1405653 (=> (not res!943983) (not e!795674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405653 (= res!943983 (validKeyInArray!0 (select (arr!46384 a!2901) j!112)))))

(declare-fun b!1405654 () Bool)

(declare-fun res!943982 () Bool)

(assert (=> b!1405654 (=> (not res!943982) (not e!795674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96081 (_ BitVec 32)) Bool)

(assert (=> b!1405654 (= res!943982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405655 () Bool)

(declare-fun res!943981 () Bool)

(assert (=> b!1405655 (=> (not res!943981) (not e!795674))))

(assert (=> b!1405655 (= res!943981 (validKeyInArray!0 (select (arr!46384 a!2901) i!1037)))))

(declare-fun b!1405656 () Bool)

(assert (=> b!1405656 (= e!795674 (not e!795673))))

(declare-fun res!943978 () Bool)

(assert (=> b!1405656 (=> res!943978 e!795673)))

(declare-fun lt!619060 () SeekEntryResult!10717)

(assert (=> b!1405656 (= res!943978 (or (not (is-Intermediate!10717 lt!619060)) (undefined!11529 lt!619060)))))

(assert (=> b!1405656 e!795671))

(declare-fun res!943980 () Bool)

(assert (=> b!1405656 (=> (not res!943980) (not e!795671))))

(assert (=> b!1405656 (= res!943980 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47358 0))(
  ( (Unit!47359) )
))
(declare-fun lt!619058 () Unit!47358)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96081 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47358)

(assert (=> b!1405656 (= lt!619058 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96081 (_ BitVec 32)) SeekEntryResult!10717)

(assert (=> b!1405656 (= lt!619060 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46384 a!2901) j!112) mask!2840) (select (arr!46384 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405657 () Bool)

(declare-fun res!943977 () Bool)

(assert (=> b!1405657 (=> (not res!943977) (not e!795674))))

(declare-datatypes ((List!33083 0))(
  ( (Nil!33080) (Cons!33079 (h!34333 (_ BitVec 64)) (t!47784 List!33083)) )
))
(declare-fun arrayNoDuplicates!0 (array!96081 (_ BitVec 32) List!33083) Bool)

(assert (=> b!1405657 (= res!943977 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33080))))

(assert (= (and start!120856 res!943979) b!1405651))

(assert (= (and b!1405651 res!943976) b!1405655))

(assert (= (and b!1405655 res!943981) b!1405653))

(assert (= (and b!1405653 res!943983) b!1405654))

(assert (= (and b!1405654 res!943982) b!1405657))

(assert (= (and b!1405657 res!943977) b!1405656))

(assert (= (and b!1405656 res!943980) b!1405652))

(assert (= (and b!1405656 (not res!943978)) b!1405650))

(declare-fun m!1294565 () Bool)

(assert (=> start!120856 m!1294565))

(declare-fun m!1294567 () Bool)

(assert (=> start!120856 m!1294567))

(declare-fun m!1294569 () Bool)

(assert (=> b!1405652 m!1294569))

(assert (=> b!1405652 m!1294569))

(declare-fun m!1294571 () Bool)

(assert (=> b!1405652 m!1294571))

(declare-fun m!1294573 () Bool)

(assert (=> b!1405655 m!1294573))

(assert (=> b!1405655 m!1294573))

(declare-fun m!1294575 () Bool)

(assert (=> b!1405655 m!1294575))

(declare-fun m!1294577 () Bool)

(assert (=> b!1405654 m!1294577))

(assert (=> b!1405653 m!1294569))

(assert (=> b!1405653 m!1294569))

(declare-fun m!1294579 () Bool)

(assert (=> b!1405653 m!1294579))

(declare-fun m!1294581 () Bool)

(assert (=> b!1405657 m!1294581))

(assert (=> b!1405656 m!1294569))

(declare-fun m!1294583 () Bool)

(assert (=> b!1405656 m!1294583))

(assert (=> b!1405656 m!1294569))

(declare-fun m!1294585 () Bool)

(assert (=> b!1405656 m!1294585))

(assert (=> b!1405656 m!1294583))

(assert (=> b!1405656 m!1294569))

(declare-fun m!1294587 () Bool)

(assert (=> b!1405656 m!1294587))

(declare-fun m!1294589 () Bool)

(assert (=> b!1405656 m!1294589))

(declare-fun m!1294591 () Bool)

(assert (=> b!1405650 m!1294591))

(declare-fun m!1294593 () Bool)

(assert (=> b!1405650 m!1294593))

(assert (=> b!1405650 m!1294593))

(declare-fun m!1294595 () Bool)

(assert (=> b!1405650 m!1294595))

(push 1)

(assert (not b!1405654))

(assert (not b!1405650))

(assert (not b!1405656))

(assert (not start!120856))

(assert (not b!1405657))

(assert (not b!1405655))

(assert (not b!1405652))

(assert (not b!1405653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

