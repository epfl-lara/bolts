; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57034 () Bool)

(assert start!57034)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun e!360888 () Bool)

(declare-fun b!631219 () Bool)

(declare-datatypes ((SeekEntryResult!6713 0))(
  ( (MissingZero!6713 (index!29141 (_ BitVec 32))) (Found!6713 (index!29142 (_ BitVec 32))) (Intermediate!6713 (undefined!7525 Bool) (index!29143 (_ BitVec 32)) (x!57900 (_ BitVec 32))) (Undefined!6713) (MissingVacant!6713 (index!29144 (_ BitVec 32))) )
))
(declare-fun lt!291692 () SeekEntryResult!6713)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38071 0))(
  ( (array!38072 (arr!18266 (Array (_ BitVec 32) (_ BitVec 64))) (size!18630 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38071)

(assert (=> b!631219 (= e!360888 (not (or (not (= lt!291692 (Found!6713 index!984))) (= (select (store (arr!18266 a!2986) i!1108 k!1786) index!984) (select (arr!18266 a!2986) j!136)))))))

(declare-datatypes ((Unit!21210 0))(
  ( (Unit!21211) )
))
(declare-fun lt!291699 () Unit!21210)

(declare-fun e!360887 () Unit!21210)

(assert (=> b!631219 (= lt!291699 e!360887)))

(declare-fun c!71831 () Bool)

(assert (=> b!631219 (= c!71831 (= lt!291692 Undefined!6713))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!291696 () array!38071)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!291693 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38071 (_ BitVec 32)) SeekEntryResult!6713)

(assert (=> b!631219 (= lt!291692 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291693 lt!291696 mask!3053))))

(declare-fun e!360892 () Bool)

(assert (=> b!631219 e!360892))

(declare-fun res!408293 () Bool)

(assert (=> b!631219 (=> (not res!408293) (not e!360892))))

(declare-fun lt!291697 () (_ BitVec 32))

(declare-fun lt!291691 () SeekEntryResult!6713)

(assert (=> b!631219 (= res!408293 (= lt!291691 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291697 vacantSpotIndex!68 lt!291693 lt!291696 mask!3053)))))

