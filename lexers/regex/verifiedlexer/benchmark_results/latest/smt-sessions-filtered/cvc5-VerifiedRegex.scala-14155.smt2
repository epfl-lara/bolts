; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743172 () Bool)

(assert start!743172)

(declare-fun b!7849725 () Bool)

(declare-fun e!4640293 () Bool)

(declare-fun tp!2324528 () Bool)

(declare-fun tp!2324527 () Bool)

(assert (=> b!7849725 (= e!4640293 (and tp!2324528 tp!2324527))))

(declare-fun b!7849726 () Bool)

(declare-fun res!3121627 () Bool)

(declare-fun e!4640295 () Bool)

(assert (=> b!7849726 (=> (not res!3121627) (not e!4640295))))

(declare-datatypes ((C!42490 0))(
  ( (C!42491 (val!31707 Int)) )
))
(declare-datatypes ((Regex!21082 0))(
  ( (ElementMatch!21082 (c!1442756 C!42490)) (Concat!29927 (regOne!42676 Regex!21082) (regTwo!42676 Regex!21082)) (EmptyExpr!21082) (Star!21082 (reg!21411 Regex!21082)) (EmptyLang!21082) (Union!21082 (regOne!42677 Regex!21082) (regTwo!42677 Regex!21082)) )
))
(declare-fun r1!6227 () Regex!21082)

(declare-datatypes ((List!73941 0))(
  ( (Nil!73817) (Cons!73817 (h!80265 C!42490) (t!388676 List!73941)) )
))
(declare-fun s1!4084 () List!73941)

(declare-fun matchR!10518 (Regex!21082 List!73941) Bool)

(assert (=> b!7849726 (= res!3121627 (matchR!10518 r1!6227 s1!4084))))

(declare-fun b!7849727 () Bool)

(declare-fun res!3121629 () Bool)

(assert (=> b!7849727 (=> (not res!3121629) (not e!4640295))))

(declare-fun r2!6165 () Regex!21082)

(declare-fun s2!3706 () List!73941)

(assert (=> b!7849727 (= res!3121629 (matchR!10518 r2!6165 s2!3706))))

(declare-fun b!7849728 () Bool)

(declare-fun res!3121630 () Bool)

(assert (=> b!7849728 (=> (not res!3121630) (not e!4640295))))

(assert (=> b!7849728 (= res!3121630 (is-Cons!73817 s1!4084))))

(declare-fun e!4640290 () Bool)

(declare-fun lt!2679586 () Regex!21082)

(declare-fun b!7849729 () Bool)

(declare-fun derivativeStep!6317 (Regex!21082 C!42490) Regex!21082)

(assert (=> b!7849729 (= e!4640290 (= (derivativeStep!6317 (Concat!29927 r1!6227 r2!6165) (h!80265 s1!4084)) (Union!21082 lt!2679586 EmptyLang!21082)))))

(declare-fun b!7849730 () Bool)

(declare-fun e!4640292 () Bool)

(declare-fun tp_is_empty!52563 () Bool)

(declare-fun tp!2324520 () Bool)

(assert (=> b!7849730 (= e!4640292 (and tp_is_empty!52563 tp!2324520))))

(declare-fun b!7849731 () Bool)

(assert (=> b!7849731 (= e!4640293 tp_is_empty!52563)))

(declare-fun b!7849732 () Bool)

(assert (=> b!7849732 (= e!4640295 (not e!4640290))))

(declare-fun res!3121631 () Bool)

(assert (=> b!7849732 (=> res!3121631 e!4640290)))

(declare-fun nullable!9354 (Regex!21082) Bool)

(assert (=> b!7849732 (= res!3121631 (nullable!9354 r1!6227))))

(declare-fun ++!18090 (List!73941 List!73941) List!73941)

(assert (=> b!7849732 (matchR!10518 lt!2679586 (++!18090 (t!388676 s1!4084) s2!3706))))

(declare-fun lt!2679584 () Regex!21082)

(assert (=> b!7849732 (= lt!2679586 (Concat!29927 lt!2679584 r2!6165))))

(declare-datatypes ((Unit!168906 0))(
  ( (Unit!168907) )
))
(declare-fun lt!2679585 () Unit!168906)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!449 (Regex!21082 Regex!21082 List!73941 List!73941) Unit!168906)

(assert (=> b!7849732 (= lt!2679585 (lemmaTwoRegexMatchThenConcatMatchesConcatString!449 lt!2679584 r2!6165 (t!388676 s1!4084) s2!3706))))

(assert (=> b!7849732 (= lt!2679584 (derivativeStep!6317 r1!6227 (h!80265 s1!4084)))))

(declare-fun b!7849733 () Bool)

(declare-fun e!4640294 () Bool)

(declare-fun tp!2324526 () Bool)

(assert (=> b!7849733 (= e!4640294 tp!2324526)))

(declare-fun b!7849734 () Bool)

(declare-fun tp!2324525 () Bool)

(declare-fun tp!2324522 () Bool)

(assert (=> b!7849734 (= e!4640293 (and tp!2324525 tp!2324522))))

(declare-fun b!7849736 () Bool)

(declare-fun e!4640291 () Bool)

(declare-fun tp!2324521 () Bool)

(assert (=> b!7849736 (= e!4640291 (and tp_is_empty!52563 tp!2324521))))

(declare-fun b!7849737 () Bool)

(declare-fun tp!2324523 () Bool)

(declare-fun tp!2324517 () Bool)

(assert (=> b!7849737 (= e!4640294 (and tp!2324523 tp!2324517))))

(declare-fun b!7849738 () Bool)

(declare-fun tp!2324524 () Bool)

(declare-fun tp!2324518 () Bool)

(assert (=> b!7849738 (= e!4640294 (and tp!2324524 tp!2324518))))

(declare-fun b!7849739 () Bool)

(assert (=> b!7849739 (= e!4640294 tp_is_empty!52563)))

(declare-fun b!7849740 () Bool)

(declare-fun tp!2324519 () Bool)

(assert (=> b!7849740 (= e!4640293 tp!2324519)))

(declare-fun b!7849735 () Bool)

(declare-fun res!3121632 () Bool)

(assert (=> b!7849735 (=> (not res!3121632) (not e!4640295))))

(declare-fun validRegex!11492 (Regex!21082) Bool)

(assert (=> b!7849735 (= res!3121632 (validRegex!11492 r2!6165))))

(declare-fun res!3121628 () Bool)

(assert (=> start!743172 (=> (not res!3121628) (not e!4640295))))

(assert (=> start!743172 (= res!3121628 (validRegex!11492 r1!6227))))

(assert (=> start!743172 e!4640295))

(assert (=> start!743172 e!4640294))

(assert (=> start!743172 e!4640293))

(assert (=> start!743172 e!4640292))

(assert (=> start!743172 e!4640291))

(assert (= (and start!743172 res!3121628) b!7849735))

(assert (= (and b!7849735 res!3121632) b!7849726))

(assert (= (and b!7849726 res!3121627) b!7849727))

(assert (= (and b!7849727 res!3121629) b!7849728))

(assert (= (and b!7849728 res!3121630) b!7849732))

(assert (= (and b!7849732 (not res!3121631)) b!7849729))

(assert (= (and start!743172 (is-ElementMatch!21082 r1!6227)) b!7849739))

(assert (= (and start!743172 (is-Concat!29927 r1!6227)) b!7849738))

(assert (= (and start!743172 (is-Star!21082 r1!6227)) b!7849733))

(assert (= (and start!743172 (is-Union!21082 r1!6227)) b!7849737))

(assert (= (and start!743172 (is-ElementMatch!21082 r2!6165)) b!7849731))

(assert (= (and start!743172 (is-Concat!29927 r2!6165)) b!7849734))

(assert (= (and start!743172 (is-Star!21082 r2!6165)) b!7849740))

(assert (= (and start!743172 (is-Union!21082 r2!6165)) b!7849725))

(assert (= (and start!743172 (is-Cons!73817 s1!4084)) b!7849730))

(assert (= (and start!743172 (is-Cons!73817 s2!3706)) b!7849736))

(declare-fun m!8257628 () Bool)

(assert (=> b!7849727 m!8257628))

(declare-fun m!8257630 () Bool)

(assert (=> b!7849735 m!8257630))

(declare-fun m!8257632 () Bool)

(assert (=> b!7849732 m!8257632))

(declare-fun m!8257634 () Bool)

(assert (=> b!7849732 m!8257634))

(declare-fun m!8257636 () Bool)

(assert (=> b!7849732 m!8257636))

(declare-fun m!8257638 () Bool)

(assert (=> b!7849732 m!8257638))

(assert (=> b!7849732 m!8257636))

(declare-fun m!8257640 () Bool)

(assert (=> b!7849732 m!8257640))

(declare-fun m!8257642 () Bool)

(assert (=> b!7849729 m!8257642))

(declare-fun m!8257644 () Bool)

(assert (=> b!7849726 m!8257644))

(declare-fun m!8257646 () Bool)

(assert (=> start!743172 m!8257646))

(push 1)

(assert (not b!7849732))

(assert (not b!7849740))

(assert (not b!7849736))

(assert (not b!7849734))

