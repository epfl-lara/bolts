; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57022 () Bool)

(assert start!57022)

(declare-fun b!630967 () Bool)

(declare-datatypes ((Unit!21186 0))(
  ( (Unit!21187) )
))
(declare-fun e!360760 () Unit!21186)

(declare-fun Unit!21188 () Unit!21186)

(assert (=> b!630967 (= e!360760 Unit!21188)))

(assert (=> b!630967 false))

(declare-fun b!630968 () Bool)

(declare-fun res!408077 () Bool)

(declare-fun e!360763 () Bool)

(assert (=> b!630968 (=> (not res!408077) (not e!360763))))

(declare-datatypes ((array!38059 0))(
  ( (array!38060 (arr!18260 (Array (_ BitVec 32) (_ BitVec 64))) (size!18624 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38059)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38059 (_ BitVec 32)) Bool)

(assert (=> b!630968 (= res!408077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630969 () Bool)

(declare-fun res!408078 () Bool)

(declare-fun e!360762 () Bool)

(assert (=> b!630969 (=> (not res!408078) (not e!360762))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630969 (= res!408078 (validKeyInArray!0 (select (arr!18260 a!2986) j!136)))))

(declare-fun b!630970 () Bool)

(declare-fun e!360765 () Bool)

(declare-datatypes ((SeekEntryResult!6707 0))(
  ( (MissingZero!6707 (index!29117 (_ BitVec 32))) (Found!6707 (index!29118 (_ BitVec 32))) (Intermediate!6707 (undefined!7519 Bool) (index!29119 (_ BitVec 32)) (x!57878 (_ BitVec 32))) (Undefined!6707) (MissingVacant!6707 (index!29120 (_ BitVec 32))) )
))
(declare-fun lt!291542 () SeekEntryResult!6707)

(declare-fun lt!291539 () SeekEntryResult!6707)

(assert (=> b!630970 (= e!360765 (= lt!291542 lt!291539))))

(declare-fun lt!291541 () SeekEntryResult!6707)

(declare-fun b!630971 () Bool)

(declare-fun e!360761 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!630971 (= e!360761 (not (or (not (= lt!291541 (Found!6707 index!984))) (bvslt index!984 (size!18624 a!2986)))))))

(declare-fun lt!291546 () Unit!21186)

(assert (=> b!630971 (= lt!291546 e!360760)))

(declare-fun c!71813 () Bool)

(assert (=> b!630971 (= c!71813 (= lt!291541 Undefined!6707))))

(declare-fun lt!291544 () array!38059)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!291545 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38059 (_ BitVec 32)) SeekEntryResult!6707)

(assert (=> b!630971 (= lt!291541 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291545 lt!291544 mask!3053))))

(assert (=> b!630971 e!360765))

(declare-fun res!408080 () Bool)

(assert (=> b!630971 (=> (not res!408080) (not e!360765))))

(declare-fun lt!291540 () (_ BitVec 32))

(assert (=> b!630971 (= res!408080 (= lt!291539 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291540 vacantSpotIndex!68 lt!291545 lt!291544 mask!3053)))))

