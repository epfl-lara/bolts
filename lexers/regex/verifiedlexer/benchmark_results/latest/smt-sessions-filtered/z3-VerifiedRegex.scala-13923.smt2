; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739164 () Bool)

(assert start!739164)

(declare-fun res!3092397 () Bool)

(declare-fun e!4597543 () Bool)

(assert (=> start!739164 (=> (not res!3092397) (not e!4597543))))

(declare-datatypes ((C!41608 0))(
  ( (C!41609 (val!31244 Int)) )
))
(declare-datatypes ((Regex!20641 0))(
  ( (ElementMatch!20641 (c!1430422 C!41608)) (Concat!29486 (regOne!41794 Regex!20641) (regTwo!41794 Regex!20641)) (EmptyExpr!20641) (Star!20641 (reg!20970 Regex!20641)) (EmptyLang!20641) (Union!20641 (regOne!41795 Regex!20641) (regTwo!41795 Regex!20641)) )
))
(declare-fun r1!6249 () Regex!20641)

(declare-fun validRegex!11059 (Regex!20641) Bool)

(assert (=> start!739164 (= res!3092397 (validRegex!11059 r1!6249))))

(assert (=> start!739164 e!4597543))

(declare-fun e!4597539 () Bool)

(assert (=> start!739164 e!4597539))

(declare-fun e!4597545 () Bool)

(assert (=> start!739164 e!4597545))

(declare-fun e!4597540 () Bool)

(assert (=> start!739164 e!4597540))

(declare-fun e!4597541 () Bool)

(assert (=> start!739164 e!4597541))

(declare-fun e!4597544 () Bool)

(assert (=> start!739164 e!4597544))

(declare-fun b!7756359 () Bool)

(declare-fun res!3092393 () Bool)

(declare-fun e!4597542 () Bool)

(assert (=> b!7756359 (=> (not res!3092393) (not e!4597542))))

(declare-datatypes ((List!73486 0))(
  ( (Nil!73362) (Cons!73362 (h!79810 C!41608) (t!388221 List!73486)) )
))
(declare-fun s1!4090 () List!73486)

(declare-fun matchR!10125 (Regex!20641 List!73486) Bool)

(assert (=> b!7756359 (= res!3092393 (matchR!10125 r1!6249 s1!4090))))

(declare-fun b!7756360 () Bool)

(declare-fun tp!2276341 () Bool)

(declare-fun tp!2276339 () Bool)

(assert (=> b!7756360 (= e!4597544 (and tp!2276341 tp!2276339))))

(declare-fun b!7756361 () Bool)

(declare-fun r2!6187 () Regex!20641)

(declare-fun s2!3712 () List!73486)

(assert (=> b!7756361 (= e!4597542 (not (matchR!10125 r2!6187 s2!3712)))))

(declare-fun b!7756362 () Bool)

(declare-fun tp_is_empty!51637 () Bool)

(declare-fun tp!2276342 () Bool)

(assert (=> b!7756362 (= e!4597540 (and tp_is_empty!51637 tp!2276342))))

(declare-fun b!7756363 () Bool)

(declare-fun res!3092394 () Bool)

(assert (=> b!7756363 (=> (not res!3092394) (not e!4597542))))

(declare-datatypes ((tuple2!69676 0))(
  ( (tuple2!69677 (_1!38141 List!73486) (_2!38141 List!73486)) )
))
(declare-datatypes ((Option!17632 0))(
  ( (None!17631) (Some!17631 (v!54766 tuple2!69676)) )
))
(declare-fun lt!2669818 () Option!17632)

(declare-fun get!26120 (Option!17632) tuple2!69676)

(assert (=> b!7756363 (= res!3092394 (= (get!26120 lt!2669818) (tuple2!69677 s1!4090 s2!3712)))))

(declare-fun b!7756364 () Bool)

(assert (=> b!7756364 (= e!4597541 tp_is_empty!51637)))

(declare-fun b!7756365 () Bool)

(declare-fun tp!2276350 () Bool)

(assert (=> b!7756365 (= e!4597541 tp!2276350)))

(declare-fun b!7756366 () Bool)

(declare-fun tp!2276351 () Bool)

(assert (=> b!7756366 (= e!4597544 tp!2276351)))

(declare-fun b!7756367 () Bool)

(assert (=> b!7756367 (= e!4597544 tp_is_empty!51637)))

(declare-fun b!7756368 () Bool)

(declare-fun tp!2276346 () Bool)

(declare-fun tp!2276348 () Bool)

(assert (=> b!7756368 (= e!4597541 (and tp!2276346 tp!2276348))))

(declare-fun b!7756369 () Bool)

(declare-fun tp!2276344 () Bool)

(declare-fun tp!2276340 () Bool)

(assert (=> b!7756369 (= e!4597541 (and tp!2276344 tp!2276340))))

(declare-fun b!7756370 () Bool)

(declare-fun tp!2276343 () Bool)

(assert (=> b!7756370 (= e!4597545 (and tp_is_empty!51637 tp!2276343))))

(declare-fun b!7756371 () Bool)

(declare-fun res!3092395 () Bool)

(assert (=> b!7756371 (=> (not res!3092395) (not e!4597543))))

(declare-fun s!14266 () List!73486)

(declare-fun ++!17822 (List!73486 List!73486) List!73486)

(assert (=> b!7756371 (= res!3092395 (= s!14266 (++!17822 s1!4090 s2!3712)))))

(declare-fun b!7756372 () Bool)

(declare-fun tp!2276347 () Bool)

(assert (=> b!7756372 (= e!4597539 (and tp_is_empty!51637 tp!2276347))))

(declare-fun b!7756373 () Bool)

(declare-fun res!3092398 () Bool)

(assert (=> b!7756373 (=> (not res!3092398) (not e!4597543))))

(assert (=> b!7756373 (= res!3092398 (validRegex!11059 r2!6187))))

(declare-fun b!7756374 () Bool)

(declare-fun tp!2276345 () Bool)

(declare-fun tp!2276349 () Bool)

(assert (=> b!7756374 (= e!4597544 (and tp!2276345 tp!2276349))))

(declare-fun b!7756375 () Bool)

(assert (=> b!7756375 (= e!4597543 e!4597542)))

(declare-fun res!3092396 () Bool)

(assert (=> b!7756375 (=> (not res!3092396) (not e!4597542))))

(declare-fun isDefined!14246 (Option!17632) Bool)

(assert (=> b!7756375 (= res!3092396 (isDefined!14246 lt!2669818))))

(declare-fun findConcatSeparation!3662 (Regex!20641 Regex!20641 List!73486 List!73486 List!73486) Option!17632)

(assert (=> b!7756375 (= lt!2669818 (findConcatSeparation!3662 r1!6249 r2!6187 Nil!73362 s!14266 s!14266))))

(assert (= (and start!739164 res!3092397) b!7756373))

(assert (= (and b!7756373 res!3092398) b!7756371))

(assert (= (and b!7756371 res!3092395) b!7756375))

(assert (= (and b!7756375 res!3092396) b!7756363))

(assert (= (and b!7756363 res!3092394) b!7756359))

(assert (= (and b!7756359 res!3092393) b!7756361))

(get-info :version)

(assert (= (and start!739164 ((_ is Cons!73362) s!14266)) b!7756372))

(assert (= (and start!739164 ((_ is Cons!73362) s2!3712)) b!7756370))

