; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723276 () Bool)

(assert start!723276)

(declare-fun b!7448450 () Bool)

(declare-fun e!4446605 () Bool)

(declare-fun tp_is_empty!49241 () Bool)

(declare-fun tp!2157632 () Bool)

(assert (=> b!7448450 (= e!4446605 (and tp_is_empty!49241 tp!2157632))))

(declare-fun b!7448451 () Bool)

(declare-fun e!4446601 () Bool)

(declare-fun tp!2157636 () Bool)

(declare-fun tp!2157633 () Bool)

(assert (=> b!7448451 (= e!4446601 (and tp!2157636 tp!2157633))))

(declare-fun b!7448452 () Bool)

(declare-fun res!2987735 () Bool)

(declare-fun e!4446602 () Bool)

(assert (=> b!7448452 (=> (not res!2987735) (not e!4446602))))

(declare-datatypes ((C!39226 0))(
  ( (C!39227 (val!30011 Int)) )
))
(declare-datatypes ((Regex!19476 0))(
  ( (ElementMatch!19476 (c!1377553 C!39226)) (Concat!28321 (regOne!39464 Regex!19476) (regTwo!39464 Regex!19476)) (EmptyExpr!19476) (Star!19476 (reg!19805 Regex!19476)) (EmptyLang!19476) (Union!19476 (regOne!39465 Regex!19476) (regTwo!39465 Regex!19476)) )
))
(declare-fun r2!5783 () Regex!19476)

(declare-fun validRegex!9990 (Regex!19476) Bool)

(assert (=> b!7448452 (= res!2987735 (validRegex!9990 r2!5783))))

(declare-fun b!7448453 () Bool)

(declare-fun e!4446603 () Bool)

(declare-fun tp!2157643 () Bool)

(declare-fun tp!2157638 () Bool)

(assert (=> b!7448453 (= e!4446603 (and tp!2157643 tp!2157638))))

(declare-fun b!7448454 () Bool)

(declare-fun e!4446604 () Bool)

(declare-fun tp!2157642 () Bool)

(assert (=> b!7448454 (= e!4446604 tp!2157642)))

(declare-fun b!7448455 () Bool)

(declare-fun lt!2619730 () Regex!19476)

(assert (=> b!7448455 (= e!4446602 (not (validRegex!9990 lt!2619730)))))

(declare-fun lt!2619731 () Regex!19476)

(declare-datatypes ((List!72192 0))(
  ( (Nil!72068) (Cons!72068 (h!78516 C!39226) (t!386761 List!72192)) )
))
(declare-fun s!13591 () List!72192)

(declare-fun matchR!9240 (Regex!19476 List!72192) Bool)

(declare-fun matchRSpec!4155 (Regex!19476 List!72192) Bool)

(assert (=> b!7448455 (= (matchR!9240 lt!2619731 s!13591) (matchRSpec!4155 lt!2619731 s!13591))))

(declare-datatypes ((Unit!165787 0))(
  ( (Unit!165788) )
))
(declare-fun lt!2619728 () Unit!165787)

(declare-fun mainMatchTheorem!4149 (Regex!19476 List!72192) Unit!165787)

(assert (=> b!7448455 (= lt!2619728 (mainMatchTheorem!4149 lt!2619731 s!13591))))

(assert (=> b!7448455 (= (matchR!9240 lt!2619730 s!13591) (matchRSpec!4155 lt!2619730 s!13591))))

(declare-fun lt!2619729 () Unit!165787)

(assert (=> b!7448455 (= lt!2619729 (mainMatchTheorem!4149 lt!2619730 s!13591))))

(declare-fun r1!5845 () Regex!19476)

(declare-fun rTail!78 () Regex!19476)

(assert (=> b!7448455 (= lt!2619731 (Union!19476 (Concat!28321 r1!5845 rTail!78) (Concat!28321 r2!5783 rTail!78)))))

(assert (=> b!7448455 (= lt!2619730 (Concat!28321 (Union!19476 r1!5845 r2!5783) rTail!78))))

(declare-fun b!7448456 () Bool)

(declare-fun tp!2157637 () Bool)

(declare-fun tp!2157640 () Bool)

(assert (=> b!7448456 (= e!4446601 (and tp!2157637 tp!2157640))))

(declare-fun res!2987733 () Bool)

(assert (=> start!723276 (=> (not res!2987733) (not e!4446602))))

(assert (=> start!723276 (= res!2987733 (validRegex!9990 r1!5845))))

(assert (=> start!723276 e!4446602))

(assert (=> start!723276 e!4446603))

(assert (=> start!723276 e!4446604))

(assert (=> start!723276 e!4446601))

(assert (=> start!723276 e!4446605))

(declare-fun b!7448457 () Bool)

(declare-fun tp!2157631 () Bool)

(declare-fun tp!2157639 () Bool)

(assert (=> b!7448457 (= e!4446604 (and tp!2157631 tp!2157639))))

(declare-fun b!7448458 () Bool)

(declare-fun res!2987734 () Bool)

(assert (=> b!7448458 (=> (not res!2987734) (not e!4446602))))

(assert (=> b!7448458 (= res!2987734 (validRegex!9990 rTail!78))))

(declare-fun b!7448459 () Bool)

(declare-fun tp!2157628 () Bool)

(declare-fun tp!2157641 () Bool)

(assert (=> b!7448459 (= e!4446604 (and tp!2157628 tp!2157641))))

(declare-fun b!7448460 () Bool)

(declare-fun tp!2157635 () Bool)

(assert (=> b!7448460 (= e!4446603 tp!2157635)))

(declare-fun b!7448461 () Bool)

(assert (=> b!7448461 (= e!4446601 tp_is_empty!49241)))

(declare-fun b!7448462 () Bool)

(declare-fun tp!2157629 () Bool)

(declare-fun tp!2157634 () Bool)

(assert (=> b!7448462 (= e!4446603 (and tp!2157629 tp!2157634))))

(declare-fun b!7448463 () Bool)

(assert (=> b!7448463 (= e!4446603 tp_is_empty!49241)))

(declare-fun b!7448464 () Bool)

(assert (=> b!7448464 (= e!4446604 tp_is_empty!49241)))

(declare-fun b!7448465 () Bool)

(declare-fun tp!2157630 () Bool)

(assert (=> b!7448465 (= e!4446601 tp!2157630)))

(assert (= (and start!723276 res!2987733) b!7448452))

(assert (= (and b!7448452 res!2987735) b!7448458))

(assert (= (and b!7448458 res!2987734) b!7448455))

(assert (= (and start!723276 (is-ElementMatch!19476 r1!5845)) b!7448463))

(assert (= (and start!723276 (is-Concat!28321 r1!5845)) b!7448453))

(assert (= (and start!723276 (is-Star!19476 r1!5845)) b!7448460))

(assert (= (and start!723276 (is-Union!19476 r1!5845)) b!7448462))

(assert (= (and start!723276 (is-ElementMatch!19476 r2!5783)) b!7448464))

(assert (= (and start!723276 (is-Concat!28321 r2!5783)) b!7448457))

(assert (= (and start!723276 (is-Star!19476 r2!5783)) b!7448454))

(assert (= (and start!723276 (is-Union!19476 r2!5783)) b!7448459))

(assert (= (and start!723276 (is-ElementMatch!19476 rTail!78)) b!7448461))

(assert (= (and start!723276 (is-Concat!28321 rTail!78)) b!7448456))

(assert (= (and start!723276 (is-Star!19476 rTail!78)) b!7448465))

(assert (= (and start!723276 (is-Union!19476 rTail!78)) b!7448451))

(assert (= (and start!723276 (is-Cons!72068 s!13591)) b!7448450))

(declare-fun m!8056012 () Bool)

(assert (=> b!7448452 m!8056012))

(declare-fun m!8056014 () Bool)

(assert (=> b!7448455 m!8056014))

(declare-fun m!8056016 () Bool)

(assert (=> b!7448455 m!8056016))

(declare-fun m!8056018 () Bool)

(assert (=> b!7448455 m!8056018))

(declare-fun m!8056020 () Bool)

(assert (=> b!7448455 m!8056020))

(declare-fun m!8056022 () Bool)

(assert (=> b!7448455 m!8056022))

(declare-fun m!8056024 () Bool)

(assert (=> b!7448455 m!8056024))

(declare-fun m!8056026 () Bool)

(assert (=> b!7448455 m!8056026))

(declare-fun m!8056028 () Bool)

(assert (=> start!723276 m!8056028))

(declare-fun m!8056030 () Bool)

(assert (=> b!7448458 m!8056030))

(push 1)

(assert (not b!7448458))

(assert (not b!7448454))

(assert (not b!7448456))

(assert (not b!7448453))

(assert (not b!7448462))

(assert (not b!7448457))

(assert (not b!7448460))

(assert (not b!7448452))

(assert tp_is_empty!49241)

(assert (not b!7448450))

(assert (not b!7448459))

(assert (not b!7448451))

(assert (not b!7448455))

(assert (not b!7448465))

(assert (not start!723276))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7448569 () Bool)

(declare-fun res!2987780 () Bool)

(declare-fun e!4446657 () Bool)

(assert (=> b!7448569 (=> res!2987780 e!4446657)))

(assert (=> b!7448569 (= res!2987780 (not (is-ElementMatch!19476 lt!2619730)))))

(declare-fun e!4446661 () Bool)

(assert (=> b!7448569 (= e!4446661 e!4446657)))

(declare-fun b!7448570 () Bool)

(declare-fun e!4446658 () Bool)

(declare-fun head!15286 (List!72192) C!39226)

(assert (=> b!7448570 (= e!4446658 (not (= (head!15286 s!13591) (c!1377553 lt!2619730))))))

