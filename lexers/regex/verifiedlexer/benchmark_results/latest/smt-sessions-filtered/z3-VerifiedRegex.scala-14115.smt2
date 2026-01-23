; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742590 () Bool)

(assert start!742590)

(declare-fun b!7840613 () Bool)

(declare-fun e!4635804 () Bool)

(declare-fun tp!2320587 () Bool)

(declare-fun tp!2320590 () Bool)

(assert (=> b!7840613 (= e!4635804 (and tp!2320587 tp!2320590))))

(declare-fun b!7840614 () Bool)

(declare-fun tp!2320593 () Bool)

(assert (=> b!7840614 (= e!4635804 tp!2320593)))

(declare-fun b!7840615 () Bool)

(declare-fun res!3118397 () Bool)

(declare-fun e!4635803 () Bool)

(assert (=> b!7840615 (=> (not res!3118397) (not e!4635803))))

(declare-datatypes ((C!42376 0))(
  ( (C!42377 (val!31628 Int)) )
))
(declare-datatypes ((List!73862 0))(
  ( (Nil!73738) (Cons!73738 (h!80186 C!42376) (t!388597 List!73862)) )
))
(declare-fun s2!2463 () List!73862)

(get-info :version)

(assert (=> b!7840615 (= res!3118397 (not ((_ is Nil!73738) s2!2463)))))

(declare-fun b!7840616 () Bool)

(declare-fun size!42787 (List!73862) Int)

(assert (=> b!7840616 (= e!4635803 (not (< (size!42787 (t!388597 s2!2463)) (size!42787 s2!2463))))))

(declare-fun s1!2717 () List!73862)

(declare-fun s!10212 () List!73862)

(declare-fun ++!18059 (List!73862 List!73862) List!73862)

(assert (=> b!7840616 (= (++!18059 (++!18059 s1!2717 (Cons!73738 (h!80186 s2!2463) Nil!73738)) (t!388597 s2!2463)) s!10212)))

(declare-datatypes ((Unit!168832 0))(
  ( (Unit!168833) )
))
(declare-fun lt!2678420 () Unit!168832)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3462 (List!73862 C!42376 List!73862 List!73862) Unit!168832)

(assert (=> b!7840616 (= lt!2678420 (lemmaMoveElementToOtherListKeepsConcatEq!3462 s1!2717 (h!80186 s2!2463) (t!388597 s2!2463) s!10212))))

(declare-fun b!7840617 () Bool)

(declare-fun e!4635801 () Bool)

(declare-fun tp!2320592 () Bool)

(assert (=> b!7840617 (= e!4635801 tp!2320592)))

(declare-fun b!7840618 () Bool)

(declare-fun res!3118399 () Bool)

(assert (=> b!7840618 (=> (not res!3118399) (not e!4635803))))

(assert (=> b!7840618 (= res!3118399 (= (++!18059 s1!2717 s2!2463) s!10212))))

(declare-fun b!7840619 () Bool)

(declare-fun tp!2320598 () Bool)

(declare-fun tp!2320597 () Bool)

(assert (=> b!7840619 (= e!4635801 (and tp!2320598 tp!2320597))))

(declare-fun b!7840620 () Bool)

(declare-fun tp!2320594 () Bool)

(declare-fun tp!2320591 () Bool)

(assert (=> b!7840620 (= e!4635804 (and tp!2320594 tp!2320591))))

(declare-fun res!3118400 () Bool)

(assert (=> start!742590 (=> (not res!3118400) (not e!4635803))))

(declare-datatypes ((Regex!21025 0))(
  ( (ElementMatch!21025 (c!1441494 C!42376)) (Concat!29870 (regOne!42562 Regex!21025) (regTwo!42562 Regex!21025)) (EmptyExpr!21025) (Star!21025 (reg!21354 Regex!21025)) (EmptyLang!21025) (Union!21025 (regOne!42563 Regex!21025) (regTwo!42563 Regex!21025)) )
))
(declare-fun r1!3326 () Regex!21025)

(declare-fun validRegex!11439 (Regex!21025) Bool)

(assert (=> start!742590 (= res!3118400 (validRegex!11439 r1!3326))))

(assert (=> start!742590 e!4635803))

(declare-fun e!4635802 () Bool)

(assert (=> start!742590 e!4635802))

(assert (=> start!742590 e!4635804))

(declare-fun e!4635799 () Bool)

(assert (=> start!742590 e!4635799))

(assert (=> start!742590 e!4635801))

(declare-fun e!4635800 () Bool)

(assert (=> start!742590 e!4635800))

(declare-fun b!7840621 () Bool)

(declare-fun res!3118396 () Bool)

(assert (=> b!7840621 (=> (not res!3118396) (not e!4635803))))

(declare-fun e!4635805 () Bool)

(assert (=> b!7840621 (= res!3118396 e!4635805)))

(declare-fun res!3118395 () Bool)

(assert (=> b!7840621 (=> res!3118395 e!4635805)))

(declare-fun matchR!10479 (Regex!21025 List!73862) Bool)

(assert (=> b!7840621 (= res!3118395 (not (matchR!10479 r1!3326 s1!2717)))))

(declare-fun b!7840622 () Bool)

(declare-fun tp_is_empty!52405 () Bool)

(declare-fun tp!2320595 () Bool)

(assert (=> b!7840622 (= e!4635800 (and tp_is_empty!52405 tp!2320595))))

(declare-fun b!7840623 () Bool)

(declare-fun r2!3226 () Regex!21025)

(assert (=> b!7840623 (= e!4635805 (not (matchR!10479 r2!3226 s2!2463)))))

(declare-fun b!7840624 () Bool)

(declare-fun tp!2320588 () Bool)

(declare-fun tp!2320589 () Bool)

(assert (=> b!7840624 (= e!4635801 (and tp!2320588 tp!2320589))))

(declare-fun b!7840625 () Bool)

(assert (=> b!7840625 (= e!4635801 tp_is_empty!52405)))

(declare-fun b!7840626 () Bool)

(assert (=> b!7840626 (= e!4635804 tp_is_empty!52405)))

(declare-fun b!7840627 () Bool)

(declare-fun tp!2320599 () Bool)

(assert (=> b!7840627 (= e!4635802 (and tp_is_empty!52405 tp!2320599))))

(declare-fun b!7840628 () Bool)

(declare-fun res!3118398 () Bool)

(assert (=> b!7840628 (=> (not res!3118398) (not e!4635803))))

(assert (=> b!7840628 (= res!3118398 (validRegex!11439 r2!3226))))

(declare-fun b!7840629 () Bool)

(declare-fun tp!2320596 () Bool)

(assert (=> b!7840629 (= e!4635799 (and tp_is_empty!52405 tp!2320596))))

(assert (= (and start!742590 res!3118400) b!7840628))

(assert (= (and b!7840628 res!3118398) b!7840618))

(assert (= (and b!7840618 res!3118399) b!7840621))

(assert (= (and b!7840621 (not res!3118395)) b!7840623))

(assert (= (and b!7840621 res!3118396) b!7840615))

(assert (= (and b!7840615 res!3118397) b!7840616))

(assert (= (and start!742590 ((_ is Cons!73738) s1!2717)) b!7840627))

(assert (= (and start!742590 ((_ is ElementMatch!21025) r1!3326)) b!7840626))

(assert (= (and start!742590 ((_ is Concat!29870) r1!3326)) b!7840613))

(assert (= (and start!742590 ((_ is Star!21025) r1!3326)) b!7840614))

(assert (= (and start!742590 ((_ is Union!21025) r1!3326)) b!7840620))

(assert (= (and start!742590 ((_ is Cons!73738) s!10212)) b!7840629))

