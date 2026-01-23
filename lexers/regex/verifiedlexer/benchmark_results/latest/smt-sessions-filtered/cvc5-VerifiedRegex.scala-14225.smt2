; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744740 () Bool)

(assert start!744740)

(declare-datatypes ((C!42770 0))(
  ( (C!42771 (val!31847 Int)) )
))
(declare-datatypes ((Regex!21222 0))(
  ( (ElementMatch!21222 (c!1449352 C!42770)) (Concat!30067 (regOne!42956 Regex!21222) (regTwo!42956 Regex!21222)) (EmptyExpr!21222) (Star!21222 (reg!21551 Regex!21222)) (EmptyLang!21222) (Union!21222 (regOne!42957 Regex!21222) (regTwo!42957 Regex!21222)) )
))
(declare-datatypes ((List!74083 0))(
  ( (Nil!73959) (Cons!73959 (h!80407 Regex!21222) (t!388818 List!74083)) )
))
(declare-datatypes ((Context!17076 0))(
  ( (Context!17077 (exprs!9038 List!74083)) )
))
(declare-datatypes ((List!74084 0))(
  ( (Nil!73960) (Cons!73960 (h!80408 Context!17076) (t!388819 List!74084)) )
))
(declare-fun zl!157 () List!74084)

(declare-fun validRegex!11631 (Regex!21222) Bool)

(declare-fun generalisedUnion!2785 (List!74083) Regex!21222)

(declare-fun unfocusZipperList!2343 (List!74084) List!74083)

(assert (=> start!744740 (not (validRegex!11631 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157))))))

(declare-fun e!4660754 () Bool)

(assert (=> start!744740 e!4660754))

(declare-fun b!7896512 () Bool)

(declare-fun e!4660755 () Bool)

(declare-fun tp!2352503 () Bool)

(assert (=> b!7896512 (= e!4660755 tp!2352503)))

(declare-fun b!7896511 () Bool)

(declare-fun tp!2352504 () Bool)

(declare-fun inv!94946 (Context!17076) Bool)

(assert (=> b!7896511 (= e!4660754 (and (inv!94946 (h!80408 zl!157)) e!4660755 tp!2352504))))

(assert (= b!7896511 b!7896512))

(assert (= (and start!744740 (is-Cons!73960 zl!157)) b!7896511))

(declare-fun m!8272050 () Bool)

(assert (=> start!744740 m!8272050))

(assert (=> start!744740 m!8272050))

(declare-fun m!8272052 () Bool)

(assert (=> start!744740 m!8272052))

(assert (=> start!744740 m!8272052))

(declare-fun m!8272054 () Bool)

(assert (=> start!744740 m!8272054))

(declare-fun m!8272056 () Bool)

(assert (=> b!7896511 m!8272056))

(push 1)

(assert (not start!744740))

(assert (not b!7896511))

(assert (not b!7896512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7896537 () Bool)

(declare-fun e!4660776 () Bool)

(declare-fun call!732939 () Bool)

(assert (=> b!7896537 (= e!4660776 call!732939)))

(declare-fun b!7896538 () Bool)

(declare-fun e!4660778 () Bool)

(declare-fun e!4660780 () Bool)

(assert (=> b!7896538 (= e!4660778 e!4660780)))

(declare-fun res!3132454 () Bool)

(assert (=> b!7896538 (=> (not res!3132454) (not e!4660780))))

(declare-fun call!732940 () Bool)

(assert (=> b!7896538 (= res!3132454 call!732940)))

(declare-fun b!7896539 () Bool)

(declare-fun e!4660777 () Bool)

(declare-fun e!4660779 () Bool)

(assert (=> b!7896539 (= e!4660777 e!4660779)))

(declare-fun c!1449358 () Bool)

(assert (=> b!7896539 (= c!1449358 (is-Star!21222 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157))))))

(declare-fun d!2357456 () Bool)

(declare-fun res!3132452 () Bool)

(assert (=> d!2357456 (=> res!3132452 e!4660777)))

(assert (=> d!2357456 (= res!3132452 (is-ElementMatch!21222 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157))))))

(assert (=> d!2357456 (= (validRegex!11631 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157))) e!4660777)))

(declare-fun b!7896540 () Bool)

(declare-fun e!4660781 () Bool)

(assert (=> b!7896540 (= e!4660779 e!4660781)))

(declare-fun res!3132455 () Bool)

(declare-fun nullable!9475 (Regex!21222) Bool)

