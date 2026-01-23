; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701370 () Bool)

(assert start!701370)

(declare-fun b!7230530 () Bool)

(assert (=> b!7230530 true))

(declare-fun b!7230522 () Bool)

(declare-fun res!2933595 () Bool)

(declare-fun e!4334532 () Bool)

(assert (=> b!7230522 (=> (not res!2933595) (not e!4334532))))

(declare-datatypes ((C!37246 0))(
  ( (C!37247 (val!28571 Int)) )
))
(declare-datatypes ((Regex!18486 0))(
  ( (ElementMatch!18486 (c!1341390 C!37246)) (Concat!27331 (regOne!37484 Regex!18486) (regTwo!37484 Regex!18486)) (EmptyExpr!18486) (Star!18486 (reg!18815 Regex!18486)) (EmptyLang!18486) (Union!18486 (regOne!37485 Regex!18486) (regTwo!37485 Regex!18486)) )
))
(declare-datatypes ((List!70066 0))(
  ( (Nil!69942) (Cons!69942 (h!76390 Regex!18486) (t!384115 List!70066)) )
))
(declare-datatypes ((Context!14852 0))(
  ( (Context!14853 (exprs!7926 List!70066)) )
))
(declare-fun ct2!328 () Context!14852)

(declare-datatypes ((List!70067 0))(
  ( (Nil!69943) (Cons!69943 (h!76391 C!37246) (t!384116 List!70067)) )
))
(declare-fun s2!1849 () List!70067)

(declare-fun matchZipper!3396 ((Set Context!14852) List!70067) Bool)

(assert (=> b!7230522 (= res!2933595 (matchZipper!3396 (set.insert ct2!328 (as set.empty (Set Context!14852))) s2!1849))))

(declare-fun b!7230523 () Bool)

(declare-fun e!4334534 () Bool)

(assert (=> b!7230523 (= e!4334532 e!4334534)))

(declare-fun res!2933594 () Bool)

(assert (=> b!7230523 (=> (not res!2933594) (not e!4334534))))

(declare-fun ct1!232 () Context!14852)

(declare-fun s1!1971 () List!70067)

(assert (=> b!7230523 (= res!2933594 (and (not (is-Nil!69942 (exprs!7926 ct1!232))) (is-Cons!69943 s1!1971)))))

(declare-fun lt!2572998 () List!70066)

(declare-fun ++!16272 (List!70066 List!70066) List!70066)

(assert (=> b!7230523 (= lt!2572998 (++!16272 (exprs!7926 ct1!232) (exprs!7926 ct2!328)))))

(declare-datatypes ((Unit!163507 0))(
  ( (Unit!163508) )
))
(declare-fun lt!2573001 () Unit!163507)

(declare-fun lambda!439126 () Int)

(declare-fun lemmaConcatPreservesForall!1295 (List!70066 List!70066 Int) Unit!163507)

(assert (=> b!7230523 (= lt!2573001 (lemmaConcatPreservesForall!1295 (exprs!7926 ct1!232) (exprs!7926 ct2!328) lambda!439126))))

(declare-fun b!7230524 () Bool)

(declare-fun e!4334531 () Bool)

(declare-fun lt!2573006 () Context!14852)

(declare-fun forall!17306 (List!70066 Int) Bool)

(assert (=> b!7230524 (= e!4334531 (forall!17306 (exprs!7926 lt!2573006) lambda!439126))))

(declare-fun ++!16273 (List!70067 List!70067) List!70067)

(assert (=> b!7230524 (matchZipper!3396 (set.insert (Context!14853 (++!16272 (exprs!7926 lt!2573006) (exprs!7926 ct2!328))) (as set.empty (Set Context!14852))) (++!16273 (t!384116 s1!1971) s2!1849))))

(declare-fun lt!2573003 () Unit!163507)

(assert (=> b!7230524 (= lt!2573003 (lemmaConcatPreservesForall!1295 (exprs!7926 lt!2573006) (exprs!7926 ct2!328) lambda!439126))))

(declare-fun lt!2572999 () Unit!163507)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!277 (Context!14852 Context!14852 List!70067 List!70067) Unit!163507)

(assert (=> b!7230524 (= lt!2572999 (lemmaConcatenateContextMatchesConcatOfStrings!277 lt!2573006 ct2!328 (t!384116 s1!1971) s2!1849))))

(declare-fun lt!2573004 () (Set Context!14852))

(declare-fun lambda!439127 () Int)

(declare-fun getWitness!1995 ((Set Context!14852) Int) Context!14852)

(assert (=> b!7230524 (= lt!2573006 (getWitness!1995 lt!2573004 lambda!439127))))

(declare-fun b!7230525 () Bool)

(declare-fun e!4334535 () Bool)

(declare-fun tp_is_empty!46437 () Bool)

(declare-fun tp!2033690 () Bool)

(assert (=> b!7230525 (= e!4334535 (and tp_is_empty!46437 tp!2033690))))

(declare-fun b!7230526 () Bool)

(declare-fun e!4334538 () Bool)

(assert (=> b!7230526 (= e!4334534 e!4334538)))

(declare-fun res!2933593 () Bool)

(assert (=> b!7230526 (=> (not res!2933593) (not e!4334538))))

(assert (=> b!7230526 (= res!2933593 (matchZipper!3396 lt!2573004 (t!384116 s1!1971)))))

(declare-fun lt!2573000 () (Set Context!14852))

(declare-fun derivationStepZipper!3278 ((Set Context!14852) C!37246) (Set Context!14852))

(assert (=> b!7230526 (= lt!2573004 (derivationStepZipper!3278 lt!2573000 (h!76391 s1!1971)))))

(declare-fun b!7230527 () Bool)

(declare-fun e!4334536 () Bool)

(declare-fun tp!2033691 () Bool)

(assert (=> b!7230527 (= e!4334536 tp!2033691)))

(declare-fun res!2933592 () Bool)

(assert (=> start!701370 (=> (not res!2933592) (not e!4334532))))

(assert (=> start!701370 (= res!2933592 (matchZipper!3396 lt!2573000 s1!1971))))

