; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57538 () Bool)

(assert start!57538)

(declare-fun b!636236 () Bool)

(declare-fun e!363985 () Bool)

(declare-datatypes ((List!12423 0))(
  ( (Nil!12420) (Cons!12419 (h!13464 (_ BitVec 64)) (t!18659 List!12423)) )
))
(declare-fun contains!3106 (List!12423 (_ BitVec 64)) Bool)

(assert (=> b!636236 (= e!363985 (not (contains!3106 Nil!12420 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!636237 () Bool)

(declare-fun res!411749 () Bool)

(declare-fun e!363978 () Bool)

(assert (=> b!636237 (=> (not res!411749) (not e!363978))))

(declare-datatypes ((array!38215 0))(
  ( (array!38216 (arr!18329 (Array (_ BitVec 32) (_ BitVec 64))) (size!18693 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38215)

(declare-fun arrayNoDuplicates!0 (array!38215 (_ BitVec 32) List!12423) Bool)

(assert (=> b!636237 (= res!411749 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12420))))

(declare-fun b!636238 () Bool)

(declare-fun e!363989 () Bool)

(assert (=> b!636238 (= e!363989 e!363985)))

(declare-fun res!411757 () Bool)

(assert (=> b!636238 (=> (not res!411757) (not e!363985))))

(assert (=> b!636238 (= res!411757 (not (contains!3106 Nil!12420 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!636239 () Bool)

(declare-fun res!411755 () Bool)

(declare-fun e!363991 () Bool)

(assert (=> b!636239 (=> (not res!411755) (not e!363991))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!636239 (= res!411755 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!636240 () Bool)

(declare-fun e!363979 () Bool)

(assert (=> b!636240 (= e!363979 e!363989)))

(declare-fun res!411760 () Bool)

(assert (=> b!636240 (=> res!411760 e!363989)))

(assert (=> b!636240 (= res!411760 (or (bvsge (size!18693 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18693 a!2986))))))

(declare-fun lt!294248 () array!38215)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!636240 (arrayContainsKey!0 lt!294248 (select (arr!18329 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!21462 0))(
  ( (Unit!21463) )
))
(declare-fun lt!294255 () Unit!21462)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38215 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21462)

(assert (=> b!636240 (= lt!294255 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294248 (select (arr!18329 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!636241 () Bool)

(declare-fun e!363990 () Unit!21462)

(declare-fun Unit!21464 () Unit!21462)

(assert (=> b!636241 (= e!363990 Unit!21464)))

(assert (=> b!636241 false))

(declare-fun b!636242 () Bool)

(declare-fun e!363983 () Bool)

(declare-fun e!363980 () Bool)

(assert (=> b!636242 (= e!363983 e!363980)))

(declare-fun res!411743 () Bool)

(assert (=> b!636242 (=> (not res!411743) (not e!363980))))

(declare-datatypes ((SeekEntryResult!6776 0))(
  ( (MissingZero!6776 (index!29411 (_ BitVec 32))) (Found!6776 (index!29412 (_ BitVec 32))) (Intermediate!6776 (undefined!7588 Bool) (index!29413 (_ BitVec 32)) (x!58185 (_ BitVec 32))) (Undefined!6776) (MissingVacant!6776 (index!29414 (_ BitVec 32))) )
))
(declare-fun lt!294246 () SeekEntryResult!6776)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!636242 (= res!411743 (and (= lt!294246 (Found!6776 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18329 a!2986) index!984) (select (arr!18329 a!2986) j!136))) (not (= (select (arr!18329 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38215 (_ BitVec 32)) SeekEntryResult!6776)

(assert (=> b!636242 (= lt!294246 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18329 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636243 () Bool)

(declare-fun res!411754 () Bool)

(assert (=> b!636243 (=> res!411754 e!363989)))

(declare-fun noDuplicate!381 (List!12423) Bool)

(assert (=> b!636243 (= res!411754 (not (noDuplicate!381 Nil!12420)))))

(declare-fun b!636244 () Bool)

(assert (=> b!636244 (= e!363978 e!363983)))

(declare-fun res!411753 () Bool)

(assert (=> b!636244 (=> (not res!411753) (not e!363983))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!636244 (= res!411753 (= (select (store (arr!18329 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636244 (= lt!294248 (array!38216 (store (arr!18329 a!2986) i!1108 k!1786) (size!18693 a!2986)))))

(declare-fun b!636245 () Bool)

(declare-fun e!363987 () Bool)

(declare-fun e!363982 () Bool)

(assert (=> b!636245 (= e!363987 e!363982)))

(declare-fun res!411761 () Bool)

(assert (=> b!636245 (=> res!411761 e!363982)))

(declare-fun lt!294245 () (_ BitVec 64))

(declare-fun lt!294254 () (_ BitVec 64))

(assert (=> b!636245 (= res!411761 (or (not (= (select (arr!18329 a!2986) j!136) lt!294245)) (not (= (select (arr!18329 a!2986) j!136) lt!294254)) (bvsge j!136 index!984)))))

(declare-fun b!636246 () Bool)

(declare-fun e!363988 () Bool)

(assert (=> b!636246 (= e!363982 e!363988)))

(declare-fun res!411742 () Bool)

(assert (=> b!636246 (=> (not res!411742) (not e!363988))))

(assert (=> b!636246 (= res!411742 (arrayContainsKey!0 lt!294248 (select (arr!18329 a!2986) j!136) j!136))))

(declare-fun res!411744 () Bool)

(assert (=> start!57538 (=> (not res!411744) (not e!363991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57538 (= res!411744 (validMask!0 mask!3053))))

(assert (=> start!57538 e!363991))

(assert (=> start!57538 true))

(declare-fun array_inv!14103 (array!38215) Bool)

(assert (=> start!57538 (array_inv!14103 a!2986)))

(declare-fun b!636247 () Bool)

(declare-fun res!411756 () Bool)

(assert (=> b!636247 (=> (not res!411756) (not e!363991))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!636247 (= res!411756 (validKeyInArray!0 (select (arr!18329 a!2986) j!136)))))

(declare-fun b!636248 () Bool)

(assert (=> b!636248 (= e!363988 (arrayContainsKey!0 lt!294248 (select (arr!18329 a!2986) j!136) index!984))))

(declare-fun b!636249 () Bool)

(declare-fun res!411751 () Bool)

(assert (=> b!636249 (=> (not res!411751) (not e!363978))))

(assert (=> b!636249 (= res!411751 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18329 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!636250 () Bool)

(declare-fun e!363986 () Bool)

(declare-fun lt!294252 () SeekEntryResult!6776)

(assert (=> b!636250 (= e!363986 (= lt!294246 lt!294252))))

(declare-fun b!636251 () Bool)

(declare-fun e!363984 () Bool)

(assert (=> b!636251 (= e!363980 (not e!363984))))

(declare-fun res!411759 () Bool)

(assert (=> b!636251 (=> res!411759 e!363984)))

(declare-fun lt!294249 () SeekEntryResult!6776)

(assert (=> b!636251 (= res!411759 (not (= lt!294249 (Found!6776 index!984))))))

(declare-fun lt!294250 () Unit!21462)

(assert (=> b!636251 (= lt!294250 e!363990)))

(declare-fun c!72614 () Bool)

(assert (=> b!636251 (= c!72614 (= lt!294249 Undefined!6776))))

(assert (=> b!636251 (= lt!294249 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294245 lt!294248 mask!3053))))

(assert (=> b!636251 e!363986))

(declare-fun res!411750 () Bool)

(assert (=> b!636251 (=> (not res!411750) (not e!363986))))

(declare-fun lt!294251 () (_ BitVec 32))

(assert (=> b!636251 (= res!411750 (= lt!294252 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294251 vacantSpotIndex!68 lt!294245 lt!294248 mask!3053)))))

(assert (=> b!636251 (= lt!294252 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294251 vacantSpotIndex!68 (select (arr!18329 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!636251 (= lt!294245 (select (store (arr!18329 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294247 () Unit!21462)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38215 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21462)

(assert (=> b!636251 (= lt!294247 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294251 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!636251 (= lt!294251 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!636252 () Bool)

(assert (=> b!636252 (= e!363984 e!363979)))

(declare-fun res!411747 () Bool)

(assert (=> b!636252 (=> res!411747 e!363979)))

(assert (=> b!636252 (= res!411747 (or (not (= (select (arr!18329 a!2986) j!136) lt!294245)) (not (= (select (arr!18329 a!2986) j!136) lt!294254)) (bvsge j!136 index!984)))))

(assert (=> b!636252 e!363987))

(declare-fun res!411745 () Bool)

(assert (=> b!636252 (=> (not res!411745) (not e!363987))))

(assert (=> b!636252 (= res!411745 (= lt!294254 (select (arr!18329 a!2986) j!136)))))

(assert (=> b!636252 (= lt!294254 (select (store (arr!18329 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!636253 () Bool)

(declare-fun res!411748 () Bool)

(assert (=> b!636253 (=> (not res!411748) (not e!363991))))

(assert (=> b!636253 (= res!411748 (validKeyInArray!0 k!1786))))

(declare-fun b!636254 () Bool)

(declare-fun res!411752 () Bool)

(assert (=> b!636254 (=> (not res!411752) (not e!363991))))

(assert (=> b!636254 (= res!411752 (and (= (size!18693 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18693 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18693 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!636255 () Bool)

(assert (=> b!636255 (= e!363991 e!363978)))

(declare-fun res!411746 () Bool)

(assert (=> b!636255 (=> (not res!411746) (not e!363978))))

(declare-fun lt!294253 () SeekEntryResult!6776)

(assert (=> b!636255 (= res!411746 (or (= lt!294253 (MissingZero!6776 i!1108)) (= lt!294253 (MissingVacant!6776 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38215 (_ BitVec 32)) SeekEntryResult!6776)

(assert (=> b!636255 (= lt!294253 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!636256 () Bool)

(declare-fun res!411758 () Bool)

(assert (=> b!636256 (=> (not res!411758) (not e!363978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38215 (_ BitVec 32)) Bool)

(assert (=> b!636256 (= res!411758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!636257 () Bool)

(declare-fun Unit!21465 () Unit!21462)

(assert (=> b!636257 (= e!363990 Unit!21465)))

(assert (= (and start!57538 res!411744) b!636254))

(assert (= (and b!636254 res!411752) b!636247))

(assert (= (and b!636247 res!411756) b!636253))

(assert (= (and b!636253 res!411748) b!636239))

(assert (= (and b!636239 res!411755) b!636255))

(assert (= (and b!636255 res!411746) b!636256))

(assert (= (and b!636256 res!411758) b!636237))

(assert (= (and b!636237 res!411749) b!636249))

(assert (= (and b!636249 res!411751) b!636244))

(assert (= (and b!636244 res!411753) b!636242))

(assert (= (and b!636242 res!411743) b!636251))

(assert (= (and b!636251 res!411750) b!636250))

(assert (= (and b!636251 c!72614) b!636241))

(assert (= (and b!636251 (not c!72614)) b!636257))

(assert (= (and b!636251 (not res!411759)) b!636252))

(assert (= (and b!636252 res!411745) b!636245))

(assert (= (and b!636245 (not res!411761)) b!636246))

(assert (= (and b!636246 res!411742) b!636248))

(assert (= (and b!636252 (not res!411747)) b!636240))

(assert (= (and b!636240 (not res!411760)) b!636243))

(assert (= (and b!636243 (not res!411754)) b!636238))

(assert (= (and b!636238 res!411757) b!636236))

(declare-fun m!610519 () Bool)

(assert (=> b!636236 m!610519))

(declare-fun m!610521 () Bool)

(assert (=> b!636251 m!610521))

(declare-fun m!610523 () Bool)

(assert (=> b!636251 m!610523))

(declare-fun m!610525 () Bool)

(assert (=> b!636251 m!610525))

(declare-fun m!610527 () Bool)

(assert (=> b!636251 m!610527))

(declare-fun m!610529 () Bool)

(assert (=> b!636251 m!610529))

(assert (=> b!636251 m!610525))

(declare-fun m!610531 () Bool)

(assert (=> b!636251 m!610531))

(declare-fun m!610533 () Bool)

(assert (=> b!636251 m!610533))

(declare-fun m!610535 () Bool)

(assert (=> b!636251 m!610535))

(declare-fun m!610537 () Bool)

(assert (=> start!57538 m!610537))

(declare-fun m!610539 () Bool)

(assert (=> start!57538 m!610539))

(assert (=> b!636246 m!610525))

(assert (=> b!636246 m!610525))

(declare-fun m!610541 () Bool)

(assert (=> b!636246 m!610541))

(declare-fun m!610543 () Bool)

(assert (=> b!636256 m!610543))

(declare-fun m!610545 () Bool)

(assert (=> b!636255 m!610545))

(assert (=> b!636248 m!610525))

(assert (=> b!636248 m!610525))

(declare-fun m!610547 () Bool)

(assert (=> b!636248 m!610547))

(assert (=> b!636252 m!610525))

(assert (=> b!636252 m!610527))

(declare-fun m!610549 () Bool)

(assert (=> b!636252 m!610549))

(declare-fun m!610551 () Bool)

(assert (=> b!636238 m!610551))

(declare-fun m!610553 () Bool)

(assert (=> b!636253 m!610553))

(declare-fun m!610555 () Bool)

(assert (=> b!636243 m!610555))

(declare-fun m!610557 () Bool)

(assert (=> b!636239 m!610557))

(declare-fun m!610559 () Bool)

(assert (=> b!636249 m!610559))

(assert (=> b!636240 m!610525))

(assert (=> b!636240 m!610525))

(declare-fun m!610561 () Bool)

(assert (=> b!636240 m!610561))

(assert (=> b!636240 m!610525))

(declare-fun m!610563 () Bool)

(assert (=> b!636240 m!610563))

(assert (=> b!636245 m!610525))

(declare-fun m!610565 () Bool)

(assert (=> b!636242 m!610565))

(assert (=> b!636242 m!610525))

(assert (=> b!636242 m!610525))

(declare-fun m!610567 () Bool)

(assert (=> b!636242 m!610567))

(declare-fun m!610569 () Bool)

(assert (=> b!636237 m!610569))

(assert (=> b!636247 m!610525))

(assert (=> b!636247 m!610525))

(declare-fun m!610571 () Bool)

(assert (=> b!636247 m!610571))

(assert (=> b!636244 m!610527))

(declare-fun m!610573 () Bool)

(assert (=> b!636244 m!610573))

(push 1)

(assert (not b!636253))

(assert (not b!636246))

(assert (not start!57538))

(assert (not b!636237))

(assert (not b!636238))

(assert (not b!636242))

(assert (not b!636256))

(assert (not b!636236))

(assert (not b!636248))

(assert (not b!636251))

(assert (not b!636243))

(assert (not b!636239))

(assert (not b!636240))

(assert (not b!636255))

(assert (not b!636247))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89835 () Bool)

(declare-fun res!411787 () Bool)

(declare-fun e!364020 () Bool)

(assert (=> d!89835 (=> res!411787 e!364020)))

(assert (=> d!89835 (= res!411787 (is-Nil!12420 Nil!12420))))

(assert (=> d!89835 (= (noDuplicate!381 Nil!12420) e!364020)))

(declare-fun b!636289 () Bool)

(declare-fun e!364021 () Bool)

(assert (=> b!636289 (= e!364020 e!364021)))

(declare-fun res!411788 () Bool)

(assert (=> b!636289 (=> (not res!411788) (not e!364021))))

(assert (=> b!636289 (= res!411788 (not (contains!3106 (t!18659 Nil!12420) (h!13464 Nil!12420))))))

(declare-fun b!636290 () Bool)

(assert (=> b!636290 (= e!364021 (noDuplicate!381 (t!18659 Nil!12420)))))

(assert (= (and d!89835 (not res!411787)) b!636289))

(assert (= (and b!636289 res!411788) b!636290))

(declare-fun m!610601 () Bool)

(assert (=> b!636289 m!610601))

(declare-fun m!610603 () Bool)

(assert (=> b!636290 m!610603))

(assert (=> b!636243 d!89835))

(declare-fun d!89837 () Bool)

(assert (=> d!89837 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!636253 d!89837))

(declare-fun b!636345 () Bool)

(declare-fun e!364051 () SeekEntryResult!6776)

(assert (=> b!636345 (= e!364051 (Found!6776 index!984))))

(declare-fun b!636346 () Bool)

(declare-fun e!364050 () SeekEntryResult!6776)

(assert (=> b!636346 (= e!364050 (MissingVacant!6776 vacantSpotIndex!68))))

(declare-fun b!636347 () Bool)

(assert (=> b!636347 (= e!364050 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18329 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!89839 () Bool)

(declare-fun lt!294296 () SeekEntryResult!6776)

(assert (=> d!89839 (and (or (is-Undefined!6776 lt!294296) (not (is-Found!6776 lt!294296)) (and (bvsge (index!29412 lt!294296) #b00000000000000000000000000000000) (bvslt (index!29412 lt!294296) (size!18693 a!2986)))) (or (is-Undefined!6776 lt!294296) (is-Found!6776 lt!294296) (not (is-MissingVacant!6776 lt!294296)) (not (= (index!29414 lt!294296) vacantSpotIndex!68)) (and (bvsge (index!29414 lt!294296) #b00000000000000000000000000000000) (bvslt (index!29414 lt!294296) (size!18693 a!2986)))) (or (is-Undefined!6776 lt!294296) (ite (is-Found!6776 lt!294296) (= (select (arr!18329 a!2986) (index!29412 lt!294296)) (select (arr!18329 a!2986) j!136)) (and (is-MissingVacant!6776 lt!294296) (= (index!29414 lt!294296) vacantSpotIndex!68) (= (select (arr!18329 a!2986) (index!29414 lt!294296)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364049 () SeekEntryResult!6776)

(assert (=> d!89839 (= lt!294296 e!364049)))

(declare-fun c!72645 () Bool)

(assert (=> d!89839 (= c!72645 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294295 () (_ BitVec 64))

(assert (=> d!89839 (= lt!294295 (select (arr!18329 a!2986) index!984))))

(assert (=> d!89839 (validMask!0 mask!3053)))

(assert (=> d!89839 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18329 a!2986) j!136) a!2986 mask!3053) lt!294296)))

(declare-fun b!636348 () Bool)

(assert (=> b!636348 (= e!364049 e!364051)))

(declare-fun c!72647 () Bool)

(assert (=> b!636348 (= c!72647 (= lt!294295 (select (arr!18329 a!2986) j!136)))))

(declare-fun b!636349 () Bool)

(declare-fun c!72646 () Bool)

(assert (=> b!636349 (= c!72646 (= lt!294295 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636349 (= e!364051 e!364050)))

(declare-fun b!636350 () Bool)

(assert (=> b!636350 (= e!364049 Undefined!6776)))

(assert (= (and d!89839 c!72645) b!636350))

(assert (= (and d!89839 (not c!72645)) b!636348))

(assert (= (and b!636348 c!72647) b!636345))

(assert (= (and b!636348 (not c!72647)) b!636349))

(assert (= (and b!636349 c!72646) b!636346))

(assert (= (and b!636349 (not c!72646)) b!636347))

(assert (=> b!636347 m!610521))

(assert (=> b!636347 m!610521))

(assert (=> b!636347 m!610525))

(declare-fun m!610633 () Bool)

(assert (=> b!636347 m!610633))

(declare-fun m!610635 () Bool)

(assert (=> d!89839 m!610635))

(declare-fun m!610637 () Bool)

(assert (=> d!89839 m!610637))

(assert (=> d!89839 m!610565))

(assert (=> d!89839 m!610537))

(assert (=> b!636242 d!89839))

(declare-fun d!89849 () Bool)

(declare-fun e!364070 () Bool)

(assert (=> d!89849 e!364070))

(declare-fun res!411801 () Bool)

(assert (=> d!89849 (=> (not res!411801) (not e!364070))))

(assert (=> d!89849 (= res!411801 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18693 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18693 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18693 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18693 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18693 a!2986))))))

(declare-fun lt!294307 () Unit!21462)

(declare-fun choose!9 (array!38215 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21462)

(assert (=> d!89849 (= lt!294307 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294251 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89849 (validMask!0 mask!3053)))

(assert (=> d!89849 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294251 vacantSpotIndex!68 mask!3053) lt!294307)))

(declare-fun b!636375 () Bool)

(assert (=> b!636375 (= e!364070 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294251 vacantSpotIndex!68 (select (arr!18329 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294251 vacantSpotIndex!68 (select (store (arr!18329 a!2986) i!1108 k!1786) j!136) (array!38216 (store (arr!18329 a!2986) i!1108 k!1786) (size!18693 a!2986)) mask!3053)))))

(assert (= (and d!89849 res!411801) b!636375))

(declare-fun m!610669 () Bool)

(assert (=> d!89849 m!610669))

(assert (=> d!89849 m!610537))

(assert (=> b!636375 m!610525))

(assert (=> b!636375 m!610531))

(assert (=> b!636375 m!610525))

(assert (=> b!636375 m!610527))

(assert (=> b!636375 m!610533))

(assert (=> b!636375 m!610533))

(declare-fun m!610671 () Bool)

(assert (=> b!636375 m!610671))

(assert (=> b!636251 d!89849))

(declare-fun b!636376 () Bool)

(declare-fun e!364073 () SeekEntryResult!6776)

(assert (=> b!636376 (= e!364073 (Found!6776 lt!294251))))

(declare-fun b!636377 () Bool)

(declare-fun e!364072 () SeekEntryResult!6776)

(assert (=> b!636377 (= e!364072 (MissingVacant!6776 vacantSpotIndex!68))))

(declare-fun b!636378 () Bool)

(assert (=> b!636378 (= e!364072 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294251 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!294245 lt!294248 mask!3053))))

(declare-fun lt!294309 () SeekEntryResult!6776)

(declare-fun d!89865 () Bool)

(assert (=> d!89865 (and (or (is-Undefined!6776 lt!294309) (not (is-Found!6776 lt!294309)) (and (bvsge (index!29412 lt!294309) #b00000000000000000000000000000000) (bvslt (index!29412 lt!294309) (size!18693 lt!294248)))) (or (is-Undefined!6776 lt!294309) (is-Found!6776 lt!294309) (not (is-MissingVacant!6776 lt!294309)) (not (= (index!29414 lt!294309) vacantSpotIndex!68)) (and (bvsge (index!29414 lt!294309) #b00000000000000000000000000000000) (bvslt (index!29414 lt!294309) (size!18693 lt!294248)))) (or (is-Undefined!6776 lt!294309) (ite (is-Found!6776 lt!294309) (= (select (arr!18329 lt!294248) (index!29412 lt!294309)) lt!294245) (and (is-MissingVacant!6776 lt!294309) (= (index!29414 lt!294309) vacantSpotIndex!68) (= (select (arr!18329 lt!294248) (index!29414 lt!294309)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364071 () SeekEntryResult!6776)

(assert (=> d!89865 (= lt!294309 e!364071)))

(declare-fun c!72654 () Bool)

(assert (=> d!89865 (= c!72654 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294308 () (_ BitVec 64))

(assert (=> d!89865 (= lt!294308 (select (arr!18329 lt!294248) lt!294251))))

(assert (=> d!89865 (validMask!0 mask!3053)))

(assert (=> d!89865 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294251 vacantSpotIndex!68 lt!294245 lt!294248 mask!3053) lt!294309)))

(declare-fun b!636379 () Bool)

(assert (=> b!636379 (= e!364071 e!364073)))

(declare-fun c!72656 () Bool)

(assert (=> b!636379 (= c!72656 (= lt!294308 lt!294245))))

(declare-fun b!636380 () Bool)

(declare-fun c!72655 () Bool)

(assert (=> b!636380 (= c!72655 (= lt!294308 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636380 (= e!364073 e!364072)))

(declare-fun b!636381 () Bool)

(assert (=> b!636381 (= e!364071 Undefined!6776)))

(assert (= (and d!89865 c!72654) b!636381))

(assert (= (and d!89865 (not c!72654)) b!636379))

(assert (= (and b!636379 c!72656) b!636376))

(assert (= (and b!636379 (not c!72656)) b!636380))

(assert (= (and b!636380 c!72655) b!636377))

(assert (= (and b!636380 (not c!72655)) b!636378))

(declare-fun m!610673 () Bool)

(assert (=> b!636378 m!610673))

(assert (=> b!636378 m!610673))

(declare-fun m!610675 () Bool)

(assert (=> b!636378 m!610675))

(declare-fun m!610677 () Bool)

(assert (=> d!89865 m!610677))

(declare-fun m!610679 () Bool)

(assert (=> d!89865 m!610679))

(declare-fun m!610681 () Bool)

(assert (=> d!89865 m!610681))

(assert (=> d!89865 m!610537))

(assert (=> b!636251 d!89865))

(declare-fun d!89867 () Bool)

(declare-fun lt!294312 () (_ BitVec 32))

(assert (=> d!89867 (and (bvsge lt!294312 #b00000000000000000000000000000000) (bvslt lt!294312 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89867 (= lt!294312 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89867 (validMask!0 mask!3053)))

(assert (=> d!89867 (= (nextIndex!0 index!984 x!910 mask!3053) lt!294312)))

(declare-fun bs!19112 () Bool)

(assert (= bs!19112 d!89867))

(declare-fun m!610683 () Bool)

(assert (=> bs!19112 m!610683))

(assert (=> bs!19112 m!610537))

(assert (=> b!636251 d!89867))

(declare-fun b!636382 () Bool)

(declare-fun e!364076 () SeekEntryResult!6776)

(assert (=> b!636382 (= e!364076 (Found!6776 lt!294251))))

(declare-fun b!636383 () Bool)

(declare-fun e!364075 () SeekEntryResult!6776)

(assert (=> b!636383 (= e!364075 (MissingVacant!6776 vacantSpotIndex!68))))

(declare-fun b!636384 () Bool)

(assert (=> b!636384 (= e!364075 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294251 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18329 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!89869 () Bool)

(declare-fun lt!294314 () SeekEntryResult!6776)

(assert (=> d!89869 (and (or (is-Undefined!6776 lt!294314) (not (is-Found!6776 lt!294314)) (and (bvsge (index!29412 lt!294314) #b00000000000000000000000000000000) (bvslt (index!29412 lt!294314) (size!18693 a!2986)))) (or (is-Undefined!6776 lt!294314) (is-Found!6776 lt!294314) (not (is-MissingVacant!6776 lt!294314)) (not (= (index!29414 lt!294314) vacantSpotIndex!68)) (and (bvsge (index!29414 lt!294314) #b00000000000000000000000000000000) (bvslt (index!29414 lt!294314) (size!18693 a!2986)))) (or (is-Undefined!6776 lt!294314) (ite (is-Found!6776 lt!294314) (= (select (arr!18329 a!2986) (index!29412 lt!294314)) (select (arr!18329 a!2986) j!136)) (and (is-MissingVacant!6776 lt!294314) (= (index!29414 lt!294314) vacantSpotIndex!68) (= (select (arr!18329 a!2986) (index!29414 lt!294314)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364074 () SeekEntryResult!6776)

(assert (=> d!89869 (= lt!294314 e!364074)))

(declare-fun c!72657 () Bool)

(assert (=> d!89869 (= c!72657 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294313 () (_ BitVec 64))

(assert (=> d!89869 (= lt!294313 (select (arr!18329 a!2986) lt!294251))))

(assert (=> d!89869 (validMask!0 mask!3053)))

(assert (=> d!89869 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294251 vacantSpotIndex!68 (select (arr!18329 a!2986) j!136) a!2986 mask!3053) lt!294314)))

(declare-fun b!636385 () Bool)

(assert (=> b!636385 (= e!364074 e!364076)))

(declare-fun c!72659 () Bool)

(assert (=> b!636385 (= c!72659 (= lt!294313 (select (arr!18329 a!2986) j!136)))))

(declare-fun b!636386 () Bool)

(declare-fun c!72658 () Bool)

(assert (=> b!636386 (= c!72658 (= lt!294313 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636386 (= e!364076 e!364075)))

(declare-fun b!636387 () Bool)

(assert (=> b!636387 (= e!364074 Undefined!6776)))

(assert (= (and d!89869 c!72657) b!636387))

(assert (= (and d!89869 (not c!72657)) b!636385))

(assert (= (and b!636385 c!72659) b!636382))

(assert (= (and b!636385 (not c!72659)) b!636386))

(assert (= (and b!636386 c!72658) b!636383))

(assert (= (and b!636386 (not c!72658)) b!636384))

(assert (=> b!636384 m!610673))

(assert (=> b!636384 m!610673))

(assert (=> b!636384 m!610525))

(declare-fun m!610685 () Bool)

(assert (=> b!636384 m!610685))

(declare-fun m!610687 () Bool)

(assert (=> d!89869 m!610687))

(declare-fun m!610689 () Bool)

(assert (=> d!89869 m!610689))

(declare-fun m!610691 () Bool)

(assert (=> d!89869 m!610691))

(assert (=> d!89869 m!610537))

(assert (=> b!636251 d!89869))

(declare-fun b!636388 () Bool)

(declare-fun e!364079 () SeekEntryResult!6776)

(assert (=> b!636388 (= e!364079 (Found!6776 index!984))))

(declare-fun b!636389 () Bool)

(declare-fun e!364078 () SeekEntryResult!6776)

(assert (=> b!636389 (= e!364078 (MissingVacant!6776 vacantSpotIndex!68))))

(declare-fun b!636390 () Bool)

(assert (=> b!636390 (= e!364078 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!294245 lt!294248 mask!3053))))

(declare-fun d!89871 () Bool)

(declare-fun lt!294316 () SeekEntryResult!6776)

(assert (=> d!89871 (and (or (is-Undefined!6776 lt!294316) (not (is-Found!6776 lt!294316)) (and (bvsge (index!29412 lt!294316) #b00000000000000000000000000000000) (bvslt (index!29412 lt!294316) (size!18693 lt!294248)))) (or (is-Undefined!6776 lt!294316) (is-Found!6776 lt!294316) (not (is-MissingVacant!6776 lt!294316)) (not (= (index!29414 lt!294316) vacantSpotIndex!68)) (and (bvsge (index!29414 lt!294316) #b00000000000000000000000000000000) (bvslt (index!29414 lt!294316) (size!18693 lt!294248)))) (or (is-Undefined!6776 lt!294316) (ite (is-Found!6776 lt!294316) (= (select (arr!18329 lt!294248) (index!29412 lt!294316)) lt!294245) (and (is-MissingVacant!6776 lt!294316) (= (index!29414 lt!294316) vacantSpotIndex!68) (= (select (arr!18329 lt!294248) (index!29414 lt!294316)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364077 () SeekEntryResult!6776)

(assert (=> d!89871 (= lt!294316 e!364077)))

(declare-fun c!72660 () Bool)

(assert (=> d!89871 (= c!72660 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294315 () (_ BitVec 64))

(assert (=> d!89871 (= lt!294315 (select (arr!18329 lt!294248) index!984))))

(assert (=> d!89871 (validMask!0 mask!3053)))

(assert (=> d!89871 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294245 lt!294248 mask!3053) lt!294316)))

(declare-fun b!636391 () Bool)

(assert (=> b!636391 (= e!364077 e!364079)))

(declare-fun c!72662 () Bool)

(assert (=> b!636391 (= c!72662 (= lt!294315 lt!294245))))

(declare-fun b!636392 () Bool)

(declare-fun c!72661 () Bool)

(assert (=> b!636392 (= c!72661 (= lt!294315 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636392 (= e!364079 e!364078)))

(declare-fun b!636393 () Bool)

(assert (=> b!636393 (= e!364077 Undefined!6776)))

(assert (= (and d!89871 c!72660) b!636393))

(assert (= (and d!89871 (not c!72660)) b!636391))

(assert (= (and b!636391 c!72662) b!636388))

(assert (= (and b!636391 (not c!72662)) b!636392))

(assert (= (and b!636392 c!72661) b!636389))

(assert (= (and b!636392 (not c!72661)) b!636390))

(assert (=> b!636390 m!610521))

(assert (=> b!636390 m!610521))

(declare-fun m!610693 () Bool)

(assert (=> b!636390 m!610693))

(declare-fun m!610695 () Bool)

(assert (=> d!89871 m!610695))

(declare-fun m!610697 () Bool)

(assert (=> d!89871 m!610697))

(declare-fun m!610699 () Bool)

(assert (=> d!89871 m!610699))

(assert (=> d!89871 m!610537))

(assert (=> b!636251 d!89871))

(declare-fun d!89873 () Bool)

(declare-fun res!411806 () Bool)

(declare-fun e!364084 () Bool)

(assert (=> d!89873 (=> res!411806 e!364084)))

(assert (=> d!89873 (= res!411806 (= (select (arr!18329 lt!294248) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18329 a!2986) j!136)))))

(assert (=> d!89873 (= (arrayContainsKey!0 lt!294248 (select (arr!18329 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!364084)))

(declare-fun b!636398 () Bool)

(declare-fun e!364085 () Bool)

(assert (=> b!636398 (= e!364084 e!364085)))

(declare-fun res!411807 () Bool)

(assert (=> b!636398 (=> (not res!411807) (not e!364085))))

(assert (=> b!636398 (= res!411807 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18693 lt!294248)))))

(declare-fun b!636399 () Bool)

(assert (=> b!636399 (= e!364085 (arrayContainsKey!0 lt!294248 (select (arr!18329 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89873 (not res!411806)) b!636398))

(assert (= (and b!636398 res!411807) b!636399))

(declare-fun m!610701 () Bool)

(assert (=> d!89873 m!610701))

(assert (=> b!636399 m!610525))

(declare-fun m!610703 () Bool)

(assert (=> b!636399 m!610703))

(assert (=> b!636240 d!89873))

(declare-fun d!89875 () Bool)

(assert (=> d!89875 (arrayContainsKey!0 lt!294248 (select (arr!18329 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294321 () Unit!21462)

(declare-fun choose!114 (array!38215 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21462)

(assert (=> d!89875 (= lt!294321 (choose!114 lt!294248 (select (arr!18329 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!89875 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!89875 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294248 (select (arr!18329 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!294321)))

(declare-fun bs!19113 () Bool)

(assert (= bs!19113 d!89875))

(assert (=> bs!19113 m!610525))

(assert (=> bs!19113 m!610561))

(assert (=> bs!19113 m!610525))

(declare-fun m!610705 () Bool)

(assert (=> bs!19113 m!610705))

(assert (=> b!636240 d!89875))

(declare-fun d!89877 () Bool)

(declare-fun res!411810 () Bool)

(declare-fun e!364088 () Bool)

(assert (=> d!89877 (=> res!411810 e!364088)))

(assert (=> d!89877 (= res!411810 (= (select (arr!18329 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!89877 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!364088)))

(declare-fun b!636402 () Bool)

(declare-fun e!364089 () Bool)

(assert (=> b!636402 (= e!364088 e!364089)))

(declare-fun res!411811 () Bool)

(assert (=> b!636402 (=> (not res!411811) (not e!364089))))

(assert (=> b!636402 (= res!411811 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18693 a!2986)))))

(declare-fun b!636403 () Bool)

(assert (=> b!636403 (= e!364089 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89877 (not res!411810)) b!636402))

(assert (= (and b!636402 res!411811) b!636403))

(declare-fun m!610707 () Bool)

(assert (=> d!89877 m!610707))

(declare-fun m!610709 () Bool)

(assert (=> b!636403 m!610709))

(assert (=> b!636239 d!89877))

(declare-fun d!89879 () Bool)

(declare-fun res!411812 () Bool)

(declare-fun e!364090 () Bool)

(assert (=> d!89879 (=> res!411812 e!364090)))

(assert (=> d!89879 (= res!411812 (= (select (arr!18329 lt!294248) index!984) (select (arr!18329 a!2986) j!136)))))

(assert (=> d!89879 (= (arrayContainsKey!0 lt!294248 (select (arr!18329 a!2986) j!136) index!984) e!364090)))

(declare-fun b!636404 () Bool)

(declare-fun e!364091 () Bool)

(assert (=> b!636404 (= e!364090 e!364091)))

(declare-fun res!411813 () Bool)

(assert (=> b!636404 (=> (not res!411813) (not e!364091))))

(assert (=> b!636404 (= res!411813 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18693 lt!294248)))))

(declare-fun b!636405 () Bool)

(assert (=> b!636405 (= e!364091 (arrayContainsKey!0 lt!294248 (select (arr!18329 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!89879 (not res!411812)) b!636404))

(assert (= (and b!636404 res!411813) b!636405))

(assert (=> d!89879 m!610699))

(assert (=> b!636405 m!610525))

(declare-fun m!610711 () Bool)

(assert (=> b!636405 m!610711))

(assert (=> b!636248 d!89879))

(declare-fun d!89881 () Bool)

(declare-fun lt!294327 () Bool)

(declare-fun content!244 (List!12423) (Set (_ BitVec 64)))

(assert (=> d!89881 (= lt!294327 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!244 Nil!12420)))))

(declare-fun e!364100 () Bool)

(assert (=> d!89881 (= lt!294327 e!364100)))

(declare-fun res!411819 () Bool)

(assert (=> d!89881 (=> (not res!411819) (not e!364100))))

(assert (=> d!89881 (= res!411819 (is-Cons!12419 Nil!12420))))

(assert (=> d!89881 (= (contains!3106 Nil!12420 #b0000000000000000000000000000000000000000000000000000000000000000) lt!294327)))

(declare-fun b!636417 () Bool)

