; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119678 () Bool)

(assert start!119678)

(declare-fun b!1393509 () Bool)

(declare-fun res!933028 () Bool)

(declare-fun e!789077 () Bool)

(assert (=> b!1393509 (=> (not res!933028) (not e!789077))))

(declare-datatypes ((array!95278 0))(
  ( (array!95279 (arr!45993 (Array (_ BitVec 32) (_ BitVec 64))) (size!46544 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95278)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95278 (_ BitVec 32)) Bool)

(assert (=> b!1393509 (= res!933028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393510 () Bool)

(declare-fun res!933031 () Bool)

(assert (=> b!1393510 (=> (not res!933031) (not e!789077))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393510 (= res!933031 (validKeyInArray!0 (select (arr!45993 a!2901) i!1037)))))

(declare-fun b!1393512 () Bool)

(declare-fun res!933027 () Bool)

(assert (=> b!1393512 (=> (not res!933027) (not e!789077))))

(declare-datatypes ((List!32692 0))(
  ( (Nil!32689) (Cons!32688 (h!33921 (_ BitVec 64)) (t!47393 List!32692)) )
))
(declare-fun arrayNoDuplicates!0 (array!95278 (_ BitVec 32) List!32692) Bool)

(assert (=> b!1393512 (= res!933027 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32689))))

(declare-fun b!1393513 () Bool)

(declare-fun res!933029 () Bool)

(assert (=> b!1393513 (=> (not res!933029) (not e!789077))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1393513 (= res!933029 (and (= (size!46544 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46544 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46544 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393514 () Bool)

(declare-fun e!789078 () Bool)

(assert (=> b!1393514 (= e!789078 true)))

(declare-datatypes ((SeekEntryResult!10332 0))(
  ( (MissingZero!10332 (index!43698 (_ BitVec 32))) (Found!10332 (index!43699 (_ BitVec 32))) (Intermediate!10332 (undefined!11144 Bool) (index!43700 (_ BitVec 32)) (x!125379 (_ BitVec 32))) (Undefined!10332) (MissingVacant!10332 (index!43701 (_ BitVec 32))) )
))
(declare-fun lt!611989 () SeekEntryResult!10332)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95278 (_ BitVec 32)) SeekEntryResult!10332)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393514 (= lt!611989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45993 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45993 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95279 (store (arr!45993 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46544 a!2901)) mask!2840))))

(declare-fun b!1393515 () Bool)

(declare-fun res!933026 () Bool)

(assert (=> b!1393515 (=> (not res!933026) (not e!789077))))

(assert (=> b!1393515 (= res!933026 (validKeyInArray!0 (select (arr!45993 a!2901) j!112)))))

(declare-fun e!789079 () Bool)

(declare-fun b!1393516 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95278 (_ BitVec 32)) SeekEntryResult!10332)

(assert (=> b!1393516 (= e!789079 (= (seekEntryOrOpen!0 (select (arr!45993 a!2901) j!112) a!2901 mask!2840) (Found!10332 j!112)))))

(declare-fun b!1393511 () Bool)

(assert (=> b!1393511 (= e!789077 (not e!789078))))

(declare-fun res!933032 () Bool)

(assert (=> b!1393511 (=> res!933032 e!789078)))

(declare-fun lt!611988 () SeekEntryResult!10332)

(assert (=> b!1393511 (= res!933032 (or (not (is-Intermediate!10332 lt!611988)) (undefined!11144 lt!611988)))))

(assert (=> b!1393511 e!789079))

(declare-fun res!933033 () Bool)

(assert (=> b!1393511 (=> (not res!933033) (not e!789079))))

(assert (=> b!1393511 (= res!933033 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46618 0))(
  ( (Unit!46619) )
))
(declare-fun lt!611987 () Unit!46618)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95278 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46618)

(assert (=> b!1393511 (= lt!611987 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393511 (= lt!611988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45993 a!2901) j!112) mask!2840) (select (arr!45993 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!933030 () Bool)

(assert (=> start!119678 (=> (not res!933030) (not e!789077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119678 (= res!933030 (validMask!0 mask!2840))))

(assert (=> start!119678 e!789077))

(assert (=> start!119678 true))

(declare-fun array_inv!34938 (array!95278) Bool)

(assert (=> start!119678 (array_inv!34938 a!2901)))

(assert (= (and start!119678 res!933030) b!1393513))

(assert (= (and b!1393513 res!933029) b!1393510))

(assert (= (and b!1393510 res!933031) b!1393515))

(assert (= (and b!1393515 res!933026) b!1393509))

(assert (= (and b!1393509 res!933028) b!1393512))

(assert (= (and b!1393512 res!933027) b!1393511))

(assert (= (and b!1393511 res!933033) b!1393516))

(assert (= (and b!1393511 (not res!933032)) b!1393514))

(declare-fun m!1279543 () Bool)

(assert (=> b!1393509 m!1279543))

(declare-fun m!1279545 () Bool)

(assert (=> b!1393510 m!1279545))

(assert (=> b!1393510 m!1279545))

(declare-fun m!1279547 () Bool)

(assert (=> b!1393510 m!1279547))

(declare-fun m!1279549 () Bool)

(assert (=> b!1393515 m!1279549))

(assert (=> b!1393515 m!1279549))

(declare-fun m!1279551 () Bool)

(assert (=> b!1393515 m!1279551))

(assert (=> b!1393516 m!1279549))

(assert (=> b!1393516 m!1279549))

(declare-fun m!1279553 () Bool)

(assert (=> b!1393516 m!1279553))

(assert (=> b!1393511 m!1279549))

(declare-fun m!1279555 () Bool)

(assert (=> b!1393511 m!1279555))

(assert (=> b!1393511 m!1279549))

(declare-fun m!1279557 () Bool)

(assert (=> b!1393511 m!1279557))

(assert (=> b!1393511 m!1279555))

(assert (=> b!1393511 m!1279549))

(declare-fun m!1279559 () Bool)

(assert (=> b!1393511 m!1279559))

(declare-fun m!1279561 () Bool)

(assert (=> b!1393511 m!1279561))

(declare-fun m!1279563 () Bool)

(assert (=> b!1393512 m!1279563))

(declare-fun m!1279565 () Bool)

(assert (=> start!119678 m!1279565))

(declare-fun m!1279567 () Bool)

(assert (=> start!119678 m!1279567))

(declare-fun m!1279569 () Bool)

(assert (=> b!1393514 m!1279569))

(declare-fun m!1279571 () Bool)

(assert (=> b!1393514 m!1279571))

(assert (=> b!1393514 m!1279571))

(declare-fun m!1279573 () Bool)

(assert (=> b!1393514 m!1279573))

(assert (=> b!1393514 m!1279573))

(assert (=> b!1393514 m!1279571))

(declare-fun m!1279575 () Bool)

(assert (=> b!1393514 m!1279575))

(push 1)

(assert (not start!119678))

(assert (not b!1393516))

(assert (not b!1393512))

(assert (not b!1393511))

(assert (not b!1393510))

(assert (not b!1393515))

(assert (not b!1393514))

(assert (not b!1393509))

(check-sat)

(pop 1)

