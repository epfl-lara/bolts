; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119674 () Bool)

(assert start!119674)

(declare-fun b!1393461 () Bool)

(declare-fun res!932981 () Bool)

(declare-fun e!789055 () Bool)

(assert (=> b!1393461 (=> (not res!932981) (not e!789055))))

(declare-datatypes ((array!95274 0))(
  ( (array!95275 (arr!45991 (Array (_ BitVec 32) (_ BitVec 64))) (size!46542 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95274)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95274 (_ BitVec 32)) Bool)

(assert (=> b!1393461 (= res!932981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!932980 () Bool)

(assert (=> start!119674 (=> (not res!932980) (not e!789055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119674 (= res!932980 (validMask!0 mask!2840))))

(assert (=> start!119674 e!789055))

(assert (=> start!119674 true))

(declare-fun array_inv!34936 (array!95274) Bool)

(assert (=> start!119674 (array_inv!34936 a!2901)))

(declare-fun b!1393462 () Bool)

(declare-fun e!789053 () Bool)

(assert (=> b!1393462 (= e!789053 true)))

(declare-datatypes ((SeekEntryResult!10330 0))(
  ( (MissingZero!10330 (index!43690 (_ BitVec 32))) (Found!10330 (index!43691 (_ BitVec 32))) (Intermediate!10330 (undefined!11142 Bool) (index!43692 (_ BitVec 32)) (x!125377 (_ BitVec 32))) (Undefined!10330) (MissingVacant!10330 (index!43693 (_ BitVec 32))) )
))
(declare-fun lt!611970 () SeekEntryResult!10330)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95274 (_ BitVec 32)) SeekEntryResult!10330)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393462 (= lt!611970 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45991 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45991 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95275 (store (arr!45991 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46542 a!2901)) mask!2840))))

(declare-fun b!1393463 () Bool)

(declare-fun res!932985 () Bool)

(assert (=> b!1393463 (=> (not res!932985) (not e!789055))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393463 (= res!932985 (validKeyInArray!0 (select (arr!45991 a!2901) j!112)))))

(declare-fun b!1393464 () Bool)

(declare-fun res!932979 () Bool)

(assert (=> b!1393464 (=> (not res!932979) (not e!789055))))

(assert (=> b!1393464 (= res!932979 (validKeyInArray!0 (select (arr!45991 a!2901) i!1037)))))

(declare-fun b!1393465 () Bool)

(declare-fun e!789054 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95274 (_ BitVec 32)) SeekEntryResult!10330)

(assert (=> b!1393465 (= e!789054 (= (seekEntryOrOpen!0 (select (arr!45991 a!2901) j!112) a!2901 mask!2840) (Found!10330 j!112)))))

(declare-fun b!1393466 () Bool)

(assert (=> b!1393466 (= e!789055 (not e!789053))))

(declare-fun res!932984 () Bool)

(assert (=> b!1393466 (=> res!932984 e!789053)))

(declare-fun lt!611969 () SeekEntryResult!10330)

(assert (=> b!1393466 (= res!932984 (or (not (is-Intermediate!10330 lt!611969)) (undefined!11142 lt!611969)))))

(assert (=> b!1393466 e!789054))

(declare-fun res!932982 () Bool)

(assert (=> b!1393466 (=> (not res!932982) (not e!789054))))

(assert (=> b!1393466 (= res!932982 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46614 0))(
  ( (Unit!46615) )
))
(declare-fun lt!611971 () Unit!46614)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95274 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46614)

(assert (=> b!1393466 (= lt!611971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393466 (= lt!611969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45991 a!2901) j!112) mask!2840) (select (arr!45991 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393467 () Bool)

(declare-fun res!932983 () Bool)

(assert (=> b!1393467 (=> (not res!932983) (not e!789055))))

(assert (=> b!1393467 (= res!932983 (and (= (size!46542 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46542 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46542 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393468 () Bool)

(declare-fun res!932978 () Bool)

(assert (=> b!1393468 (=> (not res!932978) (not e!789055))))

(declare-datatypes ((List!32690 0))(
  ( (Nil!32687) (Cons!32686 (h!33919 (_ BitVec 64)) (t!47391 List!32690)) )
))
(declare-fun arrayNoDuplicates!0 (array!95274 (_ BitVec 32) List!32690) Bool)

(assert (=> b!1393468 (= res!932978 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32687))))

(assert (= (and start!119674 res!932980) b!1393467))

(assert (= (and b!1393467 res!932983) b!1393464))

(assert (= (and b!1393464 res!932979) b!1393463))

(assert (= (and b!1393463 res!932985) b!1393461))

(assert (= (and b!1393461 res!932981) b!1393468))

(assert (= (and b!1393468 res!932978) b!1393466))

(assert (= (and b!1393466 res!932982) b!1393465))

(assert (= (and b!1393466 (not res!932984)) b!1393462))

(declare-fun m!1279475 () Bool)

(assert (=> start!119674 m!1279475))

(declare-fun m!1279477 () Bool)

(assert (=> start!119674 m!1279477))

(declare-fun m!1279479 () Bool)

(assert (=> b!1393464 m!1279479))

(assert (=> b!1393464 m!1279479))

(declare-fun m!1279481 () Bool)

(assert (=> b!1393464 m!1279481))

(declare-fun m!1279483 () Bool)

(assert (=> b!1393463 m!1279483))

(assert (=> b!1393463 m!1279483))

(declare-fun m!1279485 () Bool)

(assert (=> b!1393463 m!1279485))

(declare-fun m!1279487 () Bool)

(assert (=> b!1393468 m!1279487))

(declare-fun m!1279489 () Bool)

(assert (=> b!1393462 m!1279489))

(declare-fun m!1279491 () Bool)

(assert (=> b!1393462 m!1279491))

(assert (=> b!1393462 m!1279491))

(declare-fun m!1279493 () Bool)

(assert (=> b!1393462 m!1279493))

(assert (=> b!1393462 m!1279493))

(assert (=> b!1393462 m!1279491))

(declare-fun m!1279495 () Bool)

(assert (=> b!1393462 m!1279495))

(assert (=> b!1393465 m!1279483))

(assert (=> b!1393465 m!1279483))

(declare-fun m!1279497 () Bool)

(assert (=> b!1393465 m!1279497))

(assert (=> b!1393466 m!1279483))

(declare-fun m!1279499 () Bool)

(assert (=> b!1393466 m!1279499))

(assert (=> b!1393466 m!1279483))

(declare-fun m!1279501 () Bool)

(assert (=> b!1393466 m!1279501))

(assert (=> b!1393466 m!1279499))

(assert (=> b!1393466 m!1279483))

(declare-fun m!1279503 () Bool)

(assert (=> b!1393466 m!1279503))

(declare-fun m!1279505 () Bool)

(assert (=> b!1393466 m!1279505))

(declare-fun m!1279507 () Bool)

(assert (=> b!1393461 m!1279507))

(push 1)

(assert (not b!1393466))

(assert (not b!1393461))

(assert (not b!1393464))

(assert (not b!1393465))

(assert (not b!1393468))

(assert (not start!119674))

(assert (not b!1393463))

(assert (not b!1393462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

