; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106976 () Bool)

(assert start!106976)

(declare-fun b!1201287 () Bool)

(declare-fun e!770954 () Bool)

(declare-datatypes ((T!21810 0))(
  ( (T!21811 (val!3892 Int)) )
))
(declare-datatypes ((List!12071 0))(
  ( (Nil!12047) (Cons!12047 (h!17448 T!21810) (t!112457 List!12071)) )
))
(declare-datatypes ((IArray!7965 0))(
  ( (IArray!7966 (innerList!4040 List!12071)) )
))
(declare-datatypes ((Conc!3980 0))(
  ( (Node!3980 (left!10518 Conc!3980) (right!10848 Conc!3980) (csize!8190 Int) (cheight!4191 Int)) (Leaf!6095 (xs!6687 IArray!7965) (csize!8191 Int)) (Empty!3980) )
))
(declare-fun t!4115 () Conc!3980)

(declare-fun e!770956 () Bool)

(declare-fun inv!16137 (IArray!7965) Bool)

(assert (=> b!1201287 (= e!770954 (and (inv!16137 (xs!6687 t!4115)) e!770956))))

(declare-fun b!1201288 () Bool)

(declare-fun e!770953 () List!12071)

(declare-fun call!83606 () List!12071)

(assert (=> b!1201288 (= e!770953 call!83606)))

(declare-fun b!1201289 () Bool)

(declare-fun e!770951 () Bool)

(declare-fun lt!411004 () List!12071)

(assert (=> b!1201289 (= e!770951 (= lt!411004 e!770953))))

(declare-fun c!200250 () Bool)

(declare-fun until!31 () Int)

(declare-fun lt!411010 () Int)

(assert (=> b!1201289 (= c!200250 (<= until!31 lt!411010))))

(declare-fun bm!83600 () Bool)

(declare-fun call!83605 () List!12071)

(assert (=> bm!83600 (= call!83606 call!83605)))

(declare-fun b!1201290 () Bool)

(declare-fun tp!341337 () Bool)

(assert (=> b!1201290 (= e!770956 tp!341337)))

(declare-fun b!1201291 () Bool)

(assert (=> b!1201291 (= e!770951 (= lt!411004 call!83605))))

(declare-fun b!1201292 () Bool)

(declare-fun res!541492 () Bool)

(declare-fun e!770955 () Bool)

(assert (=> b!1201292 (=> (not res!541492) (not e!770955))))

(declare-fun size!9578 (Conc!3980) Int)

(assert (=> b!1201292 (= res!541492 (<= until!31 (size!9578 t!4115)))))

(declare-fun b!1201293 () Bool)

(declare-fun e!770952 () Bool)

(assert (=> b!1201293 (= e!770955 (not e!770952))))

(declare-fun res!541491 () Bool)

(assert (=> b!1201293 (=> res!541491 e!770952)))

(declare-fun lt!411007 () Int)

(declare-fun from!553 () Int)

(assert (=> b!1201293 (= res!541491 (or (<= lt!411007 from!553) (<= until!31 lt!411007)))))

(assert (=> b!1201293 (= lt!411007 (size!9578 (left!10518 t!4115)))))

(assert (=> b!1201293 e!770951))

(declare-fun c!200249 () Bool)

(assert (=> b!1201293 (= c!200249 (<= lt!411010 from!553))))

(declare-fun lt!411005 () List!12071)

(declare-fun lt!411008 () List!12071)

(declare-fun slice!480 (List!12071 Int Int) List!12071)

(declare-fun ++!3086 (List!12071 List!12071) List!12071)

(assert (=> b!1201293 (= lt!411004 (slice!480 (++!3086 lt!411008 lt!411005) from!553 until!31))))

(declare-fun size!9579 (List!12071) Int)

(assert (=> b!1201293 (= lt!411010 (size!9579 lt!411008))))

(declare-datatypes ((Unit!18464 0))(
  ( (Unit!18465) )
))
(declare-fun lt!411009 () Unit!18464)

(declare-fun sliceLemma!43 (List!12071 List!12071 Int Int) Unit!18464)

(assert (=> b!1201293 (= lt!411009 (sliceLemma!43 lt!411008 lt!411005 from!553 until!31))))

(declare-fun list!4493 (Conc!3980) List!12071)

(assert (=> b!1201293 (= lt!411005 (list!4493 (right!10848 t!4115)))))

(assert (=> b!1201293 (= lt!411008 (list!4493 (left!10518 t!4115)))))

(declare-fun tp!341336 () Bool)

(declare-fun tp!341335 () Bool)

(declare-fun b!1201294 () Bool)

(declare-fun inv!16138 (Conc!3980) Bool)

(assert (=> b!1201294 (= e!770954 (and (inv!16138 (left!10518 t!4115)) tp!341335 (inv!16138 (right!10848 t!4115)) tp!341336))))

(declare-fun b!1201296 () Bool)

(declare-fun res!541488 () Bool)

(assert (=> b!1201296 (=> (not res!541488) (not e!770955))))

(get-info :version)

(assert (=> b!1201296 (= res!541488 (and (not (= from!553 until!31)) (not ((_ is Leaf!6095) t!4115)) ((_ is Node!3980) t!4115)))))

(declare-fun b!1201297 () Bool)

(declare-fun ConcPrimitiveSize!10 (Conc!3980) Int)

(assert (=> b!1201297 (= e!770952 (< (ConcPrimitiveSize!10 (right!10848 t!4115)) (ConcPrimitiveSize!10 t!4115)))))

(declare-fun lt!411006 () Conc!3980)

(declare-fun slice!481 (Conc!3980 Int Int) Conc!3980)

(assert (=> b!1201297 (= lt!411006 (slice!481 (left!10518 t!4115) from!553 lt!411007))))

(declare-fun res!541489 () Bool)

(assert (=> start!106976 (=> (not res!541489) (not e!770955))))

(assert (=> start!106976 (= res!541489 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106976 e!770955))

(assert (=> start!106976 true))

(assert (=> start!106976 (and (inv!16138 t!4115) e!770954)))

(declare-fun b!1201295 () Bool)

(assert (=> b!1201295 (= e!770953 (++!3086 call!83606 (slice!480 lt!411005 0 (- until!31 lt!411010))))))

(declare-fun b!1201298 () Bool)

(declare-fun res!541490 () Bool)

(assert (=> b!1201298 (=> (not res!541490) (not e!770955))))

(declare-fun isBalanced!1165 (Conc!3980) Bool)

(assert (=> b!1201298 (= res!541490 (isBalanced!1165 t!4115))))

(declare-fun bm!83601 () Bool)

(assert (=> bm!83601 (= call!83605 (slice!480 (ite c!200249 lt!411005 lt!411008) (ite c!200249 (- from!553 lt!411010) from!553) (ite c!200249 (- until!31 lt!411010) (ite c!200250 until!31 lt!411010))))))

(assert (= (and start!106976 res!541489) b!1201292))

(assert (= (and b!1201292 res!541492) b!1201298))

(assert (= (and b!1201298 res!541490) b!1201296))

(assert (= (and b!1201296 res!541488) b!1201293))

(assert (= (and b!1201293 c!200249) b!1201291))

(assert (= (and b!1201293 (not c!200249)) b!1201289))

(assert (= (and b!1201289 c!200250) b!1201288))

(assert (= (and b!1201289 (not c!200250)) b!1201295))

(assert (= (or b!1201288 b!1201295) bm!83600))

(assert (= (or b!1201291 bm!83600) bm!83601))

(assert (= (and b!1201293 (not res!541491)) b!1201297))

(assert (= (and start!106976 ((_ is Node!3980) t!4115)) b!1201294))

(assert (= b!1201287 b!1201290))

(assert (= (and start!106976 ((_ is Leaf!6095) t!4115)) b!1201287))

(declare-fun m!1376929 () Bool)

(assert (=> b!1201298 m!1376929))

(declare-fun m!1376931 () Bool)

(assert (=> bm!83601 m!1376931))

(declare-fun m!1376933 () Bool)

(assert (=> b!1201294 m!1376933))

(declare-fun m!1376935 () Bool)

(assert (=> b!1201294 m!1376935))

(declare-fun m!1376937 () Bool)

(assert (=> b!1201292 m!1376937))

(declare-fun m!1376939 () Bool)

(assert (=> start!106976 m!1376939))

(declare-fun m!1376941 () Bool)

(assert (=> b!1201295 m!1376941))

(assert (=> b!1201295 m!1376941))

(declare-fun m!1376943 () Bool)

(assert (=> b!1201295 m!1376943))

(declare-fun m!1376945 () Bool)

(assert (=> b!1201287 m!1376945))

(declare-fun m!1376947 () Bool)

(assert (=> b!1201297 m!1376947))

(declare-fun m!1376949 () Bool)

(assert (=> b!1201297 m!1376949))

(declare-fun m!1376951 () Bool)

(assert (=> b!1201297 m!1376951))

(declare-fun m!1376953 () Bool)

(assert (=> b!1201293 m!1376953))

(declare-fun m!1376955 () Bool)

(assert (=> b!1201293 m!1376955))

(declare-fun m!1376957 () Bool)

(assert (=> b!1201293 m!1376957))

(declare-fun m!1376959 () Bool)

(assert (=> b!1201293 m!1376959))

(declare-fun m!1376961 () Bool)

(assert (=> b!1201293 m!1376961))

(declare-fun m!1376963 () Bool)

(assert (=> b!1201293 m!1376963))

(assert (=> b!1201293 m!1376957))

(declare-fun m!1376965 () Bool)

(assert (=> b!1201293 m!1376965))

(check-sat (not b!1201292) (not b!1201295) (not b!1201298) (not b!1201293) (not b!1201297) (not start!106976) (not bm!83601) (not b!1201290) (not b!1201287) (not b!1201294))
(check-sat)
(get-model)

(declare-fun d!343571 () Bool)

(declare-fun c!200261 () Bool)

(assert (=> d!343571 (= c!200261 ((_ is Node!3980) t!4115))))

(declare-fun e!770969 () Bool)

(assert (=> d!343571 (= (inv!16138 t!4115) e!770969)))

(declare-fun b!1201321 () Bool)

(declare-fun inv!16141 (Conc!3980) Bool)

(assert (=> b!1201321 (= e!770969 (inv!16141 t!4115))))

(declare-fun b!1201322 () Bool)

(declare-fun e!770970 () Bool)

(assert (=> b!1201322 (= e!770969 e!770970)))

(declare-fun res!541495 () Bool)

(assert (=> b!1201322 (= res!541495 (not ((_ is Leaf!6095) t!4115)))))

(assert (=> b!1201322 (=> res!541495 e!770970)))

(declare-fun b!1201323 () Bool)

(declare-fun inv!16142 (Conc!3980) Bool)

(assert (=> b!1201323 (= e!770970 (inv!16142 t!4115))))

(assert (= (and d!343571 c!200261) b!1201321))

(assert (= (and d!343571 (not c!200261)) b!1201322))

(assert (= (and b!1201322 (not res!541495)) b!1201323))

(declare-fun m!1376985 () Bool)

(assert (=> b!1201321 m!1376985))

(declare-fun m!1376987 () Bool)

(assert (=> b!1201323 m!1376987))

(assert (=> start!106976 d!343571))

(declare-fun d!343577 () Bool)

(declare-fun c!200262 () Bool)

(assert (=> d!343577 (= c!200262 ((_ is Node!3980) (left!10518 t!4115)))))

(declare-fun e!770971 () Bool)

(assert (=> d!343577 (= (inv!16138 (left!10518 t!4115)) e!770971)))

(declare-fun b!1201324 () Bool)

(assert (=> b!1201324 (= e!770971 (inv!16141 (left!10518 t!4115)))))

(declare-fun b!1201325 () Bool)

(declare-fun e!770972 () Bool)

(assert (=> b!1201325 (= e!770971 e!770972)))

(declare-fun res!541496 () Bool)

(assert (=> b!1201325 (= res!541496 (not ((_ is Leaf!6095) (left!10518 t!4115))))))

(assert (=> b!1201325 (=> res!541496 e!770972)))

(declare-fun b!1201326 () Bool)

(assert (=> b!1201326 (= e!770972 (inv!16142 (left!10518 t!4115)))))

(assert (= (and d!343577 c!200262) b!1201324))

(assert (= (and d!343577 (not c!200262)) b!1201325))

(assert (= (and b!1201325 (not res!541496)) b!1201326))

(declare-fun m!1376989 () Bool)

(assert (=> b!1201324 m!1376989))

(declare-fun m!1376991 () Bool)

(assert (=> b!1201326 m!1376991))

(assert (=> b!1201294 d!343577))

(declare-fun d!343579 () Bool)

(declare-fun c!200263 () Bool)

(assert (=> d!343579 (= c!200263 ((_ is Node!3980) (right!10848 t!4115)))))

(declare-fun e!770973 () Bool)

(assert (=> d!343579 (= (inv!16138 (right!10848 t!4115)) e!770973)))

(declare-fun b!1201327 () Bool)

(assert (=> b!1201327 (= e!770973 (inv!16141 (right!10848 t!4115)))))

(declare-fun b!1201328 () Bool)

(declare-fun e!770974 () Bool)

(assert (=> b!1201328 (= e!770973 e!770974)))

(declare-fun res!541497 () Bool)

(assert (=> b!1201328 (= res!541497 (not ((_ is Leaf!6095) (right!10848 t!4115))))))

(assert (=> b!1201328 (=> res!541497 e!770974)))

(declare-fun b!1201329 () Bool)

(assert (=> b!1201329 (= e!770974 (inv!16142 (right!10848 t!4115)))))

(assert (= (and d!343579 c!200263) b!1201327))

(assert (= (and d!343579 (not c!200263)) b!1201328))

(assert (= (and b!1201328 (not res!541497)) b!1201329))

(declare-fun m!1376993 () Bool)

(assert (=> b!1201327 m!1376993))

(declare-fun m!1376995 () Bool)

(assert (=> b!1201329 m!1376995))

(assert (=> b!1201294 d!343579))

(declare-fun d!343581 () Bool)

(declare-fun take!133 (List!12071 Int) List!12071)

(declare-fun drop!605 (List!12071 Int) List!12071)

(assert (=> d!343581 (= (slice!480 (ite c!200249 lt!411005 lt!411008) (ite c!200249 (- from!553 lt!411010) from!553) (ite c!200249 (- until!31 lt!411010) (ite c!200250 until!31 lt!411010))) (take!133 (drop!605 (ite c!200249 lt!411005 lt!411008) (ite c!200249 (- from!553 lt!411010) from!553)) (- (ite c!200249 (- until!31 lt!411010) (ite c!200250 until!31 lt!411010)) (ite c!200249 (- from!553 lt!411010) from!553))))))

(declare-fun bs!288293 () Bool)

(assert (= bs!288293 d!343581))

(declare-fun m!1376997 () Bool)

(assert (=> bs!288293 m!1376997))

(assert (=> bs!288293 m!1376997))

(declare-fun m!1376999 () Bool)

(assert (=> bs!288293 m!1376999))

(assert (=> bm!83601 d!343581))

(declare-fun d!343583 () Bool)

(declare-fun lt!411017 () Int)

(assert (=> d!343583 (= lt!411017 (size!9579 (list!4493 (left!10518 t!4115))))))

(assert (=> d!343583 (= lt!411017 (ite ((_ is Empty!3980) (left!10518 t!4115)) 0 (ite ((_ is Leaf!6095) (left!10518 t!4115)) (csize!8191 (left!10518 t!4115)) (csize!8190 (left!10518 t!4115)))))))

(assert (=> d!343583 (= (size!9578 (left!10518 t!4115)) lt!411017)))

(declare-fun bs!288294 () Bool)

(assert (= bs!288294 d!343583))

(assert (=> bs!288294 m!1376953))

(assert (=> bs!288294 m!1376953))

(declare-fun m!1377001 () Bool)

(assert (=> bs!288294 m!1377001))

(assert (=> b!1201293 d!343583))

(declare-fun lt!411020 () List!12071)

(declare-fun e!770979 () Bool)

(declare-fun b!1201341 () Bool)

(assert (=> b!1201341 (= e!770979 (or (not (= lt!411005 Nil!12047)) (= lt!411020 lt!411008)))))

(declare-fun d!343585 () Bool)

(assert (=> d!343585 e!770979))

(declare-fun res!541502 () Bool)

(assert (=> d!343585 (=> (not res!541502) (not e!770979))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1694 (List!12071) (InoxSet T!21810))

(assert (=> d!343585 (= res!541502 (= (content!1694 lt!411020) ((_ map or) (content!1694 lt!411008) (content!1694 lt!411005))))))

(declare-fun e!770980 () List!12071)

(assert (=> d!343585 (= lt!411020 e!770980)))

(declare-fun c!200266 () Bool)

(assert (=> d!343585 (= c!200266 ((_ is Nil!12047) lt!411008))))

(assert (=> d!343585 (= (++!3086 lt!411008 lt!411005) lt!411020)))

(declare-fun b!1201340 () Bool)

(declare-fun res!541503 () Bool)

(assert (=> b!1201340 (=> (not res!541503) (not e!770979))))

(assert (=> b!1201340 (= res!541503 (= (size!9579 lt!411020) (+ (size!9579 lt!411008) (size!9579 lt!411005))))))

(declare-fun b!1201338 () Bool)

(assert (=> b!1201338 (= e!770980 lt!411005)))

(declare-fun b!1201339 () Bool)

(assert (=> b!1201339 (= e!770980 (Cons!12047 (h!17448 lt!411008) (++!3086 (t!112457 lt!411008) lt!411005)))))

(assert (= (and d!343585 c!200266) b!1201338))

(assert (= (and d!343585 (not c!200266)) b!1201339))

(assert (= (and d!343585 res!541502) b!1201340))

(assert (= (and b!1201340 res!541503) b!1201341))

(declare-fun m!1377003 () Bool)

(assert (=> d!343585 m!1377003))

(declare-fun m!1377005 () Bool)

(assert (=> d!343585 m!1377005))

(declare-fun m!1377007 () Bool)

(assert (=> d!343585 m!1377007))

(declare-fun m!1377009 () Bool)

(assert (=> b!1201340 m!1377009))

(assert (=> b!1201340 m!1376965))

(declare-fun m!1377011 () Bool)

(assert (=> b!1201340 m!1377011))

(declare-fun m!1377013 () Bool)

(assert (=> b!1201339 m!1377013))

(assert (=> b!1201293 d!343585))

(declare-fun e!771013 () List!12071)

(declare-fun d!343587 () Bool)

(assert (=> d!343587 (= (slice!480 (++!3086 lt!411008 lt!411005) from!553 until!31) e!771013)))

(declare-fun c!200291 () Bool)

(assert (=> d!343587 (= c!200291 (<= (size!9579 lt!411008) from!553))))

(declare-fun lt!411033 () Unit!18464)

(declare-fun choose!7736 (List!12071 List!12071 Int Int) Unit!18464)

(assert (=> d!343587 (= lt!411033 (choose!7736 lt!411008 lt!411005 from!553 until!31))))

(declare-fun e!771011 () Bool)

(assert (=> d!343587 e!771011))

(declare-fun res!541512 () Bool)

(assert (=> d!343587 (=> (not res!541512) (not e!771011))))

(assert (=> d!343587 (= res!541512 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!343587 (= (sliceLemma!43 lt!411008 lt!411005 from!553 until!31) lt!411033)))

(declare-fun b!1201398 () Bool)

(declare-fun e!771014 () Int)

(assert (=> b!1201398 (= e!771014 until!31)))

(declare-fun b!1201399 () Bool)

(declare-fun call!83629 () Int)

(assert (=> b!1201399 (= e!771014 call!83629)))

(declare-fun b!1201400 () Bool)

(declare-fun e!771012 () List!12071)

(declare-fun call!83631 () List!12071)

(assert (=> b!1201400 (= e!771012 (++!3086 call!83631 (slice!480 lt!411005 0 (- until!31 call!83629))))))

(declare-fun bm!83624 () Bool)

(declare-fun c!200292 () Bool)

(declare-fun c!200293 () Bool)

(assert (=> bm!83624 (= c!200292 c!200293)))

(declare-fun call!83630 () List!12071)

(assert (=> bm!83624 (= call!83631 call!83630)))

(declare-fun b!1201401 () Bool)

(assert (=> b!1201401 (= e!771011 (<= until!31 (+ (size!9579 lt!411008) (size!9579 lt!411005))))))

(declare-fun b!1201402 () Bool)

(assert (=> b!1201402 (= e!771013 e!771012)))

(assert (=> b!1201402 (= c!200293 (<= until!31 call!83629))))

(declare-fun bm!83625 () Bool)

(assert (=> bm!83625 (= call!83630 (slice!480 (ite c!200291 lt!411005 lt!411008) (ite c!200291 (- from!553 call!83629) from!553) (ite c!200291 (- until!31 call!83629) e!771014)))))

(declare-fun b!1201403 () Bool)

(assert (=> b!1201403 (= e!771013 call!83630)))

(declare-fun bm!83626 () Bool)

(assert (=> bm!83626 (= call!83629 (size!9579 lt!411008))))

(declare-fun b!1201404 () Bool)

(assert (=> b!1201404 (= e!771012 call!83631)))

(assert (= (and d!343587 res!541512) b!1201401))

(assert (= (and d!343587 c!200291) b!1201403))

(assert (= (and d!343587 (not c!200291)) b!1201402))

(assert (= (and b!1201402 c!200293) b!1201404))

(assert (= (and b!1201402 (not c!200293)) b!1201400))

(assert (= (or b!1201404 b!1201400) bm!83624))

(assert (= (and bm!83624 c!200292) b!1201398))

(assert (= (and bm!83624 (not c!200292)) b!1201399))

(assert (= (or b!1201403 b!1201399 b!1201400 b!1201402) bm!83626))

(assert (= (or b!1201403 bm!83624) bm!83625))

(declare-fun m!1377015 () Bool)

(assert (=> b!1201400 m!1377015))

(assert (=> b!1201400 m!1377015))

(declare-fun m!1377017 () Bool)

(assert (=> b!1201400 m!1377017))

(assert (=> b!1201401 m!1376965))

(assert (=> b!1201401 m!1377011))

(assert (=> bm!83626 m!1376965))

(declare-fun m!1377019 () Bool)

(assert (=> bm!83625 m!1377019))

(assert (=> d!343587 m!1376957))

(assert (=> d!343587 m!1376957))

(assert (=> d!343587 m!1376959))

(assert (=> d!343587 m!1376965))

(declare-fun m!1377021 () Bool)

(assert (=> d!343587 m!1377021))

(assert (=> b!1201293 d!343587))

(declare-fun d!343589 () Bool)

(declare-fun lt!411036 () Int)

(assert (=> d!343589 (>= lt!411036 0)))

(declare-fun e!771017 () Int)

(assert (=> d!343589 (= lt!411036 e!771017)))

(declare-fun c!200296 () Bool)

(assert (=> d!343589 (= c!200296 ((_ is Nil!12047) lt!411008))))

(assert (=> d!343589 (= (size!9579 lt!411008) lt!411036)))

(declare-fun b!1201409 () Bool)

(assert (=> b!1201409 (= e!771017 0)))

(declare-fun b!1201410 () Bool)

(assert (=> b!1201410 (= e!771017 (+ 1 (size!9579 (t!112457 lt!411008))))))

(assert (= (and d!343589 c!200296) b!1201409))

(assert (= (and d!343589 (not c!200296)) b!1201410))

(declare-fun m!1377023 () Bool)

(assert (=> b!1201410 m!1377023))

(assert (=> b!1201293 d!343589))

(declare-fun b!1201440 () Bool)

(declare-fun e!771033 () List!12071)

(assert (=> b!1201440 (= e!771033 Nil!12047)))

(declare-fun b!1201441 () Bool)

(declare-fun e!771034 () List!12071)

(assert (=> b!1201441 (= e!771033 e!771034)))

(declare-fun c!200311 () Bool)

(assert (=> b!1201441 (= c!200311 ((_ is Leaf!6095) (left!10518 t!4115)))))

(declare-fun b!1201443 () Bool)

(assert (=> b!1201443 (= e!771034 (++!3086 (list!4493 (left!10518 (left!10518 t!4115))) (list!4493 (right!10848 (left!10518 t!4115)))))))

(declare-fun d!343591 () Bool)

(declare-fun c!200310 () Bool)

(assert (=> d!343591 (= c!200310 ((_ is Empty!3980) (left!10518 t!4115)))))

(assert (=> d!343591 (= (list!4493 (left!10518 t!4115)) e!771033)))

(declare-fun b!1201442 () Bool)

(declare-fun list!4495 (IArray!7965) List!12071)

(assert (=> b!1201442 (= e!771034 (list!4495 (xs!6687 (left!10518 t!4115))))))

(assert (= (and d!343591 c!200310) b!1201440))

(assert (= (and d!343591 (not c!200310)) b!1201441))

(assert (= (and b!1201441 c!200311) b!1201442))

(assert (= (and b!1201441 (not c!200311)) b!1201443))

(declare-fun m!1377055 () Bool)

(assert (=> b!1201443 m!1377055))

(declare-fun m!1377061 () Bool)

(assert (=> b!1201443 m!1377061))

(assert (=> b!1201443 m!1377055))

(assert (=> b!1201443 m!1377061))

(declare-fun m!1377065 () Bool)

(assert (=> b!1201443 m!1377065))

(declare-fun m!1377067 () Bool)

(assert (=> b!1201442 m!1377067))

(assert (=> b!1201293 d!343591))

(declare-fun d!343595 () Bool)

(assert (=> d!343595 (= (slice!480 (++!3086 lt!411008 lt!411005) from!553 until!31) (take!133 (drop!605 (++!3086 lt!411008 lt!411005) from!553) (- until!31 from!553)))))

(declare-fun bs!288295 () Bool)

(assert (= bs!288295 d!343595))

(assert (=> bs!288295 m!1376957))

(declare-fun m!1377069 () Bool)

(assert (=> bs!288295 m!1377069))

(assert (=> bs!288295 m!1377069))

(declare-fun m!1377071 () Bool)

(assert (=> bs!288295 m!1377071))

(assert (=> b!1201293 d!343595))

(declare-fun b!1201444 () Bool)

(declare-fun e!771035 () List!12071)

(assert (=> b!1201444 (= e!771035 Nil!12047)))

(declare-fun b!1201445 () Bool)

(declare-fun e!771036 () List!12071)

(assert (=> b!1201445 (= e!771035 e!771036)))

(declare-fun c!200313 () Bool)

(assert (=> b!1201445 (= c!200313 ((_ is Leaf!6095) (right!10848 t!4115)))))

(declare-fun b!1201447 () Bool)

(assert (=> b!1201447 (= e!771036 (++!3086 (list!4493 (left!10518 (right!10848 t!4115))) (list!4493 (right!10848 (right!10848 t!4115)))))))

(declare-fun d!343597 () Bool)

(declare-fun c!200312 () Bool)

(assert (=> d!343597 (= c!200312 ((_ is Empty!3980) (right!10848 t!4115)))))

(assert (=> d!343597 (= (list!4493 (right!10848 t!4115)) e!771035)))

(declare-fun b!1201446 () Bool)

(assert (=> b!1201446 (= e!771036 (list!4495 (xs!6687 (right!10848 t!4115))))))

(assert (= (and d!343597 c!200312) b!1201444))

(assert (= (and d!343597 (not c!200312)) b!1201445))

(assert (= (and b!1201445 c!200313) b!1201446))

(assert (= (and b!1201445 (not c!200313)) b!1201447))

(declare-fun m!1377073 () Bool)

(assert (=> b!1201447 m!1377073))

(declare-fun m!1377075 () Bool)

(assert (=> b!1201447 m!1377075))

(assert (=> b!1201447 m!1377073))

(assert (=> b!1201447 m!1377075))

(declare-fun m!1377077 () Bool)

(assert (=> b!1201447 m!1377077))

(declare-fun m!1377079 () Bool)

(assert (=> b!1201446 m!1377079))

(assert (=> b!1201293 d!343597))

(declare-fun d!343599 () Bool)

(declare-fun res!541537 () Bool)

(declare-fun e!771049 () Bool)

(assert (=> d!343599 (=> res!541537 e!771049)))

(assert (=> d!343599 (= res!541537 (not ((_ is Node!3980) t!4115)))))

(assert (=> d!343599 (= (isBalanced!1165 t!4115) e!771049)))

(declare-fun b!1201472 () Bool)

(declare-fun e!771050 () Bool)

(assert (=> b!1201472 (= e!771049 e!771050)))

(declare-fun res!541532 () Bool)

(assert (=> b!1201472 (=> (not res!541532) (not e!771050))))

(declare-fun height!574 (Conc!3980) Int)

(assert (=> b!1201472 (= res!541532 (<= (- 1) (- (height!574 (left!10518 t!4115)) (height!574 (right!10848 t!4115)))))))

(declare-fun b!1201473 () Bool)

(declare-fun res!541535 () Bool)

(assert (=> b!1201473 (=> (not res!541535) (not e!771050))))

(assert (=> b!1201473 (= res!541535 (<= (- (height!574 (left!10518 t!4115)) (height!574 (right!10848 t!4115))) 1))))

(declare-fun b!1201474 () Bool)

(declare-fun isEmpty!7269 (Conc!3980) Bool)

(assert (=> b!1201474 (= e!771050 (not (isEmpty!7269 (right!10848 t!4115))))))

(declare-fun b!1201475 () Bool)

(declare-fun res!541534 () Bool)

(assert (=> b!1201475 (=> (not res!541534) (not e!771050))))

(assert (=> b!1201475 (= res!541534 (not (isEmpty!7269 (left!10518 t!4115))))))

(declare-fun b!1201476 () Bool)

(declare-fun res!541536 () Bool)

(assert (=> b!1201476 (=> (not res!541536) (not e!771050))))

(assert (=> b!1201476 (= res!541536 (isBalanced!1165 (left!10518 t!4115)))))

(declare-fun b!1201477 () Bool)

(declare-fun res!541533 () Bool)

(assert (=> b!1201477 (=> (not res!541533) (not e!771050))))

(assert (=> b!1201477 (= res!541533 (isBalanced!1165 (right!10848 t!4115)))))

(assert (= (and d!343599 (not res!541537)) b!1201472))

(assert (= (and b!1201472 res!541532) b!1201473))

(assert (= (and b!1201473 res!541535) b!1201476))

(assert (= (and b!1201476 res!541536) b!1201477))

(assert (= (and b!1201477 res!541533) b!1201475))

(assert (= (and b!1201475 res!541534) b!1201474))

(declare-fun m!1377097 () Bool)

(assert (=> b!1201476 m!1377097))

(declare-fun m!1377099 () Bool)

(assert (=> b!1201475 m!1377099))

(declare-fun m!1377101 () Bool)

(assert (=> b!1201477 m!1377101))

(declare-fun m!1377103 () Bool)

(assert (=> b!1201472 m!1377103))

(declare-fun m!1377105 () Bool)

(assert (=> b!1201472 m!1377105))

(declare-fun m!1377107 () Bool)

(assert (=> b!1201474 m!1377107))

(assert (=> b!1201473 m!1377103))

(assert (=> b!1201473 m!1377105))

(assert (=> b!1201298 d!343599))

(declare-fun d!343609 () Bool)

(declare-fun lt!411045 () Int)

(assert (=> d!343609 (= lt!411045 (size!9579 (list!4493 t!4115)))))

(assert (=> d!343609 (= lt!411045 (ite ((_ is Empty!3980) t!4115) 0 (ite ((_ is Leaf!6095) t!4115) (csize!8191 t!4115) (csize!8190 t!4115))))))

(assert (=> d!343609 (= (size!9578 t!4115) lt!411045)))

(declare-fun bs!288298 () Bool)

(assert (= bs!288298 d!343609))

(declare-fun m!1377109 () Bool)

(assert (=> bs!288298 m!1377109))

(assert (=> bs!288298 m!1377109))

(declare-fun m!1377111 () Bool)

(assert (=> bs!288298 m!1377111))

(assert (=> b!1201292 d!343609))

(declare-fun b!1201501 () Bool)

(declare-fun e!771064 () Int)

(declare-fun call!83640 () Int)

(declare-fun IArrayPrimitiveSize!10 (IArray!7965) Int)

(assert (=> b!1201501 (= e!771064 (+ 1 (IArrayPrimitiveSize!10 (xs!6687 (right!10848 t!4115))) call!83640))))

(declare-fun b!1201502 () Bool)

(assert (=> b!1201502 (= e!771064 0)))

(declare-fun bm!83635 () Bool)

(declare-fun c!200326 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> bm!83635 (= call!83640 (BigIntAbs!0 (ite c!200326 (cheight!4191 (right!10848 t!4115)) (csize!8191 (right!10848 t!4115)))))))

(declare-fun b!1201503 () Bool)

(declare-fun e!771063 () Int)

(assert (=> b!1201503 (= e!771063 (+ 1 (ConcPrimitiveSize!10 (left!10518 (right!10848 t!4115))) (ConcPrimitiveSize!10 (right!10848 (right!10848 t!4115))) (BigIntAbs!0 (csize!8190 (right!10848 t!4115))) call!83640))))

(declare-fun d!343611 () Bool)

(declare-fun lt!411051 () Int)

(assert (=> d!343611 (>= lt!411051 0)))

(assert (=> d!343611 (= lt!411051 e!771063)))

(assert (=> d!343611 (= c!200326 ((_ is Node!3980) (right!10848 t!4115)))))

(assert (=> d!343611 (= (ConcPrimitiveSize!10 (right!10848 t!4115)) lt!411051)))

(declare-fun b!1201504 () Bool)

(assert (=> b!1201504 (= e!771063 e!771064)))

(declare-fun c!200327 () Bool)

(assert (=> b!1201504 (= c!200327 ((_ is Leaf!6095) (right!10848 t!4115)))))

(assert (= (and d!343611 c!200326) b!1201503))

(assert (= (and d!343611 (not c!200326)) b!1201504))

(assert (= (and b!1201504 c!200327) b!1201501))

(assert (= (and b!1201504 (not c!200327)) b!1201502))

(assert (= (or b!1201503 b!1201501) bm!83635))

(declare-fun m!1377137 () Bool)

(assert (=> b!1201501 m!1377137))

(declare-fun m!1377139 () Bool)

(assert (=> bm!83635 m!1377139))

(declare-fun m!1377141 () Bool)

(assert (=> b!1201503 m!1377141))

(declare-fun m!1377143 () Bool)

(assert (=> b!1201503 m!1377143))

(declare-fun m!1377145 () Bool)

(assert (=> b!1201503 m!1377145))

(assert (=> b!1201297 d!343611))

(declare-fun b!1201517 () Bool)

(declare-fun e!771070 () Int)

(declare-fun call!83641 () Int)

(assert (=> b!1201517 (= e!771070 (+ 1 (IArrayPrimitiveSize!10 (xs!6687 t!4115)) call!83641))))

(declare-fun b!1201518 () Bool)

(assert (=> b!1201518 (= e!771070 0)))

(declare-fun bm!83636 () Bool)

(declare-fun c!200328 () Bool)

(assert (=> bm!83636 (= call!83641 (BigIntAbs!0 (ite c!200328 (cheight!4191 t!4115) (csize!8191 t!4115))))))

(declare-fun b!1201519 () Bool)

(declare-fun e!771069 () Int)

(assert (=> b!1201519 (= e!771069 (+ 1 (ConcPrimitiveSize!10 (left!10518 t!4115)) (ConcPrimitiveSize!10 (right!10848 t!4115)) (BigIntAbs!0 (csize!8190 t!4115)) call!83641))))

(declare-fun d!343621 () Bool)

(declare-fun lt!411052 () Int)

(assert (=> d!343621 (>= lt!411052 0)))

(assert (=> d!343621 (= lt!411052 e!771069)))

(assert (=> d!343621 (= c!200328 ((_ is Node!3980) t!4115))))

(assert (=> d!343621 (= (ConcPrimitiveSize!10 t!4115) lt!411052)))

(declare-fun b!1201520 () Bool)

(assert (=> b!1201520 (= e!771069 e!771070)))

(declare-fun c!200329 () Bool)

(assert (=> b!1201520 (= c!200329 ((_ is Leaf!6095) t!4115))))

(assert (= (and d!343621 c!200328) b!1201519))

(assert (= (and d!343621 (not c!200328)) b!1201520))

(assert (= (and b!1201520 c!200329) b!1201517))

(assert (= (and b!1201520 (not c!200329)) b!1201518))

(assert (= (or b!1201519 b!1201517) bm!83636))

(declare-fun m!1377147 () Bool)

(assert (=> b!1201517 m!1377147))

(declare-fun m!1377149 () Bool)

(assert (=> bm!83636 m!1377149))

(declare-fun m!1377151 () Bool)

(assert (=> b!1201519 m!1377151))

(assert (=> b!1201519 m!1376947))

(declare-fun m!1377153 () Bool)

(assert (=> b!1201519 m!1377153))

(assert (=> b!1201297 d!343621))

(declare-fun b!1201635 () Bool)

(declare-fun e!771134 () Conc!3980)

(assert (=> b!1201635 (= e!771134 Empty!3980)))

(declare-fun b!1201636 () Bool)

(declare-fun e!771140 () Int)

(declare-fun call!83666 () Int)

(assert (=> b!1201636 (= e!771140 (- lt!411007 call!83666))))

(declare-fun b!1201637 () Bool)

(declare-fun res!541574 () Bool)

(declare-fun e!771132 () Bool)

(assert (=> b!1201637 (=> (not res!541574) (not e!771132))))

(assert (=> b!1201637 (= res!541574 (<= lt!411007 (size!9578 (left!10518 t!4115))))))

(declare-fun b!1201638 () Bool)

(declare-fun e!771131 () List!12071)

(declare-fun e!771138 () List!12071)

(assert (=> b!1201638 (= e!771131 e!771138)))

(declare-fun c!200372 () Bool)

(declare-fun call!83665 () Int)

(assert (=> b!1201638 (= c!200372 (<= lt!411007 call!83665))))

(declare-fun bm!83658 () Bool)

(declare-fun c!200370 () Bool)

(declare-fun c!200374 () Bool)

(assert (=> bm!83658 (= c!200370 c!200374)))

(declare-fun call!83664 () Conc!3980)

(declare-fun call!83663 () Conc!3980)

(assert (=> bm!83658 (= call!83664 call!83663)))

(declare-fun b!1201639 () Bool)

(declare-fun call!83668 () List!12071)

(assert (=> b!1201639 (= e!771131 call!83668)))

(declare-fun b!1201640 () Bool)

(declare-fun e!771139 () Conc!3980)

(assert (=> b!1201640 (= e!771134 e!771139)))

(declare-fun c!200373 () Bool)

(assert (=> b!1201640 (= c!200373 ((_ is Leaf!6095) (left!10518 t!4115)))))

(declare-fun call!83667 () List!12071)

(declare-fun lt!411073 () List!12071)

(declare-fun b!1201641 () Bool)

(assert (=> b!1201641 (= e!771138 (++!3086 call!83667 (slice!480 lt!411073 0 (- lt!411007 call!83665))))))

(declare-fun d!343623 () Bool)

(declare-fun e!771141 () Bool)

(assert (=> d!343623 e!771141))

(declare-fun res!541576 () Bool)

(assert (=> d!343623 (=> (not res!541576) (not e!771141))))

(declare-fun lt!411071 () Conc!3980)

(assert (=> d!343623 (= res!541576 (isBalanced!1165 lt!411071))))

(assert (=> d!343623 (= lt!411071 e!771134)))

(declare-fun c!200376 () Bool)

(assert (=> d!343623 (= c!200376 (= from!553 lt!411007))))

(assert (=> d!343623 e!771132))

(declare-fun res!541575 () Bool)

(assert (=> d!343623 (=> (not res!541575) (not e!771132))))

(assert (=> d!343623 (= res!541575 (and (<= 0 from!553) (<= from!553 lt!411007)))))

(assert (=> d!343623 (= (slice!481 (left!10518 t!4115) from!553 lt!411007) lt!411071)))

(declare-fun b!1201642 () Bool)

(assert (=> b!1201642 (= e!771132 (isBalanced!1165 (left!10518 t!4115)))))

(declare-fun b!1201643 () Bool)

(declare-fun e!771135 () Int)

(assert (=> b!1201643 (= e!771135 call!83665)))

(declare-fun bm!83659 () Bool)

(assert (=> bm!83659 (= call!83666 (size!9578 (left!10518 (left!10518 t!4115))))))

(declare-fun b!1201644 () Bool)

(declare-fun e!771136 () Conc!3980)

(assert (=> b!1201644 (= e!771136 Empty!3980)))

(declare-fun b!1201645 () Bool)

(assert (=> b!1201645 (= e!771138 call!83667)))

(declare-fun bm!83660 () Bool)

(declare-fun c!200371 () Bool)

(assert (=> bm!83660 (= c!200371 c!200372)))

(assert (=> bm!83660 (= call!83667 call!83668)))

(declare-fun b!1201646 () Bool)

(assert (=> b!1201646 (= e!771141 (= (list!4493 lt!411071) (slice!480 (list!4493 (left!10518 t!4115)) from!553 lt!411007)))))

(declare-fun c!200375 () Bool)

(declare-fun bm!83661 () Bool)

(declare-fun lt!411072 () List!12071)

(assert (=> bm!83661 (= call!83668 (slice!480 (ite c!200375 lt!411073 lt!411072) (ite c!200375 (- from!553 call!83665) from!553) (ite c!200375 (- lt!411007 call!83665) e!771135)))))

(declare-fun bm!83662 () Bool)

(declare-fun c!200377 () Bool)

(assert (=> bm!83662 (= call!83663 (slice!481 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115)))) (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) (ite c!200377 (- lt!411007 call!83666) e!771140)))))

