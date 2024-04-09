; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54916 () Bool)

(assert start!54916)

(declare-fun b!600999 () Bool)

(declare-datatypes ((Unit!18988 0))(
  ( (Unit!18989) )
))
(declare-fun e!343638 () Unit!18988)

(declare-fun Unit!18990 () Unit!18988)

(assert (=> b!600999 (= e!343638 Unit!18990)))

(declare-fun b!601000 () Bool)

(declare-fun e!343636 () Bool)

(declare-fun e!343645 () Bool)

(assert (=> b!601000 (= e!343636 e!343645)))

(declare-fun res!385976 () Bool)

(assert (=> b!601000 (=> (not res!385976) (not e!343645))))

(declare-datatypes ((array!37114 0))(
  ( (array!37115 (arr!17813 (Array (_ BitVec 32) (_ BitVec 64))) (size!18177 (_ BitVec 32))) )
))
(declare-fun lt!273594 () array!37114)

(declare-fun a!2986 () array!37114)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!601000 (= res!385976 (arrayContainsKey!0 lt!273594 (select (arr!17813 a!2986) j!136) j!136))))

(declare-fun b!601001 () Bool)

(declare-fun res!385984 () Bool)

(declare-fun e!343647 () Bool)

(assert (=> b!601001 (=> (not res!385984) (not e!343647))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!601001 (= res!385984 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17813 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!601002 () Bool)

(declare-fun res!385987 () Bool)

(declare-fun e!343648 () Bool)

(assert (=> b!601002 (=> (not res!385987) (not e!343648))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!601002 (= res!385987 (and (= (size!18177 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18177 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18177 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!601003 () Bool)

(declare-fun res!385980 () Bool)

(assert (=> b!601003 (=> (not res!385980) (not e!343647))))

(declare-datatypes ((List!11907 0))(
  ( (Nil!11904) (Cons!11903 (h!12948 (_ BitVec 64)) (t!18143 List!11907)) )
))
(declare-fun arrayNoDuplicates!0 (array!37114 (_ BitVec 32) List!11907) Bool)

(assert (=> b!601003 (= res!385980 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11904))))

(declare-fun b!601004 () Bool)

(declare-fun res!385979 () Bool)

(assert (=> b!601004 (=> (not res!385979) (not e!343647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37114 (_ BitVec 32)) Bool)

(assert (=> b!601004 (= res!385979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!601005 () Bool)

(declare-fun Unit!18991 () Unit!18988)

(assert (=> b!601005 (= e!343638 Unit!18991)))

(assert (=> b!601005 false))

(declare-fun b!601006 () Bool)

(declare-fun e!343639 () Bool)

(declare-fun e!343646 () Bool)

(assert (=> b!601006 (= e!343639 e!343646)))

(declare-fun res!385975 () Bool)

(assert (=> b!601006 (=> res!385975 e!343646)))

(declare-fun lt!273601 () (_ BitVec 64))

(declare-fun lt!273600 () (_ BitVec 64))

(assert (=> b!601006 (= res!385975 (or (not (= (select (arr!17813 a!2986) j!136) lt!273600)) (not (= (select (arr!17813 a!2986) j!136) lt!273601))))))

(declare-fun e!343637 () Bool)

(assert (=> b!601006 e!343637))

(declare-fun res!385982 () Bool)

(assert (=> b!601006 (=> (not res!385982) (not e!343637))))

(assert (=> b!601006 (= res!385982 (= lt!273601 (select (arr!17813 a!2986) j!136)))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!601006 (= lt!273601 (select (store (arr!17813 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!601007 () Bool)

(declare-fun e!343641 () Unit!18988)

(declare-fun Unit!18992 () Unit!18988)

(assert (=> b!601007 (= e!343641 Unit!18992)))

(declare-fun lt!273599 () Unit!18988)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37114 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18988)

(assert (=> b!601007 (= lt!273599 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273594 (select (arr!17813 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!601007 (arrayContainsKey!0 lt!273594 (select (arr!17813 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273602 () Unit!18988)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37114 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11907) Unit!18988)

(assert (=> b!601007 (= lt!273602 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11904))))

(assert (=> b!601007 (arrayNoDuplicates!0 lt!273594 #b00000000000000000000000000000000 Nil!11904)))

(declare-fun lt!273597 () Unit!18988)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37114 (_ BitVec 32) (_ BitVec 32)) Unit!18988)

(assert (=> b!601007 (= lt!273597 (lemmaNoDuplicateFromThenFromBigger!0 lt!273594 #b00000000000000000000000000000000 j!136))))

(assert (=> b!601007 (arrayNoDuplicates!0 lt!273594 j!136 Nil!11904)))

(declare-fun lt!273590 () Unit!18988)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37114 (_ BitVec 64) (_ BitVec 32) List!11907) Unit!18988)

(assert (=> b!601007 (= lt!273590 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!273594 (select (arr!17813 a!2986) j!136) j!136 Nil!11904))))

(assert (=> b!601007 false))

(declare-fun b!601009 () Bool)

(assert (=> b!601009 (= e!343646 true)))

(declare-fun lt!273592 () Unit!18988)

(assert (=> b!601009 (= lt!273592 e!343641)))

(declare-fun c!67879 () Bool)

(assert (=> b!601009 (= c!67879 (bvslt j!136 index!984))))

(declare-fun b!601010 () Bool)

(declare-fun e!343643 () Bool)

(assert (=> b!601010 (= e!343647 e!343643)))

(declare-fun res!385986 () Bool)

(assert (=> b!601010 (=> (not res!385986) (not e!343643))))

(assert (=> b!601010 (= res!385986 (= (select (store (arr!17813 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601010 (= lt!273594 (array!37115 (store (arr!17813 a!2986) i!1108 k!1786) (size!18177 a!2986)))))

(declare-fun b!601011 () Bool)

(declare-fun e!343640 () Bool)

(assert (=> b!601011 (= e!343643 e!343640)))

(declare-fun res!385991 () Bool)

(assert (=> b!601011 (=> (not res!385991) (not e!343640))))

(declare-datatypes ((SeekEntryResult!6260 0))(
  ( (MissingZero!6260 (index!27296 (_ BitVec 32))) (Found!6260 (index!27297 (_ BitVec 32))) (Intermediate!6260 (undefined!7072 Bool) (index!27298 (_ BitVec 32)) (x!56116 (_ BitVec 32))) (Undefined!6260) (MissingVacant!6260 (index!27299 (_ BitVec 32))) )
))
(declare-fun lt!273589 () SeekEntryResult!6260)

(assert (=> b!601011 (= res!385991 (and (= lt!273589 (Found!6260 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17813 a!2986) index!984) (select (arr!17813 a!2986) j!136))) (not (= (select (arr!17813 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37114 (_ BitVec 32)) SeekEntryResult!6260)

(assert (=> b!601011 (= lt!273589 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17813 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!601012 () Bool)

(assert (=> b!601012 (= e!343645 (arrayContainsKey!0 lt!273594 (select (arr!17813 a!2986) j!136) index!984))))

(declare-fun b!601013 () Bool)

(declare-fun res!385988 () Bool)

(assert (=> b!601013 (=> (not res!385988) (not e!343648))))

(assert (=> b!601013 (= res!385988 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!601014 () Bool)

(assert (=> b!601014 (= e!343637 e!343636)))

(declare-fun res!385981 () Bool)

(assert (=> b!601014 (=> res!385981 e!343636)))

(assert (=> b!601014 (= res!385981 (or (not (= (select (arr!17813 a!2986) j!136) lt!273600)) (not (= (select (arr!17813 a!2986) j!136) lt!273601)) (bvsge j!136 index!984)))))

(declare-fun b!601015 () Bool)

(declare-fun res!385977 () Bool)

(assert (=> b!601015 (=> (not res!385977) (not e!343648))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!601015 (= res!385977 (validKeyInArray!0 (select (arr!17813 a!2986) j!136)))))

(declare-fun b!601016 () Bool)

(declare-fun e!343642 () Bool)

(declare-fun lt!273593 () SeekEntryResult!6260)

(assert (=> b!601016 (= e!343642 (= lt!273589 lt!273593))))

(declare-fun b!601017 () Bool)

(declare-fun res!385989 () Bool)

(assert (=> b!601017 (=> (not res!385989) (not e!343648))))

(assert (=> b!601017 (= res!385989 (validKeyInArray!0 k!1786))))

(declare-fun b!601018 () Bool)

(assert (=> b!601018 (= e!343640 (not e!343639))))

(declare-fun res!385985 () Bool)

(assert (=> b!601018 (=> res!385985 e!343639)))

(declare-fun lt!273603 () SeekEntryResult!6260)

(assert (=> b!601018 (= res!385985 (not (= lt!273603 (Found!6260 index!984))))))

(declare-fun lt!273598 () Unit!18988)

(assert (=> b!601018 (= lt!273598 e!343638)))

(declare-fun c!67880 () Bool)

(assert (=> b!601018 (= c!67880 (= lt!273603 Undefined!6260))))

(assert (=> b!601018 (= lt!273603 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273600 lt!273594 mask!3053))))

(assert (=> b!601018 e!343642))

(declare-fun res!385978 () Bool)

(assert (=> b!601018 (=> (not res!385978) (not e!343642))))

(declare-fun lt!273595 () (_ BitVec 32))

(assert (=> b!601018 (= res!385978 (= lt!273593 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273595 vacantSpotIndex!68 lt!273600 lt!273594 mask!3053)))))

(assert (=> b!601018 (= lt!273593 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273595 vacantSpotIndex!68 (select (arr!17813 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!601018 (= lt!273600 (select (store (arr!17813 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273596 () Unit!18988)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37114 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18988)

(assert (=> b!601018 (= lt!273596 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273595 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!601018 (= lt!273595 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!601019 () Bool)

(assert (=> b!601019 (= e!343648 e!343647)))

(declare-fun res!385983 () Bool)

(assert (=> b!601019 (=> (not res!385983) (not e!343647))))

(declare-fun lt!273591 () SeekEntryResult!6260)

(assert (=> b!601019 (= res!385983 (or (= lt!273591 (MissingZero!6260 i!1108)) (= lt!273591 (MissingVacant!6260 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37114 (_ BitVec 32)) SeekEntryResult!6260)

(assert (=> b!601019 (= lt!273591 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!385990 () Bool)

(assert (=> start!54916 (=> (not res!385990) (not e!343648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54916 (= res!385990 (validMask!0 mask!3053))))

(assert (=> start!54916 e!343648))

(assert (=> start!54916 true))

(declare-fun array_inv!13587 (array!37114) Bool)

(assert (=> start!54916 (array_inv!13587 a!2986)))

(declare-fun b!601008 () Bool)

(declare-fun Unit!18993 () Unit!18988)

(assert (=> b!601008 (= e!343641 Unit!18993)))

(assert (= (and start!54916 res!385990) b!601002))

(assert (= (and b!601002 res!385987) b!601015))

(assert (= (and b!601015 res!385977) b!601017))

(assert (= (and b!601017 res!385989) b!601013))

(assert (= (and b!601013 res!385988) b!601019))

(assert (= (and b!601019 res!385983) b!601004))

(assert (= (and b!601004 res!385979) b!601003))

(assert (= (and b!601003 res!385980) b!601001))

(assert (= (and b!601001 res!385984) b!601010))

(assert (= (and b!601010 res!385986) b!601011))

(assert (= (and b!601011 res!385991) b!601018))

(assert (= (and b!601018 res!385978) b!601016))

(assert (= (and b!601018 c!67880) b!601005))

(assert (= (and b!601018 (not c!67880)) b!600999))

(assert (= (and b!601018 (not res!385985)) b!601006))

(assert (= (and b!601006 res!385982) b!601014))

(assert (= (and b!601014 (not res!385981)) b!601000))

(assert (= (and b!601000 res!385976) b!601012))

(assert (= (and b!601006 (not res!385975)) b!601009))

(assert (= (and b!601009 c!67879) b!601007))

(assert (= (and b!601009 (not c!67879)) b!601008))

(declare-fun m!578247 () Bool)

(assert (=> b!601012 m!578247))

(assert (=> b!601012 m!578247))

(declare-fun m!578249 () Bool)

(assert (=> b!601012 m!578249))

(declare-fun m!578251 () Bool)

(assert (=> b!601018 m!578251))

(declare-fun m!578253 () Bool)

(assert (=> b!601018 m!578253))

(assert (=> b!601018 m!578247))

(declare-fun m!578255 () Bool)

(assert (=> b!601018 m!578255))

(assert (=> b!601018 m!578247))

(declare-fun m!578257 () Bool)

(assert (=> b!601018 m!578257))

(declare-fun m!578259 () Bool)

(assert (=> b!601018 m!578259))

(declare-fun m!578261 () Bool)

(assert (=> b!601018 m!578261))

(declare-fun m!578263 () Bool)

(assert (=> b!601018 m!578263))

(declare-fun m!578265 () Bool)

(assert (=> b!601011 m!578265))

(assert (=> b!601011 m!578247))

(assert (=> b!601011 m!578247))

(declare-fun m!578267 () Bool)

(assert (=> b!601011 m!578267))

(assert (=> b!601006 m!578247))

(assert (=> b!601006 m!578255))

(declare-fun m!578269 () Bool)

(assert (=> b!601006 m!578269))

(declare-fun m!578271 () Bool)

(assert (=> b!601019 m!578271))

(declare-fun m!578273 () Bool)

(assert (=> start!54916 m!578273))

(declare-fun m!578275 () Bool)

(assert (=> start!54916 m!578275))

(declare-fun m!578277 () Bool)

(assert (=> b!601013 m!578277))

(assert (=> b!601010 m!578255))

(declare-fun m!578279 () Bool)

(assert (=> b!601010 m!578279))

(declare-fun m!578281 () Bool)

(assert (=> b!601004 m!578281))

(assert (=> b!601000 m!578247))

(assert (=> b!601000 m!578247))

(declare-fun m!578283 () Bool)

(assert (=> b!601000 m!578283))

(declare-fun m!578285 () Bool)

(assert (=> b!601001 m!578285))

(assert (=> b!601015 m!578247))

(assert (=> b!601015 m!578247))

(declare-fun m!578287 () Bool)

(assert (=> b!601015 m!578287))

(declare-fun m!578289 () Bool)

(assert (=> b!601003 m!578289))

(assert (=> b!601007 m!578247))

(declare-fun m!578291 () Bool)

(assert (=> b!601007 m!578291))

(assert (=> b!601007 m!578247))

(declare-fun m!578293 () Bool)

(assert (=> b!601007 m!578293))

(declare-fun m!578295 () Bool)

(assert (=> b!601007 m!578295))

(declare-fun m!578297 () Bool)

(assert (=> b!601007 m!578297))

(declare-fun m!578299 () Bool)

(assert (=> b!601007 m!578299))

(assert (=> b!601007 m!578247))

(declare-fun m!578301 () Bool)

(assert (=> b!601007 m!578301))

(assert (=> b!601007 m!578247))

(declare-fun m!578303 () Bool)

(assert (=> b!601007 m!578303))

(assert (=> b!601014 m!578247))

(declare-fun m!578305 () Bool)

(assert (=> b!601017 m!578305))

(push 1)

