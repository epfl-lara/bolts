; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56684 () Bool)

(assert start!56684)

(declare-fun b!628039 () Bool)

(declare-fun res!405929 () Bool)

(declare-fun e!359352 () Bool)

(assert (=> b!628039 (=> (not res!405929) (not e!359352))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37937 0))(
  ( (array!37938 (arr!18205 (Array (_ BitVec 32) (_ BitVec 64))) (size!18569 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37937)

(assert (=> b!628039 (= res!405929 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18205 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18205 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628040 () Bool)

(declare-fun res!405923 () Bool)

(assert (=> b!628040 (=> (not res!405923) (not e!359352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37937 (_ BitVec 32)) Bool)

(assert (=> b!628040 (= res!405923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628041 () Bool)

(declare-fun res!405922 () Bool)

(assert (=> b!628041 (=> (not res!405922) (not e!359352))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!628041 (= res!405922 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18205 a!2986) index!984) (select (arr!18205 a!2986) j!136))) (not (= (select (arr!18205 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!628042 () Bool)

(declare-fun res!405920 () Bool)

(assert (=> b!628042 (=> (not res!405920) (not e!359352))))

(declare-datatypes ((List!12299 0))(
  ( (Nil!12296) (Cons!12295 (h!13340 (_ BitVec 64)) (t!18535 List!12299)) )
))
(declare-fun arrayNoDuplicates!0 (array!37937 (_ BitVec 32) List!12299) Bool)

(assert (=> b!628042 (= res!405920 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12296))))

(declare-fun b!628043 () Bool)

(declare-fun res!405921 () Bool)

(declare-fun e!359353 () Bool)

(assert (=> b!628043 (=> (not res!405921) (not e!359353))))

(declare-fun arrayContainsKey!0 (array!37937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628043 (= res!405921 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!405927 () Bool)

(assert (=> start!56684 (=> (not res!405927) (not e!359353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56684 (= res!405927 (validMask!0 mask!3053))))

(assert (=> start!56684 e!359353))

(assert (=> start!56684 true))

(declare-fun array_inv!13979 (array!37937) Bool)

(assert (=> start!56684 (array_inv!13979 a!2986)))

(declare-fun b!628044 () Bool)

(declare-fun res!405928 () Bool)

(assert (=> b!628044 (=> (not res!405928) (not e!359353))))

(assert (=> b!628044 (= res!405928 (and (= (size!18569 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18569 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18569 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628045 () Bool)

(declare-fun res!405924 () Bool)

(assert (=> b!628045 (=> (not res!405924) (not e!359353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628045 (= res!405924 (validKeyInArray!0 k0!1786))))

(declare-fun b!628046 () Bool)

(assert (=> b!628046 (= e!359353 e!359352)))

(declare-fun res!405919 () Bool)

(assert (=> b!628046 (=> (not res!405919) (not e!359352))))

(declare-datatypes ((SeekEntryResult!6652 0))(
  ( (MissingZero!6652 (index!28891 (_ BitVec 32))) (Found!6652 (index!28892 (_ BitVec 32))) (Intermediate!6652 (undefined!7464 Bool) (index!28893 (_ BitVec 32)) (x!57649 (_ BitVec 32))) (Undefined!6652) (MissingVacant!6652 (index!28894 (_ BitVec 32))) )
))
(declare-fun lt!290370 () SeekEntryResult!6652)

(assert (=> b!628046 (= res!405919 (or (= lt!290370 (MissingZero!6652 i!1108)) (= lt!290370 (MissingVacant!6652 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37937 (_ BitVec 32)) SeekEntryResult!6652)

(assert (=> b!628046 (= lt!290370 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!628047 () Bool)

(declare-fun lt!290369 () (_ BitVec 32))

(assert (=> b!628047 (= e!359352 (or (bvslt lt!290369 #b00000000000000000000000000000000) (bvsge lt!290369 (bvadd mask!3053 #b00000000000000000000000000000001))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628047 (= lt!290369 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628048 () Bool)

(declare-fun res!405925 () Bool)

(assert (=> b!628048 (=> (not res!405925) (not e!359353))))

(assert (=> b!628048 (= res!405925 (validKeyInArray!0 (select (arr!18205 a!2986) j!136)))))

(declare-fun b!628049 () Bool)

(declare-fun res!405926 () Bool)

(assert (=> b!628049 (=> (not res!405926) (not e!359352))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37937 (_ BitVec 32)) SeekEntryResult!6652)

(assert (=> b!628049 (= res!405926 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18205 a!2986) j!136) a!2986 mask!3053) (Found!6652 j!136)))))

(assert (= (and start!56684 res!405927) b!628044))

(assert (= (and b!628044 res!405928) b!628048))

(assert (= (and b!628048 res!405925) b!628045))

(assert (= (and b!628045 res!405924) b!628043))

(assert (= (and b!628043 res!405921) b!628046))

(assert (= (and b!628046 res!405919) b!628040))

(assert (= (and b!628040 res!405923) b!628042))

(assert (= (and b!628042 res!405920) b!628039))

(assert (= (and b!628039 res!405929) b!628049))

(assert (= (and b!628049 res!405926) b!628041))

(assert (= (and b!628041 res!405922) b!628047))

(declare-fun m!603333 () Bool)

(assert (=> b!628048 m!603333))

(assert (=> b!628048 m!603333))

(declare-fun m!603335 () Bool)

(assert (=> b!628048 m!603335))

(declare-fun m!603337 () Bool)

(assert (=> b!628041 m!603337))

(assert (=> b!628041 m!603333))

(declare-fun m!603339 () Bool)

(assert (=> b!628045 m!603339))

(declare-fun m!603341 () Bool)

(assert (=> b!628039 m!603341))

(declare-fun m!603343 () Bool)

(assert (=> b!628039 m!603343))

(declare-fun m!603345 () Bool)

(assert (=> b!628039 m!603345))

(assert (=> b!628049 m!603333))

(assert (=> b!628049 m!603333))

(declare-fun m!603347 () Bool)

(assert (=> b!628049 m!603347))

(declare-fun m!603349 () Bool)

(assert (=> b!628047 m!603349))

(declare-fun m!603351 () Bool)

(assert (=> b!628040 m!603351))

(declare-fun m!603353 () Bool)

(assert (=> b!628043 m!603353))

(declare-fun m!603355 () Bool)

(assert (=> start!56684 m!603355))

(declare-fun m!603357 () Bool)

(assert (=> start!56684 m!603357))

(declare-fun m!603359 () Bool)

(assert (=> b!628046 m!603359))

(declare-fun m!603361 () Bool)

(assert (=> b!628042 m!603361))

(check-sat (not b!628040) (not b!628042) (not b!628043) (not b!628049) (not b!628047) (not b!628045) (not b!628048) (not start!56684) (not b!628046))
(check-sat)
(get-model)

(declare-fun b!628093 () Bool)

(declare-fun e!359374 () Bool)

(declare-fun e!359373 () Bool)

(assert (=> b!628093 (= e!359374 e!359373)))

(declare-fun c!71429 () Bool)

(assert (=> b!628093 (= c!71429 (validKeyInArray!0 (select (arr!18205 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!88857 () Bool)

(declare-fun res!405970 () Bool)

(declare-fun e!359371 () Bool)

(assert (=> d!88857 (=> res!405970 e!359371)))

(assert (=> d!88857 (= res!405970 (bvsge #b00000000000000000000000000000000 (size!18569 a!2986)))))

(assert (=> d!88857 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12296) e!359371)))

(declare-fun b!628094 () Bool)

(declare-fun call!33251 () Bool)

(assert (=> b!628094 (= e!359373 call!33251)))

(declare-fun b!628095 () Bool)

(assert (=> b!628095 (= e!359371 e!359374)))

(declare-fun res!405971 () Bool)

(assert (=> b!628095 (=> (not res!405971) (not e!359374))))

(declare-fun e!359372 () Bool)

(assert (=> b!628095 (= res!405971 (not e!359372))))

(declare-fun res!405969 () Bool)

(assert (=> b!628095 (=> (not res!405969) (not e!359372))))

(assert (=> b!628095 (= res!405969 (validKeyInArray!0 (select (arr!18205 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628096 () Bool)

(declare-fun contains!3083 (List!12299 (_ BitVec 64)) Bool)

(assert (=> b!628096 (= e!359372 (contains!3083 Nil!12296 (select (arr!18205 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628097 () Bool)

(assert (=> b!628097 (= e!359373 call!33251)))

(declare-fun bm!33248 () Bool)

(assert (=> bm!33248 (= call!33251 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71429 (Cons!12295 (select (arr!18205 a!2986) #b00000000000000000000000000000000) Nil!12296) Nil!12296)))))

(assert (= (and d!88857 (not res!405970)) b!628095))

(assert (= (and b!628095 res!405969) b!628096))

(assert (= (and b!628095 res!405971) b!628093))

(assert (= (and b!628093 c!71429) b!628094))

(assert (= (and b!628093 (not c!71429)) b!628097))

(assert (= (or b!628094 b!628097) bm!33248))

(declare-fun m!603393 () Bool)

(assert (=> b!628093 m!603393))

(assert (=> b!628093 m!603393))

(declare-fun m!603395 () Bool)

(assert (=> b!628093 m!603395))

(assert (=> b!628095 m!603393))

(assert (=> b!628095 m!603393))

(assert (=> b!628095 m!603395))

(assert (=> b!628096 m!603393))

(assert (=> b!628096 m!603393))

(declare-fun m!603397 () Bool)

(assert (=> b!628096 m!603397))

(assert (=> bm!33248 m!603393))

(declare-fun m!603399 () Bool)

(assert (=> bm!33248 m!603399))

(assert (=> b!628042 d!88857))

(declare-fun d!88859 () Bool)

(declare-fun lt!290379 () (_ BitVec 32))

(assert (=> d!88859 (and (bvsge lt!290379 #b00000000000000000000000000000000) (bvslt lt!290379 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88859 (= lt!290379 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88859 (validMask!0 mask!3053)))

(assert (=> d!88859 (= (nextIndex!0 index!984 x!910 mask!3053) lt!290379)))

(declare-fun bs!18950 () Bool)

(assert (= bs!18950 d!88859))

(declare-fun m!603401 () Bool)

(assert (=> bs!18950 m!603401))

(assert (=> bs!18950 m!603355))

(assert (=> b!628047 d!88859))

(declare-fun d!88861 () Bool)

(assert (=> d!88861 (= (validKeyInArray!0 (select (arr!18205 a!2986) j!136)) (and (not (= (select (arr!18205 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18205 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!628048 d!88861))

(declare-fun d!88863 () Bool)

(assert (=> d!88863 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56684 d!88863))

(declare-fun d!88867 () Bool)

(assert (=> d!88867 (= (array_inv!13979 a!2986) (bvsge (size!18569 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56684 d!88867))

(declare-fun b!628149 () Bool)

(declare-fun e!359409 () SeekEntryResult!6652)

(declare-fun lt!290394 () SeekEntryResult!6652)

(assert (=> b!628149 (= e!359409 (MissingZero!6652 (index!28893 lt!290394)))))

(declare-fun b!628150 () Bool)

(assert (=> b!628150 (= e!359409 (seekKeyOrZeroReturnVacant!0 (x!57649 lt!290394) (index!28893 lt!290394) (index!28893 lt!290394) k0!1786 a!2986 mask!3053))))

(declare-fun d!88871 () Bool)

(declare-fun lt!290393 () SeekEntryResult!6652)

(get-info :version)

(assert (=> d!88871 (and (or ((_ is Undefined!6652) lt!290393) (not ((_ is Found!6652) lt!290393)) (and (bvsge (index!28892 lt!290393) #b00000000000000000000000000000000) (bvslt (index!28892 lt!290393) (size!18569 a!2986)))) (or ((_ is Undefined!6652) lt!290393) ((_ is Found!6652) lt!290393) (not ((_ is MissingZero!6652) lt!290393)) (and (bvsge (index!28891 lt!290393) #b00000000000000000000000000000000) (bvslt (index!28891 lt!290393) (size!18569 a!2986)))) (or ((_ is Undefined!6652) lt!290393) ((_ is Found!6652) lt!290393) ((_ is MissingZero!6652) lt!290393) (not ((_ is MissingVacant!6652) lt!290393)) (and (bvsge (index!28894 lt!290393) #b00000000000000000000000000000000) (bvslt (index!28894 lt!290393) (size!18569 a!2986)))) (or ((_ is Undefined!6652) lt!290393) (ite ((_ is Found!6652) lt!290393) (= (select (arr!18205 a!2986) (index!28892 lt!290393)) k0!1786) (ite ((_ is MissingZero!6652) lt!290393) (= (select (arr!18205 a!2986) (index!28891 lt!290393)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6652) lt!290393) (= (select (arr!18205 a!2986) (index!28894 lt!290393)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!359408 () SeekEntryResult!6652)

(assert (=> d!88871 (= lt!290393 e!359408)))

(declare-fun c!71448 () Bool)

(assert (=> d!88871 (= c!71448 (and ((_ is Intermediate!6652) lt!290394) (undefined!7464 lt!290394)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37937 (_ BitVec 32)) SeekEntryResult!6652)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88871 (= lt!290394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!88871 (validMask!0 mask!3053)))

(assert (=> d!88871 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!290393)))

(declare-fun b!628151 () Bool)

(declare-fun c!71450 () Bool)

(declare-fun lt!290392 () (_ BitVec 64))

(assert (=> b!628151 (= c!71450 (= lt!290392 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!359410 () SeekEntryResult!6652)

(assert (=> b!628151 (= e!359410 e!359409)))

(declare-fun b!628152 () Bool)

(assert (=> b!628152 (= e!359408 Undefined!6652)))

(declare-fun b!628153 () Bool)

(assert (=> b!628153 (= e!359410 (Found!6652 (index!28893 lt!290394)))))

(declare-fun b!628154 () Bool)

(assert (=> b!628154 (= e!359408 e!359410)))

(assert (=> b!628154 (= lt!290392 (select (arr!18205 a!2986) (index!28893 lt!290394)))))

(declare-fun c!71449 () Bool)

(assert (=> b!628154 (= c!71449 (= lt!290392 k0!1786))))

(assert (= (and d!88871 c!71448) b!628152))

(assert (= (and d!88871 (not c!71448)) b!628154))

(assert (= (and b!628154 c!71449) b!628153))

(assert (= (and b!628154 (not c!71449)) b!628151))

(assert (= (and b!628151 c!71450) b!628149))

(assert (= (and b!628151 (not c!71450)) b!628150))

(declare-fun m!603421 () Bool)

(assert (=> b!628150 m!603421))

(declare-fun m!603423 () Bool)

(assert (=> d!88871 m!603423))

(assert (=> d!88871 m!603355))

(declare-fun m!603425 () Bool)

(assert (=> d!88871 m!603425))

(declare-fun m!603427 () Bool)

(assert (=> d!88871 m!603427))

(declare-fun m!603429 () Bool)

(assert (=> d!88871 m!603429))

(assert (=> d!88871 m!603425))

(declare-fun m!603431 () Bool)

(assert (=> d!88871 m!603431))

(declare-fun m!603433 () Bool)

(assert (=> b!628154 m!603433))

(assert (=> b!628046 d!88871))

(declare-fun b!628202 () Bool)

(declare-fun e!359445 () Bool)

(declare-fun call!33260 () Bool)

(assert (=> b!628202 (= e!359445 call!33260)))

(declare-fun d!88879 () Bool)

(declare-fun res!406006 () Bool)

(declare-fun e!359444 () Bool)

(assert (=> d!88879 (=> res!406006 e!359444)))

(assert (=> d!88879 (= res!406006 (bvsge #b00000000000000000000000000000000 (size!18569 a!2986)))))

(assert (=> d!88879 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!359444)))

(declare-fun bm!33257 () Bool)

(assert (=> bm!33257 (= call!33260 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!628203 () Bool)

(declare-fun e!359446 () Bool)

(assert (=> b!628203 (= e!359446 e!359445)))

(declare-fun lt!290411 () (_ BitVec 64))

(assert (=> b!628203 (= lt!290411 (select (arr!18205 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21078 0))(
  ( (Unit!21079) )
))
(declare-fun lt!290410 () Unit!21078)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37937 (_ BitVec 64) (_ BitVec 32)) Unit!21078)

(assert (=> b!628203 (= lt!290410 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!290411 #b00000000000000000000000000000000))))

(assert (=> b!628203 (arrayContainsKey!0 a!2986 lt!290411 #b00000000000000000000000000000000)))

(declare-fun lt!290412 () Unit!21078)

(assert (=> b!628203 (= lt!290412 lt!290410)))

(declare-fun res!406007 () Bool)

(assert (=> b!628203 (= res!406007 (= (seekEntryOrOpen!0 (select (arr!18205 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6652 #b00000000000000000000000000000000)))))

(assert (=> b!628203 (=> (not res!406007) (not e!359445))))

(declare-fun b!628204 () Bool)

(assert (=> b!628204 (= e!359444 e!359446)))

(declare-fun c!71465 () Bool)

(assert (=> b!628204 (= c!71465 (validKeyInArray!0 (select (arr!18205 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628205 () Bool)

(assert (=> b!628205 (= e!359446 call!33260)))

(assert (= (and d!88879 (not res!406006)) b!628204))

(assert (= (and b!628204 c!71465) b!628203))

(assert (= (and b!628204 (not c!71465)) b!628205))

(assert (= (and b!628203 res!406007) b!628202))

(assert (= (or b!628202 b!628205) bm!33257))

(declare-fun m!603457 () Bool)

(assert (=> bm!33257 m!603457))

(assert (=> b!628203 m!603393))

(declare-fun m!603459 () Bool)

(assert (=> b!628203 m!603459))

(declare-fun m!603461 () Bool)

(assert (=> b!628203 m!603461))

(assert (=> b!628203 m!603393))

(declare-fun m!603463 () Bool)

(assert (=> b!628203 m!603463))

(assert (=> b!628204 m!603393))

(assert (=> b!628204 m!603393))

(assert (=> b!628204 m!603395))

(assert (=> b!628040 d!88879))

(declare-fun d!88889 () Bool)

(assert (=> d!88889 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!628045 d!88889))

(declare-fun d!88891 () Bool)

(declare-fun res!406012 () Bool)

(declare-fun e!359451 () Bool)

(assert (=> d!88891 (=> res!406012 e!359451)))

(assert (=> d!88891 (= res!406012 (= (select (arr!18205 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!88891 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!359451)))

(declare-fun b!628210 () Bool)

(declare-fun e!359452 () Bool)

(assert (=> b!628210 (= e!359451 e!359452)))

(declare-fun res!406013 () Bool)

(assert (=> b!628210 (=> (not res!406013) (not e!359452))))

(assert (=> b!628210 (= res!406013 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18569 a!2986)))))

(declare-fun b!628211 () Bool)

(assert (=> b!628211 (= e!359452 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88891 (not res!406012)) b!628210))

(assert (= (and b!628210 res!406013) b!628211))

(assert (=> d!88891 m!603393))

(declare-fun m!603467 () Bool)

(assert (=> b!628211 m!603467))

(assert (=> b!628043 d!88891))

(declare-fun b!628254 () Bool)

(declare-fun e!359477 () SeekEntryResult!6652)

(assert (=> b!628254 (= e!359477 (Found!6652 index!984))))

(declare-fun e!359478 () SeekEntryResult!6652)

(declare-fun b!628255 () Bool)

(assert (=> b!628255 (= e!359478 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18205 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!628256 () Bool)

(declare-fun c!71486 () Bool)

(declare-fun lt!290439 () (_ BitVec 64))

(assert (=> b!628256 (= c!71486 (= lt!290439 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!628256 (= e!359477 e!359478)))

(declare-fun b!628258 () Bool)

(declare-fun e!359479 () SeekEntryResult!6652)

(assert (=> b!628258 (= e!359479 e!359477)))

(declare-fun c!71485 () Bool)

(assert (=> b!628258 (= c!71485 (= lt!290439 (select (arr!18205 a!2986) j!136)))))

(declare-fun b!628259 () Bool)

(assert (=> b!628259 (= e!359479 Undefined!6652)))

(declare-fun d!88895 () Bool)

(declare-fun lt!290438 () SeekEntryResult!6652)

(assert (=> d!88895 (and (or ((_ is Undefined!6652) lt!290438) (not ((_ is Found!6652) lt!290438)) (and (bvsge (index!28892 lt!290438) #b00000000000000000000000000000000) (bvslt (index!28892 lt!290438) (size!18569 a!2986)))) (or ((_ is Undefined!6652) lt!290438) ((_ is Found!6652) lt!290438) (not ((_ is MissingVacant!6652) lt!290438)) (not (= (index!28894 lt!290438) vacantSpotIndex!68)) (and (bvsge (index!28894 lt!290438) #b00000000000000000000000000000000) (bvslt (index!28894 lt!290438) (size!18569 a!2986)))) (or ((_ is Undefined!6652) lt!290438) (ite ((_ is Found!6652) lt!290438) (= (select (arr!18205 a!2986) (index!28892 lt!290438)) (select (arr!18205 a!2986) j!136)) (and ((_ is MissingVacant!6652) lt!290438) (= (index!28894 lt!290438) vacantSpotIndex!68) (= (select (arr!18205 a!2986) (index!28894 lt!290438)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88895 (= lt!290438 e!359479)))

(declare-fun c!71484 () Bool)

(assert (=> d!88895 (= c!71484 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88895 (= lt!290439 (select (arr!18205 a!2986) index!984))))

(assert (=> d!88895 (validMask!0 mask!3053)))

(assert (=> d!88895 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18205 a!2986) j!136) a!2986 mask!3053) lt!290438)))

(declare-fun b!628257 () Bool)

(assert (=> b!628257 (= e!359478 (MissingVacant!6652 vacantSpotIndex!68))))

(assert (= (and d!88895 c!71484) b!628259))

(assert (= (and d!88895 (not c!71484)) b!628258))

(assert (= (and b!628258 c!71485) b!628254))

(assert (= (and b!628258 (not c!71485)) b!628256))

(assert (= (and b!628256 c!71486) b!628257))

(assert (= (and b!628256 (not c!71486)) b!628255))

(assert (=> b!628255 m!603349))

(assert (=> b!628255 m!603349))

(assert (=> b!628255 m!603333))

(declare-fun m!603485 () Bool)

(assert (=> b!628255 m!603485))

(declare-fun m!603487 () Bool)

(assert (=> d!88895 m!603487))

(declare-fun m!603489 () Bool)

(assert (=> d!88895 m!603489))

(assert (=> d!88895 m!603337))

(assert (=> d!88895 m!603355))

(assert (=> b!628049 d!88895))

(check-sat (not b!628255) (not b!628203) (not bm!33248) (not b!628095) (not b!628096) (not d!88895) (not bm!33257) (not b!628204) (not d!88871) (not b!628150) (not d!88859) (not b!628211) (not b!628093))
(check-sat)