(assert (not b!7849730))

(assert (not b!7849733))

(assert (not b!7849725))

(assert tp_is_empty!52563)

(assert (not start!743172))

(assert (not b!7849737))

(assert (not b!7849727))

(assert (not b!7849735))

(assert (not b!7849729))

(assert (not b!7849738))

(assert (not b!7849726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7849836 () Bool)

(declare-fun e!4640346 () Regex!21082)

(declare-fun e!4640347 () Regex!21082)

(assert (=> b!7849836 (= e!4640346 e!4640347)))

(declare-fun c!1442777 () Bool)

(assert (=> b!7849836 (= c!1442777 (is-Star!21082 (Concat!29927 r1!6227 r2!6165)))))

(declare-fun d!2353100 () Bool)

(declare-fun lt!2679598 () Regex!21082)

(assert (=> d!2353100 (validRegex!11492 lt!2679598)))

(declare-fun e!4640345 () Regex!21082)

(assert (=> d!2353100 (= lt!2679598 e!4640345)))

(declare-fun c!1442776 () Bool)

(assert (=> d!2353100 (= c!1442776 (or (is-EmptyExpr!21082 (Concat!29927 r1!6227 r2!6165)) (is-EmptyLang!21082 (Concat!29927 r1!6227 r2!6165))))))

(assert (=> d!2353100 (validRegex!11492 (Concat!29927 r1!6227 r2!6165))))

(assert (=> d!2353100 (= (derivativeStep!6317 (Concat!29927 r1!6227 r2!6165) (h!80265 s1!4084)) lt!2679598)))

(declare-fun e!4640349 () Regex!21082)

(declare-fun b!7849837 () Bool)

(assert (=> b!7849837 (= e!4640349 (ite (= (h!80265 s1!4084) (c!1442756 (Concat!29927 r1!6227 r2!6165))) EmptyExpr!21082 EmptyLang!21082))))

(declare-fun b!7849838 () Bool)

(assert (=> b!7849838 (= e!4640345 EmptyLang!21082)))

(declare-fun b!7849839 () Bool)

(declare-fun c!1442775 () Bool)

(assert (=> b!7849839 (= c!1442775 (is-Union!21082 (Concat!29927 r1!6227 r2!6165)))))

(assert (=> b!7849839 (= e!4640349 e!4640346)))

(declare-fun b!7849840 () Bool)

(declare-fun c!1442774 () Bool)

(assert (=> b!7849840 (= c!1442774 (nullable!9354 (regOne!42676 (Concat!29927 r1!6227 r2!6165))))))

(declare-fun e!4640348 () Regex!21082)

(assert (=> b!7849840 (= e!4640347 e!4640348)))

(declare-fun bm!727447 () Bool)

(declare-fun call!727452 () Regex!21082)

(declare-fun call!727454 () Regex!21082)

(assert (=> bm!727447 (= call!727452 call!727454)))

(declare-fun b!7849841 () Bool)

(declare-fun call!727455 () Regex!21082)

(assert (=> b!7849841 (= e!4640348 (Union!21082 (Concat!29927 call!727452 (regTwo!42676 (Concat!29927 r1!6227 r2!6165))) call!727455))))

(declare-fun b!7849842 () Bool)

(assert (=> b!7849842 (= e!4640345 e!4640349)))

(declare-fun c!1442778 () Bool)

(assert (=> b!7849842 (= c!1442778 (is-ElementMatch!21082 (Concat!29927 r1!6227 r2!6165)))))

(declare-fun bm!727448 () Bool)

(assert (=> bm!727448 (= call!727454 (derivativeStep!6317 (ite c!1442775 (regTwo!42677 (Concat!29927 r1!6227 r2!6165)) (ite c!1442777 (reg!21411 (Concat!29927 r1!6227 r2!6165)) (regOne!42676 (Concat!29927 r1!6227 r2!6165)))) (h!80265 s1!4084)))))

(declare-fun b!7849843 () Bool)

(declare-fun call!727453 () Regex!21082)

(assert (=> b!7849843 (= e!4640346 (Union!21082 call!727453 call!727454))))

(declare-fun b!7849844 () Bool)

(assert (=> b!7849844 (= e!4640347 (Concat!29927 call!727452 (Concat!29927 r1!6227 r2!6165)))))

(declare-fun bm!727449 () Bool)

(assert (=> bm!727449 (= call!727453 (derivativeStep!6317 (ite c!1442775 (regOne!42677 (Concat!29927 r1!6227 r2!6165)) (ite c!1442774 (regTwo!42676 (Concat!29927 r1!6227 r2!6165)) (regOne!42676 (Concat!29927 r1!6227 r2!6165)))) (h!80265 s1!4084)))))

(declare-fun b!7849845 () Bool)

(assert (=> b!7849845 (= e!4640348 (Union!21082 (Concat!29927 call!727455 (regTwo!42676 (Concat!29927 r1!6227 r2!6165))) EmptyLang!21082))))

(declare-fun bm!727450 () Bool)

(assert (=> bm!727450 (= call!727455 call!727453)))

(assert (= (and d!2353100 c!1442776) b!7849838))

(assert (= (and d!2353100 (not c!1442776)) b!7849842))

(assert (= (and b!7849842 c!1442778) b!7849837))

(assert (= (and b!7849842 (not c!1442778)) b!7849839))

(assert (= (and b!7849839 c!1442775) b!7849843))

(assert (= (and b!7849839 (not c!1442775)) b!7849836))

(assert (= (and b!7849836 c!1442777) b!7849844))

(assert (= (and b!7849836 (not c!1442777)) b!7849840))

(assert (= (and b!7849840 c!1442774) b!7849841))

(assert (= (and b!7849840 (not c!1442774)) b!7849845))

(assert (= (or b!7849841 b!7849845) bm!727450))

(assert (= (or b!7849844 b!7849841) bm!727447))

(assert (= (or b!7849843 bm!727447) bm!727448))

(assert (= (or b!7849843 bm!727450) bm!727449))

(declare-fun m!8257674 () Bool)

(assert (=> d!2353100 m!8257674))

(declare-fun m!8257676 () Bool)

(assert (=> d!2353100 m!8257676))

(declare-fun m!8257678 () Bool)

(assert (=> b!7849840 m!8257678))

(declare-fun m!8257680 () Bool)

(assert (=> bm!727448 m!8257680))

(declare-fun m!8257682 () Bool)

(assert (=> bm!727449 m!8257682))

(assert (=> b!7849729 d!2353100))

(declare-fun b!7849867 () Bool)

(declare-fun e!4640367 () Bool)

(declare-fun e!4640369 () Bool)

(assert (=> b!7849867 (= e!4640367 e!4640369)))

(declare-fun res!3121681 () Bool)

(assert (=> b!7849867 (= res!3121681 (not (nullable!9354 (reg!21411 r2!6165))))))

(assert (=> b!7849867 (=> (not res!3121681) (not e!4640369))))

(declare-fun b!7849868 () Bool)

(declare-fun e!4640368 () Bool)

(declare-fun e!4640373 () Bool)

(assert (=> b!7849868 (= e!4640368 e!4640373)))

(declare-fun res!3121683 () Bool)

(assert (=> b!7849868 (=> (not res!3121683) (not e!4640373))))

(declare-fun call!727464 () Bool)

(assert (=> b!7849868 (= res!3121683 call!727464)))

(declare-fun b!7849869 () Bool)

(declare-fun e!4640370 () Bool)

(assert (=> b!7849869 (= e!4640370 e!4640367)))

(declare-fun c!1442783 () Bool)

(assert (=> b!7849869 (= c!1442783 (is-Star!21082 r2!6165))))

(declare-fun b!7849870 () Bool)

(declare-fun res!3121682 () Bool)

(declare-fun e!4640371 () Bool)

(assert (=> b!7849870 (=> (not res!3121682) (not e!4640371))))

(declare-fun call!727462 () Bool)

(assert (=> b!7849870 (= res!3121682 call!727462)))

(declare-fun e!4640372 () Bool)

(assert (=> b!7849870 (= e!4640372 e!4640371)))

(declare-fun d!2353106 () Bool)

(declare-fun res!3121679 () Bool)

(assert (=> d!2353106 (=> res!3121679 e!4640370)))

(assert (=> d!2353106 (= res!3121679 (is-ElementMatch!21082 r2!6165))))

(assert (=> d!2353106 (= (validRegex!11492 r2!6165) e!4640370)))

(declare-fun b!7849871 () Bool)

(assert (=> b!7849871 (= e!4640367 e!4640372)))

(declare-fun c!1442784 () Bool)

(assert (=> b!7849871 (= c!1442784 (is-Union!21082 r2!6165))))

(declare-fun b!7849872 () Bool)

(assert (=> b!7849872 (= e!4640373 call!727462)))

(declare-fun call!727463 () Bool)

(declare-fun bm!727457 () Bool)

(assert (=> bm!727457 (= call!727463 (validRegex!11492 (ite c!1442783 (reg!21411 r2!6165) (ite c!1442784 (regTwo!42677 r2!6165) (regOne!42676 r2!6165)))))))

(declare-fun b!7849873 () Bool)

(assert (=> b!7849873 (= e!4640369 call!727463)))

(declare-fun b!7849874 () Bool)

(declare-fun res!3121680 () Bool)

(assert (=> b!7849874 (=> res!3121680 e!4640368)))

(assert (=> b!7849874 (= res!3121680 (not (is-Concat!29927 r2!6165)))))

(assert (=> b!7849874 (= e!4640372 e!4640368)))

(declare-fun bm!727458 () Bool)

(assert (=> bm!727458 (= call!727464 call!727463)))

(declare-fun bm!727459 () Bool)

(assert (=> bm!727459 (= call!727462 (validRegex!11492 (ite c!1442784 (regOne!42677 r2!6165) (regTwo!42676 r2!6165))))))

(declare-fun b!7849875 () Bool)

(assert (=> b!7849875 (= e!4640371 call!727464)))

(assert (= (and d!2353106 (not res!3121679)) b!7849869))

(assert (= (and b!7849869 c!1442783) b!7849867))

(assert (= (and b!7849869 (not c!1442783)) b!7849871))

(assert (= (and b!7849867 res!3121681) b!7849873))

(assert (= (and b!7849871 c!1442784) b!7849870))

(assert (= (and b!7849871 (not c!1442784)) b!7849874))

(assert (= (and b!7849870 res!3121682) b!7849875))

(assert (= (and b!7849874 (not res!3121680)) b!7849868))

(assert (= (and b!7849868 res!3121683) b!7849872))

(assert (= (or b!7849870 b!7849872) bm!727459))

(assert (= (or b!7849875 b!7849868) bm!727458))

(assert (= (or b!7849873 bm!727458) bm!727457))

(declare-fun m!8257690 () Bool)

(assert (=> b!7849867 m!8257690))

(declare-fun m!8257692 () Bool)

(assert (=> bm!727457 m!8257692))

(declare-fun m!8257694 () Bool)

(assert (=> bm!727459 m!8257694))

(assert (=> b!7849735 d!2353106))

(declare-fun b!7849946 () Bool)

(declare-fun e!4640413 () Bool)

(declare-fun lt!2679607 () Bool)

(declare-fun call!727470 () Bool)

(assert (=> b!7849946 (= e!4640413 (= lt!2679607 call!727470))))

(declare-fun b!7849947 () Bool)

(declare-fun res!3121729 () Bool)

(declare-fun e!4640409 () Bool)

(assert (=> b!7849947 (=> res!3121729 e!4640409)))

(assert (=> b!7849947 (= res!3121729 (not (is-ElementMatch!21082 r1!6227)))))

(declare-fun e!4640410 () Bool)

(assert (=> b!7849947 (= e!4640410 e!4640409)))

(declare-fun b!7849948 () Bool)

(declare-fun e!4640415 () Bool)

(declare-fun head!16039 (List!73941) C!42490)

(assert (=> b!7849948 (= e!4640415 (not (= (head!16039 s1!4084) (c!1442756 r1!6227))))))

(declare-fun b!7849949 () Bool)

(declare-fun e!4640412 () Bool)

(assert (=> b!7849949 (= e!4640412 e!4640415)))

(declare-fun res!3121728 () Bool)

(assert (=> b!7849949 (=> res!3121728 e!4640415)))

(assert (=> b!7849949 (= res!3121728 call!727470)))

(declare-fun d!2353110 () Bool)

(assert (=> d!2353110 e!4640413))

(declare-fun c!1442800 () Bool)

(assert (=> d!2353110 (= c!1442800 (is-EmptyExpr!21082 r1!6227))))

(declare-fun e!4640411 () Bool)

(assert (=> d!2353110 (= lt!2679607 e!4640411)))

(declare-fun c!1442801 () Bool)

(declare-fun isEmpty!42328 (List!73941) Bool)

(assert (=> d!2353110 (= c!1442801 (isEmpty!42328 s1!4084))))

(assert (=> d!2353110 (validRegex!11492 r1!6227)))

(assert (=> d!2353110 (= (matchR!10518 r1!6227 s1!4084) lt!2679607)))

(declare-fun b!7849950 () Bool)

(assert (=> b!7849950 (= e!4640411 (nullable!9354 r1!6227))))

(declare-fun b!7849951 () Bool)

(assert (=> b!7849951 (= e!4640413 e!4640410)))

(declare-fun c!1442802 () Bool)

(assert (=> b!7849951 (= c!1442802 (is-EmptyLang!21082 r1!6227))))

(declare-fun b!7849952 () Bool)

(declare-fun res!3121725 () Bool)

(assert (=> b!7849952 (=> res!3121725 e!4640409)))

(declare-fun e!4640414 () Bool)

(assert (=> b!7849952 (= res!3121725 e!4640414)))

(declare-fun res!3121731 () Bool)

(assert (=> b!7849952 (=> (not res!3121731) (not e!4640414))))

(assert (=> b!7849952 (= res!3121731 lt!2679607)))

(declare-fun b!7849953 () Bool)

(declare-fun tail!15582 (List!73941) List!73941)

(assert (=> b!7849953 (= e!4640411 (matchR!10518 (derivativeStep!6317 r1!6227 (head!16039 s1!4084)) (tail!15582 s1!4084)))))

(declare-fun b!7849954 () Bool)

(assert (=> b!7849954 (= e!4640409 e!4640412)))

(declare-fun res!3121724 () Bool)

(assert (=> b!7849954 (=> (not res!3121724) (not e!4640412))))

(assert (=> b!7849954 (= res!3121724 (not lt!2679607))))

(declare-fun b!7849955 () Bool)

(declare-fun res!3121727 () Bool)

(assert (=> b!7849955 (=> (not res!3121727) (not e!4640414))))

(assert (=> b!7849955 (= res!3121727 (not call!727470))))

(declare-fun b!7849956 () Bool)

(assert (=> b!7849956 (= e!4640414 (= (head!16039 s1!4084) (c!1442756 r1!6227)))))

(declare-fun b!7849957 () Bool)

(declare-fun res!3121730 () Bool)

(assert (=> b!7849957 (=> res!3121730 e!4640415)))

(assert (=> b!7849957 (= res!3121730 (not (isEmpty!42328 (tail!15582 s1!4084))))))

(declare-fun bm!727465 () Bool)

(assert (=> bm!727465 (= call!727470 (isEmpty!42328 s1!4084))))

(declare-fun b!7849958 () Bool)

(declare-fun res!3121726 () Bool)

(assert (=> b!7849958 (=> (not res!3121726) (not e!4640414))))

(assert (=> b!7849958 (= res!3121726 (isEmpty!42328 (tail!15582 s1!4084)))))

(declare-fun b!7849959 () Bool)

(assert (=> b!7849959 (= e!4640410 (not lt!2679607))))

(assert (= (and d!2353110 c!1442801) b!7849950))

(assert (= (and d!2353110 (not c!1442801)) b!7849953))

(assert (= (and d!2353110 c!1442800) b!7849946))

(assert (= (and d!2353110 (not c!1442800)) b!7849951))

(assert (= (and b!7849951 c!1442802) b!7849959))

(assert (= (and b!7849951 (not c!1442802)) b!7849947))

(assert (= (and b!7849947 (not res!3121729)) b!7849952))

(assert (= (and b!7849952 res!3121731) b!7849955))

(assert (= (and b!7849955 res!3121727) b!7849958))

(assert (= (and b!7849958 res!3121726) b!7849956))

(assert (= (and b!7849952 (not res!3121725)) b!7849954))

(assert (= (and b!7849954 res!3121724) b!7849949))

(assert (= (and b!7849949 (not res!3121728)) b!7849957))

(assert (= (and b!7849957 (not res!3121730)) b!7849948))

(assert (= (or b!7849946 b!7849949 b!7849955) bm!727465))

(declare-fun m!8257714 () Bool)

(assert (=> b!7849953 m!8257714))

(assert (=> b!7849953 m!8257714))

(declare-fun m!8257716 () Bool)

(assert (=> b!7849953 m!8257716))

(declare-fun m!8257718 () Bool)

(assert (=> b!7849953 m!8257718))

(assert (=> b!7849953 m!8257716))

(assert (=> b!7849953 m!8257718))

(declare-fun m!8257720 () Bool)

(assert (=> b!7849953 m!8257720))

(assert (=> b!7849948 m!8257714))

(assert (=> b!7849957 m!8257718))

(assert (=> b!7849957 m!8257718))

(declare-fun m!8257722 () Bool)

(assert (=> b!7849957 m!8257722))

(assert (=> b!7849958 m!8257718))

(assert (=> b!7849958 m!8257718))

(assert (=> b!7849958 m!8257722))

(assert (=> b!7849956 m!8257714))

(assert (=> b!7849950 m!8257634))

(declare-fun m!8257724 () Bool)

(assert (=> d!2353110 m!8257724))

(assert (=> d!2353110 m!8257646))

(assert (=> bm!727465 m!8257724))

(assert (=> b!7849726 d!2353110))

(declare-fun b!7849960 () Bool)

(declare-fun e!4640416 () Bool)

(declare-fun e!4640418 () Bool)

(assert (=> b!7849960 (= e!4640416 e!4640418)))

(declare-fun res!3121734 () Bool)

(assert (=> b!7849960 (= res!3121734 (not (nullable!9354 (reg!21411 r1!6227))))))

(assert (=> b!7849960 (=> (not res!3121734) (not e!4640418))))

(declare-fun b!7849961 () Bool)

(declare-fun e!4640417 () Bool)

(declare-fun e!4640422 () Bool)

(assert (=> b!7849961 (= e!4640417 e!4640422)))

(declare-fun res!3121736 () Bool)

(assert (=> b!7849961 (=> (not res!3121736) (not e!4640422))))

(declare-fun call!727473 () Bool)

(assert (=> b!7849961 (= res!3121736 call!727473)))

(declare-fun b!7849962 () Bool)

(declare-fun e!4640419 () Bool)

(assert (=> b!7849962 (= e!4640419 e!4640416)))

(declare-fun c!1442803 () Bool)

(assert (=> b!7849962 (= c!1442803 (is-Star!21082 r1!6227))))

(declare-fun b!7849963 () Bool)

(declare-fun res!3121735 () Bool)

(declare-fun e!4640420 () Bool)

(assert (=> b!7849963 (=> (not res!3121735) (not e!4640420))))

(declare-fun call!727471 () Bool)

(assert (=> b!7849963 (= res!3121735 call!727471)))

(declare-fun e!4640421 () Bool)

(assert (=> b!7849963 (= e!4640421 e!4640420)))

(declare-fun d!2353116 () Bool)

(declare-fun res!3121732 () Bool)

(assert (=> d!2353116 (=> res!3121732 e!4640419)))

(assert (=> d!2353116 (= res!3121732 (is-ElementMatch!21082 r1!6227))))

(assert (=> d!2353116 (= (validRegex!11492 r1!6227) e!4640419)))

(declare-fun b!7849964 () Bool)

(assert (=> b!7849964 (= e!4640416 e!4640421)))

(declare-fun c!1442804 () Bool)

(assert (=> b!7849964 (= c!1442804 (is-Union!21082 r1!6227))))

(declare-fun b!7849965 () Bool)

(assert (=> b!7849965 (= e!4640422 call!727471)))

(declare-fun bm!727466 () Bool)

(declare-fun call!727472 () Bool)

(assert (=> bm!727466 (= call!727472 (validRegex!11492 (ite c!1442803 (reg!21411 r1!6227) (ite c!1442804 (regTwo!42677 r1!6227) (regOne!42676 r1!6227)))))))

(declare-fun b!7849966 () Bool)

(assert (=> b!7849966 (= e!4640418 call!727472)))

(declare-fun b!7849967 () Bool)

(declare-fun res!3121733 () Bool)

(assert (=> b!7849967 (=> res!3121733 e!4640417)))

(assert (=> b!7849967 (= res!3121733 (not (is-Concat!29927 r1!6227)))))

(assert (=> b!7849967 (= e!4640421 e!4640417)))

(declare-fun bm!727467 () Bool)

(assert (=> bm!727467 (= call!727473 call!727472)))

(declare-fun bm!727468 () Bool)

(assert (=> bm!727468 (= call!727471 (validRegex!11492 (ite c!1442804 (regOne!42677 r1!6227) (regTwo!42676 r1!6227))))))

(declare-fun b!7849968 () Bool)

(assert (=> b!7849968 (= e!4640420 call!727473)))

(assert (= (and d!2353116 (not res!3121732)) b!7849962))

(assert (= (and b!7849962 c!1442803) b!7849960))

(assert (= (and b!7849962 (not c!1442803)) b!7849964))

(assert (= (and b!7849960 res!3121734) b!7849966))

(assert (= (and b!7849964 c!1442804) b!7849963))

(assert (= (and b!7849964 (not c!1442804)) b!7849967))

(assert (= (and b!7849963 res!3121735) b!7849968))

(assert (= (and b!7849967 (not res!3121733)) b!7849961))

(assert (= (and b!7849961 res!3121736) b!7849965))

(assert (= (or b!7849963 b!7849965) bm!727468))

(assert (= (or b!7849968 b!7849961) bm!727467))

(assert (= (or b!7849966 bm!727467) bm!727466))

(declare-fun m!8257726 () Bool)

(assert (=> b!7849960 m!8257726))

(declare-fun m!8257728 () Bool)

(assert (=> bm!727466 m!8257728))

(declare-fun m!8257730 () Bool)

(assert (=> bm!727468 m!8257730))

(assert (=> start!743172 d!2353116))

(declare-fun d!2353118 () Bool)

(assert (=> d!2353118 (matchR!10518 (Concat!29927 lt!2679584 r2!6165) (++!18090 (t!388676 s1!4084) s2!3706))))

(declare-fun lt!2679612 () Unit!168906)

(declare-fun choose!59650 (Regex!21082 Regex!21082 List!73941 List!73941) Unit!168906)

(assert (=> d!2353118 (= lt!2679612 (choose!59650 lt!2679584 r2!6165 (t!388676 s1!4084) s2!3706))))

(declare-fun e!4640435 () Bool)

(assert (=> d!2353118 e!4640435))

(declare-fun res!3121739 () Bool)

(assert (=> d!2353118 (=> (not res!3121739) (not e!4640435))))

(assert (=> d!2353118 (= res!3121739 (validRegex!11492 lt!2679584))))

(assert (=> d!2353118 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!449 lt!2679584 r2!6165 (t!388676 s1!4084) s2!3706) lt!2679612)))

