; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122002 () Bool)

(assert start!122002)

(declare-fun b!1415308 () Bool)

(declare-fun res!951462 () Bool)

(declare-fun e!801051 () Bool)

(assert (=> b!1415308 (=> (not res!951462) (not e!801051))))

(declare-datatypes ((array!96606 0))(
  ( (array!96607 (arr!46630 (Array (_ BitVec 32) (_ BitVec 64))) (size!47181 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96606)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96606 (_ BitVec 32)) Bool)

(assert (=> b!1415308 (= res!951462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415309 () Bool)

(declare-fun res!951460 () Bool)

(assert (=> b!1415309 (=> (not res!951460) (not e!801051))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415309 (= res!951460 (validKeyInArray!0 (select (arr!46630 a!2901) j!112)))))

(declare-fun b!1415310 () Bool)

(declare-fun lt!624055 () (_ BitVec 64))

(declare-fun lt!624053 () array!96606)

(declare-datatypes ((SeekEntryResult!10963 0))(
  ( (MissingZero!10963 (index!46243 (_ BitVec 32))) (Found!10963 (index!46244 (_ BitVec 32))) (Intermediate!10963 (undefined!11775 Bool) (index!46245 (_ BitVec 32)) (x!127861 (_ BitVec 32))) (Undefined!10963) (MissingVacant!10963 (index!46246 (_ BitVec 32))) )
))
(declare-fun lt!624050 () SeekEntryResult!10963)

(declare-fun e!801052 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96606 (_ BitVec 32)) SeekEntryResult!10963)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96606 (_ BitVec 32)) SeekEntryResult!10963)

(assert (=> b!1415310 (= e!801052 (= (seekEntryOrOpen!0 lt!624055 lt!624053 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127861 lt!624050) (index!46245 lt!624050) (index!46245 lt!624050) (select (arr!46630 a!2901) j!112) lt!624053 mask!2840)))))

(declare-fun b!1415311 () Bool)

(declare-fun res!951467 () Bool)

(assert (=> b!1415311 (=> (not res!951467) (not e!801051))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415311 (= res!951467 (validKeyInArray!0 (select (arr!46630 a!2901) i!1037)))))

(declare-fun b!1415312 () Bool)

(declare-fun e!801055 () Bool)

(assert (=> b!1415312 (= e!801055 (= (seekEntryOrOpen!0 (select (arr!46630 a!2901) j!112) a!2901 mask!2840) (Found!10963 j!112)))))

(declare-fun b!1415313 () Bool)

(declare-fun res!951461 () Bool)

(assert (=> b!1415313 (=> (not res!951461) (not e!801051))))

