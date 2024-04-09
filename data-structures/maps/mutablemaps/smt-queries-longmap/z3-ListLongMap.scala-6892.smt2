; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86640 () Bool)

(assert start!86640)

(declare-fun b!1004404 () Bool)

(declare-fun res!674044 () Bool)

(declare-fun e!565621 () Bool)

(assert (=> b!1004404 (=> (not res!674044) (not e!565621))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004404 (= res!674044 (validKeyInArray!0 k0!2224))))

(declare-fun b!1004405 () Bool)

(declare-fun e!565622 () Bool)

(declare-fun e!565620 () Bool)

(assert (=> b!1004405 (= e!565622 e!565620)))

(declare-fun res!674043 () Bool)

(assert (=> b!1004405 (=> (not res!674043) (not e!565620))))

(declare-datatypes ((SeekEntryResult!9450 0))(
  ( (MissingZero!9450 (index!40170 (_ BitVec 32))) (Found!9450 (index!40171 (_ BitVec 32))) (Intermediate!9450 (undefined!10262 Bool) (index!40172 (_ BitVec 32)) (x!87599 (_ BitVec 32))) (Undefined!9450) (MissingVacant!9450 (index!40173 (_ BitVec 32))) )
))
(declare-fun lt!444170 () SeekEntryResult!9450)

(declare-fun lt!444171 () SeekEntryResult!9450)

(assert (=> b!1004405 (= res!674043 (= lt!444170 lt!444171))))

