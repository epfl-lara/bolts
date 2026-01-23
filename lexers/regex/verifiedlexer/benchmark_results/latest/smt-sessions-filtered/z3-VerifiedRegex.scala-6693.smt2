; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350978 () Bool)

(assert start!350978)

(declare-fun b!3730339 () Bool)

(declare-fun res!1514538 () Bool)

(declare-fun e!2308036 () Bool)

(assert (=> b!3730339 (=> (not res!1514538) (not e!2308036))))

(declare-datatypes ((C!22036 0))(
  ( (C!22037 (val!13066 Int)) )
))
(declare-datatypes ((Regex!10925 0))(
  ( (ElementMatch!10925 (c!645747 C!22036)) (Concat!17196 (regOne!22362 Regex!10925) (regTwo!22362 Regex!10925)) (EmptyExpr!10925) (Star!10925 (reg!11254 Regex!10925)) (EmptyLang!10925) (Union!10925 (regOne!22363 Regex!10925) (regTwo!22363 Regex!10925)) )
))
(declare-fun r!26968 () Regex!10925)

(declare-fun nullable!3833 (Regex!10925) Bool)

(assert (=> b!3730339 (= res!1514538 (nullable!3833 (regOne!22362 r!26968)))))

(declare-fun b!3730340 () Bool)

(declare-fun res!1514537 () Bool)

(assert (=> b!3730340 (=> (not res!1514537) (not e!2308036))))

(get-info :version)

(assert (=> b!3730340 (= res!1514537 (and (not ((_ is EmptyExpr!10925) r!26968)) (not ((_ is EmptyLang!10925) r!26968)) (not ((_ is ElementMatch!10925) r!26968)) (not ((_ is Union!10925) r!26968)) (not ((_ is Star!10925) r!26968))))))

(declare-fun b!3730341 () Bool)

(declare-fun res!1514539 () Bool)

(assert (=> b!3730341 (=> (not res!1514539) (not e!2308036))))

(declare-fun cNot!42 () C!22036)

(declare-datatypes ((List!39806 0))(
  ( (Nil!39682) (Cons!39682 (h!45102 C!22036) (t!302489 List!39806)) )
))
(declare-fun contains!8018 (List!39806 C!22036) Bool)

(declare-fun usedCharacters!1188 (Regex!10925) List!39806)

(assert (=> b!3730341 (= res!1514539 (not (contains!8018 (usedCharacters!1188 r!26968) cNot!42)))))

(declare-fun b!3730343 () Bool)

(declare-fun e!2308035 () Bool)

(declare-fun tp!1135131 () Bool)

(declare-fun tp!1135134 () Bool)

(assert (=> b!3730343 (= e!2308035 (and tp!1135131 tp!1135134))))

(declare-fun b!3730344 () Bool)

(declare-fun tp_is_empty!18865 () Bool)

(assert (=> b!3730344 (= e!2308035 tp_is_empty!18865)))

(declare-fun b!3730345 () Bool)

(declare-fun tp!1135130 () Bool)

(declare-fun tp!1135133 () Bool)

(assert (=> b!3730345 (= e!2308035 (and tp!1135130 tp!1135133))))

(declare-fun b!3730346 () Bool)

(declare-fun validRegex!5032 (Regex!10925) Bool)

(assert (=> b!3730346 (= e!2308036 (not (validRegex!5032 (regOne!22362 r!26968))))))

(declare-fun res!1514540 () Bool)

(assert (=> start!350978 (=> (not res!1514540) (not e!2308036))))

(assert (=> start!350978 (= res!1514540 (validRegex!5032 r!26968))))

(assert (=> start!350978 e!2308036))

(assert (=> start!350978 e!2308035))

(assert (=> start!350978 tp_is_empty!18865))

(declare-fun b!3730342 () Bool)

(declare-fun tp!1135132 () Bool)

(assert (=> b!3730342 (= e!2308035 tp!1135132)))

(assert (= (and start!350978 res!1514540) b!3730341))

(assert (= (and b!3730341 res!1514539) b!3730340))

(assert (= (and b!3730340 res!1514537) b!3730339))