(assert (= (and start!739164 ((_ is Cons!73362) s1!4090)) b!7756362))

(assert (= (and start!739164 ((_ is ElementMatch!20641) r1!6249)) b!7756364))

(assert (= (and start!739164 ((_ is Concat!29486) r1!6249)) b!7756368))

(assert (= (and start!739164 ((_ is Star!20641) r1!6249)) b!7756365))

(assert (= (and start!739164 ((_ is Union!20641) r1!6249)) b!7756369))

(assert (= (and start!739164 ((_ is ElementMatch!20641) r2!6187)) b!7756367))

(assert (= (and start!739164 ((_ is Concat!29486) r2!6187)) b!7756360))

(assert (= (and start!739164 ((_ is Star!20641) r2!6187)) b!7756366))

(assert (= (and start!739164 ((_ is Union!20641) r2!6187)) b!7756374))

(declare-fun m!8219082 () Bool)

(assert (=> start!739164 m!8219082))

(declare-fun m!8219084 () Bool)

(assert (=> b!7756375 m!8219084))

(declare-fun m!8219086 () Bool)

(assert (=> b!7756375 m!8219086))

(declare-fun m!8219088 () Bool)

(assert (=> b!7756371 m!8219088))

(declare-fun m!8219090 () Bool)

(assert (=> b!7756373 m!8219090))

(declare-fun m!8219092 () Bool)

(assert (=> b!7756361 m!8219092))

(declare-fun m!8219094 () Bool)

(assert (=> b!7756359 m!8219094))

(declare-fun m!8219096 () Bool)

(assert (=> b!7756363 m!8219096))

(check-sat (not b!7756369) (not b!7756360) (not b!7756374) tp_is_empty!51637 (not b!7756362) (not b!7756366) (not start!739164) (not b!7756375) (not b!7756359) (not b!7756370) (not b!7756365) (not b!7756363) (not b!7756361) (not b!7756373) (not b!7756372) (not b!7756368) (not b!7756371))
(check-sat)
(get-model)

(declare-fun b!7756394 () Bool)

(declare-fun e!4597561 () Bool)

(declare-fun call!718977 () Bool)

(assert (=> b!7756394 (= e!4597561 call!718977)))

(declare-fun b!7756395 () Bool)

(declare-fun res!3092411 () Bool)

(declare-fun e!4597564 () Bool)

(assert (=> b!7756395 (=> res!3092411 e!4597564)))

(assert (=> b!7756395 (= res!3092411 (not ((_ is Concat!29486) r1!6249)))))

(declare-fun e!4597563 () Bool)

(assert (=> b!7756395 (= e!4597563 e!4597564)))

(declare-fun b!7756396 () Bool)

(declare-fun res!3092413 () Bool)

(declare-fun e!4597562 () Bool)

(assert (=> b!7756396 (=> (not res!3092413) (not e!4597562))))

(declare-fun call!718975 () Bool)

(assert (=> b!7756396 (= res!3092413 call!718975)))

(assert (=> b!7756396 (= e!4597563 e!4597562)))

(declare-fun b!7756397 () Bool)

(declare-fun e!4597560 () Bool)

(declare-fun e!4597565 () Bool)

(assert (=> b!7756397 (= e!4597560 e!4597565)))

(declare-fun c!1430427 () Bool)

(assert (=> b!7756397 (= c!1430427 ((_ is Star!20641) r1!6249))))

(declare-fun d!2343352 () Bool)

(declare-fun res!3092409 () Bool)

(assert (=> d!2343352 (=> res!3092409 e!4597560)))

(assert (=> d!2343352 (= res!3092409 ((_ is ElementMatch!20641) r1!6249))))

(assert (=> d!2343352 (= (validRegex!11059 r1!6249) e!4597560)))

(declare-fun bm!718970 () Bool)

(assert (=> bm!718970 (= call!718975 call!718977)))

(declare-fun b!7756398 () Bool)

(assert (=> b!7756398 (= e!4597565 e!4597563)))

(declare-fun c!1430428 () Bool)

(assert (=> b!7756398 (= c!1430428 ((_ is Union!20641) r1!6249))))

(declare-fun bm!718971 () Bool)

(assert (=> bm!718971 (= call!718977 (validRegex!11059 (ite c!1430427 (reg!20970 r1!6249) (ite c!1430428 (regOne!41795 r1!6249) (regTwo!41794 r1!6249)))))))

(declare-fun b!7756399 () Bool)

(assert (=> b!7756399 (= e!4597565 e!4597561)))

(declare-fun res!3092412 () Bool)

(declare-fun nullable!9095 (Regex!20641) Bool)

(assert (=> b!7756399 (= res!3092412 (not (nullable!9095 (reg!20970 r1!6249))))))

(assert (=> b!7756399 (=> (not res!3092412) (not e!4597561))))

(declare-fun bm!718972 () Bool)

(declare-fun call!718976 () Bool)

(assert (=> bm!718972 (= call!718976 (validRegex!11059 (ite c!1430428 (regTwo!41795 r1!6249) (regOne!41794 r1!6249))))))

(declare-fun b!7756400 () Bool)

(assert (=> b!7756400 (= e!4597562 call!718976)))

(declare-fun b!7756401 () Bool)

(declare-fun e!4597566 () Bool)

(assert (=> b!7756401 (= e!4597564 e!4597566)))

(declare-fun res!3092410 () Bool)

(assert (=> b!7756401 (=> (not res!3092410) (not e!4597566))))

(assert (=> b!7756401 (= res!3092410 call!718976)))

(declare-fun b!7756402 () Bool)

(assert (=> b!7756402 (= e!4597566 call!718975)))

(assert (= (and d!2343352 (not res!3092409)) b!7756397))

(assert (= (and b!7756397 c!1430427) b!7756399))

(assert (= (and b!7756397 (not c!1430427)) b!7756398))

(assert (= (and b!7756399 res!3092412) b!7756394))

(assert (= (and b!7756398 c!1430428) b!7756396))

(assert (= (and b!7756398 (not c!1430428)) b!7756395))

(assert (= (and b!7756396 res!3092413) b!7756400))

(assert (= (and b!7756395 (not res!3092411)) b!7756401))

(assert (= (and b!7756401 res!3092410) b!7756402))

(assert (= (or b!7756396 b!7756402) bm!718970))

(assert (= (or b!7756400 b!7756401) bm!718972))

(assert (= (or b!7756394 bm!718970) bm!718971))

(declare-fun m!8219098 () Bool)

(assert (=> bm!718971 m!8219098))

(declare-fun m!8219100 () Bool)

(assert (=> b!7756399 m!8219100))

(declare-fun m!8219102 () Bool)

(assert (=> bm!718972 m!8219102))

(assert (=> start!739164 d!2343352))

(declare-fun d!2343354 () Bool)

(declare-fun isEmpty!42044 (Option!17632) Bool)

(assert (=> d!2343354 (= (isDefined!14246 lt!2669818) (not (isEmpty!42044 lt!2669818)))))

(declare-fun bs!1965879 () Bool)

(assert (= bs!1965879 d!2343354))

(declare-fun m!8219104 () Bool)

(assert (=> bs!1965879 m!8219104))

(assert (=> b!7756375 d!2343354))

(declare-fun b!7756448 () Bool)

