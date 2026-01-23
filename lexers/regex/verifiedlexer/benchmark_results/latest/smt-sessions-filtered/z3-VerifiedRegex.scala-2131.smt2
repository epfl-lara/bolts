; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107248 () Bool)

(assert start!107248)

(declare-datatypes ((T!22048 0))(
  ( (T!22049 (val!3926 Int)) )
))
(declare-datatypes ((List!12105 0))(
  ( (Nil!12081) (Cons!12081 (h!17482 T!22048) (t!112521 List!12105)) )
))
(declare-fun lt!411555 () List!12105)

(declare-fun call!84013 () List!12105)

(declare-fun b!1204014 () Bool)

(declare-fun lt!411557 () Int)

(declare-fun e!772467 () List!12105)

(declare-fun ++!3105 (List!12105 List!12105) List!12105)

(declare-fun slice!497 (List!12105 Int Int) List!12105)

(assert (=> b!1204014 (= e!772467 (++!3105 (slice!497 lt!411555 0 lt!411557) call!84013))))

(declare-fun b!1204015 () Bool)

(declare-fun e!772471 () Bool)

(declare-fun e!772469 () Bool)

(assert (=> b!1204015 (= e!772471 e!772469)))

(declare-fun res!542349 () Bool)

(assert (=> b!1204015 (=> (not res!542349) (not e!772469))))

(declare-fun until!61 () Int)

(declare-fun lt!411554 () Int)

(assert (=> b!1204015 (= res!542349 (<= (- until!61 1) (+ lt!411557 lt!411554)))))

(declare-fun size!9621 (List!12105) Int)

(assert (=> b!1204015 (= lt!411557 (size!9621 lt!411555))))

(declare-fun b!1204016 () Bool)

(declare-fun e!772468 () Bool)

(assert (=> b!1204016 (= e!772468 e!772471)))

(declare-fun res!542347 () Bool)

(assert (=> b!1204016 (=> (not res!542347) (not e!772471))))

(declare-fun lt!411560 () List!12105)

(declare-fun lt!411559 () List!12105)

(declare-fun tail!1708 (List!12105) List!12105)

(assert (=> b!1204016 (= res!542347 (= (tail!1708 lt!411560) lt!411559))))

(declare-fun r!2028 () List!12105)

(assert (=> b!1204016 (= lt!411559 (++!3105 lt!411555 r!2028))))

(declare-fun l!2744 () List!12105)

(assert (=> b!1204016 (= lt!411555 (tail!1708 l!2744))))

(assert (=> b!1204016 (= lt!411560 (++!3105 l!2744 r!2028))))

(declare-fun b!1204017 () Bool)

(declare-fun e!772465 () Bool)

(declare-fun lt!411558 () List!12105)

(assert (=> b!1204017 (= e!772465 (= lt!411558 e!772467))))

(declare-fun c!200948 () Bool)

(assert (=> b!1204017 (= c!200948 (<= (- until!61 1) lt!411557))))

(declare-fun b!1204018 () Bool)

(assert (=> b!1204018 (= e!772467 call!84013)))

(declare-fun b!1204019 () Bool)

(declare-fun e!772470 () Bool)

(declare-fun tp_is_empty!6055 () Bool)

(declare-fun tp!341764 () Bool)

(assert (=> b!1204019 (= e!772470 (and tp_is_empty!6055 tp!341764))))

(declare-fun b!1204020 () Bool)

(assert (=> b!1204020 (= e!772469 (not (<= until!61 (size!9621 lt!411560))))))

(assert (=> b!1204020 e!772465))

(declare-fun c!200947 () Bool)

(assert (=> b!1204020 (= c!200947 (<= lt!411557 0))))

(assert (=> b!1204020 (= lt!411558 (slice!497 lt!411559 0 (- until!61 1)))))

(declare-datatypes ((Unit!18472 0))(
  ( (Unit!18473) )
))
(declare-fun lt!411553 () Unit!18472)

(declare-fun sliceLemma!47 (List!12105 List!12105 Int Int) Unit!18472)

(assert (=> b!1204020 (= lt!411553 (sliceLemma!47 lt!411555 r!2028 0 (- until!61 1)))))

(declare-fun b!1204021 () Bool)

