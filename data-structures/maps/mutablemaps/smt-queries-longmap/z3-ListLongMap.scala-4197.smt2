; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57290 () Bool)

(assert start!57290)

(declare-fun b!633915 () Bool)

(declare-fun res!410176 () Bool)

(declare-fun e!362495 () Bool)

(assert (=> b!633915 (=> (not res!410176) (not e!362495))))

(declare-datatypes ((array!38156 0))(
  ( (array!38157 (arr!18304 (Array (_ BitVec 32) (_ BitVec 64))) (size!18668 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38156)

(declare-datatypes ((List!12398 0))(
  ( (Nil!12395) (Cons!12394 (h!13439 (_ BitVec 64)) (t!18634 List!12398)) )
))
(declare-fun arrayNoDuplicates!0 (array!38156 (_ BitVec 32) List!12398) Bool)

(assert (=> b!633915 (= res!410176 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12395))))

(declare-fun b!633916 () Bool)

(declare-fun e!362492 () Bool)

(declare-datatypes ((SeekEntryResult!6751 0))(
  ( (MissingZero!6751 (index!29302 (_ BitVec 32))) (Found!6751 (index!29303 (_ BitVec 32))) (Intermediate!6751 (undefined!7563 Bool) (index!29304 (_ BitVec 32)) (x!58069 (_ BitVec 32))) (Undefined!6751) (MissingVacant!6751 (index!29305 (_ BitVec 32))) )
))
(declare-fun lt!293097 () SeekEntryResult!6751)

(declare-fun lt!293100 () SeekEntryResult!6751)

(assert (=> b!633916 (= e!362492 (= lt!293097 lt!293100))))

(declare-fun b!633917 () Bool)

(declare-fun e!362497 () Bool)

(assert (=> b!633917 (= e!362495 e!362497)))

(declare-fun res!410177 () Bool)

(assert (=> b!633917 (=> (not res!410177) (not e!362497))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!633917 (= res!410177 (= (select (store (arr!18304 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!293091 () array!38156)

(assert (=> b!633917 (= lt!293091 (array!38157 (store (arr!18304 a!2986) i!1108 k0!1786) (size!18668 a!2986)))))

(declare-fun b!633918 () Bool)

(declare-datatypes ((Unit!21362 0))(
  ( (Unit!21363) )
))
(declare-fun e!362496 () Unit!21362)

(declare-fun Unit!21364 () Unit!21362)

(assert (=> b!633918 (= e!362496 Unit!21364)))

(assert (=> b!633918 false))

(declare-fun b!633919 () Bool)

(declare-fun res!410168 () Bool)

(assert (=> b!633919 (=> (not res!410168) (not e!362495))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38156 (_ BitVec 32)) Bool)

(assert (=> b!633919 (= res!410168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633920 () Bool)

(declare-fun res!410175 () Bool)

(assert (=> b!633920 (=> (not res!410175) (not e!362495))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!633920 (= res!410175 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18304 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633921 () Bool)

(declare-fun res!410173 () Bool)

(declare-fun e!362493 () Bool)

(assert (=> b!633921 (=> (not res!410173) (not e!362493))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!633921 (= res!410173 (and (= (size!18668 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18668 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18668 a!2986)) (not (= i!1108 j!136))))))

(declare-fun lt!293098 () (_ BitVec 64))

(declare-fun b!633922 () Bool)

(declare-fun lt!293093 () (_ BitVec 64))

(declare-fun e!362487 () Bool)

(assert (=> b!633922 (= e!362487 (or (not (= (select (arr!18304 a!2986) j!136) lt!293098)) (not (= (select (arr!18304 a!2986) j!136) lt!293093)) (bvsge j!136 index!984) (bvsge index!984 (size!18668 a!2986)) (bvslt (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000) (bvslt (size!18668 a!2986) #b01111111111111111111111111111111)))))

(declare-fun e!362490 () Bool)

(assert (=> b!633922 e!362490))

(declare-fun res!410178 () Bool)

(assert (=> b!633922 (=> (not res!410178) (not e!362490))))

(assert (=> b!633922 (= res!410178 (= lt!293093 (select (arr!18304 a!2986) j!136)))))

(assert (=> b!633922 (= lt!293093 (select (store (arr!18304 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!633923 () Bool)

(declare-fun Unit!21365 () Unit!21362)

(assert (=> b!633923 (= e!362496 Unit!21365)))

(declare-fun b!633924 () Bool)

(declare-fun e!362491 () Bool)

(assert (=> b!633924 (= e!362490 e!362491)))

(declare-fun res!410165 () Bool)

(assert (=> b!633924 (=> res!410165 e!362491)))

(assert (=> b!633924 (= res!410165 (or (not (= (select (arr!18304 a!2986) j!136) lt!293098)) (not (= (select (arr!18304 a!2986) j!136) lt!293093)) (bvsge j!136 index!984)))))

(declare-fun res!410170 () Bool)

(assert (=> start!57290 (=> (not res!410170) (not e!362493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57290 (= res!410170 (validMask!0 mask!3053))))

(assert (=> start!57290 e!362493))

(assert (=> start!57290 true))

(declare-fun array_inv!14078 (array!38156) Bool)

(assert (=> start!57290 (array_inv!14078 a!2986)))

(declare-fun b!633925 () Bool)

(declare-fun e!362488 () Bool)

(assert (=> b!633925 (= e!362488 (not e!362487))))

(declare-fun res!410166 () Bool)

(assert (=> b!633925 (=> res!410166 e!362487)))

(declare-fun lt!293095 () SeekEntryResult!6751)

(assert (=> b!633925 (= res!410166 (not (= lt!293095 (Found!6751 index!984))))))

(declare-fun lt!293099 () Unit!21362)

(assert (=> b!633925 (= lt!293099 e!362496)))

(declare-fun c!72242 () Bool)

(assert (=> b!633925 (= c!72242 (= lt!293095 Undefined!6751))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38156 (_ BitVec 32)) SeekEntryResult!6751)

(assert (=> b!633925 (= lt!293095 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293098 lt!293091 mask!3053))))

(assert (=> b!633925 e!362492))

(declare-fun res!410174 () Bool)

(assert (=> b!633925 (=> (not res!410174) (not e!362492))))

(declare-fun lt!293092 () (_ BitVec 32))

(assert (=> b!633925 (= res!410174 (= lt!293100 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293092 vacantSpotIndex!68 lt!293098 lt!293091 mask!3053)))))

(assert (=> b!633925 (= lt!293100 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293092 vacantSpotIndex!68 (select (arr!18304 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633925 (= lt!293098 (select (store (arr!18304 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!293094 () Unit!21362)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38156 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21362)

(assert (=> b!633925 (= lt!293094 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293092 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633925 (= lt!293092 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!633926 () Bool)

(declare-fun res!410179 () Bool)

(assert (=> b!633926 (=> (not res!410179) (not e!362493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633926 (= res!410179 (validKeyInArray!0 (select (arr!18304 a!2986) j!136)))))

(declare-fun b!633927 () Bool)

(assert (=> b!633927 (= e!362497 e!362488)))

(declare-fun res!410180 () Bool)

(assert (=> b!633927 (=> (not res!410180) (not e!362488))))

(assert (=> b!633927 (= res!410180 (and (= lt!293097 (Found!6751 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18304 a!2986) index!984) (select (arr!18304 a!2986) j!136))) (not (= (select (arr!18304 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!633927 (= lt!293097 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18304 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633928 () Bool)

(declare-fun e!362489 () Bool)

(assert (=> b!633928 (= e!362491 e!362489)))

(declare-fun res!410171 () Bool)

(assert (=> b!633928 (=> (not res!410171) (not e!362489))))

(declare-fun arrayContainsKey!0 (array!38156 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633928 (= res!410171 (arrayContainsKey!0 lt!293091 (select (arr!18304 a!2986) j!136) j!136))))

(declare-fun b!633929 () Bool)

(assert (=> b!633929 (= e!362493 e!362495)))

(declare-fun res!410167 () Bool)

(assert (=> b!633929 (=> (not res!410167) (not e!362495))))

(declare-fun lt!293096 () SeekEntryResult!6751)

(assert (=> b!633929 (= res!410167 (or (= lt!293096 (MissingZero!6751 i!1108)) (= lt!293096 (MissingVacant!6751 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38156 (_ BitVec 32)) SeekEntryResult!6751)

(assert (=> b!633929 (= lt!293096 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!633930 () Bool)

(declare-fun res!410169 () Bool)

(assert (=> b!633930 (=> (not res!410169) (not e!362493))))

(assert (=> b!633930 (= res!410169 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633931 () Bool)

(assert (=> b!633931 (= e!362489 (arrayContainsKey!0 lt!293091 (select (arr!18304 a!2986) j!136) index!984))))

(declare-fun b!633932 () Bool)

(declare-fun res!410172 () Bool)

(assert (=> b!633932 (=> (not res!410172) (not e!362493))))

(assert (=> b!633932 (= res!410172 (validKeyInArray!0 k0!1786))))

(assert (= (and start!57290 res!410170) b!633921))

(assert (= (and b!633921 res!410173) b!633926))

(assert (= (and b!633926 res!410179) b!633932))

(assert (= (and b!633932 res!410172) b!633930))

(assert (= (and b!633930 res!410169) b!633929))

(assert (= (and b!633929 res!410167) b!633919))

(assert (= (and b!633919 res!410168) b!633915))

(assert (= (and b!633915 res!410176) b!633920))

(assert (= (and b!633920 res!410175) b!633917))

(assert (= (and b!633917 res!410177) b!633927))

(assert (= (and b!633927 res!410180) b!633925))

(assert (= (and b!633925 res!410174) b!633916))

(assert (= (and b!633925 c!72242) b!633918))

(assert (= (and b!633925 (not c!72242)) b!633923))

(assert (= (and b!633925 (not res!410166)) b!633922))

(assert (= (and b!633922 res!410178) b!633924))

(assert (= (and b!633924 (not res!410165)) b!633928))

(assert (= (and b!633928 res!410171) b!633931))

(declare-fun m!608539 () Bool)

(assert (=> b!633930 m!608539))

(declare-fun m!608541 () Bool)

(assert (=> b!633919 m!608541))

(declare-fun m!608543 () Bool)

(assert (=> b!633924 m!608543))

(assert (=> b!633922 m!608543))

(declare-fun m!608545 () Bool)

(assert (=> b!633922 m!608545))

(declare-fun m!608547 () Bool)

(assert (=> b!633922 m!608547))

(declare-fun m!608549 () Bool)

(assert (=> b!633915 m!608549))

(assert (=> b!633928 m!608543))

(assert (=> b!633928 m!608543))

(declare-fun m!608551 () Bool)

(assert (=> b!633928 m!608551))

(declare-fun m!608553 () Bool)

(assert (=> b!633927 m!608553))

(assert (=> b!633927 m!608543))

(assert (=> b!633927 m!608543))

(declare-fun m!608555 () Bool)

(assert (=> b!633927 m!608555))

(declare-fun m!608557 () Bool)

(assert (=> b!633929 m!608557))

(assert (=> b!633931 m!608543))

(assert (=> b!633931 m!608543))

(declare-fun m!608559 () Bool)

(assert (=> b!633931 m!608559))

(declare-fun m!608561 () Bool)

(assert (=> b!633920 m!608561))

(assert (=> b!633917 m!608545))

(declare-fun m!608563 () Bool)

(assert (=> b!633917 m!608563))

(declare-fun m!608565 () Bool)

(assert (=> start!57290 m!608565))

(declare-fun m!608567 () Bool)

(assert (=> start!57290 m!608567))

(declare-fun m!608569 () Bool)

(assert (=> b!633925 m!608569))

(declare-fun m!608571 () Bool)

(assert (=> b!633925 m!608571))

(assert (=> b!633925 m!608543))

(assert (=> b!633925 m!608545))

(declare-fun m!608573 () Bool)

(assert (=> b!633925 m!608573))

(declare-fun m!608575 () Bool)

(assert (=> b!633925 m!608575))

(declare-fun m!608577 () Bool)

(assert (=> b!633925 m!608577))

(assert (=> b!633925 m!608543))

(declare-fun m!608579 () Bool)

(assert (=> b!633925 m!608579))

(declare-fun m!608581 () Bool)

(assert (=> b!633932 m!608581))

(assert (=> b!633926 m!608543))

(assert (=> b!633926 m!608543))

(declare-fun m!608583 () Bool)

(assert (=> b!633926 m!608583))

(check-sat (not b!633915) (not b!633926) (not b!633925) (not b!633931) (not start!57290) (not b!633929) (not b!633919) (not b!633927) (not b!633928) (not b!633932) (not b!633930))
(check-sat)
(get-model)

(declare-fun d!89481 () Bool)

(assert (=> d!89481 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57290 d!89481))

(declare-fun d!89483 () Bool)

(assert (=> d!89483 (= (array_inv!14078 a!2986) (bvsge (size!18668 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57290 d!89483))

(declare-fun b!633995 () Bool)

(declare-fun e!362539 () Bool)

(declare-fun call!33377 () Bool)

(assert (=> b!633995 (= e!362539 call!33377)))

(declare-fun b!633996 () Bool)

(declare-fun e!362537 () Bool)

(assert (=> b!633996 (= e!362537 e!362539)))

(declare-fun c!72248 () Bool)

(assert (=> b!633996 (= c!72248 (validKeyInArray!0 (select (arr!18304 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!633997 () Bool)

(declare-fun e!362538 () Bool)

(assert (=> b!633997 (= e!362539 e!362538)))

(declare-fun lt!293137 () (_ BitVec 64))

(assert (=> b!633997 (= lt!293137 (select (arr!18304 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!293138 () Unit!21362)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38156 (_ BitVec 64) (_ BitVec 32)) Unit!21362)

(assert (=> b!633997 (= lt!293138 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!293137 #b00000000000000000000000000000000))))

(assert (=> b!633997 (arrayContainsKey!0 a!2986 lt!293137 #b00000000000000000000000000000000)))

(declare-fun lt!293139 () Unit!21362)

(assert (=> b!633997 (= lt!293139 lt!293138)))

(declare-fun res!410234 () Bool)

(assert (=> b!633997 (= res!410234 (= (seekEntryOrOpen!0 (select (arr!18304 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6751 #b00000000000000000000000000000000)))))

(assert (=> b!633997 (=> (not res!410234) (not e!362538))))

(declare-fun d!89485 () Bool)

(declare-fun res!410233 () Bool)

(assert (=> d!89485 (=> res!410233 e!362537)))

(assert (=> d!89485 (= res!410233 (bvsge #b00000000000000000000000000000000 (size!18668 a!2986)))))

(assert (=> d!89485 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!362537)))

(declare-fun bm!33374 () Bool)

(assert (=> bm!33374 (= call!33377 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!633998 () Bool)

(assert (=> b!633998 (= e!362538 call!33377)))

(assert (= (and d!89485 (not res!410233)) b!633996))

(assert (= (and b!633996 c!72248) b!633997))

(assert (= (and b!633996 (not c!72248)) b!633995))

(assert (= (and b!633997 res!410234) b!633998))

(assert (= (or b!633998 b!633995) bm!33374))

(declare-fun m!608631 () Bool)

(assert (=> b!633996 m!608631))

(assert (=> b!633996 m!608631))

(declare-fun m!608633 () Bool)

(assert (=> b!633996 m!608633))

(assert (=> b!633997 m!608631))

(declare-fun m!608635 () Bool)

(assert (=> b!633997 m!608635))

(declare-fun m!608637 () Bool)

(assert (=> b!633997 m!608637))

(assert (=> b!633997 m!608631))

(declare-fun m!608639 () Bool)

(assert (=> b!633997 m!608639))

(declare-fun m!608641 () Bool)

(assert (=> bm!33374 m!608641))

(assert (=> b!633919 d!89485))

(declare-fun d!89487 () Bool)

(declare-fun res!410239 () Bool)

(declare-fun e!362544 () Bool)

(assert (=> d!89487 (=> res!410239 e!362544)))

(assert (=> d!89487 (= res!410239 (= (select (arr!18304 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!89487 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!362544)))

(declare-fun b!634003 () Bool)

(declare-fun e!362545 () Bool)

(assert (=> b!634003 (= e!362544 e!362545)))

(declare-fun res!410240 () Bool)

(assert (=> b!634003 (=> (not res!410240) (not e!362545))))

(assert (=> b!634003 (= res!410240 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18668 a!2986)))))

(declare-fun b!634004 () Bool)

(assert (=> b!634004 (= e!362545 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89487 (not res!410239)) b!634003))

(assert (= (and b!634003 res!410240) b!634004))

(assert (=> d!89487 m!608631))

(declare-fun m!608643 () Bool)

(assert (=> b!634004 m!608643))

(assert (=> b!633930 d!89487))

(declare-fun b!634017 () Bool)

(declare-fun e!362552 () SeekEntryResult!6751)

(assert (=> b!634017 (= e!362552 (MissingVacant!6751 vacantSpotIndex!68))))

(declare-fun b!634018 () Bool)

(assert (=> b!634018 (= e!362552 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!293098 lt!293091 mask!3053))))

(declare-fun b!634019 () Bool)

(declare-fun e!362554 () SeekEntryResult!6751)

(assert (=> b!634019 (= e!362554 (Found!6751 index!984))))

(declare-fun b!634020 () Bool)

(declare-fun e!362553 () SeekEntryResult!6751)

(assert (=> b!634020 (= e!362553 Undefined!6751)))

(declare-fun d!89489 () Bool)

(declare-fun lt!293145 () SeekEntryResult!6751)

(get-info :version)

(assert (=> d!89489 (and (or ((_ is Undefined!6751) lt!293145) (not ((_ is Found!6751) lt!293145)) (and (bvsge (index!29303 lt!293145) #b00000000000000000000000000000000) (bvslt (index!29303 lt!293145) (size!18668 lt!293091)))) (or ((_ is Undefined!6751) lt!293145) ((_ is Found!6751) lt!293145) (not ((_ is MissingVacant!6751) lt!293145)) (not (= (index!29305 lt!293145) vacantSpotIndex!68)) (and (bvsge (index!29305 lt!293145) #b00000000000000000000000000000000) (bvslt (index!29305 lt!293145) (size!18668 lt!293091)))) (or ((_ is Undefined!6751) lt!293145) (ite ((_ is Found!6751) lt!293145) (= (select (arr!18304 lt!293091) (index!29303 lt!293145)) lt!293098) (and ((_ is MissingVacant!6751) lt!293145) (= (index!29305 lt!293145) vacantSpotIndex!68) (= (select (arr!18304 lt!293091) (index!29305 lt!293145)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89489 (= lt!293145 e!362553)))

(declare-fun c!72257 () Bool)

(assert (=> d!89489 (= c!72257 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!293144 () (_ BitVec 64))

(assert (=> d!89489 (= lt!293144 (select (arr!18304 lt!293091) index!984))))

(assert (=> d!89489 (validMask!0 mask!3053)))

(assert (=> d!89489 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293098 lt!293091 mask!3053) lt!293145)))

(declare-fun b!634021 () Bool)

(assert (=> b!634021 (= e!362553 e!362554)))

(declare-fun c!72255 () Bool)

(assert (=> b!634021 (= c!72255 (= lt!293144 lt!293098))))

(declare-fun b!634022 () Bool)

(declare-fun c!72256 () Bool)

(assert (=> b!634022 (= c!72256 (= lt!293144 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634022 (= e!362554 e!362552)))

(assert (= (and d!89489 c!72257) b!634020))

(assert (= (and d!89489 (not c!72257)) b!634021))

(assert (= (and b!634021 c!72255) b!634019))

(assert (= (and b!634021 (not c!72255)) b!634022))

(assert (= (and b!634022 c!72256) b!634017))

(assert (= (and b!634022 (not c!72256)) b!634018))

(assert (=> b!634018 m!608569))

(assert (=> b!634018 m!608569))

(declare-fun m!608645 () Bool)

(assert (=> b!634018 m!608645))

(declare-fun m!608647 () Bool)

(assert (=> d!89489 m!608647))

(declare-fun m!608649 () Bool)

(assert (=> d!89489 m!608649))

(declare-fun m!608651 () Bool)

(assert (=> d!89489 m!608651))

(assert (=> d!89489 m!608565))

(assert (=> b!633925 d!89489))

(declare-fun b!634023 () Bool)

(declare-fun e!362555 () SeekEntryResult!6751)

(assert (=> b!634023 (= e!362555 (MissingVacant!6751 vacantSpotIndex!68))))

(declare-fun b!634024 () Bool)

(assert (=> b!634024 (= e!362555 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!293092 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18304 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634025 () Bool)

(declare-fun e!362557 () SeekEntryResult!6751)

(assert (=> b!634025 (= e!362557 (Found!6751 lt!293092))))

(declare-fun b!634026 () Bool)

(declare-fun e!362556 () SeekEntryResult!6751)

(assert (=> b!634026 (= e!362556 Undefined!6751)))

(declare-fun lt!293147 () SeekEntryResult!6751)

(declare-fun d!89491 () Bool)

(assert (=> d!89491 (and (or ((_ is Undefined!6751) lt!293147) (not ((_ is Found!6751) lt!293147)) (and (bvsge (index!29303 lt!293147) #b00000000000000000000000000000000) (bvslt (index!29303 lt!293147) (size!18668 a!2986)))) (or ((_ is Undefined!6751) lt!293147) ((_ is Found!6751) lt!293147) (not ((_ is MissingVacant!6751) lt!293147)) (not (= (index!29305 lt!293147) vacantSpotIndex!68)) (and (bvsge (index!29305 lt!293147) #b00000000000000000000000000000000) (bvslt (index!29305 lt!293147) (size!18668 a!2986)))) (or ((_ is Undefined!6751) lt!293147) (ite ((_ is Found!6751) lt!293147) (= (select (arr!18304 a!2986) (index!29303 lt!293147)) (select (arr!18304 a!2986) j!136)) (and ((_ is MissingVacant!6751) lt!293147) (= (index!29305 lt!293147) vacantSpotIndex!68) (= (select (arr!18304 a!2986) (index!29305 lt!293147)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89491 (= lt!293147 e!362556)))

(declare-fun c!72260 () Bool)

(assert (=> d!89491 (= c!72260 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!293146 () (_ BitVec 64))

(assert (=> d!89491 (= lt!293146 (select (arr!18304 a!2986) lt!293092))))

(assert (=> d!89491 (validMask!0 mask!3053)))

(assert (=> d!89491 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293092 vacantSpotIndex!68 (select (arr!18304 a!2986) j!136) a!2986 mask!3053) lt!293147)))

(declare-fun b!634027 () Bool)

(assert (=> b!634027 (= e!362556 e!362557)))

(declare-fun c!72258 () Bool)

(assert (=> b!634027 (= c!72258 (= lt!293146 (select (arr!18304 a!2986) j!136)))))

(declare-fun b!634028 () Bool)

(declare-fun c!72259 () Bool)

(assert (=> b!634028 (= c!72259 (= lt!293146 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634028 (= e!362557 e!362555)))

(assert (= (and d!89491 c!72260) b!634026))

(assert (= (and d!89491 (not c!72260)) b!634027))

(assert (= (and b!634027 c!72258) b!634025))

(assert (= (and b!634027 (not c!72258)) b!634028))

(assert (= (and b!634028 c!72259) b!634023))

(assert (= (and b!634028 (not c!72259)) b!634024))

(declare-fun m!608653 () Bool)

(assert (=> b!634024 m!608653))

(assert (=> b!634024 m!608653))

(assert (=> b!634024 m!608543))

(declare-fun m!608655 () Bool)

(assert (=> b!634024 m!608655))

(declare-fun m!608657 () Bool)

(assert (=> d!89491 m!608657))

(declare-fun m!608659 () Bool)

(assert (=> d!89491 m!608659))

(declare-fun m!608661 () Bool)

(assert (=> d!89491 m!608661))

(assert (=> d!89491 m!608565))

(assert (=> b!633925 d!89491))

(declare-fun b!634029 () Bool)

(declare-fun e!362558 () SeekEntryResult!6751)

(assert (=> b!634029 (= e!362558 (MissingVacant!6751 vacantSpotIndex!68))))

(declare-fun b!634030 () Bool)

(assert (=> b!634030 (= e!362558 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!293092 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!293098 lt!293091 mask!3053))))

(declare-fun b!634031 () Bool)

(declare-fun e!362560 () SeekEntryResult!6751)

(assert (=> b!634031 (= e!362560 (Found!6751 lt!293092))))

(declare-fun b!634032 () Bool)

(declare-fun e!362559 () SeekEntryResult!6751)

(assert (=> b!634032 (= e!362559 Undefined!6751)))

(declare-fun d!89493 () Bool)

(declare-fun lt!293149 () SeekEntryResult!6751)

(assert (=> d!89493 (and (or ((_ is Undefined!6751) lt!293149) (not ((_ is Found!6751) lt!293149)) (and (bvsge (index!29303 lt!293149) #b00000000000000000000000000000000) (bvslt (index!29303 lt!293149) (size!18668 lt!293091)))) (or ((_ is Undefined!6751) lt!293149) ((_ is Found!6751) lt!293149) (not ((_ is MissingVacant!6751) lt!293149)) (not (= (index!29305 lt!293149) vacantSpotIndex!68)) (and (bvsge (index!29305 lt!293149) #b00000000000000000000000000000000) (bvslt (index!29305 lt!293149) (size!18668 lt!293091)))) (or ((_ is Undefined!6751) lt!293149) (ite ((_ is Found!6751) lt!293149) (= (select (arr!18304 lt!293091) (index!29303 lt!293149)) lt!293098) (and ((_ is MissingVacant!6751) lt!293149) (= (index!29305 lt!293149) vacantSpotIndex!68) (= (select (arr!18304 lt!293091) (index!29305 lt!293149)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89493 (= lt!293149 e!362559)))

(declare-fun c!72263 () Bool)

(assert (=> d!89493 (= c!72263 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!293148 () (_ BitVec 64))

(assert (=> d!89493 (= lt!293148 (select (arr!18304 lt!293091) lt!293092))))

(assert (=> d!89493 (validMask!0 mask!3053)))

(assert (=> d!89493 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293092 vacantSpotIndex!68 lt!293098 lt!293091 mask!3053) lt!293149)))

(declare-fun b!634033 () Bool)

(assert (=> b!634033 (= e!362559 e!362560)))

(declare-fun c!72261 () Bool)

(assert (=> b!634033 (= c!72261 (= lt!293148 lt!293098))))

(declare-fun b!634034 () Bool)

(declare-fun c!72262 () Bool)

(assert (=> b!634034 (= c!72262 (= lt!293148 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634034 (= e!362560 e!362558)))

(assert (= (and d!89493 c!72263) b!634032))

(assert (= (and d!89493 (not c!72263)) b!634033))

(assert (= (and b!634033 c!72261) b!634031))

(assert (= (and b!634033 (not c!72261)) b!634034))

(assert (= (and b!634034 c!72262) b!634029))

(assert (= (and b!634034 (not c!72262)) b!634030))

(assert (=> b!634030 m!608653))

(assert (=> b!634030 m!608653))

(declare-fun m!608663 () Bool)

(assert (=> b!634030 m!608663))

(declare-fun m!608665 () Bool)

(assert (=> d!89493 m!608665))

(declare-fun m!608667 () Bool)

(assert (=> d!89493 m!608667))

(declare-fun m!608669 () Bool)

(assert (=> d!89493 m!608669))

(assert (=> d!89493 m!608565))

(assert (=> b!633925 d!89493))

(declare-fun d!89495 () Bool)

(declare-fun lt!293152 () (_ BitVec 32))

(assert (=> d!89495 (and (bvsge lt!293152 #b00000000000000000000000000000000) (bvslt lt!293152 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89495 (= lt!293152 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89495 (validMask!0 mask!3053)))

(assert (=> d!89495 (= (nextIndex!0 index!984 x!910 mask!3053) lt!293152)))

(declare-fun bs!19070 () Bool)

(assert (= bs!19070 d!89495))

(declare-fun m!608671 () Bool)

(assert (=> bs!19070 m!608671))

(assert (=> bs!19070 m!608565))

(assert (=> b!633925 d!89495))

(declare-fun d!89497 () Bool)

(declare-fun e!362583 () Bool)

(assert (=> d!89497 e!362583))

(declare-fun res!410259 () Bool)

(assert (=> d!89497 (=> (not res!410259) (not e!362583))))

(assert (=> d!89497 (= res!410259 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18668 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18668 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18668 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18668 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18668 a!2986))))))

(declare-fun lt!293161 () Unit!21362)

(declare-fun choose!9 (array!38156 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21362)

(assert (=> d!89497 (= lt!293161 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293092 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89497 (validMask!0 mask!3053)))

(assert (=> d!89497 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293092 vacantSpotIndex!68 mask!3053) lt!293161)))

(declare-fun b!634061 () Bool)

(assert (=> b!634061 (= e!362583 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293092 vacantSpotIndex!68 (select (arr!18304 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293092 vacantSpotIndex!68 (select (store (arr!18304 a!2986) i!1108 k0!1786) j!136) (array!38157 (store (arr!18304 a!2986) i!1108 k0!1786) (size!18668 a!2986)) mask!3053)))))

(assert (= (and d!89497 res!410259) b!634061))

(declare-fun m!608677 () Bool)

(assert (=> d!89497 m!608677))

(assert (=> d!89497 m!608565))

(assert (=> b!634061 m!608571))

(assert (=> b!634061 m!608545))

(assert (=> b!634061 m!608543))

(assert (=> b!634061 m!608571))

(declare-fun m!608679 () Bool)

(assert (=> b!634061 m!608679))

(assert (=> b!634061 m!608543))

(assert (=> b!634061 m!608579))

(assert (=> b!633925 d!89497))

(declare-fun d!89507 () Bool)

(declare-fun res!410260 () Bool)

(declare-fun e!362584 () Bool)

(assert (=> d!89507 (=> res!410260 e!362584)))

(assert (=> d!89507 (= res!410260 (= (select (arr!18304 lt!293091) index!984) (select (arr!18304 a!2986) j!136)))))

(assert (=> d!89507 (= (arrayContainsKey!0 lt!293091 (select (arr!18304 a!2986) j!136) index!984) e!362584)))

(declare-fun b!634062 () Bool)

(declare-fun e!362585 () Bool)

(assert (=> b!634062 (= e!362584 e!362585)))

(declare-fun res!410261 () Bool)

(assert (=> b!634062 (=> (not res!410261) (not e!362585))))

(assert (=> b!634062 (= res!410261 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18668 lt!293091)))))

(declare-fun b!634063 () Bool)

(assert (=> b!634063 (= e!362585 (arrayContainsKey!0 lt!293091 (select (arr!18304 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!89507 (not res!410260)) b!634062))

(assert (= (and b!634062 res!410261) b!634063))

(assert (=> d!89507 m!608651))

(assert (=> b!634063 m!608543))

(declare-fun m!608681 () Bool)

(assert (=> b!634063 m!608681))

(assert (=> b!633931 d!89507))

(declare-fun b!634083 () Bool)

(declare-fun e!362601 () Bool)

(declare-fun call!33386 () Bool)

(assert (=> b!634083 (= e!362601 call!33386)))

(declare-fun b!634084 () Bool)

(assert (=> b!634084 (= e!362601 call!33386)))

(declare-fun b!634085 () Bool)

(declare-fun e!362602 () Bool)

(declare-fun e!362604 () Bool)

(assert (=> b!634085 (= e!362602 e!362604)))

(declare-fun res!410274 () Bool)

(assert (=> b!634085 (=> (not res!410274) (not e!362604))))

(declare-fun e!362603 () Bool)

(assert (=> b!634085 (= res!410274 (not e!362603))))

(declare-fun res!410273 () Bool)

(assert (=> b!634085 (=> (not res!410273) (not e!362603))))

(assert (=> b!634085 (= res!410273 (validKeyInArray!0 (select (arr!18304 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!634087 () Bool)

(assert (=> b!634087 (= e!362604 e!362601)))

(declare-fun c!72272 () Bool)

(assert (=> b!634087 (= c!72272 (validKeyInArray!0 (select (arr!18304 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33383 () Bool)

(assert (=> bm!33383 (= call!33386 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72272 (Cons!12394 (select (arr!18304 a!2986) #b00000000000000000000000000000000) Nil!12395) Nil!12395)))))

(declare-fun b!634086 () Bool)

(declare-fun contains!3098 (List!12398 (_ BitVec 64)) Bool)

(assert (=> b!634086 (= e!362603 (contains!3098 Nil!12395 (select (arr!18304 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89509 () Bool)

(declare-fun res!410275 () Bool)

(assert (=> d!89509 (=> res!410275 e!362602)))

(assert (=> d!89509 (= res!410275 (bvsge #b00000000000000000000000000000000 (size!18668 a!2986)))))

(assert (=> d!89509 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12395) e!362602)))

(assert (= (and d!89509 (not res!410275)) b!634085))

(assert (= (and b!634085 res!410273) b!634086))

(assert (= (and b!634085 res!410274) b!634087))

(assert (= (and b!634087 c!72272) b!634083))

(assert (= (and b!634087 (not c!72272)) b!634084))

(assert (= (or b!634083 b!634084) bm!33383))

(assert (=> b!634085 m!608631))

(assert (=> b!634085 m!608631))

(assert (=> b!634085 m!608633))

(assert (=> b!634087 m!608631))

(assert (=> b!634087 m!608631))

(assert (=> b!634087 m!608633))

(assert (=> bm!33383 m!608631))

(declare-fun m!608703 () Bool)

(assert (=> bm!33383 m!608703))

(assert (=> b!634086 m!608631))

(assert (=> b!634086 m!608631))

(declare-fun m!608705 () Bool)

(assert (=> b!634086 m!608705))

(assert (=> b!633915 d!89509))

(declare-fun d!89515 () Bool)

(assert (=> d!89515 (= (validKeyInArray!0 (select (arr!18304 a!2986) j!136)) (and (not (= (select (arr!18304 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18304 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!633926 d!89515))

(declare-fun d!89517 () Bool)

(assert (=> d!89517 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!633932 d!89517))

(declare-fun b!634088 () Bool)

(declare-fun e!362605 () SeekEntryResult!6751)

(assert (=> b!634088 (= e!362605 (MissingVacant!6751 vacantSpotIndex!68))))

(declare-fun b!634089 () Bool)

(assert (=> b!634089 (= e!362605 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18304 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634090 () Bool)

(declare-fun e!362607 () SeekEntryResult!6751)

(assert (=> b!634090 (= e!362607 (Found!6751 index!984))))

(declare-fun b!634091 () Bool)

(declare-fun e!362606 () SeekEntryResult!6751)

(assert (=> b!634091 (= e!362606 Undefined!6751)))

(declare-fun lt!293166 () SeekEntryResult!6751)

(declare-fun d!89519 () Bool)

(assert (=> d!89519 (and (or ((_ is Undefined!6751) lt!293166) (not ((_ is Found!6751) lt!293166)) (and (bvsge (index!29303 lt!293166) #b00000000000000000000000000000000) (bvslt (index!29303 lt!293166) (size!18668 a!2986)))) (or ((_ is Undefined!6751) lt!293166) ((_ is Found!6751) lt!293166) (not ((_ is MissingVacant!6751) lt!293166)) (not (= (index!29305 lt!293166) vacantSpotIndex!68)) (and (bvsge (index!29305 lt!293166) #b00000000000000000000000000000000) (bvslt (index!29305 lt!293166) (size!18668 a!2986)))) (or ((_ is Undefined!6751) lt!293166) (ite ((_ is Found!6751) lt!293166) (= (select (arr!18304 a!2986) (index!29303 lt!293166)) (select (arr!18304 a!2986) j!136)) (and ((_ is MissingVacant!6751) lt!293166) (= (index!29305 lt!293166) vacantSpotIndex!68) (= (select (arr!18304 a!2986) (index!29305 lt!293166)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89519 (= lt!293166 e!362606)))

(declare-fun c!72275 () Bool)

(assert (=> d!89519 (= c!72275 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!293165 () (_ BitVec 64))

(assert (=> d!89519 (= lt!293165 (select (arr!18304 a!2986) index!984))))

(assert (=> d!89519 (validMask!0 mask!3053)))

(assert (=> d!89519 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18304 a!2986) j!136) a!2986 mask!3053) lt!293166)))

(declare-fun b!634092 () Bool)

(assert (=> b!634092 (= e!362606 e!362607)))

(declare-fun c!72273 () Bool)

(assert (=> b!634092 (= c!72273 (= lt!293165 (select (arr!18304 a!2986) j!136)))))

(declare-fun b!634093 () Bool)

(declare-fun c!72274 () Bool)

(assert (=> b!634093 (= c!72274 (= lt!293165 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634093 (= e!362607 e!362605)))

(assert (= (and d!89519 c!72275) b!634091))

(assert (= (and d!89519 (not c!72275)) b!634092))

(assert (= (and b!634092 c!72273) b!634090))

(assert (= (and b!634092 (not c!72273)) b!634093))

(assert (= (and b!634093 c!72274) b!634088))

(assert (= (and b!634093 (not c!72274)) b!634089))

(assert (=> b!634089 m!608569))

(assert (=> b!634089 m!608569))

(assert (=> b!634089 m!608543))

(declare-fun m!608707 () Bool)

(assert (=> b!634089 m!608707))

(declare-fun m!608709 () Bool)

(assert (=> d!89519 m!608709))

(declare-fun m!608711 () Bool)

(assert (=> d!89519 m!608711))

(assert (=> d!89519 m!608553))

(assert (=> d!89519 m!608565))

(assert (=> b!633927 d!89519))

(declare-fun d!89521 () Bool)

(declare-fun res!410276 () Bool)

(declare-fun e!362608 () Bool)

(assert (=> d!89521 (=> res!410276 e!362608)))

(assert (=> d!89521 (= res!410276 (= (select (arr!18304 lt!293091) j!136) (select (arr!18304 a!2986) j!136)))))

(assert (=> d!89521 (= (arrayContainsKey!0 lt!293091 (select (arr!18304 a!2986) j!136) j!136) e!362608)))

(declare-fun b!634094 () Bool)

(declare-fun e!362609 () Bool)

(assert (=> b!634094 (= e!362608 e!362609)))

(declare-fun res!410277 () Bool)

(assert (=> b!634094 (=> (not res!410277) (not e!362609))))

(assert (=> b!634094 (= res!410277 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18668 lt!293091)))))

(declare-fun b!634095 () Bool)

(assert (=> b!634095 (= e!362609 (arrayContainsKey!0 lt!293091 (select (arr!18304 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89521 (not res!410276)) b!634094))

(assert (= (and b!634094 res!410277) b!634095))

(declare-fun m!608713 () Bool)

(assert (=> d!89521 m!608713))

(assert (=> b!634095 m!608543))

(declare-fun m!608715 () Bool)

(assert (=> b!634095 m!608715))

(assert (=> b!633928 d!89521))

(declare-fun b!634144 () Bool)

(declare-fun e!362635 () SeekEntryResult!6751)

(declare-fun lt!293189 () SeekEntryResult!6751)

(assert (=> b!634144 (= e!362635 (Found!6751 (index!29304 lt!293189)))))

(declare-fun b!634145 () Bool)

(declare-fun e!362634 () SeekEntryResult!6751)

(assert (=> b!634145 (= e!362634 e!362635)))

(declare-fun lt!293190 () (_ BitVec 64))

(assert (=> b!634145 (= lt!293190 (select (arr!18304 a!2986) (index!29304 lt!293189)))))

(declare-fun c!72300 () Bool)

(assert (=> b!634145 (= c!72300 (= lt!293190 k0!1786))))

(declare-fun b!634146 () Bool)

(assert (=> b!634146 (= e!362634 Undefined!6751)))

(declare-fun b!634147 () Bool)

(declare-fun e!362636 () SeekEntryResult!6751)

(assert (=> b!634147 (= e!362636 (seekKeyOrZeroReturnVacant!0 (x!58069 lt!293189) (index!29304 lt!293189) (index!29304 lt!293189) k0!1786 a!2986 mask!3053))))

(declare-fun b!634148 () Bool)

(assert (=> b!634148 (= e!362636 (MissingZero!6751 (index!29304 lt!293189)))))

(declare-fun d!89523 () Bool)

(declare-fun lt!293188 () SeekEntryResult!6751)

(assert (=> d!89523 (and (or ((_ is Undefined!6751) lt!293188) (not ((_ is Found!6751) lt!293188)) (and (bvsge (index!29303 lt!293188) #b00000000000000000000000000000000) (bvslt (index!29303 lt!293188) (size!18668 a!2986)))) (or ((_ is Undefined!6751) lt!293188) ((_ is Found!6751) lt!293188) (not ((_ is MissingZero!6751) lt!293188)) (and (bvsge (index!29302 lt!293188) #b00000000000000000000000000000000) (bvslt (index!29302 lt!293188) (size!18668 a!2986)))) (or ((_ is Undefined!6751) lt!293188) ((_ is Found!6751) lt!293188) ((_ is MissingZero!6751) lt!293188) (not ((_ is MissingVacant!6751) lt!293188)) (and (bvsge (index!29305 lt!293188) #b00000000000000000000000000000000) (bvslt (index!29305 lt!293188) (size!18668 a!2986)))) (or ((_ is Undefined!6751) lt!293188) (ite ((_ is Found!6751) lt!293188) (= (select (arr!18304 a!2986) (index!29303 lt!293188)) k0!1786) (ite ((_ is MissingZero!6751) lt!293188) (= (select (arr!18304 a!2986) (index!29302 lt!293188)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6751) lt!293188) (= (select (arr!18304 a!2986) (index!29305 lt!293188)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!89523 (= lt!293188 e!362634)))

(declare-fun c!72302 () Bool)

(assert (=> d!89523 (= c!72302 (and ((_ is Intermediate!6751) lt!293189) (undefined!7563 lt!293189)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38156 (_ BitVec 32)) SeekEntryResult!6751)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89523 (= lt!293189 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!89523 (validMask!0 mask!3053)))

(assert (=> d!89523 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!293188)))

(declare-fun b!634149 () Bool)

(declare-fun c!72301 () Bool)

(assert (=> b!634149 (= c!72301 (= lt!293190 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634149 (= e!362635 e!362636)))

(assert (= (and d!89523 c!72302) b!634146))

(assert (= (and d!89523 (not c!72302)) b!634145))

(assert (= (and b!634145 c!72300) b!634144))

(assert (= (and b!634145 (not c!72300)) b!634149))

(assert (= (and b!634149 c!72301) b!634148))

(assert (= (and b!634149 (not c!72301)) b!634147))

(declare-fun m!608737 () Bool)

(assert (=> b!634145 m!608737))

(declare-fun m!608739 () Bool)

(assert (=> b!634147 m!608739))

(assert (=> d!89523 m!608565))

(declare-fun m!608741 () Bool)

(assert (=> d!89523 m!608741))

(declare-fun m!608743 () Bool)

(assert (=> d!89523 m!608743))

(declare-fun m!608745 () Bool)

(assert (=> d!89523 m!608745))

(declare-fun m!608747 () Bool)

(assert (=> d!89523 m!608747))

(declare-fun m!608749 () Bool)

(assert (=> d!89523 m!608749))

(assert (=> d!89523 m!608747))

(assert (=> b!633929 d!89523))

(check-sat (not d!89495) (not b!634004) (not b!634063) (not bm!33374) (not d!89489) (not b!634095) (not b!634087) (not d!89523) (not b!633996) (not b!634024) (not bm!33383) (not b!634086) (not b!634089) (not b!634147) (not b!633997) (not b!634061) (not b!634085) (not d!89519) (not d!89493) (not d!89491) (not b!634030) (not b!634018) (not d!89497))
(check-sat)