(assert (= (and b!3730339 res!1514538) b!3730346))

(assert (= (and start!350978 ((_ is ElementMatch!10925) r!26968)) b!3730344))

(assert (= (and start!350978 ((_ is Concat!17196) r!26968)) b!3730345))

(assert (= (and start!350978 ((_ is Star!10925) r!26968)) b!3730342))

(assert (= (and start!350978 ((_ is Union!10925) r!26968)) b!3730343))

(declare-fun m!4230063 () Bool)

(assert (=> b!3730339 m!4230063))

(declare-fun m!4230065 () Bool)

(assert (=> b!3730341 m!4230065))

(assert (=> b!3730341 m!4230065))

(declare-fun m!4230067 () Bool)

(assert (=> b!3730341 m!4230067))

(declare-fun m!4230069 () Bool)

(assert (=> b!3730346 m!4230069))

(declare-fun m!4230071 () Bool)

(assert (=> start!350978 m!4230071))

(check-sat (not b!3730343) (not b!3730339) (not b!3730346) (not start!350978) (not b!3730342) (not b!3730341) (not b!3730345) tp_is_empty!18865)
(check-sat)
(get-model)

(declare-fun d!1090556 () Bool)

(declare-fun lt!1298659 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5781 (List!39806) (InoxSet C!22036))

(assert (=> d!1090556 (= lt!1298659 (select (content!5781 (usedCharacters!1188 r!26968)) cNot!42))))

(declare-fun e!2308041 () Bool)

(assert (=> d!1090556 (= lt!1298659 e!2308041)))

(declare-fun res!1514545 () Bool)

(assert (=> d!1090556 (=> (not res!1514545) (not e!2308041))))

(assert (=> d!1090556 (= res!1514545 ((_ is Cons!39682) (usedCharacters!1188 r!26968)))))

(assert (=> d!1090556 (= (contains!8018 (usedCharacters!1188 r!26968) cNot!42) lt!1298659)))

(declare-fun b!3730351 () Bool)

(declare-fun e!2308042 () Bool)

(assert (=> b!3730351 (= e!2308041 e!2308042)))

(declare-fun res!1514546 () Bool)

(assert (=> b!3730351 (=> res!1514546 e!2308042)))

(assert (=> b!3730351 (= res!1514546 (= (h!45102 (usedCharacters!1188 r!26968)) cNot!42))))

(declare-fun b!3730352 () Bool)

(assert (=> b!3730352 (= e!2308042 (contains!8018 (t!302489 (usedCharacters!1188 r!26968)) cNot!42))))

(assert (= (and d!1090556 res!1514545) b!3730351))

(assert (= (and b!3730351 (not res!1514546)) b!3730352))

(assert (=> d!1090556 m!4230065))

(declare-fun m!4230073 () Bool)

(assert (=> d!1090556 m!4230073))

(declare-fun m!4230075 () Bool)

(assert (=> d!1090556 m!4230075))

(declare-fun m!4230077 () Bool)

(assert (=> b!3730352 m!4230077))

(assert (=> b!3730341 d!1090556))

(declare-fun b!3730375 () Bool)

(declare-fun e!2308058 () List!39806)

(declare-fun e!2308057 () List!39806)

(assert (=> b!3730375 (= e!2308058 e!2308057)))

(declare-fun c!645758 () Bool)

(assert (=> b!3730375 (= c!645758 ((_ is Union!10925) r!26968))))

(declare-fun call!272400 () List!39806)

(declare-fun c!645756 () Bool)

(declare-fun bm!272392 () Bool)

(assert (=> bm!272392 (= call!272400 (usedCharacters!1188 (ite c!645756 (reg!11254 r!26968) (ite c!645758 (regTwo!22363 r!26968) (regOne!22362 r!26968)))))))

(declare-fun b!3730376 () Bool)

(declare-fun call!272399 () List!39806)

(assert (=> b!3730376 (= e!2308057 call!272399)))

(declare-fun b!3730377 () Bool)

(declare-fun e!2308059 () List!39806)

(assert (=> b!3730377 (= e!2308059 (Cons!39682 (c!645747 r!26968) Nil!39682))))