(declare-fun b!7849991 () Bool)

(assert (=> b!7849991 (= e!4640435 (validRegex!11492 r2!6165))))

(assert (= (and d!2353118 res!3121739) b!7849991))

(assert (=> d!2353118 m!8257636))

(assert (=> d!2353118 m!8257636))

(declare-fun m!8257732 () Bool)

(assert (=> d!2353118 m!8257732))

(declare-fun m!8257734 () Bool)

(assert (=> d!2353118 m!8257734))

(declare-fun m!8257736 () Bool)

(assert (=> d!2353118 m!8257736))

(assert (=> b!7849991 m!8257630))

(assert (=> b!7849732 d!2353118))

(declare-fun b!7849992 () Bool)

(declare-fun e!4640440 () Bool)

(declare-fun lt!2679613 () Bool)

(declare-fun call!727482 () Bool)

(assert (=> b!7849992 (= e!4640440 (= lt!2679613 call!727482))))

(declare-fun b!7849993 () Bool)

(declare-fun res!3121745 () Bool)

(declare-fun e!4640436 () Bool)

(assert (=> b!7849993 (=> res!3121745 e!4640436)))

(assert (=> b!7849993 (= res!3121745 (not (is-ElementMatch!21082 lt!2679586)))))

(declare-fun e!4640437 () Bool)