(declare-datatypes ((Unit!168344 0))(
  ( (Unit!168345) )
))
(declare-fun lt!2669827 () Unit!168344)

(declare-fun lt!2669825 () Unit!168344)

(assert (=> b!7756448 (= lt!2669827 lt!2669825)))

(assert (=> b!7756448 (= (++!17822 (++!17822 Nil!73362 (Cons!73362 (h!79810 s!14266) Nil!73362)) (t!388221 s!14266)) s!14266)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3349 (List!73486 C!41608 List!73486 List!73486) Unit!168344)

(assert (=> b!7756448 (= lt!2669825 (lemmaMoveElementToOtherListKeepsConcatEq!3349 Nil!73362 (h!79810 s!14266) (t!388221 s!14266) s!14266))))

(declare-fun e!4597601 () Option!17632)

(assert (=> b!7756448 (= e!4597601 (findConcatSeparation!3662 r1!6249 r2!6187 (++!17822 Nil!73362 (Cons!73362 (h!79810 s!14266) Nil!73362)) (t!388221 s!14266) s!14266))))

(declare-fun b!7756449 () Bool)

(declare-fun e!4597599 () Bool)

(declare-fun lt!2669826 () Option!17632)

(assert (=> b!7756449 (= e!4597599 (not (isDefined!14246 lt!2669826)))))

(declare-fun b!7756450 () Bool)

(assert (=> b!7756450 (= e!4597601 None!17631)))

(declare-fun b!7756451 () Bool)

(declare-fun res!3092443 () Bool)

(declare-fun e!4597598 () Bool)

(assert (=> b!7756451 (=> (not res!3092443) (not e!4597598))))

(assert (=> b!7756451 (= res!3092443 (matchR!10125 r2!6187 (_2!38141 (get!26120 lt!2669826))))))

(declare-fun d!2343356 () Bool)

(assert (=> d!2343356 e!4597599))

(declare-fun res!3092439 () Bool)

(assert (=> d!2343356 (=> res!3092439 e!4597599)))

(assert (=> d!2343356 (= res!3092439 e!4597598)))

(declare-fun res!3092441 () Bool)

(assert (=> d!2343356 (=> (not res!3092441) (not e!4597598))))

(assert (=> d!2343356 (= res!3092441 (isDefined!14246 lt!2669826))))

(declare-fun e!4597600 () Option!17632)

(assert (=> d!2343356 (= lt!2669826 e!4597600)))

(declare-fun c!1430439 () Bool)

(declare-fun e!4597602 () Bool)

(assert (=> d!2343356 (= c!1430439 e!4597602)))

(declare-fun res!3092442 () Bool)

(assert (=> d!2343356 (=> (not res!3092442) (not e!4597602))))

(assert (=> d!2343356 (= res!3092442 (matchR!10125 r1!6249 Nil!73362))))

(assert (=> d!2343356 (validRegex!11059 r1!6249)))

(assert (=> d!2343356 (= (findConcatSeparation!3662 r1!6249 r2!6187 Nil!73362 s!14266 s!14266) lt!2669826)))

(declare-fun b!7756452 () Bool)

(assert (=> b!7756452 (= e!4597602 (matchR!10125 r2!6187 s!14266))))

(declare-fun b!7756453 () Bool)

(assert (=> b!7756453 (= e!4597600 e!4597601)))

(declare-fun c!1430440 () Bool)

(assert (=> b!7756453 (= c!1430440 ((_ is Nil!73362) s!14266))))

(declare-fun b!7756454 () Bool)

(assert (=> b!7756454 (= e!4597600 (Some!17631 (tuple2!69677 Nil!73362 s!14266)))))

(declare-fun b!7756455 () Bool)

(assert (=> b!7756455 (= e!4597598 (= (++!17822 (_1!38141 (get!26120 lt!2669826)) (_2!38141 (get!26120 lt!2669826))) s!14266))))

(declare-fun b!7756456 () Bool)

(declare-fun res!3092440 () Bool)

(assert (=> b!7756456 (=> (not res!3092440) (not e!4597598))))

(assert (=> b!7756456 (= res!3092440 (matchR!10125 r1!6249 (_1!38141 (get!26120 lt!2669826))))))

(assert (= (and d!2343356 res!3092442) b!7756452))

(assert (= (and d!2343356 c!1430439) b!7756454))

(assert (= (and d!2343356 (not c!1430439)) b!7756453))

(assert (= (and b!7756453 c!1430440) b!7756450))

(assert (= (and b!7756453 (not c!1430440)) b!7756448))

(assert (= (and d!2343356 res!3092441) b!7756456))

(assert (= (and b!7756456 res!3092440) b!7756451))

(assert (= (and b!7756451 res!3092443) b!7756455))

(assert (= (and d!2343356 (not res!3092439)) b!7756449))

(declare-fun m!8219106 () Bool)

(assert (=> b!7756456 m!8219106))

(declare-fun m!8219108 () Bool)

(assert (=> b!7756456 m!8219108))

(assert (=> b!7756451 m!8219106))

(declare-fun m!8219110 () Bool)

(assert (=> b!7756451 m!8219110))

(declare-fun m!8219112 () Bool)

(assert (=> b!7756452 m!8219112))

(declare-fun m!8219114 () Bool)

(assert (=> b!7756449 m!8219114))

(declare-fun m!8219116 () Bool)

(assert (=> b!7756448 m!8219116))

(assert (=> b!7756448 m!8219116))

(declare-fun m!8219120 () Bool)

(assert (=> b!7756448 m!8219120))

(declare-fun m!8219122 () Bool)

(assert (=> b!7756448 m!8219122))

(assert (=> b!7756448 m!8219116))

(declare-fun m!8219126 () Bool)

(assert (=> b!7756448 m!8219126))

(assert (=> b!7756455 m!8219106))

(declare-fun m!8219130 () Bool)

(assert (=> b!7756455 m!8219130))

(assert (=> d!2343356 m!8219114))

(declare-fun m!8219132 () Bool)

(assert (=> d!2343356 m!8219132))

(assert (=> d!2343356 m!8219082))

(assert (=> b!7756375 d!2343356))

(declare-fun b!7756485 () Bool)

(declare-fun e!4597619 () Bool)

(declare-fun e!4597621 () Bool)

(assert (=> b!7756485 (= e!4597619 e!4597621)))

(declare-fun res!3092462 () Bool)

(assert (=> b!7756485 (=> (not res!3092462) (not e!4597621))))

(declare-fun lt!2669830 () Bool)

(assert (=> b!7756485 (= res!3092462 (not lt!2669830))))

(declare-fun b!7756486 () Bool)

(declare-fun e!4597618 () Bool)

(assert (=> b!7756486 (= e!4597618 (not lt!2669830))))

(declare-fun b!7756487 () Bool)

(declare-fun e!4597620 () Bool)

(declare-fun call!718989 () Bool)

(assert (=> b!7756487 (= e!4597620 (= lt!2669830 call!718989))))

(declare-fun bm!718984 () Bool)

(declare-fun isEmpty!42045 (List!73486) Bool)

(assert (=> bm!718984 (= call!718989 (isEmpty!42045 s1!4090))))

(declare-fun b!7756488 () Bool)

(declare-fun res!3092466 () Bool)

(assert (=> b!7756488 (=> res!3092466 e!4597619)))

(declare-fun e!4597622 () Bool)

(assert (=> b!7756488 (= res!3092466 e!4597622)))

(declare-fun res!3092467 () Bool)

(assert (=> b!7756488 (=> (not res!3092467) (not e!4597622))))

(assert (=> b!7756488 (= res!3092467 lt!2669830)))

(declare-fun b!7756489 () Bool)

(declare-fun e!4597617 () Bool)

(assert (=> b!7756489 (= e!4597621 e!4597617)))

(declare-fun res!3092464 () Bool)

(assert (=> b!7756489 (=> res!3092464 e!4597617)))

(assert (=> b!7756489 (= res!3092464 call!718989)))

(declare-fun b!7756490 () Bool)

(declare-fun res!3092461 () Bool)

(assert (=> b!7756490 (=> res!3092461 e!4597619)))

(assert (=> b!7756490 (= res!3092461 (not ((_ is ElementMatch!20641) r1!6249)))))

(assert (=> b!7756490 (= e!4597618 e!4597619)))

(declare-fun b!7756491 () Bool)

(declare-fun head!15847 (List!73486) C!41608)

(assert (=> b!7756491 (= e!4597622 (= (head!15847 s1!4090) (c!1430422 r1!6249)))))

(declare-fun b!7756492 () Bool)

(declare-fun e!4597623 () Bool)

(assert (=> b!7756492 (= e!4597623 (nullable!9095 r1!6249))))

(declare-fun b!7756493 () Bool)

(assert (=> b!7756493 (= e!4597617 (not (= (head!15847 s1!4090) (c!1430422 r1!6249))))))

(declare-fun b!7756494 () Bool)

(declare-fun res!3092463 () Bool)

(assert (=> b!7756494 (=> (not res!3092463) (not e!4597622))))

(declare-fun tail!15387 (List!73486) List!73486)

(assert (=> b!7756494 (= res!3092463 (isEmpty!42045 (tail!15387 s1!4090)))))

(declare-fun b!7756495 () Bool)

(declare-fun res!3092460 () Bool)

(assert (=> b!7756495 (=> res!3092460 e!4597617)))

(assert (=> b!7756495 (= res!3092460 (not (isEmpty!42045 (tail!15387 s1!4090))))))

(declare-fun b!7756496 () Bool)

(declare-fun res!3092465 () Bool)

(assert (=> b!7756496 (=> (not res!3092465) (not e!4597622))))

(assert (=> b!7756496 (= res!3092465 (not call!718989))))

(declare-fun d!2343362 () Bool)

(assert (=> d!2343362 e!4597620))

(declare-fun c!1430447 () Bool)

(assert (=> d!2343362 (= c!1430447 ((_ is EmptyExpr!20641) r1!6249))))

(assert (=> d!2343362 (= lt!2669830 e!4597623)))

(declare-fun c!1430449 () Bool)

(assert (=> d!2343362 (= c!1430449 (isEmpty!42045 s1!4090))))

(assert (=> d!2343362 (validRegex!11059 r1!6249)))

(assert (=> d!2343362 (= (matchR!10125 r1!6249 s1!4090) lt!2669830)))

(declare-fun b!7756497 () Bool)

(assert (=> b!7756497 (= e!4597620 e!4597618)))

(declare-fun c!1430448 () Bool)

(assert (=> b!7756497 (= c!1430448 ((_ is EmptyLang!20641) r1!6249))))

(declare-fun b!7756498 () Bool)

(declare-fun derivativeStep!6051 (Regex!20641 C!41608) Regex!20641)

(assert (=> b!7756498 (= e!4597623 (matchR!10125 (derivativeStep!6051 r1!6249 (head!15847 s1!4090)) (tail!15387 s1!4090)))))

(assert (= (and d!2343362 c!1430449) b!7756492))

(assert (= (and d!2343362 (not c!1430449)) b!7756498))

(assert (= (and d!2343362 c!1430447) b!7756487))

(assert (= (and d!2343362 (not c!1430447)) b!7756497))

(assert (= (and b!7756497 c!1430448) b!7756486))

(assert (= (and b!7756497 (not c!1430448)) b!7756490))

(assert (= (and b!7756490 (not res!3092461)) b!7756488))

(assert (= (and b!7756488 res!3092467) b!7756496))

(assert (= (and b!7756496 res!3092465) b!7756494))

(assert (= (and b!7756494 res!3092463) b!7756491))

(assert (= (and b!7756488 (not res!3092466)) b!7756485))

(assert (= (and b!7756485 res!3092462) b!7756489))

(assert (= (and b!7756489 (not res!3092464)) b!7756495))

(assert (= (and b!7756495 (not res!3092460)) b!7756493))

(assert (= (or b!7756487 b!7756489 b!7756496) bm!718984))

(declare-fun m!8219134 () Bool)

(assert (=> b!7756495 m!8219134))

(assert (=> b!7756495 m!8219134))

(declare-fun m!8219136 () Bool)

(assert (=> b!7756495 m!8219136))

(declare-fun m!8219138 () Bool)

(assert (=> bm!718984 m!8219138))

(declare-fun m!8219140 () Bool)

(assert (=> b!7756492 m!8219140))

(declare-fun m!8219142 () Bool)

(assert (=> b!7756491 m!8219142))

(assert (=> b!7756494 m!8219134))

(assert (=> b!7756494 m!8219134))

(assert (=> b!7756494 m!8219136))

(assert (=> b!7756493 m!8219142))

(assert (=> b!7756498 m!8219142))

(assert (=> b!7756498 m!8219142))

(declare-fun m!8219144 () Bool)

(assert (=> b!7756498 m!8219144))

(assert (=> b!7756498 m!8219134))

(assert (=> b!7756498 m!8219144))

(assert (=> b!7756498 m!8219134))

(declare-fun m!8219146 () Bool)

(assert (=> b!7756498 m!8219146))

(assert (=> d!2343362 m!8219138))

(assert (=> d!2343362 m!8219082))

(assert (=> b!7756359 d!2343362))

(declare-fun b!7756501 () Bool)

(declare-fun e!4597625 () Bool)

(declare-fun call!718992 () Bool)

(assert (=> b!7756501 (= e!4597625 call!718992)))

(declare-fun b!7756502 () Bool)

(declare-fun res!3092470 () Bool)

(declare-fun e!4597628 () Bool)

(assert (=> b!7756502 (=> res!3092470 e!4597628)))

(assert (=> b!7756502 (= res!3092470 (not ((_ is Concat!29486) r2!6187)))))

(declare-fun e!4597627 () Bool)

(assert (=> b!7756502 (= e!4597627 e!4597628)))

(declare-fun b!7756504 () Bool)

(declare-fun res!3092472 () Bool)

(declare-fun e!4597626 () Bool)

(assert (=> b!7756504 (=> (not res!3092472) (not e!4597626))))

(declare-fun call!718990 () Bool)

(assert (=> b!7756504 (= res!3092472 call!718990)))

(assert (=> b!7756504 (= e!4597627 e!4597626)))

(declare-fun b!7756506 () Bool)

(declare-fun e!4597624 () Bool)

(declare-fun e!4597629 () Bool)

(assert (=> b!7756506 (= e!4597624 e!4597629)))

(declare-fun c!1430450 () Bool)

(assert (=> b!7756506 (= c!1430450 ((_ is Star!20641) r2!6187))))

(declare-fun d!2343364 () Bool)

(declare-fun res!3092468 () Bool)

(assert (=> d!2343364 (=> res!3092468 e!4597624)))

(assert (=> d!2343364 (= res!3092468 ((_ is ElementMatch!20641) r2!6187))))

(assert (=> d!2343364 (= (validRegex!11059 r2!6187) e!4597624)))

(declare-fun bm!718985 () Bool)

(assert (=> bm!718985 (= call!718990 call!718992)))

(declare-fun b!7756507 () Bool)

(assert (=> b!7756507 (= e!4597629 e!4597627)))

(declare-fun c!1430451 () Bool)

(assert (=> b!7756507 (= c!1430451 ((_ is Union!20641) r2!6187))))

(declare-fun bm!718986 () Bool)

(assert (=> bm!718986 (= call!718992 (validRegex!11059 (ite c!1430450 (reg!20970 r2!6187) (ite c!1430451 (regOne!41795 r2!6187) (regTwo!41794 r2!6187)))))))

(declare-fun b!7756508 () Bool)

(assert (=> b!7756508 (= e!4597629 e!4597625)))

(declare-fun res!3092471 () Bool)

(assert (=> b!7756508 (= res!3092471 (not (nullable!9095 (reg!20970 r2!6187))))))

(assert (=> b!7756508 (=> (not res!3092471) (not e!4597625))))

(declare-fun bm!718987 () Bool)

(declare-fun call!718991 () Bool)

(assert (=> bm!718987 (= call!718991 (validRegex!11059 (ite c!1430451 (regTwo!41795 r2!6187) (regOne!41794 r2!6187))))))

(declare-fun b!7756509 () Bool)

(assert (=> b!7756509 (= e!4597626 call!718991)))

(declare-fun b!7756510 () Bool)

(declare-fun e!4597630 () Bool)

(assert (=> b!7756510 (= e!4597628 e!4597630)))

(declare-fun res!3092469 () Bool)

(assert (=> b!7756510 (=> (not res!3092469) (not e!4597630))))

(assert (=> b!7756510 (= res!3092469 call!718991)))

(declare-fun b!7756511 () Bool)

(assert (=> b!7756511 (= e!4597630 call!718990)))

(assert (= (and d!2343364 (not res!3092468)) b!7756506))

(assert (= (and b!7756506 c!1430450) b!7756508))

(assert (= (and b!7756506 (not c!1430450)) b!7756507))

(assert (= (and b!7756508 res!3092471) b!7756501))

(assert (= (and b!7756507 c!1430451) b!7756504))

(assert (= (and b!7756507 (not c!1430451)) b!7756502))

(assert (= (and b!7756504 res!3092472) b!7756509))

(assert (= (and b!7756502 (not res!3092470)) b!7756510))

(assert (= (and b!7756510 res!3092469) b!7756511))

(assert (= (or b!7756504 b!7756511) bm!718985))

(assert (= (or b!7756509 b!7756510) bm!718987))

(assert (= (or b!7756501 bm!718985) bm!718986))

(declare-fun m!8219148 () Bool)

(assert (=> bm!718986 m!8219148))

(declare-fun m!8219150 () Bool)

(assert (=> b!7756508 m!8219150))

(declare-fun m!8219152 () Bool)

(assert (=> bm!718987 m!8219152))

(assert (=> b!7756373 d!2343364))

(declare-fun d!2343366 () Bool)

(assert (=> d!2343366 (= (get!26120 lt!2669818) (v!54766 lt!2669818))))

(assert (=> b!7756363 d!2343366))

(declare-fun b!7756520 () Bool)

(declare-fun e!4597637 () Bool)

(declare-fun e!4597639 () Bool)

(assert (=> b!7756520 (= e!4597637 e!4597639)))

(declare-fun res!3092475 () Bool)

(assert (=> b!7756520 (=> (not res!3092475) (not e!4597639))))

(declare-fun lt!2669833 () Bool)

(assert (=> b!7756520 (= res!3092475 (not lt!2669833))))

(declare-fun b!7756521 () Bool)

(declare-fun e!4597636 () Bool)

(assert (=> b!7756521 (= e!4597636 (not lt!2669833))))

(declare-fun b!7756522 () Bool)

(declare-fun e!4597638 () Bool)

(declare-fun call!718993 () Bool)

(assert (=> b!7756522 (= e!4597638 (= lt!2669833 call!718993))))

(declare-fun bm!718988 () Bool)

(assert (=> bm!718988 (= call!718993 (isEmpty!42045 s2!3712))))

(declare-fun b!7756523 () Bool)

(declare-fun res!3092479 () Bool)

(assert (=> b!7756523 (=> res!3092479 e!4597637)))

(declare-fun e!4597641 () Bool)

(assert (=> b!7756523 (= res!3092479 e!4597641)))

(declare-fun res!3092480 () Bool)

(assert (=> b!7756523 (=> (not res!3092480) (not e!4597641))))

(assert (=> b!7756523 (= res!3092480 lt!2669833)))

(declare-fun b!7756524 () Bool)

(declare-fun e!4597635 () Bool)

(assert (=> b!7756524 (= e!4597639 e!4597635)))

(declare-fun res!3092477 () Bool)

(assert (=> b!7756524 (=> res!3092477 e!4597635)))

(assert (=> b!7756524 (= res!3092477 call!718993)))

(declare-fun b!7756525 () Bool)

(declare-fun res!3092474 () Bool)

(assert (=> b!7756525 (=> res!3092474 e!4597637)))

(assert (=> b!7756525 (= res!3092474 (not ((_ is ElementMatch!20641) r2!6187)))))

(assert (=> b!7756525 (= e!4597636 e!4597637)))

(declare-fun b!7756526 () Bool)

(assert (=> b!7756526 (= e!4597641 (= (head!15847 s2!3712) (c!1430422 r2!6187)))))

(declare-fun b!7756527 () Bool)

(declare-fun e!4597643 () Bool)

(assert (=> b!7756527 (= e!4597643 (nullable!9095 r2!6187))))

(declare-fun b!7756528 () Bool)

(assert (=> b!7756528 (= e!4597635 (not (= (head!15847 s2!3712) (c!1430422 r2!6187))))))

(declare-fun b!7756529 () Bool)

(declare-fun res!3092476 () Bool)

(assert (=> b!7756529 (=> (not res!3092476) (not e!4597641))))

(assert (=> b!7756529 (= res!3092476 (isEmpty!42045 (tail!15387 s2!3712)))))

(declare-fun b!7756530 () Bool)

(declare-fun res!3092473 () Bool)

(assert (=> b!7756530 (=> res!3092473 e!4597635)))

(assert (=> b!7756530 (= res!3092473 (not (isEmpty!42045 (tail!15387 s2!3712))))))

(declare-fun b!7756531 () Bool)

(declare-fun res!3092478 () Bool)

(assert (=> b!7756531 (=> (not res!3092478) (not e!4597641))))

(assert (=> b!7756531 (= res!3092478 (not call!718993))))

(declare-fun d!2343368 () Bool)

(assert (=> d!2343368 e!4597638))

(declare-fun c!1430456 () Bool)

(assert (=> d!2343368 (= c!1430456 ((_ is EmptyExpr!20641) r2!6187))))

(assert (=> d!2343368 (= lt!2669833 e!4597643)))

(declare-fun c!1430458 () Bool)

(assert (=> d!2343368 (= c!1430458 (isEmpty!42045 s2!3712))))

(assert (=> d!2343368 (validRegex!11059 r2!6187)))

(assert (=> d!2343368 (= (matchR!10125 r2!6187 s2!3712) lt!2669833)))

(declare-fun b!7756532 () Bool)

(assert (=> b!7756532 (= e!4597638 e!4597636)))

(declare-fun c!1430457 () Bool)

(assert (=> b!7756532 (= c!1430457 ((_ is EmptyLang!20641) r2!6187))))

(declare-fun b!7756533 () Bool)

(assert (=> b!7756533 (= e!4597643 (matchR!10125 (derivativeStep!6051 r2!6187 (head!15847 s2!3712)) (tail!15387 s2!3712)))))

(assert (= (and d!2343368 c!1430458) b!7756527))

(assert (= (and d!2343368 (not c!1430458)) b!7756533))

(assert (= (and d!2343368 c!1430456) b!7756522))

(assert (= (and d!2343368 (not c!1430456)) b!7756532))

(assert (= (and b!7756532 c!1430457) b!7756521))

(assert (= (and b!7756532 (not c!1430457)) b!7756525))

(assert (= (and b!7756525 (not res!3092474)) b!7756523))

(assert (= (and b!7756523 res!3092480) b!7756531))

(assert (= (and b!7756531 res!3092478) b!7756529))

(assert (= (and b!7756529 res!3092476) b!7756526))

(assert (= (and b!7756523 (not res!3092479)) b!7756520))

(assert (= (and b!7756520 res!3092475) b!7756524))

(assert (= (and b!7756524 (not res!3092477)) b!7756530))

(assert (= (and b!7756530 (not res!3092473)) b!7756528))

(assert (= (or b!7756522 b!7756524 b!7756531) bm!718988))

(declare-fun m!8219154 () Bool)

(assert (=> b!7756530 m!8219154))

(assert (=> b!7756530 m!8219154))

(declare-fun m!8219156 () Bool)

(assert (=> b!7756530 m!8219156))

(declare-fun m!8219158 () Bool)

(assert (=> bm!718988 m!8219158))

(declare-fun m!8219160 () Bool)

(assert (=> b!7756527 m!8219160))

(declare-fun m!8219162 () Bool)

(assert (=> b!7756526 m!8219162))

(assert (=> b!7756529 m!8219154))

(assert (=> b!7756529 m!8219154))

(assert (=> b!7756529 m!8219156))

(assert (=> b!7756528 m!8219162))

(assert (=> b!7756533 m!8219162))

(assert (=> b!7756533 m!8219162))

(declare-fun m!8219164 () Bool)

(assert (=> b!7756533 m!8219164))

(assert (=> b!7756533 m!8219154))

(assert (=> b!7756533 m!8219164))

(assert (=> b!7756533 m!8219154))

(declare-fun m!8219166 () Bool)

(assert (=> b!7756533 m!8219166))

(assert (=> d!2343368 m!8219158))

(assert (=> d!2343368 m!8219090))

(assert (=> b!7756361 d!2343368))

(declare-fun d!2343370 () Bool)

(declare-fun e!4597656 () Bool)

(assert (=> d!2343370 e!4597656))

(declare-fun res!3092501 () Bool)

(assert (=> d!2343370 (=> (not res!3092501) (not e!4597656))))

(declare-fun lt!2669836 () List!73486)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15564 (List!73486) (InoxSet C!41608))

