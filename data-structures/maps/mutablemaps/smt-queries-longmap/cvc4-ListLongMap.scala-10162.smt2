; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119780 () Bool)

(assert start!119780)

(declare-fun res!934345 () Bool)

(declare-fun e!789700 () Bool)

(assert (=> start!119780 (=> (not res!934345) (not e!789700))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119780 (= res!934345 (validMask!0 mask!2840))))

(assert (=> start!119780 e!789700))

(assert (=> start!119780 true))

(declare-datatypes ((array!95380 0))(
  ( (array!95381 (arr!46044 (Array (_ BitVec 32) (_ BitVec 64))) (size!46595 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95380)

(declare-fun array_inv!34989 (array!95380) Bool)

(assert (=> start!119780 (array_inv!34989 a!2901)))

(declare-fun b!1394822 () Bool)

(declare-fun e!789699 () Bool)

(assert (=> b!1394822 (= e!789700 (not e!789699))))

(declare-fun res!934343 () Bool)

(assert (=> b!1394822 (=> res!934343 e!789699)))

(declare-datatypes ((SeekEntryResult!10383 0))(
  ( (MissingZero!10383 (index!43902 (_ BitVec 32))) (Found!10383 (index!43903 (_ BitVec 32))) (Intermediate!10383 (undefined!11195 Bool) (index!43904 (_ BitVec 32)) (x!125566 (_ BitVec 32))) (Undefined!10383) (MissingVacant!10383 (index!43905 (_ BitVec 32))) )
))
(declare-fun lt!612726 () SeekEntryResult!10383)

(assert (=> b!1394822 (= res!934343 (or (not (is-Intermediate!10383 lt!612726)) (undefined!11195 lt!612726)))))

(declare-fun e!789698 () Bool)

(assert (=> b!1394822 e!789698))

(declare-fun res!934347 () Bool)

(assert (=> b!1394822 (=> (not res!934347) (not e!789698))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95380 (_ BitVec 32)) Bool)

(assert (=> b!1394822 (= res!934347 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46720 0))(
  ( (Unit!46721) )
))
(declare-fun lt!612727 () Unit!46720)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95380 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46720)

(assert (=> b!1394822 (= lt!612727 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95380 (_ BitVec 32)) SeekEntryResult!10383)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394822 (= lt!612726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46044 a!2901) j!112) mask!2840) (select (arr!46044 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1394823 () Bool)

(declare-fun res!934342 () Bool)

(assert (=> b!1394823 (=> (not res!934342) (not e!789700))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394823 (= res!934342 (validKeyInArray!0 (select (arr!46044 a!2901) i!1037)))))

(declare-fun b!1394824 () Bool)

(assert (=> b!1394824 (= e!789699 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun b!1394825 () Bool)

(declare-fun res!934340 () Bool)

(assert (=> b!1394825 (=> res!934340 e!789699)))

(assert (=> b!1394825 (= res!934340 (= lt!612726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46044 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46044 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95381 (store (arr!46044 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46595 a!2901)) mask!2840)))))

(declare-fun b!1394826 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95380 (_ BitVec 32)) SeekEntryResult!10383)

(assert (=> b!1394826 (= e!789698 (= (seekEntryOrOpen!0 (select (arr!46044 a!2901) j!112) a!2901 mask!2840) (Found!10383 j!112)))))

(declare-fun b!1394827 () Bool)

(declare-fun res!934339 () Bool)

(assert (=> b!1394827 (=> (not res!934339) (not e!789700))))

(assert (=> b!1394827 (= res!934339 (and (= (size!46595 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46595 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46595 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394828 () Bool)

(declare-fun res!934344 () Bool)

(assert (=> b!1394828 (=> (not res!934344) (not e!789700))))

(declare-datatypes ((List!32743 0))(
  ( (Nil!32740) (Cons!32739 (h!33972 (_ BitVec 64)) (t!47444 List!32743)) )
))
(declare-fun arrayNoDuplicates!0 (array!95380 (_ BitVec 32) List!32743) Bool)

(assert (=> b!1394828 (= res!934344 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32740))))

(declare-fun b!1394829 () Bool)

(declare-fun res!934341 () Bool)

(assert (=> b!1394829 (=> (not res!934341) (not e!789700))))

(assert (=> b!1394829 (= res!934341 (validKeyInArray!0 (select (arr!46044 a!2901) j!112)))))

(declare-fun b!1394830 () Bool)

(declare-fun res!934346 () Bool)

(assert (=> b!1394830 (=> (not res!934346) (not e!789700))))

(assert (=> b!1394830 (= res!934346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119780 res!934345) b!1394827))

(assert (= (and b!1394827 res!934339) b!1394823))

(assert (= (and b!1394823 res!934342) b!1394829))

(assert (= (and b!1394829 res!934341) b!1394830))

(assert (= (and b!1394830 res!934346) b!1394828))

(assert (= (and b!1394828 res!934344) b!1394822))

(assert (= (and b!1394822 res!934347) b!1394826))

(assert (= (and b!1394822 (not res!934343)) b!1394825))

(assert (= (and b!1394825 (not res!934340)) b!1394824))

(declare-fun m!1281379 () Bool)

(assert (=> b!1394829 m!1281379))

(assert (=> b!1394829 m!1281379))

(declare-fun m!1281381 () Bool)

(assert (=> b!1394829 m!1281381))

(declare-fun m!1281383 () Bool)

(assert (=> b!1394828 m!1281383))

(declare-fun m!1281385 () Bool)

(assert (=> b!1394825 m!1281385))

(declare-fun m!1281387 () Bool)

(assert (=> b!1394825 m!1281387))

(assert (=> b!1394825 m!1281387))

(declare-fun m!1281389 () Bool)

(assert (=> b!1394825 m!1281389))

(assert (=> b!1394825 m!1281389))

(assert (=> b!1394825 m!1281387))

(declare-fun m!1281391 () Bool)

(assert (=> b!1394825 m!1281391))

(declare-fun m!1281393 () Bool)

(assert (=> start!119780 m!1281393))

(declare-fun m!1281395 () Bool)

(assert (=> start!119780 m!1281395))

(declare-fun m!1281397 () Bool)

(assert (=> b!1394830 m!1281397))

(declare-fun m!1281399 () Bool)

(assert (=> b!1394823 m!1281399))

(assert (=> b!1394823 m!1281399))

(declare-fun m!1281401 () Bool)

(assert (=> b!1394823 m!1281401))

(assert (=> b!1394822 m!1281379))

(declare-fun m!1281403 () Bool)

(assert (=> b!1394822 m!1281403))

(assert (=> b!1394822 m!1281379))

(declare-fun m!1281405 () Bool)

(assert (=> b!1394822 m!1281405))

(assert (=> b!1394822 m!1281403))

(assert (=> b!1394822 m!1281379))

(declare-fun m!1281407 () Bool)

(assert (=> b!1394822 m!1281407))

(declare-fun m!1281409 () Bool)

(assert (=> b!1394822 m!1281409))

(assert (=> b!1394826 m!1281379))

(assert (=> b!1394826 m!1281379))

(declare-fun m!1281411 () Bool)

(assert (=> b!1394826 m!1281411))

(push 1)

(assert (not start!119780))