(assert (=> b!630971 (= lt!291539 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291540 vacantSpotIndex!68 (select (arr!18260 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!630971 (= lt!291545 (select (store (arr!18260 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291543 () Unit!21186)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38059 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21186)

(assert (=> b!630971 (= lt!291543 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291540 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630971 (= lt!291540 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!408086 () Bool)

(assert (=> start!57022 (=> (not res!408086) (not e!360762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57022 (= res!408086 (validMask!0 mask!3053))))

(assert (=> start!57022 e!360762))

(assert (=> start!57022 true))

(declare-fun array_inv!14034 (array!38059) Bool)

(assert (=> start!57022 (array_inv!14034 a!2986)))

(declare-fun b!630972 () Bool)

(declare-fun e!360764 () Bool)

(assert (=> b!630972 (= e!360764 e!360761)))

(declare-fun res!408081 () Bool)

(assert (=> b!630972 (=> (not res!408081) (not e!360761))))

(assert (=> b!630972 (= res!408081 (and (= lt!291542 (Found!6707 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18260 a!2986) index!984) (select (arr!18260 a!2986) j!136))) (not (= (select (arr!18260 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!630972 (= lt!291542 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18260 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630973 () Bool)

(declare-fun res!408082 () Bool)

(assert (=> b!630973 (=> (not res!408082) (not e!360762))))

(assert (=> b!630973 (= res!408082 (validKeyInArray!0 k!1786))))

(declare-fun b!630974 () Bool)

(declare-fun res!408084 () Bool)

(assert (=> b!630974 (=> (not res!408084) (not e!360762))))

(declare-fun arrayContainsKey!0 (array!38059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630974 (= res!408084 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630975 () Bool)

(declare-fun res!408075 () Bool)

(assert (=> b!630975 (=> (not res!408075) (not e!360763))))

(assert (=> b!630975 (= res!408075 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18260 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630976 () Bool)

(declare-fun res!408079 () Bool)

(assert (=> b!630976 (=> (not res!408079) (not e!360762))))

(assert (=> b!630976 (= res!408079 (and (= (size!18624 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18624 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18624 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630977 () Bool)

(assert (=> b!630977 (= e!360762 e!360763)))

(declare-fun res!408083 () Bool)

(assert (=> b!630977 (=> (not res!408083) (not e!360763))))

(declare-fun lt!291538 () SeekEntryResult!6707)

(assert (=> b!630977 (= res!408083 (or (= lt!291538 (MissingZero!6707 i!1108)) (= lt!291538 (MissingVacant!6707 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38059 (_ BitVec 32)) SeekEntryResult!6707)

(assert (=> b!630977 (= lt!291538 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!630978 () Bool)

(declare-fun res!408085 () Bool)

(assert (=> b!630978 (=> (not res!408085) (not e!360763))))

(declare-datatypes ((List!12354 0))(
  ( (Nil!12351) (Cons!12350 (h!13395 (_ BitVec 64)) (t!18590 List!12354)) )
))
(declare-fun arrayNoDuplicates!0 (array!38059 (_ BitVec 32) List!12354) Bool)

(assert (=> b!630978 (= res!408085 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12351))))

(declare-fun b!630979 () Bool)

(assert (=> b!630979 (= e!360763 e!360764)))

(declare-fun res!408076 () Bool)

(assert (=> b!630979 (=> (not res!408076) (not e!360764))))

(assert (=> b!630979 (= res!408076 (= (select (store (arr!18260 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630979 (= lt!291544 (array!38060 (store (arr!18260 a!2986) i!1108 k!1786) (size!18624 a!2986)))))

(declare-fun b!630980 () Bool)

(declare-fun Unit!21189 () Unit!21186)

(assert (=> b!630980 (= e!360760 Unit!21189)))

(assert (= (and start!57022 res!408086) b!630976))

(assert (= (and b!630976 res!408079) b!630969))

(assert (= (and b!630969 res!408078) b!630973))

(assert (= (and b!630973 res!408082) b!630974))

(assert (= (and b!630974 res!408084) b!630977))

(assert (= (and b!630977 res!408083) b!630968))

(assert (= (and b!630968 res!408077) b!630978))

(assert (= (and b!630978 res!408085) b!630975))

(assert (= (and b!630975 res!408075) b!630979))

(assert (= (and b!630979 res!408076) b!630972))

(assert (= (and b!630972 res!408081) b!630971))

(assert (= (and b!630971 res!408080) b!630970))

(assert (= (and b!630971 c!71813) b!630967))

(assert (= (and b!630971 (not c!71813)) b!630980))

(declare-fun m!605969 () Bool)

(assert (=> b!630977 m!605969))

(declare-fun m!605971 () Bool)

(assert (=> b!630968 m!605971))

(declare-fun m!605973 () Bool)

(assert (=> b!630978 m!605973))

(declare-fun m!605975 () Bool)

(assert (=> b!630979 m!605975))

(declare-fun m!605977 () Bool)

(assert (=> b!630979 m!605977))

(declare-fun m!605979 () Bool)

(assert (=> b!630971 m!605979))

(declare-fun m!605981 () Bool)

(assert (=> b!630971 m!605981))

(declare-fun m!605983 () Bool)

(assert (=> b!630971 m!605983))

(assert (=> b!630971 m!605975))

(declare-fun m!605985 () Bool)

(assert (=> b!630971 m!605985))

(assert (=> b!630971 m!605981))

(declare-fun m!605987 () Bool)

(assert (=> b!630971 m!605987))

(declare-fun m!605989 () Bool)

(assert (=> b!630971 m!605989))

(declare-fun m!605991 () Bool)

(assert (=> b!630971 m!605991))

(assert (=> b!630969 m!605981))

(assert (=> b!630969 m!605981))

(declare-fun m!605993 () Bool)

(assert (=> b!630969 m!605993))

(declare-fun m!605995 () Bool)

(assert (=> b!630975 m!605995))

(declare-fun m!605997 () Bool)

(assert (=> b!630974 m!605997))

(declare-fun m!605999 () Bool)

(assert (=> b!630972 m!605999))

(assert (=> b!630972 m!605981))

(assert (=> b!630972 m!605981))

(declare-fun m!606001 () Bool)

(assert (=> b!630972 m!606001))

(declare-fun m!606003 () Bool)

(assert (=> start!57022 m!606003))

(declare-fun m!606005 () Bool)

(assert (=> start!57022 m!606005))

(declare-fun m!606007 () Bool)

(assert (=> b!630973 m!606007))

(push 1)

(assert (not b!630969))

(assert (not b!630974))

(assert (not start!57022))

(assert (not b!630973))

(assert (not b!630968))

(assert (not b!630971))

(assert (not b!630977))

(assert (not b!630978))

(assert (not b!630972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