(assert (=> d!2343370 (= res!3092501 (= (content!15564 lt!2669836) ((_ map or) (content!15564 s1!4090) (content!15564 s2!3712))))))

(declare-fun e!4597657 () List!73486)

(assert (=> d!2343370 (= lt!2669836 e!4597657)))

(declare-fun c!1430463 () Bool)

(assert (=> d!2343370 (= c!1430463 ((_ is Nil!73362) s1!4090))))

(assert (=> d!2343370 (= (++!17822 s1!4090 s2!3712) lt!2669836)))

(declare-fun b!7756559 () Bool)

(assert (=> b!7756559 (= e!4597657 (Cons!73362 (h!79810 s1!4090) (++!17822 (t!388221 s1!4090) s2!3712)))))

(declare-fun b!7756561 () Bool)

(assert (=> b!7756561 (= e!4597656 (or (not (= s2!3712 Nil!73362)) (= lt!2669836 s1!4090)))))

(declare-fun b!7756558 () Bool)

(assert (=> b!7756558 (= e!4597657 s2!3712)))

(declare-fun b!7756560 () Bool)

(declare-fun res!3092502 () Bool)

(assert (=> b!7756560 (=> (not res!3092502) (not e!4597656))))

(declare-fun size!42667 (List!73486) Int)

