; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743282 () Bool)

(assert start!743282)

(declare-fun b!7852362 () Bool)

(declare-fun res!3122413 () Bool)

(declare-fun e!4641531 () Bool)

(assert (=> b!7852362 (=> (not res!3122413) (not e!4641531))))

(declare-datatypes ((C!42504 0))(
  ( (C!42505 (val!31714 Int)) )
))
(declare-datatypes ((Regex!21089 0))(
  ( (ElementMatch!21089 (c!1443215 C!42504)) (Concat!29934 (regOne!42690 Regex!21089) (regTwo!42690 Regex!21089)) (EmptyExpr!21089) (Star!21089 (reg!21418 Regex!21089)) (EmptyLang!21089) (Union!21089 (regOne!42691 Regex!21089) (regTwo!42691 Regex!21089)) )
))
(declare-fun r2!6165 () Regex!21089)

(declare-fun validRegex!11499 (Regex!21089) Bool)

(assert (=> b!7852362 (= res!3122413 (validRegex!11499 r2!6165))))

(declare-fun b!7852363 () Bool)

(declare-fun res!3122411 () Bool)

(assert (=> b!7852363 (=> (not res!3122411) (not e!4641531))))

(declare-datatypes ((List!73948 0))(
  ( (Nil!73824) (Cons!73824 (h!80272 C!42504) (t!388683 List!73948)) )
))
(declare-fun s2!3706 () List!73948)

(declare-fun matchR!10525 (Regex!21089 List!73948) Bool)

(assert (=> b!7852363 (= res!3122411 (matchR!10525 r2!6165 s2!3706))))

(declare-fun b!7852364 () Bool)

(declare-fun e!4641533 () Bool)

(declare-fun tp!2325659 () Bool)

(assert (=> b!7852364 (= e!4641533 tp!2325659)))

(declare-fun b!7852366 () Bool)

(declare-fun e!4641532 () Bool)

(declare-fun tp!2325667 () Bool)

(declare-fun tp!2325664 () Bool)

(assert (=> b!7852366 (= e!4641532 (and tp!2325667 tp!2325664))))

(declare-fun b!7852367 () Bool)

(declare-fun tp_is_empty!52577 () Bool)

(assert (=> b!7852367 (= e!4641532 tp_is_empty!52577)))

(declare-fun b!7852368 () Bool)

(declare-fun res!3122414 () Bool)

(assert (=> b!7852368 (=> (not res!3122414) (not e!4641531))))

(declare-fun s1!4084 () List!73948)

(get-info :version)

(assert (=> b!7852368 (= res!3122414 ((_ is Cons!73824) s1!4084))))

(declare-fun res!3122410 () Bool)

(assert (=> start!743282 (=> (not res!3122410) (not e!4641531))))

(declare-fun r1!6227 () Regex!21089)

(assert (=> start!743282 (= res!3122410 (validRegex!11499 r1!6227))))

(assert (=> start!743282 e!4641531))

(assert (=> start!743282 e!4641532))

(assert (=> start!743282 e!4641533))

(declare-fun e!4641534 () Bool)

(assert (=> start!743282 e!4641534))

(declare-fun e!4641535 () Bool)

(assert (=> start!743282 e!4641535))

(declare-fun b!7852365 () Bool)

(declare-fun tp!2325662 () Bool)

(declare-fun tp!2325665 () Bool)

(assert (=> b!7852365 (= e!4641532 (and tp!2325662 tp!2325665))))

(declare-fun b!7852369 () Bool)

(declare-fun tp!2325658 () Bool)

(declare-fun tp!2325668 () Bool)

(assert (=> b!7852369 (= e!4641533 (and tp!2325658 tp!2325668))))

(declare-fun b!7852370 () Bool)

(assert (=> b!7852370 (= e!4641533 tp_is_empty!52577)))

(declare-fun b!7852371 () Bool)

(declare-fun tp!2325660 () Bool)

(assert (=> b!7852371 (= e!4641532 tp!2325660)))

(declare-fun b!7852372 () Bool)

(declare-fun tp!2325663 () Bool)

(assert (=> b!7852372 (= e!4641535 (and tp_is_empty!52577 tp!2325663))))

(declare-fun b!7852373 () Bool)

(declare-fun tp!2325666 () Bool)

(declare-fun tp!2325657 () Bool)

(assert (=> b!7852373 (= e!4641533 (and tp!2325666 tp!2325657))))

(declare-fun b!7852374 () Bool)

(declare-fun res!3122412 () Bool)

(assert (=> b!7852374 (=> (not res!3122412) (not e!4641531))))

(assert (=> b!7852374 (= res!3122412 (matchR!10525 r1!6227 s1!4084))))

(declare-fun b!7852375 () Bool)

(declare-fun derivativeStep!6324 (Regex!21089 C!42504) Regex!21089)

(assert (=> b!7852375 (= e!4641531 (not (validRegex!11499 (derivativeStep!6324 r1!6227 (h!80272 s1!4084)))))))

(declare-fun b!7852376 () Bool)

(declare-fun tp!2325661 () Bool)

(assert (=> b!7852376 (= e!4641534 (and tp_is_empty!52577 tp!2325661))))

(assert (= (and start!743282 res!3122410) b!7852362))

(assert (= (and b!7852362 res!3122413) b!7852374))

(assert (= (and b!7852374 res!3122412) b!7852363))

(assert (= (and b!7852363 res!3122411) b!7852368))

(assert (= (and b!7852368 res!3122414) b!7852375))

(assert (= (and start!743282 ((_ is ElementMatch!21089) r1!6227)) b!7852367))

(assert (= (and start!743282 ((_ is Concat!29934) r1!6227)) b!7852365))

(assert (= (and start!743282 ((_ is Star!21089) r1!6227)) b!7852371))

(assert (= (and start!743282 ((_ is Union!21089) r1!6227)) b!7852366))

(assert (= (and start!743282 ((_ is ElementMatch!21089) r2!6165)) b!7852370))

(assert (= (and start!743282 ((_ is Concat!29934) r2!6165)) b!7852373))

(assert (= (and start!743282 ((_ is Star!21089) r2!6165)) b!7852364))

(assert (= (and start!743282 ((_ is Union!21089) r2!6165)) b!7852369))

(assert (= (and start!743282 ((_ is Cons!73824) s1!4084)) b!7852376))

(assert (= (and start!743282 ((_ is Cons!73824) s2!3706)) b!7852372))

(declare-fun m!8258840 () Bool)

(assert (=> b!7852374 m!8258840))

(declare-fun m!8258842 () Bool)

(assert (=> start!743282 m!8258842))

(declare-fun m!8258844 () Bool)

(assert (=> b!7852362 m!8258844))

(declare-fun m!8258846 () Bool)

(assert (=> b!7852363 m!8258846))

(declare-fun m!8258848 () Bool)

(assert (=> b!7852375 m!8258848))

(assert (=> b!7852375 m!8258848))

(declare-fun m!8258850 () Bool)

(assert (=> b!7852375 m!8258850))

