; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120500 () Bool)

(assert start!120500)

(declare-fun b!1402477 () Bool)

(declare-fun e!794184 () Bool)

(declare-fun e!794186 () Bool)

(assert (=> b!1402477 (= e!794184 e!794186)))

(declare-fun res!941097 () Bool)

(assert (=> b!1402477 (=> res!941097 e!794186)))

(declare-datatypes ((SeekEntryResult!10599 0))(
  ( (MissingZero!10599 (index!44772 (_ BitVec 32))) (Found!10599 (index!44773 (_ BitVec 32))) (Intermediate!10599 (undefined!11411 Bool) (index!44774 (_ BitVec 32)) (x!126397 (_ BitVec 32))) (Undefined!10599) (MissingVacant!10599 (index!44775 (_ BitVec 32))) )
))
(declare-fun lt!617787 () SeekEntryResult!10599)

(declare-datatypes ((array!95827 0))(
  ( (array!95828 (arr!46260 (Array (_ BitVec 32) (_ BitVec 64))) (size!46811 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95827)

(declare-fun lt!617784 () (_ BitVec 32))

(declare-fun lt!617786 () SeekEntryResult!10599)

(assert (=> b!1402477 (= res!941097 (or (bvslt (x!126397 lt!617787) #b00000000000000000000000000000000) (bvsgt (x!126397 lt!617787) #b01111111111111111111111111111110) (bvslt (x!126397 lt!617786) #b00000000000000000000000000000000) (bvsgt (x!126397 lt!617786) #b01111111111111111111111111111110) (bvslt lt!617784 #b00000000000000000000000000000000) (bvsge lt!617784 (size!46811 a!2901)) (bvslt (index!44774 lt!617787) #b00000000000000000000000000000000) (bvsge (index!44774 lt!617787) (size!46811 a!2901)) (bvslt (index!44774 lt!617786) #b00000000000000000000000000000000) (bvsge (index!44774 lt!617786) (size!46811 a!2901)) (not (= lt!617787 (Intermediate!10599 false (index!44774 lt!617787) (x!126397 lt!617787)))) (not (= lt!617786 (Intermediate!10599 false (index!44774 lt!617786) (x!126397 lt!617786))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!617790 () array!95827)

(declare-fun lt!617782 () SeekEntryResult!10599)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95827 (_ BitVec 32)) SeekEntryResult!10599)

(assert (=> b!1402477 (= lt!617782 (seekKeyOrZeroReturnVacant!0 (x!126397 lt!617786) (index!44774 lt!617786) (index!44774 lt!617786) (select (arr!46260 a!2901) j!112) lt!617790 mask!2840))))

(declare-fun lt!617785 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95827 (_ BitVec 32)) SeekEntryResult!10599)

(assert (=> b!1402477 (= lt!617782 (seekEntryOrOpen!0 lt!617785 lt!617790 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402477 (and (not (undefined!11411 lt!617786)) (= (index!44774 lt!617786) i!1037) (bvslt (x!126397 lt!617786) (x!126397 lt!617787)) (= (select (store (arr!46260 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44774 lt!617786)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47152 0))(
  ( (Unit!47153) )
))
(declare-fun lt!617788 () Unit!47152)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47152)

(assert (=> b!1402477 (= lt!617788 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617784 (x!126397 lt!617787) (index!44774 lt!617787) (x!126397 lt!617786) (index!44774 lt!617786) (undefined!11411 lt!617786) mask!2840))))

(declare-fun b!1402478 () Bool)

(declare-fun res!941104 () Bool)

(declare-fun e!794183 () Bool)

(assert (=> b!1402478 (=> (not res!941104) (not e!794183))))

(declare-datatypes ((List!32959 0))(
  ( (Nil!32956) (Cons!32955 (h!34203 (_ BitVec 64)) (t!47660 List!32959)) )
))
(declare-fun arrayNoDuplicates!0 (array!95827 (_ BitVec 32) List!32959) Bool)

(assert (=> b!1402478 (= res!941104 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32956))))

(declare-fun b!1402479 () Bool)

(assert (=> b!1402479 (= e!794186 true)))

(declare-fun lt!617791 () SeekEntryResult!10599)

(assert (=> b!1402479 (= lt!617791 lt!617782)))

(declare-fun lt!617789 () Unit!47152)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47152)

(assert (=> b!1402479 (= lt!617789 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617784 (x!126397 lt!617787) (index!44774 lt!617787) (x!126397 lt!617786) (index!44774 lt!617786) mask!2840))))

(declare-fun b!1402480 () Bool)

(declare-fun res!941103 () Bool)

(assert (=> b!1402480 (=> (not res!941103) (not e!794183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95827 (_ BitVec 32)) Bool)

(assert (=> b!1402480 (= res!941103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402481 () Bool)

(declare-fun res!941101 () Bool)

(assert (=> b!1402481 (=> (not res!941101) (not e!794183))))

(assert (=> b!1402481 (= res!941101 (and (= (size!46811 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46811 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46811 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!941099 () Bool)

(assert (=> start!120500 (=> (not res!941099) (not e!794183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120500 (= res!941099 (validMask!0 mask!2840))))

(assert (=> start!120500 e!794183))

(assert (=> start!120500 true))

(declare-fun array_inv!35205 (array!95827) Bool)

(assert (=> start!120500 (array_inv!35205 a!2901)))

(declare-fun b!1402482 () Bool)

(declare-fun res!941106 () Bool)

(assert (=> b!1402482 (=> (not res!941106) (not e!794183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402482 (= res!941106 (validKeyInArray!0 (select (arr!46260 a!2901) j!112)))))

(declare-fun b!1402483 () Bool)

(declare-fun e!794185 () Bool)

(assert (=> b!1402483 (= e!794185 e!794184)))

(declare-fun res!941098 () Bool)

(assert (=> b!1402483 (=> res!941098 e!794184)))

(assert (=> b!1402483 (= res!941098 (or (= lt!617787 lt!617786) (not (is-Intermediate!10599 lt!617786))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95827 (_ BitVec 32)) SeekEntryResult!10599)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402483 (= lt!617786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617785 mask!2840) lt!617785 lt!617790 mask!2840))))

(assert (=> b!1402483 (= lt!617785 (select (store (arr!46260 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402483 (= lt!617790 (array!95828 (store (arr!46260 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46811 a!2901)))))

(declare-fun b!1402484 () Bool)

(declare-fun res!941102 () Bool)

(assert (=> b!1402484 (=> (not res!941102) (not e!794183))))

(assert (=> b!1402484 (= res!941102 (validKeyInArray!0 (select (arr!46260 a!2901) i!1037)))))

(declare-fun b!1402485 () Bool)

(declare-fun res!941105 () Bool)

(assert (=> b!1402485 (=> res!941105 e!794186)))

(assert (=> b!1402485 (= res!941105 (not (= lt!617786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617784 lt!617785 lt!617790 mask!2840))))))

(declare-fun b!1402486 () Bool)

(assert (=> b!1402486 (= e!794183 (not e!794185))))

(declare-fun res!941100 () Bool)

(assert (=> b!1402486 (=> res!941100 e!794185)))

(assert (=> b!1402486 (= res!941100 (or (not (is-Intermediate!10599 lt!617787)) (undefined!11411 lt!617787)))))

(assert (=> b!1402486 (= lt!617791 (Found!10599 j!112))))

(assert (=> b!1402486 (= lt!617791 (seekEntryOrOpen!0 (select (arr!46260 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402486 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617783 () Unit!47152)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47152)

(assert (=> b!1402486 (= lt!617783 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402486 (= lt!617787 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617784 (select (arr!46260 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402486 (= lt!617784 (toIndex!0 (select (arr!46260 a!2901) j!112) mask!2840))))

(assert (= (and start!120500 res!941099) b!1402481))

(assert (= (and b!1402481 res!941101) b!1402484))

(assert (= (and b!1402484 res!941102) b!1402482))

(assert (= (and b!1402482 res!941106) b!1402480))

(assert (= (and b!1402480 res!941103) b!1402478))

(assert (= (and b!1402478 res!941104) b!1402486))

(assert (= (and b!1402486 (not res!941100)) b!1402483))

(assert (= (and b!1402483 (not res!941098)) b!1402477))

(assert (= (and b!1402477 (not res!941097)) b!1402485))

(assert (= (and b!1402485 (not res!941105)) b!1402479))

(declare-fun m!1290763 () Bool)

(assert (=> b!1402482 m!1290763))

(assert (=> b!1402482 m!1290763))

(declare-fun m!1290765 () Bool)

(assert (=> b!1402482 m!1290765))

(declare-fun m!1290767 () Bool)

(assert (=> b!1402479 m!1290767))

(declare-fun m!1290769 () Bool)

(assert (=> b!1402484 m!1290769))

(assert (=> b!1402484 m!1290769))

(declare-fun m!1290771 () Bool)

(assert (=> b!1402484 m!1290771))

(declare-fun m!1290773 () Bool)

(assert (=> b!1402485 m!1290773))

(assert (=> b!1402486 m!1290763))

(declare-fun m!1290775 () Bool)

(assert (=> b!1402486 m!1290775))

(declare-fun m!1290777 () Bool)

(assert (=> b!1402486 m!1290777))

(assert (=> b!1402486 m!1290763))

(declare-fun m!1290779 () Bool)

(assert (=> b!1402486 m!1290779))

(declare-fun m!1290781 () Bool)

(assert (=> b!1402486 m!1290781))

(assert (=> b!1402486 m!1290763))

(declare-fun m!1290783 () Bool)

(assert (=> b!1402486 m!1290783))

(assert (=> b!1402486 m!1290763))

(declare-fun m!1290785 () Bool)

(assert (=> b!1402480 m!1290785))

(declare-fun m!1290787 () Bool)

(assert (=> start!120500 m!1290787))

(declare-fun m!1290789 () Bool)

(assert (=> start!120500 m!1290789))

(declare-fun m!1290791 () Bool)

(assert (=> b!1402483 m!1290791))

(assert (=> b!1402483 m!1290791))

(declare-fun m!1290793 () Bool)

(assert (=> b!1402483 m!1290793))

(declare-fun m!1290795 () Bool)

(assert (=> b!1402483 m!1290795))

(declare-fun m!1290797 () Bool)

(assert (=> b!1402483 m!1290797))

(declare-fun m!1290799 () Bool)

(assert (=> b!1402478 m!1290799))

(assert (=> b!1402477 m!1290763))

(declare-fun m!1290801 () Bool)

(assert (=> b!1402477 m!1290801))

(assert (=> b!1402477 m!1290763))

(declare-fun m!1290803 () Bool)

(assert (=> b!1402477 m!1290803))

(assert (=> b!1402477 m!1290795))

(declare-fun m!1290805 () Bool)

(assert (=> b!1402477 m!1290805))

(declare-fun m!1290807 () Bool)

(assert (=> b!1402477 m!1290807))

(push 1)