(declare-fun b!7448571 () Bool)

(declare-fun lt!2619749 () Bool)

(assert (=> b!7448571 (= e!4446661 (not lt!2619749))))

(declare-fun b!7448572 () Bool)

(declare-fun e!4446656 () Bool)

(declare-fun call!684406 () Bool)

(assert (=> b!7448572 (= e!4446656 (= lt!2619749 call!684406))))

(declare-fun b!7448573 () Bool)

(declare-fun res!2987781 () Bool)

(assert (=> b!7448573 (=> res!2987781 e!4446658)))

(declare-fun isEmpty!41090 (List!72192) Bool)

(declare-fun tail!14855 (List!72192) List!72192)

(assert (=> b!7448573 (= res!2987781 (not (isEmpty!41090 (tail!14855 s!13591))))))

(declare-fun b!7448575 () Bool)

(declare-fun res!2987782 () Bool)

(assert (=> b!7448575 (=> res!2987782 e!4446657)))

(declare-fun e!4446662 () Bool)

(assert (=> b!7448575 (= res!2987782 e!4446662)))

(declare-fun res!2987777 () Bool)

(assert (=> b!7448575 (=> (not res!2987777) (not e!4446662))))

(assert (=> b!7448575 (= res!2987777 lt!2619749)))

(declare-fun b!7448576 () Bool)

(declare-fun e!4446659 () Bool)

(assert (=> b!7448576 (= e!4446659 e!4446658)))

(declare-fun res!2987776 () Bool)

(assert (=> b!7448576 (=> res!2987776 e!4446658)))

(assert (=> b!7448576 (= res!2987776 call!684406)))

(declare-fun b!7448577 () Bool)

(declare-fun e!4446660 () Bool)

(declare-fun derivativeStep!5546 (Regex!19476 C!39226) Regex!19476)

(assert (=> b!7448577 (= e!4446660 (matchR!9240 (derivativeStep!5546 lt!2619730 (head!15286 s!13591)) (tail!14855 s!13591)))))

(declare-fun b!7448578 () Bool)

(assert (=> b!7448578 (= e!4446662 (= (head!15286 s!13591) (c!1377553 lt!2619730)))))

(declare-fun bm!684401 () Bool)

(assert (=> bm!684401 (= call!684406 (isEmpty!41090 s!13591))))

(declare-fun b!7448579 () Bool)

(declare-fun res!2987779 () Bool)

(assert (=> b!7448579 (=> (not res!2987779) (not e!4446662))))

(assert (=> b!7448579 (= res!2987779 (not call!684406))))

(declare-fun b!7448580 () Bool)

(assert (=> b!7448580 (= e!4446657 e!4446659)))

(declare-fun res!2987778 () Bool)

(assert (=> b!7448580 (=> (not res!2987778) (not e!4446659))))

(assert (=> b!7448580 (= res!2987778 (not lt!2619749))))

(declare-fun b!7448574 () Bool)

(declare-fun res!2987783 () Bool)

(assert (=> b!7448574 (=> (not res!2987783) (not e!4446662))))

(assert (=> b!7448574 (= res!2987783 (isEmpty!41090 (tail!14855 s!13591)))))

(declare-fun d!2296818 () Bool)

(assert (=> d!2296818 e!4446656))

(declare-fun c!1377568 () Bool)

(assert (=> d!2296818 (= c!1377568 (is-EmptyExpr!19476 lt!2619730))))

(assert (=> d!2296818 (= lt!2619749 e!4446660)))

(declare-fun c!1377567 () Bool)

(assert (=> d!2296818 (= c!1377567 (isEmpty!41090 s!13591))))

(assert (=> d!2296818 (validRegex!9990 lt!2619730)))

(assert (=> d!2296818 (= (matchR!9240 lt!2619730 s!13591) lt!2619749)))

(declare-fun b!7448581 () Bool)

(declare-fun nullable!8486 (Regex!19476) Bool)

(assert (=> b!7448581 (= e!4446660 (nullable!8486 lt!2619730))))

(declare-fun b!7448582 () Bool)

(assert (=> b!7448582 (= e!4446656 e!4446661)))

(declare-fun c!1377569 () Bool)

(assert (=> b!7448582 (= c!1377569 (is-EmptyLang!19476 lt!2619730))))

(assert (= (and d!2296818 c!1377567) b!7448581))

(assert (= (and d!2296818 (not c!1377567)) b!7448577))

(assert (= (and d!2296818 c!1377568) b!7448572))

(assert (= (and d!2296818 (not c!1377568)) b!7448582))

(assert (= (and b!7448582 c!1377569) b!7448571))

(assert (= (and b!7448582 (not c!1377569)) b!7448569))

(assert (= (and b!7448569 (not res!2987780)) b!7448575))

(assert (= (and b!7448575 res!2987777) b!7448579))

(assert (= (and b!7448579 res!2987779) b!7448574))

(assert (= (and b!7448574 res!2987783) b!7448578))

(assert (= (and b!7448575 (not res!2987782)) b!7448580))

(assert (= (and b!7448580 res!2987778) b!7448576))

(assert (= (and b!7448576 (not res!2987776)) b!7448573))

(assert (= (and b!7448573 (not res!2987781)) b!7448570))

(assert (= (or b!7448572 b!7448576 b!7448579) bm!684401))

(declare-fun m!8056060 () Bool)

(assert (=> b!7448578 m!8056060))

(declare-fun m!8056062 () Bool)

(assert (=> d!2296818 m!8056062))

(assert (=> d!2296818 m!8056020))

(assert (=> b!7448570 m!8056060))

(declare-fun m!8056064 () Bool)

(assert (=> b!7448574 m!8056064))

(assert (=> b!7448574 m!8056064))

(declare-fun m!8056066 () Bool)

(assert (=> b!7448574 m!8056066))

(assert (=> bm!684401 m!8056062))

(declare-fun m!8056068 () Bool)

(assert (=> b!7448581 m!8056068))

(assert (=> b!7448577 m!8056060))

(assert (=> b!7448577 m!8056060))

(declare-fun m!8056070 () Bool)

(assert (=> b!7448577 m!8056070))

(assert (=> b!7448577 m!8056064))

(assert (=> b!7448577 m!8056070))

(assert (=> b!7448577 m!8056064))

(declare-fun m!8056072 () Bool)

(assert (=> b!7448577 m!8056072))

(assert (=> b!7448573 m!8056064))

(assert (=> b!7448573 m!8056064))

(assert (=> b!7448573 m!8056066))

(assert (=> b!7448455 d!2296818))

(declare-fun b!7448647 () Bool)

(assert (=> b!7448647 true))

(assert (=> b!7448647 true))

(declare-fun bs!1926845 () Bool)

(declare-fun b!7448640 () Bool)

(assert (= bs!1926845 (and b!7448640 b!7448647)))

(declare-fun lambda!460707 () Int)

(declare-fun lambda!460706 () Int)

(assert (=> bs!1926845 (not (= lambda!460707 lambda!460706))))

(assert (=> b!7448640 true))

(assert (=> b!7448640 true))

(declare-fun b!7448637 () Bool)

(declare-fun e!4446699 () Bool)

(assert (=> b!7448637 (= e!4446699 (= s!13591 (Cons!72068 (c!1377553 lt!2619731) Nil!72068)))))

(declare-fun b!7448638 () Bool)

(declare-fun c!1377588 () Bool)

(assert (=> b!7448638 (= c!1377588 (is-ElementMatch!19476 lt!2619731))))

(declare-fun e!4446695 () Bool)

(assert (=> b!7448638 (= e!4446695 e!4446699)))

(declare-fun b!7448639 () Bool)

(declare-fun e!4446696 () Bool)

(declare-fun e!4446697 () Bool)

(assert (=> b!7448639 (= e!4446696 e!4446697)))

(declare-fun c!1377587 () Bool)

(assert (=> b!7448639 (= c!1377587 (is-Star!19476 lt!2619731))))

(declare-fun call!684411 () Bool)

(assert (=> b!7448640 (= e!4446697 call!684411)))

(declare-fun b!7448641 () Bool)

(declare-fun e!4446698 () Bool)

(assert (=> b!7448641 (= e!4446698 (matchRSpec!4155 (regTwo!39465 lt!2619731) s!13591))))

(declare-fun b!7448642 () Bool)

(declare-fun c!1377589 () Bool)

(assert (=> b!7448642 (= c!1377589 (is-Union!19476 lt!2619731))))

(assert (=> b!7448642 (= e!4446699 e!4446696)))

(declare-fun bm!684406 () Bool)

(declare-fun Exists!4099 (Int) Bool)

(assert (=> bm!684406 (= call!684411 (Exists!4099 (ite c!1377587 lambda!460706 lambda!460707)))))

(declare-fun b!7448643 () Bool)

(declare-fun res!2987808 () Bool)

(declare-fun e!4446701 () Bool)

(assert (=> b!7448643 (=> res!2987808 e!4446701)))

(declare-fun call!684412 () Bool)

(assert (=> b!7448643 (= res!2987808 call!684412)))

(assert (=> b!7448643 (= e!4446697 e!4446701)))

(declare-fun bm!684407 () Bool)

(assert (=> bm!684407 (= call!684412 (isEmpty!41090 s!13591))))

(declare-fun b!7448644 () Bool)

(declare-fun e!4446700 () Bool)

(assert (=> b!7448644 (= e!4446700 call!684412)))

(declare-fun b!7448645 () Bool)

(assert (=> b!7448645 (= e!4446700 e!4446695)))

(declare-fun res!2987806 () Bool)

(assert (=> b!7448645 (= res!2987806 (not (is-EmptyLang!19476 lt!2619731)))))

(assert (=> b!7448645 (=> (not res!2987806) (not e!4446695))))