(declare-fun b!1201647 () Bool)

(declare-fun e!771133 () Conc!3980)

(assert (=> b!1201647 (= e!771133 call!83664)))

(declare-fun b!1201648 () Bool)

(assert (=> b!1201648 (= e!771140 lt!411007)))

(declare-fun b!1201649 () Bool)

(declare-fun e!771137 () Conc!3980)

(assert (=> b!1201649 (= e!771137 call!83663)))

(declare-fun b!1201650 () Bool)

(declare-fun ++!3088 (Conc!3980 Conc!3980) Conc!3980)

(assert (=> b!1201650 (= e!771133 (++!3088 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666) call!83664))))

(declare-fun b!1201651 () Bool)

(declare-fun c!200369 () Bool)

(assert (=> b!1201651 (= c!200369 (= (- lt!411007 from!553) 0))))

(assert (=> b!1201651 (= e!771139 e!771136)))

(declare-fun b!1201652 () Bool)

(assert (=> b!1201652 (= e!771135 lt!411007)))

(declare-fun bm!83663 () Bool)

(assert (=> bm!83663 (= call!83665 (size!9579 lt!411072))))

(declare-fun b!1201653 () Bool)

(declare-fun slice!483 (IArray!7965 Int Int) IArray!7965)

(assert (=> b!1201653 (= e!771136 (Leaf!6095 (slice!483 (xs!6687 (left!10518 t!4115)) from!553 lt!411007) (- lt!411007 from!553)))))

(declare-fun b!1201654 () Bool)

(assert (=> b!1201654 (= c!200377 (<= (size!9578 (left!10518 (left!10518 t!4115))) from!553))))

(declare-fun lt!411074 () Unit!18464)

(declare-fun lt!411075 () Unit!18464)

(assert (=> b!1201654 (= lt!411074 lt!411075)))

(assert (=> b!1201654 (= (slice!480 (++!3086 lt!411072 lt!411073) from!553 lt!411007) e!771131)))

(assert (=> b!1201654 (= c!200375 (<= (size!9579 lt!411072) from!553))))

(assert (=> b!1201654 (= lt!411075 (sliceLemma!43 lt!411072 lt!411073 from!553 lt!411007))))

(assert (=> b!1201654 (= lt!411073 (list!4493 (right!10848 (left!10518 t!4115))))))

(assert (=> b!1201654 (= lt!411072 (list!4493 (left!10518 (left!10518 t!4115))))))

(assert (=> b!1201654 (= e!771139 e!771137)))

(declare-fun b!1201655 () Bool)

(assert (=> b!1201655 (= e!771137 e!771133)))

(assert (=> b!1201655 (= c!200374 (<= lt!411007 call!83666))))

(assert (= (and d!343623 res!541575) b!1201637))

(assert (= (and b!1201637 res!541574) b!1201642))

(assert (= (and d!343623 c!200376) b!1201635))

(assert (= (and d!343623 (not c!200376)) b!1201640))

(assert (= (and b!1201640 c!200373) b!1201651))

(assert (= (and b!1201640 (not c!200373)) b!1201654))

(assert (= (and b!1201651 c!200369) b!1201644))

(assert (= (and b!1201651 (not c!200369)) b!1201653))

(assert (= (and b!1201654 c!200375) b!1201639))

(assert (= (and b!1201654 (not c!200375)) b!1201638))

(assert (= (and b!1201638 c!200372) b!1201645))

(assert (= (and b!1201638 (not c!200372)) b!1201641))

(assert (= (or b!1201645 b!1201641) bm!83660))

(assert (= (and bm!83660 c!200371) b!1201652))

(assert (= (and bm!83660 (not c!200371)) b!1201643))

(assert (= (or b!1201639 b!1201643 b!1201638 b!1201641) bm!83663))

(assert (= (or b!1201639 bm!83660) bm!83661))

(assert (= (and b!1201654 c!200377) b!1201649))

(assert (= (and b!1201654 (not c!200377)) b!1201655))

(assert (= (and b!1201655 c!200374) b!1201647))

(assert (= (and b!1201655 (not c!200374)) b!1201650))

(assert (= (or b!1201647 b!1201650) bm!83658))

(assert (= (and bm!83658 c!200370) b!1201648))

(assert (= (and bm!83658 (not c!200370)) b!1201636))

(assert (= (or b!1201649 b!1201636 b!1201650 b!1201655) bm!83659))

(assert (= (or b!1201649 bm!83658) bm!83662))

(assert (= (and d!343623 res!541576) b!1201646))

(declare-fun m!1377217 () Bool)

(assert (=> d!343623 m!1377217))

(declare-fun m!1377219 () Bool)

(assert (=> bm!83659 m!1377219))

(declare-fun m!1377221 () Bool)

(assert (=> b!1201653 m!1377221))

(declare-fun m!1377223 () Bool)

(assert (=> bm!83662 m!1377223))

(assert (=> b!1201654 m!1377055))

(assert (=> b!1201654 m!1377219))

(declare-fun m!1377225 () Bool)

(assert (=> b!1201654 m!1377225))

(declare-fun m!1377227 () Bool)

(assert (=> b!1201654 m!1377227))

(declare-fun m!1377229 () Bool)

(assert (=> b!1201654 m!1377229))

(declare-fun m!1377231 () Bool)

(assert (=> b!1201654 m!1377231))

(assert (=> b!1201654 m!1377225))

(assert (=> b!1201654 m!1377061))

(assert (=> b!1201642 m!1377097))

(declare-fun m!1377233 () Bool)

(assert (=> b!1201641 m!1377233))

(assert (=> b!1201641 m!1377233))

(declare-fun m!1377235 () Bool)

(assert (=> b!1201641 m!1377235))

(assert (=> bm!83663 m!1377229))

(assert (=> b!1201637 m!1376963))

(declare-fun m!1377237 () Bool)

(assert (=> bm!83661 m!1377237))

(declare-fun m!1377239 () Bool)

(assert (=> b!1201646 m!1377239))

(assert (=> b!1201646 m!1376953))

(assert (=> b!1201646 m!1376953))

(declare-fun m!1377241 () Bool)

(assert (=> b!1201646 m!1377241))

(declare-fun m!1377243 () Bool)

(assert (=> b!1201650 m!1377243))

(assert (=> b!1201650 m!1377243))

(declare-fun m!1377245 () Bool)

(assert (=> b!1201650 m!1377245))

(assert (=> b!1201297 d!343623))

(declare-fun d!343639 () Bool)

(assert (=> d!343639 (= (inv!16137 (xs!6687 t!4115)) (<= (size!9579 (innerList!4040 (xs!6687 t!4115))) 2147483647))))

(declare-fun bs!288303 () Bool)

(assert (= bs!288303 d!343639))

(declare-fun m!1377247 () Bool)

(assert (=> bs!288303 m!1377247))

(assert (=> b!1201287 d!343639))

(declare-fun e!771142 () Bool)

(declare-fun b!1201659 () Bool)

(declare-fun lt!411076 () List!12071)

(assert (=> b!1201659 (= e!771142 (or (not (= (slice!480 lt!411005 0 (- until!31 lt!411010)) Nil!12047)) (= lt!411076 call!83606)))))

(declare-fun d!343641 () Bool)

(assert (=> d!343641 e!771142))

(declare-fun res!541577 () Bool)

(assert (=> d!343641 (=> (not res!541577) (not e!771142))))

(assert (=> d!343641 (= res!541577 (= (content!1694 lt!411076) ((_ map or) (content!1694 call!83606) (content!1694 (slice!480 lt!411005 0 (- until!31 lt!411010))))))))

(declare-fun e!771143 () List!12071)

(assert (=> d!343641 (= lt!411076 e!771143)))

(declare-fun c!200378 () Bool)

(assert (=> d!343641 (= c!200378 ((_ is Nil!12047) call!83606))))

(assert (=> d!343641 (= (++!3086 call!83606 (slice!480 lt!411005 0 (- until!31 lt!411010))) lt!411076)))

(declare-fun b!1201658 () Bool)

(declare-fun res!541578 () Bool)

(assert (=> b!1201658 (=> (not res!541578) (not e!771142))))

(assert (=> b!1201658 (= res!541578 (= (size!9579 lt!411076) (+ (size!9579 call!83606) (size!9579 (slice!480 lt!411005 0 (- until!31 lt!411010))))))))

(declare-fun b!1201656 () Bool)

(assert (=> b!1201656 (= e!771143 (slice!480 lt!411005 0 (- until!31 lt!411010)))))

(declare-fun b!1201657 () Bool)

(assert (=> b!1201657 (= e!771143 (Cons!12047 (h!17448 call!83606) (++!3086 (t!112457 call!83606) (slice!480 lt!411005 0 (- until!31 lt!411010)))))))

(assert (= (and d!343641 c!200378) b!1201656))

(assert (= (and d!343641 (not c!200378)) b!1201657))

(assert (= (and d!343641 res!541577) b!1201658))

(assert (= (and b!1201658 res!541578) b!1201659))

(declare-fun m!1377249 () Bool)

(assert (=> d!343641 m!1377249))

(declare-fun m!1377251 () Bool)

(assert (=> d!343641 m!1377251))

(assert (=> d!343641 m!1376941))

(declare-fun m!1377253 () Bool)

(assert (=> d!343641 m!1377253))

(declare-fun m!1377255 () Bool)

(assert (=> b!1201658 m!1377255))

(declare-fun m!1377257 () Bool)

(assert (=> b!1201658 m!1377257))

(assert (=> b!1201658 m!1376941))

(declare-fun m!1377259 () Bool)

(assert (=> b!1201658 m!1377259))

(assert (=> b!1201657 m!1376941))

(declare-fun m!1377261 () Bool)

(assert (=> b!1201657 m!1377261))

(assert (=> b!1201295 d!343641))

(declare-fun d!343643 () Bool)

(assert (=> d!343643 (= (slice!480 lt!411005 0 (- until!31 lt!411010)) (take!133 (drop!605 lt!411005 0) (- (- until!31 lt!411010) 0)))))

(declare-fun bs!288304 () Bool)

(assert (= bs!288304 d!343643))

(declare-fun m!1377263 () Bool)

(assert (=> bs!288304 m!1377263))

(assert (=> bs!288304 m!1377263))

(declare-fun m!1377265 () Bool)

(assert (=> bs!288304 m!1377265))

(assert (=> b!1201295 d!343643))

(declare-fun e!771148 () Bool)

(declare-fun tp!341359 () Bool)

(declare-fun b!1201668 () Bool)

(declare-fun tp!341360 () Bool)

(assert (=> b!1201668 (= e!771148 (and (inv!16138 (left!10518 (left!10518 t!4115))) tp!341359 (inv!16138 (right!10848 (left!10518 t!4115))) tp!341360))))

(declare-fun b!1201670 () Bool)

(declare-fun e!771149 () Bool)

(declare-fun tp!341361 () Bool)

(assert (=> b!1201670 (= e!771149 tp!341361)))

(declare-fun b!1201669 () Bool)

(assert (=> b!1201669 (= e!771148 (and (inv!16137 (xs!6687 (left!10518 t!4115))) e!771149))))

(assert (=> b!1201294 (= tp!341335 (and (inv!16138 (left!10518 t!4115)) e!771148))))

(assert (= (and b!1201294 ((_ is Node!3980) (left!10518 t!4115))) b!1201668))

(assert (= b!1201669 b!1201670))

(assert (= (and b!1201294 ((_ is Leaf!6095) (left!10518 t!4115))) b!1201669))

(declare-fun m!1377267 () Bool)

(assert (=> b!1201668 m!1377267))

(declare-fun m!1377269 () Bool)

(assert (=> b!1201668 m!1377269))

(declare-fun m!1377271 () Bool)

(assert (=> b!1201669 m!1377271))

(assert (=> b!1201294 m!1376933))

(declare-fun tp!341363 () Bool)

(declare-fun tp!341362 () Bool)

(declare-fun e!771150 () Bool)

(declare-fun b!1201671 () Bool)

(assert (=> b!1201671 (= e!771150 (and (inv!16138 (left!10518 (right!10848 t!4115))) tp!341362 (inv!16138 (right!10848 (right!10848 t!4115))) tp!341363))))

(declare-fun b!1201673 () Bool)

(declare-fun e!771151 () Bool)

(declare-fun tp!341364 () Bool)

(assert (=> b!1201673 (= e!771151 tp!341364)))

(declare-fun b!1201672 () Bool)

(assert (=> b!1201672 (= e!771150 (and (inv!16137 (xs!6687 (right!10848 t!4115))) e!771151))))

(assert (=> b!1201294 (= tp!341336 (and (inv!16138 (right!10848 t!4115)) e!771150))))

(assert (= (and b!1201294 ((_ is Node!3980) (right!10848 t!4115))) b!1201671))

(assert (= b!1201672 b!1201673))

(assert (= (and b!1201294 ((_ is Leaf!6095) (right!10848 t!4115))) b!1201672))

(declare-fun m!1377273 () Bool)

(assert (=> b!1201671 m!1377273))

(declare-fun m!1377275 () Bool)

(assert (=> b!1201671 m!1377275))

(declare-fun m!1377277 () Bool)

(assert (=> b!1201672 m!1377277))

(assert (=> b!1201294 m!1376935))

(declare-fun b!1201678 () Bool)

(declare-fun e!771154 () Bool)

(declare-fun tp_is_empty!5987 () Bool)

(declare-fun tp!341367 () Bool)

(assert (=> b!1201678 (= e!771154 (and tp_is_empty!5987 tp!341367))))

(assert (=> b!1201290 (= tp!341337 e!771154)))

(assert (= (and b!1201290 ((_ is Cons!12047) (innerList!4040 (xs!6687 t!4115)))) b!1201678))

(check-sat (not bm!83626) (not b!1201326) (not d!343595) (not b!1201443) (not b!1201673) (not b!1201672) (not b!1201501) (not b!1201650) (not b!1201446) (not d!343623) (not b!1201339) (not b!1201327) (not b!1201642) (not bm!83636) (not d!343609) (not b!1201669) (not b!1201410) (not b!1201472) (not b!1201668) (not b!1201646) (not bm!83661) (not b!1201653) (not d!343581) (not d!343641) (not b!1201637) (not b!1201670) (not b!1201329) (not b!1201340) (not b!1201477) (not bm!83635) tp_is_empty!5987 (not bm!83659) (not b!1201474) (not bm!83663) (not d!343587) (not b!1201678) (not b!1201442) (not b!1201671) (not bm!83662) (not b!1201324) (not b!1201473) (not b!1201447) (not b!1201641) (not d!343583) (not b!1201321) (not b!1201400) (not b!1201654) (not b!1201476) (not bm!83625) (not b!1201519) (not b!1201294) (not b!1201475) (not b!1201323) (not d!343585) (not d!343639) (not b!1201503) (not d!343643) (not b!1201517) (not b!1201657) (not b!1201658) (not b!1201401))
(check-sat)
(get-model)

(declare-fun d!343695 () Bool)

(assert (=> d!343695 (= (height!574 (left!10518 t!4115)) (ite ((_ is Empty!3980) (left!10518 t!4115)) 0 (ite ((_ is Leaf!6095) (left!10518 t!4115)) 1 (cheight!4191 (left!10518 t!4115)))))))

(assert (=> b!1201473 d!343695))

(declare-fun d!343701 () Bool)

(assert (=> d!343701 (= (height!574 (right!10848 t!4115)) (ite ((_ is Empty!3980) (right!10848 t!4115)) 0 (ite ((_ is Leaf!6095) (right!10848 t!4115)) 1 (cheight!4191 (right!10848 t!4115)))))))

(assert (=> b!1201473 d!343701))

(declare-fun lt!411106 () IArray!7965)

(declare-fun d!343703 () Bool)

(assert (=> d!343703 (= lt!411106 (IArray!7966 (slice!480 (list!4495 (xs!6687 (left!10518 t!4115))) from!553 lt!411007)))))

(declare-fun choose!7737 (IArray!7965 Int Int) IArray!7965)

(assert (=> d!343703 (= lt!411106 (choose!7737 (xs!6687 (left!10518 t!4115)) from!553 lt!411007))))

(declare-fun e!771230 () Bool)

(assert (=> d!343703 e!771230))

(declare-fun res!541610 () Bool)

(assert (=> d!343703 (=> (not res!541610) (not e!771230))))

(assert (=> d!343703 (= res!541610 (and (<= 0 from!553) (<= from!553 lt!411007)))))

(assert (=> d!343703 (= (slice!483 (xs!6687 (left!10518 t!4115)) from!553 lt!411007) lt!411106)))

(declare-fun b!1201820 () Bool)

(declare-fun size!9580 (IArray!7965) Int)

(assert (=> b!1201820 (= e!771230 (<= lt!411007 (size!9580 (xs!6687 (left!10518 t!4115)))))))

