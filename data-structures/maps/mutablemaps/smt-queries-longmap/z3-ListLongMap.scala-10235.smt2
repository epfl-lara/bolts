; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120504 () Bool)

(assert start!120504)

(declare-fun b!1402537 () Bool)

(declare-fun res!941157 () Bool)

(declare-fun e!794215 () Bool)

(assert (=> b!1402537 (=> (not res!941157) (not e!794215))))

(declare-datatypes ((array!95831 0))(
  ( (array!95832 (arr!46262 (Array (_ BitVec 32) (_ BitVec 64))) (size!46813 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95831)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402537 (= res!941157 (validKeyInArray!0 (select (arr!46262 a!2901) j!112)))))

(declare-fun b!1402538 () Bool)

(declare-fun res!941159 () Bool)

(declare-fun e!794213 () Bool)

(assert (=> b!1402538 (=> res!941159 e!794213)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10601 0))(
  ( (MissingZero!10601 (index!44780 (_ BitVec 32))) (Found!10601 (index!44781 (_ BitVec 32))) (Intermediate!10601 (undefined!11413 Bool) (index!44782 (_ BitVec 32)) (x!126407 (_ BitVec 32))) (Undefined!10601) (MissingVacant!10601 (index!44783 (_ BitVec 32))) )
))
(declare-fun lt!617845 () SeekEntryResult!10601)

(declare-fun lt!617846 () (_ BitVec 32))

(declare-fun lt!617851 () array!95831)

(declare-fun lt!617849 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95831 (_ BitVec 32)) SeekEntryResult!10601)

(assert (=> b!1402538 (= res!941159 (not (= lt!617845 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617846 lt!617849 lt!617851 mask!2840))))))

(declare-fun b!1402539 () Bool)

(declare-fun e!794212 () Bool)

(declare-fun e!794216 () Bool)

(assert (=> b!1402539 (= e!794212 e!794216)))

(declare-fun res!941163 () Bool)

(assert (=> b!1402539 (=> res!941163 e!794216)))

(declare-fun lt!617844 () SeekEntryResult!10601)

(get-info :version)

