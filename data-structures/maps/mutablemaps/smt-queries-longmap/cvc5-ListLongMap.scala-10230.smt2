; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120472 () Bool)

(assert start!120472)

(declare-fun b!1402050 () Bool)

(declare-fun e!793963 () Bool)

(declare-fun e!793960 () Bool)

(assert (=> b!1402050 (= e!793963 (not e!793960))))

(declare-fun res!940671 () Bool)

(assert (=> b!1402050 (=> res!940671 e!793960)))

(declare-datatypes ((SeekEntryResult!10585 0))(
  ( (MissingZero!10585 (index!44716 (_ BitVec 32))) (Found!10585 (index!44717 (_ BitVec 32))) (Intermediate!10585 (undefined!11397 Bool) (index!44718 (_ BitVec 32)) (x!126351 (_ BitVec 32))) (Undefined!10585) (MissingVacant!10585 (index!44719 (_ BitVec 32))) )
))
(declare-fun lt!617376 () SeekEntryResult!10585)

(assert (=> b!1402050 (= res!940671 (or (not (is-Intermediate!10585 lt!617376)) (undefined!11397 lt!617376)))))

(declare-fun e!793962 () Bool)

(assert (=> b!1402050 e!793962))

(declare-fun res!940672 () Bool)

(assert (=> b!1402050 (=> (not res!940672) (not e!793962))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95799 0))(
  ( (array!95800 (arr!46246 (Array (_ BitVec 32) (_ BitVec 64))) (size!46797 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95799)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95799 (_ BitVec 32)) Bool)

(assert (=> b!1402050 (= res!940672 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47124 0))(
  ( (Unit!47125) )
))
(declare-fun lt!617382 () Unit!47124)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47124)