(assert (=> b!7849993 (= e!4640437 e!4640436)))

(declare-fun e!4640442 () Bool)

(declare-fun b!7849994 () Bool)

(assert (=> b!7849994 (= e!4640442 (not (= (head!16039 (++!18090 (t!388676 s1!4084) s2!3706)) (c!1442756 lt!2679586))))))

(declare-fun b!7849995 () Bool)

(declare-fun e!4640439 () Bool)

(assert (=> b!7849995 (= e!4640439 e!4640442)))

(declare-fun res!3121744 () Bool)

(assert (=> b!7849995 (=> res!3121744 e!4640442)))

(assert (=> b!7849995 (= res!3121744 call!727482)))

(declare-fun d!2353120 () Bool)

(assert (=> d!2353120 e!4640440))

(declare-fun c!1442815 () Bool)

(assert (=> d!2353120 (= c!1442815 (is-EmptyExpr!21082 lt!2679586))))

(declare-fun e!4640438 () Bool)

(assert (=> d!2353120 (= lt!2679613 e!4640438)))

(declare-fun c!1442816 () Bool)

(assert (=> d!2353120 (= c!1442816 (isEmpty!42328 (++!18090 (t!388676 s1!4084) s2!3706)))))

(assert (=> d!2353120 (validRegex!11492 lt!2679586)))

(assert (=> d!2353120 (= (matchR!10518 lt!2679586 (++!18090 (t!388676 s1!4084) s2!3706)) lt!2679613)))

(declare-fun b!7849996 () Bool)

(assert (=> b!7849996 (= e!4640438 (nullable!9354 lt!2679586))))

(declare-fun b!7849997 () Bool)

(assert (=> b!7849997 (= e!4640440 e!4640437)))

(declare-fun c!1442817 () Bool)

(assert (=> b!7849997 (= c!1442817 (is-EmptyLang!21082 lt!2679586))))

(declare-fun b!7849998 () Bool)

(declare-fun res!3121741 () Bool)

(assert (=> b!7849998 (=> res!3121741 e!4640436)))

(declare-fun e!4640441 () Bool)

(assert (=> b!7849998 (= res!3121741 e!4640441)))

(declare-fun res!3121747 () Bool)

(assert (=> b!7849998 (=> (not res!3121747) (not e!4640441))))

(assert (=> b!7849998 (= res!3121747 lt!2679613)))

(declare-fun b!7849999 () Bool)

