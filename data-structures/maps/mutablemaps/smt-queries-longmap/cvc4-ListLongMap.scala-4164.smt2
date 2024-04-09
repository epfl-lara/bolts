; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56686 () Bool)

(assert start!56686)

(declare-fun b!628072 () Bool)

(declare-fun e!359360 () Bool)

(declare-fun e!359361 () Bool)

(assert (=> b!628072 (= e!359360 e!359361)))

(declare-fun res!405957 () Bool)

(assert (=> b!628072 (=> (not res!405957) (not e!359361))))

(declare-datatypes ((SeekEntryResult!6653 0))(
  ( (MissingZero!6653 (index!28895 (_ BitVec 32))) (Found!6653 (index!28896 (_ BitVec 32))) (Intermediate!6653 (undefined!7465 Bool) (index!28897 (_ BitVec 32)) (x!57650 (_ BitVec 32))) (Undefined!6653) (MissingVacant!6653 (index!28898 (_ BitVec 32))) )
))
(declare-fun lt!290376 () SeekEntryResult!6653)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!628072 (= res!405957 (or (= lt!290376 (MissingZero!6653 i!1108)) (= lt!290376 (MissingVacant!6653 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37939 0))(
  ( (array!37940 (arr!18206 (Array (_ BitVec 32) (_ BitVec 64))) (size!18570 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37939)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37939 (_ BitVec 32)) SeekEntryResult!6653)

(assert (=> b!628072 (= lt!290376 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!628073 () Bool)

(declare-fun res!405959 () Bool)

(assert (=> b!628073 (=> (not res!405959) (not e!359361))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!628073 (= res!405959 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18206 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18206 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628074 () Bool)

(declare-fun res!405960 () Bool)

(assert (=> b!628074 (=> (not res!405960) (not e!359361))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!628074 (= res!405960 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18206 a!2986) index!984) (select (arr!18206 a!2986) j!136))) (not (= (select (arr!18206 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!628075 () Bool)

(declare-fun res!405962 () Bool)

(assert (=> b!628075 (=> (not res!405962) (not e!359361))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37939 (_ BitVec 32)) Bool)

(assert (=> b!628075 (= res!405962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628076 () Bool)

(declare-fun res!405953 () Bool)

(assert (=> b!628076 (=> (not res!405953) (not e!359360))))

(assert (=> b!628076 (= res!405953 (and (= (size!18570 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18570 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18570 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628077 () Bool)

(declare-fun res!405961 () Bool)

(assert (=> b!628077 (=> (not res!405961) (not e!359360))))

(declare-fun arrayContainsKey!0 (array!37939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628077 (= res!405961 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!405952 () Bool)

(assert (=> start!56686 (=> (not res!405952) (not e!359360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56686 (= res!405952 (validMask!0 mask!3053))))

(assert (=> start!56686 e!359360))

(assert (=> start!56686 true))

(declare-fun array_inv!13980 (array!37939) Bool)

(assert (=> start!56686 (array_inv!13980 a!2986)))

(declare-fun b!628078 () Bool)

(declare-fun lt!290375 () (_ BitVec 32))

(assert (=> b!628078 (= e!359361 (or (bvslt lt!290375 #b00000000000000000000000000000000) (bvsge lt!290375 (bvadd mask!3053 #b00000000000000000000000000000001))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628078 (= lt!290375 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628079 () Bool)

(declare-fun res!405958 () Bool)

(assert (=> b!628079 (=> (not res!405958) (not e!359361))))

(declare-datatypes ((List!12300 0))(
  ( (Nil!12297) (Cons!12296 (h!13341 (_ BitVec 64)) (t!18536 List!12300)) )
))
(declare-fun arrayNoDuplicates!0 (array!37939 (_ BitVec 32) List!12300) Bool)

(assert (=> b!628079 (= res!405958 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12297))))

(declare-fun b!628080 () Bool)

(declare-fun res!405954 () Bool)

(assert (=> b!628080 (=> (not res!405954) (not e!359360))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628080 (= res!405954 (validKeyInArray!0 k!1786))))

(declare-fun b!628081 () Bool)

(declare-fun res!405955 () Bool)

(assert (=> b!628081 (=> (not res!405955) (not e!359361))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37939 (_ BitVec 32)) SeekEntryResult!6653)

(assert (=> b!628081 (= res!405955 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18206 a!2986) j!136) a!2986 mask!3053) (Found!6653 j!136)))))

(declare-fun b!628082 () Bool)

(declare-fun res!405956 () Bool)

(assert (=> b!628082 (=> (not res!405956) (not e!359360))))

(assert (=> b!628082 (= res!405956 (validKeyInArray!0 (select (arr!18206 a!2986) j!136)))))

(assert (= (and start!56686 res!405952) b!628076))

(assert (= (and b!628076 res!405953) b!628082))

(assert (= (and b!628082 res!405956) b!628080))

(assert (= (and b!628080 res!405954) b!628077))

(assert (= (and b!628077 res!405961) b!628072))

(assert (= (and b!628072 res!405957) b!628075))

(assert (= (and b!628075 res!405962) b!628079))

(assert (= (and b!628079 res!405958) b!628073))

(assert (= (and b!628073 res!405959) b!628081))

(assert (= (and b!628081 res!405955) b!628074))

(assert (= (and b!628074 res!405960) b!628078))

(declare-fun m!603363 () Bool)

(assert (=> b!628080 m!603363))

(declare-fun m!603365 () Bool)

(assert (=> b!628082 m!603365))

(assert (=> b!628082 m!603365))

(declare-fun m!603367 () Bool)

(assert (=> b!628082 m!603367))

(declare-fun m!603369 () Bool)

(assert (=> b!628072 m!603369))

(declare-fun m!603371 () Bool)

(assert (=> b!628077 m!603371))

(declare-fun m!603373 () Bool)

(assert (=> b!628074 m!603373))

(assert (=> b!628074 m!603365))

(assert (=> b!628081 m!603365))

(assert (=> b!628081 m!603365))

(declare-fun m!603375 () Bool)

(assert (=> b!628081 m!603375))

(declare-fun m!603377 () Bool)

(assert (=> b!628075 m!603377))

(declare-fun m!603379 () Bool)

(assert (=> b!628073 m!603379))

(declare-fun m!603381 () Bool)

(assert (=> b!628073 m!603381))

(declare-fun m!603383 () Bool)

(assert (=> b!628073 m!603383))

(declare-fun m!603385 () Bool)

(assert (=> start!56686 m!603385))

(declare-fun m!603387 () Bool)

(assert (=> start!56686 m!603387))

(declare-fun m!603389 () Bool)

(assert (=> b!628078 m!603389))

(declare-fun m!603391 () Bool)

(assert (=> b!628079 m!603391))

(push 1)

(assert (not b!628079))

(assert (not b!628077))

(assert (not b!628072))

(assert (not start!56686))

(assert (not b!628075))

(assert (not b!628080))

(assert (not b!628081))

(assert (not b!628082))

(assert (not b!628078))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!628108 () Bool)

(declare-fun e!359386 () Bool)

(declare-fun contains!3084 (List!12300 (_ BitVec 64)) Bool)

(assert (=> b!628108 (= e!359386 (contains!3084 Nil!12297 (select (arr!18206 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33251 () Bool)

(declare-fun call!33254 () Bool)

(declare-fun c!71432 () Bool)

(assert (=> bm!33251 (= call!33254 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71432 (Cons!12296 (select (arr!18206 a!2986) #b00000000000000000000000000000000) Nil!12297) Nil!12297)))))

(declare-fun b!628109 () Bool)

(declare-fun e!359385 () Bool)

(assert (=> b!628109 (= e!359385 call!33254)))

(declare-fun b!628110 () Bool)

(declare-fun e!359384 () Bool)

(assert (=> b!628110 (= e!359384 e!359385)))

(assert (=> b!628110 (= c!71432 (validKeyInArray!0 (select (arr!18206 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628111 () Bool)

(declare-fun e!359383 () Bool)

(assert (=> b!628111 (= e!359383 e!359384)))

(declare-fun res!405980 () Bool)

(assert (=> b!628111 (=> (not res!405980) (not e!359384))))

(assert (=> b!628111 (= res!405980 (not e!359386))))

(declare-fun res!405978 () Bool)

(assert (=> b!628111 (=> (not res!405978) (not e!359386))))

(assert (=> b!628111 (= res!405978 (validKeyInArray!0 (select (arr!18206 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628112 () Bool)

(assert (=> b!628112 (= e!359385 call!33254)))

(declare-fun d!88865 () Bool)

(declare-fun res!405979 () Bool)

(assert (=> d!88865 (=> res!405979 e!359383)))

(assert (=> d!88865 (= res!405979 (bvsge #b00000000000000000000000000000000 (size!18570 a!2986)))))

(assert (=> d!88865 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12297) e!359383)))

(assert (= (and d!88865 (not res!405979)) b!628111))

(assert (= (and b!628111 res!405978) b!628108))

(assert (= (and b!628111 res!405980) b!628110))

(assert (= (and b!628110 c!71432) b!628109))

(assert (= (and b!628110 (not c!71432)) b!628112))

(assert (= (or b!628109 b!628112) bm!33251))

(declare-fun m!603403 () Bool)

(assert (=> b!628108 m!603403))

(assert (=> b!628108 m!603403))

(declare-fun m!603405 () Bool)

(assert (=> b!628108 m!603405))

(assert (=> bm!33251 m!603403))

(declare-fun m!603407 () Bool)

(assert (=> bm!33251 m!603407))

(assert (=> b!628110 m!603403))

(assert (=> b!628110 m!603403))

(declare-fun m!603409 () Bool)

(assert (=> b!628110 m!603409))

(assert (=> b!628111 m!603403))

(assert (=> b!628111 m!603403))

(assert (=> b!628111 m!603409))

(assert (=> b!628079 d!88865))

(declare-fun b!628182 () Bool)

(declare-fun c!71462 () Bool)

(declare-fun lt!290401 () (_ BitVec 64))

(assert (=> b!628182 (= c!71462 (= lt!290401 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!359429 () SeekEntryResult!6653)

(declare-fun e!359430 () SeekEntryResult!6653)

(assert (=> b!628182 (= e!359429 e!359430)))

(declare-fun b!628183 () Bool)

(declare-fun e!359431 () SeekEntryResult!6653)

(assert (=> b!628183 (= e!359431 e!359429)))

(declare-fun lt!290403 () SeekEntryResult!6653)

(assert (=> b!628183 (= lt!290401 (select (arr!18206 a!2986) (index!28897 lt!290403)))))

(declare-fun c!71460 () Bool)

(assert (=> b!628183 (= c!71460 (= lt!290401 k!1786))))

(declare-fun b!628184 () Bool)

(assert (=> b!628184 (= e!359430 (seekKeyOrZeroReturnVacant!0 (x!57650 lt!290403) (index!28897 lt!290403) (index!28897 lt!290403) k!1786 a!2986 mask!3053))))

(declare-fun d!88873 () Bool)

(declare-fun lt!290402 () SeekEntryResult!6653)

(assert (=> d!88873 (and (or (is-Undefined!6653 lt!290402) (not (is-Found!6653 lt!290402)) (and (bvsge (index!28896 lt!290402) #b00000000000000000000000000000000) (bvslt (index!28896 lt!290402) (size!18570 a!2986)))) (or (is-Undefined!6653 lt!290402) (is-Found!6653 lt!290402) (not (is-MissingZero!6653 lt!290402)) (and (bvsge (index!28895 lt!290402) #b00000000000000000000000000000000) (bvslt (index!28895 lt!290402) (size!18570 a!2986)))) (or (is-Undefined!6653 lt!290402) (is-Found!6653 lt!290402) (is-MissingZero!6653 lt!290402) (not (is-MissingVacant!6653 lt!290402)) (and (bvsge (index!28898 lt!290402) #b00000000000000000000000000000000) (bvslt (index!28898 lt!290402) (size!18570 a!2986)))) (or (is-Undefined!6653 lt!290402) (ite (is-Found!6653 lt!290402) (= (select (arr!18206 a!2986) (index!28896 lt!290402)) k!1786) (ite (is-MissingZero!6653 lt!290402) (= (select (arr!18206 a!2986) (index!28895 lt!290402)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6653 lt!290402) (= (select (arr!18206 a!2986) (index!28898 lt!290402)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88873 (= lt!290402 e!359431)))

(declare-fun c!71461 () Bool)

(assert (=> d!88873 (= c!71461 (and (is-Intermediate!6653 lt!290403) (undefined!7465 lt!290403)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37939 (_ BitVec 32)) SeekEntryResult!6653)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88873 (= lt!290403 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!88873 (validMask!0 mask!3053)))

(assert (=> d!88873 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!290402)))

(declare-fun b!628185 () Bool)

(assert (=> b!628185 (= e!359429 (Found!6653 (index!28897 lt!290403)))))

(declare-fun b!628186 () Bool)

(assert (=> b!628186 (= e!359430 (MissingZero!6653 (index!28897 lt!290403)))))

(declare-fun b!628187 () Bool)

(assert (=> b!628187 (= e!359431 Undefined!6653)))

(assert (= (and d!88873 c!71461) b!628187))

(assert (= (and d!88873 (not c!71461)) b!628183))

(assert (= (and b!628183 c!71460) b!628185))

(assert (= (and b!628183 (not c!71460)) b!628182))

(assert (= (and b!628182 c!71462) b!628186))

(assert (= (and b!628182 (not c!71462)) b!628184))

(declare-fun m!603441 () Bool)

(assert (=> b!628183 m!603441))

(declare-fun m!603443 () Bool)

(assert (=> b!628184 m!603443))

(declare-fun m!603445 () Bool)

(assert (=> d!88873 m!603445))

(assert (=> d!88873 m!603385))

(declare-fun m!603447 () Bool)

(assert (=> d!88873 m!603447))

(assert (=> d!88873 m!603447))

(declare-fun m!603449 () Bool)

(assert (=> d!88873 m!603449))

(declare-fun m!603451 () Bool)

(assert (=> d!88873 m!603451))

(declare-fun m!603453 () Bool)

(assert (=> d!88873 m!603453))

(assert (=> b!628072 d!88873))

(declare-fun d!88883 () Bool)

(declare-fun res!406004 () Bool)

(declare-fun e!359442 () Bool)

(assert (=> d!88883 (=> res!406004 e!359442)))

(assert (=> d!88883 (= res!406004 (= (select (arr!18206 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!88883 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!359442)))

(declare-fun b!628200 () Bool)

(declare-fun e!359443 () Bool)

(assert (=> b!628200 (= e!359442 e!359443)))

(declare-fun res!406005 () Bool)

(assert (=> b!628200 (=> (not res!406005) (not e!359443))))

(assert (=> b!628200 (= res!406005 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18570 a!2986)))))

(declare-fun b!628201 () Bool)

(assert (=> b!628201 (= e!359443 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88883 (not res!406004)) b!628200))

(assert (= (and b!628200 res!406005) b!628201))

(assert (=> d!88883 m!603403))

(declare-fun m!603455 () Bool)

(assert (=> b!628201 m!603455))

(assert (=> b!628077 d!88883))

(declare-fun d!88887 () Bool)

(declare-fun lt!290415 () (_ BitVec 32))

(assert (=> d!88887 (and (bvsge lt!290415 #b00000000000000000000000000000000) (bvslt lt!290415 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88887 (= lt!290415 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88887 (validMask!0 mask!3053)))

(assert (=> d!88887 (= (nextIndex!0 index!984 x!910 mask!3053) lt!290415)))

(declare-fun bs!18951 () Bool)

(assert (= bs!18951 d!88887))

(declare-fun m!603465 () Bool)

(assert (=> bs!18951 m!603465))

(assert (=> bs!18951 m!603385))

(assert (=> b!628078 d!88887))

(declare-fun b!628248 () Bool)

(declare-fun e!359474 () SeekEntryResult!6653)

(declare-fun e!359475 () SeekEntryResult!6653)

(assert (=> b!628248 (= e!359474 e!359475)))

(declare-fun c!71483 () Bool)

(declare-fun lt!290434 () (_ BitVec 64))

(assert (=> b!628248 (= c!71483 (= lt!290434 (select (arr!18206 a!2986) j!136)))))

(declare-fun b!628249 () Bool)

(declare-fun e!359476 () SeekEntryResult!6653)

(assert (=> b!628249 (= e!359476 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18206 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!628251 () Bool)

(declare-fun c!71482 () Bool)

(assert (=> b!628251 (= c!71482 (= lt!290434 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!628251 (= e!359475 e!359476)))

(declare-fun b!628252 () Bool)

(assert (=> b!628252 (= e!359475 (Found!6653 index!984))))

(declare-fun b!628253 () Bool)

(assert (=> b!628253 (= e!359474 Undefined!6653)))

(declare-fun d!88893 () Bool)

(declare-fun lt!290433 () SeekEntryResult!6653)

(assert (=> d!88893 (and (or (is-Undefined!6653 lt!290433) (not (is-Found!6653 lt!290433)) (and (bvsge (index!28896 lt!290433) #b00000000000000000000000000000000) (bvslt (index!28896 lt!290433) (size!18570 a!2986)))) (or (is-Undefined!6653 lt!290433) (is-Found!6653 lt!290433) (not (is-MissingVacant!6653 lt!290433)) (not (= (index!28898 lt!290433) vacantSpotIndex!68)) (and (bvsge (index!28898 lt!290433) #b00000000000000000000000000000000) (bvslt (index!28898 lt!290433) (size!18570 a!2986)))) (or (is-Undefined!6653 lt!290433) (ite (is-Found!6653 lt!290433) (= (select (arr!18206 a!2986) (index!28896 lt!290433)) (select (arr!18206 a!2986) j!136)) (and (is-MissingVacant!6653 lt!290433) (= (index!28898 lt!290433) vacantSpotIndex!68) (= (select (arr!18206 a!2986) (index!28898 lt!290433)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88893 (= lt!290433 e!359474)))

(declare-fun c!71481 () Bool)

(assert (=> d!88893 (= c!71481 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88893 (= lt!290434 (select (arr!18206 a!2986) index!984))))

(assert (=> d!88893 (validMask!0 mask!3053)))

(assert (=> d!88893 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18206 a!2986) j!136) a!2986 mask!3053) lt!290433)))

(declare-fun b!628250 () Bool)

(assert (=> b!628250 (= e!359476 (MissingVacant!6653 vacantSpotIndex!68))))

(assert (= (and d!88893 c!71481) b!628253))

(assert (= (and d!88893 (not c!71481)) b!628248))

(assert (= (and b!628248 c!71483) b!628252))

(assert (= (and b!628248 (not c!71483)) b!628251))

(assert (= (and b!628251 c!71482) b!628250))

(assert (= (and b!628251 (not c!71482)) b!628249))

(assert (=> b!628249 m!603389))

(assert (=> b!628249 m!603389))

(assert (=> b!628249 m!603365))

(declare-fun m!603477 () Bool)

(assert (=> b!628249 m!603477))

(declare-fun m!603479 () Bool)

(assert (=> d!88893 m!603479))

(declare-fun m!603481 () Bool)

(assert (=> d!88893 m!603481))

(assert (=> d!88893 m!603373))

(assert (=> d!88893 m!603385))

(assert (=> b!628081 d!88893))

(declare-fun d!88903 () Bool)

(assert (=> d!88903 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56686 d!88903))

(declare-fun d!88907 () Bool)

(assert (=> d!88907 (= (array_inv!13980 a!2986) (bvsge (size!18570 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56686 d!88907))

(declare-fun d!88909 () Bool)

(assert (=> d!88909 (= (validKeyInArray!0 (select (arr!18206 a!2986) j!136)) (and (not (= (select (arr!18206 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18206 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!628082 d!88909))

(declare-fun d!88911 () Bool)

(assert (=> d!88911 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!628080 d!88911))

(declare-fun b!628280 () Bool)

(declare-fun e!359492 () Bool)

(declare-fun call!33266 () Bool)

(assert (=> b!628280 (= e!359492 call!33266)))

(declare-fun bm!33263 () Bool)

(assert (=> bm!33263 (= call!33266 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!628282 () Bool)

(declare-fun e!359493 () Bool)

(declare-fun e!359494 () Bool)

(assert (=> b!628282 (= e!359493 e!359494)))

(declare-fun c!71495 () Bool)

(assert (=> b!628282 (= c!71495 (validKeyInArray!0 (select (arr!18206 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628283 () Bool)

(assert (=> b!628283 (= e!359494 e!359492)))

(declare-fun lt!290454 () (_ BitVec 64))

(assert (=> b!628283 (= lt!290454 (select (arr!18206 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21082 0))(
  ( (Unit!21083) )
))
(declare-fun lt!290452 () Unit!21082)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37939 (_ BitVec 64) (_ BitVec 32)) Unit!21082)

(assert (=> b!628283 (= lt!290452 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!290454 #b00000000000000000000000000000000))))

(assert (=> b!628283 (arrayContainsKey!0 a!2986 lt!290454 #b00000000000000000000000000000000)))

(declare-fun lt!290453 () Unit!21082)

(assert (=> b!628283 (= lt!290453 lt!290452)))

(declare-fun res!406025 () Bool)

(assert (=> b!628283 (= res!406025 (= (seekEntryOrOpen!0 (select (arr!18206 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6653 #b00000000000000000000000000000000)))))

(assert (=> b!628283 (=> (not res!406025) (not e!359492))))

(declare-fun b!628281 () Bool)

(assert (=> b!628281 (= e!359494 call!33266)))

(declare-fun d!88913 () Bool)

(declare-fun res!406024 () Bool)

(assert (=> d!88913 (=> res!406024 e!359493)))

(assert (=> d!88913 (= res!406024 (bvsge #b00000000000000000000000000000000 (size!18570 a!2986)))))

(assert (=> d!88913 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!359493)))

(assert (= (and d!88913 (not res!406024)) b!628282))

(assert (= (and b!628282 c!71495) b!628283))

(assert (= (and b!628282 (not c!71495)) b!628281))

(assert (= (and b!628283 res!406025) b!628280))

(assert (= (or b!628280 b!628281) bm!33263))

(declare-fun m!603491 () Bool)

(assert (=> bm!33263 m!603491))

(assert (=> b!628282 m!603403))

(assert (=> b!628282 m!603403))

(assert (=> b!628282 m!603409))

(assert (=> b!628283 m!603403))

(declare-fun m!603493 () Bool)

(assert (=> b!628283 m!603493))

(declare-fun m!603495 () Bool)

(assert (=> b!628283 m!603495))

(assert (=> b!628283 m!603403))

(declare-fun m!603497 () Bool)

(assert (=> b!628283 m!603497))

(assert (=> b!628075 d!88913))

(push 1)

(assert (not bm!33251))

(assert (not b!628282))

(assert (not bm!33263))

(assert (not d!88893))

(assert (not b!628111))

(assert (not d!88873))

(assert (not b!628184))

(assert (not d!88887))

(assert (not b!628249))

(assert (not b!628201))

(assert (not b!628108))

(assert (not b!628283))

(assert (not b!628110))

(check-sat)

(pop 1)

(push 1)

(check-sat)

