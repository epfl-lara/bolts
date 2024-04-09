; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25568 () Bool)

(assert start!25568)

(declare-fun b!265393 () Bool)

(declare-fun res!129801 () Bool)

(declare-fun e!171864 () Bool)

(assert (=> b!265393 (=> (not res!129801) (not e!171864))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265393 (= res!129801 (validKeyInArray!0 k!2698))))

(declare-fun b!265394 () Bool)

(declare-fun res!129800 () Bool)

(assert (=> b!265394 (=> (not res!129800) (not e!171864))))

(declare-datatypes ((array!12779 0))(
  ( (array!12780 (arr!6045 (Array (_ BitVec 32) (_ BitVec 64))) (size!6397 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12779)

(declare-fun arrayContainsKey!0 (array!12779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265394 (= res!129800 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265395 () Bool)

(declare-fun e!171863 () Bool)

(declare-fun e!171865 () Bool)

(assert (=> b!265395 (= e!171863 e!171865)))

(declare-fun res!129805 () Bool)

(assert (=> b!265395 (=> res!129805 e!171865)))

(declare-datatypes ((List!3880 0))(
  ( (Nil!3877) (Cons!3876 (h!4543 (_ BitVec 64)) (t!8970 List!3880)) )
))
(declare-fun contains!1920 (List!3880 (_ BitVec 64)) Bool)

(assert (=> b!265395 (= res!129805 (contains!1920 Nil!3877 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265397 () Bool)

(assert (=> b!265397 (= e!171865 (contains!1920 Nil!3877 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265398 () Bool)

(declare-fun res!129807 () Bool)

(assert (=> b!265398 (=> (not res!129807) (not e!171863))))

(declare-fun noDuplicate!109 (List!3880) Bool)

(assert (=> b!265398 (= res!129807 (noDuplicate!109 Nil!3877))))

(declare-fun b!265399 () Bool)

(declare-fun res!129806 () Bool)

(assert (=> b!265399 (=> (not res!129806) (not e!171864))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265399 (= res!129806 (and (= (size!6397 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6397 a!3436))))))

(declare-fun b!265400 () Bool)

(assert (=> b!265400 (= e!171864 e!171863)))

(declare-fun res!129802 () Bool)

(assert (=> b!265400 (=> (not res!129802) (not e!171863))))

(declare-datatypes ((SeekEntryResult!1247 0))(
  ( (MissingZero!1247 (index!7158 (_ BitVec 32))) (Found!1247 (index!7159 (_ BitVec 32))) (Intermediate!1247 (undefined!2059 Bool) (index!7160 (_ BitVec 32)) (x!25444 (_ BitVec 32))) (Undefined!1247) (MissingVacant!1247 (index!7161 (_ BitVec 32))) )
))
(declare-fun lt!134114 () SeekEntryResult!1247)

(assert (=> b!265400 (= res!129802 (or (= lt!134114 (MissingZero!1247 i!1355)) (= lt!134114 (MissingVacant!1247 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12779 (_ BitVec 32)) SeekEntryResult!1247)

(assert (=> b!265400 (= lt!134114 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265401 () Bool)

(declare-fun res!129799 () Bool)

(assert (=> b!265401 (=> (not res!129799) (not e!171863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12779 (_ BitVec 32)) Bool)

(assert (=> b!265401 (= res!129799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!129804 () Bool)

(assert (=> start!25568 (=> (not res!129804) (not e!171864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25568 (= res!129804 (validMask!0 mask!4002))))

(assert (=> start!25568 e!171864))

(assert (=> start!25568 true))

(declare-fun array_inv!3999 (array!12779) Bool)

(assert (=> start!25568 (array_inv!3999 a!3436)))

(declare-fun b!265396 () Bool)

(declare-fun res!129803 () Bool)

(assert (=> b!265396 (=> (not res!129803) (not e!171863))))

(assert (=> b!265396 (= res!129803 (and (bvsle #b00000000000000000000000000000000 (size!6397 a!3436)) (bvslt (size!6397 a!3436) #b01111111111111111111111111111111)))))

(assert (= (and start!25568 res!129804) b!265399))

(assert (= (and b!265399 res!129806) b!265393))

(assert (= (and b!265393 res!129801) b!265394))

(assert (= (and b!265394 res!129800) b!265400))

(assert (= (and b!265400 res!129802) b!265401))

(assert (= (and b!265401 res!129799) b!265396))

(assert (= (and b!265396 res!129803) b!265398))

(assert (= (and b!265398 res!129807) b!265395))

(assert (= (and b!265395 (not res!129805)) b!265397))

(declare-fun m!282233 () Bool)

(assert (=> b!265400 m!282233))

(declare-fun m!282235 () Bool)

(assert (=> b!265394 m!282235))

(declare-fun m!282237 () Bool)

(assert (=> start!25568 m!282237))

(declare-fun m!282239 () Bool)

(assert (=> start!25568 m!282239))

(declare-fun m!282241 () Bool)

(assert (=> b!265393 m!282241))

(declare-fun m!282243 () Bool)

(assert (=> b!265401 m!282243))

(declare-fun m!282245 () Bool)

(assert (=> b!265395 m!282245))

(declare-fun m!282247 () Bool)

(assert (=> b!265398 m!282247))

(declare-fun m!282249 () Bool)

(assert (=> b!265397 m!282249))

(push 1)

(assert (not b!265394))

(assert (not b!265401))

(assert (not start!25568))

(assert (not b!265398))

(assert (not b!265397))

(assert (not b!265395))

(assert (not b!265400))

(assert (not b!265393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64107 () Bool)

(assert (=> d!64107 (= (validMask!0 mask!4002) (and (or (= mask!4002 #b00000000000000000000000000000111) (= mask!4002 #b00000000000000000000000000001111) (= mask!4002 #b00000000000000000000000000011111) (= mask!4002 #b00000000000000000000000000111111) (= mask!4002 #b00000000000000000000000001111111) (= mask!4002 #b00000000000000000000000011111111) (= mask!4002 #b00000000000000000000000111111111) (= mask!4002 #b00000000000000000000001111111111) (= mask!4002 #b00000000000000000000011111111111) (= mask!4002 #b00000000000000000000111111111111) (= mask!4002 #b00000000000000000001111111111111) (= mask!4002 #b00000000000000000011111111111111) (= mask!4002 #b00000000000000000111111111111111) (= mask!4002 #b00000000000000001111111111111111) (= mask!4002 #b00000000000000011111111111111111) (= mask!4002 #b00000000000000111111111111111111) (= mask!4002 #b00000000000001111111111111111111) (= mask!4002 #b00000000000011111111111111111111) (= mask!4002 #b00000000000111111111111111111111) (= mask!4002 #b00000000001111111111111111111111) (= mask!4002 #b00000000011111111111111111111111) (= mask!4002 #b00000000111111111111111111111111) (= mask!4002 #b00000001111111111111111111111111) (= mask!4002 #b00000011111111111111111111111111) (= mask!4002 #b00000111111111111111111111111111) (= mask!4002 #b00001111111111111111111111111111) (= mask!4002 #b00011111111111111111111111111111) (= mask!4002 #b00111111111111111111111111111111)) (bvsle mask!4002 #b00111111111111111111111111111111)))))

(assert (=> start!25568 d!64107))

(declare-fun d!64117 () Bool)

(assert (=> d!64117 (= (array_inv!3999 a!3436) (bvsge (size!6397 a!3436) #b00000000000000000000000000000000))))

(assert (=> start!25568 d!64117))

(declare-fun b!265442 () Bool)

(declare-fun e!171899 () Bool)

(declare-fun call!25331 () Bool)

(assert (=> b!265442 (= e!171899 call!25331)))

(declare-fun b!265443 () Bool)

(declare-fun e!171898 () Bool)

(assert (=> b!265443 (= e!171899 e!171898)))

(declare-fun lt!134133 () (_ BitVec 64))

(assert (=> b!265443 (= lt!134133 (select (arr!6045 a!3436) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8262 0))(
  ( (Unit!8263) )
))
(declare-fun lt!134131 () Unit!8262)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12779 (_ BitVec 64) (_ BitVec 32)) Unit!8262)

(assert (=> b!265443 (= lt!134131 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3436 lt!134133 #b00000000000000000000000000000000))))

(assert (=> b!265443 (arrayContainsKey!0 a!3436 lt!134133 #b00000000000000000000000000000000)))

(declare-fun lt!134132 () Unit!8262)

(assert (=> b!265443 (= lt!134132 lt!134131)))

(declare-fun res!129833 () Bool)

(assert (=> b!265443 (= res!129833 (= (seekEntryOrOpen!0 (select (arr!6045 a!3436) #b00000000000000000000000000000000) a!3436 mask!4002) (Found!1247 #b00000000000000000000000000000000)))))

(assert (=> b!265443 (=> (not res!129833) (not e!171898))))

(declare-fun b!265444 () Bool)

(assert (=> b!265444 (= e!171898 call!25331)))

(declare-fun d!64119 () Bool)

(declare-fun res!129832 () Bool)

(declare-fun e!171900 () Bool)

(assert (=> d!64119 (=> res!129832 e!171900)))

(assert (=> d!64119 (= res!129832 (bvsge #b00000000000000000000000000000000 (size!6397 a!3436)))))

(assert (=> d!64119 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002) e!171900)))

(declare-fun bm!25328 () Bool)

(assert (=> bm!25328 (= call!25331 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3436 mask!4002))))

(declare-fun b!265445 () Bool)

(assert (=> b!265445 (= e!171900 e!171899)))

(declare-fun c!45356 () Bool)

(assert (=> b!265445 (= c!45356 (validKeyInArray!0 (select (arr!6045 a!3436) #b00000000000000000000000000000000)))))

(assert (= (and d!64119 (not res!129832)) b!265445))

(assert (= (and b!265445 c!45356) b!265443))

(assert (= (and b!265445 (not c!45356)) b!265442))

(assert (= (and b!265443 res!129833) b!265444))

(assert (= (or b!265444 b!265442) bm!25328))

(declare-fun m!282269 () Bool)

(assert (=> b!265443 m!282269))

(declare-fun m!282271 () Bool)

(assert (=> b!265443 m!282271))

(declare-fun m!282273 () Bool)

(assert (=> b!265443 m!282273))

(assert (=> b!265443 m!282269))

(declare-fun m!282275 () Bool)

(assert (=> b!265443 m!282275))

(declare-fun m!282277 () Bool)

(assert (=> bm!25328 m!282277))

(assert (=> b!265445 m!282269))

(assert (=> b!265445 m!282269))

(declare-fun m!282279 () Bool)

(assert (=> b!265445 m!282279))

(assert (=> b!265401 d!64119))

(declare-fun d!64121 () Bool)

(declare-fun lt!134139 () Bool)

(declare-fun content!178 (List!3880) (Set (_ BitVec 64)))

(assert (=> d!64121 (= lt!134139 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!178 Nil!3877)))))

(declare-fun e!171909 () Bool)

(assert (=> d!64121 (= lt!134139 e!171909)))

(declare-fun res!129839 () Bool)

(assert (=> d!64121 (=> (not res!129839) (not e!171909))))

(assert (=> d!64121 (= res!129839 (is-Cons!3876 Nil!3877))))

(assert (=> d!64121 (= (contains!1920 Nil!3877 #b0000000000000000000000000000000000000000000000000000000000000000) lt!134139)))

(declare-fun b!265456 () Bool)

(declare-fun e!171908 () Bool)

(assert (=> b!265456 (= e!171909 e!171908)))

(declare-fun res!129838 () Bool)

(assert (=> b!265456 (=> res!129838 e!171908)))

(assert (=> b!265456 (= res!129838 (= (h!4543 Nil!3877) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265457 () Bool)

(assert (=> b!265457 (= e!171908 (contains!1920 (t!8970 Nil!3877) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64121 res!129839) b!265456))

(assert (= (and b!265456 (not res!129838)) b!265457))

(declare-fun m!282281 () Bool)

(assert (=> d!64121 m!282281))

(declare-fun m!282283 () Bool)

(assert (=> d!64121 m!282283))

(declare-fun m!282285 () Bool)

(assert (=> b!265457 m!282285))

(assert (=> b!265395 d!64121))

(declare-fun d!64127 () Bool)

(declare-fun lt!134140 () Bool)

(assert (=> d!64127 (= lt!134140 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!178 Nil!3877)))))

(declare-fun e!171911 () Bool)

(assert (=> d!64127 (= lt!134140 e!171911)))

(declare-fun res!129841 () Bool)

(assert (=> d!64127 (=> (not res!129841) (not e!171911))))

(assert (=> d!64127 (= res!129841 (is-Cons!3876 Nil!3877))))

(assert (=> d!64127 (= (contains!1920 Nil!3877 #b1000000000000000000000000000000000000000000000000000000000000000) lt!134140)))

(declare-fun b!265458 () Bool)

(declare-fun e!171910 () Bool)

(assert (=> b!265458 (= e!171911 e!171910)))

(declare-fun res!129840 () Bool)

(assert (=> b!265458 (=> res!129840 e!171910)))

(assert (=> b!265458 (= res!129840 (= (h!4543 Nil!3877) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265459 () Bool)

(assert (=> b!265459 (= e!171910 (contains!1920 (t!8970 Nil!3877) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64127 res!129841) b!265458))

(assert (= (and b!265458 (not res!129840)) b!265459))

(assert (=> d!64127 m!282281))

(declare-fun m!282301 () Bool)

(assert (=> d!64127 m!282301))

(declare-fun m!282303 () Bool)

(assert (=> b!265459 m!282303))

(assert (=> b!265397 d!64127))

(declare-fun d!64131 () Bool)

(assert (=> d!64131 (= (validKeyInArray!0 k!2698) (and (not (= k!2698 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2698 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!265393 d!64131))

(declare-fun d!64133 () Bool)

(declare-fun res!129852 () Bool)

(declare-fun e!171922 () Bool)

(assert (=> d!64133 (=> res!129852 e!171922)))

(assert (=> d!64133 (= res!129852 (is-Nil!3877 Nil!3877))))

(assert (=> d!64133 (= (noDuplicate!109 Nil!3877) e!171922)))

(declare-fun b!265470 () Bool)

(declare-fun e!171923 () Bool)

(assert (=> b!265470 (= e!171922 e!171923)))

(declare-fun res!129853 () Bool)

(assert (=> b!265470 (=> (not res!129853) (not e!171923))))

(assert (=> b!265470 (= res!129853 (not (contains!1920 (t!8970 Nil!3877) (h!4543 Nil!3877))))))

(declare-fun b!265471 () Bool)

(assert (=> b!265471 (= e!171923 (noDuplicate!109 (t!8970 Nil!3877)))))

(assert (= (and d!64133 (not res!129852)) b!265470))

(assert (= (and b!265470 res!129853) b!265471))

(declare-fun m!282309 () Bool)

(assert (=> b!265470 m!282309))

(declare-fun m!282311 () Bool)

(assert (=> b!265471 m!282311))

(assert (=> b!265398 d!64133))

(declare-fun b!265520 () Bool)

(declare-fun c!45372 () Bool)

(declare-fun lt!134169 () (_ BitVec 64))

(assert (=> b!265520 (= c!45372 (= lt!134169 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!171962 () SeekEntryResult!1247)

(declare-fun e!171960 () SeekEntryResult!1247)

(assert (=> b!265520 (= e!171962 e!171960)))

(declare-fun b!265522 () Bool)

(declare-fun e!171961 () SeekEntryResult!1247)

(assert (=> b!265522 (= e!171961 Undefined!1247)))

(declare-fun b!265523 () Bool)

(declare-fun lt!134168 () SeekEntryResult!1247)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12779 (_ BitVec 32)) SeekEntryResult!1247)

(assert (=> b!265523 (= e!171960 (seekKeyOrZeroReturnVacant!0 (x!25444 lt!134168) (index!7160 lt!134168) (index!7160 lt!134168) k!2698 a!3436 mask!4002))))

(declare-fun d!64137 () Bool)

(declare-fun lt!134170 () SeekEntryResult!1247)

(assert (=> d!64137 (and (or (is-Undefined!1247 lt!134170) (not (is-Found!1247 lt!134170)) (and (bvsge (index!7159 lt!134170) #b00000000000000000000000000000000) (bvslt (index!7159 lt!134170) (size!6397 a!3436)))) (or (is-Undefined!1247 lt!134170) (is-Found!1247 lt!134170) (not (is-MissingZero!1247 lt!134170)) (and (bvsge (index!7158 lt!134170) #b00000000000000000000000000000000) (bvslt (index!7158 lt!134170) (size!6397 a!3436)))) (or (is-Undefined!1247 lt!134170) (is-Found!1247 lt!134170) (is-MissingZero!1247 lt!134170) (not (is-MissingVacant!1247 lt!134170)) (and (bvsge (index!7161 lt!134170) #b00000000000000000000000000000000) (bvslt (index!7161 lt!134170) (size!6397 a!3436)))) (or (is-Undefined!1247 lt!134170) (ite (is-Found!1247 lt!134170) (= (select (arr!6045 a!3436) (index!7159 lt!134170)) k!2698) (ite (is-MissingZero!1247 lt!134170) (= (select (arr!6045 a!3436) (index!7158 lt!134170)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1247 lt!134170) (= (select (arr!6045 a!3436) (index!7161 lt!134170)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64137 (= lt!134170 e!171961)))

(declare-fun c!45373 () Bool)

(assert (=> d!64137 (= c!45373 (and (is-Intermediate!1247 lt!134168) (undefined!2059 lt!134168)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12779 (_ BitVec 32)) SeekEntryResult!1247)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64137 (= lt!134168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2698 mask!4002) k!2698 a!3436 mask!4002))))

(assert (=> d!64137 (validMask!0 mask!4002)))

(assert (=> d!64137 (= (seekEntryOrOpen!0 k!2698 a!3436 mask!4002) lt!134170)))

(declare-fun b!265521 () Bool)

(assert (=> b!265521 (= e!171962 (Found!1247 (index!7160 lt!134168)))))

(declare-fun b!265524 () Bool)

(assert (=> b!265524 (= e!171960 (MissingZero!1247 (index!7160 lt!134168)))))

(declare-fun b!265525 () Bool)

(assert (=> b!265525 (= e!171961 e!171962)))

(assert (=> b!265525 (= lt!134169 (select (arr!6045 a!3436) (index!7160 lt!134168)))))

(declare-fun c!45374 () Bool)

(assert (=> b!265525 (= c!45374 (= lt!134169 k!2698))))

(assert (= (and d!64137 c!45373) b!265522))

(assert (= (and d!64137 (not c!45373)) b!265525))

(assert (= (and b!265525 c!45374) b!265521))

(assert (= (and b!265525 (not c!45374)) b!265520))

(assert (= (and b!265520 c!45372) b!265524))

(assert (= (and b!265520 (not c!45372)) b!265523))

(declare-fun m!282343 () Bool)

(assert (=> b!265523 m!282343))

(declare-fun m!282345 () Bool)

