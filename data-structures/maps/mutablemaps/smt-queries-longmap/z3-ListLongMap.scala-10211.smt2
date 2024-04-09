; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120360 () Bool)

(assert start!120360)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1400202 () Bool)

(declare-fun e!792785 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95687 0))(
  ( (array!95688 (arr!46190 (Array (_ BitVec 32) (_ BitVec 64))) (size!46741 (_ BitVec 32))) )
))
(declare-fun lt!616033 () array!95687)

(declare-fun a!2901 () array!95687)

(declare-datatypes ((SeekEntryResult!10529 0))(
  ( (MissingZero!10529 (index!44492 (_ BitVec 32))) (Found!10529 (index!44493 (_ BitVec 32))) (Intermediate!10529 (undefined!11341 Bool) (index!44494 (_ BitVec 32)) (x!126143 (_ BitVec 32))) (Undefined!10529) (MissingVacant!10529 (index!44495 (_ BitVec 32))) )
))
(declare-fun lt!616035 () SeekEntryResult!10529)

(declare-fun lt!616038 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95687 (_ BitVec 32)) SeekEntryResult!10529)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95687 (_ BitVec 32)) SeekEntryResult!10529)

(assert (=> b!1400202 (= e!792785 (= (seekEntryOrOpen!0 lt!616038 lt!616033 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126143 lt!616035) (index!44494 lt!616035) (index!44494 lt!616035) (select (arr!46190 a!2901) j!112) lt!616033 mask!2840)))))

(declare-fun b!1400203 () Bool)

(declare-fun res!938824 () Bool)

(declare-fun e!792784 () Bool)

(assert (=> b!1400203 (=> (not res!938824) (not e!792784))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400203 (= res!938824 (validKeyInArray!0 (select (arr!46190 a!2901) i!1037)))))

(declare-fun b!1400204 () Bool)

(declare-fun res!938823 () Bool)

