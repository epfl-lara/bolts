; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128634 () Bool)

(assert start!128634)

(declare-fun b!1507478 () Bool)

(declare-fun res!1027773 () Bool)

(declare-fun e!842299 () Bool)

(assert (=> b!1507478 (=> (not res!1027773) (not e!842299))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100520 0))(
  ( (array!100521 (arr!48497 (Array (_ BitVec 32) (_ BitVec 64))) (size!49048 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100520)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507478 (= res!1027773 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49048 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49048 a!2804))))))

(declare-fun b!1507479 () Bool)

(declare-fun e!842298 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!654367 () (_ BitVec 32))

(assert (=> b!1507479 (= e!842298 (and (bvsge mask!2512 #b00000000000000000000000000000000) (or (bvslt lt!654367 #b00000000000000000000000000000000) (bvsge lt!654367 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(declare-fun res!1027776 () Bool)

(assert (=> start!128634 (=> (not res!1027776) (not e!842299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128634 (= res!1027776 (validMask!0 mask!2512))))

(assert (=> start!128634 e!842299))

(assert (=> start!128634 true))

(declare-fun array_inv!37442 (array!100520) Bool)

(assert (=> start!128634 (array_inv!37442 a!2804)))

(declare-fun b!1507480 () Bool)

(declare-fun res!1027774 () Bool)

(assert (=> b!1507480 (=> (not res!1027774) (not e!842299))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507480 (= res!1027774 (validKeyInArray!0 (select (arr!48497 a!2804) j!70)))))

(declare-fun b!1507481 () Bool)

(assert (=> b!1507481 (= e!842299 e!842298)))

(declare-fun res!1027770 () Bool)

(assert (=> b!1507481 (=> (not res!1027770) (not e!842298))))

(declare-datatypes ((SeekEntryResult!12689 0))(
  ( (MissingZero!12689 (index!53150 (_ BitVec 32))) (Found!12689 (index!53151 (_ BitVec 32))) (Intermediate!12689 (undefined!13501 Bool) (index!53152 (_ BitVec 32)) (x!134914 (_ BitVec 32))) (Undefined!12689) (MissingVacant!12689 (index!53153 (_ BitVec 32))) )
))
(declare-fun lt!654366 () SeekEntryResult!12689)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100520 (_ BitVec 32)) SeekEntryResult!12689)

(assert (=> b!1507481 (= res!1027770 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!654367 (select (arr!48497 a!2804) j!70) a!2804 mask!2512) lt!654366))))

(assert (=> b!1507481 (= lt!654366 (Intermediate!12689 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507481 (= lt!654367 (toIndex!0 (select (arr!48497 a!2804) j!70) mask!2512))))

(declare-fun b!1507482 () Bool)

(declare-fun res!1027775 () Bool)

(assert (=> b!1507482 (=> (not res!1027775) (not e!842299))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1507482 (= res!1027775 (and (= (size!49048 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49048 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49048 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507483 () Bool)

(declare-fun res!1027769 () Bool)

(assert (=> b!1507483 (=> (not res!1027769) (not e!842299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100520 (_ BitVec 32)) Bool)

(assert (=> b!1507483 (= res!1027769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507484 () Bool)

(declare-fun res!1027771 () Bool)

(assert (=> b!1507484 (=> (not res!1027771) (not e!842299))))

(assert (=> b!1507484 (= res!1027771 (validKeyInArray!0 (select (arr!48497 a!2804) i!961)))))

(declare-fun b!1507485 () Bool)

(declare-fun res!1027768 () Bool)

(assert (=> b!1507485 (=> (not res!1027768) (not e!842299))))

(declare-datatypes ((List!35160 0))(
  ( (Nil!35157) (Cons!35156 (h!36560 (_ BitVec 64)) (t!49861 List!35160)) )
))
(declare-fun arrayNoDuplicates!0 (array!100520 (_ BitVec 32) List!35160) Bool)

(assert (=> b!1507485 (= res!1027768 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35157))))

(declare-fun b!1507486 () Bool)

(declare-fun res!1027772 () Bool)

(assert (=> b!1507486 (=> (not res!1027772) (not e!842298))))

(assert (=> b!1507486 (= res!1027772 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48497 a!2804) j!70) a!2804 mask!2512) lt!654366))))

(assert (= (and start!128634 res!1027776) b!1507482))

(assert (= (and b!1507482 res!1027775) b!1507484))

(assert (= (and b!1507484 res!1027771) b!1507480))

(assert (= (and b!1507480 res!1027774) b!1507483))

(assert (= (and b!1507483 res!1027769) b!1507485))

(assert (= (and b!1507485 res!1027768) b!1507478))

(assert (= (and b!1507478 res!1027773) b!1507481))

(assert (= (and b!1507481 res!1027770) b!1507486))

(assert (= (and b!1507486 res!1027772) b!1507479))

(declare-fun m!1390273 () Bool)

(assert (=> b!1507483 m!1390273))

(declare-fun m!1390275 () Bool)

(assert (=> start!128634 m!1390275))

(declare-fun m!1390277 () Bool)

(assert (=> start!128634 m!1390277))

(declare-fun m!1390279 () Bool)

(assert (=> b!1507485 m!1390279))

(declare-fun m!1390281 () Bool)

(assert (=> b!1507480 m!1390281))

(assert (=> b!1507480 m!1390281))

(declare-fun m!1390283 () Bool)

(assert (=> b!1507480 m!1390283))

(assert (=> b!1507486 m!1390281))

(assert (=> b!1507486 m!1390281))

(declare-fun m!1390285 () Bool)

(assert (=> b!1507486 m!1390285))

(declare-fun m!1390287 () Bool)

(assert (=> b!1507484 m!1390287))

(assert (=> b!1507484 m!1390287))

(declare-fun m!1390289 () Bool)

(assert (=> b!1507484 m!1390289))

(assert (=> b!1507481 m!1390281))

(assert (=> b!1507481 m!1390281))

(declare-fun m!1390291 () Bool)

(assert (=> b!1507481 m!1390291))

(assert (=> b!1507481 m!1390281))

(declare-fun m!1390293 () Bool)

(assert (=> b!1507481 m!1390293))

(check-sat (not start!128634) (not b!1507484) (not b!1507481) (not b!1507480) (not b!1507486) (not b!1507485) (not b!1507483))
(check-sat)
(get-model)

(declare-fun b!1507524 () Bool)

(declare-fun e!842318 () Bool)

(declare-fun contains!9979 (List!35160 (_ BitVec 64)) Bool)

(assert (=> b!1507524 (= e!842318 (contains!9979 Nil!35157 (select (arr!48497 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507525 () Bool)

(declare-fun e!842320 () Bool)

(declare-fun call!68259 () Bool)

(assert (=> b!1507525 (= e!842320 call!68259)))

(declare-fun bm!68256 () Bool)

(declare-fun c!139397 () Bool)

(assert (=> bm!68256 (= call!68259 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139397 (Cons!35156 (select (arr!48497 a!2804) #b00000000000000000000000000000000) Nil!35157) Nil!35157)))))

(declare-fun d!158277 () Bool)

(declare-fun res!1027812 () Bool)

(declare-fun e!842321 () Bool)

(assert (=> d!158277 (=> res!1027812 e!842321)))

(assert (=> d!158277 (= res!1027812 (bvsge #b00000000000000000000000000000000 (size!49048 a!2804)))))

(assert (=> d!158277 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35157) e!842321)))

(declare-fun b!1507526 () Bool)

(declare-fun e!842319 () Bool)

(assert (=> b!1507526 (= e!842321 e!842319)))

(declare-fun res!1027811 () Bool)

(assert (=> b!1507526 (=> (not res!1027811) (not e!842319))))

(assert (=> b!1507526 (= res!1027811 (not e!842318))))

(declare-fun res!1027810 () Bool)

(assert (=> b!1507526 (=> (not res!1027810) (not e!842318))))

(assert (=> b!1507526 (= res!1027810 (validKeyInArray!0 (select (arr!48497 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507527 () Bool)

(assert (=> b!1507527 (= e!842319 e!842320)))

(assert (=> b!1507527 (= c!139397 (validKeyInArray!0 (select (arr!48497 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507528 () Bool)

(assert (=> b!1507528 (= e!842320 call!68259)))

(assert (= (and d!158277 (not res!1027812)) b!1507526))

(assert (= (and b!1507526 res!1027810) b!1507524))

(assert (= (and b!1507526 res!1027811) b!1507527))

(assert (= (and b!1507527 c!139397) b!1507525))

(assert (= (and b!1507527 (not c!139397)) b!1507528))

(assert (= (or b!1507525 b!1507528) bm!68256))

(declare-fun m!1390317 () Bool)

(assert (=> b!1507524 m!1390317))

(assert (=> b!1507524 m!1390317))

(declare-fun m!1390319 () Bool)

(assert (=> b!1507524 m!1390319))

(assert (=> bm!68256 m!1390317))

(declare-fun m!1390321 () Bool)

(assert (=> bm!68256 m!1390321))

(assert (=> b!1507526 m!1390317))

(assert (=> b!1507526 m!1390317))

(declare-fun m!1390323 () Bool)

(assert (=> b!1507526 m!1390323))

(assert (=> b!1507527 m!1390317))

(assert (=> b!1507527 m!1390317))

(assert (=> b!1507527 m!1390323))

(assert (=> b!1507485 d!158277))

(declare-fun d!158279 () Bool)

(assert (=> d!158279 (= (validKeyInArray!0 (select (arr!48497 a!2804) j!70)) (and (not (= (select (arr!48497 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48497 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1507480 d!158279))

(declare-fun d!158283 () Bool)

(assert (=> d!158283 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128634 d!158283))

(declare-fun d!158291 () Bool)

(assert (=> d!158291 (= (array_inv!37442 a!2804) (bvsge (size!49048 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128634 d!158291))

(declare-fun b!1507586 () Bool)

(declare-fun lt!654397 () SeekEntryResult!12689)

(assert (=> b!1507586 (and (bvsge (index!53152 lt!654397) #b00000000000000000000000000000000) (bvslt (index!53152 lt!654397) (size!49048 a!2804)))))

(declare-fun res!1027842 () Bool)

(assert (=> b!1507586 (= res!1027842 (= (select (arr!48497 a!2804) (index!53152 lt!654397)) (select (arr!48497 a!2804) j!70)))))

(declare-fun e!842362 () Bool)

(assert (=> b!1507586 (=> res!1027842 e!842362)))

(declare-fun e!842363 () Bool)

(assert (=> b!1507586 (= e!842363 e!842362)))

(declare-fun b!1507587 () Bool)

(declare-fun e!842365 () SeekEntryResult!12689)

(assert (=> b!1507587 (= e!842365 (Intermediate!12689 false lt!654367 #b00000000000000000000000000000000))))

(declare-fun b!1507588 () Bool)

(assert (=> b!1507588 (and (bvsge (index!53152 lt!654397) #b00000000000000000000000000000000) (bvslt (index!53152 lt!654397) (size!49048 a!2804)))))

(declare-fun res!1027840 () Bool)

(assert (=> b!1507588 (= res!1027840 (= (select (arr!48497 a!2804) (index!53152 lt!654397)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1507588 (=> res!1027840 e!842362)))

(declare-fun b!1507589 () Bool)

(assert (=> b!1507589 (and (bvsge (index!53152 lt!654397) #b00000000000000000000000000000000) (bvslt (index!53152 lt!654397) (size!49048 a!2804)))))

(assert (=> b!1507589 (= e!842362 (= (select (arr!48497 a!2804) (index!53152 lt!654397)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1507590 () Bool)

(declare-fun e!842366 () Bool)

(assert (=> b!1507590 (= e!842366 e!842363)))

(declare-fun res!1027841 () Bool)

(get-info :version)

(assert (=> b!1507590 (= res!1027841 (and ((_ is Intermediate!12689) lt!654397) (not (undefined!13501 lt!654397)) (bvslt (x!134914 lt!654397) #b01111111111111111111111111111110) (bvsge (x!134914 lt!654397) #b00000000000000000000000000000000) (bvsge (x!134914 lt!654397) #b00000000000000000000000000000000)))))

(assert (=> b!1507590 (=> (not res!1027841) (not e!842363))))

(declare-fun b!1507591 () Bool)

(assert (=> b!1507591 (= e!842366 (bvsge (x!134914 lt!654397) #b01111111111111111111111111111110))))

(declare-fun b!1507592 () Bool)

(declare-fun e!842364 () SeekEntryResult!12689)

(assert (=> b!1507592 (= e!842364 e!842365)))

(declare-fun c!139413 () Bool)

(declare-fun lt!654396 () (_ BitVec 64))

(assert (=> b!1507592 (= c!139413 (or (= lt!654396 (select (arr!48497 a!2804) j!70)) (= (bvadd lt!654396 lt!654396) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1507593 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507593 (= e!842365 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!654367 #b00000000000000000000000000000000 mask!2512) (select (arr!48497 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!158293 () Bool)

(assert (=> d!158293 e!842366))

(declare-fun c!139415 () Bool)

(assert (=> d!158293 (= c!139415 (and ((_ is Intermediate!12689) lt!654397) (undefined!13501 lt!654397)))))

(assert (=> d!158293 (= lt!654397 e!842364)))

(declare-fun c!139414 () Bool)

(assert (=> d!158293 (= c!139414 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158293 (= lt!654396 (select (arr!48497 a!2804) lt!654367))))

(assert (=> d!158293 (validMask!0 mask!2512)))

(assert (=> d!158293 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!654367 (select (arr!48497 a!2804) j!70) a!2804 mask!2512) lt!654397)))

(declare-fun b!1507594 () Bool)

(assert (=> b!1507594 (= e!842364 (Intermediate!12689 true lt!654367 #b00000000000000000000000000000000))))

(assert (= (and d!158293 c!139414) b!1507594))

(assert (= (and d!158293 (not c!139414)) b!1507592))

(assert (= (and b!1507592 c!139413) b!1507587))

(assert (= (and b!1507592 (not c!139413)) b!1507593))

(assert (= (and d!158293 c!139415) b!1507591))

(assert (= (and d!158293 (not c!139415)) b!1507590))

(assert (= (and b!1507590 res!1027841) b!1507586))

(assert (= (and b!1507586 (not res!1027842)) b!1507588))

(assert (= (and b!1507588 (not res!1027840)) b!1507589))

(declare-fun m!1390353 () Bool)

(assert (=> b!1507593 m!1390353))

(assert (=> b!1507593 m!1390353))

(assert (=> b!1507593 m!1390281))

(declare-fun m!1390355 () Bool)

(assert (=> b!1507593 m!1390355))

(declare-fun m!1390357 () Bool)

(assert (=> b!1507588 m!1390357))

(assert (=> b!1507586 m!1390357))

(assert (=> b!1507589 m!1390357))

(declare-fun m!1390359 () Bool)

(assert (=> d!158293 m!1390359))

(assert (=> d!158293 m!1390275))

(assert (=> b!1507481 d!158293))

(declare-fun d!158299 () Bool)

(declare-fun lt!654403 () (_ BitVec 32))

(declare-fun lt!654402 () (_ BitVec 32))

(assert (=> d!158299 (= lt!654403 (bvmul (bvxor lt!654402 (bvlshr lt!654402 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158299 (= lt!654402 ((_ extract 31 0) (bvand (bvxor (select (arr!48497 a!2804) j!70) (bvlshr (select (arr!48497 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158299 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1027843 (let ((h!36562 ((_ extract 31 0) (bvand (bvxor (select (arr!48497 a!2804) j!70) (bvlshr (select (arr!48497 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!134917 (bvmul (bvxor h!36562 (bvlshr h!36562 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!134917 (bvlshr x!134917 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1027843 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1027843 #b00000000000000000000000000000000))))))

(assert (=> d!158299 (= (toIndex!0 (select (arr!48497 a!2804) j!70) mask!2512) (bvand (bvxor lt!654403 (bvlshr lt!654403 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1507481 d!158299))

(declare-fun b!1507595 () Bool)

(declare-fun lt!654405 () SeekEntryResult!12689)

(assert (=> b!1507595 (and (bvsge (index!53152 lt!654405) #b00000000000000000000000000000000) (bvslt (index!53152 lt!654405) (size!49048 a!2804)))))

(declare-fun res!1027846 () Bool)

(assert (=> b!1507595 (= res!1027846 (= (select (arr!48497 a!2804) (index!53152 lt!654405)) (select (arr!48497 a!2804) j!70)))))

(declare-fun e!842367 () Bool)

(assert (=> b!1507595 (=> res!1027846 e!842367)))

(declare-fun e!842368 () Bool)

(assert (=> b!1507595 (= e!842368 e!842367)))

(declare-fun b!1507596 () Bool)

(declare-fun e!842370 () SeekEntryResult!12689)

(assert (=> b!1507596 (= e!842370 (Intermediate!12689 false index!487 x!534))))

(declare-fun b!1507597 () Bool)

(assert (=> b!1507597 (and (bvsge (index!53152 lt!654405) #b00000000000000000000000000000000) (bvslt (index!53152 lt!654405) (size!49048 a!2804)))))

(declare-fun res!1027844 () Bool)

(assert (=> b!1507597 (= res!1027844 (= (select (arr!48497 a!2804) (index!53152 lt!654405)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1507597 (=> res!1027844 e!842367)))

(declare-fun b!1507598 () Bool)

(assert (=> b!1507598 (and (bvsge (index!53152 lt!654405) #b00000000000000000000000000000000) (bvslt (index!53152 lt!654405) (size!49048 a!2804)))))

(assert (=> b!1507598 (= e!842367 (= (select (arr!48497 a!2804) (index!53152 lt!654405)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1507599 () Bool)

(declare-fun e!842371 () Bool)

(assert (=> b!1507599 (= e!842371 e!842368)))

(declare-fun res!1027845 () Bool)

(assert (=> b!1507599 (= res!1027845 (and ((_ is Intermediate!12689) lt!654405) (not (undefined!13501 lt!654405)) (bvslt (x!134914 lt!654405) #b01111111111111111111111111111110) (bvsge (x!134914 lt!654405) #b00000000000000000000000000000000) (bvsge (x!134914 lt!654405) x!534)))))

(assert (=> b!1507599 (=> (not res!1027845) (not e!842368))))

(declare-fun b!1507600 () Bool)

(assert (=> b!1507600 (= e!842371 (bvsge (x!134914 lt!654405) #b01111111111111111111111111111110))))

(declare-fun b!1507601 () Bool)

(declare-fun e!842369 () SeekEntryResult!12689)

(assert (=> b!1507601 (= e!842369 e!842370)))

(declare-fun lt!654404 () (_ BitVec 64))

(declare-fun c!139416 () Bool)

(assert (=> b!1507601 (= c!139416 (or (= lt!654404 (select (arr!48497 a!2804) j!70)) (= (bvadd lt!654404 lt!654404) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1507602 () Bool)

(assert (=> b!1507602 (= e!842370 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48497 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!158301 () Bool)

(assert (=> d!158301 e!842371))

(declare-fun c!139418 () Bool)

(assert (=> d!158301 (= c!139418 (and ((_ is Intermediate!12689) lt!654405) (undefined!13501 lt!654405)))))

(assert (=> d!158301 (= lt!654405 e!842369)))

(declare-fun c!139417 () Bool)

(assert (=> d!158301 (= c!139417 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!158301 (= lt!654404 (select (arr!48497 a!2804) index!487))))

(assert (=> d!158301 (validMask!0 mask!2512)))

(assert (=> d!158301 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48497 a!2804) j!70) a!2804 mask!2512) lt!654405)))

(declare-fun b!1507603 () Bool)

(assert (=> b!1507603 (= e!842369 (Intermediate!12689 true index!487 x!534))))

(assert (= (and d!158301 c!139417) b!1507603))

(assert (= (and d!158301 (not c!139417)) b!1507601))

(assert (= (and b!1507601 c!139416) b!1507596))

(assert (= (and b!1507601 (not c!139416)) b!1507602))

(assert (= (and d!158301 c!139418) b!1507600))

(assert (= (and d!158301 (not c!139418)) b!1507599))

(assert (= (and b!1507599 res!1027845) b!1507595))

(assert (= (and b!1507595 (not res!1027846)) b!1507597))

(assert (= (and b!1507597 (not res!1027844)) b!1507598))

(declare-fun m!1390361 () Bool)

(assert (=> b!1507602 m!1390361))

(assert (=> b!1507602 m!1390361))

(assert (=> b!1507602 m!1390281))

(declare-fun m!1390363 () Bool)

(assert (=> b!1507602 m!1390363))

(declare-fun m!1390365 () Bool)

(assert (=> b!1507597 m!1390365))

(assert (=> b!1507595 m!1390365))

(assert (=> b!1507598 m!1390365))

(declare-fun m!1390367 () Bool)

(assert (=> d!158301 m!1390367))

(assert (=> d!158301 m!1390275))

(assert (=> b!1507486 d!158301))

(declare-fun d!158303 () Bool)

(assert (=> d!158303 (= (validKeyInArray!0 (select (arr!48497 a!2804) i!961)) (and (not (= (select (arr!48497 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48497 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1507484 d!158303))

(declare-fun b!1507630 () Bool)

(declare-fun e!842390 () Bool)

(declare-fun call!68271 () Bool)

(assert (=> b!1507630 (= e!842390 call!68271)))

(declare-fun b!1507631 () Bool)

(declare-fun e!842388 () Bool)

(assert (=> b!1507631 (= e!842390 e!842388)))

(declare-fun lt!654417 () (_ BitVec 64))

(assert (=> b!1507631 (= lt!654417 (select (arr!48497 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50278 0))(
  ( (Unit!50279) )
))
(declare-fun lt!654416 () Unit!50278)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100520 (_ BitVec 64) (_ BitVec 32)) Unit!50278)

(assert (=> b!1507631 (= lt!654416 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654417 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1507631 (arrayContainsKey!0 a!2804 lt!654417 #b00000000000000000000000000000000)))

(declare-fun lt!654418 () Unit!50278)

(assert (=> b!1507631 (= lt!654418 lt!654416)))

(declare-fun res!1027858 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100520 (_ BitVec 32)) SeekEntryResult!12689)

(assert (=> b!1507631 (= res!1027858 (= (seekEntryOrOpen!0 (select (arr!48497 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12689 #b00000000000000000000000000000000)))))

(assert (=> b!1507631 (=> (not res!1027858) (not e!842388))))

(declare-fun d!158305 () Bool)

(declare-fun res!1027857 () Bool)

(declare-fun e!842389 () Bool)

(assert (=> d!158305 (=> res!1027857 e!842389)))

(assert (=> d!158305 (= res!1027857 (bvsge #b00000000000000000000000000000000 (size!49048 a!2804)))))

(assert (=> d!158305 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842389)))

(declare-fun bm!68268 () Bool)

(assert (=> bm!68268 (= call!68271 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1507632 () Bool)

(assert (=> b!1507632 (= e!842388 call!68271)))

(declare-fun b!1507633 () Bool)

(assert (=> b!1507633 (= e!842389 e!842390)))

(declare-fun c!139427 () Bool)

(assert (=> b!1507633 (= c!139427 (validKeyInArray!0 (select (arr!48497 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158305 (not res!1027857)) b!1507633))

(assert (= (and b!1507633 c!139427) b!1507631))

(assert (= (and b!1507633 (not c!139427)) b!1507630))

(assert (= (and b!1507631 res!1027858) b!1507632))

(assert (= (or b!1507632 b!1507630) bm!68268))

(assert (=> b!1507631 m!1390317))

(declare-fun m!1390369 () Bool)

(assert (=> b!1507631 m!1390369))

(declare-fun m!1390371 () Bool)

(assert (=> b!1507631 m!1390371))

(assert (=> b!1507631 m!1390317))

(declare-fun m!1390373 () Bool)

(assert (=> b!1507631 m!1390373))

(declare-fun m!1390375 () Bool)

(assert (=> bm!68268 m!1390375))

(assert (=> b!1507633 m!1390317))

(assert (=> b!1507633 m!1390317))

(assert (=> b!1507633 m!1390323))

(assert (=> b!1507483 d!158305))

(check-sat (not d!158293) (not bm!68256) (not b!1507631) (not b!1507602) (not b!1507524) (not b!1507593) (not b!1507633) (not d!158301) (not bm!68268) (not b!1507526) (not b!1507527))
(check-sat)
