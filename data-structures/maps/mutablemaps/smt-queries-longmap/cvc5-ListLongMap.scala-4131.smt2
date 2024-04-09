; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56340 () Bool)

(assert start!56340)

(declare-fun b!624413 () Bool)

(declare-fun res!402745 () Bool)

(declare-fun e!358029 () Bool)

(assert (=> b!624413 (=> (not res!402745) (not e!358029))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37728 0))(
  ( (array!37729 (arr!18105 (Array (_ BitVec 32) (_ BitVec 64))) (size!18469 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37728)

(declare-datatypes ((SeekEntryResult!6552 0))(
  ( (MissingZero!6552 (index!28491 (_ BitVec 32))) (Found!6552 (index!28492 (_ BitVec 32))) (Intermediate!6552 (undefined!7364 Bool) (index!28493 (_ BitVec 32)) (x!57276 (_ BitVec 32))) (Undefined!6552) (MissingVacant!6552 (index!28494 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37728 (_ BitVec 32)) SeekEntryResult!6552)

(assert (=> b!624413 (= res!402745 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18105 a!2986) j!136) a!2986 mask!3053) (Found!6552 j!136)))))

(declare-fun b!624414 () Bool)

(declare-fun res!402744 () Bool)

(assert (=> b!624414 (=> (not res!402744) (not e!358029))))

(declare-datatypes ((List!12199 0))(
  ( (Nil!12196) (Cons!12195 (h!13240 (_ BitVec 64)) (t!18435 List!12199)) )
))
(declare-fun arrayNoDuplicates!0 (array!37728 (_ BitVec 32) List!12199) Bool)

(assert (=> b!624414 (= res!402744 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12196))))

(declare-fun res!402747 () Bool)

(declare-fun e!358028 () Bool)

(assert (=> start!56340 (=> (not res!402747) (not e!358028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56340 (= res!402747 (validMask!0 mask!3053))))

(assert (=> start!56340 e!358028))

(assert (=> start!56340 true))

(declare-fun array_inv!13879 (array!37728) Bool)

(assert (=> start!56340 (array_inv!13879 a!2986)))

(declare-fun b!624415 () Bool)

(declare-fun res!402748 () Bool)

(assert (=> b!624415 (=> (not res!402748) (not e!358028))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624415 (= res!402748 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624416 () Bool)

(declare-fun res!402743 () Bool)

(assert (=> b!624416 (=> (not res!402743) (not e!358028))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624416 (= res!402743 (and (= (size!18469 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18469 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18469 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624417 () Bool)

(declare-fun res!402746 () Bool)

(assert (=> b!624417 (=> (not res!402746) (not e!358029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37728 (_ BitVec 32)) Bool)

(assert (=> b!624417 (= res!402746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624418 () Bool)

(declare-fun res!402749 () Bool)

(assert (=> b!624418 (=> (not res!402749) (not e!358029))))

(assert (=> b!624418 (= res!402749 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18105 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18105 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624419 () Bool)

(assert (=> b!624419 (= e!358028 e!358029)))

(declare-fun res!402750 () Bool)

(assert (=> b!624419 (=> (not res!402750) (not e!358029))))

(declare-fun lt!289581 () SeekEntryResult!6552)

(assert (=> b!624419 (= res!402750 (or (= lt!289581 (MissingZero!6552 i!1108)) (= lt!289581 (MissingVacant!6552 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37728 (_ BitVec 32)) SeekEntryResult!6552)

(assert (=> b!624419 (= lt!289581 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624420 () Bool)

(declare-fun res!402752 () Bool)

(assert (=> b!624420 (=> (not res!402752) (not e!358028))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624420 (= res!402752 (validKeyInArray!0 k!1786))))

(declare-fun b!624421 () Bool)

(declare-fun res!402751 () Bool)

(assert (=> b!624421 (=> (not res!402751) (not e!358028))))

(assert (=> b!624421 (= res!402751 (validKeyInArray!0 (select (arr!18105 a!2986) j!136)))))

(declare-fun b!624422 () Bool)

(assert (=> b!624422 (= e!358029 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (= (and start!56340 res!402747) b!624416))

(assert (= (and b!624416 res!402743) b!624421))

(assert (= (and b!624421 res!402751) b!624420))

(assert (= (and b!624420 res!402752) b!624415))

(assert (= (and b!624415 res!402748) b!624419))

(assert (= (and b!624419 res!402750) b!624417))

(assert (= (and b!624417 res!402746) b!624414))

(assert (= (and b!624414 res!402744) b!624418))

(assert (= (and b!624418 res!402749) b!624413))

(assert (= (and b!624413 res!402745) b!624422))

(declare-fun m!600153 () Bool)

(assert (=> b!624415 m!600153))

(declare-fun m!600155 () Bool)

(assert (=> b!624418 m!600155))

(declare-fun m!600157 () Bool)

(assert (=> b!624418 m!600157))

(declare-fun m!600159 () Bool)

(assert (=> b!624418 m!600159))

(declare-fun m!600161 () Bool)

(assert (=> start!56340 m!600161))

(declare-fun m!600163 () Bool)

(assert (=> start!56340 m!600163))

(declare-fun m!600165 () Bool)

(assert (=> b!624413 m!600165))

(assert (=> b!624413 m!600165))

(declare-fun m!600167 () Bool)

(assert (=> b!624413 m!600167))

(declare-fun m!600169 () Bool)

(assert (=> b!624417 m!600169))

(declare-fun m!600171 () Bool)

(assert (=> b!624420 m!600171))

(declare-fun m!600173 () Bool)

(assert (=> b!624414 m!600173))

(assert (=> b!624421 m!600165))

(assert (=> b!624421 m!600165))

(declare-fun m!600175 () Bool)

(assert (=> b!624421 m!600175))

(declare-fun m!600177 () Bool)

(assert (=> b!624419 m!600177))

(push 1)

(assert (not start!56340))

(assert (not b!624415))

(assert (not b!624420))

(assert (not b!624419))

(assert (not b!624414))

(assert (not b!624417))

(assert (not b!624413))

(assert (not b!624421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!88625 () Bool)

(declare-fun res!402824 () Bool)

(declare-fun e!358071 () Bool)

(assert (=> d!88625 (=> res!402824 e!358071)))

(assert (=> d!88625 (= res!402824 (bvsge #b00000000000000000000000000000000 (size!18469 a!2986)))))

(assert (=> d!88625 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!358071)))

(declare-fun b!624515 () Bool)

(declare-fun e!358072 () Bool)

(declare-fun call!33197 () Bool)

(assert (=> b!624515 (= e!358072 call!33197)))

(declare-fun b!624516 () Bool)

(declare-fun e!358070 () Bool)

(assert (=> b!624516 (= e!358071 e!358070)))

(declare-fun c!71213 () Bool)

(assert (=> b!624516 (= c!71213 (validKeyInArray!0 (select (arr!18105 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33194 () Bool)

(assert (=> bm!33194 (= call!33197 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!624517 () Bool)

(assert (=> b!624517 (= e!358070 call!33197)))

(declare-fun b!624518 () Bool)

(assert (=> b!624518 (= e!358070 e!358072)))

(declare-fun lt!289605 () (_ BitVec 64))

(assert (=> b!624518 (= lt!289605 (select (arr!18105 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21066 0))(
  ( (Unit!21067) )
))
(declare-fun lt!289603 () Unit!21066)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37728 (_ BitVec 64) (_ BitVec 32)) Unit!21066)

(assert (=> b!624518 (= lt!289603 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!289605 #b00000000000000000000000000000000))))

(assert (=> b!624518 (arrayContainsKey!0 a!2986 lt!289605 #b00000000000000000000000000000000)))

(declare-fun lt!289604 () Unit!21066)

(assert (=> b!624518 (= lt!289604 lt!289603)))

(declare-fun res!402823 () Bool)

(assert (=> b!624518 (= res!402823 (= (seekEntryOrOpen!0 (select (arr!18105 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6552 #b00000000000000000000000000000000)))))

(assert (=> b!624518 (=> (not res!402823) (not e!358072))))

(assert (= (and d!88625 (not res!402824)) b!624516))

(assert (= (and b!624516 c!71213) b!624518))

(assert (= (and b!624516 (not c!71213)) b!624517))

(assert (= (and b!624518 res!402823) b!624515))

(assert (= (or b!624515 b!624517) bm!33194))

(declare-fun m!600249 () Bool)

(assert (=> b!624516 m!600249))

(assert (=> b!624516 m!600249))

(declare-fun m!600251 () Bool)

(assert (=> b!624516 m!600251))

(declare-fun m!600253 () Bool)

(assert (=> bm!33194 m!600253))

(assert (=> b!624518 m!600249))

(declare-fun m!600255 () Bool)

(assert (=> b!624518 m!600255))

(declare-fun m!600257 () Bool)

(assert (=> b!624518 m!600257))

(assert (=> b!624518 m!600249))

(declare-fun m!600259 () Bool)

(assert (=> b!624518 m!600259))

(assert (=> b!624417 d!88625))

(declare-fun b!624556 () Bool)

(declare-fun e!358101 () SeekEntryResult!6552)

(assert (=> b!624556 (= e!358101 (Found!6552 index!984))))

(declare-fun b!624557 () Bool)

(declare-fun e!358099 () SeekEntryResult!6552)

(assert (=> b!624557 (= e!358099 (MissingVacant!6552 vacantSpotIndex!68))))

(declare-fun b!624558 () Bool)

(declare-fun e!358100 () SeekEntryResult!6552)

(assert (=> b!624558 (= e!358100 Undefined!6552)))

(declare-fun lt!289610 () SeekEntryResult!6552)

(declare-fun d!88635 () Bool)

(assert (=> d!88635 (and (or (is-Undefined!6552 lt!289610) (not (is-Found!6552 lt!289610)) (and (bvsge (index!28492 lt!289610) #b00000000000000000000000000000000) (bvslt (index!28492 lt!289610) (size!18469 a!2986)))) (or (is-Undefined!6552 lt!289610) (is-Found!6552 lt!289610) (not (is-MissingVacant!6552 lt!289610)) (not (= (index!28494 lt!289610) vacantSpotIndex!68)) (and (bvsge (index!28494 lt!289610) #b00000000000000000000000000000000) (bvslt (index!28494 lt!289610) (size!18469 a!2986)))) (or (is-Undefined!6552 lt!289610) (ite (is-Found!6552 lt!289610) (= (select (arr!18105 a!2986) (index!28492 lt!289610)) (select (arr!18105 a!2986) j!136)) (and (is-MissingVacant!6552 lt!289610) (= (index!28494 lt!289610) vacantSpotIndex!68) (= (select (arr!18105 a!2986) (index!28494 lt!289610)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88635 (= lt!289610 e!358100)))

(declare-fun c!71227 () Bool)

(assert (=> d!88635 (= c!71227 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!289611 () (_ BitVec 64))

(assert (=> d!88635 (= lt!289611 (select (arr!18105 a!2986) index!984))))

(assert (=> d!88635 (validMask!0 mask!3053)))

(assert (=> d!88635 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18105 a!2986) j!136) a!2986 mask!3053) lt!289610)))

(declare-fun b!624559 () Bool)

(declare-fun c!71225 () Bool)

(assert (=> b!624559 (= c!71225 (= lt!289611 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!624559 (= e!358101 e!358099)))

(declare-fun b!624560 () Bool)

(assert (=> b!624560 (= e!358100 e!358101)))

(declare-fun c!71226 () Bool)

(assert (=> b!624560 (= c!71226 (= lt!289611 (select (arr!18105 a!2986) j!136)))))

(declare-fun b!624561 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!624561 (= e!358099 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18105 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!88635 c!71227) b!624558))

(assert (= (and d!88635 (not c!71227)) b!624560))

(assert (= (and b!624560 c!71226) b!624556))

(assert (= (and b!624560 (not c!71226)) b!624559))

(assert (= (and b!624559 c!71225) b!624557))

(assert (= (and b!624559 (not c!71225)) b!624561))

(declare-fun m!600269 () Bool)

(assert (=> d!88635 m!600269))

(declare-fun m!600271 () Bool)

(assert (=> d!88635 m!600271))

(declare-fun m!600273 () Bool)

(assert (=> d!88635 m!600273))

(assert (=> d!88635 m!600161))

(declare-fun m!600275 () Bool)

(assert (=> b!624561 m!600275))

(assert (=> b!624561 m!600275))

(assert (=> b!624561 m!600165))

(declare-fun m!600279 () Bool)

(assert (=> b!624561 m!600279))

(assert (=> b!624413 d!88635))

(declare-fun b!624609 () Bool)

(declare-fun e!358131 () SeekEntryResult!6552)

(declare-fun lt!289636 () SeekEntryResult!6552)

(assert (=> b!624609 (= e!358131 (Found!6552 (index!28493 lt!289636)))))

(declare-fun b!624610 () Bool)

(declare-fun e!358132 () SeekEntryResult!6552)

(assert (=> b!624610 (= e!358132 e!358131)))

(declare-fun lt!289637 () (_ BitVec 64))

(assert (=> b!624610 (= lt!289637 (select (arr!18105 a!2986) (index!28493 lt!289636)))))

(declare-fun c!71248 () Bool)

(assert (=> b!624610 (= c!71248 (= lt!289637 k!1786))))

(declare-fun e!358130 () SeekEntryResult!6552)

(declare-fun b!624611 () Bool)

(assert (=> b!624611 (= e!358130 (seekKeyOrZeroReturnVacant!0 (x!57276 lt!289636) (index!28493 lt!289636) (index!28493 lt!289636) k!1786 a!2986 mask!3053))))

(declare-fun b!624612 () Bool)

(assert (=> b!624612 (= e!358132 Undefined!6552)))

(declare-fun d!88645 () Bool)

(declare-fun lt!289638 () SeekEntryResult!6552)

(assert (=> d!88645 (and (or (is-Undefined!6552 lt!289638) (not (is-Found!6552 lt!289638)) (and (bvsge (index!28492 lt!289638) #b00000000000000000000000000000000) (bvslt (index!28492 lt!289638) (size!18469 a!2986)))) (or (is-Undefined!6552 lt!289638) (is-Found!6552 lt!289638) (not (is-MissingZero!6552 lt!289638)) (and (bvsge (index!28491 lt!289638) #b00000000000000000000000000000000) (bvslt (index!28491 lt!289638) (size!18469 a!2986)))) (or (is-Undefined!6552 lt!289638) (is-Found!6552 lt!289638) (is-MissingZero!6552 lt!289638) (not (is-MissingVacant!6552 lt!289638)) (and (bvsge (index!28494 lt!289638) #b00000000000000000000000000000000) (bvslt (index!28494 lt!289638) (size!18469 a!2986)))) (or (is-Undefined!6552 lt!289638) (ite (is-Found!6552 lt!289638) (= (select (arr!18105 a!2986) (index!28492 lt!289638)) k!1786) (ite (is-MissingZero!6552 lt!289638) (= (select (arr!18105 a!2986) (index!28491 lt!289638)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6552 lt!289638) (= (select (arr!18105 a!2986) (index!28494 lt!289638)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88645 (= lt!289638 e!358132)))

(declare-fun c!71249 () Bool)

(assert (=> d!88645 (= c!71249 (and (is-Intermediate!6552 lt!289636) (undefined!7364 lt!289636)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37728 (_ BitVec 32)) SeekEntryResult!6552)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88645 (= lt!289636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!88645 (validMask!0 mask!3053)))

(assert (=> d!88645 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!289638)))

(declare-fun b!624613 () Bool)

(declare-fun c!71247 () Bool)

(assert (=> b!624613 (= c!71247 (= lt!289637 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!624613 (= e!358131 e!358130)))

(declare-fun b!624614 () Bool)

(assert (=> b!624614 (= e!358130 (MissingZero!6552 (index!28493 lt!289636)))))

(assert (= (and d!88645 c!71249) b!624612))

(assert (= (and d!88645 (not c!71249)) b!624610))

(assert (= (and b!624610 c!71248) b!624609))

(assert (= (and b!624610 (not c!71248)) b!624613))

(assert (= (and b!624613 c!71247) b!624614))

(assert (= (and b!624613 (not c!71247)) b!624611))

(declare-fun m!600307 () Bool)

(assert (=> b!624610 m!600307))

(declare-fun m!600309 () Bool)

(assert (=> b!624611 m!600309))

(declare-fun m!600311 () Bool)

(assert (=> d!88645 m!600311))

(declare-fun m!600313 () Bool)

(assert (=> d!88645 m!600313))

(declare-fun m!600315 () Bool)

(assert (=> d!88645 m!600315))

(declare-fun m!600317 () Bool)

(assert (=> d!88645 m!600317))

(assert (=> d!88645 m!600315))

(assert (=> d!88645 m!600161))

(declare-fun m!600319 () Bool)

(assert (=> d!88645 m!600319))

(assert (=> b!624419 d!88645))

(declare-fun b!624643 () Bool)

(declare-fun e!358153 () Bool)

(declare-fun e!358151 () Bool)

(assert (=> b!624643 (= e!358153 e!358151)))

(declare-fun c!71261 () Bool)

(assert (=> b!624643 (= c!71261 (validKeyInArray!0 (select (arr!18105 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!624644 () Bool)

(declare-fun call!33209 () Bool)

(assert (=> b!624644 (= e!358151 call!33209)))

(declare-fun b!624645 () Bool)

(declare-fun e!358150 () Bool)

(assert (=> b!624645 (= e!358150 e!358153)))

(declare-fun res!402856 () Bool)

(assert (=> b!624645 (=> (not res!402856) (not e!358153))))

(declare-fun e!358152 () Bool)

(assert (=> b!624645 (= res!402856 (not e!358152))))

(declare-fun res!402855 () Bool)

(assert (=> b!624645 (=> (not res!402855) (not e!358152))))

(assert (=> b!624645 (= res!402855 (validKeyInArray!0 (select (arr!18105 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!624646 () Bool)

(declare-fun contains!3079 (List!12199 (_ BitVec 64)) Bool)

(assert (=> b!624646 (= e!358152 (contains!3079 Nil!12196 (select (arr!18105 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33206 () Bool)

(assert (=> bm!33206 (= call!33209 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71261 (Cons!12195 (select (arr!18105 a!2986) #b00000000000000000000000000000000) Nil!12196) Nil!12196)))))

(declare-fun b!624647 () Bool)

(assert (=> b!624647 (= e!358151 call!33209)))

(declare-fun d!88655 () Bool)

(declare-fun res!402857 () Bool)

(assert (=> d!88655 (=> res!402857 e!358150)))

(assert (=> d!88655 (= res!402857 (bvsge #b00000000000000000000000000000000 (size!18469 a!2986)))))

(assert (=> d!88655 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12196) e!358150)))

(assert (= (and d!88655 (not res!402857)) b!624645))

(assert (= (and b!624645 res!402855) b!624646))

(assert (= (and b!624645 res!402856) b!624643))

(assert (= (and b!624643 c!71261) b!624644))

(assert (= (and b!624643 (not c!71261)) b!624647))

(assert (= (or b!624644 b!624647) bm!33206))

(assert (=> b!624643 m!600249))

(assert (=> b!624643 m!600249))

(assert (=> b!624643 m!600251))

(assert (=> b!624645 m!600249))

(assert (=> b!624645 m!600249))

(assert (=> b!624645 m!600251))

(assert (=> b!624646 m!600249))

(assert (=> b!624646 m!600249))