(declare-fun d!2296824 () Bool)

(declare-fun c!1377586 () Bool)

(assert (=> d!2296824 (= c!1377586 (is-EmptyExpr!19476 lt!2619731))))

(assert (=> d!2296824 (= (matchRSpec!4155 lt!2619731 s!13591) e!4446700)))

(declare-fun b!7448646 () Bool)

(assert (=> b!7448646 (= e!4446696 e!4446698)))

(declare-fun res!2987807 () Bool)

(assert (=> b!7448646 (= res!2987807 (matchRSpec!4155 (regOne!39465 lt!2619731) s!13591))))

(assert (=> b!7448646 (=> res!2987807 e!4446698)))

(assert (=> b!7448647 (= e!4446701 call!684411)))

(assert (= (and d!2296824 c!1377586) b!7448644))

(assert (= (and d!2296824 (not c!1377586)) b!7448645))

(assert (= (and b!7448645 res!2987806) b!7448638))

(assert (= (and b!7448638 c!1377588) b!7448637))

(assert (= (and b!7448638 (not c!1377588)) b!7448642))

(assert (= (and b!7448642 c!1377589) b!7448646))

(assert (= (and b!7448642 (not c!1377589)) b!7448639))

(assert (= (and b!7448646 (not res!2987807)) b!7448641))

(assert (= (and b!7448639 c!1377587) b!7448643))

(assert (= (and b!7448639 (not c!1377587)) b!7448640))

(assert (= (and b!7448643 (not res!2987808)) b!7448647))

(assert (= (or b!7448647 b!7448640) bm!684406))

(assert (= (or b!7448644 b!7448643) bm!684407))

(declare-fun m!8056074 () Bool)

(assert (=> b!7448641 m!8056074))

(declare-fun m!8056076 () Bool)

(assert (=> bm!684406 m!8056076))

(assert (=> bm!684407 m!8056062))

(declare-fun m!8056078 () Bool)

(assert (=> b!7448646 m!8056078))

(assert (=> b!7448455 d!2296824))

(declare-fun b!7448670 () Bool)

(declare-fun e!4446720 () Bool)

(declare-fun e!4446719 () Bool)

(assert (=> b!7448670 (= e!4446720 e!4446719)))

(declare-fun c!1377595 () Bool)

(assert (=> b!7448670 (= c!1377595 (is-Union!19476 lt!2619730))))

(declare-fun b!7448671 () Bool)

(declare-fun e!4446722 () Bool)

(assert (=> b!7448671 (= e!4446720 e!4446722)))

(declare-fun res!2987822 () Bool)

(assert (=> b!7448671 (= res!2987822 (not (nullable!8486 (reg!19805 lt!2619730))))))

(assert (=> b!7448671 (=> (not res!2987822) (not e!4446722))))

(declare-fun bm!684414 () Bool)

(declare-fun call!684420 () Bool)

(assert (=> bm!684414 (= call!684420 (validRegex!9990 (ite c!1377595 (regOne!39465 lt!2619730) (regOne!39464 lt!2619730))))))

(declare-fun b!7448672 () Bool)

(declare-fun call!684419 () Bool)

(assert (=> b!7448672 (= e!4446722 call!684419)))

(declare-fun b!7448673 () Bool)

(declare-fun e!4446716 () Bool)

(assert (=> b!7448673 (= e!4446716 e!4446720)))

(declare-fun c!1377594 () Bool)

(assert (=> b!7448673 (= c!1377594 (is-Star!19476 lt!2619730))))

(declare-fun b!7448674 () Bool)

(declare-fun res!2987823 () Bool)

(declare-fun e!4446717 () Bool)

(assert (=> b!7448674 (=> res!2987823 e!4446717)))

(assert (=> b!7448674 (= res!2987823 (not (is-Concat!28321 lt!2619730)))))

(assert (=> b!7448674 (= e!4446719 e!4446717)))

(declare-fun bm!684415 () Bool)

(declare-fun call!684421 () Bool)

(assert (=> bm!684415 (= call!684421 call!684419)))

(declare-fun bm!684416 () Bool)

(assert (=> bm!684416 (= call!684419 (validRegex!9990 (ite c!1377594 (reg!19805 lt!2619730) (ite c!1377595 (regTwo!39465 lt!2619730) (regTwo!39464 lt!2619730)))))))

(declare-fun b!7448676 () Bool)

(declare-fun e!4446721 () Bool)

(assert (=> b!7448676 (= e!4446721 call!684421)))

(declare-fun b!7448677 () Bool)

(assert (=> b!7448677 (= e!4446717 e!4446721)))

(declare-fun res!2987821 () Bool)

(assert (=> b!7448677 (=> (not res!2987821) (not e!4446721))))

(assert (=> b!7448677 (= res!2987821 call!684420)))

(declare-fun b!7448678 () Bool)

(declare-fun e!4446718 () Bool)

(assert (=> b!7448678 (= e!4446718 call!684421)))

(declare-fun b!7448675 () Bool)

(declare-fun res!2987820 () Bool)

(assert (=> b!7448675 (=> (not res!2987820) (not e!4446718))))

(assert (=> b!7448675 (= res!2987820 call!684420)))

(assert (=> b!7448675 (= e!4446719 e!4446718)))

(declare-fun d!2296826 () Bool)

(declare-fun res!2987819 () Bool)

(assert (=> d!2296826 (=> res!2987819 e!4446716)))

(assert (=> d!2296826 (= res!2987819 (is-ElementMatch!19476 lt!2619730))))

(assert (=> d!2296826 (= (validRegex!9990 lt!2619730) e!4446716)))

(assert (= (and d!2296826 (not res!2987819)) b!7448673))

(assert (= (and b!7448673 c!1377594) b!7448671))

(assert (= (and b!7448673 (not c!1377594)) b!7448670))

(assert (= (and b!7448671 res!2987822) b!7448672))

(assert (= (and b!7448670 c!1377595) b!7448675))

(assert (= (and b!7448670 (not c!1377595)) b!7448674))

(assert (= (and b!7448675 res!2987820) b!7448678))

(assert (= (and b!7448674 (not res!2987823)) b!7448677))

(assert (= (and b!7448677 res!2987821) b!7448676))

(assert (= (or b!7448678 b!7448676) bm!684415))

(assert (= (or b!7448675 b!7448677) bm!684414))

(assert (= (or b!7448672 bm!684415) bm!684416))

(declare-fun m!8056080 () Bool)

(assert (=> b!7448671 m!8056080))

(declare-fun m!8056082 () Bool)

(assert (=> bm!684414 m!8056082))

(declare-fun m!8056084 () Bool)

(assert (=> bm!684416 m!8056084))

(assert (=> b!7448455 d!2296826))

(declare-fun b!7448679 () Bool)

(declare-fun res!2987828 () Bool)

(declare-fun e!4446724 () Bool)

(assert (=> b!7448679 (=> res!2987828 e!4446724)))

(assert (=> b!7448679 (= res!2987828 (not (is-ElementMatch!19476 lt!2619731)))))

(declare-fun e!4446728 () Bool)

(assert (=> b!7448679 (= e!4446728 e!4446724)))

(declare-fun b!7448680 () Bool)

(declare-fun e!4446725 () Bool)

(assert (=> b!7448680 (= e!4446725 (not (= (head!15286 s!13591) (c!1377553 lt!2619731))))))

(declare-fun b!7448681 () Bool)

(declare-fun lt!2619750 () Bool)

(assert (=> b!7448681 (= e!4446728 (not lt!2619750))))

(declare-fun b!7448682 () Bool)

(declare-fun e!4446723 () Bool)

(declare-fun call!684422 () Bool)

(assert (=> b!7448682 (= e!4446723 (= lt!2619750 call!684422))))

(declare-fun b!7448683 () Bool)

(declare-fun res!2987829 () Bool)

(assert (=> b!7448683 (=> res!2987829 e!4446725)))

(assert (=> b!7448683 (= res!2987829 (not (isEmpty!41090 (tail!14855 s!13591))))))

(declare-fun b!7448685 () Bool)

(declare-fun res!2987830 () Bool)

(assert (=> b!7448685 (=> res!2987830 e!4446724)))

(declare-fun e!4446729 () Bool)

(assert (=> b!7448685 (= res!2987830 e!4446729)))

(declare-fun res!2987825 () Bool)

(assert (=> b!7448685 (=> (not res!2987825) (not e!4446729))))

(assert (=> b!7448685 (= res!2987825 lt!2619750)))

(declare-fun b!7448686 () Bool)

(declare-fun e!4446726 () Bool)

(assert (=> b!7448686 (= e!4446726 e!4446725)))

(declare-fun res!2987824 () Bool)

(assert (=> b!7448686 (=> res!2987824 e!4446725)))

(assert (=> b!7448686 (= res!2987824 call!684422)))

(declare-fun b!7448687 () Bool)

(declare-fun e!4446727 () Bool)

(assert (=> b!7448687 (= e!4446727 (matchR!9240 (derivativeStep!5546 lt!2619731 (head!15286 s!13591)) (tail!14855 s!13591)))))

(declare-fun b!7448688 () Bool)

(assert (=> b!7448688 (= e!4446729 (= (head!15286 s!13591) (c!1377553 lt!2619731)))))

(declare-fun bm!684417 () Bool)

(assert (=> bm!684417 (= call!684422 (isEmpty!41090 s!13591))))

(declare-fun b!7448689 () Bool)

(declare-fun res!2987827 () Bool)

(assert (=> b!7448689 (=> (not res!2987827) (not e!4446729))))

(assert (=> b!7448689 (= res!2987827 (not call!684422))))

(declare-fun b!7448690 () Bool)

(assert (=> b!7448690 (= e!4446724 e!4446726)))

