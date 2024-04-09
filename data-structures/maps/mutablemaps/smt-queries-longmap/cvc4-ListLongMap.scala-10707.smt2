; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125426 () Bool)

(assert start!125426)

(declare-fun b!1466059 () Bool)

(declare-fun res!994937 () Bool)

(declare-fun e!823722 () Bool)

(assert (=> b!1466059 (=> (not res!994937) (not e!823722))))

(declare-datatypes ((array!98791 0))(
  ( (array!98792 (arr!47679 (Array (_ BitVec 32) (_ BitVec 64))) (size!48230 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98791)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98791 (_ BitVec 32)) Bool)

(assert (=> b!1466059 (= res!994937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!641586 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11954 0))(
  ( (MissingZero!11954 (index!50207 (_ BitVec 32))) (Found!11954 (index!50208 (_ BitVec 32))) (Intermediate!11954 (undefined!12766 Bool) (index!50209 (_ BitVec 32)) (x!131782 (_ BitVec 32))) (Undefined!11954) (MissingVacant!11954 (index!50210 (_ BitVec 32))) )
))
(declare-fun lt!641587 () SeekEntryResult!11954)

(declare-fun lt!641588 () array!98791)

(declare-fun e!823720 () Bool)

(declare-fun b!1466060 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98791 (_ BitVec 32)) SeekEntryResult!11954)

(assert (=> b!1466060 (= e!823720 (= lt!641587 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641586 lt!641588 mask!2687)))))

(declare-fun b!1466061 () Bool)

(declare-fun lt!641585 () (_ BitVec 32))

(declare-fun e!823723 () Bool)

(assert (=> b!1466061 (= e!823723 (not (= lt!641587 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641585 lt!641586 lt!641588 mask!2687))))))

(declare-fun b!1466062 () Bool)

(declare-fun e!823724 () Bool)

(declare-fun e!823718 () Bool)

(assert (=> b!1466062 (= e!823724 (not e!823718))))

(declare-fun res!994941 () Bool)