(assert (= (and d!343703 res!541610) b!1201820))

(assert (=> d!343703 m!1377067))

(assert (=> d!343703 m!1377067))

(declare-fun m!1377449 () Bool)

(assert (=> d!343703 m!1377449))

(declare-fun m!1377451 () Bool)

(assert (=> d!343703 m!1377451))

(declare-fun m!1377453 () Bool)

(assert (=> b!1201820 m!1377453))

(assert (=> b!1201653 d!343703))

(declare-fun b!1201824 () Bool)

(declare-fun e!771231 () Bool)

(declare-fun lt!411107 () List!12071)

(assert (=> b!1201824 (= e!771231 (or (not (= (list!4493 (right!10848 (left!10518 t!4115))) Nil!12047)) (= lt!411107 (list!4493 (left!10518 (left!10518 t!4115))))))))

(declare-fun d!343717 () Bool)

(assert (=> d!343717 e!771231))

(declare-fun res!541611 () Bool)

(assert (=> d!343717 (=> (not res!541611) (not e!771231))))

(assert (=> d!343717 (= res!541611 (= (content!1694 lt!411107) ((_ map or) (content!1694 (list!4493 (left!10518 (left!10518 t!4115)))) (content!1694 (list!4493 (right!10848 (left!10518 t!4115)))))))))

(declare-fun e!771232 () List!12071)

(assert (=> d!343717 (= lt!411107 e!771232)))

(declare-fun c!200434 () Bool)

(assert (=> d!343717 (= c!200434 ((_ is Nil!12047) (list!4493 (left!10518 (left!10518 t!4115)))))))

(assert (=> d!343717 (= (++!3086 (list!4493 (left!10518 (left!10518 t!4115))) (list!4493 (right!10848 (left!10518 t!4115)))) lt!411107)))

(declare-fun b!1201823 () Bool)

(declare-fun res!541612 () Bool)

(assert (=> b!1201823 (=> (not res!541612) (not e!771231))))

(assert (=> b!1201823 (= res!541612 (= (size!9579 lt!411107) (+ (size!9579 (list!4493 (left!10518 (left!10518 t!4115)))) (size!9579 (list!4493 (right!10848 (left!10518 t!4115)))))))))

(declare-fun b!1201821 () Bool)

(assert (=> b!1201821 (= e!771232 (list!4493 (right!10848 (left!10518 t!4115))))))

(declare-fun b!1201822 () Bool)

(assert (=> b!1201822 (= e!771232 (Cons!12047 (h!17448 (list!4493 (left!10518 (left!10518 t!4115)))) (++!3086 (t!112457 (list!4493 (left!10518 (left!10518 t!4115)))) (list!4493 (right!10848 (left!10518 t!4115))))))))

(assert (= (and d!343717 c!200434) b!1201821))

(assert (= (and d!343717 (not c!200434)) b!1201822))

(assert (= (and d!343717 res!541611) b!1201823))

(assert (= (and b!1201823 res!541612) b!1201824))

(declare-fun m!1377463 () Bool)

(assert (=> d!343717 m!1377463))

(assert (=> d!343717 m!1377055))

(declare-fun m!1377465 () Bool)

(assert (=> d!343717 m!1377465))

(assert (=> d!343717 m!1377061))

(declare-fun m!1377467 () Bool)

(assert (=> d!343717 m!1377467))

(declare-fun m!1377473 () Bool)

(assert (=> b!1201823 m!1377473))

(assert (=> b!1201823 m!1377055))

(declare-fun m!1377475 () Bool)

(assert (=> b!1201823 m!1377475))

(assert (=> b!1201823 m!1377061))

(declare-fun m!1377477 () Bool)

(assert (=> b!1201823 m!1377477))

(assert (=> b!1201822 m!1377061))

(declare-fun m!1377479 () Bool)

(assert (=> b!1201822 m!1377479))

(assert (=> b!1201443 d!343717))

(declare-fun b!1201837 () Bool)

(declare-fun e!771238 () List!12071)

(assert (=> b!1201837 (= e!771238 Nil!12047)))

(declare-fun b!1201838 () Bool)

(declare-fun e!771239 () List!12071)

(assert (=> b!1201838 (= e!771238 e!771239)))

(declare-fun c!200439 () Bool)

(assert (=> b!1201838 (= c!200439 ((_ is Leaf!6095) (left!10518 (left!10518 t!4115))))))

(declare-fun b!1201840 () Bool)

(assert (=> b!1201840 (= e!771239 (++!3086 (list!4493 (left!10518 (left!10518 (left!10518 t!4115)))) (list!4493 (right!10848 (left!10518 (left!10518 t!4115))))))))

(declare-fun d!343725 () Bool)

(declare-fun c!200438 () Bool)

(assert (=> d!343725 (= c!200438 ((_ is Empty!3980) (left!10518 (left!10518 t!4115))))))

(assert (=> d!343725 (= (list!4493 (left!10518 (left!10518 t!4115))) e!771238)))

(declare-fun b!1201839 () Bool)

(assert (=> b!1201839 (= e!771239 (list!4495 (xs!6687 (left!10518 (left!10518 t!4115)))))))

(assert (= (and d!343725 c!200438) b!1201837))

(assert (= (and d!343725 (not c!200438)) b!1201838))

(assert (= (and b!1201838 c!200439) b!1201839))

(assert (= (and b!1201838 (not c!200439)) b!1201840))

(declare-fun m!1377489 () Bool)

(assert (=> b!1201840 m!1377489))

(declare-fun m!1377491 () Bool)

(assert (=> b!1201840 m!1377491))

(assert (=> b!1201840 m!1377489))

(assert (=> b!1201840 m!1377491))

(declare-fun m!1377497 () Bool)

(assert (=> b!1201840 m!1377497))

(declare-fun m!1377499 () Bool)

(assert (=> b!1201839 m!1377499))

(assert (=> b!1201443 d!343725))

(declare-fun b!1201845 () Bool)

(declare-fun e!771242 () List!12071)

(assert (=> b!1201845 (= e!771242 Nil!12047)))

(declare-fun b!1201846 () Bool)

(declare-fun e!771243 () List!12071)

(assert (=> b!1201846 (= e!771242 e!771243)))

(declare-fun c!200442 () Bool)

(assert (=> b!1201846 (= c!200442 ((_ is Leaf!6095) (right!10848 (left!10518 t!4115))))))

(declare-fun b!1201848 () Bool)

(assert (=> b!1201848 (= e!771243 (++!3086 (list!4493 (left!10518 (right!10848 (left!10518 t!4115)))) (list!4493 (right!10848 (right!10848 (left!10518 t!4115))))))))

(declare-fun d!343729 () Bool)

(declare-fun c!200441 () Bool)

(assert (=> d!343729 (= c!200441 ((_ is Empty!3980) (right!10848 (left!10518 t!4115))))))

(assert (=> d!343729 (= (list!4493 (right!10848 (left!10518 t!4115))) e!771242)))

(declare-fun b!1201847 () Bool)

(assert (=> b!1201847 (= e!771243 (list!4495 (xs!6687 (right!10848 (left!10518 t!4115)))))))

(assert (= (and d!343729 c!200441) b!1201845))

(assert (= (and d!343729 (not c!200441)) b!1201846))

(assert (= (and b!1201846 c!200442) b!1201847))

(assert (= (and b!1201846 (not c!200442)) b!1201848))

(declare-fun m!1377501 () Bool)

(assert (=> b!1201848 m!1377501))

(declare-fun m!1377503 () Bool)

(assert (=> b!1201848 m!1377503))

(assert (=> b!1201848 m!1377501))

(assert (=> b!1201848 m!1377503))

(declare-fun m!1377511 () Bool)

(assert (=> b!1201848 m!1377511))

(declare-fun m!1377517 () Bool)

(assert (=> b!1201847 m!1377517))

(assert (=> b!1201443 d!343729))

(assert (=> b!1201637 d!343583))

(declare-fun d!343733 () Bool)

(declare-fun c!200445 () Bool)

(assert (=> d!343733 (= c!200445 ((_ is Nil!12047) lt!411076))))

(declare-fun e!771250 () (InoxSet T!21810))

(assert (=> d!343733 (= (content!1694 lt!411076) e!771250)))

(declare-fun b!1201865 () Bool)

(assert (=> b!1201865 (= e!771250 ((as const (Array T!21810 Bool)) false))))

(declare-fun b!1201866 () Bool)

(assert (=> b!1201866 (= e!771250 ((_ map or) (store ((as const (Array T!21810 Bool)) false) (h!17448 lt!411076) true) (content!1694 (t!112457 lt!411076))))))

(assert (= (and d!343733 c!200445) b!1201865))

(assert (= (and d!343733 (not c!200445)) b!1201866))

(declare-fun m!1377549 () Bool)

(assert (=> b!1201866 m!1377549))

(declare-fun m!1377551 () Bool)

(assert (=> b!1201866 m!1377551))

(assert (=> d!343641 d!343733))

(declare-fun d!343743 () Bool)

(declare-fun c!200446 () Bool)

(assert (=> d!343743 (= c!200446 ((_ is Nil!12047) call!83606))))

(declare-fun e!771251 () (InoxSet T!21810))

(assert (=> d!343743 (= (content!1694 call!83606) e!771251)))

(declare-fun b!1201867 () Bool)

(assert (=> b!1201867 (= e!771251 ((as const (Array T!21810 Bool)) false))))

(declare-fun b!1201868 () Bool)

(assert (=> b!1201868 (= e!771251 ((_ map or) (store ((as const (Array T!21810 Bool)) false) (h!17448 call!83606) true) (content!1694 (t!112457 call!83606))))))

(assert (= (and d!343743 c!200446) b!1201867))

(assert (= (and d!343743 (not c!200446)) b!1201868))

(declare-fun m!1377555 () Bool)

(assert (=> b!1201868 m!1377555))

(declare-fun m!1377557 () Bool)

(assert (=> b!1201868 m!1377557))

(assert (=> d!343641 d!343743))

(declare-fun c!200447 () Bool)

(declare-fun d!343747 () Bool)

(assert (=> d!343747 (= c!200447 ((_ is Nil!12047) (slice!480 lt!411005 0 (- until!31 lt!411010))))))

(declare-fun e!771252 () (InoxSet T!21810))

(assert (=> d!343747 (= (content!1694 (slice!480 lt!411005 0 (- until!31 lt!411010))) e!771252)))

(declare-fun b!1201869 () Bool)

(assert (=> b!1201869 (= e!771252 ((as const (Array T!21810 Bool)) false))))

(declare-fun b!1201870 () Bool)

(assert (=> b!1201870 (= e!771252 ((_ map or) (store ((as const (Array T!21810 Bool)) false) (h!17448 (slice!480 lt!411005 0 (- until!31 lt!411010))) true) (content!1694 (t!112457 (slice!480 lt!411005 0 (- until!31 lt!411010))))))))

(assert (= (and d!343747 c!200447) b!1201869))

(assert (= (and d!343747 (not c!200447)) b!1201870))

(declare-fun m!1377559 () Bool)

(assert (=> b!1201870 m!1377559))

(declare-fun m!1377561 () Bool)

(assert (=> b!1201870 m!1377561))

(assert (=> d!343641 d!343747))

(declare-fun d!343749 () Bool)

(declare-fun lt!411109 () Int)

(assert (=> d!343749 (>= lt!411109 0)))

(declare-fun e!771253 () Int)

(assert (=> d!343749 (= lt!411109 e!771253)))

(declare-fun c!200448 () Bool)

(assert (=> d!343749 (= c!200448 ((_ is Nil!12047) lt!411020))))

(assert (=> d!343749 (= (size!9579 lt!411020) lt!411109)))

(declare-fun b!1201871 () Bool)

(assert (=> b!1201871 (= e!771253 0)))

(declare-fun b!1201872 () Bool)

(assert (=> b!1201872 (= e!771253 (+ 1 (size!9579 (t!112457 lt!411020))))))

(assert (= (and d!343749 c!200448) b!1201871))

(assert (= (and d!343749 (not c!200448)) b!1201872))

(declare-fun m!1377563 () Bool)

(assert (=> b!1201872 m!1377563))

(assert (=> b!1201340 d!343749))

(assert (=> b!1201340 d!343589))

(declare-fun d!343751 () Bool)

(declare-fun lt!411110 () Int)

(assert (=> d!343751 (>= lt!411110 0)))

(declare-fun e!771254 () Int)

(assert (=> d!343751 (= lt!411110 e!771254)))

(declare-fun c!200449 () Bool)

(assert (=> d!343751 (= c!200449 ((_ is Nil!12047) lt!411005))))

(assert (=> d!343751 (= (size!9579 lt!411005) lt!411110)))

(declare-fun b!1201873 () Bool)

(assert (=> b!1201873 (= e!771254 0)))

(declare-fun b!1201874 () Bool)

(assert (=> b!1201874 (= e!771254 (+ 1 (size!9579 (t!112457 lt!411005))))))

(assert (= (and d!343751 c!200449) b!1201873))

(assert (= (and d!343751 (not c!200449)) b!1201874))

(declare-fun m!1377565 () Bool)

(assert (=> b!1201874 m!1377565))

(assert (=> b!1201340 d!343751))

(declare-fun d!343753 () Bool)

(declare-fun lt!411111 () Int)

(assert (=> d!343753 (>= lt!411111 0)))

(declare-fun e!771255 () Int)

(assert (=> d!343753 (= lt!411111 e!771255)))

(declare-fun c!200450 () Bool)

(assert (=> d!343753 (= c!200450 ((_ is Nil!12047) (list!4493 (left!10518 t!4115))))))

(assert (=> d!343753 (= (size!9579 (list!4493 (left!10518 t!4115))) lt!411111)))

(declare-fun b!1201875 () Bool)

(assert (=> b!1201875 (= e!771255 0)))

(declare-fun b!1201876 () Bool)

(assert (=> b!1201876 (= e!771255 (+ 1 (size!9579 (t!112457 (list!4493 (left!10518 t!4115))))))))

(assert (= (and d!343753 c!200450) b!1201875))

(assert (= (and d!343753 (not c!200450)) b!1201876))

(declare-fun m!1377567 () Bool)

(assert (=> b!1201876 m!1377567))

(assert (=> d!343583 d!343753))

(assert (=> d!343583 d!343591))

(declare-fun e!771370 () Conc!3980)

(declare-fun b!1202099 () Bool)

(assert (=> b!1202099 (= e!771370 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666))))

(declare-fun bm!83767 () Bool)

(declare-fun call!83781 () Conc!3980)

(declare-fun call!83775 () Conc!3980)

(assert (=> bm!83767 (= call!83781 call!83775)))

(declare-fun b!1202100 () Bool)

(declare-fun e!771378 () Conc!3980)

(declare-fun call!83784 () Conc!3980)

(assert (=> b!1202100 (= e!771378 call!83784)))

(declare-fun bm!83768 () Bool)

(declare-fun call!83779 () Conc!3980)

(declare-fun call!83777 () Conc!3980)

(assert (=> bm!83768 (= call!83779 call!83777)))

(declare-fun b!1202102 () Bool)

(declare-fun res!541689 () Bool)

(declare-fun e!771373 () Bool)

(assert (=> b!1202102 (=> (not res!541689) (not e!771373))))

(declare-fun lt!411158 () Conc!3980)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1202102 (= res!541689 (<= (height!574 lt!411158) (+ (max!0 (height!574 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)) (height!574 call!83664)) 1)))))

(declare-fun c!200535 () Bool)

(declare-fun bm!83769 () Bool)

(declare-fun call!83774 () Int)

(assert (=> bm!83769 (= call!83774 (height!574 (ite c!200535 (left!10518 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)) (right!10848 call!83664))))))

(declare-fun bm!83770 () Bool)

(declare-fun call!83778 () Conc!3980)

(assert (=> bm!83770 (= call!83778 call!83775)))

(declare-fun b!1202103 () Bool)

(assert (=> b!1202103 (= e!771373 (= (list!4493 lt!411158) (++!3086 (list!4493 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)) (list!4493 call!83664))))))

(declare-fun call!83785 () Int)

(declare-fun lt!411157 () Conc!3980)

(declare-fun bm!83771 () Bool)

(assert (=> bm!83771 (= call!83785 (height!574 (ite c!200535 lt!411157 call!83664)))))

(declare-fun call!83776 () Int)

(declare-fun lt!411156 () Conc!3980)

(declare-fun bm!83772 () Bool)

(assert (=> bm!83772 (= call!83776 (height!574 (ite c!200535 (right!10848 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)) lt!411156)))))

(declare-fun call!83783 () Int)

(declare-fun bm!83773 () Bool)

(assert (=> bm!83773 (= call!83783 (height!574 (ite c!200535 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666) (left!10518 call!83664))))))

(declare-fun bm!83774 () Bool)

(declare-fun call!83772 () Conc!3980)

(declare-fun call!83773 () Conc!3980)

(assert (=> bm!83774 (= call!83772 call!83773)))

(declare-fun b!1202104 () Bool)

(declare-fun e!771375 () Bool)

(assert (=> b!1202104 (= e!771375 (isBalanced!1165 call!83664))))

(declare-fun b!1202105 () Bool)

(declare-fun c!200537 () Bool)

(declare-fun lt!411159 () Int)

(assert (=> b!1202105 (= c!200537 (and (<= (- 1) lt!411159) (<= lt!411159 1)))))

(assert (=> b!1202105 (= lt!411159 (- (height!574 call!83664) (height!574 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666))))))

(declare-fun e!771374 () Conc!3980)

(assert (=> b!1202105 (= e!771370 e!771374)))

(declare-fun b!1202106 () Bool)

(declare-fun e!771369 () Conc!3980)

(assert (=> b!1202106 (= e!771369 call!83773)))

(declare-fun bm!83775 () Bool)

(declare-fun call!83782 () Conc!3980)

(declare-fun call!83780 () Conc!3980)

(assert (=> bm!83775 (= call!83782 call!83780)))

(declare-fun b!1202107 () Bool)

(declare-fun e!771372 () Conc!3980)

(declare-fun e!771371 () Conc!3980)

(assert (=> b!1202107 (= e!771372 e!771371)))

(assert (=> b!1202107 (= lt!411157 call!83781)))

(declare-fun c!200541 () Bool)

(assert (=> b!1202107 (= c!200541 (= call!83785 (- call!83783 3)))))

(declare-fun b!1202108 () Bool)

(declare-fun e!771377 () Conc!3980)

(assert (=> b!1202108 (= e!771374 e!771377)))

(assert (=> b!1202108 (= c!200535 (< lt!411159 (- 1)))))

(declare-fun b!1202109 () Bool)

(declare-fun res!541691 () Bool)

(assert (=> b!1202109 (=> (not res!541691) (not e!771373))))

(assert (=> b!1202109 (= res!541691 (>= (height!574 lt!411158) (max!0 (height!574 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)) (height!574 call!83664))))))

(declare-fun bm!83776 () Bool)

(assert (=> bm!83776 (= call!83777 call!83782)))

(declare-fun bm!83777 () Bool)

(declare-fun call!83786 () Conc!3980)

(declare-fun call!83787 () Conc!3980)

(assert (=> bm!83777 (= call!83786 call!83787)))

(declare-fun b!1202110 () Bool)

(assert (=> b!1202110 (= e!771372 call!83777)))

(declare-fun b!1202111 () Bool)

(declare-fun c!200542 () Bool)

(assert (=> b!1202111 (= c!200542 (>= call!83774 call!83776))))

(assert (=> b!1202111 (= e!771377 e!771372)))

(declare-fun b!1202112 () Bool)

(declare-fun res!541687 () Bool)

(assert (=> b!1202112 (=> (not res!541687) (not e!771373))))

(assert (=> b!1202112 (= res!541687 (isBalanced!1165 lt!411158))))

(declare-fun bm!83778 () Bool)

(assert (=> bm!83778 (= call!83784 call!83787)))

(declare-fun c!200538 () Bool)

(declare-fun c!200540 () Bool)

(declare-fun bm!83779 () Bool)

(declare-fun <>!82 (Conc!3980 Conc!3980) Conc!3980)

(assert (=> bm!83779 (= call!83780 (<>!82 (ite c!200537 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666) (ite c!200535 (ite c!200542 (left!10518 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)) (ite c!200541 (left!10518 (right!10848 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666))) (left!10518 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)))) (ite c!200538 call!83778 (ite c!200540 lt!411156 (right!10848 (left!10518 call!83664)))))) (ite c!200537 call!83664 (ite c!200535 (ite c!200542 call!83781 (ite c!200541 lt!411157 (left!10518 (right!10848 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666))))) (ite c!200538 (right!10848 call!83664) (ite c!200540 (right!10848 (left!10518 call!83664)) (right!10848 call!83664)))))))))

(declare-fun bm!83780 () Bool)

(assert (=> bm!83780 (= call!83775 (++!3088 (ite c!200535 (ite c!200542 (right!10848 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)) (right!10848 (right!10848 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)))) (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)) (ite c!200535 call!83664 (ite c!200538 (left!10518 call!83664) (left!10518 (left!10518 call!83664))))))))

(declare-fun d!343755 () Bool)

(assert (=> d!343755 e!771373))

(declare-fun res!541688 () Bool)

(assert (=> d!343755 (=> (not res!541688) (not e!771373))))

(declare-fun appendAssocInst!230 (Conc!3980 Conc!3980) Bool)

(assert (=> d!343755 (= res!541688 (appendAssocInst!230 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666) call!83664))))

(declare-fun e!771376 () Conc!3980)

(assert (=> d!343755 (= lt!411158 e!771376)))

(declare-fun c!200536 () Bool)

(assert (=> d!343755 (= c!200536 (= (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666) Empty!3980))))

(assert (=> d!343755 e!771375))

(declare-fun res!541690 () Bool)

(assert (=> d!343755 (=> (not res!541690) (not e!771375))))

(assert (=> d!343755 (= res!541690 (isBalanced!1165 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)))))

(assert (=> d!343755 (= (++!3088 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666) call!83664) lt!411158)))

(declare-fun b!1202101 () Bool)

(assert (=> b!1202101 (= c!200538 (>= call!83774 call!83783))))

(assert (=> b!1202101 (= e!771377 e!771369)))

(declare-fun bm!83781 () Bool)

(assert (=> bm!83781 (= call!83787 (<>!82 (ite c!200535 (ite c!200541 (left!10518 (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666)) call!83779) (ite c!200540 call!83772 lt!411156)) (ite c!200535 (ite c!200541 call!83779 lt!411157) (ite c!200540 (right!10848 call!83664) call!83772))))))

(declare-fun b!1202113 () Bool)

(assert (=> b!1202113 (= e!771376 e!771370)))

(declare-fun c!200539 () Bool)

(assert (=> b!1202113 (= c!200539 (= call!83664 Empty!3980))))

(declare-fun b!1202114 () Bool)

(assert (=> b!1202114 (= e!771369 e!771378)))

(assert (=> b!1202114 (= lt!411156 call!83778)))

(assert (=> b!1202114 (= c!200540 (= call!83776 (- call!83785 3)))))

(declare-fun b!1202115 () Bool)

(assert (=> b!1202115 (= e!771371 call!83786)))

(declare-fun b!1202116 () Bool)

(assert (=> b!1202116 (= e!771376 call!83664)))

(declare-fun bm!83782 () Bool)

(assert (=> bm!83782 (= call!83773 call!83782)))

(declare-fun b!1202117 () Bool)

(assert (=> b!1202117 (= e!771374 call!83780)))

(declare-fun b!1202118 () Bool)

(assert (=> b!1202118 (= e!771371 call!83786)))

(declare-fun b!1202119 () Bool)

(assert (=> b!1202119 (= e!771378 call!83784)))

(assert (= (and d!343755 res!541690) b!1202104))

(assert (= (and d!343755 c!200536) b!1202116))

(assert (= (and d!343755 (not c!200536)) b!1202113))

(assert (= (and b!1202113 c!200539) b!1202099))

(assert (= (and b!1202113 (not c!200539)) b!1202105))

(assert (= (and b!1202105 c!200537) b!1202117))

(assert (= (and b!1202105 (not c!200537)) b!1202108))

(assert (= (and b!1202108 c!200535) b!1202111))

(assert (= (and b!1202108 (not c!200535)) b!1202101))

(assert (= (and b!1202111 c!200542) b!1202110))

(assert (= (and b!1202111 (not c!200542)) b!1202107))

(assert (= (and b!1202107 c!200541) b!1202115))

(assert (= (and b!1202107 (not c!200541)) b!1202118))

(assert (= (or b!1202115 b!1202118) bm!83768))

(assert (= (or b!1202115 b!1202118) bm!83777))

(assert (= (or b!1202110 b!1202107) bm!83767))

(assert (= (or b!1202110 bm!83768) bm!83776))

(assert (= (and b!1202101 c!200538) b!1202106))

(assert (= (and b!1202101 (not c!200538)) b!1202114))

(assert (= (and b!1202114 c!200540) b!1202100))

(assert (= (and b!1202114 (not c!200540)) b!1202119))

(assert (= (or b!1202100 b!1202119) bm!83774))

(assert (= (or b!1202100 b!1202119) bm!83778))

(assert (= (or b!1202106 b!1202114) bm!83770))

(assert (= (or b!1202106 bm!83774) bm!83782))

(assert (= (or b!1202107 b!1202114) bm!83771))

(assert (= (or b!1202111 b!1202101) bm!83769))

(assert (= (or bm!83776 bm!83782) bm!83775))

(assert (= (or bm!83767 bm!83770) bm!83780))

(assert (= (or b!1202107 b!1202101) bm!83773))

(assert (= (or b!1202111 b!1202114) bm!83772))

(assert (= (or bm!83777 bm!83778) bm!83781))

(assert (= (or b!1202117 bm!83775) bm!83779))

(assert (= (and d!343755 res!541688) b!1202112))

(assert (= (and b!1202112 res!541687) b!1202102))

(assert (= (and b!1202102 res!541689) b!1202109))

(assert (= (and b!1202109 res!541691) b!1202103))

(declare-fun m!1377813 () Bool)

(assert (=> b!1202104 m!1377813))

(declare-fun m!1377815 () Bool)

(assert (=> bm!83781 m!1377815))

(declare-fun m!1377817 () Bool)

(assert (=> b!1202105 m!1377817))

(assert (=> b!1202105 m!1377243))

(declare-fun m!1377819 () Bool)

(assert (=> b!1202105 m!1377819))

(declare-fun m!1377821 () Bool)

(assert (=> b!1202103 m!1377821))

(assert (=> b!1202103 m!1377243))

(declare-fun m!1377823 () Bool)

(assert (=> b!1202103 m!1377823))

(declare-fun m!1377825 () Bool)

(assert (=> b!1202103 m!1377825))

(assert (=> b!1202103 m!1377823))

(assert (=> b!1202103 m!1377825))

(declare-fun m!1377827 () Bool)

(assert (=> b!1202103 m!1377827))

(declare-fun m!1377829 () Bool)

(assert (=> b!1202112 m!1377829))

(declare-fun m!1377831 () Bool)

(assert (=> bm!83772 m!1377831))

(declare-fun m!1377833 () Bool)

(assert (=> b!1202109 m!1377833))

(assert (=> b!1202109 m!1377243))

(assert (=> b!1202109 m!1377819))

(assert (=> b!1202109 m!1377817))

(assert (=> b!1202109 m!1377819))

(assert (=> b!1202109 m!1377817))

(declare-fun m!1377835 () Bool)

(assert (=> b!1202109 m!1377835))

(declare-fun m!1377837 () Bool)

(assert (=> bm!83780 m!1377837))

(assert (=> d!343755 m!1377243))

(declare-fun m!1377839 () Bool)

(assert (=> d!343755 m!1377839))

(assert (=> d!343755 m!1377243))

(declare-fun m!1377841 () Bool)

(assert (=> d!343755 m!1377841))

(declare-fun m!1377843 () Bool)

(assert (=> bm!83771 m!1377843))

(declare-fun m!1377845 () Bool)

(assert (=> bm!83779 m!1377845))

(declare-fun m!1377847 () Bool)

(assert (=> bm!83773 m!1377847))

(assert (=> b!1202102 m!1377833))

(assert (=> b!1202102 m!1377243))

(assert (=> b!1202102 m!1377819))

(assert (=> b!1202102 m!1377817))

(assert (=> b!1202102 m!1377819))

(assert (=> b!1202102 m!1377817))

(assert (=> b!1202102 m!1377835))

(declare-fun m!1377849 () Bool)

(assert (=> bm!83769 m!1377849))

(assert (=> b!1201650 d!343755))

(declare-fun b!1202123 () Bool)

(declare-fun e!771383 () Conc!3980)

(assert (=> b!1202123 (= e!771383 Empty!3980)))

(declare-fun b!1202124 () Bool)

(declare-fun e!771389 () Int)

(declare-fun call!83791 () Int)

(assert (=> b!1202124 (= e!771389 (- call!83666 call!83791))))

(declare-fun b!1202125 () Bool)

(declare-fun res!541695 () Bool)

(declare-fun e!771381 () Bool)

(assert (=> b!1202125 (=> (not res!541695) (not e!771381))))

(assert (=> b!1202125 (= res!541695 (<= call!83666 (size!9578 (left!10518 (left!10518 t!4115)))))))