(declare-fun b!3730378 () Bool)

(assert (=> b!3730378 (= c!645756 ((_ is Star!10925) r!26968))))

(assert (=> b!3730378 (= e!2308059 e!2308058)))

(declare-fun b!3730379 () Bool)

(declare-fun e!2308060 () List!39806)

(assert (=> b!3730379 (= e!2308060 Nil!39682)))

(declare-fun bm!272393 () Bool)

(declare-fun call!272397 () List!39806)

(assert (=> bm!272393 (= call!272397 call!272400)))

(declare-fun b!3730380 () Bool)

(assert (=> b!3730380 (= e!2308057 call!272399)))

(declare-fun d!1090560 () Bool)

(declare-fun c!645757 () Bool)

(assert (=> d!1090560 (= c!645757 (or ((_ is EmptyExpr!10925) r!26968) ((_ is EmptyLang!10925) r!26968)))))

(assert (=> d!1090560 (= (usedCharacters!1188 r!26968) e!2308060)))

(declare-fun b!3730381 () Bool)

(assert (=> b!3730381 (= e!2308058 call!272400)))

(declare-fun call!272398 () List!39806)

(declare-fun bm!272394 () Bool)

(declare-fun ++!9848 (List!39806 List!39806) List!39806)

(assert (=> bm!272394 (= call!272399 (++!9848 (ite c!645758 call!272398 call!272397) (ite c!645758 call!272397 call!272398)))))

(declare-fun b!3730382 () Bool)

(assert (=> b!3730382 (= e!2308060 e!2308059)))

(declare-fun c!645759 () Bool)

(assert (=> b!3730382 (= c!645759 ((_ is ElementMatch!10925) r!26968))))

(declare-fun bm!272395 () Bool)

(assert (=> bm!272395 (= call!272398 (usedCharacters!1188 (ite c!645758 (regOne!22363 r!26968) (regTwo!22362 r!26968))))))

(assert (= (and d!1090560 c!645757) b!3730379))

(assert (= (and d!1090560 (not c!645757)) b!3730382))

(assert (= (and b!3730382 c!645759) b!3730377))

(assert (= (and b!3730382 (not c!645759)) b!3730378))

(assert (= (and b!3730378 c!645756) b!3730381))

(assert (= (and b!3730378 (not c!645756)) b!3730375))

(assert (= (and b!3730375 c!645758) b!3730376))

(assert (= (and b!3730375 (not c!645758)) b!3730380))

(assert (= (or b!3730376 b!3730380) bm!272395))

(assert (= (or b!3730376 b!3730380) bm!272393))

(assert (= (or b!3730376 b!3730380) bm!272394))

(assert (= (or b!3730381 bm!272393) bm!272392))

(declare-fun m!4230085 () Bool)

(assert (=> bm!272392 m!4230085))

(declare-fun m!4230087 () Bool)

(assert (=> bm!272394 m!4230087))

(declare-fun m!4230089 () Bool)

(assert (=> bm!272395 m!4230089))

(assert (=> b!3730341 d!1090560))

(declare-fun b!3730417 () Bool)

(declare-fun res!1514565 () Bool)

(declare-fun e!2308083 () Bool)

(assert (=> b!3730417 (=> (not res!1514565) (not e!2308083))))

(declare-fun call!272417 () Bool)

(assert (=> b!3730417 (= res!1514565 call!272417)))

(declare-fun e!2308084 () Bool)

(assert (=> b!3730417 (= e!2308084 e!2308083)))

(declare-fun b!3730418 () Bool)

(declare-fun e!2308085 () Bool)

(declare-fun call!272416 () Bool)

(assert (=> b!3730418 (= e!2308085 call!272416)))

(declare-fun d!1090564 () Bool)

(declare-fun res!1514563 () Bool)

(declare-fun e!2308088 () Bool)

(assert (=> d!1090564 (=> res!1514563 e!2308088)))

(assert (=> d!1090564 (= res!1514563 ((_ is ElementMatch!10925) (regOne!22362 r!26968)))))

(assert (=> d!1090564 (= (validRegex!5032 (regOne!22362 r!26968)) e!2308088)))