(declare-fun call!84014 () List!12105)

(assert (=> b!1204021 (= e!772465 (= lt!411558 call!84014))))

(declare-fun b!1204022 () Bool)

(declare-fun e!772472 () Bool)

(assert (=> b!1204022 (= e!772472 e!772468)))

(declare-fun res!542350 () Bool)

(assert (=> b!1204022 (=> (not res!542350) (not e!772468))))

(declare-fun lt!411556 () Int)

(assert (=> b!1204022 (= res!542350 (and (<= until!61 (+ lt!411556 lt!411554)) (not (= l!2744 Nil!12081)) (not (= r!2028 Nil!12081)) (not (= until!61 0))))))

(assert (=> b!1204022 (= lt!411554 (size!9621 r!2028))))

(assert (=> b!1204022 (= lt!411556 (size!9621 l!2744))))

(declare-fun res!542348 () Bool)

(assert (=> start!107248 (=> (not res!542348) (not e!772472))))

(declare-fun from!613 () Int)

(assert (=> start!107248 (= res!542348 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107248 e!772472))

(assert (=> start!107248 true))

(assert (=> start!107248 e!772470))

(declare-fun e!772466 () Bool)

(assert (=> start!107248 e!772466))

(declare-fun b!1204023 () Bool)

(declare-fun res!542346 () Bool)

(assert (=> b!1204023 (=> (not res!542346) (not e!772471))))

(assert (=> b!1204023 (= res!542346 (and (= from!613 0) (<= 0 (- until!61 1))))))

(declare-fun b!1204024 () Bool)

(declare-fun tp!341765 () Bool)

(assert (=> b!1204024 (= e!772466 (and tp_is_empty!6055 tp!341765))))

(declare-fun bm!84008 () Bool)

(assert (=> bm!84008 (= call!84013 call!84014)))

(declare-fun bm!84009 () Bool)

(assert (=> bm!84009 (= call!84014 (slice!497 (ite c!200947 r!2028 (ite c!200948 lt!411555 r!2028)) (ite c!200947 (- lt!411557) 0) (ite c!200947 (- (- until!61 1) lt!411557) (ite c!200948 (- until!61 1) (- (- until!61 1) lt!411557)))))))

(assert (= (and start!107248 res!542348) b!1204022))

(assert (= (and b!1204022 res!542350) b!1204016))

(assert (= (and b!1204016 res!542347) b!1204023))

(assert (= (and b!1204023 res!542346) b!1204015))

(assert (= (and b!1204015 res!542349) b!1204020))

(assert (= (and b!1204020 c!200947) b!1204021))

(assert (= (and b!1204020 (not c!200947)) b!1204017))

(assert (= (and b!1204017 c!200948) b!1204018))

(assert (= (and b!1204017 (not c!200948)) b!1204014))

(assert (= (or b!1204018 b!1204014) bm!84008))

(assert (= (or b!1204021 bm!84008) bm!84009))

(get-info :version)

(assert (= (and start!107248 ((_ is Cons!12081) l!2744)) b!1204019))

(assert (= (and start!107248 ((_ is Cons!12081) r!2028)) b!1204024))

(declare-fun m!1379507 () Bool)

(assert (=> b!1204014 m!1379507))

(assert (=> b!1204014 m!1379507))

(declare-fun m!1379509 () Bool)

(assert (=> b!1204014 m!1379509))

(declare-fun m!1379511 () Bool)

(assert (=> bm!84009 m!1379511))

(declare-fun m!1379513 () Bool)

(assert (=> b!1204015 m!1379513))

(declare-fun m!1379515 () Bool)

(assert (=> b!1204016 m!1379515))

(declare-fun m!1379517 () Bool)

(assert (=> b!1204016 m!1379517))

(declare-fun m!1379519 () Bool)

(assert (=> b!1204016 m!1379519))

(declare-fun m!1379521 () Bool)

(assert (=> b!1204016 m!1379521))

(declare-fun m!1379523 () Bool)

(assert (=> b!1204020 m!1379523))

(declare-fun m!1379525 () Bool)

(assert (=> b!1204020 m!1379525))

(declare-fun m!1379527 () Bool)

(assert (=> b!1204020 m!1379527))

(declare-fun m!1379529 () Bool)

(assert (=> b!1204022 m!1379529))

(declare-fun m!1379531 () Bool)

(assert (=> b!1204022 m!1379531))

(check-sat (not bm!84009) (not b!1204022) (not b!1204014) (not b!1204015) (not b!1204024) (not b!1204019) tp_is_empty!6055 (not b!1204016) (not b!1204020))
(check-sat)
(get-model)

(declare-fun b!1204033 () Bool)

(declare-fun e!772478 () List!12105)

(assert (=> b!1204033 (= e!772478 call!84013)))

(declare-fun b!1204036 () Bool)

(declare-fun e!772477 () Bool)

(declare-fun lt!411563 () List!12105)

(assert (=> b!1204036 (= e!772477 (or (not (= call!84013 Nil!12081)) (= lt!411563 (slice!497 lt!411555 0 lt!411557))))))

(declare-fun b!1204035 () Bool)

(declare-fun res!542356 () Bool)

(assert (=> b!1204035 (=> (not res!542356) (not e!772477))))

(assert (=> b!1204035 (= res!542356 (= (size!9621 lt!411563) (+ (size!9621 (slice!497 lt!411555 0 lt!411557)) (size!9621 call!84013))))))

(declare-fun d!344190 () Bool)

(assert (=> d!344190 e!772477))

(declare-fun res!542355 () Bool)

(assert (=> d!344190 (=> (not res!542355) (not e!772477))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1701 (List!12105) (InoxSet T!22048))

(assert (=> d!344190 (= res!542355 (= (content!1701 lt!411563) ((_ map or) (content!1701 (slice!497 lt!411555 0 lt!411557)) (content!1701 call!84013))))))

(assert (=> d!344190 (= lt!411563 e!772478)))

(declare-fun c!200951 () Bool)

(assert (=> d!344190 (= c!200951 ((_ is Nil!12081) (slice!497 lt!411555 0 lt!411557)))))

(assert (=> d!344190 (= (++!3105 (slice!497 lt!411555 0 lt!411557) call!84013) lt!411563)))

(declare-fun b!1204034 () Bool)

(assert (=> b!1204034 (= e!772478 (Cons!12081 (h!17482 (slice!497 lt!411555 0 lt!411557)) (++!3105 (t!112521 (slice!497 lt!411555 0 lt!411557)) call!84013)))))

(assert (= (and d!344190 c!200951) b!1204033))

(assert (= (and d!344190 (not c!200951)) b!1204034))

(assert (= (and d!344190 res!542355) b!1204035))

(assert (= (and b!1204035 res!542356) b!1204036))

(declare-fun m!1379533 () Bool)

(assert (=> b!1204035 m!1379533))

(assert (=> b!1204035 m!1379507))

(declare-fun m!1379535 () Bool)

(assert (=> b!1204035 m!1379535))

(declare-fun m!1379537 () Bool)

(assert (=> b!1204035 m!1379537))

(declare-fun m!1379539 () Bool)

(assert (=> d!344190 m!1379539))

(assert (=> d!344190 m!1379507))

(declare-fun m!1379541 () Bool)

(assert (=> d!344190 m!1379541))

(declare-fun m!1379543 () Bool)

(assert (=> d!344190 m!1379543))

(declare-fun m!1379545 () Bool)

(assert (=> b!1204034 m!1379545))

(assert (=> b!1204014 d!344190))

(declare-fun d!344192 () Bool)

(declare-fun take!137 (List!12105 Int) List!12105)

(declare-fun drop!609 (List!12105 Int) List!12105)

(assert (=> d!344192 (= (slice!497 lt!411555 0 lt!411557) (take!137 (drop!609 lt!411555 0) (- lt!411557 0)))))

(declare-fun bs!288391 () Bool)

(assert (= bs!288391 d!344192))

(declare-fun m!1379547 () Bool)

(assert (=> bs!288391 m!1379547))

(assert (=> bs!288391 m!1379547))

(declare-fun m!1379549 () Bool)

(assert (=> bs!288391 m!1379549))

(assert (=> b!1204014 d!344192))

(declare-fun d!344194 () Bool)

(assert (=> d!344194 (= (slice!497 (ite c!200947 r!2028 (ite c!200948 lt!411555 r!2028)) (ite c!200947 (- lt!411557) 0) (ite c!200947 (- (- until!61 1) lt!411557) (ite c!200948 (- until!61 1) (- (- until!61 1) lt!411557)))) (take!137 (drop!609 (ite c!200947 r!2028 (ite c!200948 lt!411555 r!2028)) (ite c!200947 (- lt!411557) 0)) (- (ite c!200947 (- (- until!61 1) lt!411557) (ite c!200948 (- until!61 1) (- (- until!61 1) lt!411557))) (ite c!200947 (- lt!411557) 0))))))

(declare-fun bs!288392 () Bool)

(assert (= bs!288392 d!344194))

(declare-fun m!1379551 () Bool)

(assert (=> bs!288392 m!1379551))

(assert (=> bs!288392 m!1379551))

(declare-fun m!1379553 () Bool)

(assert (=> bs!288392 m!1379553))

(assert (=> bm!84009 d!344194))

(declare-fun d!344196 () Bool)

(declare-fun lt!411566 () Int)

(assert (=> d!344196 (>= lt!411566 0)))

(declare-fun e!772481 () Int)

(assert (=> d!344196 (= lt!411566 e!772481)))

(declare-fun c!200954 () Bool)

(assert (=> d!344196 (= c!200954 ((_ is Nil!12081) lt!411560))))

(assert (=> d!344196 (= (size!9621 lt!411560) lt!411566)))

(declare-fun b!1204041 () Bool)

(assert (=> b!1204041 (= e!772481 0)))

(declare-fun b!1204042 () Bool)

(assert (=> b!1204042 (= e!772481 (+ 1 (size!9621 (t!112521 lt!411560))))))

(assert (= (and d!344196 c!200954) b!1204041))

(assert (= (and d!344196 (not c!200954)) b!1204042))

(declare-fun m!1379555 () Bool)

(assert (=> b!1204042 m!1379555))

(assert (=> b!1204020 d!344196))

(declare-fun d!344200 () Bool)

(assert (=> d!344200 (= (slice!497 lt!411559 0 (- until!61 1)) (take!137 (drop!609 lt!411559 0) (- (- until!61 1) 0)))))

(declare-fun bs!288393 () Bool)

(assert (= bs!288393 d!344200))

(declare-fun m!1379557 () Bool)

(assert (=> bs!288393 m!1379557))

(assert (=> bs!288393 m!1379557))

(declare-fun m!1379559 () Bool)

(assert (=> bs!288393 m!1379559))

(assert (=> b!1204020 d!344200))

(declare-fun e!772500 () List!12105)

(declare-fun d!344202 () Bool)

(assert (=> d!344202 (= (slice!497 (++!3105 lt!411555 r!2028) 0 (- until!61 1)) e!772500)))

(declare-fun c!200967 () Bool)

(assert (=> d!344202 (= c!200967 (<= (size!9621 lt!411555) 0))))

(declare-fun lt!411575 () Unit!18472)

(declare-fun choose!7741 (List!12105 List!12105 Int Int) Unit!18472)

(assert (=> d!344202 (= lt!411575 (choose!7741 lt!411555 r!2028 0 (- until!61 1)))))

(declare-fun e!772501 () Bool)

(assert (=> d!344202 e!772501))

(declare-fun res!542365 () Bool)

(assert (=> d!344202 (=> (not res!542365) (not e!772501))))

(assert (=> d!344202 (= res!542365 (and (<= 0 0) (<= 0 (- until!61 1))))))

(assert (=> d!344202 (= (sliceLemma!47 lt!411555 r!2028 0 (- until!61 1)) lt!411575)))

(declare-fun b!1204075 () Bool)

(declare-fun e!772502 () Int)

(assert (=> b!1204075 (= e!772502 (- until!61 1))))

(declare-fun b!1204076 () Bool)

(declare-fun e!772499 () List!12105)

(assert (=> b!1204076 (= e!772500 e!772499)))

(declare-fun c!200968 () Bool)

(declare-fun call!84023 () Int)

(assert (=> b!1204076 (= c!200968 (<= (- until!61 1) call!84023))))

(declare-fun b!1204077 () Bool)

(declare-fun call!84022 () List!12105)

(assert (=> b!1204077 (= e!772499 call!84022)))

(declare-fun b!1204078 () Bool)

(assert (=> b!1204078 (= e!772502 call!84023)))

(declare-fun bm!84016 () Bool)

(assert (=> bm!84016 (= call!84023 (size!9621 lt!411555))))

(declare-fun bm!84017 () Bool)

(declare-fun call!84021 () List!12105)

(assert (=> bm!84017 (= call!84021 (slice!497 (ite c!200967 r!2028 lt!411555) (ite c!200967 (- 0 call!84023) 0) (ite c!200967 (- (- until!61 1) call!84023) e!772502)))))

(declare-fun b!1204079 () Bool)

(assert (=> b!1204079 (= e!772501 (<= (- until!61 1) (+ (size!9621 lt!411555) (size!9621 r!2028))))))

(declare-fun b!1204080 () Bool)

(assert (=> b!1204080 (= e!772500 call!84021)))

(declare-fun bm!84018 () Bool)

(declare-fun c!200969 () Bool)

(assert (=> bm!84018 (= c!200969 c!200968)))

(assert (=> bm!84018 (= call!84022 call!84021)))

(declare-fun b!1204081 () Bool)

(assert (=> b!1204081 (= e!772499 (++!3105 call!84022 (slice!497 r!2028 0 (- (- until!61 1) call!84023))))))

(assert (= (and d!344202 res!542365) b!1204079))

(assert (= (and d!344202 c!200967) b!1204080))

(assert (= (and d!344202 (not c!200967)) b!1204076))

(assert (= (and b!1204076 c!200968) b!1204077))

(assert (= (and b!1204076 (not c!200968)) b!1204081))

(assert (= (or b!1204077 b!1204081) bm!84018))

(assert (= (and bm!84018 c!200969) b!1204075))

(assert (= (and bm!84018 (not c!200969)) b!1204078))

(assert (= (or b!1204080 b!1204076 b!1204078 b!1204081) bm!84016))

(assert (= (or b!1204080 bm!84018) bm!84017))

(declare-fun m!1379589 () Bool)

(assert (=> bm!84017 m!1379589))

(declare-fun m!1379591 () Bool)

(assert (=> b!1204081 m!1379591))

(assert (=> b!1204081 m!1379591))

(declare-fun m!1379593 () Bool)

(assert (=> b!1204081 m!1379593))

(assert (=> d!344202 m!1379517))

(assert (=> d!344202 m!1379517))

(declare-fun m!1379595 () Bool)

(assert (=> d!344202 m!1379595))

(assert (=> d!344202 m!1379513))

(declare-fun m!1379597 () Bool)

(assert (=> d!344202 m!1379597))

(assert (=> bm!84016 m!1379513))

(assert (=> b!1204079 m!1379513))

(assert (=> b!1204079 m!1379529))

(assert (=> b!1204020 d!344202))

(declare-fun d!344214 () Bool)

(declare-fun lt!411576 () Int)

(assert (=> d!344214 (>= lt!411576 0)))

(declare-fun e!772503 () Int)

(assert (=> d!344214 (= lt!411576 e!772503)))

(declare-fun c!200970 () Bool)

(assert (=> d!344214 (= c!200970 ((_ is Nil!12081) lt!411555))))

(assert (=> d!344214 (= (size!9621 lt!411555) lt!411576)))

(declare-fun b!1204082 () Bool)

(assert (=> b!1204082 (= e!772503 0)))

(declare-fun b!1204083 () Bool)

(assert (=> b!1204083 (= e!772503 (+ 1 (size!9621 (t!112521 lt!411555))))))

(assert (= (and d!344214 c!200970) b!1204082))

(assert (= (and d!344214 (not c!200970)) b!1204083))

(declare-fun m!1379599 () Bool)

(assert (=> b!1204083 m!1379599))

(assert (=> b!1204015 d!344214))

(declare-fun d!344216 () Bool)

(declare-fun lt!411577 () Int)

(assert (=> d!344216 (>= lt!411577 0)))

(declare-fun e!772504 () Int)

(assert (=> d!344216 (= lt!411577 e!772504)))

(declare-fun c!200971 () Bool)

(assert (=> d!344216 (= c!200971 ((_ is Nil!12081) r!2028))))

(assert (=> d!344216 (= (size!9621 r!2028) lt!411577)))

(declare-fun b!1204084 () Bool)

(assert (=> b!1204084 (= e!772504 0)))

(declare-fun b!1204085 () Bool)

(assert (=> b!1204085 (= e!772504 (+ 1 (size!9621 (t!112521 r!2028))))))

(assert (= (and d!344216 c!200971) b!1204084))

(assert (= (and d!344216 (not c!200971)) b!1204085))

(declare-fun m!1379601 () Bool)

(assert (=> b!1204085 m!1379601))

(assert (=> b!1204022 d!344216))

(declare-fun d!344218 () Bool)

(declare-fun lt!411578 () Int)

(assert (=> d!344218 (>= lt!411578 0)))

(declare-fun e!772505 () Int)

(assert (=> d!344218 (= lt!411578 e!772505)))

(declare-fun c!200972 () Bool)

(assert (=> d!344218 (= c!200972 ((_ is Nil!12081) l!2744))))

(assert (=> d!344218 (= (size!9621 l!2744) lt!411578)))

(declare-fun b!1204086 () Bool)

(assert (=> b!1204086 (= e!772505 0)))

(declare-fun b!1204087 () Bool)

(assert (=> b!1204087 (= e!772505 (+ 1 (size!9621 (t!112521 l!2744))))))

(assert (= (and d!344218 c!200972) b!1204086))

(assert (= (and d!344218 (not c!200972)) b!1204087))

(declare-fun m!1379603 () Bool)

(assert (=> b!1204087 m!1379603))

(assert (=> b!1204022 d!344218))

(declare-fun d!344220 () Bool)

(assert (=> d!344220 (= (tail!1708 lt!411560) (t!112521 lt!411560))))

(assert (=> b!1204016 d!344220))

(declare-fun b!1204088 () Bool)

(declare-fun e!772507 () List!12105)

(assert (=> b!1204088 (= e!772507 r!2028)))

(declare-fun b!1204091 () Bool)

(declare-fun lt!411579 () List!12105)

(declare-fun e!772506 () Bool)

(assert (=> b!1204091 (= e!772506 (or (not (= r!2028 Nil!12081)) (= lt!411579 lt!411555)))))

(declare-fun b!1204090 () Bool)

(declare-fun res!542367 () Bool)

(assert (=> b!1204090 (=> (not res!542367) (not e!772506))))

(assert (=> b!1204090 (= res!542367 (= (size!9621 lt!411579) (+ (size!9621 lt!411555) (size!9621 r!2028))))))

(declare-fun d!344222 () Bool)

(assert (=> d!344222 e!772506))

(declare-fun res!542366 () Bool)

(assert (=> d!344222 (=> (not res!542366) (not e!772506))))

(assert (=> d!344222 (= res!542366 (= (content!1701 lt!411579) ((_ map or) (content!1701 lt!411555) (content!1701 r!2028))))))

(assert (=> d!344222 (= lt!411579 e!772507)))

(declare-fun c!200973 () Bool)

(assert (=> d!344222 (= c!200973 ((_ is Nil!12081) lt!411555))))

(assert (=> d!344222 (= (++!3105 lt!411555 r!2028) lt!411579)))

(declare-fun b!1204089 () Bool)

(assert (=> b!1204089 (= e!772507 (Cons!12081 (h!17482 lt!411555) (++!3105 (t!112521 lt!411555) r!2028)))))

(assert (= (and d!344222 c!200973) b!1204088))

(assert (= (and d!344222 (not c!200973)) b!1204089))

(assert (= (and d!344222 res!542366) b!1204090))

(assert (= (and b!1204090 res!542367) b!1204091))

(declare-fun m!1379605 () Bool)

(assert (=> b!1204090 m!1379605))

(assert (=> b!1204090 m!1379513))

(assert (=> b!1204090 m!1379529))

(declare-fun m!1379607 () Bool)

(assert (=> d!344222 m!1379607))

(declare-fun m!1379609 () Bool)

(assert (=> d!344222 m!1379609))

(declare-fun m!1379611 () Bool)

(assert (=> d!344222 m!1379611))

(declare-fun m!1379613 () Bool)

(assert (=> b!1204089 m!1379613))

(assert (=> b!1204016 d!344222))

(declare-fun d!344224 () Bool)

(assert (=> d!344224 (= (tail!1708 l!2744) (t!112521 l!2744))))

(assert (=> b!1204016 d!344224))

(declare-fun b!1204092 () Bool)

(declare-fun e!772509 () List!12105)

(assert (=> b!1204092 (= e!772509 r!2028)))

(declare-fun e!772508 () Bool)

(declare-fun lt!411580 () List!12105)

(declare-fun b!1204095 () Bool)

(assert (=> b!1204095 (= e!772508 (or (not (= r!2028 Nil!12081)) (= lt!411580 l!2744)))))

(declare-fun b!1204094 () Bool)

(declare-fun res!542369 () Bool)

(assert (=> b!1204094 (=> (not res!542369) (not e!772508))))

(assert (=> b!1204094 (= res!542369 (= (size!9621 lt!411580) (+ (size!9621 l!2744) (size!9621 r!2028))))))

(declare-fun d!344226 () Bool)

(assert (=> d!344226 e!772508))

(declare-fun res!542368 () Bool)

(assert (=> d!344226 (=> (not res!542368) (not e!772508))))

(assert (=> d!344226 (= res!542368 (= (content!1701 lt!411580) ((_ map or) (content!1701 l!2744) (content!1701 r!2028))))))

(assert (=> d!344226 (= lt!411580 e!772509)))

(declare-fun c!200974 () Bool)

(assert (=> d!344226 (= c!200974 ((_ is Nil!12081) l!2744))))

(assert (=> d!344226 (= (++!3105 l!2744 r!2028) lt!411580)))

(declare-fun b!1204093 () Bool)

(assert (=> b!1204093 (= e!772509 (Cons!12081 (h!17482 l!2744) (++!3105 (t!112521 l!2744) r!2028)))))

(assert (= (and d!344226 c!200974) b!1204092))

(assert (= (and d!344226 (not c!200974)) b!1204093))

(assert (= (and d!344226 res!542368) b!1204094))

(assert (= (and b!1204094 res!542369) b!1204095))

(declare-fun m!1379615 () Bool)

(assert (=> b!1204094 m!1379615))

(assert (=> b!1204094 m!1379531))

(assert (=> b!1204094 m!1379529))

(declare-fun m!1379617 () Bool)

(assert (=> d!344226 m!1379617))

(declare-fun m!1379619 () Bool)

(assert (=> d!344226 m!1379619))

(assert (=> d!344226 m!1379611))

(declare-fun m!1379621 () Bool)

(assert (=> b!1204093 m!1379621))

(assert (=> b!1204016 d!344226))

(declare-fun b!1204100 () Bool)

(declare-fun e!772512 () Bool)

(declare-fun tp!341768 () Bool)

(assert (=> b!1204100 (= e!772512 (and tp_is_empty!6055 tp!341768))))

(assert (=> b!1204024 (= tp!341765 e!772512)))

(assert (= (and b!1204024 ((_ is Cons!12081) (t!112521 r!2028))) b!1204100))

(declare-fun b!1204101 () Bool)

(declare-fun e!772513 () Bool)

(declare-fun tp!341769 () Bool)

(assert (=> b!1204101 (= e!772513 (and tp_is_empty!6055 tp!341769))))

(assert (=> b!1204019 (= tp!341764 e!772513)))

(assert (= (and b!1204019 ((_ is Cons!12081) (t!112521 l!2744))) b!1204101))

(check-sat (not b!1204101) (not b!1204089) (not b!1204093) (not b!1204087) (not d!344226) (not b!1204081) (not d!344200) (not d!344222) (not bm!84016) (not d!344202) (not b!1204035) (not d!344194) (not b!1204034) (not bm!84017) (not d!344190) (not b!1204100) (not b!1204079) (not b!1204042) (not b!1204083) (not b!1204094) (not b!1204085) (not b!1204090) (not d!344192) tp_is_empty!6055)
(check-sat)
