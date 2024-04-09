; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120354 () Bool)

(assert start!120354)

(declare-fun b!1400103 () Bool)

(declare-fun e!792725 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10526 0))(
  ( (MissingZero!10526 (index!44480 (_ BitVec 32))) (Found!10526 (index!44481 (_ BitVec 32))) (Intermediate!10526 (undefined!11338 Bool) (index!44482 (_ BitVec 32)) (x!126132 (_ BitVec 32))) (Undefined!10526) (MissingVacant!10526 (index!44483 (_ BitVec 32))) )
))
(declare-fun lt!615967 () SeekEntryResult!10526)

(declare-fun lt!615962 () (_ BitVec 64))

(declare-datatypes ((array!95681 0))(
  ( (array!95682 (arr!46187 (Array (_ BitVec 32) (_ BitVec 64))) (size!46738 (_ BitVec 32))) )
))
(declare-fun lt!615961 () array!95681)

(declare-fun a!2901 () array!95681)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95681 (_ BitVec 32)) SeekEntryResult!10526)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95681 (_ BitVec 32)) SeekEntryResult!10526)

(assert (=> b!1400103 (= e!792725 (= (seekEntryOrOpen!0 lt!615962 lt!615961 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126132 lt!615967) (index!44482 lt!615967) (index!44482 lt!615967) (select (arr!46187 a!2901) j!112) lt!615961 mask!2840)))))

(declare-fun b!1400104 () Bool)

(declare-fun res!938729 () Bool)

(declare-fun e!792723 () Bool)

(assert (=> b!1400104 (=> (not res!938729) (not e!792723))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400104 (= res!938729 (validKeyInArray!0 (select (arr!46187 a!2901) j!112)))))

(declare-fun b!1400105 () Bool)

(declare-fun e!792719 () Bool)

(assert (=> b!1400105 (= e!792723 (not e!792719))))

(declare-fun res!938731 () Bool)

(assert (=> b!1400105 (=> res!938731 e!792719)))

(declare-fun lt!615964 () SeekEntryResult!10526)

(get-info :version)

(assert (=> b!1400105 (= res!938731 (or (not ((_ is Intermediate!10526) lt!615964)) (undefined!11338 lt!615964)))))

(declare-fun e!792722 () Bool)

(assert (=> b!1400105 e!792722))

(declare-fun res!938732 () Bool)

