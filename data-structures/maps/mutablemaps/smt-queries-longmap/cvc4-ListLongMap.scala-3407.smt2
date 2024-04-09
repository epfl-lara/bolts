; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47312 () Bool)

(assert start!47312)

(declare-fun b!520174 () Bool)

(declare-fun res!318431 () Bool)

(declare-fun e!303526 () Bool)

(assert (=> b!520174 (=> (not res!318431) (not e!303526))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520174 (= res!318431 (validKeyInArray!0 k!2280))))

(declare-fun b!520175 () Bool)

(declare-datatypes ((Unit!16102 0))(
  ( (Unit!16103) )
))
(declare-fun e!303529 () Unit!16102)

(declare-fun Unit!16104 () Unit!16102)

(assert (=> b!520175 (= e!303529 Unit!16104)))

(declare-fun lt!238299 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!238307 () Unit!16102)

(declare-datatypes ((array!33161 0))(
  ( (array!33162 (arr!15935 (Array (_ BitVec 32) (_ BitVec 64))) (size!16299 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33161)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4409 0))(
  ( (MissingZero!4409 (index!19836 (_ BitVec 32))) (Found!4409 (index!19837 (_ BitVec 32))) (Intermediate!4409 (undefined!5221 Bool) (index!19838 (_ BitVec 32)) (x!48845 (_ BitVec 32))) (Undefined!4409) (MissingVacant!4409 (index!19839 (_ BitVec 32))) )
))
(declare-fun lt!238302 () SeekEntryResult!4409)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33161 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16102)

(assert (=> b!520175 (= lt!238307 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238299 #b00000000000000000000000000000000 (index!19838 lt!238302) (x!48845 lt!238302) mask!3524))))

(declare-fun lt!238303 () (_ BitVec 64))

(declare-fun res!318434 () Bool)

(declare-fun lt!238304 () array!33161)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33161 (_ BitVec 32)) SeekEntryResult!4409)

(assert (=> b!520175 (= res!318434 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238299 lt!238303 lt!238304 mask!3524) (Intermediate!4409 false (index!19838 lt!238302) (x!48845 lt!238302))))))

(declare-fun e!303531 () Bool)

(assert (=> b!520175 (=> (not res!318434) (not e!303531))))

(assert (=> b!520175 e!303531))

(declare-fun b!520176 () Bool)

(declare-fun e!303530 () Bool)

(assert (=> b!520176 (= e!303526 e!303530)))

(declare-fun res!318430 () Bool)

(assert (=> b!520176 (=> (not res!318430) (not e!303530))))

(declare-fun lt!238305 () SeekEntryResult!4409)

