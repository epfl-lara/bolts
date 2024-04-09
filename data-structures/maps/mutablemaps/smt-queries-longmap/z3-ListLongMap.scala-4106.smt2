; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56144 () Bool)

(assert start!56144)

(declare-datatypes ((array!37577 0))(
  ( (array!37578 (arr!18031 (Array (_ BitVec 32) (_ BitVec 64))) (size!18395 (_ BitVec 32))) )
))
(declare-fun lt!286655 () array!37577)

(declare-fun b!620175 () Bool)

(declare-fun a!2986 () array!37577)

(declare-fun res!399733 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620175 (= res!399733 (arrayContainsKey!0 lt!286655 (select (arr!18031 a!2986) j!136) j!136))))

(declare-fun e!355699 () Bool)

(assert (=> b!620175 (=> (not res!399733) (not e!355699))))

(declare-fun e!355706 () Bool)

(assert (=> b!620175 (= e!355706 e!355699)))

(declare-fun b!620176 () Bool)

(declare-datatypes ((Unit!20600 0))(
  ( (Unit!20601) )
))
(declare-fun e!355711 () Unit!20600)

(declare-fun Unit!20602 () Unit!20600)

(assert (=> b!620176 (= e!355711 Unit!20602)))

(assert (=> b!620176 false))

(declare-fun e!355704 () Bool)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun b!620177 () Bool)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6478 0))(
  ( (MissingZero!6478 (index!28195 (_ BitVec 32))) (Found!6478 (index!28196 (_ BitVec 32))) (Intermediate!6478 (undefined!7290 Bool) (index!28197 (_ BitVec 32)) (x!56999 (_ BitVec 32))) (Undefined!6478) (MissingVacant!6478 (index!28198 (_ BitVec 32))) )
))
(declare-fun lt!286648 () SeekEntryResult!6478)

