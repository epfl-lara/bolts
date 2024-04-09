; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120470 () Bool)

(assert start!120470)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1402017 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!793942 () Bool)

(declare-datatypes ((array!95797 0))(
  ( (array!95798 (arr!46245 (Array (_ BitVec 32) (_ BitVec 64))) (size!46796 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95797)

(declare-datatypes ((SeekEntryResult!10584 0))(
  ( (MissingZero!10584 (index!44712 (_ BitVec 32))) (Found!10584 (index!44713 (_ BitVec 32))) (Intermediate!10584 (undefined!11396 Bool) (index!44714 (_ BitVec 32)) (x!126342 (_ BitVec 32))) (Undefined!10584) (MissingVacant!10584 (index!44715 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95797 (_ BitVec 32)) SeekEntryResult!10584)

(assert (=> b!1402017 (= e!793942 (= (seekEntryOrOpen!0 (select (arr!46245 a!2901) j!112) a!2901 mask!2840) (Found!10584 j!112)))))

(declare-fun b!1402019 () Bool)

(declare-fun res!940644 () Bool)

(declare-fun e!793941 () Bool)

(assert (=> b!1402019 (=> (not res!940644) (not e!793941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95797 (_ BitVec 32)) Bool)

(assert (=> b!1402019 (= res!940644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402020 () Bool)

(declare-fun e!793938 () Bool)

(declare-fun e!793943 () Bool)

(assert (=> b!1402020 (= e!793938 e!793943)))

(declare-fun res!940638 () Bool)

(assert (=> b!1402020 (=> res!940638 e!793943)))

(declare-fun lt!617354 () SeekEntryResult!10584)

(declare-fun lt!617356 () (_ BitVec 32))

(declare-fun lt!617359 () SeekEntryResult!10584)

(assert (=> b!1402020 (= res!940638 (or (bvslt (x!126342 lt!617354) #b00000000000000000000000000000000) (bvsgt (x!126342 lt!617354) #b01111111111111111111111111111110) (bvslt (x!126342 lt!617359) #b00000000000000000000000000000000) (bvsgt (x!126342 lt!617359) #b01111111111111111111111111111110) (bvslt lt!617356 #b00000000000000000000000000000000) (bvsge lt!617356 (size!46796 a!2901)) (bvslt (index!44714 lt!617354) #b00000000000000000000000000000000) (bvsge (index!44714 lt!617354) (size!46796 a!2901)) (bvslt (index!44714 lt!617359) #b00000000000000000000000000000000) (bvsge (index!44714 lt!617359) (size!46796 a!2901)) (not (= lt!617354 (Intermediate!10584 false (index!44714 lt!617354) (x!126342 lt!617354)))) (not (= lt!617359 (Intermediate!10584 false (index!44714 lt!617359) (x!126342 lt!617359))))))))

(declare-fun e!793940 () Bool)

(assert (=> b!1402020 e!793940))

(declare-fun res!940641 () Bool)

(assert (=> b!1402020 (=> (not res!940641) (not e!793940))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402020 (= res!940641 (and (not (undefined!11396 lt!617359)) (= (index!44714 lt!617359) i!1037) (bvslt (x!126342 lt!617359) (x!126342 lt!617354)) (= (select (store (arr!46245 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44714 lt!617359)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47122 0))(
  ( (Unit!47123) )
))
(declare-fun lt!617357 () Unit!47122)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47122)

(assert (=> b!1402020 (= lt!617357 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617356 (x!126342 lt!617354) (index!44714 lt!617354) (x!126342 lt!617359) (index!44714 lt!617359) (undefined!11396 lt!617359) mask!2840))))

(declare-fun b!1402021 () Bool)

(declare-fun res!940640 () Bool)

(assert (=> b!1402021 (=> (not res!940640) (not e!793941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402021 (= res!940640 (validKeyInArray!0 (select (arr!46245 a!2901) j!112)))))

(declare-fun lt!617355 () (_ BitVec 64))

(declare-fun lt!617358 () array!95797)

(declare-fun b!1402022 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95797 (_ BitVec 32)) SeekEntryResult!10584)

(assert (=> b!1402022 (= e!793940 (= (seekEntryOrOpen!0 lt!617355 lt!617358 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126342 lt!617359) (index!44714 lt!617359) (index!44714 lt!617359) (select (arr!46245 a!2901) j!112) lt!617358 mask!2840)))))

(declare-fun b!1402023 () Bool)

(assert (=> b!1402023 (= e!793943 true)))

(declare-fun lt!617352 () SeekEntryResult!10584)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95797 (_ BitVec 32)) SeekEntryResult!10584)

(assert (=> b!1402023 (= lt!617352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617356 lt!617355 lt!617358 mask!2840))))

(declare-fun b!1402024 () Bool)

(declare-fun e!793937 () Bool)

(assert (=> b!1402024 (= e!793937 e!793938)))

(declare-fun res!940637 () Bool)

(assert (=> b!1402024 (=> res!940637 e!793938)))

(assert (=> b!1402024 (= res!940637 (or (= lt!617354 lt!617359) (not (is-Intermediate!10584 lt!617359))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402024 (= lt!617359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617355 mask!2840) lt!617355 lt!617358 mask!2840))))

(assert (=> b!1402024 (= lt!617355 (select (store (arr!46245 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402024 (= lt!617358 (array!95798 (store (arr!46245 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46796 a!2901)))))

(declare-fun b!1402025 () Bool)

(declare-fun res!940639 () Bool)

(assert (=> b!1402025 (=> (not res!940639) (not e!793941))))

(assert (=> b!1402025 (= res!940639 (validKeyInArray!0 (select (arr!46245 a!2901) i!1037)))))

(declare-fun res!940646 () Bool)

(assert (=> start!120470 (=> (not res!940646) (not e!793941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120470 (= res!940646 (validMask!0 mask!2840))))

(assert (=> start!120470 e!793941))

(assert (=> start!120470 true))

(declare-fun array_inv!35190 (array!95797) Bool)

(assert (=> start!120470 (array_inv!35190 a!2901)))

(declare-fun b!1402018 () Bool)

(assert (=> b!1402018 (= e!793941 (not e!793937))))

(declare-fun res!940642 () Bool)

(assert (=> b!1402018 (=> res!940642 e!793937)))

(assert (=> b!1402018 (= res!940642 (or (not (is-Intermediate!10584 lt!617354)) (undefined!11396 lt!617354)))))

(assert (=> b!1402018 e!793942))

(declare-fun res!940645 () Bool)

(assert (=> b!1402018 (=> (not res!940645) (not e!793942))))

(assert (=> b!1402018 (= res!940645 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!617353 () Unit!47122)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47122)

(assert (=> b!1402018 (= lt!617353 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402018 (= lt!617354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617356 (select (arr!46245 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402018 (= lt!617356 (toIndex!0 (select (arr!46245 a!2901) j!112) mask!2840))))

(declare-fun b!1402026 () Bool)

(declare-fun res!940647 () Bool)

(assert (=> b!1402026 (=> (not res!940647) (not e!793941))))

(assert (=> b!1402026 (= res!940647 (and (= (size!46796 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46796 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46796 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402027 () Bool)

(declare-fun res!940643 () Bool)

(assert (=> b!1402027 (=> (not res!940643) (not e!793941))))

(declare-datatypes ((List!32944 0))(
  ( (Nil!32941) (Cons!32940 (h!34188 (_ BitVec 64)) (t!47645 List!32944)) )
))
(declare-fun arrayNoDuplicates!0 (array!95797 (_ BitVec 32) List!32944) Bool)

(assert (=> b!1402027 (= res!940643 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32941))))

(assert (= (and start!120470 res!940646) b!1402026))

(assert (= (and b!1402026 res!940647) b!1402025))

(assert (= (and b!1402025 res!940639) b!1402021))

(assert (= (and b!1402021 res!940640) b!1402019))

(assert (= (and b!1402019 res!940644) b!1402027))

(assert (= (and b!1402027 res!940643) b!1402018))

(assert (= (and b!1402018 res!940645) b!1402017))

(assert (= (and b!1402018 (not res!940642)) b!1402024))

(assert (= (and b!1402024 (not res!940637)) b!1402020))

(assert (= (and b!1402020 res!940641) b!1402022))

(assert (= (and b!1402020 (not res!940638)) b!1402023))

(declare-fun m!1290081 () Bool)

(assert (=> b!1402018 m!1290081))

(declare-fun m!1290083 () Bool)

(assert (=> b!1402018 m!1290083))

(declare-fun m!1290085 () Bool)

(assert (=> b!1402018 m!1290085))

(assert (=> b!1402018 m!1290081))

(declare-fun m!1290087 () Bool)

(assert (=> b!1402018 m!1290087))

(assert (=> b!1402018 m!1290081))

(declare-fun m!1290089 () Bool)

(assert (=> b!1402018 m!1290089))

(assert (=> b!1402017 m!1290081))

(assert (=> b!1402017 m!1290081))

(declare-fun m!1290091 () Bool)

(assert (=> b!1402017 m!1290091))

(declare-fun m!1290093 () Bool)

(assert (=> b!1402027 m!1290093))

(declare-fun m!1290095 () Bool)

(assert (=> b!1402019 m!1290095))

(assert (=> b!1402021 m!1290081))

(assert (=> b!1402021 m!1290081))

(declare-fun m!1290097 () Bool)

(assert (=> b!1402021 m!1290097))

(declare-fun m!1290099 () Bool)

(assert (=> b!1402022 m!1290099))

(assert (=> b!1402022 m!1290081))

(assert (=> b!1402022 m!1290081))

(declare-fun m!1290101 () Bool)

(assert (=> b!1402022 m!1290101))

(declare-fun m!1290103 () Bool)

(assert (=> b!1402023 m!1290103))

(declare-fun m!1290105 () Bool)

(assert (=> b!1402024 m!1290105))

(assert (=> b!1402024 m!1290105))

(declare-fun m!1290107 () Bool)

(assert (=> b!1402024 m!1290107))

(declare-fun m!1290109 () Bool)

(assert (=> b!1402024 m!1290109))

(declare-fun m!1290111 () Bool)

(assert (=> b!1402024 m!1290111))

(declare-fun m!1290113 () Bool)

(assert (=> b!1402025 m!1290113))

(assert (=> b!1402025 m!1290113))

(declare-fun m!1290115 () Bool)

(assert (=> b!1402025 m!1290115))

(assert (=> b!1402020 m!1290109))

(declare-fun m!1290117 () Bool)

(assert (=> b!1402020 m!1290117))

(declare-fun m!1290119 () Bool)

(assert (=> b!1402020 m!1290119))

(declare-fun m!1290121 () Bool)

(assert (=> start!120470 m!1290121))

(declare-fun m!1290123 () Bool)

(assert (=> start!120470 m!1290123))

(push 1)