(declare-fun b!3730419 () Bool)

(declare-fun e!2308087 () Bool)

(declare-fun call!272415 () Bool)

(assert (=> b!3730419 (= e!2308087 call!272415)))

(declare-fun bm!272410 () Bool)

(declare-fun c!645772 () Bool)

(declare-fun c!645773 () Bool)

(assert (=> bm!272410 (= call!272416 (validRegex!5032 (ite c!645773 (reg!11254 (regOne!22362 r!26968)) (ite c!645772 (regOne!22363 (regOne!22362 r!26968)) (regOne!22362 (regOne!22362 r!26968))))))))

(declare-fun bm!272411 () Bool)

(assert (=> bm!272411 (= call!272415 (validRegex!5032 (ite c!645772 (regTwo!22363 (regOne!22362 r!26968)) (regTwo!22362 (regOne!22362 r!26968)))))))

(declare-fun b!3730420 () Bool)

(assert (=> b!3730420 (= e!2308083 call!272415)))

(declare-fun b!3730421 () Bool)

(declare-fun e!2308086 () Bool)

(assert (=> b!3730421 (= e!2308088 e!2308086)))

(assert (=> b!3730421 (= c!645773 ((_ is Star!10925) (regOne!22362 r!26968)))))

(declare-fun b!3730422 () Bool)

(assert (=> b!3730422 (= e!2308086 e!2308084)))

(assert (=> b!3730422 (= c!645772 ((_ is Union!10925) (regOne!22362 r!26968)))))

(declare-fun b!3730423 () Bool)

(declare-fun res!1514566 () Bool)

(declare-fun e!2308089 () Bool)

(assert (=> b!3730423 (=> res!1514566 e!2308089)))

(assert (=> b!3730423 (= res!1514566 (not ((_ is Concat!17196) (regOne!22362 r!26968))))))

(assert (=> b!3730423 (= e!2308084 e!2308089)))

(declare-fun bm!272412 () Bool)

(assert (=> bm!272412 (= call!272417 call!272416)))

(declare-fun b!3730424 () Bool)

(assert (=> b!3730424 (= e!2308086 e!2308085)))

(declare-fun res!1514567 () Bool)

(assert (=> b!3730424 (= res!1514567 (not (nullable!3833 (reg!11254 (regOne!22362 r!26968)))))))

(assert (=> b!3730424 (=> (not res!1514567) (not e!2308085))))

(declare-fun b!3730425 () Bool)

(assert (=> b!3730425 (= e!2308089 e!2308087)))

(declare-fun res!1514564 () Bool)

(assert (=> b!3730425 (=> (not res!1514564) (not e!2308087))))

(assert (=> b!3730425 (= res!1514564 call!272417)))

(assert (= (and d!1090564 (not res!1514563)) b!3730421))

(assert (= (and b!3730421 c!645773) b!3730424))

(assert (= (and b!3730421 (not c!645773)) b!3730422))

(assert (= (and b!3730424 res!1514567) b!3730418))

(assert (= (and b!3730422 c!645772) b!3730417))

(assert (= (and b!3730422 (not c!645772)) b!3730423))

(assert (= (and b!3730417 res!1514565) b!3730420))

(assert (= (and b!3730423 (not res!1514566)) b!3730425))

(assert (= (and b!3730425 res!1514564) b!3730419))

(assert (= (or b!3730420 b!3730419) bm!272411))

(assert (= (or b!3730417 b!3730425) bm!272412))

(assert (= (or b!3730418 bm!272412) bm!272410))

(declare-fun m!4230091 () Bool)

(assert (=> bm!272410 m!4230091))

(declare-fun m!4230093 () Bool)

(assert (=> bm!272411 m!4230093))

(declare-fun m!4230095 () Bool)

(assert (=> b!3730424 m!4230095))

(assert (=> b!3730346 d!1090564))

(declare-fun b!3730426 () Bool)

(declare-fun res!1514570 () Bool)

(declare-fun e!2308090 () Bool)

(assert (=> b!3730426 (=> (not res!1514570) (not e!2308090))))

