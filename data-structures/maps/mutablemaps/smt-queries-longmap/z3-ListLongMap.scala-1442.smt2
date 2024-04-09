; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27828 () Bool)

(assert start!27828)

(declare-fun b!286315 () Bool)

(declare-fun res!148505 () Bool)

(declare-fun e!181428 () Bool)

(assert (=> b!286315 (=> (not res!148505) (not e!181428))))

(declare-datatypes ((array!14338 0))(
  ( (array!14339 (arr!6803 (Array (_ BitVec 32) (_ BitVec 64))) (size!7155 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14338)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14338 (_ BitVec 32)) Bool)

(assert (=> b!286315 (= res!148505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286316 () Bool)

(assert (=> b!286316 (= e!181428 (and (bvsge mask!3809 #b00000000000000000000000000000000) (bvsgt mask!3809 #b00111111111111111111111111111111)))))

(declare-fun b!286317 () Bool)

(declare-fun res!148507 () Bool)

(declare-fun e!181429 () Bool)

(assert (=> b!286317 (=> (not res!148507) (not e!181429))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286317 (= res!148507 (validKeyInArray!0 k0!2524))))

(declare-fun b!286318 () Bool)

(assert (=> b!286318 (= e!181429 e!181428)))

(declare-fun res!148508 () Bool)

(assert (=> b!286318 (=> (not res!148508) (not e!181428))))

(declare-datatypes ((SeekEntryResult!1963 0))(
  ( (MissingZero!1963 (index!10022 (_ BitVec 32))) (Found!1963 (index!10023 (_ BitVec 32))) (Intermediate!1963 (undefined!2775 Bool) (index!10024 (_ BitVec 32)) (x!28211 (_ BitVec 32))) (Undefined!1963) (MissingVacant!1963 (index!10025 (_ BitVec 32))) )
))
(declare-fun lt!141086 () SeekEntryResult!1963)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286318 (= res!148508 (or (= lt!141086 (MissingZero!1963 i!1256)) (= lt!141086 (MissingVacant!1963 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14338 (_ BitVec 32)) SeekEntryResult!1963)

(assert (=> b!286318 (= lt!141086 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!148504 () Bool)

(assert (=> start!27828 (=> (not res!148504) (not e!181429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27828 (= res!148504 (validMask!0 mask!3809))))

(assert (=> start!27828 e!181429))

(assert (=> start!27828 true))

(declare-fun array_inv!4757 (array!14338) Bool)

(assert (=> start!27828 (array_inv!4757 a!3312)))

(declare-fun b!286319 () Bool)

(declare-fun res!148509 () Bool)

(assert (=> b!286319 (=> (not res!148509) (not e!181429))))

(assert (=> b!286319 (= res!148509 (and (= (size!7155 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7155 a!3312))))))

(declare-fun b!286320 () Bool)

(declare-fun res!148506 () Bool)

(assert (=> b!286320 (=> (not res!148506) (not e!181429))))

(declare-fun arrayContainsKey!0 (array!14338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286320 (= res!148506 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27828 res!148504) b!286319))

(assert (= (and b!286319 res!148509) b!286317))

(assert (= (and b!286317 res!148507) b!286320))

(assert (= (and b!286320 res!148506) b!286318))

(assert (= (and b!286318 res!148508) b!286315))

(assert (= (and b!286315 res!148505) b!286316))

(declare-fun m!301051 () Bool)

(assert (=> start!27828 m!301051))

(declare-fun m!301053 () Bool)

(assert (=> start!27828 m!301053))

(declare-fun m!301055 () Bool)

(assert (=> b!286315 m!301055))

(declare-fun m!301057 () Bool)

(assert (=> b!286320 m!301057))

(declare-fun m!301059 () Bool)

(assert (=> b!286317 m!301059))

(declare-fun m!301061 () Bool)

(assert (=> b!286318 m!301061))

(check-sat (not b!286315) (not b!286318) (not b!286317) (not start!27828) (not b!286320))
(check-sat)
(get-model)

(declare-fun b!286375 () Bool)

(declare-fun e!181468 () SeekEntryResult!1963)

(declare-fun lt!141106 () SeekEntryResult!1963)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14338 (_ BitVec 32)) SeekEntryResult!1963)

(assert (=> b!286375 (= e!181468 (seekKeyOrZeroReturnVacant!0 (x!28211 lt!141106) (index!10024 lt!141106) (index!10024 lt!141106) k0!2524 a!3312 mask!3809))))

(declare-fun b!286376 () Bool)

(declare-fun e!181467 () SeekEntryResult!1963)

(assert (=> b!286376 (= e!181467 Undefined!1963)))

(declare-fun b!286377 () Bool)

(declare-fun e!181466 () SeekEntryResult!1963)

(assert (=> b!286377 (= e!181466 (Found!1963 (index!10024 lt!141106)))))

(declare-fun b!286378 () Bool)

(assert (=> b!286378 (= e!181468 (MissingZero!1963 (index!10024 lt!141106)))))

(declare-fun d!65869 () Bool)

(declare-fun lt!141105 () SeekEntryResult!1963)

(get-info :version)

(assert (=> d!65869 (and (or ((_ is Undefined!1963) lt!141105) (not ((_ is Found!1963) lt!141105)) (and (bvsge (index!10023 lt!141105) #b00000000000000000000000000000000) (bvslt (index!10023 lt!141105) (size!7155 a!3312)))) (or ((_ is Undefined!1963) lt!141105) ((_ is Found!1963) lt!141105) (not ((_ is MissingZero!1963) lt!141105)) (and (bvsge (index!10022 lt!141105) #b00000000000000000000000000000000) (bvslt (index!10022 lt!141105) (size!7155 a!3312)))) (or ((_ is Undefined!1963) lt!141105) ((_ is Found!1963) lt!141105) ((_ is MissingZero!1963) lt!141105) (not ((_ is MissingVacant!1963) lt!141105)) (and (bvsge (index!10025 lt!141105) #b00000000000000000000000000000000) (bvslt (index!10025 lt!141105) (size!7155 a!3312)))) (or ((_ is Undefined!1963) lt!141105) (ite ((_ is Found!1963) lt!141105) (= (select (arr!6803 a!3312) (index!10023 lt!141105)) k0!2524) (ite ((_ is MissingZero!1963) lt!141105) (= (select (arr!6803 a!3312) (index!10022 lt!141105)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1963) lt!141105) (= (select (arr!6803 a!3312) (index!10025 lt!141105)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65869 (= lt!141105 e!181467)))

(declare-fun c!46472 () Bool)

(assert (=> d!65869 (= c!46472 (and ((_ is Intermediate!1963) lt!141106) (undefined!2775 lt!141106)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14338 (_ BitVec 32)) SeekEntryResult!1963)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65869 (= lt!141106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!65869 (validMask!0 mask!3809)))

(assert (=> d!65869 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!141105)))

(declare-fun b!286379 () Bool)

(assert (=> b!286379 (= e!181467 e!181466)))

(declare-fun lt!141107 () (_ BitVec 64))

(assert (=> b!286379 (= lt!141107 (select (arr!6803 a!3312) (index!10024 lt!141106)))))

(declare-fun c!46470 () Bool)

(assert (=> b!286379 (= c!46470 (= lt!141107 k0!2524))))

(declare-fun b!286380 () Bool)

(declare-fun c!46471 () Bool)

(assert (=> b!286380 (= c!46471 (= lt!141107 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!286380 (= e!181466 e!181468)))

(assert (= (and d!65869 c!46472) b!286376))

(assert (= (and d!65869 (not c!46472)) b!286379))

(assert (= (and b!286379 c!46470) b!286377))

(assert (= (and b!286379 (not c!46470)) b!286380))

(assert (= (and b!286380 c!46471) b!286378))

(assert (= (and b!286380 (not c!46471)) b!286375))

(declare-fun m!301093 () Bool)

(assert (=> b!286375 m!301093))

(declare-fun m!301095 () Bool)

(assert (=> d!65869 m!301095))

(declare-fun m!301097 () Bool)

(assert (=> d!65869 m!301097))

(assert (=> d!65869 m!301051))

(assert (=> d!65869 m!301097))

(declare-fun m!301099 () Bool)

(assert (=> d!65869 m!301099))

(declare-fun m!301101 () Bool)

(assert (=> d!65869 m!301101))

(declare-fun m!301103 () Bool)

(assert (=> d!65869 m!301103))

(declare-fun m!301105 () Bool)

(assert (=> b!286379 m!301105))

(assert (=> b!286318 d!65869))

(declare-fun d!65883 () Bool)

(assert (=> d!65883 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!286317 d!65883))

(declare-fun bm!25589 () Bool)

(declare-fun call!25592 () Bool)

(assert (=> bm!25589 (= call!25592 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!286401 () Bool)

(declare-fun e!181482 () Bool)

(assert (=> b!286401 (= e!181482 call!25592)))

(declare-fun d!65885 () Bool)

(declare-fun res!148550 () Bool)

(declare-fun e!181481 () Bool)

(assert (=> d!65885 (=> res!148550 e!181481)))

(assert (=> d!65885 (= res!148550 (bvsge #b00000000000000000000000000000000 (size!7155 a!3312)))))

(assert (=> d!65885 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!181481)))

(declare-fun b!286402 () Bool)

(declare-fun e!181483 () Bool)

(assert (=> b!286402 (= e!181483 call!25592)))

(declare-fun b!286403 () Bool)

(assert (=> b!286403 (= e!181483 e!181482)))

(declare-fun lt!141120 () (_ BitVec 64))

(assert (=> b!286403 (= lt!141120 (select (arr!6803 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9051 0))(
  ( (Unit!9052) )
))
(declare-fun lt!141122 () Unit!9051)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14338 (_ BitVec 64) (_ BitVec 32)) Unit!9051)

(assert (=> b!286403 (= lt!141122 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!141120 #b00000000000000000000000000000000))))

(assert (=> b!286403 (arrayContainsKey!0 a!3312 lt!141120 #b00000000000000000000000000000000)))

(declare-fun lt!141121 () Unit!9051)

(assert (=> b!286403 (= lt!141121 lt!141122)))

(declare-fun res!148551 () Bool)

(assert (=> b!286403 (= res!148551 (= (seekEntryOrOpen!0 (select (arr!6803 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!1963 #b00000000000000000000000000000000)))))

(assert (=> b!286403 (=> (not res!148551) (not e!181482))))

(declare-fun b!286404 () Bool)

(assert (=> b!286404 (= e!181481 e!181483)))

(declare-fun c!46481 () Bool)

(assert (=> b!286404 (= c!46481 (validKeyInArray!0 (select (arr!6803 a!3312) #b00000000000000000000000000000000)))))

(assert (= (and d!65885 (not res!148550)) b!286404))

(assert (= (and b!286404 c!46481) b!286403))

(assert (= (and b!286404 (not c!46481)) b!286402))

(assert (= (and b!286403 res!148551) b!286401))

(assert (= (or b!286401 b!286402) bm!25589))

(declare-fun m!301107 () Bool)

(assert (=> bm!25589 m!301107))

(declare-fun m!301109 () Bool)

(assert (=> b!286403 m!301109))

(declare-fun m!301111 () Bool)

(assert (=> b!286403 m!301111))

(declare-fun m!301113 () Bool)

(assert (=> b!286403 m!301113))

(assert (=> b!286403 m!301109))

(declare-fun m!301115 () Bool)

(assert (=> b!286403 m!301115))

(assert (=> b!286404 m!301109))

(assert (=> b!286404 m!301109))

(declare-fun m!301117 () Bool)

(assert (=> b!286404 m!301117))

(assert (=> b!286315 d!65885))

(declare-fun d!65891 () Bool)

(assert (=> d!65891 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!27828 d!65891))

(declare-fun d!65897 () Bool)

(assert (=> d!65897 (= (array_inv!4757 a!3312) (bvsge (size!7155 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!27828 d!65897))

(declare-fun d!65899 () Bool)

(declare-fun res!148556 () Bool)

(declare-fun e!181497 () Bool)

(assert (=> d!65899 (=> res!148556 e!181497)))

(assert (=> d!65899 (= res!148556 (= (select (arr!6803 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!65899 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!181497)))

(declare-fun b!286427 () Bool)

(declare-fun e!181498 () Bool)

(assert (=> b!286427 (= e!181497 e!181498)))

(declare-fun res!148557 () Bool)

(assert (=> b!286427 (=> (not res!148557) (not e!181498))))

(assert (=> b!286427 (= res!148557 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7155 a!3312)))))

(declare-fun b!286428 () Bool)

(assert (=> b!286428 (= e!181498 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65899 (not res!148556)) b!286427))

(assert (= (and b!286427 res!148557) b!286428))

(assert (=> d!65899 m!301109))

(declare-fun m!301133 () Bool)

(assert (=> b!286428 m!301133))

(assert (=> b!286320 d!65899))

(check-sat (not b!286375) (not b!286404) (not bm!25589) (not b!286428) (not d!65869) (not b!286403))
(check-sat)
