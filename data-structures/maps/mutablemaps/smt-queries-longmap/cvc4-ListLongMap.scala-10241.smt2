; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120542 () Bool)

(assert start!120542)

(declare-fun b!1403064 () Bool)

(declare-fun res!941689 () Bool)

(declare-fun e!794480 () Bool)

(assert (=> b!1403064 (=> (not res!941689) (not e!794480))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95869 0))(
  ( (array!95870 (arr!46281 (Array (_ BitVec 32) (_ BitVec 64))) (size!46832 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95869)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403064 (= res!941689 (and (= (size!46832 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46832 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46832 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403065 () Bool)

(declare-fun res!941684 () Bool)

(assert (=> b!1403065 (=> (not res!941684) (not e!794480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403065 (= res!941684 (validKeyInArray!0 (select (arr!46281 a!2901) i!1037)))))

(declare-fun b!1403066 () Bool)

(declare-fun e!794483 () Bool)

(assert (=> b!1403066 (= e!794483 true)))

(declare-datatypes ((SeekEntryResult!10620 0))(
  ( (MissingZero!10620 (index!44856 (_ BitVec 32))) (Found!10620 (index!44857 (_ BitVec 32))) (Intermediate!10620 (undefined!11432 Bool) (index!44858 (_ BitVec 32)) (x!126474 (_ BitVec 32))) (Undefined!10620) (MissingVacant!10620 (index!44859 (_ BitVec 32))) )
))
(declare-fun lt!618231 () SeekEntryResult!10620)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95869 (_ BitVec 32)) SeekEntryResult!10620)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403066 (= lt!618231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46281 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46281 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95870 (store (arr!46281 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46832 a!2901)) mask!2840))))

(declare-fun b!1403067 () Bool)

(assert (=> b!1403067 (= e!794480 (not e!794483))))

(declare-fun res!941687 () Bool)

(assert (=> b!1403067 (=> res!941687 e!794483)))

(declare-fun lt!618230 () SeekEntryResult!10620)

(assert (=> b!1403067 (= res!941687 (or (not (is-Intermediate!10620 lt!618230)) (undefined!11432 lt!618230)))))

(declare-fun e!794482 () Bool)

(assert (=> b!1403067 e!794482))

(declare-fun res!941685 () Bool)

(assert (=> b!1403067 (=> (not res!941685) (not e!794482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95869 (_ BitVec 32)) Bool)

(assert (=> b!1403067 (= res!941685 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47194 0))(
  ( (Unit!47195) )
))
(declare-fun lt!618232 () Unit!47194)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95869 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47194)

(assert (=> b!1403067 (= lt!618232 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1403067 (= lt!618230 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46281 a!2901) j!112) mask!2840) (select (arr!46281 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!941688 () Bool)

(assert (=> start!120542 (=> (not res!941688) (not e!794480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120542 (= res!941688 (validMask!0 mask!2840))))

(assert (=> start!120542 e!794480))

(assert (=> start!120542 true))

(declare-fun array_inv!35226 (array!95869) Bool)

(assert (=> start!120542 (array_inv!35226 a!2901)))

(declare-fun b!1403068 () Bool)

(declare-fun res!941690 () Bool)

(assert (=> b!1403068 (=> (not res!941690) (not e!794480))))

(assert (=> b!1403068 (= res!941690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403069 () Bool)

(declare-fun res!941686 () Bool)

(assert (=> b!1403069 (=> (not res!941686) (not e!794480))))

(assert (=> b!1403069 (= res!941686 (validKeyInArray!0 (select (arr!46281 a!2901) j!112)))))

(declare-fun b!1403070 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95869 (_ BitVec 32)) SeekEntryResult!10620)

(assert (=> b!1403070 (= e!794482 (= (seekEntryOrOpen!0 (select (arr!46281 a!2901) j!112) a!2901 mask!2840) (Found!10620 j!112)))))

(declare-fun b!1403071 () Bool)

(declare-fun res!941691 () Bool)

(assert (=> b!1403071 (=> (not res!941691) (not e!794480))))

(declare-datatypes ((List!32980 0))(
  ( (Nil!32977) (Cons!32976 (h!34224 (_ BitVec 64)) (t!47681 List!32980)) )
))
(declare-fun arrayNoDuplicates!0 (array!95869 (_ BitVec 32) List!32980) Bool)

(assert (=> b!1403071 (= res!941691 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32977))))

(assert (= (and start!120542 res!941688) b!1403064))

(assert (= (and b!1403064 res!941689) b!1403065))

(assert (= (and b!1403065 res!941684) b!1403069))

(assert (= (and b!1403069 res!941686) b!1403068))

(assert (= (and b!1403068 res!941690) b!1403071))

(assert (= (and b!1403071 res!941691) b!1403067))

(assert (= (and b!1403067 res!941685) b!1403070))

(assert (= (and b!1403067 (not res!941687)) b!1403066))

(declare-fun m!1291639 () Bool)

(assert (=> start!120542 m!1291639))

(declare-fun m!1291641 () Bool)

(assert (=> start!120542 m!1291641))

(declare-fun m!1291643 () Bool)

(assert (=> b!1403066 m!1291643))

(declare-fun m!1291645 () Bool)

(assert (=> b!1403066 m!1291645))

(assert (=> b!1403066 m!1291645))

(declare-fun m!1291647 () Bool)

(assert (=> b!1403066 m!1291647))

(assert (=> b!1403066 m!1291647))

(assert (=> b!1403066 m!1291645))

(declare-fun m!1291649 () Bool)

(assert (=> b!1403066 m!1291649))

(declare-fun m!1291651 () Bool)

(assert (=> b!1403067 m!1291651))

(declare-fun m!1291653 () Bool)

(assert (=> b!1403067 m!1291653))

(assert (=> b!1403067 m!1291651))

(declare-fun m!1291655 () Bool)

(assert (=> b!1403067 m!1291655))

(assert (=> b!1403067 m!1291653))

(assert (=> b!1403067 m!1291651))

(declare-fun m!1291657 () Bool)

(assert (=> b!1403067 m!1291657))

(declare-fun m!1291659 () Bool)

(assert (=> b!1403067 m!1291659))

(declare-fun m!1291661 () Bool)

(assert (=> b!1403071 m!1291661))

(assert (=> b!1403069 m!1291651))

(assert (=> b!1403069 m!1291651))

(declare-fun m!1291663 () Bool)

(assert (=> b!1403069 m!1291663))

(assert (=> b!1403070 m!1291651))

(assert (=> b!1403070 m!1291651))

(declare-fun m!1291665 () Bool)

(assert (=> b!1403070 m!1291665))

(declare-fun m!1291667 () Bool)

(assert (=> b!1403065 m!1291667))

(assert (=> b!1403065 m!1291667))

(declare-fun m!1291669 () Bool)

(assert (=> b!1403065 m!1291669))

(declare-fun m!1291671 () Bool)

(assert (=> b!1403068 m!1291671))

(push 1)

(assert (not b!1403068))

(assert (not b!1403066))

(assert (not b!1403071))

(assert (not b!1403067))

(assert (not b!1403069))

(assert (not start!120542))

(assert (not b!1403065))

(assert (not b!1403070))

(check-sat)

(pop 1)

