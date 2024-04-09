; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58340 () Bool)

(assert start!58340)

(declare-fun b!643717 () Bool)

(declare-fun e!368777 () Bool)

(declare-fun e!368791 () Bool)

(assert (=> b!643717 (= e!368777 e!368791)))

(declare-fun res!417055 () Bool)

(assert (=> b!643717 (=> (not res!417055) (not e!368791))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38393 0))(
  ( (array!38394 (arr!18406 (Array (_ BitVec 32) (_ BitVec 64))) (size!18770 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38393)

(declare-fun lt!298314 () array!38393)

(declare-fun arrayContainsKey!0 (array!38393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!643717 (= res!417055 (arrayContainsKey!0 lt!298314 (select (arr!18406 a!2986) j!136) j!136))))

(declare-fun b!643718 () Bool)

(declare-datatypes ((Unit!21790 0))(
  ( (Unit!21791) )
))
(declare-fun e!368782 () Unit!21790)

(declare-fun Unit!21792 () Unit!21790)

(assert (=> b!643718 (= e!368782 Unit!21792)))

(assert (=> b!643718 false))

(declare-fun b!643719 () Bool)

(declare-fun e!368790 () Bool)

(declare-fun e!368783 () Bool)

(assert (=> b!643719 (= e!368790 e!368783)))

(declare-fun res!417061 () Bool)

(assert (=> b!643719 (=> res!417061 e!368783)))

(declare-fun lt!298317 () (_ BitVec 64))

(declare-fun lt!298323 () (_ BitVec 64))

(assert (=> b!643719 (= res!417061 (or (not (= (select (arr!18406 a!2986) j!136) lt!298317)) (not (= (select (arr!18406 a!2986) j!136) lt!298323))))))

(declare-fun e!368784 () Bool)

(assert (=> b!643719 e!368784))

(declare-fun res!417048 () Bool)

(assert (=> b!643719 (=> (not res!417048) (not e!368784))))

(assert (=> b!643719 (= res!417048 (= lt!298323 (select (arr!18406 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!643719 (= lt!298323 (select (store (arr!18406 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!643720 () Bool)

(declare-fun e!368779 () Bool)

(declare-fun e!368788 () Bool)

(assert (=> b!643720 (= e!368779 e!368788)))

(declare-fun res!417053 () Bool)

(assert (=> b!643720 (=> (not res!417053) (not e!368788))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6853 0))(
  ( (MissingZero!6853 (index!29743 (_ BitVec 32))) (Found!6853 (index!29744 (_ BitVec 32))) (Intermediate!6853 (undefined!7665 Bool) (index!29745 (_ BitVec 32)) (x!58542 (_ BitVec 32))) (Undefined!6853) (MissingVacant!6853 (index!29746 (_ BitVec 32))) )
))
(declare-fun lt!298322 () SeekEntryResult!6853)

(assert (=> b!643720 (= res!417053 (and (= lt!298322 (Found!6853 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18406 a!2986) index!984) (select (arr!18406 a!2986) j!136))) (not (= (select (arr!18406 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38393 (_ BitVec 32)) SeekEntryResult!6853)

(assert (=> b!643720 (= lt!298322 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18406 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!417049 () Bool)

(declare-fun e!368778 () Bool)

(assert (=> start!58340 (=> (not res!417049) (not e!368778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58340 (= res!417049 (validMask!0 mask!3053))))

(assert (=> start!58340 e!368778))

(assert (=> start!58340 true))

(declare-fun array_inv!14180 (array!38393) Bool)

(assert (=> start!58340 (array_inv!14180 a!2986)))

(declare-fun b!643721 () Bool)

(declare-fun e!368780 () Unit!21790)

(declare-fun Unit!21793 () Unit!21790)

(assert (=> b!643721 (= e!368780 Unit!21793)))

(declare-fun b!643722 () Bool)

(declare-fun e!368786 () Bool)

(declare-fun lt!298325 () SeekEntryResult!6853)

(assert (=> b!643722 (= e!368786 (= lt!298322 lt!298325))))

(declare-fun b!643723 () Bool)

(declare-fun Unit!21794 () Unit!21790)

(assert (=> b!643723 (= e!368780 Unit!21794)))

(declare-fun lt!298320 () Unit!21790)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38393 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21790)

(assert (=> b!643723 (= lt!298320 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298314 (select (arr!18406 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!643723 (arrayContainsKey!0 lt!298314 (select (arr!18406 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298326 () Unit!21790)

(declare-datatypes ((List!12500 0))(
  ( (Nil!12497) (Cons!12496 (h!13541 (_ BitVec 64)) (t!18736 List!12500)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38393 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12500) Unit!21790)

(assert (=> b!643723 (= lt!298326 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12497))))

(declare-fun arrayNoDuplicates!0 (array!38393 (_ BitVec 32) List!12500) Bool)

(assert (=> b!643723 (arrayNoDuplicates!0 lt!298314 #b00000000000000000000000000000000 Nil!12497)))

(declare-fun lt!298316 () Unit!21790)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38393 (_ BitVec 32) (_ BitVec 32)) Unit!21790)

(assert (=> b!643723 (= lt!298316 (lemmaNoDuplicateFromThenFromBigger!0 lt!298314 #b00000000000000000000000000000000 j!136))))

(assert (=> b!643723 (arrayNoDuplicates!0 lt!298314 j!136 Nil!12497)))

(declare-fun lt!298313 () Unit!21790)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38393 (_ BitVec 64) (_ BitVec 32) List!12500) Unit!21790)

(assert (=> b!643723 (= lt!298313 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298314 (select (arr!18406 a!2986) j!136) j!136 Nil!12497))))

(assert (=> b!643723 false))

(declare-fun b!643724 () Bool)

(declare-fun res!417047 () Bool)

(assert (=> b!643724 (=> (not res!417047) (not e!368778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!643724 (= res!417047 (validKeyInArray!0 (select (arr!18406 a!2986) j!136)))))

(declare-fun b!643725 () Bool)

(declare-fun e!368789 () Bool)

(assert (=> b!643725 (= e!368789 (arrayContainsKey!0 lt!298314 (select (arr!18406 a!2986) j!136) index!984))))

(declare-fun b!643726 () Bool)

(declare-fun e!368785 () Bool)

(assert (=> b!643726 (= e!368785 e!368779)))

(declare-fun res!417054 () Bool)

(assert (=> b!643726 (=> (not res!417054) (not e!368779))))

(assert (=> b!643726 (= res!417054 (= (select (store (arr!18406 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643726 (= lt!298314 (array!38394 (store (arr!18406 a!2986) i!1108 k0!1786) (size!18770 a!2986)))))

(declare-fun b!643727 () Bool)

(assert (=> b!643727 (= e!368784 e!368777)))

(declare-fun res!417064 () Bool)

(assert (=> b!643727 (=> res!417064 e!368777)))

(assert (=> b!643727 (= res!417064 (or (not (= (select (arr!18406 a!2986) j!136) lt!298317)) (not (= (select (arr!18406 a!2986) j!136) lt!298323)) (bvsge j!136 index!984)))))

(declare-fun b!643728 () Bool)

(assert (=> b!643728 (= e!368778 e!368785)))

(declare-fun res!417052 () Bool)

(assert (=> b!643728 (=> (not res!417052) (not e!368785))))

(declare-fun lt!298319 () SeekEntryResult!6853)

(assert (=> b!643728 (= res!417052 (or (= lt!298319 (MissingZero!6853 i!1108)) (= lt!298319 (MissingVacant!6853 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38393 (_ BitVec 32)) SeekEntryResult!6853)

(assert (=> b!643728 (= lt!298319 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!643729 () Bool)

(assert (=> b!643729 (= e!368788 (not e!368790))))

(declare-fun res!417062 () Bool)

(assert (=> b!643729 (=> res!417062 e!368790)))

(declare-fun lt!298315 () SeekEntryResult!6853)

(assert (=> b!643729 (= res!417062 (not (= lt!298315 (Found!6853 index!984))))))

(declare-fun lt!298312 () Unit!21790)

(assert (=> b!643729 (= lt!298312 e!368782)))

(declare-fun c!73703 () Bool)

(assert (=> b!643729 (= c!73703 (= lt!298315 Undefined!6853))))

(assert (=> b!643729 (= lt!298315 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298317 lt!298314 mask!3053))))

(assert (=> b!643729 e!368786))

(declare-fun res!417065 () Bool)

(assert (=> b!643729 (=> (not res!417065) (not e!368786))))

(declare-fun lt!298318 () (_ BitVec 32))

(assert (=> b!643729 (= res!417065 (= lt!298325 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298318 vacantSpotIndex!68 lt!298317 lt!298314 mask!3053)))))

(assert (=> b!643729 (= lt!298325 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298318 vacantSpotIndex!68 (select (arr!18406 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!643729 (= lt!298317 (select (store (arr!18406 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!298321 () Unit!21790)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38393 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21790)

(assert (=> b!643729 (= lt!298321 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298318 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!643729 (= lt!298318 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!643730 () Bool)

(declare-fun res!417050 () Bool)

(assert (=> b!643730 (=> (not res!417050) (not e!368785))))

(assert (=> b!643730 (= res!417050 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12497))))

(declare-fun b!643731 () Bool)

(declare-fun res!417058 () Bool)

(assert (=> b!643731 (=> (not res!417058) (not e!368778))))

(assert (=> b!643731 (= res!417058 (validKeyInArray!0 k0!1786))))

(declare-fun b!643732 () Bool)

(declare-fun res!417059 () Bool)

(assert (=> b!643732 (=> (not res!417059) (not e!368778))))

(assert (=> b!643732 (= res!417059 (and (= (size!18770 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18770 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18770 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!643733 () Bool)

(assert (=> b!643733 (= e!368791 (arrayContainsKey!0 lt!298314 (select (arr!18406 a!2986) j!136) index!984))))

(declare-fun b!643734 () Bool)

(declare-fun e!368781 () Bool)

(assert (=> b!643734 (= e!368783 e!368781)))

(declare-fun res!417057 () Bool)

(assert (=> b!643734 (=> res!417057 e!368781)))

(assert (=> b!643734 (= res!417057 (bvsge index!984 j!136))))

(declare-fun lt!298324 () Unit!21790)

(assert (=> b!643734 (= lt!298324 e!368780)))

(declare-fun c!73702 () Bool)

(assert (=> b!643734 (= c!73702 (bvslt j!136 index!984))))

(declare-fun b!643735 () Bool)

(declare-fun res!417051 () Bool)

(assert (=> b!643735 (=> (not res!417051) (not e!368778))))

(assert (=> b!643735 (= res!417051 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!643736 () Bool)

(declare-fun Unit!21795 () Unit!21790)

(assert (=> b!643736 (= e!368782 Unit!21795)))

(declare-fun b!643737 () Bool)

(declare-fun res!417063 () Bool)

(assert (=> b!643737 (=> (not res!417063) (not e!368785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38393 (_ BitVec 32)) Bool)

(assert (=> b!643737 (= res!417063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!643738 () Bool)

(assert (=> b!643738 (= e!368781 true)))

(assert (=> b!643738 e!368789))

(declare-fun res!417056 () Bool)

(assert (=> b!643738 (=> (not res!417056) (not e!368789))))

(assert (=> b!643738 (= res!417056 (arrayContainsKey!0 lt!298314 (select (arr!18406 a!2986) j!136) j!136))))

(declare-fun b!643739 () Bool)

(declare-fun res!417060 () Bool)

(assert (=> b!643739 (=> (not res!417060) (not e!368785))))

(assert (=> b!643739 (= res!417060 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18406 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!58340 res!417049) b!643732))

(assert (= (and b!643732 res!417059) b!643724))

(assert (= (and b!643724 res!417047) b!643731))

(assert (= (and b!643731 res!417058) b!643735))

(assert (= (and b!643735 res!417051) b!643728))

(assert (= (and b!643728 res!417052) b!643737))

(assert (= (and b!643737 res!417063) b!643730))

(assert (= (and b!643730 res!417050) b!643739))

(assert (= (and b!643739 res!417060) b!643726))

(assert (= (and b!643726 res!417054) b!643720))

(assert (= (and b!643720 res!417053) b!643729))

(assert (= (and b!643729 res!417065) b!643722))

(assert (= (and b!643729 c!73703) b!643718))

(assert (= (and b!643729 (not c!73703)) b!643736))

(assert (= (and b!643729 (not res!417062)) b!643719))

(assert (= (and b!643719 res!417048) b!643727))

(assert (= (and b!643727 (not res!417064)) b!643717))

(assert (= (and b!643717 res!417055) b!643733))

(assert (= (and b!643719 (not res!417061)) b!643734))

(assert (= (and b!643734 c!73702) b!643723))

(assert (= (and b!643734 (not c!73702)) b!643721))

(assert (= (and b!643734 (not res!417057)) b!643738))

(assert (= (and b!643738 res!417056) b!643725))

(declare-fun m!617463 () Bool)

(assert (=> b!643739 m!617463))

(declare-fun m!617465 () Bool)

(assert (=> b!643737 m!617465))

(declare-fun m!617467 () Bool)

(assert (=> b!643717 m!617467))

(assert (=> b!643717 m!617467))

(declare-fun m!617469 () Bool)

(assert (=> b!643717 m!617469))

(assert (=> b!643727 m!617467))

(assert (=> b!643738 m!617467))

(assert (=> b!643738 m!617467))

(assert (=> b!643738 m!617469))

(assert (=> b!643733 m!617467))

(assert (=> b!643733 m!617467))

(declare-fun m!617471 () Bool)

(assert (=> b!643733 m!617471))

(declare-fun m!617473 () Bool)

(assert (=> b!643735 m!617473))

(declare-fun m!617475 () Bool)

(assert (=> b!643730 m!617475))

(assert (=> b!643725 m!617467))

(assert (=> b!643725 m!617467))

(assert (=> b!643725 m!617471))

(declare-fun m!617477 () Bool)

(assert (=> b!643726 m!617477))

(declare-fun m!617479 () Bool)

(assert (=> b!643726 m!617479))

(declare-fun m!617481 () Bool)

(assert (=> b!643723 m!617481))

(assert (=> b!643723 m!617467))

(assert (=> b!643723 m!617467))

(declare-fun m!617483 () Bool)

(assert (=> b!643723 m!617483))

(declare-fun m!617485 () Bool)

(assert (=> b!643723 m!617485))

(declare-fun m!617487 () Bool)

(assert (=> b!643723 m!617487))

(declare-fun m!617489 () Bool)

(assert (=> b!643723 m!617489))

(assert (=> b!643723 m!617467))

(declare-fun m!617491 () Bool)

(assert (=> b!643723 m!617491))

(assert (=> b!643723 m!617467))

(declare-fun m!617493 () Bool)

(assert (=> b!643723 m!617493))

(declare-fun m!617495 () Bool)

(assert (=> b!643731 m!617495))

(declare-fun m!617497 () Bool)

(assert (=> b!643729 m!617497))

(declare-fun m!617499 () Bool)

(assert (=> b!643729 m!617499))

(assert (=> b!643729 m!617477))

(declare-fun m!617501 () Bool)

(assert (=> b!643729 m!617501))

(assert (=> b!643729 m!617467))

(declare-fun m!617503 () Bool)

(assert (=> b!643729 m!617503))

(declare-fun m!617505 () Bool)

(assert (=> b!643729 m!617505))

(assert (=> b!643729 m!617467))

(declare-fun m!617507 () Bool)

(assert (=> b!643729 m!617507))

(declare-fun m!617509 () Bool)

(assert (=> b!643720 m!617509))

(assert (=> b!643720 m!617467))

(assert (=> b!643720 m!617467))

(declare-fun m!617511 () Bool)

(assert (=> b!643720 m!617511))

(assert (=> b!643724 m!617467))

(assert (=> b!643724 m!617467))

(declare-fun m!617513 () Bool)

(assert (=> b!643724 m!617513))

(declare-fun m!617515 () Bool)

(assert (=> start!58340 m!617515))

(declare-fun m!617517 () Bool)

(assert (=> start!58340 m!617517))

(declare-fun m!617519 () Bool)

(assert (=> b!643728 m!617519))

(assert (=> b!643719 m!617467))

(assert (=> b!643719 m!617477))

(declare-fun m!617521 () Bool)

(assert (=> b!643719 m!617521))

(check-sat (not b!643729) (not b!643725) (not b!643730) (not b!643735) (not b!643717) (not start!58340) (not b!643731) (not b!643738) (not b!643728) (not b!643720) (not b!643723) (not b!643733) (not b!643737) (not b!643724))
(check-sat)