(assert (=> b!1400204 (=> (not res!938823) (not e!792784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95687 (_ BitVec 32)) Bool)

(assert (=> b!1400204 (= res!938823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400205 () Bool)

(declare-fun e!792787 () Bool)

(assert (=> b!1400205 (= e!792787 true)))

(declare-fun lt!616032 () SeekEntryResult!10529)

(declare-fun lt!616036 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95687 (_ BitVec 32)) SeekEntryResult!10529)

(assert (=> b!1400205 (= lt!616032 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616036 lt!616038 lt!616033 mask!2840))))

(declare-fun res!938831 () Bool)

(assert (=> start!120360 (=> (not res!938831) (not e!792784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120360 (= res!938831 (validMask!0 mask!2840))))

(assert (=> start!120360 e!792784))

(assert (=> start!120360 true))

(declare-fun array_inv!35135 (array!95687) Bool)

(assert (=> start!120360 (array_inv!35135 a!2901)))

(declare-fun b!1400206 () Bool)

(declare-fun res!938827 () Bool)

(assert (=> b!1400206 (=> (not res!938827) (not e!792784))))

(declare-datatypes ((List!32889 0))(
  ( (Nil!32886) (Cons!32885 (h!34133 (_ BitVec 64)) (t!47590 List!32889)) )
))
(declare-fun arrayNoDuplicates!0 (array!95687 (_ BitVec 32) List!32889) Bool)

(assert (=> b!1400206 (= res!938827 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32886))))

(declare-fun b!1400207 () Bool)

(declare-fun e!792786 () Bool)

(assert (=> b!1400207 (= e!792784 (not e!792786))))

(declare-fun res!938828 () Bool)

(assert (=> b!1400207 (=> res!938828 e!792786)))

(declare-fun lt!616034 () SeekEntryResult!10529)

(get-info :version)

(assert (=> b!1400207 (= res!938828 (or (not ((_ is Intermediate!10529) lt!616034)) (undefined!11341 lt!616034)))))

(declare-fun e!792788 () Bool)

(assert (=> b!1400207 e!792788))

(declare-fun res!938822 () Bool)

(assert (=> b!1400207 (=> (not res!938822) (not e!792788))))

(assert (=> b!1400207 (= res!938822 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47012 0))(
  ( (Unit!47013) )
))
(declare-fun lt!616039 () Unit!47012)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47012)

(assert (=> b!1400207 (= lt!616039 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400207 (= lt!616034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616036 (select (arr!46190 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400207 (= lt!616036 (toIndex!0 (select (arr!46190 a!2901) j!112) mask!2840))))

(declare-fun b!1400208 () Bool)

(declare-fun res!938829 () Bool)

(assert (=> b!1400208 (=> (not res!938829) (not e!792784))))

(assert (=> b!1400208 (= res!938829 (and (= (size!46741 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46741 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46741 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400209 () Bool)

(assert (=> b!1400209 (= e!792788 (= (seekEntryOrOpen!0 (select (arr!46190 a!2901) j!112) a!2901 mask!2840) (Found!10529 j!112)))))

(declare-fun b!1400210 () Bool)

(declare-fun e!792783 () Bool)

(assert (=> b!1400210 (= e!792783 e!792787)))

(declare-fun res!938826 () Bool)

(assert (=> b!1400210 (=> res!938826 e!792787)))

(assert (=> b!1400210 (= res!938826 (or (bvslt (x!126143 lt!616034) #b00000000000000000000000000000000) (bvsgt (x!126143 lt!616034) #b01111111111111111111111111111110) (bvslt (x!126143 lt!616035) #b00000000000000000000000000000000) (bvsgt (x!126143 lt!616035) #b01111111111111111111111111111110) (bvslt lt!616036 #b00000000000000000000000000000000) (bvsge lt!616036 (size!46741 a!2901)) (bvslt (index!44494 lt!616034) #b00000000000000000000000000000000) (bvsge (index!44494 lt!616034) (size!46741 a!2901)) (bvslt (index!44494 lt!616035) #b00000000000000000000000000000000) (bvsge (index!44494 lt!616035) (size!46741 a!2901)) (not (= lt!616034 (Intermediate!10529 false (index!44494 lt!616034) (x!126143 lt!616034)))) (not (= lt!616035 (Intermediate!10529 false (index!44494 lt!616035) (x!126143 lt!616035))))))))

(assert (=> b!1400210 e!792785))

(declare-fun res!938830 () Bool)

(assert (=> b!1400210 (=> (not res!938830) (not e!792785))))

(assert (=> b!1400210 (= res!938830 (and (not (undefined!11341 lt!616035)) (= (index!44494 lt!616035) i!1037) (bvslt (x!126143 lt!616035) (x!126143 lt!616034)) (= (select (store (arr!46190 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44494 lt!616035)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616037 () Unit!47012)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47012)

(assert (=> b!1400210 (= lt!616037 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616036 (x!126143 lt!616034) (index!44494 lt!616034) (x!126143 lt!616035) (index!44494 lt!616035) (undefined!11341 lt!616035) mask!2840))))

(declare-fun b!1400211 () Bool)

(assert (=> b!1400211 (= e!792786 e!792783)))

(declare-fun res!938832 () Bool)

(assert (=> b!1400211 (=> res!938832 e!792783)))

(assert (=> b!1400211 (= res!938832 (or (= lt!616034 lt!616035) (not ((_ is Intermediate!10529) lt!616035))))))

(assert (=> b!1400211 (= lt!616035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616038 mask!2840) lt!616038 lt!616033 mask!2840))))

(assert (=> b!1400211 (= lt!616038 (select (store (arr!46190 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400211 (= lt!616033 (array!95688 (store (arr!46190 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46741 a!2901)))))

(declare-fun b!1400212 () Bool)

(declare-fun res!938825 () Bool)

(assert (=> b!1400212 (=> (not res!938825) (not e!792784))))

(assert (=> b!1400212 (= res!938825 (validKeyInArray!0 (select (arr!46190 a!2901) j!112)))))

(assert (= (and start!120360 res!938831) b!1400208))

(assert (= (and b!1400208 res!938829) b!1400203))

(assert (= (and b!1400203 res!938824) b!1400212))

(assert (= (and b!1400212 res!938825) b!1400204))

(assert (= (and b!1400204 res!938823) b!1400206))

(assert (= (and b!1400206 res!938827) b!1400207))

(assert (= (and b!1400207 res!938822) b!1400209))

(assert (= (and b!1400207 (not res!938828)) b!1400211))

(assert (= (and b!1400211 (not res!938832)) b!1400210))

(assert (= (and b!1400210 res!938830) b!1400202))

(assert (= (and b!1400210 (not res!938826)) b!1400205))

(declare-fun m!1287661 () Bool)

(assert (=> b!1400211 m!1287661))

(assert (=> b!1400211 m!1287661))

(declare-fun m!1287663 () Bool)

(assert (=> b!1400211 m!1287663))

(declare-fun m!1287665 () Bool)

(assert (=> b!1400211 m!1287665))

(declare-fun m!1287667 () Bool)

(assert (=> b!1400211 m!1287667))

(declare-fun m!1287669 () Bool)

(assert (=> b!1400206 m!1287669))

(declare-fun m!1287671 () Bool)

(assert (=> b!1400212 m!1287671))

(assert (=> b!1400212 m!1287671))

(declare-fun m!1287673 () Bool)

(assert (=> b!1400212 m!1287673))

(declare-fun m!1287675 () Bool)

(assert (=> b!1400205 m!1287675))

(assert (=> b!1400207 m!1287671))

(declare-fun m!1287677 () Bool)

(assert (=> b!1400207 m!1287677))

(assert (=> b!1400207 m!1287671))

(declare-fun m!1287679 () Bool)

(assert (=> b!1400207 m!1287679))

(assert (=> b!1400207 m!1287671))

(declare-fun m!1287681 () Bool)

(assert (=> b!1400207 m!1287681))

(declare-fun m!1287683 () Bool)

(assert (=> b!1400207 m!1287683))

(declare-fun m!1287685 () Bool)

(assert (=> b!1400204 m!1287685))

(declare-fun m!1287687 () Bool)

(assert (=> start!120360 m!1287687))

(declare-fun m!1287689 () Bool)

(assert (=> start!120360 m!1287689))

(assert (=> b!1400210 m!1287665))

(declare-fun m!1287691 () Bool)

(assert (=> b!1400210 m!1287691))

(declare-fun m!1287693 () Bool)

(assert (=> b!1400210 m!1287693))

(declare-fun m!1287695 () Bool)

(assert (=> b!1400202 m!1287695))

(assert (=> b!1400202 m!1287671))

(assert (=> b!1400202 m!1287671))

(declare-fun m!1287697 () Bool)

(assert (=> b!1400202 m!1287697))

(assert (=> b!1400209 m!1287671))

(assert (=> b!1400209 m!1287671))

(declare-fun m!1287699 () Bool)

(assert (=> b!1400209 m!1287699))

(declare-fun m!1287701 () Bool)

(assert (=> b!1400203 m!1287701))

(assert (=> b!1400203 m!1287701))

(declare-fun m!1287703 () Bool)

(assert (=> b!1400203 m!1287703))

(check-sat (not b!1400204) (not b!1400211) (not b!1400209) (not b!1400207) (not b!1400212) (not start!120360) (not b!1400202) (not b!1400206) (not b!1400205) (not b!1400210) (not b!1400203))
(check-sat)
