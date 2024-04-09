; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120416 () Bool)

(assert start!120416)

(declare-fun b!1401126 () Bool)

(declare-fun e!793372 () Bool)

(declare-fun e!793371 () Bool)

(assert (=> b!1401126 (= e!793372 e!793371)))

(declare-fun res!939751 () Bool)

(assert (=> b!1401126 (=> res!939751 e!793371)))

(declare-datatypes ((array!95743 0))(
  ( (array!95744 (arr!46218 (Array (_ BitVec 32) (_ BitVec 64))) (size!46769 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95743)

(declare-fun lt!616710 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10557 0))(
  ( (MissingZero!10557 (index!44604 (_ BitVec 32))) (Found!10557 (index!44605 (_ BitVec 32))) (Intermediate!10557 (undefined!11369 Bool) (index!44606 (_ BitVec 32)) (x!126243 (_ BitVec 32))) (Undefined!10557) (MissingVacant!10557 (index!44607 (_ BitVec 32))) )
))
(declare-fun lt!616709 () SeekEntryResult!10557)

(declare-fun lt!616706 () SeekEntryResult!10557)

(assert (=> b!1401126 (= res!939751 (or (bvslt (x!126243 lt!616706) #b00000000000000000000000000000000) (bvsgt (x!126243 lt!616706) #b01111111111111111111111111111110) (bvslt (x!126243 lt!616709) #b00000000000000000000000000000000) (bvsgt (x!126243 lt!616709) #b01111111111111111111111111111110) (bvslt lt!616710 #b00000000000000000000000000000000) (bvsge lt!616710 (size!46769 a!2901)) (bvslt (index!44606 lt!616706) #b00000000000000000000000000000000) (bvsge (index!44606 lt!616706) (size!46769 a!2901)) (bvslt (index!44606 lt!616709) #b00000000000000000000000000000000) (bvsge (index!44606 lt!616709) (size!46769 a!2901)) (not (= lt!616706 (Intermediate!10557 false (index!44606 lt!616706) (x!126243 lt!616706)))) (not (= lt!616709 (Intermediate!10557 false (index!44606 lt!616709) (x!126243 lt!616709))))))))

(declare-fun e!793370 () Bool)

(assert (=> b!1401126 e!793370))

(declare-fun res!939752 () Bool)

(assert (=> b!1401126 (=> (not res!939752) (not e!793370))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401126 (= res!939752 (and (not (undefined!11369 lt!616709)) (= (index!44606 lt!616709) i!1037) (bvslt (x!126243 lt!616709) (x!126243 lt!616706)) (= (select (store (arr!46218 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44606 lt!616709)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47068 0))(
  ( (Unit!47069) )
))
(declare-fun lt!616711 () Unit!47068)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95743 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47068)

(assert (=> b!1401126 (= lt!616711 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616710 (x!126243 lt!616706) (index!44606 lt!616706) (x!126243 lt!616709) (index!44606 lt!616709) (undefined!11369 lt!616709) mask!2840))))

(declare-fun b!1401127 () Bool)

(declare-fun e!793374 () Bool)

(declare-fun e!793376 () Bool)

(assert (=> b!1401127 (= e!793374 (not e!793376))))

(declare-fun res!939746 () Bool)

(assert (=> b!1401127 (=> res!939746 e!793376)))

(assert (=> b!1401127 (= res!939746 (or (not (is-Intermediate!10557 lt!616706)) (undefined!11369 lt!616706)))))

(declare-fun e!793373 () Bool)

(assert (=> b!1401127 e!793373))

(declare-fun res!939755 () Bool)

(assert (=> b!1401127 (=> (not res!939755) (not e!793373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95743 (_ BitVec 32)) Bool)

(assert (=> b!1401127 (= res!939755 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616704 () Unit!47068)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95743 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47068)

(assert (=> b!1401127 (= lt!616704 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95743 (_ BitVec 32)) SeekEntryResult!10557)

(assert (=> b!1401127 (= lt!616706 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616710 (select (arr!46218 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401127 (= lt!616710 (toIndex!0 (select (arr!46218 a!2901) j!112) mask!2840))))

(declare-fun b!1401128 () Bool)

(declare-fun res!939747 () Bool)

(assert (=> b!1401128 (=> (not res!939747) (not e!793374))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401128 (= res!939747 (validKeyInArray!0 (select (arr!46218 a!2901) j!112)))))

(declare-fun b!1401129 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95743 (_ BitVec 32)) SeekEntryResult!10557)

(assert (=> b!1401129 (= e!793373 (= (seekEntryOrOpen!0 (select (arr!46218 a!2901) j!112) a!2901 mask!2840) (Found!10557 j!112)))))

(declare-fun res!939756 () Bool)

(assert (=> start!120416 (=> (not res!939756) (not e!793374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120416 (= res!939756 (validMask!0 mask!2840))))

(assert (=> start!120416 e!793374))

(assert (=> start!120416 true))

(declare-fun array_inv!35163 (array!95743) Bool)

(assert (=> start!120416 (array_inv!35163 a!2901)))

(declare-fun b!1401130 () Bool)

(declare-fun res!939754 () Bool)

(assert (=> b!1401130 (=> (not res!939754) (not e!793374))))

(assert (=> b!1401130 (= res!939754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401131 () Bool)

(declare-fun res!939753 () Bool)

(assert (=> b!1401131 (=> (not res!939753) (not e!793374))))

(declare-datatypes ((List!32917 0))(
  ( (Nil!32914) (Cons!32913 (h!34161 (_ BitVec 64)) (t!47618 List!32917)) )
))
(declare-fun arrayNoDuplicates!0 (array!95743 (_ BitVec 32) List!32917) Bool)

(assert (=> b!1401131 (= res!939753 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32914))))

(declare-fun b!1401132 () Bool)

(assert (=> b!1401132 (= e!793376 e!793372)))

(declare-fun res!939750 () Bool)

(assert (=> b!1401132 (=> res!939750 e!793372)))

(assert (=> b!1401132 (= res!939750 (or (= lt!616706 lt!616709) (not (is-Intermediate!10557 lt!616709))))))

(declare-fun lt!616708 () array!95743)

(declare-fun lt!616707 () (_ BitVec 64))

(assert (=> b!1401132 (= lt!616709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616707 mask!2840) lt!616707 lt!616708 mask!2840))))

(assert (=> b!1401132 (= lt!616707 (select (store (arr!46218 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401132 (= lt!616708 (array!95744 (store (arr!46218 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46769 a!2901)))))

(declare-fun b!1401133 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95743 (_ BitVec 32)) SeekEntryResult!10557)

(assert (=> b!1401133 (= e!793370 (= (seekEntryOrOpen!0 lt!616707 lt!616708 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126243 lt!616709) (index!44606 lt!616709) (index!44606 lt!616709) (select (arr!46218 a!2901) j!112) lt!616708 mask!2840)))))

(declare-fun b!1401134 () Bool)

(declare-fun res!939748 () Bool)

(assert (=> b!1401134 (=> (not res!939748) (not e!793374))))

(assert (=> b!1401134 (= res!939748 (and (= (size!46769 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46769 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46769 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401135 () Bool)

(assert (=> b!1401135 (= e!793371 true)))

(declare-fun lt!616705 () SeekEntryResult!10557)

(assert (=> b!1401135 (= lt!616705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616710 lt!616707 lt!616708 mask!2840))))

(declare-fun b!1401136 () Bool)

(declare-fun res!939749 () Bool)

(assert (=> b!1401136 (=> (not res!939749) (not e!793374))))

(assert (=> b!1401136 (= res!939749 (validKeyInArray!0 (select (arr!46218 a!2901) i!1037)))))

(assert (= (and start!120416 res!939756) b!1401134))

(assert (= (and b!1401134 res!939748) b!1401136))

(assert (= (and b!1401136 res!939749) b!1401128))

(assert (= (and b!1401128 res!939747) b!1401130))

(assert (= (and b!1401130 res!939754) b!1401131))

(assert (= (and b!1401131 res!939753) b!1401127))

(assert (= (and b!1401127 res!939755) b!1401129))

(assert (= (and b!1401127 (not res!939746)) b!1401132))

(assert (= (and b!1401132 (not res!939750)) b!1401126))

(assert (= (and b!1401126 res!939752) b!1401133))

(assert (= (and b!1401126 (not res!939751)) b!1401135))

(declare-fun m!1288893 () Bool)

(assert (=> b!1401129 m!1288893))

(assert (=> b!1401129 m!1288893))

(declare-fun m!1288895 () Bool)

(assert (=> b!1401129 m!1288895))

(assert (=> b!1401127 m!1288893))

(declare-fun m!1288897 () Bool)

(assert (=> b!1401127 m!1288897))

(assert (=> b!1401127 m!1288893))

(declare-fun m!1288899 () Bool)

(assert (=> b!1401127 m!1288899))

(assert (=> b!1401127 m!1288893))

(declare-fun m!1288901 () Bool)

(assert (=> b!1401127 m!1288901))

(declare-fun m!1288903 () Bool)

(assert (=> b!1401127 m!1288903))

(assert (=> b!1401128 m!1288893))

(assert (=> b!1401128 m!1288893))

(declare-fun m!1288905 () Bool)

(assert (=> b!1401128 m!1288905))

(declare-fun m!1288907 () Bool)

(assert (=> b!1401131 m!1288907))

(declare-fun m!1288909 () Bool)

(assert (=> b!1401126 m!1288909))

(declare-fun m!1288911 () Bool)

(assert (=> b!1401126 m!1288911))

(declare-fun m!1288913 () Bool)

(assert (=> b!1401126 m!1288913))

(declare-fun m!1288915 () Bool)

(assert (=> b!1401133 m!1288915))

(assert (=> b!1401133 m!1288893))

(assert (=> b!1401133 m!1288893))

(declare-fun m!1288917 () Bool)

(assert (=> b!1401133 m!1288917))

(declare-fun m!1288919 () Bool)

(assert (=> b!1401130 m!1288919))

(declare-fun m!1288921 () Bool)

(assert (=> b!1401135 m!1288921))

(declare-fun m!1288923 () Bool)

(assert (=> b!1401136 m!1288923))

(assert (=> b!1401136 m!1288923))

(declare-fun m!1288925 () Bool)

(assert (=> b!1401136 m!1288925))

(declare-fun m!1288927 () Bool)

(assert (=> b!1401132 m!1288927))

(assert (=> b!1401132 m!1288927))

(declare-fun m!1288929 () Bool)

(assert (=> b!1401132 m!1288929))

(assert (=> b!1401132 m!1288909))

(declare-fun m!1288931 () Bool)

(assert (=> b!1401132 m!1288931))

(declare-fun m!1288933 () Bool)

(assert (=> start!120416 m!1288933))

(declare-fun m!1288935 () Bool)

(assert (=> start!120416 m!1288935))

(push 1)