(check-sat (not b!7852373) (not b!7852366) (not b!7852374) (not b!7852365) (not b!7852375) (not b!7852369) (not b!7852371) (not b!7852362) (not start!743282) (not b!7852363) tp_is_empty!52577 (not b!7852364) (not b!7852376) (not b!7852372))
(check-sat)
(get-model)

(declare-fun bm!727762 () Bool)

(declare-fun call!727767 () Bool)

(declare-fun c!1443221 () Bool)

(assert (=> bm!727762 (= call!727767 (validRegex!11499 (ite c!1443221 (regTwo!42691 r2!6165) (regOne!42690 r2!6165))))))

(declare-fun b!7852395 () Bool)

(declare-fun res!3122425 () Bool)

(declare-fun e!4641554 () Bool)

(assert (=> b!7852395 (=> res!3122425 e!4641554)))

(assert (=> b!7852395 (= res!3122425 (not ((_ is Concat!29934) r2!6165)))))

(declare-fun e!4641556 () Bool)

(assert (=> b!7852395 (= e!4641556 e!4641554)))

(declare-fun b!7852396 () Bool)

(declare-fun e!4641551 () Bool)

(declare-fun e!4641550 () Bool)

(assert (=> b!7852396 (= e!4641551 e!4641550)))

(declare-fun c!1443220 () Bool)

(assert (=> b!7852396 (= c!1443220 ((_ is Star!21089) r2!6165))))

(declare-fun bm!727763 () Bool)

(declare-fun call!727768 () Bool)

(assert (=> bm!727763 (= call!727768 (validRegex!11499 (ite c!1443220 (reg!21418 r2!6165) (ite c!1443221 (regOne!42691 r2!6165) (regTwo!42690 r2!6165)))))))

(declare-fun b!7852397 () Bool)

(assert (=> b!7852397 (= e!4641550 e!4641556)))

(assert (=> b!7852397 (= c!1443221 ((_ is Union!21089) r2!6165))))

(declare-fun b!7852398 () Bool)

(declare-fun e!4641555 () Bool)

(assert (=> b!7852398 (= e!4641555 call!727768)))

(declare-fun b!7852399 () Bool)

(declare-fun e!4641552 () Bool)

(declare-fun call!727769 () Bool)

(assert (=> b!7852399 (= e!4641552 call!727769)))

(declare-fun d!2353479 () Bool)

(declare-fun res!3122426 () Bool)

(assert (=> d!2353479 (=> res!3122426 e!4641551)))

(assert (=> d!2353479 (= res!3122426 ((_ is ElementMatch!21089) r2!6165))))

(assert (=> d!2353479 (= (validRegex!11499 r2!6165) e!4641551)))

(declare-fun b!7852400 () Bool)

(assert (=> b!7852400 (= e!4641554 e!4641552)))

(declare-fun res!3122429 () Bool)

(assert (=> b!7852400 (=> (not res!3122429) (not e!4641552))))

(assert (=> b!7852400 (= res!3122429 call!727767)))

(declare-fun b!7852401 () Bool)

(declare-fun res!3122427 () Bool)

(declare-fun e!4641553 () Bool)

(assert (=> b!7852401 (=> (not res!3122427) (not e!4641553))))

(assert (=> b!7852401 (= res!3122427 call!727769)))

(assert (=> b!7852401 (= e!4641556 e!4641553)))

(declare-fun bm!727764 () Bool)

(assert (=> bm!727764 (= call!727769 call!727768)))

(declare-fun b!7852402 () Bool)

(assert (=> b!7852402 (= e!4641550 e!4641555)))

(declare-fun res!3122428 () Bool)

(declare-fun nullable!9361 (Regex!21089) Bool)

(assert (=> b!7852402 (= res!3122428 (not (nullable!9361 (reg!21418 r2!6165))))))

(assert (=> b!7852402 (=> (not res!3122428) (not e!4641555))))

(declare-fun b!7852403 () Bool)

(assert (=> b!7852403 (= e!4641553 call!727767)))

(assert (= (and d!2353479 (not res!3122426)) b!7852396))

(assert (= (and b!7852396 c!1443220) b!7852402))

(assert (= (and b!7852396 (not c!1443220)) b!7852397))

(assert (= (and b!7852402 res!3122428) b!7852398))

(assert (= (and b!7852397 c!1443221) b!7852401))

(assert (= (and b!7852397 (not c!1443221)) b!7852395))

(assert (= (and b!7852401 res!3122427) b!7852403))

(assert (= (and b!7852395 (not res!3122425)) b!7852400))

(assert (= (and b!7852400 res!3122429) b!7852399))

(assert (= (or b!7852401 b!7852399) bm!727764))

(assert (= (or b!7852403 b!7852400) bm!727762))

(assert (= (or b!7852398 bm!727764) bm!727763))

(declare-fun m!8258852 () Bool)

(assert (=> bm!727762 m!8258852))

(declare-fun m!8258854 () Bool)

(assert (=> bm!727763 m!8258854))

(declare-fun m!8258856 () Bool)

(assert (=> b!7852402 m!8258856))

(assert (=> b!7852362 d!2353479))

(declare-fun b!7852492 () Bool)

(declare-fun res!3122483 () Bool)

(declare-fun e!4641601 () Bool)

(assert (=> b!7852492 (=> res!3122483 e!4641601)))

(assert (=> b!7852492 (= res!3122483 (not ((_ is ElementMatch!21089) r2!6165)))))

(declare-fun e!4641606 () Bool)

(assert (=> b!7852492 (= e!4641606 e!4641601)))

(declare-fun b!7852493 () Bool)

(declare-fun lt!2679778 () Bool)

(assert (=> b!7852493 (= e!4641606 (not lt!2679778))))

(declare-fun b!7852494 () Bool)

(declare-fun e!4641603 () Bool)

(declare-fun head!16046 (List!73948) C!42504)

(assert (=> b!7852494 (= e!4641603 (not (= (head!16046 s2!3706) (c!1443215 r2!6165))))))

(declare-fun d!2353483 () Bool)

(declare-fun e!4641605 () Bool)

(assert (=> d!2353483 e!4641605))

(declare-fun c!1443242 () Bool)

(assert (=> d!2353483 (= c!1443242 ((_ is EmptyExpr!21089) r2!6165))))

(declare-fun e!4641604 () Bool)

(assert (=> d!2353483 (= lt!2679778 e!4641604)))

(declare-fun c!1443240 () Bool)

(declare-fun isEmpty!42335 (List!73948) Bool)

(assert (=> d!2353483 (= c!1443240 (isEmpty!42335 s2!3706))))

(assert (=> d!2353483 (validRegex!11499 r2!6165)))

(assert (=> d!2353483 (= (matchR!10525 r2!6165 s2!3706) lt!2679778)))

(declare-fun b!7852495 () Bool)

(declare-fun e!4641607 () Bool)

(assert (=> b!7852495 (= e!4641601 e!4641607)))

(declare-fun res!3122481 () Bool)

(assert (=> b!7852495 (=> (not res!3122481) (not e!4641607))))

(assert (=> b!7852495 (= res!3122481 (not lt!2679778))))

(declare-fun bm!727771 () Bool)

(declare-fun call!727776 () Bool)

(assert (=> bm!727771 (= call!727776 (isEmpty!42335 s2!3706))))