(assert (=> b!1415313 (= res!951461 (and (= (size!47181 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47181 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47181 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!951466 () Bool)

(assert (=> start!122002 (=> (not res!951466) (not e!801051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122002 (= res!951466 (validMask!0 mask!2840))))

(assert (=> start!122002 e!801051))

(assert (=> start!122002 true))

(declare-fun array_inv!35575 (array!96606) Bool)

(assert (=> start!122002 (array_inv!35575 a!2901)))

(declare-fun b!1415314 () Bool)

(declare-fun e!801054 () Bool)

(assert (=> b!1415314 (= e!801051 (not e!801054))))

(declare-fun res!951468 () Bool)

(assert (=> b!1415314 (=> res!951468 e!801054)))

(declare-fun lt!624052 () SeekEntryResult!10963)

(assert (=> b!1415314 (= res!951468 (or (not (is-Intermediate!10963 lt!624052)) (undefined!11775 lt!624052)))))

(assert (=> b!1415314 e!801055))

(declare-fun res!951459 () Bool)

(assert (=> b!1415314 (=> (not res!951459) (not e!801055))))

(assert (=> b!1415314 (= res!951459 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47850 0))(
  ( (Unit!47851) )
))
(declare-fun lt!624051 () Unit!47850)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96606 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47850)

(assert (=> b!1415314 (= lt!624051 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!624049 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96606 (_ BitVec 32)) SeekEntryResult!10963)

(assert (=> b!1415314 (= lt!624052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624049 (select (arr!46630 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415314 (= lt!624049 (toIndex!0 (select (arr!46630 a!2901) j!112) mask!2840))))

(declare-fun b!1415315 () Bool)

(declare-fun res!951465 () Bool)

(assert (=> b!1415315 (=> (not res!951465) (not e!801051))))

(declare-datatypes ((List!33329 0))(
  ( (Nil!33326) (Cons!33325 (h!34612 (_ BitVec 64)) (t!48030 List!33329)) )
))
(declare-fun arrayNoDuplicates!0 (array!96606 (_ BitVec 32) List!33329) Bool)

(assert (=> b!1415315 (= res!951465 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33326))))

(declare-fun e!801053 () Bool)

(declare-fun b!1415316 () Bool)

(assert (=> b!1415316 (= e!801053 (or (bvslt (x!127861 lt!624052) #b00000000000000000000000000000000) (bvsgt (x!127861 lt!624052) #b01111111111111111111111111111110) (bvslt (x!127861 lt!624050) #b00000000000000000000000000000000) (bvsgt (x!127861 lt!624050) #b01111111111111111111111111111110) (bvslt lt!624049 #b00000000000000000000000000000000) (bvsge lt!624049 (size!47181 a!2901)) (bvslt (index!46245 lt!624052) #b00000000000000000000000000000000) (bvsge (index!46245 lt!624052) (size!47181 a!2901)) (bvslt (index!46245 lt!624050) #b00000000000000000000000000000000) (bvsge (index!46245 lt!624050) (size!47181 a!2901)) (= lt!624052 (Intermediate!10963 false (index!46245 lt!624052) (x!127861 lt!624052)))))))

(assert (=> b!1415316 e!801052))

(declare-fun res!951463 () Bool)

(assert (=> b!1415316 (=> (not res!951463) (not e!801052))))

(assert (=> b!1415316 (= res!951463 (and (not (undefined!11775 lt!624050)) (= (index!46245 lt!624050) i!1037) (bvslt (x!127861 lt!624050) (x!127861 lt!624052)) (= (select (store (arr!46630 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46245 lt!624050)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!624054 () Unit!47850)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96606 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47850)

(assert (=> b!1415316 (= lt!624054 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624049 (x!127861 lt!624052) (index!46245 lt!624052) (x!127861 lt!624050) (index!46245 lt!624050) (undefined!11775 lt!624050) mask!2840))))

(declare-fun b!1415317 () Bool)

(assert (=> b!1415317 (= e!801054 e!801053)))

(declare-fun res!951464 () Bool)

(assert (=> b!1415317 (=> res!951464 e!801053)))

(assert (=> b!1415317 (= res!951464 (or (= lt!624052 lt!624050) (not (is-Intermediate!10963 lt!624050))))))

(assert (=> b!1415317 (= lt!624050 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624055 mask!2840) lt!624055 lt!624053 mask!2840))))

(assert (=> b!1415317 (= lt!624055 (select (store (arr!46630 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415317 (= lt!624053 (array!96607 (store (arr!46630 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47181 a!2901)))))

(assert (= (and start!122002 res!951466) b!1415313))

(assert (= (and b!1415313 res!951461) b!1415311))

(assert (= (and b!1415311 res!951467) b!1415309))

(assert (= (and b!1415309 res!951460) b!1415308))

(assert (= (and b!1415308 res!951462) b!1415315))

(assert (= (and b!1415315 res!951465) b!1415314))

(assert (= (and b!1415314 res!951459) b!1415312))

(assert (= (and b!1415314 (not res!951468)) b!1415317))

(assert (= (and b!1415317 (not res!951464)) b!1415316))

(assert (= (and b!1415316 res!951463) b!1415310))

(declare-fun m!1305629 () Bool)

(assert (=> b!1415308 m!1305629))

(declare-fun m!1305631 () Bool)

(assert (=> b!1415314 m!1305631))

(declare-fun m!1305633 () Bool)

(assert (=> b!1415314 m!1305633))

(declare-fun m!1305635 () Bool)

(assert (=> b!1415314 m!1305635))

(declare-fun m!1305637 () Bool)

(assert (=> b!1415314 m!1305637))

(assert (=> b!1415314 m!1305631))

(declare-fun m!1305639 () Bool)

(assert (=> b!1415314 m!1305639))

(assert (=> b!1415314 m!1305631))

(assert (=> b!1415312 m!1305631))

(assert (=> b!1415312 m!1305631))

(declare-fun m!1305641 () Bool)

(assert (=> b!1415312 m!1305641))

(assert (=> b!1415309 m!1305631))

(assert (=> b!1415309 m!1305631))

(declare-fun m!1305643 () Bool)

(assert (=> b!1415309 m!1305643))

(declare-fun m!1305645 () Bool)

(assert (=> b!1415310 m!1305645))

(assert (=> b!1415310 m!1305631))

(assert (=> b!1415310 m!1305631))

(declare-fun m!1305647 () Bool)

(assert (=> b!1415310 m!1305647))

(declare-fun m!1305649 () Bool)

(assert (=> b!1415315 m!1305649))

(declare-fun m!1305651 () Bool)

(assert (=> start!122002 m!1305651))

(declare-fun m!1305653 () Bool)

(assert (=> start!122002 m!1305653))

(declare-fun m!1305655 () Bool)

(assert (=> b!1415316 m!1305655))

(declare-fun m!1305657 () Bool)

(assert (=> b!1415316 m!1305657))

(declare-fun m!1305659 () Bool)

(assert (=> b!1415316 m!1305659))

(declare-fun m!1305661 () Bool)

(assert (=> b!1415311 m!1305661))

(assert (=> b!1415311 m!1305661))

(declare-fun m!1305663 () Bool)

(assert (=> b!1415311 m!1305663))

(declare-fun m!1305665 () Bool)

(assert (=> b!1415317 m!1305665))

(assert (=> b!1415317 m!1305665))

(declare-fun m!1305667 () Bool)

(assert (=> b!1415317 m!1305667))

(assert (=> b!1415317 m!1305655))

(declare-fun m!1305669 () Bool)

(assert (=> b!1415317 m!1305669))

(push 1)

(assert (not b!1415311))

(assert (not b!1415312))

(assert (not b!1415309))

(assert (not b!1415317))

(assert (not start!122002))

(assert (not b!1415315))

(assert (not b!1415316))

(assert (not b!1415314))

(assert (not b!1415308))

(assert (not b!1415310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

