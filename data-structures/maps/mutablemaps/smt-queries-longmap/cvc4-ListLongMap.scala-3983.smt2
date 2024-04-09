; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53990 () Bool)

(assert start!53990)

(declare-fun b!589264 () Bool)

(declare-fun e!336427 () Bool)

(declare-fun e!336423 () Bool)

(assert (=> b!589264 (= e!336427 e!336423)))

(declare-fun res!376930 () Bool)

(assert (=> b!589264 (=> (not res!376930) (not e!336423))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6110 0))(
  ( (MissingZero!6110 (index!26670 (_ BitVec 32))) (Found!6110 (index!26671 (_ BitVec 32))) (Intermediate!6110 (undefined!6922 Bool) (index!26672 (_ BitVec 32)) (x!55487 (_ BitVec 32))) (Undefined!6110) (MissingVacant!6110 (index!26673 (_ BitVec 32))) )
))
(declare-fun lt!267314 () SeekEntryResult!6110)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36788 0))(
  ( (array!36789 (arr!17663 (Array (_ BitVec 32) (_ BitVec 64))) (size!18027 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36788)

(assert (=> b!589264 (= res!376930 (and (= lt!267314 (Found!6110 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17663 a!2986) index!984) (select (arr!17663 a!2986) j!136))) (not (= (select (arr!17663 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36788 (_ BitVec 32)) SeekEntryResult!6110)

(assert (=> b!589264 (= lt!267314 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17663 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589265 () Bool)

(declare-fun res!376932 () Bool)

(declare-fun e!336421 () Bool)

(assert (=> b!589265 (=> (not res!376932) (not e!336421))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589265 (= res!376932 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589266 () Bool)

(declare-fun e!336424 () Bool)

(assert (=> b!589266 (= e!336421 e!336424)))

(declare-fun res!376931 () Bool)

(assert (=> b!589266 (=> (not res!376931) (not e!336424))))

(declare-fun lt!267313 () SeekEntryResult!6110)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589266 (= res!376931 (or (= lt!267313 (MissingZero!6110 i!1108)) (= lt!267313 (MissingVacant!6110 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36788 (_ BitVec 32)) SeekEntryResult!6110)

(assert (=> b!589266 (= lt!267313 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589267 () Bool)

(declare-fun res!376928 () Bool)

(assert (=> b!589267 (=> (not res!376928) (not e!336424))))

(declare-datatypes ((List!11757 0))(
  ( (Nil!11754) (Cons!11753 (h!12798 (_ BitVec 64)) (t!17993 List!11757)) )
))
(declare-fun arrayNoDuplicates!0 (array!36788 (_ BitVec 32) List!11757) Bool)

(assert (=> b!589267 (= res!376928 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11754))))

(declare-fun b!589268 () Bool)

(declare-fun res!376935 () Bool)

(assert (=> b!589268 (=> (not res!376935) (not e!336421))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589268 (= res!376935 (validKeyInArray!0 (select (arr!17663 a!2986) j!136)))))

(declare-fun b!589269 () Bool)

(declare-datatypes ((Unit!18384 0))(
  ( (Unit!18385) )
))
(declare-fun e!336425 () Unit!18384)

(declare-fun Unit!18386 () Unit!18384)

(assert (=> b!589269 (= e!336425 Unit!18386)))

(declare-fun b!589271 () Bool)

(assert (=> b!589271 (= e!336423 (not true))))

(declare-fun lt!267315 () Unit!18384)

(assert (=> b!589271 (= lt!267315 e!336425)))

(declare-fun lt!267316 () array!36788)

(declare-fun c!66536 () Bool)

(declare-fun lt!267320 () (_ BitVec 64))

(assert (=> b!589271 (= c!66536 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267320 lt!267316 mask!3053) Undefined!6110))))

(declare-fun e!336426 () Bool)

(assert (=> b!589271 e!336426))

(declare-fun res!376934 () Bool)

(assert (=> b!589271 (=> (not res!376934) (not e!336426))))

(declare-fun lt!267319 () SeekEntryResult!6110)

(declare-fun lt!267318 () (_ BitVec 32))

(assert (=> b!589271 (= res!376934 (= lt!267319 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267318 vacantSpotIndex!68 lt!267320 lt!267316 mask!3053)))))

(assert (=> b!589271 (= lt!267319 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267318 vacantSpotIndex!68 (select (arr!17663 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589271 (= lt!267320 (select (store (arr!17663 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267317 () Unit!18384)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36788 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18384)

(assert (=> b!589271 (= lt!267317 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267318 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589271 (= lt!267318 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589272 () Bool)

(declare-fun res!376926 () Bool)

(assert (=> b!589272 (=> (not res!376926) (not e!336421))))

(assert (=> b!589272 (= res!376926 (validKeyInArray!0 k!1786))))

(declare-fun b!589273 () Bool)

(declare-fun res!376936 () Bool)

(assert (=> b!589273 (=> (not res!376936) (not e!336421))))

(assert (=> b!589273 (= res!376936 (and (= (size!18027 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18027 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18027 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589274 () Bool)

(declare-fun Unit!18387 () Unit!18384)

(assert (=> b!589274 (= e!336425 Unit!18387)))

(assert (=> b!589274 false))

(declare-fun b!589275 () Bool)

(assert (=> b!589275 (= e!336424 e!336427)))

(declare-fun res!376927 () Bool)

(assert (=> b!589275 (=> (not res!376927) (not e!336427))))

(assert (=> b!589275 (= res!376927 (= (select (store (arr!17663 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589275 (= lt!267316 (array!36789 (store (arr!17663 a!2986) i!1108 k!1786) (size!18027 a!2986)))))

(declare-fun b!589270 () Bool)

(declare-fun res!376933 () Bool)

(assert (=> b!589270 (=> (not res!376933) (not e!336424))))

(assert (=> b!589270 (= res!376933 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17663 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!376937 () Bool)

(assert (=> start!53990 (=> (not res!376937) (not e!336421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53990 (= res!376937 (validMask!0 mask!3053))))

(assert (=> start!53990 e!336421))

(assert (=> start!53990 true))

(declare-fun array_inv!13437 (array!36788) Bool)

(assert (=> start!53990 (array_inv!13437 a!2986)))

(declare-fun b!589276 () Bool)

(declare-fun res!376929 () Bool)

(assert (=> b!589276 (=> (not res!376929) (not e!336424))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36788 (_ BitVec 32)) Bool)

(assert (=> b!589276 (= res!376929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589277 () Bool)

(assert (=> b!589277 (= e!336426 (= lt!267314 lt!267319))))

(assert (= (and start!53990 res!376937) b!589273))

(assert (= (and b!589273 res!376936) b!589268))

(assert (= (and b!589268 res!376935) b!589272))

(assert (= (and b!589272 res!376926) b!589265))

(assert (= (and b!589265 res!376932) b!589266))

(assert (= (and b!589266 res!376931) b!589276))

(assert (= (and b!589276 res!376929) b!589267))

(assert (= (and b!589267 res!376928) b!589270))

(assert (= (and b!589270 res!376933) b!589275))

(assert (= (and b!589275 res!376927) b!589264))

(assert (= (and b!589264 res!376930) b!589271))

(assert (= (and b!589271 res!376934) b!589277))

(assert (= (and b!589271 c!66536) b!589274))

(assert (= (and b!589271 (not c!66536)) b!589269))

(declare-fun m!567843 () Bool)

(assert (=> b!589271 m!567843))

(declare-fun m!567845 () Bool)

(assert (=> b!589271 m!567845))

(declare-fun m!567847 () Bool)

(assert (=> b!589271 m!567847))

(declare-fun m!567849 () Bool)

(assert (=> b!589271 m!567849))

(declare-fun m!567851 () Bool)

(assert (=> b!589271 m!567851))

(declare-fun m!567853 () Bool)

(assert (=> b!589271 m!567853))

(assert (=> b!589271 m!567847))

(declare-fun m!567855 () Bool)

(assert (=> b!589271 m!567855))

(declare-fun m!567857 () Bool)

(assert (=> b!589271 m!567857))

(declare-fun m!567859 () Bool)

(assert (=> b!589276 m!567859))

(declare-fun m!567861 () Bool)

(assert (=> b!589265 m!567861))

(assert (=> b!589275 m!567849))

(declare-fun m!567863 () Bool)

(assert (=> b!589275 m!567863))

(declare-fun m!567865 () Bool)

(assert (=> b!589266 m!567865))

(declare-fun m!567867 () Bool)

(assert (=> b!589267 m!567867))

(declare-fun m!567869 () Bool)

(assert (=> b!589272 m!567869))

(declare-fun m!567871 () Bool)

(assert (=> b!589264 m!567871))

(assert (=> b!589264 m!567847))

(assert (=> b!589264 m!567847))

(declare-fun m!567873 () Bool)

(assert (=> b!589264 m!567873))

(assert (=> b!589268 m!567847))

(assert (=> b!589268 m!567847))

(declare-fun m!567875 () Bool)

(assert (=> b!589268 m!567875))

(declare-fun m!567877 () Bool)

(assert (=> b!589270 m!567877))

(declare-fun m!567879 () Bool)

(assert (=> start!53990 m!567879))

(declare-fun m!567881 () Bool)

(assert (=> start!53990 m!567881))

(push 1)

(assert (not b!589265))

(assert (not b!589264))

(assert (not b!589266))

(assert (not b!589272))

(assert (not b!589276))

(assert (not start!53990))

(assert (not b!589268))

(assert (not b!589271))

(assert (not b!589267))

(check-sat)

(pop 1)