(assert (=> b!1402539 (= res!941163 (or (= lt!617844 lt!617845) (not ((_ is Intermediate!10601) lt!617845))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402539 (= lt!617845 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617849 mask!2840) lt!617849 lt!617851 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402539 (= lt!617849 (select (store (arr!46262 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402539 (= lt!617851 (array!95832 (store (arr!46262 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46813 a!2901)))))

(declare-fun b!1402540 () Bool)

(declare-fun res!941165 () Bool)

(assert (=> b!1402540 (=> (not res!941165) (not e!794215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95831 (_ BitVec 32)) Bool)

(assert (=> b!1402540 (= res!941165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402541 () Bool)

(declare-fun res!941161 () Bool)

(assert (=> b!1402541 (=> (not res!941161) (not e!794215))))

(assert (=> b!1402541 (= res!941161 (validKeyInArray!0 (select (arr!46262 a!2901) i!1037)))))

(declare-fun b!1402542 () Bool)

(assert (=> b!1402542 (= e!794215 (not e!794212))))

(declare-fun res!941160 () Bool)

(assert (=> b!1402542 (=> res!941160 e!794212)))

(assert (=> b!1402542 (= res!941160 (or (not ((_ is Intermediate!10601) lt!617844)) (undefined!11413 lt!617844)))))

(declare-fun lt!617847 () SeekEntryResult!10601)

(assert (=> b!1402542 (= lt!617847 (Found!10601 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95831 (_ BitVec 32)) SeekEntryResult!10601)

(assert (=> b!1402542 (= lt!617847 (seekEntryOrOpen!0 (select (arr!46262 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402542 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47156 0))(
  ( (Unit!47157) )
))
(declare-fun lt!617848 () Unit!47156)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95831 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47156)

(assert (=> b!1402542 (= lt!617848 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402542 (= lt!617844 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617846 (select (arr!46262 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402542 (= lt!617846 (toIndex!0 (select (arr!46262 a!2901) j!112) mask!2840))))

(declare-fun res!941164 () Bool)

(assert (=> start!120504 (=> (not res!941164) (not e!794215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120504 (= res!941164 (validMask!0 mask!2840))))

(assert (=> start!120504 e!794215))

(assert (=> start!120504 true))

(declare-fun array_inv!35207 (array!95831) Bool)

(assert (=> start!120504 (array_inv!35207 a!2901)))

(declare-fun b!1402543 () Bool)

(assert (=> b!1402543 (= e!794213 true)))

(declare-fun lt!617843 () SeekEntryResult!10601)

(assert (=> b!1402543 (= lt!617847 lt!617843)))

(declare-fun lt!617850 () Unit!47156)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95831 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47156)

(assert (=> b!1402543 (= lt!617850 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617846 (x!126407 lt!617844) (index!44782 lt!617844) (x!126407 lt!617845) (index!44782 lt!617845) mask!2840))))

(declare-fun b!1402544 () Bool)

(assert (=> b!1402544 (= e!794216 e!794213)))

(declare-fun res!941166 () Bool)

(assert (=> b!1402544 (=> res!941166 e!794213)))

(assert (=> b!1402544 (= res!941166 (or (bvslt (x!126407 lt!617844) #b00000000000000000000000000000000) (bvsgt (x!126407 lt!617844) #b01111111111111111111111111111110) (bvslt (x!126407 lt!617845) #b00000000000000000000000000000000) (bvsgt (x!126407 lt!617845) #b01111111111111111111111111111110) (bvslt lt!617846 #b00000000000000000000000000000000) (bvsge lt!617846 (size!46813 a!2901)) (bvslt (index!44782 lt!617844) #b00000000000000000000000000000000) (bvsge (index!44782 lt!617844) (size!46813 a!2901)) (bvslt (index!44782 lt!617845) #b00000000000000000000000000000000) (bvsge (index!44782 lt!617845) (size!46813 a!2901)) (not (= lt!617844 (Intermediate!10601 false (index!44782 lt!617844) (x!126407 lt!617844)))) (not (= lt!617845 (Intermediate!10601 false (index!44782 lt!617845) (x!126407 lt!617845))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95831 (_ BitVec 32)) SeekEntryResult!10601)

(assert (=> b!1402544 (= lt!617843 (seekKeyOrZeroReturnVacant!0 (x!126407 lt!617845) (index!44782 lt!617845) (index!44782 lt!617845) (select (arr!46262 a!2901) j!112) lt!617851 mask!2840))))

(assert (=> b!1402544 (= lt!617843 (seekEntryOrOpen!0 lt!617849 lt!617851 mask!2840))))

(assert (=> b!1402544 (and (not (undefined!11413 lt!617845)) (= (index!44782 lt!617845) i!1037) (bvslt (x!126407 lt!617845) (x!126407 lt!617844)) (= (select (store (arr!46262 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44782 lt!617845)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!617842 () Unit!47156)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95831 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47156)

(assert (=> b!1402544 (= lt!617842 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617846 (x!126407 lt!617844) (index!44782 lt!617844) (x!126407 lt!617845) (index!44782 lt!617845) (undefined!11413 lt!617845) mask!2840))))

(declare-fun b!1402545 () Bool)

(declare-fun res!941158 () Bool)

(assert (=> b!1402545 (=> (not res!941158) (not e!794215))))

(assert (=> b!1402545 (= res!941158 (and (= (size!46813 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46813 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46813 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402546 () Bool)

(declare-fun res!941162 () Bool)

(assert (=> b!1402546 (=> (not res!941162) (not e!794215))))

(declare-datatypes ((List!32961 0))(
  ( (Nil!32958) (Cons!32957 (h!34205 (_ BitVec 64)) (t!47662 List!32961)) )
))
(declare-fun arrayNoDuplicates!0 (array!95831 (_ BitVec 32) List!32961) Bool)

(assert (=> b!1402546 (= res!941162 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32958))))

(assert (= (and start!120504 res!941164) b!1402545))

(assert (= (and b!1402545 res!941158) b!1402541))

(assert (= (and b!1402541 res!941161) b!1402537))

(assert (= (and b!1402537 res!941157) b!1402540))

(assert (= (and b!1402540 res!941165) b!1402546))

(assert (= (and b!1402546 res!941162) b!1402542))

(assert (= (and b!1402542 (not res!941160)) b!1402539))

(assert (= (and b!1402539 (not res!941163)) b!1402544))

(assert (= (and b!1402544 (not res!941166)) b!1402538))

(assert (= (and b!1402538 (not res!941159)) b!1402543))

(declare-fun m!1290855 () Bool)

(assert (=> b!1402546 m!1290855))

(declare-fun m!1290857 () Bool)

(assert (=> b!1402542 m!1290857))

(declare-fun m!1290859 () Bool)

(assert (=> b!1402542 m!1290859))

(assert (=> b!1402542 m!1290857))

(declare-fun m!1290861 () Bool)

(assert (=> b!1402542 m!1290861))

(assert (=> b!1402542 m!1290857))

(declare-fun m!1290863 () Bool)

(assert (=> b!1402542 m!1290863))

(assert (=> b!1402542 m!1290857))

(declare-fun m!1290865 () Bool)

(assert (=> b!1402542 m!1290865))

(declare-fun m!1290867 () Bool)

(assert (=> b!1402542 m!1290867))

(declare-fun m!1290869 () Bool)

(assert (=> b!1402539 m!1290869))

(assert (=> b!1402539 m!1290869))

(declare-fun m!1290871 () Bool)

(assert (=> b!1402539 m!1290871))

(declare-fun m!1290873 () Bool)

(assert (=> b!1402539 m!1290873))

(declare-fun m!1290875 () Bool)

(assert (=> b!1402539 m!1290875))

(assert (=> b!1402544 m!1290857))

(declare-fun m!1290877 () Bool)

(assert (=> b!1402544 m!1290877))

(declare-fun m!1290879 () Bool)

(assert (=> b!1402544 m!1290879))

(declare-fun m!1290881 () Bool)

(assert (=> b!1402544 m!1290881))

(assert (=> b!1402544 m!1290857))

(declare-fun m!1290883 () Bool)

(assert (=> b!1402544 m!1290883))

(assert (=> b!1402544 m!1290873))

(declare-fun m!1290885 () Bool)

(assert (=> b!1402541 m!1290885))

(assert (=> b!1402541 m!1290885))

(declare-fun m!1290887 () Bool)

(assert (=> b!1402541 m!1290887))

(declare-fun m!1290889 () Bool)

(assert (=> b!1402543 m!1290889))

(assert (=> b!1402537 m!1290857))

(assert (=> b!1402537 m!1290857))

(declare-fun m!1290891 () Bool)

(assert (=> b!1402537 m!1290891))

(declare-fun m!1290893 () Bool)

(assert (=> b!1402540 m!1290893))

(declare-fun m!1290895 () Bool)

(assert (=> b!1402538 m!1290895))

(declare-fun m!1290897 () Bool)

(assert (=> start!120504 m!1290897))

(declare-fun m!1290899 () Bool)

(assert (=> start!120504 m!1290899))

(check-sat (not b!1402544) (not b!1402546) (not b!1402538) (not b!1402540) (not b!1402542) (not b!1402539) (not start!120504) (not b!1402537) (not b!1402541) (not b!1402543))
(check-sat)