(declare-fun call!272420 () Bool)

(assert (=> b!3730426 (= res!1514570 call!272420)))

(declare-fun e!2308091 () Bool)

(assert (=> b!3730426 (= e!2308091 e!2308090)))

(declare-fun b!3730427 () Bool)

(declare-fun e!2308092 () Bool)

(declare-fun call!272419 () Bool)

(assert (=> b!3730427 (= e!2308092 call!272419)))

(declare-fun d!1090566 () Bool)

(declare-fun res!1514568 () Bool)

(declare-fun e!2308095 () Bool)

(assert (=> d!1090566 (=> res!1514568 e!2308095)))

(assert (=> d!1090566 (= res!1514568 ((_ is ElementMatch!10925) r!26968))))

(assert (=> d!1090566 (= (validRegex!5032 r!26968) e!2308095)))

(declare-fun b!3730428 () Bool)

(declare-fun e!2308094 () Bool)

(declare-fun call!272418 () Bool)

(assert (=> b!3730428 (= e!2308094 call!272418)))

(declare-fun bm!272413 () Bool)

(declare-fun c!645775 () Bool)

(declare-fun c!645774 () Bool)

(assert (=> bm!272413 (= call!272419 (validRegex!5032 (ite c!645775 (reg!11254 r!26968) (ite c!645774 (regOne!22363 r!26968) (regOne!22362 r!26968)))))))

(declare-fun bm!272414 () Bool)

(assert (=> bm!272414 (= call!272418 (validRegex!5032 (ite c!645774 (regTwo!22363 r!26968) (regTwo!22362 r!26968))))))

(declare-fun b!3730429 () Bool)

(assert (=> b!3730429 (= e!2308090 call!272418)))

(declare-fun b!3730430 () Bool)

(declare-fun e!2308093 () Bool)

(assert (=> b!3730430 (= e!2308095 e!2308093)))

(assert (=> b!3730430 (= c!645775 ((_ is Star!10925) r!26968))))

(declare-fun b!3730431 () Bool)

(assert (=> b!3730431 (= e!2308093 e!2308091)))

(assert (=> b!3730431 (= c!645774 ((_ is Union!10925) r!26968))))

(declare-fun b!3730432 () Bool)

(declare-fun res!1514571 () Bool)

(declare-fun e!2308096 () Bool)

(assert (=> b!3730432 (=> res!1514571 e!2308096)))

(assert (=> b!3730432 (= res!1514571 (not ((_ is Concat!17196) r!26968)))))

(assert (=> b!3730432 (= e!2308091 e!2308096)))

(declare-fun bm!272415 () Bool)

(assert (=> bm!272415 (= call!272420 call!272419)))

(declare-fun b!3730433 () Bool)

(assert (=> b!3730433 (= e!2308093 e!2308092)))

(declare-fun res!1514572 () Bool)

(assert (=> b!3730433 (= res!1514572 (not (nullable!3833 (reg!11254 r!26968))))))

(assert (=> b!3730433 (=> (not res!1514572) (not e!2308092))))

(declare-fun b!3730434 () Bool)

(assert (=> b!3730434 (= e!2308096 e!2308094)))

(declare-fun res!1514569 () Bool)

(assert (=> b!3730434 (=> (not res!1514569) (not e!2308094))))

(assert (=> b!3730434 (= res!1514569 call!272420)))

(assert (= (and d!1090566 (not res!1514568)) b!3730430))

(assert (= (and b!3730430 c!645775) b!3730433))

(assert (= (and b!3730430 (not c!645775)) b!3730431))

(assert (= (and b!3730433 res!1514572) b!3730427))

(assert (= (and b!3730431 c!645774) b!3730426))

(assert (= (and b!3730431 (not c!645774)) b!3730432))

(assert (= (and b!3730426 res!1514570) b!3730429))

(assert (= (and b!3730432 (not res!1514571)) b!3730434))

(assert (= (and b!3730434 res!1514569) b!3730428))

(assert (= (or b!3730429 b!3730428) bm!272414))

(assert (= (or b!3730426 b!3730434) bm!272415))

(assert (= (or b!3730427 bm!272415) bm!272413))