(assert (=> b!7849999 (= e!4640438 (matchR!10518 (derivativeStep!6317 lt!2679586 (head!16039 (++!18090 (t!388676 s1!4084) s2!3706))) (tail!15582 (++!18090 (t!388676 s1!4084) s2!3706))))))

(declare-fun b!7850000 () Bool)

(assert (=> b!7850000 (= e!4640436 e!4640439)))

(declare-fun res!3121740 () Bool)

(assert (=> b!7850000 (=> (not res!3121740) (not e!4640439))))

(assert (=> b!7850000 (= res!3121740 (not lt!2679613))))

(declare-fun b!7850001 () Bool)

(declare-fun res!3121743 () Bool)

(assert (=> b!7850001 (=> (not res!3121743) (not e!4640441))))

(assert (=> b!7850001 (= res!3121743 (not call!727482))))

(declare-fun b!7850002 () Bool)

(assert (=> b!7850002 (= e!4640441 (= (head!16039 (++!18090 (t!388676 s1!4084) s2!3706)) (c!1442756 lt!2679586)))))

(declare-fun b!7850003 () Bool)

(declare-fun res!3121746 () Bool)

(assert (=> b!7850003 (=> res!3121746 e!4640442)))

(assert (=> b!7850003 (= res!3121746 (not (isEmpty!42328 (tail!15582 (++!18090 (t!388676 s1!4084) s2!3706)))))))

(declare-fun bm!727477 () Bool)

(assert (=> bm!727477 (= call!727482 (isEmpty!42328 (++!18090 (t!388676 s1!4084) s2!3706)))))

(declare-fun b!7850004 () Bool)

(declare-fun res!3121742 () Bool)

(assert (=> b!7850004 (=> (not res!3121742) (not e!4640441))))

(assert (=> b!7850004 (= res!3121742 (isEmpty!42328 (tail!15582 (++!18090 (t!388676 s1!4084) s2!3706))))))

(declare-fun b!7850005 () Bool)

(assert (=> b!7850005 (= e!4640437 (not lt!2679613))))

(assert (= (and d!2353120 c!1442816) b!7849996))

(assert (= (and d!2353120 (not c!1442816)) b!7849999))

(assert (= (and d!2353120 c!1442815) b!7849992))

(assert (= (and d!2353120 (not c!1442815)) b!7849997))

(assert (= (and b!7849997 c!1442817) b!7850005))

(assert (= (and b!7849997 (not c!1442817)) b!7849993))

(assert (= (and b!7849993 (not res!3121745)) b!7849998))

(assert (= (and b!7849998 res!3121747) b!7850001))

(assert (= (and b!7850001 res!3121743) b!7850004))

(assert (= (and b!7850004 res!3121742) b!7850002))

(assert (= (and b!7849998 (not res!3121741)) b!7850000))

(assert (= (and b!7850000 res!3121740) b!7849995))

(assert (= (and b!7849995 (not res!3121744)) b!7850003))

(assert (= (and b!7850003 (not res!3121746)) b!7849994))

(assert (= (or b!7849992 b!7849995 b!7850001) bm!727477))

(assert (=> b!7849999 m!8257636))

(declare-fun m!8257738 () Bool)

(assert (=> b!7849999 m!8257738))

(assert (=> b!7849999 m!8257738))

(declare-fun m!8257740 () Bool)

(assert (=> b!7849999 m!8257740))

(assert (=> b!7849999 m!8257636))

(declare-fun m!8257742 () Bool)

(assert (=> b!7849999 m!8257742))

(assert (=> b!7849999 m!8257740))

(assert (=> b!7849999 m!8257742))

(declare-fun m!8257744 () Bool)

(assert (=> b!7849999 m!8257744))

(assert (=> b!7849994 m!8257636))

(assert (=> b!7849994 m!8257738))

(assert (=> b!7850003 m!8257636))

(assert (=> b!7850003 m!8257742))

(assert (=> b!7850003 m!8257742))

(declare-fun m!8257746 () Bool)

(assert (=> b!7850003 m!8257746))

(assert (=> b!7850004 m!8257636))

(assert (=> b!7850004 m!8257742))

(assert (=> b!7850004 m!8257742))

(assert (=> b!7850004 m!8257746))

(assert (=> b!7850002 m!8257636))

(assert (=> b!7850002 m!8257738))

(declare-fun m!8257748 () Bool)

(assert (=> b!7849996 m!8257748))

(assert (=> d!2353120 m!8257636))

(declare-fun m!8257750 () Bool)

(assert (=> d!2353120 m!8257750))

(declare-fun m!8257752 () Bool)

(assert (=> d!2353120 m!8257752))

(assert (=> bm!727477 m!8257636))

(assert (=> bm!727477 m!8257750))

(assert (=> b!7849732 d!2353120))

(declare-fun d!2353122 () Bool)

(declare-fun nullableFct!3687 (Regex!21082) Bool)

(assert (=> d!2353122 (= (nullable!9354 r1!6227) (nullableFct!3687 r1!6227))))

(declare-fun bs!1967068 () Bool)

(assert (= bs!1967068 d!2353122))

(declare-fun m!8257754 () Bool)

(assert (=> bs!1967068 m!8257754))

(assert (=> b!7849732 d!2353122))

(declare-fun b!7850006 () Bool)

(declare-fun e!4640444 () Regex!21082)

(declare-fun e!4640445 () Regex!21082)

(assert (=> b!7850006 (= e!4640444 e!4640445)))

(declare-fun c!1442821 () Bool)

(assert (=> b!7850006 (= c!1442821 (is-Star!21082 r1!6227))))

(declare-fun d!2353124 () Bool)

(declare-fun lt!2679614 () Regex!21082)

(assert (=> d!2353124 (validRegex!11492 lt!2679614)))

(declare-fun e!4640443 () Regex!21082)

(assert (=> d!2353124 (= lt!2679614 e!4640443)))

(declare-fun c!1442820 () Bool)

(assert (=> d!2353124 (= c!1442820 (or (is-EmptyExpr!21082 r1!6227) (is-EmptyLang!21082 r1!6227)))))

(assert (=> d!2353124 (validRegex!11492 r1!6227)))

(assert (=> d!2353124 (= (derivativeStep!6317 r1!6227 (h!80265 s1!4084)) lt!2679614)))

(declare-fun b!7850007 () Bool)

(declare-fun e!4640447 () Regex!21082)

(assert (=> b!7850007 (= e!4640447 (ite (= (h!80265 s1!4084) (c!1442756 r1!6227)) EmptyExpr!21082 EmptyLang!21082))))

(declare-fun b!7850008 () Bool)

(assert (=> b!7850008 (= e!4640443 EmptyLang!21082)))

(declare-fun b!7850009 () Bool)

(declare-fun c!1442819 () Bool)

(assert (=> b!7850009 (= c!1442819 (is-Union!21082 r1!6227))))

(assert (=> b!7850009 (= e!4640447 e!4640444)))

(declare-fun b!7850010 () Bool)

(declare-fun c!1442818 () Bool)

(assert (=> b!7850010 (= c!1442818 (nullable!9354 (regOne!42676 r1!6227)))))

(declare-fun e!4640446 () Regex!21082)

(assert (=> b!7850010 (= e!4640445 e!4640446)))

(declare-fun bm!727478 () Bool)

(declare-fun call!727483 () Regex!21082)

(declare-fun call!727485 () Regex!21082)

(assert (=> bm!727478 (= call!727483 call!727485)))

(declare-fun call!727486 () Regex!21082)

(declare-fun b!7850011 () Bool)

(assert (=> b!7850011 (= e!4640446 (Union!21082 (Concat!29927 call!727483 (regTwo!42676 r1!6227)) call!727486))))

(declare-fun b!7850012 () Bool)

(assert (=> b!7850012 (= e!4640443 e!4640447)))

(declare-fun c!1442822 () Bool)

(assert (=> b!7850012 (= c!1442822 (is-ElementMatch!21082 r1!6227))))

(declare-fun bm!727479 () Bool)

(assert (=> bm!727479 (= call!727485 (derivativeStep!6317 (ite c!1442819 (regTwo!42677 r1!6227) (ite c!1442821 (reg!21411 r1!6227) (regOne!42676 r1!6227))) (h!80265 s1!4084)))))

(declare-fun b!7850013 () Bool)

(declare-fun call!727484 () Regex!21082)

(assert (=> b!7850013 (= e!4640444 (Union!21082 call!727484 call!727485))))

(declare-fun b!7850014 () Bool)

(assert (=> b!7850014 (= e!4640445 (Concat!29927 call!727483 r1!6227))))

(declare-fun bm!727480 () Bool)

(assert (=> bm!727480 (= call!727484 (derivativeStep!6317 (ite c!1442819 (regOne!42677 r1!6227) (ite c!1442818 (regTwo!42676 r1!6227) (regOne!42676 r1!6227))) (h!80265 s1!4084)))))

(declare-fun b!7850015 () Bool)

(assert (=> b!7850015 (= e!4640446 (Union!21082 (Concat!29927 call!727486 (regTwo!42676 r1!6227)) EmptyLang!21082))))

(declare-fun bm!727481 () Bool)

(assert (=> bm!727481 (= call!727486 call!727484)))

(assert (= (and d!2353124 c!1442820) b!7850008))