(assert (=> b!7756560 (= res!3092502 (= (size!42667 lt!2669836) (+ (size!42667 s1!4090) (size!42667 s2!3712))))))

(assert (= (and d!2343370 c!1430463) b!7756558))

(assert (= (and d!2343370 (not c!1430463)) b!7756559))

(assert (= (and d!2343370 res!3092501) b!7756560))

(assert (= (and b!7756560 res!3092502) b!7756561))

(declare-fun m!8219168 () Bool)

(assert (=> d!2343370 m!8219168))

(declare-fun m!8219170 () Bool)

(assert (=> d!2343370 m!8219170))

(declare-fun m!8219172 () Bool)

(assert (=> d!2343370 m!8219172))

(declare-fun m!8219174 () Bool)

(assert (=> b!7756559 m!8219174))

(declare-fun m!8219176 () Bool)

(assert (=> b!7756560 m!8219176))

(declare-fun m!8219178 () Bool)

(assert (=> b!7756560 m!8219178))

(declare-fun m!8219180 () Bool)

(assert (=> b!7756560 m!8219180))

(assert (=> b!7756371 d!2343370))

(declare-fun b!7756572 () Bool)

(declare-fun e!4597660 () Bool)

(assert (=> b!7756572 (= e!4597660 tp_is_empty!51637)))

