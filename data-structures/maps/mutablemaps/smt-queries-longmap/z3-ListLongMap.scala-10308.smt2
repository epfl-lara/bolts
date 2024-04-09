; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121212 () Bool)

(assert start!121212)

(declare-fun b!1408824 () Bool)

(declare-fun res!946658 () Bool)

(declare-fun e!797314 () Bool)

(assert (=> b!1408824 (=> (not res!946658) (not e!797314))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96284 0))(
  ( (array!96285 (arr!46481 (Array (_ BitVec 32) (_ BitVec 64))) (size!47032 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96284)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408824 (= res!946658 (and (= (size!47032 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47032 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47032 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408825 () Bool)

(declare-fun res!946656 () Bool)

(assert (=> b!1408825 (=> (not res!946656) (not e!797314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408825 (= res!946656 (validKeyInArray!0 (select (arr!46481 a!2901) j!112)))))

(declare-fun res!946661 () Bool)

(assert (=> start!121212 (=> (not res!946661) (not e!797314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121212 (= res!946661 (validMask!0 mask!2840))))

(assert (=> start!121212 e!797314))

(assert (=> start!121212 true))

(declare-fun array_inv!35426 (array!96284) Bool)

(assert (=> start!121212 (array_inv!35426 a!2901)))

(declare-fun b!1408826 () Bool)

(declare-fun e!797312 () Bool)

(assert (=> b!1408826 (= e!797312 true)))

(declare-datatypes ((SeekEntryResult!10814 0))(
  ( (MissingZero!10814 (index!45632 (_ BitVec 32))) (Found!10814 (index!45633 (_ BitVec 32))) (Intermediate!10814 (undefined!11626 Bool) (index!45634 (_ BitVec 32)) (x!127234 (_ BitVec 32))) (Undefined!10814) (MissingVacant!10814 (index!45635 (_ BitVec 32))) )
))
(declare-fun lt!620462 () SeekEntryResult!10814)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96284 (_ BitVec 32)) SeekEntryResult!10814)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408826 (= lt!620462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46481 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46481 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96285 (store (arr!46481 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47032 a!2901)) mask!2840))))

(declare-fun b!1408827 () Bool)

(assert (=> b!1408827 (= e!797314 (not e!797312))))

(declare-fun res!946662 () Bool)

(assert (=> b!1408827 (=> res!946662 e!797312)))

(declare-fun lt!620464 () SeekEntryResult!10814)

(get-info :version)

(assert (=> b!1408827 (= res!946662 (or (not ((_ is Intermediate!10814) lt!620464)) (undefined!11626 lt!620464)))))

(declare-fun e!797315 () Bool)

(assert (=> b!1408827 e!797315))

(declare-fun res!946660 () Bool)

(assert (=> b!1408827 (=> (not res!946660) (not e!797315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96284 (_ BitVec 32)) Bool)

(assert (=> b!1408827 (= res!946660 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47552 0))(
  ( (Unit!47553) )
))
(declare-fun lt!620463 () Unit!47552)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96284 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47552)

(assert (=> b!1408827 (= lt!620463 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408827 (= lt!620464 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46481 a!2901) j!112) mask!2840) (select (arr!46481 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408828 () Bool)

(declare-fun res!946657 () Bool)

(assert (=> b!1408828 (=> (not res!946657) (not e!797314))))

(declare-datatypes ((List!33180 0))(
  ( (Nil!33177) (Cons!33176 (h!34439 (_ BitVec 64)) (t!47881 List!33180)) )
))
(declare-fun arrayNoDuplicates!0 (array!96284 (_ BitVec 32) List!33180) Bool)

(assert (=> b!1408828 (= res!946657 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33177))))

(declare-fun b!1408829 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96284 (_ BitVec 32)) SeekEntryResult!10814)

(assert (=> b!1408829 (= e!797315 (= (seekEntryOrOpen!0 (select (arr!46481 a!2901) j!112) a!2901 mask!2840) (Found!10814 j!112)))))

(declare-fun b!1408830 () Bool)

(declare-fun res!946659 () Bool)

(assert (=> b!1408830 (=> (not res!946659) (not e!797314))))

(assert (=> b!1408830 (= res!946659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408831 () Bool)

(declare-fun res!946655 () Bool)

(assert (=> b!1408831 (=> (not res!946655) (not e!797314))))

(assert (=> b!1408831 (= res!946655 (validKeyInArray!0 (select (arr!46481 a!2901) i!1037)))))

(assert (= (and start!121212 res!946661) b!1408824))

(assert (= (and b!1408824 res!946658) b!1408831))

(assert (= (and b!1408831 res!946655) b!1408825))

(assert (= (and b!1408825 res!946656) b!1408830))

(assert (= (and b!1408830 res!946659) b!1408828))

(assert (= (and b!1408828 res!946657) b!1408827))

(assert (= (and b!1408827 res!946660) b!1408829))

(assert (= (and b!1408827 (not res!946662)) b!1408826))

(declare-fun m!1298379 () Bool)

(assert (=> b!1408826 m!1298379))

(declare-fun m!1298381 () Bool)

(assert (=> b!1408826 m!1298381))

(assert (=> b!1408826 m!1298381))

(declare-fun m!1298383 () Bool)

(assert (=> b!1408826 m!1298383))

(assert (=> b!1408826 m!1298383))

(assert (=> b!1408826 m!1298381))

(declare-fun m!1298385 () Bool)

(assert (=> b!1408826 m!1298385))

(declare-fun m!1298387 () Bool)

(assert (=> b!1408829 m!1298387))

(assert (=> b!1408829 m!1298387))

(declare-fun m!1298389 () Bool)

(assert (=> b!1408829 m!1298389))

(declare-fun m!1298391 () Bool)

(assert (=> b!1408830 m!1298391))

(declare-fun m!1298393 () Bool)

(assert (=> start!121212 m!1298393))

(declare-fun m!1298395 () Bool)

(assert (=> start!121212 m!1298395))

(assert (=> b!1408825 m!1298387))

(assert (=> b!1408825 m!1298387))

(declare-fun m!1298397 () Bool)

(assert (=> b!1408825 m!1298397))

(assert (=> b!1408827 m!1298387))

(declare-fun m!1298399 () Bool)

(assert (=> b!1408827 m!1298399))

(assert (=> b!1408827 m!1298387))

(declare-fun m!1298401 () Bool)

(assert (=> b!1408827 m!1298401))

(assert (=> b!1408827 m!1298399))

(assert (=> b!1408827 m!1298387))

(declare-fun m!1298403 () Bool)

(assert (=> b!1408827 m!1298403))

(declare-fun m!1298405 () Bool)

(assert (=> b!1408827 m!1298405))

(declare-fun m!1298407 () Bool)

(assert (=> b!1408828 m!1298407))

(declare-fun m!1298409 () Bool)

(assert (=> b!1408831 m!1298409))

(assert (=> b!1408831 m!1298409))

(declare-fun m!1298411 () Bool)

(assert (=> b!1408831 m!1298411))

(check-sat (not b!1408827) (not b!1408829) (not b!1408830) (not b!1408831) (not b!1408825) (not b!1408826) (not b!1408828) (not start!121212))