(assert (=> start!701370 (= lt!2573000 (set.insert ct1!232 (as set.empty (Set Context!14852))))))

(assert (=> start!701370 e!4334532))

(declare-fun e!4334537 () Bool)

(declare-fun inv!89226 (Context!14852) Bool)

(assert (=> start!701370 (and (inv!89226 ct1!232) e!4334537)))

(assert (=> start!701370 e!4334535))

(declare-fun e!4334533 () Bool)

(assert (=> start!701370 e!4334533))

(assert (=> start!701370 (and (inv!89226 ct2!328) e!4334536)))

(declare-fun b!7230528 () Bool)

(declare-fun tp!2033689 () Bool)

(assert (=> b!7230528 (= e!4334537 tp!2033689)))

(declare-fun b!7230529 () Bool)

(declare-fun tp!2033692 () Bool)

(assert (=> b!7230529 (= e!4334533 (and tp_is_empty!46437 tp!2033692))))

(assert (=> b!7230530 (= e!4334538 (not e!4334531))))

(declare-fun res!2933591 () Bool)

(assert (=> b!7230530 (=> res!2933591 e!4334531)))

(declare-fun exists!4115 ((Set Context!14852) Int) Bool)

(assert (=> b!7230530 (= res!2933591 (not (exists!4115 lt!2573004 lambda!439127)))))

(declare-datatypes ((List!70068 0))(
  ( (Nil!69944) (Cons!69944 (h!76392 Context!14852) (t!384117 List!70068)) )
))
(declare-fun lt!2573002 () List!70068)

(declare-fun exists!4116 (List!70068 Int) Bool)

(assert (=> b!7230530 (exists!4116 lt!2573002 lambda!439127)))

(declare-fun lt!2573005 () Unit!163507)

(declare-fun lemmaZipperMatchesExistsMatchingContext!629 (List!70068 List!70067) Unit!163507)

(assert (=> b!7230530 (= lt!2573005 (lemmaZipperMatchesExistsMatchingContext!629 lt!2573002 (t!384116 s1!1971)))))

(declare-fun toList!11343 ((Set Context!14852)) List!70068)

(assert (=> b!7230530 (= lt!2573002 (toList!11343 lt!2573004))))

(assert (= (and start!701370 res!2933592) b!7230522))

(assert (= (and b!7230522 res!2933595) b!7230523))

(assert (= (and b!7230523 res!2933594) b!7230526))

(assert (= (and b!7230526 res!2933593) b!7230530))

(assert (= (and b!7230530 (not res!2933591)) b!7230524))

(assert (= start!701370 b!7230528))

(assert (= (and start!701370 (is-Cons!69943 s1!1971)) b!7230525))

(assert (= (and start!701370 (is-Cons!69943 s2!1849)) b!7230529))

(assert (= start!701370 b!7230527))

(declare-fun m!7898798 () Bool)

(assert (=> b!7230522 m!7898798))

(assert (=> b!7230522 m!7898798))

(declare-fun m!7898800 () Bool)

(assert (=> b!7230522 m!7898800))

(declare-fun m!7898802 () Bool)

(assert (=> b!7230524 m!7898802))

(assert (=> b!7230524 m!7898802))

(declare-fun m!7898804 () Bool)

(assert (=> b!7230524 m!7898804))

(declare-fun m!7898806 () Bool)

(assert (=> b!7230524 m!7898806))

(assert (=> b!7230524 m!7898804))

(declare-fun m!7898808 () Bool)

(assert (=> b!7230524 m!7898808))

(declare-fun m!7898810 () Bool)

(assert (=> b!7230524 m!7898810))

(declare-fun m!7898812 () Bool)

(assert (=> b!7230524 m!7898812))

(declare-fun m!7898814 () Bool)

(assert (=> b!7230524 m!7898814))

(declare-fun m!7898816 () Bool)

(assert (=> b!7230524 m!7898816))

(declare-fun m!7898818 () Bool)

(assert (=> start!701370 m!7898818))

(declare-fun m!7898820 () Bool)

(assert (=> start!701370 m!7898820))

(declare-fun m!7898822 () Bool)

(assert (=> start!701370 m!7898822))

(declare-fun m!7898824 () Bool)

(assert (=> start!701370 m!7898824))

(declare-fun m!7898826 () Bool)

(assert (=> b!7230526 m!7898826))

(declare-fun m!7898828 () Bool)

(assert (=> b!7230526 m!7898828))

(declare-fun m!7898830 () Bool)

(assert (=> b!7230523 m!7898830))

(declare-fun m!7898832 () Bool)

(assert (=> b!7230523 m!7898832))

(declare-fun m!7898834 () Bool)

(assert (=> b!7230530 m!7898834))

(declare-fun m!7898836 () Bool)

(assert (=> b!7230530 m!7898836))

(declare-fun m!7898838 () Bool)

(assert (=> b!7230530 m!7898838))

(declare-fun m!7898840 () Bool)

(assert (=> b!7230530 m!7898840))

(push 1)

(assert (not b!7230530))

(assert (not b!7230522))

(assert tp_is_empty!46437)

(assert (not b!7230525))

(assert (not start!701370))

(assert (not b!7230527))

(assert (not b!7230524))

(assert (not b!7230526))

(assert (not b!7230528))

(assert (not b!7230529))

