; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28122 () Bool)

(assert start!28122)

(declare-fun b!288017 () Bool)

(declare-fun res!149826 () Bool)

(declare-fun e!182375 () Bool)

(assert (=> b!288017 (=> (not res!149826) (not e!182375))))

(declare-datatypes ((array!14470 0))(
  ( (array!14471 (arr!6863 (Array (_ BitVec 32) (_ BitVec 64))) (size!7215 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14470)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14470 (_ BitVec 32)) Bool)

(assert (=> b!288017 (= res!149826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288018 () Bool)

(declare-fun e!182374 () Bool)

(assert (=> b!288018 (= e!182374 (not (or (bvslt mask!3809 #b00000000000000000000000000000000) (bvsle mask!3809 #b00111111111111111111111111111111))))))

(declare-datatypes ((SeekEntryResult!2023 0))(
  ( (MissingZero!2023 (index!10262 (_ BitVec 32))) (Found!2023 (index!10263 (_ BitVec 32))) (Intermediate!2023 (undefined!2835 Bool) (index!10264 (_ BitVec 32)) (x!28446 (_ BitVec 32))) (Undefined!2023) (MissingVacant!2023 (index!10265 (_ BitVec 32))) )
))
(declare-fun lt!141890 () SeekEntryResult!2023)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!288018 (and (= (select (arr!6863 a!3312) (index!10264 lt!141890)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10264 lt!141890) i!1256))))

(declare-fun b!288019 () Bool)

(declare-fun e!182376 () Bool)

(assert (=> b!288019 (= e!182376 e!182374)))

(declare-fun res!149824 () Bool)

(assert (=> b!288019 (=> (not res!149824) (not e!182374))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun lt!141887 () Bool)

(assert (=> b!288019 (= res!149824 (and (or lt!141887 (not (undefined!2835 lt!141890))) (or lt!141887 (not (= (select (arr!6863 a!3312) (index!10264 lt!141890)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!141887 (not (= (select (arr!6863 a!3312) (index!10264 lt!141890)) k0!2524))) (not lt!141887)))))

(get-info :version)

(assert (=> b!288019 (= lt!141887 (not ((_ is Intermediate!2023) lt!141890)))))

(declare-fun b!288020 () Bool)

(declare-fun res!149821 () Bool)

(declare-fun e!182373 () Bool)

(assert (=> b!288020 (=> (not res!149821) (not e!182373))))

(declare-fun arrayContainsKey!0 (array!14470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288020 (= res!149821 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288021 () Bool)

(declare-fun res!149822 () Bool)

(assert (=> b!288021 (=> (not res!149822) (not e!182373))))

(assert (=> b!288021 (= res!149822 (and (= (size!7215 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7215 a!3312))))))

(declare-fun b!288022 () Bool)

(declare-fun res!149819 () Bool)

(assert (=> b!288022 (=> (not res!149819) (not e!182373))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288022 (= res!149819 (validKeyInArray!0 k0!2524))))

(declare-fun res!149823 () Bool)

(assert (=> start!28122 (=> (not res!149823) (not e!182373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28122 (= res!149823 (validMask!0 mask!3809))))

(assert (=> start!28122 e!182373))

(assert (=> start!28122 true))

(declare-fun array_inv!4817 (array!14470) Bool)

(assert (=> start!28122 (array_inv!4817 a!3312)))

(declare-fun b!288023 () Bool)

(assert (=> b!288023 (= e!182373 e!182375)))

(declare-fun res!149820 () Bool)

(assert (=> b!288023 (=> (not res!149820) (not e!182375))))

(declare-fun lt!141885 () SeekEntryResult!2023)

(declare-fun lt!141886 () Bool)

(assert (=> b!288023 (= res!149820 (or lt!141886 (= lt!141885 (MissingVacant!2023 i!1256))))))

(assert (=> b!288023 (= lt!141886 (= lt!141885 (MissingZero!2023 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14470 (_ BitVec 32)) SeekEntryResult!2023)

(assert (=> b!288023 (= lt!141885 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!288024 () Bool)

(assert (=> b!288024 (= e!182375 e!182376)))

(declare-fun res!149825 () Bool)

(assert (=> b!288024 (=> (not res!149825) (not e!182376))))

(assert (=> b!288024 (= res!149825 lt!141886)))

(declare-fun lt!141889 () (_ BitVec 32))

(declare-fun lt!141888 () SeekEntryResult!2023)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14470 (_ BitVec 32)) SeekEntryResult!2023)

(assert (=> b!288024 (= lt!141888 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141889 k0!2524 (array!14471 (store (arr!6863 a!3312) i!1256 k0!2524) (size!7215 a!3312)) mask!3809))))

(assert (=> b!288024 (= lt!141890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141889 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288024 (= lt!141889 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!28122 res!149823) b!288021))

(assert (= (and b!288021 res!149822) b!288022))

(assert (= (and b!288022 res!149819) b!288020))

(assert (= (and b!288020 res!149821) b!288023))

(assert (= (and b!288023 res!149820) b!288017))

(assert (= (and b!288017 res!149826) b!288024))

(assert (= (and b!288024 res!149825) b!288019))

(assert (= (and b!288019 res!149824) b!288018))

(declare-fun m!302399 () Bool)

(assert (=> b!288018 m!302399))

(declare-fun m!302401 () Bool)

(assert (=> start!28122 m!302401))

(declare-fun m!302403 () Bool)

(assert (=> start!28122 m!302403))

(declare-fun m!302405 () Bool)

(assert (=> b!288022 m!302405))

(declare-fun m!302407 () Bool)

(assert (=> b!288023 m!302407))

(declare-fun m!302409 () Bool)

(assert (=> b!288024 m!302409))

(declare-fun m!302411 () Bool)

(assert (=> b!288024 m!302411))

(declare-fun m!302413 () Bool)

(assert (=> b!288024 m!302413))

(declare-fun m!302415 () Bool)

(assert (=> b!288024 m!302415))

(declare-fun m!302417 () Bool)

(assert (=> b!288020 m!302417))

(declare-fun m!302419 () Bool)

(assert (=> b!288017 m!302419))

(assert (=> b!288019 m!302399))

(check-sat (not b!288022) (not start!28122) (not b!288023) (not b!288017) (not b!288020) (not b!288024))
(check-sat)
(get-model)

(declare-fun d!66083 () Bool)

(assert (=> d!66083 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!288022 d!66083))

(declare-fun b!288057 () Bool)

(declare-fun e!182401 () Bool)

(declare-fun call!25625 () Bool)

(assert (=> b!288057 (= e!182401 call!25625)))

(declare-fun b!288058 () Bool)

(declare-fun e!182399 () Bool)

(assert (=> b!288058 (= e!182399 call!25625)))

(declare-fun d!66085 () Bool)

(declare-fun res!149856 () Bool)

(declare-fun e!182400 () Bool)

(assert (=> d!66085 (=> res!149856 e!182400)))

(assert (=> d!66085 (= res!149856 (bvsge #b00000000000000000000000000000000 (size!7215 a!3312)))))

(assert (=> d!66085 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!182400)))

(declare-fun b!288059 () Bool)

(assert (=> b!288059 (= e!182401 e!182399)))

(declare-fun lt!141915 () (_ BitVec 64))

(assert (=> b!288059 (= lt!141915 (select (arr!6863 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9069 0))(
  ( (Unit!9070) )
))
(declare-fun lt!141917 () Unit!9069)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14470 (_ BitVec 64) (_ BitVec 32)) Unit!9069)

(assert (=> b!288059 (= lt!141917 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!141915 #b00000000000000000000000000000000))))

(assert (=> b!288059 (arrayContainsKey!0 a!3312 lt!141915 #b00000000000000000000000000000000)))

(declare-fun lt!141916 () Unit!9069)

(assert (=> b!288059 (= lt!141916 lt!141917)))

(declare-fun res!149855 () Bool)

(assert (=> b!288059 (= res!149855 (= (seekEntryOrOpen!0 (select (arr!6863 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2023 #b00000000000000000000000000000000)))))

(assert (=> b!288059 (=> (not res!149855) (not e!182399))))

(declare-fun b!288060 () Bool)

(assert (=> b!288060 (= e!182400 e!182401)))

(declare-fun c!46661 () Bool)

(assert (=> b!288060 (= c!46661 (validKeyInArray!0 (select (arr!6863 a!3312) #b00000000000000000000000000000000)))))

(declare-fun bm!25622 () Bool)

(assert (=> bm!25622 (= call!25625 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!66085 (not res!149856)) b!288060))

(assert (= (and b!288060 c!46661) b!288059))

(assert (= (and b!288060 (not c!46661)) b!288057))

(assert (= (and b!288059 res!149855) b!288058))

(assert (= (or b!288058 b!288057) bm!25622))

(declare-fun m!302443 () Bool)

(assert (=> b!288059 m!302443))

(declare-fun m!302445 () Bool)

(assert (=> b!288059 m!302445))

(declare-fun m!302447 () Bool)

(assert (=> b!288059 m!302447))

(assert (=> b!288059 m!302443))

(declare-fun m!302449 () Bool)

(assert (=> b!288059 m!302449))

(assert (=> b!288060 m!302443))

(assert (=> b!288060 m!302443))

(declare-fun m!302451 () Bool)

(assert (=> b!288060 m!302451))

(declare-fun m!302453 () Bool)

(assert (=> bm!25622 m!302453))

(assert (=> b!288017 d!66085))

(declare-fun d!66089 () Bool)

(declare-fun res!149861 () Bool)

(declare-fun e!182406 () Bool)

(assert (=> d!66089 (=> res!149861 e!182406)))

(assert (=> d!66089 (= res!149861 (= (select (arr!6863 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66089 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!182406)))

(declare-fun b!288065 () Bool)

(declare-fun e!182407 () Bool)

(assert (=> b!288065 (= e!182406 e!182407)))

(declare-fun res!149862 () Bool)

(assert (=> b!288065 (=> (not res!149862) (not e!182407))))

(assert (=> b!288065 (= res!149862 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7215 a!3312)))))

(declare-fun b!288066 () Bool)

(assert (=> b!288066 (= e!182407 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66089 (not res!149861)) b!288065))

(assert (= (and b!288065 res!149862) b!288066))

(assert (=> d!66089 m!302443))

(declare-fun m!302455 () Bool)

(assert (=> b!288066 m!302455))

(assert (=> b!288020 d!66089))

(declare-fun lt!141926 () SeekEntryResult!2023)

(declare-fun b!288079 () Bool)

(declare-fun e!182415 () SeekEntryResult!2023)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14470 (_ BitVec 32)) SeekEntryResult!2023)

(assert (=> b!288079 (= e!182415 (seekKeyOrZeroReturnVacant!0 (x!28446 lt!141926) (index!10264 lt!141926) (index!10264 lt!141926) k0!2524 a!3312 mask!3809))))

(declare-fun b!288080 () Bool)

(declare-fun e!182414 () SeekEntryResult!2023)

(declare-fun e!182416 () SeekEntryResult!2023)

(assert (=> b!288080 (= e!182414 e!182416)))

(declare-fun lt!141925 () (_ BitVec 64))

(assert (=> b!288080 (= lt!141925 (select (arr!6863 a!3312) (index!10264 lt!141926)))))

(declare-fun c!46668 () Bool)

(assert (=> b!288080 (= c!46668 (= lt!141925 k0!2524))))

(declare-fun b!288081 () Bool)

(assert (=> b!288081 (= e!182416 (Found!2023 (index!10264 lt!141926)))))

(declare-fun d!66093 () Bool)

(declare-fun lt!141924 () SeekEntryResult!2023)

(assert (=> d!66093 (and (or ((_ is Undefined!2023) lt!141924) (not ((_ is Found!2023) lt!141924)) (and (bvsge (index!10263 lt!141924) #b00000000000000000000000000000000) (bvslt (index!10263 lt!141924) (size!7215 a!3312)))) (or ((_ is Undefined!2023) lt!141924) ((_ is Found!2023) lt!141924) (not ((_ is MissingZero!2023) lt!141924)) (and (bvsge (index!10262 lt!141924) #b00000000000000000000000000000000) (bvslt (index!10262 lt!141924) (size!7215 a!3312)))) (or ((_ is Undefined!2023) lt!141924) ((_ is Found!2023) lt!141924) ((_ is MissingZero!2023) lt!141924) (not ((_ is MissingVacant!2023) lt!141924)) (and (bvsge (index!10265 lt!141924) #b00000000000000000000000000000000) (bvslt (index!10265 lt!141924) (size!7215 a!3312)))) (or ((_ is Undefined!2023) lt!141924) (ite ((_ is Found!2023) lt!141924) (= (select (arr!6863 a!3312) (index!10263 lt!141924)) k0!2524) (ite ((_ is MissingZero!2023) lt!141924) (= (select (arr!6863 a!3312) (index!10262 lt!141924)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2023) lt!141924) (= (select (arr!6863 a!3312) (index!10265 lt!141924)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66093 (= lt!141924 e!182414)))

(declare-fun c!46669 () Bool)

(assert (=> d!66093 (= c!46669 (and ((_ is Intermediate!2023) lt!141926) (undefined!2835 lt!141926)))))

(assert (=> d!66093 (= lt!141926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66093 (validMask!0 mask!3809)))

(assert (=> d!66093 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!141924)))

(declare-fun b!288082 () Bool)

(assert (=> b!288082 (= e!182415 (MissingZero!2023 (index!10264 lt!141926)))))

(declare-fun b!288083 () Bool)

(declare-fun c!46670 () Bool)

(assert (=> b!288083 (= c!46670 (= lt!141925 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!288083 (= e!182416 e!182415)))

(declare-fun b!288084 () Bool)

(assert (=> b!288084 (= e!182414 Undefined!2023)))

(assert (= (and d!66093 c!46669) b!288084))

(assert (= (and d!66093 (not c!46669)) b!288080))

(assert (= (and b!288080 c!46668) b!288081))

(assert (= (and b!288080 (not c!46668)) b!288083))

(assert (= (and b!288083 c!46670) b!288082))

(assert (= (and b!288083 (not c!46670)) b!288079))

(declare-fun m!302457 () Bool)

(assert (=> b!288079 m!302457))

(declare-fun m!302459 () Bool)

(assert (=> b!288080 m!302459))

(assert (=> d!66093 m!302415))

(declare-fun m!302461 () Bool)

(assert (=> d!66093 m!302461))

(declare-fun m!302463 () Bool)

(assert (=> d!66093 m!302463))

(declare-fun m!302465 () Bool)

(assert (=> d!66093 m!302465))

(assert (=> d!66093 m!302415))

(assert (=> d!66093 m!302401))

(declare-fun m!302467 () Bool)

(assert (=> d!66093 m!302467))

(assert (=> b!288023 d!66093))

(declare-fun d!66101 () Bool)

(assert (=> d!66101 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28122 d!66101))

(declare-fun d!66103 () Bool)

(assert (=> d!66103 (= (array_inv!4817 a!3312) (bvsge (size!7215 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28122 d!66103))

(declare-fun d!66107 () Bool)

(declare-fun e!182473 () Bool)

(assert (=> d!66107 e!182473))

(declare-fun c!46701 () Bool)

(declare-fun lt!141960 () SeekEntryResult!2023)

(assert (=> d!66107 (= c!46701 (and ((_ is Intermediate!2023) lt!141960) (undefined!2835 lt!141960)))))

(declare-fun e!182475 () SeekEntryResult!2023)

(assert (=> d!66107 (= lt!141960 e!182475)))

(declare-fun c!46703 () Bool)

(assert (=> d!66107 (= c!46703 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!141959 () (_ BitVec 64))

(assert (=> d!66107 (= lt!141959 (select (arr!6863 (array!14471 (store (arr!6863 a!3312) i!1256 k0!2524) (size!7215 a!3312))) lt!141889))))

(assert (=> d!66107 (validMask!0 mask!3809)))

(assert (=> d!66107 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141889 k0!2524 (array!14471 (store (arr!6863 a!3312) i!1256 k0!2524) (size!7215 a!3312)) mask!3809) lt!141960)))

(declare-fun b!288181 () Bool)

(assert (=> b!288181 (= e!182475 (Intermediate!2023 true lt!141889 #b00000000000000000000000000000000))))

(declare-fun b!288182 () Bool)

(declare-fun e!182479 () Bool)

(assert (=> b!288182 (= e!182473 e!182479)))

(declare-fun res!149904 () Bool)

(assert (=> b!288182 (= res!149904 (and ((_ is Intermediate!2023) lt!141960) (not (undefined!2835 lt!141960)) (bvslt (x!28446 lt!141960) #b01111111111111111111111111111110) (bvsge (x!28446 lt!141960) #b00000000000000000000000000000000) (bvsge (x!28446 lt!141960) #b00000000000000000000000000000000)))))

(assert (=> b!288182 (=> (not res!149904) (not e!182479))))

(declare-fun e!182477 () SeekEntryResult!2023)

(declare-fun b!288183 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288183 (= e!182477 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!141889 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14471 (store (arr!6863 a!3312) i!1256 k0!2524) (size!7215 a!3312)) mask!3809))))

(declare-fun b!288184 () Bool)

(assert (=> b!288184 (and (bvsge (index!10264 lt!141960) #b00000000000000000000000000000000) (bvslt (index!10264 lt!141960) (size!7215 (array!14471 (store (arr!6863 a!3312) i!1256 k0!2524) (size!7215 a!3312)))))))

(declare-fun res!149905 () Bool)

(assert (=> b!288184 (= res!149905 (= (select (arr!6863 (array!14471 (store (arr!6863 a!3312) i!1256 k0!2524) (size!7215 a!3312))) (index!10264 lt!141960)) k0!2524))))

(declare-fun e!182478 () Bool)

(assert (=> b!288184 (=> res!149905 e!182478)))

(assert (=> b!288184 (= e!182479 e!182478)))

(declare-fun b!288185 () Bool)

(assert (=> b!288185 (= e!182473 (bvsge (x!28446 lt!141960) #b01111111111111111111111111111110))))

(declare-fun b!288186 () Bool)

(assert (=> b!288186 (and (bvsge (index!10264 lt!141960) #b00000000000000000000000000000000) (bvslt (index!10264 lt!141960) (size!7215 (array!14471 (store (arr!6863 a!3312) i!1256 k0!2524) (size!7215 a!3312)))))))

(declare-fun res!149901 () Bool)

(assert (=> b!288186 (= res!149901 (= (select (arr!6863 (array!14471 (store (arr!6863 a!3312) i!1256 k0!2524) (size!7215 a!3312))) (index!10264 lt!141960)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!288186 (=> res!149901 e!182478)))

(declare-fun b!288187 () Bool)

(assert (=> b!288187 (= e!182477 (Intermediate!2023 false lt!141889 #b00000000000000000000000000000000))))

(declare-fun b!288188 () Bool)

(assert (=> b!288188 (= e!182475 e!182477)))

(declare-fun c!46702 () Bool)

(assert (=> b!288188 (= c!46702 (or (= lt!141959 k0!2524) (= (bvadd lt!141959 lt!141959) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!288189 () Bool)

(assert (=> b!288189 (and (bvsge (index!10264 lt!141960) #b00000000000000000000000000000000) (bvslt (index!10264 lt!141960) (size!7215 (array!14471 (store (arr!6863 a!3312) i!1256 k0!2524) (size!7215 a!3312)))))))

(assert (=> b!288189 (= e!182478 (= (select (arr!6863 (array!14471 (store (arr!6863 a!3312) i!1256 k0!2524) (size!7215 a!3312))) (index!10264 lt!141960)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66107 c!46703) b!288181))

(assert (= (and d!66107 (not c!46703)) b!288188))

(assert (= (and b!288188 c!46702) b!288187))

(assert (= (and b!288188 (not c!46702)) b!288183))

(assert (= (and d!66107 c!46701) b!288185))

(assert (= (and d!66107 (not c!46701)) b!288182))

(assert (= (and b!288182 res!149904) b!288184))

(assert (= (and b!288184 (not res!149905)) b!288186))

(assert (= (and b!288186 (not res!149901)) b!288189))

(declare-fun m!302501 () Bool)

(assert (=> b!288186 m!302501))

(declare-fun m!302503 () Bool)

(assert (=> b!288183 m!302503))

(assert (=> b!288183 m!302503))

(declare-fun m!302505 () Bool)

(assert (=> b!288183 m!302505))

(assert (=> b!288184 m!302501))

(declare-fun m!302507 () Bool)

(assert (=> d!66107 m!302507))

(assert (=> d!66107 m!302401))

(assert (=> b!288189 m!302501))

(assert (=> b!288024 d!66107))

(declare-fun d!66121 () Bool)

(declare-fun e!182484 () Bool)

(assert (=> d!66121 e!182484))

(declare-fun c!46706 () Bool)

(declare-fun lt!141968 () SeekEntryResult!2023)

(assert (=> d!66121 (= c!46706 (and ((_ is Intermediate!2023) lt!141968) (undefined!2835 lt!141968)))))

(declare-fun e!182485 () SeekEntryResult!2023)

(assert (=> d!66121 (= lt!141968 e!182485)))

(declare-fun c!46708 () Bool)

(assert (=> d!66121 (= c!46708 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!141967 () (_ BitVec 64))

(assert (=> d!66121 (= lt!141967 (select (arr!6863 a!3312) lt!141889))))

(assert (=> d!66121 (validMask!0 mask!3809)))

(assert (=> d!66121 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141889 k0!2524 a!3312 mask!3809) lt!141968)))

(declare-fun b!288198 () Bool)

(assert (=> b!288198 (= e!182485 (Intermediate!2023 true lt!141889 #b00000000000000000000000000000000))))

(declare-fun b!288199 () Bool)

(declare-fun e!182488 () Bool)

(assert (=> b!288199 (= e!182484 e!182488)))

(declare-fun res!149909 () Bool)

(assert (=> b!288199 (= res!149909 (and ((_ is Intermediate!2023) lt!141968) (not (undefined!2835 lt!141968)) (bvslt (x!28446 lt!141968) #b01111111111111111111111111111110) (bvsge (x!28446 lt!141968) #b00000000000000000000000000000000) (bvsge (x!28446 lt!141968) #b00000000000000000000000000000000)))))

(assert (=> b!288199 (=> (not res!149909) (not e!182488))))

(declare-fun b!288200 () Bool)

(declare-fun e!182486 () SeekEntryResult!2023)

(assert (=> b!288200 (= e!182486 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!141889 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!288201 () Bool)

(assert (=> b!288201 (and (bvsge (index!10264 lt!141968) #b00000000000000000000000000000000) (bvslt (index!10264 lt!141968) (size!7215 a!3312)))))

(declare-fun res!149910 () Bool)

(assert (=> b!288201 (= res!149910 (= (select (arr!6863 a!3312) (index!10264 lt!141968)) k0!2524))))

(declare-fun e!182487 () Bool)

(assert (=> b!288201 (=> res!149910 e!182487)))

(assert (=> b!288201 (= e!182488 e!182487)))

(declare-fun b!288202 () Bool)

(assert (=> b!288202 (= e!182484 (bvsge (x!28446 lt!141968) #b01111111111111111111111111111110))))

(declare-fun b!288203 () Bool)

(assert (=> b!288203 (and (bvsge (index!10264 lt!141968) #b00000000000000000000000000000000) (bvslt (index!10264 lt!141968) (size!7215 a!3312)))))

(declare-fun res!149908 () Bool)

(assert (=> b!288203 (= res!149908 (= (select (arr!6863 a!3312) (index!10264 lt!141968)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!288203 (=> res!149908 e!182487)))

(declare-fun b!288204 () Bool)

(assert (=> b!288204 (= e!182486 (Intermediate!2023 false lt!141889 #b00000000000000000000000000000000))))

(declare-fun b!288205 () Bool)

(assert (=> b!288205 (= e!182485 e!182486)))

(declare-fun c!46707 () Bool)

(assert (=> b!288205 (= c!46707 (or (= lt!141967 k0!2524) (= (bvadd lt!141967 lt!141967) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!288206 () Bool)

(assert (=> b!288206 (and (bvsge (index!10264 lt!141968) #b00000000000000000000000000000000) (bvslt (index!10264 lt!141968) (size!7215 a!3312)))))

(assert (=> b!288206 (= e!182487 (= (select (arr!6863 a!3312) (index!10264 lt!141968)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66121 c!46708) b!288198))

(assert (= (and d!66121 (not c!46708)) b!288205))

(assert (= (and b!288205 c!46707) b!288204))

(assert (= (and b!288205 (not c!46707)) b!288200))

(assert (= (and d!66121 c!46706) b!288202))

(assert (= (and d!66121 (not c!46706)) b!288199))

(assert (= (and b!288199 res!149909) b!288201))

(assert (= (and b!288201 (not res!149910)) b!288203))

(assert (= (and b!288203 (not res!149908)) b!288206))

(declare-fun m!302509 () Bool)

(assert (=> b!288203 m!302509))

(assert (=> b!288200 m!302503))

(assert (=> b!288200 m!302503))

(declare-fun m!302511 () Bool)

(assert (=> b!288200 m!302511))

(assert (=> b!288201 m!302509))

(declare-fun m!302513 () Bool)

(assert (=> d!66121 m!302513))

(assert (=> d!66121 m!302401))

(assert (=> b!288206 m!302509))

(assert (=> b!288024 d!66121))

(declare-fun d!66123 () Bool)

(declare-fun lt!141977 () (_ BitVec 32))

(declare-fun lt!141976 () (_ BitVec 32))

(assert (=> d!66123 (= lt!141977 (bvmul (bvxor lt!141976 (bvlshr lt!141976 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66123 (= lt!141976 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66123 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!149911 (let ((h!5278 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28453 (bvmul (bvxor h!5278 (bvlshr h!5278 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28453 (bvlshr x!28453 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!149911 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!149911 #b00000000000000000000000000000000))))))

(assert (=> d!66123 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!141977 (bvlshr lt!141977 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!288024 d!66123))

(check-sat (not b!288060) (not bm!25622) (not b!288079) (not b!288059) (not d!66107) (not d!66121) (not b!288200) (not b!288066) (not b!288183) (not d!66093))
(check-sat)