(assert (=> b!1402050 (= lt!617382 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!617381 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95799 (_ BitVec 32)) SeekEntryResult!10585)

(assert (=> b!1402050 (= lt!617376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617381 (select (arr!46246 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402050 (= lt!617381 (toIndex!0 (select (arr!46246 a!2901) j!112) mask!2840))))

(declare-fun b!1402051 () Bool)

(declare-fun res!940680 () Bool)

(assert (=> b!1402051 (=> (not res!940680) (not e!793963))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402051 (= res!940680 (validKeyInArray!0 (select (arr!46246 a!2901) i!1037)))))

(declare-fun res!940678 () Bool)

(assert (=> start!120472 (=> (not res!940678) (not e!793963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120472 (= res!940678 (validMask!0 mask!2840))))

(assert (=> start!120472 e!793963))

(assert (=> start!120472 true))

(declare-fun array_inv!35191 (array!95799) Bool)

(assert (=> start!120472 (array_inv!35191 a!2901)))

(declare-fun b!1402052 () Bool)

(declare-fun res!940679 () Bool)

(assert (=> b!1402052 (=> (not res!940679) (not e!793963))))

(assert (=> b!1402052 (= res!940679 (validKeyInArray!0 (select (arr!46246 a!2901) j!112)))))

(declare-fun b!1402053 () Bool)

(declare-fun res!940673 () Bool)

(assert (=> b!1402053 (=> (not res!940673) (not e!793963))))

(declare-datatypes ((List!32945 0))(
  ( (Nil!32942) (Cons!32941 (h!34189 (_ BitVec 64)) (t!47646 List!32945)) )
))
(declare-fun arrayNoDuplicates!0 (array!95799 (_ BitVec 32) List!32945) Bool)

(assert (=> b!1402053 (= res!940673 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32942))))

(declare-fun b!1402054 () Bool)

(declare-fun e!793958 () Bool)

(assert (=> b!1402054 (= e!793960 e!793958)))

(declare-fun res!940674 () Bool)

(assert (=> b!1402054 (=> res!940674 e!793958)))

(declare-fun lt!617383 () SeekEntryResult!10585)

(assert (=> b!1402054 (= res!940674 (or (= lt!617376 lt!617383) (not (is-Intermediate!10585 lt!617383))))))

(declare-fun lt!617379 () (_ BitVec 64))

(declare-fun lt!617380 () array!95799)

(assert (=> b!1402054 (= lt!617383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617379 mask!2840) lt!617379 lt!617380 mask!2840))))

(assert (=> b!1402054 (= lt!617379 (select (store (arr!46246 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402054 (= lt!617380 (array!95800 (store (arr!46246 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46797 a!2901)))))

(declare-fun b!1402055 () Bool)

(declare-fun e!793961 () Bool)

(assert (=> b!1402055 (= e!793961 true)))

(declare-fun lt!617378 () SeekEntryResult!10585)

(assert (=> b!1402055 (= lt!617378 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617381 lt!617379 lt!617380 mask!2840))))

(declare-fun b!1402056 () Bool)

(assert (=> b!1402056 (= e!793958 e!793961)))

(declare-fun res!940670 () Bool)

(assert (=> b!1402056 (=> res!940670 e!793961)))

(assert (=> b!1402056 (= res!940670 (or (bvslt (x!126351 lt!617376) #b00000000000000000000000000000000) (bvsgt (x!126351 lt!617376) #b01111111111111111111111111111110) (bvslt (x!126351 lt!617383) #b00000000000000000000000000000000) (bvsgt (x!126351 lt!617383) #b01111111111111111111111111111110) (bvslt lt!617381 #b00000000000000000000000000000000) (bvsge lt!617381 (size!46797 a!2901)) (bvslt (index!44718 lt!617376) #b00000000000000000000000000000000) (bvsge (index!44718 lt!617376) (size!46797 a!2901)) (bvslt (index!44718 lt!617383) #b00000000000000000000000000000000) (bvsge (index!44718 lt!617383) (size!46797 a!2901)) (not (= lt!617376 (Intermediate!10585 false (index!44718 lt!617376) (x!126351 lt!617376)))) (not (= lt!617383 (Intermediate!10585 false (index!44718 lt!617383) (x!126351 lt!617383))))))))

(declare-fun e!793959 () Bool)

(assert (=> b!1402056 e!793959))

(declare-fun res!940675 () Bool)

(assert (=> b!1402056 (=> (not res!940675) (not e!793959))))

(assert (=> b!1402056 (= res!940675 (and (not (undefined!11397 lt!617383)) (= (index!44718 lt!617383) i!1037) (bvslt (x!126351 lt!617383) (x!126351 lt!617376)) (= (select (store (arr!46246 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44718 lt!617383)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!617377 () Unit!47124)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47124)

(assert (=> b!1402056 (= lt!617377 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617381 (x!126351 lt!617376) (index!44718 lt!617376) (x!126351 lt!617383) (index!44718 lt!617383) (undefined!11397 lt!617383) mask!2840))))

(declare-fun b!1402057 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95799 (_ BitVec 32)) SeekEntryResult!10585)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95799 (_ BitVec 32)) SeekEntryResult!10585)

(assert (=> b!1402057 (= e!793959 (= (seekEntryOrOpen!0 lt!617379 lt!617380 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126351 lt!617383) (index!44718 lt!617383) (index!44718 lt!617383) (select (arr!46246 a!2901) j!112) lt!617380 mask!2840)))))

(declare-fun b!1402058 () Bool)

(declare-fun res!940677 () Bool)

(assert (=> b!1402058 (=> (not res!940677) (not e!793963))))

(assert (=> b!1402058 (= res!940677 (and (= (size!46797 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46797 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46797 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402059 () Bool)

(declare-fun res!940676 () Bool)

(assert (=> b!1402059 (=> (not res!940676) (not e!793963))))

(assert (=> b!1402059 (= res!940676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402060 () Bool)

(assert (=> b!1402060 (= e!793962 (= (seekEntryOrOpen!0 (select (arr!46246 a!2901) j!112) a!2901 mask!2840) (Found!10585 j!112)))))

(assert (= (and start!120472 res!940678) b!1402058))

(assert (= (and b!1402058 res!940677) b!1402051))

(assert (= (and b!1402051 res!940680) b!1402052))

(assert (= (and b!1402052 res!940679) b!1402059))

(assert (= (and b!1402059 res!940676) b!1402053))

(assert (= (and b!1402053 res!940673) b!1402050))

(assert (= (and b!1402050 res!940672) b!1402060))

(assert (= (and b!1402050 (not res!940671)) b!1402054))

(assert (= (and b!1402054 (not res!940674)) b!1402056))

(assert (= (and b!1402056 res!940675) b!1402057))

(assert (= (and b!1402056 (not res!940670)) b!1402055))

(declare-fun m!1290125 () Bool)

(assert (=> b!1402054 m!1290125))

(assert (=> b!1402054 m!1290125))

(declare-fun m!1290127 () Bool)

(assert (=> b!1402054 m!1290127))

(declare-fun m!1290129 () Bool)

(assert (=> b!1402054 m!1290129))

(declare-fun m!1290131 () Bool)

(assert (=> b!1402054 m!1290131))

(declare-fun m!1290133 () Bool)

(assert (=> b!1402055 m!1290133))

(declare-fun m!1290135 () Bool)

(assert (=> b!1402050 m!1290135))

(declare-fun m!1290137 () Bool)

(assert (=> b!1402050 m!1290137))

(assert (=> b!1402050 m!1290135))

(assert (=> b!1402050 m!1290135))

(declare-fun m!1290139 () Bool)

(assert (=> b!1402050 m!1290139))

(declare-fun m!1290141 () Bool)

(assert (=> b!1402050 m!1290141))

(declare-fun m!1290143 () Bool)

(assert (=> b!1402050 m!1290143))

(declare-fun m!1290145 () Bool)

(assert (=> b!1402053 m!1290145))

(declare-fun m!1290147 () Bool)

(assert (=> b!1402051 m!1290147))

(assert (=> b!1402051 m!1290147))

(declare-fun m!1290149 () Bool)

(assert (=> b!1402051 m!1290149))

(assert (=> b!1402052 m!1290135))

(assert (=> b!1402052 m!1290135))

(declare-fun m!1290151 () Bool)

(assert (=> b!1402052 m!1290151))

(declare-fun m!1290153 () Bool)

(assert (=> start!120472 m!1290153))

(declare-fun m!1290155 () Bool)

(assert (=> start!120472 m!1290155))

(assert (=> b!1402060 m!1290135))

(assert (=> b!1402060 m!1290135))

(declare-fun m!1290157 () Bool)

(assert (=> b!1402060 m!1290157))

(assert (=> b!1402056 m!1290129))

(declare-fun m!1290159 () Bool)

(assert (=> b!1402056 m!1290159))

(declare-fun m!1290161 () Bool)

(assert (=> b!1402056 m!1290161))

(declare-fun m!1290163 () Bool)

(assert (=> b!1402057 m!1290163))

(assert (=> b!1402057 m!1290135))

(assert (=> b!1402057 m!1290135))

(declare-fun m!1290165 () Bool)

(assert (=> b!1402057 m!1290165))

(declare-fun m!1290167 () Bool)

(assert (=> b!1402059 m!1290167))

(push 1)