(declare-fun res!2987826 () Bool)

(assert (=> b!7448690 (=> (not res!2987826) (not e!4446726))))

(assert (=> b!7448690 (= res!2987826 (not lt!2619750))))

(declare-fun b!7448684 () Bool)

(declare-fun res!2987831 () Bool)

(assert (=> b!7448684 (=> (not res!2987831) (not e!4446729))))

(assert (=> b!7448684 (= res!2987831 (isEmpty!41090 (tail!14855 s!13591)))))

(declare-fun d!2296828 () Bool)

(assert (=> d!2296828 e!4446723))

(declare-fun c!1377597 () Bool)

(assert (=> d!2296828 (= c!1377597 (is-EmptyExpr!19476 lt!2619731))))

(assert (=> d!2296828 (= lt!2619750 e!4446727)))

(declare-fun c!1377596 () Bool)

(assert (=> d!2296828 (= c!1377596 (isEmpty!41090 s!13591))))

(assert (=> d!2296828 (validRegex!9990 lt!2619731)))

(assert (=> d!2296828 (= (matchR!9240 lt!2619731 s!13591) lt!2619750)))

(declare-fun b!7448691 () Bool)

(assert (=> b!7448691 (= e!4446727 (nullable!8486 lt!2619731))))

(declare-fun b!7448692 () Bool)

(assert (=> b!7448692 (= e!4446723 e!4446728)))

(declare-fun c!1377598 () Bool)

(assert (=> b!7448692 (= c!1377598 (is-EmptyLang!19476 lt!2619731))))

(assert (= (and d!2296828 c!1377596) b!7448691))

(assert (= (and d!2296828 (not c!1377596)) b!7448687))

(assert (= (and d!2296828 c!1377597) b!7448682))

(assert (= (and d!2296828 (not c!1377597)) b!7448692))

(assert (= (and b!7448692 c!1377598) b!7448681))

(assert (= (and b!7448692 (not c!1377598)) b!7448679))

(assert (= (and b!7448679 (not res!2987828)) b!7448685))

(assert (= (and b!7448685 res!2987825) b!7448689))

(assert (= (and b!7448689 res!2987827) b!7448684))

(assert (= (and b!7448684 res!2987831) b!7448688))

(assert (= (and b!7448685 (not res!2987830)) b!7448690))

(assert (= (and b!7448690 res!2987826) b!7448686))

(assert (= (and b!7448686 (not res!2987824)) b!7448683))

(assert (= (and b!7448683 (not res!2987829)) b!7448680))

(assert (= (or b!7448682 b!7448686 b!7448689) bm!684417))

(assert (=> b!7448688 m!8056060))

(assert (=> d!2296828 m!8056062))

(declare-fun m!8056086 () Bool)

(assert (=> d!2296828 m!8056086))

(assert (=> b!7448680 m!8056060))

(assert (=> b!7448684 m!8056064))

(assert (=> b!7448684 m!8056064))

(assert (=> b!7448684 m!8056066))

(assert (=> bm!684417 m!8056062))

(declare-fun m!8056088 () Bool)

(assert (=> b!7448691 m!8056088))

(assert (=> b!7448687 m!8056060))

(assert (=> b!7448687 m!8056060))

(declare-fun m!8056090 () Bool)

(assert (=> b!7448687 m!8056090))

(assert (=> b!7448687 m!8056064))

(assert (=> b!7448687 m!8056090))

(assert (=> b!7448687 m!8056064))

(declare-fun m!8056092 () Bool)

(assert (=> b!7448687 m!8056092))

(assert (=> b!7448683 m!8056064))

(assert (=> b!7448683 m!8056064))

(assert (=> b!7448683 m!8056066))

(assert (=> b!7448455 d!2296828))

(declare-fun d!2296830 () Bool)

(assert (=> d!2296830 (= (matchR!9240 lt!2619730 s!13591) (matchRSpec!4155 lt!2619730 s!13591))))

(declare-fun lt!2619753 () Unit!165787)

(declare-fun choose!57579 (Regex!19476 List!72192) Unit!165787)

(assert (=> d!2296830 (= lt!2619753 (choose!57579 lt!2619730 s!13591))))

(assert (=> d!2296830 (validRegex!9990 lt!2619730)))

(assert (=> d!2296830 (= (mainMatchTheorem!4149 lt!2619730 s!13591) lt!2619753)))

(declare-fun bs!1926846 () Bool)

(assert (= bs!1926846 d!2296830))

(assert (=> bs!1926846 m!8056026))

(assert (=> bs!1926846 m!8056022))

(declare-fun m!8056094 () Bool)

(assert (=> bs!1926846 m!8056094))

(assert (=> bs!1926846 m!8056020))

(assert (=> b!7448455 d!2296830))

(declare-fun bs!1926847 () Bool)

(declare-fun b!7448703 () Bool)

(assert (= bs!1926847 (and b!7448703 b!7448647)))

(declare-fun lambda!460708 () Int)

(assert (=> bs!1926847 (= (and (= (reg!19805 lt!2619730) (reg!19805 lt!2619731)) (= lt!2619730 lt!2619731)) (= lambda!460708 lambda!460706))))

(declare-fun bs!1926848 () Bool)

(assert (= bs!1926848 (and b!7448703 b!7448640)))

(assert (=> bs!1926848 (not (= lambda!460708 lambda!460707))))

(assert (=> b!7448703 true))

(assert (=> b!7448703 true))

(declare-fun bs!1926849 () Bool)

(declare-fun b!7448696 () Bool)

(assert (= bs!1926849 (and b!7448696 b!7448647)))

(declare-fun lambda!460709 () Int)

(assert (=> bs!1926849 (not (= lambda!460709 lambda!460706))))

(declare-fun bs!1926850 () Bool)

(assert (= bs!1926850 (and b!7448696 b!7448640)))

(assert (=> bs!1926850 (= (and (= (regOne!39464 lt!2619730) (regOne!39464 lt!2619731)) (= (regTwo!39464 lt!2619730) (regTwo!39464 lt!2619731))) (= lambda!460709 lambda!460707))))

(declare-fun bs!1926851 () Bool)

(assert (= bs!1926851 (and b!7448696 b!7448703)))

(assert (=> bs!1926851 (not (= lambda!460709 lambda!460708))))

(assert (=> b!7448696 true))

(assert (=> b!7448696 true))

(declare-fun b!7448693 () Bool)

(declare-fun e!4446734 () Bool)

(assert (=> b!7448693 (= e!4446734 (= s!13591 (Cons!72068 (c!1377553 lt!2619730) Nil!72068)))))

(declare-fun b!7448694 () Bool)

(declare-fun c!1377601 () Bool)

(assert (=> b!7448694 (= c!1377601 (is-ElementMatch!19476 lt!2619730))))

(declare-fun e!4446730 () Bool)

(assert (=> b!7448694 (= e!4446730 e!4446734)))

(declare-fun b!7448695 () Bool)

(declare-fun e!4446731 () Bool)

(declare-fun e!4446732 () Bool)

(assert (=> b!7448695 (= e!4446731 e!4446732)))

(declare-fun c!1377600 () Bool)

(assert (=> b!7448695 (= c!1377600 (is-Star!19476 lt!2619730))))

(declare-fun call!684423 () Bool)

(assert (=> b!7448696 (= e!4446732 call!684423)))

(declare-fun b!7448697 () Bool)

(declare-fun e!4446733 () Bool)

(assert (=> b!7448697 (= e!4446733 (matchRSpec!4155 (regTwo!39465 lt!2619730) s!13591))))

(declare-fun b!7448698 () Bool)

(declare-fun c!1377602 () Bool)

(assert (=> b!7448698 (= c!1377602 (is-Union!19476 lt!2619730))))

(assert (=> b!7448698 (= e!4446734 e!4446731)))

(declare-fun bm!684418 () Bool)

(assert (=> bm!684418 (= call!684423 (Exists!4099 (ite c!1377600 lambda!460708 lambda!460709)))))

(declare-fun b!7448699 () Bool)

(declare-fun res!2987834 () Bool)

(declare-fun e!4446736 () Bool)

(assert (=> b!7448699 (=> res!2987834 e!4446736)))

(declare-fun call!684424 () Bool)

(assert (=> b!7448699 (= res!2987834 call!684424)))

(assert (=> b!7448699 (= e!4446732 e!4446736)))

(declare-fun bm!684419 () Bool)

(assert (=> bm!684419 (= call!684424 (isEmpty!41090 s!13591))))

(declare-fun b!7448700 () Bool)

(declare-fun e!4446735 () Bool)

(assert (=> b!7448700 (= e!4446735 call!684424)))

(declare-fun b!7448701 () Bool)

(assert (=> b!7448701 (= e!4446735 e!4446730)))

(declare-fun res!2987832 () Bool)

(assert (=> b!7448701 (= res!2987832 (not (is-EmptyLang!19476 lt!2619730)))))

(assert (=> b!7448701 (=> (not res!2987832) (not e!4446730))))

(declare-fun d!2296832 () Bool)

(declare-fun c!1377599 () Bool)

(assert (=> d!2296832 (= c!1377599 (is-EmptyExpr!19476 lt!2619730))))

(assert (=> d!2296832 (= (matchRSpec!4155 lt!2619730 s!13591) e!4446735)))

(declare-fun b!7448702 () Bool)

(assert (=> b!7448702 (= e!4446731 e!4446733)))

(declare-fun res!2987833 () Bool)

(assert (=> b!7448702 (= res!2987833 (matchRSpec!4155 (regOne!39465 lt!2619730) s!13591))))

(assert (=> b!7448702 (=> res!2987833 e!4446733)))

(assert (=> b!7448703 (= e!4446736 call!684423)))