(declare-fun b!1202126 () Bool)

(declare-fun e!771380 () List!12071)

(declare-fun e!771387 () List!12071)

(assert (=> b!1202126 (= e!771380 e!771387)))

(declare-fun c!200546 () Bool)

(declare-fun call!83790 () Int)

(assert (=> b!1202126 (= c!200546 (<= call!83666 call!83790))))

(declare-fun bm!83783 () Bool)

(declare-fun c!200544 () Bool)

(declare-fun c!200548 () Bool)

(assert (=> bm!83783 (= c!200544 c!200548)))

(declare-fun call!83789 () Conc!3980)

(declare-fun call!83788 () Conc!3980)

(assert (=> bm!83783 (= call!83789 call!83788)))

(declare-fun b!1202127 () Bool)

(declare-fun call!83793 () List!12071)

(assert (=> b!1202127 (= e!771380 call!83793)))

(declare-fun b!1202128 () Bool)

(declare-fun e!771388 () Conc!3980)

(assert (=> b!1202128 (= e!771383 e!771388)))

(declare-fun c!200547 () Bool)

(assert (=> b!1202128 (= c!200547 ((_ is Leaf!6095) (left!10518 (left!10518 t!4115))))))

(declare-fun call!83792 () List!12071)

(declare-fun lt!411163 () List!12071)

(declare-fun b!1202129 () Bool)

(assert (=> b!1202129 (= e!771387 (++!3086 call!83792 (slice!480 lt!411163 0 (- call!83666 call!83790))))))

(declare-fun d!343827 () Bool)

(declare-fun e!771390 () Bool)

(assert (=> d!343827 e!771390))

(declare-fun res!541697 () Bool)

(assert (=> d!343827 (=> (not res!541697) (not e!771390))))

(declare-fun lt!411161 () Conc!3980)

(assert (=> d!343827 (= res!541697 (isBalanced!1165 lt!411161))))

(assert (=> d!343827 (= lt!411161 e!771383)))

(declare-fun c!200550 () Bool)

(assert (=> d!343827 (= c!200550 (= from!553 call!83666))))

(assert (=> d!343827 e!771381))

(declare-fun res!541696 () Bool)

(assert (=> d!343827 (=> (not res!541696) (not e!771381))))

(assert (=> d!343827 (= res!541696 (and (<= 0 from!553) (<= from!553 call!83666)))))

(assert (=> d!343827 (= (slice!481 (left!10518 (left!10518 t!4115)) from!553 call!83666) lt!411161)))

(declare-fun b!1202130 () Bool)

(assert (=> b!1202130 (= e!771381 (isBalanced!1165 (left!10518 (left!10518 t!4115))))))

(declare-fun b!1202131 () Bool)

(declare-fun e!771384 () Int)

(assert (=> b!1202131 (= e!771384 call!83790)))

(declare-fun bm!83784 () Bool)

(assert (=> bm!83784 (= call!83791 (size!9578 (left!10518 (left!10518 (left!10518 t!4115)))))))

(declare-fun b!1202132 () Bool)

(declare-fun e!771385 () Conc!3980)

(assert (=> b!1202132 (= e!771385 Empty!3980)))

(declare-fun b!1202133 () Bool)

(assert (=> b!1202133 (= e!771387 call!83792)))

(declare-fun bm!83785 () Bool)

(declare-fun c!200545 () Bool)

(assert (=> bm!83785 (= c!200545 c!200546)))

(assert (=> bm!83785 (= call!83792 call!83793)))

(declare-fun b!1202134 () Bool)

(assert (=> b!1202134 (= e!771390 (= (list!4493 lt!411161) (slice!480 (list!4493 (left!10518 (left!10518 t!4115))) from!553 call!83666)))))

(declare-fun bm!83786 () Bool)

(declare-fun c!200549 () Bool)

(declare-fun lt!411162 () List!12071)

(assert (=> bm!83786 (= call!83793 (slice!480 (ite c!200549 lt!411163 lt!411162) (ite c!200549 (- from!553 call!83790) from!553) (ite c!200549 (- call!83666 call!83790) e!771384)))))

(declare-fun bm!83787 () Bool)

(declare-fun c!200551 () Bool)

(assert (=> bm!83787 (= call!83788 (slice!481 (ite c!200551 (right!10848 (left!10518 (left!10518 t!4115))) (ite c!200548 (left!10518 (left!10518 (left!10518 t!4115))) (right!10848 (left!10518 (left!10518 t!4115))))) (ite c!200551 (- from!553 call!83791) (ite c!200548 from!553 0)) (ite c!200551 (- call!83666 call!83791) e!771389)))))

(declare-fun b!1202135 () Bool)

(declare-fun e!771382 () Conc!3980)

(assert (=> b!1202135 (= e!771382 call!83789)))

(declare-fun b!1202136 () Bool)

(assert (=> b!1202136 (= e!771389 call!83666)))

(declare-fun b!1202137 () Bool)

(declare-fun e!771386 () Conc!3980)

(assert (=> b!1202137 (= e!771386 call!83788)))

(declare-fun b!1202138 () Bool)

(assert (=> b!1202138 (= e!771382 (++!3088 (slice!481 (left!10518 (left!10518 (left!10518 t!4115))) from!553 call!83791) call!83789))))

(declare-fun b!1202139 () Bool)

(declare-fun c!200543 () Bool)

(assert (=> b!1202139 (= c!200543 (= (- call!83666 from!553) 0))))

(assert (=> b!1202139 (= e!771388 e!771385)))

(declare-fun b!1202140 () Bool)

(assert (=> b!1202140 (= e!771384 call!83666)))

(declare-fun bm!83788 () Bool)

(assert (=> bm!83788 (= call!83790 (size!9579 lt!411162))))

(declare-fun b!1202141 () Bool)

(assert (=> b!1202141 (= e!771385 (Leaf!6095 (slice!483 (xs!6687 (left!10518 (left!10518 t!4115))) from!553 call!83666) (- call!83666 from!553)))))

(declare-fun b!1202142 () Bool)

(assert (=> b!1202142 (= c!200551 (<= (size!9578 (left!10518 (left!10518 (left!10518 t!4115)))) from!553))))

(declare-fun lt!411164 () Unit!18464)

(declare-fun lt!411165 () Unit!18464)

(assert (=> b!1202142 (= lt!411164 lt!411165)))

(assert (=> b!1202142 (= (slice!480 (++!3086 lt!411162 lt!411163) from!553 call!83666) e!771380)))

(assert (=> b!1202142 (= c!200549 (<= (size!9579 lt!411162) from!553))))

(assert (=> b!1202142 (= lt!411165 (sliceLemma!43 lt!411162 lt!411163 from!553 call!83666))))

(assert (=> b!1202142 (= lt!411163 (list!4493 (right!10848 (left!10518 (left!10518 t!4115)))))))

(assert (=> b!1202142 (= lt!411162 (list!4493 (left!10518 (left!10518 (left!10518 t!4115)))))))

(assert (=> b!1202142 (= e!771388 e!771386)))

(declare-fun b!1202143 () Bool)

(assert (=> b!1202143 (= e!771386 e!771382)))

(assert (=> b!1202143 (= c!200548 (<= call!83666 call!83791))))

(assert (= (and d!343827 res!541696) b!1202125))

(assert (= (and b!1202125 res!541695) b!1202130))

(assert (= (and d!343827 c!200550) b!1202123))

(assert (= (and d!343827 (not c!200550)) b!1202128))

(assert (= (and b!1202128 c!200547) b!1202139))

(assert (= (and b!1202128 (not c!200547)) b!1202142))

(assert (= (and b!1202139 c!200543) b!1202132))

(assert (= (and b!1202139 (not c!200543)) b!1202141))

(assert (= (and b!1202142 c!200549) b!1202127))

(assert (= (and b!1202142 (not c!200549)) b!1202126))

(assert (= (and b!1202126 c!200546) b!1202133))

(assert (= (and b!1202126 (not c!200546)) b!1202129))

(assert (= (or b!1202133 b!1202129) bm!83785))

(assert (= (and bm!83785 c!200545) b!1202140))

(assert (= (and bm!83785 (not c!200545)) b!1202131))

(assert (= (or b!1202127 b!1202131 b!1202126 b!1202129) bm!83788))

(assert (= (or b!1202127 bm!83785) bm!83786))

(assert (= (and b!1202142 c!200551) b!1202137))

(assert (= (and b!1202142 (not c!200551)) b!1202143))

(assert (= (and b!1202143 c!200548) b!1202135))

(assert (= (and b!1202143 (not c!200548)) b!1202138))

(assert (= (or b!1202135 b!1202138) bm!83783))

(assert (= (and bm!83783 c!200544) b!1202136))

(assert (= (and bm!83783 (not c!200544)) b!1202124))

(assert (= (or b!1202137 b!1202124 b!1202138 b!1202143) bm!83784))

(assert (= (or b!1202137 bm!83783) bm!83787))

(assert (= (and d!343827 res!541697) b!1202134))

(declare-fun m!1377851 () Bool)

(assert (=> d!343827 m!1377851))

(declare-fun m!1377853 () Bool)

(assert (=> bm!83784 m!1377853))

(declare-fun m!1377855 () Bool)

(assert (=> b!1202141 m!1377855))

(declare-fun m!1377857 () Bool)

(assert (=> bm!83787 m!1377857))

(assert (=> b!1202142 m!1377489))

(assert (=> b!1202142 m!1377853))

(declare-fun m!1377859 () Bool)

(assert (=> b!1202142 m!1377859))

(declare-fun m!1377861 () Bool)

(assert (=> b!1202142 m!1377861))

(declare-fun m!1377863 () Bool)

(assert (=> b!1202142 m!1377863))

(declare-fun m!1377865 () Bool)

(assert (=> b!1202142 m!1377865))

(assert (=> b!1202142 m!1377859))

(assert (=> b!1202142 m!1377491))

(declare-fun m!1377867 () Bool)

(assert (=> b!1202130 m!1377867))

(declare-fun m!1377869 () Bool)

(assert (=> b!1202129 m!1377869))

(assert (=> b!1202129 m!1377869))

(declare-fun m!1377871 () Bool)

(assert (=> b!1202129 m!1377871))

(assert (=> bm!83788 m!1377863))

(assert (=> b!1202125 m!1377219))

(declare-fun m!1377873 () Bool)

(assert (=> bm!83786 m!1377873))

(declare-fun m!1377875 () Bool)

(assert (=> b!1202134 m!1377875))

(assert (=> b!1202134 m!1377055))

(assert (=> b!1202134 m!1377055))

(declare-fun m!1377877 () Bool)

(assert (=> b!1202134 m!1377877))

(declare-fun m!1377879 () Bool)

(assert (=> b!1202138 m!1377879))

(assert (=> b!1202138 m!1377879))

(declare-fun m!1377881 () Bool)

(assert (=> b!1202138 m!1377881))

(assert (=> b!1201650 d!343827))

(declare-fun d!343829 () Bool)

(declare-fun e!771419 () Bool)

(assert (=> d!343829 e!771419))

(declare-fun res!541700 () Bool)

(assert (=> d!343829 (=> (not res!541700) (not e!771419))))

(declare-fun lt!411168 () List!12071)

(assert (=> d!343829 (= res!541700 (= ((_ map implies) (content!1694 lt!411168) (content!1694 (drop!605 (++!3086 lt!411008 lt!411005) from!553))) ((as const (InoxSet T!21810)) true)))))

(declare-fun e!771420 () List!12071)

(assert (=> d!343829 (= lt!411168 e!771420)))

(declare-fun c!200568 () Bool)

(assert (=> d!343829 (= c!200568 (or ((_ is Nil!12047) (drop!605 (++!3086 lt!411008 lt!411005) from!553)) (<= (- until!31 from!553) 0)))))

(assert (=> d!343829 (= (take!133 (drop!605 (++!3086 lt!411008 lt!411005) from!553) (- until!31 from!553)) lt!411168)))

(declare-fun b!1202191 () Bool)

(assert (=> b!1202191 (= e!771420 Nil!12047)))

(declare-fun b!1202192 () Bool)

(declare-fun e!771421 () Int)

(assert (=> b!1202192 (= e!771421 (- until!31 from!553))))

(declare-fun b!1202193 () Bool)

(declare-fun e!771422 () Int)

(assert (=> b!1202193 (= e!771422 0)))

(declare-fun b!1202194 () Bool)

(assert (=> b!1202194 (= e!771419 (= (size!9579 lt!411168) e!771422))))

(declare-fun c!200569 () Bool)

(assert (=> b!1202194 (= c!200569 (<= (- until!31 from!553) 0))))

(declare-fun b!1202195 () Bool)

(assert (=> b!1202195 (= e!771421 (size!9579 (drop!605 (++!3086 lt!411008 lt!411005) from!553)))))

(declare-fun b!1202196 () Bool)

(assert (=> b!1202196 (= e!771422 e!771421)))

(declare-fun c!200567 () Bool)

(assert (=> b!1202196 (= c!200567 (>= (- until!31 from!553) (size!9579 (drop!605 (++!3086 lt!411008 lt!411005) from!553))))))

(declare-fun b!1202197 () Bool)

(assert (=> b!1202197 (= e!771420 (Cons!12047 (h!17448 (drop!605 (++!3086 lt!411008 lt!411005) from!553)) (take!133 (t!112457 (drop!605 (++!3086 lt!411008 lt!411005) from!553)) (- (- until!31 from!553) 1))))))

(assert (= (and d!343829 c!200568) b!1202191))

(assert (= (and d!343829 (not c!200568)) b!1202197))

(assert (= (and d!343829 res!541700) b!1202194))

(assert (= (and b!1202194 c!200569) b!1202193))

(assert (= (and b!1202194 (not c!200569)) b!1202196))

(assert (= (and b!1202196 c!200567) b!1202195))

(assert (= (and b!1202196 (not c!200567)) b!1202192))

(assert (=> b!1202195 m!1377069))

(declare-fun m!1377913 () Bool)

(assert (=> b!1202195 m!1377913))

(assert (=> b!1202196 m!1377069))

(assert (=> b!1202196 m!1377913))

(declare-fun m!1377915 () Bool)

(assert (=> b!1202194 m!1377915))

(declare-fun m!1377917 () Bool)

(assert (=> b!1202197 m!1377917))

(declare-fun m!1377919 () Bool)

(assert (=> d!343829 m!1377919))

(assert (=> d!343829 m!1377069))

(declare-fun m!1377921 () Bool)

(assert (=> d!343829 m!1377921))

(assert (=> d!343595 d!343829))

(declare-fun e!771435 () List!12071)

(declare-fun b!1202216 () Bool)

(assert (=> b!1202216 (= e!771435 (drop!605 (t!112457 (++!3086 lt!411008 lt!411005)) (- from!553 1)))))

(declare-fun b!1202217 () Bool)

(declare-fun e!771433 () Int)

(assert (=> b!1202217 (= e!771433 0)))

(declare-fun b!1202218 () Bool)

(declare-fun call!83805 () Int)

(assert (=> b!1202218 (= e!771433 (- call!83805 from!553))))

(declare-fun b!1202220 () Bool)

(declare-fun e!771434 () List!12071)

(assert (=> b!1202220 (= e!771434 Nil!12047)))

(declare-fun b!1202221 () Bool)

(declare-fun e!771437 () Int)

(assert (=> b!1202221 (= e!771437 call!83805)))

(declare-fun b!1202222 () Bool)

(assert (=> b!1202222 (= e!771437 e!771433)))

(declare-fun c!200578 () Bool)

(assert (=> b!1202222 (= c!200578 (>= from!553 call!83805))))

(declare-fun bm!83800 () Bool)

(assert (=> bm!83800 (= call!83805 (size!9579 (++!3086 lt!411008 lt!411005)))))

(declare-fun b!1202223 () Bool)

(assert (=> b!1202223 (= e!771435 (++!3086 lt!411008 lt!411005))))

(declare-fun b!1202224 () Bool)

(declare-fun e!771436 () Bool)

(declare-fun lt!411171 () List!12071)

(assert (=> b!1202224 (= e!771436 (= (size!9579 lt!411171) e!771437))))

(declare-fun c!200581 () Bool)

(assert (=> b!1202224 (= c!200581 (<= from!553 0))))

(declare-fun d!343831 () Bool)

(assert (=> d!343831 e!771436))

(declare-fun res!541703 () Bool)

(assert (=> d!343831 (=> (not res!541703) (not e!771436))))

(assert (=> d!343831 (= res!541703 (= ((_ map implies) (content!1694 lt!411171) (content!1694 (++!3086 lt!411008 lt!411005))) ((as const (InoxSet T!21810)) true)))))

(assert (=> d!343831 (= lt!411171 e!771434)))

(declare-fun c!200579 () Bool)

(assert (=> d!343831 (= c!200579 ((_ is Nil!12047) (++!3086 lt!411008 lt!411005)))))

(assert (=> d!343831 (= (drop!605 (++!3086 lt!411008 lt!411005) from!553) lt!411171)))

(declare-fun b!1202219 () Bool)

(assert (=> b!1202219 (= e!771434 e!771435)))

(declare-fun c!200580 () Bool)

(assert (=> b!1202219 (= c!200580 (<= from!553 0))))

(assert (= (and d!343831 c!200579) b!1202220))

(assert (= (and d!343831 (not c!200579)) b!1202219))

(assert (= (and b!1202219 c!200580) b!1202223))

(assert (= (and b!1202219 (not c!200580)) b!1202216))

(assert (= (and d!343831 res!541703) b!1202224))

(assert (= (and b!1202224 c!200581) b!1202221))

(assert (= (and b!1202224 (not c!200581)) b!1202222))

(assert (= (and b!1202222 c!200578) b!1202217))

(assert (= (and b!1202222 (not c!200578)) b!1202218))

(assert (= (or b!1202221 b!1202222 b!1202218) bm!83800))

(declare-fun m!1377923 () Bool)

(assert (=> b!1202216 m!1377923))

(assert (=> bm!83800 m!1376957))

(declare-fun m!1377925 () Bool)

(assert (=> bm!83800 m!1377925))

(declare-fun m!1377927 () Bool)

(assert (=> b!1202224 m!1377927))

(declare-fun m!1377929 () Bool)

(assert (=> d!343831 m!1377929))

(assert (=> d!343831 m!1376957))

(declare-fun m!1377931 () Bool)

(assert (=> d!343831 m!1377931))

(assert (=> d!343595 d!343831))

(declare-fun d!343833 () Bool)

(declare-fun res!541708 () Bool)

(declare-fun e!771440 () Bool)

(assert (=> d!343833 (=> (not res!541708) (not e!771440))))

(assert (=> d!343833 (= res!541708 (<= (size!9579 (list!4495 (xs!6687 t!4115))) 512))))

(assert (=> d!343833 (= (inv!16142 t!4115) e!771440)))

(declare-fun b!1202229 () Bool)

(declare-fun res!541709 () Bool)

(assert (=> b!1202229 (=> (not res!541709) (not e!771440))))

(assert (=> b!1202229 (= res!541709 (= (csize!8191 t!4115) (size!9579 (list!4495 (xs!6687 t!4115)))))))

(declare-fun b!1202230 () Bool)

(assert (=> b!1202230 (= e!771440 (and (> (csize!8191 t!4115) 0) (<= (csize!8191 t!4115) 512)))))

(assert (= (and d!343833 res!541708) b!1202229))

(assert (= (and b!1202229 res!541709) b!1202230))

(declare-fun m!1377933 () Bool)

(assert (=> d!343833 m!1377933))

(assert (=> d!343833 m!1377933))

(declare-fun m!1377935 () Bool)

(assert (=> d!343833 m!1377935))

(assert (=> b!1202229 m!1377933))

(assert (=> b!1202229 m!1377933))

(assert (=> b!1202229 m!1377935))

(assert (=> b!1201323 d!343833))

(declare-fun d!343835 () Bool)

(assert (=> d!343835 (= (inv!16137 (xs!6687 (left!10518 t!4115))) (<= (size!9579 (innerList!4040 (xs!6687 (left!10518 t!4115)))) 2147483647))))

(declare-fun bs!288318 () Bool)

(assert (= bs!288318 d!343835))

(declare-fun m!1377937 () Bool)

(assert (=> bs!288318 m!1377937))

(assert (=> b!1201669 d!343835))

(declare-fun d!343837 () Bool)

(declare-fun res!541716 () Bool)

(declare-fun e!771443 () Bool)

(assert (=> d!343837 (=> (not res!541716) (not e!771443))))

(assert (=> d!343837 (= res!541716 (= (csize!8190 t!4115) (+ (size!9578 (left!10518 t!4115)) (size!9578 (right!10848 t!4115)))))))

(assert (=> d!343837 (= (inv!16141 t!4115) e!771443)))

(declare-fun b!1202237 () Bool)

(declare-fun res!541717 () Bool)

(assert (=> b!1202237 (=> (not res!541717) (not e!771443))))

(assert (=> b!1202237 (= res!541717 (and (not (= (left!10518 t!4115) Empty!3980)) (not (= (right!10848 t!4115) Empty!3980))))))

(declare-fun b!1202238 () Bool)

(declare-fun res!541718 () Bool)

(assert (=> b!1202238 (=> (not res!541718) (not e!771443))))

(assert (=> b!1202238 (= res!541718 (= (cheight!4191 t!4115) (+ (max!0 (height!574 (left!10518 t!4115)) (height!574 (right!10848 t!4115))) 1)))))

(declare-fun b!1202239 () Bool)

(assert (=> b!1202239 (= e!771443 (<= 0 (cheight!4191 t!4115)))))

(assert (= (and d!343837 res!541716) b!1202237))

(assert (= (and b!1202237 res!541717) b!1202238))

(assert (= (and b!1202238 res!541718) b!1202239))

(assert (=> d!343837 m!1376963))

(declare-fun m!1377939 () Bool)

(assert (=> d!343837 m!1377939))

(assert (=> b!1202238 m!1377103))

(assert (=> b!1202238 m!1377105))

(assert (=> b!1202238 m!1377103))

(assert (=> b!1202238 m!1377105))

(declare-fun m!1377941 () Bool)

(assert (=> b!1202238 m!1377941))

(assert (=> b!1201321 d!343837))

(declare-fun d!343839 () Bool)

(declare-fun res!541724 () Bool)

(declare-fun e!771444 () Bool)

(assert (=> d!343839 (=> res!541724 e!771444)))

(assert (=> d!343839 (= res!541724 (not ((_ is Node!3980) lt!411071)))))

(assert (=> d!343839 (= (isBalanced!1165 lt!411071) e!771444)))

(declare-fun b!1202240 () Bool)

(declare-fun e!771445 () Bool)

(assert (=> b!1202240 (= e!771444 e!771445)))

(declare-fun res!541719 () Bool)

(assert (=> b!1202240 (=> (not res!541719) (not e!771445))))

(assert (=> b!1202240 (= res!541719 (<= (- 1) (- (height!574 (left!10518 lt!411071)) (height!574 (right!10848 lt!411071)))))))

(declare-fun b!1202241 () Bool)

(declare-fun res!541722 () Bool)

(assert (=> b!1202241 (=> (not res!541722) (not e!771445))))

(assert (=> b!1202241 (= res!541722 (<= (- (height!574 (left!10518 lt!411071)) (height!574 (right!10848 lt!411071))) 1))))

(declare-fun b!1202242 () Bool)

(assert (=> b!1202242 (= e!771445 (not (isEmpty!7269 (right!10848 lt!411071))))))

(declare-fun b!1202243 () Bool)

(declare-fun res!541721 () Bool)

(assert (=> b!1202243 (=> (not res!541721) (not e!771445))))

(assert (=> b!1202243 (= res!541721 (not (isEmpty!7269 (left!10518 lt!411071))))))

(declare-fun b!1202244 () Bool)

(declare-fun res!541723 () Bool)

(assert (=> b!1202244 (=> (not res!541723) (not e!771445))))

(assert (=> b!1202244 (= res!541723 (isBalanced!1165 (left!10518 lt!411071)))))

(declare-fun b!1202245 () Bool)

(declare-fun res!541720 () Bool)

(assert (=> b!1202245 (=> (not res!541720) (not e!771445))))

(assert (=> b!1202245 (= res!541720 (isBalanced!1165 (right!10848 lt!411071)))))

(assert (= (and d!343839 (not res!541724)) b!1202240))

(assert (= (and b!1202240 res!541719) b!1202241))

(assert (= (and b!1202241 res!541722) b!1202244))

(assert (= (and b!1202244 res!541723) b!1202245))

(assert (= (and b!1202245 res!541720) b!1202243))

(assert (= (and b!1202243 res!541721) b!1202242))

(declare-fun m!1377943 () Bool)

(assert (=> b!1202244 m!1377943))

(declare-fun m!1377945 () Bool)

(assert (=> b!1202243 m!1377945))

(declare-fun m!1377947 () Bool)

(assert (=> b!1202245 m!1377947))

(declare-fun m!1377949 () Bool)

(assert (=> b!1202240 m!1377949))

(declare-fun m!1377951 () Bool)

(assert (=> b!1202240 m!1377951))

(declare-fun m!1377953 () Bool)

(assert (=> b!1202242 m!1377953))

(assert (=> b!1202241 m!1377949))

(assert (=> b!1202241 m!1377951))

(assert (=> d!343623 d!343839))

(declare-fun e!771446 () Bool)

(declare-fun lt!411172 () List!12071)

(declare-fun b!1202249 () Bool)

(assert (=> b!1202249 (= e!771446 (or (not (= (slice!480 lt!411005 0 (- until!31 call!83629)) Nil!12047)) (= lt!411172 call!83631)))))

(declare-fun d!343841 () Bool)

(assert (=> d!343841 e!771446))

(declare-fun res!541725 () Bool)

(assert (=> d!343841 (=> (not res!541725) (not e!771446))))

(assert (=> d!343841 (= res!541725 (= (content!1694 lt!411172) ((_ map or) (content!1694 call!83631) (content!1694 (slice!480 lt!411005 0 (- until!31 call!83629))))))))

(declare-fun e!771447 () List!12071)

(assert (=> d!343841 (= lt!411172 e!771447)))

(declare-fun c!200582 () Bool)

(assert (=> d!343841 (= c!200582 ((_ is Nil!12047) call!83631))))

(assert (=> d!343841 (= (++!3086 call!83631 (slice!480 lt!411005 0 (- until!31 call!83629))) lt!411172)))

(declare-fun b!1202248 () Bool)

(declare-fun res!541726 () Bool)

(assert (=> b!1202248 (=> (not res!541726) (not e!771446))))

(assert (=> b!1202248 (= res!541726 (= (size!9579 lt!411172) (+ (size!9579 call!83631) (size!9579 (slice!480 lt!411005 0 (- until!31 call!83629))))))))

(declare-fun b!1202246 () Bool)

(assert (=> b!1202246 (= e!771447 (slice!480 lt!411005 0 (- until!31 call!83629)))))

(declare-fun b!1202247 () Bool)

(assert (=> b!1202247 (= e!771447 (Cons!12047 (h!17448 call!83631) (++!3086 (t!112457 call!83631) (slice!480 lt!411005 0 (- until!31 call!83629)))))))

(assert (= (and d!343841 c!200582) b!1202246))

(assert (= (and d!343841 (not c!200582)) b!1202247))

(assert (= (and d!343841 res!541725) b!1202248))

(assert (= (and b!1202248 res!541726) b!1202249))

(declare-fun m!1377955 () Bool)

(assert (=> d!343841 m!1377955))

(declare-fun m!1377957 () Bool)

(assert (=> d!343841 m!1377957))

(assert (=> d!343841 m!1377015))

(declare-fun m!1377959 () Bool)

(assert (=> d!343841 m!1377959))

(declare-fun m!1377961 () Bool)

(assert (=> b!1202248 m!1377961))

(declare-fun m!1377963 () Bool)

(assert (=> b!1202248 m!1377963))

(assert (=> b!1202248 m!1377015))

(declare-fun m!1377965 () Bool)

(assert (=> b!1202248 m!1377965))

(assert (=> b!1202247 m!1377015))

(declare-fun m!1377967 () Bool)

(assert (=> b!1202247 m!1377967))

(assert (=> b!1201400 d!343841))

(declare-fun d!343843 () Bool)

(assert (=> d!343843 (= (slice!480 lt!411005 0 (- until!31 call!83629)) (take!133 (drop!605 lt!411005 0) (- (- until!31 call!83629) 0)))))

(declare-fun bs!288319 () Bool)

(assert (= bs!288319 d!343843))

(assert (=> bs!288319 m!1377263))

(assert (=> bs!288319 m!1377263))

(declare-fun m!1377969 () Bool)

(assert (=> bs!288319 m!1377969))

(assert (=> b!1201400 d!343843))

(declare-fun d!343845 () Bool)

(assert (=> d!343845 (= (BigIntAbs!0 (ite c!200326 (cheight!4191 (right!10848 t!4115)) (csize!8191 (right!10848 t!4115)))) (ite (>= (ite c!200326 (cheight!4191 (right!10848 t!4115)) (csize!8191 (right!10848 t!4115))) 0) (ite c!200326 (cheight!4191 (right!10848 t!4115)) (csize!8191 (right!10848 t!4115))) (- (ite c!200326 (cheight!4191 (right!10848 t!4115)) (csize!8191 (right!10848 t!4115))))))))