(assert (=> b!7896540 (= res!3132455 (not (nullable!9475 (reg!21551 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157))))))))

(assert (=> b!7896540 (=> (not res!3132455) (not e!4660781))))

(declare-fun bm!732934 () Bool)

(declare-fun c!1449359 () Bool)

(assert (=> bm!732934 (= call!732940 (validRegex!11631 (ite c!1449359 (regOne!42957 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157))) (regOne!42956 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157))))))))

(declare-fun call!732941 () Bool)

(declare-fun bm!732935 () Bool)

(assert (=> bm!732935 (= call!732941 (validRegex!11631 (ite c!1449358 (reg!21551 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157))) (ite c!1449359 (regTwo!42957 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157))) (regTwo!42956 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157)))))))))

(declare-fun b!7896541 () Bool)

(declare-fun e!4660782 () Bool)

(assert (=> b!7896541 (= e!4660779 e!4660782)))

(assert (=> b!7896541 (= c!1449359 (is-Union!21222 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157))))))

(declare-fun b!7896542 () Bool)

(assert (=> b!7896542 (= e!4660780 call!732939)))

(declare-fun b!7896543 () Bool)

(declare-fun res!3132451 () Bool)

(assert (=> b!7896543 (=> res!3132451 e!4660778)))

(assert (=> b!7896543 (= res!3132451 (not (is-Concat!30067 (generalisedUnion!2785 (unfocusZipperList!2343 zl!157)))))))

(assert (=> b!7896543 (= e!4660782 e!4660778)))

(declare-fun b!7896544 () Bool)

(assert (=> b!7896544 (= e!4660781 call!732941)))

(declare-fun b!7896545 () Bool)

(declare-fun res!3132453 () Bool)

(assert (=> b!7896545 (=> (not res!3132453) (not e!4660776))))

(assert (=> b!7896545 (= res!3132453 call!732940)))

(assert (=> b!7896545 (= e!4660782 e!4660776)))

(declare-fun bm!732936 () Bool)

(assert (=> bm!732936 (= call!732939 call!732941)))

(assert (= (and d!2357456 (not res!3132452)) b!7896539))

(assert (= (and b!7896539 c!1449358) b!7896540))

(assert (= (and b!7896539 (not c!1449358)) b!7896541))

(assert (= (and b!7896540 res!3132455) b!7896544))

(assert (= (and b!7896541 c!1449359) b!7896545))

(assert (= (and b!7896541 (not c!1449359)) b!7896543))

(assert (= (and b!7896545 res!3132453) b!7896537))

(assert (= (and b!7896543 (not res!3132451)) b!7896538))

(assert (= (and b!7896538 res!3132454) b!7896542))

(assert (= (or b!7896545 b!7896538) bm!732934))

(assert (= (or b!7896537 b!7896542) bm!732936))

(assert (= (or b!7896544 bm!732936) bm!732935))

(declare-fun m!8272066 () Bool)

(assert (=> b!7896540 m!8272066))

(declare-fun m!8272068 () Bool)

(assert (=> bm!732934 m!8272068))

(declare-fun m!8272070 () Bool)

(assert (=> bm!732935 m!8272070))

(assert (=> start!744740 d!2357456))

(declare-fun b!7896566 () Bool)

(declare-fun e!4660800 () Bool)

(declare-fun lt!2681696 () Regex!21222)

(declare-fun head!16130 (List!74083) Regex!21222)

(assert (=> b!7896566 (= e!4660800 (= lt!2681696 (head!16130 (unfocusZipperList!2343 zl!157))))))

(declare-fun b!7896567 () Bool)

(declare-fun e!4660796 () Regex!21222)

(assert (=> b!7896567 (= e!4660796 (h!80407 (unfocusZipperList!2343 zl!157)))))

(declare-fun d!2357460 () Bool)

(declare-fun e!4660797 () Bool)

(assert (=> d!2357460 e!4660797))

(declare-fun res!3132461 () Bool)

(assert (=> d!2357460 (=> (not res!3132461) (not e!4660797))))

(assert (=> d!2357460 (= res!3132461 (validRegex!11631 lt!2681696))))

(assert (=> d!2357460 (= lt!2681696 e!4660796)))

(declare-fun c!1449368 () Bool)

(declare-fun e!4660795 () Bool)

(assert (=> d!2357460 (= c!1449368 e!4660795)))

(declare-fun res!3132460 () Bool)

(assert (=> d!2357460 (=> (not res!3132460) (not e!4660795))))