(assert (= (and d!2296832 c!1377599) b!7448700))

(assert (= (and d!2296832 (not c!1377599)) b!7448701))

(assert (= (and b!7448701 res!2987832) b!7448694))

(assert (= (and b!7448694 c!1377601) b!7448693))

(assert (= (and b!7448694 (not c!1377601)) b!7448698))

(assert (= (and b!7448698 c!1377602) b!7448702))

(assert (= (and b!7448698 (not c!1377602)) b!7448695))

(assert (= (and b!7448702 (not res!2987833)) b!7448697))

(assert (= (and b!7448695 c!1377600) b!7448699))

(assert (= (and b!7448695 (not c!1377600)) b!7448696))

(assert (= (and b!7448699 (not res!2987834)) b!7448703))

(assert (= (or b!7448703 b!7448696) bm!684418))

(assert (= (or b!7448700 b!7448699) bm!684419))

(declare-fun m!8056096 () Bool)

(assert (=> b!7448697 m!8056096))

(declare-fun m!8056098 () Bool)

(assert (=> bm!684418 m!8056098))

(assert (=> bm!684419 m!8056062))

(declare-fun m!8056100 () Bool)

(assert (=> b!7448702 m!8056100))

(assert (=> b!7448455 d!2296832))

(declare-fun d!2296834 () Bool)

(assert (=> d!2296834 (= (matchR!9240 lt!2619731 s!13591) (matchRSpec!4155 lt!2619731 s!13591))))

(declare-fun lt!2619754 () Unit!165787)

(assert (=> d!2296834 (= lt!2619754 (choose!57579 lt!2619731 s!13591))))

(assert (=> d!2296834 (validRegex!9990 lt!2619731)))

(assert (=> d!2296834 (= (mainMatchTheorem!4149 lt!2619731 s!13591) lt!2619754)))

(declare-fun bs!1926852 () Bool)

(assert (= bs!1926852 d!2296834))

(assert (=> bs!1926852 m!8056024))

(assert (=> bs!1926852 m!8056018))

(declare-fun m!8056102 () Bool)

(assert (=> bs!1926852 m!8056102))

(assert (=> bs!1926852 m!8056086))

(assert (=> b!7448455 d!2296834))

(declare-fun b!7448704 () Bool)

(declare-fun e!4446741 () Bool)

(declare-fun e!4446740 () Bool)

(assert (=> b!7448704 (= e!4446741 e!4446740)))

(declare-fun c!1377604 () Bool)

(assert (=> b!7448704 (= c!1377604 (is-Union!19476 r1!5845))))

(declare-fun b!7448705 () Bool)

(declare-fun e!4446743 () Bool)

(assert (=> b!7448705 (= e!4446741 e!4446743)))

(declare-fun res!2987838 () Bool)

(assert (=> b!7448705 (= res!2987838 (not (nullable!8486 (reg!19805 r1!5845))))))

(assert (=> b!7448705 (=> (not res!2987838) (not e!4446743))))

(declare-fun bm!684420 () Bool)

(declare-fun call!684426 () Bool)

(assert (=> bm!684420 (= call!684426 (validRegex!9990 (ite c!1377604 (regOne!39465 r1!5845) (regOne!39464 r1!5845))))))

(declare-fun b!7448706 () Bool)

(declare-fun call!684425 () Bool)

(assert (=> b!7448706 (= e!4446743 call!684425)))

(declare-fun b!7448707 () Bool)

(declare-fun e!4446737 () Bool)

(assert (=> b!7448707 (= e!4446737 e!4446741)))

(declare-fun c!1377603 () Bool)

(assert (=> b!7448707 (= c!1377603 (is-Star!19476 r1!5845))))

(declare-fun b!7448708 () Bool)

(declare-fun res!2987839 () Bool)

(declare-fun e!4446738 () Bool)

(assert (=> b!7448708 (=> res!2987839 e!4446738)))

(assert (=> b!7448708 (= res!2987839 (not (is-Concat!28321 r1!5845)))))

(assert (=> b!7448708 (= e!4446740 e!4446738)))

(declare-fun bm!684421 () Bool)

(declare-fun call!684427 () Bool)

(assert (=> bm!684421 (= call!684427 call!684425)))

(declare-fun bm!684422 () Bool)

(assert (=> bm!684422 (= call!684425 (validRegex!9990 (ite c!1377603 (reg!19805 r1!5845) (ite c!1377604 (regTwo!39465 r1!5845) (regTwo!39464 r1!5845)))))))

(declare-fun b!7448710 () Bool)

(declare-fun e!4446742 () Bool)

(assert (=> b!7448710 (= e!4446742 call!684427)))

(declare-fun b!7448711 () Bool)

(assert (=> b!7448711 (= e!4446738 e!4446742)))

(declare-fun res!2987837 () Bool)

(assert (=> b!7448711 (=> (not res!2987837) (not e!4446742))))

(assert (=> b!7448711 (= res!2987837 call!684426)))

(declare-fun b!7448712 () Bool)

(declare-fun e!4446739 () Bool)

(assert (=> b!7448712 (= e!4446739 call!684427)))

(declare-fun b!7448709 () Bool)

(declare-fun res!2987836 () Bool)

(assert (=> b!7448709 (=> (not res!2987836) (not e!4446739))))

(assert (=> b!7448709 (= res!2987836 call!684426)))

(assert (=> b!7448709 (= e!4446740 e!4446739)))

(declare-fun d!2296836 () Bool)

(declare-fun res!2987835 () Bool)

(assert (=> d!2296836 (=> res!2987835 e!4446737)))

(assert (=> d!2296836 (= res!2987835 (is-ElementMatch!19476 r1!5845))))

(assert (=> d!2296836 (= (validRegex!9990 r1!5845) e!4446737)))

(assert (= (and d!2296836 (not res!2987835)) b!7448707))

(assert (= (and b!7448707 c!1377603) b!7448705))

(assert (= (and b!7448707 (not c!1377603)) b!7448704))

(assert (= (and b!7448705 res!2987838) b!7448706))

(assert (= (and b!7448704 c!1377604) b!7448709))

(assert (= (and b!7448704 (not c!1377604)) b!7448708))

(assert (= (and b!7448709 res!2987836) b!7448712))

(assert (= (and b!7448708 (not res!2987839)) b!7448711))

(assert (= (and b!7448711 res!2987837) b!7448710))

(assert (= (or b!7448712 b!7448710) bm!684421))

(assert (= (or b!7448709 b!7448711) bm!684420))

(assert (= (or b!7448706 bm!684421) bm!684422))

(declare-fun m!8056104 () Bool)

(assert (=> b!7448705 m!8056104))

(declare-fun m!8056106 () Bool)

(assert (=> bm!684420 m!8056106))

(declare-fun m!8056108 () Bool)

(assert (=> bm!684422 m!8056108))

(assert (=> start!723276 d!2296836))

(declare-fun b!7448713 () Bool)

(declare-fun e!4446748 () Bool)

(declare-fun e!4446747 () Bool)

(assert (=> b!7448713 (= e!4446748 e!4446747)))

(declare-fun c!1377606 () Bool)

(assert (=> b!7448713 (= c!1377606 (is-Union!19476 r2!5783))))

(declare-fun b!7448714 () Bool)

(declare-fun e!4446750 () Bool)

(assert (=> b!7448714 (= e!4446748 e!4446750)))

(declare-fun res!2987843 () Bool)

(assert (=> b!7448714 (= res!2987843 (not (nullable!8486 (reg!19805 r2!5783))))))

(assert (=> b!7448714 (=> (not res!2987843) (not e!4446750))))

(declare-fun bm!684423 () Bool)

(declare-fun call!684429 () Bool)

(assert (=> bm!684423 (= call!684429 (validRegex!9990 (ite c!1377606 (regOne!39465 r2!5783) (regOne!39464 r2!5783))))))

(declare-fun b!7448715 () Bool)

(declare-fun call!684428 () Bool)

(assert (=> b!7448715 (= e!4446750 call!684428)))

(declare-fun b!7448716 () Bool)

(declare-fun e!4446744 () Bool)

(assert (=> b!7448716 (= e!4446744 e!4446748)))

(declare-fun c!1377605 () Bool)

(assert (=> b!7448716 (= c!1377605 (is-Star!19476 r2!5783))))

(declare-fun b!7448717 () Bool)

(declare-fun res!2987844 () Bool)

(declare-fun e!4446745 () Bool)

(assert (=> b!7448717 (=> res!2987844 e!4446745)))

(assert (=> b!7448717 (= res!2987844 (not (is-Concat!28321 r2!5783)))))

(assert (=> b!7448717 (= e!4446747 e!4446745)))

(declare-fun bm!684424 () Bool)

(declare-fun call!684430 () Bool)

(assert (=> bm!684424 (= call!684430 call!684428)))

(declare-fun bm!684425 () Bool)

(assert (=> bm!684425 (= call!684428 (validRegex!9990 (ite c!1377605 (reg!19805 r2!5783) (ite c!1377606 (regTwo!39465 r2!5783) (regTwo!39464 r2!5783)))))))

(declare-fun b!7448719 () Bool)

(declare-fun e!4446749 () Bool)

(assert (=> b!7448719 (= e!4446749 call!684430)))

(declare-fun b!7448720 () Bool)

(assert (=> b!7448720 (= e!4446745 e!4446749)))

(declare-fun res!2987842 () Bool)

(assert (=> b!7448720 (=> (not res!2987842) (not e!4446749))))

(assert (=> b!7448720 (= res!2987842 call!684429)))

(declare-fun b!7448721 () Bool)

(declare-fun e!4446746 () Bool)

(assert (=> b!7448721 (= e!4446746 call!684430)))

(declare-fun b!7448718 () Bool)