(assert (=> b!620177 (= e!355704 (not (or (= lt!286648 (MissingVacant!6478 vacantSpotIndex!68)) (bvsge mask!3053 #b00000000000000000000000000000000))))))

(declare-fun lt!286649 () Unit!20600)

(declare-fun e!355700 () Unit!20600)

(assert (=> b!620177 (= lt!286649 e!355700)))

(declare-fun c!70592 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!620177 (= c!70592 (= lt!286648 (Found!6478 index!984)))))

(declare-fun lt!286639 () Unit!20600)

(assert (=> b!620177 (= lt!286639 e!355711)))

(declare-fun c!70593 () Bool)

(assert (=> b!620177 (= c!70593 (= lt!286648 Undefined!6478))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!286641 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37577 (_ BitVec 32)) SeekEntryResult!6478)

(assert (=> b!620177 (= lt!286648 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286641 lt!286655 mask!3053))))

(declare-fun e!355702 () Bool)

(assert (=> b!620177 e!355702))

(declare-fun res!399727 () Bool)

(assert (=> b!620177 (=> (not res!399727) (not e!355702))))

(declare-fun lt!286652 () SeekEntryResult!6478)

(declare-fun lt!286653 () (_ BitVec 32))

(assert (=> b!620177 (= res!399727 (= lt!286652 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286653 vacantSpotIndex!68 lt!286641 lt!286655 mask!3053)))))

(assert (=> b!620177 (= lt!286652 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286653 vacantSpotIndex!68 (select (arr!18031 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!620177 (= lt!286641 (select (store (arr!18031 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!286645 () Unit!20600)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37577 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20600)

(assert (=> b!620177 (= lt!286645 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286653 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620177 (= lt!286653 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620179 () Bool)

(declare-fun res!399735 () Bool)

(declare-fun e!355710 () Bool)

(assert (=> b!620179 (=> (not res!399735) (not e!355710))))

(declare-datatypes ((List!12125 0))(
  ( (Nil!12122) (Cons!12121 (h!13166 (_ BitVec 64)) (t!18361 List!12125)) )
))
(declare-fun arrayNoDuplicates!0 (array!37577 (_ BitVec 32) List!12125) Bool)

(assert (=> b!620179 (= res!399735 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12122))))

(declare-fun b!620180 () Bool)

(declare-fun res!399737 () Bool)

(declare-fun e!355709 () Bool)

(assert (=> b!620180 (=> (not res!399737) (not e!355709))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620180 (= res!399737 (validKeyInArray!0 k0!1786))))

(declare-fun b!620181 () Bool)

(declare-fun e!355701 () Bool)

(assert (=> b!620181 (= e!355710 e!355701)))

(declare-fun res!399736 () Bool)

(assert (=> b!620181 (=> (not res!399736) (not e!355701))))

(assert (=> b!620181 (= res!399736 (= (select (store (arr!18031 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620181 (= lt!286655 (array!37578 (store (arr!18031 a!2986) i!1108 k0!1786) (size!18395 a!2986)))))

(declare-fun b!620182 () Bool)

(declare-fun Unit!20603 () Unit!20600)

(assert (=> b!620182 (= e!355711 Unit!20603)))

(declare-fun b!620183 () Bool)

(assert (=> b!620183 false))

(declare-fun lt!286640 () Unit!20600)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37577 (_ BitVec 64) (_ BitVec 32) List!12125) Unit!20600)

(assert (=> b!620183 (= lt!286640 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286655 (select (arr!18031 a!2986) j!136) j!136 Nil!12122))))

(assert (=> b!620183 (arrayNoDuplicates!0 lt!286655 j!136 Nil!12122)))

(declare-fun lt!286647 () Unit!20600)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37577 (_ BitVec 32) (_ BitVec 32)) Unit!20600)

(assert (=> b!620183 (= lt!286647 (lemmaNoDuplicateFromThenFromBigger!0 lt!286655 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620183 (arrayNoDuplicates!0 lt!286655 #b00000000000000000000000000000000 Nil!12122)))

(declare-fun lt!286646 () Unit!20600)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37577 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12125) Unit!20600)

(assert (=> b!620183 (= lt!286646 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12122))))

(assert (=> b!620183 (arrayContainsKey!0 lt!286655 (select (arr!18031 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286651 () Unit!20600)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37577 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20600)

(assert (=> b!620183 (= lt!286651 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286655 (select (arr!18031 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!355708 () Unit!20600)

(declare-fun Unit!20604 () Unit!20600)

(assert (=> b!620183 (= e!355708 Unit!20604)))

(declare-fun b!620184 () Bool)

(declare-fun lt!286643 () SeekEntryResult!6478)

(assert (=> b!620184 (= e!355702 (= lt!286643 lt!286652))))

(declare-fun b!620185 () Bool)

(declare-fun res!399728 () Bool)

(assert (=> b!620185 (=> (not res!399728) (not e!355709))))

(assert (=> b!620185 (= res!399728 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620186 () Bool)

(declare-fun res!399732 () Bool)

(assert (=> b!620186 (=> (not res!399732) (not e!355709))))

(assert (=> b!620186 (= res!399732 (validKeyInArray!0 (select (arr!18031 a!2986) j!136)))))

(declare-fun b!620187 () Bool)

(assert (=> b!620187 (= e!355699 (arrayContainsKey!0 lt!286655 (select (arr!18031 a!2986) j!136) index!984))))

(declare-fun b!620188 () Bool)

(assert (=> b!620188 (= e!355701 e!355704)))

(declare-fun res!399739 () Bool)

(assert (=> b!620188 (=> (not res!399739) (not e!355704))))

(assert (=> b!620188 (= res!399739 (and (= lt!286643 (Found!6478 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18031 a!2986) index!984) (select (arr!18031 a!2986) j!136))) (not (= (select (arr!18031 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!620188 (= lt!286643 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18031 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620189 () Bool)

(declare-fun e!355703 () Unit!20600)

(declare-fun Unit!20605 () Unit!20600)

(assert (=> b!620189 (= e!355703 Unit!20605)))

(declare-fun b!620190 () Bool)

(assert (=> b!620190 false))

(declare-fun lt!286637 () Unit!20600)

(assert (=> b!620190 (= lt!286637 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286655 (select (arr!18031 a!2986) j!136) index!984 Nil!12122))))

(assert (=> b!620190 (arrayNoDuplicates!0 lt!286655 index!984 Nil!12122)))

(declare-fun lt!286654 () Unit!20600)

(assert (=> b!620190 (= lt!286654 (lemmaNoDuplicateFromThenFromBigger!0 lt!286655 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620190 (arrayNoDuplicates!0 lt!286655 #b00000000000000000000000000000000 Nil!12122)))

(declare-fun lt!286656 () Unit!20600)

(assert (=> b!620190 (= lt!286656 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12122))))

(assert (=> b!620190 (arrayContainsKey!0 lt!286655 (select (arr!18031 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286644 () Unit!20600)

(assert (=> b!620190 (= lt!286644 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286655 (select (arr!18031 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!355698 () Bool)

(assert (=> b!620190 e!355698))

(declare-fun res!399734 () Bool)

(assert (=> b!620190 (=> (not res!399734) (not e!355698))))

(assert (=> b!620190 (= res!399734 (arrayContainsKey!0 lt!286655 (select (arr!18031 a!2986) j!136) j!136))))

(declare-fun Unit!20606 () Unit!20600)

(assert (=> b!620190 (= e!355703 Unit!20606)))

(declare-fun b!620191 () Bool)

(declare-fun res!399729 () Bool)

(assert (=> b!620191 (=> (not res!399729) (not e!355710))))

(assert (=> b!620191 (= res!399729 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18031 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620192 () Bool)

(declare-fun res!399730 () Bool)

(assert (=> b!620192 (=> (not res!399730) (not e!355709))))

(assert (=> b!620192 (= res!399730 (and (= (size!18395 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18395 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18395 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!620193 () Bool)

(declare-fun Unit!20607 () Unit!20600)

(assert (=> b!620193 (= e!355700 Unit!20607)))

(declare-fun b!620194 () Bool)

(assert (=> b!620194 (= e!355709 e!355710)))

(declare-fun res!399738 () Bool)

(assert (=> b!620194 (=> (not res!399738) (not e!355710))))

(declare-fun lt!286642 () SeekEntryResult!6478)

(assert (=> b!620194 (= res!399738 (or (= lt!286642 (MissingZero!6478 i!1108)) (= lt!286642 (MissingVacant!6478 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37577 (_ BitVec 32)) SeekEntryResult!6478)

(assert (=> b!620194 (= lt!286642 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!620195 () Bool)

(declare-fun Unit!20608 () Unit!20600)

(assert (=> b!620195 (= e!355708 Unit!20608)))

(declare-fun b!620196 () Bool)

(assert (=> b!620196 (= e!355698 (arrayContainsKey!0 lt!286655 (select (arr!18031 a!2986) j!136) index!984))))

(declare-fun res!399725 () Bool)

(assert (=> start!56144 (=> (not res!399725) (not e!355709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56144 (= res!399725 (validMask!0 mask!3053))))

(assert (=> start!56144 e!355709))

(assert (=> start!56144 true))

(declare-fun array_inv!13805 (array!37577) Bool)

(assert (=> start!56144 (array_inv!13805 a!2986)))

(declare-fun b!620178 () Bool)

(declare-fun Unit!20609 () Unit!20600)

(assert (=> b!620178 (= e!355700 Unit!20609)))

(declare-fun res!399731 () Bool)

(assert (=> b!620178 (= res!399731 (= (select (store (arr!18031 a!2986) i!1108 k0!1786) index!984) (select (arr!18031 a!2986) j!136)))))

(declare-fun e!355707 () Bool)

(assert (=> b!620178 (=> (not res!399731) (not e!355707))))

(assert (=> b!620178 e!355707))

(declare-fun c!70595 () Bool)

(assert (=> b!620178 (= c!70595 (bvslt j!136 index!984))))

(declare-fun lt!286638 () Unit!20600)

(assert (=> b!620178 (= lt!286638 e!355708)))

(declare-fun c!70594 () Bool)

(assert (=> b!620178 (= c!70594 (bvslt index!984 j!136))))

(declare-fun lt!286650 () Unit!20600)

(assert (=> b!620178 (= lt!286650 e!355703)))

(assert (=> b!620178 false))

(declare-fun b!620197 () Bool)

(declare-fun res!399726 () Bool)

(assert (=> b!620197 (=> (not res!399726) (not e!355710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37577 (_ BitVec 32)) Bool)

(assert (=> b!620197 (= res!399726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620198 () Bool)

(declare-fun res!399740 () Bool)

(assert (=> b!620198 (= res!399740 (bvsge j!136 index!984))))

(assert (=> b!620198 (=> res!399740 e!355706)))

(assert (=> b!620198 (= e!355707 e!355706)))

(assert (= (and start!56144 res!399725) b!620192))

(assert (= (and b!620192 res!399730) b!620186))

(assert (= (and b!620186 res!399732) b!620180))

(assert (= (and b!620180 res!399737) b!620185))

(assert (= (and b!620185 res!399728) b!620194))

(assert (= (and b!620194 res!399738) b!620197))

(assert (= (and b!620197 res!399726) b!620179))

(assert (= (and b!620179 res!399735) b!620191))

(assert (= (and b!620191 res!399729) b!620181))

(assert (= (and b!620181 res!399736) b!620188))

(assert (= (and b!620188 res!399739) b!620177))

(assert (= (and b!620177 res!399727) b!620184))

(assert (= (and b!620177 c!70593) b!620176))

(assert (= (and b!620177 (not c!70593)) b!620182))

(assert (= (and b!620177 c!70592) b!620178))

(assert (= (and b!620177 (not c!70592)) b!620193))

(assert (= (and b!620178 res!399731) b!620198))

(assert (= (and b!620198 (not res!399740)) b!620175))

(assert (= (and b!620175 res!399733) b!620187))

(assert (= (and b!620178 c!70595) b!620183))

(assert (= (and b!620178 (not c!70595)) b!620195))

(assert (= (and b!620178 c!70594) b!620190))

(assert (= (and b!620178 (not c!70594)) b!620189))

(assert (= (and b!620190 res!399734) b!620196))

(declare-fun m!596149 () Bool)

(assert (=> b!620191 m!596149))

(declare-fun m!596151 () Bool)

(assert (=> b!620175 m!596151))

(assert (=> b!620175 m!596151))

(declare-fun m!596153 () Bool)

(assert (=> b!620175 m!596153))

(declare-fun m!596155 () Bool)

(assert (=> b!620177 m!596155))

(declare-fun m!596157 () Bool)

(assert (=> b!620177 m!596157))

(assert (=> b!620177 m!596151))

(declare-fun m!596159 () Bool)

(assert (=> b!620177 m!596159))

(assert (=> b!620177 m!596151))

(declare-fun m!596161 () Bool)

(assert (=> b!620177 m!596161))

(declare-fun m!596163 () Bool)

(assert (=> b!620177 m!596163))

(declare-fun m!596165 () Bool)

(assert (=> b!620177 m!596165))

(declare-fun m!596167 () Bool)

(assert (=> b!620177 m!596167))

(declare-fun m!596169 () Bool)

(assert (=> b!620194 m!596169))

(declare-fun m!596171 () Bool)

(assert (=> b!620180 m!596171))

(assert (=> b!620186 m!596151))

(assert (=> b!620186 m!596151))

(declare-fun m!596173 () Bool)

(assert (=> b!620186 m!596173))

(assert (=> b!620187 m!596151))

(assert (=> b!620187 m!596151))

(declare-fun m!596175 () Bool)

(assert (=> b!620187 m!596175))

(assert (=> b!620178 m!596163))

(declare-fun m!596177 () Bool)

(assert (=> b!620178 m!596177))

(assert (=> b!620178 m!596151))

(declare-fun m!596179 () Bool)

(assert (=> b!620188 m!596179))

(assert (=> b!620188 m!596151))

(assert (=> b!620188 m!596151))

(declare-fun m!596181 () Bool)

(assert (=> b!620188 m!596181))

(assert (=> b!620190 m!596151))

(assert (=> b!620190 m!596151))

(declare-fun m!596183 () Bool)

(assert (=> b!620190 m!596183))

(declare-fun m!596185 () Bool)

(assert (=> b!620190 m!596185))

(declare-fun m!596187 () Bool)

(assert (=> b!620190 m!596187))

(assert (=> b!620190 m!596151))

(assert (=> b!620190 m!596153))

(assert (=> b!620190 m!596151))

(declare-fun m!596189 () Bool)

(assert (=> b!620190 m!596189))

(declare-fun m!596191 () Bool)

(assert (=> b!620190 m!596191))

(assert (=> b!620190 m!596151))

(declare-fun m!596193 () Bool)

(assert (=> b!620190 m!596193))

(declare-fun m!596195 () Bool)

(assert (=> b!620190 m!596195))

(declare-fun m!596197 () Bool)

(assert (=> b!620185 m!596197))

(assert (=> b!620181 m!596163))

(declare-fun m!596199 () Bool)

(assert (=> b!620181 m!596199))

(declare-fun m!596201 () Bool)

(assert (=> b!620179 m!596201))

(assert (=> b!620183 m!596151))

(declare-fun m!596203 () Bool)

(assert (=> b!620183 m!596203))

(assert (=> b!620183 m!596151))

(declare-fun m!596205 () Bool)

(assert (=> b!620183 m!596205))

(declare-fun m!596207 () Bool)

(assert (=> b!620183 m!596207))

(assert (=> b!620183 m!596187))

(assert (=> b!620183 m!596151))

(declare-fun m!596209 () Bool)

(assert (=> b!620183 m!596209))

(assert (=> b!620183 m!596151))

(declare-fun m!596211 () Bool)

(assert (=> b!620183 m!596211))

(assert (=> b!620183 m!596195))

(assert (=> b!620196 m!596151))

(assert (=> b!620196 m!596151))

(assert (=> b!620196 m!596175))

(declare-fun m!596213 () Bool)

(assert (=> b!620197 m!596213))

(declare-fun m!596215 () Bool)

(assert (=> start!56144 m!596215))

(declare-fun m!596217 () Bool)

(assert (=> start!56144 m!596217))

(check-sat (not b!620186) (not b!620183) (not b!620196) (not start!56144) (not b!620194) (not b!620177) (not b!620188) (not b!620185) (not b!620187) (not b!620197) (not b!620180) (not b!620179) (not b!620190) (not b!620175))
(check-sat)