(declare-fun b!7852496 () Bool)

(assert (=> b!7852496 (= e!4641605 e!4641606)))

(declare-fun c!1443241 () Bool)

(assert (=> b!7852496 (= c!1443241 ((_ is EmptyLang!21089) r2!6165))))

(declare-fun b!7852497 () Bool)

(assert (=> b!7852497 (= e!4641605 (= lt!2679778 call!727776))))

(declare-fun b!7852498 () Bool)

(declare-fun e!4641602 () Bool)

(assert (=> b!7852498 (= e!4641602 (= (head!16046 s2!3706) (c!1443215 r2!6165)))))

(declare-fun b!7852499 () Bool)

(assert (=> b!7852499 (= e!4641607 e!4641603)))

(declare-fun res!3122486 () Bool)

(assert (=> b!7852499 (=> res!3122486 e!4641603)))

(assert (=> b!7852499 (= res!3122486 call!727776)))

(declare-fun b!7852500 () Bool)

(assert (=> b!7852500 (= e!4641604 (nullable!9361 r2!6165))))

(declare-fun b!7852501 () Bool)

(declare-fun res!3122487 () Bool)

(assert (=> b!7852501 (=> res!3122487 e!4641603)))

(declare-fun tail!15589 (List!73948) List!73948)

(assert (=> b!7852501 (= res!3122487 (not (isEmpty!42335 (tail!15589 s2!3706))))))

(declare-fun b!7852502 () Bool)

(declare-fun res!3122482 () Bool)

(assert (=> b!7852502 (=> res!3122482 e!4641601)))

(assert (=> b!7852502 (= res!3122482 e!4641602)))

(declare-fun res!3122480 () Bool)

(assert (=> b!7852502 (=> (not res!3122480) (not e!4641602))))

(assert (=> b!7852502 (= res!3122480 lt!2679778)))

(declare-fun b!7852503 () Bool)

(declare-fun res!3122484 () Bool)

(assert (=> b!7852503 (=> (not res!3122484) (not e!4641602))))

(assert (=> b!7852503 (= res!3122484 (isEmpty!42335 (tail!15589 s2!3706)))))

(declare-fun b!7852504 () Bool)

(declare-fun res!3122485 () Bool)

(assert (=> b!7852504 (=> (not res!3122485) (not e!4641602))))

(assert (=> b!7852504 (= res!3122485 (not call!727776))))

(declare-fun b!7852505 () Bool)

(assert (=> b!7852505 (= e!4641604 (matchR!10525 (derivativeStep!6324 r2!6165 (head!16046 s2!3706)) (tail!15589 s2!3706)))))

(assert (= (and d!2353483 c!1443240) b!7852500))

(assert (= (and d!2353483 (not c!1443240)) b!7852505))

(assert (= (and d!2353483 c!1443242) b!7852497))

(assert (= (and d!2353483 (not c!1443242)) b!7852496))

(assert (= (and b!7852496 c!1443241) b!7852493))

(assert (= (and b!7852496 (not c!1443241)) b!7852492))

(assert (= (and b!7852492 (not res!3122483)) b!7852502))

(assert (= (and b!7852502 res!3122480) b!7852504))

(assert (= (and b!7852504 res!3122485) b!7852503))

(assert (= (and b!7852503 res!3122484) b!7852498))

(assert (= (and b!7852502 (not res!3122482)) b!7852495))

(assert (= (and b!7852495 res!3122481) b!7852499))

(assert (= (and b!7852499 (not res!3122486)) b!7852501))

(assert (= (and b!7852501 (not res!3122487)) b!7852494))

(assert (= (or b!7852497 b!7852504 b!7852499) bm!727771))

(declare-fun m!8258886 () Bool)

(assert (=> b!7852494 m!8258886))

(declare-fun m!8258888 () Bool)

(assert (=> b!7852500 m!8258888))

(declare-fun m!8258890 () Bool)

(assert (=> d!2353483 m!8258890))

(assert (=> d!2353483 m!8258844))

(assert (=> b!7852498 m!8258886))

(declare-fun m!8258892 () Bool)

(assert (=> b!7852503 m!8258892))

(assert (=> b!7852503 m!8258892))

(declare-fun m!8258894 () Bool)

(assert (=> b!7852503 m!8258894))

(assert (=> b!7852501 m!8258892))

(assert (=> b!7852501 m!8258892))

(assert (=> b!7852501 m!8258894))

(assert (=> b!7852505 m!8258886))

(assert (=> b!7852505 m!8258886))

(declare-fun m!8258896 () Bool)

(assert (=> b!7852505 m!8258896))

(assert (=> b!7852505 m!8258892))

(assert (=> b!7852505 m!8258896))

(assert (=> b!7852505 m!8258892))

(declare-fun m!8258898 () Bool)

(assert (=> b!7852505 m!8258898))

(assert (=> bm!727771 m!8258890))

(assert (=> b!7852363 d!2353483))

(declare-fun bm!727776 () Bool)

(declare-fun call!727781 () Bool)

(declare-fun c!1443248 () Bool)

(assert (=> bm!727776 (= call!727781 (validRegex!11499 (ite c!1443248 (regTwo!42691 r1!6227) (regOne!42690 r1!6227))))))

(declare-fun b!7852520 () Bool)

(declare-fun res!3122496 () Bool)

(declare-fun e!4641624 () Bool)

(assert (=> b!7852520 (=> res!3122496 e!4641624)))

(assert (=> b!7852520 (= res!3122496 (not ((_ is Concat!29934) r1!6227)))))

(declare-fun e!4641626 () Bool)

(assert (=> b!7852520 (= e!4641626 e!4641624)))

(declare-fun b!7852521 () Bool)

(declare-fun e!4641621 () Bool)

(declare-fun e!4641620 () Bool)

(assert (=> b!7852521 (= e!4641621 e!4641620)))

(declare-fun c!1443247 () Bool)

(assert (=> b!7852521 (= c!1443247 ((_ is Star!21089) r1!6227))))

(declare-fun call!727782 () Bool)

(declare-fun bm!727777 () Bool)

(assert (=> bm!727777 (= call!727782 (validRegex!11499 (ite c!1443247 (reg!21418 r1!6227) (ite c!1443248 (regOne!42691 r1!6227) (regTwo!42690 r1!6227)))))))

(declare-fun b!7852522 () Bool)

(assert (=> b!7852522 (= e!4641620 e!4641626)))

(assert (=> b!7852522 (= c!1443248 ((_ is Union!21089) r1!6227))))

(declare-fun b!7852523 () Bool)

(declare-fun e!4641625 () Bool)

(assert (=> b!7852523 (= e!4641625 call!727782)))

(declare-fun b!7852524 () Bool)

(declare-fun e!4641622 () Bool)

(declare-fun call!727783 () Bool)

(assert (=> b!7852524 (= e!4641622 call!727783)))

(declare-fun d!2353489 () Bool)

(declare-fun res!3122497 () Bool)

(assert (=> d!2353489 (=> res!3122497 e!4641621)))

(assert (=> d!2353489 (= res!3122497 ((_ is ElementMatch!21089) r1!6227))))

(assert (=> d!2353489 (= (validRegex!11499 r1!6227) e!4641621)))