(assert (= (and start!742590 ((_ is ElementMatch!21025) r2!3226)) b!7840625))

(assert (= (and start!742590 ((_ is Concat!29870) r2!3226)) b!7840624))

(assert (= (and start!742590 ((_ is Star!21025) r2!3226)) b!7840617))

(assert (= (and start!742590 ((_ is Union!21025) r2!3226)) b!7840619))

(assert (= (and start!742590 ((_ is Cons!73738) s2!2463)) b!7840622))

(declare-fun m!8253346 () Bool)

(assert (=> b!7840621 m!8253346))

(declare-fun m!8253348 () Bool)

(assert (=> b!7840623 m!8253348))

(declare-fun m!8253350 () Bool)

(assert (=> start!742590 m!8253350))

(declare-fun m!8253352 () Bool)

(assert (=> b!7840616 m!8253352))

(declare-fun m!8253354 () Bool)

(assert (=> b!7840616 m!8253354))

(declare-fun m!8253356 () Bool)

(assert (=> b!7840616 m!8253356))

(assert (=> b!7840616 m!8253354))

(declare-fun m!8253358 () Bool)

(assert (=> b!7840616 m!8253358))

(declare-fun m!8253360 () Bool)

(assert (=> b!7840616 m!8253360))

(declare-fun m!8253362 () Bool)

(assert (=> b!7840628 m!8253362))

(declare-fun m!8253364 () Bool)

(assert (=> b!7840618 m!8253364))

(check-sat (not start!742590) tp_is_empty!52405 (not b!7840620) (not b!7840629) (not b!7840628) (not b!7840618) (not b!7840622) (not b!7840619) (not b!7840613) (not b!7840616) (not b!7840623) (not b!7840627) (not b!7840624) (not b!7840617) (not b!7840621) (not b!7840614))
(check-sat)
(get-model)

(declare-fun b!7840685 () Bool)

(declare-fun res!3118438 () Bool)

(declare-fun e!4635844 () Bool)

(assert (=> b!7840685 (=> res!3118438 e!4635844)))

(declare-fun isEmpty!42306 (List!73862) Bool)

(declare-fun tail!15542 (List!73862) List!73862)

(assert (=> b!7840685 (= res!3118438 (not (isEmpty!42306 (tail!15542 s1!2717))))))

(declare-fun b!7840686 () Bool)

(declare-fun res!3118432 () Bool)

(declare-fun e!4635847 () Bool)

(assert (=> b!7840686 (=> res!3118432 e!4635847)))

(assert (=> b!7840686 (= res!3118432 (not ((_ is ElementMatch!21025) r1!3326)))))

(declare-fun e!4635845 () Bool)

(assert (=> b!7840686 (= e!4635845 e!4635847)))

(declare-fun b!7840687 () Bool)

(declare-fun e!4635842 () Bool)

(assert (=> b!7840687 (= e!4635842 e!4635845)))

(declare-fun c!1441509 () Bool)

(assert (=> b!7840687 (= c!1441509 ((_ is EmptyLang!21025) r1!3326))))

(declare-fun b!7840688 () Bool)

(declare-fun e!4635843 () Bool)

(assert (=> b!7840688 (= e!4635847 e!4635843)))

(declare-fun res!3118439 () Bool)

(assert (=> b!7840688 (=> (not res!3118439) (not e!4635843))))

(declare-fun lt!2678423 () Bool)

(assert (=> b!7840688 (= res!3118439 (not lt!2678423))))

(declare-fun b!7840689 () Bool)

(declare-fun res!3118433 () Bool)

(assert (=> b!7840689 (=> res!3118433 e!4635847)))

(declare-fun e!4635846 () Bool)

(assert (=> b!7840689 (= res!3118433 e!4635846)))

(declare-fun res!3118437 () Bool)

(assert (=> b!7840689 (=> (not res!3118437) (not e!4635846))))

(assert (=> b!7840689 (= res!3118437 lt!2678423)))

(declare-fun b!7840690 () Bool)

(declare-fun res!3118435 () Bool)

(assert (=> b!7840690 (=> (not res!3118435) (not e!4635846))))

(assert (=> b!7840690 (= res!3118435 (isEmpty!42306 (tail!15542 s1!2717)))))

(declare-fun d!2352024 () Bool)

(assert (=> d!2352024 e!4635842))

(declare-fun c!1441508 () Bool)

(assert (=> d!2352024 (= c!1441508 ((_ is EmptyExpr!21025) r1!3326))))

(declare-fun e!4635841 () Bool)

(assert (=> d!2352024 (= lt!2678423 e!4635841)))

(declare-fun c!1441507 () Bool)

(assert (=> d!2352024 (= c!1441507 (isEmpty!42306 s1!2717))))

(assert (=> d!2352024 (validRegex!11439 r1!3326)))

(assert (=> d!2352024 (= (matchR!10479 r1!3326 s1!2717) lt!2678423)))

(declare-fun b!7840691 () Bool)

(declare-fun derivativeStep!6271 (Regex!21025 C!42376) Regex!21025)

(declare-fun head!16001 (List!73862) C!42376)

(assert (=> b!7840691 (= e!4635841 (matchR!10479 (derivativeStep!6271 r1!3326 (head!16001 s1!2717)) (tail!15542 s1!2717)))))

(declare-fun bm!726673 () Bool)

(declare-fun call!726678 () Bool)

(assert (=> bm!726673 (= call!726678 (isEmpty!42306 s1!2717))))

(declare-fun b!7840692 () Bool)

(assert (=> b!7840692 (= e!4635842 (= lt!2678423 call!726678))))

(declare-fun b!7840693 () Bool)

(declare-fun nullable!9315 (Regex!21025) Bool)

(assert (=> b!7840693 (= e!4635841 (nullable!9315 r1!3326))))

(declare-fun b!7840694 () Bool)

(declare-fun res!3118436 () Bool)

(assert (=> b!7840694 (=> (not res!3118436) (not e!4635846))))

(assert (=> b!7840694 (= res!3118436 (not call!726678))))

(declare-fun b!7840695 () Bool)

(assert (=> b!7840695 (= e!4635844 (not (= (head!16001 s1!2717) (c!1441494 r1!3326))))))

(declare-fun b!7840696 () Bool)

(assert (=> b!7840696 (= e!4635846 (= (head!16001 s1!2717) (c!1441494 r1!3326)))))

(declare-fun b!7840697 () Bool)

(assert (=> b!7840697 (= e!4635845 (not lt!2678423))))

(declare-fun b!7840698 () Bool)

(assert (=> b!7840698 (= e!4635843 e!4635844)))

(declare-fun res!3118434 () Bool)

(assert (=> b!7840698 (=> res!3118434 e!4635844)))

(assert (=> b!7840698 (= res!3118434 call!726678)))

(assert (= (and d!2352024 c!1441507) b!7840693))

(assert (= (and d!2352024 (not c!1441507)) b!7840691))

(assert (= (and d!2352024 c!1441508) b!7840692))

(assert (= (and d!2352024 (not c!1441508)) b!7840687))

(assert (= (and b!7840687 c!1441509) b!7840697))

(assert (= (and b!7840687 (not c!1441509)) b!7840686))

(assert (= (and b!7840686 (not res!3118432)) b!7840689))

(assert (= (and b!7840689 res!3118437) b!7840694))

(assert (= (and b!7840694 res!3118436) b!7840690))

(assert (= (and b!7840690 res!3118435) b!7840696))

(assert (= (and b!7840689 (not res!3118433)) b!7840688))

(assert (= (and b!7840688 res!3118439) b!7840698))

(assert (= (and b!7840698 (not res!3118434)) b!7840685))

(assert (= (and b!7840685 (not res!3118438)) b!7840695))

