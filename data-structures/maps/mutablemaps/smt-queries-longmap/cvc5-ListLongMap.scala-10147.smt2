; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119686 () Bool)

(assert start!119686)

(declare-fun b!1393605 () Bool)

(declare-fun res!933125 () Bool)

(declare-fun e!789125 () Bool)

(assert (=> b!1393605 (=> (not res!933125) (not e!789125))))

(declare-datatypes ((array!95286 0))(
  ( (array!95287 (arr!45997 (Array (_ BitVec 32) (_ BitVec 64))) (size!46548 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95286)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393605 (= res!933125 (validKeyInArray!0 (select (arr!45997 a!2901) i!1037)))))

(declare-fun b!1393606 () Bool)

(declare-fun e!789126 () Bool)

(assert (=> b!1393606 (= e!789126 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10336 0))(
  ( (MissingZero!10336 (index!43714 (_ BitVec 32))) (Found!10336 (index!43715 (_ BitVec 32))) (Intermediate!10336 (undefined!11148 Bool) (index!43716 (_ BitVec 32)) (x!125399 (_ BitVec 32))) (Undefined!10336) (MissingVacant!10336 (index!43717 (_ BitVec 32))) )
))
(declare-fun lt!612023 () SeekEntryResult!10336)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95286 (_ BitVec 32)) SeekEntryResult!10336)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393606 (= lt!612023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45997 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45997 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95287 (store (arr!45997 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46548 a!2901)) mask!2840))))

(declare-fun b!1393607 () Bool)

(declare-fun res!933127 () Bool)

(assert (=> b!1393607 (=> (not res!933127) (not e!789125))))

(assert (=> b!1393607 (= res!933127 (and (= (size!46548 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46548 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46548 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393608 () Bool)

(declare-fun res!933123 () Bool)

(assert (=> b!1393608 (=> (not res!933123) (not e!789125))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95286 (_ BitVec 32)) Bool)

(assert (=> b!1393608 (= res!933123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!933124 () Bool)

(assert (=> start!119686 (=> (not res!933124) (not e!789125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119686 (= res!933124 (validMask!0 mask!2840))))

(assert (=> start!119686 e!789125))

(assert (=> start!119686 true))

(declare-fun array_inv!34942 (array!95286) Bool)

(assert (=> start!119686 (array_inv!34942 a!2901)))

(declare-fun b!1393609 () Bool)

(declare-fun e!789127 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95286 (_ BitVec 32)) SeekEntryResult!10336)

(assert (=> b!1393609 (= e!789127 (= (seekEntryOrOpen!0 (select (arr!45997 a!2901) j!112) a!2901 mask!2840) (Found!10336 j!112)))))

(declare-fun b!1393610 () Bool)

(assert (=> b!1393610 (= e!789125 (not e!789126))))

(declare-fun res!933126 () Bool)

(assert (=> b!1393610 (=> res!933126 e!789126)))

(declare-fun lt!612024 () SeekEntryResult!10336)

(assert (=> b!1393610 (= res!933126 (or (not (is-Intermediate!10336 lt!612024)) (undefined!11148 lt!612024)))))

(assert (=> b!1393610 e!789127))

(declare-fun res!933129 () Bool)

(assert (=> b!1393610 (=> (not res!933129) (not e!789127))))

(assert (=> b!1393610 (= res!933129 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46626 0))(
  ( (Unit!46627) )
))
(declare-fun lt!612025 () Unit!46626)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95286 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46626)

(assert (=> b!1393610 (= lt!612025 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393610 (= lt!612024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45997 a!2901) j!112) mask!2840) (select (arr!45997 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393611 () Bool)

(declare-fun res!933128 () Bool)

(assert (=> b!1393611 (=> (not res!933128) (not e!789125))))

(declare-datatypes ((List!32696 0))(
  ( (Nil!32693) (Cons!32692 (h!33925 (_ BitVec 64)) (t!47397 List!32696)) )
))
(declare-fun arrayNoDuplicates!0 (array!95286 (_ BitVec 32) List!32696) Bool)

(assert (=> b!1393611 (= res!933128 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32693))))

(declare-fun b!1393612 () Bool)

(declare-fun res!933122 () Bool)

(assert (=> b!1393612 (=> (not res!933122) (not e!789125))))

(assert (=> b!1393612 (= res!933122 (validKeyInArray!0 (select (arr!45997 a!2901) j!112)))))

(assert (= (and start!119686 res!933124) b!1393607))

(assert (= (and b!1393607 res!933127) b!1393605))

(assert (= (and b!1393605 res!933125) b!1393612))

(assert (= (and b!1393612 res!933122) b!1393608))

(assert (= (and b!1393608 res!933123) b!1393611))

(assert (= (and b!1393611 res!933128) b!1393610))

(assert (= (and b!1393610 res!933129) b!1393609))

(assert (= (and b!1393610 (not res!933126)) b!1393606))

(declare-fun m!1279679 () Bool)

(assert (=> b!1393609 m!1279679))

(assert (=> b!1393609 m!1279679))

(declare-fun m!1279681 () Bool)

(assert (=> b!1393609 m!1279681))

(assert (=> b!1393612 m!1279679))

(assert (=> b!1393612 m!1279679))

(declare-fun m!1279683 () Bool)

(assert (=> b!1393612 m!1279683))

(declare-fun m!1279685 () Bool)

(assert (=> start!119686 m!1279685))

(declare-fun m!1279687 () Bool)

(assert (=> start!119686 m!1279687))

(declare-fun m!1279689 () Bool)

(assert (=> b!1393605 m!1279689))

(assert (=> b!1393605 m!1279689))

(declare-fun m!1279691 () Bool)

(assert (=> b!1393605 m!1279691))

(declare-fun m!1279693 () Bool)

(assert (=> b!1393606 m!1279693))

(declare-fun m!1279695 () Bool)

(assert (=> b!1393606 m!1279695))

(assert (=> b!1393606 m!1279695))

(declare-fun m!1279697 () Bool)

(assert (=> b!1393606 m!1279697))

(assert (=> b!1393606 m!1279697))

(assert (=> b!1393606 m!1279695))

(declare-fun m!1279699 () Bool)

(assert (=> b!1393606 m!1279699))

(declare-fun m!1279701 () Bool)

(assert (=> b!1393608 m!1279701))

(assert (=> b!1393610 m!1279679))

(declare-fun m!1279703 () Bool)

(assert (=> b!1393610 m!1279703))

(assert (=> b!1393610 m!1279679))

(declare-fun m!1279705 () Bool)

(assert (=> b!1393610 m!1279705))

(assert (=> b!1393610 m!1279703))

(assert (=> b!1393610 m!1279679))

(declare-fun m!1279707 () Bool)

(assert (=> b!1393610 m!1279707))

(declare-fun m!1279709 () Bool)

(assert (=> b!1393610 m!1279709))

(declare-fun m!1279711 () Bool)

(assert (=> b!1393611 m!1279711))

(push 1)

(assert (not start!119686))

(assert (not b!1393605))

(assert (not b!1393612))

(assert (not b!1393611))

(assert (not b!1393609))

(assert (not b!1393608))

(assert (not b!1393606))

(assert (not b!1393610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