(assert (=> d!2357460 (= res!3132460 (is-Cons!73959 (unfocusZipperList!2343 zl!157)))))

(declare-fun lambda!472264 () Int)

(declare-fun forall!18423 (List!74083 Int) Bool)

(assert (=> d!2357460 (forall!18423 (unfocusZipperList!2343 zl!157) lambda!472264)))

(assert (=> d!2357460 (= (generalisedUnion!2785 (unfocusZipperList!2343 zl!157)) lt!2681696)))

(declare-fun b!7896568 () Bool)

(declare-fun e!4660799 () Regex!21222)

(assert (=> b!7896568 (= e!4660799 EmptyLang!21222)))

(declare-fun b!7896569 () Bool)

(declare-fun isEmpty!42434 (List!74083) Bool)

(assert (=> b!7896569 (= e!4660795 (isEmpty!42434 (t!388818 (unfocusZipperList!2343 zl!157))))))

(declare-fun b!7896570 () Bool)

(declare-fun isUnion!1589 (Regex!21222) Bool)

(assert (=> b!7896570 (= e!4660800 (isUnion!1589 lt!2681696))))

(declare-fun b!7896571 () Bool)

(assert (=> b!7896571 (= e!4660799 (Union!21222 (h!80407 (unfocusZipperList!2343 zl!157)) (generalisedUnion!2785 (t!388818 (unfocusZipperList!2343 zl!157)))))))

(declare-fun b!7896572 () Bool)

(declare-fun e!4660798 () Bool)

(assert (=> b!7896572 (= e!4660798 e!4660800)))

(declare-fun c!1449369 () Bool)

(declare-fun tail!15673 (List!74083) List!74083)

(assert (=> b!7896572 (= c!1449369 (isEmpty!42434 (tail!15673 (unfocusZipperList!2343 zl!157))))))

(declare-fun b!7896573 () Bool)

(assert (=> b!7896573 (= e!4660796 e!4660799)))

(declare-fun c!1449370 () Bool)

(assert (=> b!7896573 (= c!1449370 (is-Cons!73959 (unfocusZipperList!2343 zl!157)))))

(declare-fun b!7896574 () Bool)

(declare-fun isEmptyLang!2161 (Regex!21222) Bool)

(assert (=> b!7896574 (= e!4660798 (isEmptyLang!2161 lt!2681696))))

(declare-fun b!7896575 () Bool)

(assert (=> b!7896575 (= e!4660797 e!4660798)))

(declare-fun c!1449371 () Bool)

(assert (=> b!7896575 (= c!1449371 (isEmpty!42434 (unfocusZipperList!2343 zl!157)))))

(assert (= (and d!2357460 res!3132460) b!7896569))

(assert (= (and d!2357460 c!1449368) b!7896567))

(assert (= (and d!2357460 (not c!1449368)) b!7896573))

(assert (= (and b!7896573 c!1449370) b!7896571))

(assert (= (and b!7896573 (not c!1449370)) b!7896568))

(assert (= (and d!2357460 res!3132461) b!7896575))

(assert (= (and b!7896575 c!1449371) b!7896574))

(assert (= (and b!7896575 (not c!1449371)) b!7896572))

(assert (= (and b!7896572 c!1449369) b!7896566))

(assert (= (and b!7896572 (not c!1449369)) b!7896570))

(assert (=> b!7896575 m!8272050))

(declare-fun m!8272072 () Bool)

(assert (=> b!7896575 m!8272072))

(assert (=> b!7896566 m!8272050))

(declare-fun m!8272074 () Bool)

(assert (=> b!7896566 m!8272074))

(declare-fun m!8272076 () Bool)

(assert (=> b!7896569 m!8272076))

(declare-fun m!8272078 () Bool)

(assert (=> d!2357460 m!8272078))

(assert (=> d!2357460 m!8272050))

(declare-fun m!8272080 () Bool)

(assert (=> d!2357460 m!8272080))

(declare-fun m!8272082 () Bool)

(assert (=> b!7896571 m!8272082))

(declare-fun m!8272084 () Bool)

(assert (=> b!7896570 m!8272084))

(assert (=> b!7896572 m!8272050))

(declare-fun m!8272086 () Bool)

(assert (=> b!7896572 m!8272086))

(assert (=> b!7896572 m!8272086))

(declare-fun m!8272088 () Bool)

(assert (=> b!7896572 m!8272088))

(declare-fun m!8272090 () Bool)

(assert (=> b!7896574 m!8272090))