(assert (=> b!520176 (= res!318430 (or (= lt!238305 (MissingZero!4409 i!1204)) (= lt!238305 (MissingVacant!4409 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33161 (_ BitVec 32)) SeekEntryResult!4409)

(assert (=> b!520176 (= lt!238305 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!520177 () Bool)

(declare-fun res!318437 () Bool)

(assert (=> b!520177 (=> (not res!318437) (not e!303526))))

(declare-fun arrayContainsKey!0 (array!33161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520177 (= res!318437 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!318439 () Bool)

(assert (=> start!47312 (=> (not res!318439) (not e!303526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47312 (= res!318439 (validMask!0 mask!3524))))

(assert (=> start!47312 e!303526))

(assert (=> start!47312 true))

(declare-fun array_inv!11709 (array!33161) Bool)

(assert (=> start!47312 (array_inv!11709 a!3235)))

(declare-fun b!520178 () Bool)

(declare-fun Unit!16105 () Unit!16102)

(assert (=> b!520178 (= e!303529 Unit!16105)))

(declare-fun b!520179 () Bool)

(assert (=> b!520179 (= e!303531 false)))

(declare-fun b!520180 () Bool)

(declare-fun e!303527 () Bool)

(assert (=> b!520180 (= e!303527 (and (bvsge (index!19838 lt!238302) #b00000000000000000000000000000000) (bvslt (index!19838 lt!238302) (size!16299 a!3235))))))

(assert (=> b!520180 (and (or (= (select (arr!15935 a!3235) (index!19838 lt!238302)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15935 a!3235) (index!19838 lt!238302)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15935 a!3235) (index!19838 lt!238302)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!238300 () Unit!16102)

(assert (=> b!520180 (= lt!238300 e!303529)))

(declare-fun c!61172 () Bool)

(assert (=> b!520180 (= c!61172 (= (select (arr!15935 a!3235) (index!19838 lt!238302)) (select (arr!15935 a!3235) j!176)))))

(assert (=> b!520180 (and (bvslt (x!48845 lt!238302) #b01111111111111111111111111111110) (or (= (select (arr!15935 a!3235) (index!19838 lt!238302)) (select (arr!15935 a!3235) j!176)) (= (select (arr!15935 a!3235) (index!19838 lt!238302)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15935 a!3235) (index!19838 lt!238302)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520181 () Bool)

(declare-fun res!318440 () Bool)

(assert (=> b!520181 (=> res!318440 e!303527)))

(assert (=> b!520181 (= res!318440 (or (undefined!5221 lt!238302) (not (is-Intermediate!4409 lt!238302))))))

(declare-fun b!520182 () Bool)

(declare-fun res!318433 () Bool)

(assert (=> b!520182 (=> (not res!318433) (not e!303530))))

(declare-datatypes ((List!10146 0))(
  ( (Nil!10143) (Cons!10142 (h!11061 (_ BitVec 64)) (t!16382 List!10146)) )
))
(declare-fun arrayNoDuplicates!0 (array!33161 (_ BitVec 32) List!10146) Bool)

(assert (=> b!520182 (= res!318433 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10143))))

(declare-fun b!520183 () Bool)

(assert (=> b!520183 (= e!303530 (not e!303527))))

(declare-fun res!318438 () Bool)

(assert (=> b!520183 (=> res!318438 e!303527)))

(declare-fun lt!238306 () (_ BitVec 32))

(assert (=> b!520183 (= res!318438 (= lt!238302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238306 lt!238303 lt!238304 mask!3524)))))

(assert (=> b!520183 (= lt!238302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238299 (select (arr!15935 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520183 (= lt!238306 (toIndex!0 lt!238303 mask!3524))))

(assert (=> b!520183 (= lt!238303 (select (store (arr!15935 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!520183 (= lt!238299 (toIndex!0 (select (arr!15935 a!3235) j!176) mask!3524))))

(assert (=> b!520183 (= lt!238304 (array!33162 (store (arr!15935 a!3235) i!1204 k!2280) (size!16299 a!3235)))))

(declare-fun e!303532 () Bool)

(assert (=> b!520183 e!303532))

(declare-fun res!318432 () Bool)

(assert (=> b!520183 (=> (not res!318432) (not e!303532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33161 (_ BitVec 32)) Bool)

(assert (=> b!520183 (= res!318432 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238301 () Unit!16102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16102)

(assert (=> b!520183 (= lt!238301 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!520184 () Bool)

(declare-fun res!318429 () Bool)

(assert (=> b!520184 (=> (not res!318429) (not e!303526))))

(assert (=> b!520184 (= res!318429 (validKeyInArray!0 (select (arr!15935 a!3235) j!176)))))

(declare-fun b!520185 () Bool)

(assert (=> b!520185 (= e!303532 (= (seekEntryOrOpen!0 (select (arr!15935 a!3235) j!176) a!3235 mask!3524) (Found!4409 j!176)))))

(declare-fun b!520186 () Bool)

(declare-fun res!318436 () Bool)

(assert (=> b!520186 (=> (not res!318436) (not e!303530))))

(assert (=> b!520186 (= res!318436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520187 () Bool)

(declare-fun res!318435 () Bool)

(assert (=> b!520187 (=> (not res!318435) (not e!303526))))

(assert (=> b!520187 (= res!318435 (and (= (size!16299 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16299 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16299 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47312 res!318439) b!520187))

(assert (= (and b!520187 res!318435) b!520184))

(assert (= (and b!520184 res!318429) b!520174))

(assert (= (and b!520174 res!318431) b!520177))

(assert (= (and b!520177 res!318437) b!520176))

(assert (= (and b!520176 res!318430) b!520186))

(assert (= (and b!520186 res!318436) b!520182))

(assert (= (and b!520182 res!318433) b!520183))

(assert (= (and b!520183 res!318432) b!520185))

(assert (= (and b!520183 (not res!318438)) b!520181))

(assert (= (and b!520181 (not res!318440)) b!520180))

(assert (= (and b!520180 c!61172) b!520175))

(assert (= (and b!520180 (not c!61172)) b!520178))

(assert (= (and b!520175 res!318434) b!520179))

(declare-fun m!501217 () Bool)

(assert (=> b!520186 m!501217))

(declare-fun m!501219 () Bool)

(assert (=> b!520184 m!501219))

(assert (=> b!520184 m!501219))

(declare-fun m!501221 () Bool)

(assert (=> b!520184 m!501221))

(assert (=> b!520185 m!501219))

(assert (=> b!520185 m!501219))

(declare-fun m!501223 () Bool)

(assert (=> b!520185 m!501223))

(declare-fun m!501225 () Bool)

(assert (=> b!520182 m!501225))

(declare-fun m!501227 () Bool)

(assert (=> b!520176 m!501227))

(declare-fun m!501229 () Bool)

(assert (=> b!520183 m!501229))

(declare-fun m!501231 () Bool)

(assert (=> b!520183 m!501231))

(declare-fun m!501233 () Bool)

(assert (=> b!520183 m!501233))

(declare-fun m!501235 () Bool)

(assert (=> b!520183 m!501235))

(assert (=> b!520183 m!501219))

(declare-fun m!501237 () Bool)

(assert (=> b!520183 m!501237))

(assert (=> b!520183 m!501219))

(declare-fun m!501239 () Bool)

(assert (=> b!520183 m!501239))

(assert (=> b!520183 m!501219))

(declare-fun m!501241 () Bool)

(assert (=> b!520183 m!501241))

(declare-fun m!501243 () Bool)

(assert (=> b!520183 m!501243))

(declare-fun m!501245 () Bool)

(assert (=> b!520180 m!501245))

(assert (=> b!520180 m!501219))

(declare-fun m!501247 () Bool)

(assert (=> b!520175 m!501247))

(declare-fun m!501249 () Bool)

(assert (=> b!520175 m!501249))

(declare-fun m!501251 () Bool)

(assert (=> b!520177 m!501251))

(declare-fun m!501253 () Bool)

(assert (=> start!47312 m!501253))

(declare-fun m!501255 () Bool)

(assert (=> start!47312 m!501255))

(declare-fun m!501257 () Bool)

(assert (=> b!520174 m!501257))

(push 1)

(assert (not b!520177))

(assert (not b!520186))

(assert (not start!47312))

(assert (not b!520174))

(assert (not b!520175))

(assert (not b!520176))

(assert (not b!520183))

(assert (not b!520185))

(assert (not b!520182))

(assert (not b!520184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80163 () Bool)

(declare-fun lt!238328 () (_ BitVec 32))

(declare-fun lt!238327 () (_ BitVec 32))

(assert (=> d!80163 (= lt!238328 (bvmul (bvxor lt!238327 (bvlshr lt!238327 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80163 (= lt!238327 ((_ extract 31 0) (bvand (bvxor lt!238303 (bvlshr lt!238303 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80163 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318454 (let ((h!11063 ((_ extract 31 0) (bvand (bvxor lt!238303 (bvlshr lt!238303 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48849 (bvmul (bvxor h!11063 (bvlshr h!11063 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48849 (bvlshr x!48849 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318454 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318454 #b00000000000000000000000000000000))))))

(assert (=> d!80163 (= (toIndex!0 lt!238303 mask!3524) (bvand (bvxor lt!238328 (bvlshr lt!238328 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!520183 d!80163))

(declare-fun d!80169 () Bool)

(declare-fun lt!238330 () (_ BitVec 32))

(declare-fun lt!238329 () (_ BitVec 32))

(assert (=> d!80169 (= lt!238330 (bvmul (bvxor lt!238329 (bvlshr lt!238329 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80169 (= lt!238329 ((_ extract 31 0) (bvand (bvxor (select (arr!15935 a!3235) j!176) (bvlshr (select (arr!15935 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80169 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318454 (let ((h!11063 ((_ extract 31 0) (bvand (bvxor (select (arr!15935 a!3235) j!176) (bvlshr (select (arr!15935 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48849 (bvmul (bvxor h!11063 (bvlshr h!11063 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48849 (bvlshr x!48849 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318454 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318454 #b00000000000000000000000000000000))))))

(assert (=> d!80169 (= (toIndex!0 (select (arr!15935 a!3235) j!176) mask!3524) (bvand (bvxor lt!238330 (bvlshr lt!238330 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!520183 d!80169))

(declare-fun b!520290 () Bool)

(declare-fun e!303594 () Bool)

(declare-fun lt!238347 () SeekEntryResult!4409)

(assert (=> b!520290 (= e!303594 (bvsge (x!48845 lt!238347) #b01111111111111111111111111111110))))

(declare-fun b!520291 () Bool)

(assert (=> b!520291 (and (bvsge (index!19838 lt!238347) #b00000000000000000000000000000000) (bvslt (index!19838 lt!238347) (size!16299 a!3235)))))

(declare-fun res!318479 () Bool)

(assert (=> b!520291 (= res!318479 (= (select (arr!15935 a!3235) (index!19838 lt!238347)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303595 () Bool)

(assert (=> b!520291 (=> res!318479 e!303595)))

(declare-fun b!520292 () Bool)

(declare-fun e!303596 () SeekEntryResult!4409)

(assert (=> b!520292 (= e!303596 (Intermediate!4409 false lt!238299 #b00000000000000000000000000000000))))

(declare-fun b!520293 () Bool)

(assert (=> b!520293 (and (bvsge (index!19838 lt!238347) #b00000000000000000000000000000000) (bvslt (index!19838 lt!238347) (size!16299 a!3235)))))

(declare-fun res!318480 () Bool)

(assert (=> b!520293 (= res!318480 (= (select (arr!15935 a!3235) (index!19838 lt!238347)) (select (arr!15935 a!3235) j!176)))))

(assert (=> b!520293 (=> res!318480 e!303595)))

(declare-fun e!303598 () Bool)

(assert (=> b!520293 (= e!303598 e!303595)))

(declare-fun b!520295 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520295 (= e!303596 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238299 #b00000000000000000000000000000000 mask!3524) (select (arr!15935 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!520296 () Bool)

(assert (=> b!520296 (and (bvsge (index!19838 lt!238347) #b00000000000000000000000000000000) (bvslt (index!19838 lt!238347) (size!16299 a!3235)))))

(assert (=> b!520296 (= e!303595 (= (select (arr!15935 a!3235) (index!19838 lt!238347)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!520297 () Bool)

(declare-fun e!303597 () SeekEntryResult!4409)

(assert (=> b!520297 (= e!303597 e!303596)))

(declare-fun c!61206 () Bool)

(declare-fun lt!238348 () (_ BitVec 64))

(assert (=> b!520297 (= c!61206 (or (= lt!238348 (select (arr!15935 a!3235) j!176)) (= (bvadd lt!238348 lt!238348) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520298 () Bool)

(assert (=> b!520298 (= e!303594 e!303598)))

(declare-fun res!318481 () Bool)

(assert (=> b!520298 (= res!318481 (and (is-Intermediate!4409 lt!238347) (not (undefined!5221 lt!238347)) (bvslt (x!48845 lt!238347) #b01111111111111111111111111111110) (bvsge (x!48845 lt!238347) #b00000000000000000000000000000000) (bvsge (x!48845 lt!238347) #b00000000000000000000000000000000)))))

(assert (=> b!520298 (=> (not res!318481) (not e!303598))))

(declare-fun b!520294 () Bool)

(assert (=> b!520294 (= e!303597 (Intermediate!4409 true lt!238299 #b00000000000000000000000000000000))))

(declare-fun d!80171 () Bool)

(assert (=> d!80171 e!303594))

(declare-fun c!61208 () Bool)

(assert (=> d!80171 (= c!61208 (and (is-Intermediate!4409 lt!238347) (undefined!5221 lt!238347)))))

(assert (=> d!80171 (= lt!238347 e!303597)))

(declare-fun c!61207 () Bool)

(assert (=> d!80171 (= c!61207 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80171 (= lt!238348 (select (arr!15935 a!3235) lt!238299))))

(assert (=> d!80171 (validMask!0 mask!3524)))

(assert (=> d!80171 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238299 (select (arr!15935 a!3235) j!176) a!3235 mask!3524) lt!238347)))

(assert (= (and d!80171 c!61207) b!520294))

(assert (= (and d!80171 (not c!61207)) b!520297))

(assert (= (and b!520297 c!61206) b!520292))

(assert (= (and b!520297 (not c!61206)) b!520295))

(assert (= (and d!80171 c!61208) b!520290))

(assert (= (and d!80171 (not c!61208)) b!520298))

(assert (= (and b!520298 res!318481) b!520293))

(assert (= (and b!520293 (not res!318480)) b!520291))

(assert (= (and b!520291 (not res!318479)) b!520296))

(declare-fun m!501287 () Bool)

(assert (=> d!80171 m!501287))

(assert (=> d!80171 m!501253))

(declare-fun m!501289 () Bool)

(assert (=> b!520291 m!501289))

(assert (=> b!520293 m!501289))

(declare-fun m!501291 () Bool)

(assert (=> b!520295 m!501291))

(assert (=> b!520295 m!501291))

(assert (=> b!520295 m!501219))

(declare-fun m!501293 () Bool)

(assert (=> b!520295 m!501293))

(assert (=> b!520296 m!501289))

(assert (=> b!520183 d!80171))

(declare-fun d!80177 () Bool)

(assert (=> d!80177 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!238360 () Unit!16102)

(declare-fun choose!38 (array!33161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16102)

(assert (=> d!80177 (= lt!238360 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80177 (validMask!0 mask!3524)))

(assert (=> d!80177 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!238360)))

(declare-fun bs!16383 () Bool)

(assert (= bs!16383 d!80177))

(assert (=> bs!16383 m!501241))

(declare-fun m!501307 () Bool)

(assert (=> bs!16383 m!501307))

(assert (=> bs!16383 m!501253))

(assert (=> b!520183 d!80177))

(declare-fun d!80183 () Bool)

(declare-fun res!318501 () Bool)

(declare-fun e!303630 () Bool)

(assert (=> d!80183 (=> res!318501 e!303630)))

(assert (=> d!80183 (= res!318501 (bvsge j!176 (size!16299 a!3235)))))

(assert (=> d!80183 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!303630)))

(declare-fun b!520340 () Bool)

(declare-fun e!303629 () Bool)

(declare-fun e!303628 () Bool)

(assert (=> b!520340 (= e!303629 e!303628)))

(declare-fun lt!238378 () (_ BitVec 64))

(assert (=> b!520340 (= lt!238378 (select (arr!15935 a!3235) j!176))))

(declare-fun lt!238379 () Unit!16102)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33161 (_ BitVec 64) (_ BitVec 32)) Unit!16102)

(assert (=> b!520340 (= lt!238379 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238378 j!176))))

(assert (=> b!520340 (arrayContainsKey!0 a!3235 lt!238378 #b00000000000000000000000000000000)))

(declare-fun lt!238377 () Unit!16102)

(assert (=> b!520340 (= lt!238377 lt!238379)))

(declare-fun res!318502 () Bool)

(assert (=> b!520340 (= res!318502 (= (seekEntryOrOpen!0 (select (arr!15935 a!3235) j!176) a!3235 mask!3524) (Found!4409 j!176)))))

(assert (=> b!520340 (=> (not res!318502) (not e!303628))))

(declare-fun b!520341 () Bool)

(declare-fun call!31793 () Bool)

(assert (=> b!520341 (= e!303629 call!31793)))

(declare-fun b!520342 () Bool)

(assert (=> b!520342 (= e!303628 call!31793)))

(declare-fun bm!31790 () Bool)

(assert (=> bm!31790 (= call!31793 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!520343 () Bool)

(assert (=> b!520343 (= e!303630 e!303629)))

(declare-fun c!61220 () Bool)

(assert (=> b!520343 (= c!61220 (validKeyInArray!0 (select (arr!15935 a!3235) j!176)))))

(assert (= (and d!80183 (not res!318501)) b!520343))

(assert (= (and b!520343 c!61220) b!520340))

(assert (= (and b!520343 (not c!61220)) b!520341))

(assert (= (and b!520340 res!318502) b!520342))

(assert (= (or b!520342 b!520341) bm!31790))

(assert (=> b!520340 m!501219))

(declare-fun m!501327 () Bool)

(assert (=> b!520340 m!501327))

(declare-fun m!501329 () Bool)

(assert (=> b!520340 m!501329))

(assert (=> b!520340 m!501219))

(assert (=> b!520340 m!501223))

(declare-fun m!501331 () Bool)

(assert (=> bm!31790 m!501331))

(assert (=> b!520343 m!501219))

(assert (=> b!520343 m!501219))

(assert (=> b!520343 m!501221))

(assert (=> b!520183 d!80183))

(declare-fun b!520344 () Bool)

(declare-fun e!303631 () Bool)

(declare-fun lt!238380 () SeekEntryResult!4409)

(assert (=> b!520344 (= e!303631 (bvsge (x!48845 lt!238380) #b01111111111111111111111111111110))))

(declare-fun b!520345 () Bool)

(assert (=> b!520345 (and (bvsge (index!19838 lt!238380) #b00000000000000000000000000000000) (bvslt (index!19838 lt!238380) (size!16299 lt!238304)))))

(declare-fun res!318503 () Bool)

(assert (=> b!520345 (= res!318503 (= (select (arr!15935 lt!238304) (index!19838 lt!238380)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303632 () Bool)

(assert (=> b!520345 (=> res!318503 e!303632)))

(declare-fun b!520346 () Bool)

(declare-fun e!303633 () SeekEntryResult!4409)

(assert (=> b!520346 (= e!303633 (Intermediate!4409 false lt!238306 #b00000000000000000000000000000000))))

(declare-fun b!520347 () Bool)

(assert (=> b!520347 (and (bvsge (index!19838 lt!238380) #b00000000000000000000000000000000) (bvslt (index!19838 lt!238380) (size!16299 lt!238304)))))

(declare-fun res!318504 () Bool)

(assert (=> b!520347 (= res!318504 (= (select (arr!15935 lt!238304) (index!19838 lt!238380)) lt!238303))))

(assert (=> b!520347 (=> res!318504 e!303632)))

(declare-fun e!303635 () Bool)

(assert (=> b!520347 (= e!303635 e!303632)))

(declare-fun b!520349 () Bool)

(assert (=> b!520349 (= e!303633 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238306 #b00000000000000000000000000000000 mask!3524) lt!238303 lt!238304 mask!3524))))

(declare-fun b!520350 () Bool)

(assert (=> b!520350 (and (bvsge (index!19838 lt!238380) #b00000000000000000000000000000000) (bvslt (index!19838 lt!238380) (size!16299 lt!238304)))))

(assert (=> b!520350 (= e!303632 (= (select (arr!15935 lt!238304) (index!19838 lt!238380)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!520351 () Bool)

(declare-fun e!303634 () SeekEntryResult!4409)

(assert (=> b!520351 (= e!303634 e!303633)))

(declare-fun c!61221 () Bool)

(declare-fun lt!238381 () (_ BitVec 64))

(assert (=> b!520351 (= c!61221 (or (= lt!238381 lt!238303) (= (bvadd lt!238381 lt!238381) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520352 () Bool)

(assert (=> b!520352 (= e!303631 e!303635)))

(declare-fun res!318505 () Bool)

(assert (=> b!520352 (= res!318505 (and (is-Intermediate!4409 lt!238380) (not (undefined!5221 lt!238380)) (bvslt (x!48845 lt!238380) #b01111111111111111111111111111110) (bvsge (x!48845 lt!238380) #b00000000000000000000000000000000) (bvsge (x!48845 lt!238380) #b00000000000000000000000000000000)))))

(assert (=> b!520352 (=> (not res!318505) (not e!303635))))

(declare-fun b!520348 () Bool)

(assert (=> b!520348 (= e!303634 (Intermediate!4409 true lt!238306 #b00000000000000000000000000000000))))

(declare-fun d!80195 () Bool)

(assert (=> d!80195 e!303631))

(declare-fun c!61223 () Bool)

(assert (=> d!80195 (= c!61223 (and (is-Intermediate!4409 lt!238380) (undefined!5221 lt!238380)))))

(assert (=> d!80195 (= lt!238380 e!303634)))

(declare-fun c!61222 () Bool)

(assert (=> d!80195 (= c!61222 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80195 (= lt!238381 (select (arr!15935 lt!238304) lt!238306))))

(assert (=> d!80195 (validMask!0 mask!3524)))

(assert (=> d!80195 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238306 lt!238303 lt!238304 mask!3524) lt!238380)))

(assert (= (and d!80195 c!61222) b!520348))

(assert (= (and d!80195 (not c!61222)) b!520351))

(assert (= (and b!520351 c!61221) b!520346))

(assert (= (and b!520351 (not c!61221)) b!520349))

(assert (= (and d!80195 c!61223) b!520344))

(assert (= (and d!80195 (not c!61223)) b!520352))

(assert (= (and b!520352 res!318505) b!520347))

(assert (= (and b!520347 (not res!318504)) b!520345))

(assert (= (and b!520345 (not res!318503)) b!520350))

(declare-fun m!501333 () Bool)

(assert (=> d!80195 m!501333))

(assert (=> d!80195 m!501253))

(declare-fun m!501335 () Bool)

(assert (=> b!520345 m!501335))

(assert (=> b!520347 m!501335))

(declare-fun m!501337 () Bool)

(assert (=> b!520349 m!501337))

(assert (=> b!520349 m!501337))

(declare-fun m!501339 () Bool)

(assert (=> b!520349 m!501339))

(assert (=> b!520350 m!501335))

(assert (=> b!520183 d!80195))

(declare-fun d!80199 () Bool)

(declare-fun lt!238420 () SeekEntryResult!4409)

(assert (=> d!80199 (and (or (is-Undefined!4409 lt!238420) (not (is-Found!4409 lt!238420)) (and (bvsge (index!19837 lt!238420) #b00000000000000000000000000000000) (bvslt (index!19837 lt!238420) (size!16299 a!3235)))) (or (is-Undefined!4409 lt!238420) (is-Found!4409 lt!238420) (not (is-MissingZero!4409 lt!238420)) (and (bvsge (index!19836 lt!238420) #b00000000000000000000000000000000) (bvslt (index!19836 lt!238420) (size!16299 a!3235)))) (or (is-Undefined!4409 lt!238420) (is-Found!4409 lt!238420) (is-MissingZero!4409 lt!238420) (not (is-MissingVacant!4409 lt!238420)) (and (bvsge (index!19839 lt!238420) #b00000000000000000000000000000000) (bvslt (index!19839 lt!238420) (size!16299 a!3235)))) (or (is-Undefined!4409 lt!238420) (ite (is-Found!4409 lt!238420) (= (select (arr!15935 a!3235) (index!19837 lt!238420)) (select (arr!15935 a!3235) j!176)) (ite (is-MissingZero!4409 lt!238420) (= (select (arr!15935 a!3235) (index!19836 lt!238420)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4409 lt!238420) (= (select (arr!15935 a!3235) (index!19839 lt!238420)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!303668 () SeekEntryResult!4409)

(assert (=> d!80199 (= lt!238420 e!303668)))

(declare-fun c!61248 () Bool)

(declare-fun lt!238421 () SeekEntryResult!4409)

(assert (=> d!80199 (= c!61248 (and (is-Intermediate!4409 lt!238421) (undefined!5221 lt!238421)))))

(assert (=> d!80199 (= lt!238421 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15935 a!3235) j!176) mask!3524) (select (arr!15935 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80199 (validMask!0 mask!3524)))

(assert (=> d!80199 (= (seekEntryOrOpen!0 (select (arr!15935 a!3235) j!176) a!3235 mask!3524) lt!238420)))

(declare-fun b!520408 () Bool)

(assert (=> b!520408 (= e!303668 Undefined!4409)))

(declare-fun b!520409 () Bool)

(declare-fun e!303669 () SeekEntryResult!4409)

(assert (=> b!520409 (= e!303669 (Found!4409 (index!19838 lt!238421)))))

(declare-fun b!520410 () Bool)

(declare-fun c!61247 () Bool)

(declare-fun lt!238419 () (_ BitVec 64))

(assert (=> b!520410 (= c!61247 (= lt!238419 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303670 () SeekEntryResult!4409)

(assert (=> b!520410 (= e!303669 e!303670)))

(declare-fun b!520411 () Bool)

(assert (=> b!520411 (= e!303668 e!303669)))

(assert (=> b!520411 (= lt!238419 (select (arr!15935 a!3235) (index!19838 lt!238421)))))

(declare-fun c!61246 () Bool)

(assert (=> b!520411 (= c!61246 (= lt!238419 (select (arr!15935 a!3235) j!176)))))

(declare-fun b!520412 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33161 (_ BitVec 32)) SeekEntryResult!4409)

(assert (=> b!520412 (= e!303670 (seekKeyOrZeroReturnVacant!0 (x!48845 lt!238421) (index!19838 lt!238421) (index!19838 lt!238421) (select (arr!15935 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!520413 () Bool)

(assert (=> b!520413 (= e!303670 (MissingZero!4409 (index!19838 lt!238421)))))

(assert (= (and d!80199 c!61248) b!520408))

(assert (= (and d!80199 (not c!61248)) b!520411))

(assert (= (and b!520411 c!61246) b!520409))

(assert (= (and b!520411 (not c!61246)) b!520410))

(assert (= (and b!520410 c!61247) b!520413))

(assert (= (and b!520410 (not c!61247)) b!520412))

(assert (=> d!80199 m!501253))

(declare-fun m!501377 () Bool)

(assert (=> d!80199 m!501377))

(assert (=> d!80199 m!501219))

(assert (=> d!80199 m!501239))

(declare-fun m!501379 () Bool)

(assert (=> d!80199 m!501379))

(assert (=> d!80199 m!501239))

(assert (=> d!80199 m!501219))

(declare-fun m!501381 () Bool)

(assert (=> d!80199 m!501381))

(declare-fun m!501383 () Bool)

(assert (=> d!80199 m!501383))

(declare-fun m!501385 () Bool)

(assert (=> b!520411 m!501385))

(assert (=> b!520412 m!501219))

(declare-fun m!501387 () Bool)

(assert (=> b!520412 m!501387))

(assert (=> b!520185 d!80199))

(declare-fun d!80215 () Bool)

(assert (=> d!80215 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!520174 d!80215))

(declare-fun d!80219 () Bool)

(assert (=> d!80219 (= (validKeyInArray!0 (select (arr!15935 a!3235) j!176)) (and (not (= (select (arr!15935 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15935 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!520184 d!80219))

(declare-fun d!80221 () Bool)

(declare-fun res!318521 () Bool)

(declare-fun e!303678 () Bool)

(assert (=> d!80221 (=> res!318521 e!303678)))

(assert (=> d!80221 (= res!318521 (bvsge #b00000000000000000000000000000000 (size!16299 a!3235)))))

(assert (=> d!80221 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!303678)))

(declare-fun b!520423 () Bool)

(declare-fun e!303677 () Bool)

(declare-fun e!303676 () Bool)

(assert (=> b!520423 (= e!303677 e!303676)))

(declare-fun lt!238428 () (_ BitVec 64))

(assert (=> b!520423 (= lt!238428 (select (arr!15935 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!238429 () Unit!16102)

(assert (=> b!520423 (= lt!238429 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238428 #b00000000000000000000000000000000))))

(assert (=> b!520423 (arrayContainsKey!0 a!3235 lt!238428 #b00000000000000000000000000000000)))

(declare-fun lt!238427 () Unit!16102)

(assert (=> b!520423 (= lt!238427 lt!238429)))

(declare-fun res!318522 () Bool)

(assert (=> b!520423 (= res!318522 (= (seekEntryOrOpen!0 (select (arr!15935 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4409 #b00000000000000000000000000000000)))))

(assert (=> b!520423 (=> (not res!318522) (not e!303676))))

(declare-fun b!520424 () Bool)

(declare-fun call!31798 () Bool)

(assert (=> b!520424 (= e!303677 call!31798)))

(declare-fun b!520425 () Bool)

(assert (=> b!520425 (= e!303676 call!31798)))

(declare-fun bm!31795 () Bool)

(assert (=> bm!31795 (= call!31798 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!520426 () Bool)

(assert (=> b!520426 (= e!303678 e!303677)))

(declare-fun c!61252 () Bool)

(assert (=> b!520426 (= c!61252 (validKeyInArray!0 (select (arr!15935 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!80221 (not res!318521)) b!520426))

(assert (= (and b!520426 c!61252) b!520423))

(assert (= (and b!520426 (not c!61252)) b!520424))

(assert (= (and b!520423 res!318522) b!520425))

(assert (= (or b!520425 b!520424) bm!31795))

(declare-fun m!501395 () Bool)

(assert (=> b!520423 m!501395))

(declare-fun m!501397 () Bool)

(assert (=> b!520423 m!501397))

(declare-fun m!501399 () Bool)

(assert (=> b!520423 m!501399))

(assert (=> b!520423 m!501395))

(declare-fun m!501403 () Bool)

(assert (=> b!520423 m!501403))

(declare-fun m!501405 () Bool)

(assert (=> bm!31795 m!501405))

(assert (=> b!520426 m!501395))

(assert (=> b!520426 m!501395))

(declare-fun m!501407 () Bool)

(assert (=> b!520426 m!501407))

(assert (=> b!520186 d!80221))

(declare-fun d!80225 () Bool)

(assert (=> d!80225 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47312 d!80225))

(declare-fun d!80233 () Bool)

(assert (=> d!80233 (= (array_inv!11709 a!3235) (bvsge (size!16299 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47312 d!80233))

(declare-fun d!80235 () Bool)

(declare-fun e!303695 () Bool)

(assert (=> d!80235 e!303695))

(declare-fun res!318531 () Bool)

(assert (=> d!80235 (=> (not res!318531) (not e!303695))))

(assert (=> d!80235 (= res!318531 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16299 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16299 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16299 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16299 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16299 a!3235))))))

(declare-fun lt!238443 () Unit!16102)

(declare-fun choose!47 (array!33161 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16102)

(assert (=> d!80235 (= lt!238443 (choose!47 a!3235 i!1204 k!2280 j!176 lt!238299 #b00000000000000000000000000000000 (index!19838 lt!238302) (x!48845 lt!238302) mask!3524))))

(assert (=> d!80235 (validMask!0 mask!3524)))

(assert (=> d!80235 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238299 #b00000000000000000000000000000000 (index!19838 lt!238302) (x!48845 lt!238302) mask!3524) lt!238443)))

(declare-fun b!520453 () Bool)

(assert (=> b!520453 (= e!303695 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238299 (select (store (arr!15935 a!3235) i!1204 k!2280) j!176) (array!33162 (store (arr!15935 a!3235) i!1204 k!2280) (size!16299 a!3235)) mask!3524) (Intermediate!4409 false (index!19838 lt!238302) (x!48845 lt!238302))))))

(assert (= (and d!80235 res!318531) b!520453))

(declare-fun m!501445 () Bool)

(assert (=> d!80235 m!501445))

(assert (=> d!80235 m!501253))

(assert (=> b!520453 m!501231))

(assert (=> b!520453 m!501235))

(assert (=> b!520453 m!501235))

(declare-fun m!501447 () Bool)

(assert (=> b!520453 m!501447))

(assert (=> b!520175 d!80235))

(declare-fun b!520454 () Bool)

(declare-fun e!303696 () Bool)

(declare-fun lt!238444 () SeekEntryResult!4409)

(assert (=> b!520454 (= e!303696 (bvsge (x!48845 lt!238444) #b01111111111111111111111111111110))))

(declare-fun b!520455 () Bool)

(assert (=> b!520455 (and (bvsge (index!19838 lt!238444) #b00000000000000000000000000000000) (bvslt (index!19838 lt!238444) (size!16299 lt!238304)))))

(declare-fun res!318532 () Bool)

(assert (=> b!520455 (= res!318532 (= (select (arr!15935 lt!238304) (index!19838 lt!238444)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303697 () Bool)

(assert (=> b!520455 (=> res!318532 e!303697)))

(declare-fun b!520456 () Bool)

(declare-fun e!303698 () SeekEntryResult!4409)

(assert (=> b!520456 (= e!303698 (Intermediate!4409 false lt!238299 #b00000000000000000000000000000000))))

(declare-fun b!520457 () Bool)

(assert (=> b!520457 (and (bvsge (index!19838 lt!238444) #b00000000000000000000000000000000) (bvslt (index!19838 lt!238444) (size!16299 lt!238304)))))

(declare-fun res!318533 () Bool)

(assert (=> b!520457 (= res!318533 (= (select (arr!15935 lt!238304) (index!19838 lt!238444)) lt!238303))))

(assert (=> b!520457 (=> res!318533 e!303697)))

(declare-fun e!303700 () Bool)

(assert (=> b!520457 (= e!303700 e!303697)))

(declare-fun b!520459 () Bool)

(assert (=> b!520459 (= e!303698 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238299 #b00000000000000000000000000000000 mask!3524) lt!238303 lt!238304 mask!3524))))

(declare-fun b!520460 () Bool)

(assert (=> b!520460 (and (bvsge (index!19838 lt!238444) #b00000000000000000000000000000000) (bvslt (index!19838 lt!238444) (size!16299 lt!238304)))))

(assert (=> b!520460 (= e!303697 (= (select (arr!15935 lt!238304) (index!19838 lt!238444)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!520461 () Bool)

(declare-fun e!303699 () SeekEntryResult!4409)

(assert (=> b!520461 (= e!303699 e!303698)))

(declare-fun c!61262 () Bool)

(declare-fun lt!238445 () (_ BitVec 64))

(assert (=> b!520461 (= c!61262 (or (= lt!238445 lt!238303) (= (bvadd lt!238445 lt!238445) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520462 () Bool)

(assert (=> b!520462 (= e!303696 e!303700)))

(declare-fun res!318534 () Bool)

(assert (=> b!520462 (= res!318534 (and (is-Intermediate!4409 lt!238444) (not (undefined!5221 lt!238444)) (bvslt (x!48845 lt!238444) #b01111111111111111111111111111110) (bvsge (x!48845 lt!238444) #b00000000000000000000000000000000) (bvsge (x!48845 lt!238444) #b00000000000000000000000000000000)))))

(assert (=> b!520462 (=> (not res!318534) (not e!303700))))

(declare-fun b!520458 () Bool)

(assert (=> b!520458 (= e!303699 (Intermediate!4409 true lt!238299 #b00000000000000000000000000000000))))

(declare-fun d!80245 () Bool)

(assert (=> d!80245 e!303696))

(declare-fun c!61264 () Bool)

(assert (=> d!80245 (= c!61264 (and (is-Intermediate!4409 lt!238444) (undefined!5221 lt!238444)))))

(assert (=> d!80245 (= lt!238444 e!303699)))

(declare-fun c!61263 () Bool)

(assert (=> d!80245 (= c!61263 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80245 (= lt!238445 (select (arr!15935 lt!238304) lt!238299))))

(assert (=> d!80245 (validMask!0 mask!3524)))

(assert (=> d!80245 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238299 lt!238303 lt!238304 mask!3524) lt!238444)))

(assert (= (and d!80245 c!61263) b!520458))

(assert (= (and d!80245 (not c!61263)) b!520461))

(assert (= (and b!520461 c!61262) b!520456))

(assert (= (and b!520461 (not c!61262)) b!520459))

(assert (= (and d!80245 c!61264) b!520454))

(assert (= (and d!80245 (not c!61264)) b!520462))

(assert (= (and b!520462 res!318534) b!520457))

(assert (= (and b!520457 (not res!318533)) b!520455))

(assert (= (and b!520455 (not res!318532)) b!520460))

(declare-fun m!501449 () Bool)

(assert (=> d!80245 m!501449))

(assert (=> d!80245 m!501253))

(declare-fun m!501451 () Bool)

(assert (=> b!520455 m!501451))

(assert (=> b!520457 m!501451))

(assert (=> b!520459 m!501291))

(assert (=> b!520459 m!501291))

(declare-fun m!501453 () Bool)

(assert (=> b!520459 m!501453))

(assert (=> b!520460 m!501451))

(assert (=> b!520175 d!80245))

(declare-fun d!80247 () Bool)

(declare-fun res!318545 () Bool)

(declare-fun e!303713 () Bool)

(assert (=> d!80247 (=> res!318545 e!303713)))

(assert (=> d!80247 (= res!318545 (= (select (arr!15935 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80247 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!303713)))

(declare-fun b!520477 () Bool)

(declare-fun e!303714 () Bool)

(assert (=> b!520477 (= e!303713 e!303714)))

(declare-fun res!318546 () Bool)

(assert (=> b!520477 (=> (not res!318546) (not e!303714))))

(assert (=> b!520477 (= res!318546 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16299 a!3235)))))

(declare-fun b!520478 () Bool)

(assert (=> b!520478 (= e!303714 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80247 (not res!318545)) b!520477))

(assert (= (and b!520477 res!318546) b!520478))

(assert (=> d!80247 m!501395))

(declare-fun m!501455 () Bool)

(assert (=> b!520478 m!501455))

(assert (=> b!520177 d!80247))

(declare-fun b!520504 () Bool)

(declare-fun e!303737 () Bool)

(declare-fun contains!2768 (List!10146 (_ BitVec 64)) Bool)

(assert (=> b!520504 (= e!303737 (contains!2768 Nil!10143 (select (arr!15935 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!520505 () Bool)

(declare-fun e!303738 () Bool)

(declare-fun call!31805 () Bool)

(assert (=> b!520505 (= e!303738 call!31805)))

(declare-fun b!520507 () Bool)

(assert (=> b!520507 (= e!303738 call!31805)))

(declare-fun bm!31802 () Bool)

(declare-fun c!61271 () Bool)

(assert (=> bm!31802 (= call!31805 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61271 (Cons!10142 (select (arr!15935 a!3235) #b00000000000000000000000000000000) Nil!10143) Nil!10143)))))

(declare-fun b!520508 () Bool)

(declare-fun e!303739 () Bool)

(declare-fun e!303736 () Bool)

(assert (=> b!520508 (= e!303739 e!303736)))

(declare-fun res!318564 () Bool)

(assert (=> b!520508 (=> (not res!318564) (not e!303736))))

(assert (=> b!520508 (= res!318564 (not e!303737))))

(declare-fun res!318566 () Bool)

(assert (=> b!520508 (=> (not res!318566) (not e!303737))))

(assert (=> b!520508 (= res!318566 (validKeyInArray!0 (select (arr!15935 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!520506 () Bool)

(assert (=> b!520506 (= e!303736 e!303738)))

(assert (=> b!520506 (= c!61271 (validKeyInArray!0 (select (arr!15935 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80249 () Bool)

(declare-fun res!318565 () Bool)

(assert (=> d!80249 (=> res!318565 e!303739)))

(assert (=> d!80249 (= res!318565 (bvsge #b00000000000000000000000000000000 (size!16299 a!3235)))))

(assert (=> d!80249 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10143) e!303739)))

(assert (= (and d!80249 (not res!318565)) b!520508))

(assert (= (and b!520508 res!318566) b!520504))

(assert (= (and b!520508 res!318564) b!520506))

(assert (= (and b!520506 c!61271) b!520505))

(assert (= (and b!520506 (not c!61271)) b!520507))

(assert (= (or b!520505 b!520507) bm!31802))

(assert (=> b!520504 m!501395))

(assert (=> b!520504 m!501395))

(declare-fun m!501475 () Bool)

(assert (=> b!520504 m!501475))

(assert (=> bm!31802 m!501395))

(declare-fun m!501477 () Bool)

(assert (=> bm!31802 m!501477))

(assert (=> b!520508 m!501395))

(assert (=> b!520508 m!501395))

(assert (=> b!520508 m!501407))

(assert (=> b!520506 m!501395))

(assert (=> b!520506 m!501395))

(assert (=> b!520506 m!501407))

(assert (=> b!520182 d!80249))

(declare-fun d!80255 () Bool)

(declare-fun lt!238450 () SeekEntryResult!4409)

(assert (=> d!80255 (and (or (is-Undefined!4409 lt!238450) (not (is-Found!4409 lt!238450)) (and (bvsge (index!19837 lt!238450) #b00000000000000000000000000000000) (bvslt (index!19837 lt!238450) (size!16299 a!3235)))) (or (is-Undefined!4409 lt!238450) (is-Found!4409 lt!238450) (not (is-MissingZero!4409 lt!238450)) (and (bvsge (index!19836 lt!238450) #b00000000000000000000000000000000) (bvslt (index!19836 lt!238450) (size!16299 a!3235)))) (or (is-Undefined!4409 lt!238450) (is-Found!4409 lt!238450) (is-MissingZero!4409 lt!238450) (not (is-MissingVacant!4409 lt!238450)) (and (bvsge (index!19839 lt!238450) #b00000000000000000000000000000000) (bvslt (index!19839 lt!238450) (size!16299 a!3235)))) (or (is-Undefined!4409 lt!238450) (ite (is-Found!4409 lt!238450) (= (select (arr!15935 a!3235) (index!19837 lt!238450)) k!2280) (ite (is-MissingZero!4409 lt!238450) (= (select (arr!15935 a!3235) (index!19836 lt!238450)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4409 lt!238450) (= (select (arr!15935 a!3235) (index!19839 lt!238450)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!303740 () SeekEntryResult!4409)

(assert (=> d!80255 (= lt!238450 e!303740)))

(declare-fun c!61274 () Bool)

(declare-fun lt!238451 () SeekEntryResult!4409)

(assert (=> d!80255 (= c!61274 (and (is-Intermediate!4409 lt!238451) (undefined!5221 lt!238451)))))

(assert (=> d!80255 (= lt!238451 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80255 (validMask!0 mask!3524)))

(assert (=> d!80255 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!238450)))

(declare-fun b!520509 () Bool)

(assert (=> b!520509 (= e!303740 Undefined!4409)))

(declare-fun b!520510 () Bool)

(declare-fun e!303741 () SeekEntryResult!4409)

(assert (=> b!520510 (= e!303741 (Found!4409 (index!19838 lt!238451)))))

(declare-fun b!520511 () Bool)

(declare-fun c!61273 () Bool)

(declare-fun lt!238449 () (_ BitVec 64))

(assert (=> b!520511 (= c!61273 (= lt!238449 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303742 () SeekEntryResult!4409)

(assert (=> b!520511 (= e!303741 e!303742)))

(declare-fun b!520512 () Bool)

(assert (=> b!520512 (= e!303740 e!303741)))

(assert (=> b!520512 (= lt!238449 (select (arr!15935 a!3235) (index!19838 lt!238451)))))

(declare-fun c!61272 () Bool)

(assert (=> b!520512 (= c!61272 (= lt!238449 k!2280))))

(declare-fun b!520513 () Bool)

(assert (=> b!520513 (= e!303742 (seekKeyOrZeroReturnVacant!0 (x!48845 lt!238451) (index!19838 lt!238451) (index!19838 lt!238451) k!2280 a!3235 mask!3524))))

(declare-fun b!520514 () Bool)

(assert (=> b!520514 (= e!303742 (MissingZero!4409 (index!19838 lt!238451)))))

(assert (= (and d!80255 c!61274) b!520509))

(assert (= (and d!80255 (not c!61274)) b!520512))

(assert (= (and b!520512 c!61272) b!520510))

(assert (= (and b!520512 (not c!61272)) b!520511))

(assert (= (and b!520511 c!61273) b!520514))

(assert (= (and b!520511 (not c!61273)) b!520513))

(assert (=> d!80255 m!501253))

(declare-fun m!501479 () Bool)

(assert (=> d!80255 m!501479))

(declare-fun m!501481 () Bool)

(assert (=> d!80255 m!501481))

(declare-fun m!501483 () Bool)

(assert (=> d!80255 m!501483))

(assert (=> d!80255 m!501481))

(declare-fun m!501485 () Bool)

(assert (=> d!80255 m!501485))

(declare-fun m!501487 () Bool)

(assert (=> d!80255 m!501487))

(declare-fun m!501489 () Bool)

(assert (=> b!520512 m!501489))

(declare-fun m!501491 () Bool)

(assert (=> b!520513 m!501491))

(assert (=> b!520176 d!80255))

(push 1)

(assert (not bm!31790))

(assert (not d!80235))

(assert (not d!80177))

(assert (not d!80195))

(assert (not b!520423))

(assert (not b!520343))

(assert (not b!520453))

(assert (not b!520295))

(assert (not b!520340))

(assert (not b!520504))

(assert (not b!520349))

(assert (not b!520506))

(assert (not b!520478))

(assert (not b!520508))

(assert (not bm!31802))

(assert (not d!80245))

(assert (not d!80199))

(assert (not b!520513))

(assert (not d!80255))

(assert (not bm!31795))

(assert (not b!520426))

(assert (not b!520412))

(assert (not b!520459))

(assert (not d!80171))

(check-sat)

