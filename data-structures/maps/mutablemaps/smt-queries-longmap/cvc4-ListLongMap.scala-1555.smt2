; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29464 () Bool)

(assert start!29464)

(declare-fun b!297921 () Bool)

(declare-fun res!157155 () Bool)

(declare-fun e!188254 () Bool)

(assert (=> b!297921 (=> (not res!157155) (not e!188254))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297921 (= res!157155 (validKeyInArray!0 k!2524))))

(declare-fun b!297923 () Bool)

(declare-fun res!157153 () Bool)

(declare-fun e!188253 () Bool)

(assert (=> b!297923 (=> (not res!157153) (not e!188253))))

(declare-datatypes ((array!15078 0))(
  ( (array!15079 (arr!7143 (Array (_ BitVec 32) (_ BitVec 64))) (size!7495 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15078)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15078 (_ BitVec 32)) Bool)

(assert (=> b!297923 (= res!157153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!297924 () Bool)

(declare-fun res!157157 () Bool)

(assert (=> b!297924 (=> (not res!157157) (not e!188254))))

(declare-fun arrayContainsKey!0 (array!15078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297924 (= res!157157 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297925 () Bool)

(assert (=> b!297925 (= e!188254 e!188253)))

(declare-fun res!157154 () Bool)

(assert (=> b!297925 (=> (not res!157154) (not e!188253))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2303 0))(
  ( (MissingZero!2303 (index!11385 (_ BitVec 32))) (Found!2303 (index!11386 (_ BitVec 32))) (Intermediate!2303 (undefined!3115 Bool) (index!11387 (_ BitVec 32)) (x!29571 (_ BitVec 32))) (Undefined!2303) (MissingVacant!2303 (index!11388 (_ BitVec 32))) )
))
(declare-fun lt!148157 () SeekEntryResult!2303)

(declare-fun lt!148158 () Bool)

(assert (=> b!297925 (= res!157154 (or lt!148158 (= lt!148157 (MissingVacant!2303 i!1256))))))

(assert (=> b!297925 (= lt!148158 (= lt!148157 (MissingZero!2303 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15078 (_ BitVec 32)) SeekEntryResult!2303)

(assert (=> b!297925 (= lt!148157 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!297926 () Bool)

(declare-fun res!157156 () Bool)

(assert (=> b!297926 (=> (not res!157156) (not e!188254))))

(assert (=> b!297926 (= res!157156 (and (= (size!7495 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7495 a!3312))))))

(declare-fun res!157158 () Bool)

(assert (=> start!29464 (=> (not res!157158) (not e!188254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29464 (= res!157158 (validMask!0 mask!3809))))

(assert (=> start!29464 e!188254))

(assert (=> start!29464 true))

(declare-fun array_inv!5097 (array!15078) Bool)

(assert (=> start!29464 (array_inv!5097 a!3312)))

(declare-fun lt!148160 () SeekEntryResult!2303)

(declare-fun b!297922 () Bool)

(assert (=> b!297922 (= e!188253 (and (not lt!148158) (= lt!148157 (MissingVacant!2303 i!1256)) (is-Intermediate!2303 lt!148160) (undefined!3115 lt!148160)))))

(declare-fun lt!148156 () SeekEntryResult!2303)

(declare-fun lt!148159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15078 (_ BitVec 32)) SeekEntryResult!2303)

(assert (=> b!297922 (= lt!148156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148159 k!2524 (array!15079 (store (arr!7143 a!3312) i!1256 k!2524) (size!7495 a!3312)) mask!3809))))

(assert (=> b!297922 (= lt!148160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148159 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297922 (= lt!148159 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!29464 res!157158) b!297926))

(assert (= (and b!297926 res!157156) b!297921))

(assert (= (and b!297921 res!157155) b!297924))

(assert (= (and b!297924 res!157157) b!297925))

(assert (= (and b!297925 res!157154) b!297923))

(assert (= (and b!297923 res!157153) b!297922))

(declare-fun m!310563 () Bool)

(assert (=> b!297925 m!310563))

(declare-fun m!310565 () Bool)

(assert (=> b!297923 m!310565))

(declare-fun m!310567 () Bool)

(assert (=> b!297924 m!310567))

(declare-fun m!310569 () Bool)

(assert (=> b!297922 m!310569))

(declare-fun m!310571 () Bool)

(assert (=> b!297922 m!310571))

(declare-fun m!310573 () Bool)

(assert (=> b!297922 m!310573))

(declare-fun m!310575 () Bool)

(assert (=> b!297922 m!310575))

(declare-fun m!310577 () Bool)

(assert (=> b!297921 m!310577))

(declare-fun m!310579 () Bool)

(assert (=> start!29464 m!310579))

(declare-fun m!310581 () Bool)

(assert (=> start!29464 m!310581))

(push 1)

(assert (not start!29464))

(assert (not b!297923))

(assert (not b!297924))

(assert (not b!297921))

(assert (not b!297922))

(assert (not b!297925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67173 () Bool)

(assert (=> d!67173 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29464 d!67173))

(declare-fun d!67179 () Bool)

(assert (=> d!67179 (= (array_inv!5097 a!3312) (bvsge (size!7495 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29464 d!67179))

(declare-fun e!188294 () SeekEntryResult!2303)

(declare-fun b!297981 () Bool)

(declare-fun lt!148191 () SeekEntryResult!2303)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15078 (_ BitVec 32)) SeekEntryResult!2303)

(assert (=> b!297981 (= e!188294 (seekKeyOrZeroReturnVacant!0 (x!29571 lt!148191) (index!11387 lt!148191) (index!11387 lt!148191) k!2524 a!3312 mask!3809))))

(declare-fun d!67181 () Bool)

(declare-fun lt!148192 () SeekEntryResult!2303)

(assert (=> d!67181 (and (or (is-Undefined!2303 lt!148192) (not (is-Found!2303 lt!148192)) (and (bvsge (index!11386 lt!148192) #b00000000000000000000000000000000) (bvslt (index!11386 lt!148192) (size!7495 a!3312)))) (or (is-Undefined!2303 lt!148192) (is-Found!2303 lt!148192) (not (is-MissingZero!2303 lt!148192)) (and (bvsge (index!11385 lt!148192) #b00000000000000000000000000000000) (bvslt (index!11385 lt!148192) (size!7495 a!3312)))) (or (is-Undefined!2303 lt!148192) (is-Found!2303 lt!148192) (is-MissingZero!2303 lt!148192) (not (is-MissingVacant!2303 lt!148192)) (and (bvsge (index!11388 lt!148192) #b00000000000000000000000000000000) (bvslt (index!11388 lt!148192) (size!7495 a!3312)))) (or (is-Undefined!2303 lt!148192) (ite (is-Found!2303 lt!148192) (= (select (arr!7143 a!3312) (index!11386 lt!148192)) k!2524) (ite (is-MissingZero!2303 lt!148192) (= (select (arr!7143 a!3312) (index!11385 lt!148192)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2303 lt!148192) (= (select (arr!7143 a!3312) (index!11388 lt!148192)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!188293 () SeekEntryResult!2303)

(assert (=> d!67181 (= lt!148192 e!188293)))

(declare-fun c!47988 () Bool)

(assert (=> d!67181 (= c!47988 (and (is-Intermediate!2303 lt!148191) (undefined!3115 lt!148191)))))

(assert (=> d!67181 (= lt!148191 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67181 (validMask!0 mask!3809)))

(assert (=> d!67181 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!148192)))

(declare-fun b!297982 () Bool)

(declare-fun e!188292 () SeekEntryResult!2303)

(assert (=> b!297982 (= e!188292 (Found!2303 (index!11387 lt!148191)))))

(declare-fun b!297983 () Bool)

(assert (=> b!297983 (= e!188293 Undefined!2303)))

(declare-fun b!297984 () Bool)

(assert (=> b!297984 (= e!188293 e!188292)))

(declare-fun lt!148193 () (_ BitVec 64))

(assert (=> b!297984 (= lt!148193 (select (arr!7143 a!3312) (index!11387 lt!148191)))))

(declare-fun c!47987 () Bool)

(assert (=> b!297984 (= c!47987 (= lt!148193 k!2524))))

(declare-fun b!297985 () Bool)

(assert (=> b!297985 (= e!188294 (MissingZero!2303 (index!11387 lt!148191)))))

(declare-fun b!297986 () Bool)

(declare-fun c!47986 () Bool)

(assert (=> b!297986 (= c!47986 (= lt!148193 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297986 (= e!188292 e!188294)))

(assert (= (and d!67181 c!47988) b!297983))

(assert (= (and d!67181 (not c!47988)) b!297984))

(assert (= (and b!297984 c!47987) b!297982))

(assert (= (and b!297984 (not c!47987)) b!297986))

(assert (= (and b!297986 c!47986) b!297985))

(assert (= (and b!297986 (not c!47986)) b!297981))

(declare-fun m!310609 () Bool)

(assert (=> b!297981 m!310609))

(declare-fun m!310611 () Bool)

(assert (=> d!67181 m!310611))

(assert (=> d!67181 m!310575))

(declare-fun m!310613 () Bool)

(assert (=> d!67181 m!310613))

(assert (=> d!67181 m!310575))

(assert (=> d!67181 m!310579))

(declare-fun m!310615 () Bool)

(assert (=> d!67181 m!310615))

(declare-fun m!310617 () Bool)

(assert (=> d!67181 m!310617))

(declare-fun m!310619 () Bool)

(assert (=> b!297984 m!310619))

(assert (=> b!297925 d!67181))

(declare-fun d!67185 () Bool)

(declare-fun res!157181 () Bool)

(declare-fun e!188302 () Bool)

(assert (=> d!67185 (=> res!157181 e!188302)))

(assert (=> d!67185 (= res!157181 (= (select (arr!7143 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67185 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!188302)))

(declare-fun b!297997 () Bool)

(declare-fun e!188303 () Bool)

(assert (=> b!297997 (= e!188302 e!188303)))

(declare-fun res!157182 () Bool)

(assert (=> b!297997 (=> (not res!157182) (not e!188303))))

(assert (=> b!297997 (= res!157182 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7495 a!3312)))))

(declare-fun b!297998 () Bool)

(assert (=> b!297998 (= e!188303 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67185 (not res!157181)) b!297997))

(assert (= (and b!297997 res!157182) b!297998))

(declare-fun m!310621 () Bool)

(assert (=> d!67185 m!310621))

(declare-fun m!310623 () Bool)

(assert (=> b!297998 m!310623))

(assert (=> b!297924 d!67185))

(declare-fun b!298035 () Bool)

(declare-fun e!188324 () SeekEntryResult!2303)

(assert (=> b!298035 (= e!188324 (Intermediate!2303 true lt!148159 #b00000000000000000000000000000000))))

(declare-fun b!298036 () Bool)

(declare-fun e!188325 () Bool)

(declare-fun lt!148206 () SeekEntryResult!2303)

(assert (=> b!298036 (= e!188325 (bvsge (x!29571 lt!148206) #b01111111111111111111111111111110))))

(declare-fun b!298037 () Bool)

(assert (=> b!298037 (and (bvsge (index!11387 lt!148206) #b00000000000000000000000000000000) (bvslt (index!11387 lt!148206) (size!7495 (array!15079 (store (arr!7143 a!3312) i!1256 k!2524) (size!7495 a!3312)))))))

(declare-fun res!157195 () Bool)

(assert (=> b!298037 (= res!157195 (= (select (arr!7143 (array!15079 (store (arr!7143 a!3312) i!1256 k!2524) (size!7495 a!3312))) (index!11387 lt!148206)) k!2524))))

(declare-fun e!188326 () Bool)

(assert (=> b!298037 (=> res!157195 e!188326)))

(declare-fun e!188328 () Bool)

(assert (=> b!298037 (= e!188328 e!188326)))

(declare-fun b!298038 () Bool)

(assert (=> b!298038 (and (bvsge (index!11387 lt!148206) #b00000000000000000000000000000000) (bvslt (index!11387 lt!148206) (size!7495 (array!15079 (store (arr!7143 a!3312) i!1256 k!2524) (size!7495 a!3312)))))))

(declare-fun res!157197 () Bool)

(assert (=> b!298038 (= res!157197 (= (select (arr!7143 (array!15079 (store (arr!7143 a!3312) i!1256 k!2524) (size!7495 a!3312))) (index!11387 lt!148206)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298038 (=> res!157197 e!188326)))

(declare-fun e!188327 () SeekEntryResult!2303)

(declare-fun b!298039 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298039 (= e!188327 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148159 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15079 (store (arr!7143 a!3312) i!1256 k!2524) (size!7495 a!3312)) mask!3809))))

(declare-fun b!298040 () Bool)

(assert (=> b!298040 (= e!188324 e!188327)))

(declare-fun c!48006 () Bool)

(declare-fun lt!148205 () (_ BitVec 64))

(assert (=> b!298040 (= c!48006 (or (= lt!148205 k!2524) (= (bvadd lt!148205 lt!148205) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298041 () Bool)

(assert (=> b!298041 (= e!188327 (Intermediate!2303 false lt!148159 #b00000000000000000000000000000000))))

(declare-fun b!298043 () Bool)

(assert (=> b!298043 (= e!188325 e!188328)))

(declare-fun res!157196 () Bool)

(assert (=> b!298043 (= res!157196 (and (is-Intermediate!2303 lt!148206) (not (undefined!3115 lt!148206)) (bvslt (x!29571 lt!148206) #b01111111111111111111111111111110) (bvsge (x!29571 lt!148206) #b00000000000000000000000000000000) (bvsge (x!29571 lt!148206) #b00000000000000000000000000000000)))))

(assert (=> b!298043 (=> (not res!157196) (not e!188328))))

(declare-fun b!298042 () Bool)

(assert (=> b!298042 (and (bvsge (index!11387 lt!148206) #b00000000000000000000000000000000) (bvslt (index!11387 lt!148206) (size!7495 (array!15079 (store (arr!7143 a!3312) i!1256 k!2524) (size!7495 a!3312)))))))

(assert (=> b!298042 (= e!188326 (= (select (arr!7143 (array!15079 (store (arr!7143 a!3312) i!1256 k!2524) (size!7495 a!3312))) (index!11387 lt!148206)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!67187 () Bool)

(assert (=> d!67187 e!188325))

(declare-fun c!48005 () Bool)

(assert (=> d!67187 (= c!48005 (and (is-Intermediate!2303 lt!148206) (undefined!3115 lt!148206)))))

(assert (=> d!67187 (= lt!148206 e!188324)))

(declare-fun c!48004 () Bool)

(assert (=> d!67187 (= c!48004 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67187 (= lt!148205 (select (arr!7143 (array!15079 (store (arr!7143 a!3312) i!1256 k!2524) (size!7495 a!3312))) lt!148159))))

(assert (=> d!67187 (validMask!0 mask!3809)))

(assert (=> d!67187 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148159 k!2524 (array!15079 (store (arr!7143 a!3312) i!1256 k!2524) (size!7495 a!3312)) mask!3809) lt!148206)))

(assert (= (and d!67187 c!48004) b!298035))

(assert (= (and d!67187 (not c!48004)) b!298040))

(assert (= (and b!298040 c!48006) b!298041))

(assert (= (and b!298040 (not c!48006)) b!298039))

(assert (= (and d!67187 c!48005) b!298036))

(assert (= (and d!67187 (not c!48005)) b!298043))

(assert (= (and b!298043 res!157196) b!298037))

(assert (= (and b!298037 (not res!157195)) b!298038))

(assert (= (and b!298038 (not res!157197)) b!298042))

(declare-fun m!310637 () Bool)

(assert (=> d!67187 m!310637))

(assert (=> d!67187 m!310579))

(declare-fun m!310639 () Bool)

(assert (=> b!298038 m!310639))

(declare-fun m!310641 () Bool)

(assert (=> b!298039 m!310641))

(assert (=> b!298039 m!310641))

(declare-fun m!310643 () Bool)

(assert (=> b!298039 m!310643))

(assert (=> b!298037 m!310639))

(assert (=> b!298042 m!310639))

(assert (=> b!297922 d!67187))

(declare-fun b!298053 () Bool)

(declare-fun e!188334 () SeekEntryResult!2303)

(assert (=> b!298053 (= e!188334 (Intermediate!2303 true lt!148159 #b00000000000000000000000000000000))))

(declare-fun b!298054 () Bool)

(declare-fun e!188335 () Bool)

(declare-fun lt!148210 () SeekEntryResult!2303)

(assert (=> b!298054 (= e!188335 (bvsge (x!29571 lt!148210) #b01111111111111111111111111111110))))

(declare-fun b!298055 () Bool)

(assert (=> b!298055 (and (bvsge (index!11387 lt!148210) #b00000000000000000000000000000000) (bvslt (index!11387 lt!148210) (size!7495 a!3312)))))

(declare-fun res!157201 () Bool)

(assert (=> b!298055 (= res!157201 (= (select (arr!7143 a!3312) (index!11387 lt!148210)) k!2524))))

(declare-fun e!188336 () Bool)

(assert (=> b!298055 (=> res!157201 e!188336)))

(declare-fun e!188338 () Bool)

(assert (=> b!298055 (= e!188338 e!188336)))

(declare-fun b!298056 () Bool)

(assert (=> b!298056 (and (bvsge (index!11387 lt!148210) #b00000000000000000000000000000000) (bvslt (index!11387 lt!148210) (size!7495 a!3312)))))

(declare-fun res!157203 () Bool)

(assert (=> b!298056 (= res!157203 (= (select (arr!7143 a!3312) (index!11387 lt!148210)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298056 (=> res!157203 e!188336)))

(declare-fun b!298057 () Bool)

(declare-fun e!188337 () SeekEntryResult!2303)

(assert (=> b!298057 (= e!188337 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148159 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!298058 () Bool)

(assert (=> b!298058 (= e!188334 e!188337)))

(declare-fun c!48012 () Bool)

(declare-fun lt!148209 () (_ BitVec 64))

(assert (=> b!298058 (= c!48012 (or (= lt!148209 k!2524) (= (bvadd lt!148209 lt!148209) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298059 () Bool)

(assert (=> b!298059 (= e!188337 (Intermediate!2303 false lt!148159 #b00000000000000000000000000000000))))

(declare-fun b!298061 () Bool)

(assert (=> b!298061 (= e!188335 e!188338)))

(declare-fun res!157202 () Bool)

(assert (=> b!298061 (= res!157202 (and (is-Intermediate!2303 lt!148210) (not (undefined!3115 lt!148210)) (bvslt (x!29571 lt!148210) #b01111111111111111111111111111110) (bvsge (x!29571 lt!148210) #b00000000000000000000000000000000) (bvsge (x!29571 lt!148210) #b00000000000000000000000000000000)))))

(assert (=> b!298061 (=> (not res!157202) (not e!188338))))

(declare-fun b!298060 () Bool)

(assert (=> b!298060 (and (bvsge (index!11387 lt!148210) #b00000000000000000000000000000000) (bvslt (index!11387 lt!148210) (size!7495 a!3312)))))

(assert (=> b!298060 (= e!188336 (= (select (arr!7143 a!3312) (index!11387 lt!148210)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!67193 () Bool)

(assert (=> d!67193 e!188335))

(declare-fun c!48011 () Bool)

(assert (=> d!67193 (= c!48011 (and (is-Intermediate!2303 lt!148210) (undefined!3115 lt!148210)))))

(assert (=> d!67193 (= lt!148210 e!188334)))

(declare-fun c!48010 () Bool)

(assert (=> d!67193 (= c!48010 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67193 (= lt!148209 (select (arr!7143 a!3312) lt!148159))))

(assert (=> d!67193 (validMask!0 mask!3809)))

(assert (=> d!67193 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148159 k!2524 a!3312 mask!3809) lt!148210)))

(assert (= (and d!67193 c!48010) b!298053))

(assert (= (and d!67193 (not c!48010)) b!298058))

(assert (= (and b!298058 c!48012) b!298059))

(assert (= (and b!298058 (not c!48012)) b!298057))

(assert (= (and d!67193 c!48011) b!298054))

(assert (= (and d!67193 (not c!48011)) b!298061))

(assert (= (and b!298061 res!157202) b!298055))

(assert (= (and b!298055 (not res!157201)) b!298056))

(assert (= (and b!298056 (not res!157203)) b!298060))

(declare-fun m!310645 () Bool)

(assert (=> d!67193 m!310645))

(assert (=> d!67193 m!310579))

(declare-fun m!310647 () Bool)

(assert (=> b!298056 m!310647))

(assert (=> b!298057 m!310641))

(assert (=> b!298057 m!310641))

(declare-fun m!310651 () Bool)

(assert (=> b!298057 m!310651))

(assert (=> b!298055 m!310647))

(assert (=> b!298060 m!310647))

(assert (=> b!297922 d!67193))

(declare-fun d!67195 () Bool)

(declare-fun lt!148222 () (_ BitVec 32))

(declare-fun lt!148221 () (_ BitVec 32))

(assert (=> d!67195 (= lt!148222 (bvmul (bvxor lt!148221 (bvlshr lt!148221 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67195 (= lt!148221 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67195 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157207 (let ((h!5324 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29574 (bvmul (bvxor h!5324 (bvlshr h!5324 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29574 (bvlshr x!29574 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157207 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157207 #b00000000000000000000000000000000))))))

(assert (=> d!67195 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!148222 (bvlshr lt!148222 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!297922 d!67195))

(declare-fun b!298106 () Bool)

(declare-fun e!188367 () Bool)

(declare-fun e!188366 () Bool)

(assert (=> b!298106 (= e!188367 e!188366)))

(declare-fun c!48027 () Bool)

(assert (=> b!298106 (= c!48027 (validKeyInArray!0 (select (arr!7143 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!298107 () Bool)

(declare-fun call!25776 () Bool)

(assert (=> b!298107 (= e!188366 call!25776)))

(declare-fun d!67201 () Bool)

(declare-fun res!157223 () Bool)

(assert (=> d!67201 (=> res!157223 e!188367)))

(assert (=> d!67201 (= res!157223 (bvsge #b00000000000000000000000000000000 (size!7495 a!3312)))))

(assert (=> d!67201 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188367)))

(declare-fun b!298108 () Bool)

(declare-fun e!188365 () Bool)

(assert (=> b!298108 (= e!188366 e!188365)))

(declare-fun lt!148237 () (_ BitVec 64))

(assert (=> b!298108 (= lt!148237 (select (arr!7143 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9298 0))(
  ( (Unit!9299) )
))
(declare-fun lt!148238 () Unit!9298)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15078 (_ BitVec 64) (_ BitVec 32)) Unit!9298)

(assert (=> b!298108 (= lt!148238 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148237 #b00000000000000000000000000000000))))

(assert (=> b!298108 (arrayContainsKey!0 a!3312 lt!148237 #b00000000000000000000000000000000)))

(declare-fun lt!148239 () Unit!9298)

(assert (=> b!298108 (= lt!148239 lt!148238)))

(declare-fun res!157222 () Bool)

(assert (=> b!298108 (= res!157222 (= (seekEntryOrOpen!0 (select (arr!7143 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2303 #b00000000000000000000000000000000)))))

(assert (=> b!298108 (=> (not res!157222) (not e!188365))))

(declare-fun b!298109 () Bool)

(assert (=> b!298109 (= e!188365 call!25776)))

(declare-fun bm!25773 () Bool)

(assert (=> bm!25773 (= call!25776 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67201 (not res!157223)) b!298106))

(assert (= (and b!298106 c!48027) b!298108))

(assert (= (and b!298106 (not c!48027)) b!298107))

(assert (= (and b!298108 res!157222) b!298109))

(assert (= (or b!298109 b!298107) bm!25773))

(assert (=> b!298106 m!310621))

(assert (=> b!298106 m!310621))

(declare-fun m!310673 () Bool)

(assert (=> b!298106 m!310673))

(assert (=> b!298108 m!310621))

(declare-fun m!310675 () Bool)

(assert (=> b!298108 m!310675))

(declare-fun m!310677 () Bool)

(assert (=> b!298108 m!310677))

(assert (=> b!298108 m!310621))

(declare-fun m!310679 () Bool)

(assert (=> b!298108 m!310679))

(declare-fun m!310681 () Bool)

(assert (=> bm!25773 m!310681))

(assert (=> b!297923 d!67201))

(declare-fun d!67207 () Bool)

(assert (=> d!67207 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!297921 d!67207))

(push 1)

(assert (not b!297998))

(assert (not d!67181))

(assert (not bm!25773))

(assert (not d!67193))

(assert (not b!297981))

(assert (not b!298106))

(assert (not d!67187))

(assert (not b!298039))

(assert (not b!298057))

(assert (not b!298108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

