; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55952 () Bool)

(assert start!55952)

(declare-fun b!612994 () Bool)

(declare-fun res!394637 () Bool)

(declare-fun e!351399 () Bool)

(assert (=> b!612994 (=> (not res!394637) (not e!351399))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!612994 (= res!394637 (validKeyInArray!0 k0!1786))))

(declare-fun b!612996 () Bool)

(declare-fun res!394616 () Bool)

(declare-fun e!351412 () Bool)

(assert (=> b!612996 (=> (not res!394616) (not e!351412))))

(declare-datatypes ((array!37385 0))(
  ( (array!37386 (arr!17935 (Array (_ BitVec 32) (_ BitVec 64))) (size!18299 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37385)

(declare-datatypes ((List!12029 0))(
  ( (Nil!12026) (Cons!12025 (h!13070 (_ BitVec 64)) (t!18265 List!12029)) )
))
(declare-fun arrayNoDuplicates!0 (array!37385 (_ BitVec 32) List!12029) Bool)

(assert (=> b!612996 (= res!394616 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12026))))

(declare-fun b!612997 () Bool)

(declare-fun e!351402 () Bool)

(declare-fun e!351406 () Bool)

(assert (=> b!612997 (= e!351402 e!351406)))

(declare-fun res!394626 () Bool)

(assert (=> b!612997 (=> (not res!394626) (not e!351406))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6382 0))(
  ( (MissingZero!6382 (index!27811 (_ BitVec 32))) (Found!6382 (index!27812 (_ BitVec 32))) (Intermediate!6382 (undefined!7194 Bool) (index!27813 (_ BitVec 32)) (x!56647 (_ BitVec 32))) (Undefined!6382) (MissingVacant!6382 (index!27814 (_ BitVec 32))) )
))
(declare-fun lt!280953 () SeekEntryResult!6382)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!612997 (= res!394626 (and (= lt!280953 (Found!6382 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17935 a!2986) index!984) (select (arr!17935 a!2986) j!136))) (not (= (select (arr!17935 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37385 (_ BitVec 32)) SeekEntryResult!6382)

(assert (=> b!612997 (= lt!280953 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17935 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!612998 () Bool)

(declare-datatypes ((Unit!19720 0))(
  ( (Unit!19721) )
))
(declare-fun e!351411 () Unit!19720)

(declare-fun Unit!19722 () Unit!19720)

(assert (=> b!612998 (= e!351411 Unit!19722)))

(assert (=> b!612998 false))

(declare-fun b!612999 () Bool)

(declare-fun res!394622 () Bool)

(assert (=> b!612999 (=> (not res!394622) (not e!351412))))

(assert (=> b!612999 (= res!394622 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17935 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!280938 () array!37385)

(declare-fun b!613000 () Bool)

(declare-fun e!351410 () Bool)

(declare-fun arrayContainsKey!0 (array!37385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!613000 (= e!351410 (arrayContainsKey!0 lt!280938 (select (arr!17935 a!2986) j!136) index!984))))

(declare-fun b!613001 () Bool)

(declare-fun e!351408 () Bool)

(declare-fun e!351404 () Bool)

(assert (=> b!613001 (= e!351408 e!351404)))

(declare-fun res!394630 () Bool)

(assert (=> b!613001 (=> res!394630 e!351404)))

(assert (=> b!613001 (= res!394630 (bvsge index!984 j!136))))

(declare-fun lt!280935 () Unit!19720)

(declare-fun e!351401 () Unit!19720)

(assert (=> b!613001 (= lt!280935 e!351401)))

(declare-fun c!69556 () Bool)

(assert (=> b!613001 (= c!69556 (bvslt j!136 index!984))))

(declare-fun b!613002 () Bool)

(declare-fun e!351397 () Bool)

(declare-fun e!351407 () Bool)

(assert (=> b!613002 (= e!351397 e!351407)))

(declare-fun res!394629 () Bool)

(assert (=> b!613002 (=> res!394629 e!351407)))

(declare-fun lt!280941 () (_ BitVec 64))

(declare-fun lt!280944 () (_ BitVec 64))

(assert (=> b!613002 (= res!394629 (or (not (= (select (arr!17935 a!2986) j!136) lt!280941)) (not (= (select (arr!17935 a!2986) j!136) lt!280944)) (bvsge j!136 index!984)))))

(declare-fun b!613003 () Bool)

(declare-fun e!351400 () Bool)

(assert (=> b!613003 (= e!351400 (arrayContainsKey!0 lt!280938 (select (arr!17935 a!2986) j!136) index!984))))

(declare-fun b!613004 () Bool)

(declare-fun Unit!19723 () Unit!19720)

(assert (=> b!613004 (= e!351401 Unit!19723)))

(declare-fun b!613005 () Bool)

(declare-fun res!394627 () Bool)

(assert (=> b!613005 (=> (not res!394627) (not e!351399))))

(assert (=> b!613005 (= res!394627 (validKeyInArray!0 (select (arr!17935 a!2986) j!136)))))

(declare-fun b!613006 () Bool)

(declare-fun res!394628 () Bool)

(assert (=> b!613006 (=> (not res!394628) (not e!351399))))

(assert (=> b!613006 (= res!394628 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!613007 () Bool)

(declare-fun res!394635 () Bool)

(assert (=> b!613007 (=> (not res!394635) (not e!351399))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!613007 (= res!394635 (and (= (size!18299 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18299 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18299 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!613008 () Bool)

(declare-fun e!351405 () Bool)

(declare-fun lt!280936 () SeekEntryResult!6382)

(assert (=> b!613008 (= e!351405 (= lt!280953 lt!280936))))

(declare-fun b!612995 () Bool)

(assert (=> b!612995 (= e!351399 e!351412)))

(declare-fun res!394621 () Bool)

(assert (=> b!612995 (=> (not res!394621) (not e!351412))))

(declare-fun lt!280949 () SeekEntryResult!6382)

(assert (=> b!612995 (= res!394621 (or (= lt!280949 (MissingZero!6382 i!1108)) (= lt!280949 (MissingVacant!6382 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37385 (_ BitVec 32)) SeekEntryResult!6382)

(assert (=> b!612995 (= lt!280949 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!394625 () Bool)

(assert (=> start!55952 (=> (not res!394625) (not e!351399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55952 (= res!394625 (validMask!0 mask!3053))))

(assert (=> start!55952 e!351399))

(assert (=> start!55952 true))

(declare-fun array_inv!13709 (array!37385) Bool)

(assert (=> start!55952 (array_inv!13709 a!2986)))

(declare-fun b!613009 () Bool)

(declare-fun e!351398 () Bool)

(assert (=> b!613009 (= e!351398 e!351408)))

(declare-fun res!394634 () Bool)

(assert (=> b!613009 (=> res!394634 e!351408)))

(assert (=> b!613009 (= res!394634 (or (not (= (select (arr!17935 a!2986) j!136) lt!280941)) (not (= (select (arr!17935 a!2986) j!136) lt!280944))))))

(assert (=> b!613009 e!351397))

(declare-fun res!394617 () Bool)

(assert (=> b!613009 (=> (not res!394617) (not e!351397))))

(assert (=> b!613009 (= res!394617 (= lt!280944 (select (arr!17935 a!2986) j!136)))))

(assert (=> b!613009 (= lt!280944 (select (store (arr!17935 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!613010 () Bool)

(declare-fun Unit!19724 () Unit!19720)

(assert (=> b!613010 (= e!351411 Unit!19724)))

(declare-fun b!613011 () Bool)

(declare-fun res!394636 () Bool)

(declare-fun e!351403 () Bool)

(assert (=> b!613011 (=> res!394636 e!351403)))

(declare-fun noDuplicate!356 (List!12029) Bool)

(assert (=> b!613011 (= res!394636 (not (noDuplicate!356 Nil!12026)))))

(declare-fun b!613012 () Bool)

(assert (=> b!613012 (= e!351404 e!351403)))

(declare-fun res!394619 () Bool)

(assert (=> b!613012 (=> res!394619 e!351403)))

(assert (=> b!613012 (= res!394619 (or (bvsge (size!18299 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18299 a!2986)) (bvsge index!984 (size!18299 a!2986))))))

(assert (=> b!613012 (arrayNoDuplicates!0 lt!280938 index!984 Nil!12026)))

(declare-fun lt!280947 () Unit!19720)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37385 (_ BitVec 32) (_ BitVec 32)) Unit!19720)

(assert (=> b!613012 (= lt!280947 (lemmaNoDuplicateFromThenFromBigger!0 lt!280938 #b00000000000000000000000000000000 index!984))))

(assert (=> b!613012 (arrayNoDuplicates!0 lt!280938 #b00000000000000000000000000000000 Nil!12026)))

(declare-fun lt!280943 () Unit!19720)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37385 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12029) Unit!19720)

(assert (=> b!613012 (= lt!280943 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12026))))

(assert (=> b!613012 (arrayContainsKey!0 lt!280938 (select (arr!17935 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280946 () Unit!19720)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37385 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19720)

(assert (=> b!613012 (= lt!280946 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280938 (select (arr!17935 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!613012 e!351400))

(declare-fun res!394632 () Bool)

(assert (=> b!613012 (=> (not res!394632) (not e!351400))))

(assert (=> b!613012 (= res!394632 (arrayContainsKey!0 lt!280938 (select (arr!17935 a!2986) j!136) j!136))))

(declare-fun b!613013 () Bool)

(assert (=> b!613013 (= e!351403 true)))

(declare-fun lt!280940 () Bool)

(declare-fun contains!3056 (List!12029 (_ BitVec 64)) Bool)

(assert (=> b!613013 (= lt!280940 (contains!3056 Nil!12026 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!613014 () Bool)

(declare-fun res!394618 () Bool)

(assert (=> b!613014 (=> (not res!394618) (not e!351412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37385 (_ BitVec 32)) Bool)

(assert (=> b!613014 (= res!394618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!613015 () Bool)

(declare-fun res!394623 () Bool)

(assert (=> b!613015 (=> res!394623 e!351403)))

(assert (=> b!613015 (= res!394623 (contains!3056 Nil!12026 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!613016 () Bool)

(assert (=> b!613016 (= e!351407 e!351410)))

(declare-fun res!394633 () Bool)

(assert (=> b!613016 (=> (not res!394633) (not e!351410))))

(assert (=> b!613016 (= res!394633 (arrayContainsKey!0 lt!280938 (select (arr!17935 a!2986) j!136) j!136))))

(declare-fun b!613017 () Bool)

(assert (=> b!613017 (= e!351412 e!351402)))

(declare-fun res!394620 () Bool)

(assert (=> b!613017 (=> (not res!394620) (not e!351402))))

(assert (=> b!613017 (= res!394620 (= (select (store (arr!17935 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!613017 (= lt!280938 (array!37386 (store (arr!17935 a!2986) i!1108 k0!1786) (size!18299 a!2986)))))

(declare-fun b!613018 () Bool)

(assert (=> b!613018 (= e!351406 (not e!351398))))

(declare-fun res!394631 () Bool)

(assert (=> b!613018 (=> res!394631 e!351398)))

(declare-fun lt!280952 () SeekEntryResult!6382)

(assert (=> b!613018 (= res!394631 (not (= lt!280952 (Found!6382 index!984))))))

(declare-fun lt!280939 () Unit!19720)

(assert (=> b!613018 (= lt!280939 e!351411)))

(declare-fun c!69557 () Bool)

(assert (=> b!613018 (= c!69557 (= lt!280952 Undefined!6382))))

(assert (=> b!613018 (= lt!280952 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280941 lt!280938 mask!3053))))

(assert (=> b!613018 e!351405))

(declare-fun res!394624 () Bool)

(assert (=> b!613018 (=> (not res!394624) (not e!351405))))

(declare-fun lt!280937 () (_ BitVec 32))

(assert (=> b!613018 (= res!394624 (= lt!280936 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280937 vacantSpotIndex!68 lt!280941 lt!280938 mask!3053)))))

(assert (=> b!613018 (= lt!280936 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280937 vacantSpotIndex!68 (select (arr!17935 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!613018 (= lt!280941 (select (store (arr!17935 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!280945 () Unit!19720)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37385 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19720)

(assert (=> b!613018 (= lt!280945 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280937 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!613018 (= lt!280937 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!613019 () Bool)

(declare-fun Unit!19725 () Unit!19720)

(assert (=> b!613019 (= e!351401 Unit!19725)))

(declare-fun lt!280948 () Unit!19720)

(assert (=> b!613019 (= lt!280948 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280938 (select (arr!17935 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!613019 (arrayContainsKey!0 lt!280938 (select (arr!17935 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280950 () Unit!19720)

(assert (=> b!613019 (= lt!280950 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12026))))

(assert (=> b!613019 (arrayNoDuplicates!0 lt!280938 #b00000000000000000000000000000000 Nil!12026)))

(declare-fun lt!280942 () Unit!19720)

(assert (=> b!613019 (= lt!280942 (lemmaNoDuplicateFromThenFromBigger!0 lt!280938 #b00000000000000000000000000000000 j!136))))

(assert (=> b!613019 (arrayNoDuplicates!0 lt!280938 j!136 Nil!12026)))

(declare-fun lt!280951 () Unit!19720)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37385 (_ BitVec 64) (_ BitVec 32) List!12029) Unit!19720)

(assert (=> b!613019 (= lt!280951 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280938 (select (arr!17935 a!2986) j!136) j!136 Nil!12026))))

(assert (=> b!613019 false))

(assert (= (and start!55952 res!394625) b!613007))

(assert (= (and b!613007 res!394635) b!613005))

(assert (= (and b!613005 res!394627) b!612994))

(assert (= (and b!612994 res!394637) b!613006))

(assert (= (and b!613006 res!394628) b!612995))

(assert (= (and b!612995 res!394621) b!613014))

(assert (= (and b!613014 res!394618) b!612996))

(assert (= (and b!612996 res!394616) b!612999))

(assert (= (and b!612999 res!394622) b!613017))

(assert (= (and b!613017 res!394620) b!612997))

(assert (= (and b!612997 res!394626) b!613018))

(assert (= (and b!613018 res!394624) b!613008))

(assert (= (and b!613018 c!69557) b!612998))

(assert (= (and b!613018 (not c!69557)) b!613010))

(assert (= (and b!613018 (not res!394631)) b!613009))

(assert (= (and b!613009 res!394617) b!613002))

(assert (= (and b!613002 (not res!394629)) b!613016))

(assert (= (and b!613016 res!394633) b!613000))

(assert (= (and b!613009 (not res!394634)) b!613001))

(assert (= (and b!613001 c!69556) b!613019))

(assert (= (and b!613001 (not c!69556)) b!613004))

(assert (= (and b!613001 (not res!394630)) b!613012))

(assert (= (and b!613012 res!394632) b!613003))

(assert (= (and b!613012 (not res!394619)) b!613011))

(assert (= (and b!613011 (not res!394636)) b!613015))

(assert (= (and b!613015 (not res!394623)) b!613013))

(declare-fun m!589343 () Bool)

(assert (=> b!613009 m!589343))

(declare-fun m!589345 () Bool)

(assert (=> b!613009 m!589345))

(declare-fun m!589347 () Bool)

(assert (=> b!613009 m!589347))

(declare-fun m!589349 () Bool)

(assert (=> b!613006 m!589349))

(declare-fun m!589351 () Bool)

(assert (=> b!613014 m!589351))

(declare-fun m!589353 () Bool)

(assert (=> b!613011 m!589353))

(declare-fun m!589355 () Bool)

(assert (=> b!613012 m!589355))

(assert (=> b!613012 m!589343))

(declare-fun m!589357 () Bool)

(assert (=> b!613012 m!589357))

(assert (=> b!613012 m!589343))

(assert (=> b!613012 m!589343))

(declare-fun m!589359 () Bool)

(assert (=> b!613012 m!589359))

(declare-fun m!589361 () Bool)

(assert (=> b!613012 m!589361))

(declare-fun m!589363 () Bool)

(assert (=> b!613012 m!589363))

(assert (=> b!613012 m!589343))

(declare-fun m!589365 () Bool)

(assert (=> b!613012 m!589365))

(declare-fun m!589367 () Bool)

(assert (=> b!613012 m!589367))

(declare-fun m!589369 () Bool)

(assert (=> b!612995 m!589369))

(assert (=> b!613017 m!589345))

(declare-fun m!589371 () Bool)

(assert (=> b!613017 m!589371))

(declare-fun m!589373 () Bool)

(assert (=> b!612996 m!589373))

(declare-fun m!589375 () Bool)

(assert (=> b!612999 m!589375))

(declare-fun m!589377 () Bool)

(assert (=> start!55952 m!589377))

(declare-fun m!589379 () Bool)

(assert (=> start!55952 m!589379))

(declare-fun m!589381 () Bool)

(assert (=> b!612994 m!589381))

(declare-fun m!589383 () Bool)

(assert (=> b!613013 m!589383))

(assert (=> b!613016 m!589343))

(assert (=> b!613016 m!589343))

(assert (=> b!613016 m!589357))

(declare-fun m!589385 () Bool)

(assert (=> b!613015 m!589385))

(assert (=> b!613000 m!589343))

(assert (=> b!613000 m!589343))

(declare-fun m!589387 () Bool)

(assert (=> b!613000 m!589387))

(declare-fun m!589389 () Bool)

(assert (=> b!612997 m!589389))

(assert (=> b!612997 m!589343))

(assert (=> b!612997 m!589343))

(declare-fun m!589391 () Bool)

(assert (=> b!612997 m!589391))

(assert (=> b!613019 m!589343))

(declare-fun m!589393 () Bool)

(assert (=> b!613019 m!589393))

(assert (=> b!613019 m!589343))

(assert (=> b!613019 m!589361))

(declare-fun m!589395 () Bool)

(assert (=> b!613019 m!589395))

(assert (=> b!613019 m!589343))

(declare-fun m!589397 () Bool)

(assert (=> b!613019 m!589397))

(declare-fun m!589399 () Bool)

(assert (=> b!613019 m!589399))

(assert (=> b!613019 m!589343))

(declare-fun m!589401 () Bool)

(assert (=> b!613019 m!589401))

(assert (=> b!613019 m!589367))

(assert (=> b!613005 m!589343))

(assert (=> b!613005 m!589343))

(declare-fun m!589403 () Bool)

(assert (=> b!613005 m!589403))

(assert (=> b!613002 m!589343))

(declare-fun m!589405 () Bool)

(assert (=> b!613018 m!589405))

(declare-fun m!589407 () Bool)

(assert (=> b!613018 m!589407))

(declare-fun m!589409 () Bool)

(assert (=> b!613018 m!589409))

(assert (=> b!613018 m!589343))

(assert (=> b!613018 m!589345))

(assert (=> b!613018 m!589343))

(declare-fun m!589411 () Bool)

(assert (=> b!613018 m!589411))

(declare-fun m!589413 () Bool)

(assert (=> b!613018 m!589413))

(declare-fun m!589415 () Bool)

(assert (=> b!613018 m!589415))

(assert (=> b!613003 m!589343))

(assert (=> b!613003 m!589343))

(assert (=> b!613003 m!589387))

(check-sat (not b!612994) (not b!613016) (not b!613014) (not b!613000) (not b!613005) (not b!613018) (not b!613013) (not b!613011) (not b!612996) (not start!55952) (not b!613003) (not b!613006) (not b!613015) (not b!613012) (not b!612997) (not b!613019) (not b!612995))
(check-sat)