(declare-fun b!7852525 () Bool)

(assert (=> b!7852525 (= e!4641624 e!4641622)))

(declare-fun res!3122500 () Bool)

(assert (=> b!7852525 (=> (not res!3122500) (not e!4641622))))

(assert (=> b!7852525 (= res!3122500 call!727781)))

(declare-fun b!7852526 () Bool)

(declare-fun res!3122498 () Bool)

(declare-fun e!4641623 () Bool)

(assert (=> b!7852526 (=> (not res!3122498) (not e!4641623))))

(assert (=> b!7852526 (= res!3122498 call!727783)))

(assert (=> b!7852526 (= e!4641626 e!4641623)))

(declare-fun bm!727778 () Bool)

(assert (=> bm!727778 (= call!727783 call!727782)))

(declare-fun b!7852527 () Bool)

(assert (=> b!7852527 (= e!4641620 e!4641625)))

(declare-fun res!3122499 () Bool)

(assert (=> b!7852527 (= res!3122499 (not (nullable!9361 (reg!21418 r1!6227))))))

(assert (=> b!7852527 (=> (not res!3122499) (not e!4641625))))

(declare-fun b!7852528 () Bool)

(assert (=> b!7852528 (= e!4641623 call!727781)))

(assert (= (and d!2353489 (not res!3122497)) b!7852521))

(assert (= (and b!7852521 c!1443247) b!7852527))

(assert (= (and b!7852521 (not c!1443247)) b!7852522))

(assert (= (and b!7852527 res!3122499) b!7852523))

(assert (= (and b!7852522 c!1443248) b!7852526))

(assert (= (and b!7852522 (not c!1443248)) b!7852520))

(assert (= (and b!7852526 res!3122498) b!7852528))

(assert (= (and b!7852520 (not res!3122496)) b!7852525))

(assert (= (and b!7852525 res!3122500) b!7852524))

(assert (= (or b!7852526 b!7852524) bm!727778))

(assert (= (or b!7852528 b!7852525) bm!727776))

(assert (= (or b!7852523 bm!727778) bm!727777))

(declare-fun m!8258900 () Bool)

(assert (=> bm!727776 m!8258900))

(declare-fun m!8258902 () Bool)

(assert (=> bm!727777 m!8258902))

(declare-fun m!8258904 () Bool)

(assert (=> b!7852527 m!8258904))

(assert (=> start!743282 d!2353489))

(declare-fun b!7852529 () Bool)

(declare-fun res!3122504 () Bool)

(declare-fun e!4641627 () Bool)

(assert (=> b!7852529 (=> res!3122504 e!4641627)))

(assert (=> b!7852529 (= res!3122504 (not ((_ is ElementMatch!21089) r1!6227)))))

(declare-fun e!4641632 () Bool)

(assert (=> b!7852529 (= e!4641632 e!4641627)))

(declare-fun b!7852530 () Bool)

(declare-fun lt!2679779 () Bool)

(assert (=> b!7852530 (= e!4641632 (not lt!2679779))))

(declare-fun b!7852531 () Bool)

(declare-fun e!4641629 () Bool)

(assert (=> b!7852531 (= e!4641629 (not (= (head!16046 s1!4084) (c!1443215 r1!6227))))))

(declare-fun d!2353491 () Bool)

(declare-fun e!4641631 () Bool)

(assert (=> d!2353491 e!4641631))

(declare-fun c!1443251 () Bool)

(assert (=> d!2353491 (= c!1443251 ((_ is EmptyExpr!21089) r1!6227))))

(declare-fun e!4641630 () Bool)

(assert (=> d!2353491 (= lt!2679779 e!4641630)))

(declare-fun c!1443249 () Bool)

(assert (=> d!2353491 (= c!1443249 (isEmpty!42335 s1!4084))))

(assert (=> d!2353491 (validRegex!11499 r1!6227)))

(assert (=> d!2353491 (= (matchR!10525 r1!6227 s1!4084) lt!2679779)))

(declare-fun b!7852532 () Bool)

(declare-fun e!4641633 () Bool)

(assert (=> b!7852532 (= e!4641627 e!4641633)))

(declare-fun res!3122502 () Bool)

(assert (=> b!7852532 (=> (not res!3122502) (not e!4641633))))

(assert (=> b!7852532 (= res!3122502 (not lt!2679779))))

(declare-fun bm!727781 () Bool)

(declare-fun call!727786 () Bool)

(assert (=> bm!727781 (= call!727786 (isEmpty!42335 s1!4084))))

(declare-fun b!7852533 () Bool)

(assert (=> b!7852533 (= e!4641631 e!4641632)))

(declare-fun c!1443250 () Bool)

(assert (=> b!7852533 (= c!1443250 ((_ is EmptyLang!21089) r1!6227))))

(declare-fun b!7852534 () Bool)

(assert (=> b!7852534 (= e!4641631 (= lt!2679779 call!727786))))

(declare-fun b!7852535 () Bool)

(declare-fun e!4641628 () Bool)

(assert (=> b!7852535 (= e!4641628 (= (head!16046 s1!4084) (c!1443215 r1!6227)))))

(declare-fun b!7852536 () Bool)

(assert (=> b!7852536 (= e!4641633 e!4641629)))

(declare-fun res!3122507 () Bool)

(assert (=> b!7852536 (=> res!3122507 e!4641629)))

(assert (=> b!7852536 (= res!3122507 call!727786)))

(declare-fun b!7852537 () Bool)

(assert (=> b!7852537 (= e!4641630 (nullable!9361 r1!6227))))

(declare-fun b!7852538 () Bool)

(declare-fun res!3122508 () Bool)

(assert (=> b!7852538 (=> res!3122508 e!4641629)))

(assert (=> b!7852538 (= res!3122508 (not (isEmpty!42335 (tail!15589 s1!4084))))))

(declare-fun b!7852539 () Bool)

(declare-fun res!3122503 () Bool)

(assert (=> b!7852539 (=> res!3122503 e!4641627)))

(assert (=> b!7852539 (= res!3122503 e!4641628)))

(declare-fun res!3122501 () Bool)

(assert (=> b!7852539 (=> (not res!3122501) (not e!4641628))))

(assert (=> b!7852539 (= res!3122501 lt!2679779)))

(declare-fun b!7852540 () Bool)

(declare-fun res!3122505 () Bool)

(assert (=> b!7852540 (=> (not res!3122505) (not e!4641628))))

(assert (=> b!7852540 (= res!3122505 (isEmpty!42335 (tail!15589 s1!4084)))))

(declare-fun b!7852541 () Bool)

(declare-fun res!3122506 () Bool)

(assert (=> b!7852541 (=> (not res!3122506) (not e!4641628))))

(assert (=> b!7852541 (= res!3122506 (not call!727786))))

(declare-fun b!7852542 () Bool)

(assert (=> b!7852542 (= e!4641630 (matchR!10525 (derivativeStep!6324 r1!6227 (head!16046 s1!4084)) (tail!15589 s1!4084)))))

(assert (= (and d!2353491 c!1443249) b!7852537))

(assert (= (and d!2353491 (not c!1443249)) b!7852542))