(declare-fun m!4230097 () Bool)

(assert (=> bm!272413 m!4230097))

(declare-fun m!4230099 () Bool)

(assert (=> bm!272414 m!4230099))

(declare-fun m!4230101 () Bool)

(assert (=> b!3730433 m!4230101))

(assert (=> start!350978 d!1090566))

(declare-fun d!1090568 () Bool)

(declare-fun nullableFct!1086 (Regex!10925) Bool)

(assert (=> d!1090568 (= (nullable!3833 (regOne!22362 r!26968)) (nullableFct!1086 (regOne!22362 r!26968)))))

(declare-fun bs!575086 () Bool)

(assert (= bs!575086 d!1090568))

(declare-fun m!4230103 () Bool)

(assert (=> bs!575086 m!4230103))

(assert (=> b!3730339 d!1090568))

(declare-fun b!3730447 () Bool)

(declare-fun e!2308099 () Bool)

(declare-fun tp!1135145 () Bool)

(assert (=> b!3730447 (= e!2308099 tp!1135145)))

(assert (=> b!3730342 (= tp!1135132 e!2308099)))

(declare-fun b!3730446 () Bool)

(declare-fun tp!1135147 () Bool)

(declare-fun tp!1135146 () Bool)

(assert (=> b!3730446 (= e!2308099 (and tp!1135147 tp!1135146))))

(declare-fun b!3730448 () Bool)

(declare-fun tp!1135148 () Bool)

(declare-fun tp!1135149 () Bool)

(assert (=> b!3730448 (= e!2308099 (and tp!1135148 tp!1135149))))

(declare-fun b!3730445 () Bool)

(assert (=> b!3730445 (= e!2308099 tp_is_empty!18865)))

(assert (= (and b!3730342 ((_ is ElementMatch!10925) (reg!11254 r!26968))) b!3730445))

(assert (= (and b!3730342 ((_ is Concat!17196) (reg!11254 r!26968))) b!3730446))

(assert (= (and b!3730342 ((_ is Star!10925) (reg!11254 r!26968))) b!3730447))

(assert (= (and b!3730342 ((_ is Union!10925) (reg!11254 r!26968))) b!3730448))

(declare-fun b!3730451 () Bool)

(declare-fun e!2308100 () Bool)

(declare-fun tp!1135150 () Bool)

(assert (=> b!3730451 (= e!2308100 tp!1135150)))

(assert (=> b!3730343 (= tp!1135131 e!2308100)))

(declare-fun b!3730450 () Bool)

(declare-fun tp!1135152 () Bool)

(declare-fun tp!1135151 () Bool)

(assert (=> b!3730450 (= e!2308100 (and tp!1135152 tp!1135151))))

(declare-fun b!3730452 () Bool)

(declare-fun tp!1135153 () Bool)

(declare-fun tp!1135154 () Bool)

(assert (=> b!3730452 (= e!2308100 (and tp!1135153 tp!1135154))))

(declare-fun b!3730449 () Bool)

(assert (=> b!3730449 (= e!2308100 tp_is_empty!18865)))

(assert (= (and b!3730343 ((_ is ElementMatch!10925) (regOne!22363 r!26968))) b!3730449))

(assert (= (and b!3730343 ((_ is Concat!17196) (regOne!22363 r!26968))) b!3730450))

(assert (= (and b!3730343 ((_ is Star!10925) (regOne!22363 r!26968))) b!3730451))

(assert (= (and b!3730343 ((_ is Union!10925) (regOne!22363 r!26968))) b!3730452))

(declare-fun b!3730455 () Bool)

(declare-fun e!2308101 () Bool)

(declare-fun tp!1135155 () Bool)

(assert (=> b!3730455 (= e!2308101 tp!1135155)))

(assert (=> b!3730343 (= tp!1135134 e!2308101)))

(declare-fun b!3730454 () Bool)

(declare-fun tp!1135157 () Bool)

(declare-fun tp!1135156 () Bool)

(assert (=> b!3730454 (= e!2308101 (and tp!1135157 tp!1135156))))

(declare-fun b!3730456 () Bool)