(assert (=> bm!83635 d!343845))

(declare-fun b!1202250 () Bool)

(declare-fun e!771451 () Conc!3980)

(assert (=> b!1202250 (= e!771451 Empty!3980)))

(declare-fun b!1202251 () Bool)

(declare-fun e!771457 () Int)

(declare-fun call!83809 () Int)

(assert (=> b!1202251 (= e!771457 (- (ite c!200377 (- lt!411007 call!83666) e!771140) call!83809))))

(declare-fun b!1202252 () Bool)

(declare-fun res!541727 () Bool)

(declare-fun e!771449 () Bool)

(assert (=> b!1202252 (=> (not res!541727) (not e!771449))))

(assert (=> b!1202252 (= res!541727 (<= (ite c!200377 (- lt!411007 call!83666) e!771140) (size!9578 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115)))))))))

(declare-fun b!1202253 () Bool)

(declare-fun e!771448 () List!12071)

(declare-fun e!771455 () List!12071)

(assert (=> b!1202253 (= e!771448 e!771455)))

(declare-fun call!83808 () Int)

(declare-fun c!200586 () Bool)

(assert (=> b!1202253 (= c!200586 (<= (ite c!200377 (- lt!411007 call!83666) e!771140) call!83808))))

(declare-fun bm!83801 () Bool)

(declare-fun c!200584 () Bool)

(declare-fun c!200588 () Bool)

(assert (=> bm!83801 (= c!200584 c!200588)))

(declare-fun call!83807 () Conc!3980)

(declare-fun call!83806 () Conc!3980)

(assert (=> bm!83801 (= call!83807 call!83806)))

(declare-fun b!1202254 () Bool)

(declare-fun call!83811 () List!12071)

(assert (=> b!1202254 (= e!771448 call!83811)))

(declare-fun b!1202255 () Bool)

(declare-fun e!771456 () Conc!3980)

(assert (=> b!1202255 (= e!771451 e!771456)))

(declare-fun c!200587 () Bool)

(assert (=> b!1202255 (= c!200587 ((_ is Leaf!6095) (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115))))))))

(declare-fun call!83810 () List!12071)

(declare-fun lt!411175 () List!12071)

(declare-fun b!1202256 () Bool)

(assert (=> b!1202256 (= e!771455 (++!3086 call!83810 (slice!480 lt!411175 0 (- (ite c!200377 (- lt!411007 call!83666) e!771140) call!83808))))))

(declare-fun d!343847 () Bool)

(declare-fun e!771458 () Bool)

(assert (=> d!343847 e!771458))

(declare-fun res!541729 () Bool)

(assert (=> d!343847 (=> (not res!541729) (not e!771458))))

(declare-fun lt!411173 () Conc!3980)

(assert (=> d!343847 (= res!541729 (isBalanced!1165 lt!411173))))

(assert (=> d!343847 (= lt!411173 e!771451)))

(declare-fun c!200590 () Bool)

(assert (=> d!343847 (= c!200590 (= (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) (ite c!200377 (- lt!411007 call!83666) e!771140)))))

(assert (=> d!343847 e!771449))

(declare-fun res!541728 () Bool)

(assert (=> d!343847 (=> (not res!541728) (not e!771449))))

(assert (=> d!343847 (= res!541728 (and (<= 0 (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0))) (<= (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) (ite c!200377 (- lt!411007 call!83666) e!771140))))))

(assert (=> d!343847 (= (slice!481 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115)))) (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) (ite c!200377 (- lt!411007 call!83666) e!771140)) lt!411173)))

(declare-fun b!1202257 () Bool)

(assert (=> b!1202257 (= e!771449 (isBalanced!1165 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115))))))))

(declare-fun b!1202258 () Bool)

(declare-fun e!771452 () Int)

(assert (=> b!1202258 (= e!771452 call!83808)))

(declare-fun bm!83802 () Bool)

(assert (=> bm!83802 (= call!83809 (size!9578 (left!10518 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115)))))))))

(declare-fun b!1202259 () Bool)

(declare-fun e!771453 () Conc!3980)

(assert (=> b!1202259 (= e!771453 Empty!3980)))

(declare-fun b!1202260 () Bool)

(assert (=> b!1202260 (= e!771455 call!83810)))

(declare-fun bm!83803 () Bool)

(declare-fun c!200585 () Bool)

(assert (=> bm!83803 (= c!200585 c!200586)))

(assert (=> bm!83803 (= call!83810 call!83811)))

(declare-fun b!1202261 () Bool)

(assert (=> b!1202261 (= e!771458 (= (list!4493 lt!411173) (slice!480 (list!4493 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115))))) (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) (ite c!200377 (- lt!411007 call!83666) e!771140))))))

(declare-fun bm!83804 () Bool)

(declare-fun lt!411174 () List!12071)

(declare-fun c!200589 () Bool)

(assert (=> bm!83804 (= call!83811 (slice!480 (ite c!200589 lt!411175 lt!411174) (ite c!200589 (- (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) call!83808) (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0))) (ite c!200589 (- (ite c!200377 (- lt!411007 call!83666) e!771140) call!83808) e!771452)))))

(declare-fun bm!83805 () Bool)

(declare-fun c!200591 () Bool)

(assert (=> bm!83805 (= call!83806 (slice!481 (ite c!200591 (right!10848 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115))))) (ite c!200588 (left!10518 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115))))) (right!10848 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115))))))) (ite c!200591 (- (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) call!83809) (ite c!200588 (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) 0)) (ite c!200591 (- (ite c!200377 (- lt!411007 call!83666) e!771140) call!83809) e!771457)))))

(declare-fun b!1202262 () Bool)

(declare-fun e!771450 () Conc!3980)

(assert (=> b!1202262 (= e!771450 call!83807)))

(declare-fun b!1202263 () Bool)

(assert (=> b!1202263 (= e!771457 (ite c!200377 (- lt!411007 call!83666) e!771140))))

(declare-fun b!1202264 () Bool)

(declare-fun e!771454 () Conc!3980)

(assert (=> b!1202264 (= e!771454 call!83806)))

(declare-fun b!1202265 () Bool)

(assert (=> b!1202265 (= e!771450 (++!3088 (slice!481 (left!10518 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115))))) (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) call!83809) call!83807))))

(declare-fun b!1202266 () Bool)

(declare-fun c!200583 () Bool)

(assert (=> b!1202266 (= c!200583 (= (- (ite c!200377 (- lt!411007 call!83666) e!771140) (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0))) 0))))

(assert (=> b!1202266 (= e!771456 e!771453)))

(declare-fun b!1202267 () Bool)

(assert (=> b!1202267 (= e!771452 (ite c!200377 (- lt!411007 call!83666) e!771140))))

(declare-fun bm!83806 () Bool)

(assert (=> bm!83806 (= call!83808 (size!9579 lt!411174))))

(declare-fun b!1202268 () Bool)

(assert (=> b!1202268 (= e!771453 (Leaf!6095 (slice!483 (xs!6687 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115))))) (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) (ite c!200377 (- lt!411007 call!83666) e!771140)) (- (ite c!200377 (- lt!411007 call!83666) e!771140) (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)))))))

(declare-fun b!1202269 () Bool)

(assert (=> b!1202269 (= c!200591 (<= (size!9578 (left!10518 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115)))))) (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0))))))

(declare-fun lt!411176 () Unit!18464)

(declare-fun lt!411177 () Unit!18464)

(assert (=> b!1202269 (= lt!411176 lt!411177)))

(assert (=> b!1202269 (= (slice!480 (++!3086 lt!411174 lt!411175) (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) (ite c!200377 (- lt!411007 call!83666) e!771140)) e!771448)))

(assert (=> b!1202269 (= c!200589 (<= (size!9579 lt!411174) (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0))))))

(assert (=> b!1202269 (= lt!411177 (sliceLemma!43 lt!411174 lt!411175 (ite c!200377 (- from!553 call!83666) (ite c!200374 from!553 0)) (ite c!200377 (- lt!411007 call!83666) e!771140)))))

(assert (=> b!1202269 (= lt!411175 (list!4493 (right!10848 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115)))))))))

(assert (=> b!1202269 (= lt!411174 (list!4493 (left!10518 (ite c!200377 (right!10848 (left!10518 t!4115)) (ite c!200374 (left!10518 (left!10518 t!4115)) (right!10848 (left!10518 t!4115)))))))))

(assert (=> b!1202269 (= e!771456 e!771454)))

(declare-fun b!1202270 () Bool)

(assert (=> b!1202270 (= e!771454 e!771450)))

(assert (=> b!1202270 (= c!200588 (<= (ite c!200377 (- lt!411007 call!83666) e!771140) call!83809))))

(assert (= (and d!343847 res!541728) b!1202252))

(assert (= (and b!1202252 res!541727) b!1202257))

(assert (= (and d!343847 c!200590) b!1202250))

(assert (= (and d!343847 (not c!200590)) b!1202255))

(assert (= (and b!1202255 c!200587) b!1202266))

(assert (= (and b!1202255 (not c!200587)) b!1202269))

(assert (= (and b!1202266 c!200583) b!1202259))

(assert (= (and b!1202266 (not c!200583)) b!1202268))

(assert (= (and b!1202269 c!200589) b!1202254))

(assert (= (and b!1202269 (not c!200589)) b!1202253))

(assert (= (and b!1202253 c!200586) b!1202260))

(assert (= (and b!1202253 (not c!200586)) b!1202256))

(assert (= (or b!1202260 b!1202256) bm!83803))

(assert (= (and bm!83803 c!200585) b!1202267))

(assert (= (and bm!83803 (not c!200585)) b!1202258))

(assert (= (or b!1202254 b!1202258 b!1202253 b!1202256) bm!83806))

(assert (= (or b!1202254 bm!83803) bm!83804))

(assert (= (and b!1202269 c!200591) b!1202264))

(assert (= (and b!1202269 (not c!200591)) b!1202270))

(assert (= (and b!1202270 c!200588) b!1202262))

(assert (= (and b!1202270 (not c!200588)) b!1202265))

(assert (= (or b!1202262 b!1202265) bm!83801))

(assert (= (and bm!83801 c!200584) b!1202263))

(assert (= (and bm!83801 (not c!200584)) b!1202251))

(assert (= (or b!1202264 b!1202251 b!1202265 b!1202270) bm!83802))

(assert (= (or b!1202264 bm!83801) bm!83805))

(assert (= (and d!343847 res!541729) b!1202261))

(declare-fun m!1377971 () Bool)

(assert (=> d!343847 m!1377971))

(declare-fun m!1377973 () Bool)

(assert (=> bm!83802 m!1377973))

(declare-fun m!1377975 () Bool)

(assert (=> b!1202268 m!1377975))

(declare-fun m!1377977 () Bool)

(assert (=> bm!83805 m!1377977))

(declare-fun m!1377979 () Bool)

(assert (=> b!1202269 m!1377979))

(assert (=> b!1202269 m!1377973))

(declare-fun m!1377981 () Bool)

(assert (=> b!1202269 m!1377981))

(declare-fun m!1377983 () Bool)

(assert (=> b!1202269 m!1377983))

(declare-fun m!1377985 () Bool)

(assert (=> b!1202269 m!1377985))

(declare-fun m!1377987 () Bool)

(assert (=> b!1202269 m!1377987))

(assert (=> b!1202269 m!1377981))

(declare-fun m!1377989 () Bool)

(assert (=> b!1202269 m!1377989))

(declare-fun m!1377991 () Bool)

(assert (=> b!1202257 m!1377991))

(declare-fun m!1377993 () Bool)

(assert (=> b!1202256 m!1377993))

(assert (=> b!1202256 m!1377993))

(declare-fun m!1377995 () Bool)

(assert (=> b!1202256 m!1377995))

(assert (=> bm!83806 m!1377985))

(declare-fun m!1377997 () Bool)

(assert (=> b!1202252 m!1377997))

(declare-fun m!1377999 () Bool)

(assert (=> bm!83804 m!1377999))

(declare-fun m!1378001 () Bool)

(assert (=> b!1202261 m!1378001))

(declare-fun m!1378003 () Bool)

(assert (=> b!1202261 m!1378003))

(assert (=> b!1202261 m!1378003))

(declare-fun m!1378005 () Bool)

(assert (=> b!1202261 m!1378005))

(declare-fun m!1378007 () Bool)

(assert (=> b!1202265 m!1378007))

(assert (=> b!1202265 m!1378007))

(declare-fun m!1378009 () Bool)

(assert (=> b!1202265 m!1378009))

(assert (=> bm!83662 d!343847))

(declare-fun b!1202271 () Bool)

(declare-fun e!771459 () List!12071)

(assert (=> b!1202271 (= e!771459 Nil!12047)))

(declare-fun b!1202272 () Bool)

(declare-fun e!771460 () List!12071)

(assert (=> b!1202272 (= e!771459 e!771460)))

(declare-fun c!200593 () Bool)

(assert (=> b!1202272 (= c!200593 ((_ is Leaf!6095) lt!411071))))

(declare-fun b!1202274 () Bool)

(assert (=> b!1202274 (= e!771460 (++!3086 (list!4493 (left!10518 lt!411071)) (list!4493 (right!10848 lt!411071))))))

(declare-fun d!343849 () Bool)

(declare-fun c!200592 () Bool)

(assert (=> d!343849 (= c!200592 ((_ is Empty!3980) lt!411071))))

(assert (=> d!343849 (= (list!4493 lt!411071) e!771459)))

(declare-fun b!1202273 () Bool)

(assert (=> b!1202273 (= e!771460 (list!4495 (xs!6687 lt!411071)))))

(assert (= (and d!343849 c!200592) b!1202271))

(assert (= (and d!343849 (not c!200592)) b!1202272))

(assert (= (and b!1202272 c!200593) b!1202273))

(assert (= (and b!1202272 (not c!200593)) b!1202274))

(declare-fun m!1378011 () Bool)

(assert (=> b!1202274 m!1378011))

(declare-fun m!1378013 () Bool)

(assert (=> b!1202274 m!1378013))

(assert (=> b!1202274 m!1378011))

(assert (=> b!1202274 m!1378013))

(declare-fun m!1378015 () Bool)

(assert (=> b!1202274 m!1378015))

(declare-fun m!1378017 () Bool)

(assert (=> b!1202273 m!1378017))

(assert (=> b!1201646 d!343849))

(declare-fun d!343851 () Bool)

(assert (=> d!343851 (= (slice!480 (list!4493 (left!10518 t!4115)) from!553 lt!411007) (take!133 (drop!605 (list!4493 (left!10518 t!4115)) from!553) (- lt!411007 from!553)))))

(declare-fun bs!288320 () Bool)

(assert (= bs!288320 d!343851))

(assert (=> bs!288320 m!1376953))

(declare-fun m!1378019 () Bool)

(assert (=> bs!288320 m!1378019))

(assert (=> bs!288320 m!1378019))

(declare-fun m!1378021 () Bool)

(assert (=> bs!288320 m!1378021))

(assert (=> b!1201646 d!343851))

(assert (=> b!1201646 d!343591))

(declare-fun d!343853 () Bool)

(assert (=> d!343853 (= (inv!16137 (xs!6687 (right!10848 t!4115))) (<= (size!9579 (innerList!4040 (xs!6687 (right!10848 t!4115)))) 2147483647))))

(declare-fun bs!288321 () Bool)

(assert (= bs!288321 d!343853))

(declare-fun m!1378023 () Bool)

(assert (=> bs!288321 m!1378023))

(assert (=> b!1201672 d!343853))

(declare-fun d!343855 () Bool)

(assert (=> d!343855 (= (list!4495 (xs!6687 (right!10848 t!4115))) (innerList!4040 (xs!6687 (right!10848 t!4115))))))

(assert (=> b!1201446 d!343855))

(declare-fun d!343857 () Bool)

(declare-fun lt!411180 () Int)

(assert (=> d!343857 (>= lt!411180 0)))

(declare-fun ListPrimitiveSize!82 (List!12071) Int)

(assert (=> d!343857 (= lt!411180 (+ 1 (ListPrimitiveSize!82 (innerList!4040 (xs!6687 (right!10848 t!4115))))))))

(assert (=> d!343857 (= (IArrayPrimitiveSize!10 (xs!6687 (right!10848 t!4115))) lt!411180)))

(declare-fun bs!288322 () Bool)

(assert (= bs!288322 d!343857))

(declare-fun m!1378025 () Bool)

(assert (=> bs!288322 m!1378025))

(assert (=> b!1201501 d!343857))

(declare-fun d!343859 () Bool)

(declare-fun lt!411181 () Int)

(assert (=> d!343859 (= lt!411181 (size!9579 (list!4493 (left!10518 (left!10518 t!4115)))))))

(assert (=> d!343859 (= lt!411181 (ite ((_ is Empty!3980) (left!10518 (left!10518 t!4115))) 0 (ite ((_ is Leaf!6095) (left!10518 (left!10518 t!4115))) (csize!8191 (left!10518 (left!10518 t!4115))) (csize!8190 (left!10518 (left!10518 t!4115))))))))

(assert (=> d!343859 (= (size!9578 (left!10518 (left!10518 t!4115))) lt!411181)))

(declare-fun bs!288323 () Bool)

(assert (= bs!288323 d!343859))

(assert (=> bs!288323 m!1377055))

(assert (=> bs!288323 m!1377055))

(assert (=> bs!288323 m!1377475))

(assert (=> bm!83659 d!343859))

(declare-fun lt!411182 () List!12071)

(declare-fun b!1202278 () Bool)

(declare-fun e!771461 () Bool)

(assert (=> b!1202278 (= e!771461 (or (not (= (slice!480 lt!411005 0 (- until!31 lt!411010)) Nil!12047)) (= lt!411182 (t!112457 call!83606))))))

(declare-fun d!343861 () Bool)

(assert (=> d!343861 e!771461))

(declare-fun res!541730 () Bool)

(assert (=> d!343861 (=> (not res!541730) (not e!771461))))

(assert (=> d!343861 (= res!541730 (= (content!1694 lt!411182) ((_ map or) (content!1694 (t!112457 call!83606)) (content!1694 (slice!480 lt!411005 0 (- until!31 lt!411010))))))))

(declare-fun e!771462 () List!12071)

(assert (=> d!343861 (= lt!411182 e!771462)))

(declare-fun c!200594 () Bool)

(assert (=> d!343861 (= c!200594 ((_ is Nil!12047) (t!112457 call!83606)))))

(assert (=> d!343861 (= (++!3086 (t!112457 call!83606) (slice!480 lt!411005 0 (- until!31 lt!411010))) lt!411182)))

(declare-fun b!1202277 () Bool)

(declare-fun res!541731 () Bool)

(assert (=> b!1202277 (=> (not res!541731) (not e!771461))))

(assert (=> b!1202277 (= res!541731 (= (size!9579 lt!411182) (+ (size!9579 (t!112457 call!83606)) (size!9579 (slice!480 lt!411005 0 (- until!31 lt!411010))))))))

(declare-fun b!1202275 () Bool)

(assert (=> b!1202275 (= e!771462 (slice!480 lt!411005 0 (- until!31 lt!411010)))))

(declare-fun b!1202276 () Bool)

(assert (=> b!1202276 (= e!771462 (Cons!12047 (h!17448 (t!112457 call!83606)) (++!3086 (t!112457 (t!112457 call!83606)) (slice!480 lt!411005 0 (- until!31 lt!411010)))))))

(assert (= (and d!343861 c!200594) b!1202275))

(assert (= (and d!343861 (not c!200594)) b!1202276))

(assert (= (and d!343861 res!541730) b!1202277))

(assert (= (and b!1202277 res!541731) b!1202278))

(declare-fun m!1378027 () Bool)

(assert (=> d!343861 m!1378027))

(assert (=> d!343861 m!1377557))

(assert (=> d!343861 m!1376941))

(assert (=> d!343861 m!1377253))

(declare-fun m!1378029 () Bool)

(assert (=> b!1202277 m!1378029))

(declare-fun m!1378031 () Bool)

(assert (=> b!1202277 m!1378031))

(assert (=> b!1202277 m!1376941))

(assert (=> b!1202277 m!1377259))

(assert (=> b!1202276 m!1376941))

(declare-fun m!1378033 () Bool)

(assert (=> b!1202276 m!1378033))

(assert (=> b!1201657 d!343861))

(declare-fun d!343863 () Bool)

(declare-fun res!541737 () Bool)

(declare-fun e!771463 () Bool)

(assert (=> d!343863 (=> res!541737 e!771463)))

(assert (=> d!343863 (= res!541737 (not ((_ is Node!3980) (right!10848 t!4115))))))

(assert (=> d!343863 (= (isBalanced!1165 (right!10848 t!4115)) e!771463)))

(declare-fun b!1202279 () Bool)

(declare-fun e!771464 () Bool)

(assert (=> b!1202279 (= e!771463 e!771464)))

(declare-fun res!541732 () Bool)

(assert (=> b!1202279 (=> (not res!541732) (not e!771464))))

(assert (=> b!1202279 (= res!541732 (<= (- 1) (- (height!574 (left!10518 (right!10848 t!4115))) (height!574 (right!10848 (right!10848 t!4115))))))))

(declare-fun b!1202280 () Bool)

(declare-fun res!541735 () Bool)

(assert (=> b!1202280 (=> (not res!541735) (not e!771464))))

(assert (=> b!1202280 (= res!541735 (<= (- (height!574 (left!10518 (right!10848 t!4115))) (height!574 (right!10848 (right!10848 t!4115)))) 1))))

(declare-fun b!1202281 () Bool)

(assert (=> b!1202281 (= e!771464 (not (isEmpty!7269 (right!10848 (right!10848 t!4115)))))))

(declare-fun b!1202282 () Bool)

(declare-fun res!541734 () Bool)

(assert (=> b!1202282 (=> (not res!541734) (not e!771464))))

(assert (=> b!1202282 (= res!541734 (not (isEmpty!7269 (left!10518 (right!10848 t!4115)))))))

(declare-fun b!1202283 () Bool)

(declare-fun res!541736 () Bool)

(assert (=> b!1202283 (=> (not res!541736) (not e!771464))))

(assert (=> b!1202283 (= res!541736 (isBalanced!1165 (left!10518 (right!10848 t!4115))))))

(declare-fun b!1202284 () Bool)

(declare-fun res!541733 () Bool)

(assert (=> b!1202284 (=> (not res!541733) (not e!771464))))

(assert (=> b!1202284 (= res!541733 (isBalanced!1165 (right!10848 (right!10848 t!4115))))))

(assert (= (and d!343863 (not res!541737)) b!1202279))

(assert (= (and b!1202279 res!541732) b!1202280))

(assert (= (and b!1202280 res!541735) b!1202283))

(assert (= (and b!1202283 res!541736) b!1202284))

(assert (= (and b!1202284 res!541733) b!1202282))

(assert (= (and b!1202282 res!541734) b!1202281))

(declare-fun m!1378035 () Bool)

(assert (=> b!1202283 m!1378035))

(declare-fun m!1378037 () Bool)

(assert (=> b!1202282 m!1378037))

(declare-fun m!1378039 () Bool)

(assert (=> b!1202284 m!1378039))

(declare-fun m!1378041 () Bool)

(assert (=> b!1202279 m!1378041))

(declare-fun m!1378043 () Bool)

(assert (=> b!1202279 m!1378043))

(declare-fun m!1378045 () Bool)

(assert (=> b!1202281 m!1378045))

(assert (=> b!1202280 m!1378041))

(assert (=> b!1202280 m!1378043))

(assert (=> b!1201477 d!343863))

(declare-fun d!343865 () Bool)

(declare-fun lt!411185 () Bool)

(declare-fun isEmpty!7271 (List!12071) Bool)

(assert (=> d!343865 (= lt!411185 (isEmpty!7271 (list!4493 (left!10518 t!4115))))))

(assert (=> d!343865 (= lt!411185 (= (size!9578 (left!10518 t!4115)) 0))))

(assert (=> d!343865 (= (isEmpty!7269 (left!10518 t!4115)) lt!411185)))

(declare-fun bs!288324 () Bool)

(assert (= bs!288324 d!343865))

(assert (=> bs!288324 m!1376953))

(assert (=> bs!288324 m!1376953))

(declare-fun m!1378047 () Bool)

(assert (=> bs!288324 m!1378047))

(assert (=> bs!288324 m!1376963))

(assert (=> b!1201475 d!343865))

(declare-fun b!1202285 () Bool)

(declare-fun e!771466 () Int)

(declare-fun call!83812 () Int)

(assert (=> b!1202285 (= e!771466 (+ 1 (IArrayPrimitiveSize!10 (xs!6687 (left!10518 t!4115))) call!83812))))

(declare-fun b!1202286 () Bool)

(assert (=> b!1202286 (= e!771466 0)))

(declare-fun bm!83807 () Bool)

(declare-fun c!200595 () Bool)

(assert (=> bm!83807 (= call!83812 (BigIntAbs!0 (ite c!200595 (cheight!4191 (left!10518 t!4115)) (csize!8191 (left!10518 t!4115)))))))

(declare-fun b!1202287 () Bool)

(declare-fun e!771465 () Int)

(assert (=> b!1202287 (= e!771465 (+ 1 (ConcPrimitiveSize!10 (left!10518 (left!10518 t!4115))) (ConcPrimitiveSize!10 (right!10848 (left!10518 t!4115))) (BigIntAbs!0 (csize!8190 (left!10518 t!4115))) call!83812))))

(declare-fun d!343867 () Bool)

(declare-fun lt!411186 () Int)

(assert (=> d!343867 (>= lt!411186 0)))

(assert (=> d!343867 (= lt!411186 e!771465)))

(assert (=> d!343867 (= c!200595 ((_ is Node!3980) (left!10518 t!4115)))))

(assert (=> d!343867 (= (ConcPrimitiveSize!10 (left!10518 t!4115)) lt!411186)))

(declare-fun b!1202288 () Bool)

(assert (=> b!1202288 (= e!771465 e!771466)))

(declare-fun c!200596 () Bool)

(assert (=> b!1202288 (= c!200596 ((_ is Leaf!6095) (left!10518 t!4115)))))

(assert (= (and d!343867 c!200595) b!1202287))

(assert (= (and d!343867 (not c!200595)) b!1202288))

(assert (= (and b!1202288 c!200596) b!1202285))

(assert (= (and b!1202288 (not c!200596)) b!1202286))

(assert (= (or b!1202287 b!1202285) bm!83807))

(declare-fun m!1378049 () Bool)

(assert (=> b!1202285 m!1378049))

(declare-fun m!1378051 () Bool)

(assert (=> bm!83807 m!1378051))

(declare-fun m!1378053 () Bool)

(assert (=> b!1202287 m!1378053))

(declare-fun m!1378055 () Bool)

(assert (=> b!1202287 m!1378055))

(declare-fun m!1378057 () Bool)

(assert (=> b!1202287 m!1378057))

(assert (=> b!1201519 d!343867))

(assert (=> b!1201519 d!343611))

(declare-fun d!343869 () Bool)

(assert (=> d!343869 (= (BigIntAbs!0 (csize!8190 t!4115)) (ite (>= (csize!8190 t!4115) 0) (csize!8190 t!4115) (- (csize!8190 t!4115))))))

(assert (=> b!1201519 d!343869))

(declare-fun d!343871 () Bool)

(declare-fun res!541743 () Bool)

(declare-fun e!771467 () Bool)

(assert (=> d!343871 (=> res!541743 e!771467)))

(assert (=> d!343871 (= res!541743 (not ((_ is Node!3980) (left!10518 t!4115))))))

(assert (=> d!343871 (= (isBalanced!1165 (left!10518 t!4115)) e!771467)))

(declare-fun b!1202289 () Bool)

(declare-fun e!771468 () Bool)

(assert (=> b!1202289 (= e!771467 e!771468)))

(declare-fun res!541738 () Bool)

(assert (=> b!1202289 (=> (not res!541738) (not e!771468))))

(assert (=> b!1202289 (= res!541738 (<= (- 1) (- (height!574 (left!10518 (left!10518 t!4115))) (height!574 (right!10848 (left!10518 t!4115))))))))

(declare-fun b!1202290 () Bool)

(declare-fun res!541741 () Bool)

(assert (=> b!1202290 (=> (not res!541741) (not e!771468))))

(assert (=> b!1202290 (= res!541741 (<= (- (height!574 (left!10518 (left!10518 t!4115))) (height!574 (right!10848 (left!10518 t!4115)))) 1))))

(declare-fun b!1202291 () Bool)

(assert (=> b!1202291 (= e!771468 (not (isEmpty!7269 (right!10848 (left!10518 t!4115)))))))

(declare-fun b!1202292 () Bool)

(declare-fun res!541740 () Bool)

(assert (=> b!1202292 (=> (not res!541740) (not e!771468))))

(assert (=> b!1202292 (= res!541740 (not (isEmpty!7269 (left!10518 (left!10518 t!4115)))))))

(declare-fun b!1202293 () Bool)

(declare-fun res!541742 () Bool)

(assert (=> b!1202293 (=> (not res!541742) (not e!771468))))

(assert (=> b!1202293 (= res!541742 (isBalanced!1165 (left!10518 (left!10518 t!4115))))))

(declare-fun b!1202294 () Bool)

(declare-fun res!541739 () Bool)

(assert (=> b!1202294 (=> (not res!541739) (not e!771468))))

