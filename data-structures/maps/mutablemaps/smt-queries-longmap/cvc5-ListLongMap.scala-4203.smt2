; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57450 () Bool)

(assert start!57450)

(declare-fun b!635441 () Bool)

(declare-fun e!363462 () Bool)

(declare-fun e!363464 () Bool)

(assert (=> b!635441 (= e!363462 e!363464)))

(declare-fun res!411205 () Bool)

(assert (=> b!635441 (=> res!411205 e!363464)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!293870 () (_ BitVec 64))

(declare-fun lt!293868 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38196 0))(
  ( (array!38197 (arr!18321 (Array (_ BitVec 32) (_ BitVec 64))) (size!18685 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38196)

(assert (=> b!635441 (= res!411205 (or (not (= (select (arr!18321 a!2986) j!136) lt!293868)) (not (= (select (arr!18321 a!2986) j!136) lt!293870)) (bvsge j!136 index!984)))))

(declare-fun e!363466 () Bool)

(assert (=> b!635441 e!363466))

(declare-fun res!411209 () Bool)

(assert (=> b!635441 (=> (not res!411209) (not e!363466))))

(assert (=> b!635441 (= res!411209 (= lt!293870 (select (arr!18321 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!635441 (= lt!293870 (select (store (arr!18321 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!635442 () Bool)

(declare-fun e!363458 () Bool)

(declare-fun e!363465 () Bool)

(assert (=> b!635442 (= e!363458 e!363465)))

(declare-fun res!411198 () Bool)

(assert (=> b!635442 (=> (not res!411198) (not e!363465))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!635442 (= res!411198 (= (select (store (arr!18321 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!293872 () array!38196)

(assert (=> b!635442 (= lt!293872 (array!38197 (store (arr!18321 a!2986) i!1108 k!1786) (size!18685 a!2986)))))

(declare-fun res!411197 () Bool)

(declare-fun e!363460 () Bool)

(assert (=> start!57450 (=> (not res!411197) (not e!363460))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57450 (= res!411197 (validMask!0 mask!3053))))

(assert (=> start!57450 e!363460))

(assert (=> start!57450 true))

(declare-fun array_inv!14095 (array!38196) Bool)

(assert (=> start!57450 (array_inv!14095 a!2986)))

(declare-fun b!635443 () Bool)

(declare-fun e!363461 () Bool)

(assert (=> b!635443 (= e!363461 (not e!363462))))

(declare-fun res!411200 () Bool)

(assert (=> b!635443 (=> res!411200 e!363462)))

(declare-datatypes ((SeekEntryResult!6768 0))(
  ( (MissingZero!6768 (index!29376 (_ BitVec 32))) (Found!6768 (index!29377 (_ BitVec 32))) (Intermediate!6768 (undefined!7580 Bool) (index!29378 (_ BitVec 32)) (x!58152 (_ BitVec 32))) (Undefined!6768) (MissingVacant!6768 (index!29379 (_ BitVec 32))) )
))
(declare-fun lt!293867 () SeekEntryResult!6768)

(assert (=> b!635443 (= res!411200 (not (= lt!293867 (Found!6768 index!984))))))

(declare-datatypes ((Unit!21430 0))(
  ( (Unit!21431) )
))
(declare-fun lt!293866 () Unit!21430)

(declare-fun e!363463 () Unit!21430)

(assert (=> b!635443 (= lt!293866 e!363463)))

(declare-fun c!72491 () Bool)

(assert (=> b!635443 (= c!72491 (= lt!293867 Undefined!6768))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38196 (_ BitVec 32)) SeekEntryResult!6768)

(assert (=> b!635443 (= lt!293867 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293868 lt!293872 mask!3053))))

(declare-fun e!363467 () Bool)

(assert (=> b!635443 e!363467))

(declare-fun res!411193 () Bool)

(assert (=> b!635443 (=> (not res!411193) (not e!363467))))

(declare-fun lt!293873 () (_ BitVec 32))

(declare-fun lt!293869 () SeekEntryResult!6768)

(assert (=> b!635443 (= res!411193 (= lt!293869 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293873 vacantSpotIndex!68 lt!293868 lt!293872 mask!3053)))))

(assert (=> b!635443 (= lt!293869 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293873 vacantSpotIndex!68 (select (arr!18321 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!635443 (= lt!293868 (select (store (arr!18321 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293865 () Unit!21430)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38196 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21430)

(assert (=> b!635443 (= lt!293865 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293873 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!635443 (= lt!293873 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!635444 () Bool)

(declare-fun e!363468 () Bool)

(assert (=> b!635444 (= e!363466 e!363468)))

(declare-fun res!411194 () Bool)

(assert (=> b!635444 (=> res!411194 e!363468)))

(assert (=> b!635444 (= res!411194 (or (not (= (select (arr!18321 a!2986) j!136) lt!293868)) (not (= (select (arr!18321 a!2986) j!136) lt!293870)) (bvsge j!136 index!984)))))

(declare-fun b!635445 () Bool)

(declare-fun res!411196 () Bool)

(assert (=> b!635445 (=> (not res!411196) (not e!363460))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!635445 (= res!411196 (validKeyInArray!0 (select (arr!18321 a!2986) j!136)))))

(declare-fun b!635446 () Bool)

(declare-fun Unit!21432 () Unit!21430)

(assert (=> b!635446 (= e!363463 Unit!21432)))

(declare-fun b!635447 () Bool)

(assert (=> b!635447 (= e!363460 e!363458)))

(declare-fun res!411201 () Bool)

(assert (=> b!635447 (=> (not res!411201) (not e!363458))))

(declare-fun lt!293864 () SeekEntryResult!6768)

(assert (=> b!635447 (= res!411201 (or (= lt!293864 (MissingZero!6768 i!1108)) (= lt!293864 (MissingVacant!6768 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38196 (_ BitVec 32)) SeekEntryResult!6768)

(assert (=> b!635447 (= lt!293864 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!635448 () Bool)

(declare-fun res!411206 () Bool)

(assert (=> b!635448 (=> (not res!411206) (not e!363458))))

(assert (=> b!635448 (= res!411206 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18321 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!635449 () Bool)

(assert (=> b!635449 (= e!363465 e!363461)))

(declare-fun res!411202 () Bool)

(assert (=> b!635449 (=> (not res!411202) (not e!363461))))

(declare-fun lt!293874 () SeekEntryResult!6768)

(assert (=> b!635449 (= res!411202 (and (= lt!293874 (Found!6768 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18321 a!2986) index!984) (select (arr!18321 a!2986) j!136))) (not (= (select (arr!18321 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!635449 (= lt!293874 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18321 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635450 () Bool)

(assert (=> b!635450 (= e!363467 (= lt!293874 lt!293869))))

(declare-fun b!635451 () Bool)

(declare-fun e!363469 () Bool)

(declare-fun arrayContainsKey!0 (array!38196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!635451 (= e!363469 (arrayContainsKey!0 lt!293872 (select (arr!18321 a!2986) j!136) index!984))))

(declare-fun b!635452 () Bool)

(declare-fun Unit!21433 () Unit!21430)

(assert (=> b!635452 (= e!363463 Unit!21433)))

(assert (=> b!635452 false))

(declare-fun b!635453 () Bool)

(declare-fun res!411203 () Bool)

(assert (=> b!635453 (=> (not res!411203) (not e!363460))))

(assert (=> b!635453 (= res!411203 (and (= (size!18685 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18685 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18685 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!635454 () Bool)

(declare-fun res!411199 () Bool)

(assert (=> b!635454 (=> (not res!411199) (not e!363460))))

(assert (=> b!635454 (= res!411199 (validKeyInArray!0 k!1786))))

(declare-fun b!635455 () Bool)

(declare-fun res!411195 () Bool)

(assert (=> b!635455 (=> (not res!411195) (not e!363458))))

(declare-datatypes ((List!12415 0))(
  ( (Nil!12412) (Cons!12411 (h!13456 (_ BitVec 64)) (t!18651 List!12415)) )
))
(declare-fun arrayNoDuplicates!0 (array!38196 (_ BitVec 32) List!12415) Bool)

(assert (=> b!635455 (= res!411195 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12412))))

(declare-fun b!635456 () Bool)

(assert (=> b!635456 (= e!363468 e!363469)))

(declare-fun res!411207 () Bool)

(assert (=> b!635456 (=> (not res!411207) (not e!363469))))

(assert (=> b!635456 (= res!411207 (arrayContainsKey!0 lt!293872 (select (arr!18321 a!2986) j!136) j!136))))

(declare-fun b!635457 () Bool)

(declare-fun res!411204 () Bool)

(assert (=> b!635457 (=> (not res!411204) (not e!363460))))

(assert (=> b!635457 (= res!411204 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!635458 () Bool)

(assert (=> b!635458 (= e!363464 (or (bvsge (size!18685 a!2986) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!18685 a!2986))))))

(assert (=> b!635458 (arrayContainsKey!0 lt!293872 (select (arr!18321 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293871 () Unit!21430)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38196 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21430)

(assert (=> b!635458 (= lt!293871 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293872 (select (arr!18321 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!635459 () Bool)

(declare-fun res!411208 () Bool)

(assert (=> b!635459 (=> (not res!411208) (not e!363458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38196 (_ BitVec 32)) Bool)

(assert (=> b!635459 (= res!411208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!57450 res!411197) b!635453))

(assert (= (and b!635453 res!411203) b!635445))

(assert (= (and b!635445 res!411196) b!635454))

(assert (= (and b!635454 res!411199) b!635457))

(assert (= (and b!635457 res!411204) b!635447))

(assert (= (and b!635447 res!411201) b!635459))

(assert (= (and b!635459 res!411208) b!635455))

(assert (= (and b!635455 res!411195) b!635448))

(assert (= (and b!635448 res!411206) b!635442))

(assert (= (and b!635442 res!411198) b!635449))

(assert (= (and b!635449 res!411202) b!635443))

(assert (= (and b!635443 res!411193) b!635450))

(assert (= (and b!635443 c!72491) b!635452))

(assert (= (and b!635443 (not c!72491)) b!635446))

(assert (= (and b!635443 (not res!411200)) b!635441))

(assert (= (and b!635441 res!411209) b!635444))

(assert (= (and b!635444 (not res!411194)) b!635456))

(assert (= (and b!635456 res!411207) b!635451))

(assert (= (and b!635441 (not res!411205)) b!635458))

(declare-fun m!609843 () Bool)

(assert (=> b!635445 m!609843))

(assert (=> b!635445 m!609843))

(declare-fun m!609845 () Bool)

(assert (=> b!635445 m!609845))

(declare-fun m!609847 () Bool)

(assert (=> b!635455 m!609847))

(declare-fun m!609849 () Bool)

(assert (=> b!635448 m!609849))

(declare-fun m!609851 () Bool)

(assert (=> b!635457 m!609851))

(declare-fun m!609853 () Bool)

(assert (=> b!635459 m!609853))

(declare-fun m!609855 () Bool)

(assert (=> b!635447 m!609855))

(assert (=> b!635444 m!609843))

(declare-fun m!609857 () Bool)

(assert (=> b!635442 m!609857))

(declare-fun m!609859 () Bool)

(assert (=> b!635442 m!609859))

(assert (=> b!635441 m!609843))

(assert (=> b!635441 m!609857))

(declare-fun m!609861 () Bool)

(assert (=> b!635441 m!609861))

(declare-fun m!609863 () Bool)

(assert (=> b!635449 m!609863))

(assert (=> b!635449 m!609843))

(assert (=> b!635449 m!609843))

(declare-fun m!609865 () Bool)

(assert (=> b!635449 m!609865))

(declare-fun m!609867 () Bool)

(assert (=> start!57450 m!609867))

(declare-fun m!609869 () Bool)

(assert (=> start!57450 m!609869))

(declare-fun m!609871 () Bool)

(assert (=> b!635454 m!609871))

(assert (=> b!635456 m!609843))

(assert (=> b!635456 m!609843))

(declare-fun m!609873 () Bool)

(assert (=> b!635456 m!609873))

(assert (=> b!635458 m!609843))

(assert (=> b!635458 m!609843))

(declare-fun m!609875 () Bool)

(assert (=> b!635458 m!609875))

(assert (=> b!635458 m!609843))

(declare-fun m!609877 () Bool)

(assert (=> b!635458 m!609877))

(assert (=> b!635451 m!609843))

(assert (=> b!635451 m!609843))

(declare-fun m!609879 () Bool)

(assert (=> b!635451 m!609879))

(declare-fun m!609881 () Bool)

(assert (=> b!635443 m!609881))

(declare-fun m!609883 () Bool)

(assert (=> b!635443 m!609883))

(assert (=> b!635443 m!609843))

(assert (=> b!635443 m!609857))

(declare-fun m!609885 () Bool)

(assert (=> b!635443 m!609885))

(declare-fun m!609887 () Bool)

(assert (=> b!635443 m!609887))

(assert (=> b!635443 m!609843))

(declare-fun m!609889 () Bool)

(assert (=> b!635443 m!609889))

(declare-fun m!609891 () Bool)

(assert (=> b!635443 m!609891))

(push 1)

