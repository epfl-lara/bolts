; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55448 () Bool)

(assert start!55448)

(declare-fun b!606286 () Bool)

(declare-fun e!347132 () Bool)

(declare-fun e!347127 () Bool)

(assert (=> b!606286 (= e!347132 e!347127)))

(declare-fun res!389584 () Bool)

(assert (=> b!606286 (=> (not res!389584) (not e!347127))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37235 0))(
  ( (array!37236 (arr!17866 (Array (_ BitVec 32) (_ BitVec 64))) (size!18230 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37235)

(declare-fun lt!276776 () array!37235)

(declare-fun arrayContainsKey!0 (array!37235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!606286 (= res!389584 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) j!136))))

(declare-fun b!606287 () Bool)

(declare-fun e!347123 () Bool)

(declare-fun e!347133 () Bool)

(assert (=> b!606287 (= e!347123 e!347133)))

(declare-fun res!389582 () Bool)

(assert (=> b!606287 (=> res!389582 e!347133)))

(declare-fun lt!276767 () (_ BitVec 64))

(declare-fun lt!276769 () (_ BitVec 64))

(assert (=> b!606287 (= res!389582 (or (not (= (select (arr!17866 a!2986) j!136) lt!276769)) (not (= (select (arr!17866 a!2986) j!136) lt!276767))))))

(declare-fun e!347126 () Bool)

(assert (=> b!606287 e!347126))

(declare-fun res!389586 () Bool)

(assert (=> b!606287 (=> (not res!389586) (not e!347126))))

(assert (=> b!606287 (= res!389586 (= lt!276767 (select (arr!17866 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!606287 (= lt!276767 (select (store (arr!17866 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!606288 () Bool)

(declare-fun e!347121 () Bool)

(declare-fun e!347137 () Bool)

(assert (=> b!606288 (= e!347121 e!347137)))

(declare-fun res!389591 () Bool)

(assert (=> b!606288 (=> res!389591 e!347137)))

(assert (=> b!606288 (= res!389591 (or (bvsgt #b00000000000000000000000000000000 (size!18230 a!2986)) (bvsge (size!18230 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!606288 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-datatypes ((Unit!19306 0))(
  ( (Unit!19307) )
))
(declare-fun lt!276766 () Unit!19306)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37235 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19306)

(assert (=> b!606288 (= lt!276766 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276776 (select (arr!17866 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!347134 () Bool)

(assert (=> b!606288 e!347134))

(declare-fun res!389585 () Bool)

(assert (=> b!606288 (=> (not res!389585) (not e!347134))))

(assert (=> b!606288 (= res!389585 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) j!136))))

(declare-fun b!606289 () Bool)

(declare-fun e!347129 () Bool)

(declare-datatypes ((List!11960 0))(
  ( (Nil!11957) (Cons!11956 (h!13001 (_ BitVec 64)) (t!18196 List!11960)) )
))
(declare-fun contains!3006 (List!11960 (_ BitVec 64)) Bool)

(assert (=> b!606289 (= e!347129 (not (contains!3006 Nil!11957 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!606290 () Bool)

(assert (=> b!606290 (= e!347126 e!347132)))

(declare-fun res!389594 () Bool)

(assert (=> b!606290 (=> res!389594 e!347132)))

(assert (=> b!606290 (= res!389594 (or (not (= (select (arr!17866 a!2986) j!136) lt!276769)) (not (= (select (arr!17866 a!2986) j!136) lt!276767)) (bvsge j!136 index!984)))))

(declare-fun b!606291 () Bool)

(declare-fun e!347130 () Unit!19306)

(declare-fun Unit!19308 () Unit!19306)

(assert (=> b!606291 (= e!347130 Unit!19308)))

(declare-fun b!606292 () Bool)

(declare-fun res!389577 () Bool)

(declare-fun e!347131 () Bool)

(assert (=> b!606292 (=> (not res!389577) (not e!347131))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!606292 (= res!389577 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17866 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!606293 () Bool)

(declare-fun e!347124 () Bool)

(declare-fun e!347135 () Bool)

(assert (=> b!606293 (= e!347124 e!347135)))

(declare-fun res!389597 () Bool)

(assert (=> b!606293 (=> (not res!389597) (not e!347135))))

(declare-datatypes ((SeekEntryResult!6313 0))(
  ( (MissingZero!6313 (index!27523 (_ BitVec 32))) (Found!6313 (index!27524 (_ BitVec 32))) (Intermediate!6313 (undefined!7125 Bool) (index!27525 (_ BitVec 32)) (x!56358 (_ BitVec 32))) (Undefined!6313) (MissingVacant!6313 (index!27526 (_ BitVec 32))) )
))
(declare-fun lt!276775 () SeekEntryResult!6313)

(assert (=> b!606293 (= res!389597 (and (= lt!276775 (Found!6313 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17866 a!2986) index!984) (select (arr!17866 a!2986) j!136))) (not (= (select (arr!17866 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37235 (_ BitVec 32)) SeekEntryResult!6313)

(assert (=> b!606293 (= lt!276775 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17866 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!606294 () Bool)

(declare-fun res!389588 () Bool)

(declare-fun e!347125 () Bool)

(assert (=> b!606294 (=> (not res!389588) (not e!347125))))

(assert (=> b!606294 (= res!389588 (and (= (size!18230 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18230 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18230 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!606295 () Bool)

(declare-fun Unit!19309 () Unit!19306)

(assert (=> b!606295 (= e!347130 Unit!19309)))

(assert (=> b!606295 false))

(declare-fun b!606296 () Bool)

(assert (=> b!606296 (= e!347134 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) index!984))))

(declare-fun b!606297 () Bool)

(declare-fun res!389583 () Bool)

(assert (=> b!606297 (=> res!389583 e!347137)))

(declare-fun noDuplicate!308 (List!11960) Bool)

(assert (=> b!606297 (= res!389583 (not (noDuplicate!308 Nil!11957)))))

(declare-fun res!389579 () Bool)

(assert (=> start!55448 (=> (not res!389579) (not e!347125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55448 (= res!389579 (validMask!0 mask!3053))))

(assert (=> start!55448 e!347125))

(assert (=> start!55448 true))

(declare-fun array_inv!13640 (array!37235) Bool)

(assert (=> start!55448 (array_inv!13640 a!2986)))

(declare-fun b!606298 () Bool)

(declare-fun e!347136 () Bool)

(declare-fun lt!276772 () SeekEntryResult!6313)

(assert (=> b!606298 (= e!347136 (= lt!276775 lt!276772))))

(declare-fun b!606299 () Bool)

(declare-fun res!389589 () Bool)

(assert (=> b!606299 (=> (not res!389589) (not e!347131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37235 (_ BitVec 32)) Bool)

(assert (=> b!606299 (= res!389589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!606300 () Bool)

(assert (=> b!606300 (= e!347133 e!347121)))

(declare-fun res!389578 () Bool)

(assert (=> b!606300 (=> res!389578 e!347121)))

(assert (=> b!606300 (= res!389578 (bvsge index!984 j!136))))

(declare-fun lt!276777 () Unit!19306)

(declare-fun e!347128 () Unit!19306)

(assert (=> b!606300 (= lt!276777 e!347128)))

(declare-fun c!68722 () Bool)

(assert (=> b!606300 (= c!68722 (bvslt j!136 index!984))))

(declare-fun b!606301 () Bool)

(declare-fun res!389593 () Bool)

(assert (=> b!606301 (=> (not res!389593) (not e!347125))))

(assert (=> b!606301 (= res!389593 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!606302 () Bool)

(assert (=> b!606302 (= e!347125 e!347131)))

(declare-fun res!389590 () Bool)

(assert (=> b!606302 (=> (not res!389590) (not e!347131))))

(declare-fun lt!276768 () SeekEntryResult!6313)

(assert (=> b!606302 (= res!389590 (or (= lt!276768 (MissingZero!6313 i!1108)) (= lt!276768 (MissingVacant!6313 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37235 (_ BitVec 32)) SeekEntryResult!6313)

(assert (=> b!606302 (= lt!276768 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!606303 () Bool)

(assert (=> b!606303 (= e!347137 e!347129)))

(declare-fun res!389587 () Bool)

(assert (=> b!606303 (=> (not res!389587) (not e!347129))))

(assert (=> b!606303 (= res!389587 (not (contains!3006 Nil!11957 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!606304 () Bool)

(declare-fun Unit!19310 () Unit!19306)

(assert (=> b!606304 (= e!347128 Unit!19310)))

(declare-fun b!606305 () Bool)

(assert (=> b!606305 (= e!347131 e!347124)))

(declare-fun res!389580 () Bool)

(assert (=> b!606305 (=> (not res!389580) (not e!347124))))

(assert (=> b!606305 (= res!389580 (= (select (store (arr!17866 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606305 (= lt!276776 (array!37236 (store (arr!17866 a!2986) i!1108 k0!1786) (size!18230 a!2986)))))

(declare-fun b!606306 () Bool)

(declare-fun res!389581 () Bool)

(assert (=> b!606306 (=> (not res!389581) (not e!347125))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!606306 (= res!389581 (validKeyInArray!0 (select (arr!17866 a!2986) j!136)))))

(declare-fun b!606307 () Bool)

(declare-fun Unit!19311 () Unit!19306)

(assert (=> b!606307 (= e!347128 Unit!19311)))

(declare-fun lt!276774 () Unit!19306)

(assert (=> b!606307 (= lt!276774 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276776 (select (arr!17866 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!606307 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276771 () Unit!19306)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37235 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11960) Unit!19306)

(assert (=> b!606307 (= lt!276771 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11957))))

(declare-fun arrayNoDuplicates!0 (array!37235 (_ BitVec 32) List!11960) Bool)

(assert (=> b!606307 (arrayNoDuplicates!0 lt!276776 #b00000000000000000000000000000000 Nil!11957)))

(declare-fun lt!276770 () Unit!19306)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37235 (_ BitVec 32) (_ BitVec 32)) Unit!19306)

(assert (=> b!606307 (= lt!276770 (lemmaNoDuplicateFromThenFromBigger!0 lt!276776 #b00000000000000000000000000000000 j!136))))

(assert (=> b!606307 (arrayNoDuplicates!0 lt!276776 j!136 Nil!11957)))

(declare-fun lt!276764 () Unit!19306)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37235 (_ BitVec 64) (_ BitVec 32) List!11960) Unit!19306)

(assert (=> b!606307 (= lt!276764 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276776 (select (arr!17866 a!2986) j!136) j!136 Nil!11957))))

(assert (=> b!606307 false))

(declare-fun b!606308 () Bool)

(assert (=> b!606308 (= e!347135 (not e!347123))))

(declare-fun res!389576 () Bool)

(assert (=> b!606308 (=> res!389576 e!347123)))

(declare-fun lt!276762 () SeekEntryResult!6313)

(assert (=> b!606308 (= res!389576 (not (= lt!276762 (Found!6313 index!984))))))

(declare-fun lt!276765 () Unit!19306)

(assert (=> b!606308 (= lt!276765 e!347130)))

(declare-fun c!68723 () Bool)

(assert (=> b!606308 (= c!68723 (= lt!276762 Undefined!6313))))

(assert (=> b!606308 (= lt!276762 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276769 lt!276776 mask!3053))))

(assert (=> b!606308 e!347136))

(declare-fun res!389595 () Bool)

(assert (=> b!606308 (=> (not res!389595) (not e!347136))))

(declare-fun lt!276773 () (_ BitVec 32))

(assert (=> b!606308 (= res!389595 (= lt!276772 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276773 vacantSpotIndex!68 lt!276769 lt!276776 mask!3053)))))

(assert (=> b!606308 (= lt!276772 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276773 vacantSpotIndex!68 (select (arr!17866 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!606308 (= lt!276769 (select (store (arr!17866 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!276763 () Unit!19306)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37235 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19306)

(assert (=> b!606308 (= lt!276763 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276773 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!606308 (= lt!276773 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!606309 () Bool)

(declare-fun res!389596 () Bool)

(assert (=> b!606309 (=> (not res!389596) (not e!347131))))

(assert (=> b!606309 (= res!389596 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11957))))

(declare-fun b!606310 () Bool)

(assert (=> b!606310 (= e!347127 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) index!984))))

(declare-fun b!606311 () Bool)

(declare-fun res!389592 () Bool)

(assert (=> b!606311 (=> (not res!389592) (not e!347125))))

(assert (=> b!606311 (= res!389592 (validKeyInArray!0 k0!1786))))

(assert (= (and start!55448 res!389579) b!606294))

(assert (= (and b!606294 res!389588) b!606306))

(assert (= (and b!606306 res!389581) b!606311))

(assert (= (and b!606311 res!389592) b!606301))

(assert (= (and b!606301 res!389593) b!606302))

(assert (= (and b!606302 res!389590) b!606299))

(assert (= (and b!606299 res!389589) b!606309))

(assert (= (and b!606309 res!389596) b!606292))

(assert (= (and b!606292 res!389577) b!606305))

(assert (= (and b!606305 res!389580) b!606293))

(assert (= (and b!606293 res!389597) b!606308))

(assert (= (and b!606308 res!389595) b!606298))

(assert (= (and b!606308 c!68723) b!606295))

(assert (= (and b!606308 (not c!68723)) b!606291))

(assert (= (and b!606308 (not res!389576)) b!606287))

(assert (= (and b!606287 res!389586) b!606290))

(assert (= (and b!606290 (not res!389594)) b!606286))

(assert (= (and b!606286 res!389584) b!606310))

(assert (= (and b!606287 (not res!389582)) b!606300))

(assert (= (and b!606300 c!68722) b!606307))

(assert (= (and b!606300 (not c!68722)) b!606304))

(assert (= (and b!606300 (not res!389578)) b!606288))

(assert (= (and b!606288 res!389585) b!606296))

(assert (= (and b!606288 (not res!389591)) b!606297))

(assert (= (and b!606297 (not res!389583)) b!606303))

(assert (= (and b!606303 res!389587) b!606289))

(declare-fun m!583141 () Bool)

(assert (=> b!606297 m!583141))

(declare-fun m!583143 () Bool)

(assert (=> b!606292 m!583143))

(declare-fun m!583145 () Bool)

(assert (=> b!606287 m!583145))

(declare-fun m!583147 () Bool)

(assert (=> b!606287 m!583147))

(declare-fun m!583149 () Bool)

(assert (=> b!606287 m!583149))

(assert (=> b!606286 m!583145))

(assert (=> b!606286 m!583145))

(declare-fun m!583151 () Bool)

(assert (=> b!606286 m!583151))

(assert (=> b!606306 m!583145))

(assert (=> b!606306 m!583145))

(declare-fun m!583153 () Bool)

(assert (=> b!606306 m!583153))

(declare-fun m!583155 () Bool)

(assert (=> b!606309 m!583155))

(assert (=> b!606288 m!583145))

(assert (=> b!606288 m!583145))

(declare-fun m!583157 () Bool)

(assert (=> b!606288 m!583157))

(assert (=> b!606288 m!583145))

(declare-fun m!583159 () Bool)

(assert (=> b!606288 m!583159))

(assert (=> b!606288 m!583145))

(assert (=> b!606288 m!583151))

(declare-fun m!583161 () Bool)

(assert (=> b!606289 m!583161))

(declare-fun m!583163 () Bool)

(assert (=> b!606302 m!583163))

(declare-fun m!583165 () Bool)

(assert (=> b!606303 m!583165))

(declare-fun m!583167 () Bool)

(assert (=> start!55448 m!583167))

(declare-fun m!583169 () Bool)

(assert (=> start!55448 m!583169))

(declare-fun m!583171 () Bool)

(assert (=> b!606311 m!583171))

(declare-fun m!583173 () Bool)

(assert (=> b!606301 m!583173))

(assert (=> b!606290 m!583145))

(assert (=> b!606307 m!583145))

(declare-fun m!583175 () Bool)

(assert (=> b!606307 m!583175))

(assert (=> b!606307 m!583145))

(declare-fun m!583177 () Bool)

(assert (=> b!606307 m!583177))

(declare-fun m!583179 () Bool)

(assert (=> b!606307 m!583179))

(assert (=> b!606307 m!583145))

(declare-fun m!583181 () Bool)

(assert (=> b!606307 m!583181))

(assert (=> b!606307 m!583145))

(declare-fun m!583183 () Bool)

(assert (=> b!606307 m!583183))

(declare-fun m!583185 () Bool)

(assert (=> b!606307 m!583185))

(declare-fun m!583187 () Bool)

(assert (=> b!606307 m!583187))

(assert (=> b!606296 m!583145))

(assert (=> b!606296 m!583145))

(declare-fun m!583189 () Bool)

(assert (=> b!606296 m!583189))

(assert (=> b!606305 m!583147))

(declare-fun m!583191 () Bool)

(assert (=> b!606305 m!583191))

(declare-fun m!583193 () Bool)

(assert (=> b!606299 m!583193))

(assert (=> b!606310 m!583145))

(assert (=> b!606310 m!583145))

(assert (=> b!606310 m!583189))

(declare-fun m!583195 () Bool)

(assert (=> b!606308 m!583195))

(declare-fun m!583197 () Bool)

(assert (=> b!606308 m!583197))

(declare-fun m!583199 () Bool)

(assert (=> b!606308 m!583199))

(assert (=> b!606308 m!583147))

(declare-fun m!583201 () Bool)

(assert (=> b!606308 m!583201))

(declare-fun m!583203 () Bool)

(assert (=> b!606308 m!583203))

(assert (=> b!606308 m!583145))

(assert (=> b!606308 m!583145))

(declare-fun m!583205 () Bool)

(assert (=> b!606308 m!583205))

(declare-fun m!583207 () Bool)

(assert (=> b!606293 m!583207))

(assert (=> b!606293 m!583145))

(assert (=> b!606293 m!583145))

(declare-fun m!583209 () Bool)

(assert (=> b!606293 m!583209))

(check-sat (not b!606286) (not b!606302) (not b!606311) (not b!606303) (not b!606308) (not b!606296) (not b!606307) (not b!606301) (not b!606297) (not start!55448) (not b!606310) (not b!606288) (not b!606299) (not b!606309) (not b!606289) (not b!606306) (not b!606293))
(check-sat)
(get-model)

(declare-fun b!606402 () Bool)

(declare-fun e!347196 () SeekEntryResult!6313)

(declare-fun e!347195 () SeekEntryResult!6313)

(assert (=> b!606402 (= e!347196 e!347195)))

(declare-fun lt!276834 () (_ BitVec 64))

(declare-fun lt!276833 () SeekEntryResult!6313)

(assert (=> b!606402 (= lt!276834 (select (arr!17866 a!2986) (index!27525 lt!276833)))))

(declare-fun c!68737 () Bool)

(assert (=> b!606402 (= c!68737 (= lt!276834 k0!1786))))

(declare-fun b!606403 () Bool)

(assert (=> b!606403 (= e!347195 (Found!6313 (index!27525 lt!276833)))))

(declare-fun d!87767 () Bool)

(declare-fun lt!276832 () SeekEntryResult!6313)

(get-info :version)

(assert (=> d!87767 (and (or ((_ is Undefined!6313) lt!276832) (not ((_ is Found!6313) lt!276832)) (and (bvsge (index!27524 lt!276832) #b00000000000000000000000000000000) (bvslt (index!27524 lt!276832) (size!18230 a!2986)))) (or ((_ is Undefined!6313) lt!276832) ((_ is Found!6313) lt!276832) (not ((_ is MissingZero!6313) lt!276832)) (and (bvsge (index!27523 lt!276832) #b00000000000000000000000000000000) (bvslt (index!27523 lt!276832) (size!18230 a!2986)))) (or ((_ is Undefined!6313) lt!276832) ((_ is Found!6313) lt!276832) ((_ is MissingZero!6313) lt!276832) (not ((_ is MissingVacant!6313) lt!276832)) (and (bvsge (index!27526 lt!276832) #b00000000000000000000000000000000) (bvslt (index!27526 lt!276832) (size!18230 a!2986)))) (or ((_ is Undefined!6313) lt!276832) (ite ((_ is Found!6313) lt!276832) (= (select (arr!17866 a!2986) (index!27524 lt!276832)) k0!1786) (ite ((_ is MissingZero!6313) lt!276832) (= (select (arr!17866 a!2986) (index!27523 lt!276832)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6313) lt!276832) (= (select (arr!17866 a!2986) (index!27526 lt!276832)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!87767 (= lt!276832 e!347196)))

(declare-fun c!68738 () Bool)

(assert (=> d!87767 (= c!68738 (and ((_ is Intermediate!6313) lt!276833) (undefined!7125 lt!276833)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37235 (_ BitVec 32)) SeekEntryResult!6313)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87767 (= lt!276833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!87767 (validMask!0 mask!3053)))

(assert (=> d!87767 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!276832)))

(declare-fun b!606404 () Bool)

(declare-fun e!347197 () SeekEntryResult!6313)

(assert (=> b!606404 (= e!347197 (seekKeyOrZeroReturnVacant!0 (x!56358 lt!276833) (index!27525 lt!276833) (index!27525 lt!276833) k0!1786 a!2986 mask!3053))))

(declare-fun b!606405 () Bool)

(declare-fun c!68736 () Bool)

(assert (=> b!606405 (= c!68736 (= lt!276834 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606405 (= e!347195 e!347197)))

(declare-fun b!606406 () Bool)

(assert (=> b!606406 (= e!347197 (MissingZero!6313 (index!27525 lt!276833)))))

(declare-fun b!606407 () Bool)

(assert (=> b!606407 (= e!347196 Undefined!6313)))

(assert (= (and d!87767 c!68738) b!606407))

(assert (= (and d!87767 (not c!68738)) b!606402))

(assert (= (and b!606402 c!68737) b!606403))

(assert (= (and b!606402 (not c!68737)) b!606405))

(assert (= (and b!606405 c!68736) b!606406))

(assert (= (and b!606405 (not c!68736)) b!606404))

(declare-fun m!583281 () Bool)

(assert (=> b!606402 m!583281))

(assert (=> d!87767 m!583167))

(declare-fun m!583283 () Bool)

(assert (=> d!87767 m!583283))

(declare-fun m!583285 () Bool)

(assert (=> d!87767 m!583285))

(declare-fun m!583287 () Bool)

(assert (=> d!87767 m!583287))

(declare-fun m!583289 () Bool)

(assert (=> d!87767 m!583289))

(assert (=> d!87767 m!583287))

(declare-fun m!583291 () Bool)

(assert (=> d!87767 m!583291))

(declare-fun m!583293 () Bool)

(assert (=> b!606404 m!583293))

(assert (=> b!606302 d!87767))

(declare-fun b!606420 () Bool)

(declare-fun e!347206 () SeekEntryResult!6313)

(assert (=> b!606420 (= e!347206 (Found!6313 index!984))))

(declare-fun b!606421 () Bool)

(declare-fun e!347205 () SeekEntryResult!6313)

(assert (=> b!606421 (= e!347205 (MissingVacant!6313 vacantSpotIndex!68))))

(declare-fun b!606422 () Bool)

(assert (=> b!606422 (= e!347205 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17866 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!606423 () Bool)

(declare-fun e!347204 () SeekEntryResult!6313)

(assert (=> b!606423 (= e!347204 Undefined!6313)))

(declare-fun d!87769 () Bool)

(declare-fun lt!276839 () SeekEntryResult!6313)

(assert (=> d!87769 (and (or ((_ is Undefined!6313) lt!276839) (not ((_ is Found!6313) lt!276839)) (and (bvsge (index!27524 lt!276839) #b00000000000000000000000000000000) (bvslt (index!27524 lt!276839) (size!18230 a!2986)))) (or ((_ is Undefined!6313) lt!276839) ((_ is Found!6313) lt!276839) (not ((_ is MissingVacant!6313) lt!276839)) (not (= (index!27526 lt!276839) vacantSpotIndex!68)) (and (bvsge (index!27526 lt!276839) #b00000000000000000000000000000000) (bvslt (index!27526 lt!276839) (size!18230 a!2986)))) (or ((_ is Undefined!6313) lt!276839) (ite ((_ is Found!6313) lt!276839) (= (select (arr!17866 a!2986) (index!27524 lt!276839)) (select (arr!17866 a!2986) j!136)) (and ((_ is MissingVacant!6313) lt!276839) (= (index!27526 lt!276839) vacantSpotIndex!68) (= (select (arr!17866 a!2986) (index!27526 lt!276839)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87769 (= lt!276839 e!347204)))

(declare-fun c!68745 () Bool)

(assert (=> d!87769 (= c!68745 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!276840 () (_ BitVec 64))

(assert (=> d!87769 (= lt!276840 (select (arr!17866 a!2986) index!984))))

(assert (=> d!87769 (validMask!0 mask!3053)))

(assert (=> d!87769 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17866 a!2986) j!136) a!2986 mask!3053) lt!276839)))

(declare-fun b!606424 () Bool)

(declare-fun c!68747 () Bool)

(assert (=> b!606424 (= c!68747 (= lt!276840 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606424 (= e!347206 e!347205)))

(declare-fun b!606425 () Bool)

(assert (=> b!606425 (= e!347204 e!347206)))

(declare-fun c!68746 () Bool)

(assert (=> b!606425 (= c!68746 (= lt!276840 (select (arr!17866 a!2986) j!136)))))

(assert (= (and d!87769 c!68745) b!606423))

(assert (= (and d!87769 (not c!68745)) b!606425))

(assert (= (and b!606425 c!68746) b!606420))

(assert (= (and b!606425 (not c!68746)) b!606424))

(assert (= (and b!606424 c!68747) b!606421))

(assert (= (and b!606424 (not c!68747)) b!606422))

(assert (=> b!606422 m!583195))

(assert (=> b!606422 m!583195))

(assert (=> b!606422 m!583145))

(declare-fun m!583295 () Bool)

(assert (=> b!606422 m!583295))

(declare-fun m!583297 () Bool)

(assert (=> d!87769 m!583297))

(declare-fun m!583299 () Bool)

(assert (=> d!87769 m!583299))

(assert (=> d!87769 m!583207))

(assert (=> d!87769 m!583167))

(assert (=> b!606293 d!87769))

(declare-fun d!87771 () Bool)

(declare-fun lt!276843 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!238 (List!11960) (InoxSet (_ BitVec 64)))

(assert (=> d!87771 (= lt!276843 (select (content!238 Nil!11957) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!347211 () Bool)

(assert (=> d!87771 (= lt!276843 e!347211)))

(declare-fun res!389668 () Bool)

(assert (=> d!87771 (=> (not res!389668) (not e!347211))))

(assert (=> d!87771 (= res!389668 ((_ is Cons!11956) Nil!11957))))

(assert (=> d!87771 (= (contains!3006 Nil!11957 #b0000000000000000000000000000000000000000000000000000000000000000) lt!276843)))

(declare-fun b!606430 () Bool)

(declare-fun e!347212 () Bool)

(assert (=> b!606430 (= e!347211 e!347212)))

(declare-fun res!389669 () Bool)

(assert (=> b!606430 (=> res!389669 e!347212)))

(assert (=> b!606430 (= res!389669 (= (h!13001 Nil!11957) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!606431 () Bool)

(assert (=> b!606431 (= e!347212 (contains!3006 (t!18196 Nil!11957) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!87771 res!389668) b!606430))

(assert (= (and b!606430 (not res!389669)) b!606431))

(declare-fun m!583301 () Bool)

(assert (=> d!87771 m!583301))

(declare-fun m!583303 () Bool)

(assert (=> d!87771 m!583303))

(declare-fun m!583305 () Bool)

(assert (=> b!606431 m!583305))

(assert (=> b!606303 d!87771))

(declare-fun d!87773 () Bool)

(assert (=> d!87773 (= (validKeyInArray!0 (select (arr!17866 a!2986) j!136)) (and (not (= (select (arr!17866 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17866 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!606306 d!87773))

(declare-fun d!87775 () Bool)

(declare-fun res!389674 () Bool)

(declare-fun e!347217 () Bool)

(assert (=> d!87775 (=> res!389674 e!347217)))

(assert (=> d!87775 (= res!389674 (= (select (arr!17866 lt!276776) j!136) (select (arr!17866 a!2986) j!136)))))

(assert (=> d!87775 (= (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) j!136) e!347217)))

(declare-fun b!606436 () Bool)

(declare-fun e!347218 () Bool)

(assert (=> b!606436 (= e!347217 e!347218)))

(declare-fun res!389675 () Bool)

(assert (=> b!606436 (=> (not res!389675) (not e!347218))))

(assert (=> b!606436 (= res!389675 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18230 lt!276776)))))

(declare-fun b!606437 () Bool)

(assert (=> b!606437 (= e!347218 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87775 (not res!389674)) b!606436))

(assert (= (and b!606436 res!389675) b!606437))

(declare-fun m!583307 () Bool)

(assert (=> d!87775 m!583307))

(assert (=> b!606437 m!583145))

(declare-fun m!583309 () Bool)

(assert (=> b!606437 m!583309))

(assert (=> b!606286 d!87775))

(declare-fun d!87777 () Bool)

(assert (=> d!87777 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55448 d!87777))

(declare-fun d!87781 () Bool)

(assert (=> d!87781 (= (array_inv!13640 a!2986) (bvsge (size!18230 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55448 d!87781))

(declare-fun d!87783 () Bool)

(declare-fun res!389686 () Bool)

(declare-fun e!347229 () Bool)

(assert (=> d!87783 (=> res!389686 e!347229)))

(assert (=> d!87783 (= res!389686 ((_ is Nil!11957) Nil!11957))))

(assert (=> d!87783 (= (noDuplicate!308 Nil!11957) e!347229)))

(declare-fun b!606448 () Bool)

(declare-fun e!347230 () Bool)

(assert (=> b!606448 (= e!347229 e!347230)))

(declare-fun res!389687 () Bool)

(assert (=> b!606448 (=> (not res!389687) (not e!347230))))

(assert (=> b!606448 (= res!389687 (not (contains!3006 (t!18196 Nil!11957) (h!13001 Nil!11957))))))

(declare-fun b!606449 () Bool)

(assert (=> b!606449 (= e!347230 (noDuplicate!308 (t!18196 Nil!11957)))))

(assert (= (and d!87783 (not res!389686)) b!606448))

(assert (= (and b!606448 res!389687) b!606449))

(declare-fun m!583315 () Bool)

(assert (=> b!606448 m!583315))

(declare-fun m!583317 () Bool)

(assert (=> b!606449 m!583317))

(assert (=> b!606297 d!87783))

(declare-fun d!87789 () Bool)

(declare-fun res!389688 () Bool)

(declare-fun e!347231 () Bool)

(assert (=> d!87789 (=> res!389688 e!347231)))

(assert (=> d!87789 (= res!389688 (= (select (arr!17866 lt!276776) index!984) (select (arr!17866 a!2986) j!136)))))

(assert (=> d!87789 (= (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) index!984) e!347231)))

(declare-fun b!606450 () Bool)

(declare-fun e!347232 () Bool)

(assert (=> b!606450 (= e!347231 e!347232)))

(declare-fun res!389689 () Bool)

(assert (=> b!606450 (=> (not res!389689) (not e!347232))))

(assert (=> b!606450 (= res!389689 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18230 lt!276776)))))

(declare-fun b!606451 () Bool)

(assert (=> b!606451 (= e!347232 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87789 (not res!389688)) b!606450))

(assert (= (and b!606450 res!389689) b!606451))

(declare-fun m!583319 () Bool)

(assert (=> d!87789 m!583319))

(assert (=> b!606451 m!583145))

(declare-fun m!583321 () Bool)

(assert (=> b!606451 m!583321))

(assert (=> b!606296 d!87789))

(declare-fun d!87791 () Bool)

(assert (=> d!87791 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18230 lt!276776)) (not (= (select (arr!17866 lt!276776) j!136) (select (arr!17866 a!2986) j!136))))))

(declare-fun lt!276846 () Unit!19306)

(declare-fun choose!21 (array!37235 (_ BitVec 64) (_ BitVec 32) List!11960) Unit!19306)

(assert (=> d!87791 (= lt!276846 (choose!21 lt!276776 (select (arr!17866 a!2986) j!136) j!136 Nil!11957))))

(assert (=> d!87791 (bvslt (size!18230 lt!276776) #b01111111111111111111111111111111)))

(assert (=> d!87791 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276776 (select (arr!17866 a!2986) j!136) j!136 Nil!11957) lt!276846)))

(declare-fun bs!18551 () Bool)

(assert (= bs!18551 d!87791))

(assert (=> bs!18551 m!583307))

(assert (=> bs!18551 m!583145))

(declare-fun m!583327 () Bool)

(assert (=> bs!18551 m!583327))

(assert (=> b!606307 d!87791))

(declare-fun b!606468 () Bool)

(declare-fun e!347250 () Bool)

(assert (=> b!606468 (= e!347250 (contains!3006 Nil!11957 (select (arr!17866 lt!276776) j!136)))))

(declare-fun b!606469 () Bool)

(declare-fun e!347248 () Bool)

(declare-fun e!347249 () Bool)

(assert (=> b!606469 (= e!347248 e!347249)))

(declare-fun res!389702 () Bool)

(assert (=> b!606469 (=> (not res!389702) (not e!347249))))

(assert (=> b!606469 (= res!389702 (not e!347250))))

(declare-fun res!389703 () Bool)

(assert (=> b!606469 (=> (not res!389703) (not e!347250))))

(assert (=> b!606469 (= res!389703 (validKeyInArray!0 (select (arr!17866 lt!276776) j!136)))))

(declare-fun b!606470 () Bool)

(declare-fun e!347247 () Bool)

(declare-fun call!33083 () Bool)

(assert (=> b!606470 (= e!347247 call!33083)))

(declare-fun b!606471 () Bool)

(assert (=> b!606471 (= e!347247 call!33083)))

(declare-fun d!87795 () Bool)

(declare-fun res!389704 () Bool)

(assert (=> d!87795 (=> res!389704 e!347248)))

(assert (=> d!87795 (= res!389704 (bvsge j!136 (size!18230 lt!276776)))))

(assert (=> d!87795 (= (arrayNoDuplicates!0 lt!276776 j!136 Nil!11957) e!347248)))

(declare-fun b!606472 () Bool)

(assert (=> b!606472 (= e!347249 e!347247)))

(declare-fun c!68750 () Bool)

(assert (=> b!606472 (= c!68750 (validKeyInArray!0 (select (arr!17866 lt!276776) j!136)))))

(declare-fun bm!33080 () Bool)

(assert (=> bm!33080 (= call!33083 (arrayNoDuplicates!0 lt!276776 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68750 (Cons!11956 (select (arr!17866 lt!276776) j!136) Nil!11957) Nil!11957)))))

(assert (= (and d!87795 (not res!389704)) b!606469))

(assert (= (and b!606469 res!389703) b!606468))

(assert (= (and b!606469 res!389702) b!606472))

(assert (= (and b!606472 c!68750) b!606470))

(assert (= (and b!606472 (not c!68750)) b!606471))

(assert (= (or b!606470 b!606471) bm!33080))

(assert (=> b!606468 m!583307))

(assert (=> b!606468 m!583307))

(declare-fun m!583329 () Bool)

(assert (=> b!606468 m!583329))

(assert (=> b!606469 m!583307))

(assert (=> b!606469 m!583307))

(declare-fun m!583331 () Bool)

(assert (=> b!606469 m!583331))

(assert (=> b!606472 m!583307))

(assert (=> b!606472 m!583307))

(assert (=> b!606472 m!583331))

(assert (=> bm!33080 m!583307))

(declare-fun m!583333 () Bool)

(assert (=> bm!33080 m!583333))

(assert (=> b!606307 d!87795))

(declare-fun d!87797 () Bool)

(declare-fun res!389705 () Bool)

(declare-fun e!347257 () Bool)

(assert (=> d!87797 (=> res!389705 e!347257)))

(assert (=> d!87797 (= res!389705 (= (select (arr!17866 lt!276776) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17866 a!2986) j!136)))))

(assert (=> d!87797 (= (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!347257)))

(declare-fun b!606485 () Bool)

(declare-fun e!347258 () Bool)

(assert (=> b!606485 (= e!347257 e!347258)))

(declare-fun res!389706 () Bool)

(assert (=> b!606485 (=> (not res!389706) (not e!347258))))

(assert (=> b!606485 (= res!389706 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18230 lt!276776)))))

(declare-fun b!606486 () Bool)

(assert (=> b!606486 (= e!347258 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87797 (not res!389705)) b!606485))

(assert (= (and b!606485 res!389706) b!606486))

(declare-fun m!583335 () Bool)

(assert (=> d!87797 m!583335))

(assert (=> b!606486 m!583145))

(declare-fun m!583337 () Bool)

(assert (=> b!606486 m!583337))

(assert (=> b!606307 d!87797))

(declare-fun d!87799 () Bool)

(assert (=> d!87799 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276857 () Unit!19306)

(declare-fun choose!114 (array!37235 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19306)

(assert (=> d!87799 (= lt!276857 (choose!114 lt!276776 (select (arr!17866 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87799 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87799 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276776 (select (arr!17866 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!276857)))

(declare-fun bs!18552 () Bool)

(assert (= bs!18552 d!87799))

(assert (=> bs!18552 m!583145))

(assert (=> bs!18552 m!583183))

(assert (=> bs!18552 m!583145))

(declare-fun m!583339 () Bool)

(assert (=> bs!18552 m!583339))

(assert (=> b!606307 d!87799))

(declare-fun d!87801 () Bool)

(declare-fun e!347279 () Bool)

(assert (=> d!87801 e!347279))

(declare-fun res!389715 () Bool)

(assert (=> d!87801 (=> (not res!389715) (not e!347279))))

(assert (=> d!87801 (= res!389715 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18230 a!2986))))))

(declare-fun lt!276864 () Unit!19306)

(declare-fun choose!41 (array!37235 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11960) Unit!19306)

(assert (=> d!87801 (= lt!276864 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11957))))

(assert (=> d!87801 (bvslt (size!18230 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87801 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11957) lt!276864)))

(declare-fun b!606519 () Bool)

(assert (=> b!606519 (= e!347279 (arrayNoDuplicates!0 (array!37236 (store (arr!17866 a!2986) i!1108 k0!1786) (size!18230 a!2986)) #b00000000000000000000000000000000 Nil!11957))))

(assert (= (and d!87801 res!389715) b!606519))

(declare-fun m!583359 () Bool)

(assert (=> d!87801 m!583359))

(assert (=> b!606519 m!583147))

(declare-fun m!583361 () Bool)

(assert (=> b!606519 m!583361))

(assert (=> b!606307 d!87801))

(declare-fun b!606520 () Bool)

(declare-fun e!347283 () Bool)

(assert (=> b!606520 (= e!347283 (contains!3006 Nil!11957 (select (arr!17866 lt!276776) #b00000000000000000000000000000000)))))

(declare-fun b!606521 () Bool)

(declare-fun e!347281 () Bool)

(declare-fun e!347282 () Bool)

(assert (=> b!606521 (= e!347281 e!347282)))

(declare-fun res!389716 () Bool)

(assert (=> b!606521 (=> (not res!389716) (not e!347282))))

(assert (=> b!606521 (= res!389716 (not e!347283))))

(declare-fun res!389717 () Bool)

(assert (=> b!606521 (=> (not res!389717) (not e!347283))))

(assert (=> b!606521 (= res!389717 (validKeyInArray!0 (select (arr!17866 lt!276776) #b00000000000000000000000000000000)))))

(declare-fun b!606522 () Bool)

(declare-fun e!347280 () Bool)

(declare-fun call!33084 () Bool)

(assert (=> b!606522 (= e!347280 call!33084)))

(declare-fun b!606523 () Bool)

(assert (=> b!606523 (= e!347280 call!33084)))

(declare-fun d!87809 () Bool)

(declare-fun res!389718 () Bool)

(assert (=> d!87809 (=> res!389718 e!347281)))

(assert (=> d!87809 (= res!389718 (bvsge #b00000000000000000000000000000000 (size!18230 lt!276776)))))

(assert (=> d!87809 (= (arrayNoDuplicates!0 lt!276776 #b00000000000000000000000000000000 Nil!11957) e!347281)))

(declare-fun b!606524 () Bool)

(assert (=> b!606524 (= e!347282 e!347280)))

(declare-fun c!68769 () Bool)

(assert (=> b!606524 (= c!68769 (validKeyInArray!0 (select (arr!17866 lt!276776) #b00000000000000000000000000000000)))))

(declare-fun bm!33081 () Bool)

(assert (=> bm!33081 (= call!33084 (arrayNoDuplicates!0 lt!276776 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68769 (Cons!11956 (select (arr!17866 lt!276776) #b00000000000000000000000000000000) Nil!11957) Nil!11957)))))

(assert (= (and d!87809 (not res!389718)) b!606521))

(assert (= (and b!606521 res!389717) b!606520))

(assert (= (and b!606521 res!389716) b!606524))

(assert (= (and b!606524 c!68769) b!606522))

(assert (= (and b!606524 (not c!68769)) b!606523))

(assert (= (or b!606522 b!606523) bm!33081))

(declare-fun m!583363 () Bool)

(assert (=> b!606520 m!583363))

(assert (=> b!606520 m!583363))

(declare-fun m!583365 () Bool)

(assert (=> b!606520 m!583365))

(assert (=> b!606521 m!583363))

(assert (=> b!606521 m!583363))

(declare-fun m!583367 () Bool)

(assert (=> b!606521 m!583367))

(assert (=> b!606524 m!583363))

(assert (=> b!606524 m!583363))

(assert (=> b!606524 m!583367))

(assert (=> bm!33081 m!583363))

(declare-fun m!583369 () Bool)

(assert (=> bm!33081 m!583369))

(assert (=> b!606307 d!87809))

(declare-fun d!87811 () Bool)

(assert (=> d!87811 (arrayNoDuplicates!0 lt!276776 j!136 Nil!11957)))

(declare-fun lt!276872 () Unit!19306)

(declare-fun choose!39 (array!37235 (_ BitVec 32) (_ BitVec 32)) Unit!19306)

(assert (=> d!87811 (= lt!276872 (choose!39 lt!276776 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87811 (bvslt (size!18230 lt!276776) #b01111111111111111111111111111111)))

(assert (=> d!87811 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!276776 #b00000000000000000000000000000000 j!136) lt!276872)))

(declare-fun bs!18554 () Bool)

(assert (= bs!18554 d!87811))

(assert (=> bs!18554 m!583179))

(declare-fun m!583383 () Bool)

(assert (=> bs!18554 m!583383))

(assert (=> b!606307 d!87811))

(declare-fun b!606541 () Bool)

(declare-fun e!347298 () Bool)

(assert (=> b!606541 (= e!347298 (contains!3006 Nil!11957 (select (arr!17866 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!606542 () Bool)

(declare-fun e!347296 () Bool)

(declare-fun e!347297 () Bool)

(assert (=> b!606542 (= e!347296 e!347297)))

(declare-fun res!389725 () Bool)

(assert (=> b!606542 (=> (not res!389725) (not e!347297))))

(assert (=> b!606542 (= res!389725 (not e!347298))))

(declare-fun res!389726 () Bool)

(assert (=> b!606542 (=> (not res!389726) (not e!347298))))

(assert (=> b!606542 (= res!389726 (validKeyInArray!0 (select (arr!17866 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!606543 () Bool)

(declare-fun e!347295 () Bool)

(declare-fun call!33087 () Bool)

(assert (=> b!606543 (= e!347295 call!33087)))

(declare-fun b!606544 () Bool)

(assert (=> b!606544 (= e!347295 call!33087)))

(declare-fun d!87817 () Bool)

(declare-fun res!389727 () Bool)

(assert (=> d!87817 (=> res!389727 e!347296)))

(assert (=> d!87817 (= res!389727 (bvsge #b00000000000000000000000000000000 (size!18230 a!2986)))))

(assert (=> d!87817 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11957) e!347296)))

(declare-fun b!606545 () Bool)

(assert (=> b!606545 (= e!347297 e!347295)))

(declare-fun c!68775 () Bool)

(assert (=> b!606545 (= c!68775 (validKeyInArray!0 (select (arr!17866 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33084 () Bool)

(assert (=> bm!33084 (= call!33087 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68775 (Cons!11956 (select (arr!17866 a!2986) #b00000000000000000000000000000000) Nil!11957) Nil!11957)))))

(assert (= (and d!87817 (not res!389727)) b!606542))

(assert (= (and b!606542 res!389726) b!606541))

(assert (= (and b!606542 res!389725) b!606545))

(assert (= (and b!606545 c!68775) b!606543))

(assert (= (and b!606545 (not c!68775)) b!606544))

(assert (= (or b!606543 b!606544) bm!33084))

(declare-fun m!583385 () Bool)

(assert (=> b!606541 m!583385))

(assert (=> b!606541 m!583385))

(declare-fun m!583387 () Bool)

(assert (=> b!606541 m!583387))

(assert (=> b!606542 m!583385))

(assert (=> b!606542 m!583385))

(declare-fun m!583389 () Bool)

(assert (=> b!606542 m!583389))

(assert (=> b!606545 m!583385))

(assert (=> b!606545 m!583385))

(assert (=> b!606545 m!583389))

(assert (=> bm!33084 m!583385))

(declare-fun m!583391 () Bool)

(assert (=> bm!33084 m!583391))

(assert (=> b!606309 d!87817))

(declare-fun d!87819 () Bool)

(declare-fun e!347325 () Bool)

(assert (=> d!87819 e!347325))

(declare-fun res!389750 () Bool)

(assert (=> d!87819 (=> (not res!389750) (not e!347325))))

(assert (=> d!87819 (= res!389750 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18230 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18230 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18230 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18230 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18230 a!2986))))))

(declare-fun lt!276883 () Unit!19306)

(declare-fun choose!9 (array!37235 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19306)

(assert (=> d!87819 (= lt!276883 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276773 vacantSpotIndex!68 mask!3053))))

(assert (=> d!87819 (validMask!0 mask!3053)))

(assert (=> d!87819 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276773 vacantSpotIndex!68 mask!3053) lt!276883)))

(declare-fun b!606576 () Bool)

(assert (=> b!606576 (= e!347325 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276773 vacantSpotIndex!68 (select (arr!17866 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276773 vacantSpotIndex!68 (select (store (arr!17866 a!2986) i!1108 k0!1786) j!136) (array!37236 (store (arr!17866 a!2986) i!1108 k0!1786) (size!18230 a!2986)) mask!3053)))))

(assert (= (and d!87819 res!389750) b!606576))

(declare-fun m!583425 () Bool)

(assert (=> d!87819 m!583425))

(assert (=> d!87819 m!583167))

(assert (=> b!606576 m!583197))

(assert (=> b!606576 m!583145))

(assert (=> b!606576 m!583205))

(assert (=> b!606576 m!583145))

(assert (=> b!606576 m!583197))

(declare-fun m!583427 () Bool)

(assert (=> b!606576 m!583427))

(assert (=> b!606576 m!583147))

(assert (=> b!606308 d!87819))

(declare-fun d!87833 () Bool)

(declare-fun lt!276892 () (_ BitVec 32))

(assert (=> d!87833 (and (bvsge lt!276892 #b00000000000000000000000000000000) (bvslt lt!276892 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87833 (= lt!276892 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87833 (validMask!0 mask!3053)))

(assert (=> d!87833 (= (nextIndex!0 index!984 x!910 mask!3053) lt!276892)))

(declare-fun bs!18555 () Bool)

(assert (= bs!18555 d!87833))

(declare-fun m!583433 () Bool)

(assert (=> bs!18555 m!583433))

(assert (=> bs!18555 m!583167))

(assert (=> b!606308 d!87833))

(declare-fun b!606587 () Bool)

(declare-fun e!347336 () SeekEntryResult!6313)

(assert (=> b!606587 (= e!347336 (Found!6313 lt!276773))))

(declare-fun b!606588 () Bool)

(declare-fun e!347335 () SeekEntryResult!6313)

(assert (=> b!606588 (= e!347335 (MissingVacant!6313 vacantSpotIndex!68))))

(declare-fun b!606589 () Bool)

(assert (=> b!606589 (= e!347335 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276773 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!276769 lt!276776 mask!3053))))

(declare-fun b!606590 () Bool)

(declare-fun e!347334 () SeekEntryResult!6313)

(assert (=> b!606590 (= e!347334 Undefined!6313)))

(declare-fun lt!276893 () SeekEntryResult!6313)

(declare-fun d!87841 () Bool)

(assert (=> d!87841 (and (or ((_ is Undefined!6313) lt!276893) (not ((_ is Found!6313) lt!276893)) (and (bvsge (index!27524 lt!276893) #b00000000000000000000000000000000) (bvslt (index!27524 lt!276893) (size!18230 lt!276776)))) (or ((_ is Undefined!6313) lt!276893) ((_ is Found!6313) lt!276893) (not ((_ is MissingVacant!6313) lt!276893)) (not (= (index!27526 lt!276893) vacantSpotIndex!68)) (and (bvsge (index!27526 lt!276893) #b00000000000000000000000000000000) (bvslt (index!27526 lt!276893) (size!18230 lt!276776)))) (or ((_ is Undefined!6313) lt!276893) (ite ((_ is Found!6313) lt!276893) (= (select (arr!17866 lt!276776) (index!27524 lt!276893)) lt!276769) (and ((_ is MissingVacant!6313) lt!276893) (= (index!27526 lt!276893) vacantSpotIndex!68) (= (select (arr!17866 lt!276776) (index!27526 lt!276893)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87841 (= lt!276893 e!347334)))

(declare-fun c!68782 () Bool)

(assert (=> d!87841 (= c!68782 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!276894 () (_ BitVec 64))

(assert (=> d!87841 (= lt!276894 (select (arr!17866 lt!276776) lt!276773))))

(assert (=> d!87841 (validMask!0 mask!3053)))

(assert (=> d!87841 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276773 vacantSpotIndex!68 lt!276769 lt!276776 mask!3053) lt!276893)))

(declare-fun b!606591 () Bool)

(declare-fun c!68784 () Bool)

(assert (=> b!606591 (= c!68784 (= lt!276894 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606591 (= e!347336 e!347335)))

(declare-fun b!606592 () Bool)

(assert (=> b!606592 (= e!347334 e!347336)))

(declare-fun c!68783 () Bool)

(assert (=> b!606592 (= c!68783 (= lt!276894 lt!276769))))

(assert (= (and d!87841 c!68782) b!606590))

(assert (= (and d!87841 (not c!68782)) b!606592))

(assert (= (and b!606592 c!68783) b!606587))

(assert (= (and b!606592 (not c!68783)) b!606591))

(assert (= (and b!606591 c!68784) b!606588))

(assert (= (and b!606591 (not c!68784)) b!606589))

(declare-fun m!583435 () Bool)

(assert (=> b!606589 m!583435))

(assert (=> b!606589 m!583435))

(declare-fun m!583437 () Bool)

(assert (=> b!606589 m!583437))

(declare-fun m!583439 () Bool)

(assert (=> d!87841 m!583439))

(declare-fun m!583441 () Bool)

(assert (=> d!87841 m!583441))

(declare-fun m!583443 () Bool)

(assert (=> d!87841 m!583443))

(assert (=> d!87841 m!583167))

(assert (=> b!606308 d!87841))

(declare-fun b!606597 () Bool)

(declare-fun e!347342 () SeekEntryResult!6313)

(assert (=> b!606597 (= e!347342 (Found!6313 index!984))))

(declare-fun b!606598 () Bool)

(declare-fun e!347341 () SeekEntryResult!6313)

(assert (=> b!606598 (= e!347341 (MissingVacant!6313 vacantSpotIndex!68))))

(declare-fun b!606599 () Bool)

(assert (=> b!606599 (= e!347341 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!276769 lt!276776 mask!3053))))

(declare-fun b!606600 () Bool)

(declare-fun e!347340 () SeekEntryResult!6313)

(assert (=> b!606600 (= e!347340 Undefined!6313)))

(declare-fun d!87843 () Bool)

(declare-fun lt!276898 () SeekEntryResult!6313)

(assert (=> d!87843 (and (or ((_ is Undefined!6313) lt!276898) (not ((_ is Found!6313) lt!276898)) (and (bvsge (index!27524 lt!276898) #b00000000000000000000000000000000) (bvslt (index!27524 lt!276898) (size!18230 lt!276776)))) (or ((_ is Undefined!6313) lt!276898) ((_ is Found!6313) lt!276898) (not ((_ is MissingVacant!6313) lt!276898)) (not (= (index!27526 lt!276898) vacantSpotIndex!68)) (and (bvsge (index!27526 lt!276898) #b00000000000000000000000000000000) (bvslt (index!27526 lt!276898) (size!18230 lt!276776)))) (or ((_ is Undefined!6313) lt!276898) (ite ((_ is Found!6313) lt!276898) (= (select (arr!17866 lt!276776) (index!27524 lt!276898)) lt!276769) (and ((_ is MissingVacant!6313) lt!276898) (= (index!27526 lt!276898) vacantSpotIndex!68) (= (select (arr!17866 lt!276776) (index!27526 lt!276898)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87843 (= lt!276898 e!347340)))

(declare-fun c!68786 () Bool)

(assert (=> d!87843 (= c!68786 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!276899 () (_ BitVec 64))

(assert (=> d!87843 (= lt!276899 (select (arr!17866 lt!276776) index!984))))

(assert (=> d!87843 (validMask!0 mask!3053)))

(assert (=> d!87843 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276769 lt!276776 mask!3053) lt!276898)))

(declare-fun b!606601 () Bool)

(declare-fun c!68788 () Bool)

(assert (=> b!606601 (= c!68788 (= lt!276899 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606601 (= e!347342 e!347341)))

(declare-fun b!606602 () Bool)

(assert (=> b!606602 (= e!347340 e!347342)))

(declare-fun c!68787 () Bool)

(assert (=> b!606602 (= c!68787 (= lt!276899 lt!276769))))

(assert (= (and d!87843 c!68786) b!606600))

(assert (= (and d!87843 (not c!68786)) b!606602))

(assert (= (and b!606602 c!68787) b!606597))

(assert (= (and b!606602 (not c!68787)) b!606601))

(assert (= (and b!606601 c!68788) b!606598))

(assert (= (and b!606601 (not c!68788)) b!606599))

(assert (=> b!606599 m!583195))

(assert (=> b!606599 m!583195))

(declare-fun m!583453 () Bool)

(assert (=> b!606599 m!583453))

(declare-fun m!583455 () Bool)

(assert (=> d!87843 m!583455))

(declare-fun m!583457 () Bool)

(assert (=> d!87843 m!583457))

(assert (=> d!87843 m!583319))

(assert (=> d!87843 m!583167))

(assert (=> b!606308 d!87843))

(declare-fun b!606603 () Bool)

(declare-fun e!347345 () SeekEntryResult!6313)

(assert (=> b!606603 (= e!347345 (Found!6313 lt!276773))))

(declare-fun b!606604 () Bool)

(declare-fun e!347344 () SeekEntryResult!6313)

(assert (=> b!606604 (= e!347344 (MissingVacant!6313 vacantSpotIndex!68))))

(declare-fun b!606605 () Bool)

(assert (=> b!606605 (= e!347344 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276773 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17866 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!606606 () Bool)

(declare-fun e!347343 () SeekEntryResult!6313)

(assert (=> b!606606 (= e!347343 Undefined!6313)))

(declare-fun d!87847 () Bool)

(declare-fun lt!276900 () SeekEntryResult!6313)

(assert (=> d!87847 (and (or ((_ is Undefined!6313) lt!276900) (not ((_ is Found!6313) lt!276900)) (and (bvsge (index!27524 lt!276900) #b00000000000000000000000000000000) (bvslt (index!27524 lt!276900) (size!18230 a!2986)))) (or ((_ is Undefined!6313) lt!276900) ((_ is Found!6313) lt!276900) (not ((_ is MissingVacant!6313) lt!276900)) (not (= (index!27526 lt!276900) vacantSpotIndex!68)) (and (bvsge (index!27526 lt!276900) #b00000000000000000000000000000000) (bvslt (index!27526 lt!276900) (size!18230 a!2986)))) (or ((_ is Undefined!6313) lt!276900) (ite ((_ is Found!6313) lt!276900) (= (select (arr!17866 a!2986) (index!27524 lt!276900)) (select (arr!17866 a!2986) j!136)) (and ((_ is MissingVacant!6313) lt!276900) (= (index!27526 lt!276900) vacantSpotIndex!68) (= (select (arr!17866 a!2986) (index!27526 lt!276900)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87847 (= lt!276900 e!347343)))

(declare-fun c!68789 () Bool)

(assert (=> d!87847 (= c!68789 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!276901 () (_ BitVec 64))

(assert (=> d!87847 (= lt!276901 (select (arr!17866 a!2986) lt!276773))))

(assert (=> d!87847 (validMask!0 mask!3053)))

(assert (=> d!87847 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276773 vacantSpotIndex!68 (select (arr!17866 a!2986) j!136) a!2986 mask!3053) lt!276900)))

(declare-fun b!606607 () Bool)

(declare-fun c!68791 () Bool)

(assert (=> b!606607 (= c!68791 (= lt!276901 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606607 (= e!347345 e!347344)))

(declare-fun b!606608 () Bool)

(assert (=> b!606608 (= e!347343 e!347345)))

(declare-fun c!68790 () Bool)

(assert (=> b!606608 (= c!68790 (= lt!276901 (select (arr!17866 a!2986) j!136)))))

(assert (= (and d!87847 c!68789) b!606606))

(assert (= (and d!87847 (not c!68789)) b!606608))

(assert (= (and b!606608 c!68790) b!606603))

(assert (= (and b!606608 (not c!68790)) b!606607))

(assert (= (and b!606607 c!68791) b!606604))

(assert (= (and b!606607 (not c!68791)) b!606605))

(assert (=> b!606605 m!583435))

(assert (=> b!606605 m!583435))

(assert (=> b!606605 m!583145))

(declare-fun m!583459 () Bool)

(assert (=> b!606605 m!583459))

(declare-fun m!583461 () Bool)

(assert (=> d!87847 m!583461))

(declare-fun m!583463 () Bool)

(assert (=> d!87847 m!583463))

(declare-fun m!583465 () Bool)

(assert (=> d!87847 m!583465))

(assert (=> d!87847 m!583167))

(assert (=> b!606308 d!87847))

(assert (=> b!606310 d!87789))

(declare-fun d!87849 () Bool)

(declare-fun lt!276902 () Bool)

(assert (=> d!87849 (= lt!276902 (select (content!238 Nil!11957) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!347346 () Bool)

(assert (=> d!87849 (= lt!276902 e!347346)))

(declare-fun res!389759 () Bool)

(assert (=> d!87849 (=> (not res!389759) (not e!347346))))

(assert (=> d!87849 (= res!389759 ((_ is Cons!11956) Nil!11957))))

(assert (=> d!87849 (= (contains!3006 Nil!11957 #b1000000000000000000000000000000000000000000000000000000000000000) lt!276902)))

(declare-fun b!606609 () Bool)

(declare-fun e!347347 () Bool)

(assert (=> b!606609 (= e!347346 e!347347)))

(declare-fun res!389760 () Bool)

(assert (=> b!606609 (=> res!389760 e!347347)))

(assert (=> b!606609 (= res!389760 (= (h!13001 Nil!11957) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!606610 () Bool)

(assert (=> b!606610 (= e!347347 (contains!3006 (t!18196 Nil!11957) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!87849 res!389759) b!606609))

(assert (= (and b!606609 (not res!389760)) b!606610))

(assert (=> d!87849 m!583301))

(declare-fun m!583467 () Bool)

(assert (=> d!87849 m!583467))

(declare-fun m!583469 () Bool)

(assert (=> b!606610 m!583469))

(assert (=> b!606289 d!87849))

(declare-fun d!87851 () Bool)

(declare-fun res!389761 () Bool)

(declare-fun e!347348 () Bool)

(assert (=> d!87851 (=> res!389761 e!347348)))

(assert (=> d!87851 (= res!389761 (= (select (arr!17866 lt!276776) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!17866 a!2986) j!136)))))

(assert (=> d!87851 (= (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!347348)))

(declare-fun b!606611 () Bool)

(declare-fun e!347349 () Bool)

(assert (=> b!606611 (= e!347348 e!347349)))

(declare-fun res!389762 () Bool)

(assert (=> b!606611 (=> (not res!389762) (not e!347349))))

(assert (=> b!606611 (= res!389762 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18230 lt!276776)))))

(declare-fun b!606612 () Bool)

(assert (=> b!606612 (= e!347349 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87851 (not res!389761)) b!606611))

(assert (= (and b!606611 res!389762) b!606612))

(declare-fun m!583471 () Bool)

(assert (=> d!87851 m!583471))

(assert (=> b!606612 m!583145))

(declare-fun m!583473 () Bool)

(assert (=> b!606612 m!583473))

(assert (=> b!606288 d!87851))

(declare-fun d!87853 () Bool)

(assert (=> d!87853 (arrayContainsKey!0 lt!276776 (select (arr!17866 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276905 () Unit!19306)

(assert (=> d!87853 (= lt!276905 (choose!114 lt!276776 (select (arr!17866 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!87853 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!87853 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276776 (select (arr!17866 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!276905)))

(declare-fun bs!18556 () Bool)

(assert (= bs!18556 d!87853))

(assert (=> bs!18556 m!583145))

(assert (=> bs!18556 m!583157))

(assert (=> bs!18556 m!583145))

(declare-fun m!583475 () Bool)

(assert (=> bs!18556 m!583475))

(assert (=> b!606288 d!87853))

(assert (=> b!606288 d!87775))

(declare-fun b!606643 () Bool)

(declare-fun e!347375 () Bool)

(declare-fun call!33098 () Bool)

(assert (=> b!606643 (= e!347375 call!33098)))

(declare-fun b!606645 () Bool)

(declare-fun e!347374 () Bool)

(assert (=> b!606645 (= e!347374 call!33098)))

(declare-fun bm!33095 () Bool)

(assert (=> bm!33095 (= call!33098 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!606646 () Bool)

(declare-fun e!347376 () Bool)

(assert (=> b!606646 (= e!347376 e!347375)))

(declare-fun c!68798 () Bool)

(assert (=> b!606646 (= c!68798 (validKeyInArray!0 (select (arr!17866 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!606644 () Bool)

(assert (=> b!606644 (= e!347375 e!347374)))

(declare-fun lt!276919 () (_ BitVec 64))

(assert (=> b!606644 (= lt!276919 (select (arr!17866 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!276920 () Unit!19306)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37235 (_ BitVec 64) (_ BitVec 32)) Unit!19306)

(assert (=> b!606644 (= lt!276920 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!276919 #b00000000000000000000000000000000))))

(assert (=> b!606644 (arrayContainsKey!0 a!2986 lt!276919 #b00000000000000000000000000000000)))

(declare-fun lt!276921 () Unit!19306)

(assert (=> b!606644 (= lt!276921 lt!276920)))

(declare-fun res!389782 () Bool)

(assert (=> b!606644 (= res!389782 (= (seekEntryOrOpen!0 (select (arr!17866 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6313 #b00000000000000000000000000000000)))))

(assert (=> b!606644 (=> (not res!389782) (not e!347374))))

(declare-fun d!87855 () Bool)

(declare-fun res!389781 () Bool)

(assert (=> d!87855 (=> res!389781 e!347376)))

(assert (=> d!87855 (= res!389781 (bvsge #b00000000000000000000000000000000 (size!18230 a!2986)))))

(assert (=> d!87855 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!347376)))

(assert (= (and d!87855 (not res!389781)) b!606646))

(assert (= (and b!606646 c!68798) b!606644))

(assert (= (and b!606646 (not c!68798)) b!606643))

(assert (= (and b!606644 res!389782) b!606645))

(assert (= (or b!606645 b!606643) bm!33095))

(declare-fun m!583503 () Bool)

(assert (=> bm!33095 m!583503))

(assert (=> b!606646 m!583385))

(assert (=> b!606646 m!583385))

(assert (=> b!606646 m!583389))

(assert (=> b!606644 m!583385))

(declare-fun m!583505 () Bool)

(assert (=> b!606644 m!583505))

(declare-fun m!583507 () Bool)

(assert (=> b!606644 m!583507))

(assert (=> b!606644 m!583385))

(declare-fun m!583509 () Bool)

(assert (=> b!606644 m!583509))

(assert (=> b!606299 d!87855))

(declare-fun d!87873 () Bool)

(declare-fun res!389783 () Bool)

(declare-fun e!347377 () Bool)

(assert (=> d!87873 (=> res!389783 e!347377)))

(assert (=> d!87873 (= res!389783 (= (select (arr!17866 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!87873 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!347377)))

(declare-fun b!606647 () Bool)

(declare-fun e!347378 () Bool)

(assert (=> b!606647 (= e!347377 e!347378)))

(declare-fun res!389784 () Bool)

(assert (=> b!606647 (=> (not res!389784) (not e!347378))))

(assert (=> b!606647 (= res!389784 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18230 a!2986)))))

(declare-fun b!606648 () Bool)

(assert (=> b!606648 (= e!347378 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87873 (not res!389783)) b!606647))

(assert (= (and b!606647 res!389784) b!606648))

(assert (=> d!87873 m!583385))

(declare-fun m!583511 () Bool)

(assert (=> b!606648 m!583511))

(assert (=> b!606301 d!87873))

(declare-fun d!87875 () Bool)

(assert (=> d!87875 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!606311 d!87875))

(check-sat (not d!87819) (not b!606449) (not d!87853) (not b!606431) (not b!606542) (not b!606541) (not b!606519) (not b!606545) (not b!606644) (not d!87849) (not b!606520) (not b!606599) (not b!606486) (not bm!33080) (not bm!33095) (not b!606468) (not b!606469) (not d!87841) (not d!87767) (not bm!33084) (not d!87791) (not d!87771) (not b!606437) (not d!87833) (not d!87847) (not b!606448) (not b!606451) (not d!87801) (not b!606524) (not b!606576) (not b!606422) (not b!606648) (not bm!33081) (not b!606646) (not d!87843) (not d!87799) (not b!606589) (not b!606605) (not b!606472) (not d!87811) (not b!606404) (not d!87769) (not b!606521) (not b!606610) (not b!606612))
(check-sat)
