; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120096 () Bool)

(assert start!120096)

(declare-fun b!1397630 () Bool)

(declare-fun e!791268 () Bool)

(declare-fun e!791267 () Bool)

(assert (=> b!1397630 (= e!791268 e!791267)))

(declare-fun res!936655 () Bool)

(assert (=> b!1397630 (=> res!936655 e!791267)))

(declare-datatypes ((array!95543 0))(
  ( (array!95544 (arr!46121 (Array (_ BitVec 32) (_ BitVec 64))) (size!46672 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95543)

(declare-fun lt!614358 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10460 0))(
  ( (MissingZero!10460 (index!44210 (_ BitVec 32))) (Found!10460 (index!44211 (_ BitVec 32))) (Intermediate!10460 (undefined!11272 Bool) (index!44212 (_ BitVec 32)) (x!125869 (_ BitVec 32))) (Undefined!10460) (MissingVacant!10460 (index!44213 (_ BitVec 32))) )
))
(declare-fun lt!614361 () SeekEntryResult!10460)

(declare-fun lt!614356 () SeekEntryResult!10460)

(get-info :version)

(assert (=> b!1397630 (= res!936655 (or (= lt!614361 lt!614356) (not ((_ is Intermediate!10460) lt!614356)) (bvslt (x!125869 lt!614361) #b00000000000000000000000000000000) (bvsgt (x!125869 lt!614361) #b01111111111111111111111111111110) (bvslt lt!614358 #b00000000000000000000000000000000) (bvsge lt!614358 (size!46672 a!2901)) (bvslt (index!44212 lt!614361) #b00000000000000000000000000000000) (bvsge (index!44212 lt!614361) (size!46672 a!2901)) (not (= lt!614361 (Intermediate!10460 false (index!44212 lt!614361) (x!125869 lt!614361)))) (not (= lt!614356 (Intermediate!10460 (undefined!11272 lt!614356) (index!44212 lt!614356) (x!125869 lt!614356))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!614357 () array!95543)

(declare-fun lt!614359 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95543 (_ BitVec 32)) SeekEntryResult!10460)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397630 (= lt!614356 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614359 mask!2840) lt!614359 lt!614357 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397630 (= lt!614359 (select (store (arr!46121 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397630 (= lt!614357 (array!95544 (store (arr!46121 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46672 a!2901)))))

(declare-fun b!1397631 () Bool)

(declare-fun res!936657 () Bool)

(declare-fun e!791270 () Bool)

(assert (=> b!1397631 (=> (not res!936657) (not e!791270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95543 (_ BitVec 32)) Bool)

(assert (=> b!1397631 (= res!936657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!936654 () Bool)

(assert (=> start!120096 (=> (not res!936654) (not e!791270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120096 (= res!936654 (validMask!0 mask!2840))))

(assert (=> start!120096 e!791270))

(assert (=> start!120096 true))

(declare-fun array_inv!35066 (array!95543) Bool)

(assert (=> start!120096 (array_inv!35066 a!2901)))

(declare-fun b!1397632 () Bool)

(declare-fun res!936658 () Bool)

(assert (=> b!1397632 (=> (not res!936658) (not e!791270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397632 (= res!936658 (validKeyInArray!0 (select (arr!46121 a!2901) j!112)))))

(declare-fun b!1397633 () Bool)

(declare-fun res!936653 () Bool)

(assert (=> b!1397633 (=> (not res!936653) (not e!791270))))

(assert (=> b!1397633 (= res!936653 (and (= (size!46672 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46672 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46672 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397634 () Bool)

(declare-fun res!936659 () Bool)

(assert (=> b!1397634 (=> (not res!936659) (not e!791270))))

(assert (=> b!1397634 (= res!936659 (validKeyInArray!0 (select (arr!46121 a!2901) i!1037)))))

(declare-fun b!1397635 () Bool)

(declare-fun res!936652 () Bool)

(assert (=> b!1397635 (=> (not res!936652) (not e!791270))))

(declare-datatypes ((List!32820 0))(
  ( (Nil!32817) (Cons!32816 (h!34058 (_ BitVec 64)) (t!47521 List!32820)) )
))
(declare-fun arrayNoDuplicates!0 (array!95543 (_ BitVec 32) List!32820) Bool)

(assert (=> b!1397635 (= res!936652 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32817))))

(declare-fun b!1397636 () Bool)

(assert (=> b!1397636 (= e!791270 (not e!791268))))

(declare-fun res!936660 () Bool)

(assert (=> b!1397636 (=> res!936660 e!791268)))

(assert (=> b!1397636 (= res!936660 (or (not ((_ is Intermediate!10460) lt!614361)) (undefined!11272 lt!614361)))))

(declare-fun e!791269 () Bool)

(assert (=> b!1397636 e!791269))

(declare-fun res!936656 () Bool)

(assert (=> b!1397636 (=> (not res!936656) (not e!791269))))

(assert (=> b!1397636 (= res!936656 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46874 0))(
  ( (Unit!46875) )
))
(declare-fun lt!614362 () Unit!46874)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95543 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46874)

(assert (=> b!1397636 (= lt!614362 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397636 (= lt!614361 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614358 (select (arr!46121 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397636 (= lt!614358 (toIndex!0 (select (arr!46121 a!2901) j!112) mask!2840))))

(declare-fun b!1397637 () Bool)

(assert (=> b!1397637 (= e!791267 true)))

(declare-fun lt!614360 () SeekEntryResult!10460)

(assert (=> b!1397637 (= lt!614360 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614358 lt!614359 lt!614357 mask!2840))))

(declare-fun b!1397638 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95543 (_ BitVec 32)) SeekEntryResult!10460)

(assert (=> b!1397638 (= e!791269 (= (seekEntryOrOpen!0 (select (arr!46121 a!2901) j!112) a!2901 mask!2840) (Found!10460 j!112)))))

(assert (= (and start!120096 res!936654) b!1397633))

(assert (= (and b!1397633 res!936653) b!1397634))

(assert (= (and b!1397634 res!936659) b!1397632))

(assert (= (and b!1397632 res!936658) b!1397631))

(assert (= (and b!1397631 res!936657) b!1397635))

(assert (= (and b!1397635 res!936652) b!1397636))

(assert (= (and b!1397636 res!936656) b!1397638))

(assert (= (and b!1397636 (not res!936660)) b!1397630))

(assert (= (and b!1397630 (not res!936655)) b!1397637))

(declare-fun m!1284551 () Bool)

(assert (=> b!1397630 m!1284551))

(assert (=> b!1397630 m!1284551))

(declare-fun m!1284553 () Bool)

(assert (=> b!1397630 m!1284553))

(declare-fun m!1284555 () Bool)

(assert (=> b!1397630 m!1284555))

(declare-fun m!1284557 () Bool)

(assert (=> b!1397630 m!1284557))

(declare-fun m!1284559 () Bool)

(assert (=> b!1397634 m!1284559))

(assert (=> b!1397634 m!1284559))

(declare-fun m!1284561 () Bool)

(assert (=> b!1397634 m!1284561))

(declare-fun m!1284563 () Bool)

(assert (=> b!1397636 m!1284563))

(declare-fun m!1284565 () Bool)

(assert (=> b!1397636 m!1284565))

(assert (=> b!1397636 m!1284563))

(assert (=> b!1397636 m!1284563))

(declare-fun m!1284567 () Bool)

(assert (=> b!1397636 m!1284567))

(declare-fun m!1284569 () Bool)

(assert (=> b!1397636 m!1284569))

(declare-fun m!1284571 () Bool)

(assert (=> b!1397636 m!1284571))

(assert (=> b!1397632 m!1284563))

(assert (=> b!1397632 m!1284563))

(declare-fun m!1284573 () Bool)

(assert (=> b!1397632 m!1284573))

(assert (=> b!1397638 m!1284563))

(assert (=> b!1397638 m!1284563))

(declare-fun m!1284575 () Bool)

(assert (=> b!1397638 m!1284575))

(declare-fun m!1284577 () Bool)

(assert (=> b!1397635 m!1284577))

(declare-fun m!1284579 () Bool)

(assert (=> b!1397631 m!1284579))

(declare-fun m!1284581 () Bool)

(assert (=> b!1397637 m!1284581))

(declare-fun m!1284583 () Bool)

(assert (=> start!120096 m!1284583))

(declare-fun m!1284585 () Bool)

(assert (=> start!120096 m!1284585))

(check-sat (not b!1397638) (not b!1397636) (not b!1397630) (not b!1397634) (not b!1397637) (not b!1397631) (not b!1397632) (not start!120096) (not b!1397635))
(check-sat)
