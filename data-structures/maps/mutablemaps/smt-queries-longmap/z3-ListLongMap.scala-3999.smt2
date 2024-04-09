; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54194 () Bool)

(assert start!54194)

(declare-fun b!592193 () Bool)

(declare-fun e!338182 () Bool)

(declare-fun e!338190 () Bool)

(assert (=> b!592193 (= e!338182 (not e!338190))))

(declare-fun res!379210 () Bool)

(assert (=> b!592193 (=> res!379210 e!338190)))

(declare-datatypes ((SeekEntryResult!6157 0))(
  ( (MissingZero!6157 (index!26863 (_ BitVec 32))) (Found!6157 (index!26864 (_ BitVec 32))) (Intermediate!6157 (undefined!6969 Bool) (index!26865 (_ BitVec 32)) (x!55678 (_ BitVec 32))) (Undefined!6157) (MissingVacant!6157 (index!26866 (_ BitVec 32))) )
))
(declare-fun lt!268874 () SeekEntryResult!6157)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!592193 (= res!379210 (not (= lt!268874 (Found!6157 index!984))))))

(declare-datatypes ((Unit!18572 0))(
  ( (Unit!18573) )
))
(declare-fun lt!268868 () Unit!18572)

(declare-fun e!338188 () Unit!18572)

(assert (=> b!592193 (= lt!268868 e!338188)))

(declare-fun c!66860 () Bool)

(assert (=> b!592193 (= c!66860 (= lt!268874 Undefined!6157))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!268871 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!36887 0))(
  ( (array!36888 (arr!17710 (Array (_ BitVec 32) (_ BitVec 64))) (size!18074 (_ BitVec 32))) )
))
(declare-fun lt!268866 () array!36887)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36887 (_ BitVec 32)) SeekEntryResult!6157)

(assert (=> b!592193 (= lt!268874 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268871 lt!268866 mask!3053))))

(declare-fun e!338187 () Bool)

(assert (=> b!592193 e!338187))

(declare-fun res!379215 () Bool)

(assert (=> b!592193 (=> (not res!379215) (not e!338187))))

(declare-fun lt!268872 () (_ BitVec 32))

(declare-fun lt!268867 () SeekEntryResult!6157)

