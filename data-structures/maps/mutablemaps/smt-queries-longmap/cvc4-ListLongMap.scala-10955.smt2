; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128240 () Bool)

(assert start!128240)

(declare-fun b!1505183 () Bool)

(declare-fun res!1025854 () Bool)

(declare-fun e!841297 () Bool)

(assert (=> b!1505183 (=> (not res!1025854) (not e!841297))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100351 0))(
  ( (array!100352 (arr!48423 (Array (_ BitVec 32) (_ BitVec 64))) (size!48974 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100351)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12640 0))(
  ( (MissingZero!12640 (index!52951 (_ BitVec 32))) (Found!12640 (index!52952 (_ BitVec 32))) (Intermediate!12640 (undefined!13452 Bool) (index!52953 (_ BitVec 32)) (x!134647 (_ BitVec 32))) (Undefined!12640) (MissingVacant!12640 (index!52954 (_ BitVec 32))) )
))
(declare-fun lt!653903 () SeekEntryResult!12640)

(declare-fun lt!653904 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100351 (_ BitVec 32)) SeekEntryResult!12640)

(assert (=> b!1505183 (= res!1025854 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653904 vacantBefore!10 (select (arr!48423 a!2850) j!87) a!2850 mask!2661) lt!653903))))

(declare-fun b!1505184 () Bool)

(declare-fun res!1025848 () Bool)

(declare-fun e!841294 () Bool)