(assert (=> b!1400105 (=> (not res!938732) (not e!792722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95681 (_ BitVec 32)) Bool)

(assert (=> b!1400105 (= res!938732 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47006 0))(
  ( (Unit!47007) )
))
(declare-fun lt!615966 () Unit!47006)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47006)

(assert (=> b!1400105 (= lt!615966 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615960 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95681 (_ BitVec 32)) SeekEntryResult!10526)

(assert (=> b!1400105 (= lt!615964 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615960 (select (arr!46187 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400105 (= lt!615960 (toIndex!0 (select (arr!46187 a!2901) j!112) mask!2840))))

(declare-fun b!1400106 () Bool)

(declare-fun res!938723 () Bool)

(assert (=> b!1400106 (=> (not res!938723) (not e!792723))))

(declare-datatypes ((List!32886 0))(
  ( (Nil!32883) (Cons!32882 (h!34130 (_ BitVec 64)) (t!47587 List!32886)) )
))
(declare-fun arrayNoDuplicates!0 (array!95681 (_ BitVec 32) List!32886) Bool)

(assert (=> b!1400106 (= res!938723 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32883))))

(declare-fun res!938725 () Bool)

(assert (=> start!120354 (=> (not res!938725) (not e!792723))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120354 (= res!938725 (validMask!0 mask!2840))))

(assert (=> start!120354 e!792723))

(assert (=> start!120354 true))

(declare-fun array_inv!35132 (array!95681) Bool)

(assert (=> start!120354 (array_inv!35132 a!2901)))

(declare-fun b!1400107 () Bool)

(declare-fun res!938730 () Bool)

(assert (=> b!1400107 (=> (not res!938730) (not e!792723))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400107 (= res!938730 (and (= (size!46738 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46738 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46738 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400108 () Bool)

(declare-fun e!792720 () Bool)

(assert (=> b!1400108 (= e!792719 e!792720)))

(declare-fun res!938728 () Bool)

(assert (=> b!1400108 (=> res!938728 e!792720)))

(assert (=> b!1400108 (= res!938728 (or (= lt!615964 lt!615967) (not ((_ is Intermediate!10526) lt!615967))))))

(assert (=> b!1400108 (= lt!615967 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615962 mask!2840) lt!615962 lt!615961 mask!2840))))

(assert (=> b!1400108 (= lt!615962 (select (store (arr!46187 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400108 (= lt!615961 (array!95682 (store (arr!46187 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46738 a!2901)))))

(declare-fun b!1400109 () Bool)

(declare-fun res!938727 () Bool)

(assert (=> b!1400109 (=> (not res!938727) (not e!792723))))

(assert (=> b!1400109 (= res!938727 (validKeyInArray!0 (select (arr!46187 a!2901) i!1037)))))

(declare-fun b!1400110 () Bool)

(declare-fun e!792721 () Bool)

(assert (=> b!1400110 (= e!792721 true)))

(declare-fun lt!615963 () SeekEntryResult!10526)

(assert (=> b!1400110 (= lt!615963 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615960 lt!615962 lt!615961 mask!2840))))

(declare-fun b!1400111 () Bool)

(declare-fun res!938726 () Bool)

(assert (=> b!1400111 (=> (not res!938726) (not e!792723))))

(assert (=> b!1400111 (= res!938726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400112 () Bool)

(assert (=> b!1400112 (= e!792722 (= (seekEntryOrOpen!0 (select (arr!46187 a!2901) j!112) a!2901 mask!2840) (Found!10526 j!112)))))

(declare-fun b!1400113 () Bool)

(assert (=> b!1400113 (= e!792720 e!792721)))

(declare-fun res!938724 () Bool)

(assert (=> b!1400113 (=> res!938724 e!792721)))

(assert (=> b!1400113 (= res!938724 (or (bvslt (x!126132 lt!615964) #b00000000000000000000000000000000) (bvsgt (x!126132 lt!615964) #b01111111111111111111111111111110) (bvslt (x!126132 lt!615967) #b00000000000000000000000000000000) (bvsgt (x!126132 lt!615967) #b01111111111111111111111111111110) (bvslt lt!615960 #b00000000000000000000000000000000) (bvsge lt!615960 (size!46738 a!2901)) (bvslt (index!44482 lt!615964) #b00000000000000000000000000000000) (bvsge (index!44482 lt!615964) (size!46738 a!2901)) (bvslt (index!44482 lt!615967) #b00000000000000000000000000000000) (bvsge (index!44482 lt!615967) (size!46738 a!2901)) (not (= lt!615964 (Intermediate!10526 false (index!44482 lt!615964) (x!126132 lt!615964)))) (not (= lt!615967 (Intermediate!10526 false (index!44482 lt!615967) (x!126132 lt!615967))))))))

(assert (=> b!1400113 e!792725))

(declare-fun res!938733 () Bool)

(assert (=> b!1400113 (=> (not res!938733) (not e!792725))))

(assert (=> b!1400113 (= res!938733 (and (not (undefined!11338 lt!615967)) (= (index!44482 lt!615967) i!1037) (bvslt (x!126132 lt!615967) (x!126132 lt!615964)) (= (select (store (arr!46187 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44482 lt!615967)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!615965 () Unit!47006)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47006)

(assert (=> b!1400113 (= lt!615965 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615960 (x!126132 lt!615964) (index!44482 lt!615964) (x!126132 lt!615967) (index!44482 lt!615967) (undefined!11338 lt!615967) mask!2840))))

(assert (= (and start!120354 res!938725) b!1400107))

(assert (= (and b!1400107 res!938730) b!1400109))

(assert (= (and b!1400109 res!938727) b!1400104))

(assert (= (and b!1400104 res!938729) b!1400111))

(assert (= (and b!1400111 res!938726) b!1400106))

(assert (= (and b!1400106 res!938723) b!1400105))

(assert (= (and b!1400105 res!938732) b!1400112))

(assert (= (and b!1400105 (not res!938731)) b!1400108))

(assert (= (and b!1400108 (not res!938728)) b!1400113))

(assert (= (and b!1400113 res!938733) b!1400103))

(assert (= (and b!1400113 (not res!938724)) b!1400110))

(declare-fun m!1287529 () Bool)

(assert (=> start!120354 m!1287529))

(declare-fun m!1287531 () Bool)

(assert (=> start!120354 m!1287531))

(declare-fun m!1287533 () Bool)

(assert (=> b!1400111 m!1287533))

(declare-fun m!1287535 () Bool)

(assert (=> b!1400104 m!1287535))

(assert (=> b!1400104 m!1287535))

(declare-fun m!1287537 () Bool)

(assert (=> b!1400104 m!1287537))

(declare-fun m!1287539 () Bool)

(assert (=> b!1400109 m!1287539))

(assert (=> b!1400109 m!1287539))

(declare-fun m!1287541 () Bool)

(assert (=> b!1400109 m!1287541))

(assert (=> b!1400112 m!1287535))

(assert (=> b!1400112 m!1287535))

(declare-fun m!1287543 () Bool)

(assert (=> b!1400112 m!1287543))

(declare-fun m!1287545 () Bool)

(assert (=> b!1400108 m!1287545))

(assert (=> b!1400108 m!1287545))

(declare-fun m!1287547 () Bool)

(assert (=> b!1400108 m!1287547))

(declare-fun m!1287549 () Bool)

(assert (=> b!1400108 m!1287549))

(declare-fun m!1287551 () Bool)

(assert (=> b!1400108 m!1287551))

(declare-fun m!1287553 () Bool)

(assert (=> b!1400106 m!1287553))

(declare-fun m!1287555 () Bool)

(assert (=> b!1400110 m!1287555))

(assert (=> b!1400113 m!1287549))

(declare-fun m!1287557 () Bool)

(assert (=> b!1400113 m!1287557))

(declare-fun m!1287559 () Bool)

(assert (=> b!1400113 m!1287559))

(assert (=> b!1400105 m!1287535))

(declare-fun m!1287561 () Bool)

(assert (=> b!1400105 m!1287561))

(assert (=> b!1400105 m!1287535))

(declare-fun m!1287563 () Bool)

(assert (=> b!1400105 m!1287563))

(assert (=> b!1400105 m!1287535))

(declare-fun m!1287565 () Bool)

(assert (=> b!1400105 m!1287565))

(declare-fun m!1287567 () Bool)

(assert (=> b!1400105 m!1287567))

(declare-fun m!1287569 () Bool)

(assert (=> b!1400103 m!1287569))

(assert (=> b!1400103 m!1287535))

(assert (=> b!1400103 m!1287535))

(declare-fun m!1287571 () Bool)

(assert (=> b!1400103 m!1287571))

(check-sat (not b!1400104) (not b!1400105) (not b!1400111) (not b!1400112) (not b!1400106) (not start!120354) (not b!1400110) (not b!1400108) (not b!1400113) (not b!1400109) (not b!1400103))
(check-sat)
