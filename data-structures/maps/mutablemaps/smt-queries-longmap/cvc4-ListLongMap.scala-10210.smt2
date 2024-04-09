; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120356 () Bool)

(assert start!120356)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95683 0))(
  ( (array!95684 (arr!46188 (Array (_ BitVec 32) (_ BitVec 64))) (size!46739 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95683)

(declare-fun b!1400136 () Bool)

(declare-fun e!792746 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10527 0))(
  ( (MissingZero!10527 (index!44484 (_ BitVec 32))) (Found!10527 (index!44485 (_ BitVec 32))) (Intermediate!10527 (undefined!11339 Bool) (index!44486 (_ BitVec 32)) (x!126133 (_ BitVec 32))) (Undefined!10527) (MissingVacant!10527 (index!44487 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95683 (_ BitVec 32)) SeekEntryResult!10527)

(assert (=> b!1400136 (= e!792746 (= (seekEntryOrOpen!0 (select (arr!46188 a!2901) j!112) a!2901 mask!2840) (Found!10527 j!112)))))

(declare-fun b!1400137 () Bool)

(declare-fun e!792745 () Bool)

(assert (=> b!1400137 (= e!792745 true)))

(declare-fun lt!615991 () array!95683)

(declare-fun lt!615988 () SeekEntryResult!10527)

(declare-fun lt!615986 () (_ BitVec 64))

(declare-fun lt!615989 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95683 (_ BitVec 32)) SeekEntryResult!10527)

(assert (=> b!1400137 (= lt!615988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615989 lt!615986 lt!615991 mask!2840))))

(declare-fun b!1400138 () Bool)

(declare-fun lt!615987 () SeekEntryResult!10527)

(declare-fun e!792744 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95683 (_ BitVec 32)) SeekEntryResult!10527)

(assert (=> b!1400138 (= e!792744 (= (seekEntryOrOpen!0 lt!615986 lt!615991 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126133 lt!615987) (index!44486 lt!615987) (index!44486 lt!615987) (select (arr!46188 a!2901) j!112) lt!615991 mask!2840)))))

(declare-fun b!1400139 () Bool)

(declare-fun res!938760 () Bool)

(declare-fun e!792740 () Bool)

