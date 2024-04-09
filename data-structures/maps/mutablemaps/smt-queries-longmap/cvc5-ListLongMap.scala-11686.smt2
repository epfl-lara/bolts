; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136710 () Bool)

(assert start!136710)

(declare-fun res!1078374 () Bool)

(declare-fun e!880299 () Bool)

(assert (=> start!136710 (=> (not res!1078374) (not e!880299))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136710 (= res!1078374 (validMask!0 mask!918))))

(assert (=> start!136710 e!880299))

(assert (=> start!136710 true))

(declare-datatypes ((array!105703 0))(
  ( (array!105704 (arr!50959 (Array (_ BitVec 32) (_ BitVec 64))) (size!51510 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105703)

(declare-fun array_inv!39604 (array!105703) Bool)

(assert (=> start!136710 (array_inv!39604 _keys!614)))

(declare-fun b!1578189 () Bool)

(declare-fun res!1078375 () Bool)

(assert (=> b!1578189 (=> (not res!1078375) (not e!880299))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578189 (= res!1078375 (validKeyInArray!0 k!772))))

(declare-fun b!1578188 () Bool)

(declare-fun res!1078373 () Bool)

(assert (=> b!1578188 (=> (not res!1078373) (not e!880299))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578188 (= res!1078373 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51510 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50959 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578191 () Bool)

(declare-datatypes ((SeekEntryResult!13762 0))(
  ( (MissingZero!13762 (index!57445 (_ BitVec 32))) (Found!13762 (index!57446 (_ BitVec 32))) (Intermediate!13762 (undefined!14574 Bool) (index!57447 (_ BitVec 32)) (x!142711 (_ BitVec 32))) (Undefined!13762) (MissingVacant!13762 (index!57448 (_ BitVec 32))) )
))
(declare-fun lt!676141 () SeekEntryResult!13762)

(assert (=> b!1578191 (= e!880299 (and (not (is-Undefined!13762 lt!676141)) (is-Found!13762 lt!676141) (or (bvslt (index!57446 lt!676141) #b00000000000000000000000000000000) (bvsge (index!57446 lt!676141) (size!51510 _keys!614)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105703 (_ BitVec 32)) SeekEntryResult!13762)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578191 (= lt!676141 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k!772 _keys!614 mask!918))))

(declare-fun b!1578190 () Bool)

(declare-fun res!1078376 () Bool)

(assert (=> b!1578190 (=> (not res!1078376) (not e!880299))))

(assert (=> b!1578190 (= res!1078376 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50959 _keys!614) ee!18) k!772)) (not (= (select (arr!50959 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136710 res!1078374) b!1578188))

(assert (= (and b!1578188 res!1078373) b!1578189))

(assert (= (and b!1578189 res!1078375) b!1578190))

(assert (= (and b!1578190 res!1078376) b!1578191))

(declare-fun m!1450331 () Bool)

(assert (=> b!1578190 m!1450331))

(declare-fun m!1450333 () Bool)

(assert (=> b!1578189 m!1450333))

(declare-fun m!1450335 () Bool)

(assert (=> start!136710 m!1450335))

(declare-fun m!1450337 () Bool)

(assert (=> start!136710 m!1450337))

(declare-fun m!1450339 () Bool)

(assert (=> b!1578188 m!1450339))

(declare-fun m!1450341 () Bool)

(assert (=> b!1578191 m!1450341))

(assert (=> b!1578191 m!1450341))

(declare-fun m!1450343 () Bool)

(assert (=> b!1578191 m!1450343))

(push 1)

(assert (not b!1578189))

(assert (not start!136710))

(assert (not b!1578191))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165977 () Bool)

(assert (=> d!165977 (= (validKeyInArray!0 k!772) (and (not (= k!772 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!772 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1578189 d!165977))

(declare-fun d!165979 () Bool)

(assert (=> d!165979 (= (validMask!0 mask!918) (and (or (= mask!918 #b00000000000000000000000000000111) (= mask!918 #b00000000000000000000000000001111) (= mask!918 #b00000000000000000000000000011111) (= mask!918 #b00000000000000000000000000111111) (= mask!918 #b00000000000000000000000001111111) (= mask!918 #b00000000000000000000000011111111) (= mask!918 #b00000000000000000000000111111111) (= mask!918 #b00000000000000000000001111111111) (= mask!918 #b00000000000000000000011111111111) (= mask!918 #b00000000000000000000111111111111) (= mask!918 #b00000000000000000001111111111111) (= mask!918 #b00000000000000000011111111111111) (= mask!918 #b00000000000000000111111111111111) (= mask!918 #b00000000000000001111111111111111) (= mask!918 #b00000000000000011111111111111111) (= mask!918 #b00000000000000111111111111111111) (= mask!918 #b00000000000001111111111111111111) (= mask!918 #b00000000000011111111111111111111) (= mask!918 #b00000000000111111111111111111111) (= mask!918 #b00000000001111111111111111111111) (= mask!918 #b00000000011111111111111111111111) (= mask!918 #b00000000111111111111111111111111) (= mask!918 #b00000001111111111111111111111111) (= mask!918 #b00000011111111111111111111111111) (= mask!918 #b00000111111111111111111111111111) (= mask!918 #b00001111111111111111111111111111) (= mask!918 #b00011111111111111111111111111111) (= mask!918 #b00111111111111111111111111111111)) (bvsle mask!918 #b00111111111111111111111111111111)))))

(assert (=> start!136710 d!165979))

(declare-fun d!165985 () Bool)

(assert (=> d!165985 (= (array_inv!39604 _keys!614) (bvsge (size!51510 _keys!614) #b00000000000000000000000000000000))))

(assert (=> start!136710 d!165985))

(declare-fun b!1578246 () Bool)

(declare-fun e!880327 () SeekEntryResult!13762)

(declare-fun e!880329 () SeekEntryResult!13762)

(assert (=> b!1578246 (= e!880327 e!880329)))

(declare-fun c!146211 () Bool)

(declare-fun lt!676161 () (_ BitVec 64))

(assert (=> b!1578246 (= c!146211 (= lt!676161 k!772))))

(declare-fun b!1578247 () Bool)

(declare-fun e!880328 () SeekEntryResult!13762)

(assert (=> b!1578247 (= e!880328 (MissingVacant!13762 vacantSpotIndex!10))))

(declare-fun b!1578248 () Bool)

(declare-fun c!146210 () Bool)

(assert (=> b!1578248 (= c!146210 (= lt!676161 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1578248 (= e!880329 e!880328)))

(declare-fun b!1578249 () Bool)

(assert (=> b!1578249 (= e!880329 (Found!13762 (nextIndex!0 ee!18 x!466 mask!918)))))

(declare-fun lt!676162 () SeekEntryResult!13762)

(declare-fun d!165987 () Bool)

(assert (=> d!165987 (and (or (is-Undefined!13762 lt!676162) (not (is-Found!13762 lt!676162)) (and (bvsge (index!57446 lt!676162) #b00000000000000000000000000000000) (bvslt (index!57446 lt!676162) (size!51510 _keys!614)))) (or (is-Undefined!13762 lt!676162) (is-Found!13762 lt!676162) (not (is-MissingVacant!13762 lt!676162)) (not (= (index!57448 lt!676162) vacantSpotIndex!10)) (and (bvsge (index!57448 lt!676162) #b00000000000000000000000000000000) (bvslt (index!57448 lt!676162) (size!51510 _keys!614)))) (or (is-Undefined!13762 lt!676162) (ite (is-Found!13762 lt!676162) (= (select (arr!50959 _keys!614) (index!57446 lt!676162)) k!772) (and (is-MissingVacant!13762 lt!676162) (= (index!57448 lt!676162) vacantSpotIndex!10) (= (select (arr!50959 _keys!614) (index!57448 lt!676162)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!165987 (= lt!676162 e!880327)))

(declare-fun c!146209 () Bool)

(assert (=> d!165987 (= c!146209 (bvsge (bvadd #b00000000000000000000000000000001 x!466) #b01111111111111111111111111111110))))

(assert (=> d!165987 (= lt!676161 (select (arr!50959 _keys!614) (nextIndex!0 ee!18 x!466 mask!918)))))

(assert (=> d!165987 (validMask!0 mask!918)))

(assert (=> d!165987 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k!772 _keys!614 mask!918) lt!676162)))

(declare-fun b!1578250 () Bool)

(assert (=> b!1578250 (= e!880328 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!18 x!466 mask!918) (bvadd #b00000000000000000000000000000001 x!466) mask!918) vacantSpotIndex!10 k!772 _keys!614 mask!918))))

(declare-fun b!1578251 () Bool)

(assert (=> b!1578251 (= e!880327 Undefined!13762)))

(assert (= (and d!165987 c!146209) b!1578251))

(assert (= (and d!165987 (not c!146209)) b!1578246))

(assert (= (and b!1578246 c!146211) b!1578249))

(assert (= (and b!1578246 (not c!146211)) b!1578248))

(assert (= (and b!1578248 c!146210) b!1578247))

(assert (= (and b!1578248 (not c!146210)) b!1578250))

(declare-fun m!1450385 () Bool)

(assert (=> d!165987 m!1450385))

(declare-fun m!1450387 () Bool)

(assert (=> d!165987 m!1450387))

(assert (=> d!165987 m!1450341))

(declare-fun m!1450389 () Bool)

(assert (=> d!165987 m!1450389))

(assert (=> d!165987 m!1450335))

(assert (=> b!1578250 m!1450341))

(declare-fun m!1450391 () Bool)

(assert (=> b!1578250 m!1450391))

(assert (=> b!1578250 m!1450391))

(declare-fun m!1450393 () Bool)

(assert (=> b!1578250 m!1450393))

(assert (=> b!1578191 d!165987))

(declare-fun d!165995 () Bool)

(declare-fun lt!676165 () (_ BitVec 32))

(assert (=> d!165995 (and (bvsge lt!676165 #b00000000000000000000000000000000) (bvslt lt!676165 (bvadd mask!918 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165995 (= lt!676165 (choose!52 ee!18 x!466 mask!918))))

(assert (=> d!165995 (validMask!0 mask!918)))

(assert (=> d!165995 (= (nextIndex!0 ee!18 x!466 mask!918) lt!676165)))

(declare-fun bs!45642 () Bool)

(assert (= bs!45642 d!165995))

(declare-fun m!1450395 () Bool)

(assert (=> bs!45642 m!1450395))

(assert (=> bs!45642 m!1450335))

(assert (=> b!1578191 d!165995))

(push 1)

(assert (not d!165987))

(assert (not b!1578250))

(assert (not d!165995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