(assert (= (or b!7840692 b!7840694 b!7840698) bm!726673))

(declare-fun m!8253372 () Bool)

(assert (=> bm!726673 m!8253372))

(assert (=> d!2352024 m!8253372))

(assert (=> d!2352024 m!8253350))

(declare-fun m!8253374 () Bool)

(assert (=> b!7840696 m!8253374))

(declare-fun m!8253376 () Bool)

(assert (=> b!7840693 m!8253376))

(declare-fun m!8253378 () Bool)

(assert (=> b!7840690 m!8253378))

(assert (=> b!7840690 m!8253378))

(declare-fun m!8253380 () Bool)

(assert (=> b!7840690 m!8253380))

(assert (=> b!7840691 m!8253374))

(assert (=> b!7840691 m!8253374))

(declare-fun m!8253382 () Bool)

(assert (=> b!7840691 m!8253382))

(assert (=> b!7840691 m!8253378))

(assert (=> b!7840691 m!8253382))

(assert (=> b!7840691 m!8253378))

(declare-fun m!8253384 () Bool)

(assert (=> b!7840691 m!8253384))

(assert (=> b!7840685 m!8253378))

(assert (=> b!7840685 m!8253378))

(assert (=> b!7840685 m!8253380))

(assert (=> b!7840695 m!8253374))

(assert (=> b!7840621 d!2352024))

(declare-fun b!7840738 () Bool)

(declare-fun lt!2678428 () List!73862)

(declare-fun e!4635866 () Bool)

(assert (=> b!7840738 (= e!4635866 (or (not (= (t!388597 s2!2463) Nil!73738)) (= lt!2678428 (++!18059 s1!2717 (Cons!73738 (h!80186 s2!2463) Nil!73738)))))))

(declare-fun b!7840736 () Bool)

(declare-fun e!4635867 () List!73862)

(assert (=> b!7840736 (= e!4635867 (Cons!73738 (h!80186 (++!18059 s1!2717 (Cons!73738 (h!80186 s2!2463) Nil!73738))) (++!18059 (t!388597 (++!18059 s1!2717 (Cons!73738 (h!80186 s2!2463) Nil!73738))) (t!388597 s2!2463))))))

(declare-fun b!7840735 () Bool)

(assert (=> b!7840735 (= e!4635867 (t!388597 s2!2463))))

(declare-fun b!7840737 () Bool)

(declare-fun res!3118461 () Bool)

(assert (=> b!7840737 (=> (not res!3118461) (not e!4635866))))

(assert (=> b!7840737 (= res!3118461 (= (size!42787 lt!2678428) (+ (size!42787 (++!18059 s1!2717 (Cons!73738 (h!80186 s2!2463) Nil!73738))) (size!42787 (t!388597 s2!2463)))))))

(declare-fun d!2352030 () Bool)

(assert (=> d!2352030 e!4635866))

(declare-fun res!3118460 () Bool)

