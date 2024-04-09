; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86000 () Bool)

(assert start!86000)

(declare-fun b!996014 () Bool)

(declare-fun res!666376 () Bool)

(declare-fun e!562015 () Bool)

(assert (=> b!996014 (=> (not res!666376) (not e!562015))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996014 (= res!666376 (validKeyInArray!0 k!2224))))

(declare-fun b!996015 () Bool)

(declare-fun e!562014 () Bool)

(assert (=> b!996015 (= e!562015 e!562014)))

(declare-fun res!666373 () Bool)

(assert (=> b!996015 (=> (not res!666373) (not e!562014))))

(declare-datatypes ((SeekEntryResult!9262 0))(
  ( (MissingZero!9262 (index!39418 (_ BitVec 32))) (Found!9262 (index!39419 (_ BitVec 32))) (Intermediate!9262 (undefined!10074 Bool) (index!39420 (_ BitVec 32)) (x!86880 (_ BitVec 32))) (Undefined!9262) (MissingVacant!9262 (index!39421 (_ BitVec 32))) )
))
(declare-fun lt!441080 () SeekEntryResult!9262)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996015 (= res!666373 (or (= lt!441080 (MissingVacant!9262 i!1194)) (= lt!441080 (MissingZero!9262 i!1194))))))

(declare-datatypes ((array!63002 0))(
  ( (array!63003 (arr!30330 (Array (_ BitVec 32) (_ BitVec 64))) (size!30833 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63002)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63002 (_ BitVec 32)) SeekEntryResult!9262)

(assert (=> b!996015 (= lt!441080 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996016 () Bool)

(declare-fun res!666378 () Bool)

(assert (=> b!996016 (=> (not res!666378) (not e!562014))))

(declare-datatypes ((List!21132 0))(
  ( (Nil!21129) (Cons!21128 (h!22290 (_ BitVec 64)) (t!30141 List!21132)) )
))
(declare-fun arrayNoDuplicates!0 (array!63002 (_ BitVec 32) List!21132) Bool)

(assert (=> b!996016 (= res!666378 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21129))))

(declare-fun b!996017 () Bool)

(declare-fun res!666371 () Bool)

(assert (=> b!996017 (=> (not res!666371) (not e!562015))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!996017 (= res!666371 (and (= (size!30833 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30833 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30833 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996018 () Bool)

(declare-fun res!666372 () Bool)

(assert (=> b!996018 (=> (not res!666372) (not e!562014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63002 (_ BitVec 32)) Bool)

(assert (=> b!996018 (= res!666372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!666379 () Bool)

(assert (=> start!86000 (=> (not res!666379) (not e!562015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86000 (= res!666379 (validMask!0 mask!3464))))

(assert (=> start!86000 e!562015))

(declare-fun array_inv!23320 (array!63002) Bool)

(assert (=> start!86000 (array_inv!23320 a!3219)))

(assert (=> start!86000 true))

(declare-fun b!996019 () Bool)

(declare-fun res!666375 () Bool)

(assert (=> b!996019 (=> (not res!666375) (not e!562015))))

(declare-fun arrayContainsKey!0 (array!63002 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996019 (= res!666375 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996020 () Bool)

(declare-fun res!666377 () Bool)

(assert (=> b!996020 (=> (not res!666377) (not e!562014))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!996020 (= res!666377 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30833 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30833 a!3219))))))

(declare-fun b!996021 () Bool)

(declare-fun lt!441081 () (_ BitVec 32))

(assert (=> b!996021 (= e!562014 (and (bvsge mask!3464 #b00000000000000000000000000000000) (or (bvslt lt!441081 #b00000000000000000000000000000000) (bvsge lt!441081 (bvadd #b00000000000000000000000000000001 mask!3464)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996021 (= lt!441081 (toIndex!0 (select (arr!30330 a!3219) j!170) mask!3464))))

(declare-fun b!996022 () Bool)

(declare-fun res!666374 () Bool)

(assert (=> b!996022 (=> (not res!666374) (not e!562015))))

(assert (=> b!996022 (= res!666374 (validKeyInArray!0 (select (arr!30330 a!3219) j!170)))))

(assert (= (and start!86000 res!666379) b!996017))

(assert (= (and b!996017 res!666371) b!996022))

(assert (= (and b!996022 res!666374) b!996014))

(assert (= (and b!996014 res!666376) b!996019))

(assert (= (and b!996019 res!666375) b!996015))

(assert (= (and b!996015 res!666373) b!996018))

(assert (= (and b!996018 res!666372) b!996016))

(assert (= (and b!996016 res!666378) b!996020))

(assert (= (and b!996020 res!666377) b!996021))

(declare-fun m!923341 () Bool)

(assert (=> b!996014 m!923341))

(declare-fun m!923343 () Bool)

(assert (=> b!996019 m!923343))

(declare-fun m!923345 () Bool)

(assert (=> b!996022 m!923345))

(assert (=> b!996022 m!923345))

(declare-fun m!923347 () Bool)

(assert (=> b!996022 m!923347))

(declare-fun m!923349 () Bool)

(assert (=> b!996018 m!923349))

(declare-fun m!923351 () Bool)

(assert (=> b!996015 m!923351))

(declare-fun m!923353 () Bool)

(assert (=> start!86000 m!923353))

(declare-fun m!923355 () Bool)

(assert (=> start!86000 m!923355))

(assert (=> b!996021 m!923345))

(assert (=> b!996021 m!923345))

(declare-fun m!923357 () Bool)

(assert (=> b!996021 m!923357))

(declare-fun m!923359 () Bool)

(assert (=> b!996016 m!923359))

(push 1)

(assert (not b!996019))

(assert (not b!996014))

(assert (not b!996015))

(assert (not start!86000))

(assert (not b!996021))

(assert (not b!996022))

(assert (not b!996018))

(assert (not b!996016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!441113 () SeekEntryResult!9262)

(declare-fun e!562049 () SeekEntryResult!9262)

(declare-fun b!996076 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63002 (_ BitVec 32)) SeekEntryResult!9262)

(assert (=> b!996076 (= e!562049 (seekKeyOrZeroReturnVacant!0 (x!86880 lt!441113) (index!39420 lt!441113) (index!39420 lt!441113) k!2224 a!3219 mask!3464))))

(declare-fun b!996077 () Bool)

(assert (=> b!996077 (= e!562049 (MissingZero!9262 (index!39420 lt!441113)))))

(declare-fun b!996078 () Bool)

(declare-fun e!562050 () SeekEntryResult!9262)

(declare-fun e!562051 () SeekEntryResult!9262)

(assert (=> b!996078 (= e!562050 e!562051)))

(declare-fun lt!441114 () (_ BitVec 64))

(assert (=> b!996078 (= lt!441114 (select (arr!30330 a!3219) (index!39420 lt!441113)))))

(declare-fun c!100983 () Bool)

(assert (=> b!996078 (= c!100983 (= lt!441114 k!2224))))

(declare-fun b!996079 () Bool)

(declare-fun c!100985 () Bool)

(assert (=> b!996079 (= c!100985 (= lt!441114 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!996079 (= e!562051 e!562049)))

(declare-fun b!996080 () Bool)

(assert (=> b!996080 (= e!562051 (Found!9262 (index!39420 lt!441113)))))

(declare-fun b!996075 () Bool)

(assert (=> b!996075 (= e!562050 Undefined!9262)))

(declare-fun d!118905 () Bool)

(declare-fun lt!441112 () SeekEntryResult!9262)

(assert (=> d!118905 (and (or (is-Undefined!9262 lt!441112) (not (is-Found!9262 lt!441112)) (and (bvsge (index!39419 lt!441112) #b00000000000000000000000000000000) (bvslt (index!39419 lt!441112) (size!30833 a!3219)))) (or (is-Undefined!9262 lt!441112) (is-Found!9262 lt!441112) (not (is-MissingZero!9262 lt!441112)) (and (bvsge (index!39418 lt!441112) #b00000000000000000000000000000000) (bvslt (index!39418 lt!441112) (size!30833 a!3219)))) (or (is-Undefined!9262 lt!441112) (is-Found!9262 lt!441112) (is-MissingZero!9262 lt!441112) (not (is-MissingVacant!9262 lt!441112)) (and (bvsge (index!39421 lt!441112) #b00000000000000000000000000000000) (bvslt (index!39421 lt!441112) (size!30833 a!3219)))) (or (is-Undefined!9262 lt!441112) (ite (is-Found!9262 lt!441112) (= (select (arr!30330 a!3219) (index!39419 lt!441112)) k!2224) (ite (is-MissingZero!9262 lt!441112) (= (select (arr!30330 a!3219) (index!39418 lt!441112)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9262 lt!441112) (= (select (arr!30330 a!3219) (index!39421 lt!441112)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118905 (= lt!441112 e!562050)))

(declare-fun c!100984 () Bool)

(assert (=> d!118905 (= c!100984 (and (is-Intermediate!9262 lt!441113) (undefined!10074 lt!441113)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63002 (_ BitVec 32)) SeekEntryResult!9262)

(assert (=> d!118905 (= lt!441113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!118905 (validMask!0 mask!3464)))

(assert (=> d!118905 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!441112)))

(assert (= (and d!118905 c!100984) b!996075))

(assert (= (and d!118905 (not c!100984)) b!996078))

(assert (= (and b!996078 c!100983) b!996080))

(assert (= (and b!996078 (not c!100983)) b!996079))

(assert (= (and b!996079 c!100985) b!996077))

(assert (= (and b!996079 (not c!100985)) b!996076))

(declare-fun m!923387 () Bool)

(assert (=> b!996076 m!923387))

(declare-fun m!923389 () Bool)

(assert (=> b!996078 m!923389))

(declare-fun m!923391 () Bool)

(assert (=> d!118905 m!923391))

(declare-fun m!923393 () Bool)

(assert (=> d!118905 m!923393))

(assert (=> d!118905 m!923353))

(declare-fun m!923395 () Bool)

(assert (=> d!118905 m!923395))

(assert (=> d!118905 m!923391))

(declare-fun m!923399 () Bool)

(assert (=> d!118905 m!923399))

(declare-fun m!923403 () Bool)

(assert (=> d!118905 m!923403))

(assert (=> b!996015 d!118905))

(declare-fun d!118919 () Bool)

(assert (=> d!118919 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!996014 d!118919))

(declare-fun d!118923 () Bool)

(declare-fun res!666406 () Bool)

(declare-fun e!562079 () Bool)

(assert (=> d!118923 (=> res!666406 e!562079)))

(assert (=> d!118923 (= res!666406 (bvsge #b00000000000000000000000000000000 (size!30833 a!3219)))))

(assert (=> d!118923 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21129) e!562079)))

(declare-fun b!996116 () Bool)

(declare-fun e!562076 () Bool)

(declare-fun call!42234 () Bool)

(assert (=> b!996116 (= e!562076 call!42234)))

(declare-fun b!996117 () Bool)

(assert (=> b!996117 (= e!562076 call!42234)))

(declare-fun b!996118 () Bool)

(declare-fun e!562077 () Bool)

(declare-fun contains!5875 (List!21132 (_ BitVec 64)) Bool)

(assert (=> b!996118 (= e!562077 (contains!5875 Nil!21129 (select (arr!30330 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42231 () Bool)

(declare-fun c!100997 () Bool)

(assert (=> bm!42231 (= call!42234 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100997 (Cons!21128 (select (arr!30330 a!3219) #b00000000000000000000000000000000) Nil!21129) Nil!21129)))))

(declare-fun b!996119 () Bool)

(declare-fun e!562078 () Bool)

(assert (=> b!996119 (= e!562079 e!562078)))

(declare-fun res!666408 () Bool)

(assert (=> b!996119 (=> (not res!666408) (not e!562078))))

(assert (=> b!996119 (= res!666408 (not e!562077))))

(declare-fun res!666407 () Bool)

(assert (=> b!996119 (=> (not res!666407) (not e!562077))))

(assert (=> b!996119 (= res!666407 (validKeyInArray!0 (select (arr!30330 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!996120 () Bool)

(assert (=> b!996120 (= e!562078 e!562076)))

(assert (=> b!996120 (= c!100997 (validKeyInArray!0 (select (arr!30330 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!118923 (not res!666406)) b!996119))

(assert (= (and b!996119 res!666407) b!996118))

(assert (= (and b!996119 res!666408) b!996120))

(assert (= (and b!996120 c!100997) b!996117))

(assert (= (and b!996120 (not c!100997)) b!996116))

(assert (= (or b!996117 b!996116) bm!42231))

(declare-fun m!923409 () Bool)

(assert (=> b!996118 m!923409))

(assert (=> b!996118 m!923409))

(declare-fun m!923411 () Bool)

(assert (=> b!996118 m!923411))

(assert (=> bm!42231 m!923409))

(declare-fun m!923413 () Bool)

(assert (=> bm!42231 m!923413))

(assert (=> b!996119 m!923409))

(assert (=> b!996119 m!923409))

(declare-fun m!923415 () Bool)

(assert (=> b!996119 m!923415))

(assert (=> b!996120 m!923409))

(assert (=> b!996120 m!923409))

(assert (=> b!996120 m!923415))

(assert (=> b!996016 d!118923))

(declare-fun d!118925 () Bool)

(declare-fun lt!441138 () (_ BitVec 32))

(declare-fun lt!441137 () (_ BitVec 32))

(assert (=> d!118925 (= lt!441138 (bvmul (bvxor lt!441137 (bvlshr lt!441137 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!118925 (= lt!441137 ((_ extract 31 0) (bvand (bvxor (select (arr!30330 a!3219) j!170) (bvlshr (select (arr!30330 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!118925 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!666409 (let ((h!22292 ((_ extract 31 0) (bvand (bvxor (select (arr!30330 a!3219) j!170) (bvlshr (select (arr!30330 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!86882 (bvmul (bvxor h!22292 (bvlshr h!22292 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!86882 (bvlshr x!86882 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!666409 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!666409 #b00000000000000000000000000000000))))))

(assert (=> d!118925 (= (toIndex!0 (select (arr!30330 a!3219) j!170) mask!3464) (bvand (bvxor lt!441138 (bvlshr lt!441138 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!996021 d!118925))

(declare-fun d!118935 () Bool)

(assert (=> d!118935 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86000 d!118935))

(declare-fun d!118943 () Bool)

(assert (=> d!118943 (= (array_inv!23320 a!3219) (bvsge (size!30833 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86000 d!118943))

(declare-fun d!118945 () Bool)

(assert (=> d!118945 (= (validKeyInArray!0 (select (arr!30330 a!3219) j!170)) (and (not (= (select (arr!30330 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30330 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!996022 d!118945))

(declare-fun d!118947 () Bool)

(declare-fun res!666438 () Bool)

(declare-fun e!562114 () Bool)

(assert (=> d!118947 (=> res!666438 e!562114)))

(assert (=> d!118947 (= res!666438 (= (select (arr!30330 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!118947 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!562114)))

(declare-fun b!996162 () Bool)

(declare-fun e!562115 () Bool)

(assert (=> b!996162 (= e!562114 e!562115)))

(declare-fun res!666439 () Bool)

(assert (=> b!996162 (=> (not res!666439) (not e!562115))))

(assert (=> b!996162 (= res!666439 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30833 a!3219)))))

(declare-fun b!996163 () Bool)

(assert (=> b!996163 (= e!562115 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118947 (not res!666438)) b!996162))

(assert (= (and b!996162 res!666439) b!996163))

(assert (=> d!118947 m!923409))

(declare-fun m!923447 () Bool)

(assert (=> b!996163 m!923447))

(assert (=> b!996019 d!118947))

(declare-fun bm!42238 () Bool)

(declare-fun call!42241 () Bool)

(assert (=> bm!42238 (= call!42241 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!996172 () Bool)

(declare-fun e!562124 () Bool)

(declare-fun e!562122 () Bool)

(assert (=> b!996172 (= e!562124 e!562122)))

(declare-fun c!101007 () Bool)

(assert (=> b!996172 (= c!101007 (validKeyInArray!0 (select (arr!30330 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!996173 () Bool)

(declare-fun e!562123 () Bool)

(assert (=> b!996173 (= e!562123 call!42241)))

(declare-fun d!118949 () Bool)

(declare-fun res!666444 () Bool)

(assert (=> d!118949 (=> res!666444 e!562124)))

(assert (=> d!118949 (= res!666444 (bvsge #b00000000000000000000000000000000 (size!30833 a!3219)))))

(assert (=> d!118949 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!562124)))

(declare-fun b!996174 () Bool)

(assert (=> b!996174 (= e!562122 call!42241)))

(declare-fun b!996175 () Bool)