(assert (= (and d!2353491 c!1443251) b!7852534))

(assert (= (and d!2353491 (not c!1443251)) b!7852533))

(assert (= (and b!7852533 c!1443250) b!7852530))

(assert (= (and b!7852533 (not c!1443250)) b!7852529))

(assert (= (and b!7852529 (not res!3122504)) b!7852539))

(assert (= (and b!7852539 res!3122501) b!7852541))

(assert (= (and b!7852541 res!3122506) b!7852540))

(assert (= (and b!7852540 res!3122505) b!7852535))

(assert (= (and b!7852539 (not res!3122503)) b!7852532))

(assert (= (and b!7852532 res!3122502) b!7852536))

(assert (= (and b!7852536 (not res!3122507)) b!7852538))

(assert (= (and b!7852538 (not res!3122508)) b!7852531))

(assert (= (or b!7852534 b!7852541 b!7852536) bm!727781))

(declare-fun m!8258906 () Bool)

(assert (=> b!7852531 m!8258906))

(declare-fun m!8258908 () Bool)

(assert (=> b!7852537 m!8258908))

(declare-fun m!8258910 () Bool)

(assert (=> d!2353491 m!8258910))

(assert (=> d!2353491 m!8258842))

(assert (=> b!7852535 m!8258906))

(declare-fun m!8258912 () Bool)

(assert (=> b!7852540 m!8258912))

(assert (=> b!7852540 m!8258912))

(declare-fun m!8258914 () Bool)

(assert (=> b!7852540 m!8258914))

(assert (=> b!7852538 m!8258912))

(assert (=> b!7852538 m!8258912))

(assert (=> b!7852538 m!8258914))

(assert (=> b!7852542 m!8258906))

(assert (=> b!7852542 m!8258906))

(declare-fun m!8258916 () Bool)

(assert (=> b!7852542 m!8258916))

(assert (=> b!7852542 m!8258912))

(assert (=> b!7852542 m!8258916))

(assert (=> b!7852542 m!8258912))

(declare-fun m!8258918 () Bool)

(assert (=> b!7852542 m!8258918))

(assert (=> bm!727781 m!8258910))

(assert (=> b!7852374 d!2353491))

(declare-fun bm!727782 () Bool)

(declare-fun c!1443253 () Bool)

(declare-fun call!727787 () Bool)

(assert (=> bm!727782 (= call!727787 (validRegex!11499 (ite c!1443253 (regTwo!42691 (derivativeStep!6324 r1!6227 (h!80272 s1!4084))) (regOne!42690 (derivativeStep!6324 r1!6227 (h!80272 s1!4084))))))))

(declare-fun b!7852543 () Bool)

(declare-fun res!3122509 () Bool)

(declare-fun e!4641638 () Bool)

(assert (=> b!7852543 (=> res!3122509 e!4641638)))

(assert (=> b!7852543 (= res!3122509 (not ((_ is Concat!29934) (derivativeStep!6324 r1!6227 (h!80272 s1!4084)))))))

(declare-fun e!4641640 () Bool)

(assert (=> b!7852543 (= e!4641640 e!4641638)))

(declare-fun b!7852544 () Bool)

(declare-fun e!4641635 () Bool)

(declare-fun e!4641634 () Bool)

(assert (=> b!7852544 (= e!4641635 e!4641634)))

(declare-fun c!1443252 () Bool)

(assert (=> b!7852544 (= c!1443252 ((_ is Star!21089) (derivativeStep!6324 r1!6227 (h!80272 s1!4084))))))

(declare-fun call!727788 () Bool)

(declare-fun bm!727783 () Bool)

(assert (=> bm!727783 (= call!727788 (validRegex!11499 (ite c!1443252 (reg!21418 (derivativeStep!6324 r1!6227 (h!80272 s1!4084))) (ite c!1443253 (regOne!42691 (derivativeStep!6324 r1!6227 (h!80272 s1!4084))) (regTwo!42690 (derivativeStep!6324 r1!6227 (h!80272 s1!4084)))))))))

(declare-fun b!7852545 () Bool)

(assert (=> b!7852545 (= e!4641634 e!4641640)))

(assert (=> b!7852545 (= c!1443253 ((_ is Union!21089) (derivativeStep!6324 r1!6227 (h!80272 s1!4084))))))

(declare-fun b!7852546 () Bool)

(declare-fun e!4641639 () Bool)

(assert (=> b!7852546 (= e!4641639 call!727788)))

(declare-fun b!7852547 () Bool)

(declare-fun e!4641636 () Bool)

(declare-fun call!727789 () Bool)

(assert (=> b!7852547 (= e!4641636 call!727789)))

(declare-fun d!2353493 () Bool)

(declare-fun res!3122510 () Bool)

(assert (=> d!2353493 (=> res!3122510 e!4641635)))

(assert (=> d!2353493 (= res!3122510 ((_ is ElementMatch!21089) (derivativeStep!6324 r1!6227 (h!80272 s1!4084))))))

(assert (=> d!2353493 (= (validRegex!11499 (derivativeStep!6324 r1!6227 (h!80272 s1!4084))) e!4641635)))

(declare-fun b!7852548 () Bool)

(assert (=> b!7852548 (= e!4641638 e!4641636)))

(declare-fun res!3122513 () Bool)

(assert (=> b!7852548 (=> (not res!3122513) (not e!4641636))))

(assert (=> b!7852548 (= res!3122513 call!727787)))

(declare-fun b!7852549 () Bool)

(declare-fun res!3122511 () Bool)

(declare-fun e!4641637 () Bool)

(assert (=> b!7852549 (=> (not res!3122511) (not e!4641637))))

(assert (=> b!7852549 (= res!3122511 call!727789)))

(assert (=> b!7852549 (= e!4641640 e!4641637)))

(declare-fun bm!727784 () Bool)

(assert (=> bm!727784 (= call!727789 call!727788)))

(declare-fun b!7852550 () Bool)

(assert (=> b!7852550 (= e!4641634 e!4641639)))

(declare-fun res!3122512 () Bool)

(assert (=> b!7852550 (= res!3122512 (not (nullable!9361 (reg!21418 (derivativeStep!6324 r1!6227 (h!80272 s1!4084))))))))

(assert (=> b!7852550 (=> (not res!3122512) (not e!4641639))))

(declare-fun b!7852551 () Bool)

(assert (=> b!7852551 (= e!4641637 call!727787)))

(assert (= (and d!2353493 (not res!3122510)) b!7852544))

(assert (= (and b!7852544 c!1443252) b!7852550))

(assert (= (and b!7852544 (not c!1443252)) b!7852545))

(assert (= (and b!7852550 res!3122512) b!7852546))

(assert (= (and b!7852545 c!1443253) b!7852549))

(assert (= (and b!7852545 (not c!1443253)) b!7852543))

(assert (= (and b!7852549 res!3122511) b!7852551))

(assert (= (and b!7852543 (not res!3122509)) b!7852548))

(assert (= (and b!7852548 res!3122513) b!7852547))

(assert (= (or b!7852549 b!7852547) bm!727784))

(assert (= (or b!7852551 b!7852548) bm!727782))

