; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120538 () Bool)

(assert start!120538)

(declare-fun b!1403016 () Bool)

(declare-fun res!941643 () Bool)

(declare-fun e!794459 () Bool)

(assert (=> b!1403016 (=> (not res!941643) (not e!794459))))

(declare-datatypes ((array!95865 0))(
  ( (array!95866 (arr!46279 (Array (_ BitVec 32) (_ BitVec 64))) (size!46830 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95865)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95865 (_ BitVec 32)) Bool)

(assert (=> b!1403016 (= res!941643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403017 () Bool)

(declare-fun e!794457 () Bool)

(assert (=> b!1403017 (= e!794457 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10618 0))(
  ( (MissingZero!10618 (index!44848 (_ BitVec 32))) (Found!10618 (index!44849 (_ BitVec 32))) (Intermediate!10618 (undefined!11430 Bool) (index!44850 (_ BitVec 32)) (x!126472 (_ BitVec 32))) (Undefined!10618) (MissingVacant!10618 (index!44851 (_ BitVec 32))) )
))
(declare-fun lt!618212 () SeekEntryResult!10618)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95865 (_ BitVec 32)) SeekEntryResult!10618)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403017 (= lt!618212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46279 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46279 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95866 (store (arr!46279 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46830 a!2901)) mask!2840))))

(declare-fun b!1403018 () Bool)

(assert (=> b!1403018 (= e!794459 (not e!794457))))

(declare-fun res!941640 () Bool)

(assert (=> b!1403018 (=> res!941640 e!794457)))

(declare-fun lt!618213 () SeekEntryResult!10618)

(assert (=> b!1403018 (= res!941640 (or (not (is-Intermediate!10618 lt!618213)) (undefined!11430 lt!618213)))))

(declare-fun e!794456 () Bool)

(assert (=> b!1403018 e!794456))

(declare-fun res!941637 () Bool)

(assert (=> b!1403018 (=> (not res!941637) (not e!794456))))

(assert (=> b!1403018 (= res!941637 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47190 0))(
  ( (Unit!47191) )
))
(declare-fun lt!618214 () Unit!47190)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95865 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47190)

(assert (=> b!1403018 (= lt!618214 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1403018 (= lt!618213 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46279 a!2901) j!112) mask!2840) (select (arr!46279 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403019 () Bool)

(declare-fun res!941642 () Bool)

(assert (=> b!1403019 (=> (not res!941642) (not e!794459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403019 (= res!941642 (validKeyInArray!0 (select (arr!46279 a!2901) j!112)))))

(declare-fun b!1403020 () Bool)

(declare-fun res!941641 () Bool)

(assert (=> b!1403020 (=> (not res!941641) (not e!794459))))

(declare-datatypes ((List!32978 0))(
  ( (Nil!32975) (Cons!32974 (h!34222 (_ BitVec 64)) (t!47679 List!32978)) )
))
(declare-fun arrayNoDuplicates!0 (array!95865 (_ BitVec 32) List!32978) Bool)

(assert (=> b!1403020 (= res!941641 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32975))))

(declare-fun b!1403021 () Bool)

(declare-fun res!941638 () Bool)

(assert (=> b!1403021 (=> (not res!941638) (not e!794459))))

(assert (=> b!1403021 (= res!941638 (validKeyInArray!0 (select (arr!46279 a!2901) i!1037)))))

(declare-fun b!1403022 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95865 (_ BitVec 32)) SeekEntryResult!10618)

(assert (=> b!1403022 (= e!794456 (= (seekEntryOrOpen!0 (select (arr!46279 a!2901) j!112) a!2901 mask!2840) (Found!10618 j!112)))))

(declare-fun res!941636 () Bool)

(assert (=> start!120538 (=> (not res!941636) (not e!794459))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120538 (= res!941636 (validMask!0 mask!2840))))

(assert (=> start!120538 e!794459))

(assert (=> start!120538 true))

(declare-fun array_inv!35224 (array!95865) Bool)

(assert (=> start!120538 (array_inv!35224 a!2901)))

(declare-fun b!1403023 () Bool)

(declare-fun res!941639 () Bool)

(assert (=> b!1403023 (=> (not res!941639) (not e!794459))))

(assert (=> b!1403023 (= res!941639 (and (= (size!46830 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46830 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46830 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120538 res!941636) b!1403023))

(assert (= (and b!1403023 res!941639) b!1403021))

(assert (= (and b!1403021 res!941638) b!1403019))

(assert (= (and b!1403019 res!941642) b!1403016))

(assert (= (and b!1403016 res!941643) b!1403020))

(assert (= (and b!1403020 res!941641) b!1403018))

(assert (= (and b!1403018 res!941637) b!1403022))

(assert (= (and b!1403018 (not res!941640)) b!1403017))

(declare-fun m!1291571 () Bool)

(assert (=> b!1403022 m!1291571))

(assert (=> b!1403022 m!1291571))

(declare-fun m!1291573 () Bool)

(assert (=> b!1403022 m!1291573))

(declare-fun m!1291575 () Bool)

(assert (=> start!120538 m!1291575))

(declare-fun m!1291577 () Bool)

(assert (=> start!120538 m!1291577))

(assert (=> b!1403019 m!1291571))

(assert (=> b!1403019 m!1291571))

(declare-fun m!1291579 () Bool)

(assert (=> b!1403019 m!1291579))

(declare-fun m!1291581 () Bool)

(assert (=> b!1403021 m!1291581))

(assert (=> b!1403021 m!1291581))

(declare-fun m!1291583 () Bool)

(assert (=> b!1403021 m!1291583))

(declare-fun m!1291585 () Bool)

(assert (=> b!1403017 m!1291585))

(declare-fun m!1291587 () Bool)

(assert (=> b!1403017 m!1291587))

(assert (=> b!1403017 m!1291587))

(declare-fun m!1291589 () Bool)

(assert (=> b!1403017 m!1291589))

(assert (=> b!1403017 m!1291589))

(assert (=> b!1403017 m!1291587))

(declare-fun m!1291591 () Bool)

(assert (=> b!1403017 m!1291591))

(declare-fun m!1291593 () Bool)

(assert (=> b!1403020 m!1291593))

(declare-fun m!1291595 () Bool)

(assert (=> b!1403016 m!1291595))

(assert (=> b!1403018 m!1291571))

(declare-fun m!1291597 () Bool)

(assert (=> b!1403018 m!1291597))

(assert (=> b!1403018 m!1291571))

(declare-fun m!1291599 () Bool)

(assert (=> b!1403018 m!1291599))

(assert (=> b!1403018 m!1291597))

(assert (=> b!1403018 m!1291571))

(declare-fun m!1291601 () Bool)

(assert (=> b!1403018 m!1291601))

(declare-fun m!1291603 () Bool)

(assert (=> b!1403018 m!1291603))

(push 1)

(assert (not b!1403020))

(assert (not b!1403022))

(assert (not b!1403019))

(assert (not b!1403018))

(assert (not start!120538))

(assert (not b!1403021))

(assert (not b!1403016))

(assert (not b!1403017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

