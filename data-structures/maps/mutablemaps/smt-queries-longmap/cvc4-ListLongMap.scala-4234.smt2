; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58360 () Bool)

(assert start!58360)

(declare-fun b!644407 () Bool)

(declare-fun res!417620 () Bool)

(declare-fun e!369239 () Bool)

(assert (=> b!644407 (=> (not res!417620) (not e!369239))))

(declare-datatypes ((array!38413 0))(
  ( (array!38414 (arr!18416 (Array (_ BitVec 32) (_ BitVec 64))) (size!18780 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38413)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38413 (_ BitVec 32)) Bool)

(assert (=> b!644407 (= res!417620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!644408 () Bool)

(declare-fun e!369230 () Bool)

(declare-fun e!369241 () Bool)

(assert (=> b!644408 (= e!369230 e!369241)))

(declare-fun res!417631 () Bool)

(assert (=> b!644408 (=> res!417631 e!369241)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!298772 () (_ BitVec 64))

(declare-fun lt!298776 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!644408 (= res!417631 (or (not (= (select (arr!18416 a!2986) j!136) lt!298772)) (not (= (select (arr!18416 a!2986) j!136) lt!298776)) (bvsge j!136 index!984)))))

(declare-fun res!417627 () Bool)

(declare-fun e!369240 () Bool)

(assert (=> start!58360 (=> (not res!417627) (not e!369240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58360 (= res!417627 (validMask!0 mask!3053))))

(assert (=> start!58360 e!369240))

(assert (=> start!58360 true))

(declare-fun array_inv!14190 (array!38413) Bool)

(assert (=> start!58360 (array_inv!14190 a!2986)))

(declare-fun b!644409 () Bool)

(declare-fun res!417625 () Bool)

(assert (=> b!644409 (=> (not res!417625) (not e!369239))))

(declare-datatypes ((List!12510 0))(
  ( (Nil!12507) (Cons!12506 (h!13551 (_ BitVec 64)) (t!18746 List!12510)) )
))
(declare-fun arrayNoDuplicates!0 (array!38413 (_ BitVec 32) List!12510) Bool)

(assert (=> b!644409 (= res!417625 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12507))))

(declare-fun b!644410 () Bool)

(declare-datatypes ((Unit!21850 0))(
  ( (Unit!21851) )
))
(declare-fun e!369237 () Unit!21850)

(declare-fun Unit!21852 () Unit!21850)

(assert (=> b!644410 (= e!369237 Unit!21852)))

(declare-fun b!644411 () Bool)

(declare-fun e!369235 () Bool)

(declare-fun e!369238 () Bool)

(assert (=> b!644411 (= e!369235 (not e!369238))))

(declare-fun res!417630 () Bool)

(assert (=> b!644411 (=> res!417630 e!369238)))

(declare-datatypes ((SeekEntryResult!6863 0))(
  ( (MissingZero!6863 (index!29783 (_ BitVec 32))) (Found!6863 (index!29784 (_ BitVec 32))) (Intermediate!6863 (undefined!7675 Bool) (index!29785 (_ BitVec 32)) (x!58576 (_ BitVec 32))) (Undefined!6863) (MissingVacant!6863 (index!29786 (_ BitVec 32))) )
))
(declare-fun lt!298764 () SeekEntryResult!6863)

(assert (=> b!644411 (= res!417630 (not (= lt!298764 (Found!6863 index!984))))))

(declare-fun lt!298767 () Unit!21850)

(assert (=> b!644411 (= lt!298767 e!369237)))

(declare-fun c!73763 () Bool)

(assert (=> b!644411 (= c!73763 (= lt!298764 Undefined!6863))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!298774 () array!38413)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38413 (_ BitVec 32)) SeekEntryResult!6863)

(assert (=> b!644411 (= lt!298764 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298772 lt!298774 mask!3053))))

(declare-fun e!369231 () Bool)

(assert (=> b!644411 e!369231))

(declare-fun res!417635 () Bool)

(assert (=> b!644411 (=> (not res!417635) (not e!369231))))

(declare-fun lt!298771 () SeekEntryResult!6863)

(declare-fun lt!298765 () (_ BitVec 32))

(assert (=> b!644411 (= res!417635 (= lt!298771 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298765 vacantSpotIndex!68 lt!298772 lt!298774 mask!3053)))))

(assert (=> b!644411 (= lt!298771 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298765 vacantSpotIndex!68 (select (arr!18416 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!644411 (= lt!298772 (select (store (arr!18416 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!298762 () Unit!21850)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38413 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21850)

(assert (=> b!644411 (= lt!298762 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298765 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!644411 (= lt!298765 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!644412 () Bool)

(declare-fun e!369228 () Unit!21850)

(declare-fun Unit!21853 () Unit!21850)

(assert (=> b!644412 (= e!369228 Unit!21853)))

(declare-fun b!644413 () Bool)

(assert (=> b!644413 (= e!369240 e!369239)))

(declare-fun res!417621 () Bool)

(assert (=> b!644413 (=> (not res!417621) (not e!369239))))

(declare-fun lt!298766 () SeekEntryResult!6863)

(assert (=> b!644413 (= res!417621 (or (= lt!298766 (MissingZero!6863 i!1108)) (= lt!298766 (MissingVacant!6863 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38413 (_ BitVec 32)) SeekEntryResult!6863)

(assert (=> b!644413 (= lt!298766 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun e!369236 () Bool)

(declare-fun b!644414 () Bool)

(declare-fun arrayContainsKey!0 (array!38413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!644414 (= e!369236 (arrayContainsKey!0 lt!298774 (select (arr!18416 a!2986) j!136) index!984))))

(declare-fun b!644415 () Bool)

(declare-fun res!417633 () Bool)

(assert (=> b!644415 (=> (not res!417633) (not e!369239))))

(assert (=> b!644415 (= res!417633 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18416 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!644416 () Bool)

(declare-fun e!369229 () Bool)

(assert (=> b!644416 (= e!369239 e!369229)))

(declare-fun res!417617 () Bool)

(assert (=> b!644416 (=> (not res!417617) (not e!369229))))

(assert (=> b!644416 (= res!417617 (= (select (store (arr!18416 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!644416 (= lt!298774 (array!38414 (store (arr!18416 a!2986) i!1108 k!1786) (size!18780 a!2986)))))

(declare-fun b!644417 () Bool)

(declare-fun e!369227 () Bool)

(assert (=> b!644417 (= e!369227 (or (bvslt (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000) (bvslt (size!18780 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!644417 e!369236))

(declare-fun res!417632 () Bool)

(assert (=> b!644417 (=> (not res!417632) (not e!369236))))

(assert (=> b!644417 (= res!417632 (arrayContainsKey!0 lt!298774 (select (arr!18416 a!2986) j!136) j!136))))

(declare-fun b!644418 () Bool)

(declare-fun res!417628 () Bool)

(assert (=> b!644418 (=> (not res!417628) (not e!369240))))

(assert (=> b!644418 (= res!417628 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!644419 () Bool)

(declare-fun Unit!21854 () Unit!21850)

(assert (=> b!644419 (= e!369237 Unit!21854)))

(assert (=> b!644419 false))

(declare-fun b!644420 () Bool)

(declare-fun lt!298770 () SeekEntryResult!6863)

(assert (=> b!644420 (= e!369231 (= lt!298770 lt!298771))))

(declare-fun b!644421 () Bool)

(declare-fun res!417626 () Bool)

(assert (=> b!644421 (=> (not res!417626) (not e!369240))))

(assert (=> b!644421 (= res!417626 (and (= (size!18780 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18780 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18780 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!644422 () Bool)

(declare-fun res!417618 () Bool)

(assert (=> b!644422 (=> (not res!417618) (not e!369240))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!644422 (= res!417618 (validKeyInArray!0 k!1786))))

(declare-fun b!644423 () Bool)

(declare-fun e!369233 () Bool)

(assert (=> b!644423 (= e!369233 e!369227)))

(declare-fun res!417622 () Bool)

(assert (=> b!644423 (=> res!417622 e!369227)))

(assert (=> b!644423 (= res!417622 (bvsge index!984 j!136))))

(declare-fun lt!298773 () Unit!21850)

(assert (=> b!644423 (= lt!298773 e!369228)))

(declare-fun c!73762 () Bool)

(assert (=> b!644423 (= c!73762 (bvslt j!136 index!984))))

(declare-fun b!644424 () Bool)

(declare-fun Unit!21855 () Unit!21850)

(assert (=> b!644424 (= e!369228 Unit!21855)))

(declare-fun lt!298775 () Unit!21850)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38413 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21850)

(assert (=> b!644424 (= lt!298775 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298774 (select (arr!18416 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!644424 (arrayContainsKey!0 lt!298774 (select (arr!18416 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298769 () Unit!21850)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38413 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12510) Unit!21850)

(assert (=> b!644424 (= lt!298769 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12507))))

(assert (=> b!644424 (arrayNoDuplicates!0 lt!298774 #b00000000000000000000000000000000 Nil!12507)))

(declare-fun lt!298768 () Unit!21850)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38413 (_ BitVec 32) (_ BitVec 32)) Unit!21850)

(assert (=> b!644424 (= lt!298768 (lemmaNoDuplicateFromThenFromBigger!0 lt!298774 #b00000000000000000000000000000000 j!136))))

(assert (=> b!644424 (arrayNoDuplicates!0 lt!298774 j!136 Nil!12507)))

(declare-fun lt!298763 () Unit!21850)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38413 (_ BitVec 64) (_ BitVec 32) List!12510) Unit!21850)

(assert (=> b!644424 (= lt!298763 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298774 (select (arr!18416 a!2986) j!136) j!136 Nil!12507))))

(assert (=> b!644424 false))

(declare-fun e!369234 () Bool)

(declare-fun b!644425 () Bool)

(assert (=> b!644425 (= e!369234 (arrayContainsKey!0 lt!298774 (select (arr!18416 a!2986) j!136) index!984))))

(declare-fun b!644426 () Bool)

(assert (=> b!644426 (= e!369229 e!369235)))

(declare-fun res!417624 () Bool)

(assert (=> b!644426 (=> (not res!417624) (not e!369235))))

(assert (=> b!644426 (= res!417624 (and (= lt!298770 (Found!6863 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18416 a!2986) index!984) (select (arr!18416 a!2986) j!136))) (not (= (select (arr!18416 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!644426 (= lt!298770 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18416 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!644427 () Bool)

(assert (=> b!644427 (= e!369241 e!369234)))

(declare-fun res!417619 () Bool)

(assert (=> b!644427 (=> (not res!417619) (not e!369234))))

(assert (=> b!644427 (= res!417619 (arrayContainsKey!0 lt!298774 (select (arr!18416 a!2986) j!136) j!136))))

(declare-fun b!644428 () Bool)

(assert (=> b!644428 (= e!369238 e!369233)))

(declare-fun res!417634 () Bool)

(assert (=> b!644428 (=> res!417634 e!369233)))

(assert (=> b!644428 (= res!417634 (or (not (= (select (arr!18416 a!2986) j!136) lt!298772)) (not (= (select (arr!18416 a!2986) j!136) lt!298776))))))

(assert (=> b!644428 e!369230))

(declare-fun res!417629 () Bool)

(assert (=> b!644428 (=> (not res!417629) (not e!369230))))

(assert (=> b!644428 (= res!417629 (= lt!298776 (select (arr!18416 a!2986) j!136)))))

(assert (=> b!644428 (= lt!298776 (select (store (arr!18416 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!644429 () Bool)

(declare-fun res!417623 () Bool)

(assert (=> b!644429 (=> (not res!417623) (not e!369240))))

(assert (=> b!644429 (= res!417623 (validKeyInArray!0 (select (arr!18416 a!2986) j!136)))))

(assert (= (and start!58360 res!417627) b!644421))

(assert (= (and b!644421 res!417626) b!644429))

(assert (= (and b!644429 res!417623) b!644422))

(assert (= (and b!644422 res!417618) b!644418))

(assert (= (and b!644418 res!417628) b!644413))

(assert (= (and b!644413 res!417621) b!644407))

(assert (= (and b!644407 res!417620) b!644409))

(assert (= (and b!644409 res!417625) b!644415))

(assert (= (and b!644415 res!417633) b!644416))

(assert (= (and b!644416 res!417617) b!644426))

(assert (= (and b!644426 res!417624) b!644411))

(assert (= (and b!644411 res!417635) b!644420))

(assert (= (and b!644411 c!73763) b!644419))

(assert (= (and b!644411 (not c!73763)) b!644410))

(assert (= (and b!644411 (not res!417630)) b!644428))

(assert (= (and b!644428 res!417629) b!644408))

(assert (= (and b!644408 (not res!417631)) b!644427))

(assert (= (and b!644427 res!417619) b!644425))

(assert (= (and b!644428 (not res!417634)) b!644423))

(assert (= (and b!644423 c!73762) b!644424))

(assert (= (and b!644423 (not c!73762)) b!644412))

(assert (= (and b!644423 (not res!417622)) b!644417))

(assert (= (and b!644417 res!417632) b!644414))

(declare-fun m!618063 () Bool)

(assert (=> b!644414 m!618063))

(assert (=> b!644414 m!618063))

(declare-fun m!618065 () Bool)

(assert (=> b!644414 m!618065))

(assert (=> b!644428 m!618063))

(declare-fun m!618067 () Bool)

(assert (=> b!644428 m!618067))

(declare-fun m!618069 () Bool)

(assert (=> b!644428 m!618069))

(assert (=> b!644408 m!618063))

(declare-fun m!618071 () Bool)

(assert (=> b!644409 m!618071))

(declare-fun m!618073 () Bool)

(assert (=> b!644415 m!618073))

(declare-fun m!618075 () Bool)

(assert (=> b!644418 m!618075))

(declare-fun m!618077 () Bool)

(assert (=> b!644422 m!618077))

(declare-fun m!618079 () Bool)

(assert (=> start!58360 m!618079))

(declare-fun m!618081 () Bool)

(assert (=> start!58360 m!618081))

(assert (=> b!644429 m!618063))

(assert (=> b!644429 m!618063))

(declare-fun m!618083 () Bool)

(assert (=> b!644429 m!618083))

(assert (=> b!644425 m!618063))

(assert (=> b!644425 m!618063))

(assert (=> b!644425 m!618065))

(assert (=> b!644416 m!618067))

(declare-fun m!618085 () Bool)

(assert (=> b!644416 m!618085))

(assert (=> b!644411 m!618063))

(declare-fun m!618087 () Bool)

(assert (=> b!644411 m!618087))

(declare-fun m!618089 () Bool)

(assert (=> b!644411 m!618089))

(declare-fun m!618091 () Bool)

(assert (=> b!644411 m!618091))

(declare-fun m!618093 () Bool)

(assert (=> b!644411 m!618093))

(assert (=> b!644411 m!618063))

(assert (=> b!644411 m!618067))

(declare-fun m!618095 () Bool)

(assert (=> b!644411 m!618095))

(declare-fun m!618097 () Bool)

(assert (=> b!644411 m!618097))

(assert (=> b!644427 m!618063))

(assert (=> b!644427 m!618063))

(declare-fun m!618099 () Bool)

(assert (=> b!644427 m!618099))

(declare-fun m!618101 () Bool)

(assert (=> b!644426 m!618101))

(assert (=> b!644426 m!618063))

(assert (=> b!644426 m!618063))

(declare-fun m!618103 () Bool)

(assert (=> b!644426 m!618103))

(declare-fun m!618105 () Bool)

(assert (=> b!644413 m!618105))

(assert (=> b!644424 m!618063))

(declare-fun m!618107 () Bool)

(assert (=> b!644424 m!618107))

(declare-fun m!618109 () Bool)

(assert (=> b!644424 m!618109))

(assert (=> b!644424 m!618063))

(declare-fun m!618111 () Bool)

(assert (=> b!644424 m!618111))

(assert (=> b!644424 m!618063))

(declare-fun m!618113 () Bool)

(assert (=> b!644424 m!618113))

(declare-fun m!618115 () Bool)

(assert (=> b!644424 m!618115))

(assert (=> b!644424 m!618063))

(declare-fun m!618117 () Bool)

(assert (=> b!644424 m!618117))

(declare-fun m!618119 () Bool)

(assert (=> b!644424 m!618119))

(assert (=> b!644417 m!618063))

(assert (=> b!644417 m!618063))

(assert (=> b!644417 m!618099))

(declare-fun m!618121 () Bool)

(assert (=> b!644407 m!618121))

(push 1)

(assert (not b!644429))

(assert (not b!644422))

(assert (not b!644417))

(assert (not b!644413))

(assert (not b!644427))

(assert (not b!644425))

(assert (not b!644418))

(assert (not b!644424))

(assert (not b!644414))

(assert (not b!644411))

(assert (not b!644426))

(assert (not start!58360))

(assert (not b!644407))

(assert (not b!644409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!644502 () Bool)

(declare-fun e!369296 () Bool)

(declare-fun e!369295 () Bool)

(assert (=> b!644502 (= e!369296 e!369295)))

(declare-fun res!417666 () Bool)

(assert (=> b!644502 (=> (not res!417666) (not e!369295))))

(declare-fun e!369293 () Bool)

(assert (=> b!644502 (= res!417666 (not e!369293))))

(declare-fun res!417668 () Bool)

(assert (=> b!644502 (=> (not res!417668) (not e!369293))))

(assert (=> b!644502 (= res!417668 (validKeyInArray!0 (select (arr!18416 lt!298774) j!136)))))

(declare-fun b!644503 () Bool)

(declare-fun e!369294 () Bool)

(assert (=> b!644503 (= e!369295 e!369294)))

(declare-fun c!73785 () Bool)

(assert (=> b!644503 (= c!73785 (validKeyInArray!0 (select (arr!18416 lt!298774) j!136)))))

(declare-fun b!644504 () Bool)

(declare-fun call!33612 () Bool)

(assert (=> b!644504 (= e!369294 call!33612)))

(declare-fun b!644505 () Bool)

(declare-fun contains!3148 (List!12510 (_ BitVec 64)) Bool)

(assert (=> b!644505 (= e!369293 (contains!3148 Nil!12507 (select (arr!18416 lt!298774) j!136)))))

(declare-fun b!644506 () Bool)

(assert (=> b!644506 (= e!369294 call!33612)))

(declare-fun d!90971 () Bool)

(declare-fun res!417667 () Bool)

(assert (=> d!90971 (=> res!417667 e!369296)))

(assert (=> d!90971 (= res!417667 (bvsge j!136 (size!18780 lt!298774)))))

(assert (=> d!90971 (= (arrayNoDuplicates!0 lt!298774 j!136 Nil!12507) e!369296)))

(declare-fun bm!33609 () Bool)

(assert (=> bm!33609 (= call!33612 (arrayNoDuplicates!0 lt!298774 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73785 (Cons!12506 (select (arr!18416 lt!298774) j!136) Nil!12507) Nil!12507)))))

(assert (= (and d!90971 (not res!417667)) b!644502))

(assert (= (and b!644502 res!417668) b!644505))

(assert (= (and b!644502 res!417666) b!644503))

(assert (= (and b!644503 c!73785) b!644504))

(assert (= (and b!644503 (not c!73785)) b!644506))

(assert (= (or b!644504 b!644506) bm!33609))

(declare-fun m!618183 () Bool)

(assert (=> b!644502 m!618183))

(assert (=> b!644502 m!618183))

(declare-fun m!618185 () Bool)

(assert (=> b!644502 m!618185))

(assert (=> b!644503 m!618183))

(assert (=> b!644503 m!618183))

(assert (=> b!644503 m!618185))

(assert (=> b!644505 m!618183))

(assert (=> b!644505 m!618183))

(declare-fun m!618187 () Bool)

(assert (=> b!644505 m!618187))

(assert (=> bm!33609 m!618183))

(declare-fun m!618189 () Bool)

(assert (=> bm!33609 m!618189))

(assert (=> b!644424 d!90971))

(declare-fun d!90977 () Bool)

(assert (=> d!90977 (arrayContainsKey!0 lt!298774 (select (arr!18416 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298809 () Unit!21850)

(declare-fun choose!114 (array!38413 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21850)

(assert (=> d!90977 (= lt!298809 (choose!114 lt!298774 (select (arr!18416 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!90977 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!90977 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298774 (select (arr!18416 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!298809)))

(declare-fun bs!19269 () Bool)

(assert (= bs!19269 d!90977))

(assert (=> bs!19269 m!618063))

(assert (=> bs!19269 m!618117))

(assert (=> bs!19269 m!618063))

(declare-fun m!618201 () Bool)

(assert (=> bs!19269 m!618201))

(assert (=> b!644424 d!90977))

(declare-fun d!90985 () Bool)

(assert (=> d!90985 (arrayNoDuplicates!0 lt!298774 j!136 Nil!12507)))

(declare-fun lt!298812 () Unit!21850)

(declare-fun choose!39 (array!38413 (_ BitVec 32) (_ BitVec 32)) Unit!21850)

(assert (=> d!90985 (= lt!298812 (choose!39 lt!298774 #b00000000000000000000000000000000 j!136))))

(assert (=> d!90985 (bvslt (size!18780 lt!298774) #b01111111111111111111111111111111)))

(assert (=> d!90985 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!298774 #b00000000000000000000000000000000 j!136) lt!298812)))

(declare-fun bs!19270 () Bool)

(assert (= bs!19270 d!90985))

(assert (=> bs!19270 m!618113))

(declare-fun m!618215 () Bool)

(assert (=> bs!19270 m!618215))

(assert (=> b!644424 d!90985))

(declare-fun b!644524 () Bool)

(declare-fun e!369313 () Bool)

(declare-fun e!369312 () Bool)

(assert (=> b!644524 (= e!369313 e!369312)))

(declare-fun res!417678 () Bool)

(assert (=> b!644524 (=> (not res!417678) (not e!369312))))

(declare-fun e!369310 () Bool)

(assert (=> b!644524 (= res!417678 (not e!369310))))

(declare-fun res!417680 () Bool)

(assert (=> b!644524 (=> (not res!417680) (not e!369310))))

(assert (=> b!644524 (= res!417680 (validKeyInArray!0 (select (arr!18416 lt!298774) #b00000000000000000000000000000000)))))

(declare-fun b!644525 () Bool)

(declare-fun e!369311 () Bool)

(assert (=> b!644525 (= e!369312 e!369311)))

(declare-fun c!73790 () Bool)

(assert (=> b!644525 (= c!73790 (validKeyInArray!0 (select (arr!18416 lt!298774) #b00000000000000000000000000000000)))))

(declare-fun b!644526 () Bool)

(declare-fun call!33614 () Bool)

(assert (=> b!644526 (= e!369311 call!33614)))

(declare-fun b!644527 () Bool)

(assert (=> b!644527 (= e!369310 (contains!3148 Nil!12507 (select (arr!18416 lt!298774) #b00000000000000000000000000000000)))))

(declare-fun b!644528 () Bool)

(assert (=> b!644528 (= e!369311 call!33614)))

(declare-fun d!90993 () Bool)

(declare-fun res!417679 () Bool)

(assert (=> d!90993 (=> res!417679 e!369313)))

(assert (=> d!90993 (= res!417679 (bvsge #b00000000000000000000000000000000 (size!18780 lt!298774)))))

(assert (=> d!90993 (= (arrayNoDuplicates!0 lt!298774 #b00000000000000000000000000000000 Nil!12507) e!369313)))

(declare-fun bm!33611 () Bool)

(assert (=> bm!33611 (= call!33614 (arrayNoDuplicates!0 lt!298774 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73790 (Cons!12506 (select (arr!18416 lt!298774) #b00000000000000000000000000000000) Nil!12507) Nil!12507)))))

(assert (= (and d!90993 (not res!417679)) b!644524))

(assert (= (and b!644524 res!417680) b!644527))

(assert (= (and b!644524 res!417678) b!644525))

(assert (= (and b!644525 c!73790) b!644526))

(assert (= (and b!644525 (not c!73790)) b!644528))

(assert (= (or b!644526 b!644528) bm!33611))

(declare-fun m!618217 () Bool)

(assert (=> b!644524 m!618217))

(assert (=> b!644524 m!618217))

(declare-fun m!618219 () Bool)

(assert (=> b!644524 m!618219))

(assert (=> b!644525 m!618217))

(assert (=> b!644525 m!618217))

(assert (=> b!644525 m!618219))

(assert (=> b!644527 m!618217))

(assert (=> b!644527 m!618217))

(declare-fun m!618221 () Bool)

(assert (=> b!644527 m!618221))

(assert (=> bm!33611 m!618217))

(declare-fun m!618223 () Bool)

(assert (=> bm!33611 m!618223))

(assert (=> b!644424 d!90993))

(declare-fun d!90995 () Bool)

(declare-fun e!369316 () Bool)

(assert (=> d!90995 e!369316))

(declare-fun res!417683 () Bool)

(assert (=> d!90995 (=> (not res!417683) (not e!369316))))

(assert (=> d!90995 (= res!417683 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18780 a!2986))))))

(declare-fun lt!298815 () Unit!21850)

(declare-fun choose!41 (array!38413 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12510) Unit!21850)

(assert (=> d!90995 (= lt!298815 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12507))))

(assert (=> d!90995 (bvslt (size!18780 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!90995 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12507) lt!298815)))

(declare-fun b!644531 () Bool)

(assert (=> b!644531 (= e!369316 (arrayNoDuplicates!0 (array!38414 (store (arr!18416 a!2986) i!1108 k!1786) (size!18780 a!2986)) #b00000000000000000000000000000000 Nil!12507))))

(assert (= (and d!90995 res!417683) b!644531))

(declare-fun m!618225 () Bool)

(assert (=> d!90995 m!618225))

(assert (=> b!644531 m!618067))

(declare-fun m!618227 () Bool)

(assert (=> b!644531 m!618227))

(assert (=> b!644424 d!90995))

(declare-fun d!90997 () Bool)

(declare-fun res!417688 () Bool)

(declare-fun e!369321 () Bool)

(assert (=> d!90997 (=> res!417688 e!369321)))

(assert (=> d!90997 (= res!417688 (= (select (arr!18416 lt!298774) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18416 a!2986) j!136)))))

(assert (=> d!90997 (= (arrayContainsKey!0 lt!298774 (select (arr!18416 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!369321)))

(declare-fun b!644536 () Bool)

(declare-fun e!369322 () Bool)

(assert (=> b!644536 (= e!369321 e!369322)))

(declare-fun res!417689 () Bool)

(assert (=> b!644536 (=> (not res!417689) (not e!369322))))

(assert (=> b!644536 (= res!417689 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18780 lt!298774)))))

(declare-fun b!644537 () Bool)

(assert (=> b!644537 (= e!369322 (arrayContainsKey!0 lt!298774 (select (arr!18416 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90997 (not res!417688)) b!644536))

(assert (= (and b!644536 res!417689) b!644537))

(declare-fun m!618229 () Bool)

(assert (=> d!90997 m!618229))

(assert (=> b!644537 m!618063))

(declare-fun m!618231 () Bool)

(assert (=> b!644537 m!618231))

(assert (=> b!644424 d!90997))

(declare-fun d!90999 () Bool)

(assert (=> d!90999 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18780 lt!298774)) (not (= (select (arr!18416 lt!298774) j!136) (select (arr!18416 a!2986) j!136))))))

(declare-fun lt!298822 () Unit!21850)

(declare-fun choose!21 (array!38413 (_ BitVec 64) (_ BitVec 32) List!12510) Unit!21850)

(assert (=> d!90999 (= lt!298822 (choose!21 lt!298774 (select (arr!18416 a!2986) j!136) j!136 Nil!12507))))

(assert (=> d!90999 (bvslt (size!18780 lt!298774) #b01111111111111111111111111111111)))

(assert (=> d!90999 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298774 (select (arr!18416 a!2986) j!136) j!136 Nil!12507) lt!298822)))

(declare-fun bs!19271 () Bool)

(assert (= bs!19271 d!90999))

(assert (=> bs!19271 m!618183))

(assert (=> bs!19271 m!618063))

(declare-fun m!618233 () Bool)

(assert (=> bs!19271 m!618233))

(assert (=> b!644424 d!90999))

(declare-fun b!644586 () Bool)

(declare-fun e!369347 () SeekEntryResult!6863)

(declare-fun e!369349 () SeekEntryResult!6863)

(assert (=> b!644586 (= e!369347 e!369349)))

(declare-fun lt!298842 () (_ BitVec 64))

(declare-fun lt!298841 () SeekEntryResult!6863)

(assert (=> b!644586 (= lt!298842 (select (arr!18416 a!2986) (index!29785 lt!298841)))))

(declare-fun c!73816 () Bool)

(assert (=> b!644586 (= c!73816 (= lt!298842 k!1786))))

(declare-fun b!644587 () Bool)

(assert (=> b!644587 (= e!369347 Undefined!6863)))

(declare-fun b!644588 () Bool)

(declare-fun e!369348 () SeekEntryResult!6863)

(assert (=> b!644588 (= e!369348 (MissingZero!6863 (index!29785 lt!298841)))))

(declare-fun b!644589 () Bool)

(assert (=> b!644589 (= e!369348 (seekKeyOrZeroReturnVacant!0 (x!58576 lt!298841) (index!29785 lt!298841) (index!29785 lt!298841) k!1786 a!2986 mask!3053))))

(declare-fun b!644590 () Bool)

(declare-fun c!73815 () Bool)

(assert (=> b!644590 (= c!73815 (= lt!298842 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!644590 (= e!369349 e!369348)))

(declare-fun d!91007 () Bool)

(declare-fun lt!298840 () SeekEntryResult!6863)

(assert (=> d!91007 (and (or (is-Undefined!6863 lt!298840) (not (is-Found!6863 lt!298840)) (and (bvsge (index!29784 lt!298840) #b00000000000000000000000000000000) (bvslt (index!29784 lt!298840) (size!18780 a!2986)))) (or (is-Undefined!6863 lt!298840) (is-Found!6863 lt!298840) (not (is-MissingZero!6863 lt!298840)) (and (bvsge (index!29783 lt!298840) #b00000000000000000000000000000000) (bvslt (index!29783 lt!298840) (size!18780 a!2986)))) (or (is-Undefined!6863 lt!298840) (is-Found!6863 lt!298840) (is-MissingZero!6863 lt!298840) (not (is-MissingVacant!6863 lt!298840)) (and (bvsge (index!29786 lt!298840) #b00000000000000000000000000000000) (bvslt (index!29786 lt!298840) (size!18780 a!2986)))) (or (is-Undefined!6863 lt!298840) (ite (is-Found!6863 lt!298840) (= (select (arr!18416 a!2986) (index!29784 lt!298840)) k!1786) (ite (is-MissingZero!6863 lt!298840) (= (select (arr!18416 a!2986) (index!29783 lt!298840)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6863 lt!298840) (= (select (arr!18416 a!2986) (index!29786 lt!298840)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!91007 (= lt!298840 e!369347)))

(declare-fun c!73817 () Bool)

(assert (=> d!91007 (= c!73817 (and (is-Intermediate!6863 lt!298841) (undefined!7675 lt!298841)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38413 (_ BitVec 32)) SeekEntryResult!6863)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91007 (= lt!298841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!91007 (validMask!0 mask!3053)))

