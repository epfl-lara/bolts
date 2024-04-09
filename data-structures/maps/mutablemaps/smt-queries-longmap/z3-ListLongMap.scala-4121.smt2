; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56234 () Bool)

(assert start!56234)

(declare-fun b!623354 () Bool)

(declare-fun res!401864 () Bool)

(declare-fun e!357543 () Bool)

(assert (=> b!623354 (=> (not res!401864) (not e!357543))))

(declare-datatypes ((array!37667 0))(
  ( (array!37668 (arr!18076 (Array (_ BitVec 32) (_ BitVec 64))) (size!18440 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37667)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623354 (= res!401864 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623355 () Bool)

(declare-fun res!401867 () Bool)

(declare-fun e!357544 () Bool)

(assert (=> b!623355 (=> (not res!401867) (not e!357544))))

(declare-datatypes ((List!12170 0))(
  ( (Nil!12167) (Cons!12166 (h!13211 (_ BitVec 64)) (t!18406 List!12170)) )
))
(declare-fun arrayNoDuplicates!0 (array!37667 (_ BitVec 32) List!12170) Bool)

(assert (=> b!623355 (= res!401867 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12167))))

(declare-fun b!623356 () Bool)

(declare-fun res!401866 () Bool)

(assert (=> b!623356 (=> (not res!401866) (not e!357544))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37667 (_ BitVec 32)) Bool)

(assert (=> b!623356 (= res!401866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!401869 () Bool)

(assert (=> start!56234 (=> (not res!401869) (not e!357543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56234 (= res!401869 (validMask!0 mask!3053))))

(assert (=> start!56234 e!357543))

(assert (=> start!56234 true))

(declare-fun array_inv!13850 (array!37667) Bool)

(assert (=> start!56234 (array_inv!13850 a!2986)))

(declare-fun b!623357 () Bool)

(declare-fun res!401873 () Bool)

(assert (=> b!623357 (=> (not res!401873) (not e!357543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623357 (= res!401873 (validKeyInArray!0 k0!1786))))

(declare-fun b!623358 () Bool)

(declare-fun res!401870 () Bool)

(assert (=> b!623358 (=> (not res!401870) (not e!357543))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!623358 (= res!401870 (validKeyInArray!0 (select (arr!18076 a!2986) j!136)))))

(declare-fun b!623359 () Bool)

(declare-fun res!401865 () Bool)

(assert (=> b!623359 (=> (not res!401865) (not e!357544))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!623359 (= res!401865 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18076 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18076 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623360 () Bool)

(declare-fun res!401868 () Bool)

(assert (=> b!623360 (=> (not res!401868) (not e!357543))))

(assert (=> b!623360 (= res!401868 (and (= (size!18440 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18440 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18440 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623361 () Bool)

(assert (=> b!623361 (= e!357543 e!357544)))

(declare-fun res!401871 () Bool)

(assert (=> b!623361 (=> (not res!401871) (not e!357544))))

(declare-datatypes ((SeekEntryResult!6523 0))(
  ( (MissingZero!6523 (index!28375 (_ BitVec 32))) (Found!6523 (index!28376 (_ BitVec 32))) (Intermediate!6523 (undefined!7335 Bool) (index!28377 (_ BitVec 32)) (x!57164 (_ BitVec 32))) (Undefined!6523) (MissingVacant!6523 (index!28378 (_ BitVec 32))) )
))
(declare-fun lt!289242 () SeekEntryResult!6523)

(assert (=> b!623361 (= res!401871 (or (= lt!289242 (MissingZero!6523 i!1108)) (= lt!289242 (MissingVacant!6523 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37667 (_ BitVec 32)) SeekEntryResult!6523)

(assert (=> b!623361 (= lt!289242 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!623362 () Bool)

(assert (=> b!623362 (= e!357544 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!18076 a!2986) index!984) (select (arr!18076 a!2986) j!136)) (not (= index!984 j!136))))))

(declare-fun b!623363 () Bool)

(declare-fun res!401872 () Bool)

(assert (=> b!623363 (=> (not res!401872) (not e!357544))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37667 (_ BitVec 32)) SeekEntryResult!6523)

(assert (=> b!623363 (= res!401872 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18076 a!2986) j!136) a!2986 mask!3053) (Found!6523 j!136)))))

(assert (= (and start!56234 res!401869) b!623360))

(assert (= (and b!623360 res!401868) b!623358))

(assert (= (and b!623358 res!401870) b!623357))

(assert (= (and b!623357 res!401873) b!623354))

(assert (= (and b!623354 res!401864) b!623361))

(assert (= (and b!623361 res!401871) b!623356))

(assert (= (and b!623356 res!401866) b!623355))

(assert (= (and b!623355 res!401867) b!623359))

(assert (= (and b!623359 res!401865) b!623363))

(assert (= (and b!623363 res!401872) b!623362))

(declare-fun m!599263 () Bool)

(assert (=> b!623354 m!599263))

(declare-fun m!599265 () Bool)

(assert (=> b!623358 m!599265))

(assert (=> b!623358 m!599265))

(declare-fun m!599267 () Bool)

(assert (=> b!623358 m!599267))

(declare-fun m!599269 () Bool)

(assert (=> b!623361 m!599269))

(declare-fun m!599271 () Bool)

(assert (=> b!623357 m!599271))

(declare-fun m!599273 () Bool)

(assert (=> b!623355 m!599273))

(declare-fun m!599275 () Bool)

(assert (=> b!623356 m!599275))

(assert (=> b!623363 m!599265))

(assert (=> b!623363 m!599265))

(declare-fun m!599277 () Bool)

(assert (=> b!623363 m!599277))

(declare-fun m!599279 () Bool)

(assert (=> b!623359 m!599279))

(declare-fun m!599281 () Bool)

(assert (=> b!623359 m!599281))

(declare-fun m!599283 () Bool)

(assert (=> b!623359 m!599283))

(declare-fun m!599285 () Bool)

(assert (=> start!56234 m!599285))

(declare-fun m!599287 () Bool)

(assert (=> start!56234 m!599287))

(declare-fun m!599289 () Bool)

(assert (=> b!623362 m!599289))

(assert (=> b!623362 m!599265))

(check-sat (not b!623354) (not b!623355) (not start!56234) (not b!623357) (not b!623356) (not b!623361) (not b!623363) (not b!623358))
(check-sat)
(get-model)

(declare-fun b!623404 () Bool)

(declare-fun e!357562 () Bool)

(declare-fun e!357563 () Bool)

(assert (=> b!623404 (= e!357562 e!357563)))

(declare-fun c!71114 () Bool)

(assert (=> b!623404 (= c!71114 (validKeyInArray!0 (select (arr!18076 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!623405 () Bool)

(declare-fun e!357564 () Bool)

(declare-fun contains!3076 (List!12170 (_ BitVec 64)) Bool)

(assert (=> b!623405 (= e!357564 (contains!3076 Nil!12167 (select (arr!18076 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33176 () Bool)

(declare-fun call!33179 () Bool)

(assert (=> bm!33176 (= call!33179 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71114 (Cons!12166 (select (arr!18076 a!2986) #b00000000000000000000000000000000) Nil!12167) Nil!12167)))))

(declare-fun b!623406 () Bool)

(assert (=> b!623406 (= e!357563 call!33179)))

(declare-fun b!623407 () Bool)

(assert (=> b!623407 (= e!357563 call!33179)))

(declare-fun b!623408 () Bool)

(declare-fun e!357565 () Bool)

(assert (=> b!623408 (= e!357565 e!357562)))

(declare-fun res!401910 () Bool)

(assert (=> b!623408 (=> (not res!401910) (not e!357562))))

(assert (=> b!623408 (= res!401910 (not e!357564))))

(declare-fun res!401912 () Bool)

(assert (=> b!623408 (=> (not res!401912) (not e!357564))))

(assert (=> b!623408 (= res!401912 (validKeyInArray!0 (select (arr!18076 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!88549 () Bool)

(declare-fun res!401911 () Bool)

(assert (=> d!88549 (=> res!401911 e!357565)))

(assert (=> d!88549 (= res!401911 (bvsge #b00000000000000000000000000000000 (size!18440 a!2986)))))

(assert (=> d!88549 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12167) e!357565)))

(assert (= (and d!88549 (not res!401911)) b!623408))

(assert (= (and b!623408 res!401912) b!623405))

(assert (= (and b!623408 res!401910) b!623404))

(assert (= (and b!623404 c!71114) b!623407))

(assert (= (and b!623404 (not c!71114)) b!623406))

(assert (= (or b!623407 b!623406) bm!33176))

(declare-fun m!599319 () Bool)

(assert (=> b!623404 m!599319))

(assert (=> b!623404 m!599319))

(declare-fun m!599321 () Bool)

(assert (=> b!623404 m!599321))

(assert (=> b!623405 m!599319))

(assert (=> b!623405 m!599319))

(declare-fun m!599323 () Bool)

(assert (=> b!623405 m!599323))

(assert (=> bm!33176 m!599319))

(declare-fun m!599325 () Bool)

(assert (=> bm!33176 m!599325))

(assert (=> b!623408 m!599319))

(assert (=> b!623408 m!599319))

(assert (=> b!623408 m!599321))

(assert (=> b!623355 d!88549))

(declare-fun b!623428 () Bool)

(declare-fun e!357579 () SeekEntryResult!6523)

(declare-fun lt!289252 () SeekEntryResult!6523)

(assert (=> b!623428 (= e!357579 (MissingZero!6523 (index!28377 lt!289252)))))

(declare-fun b!623427 () Bool)

(declare-fun c!71123 () Bool)

(declare-fun lt!289254 () (_ BitVec 64))

(assert (=> b!623427 (= c!71123 (= lt!289254 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!357580 () SeekEntryResult!6523)

(assert (=> b!623427 (= e!357580 e!357579)))

(declare-fun d!88551 () Bool)

(declare-fun lt!289253 () SeekEntryResult!6523)

(get-info :version)

(assert (=> d!88551 (and (or ((_ is Undefined!6523) lt!289253) (not ((_ is Found!6523) lt!289253)) (and (bvsge (index!28376 lt!289253) #b00000000000000000000000000000000) (bvslt (index!28376 lt!289253) (size!18440 a!2986)))) (or ((_ is Undefined!6523) lt!289253) ((_ is Found!6523) lt!289253) (not ((_ is MissingZero!6523) lt!289253)) (and (bvsge (index!28375 lt!289253) #b00000000000000000000000000000000) (bvslt (index!28375 lt!289253) (size!18440 a!2986)))) (or ((_ is Undefined!6523) lt!289253) ((_ is Found!6523) lt!289253) ((_ is MissingZero!6523) lt!289253) (not ((_ is MissingVacant!6523) lt!289253)) (and (bvsge (index!28378 lt!289253) #b00000000000000000000000000000000) (bvslt (index!28378 lt!289253) (size!18440 a!2986)))) (or ((_ is Undefined!6523) lt!289253) (ite ((_ is Found!6523) lt!289253) (= (select (arr!18076 a!2986) (index!28376 lt!289253)) k0!1786) (ite ((_ is MissingZero!6523) lt!289253) (= (select (arr!18076 a!2986) (index!28375 lt!289253)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6523) lt!289253) (= (select (arr!18076 a!2986) (index!28378 lt!289253)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!357578 () SeekEntryResult!6523)

(assert (=> d!88551 (= lt!289253 e!357578)))

(declare-fun c!71121 () Bool)

(assert (=> d!88551 (= c!71121 (and ((_ is Intermediate!6523) lt!289252) (undefined!7335 lt!289252)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37667 (_ BitVec 32)) SeekEntryResult!6523)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88551 (= lt!289252 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!88551 (validMask!0 mask!3053)))

(assert (=> d!88551 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!289253)))

(declare-fun b!623429 () Bool)

(assert (=> b!623429 (= e!357580 (Found!6523 (index!28377 lt!289252)))))

(declare-fun b!623430 () Bool)

(assert (=> b!623430 (= e!357579 (seekKeyOrZeroReturnVacant!0 (x!57164 lt!289252) (index!28377 lt!289252) (index!28377 lt!289252) k0!1786 a!2986 mask!3053))))

(declare-fun b!623431 () Bool)

(assert (=> b!623431 (= e!357578 e!357580)))

(assert (=> b!623431 (= lt!289254 (select (arr!18076 a!2986) (index!28377 lt!289252)))))

(declare-fun c!71122 () Bool)

(assert (=> b!623431 (= c!71122 (= lt!289254 k0!1786))))

(declare-fun b!623432 () Bool)

(assert (=> b!623432 (= e!357578 Undefined!6523)))

(assert (= (and d!88551 c!71121) b!623432))

(assert (= (and d!88551 (not c!71121)) b!623431))

(assert (= (and b!623431 c!71122) b!623429))

(assert (= (and b!623431 (not c!71122)) b!623427))

(assert (= (and b!623427 c!71123) b!623428))

(assert (= (and b!623427 (not c!71123)) b!623430))

(declare-fun m!599331 () Bool)

(assert (=> d!88551 m!599331))

(declare-fun m!599333 () Bool)

(assert (=> d!88551 m!599333))

(assert (=> d!88551 m!599331))

(assert (=> d!88551 m!599285))

(declare-fun m!599335 () Bool)

(assert (=> d!88551 m!599335))

(declare-fun m!599337 () Bool)

(assert (=> d!88551 m!599337))

(declare-fun m!599339 () Bool)

(assert (=> d!88551 m!599339))

(declare-fun m!599341 () Bool)

(assert (=> b!623430 m!599341))

(declare-fun m!599343 () Bool)

(assert (=> b!623431 m!599343))

(assert (=> b!623361 d!88551))

(declare-fun d!88557 () Bool)

(assert (=> d!88557 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56234 d!88557))

(declare-fun d!88561 () Bool)

(assert (=> d!88561 (= (array_inv!13850 a!2986) (bvsge (size!18440 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56234 d!88561))

(declare-fun d!88563 () Bool)

(declare-fun res!401923 () Bool)

(declare-fun e!357594 () Bool)

(assert (=> d!88563 (=> res!401923 e!357594)))

(assert (=> d!88563 (= res!401923 (= (select (arr!18076 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!88563 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!357594)))

(declare-fun b!623455 () Bool)

(declare-fun e!357595 () Bool)

(assert (=> b!623455 (= e!357594 e!357595)))

(declare-fun res!401924 () Bool)

(assert (=> b!623455 (=> (not res!401924) (not e!357595))))

(assert (=> b!623455 (= res!401924 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18440 a!2986)))))

(declare-fun b!623456 () Bool)

(assert (=> b!623456 (= e!357595 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88563 (not res!401923)) b!623455))

(assert (= (and b!623455 res!401924) b!623456))

(assert (=> d!88563 m!599319))

(declare-fun m!599359 () Bool)

(assert (=> b!623456 m!599359))

(assert (=> b!623354 d!88563))

(declare-fun b!623515 () Bool)

(declare-fun e!357628 () SeekEntryResult!6523)

(assert (=> b!623515 (= e!357628 Undefined!6523)))

(declare-fun d!88571 () Bool)

(declare-fun lt!289284 () SeekEntryResult!6523)

(assert (=> d!88571 (and (or ((_ is Undefined!6523) lt!289284) (not ((_ is Found!6523) lt!289284)) (and (bvsge (index!28376 lt!289284) #b00000000000000000000000000000000) (bvslt (index!28376 lt!289284) (size!18440 a!2986)))) (or ((_ is Undefined!6523) lt!289284) ((_ is Found!6523) lt!289284) (not ((_ is MissingVacant!6523) lt!289284)) (not (= (index!28378 lt!289284) vacantSpotIndex!68)) (and (bvsge (index!28378 lt!289284) #b00000000000000000000000000000000) (bvslt (index!28378 lt!289284) (size!18440 a!2986)))) (or ((_ is Undefined!6523) lt!289284) (ite ((_ is Found!6523) lt!289284) (= (select (arr!18076 a!2986) (index!28376 lt!289284)) (select (arr!18076 a!2986) j!136)) (and ((_ is MissingVacant!6523) lt!289284) (= (index!28378 lt!289284) vacantSpotIndex!68) (= (select (arr!18076 a!2986) (index!28378 lt!289284)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88571 (= lt!289284 e!357628)))

(declare-fun c!71158 () Bool)

(assert (=> d!88571 (= c!71158 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!289283 () (_ BitVec 64))

(assert (=> d!88571 (= lt!289283 (select (arr!18076 a!2986) index!984))))

(assert (=> d!88571 (validMask!0 mask!3053)))

(assert (=> d!88571 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18076 a!2986) j!136) a!2986 mask!3053) lt!289284)))

(declare-fun e!357626 () SeekEntryResult!6523)

(declare-fun b!623516 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623516 (= e!357626 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18076 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!623517 () Bool)

(declare-fun e!357627 () SeekEntryResult!6523)

(assert (=> b!623517 (= e!357627 (Found!6523 index!984))))

(declare-fun b!623518 () Bool)

(assert (=> b!623518 (= e!357626 (MissingVacant!6523 vacantSpotIndex!68))))

(declare-fun b!623519 () Bool)

(declare-fun c!71157 () Bool)

(assert (=> b!623519 (= c!71157 (= lt!289283 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!623519 (= e!357627 e!357626)))

(declare-fun b!623520 () Bool)

(assert (=> b!623520 (= e!357628 e!357627)))

(declare-fun c!71159 () Bool)

(assert (=> b!623520 (= c!71159 (= lt!289283 (select (arr!18076 a!2986) j!136)))))

(assert (= (and d!88571 c!71158) b!623515))

(assert (= (and d!88571 (not c!71158)) b!623520))

(assert (= (and b!623520 c!71159) b!623517))

(assert (= (and b!623520 (not c!71159)) b!623519))

(assert (= (and b!623519 c!71157) b!623518))

(assert (= (and b!623519 (not c!71157)) b!623516))

(declare-fun m!599383 () Bool)

(assert (=> d!88571 m!599383))

(declare-fun m!599385 () Bool)

(assert (=> d!88571 m!599385))

(assert (=> d!88571 m!599289))

(assert (=> d!88571 m!599285))

(declare-fun m!599387 () Bool)

(assert (=> b!623516 m!599387))

(assert (=> b!623516 m!599387))

(assert (=> b!623516 m!599265))

(declare-fun m!599389 () Bool)

(assert (=> b!623516 m!599389))

(assert (=> b!623363 d!88571))

(declare-fun d!88579 () Bool)

(assert (=> d!88579 (= (validKeyInArray!0 (select (arr!18076 a!2986) j!136)) (and (not (= (select (arr!18076 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18076 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!623358 d!88579))

(declare-fun b!623540 () Bool)

(declare-fun e!357649 () Bool)

(declare-fun call!33185 () Bool)

(assert (=> b!623540 (= e!357649 call!33185)))

(declare-fun bm!33182 () Bool)

(assert (=> bm!33182 (= call!33185 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!88581 () Bool)

(declare-fun res!401944 () Bool)

(declare-fun e!357647 () Bool)

(assert (=> d!88581 (=> res!401944 e!357647)))

(assert (=> d!88581 (= res!401944 (bvsge #b00000000000000000000000000000000 (size!18440 a!2986)))))

(assert (=> d!88581 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!357647)))

(declare-fun b!623541 () Bool)

(declare-fun e!357648 () Bool)

(assert (=> b!623541 (= e!357648 call!33185)))

(declare-fun b!623542 () Bool)

(assert (=> b!623542 (= e!357647 e!357649)))

(declare-fun c!71165 () Bool)

(assert (=> b!623542 (= c!71165 (validKeyInArray!0 (select (arr!18076 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!623543 () Bool)

(assert (=> b!623543 (= e!357649 e!357648)))

(declare-fun lt!289292 () (_ BitVec 64))

(assert (=> b!623543 (= lt!289292 (select (arr!18076 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21040 0))(
  ( (Unit!21041) )
))
(declare-fun lt!289293 () Unit!21040)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37667 (_ BitVec 64) (_ BitVec 32)) Unit!21040)

(assert (=> b!623543 (= lt!289293 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!289292 #b00000000000000000000000000000000))))

(assert (=> b!623543 (arrayContainsKey!0 a!2986 lt!289292 #b00000000000000000000000000000000)))

(declare-fun lt!289291 () Unit!21040)

(assert (=> b!623543 (= lt!289291 lt!289293)))

(declare-fun res!401945 () Bool)

(assert (=> b!623543 (= res!401945 (= (seekEntryOrOpen!0 (select (arr!18076 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6523 #b00000000000000000000000000000000)))))

(assert (=> b!623543 (=> (not res!401945) (not e!357648))))

(assert (= (and d!88581 (not res!401944)) b!623542))

(assert (= (and b!623542 c!71165) b!623543))

(assert (= (and b!623542 (not c!71165)) b!623540))

(assert (= (and b!623543 res!401945) b!623541))

(assert (= (or b!623541 b!623540) bm!33182))

(declare-fun m!599401 () Bool)

(assert (=> bm!33182 m!599401))

(assert (=> b!623542 m!599319))

(assert (=> b!623542 m!599319))

(assert (=> b!623542 m!599321))

(assert (=> b!623543 m!599319))

(declare-fun m!599403 () Bool)

(assert (=> b!623543 m!599403))

(declare-fun m!599405 () Bool)

(assert (=> b!623543 m!599405))

(assert (=> b!623543 m!599319))

(declare-fun m!599407 () Bool)

(assert (=> b!623543 m!599407))

(assert (=> b!623356 d!88581))

(declare-fun d!88591 () Bool)

(assert (=> d!88591 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!623357 d!88591))

(check-sat (not b!623404) (not d!88551) (not b!623543) (not b!623516) (not bm!33176) (not b!623430) (not b!623408) (not b!623542) (not d!88571) (not b!623456) (not bm!33182) (not b!623405))
(check-sat)
