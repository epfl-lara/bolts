; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57118 () Bool)

(assert start!57118)

(declare-fun b!632028 () Bool)

(declare-fun e!361346 () Bool)

(assert (=> b!632028 (= e!361346 true)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38098 0))(
  ( (array!38099 (arr!18278 (Array (_ BitVec 32) (_ BitVec 64))) (size!18642 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38098)

(assert (=> b!632028 (= (select (store (arr!18278 a!2986) i!1108 k!1786) index!984) (select (arr!18278 a!2986) j!136))))

(declare-fun b!632029 () Bool)

(declare-fun res!408835 () Bool)

(declare-fun e!361347 () Bool)

(assert (=> b!632029 (=> (not res!408835) (not e!361347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632029 (= res!408835 (validKeyInArray!0 (select (arr!18278 a!2986) j!136)))))

(declare-fun b!632030 () Bool)

(declare-fun e!361345 () Bool)

(declare-datatypes ((SeekEntryResult!6725 0))(
  ( (MissingZero!6725 (index!29192 (_ BitVec 32))) (Found!6725 (index!29193 (_ BitVec 32))) (Intermediate!6725 (undefined!7537 Bool) (index!29194 (_ BitVec 32)) (x!57953 (_ BitVec 32))) (Undefined!6725) (MissingVacant!6725 (index!29195 (_ BitVec 32))) )
))
(declare-fun lt!292131 () SeekEntryResult!6725)

(declare-fun lt!292128 () SeekEntryResult!6725)

(assert (=> b!632030 (= e!361345 (= lt!292131 lt!292128))))

(declare-fun b!632031 () Bool)

(declare-fun e!361344 () Bool)

(declare-fun e!361351 () Bool)

(assert (=> b!632031 (= e!361344 e!361351)))

(declare-fun res!408831 () Bool)

(assert (=> b!632031 (=> (not res!408831) (not e!361351))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!632031 (= res!408831 (= (select (store (arr!18278 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292125 () array!38098)

(assert (=> b!632031 (= lt!292125 (array!38099 (store (arr!18278 a!2986) i!1108 k!1786) (size!18642 a!2986)))))

(declare-fun b!632032 () Bool)

(declare-datatypes ((Unit!21258 0))(
  ( (Unit!21259) )
))
(declare-fun e!361349 () Unit!21258)

(declare-fun Unit!21260 () Unit!21258)

(assert (=> b!632032 (= e!361349 Unit!21260)))

(assert (=> b!632032 false))

(declare-fun b!632033 () Bool)

(assert (=> b!632033 (= e!361347 e!361344)))

(declare-fun res!408830 () Bool)

(assert (=> b!632033 (=> (not res!408830) (not e!361344))))

(declare-fun lt!292126 () SeekEntryResult!6725)

(assert (=> b!632033 (= res!408830 (or (= lt!292126 (MissingZero!6725 i!1108)) (= lt!292126 (MissingVacant!6725 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38098 (_ BitVec 32)) SeekEntryResult!6725)

(assert (=> b!632033 (= lt!292126 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!632034 () Bool)

(declare-fun res!408833 () Bool)

(assert (=> b!632034 (=> (not res!408833) (not e!361347))))

(declare-fun arrayContainsKey!0 (array!38098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632034 (= res!408833 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632035 () Bool)

(declare-fun res!408840 () Bool)

(assert (=> b!632035 (=> (not res!408840) (not e!361347))))

(assert (=> b!632035 (= res!408840 (validKeyInArray!0 k!1786))))

(declare-fun b!632037 () Bool)

(declare-fun e!361350 () Bool)

(assert (=> b!632037 (= e!361350 (not e!361346))))

(declare-fun res!408842 () Bool)

(assert (=> b!632037 (=> res!408842 e!361346)))

(declare-fun lt!292130 () SeekEntryResult!6725)

(assert (=> b!632037 (= res!408842 (not (= lt!292130 (Found!6725 index!984))))))

(declare-fun lt!292124 () Unit!21258)

(assert (=> b!632037 (= lt!292124 e!361349)))

(declare-fun c!71966 () Bool)

(assert (=> b!632037 (= c!71966 (= lt!292130 Undefined!6725))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!292123 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38098 (_ BitVec 32)) SeekEntryResult!6725)

(assert (=> b!632037 (= lt!292130 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292123 lt!292125 mask!3053))))

(assert (=> b!632037 e!361345))

(declare-fun res!408837 () Bool)

(assert (=> b!632037 (=> (not res!408837) (not e!361345))))

(declare-fun lt!292129 () (_ BitVec 32))

(assert (=> b!632037 (= res!408837 (= lt!292128 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292129 vacantSpotIndex!68 lt!292123 lt!292125 mask!3053)))))

(assert (=> b!632037 (= lt!292128 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292129 vacantSpotIndex!68 (select (arr!18278 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!632037 (= lt!292123 (select (store (arr!18278 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292127 () Unit!21258)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38098 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21258)

(assert (=> b!632037 (= lt!292127 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292129 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632037 (= lt!292129 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!632038 () Bool)

(declare-fun res!408836 () Bool)

(assert (=> b!632038 (=> (not res!408836) (not e!361344))))

(assert (=> b!632038 (= res!408836 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18278 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632039 () Bool)

(declare-fun res!408834 () Bool)

(assert (=> b!632039 (=> (not res!408834) (not e!361344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38098 (_ BitVec 32)) Bool)

(assert (=> b!632039 (= res!408834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632040 () Bool)

(assert (=> b!632040 (= e!361351 e!361350)))

(declare-fun res!408832 () Bool)

(assert (=> b!632040 (=> (not res!408832) (not e!361350))))

(assert (=> b!632040 (= res!408832 (and (= lt!292131 (Found!6725 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18278 a!2986) index!984) (select (arr!18278 a!2986) j!136))) (not (= (select (arr!18278 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!632040 (= lt!292131 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18278 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632041 () Bool)

(declare-fun res!408838 () Bool)

(assert (=> b!632041 (=> (not res!408838) (not e!361344))))

(declare-datatypes ((List!12372 0))(
  ( (Nil!12369) (Cons!12368 (h!13413 (_ BitVec 64)) (t!18608 List!12372)) )
))
(declare-fun arrayNoDuplicates!0 (array!38098 (_ BitVec 32) List!12372) Bool)

(assert (=> b!632041 (= res!408838 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12369))))

(declare-fun b!632042 () Bool)

(declare-fun Unit!21261 () Unit!21258)

(assert (=> b!632042 (= e!361349 Unit!21261)))

(declare-fun b!632036 () Bool)

(declare-fun res!408841 () Bool)

(assert (=> b!632036 (=> (not res!408841) (not e!361347))))

(assert (=> b!632036 (= res!408841 (and (= (size!18642 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18642 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18642 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!408839 () Bool)

(assert (=> start!57118 (=> (not res!408839) (not e!361347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57118 (= res!408839 (validMask!0 mask!3053))))

(assert (=> start!57118 e!361347))

(assert (=> start!57118 true))

(declare-fun array_inv!14052 (array!38098) Bool)

(assert (=> start!57118 (array_inv!14052 a!2986)))

(assert (= (and start!57118 res!408839) b!632036))

(assert (= (and b!632036 res!408841) b!632029))

(assert (= (and b!632029 res!408835) b!632035))

(assert (= (and b!632035 res!408840) b!632034))

(assert (= (and b!632034 res!408833) b!632033))

(assert (= (and b!632033 res!408830) b!632039))

(assert (= (and b!632039 res!408834) b!632041))

(assert (= (and b!632041 res!408838) b!632038))

(assert (= (and b!632038 res!408836) b!632031))

(assert (= (and b!632031 res!408831) b!632040))

(assert (= (and b!632040 res!408832) b!632037))

(assert (= (and b!632037 res!408837) b!632030))

(assert (= (and b!632037 c!71966) b!632032))

(assert (= (and b!632037 (not c!71966)) b!632042))

(assert (= (and b!632037 (not res!408842)) b!632028))

(declare-fun m!606927 () Bool)

(assert (=> b!632038 m!606927))

(declare-fun m!606929 () Bool)

(assert (=> b!632040 m!606929))

(declare-fun m!606931 () Bool)

(assert (=> b!632040 m!606931))

(assert (=> b!632040 m!606931))

(declare-fun m!606933 () Bool)

(assert (=> b!632040 m!606933))

(declare-fun m!606935 () Bool)

(assert (=> b!632039 m!606935))

(declare-fun m!606937 () Bool)

(assert (=> b!632033 m!606937))

(assert (=> b!632029 m!606931))

(assert (=> b!632029 m!606931))

(declare-fun m!606939 () Bool)

(assert (=> b!632029 m!606939))

(declare-fun m!606941 () Bool)

(assert (=> start!57118 m!606941))

(declare-fun m!606943 () Bool)

(assert (=> start!57118 m!606943))

(declare-fun m!606945 () Bool)

(assert (=> b!632031 m!606945))

(declare-fun m!606947 () Bool)

(assert (=> b!632031 m!606947))

(assert (=> b!632028 m!606945))

(declare-fun m!606949 () Bool)

(assert (=> b!632028 m!606949))

(assert (=> b!632028 m!606931))

(declare-fun m!606951 () Bool)

(assert (=> b!632041 m!606951))

(declare-fun m!606953 () Bool)

(assert (=> b!632037 m!606953))

(declare-fun m!606955 () Bool)

(assert (=> b!632037 m!606955))

(declare-fun m!606957 () Bool)

(assert (=> b!632037 m!606957))

(assert (=> b!632037 m!606931))

(assert (=> b!632037 m!606931))

(declare-fun m!606959 () Bool)

(assert (=> b!632037 m!606959))

(assert (=> b!632037 m!606945))

(declare-fun m!606961 () Bool)

(assert (=> b!632037 m!606961))

(declare-fun m!606963 () Bool)

(assert (=> b!632037 m!606963))

(declare-fun m!606965 () Bool)

(assert (=> b!632035 m!606965))

(declare-fun m!606967 () Bool)

(assert (=> b!632034 m!606967))

(push 1)

