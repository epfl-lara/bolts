; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57288 () Bool)

(assert start!57288)

(declare-fun b!633861 () Bool)

(declare-datatypes ((Unit!21358 0))(
  ( (Unit!21359) )
))
(declare-fun e!362456 () Unit!21358)

(declare-fun Unit!21360 () Unit!21358)

(assert (=> b!633861 (= e!362456 Unit!21360)))

(declare-fun b!633862 () Bool)

(declare-datatypes ((array!38154 0))(
  ( (array!38155 (arr!18303 (Array (_ BitVec 32) (_ BitVec 64))) (size!18667 (_ BitVec 32))) )
))
(declare-fun lt!293063 () array!38154)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!362463 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38154)

(declare-fun arrayContainsKey!0 (array!38154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633862 (= e!362463 (arrayContainsKey!0 lt!293063 (select (arr!18303 a!2986) j!136) index!984))))

(declare-fun b!633863 () Bool)

(declare-fun e!362464 () Bool)

(declare-fun e!362457 () Bool)

(assert (=> b!633863 (= e!362464 e!362457)))

(declare-fun res!410123 () Bool)

(assert (=> b!633863 (=> (not res!410123) (not e!362457))))

(declare-datatypes ((SeekEntryResult!6750 0))(
  ( (MissingZero!6750 (index!29298 (_ BitVec 32))) (Found!6750 (index!29299 (_ BitVec 32))) (Intermediate!6750 (undefined!7562 Bool) (index!29300 (_ BitVec 32)) (x!58068 (_ BitVec 32))) (Undefined!6750) (MissingVacant!6750 (index!29301 (_ BitVec 32))) )
))
(declare-fun lt!293062 () SeekEntryResult!6750)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!633863 (= res!410123 (or (= lt!293062 (MissingZero!6750 i!1108)) (= lt!293062 (MissingVacant!6750 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38154 (_ BitVec 32)) SeekEntryResult!6750)

(assert (=> b!633863 (= lt!293062 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!633864 () Bool)

(declare-fun res!410120 () Bool)

(assert (=> b!633864 (=> (not res!410120) (not e!362464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633864 (= res!410120 (validKeyInArray!0 (select (arr!18303 a!2986) j!136)))))

(declare-fun lt!293064 () (_ BitVec 64))

(declare-fun lt!293066 () (_ BitVec 64))

(declare-fun e!362454 () Bool)

(declare-fun b!633865 () Bool)

(assert (=> b!633865 (= e!362454 (or (not (= (select (arr!18303 a!2986) j!136) lt!293066)) (not (= (select (arr!18303 a!2986) j!136) lt!293064)) (bvsge j!136 index!984) (bvsge index!984 (size!18667 a!2986)) (bvslt (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000) (bvslt (size!18667 a!2986) #b01111111111111111111111111111111)))))

(declare-fun e!362462 () Bool)

(assert (=> b!633865 e!362462))

(declare-fun res!410125 () Bool)

(assert (=> b!633865 (=> (not res!410125) (not e!362462))))

(assert (=> b!633865 (= res!410125 (= lt!293064 (select (arr!18303 a!2986) j!136)))))

(assert (=> b!633865 (= lt!293064 (select (store (arr!18303 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!633866 () Bool)

(declare-fun res!410122 () Bool)

(assert (=> b!633866 (=> (not res!410122) (not e!362457))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!633866 (= res!410122 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18303 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633867 () Bool)

(declare-fun e!362461 () Bool)

(assert (=> b!633867 (= e!362457 e!362461)))

(declare-fun res!410128 () Bool)

(assert (=> b!633867 (=> (not res!410128) (not e!362461))))

(assert (=> b!633867 (= res!410128 (= (select (store (arr!18303 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!633867 (= lt!293063 (array!38155 (store (arr!18303 a!2986) i!1108 k!1786) (size!18667 a!2986)))))

(declare-fun b!633868 () Bool)

(declare-fun e!362458 () Bool)

(assert (=> b!633868 (= e!362458 e!362463)))

(declare-fun res!410129 () Bool)

(assert (=> b!633868 (=> (not res!410129) (not e!362463))))

(assert (=> b!633868 (= res!410129 (arrayContainsKey!0 lt!293063 (select (arr!18303 a!2986) j!136) j!136))))

(declare-fun b!633869 () Bool)

(declare-fun e!362459 () Bool)

(declare-fun lt!293070 () SeekEntryResult!6750)

(declare-fun lt!293067 () SeekEntryResult!6750)

(assert (=> b!633869 (= e!362459 (= lt!293070 lt!293067))))

(declare-fun res!410130 () Bool)

(assert (=> start!57288 (=> (not res!410130) (not e!362464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57288 (= res!410130 (validMask!0 mask!3053))))

(assert (=> start!57288 e!362464))

(assert (=> start!57288 true))

(declare-fun array_inv!14077 (array!38154) Bool)

(assert (=> start!57288 (array_inv!14077 a!2986)))

(declare-fun b!633870 () Bool)

(declare-fun res!410118 () Bool)

(assert (=> b!633870 (=> (not res!410118) (not e!362464))))

(assert (=> b!633870 (= res!410118 (and (= (size!18667 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18667 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18667 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633871 () Bool)

(declare-fun Unit!21361 () Unit!21358)

(assert (=> b!633871 (= e!362456 Unit!21361)))

(assert (=> b!633871 false))

(declare-fun b!633872 () Bool)

(assert (=> b!633872 (= e!362462 e!362458)))

(declare-fun res!410127 () Bool)

(assert (=> b!633872 (=> res!410127 e!362458)))

(assert (=> b!633872 (= res!410127 (or (not (= (select (arr!18303 a!2986) j!136) lt!293066)) (not (= (select (arr!18303 a!2986) j!136) lt!293064)) (bvsge j!136 index!984)))))

(declare-fun b!633873 () Bool)

(declare-fun res!410119 () Bool)

(assert (=> b!633873 (=> (not res!410119) (not e!362457))))

(declare-datatypes ((List!12397 0))(
  ( (Nil!12394) (Cons!12393 (h!13438 (_ BitVec 64)) (t!18633 List!12397)) )
))
(declare-fun arrayNoDuplicates!0 (array!38154 (_ BitVec 32) List!12397) Bool)

(assert (=> b!633873 (= res!410119 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12394))))

(declare-fun b!633874 () Bool)

(declare-fun e!362455 () Bool)

(assert (=> b!633874 (= e!362461 e!362455)))

(declare-fun res!410124 () Bool)

(assert (=> b!633874 (=> (not res!410124) (not e!362455))))

(assert (=> b!633874 (= res!410124 (and (= lt!293070 (Found!6750 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18303 a!2986) index!984) (select (arr!18303 a!2986) j!136))) (not (= (select (arr!18303 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38154 (_ BitVec 32)) SeekEntryResult!6750)

(assert (=> b!633874 (= lt!293070 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18303 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633875 () Bool)

(declare-fun res!410126 () Bool)

(assert (=> b!633875 (=> (not res!410126) (not e!362464))))

(assert (=> b!633875 (= res!410126 (validKeyInArray!0 k!1786))))

(declare-fun b!633876 () Bool)

(declare-fun res!410132 () Bool)

(assert (=> b!633876 (=> (not res!410132) (not e!362457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38154 (_ BitVec 32)) Bool)

(assert (=> b!633876 (= res!410132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633877 () Bool)

(assert (=> b!633877 (= e!362455 (not e!362454))))

(declare-fun res!410117 () Bool)

(assert (=> b!633877 (=> res!410117 e!362454)))

(declare-fun lt!293069 () SeekEntryResult!6750)

(assert (=> b!633877 (= res!410117 (not (= lt!293069 (Found!6750 index!984))))))

(declare-fun lt!293061 () Unit!21358)

(assert (=> b!633877 (= lt!293061 e!362456)))

(declare-fun c!72239 () Bool)

(assert (=> b!633877 (= c!72239 (= lt!293069 Undefined!6750))))

(assert (=> b!633877 (= lt!293069 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293066 lt!293063 mask!3053))))

(assert (=> b!633877 e!362459))

(declare-fun res!410131 () Bool)

(assert (=> b!633877 (=> (not res!410131) (not e!362459))))

(declare-fun lt!293065 () (_ BitVec 32))

(assert (=> b!633877 (= res!410131 (= lt!293067 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293065 vacantSpotIndex!68 lt!293066 lt!293063 mask!3053)))))

(assert (=> b!633877 (= lt!293067 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293065 vacantSpotIndex!68 (select (arr!18303 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633877 (= lt!293066 (select (store (arr!18303 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293068 () Unit!21358)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38154 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21358)

(assert (=> b!633877 (= lt!293068 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293065 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633877 (= lt!293065 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!633878 () Bool)

(declare-fun res!410121 () Bool)

(assert (=> b!633878 (=> (not res!410121) (not e!362464))))

(assert (=> b!633878 (= res!410121 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!57288 res!410130) b!633870))

(assert (= (and b!633870 res!410118) b!633864))

(assert (= (and b!633864 res!410120) b!633875))

(assert (= (and b!633875 res!410126) b!633878))

(assert (= (and b!633878 res!410121) b!633863))

(assert (= (and b!633863 res!410123) b!633876))

(assert (= (and b!633876 res!410132) b!633873))

(assert (= (and b!633873 res!410119) b!633866))

(assert (= (and b!633866 res!410122) b!633867))

(assert (= (and b!633867 res!410128) b!633874))

(assert (= (and b!633874 res!410124) b!633877))

(assert (= (and b!633877 res!410131) b!633869))

(assert (= (and b!633877 c!72239) b!633871))

(assert (= (and b!633877 (not c!72239)) b!633861))

(assert (= (and b!633877 (not res!410117)) b!633865))

(assert (= (and b!633865 res!410125) b!633872))

(assert (= (and b!633872 (not res!410127)) b!633868))

(assert (= (and b!633868 res!410129) b!633862))

(declare-fun m!608493 () Bool)

(assert (=> b!633862 m!608493))

(assert (=> b!633862 m!608493))

(declare-fun m!608495 () Bool)

(assert (=> b!633862 m!608495))

(declare-fun m!608497 () Bool)

(assert (=> b!633877 m!608497))

(declare-fun m!608499 () Bool)

(assert (=> b!633877 m!608499))

(assert (=> b!633877 m!608493))

(declare-fun m!608501 () Bool)

(assert (=> b!633877 m!608501))

(assert (=> b!633877 m!608493))

(declare-fun m!608503 () Bool)

(assert (=> b!633877 m!608503))

(declare-fun m!608505 () Bool)

(assert (=> b!633877 m!608505))

(declare-fun m!608507 () Bool)

(assert (=> b!633877 m!608507))

(declare-fun m!608509 () Bool)

(assert (=> b!633877 m!608509))

(assert (=> b!633872 m!608493))

(declare-fun m!608511 () Bool)

(assert (=> start!57288 m!608511))

(declare-fun m!608513 () Bool)

(assert (=> start!57288 m!608513))

(declare-fun m!608515 () Bool)

(assert (=> b!633875 m!608515))

(assert (=> b!633867 m!608503))

(declare-fun m!608517 () Bool)

(assert (=> b!633867 m!608517))

(declare-fun m!608519 () Bool)

(assert (=> b!633876 m!608519))

(assert (=> b!633865 m!608493))

(assert (=> b!633865 m!608503))

(declare-fun m!608521 () Bool)

(assert (=> b!633865 m!608521))

(declare-fun m!608523 () Bool)

(assert (=> b!633874 m!608523))

(assert (=> b!633874 m!608493))

(assert (=> b!633874 m!608493))

(declare-fun m!608525 () Bool)

(assert (=> b!633874 m!608525))

(declare-fun m!608527 () Bool)

(assert (=> b!633866 m!608527))

(declare-fun m!608529 () Bool)

(assert (=> b!633873 m!608529))

(declare-fun m!608531 () Bool)

(assert (=> b!633863 m!608531))

(assert (=> b!633864 m!608493))

(assert (=> b!633864 m!608493))

(declare-fun m!608533 () Bool)

(assert (=> b!633864 m!608533))

(assert (=> b!633868 m!608493))

(assert (=> b!633868 m!608493))

(declare-fun m!608535 () Bool)

(assert (=> b!633868 m!608535))

(declare-fun m!608537 () Bool)

(assert (=> b!633878 m!608537))

(push 1)

(assert (not b!633864))

(assert (not b!633873))

(assert (not b!633877))

(assert (not b!633862))

(assert (not b!633874))

(assert (not b!633863))

(assert (not b!633878))

(assert (not b!633868))

(assert (not start!57288))

(assert (not b!633875))

(assert (not b!633876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89499 () Bool)

(declare-fun res!410245 () Bool)

(declare-fun e!362565 () Bool)

(assert (=> d!89499 (=> res!410245 e!362565)))

(assert (=> d!89499 (= res!410245 (= (select (arr!18303 lt!293063) index!984) (select (arr!18303 a!2986) j!136)))))

(assert (=> d!89499 (= (arrayContainsKey!0 lt!293063 (select (arr!18303 a!2986) j!136) index!984) e!362565)))

(declare-fun b!634039 () Bool)

(declare-fun e!362566 () Bool)

(assert (=> b!634039 (= e!362565 e!362566)))

(declare-fun res!410246 () Bool)

(assert (=> b!634039 (=> (not res!410246) (not e!362566))))

(assert (=> b!634039 (= res!410246 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18667 lt!293063)))))

(declare-fun b!634040 () Bool)

(assert (=> b!634040 (= e!362566 (arrayContainsKey!0 lt!293063 (select (arr!18303 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!89499 (not res!410245)) b!634039))

(assert (= (and b!634039 res!410246) b!634040))

(declare-fun m!608673 () Bool)

(assert (=> d!89499 m!608673))

(assert (=> b!634040 m!608493))

(declare-fun m!608675 () Bool)

(assert (=> b!634040 m!608675))

(assert (=> b!633862 d!89499))

(declare-fun bm!33379 () Bool)

(declare-fun call!33382 () Bool)

(declare-fun c!72268 () Bool)

(assert (=> bm!33379 (= call!33382 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72268 (Cons!12393 (select (arr!18303 a!2986) #b00000000000000000000000000000000) Nil!12394) Nil!12394)))))

(declare-fun b!634064 () Bool)

(declare-fun e!362588 () Bool)

(declare-fun e!362589 () Bool)

(assert (=> b!634064 (= e!362588 e!362589)))

(assert (=> b!634064 (= c!72268 (validKeyInArray!0 (select (arr!18303 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!634065 () Bool)

(assert (=> b!634065 (= e!362589 call!33382)))

(declare-fun b!634066 () Bool)

(declare-fun e!362586 () Bool)

(assert (=> b!634066 (= e!362586 e!362588)))

(declare-fun res!410262 () Bool)

(assert (=> b!634066 (=> (not res!410262) (not e!362588))))

(declare-fun e!362587 () Bool)

(assert (=> b!634066 (= res!410262 (not e!362587))))

(declare-fun res!410264 () Bool)

(assert (=> b!634066 (=> (not res!410264) (not e!362587))))

(assert (=> b!634066 (= res!410264 (validKeyInArray!0 (select (arr!18303 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!634067 () Bool)

(assert (=> b!634067 (= e!362589 call!33382)))

(declare-fun d!89505 () Bool)

(declare-fun res!410263 () Bool)

(assert (=> d!89505 (=> res!410263 e!362586)))

(assert (=> d!89505 (= res!410263 (bvsge #b00000000000000000000000000000000 (size!18667 a!2986)))))

(assert (=> d!89505 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12394) e!362586)))

(declare-fun b!634068 () Bool)

(declare-fun contains!3099 (List!12397 (_ BitVec 64)) Bool)

(assert (=> b!634068 (= e!362587 (contains!3099 Nil!12394 (select (arr!18303 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89505 (not res!410263)) b!634066))

(assert (= (and b!634066 res!410264) b!634068))

(assert (= (and b!634066 res!410262) b!634064))

(assert (= (and b!634064 c!72268) b!634065))

(assert (= (and b!634064 (not c!72268)) b!634067))

(assert (= (or b!634065 b!634067) bm!33379))

(declare-fun m!608683 () Bool)

(assert (=> bm!33379 m!608683))

(declare-fun m!608685 () Bool)

(assert (=> bm!33379 m!608685))

(assert (=> b!634064 m!608683))

(assert (=> b!634064 m!608683))

(declare-fun m!608687 () Bool)

(assert (=> b!634064 m!608687))

(assert (=> b!634066 m!608683))

(assert (=> b!634066 m!608683))

(assert (=> b!634066 m!608687))

(assert (=> b!634068 m!608683))

(assert (=> b!634068 m!608683))

(declare-fun m!608689 () Bool)

(assert (=> b!634068 m!608689))

(assert (=> b!633873 d!89505))

(declare-fun b!634108 () Bool)

(declare-fun e!362617 () SeekEntryResult!6750)

(declare-fun lt!293173 () SeekEntryResult!6750)

(assert (=> b!634108 (= e!362617 (Found!6750 (index!29300 lt!293173)))))

(declare-fun b!634109 () Bool)

(declare-fun e!362616 () SeekEntryResult!6750)

(assert (=> b!634109 (= e!362616 Undefined!6750)))

(declare-fun b!634110 () Bool)

(declare-fun c!72284 () Bool)

(declare-fun lt!293174 () (_ BitVec 64))

(assert (=> b!634110 (= c!72284 (= lt!293174 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!362618 () SeekEntryResult!6750)

(assert (=> b!634110 (= e!362617 e!362618)))

(declare-fun b!634111 () Bool)

(assert (=> b!634111 (= e!362616 e!362617)))

(assert (=> b!634111 (= lt!293174 (select (arr!18303 a!2986) (index!29300 lt!293173)))))

(declare-fun c!72283 () Bool)

(assert (=> b!634111 (= c!72283 (= lt!293174 k!1786))))

(declare-fun b!634112 () Bool)

(assert (=> b!634112 (= e!362618 (seekKeyOrZeroReturnVacant!0 (x!58068 lt!293173) (index!29300 lt!293173) (index!29300 lt!293173) k!1786 a!2986 mask!3053))))

(declare-fun b!634113 () Bool)

(assert (=> b!634113 (= e!362618 (MissingZero!6750 (index!29300 lt!293173)))))

(declare-fun d!89511 () Bool)

(declare-fun lt!293175 () SeekEntryResult!6750)

(assert (=> d!89511 (and (or (is-Undefined!6750 lt!293175) (not (is-Found!6750 lt!293175)) (and (bvsge (index!29299 lt!293175) #b00000000000000000000000000000000) (bvslt (index!29299 lt!293175) (size!18667 a!2986)))) (or (is-Undefined!6750 lt!293175) (is-Found!6750 lt!293175) (not (is-MissingZero!6750 lt!293175)) (and (bvsge (index!29298 lt!293175) #b00000000000000000000000000000000) (bvslt (index!29298 lt!293175) (size!18667 a!2986)))) (or (is-Undefined!6750 lt!293175) (is-Found!6750 lt!293175) (is-MissingZero!6750 lt!293175) (not (is-MissingVacant!6750 lt!293175)) (and (bvsge (index!29301 lt!293175) #b00000000000000000000000000000000) (bvslt (index!29301 lt!293175) (size!18667 a!2986)))) (or (is-Undefined!6750 lt!293175) (ite (is-Found!6750 lt!293175) (= (select (arr!18303 a!2986) (index!29299 lt!293175)) k!1786) (ite (is-MissingZero!6750 lt!293175) (= (select (arr!18303 a!2986) (index!29298 lt!293175)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6750 lt!293175) (= (select (arr!18303 a!2986) (index!29301 lt!293175)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!89511 (= lt!293175 e!362616)))

(declare-fun c!72282 () Bool)

(assert (=> d!89511 (= c!72282 (and (is-Intermediate!6750 lt!293173) (undefined!7562 lt!293173)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38154 (_ BitVec 32)) SeekEntryResult!6750)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89511 (= lt!293173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!89511 (validMask!0 mask!3053)))

(assert (=> d!89511 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!293175)))

(assert (= (and d!89511 c!72282) b!634109))

(assert (= (and d!89511 (not c!72282)) b!634111))

(assert (= (and b!634111 c!72283) b!634108))

(assert (= (and b!634111 (not c!72283)) b!634110))

(assert (= (and b!634110 c!72284) b!634113))

(assert (= (and b!634110 (not c!72284)) b!634112))

(declare-fun m!608717 () Bool)

(assert (=> b!634111 m!608717))

(declare-fun m!608719 () Bool)

(assert (=> b!634112 m!608719))

(declare-fun m!608721 () Bool)

(assert (=> d!89511 m!608721))

(declare-fun m!608723 () Bool)

(assert (=> d!89511 m!608723))

(declare-fun m!608725 () Bool)

(assert (=> d!89511 m!608725))

(declare-fun m!608727 () Bool)

(assert (=> d!89511 m!608727))

(assert (=> d!89511 m!608721))

(assert (=> d!89511 m!608511))

(declare-fun m!608729 () Bool)

(assert (=> d!89511 m!608729))

(assert (=> b!633863 d!89511))

(declare-fun b!634189 () Bool)