(assert (= (and d!2353124 (not c!1442820)) b!7850012))

(assert (= (and b!7850012 c!1442822) b!7850007))

(assert (= (and b!7850012 (not c!1442822)) b!7850009))

(assert (= (and b!7850009 c!1442819) b!7850013))

(assert (= (and b!7850009 (not c!1442819)) b!7850006))

(assert (= (and b!7850006 c!1442821) b!7850014))

(assert (= (and b!7850006 (not c!1442821)) b!7850010))

(assert (= (and b!7850010 c!1442818) b!7850011))

(assert (= (and b!7850010 (not c!1442818)) b!7850015))

(assert (= (or b!7850011 b!7850015) bm!727481))

(assert (= (or b!7850014 b!7850011) bm!727478))

(assert (= (or b!7850013 bm!727478) bm!727479))

(assert (= (or b!7850013 bm!727481) bm!727480))

(declare-fun m!8257756 () Bool)

(assert (=> d!2353124 m!8257756))

(assert (=> d!2353124 m!8257646))

(declare-fun m!8257758 () Bool)

(assert (=> b!7850010 m!8257758))

(declare-fun m!8257760 () Bool)

(assert (=> bm!727479 m!8257760))

(declare-fun m!8257762 () Bool)

(assert (=> bm!727480 m!8257762))

(assert (=> b!7849732 d!2353124))

(declare-fun e!4640457 () Bool)

(declare-fun lt!2679618 () List!73941)

(declare-fun b!7850037 () Bool)

(assert (=> b!7850037 (= e!4640457 (or (not (= s2!3706 Nil!73817)) (= lt!2679618 (t!388676 s1!4084))))))

(declare-fun b!7850036 () Bool)

(declare-fun res!3121753 () Bool)

(assert (=> b!7850036 (=> (not res!3121753) (not e!4640457))))

(declare-fun size!42828 (List!73941) Int)

(assert (=> b!7850036 (= res!3121753 (= (size!42828 lt!2679618) (+ (size!42828 (t!388676 s1!4084)) (size!42828 s2!3706))))))

(declare-fun b!7850034 () Bool)

(declare-fun e!4640458 () List!73941)

(assert (=> b!7850034 (= e!4640458 s2!3706)))

(declare-fun b!7850035 () Bool)

(assert (=> b!7850035 (= e!4640458 (Cons!73817 (h!80265 (t!388676 s1!4084)) (++!18090 (t!388676 (t!388676 s1!4084)) s2!3706)))))

(declare-fun d!2353126 () Bool)

(assert (=> d!2353126 e!4640457))

(declare-fun res!3121752 () Bool)

(assert (=> d!2353126 (=> (not res!3121752) (not e!4640457))))

(declare-fun content!15675 (List!73941) (Set C!42490))

(assert (=> d!2353126 (= res!3121752 (= (content!15675 lt!2679618) (set.union (content!15675 (t!388676 s1!4084)) (content!15675 s2!3706))))))

(assert (=> d!2353126 (= lt!2679618 e!4640458)))

(declare-fun c!1442830 () Bool)

(assert (=> d!2353126 (= c!1442830 (is-Nil!73817 (t!388676 s1!4084)))))

(assert (=> d!2353126 (= (++!18090 (t!388676 s1!4084) s2!3706) lt!2679618)))

(assert (= (and d!2353126 c!1442830) b!7850034))

(assert (= (and d!2353126 (not c!1442830)) b!7850035))

(assert (= (and d!2353126 res!3121752) b!7850036))

(assert (= (and b!7850036 res!3121753) b!7850037))

(declare-fun m!8257772 () Bool)

(assert (=> b!7850036 m!8257772))

(declare-fun m!8257774 () Bool)

(assert (=> b!7850036 m!8257774))

(declare-fun m!8257776 () Bool)

(assert (=> b!7850036 m!8257776))

(declare-fun m!8257778 () Bool)

(assert (=> b!7850035 m!8257778))

(declare-fun m!8257780 () Bool)

(assert (=> d!2353126 m!8257780))

(declare-fun m!8257782 () Bool)

(assert (=> d!2353126 m!8257782))

(declare-fun m!8257784 () Bool)

(assert (=> d!2353126 m!8257784))

(assert (=> b!7849732 d!2353126))

(declare-fun b!7850042 () Bool)

(declare-fun e!4640465 () Bool)

(declare-fun lt!2679621 () Bool)

(declare-fun call!727491 () Bool)

(assert (=> b!7850042 (= e!4640465 (= lt!2679621 call!727491))))

(declare-fun b!7850043 () Bool)

(declare-fun res!3121759 () Bool)

(declare-fun e!4640461 () Bool)

(assert (=> b!7850043 (=> res!3121759 e!4640461)))

(assert (=> b!7850043 (= res!3121759 (not (is-ElementMatch!21082 r2!6165)))))

(declare-fun e!4640462 () Bool)

(assert (=> b!7850043 (= e!4640462 e!4640461)))

(declare-fun b!7850044 () Bool)

(declare-fun e!4640467 () Bool)

(assert (=> b!7850044 (= e!4640467 (not (= (head!16039 s2!3706) (c!1442756 r2!6165))))))

(declare-fun b!7850045 () Bool)

(declare-fun e!4640464 () Bool)

(assert (=> b!7850045 (= e!4640464 e!4640467)))

(declare-fun res!3121758 () Bool)

(assert (=> b!7850045 (=> res!3121758 e!4640467)))

(assert (=> b!7850045 (= res!3121758 call!727491)))

(declare-fun d!2353130 () Bool)

(assert (=> d!2353130 e!4640465))

(declare-fun c!1442833 () Bool)

(assert (=> d!2353130 (= c!1442833 (is-EmptyExpr!21082 r2!6165))))

(declare-fun e!4640463 () Bool)

(assert (=> d!2353130 (= lt!2679621 e!4640463)))

(declare-fun c!1442834 () Bool)

(assert (=> d!2353130 (= c!1442834 (isEmpty!42328 s2!3706))))

(assert (=> d!2353130 (validRegex!11492 r2!6165)))

(assert (=> d!2353130 (= (matchR!10518 r2!6165 s2!3706) lt!2679621)))

(declare-fun b!7850046 () Bool)

(assert (=> b!7850046 (= e!4640463 (nullable!9354 r2!6165))))

(declare-fun b!7850047 () Bool)

(assert (=> b!7850047 (= e!4640465 e!4640462)))

(declare-fun c!1442835 () Bool)

(assert (=> b!7850047 (= c!1442835 (is-EmptyLang!21082 r2!6165))))

(declare-fun b!7850048 () Bool)

(declare-fun res!3121755 () Bool)

(assert (=> b!7850048 (=> res!3121755 e!4640461)))

(declare-fun e!4640466 () Bool)

(assert (=> b!7850048 (= res!3121755 e!4640466)))

(declare-fun res!3121761 () Bool)

(assert (=> b!7850048 (=> (not res!3121761) (not e!4640466))))

(assert (=> b!7850048 (= res!3121761 lt!2679621)))

(declare-fun b!7850049 () Bool)

(assert (=> b!7850049 (= e!4640463 (matchR!10518 (derivativeStep!6317 r2!6165 (head!16039 s2!3706)) (tail!15582 s2!3706)))))

(declare-fun b!7850050 () Bool)

(assert (=> b!7850050 (= e!4640461 e!4640464)))

(declare-fun res!3121754 () Bool)

(assert (=> b!7850050 (=> (not res!3121754) (not e!4640464))))

(assert (=> b!7850050 (= res!3121754 (not lt!2679621))))

(declare-fun b!7850051 () Bool)

(declare-fun res!3121757 () Bool)

(assert (=> b!7850051 (=> (not res!3121757) (not e!4640466))))

(assert (=> b!7850051 (= res!3121757 (not call!727491))))

(declare-fun b!7850052 () Bool)

(assert (=> b!7850052 (= e!4640466 (= (head!16039 s2!3706) (c!1442756 r2!6165)))))

(declare-fun b!7850053 () Bool)

(declare-fun res!3121760 () Bool)

(assert (=> b!7850053 (=> res!3121760 e!4640467)))

(assert (=> b!7850053 (= res!3121760 (not (isEmpty!42328 (tail!15582 s2!3706))))))

(declare-fun bm!727486 () Bool)

(assert (=> bm!727486 (= call!727491 (isEmpty!42328 s2!3706))))

(declare-fun b!7850054 () Bool)

(declare-fun res!3121756 () Bool)

(assert (=> b!7850054 (=> (not res!3121756) (not e!4640466))))

(assert (=> b!7850054 (= res!3121756 (isEmpty!42328 (tail!15582 s2!3706)))))

(declare-fun b!7850055 () Bool)

(assert (=> b!7850055 (= e!4640462 (not lt!2679621))))

(assert (= (and d!2353130 c!1442834) b!7850046))

(assert (= (and d!2353130 (not c!1442834)) b!7850049))

(assert (= (and d!2353130 c!1442833) b!7850042))

(assert (= (and d!2353130 (not c!1442833)) b!7850047))

(assert (= (and b!7850047 c!1442835) b!7850055))

