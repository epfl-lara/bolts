; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53098 () Bool)

(assert start!53098)

(declare-fun b!577463 () Bool)

(declare-fun res!365574 () Bool)

(declare-fun e!332136 () Bool)

(assert (=> b!577463 (=> (not res!365574) (not e!332136))))

(declare-datatypes ((array!36037 0))(
  ( (array!36038 (arr!17292 (Array (_ BitVec 32) (_ BitVec 64))) (size!17656 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36037)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577463 (= res!365574 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577464 () Bool)

(declare-fun res!365579 () Bool)

(declare-fun e!332135 () Bool)

(assert (=> b!577464 (=> (not res!365579) (not e!332135))))

(assert (=> b!577464 (= res!365579 (and (bvsle #b00000000000000000000000000000000 (size!17656 a!2986)) (bvslt (size!17656 a!2986) #b01111111111111111111111111111111)))))

(declare-fun b!577465 () Bool)

(declare-fun res!365575 () Bool)

(assert (=> b!577465 (=> (not res!365575) (not e!332136))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577465 (= res!365575 (validKeyInArray!0 (select (arr!17292 a!2986) j!136)))))

(declare-fun b!577466 () Bool)

(declare-fun res!365576 () Bool)

(assert (=> b!577466 (=> (not res!365576) (not e!332136))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577466 (= res!365576 (and (= (size!17656 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17656 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17656 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577467 () Bool)

(assert (=> b!577467 (= e!332136 e!332135)))

(declare-fun res!365573 () Bool)

(assert (=> b!577467 (=> (not res!365573) (not e!332135))))

(declare-datatypes ((SeekEntryResult!5739 0))(
  ( (MissingZero!5739 (index!25183 (_ BitVec 32))) (Found!5739 (index!25184 (_ BitVec 32))) (Intermediate!5739 (undefined!6551 Bool) (index!25185 (_ BitVec 32)) (x!54123 (_ BitVec 32))) (Undefined!5739) (MissingVacant!5739 (index!25186 (_ BitVec 32))) )
))
(declare-fun lt!263996 () SeekEntryResult!5739)

(assert (=> b!577467 (= res!365573 (or (= lt!263996 (MissingZero!5739 i!1108)) (= lt!263996 (MissingVacant!5739 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36037 (_ BitVec 32)) SeekEntryResult!5739)

(assert (=> b!577467 (= lt!263996 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577462 () Bool)

(declare-fun res!365577 () Bool)

(assert (=> b!577462 (=> (not res!365577) (not e!332136))))

(assert (=> b!577462 (= res!365577 (validKeyInArray!0 k!1786))))

(declare-fun res!365578 () Bool)

(assert (=> start!53098 (=> (not res!365578) (not e!332136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53098 (= res!365578 (validMask!0 mask!3053))))

(assert (=> start!53098 e!332136))

(assert (=> start!53098 true))

(declare-fun array_inv!13066 (array!36037) Bool)

(assert (=> start!53098 (array_inv!13066 a!2986)))

(declare-fun b!577468 () Bool)

(declare-fun res!365572 () Bool)

(assert (=> b!577468 (=> (not res!365572) (not e!332135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36037 (_ BitVec 32)) Bool)

(assert (=> b!577468 (= res!365572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577469 () Bool)

(declare-datatypes ((List!11386 0))(
  ( (Nil!11383) (Cons!11382 (h!12427 (_ BitVec 64)) (t!17622 List!11386)) )
))
(declare-fun noDuplicate!226 (List!11386) Bool)

(assert (=> b!577469 (= e!332135 (not (noDuplicate!226 Nil!11383)))))

(assert (= (and start!53098 res!365578) b!577466))

(assert (= (and b!577466 res!365576) b!577465))

(assert (= (and b!577465 res!365575) b!577462))

(assert (= (and b!577462 res!365577) b!577463))

(assert (= (and b!577463 res!365574) b!577467))

(assert (= (and b!577467 res!365573) b!577468))

(assert (= (and b!577468 res!365572) b!577464))

(assert (= (and b!577464 res!365579) b!577469))

(declare-fun m!556333 () Bool)

(assert (=> b!577465 m!556333))

(assert (=> b!577465 m!556333))

(declare-fun m!556335 () Bool)

(assert (=> b!577465 m!556335))

(declare-fun m!556337 () Bool)

(assert (=> b!577467 m!556337))

(declare-fun m!556339 () Bool)

(assert (=> start!53098 m!556339))

(declare-fun m!556341 () Bool)

(assert (=> start!53098 m!556341))

(declare-fun m!556343 () Bool)

(assert (=> b!577463 m!556343))

(declare-fun m!556345 () Bool)

(assert (=> b!577469 m!556345))

(declare-fun m!556347 () Bool)

(assert (=> b!577468 m!556347))

(declare-fun m!556349 () Bool)

(assert (=> b!577462 m!556349))

(push 1)

(assert (not start!53098))

(assert (not b!577463))

(assert (not b!577462))

(assert (not b!577465))

(assert (not b!577467))

(assert (not b!577468))

(assert (not b!577469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!85477 () Bool)

(assert (=> d!85477 (= (validKeyInArray!0 (select (arr!17292 a!2986) j!136)) (and (not (= (select (arr!17292 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17292 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!577465 d!85477))

(declare-fun d!85481 () Bool)

(declare-fun res!365638 () Bool)

(declare-fun e!332166 () Bool)

(assert (=> d!85481 (=> res!365638 e!332166)))

(assert (=> d!85481 (= res!365638 (is-Nil!11383 Nil!11383))))

(assert (=> d!85481 (= (noDuplicate!226 Nil!11383) e!332166)))

(declare-fun b!577528 () Bool)

(declare-fun e!332167 () Bool)

(assert (=> b!577528 (= e!332166 e!332167)))

(declare-fun res!365639 () Bool)

(assert (=> b!577528 (=> (not res!365639) (not e!332167))))

(declare-fun contains!2903 (List!11386 (_ BitVec 64)) Bool)

(assert (=> b!577528 (= res!365639 (not (contains!2903 (t!17622 Nil!11383) (h!12427 Nil!11383))))))

(declare-fun b!577529 () Bool)

(assert (=> b!577529 (= e!332167 (noDuplicate!226 (t!17622 Nil!11383)))))

(assert (= (and d!85481 (not res!365638)) b!577528))

(assert (= (and b!577528 res!365639) b!577529))

(declare-fun m!556391 () Bool)

(assert (=> b!577528 m!556391))

(declare-fun m!556393 () Bool)

(assert (=> b!577529 m!556393))

(assert (=> b!577469 d!85481))

(declare-fun d!85487 () Bool)

(declare-fun res!365644 () Bool)

(declare-fun e!332172 () Bool)

(assert (=> d!85487 (=> res!365644 e!332172)))

(assert (=> d!85487 (= res!365644 (= (select (arr!17292 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!85487 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!332172)))

(declare-fun b!577534 () Bool)

(declare-fun e!332173 () Bool)

(assert (=> b!577534 (= e!332172 e!332173)))

(declare-fun res!365645 () Bool)

(assert (=> b!577534 (=> (not res!365645) (not e!332173))))

(assert (=> b!577534 (= res!365645 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17656 a!2986)))))

(declare-fun b!577535 () Bool)

(assert (=> b!577535 (= e!332173 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85487 (not res!365644)) b!577534))

(assert (= (and b!577534 res!365645) b!577535))

(declare-fun m!556395 () Bool)

(assert (=> d!85487 m!556395))

(declare-fun m!556397 () Bool)

(assert (=> b!577535 m!556397))

(assert (=> b!577463 d!85487))

(declare-fun d!85489 () Bool)

(assert (=> d!85489 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!53098 d!85489))

(declare-fun d!85497 () Bool)

(assert (=> d!85497 (= (array_inv!13066 a!2986) (bvsge (size!17656 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!53098 d!85497))

(declare-fun b!577574 () Bool)

(declare-fun e!332206 () Bool)

(declare-fun e!332204 () Bool)

(assert (=> b!577574 (= e!332206 e!332204)))

(declare-fun c!66320 () Bool)

(assert (=> b!577574 (= c!66320 (validKeyInArray!0 (select (arr!17292 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!577575 () Bool)

(declare-fun e!332205 () Bool)

(assert (=> b!577575 (= e!332204 e!332205)))

(declare-fun lt!264027 () (_ BitVec 64))

(assert (=> b!577575 (= lt!264027 (select (arr!17292 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!18128 0))(
  ( (Unit!18129) )
))
(declare-fun lt!264029 () Unit!18128)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36037 (_ BitVec 64) (_ BitVec 32)) Unit!18128)

(assert (=> b!577575 (= lt!264029 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!264027 #b00000000000000000000000000000000))))

(assert (=> b!577575 (arrayContainsKey!0 a!2986 lt!264027 #b00000000000000000000000000000000)))

(declare-fun lt!264028 () Unit!18128)

(assert (=> b!577575 (= lt!264028 lt!264029)))

(declare-fun res!365669 () Bool)

(assert (=> b!577575 (= res!365669 (= (seekEntryOrOpen!0 (select (arr!17292 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!5739 #b00000000000000000000000000000000)))))

(assert (=> b!577575 (=> (not res!365669) (not e!332205))))

(declare-fun b!577576 () Bool)

(declare-fun call!32765 () Bool)

(assert (=> b!577576 (= e!332204 call!32765)))

(declare-fun bm!32762 () Bool)

(assert (=> bm!32762 (= call!32765 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!85499 () Bool)

(declare-fun res!365668 () Bool)

(assert (=> d!85499 (=> res!365668 e!332206)))

(assert (=> d!85499 (= res!365668 (bvsge #b00000000000000000000000000000000 (size!17656 a!2986)))))

(assert (=> d!85499 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!332206)))

(declare-fun b!577577 () Bool)

(assert (=> b!577577 (= e!332205 call!32765)))

(assert (= (and d!85499 (not res!365668)) b!577574))

(assert (= (and b!577574 c!66320) b!577575))

(assert (= (and b!577574 (not c!66320)) b!577576))

(assert (= (and b!577575 res!365669) b!577577))

(assert (= (or b!577577 b!577576) bm!32762))

(assert (=> b!577574 m!556395))

(assert (=> b!577574 m!556395))

(declare-fun m!556425 () Bool)

(assert (=> b!577574 m!556425))

(assert (=> b!577575 m!556395))

(declare-fun m!556427 () Bool)

(assert (=> b!577575 m!556427))

(declare-fun m!556429 () Bool)

(assert (=> b!577575 m!556429))

(assert (=> b!577575 m!556395))

(declare-fun m!556431 () Bool)

(assert (=> b!577575 m!556431))

(declare-fun m!556433 () Bool)

(assert (=> bm!32762 m!556433))

(assert (=> b!577468 d!85499))

(declare-fun b!577632 () Bool)

(declare-fun e!332239 () SeekEntryResult!5739)

(declare-fun lt!264056 () SeekEntryResult!5739)

(assert (=> b!577632 (= e!332239 (MissingZero!5739 (index!25185 lt!264056)))))

(declare-fun b!577633 () Bool)

(declare-fun c!66346 () Bool)

(declare-fun lt!264055 () (_ BitVec 64))

(assert (=> b!577633 (= c!66346 (= lt!264055 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!332237 () SeekEntryResult!5739)

(assert (=> b!577633 (= e!332237 e!332239)))

(declare-fun b!577634 () Bool)

(declare-fun e!332238 () SeekEntryResult!5739)

(assert (=> b!577634 (= e!332238 Undefined!5739)))

(declare-fun b!577636 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36037 (_ BitVec 32)) SeekEntryResult!5739)

(assert (=> b!577636 (= e!332239 (seekKeyOrZeroReturnVacant!0 (x!54123 lt!264056) (index!25185 lt!264056) (index!25185 lt!264056) k!1786 a!2986 mask!3053))))

(declare-fun b!577637 () Bool)

(assert (=> b!577637 (= e!332237 (Found!5739 (index!25185 lt!264056)))))

(declare-fun b!577635 () Bool)

(assert (=> b!577635 (= e!332238 e!332237)))

(assert (=> b!577635 (= lt!264055 (select (arr!17292 a!2986) (index!25185 lt!264056)))))

(declare-fun c!66345 () Bool)

(assert (=> b!577635 (= c!66345 (= lt!264055 k!1786))))

(declare-fun d!85507 () Bool)

(declare-fun lt!264054 () SeekEntryResult!5739)

(assert (=> d!85507 (and (or (is-Undefined!5739 lt!264054) (not (is-Found!5739 lt!264054)) (and (bvsge (index!25184 lt!264054) #b00000000000000000000000000000000) (bvslt (index!25184 lt!264054) (size!17656 a!2986)))) (or (is-Undefined!5739 lt!264054) (is-Found!5739 lt!264054) (not (is-MissingZero!5739 lt!264054)) (and (bvsge (index!25183 lt!264054) #b00000000000000000000000000000000) (bvslt (index!25183 lt!264054) (size!17656 a!2986)))) (or (is-Undefined!5739 lt!264054) (is-Found!5739 lt!264054) (is-MissingZero!5739 lt!264054) (not (is-MissingVacant!5739 lt!264054)) (and (bvsge (index!25186 lt!264054) #b00000000000000000000000000000000) (bvslt (index!25186 lt!264054) (size!17656 a!2986)))) (or (is-Undefined!5739 lt!264054) (ite (is-Found!5739 lt!264054) (= (select (arr!17292 a!2986) (index!25184 lt!264054)) k!1786) (ite (is-MissingZero!5739 lt!264054) (= (select (arr!17292 a!2986) (index!25183 lt!264054)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5739 lt!264054) (= (select (arr!17292 a!2986) (index!25186 lt!264054)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85507 (= lt!264054 e!332238)))

(declare-fun c!66347 () Bool)

(assert (=> d!85507 (= c!66347 (and (is-Intermediate!5739 lt!264056) (undefined!6551 lt!264056)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36037 (_ BitVec 32)) SeekEntryResult!5739)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85507 (= lt!264056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!85507 (validMask!0 mask!3053)))

(assert (=> d!85507 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!264054)))

(assert (= (and d!85507 c!66347) b!577634))

(assert (= (and d!85507 (not c!66347)) b!577635))

(assert (= (and b!577635 c!66345) b!577637))

(assert (= (and b!577635 (not c!66345)) b!577633))

(assert (= (and b!577633 c!66346) b!577632))

(assert (= (and b!577633 (not c!66346)) b!577636))

(declare-fun m!556467 () Bool)

(assert (=> b!577636 m!556467))

(declare-fun m!556469 () Bool)

(assert (=> b!577635 m!556469))

(declare-fun m!556471 () Bool)

(assert (=> d!85507 m!556471))

(declare-fun m!556473 () Bool)

(assert (=> d!85507 m!556473))

(declare-fun m!556475 () Bool)