(assert (= (or b!7852546 bm!727784) bm!727783))

(declare-fun m!8258920 () Bool)

(assert (=> bm!727782 m!8258920))

(declare-fun m!8258922 () Bool)

(assert (=> bm!727783 m!8258922))

(declare-fun m!8258924 () Bool)

(assert (=> b!7852550 m!8258924))

(assert (=> b!7852375 d!2353493))

(declare-fun b!7852610 () Bool)

(declare-fun e!4641676 () Regex!21089)

(declare-fun call!727812 () Regex!21089)

(assert (=> b!7852610 (= e!4641676 (Concat!29934 call!727812 r1!6227))))

(declare-fun b!7852611 () Bool)

(declare-fun c!1443279 () Bool)

(assert (=> b!7852611 (= c!1443279 ((_ is Union!21089) r1!6227))))

(declare-fun e!4641678 () Regex!21089)

(declare-fun e!4641677 () Regex!21089)

(assert (=> b!7852611 (= e!4641678 e!4641677)))

(declare-fun bm!727807 () Bool)

(declare-fun call!727814 () Regex!21089)

(assert (=> bm!727807 (= call!727812 call!727814)))

(declare-fun b!7852612 () Bool)

(declare-fun e!4641675 () Regex!21089)

(assert (=> b!7852612 (= e!4641675 e!4641678)))

(declare-fun c!1443280 () Bool)

(assert (=> b!7852612 (= c!1443280 ((_ is ElementMatch!21089) r1!6227))))

(declare-fun b!7852613 () Bool)

(assert (=> b!7852613 (= e!4641677 e!4641676)))

(declare-fun c!1443278 () Bool)

(assert (=> b!7852613 (= c!1443278 ((_ is Star!21089) r1!6227))))

(declare-fun bm!727808 () Bool)

(declare-fun call!727813 () Regex!21089)

(assert (=> bm!727808 (= call!727813 call!727812)))

(declare-fun e!4641679 () Regex!21089)

(declare-fun call!727815 () Regex!21089)

(declare-fun b!7852614 () Bool)

(assert (=> b!7852614 (= e!4641679 (Union!21089 (Concat!29934 call!727815 (regTwo!42690 r1!6227)) call!727813))))

(declare-fun b!7852615 () Bool)

(declare-fun c!1443281 () Bool)

(assert (=> b!7852615 (= c!1443281 (nullable!9361 (regOne!42690 r1!6227)))))

(assert (=> b!7852615 (= e!4641676 e!4641679)))

(declare-fun bm!727809 () Bool)

(assert (=> bm!727809 (= call!727815 (derivativeStep!6324 (ite c!1443279 (regOne!42691 r1!6227) (regOne!42690 r1!6227)) (h!80272 s1!4084)))))

(declare-fun b!7852616 () Bool)

(assert (=> b!7852616 (= e!4641675 EmptyLang!21089)))

(declare-fun b!7852617 () Bool)

(assert (=> b!7852617 (= e!4641678 (ite (= (h!80272 s1!4084) (c!1443215 r1!6227)) EmptyExpr!21089 EmptyLang!21089))))

(declare-fun b!7852618 () Bool)

(assert (=> b!7852618 (= e!4641679 (Union!21089 (Concat!29934 call!727813 (regTwo!42690 r1!6227)) EmptyLang!21089))))

(declare-fun b!7852619 () Bool)

(assert (=> b!7852619 (= e!4641677 (Union!21089 call!727815 call!727814))))

(declare-fun bm!727810 () Bool)

(assert (=> bm!727810 (= call!727814 (derivativeStep!6324 (ite c!1443279 (regTwo!42691 r1!6227) (ite c!1443278 (reg!21418 r1!6227) (ite c!1443281 (regTwo!42690 r1!6227) (regOne!42690 r1!6227)))) (h!80272 s1!4084)))))

(declare-fun d!2353495 () Bool)

(declare-fun lt!2679784 () Regex!21089)

(assert (=> d!2353495 (validRegex!11499 lt!2679784)))

(assert (=> d!2353495 (= lt!2679784 e!4641675)))

(declare-fun c!1443282 () Bool)

(assert (=> d!2353495 (= c!1443282 (or ((_ is EmptyExpr!21089) r1!6227) ((_ is EmptyLang!21089) r1!6227)))))

(assert (=> d!2353495 (validRegex!11499 r1!6227)))

(assert (=> d!2353495 (= (derivativeStep!6324 r1!6227 (h!80272 s1!4084)) lt!2679784)))

(assert (= (and d!2353495 c!1443282) b!7852616))

(assert (= (and d!2353495 (not c!1443282)) b!7852612))

(assert (= (and b!7852612 c!1443280) b!7852617))

(assert (= (and b!7852612 (not c!1443280)) b!7852611))

(assert (= (and b!7852611 c!1443279) b!7852619))

(assert (= (and b!7852611 (not c!1443279)) b!7852613))

(assert (= (and b!7852613 c!1443278) b!7852610))

(assert (= (and b!7852613 (not c!1443278)) b!7852615))

(assert (= (and b!7852615 c!1443281) b!7852614))

(assert (= (and b!7852615 (not c!1443281)) b!7852618))

(assert (= (or b!7852614 b!7852618) bm!727808))

(assert (= (or b!7852610 bm!727808) bm!727807))

(assert (= (or b!7852619 bm!727807) bm!727810))

(assert (= (or b!7852619 b!7852614) bm!727809))

(declare-fun m!8258938 () Bool)

(assert (=> b!7852615 m!8258938))

(declare-fun m!8258940 () Bool)

(assert (=> bm!727809 m!8258940))

(declare-fun m!8258942 () Bool)

(assert (=> bm!727810 m!8258942))

(declare-fun m!8258944 () Bool)

(assert (=> d!2353495 m!8258944))

(assert (=> d!2353495 m!8258842))

(assert (=> b!7852375 d!2353495))

(declare-fun b!7852643 () Bool)

(declare-fun e!4641687 () Bool)

(declare-fun tp!2325683 () Bool)

(declare-fun tp!2325680 () Bool)

(assert (=> b!7852643 (= e!4641687 (and tp!2325683 tp!2325680))))

(declare-fun b!7852642 () Bool)

(declare-fun tp!2325679 () Bool)

(assert (=> b!7852642 (= e!4641687 tp!2325679)))

(declare-fun b!7852640 () Bool)

(assert (=> b!7852640 (= e!4641687 tp_is_empty!52577)))

(assert (=> b!7852365 (= tp!2325662 e!4641687)))

(declare-fun b!7852641 () Bool)

(declare-fun tp!2325681 () Bool)

(declare-fun tp!2325682 () Bool)

(assert (=> b!7852641 (= e!4641687 (and tp!2325681 tp!2325682))))

(assert (= (and b!7852365 ((_ is ElementMatch!21089) (regOne!42690 r1!6227))) b!7852640))

(assert (= (and b!7852365 ((_ is Concat!29934) (regOne!42690 r1!6227))) b!7852641))

(assert (= (and b!7852365 ((_ is Star!21089) (regOne!42690 r1!6227))) b!7852642))

(assert (= (and b!7852365 ((_ is Union!21089) (regOne!42690 r1!6227))) b!7852643))