(assert (=> b!1466062 (=> res!994941 e!823718)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1466062 (= res!994941 (or (and (= (select (arr!47679 a!2862) index!646) (select (store (arr!47679 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47679 a!2862) index!646) (select (arr!47679 a!2862) j!93))) (= (select (arr!47679 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!641590 () SeekEntryResult!11954)

(assert (=> b!1466062 (and (= lt!641590 (Found!11954 j!93)) (or (= (select (arr!47679 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47679 a!2862) intermediateBeforeIndex!19) (select (arr!47679 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98791 (_ BitVec 32)) SeekEntryResult!11954)

(assert (=> b!1466062 (= lt!641590 (seekEntryOrOpen!0 (select (arr!47679 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1466062 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49352 0))(
  ( (Unit!49353) )
))
(declare-fun lt!641589 () Unit!49352)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49352)

(assert (=> b!1466062 (= lt!641589 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466063 () Bool)

(declare-fun e!823716 () Bool)

(assert (=> b!1466063 (= e!823716 e!823724)))

(declare-fun res!994943 () Bool)

(assert (=> b!1466063 (=> (not res!994943) (not e!823724))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1466063 (= res!994943 (= lt!641587 (Intermediate!11954 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466063 (= lt!641587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641586 mask!2687) lt!641586 lt!641588 mask!2687))))

(assert (=> b!1466063 (= lt!641586 (select (store (arr!47679 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!994933 () Bool)

(assert (=> start!125426 (=> (not res!994933) (not e!823722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125426 (= res!994933 (validMask!0 mask!2687))))

(assert (=> start!125426 e!823722))

(assert (=> start!125426 true))

(declare-fun array_inv!36624 (array!98791) Bool)

(assert (=> start!125426 (array_inv!36624 a!2862)))

(declare-fun b!1466064 () Bool)

(declare-fun e!823717 () Bool)

(assert (=> b!1466064 (= e!823722 e!823717)))

(declare-fun res!994934 () Bool)

(assert (=> b!1466064 (=> (not res!994934) (not e!823717))))

(assert (=> b!1466064 (= res!994934 (= (select (store (arr!47679 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466064 (= lt!641588 (array!98792 (store (arr!47679 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48230 a!2862)))))

(declare-fun b!1466065 () Bool)

(declare-fun res!994928 () Bool)

(declare-fun e!823721 () Bool)

(assert (=> b!1466065 (=> res!994928 e!823721)))

(declare-fun lt!641583 () SeekEntryResult!11954)

(assert (=> b!1466065 (= res!994928 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641585 (select (arr!47679 a!2862) j!93) a!2862 mask!2687) lt!641583)))))

(declare-fun b!1466066 () Bool)

(assert (=> b!1466066 (= e!823717 e!823716)))

(declare-fun res!994942 () Bool)

(assert (=> b!1466066 (=> (not res!994942) (not e!823716))))

(assert (=> b!1466066 (= res!994942 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47679 a!2862) j!93) mask!2687) (select (arr!47679 a!2862) j!93) a!2862 mask!2687) lt!641583))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1466066 (= lt!641583 (Intermediate!11954 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466067 () Bool)

(declare-fun res!994944 () Bool)

(assert (=> b!1466067 (=> (not res!994944) (not e!823722))))

(assert (=> b!1466067 (= res!994944 (and (= (size!48230 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48230 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48230 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1466068 () Bool)

(declare-fun res!994930 () Bool)

(assert (=> b!1466068 (=> res!994930 e!823721)))

(assert (=> b!1466068 (= res!994930 e!823723)))

(declare-fun c!135079 () Bool)

(assert (=> b!1466068 (= c!135079 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466069 () Bool)

(declare-fun res!994932 () Bool)

(assert (=> b!1466069 (=> (not res!994932) (not e!823722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466069 (= res!994932 (validKeyInArray!0 (select (arr!47679 a!2862) j!93)))))

(declare-fun b!1466070 () Bool)

(declare-fun res!994938 () Bool)

(assert (=> b!1466070 (=> (not res!994938) (not e!823716))))

(assert (=> b!1466070 (= res!994938 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47679 a!2862) j!93) a!2862 mask!2687) lt!641583))))

(declare-fun b!1466071 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98791 (_ BitVec 32)) SeekEntryResult!11954)

(assert (=> b!1466071 (= e!823723 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641585 intermediateAfterIndex!19 lt!641586 lt!641588 mask!2687) (seekEntryOrOpen!0 lt!641586 lt!641588 mask!2687))))))

(declare-fun b!1466072 () Bool)

(declare-fun res!994931 () Bool)

(assert (=> b!1466072 (=> res!994931 e!823721)))

(assert (=> b!1466072 (= res!994931 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466073 () Bool)

(assert (=> b!1466073 (= e!823720 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641586 lt!641588 mask!2687) (seekEntryOrOpen!0 lt!641586 lt!641588 mask!2687)))))

(declare-fun b!1466074 () Bool)

(declare-fun res!994935 () Bool)

(assert (=> b!1466074 (=> (not res!994935) (not e!823724))))

(assert (=> b!1466074 (= res!994935 e!823720)))

(declare-fun c!135080 () Bool)

(assert (=> b!1466074 (= c!135080 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466075 () Bool)

(declare-fun res!994936 () Bool)

(assert (=> b!1466075 (=> (not res!994936) (not e!823722))))

(declare-datatypes ((List!34360 0))(
  ( (Nil!34357) (Cons!34356 (h!35706 (_ BitVec 64)) (t!49061 List!34360)) )
))
(declare-fun arrayNoDuplicates!0 (array!98791 (_ BitVec 32) List!34360) Bool)

(assert (=> b!1466075 (= res!994936 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34357))))

(declare-fun b!1466076 () Bool)

(assert (=> b!1466076 (= e!823718 e!823721)))

(declare-fun res!994939 () Bool)

(assert (=> b!1466076 (=> res!994939 e!823721)))

(assert (=> b!1466076 (= res!994939 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641585 #b00000000000000000000000000000000) (bvsge lt!641585 (size!48230 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466076 (= lt!641585 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466077 () Bool)

(assert (=> b!1466077 (= e!823721 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1466077 (= lt!641590 (seekEntryOrOpen!0 lt!641586 lt!641588 mask!2687))))

(declare-fun lt!641584 () Unit!49352)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49352)

(assert (=> b!1466077 (= lt!641584 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641585 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466078 () Bool)

(declare-fun res!994940 () Bool)

(assert (=> b!1466078 (=> (not res!994940) (not e!823722))))

(assert (=> b!1466078 (= res!994940 (validKeyInArray!0 (select (arr!47679 a!2862) i!1006)))))

(declare-fun b!1466079 () Bool)

(declare-fun res!994927 () Bool)

(assert (=> b!1466079 (=> (not res!994927) (not e!823724))))

(assert (=> b!1466079 (= res!994927 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466080 () Bool)

(declare-fun res!994929 () Bool)

(assert (=> b!1466080 (=> (not res!994929) (not e!823722))))

(assert (=> b!1466080 (= res!994929 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48230 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48230 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48230 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125426 res!994933) b!1466067))

(assert (= (and b!1466067 res!994944) b!1466078))

(assert (= (and b!1466078 res!994940) b!1466069))

(assert (= (and b!1466069 res!994932) b!1466059))

(assert (= (and b!1466059 res!994937) b!1466075))

(assert (= (and b!1466075 res!994936) b!1466080))

(assert (= (and b!1466080 res!994929) b!1466064))

(assert (= (and b!1466064 res!994934) b!1466066))

(assert (= (and b!1466066 res!994942) b!1466070))

(assert (= (and b!1466070 res!994938) b!1466063))

(assert (= (and b!1466063 res!994943) b!1466074))

(assert (= (and b!1466074 c!135080) b!1466060))

(assert (= (and b!1466074 (not c!135080)) b!1466073))

(assert (= (and b!1466074 res!994935) b!1466079))

(assert (= (and b!1466079 res!994927) b!1466062))

(assert (= (and b!1466062 (not res!994941)) b!1466076))

(assert (= (and b!1466076 (not res!994939)) b!1466065))

(assert (= (and b!1466065 (not res!994928)) b!1466068))

(assert (= (and b!1466068 c!135079) b!1466061))

(assert (= (and b!1466068 (not c!135079)) b!1466071))

(assert (= (and b!1466068 (not res!994930)) b!1466072))

(assert (= (and b!1466072 (not res!994931)) b!1466077))

(declare-fun m!1353135 () Bool)

(assert (=> b!1466075 m!1353135))

(declare-fun m!1353137 () Bool)

(assert (=> b!1466061 m!1353137))

(declare-fun m!1353139 () Bool)

(assert (=> b!1466071 m!1353139))

(declare-fun m!1353141 () Bool)

(assert (=> b!1466071 m!1353141))

(declare-fun m!1353143 () Bool)

(assert (=> b!1466076 m!1353143))

(declare-fun m!1353145 () Bool)

(assert (=> b!1466066 m!1353145))

(assert (=> b!1466066 m!1353145))

(declare-fun m!1353147 () Bool)

(assert (=> b!1466066 m!1353147))

(assert (=> b!1466066 m!1353147))

(assert (=> b!1466066 m!1353145))

(declare-fun m!1353149 () Bool)

(assert (=> b!1466066 m!1353149))

(declare-fun m!1353151 () Bool)

(assert (=> b!1466063 m!1353151))

(assert (=> b!1466063 m!1353151))

(declare-fun m!1353153 () Bool)

(assert (=> b!1466063 m!1353153))

(declare-fun m!1353155 () Bool)

(assert (=> b!1466063 m!1353155))

(declare-fun m!1353157 () Bool)

(assert (=> b!1466063 m!1353157))

(declare-fun m!1353159 () Bool)

(assert (=> start!125426 m!1353159))

(declare-fun m!1353161 () Bool)

(assert (=> start!125426 m!1353161))

(assert (=> b!1466065 m!1353145))

(assert (=> b!1466065 m!1353145))

(declare-fun m!1353163 () Bool)

(assert (=> b!1466065 m!1353163))

(assert (=> b!1466064 m!1353155))

(declare-fun m!1353165 () Bool)

(assert (=> b!1466064 m!1353165))

(declare-fun m!1353167 () Bool)

(assert (=> b!1466078 m!1353167))

(assert (=> b!1466078 m!1353167))

(declare-fun m!1353169 () Bool)

(assert (=> b!1466078 m!1353169))

(assert (=> b!1466070 m!1353145))

(assert (=> b!1466070 m!1353145))

(declare-fun m!1353171 () Bool)

(assert (=> b!1466070 m!1353171))

(assert (=> b!1466077 m!1353141))

(declare-fun m!1353173 () Bool)

(assert (=> b!1466077 m!1353173))

(declare-fun m!1353175 () Bool)

(assert (=> b!1466060 m!1353175))

(declare-fun m!1353177 () Bool)

(assert (=> b!1466073 m!1353177))

(assert (=> b!1466073 m!1353141))

(assert (=> b!1466069 m!1353145))

(assert (=> b!1466069 m!1353145))

(declare-fun m!1353179 () Bool)

(assert (=> b!1466069 m!1353179))

(declare-fun m!1353181 () Bool)

(assert (=> b!1466059 m!1353181))

(declare-fun m!1353183 () Bool)

(assert (=> b!1466062 m!1353183))

(assert (=> b!1466062 m!1353155))

(declare-fun m!1353185 () Bool)

(assert (=> b!1466062 m!1353185))

(declare-fun m!1353187 () Bool)

(assert (=> b!1466062 m!1353187))

(declare-fun m!1353189 () Bool)

(assert (=> b!1466062 m!1353189))

(assert (=> b!1466062 m!1353145))

(declare-fun m!1353191 () Bool)

(assert (=> b!1466062 m!1353191))

(declare-fun m!1353193 () Bool)

(assert (=> b!1466062 m!1353193))

(assert (=> b!1466062 m!1353145))

(push 1)

(assert (not b!1466061))

(assert (not b!1466059))

(assert (not b!1466073))

(assert (not b!1466065))

(assert (not b!1466077))