(assert (=> b!1202294 (= res!541739 (isBalanced!1165 (right!10848 (left!10518 t!4115))))))

(assert (= (and d!343871 (not res!541743)) b!1202289))

(assert (= (and b!1202289 res!541738) b!1202290))

(assert (= (and b!1202290 res!541741) b!1202293))

(assert (= (and b!1202293 res!541742) b!1202294))

(assert (= (and b!1202294 res!541739) b!1202292))

(assert (= (and b!1202292 res!541740) b!1202291))

(assert (=> b!1202293 m!1377867))

(declare-fun m!1378059 () Bool)

(assert (=> b!1202292 m!1378059))

(declare-fun m!1378061 () Bool)

(assert (=> b!1202294 m!1378061))

(declare-fun m!1378063 () Bool)

(assert (=> b!1202289 m!1378063))

(declare-fun m!1378065 () Bool)

(assert (=> b!1202289 m!1378065))

(declare-fun m!1378067 () Bool)

(assert (=> b!1202291 m!1378067))

(assert (=> b!1202290 m!1378063))

(assert (=> b!1202290 m!1378065))

(assert (=> b!1201642 d!343871))

(declare-fun lt!411187 () List!12071)

(declare-fun e!771469 () Bool)

(declare-fun b!1202298 () Bool)

(assert (=> b!1202298 (= e!771469 (or (not (= (slice!480 lt!411073 0 (- lt!411007 call!83665)) Nil!12047)) (= lt!411187 call!83667)))))

(declare-fun d!343873 () Bool)

(assert (=> d!343873 e!771469))

(declare-fun res!541744 () Bool)

(assert (=> d!343873 (=> (not res!541744) (not e!771469))))

(assert (=> d!343873 (= res!541744 (= (content!1694 lt!411187) ((_ map or) (content!1694 call!83667) (content!1694 (slice!480 lt!411073 0 (- lt!411007 call!83665))))))))

(declare-fun e!771470 () List!12071)

(assert (=> d!343873 (= lt!411187 e!771470)))

(declare-fun c!200597 () Bool)

(assert (=> d!343873 (= c!200597 ((_ is Nil!12047) call!83667))))

(assert (=> d!343873 (= (++!3086 call!83667 (slice!480 lt!411073 0 (- lt!411007 call!83665))) lt!411187)))

(declare-fun b!1202297 () Bool)

(declare-fun res!541745 () Bool)

(assert (=> b!1202297 (=> (not res!541745) (not e!771469))))

(assert (=> b!1202297 (= res!541745 (= (size!9579 lt!411187) (+ (size!9579 call!83667) (size!9579 (slice!480 lt!411073 0 (- lt!411007 call!83665))))))))

(declare-fun b!1202295 () Bool)

(assert (=> b!1202295 (= e!771470 (slice!480 lt!411073 0 (- lt!411007 call!83665)))))

(declare-fun b!1202296 () Bool)

(assert (=> b!1202296 (= e!771470 (Cons!12047 (h!17448 call!83667) (++!3086 (t!112457 call!83667) (slice!480 lt!411073 0 (- lt!411007 call!83665)))))))

(assert (= (and d!343873 c!200597) b!1202295))

(assert (= (and d!343873 (not c!200597)) b!1202296))

(assert (= (and d!343873 res!541744) b!1202297))

(assert (= (and b!1202297 res!541745) b!1202298))

(declare-fun m!1378069 () Bool)

(assert (=> d!343873 m!1378069))

(declare-fun m!1378071 () Bool)

(assert (=> d!343873 m!1378071))

(assert (=> d!343873 m!1377233))

(declare-fun m!1378073 () Bool)

(assert (=> d!343873 m!1378073))

(declare-fun m!1378075 () Bool)

(assert (=> b!1202297 m!1378075))

(declare-fun m!1378077 () Bool)

(assert (=> b!1202297 m!1378077))

(assert (=> b!1202297 m!1377233))

(declare-fun m!1378079 () Bool)

(assert (=> b!1202297 m!1378079))

(assert (=> b!1202296 m!1377233))

(declare-fun m!1378081 () Bool)

(assert (=> b!1202296 m!1378081))

(assert (=> b!1201641 d!343873))

(declare-fun d!343875 () Bool)

(assert (=> d!343875 (= (slice!480 lt!411073 0 (- lt!411007 call!83665)) (take!133 (drop!605 lt!411073 0) (- (- lt!411007 call!83665) 0)))))

(declare-fun bs!288325 () Bool)

(assert (= bs!288325 d!343875))

(declare-fun m!1378083 () Bool)

(assert (=> bs!288325 m!1378083))

(assert (=> bs!288325 m!1378083))

(declare-fun m!1378085 () Bool)

(assert (=> bs!288325 m!1378085))

(assert (=> b!1201641 d!343875))

(declare-fun d!343877 () Bool)

(assert (=> d!343877 (= (BigIntAbs!0 (ite c!200328 (cheight!4191 t!4115) (csize!8191 t!4115))) (ite (>= (ite c!200328 (cheight!4191 t!4115) (csize!8191 t!4115)) 0) (ite c!200328 (cheight!4191 t!4115) (csize!8191 t!4115)) (- (ite c!200328 (cheight!4191 t!4115) (csize!8191 t!4115)))))))

(assert (=> bm!83636 d!343877))

(assert (=> b!1201472 d!343695))

(assert (=> b!1201472 d!343701))

(declare-fun e!771473 () List!12071)

(declare-fun d!343879 () Bool)

(assert (=> d!343879 (= (slice!480 (++!3086 lt!411072 lt!411073) from!553 lt!411007) e!771473)))

(declare-fun c!200598 () Bool)

(assert (=> d!343879 (= c!200598 (<= (size!9579 lt!411072) from!553))))

(declare-fun lt!411188 () Unit!18464)

(assert (=> d!343879 (= lt!411188 (choose!7736 lt!411072 lt!411073 from!553 lt!411007))))

(declare-fun e!771471 () Bool)

(assert (=> d!343879 e!771471))

(declare-fun res!541746 () Bool)

(assert (=> d!343879 (=> (not res!541746) (not e!771471))))

(assert (=> d!343879 (= res!541746 (and (<= 0 from!553) (<= from!553 lt!411007)))))

(assert (=> d!343879 (= (sliceLemma!43 lt!411072 lt!411073 from!553 lt!411007) lt!411188)))

(declare-fun b!1202299 () Bool)

(declare-fun e!771474 () Int)

(assert (=> b!1202299 (= e!771474 lt!411007)))

(declare-fun b!1202300 () Bool)

(declare-fun call!83813 () Int)

(assert (=> b!1202300 (= e!771474 call!83813)))

(declare-fun call!83815 () List!12071)

(declare-fun e!771472 () List!12071)

(declare-fun b!1202301 () Bool)

(assert (=> b!1202301 (= e!771472 (++!3086 call!83815 (slice!480 lt!411073 0 (- lt!411007 call!83813))))))

(declare-fun bm!83808 () Bool)

(declare-fun c!200599 () Bool)

(declare-fun c!200600 () Bool)

(assert (=> bm!83808 (= c!200599 c!200600)))

(declare-fun call!83814 () List!12071)

(assert (=> bm!83808 (= call!83815 call!83814)))

(declare-fun b!1202302 () Bool)

(assert (=> b!1202302 (= e!771471 (<= lt!411007 (+ (size!9579 lt!411072) (size!9579 lt!411073))))))

(declare-fun b!1202303 () Bool)

(assert (=> b!1202303 (= e!771473 e!771472)))

(assert (=> b!1202303 (= c!200600 (<= lt!411007 call!83813))))

(declare-fun bm!83809 () Bool)

(assert (=> bm!83809 (= call!83814 (slice!480 (ite c!200598 lt!411073 lt!411072) (ite c!200598 (- from!553 call!83813) from!553) (ite c!200598 (- lt!411007 call!83813) e!771474)))))

(declare-fun b!1202304 () Bool)

(assert (=> b!1202304 (= e!771473 call!83814)))

(declare-fun bm!83810 () Bool)

(assert (=> bm!83810 (= call!83813 (size!9579 lt!411072))))

(declare-fun b!1202305 () Bool)

(assert (=> b!1202305 (= e!771472 call!83815)))

(assert (= (and d!343879 res!541746) b!1202302))

(assert (= (and d!343879 c!200598) b!1202304))

(assert (= (and d!343879 (not c!200598)) b!1202303))

(assert (= (and b!1202303 c!200600) b!1202305))

(assert (= (and b!1202303 (not c!200600)) b!1202301))

(assert (= (or b!1202305 b!1202301) bm!83808))

(assert (= (and bm!83808 c!200599) b!1202299))

(assert (= (and bm!83808 (not c!200599)) b!1202300))

(assert (= (or b!1202304 b!1202300 b!1202301 b!1202303) bm!83810))

(assert (= (or b!1202304 bm!83808) bm!83809))

(declare-fun m!1378087 () Bool)

(assert (=> b!1202301 m!1378087))

(assert (=> b!1202301 m!1378087))

(declare-fun m!1378089 () Bool)

(assert (=> b!1202301 m!1378089))

(assert (=> b!1202302 m!1377229))

(declare-fun m!1378091 () Bool)

(assert (=> b!1202302 m!1378091))

(assert (=> bm!83810 m!1377229))

(declare-fun m!1378093 () Bool)

(assert (=> bm!83809 m!1378093))

(assert (=> d!343879 m!1377225))

(assert (=> d!343879 m!1377225))

(assert (=> d!343879 m!1377227))

(assert (=> d!343879 m!1377229))

(declare-fun m!1378095 () Bool)

(assert (=> d!343879 m!1378095))

(assert (=> b!1201654 d!343879))

(assert (=> b!1201654 d!343725))

(declare-fun d!343881 () Bool)

(declare-fun lt!411189 () Int)

(assert (=> d!343881 (>= lt!411189 0)))

(declare-fun e!771475 () Int)

(assert (=> d!343881 (= lt!411189 e!771475)))

(declare-fun c!200601 () Bool)

(assert (=> d!343881 (= c!200601 ((_ is Nil!12047) lt!411072))))

(assert (=> d!343881 (= (size!9579 lt!411072) lt!411189)))

(declare-fun b!1202306 () Bool)

(assert (=> b!1202306 (= e!771475 0)))

(declare-fun b!1202307 () Bool)

(assert (=> b!1202307 (= e!771475 (+ 1 (size!9579 (t!112457 lt!411072))))))

(assert (= (and d!343881 c!200601) b!1202306))

(assert (= (and d!343881 (not c!200601)) b!1202307))

(declare-fun m!1378097 () Bool)

(assert (=> b!1202307 m!1378097))

(assert (=> b!1201654 d!343881))

(assert (=> b!1201654 d!343859))

(declare-fun b!1202311 () Bool)

(declare-fun e!771476 () Bool)

(declare-fun lt!411190 () List!12071)

(assert (=> b!1202311 (= e!771476 (or (not (= lt!411073 Nil!12047)) (= lt!411190 lt!411072)))))

(declare-fun d!343883 () Bool)

(assert (=> d!343883 e!771476))

(declare-fun res!541747 () Bool)

(assert (=> d!343883 (=> (not res!541747) (not e!771476))))

(assert (=> d!343883 (= res!541747 (= (content!1694 lt!411190) ((_ map or) (content!1694 lt!411072) (content!1694 lt!411073))))))

(declare-fun e!771477 () List!12071)

(assert (=> d!343883 (= lt!411190 e!771477)))

(declare-fun c!200602 () Bool)

(assert (=> d!343883 (= c!200602 ((_ is Nil!12047) lt!411072))))

(assert (=> d!343883 (= (++!3086 lt!411072 lt!411073) lt!411190)))

(declare-fun b!1202310 () Bool)

(declare-fun res!541748 () Bool)

(assert (=> b!1202310 (=> (not res!541748) (not e!771476))))

(assert (=> b!1202310 (= res!541748 (= (size!9579 lt!411190) (+ (size!9579 lt!411072) (size!9579 lt!411073))))))

(declare-fun b!1202308 () Bool)

(assert (=> b!1202308 (= e!771477 lt!411073)))

(declare-fun b!1202309 () Bool)

(assert (=> b!1202309 (= e!771477 (Cons!12047 (h!17448 lt!411072) (++!3086 (t!112457 lt!411072) lt!411073)))))

(assert (= (and d!343883 c!200602) b!1202308))

(assert (= (and d!343883 (not c!200602)) b!1202309))

(assert (= (and d!343883 res!541747) b!1202310))

(assert (= (and b!1202310 res!541748) b!1202311))

(declare-fun m!1378099 () Bool)

(assert (=> d!343883 m!1378099))

(declare-fun m!1378101 () Bool)

(assert (=> d!343883 m!1378101))

(declare-fun m!1378103 () Bool)

(assert (=> d!343883 m!1378103))

(declare-fun m!1378105 () Bool)

(assert (=> b!1202310 m!1378105))

(assert (=> b!1202310 m!1377229))

(assert (=> b!1202310 m!1378091))

(declare-fun m!1378107 () Bool)

(assert (=> b!1202309 m!1378107))

(assert (=> b!1201654 d!343883))

(declare-fun d!343885 () Bool)

(assert (=> d!343885 (= (slice!480 (++!3086 lt!411072 lt!411073) from!553 lt!411007) (take!133 (drop!605 (++!3086 lt!411072 lt!411073) from!553) (- lt!411007 from!553)))))

(declare-fun bs!288326 () Bool)

(assert (= bs!288326 d!343885))

(assert (=> bs!288326 m!1377225))

(declare-fun m!1378109 () Bool)

(assert (=> bs!288326 m!1378109))

(assert (=> bs!288326 m!1378109))

(declare-fun m!1378111 () Bool)

(assert (=> bs!288326 m!1378111))

(assert (=> b!1201654 d!343885))

(assert (=> b!1201654 d!343729))

(declare-fun d!343887 () Bool)

(declare-fun res!541749 () Bool)

(declare-fun e!771478 () Bool)

(assert (=> d!343887 (=> (not res!541749) (not e!771478))))

(assert (=> d!343887 (= res!541749 (<= (size!9579 (list!4495 (xs!6687 (right!10848 t!4115)))) 512))))

(assert (=> d!343887 (= (inv!16142 (right!10848 t!4115)) e!771478)))

(declare-fun b!1202312 () Bool)

(declare-fun res!541750 () Bool)

(assert (=> b!1202312 (=> (not res!541750) (not e!771478))))

(assert (=> b!1202312 (= res!541750 (= (csize!8191 (right!10848 t!4115)) (size!9579 (list!4495 (xs!6687 (right!10848 t!4115))))))))

(declare-fun b!1202313 () Bool)

(assert (=> b!1202313 (= e!771478 (and (> (csize!8191 (right!10848 t!4115)) 0) (<= (csize!8191 (right!10848 t!4115)) 512)))))

(assert (= (and d!343887 res!541749) b!1202312))

(assert (= (and b!1202312 res!541750) b!1202313))

(assert (=> d!343887 m!1377079))

(assert (=> d!343887 m!1377079))

(declare-fun m!1378113 () Bool)

(assert (=> d!343887 m!1378113))

(assert (=> b!1202312 m!1377079))

(assert (=> b!1202312 m!1377079))

(assert (=> b!1202312 m!1378113))

(assert (=> b!1201329 d!343887))

(declare-fun d!343889 () Bool)

(declare-fun lt!411191 () Int)

(assert (=> d!343889 (>= lt!411191 0)))

(assert (=> d!343889 (= lt!411191 (+ 1 (ListPrimitiveSize!82 (innerList!4040 (xs!6687 t!4115)))))))

(assert (=> d!343889 (= (IArrayPrimitiveSize!10 (xs!6687 t!4115)) lt!411191)))

(declare-fun bs!288327 () Bool)

(assert (= bs!288327 d!343889))

(declare-fun m!1378115 () Bool)

(assert (=> bs!288327 m!1378115))

(assert (=> b!1201517 d!343889))

(declare-fun d!343891 () Bool)

(declare-fun lt!411192 () Int)

(assert (=> d!343891 (>= lt!411192 0)))

(declare-fun e!771479 () Int)

(assert (=> d!343891 (= lt!411192 e!771479)))

(declare-fun c!200603 () Bool)

(assert (=> d!343891 (= c!200603 ((_ is Nil!12047) (list!4493 t!4115)))))

(assert (=> d!343891 (= (size!9579 (list!4493 t!4115)) lt!411192)))

(declare-fun b!1202314 () Bool)

(assert (=> b!1202314 (= e!771479 0)))

(declare-fun b!1202315 () Bool)

(assert (=> b!1202315 (= e!771479 (+ 1 (size!9579 (t!112457 (list!4493 t!4115)))))))

(assert (= (and d!343891 c!200603) b!1202314))

(assert (= (and d!343891 (not c!200603)) b!1202315))

(declare-fun m!1378117 () Bool)

(assert (=> b!1202315 m!1378117))

(assert (=> d!343609 d!343891))

(declare-fun b!1202316 () Bool)

(declare-fun e!771480 () List!12071)

(assert (=> b!1202316 (= e!771480 Nil!12047)))

(declare-fun b!1202317 () Bool)

(declare-fun e!771481 () List!12071)

(assert (=> b!1202317 (= e!771480 e!771481)))

(declare-fun c!200605 () Bool)

(assert (=> b!1202317 (= c!200605 ((_ is Leaf!6095) t!4115))))

(declare-fun b!1202319 () Bool)

(assert (=> b!1202319 (= e!771481 (++!3086 (list!4493 (left!10518 t!4115)) (list!4493 (right!10848 t!4115))))))

(declare-fun d!343893 () Bool)

(declare-fun c!200604 () Bool)

(assert (=> d!343893 (= c!200604 ((_ is Empty!3980) t!4115))))

(assert (=> d!343893 (= (list!4493 t!4115) e!771480)))

(declare-fun b!1202318 () Bool)

(assert (=> b!1202318 (= e!771481 (list!4495 (xs!6687 t!4115)))))

(assert (= (and d!343893 c!200604) b!1202316))

(assert (= (and d!343893 (not c!200604)) b!1202317))

(assert (= (and b!1202317 c!200605) b!1202318))

(assert (= (and b!1202317 (not c!200605)) b!1202319))

(assert (=> b!1202319 m!1376953))

(assert (=> b!1202319 m!1376961))

(assert (=> b!1202319 m!1376953))

(assert (=> b!1202319 m!1376961))

(declare-fun m!1378119 () Bool)

(assert (=> b!1202319 m!1378119))

(assert (=> b!1202318 m!1377933))

(assert (=> d!343609 d!343893))

(declare-fun d!343895 () Bool)

(declare-fun res!541751 () Bool)

(declare-fun e!771482 () Bool)

(assert (=> d!343895 (=> (not res!541751) (not e!771482))))

(assert (=> d!343895 (= res!541751 (= (csize!8190 (right!10848 t!4115)) (+ (size!9578 (left!10518 (right!10848 t!4115))) (size!9578 (right!10848 (right!10848 t!4115))))))))

(assert (=> d!343895 (= (inv!16141 (right!10848 t!4115)) e!771482)))

(declare-fun b!1202320 () Bool)

(declare-fun res!541752 () Bool)

(assert (=> b!1202320 (=> (not res!541752) (not e!771482))))

(assert (=> b!1202320 (= res!541752 (and (not (= (left!10518 (right!10848 t!4115)) Empty!3980)) (not (= (right!10848 (right!10848 t!4115)) Empty!3980))))))

(declare-fun b!1202321 () Bool)

(declare-fun res!541753 () Bool)

(assert (=> b!1202321 (=> (not res!541753) (not e!771482))))

(assert (=> b!1202321 (= res!541753 (= (cheight!4191 (right!10848 t!4115)) (+ (max!0 (height!574 (left!10518 (right!10848 t!4115))) (height!574 (right!10848 (right!10848 t!4115)))) 1)))))

(declare-fun b!1202322 () Bool)

(assert (=> b!1202322 (= e!771482 (<= 0 (cheight!4191 (right!10848 t!4115))))))

(assert (= (and d!343895 res!541751) b!1202320))

(assert (= (and b!1202320 res!541752) b!1202321))

(assert (= (and b!1202321 res!541753) b!1202322))

(declare-fun m!1378121 () Bool)

(assert (=> d!343895 m!1378121))

(declare-fun m!1378123 () Bool)

(assert (=> d!343895 m!1378123))

(assert (=> b!1202321 m!1378041))

(assert (=> b!1202321 m!1378043))

(assert (=> b!1202321 m!1378041))

(assert (=> b!1202321 m!1378043))

(declare-fun m!1378125 () Bool)

(assert (=> b!1202321 m!1378125))

(assert (=> b!1201327 d!343895))

(assert (=> bm!83626 d!343589))

(declare-fun d!343897 () Bool)

(assert (=> d!343897 (= (list!4495 (xs!6687 (left!10518 t!4115))) (innerList!4040 (xs!6687 (left!10518 t!4115))))))

(assert (=> b!1201442 d!343897))

(assert (=> bm!83663 d!343881))

(declare-fun lt!411193 () List!12071)

(declare-fun e!771483 () Bool)

(declare-fun b!1202326 () Bool)

(assert (=> b!1202326 (= e!771483 (or (not (= lt!411005 Nil!12047)) (= lt!411193 (t!112457 lt!411008))))))

(declare-fun d!343899 () Bool)

(assert (=> d!343899 e!771483))

(declare-fun res!541754 () Bool)

(assert (=> d!343899 (=> (not res!541754) (not e!771483))))

(assert (=> d!343899 (= res!541754 (= (content!1694 lt!411193) ((_ map or) (content!1694 (t!112457 lt!411008)) (content!1694 lt!411005))))))

(declare-fun e!771484 () List!12071)

(assert (=> d!343899 (= lt!411193 e!771484)))

(declare-fun c!200606 () Bool)

(assert (=> d!343899 (= c!200606 ((_ is Nil!12047) (t!112457 lt!411008)))))

(assert (=> d!343899 (= (++!3086 (t!112457 lt!411008) lt!411005) lt!411193)))

(declare-fun b!1202325 () Bool)

(declare-fun res!541755 () Bool)

(assert (=> b!1202325 (=> (not res!541755) (not e!771483))))

(assert (=> b!1202325 (= res!541755 (= (size!9579 lt!411193) (+ (size!9579 (t!112457 lt!411008)) (size!9579 lt!411005))))))

(declare-fun b!1202323 () Bool)

(assert (=> b!1202323 (= e!771484 lt!411005)))

(declare-fun b!1202324 () Bool)

(assert (=> b!1202324 (= e!771484 (Cons!12047 (h!17448 (t!112457 lt!411008)) (++!3086 (t!112457 (t!112457 lt!411008)) lt!411005)))))

(assert (= (and d!343899 c!200606) b!1202323))

(assert (= (and d!343899 (not c!200606)) b!1202324))

(assert (= (and d!343899 res!541754) b!1202325))

(assert (= (and b!1202325 res!541755) b!1202326))

(declare-fun m!1378127 () Bool)

(assert (=> d!343899 m!1378127))

(declare-fun m!1378129 () Bool)

(assert (=> d!343899 m!1378129))

(assert (=> d!343899 m!1377007))

(declare-fun m!1378131 () Bool)

(assert (=> b!1202325 m!1378131))

(assert (=> b!1202325 m!1377023))

(assert (=> b!1202325 m!1377011))

(declare-fun m!1378133 () Bool)

(assert (=> b!1202324 m!1378133))

(assert (=> b!1201339 d!343899))

(declare-fun d!343901 () Bool)

(assert (=> d!343901 (= (slice!480 (ite c!200291 lt!411005 lt!411008) (ite c!200291 (- from!553 call!83629) from!553) (ite c!200291 (- until!31 call!83629) e!771014)) (take!133 (drop!605 (ite c!200291 lt!411005 lt!411008) (ite c!200291 (- from!553 call!83629) from!553)) (- (ite c!200291 (- until!31 call!83629) e!771014) (ite c!200291 (- from!553 call!83629) from!553))))))

(declare-fun bs!288328 () Bool)

(assert (= bs!288328 d!343901))

(declare-fun m!1378135 () Bool)

(assert (=> bs!288328 m!1378135))

(assert (=> bs!288328 m!1378135))

(declare-fun m!1378137 () Bool)

(assert (=> bs!288328 m!1378137))

(assert (=> bm!83625 d!343901))

(assert (=> b!1201401 d!343589))

(assert (=> b!1201401 d!343751))

(declare-fun d!343903 () Bool)

(declare-fun c!200607 () Bool)

(assert (=> d!343903 (= c!200607 ((_ is Node!3980) (left!10518 (left!10518 t!4115))))))

(declare-fun e!771485 () Bool)

(assert (=> d!343903 (= (inv!16138 (left!10518 (left!10518 t!4115))) e!771485)))

(declare-fun b!1202327 () Bool)

(assert (=> b!1202327 (= e!771485 (inv!16141 (left!10518 (left!10518 t!4115))))))

(declare-fun b!1202328 () Bool)

(declare-fun e!771486 () Bool)

(assert (=> b!1202328 (= e!771485 e!771486)))

(declare-fun res!541756 () Bool)

(assert (=> b!1202328 (= res!541756 (not ((_ is Leaf!6095) (left!10518 (left!10518 t!4115)))))))

(assert (=> b!1202328 (=> res!541756 e!771486)))

(declare-fun b!1202329 () Bool)

(assert (=> b!1202329 (= e!771486 (inv!16142 (left!10518 (left!10518 t!4115))))))

(assert (= (and d!343903 c!200607) b!1202327))

(assert (= (and d!343903 (not c!200607)) b!1202328))

(assert (= (and b!1202328 (not res!541756)) b!1202329))

(declare-fun m!1378139 () Bool)

(assert (=> b!1202327 m!1378139))

(declare-fun m!1378141 () Bool)

(assert (=> b!1202329 m!1378141))

(assert (=> b!1201668 d!343903))

(declare-fun d!343905 () Bool)

(declare-fun c!200608 () Bool)

(assert (=> d!343905 (= c!200608 ((_ is Node!3980) (right!10848 (left!10518 t!4115))))))

(declare-fun e!771487 () Bool)

(assert (=> d!343905 (= (inv!16138 (right!10848 (left!10518 t!4115))) e!771487)))

(declare-fun b!1202330 () Bool)

(assert (=> b!1202330 (= e!771487 (inv!16141 (right!10848 (left!10518 t!4115))))))

(declare-fun b!1202331 () Bool)

(declare-fun e!771488 () Bool)

(assert (=> b!1202331 (= e!771487 e!771488)))

(declare-fun res!541757 () Bool)

(assert (=> b!1202331 (= res!541757 (not ((_ is Leaf!6095) (right!10848 (left!10518 t!4115)))))))

(assert (=> b!1202331 (=> res!541757 e!771488)))

(declare-fun b!1202332 () Bool)

(assert (=> b!1202332 (= e!771488 (inv!16142 (right!10848 (left!10518 t!4115))))))

(assert (= (and d!343905 c!200608) b!1202330))

(assert (= (and d!343905 (not c!200608)) b!1202331))

(assert (= (and b!1202331 (not res!541757)) b!1202332))

(declare-fun m!1378143 () Bool)

(assert (=> b!1202330 m!1378143))

(declare-fun m!1378145 () Bool)

(assert (=> b!1202332 m!1378145))

(assert (=> b!1201668 d!343905))

(assert (=> b!1201294 d!343577))

(assert (=> b!1201294 d!343579))

(assert (=> d!343587 d!343595))

(assert (=> d!343587 d!343585))

(assert (=> d!343587 d!343589))

(declare-fun b!1202345 () Bool)

(declare-fun e!771496 () Int)

(declare-fun call!83823 () Int)

(assert (=> b!1202345 (= e!771496 (- until!31 call!83823))))

(declare-fun b!1202346 () Bool)

(declare-fun e!771495 () List!12071)

(declare-fun call!83824 () List!12071)

(assert (=> b!1202346 (= e!771495 call!83824)))

(declare-fun b!1202347 () Bool)

(declare-fun e!771497 () List!12071)

(declare-fun call!83822 () List!12071)

(assert (=> b!1202347 (= e!771497 call!83822)))

(declare-fun b!1202348 () Bool)

(assert (=> b!1202348 (= e!771496 until!31)))

(declare-fun d!343907 () Bool)

(assert (=> d!343907 (= (slice!480 (++!3086 lt!411008 lt!411005) from!553 until!31) e!771495)))

(declare-fun c!200616 () Bool)

(assert (=> d!343907 (= c!200616 (<= (size!9579 lt!411008) from!553))))

(assert (=> d!343907 true))

(declare-fun _$8!218 () Unit!18464)

(assert (=> d!343907 (= (choose!7736 lt!411008 lt!411005 from!553 until!31) _$8!218)))

(declare-fun bm!83817 () Bool)

(assert (=> bm!83817 (= call!83823 (size!9579 lt!411008))))

(declare-fun bm!83818 () Bool)

(declare-fun c!200617 () Bool)

(declare-fun c!200615 () Bool)

(assert (=> bm!83818 (= c!200617 c!200615)))

(assert (=> bm!83818 (= call!83822 call!83824)))

(declare-fun bm!83819 () Bool)