(assert (=> b!1400139 (=> (not res!938760) (not e!792740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95683 (_ BitVec 32)) Bool)

(assert (=> b!1400139 (= res!938760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!938762 () Bool)

(assert (=> start!120356 (=> (not res!938762) (not e!792740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120356 (= res!938762 (validMask!0 mask!2840))))

(assert (=> start!120356 e!792740))

(assert (=> start!120356 true))

(declare-fun array_inv!35133 (array!95683) Bool)

(assert (=> start!120356 (array_inv!35133 a!2901)))

(declare-fun b!1400140 () Bool)

(declare-fun res!938764 () Bool)

(assert (=> b!1400140 (=> (not res!938764) (not e!792740))))

(declare-datatypes ((List!32887 0))(
  ( (Nil!32884) (Cons!32883 (h!34131 (_ BitVec 64)) (t!47588 List!32887)) )
))
(declare-fun arrayNoDuplicates!0 (array!95683 (_ BitVec 32) List!32887) Bool)

(assert (=> b!1400140 (= res!938764 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32884))))

(declare-fun b!1400141 () Bool)

(declare-fun res!938756 () Bool)

(assert (=> b!1400141 (=> (not res!938756) (not e!792740))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400141 (= res!938756 (and (= (size!46739 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46739 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46739 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400142 () Bool)

(declare-fun e!792742 () Bool)

(assert (=> b!1400142 (= e!792742 e!792745)))

(declare-fun res!938758 () Bool)

(assert (=> b!1400142 (=> res!938758 e!792745)))

(declare-fun lt!615985 () SeekEntryResult!10527)

(assert (=> b!1400142 (= res!938758 (or (bvslt (x!126133 lt!615985) #b00000000000000000000000000000000) (bvsgt (x!126133 lt!615985) #b01111111111111111111111111111110) (bvslt (x!126133 lt!615987) #b00000000000000000000000000000000) (bvsgt (x!126133 lt!615987) #b01111111111111111111111111111110) (bvslt lt!615989 #b00000000000000000000000000000000) (bvsge lt!615989 (size!46739 a!2901)) (bvslt (index!44486 lt!615985) #b00000000000000000000000000000000) (bvsge (index!44486 lt!615985) (size!46739 a!2901)) (bvslt (index!44486 lt!615987) #b00000000000000000000000000000000) (bvsge (index!44486 lt!615987) (size!46739 a!2901)) (not (= lt!615985 (Intermediate!10527 false (index!44486 lt!615985) (x!126133 lt!615985)))) (not (= lt!615987 (Intermediate!10527 false (index!44486 lt!615987) (x!126133 lt!615987))))))))

(assert (=> b!1400142 e!792744))

(declare-fun res!938761 () Bool)

(assert (=> b!1400142 (=> (not res!938761) (not e!792744))))

(assert (=> b!1400142 (= res!938761 (and (not (undefined!11339 lt!615987)) (= (index!44486 lt!615987) i!1037) (bvslt (x!126133 lt!615987) (x!126133 lt!615985)) (= (select (store (arr!46188 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44486 lt!615987)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47008 0))(
  ( (Unit!47009) )
))
(declare-fun lt!615990 () Unit!47008)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47008)

(assert (=> b!1400142 (= lt!615990 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615989 (x!126133 lt!615985) (index!44486 lt!615985) (x!126133 lt!615987) (index!44486 lt!615987) (undefined!11339 lt!615987) mask!2840))))

(declare-fun b!1400143 () Bool)

(declare-fun res!938759 () Bool)

(assert (=> b!1400143 (=> (not res!938759) (not e!792740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400143 (= res!938759 (validKeyInArray!0 (select (arr!46188 a!2901) j!112)))))

(declare-fun b!1400144 () Bool)

(declare-fun e!792741 () Bool)

(assert (=> b!1400144 (= e!792740 (not e!792741))))

(declare-fun res!938757 () Bool)

(assert (=> b!1400144 (=> res!938757 e!792741)))

(assert (=> b!1400144 (= res!938757 (or (not (is-Intermediate!10527 lt!615985)) (undefined!11339 lt!615985)))))

(assert (=> b!1400144 e!792746))

(declare-fun res!938763 () Bool)

(assert (=> b!1400144 (=> (not res!938763) (not e!792746))))

(assert (=> b!1400144 (= res!938763 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615984 () Unit!47008)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47008)

(assert (=> b!1400144 (= lt!615984 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400144 (= lt!615985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615989 (select (arr!46188 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400144 (= lt!615989 (toIndex!0 (select (arr!46188 a!2901) j!112) mask!2840))))

(declare-fun b!1400145 () Bool)

(assert (=> b!1400145 (= e!792741 e!792742)))

(declare-fun res!938765 () Bool)

(assert (=> b!1400145 (=> res!938765 e!792742)))

(assert (=> b!1400145 (= res!938765 (or (= lt!615985 lt!615987) (not (is-Intermediate!10527 lt!615987))))))

(assert (=> b!1400145 (= lt!615987 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615986 mask!2840) lt!615986 lt!615991 mask!2840))))

(assert (=> b!1400145 (= lt!615986 (select (store (arr!46188 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400145 (= lt!615991 (array!95684 (store (arr!46188 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46739 a!2901)))))

(declare-fun b!1400146 () Bool)

(declare-fun res!938766 () Bool)

(assert (=> b!1400146 (=> (not res!938766) (not e!792740))))

(assert (=> b!1400146 (= res!938766 (validKeyInArray!0 (select (arr!46188 a!2901) i!1037)))))

(assert (= (and start!120356 res!938762) b!1400141))

(assert (= (and b!1400141 res!938756) b!1400146))

(assert (= (and b!1400146 res!938766) b!1400143))

(assert (= (and b!1400143 res!938759) b!1400139))

(assert (= (and b!1400139 res!938760) b!1400140))

(assert (= (and b!1400140 res!938764) b!1400144))

(assert (= (and b!1400144 res!938763) b!1400136))

(assert (= (and b!1400144 (not res!938757)) b!1400145))

(assert (= (and b!1400145 (not res!938765)) b!1400142))

(assert (= (and b!1400142 res!938761) b!1400138))

(assert (= (and b!1400142 (not res!938758)) b!1400137))

(declare-fun m!1287573 () Bool)

(assert (=> start!120356 m!1287573))

(declare-fun m!1287575 () Bool)

(assert (=> start!120356 m!1287575))

(declare-fun m!1287577 () Bool)

(assert (=> b!1400143 m!1287577))

(assert (=> b!1400143 m!1287577))

(declare-fun m!1287579 () Bool)

(assert (=> b!1400143 m!1287579))

(declare-fun m!1287581 () Bool)

(assert (=> b!1400139 m!1287581))

(declare-fun m!1287583 () Bool)

(assert (=> b!1400146 m!1287583))

(assert (=> b!1400146 m!1287583))

(declare-fun m!1287585 () Bool)

(assert (=> b!1400146 m!1287585))

(declare-fun m!1287587 () Bool)

(assert (=> b!1400137 m!1287587))

(assert (=> b!1400144 m!1287577))

(declare-fun m!1287589 () Bool)

(assert (=> b!1400144 m!1287589))

(assert (=> b!1400144 m!1287577))

(declare-fun m!1287591 () Bool)

(assert (=> b!1400144 m!1287591))

(declare-fun m!1287593 () Bool)

(assert (=> b!1400144 m!1287593))

(assert (=> b!1400144 m!1287577))

(declare-fun m!1287595 () Bool)

(assert (=> b!1400144 m!1287595))

(assert (=> b!1400136 m!1287577))

(assert (=> b!1400136 m!1287577))

(declare-fun m!1287597 () Bool)

(assert (=> b!1400136 m!1287597))

(declare-fun m!1287599 () Bool)

(assert (=> b!1400140 m!1287599))

(declare-fun m!1287601 () Bool)

(assert (=> b!1400145 m!1287601))

(assert (=> b!1400145 m!1287601))

(declare-fun m!1287603 () Bool)

(assert (=> b!1400145 m!1287603))

(declare-fun m!1287605 () Bool)

(assert (=> b!1400145 m!1287605))

(declare-fun m!1287607 () Bool)

(assert (=> b!1400145 m!1287607))

(assert (=> b!1400142 m!1287605))

(declare-fun m!1287609 () Bool)

(assert (=> b!1400142 m!1287609))

(declare-fun m!1287611 () Bool)

(assert (=> b!1400142 m!1287611))

(declare-fun m!1287613 () Bool)

(assert (=> b!1400138 m!1287613))

(assert (=> b!1400138 m!1287577))

(assert (=> b!1400138 m!1287577))

(declare-fun m!1287615 () Bool)

(assert (=> b!1400138 m!1287615))

(push 1)

