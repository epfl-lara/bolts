; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120454 () Bool)

(assert start!120454)

(declare-fun b!1401753 () Bool)

(declare-fun e!793769 () Bool)

(declare-fun e!793771 () Bool)

(assert (=> b!1401753 (= e!793769 e!793771)))

(declare-fun res!940375 () Bool)

(assert (=> b!1401753 (=> res!940375 e!793771)))

(declare-datatypes ((array!95781 0))(
  ( (array!95782 (arr!46237 (Array (_ BitVec 32) (_ BitVec 64))) (size!46788 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95781)

(declare-datatypes ((SeekEntryResult!10576 0))(
  ( (MissingZero!10576 (index!44680 (_ BitVec 32))) (Found!10576 (index!44681 (_ BitVec 32))) (Intermediate!10576 (undefined!11388 Bool) (index!44682 (_ BitVec 32)) (x!126318 (_ BitVec 32))) (Undefined!10576) (MissingVacant!10576 (index!44683 (_ BitVec 32))) )
))
(declare-fun lt!617166 () SeekEntryResult!10576)

(declare-fun lt!617164 () (_ BitVec 32))

(declare-fun lt!617160 () SeekEntryResult!10576)

(assert (=> b!1401753 (= res!940375 (or (bvslt (x!126318 lt!617160) #b00000000000000000000000000000000) (bvsgt (x!126318 lt!617160) #b01111111111111111111111111111110) (bvslt (x!126318 lt!617166) #b00000000000000000000000000000000) (bvsgt (x!126318 lt!617166) #b01111111111111111111111111111110) (bvslt lt!617164 #b00000000000000000000000000000000) (bvsge lt!617164 (size!46788 a!2901)) (bvslt (index!44682 lt!617160) #b00000000000000000000000000000000) (bvsge (index!44682 lt!617160) (size!46788 a!2901)) (bvslt (index!44682 lt!617166) #b00000000000000000000000000000000) (bvsge (index!44682 lt!617166) (size!46788 a!2901)) (not (= lt!617160 (Intermediate!10576 false (index!44682 lt!617160) (x!126318 lt!617160)))) (not (= lt!617166 (Intermediate!10576 false (index!44682 lt!617166) (x!126318 lt!617166))))))))

(declare-fun e!793775 () Bool)

(assert (=> b!1401753 e!793775))

(declare-fun res!940373 () Bool)

(assert (=> b!1401753 (=> (not res!940373) (not e!793775))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401753 (= res!940373 (and (not (undefined!11388 lt!617166)) (= (index!44682 lt!617166) i!1037) (bvslt (x!126318 lt!617166) (x!126318 lt!617160)) (= (select (store (arr!46237 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44682 lt!617166)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47106 0))(
  ( (Unit!47107) )
))
(declare-fun lt!617163 () Unit!47106)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47106)

(assert (=> b!1401753 (= lt!617163 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617164 (x!126318 lt!617160) (index!44682 lt!617160) (x!126318 lt!617166) (index!44682 lt!617166) (undefined!11388 lt!617166) mask!2840))))

(declare-fun b!1401754 () Bool)

(declare-fun res!940382 () Bool)

(declare-fun e!793770 () Bool)

(assert (=> b!1401754 (=> (not res!940382) (not e!793770))))

(assert (=> b!1401754 (= res!940382 (and (= (size!46788 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46788 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46788 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401755 () Bool)

(declare-fun res!940378 () Bool)

(assert (=> b!1401755 (=> (not res!940378) (not e!793770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401755 (= res!940378 (validKeyInArray!0 (select (arr!46237 a!2901) j!112)))))

(declare-fun b!1401756 () Bool)

(declare-fun res!940383 () Bool)

(assert (=> b!1401756 (=> (not res!940383) (not e!793770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95781 (_ BitVec 32)) Bool)

(assert (=> b!1401756 (= res!940383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401757 () Bool)

(declare-fun e!793773 () Bool)

(assert (=> b!1401757 (= e!793773 e!793769)))

(declare-fun res!940374 () Bool)

(assert (=> b!1401757 (=> res!940374 e!793769)))

(assert (=> b!1401757 (= res!940374 (or (= lt!617160 lt!617166) (not (is-Intermediate!10576 lt!617166))))))

(declare-fun lt!617167 () (_ BitVec 64))

(declare-fun lt!617162 () array!95781)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95781 (_ BitVec 32)) SeekEntryResult!10576)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401757 (= lt!617166 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617167 mask!2840) lt!617167 lt!617162 mask!2840))))

(assert (=> b!1401757 (= lt!617167 (select (store (arr!46237 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401757 (= lt!617162 (array!95782 (store (arr!46237 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46788 a!2901)))))

(declare-fun b!1401758 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95781 (_ BitVec 32)) SeekEntryResult!10576)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95781 (_ BitVec 32)) SeekEntryResult!10576)

(assert (=> b!1401758 (= e!793775 (= (seekEntryOrOpen!0 lt!617167 lt!617162 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126318 lt!617166) (index!44682 lt!617166) (index!44682 lt!617166) (select (arr!46237 a!2901) j!112) lt!617162 mask!2840)))))

(declare-fun b!1401759 () Bool)

(declare-fun res!940379 () Bool)

(assert (=> b!1401759 (=> (not res!940379) (not e!793770))))

(declare-datatypes ((List!32936 0))(
  ( (Nil!32933) (Cons!32932 (h!34180 (_ BitVec 64)) (t!47637 List!32936)) )
))
(declare-fun arrayNoDuplicates!0 (array!95781 (_ BitVec 32) List!32936) Bool)

(assert (=> b!1401759 (= res!940379 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32933))))

(declare-fun b!1401760 () Bool)

(declare-fun res!940376 () Bool)

(assert (=> b!1401760 (=> (not res!940376) (not e!793770))))

(assert (=> b!1401760 (= res!940376 (validKeyInArray!0 (select (arr!46237 a!2901) i!1037)))))

(declare-fun b!1401762 () Bool)

(assert (=> b!1401762 (= e!793771 true)))

(declare-fun lt!617161 () SeekEntryResult!10576)

(assert (=> b!1401762 (= lt!617161 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617164 lt!617167 lt!617162 mask!2840))))

(declare-fun e!793772 () Bool)

(declare-fun b!1401763 () Bool)

(assert (=> b!1401763 (= e!793772 (= (seekEntryOrOpen!0 (select (arr!46237 a!2901) j!112) a!2901 mask!2840) (Found!10576 j!112)))))

(declare-fun b!1401761 () Bool)

(assert (=> b!1401761 (= e!793770 (not e!793773))))

(declare-fun res!940380 () Bool)

(assert (=> b!1401761 (=> res!940380 e!793773)))

(assert (=> b!1401761 (= res!940380 (or (not (is-Intermediate!10576 lt!617160)) (undefined!11388 lt!617160)))))

(assert (=> b!1401761 e!793772))

(declare-fun res!940381 () Bool)

(assert (=> b!1401761 (=> (not res!940381) (not e!793772))))

(assert (=> b!1401761 (= res!940381 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!617165 () Unit!47106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47106)

(assert (=> b!1401761 (= lt!617165 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401761 (= lt!617160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617164 (select (arr!46237 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401761 (= lt!617164 (toIndex!0 (select (arr!46237 a!2901) j!112) mask!2840))))

(declare-fun res!940377 () Bool)

(assert (=> start!120454 (=> (not res!940377) (not e!793770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120454 (= res!940377 (validMask!0 mask!2840))))

(assert (=> start!120454 e!793770))

(assert (=> start!120454 true))

(declare-fun array_inv!35182 (array!95781) Bool)

(assert (=> start!120454 (array_inv!35182 a!2901)))

(assert (= (and start!120454 res!940377) b!1401754))

(assert (= (and b!1401754 res!940382) b!1401760))

(assert (= (and b!1401760 res!940376) b!1401755))

(assert (= (and b!1401755 res!940378) b!1401756))

(assert (= (and b!1401756 res!940383) b!1401759))

(assert (= (and b!1401759 res!940379) b!1401761))

(assert (= (and b!1401761 res!940381) b!1401763))

(assert (= (and b!1401761 (not res!940380)) b!1401757))

(assert (= (and b!1401757 (not res!940374)) b!1401753))

(assert (= (and b!1401753 res!940373) b!1401758))

(assert (= (and b!1401753 (not res!940375)) b!1401762))

(declare-fun m!1289729 () Bool)

(assert (=> b!1401761 m!1289729))

(declare-fun m!1289731 () Bool)

(assert (=> b!1401761 m!1289731))

(assert (=> b!1401761 m!1289729))

(declare-fun m!1289733 () Bool)

(assert (=> b!1401761 m!1289733))

(assert (=> b!1401761 m!1289729))

(declare-fun m!1289735 () Bool)

(assert (=> b!1401761 m!1289735))

(declare-fun m!1289737 () Bool)

(assert (=> b!1401761 m!1289737))

(assert (=> b!1401763 m!1289729))

(assert (=> b!1401763 m!1289729))

(declare-fun m!1289739 () Bool)

(assert (=> b!1401763 m!1289739))

(declare-fun m!1289741 () Bool)

(assert (=> b!1401757 m!1289741))

(assert (=> b!1401757 m!1289741))

(declare-fun m!1289743 () Bool)

(assert (=> b!1401757 m!1289743))

(declare-fun m!1289745 () Bool)

(assert (=> b!1401757 m!1289745))

(declare-fun m!1289747 () Bool)

(assert (=> b!1401757 m!1289747))

(assert (=> b!1401755 m!1289729))

(assert (=> b!1401755 m!1289729))

(declare-fun m!1289749 () Bool)

(assert (=> b!1401755 m!1289749))

(declare-fun m!1289751 () Bool)

(assert (=> b!1401760 m!1289751))

(assert (=> b!1401760 m!1289751))

(declare-fun m!1289753 () Bool)

(assert (=> b!1401760 m!1289753))

(declare-fun m!1289755 () Bool)

(assert (=> start!120454 m!1289755))

(declare-fun m!1289757 () Bool)

(assert (=> start!120454 m!1289757))

(declare-fun m!1289759 () Bool)

(assert (=> b!1401762 m!1289759))

(assert (=> b!1401753 m!1289745))

(declare-fun m!1289761 () Bool)

(assert (=> b!1401753 m!1289761))

(declare-fun m!1289763 () Bool)

(assert (=> b!1401753 m!1289763))

(declare-fun m!1289765 () Bool)

(assert (=> b!1401756 m!1289765))

(declare-fun m!1289767 () Bool)

(assert (=> b!1401758 m!1289767))

(assert (=> b!1401758 m!1289729))

(assert (=> b!1401758 m!1289729))

(declare-fun m!1289769 () Bool)

(assert (=> b!1401758 m!1289769))

(declare-fun m!1289771 () Bool)

(assert (=> b!1401759 m!1289771))

(push 1)