(declare-fun b!7756573 () Bool)

(declare-fun tp!2276363 () Bool)

(declare-fun tp!2276364 () Bool)

(assert (=> b!7756573 (= e!4597660 (and tp!2276363 tp!2276364))))

(declare-fun b!7756574 () Bool)

(declare-fun tp!2276362 () Bool)

(assert (=> b!7756574 (= e!4597660 tp!2276362)))

(declare-fun b!7756575 () Bool)

(declare-fun tp!2276365 () Bool)

(declare-fun tp!2276366 () Bool)

(assert (=> b!7756575 (= e!4597660 (and tp!2276365 tp!2276366))))

(assert (=> b!7756374 (= tp!2276345 e!4597660)))

(assert (= (and b!7756374 ((_ is ElementMatch!20641) (regOne!41795 r2!6187))) b!7756572))

(assert (= (and b!7756374 ((_ is Concat!29486) (regOne!41795 r2!6187))) b!7756573))

(assert (= (and b!7756374 ((_ is Star!20641) (regOne!41795 r2!6187))) b!7756574))

(assert (= (and b!7756374 ((_ is Union!20641) (regOne!41795 r2!6187))) b!7756575))

(declare-fun b!7756576 () Bool)

(declare-fun e!4597661 () Bool)

(assert (=> b!7756576 (= e!4597661 tp_is_empty!51637)))

