; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29076 () Bool)

(assert start!29076)

(declare-fun b!295054 () Bool)

(declare-fun res!155118 () Bool)

(declare-fun e!186511 () Bool)

(assert (=> b!295054 (=> (not res!155118) (not e!186511))))

(declare-datatypes ((array!14921 0))(
  ( (array!14922 (arr!7072 (Array (_ BitVec 32) (_ BitVec 64))) (size!7424 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14921)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14921 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295054 (= res!155118 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295055 () Bool)

(declare-fun e!186512 () Bool)

(declare-datatypes ((SeekEntryResult!2232 0))(
  ( (MissingZero!2232 (index!11098 (_ BitVec 32))) (Found!2232 (index!11099 (_ BitVec 32))) (Intermediate!2232 (undefined!3044 Bool) (index!11100 (_ BitVec 32)) (x!29283 (_ BitVec 32))) (Undefined!2232) (MissingVacant!2232 (index!11101 (_ BitVec 32))) )
))
(declare-fun lt!146339 () SeekEntryResult!2232)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295055 (= e!186512 (not (= (index!11100 lt!146339) i!1256)))))

(assert (=> b!295055 (= (select (arr!7072 a!3312) (index!11100 lt!146339)) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!295056 () Bool)

(declare-fun e!186508 () Bool)

(assert (=> b!295056 (= e!186508 e!186512)))

(declare-fun res!155122 () Bool)

(assert (=> b!295056 (=> (not res!155122) (not e!186512))))

(declare-fun lt!146338 () Bool)

(assert (=> b!295056 (= res!155122 (and (or lt!146338 (not (undefined!3044 lt!146339))) (or lt!146338 (not (= (select (arr!7072 a!3312) (index!11100 lt!146339)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146338 (not (= (select (arr!7072 a!3312) (index!11100 lt!146339)) k!2524))) (not lt!146338)))))

(assert (=> b!295056 (= lt!146338 (not (is-Intermediate!2232 lt!146339)))))

(declare-fun b!295057 () Bool)

(declare-fun res!155123 () Bool)

(declare-fun e!186510 () Bool)

(assert (=> b!295057 (=> (not res!155123) (not e!186510))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14921 (_ BitVec 32)) Bool)

(assert (=> b!295057 (= res!155123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!155119 () Bool)

(assert (=> start!29076 (=> (not res!155119) (not e!186511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29076 (= res!155119 (validMask!0 mask!3809))))

(assert (=> start!29076 e!186511))

(assert (=> start!29076 true))

(declare-fun array_inv!5026 (array!14921) Bool)

(assert (=> start!29076 (array_inv!5026 a!3312)))

(declare-fun b!295058 () Bool)

(assert (=> b!295058 (= e!186511 e!186510)))

(declare-fun res!155124 () Bool)

(assert (=> b!295058 (=> (not res!155124) (not e!186510))))

(declare-fun lt!146335 () Bool)

(declare-fun lt!146334 () SeekEntryResult!2232)

(assert (=> b!295058 (= res!155124 (or lt!146335 (= lt!146334 (MissingVacant!2232 i!1256))))))

(assert (=> b!295058 (= lt!146335 (= lt!146334 (MissingZero!2232 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14921 (_ BitVec 32)) SeekEntryResult!2232)

(assert (=> b!295058 (= lt!146334 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295059 () Bool)

(declare-fun res!155117 () Bool)

(assert (=> b!295059 (=> (not res!155117) (not e!186511))))

(assert (=> b!295059 (= res!155117 (and (= (size!7424 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7424 a!3312))))))

(declare-fun b!295060 () Bool)

(assert (=> b!295060 (= e!186510 e!186508)))

(declare-fun res!155120 () Bool)

(assert (=> b!295060 (=> (not res!155120) (not e!186508))))

(assert (=> b!295060 (= res!155120 lt!146335)))

(declare-fun lt!146336 () SeekEntryResult!2232)

(declare-fun lt!146337 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14921 (_ BitVec 32)) SeekEntryResult!2232)

(assert (=> b!295060 (= lt!146336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146337 k!2524 (array!14922 (store (arr!7072 a!3312) i!1256 k!2524) (size!7424 a!3312)) mask!3809))))

(assert (=> b!295060 (= lt!146339 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146337 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295060 (= lt!146337 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295061 () Bool)

(declare-fun res!155121 () Bool)

(assert (=> b!295061 (=> (not res!155121) (not e!186511))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295061 (= res!155121 (validKeyInArray!0 k!2524))))

(assert (= (and start!29076 res!155119) b!295059))

(assert (= (and b!295059 res!155117) b!295061))

(assert (= (and b!295061 res!155121) b!295054))

(assert (= (and b!295054 res!155118) b!295058))

(assert (= (and b!295058 res!155124) b!295057))

(assert (= (and b!295057 res!155123) b!295060))

(assert (= (and b!295060 res!155120) b!295056))

(assert (= (and b!295056 res!155122) b!295055))

(declare-fun m!308297 () Bool)

(assert (=> start!29076 m!308297))

(declare-fun m!308299 () Bool)

(assert (=> start!29076 m!308299))

(declare-fun m!308301 () Bool)

(assert (=> b!295058 m!308301))

(declare-fun m!308303 () Bool)

(assert (=> b!295061 m!308303))

(declare-fun m!308305 () Bool)

(assert (=> b!295055 m!308305))

(declare-fun m!308307 () Bool)

(assert (=> b!295057 m!308307))

(declare-fun m!308309 () Bool)

(assert (=> b!295054 m!308309))

(declare-fun m!308311 () Bool)

(assert (=> b!295060 m!308311))

(declare-fun m!308313 () Bool)

(assert (=> b!295060 m!308313))

(declare-fun m!308315 () Bool)

(assert (=> b!295060 m!308315))

(declare-fun m!308317 () Bool)

(assert (=> b!295060 m!308317))

(assert (=> b!295056 m!308305))

(push 1)

(assert (not b!295057))

(assert (not start!29076))

(assert (not b!295054))

(assert (not b!295061))

(assert (not b!295060))

(assert (not b!295058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66845 () Bool)

(declare-fun lt!146409 () SeekEntryResult!2232)

(assert (=> d!66845 (and (or (is-Undefined!2232 lt!146409) (not (is-Found!2232 lt!146409)) (and (bvsge (index!11099 lt!146409) #b00000000000000000000000000000000) (bvslt (index!11099 lt!146409) (size!7424 a!3312)))) (or (is-Undefined!2232 lt!146409) (is-Found!2232 lt!146409) (not (is-MissingZero!2232 lt!146409)) (and (bvsge (index!11098 lt!146409) #b00000000000000000000000000000000) (bvslt (index!11098 lt!146409) (size!7424 a!3312)))) (or (is-Undefined!2232 lt!146409) (is-Found!2232 lt!146409) (is-MissingZero!2232 lt!146409) (not (is-MissingVacant!2232 lt!146409)) (and (bvsge (index!11101 lt!146409) #b00000000000000000000000000000000) (bvslt (index!11101 lt!146409) (size!7424 a!3312)))) (or (is-Undefined!2232 lt!146409) (ite (is-Found!2232 lt!146409) (= (select (arr!7072 a!3312) (index!11099 lt!146409)) k!2524) (ite (is-MissingZero!2232 lt!146409) (= (select (arr!7072 a!3312) (index!11098 lt!146409)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2232 lt!146409) (= (select (arr!7072 a!3312) (index!11101 lt!146409)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!186595 () SeekEntryResult!2232)

(assert (=> d!66845 (= lt!146409 e!186595)))

(declare-fun c!47570 () Bool)

(declare-fun lt!146410 () SeekEntryResult!2232)

(assert (=> d!66845 (= c!47570 (and (is-Intermediate!2232 lt!146410) (undefined!3044 lt!146410)))))

(assert (=> d!66845 (= lt!146410 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66845 (validMask!0 mask!3809)))

(assert (=> d!66845 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!146409)))

(declare-fun e!186593 () SeekEntryResult!2232)

(declare-fun b!295188 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14921 (_ BitVec 32)) SeekEntryResult!2232)

(assert (=> b!295188 (= e!186593 (seekKeyOrZeroReturnVacant!0 (x!29283 lt!146410) (index!11100 lt!146410) (index!11100 lt!146410) k!2524 a!3312 mask!3809))))

(declare-fun b!295189 () Bool)

(assert (=> b!295189 (= e!186595 Undefined!2232)))

(declare-fun b!295190 () Bool)

(assert (=> b!295190 (= e!186593 (MissingZero!2232 (index!11100 lt!146410)))))

(declare-fun b!295191 () Bool)

(declare-fun e!186594 () SeekEntryResult!2232)

(assert (=> b!295191 (= e!186595 e!186594)))

(declare-fun lt!146408 () (_ BitVec 64))

(assert (=> b!295191 (= lt!146408 (select (arr!7072 a!3312) (index!11100 lt!146410)))))

(declare-fun c!47571 () Bool)

(assert (=> b!295191 (= c!47571 (= lt!146408 k!2524))))

(declare-fun b!295192 () Bool)

(assert (=> b!295192 (= e!186594 (Found!2232 (index!11100 lt!146410)))))

(declare-fun b!295193 () Bool)

(declare-fun c!47569 () Bool)

(assert (=> b!295193 (= c!47569 (= lt!146408 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!295193 (= e!186594 e!186593)))

(assert (= (and d!66845 c!47570) b!295189))

(assert (= (and d!66845 (not c!47570)) b!295191))

(assert (= (and b!295191 c!47571) b!295192))

(assert (= (and b!295191 (not c!47571)) b!295193))

(assert (= (and b!295193 c!47569) b!295190))

(assert (= (and b!295193 (not c!47569)) b!295188))

(assert (=> d!66845 m!308297))

(declare-fun m!308403 () Bool)

(assert (=> d!66845 m!308403))

(declare-fun m!308405 () Bool)

(assert (=> d!66845 m!308405))

(assert (=> d!66845 m!308317))

(declare-fun m!308407 () Bool)

(assert (=> d!66845 m!308407))

(assert (=> d!66845 m!308317))

(declare-fun m!308409 () Bool)

(assert (=> d!66845 m!308409))

(declare-fun m!308411 () Bool)

(assert (=> b!295188 m!308411))

(declare-fun m!308413 () Bool)

(assert (=> b!295191 m!308413))

(assert (=> b!295058 d!66845))

(declare-fun d!66857 () Bool)

(declare-fun res!155208 () Bool)

(declare-fun e!186600 () Bool)

(assert (=> d!66857 (=> res!155208 e!186600)))

(assert (=> d!66857 (= res!155208 (= (select (arr!7072 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66857 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!186600)))

(declare-fun b!295198 () Bool)

(declare-fun e!186601 () Bool)

(assert (=> b!295198 (= e!186600 e!186601)))

(declare-fun res!155209 () Bool)

(assert (=> b!295198 (=> (not res!155209) (not e!186601))))

(assert (=> b!295198 (= res!155209 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7424 a!3312)))))

(declare-fun b!295199 () Bool)

(assert (=> b!295199 (= e!186601 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66857 (not res!155208)) b!295198))

(assert (= (and b!295198 res!155209) b!295199))

(declare-fun m!308415 () Bool)

(assert (=> d!66857 m!308415))

(declare-fun m!308417 () Bool)

(assert (=> b!295199 m!308417))

(assert (=> b!295054 d!66857))

(declare-fun d!66859 () Bool)

(assert (=> d!66859 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!295061 d!66859))

(declare-fun d!66861 () Bool)

(assert (=> d!66861 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29076 d!66861))

(declare-fun d!66867 () Bool)

(assert (=> d!66867 (= (array_inv!5026 a!3312) (bvsge (size!7424 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29076 d!66867))

(declare-fun b!295262 () Bool)

(declare-fun lt!146443 () SeekEntryResult!2232)

(assert (=> b!295262 (and (bvsge (index!11100 lt!146443) #b00000000000000000000000000000000) (bvslt (index!11100 lt!146443) (size!7424 (array!14922 (store (arr!7072 a!3312) i!1256 k!2524) (size!7424 a!3312)))))))

(declare-fun res!155217 () Bool)

(assert (=> b!295262 (= res!155217 (= (select (arr!7072 (array!14922 (store (arr!7072 a!3312) i!1256 k!2524) (size!7424 a!3312))) (index!11100 lt!146443)) k!2524))))

(declare-fun e!186636 () Bool)

(assert (=> b!295262 (=> res!155217 e!186636)))

(declare-fun e!186638 () Bool)

(assert (=> b!295262 (= e!186638 e!186636)))

(declare-fun b!295263 () Bool)

(declare-fun e!186634 () Bool)

(assert (=> b!295263 (= e!186634 e!186638)))

(declare-fun res!155218 () Bool)

(assert (=> b!295263 (= res!155218 (and (is-Intermediate!2232 lt!146443) (not (undefined!3044 lt!146443)) (bvslt (x!29283 lt!146443) #b01111111111111111111111111111110) (bvsge (x!29283 lt!146443) #b00000000000000000000000000000000) (bvsge (x!29283 lt!146443) #b00000000000000000000000000000000)))))

(assert (=> b!295263 (=> (not res!155218) (not e!186638))))

(declare-fun b!295264 () Bool)

(assert (=> b!295264 (and (bvsge (index!11100 lt!146443) #b00000000000000000000000000000000) (bvslt (index!11100 lt!146443) (size!7424 (array!14922 (store (arr!7072 a!3312) i!1256 k!2524) (size!7424 a!3312)))))))

(declare-fun res!155216 () Bool)

(assert (=> b!295264 (= res!155216 (= (select (arr!7072 (array!14922 (store (arr!7072 a!3312) i!1256 k!2524) (size!7424 a!3312))) (index!11100 lt!146443)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!295264 (=> res!155216 e!186636)))

(declare-fun b!295265 () Bool)

(declare-fun e!186637 () SeekEntryResult!2232)

(declare-fun e!186635 () SeekEntryResult!2232)

(assert (=> b!295265 (= e!186637 e!186635)))

(declare-fun c!47602 () Bool)

(declare-fun lt!146444 () (_ BitVec 64))

(assert (=> b!295265 (= c!47602 (or (= lt!146444 k!2524) (= (bvadd lt!146444 lt!146444) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!66869 () Bool)

(assert (=> d!66869 e!186634))

(declare-fun c!47601 () Bool)

(assert (=> d!66869 (= c!47601 (and (is-Intermediate!2232 lt!146443) (undefined!3044 lt!146443)))))

(assert (=> d!66869 (= lt!146443 e!186637)))

(declare-fun c!47600 () Bool)

(assert (=> d!66869 (= c!47600 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66869 (= lt!146444 (select (arr!7072 (array!14922 (store (arr!7072 a!3312) i!1256 k!2524) (size!7424 a!3312))) lt!146337))))

(assert (=> d!66869 (validMask!0 mask!3809)))

(assert (=> d!66869 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146337 k!2524 (array!14922 (store (arr!7072 a!3312) i!1256 k!2524) (size!7424 a!3312)) mask!3809) lt!146443)))

(declare-fun b!295266 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295266 (= e!186635 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146337 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14922 (store (arr!7072 a!3312) i!1256 k!2524) (size!7424 a!3312)) mask!3809))))

(declare-fun b!295267 () Bool)

(assert (=> b!295267 (= e!186634 (bvsge (x!29283 lt!146443) #b01111111111111111111111111111110))))

(declare-fun b!295268 () Bool)

(assert (=> b!295268 (and (bvsge (index!11100 lt!146443) #b00000000000000000000000000000000) (bvslt (index!11100 lt!146443) (size!7424 (array!14922 (store (arr!7072 a!3312) i!1256 k!2524) (size!7424 a!3312)))))))

(assert (=> b!295268 (= e!186636 (= (select (arr!7072 (array!14922 (store (arr!7072 a!3312) i!1256 k!2524) (size!7424 a!3312))) (index!11100 lt!146443)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!295269 () Bool)

(assert (=> b!295269 (= e!186637 (Intermediate!2232 true lt!146337 #b00000000000000000000000000000000))))

(declare-fun b!295270 () Bool)

(assert (=> b!295270 (= e!186635 (Intermediate!2232 false lt!146337 #b00000000000000000000000000000000))))

(assert (= (and d!66869 c!47600) b!295269))

(assert (= (and d!66869 (not c!47600)) b!295265))

(assert (= (and b!295265 c!47602) b!295270))

(assert (= (and b!295265 (not c!47602)) b!295266))

(assert (= (and d!66869 c!47601) b!295267))

(assert (= (and d!66869 (not c!47601)) b!295263))

(assert (= (and b!295263 res!155218) b!295262))

(assert (= (and b!295262 (not res!155217)) b!295264))

(assert (= (and b!295264 (not res!155216)) b!295268))

(declare-fun m!308443 () Bool)

(assert (=> b!295268 m!308443))

(declare-fun m!308445 () Bool)

(assert (=> d!66869 m!308445))

(assert (=> d!66869 m!308297))

(assert (=> b!295264 m!308443))

(declare-fun m!308447 () Bool)

(assert (=> b!295266 m!308447))

(assert (=> b!295266 m!308447))

(declare-fun m!308449 () Bool)

(assert (=> b!295266 m!308449))

(assert (=> b!295262 m!308443))

(assert (=> b!295060 d!66869))

(declare-fun b!295281 () Bool)

(declare-fun lt!146445 () SeekEntryResult!2232)

(assert (=> b!295281 (and (bvsge (index!11100 lt!146445) #b00000000000000000000000000000000) (bvslt (index!11100 lt!146445) (size!7424 a!3312)))))

(declare-fun res!155226 () Bool)

(assert (=> b!295281 (= res!155226 (= (select (arr!7072 a!3312) (index!11100 lt!146445)) k!2524))))

(declare-fun e!186647 () Bool)

(assert (=> b!295281 (=> res!155226 e!186647)))

(declare-fun e!186649 () Bool)

(assert (=> b!295281 (= e!186649 e!186647)))

(declare-fun b!295282 () Bool)

(declare-fun e!186645 () Bool)

(assert (=> b!295282 (= e!186645 e!186649)))

(declare-fun res!155227 () Bool)

(assert (=> b!295282 (= res!155227 (and (is-Intermediate!2232 lt!146445) (not (undefined!3044 lt!146445)) (bvslt (x!29283 lt!146445) #b01111111111111111111111111111110) (bvsge (x!29283 lt!146445) #b00000000000000000000000000000000) (bvsge (x!29283 lt!146445) #b00000000000000000000000000000000)))))

(assert (=> b!295282 (=> (not res!155227) (not e!186649))))

(declare-fun b!295283 () Bool)

(assert (=> b!295283 (and (bvsge (index!11100 lt!146445) #b00000000000000000000000000000000) (bvslt (index!11100 lt!146445) (size!7424 a!3312)))))

(declare-fun res!155225 () Bool)

(assert (=> b!295283 (= res!155225 (= (select (arr!7072 a!3312) (index!11100 lt!146445)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!295283 (=> res!155225 e!186647)))

(declare-fun b!295284 () Bool)

(declare-fun e!186648 () SeekEntryResult!2232)

(declare-fun e!186646 () SeekEntryResult!2232)

(assert (=> b!295284 (= e!186648 e!186646)))

(declare-fun c!47607 () Bool)

(declare-fun lt!146446 () (_ BitVec 64))

(assert (=> b!295284 (= c!47607 (or (= lt!146446 k!2524) (= (bvadd lt!146446 lt!146446) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!66877 () Bool)

(assert (=> d!66877 e!186645))

(declare-fun c!47606 () Bool)

(assert (=> d!66877 (= c!47606 (and (is-Intermediate!2232 lt!146445) (undefined!3044 lt!146445)))))

(assert (=> d!66877 (= lt!146445 e!186648)))

(declare-fun c!47605 () Bool)

(assert (=> d!66877 (= c!47605 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66877 (= lt!146446 (select (arr!7072 a!3312) lt!146337))))

(assert (=> d!66877 (validMask!0 mask!3809)))

(assert (=> d!66877 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146337 k!2524 a!3312 mask!3809) lt!146445)))

(declare-fun b!295285 () Bool)

(assert (=> b!295285 (= e!186646 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146337 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!295286 () Bool)

(assert (=> b!295286 (= e!186645 (bvsge (x!29283 lt!146445) #b01111111111111111111111111111110))))

(declare-fun b!295287 () Bool)

(assert (=> b!295287 (and (bvsge (index!11100 lt!146445) #b00000000000000000000000000000000) (bvslt (index!11100 lt!146445) (size!7424 a!3312)))))

(assert (=> b!295287 (= e!186647 (= (select (arr!7072 a!3312) (index!11100 lt!146445)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!295288 () Bool)

(assert (=> b!295288 (= e!186648 (Intermediate!2232 true lt!146337 #b00000000000000000000000000000000))))

(declare-fun b!295289 () Bool)

(assert (=> b!295289 (= e!186646 (Intermediate!2232 false lt!146337 #b00000000000000000000000000000000))))

(assert (= (and d!66877 c!47605) b!295288))

(assert (= (and d!66877 (not c!47605)) b!295284))

(assert (= (and b!295284 c!47607) b!295289))

(assert (= (and b!295284 (not c!47607)) b!295285))

(assert (= (and d!66877 c!47606) b!295286))

(assert (= (and d!66877 (not c!47606)) b!295282))

(assert (= (and b!295282 res!155227) b!295281))

(assert (= (and b!295281 (not res!155226)) b!295283))

(assert (= (and b!295283 (not res!155225)) b!295287))

(declare-fun m!308451 () Bool)

(assert (=> b!295287 m!308451))

(declare-fun m!308453 () Bool)

(assert (=> d!66877 m!308453))

(assert (=> d!66877 m!308297))

(assert (=> b!295283 m!308451))

(assert (=> b!295285 m!308447))

(assert (=> b!295285 m!308447))

(declare-fun m!308455 () Bool)

(assert (=> b!295285 m!308455))

(assert (=> b!295281 m!308451))

(assert (=> b!295060 d!66877))

(declare-fun d!66881 () Bool)

(declare-fun lt!146456 () (_ BitVec 32))

(declare-fun lt!146455 () (_ BitVec 32))

(assert (=> d!66881 (= lt!146456 (bvmul (bvxor lt!146455 (bvlshr lt!146455 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66881 (= lt!146455 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66881 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!155232 (let ((h!5310 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29290 (bvmul (bvxor h!5310 (bvlshr h!5310 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29290 (bvlshr x!29290 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!155232 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!155232 #b00000000000000000000000000000000))))))

(assert (=> d!66881 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!146456 (bvlshr lt!146456 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!295060 d!66881))

(declare-fun b!295322 () Bool)

(declare-fun e!186673 () Bool)

(declare-fun call!25731 () Bool)

(assert (=> b!295322 (= e!186673 call!25731)))

(declare-fun b!295323 () Bool)

(declare-fun e!186674 () Bool)

(assert (=> b!295323 (= e!186673 e!186674)))

(declare-fun lt!146470 () (_ BitVec 64))

(assert (=> b!295323 (= lt!146470 (select (arr!7072 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9213 0))(
  ( (Unit!9214) )
))
(declare-fun lt!146471 () Unit!9213)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14921 (_ BitVec 64) (_ BitVec 32)) Unit!9213)

(assert (=> b!295323 (= lt!146471 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!146470 #b00000000000000000000000000000000))))

(assert (=> b!295323 (arrayContainsKey!0 a!3312 lt!146470 #b00000000000000000000000000000000)))

(declare-fun lt!146469 () Unit!9213)

(assert (=> b!295323 (= lt!146469 lt!146471)))

(declare-fun res!155246 () Bool)

(assert (=> b!295323 (= res!155246 (= (seekEntryOrOpen!0 (select (arr!7072 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2232 #b00000000000000000000000000000000)))))

(assert (=> b!295323 (=> (not res!155246) (not e!186674))))

(declare-fun bm!25728 () Bool)

(assert (=> bm!25728 (= call!25731 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun d!66887 () Bool)

(declare-fun res!155247 () Bool)

(declare-fun e!186672 () Bool)

(assert (=> d!66887 (=> res!155247 e!186672)))

(assert (=> d!66887 (= res!155247 (bvsge #b00000000000000000000000000000000 (size!7424 a!3312)))))

(assert (=> d!66887 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186672)))

(declare-fun b!295324 () Bool)

(assert (=> b!295324 (= e!186672 e!186673)))

(declare-fun c!47616 () Bool)

(assert (=> b!295324 (= c!47616 (validKeyInArray!0 (select (arr!7072 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!295325 () Bool)

(assert (=> b!295325 (= e!186674 call!25731)))

(assert (= (and d!66887 (not res!155247)) b!295324))

(assert (= (and b!295324 c!47616) b!295323))

(assert (= (and b!295324 (not c!47616)) b!295322))

(assert (= (and b!295323 res!155246) b!295325))

(assert (= (or b!295325 b!295322) bm!25728))

(assert (=> b!295323 m!308415))

(declare-fun m!308473 () Bool)

(assert (=> b!295323 m!308473))

(declare-fun m!308475 () Bool)

(assert (=> b!295323 m!308475))

(assert (=> b!295323 m!308415))

(declare-fun m!308477 () Bool)

(assert (=> b!295323 m!308477))

(declare-fun m!308479 () Bool)

(assert (=> bm!25728 m!308479))

(assert (=> b!295324 m!308415))

(assert (=> b!295324 m!308415))

(declare-fun m!308481 () Bool)

(assert (=> b!295324 m!308481))

(assert (=> b!295057 d!66887))

(push 1)