(assert (=> b!1505184 (=> (not res!1025848) (not e!841294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100351 (_ BitVec 32)) Bool)

(assert (=> b!1505184 (= res!1025848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1505185 () Bool)

(declare-fun e!841298 () Bool)

(assert (=> b!1505185 (= e!841298 e!841297)))

(declare-fun res!1025845 () Bool)

(assert (=> b!1505185 (=> (not res!1025845) (not e!841297))))

(assert (=> b!1505185 (= res!1025845 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653904 #b00000000000000000000000000000000) (bvslt lt!653904 (size!48974 a!2850))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1505185 (= lt!653904 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1025855 () Bool)

(assert (=> start!128240 (=> (not res!1025855) (not e!841294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128240 (= res!1025855 (validMask!0 mask!2661))))

(assert (=> start!128240 e!841294))

(assert (=> start!128240 true))

(declare-fun array_inv!37368 (array!100351) Bool)

(assert (=> start!128240 (array_inv!37368 a!2850)))

(declare-fun b!1505186 () Bool)

(declare-fun e!841296 () Bool)

(assert (=> b!1505186 (= e!841296 e!841298)))

(declare-fun res!1025851 () Bool)

(assert (=> b!1505186 (=> (not res!1025851) (not e!841298))))

(assert (=> b!1505186 (= res!1025851 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48423 a!2850) j!87) a!2850 mask!2661) lt!653903))))

(assert (=> b!1505186 (= lt!653903 (Found!12640 j!87))))

(declare-fun b!1505187 () Bool)

(declare-fun res!1025850 () Bool)

(assert (=> b!1505187 (=> (not res!1025850) (not e!841298))))

(assert (=> b!1505187 (= res!1025850 (not (= (select (arr!48423 a!2850) index!625) (select (arr!48423 a!2850) j!87))))))

(declare-fun b!1505188 () Bool)

(declare-fun res!1025852 () Bool)

(assert (=> b!1505188 (=> (not res!1025852) (not e!841294))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1505188 (= res!1025852 (and (= (size!48974 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48974 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48974 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1505189 () Bool)

(declare-fun res!1025847 () Bool)

(assert (=> b!1505189 (=> (not res!1025847) (not e!841294))))

(declare-datatypes ((List!35095 0))(
  ( (Nil!35092) (Cons!35091 (h!36489 (_ BitVec 64)) (t!49796 List!35095)) )
))
(declare-fun arrayNoDuplicates!0 (array!100351 (_ BitVec 32) List!35095) Bool)

(assert (=> b!1505189 (= res!1025847 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35092))))

(declare-fun b!1505190 () Bool)

(declare-fun res!1025853 () Bool)

(assert (=> b!1505190 (=> (not res!1025853) (not e!841294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505190 (= res!1025853 (validKeyInArray!0 (select (arr!48423 a!2850) j!87)))))

(declare-fun b!1505191 () Bool)

(declare-fun res!1025849 () Bool)

(assert (=> b!1505191 (=> (not res!1025849) (not e!841294))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1505191 (= res!1025849 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48974 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48974 a!2850)) (= (select (arr!48423 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1505192 () Bool)

(declare-fun res!1025846 () Bool)

(assert (=> b!1505192 (=> (not res!1025846) (not e!841294))))

(assert (=> b!1505192 (= res!1025846 (validKeyInArray!0 (select (arr!48423 a!2850) i!996)))))

(declare-fun lt!653902 () (_ BitVec 64))

(declare-fun lt!653901 () array!100351)

(declare-fun b!1505193 () Bool)

(assert (=> b!1505193 (= e!841297 (not (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantAfter!10 lt!653902 lt!653901 mask!2661) lt!653903)))))

(assert (=> b!1505193 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653904 vacantAfter!10 lt!653902 lt!653901 mask!2661) lt!653903)))

(assert (=> b!1505193 (= lt!653902 (select (store (arr!48423 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87))))

(declare-datatypes ((Unit!50242 0))(
  ( (Unit!50243) )
))
(declare-fun lt!653905 () Unit!50242)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50242)

(assert (=> b!1505193 (= lt!653905 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653904 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1505194 () Bool)

(assert (=> b!1505194 (= e!841294 e!841296)))

(declare-fun res!1025856 () Bool)

(assert (=> b!1505194 (=> (not res!1025856) (not e!841296))))

(assert (=> b!1505194 (= res!1025856 (and (= (select (store (arr!48423 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48974 a!2850))))))

(assert (=> b!1505194 (= lt!653901 (array!100352 (store (arr!48423 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48974 a!2850)))))

(assert (= (and start!128240 res!1025855) b!1505188))

(assert (= (and b!1505188 res!1025852) b!1505192))

(assert (= (and b!1505192 res!1025846) b!1505190))

(assert (= (and b!1505190 res!1025853) b!1505184))

(assert (= (and b!1505184 res!1025848) b!1505189))

(assert (= (and b!1505189 res!1025847) b!1505191))

(assert (= (and b!1505191 res!1025849) b!1505194))

(assert (= (and b!1505194 res!1025856) b!1505186))

(assert (= (and b!1505186 res!1025851) b!1505187))

(assert (= (and b!1505187 res!1025850) b!1505185))

(assert (= (and b!1505185 res!1025845) b!1505183))

(assert (= (and b!1505183 res!1025854) b!1505193))

(declare-fun m!1388359 () Bool)

(assert (=> start!128240 m!1388359))

(declare-fun m!1388361 () Bool)

(assert (=> start!128240 m!1388361))

(declare-fun m!1388363 () Bool)

(assert (=> b!1505192 m!1388363))

(assert (=> b!1505192 m!1388363))

(declare-fun m!1388365 () Bool)

(assert (=> b!1505192 m!1388365))

(declare-fun m!1388367 () Bool)

(assert (=> b!1505190 m!1388367))

(assert (=> b!1505190 m!1388367))

(declare-fun m!1388369 () Bool)

(assert (=> b!1505190 m!1388369))

(assert (=> b!1505183 m!1388367))

(assert (=> b!1505183 m!1388367))

(declare-fun m!1388371 () Bool)

(assert (=> b!1505183 m!1388371))

(assert (=> b!1505186 m!1388367))

(assert (=> b!1505186 m!1388367))

(declare-fun m!1388373 () Bool)

(assert (=> b!1505186 m!1388373))

(declare-fun m!1388375 () Bool)

(assert (=> b!1505194 m!1388375))

(declare-fun m!1388377 () Bool)

(assert (=> b!1505194 m!1388377))

(declare-fun m!1388379 () Bool)

(assert (=> b!1505189 m!1388379))

(declare-fun m!1388381 () Bool)

(assert (=> b!1505184 m!1388381))

(declare-fun m!1388383 () Bool)

(assert (=> b!1505191 m!1388383))

(declare-fun m!1388385 () Bool)

(assert (=> b!1505187 m!1388385))

(assert (=> b!1505187 m!1388367))

(declare-fun m!1388387 () Bool)

(assert (=> b!1505193 m!1388387))

(assert (=> b!1505193 m!1388375))

(declare-fun m!1388389 () Bool)

(assert (=> b!1505193 m!1388389))

(declare-fun m!1388391 () Bool)

(assert (=> b!1505193 m!1388391))

(declare-fun m!1388393 () Bool)

(assert (=> b!1505193 m!1388393))

(declare-fun m!1388395 () Bool)

(assert (=> b!1505185 m!1388395))

(push 1)

(assert (not b!1505190))

(assert (not b!1505186))

(assert (not b!1505193))

(assert (not b!1505183))

(assert (not b!1505184))

(assert (not start!128240))

(assert (not b!1505192))

(assert (not b!1505185))

(assert (not b!1505189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1505243 () Bool)

(declare-fun e!841323 () SeekEntryResult!12640)

(declare-fun e!841325 () SeekEntryResult!12640)

(assert (=> b!1505243 (= e!841323 e!841325)))

(declare-fun lt!653922 () (_ BitVec 64))

(declare-fun c!139230 () Bool)

(assert (=> b!1505243 (= c!139230 (= lt!653922 (select (arr!48423 a!2850) j!87)))))

(declare-fun b!1505244 () Bool)

(declare-fun e!841324 () SeekEntryResult!12640)

(assert (=> b!1505244 (= e!841324 (MissingVacant!12640 vacantBefore!10))))

(declare-fun d!157911 () Bool)

(declare-fun lt!653923 () SeekEntryResult!12640)

(assert (=> d!157911 (and (or (is-Undefined!12640 lt!653923) (not (is-Found!12640 lt!653923)) (and (bvsge (index!52952 lt!653923) #b00000000000000000000000000000000) (bvslt (index!52952 lt!653923) (size!48974 a!2850)))) (or (is-Undefined!12640 lt!653923) (is-Found!12640 lt!653923) (not (is-MissingVacant!12640 lt!653923)) (not (= (index!52954 lt!653923) vacantBefore!10)) (and (bvsge (index!52954 lt!653923) #b00000000000000000000000000000000) (bvslt (index!52954 lt!653923) (size!48974 a!2850)))) (or (is-Undefined!12640 lt!653923) (ite (is-Found!12640 lt!653923) (= (select (arr!48423 a!2850) (index!52952 lt!653923)) (select (arr!48423 a!2850) j!87)) (and (is-MissingVacant!12640 lt!653923) (= (index!52954 lt!653923) vacantBefore!10) (= (select (arr!48423 a!2850) (index!52954 lt!653923)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157911 (= lt!653923 e!841323)))

(declare-fun c!139231 () Bool)

(assert (=> d!157911 (= c!139231 (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110))))

(assert (=> d!157911 (= lt!653922 (select (arr!48423 a!2850) lt!653904))))

(assert (=> d!157911 (validMask!0 mask!2661)))

(assert (=> d!157911 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653904 vacantBefore!10 (select (arr!48423 a!2850) j!87) a!2850 mask!2661) lt!653923)))

(declare-fun b!1505245 () Bool)

(declare-fun c!139232 () Bool)

(assert (=> b!1505245 (= c!139232 (= lt!653922 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1505245 (= e!841325 e!841324)))

(declare-fun b!1505246 () Bool)

(assert (=> b!1505246 (= e!841325 (Found!12640 lt!653904))))

(declare-fun b!1505247 () Bool)

(assert (=> b!1505247 (= e!841324 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647 #b00000000000000000000000000000001) (nextIndex!0 lt!653904 (bvadd #b00000000000000000000000000000001 x!647) mask!2661) vacantBefore!10 (select (arr!48423 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1505248 () Bool)

(assert (=> b!1505248 (= e!841323 Undefined!12640)))

(assert (= (and d!157911 c!139231) b!1505248))

(assert (= (and d!157911 (not c!139231)) b!1505243))

(assert (= (and b!1505243 c!139230) b!1505246))

(assert (= (and b!1505243 (not c!139230)) b!1505245))

(assert (= (and b!1505245 c!139232) b!1505244))

(assert (= (and b!1505245 (not c!139232)) b!1505247))

(declare-fun m!1388429 () Bool)

(assert (=> d!157911 m!1388429))

(declare-fun m!1388431 () Bool)

(assert (=> d!157911 m!1388431))

(declare-fun m!1388433 () Bool)

(assert (=> d!157911 m!1388433))

(assert (=> d!157911 m!1388359))

(declare-fun m!1388435 () Bool)

(assert (=> b!1505247 m!1388435))

(assert (=> b!1505247 m!1388435))

(assert (=> b!1505247 m!1388367))

(declare-fun m!1388437 () Bool)

(assert (=> b!1505247 m!1388437))

(assert (=> b!1505183 d!157911))

(declare-fun d!157929 () Bool)

(assert (=> d!157929 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!128240 d!157929))

(declare-fun d!157937 () Bool)

(assert (=> d!157937 (= (array_inv!37368 a!2850) (bvsge (size!48974 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!128240 d!157937))

(declare-fun b!1505274 () Bool)

(declare-fun e!841346 () SeekEntryResult!12640)

(declare-fun e!841348 () SeekEntryResult!12640)

(assert (=> b!1505274 (= e!841346 e!841348)))

(declare-fun c!139238 () Bool)

(declare-fun lt!653939 () (_ BitVec 64))

(assert (=> b!1505274 (= c!139238 (= lt!653939 lt!653902))))

(declare-fun b!1505275 () Bool)

(declare-fun e!841347 () SeekEntryResult!12640)

(assert (=> b!1505275 (= e!841347 (MissingVacant!12640 vacantAfter!10))))

(declare-fun d!157939 () Bool)

(declare-fun lt!653940 () SeekEntryResult!12640)

(assert (=> d!157939 (and (or (is-Undefined!12640 lt!653940) (not (is-Found!12640 lt!653940)) (and (bvsge (index!52952 lt!653940) #b00000000000000000000000000000000) (bvslt (index!52952 lt!653940) (size!48974 lt!653901)))) (or (is-Undefined!12640 lt!653940) (is-Found!12640 lt!653940) (not (is-MissingVacant!12640 lt!653940)) (not (= (index!52954 lt!653940) vacantAfter!10)) (and (bvsge (index!52954 lt!653940) #b00000000000000000000000000000000) (bvslt (index!52954 lt!653940) (size!48974 lt!653901)))) (or (is-Undefined!12640 lt!653940) (ite (is-Found!12640 lt!653940) (= (select (arr!48423 lt!653901) (index!52952 lt!653940)) lt!653902) (and (is-MissingVacant!12640 lt!653940) (= (index!52954 lt!653940) vacantAfter!10) (= (select (arr!48423 lt!653901) (index!52954 lt!653940)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157939 (= lt!653940 e!841346)))

(declare-fun c!139239 () Bool)

(assert (=> d!157939 (= c!139239 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157939 (= lt!653939 (select (arr!48423 lt!653901) index!625))))

(assert (=> d!157939 (validMask!0 mask!2661)))

(assert (=> d!157939 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantAfter!10 lt!653902 lt!653901 mask!2661) lt!653940)))

(declare-fun b!1505276 () Bool)

(declare-fun c!139240 () Bool)

(assert (=> b!1505276 (= c!139240 (= lt!653939 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1505276 (= e!841348 e!841347)))

(declare-fun b!1505277 () Bool)

(assert (=> b!1505277 (= e!841348 (Found!12640 index!625))))

(declare-fun b!1505278 () Bool)

(assert (=> b!1505278 (= e!841347 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantAfter!10 lt!653902 lt!653901 mask!2661))))

(declare-fun b!1505279 () Bool)

(assert (=> b!1505279 (= e!841346 Undefined!12640)))

(assert (= (and d!157939 c!139239) b!1505279))

(assert (= (and d!157939 (not c!139239)) b!1505274))

(assert (= (and b!1505274 c!139238) b!1505277))

(assert (= (and b!1505274 (not c!139238)) b!1505276))

(assert (= (and b!1505276 c!139240) b!1505275))

(assert (= (and b!1505276 (not c!139240)) b!1505278))

(declare-fun m!1388457 () Bool)

(assert (=> d!157939 m!1388457))

(declare-fun m!1388459 () Bool)

(assert (=> d!157939 m!1388459))

(declare-fun m!1388461 () Bool)

(assert (=> d!157939 m!1388461))

(assert (=> d!157939 m!1388359))

(assert (=> b!1505278 m!1388395))

(assert (=> b!1505278 m!1388395))

(declare-fun m!1388463 () Bool)

(assert (=> b!1505278 m!1388463))

(assert (=> b!1505193 d!157939))

(declare-fun b!1505285 () Bool)

(declare-fun e!841353 () SeekEntryResult!12640)

(declare-fun e!841355 () SeekEntryResult!12640)

(assert (=> b!1505285 (= e!841353 e!841355)))

(declare-fun c!139242 () Bool)

(declare-fun lt!653941 () (_ BitVec 64))

(assert (=> b!1505285 (= c!139242 (= lt!653941 lt!653902))))

(declare-fun b!1505286 () Bool)

(declare-fun e!841354 () SeekEntryResult!12640)

(assert (=> b!1505286 (= e!841354 (MissingVacant!12640 vacantAfter!10))))

(declare-fun lt!653942 () SeekEntryResult!12640)

(declare-fun d!157941 () Bool)

(assert (=> d!157941 (and (or (is-Undefined!12640 lt!653942) (not (is-Found!12640 lt!653942)) (and (bvsge (index!52952 lt!653942) #b00000000000000000000000000000000) (bvslt (index!52952 lt!653942) (size!48974 lt!653901)))) (or (is-Undefined!12640 lt!653942) (is-Found!12640 lt!653942) (not (is-MissingVacant!12640 lt!653942)) (not (= (index!52954 lt!653942) vacantAfter!10)) (and (bvsge (index!52954 lt!653942) #b00000000000000000000000000000000) (bvslt (index!52954 lt!653942) (size!48974 lt!653901)))) (or (is-Undefined!12640 lt!653942) (ite (is-Found!12640 lt!653942) (= (select (arr!48423 lt!653901) (index!52952 lt!653942)) lt!653902) (and (is-MissingVacant!12640 lt!653942) (= (index!52954 lt!653942) vacantAfter!10) (= (select (arr!48423 lt!653901) (index!52954 lt!653942)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157941 (= lt!653942 e!841353)))

(declare-fun c!139243 () Bool)

(assert (=> d!157941 (= c!139243 (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110))))

(assert (=> d!157941 (= lt!653941 (select (arr!48423 lt!653901) lt!653904))))

(assert (=> d!157941 (validMask!0 mask!2661)))

(assert (=> d!157941 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653904 vacantAfter!10 lt!653902 lt!653901 mask!2661) lt!653942)))

(declare-fun b!1505287 () Bool)

(declare-fun c!139244 () Bool)

(assert (=> b!1505287 (= c!139244 (= lt!653941 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1505287 (= e!841355 e!841354)))

(declare-fun b!1505288 () Bool)

(assert (=> b!1505288 (= e!841355 (Found!12640 lt!653904))))

(declare-fun b!1505289 () Bool)

(assert (=> b!1505289 (= e!841354 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647 #b00000000000000000000000000000001) (nextIndex!0 lt!653904 (bvadd #b00000000000000000000000000000001 x!647) mask!2661) vacantAfter!10 lt!653902 lt!653901 mask!2661))))

(declare-fun b!1505290 () Bool)

(assert (=> b!1505290 (= e!841353 Undefined!12640)))

(assert (= (and d!157941 c!139243) b!1505290))

(assert (= (and d!157941 (not c!139243)) b!1505285))

(assert (= (and b!1505285 c!139242) b!1505288))

(assert (= (and b!1505285 (not c!139242)) b!1505287))

(assert (= (and b!1505287 c!139244) b!1505286))

(assert (= (and b!1505287 (not c!139244)) b!1505289))

(declare-fun m!1388469 () Bool)

(assert (=> d!157941 m!1388469))

(declare-fun m!1388471 () Bool)

(assert (=> d!157941 m!1388471))

(declare-fun m!1388473 () Bool)

(assert (=> d!157941 m!1388473))

(assert (=> d!157941 m!1388359))

(assert (=> b!1505289 m!1388435))

(assert (=> b!1505289 m!1388435))

(declare-fun m!1388475 () Bool)

(assert (=> b!1505289 m!1388475))

(assert (=> b!1505193 d!157941))

(declare-fun d!157943 () Bool)

(declare-fun e!841358 () Bool)

(assert (=> d!157943 e!841358))

(declare-fun res!1025877 () Bool)

(assert (=> d!157943 (=> (not res!1025877) (not e!841358))))

(assert (=> d!157943 (= res!1025877 (and (or (bvslt i!996 #b00000000000000000000000000000000) (bvsge i!996 (size!48974 a!2850)) (and (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48974 a!2850)))) (or (bvslt i!996 #b00000000000000000000000000000000) (bvsge i!996 (size!48974 a!2850)) (and (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48974 a!2850)))) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48974 a!2850))))))

(declare-fun lt!653945 () Unit!50242)

(declare-fun choose!27 (array!100351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50242)

(assert (=> d!157943 (= lt!653945 (choose!27 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653904 vacantBefore!10 vacantAfter!10 mask!2661))))

(assert (=> d!157943 (validMask!0 mask!2661)))

(assert (=> d!157943 (= (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653904 vacantBefore!10 vacantAfter!10 mask!2661) lt!653945)))

(declare-fun b!1505293 () Bool)

(assert (=> b!1505293 (= e!841358 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653904 vacantAfter!10 (select (store (arr!48423 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100352 (store (arr!48423 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48974 a!2850)) mask!2661) (Found!12640 j!87)))))

(assert (= (and d!157943 res!1025877) b!1505293))

(declare-fun m!1388477 () Bool)

(assert (=> d!157943 m!1388477))

(assert (=> d!157943 m!1388359))

(assert (=> b!1505293 m!1388375))

(assert (=> b!1505293 m!1388387))

(assert (=> b!1505293 m!1388387))

(declare-fun m!1388479 () Bool)

(assert (=> b!1505293 m!1388479))

(assert (=> b!1505193 d!157943))

(declare-fun d!157945 () Bool)

(assert (=> d!157945 (= (validKeyInArray!0 (select (arr!48423 a!2850) i!996)) (and (not (= (select (arr!48423 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48423 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505192 d!157945))

(declare-fun b!1505294 () Bool)

(declare-fun e!841359 () SeekEntryResult!12640)

(declare-fun e!841361 () SeekEntryResult!12640)

(assert (=> b!1505294 (= e!841359 e!841361)))

(declare-fun lt!653946 () (_ BitVec 64))

(declare-fun c!139245 () Bool)

(assert (=> b!1505294 (= c!139245 (= lt!653946 (select (arr!48423 a!2850) j!87)))))

(declare-fun b!1505295 () Bool)

(declare-fun e!841360 () SeekEntryResult!12640)

(assert (=> b!1505295 (= e!841360 (MissingVacant!12640 vacantBefore!10))))

(declare-fun d!157947 () Bool)

(declare-fun lt!653947 () SeekEntryResult!12640)

(assert (=> d!157947 (and (or (is-Undefined!12640 lt!653947) (not (is-Found!12640 lt!653947)) (and (bvsge (index!52952 lt!653947) #b00000000000000000000000000000000) (bvslt (index!52952 lt!653947) (size!48974 a!2850)))) (or (is-Undefined!12640 lt!653947) (is-Found!12640 lt!653947) (not (is-MissingVacant!12640 lt!653947)) (not (= (index!52954 lt!653947) vacantBefore!10)) (and (bvsge (index!52954 lt!653947) #b00000000000000000000000000000000) (bvslt (index!52954 lt!653947) (size!48974 a!2850)))) (or (is-Undefined!12640 lt!653947) (ite (is-Found!12640 lt!653947) (= (select (arr!48423 a!2850) (index!52952 lt!653947)) (select (arr!48423 a!2850) j!87)) (and (is-MissingVacant!12640 lt!653947) (= (index!52954 lt!653947) vacantBefore!10) (= (select (arr!48423 a!2850) (index!52954 lt!653947)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157947 (= lt!653947 e!841359)))

(declare-fun c!139246 () Bool)

(assert (=> d!157947 (= c!139246 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157947 (= lt!653946 (select (arr!48423 a!2850) index!625))))

(assert (=> d!157947 (validMask!0 mask!2661)))

(assert (=> d!157947 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48423 a!2850) j!87) a!2850 mask!2661) lt!653947)))

(declare-fun b!1505296 () Bool)

(declare-fun c!139247 () Bool)

(assert (=> b!1505296 (= c!139247 (= lt!653946 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1505296 (= e!841361 e!841360)))

(declare-fun b!1505297 () Bool)

(assert (=> b!1505297 (= e!841361 (Found!12640 index!625))))

(declare-fun b!1505298 () Bool)

(assert (=> b!1505298 (= e!841360 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48423 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1505299 () Bool)

(assert (=> b!1505299 (= e!841359 Undefined!12640)))

(assert (= (and d!157947 c!139246) b!1505299))

(assert (= (and d!157947 (not c!139246)) b!1505294))

(assert (= (and b!1505294 c!139245) b!1505297))

(assert (= (and b!1505294 (not c!139245)) b!1505296))

(assert (= (and b!1505296 c!139247) b!1505295))

(assert (= (and b!1505296 (not c!139247)) b!1505298))

(declare-fun m!1388481 () Bool)

(assert (=> d!157947 m!1388481))

(declare-fun m!1388483 () Bool)

(assert (=> d!157947 m!1388483))

(assert (=> d!157947 m!1388385))

(assert (=> d!157947 m!1388359))

(assert (=> b!1505298 m!1388395))

(assert (=> b!1505298 m!1388395))

(assert (=> b!1505298 m!1388367))

(declare-fun m!1388485 () Bool)

(assert (=> b!1505298 m!1388485))

(assert (=> b!1505186 d!157947))

(declare-fun d!157949 () Bool)

(declare-fun lt!653950 () (_ BitVec 32))

(assert (=> d!157949 (and (bvsge lt!653950 #b00000000000000000000000000000000) (bvslt lt!653950 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157949 (= lt!653950 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157949 (validMask!0 mask!2661)))

(assert (=> d!157949 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653950)))

(declare-fun bs!43215 () Bool)

(assert (= bs!43215 d!157949))

(declare-fun m!1388487 () Bool)

(assert (=> bs!43215 m!1388487))

(assert (=> bs!43215 m!1388359))

(assert (=> b!1505185 d!157949))

(declare-fun d!157951 () Bool)

(assert (=> d!157951 (= (validKeyInArray!0 (select (arr!48423 a!2850) j!87)) (and (not (= (select (arr!48423 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48423 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505190 d!157951))

(declare-fun d!157953 () Bool)

(declare-fun res!1025882 () Bool)

(declare-fun e!841368 () Bool)

(assert (=> d!157953 (=> res!1025882 e!841368)))

(assert (=> d!157953 (= res!1025882 (bvsge #b00000000000000000000000000000000 (size!48974 a!2850)))))

(assert (=> d!157953 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!841368)))

(declare-fun b!1505308 () Bool)

(declare-fun e!841369 () Bool)

(assert (=> b!1505308 (= e!841368 e!841369)))

(declare-fun c!139250 () Bool)

(assert (=> b!1505308 (= c!139250 (validKeyInArray!0 (select (arr!48423 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1505309 () Bool)

(declare-fun e!841370 () Bool)

(assert (=> b!1505309 (= e!841369 e!841370)))

(declare-fun lt!653958 () (_ BitVec 64))

(assert (=> b!1505309 (= lt!653958 (select (arr!48423 a!2850) #b00000000000000000000000000000000))))

(declare-fun lt!653959 () Unit!50242)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100351 (_ BitVec 64) (_ BitVec 32)) Unit!50242)

(assert (=> b!1505309 (= lt!653959 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653958 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505309 (arrayContainsKey!0 a!2850 lt!653958 #b00000000000000000000000000000000)))

(declare-fun lt!653957 () Unit!50242)

(assert (=> b!1505309 (= lt!653957 lt!653959)))

(declare-fun res!1025883 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100351 (_ BitVec 32)) SeekEntryResult!12640)

(assert (=> b!1505309 (= res!1025883 (= (seekEntryOrOpen!0 (select (arr!48423 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12640 #b00000000000000000000000000000000)))))

(assert (=> b!1505309 (=> (not res!1025883) (not e!841370))))

(declare-fun b!1505310 () Bool)

(declare-fun call!68166 () Bool)

(assert (=> b!1505310 (= e!841370 call!68166)))

(declare-fun b!1505311 () Bool)

(assert (=> b!1505311 (= e!841369 call!68166)))

(declare-fun bm!68163 () Bool)

(assert (=> bm!68163 (= call!68166 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(assert (= (and d!157953 (not res!1025882)) b!1505308))

(assert (= (and b!1505308 c!139250) b!1505309))

(assert (= (and b!1505308 (not c!139250)) b!1505311))

(assert (= (and b!1505309 res!1025883) b!1505310))

(assert (= (or b!1505310 b!1505311) bm!68163))

(declare-fun m!1388489 () Bool)

(assert (=> b!1505308 m!1388489))

(assert (=> b!1505308 m!1388489))

(declare-fun m!1388491 () Bool)

(assert (=> b!1505308 m!1388491))

(assert (=> b!1505309 m!1388489))

(declare-fun m!1388493 () Bool)

(assert (=> b!1505309 m!1388493))

(declare-fun m!1388495 () Bool)

(assert (=> b!1505309 m!1388495))

(assert (=> b!1505309 m!1388489))

(declare-fun m!1388497 () Bool)

(assert (=> b!1505309 m!1388497))

(declare-fun m!1388499 () Bool)

(assert (=> bm!68163 m!1388499))

(assert (=> b!1505184 d!157953))

(declare-fun b!1505322 () Bool)

(declare-fun e!841381 () Bool)

(declare-fun contains!9965 (List!35095 (_ BitVec 64)) Bool)

(assert (=> b!1505322 (= e!841381 (contains!9965 Nil!35092 (select (arr!48423 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1505323 () Bool)

(declare-fun e!841382 () Bool)

(declare-fun call!68169 () Bool)

(assert (=> b!1505323 (= e!841382 call!68169)))

(declare-fun b!1505324 () Bool)

(assert (=> b!1505324 (= e!841382 call!68169)))

(declare-fun bm!68166 () Bool)

(declare-fun c!139253 () Bool)

(assert (=> bm!68166 (= call!68169 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139253 (Cons!35091 (select (arr!48423 a!2850) #b00000000000000000000000000000000) Nil!35092) Nil!35092)))))

(declare-fun d!157955 () Bool)

(declare-fun res!1025891 () Bool)

(declare-fun e!841380 () Bool)

(assert (=> d!157955 (=> res!1025891 e!841380)))

(assert (=> d!157955 (= res!1025891 (bvsge #b00000000000000000000000000000000 (size!48974 a!2850)))))

(assert (=> d!157955 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35092) e!841380)))

(declare-fun b!1505325 () Bool)

(declare-fun e!841379 () Bool)

(assert (=> b!1505325 (= e!841380 e!841379)))

(declare-fun res!1025890 () Bool)

(assert (=> b!1505325 (=> (not res!1025890) (not e!841379))))

(assert (=> b!1505325 (= res!1025890 (not e!841381))))

(declare-fun res!1025892 () Bool)

(assert (=> b!1505325 (=> (not res!1025892) (not e!841381))))

(assert (=> b!1505325 (= res!1025892 (validKeyInArray!0 (select (arr!48423 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1505326 () Bool)

(assert (=> b!1505326 (= e!841379 e!841382)))

(assert (=> b!1505326 (= c!139253 (validKeyInArray!0 (select (arr!48423 a!2850) #b00000000000000000000000000000000)))))

(assert (= (and d!157955 (not res!1025891)) b!1505325))

(assert (= (and b!1505325 res!1025892) b!1505322))

(assert (= (and b!1505325 res!1025890) b!1505326))

(assert (= (and b!1505326 c!139253) b!1505324))

(assert (= (and b!1505326 (not c!139253)) b!1505323))

(assert (= (or b!1505324 b!1505323) bm!68166))

(assert (=> b!1505322 m!1388489))

(assert (=> b!1505322 m!1388489))

(declare-fun m!1388501 () Bool)

(assert (=> b!1505322 m!1388501))

(assert (=> bm!68166 m!1388489))

(declare-fun m!1388503 () Bool)

(assert (=> bm!68166 m!1388503))

(assert (=> b!1505325 m!1388489))

(assert (=> b!1505325 m!1388489))

(assert (=> b!1505325 m!1388491))

(assert (=> b!1505326 m!1388489))

(assert (=> b!1505326 m!1388489))

(assert (=> b!1505326 m!1388491))

(assert (=> b!1505189 d!157955))

(push 1)

(assert (not d!157943))

(assert (not d!157941))

(assert (not b!1505298))

(assert (not b!1505326))

(assert (not b!1505293))

(assert (not b!1505309))

(assert (not b!1505247))

(assert (not b!1505289))

(assert (not bm!68166))

(assert (not d!157911))

(assert (not d!157947))

(assert (not d!157949))

(assert (not d!157939))

(assert (not bm!68163))

(assert (not b!1505325))

(assert (not b!1505308))

(assert (not b!1505278))

(assert (not b!1505322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