(declare-fun b!7756577 () Bool)

(declare-fun tp!2276368 () Bool)

(declare-fun tp!2276369 () Bool)

(assert (=> b!7756577 (= e!4597661 (and tp!2276368 tp!2276369))))

(declare-fun b!7756578 () Bool)

(declare-fun tp!2276367 () Bool)

(assert (=> b!7756578 (= e!4597661 tp!2276367)))

(declare-fun b!7756579 () Bool)

(declare-fun tp!2276370 () Bool)

(declare-fun tp!2276371 () Bool)

(assert (=> b!7756579 (= e!4597661 (and tp!2276370 tp!2276371))))

(assert (=> b!7756374 (= tp!2276349 e!4597661)))

(assert (= (and b!7756374 ((_ is ElementMatch!20641) (regTwo!41795 r2!6187))) b!7756576))

(assert (= (and b!7756374 ((_ is Concat!29486) (regTwo!41795 r2!6187))) b!7756577))

(assert (= (and b!7756374 ((_ is Star!20641) (regTwo!41795 r2!6187))) b!7756578))

(assert (= (and b!7756374 ((_ is Union!20641) (regTwo!41795 r2!6187))) b!7756579))

(declare-fun b!7756580 () Bool)

(declare-fun e!4597662 () Bool)

(assert (=> b!7756580 (= e!4597662 tp_is_empty!51637)))

(declare-fun b!7756581 () Bool)

(declare-fun tp!2276373 () Bool)

(declare-fun tp!2276374 () Bool)

(assert (=> b!7756581 (= e!4597662 (and tp!2276373 tp!2276374))))

(declare-fun b!7756582 () Bool)

(declare-fun tp!2276372 () Bool)

(assert (=> b!7756582 (= e!4597662 tp!2276372)))

(declare-fun b!7756583 () Bool)

(declare-fun tp!2276375 () Bool)

(declare-fun tp!2276376 () Bool)

(assert (=> b!7756583 (= e!4597662 (and tp!2276375 tp!2276376))))

(assert (=> b!7756369 (= tp!2276344 e!4597662)))

(assert (= (and b!7756369 ((_ is ElementMatch!20641) (regOne!41795 r1!6249))) b!7756580))

(assert (= (and b!7756369 ((_ is Concat!29486) (regOne!41795 r1!6249))) b!7756581))

(assert (= (and b!7756369 ((_ is Star!20641) (regOne!41795 r1!6249))) b!7756582))

(assert (= (and b!7756369 ((_ is Union!20641) (regOne!41795 r1!6249))) b!7756583))

(declare-fun b!7756584 () Bool)

(declare-fun e!4597663 () Bool)

(assert (=> b!7756584 (= e!4597663 tp_is_empty!51637)))

(declare-fun b!7756585 () Bool)

(declare-fun tp!2276378 () Bool)

(declare-fun tp!2276379 () Bool)

(assert (=> b!7756585 (= e!4597663 (and tp!2276378 tp!2276379))))

(declare-fun b!7756586 () Bool)

(declare-fun tp!2276377 () Bool)

(assert (=> b!7756586 (= e!4597663 tp!2276377)))

(declare-fun b!7756587 () Bool)

(declare-fun tp!2276380 () Bool)

(declare-fun tp!2276381 () Bool)

(assert (=> b!7756587 (= e!4597663 (and tp!2276380 tp!2276381))))

(assert (=> b!7756369 (= tp!2276340 e!4597663)))

(assert (= (and b!7756369 ((_ is ElementMatch!20641) (regTwo!41795 r1!6249))) b!7756584))

(assert (= (and b!7756369 ((_ is Concat!29486) (regTwo!41795 r1!6249))) b!7756585))

(assert (= (and b!7756369 ((_ is Star!20641) (regTwo!41795 r1!6249))) b!7756586))

(assert (= (and b!7756369 ((_ is Union!20641) (regTwo!41795 r1!6249))) b!7756587))

(declare-fun b!7756592 () Bool)

(declare-fun e!4597666 () Bool)

(declare-fun tp!2276384 () Bool)

(assert (=> b!7756592 (= e!4597666 (and tp_is_empty!51637 tp!2276384))))

(assert (=> b!7756362 (= tp!2276342 e!4597666)))

(assert (= (and b!7756362 ((_ is Cons!73362) (t!388221 s1!4090))) b!7756592))

(declare-fun b!7756593 () Bool)

(declare-fun e!4597667 () Bool)

(assert (=> b!7756593 (= e!4597667 tp_is_empty!51637)))

(declare-fun b!7756594 () Bool)

(declare-fun tp!2276386 () Bool)

(declare-fun tp!2276387 () Bool)

(assert (=> b!7756594 (= e!4597667 (and tp!2276386 tp!2276387))))

(declare-fun b!7756595 () Bool)

(declare-fun tp!2276385 () Bool)

(assert (=> b!7756595 (= e!4597667 tp!2276385)))

(declare-fun b!7756596 () Bool)

(declare-fun tp!2276388 () Bool)

(declare-fun tp!2276389 () Bool)

(assert (=> b!7756596 (= e!4597667 (and tp!2276388 tp!2276389))))

(assert (=> b!7756368 (= tp!2276346 e!4597667)))

(assert (= (and b!7756368 ((_ is ElementMatch!20641) (regOne!41794 r1!6249))) b!7756593))

(assert (= (and b!7756368 ((_ is Concat!29486) (regOne!41794 r1!6249))) b!7756594))

(assert (= (and b!7756368 ((_ is Star!20641) (regOne!41794 r1!6249))) b!7756595))

(assert (= (and b!7756368 ((_ is Union!20641) (regOne!41794 r1!6249))) b!7756596))

(declare-fun b!7756597 () Bool)

(declare-fun e!4597668 () Bool)

(assert (=> b!7756597 (= e!4597668 tp_is_empty!51637)))

(declare-fun b!7756598 () Bool)

(declare-fun tp!2276391 () Bool)

(declare-fun tp!2276392 () Bool)

(assert (=> b!7756598 (= e!4597668 (and tp!2276391 tp!2276392))))

(declare-fun b!7756599 () Bool)

(declare-fun tp!2276390 () Bool)

(assert (=> b!7756599 (= e!4597668 tp!2276390)))

(declare-fun b!7756600 () Bool)

(declare-fun tp!2276393 () Bool)

(declare-fun tp!2276394 () Bool)

(assert (=> b!7756600 (= e!4597668 (and tp!2276393 tp!2276394))))

(assert (=> b!7756368 (= tp!2276348 e!4597668)))

(assert (= (and b!7756368 ((_ is ElementMatch!20641) (regTwo!41794 r1!6249))) b!7756597))

(assert (= (and b!7756368 ((_ is Concat!29486) (regTwo!41794 r1!6249))) b!7756598))

(assert (= (and b!7756368 ((_ is Star!20641) (regTwo!41794 r1!6249))) b!7756599))

(assert (= (and b!7756368 ((_ is Union!20641) (regTwo!41794 r1!6249))) b!7756600))

(declare-fun b!7756601 () Bool)

(declare-fun e!4597669 () Bool)

(assert (=> b!7756601 (= e!4597669 tp_is_empty!51637)))

(declare-fun b!7756602 () Bool)

(declare-fun tp!2276396 () Bool)