(assert (=> b!592193 (= res!379215 (= lt!268867 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268872 vacantSpotIndex!68 lt!268871 lt!268866 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!36887)

(assert (=> b!592193 (= lt!268867 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268872 vacantSpotIndex!68 (select (arr!17710 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!592193 (= lt!268871 (select (store (arr!17710 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!268870 () Unit!18572)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36887 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18572)

(assert (=> b!592193 (= lt!268870 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268872 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!592193 (= lt!268872 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!592194 () Bool)

(declare-fun res!379211 () Bool)

(declare-fun e!338186 () Bool)

(assert (=> b!592194 (=> (not res!379211) (not e!338186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!592194 (= res!379211 (validKeyInArray!0 k0!1786))))

(declare-fun b!592195 () Bool)

(declare-fun Unit!18574 () Unit!18572)

(assert (=> b!592195 (= e!338188 Unit!18574)))

(assert (=> b!592195 false))

(declare-fun b!592196 () Bool)

(declare-fun e!338181 () Bool)

(assert (=> b!592196 (= e!338190 e!338181)))

(declare-fun res!379217 () Bool)

(assert (=> b!592196 (=> res!379217 e!338181)))

(declare-fun lt!268875 () (_ BitVec 64))

(assert (=> b!592196 (= res!379217 (or (not (= (select (arr!17710 a!2986) j!136) lt!268871)) (not (= (select (arr!17710 a!2986) j!136) lt!268875)) (bvsge j!136 index!984)))))

(declare-fun e!338180 () Bool)

(assert (=> b!592196 e!338180))

(declare-fun res!379223 () Bool)

(assert (=> b!592196 (=> (not res!379223) (not e!338180))))

(assert (=> b!592196 (= res!379223 (= lt!268875 (select (arr!17710 a!2986) j!136)))))

(assert (=> b!592196 (= lt!268875 (select (store (arr!17710 a!2986) i!1108 k0!1786) index!984))))

(declare-fun e!338189 () Bool)

(declare-fun b!592197 () Bool)

(declare-fun arrayContainsKey!0 (array!36887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!592197 (= e!338189 (arrayContainsKey!0 lt!268866 (select (arr!17710 a!2986) j!136) index!984))))

(declare-fun b!592198 () Bool)

(assert (=> b!592198 (= e!338181 (or (bvslt (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18074 a!2986)) (bvslt (size!18074 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!592198 (arrayContainsKey!0 lt!268866 (select (arr!17710 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!268873 () Unit!18572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36887 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18572)

(assert (=> b!592198 (= lt!268873 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!268866 (select (arr!17710 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!592199 () Bool)

(declare-fun res!379213 () Bool)

(declare-fun e!338183 () Bool)

(assert (=> b!592199 (=> (not res!379213) (not e!338183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36887 (_ BitVec 32)) Bool)

(assert (=> b!592199 (= res!379213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!592200 () Bool)

(declare-fun e!338185 () Bool)

(assert (=> b!592200 (= e!338185 e!338182)))

(declare-fun res!379207 () Bool)

(assert (=> b!592200 (=> (not res!379207) (not e!338182))))

(declare-fun lt!268869 () SeekEntryResult!6157)

(assert (=> b!592200 (= res!379207 (and (= lt!268869 (Found!6157 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17710 a!2986) index!984) (select (arr!17710 a!2986) j!136))) (not (= (select (arr!17710 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!592200 (= lt!268869 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17710 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592201 () Bool)

(declare-fun res!379222 () Bool)

(assert (=> b!592201 (=> (not res!379222) (not e!338183))))

(assert (=> b!592201 (= res!379222 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17710 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!379208 () Bool)

(assert (=> start!54194 (=> (not res!379208) (not e!338186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54194 (= res!379208 (validMask!0 mask!3053))))

(assert (=> start!54194 e!338186))

(assert (=> start!54194 true))

(declare-fun array_inv!13484 (array!36887) Bool)

(assert (=> start!54194 (array_inv!13484 a!2986)))

(declare-fun b!592202 () Bool)

(assert (=> b!592202 (= e!338187 (= lt!268869 lt!268867))))

(declare-fun b!592203 () Bool)

(declare-fun Unit!18575 () Unit!18572)

(assert (=> b!592203 (= e!338188 Unit!18575)))

(declare-fun b!592204 () Bool)

(declare-fun res!379220 () Bool)

(assert (=> b!592204 (=> (not res!379220) (not e!338186))))

(assert (=> b!592204 (= res!379220 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!592205 () Bool)

(declare-fun e!338184 () Bool)

(assert (=> b!592205 (= e!338180 e!338184)))

(declare-fun res!379219 () Bool)

(assert (=> b!592205 (=> res!379219 e!338184)))

(assert (=> b!592205 (= res!379219 (or (not (= (select (arr!17710 a!2986) j!136) lt!268871)) (not (= (select (arr!17710 a!2986) j!136) lt!268875)) (bvsge j!136 index!984)))))

(declare-fun b!592206 () Bool)

(assert (=> b!592206 (= e!338184 e!338189)))

(declare-fun res!379214 () Bool)

(assert (=> b!592206 (=> (not res!379214) (not e!338189))))

(assert (=> b!592206 (= res!379214 (arrayContainsKey!0 lt!268866 (select (arr!17710 a!2986) j!136) j!136))))

(declare-fun b!592207 () Bool)

(assert (=> b!592207 (= e!338186 e!338183)))

(declare-fun res!379221 () Bool)

(assert (=> b!592207 (=> (not res!379221) (not e!338183))))

(declare-fun lt!268865 () SeekEntryResult!6157)

(assert (=> b!592207 (= res!379221 (or (= lt!268865 (MissingZero!6157 i!1108)) (= lt!268865 (MissingVacant!6157 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36887 (_ BitVec 32)) SeekEntryResult!6157)

(assert (=> b!592207 (= lt!268865 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!592208 () Bool)

(assert (=> b!592208 (= e!338183 e!338185)))

(declare-fun res!379212 () Bool)

(assert (=> b!592208 (=> (not res!379212) (not e!338185))))

(assert (=> b!592208 (= res!379212 (= (select (store (arr!17710 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592208 (= lt!268866 (array!36888 (store (arr!17710 a!2986) i!1108 k0!1786) (size!18074 a!2986)))))

(declare-fun b!592209 () Bool)

(declare-fun res!379209 () Bool)

(assert (=> b!592209 (=> (not res!379209) (not e!338183))))

(declare-datatypes ((List!11804 0))(
  ( (Nil!11801) (Cons!11800 (h!12845 (_ BitVec 64)) (t!18040 List!11804)) )
))
(declare-fun arrayNoDuplicates!0 (array!36887 (_ BitVec 32) List!11804) Bool)

(assert (=> b!592209 (= res!379209 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11801))))

(declare-fun b!592210 () Bool)

(declare-fun res!379218 () Bool)

(assert (=> b!592210 (=> (not res!379218) (not e!338186))))

(assert (=> b!592210 (= res!379218 (and (= (size!18074 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18074 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18074 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!592211 () Bool)

(declare-fun res!379216 () Bool)

(assert (=> b!592211 (=> (not res!379216) (not e!338186))))

(assert (=> b!592211 (= res!379216 (validKeyInArray!0 (select (arr!17710 a!2986) j!136)))))

(assert (= (and start!54194 res!379208) b!592210))

(assert (= (and b!592210 res!379218) b!592211))

(assert (= (and b!592211 res!379216) b!592194))

(assert (= (and b!592194 res!379211) b!592204))

(assert (= (and b!592204 res!379220) b!592207))

(assert (= (and b!592207 res!379221) b!592199))

(assert (= (and b!592199 res!379213) b!592209))

(assert (= (and b!592209 res!379209) b!592201))

(assert (= (and b!592201 res!379222) b!592208))

(assert (= (and b!592208 res!379212) b!592200))

(assert (= (and b!592200 res!379207) b!592193))

(assert (= (and b!592193 res!379215) b!592202))

(assert (= (and b!592193 c!66860) b!592195))

(assert (= (and b!592193 (not c!66860)) b!592203))

(assert (= (and b!592193 (not res!379210)) b!592196))

(assert (= (and b!592196 res!379223) b!592205))

(assert (= (and b!592205 (not res!379219)) b!592206))

(assert (= (and b!592206 res!379214) b!592197))

(assert (= (and b!592196 (not res!379217)) b!592198))

(declare-fun m!570341 () Bool)

(assert (=> b!592196 m!570341))

(declare-fun m!570343 () Bool)

(assert (=> b!592196 m!570343))

(declare-fun m!570345 () Bool)

(assert (=> b!592196 m!570345))

(declare-fun m!570347 () Bool)

(assert (=> b!592199 m!570347))

(assert (=> b!592197 m!570341))

(assert (=> b!592197 m!570341))

(declare-fun m!570349 () Bool)

(assert (=> b!592197 m!570349))

(assert (=> b!592205 m!570341))

(assert (=> b!592206 m!570341))

(assert (=> b!592206 m!570341))

(declare-fun m!570351 () Bool)

(assert (=> b!592206 m!570351))

(declare-fun m!570353 () Bool)

(assert (=> b!592207 m!570353))

(declare-fun m!570355 () Bool)

(assert (=> b!592193 m!570355))

(declare-fun m!570357 () Bool)

(assert (=> b!592193 m!570357))

(assert (=> b!592193 m!570341))

(assert (=> b!592193 m!570341))

(declare-fun m!570359 () Bool)

(assert (=> b!592193 m!570359))

(assert (=> b!592193 m!570343))

(declare-fun m!570361 () Bool)

(assert (=> b!592193 m!570361))

(declare-fun m!570363 () Bool)

(assert (=> b!592193 m!570363))

(declare-fun m!570365 () Bool)

(assert (=> b!592193 m!570365))

(declare-fun m!570367 () Bool)

(assert (=> b!592194 m!570367))

(declare-fun m!570369 () Bool)

(assert (=> b!592204 m!570369))

(declare-fun m!570371 () Bool)

(assert (=> b!592200 m!570371))

(assert (=> b!592200 m!570341))

(assert (=> b!592200 m!570341))

(declare-fun m!570373 () Bool)

(assert (=> b!592200 m!570373))

(assert (=> b!592198 m!570341))

(assert (=> b!592198 m!570341))

(declare-fun m!570375 () Bool)

(assert (=> b!592198 m!570375))

(assert (=> b!592198 m!570341))

(declare-fun m!570377 () Bool)

(assert (=> b!592198 m!570377))

(declare-fun m!570379 () Bool)

(assert (=> b!592201 m!570379))

(declare-fun m!570381 () Bool)

(assert (=> start!54194 m!570381))

(declare-fun m!570383 () Bool)

(assert (=> start!54194 m!570383))

(declare-fun m!570385 () Bool)

(assert (=> b!592209 m!570385))

(assert (=> b!592211 m!570341))

(assert (=> b!592211 m!570341))

(declare-fun m!570387 () Bool)

(assert (=> b!592211 m!570387))

(assert (=> b!592208 m!570343))

(declare-fun m!570389 () Bool)

(assert (=> b!592208 m!570389))

(check-sat (not b!592199) (not b!592211) (not b!592194) (not b!592209) (not b!592198) (not b!592204) (not b!592206) (not start!54194) (not b!592193) (not b!592207) (not b!592197) (not b!592200))
(check-sat)
(get-model)

(declare-fun d!86091 () Bool)

(declare-fun res!379279 () Bool)

(declare-fun e!338232 () Bool)

(assert (=> d!86091 (=> res!379279 e!338232)))

(assert (=> d!86091 (= res!379279 (= (select (arr!17710 lt!268866) j!136) (select (arr!17710 a!2986) j!136)))))

(assert (=> d!86091 (= (arrayContainsKey!0 lt!268866 (select (arr!17710 a!2986) j!136) j!136) e!338232)))

(declare-fun b!592273 () Bool)

(declare-fun e!338233 () Bool)

(assert (=> b!592273 (= e!338232 e!338233)))

(declare-fun res!379280 () Bool)

(assert (=> b!592273 (=> (not res!379280) (not e!338233))))

(assert (=> b!592273 (= res!379280 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18074 lt!268866)))))

(declare-fun b!592274 () Bool)

(assert (=> b!592274 (= e!338233 (arrayContainsKey!0 lt!268866 (select (arr!17710 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86091 (not res!379279)) b!592273))

(assert (= (and b!592273 res!379280) b!592274))

(declare-fun m!570441 () Bool)

(assert (=> d!86091 m!570441))

(assert (=> b!592274 m!570341))

(declare-fun m!570443 () Bool)

(assert (=> b!592274 m!570443))

(assert (=> b!592206 d!86091))

(declare-fun d!86093 () Bool)

(assert (=> d!86093 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!592194 d!86093))

(declare-fun b!592287 () Bool)

(declare-fun e!338241 () SeekEntryResult!6157)

(assert (=> b!592287 (= e!338241 Undefined!6157)))

(declare-fun b!592288 () Bool)

(declare-fun c!66871 () Bool)

(declare-fun lt!268913 () (_ BitVec 64))

(assert (=> b!592288 (= c!66871 (= lt!268913 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!338240 () SeekEntryResult!6157)

(declare-fun e!338242 () SeekEntryResult!6157)

(assert (=> b!592288 (= e!338240 e!338242)))

(declare-fun d!86095 () Bool)

(declare-fun lt!268914 () SeekEntryResult!6157)

(get-info :version)

(assert (=> d!86095 (and (or ((_ is Undefined!6157) lt!268914) (not ((_ is Found!6157) lt!268914)) (and (bvsge (index!26864 lt!268914) #b00000000000000000000000000000000) (bvslt (index!26864 lt!268914) (size!18074 a!2986)))) (or ((_ is Undefined!6157) lt!268914) ((_ is Found!6157) lt!268914) (not ((_ is MissingVacant!6157) lt!268914)) (not (= (index!26866 lt!268914) vacantSpotIndex!68)) (and (bvsge (index!26866 lt!268914) #b00000000000000000000000000000000) (bvslt (index!26866 lt!268914) (size!18074 a!2986)))) (or ((_ is Undefined!6157) lt!268914) (ite ((_ is Found!6157) lt!268914) (= (select (arr!17710 a!2986) (index!26864 lt!268914)) (select (arr!17710 a!2986) j!136)) (and ((_ is MissingVacant!6157) lt!268914) (= (index!26866 lt!268914) vacantSpotIndex!68) (= (select (arr!17710 a!2986) (index!26866 lt!268914)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86095 (= lt!268914 e!338241)))

(declare-fun c!66870 () Bool)

(assert (=> d!86095 (= c!66870 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86095 (= lt!268913 (select (arr!17710 a!2986) lt!268872))))

(assert (=> d!86095 (validMask!0 mask!3053)))

(assert (=> d!86095 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268872 vacantSpotIndex!68 (select (arr!17710 a!2986) j!136) a!2986 mask!3053) lt!268914)))

(declare-fun b!592289 () Bool)

(assert (=> b!592289 (= e!338242 (MissingVacant!6157 vacantSpotIndex!68))))

(declare-fun b!592290 () Bool)

(assert (=> b!592290 (= e!338242 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!268872 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17710 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592291 () Bool)

(assert (=> b!592291 (= e!338241 e!338240)))

(declare-fun c!66872 () Bool)

(assert (=> b!592291 (= c!66872 (= lt!268913 (select (arr!17710 a!2986) j!136)))))

(declare-fun b!592292 () Bool)

(assert (=> b!592292 (= e!338240 (Found!6157 lt!268872))))

(assert (= (and d!86095 c!66870) b!592287))

(assert (= (and d!86095 (not c!66870)) b!592291))

(assert (= (and b!592291 c!66872) b!592292))

(assert (= (and b!592291 (not c!66872)) b!592288))

(assert (= (and b!592288 c!66871) b!592289))

(assert (= (and b!592288 (not c!66871)) b!592290))

(declare-fun m!570445 () Bool)

(assert (=> d!86095 m!570445))

(declare-fun m!570447 () Bool)

(assert (=> d!86095 m!570447))

(declare-fun m!570449 () Bool)

(assert (=> d!86095 m!570449))

(assert (=> d!86095 m!570381))

(declare-fun m!570451 () Bool)

(assert (=> b!592290 m!570451))

(assert (=> b!592290 m!570451))

(assert (=> b!592290 m!570341))

(declare-fun m!570453 () Bool)

(assert (=> b!592290 m!570453))

(assert (=> b!592193 d!86095))

(declare-fun d!86097 () Bool)

(declare-fun e!338245 () Bool)

(assert (=> d!86097 e!338245))

(declare-fun res!379283 () Bool)

(assert (=> d!86097 (=> (not res!379283) (not e!338245))))

(assert (=> d!86097 (= res!379283 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18074 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18074 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18074 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18074 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18074 a!2986))))))

(declare-fun lt!268917 () Unit!18572)

(declare-fun choose!9 (array!36887 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18572)

(assert (=> d!86097 (= lt!268917 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268872 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86097 (validMask!0 mask!3053)))

(assert (=> d!86097 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268872 vacantSpotIndex!68 mask!3053) lt!268917)))

(declare-fun b!592295 () Bool)

(assert (=> b!592295 (= e!338245 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268872 vacantSpotIndex!68 (select (arr!17710 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268872 vacantSpotIndex!68 (select (store (arr!17710 a!2986) i!1108 k0!1786) j!136) (array!36888 (store (arr!17710 a!2986) i!1108 k0!1786) (size!18074 a!2986)) mask!3053)))))

(assert (= (and d!86097 res!379283) b!592295))

(declare-fun m!570455 () Bool)

(assert (=> d!86097 m!570455))

(assert (=> d!86097 m!570381))

(assert (=> b!592295 m!570341))

(assert (=> b!592295 m!570359))

(assert (=> b!592295 m!570343))

(assert (=> b!592295 m!570341))

(assert (=> b!592295 m!570357))

(assert (=> b!592295 m!570357))

(declare-fun m!570457 () Bool)

(assert (=> b!592295 m!570457))

(assert (=> b!592193 d!86097))

(declare-fun d!86099 () Bool)

(declare-fun lt!268920 () (_ BitVec 32))

(assert (=> d!86099 (and (bvsge lt!268920 #b00000000000000000000000000000000) (bvslt lt!268920 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86099 (= lt!268920 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86099 (validMask!0 mask!3053)))

(assert (=> d!86099 (= (nextIndex!0 index!984 x!910 mask!3053) lt!268920)))

(declare-fun bs!18284 () Bool)

(assert (= bs!18284 d!86099))

(declare-fun m!570459 () Bool)

(assert (=> bs!18284 m!570459))

(assert (=> bs!18284 m!570381))

(assert (=> b!592193 d!86099))

(declare-fun b!592296 () Bool)

(declare-fun e!338247 () SeekEntryResult!6157)

(assert (=> b!592296 (= e!338247 Undefined!6157)))

(declare-fun b!592297 () Bool)

(declare-fun c!66874 () Bool)

(declare-fun lt!268921 () (_ BitVec 64))

(assert (=> b!592297 (= c!66874 (= lt!268921 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!338246 () SeekEntryResult!6157)

(declare-fun e!338248 () SeekEntryResult!6157)

(assert (=> b!592297 (= e!338246 e!338248)))

(declare-fun lt!268922 () SeekEntryResult!6157)

(declare-fun d!86101 () Bool)

(assert (=> d!86101 (and (or ((_ is Undefined!6157) lt!268922) (not ((_ is Found!6157) lt!268922)) (and (bvsge (index!26864 lt!268922) #b00000000000000000000000000000000) (bvslt (index!26864 lt!268922) (size!18074 lt!268866)))) (or ((_ is Undefined!6157) lt!268922) ((_ is Found!6157) lt!268922) (not ((_ is MissingVacant!6157) lt!268922)) (not (= (index!26866 lt!268922) vacantSpotIndex!68)) (and (bvsge (index!26866 lt!268922) #b00000000000000000000000000000000) (bvslt (index!26866 lt!268922) (size!18074 lt!268866)))) (or ((_ is Undefined!6157) lt!268922) (ite ((_ is Found!6157) lt!268922) (= (select (arr!17710 lt!268866) (index!26864 lt!268922)) lt!268871) (and ((_ is MissingVacant!6157) lt!268922) (= (index!26866 lt!268922) vacantSpotIndex!68) (= (select (arr!17710 lt!268866) (index!26866 lt!268922)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86101 (= lt!268922 e!338247)))

(declare-fun c!66873 () Bool)

(assert (=> d!86101 (= c!66873 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86101 (= lt!268921 (select (arr!17710 lt!268866) index!984))))

(assert (=> d!86101 (validMask!0 mask!3053)))

(assert (=> d!86101 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268871 lt!268866 mask!3053) lt!268922)))

(declare-fun b!592298 () Bool)

(assert (=> b!592298 (= e!338248 (MissingVacant!6157 vacantSpotIndex!68))))

(declare-fun b!592299 () Bool)

(assert (=> b!592299 (= e!338248 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!268871 lt!268866 mask!3053))))

(declare-fun b!592300 () Bool)

(assert (=> b!592300 (= e!338247 e!338246)))

(declare-fun c!66875 () Bool)

(assert (=> b!592300 (= c!66875 (= lt!268921 lt!268871))))

(declare-fun b!592301 () Bool)

(assert (=> b!592301 (= e!338246 (Found!6157 index!984))))

(assert (= (and d!86101 c!66873) b!592296))

(assert (= (and d!86101 (not c!66873)) b!592300))

(assert (= (and b!592300 c!66875) b!592301))

(assert (= (and b!592300 (not c!66875)) b!592297))

(assert (= (and b!592297 c!66874) b!592298))

(assert (= (and b!592297 (not c!66874)) b!592299))

(declare-fun m!570461 () Bool)

(assert (=> d!86101 m!570461))

(declare-fun m!570463 () Bool)

(assert (=> d!86101 m!570463))

(declare-fun m!570465 () Bool)

(assert (=> d!86101 m!570465))

(assert (=> d!86101 m!570381))

(assert (=> b!592299 m!570355))

(assert (=> b!592299 m!570355))

(declare-fun m!570467 () Bool)

(assert (=> b!592299 m!570467))

(assert (=> b!592193 d!86101))

(declare-fun b!592302 () Bool)

(declare-fun e!338250 () SeekEntryResult!6157)

(assert (=> b!592302 (= e!338250 Undefined!6157)))

(declare-fun b!592303 () Bool)

(declare-fun c!66877 () Bool)

(declare-fun lt!268923 () (_ BitVec 64))

(assert (=> b!592303 (= c!66877 (= lt!268923 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!338249 () SeekEntryResult!6157)

(declare-fun e!338251 () SeekEntryResult!6157)

(assert (=> b!592303 (= e!338249 e!338251)))

(declare-fun lt!268924 () SeekEntryResult!6157)

(declare-fun d!86103 () Bool)

(assert (=> d!86103 (and (or ((_ is Undefined!6157) lt!268924) (not ((_ is Found!6157) lt!268924)) (and (bvsge (index!26864 lt!268924) #b00000000000000000000000000000000) (bvslt (index!26864 lt!268924) (size!18074 lt!268866)))) (or ((_ is Undefined!6157) lt!268924) ((_ is Found!6157) lt!268924) (not ((_ is MissingVacant!6157) lt!268924)) (not (= (index!26866 lt!268924) vacantSpotIndex!68)) (and (bvsge (index!26866 lt!268924) #b00000000000000000000000000000000) (bvslt (index!26866 lt!268924) (size!18074 lt!268866)))) (or ((_ is Undefined!6157) lt!268924) (ite ((_ is Found!6157) lt!268924) (= (select (arr!17710 lt!268866) (index!26864 lt!268924)) lt!268871) (and ((_ is MissingVacant!6157) lt!268924) (= (index!26866 lt!268924) vacantSpotIndex!68) (= (select (arr!17710 lt!268866) (index!26866 lt!268924)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86103 (= lt!268924 e!338250)))

(declare-fun c!66876 () Bool)

(assert (=> d!86103 (= c!66876 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86103 (= lt!268923 (select (arr!17710 lt!268866) lt!268872))))

(assert (=> d!86103 (validMask!0 mask!3053)))

(assert (=> d!86103 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268872 vacantSpotIndex!68 lt!268871 lt!268866 mask!3053) lt!268924)))

(declare-fun b!592304 () Bool)

(assert (=> b!592304 (= e!338251 (MissingVacant!6157 vacantSpotIndex!68))))

(declare-fun b!592305 () Bool)

(assert (=> b!592305 (= e!338251 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!268872 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!268871 lt!268866 mask!3053))))

(declare-fun b!592306 () Bool)

(assert (=> b!592306 (= e!338250 e!338249)))

(declare-fun c!66878 () Bool)

(assert (=> b!592306 (= c!66878 (= lt!268923 lt!268871))))

(declare-fun b!592307 () Bool)

(assert (=> b!592307 (= e!338249 (Found!6157 lt!268872))))

(assert (= (and d!86103 c!66876) b!592302))

(assert (= (and d!86103 (not c!66876)) b!592306))

(assert (= (and b!592306 c!66878) b!592307))

(assert (= (and b!592306 (not c!66878)) b!592303))

(assert (= (and b!592303 c!66877) b!592304))

(assert (= (and b!592303 (not c!66877)) b!592305))

(declare-fun m!570469 () Bool)

(assert (=> d!86103 m!570469))

(declare-fun m!570471 () Bool)

(assert (=> d!86103 m!570471))

(declare-fun m!570473 () Bool)

(assert (=> d!86103 m!570473))

(assert (=> d!86103 m!570381))

(assert (=> b!592305 m!570451))

(assert (=> b!592305 m!570451))

(declare-fun m!570475 () Bool)

(assert (=> b!592305 m!570475))

(assert (=> b!592193 d!86103))

(declare-fun d!86105 () Bool)

(declare-fun res!379284 () Bool)

(declare-fun e!338252 () Bool)

(assert (=> d!86105 (=> res!379284 e!338252)))

(assert (=> d!86105 (= res!379284 (= (select (arr!17710 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!86105 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!338252)))

(declare-fun b!592308 () Bool)

(declare-fun e!338253 () Bool)

(assert (=> b!592308 (= e!338252 e!338253)))

(declare-fun res!379285 () Bool)

(assert (=> b!592308 (=> (not res!379285) (not e!338253))))

(assert (=> b!592308 (= res!379285 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18074 a!2986)))))

(declare-fun b!592309 () Bool)

(assert (=> b!592309 (= e!338253 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86105 (not res!379284)) b!592308))

(assert (= (and b!592308 res!379285) b!592309))

(declare-fun m!570477 () Bool)

(assert (=> d!86105 m!570477))

(declare-fun m!570479 () Bool)

(assert (=> b!592309 m!570479))

(assert (=> b!592204 d!86105))

(declare-fun d!86107 () Bool)

(declare-fun res!379286 () Bool)

(declare-fun e!338254 () Bool)

(assert (=> d!86107 (=> res!379286 e!338254)))

(assert (=> d!86107 (= res!379286 (= (select (arr!17710 lt!268866) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17710 a!2986) j!136)))))

(assert (=> d!86107 (= (arrayContainsKey!0 lt!268866 (select (arr!17710 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!338254)))

(declare-fun b!592310 () Bool)

(declare-fun e!338255 () Bool)

(assert (=> b!592310 (= e!338254 e!338255)))

(declare-fun res!379287 () Bool)

(assert (=> b!592310 (=> (not res!379287) (not e!338255))))

(assert (=> b!592310 (= res!379287 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18074 lt!268866)))))

(declare-fun b!592311 () Bool)

(assert (=> b!592311 (= e!338255 (arrayContainsKey!0 lt!268866 (select (arr!17710 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86107 (not res!379286)) b!592310))

(assert (= (and b!592310 res!379287) b!592311))

(declare-fun m!570481 () Bool)

(assert (=> d!86107 m!570481))

(assert (=> b!592311 m!570341))

(declare-fun m!570483 () Bool)

(assert (=> b!592311 m!570483))

(assert (=> b!592198 d!86107))

(declare-fun d!86109 () Bool)

(assert (=> d!86109 (arrayContainsKey!0 lt!268866 (select (arr!17710 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!268927 () Unit!18572)

(declare-fun choose!114 (array!36887 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18572)

(assert (=> d!86109 (= lt!268927 (choose!114 lt!268866 (select (arr!17710 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86109 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86109 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!268866 (select (arr!17710 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!268927)))

(declare-fun bs!18285 () Bool)

(assert (= bs!18285 d!86109))

(assert (=> bs!18285 m!570341))

(assert (=> bs!18285 m!570375))

(assert (=> bs!18285 m!570341))

(declare-fun m!570485 () Bool)

(assert (=> bs!18285 m!570485))

(assert (=> b!592198 d!86109))

(declare-fun d!86111 () Bool)

(declare-fun res!379288 () Bool)

(declare-fun e!338256 () Bool)

(assert (=> d!86111 (=> res!379288 e!338256)))

(assert (=> d!86111 (= res!379288 (= (select (arr!17710 lt!268866) index!984) (select (arr!17710 a!2986) j!136)))))

(assert (=> d!86111 (= (arrayContainsKey!0 lt!268866 (select (arr!17710 a!2986) j!136) index!984) e!338256)))

(declare-fun b!592312 () Bool)

(declare-fun e!338257 () Bool)

(assert (=> b!592312 (= e!338256 e!338257)))

(declare-fun res!379289 () Bool)

(assert (=> b!592312 (=> (not res!379289) (not e!338257))))

(assert (=> b!592312 (= res!379289 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18074 lt!268866)))))

(declare-fun b!592313 () Bool)

(assert (=> b!592313 (= e!338257 (arrayContainsKey!0 lt!268866 (select (arr!17710 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!86111 (not res!379288)) b!592312))

(assert (= (and b!592312 res!379289) b!592313))

(assert (=> d!86111 m!570465))

(assert (=> b!592313 m!570341))

(declare-fun m!570487 () Bool)

(assert (=> b!592313 m!570487))

(assert (=> b!592197 d!86111))

(declare-fun b!592357 () Bool)

(declare-fun e!338292 () SeekEntryResult!6157)

(assert (=> b!592357 (= e!338292 Undefined!6157)))

(declare-fun b!592358 () Bool)

(declare-fun e!338293 () SeekEntryResult!6157)

(declare-fun lt!268938 () SeekEntryResult!6157)

(assert (=> b!592358 (= e!338293 (Found!6157 (index!26865 lt!268938)))))

(declare-fun b!592359 () Bool)

(declare-fun e!338294 () SeekEntryResult!6157)

(assert (=> b!592359 (= e!338294 (MissingZero!6157 (index!26865 lt!268938)))))

(declare-fun d!86113 () Bool)

(declare-fun lt!268939 () SeekEntryResult!6157)

(assert (=> d!86113 (and (or ((_ is Undefined!6157) lt!268939) (not ((_ is Found!6157) lt!268939)) (and (bvsge (index!26864 lt!268939) #b00000000000000000000000000000000) (bvslt (index!26864 lt!268939) (size!18074 a!2986)))) (or ((_ is Undefined!6157) lt!268939) ((_ is Found!6157) lt!268939) (not ((_ is MissingZero!6157) lt!268939)) (and (bvsge (index!26863 lt!268939) #b00000000000000000000000000000000) (bvslt (index!26863 lt!268939) (size!18074 a!2986)))) (or ((_ is Undefined!6157) lt!268939) ((_ is Found!6157) lt!268939) ((_ is MissingZero!6157) lt!268939) (not ((_ is MissingVacant!6157) lt!268939)) (and (bvsge (index!26866 lt!268939) #b00000000000000000000000000000000) (bvslt (index!26866 lt!268939) (size!18074 a!2986)))) (or ((_ is Undefined!6157) lt!268939) (ite ((_ is Found!6157) lt!268939) (= (select (arr!17710 a!2986) (index!26864 lt!268939)) k0!1786) (ite ((_ is MissingZero!6157) lt!268939) (= (select (arr!17710 a!2986) (index!26863 lt!268939)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6157) lt!268939) (= (select (arr!17710 a!2986) (index!26866 lt!268939)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86113 (= lt!268939 e!338292)))

(declare-fun c!66889 () Bool)

(assert (=> d!86113 (= c!66889 (and ((_ is Intermediate!6157) lt!268938) (undefined!6969 lt!268938)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36887 (_ BitVec 32)) SeekEntryResult!6157)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86113 (= lt!268938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!86113 (validMask!0 mask!3053)))

(assert (=> d!86113 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!268939)))

(declare-fun b!592360 () Bool)

(declare-fun c!66890 () Bool)

(declare-fun lt!268937 () (_ BitVec 64))

(assert (=> b!592360 (= c!66890 (= lt!268937 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592360 (= e!338293 e!338294)))

(declare-fun b!592361 () Bool)

(assert (=> b!592361 (= e!338294 (seekKeyOrZeroReturnVacant!0 (x!55678 lt!268938) (index!26865 lt!268938) (index!26865 lt!268938) k0!1786 a!2986 mask!3053))))

(declare-fun b!592362 () Bool)

(assert (=> b!592362 (= e!338292 e!338293)))

(assert (=> b!592362 (= lt!268937 (select (arr!17710 a!2986) (index!26865 lt!268938)))))

(declare-fun c!66888 () Bool)

(assert (=> b!592362 (= c!66888 (= lt!268937 k0!1786))))

(assert (= (and d!86113 c!66889) b!592357))

(assert (= (and d!86113 (not c!66889)) b!592362))

(assert (= (and b!592362 c!66888) b!592358))

(assert (= (and b!592362 (not c!66888)) b!592360))

(assert (= (and b!592360 c!66890) b!592359))

(assert (= (and b!592360 (not c!66890)) b!592361))

(declare-fun m!570515 () Bool)

(assert (=> d!86113 m!570515))

(declare-fun m!570517 () Bool)

(assert (=> d!86113 m!570517))

(assert (=> d!86113 m!570381))

(declare-fun m!570519 () Bool)

(assert (=> d!86113 m!570519))

(declare-fun m!570521 () Bool)

(assert (=> d!86113 m!570521))

(declare-fun m!570523 () Bool)

(assert (=> d!86113 m!570523))

(assert (=> d!86113 m!570515))

(declare-fun m!570525 () Bool)

(assert (=> b!592361 m!570525))

(declare-fun m!570527 () Bool)

(assert (=> b!592362 m!570527))

(assert (=> b!592207 d!86113))

(declare-fun d!86133 () Bool)

(assert (=> d!86133 (= (validKeyInArray!0 (select (arr!17710 a!2986) j!136)) (and (not (= (select (arr!17710 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17710 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!592211 d!86133))

(declare-fun b!592363 () Bool)

(declare-fun e!338296 () SeekEntryResult!6157)

(assert (=> b!592363 (= e!338296 Undefined!6157)))

(declare-fun b!592364 () Bool)

(declare-fun c!66892 () Bool)

(declare-fun lt!268940 () (_ BitVec 64))

(assert (=> b!592364 (= c!66892 (= lt!268940 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!338295 () SeekEntryResult!6157)

(declare-fun e!338297 () SeekEntryResult!6157)

(assert (=> b!592364 (= e!338295 e!338297)))

(declare-fun d!86135 () Bool)

(declare-fun lt!268941 () SeekEntryResult!6157)

(assert (=> d!86135 (and (or ((_ is Undefined!6157) lt!268941) (not ((_ is Found!6157) lt!268941)) (and (bvsge (index!26864 lt!268941) #b00000000000000000000000000000000) (bvslt (index!26864 lt!268941) (size!18074 a!2986)))) (or ((_ is Undefined!6157) lt!268941) ((_ is Found!6157) lt!268941) (not ((_ is MissingVacant!6157) lt!268941)) (not (= (index!26866 lt!268941) vacantSpotIndex!68)) (and (bvsge (index!26866 lt!268941) #b00000000000000000000000000000000) (bvslt (index!26866 lt!268941) (size!18074 a!2986)))) (or ((_ is Undefined!6157) lt!268941) (ite ((_ is Found!6157) lt!268941) (= (select (arr!17710 a!2986) (index!26864 lt!268941)) (select (arr!17710 a!2986) j!136)) (and ((_ is MissingVacant!6157) lt!268941) (= (index!26866 lt!268941) vacantSpotIndex!68) (= (select (arr!17710 a!2986) (index!26866 lt!268941)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86135 (= lt!268941 e!338296)))

(declare-fun c!66891 () Bool)

(assert (=> d!86135 (= c!66891 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86135 (= lt!268940 (select (arr!17710 a!2986) index!984))))

(assert (=> d!86135 (validMask!0 mask!3053)))

(assert (=> d!86135 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17710 a!2986) j!136) a!2986 mask!3053) lt!268941)))

(declare-fun b!592365 () Bool)

(assert (=> b!592365 (= e!338297 (MissingVacant!6157 vacantSpotIndex!68))))

(declare-fun b!592366 () Bool)

(assert (=> b!592366 (= e!338297 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17710 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592367 () Bool)

(assert (=> b!592367 (= e!338296 e!338295)))

(declare-fun c!66893 () Bool)

(assert (=> b!592367 (= c!66893 (= lt!268940 (select (arr!17710 a!2986) j!136)))))

(declare-fun b!592368 () Bool)

(assert (=> b!592368 (= e!338295 (Found!6157 index!984))))

(assert (= (and d!86135 c!66891) b!592363))

(assert (= (and d!86135 (not c!66891)) b!592367))

(assert (= (and b!592367 c!66893) b!592368))

(assert (= (and b!592367 (not c!66893)) b!592364))

(assert (= (and b!592364 c!66892) b!592365))

(assert (= (and b!592364 (not c!66892)) b!592366))

(declare-fun m!570529 () Bool)

(assert (=> d!86135 m!570529))

(declare-fun m!570531 () Bool)

(assert (=> d!86135 m!570531))

(assert (=> d!86135 m!570371))

(assert (=> d!86135 m!570381))

(assert (=> b!592366 m!570355))

(assert (=> b!592366 m!570355))

(assert (=> b!592366 m!570341))

(declare-fun m!570533 () Bool)

(assert (=> b!592366 m!570533))

(assert (=> b!592200 d!86135))

(declare-fun d!86137 () Bool)

(declare-fun res!379319 () Bool)

(declare-fun e!338314 () Bool)

(assert (=> d!86137 (=> res!379319 e!338314)))

(assert (=> d!86137 (= res!379319 (bvsge #b00000000000000000000000000000000 (size!18074 a!2986)))))

(assert (=> d!86137 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!338314)))

(declare-fun bm!32828 () Bool)

(declare-fun call!32831 () Bool)

(assert (=> bm!32828 (= call!32831 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!592395 () Bool)

(declare-fun e!338315 () Bool)

(assert (=> b!592395 (= e!338314 e!338315)))

(declare-fun c!66905 () Bool)

(assert (=> b!592395 (= c!66905 (validKeyInArray!0 (select (arr!17710 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!592396 () Bool)

(declare-fun e!338313 () Bool)

(assert (=> b!592396 (= e!338315 e!338313)))

(declare-fun lt!268958 () (_ BitVec 64))

(assert (=> b!592396 (= lt!268958 (select (arr!17710 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!268960 () Unit!18572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36887 (_ BitVec 64) (_ BitVec 32)) Unit!18572)

(assert (=> b!592396 (= lt!268960 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!268958 #b00000000000000000000000000000000))))

(assert (=> b!592396 (arrayContainsKey!0 a!2986 lt!268958 #b00000000000000000000000000000000)))

(declare-fun lt!268959 () Unit!18572)

(assert (=> b!592396 (= lt!268959 lt!268960)))

(declare-fun res!379320 () Bool)

(assert (=> b!592396 (= res!379320 (= (seekEntryOrOpen!0 (select (arr!17710 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6157 #b00000000000000000000000000000000)))))

(assert (=> b!592396 (=> (not res!379320) (not e!338313))))

(declare-fun b!592397 () Bool)

(assert (=> b!592397 (= e!338315 call!32831)))

(declare-fun b!592398 () Bool)

(assert (=> b!592398 (= e!338313 call!32831)))

(assert (= (and d!86137 (not res!379319)) b!592395))

(assert (= (and b!592395 c!66905) b!592396))

(assert (= (and b!592395 (not c!66905)) b!592397))

(assert (= (and b!592396 res!379320) b!592398))

(assert (= (or b!592398 b!592397) bm!32828))

(declare-fun m!570541 () Bool)

(assert (=> bm!32828 m!570541))

(assert (=> b!592395 m!570477))

(assert (=> b!592395 m!570477))

(declare-fun m!570543 () Bool)

(assert (=> b!592395 m!570543))

(assert (=> b!592396 m!570477))

(declare-fun m!570545 () Bool)

(assert (=> b!592396 m!570545))

(declare-fun m!570547 () Bool)

(assert (=> b!592396 m!570547))

(assert (=> b!592396 m!570477))

(declare-fun m!570549 () Bool)

(assert (=> b!592396 m!570549))

(assert (=> b!592199 d!86137))

(declare-fun b!592427 () Bool)

(declare-fun e!338333 () Bool)

(declare-fun call!32834 () Bool)

(assert (=> b!592427 (= e!338333 call!32834)))

(declare-fun bm!32831 () Bool)

(declare-fun c!66917 () Bool)

(assert (=> bm!32831 (= call!32834 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66917 (Cons!11800 (select (arr!17710 a!2986) #b00000000000000000000000000000000) Nil!11801) Nil!11801)))))

(declare-fun d!86141 () Bool)

(declare-fun res!379329 () Bool)

(declare-fun e!338335 () Bool)

(assert (=> d!86141 (=> res!379329 e!338335)))

(assert (=> d!86141 (= res!379329 (bvsge #b00000000000000000000000000000000 (size!18074 a!2986)))))

(assert (=> d!86141 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11801) e!338335)))

(declare-fun b!592428 () Bool)

(declare-fun e!338336 () Bool)

(declare-fun contains!2913 (List!11804 (_ BitVec 64)) Bool)

(assert (=> b!592428 (= e!338336 (contains!2913 Nil!11801 (select (arr!17710 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!592429 () Bool)

(assert (=> b!592429 (= e!338333 call!32834)))

(declare-fun b!592430 () Bool)

(declare-fun e!338334 () Bool)

(assert (=> b!592430 (= e!338335 e!338334)))

(declare-fun res!379327 () Bool)

(assert (=> b!592430 (=> (not res!379327) (not e!338334))))

(assert (=> b!592430 (= res!379327 (not e!338336))))

(declare-fun res!379328 () Bool)

(assert (=> b!592430 (=> (not res!379328) (not e!338336))))

(assert (=> b!592430 (= res!379328 (validKeyInArray!0 (select (arr!17710 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!592431 () Bool)

(assert (=> b!592431 (= e!338334 e!338333)))

(assert (=> b!592431 (= c!66917 (validKeyInArray!0 (select (arr!17710 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!86141 (not res!379329)) b!592430))

(assert (= (and b!592430 res!379328) b!592428))

(assert (= (and b!592430 res!379327) b!592431))

(assert (= (and b!592431 c!66917) b!592429))

(assert (= (and b!592431 (not c!66917)) b!592427))

(assert (= (or b!592429 b!592427) bm!32831))

(assert (=> bm!32831 m!570477))

(declare-fun m!570563 () Bool)

(assert (=> bm!32831 m!570563))

(assert (=> b!592428 m!570477))

(assert (=> b!592428 m!570477))

(declare-fun m!570565 () Bool)

(assert (=> b!592428 m!570565))

(assert (=> b!592430 m!570477))

(assert (=> b!592430 m!570477))

(assert (=> b!592430 m!570543))

(assert (=> b!592431 m!570477))

(assert (=> b!592431 m!570477))

(assert (=> b!592431 m!570543))

(assert (=> b!592209 d!86141))

(declare-fun d!86149 () Bool)

(assert (=> d!86149 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54194 d!86149))

(declare-fun d!86165 () Bool)

(assert (=> d!86165 (= (array_inv!13484 a!2986) (bvsge (size!18074 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54194 d!86165))

(check-sat (not b!592299) (not b!592311) (not d!86101) (not b!592290) (not b!592431) (not b!592366) (not bm!32828) (not b!592295) (not b!592395) (not b!592428) (not b!592274) (not d!86113) (not b!592361) (not d!86097) (not b!592313) (not b!592309) (not b!592430) (not d!86135) (not d!86099) (not d!86103) (not d!86095) (not b!592396) (not bm!32831) (not b!592305) (not d!86109))
(check-sat)
