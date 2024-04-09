; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57372 () Bool)

(assert start!57372)

(declare-fun b!634811 () Bool)

(declare-fun e!363062 () Bool)

(declare-fun e!363063 () Bool)

(assert (=> b!634811 (= e!363062 e!363063)))

(declare-fun res!410801 () Bool)

(assert (=> b!634811 (=> res!410801 e!363063)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!293549 () (_ BitVec 64))

(declare-fun lt!293552 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38181 0))(
  ( (array!38182 (arr!18315 (Array (_ BitVec 32) (_ BitVec 64))) (size!18679 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38181)

(assert (=> b!634811 (= res!410801 (or (not (= (select (arr!18315 a!2986) j!136) lt!293552)) (not (= (select (arr!18315 a!2986) j!136) lt!293549)) (bvsge j!136 index!984)))))

(declare-fun b!634812 () Bool)

(declare-fun e!363061 () Bool)

(declare-fun e!363059 () Bool)

(assert (=> b!634812 (= e!363061 e!363059)))

(declare-fun res!410798 () Bool)

(assert (=> b!634812 (=> (not res!410798) (not e!363059))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6762 0))(
  ( (MissingZero!6762 (index!29349 (_ BitVec 32))) (Found!6762 (index!29350 (_ BitVec 32))) (Intermediate!6762 (undefined!7574 Bool) (index!29351 (_ BitVec 32)) (x!58121 (_ BitVec 32))) (Undefined!6762) (MissingVacant!6762 (index!29352 (_ BitVec 32))) )
))
(declare-fun lt!293551 () SeekEntryResult!6762)

(assert (=> b!634812 (= res!410798 (and (= lt!293551 (Found!6762 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18315 a!2986) index!984) (select (arr!18315 a!2986) j!136))) (not (= (select (arr!18315 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38181 (_ BitVec 32)) SeekEntryResult!6762)

(assert (=> b!634812 (= lt!293551 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18315 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634813 () Bool)

(declare-fun e!363058 () Bool)

(declare-fun lt!293554 () SeekEntryResult!6762)

(assert (=> b!634813 (= e!363058 (= lt!293551 lt!293554))))

(declare-fun b!634814 () Bool)

(declare-fun e!363056 () Bool)

(declare-fun e!363064 () Bool)

(assert (=> b!634814 (= e!363056 e!363064)))

(declare-fun res!410807 () Bool)

(assert (=> b!634814 (=> res!410807 e!363064)))

(assert (=> b!634814 (= res!410807 (or (not (= (select (arr!18315 a!2986) j!136) lt!293552)) (not (= (select (arr!18315 a!2986) j!136) lt!293549)) (bvsge j!136 index!984)))))

(assert (=> b!634814 e!363062))

(declare-fun res!410813 () Bool)

(assert (=> b!634814 (=> (not res!410813) (not e!363062))))

(assert (=> b!634814 (= res!410813 (= lt!293549 (select (arr!18315 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!634814 (= lt!293549 (select (store (arr!18315 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!634815 () Bool)

(declare-fun res!410799 () Bool)

(declare-fun e!363053 () Bool)

(assert (=> b!634815 (=> (not res!410799) (not e!363053))))

(declare-fun arrayContainsKey!0 (array!38181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634815 (= res!410799 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634816 () Bool)

(declare-fun res!410805 () Bool)

(assert (=> b!634816 (=> (not res!410805) (not e!363053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634816 (= res!410805 (validKeyInArray!0 (select (arr!18315 a!2986) j!136)))))

(declare-fun b!634818 () Bool)

(declare-fun e!363060 () Bool)

(assert (=> b!634818 (= e!363053 e!363060)))

(declare-fun res!410803 () Bool)

(assert (=> b!634818 (=> (not res!410803) (not e!363060))))

(declare-fun lt!293553 () SeekEntryResult!6762)

(assert (=> b!634818 (= res!410803 (or (= lt!293553 (MissingZero!6762 i!1108)) (= lt!293553 (MissingVacant!6762 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38181 (_ BitVec 32)) SeekEntryResult!6762)

(assert (=> b!634818 (= lt!293553 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!634819 () Bool)

(declare-fun res!410797 () Bool)

(assert (=> b!634819 (=> (not res!410797) (not e!363060))))

(assert (=> b!634819 (= res!410797 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18315 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!634820 () Bool)

(assert (=> b!634820 (= e!363059 (not e!363056))))

(declare-fun res!410806 () Bool)

(assert (=> b!634820 (=> res!410806 e!363056)))

(declare-fun lt!293556 () SeekEntryResult!6762)

(assert (=> b!634820 (= res!410806 (not (= lt!293556 (Found!6762 index!984))))))

(declare-datatypes ((Unit!21406 0))(
  ( (Unit!21407) )
))
(declare-fun lt!293557 () Unit!21406)

(declare-fun e!363055 () Unit!21406)

(assert (=> b!634820 (= lt!293557 e!363055)))

(declare-fun c!72374 () Bool)

(assert (=> b!634820 (= c!72374 (= lt!293556 Undefined!6762))))

(declare-fun lt!293555 () array!38181)

(assert (=> b!634820 (= lt!293556 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293552 lt!293555 mask!3053))))

(assert (=> b!634820 e!363058))

(declare-fun res!410800 () Bool)

(assert (=> b!634820 (=> (not res!410800) (not e!363058))))

(declare-fun lt!293559 () (_ BitVec 32))

(assert (=> b!634820 (= res!410800 (= lt!293554 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293559 vacantSpotIndex!68 lt!293552 lt!293555 mask!3053)))))

(assert (=> b!634820 (= lt!293554 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293559 vacantSpotIndex!68 (select (arr!18315 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!634820 (= lt!293552 (select (store (arr!18315 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293558 () Unit!21406)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38181 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21406)

(assert (=> b!634820 (= lt!293558 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293559 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634820 (= lt!293559 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634821 () Bool)

(declare-fun e!363054 () Bool)

(assert (=> b!634821 (= e!363063 e!363054)))

(declare-fun res!410808 () Bool)

(assert (=> b!634821 (=> (not res!410808) (not e!363054))))

(assert (=> b!634821 (= res!410808 (arrayContainsKey!0 lt!293555 (select (arr!18315 a!2986) j!136) j!136))))

(declare-fun b!634822 () Bool)

(assert (=> b!634822 (= e!363054 (arrayContainsKey!0 lt!293555 (select (arr!18315 a!2986) j!136) index!984))))

(declare-fun b!634823 () Bool)

(assert (=> b!634823 (= e!363060 e!363061)))

(declare-fun res!410811 () Bool)

(assert (=> b!634823 (=> (not res!410811) (not e!363061))))

(assert (=> b!634823 (= res!410811 (= (select (store (arr!18315 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634823 (= lt!293555 (array!38182 (store (arr!18315 a!2986) i!1108 k!1786) (size!18679 a!2986)))))

(declare-fun b!634824 () Bool)

(declare-fun Unit!21408 () Unit!21406)

(assert (=> b!634824 (= e!363055 Unit!21408)))

(assert (=> b!634824 false))

(declare-fun b!634825 () Bool)

(declare-fun res!410812 () Bool)

(assert (=> b!634825 (=> (not res!410812) (not e!363053))))

(assert (=> b!634825 (= res!410812 (and (= (size!18679 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18679 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18679 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!410810 () Bool)

(assert (=> start!57372 (=> (not res!410810) (not e!363053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57372 (= res!410810 (validMask!0 mask!3053))))

(assert (=> start!57372 e!363053))

(assert (=> start!57372 true))

(declare-fun array_inv!14089 (array!38181) Bool)

(assert (=> start!57372 (array_inv!14089 a!2986)))

(declare-fun b!634817 () Bool)

(declare-fun res!410802 () Bool)

(assert (=> b!634817 (=> (not res!410802) (not e!363060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38181 (_ BitVec 32)) Bool)

(assert (=> b!634817 (= res!410802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634826 () Bool)

(declare-fun Unit!21409 () Unit!21406)

(assert (=> b!634826 (= e!363055 Unit!21409)))

(declare-fun b!634827 () Bool)

(declare-fun res!410804 () Bool)

(assert (=> b!634827 (=> (not res!410804) (not e!363053))))

(assert (=> b!634827 (= res!410804 (validKeyInArray!0 k!1786))))

(declare-fun b!634828 () Bool)

(assert (=> b!634828 (= e!363064 (bvslt (size!18679 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!634828 (arrayContainsKey!0 lt!293555 (select (arr!18315 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293550 () Unit!21406)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38181 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21406)

(assert (=> b!634828 (= lt!293550 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293555 (select (arr!18315 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!634829 () Bool)

(declare-fun res!410809 () Bool)

(assert (=> b!634829 (=> (not res!410809) (not e!363060))))

(declare-datatypes ((List!12409 0))(
  ( (Nil!12406) (Cons!12405 (h!13450 (_ BitVec 64)) (t!18645 List!12409)) )
))
(declare-fun arrayNoDuplicates!0 (array!38181 (_ BitVec 32) List!12409) Bool)

(assert (=> b!634829 (= res!410809 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12406))))

(assert (= (and start!57372 res!410810) b!634825))

(assert (= (and b!634825 res!410812) b!634816))

(assert (= (and b!634816 res!410805) b!634827))

(assert (= (and b!634827 res!410804) b!634815))

(assert (= (and b!634815 res!410799) b!634818))

(assert (= (and b!634818 res!410803) b!634817))

(assert (= (and b!634817 res!410802) b!634829))

(assert (= (and b!634829 res!410809) b!634819))

(assert (= (and b!634819 res!410797) b!634823))

(assert (= (and b!634823 res!410811) b!634812))

(assert (= (and b!634812 res!410798) b!634820))

(assert (= (and b!634820 res!410800) b!634813))

(assert (= (and b!634820 c!72374) b!634824))

(assert (= (and b!634820 (not c!72374)) b!634826))

(assert (= (and b!634820 (not res!410806)) b!634814))

(assert (= (and b!634814 res!410813) b!634811))

(assert (= (and b!634811 (not res!410801)) b!634821))

(assert (= (and b!634821 res!410808) b!634822))

(assert (= (and b!634814 (not res!410807)) b!634828))

(declare-fun m!609297 () Bool)

(assert (=> b!634811 m!609297))

(assert (=> b!634816 m!609297))

(assert (=> b!634816 m!609297))

(declare-fun m!609299 () Bool)

(assert (=> b!634816 m!609299))

(declare-fun m!609301 () Bool)

(assert (=> b!634818 m!609301))

(declare-fun m!609303 () Bool)

(assert (=> b!634815 m!609303))

(assert (=> b!634822 m!609297))

(assert (=> b!634822 m!609297))

(declare-fun m!609305 () Bool)

(assert (=> b!634822 m!609305))

(declare-fun m!609307 () Bool)

(assert (=> b!634829 m!609307))

(declare-fun m!609309 () Bool)

(assert (=> b!634823 m!609309))

(declare-fun m!609311 () Bool)

(assert (=> b!634823 m!609311))

(declare-fun m!609313 () Bool)

(assert (=> b!634817 m!609313))

(declare-fun m!609315 () Bool)

(assert (=> start!57372 m!609315))

(declare-fun m!609317 () Bool)

(assert (=> start!57372 m!609317))

(assert (=> b!634828 m!609297))

(assert (=> b!634828 m!609297))

(declare-fun m!609319 () Bool)

(assert (=> b!634828 m!609319))

(assert (=> b!634828 m!609297))

(declare-fun m!609321 () Bool)

(assert (=> b!634828 m!609321))

(assert (=> b!634814 m!609297))

(assert (=> b!634814 m!609309))

(declare-fun m!609323 () Bool)

(assert (=> b!634814 m!609323))

(declare-fun m!609325 () Bool)

(assert (=> b!634812 m!609325))

(assert (=> b!634812 m!609297))

(assert (=> b!634812 m!609297))

(declare-fun m!609327 () Bool)

(assert (=> b!634812 m!609327))

(declare-fun m!609329 () Bool)

(assert (=> b!634827 m!609329))

(declare-fun m!609331 () Bool)

(assert (=> b!634819 m!609331))

(declare-fun m!609333 () Bool)

(assert (=> b!634820 m!609333))

(declare-fun m!609335 () Bool)

(assert (=> b!634820 m!609335))

(assert (=> b!634820 m!609297))

(assert (=> b!634820 m!609309))

(declare-fun m!609337 () Bool)

(assert (=> b!634820 m!609337))

(declare-fun m!609339 () Bool)

(assert (=> b!634820 m!609339))

(declare-fun m!609341 () Bool)

(assert (=> b!634820 m!609341))

(assert (=> b!634820 m!609297))

(declare-fun m!609343 () Bool)

(assert (=> b!634820 m!609343))

(assert (=> b!634821 m!609297))

(assert (=> b!634821 m!609297))

(declare-fun m!609345 () Bool)

(assert (=> b!634821 m!609345))

(push 1)

(assert (not b!634820))

(assert (not b!634816))

(assert (not b!634815))

(assert (not start!57372))

(assert (not b!634821))

(assert (not b!634829))

(assert (not b!634827))

(assert (not b!634822))

(assert (not b!634818))

(assert (not b!634817))

(assert (not b!634812))

(assert (not b!634828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89603 () Bool)

(assert (=> d!89603 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57372 d!89603))

(declare-fun d!89609 () Bool)

(assert (=> d!89609 (= (array_inv!14089 a!2986) (bvsge (size!18679 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57372 d!89609))

(declare-fun b!635053 () Bool)

(declare-fun e!363211 () SeekEntryResult!6762)

(declare-fun e!363210 () SeekEntryResult!6762)

(assert (=> b!635053 (= e!363211 e!363210)))

(declare-fun c!72419 () Bool)

(declare-fun lt!293671 () (_ BitVec 64))

(assert (=> b!635053 (= c!72419 (= lt!293671 lt!293552))))

(declare-fun e!363212 () SeekEntryResult!6762)

(declare-fun b!635054 () Bool)

(assert (=> b!635054 (= e!363212 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!293552 lt!293555 mask!3053))))

(declare-fun b!635055 () Bool)

(assert (=> b!635055 (= e!363211 Undefined!6762)))

(declare-fun b!635056 () Bool)

(assert (=> b!635056 (= e!363212 (MissingVacant!6762 vacantSpotIndex!68))))

(declare-fun lt!293672 () SeekEntryResult!6762)

(declare-fun d!89611 () Bool)

(assert (=> d!89611 (and (or (is-Undefined!6762 lt!293672) (not (is-Found!6762 lt!293672)) (and (bvsge (index!29350 lt!293672) #b00000000000000000000000000000000) (bvslt (index!29350 lt!293672) (size!18679 lt!293555)))) (or (is-Undefined!6762 lt!293672) (is-Found!6762 lt!293672) (not (is-MissingVacant!6762 lt!293672)) (not (= (index!29352 lt!293672) vacantSpotIndex!68)) (and (bvsge (index!29352 lt!293672) #b00000000000000000000000000000000) (bvslt (index!29352 lt!293672) (size!18679 lt!293555)))) (or (is-Undefined!6762 lt!293672) (ite (is-Found!6762 lt!293672) (= (select (arr!18315 lt!293555) (index!29350 lt!293672)) lt!293552) (and (is-MissingVacant!6762 lt!293672) (= (index!29352 lt!293672) vacantSpotIndex!68) (= (select (arr!18315 lt!293555) (index!29352 lt!293672)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89611 (= lt!293672 e!363211)))

(declare-fun c!72417 () Bool)

(assert (=> d!89611 (= c!72417 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89611 (= lt!293671 (select (arr!18315 lt!293555) index!984))))

(assert (=> d!89611 (validMask!0 mask!3053)))

(assert (=> d!89611 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293552 lt!293555 mask!3053) lt!293672)))

(declare-fun b!635057 () Bool)

(assert (=> b!635057 (= e!363210 (Found!6762 index!984))))

(declare-fun b!635058 () Bool)

(declare-fun c!72418 () Bool)

(assert (=> b!635058 (= c!72418 (= lt!293671 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635058 (= e!363210 e!363212)))

(assert (= (and d!89611 c!72417) b!635055))

(assert (= (and d!89611 (not c!72417)) b!635053))

(assert (= (and b!635053 c!72419) b!635057))

(assert (= (and b!635053 (not c!72419)) b!635058))

(assert (= (and b!635058 c!72418) b!635056))

(assert (= (and b!635058 (not c!72418)) b!635054))

(assert (=> b!635054 m!609333))

(assert (=> b!635054 m!609333))

(declare-fun m!609521 () Bool)

(assert (=> b!635054 m!609521))

(declare-fun m!609523 () Bool)

(assert (=> d!89611 m!609523))

(declare-fun m!609525 () Bool)

(assert (=> d!89611 m!609525))

(declare-fun m!609527 () Bool)

(assert (=> d!89611 m!609527))

(assert (=> d!89611 m!609315))

(assert (=> b!634820 d!89611))

(declare-fun d!89627 () Bool)

(declare-fun e!363221 () Bool)

(assert (=> d!89627 e!363221))

(declare-fun res!410961 () Bool)

(assert (=> d!89627 (=> (not res!410961) (not e!363221))))

(assert (=> d!89627 (= res!410961 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18679 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18679 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18679 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18679 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18679 a!2986))))))

(declare-fun lt!293681 () Unit!21406)

(declare-fun choose!9 (array!38181 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21406)

(assert (=> d!89627 (= lt!293681 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293559 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89627 (validMask!0 mask!3053)))

(assert (=> d!89627 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293559 vacantSpotIndex!68 mask!3053) lt!293681)))

(declare-fun b!635067 () Bool)

(assert (=> b!635067 (= e!363221 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293559 vacantSpotIndex!68 (select (arr!18315 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293559 vacantSpotIndex!68 (select (store (arr!18315 a!2986) i!1108 k!1786) j!136) (array!38182 (store (arr!18315 a!2986) i!1108 k!1786) (size!18679 a!2986)) mask!3053)))))

(assert (= (and d!89627 res!410961) b!635067))

(declare-fun m!609535 () Bool)

(assert (=> d!89627 m!609535))

(assert (=> d!89627 m!609315))

(assert (=> b!635067 m!609309))

(assert (=> b!635067 m!609335))

(assert (=> b!635067 m!609297))

(assert (=> b!635067 m!609297))

(assert (=> b!635067 m!609343))

(assert (=> b!635067 m!609335))

(declare-fun m!609539 () Bool)

(assert (=> b!635067 m!609539))

(assert (=> b!634820 d!89627))

(declare-fun b!635068 () Bool)

(declare-fun e!363223 () SeekEntryResult!6762)

(declare-fun e!363222 () SeekEntryResult!6762)

(assert (=> b!635068 (= e!363223 e!363222)))

(declare-fun c!72422 () Bool)

(declare-fun lt!293682 () (_ BitVec 64))

(assert (=> b!635068 (= c!72422 (= lt!293682 lt!293552))))

(declare-fun b!635069 () Bool)

(declare-fun e!363224 () SeekEntryResult!6762)

(assert (=> b!635069 (= e!363224 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!293559 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!293552 lt!293555 mask!3053))))

(declare-fun b!635070 () Bool)

(assert (=> b!635070 (= e!363223 Undefined!6762)))

(declare-fun b!635071 () Bool)

(assert (=> b!635071 (= e!363224 (MissingVacant!6762 vacantSpotIndex!68))))

(declare-fun d!89633 () Bool)

(declare-fun lt!293683 () SeekEntryResult!6762)

(assert (=> d!89633 (and (or (is-Undefined!6762 lt!293683) (not (is-Found!6762 lt!293683)) (and (bvsge (index!29350 lt!293683) #b00000000000000000000000000000000) (bvslt (index!29350 lt!293683) (size!18679 lt!293555)))) (or (is-Undefined!6762 lt!293683) (is-Found!6762 lt!293683) (not (is-MissingVacant!6762 lt!293683)) (not (= (index!29352 lt!293683) vacantSpotIndex!68)) (and (bvsge (index!29352 lt!293683) #b00000000000000000000000000000000) (bvslt (index!29352 lt!293683) (size!18679 lt!293555)))) (or (is-Undefined!6762 lt!293683) (ite (is-Found!6762 lt!293683) (= (select (arr!18315 lt!293555) (index!29350 lt!293683)) lt!293552) (and (is-MissingVacant!6762 lt!293683) (= (index!29352 lt!293683) vacantSpotIndex!68) (= (select (arr!18315 lt!293555) (index!29352 lt!293683)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89633 (= lt!293683 e!363223)))

(declare-fun c!72420 () Bool)

(assert (=> d!89633 (= c!72420 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89633 (= lt!293682 (select (arr!18315 lt!293555) lt!293559))))

(assert (=> d!89633 (validMask!0 mask!3053)))

(assert (=> d!89633 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293559 vacantSpotIndex!68 lt!293552 lt!293555 mask!3053) lt!293683)))

(declare-fun b!635072 () Bool)

(assert (=> b!635072 (= e!363222 (Found!6762 lt!293559))))

(declare-fun b!635073 () Bool)

(declare-fun c!72421 () Bool)

(assert (=> b!635073 (= c!72421 (= lt!293682 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635073 (= e!363222 e!363224)))

(assert (= (and d!89633 c!72420) b!635070))

(assert (= (and d!89633 (not c!72420)) b!635068))

(assert (= (and b!635068 c!72422) b!635072))

(assert (= (and b!635068 (not c!72422)) b!635073))

(assert (= (and b!635073 c!72421) b!635071))

(assert (= (and b!635073 (not c!72421)) b!635069))

(declare-fun m!609541 () Bool)

(assert (=> b!635069 m!609541))

(assert (=> b!635069 m!609541))

(declare-fun m!609543 () Bool)

(assert (=> b!635069 m!609543))

(declare-fun m!609545 () Bool)

(assert (=> d!89633 m!609545))

(declare-fun m!609547 () Bool)

(assert (=> d!89633 m!609547))

(declare-fun m!609549 () Bool)

(assert (=> d!89633 m!609549))

(assert (=> d!89633 m!609315))

(assert (=> b!634820 d!89633))

(declare-fun b!635074 () Bool)

(declare-fun e!363226 () SeekEntryResult!6762)

(declare-fun e!363225 () SeekEntryResult!6762)

(assert (=> b!635074 (= e!363226 e!363225)))

(declare-fun lt!293684 () (_ BitVec 64))

(declare-fun c!72425 () Bool)

(assert (=> b!635074 (= c!72425 (= lt!293684 (select (arr!18315 a!2986) j!136)))))

(declare-fun b!635075 () Bool)

(declare-fun e!363227 () SeekEntryResult!6762)

(assert (=> b!635075 (= e!363227 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!293559 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18315 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635076 () Bool)

(assert (=> b!635076 (= e!363226 Undefined!6762)))

(declare-fun b!635077 () Bool)

(assert (=> b!635077 (= e!363227 (MissingVacant!6762 vacantSpotIndex!68))))

(declare-fun lt!293685 () SeekEntryResult!6762)

(declare-fun d!89635 () Bool)

(assert (=> d!89635 (and (or (is-Undefined!6762 lt!293685) (not (is-Found!6762 lt!293685)) (and (bvsge (index!29350 lt!293685) #b00000000000000000000000000000000) (bvslt (index!29350 lt!293685) (size!18679 a!2986)))) (or (is-Undefined!6762 lt!293685) (is-Found!6762 lt!293685) (not (is-MissingVacant!6762 lt!293685)) (not (= (index!29352 lt!293685) vacantSpotIndex!68)) (and (bvsge (index!29352 lt!293685) #b00000000000000000000000000000000) (bvslt (index!29352 lt!293685) (size!18679 a!2986)))) (or (is-Undefined!6762 lt!293685) (ite (is-Found!6762 lt!293685) (= (select (arr!18315 a!2986) (index!29350 lt!293685)) (select (arr!18315 a!2986) j!136)) (and (is-MissingVacant!6762 lt!293685) (= (index!29352 lt!293685) vacantSpotIndex!68) (= (select (arr!18315 a!2986) (index!29352 lt!293685)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89635 (= lt!293685 e!363226)))

(declare-fun c!72423 () Bool)

(assert (=> d!89635 (= c!72423 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89635 (= lt!293684 (select (arr!18315 a!2986) lt!293559))))

(assert (=> d!89635 (validMask!0 mask!3053)))

(assert (=> d!89635 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293559 vacantSpotIndex!68 (select (arr!18315 a!2986) j!136) a!2986 mask!3053) lt!293685)))

(declare-fun b!635078 () Bool)

(assert (=> b!635078 (= e!363225 (Found!6762 lt!293559))))

(declare-fun b!635079 () Bool)

(declare-fun c!72424 () Bool)

(assert (=> b!635079 (= c!72424 (= lt!293684 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635079 (= e!363225 e!363227)))

(assert (= (and d!89635 c!72423) b!635076))

(assert (= (and d!89635 (not c!72423)) b!635074))

(assert (= (and b!635074 c!72425) b!635078))

(assert (= (and b!635074 (not c!72425)) b!635079))

(assert (= (and b!635079 c!72424) b!635077))

(assert (= (and b!635079 (not c!72424)) b!635075))

(assert (=> b!635075 m!609541))

(assert (=> b!635075 m!609541))

(assert (=> b!635075 m!609297))

(declare-fun m!609551 () Bool)

(assert (=> b!635075 m!609551))

(declare-fun m!609553 () Bool)

(assert (=> d!89635 m!609553))

(declare-fun m!609555 () Bool)

(assert (=> d!89635 m!609555))

(declare-fun m!609557 () Bool)

(assert (=> d!89635 m!609557))

(assert (=> d!89635 m!609315))

(assert (=> b!634820 d!89635))

(declare-fun d!89637 () Bool)

(declare-fun lt!293699 () (_ BitVec 32))

(assert (=> d!89637 (and (bvsge lt!293699 #b00000000000000000000000000000000) (bvslt lt!293699 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89637 (= lt!293699 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89637 (validMask!0 mask!3053)))

(assert (=> d!89637 (= (nextIndex!0 index!984 x!910 mask!3053) lt!293699)))

(declare-fun bs!19088 () Bool)

(assert (= bs!19088 d!89637))

(declare-fun m!609575 () Bool)

(assert (=> bs!19088 m!609575))

(assert (=> bs!19088 m!609315))

(assert (=> b!634820 d!89637))

(declare-fun b!635148 () Bool)

(declare-fun lt!293719 () SeekEntryResult!6762)

(declare-fun e!363268 () SeekEntryResult!6762)

(assert (=> b!635148 (= e!363268 (seekKeyOrZeroReturnVacant!0 (x!58121 lt!293719) (index!29351 lt!293719) (index!29351 lt!293719) k!1786 a!2986 mask!3053))))

(declare-fun b!635149 () Bool)

(declare-fun c!72457 () Bool)

(declare-fun lt!293718 () (_ BitVec 64))

(assert (=> b!635149 (= c!72457 (= lt!293718 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!363266 () SeekEntryResult!6762)

(assert (=> b!635149 (= e!363266 e!363268)))

(declare-fun b!635150 () Bool)

(assert (=> b!635150 (= e!363266 (Found!6762 (index!29351 lt!293719)))))

(declare-fun b!635151 () Bool)

(declare-fun e!363267 () SeekEntryResult!6762)

(assert (=> b!635151 (= e!363267 e!363266)))

(assert (=> b!635151 (= lt!293718 (select (arr!18315 a!2986) (index!29351 lt!293719)))))

(declare-fun c!72456 () Bool)

(assert (=> b!635151 (= c!72456 (= lt!293718 k!1786))))

(declare-fun b!635153 () Bool)

(assert (=> b!635153 (= e!363268 (MissingZero!6762 (index!29351 lt!293719)))))

(declare-fun d!89643 () Bool)

(declare-fun lt!293717 () SeekEntryResult!6762)

(assert (=> d!89643 (and (or (is-Undefined!6762 lt!293717) (not (is-Found!6762 lt!293717)) (and (bvsge (index!29350 lt!293717) #b00000000000000000000000000000000) (bvslt (index!29350 lt!293717) (size!18679 a!2986)))) (or (is-Undefined!6762 lt!293717) (is-Found!6762 lt!293717) (not (is-MissingZero!6762 lt!293717)) (and (bvsge (index!29349 lt!293717) #b00000000000000000000000000000000) (bvslt (index!29349 lt!293717) (size!18679 a!2986)))) (or (is-Undefined!6762 lt!293717) (is-Found!6762 lt!293717) (is-MissingZero!6762 lt!293717) (not (is-MissingVacant!6762 lt!293717)) (and (bvsge (index!29352 lt!293717) #b00000000000000000000000000000000) (bvslt (index!29352 lt!293717) (size!18679 a!2986)))) (or (is-Undefined!6762 lt!293717) (ite (is-Found!6762 lt!293717) (= (select (arr!18315 a!2986) (index!29350 lt!293717)) k!1786) (ite (is-MissingZero!6762 lt!293717) (= (select (arr!18315 a!2986) (index!29349 lt!293717)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6762 lt!293717) (= (select (arr!18315 a!2986) (index!29352 lt!293717)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