(assert (not b!7230523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2245428 () Bool)

(declare-fun lt!2573036 () Bool)

(assert (=> d!2245428 (= lt!2573036 (exists!4116 (toList!11343 lt!2573004) lambda!439127))))

(declare-fun choose!55488 ((Set Context!14852) Int) Bool)

(assert (=> d!2245428 (= lt!2573036 (choose!55488 lt!2573004 lambda!439127))))

(assert (=> d!2245428 (= (exists!4115 lt!2573004 lambda!439127) lt!2573036)))

(declare-fun bs!1902405 () Bool)

(assert (= bs!1902405 d!2245428))

(assert (=> bs!1902405 m!7898840))

(assert (=> bs!1902405 m!7898840))

(declare-fun m!7898886 () Bool)

(assert (=> bs!1902405 m!7898886))

(declare-fun m!7898888 () Bool)

(assert (=> bs!1902405 m!7898888))

(assert (=> b!7230530 d!2245428))

(declare-fun bs!1902406 () Bool)

(declare-fun d!2245430 () Bool)

(assert (= bs!1902406 (and d!2245430 b!7230530)))

(declare-fun lambda!439144 () Int)

(assert (=> bs!1902406 (not (= lambda!439144 lambda!439127))))

(assert (=> d!2245430 true))

(declare-fun order!28803 () Int)

(declare-fun dynLambda!28499 (Int Int) Int)

(assert (=> d!2245430 (< (dynLambda!28499 order!28803 lambda!439127) (dynLambda!28499 order!28803 lambda!439144))))

(declare-fun forall!17308 (List!70068 Int) Bool)

(assert (=> d!2245430 (= (exists!4116 lt!2573002 lambda!439127) (not (forall!17308 lt!2573002 lambda!439144)))))

(declare-fun bs!1902407 () Bool)

(assert (= bs!1902407 d!2245430))

(declare-fun m!7898890 () Bool)

(assert (=> bs!1902407 m!7898890))

(assert (=> b!7230530 d!2245430))

(declare-fun bs!1902408 () Bool)

(declare-fun d!2245432 () Bool)

(assert (= bs!1902408 (and d!2245432 b!7230530)))

(declare-fun lambda!439147 () Int)

(assert (=> bs!1902408 (= lambda!439147 lambda!439127)))

(declare-fun bs!1902409 () Bool)

(assert (= bs!1902409 (and d!2245432 d!2245430)))

(assert (=> bs!1902409 (not (= lambda!439147 lambda!439144))))

(assert (=> d!2245432 true))

(assert (=> d!2245432 (exists!4116 lt!2573002 lambda!439147)))

(declare-fun lt!2573039 () Unit!163507)

(declare-fun choose!55489 (List!70068 List!70067) Unit!163507)

(assert (=> d!2245432 (= lt!2573039 (choose!55489 lt!2573002 (t!384116 s1!1971)))))

(declare-fun content!14361 (List!70068) (Set Context!14852))

(assert (=> d!2245432 (matchZipper!3396 (content!14361 lt!2573002) (t!384116 s1!1971))))

(assert (=> d!2245432 (= (lemmaZipperMatchesExistsMatchingContext!629 lt!2573002 (t!384116 s1!1971)) lt!2573039)))

(declare-fun bs!1902410 () Bool)

(assert (= bs!1902410 d!2245432))

(declare-fun m!7898892 () Bool)

(assert (=> bs!1902410 m!7898892))

(declare-fun m!7898894 () Bool)

(assert (=> bs!1902410 m!7898894))

(declare-fun m!7898896 () Bool)

(assert (=> bs!1902410 m!7898896))

(assert (=> bs!1902410 m!7898896))

(declare-fun m!7898898 () Bool)

(assert (=> bs!1902410 m!7898898))

(assert (=> b!7230530 d!2245432))

(declare-fun d!2245434 () Bool)

(declare-fun e!4334565 () Bool)

(assert (=> d!2245434 e!4334565))

(declare-fun res!2933613 () Bool)

(assert (=> d!2245434 (=> (not res!2933613) (not e!4334565))))

(declare-fun lt!2573042 () List!70068)

(declare-fun noDuplicate!2915 (List!70068) Bool)

(assert (=> d!2245434 (= res!2933613 (noDuplicate!2915 lt!2573042))))

(declare-fun choose!55490 ((Set Context!14852)) List!70068)

(assert (=> d!2245434 (= lt!2573042 (choose!55490 lt!2573004))))

(assert (=> d!2245434 (= (toList!11343 lt!2573004) lt!2573042)))

(declare-fun b!7230566 () Bool)

(assert (=> b!7230566 (= e!4334565 (= (content!14361 lt!2573042) lt!2573004))))

(assert (= (and d!2245434 res!2933613) b!7230566))

(declare-fun m!7898900 () Bool)

(assert (=> d!2245434 m!7898900))

(declare-fun m!7898902 () Bool)

(assert (=> d!2245434 m!7898902))

(declare-fun m!7898904 () Bool)

(assert (=> b!7230566 m!7898904))

(assert (=> b!7230530 d!2245434))

(declare-fun d!2245436 () Bool)

(declare-fun c!1341402 () Bool)

(declare-fun isEmpty!40314 (List!70067) Bool)

(assert (=> d!2245436 (= c!1341402 (isEmpty!40314 (t!384116 s1!1971)))))

(declare-fun e!4334568 () Bool)

(assert (=> d!2245436 (= (matchZipper!3396 lt!2573004 (t!384116 s1!1971)) e!4334568)))

(declare-fun b!7230571 () Bool)

(declare-fun nullableZipper!2803 ((Set Context!14852)) Bool)

(assert (=> b!7230571 (= e!4334568 (nullableZipper!2803 lt!2573004))))

(declare-fun b!7230572 () Bool)

(declare-fun head!14789 (List!70067) C!37246)

(declare-fun tail!14104 (List!70067) List!70067)

(assert (=> b!7230572 (= e!4334568 (matchZipper!3396 (derivationStepZipper!3278 lt!2573004 (head!14789 (t!384116 s1!1971))) (tail!14104 (t!384116 s1!1971))))))

(assert (= (and d!2245436 c!1341402) b!7230571))

(assert (= (and d!2245436 (not c!1341402)) b!7230572))

(declare-fun m!7898906 () Bool)

(assert (=> d!2245436 m!7898906))

(declare-fun m!7898908 () Bool)

(assert (=> b!7230571 m!7898908))

(declare-fun m!7898910 () Bool)

(assert (=> b!7230572 m!7898910))

(assert (=> b!7230572 m!7898910))

(declare-fun m!7898912 () Bool)

(assert (=> b!7230572 m!7898912))

(declare-fun m!7898914 () Bool)

(assert (=> b!7230572 m!7898914))

(assert (=> b!7230572 m!7898912))

(assert (=> b!7230572 m!7898914))

(declare-fun m!7898916 () Bool)

(assert (=> b!7230572 m!7898916))

(assert (=> b!7230526 d!2245436))

(declare-fun d!2245438 () Bool)

(assert (=> d!2245438 true))

(declare-fun lambda!439150 () Int)

(declare-fun flatMap!2697 ((Set Context!14852) Int) (Set Context!14852))

(assert (=> d!2245438 (= (derivationStepZipper!3278 lt!2573000 (h!76391 s1!1971)) (flatMap!2697 lt!2573000 lambda!439150))))

(declare-fun bs!1902411 () Bool)

(assert (= bs!1902411 d!2245438))

(declare-fun m!7898918 () Bool)

(assert (=> bs!1902411 m!7898918))

(assert (=> b!7230526 d!2245438))

(declare-fun d!2245440 () Bool)

(declare-fun c!1341405 () Bool)

(assert (=> d!2245440 (= c!1341405 (isEmpty!40314 s2!1849))))

(declare-fun e!4334569 () Bool)

(assert (=> d!2245440 (= (matchZipper!3396 (set.insert ct2!328 (as set.empty (Set Context!14852))) s2!1849) e!4334569)))

(declare-fun b!7230575 () Bool)

(assert (=> b!7230575 (= e!4334569 (nullableZipper!2803 (set.insert ct2!328 (as set.empty (Set Context!14852)))))))

(declare-fun b!7230576 () Bool)

(assert (=> b!7230576 (= e!4334569 (matchZipper!3396 (derivationStepZipper!3278 (set.insert ct2!328 (as set.empty (Set Context!14852))) (head!14789 s2!1849)) (tail!14104 s2!1849)))))

(assert (= (and d!2245440 c!1341405) b!7230575))

(assert (= (and d!2245440 (not c!1341405)) b!7230576))

(declare-fun m!7898920 () Bool)

(assert (=> d!2245440 m!7898920))

(assert (=> b!7230575 m!7898798))

(declare-fun m!7898922 () Bool)

(assert (=> b!7230575 m!7898922))

(declare-fun m!7898924 () Bool)

(assert (=> b!7230576 m!7898924))

(assert (=> b!7230576 m!7898798))

(assert (=> b!7230576 m!7898924))

(declare-fun m!7898926 () Bool)

(assert (=> b!7230576 m!7898926))

(declare-fun m!7898928 () Bool)

(assert (=> b!7230576 m!7898928))

(assert (=> b!7230576 m!7898926))

(assert (=> b!7230576 m!7898928))

(declare-fun m!7898930 () Bool)

(assert (=> b!7230576 m!7898930))

(assert (=> b!7230522 d!2245440))

(declare-fun b!7230587 () Bool)

(declare-fun res!2933619 () Bool)

(declare-fun e!4334574 () Bool)

(assert (=> b!7230587 (=> (not res!2933619) (not e!4334574))))

(declare-fun lt!2573045 () List!70066)

(declare-fun size!41540 (List!70066) Int)

(assert (=> b!7230587 (= res!2933619 (= (size!41540 lt!2573045) (+ (size!41540 (exprs!7926 ct1!232)) (size!41540 (exprs!7926 ct2!328)))))))

(declare-fun b!7230585 () Bool)

(declare-fun e!4334575 () List!70066)

(assert (=> b!7230585 (= e!4334575 (exprs!7926 ct2!328))))

(declare-fun b!7230588 () Bool)

(assert (=> b!7230588 (= e!4334574 (or (not (= (exprs!7926 ct2!328) Nil!69942)) (= lt!2573045 (exprs!7926 ct1!232))))))

(declare-fun d!2245442 () Bool)

(assert (=> d!2245442 e!4334574))

(declare-fun res!2933618 () Bool)

(assert (=> d!2245442 (=> (not res!2933618) (not e!4334574))))

(declare-fun content!14362 (List!70066) (Set Regex!18486))

(assert (=> d!2245442 (= res!2933618 (= (content!14362 lt!2573045) (set.union (content!14362 (exprs!7926 ct1!232)) (content!14362 (exprs!7926 ct2!328)))))))

(assert (=> d!2245442 (= lt!2573045 e!4334575)))

(declare-fun c!1341408 () Bool)

(assert (=> d!2245442 (= c!1341408 (is-Nil!69942 (exprs!7926 ct1!232)))))

(assert (=> d!2245442 (= (++!16272 (exprs!7926 ct1!232) (exprs!7926 ct2!328)) lt!2573045)))

(declare-fun b!7230586 () Bool)

(assert (=> b!7230586 (= e!4334575 (Cons!69942 (h!76390 (exprs!7926 ct1!232)) (++!16272 (t!384115 (exprs!7926 ct1!232)) (exprs!7926 ct2!328))))))

(assert (= (and d!2245442 c!1341408) b!7230585))

(assert (= (and d!2245442 (not c!1341408)) b!7230586))

(assert (= (and d!2245442 res!2933618) b!7230587))

(assert (= (and b!7230587 res!2933619) b!7230588))

(declare-fun m!7898932 () Bool)

(assert (=> b!7230587 m!7898932))

(declare-fun m!7898934 () Bool)

(assert (=> b!7230587 m!7898934))

(declare-fun m!7898936 () Bool)

(assert (=> b!7230587 m!7898936))

(declare-fun m!7898938 () Bool)

(assert (=> d!2245442 m!7898938))

(declare-fun m!7898940 () Bool)

(assert (=> d!2245442 m!7898940))

(declare-fun m!7898942 () Bool)

(assert (=> d!2245442 m!7898942))

(declare-fun m!7898944 () Bool)

(assert (=> b!7230586 m!7898944))

(assert (=> b!7230523 d!2245442))

(declare-fun d!2245446 () Bool)

(assert (=> d!2245446 (forall!17306 (++!16272 (exprs!7926 ct1!232) (exprs!7926 ct2!328)) lambda!439126)))

(declare-fun lt!2573048 () Unit!163507)

(declare-fun choose!55491 (List!70066 List!70066 Int) Unit!163507)

(assert (=> d!2245446 (= lt!2573048 (choose!55491 (exprs!7926 ct1!232) (exprs!7926 ct2!328) lambda!439126))))

(assert (=> d!2245446 (forall!17306 (exprs!7926 ct1!232) lambda!439126)))

(assert (=> d!2245446 (= (lemmaConcatPreservesForall!1295 (exprs!7926 ct1!232) (exprs!7926 ct2!328) lambda!439126) lt!2573048)))

(declare-fun bs!1902412 () Bool)

(assert (= bs!1902412 d!2245446))

(assert (=> bs!1902412 m!7898830))

(assert (=> bs!1902412 m!7898830))

(declare-fun m!7898946 () Bool)

(assert (=> bs!1902412 m!7898946))

(declare-fun m!7898948 () Bool)

(assert (=> bs!1902412 m!7898948))

(declare-fun m!7898950 () Bool)

(assert (=> bs!1902412 m!7898950))

(assert (=> b!7230523 d!2245446))

(declare-fun b!7230591 () Bool)

(declare-fun res!2933621 () Bool)

(declare-fun e!4334576 () Bool)

(assert (=> b!7230591 (=> (not res!2933621) (not e!4334576))))

(declare-fun lt!2573049 () List!70066)

(assert (=> b!7230591 (= res!2933621 (= (size!41540 lt!2573049) (+ (size!41540 (exprs!7926 lt!2573006)) (size!41540 (exprs!7926 ct2!328)))))))

(declare-fun b!7230589 () Bool)

(declare-fun e!4334577 () List!70066)

(assert (=> b!7230589 (= e!4334577 (exprs!7926 ct2!328))))

(declare-fun b!7230592 () Bool)

(assert (=> b!7230592 (= e!4334576 (or (not (= (exprs!7926 ct2!328) Nil!69942)) (= lt!2573049 (exprs!7926 lt!2573006))))))

(declare-fun d!2245448 () Bool)

(assert (=> d!2245448 e!4334576))

(declare-fun res!2933620 () Bool)

(assert (=> d!2245448 (=> (not res!2933620) (not e!4334576))))

(assert (=> d!2245448 (= res!2933620 (= (content!14362 lt!2573049) (set.union (content!14362 (exprs!7926 lt!2573006)) (content!14362 (exprs!7926 ct2!328)))))))

(assert (=> d!2245448 (= lt!2573049 e!4334577)))

(declare-fun c!1341409 () Bool)

(assert (=> d!2245448 (= c!1341409 (is-Nil!69942 (exprs!7926 lt!2573006)))))

(assert (=> d!2245448 (= (++!16272 (exprs!7926 lt!2573006) (exprs!7926 ct2!328)) lt!2573049)))

(declare-fun b!7230590 () Bool)

(assert (=> b!7230590 (= e!4334577 (Cons!69942 (h!76390 (exprs!7926 lt!2573006)) (++!16272 (t!384115 (exprs!7926 lt!2573006)) (exprs!7926 ct2!328))))))

(assert (= (and d!2245448 c!1341409) b!7230589))

(assert (= (and d!2245448 (not c!1341409)) b!7230590))

(assert (= (and d!2245448 res!2933620) b!7230591))

(assert (= (and b!7230591 res!2933621) b!7230592))

(declare-fun m!7898952 () Bool)

(assert (=> b!7230591 m!7898952))

(declare-fun m!7898954 () Bool)

(assert (=> b!7230591 m!7898954))

(assert (=> b!7230591 m!7898936))

(declare-fun m!7898956 () Bool)

(assert (=> d!2245448 m!7898956))

(declare-fun m!7898958 () Bool)

(assert (=> d!2245448 m!7898958))

(assert (=> d!2245448 m!7898942))

(declare-fun m!7898960 () Bool)

(assert (=> b!7230590 m!7898960))

(assert (=> b!7230524 d!2245448))

(declare-fun d!2245450 () Bool)

(declare-fun res!2933630 () Bool)

(declare-fun e!4334586 () Bool)

(assert (=> d!2245450 (=> res!2933630 e!4334586)))

(assert (=> d!2245450 (= res!2933630 (is-Nil!69942 (exprs!7926 lt!2573006)))))

(assert (=> d!2245450 (= (forall!17306 (exprs!7926 lt!2573006) lambda!439126) e!4334586)))

(declare-fun b!7230605 () Bool)

(declare-fun e!4334587 () Bool)

(assert (=> b!7230605 (= e!4334586 e!4334587)))

(declare-fun res!2933631 () Bool)

(assert (=> b!7230605 (=> (not res!2933631) (not e!4334587))))

(declare-fun dynLambda!28500 (Int Regex!18486) Bool)

(assert (=> b!7230605 (= res!2933631 (dynLambda!28500 lambda!439126 (h!76390 (exprs!7926 lt!2573006))))))

(declare-fun b!7230606 () Bool)

(assert (=> b!7230606 (= e!4334587 (forall!17306 (t!384115 (exprs!7926 lt!2573006)) lambda!439126))))

(assert (= (and d!2245450 (not res!2933630)) b!7230605))

(assert (= (and b!7230605 res!2933631) b!7230606))

(declare-fun b_lambda!277019 () Bool)

(assert (=> (not b_lambda!277019) (not b!7230605)))

(declare-fun m!7898962 () Bool)

(assert (=> b!7230605 m!7898962))

(declare-fun m!7898964 () Bool)

(assert (=> b!7230606 m!7898964))

(assert (=> b!7230524 d!2245450))

(declare-fun lt!2573055 () List!70067)

(declare-fun b!7230622 () Bool)

(declare-fun e!4334594 () Bool)

(assert (=> b!7230622 (= e!4334594 (or (not (= s2!1849 Nil!69943)) (= lt!2573055 (t!384116 s1!1971))))))

(declare-fun b!7230621 () Bool)

(declare-fun res!2933639 () Bool)

(assert (=> b!7230621 (=> (not res!2933639) (not e!4334594))))

(declare-fun size!41541 (List!70067) Int)

(assert (=> b!7230621 (= res!2933639 (= (size!41541 lt!2573055) (+ (size!41541 (t!384116 s1!1971)) (size!41541 s2!1849))))))

(declare-fun d!2245452 () Bool)

(assert (=> d!2245452 e!4334594))

(declare-fun res!2933638 () Bool)

(assert (=> d!2245452 (=> (not res!2933638) (not e!4334594))))

(declare-fun content!14363 (List!70067) (Set C!37246))

(assert (=> d!2245452 (= res!2933638 (= (content!14363 lt!2573055) (set.union (content!14363 (t!384116 s1!1971)) (content!14363 s2!1849))))))

(declare-fun e!4334595 () List!70067)

(assert (=> d!2245452 (= lt!2573055 e!4334595)))

(declare-fun c!1341415 () Bool)

(assert (=> d!2245452 (= c!1341415 (is-Nil!69943 (t!384116 s1!1971)))))

(assert (=> d!2245452 (= (++!16273 (t!384116 s1!1971) s2!1849) lt!2573055)))

(declare-fun b!7230620 () Bool)

(assert (=> b!7230620 (= e!4334595 (Cons!69943 (h!76391 (t!384116 s1!1971)) (++!16273 (t!384116 (t!384116 s1!1971)) s2!1849)))))

(declare-fun b!7230619 () Bool)

(assert (=> b!7230619 (= e!4334595 s2!1849)))

(assert (= (and d!2245452 c!1341415) b!7230619))

(assert (= (and d!2245452 (not c!1341415)) b!7230620))

(assert (= (and d!2245452 res!2933638) b!7230621))

(assert (= (and b!7230621 res!2933639) b!7230622))

(declare-fun m!7898980 () Bool)

(assert (=> b!7230621 m!7898980))

(declare-fun m!7898982 () Bool)

(assert (=> b!7230621 m!7898982))

(declare-fun m!7898984 () Bool)

(assert (=> b!7230621 m!7898984))

(declare-fun m!7898986 () Bool)

(assert (=> d!2245452 m!7898986))

(declare-fun m!7898988 () Bool)

(assert (=> d!2245452 m!7898988))

(declare-fun m!7898990 () Bool)

(assert (=> d!2245452 m!7898990))

(declare-fun m!7898992 () Bool)

(assert (=> b!7230620 m!7898992))

(assert (=> b!7230524 d!2245452))

(declare-fun d!2245456 () Bool)

(declare-fun e!4334598 () Bool)

(assert (=> d!2245456 e!4334598))

(declare-fun res!2933642 () Bool)

(assert (=> d!2245456 (=> (not res!2933642) (not e!4334598))))

(declare-fun lt!2573058 () Context!14852)

(declare-fun dynLambda!28501 (Int Context!14852) Bool)

(assert (=> d!2245456 (= res!2933642 (dynLambda!28501 lambda!439127 lt!2573058))))

(declare-fun getWitness!1997 (List!70068 Int) Context!14852)

(assert (=> d!2245456 (= lt!2573058 (getWitness!1997 (toList!11343 lt!2573004) lambda!439127))))

(assert (=> d!2245456 (exists!4115 lt!2573004 lambda!439127)))

(assert (=> d!2245456 (= (getWitness!1995 lt!2573004 lambda!439127) lt!2573058)))

(declare-fun b!7230625 () Bool)

(assert (=> b!7230625 (= e!4334598 (set.member lt!2573058 lt!2573004))))

(assert (= (and d!2245456 res!2933642) b!7230625))

(declare-fun b_lambda!277021 () Bool)

(assert (=> (not b_lambda!277021) (not d!2245456)))

(declare-fun m!7898994 () Bool)

(assert (=> d!2245456 m!7898994))

(assert (=> d!2245456 m!7898840))

(assert (=> d!2245456 m!7898840))

(declare-fun m!7898996 () Bool)

(assert (=> d!2245456 m!7898996))

(assert (=> d!2245456 m!7898834))

(declare-fun m!7898998 () Bool)

(assert (=> b!7230625 m!7898998))

(assert (=> b!7230524 d!2245456))

(declare-fun d!2245458 () Bool)

(assert (=> d!2245458 (forall!17306 (++!16272 (exprs!7926 lt!2573006) (exprs!7926 ct2!328)) lambda!439126)))

(declare-fun lt!2573061 () Unit!163507)

(assert (=> d!2245458 (= lt!2573061 (choose!55491 (exprs!7926 lt!2573006) (exprs!7926 ct2!328) lambda!439126))))

(assert (=> d!2245458 (forall!17306 (exprs!7926 lt!2573006) lambda!439126)))

(assert (=> d!2245458 (= (lemmaConcatPreservesForall!1295 (exprs!7926 lt!2573006) (exprs!7926 ct2!328) lambda!439126) lt!2573061)))

(declare-fun bs!1902413 () Bool)

(assert (= bs!1902413 d!2245458))

(assert (=> bs!1902413 m!7898808))

(assert (=> bs!1902413 m!7898808))

(declare-fun m!7899000 () Bool)

(assert (=> bs!1902413 m!7899000))

(declare-fun m!7899002 () Bool)

(assert (=> bs!1902413 m!7899002))

(assert (=> bs!1902413 m!7898812))

(assert (=> b!7230524 d!2245458))

(declare-fun bs!1902415 () Bool)

(declare-fun d!2245460 () Bool)

(assert (= bs!1902415 (and d!2245460 b!7230523)))

(declare-fun lambda!439153 () Int)

(assert (=> bs!1902415 (= lambda!439153 lambda!439126)))

(assert (=> d!2245460 (matchZipper!3396 (set.insert (Context!14853 (++!16272 (exprs!7926 lt!2573006) (exprs!7926 ct2!328))) (as set.empty (Set Context!14852))) (++!16273 (t!384116 s1!1971) s2!1849))))

(declare-fun lt!2573068 () Unit!163507)

(assert (=> d!2245460 (= lt!2573068 (lemmaConcatPreservesForall!1295 (exprs!7926 lt!2573006) (exprs!7926 ct2!328) lambda!439153))))

(declare-fun lt!2573067 () Unit!163507)

(declare-fun choose!55492 (Context!14852 Context!14852 List!70067 List!70067) Unit!163507)

(assert (=> d!2245460 (= lt!2573067 (choose!55492 lt!2573006 ct2!328 (t!384116 s1!1971) s2!1849))))

(assert (=> d!2245460 (matchZipper!3396 (set.insert lt!2573006 (as set.empty (Set Context!14852))) (t!384116 s1!1971))))

(assert (=> d!2245460 (= (lemmaConcatenateContextMatchesConcatOfStrings!277 lt!2573006 ct2!328 (t!384116 s1!1971) s2!1849) lt!2573067)))

(declare-fun bs!1902416 () Bool)

(assert (= bs!1902416 d!2245460))

(declare-fun m!7899010 () Bool)

(assert (=> bs!1902416 m!7899010))

(assert (=> bs!1902416 m!7898808))

(assert (=> bs!1902416 m!7899010))

(declare-fun m!7899012 () Bool)

(assert (=> bs!1902416 m!7899012))

(declare-fun m!7899014 () Bool)

(assert (=> bs!1902416 m!7899014))

(declare-fun m!7899016 () Bool)

(assert (=> bs!1902416 m!7899016))

(assert (=> bs!1902416 m!7898802))

(assert (=> bs!1902416 m!7898802))

(assert (=> bs!1902416 m!7898804))

(assert (=> bs!1902416 m!7898806))

(assert (=> bs!1902416 m!7898804))

(assert (=> b!7230524 d!2245460))

(declare-fun d!2245464 () Bool)

(declare-fun c!1341418 () Bool)

(assert (=> d!2245464 (= c!1341418 (isEmpty!40314 (++!16273 (t!384116 s1!1971) s2!1849)))))

(declare-fun e!4334601 () Bool)

(assert (=> d!2245464 (= (matchZipper!3396 (set.insert (Context!14853 (++!16272 (exprs!7926 lt!2573006) (exprs!7926 ct2!328))) (as set.empty (Set Context!14852))) (++!16273 (t!384116 s1!1971) s2!1849)) e!4334601)))

(declare-fun b!7230630 () Bool)

(assert (=> b!7230630 (= e!4334601 (nullableZipper!2803 (set.insert (Context!14853 (++!16272 (exprs!7926 lt!2573006) (exprs!7926 ct2!328))) (as set.empty (Set Context!14852)))))))

(declare-fun b!7230631 () Bool)

(assert (=> b!7230631 (= e!4334601 (matchZipper!3396 (derivationStepZipper!3278 (set.insert (Context!14853 (++!16272 (exprs!7926 lt!2573006) (exprs!7926 ct2!328))) (as set.empty (Set Context!14852))) (head!14789 (++!16273 (t!384116 s1!1971) s2!1849))) (tail!14104 (++!16273 (t!384116 s1!1971) s2!1849))))))

(assert (= (and d!2245464 c!1341418) b!7230630))

(assert (= (and d!2245464 (not c!1341418)) b!7230631))

(assert (=> d!2245464 m!7898804))

(declare-fun m!7899018 () Bool)

(assert (=> d!2245464 m!7899018))

(assert (=> b!7230630 m!7898802))

(declare-fun m!7899020 () Bool)

(assert (=> b!7230630 m!7899020))

(assert (=> b!7230631 m!7898804))

(declare-fun m!7899022 () Bool)

(assert (=> b!7230631 m!7899022))

(assert (=> b!7230631 m!7898802))

(assert (=> b!7230631 m!7899022))

(declare-fun m!7899024 () Bool)

(assert (=> b!7230631 m!7899024))

(assert (=> b!7230631 m!7898804))

(declare-fun m!7899026 () Bool)

(assert (=> b!7230631 m!7899026))

(assert (=> b!7230631 m!7899024))

(assert (=> b!7230631 m!7899026))

(declare-fun m!7899028 () Bool)

(assert (=> b!7230631 m!7899028))

(assert (=> b!7230524 d!2245464))

(declare-fun d!2245466 () Bool)

(declare-fun c!1341419 () Bool)

(assert (=> d!2245466 (= c!1341419 (isEmpty!40314 s1!1971))))

(declare-fun e!4334602 () Bool)

(assert (=> d!2245466 (= (matchZipper!3396 lt!2573000 s1!1971) e!4334602)))

(declare-fun b!7230632 () Bool)

(assert (=> b!7230632 (= e!4334602 (nullableZipper!2803 lt!2573000))))

(declare-fun b!7230633 () Bool)

(assert (=> b!7230633 (= e!4334602 (matchZipper!3396 (derivationStepZipper!3278 lt!2573000 (head!14789 s1!1971)) (tail!14104 s1!1971)))))

(assert (= (and d!2245466 c!1341419) b!7230632))

(assert (= (and d!2245466 (not c!1341419)) b!7230633))

(declare-fun m!7899030 () Bool)

(assert (=> d!2245466 m!7899030))

(declare-fun m!7899032 () Bool)

(assert (=> b!7230632 m!7899032))

(declare-fun m!7899034 () Bool)

(assert (=> b!7230633 m!7899034))

(assert (=> b!7230633 m!7899034))

(declare-fun m!7899036 () Bool)

(assert (=> b!7230633 m!7899036))

(declare-fun m!7899038 () Bool)

(assert (=> b!7230633 m!7899038))

(assert (=> b!7230633 m!7899036))

(assert (=> b!7230633 m!7899038))

(declare-fun m!7899040 () Bool)

(assert (=> b!7230633 m!7899040))

(assert (=> start!701370 d!2245466))

(declare-fun bs!1902417 () Bool)

(declare-fun d!2245468 () Bool)

(assert (= bs!1902417 (and d!2245468 b!7230523)))

(declare-fun lambda!439156 () Int)

(assert (=> bs!1902417 (= lambda!439156 lambda!439126)))

(declare-fun bs!1902418 () Bool)

(assert (= bs!1902418 (and d!2245468 d!2245460)))

(assert (=> bs!1902418 (= lambda!439156 lambda!439153)))

(assert (=> d!2245468 (= (inv!89226 ct1!232) (forall!17306 (exprs!7926 ct1!232) lambda!439156))))

(declare-fun bs!1902419 () Bool)

(assert (= bs!1902419 d!2245468))

(declare-fun m!7899054 () Bool)

(assert (=> bs!1902419 m!7899054))

(assert (=> start!701370 d!2245468))

(declare-fun bs!1902420 () Bool)

(declare-fun d!2245472 () Bool)

(assert (= bs!1902420 (and d!2245472 b!7230523)))

(declare-fun lambda!439157 () Int)

(assert (=> bs!1902420 (= lambda!439157 lambda!439126)))

(declare-fun bs!1902421 () Bool)

(assert (= bs!1902421 (and d!2245472 d!2245460)))

(assert (=> bs!1902421 (= lambda!439157 lambda!439153)))

(declare-fun bs!1902422 () Bool)

(assert (= bs!1902422 (and d!2245472 d!2245468)))

(assert (=> bs!1902422 (= lambda!439157 lambda!439156)))

(assert (=> d!2245472 (= (inv!89226 ct2!328) (forall!17306 (exprs!7926 ct2!328) lambda!439157))))

(declare-fun bs!1902423 () Bool)

(assert (= bs!1902423 d!2245472))

(declare-fun m!7899056 () Bool)

(assert (=> bs!1902423 m!7899056))

(assert (=> start!701370 d!2245472))

(declare-fun b!7230640 () Bool)

(declare-fun e!4334606 () Bool)

(declare-fun tp!2033707 () Bool)

(assert (=> b!7230640 (= e!4334606 (and tp_is_empty!46437 tp!2033707))))

(assert (=> b!7230525 (= tp!2033690 e!4334606)))

(assert (= (and b!7230525 (is-Cons!69943 (t!384116 s1!1971))) b!7230640))

(declare-fun b!7230645 () Bool)

(declare-fun e!4334609 () Bool)

(declare-fun tp!2033712 () Bool)

(declare-fun tp!2033713 () Bool)

(assert (=> b!7230645 (= e!4334609 (and tp!2033712 tp!2033713))))

(assert (=> b!7230527 (= tp!2033691 e!4334609)))

(assert (= (and b!7230527 (is-Cons!69942 (exprs!7926 ct2!328))) b!7230645))

(declare-fun b!7230646 () Bool)

(declare-fun e!4334610 () Bool)

(declare-fun tp!2033714 () Bool)

(declare-fun tp!2033715 () Bool)

(assert (=> b!7230646 (= e!4334610 (and tp!2033714 tp!2033715))))

(assert (=> b!7230528 (= tp!2033689 e!4334610)))

(assert (= (and b!7230528 (is-Cons!69942 (exprs!7926 ct1!232))) b!7230646))

(declare-fun b!7230647 () Bool)

(declare-fun e!4334611 () Bool)

(declare-fun tp!2033716 () Bool)

(assert (=> b!7230647 (= e!4334611 (and tp_is_empty!46437 tp!2033716))))

(assert (=> b!7230529 (= tp!2033692 e!4334611)))

(assert (= (and b!7230529 (is-Cons!69943 (t!384116 s2!1849))) b!7230647))

(declare-fun b_lambda!277023 () Bool)

(assert (= b_lambda!277021 (or b!7230530 b_lambda!277023)))

(declare-fun bs!1902424 () Bool)

(declare-fun d!2245474 () Bool)

(assert (= bs!1902424 (and d!2245474 b!7230530)))

(assert (=> bs!1902424 (= (dynLambda!28501 lambda!439127 lt!2573058) (matchZipper!3396 (set.insert lt!2573058 (as set.empty (Set Context!14852))) (t!384116 s1!1971)))))

(declare-fun m!7899058 () Bool)

(assert (=> bs!1902424 m!7899058))

(assert (=> bs!1902424 m!7899058))

(declare-fun m!7899060 () Bool)

(assert (=> bs!1902424 m!7899060))

(assert (=> d!2245456 d!2245474))

(declare-fun b_lambda!277025 () Bool)

(assert (= b_lambda!277019 (or b!7230523 b_lambda!277025)))

(declare-fun bs!1902425 () Bool)

(declare-fun d!2245476 () Bool)

(assert (= bs!1902425 (and d!2245476 b!7230523)))

(declare-fun validRegex!9505 (Regex!18486) Bool)

(assert (=> bs!1902425 (= (dynLambda!28500 lambda!439126 (h!76390 (exprs!7926 lt!2573006))) (validRegex!9505 (h!76390 (exprs!7926 lt!2573006))))))

(declare-fun m!7899062 () Bool)

(assert (=> bs!1902425 m!7899062))

(assert (=> b!7230605 d!2245476))

(push 1)

(assert (not b!7230566))

(assert (not d!2245456))

(assert tp_is_empty!46437)

(assert (not b!7230633))

(assert (not b!7230631))

(assert (not b!7230646))

(assert (not d!2245436))

(assert (not d!2245468))

(assert (not d!2245466))

(assert (not b!7230576))

(assert (not b_lambda!277025))

(assert (not b!7230621))

(assert (not d!2245464))

(assert (not b!7230572))

(assert (not d!2245430))

(assert (not b!7230590))

(assert (not b!7230575))

(assert (not b!7230645))

(assert (not b!7230586))

(assert (not d!2245434))

(assert (not d!2245472))

(assert (not d!2245442))

(assert (not b!7230571))

(assert (not b!7230591))

(assert (not b!7230606))

(assert (not b!7230587))

(assert (not b!7230630))

(assert (not d!2245460))

(assert (not b!7230620))

(assert (not b!7230647))

(assert (not d!2245428))

(assert (not d!2245432))

(assert (not d!2245458))

(assert (not d!2245446))

(assert (not d!2245438))

(assert (not b!7230632))

(assert (not b_lambda!277023))

(assert (not b!7230640))

(assert (not d!2245448))

(assert (not bs!1902425))

(assert (not d!2245452))

(assert (not d!2245440))

(assert (not bs!1902424))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