(assert (=> b!631219 (= lt!291691 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291697 vacantSpotIndex!68 (select (arr!18266 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631219 (= lt!291693 (select (store (arr!18266 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291698 () Unit!21210)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38071 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21210)

(assert (=> b!631219 (= lt!291698 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291697 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631219 (= lt!291697 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!408292 () Bool)

(declare-fun e!360886 () Bool)

(assert (=> start!57034 (=> (not res!408292) (not e!360886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57034 (= res!408292 (validMask!0 mask!3053))))

(assert (=> start!57034 e!360886))

(assert (=> start!57034 true))

(declare-fun array_inv!14040 (array!38071) Bool)

(assert (=> start!57034 (array_inv!14040 a!2986)))

(declare-fun b!631220 () Bool)

(declare-fun Unit!21212 () Unit!21210)

(assert (=> b!631220 (= e!360887 Unit!21212)))

(assert (=> b!631220 false))

(declare-fun b!631221 () Bool)

(declare-fun e!360890 () Bool)

(assert (=> b!631221 (= e!360890 e!360888)))

(declare-fun res!408294 () Bool)

(assert (=> b!631221 (=> (not res!408294) (not e!360888))))

(declare-fun lt!291695 () SeekEntryResult!6713)

(assert (=> b!631221 (= res!408294 (and (= lt!291695 (Found!6713 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18266 a!2986) index!984) (select (arr!18266 a!2986) j!136))) (not (= (select (arr!18266 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!631221 (= lt!291695 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18266 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631222 () Bool)

(declare-fun res!408291 () Bool)

(assert (=> b!631222 (=> (not res!408291) (not e!360886))))

(declare-fun arrayContainsKey!0 (array!38071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631222 (= res!408291 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631223 () Bool)

(declare-fun e!360889 () Bool)

(assert (=> b!631223 (= e!360886 e!360889)))

(declare-fun res!408296 () Bool)

(assert (=> b!631223 (=> (not res!408296) (not e!360889))))

(declare-fun lt!291694 () SeekEntryResult!6713)

(assert (=> b!631223 (= res!408296 (or (= lt!291694 (MissingZero!6713 i!1108)) (= lt!291694 (MissingVacant!6713 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38071 (_ BitVec 32)) SeekEntryResult!6713)

(assert (=> b!631223 (= lt!291694 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!631224 () Bool)

(declare-fun res!408301 () Bool)

(assert (=> b!631224 (=> (not res!408301) (not e!360886))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631224 (= res!408301 (validKeyInArray!0 k!1786))))

(declare-fun b!631225 () Bool)

(declare-fun res!408298 () Bool)

(assert (=> b!631225 (=> (not res!408298) (not e!360886))))

(assert (=> b!631225 (= res!408298 (and (= (size!18630 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18630 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18630 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631226 () Bool)

(declare-fun res!408299 () Bool)

(assert (=> b!631226 (=> (not res!408299) (not e!360889))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38071 (_ BitVec 32)) Bool)

(assert (=> b!631226 (= res!408299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631227 () Bool)

(declare-fun res!408302 () Bool)

(assert (=> b!631227 (=> (not res!408302) (not e!360886))))

(assert (=> b!631227 (= res!408302 (validKeyInArray!0 (select (arr!18266 a!2986) j!136)))))

(declare-fun b!631228 () Bool)

(assert (=> b!631228 (= e!360889 e!360890)))

(declare-fun res!408295 () Bool)

(assert (=> b!631228 (=> (not res!408295) (not e!360890))))

(assert (=> b!631228 (= res!408295 (= (select (store (arr!18266 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631228 (= lt!291696 (array!38072 (store (arr!18266 a!2986) i!1108 k!1786) (size!18630 a!2986)))))

(declare-fun b!631229 () Bool)

(declare-fun res!408300 () Bool)

(assert (=> b!631229 (=> (not res!408300) (not e!360889))))

(assert (=> b!631229 (= res!408300 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18266 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631230 () Bool)

(assert (=> b!631230 (= e!360892 (= lt!291695 lt!291691))))

(declare-fun b!631231 () Bool)

(declare-fun res!408297 () Bool)

(assert (=> b!631231 (=> (not res!408297) (not e!360889))))

(declare-datatypes ((List!12360 0))(
  ( (Nil!12357) (Cons!12356 (h!13401 (_ BitVec 64)) (t!18596 List!12360)) )
))
(declare-fun arrayNoDuplicates!0 (array!38071 (_ BitVec 32) List!12360) Bool)

(assert (=> b!631231 (= res!408297 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12357))))

(declare-fun b!631232 () Bool)

(declare-fun Unit!21213 () Unit!21210)

(assert (=> b!631232 (= e!360887 Unit!21213)))

(assert (= (and start!57034 res!408292) b!631225))

(assert (= (and b!631225 res!408298) b!631227))

(assert (= (and b!631227 res!408302) b!631224))

(assert (= (and b!631224 res!408301) b!631222))

(assert (= (and b!631222 res!408291) b!631223))

(assert (= (and b!631223 res!408296) b!631226))

(assert (= (and b!631226 res!408299) b!631231))

(assert (= (and b!631231 res!408297) b!631229))

(assert (= (and b!631229 res!408300) b!631228))

(assert (= (and b!631228 res!408295) b!631221))

(assert (= (and b!631221 res!408294) b!631219))

(assert (= (and b!631219 res!408293) b!631230))

(assert (= (and b!631219 c!71831) b!631220))

(assert (= (and b!631219 (not c!71831)) b!631232))

(declare-fun m!606213 () Bool)

(assert (=> start!57034 m!606213))

(declare-fun m!606215 () Bool)

(assert (=> start!57034 m!606215))

(declare-fun m!606217 () Bool)

(assert (=> b!631229 m!606217))

(declare-fun m!606219 () Bool)

(assert (=> b!631228 m!606219))

(declare-fun m!606221 () Bool)

(assert (=> b!631228 m!606221))

(declare-fun m!606223 () Bool)

(assert (=> b!631231 m!606223))

(declare-fun m!606225 () Bool)

(assert (=> b!631226 m!606225))

(declare-fun m!606227 () Bool)

(assert (=> b!631219 m!606227))

(declare-fun m!606229 () Bool)

(assert (=> b!631219 m!606229))

(declare-fun m!606231 () Bool)

(assert (=> b!631219 m!606231))

(declare-fun m!606233 () Bool)

(assert (=> b!631219 m!606233))

(assert (=> b!631219 m!606231))

(assert (=> b!631219 m!606219))

(declare-fun m!606235 () Bool)

(assert (=> b!631219 m!606235))

(declare-fun m!606237 () Bool)

(assert (=> b!631219 m!606237))

(declare-fun m!606239 () Bool)

(assert (=> b!631219 m!606239))

(declare-fun m!606241 () Bool)

(assert (=> b!631219 m!606241))

(declare-fun m!606243 () Bool)

(assert (=> b!631221 m!606243))

(assert (=> b!631221 m!606231))

(assert (=> b!631221 m!606231))

(declare-fun m!606245 () Bool)

(assert (=> b!631221 m!606245))

(declare-fun m!606247 () Bool)

(assert (=> b!631222 m!606247))

(declare-fun m!606249 () Bool)

(assert (=> b!631224 m!606249))

(assert (=> b!631227 m!606231))

(assert (=> b!631227 m!606231))

(declare-fun m!606251 () Bool)

(assert (=> b!631227 m!606251))

(declare-fun m!606253 () Bool)

(assert (=> b!631223 m!606253))

(push 1)

(assert (not b!631219))

(assert (not b!631226))

(assert (not b!631231))

(assert (not b!631227))

(assert (not b!631222))

(assert (not b!631221))

(assert (not b!631224))

(assert (not b!631223))

(assert (not start!57034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89203 () Bool)

(declare-fun res!408328 () Bool)

(declare-fun e!360939 () Bool)

(assert (=> d!89203 (=> res!408328 e!360939)))

(assert (=> d!89203 (= res!408328 (= (select (arr!18266 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!89203 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!360939)))

(declare-fun b!631300 () Bool)

(declare-fun e!360940 () Bool)

(assert (=> b!631300 (= e!360939 e!360940)))

(declare-fun res!408329 () Bool)

(assert (=> b!631300 (=> (not res!408329) (not e!360940))))

(assert (=> b!631300 (= res!408329 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18630 a!2986)))))

(declare-fun b!631301 () Bool)

(assert (=> b!631301 (= e!360940 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89203 (not res!408328)) b!631300))

(assert (= (and b!631300 res!408329) b!631301))

(declare-fun m!606299 () Bool)

(assert (=> d!89203 m!606299))

(declare-fun m!606301 () Bool)

(assert (=> b!631301 m!606301))

(assert (=> b!631222 d!89203))

(declare-fun b!631341 () Bool)

(declare-fun e!360962 () SeekEntryResult!6713)

(declare-fun lt!291742 () SeekEntryResult!6713)

(assert (=> b!631341 (= e!360962 (MissingZero!6713 (index!29143 lt!291742)))))

(declare-fun b!631342 () Bool)

(declare-fun e!360964 () SeekEntryResult!6713)

(assert (=> b!631342 (= e!360964 Undefined!6713)))

(declare-fun b!631343 () Bool)

(declare-fun e!360963 () SeekEntryResult!6713)

(assert (=> b!631343 (= e!360963 (Found!6713 (index!29143 lt!291742)))))

(declare-fun b!631344 () Bool)

(declare-fun c!71872 () Bool)

(declare-fun lt!291743 () (_ BitVec 64))

(assert (=> b!631344 (= c!71872 (= lt!291743 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631344 (= e!360963 e!360962)))

(declare-fun b!631345 () Bool)

(assert (=> b!631345 (= e!360964 e!360963)))

(assert (=> b!631345 (= lt!291743 (select (arr!18266 a!2986) (index!29143 lt!291742)))))

(declare-fun c!71871 () Bool)

(assert (=> b!631345 (= c!71871 (= lt!291743 k!1786))))

(declare-fun b!631346 () Bool)

(assert (=> b!631346 (= e!360962 (seekKeyOrZeroReturnVacant!0 (x!57900 lt!291742) (index!29143 lt!291742) (index!29143 lt!291742) k!1786 a!2986 mask!3053))))

(declare-fun d!89207 () Bool)

(declare-fun lt!291744 () SeekEntryResult!6713)

(assert (=> d!89207 (and (or (is-Undefined!6713 lt!291744) (not (is-Found!6713 lt!291744)) (and (bvsge (index!29142 lt!291744) #b00000000000000000000000000000000) (bvslt (index!29142 lt!291744) (size!18630 a!2986)))) (or (is-Undefined!6713 lt!291744) (is-Found!6713 lt!291744) (not (is-MissingZero!6713 lt!291744)) (and (bvsge (index!29141 lt!291744) #b00000000000000000000000000000000) (bvslt (index!29141 lt!291744) (size!18630 a!2986)))) (or (is-Undefined!6713 lt!291744) (is-Found!6713 lt!291744) (is-MissingZero!6713 lt!291744) (not (is-MissingVacant!6713 lt!291744)) (and (bvsge (index!29144 lt!291744) #b00000000000000000000000000000000) (bvslt (index!29144 lt!291744) (size!18630 a!2986)))) (or (is-Undefined!6713 lt!291744) (ite (is-Found!6713 lt!291744) (= (select (arr!18266 a!2986) (index!29142 lt!291744)) k!1786) (ite (is-MissingZero!6713 lt!291744) (= (select (arr!18266 a!2986) (index!29141 lt!291744)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6713 lt!291744) (= (select (arr!18266 a!2986) (index!29144 lt!291744)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!89207 (= lt!291744 e!360964)))

(declare-fun c!71873 () Bool)

(assert (=> d!89207 (= c!71873 (and (is-Intermediate!6713 lt!291742) (undefined!7525 lt!291742)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38071 (_ BitVec 32)) SeekEntryResult!6713)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89207 (= lt!291742 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!89207 (validMask!0 mask!3053)))

(assert (=> d!89207 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!291744)))

(assert (= (and d!89207 c!71873) b!631342))

(assert (= (and d!89207 (not c!71873)) b!631345))

(assert (= (and b!631345 c!71871) b!631343))

(assert (= (and b!631345 (not c!71871)) b!631344))

(assert (= (and b!631344 c!71872) b!631341))

(assert (= (and b!631344 (not c!71872)) b!631346))

(declare-fun m!606329 () Bool)

(assert (=> b!631345 m!606329))

(declare-fun m!606331 () Bool)

(assert (=> b!631346 m!606331))

(assert (=> d!89207 m!606213))

(declare-fun m!606333 () Bool)

(assert (=> d!89207 m!606333))

(declare-fun m!606335 () Bool)

(assert (=> d!89207 m!606335))

(declare-fun m!606337 () Bool)

(assert (=> d!89207 m!606337))

(assert (=> d!89207 m!606333))

(declare-fun m!606339 () Bool)

(assert (=> d!89207 m!606339))

(declare-fun m!606341 () Bool)

(assert (=> d!89207 m!606341))

(assert (=> b!631223 d!89207))

(declare-fun lt!291759 () SeekEntryResult!6713)

(declare-fun d!89219 () Bool)

(assert (=> d!89219 (and (or (is-Undefined!6713 lt!291759) (not (is-Found!6713 lt!291759)) (and (bvsge (index!29142 lt!291759) #b00000000000000000000000000000000) (bvslt (index!29142 lt!291759) (size!18630 a!2986)))) (or (is-Undefined!6713 lt!291759) (is-Found!6713 lt!291759) (not (is-MissingVacant!6713 lt!291759)) (not (= (index!29144 lt!291759) vacantSpotIndex!68)) (and (bvsge (index!29144 lt!291759) #b00000000000000000000000000000000) (bvslt (index!29144 lt!291759) (size!18630 a!2986)))) (or (is-Undefined!6713 lt!291759) (ite (is-Found!6713 lt!291759) (= (select (arr!18266 a!2986) (index!29142 lt!291759)) (select (arr!18266 a!2986) j!136)) (and (is-MissingVacant!6713 lt!291759) (= (index!29144 lt!291759) vacantSpotIndex!68) (= (select (arr!18266 a!2986) (index!29144 lt!291759)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!360980 () SeekEntryResult!6713)

(assert (=> d!89219 (= lt!291759 e!360980)))

(declare-fun c!71890 () Bool)

(assert (=> d!89219 (= c!71890 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!291758 () (_ BitVec 64))

(assert (=> d!89219 (= lt!291758 (select (arr!18266 a!2986) index!984))))

(assert (=> d!89219 (validMask!0 mask!3053)))

(assert (=> d!89219 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18266 a!2986) j!136) a!2986 mask!3053) lt!291759)))

(declare-fun b!631377 () Bool)

(declare-fun e!360981 () SeekEntryResult!6713)

(assert (=> b!631377 (= e!360981 (Found!6713 index!984))))

