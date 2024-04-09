; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69126 () Bool)

(assert start!69126)

(declare-fun b!805942 () Bool)

(declare-fun res!550435 () Bool)

(declare-fun e!446334 () Bool)

(assert (=> b!805942 (=> (not res!550435) (not e!446334))))

(declare-datatypes ((array!43822 0))(
  ( (array!43823 (arr!20986 (Array (_ BitVec 32) (_ BitVec 64))) (size!21407 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43822)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43822 (_ BitVec 32)) Bool)

(assert (=> b!805942 (= res!550435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805943 () Bool)

(declare-fun res!550433 () Bool)

(assert (=> b!805943 (=> (not res!550433) (not e!446334))))

(declare-datatypes ((List!15002 0))(
  ( (Nil!14999) (Cons!14998 (h!16127 (_ BitVec 64)) (t!21325 List!15002)) )
))
(declare-fun arrayNoDuplicates!0 (array!43822 (_ BitVec 32) List!15002) Bool)

(assert (=> b!805943 (= res!550433 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14999))))

(declare-fun b!805944 () Bool)

(declare-fun e!446335 () Bool)

(declare-fun e!446331 () Bool)

(assert (=> b!805944 (= e!446335 e!446331)))

(declare-fun res!550434 () Bool)

(assert (=> b!805944 (=> (not res!550434) (not e!446331))))

(declare-datatypes ((SeekEntryResult!8584 0))(
  ( (MissingZero!8584 (index!36703 (_ BitVec 32))) (Found!8584 (index!36704 (_ BitVec 32))) (Intermediate!8584 (undefined!9396 Bool) (index!36705 (_ BitVec 32)) (x!67546 (_ BitVec 32))) (Undefined!8584) (MissingVacant!8584 (index!36706 (_ BitVec 32))) )
))
(declare-fun lt!360940 () SeekEntryResult!8584)

(declare-fun lt!360944 () SeekEntryResult!8584)

(assert (=> b!805944 (= res!550434 (= lt!360940 lt!360944))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43822 (_ BitVec 32)) SeekEntryResult!8584)

(assert (=> b!805944 (= lt!360944 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20986 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43822 (_ BitVec 32)) SeekEntryResult!8584)

(assert (=> b!805944 (= lt!360940 (seekEntryOrOpen!0 (select (arr!20986 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!550442 () Bool)

(declare-fun e!446332 () Bool)

(assert (=> start!69126 (=> (not res!550442) (not e!446332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69126 (= res!550442 (validMask!0 mask!3266))))

(assert (=> start!69126 e!446332))

(assert (=> start!69126 true))

(declare-fun array_inv!16760 (array!43822) Bool)

(assert (=> start!69126 (array_inv!16760 a!3170)))

(declare-fun b!805945 () Bool)

(declare-fun res!550441 () Bool)

(assert (=> b!805945 (=> (not res!550441) (not e!446332))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!805945 (= res!550441 (and (= (size!21407 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21407 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21407 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805946 () Bool)

(declare-fun e!446330 () Bool)

(declare-fun lt!360939 () SeekEntryResult!8584)

(declare-fun lt!360946 () SeekEntryResult!8584)

(assert (=> b!805946 (= e!446330 (not (= lt!360939 lt!360946)))))

(assert (=> b!805946 (= lt!360939 (Found!8584 index!1236))))

(declare-fun b!805947 () Bool)

(declare-fun res!550440 () Bool)

(assert (=> b!805947 (=> (not res!550440) (not e!446332))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805947 (= res!550440 (validKeyInArray!0 (select (arr!20986 a!3170) j!153)))))

(declare-fun b!805948 () Bool)

(assert (=> b!805948 (= e!446331 e!446330)))

(declare-fun res!550439 () Bool)

(assert (=> b!805948 (=> (not res!550439) (not e!446330))))

(assert (=> b!805948 (= res!550439 (and (= lt!360944 lt!360946) (= (select (arr!20986 a!3170) index!1236) (select (arr!20986 a!3170) j!153))))))

(assert (=> b!805948 (= lt!360946 (Found!8584 j!153))))

(declare-fun b!805949 () Bool)

(assert (=> b!805949 (= e!446332 e!446334)))

(declare-fun res!550436 () Bool)

(assert (=> b!805949 (=> (not res!550436) (not e!446334))))

(declare-fun lt!360942 () SeekEntryResult!8584)

(assert (=> b!805949 (= res!550436 (or (= lt!360942 (MissingZero!8584 i!1163)) (= lt!360942 (MissingVacant!8584 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!805949 (= lt!360942 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!805950 () Bool)

(declare-fun res!550444 () Bool)

(assert (=> b!805950 (=> (not res!550444) (not e!446332))))

(declare-fun arrayContainsKey!0 (array!43822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805950 (= res!550444 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805951 () Bool)

(declare-fun res!550438 () Bool)

(assert (=> b!805951 (=> (not res!550438) (not e!446334))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!805951 (= res!550438 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21407 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20986 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21407 a!3170)) (= (select (arr!20986 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805952 () Bool)

(declare-fun res!550437 () Bool)

(assert (=> b!805952 (=> (not res!550437) (not e!446332))))

(assert (=> b!805952 (= res!550437 (validKeyInArray!0 k0!2044))))

(declare-fun b!805953 () Bool)

(assert (=> b!805953 (= e!446334 e!446335)))

(declare-fun res!550443 () Bool)

(assert (=> b!805953 (=> (not res!550443) (not e!446335))))

(declare-fun lt!360941 () SeekEntryResult!8584)

(assert (=> b!805953 (= res!550443 (= lt!360941 lt!360939))))

(declare-fun lt!360945 () (_ BitVec 64))

(declare-fun lt!360943 () array!43822)

(assert (=> b!805953 (= lt!360939 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360945 lt!360943 mask!3266))))

(assert (=> b!805953 (= lt!360941 (seekEntryOrOpen!0 lt!360945 lt!360943 mask!3266))))

(assert (=> b!805953 (= lt!360945 (select (store (arr!20986 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!805953 (= lt!360943 (array!43823 (store (arr!20986 a!3170) i!1163 k0!2044) (size!21407 a!3170)))))

(assert (= (and start!69126 res!550442) b!805945))

(assert (= (and b!805945 res!550441) b!805947))

(assert (= (and b!805947 res!550440) b!805952))

(assert (= (and b!805952 res!550437) b!805950))

(assert (= (and b!805950 res!550444) b!805949))

(assert (= (and b!805949 res!550436) b!805942))

(assert (= (and b!805942 res!550435) b!805943))

(assert (= (and b!805943 res!550433) b!805951))

(assert (= (and b!805951 res!550438) b!805953))

(assert (= (and b!805953 res!550443) b!805944))

(assert (= (and b!805944 res!550434) b!805948))

(assert (= (and b!805948 res!550439) b!805946))

(declare-fun m!747991 () Bool)

(assert (=> b!805949 m!747991))

(declare-fun m!747993 () Bool)

(assert (=> b!805950 m!747993))

(declare-fun m!747995 () Bool)

(assert (=> b!805947 m!747995))

(assert (=> b!805947 m!747995))

(declare-fun m!747997 () Bool)

(assert (=> b!805947 m!747997))

(declare-fun m!747999 () Bool)

(assert (=> b!805943 m!747999))

(declare-fun m!748001 () Bool)

(assert (=> b!805951 m!748001))

(declare-fun m!748003 () Bool)

(assert (=> b!805951 m!748003))

(declare-fun m!748005 () Bool)

(assert (=> b!805948 m!748005))

(assert (=> b!805948 m!747995))

(declare-fun m!748007 () Bool)

(assert (=> b!805952 m!748007))

(declare-fun m!748009 () Bool)

(assert (=> b!805953 m!748009))

(declare-fun m!748011 () Bool)

(assert (=> b!805953 m!748011))

(declare-fun m!748013 () Bool)

(assert (=> b!805953 m!748013))

(declare-fun m!748015 () Bool)

(assert (=> b!805953 m!748015))

(declare-fun m!748017 () Bool)

(assert (=> b!805942 m!748017))

(declare-fun m!748019 () Bool)

(assert (=> start!69126 m!748019))

(declare-fun m!748021 () Bool)

(assert (=> start!69126 m!748021))

(assert (=> b!805944 m!747995))

(assert (=> b!805944 m!747995))

(declare-fun m!748023 () Bool)

(assert (=> b!805944 m!748023))

(assert (=> b!805944 m!747995))

(declare-fun m!748025 () Bool)

(assert (=> b!805944 m!748025))

(check-sat (not start!69126) (not b!805950) (not b!805942) (not b!805953) (not b!805943) (not b!805947) (not b!805944) (not b!805949) (not b!805952))
(check-sat)
(get-model)

(declare-fun d!103549 () Bool)

(assert (=> d!103549 (= (validKeyInArray!0 k0!2044) (and (not (= k0!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!805952 d!103549))

(declare-fun d!103551 () Bool)

(assert (=> d!103551 (= (validKeyInArray!0 (select (arr!20986 a!3170) j!153)) (and (not (= (select (arr!20986 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20986 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!805947 d!103551))

(declare-fun d!103553 () Bool)

(declare-fun res!550485 () Bool)

(declare-fun e!446358 () Bool)

(assert (=> d!103553 (=> res!550485 e!446358)))

(assert (=> d!103553 (= res!550485 (= (select (arr!20986 a!3170) #b00000000000000000000000000000000) k0!2044))))

(assert (=> d!103553 (= (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000) e!446358)))

(declare-fun b!805994 () Bool)

(declare-fun e!446359 () Bool)

(assert (=> b!805994 (= e!446358 e!446359)))

(declare-fun res!550486 () Bool)

(assert (=> b!805994 (=> (not res!550486) (not e!446359))))

(assert (=> b!805994 (= res!550486 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21407 a!3170)))))

(declare-fun b!805995 () Bool)

(assert (=> b!805995 (= e!446359 (arrayContainsKey!0 a!3170 k0!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103553 (not res!550485)) b!805994))

(assert (= (and b!805994 res!550486) b!805995))

(declare-fun m!748063 () Bool)

(assert (=> d!103553 m!748063))

(declare-fun m!748065 () Bool)

(assert (=> b!805995 m!748065))

(assert (=> b!805950 d!103553))

(declare-fun d!103555 () Bool)

(assert (=> d!103555 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69126 d!103555))

(declare-fun d!103557 () Bool)

(assert (=> d!103557 (= (array_inv!16760 a!3170) (bvsge (size!21407 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69126 d!103557))

(declare-fun b!806032 () Bool)

(declare-fun e!446382 () SeekEntryResult!8584)

(declare-fun lt!360983 () SeekEntryResult!8584)

(assert (=> b!806032 (= e!446382 (Found!8584 (index!36705 lt!360983)))))

(declare-fun b!806033 () Bool)

(declare-fun e!446383 () SeekEntryResult!8584)

(assert (=> b!806033 (= e!446383 Undefined!8584)))

(declare-fun e!446381 () SeekEntryResult!8584)

(declare-fun b!806034 () Bool)

(assert (=> b!806034 (= e!446381 (seekKeyOrZeroReturnVacant!0 (x!67546 lt!360983) (index!36705 lt!360983) (index!36705 lt!360983) k0!2044 a!3170 mask!3266))))

(declare-fun b!806035 () Bool)

(declare-fun c!88181 () Bool)

(declare-fun lt!360984 () (_ BitVec 64))

(assert (=> b!806035 (= c!88181 (= lt!360984 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!806035 (= e!446382 e!446381)))

(declare-fun b!806036 () Bool)

(assert (=> b!806036 (= e!446381 (MissingZero!8584 (index!36705 lt!360983)))))

(declare-fun b!806037 () Bool)

(assert (=> b!806037 (= e!446383 e!446382)))

(assert (=> b!806037 (= lt!360984 (select (arr!20986 a!3170) (index!36705 lt!360983)))))

(declare-fun c!88180 () Bool)

(assert (=> b!806037 (= c!88180 (= lt!360984 k0!2044))))

(declare-fun d!103561 () Bool)

(declare-fun lt!360985 () SeekEntryResult!8584)

(get-info :version)

(assert (=> d!103561 (and (or ((_ is Undefined!8584) lt!360985) (not ((_ is Found!8584) lt!360985)) (and (bvsge (index!36704 lt!360985) #b00000000000000000000000000000000) (bvslt (index!36704 lt!360985) (size!21407 a!3170)))) (or ((_ is Undefined!8584) lt!360985) ((_ is Found!8584) lt!360985) (not ((_ is MissingZero!8584) lt!360985)) (and (bvsge (index!36703 lt!360985) #b00000000000000000000000000000000) (bvslt (index!36703 lt!360985) (size!21407 a!3170)))) (or ((_ is Undefined!8584) lt!360985) ((_ is Found!8584) lt!360985) ((_ is MissingZero!8584) lt!360985) (not ((_ is MissingVacant!8584) lt!360985)) (and (bvsge (index!36706 lt!360985) #b00000000000000000000000000000000) (bvslt (index!36706 lt!360985) (size!21407 a!3170)))) (or ((_ is Undefined!8584) lt!360985) (ite ((_ is Found!8584) lt!360985) (= (select (arr!20986 a!3170) (index!36704 lt!360985)) k0!2044) (ite ((_ is MissingZero!8584) lt!360985) (= (select (arr!20986 a!3170) (index!36703 lt!360985)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8584) lt!360985) (= (select (arr!20986 a!3170) (index!36706 lt!360985)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103561 (= lt!360985 e!446383)))

(declare-fun c!88182 () Bool)

(assert (=> d!103561 (= c!88182 (and ((_ is Intermediate!8584) lt!360983) (undefined!9396 lt!360983)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43822 (_ BitVec 32)) SeekEntryResult!8584)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103561 (= lt!360983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2044 mask!3266) k0!2044 a!3170 mask!3266))))

(assert (=> d!103561 (validMask!0 mask!3266)))

(assert (=> d!103561 (= (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266) lt!360985)))

(assert (= (and d!103561 c!88182) b!806033))

(assert (= (and d!103561 (not c!88182)) b!806037))

(assert (= (and b!806037 c!88180) b!806032))

(assert (= (and b!806037 (not c!88180)) b!806035))

(assert (= (and b!806035 c!88181) b!806036))

(assert (= (and b!806035 (not c!88181)) b!806034))

(declare-fun m!748081 () Bool)

(assert (=> b!806034 m!748081))

(declare-fun m!748083 () Bool)

(assert (=> b!806037 m!748083))

(declare-fun m!748085 () Bool)

(assert (=> d!103561 m!748085))

(declare-fun m!748087 () Bool)

(assert (=> d!103561 m!748087))

(declare-fun m!748089 () Bool)

(assert (=> d!103561 m!748089))

(assert (=> d!103561 m!748019))

(declare-fun m!748091 () Bool)

(assert (=> d!103561 m!748091))

(assert (=> d!103561 m!748087))

(declare-fun m!748093 () Bool)

(assert (=> d!103561 m!748093))

(assert (=> b!805949 d!103561))

(declare-fun e!446406 () SeekEntryResult!8584)

(declare-fun b!806074 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!806074 (= e!446406 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!20986 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806076 () Bool)

(declare-fun c!88200 () Bool)

(declare-fun lt!361006 () (_ BitVec 64))

(assert (=> b!806076 (= c!88200 (= lt!361006 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446407 () SeekEntryResult!8584)

(assert (=> b!806076 (= e!446407 e!446406)))

(declare-fun b!806077 () Bool)

(declare-fun e!446405 () SeekEntryResult!8584)

(assert (=> b!806077 (= e!446405 e!446407)))

(declare-fun c!88198 () Bool)

(assert (=> b!806077 (= c!88198 (= lt!361006 (select (arr!20986 a!3170) j!153)))))

(declare-fun b!806078 () Bool)

(assert (=> b!806078 (= e!446407 (Found!8584 index!1236))))

(declare-fun b!806079 () Bool)

(assert (=> b!806079 (= e!446405 Undefined!8584)))

(declare-fun d!103571 () Bool)

(declare-fun lt!361005 () SeekEntryResult!8584)

(assert (=> d!103571 (and (or ((_ is Undefined!8584) lt!361005) (not ((_ is Found!8584) lt!361005)) (and (bvsge (index!36704 lt!361005) #b00000000000000000000000000000000) (bvslt (index!36704 lt!361005) (size!21407 a!3170)))) (or ((_ is Undefined!8584) lt!361005) ((_ is Found!8584) lt!361005) (not ((_ is MissingVacant!8584) lt!361005)) (not (= (index!36706 lt!361005) vacantBefore!23)) (and (bvsge (index!36706 lt!361005) #b00000000000000000000000000000000) (bvslt (index!36706 lt!361005) (size!21407 a!3170)))) (or ((_ is Undefined!8584) lt!361005) (ite ((_ is Found!8584) lt!361005) (= (select (arr!20986 a!3170) (index!36704 lt!361005)) (select (arr!20986 a!3170) j!153)) (and ((_ is MissingVacant!8584) lt!361005) (= (index!36706 lt!361005) vacantBefore!23) (= (select (arr!20986 a!3170) (index!36706 lt!361005)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103571 (= lt!361005 e!446405)))

(declare-fun c!88199 () Bool)

(assert (=> d!103571 (= c!88199 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103571 (= lt!361006 (select (arr!20986 a!3170) index!1236))))

(assert (=> d!103571 (validMask!0 mask!3266)))

(assert (=> d!103571 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20986 a!3170) j!153) a!3170 mask!3266) lt!361005)))

(declare-fun b!806075 () Bool)

(assert (=> b!806075 (= e!446406 (MissingVacant!8584 vacantBefore!23))))

(assert (= (and d!103571 c!88199) b!806079))

(assert (= (and d!103571 (not c!88199)) b!806077))

(assert (= (and b!806077 c!88198) b!806078))

(assert (= (and b!806077 (not c!88198)) b!806076))

(assert (= (and b!806076 c!88200) b!806075))

(assert (= (and b!806076 (not c!88200)) b!806074))

(declare-fun m!748107 () Bool)

(assert (=> b!806074 m!748107))

(assert (=> b!806074 m!748107))

(assert (=> b!806074 m!747995))

(declare-fun m!748109 () Bool)

(assert (=> b!806074 m!748109))

(declare-fun m!748111 () Bool)

(assert (=> d!103571 m!748111))

(declare-fun m!748113 () Bool)

(assert (=> d!103571 m!748113))

(assert (=> d!103571 m!748005))

(assert (=> d!103571 m!748019))

(assert (=> b!805944 d!103571))

(declare-fun b!806080 () Bool)

(declare-fun e!446409 () SeekEntryResult!8584)

(declare-fun lt!361007 () SeekEntryResult!8584)

(assert (=> b!806080 (= e!446409 (Found!8584 (index!36705 lt!361007)))))

(declare-fun b!806081 () Bool)

(declare-fun e!446410 () SeekEntryResult!8584)

(assert (=> b!806081 (= e!446410 Undefined!8584)))

(declare-fun e!446408 () SeekEntryResult!8584)

(declare-fun b!806082 () Bool)

(assert (=> b!806082 (= e!446408 (seekKeyOrZeroReturnVacant!0 (x!67546 lt!361007) (index!36705 lt!361007) (index!36705 lt!361007) (select (arr!20986 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806083 () Bool)

(declare-fun c!88202 () Bool)

(declare-fun lt!361008 () (_ BitVec 64))

(assert (=> b!806083 (= c!88202 (= lt!361008 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!806083 (= e!446409 e!446408)))

(declare-fun b!806084 () Bool)

(assert (=> b!806084 (= e!446408 (MissingZero!8584 (index!36705 lt!361007)))))

(declare-fun b!806085 () Bool)

(assert (=> b!806085 (= e!446410 e!446409)))

(assert (=> b!806085 (= lt!361008 (select (arr!20986 a!3170) (index!36705 lt!361007)))))

(declare-fun c!88201 () Bool)

(assert (=> b!806085 (= c!88201 (= lt!361008 (select (arr!20986 a!3170) j!153)))))

(declare-fun d!103575 () Bool)

(declare-fun lt!361009 () SeekEntryResult!8584)

(assert (=> d!103575 (and (or ((_ is Undefined!8584) lt!361009) (not ((_ is Found!8584) lt!361009)) (and (bvsge (index!36704 lt!361009) #b00000000000000000000000000000000) (bvslt (index!36704 lt!361009) (size!21407 a!3170)))) (or ((_ is Undefined!8584) lt!361009) ((_ is Found!8584) lt!361009) (not ((_ is MissingZero!8584) lt!361009)) (and (bvsge (index!36703 lt!361009) #b00000000000000000000000000000000) (bvslt (index!36703 lt!361009) (size!21407 a!3170)))) (or ((_ is Undefined!8584) lt!361009) ((_ is Found!8584) lt!361009) ((_ is MissingZero!8584) lt!361009) (not ((_ is MissingVacant!8584) lt!361009)) (and (bvsge (index!36706 lt!361009) #b00000000000000000000000000000000) (bvslt (index!36706 lt!361009) (size!21407 a!3170)))) (or ((_ is Undefined!8584) lt!361009) (ite ((_ is Found!8584) lt!361009) (= (select (arr!20986 a!3170) (index!36704 lt!361009)) (select (arr!20986 a!3170) j!153)) (ite ((_ is MissingZero!8584) lt!361009) (= (select (arr!20986 a!3170) (index!36703 lt!361009)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8584) lt!361009) (= (select (arr!20986 a!3170) (index!36706 lt!361009)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103575 (= lt!361009 e!446410)))

(declare-fun c!88203 () Bool)

(assert (=> d!103575 (= c!88203 (and ((_ is Intermediate!8584) lt!361007) (undefined!9396 lt!361007)))))

(assert (=> d!103575 (= lt!361007 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20986 a!3170) j!153) mask!3266) (select (arr!20986 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103575 (validMask!0 mask!3266)))

(assert (=> d!103575 (= (seekEntryOrOpen!0 (select (arr!20986 a!3170) j!153) a!3170 mask!3266) lt!361009)))

(assert (= (and d!103575 c!88203) b!806081))

(assert (= (and d!103575 (not c!88203)) b!806085))

(assert (= (and b!806085 c!88201) b!806080))

(assert (= (and b!806085 (not c!88201)) b!806083))

(assert (= (and b!806083 c!88202) b!806084))

(assert (= (and b!806083 (not c!88202)) b!806082))

(assert (=> b!806082 m!747995))

(declare-fun m!748115 () Bool)

(assert (=> b!806082 m!748115))

(declare-fun m!748117 () Bool)

(assert (=> b!806085 m!748117))

(declare-fun m!748119 () Bool)

(assert (=> d!103575 m!748119))

(assert (=> d!103575 m!747995))

(declare-fun m!748121 () Bool)

(assert (=> d!103575 m!748121))

(declare-fun m!748123 () Bool)

(assert (=> d!103575 m!748123))

(assert (=> d!103575 m!748019))

(declare-fun m!748125 () Bool)

(assert (=> d!103575 m!748125))

(assert (=> d!103575 m!748121))

(assert (=> d!103575 m!747995))

(declare-fun m!748127 () Bool)

(assert (=> d!103575 m!748127))

(assert (=> b!805944 d!103575))

(declare-fun b!806124 () Bool)

(declare-fun e!446435 () Bool)

(declare-fun e!446432 () Bool)

(assert (=> b!806124 (= e!446435 e!446432)))

(declare-fun c!88221 () Bool)

(assert (=> b!806124 (= c!88221 (validKeyInArray!0 (select (arr!20986 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35367 () Bool)

(declare-fun call!35370 () Bool)

(assert (=> bm!35367 (= call!35370 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!806125 () Bool)

(assert (=> b!806125 (= e!446432 call!35370)))

(declare-fun b!806126 () Bool)

(declare-fun e!446436 () Bool)

(assert (=> b!806126 (= e!446432 e!446436)))

(declare-fun lt!361029 () (_ BitVec 64))

(assert (=> b!806126 (= lt!361029 (select (arr!20986 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27588 0))(
  ( (Unit!27589) )
))
(declare-fun lt!361030 () Unit!27588)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43822 (_ BitVec 64) (_ BitVec 32)) Unit!27588)

(assert (=> b!806126 (= lt!361030 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!361029 #b00000000000000000000000000000000))))

(assert (=> b!806126 (arrayContainsKey!0 a!3170 lt!361029 #b00000000000000000000000000000000)))

(declare-fun lt!361028 () Unit!27588)

(assert (=> b!806126 (= lt!361028 lt!361030)))

(declare-fun res!550505 () Bool)

(assert (=> b!806126 (= res!550505 (= (seekEntryOrOpen!0 (select (arr!20986 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8584 #b00000000000000000000000000000000)))))

(assert (=> b!806126 (=> (not res!550505) (not e!446436))))

(declare-fun b!806127 () Bool)

(assert (=> b!806127 (= e!446436 call!35370)))

(declare-fun d!103577 () Bool)

(declare-fun res!550506 () Bool)

(assert (=> d!103577 (=> res!550506 e!446435)))

(assert (=> d!103577 (= res!550506 (bvsge #b00000000000000000000000000000000 (size!21407 a!3170)))))

(assert (=> d!103577 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!446435)))

(assert (= (and d!103577 (not res!550506)) b!806124))

(assert (= (and b!806124 c!88221) b!806126))

(assert (= (and b!806124 (not c!88221)) b!806125))

(assert (= (and b!806126 res!550505) b!806127))

(assert (= (or b!806127 b!806125) bm!35367))

(assert (=> b!806124 m!748063))

(assert (=> b!806124 m!748063))

(declare-fun m!748167 () Bool)

(assert (=> b!806124 m!748167))

(declare-fun m!748169 () Bool)

(assert (=> bm!35367 m!748169))

(assert (=> b!806126 m!748063))

(declare-fun m!748171 () Bool)

(assert (=> b!806126 m!748171))

(declare-fun m!748173 () Bool)

(assert (=> b!806126 m!748173))

(assert (=> b!806126 m!748063))

(declare-fun m!748175 () Bool)

(assert (=> b!806126 m!748175))

(assert (=> b!805942 d!103577))

(declare-fun b!806136 () Bool)

(declare-fun e!446442 () SeekEntryResult!8584)

(assert (=> b!806136 (= e!446442 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!360945 lt!360943 mask!3266))))

(declare-fun b!806138 () Bool)

(declare-fun c!88226 () Bool)

(declare-fun lt!361038 () (_ BitVec 64))

(assert (=> b!806138 (= c!88226 (= lt!361038 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446443 () SeekEntryResult!8584)

(assert (=> b!806138 (= e!446443 e!446442)))

(declare-fun b!806139 () Bool)

(declare-fun e!446441 () SeekEntryResult!8584)

(assert (=> b!806139 (= e!446441 e!446443)))

(declare-fun c!88224 () Bool)

(assert (=> b!806139 (= c!88224 (= lt!361038 lt!360945))))

(declare-fun b!806140 () Bool)

(assert (=> b!806140 (= e!446443 (Found!8584 index!1236))))

(declare-fun b!806141 () Bool)

(assert (=> b!806141 (= e!446441 Undefined!8584)))

(declare-fun lt!361037 () SeekEntryResult!8584)

(declare-fun d!103585 () Bool)

(assert (=> d!103585 (and (or ((_ is Undefined!8584) lt!361037) (not ((_ is Found!8584) lt!361037)) (and (bvsge (index!36704 lt!361037) #b00000000000000000000000000000000) (bvslt (index!36704 lt!361037) (size!21407 lt!360943)))) (or ((_ is Undefined!8584) lt!361037) ((_ is Found!8584) lt!361037) (not ((_ is MissingVacant!8584) lt!361037)) (not (= (index!36706 lt!361037) vacantAfter!23)) (and (bvsge (index!36706 lt!361037) #b00000000000000000000000000000000) (bvslt (index!36706 lt!361037) (size!21407 lt!360943)))) (or ((_ is Undefined!8584) lt!361037) (ite ((_ is Found!8584) lt!361037) (= (select (arr!20986 lt!360943) (index!36704 lt!361037)) lt!360945) (and ((_ is MissingVacant!8584) lt!361037) (= (index!36706 lt!361037) vacantAfter!23) (= (select (arr!20986 lt!360943) (index!36706 lt!361037)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103585 (= lt!361037 e!446441)))

(declare-fun c!88225 () Bool)

(assert (=> d!103585 (= c!88225 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103585 (= lt!361038 (select (arr!20986 lt!360943) index!1236))))

(assert (=> d!103585 (validMask!0 mask!3266)))

(assert (=> d!103585 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360945 lt!360943 mask!3266) lt!361037)))

(declare-fun b!806137 () Bool)

(assert (=> b!806137 (= e!446442 (MissingVacant!8584 vacantAfter!23))))

(assert (= (and d!103585 c!88225) b!806141))

(assert (= (and d!103585 (not c!88225)) b!806139))

(assert (= (and b!806139 c!88224) b!806140))

(assert (= (and b!806139 (not c!88224)) b!806138))

(assert (= (and b!806138 c!88226) b!806137))

(assert (= (and b!806138 (not c!88226)) b!806136))

(assert (=> b!806136 m!748107))

(assert (=> b!806136 m!748107))

(declare-fun m!748177 () Bool)

(assert (=> b!806136 m!748177))

(declare-fun m!748179 () Bool)

(assert (=> d!103585 m!748179))

(declare-fun m!748181 () Bool)

(assert (=> d!103585 m!748181))

(declare-fun m!748183 () Bool)

(assert (=> d!103585 m!748183))

(assert (=> d!103585 m!748019))

(assert (=> b!805953 d!103585))

(declare-fun b!806142 () Bool)

(declare-fun e!446445 () SeekEntryResult!8584)

(declare-fun lt!361039 () SeekEntryResult!8584)

(assert (=> b!806142 (= e!446445 (Found!8584 (index!36705 lt!361039)))))

(declare-fun b!806143 () Bool)

(declare-fun e!446446 () SeekEntryResult!8584)

(assert (=> b!806143 (= e!446446 Undefined!8584)))

(declare-fun e!446444 () SeekEntryResult!8584)

(declare-fun b!806144 () Bool)

(assert (=> b!806144 (= e!446444 (seekKeyOrZeroReturnVacant!0 (x!67546 lt!361039) (index!36705 lt!361039) (index!36705 lt!361039) lt!360945 lt!360943 mask!3266))))

(declare-fun b!806145 () Bool)

(declare-fun c!88228 () Bool)

(declare-fun lt!361040 () (_ BitVec 64))

(assert (=> b!806145 (= c!88228 (= lt!361040 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!806145 (= e!446445 e!446444)))

(declare-fun b!806146 () Bool)

(assert (=> b!806146 (= e!446444 (MissingZero!8584 (index!36705 lt!361039)))))

(declare-fun b!806147 () Bool)

(assert (=> b!806147 (= e!446446 e!446445)))

(assert (=> b!806147 (= lt!361040 (select (arr!20986 lt!360943) (index!36705 lt!361039)))))

(declare-fun c!88227 () Bool)

(assert (=> b!806147 (= c!88227 (= lt!361040 lt!360945))))

(declare-fun d!103587 () Bool)

(declare-fun lt!361041 () SeekEntryResult!8584)

(assert (=> d!103587 (and (or ((_ is Undefined!8584) lt!361041) (not ((_ is Found!8584) lt!361041)) (and (bvsge (index!36704 lt!361041) #b00000000000000000000000000000000) (bvslt (index!36704 lt!361041) (size!21407 lt!360943)))) (or ((_ is Undefined!8584) lt!361041) ((_ is Found!8584) lt!361041) (not ((_ is MissingZero!8584) lt!361041)) (and (bvsge (index!36703 lt!361041) #b00000000000000000000000000000000) (bvslt (index!36703 lt!361041) (size!21407 lt!360943)))) (or ((_ is Undefined!8584) lt!361041) ((_ is Found!8584) lt!361041) ((_ is MissingZero!8584) lt!361041) (not ((_ is MissingVacant!8584) lt!361041)) (and (bvsge (index!36706 lt!361041) #b00000000000000000000000000000000) (bvslt (index!36706 lt!361041) (size!21407 lt!360943)))) (or ((_ is Undefined!8584) lt!361041) (ite ((_ is Found!8584) lt!361041) (= (select (arr!20986 lt!360943) (index!36704 lt!361041)) lt!360945) (ite ((_ is MissingZero!8584) lt!361041) (= (select (arr!20986 lt!360943) (index!36703 lt!361041)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8584) lt!361041) (= (select (arr!20986 lt!360943) (index!36706 lt!361041)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103587 (= lt!361041 e!446446)))

(declare-fun c!88229 () Bool)

(assert (=> d!103587 (= c!88229 (and ((_ is Intermediate!8584) lt!361039) (undefined!9396 lt!361039)))))

(assert (=> d!103587 (= lt!361039 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!360945 mask!3266) lt!360945 lt!360943 mask!3266))))

(assert (=> d!103587 (validMask!0 mask!3266)))

(assert (=> d!103587 (= (seekEntryOrOpen!0 lt!360945 lt!360943 mask!3266) lt!361041)))

(assert (= (and d!103587 c!88229) b!806143))

(assert (= (and d!103587 (not c!88229)) b!806147))

(assert (= (and b!806147 c!88227) b!806142))

(assert (= (and b!806147 (not c!88227)) b!806145))

(assert (= (and b!806145 c!88228) b!806146))

(assert (= (and b!806145 (not c!88228)) b!806144))

(declare-fun m!748185 () Bool)

(assert (=> b!806144 m!748185))

(declare-fun m!748187 () Bool)

(assert (=> b!806147 m!748187))

(declare-fun m!748189 () Bool)

(assert (=> d!103587 m!748189))

(declare-fun m!748191 () Bool)

(assert (=> d!103587 m!748191))

(declare-fun m!748193 () Bool)

(assert (=> d!103587 m!748193))

(assert (=> d!103587 m!748019))

(declare-fun m!748195 () Bool)

(assert (=> d!103587 m!748195))

(assert (=> d!103587 m!748191))

(declare-fun m!748197 () Bool)

(assert (=> d!103587 m!748197))

(assert (=> b!805953 d!103587))

(declare-fun b!806172 () Bool)

(declare-fun e!446467 () Bool)

(declare-fun e!446469 () Bool)

(assert (=> b!806172 (= e!446467 e!446469)))

(declare-fun res!550525 () Bool)

(assert (=> b!806172 (=> (not res!550525) (not e!446469))))

(declare-fun e!446466 () Bool)

(assert (=> b!806172 (= res!550525 (not e!446466))))

(declare-fun res!550523 () Bool)

(assert (=> b!806172 (=> (not res!550523) (not e!446466))))

(assert (=> b!806172 (= res!550523 (validKeyInArray!0 (select (arr!20986 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!103589 () Bool)

(declare-fun res!550524 () Bool)

(assert (=> d!103589 (=> res!550524 e!446467)))

(assert (=> d!103589 (= res!550524 (bvsge #b00000000000000000000000000000000 (size!21407 a!3170)))))

(assert (=> d!103589 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14999) e!446467)))

(declare-fun bm!35375 () Bool)

(declare-fun call!35378 () Bool)

(declare-fun c!88235 () Bool)

(assert (=> bm!35375 (= call!35378 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88235 (Cons!14998 (select (arr!20986 a!3170) #b00000000000000000000000000000000) Nil!14999) Nil!14999)))))

(declare-fun b!806173 () Bool)

(declare-fun e!446468 () Bool)

(assert (=> b!806173 (= e!446469 e!446468)))

(assert (=> b!806173 (= c!88235 (validKeyInArray!0 (select (arr!20986 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!806174 () Bool)

(assert (=> b!806174 (= e!446468 call!35378)))

(declare-fun b!806175 () Bool)

(declare-fun contains!4126 (List!15002 (_ BitVec 64)) Bool)

(assert (=> b!806175 (= e!446466 (contains!4126 Nil!14999 (select (arr!20986 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!806176 () Bool)

(assert (=> b!806176 (= e!446468 call!35378)))

(assert (= (and d!103589 (not res!550524)) b!806172))

(assert (= (and b!806172 res!550523) b!806175))

(assert (= (and b!806172 res!550525) b!806173))

(assert (= (and b!806173 c!88235) b!806174))

(assert (= (and b!806173 (not c!88235)) b!806176))

(assert (= (or b!806174 b!806176) bm!35375))

(assert (=> b!806172 m!748063))

(assert (=> b!806172 m!748063))

(assert (=> b!806172 m!748167))

(assert (=> bm!35375 m!748063))

(declare-fun m!748209 () Bool)

(assert (=> bm!35375 m!748209))

(assert (=> b!806173 m!748063))

(assert (=> b!806173 m!748063))

(assert (=> b!806173 m!748167))

(assert (=> b!806175 m!748063))

(assert (=> b!806175 m!748063))

(declare-fun m!748211 () Bool)

(assert (=> b!806175 m!748211))

(assert (=> b!805943 d!103589))

(check-sat (not b!806034) (not b!806173) (not b!806126) (not d!103571) (not b!805995) (not bm!35367) (not d!103561) (not bm!35375) (not b!806074) (not d!103585) (not d!103575) (not b!806172) (not d!103587) (not b!806175) (not b!806144) (not b!806136) (not b!806082) (not b!806124))
(check-sat)