(declare-datatypes ((array!63393 0))(
  ( (array!63394 (arr!30518 (Array (_ BitVec 32) (_ BitVec 64))) (size!31021 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63393)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63393 (_ BitVec 32)) SeekEntryResult!9450)

(assert (=> b!1004405 (= lt!444170 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30518 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004406 () Bool)

(declare-fun res!674050 () Bool)

(assert (=> b!1004406 (=> (not res!674050) (not e!565621))))

(declare-fun arrayContainsKey!0 (array!63393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004406 (= res!674050 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1004407 () Bool)

(declare-fun e!565619 () Bool)

(assert (=> b!1004407 (= e!565619 e!565622)))

(declare-fun res!674045 () Bool)

(assert (=> b!1004407 (=> (not res!674045) (not e!565622))))

(declare-fun lt!444168 () SeekEntryResult!9450)

(assert (=> b!1004407 (= res!674045 (= lt!444168 lt!444171))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1004407 (= lt!444171 (Intermediate!9450 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004407 (= lt!444168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30518 a!3219) j!170) mask!3464) (select (arr!30518 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!674041 () Bool)

(assert (=> start!86640 (=> (not res!674041) (not e!565621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86640 (= res!674041 (validMask!0 mask!3464))))

(assert (=> start!86640 e!565621))

(declare-fun array_inv!23508 (array!63393) Bool)

(assert (=> start!86640 (array_inv!23508 a!3219)))

(assert (=> start!86640 true))

(declare-fun b!1004408 () Bool)

(declare-fun res!674046 () Bool)

(assert (=> b!1004408 (=> (not res!674046) (not e!565619))))

(declare-datatypes ((List!21320 0))(
  ( (Nil!21317) (Cons!21316 (h!22493 (_ BitVec 64)) (t!30329 List!21320)) )
))
(declare-fun arrayNoDuplicates!0 (array!63393 (_ BitVec 32) List!21320) Bool)

(assert (=> b!1004408 (= res!674046 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21317))))

(declare-fun b!1004409 () Bool)

(declare-fun e!565617 () Bool)

(assert (=> b!1004409 (= e!565617 (and (= index!1507 resIndex!38) (not (= x!1245 resX!38))))))

(declare-fun b!1004410 () Bool)

(declare-fun res!674040 () Bool)

(assert (=> b!1004410 (=> (not res!674040) (not e!565621))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1004410 (= res!674040 (and (= (size!31021 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31021 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31021 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1004411 () Bool)

(declare-fun res!674038 () Bool)

(assert (=> b!1004411 (=> (not res!674038) (not e!565619))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63393 (_ BitVec 32)) Bool)

(assert (=> b!1004411 (= res!674038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004412 () Bool)

(declare-fun res!674039 () Bool)

(assert (=> b!1004412 (=> (not res!674039) (not e!565617))))

(declare-fun lt!444166 () array!63393)

(declare-fun lt!444169 () (_ BitVec 64))

(assert (=> b!1004412 (= res!674039 (not (= lt!444170 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444169 lt!444166 mask!3464))))))

(declare-fun b!1004413 () Bool)

(assert (=> b!1004413 (= e!565620 e!565617)))

(declare-fun res!674049 () Bool)

(assert (=> b!1004413 (=> (not res!674049) (not e!565617))))

(assert (=> b!1004413 (= res!674049 (not (= lt!444168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444169 mask!3464) lt!444169 lt!444166 mask!3464))))))

(assert (=> b!1004413 (= lt!444169 (select (store (arr!30518 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1004413 (= lt!444166 (array!63394 (store (arr!30518 a!3219) i!1194 k0!2224) (size!31021 a!3219)))))

(declare-fun b!1004414 () Bool)

(declare-fun res!674048 () Bool)

(assert (=> b!1004414 (=> (not res!674048) (not e!565619))))

(assert (=> b!1004414 (= res!674048 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31021 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31021 a!3219))))))

(declare-fun b!1004415 () Bool)

(declare-fun res!674042 () Bool)

(assert (=> b!1004415 (=> (not res!674042) (not e!565621))))

(assert (=> b!1004415 (= res!674042 (validKeyInArray!0 (select (arr!30518 a!3219) j!170)))))

(declare-fun b!1004416 () Bool)

(assert (=> b!1004416 (= e!565621 e!565619)))

(declare-fun res!674047 () Bool)

(assert (=> b!1004416 (=> (not res!674047) (not e!565619))))

(declare-fun lt!444167 () SeekEntryResult!9450)

(assert (=> b!1004416 (= res!674047 (or (= lt!444167 (MissingVacant!9450 i!1194)) (= lt!444167 (MissingZero!9450 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63393 (_ BitVec 32)) SeekEntryResult!9450)

(assert (=> b!1004416 (= lt!444167 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!86640 res!674041) b!1004410))

(assert (= (and b!1004410 res!674040) b!1004415))

(assert (= (and b!1004415 res!674042) b!1004404))

(assert (= (and b!1004404 res!674044) b!1004406))

(assert (= (and b!1004406 res!674050) b!1004416))

(assert (= (and b!1004416 res!674047) b!1004411))

(assert (= (and b!1004411 res!674038) b!1004408))

(assert (= (and b!1004408 res!674046) b!1004414))

(assert (= (and b!1004414 res!674048) b!1004407))

(assert (= (and b!1004407 res!674045) b!1004405))

(assert (= (and b!1004405 res!674043) b!1004413))

(assert (= (and b!1004413 res!674049) b!1004412))

(assert (= (and b!1004412 res!674039) b!1004409))

(declare-fun m!930055 () Bool)

(assert (=> b!1004411 m!930055))

(declare-fun m!930057 () Bool)

(assert (=> b!1004407 m!930057))

(assert (=> b!1004407 m!930057))

(declare-fun m!930059 () Bool)

(assert (=> b!1004407 m!930059))

(assert (=> b!1004407 m!930059))

(assert (=> b!1004407 m!930057))

(declare-fun m!930061 () Bool)

(assert (=> b!1004407 m!930061))

(declare-fun m!930063 () Bool)

(assert (=> b!1004406 m!930063))

(declare-fun m!930065 () Bool)

(assert (=> b!1004412 m!930065))

(declare-fun m!930067 () Bool)

(assert (=> b!1004416 m!930067))

(declare-fun m!930069 () Bool)

(assert (=> b!1004408 m!930069))

(assert (=> b!1004415 m!930057))

(assert (=> b!1004415 m!930057))

(declare-fun m!930071 () Bool)

(assert (=> b!1004415 m!930071))

(assert (=> b!1004405 m!930057))

(assert (=> b!1004405 m!930057))

(declare-fun m!930073 () Bool)

(assert (=> b!1004405 m!930073))

(declare-fun m!930075 () Bool)

(assert (=> b!1004404 m!930075))

(declare-fun m!930077 () Bool)

(assert (=> b!1004413 m!930077))

(assert (=> b!1004413 m!930077))

(declare-fun m!930079 () Bool)

(assert (=> b!1004413 m!930079))

(declare-fun m!930081 () Bool)

(assert (=> b!1004413 m!930081))

(declare-fun m!930083 () Bool)

(assert (=> b!1004413 m!930083))

(declare-fun m!930085 () Bool)

(assert (=> start!86640 m!930085))

(declare-fun m!930087 () Bool)

(assert (=> start!86640 m!930087))

(check-sat (not b!1004416) (not b!1004407) (not b!1004408) (not b!1004413) (not b!1004404) (not b!1004415) (not b!1004412) (not b!1004411) (not start!86640) (not b!1004406) (not b!1004405))
(check-sat)
(get-model)

(declare-fun d!119347 () Bool)

(assert (=> d!119347 (= (validKeyInArray!0 (select (arr!30518 a!3219) j!170)) (and (not (= (select (arr!30518 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30518 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004415 d!119347))

(declare-fun d!119349 () Bool)

(assert (=> d!119349 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004404 d!119349))

(declare-fun b!1004474 () Bool)

(declare-fun lt!444194 () SeekEntryResult!9450)

(assert (=> b!1004474 (and (bvsge (index!40172 lt!444194) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444194) (size!31021 a!3219)))))

(declare-fun e!565653 () Bool)

(assert (=> b!1004474 (= e!565653 (= (select (arr!30518 a!3219) (index!40172 lt!444194)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004475 () Bool)

(assert (=> b!1004475 (and (bvsge (index!40172 lt!444194) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444194) (size!31021 a!3219)))))

(declare-fun res!674096 () Bool)

(assert (=> b!1004475 (= res!674096 (= (select (arr!30518 a!3219) (index!40172 lt!444194)) (select (arr!30518 a!3219) j!170)))))

(assert (=> b!1004475 (=> res!674096 e!565653)))

(declare-fun e!565655 () Bool)

(assert (=> b!1004475 (= e!565655 e!565653)))

(declare-fun b!1004476 () Bool)

(declare-fun e!565651 () SeekEntryResult!9450)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004476 (= e!565651 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30518 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004477 () Bool)

(declare-fun e!565652 () Bool)

(assert (=> b!1004477 (= e!565652 (bvsge (x!87599 lt!444194) #b01111111111111111111111111111110))))

(declare-fun d!119351 () Bool)

(assert (=> d!119351 e!565652))

(declare-fun c!101338 () Bool)

(get-info :version)

(assert (=> d!119351 (= c!101338 (and ((_ is Intermediate!9450) lt!444194) (undefined!10262 lt!444194)))))

(declare-fun e!565654 () SeekEntryResult!9450)

(assert (=> d!119351 (= lt!444194 e!565654)))

(declare-fun c!101339 () Bool)

(assert (=> d!119351 (= c!101339 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!444195 () (_ BitVec 64))

(assert (=> d!119351 (= lt!444195 (select (arr!30518 a!3219) index!1507))))

(assert (=> d!119351 (validMask!0 mask!3464)))

(assert (=> d!119351 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30518 a!3219) j!170) a!3219 mask!3464) lt!444194)))

(declare-fun b!1004478 () Bool)

(assert (=> b!1004478 (and (bvsge (index!40172 lt!444194) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444194) (size!31021 a!3219)))))

(declare-fun res!674097 () Bool)

(assert (=> b!1004478 (= res!674097 (= (select (arr!30518 a!3219) (index!40172 lt!444194)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1004478 (=> res!674097 e!565653)))

(declare-fun b!1004479 () Bool)

(assert (=> b!1004479 (= e!565651 (Intermediate!9450 false index!1507 x!1245))))

(declare-fun b!1004480 () Bool)

(assert (=> b!1004480 (= e!565654 (Intermediate!9450 true index!1507 x!1245))))

(declare-fun b!1004481 () Bool)

(assert (=> b!1004481 (= e!565652 e!565655)))

(declare-fun res!674098 () Bool)

(assert (=> b!1004481 (= res!674098 (and ((_ is Intermediate!9450) lt!444194) (not (undefined!10262 lt!444194)) (bvslt (x!87599 lt!444194) #b01111111111111111111111111111110) (bvsge (x!87599 lt!444194) #b00000000000000000000000000000000) (bvsge (x!87599 lt!444194) x!1245)))))

(assert (=> b!1004481 (=> (not res!674098) (not e!565655))))

(declare-fun b!1004482 () Bool)

(assert (=> b!1004482 (= e!565654 e!565651)))

(declare-fun c!101340 () Bool)

(assert (=> b!1004482 (= c!101340 (or (= lt!444195 (select (arr!30518 a!3219) j!170)) (= (bvadd lt!444195 lt!444195) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!119351 c!101339) b!1004480))

(assert (= (and d!119351 (not c!101339)) b!1004482))

(assert (= (and b!1004482 c!101340) b!1004479))

(assert (= (and b!1004482 (not c!101340)) b!1004476))

(assert (= (and d!119351 c!101338) b!1004477))

(assert (= (and d!119351 (not c!101338)) b!1004481))

(assert (= (and b!1004481 res!674098) b!1004475))

(assert (= (and b!1004475 (not res!674096)) b!1004478))

(assert (= (and b!1004478 (not res!674097)) b!1004474))

(declare-fun m!930123 () Bool)

(assert (=> b!1004474 m!930123))

(declare-fun m!930125 () Bool)

(assert (=> d!119351 m!930125))

(assert (=> d!119351 m!930085))

(assert (=> b!1004475 m!930123))

(declare-fun m!930127 () Bool)

(assert (=> b!1004476 m!930127))

(assert (=> b!1004476 m!930127))

(assert (=> b!1004476 m!930057))

(declare-fun m!930129 () Bool)

(assert (=> b!1004476 m!930129))

(assert (=> b!1004478 m!930123))

(assert (=> b!1004405 d!119351))

(declare-fun b!1004502 () Bool)

(declare-fun e!565672 () Bool)

(declare-fun call!42318 () Bool)

(assert (=> b!1004502 (= e!565672 call!42318)))

(declare-fun bm!42315 () Bool)

(assert (=> bm!42315 (= call!42318 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1004503 () Bool)

(declare-fun e!565670 () Bool)

(assert (=> b!1004503 (= e!565670 call!42318)))

(declare-fun b!1004504 () Bool)

(assert (=> b!1004504 (= e!565670 e!565672)))

(declare-fun lt!444202 () (_ BitVec 64))

(assert (=> b!1004504 (= lt!444202 (select (arr!30518 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32942 0))(
  ( (Unit!32943) )
))
(declare-fun lt!444204 () Unit!32942)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63393 (_ BitVec 64) (_ BitVec 32)) Unit!32942)

(assert (=> b!1004504 (= lt!444204 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!444202 #b00000000000000000000000000000000))))

(assert (=> b!1004504 (arrayContainsKey!0 a!3219 lt!444202 #b00000000000000000000000000000000)))

(declare-fun lt!444203 () Unit!32942)

(assert (=> b!1004504 (= lt!444203 lt!444204)))

(declare-fun res!674110 () Bool)

(assert (=> b!1004504 (= res!674110 (= (seekEntryOrOpen!0 (select (arr!30518 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9450 #b00000000000000000000000000000000)))))

(assert (=> b!1004504 (=> (not res!674110) (not e!565672))))

(declare-fun d!119353 () Bool)

(declare-fun res!674109 () Bool)

(declare-fun e!565671 () Bool)

(assert (=> d!119353 (=> res!674109 e!565671)))

(assert (=> d!119353 (= res!674109 (bvsge #b00000000000000000000000000000000 (size!31021 a!3219)))))

(assert (=> d!119353 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!565671)))

(declare-fun b!1004501 () Bool)

(assert (=> b!1004501 (= e!565671 e!565670)))

(declare-fun c!101345 () Bool)

(assert (=> b!1004501 (= c!101345 (validKeyInArray!0 (select (arr!30518 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119353 (not res!674109)) b!1004501))

(assert (= (and b!1004501 c!101345) b!1004504))

(assert (= (and b!1004501 (not c!101345)) b!1004503))

(assert (= (and b!1004504 res!674110) b!1004502))

(assert (= (or b!1004502 b!1004503) bm!42315))

(declare-fun m!930131 () Bool)

(assert (=> bm!42315 m!930131))

(declare-fun m!930133 () Bool)

(assert (=> b!1004504 m!930133))

(declare-fun m!930135 () Bool)

(assert (=> b!1004504 m!930135))

(declare-fun m!930137 () Bool)

(assert (=> b!1004504 m!930137))

(assert (=> b!1004504 m!930133))

(declare-fun m!930139 () Bool)

(assert (=> b!1004504 m!930139))

(assert (=> b!1004501 m!930133))

(assert (=> b!1004501 m!930133))

(declare-fun m!930141 () Bool)

(assert (=> b!1004501 m!930141))

(assert (=> b!1004411 d!119353))

(declare-fun b!1004546 () Bool)

(declare-fun c!101361 () Bool)

(declare-fun lt!444216 () (_ BitVec 64))

(assert (=> b!1004546 (= c!101361 (= lt!444216 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565700 () SeekEntryResult!9450)

(declare-fun e!565701 () SeekEntryResult!9450)

(assert (=> b!1004546 (= e!565700 e!565701)))

(declare-fun b!1004547 () Bool)

(declare-fun lt!444217 () SeekEntryResult!9450)

(assert (=> b!1004547 (= e!565701 (MissingZero!9450 (index!40172 lt!444217)))))

(declare-fun b!1004548 () Bool)

(assert (=> b!1004548 (= e!565700 (Found!9450 (index!40172 lt!444217)))))

(declare-fun b!1004549 () Bool)

(declare-fun e!565699 () SeekEntryResult!9450)

(assert (=> b!1004549 (= e!565699 Undefined!9450)))

(declare-fun b!1004550 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63393 (_ BitVec 32)) SeekEntryResult!9450)

(assert (=> b!1004550 (= e!565701 (seekKeyOrZeroReturnVacant!0 (x!87599 lt!444217) (index!40172 lt!444217) (index!40172 lt!444217) k0!2224 a!3219 mask!3464))))

(declare-fun d!119359 () Bool)

(declare-fun lt!444215 () SeekEntryResult!9450)

(assert (=> d!119359 (and (or ((_ is Undefined!9450) lt!444215) (not ((_ is Found!9450) lt!444215)) (and (bvsge (index!40171 lt!444215) #b00000000000000000000000000000000) (bvslt (index!40171 lt!444215) (size!31021 a!3219)))) (or ((_ is Undefined!9450) lt!444215) ((_ is Found!9450) lt!444215) (not ((_ is MissingZero!9450) lt!444215)) (and (bvsge (index!40170 lt!444215) #b00000000000000000000000000000000) (bvslt (index!40170 lt!444215) (size!31021 a!3219)))) (or ((_ is Undefined!9450) lt!444215) ((_ is Found!9450) lt!444215) ((_ is MissingZero!9450) lt!444215) (not ((_ is MissingVacant!9450) lt!444215)) (and (bvsge (index!40173 lt!444215) #b00000000000000000000000000000000) (bvslt (index!40173 lt!444215) (size!31021 a!3219)))) (or ((_ is Undefined!9450) lt!444215) (ite ((_ is Found!9450) lt!444215) (= (select (arr!30518 a!3219) (index!40171 lt!444215)) k0!2224) (ite ((_ is MissingZero!9450) lt!444215) (= (select (arr!30518 a!3219) (index!40170 lt!444215)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9450) lt!444215) (= (select (arr!30518 a!3219) (index!40173 lt!444215)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119359 (= lt!444215 e!565699)))

(declare-fun c!101360 () Bool)

(assert (=> d!119359 (= c!101360 (and ((_ is Intermediate!9450) lt!444217) (undefined!10262 lt!444217)))))

(assert (=> d!119359 (= lt!444217 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!119359 (validMask!0 mask!3464)))

(assert (=> d!119359 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!444215)))

(declare-fun b!1004551 () Bool)

(assert (=> b!1004551 (= e!565699 e!565700)))

(assert (=> b!1004551 (= lt!444216 (select (arr!30518 a!3219) (index!40172 lt!444217)))))

(declare-fun c!101359 () Bool)

(assert (=> b!1004551 (= c!101359 (= lt!444216 k0!2224))))

(assert (= (and d!119359 c!101360) b!1004549))

(assert (= (and d!119359 (not c!101360)) b!1004551))

(assert (= (and b!1004551 c!101359) b!1004548))

(assert (= (and b!1004551 (not c!101359)) b!1004546))

(assert (= (and b!1004546 c!101361) b!1004547))

(assert (= (and b!1004546 (not c!101361)) b!1004550))

(declare-fun m!930153 () Bool)

(assert (=> b!1004550 m!930153))

(declare-fun m!930155 () Bool)

(assert (=> d!119359 m!930155))

(declare-fun m!930157 () Bool)

(assert (=> d!119359 m!930157))

(assert (=> d!119359 m!930085))

(declare-fun m!930159 () Bool)

(assert (=> d!119359 m!930159))

(declare-fun m!930161 () Bool)

(assert (=> d!119359 m!930161))

(assert (=> d!119359 m!930159))

(declare-fun m!930163 () Bool)

(assert (=> d!119359 m!930163))

(declare-fun m!930165 () Bool)

(assert (=> b!1004551 m!930165))

(assert (=> b!1004416 d!119359))

(declare-fun d!119371 () Bool)

(declare-fun res!674134 () Bool)

(declare-fun e!565711 () Bool)

(assert (=> d!119371 (=> res!674134 e!565711)))

(assert (=> d!119371 (= res!674134 (= (select (arr!30518 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!119371 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!565711)))

(declare-fun b!1004565 () Bool)

(declare-fun e!565712 () Bool)

(assert (=> b!1004565 (= e!565711 e!565712)))

(declare-fun res!674135 () Bool)

(assert (=> b!1004565 (=> (not res!674135) (not e!565712))))

(assert (=> b!1004565 (= res!674135 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31021 a!3219)))))

(declare-fun b!1004566 () Bool)

(assert (=> b!1004566 (= e!565712 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119371 (not res!674134)) b!1004565))

(assert (= (and b!1004565 res!674135) b!1004566))

(assert (=> d!119371 m!930133))

(declare-fun m!930175 () Bool)

(assert (=> b!1004566 m!930175))

(assert (=> b!1004406 d!119371))

(declare-fun b!1004567 () Bool)

(declare-fun lt!444220 () SeekEntryResult!9450)

(assert (=> b!1004567 (and (bvsge (index!40172 lt!444220) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444220) (size!31021 a!3219)))))

(declare-fun e!565715 () Bool)

(assert (=> b!1004567 (= e!565715 (= (select (arr!30518 a!3219) (index!40172 lt!444220)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004568 () Bool)

(assert (=> b!1004568 (and (bvsge (index!40172 lt!444220) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444220) (size!31021 a!3219)))))

(declare-fun res!674136 () Bool)

(assert (=> b!1004568 (= res!674136 (= (select (arr!30518 a!3219) (index!40172 lt!444220)) (select (arr!30518 a!3219) j!170)))))

(assert (=> b!1004568 (=> res!674136 e!565715)))

(declare-fun e!565717 () Bool)

(assert (=> b!1004568 (= e!565717 e!565715)))

(declare-fun b!1004569 () Bool)

(declare-fun e!565713 () SeekEntryResult!9450)

(assert (=> b!1004569 (= e!565713 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30518 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30518 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004570 () Bool)

(declare-fun e!565714 () Bool)

(assert (=> b!1004570 (= e!565714 (bvsge (x!87599 lt!444220) #b01111111111111111111111111111110))))

(declare-fun d!119375 () Bool)

(assert (=> d!119375 e!565714))

(declare-fun c!101365 () Bool)

(assert (=> d!119375 (= c!101365 (and ((_ is Intermediate!9450) lt!444220) (undefined!10262 lt!444220)))))

(declare-fun e!565716 () SeekEntryResult!9450)

(assert (=> d!119375 (= lt!444220 e!565716)))

(declare-fun c!101366 () Bool)

(assert (=> d!119375 (= c!101366 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!444221 () (_ BitVec 64))

(assert (=> d!119375 (= lt!444221 (select (arr!30518 a!3219) (toIndex!0 (select (arr!30518 a!3219) j!170) mask!3464)))))

(assert (=> d!119375 (validMask!0 mask!3464)))

(assert (=> d!119375 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30518 a!3219) j!170) mask!3464) (select (arr!30518 a!3219) j!170) a!3219 mask!3464) lt!444220)))

(declare-fun b!1004571 () Bool)

(assert (=> b!1004571 (and (bvsge (index!40172 lt!444220) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444220) (size!31021 a!3219)))))

(declare-fun res!674137 () Bool)

(assert (=> b!1004571 (= res!674137 (= (select (arr!30518 a!3219) (index!40172 lt!444220)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1004571 (=> res!674137 e!565715)))

(declare-fun b!1004572 () Bool)

(assert (=> b!1004572 (= e!565713 (Intermediate!9450 false (toIndex!0 (select (arr!30518 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004573 () Bool)

(assert (=> b!1004573 (= e!565716 (Intermediate!9450 true (toIndex!0 (select (arr!30518 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004574 () Bool)

(assert (=> b!1004574 (= e!565714 e!565717)))

(declare-fun res!674138 () Bool)

(assert (=> b!1004574 (= res!674138 (and ((_ is Intermediate!9450) lt!444220) (not (undefined!10262 lt!444220)) (bvslt (x!87599 lt!444220) #b01111111111111111111111111111110) (bvsge (x!87599 lt!444220) #b00000000000000000000000000000000) (bvsge (x!87599 lt!444220) #b00000000000000000000000000000000)))))

(assert (=> b!1004574 (=> (not res!674138) (not e!565717))))

(declare-fun b!1004575 () Bool)

(assert (=> b!1004575 (= e!565716 e!565713)))

(declare-fun c!101367 () Bool)

(assert (=> b!1004575 (= c!101367 (or (= lt!444221 (select (arr!30518 a!3219) j!170)) (= (bvadd lt!444221 lt!444221) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!119375 c!101366) b!1004573))

(assert (= (and d!119375 (not c!101366)) b!1004575))

(assert (= (and b!1004575 c!101367) b!1004572))

(assert (= (and b!1004575 (not c!101367)) b!1004569))

(assert (= (and d!119375 c!101365) b!1004570))

(assert (= (and d!119375 (not c!101365)) b!1004574))

(assert (= (and b!1004574 res!674138) b!1004568))

(assert (= (and b!1004568 (not res!674136)) b!1004571))

(assert (= (and b!1004571 (not res!674137)) b!1004567))

(declare-fun m!930177 () Bool)

(assert (=> b!1004567 m!930177))

(assert (=> d!119375 m!930059))

(declare-fun m!930179 () Bool)

(assert (=> d!119375 m!930179))

(assert (=> d!119375 m!930085))

(assert (=> b!1004568 m!930177))

(assert (=> b!1004569 m!930059))

(declare-fun m!930181 () Bool)

(assert (=> b!1004569 m!930181))

(assert (=> b!1004569 m!930181))

(assert (=> b!1004569 m!930057))

(declare-fun m!930183 () Bool)

(assert (=> b!1004569 m!930183))

(assert (=> b!1004571 m!930177))

(assert (=> b!1004407 d!119375))

(declare-fun d!119377 () Bool)

(declare-fun lt!444233 () (_ BitVec 32))

(declare-fun lt!444232 () (_ BitVec 32))

(assert (=> d!119377 (= lt!444233 (bvmul (bvxor lt!444232 (bvlshr lt!444232 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119377 (= lt!444232 ((_ extract 31 0) (bvand (bvxor (select (arr!30518 a!3219) j!170) (bvlshr (select (arr!30518 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119377 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674139 (let ((h!22496 ((_ extract 31 0) (bvand (bvxor (select (arr!30518 a!3219) j!170) (bvlshr (select (arr!30518 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87604 (bvmul (bvxor h!22496 (bvlshr h!22496 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87604 (bvlshr x!87604 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674139 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674139 #b00000000000000000000000000000000))))))

(assert (=> d!119377 (= (toIndex!0 (select (arr!30518 a!3219) j!170) mask!3464) (bvand (bvxor lt!444233 (bvlshr lt!444233 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004407 d!119377))

(declare-fun b!1004576 () Bool)

(declare-fun lt!444234 () SeekEntryResult!9450)

(assert (=> b!1004576 (and (bvsge (index!40172 lt!444234) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444234) (size!31021 lt!444166)))))

(declare-fun e!565720 () Bool)

(assert (=> b!1004576 (= e!565720 (= (select (arr!30518 lt!444166) (index!40172 lt!444234)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004577 () Bool)

(assert (=> b!1004577 (and (bvsge (index!40172 lt!444234) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444234) (size!31021 lt!444166)))))

(declare-fun res!674140 () Bool)

(assert (=> b!1004577 (= res!674140 (= (select (arr!30518 lt!444166) (index!40172 lt!444234)) lt!444169))))

(assert (=> b!1004577 (=> res!674140 e!565720)))

(declare-fun e!565722 () Bool)

(assert (=> b!1004577 (= e!565722 e!565720)))

(declare-fun e!565718 () SeekEntryResult!9450)

(declare-fun b!1004578 () Bool)

(assert (=> b!1004578 (= e!565718 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!444169 lt!444166 mask!3464))))

(declare-fun b!1004579 () Bool)

(declare-fun e!565719 () Bool)

(assert (=> b!1004579 (= e!565719 (bvsge (x!87599 lt!444234) #b01111111111111111111111111111110))))

(declare-fun d!119381 () Bool)

(assert (=> d!119381 e!565719))

(declare-fun c!101368 () Bool)

(assert (=> d!119381 (= c!101368 (and ((_ is Intermediate!9450) lt!444234) (undefined!10262 lt!444234)))))

(declare-fun e!565721 () SeekEntryResult!9450)

(assert (=> d!119381 (= lt!444234 e!565721)))

(declare-fun c!101369 () Bool)

(assert (=> d!119381 (= c!101369 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!444235 () (_ BitVec 64))

(assert (=> d!119381 (= lt!444235 (select (arr!30518 lt!444166) index!1507))))

(assert (=> d!119381 (validMask!0 mask!3464)))

(assert (=> d!119381 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444169 lt!444166 mask!3464) lt!444234)))

(declare-fun b!1004580 () Bool)

(assert (=> b!1004580 (and (bvsge (index!40172 lt!444234) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444234) (size!31021 lt!444166)))))

(declare-fun res!674141 () Bool)

(assert (=> b!1004580 (= res!674141 (= (select (arr!30518 lt!444166) (index!40172 lt!444234)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1004580 (=> res!674141 e!565720)))

(declare-fun b!1004581 () Bool)

(assert (=> b!1004581 (= e!565718 (Intermediate!9450 false index!1507 x!1245))))

(declare-fun b!1004582 () Bool)

(assert (=> b!1004582 (= e!565721 (Intermediate!9450 true index!1507 x!1245))))

(declare-fun b!1004583 () Bool)

(assert (=> b!1004583 (= e!565719 e!565722)))

(declare-fun res!674142 () Bool)

(assert (=> b!1004583 (= res!674142 (and ((_ is Intermediate!9450) lt!444234) (not (undefined!10262 lt!444234)) (bvslt (x!87599 lt!444234) #b01111111111111111111111111111110) (bvsge (x!87599 lt!444234) #b00000000000000000000000000000000) (bvsge (x!87599 lt!444234) x!1245)))))

(assert (=> b!1004583 (=> (not res!674142) (not e!565722))))

(declare-fun b!1004584 () Bool)

(assert (=> b!1004584 (= e!565721 e!565718)))

(declare-fun c!101370 () Bool)

(assert (=> b!1004584 (= c!101370 (or (= lt!444235 lt!444169) (= (bvadd lt!444235 lt!444235) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!119381 c!101369) b!1004582))

(assert (= (and d!119381 (not c!101369)) b!1004584))

(assert (= (and b!1004584 c!101370) b!1004581))

(assert (= (and b!1004584 (not c!101370)) b!1004578))

(assert (= (and d!119381 c!101368) b!1004579))

(assert (= (and d!119381 (not c!101368)) b!1004583))

(assert (= (and b!1004583 res!674142) b!1004577))

(assert (= (and b!1004577 (not res!674140)) b!1004580))

(assert (= (and b!1004580 (not res!674141)) b!1004576))

(declare-fun m!930185 () Bool)

(assert (=> b!1004576 m!930185))

(declare-fun m!930187 () Bool)

(assert (=> d!119381 m!930187))

(assert (=> d!119381 m!930085))

(assert (=> b!1004577 m!930185))

(assert (=> b!1004578 m!930127))

(assert (=> b!1004578 m!930127))

(declare-fun m!930189 () Bool)

(assert (=> b!1004578 m!930189))

(assert (=> b!1004580 m!930185))

(assert (=> b!1004412 d!119381))

(declare-fun b!1004597 () Bool)

(declare-fun lt!444240 () SeekEntryResult!9450)

(assert (=> b!1004597 (and (bvsge (index!40172 lt!444240) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444240) (size!31021 lt!444166)))))

(declare-fun e!565733 () Bool)

(assert (=> b!1004597 (= e!565733 (= (select (arr!30518 lt!444166) (index!40172 lt!444240)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004598 () Bool)

(assert (=> b!1004598 (and (bvsge (index!40172 lt!444240) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444240) (size!31021 lt!444166)))))

(declare-fun res!674149 () Bool)

(assert (=> b!1004598 (= res!674149 (= (select (arr!30518 lt!444166) (index!40172 lt!444240)) lt!444169))))

(assert (=> b!1004598 (=> res!674149 e!565733)))

(declare-fun e!565735 () Bool)

(assert (=> b!1004598 (= e!565735 e!565733)))

(declare-fun b!1004599 () Bool)

(declare-fun e!565731 () SeekEntryResult!9450)

(assert (=> b!1004599 (= e!565731 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!444169 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!444169 lt!444166 mask!3464))))

(declare-fun b!1004600 () Bool)

(declare-fun e!565732 () Bool)

(assert (=> b!1004600 (= e!565732 (bvsge (x!87599 lt!444240) #b01111111111111111111111111111110))))

(declare-fun d!119383 () Bool)

(assert (=> d!119383 e!565732))

(declare-fun c!101373 () Bool)

(assert (=> d!119383 (= c!101373 (and ((_ is Intermediate!9450) lt!444240) (undefined!10262 lt!444240)))))

(declare-fun e!565734 () SeekEntryResult!9450)

(assert (=> d!119383 (= lt!444240 e!565734)))

(declare-fun c!101374 () Bool)

(assert (=> d!119383 (= c!101374 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!444241 () (_ BitVec 64))

(assert (=> d!119383 (= lt!444241 (select (arr!30518 lt!444166) (toIndex!0 lt!444169 mask!3464)))))

(assert (=> d!119383 (validMask!0 mask!3464)))

(assert (=> d!119383 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444169 mask!3464) lt!444169 lt!444166 mask!3464) lt!444240)))

(declare-fun b!1004601 () Bool)

(assert (=> b!1004601 (and (bvsge (index!40172 lt!444240) #b00000000000000000000000000000000) (bvslt (index!40172 lt!444240) (size!31021 lt!444166)))))

(declare-fun res!674150 () Bool)

(assert (=> b!1004601 (= res!674150 (= (select (arr!30518 lt!444166) (index!40172 lt!444240)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1004601 (=> res!674150 e!565733)))

(declare-fun b!1004603 () Bool)

(assert (=> b!1004603 (= e!565731 (Intermediate!9450 false (toIndex!0 lt!444169 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004604 () Bool)

(assert (=> b!1004604 (= e!565734 (Intermediate!9450 true (toIndex!0 lt!444169 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004606 () Bool)

(assert (=> b!1004606 (= e!565732 e!565735)))

(declare-fun res!674151 () Bool)

(assert (=> b!1004606 (= res!674151 (and ((_ is Intermediate!9450) lt!444240) (not (undefined!10262 lt!444240)) (bvslt (x!87599 lt!444240) #b01111111111111111111111111111110) (bvsge (x!87599 lt!444240) #b00000000000000000000000000000000) (bvsge (x!87599 lt!444240) #b00000000000000000000000000000000)))))

(assert (=> b!1004606 (=> (not res!674151) (not e!565735))))

(declare-fun b!1004607 () Bool)

(assert (=> b!1004607 (= e!565734 e!565731)))

(declare-fun c!101375 () Bool)

(assert (=> b!1004607 (= c!101375 (or (= lt!444241 lt!444169) (= (bvadd lt!444241 lt!444241) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!119383 c!101374) b!1004604))

(assert (= (and d!119383 (not c!101374)) b!1004607))

(assert (= (and b!1004607 c!101375) b!1004603))

(assert (= (and b!1004607 (not c!101375)) b!1004599))

(assert (= (and d!119383 c!101373) b!1004600))

(assert (= (and d!119383 (not c!101373)) b!1004606))

(assert (= (and b!1004606 res!674151) b!1004598))

(assert (= (and b!1004598 (not res!674149)) b!1004601))

(assert (= (and b!1004601 (not res!674150)) b!1004597))

(declare-fun m!930191 () Bool)

(assert (=> b!1004597 m!930191))

(assert (=> d!119383 m!930077))

(declare-fun m!930193 () Bool)

(assert (=> d!119383 m!930193))

(assert (=> d!119383 m!930085))

(assert (=> b!1004598 m!930191))

(assert (=> b!1004599 m!930077))

(declare-fun m!930195 () Bool)

(assert (=> b!1004599 m!930195))

(assert (=> b!1004599 m!930195))

(declare-fun m!930197 () Bool)

(assert (=> b!1004599 m!930197))

(assert (=> b!1004601 m!930191))

(assert (=> b!1004413 d!119383))

(declare-fun d!119385 () Bool)

(declare-fun lt!444243 () (_ BitVec 32))

(declare-fun lt!444242 () (_ BitVec 32))

(assert (=> d!119385 (= lt!444243 (bvmul (bvxor lt!444242 (bvlshr lt!444242 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119385 (= lt!444242 ((_ extract 31 0) (bvand (bvxor lt!444169 (bvlshr lt!444169 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119385 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674139 (let ((h!22496 ((_ extract 31 0) (bvand (bvxor lt!444169 (bvlshr lt!444169 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87604 (bvmul (bvxor h!22496 (bvlshr h!22496 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87604 (bvlshr x!87604 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674139 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674139 #b00000000000000000000000000000000))))))

(assert (=> d!119385 (= (toIndex!0 lt!444169 mask!3464) (bvand (bvxor lt!444243 (bvlshr lt!444243 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004413 d!119385))

(declare-fun b!1004655 () Bool)

(declare-fun e!565769 () Bool)

(declare-fun e!565771 () Bool)

(assert (=> b!1004655 (= e!565769 e!565771)))

(declare-fun res!674176 () Bool)

(assert (=> b!1004655 (=> (not res!674176) (not e!565771))))

(declare-fun e!565768 () Bool)

(assert (=> b!1004655 (= res!674176 (not e!565768))))

(declare-fun res!674174 () Bool)

(assert (=> b!1004655 (=> (not res!674174) (not e!565768))))

(assert (=> b!1004655 (= res!674174 (validKeyInArray!0 (select (arr!30518 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1004656 () Bool)

(declare-fun e!565770 () Bool)

(declare-fun call!42325 () Bool)

(assert (=> b!1004656 (= e!565770 call!42325)))

(declare-fun b!1004657 () Bool)

(assert (=> b!1004657 (= e!565771 e!565770)))

(declare-fun c!101391 () Bool)

(assert (=> b!1004657 (= c!101391 (validKeyInArray!0 (select (arr!30518 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1004658 () Bool)

(declare-fun contains!5890 (List!21320 (_ BitVec 64)) Bool)

(assert (=> b!1004658 (= e!565768 (contains!5890 Nil!21317 (select (arr!30518 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1004659 () Bool)

(assert (=> b!1004659 (= e!565770 call!42325)))

(declare-fun d!119387 () Bool)

(declare-fun res!674175 () Bool)

(assert (=> d!119387 (=> res!674175 e!565769)))

(assert (=> d!119387 (= res!674175 (bvsge #b00000000000000000000000000000000 (size!31021 a!3219)))))

(assert (=> d!119387 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21317) e!565769)))

(declare-fun bm!42322 () Bool)

(assert (=> bm!42322 (= call!42325 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101391 (Cons!21316 (select (arr!30518 a!3219) #b00000000000000000000000000000000) Nil!21317) Nil!21317)))))

(assert (= (and d!119387 (not res!674175)) b!1004655))

(assert (= (and b!1004655 res!674174) b!1004658))

(assert (= (and b!1004655 res!674176) b!1004657))

(assert (= (and b!1004657 c!101391) b!1004656))

(assert (= (and b!1004657 (not c!101391)) b!1004659))

(assert (= (or b!1004656 b!1004659) bm!42322))

(assert (=> b!1004655 m!930133))

(assert (=> b!1004655 m!930133))

(assert (=> b!1004655 m!930141))

(assert (=> b!1004657 m!930133))

(assert (=> b!1004657 m!930133))

(assert (=> b!1004657 m!930141))

(assert (=> b!1004658 m!930133))

(assert (=> b!1004658 m!930133))

(declare-fun m!930223 () Bool)

(assert (=> b!1004658 m!930223))

(assert (=> bm!42322 m!930133))

(declare-fun m!930225 () Bool)

(assert (=> bm!42322 m!930225))

(assert (=> b!1004408 d!119387))

(declare-fun d!119399 () Bool)

(assert (=> d!119399 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86640 d!119399))

(declare-fun d!119411 () Bool)

(assert (=> d!119411 (= (array_inv!23508 a!3219) (bvsge (size!31021 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86640 d!119411))

(check-sat (not d!119375) (not d!119359) (not b!1004599) (not b!1004566) (not d!119381) (not b!1004569) (not bm!42315) (not d!119351) (not b!1004578) (not b!1004657) (not bm!42322) (not b!1004550) (not b!1004504) (not b!1004476) (not b!1004655) (not b!1004658) (not b!1004501) (not d!119383))
(check-sat)
