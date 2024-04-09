; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120558 () Bool)

(assert start!120558)

(declare-fun b!1403256 () Bool)

(declare-fun res!941880 () Bool)

(declare-fun e!794576 () Bool)

(assert (=> b!1403256 (=> (not res!941880) (not e!794576))))

(declare-datatypes ((array!95885 0))(
  ( (array!95886 (arr!46289 (Array (_ BitVec 32) (_ BitVec 64))) (size!46840 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95885)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403256 (= res!941880 (validKeyInArray!0 (select (arr!46289 a!2901) i!1037)))))

(declare-fun b!1403257 () Bool)

(declare-fun res!941877 () Bool)

(assert (=> b!1403257 (=> (not res!941877) (not e!794576))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403257 (= res!941877 (validKeyInArray!0 (select (arr!46289 a!2901) j!112)))))

(declare-fun b!1403258 () Bool)

(declare-fun e!794577 () Bool)

(assert (=> b!1403258 (= e!794577 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10628 0))(
  ( (MissingZero!10628 (index!44888 (_ BitVec 32))) (Found!10628 (index!44889 (_ BitVec 32))) (Intermediate!10628 (undefined!11440 Bool) (index!44890 (_ BitVec 32)) (x!126506 (_ BitVec 32))) (Undefined!10628) (MissingVacant!10628 (index!44891 (_ BitVec 32))) )
))
(declare-fun lt!618304 () SeekEntryResult!10628)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95885 (_ BitVec 32)) SeekEntryResult!10628)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403258 (= lt!618304 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46289 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46289 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95886 (store (arr!46289 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46840 a!2901)) mask!2840))))

(declare-fun b!1403259 () Bool)

(assert (=> b!1403259 (= e!794576 (not e!794577))))

(declare-fun res!941883 () Bool)

(assert (=> b!1403259 (=> res!941883 e!794577)))

(declare-fun lt!618302 () SeekEntryResult!10628)

(get-info :version)

(assert (=> b!1403259 (= res!941883 (or (not ((_ is Intermediate!10628) lt!618302)) (undefined!11440 lt!618302)))))

(declare-fun e!794579 () Bool)

(assert (=> b!1403259 e!794579))

(declare-fun res!941882 () Bool)

(assert (=> b!1403259 (=> (not res!941882) (not e!794579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95885 (_ BitVec 32)) Bool)

(assert (=> b!1403259 (= res!941882 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47210 0))(
  ( (Unit!47211) )
))
(declare-fun lt!618303 () Unit!47210)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95885 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47210)

(assert (=> b!1403259 (= lt!618303 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1403259 (= lt!618302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46289 a!2901) j!112) mask!2840) (select (arr!46289 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403261 () Bool)

(declare-fun res!941881 () Bool)

(assert (=> b!1403261 (=> (not res!941881) (not e!794576))))

(assert (=> b!1403261 (= res!941881 (and (= (size!46840 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46840 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46840 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403262 () Bool)

(declare-fun res!941876 () Bool)

(assert (=> b!1403262 (=> (not res!941876) (not e!794576))))

(assert (=> b!1403262 (= res!941876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403263 () Bool)

(declare-fun res!941878 () Bool)

(assert (=> b!1403263 (=> (not res!941878) (not e!794576))))

(declare-datatypes ((List!32988 0))(
  ( (Nil!32985) (Cons!32984 (h!34232 (_ BitVec 64)) (t!47689 List!32988)) )
))
(declare-fun arrayNoDuplicates!0 (array!95885 (_ BitVec 32) List!32988) Bool)

(assert (=> b!1403263 (= res!941878 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32985))))

(declare-fun b!1403260 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95885 (_ BitVec 32)) SeekEntryResult!10628)

(assert (=> b!1403260 (= e!794579 (= (seekEntryOrOpen!0 (select (arr!46289 a!2901) j!112) a!2901 mask!2840) (Found!10628 j!112)))))

(declare-fun res!941879 () Bool)

(assert (=> start!120558 (=> (not res!941879) (not e!794576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120558 (= res!941879 (validMask!0 mask!2840))))

(assert (=> start!120558 e!794576))

(assert (=> start!120558 true))

(declare-fun array_inv!35234 (array!95885) Bool)

(assert (=> start!120558 (array_inv!35234 a!2901)))

(assert (= (and start!120558 res!941879) b!1403261))

(assert (= (and b!1403261 res!941881) b!1403256))

(assert (= (and b!1403256 res!941880) b!1403257))

(assert (= (and b!1403257 res!941877) b!1403262))

(assert (= (and b!1403262 res!941876) b!1403263))

(assert (= (and b!1403263 res!941878) b!1403259))

(assert (= (and b!1403259 res!941882) b!1403260))

(assert (= (and b!1403259 (not res!941883)) b!1403258))

(declare-fun m!1291911 () Bool)

(assert (=> b!1403256 m!1291911))

(assert (=> b!1403256 m!1291911))

(declare-fun m!1291913 () Bool)

(assert (=> b!1403256 m!1291913))

(declare-fun m!1291915 () Bool)

(assert (=> b!1403257 m!1291915))

(assert (=> b!1403257 m!1291915))

(declare-fun m!1291917 () Bool)

(assert (=> b!1403257 m!1291917))

(declare-fun m!1291919 () Bool)

(assert (=> b!1403263 m!1291919))

(assert (=> b!1403260 m!1291915))

(assert (=> b!1403260 m!1291915))

(declare-fun m!1291921 () Bool)

(assert (=> b!1403260 m!1291921))

(assert (=> b!1403259 m!1291915))

(declare-fun m!1291923 () Bool)

(assert (=> b!1403259 m!1291923))

(assert (=> b!1403259 m!1291915))

(declare-fun m!1291925 () Bool)

(assert (=> b!1403259 m!1291925))

(assert (=> b!1403259 m!1291923))

(assert (=> b!1403259 m!1291915))

(declare-fun m!1291927 () Bool)

(assert (=> b!1403259 m!1291927))

(declare-fun m!1291929 () Bool)

(assert (=> b!1403259 m!1291929))

(declare-fun m!1291931 () Bool)

(assert (=> b!1403262 m!1291931))

(declare-fun m!1291933 () Bool)

(assert (=> start!120558 m!1291933))

(declare-fun m!1291935 () Bool)

(assert (=> start!120558 m!1291935))

(declare-fun m!1291937 () Bool)

(assert (=> b!1403258 m!1291937))

(declare-fun m!1291939 () Bool)

(assert (=> b!1403258 m!1291939))

(assert (=> b!1403258 m!1291939))

(declare-fun m!1291941 () Bool)

(assert (=> b!1403258 m!1291941))

(assert (=> b!1403258 m!1291941))

(assert (=> b!1403258 m!1291939))

(declare-fun m!1291943 () Bool)

(assert (=> b!1403258 m!1291943))

(check-sat (not b!1403262) (not b!1403256) (not b!1403263) (not b!1403260) (not b!1403259) (not start!120558) (not b!1403257) (not b!1403258))