(assert (=> start!744740 d!2357460))

(declare-fun bs!1967758 () Bool)

(declare-fun d!2357462 () Bool)

(assert (= bs!1967758 (and d!2357462 d!2357460)))

(declare-fun lambda!472270 () Int)

(assert (=> bs!1967758 (= lambda!472270 lambda!472264)))

(declare-fun lt!2681699 () List!74083)

(assert (=> d!2357462 (forall!18423 lt!2681699 lambda!472270)))

(declare-fun e!4660803 () List!74083)

(assert (=> d!2357462 (= lt!2681699 e!4660803)))

(declare-fun c!1449374 () Bool)

(assert (=> d!2357462 (= c!1449374 (is-Cons!73960 zl!157))))

(assert (=> d!2357462 (= (unfocusZipperList!2343 zl!157) lt!2681699)))

(declare-fun b!7896580 () Bool)

(declare-fun generalisedConcat!2472 (List!74083) Regex!21222)

(assert (=> b!7896580 (= e!4660803 (Cons!73959 (generalisedConcat!2472 (exprs!9038 (h!80408 zl!157))) (unfocusZipperList!2343 (t!388819 zl!157))))))

(declare-fun b!7896581 () Bool)

(assert (=> b!7896581 (= e!4660803 Nil!73959)))

(assert (= (and d!2357462 c!1449374) b!7896580))

(assert (= (and d!2357462 (not c!1449374)) b!7896581))

(declare-fun m!8272094 () Bool)

(assert (=> d!2357462 m!8272094))

(declare-fun m!8272096 () Bool)

(assert (=> b!7896580 m!8272096))

(declare-fun m!8272098 () Bool)

(assert (=> b!7896580 m!8272098))

(assert (=> start!744740 d!2357462))

(declare-fun bs!1967759 () Bool)

(declare-fun d!2357466 () Bool)

(assert (= bs!1967759 (and d!2357466 d!2357460)))

(declare-fun lambda!472273 () Int)

(assert (=> bs!1967759 (= lambda!472273 lambda!472264)))

(declare-fun bs!1967760 () Bool)

(assert (= bs!1967760 (and d!2357466 d!2357462)))

(assert (=> bs!1967760 (= lambda!472273 lambda!472270)))

(assert (=> d!2357466 (= (inv!94946 (h!80408 zl!157)) (forall!18423 (exprs!9038 (h!80408 zl!157)) lambda!472273))))

(declare-fun bs!1967761 () Bool)

(assert (= bs!1967761 d!2357466))

(declare-fun m!8272100 () Bool)

(assert (=> bs!1967761 m!8272100))

(assert (=> b!7896511 d!2357466))

(declare-fun b!7896604 () Bool)

(declare-fun e!4660820 () Bool)

(declare-fun tp!2352515 () Bool)

(declare-fun tp!2352516 () Bool)

(assert (=> b!7896604 (= e!4660820 (and tp!2352515 tp!2352516))))

(assert (=> b!7896512 (= tp!2352503 e!4660820)))

(assert (= (and b!7896512 (is-Cons!73959 (exprs!9038 (h!80408 zl!157)))) b!7896604))

(declare-fun b!7896612 () Bool)

(declare-fun e!4660826 () Bool)

(declare-fun tp!2352521 () Bool)

(assert (=> b!7896612 (= e!4660826 tp!2352521)))

(declare-fun b!7896611 () Bool)

(declare-fun e!4660825 () Bool)

(declare-fun tp!2352522 () Bool)

(assert (=> b!7896611 (= e!4660825 (and (inv!94946 (h!80408 (t!388819 zl!157))) e!4660826 tp!2352522))))

(assert (=> b!7896511 (= tp!2352504 e!4660825)))

(assert (= b!7896611 b!7896612))

(assert (= (and b!7896511 (is-Cons!73960 (t!388819 zl!157))) b!7896611))

(declare-fun m!8272102 () Bool)

(assert (=> b!7896611 m!8272102))

(push 1)

(assert (not b!7896580))

(assert (not b!7896612))

(assert (not d!2357462))

(assert (not b!7896570))

(assert (not b!7896572))

(assert (not bm!732934))

(assert (not b!7896611))

(assert (not b!7896575))

(assert (not b!7896574))

(assert (not b!7896604))

(assert (not b!7896540))

(assert (not b!7896569))

(assert (not b!7896566))

(assert (not d!2357466))

(assert (not b!7896571))

(assert (not d!2357460))

(assert (not bm!732935))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