(declare-fun tp!2276397 () Bool)

(assert (=> b!7756602 (= e!4597669 (and tp!2276396 tp!2276397))))

(declare-fun b!7756603 () Bool)

(declare-fun tp!2276395 () Bool)

(assert (=> b!7756603 (= e!4597669 tp!2276395)))

(declare-fun b!7756604 () Bool)

(declare-fun tp!2276398 () Bool)

(declare-fun tp!2276399 () Bool)

(assert (=> b!7756604 (= e!4597669 (and tp!2276398 tp!2276399))))

(assert (=> b!7756366 (= tp!2276351 e!4597669)))

(assert (= (and b!7756366 ((_ is ElementMatch!20641) (reg!20970 r2!6187))) b!7756601))

(assert (= (and b!7756366 ((_ is Concat!29486) (reg!20970 r2!6187))) b!7756602))

(assert (= (and b!7756366 ((_ is Star!20641) (reg!20970 r2!6187))) b!7756603))

(assert (= (and b!7756366 ((_ is Union!20641) (reg!20970 r2!6187))) b!7756604))

(declare-fun b!7756605 () Bool)

(declare-fun e!4597670 () Bool)

(declare-fun tp!2276400 () Bool)

(assert (=> b!7756605 (= e!4597670 (and tp_is_empty!51637 tp!2276400))))

(assert (=> b!7756372 (= tp!2276347 e!4597670)))

(assert (= (and b!7756372 ((_ is Cons!73362) (t!388221 s!14266))) b!7756605))

(declare-fun b!7756606 () Bool)

(declare-fun e!4597671 () Bool)

(declare-fun tp!2276401 () Bool)

(assert (=> b!7756606 (= e!4597671 (and tp_is_empty!51637 tp!2276401))))

(assert (=> b!7756370 (= tp!2276343 e!4597671)))

(assert (= (and b!7756370 ((_ is Cons!73362) (t!388221 s2!3712))) b!7756606))

(declare-fun b!7756607 () Bool)

(declare-fun e!4597672 () Bool)

(assert (=> b!7756607 (= e!4597672 tp_is_empty!51637)))

(declare-fun b!7756608 () Bool)

(declare-fun tp!2276403 () Bool)

(declare-fun tp!2276404 () Bool)

(assert (=> b!7756608 (= e!4597672 (and tp!2276403 tp!2276404))))

(declare-fun b!7756609 () Bool)

(declare-fun tp!2276402 () Bool)

(assert (=> b!7756609 (= e!4597672 tp!2276402)))

(declare-fun b!7756610 () Bool)

(declare-fun tp!2276405 () Bool)

(declare-fun tp!2276406 () Bool)

(assert (=> b!7756610 (= e!4597672 (and tp!2276405 tp!2276406))))

(assert (=> b!7756365 (= tp!2276350 e!4597672)))

(assert (= (and b!7756365 ((_ is ElementMatch!20641) (reg!20970 r1!6249))) b!7756607))

(assert (= (and b!7756365 ((_ is Concat!29486) (reg!20970 r1!6249))) b!7756608))

(assert (= (and b!7756365 ((_ is Star!20641) (reg!20970 r1!6249))) b!7756609))

(assert (= (and b!7756365 ((_ is Union!20641) (reg!20970 r1!6249))) b!7756610))

(declare-fun b!7756611 () Bool)

(declare-fun e!4597673 () Bool)

(assert (=> b!7756611 (= e!4597673 tp_is_empty!51637)))

(declare-fun b!7756612 () Bool)

(declare-fun tp!2276408 () Bool)

(declare-fun tp!2276409 () Bool)

(assert (=> b!7756612 (= e!4597673 (and tp!2276408 tp!2276409))))

(declare-fun b!7756613 () Bool)

(declare-fun tp!2276407 () Bool)

(assert (=> b!7756613 (= e!4597673 tp!2276407)))

(declare-fun b!7756614 () Bool)

(declare-fun tp!2276410 () Bool)

(declare-fun tp!2276411 () Bool)

(assert (=> b!7756614 (= e!4597673 (and tp!2276410 tp!2276411))))

(assert (=> b!7756360 (= tp!2276341 e!4597673)))

(assert (= (and b!7756360 ((_ is ElementMatch!20641) (regOne!41794 r2!6187))) b!7756611))

(assert (= (and b!7756360 ((_ is Concat!29486) (regOne!41794 r2!6187))) b!7756612))

(assert (= (and b!7756360 ((_ is Star!20641) (regOne!41794 r2!6187))) b!7756613))

(assert (= (and b!7756360 ((_ is Union!20641) (regOne!41794 r2!6187))) b!7756614))

(declare-fun b!7756615 () Bool)

(declare-fun e!4597674 () Bool)

(assert (=> b!7756615 (= e!4597674 tp_is_empty!51637)))

(declare-fun b!7756616 () Bool)

(declare-fun tp!2276413 () Bool)

(declare-fun tp!2276414 () Bool)

(assert (=> b!7756616 (= e!4597674 (and tp!2276413 tp!2276414))))

(declare-fun b!7756617 () Bool)

(declare-fun tp!2276412 () Bool)

(assert (=> b!7756617 (= e!4597674 tp!2276412)))

(declare-fun b!7756618 () Bool)

(declare-fun tp!2276415 () Bool)

(declare-fun tp!2276416 () Bool)

(assert (=> b!7756618 (= e!4597674 (and tp!2276415 tp!2276416))))

(assert (=> b!7756360 (= tp!2276339 e!4597674)))

(assert (= (and b!7756360 ((_ is ElementMatch!20641) (regTwo!41794 r2!6187))) b!7756615))

(assert (= (and b!7756360 ((_ is Concat!29486) (regTwo!41794 r2!6187))) b!7756616))

(assert (= (and b!7756360 ((_ is Star!20641) (regTwo!41794 r2!6187))) b!7756617))

(assert (= (and b!7756360 ((_ is Union!20641) (regTwo!41794 r2!6187))) b!7756618))

(check-sat (not b!7756594) (not d!2343370) (not b!7756583) (not b!7756596) (not b!7756587) (not b!7756455) (not b!7756529) (not b!7756598) (not bm!718972) (not bm!718988) (not b!7756577) (not bm!718987) (not b!7756599) (not b!7756533) (not b!7756560) (not b!7756609) (not b!7756527) (not b!7756574) (not b!7756573) (not b!7756581) (not d!2343354) (not d!2343368) (not b!7756605) (not d!2343356) (not b!7756606) (not b!7756526) (not b!7756610) (not b!7756498) (not b!7756585) (not b!7756559) (not b!7756448) (not b!7756493) (not b!7756608) (not b!7756579) (not b!7756399) (not b!7756491) (not b!7756508) (not b!7756452) (not bm!718984) (not b!7756495) (not b!7756618) (not b!7756612) (not b!7756451) tp_is_empty!51637 (not b!7756492) (not b!7756616) (not bm!718986) (not d!2343362) (not b!7756600) (not b!7756530) (not b!7756602) (not b!7756586) (not b!7756617) (not b!7756582) (not b!7756528) (not b!7756604) (not b!7756613) (not b!7756614) (not b!7756449) (not b!7756456) (not bm!718971) (not b!7756575) (not b!7756494) (not b!7756595) (not b!7756592) (not b!7756578) (not b!7756603))
(check-sat)