(assert (=> bm!83819 (= call!83824 (slice!480 (ite c!200616 lt!411005 (ite c!200615 lt!411008 lt!411005)) (ite c!200616 (- from!553 call!83823) (ite c!200615 from!553 0)) (ite c!200616 (- until!31 call!83823) e!771496)))))

(declare-fun b!1202349 () Bool)

(assert (=> b!1202349 (= e!771495 e!771497)))

(assert (=> b!1202349 (= c!200615 (<= until!31 call!83823))))

(declare-fun b!1202350 () Bool)

(assert (=> b!1202350 (= e!771497 (++!3086 (slice!480 lt!411008 from!553 call!83823) call!83822))))

(assert (= (and d!343907 c!200616) b!1202346))

(assert (= (and d!343907 (not c!200616)) b!1202349))

(assert (= (and b!1202349 c!200615) b!1202347))

(assert (= (and b!1202349 (not c!200615)) b!1202350))

(assert (= (or b!1202347 b!1202350) bm!83818))

(assert (= (and bm!83818 c!200617) b!1202348))

(assert (= (and bm!83818 (not c!200617)) b!1202345))

(assert (= (or b!1202346 b!1202345 b!1202349 b!1202350) bm!83817))

(assert (= (or b!1202346 bm!83818) bm!83819))

(assert (=> d!343907 m!1376957))

(assert (=> d!343907 m!1376957))

(assert (=> d!343907 m!1376959))

(assert (=> d!343907 m!1376965))

(assert (=> bm!83817 m!1376965))

(declare-fun m!1378147 () Bool)

(assert (=> bm!83819 m!1378147))

(declare-fun m!1378149 () Bool)

(assert (=> b!1202350 m!1378149))

(assert (=> b!1202350 m!1378149))

(declare-fun m!1378151 () Bool)

(assert (=> b!1202350 m!1378151))

(assert (=> d!343587 d!343907))

(declare-fun b!1202351 () Bool)

(declare-fun e!771499 () Int)

(declare-fun call!83825 () Int)

(assert (=> b!1202351 (= e!771499 (+ 1 (IArrayPrimitiveSize!10 (xs!6687 (left!10518 (right!10848 t!4115)))) call!83825))))

(declare-fun b!1202352 () Bool)

(assert (=> b!1202352 (= e!771499 0)))

(declare-fun bm!83820 () Bool)

(declare-fun c!200618 () Bool)

(assert (=> bm!83820 (= call!83825 (BigIntAbs!0 (ite c!200618 (cheight!4191 (left!10518 (right!10848 t!4115))) (csize!8191 (left!10518 (right!10848 t!4115))))))))

(declare-fun b!1202353 () Bool)

(declare-fun e!771498 () Int)

(assert (=> b!1202353 (= e!771498 (+ 1 (ConcPrimitiveSize!10 (left!10518 (left!10518 (right!10848 t!4115)))) (ConcPrimitiveSize!10 (right!10848 (left!10518 (right!10848 t!4115)))) (BigIntAbs!0 (csize!8190 (left!10518 (right!10848 t!4115)))) call!83825))))

(declare-fun d!343909 () Bool)

(declare-fun lt!411194 () Int)

(assert (=> d!343909 (>= lt!411194 0)))

(assert (=> d!343909 (= lt!411194 e!771498)))

(assert (=> d!343909 (= c!200618 ((_ is Node!3980) (left!10518 (right!10848 t!4115))))))

(assert (=> d!343909 (= (ConcPrimitiveSize!10 (left!10518 (right!10848 t!4115))) lt!411194)))

(declare-fun b!1202354 () Bool)

(assert (=> b!1202354 (= e!771498 e!771499)))

(declare-fun c!200619 () Bool)

(assert (=> b!1202354 (= c!200619 ((_ is Leaf!6095) (left!10518 (right!10848 t!4115))))))

(assert (= (and d!343909 c!200618) b!1202353))

(assert (= (and d!343909 (not c!200618)) b!1202354))

(assert (= (and b!1202354 c!200619) b!1202351))

(assert (= (and b!1202354 (not c!200619)) b!1202352))

(assert (= (or b!1202353 b!1202351) bm!83820))

(declare-fun m!1378153 () Bool)

(assert (=> b!1202351 m!1378153))

(declare-fun m!1378155 () Bool)

(assert (=> bm!83820 m!1378155))

(declare-fun m!1378157 () Bool)

(assert (=> b!1202353 m!1378157))

(declare-fun m!1378159 () Bool)

(assert (=> b!1202353 m!1378159))

(declare-fun m!1378161 () Bool)

(assert (=> b!1202353 m!1378161))

(assert (=> b!1201503 d!343909))

(declare-fun b!1202355 () Bool)

(declare-fun e!771501 () Int)

(declare-fun call!83826 () Int)

(assert (=> b!1202355 (= e!771501 (+ 1 (IArrayPrimitiveSize!10 (xs!6687 (right!10848 (right!10848 t!4115)))) call!83826))))

(declare-fun b!1202356 () Bool)

(assert (=> b!1202356 (= e!771501 0)))

(declare-fun bm!83821 () Bool)

(declare-fun c!200620 () Bool)

(assert (=> bm!83821 (= call!83826 (BigIntAbs!0 (ite c!200620 (cheight!4191 (right!10848 (right!10848 t!4115))) (csize!8191 (right!10848 (right!10848 t!4115))))))))

(declare-fun b!1202357 () Bool)

(declare-fun e!771500 () Int)

(assert (=> b!1202357 (= e!771500 (+ 1 (ConcPrimitiveSize!10 (left!10518 (right!10848 (right!10848 t!4115)))) (ConcPrimitiveSize!10 (right!10848 (right!10848 (right!10848 t!4115)))) (BigIntAbs!0 (csize!8190 (right!10848 (right!10848 t!4115)))) call!83826))))

(declare-fun d!343911 () Bool)

(declare-fun lt!411195 () Int)

(assert (=> d!343911 (>= lt!411195 0)))

(assert (=> d!343911 (= lt!411195 e!771500)))

(assert (=> d!343911 (= c!200620 ((_ is Node!3980) (right!10848 (right!10848 t!4115))))))

(assert (=> d!343911 (= (ConcPrimitiveSize!10 (right!10848 (right!10848 t!4115))) lt!411195)))

(declare-fun b!1202358 () Bool)

(assert (=> b!1202358 (= e!771500 e!771501)))

(declare-fun c!200621 () Bool)

(assert (=> b!1202358 (= c!200621 ((_ is Leaf!6095) (right!10848 (right!10848 t!4115))))))

(assert (= (and d!343911 c!200620) b!1202357))

(assert (= (and d!343911 (not c!200620)) b!1202358))

(assert (= (and b!1202358 c!200621) b!1202355))

(assert (= (and b!1202358 (not c!200621)) b!1202356))

(assert (= (or b!1202357 b!1202355) bm!83821))

(declare-fun m!1378163 () Bool)

(assert (=> b!1202355 m!1378163))

(declare-fun m!1378165 () Bool)

(assert (=> bm!83821 m!1378165))

(declare-fun m!1378167 () Bool)

(assert (=> b!1202357 m!1378167))

(declare-fun m!1378169 () Bool)

(assert (=> b!1202357 m!1378169))

(declare-fun m!1378171 () Bool)

(assert (=> b!1202357 m!1378171))

(assert (=> b!1201503 d!343911))

(declare-fun d!343913 () Bool)

(assert (=> d!343913 (= (BigIntAbs!0 (csize!8190 (right!10848 t!4115))) (ite (>= (csize!8190 (right!10848 t!4115)) 0) (csize!8190 (right!10848 t!4115)) (- (csize!8190 (right!10848 t!4115)))))))

(assert (=> b!1201503 d!343913))

(declare-fun b!1202362 () Bool)

(declare-fun e!771502 () Bool)

(declare-fun lt!411196 () List!12071)

(assert (=> b!1202362 (= e!771502 (or (not (= (list!4493 (right!10848 (right!10848 t!4115))) Nil!12047)) (= lt!411196 (list!4493 (left!10518 (right!10848 t!4115))))))))

(declare-fun d!343915 () Bool)

(assert (=> d!343915 e!771502))

(declare-fun res!541758 () Bool)

(assert (=> d!343915 (=> (not res!541758) (not e!771502))))

(assert (=> d!343915 (= res!541758 (= (content!1694 lt!411196) ((_ map or) (content!1694 (list!4493 (left!10518 (right!10848 t!4115)))) (content!1694 (list!4493 (right!10848 (right!10848 t!4115)))))))))

(declare-fun e!771503 () List!12071)

(assert (=> d!343915 (= lt!411196 e!771503)))

(declare-fun c!200622 () Bool)

(assert (=> d!343915 (= c!200622 ((_ is Nil!12047) (list!4493 (left!10518 (right!10848 t!4115)))))))

(assert (=> d!343915 (= (++!3086 (list!4493 (left!10518 (right!10848 t!4115))) (list!4493 (right!10848 (right!10848 t!4115)))) lt!411196)))

(declare-fun b!1202361 () Bool)

(declare-fun res!541759 () Bool)

(assert (=> b!1202361 (=> (not res!541759) (not e!771502))))

(assert (=> b!1202361 (= res!541759 (= (size!9579 lt!411196) (+ (size!9579 (list!4493 (left!10518 (right!10848 t!4115)))) (size!9579 (list!4493 (right!10848 (right!10848 t!4115)))))))))

(declare-fun b!1202359 () Bool)

(assert (=> b!1202359 (= e!771503 (list!4493 (right!10848 (right!10848 t!4115))))))

(declare-fun b!1202360 () Bool)

(assert (=> b!1202360 (= e!771503 (Cons!12047 (h!17448 (list!4493 (left!10518 (right!10848 t!4115)))) (++!3086 (t!112457 (list!4493 (left!10518 (right!10848 t!4115)))) (list!4493 (right!10848 (right!10848 t!4115))))))))

(assert (= (and d!343915 c!200622) b!1202359))

(assert (= (and d!343915 (not c!200622)) b!1202360))

(assert (= (and d!343915 res!541758) b!1202361))

(assert (= (and b!1202361 res!541759) b!1202362))

(declare-fun m!1378173 () Bool)

(assert (=> d!343915 m!1378173))

(assert (=> d!343915 m!1377073))

(declare-fun m!1378175 () Bool)

(assert (=> d!343915 m!1378175))

(assert (=> d!343915 m!1377075))

(declare-fun m!1378177 () Bool)

(assert (=> d!343915 m!1378177))

(declare-fun m!1378179 () Bool)

(assert (=> b!1202361 m!1378179))

(assert (=> b!1202361 m!1377073))

(declare-fun m!1378181 () Bool)

(assert (=> b!1202361 m!1378181))

(assert (=> b!1202361 m!1377075))

(declare-fun m!1378183 () Bool)

(assert (=> b!1202361 m!1378183))

(assert (=> b!1202360 m!1377075))

(declare-fun m!1378185 () Bool)

(assert (=> b!1202360 m!1378185))

(assert (=> b!1201447 d!343915))

(declare-fun b!1202363 () Bool)

(declare-fun e!771504 () List!12071)

(assert (=> b!1202363 (= e!771504 Nil!12047)))

(declare-fun b!1202364 () Bool)

(declare-fun e!771505 () List!12071)

(assert (=> b!1202364 (= e!771504 e!771505)))

(declare-fun c!200624 () Bool)

(assert (=> b!1202364 (= c!200624 ((_ is Leaf!6095) (left!10518 (right!10848 t!4115))))))

(declare-fun b!1202366 () Bool)

(assert (=> b!1202366 (= e!771505 (++!3086 (list!4493 (left!10518 (left!10518 (right!10848 t!4115)))) (list!4493 (right!10848 (left!10518 (right!10848 t!4115))))))))

(declare-fun d!343917 () Bool)

(declare-fun c!200623 () Bool)

(assert (=> d!343917 (= c!200623 ((_ is Empty!3980) (left!10518 (right!10848 t!4115))))))

(assert (=> d!343917 (= (list!4493 (left!10518 (right!10848 t!4115))) e!771504)))

(declare-fun b!1202365 () Bool)

(assert (=> b!1202365 (= e!771505 (list!4495 (xs!6687 (left!10518 (right!10848 t!4115)))))))

(assert (= (and d!343917 c!200623) b!1202363))

(assert (= (and d!343917 (not c!200623)) b!1202364))

(assert (= (and b!1202364 c!200624) b!1202365))

(assert (= (and b!1202364 (not c!200624)) b!1202366))

(declare-fun m!1378187 () Bool)

(assert (=> b!1202366 m!1378187))

(declare-fun m!1378189 () Bool)

(assert (=> b!1202366 m!1378189))

(assert (=> b!1202366 m!1378187))

(assert (=> b!1202366 m!1378189))

(declare-fun m!1378191 () Bool)

(assert (=> b!1202366 m!1378191))

(declare-fun m!1378193 () Bool)

(assert (=> b!1202365 m!1378193))

(assert (=> b!1201447 d!343917))

(declare-fun b!1202367 () Bool)

(declare-fun e!771506 () List!12071)

(assert (=> b!1202367 (= e!771506 Nil!12047)))

(declare-fun b!1202368 () Bool)

(declare-fun e!771507 () List!12071)

(assert (=> b!1202368 (= e!771506 e!771507)))

(declare-fun c!200626 () Bool)

(assert (=> b!1202368 (= c!200626 ((_ is Leaf!6095) (right!10848 (right!10848 t!4115))))))

(declare-fun b!1202370 () Bool)

(assert (=> b!1202370 (= e!771507 (++!3086 (list!4493 (left!10518 (right!10848 (right!10848 t!4115)))) (list!4493 (right!10848 (right!10848 (right!10848 t!4115))))))))

(declare-fun d!343919 () Bool)

(declare-fun c!200625 () Bool)

(assert (=> d!343919 (= c!200625 ((_ is Empty!3980) (right!10848 (right!10848 t!4115))))))

(assert (=> d!343919 (= (list!4493 (right!10848 (right!10848 t!4115))) e!771506)))

(declare-fun b!1202369 () Bool)

(assert (=> b!1202369 (= e!771507 (list!4495 (xs!6687 (right!10848 (right!10848 t!4115)))))))

(assert (= (and d!343919 c!200625) b!1202367))

(assert (= (and d!343919 (not c!200625)) b!1202368))

(assert (= (and b!1202368 c!200626) b!1202369))

(assert (= (and b!1202368 (not c!200626)) b!1202370))

(declare-fun m!1378195 () Bool)

(assert (=> b!1202370 m!1378195))

(declare-fun m!1378197 () Bool)

(assert (=> b!1202370 m!1378197))

(assert (=> b!1202370 m!1378195))

(assert (=> b!1202370 m!1378197))

(declare-fun m!1378199 () Bool)

(assert (=> b!1202370 m!1378199))

(declare-fun m!1378201 () Bool)

(assert (=> b!1202369 m!1378201))

(assert (=> b!1201447 d!343919))

(declare-fun d!343921 () Bool)

(declare-fun lt!411197 () Int)

(assert (=> d!343921 (>= lt!411197 0)))

(declare-fun e!771508 () Int)

(assert (=> d!343921 (= lt!411197 e!771508)))

(declare-fun c!200627 () Bool)

(assert (=> d!343921 (= c!200627 ((_ is Nil!12047) (innerList!4040 (xs!6687 t!4115))))))

(assert (=> d!343921 (= (size!9579 (innerList!4040 (xs!6687 t!4115))) lt!411197)))

(declare-fun b!1202371 () Bool)

(assert (=> b!1202371 (= e!771508 0)))

(declare-fun b!1202372 () Bool)

(assert (=> b!1202372 (= e!771508 (+ 1 (size!9579 (t!112457 (innerList!4040 (xs!6687 t!4115))))))))

(assert (= (and d!343921 c!200627) b!1202371))

(assert (= (and d!343921 (not c!200627)) b!1202372))

(declare-fun m!1378203 () Bool)

(assert (=> b!1202372 m!1378203))

(assert (=> d!343639 d!343921))

(declare-fun d!343923 () Bool)

(assert (=> d!343923 (= (slice!480 (ite c!200375 lt!411073 lt!411072) (ite c!200375 (- from!553 call!83665) from!553) (ite c!200375 (- lt!411007 call!83665) e!771135)) (take!133 (drop!605 (ite c!200375 lt!411073 lt!411072) (ite c!200375 (- from!553 call!83665) from!553)) (- (ite c!200375 (- lt!411007 call!83665) e!771135) (ite c!200375 (- from!553 call!83665) from!553))))))

(declare-fun bs!288329 () Bool)

(assert (= bs!288329 d!343923))

(declare-fun m!1378205 () Bool)

(assert (=> bs!288329 m!1378205))

(assert (=> bs!288329 m!1378205))

(declare-fun m!1378207 () Bool)

(assert (=> bs!288329 m!1378207))

(assert (=> bm!83661 d!343923))

(declare-fun d!343925 () Bool)

(declare-fun c!200628 () Bool)

(assert (=> d!343925 (= c!200628 ((_ is Node!3980) (left!10518 (right!10848 t!4115))))))

(declare-fun e!771509 () Bool)

(assert (=> d!343925 (= (inv!16138 (left!10518 (right!10848 t!4115))) e!771509)))

(declare-fun b!1202373 () Bool)

(assert (=> b!1202373 (= e!771509 (inv!16141 (left!10518 (right!10848 t!4115))))))

(declare-fun b!1202374 () Bool)

(declare-fun e!771510 () Bool)

(assert (=> b!1202374 (= e!771509 e!771510)))

(declare-fun res!541760 () Bool)

(assert (=> b!1202374 (= res!541760 (not ((_ is Leaf!6095) (left!10518 (right!10848 t!4115)))))))

(assert (=> b!1202374 (=> res!541760 e!771510)))

(declare-fun b!1202375 () Bool)

(assert (=> b!1202375 (= e!771510 (inv!16142 (left!10518 (right!10848 t!4115))))))

(assert (= (and d!343925 c!200628) b!1202373))

(assert (= (and d!343925 (not c!200628)) b!1202374))

(assert (= (and b!1202374 (not res!541760)) b!1202375))

(declare-fun m!1378209 () Bool)

(assert (=> b!1202373 m!1378209))

(declare-fun m!1378211 () Bool)

(assert (=> b!1202375 m!1378211))

(assert (=> b!1201671 d!343925))

(declare-fun d!343927 () Bool)

(declare-fun c!200629 () Bool)

(assert (=> d!343927 (= c!200629 ((_ is Node!3980) (right!10848 (right!10848 t!4115))))))

(declare-fun e!771511 () Bool)

(assert (=> d!343927 (= (inv!16138 (right!10848 (right!10848 t!4115))) e!771511)))

(declare-fun b!1202376 () Bool)

(assert (=> b!1202376 (= e!771511 (inv!16141 (right!10848 (right!10848 t!4115))))))

(declare-fun b!1202377 () Bool)

(declare-fun e!771512 () Bool)

(assert (=> b!1202377 (= e!771511 e!771512)))

(declare-fun res!541761 () Bool)

(assert (=> b!1202377 (= res!541761 (not ((_ is Leaf!6095) (right!10848 (right!10848 t!4115)))))))

(assert (=> b!1202377 (=> res!541761 e!771512)))

(declare-fun b!1202378 () Bool)

(assert (=> b!1202378 (= e!771512 (inv!16142 (right!10848 (right!10848 t!4115))))))

(assert (= (and d!343927 c!200629) b!1202376))

(assert (= (and d!343927 (not c!200629)) b!1202377))

(assert (= (and b!1202377 (not res!541761)) b!1202378))

(declare-fun m!1378213 () Bool)

(assert (=> b!1202376 m!1378213))

(declare-fun m!1378215 () Bool)

(assert (=> b!1202378 m!1378215))

(assert (=> b!1201671 d!343927))

(declare-fun d!343929 () Bool)

(declare-fun res!541762 () Bool)

(declare-fun e!771513 () Bool)

(assert (=> d!343929 (=> (not res!541762) (not e!771513))))

(assert (=> d!343929 (= res!541762 (<= (size!9579 (list!4495 (xs!6687 (left!10518 t!4115)))) 512))))

(assert (=> d!343929 (= (inv!16142 (left!10518 t!4115)) e!771513)))

(declare-fun b!1202379 () Bool)

(declare-fun res!541763 () Bool)

(assert (=> b!1202379 (=> (not res!541763) (not e!771513))))

(assert (=> b!1202379 (= res!541763 (= (csize!8191 (left!10518 t!4115)) (size!9579 (list!4495 (xs!6687 (left!10518 t!4115))))))))

(declare-fun b!1202380 () Bool)

(assert (=> b!1202380 (= e!771513 (and (> (csize!8191 (left!10518 t!4115)) 0) (<= (csize!8191 (left!10518 t!4115)) 512)))))

(assert (= (and d!343929 res!541762) b!1202379))

(assert (= (and b!1202379 res!541763) b!1202380))

(assert (=> d!343929 m!1377067))

(assert (=> d!343929 m!1377067))

(declare-fun m!1378217 () Bool)

(assert (=> d!343929 m!1378217))

(assert (=> b!1202379 m!1377067))

(assert (=> b!1202379 m!1377067))

(assert (=> b!1202379 m!1378217))

(assert (=> b!1201326 d!343929))

(declare-fun d!343931 () Bool)

(declare-fun c!200630 () Bool)

(assert (=> d!343931 (= c!200630 ((_ is Nil!12047) lt!411020))))

(declare-fun e!771514 () (InoxSet T!21810))

(assert (=> d!343931 (= (content!1694 lt!411020) e!771514)))

(declare-fun b!1202381 () Bool)

(assert (=> b!1202381 (= e!771514 ((as const (Array T!21810 Bool)) false))))

(declare-fun b!1202382 () Bool)

(assert (=> b!1202382 (= e!771514 ((_ map or) (store ((as const (Array T!21810 Bool)) false) (h!17448 lt!411020) true) (content!1694 (t!112457 lt!411020))))))

(assert (= (and d!343931 c!200630) b!1202381))

(assert (= (and d!343931 (not c!200630)) b!1202382))

(declare-fun m!1378219 () Bool)

(assert (=> b!1202382 m!1378219))

(declare-fun m!1378221 () Bool)

(assert (=> b!1202382 m!1378221))

(assert (=> d!343585 d!343931))

(declare-fun d!343933 () Bool)

(declare-fun c!200631 () Bool)

(assert (=> d!343933 (= c!200631 ((_ is Nil!12047) lt!411008))))

(declare-fun e!771515 () (InoxSet T!21810))

(assert (=> d!343933 (= (content!1694 lt!411008) e!771515)))

(declare-fun b!1202383 () Bool)

(assert (=> b!1202383 (= e!771515 ((as const (Array T!21810 Bool)) false))))

(declare-fun b!1202384 () Bool)

(assert (=> b!1202384 (= e!771515 ((_ map or) (store ((as const (Array T!21810 Bool)) false) (h!17448 lt!411008) true) (content!1694 (t!112457 lt!411008))))))

(assert (= (and d!343933 c!200631) b!1202383))

(assert (= (and d!343933 (not c!200631)) b!1202384))

(declare-fun m!1378223 () Bool)

(assert (=> b!1202384 m!1378223))

(assert (=> b!1202384 m!1378129))

(assert (=> d!343585 d!343933))

(declare-fun d!343935 () Bool)

(declare-fun c!200632 () Bool)

(assert (=> d!343935 (= c!200632 ((_ is Nil!12047) lt!411005))))

(declare-fun e!771516 () (InoxSet T!21810))

(assert (=> d!343935 (= (content!1694 lt!411005) e!771516)))

(declare-fun b!1202385 () Bool)

(assert (=> b!1202385 (= e!771516 ((as const (Array T!21810 Bool)) false))))

(declare-fun b!1202386 () Bool)

(assert (=> b!1202386 (= e!771516 ((_ map or) (store ((as const (Array T!21810 Bool)) false) (h!17448 lt!411005) true) (content!1694 (t!112457 lt!411005))))))

(assert (= (and d!343935 c!200632) b!1202385))

(assert (= (and d!343935 (not c!200632)) b!1202386))

(declare-fun m!1378225 () Bool)

(assert (=> b!1202386 m!1378225))

(declare-fun m!1378227 () Bool)

(assert (=> b!1202386 m!1378227))

(assert (=> d!343585 d!343935))

(declare-fun d!343937 () Bool)

(declare-fun lt!411198 () Int)

(assert (=> d!343937 (>= lt!411198 0)))

(declare-fun e!771517 () Int)

(assert (=> d!343937 (= lt!411198 e!771517)))

(declare-fun c!200633 () Bool)

(assert (=> d!343937 (= c!200633 ((_ is Nil!12047) lt!411076))))

(assert (=> d!343937 (= (size!9579 lt!411076) lt!411198)))

(declare-fun b!1202387 () Bool)

(assert (=> b!1202387 (= e!771517 0)))

(declare-fun b!1202388 () Bool)

(assert (=> b!1202388 (= e!771517 (+ 1 (size!9579 (t!112457 lt!411076))))))

(assert (= (and d!343937 c!200633) b!1202387))

(assert (= (and d!343937 (not c!200633)) b!1202388))

(declare-fun m!1378229 () Bool)

(assert (=> b!1202388 m!1378229))

(assert (=> b!1201658 d!343937))

(declare-fun d!343939 () Bool)

(declare-fun lt!411199 () Int)

(assert (=> d!343939 (>= lt!411199 0)))

(declare-fun e!771518 () Int)

(assert (=> d!343939 (= lt!411199 e!771518)))

(declare-fun c!200634 () Bool)

(assert (=> d!343939 (= c!200634 ((_ is Nil!12047) call!83606))))

(assert (=> d!343939 (= (size!9579 call!83606) lt!411199)))

(declare-fun b!1202389 () Bool)

(assert (=> b!1202389 (= e!771518 0)))

(declare-fun b!1202390 () Bool)

(assert (=> b!1202390 (= e!771518 (+ 1 (size!9579 (t!112457 call!83606))))))

(assert (= (and d!343939 c!200634) b!1202389))

(assert (= (and d!343939 (not c!200634)) b!1202390))

(assert (=> b!1202390 m!1378031))

(assert (=> b!1201658 d!343939))

(declare-fun d!343941 () Bool)

(declare-fun lt!411200 () Int)

(assert (=> d!343941 (>= lt!411200 0)))

(declare-fun e!771519 () Int)

(assert (=> d!343941 (= lt!411200 e!771519)))

(declare-fun c!200635 () Bool)

(assert (=> d!343941 (= c!200635 ((_ is Nil!12047) (slice!480 lt!411005 0 (- until!31 lt!411010))))))

(assert (=> d!343941 (= (size!9579 (slice!480 lt!411005 0 (- until!31 lt!411010))) lt!411200)))

(declare-fun b!1202391 () Bool)

(assert (=> b!1202391 (= e!771519 0)))

(declare-fun b!1202392 () Bool)

(assert (=> b!1202392 (= e!771519 (+ 1 (size!9579 (t!112457 (slice!480 lt!411005 0 (- until!31 lt!411010))))))))

(assert (= (and d!343941 c!200635) b!1202391))

(assert (= (and d!343941 (not c!200635)) b!1202392))

(declare-fun m!1378231 () Bool)

(assert (=> b!1202392 m!1378231))

(assert (=> b!1201658 d!343941))

(declare-fun d!343943 () Bool)

(declare-fun res!541764 () Bool)

(declare-fun e!771520 () Bool)

(assert (=> d!343943 (=> (not res!541764) (not e!771520))))

(assert (=> d!343943 (= res!541764 (= (csize!8190 (left!10518 t!4115)) (+ (size!9578 (left!10518 (left!10518 t!4115))) (size!9578 (right!10848 (left!10518 t!4115))))))))

(assert (=> d!343943 (= (inv!16141 (left!10518 t!4115)) e!771520)))

(declare-fun b!1202393 () Bool)

(declare-fun res!541765 () Bool)

(assert (=> b!1202393 (=> (not res!541765) (not e!771520))))

(assert (=> b!1202393 (= res!541765 (and (not (= (left!10518 (left!10518 t!4115)) Empty!3980)) (not (= (right!10848 (left!10518 t!4115)) Empty!3980))))))

(declare-fun b!1202394 () Bool)

(declare-fun res!541766 () Bool)

(assert (=> b!1202394 (=> (not res!541766) (not e!771520))))

(assert (=> b!1202394 (= res!541766 (= (cheight!4191 (left!10518 t!4115)) (+ (max!0 (height!574 (left!10518 (left!10518 t!4115))) (height!574 (right!10848 (left!10518 t!4115)))) 1)))))

(declare-fun b!1202395 () Bool)

(assert (=> b!1202395 (= e!771520 (<= 0 (cheight!4191 (left!10518 t!4115))))))

(assert (= (and d!343943 res!541764) b!1202393))

(assert (= (and b!1202393 res!541765) b!1202394))

(assert (= (and b!1202394 res!541766) b!1202395))

(assert (=> d!343943 m!1377219))

(declare-fun m!1378233 () Bool)

(assert (=> d!343943 m!1378233))

(assert (=> b!1202394 m!1378063))

(assert (=> b!1202394 m!1378065))

(assert (=> b!1202394 m!1378063))

(assert (=> b!1202394 m!1378065))

(declare-fun m!1378235 () Bool)

(assert (=> b!1202394 m!1378235))

