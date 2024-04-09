; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120532 () Bool)

(assert start!120532)

(declare-fun res!941570 () Bool)

(declare-fun e!794420 () Bool)

(assert (=> start!120532 (=> (not res!941570) (not e!794420))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120532 (= res!941570 (validMask!0 mask!2840))))

(assert (=> start!120532 e!794420))

(assert (=> start!120532 true))

(declare-datatypes ((array!95859 0))(
  ( (array!95860 (arr!46276 (Array (_ BitVec 32) (_ BitVec 64))) (size!46827 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95859)

(declare-fun array_inv!35221 (array!95859) Bool)

(assert (=> start!120532 (array_inv!35221 a!2901)))

(declare-fun b!1402944 () Bool)

(declare-fun res!941567 () Bool)

(assert (=> b!1402944 (=> (not res!941567) (not e!794420))))

(declare-datatypes ((List!32975 0))(
  ( (Nil!32972) (Cons!32971 (h!34219 (_ BitVec 64)) (t!47676 List!32975)) )
))
(declare-fun arrayNoDuplicates!0 (array!95859 (_ BitVec 32) List!32975) Bool)

(assert (=> b!1402944 (= res!941567 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32972))))

(declare-fun e!794422 () Bool)

(declare-fun b!1402945 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10615 0))(
  ( (MissingZero!10615 (index!44836 (_ BitVec 32))) (Found!10615 (index!44837 (_ BitVec 32))) (Intermediate!10615 (undefined!11427 Bool) (index!44838 (_ BitVec 32)) (x!126461 (_ BitVec 32))) (Undefined!10615) (MissingVacant!10615 (index!44839 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95859 (_ BitVec 32)) SeekEntryResult!10615)

(assert (=> b!1402945 (= e!794422 (= (seekEntryOrOpen!0 (select (arr!46276 a!2901) j!112) a!2901 mask!2840) (Found!10615 j!112)))))

(declare-fun b!1402946 () Bool)

(declare-fun e!794423 () Bool)

(assert (=> b!1402946 (= e!794420 (not e!794423))))

(declare-fun res!941565 () Bool)

(assert (=> b!1402946 (=> res!941565 e!794423)))

(declare-fun lt!618185 () SeekEntryResult!10615)

(assert (=> b!1402946 (= res!941565 (or (not (is-Intermediate!10615 lt!618185)) (undefined!11427 lt!618185)))))

(assert (=> b!1402946 e!794422))

(declare-fun res!941569 () Bool)

(assert (=> b!1402946 (=> (not res!941569) (not e!794422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95859 (_ BitVec 32)) Bool)

(assert (=> b!1402946 (= res!941569 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47184 0))(
  ( (Unit!47185) )
))
(declare-fun lt!618186 () Unit!47184)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95859 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47184)

(assert (=> b!1402946 (= lt!618186 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95859 (_ BitVec 32)) SeekEntryResult!10615)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402946 (= lt!618185 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46276 a!2901) j!112) mask!2840) (select (arr!46276 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1402947 () Bool)

(declare-fun res!941568 () Bool)

(assert (=> b!1402947 (=> (not res!941568) (not e!794420))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402947 (= res!941568 (validKeyInArray!0 (select (arr!46276 a!2901) i!1037)))))

(declare-fun b!1402948 () Bool)

(declare-fun res!941566 () Bool)

(assert (=> b!1402948 (=> (not res!941566) (not e!794420))))

(assert (=> b!1402948 (= res!941566 (validKeyInArray!0 (select (arr!46276 a!2901) j!112)))))

(declare-fun b!1402949 () Bool)

(declare-fun res!941564 () Bool)

(assert (=> b!1402949 (=> (not res!941564) (not e!794420))))

(assert (=> b!1402949 (= res!941564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402950 () Bool)

(assert (=> b!1402950 (= e!794423 true)))

(declare-fun lt!618187 () SeekEntryResult!10615)

(assert (=> b!1402950 (= lt!618187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46276 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46276 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95860 (store (arr!46276 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46827 a!2901)) mask!2840))))

(declare-fun b!1402951 () Bool)

(declare-fun res!941571 () Bool)

(assert (=> b!1402951 (=> (not res!941571) (not e!794420))))

(assert (=> b!1402951 (= res!941571 (and (= (size!46827 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46827 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46827 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120532 res!941570) b!1402951))

(assert (= (and b!1402951 res!941571) b!1402947))

(assert (= (and b!1402947 res!941568) b!1402948))

(assert (= (and b!1402948 res!941566) b!1402949))

(assert (= (and b!1402949 res!941564) b!1402944))

(assert (= (and b!1402944 res!941567) b!1402946))

(assert (= (and b!1402946 res!941569) b!1402945))

(assert (= (and b!1402946 (not res!941565)) b!1402950))

(declare-fun m!1291469 () Bool)

(assert (=> b!1402949 m!1291469))

(declare-fun m!1291471 () Bool)

(assert (=> b!1402945 m!1291471))

(assert (=> b!1402945 m!1291471))

(declare-fun m!1291473 () Bool)

(assert (=> b!1402945 m!1291473))

(assert (=> b!1402948 m!1291471))

(assert (=> b!1402948 m!1291471))

(declare-fun m!1291475 () Bool)

(assert (=> b!1402948 m!1291475))

(assert (=> b!1402946 m!1291471))

(declare-fun m!1291477 () Bool)

(assert (=> b!1402946 m!1291477))

(assert (=> b!1402946 m!1291471))

(declare-fun m!1291479 () Bool)

(assert (=> b!1402946 m!1291479))

(assert (=> b!1402946 m!1291477))

(assert (=> b!1402946 m!1291471))

(declare-fun m!1291481 () Bool)

(assert (=> b!1402946 m!1291481))

(declare-fun m!1291483 () Bool)

(assert (=> b!1402946 m!1291483))

(declare-fun m!1291485 () Bool)

(assert (=> b!1402950 m!1291485))

(declare-fun m!1291487 () Bool)

(assert (=> b!1402950 m!1291487))

(assert (=> b!1402950 m!1291487))

(declare-fun m!1291489 () Bool)

(assert (=> b!1402950 m!1291489))

(assert (=> b!1402950 m!1291489))

(assert (=> b!1402950 m!1291487))

(declare-fun m!1291491 () Bool)

(assert (=> b!1402950 m!1291491))

(declare-fun m!1291493 () Bool)

(assert (=> b!1402944 m!1291493))

(declare-fun m!1291495 () Bool)

(assert (=> start!120532 m!1291495))

(declare-fun m!1291497 () Bool)

(assert (=> start!120532 m!1291497))

(declare-fun m!1291499 () Bool)

(assert (=> b!1402947 m!1291499))

(assert (=> b!1402947 m!1291499))

(declare-fun m!1291501 () Bool)

(assert (=> b!1402947 m!1291501))

(push 1)

(assert (not b!1402950))

(assert (not b!1402946))

(assert (not b!1402949))

(assert (not start!120532))

(assert (not b!1402944))

(assert (not b!1402948))

(assert (not b!1402945))

(assert (not b!1402947))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

