; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120414 () Bool)

(assert start!120414)

(declare-fun b!1401093 () Bool)

(declare-fun res!939716 () Bool)

(declare-fun e!793350 () Bool)

(assert (=> b!1401093 (=> (not res!939716) (not e!793350))))

(declare-datatypes ((array!95741 0))(
  ( (array!95742 (arr!46217 (Array (_ BitVec 32) (_ BitVec 64))) (size!46768 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95741)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1401093 (= res!939716 (and (= (size!46768 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46768 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46768 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401094 () Bool)

(declare-fun e!793352 () Bool)

(declare-fun e!793351 () Bool)

(assert (=> b!1401094 (= e!793352 e!793351)))

(declare-fun res!939723 () Bool)

(assert (=> b!1401094 (=> res!939723 e!793351)))

(declare-datatypes ((SeekEntryResult!10556 0))(
  ( (MissingZero!10556 (index!44600 (_ BitVec 32))) (Found!10556 (index!44601 (_ BitVec 32))) (Intermediate!10556 (undefined!11368 Bool) (index!44602 (_ BitVec 32)) (x!126242 (_ BitVec 32))) (Undefined!10556) (MissingVacant!10556 (index!44603 (_ BitVec 32))) )
))
(declare-fun lt!616684 () SeekEntryResult!10556)

(declare-fun lt!616683 () SeekEntryResult!10556)

(get-info :version)

(assert (=> b!1401094 (= res!939723 (or (= lt!616684 lt!616683) (not ((_ is Intermediate!10556) lt!616683))))))

(declare-fun lt!616682 () array!95741)

(declare-fun lt!616680 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95741 (_ BitVec 32)) SeekEntryResult!10556)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401094 (= lt!616683 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616680 mask!2840) lt!616680 lt!616682 mask!2840))))

(assert (=> b!1401094 (= lt!616680 (select (store (arr!46217 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401094 (= lt!616682 (array!95742 (store (arr!46217 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46768 a!2901)))))

(declare-fun b!1401095 () Bool)

(assert (=> b!1401095 (= e!793350 (not e!793352))))

(declare-fun res!939718 () Bool)

(assert (=> b!1401095 (=> res!939718 e!793352)))

(assert (=> b!1401095 (= res!939718 (or (not ((_ is Intermediate!10556) lt!616684)) (undefined!11368 lt!616684)))))

(declare-fun e!793353 () Bool)

(assert (=> b!1401095 e!793353))

(declare-fun res!939722 () Bool)

(assert (=> b!1401095 (=> (not res!939722) (not e!793353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95741 (_ BitVec 32)) Bool)

(assert (=> b!1401095 (= res!939722 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47066 0))(
  ( (Unit!47067) )
))
(declare-fun lt!616685 () Unit!47066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47066)

(assert (=> b!1401095 (= lt!616685 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616687 () (_ BitVec 32))

(assert (=> b!1401095 (= lt!616684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616687 (select (arr!46217 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401095 (= lt!616687 (toIndex!0 (select (arr!46217 a!2901) j!112) mask!2840))))

(declare-fun b!1401096 () Bool)

(declare-fun e!793355 () Bool)

(assert (=> b!1401096 (= e!793351 e!793355)))

(declare-fun res!939721 () Bool)

(assert (=> b!1401096 (=> res!939721 e!793355)))

(assert (=> b!1401096 (= res!939721 (or (bvslt (x!126242 lt!616684) #b00000000000000000000000000000000) (bvsgt (x!126242 lt!616684) #b01111111111111111111111111111110) (bvslt (x!126242 lt!616683) #b00000000000000000000000000000000) (bvsgt (x!126242 lt!616683) #b01111111111111111111111111111110) (bvslt lt!616687 #b00000000000000000000000000000000) (bvsge lt!616687 (size!46768 a!2901)) (bvslt (index!44602 lt!616684) #b00000000000000000000000000000000) (bvsge (index!44602 lt!616684) (size!46768 a!2901)) (bvslt (index!44602 lt!616683) #b00000000000000000000000000000000) (bvsge (index!44602 lt!616683) (size!46768 a!2901)) (not (= lt!616684 (Intermediate!10556 false (index!44602 lt!616684) (x!126242 lt!616684)))) (not (= lt!616683 (Intermediate!10556 false (index!44602 lt!616683) (x!126242 lt!616683))))))))

(declare-fun e!793354 () Bool)

(assert (=> b!1401096 e!793354))

(declare-fun res!939715 () Bool)

(assert (=> b!1401096 (=> (not res!939715) (not e!793354))))

(assert (=> b!1401096 (= res!939715 (and (not (undefined!11368 lt!616683)) (= (index!44602 lt!616683) i!1037) (bvslt (x!126242 lt!616683) (x!126242 lt!616684)) (= (select (store (arr!46217 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44602 lt!616683)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616681 () Unit!47066)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47066)

(assert (=> b!1401096 (= lt!616681 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616687 (x!126242 lt!616684) (index!44602 lt!616684) (x!126242 lt!616683) (index!44602 lt!616683) (undefined!11368 lt!616683) mask!2840))))

(declare-fun b!1401097 () Bool)

(declare-fun res!939713 () Bool)

(assert (=> b!1401097 (=> (not res!939713) (not e!793350))))

(declare-datatypes ((List!32916 0))(
  ( (Nil!32913) (Cons!32912 (h!34160 (_ BitVec 64)) (t!47617 List!32916)) )
))
(declare-fun arrayNoDuplicates!0 (array!95741 (_ BitVec 32) List!32916) Bool)

(assert (=> b!1401097 (= res!939713 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32913))))

(declare-fun res!939719 () Bool)

(assert (=> start!120414 (=> (not res!939719) (not e!793350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120414 (= res!939719 (validMask!0 mask!2840))))

(assert (=> start!120414 e!793350))

(assert (=> start!120414 true))

(declare-fun array_inv!35162 (array!95741) Bool)

(assert (=> start!120414 (array_inv!35162 a!2901)))

(declare-fun b!1401098 () Bool)

(declare-fun res!939717 () Bool)

(assert (=> b!1401098 (=> (not res!939717) (not e!793350))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401098 (= res!939717 (validKeyInArray!0 (select (arr!46217 a!2901) j!112)))))

(declare-fun b!1401099 () Bool)

(declare-fun res!939714 () Bool)

(assert (=> b!1401099 (=> (not res!939714) (not e!793350))))

(assert (=> b!1401099 (= res!939714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401100 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95741 (_ BitVec 32)) SeekEntryResult!10556)

(assert (=> b!1401100 (= e!793353 (= (seekEntryOrOpen!0 (select (arr!46217 a!2901) j!112) a!2901 mask!2840) (Found!10556 j!112)))))

(declare-fun b!1401101 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95741 (_ BitVec 32)) SeekEntryResult!10556)

(assert (=> b!1401101 (= e!793354 (= (seekEntryOrOpen!0 lt!616680 lt!616682 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126242 lt!616683) (index!44602 lt!616683) (index!44602 lt!616683) (select (arr!46217 a!2901) j!112) lt!616682 mask!2840)))))

(declare-fun b!1401102 () Bool)

(declare-fun res!939720 () Bool)

(assert (=> b!1401102 (=> (not res!939720) (not e!793350))))

(assert (=> b!1401102 (= res!939720 (validKeyInArray!0 (select (arr!46217 a!2901) i!1037)))))

(declare-fun b!1401103 () Bool)

(assert (=> b!1401103 (= e!793355 true)))

(declare-fun lt!616686 () SeekEntryResult!10556)

(assert (=> b!1401103 (= lt!616686 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616687 lt!616680 lt!616682 mask!2840))))

(assert (= (and start!120414 res!939719) b!1401093))

(assert (= (and b!1401093 res!939716) b!1401102))

(assert (= (and b!1401102 res!939720) b!1401098))

(assert (= (and b!1401098 res!939717) b!1401099))

(assert (= (and b!1401099 res!939714) b!1401097))

(assert (= (and b!1401097 res!939713) b!1401095))

(assert (= (and b!1401095 res!939722) b!1401100))

(assert (= (and b!1401095 (not res!939718)) b!1401094))

(assert (= (and b!1401094 (not res!939723)) b!1401096))

(assert (= (and b!1401096 res!939715) b!1401101))

(assert (= (and b!1401096 (not res!939721)) b!1401103))

(declare-fun m!1288849 () Bool)

(assert (=> b!1401096 m!1288849))

(declare-fun m!1288851 () Bool)

(assert (=> b!1401096 m!1288851))

(declare-fun m!1288853 () Bool)

(assert (=> b!1401096 m!1288853))

(declare-fun m!1288855 () Bool)

(assert (=> b!1401101 m!1288855))

(declare-fun m!1288857 () Bool)

(assert (=> b!1401101 m!1288857))

(assert (=> b!1401101 m!1288857))

(declare-fun m!1288859 () Bool)

(assert (=> b!1401101 m!1288859))

(declare-fun m!1288861 () Bool)

(assert (=> b!1401097 m!1288861))

(assert (=> b!1401100 m!1288857))

(assert (=> b!1401100 m!1288857))

(declare-fun m!1288863 () Bool)

(assert (=> b!1401100 m!1288863))

(declare-fun m!1288865 () Bool)

(assert (=> b!1401103 m!1288865))

(declare-fun m!1288867 () Bool)

(assert (=> b!1401102 m!1288867))

(assert (=> b!1401102 m!1288867))

(declare-fun m!1288869 () Bool)

(assert (=> b!1401102 m!1288869))

(assert (=> b!1401095 m!1288857))

(declare-fun m!1288871 () Bool)

(assert (=> b!1401095 m!1288871))

(assert (=> b!1401095 m!1288857))

(declare-fun m!1288873 () Bool)

(assert (=> b!1401095 m!1288873))

(assert (=> b!1401095 m!1288857))

(declare-fun m!1288875 () Bool)

(assert (=> b!1401095 m!1288875))

(declare-fun m!1288877 () Bool)

(assert (=> b!1401095 m!1288877))

(declare-fun m!1288879 () Bool)

(assert (=> b!1401094 m!1288879))

(assert (=> b!1401094 m!1288879))

(declare-fun m!1288881 () Bool)

(assert (=> b!1401094 m!1288881))

(assert (=> b!1401094 m!1288849))

(declare-fun m!1288883 () Bool)

(assert (=> b!1401094 m!1288883))

(declare-fun m!1288885 () Bool)

(assert (=> start!120414 m!1288885))

(declare-fun m!1288887 () Bool)

(assert (=> start!120414 m!1288887))

(declare-fun m!1288889 () Bool)

(assert (=> b!1401099 m!1288889))

(assert (=> b!1401098 m!1288857))

(assert (=> b!1401098 m!1288857))

(declare-fun m!1288891 () Bool)

(assert (=> b!1401098 m!1288891))

(check-sat (not b!1401100) (not b!1401094) (not start!120414) (not b!1401102) (not b!1401099) (not b!1401103) (not b!1401097) (not b!1401095) (not b!1401101) (not b!1401098) (not b!1401096))
(check-sat)