(assert (= (and b!7850047 (not c!1442835)) b!7850043))

(assert (= (and b!7850043 (not res!3121759)) b!7850048))

(assert (= (and b!7850048 res!3121761) b!7850051))

(assert (= (and b!7850051 res!3121757) b!7850054))

(assert (= (and b!7850054 res!3121756) b!7850052))

(assert (= (and b!7850048 (not res!3121755)) b!7850050))

(assert (= (and b!7850050 res!3121754) b!7850045))

(assert (= (and b!7850045 (not res!3121758)) b!7850053))

(assert (= (and b!7850053 (not res!3121760)) b!7850044))

(assert (= (or b!7850042 b!7850045 b!7850051) bm!727486))

(declare-fun m!8257786 () Bool)

(assert (=> b!7850049 m!8257786))

(assert (=> b!7850049 m!8257786))

(declare-fun m!8257788 () Bool)

(assert (=> b!7850049 m!8257788))

(declare-fun m!8257790 () Bool)

(assert (=> b!7850049 m!8257790))

(assert (=> b!7850049 m!8257788))

(assert (=> b!7850049 m!8257790))

(declare-fun m!8257792 () Bool)

(assert (=> b!7850049 m!8257792))

(assert (=> b!7850044 m!8257786))

(assert (=> b!7850053 m!8257790))

(assert (=> b!7850053 m!8257790))

(declare-fun m!8257794 () Bool)

(assert (=> b!7850053 m!8257794))

(assert (=> b!7850054 m!8257790))

(assert (=> b!7850054 m!8257790))

(assert (=> b!7850054 m!8257794))

(assert (=> b!7850052 m!8257786))

(declare-fun m!8257796 () Bool)

(assert (=> b!7850046 m!8257796))

(declare-fun m!8257798 () Bool)

(assert (=> d!2353130 m!8257798))

(assert (=> d!2353130 m!8257630))

(assert (=> bm!727486 m!8257798))

(assert (=> b!7849727 d!2353130))

(declare-fun e!4640474 () Bool)

(assert (=> b!7849734 (= tp!2324525 e!4640474)))

(declare-fun b!7850076 () Bool)

(declare-fun tp!2324577 () Bool)

(assert (=> b!7850076 (= e!4640474 tp!2324577)))

(declare-fun b!7850077 () Bool)

(declare-fun tp!2324576 () Bool)

(declare-fun tp!2324578 () Bool)

(assert (=> b!7850077 (= e!4640474 (and tp!2324576 tp!2324578))))

(declare-fun b!7850074 () Bool)

(assert (=> b!7850074 (= e!4640474 tp_is_empty!52563)))

(declare-fun b!7850075 () Bool)

(declare-fun tp!2324579 () Bool)

(declare-fun tp!2324575 () Bool)

(assert (=> b!7850075 (= e!4640474 (and tp!2324579 tp!2324575))))

(assert (= (and b!7849734 (is-ElementMatch!21082 (regOne!42676 r2!6165))) b!7850074))

(assert (= (and b!7849734 (is-Concat!29927 (regOne!42676 r2!6165))) b!7850075))

(assert (= (and b!7849734 (is-Star!21082 (regOne!42676 r2!6165))) b!7850076))

(assert (= (and b!7849734 (is-Union!21082 (regOne!42676 r2!6165))) b!7850077))

(declare-fun e!4640475 () Bool)

(assert (=> b!7849734 (= tp!2324522 e!4640475)))

(declare-fun b!7850080 () Bool)

(declare-fun tp!2324582 () Bool)

(assert (=> b!7850080 (= e!4640475 tp!2324582)))

(declare-fun b!7850081 () Bool)

(declare-fun tp!2324581 () Bool)

(declare-fun tp!2324583 () Bool)

(assert (=> b!7850081 (= e!4640475 (and tp!2324581 tp!2324583))))

(declare-fun b!7850078 () Bool)

(assert (=> b!7850078 (= e!4640475 tp_is_empty!52563)))

(declare-fun b!7850079 () Bool)

(declare-fun tp!2324584 () Bool)

(declare-fun tp!2324580 () Bool)

(assert (=> b!7850079 (= e!4640475 (and tp!2324584 tp!2324580))))

(assert (= (and b!7849734 (is-ElementMatch!21082 (regTwo!42676 r2!6165))) b!7850078))

(assert (= (and b!7849734 (is-Concat!29927 (regTwo!42676 r2!6165))) b!7850079))

(assert (= (and b!7849734 (is-Star!21082 (regTwo!42676 r2!6165))) b!7850080))

(assert (= (and b!7849734 (is-Union!21082 (regTwo!42676 r2!6165))) b!7850081))

(declare-fun b!7850100 () Bool)

(declare-fun e!4640485 () Bool)

(declare-fun tp!2324587 () Bool)

(assert (=> b!7850100 (= e!4640485 (and tp_is_empty!52563 tp!2324587))))

(assert (=> b!7849730 (= tp!2324520 e!4640485)))

(assert (= (and b!7849730 (is-Cons!73817 (t!388676 s1!4084))) b!7850100))

(declare-fun e!4640486 () Bool)

(assert (=> b!7849725 (= tp!2324528 e!4640486)))

(declare-fun b!7850103 () Bool)

(declare-fun tp!2324590 () Bool)

(assert (=> b!7850103 (= e!4640486 tp!2324590)))

(declare-fun b!7850104 () Bool)

(declare-fun tp!2324589 () Bool)

(declare-fun tp!2324591 () Bool)

(assert (=> b!7850104 (= e!4640486 (and tp!2324589 tp!2324591))))

(declare-fun b!7850101 () Bool)

(assert (=> b!7850101 (= e!4640486 tp_is_empty!52563)))

(declare-fun b!7850102 () Bool)

(declare-fun tp!2324592 () Bool)

(declare-fun tp!2324588 () Bool)

(assert (=> b!7850102 (= e!4640486 (and tp!2324592 tp!2324588))))

(assert (= (and b!7849725 (is-ElementMatch!21082 (regOne!42677 r2!6165))) b!7850101))

(assert (= (and b!7849725 (is-Concat!29927 (regOne!42677 r2!6165))) b!7850102))

(assert (= (and b!7849725 (is-Star!21082 (regOne!42677 r2!6165))) b!7850103))

(assert (= (and b!7849725 (is-Union!21082 (regOne!42677 r2!6165))) b!7850104))

(declare-fun e!4640487 () Bool)

(assert (=> b!7849725 (= tp!2324527 e!4640487)))

(declare-fun b!7850107 () Bool)

(declare-fun tp!2324595 () Bool)

(assert (=> b!7850107 (= e!4640487 tp!2324595)))

(declare-fun b!7850108 () Bool)

(declare-fun tp!2324594 () Bool)

(declare-fun tp!2324596 () Bool)

(assert (=> b!7850108 (= e!4640487 (and tp!2324594 tp!2324596))))

(declare-fun b!7850105 () Bool)

(assert (=> b!7850105 (= e!4640487 tp_is_empty!52563)))

(declare-fun b!7850106 () Bool)

(declare-fun tp!2324597 () Bool)

(declare-fun tp!2324593 () Bool)

(assert (=> b!7850106 (= e!4640487 (and tp!2324597 tp!2324593))))

(assert (= (and b!7849725 (is-ElementMatch!21082 (regTwo!42677 r2!6165))) b!7850105))

(assert (= (and b!7849725 (is-Concat!29927 (regTwo!42677 r2!6165))) b!7850106))

(assert (= (and b!7849725 (is-Star!21082 (regTwo!42677 r2!6165))) b!7850107))

(assert (= (and b!7849725 (is-Union!21082 (regTwo!42677 r2!6165))) b!7850108))

(declare-fun e!4640488 () Bool)

(assert (=> b!7849740 (= tp!2324519 e!4640488)))

(declare-fun b!7850111 () Bool)

(declare-fun tp!2324600 () Bool)

(assert (=> b!7850111 (= e!4640488 tp!2324600)))

(declare-fun b!7850112 () Bool)

(declare-fun tp!2324599 () Bool)

(declare-fun tp!2324601 () Bool)

(assert (=> b!7850112 (= e!4640488 (and tp!2324599 tp!2324601))))

(declare-fun b!7850109 () Bool)

(assert (=> b!7850109 (= e!4640488 tp_is_empty!52563)))

(declare-fun b!7850110 () Bool)

(declare-fun tp!2324602 () Bool)

(declare-fun tp!2324598 () Bool)

(assert (=> b!7850110 (= e!4640488 (and tp!2324602 tp!2324598))))

(assert (= (and b!7849740 (is-ElementMatch!21082 (reg!21411 r2!6165))) b!7850109))

(assert (= (and b!7849740 (is-Concat!29927 (reg!21411 r2!6165))) b!7850110))

(assert (= (and b!7849740 (is-Star!21082 (reg!21411 r2!6165))) b!7850111))

(assert (= (and b!7849740 (is-Union!21082 (reg!21411 r2!6165))) b!7850112))

(declare-fun e!4640489 () Bool)

(assert (=> b!7849737 (= tp!2324523 e!4640489)))

(declare-fun b!7850115 () Bool)

(declare-fun tp!2324605 () Bool)

