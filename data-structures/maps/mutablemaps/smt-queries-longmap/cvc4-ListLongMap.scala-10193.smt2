; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120128 () Bool)

(assert start!120128)

(declare-fun b!1398062 () Bool)

(declare-fun e!791507 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1398062 (= e!791507 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-datatypes ((array!95575 0))(
  ( (array!95576 (arr!46137 (Array (_ BitVec 32) (_ BitVec 64))) (size!46688 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95575)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10476 0))(
  ( (MissingZero!10476 (index!44274 (_ BitVec 32))) (Found!10476 (index!44275 (_ BitVec 32))) (Intermediate!10476 (undefined!11288 Bool) (index!44276 (_ BitVec 32)) (x!125925 (_ BitVec 32))) (Undefined!10476) (MissingVacant!10476 (index!44277 (_ BitVec 32))) )
))
(declare-fun lt!614678 () SeekEntryResult!10476)

(declare-fun lt!614679 () SeekEntryResult!10476)

(assert (=> b!1398062 (and (not (undefined!11288 lt!614678)) (= (index!44276 lt!614678) i!1037) (bvslt (x!125925 lt!614678) (x!125925 lt!614679)) (= (select (store (arr!46137 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44276 lt!614678)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!46906 0))(
  ( (Unit!46907) )
))
(declare-fun lt!614675 () Unit!46906)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lt!614680 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95575 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46906)

(assert (=> b!1398062 (= lt!614675 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614680 (x!125925 lt!614679) (index!44276 lt!614679) (x!125925 lt!614678) (index!44276 lt!614678) (undefined!11288 lt!614678) mask!2840))))

(declare-fun b!1398063 () Bool)

(declare-fun res!937088 () Bool)

(declare-fun e!791509 () Bool)

(assert (=> b!1398063 (=> (not res!937088) (not e!791509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95575 (_ BitVec 32)) Bool)

(assert (=> b!1398063 (= res!937088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398064 () Bool)

(declare-fun res!937086 () Bool)

(assert (=> b!1398064 (=> (not res!937086) (not e!791509))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398064 (= res!937086 (validKeyInArray!0 (select (arr!46137 a!2901) i!1037)))))

(declare-fun e!791510 () Bool)

(declare-fun b!1398065 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95575 (_ BitVec 32)) SeekEntryResult!10476)

(assert (=> b!1398065 (= e!791510 (= (seekEntryOrOpen!0 (select (arr!46137 a!2901) j!112) a!2901 mask!2840) (Found!10476 j!112)))))

(declare-fun b!1398066 () Bool)

(declare-fun res!937087 () Bool)

(assert (=> b!1398066 (=> (not res!937087) (not e!791509))))

(assert (=> b!1398066 (= res!937087 (validKeyInArray!0 (select (arr!46137 a!2901) j!112)))))

(declare-fun b!1398067 () Bool)

(declare-fun e!791508 () Bool)

(assert (=> b!1398067 (= e!791508 e!791507)))

(declare-fun res!937091 () Bool)

(assert (=> b!1398067 (=> res!937091 e!791507)))

(assert (=> b!1398067 (= res!937091 (or (= lt!614679 lt!614678) (not (is-Intermediate!10476 lt!614678))))))

(declare-fun lt!614677 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95575 (_ BitVec 32)) SeekEntryResult!10476)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398067 (= lt!614678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614677 mask!2840) lt!614677 (array!95576 (store (arr!46137 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46688 a!2901)) mask!2840))))

(assert (=> b!1398067 (= lt!614677 (select (store (arr!46137 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun res!937085 () Bool)

(assert (=> start!120128 (=> (not res!937085) (not e!791509))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120128 (= res!937085 (validMask!0 mask!2840))))

(assert (=> start!120128 e!791509))

(assert (=> start!120128 true))

(declare-fun array_inv!35082 (array!95575) Bool)

(assert (=> start!120128 (array_inv!35082 a!2901)))

(declare-fun b!1398068 () Bool)

(assert (=> b!1398068 (= e!791509 (not e!791508))))

(declare-fun res!937090 () Bool)

(assert (=> b!1398068 (=> res!937090 e!791508)))

(assert (=> b!1398068 (= res!937090 (or (not (is-Intermediate!10476 lt!614679)) (undefined!11288 lt!614679)))))

(assert (=> b!1398068 e!791510))

(declare-fun res!937092 () Bool)

(assert (=> b!1398068 (=> (not res!937092) (not e!791510))))

(assert (=> b!1398068 (= res!937092 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!614676 () Unit!46906)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95575 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46906)

(assert (=> b!1398068 (= lt!614676 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1398068 (= lt!614679 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614680 (select (arr!46137 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398068 (= lt!614680 (toIndex!0 (select (arr!46137 a!2901) j!112) mask!2840))))

(declare-fun b!1398069 () Bool)

(declare-fun res!937084 () Bool)

(assert (=> b!1398069 (=> (not res!937084) (not e!791509))))

(declare-datatypes ((List!32836 0))(
  ( (Nil!32833) (Cons!32832 (h!34074 (_ BitVec 64)) (t!47537 List!32836)) )
))
(declare-fun arrayNoDuplicates!0 (array!95575 (_ BitVec 32) List!32836) Bool)

(assert (=> b!1398069 (= res!937084 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32833))))

(declare-fun b!1398070 () Bool)

(declare-fun res!937089 () Bool)

(assert (=> b!1398070 (=> (not res!937089) (not e!791509))))

(assert (=> b!1398070 (= res!937089 (and (= (size!46688 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46688 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46688 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120128 res!937085) b!1398070))

(assert (= (and b!1398070 res!937089) b!1398064))

(assert (= (and b!1398064 res!937086) b!1398066))

(assert (= (and b!1398066 res!937087) b!1398063))

(assert (= (and b!1398063 res!937088) b!1398069))

(assert (= (and b!1398069 res!937084) b!1398068))

(assert (= (and b!1398068 res!937092) b!1398065))

(assert (= (and b!1398068 (not res!937090)) b!1398067))

(assert (= (and b!1398067 (not res!937091)) b!1398062))

(declare-fun m!1285137 () Bool)

(assert (=> b!1398063 m!1285137))

(declare-fun m!1285139 () Bool)

(assert (=> b!1398064 m!1285139))

(assert (=> b!1398064 m!1285139))

(declare-fun m!1285141 () Bool)

(assert (=> b!1398064 m!1285141))

(declare-fun m!1285143 () Bool)

(assert (=> b!1398062 m!1285143))

(declare-fun m!1285145 () Bool)

(assert (=> b!1398062 m!1285145))

(declare-fun m!1285147 () Bool)

(assert (=> b!1398062 m!1285147))

(declare-fun m!1285149 () Bool)

(assert (=> b!1398068 m!1285149))

(declare-fun m!1285151 () Bool)

(assert (=> b!1398068 m!1285151))

(assert (=> b!1398068 m!1285149))

(declare-fun m!1285153 () Bool)

(assert (=> b!1398068 m!1285153))

(assert (=> b!1398068 m!1285149))

(declare-fun m!1285155 () Bool)

(assert (=> b!1398068 m!1285155))

(declare-fun m!1285157 () Bool)

(assert (=> b!1398068 m!1285157))

(declare-fun m!1285159 () Bool)

(assert (=> b!1398067 m!1285159))

(assert (=> b!1398067 m!1285143))

(assert (=> b!1398067 m!1285159))

(declare-fun m!1285161 () Bool)

(assert (=> b!1398067 m!1285161))

(declare-fun m!1285163 () Bool)

(assert (=> b!1398067 m!1285163))

(assert (=> b!1398065 m!1285149))

(assert (=> b!1398065 m!1285149))

(declare-fun m!1285165 () Bool)

(assert (=> b!1398065 m!1285165))

(assert (=> b!1398066 m!1285149))

(assert (=> b!1398066 m!1285149))

(declare-fun m!1285167 () Bool)

(assert (=> b!1398066 m!1285167))

(declare-fun m!1285169 () Bool)

(assert (=> b!1398069 m!1285169))

(declare-fun m!1285171 () Bool)

(assert (=> start!120128 m!1285171))

(declare-fun m!1285173 () Bool)

(assert (=> start!120128 m!1285173))

(push 1)

