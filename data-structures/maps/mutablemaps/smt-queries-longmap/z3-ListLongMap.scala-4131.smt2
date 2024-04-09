; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56342 () Bool)

(assert start!56342)

(declare-fun b!624443 () Bool)

(declare-fun res!402775 () Bool)

(declare-fun e!358039 () Bool)

(assert (=> b!624443 (=> (not res!402775) (not e!358039))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624443 (= res!402775 (validKeyInArray!0 k0!1786))))

(declare-fun b!624444 () Bool)

(declare-fun e!358037 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!624444 (= e!358037 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun b!624445 () Bool)

(declare-fun res!402777 () Bool)

(assert (=> b!624445 (=> (not res!402777) (not e!358037))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37730 0))(
  ( (array!37731 (arr!18106 (Array (_ BitVec 32) (_ BitVec 64))) (size!18470 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37730)

(assert (=> b!624445 (= res!402777 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18106 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18106 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624446 () Bool)

(declare-fun res!402782 () Bool)

(assert (=> b!624446 (=> (not res!402782) (not e!358039))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!624446 (= res!402782 (validKeyInArray!0 (select (arr!18106 a!2986) j!136)))))

(declare-fun b!624447 () Bool)

(assert (=> b!624447 (= e!358039 e!358037)))

(declare-fun res!402780 () Bool)

(assert (=> b!624447 (=> (not res!402780) (not e!358037))))

(declare-datatypes ((SeekEntryResult!6553 0))(
  ( (MissingZero!6553 (index!28495 (_ BitVec 32))) (Found!6553 (index!28496 (_ BitVec 32))) (Intermediate!6553 (undefined!7365 Bool) (index!28497 (_ BitVec 32)) (x!57277 (_ BitVec 32))) (Undefined!6553) (MissingVacant!6553 (index!28498 (_ BitVec 32))) )
))
(declare-fun lt!289584 () SeekEntryResult!6553)

(assert (=> b!624447 (= res!402780 (or (= lt!289584 (MissingZero!6553 i!1108)) (= lt!289584 (MissingVacant!6553 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37730 (_ BitVec 32)) SeekEntryResult!6553)

(assert (=> b!624447 (= lt!289584 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!402773 () Bool)

(assert (=> start!56342 (=> (not res!402773) (not e!358039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56342 (= res!402773 (validMask!0 mask!3053))))

(assert (=> start!56342 e!358039))

(assert (=> start!56342 true))

(declare-fun array_inv!13880 (array!37730) Bool)

(assert (=> start!56342 (array_inv!13880 a!2986)))

(declare-fun b!624448 () Bool)

(declare-fun res!402779 () Bool)

(assert (=> b!624448 (=> (not res!402779) (not e!358039))))

(declare-fun arrayContainsKey!0 (array!37730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624448 (= res!402779 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624449 () Bool)

(declare-fun res!402778 () Bool)

(assert (=> b!624449 (=> (not res!402778) (not e!358039))))

(assert (=> b!624449 (= res!402778 (and (= (size!18470 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18470 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18470 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624450 () Bool)

(declare-fun res!402774 () Bool)

(assert (=> b!624450 (=> (not res!402774) (not e!358037))))

(declare-datatypes ((List!12200 0))(
  ( (Nil!12197) (Cons!12196 (h!13241 (_ BitVec 64)) (t!18436 List!12200)) )
))
(declare-fun arrayNoDuplicates!0 (array!37730 (_ BitVec 32) List!12200) Bool)

(assert (=> b!624450 (= res!402774 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12197))))

(declare-fun b!624451 () Bool)

(declare-fun res!402781 () Bool)

(assert (=> b!624451 (=> (not res!402781) (not e!358037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37730 (_ BitVec 32)) Bool)

(assert (=> b!624451 (= res!402781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624452 () Bool)

(declare-fun res!402776 () Bool)

(assert (=> b!624452 (=> (not res!402776) (not e!358037))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37730 (_ BitVec 32)) SeekEntryResult!6553)

(assert (=> b!624452 (= res!402776 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18106 a!2986) j!136) a!2986 mask!3053) (Found!6553 j!136)))))

(assert (= (and start!56342 res!402773) b!624449))

(assert (= (and b!624449 res!402778) b!624446))

(assert (= (and b!624446 res!402782) b!624443))

(assert (= (and b!624443 res!402775) b!624448))

(assert (= (and b!624448 res!402779) b!624447))

(assert (= (and b!624447 res!402780) b!624451))

(assert (= (and b!624451 res!402781) b!624450))

(assert (= (and b!624450 res!402774) b!624445))

(assert (= (and b!624445 res!402777) b!624452))

(assert (= (and b!624452 res!402776) b!624444))

(declare-fun m!600179 () Bool)

(assert (=> b!624450 m!600179))

(declare-fun m!600181 () Bool)

(assert (=> b!624446 m!600181))

(assert (=> b!624446 m!600181))

(declare-fun m!600183 () Bool)

(assert (=> b!624446 m!600183))

(declare-fun m!600185 () Bool)

(assert (=> b!624448 m!600185))

(assert (=> b!624452 m!600181))

(assert (=> b!624452 m!600181))

(declare-fun m!600187 () Bool)

(assert (=> b!624452 m!600187))

(declare-fun m!600189 () Bool)

(assert (=> b!624451 m!600189))

(declare-fun m!600191 () Bool)

(assert (=> b!624443 m!600191))

(declare-fun m!600193 () Bool)

(assert (=> b!624445 m!600193))

(declare-fun m!600195 () Bool)

(assert (=> b!624445 m!600195))

(declare-fun m!600197 () Bool)

(assert (=> b!624445 m!600197))

(declare-fun m!600199 () Bool)

(assert (=> b!624447 m!600199))

(declare-fun m!600201 () Bool)

(assert (=> start!56342 m!600201))

(declare-fun m!600203 () Bool)

(assert (=> start!56342 m!600203))

(check-sat (not b!624448) (not b!624452) (not b!624446) (not b!624450) (not b!624443) (not b!624451) (not b!624447) (not start!56342))
(check-sat)
(get-model)

(declare-fun b!624495 () Bool)

(declare-fun e!358057 () SeekEntryResult!6553)

(declare-fun lt!289595 () SeekEntryResult!6553)

(assert (=> b!624495 (= e!358057 (MissingZero!6553 (index!28497 lt!289595)))))

(declare-fun d!88623 () Bool)

(declare-fun lt!289594 () SeekEntryResult!6553)

(get-info :version)

(assert (=> d!88623 (and (or ((_ is Undefined!6553) lt!289594) (not ((_ is Found!6553) lt!289594)) (and (bvsge (index!28496 lt!289594) #b00000000000000000000000000000000) (bvslt (index!28496 lt!289594) (size!18470 a!2986)))) (or ((_ is Undefined!6553) lt!289594) ((_ is Found!6553) lt!289594) (not ((_ is MissingZero!6553) lt!289594)) (and (bvsge (index!28495 lt!289594) #b00000000000000000000000000000000) (bvslt (index!28495 lt!289594) (size!18470 a!2986)))) (or ((_ is Undefined!6553) lt!289594) ((_ is Found!6553) lt!289594) ((_ is MissingZero!6553) lt!289594) (not ((_ is MissingVacant!6553) lt!289594)) (and (bvsge (index!28498 lt!289594) #b00000000000000000000000000000000) (bvslt (index!28498 lt!289594) (size!18470 a!2986)))) (or ((_ is Undefined!6553) lt!289594) (ite ((_ is Found!6553) lt!289594) (= (select (arr!18106 a!2986) (index!28496 lt!289594)) k0!1786) (ite ((_ is MissingZero!6553) lt!289594) (= (select (arr!18106 a!2986) (index!28495 lt!289594)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6553) lt!289594) (= (select (arr!18106 a!2986) (index!28498 lt!289594)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!358055 () SeekEntryResult!6553)

(assert (=> d!88623 (= lt!289594 e!358055)))

(declare-fun c!71208 () Bool)

(assert (=> d!88623 (= c!71208 (and ((_ is Intermediate!6553) lt!289595) (undefined!7365 lt!289595)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37730 (_ BitVec 32)) SeekEntryResult!6553)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88623 (= lt!289595 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!88623 (validMask!0 mask!3053)))

(assert (=> d!88623 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!289594)))

(declare-fun b!624496 () Bool)

(assert (=> b!624496 (= e!358057 (seekKeyOrZeroReturnVacant!0 (x!57277 lt!289595) (index!28497 lt!289595) (index!28497 lt!289595) k0!1786 a!2986 mask!3053))))

(declare-fun b!624497 () Bool)

(declare-fun c!71210 () Bool)

(declare-fun lt!289596 () (_ BitVec 64))

(assert (=> b!624497 (= c!71210 (= lt!289596 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!358056 () SeekEntryResult!6553)

(assert (=> b!624497 (= e!358056 e!358057)))

(declare-fun b!624498 () Bool)

(assert (=> b!624498 (= e!358056 (Found!6553 (index!28497 lt!289595)))))

(declare-fun b!624499 () Bool)

(assert (=> b!624499 (= e!358055 Undefined!6553)))

(declare-fun b!624500 () Bool)

(assert (=> b!624500 (= e!358055 e!358056)))

(assert (=> b!624500 (= lt!289596 (select (arr!18106 a!2986) (index!28497 lt!289595)))))

(declare-fun c!71209 () Bool)

(assert (=> b!624500 (= c!71209 (= lt!289596 k0!1786))))

(assert (= (and d!88623 c!71208) b!624499))

(assert (= (and d!88623 (not c!71208)) b!624500))

(assert (= (and b!624500 c!71209) b!624498))

(assert (= (and b!624500 (not c!71209)) b!624497))

(assert (= (and b!624497 c!71210) b!624495))

(assert (= (and b!624497 (not c!71210)) b!624496))

(declare-fun m!600231 () Bool)

(assert (=> d!88623 m!600231))

(declare-fun m!600233 () Bool)

(assert (=> d!88623 m!600233))

(declare-fun m!600235 () Bool)

(assert (=> d!88623 m!600235))

(declare-fun m!600237 () Bool)

(assert (=> d!88623 m!600237))

(assert (=> d!88623 m!600231))

(declare-fun m!600239 () Bool)

(assert (=> d!88623 m!600239))

(assert (=> d!88623 m!600201))

(declare-fun m!600241 () Bool)

(assert (=> b!624496 m!600241))

(declare-fun m!600243 () Bool)

(assert (=> b!624500 m!600243))

(assert (=> b!624447 d!88623))

(declare-fun d!88627 () Bool)

(declare-fun res!402821 () Bool)

(declare-fun e!358068 () Bool)

(assert (=> d!88627 (=> res!402821 e!358068)))

(assert (=> d!88627 (= res!402821 (= (select (arr!18106 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!88627 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!358068)))

(declare-fun b!624513 () Bool)

(declare-fun e!358069 () Bool)

(assert (=> b!624513 (= e!358068 e!358069)))

(declare-fun res!402822 () Bool)

(assert (=> b!624513 (=> (not res!402822) (not e!358069))))

(assert (=> b!624513 (= res!402822 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18470 a!2986)))))

(declare-fun b!624514 () Bool)

(assert (=> b!624514 (= e!358069 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88627 (not res!402821)) b!624513))

(assert (= (and b!624513 res!402822) b!624514))

(declare-fun m!600245 () Bool)

(assert (=> d!88627 m!600245))

(declare-fun m!600247 () Bool)

(assert (=> b!624514 m!600247))

(assert (=> b!624448 d!88627))

(declare-fun d!88629 () Bool)

(assert (=> d!88629 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!624443 d!88629))

(declare-fun d!88631 () Bool)

(assert (=> d!88631 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56342 d!88631))

(declare-fun d!88641 () Bool)

(assert (=> d!88641 (= (array_inv!13880 a!2986) (bvsge (size!18470 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56342 d!88641))

(declare-fun b!624563 () Bool)

(declare-fun e!358103 () Bool)

(declare-fun contains!3077 (List!12200 (_ BitVec 64)) Bool)

(assert (=> b!624563 (= e!358103 (contains!3077 Nil!12197 (select (arr!18106 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33200 () Bool)

(declare-fun call!33203 () Bool)

(declare-fun c!71228 () Bool)

(assert (=> bm!33200 (= call!33203 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71228 (Cons!12196 (select (arr!18106 a!2986) #b00000000000000000000000000000000) Nil!12197) Nil!12197)))))

(declare-fun b!624564 () Bool)

(declare-fun e!358105 () Bool)

(assert (=> b!624564 (= e!358105 call!33203)))

(declare-fun b!624565 () Bool)

(declare-fun e!358104 () Bool)

(declare-fun e!358102 () Bool)

(assert (=> b!624565 (= e!358104 e!358102)))

(declare-fun res!402841 () Bool)

(assert (=> b!624565 (=> (not res!402841) (not e!358102))))

(assert (=> b!624565 (= res!402841 (not e!358103))))

(declare-fun res!402842 () Bool)

(assert (=> b!624565 (=> (not res!402842) (not e!358103))))

(assert (=> b!624565 (= res!402842 (validKeyInArray!0 (select (arr!18106 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!624566 () Bool)

(assert (=> b!624566 (= e!358102 e!358105)))

(assert (=> b!624566 (= c!71228 (validKeyInArray!0 (select (arr!18106 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!624562 () Bool)

(assert (=> b!624562 (= e!358105 call!33203)))

(declare-fun d!88643 () Bool)

(declare-fun res!402840 () Bool)

(assert (=> d!88643 (=> res!402840 e!358104)))

(assert (=> d!88643 (= res!402840 (bvsge #b00000000000000000000000000000000 (size!18470 a!2986)))))

(assert (=> d!88643 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12197) e!358104)))

(assert (= (and d!88643 (not res!402840)) b!624565))

(assert (= (and b!624565 res!402842) b!624563))

(assert (= (and b!624565 res!402841) b!624566))

(assert (= (and b!624566 c!71228) b!624562))

(assert (= (and b!624566 (not c!71228)) b!624564))

(assert (= (or b!624562 b!624564) bm!33200))

(assert (=> b!624563 m!600245))

(assert (=> b!624563 m!600245))

(declare-fun m!600277 () Bool)

(assert (=> b!624563 m!600277))

(assert (=> bm!33200 m!600245))

(declare-fun m!600281 () Bool)

(assert (=> bm!33200 m!600281))

(assert (=> b!624565 m!600245))

(assert (=> b!624565 m!600245))

(declare-fun m!600283 () Bool)

(assert (=> b!624565 m!600283))

(assert (=> b!624566 m!600245))

(assert (=> b!624566 m!600245))

(assert (=> b!624566 m!600283))

(assert (=> b!624450 d!88643))

(declare-fun b!624587 () Bool)

(declare-fun e!358119 () Bool)

(declare-fun e!358120 () Bool)

(assert (=> b!624587 (= e!358119 e!358120)))

(declare-fun lt!289626 () (_ BitVec 64))

(assert (=> b!624587 (= lt!289626 (select (arr!18106 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21068 0))(
  ( (Unit!21069) )
))
(declare-fun lt!289624 () Unit!21068)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37730 (_ BitVec 64) (_ BitVec 32)) Unit!21068)

(assert (=> b!624587 (= lt!289624 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!289626 #b00000000000000000000000000000000))))

(assert (=> b!624587 (arrayContainsKey!0 a!2986 lt!289626 #b00000000000000000000000000000000)))

(declare-fun lt!289625 () Unit!21068)

(assert (=> b!624587 (= lt!289625 lt!289624)))

(declare-fun res!402848 () Bool)

(assert (=> b!624587 (= res!402848 (= (seekEntryOrOpen!0 (select (arr!18106 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6553 #b00000000000000000000000000000000)))))

(assert (=> b!624587 (=> (not res!402848) (not e!358120))))

(declare-fun bm!33203 () Bool)

(declare-fun call!33206 () Bool)

(assert (=> bm!33203 (= call!33206 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!624588 () Bool)

(assert (=> b!624588 (= e!358119 call!33206)))

(declare-fun b!624589 () Bool)

(declare-fun e!358118 () Bool)

(assert (=> b!624589 (= e!358118 e!358119)))

(declare-fun c!71237 () Bool)

(assert (=> b!624589 (= c!71237 (validKeyInArray!0 (select (arr!18106 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!624590 () Bool)

(assert (=> b!624590 (= e!358120 call!33206)))

(declare-fun d!88647 () Bool)

(declare-fun res!402847 () Bool)

(assert (=> d!88647 (=> res!402847 e!358118)))

(assert (=> d!88647 (= res!402847 (bvsge #b00000000000000000000000000000000 (size!18470 a!2986)))))

(assert (=> d!88647 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!358118)))

(assert (= (and d!88647 (not res!402847)) b!624589))

(assert (= (and b!624589 c!71237) b!624587))

(assert (= (and b!624589 (not c!71237)) b!624588))

(assert (= (and b!624587 res!402848) b!624590))

(assert (= (or b!624590 b!624588) bm!33203))

(assert (=> b!624587 m!600245))

(declare-fun m!600285 () Bool)

(assert (=> b!624587 m!600285))

(declare-fun m!600287 () Bool)

(assert (=> b!624587 m!600287))

(assert (=> b!624587 m!600245))

(declare-fun m!600289 () Bool)

(assert (=> b!624587 m!600289))

(declare-fun m!600291 () Bool)

(assert (=> bm!33203 m!600291))

(assert (=> b!624589 m!600245))

(assert (=> b!624589 m!600245))

(assert (=> b!624589 m!600283))

(assert (=> b!624451 d!88647))

(declare-fun d!88649 () Bool)

(assert (=> d!88649 (= (validKeyInArray!0 (select (arr!18106 a!2986) j!136)) (and (not (= (select (arr!18106 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18106 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!624446 d!88649))

(declare-fun b!624637 () Bool)

(declare-fun e!358147 () SeekEntryResult!6553)

(declare-fun e!358149 () SeekEntryResult!6553)

(assert (=> b!624637 (= e!358147 e!358149)))

(declare-fun lt!289644 () (_ BitVec 64))

(declare-fun c!71260 () Bool)

(assert (=> b!624637 (= c!71260 (= lt!289644 (select (arr!18106 a!2986) j!136)))))

(declare-fun e!358148 () SeekEntryResult!6553)

(declare-fun b!624638 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!624638 (= e!358148 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18106 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!88651 () Bool)

(declare-fun lt!289643 () SeekEntryResult!6553)

(assert (=> d!88651 (and (or ((_ is Undefined!6553) lt!289643) (not ((_ is Found!6553) lt!289643)) (and (bvsge (index!28496 lt!289643) #b00000000000000000000000000000000) (bvslt (index!28496 lt!289643) (size!18470 a!2986)))) (or ((_ is Undefined!6553) lt!289643) ((_ is Found!6553) lt!289643) (not ((_ is MissingVacant!6553) lt!289643)) (not (= (index!28498 lt!289643) vacantSpotIndex!68)) (and (bvsge (index!28498 lt!289643) #b00000000000000000000000000000000) (bvslt (index!28498 lt!289643) (size!18470 a!2986)))) (or ((_ is Undefined!6553) lt!289643) (ite ((_ is Found!6553) lt!289643) (= (select (arr!18106 a!2986) (index!28496 lt!289643)) (select (arr!18106 a!2986) j!136)) (and ((_ is MissingVacant!6553) lt!289643) (= (index!28498 lt!289643) vacantSpotIndex!68) (= (select (arr!18106 a!2986) (index!28498 lt!289643)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88651 (= lt!289643 e!358147)))

(declare-fun c!71258 () Bool)

(assert (=> d!88651 (= c!71258 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88651 (= lt!289644 (select (arr!18106 a!2986) index!984))))

(assert (=> d!88651 (validMask!0 mask!3053)))

(assert (=> d!88651 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18106 a!2986) j!136) a!2986 mask!3053) lt!289643)))

(declare-fun b!624639 () Bool)

(assert (=> b!624639 (= e!358149 (Found!6553 index!984))))

(declare-fun b!624640 () Bool)

(declare-fun c!71259 () Bool)

(assert (=> b!624640 (= c!71259 (= lt!289644 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!624640 (= e!358149 e!358148)))

(declare-fun b!624641 () Bool)

(assert (=> b!624641 (= e!358148 (MissingVacant!6553 vacantSpotIndex!68))))

(declare-fun b!624642 () Bool)

(assert (=> b!624642 (= e!358147 Undefined!6553)))

(assert (= (and d!88651 c!71258) b!624642))

(assert (= (and d!88651 (not c!71258)) b!624637))

(assert (= (and b!624637 c!71260) b!624639))

(assert (= (and b!624637 (not c!71260)) b!624640))

(assert (= (and b!624640 c!71259) b!624641))

(assert (= (and b!624640 (not c!71259)) b!624638))

(declare-fun m!600321 () Bool)

(assert (=> b!624638 m!600321))

(assert (=> b!624638 m!600321))

(assert (=> b!624638 m!600181))

(declare-fun m!600323 () Bool)

(assert (=> b!624638 m!600323))

(declare-fun m!600325 () Bool)

(assert (=> d!88651 m!600325))

(declare-fun m!600327 () Bool)

(assert (=> d!88651 m!600327))

(declare-fun m!600329 () Bool)

(assert (=> d!88651 m!600329))

(assert (=> d!88651 m!600201))

(assert (=> b!624452 d!88651))

(check-sat (not d!88651) (not b!624563) (not b!624496) (not b!624587) (not bm!33203) (not bm!33200) (not b!624565) (not b!624589) (not b!624638) (not b!624566) (not d!88623) (not b!624514))
(check-sat)