(assert (=> b!1201324 d!343943))

(declare-fun d!343945 () Bool)

(declare-fun e!771521 () Bool)

(assert (=> d!343945 e!771521))

(declare-fun res!541767 () Bool)

(assert (=> d!343945 (=> (not res!541767) (not e!771521))))

(declare-fun lt!411201 () List!12071)

(assert (=> d!343945 (= res!541767 (= ((_ map implies) (content!1694 lt!411201) (content!1694 (drop!605 (ite c!200249 lt!411005 lt!411008) (ite c!200249 (- from!553 lt!411010) from!553)))) ((as const (InoxSet T!21810)) true)))))

(declare-fun e!771522 () List!12071)

(assert (=> d!343945 (= lt!411201 e!771522)))

(declare-fun c!200637 () Bool)

(assert (=> d!343945 (= c!200637 (or ((_ is Nil!12047) (drop!605 (ite c!200249 lt!411005 lt!411008) (ite c!200249 (- from!553 lt!411010) from!553))) (<= (- (ite c!200249 (- until!31 lt!411010) (ite c!200250 until!31 lt!411010)) (ite c!200249 (- from!553 lt!411010) from!553)) 0)))))

(assert (=> d!343945 (= (take!133 (drop!605 (ite c!200249 lt!411005 lt!411008) (ite c!200249 (- from!553 lt!411010) from!553)) (- (ite c!200249 (- until!31 lt!411010) (ite c!200250 until!31 lt!411010)) (ite c!200249 (- from!553 lt!411010) from!553))) lt!411201)))

(declare-fun b!1202396 () Bool)

(assert (=> b!1202396 (= e!771522 Nil!12047)))

(declare-fun e!771523 () Int)

(declare-fun b!1202397 () Bool)

(assert (=> b!1202397 (= e!771523 (- (ite c!200249 (- until!31 lt!411010) (ite c!200250 until!31 lt!411010)) (ite c!200249 (- from!553 lt!411010) from!553)))))

(declare-fun b!1202398 () Bool)

(declare-fun e!771524 () Int)

(assert (=> b!1202398 (= e!771524 0)))

(declare-fun b!1202399 () Bool)

(assert (=> b!1202399 (= e!771521 (= (size!9579 lt!411201) e!771524))))

(declare-fun c!200638 () Bool)

(assert (=> b!1202399 (= c!200638 (<= (- (ite c!200249 (- until!31 lt!411010) (ite c!200250 until!31 lt!411010)) (ite c!200249 (- from!553 lt!411010) from!553)) 0))))

(declare-fun b!1202400 () Bool)

(assert (=> b!1202400 (= e!771523 (size!9579 (drop!605 (ite c!200249 lt!411005 lt!411008) (ite c!200249 (- from!553 lt!411010) from!553))))))

(declare-fun b!1202401 () Bool)

(assert (=> b!1202401 (= e!771524 e!771523)))

(declare-fun c!200636 () Bool)

(assert (=> b!1202401 (= c!200636 (>= (- (ite c!200249 (- until!31 lt!411010) (ite c!200250 until!31 lt!411010)) (ite c!200249 (- from!553 lt!411010) from!553)) (size!9579 (drop!605 (ite c!200249 lt!411005 lt!411008) (ite c!200249 (- from!553 lt!411010) from!553)))))))

(declare-fun b!1202402 () Bool)

(assert (=> b!1202402 (= e!771522 (Cons!12047 (h!17448 (drop!605 (ite c!200249 lt!411005 lt!411008) (ite c!200249 (- from!553 lt!411010) from!553))) (take!133 (t!112457 (drop!605 (ite c!200249 lt!411005 lt!411008) (ite c!200249 (- from!553 lt!411010) from!553))) (- (- (ite c!200249 (- until!31 lt!411010) (ite c!200250 until!31 lt!411010)) (ite c!200249 (- from!553 lt!411010) from!553)) 1))))))

(assert (= (and d!343945 c!200637) b!1202396))

(assert (= (and d!343945 (not c!200637)) b!1202402))

(assert (= (and d!343945 res!541767) b!1202399))

(assert (= (and b!1202399 c!200638) b!1202398))

(assert (= (and b!1202399 (not c!200638)) b!1202401))

(assert (= (and b!1202401 c!200636) b!1202400))

(assert (= (and b!1202401 (not c!200636)) b!1202397))

(assert (=> b!1202400 m!1376997))

(declare-fun m!1378237 () Bool)

(assert (=> b!1202400 m!1378237))

(assert (=> b!1202401 m!1376997))

(assert (=> b!1202401 m!1378237))

(declare-fun m!1378239 () Bool)

(assert (=> b!1202399 m!1378239))

(declare-fun m!1378241 () Bool)

(assert (=> b!1202402 m!1378241))

(declare-fun m!1378243 () Bool)

(assert (=> d!343945 m!1378243))

(assert (=> d!343945 m!1376997))

(declare-fun m!1378245 () Bool)

(assert (=> d!343945 m!1378245))

(assert (=> d!343581 d!343945))

(declare-fun e!771527 () List!12071)

(declare-fun b!1202403 () Bool)

(assert (=> b!1202403 (= e!771527 (drop!605 (t!112457 (ite c!200249 lt!411005 lt!411008)) (- (ite c!200249 (- from!553 lt!411010) from!553) 1)))))

(declare-fun b!1202404 () Bool)

(declare-fun e!771525 () Int)

(assert (=> b!1202404 (= e!771525 0)))

(declare-fun call!83827 () Int)

(declare-fun b!1202405 () Bool)

(assert (=> b!1202405 (= e!771525 (- call!83827 (ite c!200249 (- from!553 lt!411010) from!553)))))

(declare-fun b!1202407 () Bool)

(declare-fun e!771526 () List!12071)

(assert (=> b!1202407 (= e!771526 Nil!12047)))

(declare-fun b!1202408 () Bool)

(declare-fun e!771529 () Int)

(assert (=> b!1202408 (= e!771529 call!83827)))

(declare-fun b!1202409 () Bool)

(assert (=> b!1202409 (= e!771529 e!771525)))

(declare-fun c!200639 () Bool)

(assert (=> b!1202409 (= c!200639 (>= (ite c!200249 (- from!553 lt!411010) from!553) call!83827))))

(declare-fun bm!83822 () Bool)

(assert (=> bm!83822 (= call!83827 (size!9579 (ite c!200249 lt!411005 lt!411008)))))

(declare-fun b!1202410 () Bool)

(assert (=> b!1202410 (= e!771527 (ite c!200249 lt!411005 lt!411008))))

(declare-fun b!1202411 () Bool)

(declare-fun e!771528 () Bool)

(declare-fun lt!411202 () List!12071)

(assert (=> b!1202411 (= e!771528 (= (size!9579 lt!411202) e!771529))))

(declare-fun c!200642 () Bool)

(assert (=> b!1202411 (= c!200642 (<= (ite c!200249 (- from!553 lt!411010) from!553) 0))))

(declare-fun d!343947 () Bool)

(assert (=> d!343947 e!771528))

(declare-fun res!541768 () Bool)

(assert (=> d!343947 (=> (not res!541768) (not e!771528))))

(assert (=> d!343947 (= res!541768 (= ((_ map implies) (content!1694 lt!411202) (content!1694 (ite c!200249 lt!411005 lt!411008))) ((as const (InoxSet T!21810)) true)))))

(assert (=> d!343947 (= lt!411202 e!771526)))

(declare-fun c!200640 () Bool)

(assert (=> d!343947 (= c!200640 ((_ is Nil!12047) (ite c!200249 lt!411005 lt!411008)))))

(assert (=> d!343947 (= (drop!605 (ite c!200249 lt!411005 lt!411008) (ite c!200249 (- from!553 lt!411010) from!553)) lt!411202)))

(declare-fun b!1202406 () Bool)

(assert (=> b!1202406 (= e!771526 e!771527)))

(declare-fun c!200641 () Bool)

(assert (=> b!1202406 (= c!200641 (<= (ite c!200249 (- from!553 lt!411010) from!553) 0))))

(assert (= (and d!343947 c!200640) b!1202407))

(assert (= (and d!343947 (not c!200640)) b!1202406))

(assert (= (and b!1202406 c!200641) b!1202410))

(assert (= (and b!1202406 (not c!200641)) b!1202403))

(assert (= (and d!343947 res!541768) b!1202411))

(assert (= (and b!1202411 c!200642) b!1202408))

(assert (= (and b!1202411 (not c!200642)) b!1202409))

(assert (= (and b!1202409 c!200639) b!1202404))

(assert (= (and b!1202409 (not c!200639)) b!1202405))

(assert (= (or b!1202408 b!1202409 b!1202405) bm!83822))

(declare-fun m!1378247 () Bool)

(assert (=> b!1202403 m!1378247))

(declare-fun m!1378249 () Bool)

(assert (=> bm!83822 m!1378249))

(declare-fun m!1378251 () Bool)

(assert (=> b!1202411 m!1378251))

(declare-fun m!1378253 () Bool)

(assert (=> d!343947 m!1378253))

(declare-fun m!1378255 () Bool)

(assert (=> d!343947 m!1378255))

(assert (=> d!343581 d!343947))

(assert (=> b!1201476 d!343871))

(declare-fun d!343949 () Bool)

(declare-fun lt!411203 () Int)

(assert (=> d!343949 (>= lt!411203 0)))

(declare-fun e!771530 () Int)

(assert (=> d!343949 (= lt!411203 e!771530)))

(declare-fun c!200643 () Bool)

(assert (=> d!343949 (= c!200643 ((_ is Nil!12047) (t!112457 lt!411008)))))

(assert (=> d!343949 (= (size!9579 (t!112457 lt!411008)) lt!411203)))

(declare-fun b!1202412 () Bool)

(assert (=> b!1202412 (= e!771530 0)))

(declare-fun b!1202413 () Bool)

(assert (=> b!1202413 (= e!771530 (+ 1 (size!9579 (t!112457 (t!112457 lt!411008)))))))

(assert (= (and d!343949 c!200643) b!1202412))

(assert (= (and d!343949 (not c!200643)) b!1202413))

(declare-fun m!1378257 () Bool)

(assert (=> b!1202413 m!1378257))

(assert (=> b!1201410 d!343949))

(declare-fun d!343951 () Bool)

(declare-fun e!771531 () Bool)

(assert (=> d!343951 e!771531))

(declare-fun res!541769 () Bool)

(assert (=> d!343951 (=> (not res!541769) (not e!771531))))

(declare-fun lt!411204 () List!12071)

(assert (=> d!343951 (= res!541769 (= ((_ map implies) (content!1694 lt!411204) (content!1694 (drop!605 lt!411005 0))) ((as const (InoxSet T!21810)) true)))))

(declare-fun e!771532 () List!12071)

(assert (=> d!343951 (= lt!411204 e!771532)))

(declare-fun c!200645 () Bool)

(assert (=> d!343951 (= c!200645 (or ((_ is Nil!12047) (drop!605 lt!411005 0)) (<= (- (- until!31 lt!411010) 0) 0)))))

(assert (=> d!343951 (= (take!133 (drop!605 lt!411005 0) (- (- until!31 lt!411010) 0)) lt!411204)))

(declare-fun b!1202414 () Bool)

(assert (=> b!1202414 (= e!771532 Nil!12047)))

(declare-fun b!1202415 () Bool)

(declare-fun e!771533 () Int)

(assert (=> b!1202415 (= e!771533 (- (- until!31 lt!411010) 0))))

(declare-fun b!1202416 () Bool)

(declare-fun e!771534 () Int)

(assert (=> b!1202416 (= e!771534 0)))

(declare-fun b!1202417 () Bool)

(assert (=> b!1202417 (= e!771531 (= (size!9579 lt!411204) e!771534))))

(declare-fun c!200646 () Bool)

(assert (=> b!1202417 (= c!200646 (<= (- (- until!31 lt!411010) 0) 0))))

(declare-fun b!1202418 () Bool)

(assert (=> b!1202418 (= e!771533 (size!9579 (drop!605 lt!411005 0)))))

(declare-fun b!1202419 () Bool)

(assert (=> b!1202419 (= e!771534 e!771533)))

(declare-fun c!200644 () Bool)

(assert (=> b!1202419 (= c!200644 (>= (- (- until!31 lt!411010) 0) (size!9579 (drop!605 lt!411005 0))))))

(declare-fun b!1202420 () Bool)

(assert (=> b!1202420 (= e!771532 (Cons!12047 (h!17448 (drop!605 lt!411005 0)) (take!133 (t!112457 (drop!605 lt!411005 0)) (- (- (- until!31 lt!411010) 0) 1))))))

(assert (= (and d!343951 c!200645) b!1202414))

(assert (= (and d!343951 (not c!200645)) b!1202420))

(assert (= (and d!343951 res!541769) b!1202417))

(assert (= (and b!1202417 c!200646) b!1202416))

(assert (= (and b!1202417 (not c!200646)) b!1202419))

(assert (= (and b!1202419 c!200644) b!1202418))

(assert (= (and b!1202419 (not c!200644)) b!1202415))

(assert (=> b!1202418 m!1377263))

(declare-fun m!1378259 () Bool)

(assert (=> b!1202418 m!1378259))

(assert (=> b!1202419 m!1377263))

(assert (=> b!1202419 m!1378259))

(declare-fun m!1378261 () Bool)

(assert (=> b!1202417 m!1378261))

(declare-fun m!1378263 () Bool)

(assert (=> b!1202420 m!1378263))

(declare-fun m!1378265 () Bool)

(assert (=> d!343951 m!1378265))

(assert (=> d!343951 m!1377263))

(declare-fun m!1378267 () Bool)

(assert (=> d!343951 m!1378267))

(assert (=> d!343643 d!343951))

(declare-fun b!1202421 () Bool)

(declare-fun e!771537 () List!12071)

(assert (=> b!1202421 (= e!771537 (drop!605 (t!112457 lt!411005) (- 0 1)))))

(declare-fun b!1202422 () Bool)

(declare-fun e!771535 () Int)

(assert (=> b!1202422 (= e!771535 0)))

(declare-fun b!1202423 () Bool)

(declare-fun call!83828 () Int)

(assert (=> b!1202423 (= e!771535 (- call!83828 0))))

(declare-fun b!1202425 () Bool)

(declare-fun e!771536 () List!12071)

(assert (=> b!1202425 (= e!771536 Nil!12047)))

(declare-fun b!1202426 () Bool)

(declare-fun e!771539 () Int)

(assert (=> b!1202426 (= e!771539 call!83828)))

(declare-fun b!1202427 () Bool)

(assert (=> b!1202427 (= e!771539 e!771535)))

(declare-fun c!200647 () Bool)

(assert (=> b!1202427 (= c!200647 (>= 0 call!83828))))

(declare-fun bm!83823 () Bool)

(assert (=> bm!83823 (= call!83828 (size!9579 lt!411005))))

(declare-fun b!1202428 () Bool)

(assert (=> b!1202428 (= e!771537 lt!411005)))

(declare-fun b!1202429 () Bool)

(declare-fun e!771538 () Bool)

(declare-fun lt!411205 () List!12071)

(assert (=> b!1202429 (= e!771538 (= (size!9579 lt!411205) e!771539))))

(declare-fun c!200650 () Bool)

(assert (=> b!1202429 (= c!200650 (<= 0 0))))

(declare-fun d!343953 () Bool)

(assert (=> d!343953 e!771538))

(declare-fun res!541770 () Bool)

(assert (=> d!343953 (=> (not res!541770) (not e!771538))))

(assert (=> d!343953 (= res!541770 (= ((_ map implies) (content!1694 lt!411205) (content!1694 lt!411005)) ((as const (InoxSet T!21810)) true)))))

(assert (=> d!343953 (= lt!411205 e!771536)))

(declare-fun c!200648 () Bool)

(assert (=> d!343953 (= c!200648 ((_ is Nil!12047) lt!411005))))

(assert (=> d!343953 (= (drop!605 lt!411005 0) lt!411205)))

(declare-fun b!1202424 () Bool)

(assert (=> b!1202424 (= e!771536 e!771537)))

(declare-fun c!200649 () Bool)

(assert (=> b!1202424 (= c!200649 (<= 0 0))))

(assert (= (and d!343953 c!200648) b!1202425))

(assert (= (and d!343953 (not c!200648)) b!1202424))

(assert (= (and b!1202424 c!200649) b!1202428))

(assert (= (and b!1202424 (not c!200649)) b!1202421))

(assert (= (and d!343953 res!541770) b!1202429))

(assert (= (and b!1202429 c!200650) b!1202426))

(assert (= (and b!1202429 (not c!200650)) b!1202427))

(assert (= (and b!1202427 c!200647) b!1202422))

(assert (= (and b!1202427 (not c!200647)) b!1202423))

(assert (= (or b!1202426 b!1202427 b!1202423) bm!83823))

(declare-fun m!1378269 () Bool)

(assert (=> b!1202421 m!1378269))

(assert (=> bm!83823 m!1377011))

(declare-fun m!1378271 () Bool)

(assert (=> b!1202429 m!1378271))

(declare-fun m!1378273 () Bool)

(assert (=> d!343953 m!1378273))

(assert (=> d!343953 m!1377007))

(assert (=> d!343643 d!343953))

(declare-fun d!343955 () Bool)

(declare-fun lt!411206 () Bool)

(assert (=> d!343955 (= lt!411206 (isEmpty!7271 (list!4493 (right!10848 t!4115))))))

(assert (=> d!343955 (= lt!411206 (= (size!9578 (right!10848 t!4115)) 0))))

(assert (=> d!343955 (= (isEmpty!7269 (right!10848 t!4115)) lt!411206)))

(declare-fun bs!288330 () Bool)

(assert (= bs!288330 d!343955))

(assert (=> bs!288330 m!1376961))

(assert (=> bs!288330 m!1376961))

(declare-fun m!1378275 () Bool)

(assert (=> bs!288330 m!1378275))

(assert (=> bs!288330 m!1377939))

(assert (=> b!1201474 d!343955))

(declare-fun b!1202430 () Bool)

(declare-fun e!771540 () Bool)

(declare-fun tp!341383 () Bool)

(assert (=> b!1202430 (= e!771540 (and tp_is_empty!5987 tp!341383))))

(assert (=> b!1201670 (= tp!341361 e!771540)))

(assert (= (and b!1201670 ((_ is Cons!12047) (innerList!4040 (xs!6687 (left!10518 t!4115))))) b!1202430))

(declare-fun b!1202431 () Bool)

(declare-fun e!771541 () Bool)

(declare-fun tp!341384 () Bool)

(assert (=> b!1202431 (= e!771541 (and tp_is_empty!5987 tp!341384))))

(assert (=> b!1201678 (= tp!341367 e!771541)))

(assert (= (and b!1201678 ((_ is Cons!12047) (t!112457 (innerList!4040 (xs!6687 t!4115))))) b!1202431))

(declare-fun b!1202432 () Bool)

(declare-fun e!771542 () Bool)

(declare-fun tp!341385 () Bool)

(assert (=> b!1202432 (= e!771542 (and tp_is_empty!5987 tp!341385))))

(assert (=> b!1201673 (= tp!341364 e!771542)))

(assert (= (and b!1201673 ((_ is Cons!12047) (innerList!4040 (xs!6687 (right!10848 t!4115))))) b!1202432))

(declare-fun b!1202433 () Bool)

(declare-fun tp!341387 () Bool)

(declare-fun e!771543 () Bool)

(declare-fun tp!341386 () Bool)

(assert (=> b!1202433 (= e!771543 (and (inv!16138 (left!10518 (left!10518 (left!10518 t!4115)))) tp!341386 (inv!16138 (right!10848 (left!10518 (left!10518 t!4115)))) tp!341387))))

(declare-fun b!1202435 () Bool)

(declare-fun e!771544 () Bool)

(declare-fun tp!341388 () Bool)

(assert (=> b!1202435 (= e!771544 tp!341388)))

(declare-fun b!1202434 () Bool)

(assert (=> b!1202434 (= e!771543 (and (inv!16137 (xs!6687 (left!10518 (left!10518 t!4115)))) e!771544))))

(assert (=> b!1201668 (= tp!341359 (and (inv!16138 (left!10518 (left!10518 t!4115))) e!771543))))

(assert (= (and b!1201668 ((_ is Node!3980) (left!10518 (left!10518 t!4115)))) b!1202433))

(assert (= b!1202434 b!1202435))

(assert (= (and b!1201668 ((_ is Leaf!6095) (left!10518 (left!10518 t!4115)))) b!1202434))

(declare-fun m!1378277 () Bool)

(assert (=> b!1202433 m!1378277))

(declare-fun m!1378279 () Bool)

(assert (=> b!1202433 m!1378279))

(declare-fun m!1378281 () Bool)

(assert (=> b!1202434 m!1378281))

(assert (=> b!1201668 m!1377267))

(declare-fun tp!341390 () Bool)

(declare-fun tp!341389 () Bool)

(declare-fun b!1202436 () Bool)

(declare-fun e!771545 () Bool)

(assert (=> b!1202436 (= e!771545 (and (inv!16138 (left!10518 (right!10848 (left!10518 t!4115)))) tp!341389 (inv!16138 (right!10848 (right!10848 (left!10518 t!4115)))) tp!341390))))

(declare-fun b!1202438 () Bool)

(declare-fun e!771546 () Bool)

(declare-fun tp!341391 () Bool)

(assert (=> b!1202438 (= e!771546 tp!341391)))

(declare-fun b!1202437 () Bool)

(assert (=> b!1202437 (= e!771545 (and (inv!16137 (xs!6687 (right!10848 (left!10518 t!4115)))) e!771546))))

(assert (=> b!1201668 (= tp!341360 (and (inv!16138 (right!10848 (left!10518 t!4115))) e!771545))))

(assert (= (and b!1201668 ((_ is Node!3980) (right!10848 (left!10518 t!4115)))) b!1202436))

(assert (= b!1202437 b!1202438))

(assert (= (and b!1201668 ((_ is Leaf!6095) (right!10848 (left!10518 t!4115)))) b!1202437))

(declare-fun m!1378283 () Bool)

(assert (=> b!1202436 m!1378283))

(declare-fun m!1378285 () Bool)

(assert (=> b!1202436 m!1378285))

(declare-fun m!1378287 () Bool)

(assert (=> b!1202437 m!1378287))

(assert (=> b!1201668 m!1377269))

(declare-fun b!1202439 () Bool)

(declare-fun tp!341392 () Bool)

(declare-fun tp!341393 () Bool)

(declare-fun e!771547 () Bool)

(assert (=> b!1202439 (= e!771547 (and (inv!16138 (left!10518 (left!10518 (right!10848 t!4115)))) tp!341392 (inv!16138 (right!10848 (left!10518 (right!10848 t!4115)))) tp!341393))))

(declare-fun b!1202441 () Bool)

(declare-fun e!771548 () Bool)

(declare-fun tp!341394 () Bool)

(assert (=> b!1202441 (= e!771548 tp!341394)))

(declare-fun b!1202440 () Bool)

(assert (=> b!1202440 (= e!771547 (and (inv!16137 (xs!6687 (left!10518 (right!10848 t!4115)))) e!771548))))

(assert (=> b!1201671 (= tp!341362 (and (inv!16138 (left!10518 (right!10848 t!4115))) e!771547))))

(assert (= (and b!1201671 ((_ is Node!3980) (left!10518 (right!10848 t!4115)))) b!1202439))

(assert (= b!1202440 b!1202441))

(assert (= (and b!1201671 ((_ is Leaf!6095) (left!10518 (right!10848 t!4115)))) b!1202440))

(declare-fun m!1378289 () Bool)

(assert (=> b!1202439 m!1378289))

(declare-fun m!1378291 () Bool)

(assert (=> b!1202439 m!1378291))

(declare-fun m!1378293 () Bool)

(assert (=> b!1202440 m!1378293))

(assert (=> b!1201671 m!1377273))

(declare-fun e!771549 () Bool)

(declare-fun tp!341395 () Bool)

(declare-fun tp!341396 () Bool)

(declare-fun b!1202442 () Bool)

(assert (=> b!1202442 (= e!771549 (and (inv!16138 (left!10518 (right!10848 (right!10848 t!4115)))) tp!341395 (inv!16138 (right!10848 (right!10848 (right!10848 t!4115)))) tp!341396))))

(declare-fun b!1202444 () Bool)

(declare-fun e!771550 () Bool)

(declare-fun tp!341397 () Bool)

(assert (=> b!1202444 (= e!771550 tp!341397)))

(declare-fun b!1202443 () Bool)

(assert (=> b!1202443 (= e!771549 (and (inv!16137 (xs!6687 (right!10848 (right!10848 t!4115)))) e!771550))))

(assert (=> b!1201671 (= tp!341363 (and (inv!16138 (right!10848 (right!10848 t!4115))) e!771549))))

(assert (= (and b!1201671 ((_ is Node!3980) (right!10848 (right!10848 t!4115)))) b!1202442))

(assert (= b!1202443 b!1202444))

(assert (= (and b!1201671 ((_ is Leaf!6095) (right!10848 (right!10848 t!4115)))) b!1202443))

(declare-fun m!1378295 () Bool)

(assert (=> b!1202442 m!1378295))

(declare-fun m!1378297 () Bool)

(assert (=> b!1202442 m!1378297))

(declare-fun m!1378299 () Bool)

(assert (=> b!1202443 m!1378299))

(assert (=> b!1201671 m!1377275))

(check-sat (not b!1201840) (not d!343717) (not bm!83809) (not b!1202242) (not bm!83788) (not bm!83779) (not bm!83780) (not b!1202130) (not b!1202274) (not d!343847) (not b!1202353) (not b!1202284) (not b!1202434) (not b!1202411) (not d!343755) (not b!1202384) (not b!1202366) (not b!1202243) (not b!1202285) (not d!343875) (not d!343861) (not d!343895) (not b!1202265) (not b!1202440) (not b!1202403) (not b!1202429) (not bm!83823) (not bm!83804) (not b!1202296) (not b!1202261) (not b!1202302) (not b!1202437) (not b!1202444) (not b!1202224) (not b!1202301) (not bm!83821) (not b!1202318) (not bm!83822) (not b!1202379) (not b!1202257) (not bm!83806) (not b!1202355) (not b!1202291) (not b!1202438) (not b!1202431) (not b!1202240) (not b!1202441) (not b!1202256) (not b!1202112) (not b!1202439) (not b!1202373) (not d!343831) (not bm!83810) (not b!1201668) (not b!1201872) (not b!1202238) (not bm!83769) (not b!1202129) (not d!343703) (not d!343851) (not b!1202351) (not b!1202141) (not d!343829) (not d!343857) (not b!1202360) (not b!1202310) (not b!1202315) (not b!1202394) (not b!1202216) (not b!1202378) (not b!1202281) (not b!1202279) (not d!343955) (not d!343923) (not b!1202292) (not d!343945) (not b!1202102) (not b!1202421) (not b!1202283) (not d!343827) (not d!343879) (not b!1202276) (not d!343859) (not b!1202402) (not b!1202289) (not d!343883) (not b!1202294) (not d!343865) (not b!1201822) (not b!1202273) (not b!1201820) tp_is_empty!5987 (not bm!83805) (not b!1202369) (not b!1202436) (not b!1202420) (not bm!83807) (not b!1202430) (not bm!83773) (not b!1202142) (not b!1202319) (not d!343899) (not b!1202332) (not b!1202392) (not b!1202330) (not b!1201823) (not b!1202324) (not b!1202417) (not b!1201870) (not d!343929) (not b!1202252) (not d!343953) (not d!343873) (not d!343901) (not b!1202376) (not bm!83786) (not b!1202312) (not b!1202287) (not bm!83802) (not b!1202196) (not b!1202268) (not d!343947) (not b!1201866) (not bm!83781) (not b!1202370) (not d!343951) (not b!1202372) (not b!1201839) (not b!1202386) (not b!1201671) (not bm!83817) (not b!1202443) (not bm!83820) (not b!1202293) (not b!1202375) (not d!343943) (not d!343841) (not d!343887) (not b!1202442) (not b!1202104) (not b!1202399) (not b!1201874) (not b!1202109) (not b!1202134) (not b!1202244) (not b!1201848) (not d!343915) (not b!1202241) (not b!1202365) (not b!1202400) (not b!1201876) (not b!1202361) (not b!1202282) (not bm!83784) (not b!1202435) (not b!1202433) (not b!1202138) (not b!1202413) (not b!1202280) (not b!1201868) (not d!343843) (not d!343833) (not b!1202325) (not b!1202401) (not b!1202390) (not b!1202327) (not b!1202309) (not b!1202197) (not d!343907) (not b!1202290) (not bm!83772) (not b!1202321) (not d!343889) (not b!1202297) (not bm!83787) (not b!1202195) (not b!1202419) (not b!1202432) (not b!1202350) (not b!1202329) (not b!1202388) (not bm!83819) (not b!1202418) (not b!1202125) (not b!1202357) (not b!1202247) (not b!1202269) (not bm!83800) (not d!343853) (not b!1202245) (not d!343885) (not b!1201847) (not d!343837) (not b!1202248) (not d!343835) (not b!1202194) (not b!1202103) (not b!1202229) (not b!1202307) (not b!1202277) (not b!1202382) (not bm!83771) (not b!1202105))
(check-sat)