(assert (=> b!7850115 (= e!4640489 tp!2324605)))

(declare-fun b!7850116 () Bool)

(declare-fun tp!2324604 () Bool)

(declare-fun tp!2324606 () Bool)

(assert (=> b!7850116 (= e!4640489 (and tp!2324604 tp!2324606))))

(declare-fun b!7850113 () Bool)

(assert (=> b!7850113 (= e!4640489 tp_is_empty!52563)))

(declare-fun b!7850114 () Bool)

(declare-fun tp!2324607 () Bool)

(declare-fun tp!2324603 () Bool)

(assert (=> b!7850114 (= e!4640489 (and tp!2324607 tp!2324603))))

(assert (= (and b!7849737 (is-ElementMatch!21082 (regOne!42677 r1!6227))) b!7850113))

(assert (= (and b!7849737 (is-Concat!29927 (regOne!42677 r1!6227))) b!7850114))

(assert (= (and b!7849737 (is-Star!21082 (regOne!42677 r1!6227))) b!7850115))

(assert (= (and b!7849737 (is-Union!21082 (regOne!42677 r1!6227))) b!7850116))

(declare-fun e!4640490 () Bool)

(assert (=> b!7849737 (= tp!2324517 e!4640490)))

(declare-fun b!7850119 () Bool)

(declare-fun tp!2324610 () Bool)

(assert (=> b!7850119 (= e!4640490 tp!2324610)))

(declare-fun b!7850120 () Bool)

(declare-fun tp!2324609 () Bool)

(declare-fun tp!2324611 () Bool)

(assert (=> b!7850120 (= e!4640490 (and tp!2324609 tp!2324611))))

(declare-fun b!7850117 () Bool)

(assert (=> b!7850117 (= e!4640490 tp_is_empty!52563)))

(declare-fun b!7850118 () Bool)

(declare-fun tp!2324612 () Bool)

(declare-fun tp!2324608 () Bool)

(assert (=> b!7850118 (= e!4640490 (and tp!2324612 tp!2324608))))

(assert (= (and b!7849737 (is-ElementMatch!21082 (regTwo!42677 r1!6227))) b!7850117))

(assert (= (and b!7849737 (is-Concat!29927 (regTwo!42677 r1!6227))) b!7850118))

(assert (= (and b!7849737 (is-Star!21082 (regTwo!42677 r1!6227))) b!7850119))

(assert (= (and b!7849737 (is-Union!21082 (regTwo!42677 r1!6227))) b!7850120))

(declare-fun b!7850121 () Bool)

(declare-fun e!4640491 () Bool)

(declare-fun tp!2324613 () Bool)

(assert (=> b!7850121 (= e!4640491 (and tp_is_empty!52563 tp!2324613))))

(assert (=> b!7849736 (= tp!2324521 e!4640491)))

(assert (= (and b!7849736 (is-Cons!73817 (t!388676 s2!3706))) b!7850121))

(declare-fun e!4640492 () Bool)

(assert (=> b!7849738 (= tp!2324524 e!4640492)))

(declare-fun b!7850124 () Bool)

(declare-fun tp!2324616 () Bool)

(assert (=> b!7850124 (= e!4640492 tp!2324616)))

(declare-fun b!7850125 () Bool)

(declare-fun tp!2324615 () Bool)

(declare-fun tp!2324617 () Bool)

(assert (=> b!7850125 (= e!4640492 (and tp!2324615 tp!2324617))))

(declare-fun b!7850122 () Bool)

(assert (=> b!7850122 (= e!4640492 tp_is_empty!52563)))

(declare-fun b!7850123 () Bool)

(declare-fun tp!2324618 () Bool)

(declare-fun tp!2324614 () Bool)

(assert (=> b!7850123 (= e!4640492 (and tp!2324618 tp!2324614))))

(assert (= (and b!7849738 (is-ElementMatch!21082 (regOne!42676 r1!6227))) b!7850122))

(assert (= (and b!7849738 (is-Concat!29927 (regOne!42676 r1!6227))) b!7850123))

(assert (= (and b!7849738 (is-Star!21082 (regOne!42676 r1!6227))) b!7850124))

(assert (= (and b!7849738 (is-Union!21082 (regOne!42676 r1!6227))) b!7850125))

(declare-fun e!4640493 () Bool)

(assert (=> b!7849738 (= tp!2324518 e!4640493)))

(declare-fun b!7850128 () Bool)

(declare-fun tp!2324621 () Bool)

(assert (=> b!7850128 (= e!4640493 tp!2324621)))

(declare-fun b!7850129 () Bool)

(declare-fun tp!2324620 () Bool)

(declare-fun tp!2324622 () Bool)

(assert (=> b!7850129 (= e!4640493 (and tp!2324620 tp!2324622))))

(declare-fun b!7850126 () Bool)

(assert (=> b!7850126 (= e!4640493 tp_is_empty!52563)))

(declare-fun b!7850127 () Bool)

(declare-fun tp!2324623 () Bool)

(declare-fun tp!2324619 () Bool)

(assert (=> b!7850127 (= e!4640493 (and tp!2324623 tp!2324619))))

(assert (= (and b!7849738 (is-ElementMatch!21082 (regTwo!42676 r1!6227))) b!7850126))

(assert (= (and b!7849738 (is-Concat!29927 (regTwo!42676 r1!6227))) b!7850127))

(assert (= (and b!7849738 (is-Star!21082 (regTwo!42676 r1!6227))) b!7850128))

(assert (= (and b!7849738 (is-Union!21082 (regTwo!42676 r1!6227))) b!7850129))

(declare-fun e!4640501 () Bool)

(assert (=> b!7849733 (= tp!2324526 e!4640501)))

(declare-fun b!7850146 () Bool)

(declare-fun tp!2324626 () Bool)

(assert (=> b!7850146 (= e!4640501 tp!2324626)))

(declare-fun b!7850147 () Bool)

(declare-fun tp!2324625 () Bool)

(declare-fun tp!2324627 () Bool)

(assert (=> b!7850147 (= e!4640501 (and tp!2324625 tp!2324627))))

(declare-fun b!7850144 () Bool)

(assert (=> b!7850144 (= e!4640501 tp_is_empty!52563)))

(declare-fun b!7850145 () Bool)

(declare-fun tp!2324628 () Bool)

(declare-fun tp!2324624 () Bool)

(assert (=> b!7850145 (= e!4640501 (and tp!2324628 tp!2324624))))

(assert (= (and b!7849733 (is-ElementMatch!21082 (reg!21411 r1!6227))) b!7850144))

(assert (= (and b!7849733 (is-Concat!29927 (reg!21411 r1!6227))) b!7850145))

(assert (= (and b!7849733 (is-Star!21082 (reg!21411 r1!6227))) b!7850146))

(assert (= (and b!7849733 (is-Union!21082 (reg!21411 r1!6227))) b!7850147))

(push 1)

(assert (not b!7850127))

(assert (not bm!727448))

(assert (not b!7850107))

(assert (not b!7850120))

(assert (not b!7850044))

(assert (not b!7850003))

(assert (not d!2353124))

(assert (not b!7849950))

(assert (not b!7850035))

(assert (not b!7850004))

(assert (not b!7850036))

(assert (not d!2353100))

(assert (not b!7850124))

(assert (not b!7850002))

(assert (not b!7849956))

(assert (not d!2353118))

(assert (not bm!727486))

(assert (not b!7850080))

(assert (not b!7850102))

(assert (not b!7850046))

(assert (not b!7849960))

(assert (not bm!727468))

(assert (not d!2353120))

(assert (not bm!727477))

(assert (not b!7850081))

(assert (not d!2353126))

(assert (not b!7850111))

(assert (not b!7849994))

(assert (not b!7850115))

(assert (not b!7849999))

(assert (not b!7850076))

(assert (not b!7849840))

(assert (not b!7850119))

(assert (not b!7850054))

(assert (not b!7850049))

(assert (not b!7850077))

(assert (not b!7850121))

(assert (not bm!727457))

(assert (not b!7850106))

(assert (not b!7850129))

(assert (not b!7849867))

(assert (not b!7850146))

(assert (not b!7850104))

(assert (not bm!727480))

(assert (not b!7850145))

(assert (not b!7849996))

(assert (not b!7850116))

(assert tp_is_empty!52563)

(assert (not d!2353122))

(assert (not b!7850075))

(assert (not b!7850108))

(assert (not b!7849958))

(assert (not b!7850010))

(assert (not bm!727449))

(assert (not b!7849953))

(assert (not b!7849991))

(assert (not b!7850110))

(assert (not b!7850100))

(assert (not b!7850053))

(assert (not b!7850147))

(assert (not b!7850118))

(assert (not b!7850114))

(assert (not b!7849948))

(assert (not b!7850125))

(assert (not b!7850052))

(assert (not bm!727465))

(assert (not b!7850079))

(assert (not b!7850112))

(assert (not bm!727459))

(assert (not b!7850128))

(assert (not d!2353130))

(assert (not d!2353110))

(assert (not b!7850123))

(assert (not b!7850103))

(assert (not bm!727466))

(assert (not bm!727479))

(assert (not b!7849957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

