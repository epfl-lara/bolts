; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120850 () Bool)

(assert start!120850)

(declare-fun b!1405578 () Bool)

(declare-fun res!943906 () Bool)

(declare-fun e!795638 () Bool)

(assert (=> b!1405578 (=> (not res!943906) (not e!795638))))

(declare-datatypes ((array!96075 0))(
  ( (array!96076 (arr!46381 (Array (_ BitVec 32) (_ BitVec 64))) (size!46932 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96075)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405578 (= res!943906 (validKeyInArray!0 (select (arr!46381 a!2901) j!112)))))

(declare-fun b!1405579 () Bool)

(declare-fun res!943904 () Bool)

(assert (=> b!1405579 (=> (not res!943904) (not e!795638))))

(declare-datatypes ((List!33080 0))(
  ( (Nil!33077) (Cons!33076 (h!34330 (_ BitVec 64)) (t!47781 List!33080)) )
))
(declare-fun arrayNoDuplicates!0 (array!96075 (_ BitVec 32) List!33080) Bool)

(assert (=> b!1405579 (= res!943904 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33077))))

(declare-fun b!1405580 () Bool)

(declare-fun e!795637 () Bool)

(assert (=> b!1405580 (= e!795638 (not e!795637))))

(declare-fun res!943905 () Bool)

(assert (=> b!1405580 (=> res!943905 e!795637)))

(declare-datatypes ((SeekEntryResult!10714 0))(
  ( (MissingZero!10714 (index!45232 (_ BitVec 32))) (Found!10714 (index!45233 (_ BitVec 32))) (Intermediate!10714 (undefined!11526 Bool) (index!45234 (_ BitVec 32)) (x!126852 (_ BitVec 32))) (Undefined!10714) (MissingVacant!10714 (index!45235 (_ BitVec 32))) )
))
(declare-fun lt!619033 () SeekEntryResult!10714)

(assert (=> b!1405580 (= res!943905 (or (not (is-Intermediate!10714 lt!619033)) (undefined!11526 lt!619033)))))

(declare-fun e!795636 () Bool)

(assert (=> b!1405580 e!795636))

(declare-fun res!943910 () Bool)

(assert (=> b!1405580 (=> (not res!943910) (not e!795636))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96075 (_ BitVec 32)) Bool)

(assert (=> b!1405580 (= res!943910 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47352 0))(
  ( (Unit!47353) )
))
(declare-fun lt!619032 () Unit!47352)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47352)

(assert (=> b!1405580 (= lt!619032 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96075 (_ BitVec 32)) SeekEntryResult!10714)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405580 (= lt!619033 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46381 a!2901) j!112) mask!2840) (select (arr!46381 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405581 () Bool)

(declare-fun res!943908 () Bool)

(assert (=> b!1405581 (=> (not res!943908) (not e!795638))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405581 (= res!943908 (and (= (size!46932 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46932 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46932 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405582 () Bool)

(declare-fun res!943911 () Bool)

(assert (=> b!1405582 (=> (not res!943911) (not e!795638))))

(assert (=> b!1405582 (= res!943911 (validKeyInArray!0 (select (arr!46381 a!2901) i!1037)))))

(declare-fun b!1405583 () Bool)

(assert (=> b!1405583 (= e!795637 true)))

(declare-fun lt!619031 () (_ BitVec 32))

(assert (=> b!1405583 (= lt!619031 (toIndex!0 (select (store (arr!46381 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1405585 () Bool)

(declare-fun res!943907 () Bool)

(assert (=> b!1405585 (=> (not res!943907) (not e!795638))))

(assert (=> b!1405585 (= res!943907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405584 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96075 (_ BitVec 32)) SeekEntryResult!10714)

(assert (=> b!1405584 (= e!795636 (= (seekEntryOrOpen!0 (select (arr!46381 a!2901) j!112) a!2901 mask!2840) (Found!10714 j!112)))))

(declare-fun res!943909 () Bool)

(assert (=> start!120850 (=> (not res!943909) (not e!795638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120850 (= res!943909 (validMask!0 mask!2840))))

(assert (=> start!120850 e!795638))

(assert (=> start!120850 true))

(declare-fun array_inv!35326 (array!96075) Bool)

(assert (=> start!120850 (array_inv!35326 a!2901)))

(assert (= (and start!120850 res!943909) b!1405581))

(assert (= (and b!1405581 res!943908) b!1405582))

(assert (= (and b!1405582 res!943911) b!1405578))

(assert (= (and b!1405578 res!943906) b!1405585))

(assert (= (and b!1405585 res!943907) b!1405579))

(assert (= (and b!1405579 res!943904) b!1405580))

(assert (= (and b!1405580 res!943910) b!1405584))

(assert (= (and b!1405580 (not res!943905)) b!1405583))

(declare-fun m!1294469 () Bool)

(assert (=> b!1405584 m!1294469))

(assert (=> b!1405584 m!1294469))

(declare-fun m!1294471 () Bool)

(assert (=> b!1405584 m!1294471))

(declare-fun m!1294473 () Bool)

(assert (=> b!1405583 m!1294473))

(declare-fun m!1294475 () Bool)

(assert (=> b!1405583 m!1294475))

(assert (=> b!1405583 m!1294475))

(declare-fun m!1294477 () Bool)

(assert (=> b!1405583 m!1294477))

(declare-fun m!1294479 () Bool)

(assert (=> b!1405579 m!1294479))

(declare-fun m!1294481 () Bool)

(assert (=> b!1405582 m!1294481))

(assert (=> b!1405582 m!1294481))

(declare-fun m!1294483 () Bool)

(assert (=> b!1405582 m!1294483))

(assert (=> b!1405578 m!1294469))

(assert (=> b!1405578 m!1294469))

(declare-fun m!1294485 () Bool)

(assert (=> b!1405578 m!1294485))

(declare-fun m!1294487 () Bool)

(assert (=> start!120850 m!1294487))

(declare-fun m!1294489 () Bool)

(assert (=> start!120850 m!1294489))

(declare-fun m!1294491 () Bool)

(assert (=> b!1405585 m!1294491))

(assert (=> b!1405580 m!1294469))

(declare-fun m!1294493 () Bool)

(assert (=> b!1405580 m!1294493))

(assert (=> b!1405580 m!1294469))

(declare-fun m!1294495 () Bool)

(assert (=> b!1405580 m!1294495))

(assert (=> b!1405580 m!1294493))

(assert (=> b!1405580 m!1294469))

(declare-fun m!1294497 () Bool)

(assert (=> b!1405580 m!1294497))

(declare-fun m!1294499 () Bool)

(assert (=> b!1405580 m!1294499))

(push 1)

(assert (not b!1405582))

(assert (not b!1405578))

(assert (not start!120850))

(assert (not b!1405583))

(assert (not b!1405580))

(assert (not b!1405584))

(assert (not b!1405579))

(assert (not b!1405585))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