(declare-fun res!2987841 () Bool)

(assert (=> b!7448718 (=> (not res!2987841) (not e!4446746))))

(assert (=> b!7448718 (= res!2987841 call!684429)))

(assert (=> b!7448718 (= e!4446747 e!4446746)))

(declare-fun d!2296838 () Bool)

(declare-fun res!2987840 () Bool)

(assert (=> d!2296838 (=> res!2987840 e!4446744)))

(assert (=> d!2296838 (= res!2987840 (is-ElementMatch!19476 r2!5783))))

(assert (=> d!2296838 (= (validRegex!9990 r2!5783) e!4446744)))

(assert (= (and d!2296838 (not res!2987840)) b!7448716))

(assert (= (and b!7448716 c!1377605) b!7448714))

(assert (= (and b!7448716 (not c!1377605)) b!7448713))

(assert (= (and b!7448714 res!2987843) b!7448715))

(assert (= (and b!7448713 c!1377606) b!7448718))

(assert (= (and b!7448713 (not c!1377606)) b!7448717))

(assert (= (and b!7448718 res!2987841) b!7448721))

(assert (= (and b!7448717 (not res!2987844)) b!7448720))

(assert (= (and b!7448720 res!2987842) b!7448719))

(assert (= (or b!7448721 b!7448719) bm!684424))

(assert (= (or b!7448718 b!7448720) bm!684423))

(assert (= (or b!7448715 bm!684424) bm!684425))

(declare-fun m!8056110 () Bool)

(assert (=> b!7448714 m!8056110))

(declare-fun m!8056112 () Bool)

(assert (=> bm!684423 m!8056112))

(declare-fun m!8056114 () Bool)

(assert (=> bm!684425 m!8056114))

(assert (=> b!7448452 d!2296838))

(declare-fun b!7448722 () Bool)

(declare-fun e!4446755 () Bool)

(declare-fun e!4446754 () Bool)

(assert (=> b!7448722 (= e!4446755 e!4446754)))

(declare-fun c!1377608 () Bool)

(assert (=> b!7448722 (= c!1377608 (is-Union!19476 rTail!78))))

(declare-fun b!7448723 () Bool)

(declare-fun e!4446757 () Bool)

(assert (=> b!7448723 (= e!4446755 e!4446757)))

(declare-fun res!2987848 () Bool)

(assert (=> b!7448723 (= res!2987848 (not (nullable!8486 (reg!19805 rTail!78))))))

(assert (=> b!7448723 (=> (not res!2987848) (not e!4446757))))

(declare-fun bm!684426 () Bool)

(declare-fun call!684432 () Bool)

(assert (=> bm!684426 (= call!684432 (validRegex!9990 (ite c!1377608 (regOne!39465 rTail!78) (regOne!39464 rTail!78))))))

(declare-fun b!7448724 () Bool)

(declare-fun call!684431 () Bool)

(assert (=> b!7448724 (= e!4446757 call!684431)))

(declare-fun b!7448725 () Bool)

(declare-fun e!4446751 () Bool)

(assert (=> b!7448725 (= e!4446751 e!4446755)))

(declare-fun c!1377607 () Bool)

(assert (=> b!7448725 (= c!1377607 (is-Star!19476 rTail!78))))

(declare-fun b!7448726 () Bool)

(declare-fun res!2987849 () Bool)

(declare-fun e!4446752 () Bool)

(assert (=> b!7448726 (=> res!2987849 e!4446752)))

(assert (=> b!7448726 (= res!2987849 (not (is-Concat!28321 rTail!78)))))

(assert (=> b!7448726 (= e!4446754 e!4446752)))

(declare-fun bm!684427 () Bool)

(declare-fun call!684433 () Bool)

(assert (=> bm!684427 (= call!684433 call!684431)))

(declare-fun bm!684428 () Bool)

(assert (=> bm!684428 (= call!684431 (validRegex!9990 (ite c!1377607 (reg!19805 rTail!78) (ite c!1377608 (regTwo!39465 rTail!78) (regTwo!39464 rTail!78)))))))

(declare-fun b!7448728 () Bool)

(declare-fun e!4446756 () Bool)

(assert (=> b!7448728 (= e!4446756 call!684433)))

(declare-fun b!7448729 () Bool)

(assert (=> b!7448729 (= e!4446752 e!4446756)))

(declare-fun res!2987847 () Bool)

(assert (=> b!7448729 (=> (not res!2987847) (not e!4446756))))

(assert (=> b!7448729 (= res!2987847 call!684432)))

(declare-fun b!7448730 () Bool)

(declare-fun e!4446753 () Bool)

(assert (=> b!7448730 (= e!4446753 call!684433)))

(declare-fun b!7448727 () Bool)

(declare-fun res!2987846 () Bool)

(assert (=> b!7448727 (=> (not res!2987846) (not e!4446753))))

(assert (=> b!7448727 (= res!2987846 call!684432)))

(assert (=> b!7448727 (= e!4446754 e!4446753)))

(declare-fun d!2296840 () Bool)

(declare-fun res!2987845 () Bool)

(assert (=> d!2296840 (=> res!2987845 e!4446751)))

(assert (=> d!2296840 (= res!2987845 (is-ElementMatch!19476 rTail!78))))

(assert (=> d!2296840 (= (validRegex!9990 rTail!78) e!4446751)))

(assert (= (and d!2296840 (not res!2987845)) b!7448725))

(assert (= (and b!7448725 c!1377607) b!7448723))

(assert (= (and b!7448725 (not c!1377607)) b!7448722))

(assert (= (and b!7448723 res!2987848) b!7448724))

(assert (= (and b!7448722 c!1377608) b!7448727))

(assert (= (and b!7448722 (not c!1377608)) b!7448726))

(assert (= (and b!7448727 res!2987846) b!7448730))

(assert (= (and b!7448726 (not res!2987849)) b!7448729))

(assert (= (and b!7448729 res!2987847) b!7448728))

(assert (= (or b!7448730 b!7448728) bm!684427))

(assert (= (or b!7448727 b!7448729) bm!684426))

(assert (= (or b!7448724 bm!684427) bm!684428))

(declare-fun m!8056116 () Bool)

(assert (=> b!7448723 m!8056116))

(declare-fun m!8056118 () Bool)

(assert (=> bm!684426 m!8056118))

(declare-fun m!8056120 () Bool)

(assert (=> bm!684428 m!8056120))

(assert (=> b!7448458 d!2296840))

(declare-fun b!7448744 () Bool)

(declare-fun e!4446760 () Bool)

(declare-fun tp!2157706 () Bool)

(declare-fun tp!2157703 () Bool)

(assert (=> b!7448744 (= e!4446760 (and tp!2157706 tp!2157703))))

(declare-fun b!7448743 () Bool)

(declare-fun tp!2157704 () Bool)

(assert (=> b!7448743 (= e!4446760 tp!2157704)))

(declare-fun b!7448741 () Bool)

(assert (=> b!7448741 (= e!4446760 tp_is_empty!49241)))

(assert (=> b!7448451 (= tp!2157636 e!4446760)))

(declare-fun b!7448742 () Bool)

(declare-fun tp!2157705 () Bool)

(declare-fun tp!2157702 () Bool)

(assert (=> b!7448742 (= e!4446760 (and tp!2157705 tp!2157702))))

(assert (= (and b!7448451 (is-ElementMatch!19476 (regOne!39465 rTail!78))) b!7448741))

(assert (= (and b!7448451 (is-Concat!28321 (regOne!39465 rTail!78))) b!7448742))

(assert (= (and b!7448451 (is-Star!19476 (regOne!39465 rTail!78))) b!7448743))

(assert (= (and b!7448451 (is-Union!19476 (regOne!39465 rTail!78))) b!7448744))

(declare-fun b!7448748 () Bool)

(declare-fun e!4446761 () Bool)

(declare-fun tp!2157711 () Bool)

(declare-fun tp!2157708 () Bool)

(assert (=> b!7448748 (= e!4446761 (and tp!2157711 tp!2157708))))

(declare-fun b!7448747 () Bool)

(declare-fun tp!2157709 () Bool)

(assert (=> b!7448747 (= e!4446761 tp!2157709)))

(declare-fun b!7448745 () Bool)

(assert (=> b!7448745 (= e!4446761 tp_is_empty!49241)))

(assert (=> b!7448451 (= tp!2157633 e!4446761)))

(declare-fun b!7448746 () Bool)

(declare-fun tp!2157710 () Bool)

(declare-fun tp!2157707 () Bool)

(assert (=> b!7448746 (= e!4446761 (and tp!2157710 tp!2157707))))

(assert (= (and b!7448451 (is-ElementMatch!19476 (regTwo!39465 rTail!78))) b!7448745))

(assert (= (and b!7448451 (is-Concat!28321 (regTwo!39465 rTail!78))) b!7448746))

(assert (= (and b!7448451 (is-Star!19476 (regTwo!39465 rTail!78))) b!7448747))

(assert (= (and b!7448451 (is-Union!19476 (regTwo!39465 rTail!78))) b!7448748))

(declare-fun b!7448752 () Bool)

(declare-fun e!4446762 () Bool)

(declare-fun tp!2157716 () Bool)

(declare-fun tp!2157713 () Bool)

(assert (=> b!7448752 (= e!4446762 (and tp!2157716 tp!2157713))))

(declare-fun b!7448751 () Bool)

(declare-fun tp!2157714 () Bool)

(assert (=> b!7448751 (= e!4446762 tp!2157714)))

(declare-fun b!7448749 () Bool)

(assert (=> b!7448749 (= e!4446762 tp_is_empty!49241)))

(assert (=> b!7448456 (= tp!2157637 e!4446762)))

(declare-fun b!7448750 () Bool)