(declare-fun b!7852647 () Bool)

(declare-fun e!4641688 () Bool)

(declare-fun tp!2325688 () Bool)

(declare-fun tp!2325685 () Bool)

(assert (=> b!7852647 (= e!4641688 (and tp!2325688 tp!2325685))))

(declare-fun b!7852646 () Bool)

(declare-fun tp!2325684 () Bool)

(assert (=> b!7852646 (= e!4641688 tp!2325684)))

(declare-fun b!7852644 () Bool)

(assert (=> b!7852644 (= e!4641688 tp_is_empty!52577)))

(assert (=> b!7852365 (= tp!2325665 e!4641688)))

(declare-fun b!7852645 () Bool)

(declare-fun tp!2325686 () Bool)

(declare-fun tp!2325687 () Bool)

(assert (=> b!7852645 (= e!4641688 (and tp!2325686 tp!2325687))))

(assert (= (and b!7852365 ((_ is ElementMatch!21089) (regTwo!42690 r1!6227))) b!7852644))

(assert (= (and b!7852365 ((_ is Concat!29934) (regTwo!42690 r1!6227))) b!7852645))

(assert (= (and b!7852365 ((_ is Star!21089) (regTwo!42690 r1!6227))) b!7852646))

(assert (= (and b!7852365 ((_ is Union!21089) (regTwo!42690 r1!6227))) b!7852647))

(declare-fun b!7852651 () Bool)

(declare-fun e!4641689 () Bool)

(declare-fun tp!2325693 () Bool)

(declare-fun tp!2325690 () Bool)

(assert (=> b!7852651 (= e!4641689 (and tp!2325693 tp!2325690))))

(declare-fun b!7852650 () Bool)

(declare-fun tp!2325689 () Bool)

(assert (=> b!7852650 (= e!4641689 tp!2325689)))

(declare-fun b!7852648 () Bool)

(assert (=> b!7852648 (= e!4641689 tp_is_empty!52577)))

(assert (=> b!7852371 (= tp!2325660 e!4641689)))

(declare-fun b!7852649 () Bool)

(declare-fun tp!2325691 () Bool)

(declare-fun tp!2325692 () Bool)

(assert (=> b!7852649 (= e!4641689 (and tp!2325691 tp!2325692))))

(assert (= (and b!7852371 ((_ is ElementMatch!21089) (reg!21418 r1!6227))) b!7852648))

(assert (= (and b!7852371 ((_ is Concat!29934) (reg!21418 r1!6227))) b!7852649))

(assert (= (and b!7852371 ((_ is Star!21089) (reg!21418 r1!6227))) b!7852650))

(assert (= (and b!7852371 ((_ is Union!21089) (reg!21418 r1!6227))) b!7852651))

(declare-fun b!7852665 () Bool)

(declare-fun e!4641699 () Bool)

(declare-fun tp!2325696 () Bool)

(assert (=> b!7852665 (= e!4641699 (and tp_is_empty!52577 tp!2325696))))

(assert (=> b!7852376 (= tp!2325661 e!4641699)))

(assert (= (and b!7852376 ((_ is Cons!73824) (t!388683 s1!4084))) b!7852665))

(declare-fun b!7852669 () Bool)

(declare-fun e!4641700 () Bool)

(declare-fun tp!2325701 () Bool)

(declare-fun tp!2325698 () Bool)

(assert (=> b!7852669 (= e!4641700 (and tp!2325701 tp!2325698))))

(declare-fun b!7852668 () Bool)

(declare-fun tp!2325697 () Bool)

(assert (=> b!7852668 (= e!4641700 tp!2325697)))

(declare-fun b!7852666 () Bool)

(assert (=> b!7852666 (= e!4641700 tp_is_empty!52577)))

(assert (=> b!7852366 (= tp!2325667 e!4641700)))

(declare-fun b!7852667 () Bool)

(declare-fun tp!2325699 () Bool)

(declare-fun tp!2325700 () Bool)

(assert (=> b!7852667 (= e!4641700 (and tp!2325699 tp!2325700))))

(assert (= (and b!7852366 ((_ is ElementMatch!21089) (regOne!42691 r1!6227))) b!7852666))

(assert (= (and b!7852366 ((_ is Concat!29934) (regOne!42691 r1!6227))) b!7852667))

(assert (= (and b!7852366 ((_ is Star!21089) (regOne!42691 r1!6227))) b!7852668))

(assert (= (and b!7852366 ((_ is Union!21089) (regOne!42691 r1!6227))) b!7852669))

(declare-fun b!7852673 () Bool)

(declare-fun e!4641701 () Bool)

(declare-fun tp!2325706 () Bool)

(declare-fun tp!2325703 () Bool)

(assert (=> b!7852673 (= e!4641701 (and tp!2325706 tp!2325703))))

(declare-fun b!7852672 () Bool)

(declare-fun tp!2325702 () Bool)

(assert (=> b!7852672 (= e!4641701 tp!2325702)))

(declare-fun b!7852670 () Bool)

(assert (=> b!7852670 (= e!4641701 tp_is_empty!52577)))

(assert (=> b!7852366 (= tp!2325664 e!4641701)))

(declare-fun b!7852671 () Bool)

(declare-fun tp!2325704 () Bool)

(declare-fun tp!2325705 () Bool)

(assert (=> b!7852671 (= e!4641701 (and tp!2325704 tp!2325705))))

(assert (= (and b!7852366 ((_ is ElementMatch!21089) (regTwo!42691 r1!6227))) b!7852670))

(assert (= (and b!7852366 ((_ is Concat!29934) (regTwo!42691 r1!6227))) b!7852671))

(assert (= (and b!7852366 ((_ is Star!21089) (regTwo!42691 r1!6227))) b!7852672))

(assert (= (and b!7852366 ((_ is Union!21089) (regTwo!42691 r1!6227))) b!7852673))

(declare-fun b!7852674 () Bool)

(declare-fun e!4641702 () Bool)

(declare-fun tp!2325707 () Bool)

(assert (=> b!7852674 (= e!4641702 (and tp_is_empty!52577 tp!2325707))))

(assert (=> b!7852372 (= tp!2325663 e!4641702)))

(assert (= (and b!7852372 ((_ is Cons!73824) (t!388683 s2!3706))) b!7852674))

(declare-fun b!7852680 () Bool)

(declare-fun e!4641703 () Bool)

(declare-fun tp!2325712 () Bool)

(declare-fun tp!2325709 () Bool)

(assert (=> b!7852680 (= e!4641703 (and tp!2325712 tp!2325709))))

(declare-fun b!7852679 () Bool)

(declare-fun tp!2325708 () Bool)

(assert (=> b!7852679 (= e!4641703 tp!2325708)))

(declare-fun b!7852676 () Bool)

(assert (=> b!7852676 (= e!4641703 tp_is_empty!52577)))

(assert (=> b!7852373 (= tp!2325666 e!4641703)))

(declare-fun b!7852678 () Bool)

(declare-fun tp!2325710 () Bool)

(declare-fun tp!2325711 () Bool)

(assert (=> b!7852678 (= e!4641703 (and tp!2325710 tp!2325711))))

