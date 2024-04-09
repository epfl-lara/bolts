; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120410 () Bool)

(assert start!120410)

(declare-fun res!939657 () Bool)

(declare-fun e!793309 () Bool)

(assert (=> start!120410 (=> (not res!939657) (not e!793309))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120410 (= res!939657 (validMask!0 mask!2840))))

(assert (=> start!120410 e!793309))

(assert (=> start!120410 true))

(declare-datatypes ((array!95737 0))(
  ( (array!95738 (arr!46215 (Array (_ BitVec 32) (_ BitVec 64))) (size!46766 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95737)

(declare-fun array_inv!35160 (array!95737) Bool)

(assert (=> start!120410 (array_inv!35160 a!2901)))

(declare-fun b!1401027 () Bool)

(declare-fun e!793310 () Bool)

(declare-fun e!793313 () Bool)

(assert (=> b!1401027 (= e!793310 e!793313)))

(declare-fun res!939654 () Bool)

(assert (=> b!1401027 (=> res!939654 e!793313)))

(declare-datatypes ((SeekEntryResult!10554 0))(
  ( (MissingZero!10554 (index!44592 (_ BitVec 32))) (Found!10554 (index!44593 (_ BitVec 32))) (Intermediate!10554 (undefined!11366 Bool) (index!44594 (_ BitVec 32)) (x!126232 (_ BitVec 32))) (Undefined!10554) (MissingVacant!10554 (index!44595 (_ BitVec 32))) )
))
(declare-fun lt!616639 () SeekEntryResult!10554)

(declare-fun lt!616635 () SeekEntryResult!10554)

(assert (=> b!1401027 (= res!939654 (or (= lt!616639 lt!616635) (not (is-Intermediate!10554 lt!616635))))))

(declare-fun lt!616633 () (_ BitVec 64))

(declare-fun lt!616637 () array!95737)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95737 (_ BitVec 32)) SeekEntryResult!10554)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401027 (= lt!616635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616633 mask!2840) lt!616633 lt!616637 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1401027 (= lt!616633 (select (store (arr!46215 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401027 (= lt!616637 (array!95738 (store (arr!46215 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46766 a!2901)))))

(declare-fun b!1401028 () Bool)

(declare-fun res!939652 () Bool)

(assert (=> b!1401028 (=> (not res!939652) (not e!793309))))

(assert (=> b!1401028 (= res!939652 (and (= (size!46766 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46766 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46766 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401029 () Bool)

(declare-fun e!793311 () Bool)

(assert (=> b!1401029 (= e!793313 e!793311)))

(declare-fun res!939647 () Bool)

(assert (=> b!1401029 (=> res!939647 e!793311)))

(declare-fun lt!616632 () (_ BitVec 32))

(assert (=> b!1401029 (= res!939647 (or (bvslt (x!126232 lt!616639) #b00000000000000000000000000000000) (bvsgt (x!126232 lt!616639) #b01111111111111111111111111111110) (bvslt (x!126232 lt!616635) #b00000000000000000000000000000000) (bvsgt (x!126232 lt!616635) #b01111111111111111111111111111110) (bvslt lt!616632 #b00000000000000000000000000000000) (bvsge lt!616632 (size!46766 a!2901)) (bvslt (index!44594 lt!616639) #b00000000000000000000000000000000) (bvsge (index!44594 lt!616639) (size!46766 a!2901)) (bvslt (index!44594 lt!616635) #b00000000000000000000000000000000) (bvsge (index!44594 lt!616635) (size!46766 a!2901)) (not (= lt!616639 (Intermediate!10554 false (index!44594 lt!616639) (x!126232 lt!616639)))) (not (= lt!616635 (Intermediate!10554 false (index!44594 lt!616635) (x!126232 lt!616635))))))))

(declare-fun e!793308 () Bool)

(assert (=> b!1401029 e!793308))

(declare-fun res!939649 () Bool)

(assert (=> b!1401029 (=> (not res!939649) (not e!793308))))

(assert (=> b!1401029 (= res!939649 (and (not (undefined!11366 lt!616635)) (= (index!44594 lt!616635) i!1037) (bvslt (x!126232 lt!616635) (x!126232 lt!616639)) (= (select (store (arr!46215 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44594 lt!616635)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47062 0))(
  ( (Unit!47063) )
))
(declare-fun lt!616634 () Unit!47062)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95737 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47062)

(assert (=> b!1401029 (= lt!616634 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616632 (x!126232 lt!616639) (index!44594 lt!616639) (x!126232 lt!616635) (index!44594 lt!616635) (undefined!11366 lt!616635) mask!2840))))

(declare-fun b!1401030 () Bool)

(assert (=> b!1401030 (= e!793311 true)))

(declare-fun lt!616636 () SeekEntryResult!10554)

(assert (=> b!1401030 (= lt!616636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616632 lt!616633 lt!616637 mask!2840))))

(declare-fun b!1401031 () Bool)

(declare-fun res!939656 () Bool)

(assert (=> b!1401031 (=> (not res!939656) (not e!793309))))

(declare-datatypes ((List!32914 0))(
  ( (Nil!32911) (Cons!32910 (h!34158 (_ BitVec 64)) (t!47615 List!32914)) )
))
(declare-fun arrayNoDuplicates!0 (array!95737 (_ BitVec 32) List!32914) Bool)

(assert (=> b!1401031 (= res!939656 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32911))))

(declare-fun b!1401032 () Bool)

(assert (=> b!1401032 (= e!793309 (not e!793310))))

(declare-fun res!939655 () Bool)

(assert (=> b!1401032 (=> res!939655 e!793310)))

(assert (=> b!1401032 (= res!939655 (or (not (is-Intermediate!10554 lt!616639)) (undefined!11366 lt!616639)))))

(declare-fun e!793307 () Bool)

(assert (=> b!1401032 e!793307))

(declare-fun res!939650 () Bool)

(assert (=> b!1401032 (=> (not res!939650) (not e!793307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95737 (_ BitVec 32)) Bool)

(assert (=> b!1401032 (= res!939650 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616638 () Unit!47062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95737 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47062)

(assert (=> b!1401032 (= lt!616638 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401032 (= lt!616639 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616632 (select (arr!46215 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401032 (= lt!616632 (toIndex!0 (select (arr!46215 a!2901) j!112) mask!2840))))

(declare-fun b!1401033 () Bool)

(declare-fun res!939648 () Bool)

(assert (=> b!1401033 (=> (not res!939648) (not e!793309))))

(assert (=> b!1401033 (= res!939648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401034 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95737 (_ BitVec 32)) SeekEntryResult!10554)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95737 (_ BitVec 32)) SeekEntryResult!10554)

(assert (=> b!1401034 (= e!793308 (= (seekEntryOrOpen!0 lt!616633 lt!616637 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126232 lt!616635) (index!44594 lt!616635) (index!44594 lt!616635) (select (arr!46215 a!2901) j!112) lt!616637 mask!2840)))))

(declare-fun b!1401035 () Bool)

(declare-fun res!939653 () Bool)

(assert (=> b!1401035 (=> (not res!939653) (not e!793309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401035 (= res!939653 (validKeyInArray!0 (select (arr!46215 a!2901) i!1037)))))

(declare-fun b!1401036 () Bool)

(declare-fun res!939651 () Bool)

(assert (=> b!1401036 (=> (not res!939651) (not e!793309))))

(assert (=> b!1401036 (= res!939651 (validKeyInArray!0 (select (arr!46215 a!2901) j!112)))))

(declare-fun b!1401037 () Bool)

(assert (=> b!1401037 (= e!793307 (= (seekEntryOrOpen!0 (select (arr!46215 a!2901) j!112) a!2901 mask!2840) (Found!10554 j!112)))))

(assert (= (and start!120410 res!939657) b!1401028))

(assert (= (and b!1401028 res!939652) b!1401035))

(assert (= (and b!1401035 res!939653) b!1401036))

(assert (= (and b!1401036 res!939651) b!1401033))

(assert (= (and b!1401033 res!939648) b!1401031))

(assert (= (and b!1401031 res!939656) b!1401032))

(assert (= (and b!1401032 res!939650) b!1401037))

(assert (= (and b!1401032 (not res!939655)) b!1401027))

(assert (= (and b!1401027 (not res!939654)) b!1401029))

(assert (= (and b!1401029 res!939649) b!1401034))

(assert (= (and b!1401029 (not res!939647)) b!1401030))

(declare-fun m!1288761 () Bool)

(assert (=> b!1401037 m!1288761))

(assert (=> b!1401037 m!1288761))

(declare-fun m!1288763 () Bool)

(assert (=> b!1401037 m!1288763))

(declare-fun m!1288765 () Bool)

(assert (=> b!1401034 m!1288765))

(assert (=> b!1401034 m!1288761))

(assert (=> b!1401034 m!1288761))

(declare-fun m!1288767 () Bool)

(assert (=> b!1401034 m!1288767))

(assert (=> b!1401036 m!1288761))

(assert (=> b!1401036 m!1288761))

(declare-fun m!1288769 () Bool)

(assert (=> b!1401036 m!1288769))

(declare-fun m!1288771 () Bool)

(assert (=> b!1401031 m!1288771))

(declare-fun m!1288773 () Bool)

(assert (=> b!1401035 m!1288773))

(assert (=> b!1401035 m!1288773))

(declare-fun m!1288775 () Bool)

(assert (=> b!1401035 m!1288775))

(assert (=> b!1401032 m!1288761))

(declare-fun m!1288777 () Bool)

(assert (=> b!1401032 m!1288777))

(assert (=> b!1401032 m!1288761))

(declare-fun m!1288779 () Bool)

(assert (=> b!1401032 m!1288779))

(assert (=> b!1401032 m!1288761))

(declare-fun m!1288781 () Bool)

(assert (=> b!1401032 m!1288781))

(declare-fun m!1288783 () Bool)

(assert (=> b!1401032 m!1288783))

(declare-fun m!1288785 () Bool)

(assert (=> start!120410 m!1288785))

(declare-fun m!1288787 () Bool)

(assert (=> start!120410 m!1288787))

(declare-fun m!1288789 () Bool)

(assert (=> b!1401030 m!1288789))

(declare-fun m!1288791 () Bool)

(assert (=> b!1401027 m!1288791))

(assert (=> b!1401027 m!1288791))

(declare-fun m!1288793 () Bool)

(assert (=> b!1401027 m!1288793))

(declare-fun m!1288795 () Bool)

(assert (=> b!1401027 m!1288795))

(declare-fun m!1288797 () Bool)

(assert (=> b!1401027 m!1288797))

(declare-fun m!1288799 () Bool)

(assert (=> b!1401033 m!1288799))

(assert (=> b!1401029 m!1288795))

(declare-fun m!1288801 () Bool)

(assert (=> b!1401029 m!1288801))

(declare-fun m!1288803 () Bool)

(assert (=> b!1401029 m!1288803))

(push 1)