(declare-fun tp!2157715 () Bool)

(declare-fun tp!2157712 () Bool)

(assert (=> b!7448750 (= e!4446762 (and tp!2157715 tp!2157712))))

(assert (= (and b!7448456 (is-ElementMatch!19476 (regOne!39464 rTail!78))) b!7448749))

(assert (= (and b!7448456 (is-Concat!28321 (regOne!39464 rTail!78))) b!7448750))

(assert (= (and b!7448456 (is-Star!19476 (regOne!39464 rTail!78))) b!7448751))

(assert (= (and b!7448456 (is-Union!19476 (regOne!39464 rTail!78))) b!7448752))

(declare-fun b!7448756 () Bool)

(declare-fun e!4446763 () Bool)

(declare-fun tp!2157721 () Bool)

(declare-fun tp!2157718 () Bool)

(assert (=> b!7448756 (= e!4446763 (and tp!2157721 tp!2157718))))

(declare-fun b!7448755 () Bool)

(declare-fun tp!2157719 () Bool)

(assert (=> b!7448755 (= e!4446763 tp!2157719)))

(declare-fun b!7448753 () Bool)

(assert (=> b!7448753 (= e!4446763 tp_is_empty!49241)))

(assert (=> b!7448456 (= tp!2157640 e!4446763)))

(declare-fun b!7448754 () Bool)

(declare-fun tp!2157720 () Bool)

(declare-fun tp!2157717 () Bool)

(assert (=> b!7448754 (= e!4446763 (and tp!2157720 tp!2157717))))

(assert (= (and b!7448456 (is-ElementMatch!19476 (regTwo!39464 rTail!78))) b!7448753))

(assert (= (and b!7448456 (is-Concat!28321 (regTwo!39464 rTail!78))) b!7448754))

(assert (= (and b!7448456 (is-Star!19476 (regTwo!39464 rTail!78))) b!7448755))

(assert (= (and b!7448456 (is-Union!19476 (regTwo!39464 rTail!78))) b!7448756))

(declare-fun b!7448760 () Bool)

(declare-fun e!4446764 () Bool)

(declare-fun tp!2157726 () Bool)

(declare-fun tp!2157723 () Bool)

(assert (=> b!7448760 (= e!4446764 (and tp!2157726 tp!2157723))))

(declare-fun b!7448759 () Bool)

(declare-fun tp!2157724 () Bool)

(assert (=> b!7448759 (= e!4446764 tp!2157724)))

(declare-fun b!7448757 () Bool)

(assert (=> b!7448757 (= e!4446764 tp_is_empty!49241)))

(assert (=> b!7448457 (= tp!2157631 e!4446764)))

(declare-fun b!7448758 () Bool)

(declare-fun tp!2157725 () Bool)

(declare-fun tp!2157722 () Bool)

(assert (=> b!7448758 (= e!4446764 (and tp!2157725 tp!2157722))))

(assert (= (and b!7448457 (is-ElementMatch!19476 (regOne!39464 r2!5783))) b!7448757))

(assert (= (and b!7448457 (is-Concat!28321 (regOne!39464 r2!5783))) b!7448758))

(assert (= (and b!7448457 (is-Star!19476 (regOne!39464 r2!5783))) b!7448759))

(assert (= (and b!7448457 (is-Union!19476 (regOne!39464 r2!5783))) b!7448760))

(declare-fun b!7448764 () Bool)

(declare-fun e!4446765 () Bool)

(declare-fun tp!2157731 () Bool)

(declare-fun tp!2157728 () Bool)

(assert (=> b!7448764 (= e!4446765 (and tp!2157731 tp!2157728))))

(declare-fun b!7448763 () Bool)

(declare-fun tp!2157729 () Bool)

(assert (=> b!7448763 (= e!4446765 tp!2157729)))

(declare-fun b!7448761 () Bool)

(assert (=> b!7448761 (= e!4446765 tp_is_empty!49241)))

(assert (=> b!7448457 (= tp!2157639 e!4446765)))

(declare-fun b!7448762 () Bool)

(declare-fun tp!2157730 () Bool)

(declare-fun tp!2157727 () Bool)

(assert (=> b!7448762 (= e!4446765 (and tp!2157730 tp!2157727))))

(assert (= (and b!7448457 (is-ElementMatch!19476 (regTwo!39464 r2!5783))) b!7448761))

(assert (= (and b!7448457 (is-Concat!28321 (regTwo!39464 r2!5783))) b!7448762))

(assert (= (and b!7448457 (is-Star!19476 (regTwo!39464 r2!5783))) b!7448763))

(assert (= (and b!7448457 (is-Union!19476 (regTwo!39464 r2!5783))) b!7448764))

(declare-fun b!7448768 () Bool)

(declare-fun e!4446766 () Bool)

(declare-fun tp!2157736 () Bool)

(declare-fun tp!2157733 () Bool)

(assert (=> b!7448768 (= e!4446766 (and tp!2157736 tp!2157733))))

(declare-fun b!7448767 () Bool)

(declare-fun tp!2157734 () Bool)

(assert (=> b!7448767 (= e!4446766 tp!2157734)))

(declare-fun b!7448765 () Bool)

(assert (=> b!7448765 (= e!4446766 tp_is_empty!49241)))

(assert (=> b!7448462 (= tp!2157629 e!4446766)))

(declare-fun b!7448766 () Bool)

(declare-fun tp!2157735 () Bool)

(declare-fun tp!2157732 () Bool)

(assert (=> b!7448766 (= e!4446766 (and tp!2157735 tp!2157732))))

(assert (= (and b!7448462 (is-ElementMatch!19476 (regOne!39465 r1!5845))) b!7448765))

(assert (= (and b!7448462 (is-Concat!28321 (regOne!39465 r1!5845))) b!7448766))

(assert (= (and b!7448462 (is-Star!19476 (regOne!39465 r1!5845))) b!7448767))

(assert (= (and b!7448462 (is-Union!19476 (regOne!39465 r1!5845))) b!7448768))

(declare-fun b!7448772 () Bool)

(declare-fun e!4446767 () Bool)

(declare-fun tp!2157741 () Bool)

(declare-fun tp!2157738 () Bool)

(assert (=> b!7448772 (= e!4446767 (and tp!2157741 tp!2157738))))

(declare-fun b!7448771 () Bool)

(declare-fun tp!2157739 () Bool)

(assert (=> b!7448771 (= e!4446767 tp!2157739)))

(declare-fun b!7448769 () Bool)

(assert (=> b!7448769 (= e!4446767 tp_is_empty!49241)))

(assert (=> b!7448462 (= tp!2157634 e!4446767)))

(declare-fun b!7448770 () Bool)

(declare-fun tp!2157740 () Bool)

(declare-fun tp!2157737 () Bool)

(assert (=> b!7448770 (= e!4446767 (and tp!2157740 tp!2157737))))

(assert (= (and b!7448462 (is-ElementMatch!19476 (regTwo!39465 r1!5845))) b!7448769))

(assert (= (and b!7448462 (is-Concat!28321 (regTwo!39465 r1!5845))) b!7448770))

(assert (= (and b!7448462 (is-Star!19476 (regTwo!39465 r1!5845))) b!7448771))

(assert (= (and b!7448462 (is-Union!19476 (regTwo!39465 r1!5845))) b!7448772))

(declare-fun b!7448776 () Bool)

(declare-fun e!4446768 () Bool)

(declare-fun tp!2157746 () Bool)

(declare-fun tp!2157743 () Bool)

(assert (=> b!7448776 (= e!4446768 (and tp!2157746 tp!2157743))))

(declare-fun b!7448775 () Bool)

(declare-fun tp!2157744 () Bool)

(assert (=> b!7448775 (= e!4446768 tp!2157744)))

(declare-fun b!7448773 () Bool)

(assert (=> b!7448773 (= e!4446768 tp_is_empty!49241)))

(assert (=> b!7448460 (= tp!2157635 e!4446768)))

(declare-fun b!7448774 () Bool)

(declare-fun tp!2157745 () Bool)

(declare-fun tp!2157742 () Bool)

(assert (=> b!7448774 (= e!4446768 (and tp!2157745 tp!2157742))))

(assert (= (and b!7448460 (is-ElementMatch!19476 (reg!19805 r1!5845))) b!7448773))

(assert (= (and b!7448460 (is-Concat!28321 (reg!19805 r1!5845))) b!7448774))

(assert (= (and b!7448460 (is-Star!19476 (reg!19805 r1!5845))) b!7448775))

(assert (= (and b!7448460 (is-Union!19476 (reg!19805 r1!5845))) b!7448776))

(declare-fun b!7448781 () Bool)

(declare-fun e!4446771 () Bool)

(declare-fun tp!2157749 () Bool)

(assert (=> b!7448781 (= e!4446771 (and tp_is_empty!49241 tp!2157749))))

(assert (=> b!7448450 (= tp!2157632 e!4446771)))

(assert (= (and b!7448450 (is-Cons!72068 (t!386761 s!13591))) b!7448781))

(declare-fun b!7448785 () Bool)

(declare-fun e!4446772 () Bool)

(declare-fun tp!2157754 () Bool)

(declare-fun tp!2157751 () Bool)

(assert (=> b!7448785 (= e!4446772 (and tp!2157754 tp!2157751))))

(declare-fun b!7448784 () Bool)

(declare-fun tp!2157752 () Bool)

(assert (=> b!7448784 (= e!4446772 tp!2157752)))

(declare-fun b!7448782 () Bool)

(assert (=> b!7448782 (= e!4446772 tp_is_empty!49241)))

(assert (=> b!7448459 (= tp!2157628 e!4446772)))

(declare-fun b!7448783 () Bool)

(declare-fun tp!2157753 () Bool)