(assert (= (and b!7852373 ((_ is ElementMatch!21089) (regOne!42690 r2!6165))) b!7852676))

(assert (= (and b!7852373 ((_ is Concat!29934) (regOne!42690 r2!6165))) b!7852678))

(assert (= (and b!7852373 ((_ is Star!21089) (regOne!42690 r2!6165))) b!7852679))

(assert (= (and b!7852373 ((_ is Union!21089) (regOne!42690 r2!6165))) b!7852680))

(declare-fun b!7852688 () Bool)

(declare-fun e!4641706 () Bool)

(declare-fun tp!2325719 () Bool)

(declare-fun tp!2325716 () Bool)

(assert (=> b!7852688 (= e!4641706 (and tp!2325719 tp!2325716))))

(declare-fun b!7852687 () Bool)

(declare-fun tp!2325715 () Bool)

(assert (=> b!7852687 (= e!4641706 tp!2325715)))

(declare-fun b!7852685 () Bool)

(assert (=> b!7852685 (= e!4641706 tp_is_empty!52577)))

(assert (=> b!7852373 (= tp!2325657 e!4641706)))

(declare-fun b!7852686 () Bool)

(declare-fun tp!2325717 () Bool)

(declare-fun tp!2325718 () Bool)

(assert (=> b!7852686 (= e!4641706 (and tp!2325717 tp!2325718))))

(assert (= (and b!7852373 ((_ is ElementMatch!21089) (regTwo!42690 r2!6165))) b!7852685))

(assert (= (and b!7852373 ((_ is Concat!29934) (regTwo!42690 r2!6165))) b!7852686))

(assert (= (and b!7852373 ((_ is Star!21089) (regTwo!42690 r2!6165))) b!7852687))

(assert (= (and b!7852373 ((_ is Union!21089) (regTwo!42690 r2!6165))) b!7852688))

(declare-fun b!7852696 () Bool)

(declare-fun e!4641707 () Bool)

(declare-fun tp!2325730 () Bool)

(declare-fun tp!2325727 () Bool)

(assert (=> b!7852696 (= e!4641707 (and tp!2325730 tp!2325727))))

(declare-fun b!7852695 () Bool)

(declare-fun tp!2325726 () Bool)

(assert (=> b!7852695 (= e!4641707 tp!2325726)))

(declare-fun b!7852693 () Bool)

(assert (=> b!7852693 (= e!4641707 tp_is_empty!52577)))

(assert (=> b!7852369 (= tp!2325658 e!4641707)))

(declare-fun b!7852694 () Bool)

(declare-fun tp!2325728 () Bool)

(declare-fun tp!2325729 () Bool)

(assert (=> b!7852694 (= e!4641707 (and tp!2325728 tp!2325729))))

(assert (= (and b!7852369 ((_ is ElementMatch!21089) (regOne!42691 r2!6165))) b!7852693))

(assert (= (and b!7852369 ((_ is Concat!29934) (regOne!42691 r2!6165))) b!7852694))

(assert (= (and b!7852369 ((_ is Star!21089) (regOne!42691 r2!6165))) b!7852695))

(assert (= (and b!7852369 ((_ is Union!21089) (regOne!42691 r2!6165))) b!7852696))

(declare-fun b!7852700 () Bool)

(declare-fun e!4641708 () Bool)

(declare-fun tp!2325737 () Bool)

(declare-fun tp!2325734 () Bool)

(assert (=> b!7852700 (= e!4641708 (and tp!2325737 tp!2325734))))

(declare-fun b!7852699 () Bool)

(declare-fun tp!2325733 () Bool)

(assert (=> b!7852699 (= e!4641708 tp!2325733)))

(declare-fun b!7852697 () Bool)

(assert (=> b!7852697 (= e!4641708 tp_is_empty!52577)))

(assert (=> b!7852369 (= tp!2325668 e!4641708)))

(declare-fun b!7852698 () Bool)

(declare-fun tp!2325735 () Bool)

(declare-fun tp!2325736 () Bool)

(assert (=> b!7852698 (= e!4641708 (and tp!2325735 tp!2325736))))

(assert (= (and b!7852369 ((_ is ElementMatch!21089) (regTwo!42691 r2!6165))) b!7852697))

(assert (= (and b!7852369 ((_ is Concat!29934) (regTwo!42691 r2!6165))) b!7852698))

(assert (= (and b!7852369 ((_ is Star!21089) (regTwo!42691 r2!6165))) b!7852699))

(assert (= (and b!7852369 ((_ is Union!21089) (regTwo!42691 r2!6165))) b!7852700))

(declare-fun b!7852704 () Bool)

(declare-fun e!4641709 () Bool)

(declare-fun tp!2325742 () Bool)

(declare-fun tp!2325739 () Bool)

(assert (=> b!7852704 (= e!4641709 (and tp!2325742 tp!2325739))))

(declare-fun b!7852703 () Bool)

(declare-fun tp!2325738 () Bool)

(assert (=> b!7852703 (= e!4641709 tp!2325738)))

(declare-fun b!7852701 () Bool)

(assert (=> b!7852701 (= e!4641709 tp_is_empty!52577)))

(assert (=> b!7852364 (= tp!2325659 e!4641709)))

(declare-fun b!7852702 () Bool)

(declare-fun tp!2325740 () Bool)

(declare-fun tp!2325741 () Bool)

(assert (=> b!7852702 (= e!4641709 (and tp!2325740 tp!2325741))))

(assert (= (and b!7852364 ((_ is ElementMatch!21089) (reg!21418 r2!6165))) b!7852701))

(assert (= (and b!7852364 ((_ is Concat!29934) (reg!21418 r2!6165))) b!7852702))

(assert (= (and b!7852364 ((_ is Star!21089) (reg!21418 r2!6165))) b!7852703))

(assert (= (and b!7852364 ((_ is Union!21089) (reg!21418 r2!6165))) b!7852704))

(check-sat tp_is_empty!52577 (not bm!727781) (not b!7852535) (not b!7852531) (not b!7852669) (not b!7852698) (not b!7852694) (not b!7852615) (not b!7852696) (not bm!727776) (not b!7852704) (not b!7852538) (not bm!727771) (not d!2353483) (not bm!727783) (not b!7852498) (not b!7852645) (not b!7852673) (not b!7852700) (not b!7852668) (not bm!727763) (not b!7852678) (not b!7852702) (not b!7852537) (not b!7852651) (not b!7852647) (not b!7852687) (not b!7852649) (not b!7852505) (not b!7852540) (not b!7852527) (not b!7852695) (not b!7852646) (not b!7852542) (not bm!727809) (not b!7852641) (not d!2353491) (not b!7852402) (not b!7852650) (not b!7852643) (not b!7852494) (not b!7852672) (not b!7852671) (not b!7852501) (not b!7852703) (not b!7852550) (not b!7852503) (not b!7852500) (not bm!727810) (not bm!727777) (not bm!727782) (not b!7852667) (not b!7852665) (not b!7852688) (not b!7852642) (not b!7852679) (not b!7852680) (not d!2353495) (not b!7852686) (not bm!727762) (not b!7852674) (not b!7852699))
(check-sat)