(assert (=> d!2352030 (=> (not res!3118460) (not e!4635866))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15655 (List!73862) (InoxSet C!42376))

(assert (=> d!2352030 (= res!3118460 (= (content!15655 lt!2678428) ((_ map or) (content!15655 (++!18059 s1!2717 (Cons!73738 (h!80186 s2!2463) Nil!73738))) (content!15655 (t!388597 s2!2463)))))))

(assert (=> d!2352030 (= lt!2678428 e!4635867)))

(declare-fun c!1441518 () Bool)

(assert (=> d!2352030 (= c!1441518 ((_ is Nil!73738) (++!18059 s1!2717 (Cons!73738 (h!80186 s2!2463) Nil!73738))))))

(assert (=> d!2352030 (= (++!18059 (++!18059 s1!2717 (Cons!73738 (h!80186 s2!2463) Nil!73738)) (t!388597 s2!2463)) lt!2678428)))

(assert (= (and d!2352030 c!1441518) b!7840735))

(assert (= (and d!2352030 (not c!1441518)) b!7840736))

(assert (= (and d!2352030 res!3118460) b!7840737))

(assert (= (and b!7840737 res!3118461) b!7840738))

(declare-fun m!8253386 () Bool)

(assert (=> b!7840736 m!8253386))

(declare-fun m!8253388 () Bool)

(assert (=> b!7840737 m!8253388))

(assert (=> b!7840737 m!8253354))

(declare-fun m!8253390 () Bool)

(assert (=> b!7840737 m!8253390))

(assert (=> b!7840737 m!8253360))

(declare-fun m!8253392 () Bool)

(assert (=> d!2352030 m!8253392))

(assert (=> d!2352030 m!8253354))

(declare-fun m!8253394 () Bool)

(assert (=> d!2352030 m!8253394))

(declare-fun m!8253396 () Bool)

(assert (=> d!2352030 m!8253396))

(assert (=> b!7840616 d!2352030))

(declare-fun d!2352032 () Bool)

(declare-fun lt!2678431 () Int)

(assert (=> d!2352032 (>= lt!2678431 0)))

(declare-fun e!4635870 () Int)

(assert (=> d!2352032 (= lt!2678431 e!4635870)))

(declare-fun c!1441521 () Bool)

(assert (=> d!2352032 (= c!1441521 ((_ is Nil!73738) (t!388597 s2!2463)))))

(assert (=> d!2352032 (= (size!42787 (t!388597 s2!2463)) lt!2678431)))

(declare-fun b!7840743 () Bool)

(assert (=> b!7840743 (= e!4635870 0)))

(declare-fun b!7840744 () Bool)

(assert (=> b!7840744 (= e!4635870 (+ 1 (size!42787 (t!388597 (t!388597 s2!2463)))))))

(assert (= (and d!2352032 c!1441521) b!7840743))

(assert (= (and d!2352032 (not c!1441521)) b!7840744))

(declare-fun m!8253398 () Bool)

(assert (=> b!7840744 m!8253398))

(assert (=> b!7840616 d!2352032))

(declare-fun d!2352034 () Bool)

(assert (=> d!2352034 (= (++!18059 (++!18059 s1!2717 (Cons!73738 (h!80186 s2!2463) Nil!73738)) (t!388597 s2!2463)) s!10212)))

(declare-fun lt!2678435 () Unit!168832)

(declare-fun choose!59618 (List!73862 C!42376 List!73862 List!73862) Unit!168832)

(assert (=> d!2352034 (= lt!2678435 (choose!59618 s1!2717 (h!80186 s2!2463) (t!388597 s2!2463) s!10212))))

(assert (=> d!2352034 (= (++!18059 s1!2717 (Cons!73738 (h!80186 s2!2463) (t!388597 s2!2463))) s!10212)))

(assert (=> d!2352034 (= (lemmaMoveElementToOtherListKeepsConcatEq!3462 s1!2717 (h!80186 s2!2463) (t!388597 s2!2463) s!10212) lt!2678435)))

(declare-fun bs!1966958 () Bool)

(assert (= bs!1966958 d!2352034))

(assert (=> bs!1966958 m!8253354))

(assert (=> bs!1966958 m!8253354))

(assert (=> bs!1966958 m!8253358))

(declare-fun m!8253420 () Bool)

(assert (=> bs!1966958 m!8253420))

(declare-fun m!8253422 () Bool)

(assert (=> bs!1966958 m!8253422))

(assert (=> b!7840616 d!2352034))

(declare-fun lt!2678436 () List!73862)

(declare-fun e!4635885 () Bool)

(declare-fun b!7840771 () Bool)

(assert (=> b!7840771 (= e!4635885 (or (not (= (Cons!73738 (h!80186 s2!2463) Nil!73738) Nil!73738)) (= lt!2678436 s1!2717)))))

(declare-fun b!7840769 () Bool)

(declare-fun e!4635886 () List!73862)

(assert (=> b!7840769 (= e!4635886 (Cons!73738 (h!80186 s1!2717) (++!18059 (t!388597 s1!2717) (Cons!73738 (h!80186 s2!2463) Nil!73738))))))

(declare-fun b!7840768 () Bool)

(assert (=> b!7840768 (= e!4635886 (Cons!73738 (h!80186 s2!2463) Nil!73738))))

(declare-fun b!7840770 () Bool)

(declare-fun res!3118476 () Bool)

(assert (=> b!7840770 (=> (not res!3118476) (not e!4635885))))

(assert (=> b!7840770 (= res!3118476 (= (size!42787 lt!2678436) (+ (size!42787 s1!2717) (size!42787 (Cons!73738 (h!80186 s2!2463) Nil!73738)))))))

(declare-fun d!2352040 () Bool)

(assert (=> d!2352040 e!4635885))

(declare-fun res!3118475 () Bool)

(assert (=> d!2352040 (=> (not res!3118475) (not e!4635885))))

(assert (=> d!2352040 (= res!3118475 (= (content!15655 lt!2678436) ((_ map or) (content!15655 s1!2717) (content!15655 (Cons!73738 (h!80186 s2!2463) Nil!73738)))))))

(assert (=> d!2352040 (= lt!2678436 e!4635886)))

(declare-fun c!1441527 () Bool)

(assert (=> d!2352040 (= c!1441527 ((_ is Nil!73738) s1!2717))))

(assert (=> d!2352040 (= (++!18059 s1!2717 (Cons!73738 (h!80186 s2!2463) Nil!73738)) lt!2678436)))

(assert (= (and d!2352040 c!1441527) b!7840768))

(assert (= (and d!2352040 (not c!1441527)) b!7840769))

(assert (= (and d!2352040 res!3118475) b!7840770))

(assert (= (and b!7840770 res!3118476) b!7840771))

(declare-fun m!8253424 () Bool)

(assert (=> b!7840769 m!8253424))

(declare-fun m!8253426 () Bool)

(assert (=> b!7840770 m!8253426))

(declare-fun m!8253428 () Bool)

(assert (=> b!7840770 m!8253428))

(declare-fun m!8253430 () Bool)

(assert (=> b!7840770 m!8253430))

(declare-fun m!8253432 () Bool)

(assert (=> d!2352040 m!8253432))

(declare-fun m!8253434 () Bool)

(assert (=> d!2352040 m!8253434))

(declare-fun m!8253436 () Bool)

(assert (=> d!2352040 m!8253436))

(assert (=> b!7840616 d!2352040))

(declare-fun d!2352042 () Bool)

(declare-fun lt!2678437 () Int)

(assert (=> d!2352042 (>= lt!2678437 0)))

(declare-fun e!4635887 () Int)

(assert (=> d!2352042 (= lt!2678437 e!4635887)))

(declare-fun c!1441528 () Bool)

(assert (=> d!2352042 (= c!1441528 ((_ is Nil!73738) s2!2463))))

(assert (=> d!2352042 (= (size!42787 s2!2463) lt!2678437)))

(declare-fun b!7840772 () Bool)

(assert (=> b!7840772 (= e!4635887 0)))

(declare-fun b!7840773 () Bool)

(assert (=> b!7840773 (= e!4635887 (+ 1 (size!42787 (t!388597 s2!2463))))))

(assert (= (and d!2352042 c!1441528) b!7840772))

(assert (= (and d!2352042 (not c!1441528)) b!7840773))

(assert (=> b!7840773 m!8253360))

(assert (=> b!7840616 d!2352042))

(declare-fun e!4635888 () Bool)

(declare-fun lt!2678438 () List!73862)

(declare-fun b!7840777 () Bool)

(assert (=> b!7840777 (= e!4635888 (or (not (= s2!2463 Nil!73738)) (= lt!2678438 s1!2717)))))

(declare-fun b!7840775 () Bool)

(declare-fun e!4635889 () List!73862)

(assert (=> b!7840775 (= e!4635889 (Cons!73738 (h!80186 s1!2717) (++!18059 (t!388597 s1!2717) s2!2463)))))

(declare-fun b!7840774 () Bool)

(assert (=> b!7840774 (= e!4635889 s2!2463)))

(declare-fun b!7840776 () Bool)

(declare-fun res!3118478 () Bool)

(assert (=> b!7840776 (=> (not res!3118478) (not e!4635888))))

(assert (=> b!7840776 (= res!3118478 (= (size!42787 lt!2678438) (+ (size!42787 s1!2717) (size!42787 s2!2463))))))

(declare-fun d!2352044 () Bool)

(assert (=> d!2352044 e!4635888))

(declare-fun res!3118477 () Bool)

(assert (=> d!2352044 (=> (not res!3118477) (not e!4635888))))

(assert (=> d!2352044 (= res!3118477 (= (content!15655 lt!2678438) ((_ map or) (content!15655 s1!2717) (content!15655 s2!2463))))))

(assert (=> d!2352044 (= lt!2678438 e!4635889)))

(declare-fun c!1441529 () Bool)

(assert (=> d!2352044 (= c!1441529 ((_ is Nil!73738) s1!2717))))

(assert (=> d!2352044 (= (++!18059 s1!2717 s2!2463) lt!2678438)))

(assert (= (and d!2352044 c!1441529) b!7840774))

(assert (= (and d!2352044 (not c!1441529)) b!7840775))

(assert (= (and d!2352044 res!3118477) b!7840776))

(assert (= (and b!7840776 res!3118478) b!7840777))

(declare-fun m!8253438 () Bool)

(assert (=> b!7840775 m!8253438))

(declare-fun m!8253440 () Bool)

(assert (=> b!7840776 m!8253440))

(assert (=> b!7840776 m!8253428))

(assert (=> b!7840776 m!8253356))

(declare-fun m!8253442 () Bool)

(assert (=> d!2352044 m!8253442))

(assert (=> d!2352044 m!8253434))

(declare-fun m!8253444 () Bool)

(assert (=> d!2352044 m!8253444))

(assert (=> b!7840618 d!2352044))

(declare-fun bm!726686 () Bool)

(declare-fun call!726691 () Bool)

(declare-fun c!1441541 () Bool)

(assert (=> bm!726686 (= call!726691 (validRegex!11439 (ite c!1441541 (regTwo!42563 r2!3226) (regTwo!42562 r2!3226))))))

(declare-fun b!7840814 () Bool)

(declare-fun e!4635918 () Bool)

(assert (=> b!7840814 (= e!4635918 call!726691)))

(declare-fun b!7840815 () Bool)

(declare-fun e!4635919 () Bool)

(declare-fun e!4635917 () Bool)

(assert (=> b!7840815 (= e!4635919 e!4635917)))

(declare-fun res!3118495 () Bool)

(assert (=> b!7840815 (= res!3118495 (not (nullable!9315 (reg!21354 r2!3226))))))

(assert (=> b!7840815 (=> (not res!3118495) (not e!4635917))))

(declare-fun b!7840816 () Bool)

(declare-fun e!4635916 () Bool)

(assert (=> b!7840816 (= e!4635916 call!726691)))

(declare-fun b!7840817 () Bool)

(declare-fun call!726693 () Bool)

(assert (=> b!7840817 (= e!4635917 call!726693)))

(declare-fun d!2352046 () Bool)

(declare-fun res!3118499 () Bool)

(declare-fun e!4635915 () Bool)

(assert (=> d!2352046 (=> res!3118499 e!4635915)))

(assert (=> d!2352046 (= res!3118499 ((_ is ElementMatch!21025) r2!3226))))

(assert (=> d!2352046 (= (validRegex!11439 r2!3226) e!4635915)))

(declare-fun bm!726687 () Bool)

(declare-fun call!726692 () Bool)

(assert (=> bm!726687 (= call!726692 call!726693)))

(declare-fun b!7840818 () Bool)

(declare-fun res!3118498 () Bool)

(assert (=> b!7840818 (=> (not res!3118498) (not e!4635916))))

(assert (=> b!7840818 (= res!3118498 call!726692)))

(declare-fun e!4635913 () Bool)

(assert (=> b!7840818 (= e!4635913 e!4635916)))

(declare-fun b!7840819 () Bool)

(declare-fun e!4635914 () Bool)

(assert (=> b!7840819 (= e!4635914 e!4635918)))

(declare-fun res!3118496 () Bool)

(assert (=> b!7840819 (=> (not res!3118496) (not e!4635918))))

(assert (=> b!7840819 (= res!3118496 call!726692)))

(declare-fun bm!726688 () Bool)

(declare-fun c!1441540 () Bool)

(assert (=> bm!726688 (= call!726693 (validRegex!11439 (ite c!1441540 (reg!21354 r2!3226) (ite c!1441541 (regOne!42563 r2!3226) (regOne!42562 r2!3226)))))))

(declare-fun b!7840820 () Bool)

(declare-fun res!3118497 () Bool)

(assert (=> b!7840820 (=> res!3118497 e!4635914)))

(assert (=> b!7840820 (= res!3118497 (not ((_ is Concat!29870) r2!3226)))))

(assert (=> b!7840820 (= e!4635913 e!4635914)))

(declare-fun b!7840821 () Bool)

(assert (=> b!7840821 (= e!4635915 e!4635919)))

(assert (=> b!7840821 (= c!1441540 ((_ is Star!21025) r2!3226))))

(declare-fun b!7840822 () Bool)

(assert (=> b!7840822 (= e!4635919 e!4635913)))

(assert (=> b!7840822 (= c!1441541 ((_ is Union!21025) r2!3226))))

(assert (= (and d!2352046 (not res!3118499)) b!7840821))

(assert (= (and b!7840821 c!1441540) b!7840815))

(assert (= (and b!7840821 (not c!1441540)) b!7840822))

(assert (= (and b!7840815 res!3118495) b!7840817))

(assert (= (and b!7840822 c!1441541) b!7840818))

(assert (= (and b!7840822 (not c!1441541)) b!7840820))

(assert (= (and b!7840818 res!3118498) b!7840816))

(assert (= (and b!7840820 (not res!3118497)) b!7840819))

(assert (= (and b!7840819 res!3118496) b!7840814))

(assert (= (or b!7840818 b!7840819) bm!726687))

(assert (= (or b!7840816 b!7840814) bm!726686))

(assert (= (or b!7840817 bm!726687) bm!726688))

(declare-fun m!8253460 () Bool)

(assert (=> bm!726686 m!8253460))

(declare-fun m!8253462 () Bool)

(assert (=> b!7840815 m!8253462))

(declare-fun m!8253464 () Bool)

(assert (=> bm!726688 m!8253464))

(assert (=> b!7840628 d!2352046))

(declare-fun bm!726689 () Bool)

(declare-fun call!726694 () Bool)

(declare-fun c!1441543 () Bool)

(assert (=> bm!726689 (= call!726694 (validRegex!11439 (ite c!1441543 (regTwo!42563 r1!3326) (regTwo!42562 r1!3326))))))

(declare-fun b!7840823 () Bool)

(declare-fun e!4635925 () Bool)

(assert (=> b!7840823 (= e!4635925 call!726694)))

(declare-fun b!7840824 () Bool)

(declare-fun e!4635926 () Bool)

(declare-fun e!4635924 () Bool)

(assert (=> b!7840824 (= e!4635926 e!4635924)))

(declare-fun res!3118500 () Bool)

(assert (=> b!7840824 (= res!3118500 (not (nullable!9315 (reg!21354 r1!3326))))))

(assert (=> b!7840824 (=> (not res!3118500) (not e!4635924))))

(declare-fun b!7840825 () Bool)

(declare-fun e!4635923 () Bool)

(assert (=> b!7840825 (= e!4635923 call!726694)))

(declare-fun b!7840826 () Bool)

(declare-fun call!726696 () Bool)

(assert (=> b!7840826 (= e!4635924 call!726696)))

(declare-fun d!2352052 () Bool)

(declare-fun res!3118504 () Bool)

(declare-fun e!4635922 () Bool)

(assert (=> d!2352052 (=> res!3118504 e!4635922)))

(assert (=> d!2352052 (= res!3118504 ((_ is ElementMatch!21025) r1!3326))))

(assert (=> d!2352052 (= (validRegex!11439 r1!3326) e!4635922)))

(declare-fun bm!726690 () Bool)

(declare-fun call!726695 () Bool)

(assert (=> bm!726690 (= call!726695 call!726696)))

(declare-fun b!7840827 () Bool)

(declare-fun res!3118503 () Bool)

(assert (=> b!7840827 (=> (not res!3118503) (not e!4635923))))

(assert (=> b!7840827 (= res!3118503 call!726695)))

(declare-fun e!4635920 () Bool)

(assert (=> b!7840827 (= e!4635920 e!4635923)))

(declare-fun b!7840828 () Bool)

(declare-fun e!4635921 () Bool)

(assert (=> b!7840828 (= e!4635921 e!4635925)))

(declare-fun res!3118501 () Bool)

(assert (=> b!7840828 (=> (not res!3118501) (not e!4635925))))

(assert (=> b!7840828 (= res!3118501 call!726695)))

(declare-fun c!1441542 () Bool)

(declare-fun bm!726691 () Bool)

(assert (=> bm!726691 (= call!726696 (validRegex!11439 (ite c!1441542 (reg!21354 r1!3326) (ite c!1441543 (regOne!42563 r1!3326) (regOne!42562 r1!3326)))))))

(declare-fun b!7840829 () Bool)

(declare-fun res!3118502 () Bool)

(assert (=> b!7840829 (=> res!3118502 e!4635921)))

(assert (=> b!7840829 (= res!3118502 (not ((_ is Concat!29870) r1!3326)))))

(assert (=> b!7840829 (= e!4635920 e!4635921)))

(declare-fun b!7840830 () Bool)

(assert (=> b!7840830 (= e!4635922 e!4635926)))

(assert (=> b!7840830 (= c!1441542 ((_ is Star!21025) r1!3326))))

(declare-fun b!7840831 () Bool)

(assert (=> b!7840831 (= e!4635926 e!4635920)))

(assert (=> b!7840831 (= c!1441543 ((_ is Union!21025) r1!3326))))

(assert (= (and d!2352052 (not res!3118504)) b!7840830))

(assert (= (and b!7840830 c!1441542) b!7840824))

(assert (= (and b!7840830 (not c!1441542)) b!7840831))

(assert (= (and b!7840824 res!3118500) b!7840826))

(assert (= (and b!7840831 c!1441543) b!7840827))

(assert (= (and b!7840831 (not c!1441543)) b!7840829))

(assert (= (and b!7840827 res!3118503) b!7840825))

(assert (= (and b!7840829 (not res!3118502)) b!7840828))

(assert (= (and b!7840828 res!3118501) b!7840823))

(assert (= (or b!7840827 b!7840828) bm!726690))

(assert (= (or b!7840825 b!7840823) bm!726689))

(assert (= (or b!7840826 bm!726690) bm!726691))

(declare-fun m!8253466 () Bool)

(assert (=> bm!726689 m!8253466))

(declare-fun m!8253468 () Bool)

(assert (=> b!7840824 m!8253468))

(declare-fun m!8253470 () Bool)

(assert (=> bm!726691 m!8253470))

(assert (=> start!742590 d!2352052))

(declare-fun b!7840832 () Bool)

(declare-fun res!3118511 () Bool)

(declare-fun e!4635930 () Bool)

(assert (=> b!7840832 (=> res!3118511 e!4635930)))

(assert (=> b!7840832 (= res!3118511 (not (isEmpty!42306 (tail!15542 s2!2463))))))

(declare-fun b!7840833 () Bool)

(declare-fun res!3118505 () Bool)

(declare-fun e!4635933 () Bool)

(assert (=> b!7840833 (=> res!3118505 e!4635933)))

(assert (=> b!7840833 (= res!3118505 (not ((_ is ElementMatch!21025) r2!3226)))))

(declare-fun e!4635931 () Bool)

(assert (=> b!7840833 (= e!4635931 e!4635933)))

(declare-fun b!7840834 () Bool)

(declare-fun e!4635928 () Bool)

(assert (=> b!7840834 (= e!4635928 e!4635931)))

(declare-fun c!1441546 () Bool)

(assert (=> b!7840834 (= c!1441546 ((_ is EmptyLang!21025) r2!3226))))

(declare-fun b!7840835 () Bool)

(declare-fun e!4635929 () Bool)

(assert (=> b!7840835 (= e!4635933 e!4635929)))

(declare-fun res!3118512 () Bool)

(assert (=> b!7840835 (=> (not res!3118512) (not e!4635929))))

(declare-fun lt!2678447 () Bool)

(assert (=> b!7840835 (= res!3118512 (not lt!2678447))))

(declare-fun b!7840836 () Bool)

(declare-fun res!3118506 () Bool)

(assert (=> b!7840836 (=> res!3118506 e!4635933)))

(declare-fun e!4635932 () Bool)

(assert (=> b!7840836 (= res!3118506 e!4635932)))

(declare-fun res!3118510 () Bool)

(assert (=> b!7840836 (=> (not res!3118510) (not e!4635932))))

(assert (=> b!7840836 (= res!3118510 lt!2678447)))

(declare-fun b!7840837 () Bool)

(declare-fun res!3118508 () Bool)

(assert (=> b!7840837 (=> (not res!3118508) (not e!4635932))))

(assert (=> b!7840837 (= res!3118508 (isEmpty!42306 (tail!15542 s2!2463)))))

(declare-fun d!2352054 () Bool)

(assert (=> d!2352054 e!4635928))

(declare-fun c!1441545 () Bool)

(assert (=> d!2352054 (= c!1441545 ((_ is EmptyExpr!21025) r2!3226))))

(declare-fun e!4635927 () Bool)

(assert (=> d!2352054 (= lt!2678447 e!4635927)))

(declare-fun c!1441544 () Bool)

(assert (=> d!2352054 (= c!1441544 (isEmpty!42306 s2!2463))))

(assert (=> d!2352054 (validRegex!11439 r2!3226)))

(assert (=> d!2352054 (= (matchR!10479 r2!3226 s2!2463) lt!2678447)))

(declare-fun b!7840838 () Bool)

(assert (=> b!7840838 (= e!4635927 (matchR!10479 (derivativeStep!6271 r2!3226 (head!16001 s2!2463)) (tail!15542 s2!2463)))))

(declare-fun bm!726692 () Bool)

(declare-fun call!726697 () Bool)

(assert (=> bm!726692 (= call!726697 (isEmpty!42306 s2!2463))))

(declare-fun b!7840839 () Bool)

(assert (=> b!7840839 (= e!4635928 (= lt!2678447 call!726697))))

(declare-fun b!7840840 () Bool)

(assert (=> b!7840840 (= e!4635927 (nullable!9315 r2!3226))))

(declare-fun b!7840841 () Bool)

(declare-fun res!3118509 () Bool)

(assert (=> b!7840841 (=> (not res!3118509) (not e!4635932))))

(assert (=> b!7840841 (= res!3118509 (not call!726697))))

(declare-fun b!7840842 () Bool)

(assert (=> b!7840842 (= e!4635930 (not (= (head!16001 s2!2463) (c!1441494 r2!3226))))))

(declare-fun b!7840843 () Bool)

(assert (=> b!7840843 (= e!4635932 (= (head!16001 s2!2463) (c!1441494 r2!3226)))))

(declare-fun b!7840844 () Bool)

(assert (=> b!7840844 (= e!4635931 (not lt!2678447))))

(declare-fun b!7840845 () Bool)

(assert (=> b!7840845 (= e!4635929 e!4635930)))

(declare-fun res!3118507 () Bool)

(assert (=> b!7840845 (=> res!3118507 e!4635930)))

(assert (=> b!7840845 (= res!3118507 call!726697)))

(assert (= (and d!2352054 c!1441544) b!7840840))

(assert (= (and d!2352054 (not c!1441544)) b!7840838))

(assert (= (and d!2352054 c!1441545) b!7840839))

(assert (= (and d!2352054 (not c!1441545)) b!7840834))

(assert (= (and b!7840834 c!1441546) b!7840844))

(assert (= (and b!7840834 (not c!1441546)) b!7840833))

(assert (= (and b!7840833 (not res!3118505)) b!7840836))

(assert (= (and b!7840836 res!3118510) b!7840841))

(assert (= (and b!7840841 res!3118509) b!7840837))

(assert (= (and b!7840837 res!3118508) b!7840843))

(assert (= (and b!7840836 (not res!3118506)) b!7840835))

(assert (= (and b!7840835 res!3118512) b!7840845))

(assert (= (and b!7840845 (not res!3118507)) b!7840832))

(assert (= (and b!7840832 (not res!3118511)) b!7840842))

(assert (= (or b!7840839 b!7840841 b!7840845) bm!726692))

(declare-fun m!8253472 () Bool)

(assert (=> bm!726692 m!8253472))

(assert (=> d!2352054 m!8253472))

(assert (=> d!2352054 m!8253362))

(declare-fun m!8253474 () Bool)

(assert (=> b!7840843 m!8253474))

(declare-fun m!8253478 () Bool)

(assert (=> b!7840840 m!8253478))

(declare-fun m!8253480 () Bool)

(assert (=> b!7840837 m!8253480))

(assert (=> b!7840837 m!8253480))

(declare-fun m!8253484 () Bool)

(assert (=> b!7840837 m!8253484))

(assert (=> b!7840838 m!8253474))

(assert (=> b!7840838 m!8253474))

(declare-fun m!8253486 () Bool)

(assert (=> b!7840838 m!8253486))

(assert (=> b!7840838 m!8253480))

(assert (=> b!7840838 m!8253486))

(assert (=> b!7840838 m!8253480))

(declare-fun m!8253488 () Bool)

(assert (=> b!7840838 m!8253488))

(assert (=> b!7840832 m!8253480))

(assert (=> b!7840832 m!8253480))

(assert (=> b!7840832 m!8253484))

(assert (=> b!7840842 m!8253474))

(assert (=> b!7840623 d!2352054))

(declare-fun b!7840860 () Bool)

(declare-fun e!4635941 () Bool)

(declare-fun tp!2320602 () Bool)

(assert (=> b!7840860 (= e!4635941 (and tp_is_empty!52405 tp!2320602))))

(assert (=> b!7840627 (= tp!2320599 e!4635941)))

(assert (= (and b!7840627 ((_ is Cons!73738) (t!388597 s1!2717))) b!7840860))

(declare-fun b!7840886 () Bool)

(declare-fun e!4635951 () Bool)

(declare-fun tp!2320616 () Bool)

(declare-fun tp!2320615 () Bool)

(assert (=> b!7840886 (= e!4635951 (and tp!2320616 tp!2320615))))

(declare-fun b!7840888 () Bool)

(declare-fun tp!2320617 () Bool)

(declare-fun tp!2320613 () Bool)

(assert (=> b!7840888 (= e!4635951 (and tp!2320617 tp!2320613))))

(declare-fun b!7840887 () Bool)

(declare-fun tp!2320614 () Bool)

(assert (=> b!7840887 (= e!4635951 tp!2320614)))

(declare-fun b!7840885 () Bool)

(assert (=> b!7840885 (= e!4635951 tp_is_empty!52405)))

(assert (=> b!7840614 (= tp!2320593 e!4635951)))

(assert (= (and b!7840614 ((_ is ElementMatch!21025) (reg!21354 r1!3326))) b!7840885))

(assert (= (and b!7840614 ((_ is Concat!29870) (reg!21354 r1!3326))) b!7840886))

(assert (= (and b!7840614 ((_ is Star!21025) (reg!21354 r1!3326))) b!7840887))

(assert (= (and b!7840614 ((_ is Union!21025) (reg!21354 r1!3326))) b!7840888))

(declare-fun b!7840892 () Bool)

(declare-fun e!4635952 () Bool)

(declare-fun tp!2320621 () Bool)

(declare-fun tp!2320620 () Bool)

(assert (=> b!7840892 (= e!4635952 (and tp!2320621 tp!2320620))))

(declare-fun b!7840894 () Bool)

(declare-fun tp!2320622 () Bool)

(declare-fun tp!2320618 () Bool)

(assert (=> b!7840894 (= e!4635952 (and tp!2320622 tp!2320618))))

(declare-fun b!7840893 () Bool)

(declare-fun tp!2320619 () Bool)

(assert (=> b!7840893 (= e!4635952 tp!2320619)))

(declare-fun b!7840891 () Bool)

(assert (=> b!7840891 (= e!4635952 tp_is_empty!52405)))

(assert (=> b!7840620 (= tp!2320594 e!4635952)))

(assert (= (and b!7840620 ((_ is ElementMatch!21025) (regOne!42563 r1!3326))) b!7840891))

(assert (= (and b!7840620 ((_ is Concat!29870) (regOne!42563 r1!3326))) b!7840892))

(assert (= (and b!7840620 ((_ is Star!21025) (regOne!42563 r1!3326))) b!7840893))

(assert (= (and b!7840620 ((_ is Union!21025) (regOne!42563 r1!3326))) b!7840894))

(declare-fun b!7840902 () Bool)

(declare-fun e!4635955 () Bool)

(declare-fun tp!2320630 () Bool)

(declare-fun tp!2320629 () Bool)

(assert (=> b!7840902 (= e!4635955 (and tp!2320630 tp!2320629))))

(declare-fun b!7840904 () Bool)

(declare-fun tp!2320631 () Bool)

(declare-fun tp!2320627 () Bool)

(assert (=> b!7840904 (= e!4635955 (and tp!2320631 tp!2320627))))

(declare-fun b!7840903 () Bool)

(declare-fun tp!2320628 () Bool)

(assert (=> b!7840903 (= e!4635955 tp!2320628)))

(declare-fun b!7840901 () Bool)

(assert (=> b!7840901 (= e!4635955 tp_is_empty!52405)))

(assert (=> b!7840620 (= tp!2320591 e!4635955)))

(assert (= (and b!7840620 ((_ is ElementMatch!21025) (regTwo!42563 r1!3326))) b!7840901))

(assert (= (and b!7840620 ((_ is Concat!29870) (regTwo!42563 r1!3326))) b!7840902))

(assert (= (and b!7840620 ((_ is Star!21025) (regTwo!42563 r1!3326))) b!7840903))

(assert (= (and b!7840620 ((_ is Union!21025) (regTwo!42563 r1!3326))) b!7840904))

(declare-fun b!7840907 () Bool)

(declare-fun e!4635956 () Bool)

(declare-fun tp!2320638 () Bool)

(assert (=> b!7840907 (= e!4635956 (and tp_is_empty!52405 tp!2320638))))

(assert (=> b!7840629 (= tp!2320596 e!4635956)))

(assert (= (and b!7840629 ((_ is Cons!73738) (t!388597 s!10212))) b!7840907))

(declare-fun b!7840909 () Bool)

(declare-fun e!4635957 () Bool)

(declare-fun tp!2320642 () Bool)

(declare-fun tp!2320641 () Bool)

(assert (=> b!7840909 (= e!4635957 (and tp!2320642 tp!2320641))))

(declare-fun b!7840911 () Bool)

(declare-fun tp!2320643 () Bool)

(declare-fun tp!2320639 () Bool)

(assert (=> b!7840911 (= e!4635957 (and tp!2320643 tp!2320639))))

(declare-fun b!7840910 () Bool)

(declare-fun tp!2320640 () Bool)

(assert (=> b!7840910 (= e!4635957 tp!2320640)))

(declare-fun b!7840908 () Bool)

(assert (=> b!7840908 (= e!4635957 tp_is_empty!52405)))

(assert (=> b!7840613 (= tp!2320587 e!4635957)))

(assert (= (and b!7840613 ((_ is ElementMatch!21025) (regOne!42562 r1!3326))) b!7840908))

(assert (= (and b!7840613 ((_ is Concat!29870) (regOne!42562 r1!3326))) b!7840909))

(assert (= (and b!7840613 ((_ is Star!21025) (regOne!42562 r1!3326))) b!7840910))

(assert (= (and b!7840613 ((_ is Union!21025) (regOne!42562 r1!3326))) b!7840911))

(declare-fun b!7840913 () Bool)

(declare-fun e!4635958 () Bool)

(declare-fun tp!2320647 () Bool)

(declare-fun tp!2320646 () Bool)

(assert (=> b!7840913 (= e!4635958 (and tp!2320647 tp!2320646))))

(declare-fun b!7840915 () Bool)

(declare-fun tp!2320648 () Bool)

(declare-fun tp!2320644 () Bool)

(assert (=> b!7840915 (= e!4635958 (and tp!2320648 tp!2320644))))

(declare-fun b!7840914 () Bool)

(declare-fun tp!2320645 () Bool)

(assert (=> b!7840914 (= e!4635958 tp!2320645)))

(declare-fun b!7840912 () Bool)

(assert (=> b!7840912 (= e!4635958 tp_is_empty!52405)))

(assert (=> b!7840613 (= tp!2320590 e!4635958)))

(assert (= (and b!7840613 ((_ is ElementMatch!21025) (regTwo!42562 r1!3326))) b!7840912))

(assert (= (and b!7840613 ((_ is Concat!29870) (regTwo!42562 r1!3326))) b!7840913))

(assert (= (and b!7840613 ((_ is Star!21025) (regTwo!42562 r1!3326))) b!7840914))

(assert (= (and b!7840613 ((_ is Union!21025) (regTwo!42562 r1!3326))) b!7840915))

(declare-fun b!7840918 () Bool)

(declare-fun e!4635960 () Bool)

(declare-fun tp!2320657 () Bool)

(declare-fun tp!2320656 () Bool)

(assert (=> b!7840918 (= e!4635960 (and tp!2320657 tp!2320656))))

(declare-fun b!7840922 () Bool)

(declare-fun tp!2320658 () Bool)

(declare-fun tp!2320654 () Bool)

(assert (=> b!7840922 (= e!4635960 (and tp!2320658 tp!2320654))))

(declare-fun b!7840920 () Bool)

(declare-fun tp!2320655 () Bool)

(assert (=> b!7840920 (= e!4635960 tp!2320655)))

(declare-fun b!7840917 () Bool)

(assert (=> b!7840917 (= e!4635960 tp_is_empty!52405)))

(assert (=> b!7840624 (= tp!2320588 e!4635960)))

(assert (= (and b!7840624 ((_ is ElementMatch!21025) (regOne!42562 r2!3226))) b!7840917))

(assert (= (and b!7840624 ((_ is Concat!29870) (regOne!42562 r2!3226))) b!7840918))

(assert (= (and b!7840624 ((_ is Star!21025) (regOne!42562 r2!3226))) b!7840920))

(assert (= (and b!7840624 ((_ is Union!21025) (regOne!42562 r2!3226))) b!7840922))

(declare-fun b!7840925 () Bool)

(declare-fun e!4635961 () Bool)

(declare-fun tp!2320662 () Bool)

(declare-fun tp!2320661 () Bool)

(assert (=> b!7840925 (= e!4635961 (and tp!2320662 tp!2320661))))

(declare-fun b!7840927 () Bool)

(declare-fun tp!2320663 () Bool)

(declare-fun tp!2320659 () Bool)

(assert (=> b!7840927 (= e!4635961 (and tp!2320663 tp!2320659))))

(declare-fun b!7840926 () Bool)

(declare-fun tp!2320660 () Bool)

(assert (=> b!7840926 (= e!4635961 tp!2320660)))

(declare-fun b!7840924 () Bool)

(assert (=> b!7840924 (= e!4635961 tp_is_empty!52405)))

(assert (=> b!7840624 (= tp!2320589 e!4635961)))

(assert (= (and b!7840624 ((_ is ElementMatch!21025) (regTwo!42562 r2!3226))) b!7840924))

(assert (= (and b!7840624 ((_ is Concat!29870) (regTwo!42562 r2!3226))) b!7840925))

(assert (= (and b!7840624 ((_ is Star!21025) (regTwo!42562 r2!3226))) b!7840926))

(assert (= (and b!7840624 ((_ is Union!21025) (regTwo!42562 r2!3226))) b!7840927))

(declare-fun b!7840937 () Bool)

(declare-fun e!4635964 () Bool)

(declare-fun tp!2320677 () Bool)

(declare-fun tp!2320676 () Bool)

(assert (=> b!7840937 (= e!4635964 (and tp!2320677 tp!2320676))))

(declare-fun b!7840939 () Bool)

(declare-fun tp!2320678 () Bool)

(declare-fun tp!2320674 () Bool)

(assert (=> b!7840939 (= e!4635964 (and tp!2320678 tp!2320674))))

(declare-fun b!7840938 () Bool)

(declare-fun tp!2320675 () Bool)

(assert (=> b!7840938 (= e!4635964 tp!2320675)))

(declare-fun b!7840936 () Bool)

(assert (=> b!7840936 (= e!4635964 tp_is_empty!52405)))

(assert (=> b!7840619 (= tp!2320598 e!4635964)))

(assert (= (and b!7840619 ((_ is ElementMatch!21025) (regOne!42563 r2!3226))) b!7840936))

(assert (= (and b!7840619 ((_ is Concat!29870) (regOne!42563 r2!3226))) b!7840937))

(assert (= (and b!7840619 ((_ is Star!21025) (regOne!42563 r2!3226))) b!7840938))

(assert (= (and b!7840619 ((_ is Union!21025) (regOne!42563 r2!3226))) b!7840939))

(declare-fun b!7840945 () Bool)

(declare-fun e!4635966 () Bool)

(declare-fun tp!2320687 () Bool)

(declare-fun tp!2320686 () Bool)

(assert (=> b!7840945 (= e!4635966 (and tp!2320687 tp!2320686))))

(declare-fun b!7840947 () Bool)

(declare-fun tp!2320688 () Bool)

(declare-fun tp!2320684 () Bool)

(assert (=> b!7840947 (= e!4635966 (and tp!2320688 tp!2320684))))

(declare-fun b!7840946 () Bool)

(declare-fun tp!2320685 () Bool)

(assert (=> b!7840946 (= e!4635966 tp!2320685)))

(declare-fun b!7840944 () Bool)

(assert (=> b!7840944 (= e!4635966 tp_is_empty!52405)))

(assert (=> b!7840619 (= tp!2320597 e!4635966)))

(assert (= (and b!7840619 ((_ is ElementMatch!21025) (regTwo!42563 r2!3226))) b!7840944))

(assert (= (and b!7840619 ((_ is Concat!29870) (regTwo!42563 r2!3226))) b!7840945))

(assert (= (and b!7840619 ((_ is Star!21025) (regTwo!42563 r2!3226))) b!7840946))

(assert (= (and b!7840619 ((_ is Union!21025) (regTwo!42563 r2!3226))) b!7840947))

(declare-fun b!7840952 () Bool)

(declare-fun e!4635968 () Bool)

(declare-fun tp!2320694 () Bool)

(assert (=> b!7840952 (= e!4635968 (and tp_is_empty!52405 tp!2320694))))

(assert (=> b!7840622 (= tp!2320595 e!4635968)))

(assert (= (and b!7840622 ((_ is Cons!73738) (t!388597 s2!2463))) b!7840952))

(declare-fun b!7840955 () Bool)

(declare-fun e!4635969 () Bool)

(declare-fun tp!2320698 () Bool)

(declare-fun tp!2320697 () Bool)

(assert (=> b!7840955 (= e!4635969 (and tp!2320698 tp!2320697))))

(declare-fun b!7840959 () Bool)

(declare-fun tp!2320699 () Bool)

(declare-fun tp!2320695 () Bool)

(assert (=> b!7840959 (= e!4635969 (and tp!2320699 tp!2320695))))

(declare-fun b!7840957 () Bool)

(declare-fun tp!2320696 () Bool)

(assert (=> b!7840957 (= e!4635969 tp!2320696)))

(declare-fun b!7840953 () Bool)

(assert (=> b!7840953 (= e!4635969 tp_is_empty!52405)))

(assert (=> b!7840617 (= tp!2320592 e!4635969)))

(assert (= (and b!7840617 ((_ is ElementMatch!21025) (reg!21354 r2!3226))) b!7840953))

(assert (= (and b!7840617 ((_ is Concat!29870) (reg!21354 r2!3226))) b!7840955))

(assert (= (and b!7840617 ((_ is Star!21025) (reg!21354 r2!3226))) b!7840957))

(assert (= (and b!7840617 ((_ is Union!21025) (reg!21354 r2!3226))) b!7840959))

(check-sat (not b!7840775) (not b!7840838) (not b!7840947) (not b!7840887) (not d!2352030) (not b!7840910) (not d!2352054) (not b!7840886) (not b!7840902) (not b!7840736) (not b!7840918) tp_is_empty!52405 (not b!7840913) (not b!7840894) (not b!7840837) (not b!7840744) (not bm!726692) (not bm!726688) (not b!7840815) (not b!7840922) (not b!7840893) (not b!7840832) (not b!7840938) (not bm!726691) (not b!7840696) (not d!2352024) (not b!7840690) (not b!7840737) (not b!7840914) (not b!7840888) (not b!7840945) (not b!7840693) (not b!7840915) (not d!2352034) (not b!7840920) (not b!7840955) (not b!7840909) (not b!7840959) (not b!7840957) (not b!7840860) (not b!7840770) (not b!7840925) (not b!7840892) (not b!7840842) (not b!7840907) (not b!7840903) (not d!2352040) (not b!7840952) (not b!7840840) (not d!2352044) (not b!7840939) (not b!7840776) (not bm!726673) (not bm!726686) (not b!7840926) (not bm!726689) (not b!7840937) (not b!7840773) (not b!7840946) (not b!7840927) (not b!7840911) (not b!7840843) (not b!7840695) (not b!7840824) (not b!7840685) (not b!7840769) (not b!7840691) (not b!7840904))
(check-sat)
