; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120514 () Bool)

(assert start!120514)

(declare-fun res!941311 () Bool)

(declare-fun e!794291 () Bool)

(assert (=> start!120514 (=> (not res!941311) (not e!794291))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120514 (= res!941311 (validMask!0 mask!2840))))

(assert (=> start!120514 e!794291))

(assert (=> start!120514 true))

(declare-datatypes ((array!95841 0))(
  ( (array!95842 (arr!46267 (Array (_ BitVec 32) (_ BitVec 64))) (size!46818 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95841)

(declare-fun array_inv!35212 (array!95841) Bool)

(assert (=> start!120514 (array_inv!35212 a!2901)))

(declare-fun b!1402687 () Bool)

(declare-fun e!794289 () Bool)

(declare-fun e!794287 () Bool)

(assert (=> b!1402687 (= e!794289 e!794287)))

(declare-fun res!941308 () Bool)

(assert (=> b!1402687 (=> res!941308 e!794287)))

(declare-datatypes ((SeekEntryResult!10606 0))(
  ( (MissingZero!10606 (index!44800 (_ BitVec 32))) (Found!10606 (index!44801 (_ BitVec 32))) (Intermediate!10606 (undefined!11418 Bool) (index!44802 (_ BitVec 32)) (x!126428 (_ BitVec 32))) (Undefined!10606) (MissingVacant!10606 (index!44803 (_ BitVec 32))) )
))
(declare-fun lt!618001 () SeekEntryResult!10606)

(declare-fun lt!617998 () SeekEntryResult!10606)

(declare-fun lt!617996 () (_ BitVec 32))

(assert (=> b!1402687 (= res!941308 (or (bvslt (x!126428 lt!617998) #b00000000000000000000000000000000) (bvsgt (x!126428 lt!617998) #b01111111111111111111111111111110) (bvslt (x!126428 lt!618001) #b00000000000000000000000000000000) (bvsgt (x!126428 lt!618001) #b01111111111111111111111111111110) (bvslt lt!617996 #b00000000000000000000000000000000) (bvsge lt!617996 (size!46818 a!2901)) (bvslt (index!44802 lt!617998) #b00000000000000000000000000000000) (bvsge (index!44802 lt!617998) (size!46818 a!2901)) (bvslt (index!44802 lt!618001) #b00000000000000000000000000000000) (bvsge (index!44802 lt!618001) (size!46818 a!2901)) (not (= lt!617998 (Intermediate!10606 false (index!44802 lt!617998) (x!126428 lt!617998)))) (not (= lt!618001 (Intermediate!10606 false (index!44802 lt!618001) (x!126428 lt!618001))))))))

(declare-fun lt!617992 () SeekEntryResult!10606)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lt!617994 () array!95841)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95841 (_ BitVec 32)) SeekEntryResult!10606)

(assert (=> b!1402687 (= lt!617992 (seekKeyOrZeroReturnVacant!0 (x!126428 lt!618001) (index!44802 lt!618001) (index!44802 lt!618001) (select (arr!46267 a!2901) j!112) lt!617994 mask!2840))))

(declare-fun lt!618000 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95841 (_ BitVec 32)) SeekEntryResult!10606)

(assert (=> b!1402687 (= lt!617992 (seekEntryOrOpen!0 lt!618000 lt!617994 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402687 (and (not (undefined!11418 lt!618001)) (= (index!44802 lt!618001) i!1037) (bvslt (x!126428 lt!618001) (x!126428 lt!617998)) (= (select (store (arr!46267 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44802 lt!618001)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47166 0))(
  ( (Unit!47167) )
))
(declare-fun lt!617999 () Unit!47166)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95841 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47166)

(assert (=> b!1402687 (= lt!617999 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617996 (x!126428 lt!617998) (index!44802 lt!617998) (x!126428 lt!618001) (index!44802 lt!618001) (undefined!11418 lt!618001) mask!2840))))

(declare-fun b!1402688 () Bool)

(assert (=> b!1402688 (= e!794287 true)))

(declare-fun lt!617997 () SeekEntryResult!10606)

(assert (=> b!1402688 (= lt!617997 lt!617992)))

(declare-fun lt!617995 () Unit!47166)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95841 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47166)

(assert (=> b!1402688 (= lt!617995 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617996 (x!126428 lt!617998) (index!44802 lt!617998) (x!126428 lt!618001) (index!44802 lt!618001) mask!2840))))

(declare-fun b!1402689 () Bool)

(declare-fun res!941313 () Bool)

(assert (=> b!1402689 (=> (not res!941313) (not e!794291))))

(assert (=> b!1402689 (= res!941313 (and (= (size!46818 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46818 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46818 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402690 () Bool)

(declare-fun res!941310 () Bool)

(assert (=> b!1402690 (=> (not res!941310) (not e!794291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402690 (= res!941310 (validKeyInArray!0 (select (arr!46267 a!2901) i!1037)))))

(declare-fun b!1402691 () Bool)

(declare-fun res!941309 () Bool)

(assert (=> b!1402691 (=> (not res!941309) (not e!794291))))

(assert (=> b!1402691 (= res!941309 (validKeyInArray!0 (select (arr!46267 a!2901) j!112)))))

(declare-fun b!1402692 () Bool)

(declare-fun res!941315 () Bool)

(assert (=> b!1402692 (=> res!941315 e!794287)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95841 (_ BitVec 32)) SeekEntryResult!10606)

(assert (=> b!1402692 (= res!941315 (not (= lt!618001 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617996 lt!618000 lt!617994 mask!2840))))))

(declare-fun b!1402693 () Bool)

(declare-fun res!941314 () Bool)

(assert (=> b!1402693 (=> (not res!941314) (not e!794291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95841 (_ BitVec 32)) Bool)

(assert (=> b!1402693 (= res!941314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402694 () Bool)

(declare-fun res!941312 () Bool)

(assert (=> b!1402694 (=> (not res!941312) (not e!794291))))

(declare-datatypes ((List!32966 0))(
  ( (Nil!32963) (Cons!32962 (h!34210 (_ BitVec 64)) (t!47667 List!32966)) )
))
(declare-fun arrayNoDuplicates!0 (array!95841 (_ BitVec 32) List!32966) Bool)

(assert (=> b!1402694 (= res!941312 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32963))))

(declare-fun b!1402695 () Bool)

(declare-fun e!794290 () Bool)

(assert (=> b!1402695 (= e!794291 (not e!794290))))

(declare-fun res!941316 () Bool)

(assert (=> b!1402695 (=> res!941316 e!794290)))

(assert (=> b!1402695 (= res!941316 (or (not (is-Intermediate!10606 lt!617998)) (undefined!11418 lt!617998)))))

(assert (=> b!1402695 (= lt!617997 (Found!10606 j!112))))

(assert (=> b!1402695 (= lt!617997 (seekEntryOrOpen!0 (select (arr!46267 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402695 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617993 () Unit!47166)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95841 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47166)

(assert (=> b!1402695 (= lt!617993 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402695 (= lt!617998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617996 (select (arr!46267 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402695 (= lt!617996 (toIndex!0 (select (arr!46267 a!2901) j!112) mask!2840))))

(declare-fun b!1402696 () Bool)

(assert (=> b!1402696 (= e!794290 e!794289)))

(declare-fun res!941307 () Bool)

(assert (=> b!1402696 (=> res!941307 e!794289)))

(assert (=> b!1402696 (= res!941307 (or (= lt!617998 lt!618001) (not (is-Intermediate!10606 lt!618001))))))

(assert (=> b!1402696 (= lt!618001 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!618000 mask!2840) lt!618000 lt!617994 mask!2840))))

(assert (=> b!1402696 (= lt!618000 (select (store (arr!46267 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402696 (= lt!617994 (array!95842 (store (arr!46267 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46818 a!2901)))))

(assert (= (and start!120514 res!941311) b!1402689))

(assert (= (and b!1402689 res!941313) b!1402690))

(assert (= (and b!1402690 res!941310) b!1402691))

(assert (= (and b!1402691 res!941309) b!1402693))

(assert (= (and b!1402693 res!941314) b!1402694))

(assert (= (and b!1402694 res!941312) b!1402695))

(assert (= (and b!1402695 (not res!941316)) b!1402696))

(assert (= (and b!1402696 (not res!941307)) b!1402687))

(assert (= (and b!1402687 (not res!941308)) b!1402692))

(assert (= (and b!1402692 (not res!941315)) b!1402688))

(declare-fun m!1291085 () Bool)

(assert (=> b!1402695 m!1291085))

(declare-fun m!1291087 () Bool)

(assert (=> b!1402695 m!1291087))

(assert (=> b!1402695 m!1291085))

(declare-fun m!1291089 () Bool)

(assert (=> b!1402695 m!1291089))

(assert (=> b!1402695 m!1291085))

(declare-fun m!1291091 () Bool)

(assert (=> b!1402695 m!1291091))

(assert (=> b!1402695 m!1291085))

(declare-fun m!1291093 () Bool)

(assert (=> b!1402695 m!1291093))

(declare-fun m!1291095 () Bool)

(assert (=> b!1402695 m!1291095))

(declare-fun m!1291097 () Bool)

(assert (=> b!1402696 m!1291097))

(assert (=> b!1402696 m!1291097))

(declare-fun m!1291099 () Bool)

(assert (=> b!1402696 m!1291099))

(declare-fun m!1291101 () Bool)

(assert (=> b!1402696 m!1291101))

(declare-fun m!1291103 () Bool)

(assert (=> b!1402696 m!1291103))

(declare-fun m!1291105 () Bool)

(assert (=> b!1402694 m!1291105))

(assert (=> b!1402691 m!1291085))

(assert (=> b!1402691 m!1291085))

(declare-fun m!1291107 () Bool)

(assert (=> b!1402691 m!1291107))

(declare-fun m!1291109 () Bool)

(assert (=> b!1402688 m!1291109))

(declare-fun m!1291111 () Bool)

(assert (=> start!120514 m!1291111))

(declare-fun m!1291113 () Bool)

(assert (=> start!120514 m!1291113))

(declare-fun m!1291115 () Bool)

(assert (=> b!1402693 m!1291115))

(declare-fun m!1291117 () Bool)

(assert (=> b!1402690 m!1291117))

(assert (=> b!1402690 m!1291117))

(declare-fun m!1291119 () Bool)

(assert (=> b!1402690 m!1291119))

(declare-fun m!1291121 () Bool)

(assert (=> b!1402692 m!1291121))

(assert (=> b!1402687 m!1291085))

(declare-fun m!1291123 () Bool)

(assert (=> b!1402687 m!1291123))

(assert (=> b!1402687 m!1291085))

(declare-fun m!1291125 () Bool)

(assert (=> b!1402687 m!1291125))

(declare-fun m!1291127 () Bool)

(assert (=> b!1402687 m!1291127))

(assert (=> b!1402687 m!1291101))

(declare-fun m!1291129 () Bool)

(assert (=> b!1402687 m!1291129))

(push 1)

