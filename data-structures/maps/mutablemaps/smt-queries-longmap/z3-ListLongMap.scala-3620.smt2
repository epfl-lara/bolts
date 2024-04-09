; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49888 () Bool)

(assert start!49888)

(declare-fun b!547259 () Bool)

(declare-fun e!316222 () Bool)

(declare-fun e!316223 () Bool)

(assert (=> b!547259 (= e!316222 e!316223)))

(declare-fun res!340986 () Bool)

(assert (=> b!547259 (=> res!340986 e!316223)))

(declare-datatypes ((List!10706 0))(
  ( (Nil!10703) (Cons!10702 (h!11669 (_ BitVec 64)) (t!16942 List!10706)) )
))
(declare-fun contains!2824 (List!10706 (_ BitVec 64)) Bool)

(assert (=> b!547259 (= res!340986 (contains!2824 Nil!10703 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!547260 () Bool)

(declare-fun res!340983 () Bool)

(declare-fun e!316224 () Bool)

(assert (=> b!547260 (=> (not res!340983) (not e!316224))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34508 0))(
  ( (array!34509 (arr!16573 (Array (_ BitVec 32) (_ BitVec 64))) (size!16937 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34508)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!547260 (= res!340983 (and (= (size!16937 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16937 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16937 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547261 () Bool)

(declare-fun res!340988 () Bool)

(assert (=> b!547261 (=> (not res!340988) (not e!316224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547261 (= res!340988 (validKeyInArray!0 (select (arr!16573 a!3118) j!142)))))

(declare-fun b!547262 () Bool)

(assert (=> b!547262 (= e!316224 e!316222)))

(declare-fun res!340987 () Bool)

(assert (=> b!547262 (=> (not res!340987) (not e!316222))))

(declare-datatypes ((SeekEntryResult!5029 0))(
  ( (MissingZero!5029 (index!22343 (_ BitVec 32))) (Found!5029 (index!22344 (_ BitVec 32))) (Intermediate!5029 (undefined!5841 Bool) (index!22345 (_ BitVec 32)) (x!51316 (_ BitVec 32))) (Undefined!5029) (MissingVacant!5029 (index!22346 (_ BitVec 32))) )
))
(declare-fun lt!249503 () SeekEntryResult!5029)

(assert (=> b!547262 (= res!340987 (or (= lt!249503 (MissingZero!5029 i!1132)) (= lt!249503 (MissingVacant!5029 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34508 (_ BitVec 32)) SeekEntryResult!5029)

(assert (=> b!547262 (= lt!249503 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!340985 () Bool)

(assert (=> start!49888 (=> (not res!340985) (not e!316224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49888 (= res!340985 (validMask!0 mask!3119))))

(assert (=> start!49888 e!316224))

(assert (=> start!49888 true))

(declare-fun array_inv!12347 (array!34508) Bool)

(assert (=> start!49888 (array_inv!12347 a!3118)))

(declare-fun b!547263 () Bool)

(declare-fun res!340980 () Bool)

(assert (=> b!547263 (=> (not res!340980) (not e!316224))))

(assert (=> b!547263 (= res!340980 (validKeyInArray!0 k0!1914))))

(declare-fun b!547264 () Bool)

(assert (=> b!547264 (= e!316223 (contains!2824 Nil!10703 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!547265 () Bool)

(declare-fun res!340979 () Bool)

(assert (=> b!547265 (=> (not res!340979) (not e!316222))))

(assert (=> b!547265 (= res!340979 (and (bvsle #b00000000000000000000000000000000 (size!16937 a!3118)) (bvslt (size!16937 a!3118) #b01111111111111111111111111111111)))))

(declare-fun b!547266 () Bool)

(declare-fun res!340984 () Bool)

(assert (=> b!547266 (=> (not res!340984) (not e!316224))))

(declare-fun arrayContainsKey!0 (array!34508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547266 (= res!340984 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547267 () Bool)

(declare-fun res!340981 () Bool)

(assert (=> b!547267 (=> (not res!340981) (not e!316222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34508 (_ BitVec 32)) Bool)

(assert (=> b!547267 (= res!340981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547268 () Bool)

(declare-fun res!340982 () Bool)

(assert (=> b!547268 (=> (not res!340982) (not e!316222))))

(declare-fun noDuplicate!224 (List!10706) Bool)

(assert (=> b!547268 (= res!340982 (noDuplicate!224 Nil!10703))))

(assert (= (and start!49888 res!340985) b!547260))

(assert (= (and b!547260 res!340983) b!547261))

(assert (= (and b!547261 res!340988) b!547263))

(assert (= (and b!547263 res!340980) b!547266))

(assert (= (and b!547266 res!340984) b!547262))

(assert (= (and b!547262 res!340987) b!547267))

(assert (= (and b!547267 res!340981) b!547265))

(assert (= (and b!547265 res!340979) b!547268))

(assert (= (and b!547268 res!340982) b!547259))

(assert (= (and b!547259 (not res!340986)) b!547264))

(declare-fun m!524555 () Bool)

(assert (=> b!547262 m!524555))

(declare-fun m!524557 () Bool)

(assert (=> b!547263 m!524557))

(declare-fun m!524559 () Bool)

(assert (=> b!547267 m!524559))

(declare-fun m!524561 () Bool)

(assert (=> b!547268 m!524561))

(declare-fun m!524563 () Bool)

(assert (=> b!547264 m!524563))

(declare-fun m!524565 () Bool)

(assert (=> start!49888 m!524565))

(declare-fun m!524567 () Bool)

(assert (=> start!49888 m!524567))

(declare-fun m!524569 () Bool)

(assert (=> b!547259 m!524569))

(declare-fun m!524571 () Bool)

(assert (=> b!547261 m!524571))

(assert (=> b!547261 m!524571))

(declare-fun m!524573 () Bool)

(assert (=> b!547261 m!524573))

(declare-fun m!524575 () Bool)

(assert (=> b!547266 m!524575))

(check-sat (not b!547267) (not b!547268) (not b!547262) (not b!547263) (not start!49888) (not b!547259) (not b!547264) (not b!547266) (not b!547261))
(check-sat)
(get-model)

(declare-fun d!82379 () Bool)

(declare-fun res!341024 () Bool)

(declare-fun e!316246 () Bool)

(assert (=> d!82379 (=> res!341024 e!316246)))

(assert (=> d!82379 (= res!341024 (bvsge #b00000000000000000000000000000000 (size!16937 a!3118)))))

(assert (=> d!82379 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316246)))

(declare-fun b!547307 () Bool)

(declare-fun e!316245 () Bool)

(declare-fun call!32165 () Bool)

(assert (=> b!547307 (= e!316245 call!32165)))

(declare-fun b!547308 () Bool)

(declare-fun e!316244 () Bool)

(assert (=> b!547308 (= e!316244 e!316245)))

(declare-fun lt!249515 () (_ BitVec 64))

(assert (=> b!547308 (= lt!249515 (select (arr!16573 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16934 0))(
  ( (Unit!16935) )
))
(declare-fun lt!249514 () Unit!16934)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34508 (_ BitVec 64) (_ BitVec 32)) Unit!16934)

(assert (=> b!547308 (= lt!249514 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249515 #b00000000000000000000000000000000))))

(assert (=> b!547308 (arrayContainsKey!0 a!3118 lt!249515 #b00000000000000000000000000000000)))

(declare-fun lt!249513 () Unit!16934)

(assert (=> b!547308 (= lt!249513 lt!249514)))

(declare-fun res!341023 () Bool)

(assert (=> b!547308 (= res!341023 (= (seekEntryOrOpen!0 (select (arr!16573 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5029 #b00000000000000000000000000000000)))))

(assert (=> b!547308 (=> (not res!341023) (not e!316245))))

(declare-fun b!547309 () Bool)

(assert (=> b!547309 (= e!316246 e!316244)))

(declare-fun c!63470 () Bool)

(assert (=> b!547309 (= c!63470 (validKeyInArray!0 (select (arr!16573 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!547310 () Bool)

(assert (=> b!547310 (= e!316244 call!32165)))

(declare-fun bm!32162 () Bool)

(assert (=> bm!32162 (= call!32165 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!82379 (not res!341024)) b!547309))

(assert (= (and b!547309 c!63470) b!547308))

(assert (= (and b!547309 (not c!63470)) b!547310))

(assert (= (and b!547308 res!341023) b!547307))

(assert (= (or b!547307 b!547310) bm!32162))

(declare-fun m!524599 () Bool)

(assert (=> b!547308 m!524599))

(declare-fun m!524601 () Bool)

(assert (=> b!547308 m!524601))

(declare-fun m!524603 () Bool)

(assert (=> b!547308 m!524603))

(assert (=> b!547308 m!524599))

(declare-fun m!524605 () Bool)

(assert (=> b!547308 m!524605))

(assert (=> b!547309 m!524599))

(assert (=> b!547309 m!524599))

(declare-fun m!524607 () Bool)

(assert (=> b!547309 m!524607))

(declare-fun m!524609 () Bool)

(assert (=> bm!32162 m!524609))

(assert (=> b!547267 d!82379))

(declare-fun d!82383 () Bool)

(declare-fun res!341033 () Bool)

(declare-fun e!316255 () Bool)

(assert (=> d!82383 (=> res!341033 e!316255)))

(assert (=> d!82383 (= res!341033 (= (select (arr!16573 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!82383 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!316255)))

(declare-fun b!547319 () Bool)

(declare-fun e!316256 () Bool)

(assert (=> b!547319 (= e!316255 e!316256)))

(declare-fun res!341034 () Bool)

(assert (=> b!547319 (=> (not res!341034) (not e!316256))))

(assert (=> b!547319 (= res!341034 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16937 a!3118)))))

(declare-fun b!547320 () Bool)

(assert (=> b!547320 (= e!316256 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82383 (not res!341033)) b!547319))

(assert (= (and b!547319 res!341034) b!547320))

(assert (=> d!82383 m!524599))

(declare-fun m!524611 () Bool)

(assert (=> b!547320 m!524611))

(assert (=> b!547266 d!82383))

(declare-fun d!82389 () Bool)

(assert (=> d!82389 (= (validKeyInArray!0 (select (arr!16573 a!3118) j!142)) (and (not (= (select (arr!16573 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16573 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547261 d!82389))

(declare-fun d!82393 () Bool)

(declare-fun lt!249521 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!228 (List!10706) (InoxSet (_ BitVec 64)))

(assert (=> d!82393 (= lt!249521 (select (content!228 Nil!10703) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!316270 () Bool)

(assert (=> d!82393 (= lt!249521 e!316270)))

(declare-fun res!341047 () Bool)

(assert (=> d!82393 (=> (not res!341047) (not e!316270))))

(get-info :version)

(assert (=> d!82393 (= res!341047 ((_ is Cons!10702) Nil!10703))))

(assert (=> d!82393 (= (contains!2824 Nil!10703 #b1000000000000000000000000000000000000000000000000000000000000000) lt!249521)))

(declare-fun b!547333 () Bool)

(declare-fun e!316269 () Bool)

(assert (=> b!547333 (= e!316270 e!316269)))

(declare-fun res!341048 () Bool)

(assert (=> b!547333 (=> res!341048 e!316269)))

(assert (=> b!547333 (= res!341048 (= (h!11669 Nil!10703) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!547334 () Bool)

(assert (=> b!547334 (= e!316269 (contains!2824 (t!16942 Nil!10703) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82393 res!341047) b!547333))

(assert (= (and b!547333 (not res!341048)) b!547334))

(declare-fun m!524623 () Bool)

(assert (=> d!82393 m!524623))

(declare-fun m!524625 () Bool)

(assert (=> d!82393 m!524625))

(declare-fun m!524627 () Bool)

(assert (=> b!547334 m!524627))

(assert (=> b!547264 d!82393))

(declare-fun d!82397 () Bool)

(declare-fun lt!249522 () Bool)

(assert (=> d!82397 (= lt!249522 (select (content!228 Nil!10703) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!316272 () Bool)

(assert (=> d!82397 (= lt!249522 e!316272)))

(declare-fun res!341049 () Bool)

(assert (=> d!82397 (=> (not res!341049) (not e!316272))))

(assert (=> d!82397 (= res!341049 ((_ is Cons!10702) Nil!10703))))

(assert (=> d!82397 (= (contains!2824 Nil!10703 #b0000000000000000000000000000000000000000000000000000000000000000) lt!249522)))

(declare-fun b!547335 () Bool)

(declare-fun e!316271 () Bool)

(assert (=> b!547335 (= e!316272 e!316271)))

(declare-fun res!341050 () Bool)

(assert (=> b!547335 (=> res!341050 e!316271)))

(assert (=> b!547335 (= res!341050 (= (h!11669 Nil!10703) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!547336 () Bool)

(assert (=> b!547336 (= e!316271 (contains!2824 (t!16942 Nil!10703) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82397 res!341049) b!547335))

(assert (= (and b!547335 (not res!341050)) b!547336))

(assert (=> d!82397 m!524623))

(declare-fun m!524629 () Bool)

(assert (=> d!82397 m!524629))

(declare-fun m!524631 () Bool)

(assert (=> b!547336 m!524631))

(assert (=> b!547259 d!82397))

(declare-fun d!82399 () Bool)

(declare-fun res!341055 () Bool)

(declare-fun e!316277 () Bool)

(assert (=> d!82399 (=> res!341055 e!316277)))

(assert (=> d!82399 (= res!341055 ((_ is Nil!10703) Nil!10703))))

(assert (=> d!82399 (= (noDuplicate!224 Nil!10703) e!316277)))

(declare-fun b!547341 () Bool)

(declare-fun e!316278 () Bool)

(assert (=> b!547341 (= e!316277 e!316278)))

(declare-fun res!341056 () Bool)

(assert (=> b!547341 (=> (not res!341056) (not e!316278))))

(assert (=> b!547341 (= res!341056 (not (contains!2824 (t!16942 Nil!10703) (h!11669 Nil!10703))))))

(declare-fun b!547342 () Bool)

(assert (=> b!547342 (= e!316278 (noDuplicate!224 (t!16942 Nil!10703)))))

(assert (= (and d!82399 (not res!341055)) b!547341))

(assert (= (and b!547341 res!341056) b!547342))

(declare-fun m!524633 () Bool)

(assert (=> b!547341 m!524633))

(declare-fun m!524635 () Bool)

(assert (=> b!547342 m!524635))

(assert (=> b!547268 d!82399))

(declare-fun d!82401 () Bool)

(assert (=> d!82401 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547263 d!82401))

(declare-fun b!547399 () Bool)

(declare-fun e!316311 () SeekEntryResult!5029)

(assert (=> b!547399 (= e!316311 Undefined!5029)))

(declare-fun b!547400 () Bool)

(declare-fun e!316312 () SeekEntryResult!5029)

(declare-fun lt!249553 () SeekEntryResult!5029)

(assert (=> b!547400 (= e!316312 (Found!5029 (index!22345 lt!249553)))))

(declare-fun e!316313 () SeekEntryResult!5029)

(declare-fun b!547401 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34508 (_ BitVec 32)) SeekEntryResult!5029)

(assert (=> b!547401 (= e!316313 (seekKeyOrZeroReturnVacant!0 (x!51316 lt!249553) (index!22345 lt!249553) (index!22345 lt!249553) k0!1914 a!3118 mask!3119))))

(declare-fun b!547402 () Bool)

(declare-fun c!63495 () Bool)

(declare-fun lt!249551 () (_ BitVec 64))

(assert (=> b!547402 (= c!63495 (= lt!249551 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!547402 (= e!316312 e!316313)))

(declare-fun b!547403 () Bool)

(assert (=> b!547403 (= e!316313 (MissingZero!5029 (index!22345 lt!249553)))))

(declare-fun d!82403 () Bool)

(declare-fun lt!249552 () SeekEntryResult!5029)

(assert (=> d!82403 (and (or ((_ is Undefined!5029) lt!249552) (not ((_ is Found!5029) lt!249552)) (and (bvsge (index!22344 lt!249552) #b00000000000000000000000000000000) (bvslt (index!22344 lt!249552) (size!16937 a!3118)))) (or ((_ is Undefined!5029) lt!249552) ((_ is Found!5029) lt!249552) (not ((_ is MissingZero!5029) lt!249552)) (and (bvsge (index!22343 lt!249552) #b00000000000000000000000000000000) (bvslt (index!22343 lt!249552) (size!16937 a!3118)))) (or ((_ is Undefined!5029) lt!249552) ((_ is Found!5029) lt!249552) ((_ is MissingZero!5029) lt!249552) (not ((_ is MissingVacant!5029) lt!249552)) (and (bvsge (index!22346 lt!249552) #b00000000000000000000000000000000) (bvslt (index!22346 lt!249552) (size!16937 a!3118)))) (or ((_ is Undefined!5029) lt!249552) (ite ((_ is Found!5029) lt!249552) (= (select (arr!16573 a!3118) (index!22344 lt!249552)) k0!1914) (ite ((_ is MissingZero!5029) lt!249552) (= (select (arr!16573 a!3118) (index!22343 lt!249552)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5029) lt!249552) (= (select (arr!16573 a!3118) (index!22346 lt!249552)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82403 (= lt!249552 e!316311)))

(declare-fun c!63497 () Bool)

(assert (=> d!82403 (= c!63497 (and ((_ is Intermediate!5029) lt!249553) (undefined!5841 lt!249553)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34508 (_ BitVec 32)) SeekEntryResult!5029)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82403 (= lt!249553 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!82403 (validMask!0 mask!3119)))

(assert (=> d!82403 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!249552)))

(declare-fun b!547404 () Bool)

(assert (=> b!547404 (= e!316311 e!316312)))

(assert (=> b!547404 (= lt!249551 (select (arr!16573 a!3118) (index!22345 lt!249553)))))

(declare-fun c!63496 () Bool)

(assert (=> b!547404 (= c!63496 (= lt!249551 k0!1914))))

(assert (= (and d!82403 c!63497) b!547399))

(assert (= (and d!82403 (not c!63497)) b!547404))

(assert (= (and b!547404 c!63496) b!547400))

(assert (= (and b!547404 (not c!63496)) b!547402))

(assert (= (and b!547402 c!63495) b!547403))

(assert (= (and b!547402 (not c!63495)) b!547401))

(declare-fun m!524675 () Bool)

(assert (=> b!547401 m!524675))

(declare-fun m!524677 () Bool)

(assert (=> d!82403 m!524677))

(assert (=> d!82403 m!524565))

(declare-fun m!524679 () Bool)

(assert (=> d!82403 m!524679))

(declare-fun m!524681 () Bool)

(assert (=> d!82403 m!524681))

(declare-fun m!524683 () Bool)

(assert (=> d!82403 m!524683))

(declare-fun m!524685 () Bool)

(assert (=> d!82403 m!524685))

(assert (=> d!82403 m!524681))

(declare-fun m!524687 () Bool)

(assert (=> b!547404 m!524687))

(assert (=> b!547262 d!82403))

(declare-fun d!82415 () Bool)

(assert (=> d!82415 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!49888 d!82415))

(declare-fun d!82427 () Bool)

(assert (=> d!82427 (= (array_inv!12347 a!3118) (bvsge (size!16937 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!49888 d!82427))

(check-sat (not b!547308) (not b!547309) (not d!82397) (not bm!32162) (not b!547401) (not b!547336) (not b!547341) (not b!547320) (not b!547342) (not d!82393) (not b!547334) (not d!82403))
(check-sat)
