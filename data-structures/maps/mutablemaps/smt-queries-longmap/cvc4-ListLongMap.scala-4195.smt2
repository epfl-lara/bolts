; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57280 () Bool)

(assert start!57280)

(declare-fun b!633645 () Bool)

(declare-fun res!409926 () Bool)

(declare-fun e!362322 () Bool)

(assert (=> b!633645 (=> (not res!409926) (not e!362322))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38146 0))(
  ( (array!38147 (arr!18299 (Array (_ BitVec 32) (_ BitVec 64))) (size!18663 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38146)

(assert (=> b!633645 (= res!409926 (and (= (size!18663 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18663 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18663 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633646 () Bool)

(declare-datatypes ((Unit!21342 0))(
  ( (Unit!21343) )
))
(declare-fun e!362328 () Unit!21342)

(declare-fun Unit!21344 () Unit!21342)

(assert (=> b!633646 (= e!362328 Unit!21344)))

(assert (=> b!633646 false))

(declare-fun b!633647 () Bool)

(declare-fun res!409932 () Bool)

(assert (=> b!633647 (=> (not res!409932) (not e!362322))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633647 (= res!409932 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633648 () Bool)

(declare-fun e!362331 () Bool)

(declare-fun e!362327 () Bool)

(assert (=> b!633648 (= e!362331 (not e!362327))))

(declare-fun res!409940 () Bool)

(assert (=> b!633648 (=> res!409940 e!362327)))

(declare-datatypes ((SeekEntryResult!6746 0))(
  ( (MissingZero!6746 (index!29282 (_ BitVec 32))) (Found!6746 (index!29283 (_ BitVec 32))) (Intermediate!6746 (undefined!7558 Bool) (index!29284 (_ BitVec 32)) (x!58048 (_ BitVec 32))) (Undefined!6746) (MissingVacant!6746 (index!29285 (_ BitVec 32))) )
))
(declare-fun lt!292946 () SeekEntryResult!6746)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!633648 (= res!409940 (not (= lt!292946 (Found!6746 index!984))))))

(declare-fun lt!292949 () Unit!21342)

(assert (=> b!633648 (= lt!292949 e!362328)))

(declare-fun c!72227 () Bool)

(assert (=> b!633648 (= c!72227 (= lt!292946 Undefined!6746))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!292948 () array!38146)

(declare-fun lt!292947 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38146 (_ BitVec 32)) SeekEntryResult!6746)

(assert (=> b!633648 (= lt!292946 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292947 lt!292948 mask!3053))))

(declare-fun e!362330 () Bool)

(assert (=> b!633648 e!362330))

(declare-fun res!409935 () Bool)

(assert (=> b!633648 (=> (not res!409935) (not e!362330))))

(declare-fun lt!292942 () (_ BitVec 32))

(declare-fun lt!292944 () SeekEntryResult!6746)

(assert (=> b!633648 (= res!409935 (= lt!292944 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292942 vacantSpotIndex!68 lt!292947 lt!292948 mask!3053)))))

(assert (=> b!633648 (= lt!292944 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292942 vacantSpotIndex!68 (select (arr!18299 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633648 (= lt!292947 (select (store (arr!18299 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292941 () Unit!21342)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38146 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21342)

(assert (=> b!633648 (= lt!292941 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292942 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633648 (= lt!292942 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!633649 () Bool)

(declare-fun lt!292945 () (_ BitVec 64))

(assert (=> b!633649 (= e!362327 (or (not (= (select (arr!18299 a!2986) j!136) lt!292947)) (not (= (select (arr!18299 a!2986) j!136) lt!292945)) (bvsge j!136 index!984) (bvsge index!984 (size!18663 a!2986)) (bvsge (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000)))))

(declare-fun e!362324 () Bool)

(assert (=> b!633649 e!362324))

(declare-fun res!409934 () Bool)

(assert (=> b!633649 (=> (not res!409934) (not e!362324))))

(assert (=> b!633649 (= res!409934 (= lt!292945 (select (arr!18299 a!2986) j!136)))))

(assert (=> b!633649 (= lt!292945 (select (store (arr!18299 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!633650 () Bool)

(declare-fun res!409939 () Bool)

(declare-fun e!362326 () Bool)

(assert (=> b!633650 (=> (not res!409939) (not e!362326))))

(declare-datatypes ((List!12393 0))(
  ( (Nil!12390) (Cons!12389 (h!13434 (_ BitVec 64)) (t!18629 List!12393)) )
))
(declare-fun arrayNoDuplicates!0 (array!38146 (_ BitVec 32) List!12393) Bool)

(assert (=> b!633650 (= res!409939 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12390))))

(declare-fun e!362325 () Bool)

(declare-fun b!633651 () Bool)

(assert (=> b!633651 (= e!362325 (arrayContainsKey!0 lt!292948 (select (arr!18299 a!2986) j!136) index!984))))

(declare-fun res!409931 () Bool)

(assert (=> start!57280 (=> (not res!409931) (not e!362322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57280 (= res!409931 (validMask!0 mask!3053))))

(assert (=> start!57280 e!362322))

(assert (=> start!57280 true))

(declare-fun array_inv!14073 (array!38146) Bool)

(assert (=> start!57280 (array_inv!14073 a!2986)))

(declare-fun b!633652 () Bool)

(declare-fun e!362332 () Bool)

(assert (=> b!633652 (= e!362332 e!362325)))

(declare-fun res!409930 () Bool)

(assert (=> b!633652 (=> (not res!409930) (not e!362325))))

(assert (=> b!633652 (= res!409930 (arrayContainsKey!0 lt!292948 (select (arr!18299 a!2986) j!136) j!136))))

(declare-fun b!633653 () Bool)

(declare-fun res!409928 () Bool)

(assert (=> b!633653 (=> (not res!409928) (not e!362326))))

(assert (=> b!633653 (= res!409928 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18299 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633654 () Bool)

(declare-fun res!409925 () Bool)

(assert (=> b!633654 (=> (not res!409925) (not e!362322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633654 (= res!409925 (validKeyInArray!0 (select (arr!18299 a!2986) j!136)))))

(declare-fun b!633655 () Bool)

(declare-fun e!362329 () Bool)

(assert (=> b!633655 (= e!362326 e!362329)))

(declare-fun res!409938 () Bool)

(assert (=> b!633655 (=> (not res!409938) (not e!362329))))

(assert (=> b!633655 (= res!409938 (= (select (store (arr!18299 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!633655 (= lt!292948 (array!38147 (store (arr!18299 a!2986) i!1108 k!1786) (size!18663 a!2986)))))

(declare-fun b!633656 () Bool)

(assert (=> b!633656 (= e!362324 e!362332)))

(declare-fun res!409933 () Bool)

(assert (=> b!633656 (=> res!409933 e!362332)))

(assert (=> b!633656 (= res!409933 (or (not (= (select (arr!18299 a!2986) j!136) lt!292947)) (not (= (select (arr!18299 a!2986) j!136) lt!292945)) (bvsge j!136 index!984)))))

(declare-fun b!633657 () Bool)

(declare-fun res!409927 () Bool)

(assert (=> b!633657 (=> (not res!409927) (not e!362322))))

(assert (=> b!633657 (= res!409927 (validKeyInArray!0 k!1786))))

(declare-fun b!633658 () Bool)

(assert (=> b!633658 (= e!362322 e!362326)))

(declare-fun res!409936 () Bool)

(assert (=> b!633658 (=> (not res!409936) (not e!362326))))

(declare-fun lt!292950 () SeekEntryResult!6746)

(assert (=> b!633658 (= res!409936 (or (= lt!292950 (MissingZero!6746 i!1108)) (= lt!292950 (MissingVacant!6746 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38146 (_ BitVec 32)) SeekEntryResult!6746)

(assert (=> b!633658 (= lt!292950 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!633659 () Bool)

(declare-fun Unit!21345 () Unit!21342)

(assert (=> b!633659 (= e!362328 Unit!21345)))

(declare-fun b!633660 () Bool)

(declare-fun res!409937 () Bool)

(assert (=> b!633660 (=> (not res!409937) (not e!362326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38146 (_ BitVec 32)) Bool)

(assert (=> b!633660 (= res!409937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633661 () Bool)

(declare-fun lt!292943 () SeekEntryResult!6746)

(assert (=> b!633661 (= e!362330 (= lt!292943 lt!292944))))

(declare-fun b!633662 () Bool)

(assert (=> b!633662 (= e!362329 e!362331)))

(declare-fun res!409929 () Bool)

(assert (=> b!633662 (=> (not res!409929) (not e!362331))))

(assert (=> b!633662 (= res!409929 (and (= lt!292943 (Found!6746 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18299 a!2986) index!984) (select (arr!18299 a!2986) j!136))) (not (= (select (arr!18299 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!633662 (= lt!292943 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18299 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!57280 res!409931) b!633645))

(assert (= (and b!633645 res!409926) b!633654))

(assert (= (and b!633654 res!409925) b!633657))

(assert (= (and b!633657 res!409927) b!633647))

(assert (= (and b!633647 res!409932) b!633658))

(assert (= (and b!633658 res!409936) b!633660))

(assert (= (and b!633660 res!409937) b!633650))

(assert (= (and b!633650 res!409939) b!633653))

(assert (= (and b!633653 res!409928) b!633655))

(assert (= (and b!633655 res!409938) b!633662))

(assert (= (and b!633662 res!409929) b!633648))

(assert (= (and b!633648 res!409935) b!633661))

(assert (= (and b!633648 c!72227) b!633646))

(assert (= (and b!633648 (not c!72227)) b!633659))

(assert (= (and b!633648 (not res!409940)) b!633649))

(assert (= (and b!633649 res!409934) b!633656))

(assert (= (and b!633656 (not res!409933)) b!633652))

(assert (= (and b!633652 res!409930) b!633651))

(declare-fun m!608309 () Bool)

(assert (=> b!633655 m!608309))

(declare-fun m!608311 () Bool)

(assert (=> b!633655 m!608311))

(declare-fun m!608313 () Bool)

(assert (=> start!57280 m!608313))

(declare-fun m!608315 () Bool)

(assert (=> start!57280 m!608315))

(declare-fun m!608317 () Bool)

(assert (=> b!633662 m!608317))

(declare-fun m!608319 () Bool)

(assert (=> b!633662 m!608319))

(assert (=> b!633662 m!608319))

(declare-fun m!608321 () Bool)

(assert (=> b!633662 m!608321))

(declare-fun m!608323 () Bool)

(assert (=> b!633653 m!608323))

(assert (=> b!633649 m!608319))

(assert (=> b!633649 m!608309))

(declare-fun m!608325 () Bool)

(assert (=> b!633649 m!608325))

(assert (=> b!633651 m!608319))

(assert (=> b!633651 m!608319))

(declare-fun m!608327 () Bool)

(assert (=> b!633651 m!608327))

(declare-fun m!608329 () Bool)

(assert (=> b!633650 m!608329))

(assert (=> b!633656 m!608319))

(declare-fun m!608331 () Bool)

(assert (=> b!633660 m!608331))

(declare-fun m!608333 () Bool)

(assert (=> b!633657 m!608333))

(assert (=> b!633654 m!608319))

(assert (=> b!633654 m!608319))

(declare-fun m!608335 () Bool)

(assert (=> b!633654 m!608335))

(assert (=> b!633652 m!608319))

(assert (=> b!633652 m!608319))

(declare-fun m!608337 () Bool)

(assert (=> b!633652 m!608337))

(declare-fun m!608339 () Bool)

(assert (=> b!633647 m!608339))

(declare-fun m!608341 () Bool)

(assert (=> b!633648 m!608341))

(declare-fun m!608343 () Bool)

(assert (=> b!633648 m!608343))

(assert (=> b!633648 m!608319))

(assert (=> b!633648 m!608309))

(declare-fun m!608345 () Bool)

(assert (=> b!633648 m!608345))

(declare-fun m!608347 () Bool)

(assert (=> b!633648 m!608347))

(declare-fun m!608349 () Bool)

(assert (=> b!633648 m!608349))

(assert (=> b!633648 m!608319))

(declare-fun m!608351 () Bool)

(assert (=> b!633648 m!608351))

(declare-fun m!608353 () Bool)

(assert (=> b!633658 m!608353))

(push 1)

