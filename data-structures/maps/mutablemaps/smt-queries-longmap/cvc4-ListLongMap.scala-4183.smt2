; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57028 () Bool)

(assert start!57028)

(declare-fun b!631093 () Bool)

(declare-fun res!408189 () Bool)

(declare-fun e!360823 () Bool)

(assert (=> b!631093 (=> (not res!408189) (not e!360823))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38065 0))(
  ( (array!38066 (arr!18263 (Array (_ BitVec 32) (_ BitVec 64))) (size!18627 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38065)

(assert (=> b!631093 (= res!408189 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18263 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631094 () Bool)

(declare-fun e!360825 () Bool)

(assert (=> b!631094 (= e!360823 e!360825)))

(declare-fun res!408188 () Bool)

(assert (=> b!631094 (=> (not res!408188) (not e!360825))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!631094 (= res!408188 (= (select (store (arr!18263 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291612 () array!38065)

(assert (=> b!631094 (= lt!291612 (array!38066 (store (arr!18263 a!2986) i!1108 k!1786) (size!18627 a!2986)))))

(declare-fun b!631095 () Bool)

(declare-fun res!408194 () Bool)

(declare-fun e!360829 () Bool)

(assert (=> b!631095 (=> (not res!408194) (not e!360829))))

(declare-fun arrayContainsKey!0 (array!38065 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631095 (= res!408194 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631096 () Bool)

(declare-fun res!408190 () Bool)

(assert (=> b!631096 (=> (not res!408190) (not e!360829))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!631096 (= res!408190 (and (= (size!18627 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18627 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18627 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!408184 () Bool)

(assert (=> start!57028 (=> (not res!408184) (not e!360829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57028 (= res!408184 (validMask!0 mask!3053))))

(assert (=> start!57028 e!360829))

(assert (=> start!57028 true))

(declare-fun array_inv!14037 (array!38065) Bool)

(assert (=> start!57028 (array_inv!14037 a!2986)))

(declare-fun b!631097 () Bool)

(assert (=> b!631097 (= e!360829 e!360823)))

(declare-fun res!408186 () Bool)

(assert (=> b!631097 (=> (not res!408186) (not e!360823))))

(declare-datatypes ((SeekEntryResult!6710 0))(
  ( (MissingZero!6710 (index!29129 (_ BitVec 32))) (Found!6710 (index!29130 (_ BitVec 32))) (Intermediate!6710 (undefined!7522 Bool) (index!29131 (_ BitVec 32)) (x!57889 (_ BitVec 32))) (Undefined!6710) (MissingVacant!6710 (index!29132 (_ BitVec 32))) )
))
(declare-fun lt!291613 () SeekEntryResult!6710)

(assert (=> b!631097 (= res!408186 (or (= lt!291613 (MissingZero!6710 i!1108)) (= lt!291613 (MissingVacant!6710 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38065 (_ BitVec 32)) SeekEntryResult!6710)

(assert (=> b!631097 (= lt!291613 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!631098 () Bool)

(declare-fun e!360824 () Bool)

(assert (=> b!631098 (= e!360825 e!360824)))

(declare-fun res!408187 () Bool)

(assert (=> b!631098 (=> (not res!408187) (not e!360824))))

(declare-fun lt!291617 () SeekEntryResult!6710)

(assert (=> b!631098 (= res!408187 (and (= lt!291617 (Found!6710 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18263 a!2986) index!984) (select (arr!18263 a!2986) j!136))) (not (= (select (arr!18263 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38065 (_ BitVec 32)) SeekEntryResult!6710)

(assert (=> b!631098 (= lt!291617 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18263 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631099 () Bool)

(declare-fun res!408191 () Bool)

(assert (=> b!631099 (=> (not res!408191) (not e!360829))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631099 (= res!408191 (validKeyInArray!0 (select (arr!18263 a!2986) j!136)))))

(declare-fun b!631100 () Bool)

(declare-fun res!408193 () Bool)

(assert (=> b!631100 (=> (not res!408193) (not e!360829))))

(assert (=> b!631100 (= res!408193 (validKeyInArray!0 k!1786))))

(declare-fun b!631101 () Bool)

(declare-fun res!408192 () Bool)

(assert (=> b!631101 (=> (not res!408192) (not e!360823))))

(declare-datatypes ((List!12357 0))(
  ( (Nil!12354) (Cons!12353 (h!13398 (_ BitVec 64)) (t!18593 List!12357)) )
))
(declare-fun arrayNoDuplicates!0 (array!38065 (_ BitVec 32) List!12357) Bool)

(assert (=> b!631101 (= res!408192 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12354))))

(declare-fun b!631102 () Bool)

(declare-fun e!360828 () Bool)

(declare-fun lt!291618 () SeekEntryResult!6710)

(assert (=> b!631102 (= e!360828 (= lt!291617 lt!291618))))

(declare-fun b!631103 () Bool)

(assert (=> b!631103 (= e!360824 (not true))))

(declare-datatypes ((Unit!21198 0))(
  ( (Unit!21199) )
))
(declare-fun lt!291611 () Unit!21198)

(declare-fun e!360827 () Unit!21198)

(assert (=> b!631103 (= lt!291611 e!360827)))

(declare-fun c!71822 () Bool)

(declare-fun lt!291616 () (_ BitVec 64))

(assert (=> b!631103 (= c!71822 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291616 lt!291612 mask!3053) Undefined!6710))))

(assert (=> b!631103 e!360828))

(declare-fun res!408183 () Bool)

(assert (=> b!631103 (=> (not res!408183) (not e!360828))))

(declare-fun lt!291614 () (_ BitVec 32))

(assert (=> b!631103 (= res!408183 (= lt!291618 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291614 vacantSpotIndex!68 lt!291616 lt!291612 mask!3053)))))

(assert (=> b!631103 (= lt!291618 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291614 vacantSpotIndex!68 (select (arr!18263 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631103 (= lt!291616 (select (store (arr!18263 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291615 () Unit!21198)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38065 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21198)

(assert (=> b!631103 (= lt!291615 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291614 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631103 (= lt!291614 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631104 () Bool)

(declare-fun res!408185 () Bool)

(assert (=> b!631104 (=> (not res!408185) (not e!360823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38065 (_ BitVec 32)) Bool)

(assert (=> b!631104 (= res!408185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631105 () Bool)

(declare-fun Unit!21200 () Unit!21198)

(assert (=> b!631105 (= e!360827 Unit!21200)))

(assert (=> b!631105 false))

(declare-fun b!631106 () Bool)

(declare-fun Unit!21201 () Unit!21198)

(assert (=> b!631106 (= e!360827 Unit!21201)))

(assert (= (and start!57028 res!408184) b!631096))

(assert (= (and b!631096 res!408190) b!631099))

(assert (= (and b!631099 res!408191) b!631100))

(assert (= (and b!631100 res!408193) b!631095))

(assert (= (and b!631095 res!408194) b!631097))

(assert (= (and b!631097 res!408186) b!631104))

(assert (= (and b!631104 res!408185) b!631101))

(assert (= (and b!631101 res!408192) b!631093))

(assert (= (and b!631093 res!408189) b!631094))

(assert (= (and b!631094 res!408188) b!631098))

(assert (= (and b!631098 res!408187) b!631103))

(assert (= (and b!631103 res!408183) b!631102))

(assert (= (and b!631103 c!71822) b!631105))

(assert (= (and b!631103 (not c!71822)) b!631106))

(declare-fun m!606089 () Bool)

(assert (=> b!631099 m!606089))

(assert (=> b!631099 m!606089))

(declare-fun m!606091 () Bool)

(assert (=> b!631099 m!606091))

(declare-fun m!606093 () Bool)

(assert (=> b!631093 m!606093))

(declare-fun m!606095 () Bool)

(assert (=> b!631104 m!606095))

(declare-fun m!606097 () Bool)

(assert (=> start!57028 m!606097))

(declare-fun m!606099 () Bool)

(assert (=> start!57028 m!606099))

(declare-fun m!606101 () Bool)

(assert (=> b!631100 m!606101))

(declare-fun m!606103 () Bool)

(assert (=> b!631103 m!606103))

(assert (=> b!631103 m!606089))

(declare-fun m!606105 () Bool)

(assert (=> b!631103 m!606105))

(declare-fun m!606107 () Bool)

(assert (=> b!631103 m!606107))

(declare-fun m!606109 () Bool)

(assert (=> b!631103 m!606109))

(declare-fun m!606111 () Bool)

(assert (=> b!631103 m!606111))

(assert (=> b!631103 m!606089))

(declare-fun m!606113 () Bool)

(assert (=> b!631103 m!606113))

(declare-fun m!606115 () Bool)

(assert (=> b!631103 m!606115))

(declare-fun m!606117 () Bool)

(assert (=> b!631097 m!606117))

(assert (=> b!631094 m!606105))

(declare-fun m!606119 () Bool)

(assert (=> b!631094 m!606119))

(declare-fun m!606121 () Bool)

(assert (=> b!631098 m!606121))

(assert (=> b!631098 m!606089))

(assert (=> b!631098 m!606089))

(declare-fun m!606123 () Bool)

(assert (=> b!631098 m!606123))

(declare-fun m!606125 () Bool)

(assert (=> b!631101 m!606125))

(declare-fun m!606127 () Bool)

(assert (=> b!631095 m!606127))

(push 1)