(declare-fun tp!2157750 () Bool)

(assert (=> b!7448783 (= e!4446772 (and tp!2157753 tp!2157750))))

(assert (= (and b!7448459 (is-ElementMatch!19476 (regOne!39465 r2!5783))) b!7448782))

(assert (= (and b!7448459 (is-Concat!28321 (regOne!39465 r2!5783))) b!7448783))

(assert (= (and b!7448459 (is-Star!19476 (regOne!39465 r2!5783))) b!7448784))

(assert (= (and b!7448459 (is-Union!19476 (regOne!39465 r2!5783))) b!7448785))

(declare-fun b!7448789 () Bool)

(declare-fun e!4446773 () Bool)

(declare-fun tp!2157759 () Bool)

(declare-fun tp!2157756 () Bool)

(assert (=> b!7448789 (= e!4446773 (and tp!2157759 tp!2157756))))

(declare-fun b!7448788 () Bool)

(declare-fun tp!2157757 () Bool)

(assert (=> b!7448788 (= e!4446773 tp!2157757)))

(declare-fun b!7448786 () Bool)

(assert (=> b!7448786 (= e!4446773 tp_is_empty!49241)))

(assert (=> b!7448459 (= tp!2157641 e!4446773)))

(declare-fun b!7448787 () Bool)

(declare-fun tp!2157758 () Bool)

(declare-fun tp!2157755 () Bool)

(assert (=> b!7448787 (= e!4446773 (and tp!2157758 tp!2157755))))

(assert (= (and b!7448459 (is-ElementMatch!19476 (regTwo!39465 r2!5783))) b!7448786))

(assert (= (and b!7448459 (is-Concat!28321 (regTwo!39465 r2!5783))) b!7448787))

(assert (= (and b!7448459 (is-Star!19476 (regTwo!39465 r2!5783))) b!7448788))

(assert (= (and b!7448459 (is-Union!19476 (regTwo!39465 r2!5783))) b!7448789))

(declare-fun b!7448793 () Bool)

(declare-fun e!4446774 () Bool)

(declare-fun tp!2157764 () Bool)

(declare-fun tp!2157761 () Bool)

(assert (=> b!7448793 (= e!4446774 (and tp!2157764 tp!2157761))))

(declare-fun b!7448792 () Bool)

(declare-fun tp!2157762 () Bool)

(assert (=> b!7448792 (= e!4446774 tp!2157762)))

(declare-fun b!7448790 () Bool)

(assert (=> b!7448790 (= e!4446774 tp_is_empty!49241)))

(assert (=> b!7448465 (= tp!2157630 e!4446774)))

(declare-fun b!7448791 () Bool)

(declare-fun tp!2157763 () Bool)

(declare-fun tp!2157760 () Bool)

(assert (=> b!7448791 (= e!4446774 (and tp!2157763 tp!2157760))))

(assert (= (and b!7448465 (is-ElementMatch!19476 (reg!19805 rTail!78))) b!7448790))

(assert (= (and b!7448465 (is-Concat!28321 (reg!19805 rTail!78))) b!7448791))

(assert (= (and b!7448465 (is-Star!19476 (reg!19805 rTail!78))) b!7448792))

(assert (= (and b!7448465 (is-Union!19476 (reg!19805 rTail!78))) b!7448793))

(declare-fun b!7448797 () Bool)

(declare-fun e!4446775 () Bool)

(declare-fun tp!2157769 () Bool)

(declare-fun tp!2157766 () Bool)

(assert (=> b!7448797 (= e!4446775 (and tp!2157769 tp!2157766))))

(declare-fun b!7448796 () Bool)

(declare-fun tp!2157767 () Bool)

(assert (=> b!7448796 (= e!4446775 tp!2157767)))

(declare-fun b!7448794 () Bool)

(assert (=> b!7448794 (= e!4446775 tp_is_empty!49241)))

(assert (=> b!7448454 (= tp!2157642 e!4446775)))

(declare-fun b!7448795 () Bool)

(declare-fun tp!2157768 () Bool)

(declare-fun tp!2157765 () Bool)

(assert (=> b!7448795 (= e!4446775 (and tp!2157768 tp!2157765))))

(assert (= (and b!7448454 (is-ElementMatch!19476 (reg!19805 r2!5783))) b!7448794))

(assert (= (and b!7448454 (is-Concat!28321 (reg!19805 r2!5783))) b!7448795))

(assert (= (and b!7448454 (is-Star!19476 (reg!19805 r2!5783))) b!7448796))

(assert (= (and b!7448454 (is-Union!19476 (reg!19805 r2!5783))) b!7448797))

(declare-fun b!7448801 () Bool)

(declare-fun e!4446776 () Bool)

(declare-fun tp!2157774 () Bool)

(declare-fun tp!2157771 () Bool)

(assert (=> b!7448801 (= e!4446776 (and tp!2157774 tp!2157771))))

(declare-fun b!7448800 () Bool)

(declare-fun tp!2157772 () Bool)

(assert (=> b!7448800 (= e!4446776 tp!2157772)))

(declare-fun b!7448798 () Bool)

(assert (=> b!7448798 (= e!4446776 tp_is_empty!49241)))

(assert (=> b!7448453 (= tp!2157643 e!4446776)))

(declare-fun b!7448799 () Bool)

(declare-fun tp!2157773 () Bool)

(declare-fun tp!2157770 () Bool)

(assert (=> b!7448799 (= e!4446776 (and tp!2157773 tp!2157770))))

(assert (= (and b!7448453 (is-ElementMatch!19476 (regOne!39464 r1!5845))) b!7448798))

(assert (= (and b!7448453 (is-Concat!28321 (regOne!39464 r1!5845))) b!7448799))

(assert (= (and b!7448453 (is-Star!19476 (regOne!39464 r1!5845))) b!7448800))

(assert (= (and b!7448453 (is-Union!19476 (regOne!39464 r1!5845))) b!7448801))

(declare-fun b!7448805 () Bool)

(declare-fun e!4446777 () Bool)

(declare-fun tp!2157779 () Bool)

(declare-fun tp!2157776 () Bool)

(assert (=> b!7448805 (= e!4446777 (and tp!2157779 tp!2157776))))

(declare-fun b!7448804 () Bool)

(declare-fun tp!2157777 () Bool)

(assert (=> b!7448804 (= e!4446777 tp!2157777)))

(declare-fun b!7448802 () Bool)

(assert (=> b!7448802 (= e!4446777 tp_is_empty!49241)))

(assert (=> b!7448453 (= tp!2157638 e!4446777)))

(declare-fun b!7448803 () Bool)

(declare-fun tp!2157778 () Bool)

(declare-fun tp!2157775 () Bool)

(assert (=> b!7448803 (= e!4446777 (and tp!2157778 tp!2157775))))

(assert (= (and b!7448453 (is-ElementMatch!19476 (regTwo!39464 r1!5845))) b!7448802))

(assert (= (and b!7448453 (is-Concat!28321 (regTwo!39464 r1!5845))) b!7448803))

(assert (= (and b!7448453 (is-Star!19476 (regTwo!39464 r1!5845))) b!7448804))

(assert (= (and b!7448453 (is-Union!19476 (regTwo!39464 r1!5845))) b!7448805))

(push 1)

(assert (not b!7448671))

(assert (not b!7448764))

(assert (not b!7448759))

(assert (not b!7448751))

(assert (not d!2296828))

(assert (not b!7448770))

(assert (not b!7448702))

(assert (not b!7448581))

(assert (not bm!684401))

(assert (not b!7448804))

(assert (not b!7448805))

(assert (not b!7448574))

(assert (not b!7448755))

(assert (not b!7448784))

(assert (not b!7448797))

(assert (not b!7448748))

(assert (not b!7448683))

(assert (not b!7448577))

(assert (not b!7448687))

(assert (not b!7448785))

(assert (not b!7448774))

(assert (not b!7448783))

(assert (not bm!684414))

(assert (not d!2296834))

(assert (not bm!684407))

(assert (not b!7448762))

(assert (not d!2296818))

(assert (not bm!684422))

(assert (not b!7448768))

(assert (not b!7448776))

(assert (not b!7448788))

(assert (not bm!684417))

(assert (not bm!684406))

(assert (not bm!684426))

(assert (not b!7448578))

(assert (not b!7448641))

(assert (not b!7448697))

(assert (not b!7448795))

(assert (not b!7448775))

(assert (not b!7448746))

(assert (not b!7448789))

(assert (not b!7448646))

(assert (not bm!684419))

(assert (not b!7448767))

(assert (not b!7448756))

(assert (not d!2296830))

(assert (not b!7448760))

(assert (not b!7448772))

(assert (not b!7448803))

(assert (not b!7448743))

(assert (not bm!684418))

(assert (not bm!684416))

(assert (not b!7448691))

(assert (not b!7448714))

(assert (not b!7448684))

(assert (not b!7448771))

(assert (not b!7448570))

(assert (not b!7448787))

(assert (not b!7448763))

(assert (not b!7448766))

(assert tp_is_empty!49241)

(assert (not b!7448754))

(assert (not b!7448744))

(assert (not bm!684425))

(assert (not b!7448750))

(assert (not bm!684428))

(assert (not b!7448793))

(assert (not b!7448800))

(assert (not b!7448796))

(assert (not b!7448742))

(assert (not b!7448747))

(assert (not bm!684423))

(assert (not b!7448705))

(assert (not b!7448752))

(assert (not bm!684420))

(assert (not b!7448781))

(assert (not b!7448573))

(assert (not b!7448688))

(assert (not b!7448723))

(assert (not b!7448680))

(assert (not b!7448758))

(assert (not b!7448792))

(assert (not b!7448799))

(assert (not b!7448801))

(assert (not b!7448791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

