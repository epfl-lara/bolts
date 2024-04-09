; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57368 () Bool)

(assert start!57368)

(declare-fun b!634697 () Bool)

(declare-fun res!410699 () Bool)

(declare-fun e!362989 () Bool)

(assert (=> b!634697 (=> (not res!410699) (not e!362989))))

(declare-datatypes ((array!38177 0))(
  ( (array!38178 (arr!18313 (Array (_ BitVec 32) (_ BitVec 64))) (size!18677 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38177)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634697 (= res!410699 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634698 () Bool)

(declare-fun res!410698 () Bool)

(assert (=> b!634698 (=> (not res!410698) (not e!362989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634698 (= res!410698 (validKeyInArray!0 k0!1786))))

(declare-fun b!634699 () Bool)

(declare-fun e!362987 () Bool)

(declare-fun e!362981 () Bool)

(assert (=> b!634699 (= e!362987 e!362981)))

(declare-fun res!410696 () Bool)

(assert (=> b!634699 (=> (not res!410696) (not e!362981))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!634699 (= res!410696 (= (select (store (arr!18313 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!293489 () array!38177)

(assert (=> b!634699 (= lt!293489 (array!38178 (store (arr!18313 a!2986) i!1108 k0!1786) (size!18677 a!2986)))))

(declare-fun res!410705 () Bool)

(assert (=> start!57368 (=> (not res!410705) (not e!362989))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57368 (= res!410705 (validMask!0 mask!3053))))

(assert (=> start!57368 e!362989))

(assert (=> start!57368 true))

(declare-fun array_inv!14087 (array!38177) Bool)

(assert (=> start!57368 (array_inv!14087 a!2986)))

(declare-fun b!634700 () Bool)

(declare-fun res!410704 () Bool)

(assert (=> b!634700 (=> (not res!410704) (not e!362989))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!634700 (= res!410704 (validKeyInArray!0 (select (arr!18313 a!2986) j!136)))))

(declare-fun b!634701 () Bool)

(declare-fun res!410703 () Bool)

(assert (=> b!634701 (=> (not res!410703) (not e!362987))))

(declare-datatypes ((List!12407 0))(
  ( (Nil!12404) (Cons!12403 (h!13448 (_ BitVec 64)) (t!18643 List!12407)) )
))
(declare-fun arrayNoDuplicates!0 (array!38177 (_ BitVec 32) List!12407) Bool)

(assert (=> b!634701 (= res!410703 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12404))))

(declare-fun b!634702 () Bool)

(declare-fun res!410706 () Bool)

(assert (=> b!634702 (=> (not res!410706) (not e!362987))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!634702 (= res!410706 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18313 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!634703 () Bool)

(declare-datatypes ((Unit!21398 0))(
  ( (Unit!21399) )
))
(declare-fun e!362988 () Unit!21398)

(declare-fun Unit!21400 () Unit!21398)

(assert (=> b!634703 (= e!362988 Unit!21400)))

(declare-fun b!634704 () Bool)

(declare-fun res!410697 () Bool)

(assert (=> b!634704 (=> (not res!410697) (not e!362989))))

(assert (=> b!634704 (= res!410697 (and (= (size!18677 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18677 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18677 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!634705 () Bool)

(declare-fun e!362992 () Bool)

(declare-fun e!362990 () Bool)

(assert (=> b!634705 (= e!362992 e!362990)))

(declare-fun res!410702 () Bool)

(assert (=> b!634705 (=> res!410702 e!362990)))

(declare-fun lt!293484 () (_ BitVec 64))

(declare-fun lt!293491 () (_ BitVec 64))

(assert (=> b!634705 (= res!410702 (or (not (= (select (arr!18313 a!2986) j!136) lt!293484)) (not (= (select (arr!18313 a!2986) j!136) lt!293491)) (bvsge j!136 index!984)))))

(declare-fun e!362985 () Bool)

(assert (=> b!634705 e!362985))

(declare-fun res!410708 () Bool)

(assert (=> b!634705 (=> (not res!410708) (not e!362985))))

(assert (=> b!634705 (= res!410708 (= lt!293491 (select (arr!18313 a!2986) j!136)))))

(assert (=> b!634705 (= lt!293491 (select (store (arr!18313 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!634706 () Bool)

(declare-fun e!362984 () Bool)

(assert (=> b!634706 (= e!362984 (not e!362992))))

(declare-fun res!410700 () Bool)

(assert (=> b!634706 (=> res!410700 e!362992)))

(declare-datatypes ((SeekEntryResult!6760 0))(
  ( (MissingZero!6760 (index!29341 (_ BitVec 32))) (Found!6760 (index!29342 (_ BitVec 32))) (Intermediate!6760 (undefined!7572 Bool) (index!29343 (_ BitVec 32)) (x!58111 (_ BitVec 32))) (Undefined!6760) (MissingVacant!6760 (index!29344 (_ BitVec 32))) )
))
(declare-fun lt!293487 () SeekEntryResult!6760)

(assert (=> b!634706 (= res!410700 (not (= lt!293487 (Found!6760 index!984))))))

(declare-fun lt!293485 () Unit!21398)

(assert (=> b!634706 (= lt!293485 e!362988)))

(declare-fun c!72368 () Bool)

(assert (=> b!634706 (= c!72368 (= lt!293487 Undefined!6760))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38177 (_ BitVec 32)) SeekEntryResult!6760)

(assert (=> b!634706 (= lt!293487 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293484 lt!293489 mask!3053))))

(declare-fun e!362982 () Bool)

(assert (=> b!634706 e!362982))

(declare-fun res!410709 () Bool)

(assert (=> b!634706 (=> (not res!410709) (not e!362982))))

(declare-fun lt!293490 () SeekEntryResult!6760)

(declare-fun lt!293488 () (_ BitVec 32))

(assert (=> b!634706 (= res!410709 (= lt!293490 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293488 vacantSpotIndex!68 lt!293484 lt!293489 mask!3053)))))

(assert (=> b!634706 (= lt!293490 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293488 vacantSpotIndex!68 (select (arr!18313 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!634706 (= lt!293484 (select (store (arr!18313 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!293486 () Unit!21398)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38177 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21398)

(assert (=> b!634706 (= lt!293486 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293488 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634706 (= lt!293488 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634707 () Bool)

(declare-fun lt!293483 () SeekEntryResult!6760)

(assert (=> b!634707 (= e!362982 (= lt!293483 lt!293490))))

(declare-fun b!634708 () Bool)

(assert (=> b!634708 (= e!362990 true)))

(assert (=> b!634708 (arrayContainsKey!0 lt!293489 (select (arr!18313 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293492 () Unit!21398)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38177 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21398)

(assert (=> b!634708 (= lt!293492 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293489 (select (arr!18313 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!634709 () Bool)

(declare-fun e!362991 () Bool)

(declare-fun e!362986 () Bool)

(assert (=> b!634709 (= e!362991 e!362986)))

(declare-fun res!410707 () Bool)

(assert (=> b!634709 (=> (not res!410707) (not e!362986))))

(assert (=> b!634709 (= res!410707 (arrayContainsKey!0 lt!293489 (select (arr!18313 a!2986) j!136) j!136))))

(declare-fun b!634710 () Bool)

(assert (=> b!634710 (= e!362985 e!362991)))

(declare-fun res!410701 () Bool)

(assert (=> b!634710 (=> res!410701 e!362991)))

(assert (=> b!634710 (= res!410701 (or (not (= (select (arr!18313 a!2986) j!136) lt!293484)) (not (= (select (arr!18313 a!2986) j!136) lt!293491)) (bvsge j!136 index!984)))))

(declare-fun b!634711 () Bool)

(assert (=> b!634711 (= e!362981 e!362984)))

(declare-fun res!410710 () Bool)

(assert (=> b!634711 (=> (not res!410710) (not e!362984))))

(assert (=> b!634711 (= res!410710 (and (= lt!293483 (Found!6760 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18313 a!2986) index!984) (select (arr!18313 a!2986) j!136))) (not (= (select (arr!18313 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!634711 (= lt!293483 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18313 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634712 () Bool)

(declare-fun res!410711 () Bool)

(assert (=> b!634712 (=> (not res!410711) (not e!362987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38177 (_ BitVec 32)) Bool)

(assert (=> b!634712 (= res!410711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634713 () Bool)

(assert (=> b!634713 (= e!362986 (arrayContainsKey!0 lt!293489 (select (arr!18313 a!2986) j!136) index!984))))

(declare-fun b!634714 () Bool)

(declare-fun Unit!21401 () Unit!21398)

(assert (=> b!634714 (= e!362988 Unit!21401)))

(assert (=> b!634714 false))

(declare-fun b!634715 () Bool)

(assert (=> b!634715 (= e!362989 e!362987)))

(declare-fun res!410695 () Bool)

(assert (=> b!634715 (=> (not res!410695) (not e!362987))))

(declare-fun lt!293493 () SeekEntryResult!6760)

(assert (=> b!634715 (= res!410695 (or (= lt!293493 (MissingZero!6760 i!1108)) (= lt!293493 (MissingVacant!6760 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38177 (_ BitVec 32)) SeekEntryResult!6760)

(assert (=> b!634715 (= lt!293493 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!57368 res!410705) b!634704))

(assert (= (and b!634704 res!410697) b!634700))

(assert (= (and b!634700 res!410704) b!634698))

(assert (= (and b!634698 res!410698) b!634697))

(assert (= (and b!634697 res!410699) b!634715))

(assert (= (and b!634715 res!410695) b!634712))

(assert (= (and b!634712 res!410711) b!634701))

(assert (= (and b!634701 res!410703) b!634702))

(assert (= (and b!634702 res!410706) b!634699))

(assert (= (and b!634699 res!410696) b!634711))

(assert (= (and b!634711 res!410710) b!634706))

(assert (= (and b!634706 res!410709) b!634707))

(assert (= (and b!634706 c!72368) b!634714))

(assert (= (and b!634706 (not c!72368)) b!634703))

(assert (= (and b!634706 (not res!410700)) b!634705))

(assert (= (and b!634705 res!410708) b!634710))

(assert (= (and b!634710 (not res!410701)) b!634709))

(assert (= (and b!634709 res!410707) b!634713))

(assert (= (and b!634705 (not res!410702)) b!634708))

(declare-fun m!609197 () Bool)

(assert (=> start!57368 m!609197))

(declare-fun m!609199 () Bool)

(assert (=> start!57368 m!609199))

(declare-fun m!609201 () Bool)

(assert (=> b!634708 m!609201))

(assert (=> b!634708 m!609201))

(declare-fun m!609203 () Bool)

(assert (=> b!634708 m!609203))

(assert (=> b!634708 m!609201))

(declare-fun m!609205 () Bool)

(assert (=> b!634708 m!609205))

(assert (=> b!634710 m!609201))

(declare-fun m!609207 () Bool)

(assert (=> b!634706 m!609207))

(declare-fun m!609209 () Bool)

(assert (=> b!634706 m!609209))

(assert (=> b!634706 m!609201))

(declare-fun m!609211 () Bool)

(assert (=> b!634706 m!609211))

(assert (=> b!634706 m!609201))

(declare-fun m!609213 () Bool)

(assert (=> b!634706 m!609213))

(declare-fun m!609215 () Bool)

(assert (=> b!634706 m!609215))

(declare-fun m!609217 () Bool)

(assert (=> b!634706 m!609217))

(declare-fun m!609219 () Bool)

(assert (=> b!634706 m!609219))

(declare-fun m!609221 () Bool)

(assert (=> b!634697 m!609221))

(declare-fun m!609223 () Bool)

(assert (=> b!634702 m!609223))

(assert (=> b!634713 m!609201))

(assert (=> b!634713 m!609201))

(declare-fun m!609225 () Bool)

(assert (=> b!634713 m!609225))

(declare-fun m!609227 () Bool)

(assert (=> b!634715 m!609227))

(declare-fun m!609229 () Bool)

(assert (=> b!634712 m!609229))

(assert (=> b!634709 m!609201))

(assert (=> b!634709 m!609201))

(declare-fun m!609231 () Bool)

(assert (=> b!634709 m!609231))

(declare-fun m!609233 () Bool)

(assert (=> b!634698 m!609233))

(assert (=> b!634699 m!609211))

(declare-fun m!609235 () Bool)

(assert (=> b!634699 m!609235))

(assert (=> b!634700 m!609201))

(assert (=> b!634700 m!609201))

(declare-fun m!609237 () Bool)

(assert (=> b!634700 m!609237))

(declare-fun m!609239 () Bool)

(assert (=> b!634711 m!609239))

(assert (=> b!634711 m!609201))

(assert (=> b!634711 m!609201))

(declare-fun m!609241 () Bool)

(assert (=> b!634711 m!609241))

(assert (=> b!634705 m!609201))

(assert (=> b!634705 m!609211))

(declare-fun m!609243 () Bool)

(assert (=> b!634705 m!609243))

(declare-fun m!609245 () Bool)

(assert (=> b!634701 m!609245))

(check-sat (not b!634697) (not b!634698) (not b!634712) (not b!634700) (not b!634706) (not b!634709) (not b!634701) (not b!634713) (not start!57368) (not b!634711) (not b!634708) (not b!634715))
(check-sat)