(declare-fun tp!1135158 () Bool)

(declare-fun tp!1135159 () Bool)

(assert (=> b!3730456 (= e!2308101 (and tp!1135158 tp!1135159))))

(declare-fun b!3730453 () Bool)

(assert (=> b!3730453 (= e!2308101 tp_is_empty!18865)))

(assert (= (and b!3730343 ((_ is ElementMatch!10925) (regTwo!22363 r!26968))) b!3730453))

(assert (= (and b!3730343 ((_ is Concat!17196) (regTwo!22363 r!26968))) b!3730454))

(assert (= (and b!3730343 ((_ is Star!10925) (regTwo!22363 r!26968))) b!3730455))

(assert (= (and b!3730343 ((_ is Union!10925) (regTwo!22363 r!26968))) b!3730456))

(declare-fun b!3730459 () Bool)

(declare-fun e!2308102 () Bool)

(declare-fun tp!1135160 () Bool)

(assert (=> b!3730459 (= e!2308102 tp!1135160)))

(assert (=> b!3730345 (= tp!1135130 e!2308102)))

(declare-fun b!3730458 () Bool)

(declare-fun tp!1135162 () Bool)

(declare-fun tp!1135161 () Bool)

(assert (=> b!3730458 (= e!2308102 (and tp!1135162 tp!1135161))))

(declare-fun b!3730460 () Bool)

(declare-fun tp!1135163 () Bool)

(declare-fun tp!1135164 () Bool)

(assert (=> b!3730460 (= e!2308102 (and tp!1135163 tp!1135164))))

(declare-fun b!3730457 () Bool)

(assert (=> b!3730457 (= e!2308102 tp_is_empty!18865)))

(assert (= (and b!3730345 ((_ is ElementMatch!10925) (regOne!22362 r!26968))) b!3730457))

(assert (= (and b!3730345 ((_ is Concat!17196) (regOne!22362 r!26968))) b!3730458))

(assert (= (and b!3730345 ((_ is Star!10925) (regOne!22362 r!26968))) b!3730459))

(assert (= (and b!3730345 ((_ is Union!10925) (regOne!22362 r!26968))) b!3730460))

(declare-fun b!3730463 () Bool)

(declare-fun e!2308103 () Bool)

(declare-fun tp!1135165 () Bool)

(assert (=> b!3730463 (= e!2308103 tp!1135165)))

(assert (=> b!3730345 (= tp!1135133 e!2308103)))

(declare-fun b!3730462 () Bool)

(declare-fun tp!1135167 () Bool)

(declare-fun tp!1135166 () Bool)

(assert (=> b!3730462 (= e!2308103 (and tp!1135167 tp!1135166))))

(declare-fun b!3730464 () Bool)

(declare-fun tp!1135168 () Bool)

(declare-fun tp!1135169 () Bool)

(assert (=> b!3730464 (= e!2308103 (and tp!1135168 tp!1135169))))

(declare-fun b!3730461 () Bool)

(assert (=> b!3730461 (= e!2308103 tp_is_empty!18865)))

(assert (= (and b!3730345 ((_ is ElementMatch!10925) (regTwo!22362 r!26968))) b!3730461))

(assert (= (and b!3730345 ((_ is Concat!17196) (regTwo!22362 r!26968))) b!3730462))

(assert (= (and b!3730345 ((_ is Star!10925) (regTwo!22362 r!26968))) b!3730463))

(assert (= (and b!3730345 ((_ is Union!10925) (regTwo!22362 r!26968))) b!3730464))

(check-sat (not b!3730450) (not bm!272395) (not b!3730462) (not b!3730454) (not b!3730452) (not bm!272411) (not bm!272392) (not b!3730447) (not bm!272414) (not b!3730455) (not b!3730456) (not b!3730446) tp_is_empty!18865 (not b!3730451) (not bm!272394) (not b!3730458) (not d!1090568) (not b!3730460) (not b!3730459) (not b!3730464) (not bm!272410) (not b!3730352) (not d!1090556) (not b!3730433) (not b!3730448) (not b!3730463) (not b!3730424) (not bm!272413))
(check-sat)
