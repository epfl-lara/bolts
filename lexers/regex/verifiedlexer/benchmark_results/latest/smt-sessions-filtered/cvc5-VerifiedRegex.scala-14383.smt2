; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749934 () Bool)

(assert start!749934)

(declare-fun b!7946526 () Bool)

(declare-fun res!3151854 () Bool)

(declare-fun e!4688208 () Bool)

(assert (=> b!7946526 (=> (not res!3151854) (not e!4688208))))

(declare-datatypes ((C!43230 0))(
  ( (C!43231 (val!32163 Int)) )
))
(declare-datatypes ((Regex!21446 0))(
  ( (ElementMatch!21446 (c!1459731 C!43230)) (Concat!30445 (regOne!43404 Regex!21446) (regTwo!43404 Regex!21446)) (EmptyExpr!21446) (Star!21446 (reg!21775 Regex!21446)) (EmptyLang!21446) (Union!21446 (regOne!43405 Regex!21446) (regTwo!43405 Regex!21446)) )
))
(declare-fun baseR!116 () Regex!21446)

(declare-datatypes ((List!74675 0))(
  ( (Nil!74551) (Cons!74551 (h!80999 C!43230) (t!390418 List!74675)) )
))
(declare-fun testedP!447 () List!74675)

(declare-fun r!24602 () Regex!21446)

(declare-fun derivative!632 (Regex!21446 List!74675) Regex!21446)

(assert (=> b!7946526 (= res!3151854 (= (derivative!632 baseR!116 testedP!447) r!24602))))

(declare-fun b!7946527 () Bool)

(declare-fun e!4688211 () Bool)

(declare-fun tp!2363882 () Bool)

(declare-fun tp!2363878 () Bool)

(assert (=> b!7946527 (= e!4688211 (and tp!2363882 tp!2363878))))

(declare-fun b!7946528 () Bool)

(declare-fun e!4688210 () Bool)

(declare-fun tp!2363873 () Bool)

(declare-fun tp!2363874 () Bool)

(assert (=> b!7946528 (= e!4688210 (and tp!2363873 tp!2363874))))

(declare-fun b!7946529 () Bool)

(declare-fun tp_is_empty!53435 () Bool)

(assert (=> b!7946529 (= e!4688211 tp_is_empty!53435)))

(declare-fun b!7946530 () Bool)

(declare-fun res!3151853 () Bool)

(assert (=> b!7946530 (=> (not res!3151853) (not e!4688208))))

(declare-fun nullable!9557 (Regex!21446) Bool)

(assert (=> b!7946530 (= res!3151853 (not (nullable!9557 r!24602)))))

(declare-fun b!7946531 () Bool)

(declare-fun e!4688209 () Bool)

(declare-fun tp!2363879 () Bool)

(assert (=> b!7946531 (= e!4688209 (and tp_is_empty!53435 tp!2363879))))

(declare-fun b!7946532 () Bool)

(assert (=> b!7946532 (= e!4688210 tp_is_empty!53435)))

(declare-fun b!7946533 () Bool)

(declare-fun tp!2363875 () Bool)

(declare-fun tp!2363876 () Bool)

(assert (=> b!7946533 (= e!4688210 (and tp!2363875 tp!2363876))))

(declare-fun b!7946534 () Bool)

(declare-fun res!3151850 () Bool)

(assert (=> b!7946534 (=> (not res!3151850) (not e!4688208))))

(declare-fun input!7927 () List!74675)

(assert (=> b!7946534 (= res!3151850 (= testedP!447 input!7927))))

(declare-fun res!3151849 () Bool)

(assert (=> start!749934 (=> (not res!3151849) (not e!4688208))))

(declare-fun validRegex!11750 (Regex!21446) Bool)

(assert (=> start!749934 (= res!3151849 (validRegex!11750 baseR!116))))

(assert (=> start!749934 e!4688208))

(assert (=> start!749934 e!4688211))

(declare-fun e!4688212 () Bool)

(assert (=> start!749934 e!4688212))

(assert (=> start!749934 e!4688209))

(assert (=> start!749934 e!4688210))

(declare-fun b!7946525 () Bool)

(assert (=> b!7946525 (= e!4688208 (not (validRegex!11750 r!24602)))))

(declare-fun b!7946535 () Bool)

(declare-fun tp!2363880 () Bool)

(declare-fun tp!2363871 () Bool)

(assert (=> b!7946535 (= e!4688211 (and tp!2363880 tp!2363871))))

(declare-fun b!7946536 () Bool)

(declare-fun tp!2363881 () Bool)

(assert (=> b!7946536 (= e!4688210 tp!2363881)))

(declare-fun b!7946537 () Bool)

(declare-fun tp!2363877 () Bool)

(assert (=> b!7946537 (= e!4688212 (and tp_is_empty!53435 tp!2363877))))

(declare-fun b!7946538 () Bool)

(declare-fun res!3151852 () Bool)

(assert (=> b!7946538 (=> (not res!3151852) (not e!4688208))))

(declare-fun isEmpty!42850 (List!74675) Bool)

(declare-datatypes ((tuple2!70554 0))(
  ( (tuple2!70555 (_1!38580 List!74675) (_2!38580 List!74675)) )
))
(declare-fun findLongestMatchInner!2227 (Regex!21446 List!74675 Int List!74675 List!74675 Int) tuple2!70554)

(declare-fun size!43382 (List!74675) Int)

(declare-fun getSuffix!3749 (List!74675 List!74675) List!74675)

(assert (=> b!7946538 (= res!3151852 (not (isEmpty!42850 (_1!38580 (findLongestMatchInner!2227 r!24602 testedP!447 (size!43382 testedP!447) (getSuffix!3749 input!7927 testedP!447) input!7927 (size!43382 input!7927))))))))

(declare-fun b!7946539 () Bool)

(declare-fun tp!2363872 () Bool)

(assert (=> b!7946539 (= e!4688211 tp!2363872)))

(declare-fun b!7946540 () Bool)

(declare-fun res!3151851 () Bool)

(assert (=> b!7946540 (=> (not res!3151851) (not e!4688208))))

(declare-fun isPrefix!6546 (List!74675 List!74675) Bool)

(assert (=> b!7946540 (= res!3151851 (isPrefix!6546 testedP!447 input!7927))))

(assert (= (and start!749934 res!3151849) b!7946540))

(assert (= (and b!7946540 res!3151851) b!7946526))

(assert (= (and b!7946526 res!3151854) b!7946538))

(assert (= (and b!7946538 res!3151852) b!7946534))

(assert (= (and b!7946534 res!3151850) b!7946530))

(assert (= (and b!7946530 res!3151853) b!7946525))

(assert (= (and start!749934 (is-ElementMatch!21446 baseR!116)) b!7946529))

(assert (= (and start!749934 (is-Concat!30445 baseR!116)) b!7946535))

(assert (= (and start!749934 (is-Star!21446 baseR!116)) b!7946539))

(assert (= (and start!749934 (is-Union!21446 baseR!116)) b!7946527))

(assert (= (and start!749934 (is-Cons!74551 testedP!447)) b!7946537))

(assert (= (and start!749934 (is-Cons!74551 input!7927)) b!7946531))

(assert (= (and start!749934 (is-ElementMatch!21446 r!24602)) b!7946532))

(assert (= (and start!749934 (is-Concat!30445 r!24602)) b!7946528))

(assert (= (and start!749934 (is-Star!21446 r!24602)) b!7946536))

(assert (= (and start!749934 (is-Union!21446 r!24602)) b!7946533))

(declare-fun m!8332634 () Bool)

(assert (=> b!7946526 m!8332634))

(declare-fun m!8332636 () Bool)

(assert (=> b!7946540 m!8332636))

(declare-fun m!8332638 () Bool)

(assert (=> start!749934 m!8332638))

(declare-fun m!8332640 () Bool)

(assert (=> b!7946530 m!8332640))

(declare-fun m!8332642 () Bool)

(assert (=> b!7946525 m!8332642))

(declare-fun m!8332644 () Bool)

(assert (=> b!7946538 m!8332644))

(declare-fun m!8332646 () Bool)

(assert (=> b!7946538 m!8332646))

(declare-fun m!8332648 () Bool)

(assert (=> b!7946538 m!8332648))

(assert (=> b!7946538 m!8332644))

(declare-fun m!8332650 () Bool)

(assert (=> b!7946538 m!8332650))

(assert (=> b!7946538 m!8332646))

(declare-fun m!8332652 () Bool)

(assert (=> b!7946538 m!8332652))

(assert (=> b!7946538 m!8332648))

(push 1)

(assert (not b!7946526))

(assert (not b!7946525))

(assert (not b!7946535))

(assert tp_is_empty!53435)

(assert (not b!7946539))

(assert (not b!7946528))

(assert (not b!7946536))

(assert (not b!7946537))

(assert (not start!749934))

(assert (not b!7946533))

(assert (not b!7946531))

(assert (not b!7946530))

(assert (not b!7946527))

(assert (not b!7946540))

(assert (not b!7946538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2375498 () Bool)

(declare-fun lt!2698378 () Regex!21446)

(assert (=> d!2375498 (validRegex!11750 lt!2698378)))

(declare-fun e!4688244 () Regex!21446)

(assert (=> d!2375498 (= lt!2698378 e!4688244)))

(declare-fun c!1459739 () Bool)

(assert (=> d!2375498 (= c!1459739 (is-Cons!74551 testedP!447))))

(assert (=> d!2375498 (validRegex!11750 baseR!116)))

(assert (=> d!2375498 (= (derivative!632 baseR!116 testedP!447) lt!2698378)))

(declare-fun b!7946611 () Bool)

(declare-fun derivativeStep!6486 (Regex!21446 C!43230) Regex!21446)

(assert (=> b!7946611 (= e!4688244 (derivative!632 (derivativeStep!6486 baseR!116 (h!80999 testedP!447)) (t!390418 testedP!447)))))

(declare-fun b!7946612 () Bool)

(assert (=> b!7946612 (= e!4688244 baseR!116)))

(assert (= (and d!2375498 c!1459739) b!7946611))

(assert (= (and d!2375498 (not c!1459739)) b!7946612))

(declare-fun m!8332674 () Bool)

(assert (=> d!2375498 m!8332674))

(assert (=> d!2375498 m!8332638))

(declare-fun m!8332676 () Bool)

(assert (=> b!7946611 m!8332676))

(assert (=> b!7946611 m!8332676))

(declare-fun m!8332678 () Bool)

(assert (=> b!7946611 m!8332678))

(assert (=> b!7946526 d!2375498))

(declare-fun d!2375500 () Bool)

(declare-fun nullableFct!3761 (Regex!21446) Bool)

(assert (=> d!2375500 (= (nullable!9557 r!24602) (nullableFct!3761 r!24602))))

(declare-fun bs!1969455 () Bool)

(assert (= bs!1969455 d!2375500))

(declare-fun m!8332680 () Bool)

(assert (=> bs!1969455 m!8332680))

(assert (=> b!7946530 d!2375500))

(declare-fun b!7946646 () Bool)

(declare-fun e!4688269 () Bool)

(declare-fun call!736528 () Bool)

(assert (=> b!7946646 (= e!4688269 call!736528)))

(declare-fun b!7946647 () Bool)

(declare-fun e!4688272 () Bool)

(declare-fun e!4688271 () Bool)

(assert (=> b!7946647 (= e!4688272 e!4688271)))

(declare-fun c!1459749 () Bool)

(assert (=> b!7946647 (= c!1459749 (is-Union!21446 r!24602))))

(declare-fun b!7946648 () Bool)

(declare-fun e!4688273 () Bool)

(assert (=> b!7946648 (= e!4688273 e!4688272)))

(declare-fun c!1459750 () Bool)

(assert (=> b!7946648 (= c!1459750 (is-Star!21446 r!24602))))

(declare-fun b!7946649 () Bool)

(declare-fun e!4688274 () Bool)

(declare-fun call!736529 () Bool)

(assert (=> b!7946649 (= e!4688274 call!736529)))

(declare-fun b!7946650 () Bool)

(declare-fun res!3151898 () Bool)

(assert (=> b!7946650 (=> (not res!3151898) (not e!4688269))))

(declare-fun call!736530 () Bool)

(assert (=> b!7946650 (= res!3151898 call!736530)))

(assert (=> b!7946650 (= e!4688271 e!4688269)))

(declare-fun b!7946651 () Bool)

(assert (=> b!7946651 (= e!4688272 e!4688274)))

(declare-fun res!3151899 () Bool)

(assert (=> b!7946651 (= res!3151899 (not (nullable!9557 (reg!21775 r!24602))))))

(assert (=> b!7946651 (=> (not res!3151899) (not e!4688274))))

(declare-fun b!7946652 () Bool)

(declare-fun e!4688270 () Bool)

(assert (=> b!7946652 (= e!4688270 call!736528)))

(declare-fun d!2375502 () Bool)

(declare-fun res!3151901 () Bool)

(assert (=> d!2375502 (=> res!3151901 e!4688273)))

(assert (=> d!2375502 (= res!3151901 (is-ElementMatch!21446 r!24602))))

(assert (=> d!2375502 (= (validRegex!11750 r!24602) e!4688273)))

(declare-fun b!7946653 () Bool)

(declare-fun res!3151902 () Bool)

(declare-fun e!4688275 () Bool)

(assert (=> b!7946653 (=> res!3151902 e!4688275)))

(assert (=> b!7946653 (= res!3151902 (not (is-Concat!30445 r!24602)))))

(assert (=> b!7946653 (= e!4688271 e!4688275)))

(declare-fun bm!736523 () Bool)

(assert (=> bm!736523 (= call!736530 call!736529)))

(declare-fun bm!736524 () Bool)

(assert (=> bm!736524 (= call!736528 (validRegex!11750 (ite c!1459749 (regTwo!43405 r!24602) (regTwo!43404 r!24602))))))

(declare-fun bm!736525 () Bool)

(assert (=> bm!736525 (= call!736529 (validRegex!11750 (ite c!1459750 (reg!21775 r!24602) (ite c!1459749 (regOne!43405 r!24602) (regOne!43404 r!24602)))))))

(declare-fun b!7946654 () Bool)

(assert (=> b!7946654 (= e!4688275 e!4688270)))

(declare-fun res!3151900 () Bool)

(assert (=> b!7946654 (=> (not res!3151900) (not e!4688270))))

(assert (=> b!7946654 (= res!3151900 call!736530)))

(assert (= (and d!2375502 (not res!3151901)) b!7946648))

(assert (= (and b!7946648 c!1459750) b!7946651))

(assert (= (and b!7946648 (not c!1459750)) b!7946647))

(assert (= (and b!7946651 res!3151899) b!7946649))

(assert (= (and b!7946647 c!1459749) b!7946650))

(assert (= (and b!7946647 (not c!1459749)) b!7946653))

(assert (= (and b!7946650 res!3151898) b!7946646))

(assert (= (and b!7946653 (not res!3151902)) b!7946654))

(assert (= (and b!7946654 res!3151900) b!7946652))

(assert (= (or b!7946646 b!7946652) bm!736524))

(assert (= (or b!7946650 b!7946654) bm!736523))

(assert (= (or b!7946649 bm!736523) bm!736525))

(declare-fun m!8332696 () Bool)

(assert (=> b!7946651 m!8332696))

(declare-fun m!8332698 () Bool)

(assert (=> bm!736524 m!8332698))

(declare-fun m!8332700 () Bool)

(assert (=> bm!736525 m!8332700))

(assert (=> b!7946525 d!2375502))

(declare-fun b!7946688 () Bool)

(declare-fun e!4688301 () Bool)

(declare-fun e!4688302 () Bool)

(assert (=> b!7946688 (= e!4688301 e!4688302)))

(declare-fun res!3151928 () Bool)

(assert (=> b!7946688 (=> (not res!3151928) (not e!4688302))))

(assert (=> b!7946688 (= res!3151928 (not (is-Nil!74551 input!7927)))))

(declare-fun d!2375510 () Bool)

(declare-fun e!4688300 () Bool)

(assert (=> d!2375510 e!4688300))

(declare-fun res!3151929 () Bool)

(assert (=> d!2375510 (=> res!3151929 e!4688300)))

(declare-fun lt!2698389 () Bool)

(assert (=> d!2375510 (= res!3151929 (not lt!2698389))))

(assert (=> d!2375510 (= lt!2698389 e!4688301)))

(declare-fun res!3151930 () Bool)

(assert (=> d!2375510 (=> res!3151930 e!4688301)))

(assert (=> d!2375510 (= res!3151930 (is-Nil!74551 testedP!447))))

(assert (=> d!2375510 (= (isPrefix!6546 testedP!447 input!7927) lt!2698389)))

(declare-fun b!7946689 () Bool)

(declare-fun res!3151931 () Bool)

(assert (=> b!7946689 (=> (not res!3151931) (not e!4688302))))

(declare-fun head!16208 (List!74675) C!43230)

(assert (=> b!7946689 (= res!3151931 (= (head!16208 testedP!447) (head!16208 input!7927)))))

(declare-fun b!7946691 () Bool)

(assert (=> b!7946691 (= e!4688300 (>= (size!43382 input!7927) (size!43382 testedP!447)))))

(declare-fun b!7946690 () Bool)

(declare-fun tail!15751 (List!74675) List!74675)

(assert (=> b!7946690 (= e!4688302 (isPrefix!6546 (tail!15751 testedP!447) (tail!15751 input!7927)))))

(assert (= (and d!2375510 (not res!3151930)) b!7946688))

(assert (= (and b!7946688 res!3151928) b!7946689))

(assert (= (and b!7946689 res!3151931) b!7946690))

(assert (= (and d!2375510 (not res!3151929)) b!7946691))

(declare-fun m!8332718 () Bool)

(assert (=> b!7946689 m!8332718))

(declare-fun m!8332720 () Bool)

(assert (=> b!7946689 m!8332720))

(assert (=> b!7946691 m!8332644))

(assert (=> b!7946691 m!8332646))

(declare-fun m!8332722 () Bool)

(assert (=> b!7946690 m!8332722))

(declare-fun m!8332724 () Bool)

(assert (=> b!7946690 m!8332724))

(assert (=> b!7946690 m!8332722))

(assert (=> b!7946690 m!8332724))

(declare-fun m!8332726 () Bool)

(assert (=> b!7946690 m!8332726))

(assert (=> b!7946540 d!2375510))

(declare-fun d!2375516 () Bool)

(declare-fun lt!2698393 () Int)

(assert (=> d!2375516 (>= lt!2698393 0)))

(declare-fun e!4688306 () Int)

(assert (=> d!2375516 (= lt!2698393 e!4688306)))

(declare-fun c!1459758 () Bool)

(assert (=> d!2375516 (= c!1459758 (is-Nil!74551 input!7927))))

(assert (=> d!2375516 (= (size!43382 input!7927) lt!2698393)))

(declare-fun b!7946698 () Bool)

(assert (=> b!7946698 (= e!4688306 0)))

(declare-fun b!7946699 () Bool)

(assert (=> b!7946699 (= e!4688306 (+ 1 (size!43382 (t!390418 input!7927))))))

(assert (= (and d!2375516 c!1459758) b!7946698))

(assert (= (and d!2375516 (not c!1459758)) b!7946699))

(declare-fun m!8332730 () Bool)

(assert (=> b!7946699 m!8332730))

(assert (=> b!7946538 d!2375516))

(declare-fun d!2375520 () Bool)

(declare-fun lt!2698399 () List!74675)

(declare-fun ++!18324 (List!74675 List!74675) List!74675)

(assert (=> d!2375520 (= (++!18324 testedP!447 lt!2698399) input!7927)))

(declare-fun e!4688312 () List!74675)

(assert (=> d!2375520 (= lt!2698399 e!4688312)))

(declare-fun c!1459764 () Bool)

(assert (=> d!2375520 (= c!1459764 (is-Cons!74551 testedP!447))))

(assert (=> d!2375520 (>= (size!43382 input!7927) (size!43382 testedP!447))))

(assert (=> d!2375520 (= (getSuffix!3749 input!7927 testedP!447) lt!2698399)))

(declare-fun b!7946710 () Bool)

(assert (=> b!7946710 (= e!4688312 (getSuffix!3749 (tail!15751 input!7927) (t!390418 testedP!447)))))

(declare-fun b!7946711 () Bool)

(assert (=> b!7946711 (= e!4688312 input!7927)))

(assert (= (and d!2375520 c!1459764) b!7946710))

(assert (= (and d!2375520 (not c!1459764)) b!7946711))

(declare-fun m!8332736 () Bool)

(assert (=> d!2375520 m!8332736))

(assert (=> d!2375520 m!8332644))

(assert (=> d!2375520 m!8332646))

(assert (=> b!7946710 m!8332724))

(assert (=> b!7946710 m!8332724))

(declare-fun m!8332738 () Bool)

(assert (=> b!7946710 m!8332738))

(assert (=> b!7946538 d!2375520))

(declare-fun d!2375526 () Bool)

(assert (=> d!2375526 (= (isEmpty!42850 (_1!38580 (findLongestMatchInner!2227 r!24602 testedP!447 (size!43382 testedP!447) (getSuffix!3749 input!7927 testedP!447) input!7927 (size!43382 input!7927)))) (is-Nil!74551 (_1!38580 (findLongestMatchInner!2227 r!24602 testedP!447 (size!43382 testedP!447) (getSuffix!3749 input!7927 testedP!447) input!7927 (size!43382 input!7927)))))))

(assert (=> b!7946538 d!2375526))

(declare-fun d!2375530 () Bool)

(declare-fun lt!2698401 () Int)

(assert (=> d!2375530 (>= lt!2698401 0)))

(declare-fun e!4688314 () Int)

(assert (=> d!2375530 (= lt!2698401 e!4688314)))

(declare-fun c!1459766 () Bool)

(assert (=> d!2375530 (= c!1459766 (is-Nil!74551 testedP!447))))

(assert (=> d!2375530 (= (size!43382 testedP!447) lt!2698401)))

(declare-fun b!7946714 () Bool)

(assert (=> b!7946714 (= e!4688314 0)))

(declare-fun b!7946715 () Bool)

(assert (=> b!7946715 (= e!4688314 (+ 1 (size!43382 (t!390418 testedP!447))))))

(assert (= (and d!2375530 c!1459766) b!7946714))

(assert (= (and d!2375530 (not c!1459766)) b!7946715))

(declare-fun m!8332742 () Bool)

(assert (=> b!7946715 m!8332742))

(assert (=> b!7946538 d!2375530))

(declare-fun bm!736545 () Bool)

(declare-fun call!736550 () C!43230)

(assert (=> bm!736545 (= call!736550 (head!16208 (getSuffix!3749 input!7927 testedP!447)))))

(declare-fun b!7946744 () Bool)

(declare-fun e!4688332 () tuple2!70554)

(declare-fun e!4688333 () tuple2!70554)

(assert (=> b!7946744 (= e!4688332 e!4688333)))

(declare-fun lt!2698461 () tuple2!70554)

(declare-fun call!736556 () tuple2!70554)

(assert (=> b!7946744 (= lt!2698461 call!736556)))

(declare-fun c!1459780 () Bool)

(assert (=> b!7946744 (= c!1459780 (isEmpty!42850 (_1!38580 lt!2698461)))))

(declare-fun b!7946745 () Bool)

(declare-fun e!4688331 () tuple2!70554)

(assert (=> b!7946745 (= e!4688331 (tuple2!70555 Nil!74551 input!7927))))

(declare-fun bm!736546 () Bool)

(declare-fun call!736551 () Bool)

(assert (=> bm!736546 (= call!736551 (nullable!9557 r!24602))))

(declare-fun d!2375532 () Bool)

(declare-fun e!4688336 () Bool)

(assert (=> d!2375532 e!4688336))

(declare-fun res!3151936 () Bool)

(assert (=> d!2375532 (=> (not res!3151936) (not e!4688336))))

(declare-fun lt!2698480 () tuple2!70554)

(assert (=> d!2375532 (= res!3151936 (= (++!18324 (_1!38580 lt!2698480) (_2!38580 lt!2698480)) input!7927))))

(assert (=> d!2375532 (= lt!2698480 e!4688331)))

(declare-fun c!1459779 () Bool)

(declare-fun lostCause!1951 (Regex!21446) Bool)

(assert (=> d!2375532 (= c!1459779 (lostCause!1951 r!24602))))

(declare-datatypes ((Unit!169730 0))(
  ( (Unit!169731) )
))
(declare-fun lt!2698473 () Unit!169730)

(declare-fun Unit!169732 () Unit!169730)

(assert (=> d!2375532 (= lt!2698473 Unit!169732)))

(assert (=> d!2375532 (= (getSuffix!3749 input!7927 testedP!447) (getSuffix!3749 input!7927 testedP!447))))

(declare-fun lt!2698459 () Unit!169730)

(declare-fun lt!2698465 () Unit!169730)

(assert (=> d!2375532 (= lt!2698459 lt!2698465)))

(declare-fun lt!2698470 () List!74675)

(assert (=> d!2375532 (= (getSuffix!3749 input!7927 testedP!447) lt!2698470)))

(declare-fun lemmaSamePrefixThenSameSuffix!2967 (List!74675 List!74675 List!74675 List!74675 List!74675) Unit!169730)

(assert (=> d!2375532 (= lt!2698465 (lemmaSamePrefixThenSameSuffix!2967 testedP!447 (getSuffix!3749 input!7927 testedP!447) testedP!447 lt!2698470 input!7927))))

(assert (=> d!2375532 (= lt!2698470 (getSuffix!3749 input!7927 testedP!447))))

(declare-fun lt!2698485 () Unit!169730)

(declare-fun lt!2698463 () Unit!169730)

(assert (=> d!2375532 (= lt!2698485 lt!2698463)))

(assert (=> d!2375532 (isPrefix!6546 testedP!447 (++!18324 testedP!447 (getSuffix!3749 input!7927 testedP!447)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3829 (List!74675 List!74675) Unit!169730)

(assert (=> d!2375532 (= lt!2698463 (lemmaConcatTwoListThenFirstIsPrefix!3829 testedP!447 (getSuffix!3749 input!7927 testedP!447)))))

(assert (=> d!2375532 (validRegex!11750 r!24602)))

(assert (=> d!2375532 (= (findLongestMatchInner!2227 r!24602 testedP!447 (size!43382 testedP!447) (getSuffix!3749 input!7927 testedP!447) input!7927 (size!43382 input!7927)) lt!2698480)))

(declare-fun b!7946746 () Bool)

(declare-fun c!1459783 () Bool)

(assert (=> b!7946746 (= c!1459783 call!736551)))

(declare-fun lt!2698474 () Unit!169730)

(declare-fun lt!2698464 () Unit!169730)

(assert (=> b!7946746 (= lt!2698474 lt!2698464)))

(assert (=> b!7946746 (= input!7927 testedP!447)))

(declare-fun call!736552 () Unit!169730)

(assert (=> b!7946746 (= lt!2698464 call!736552)))

(declare-fun lt!2698476 () Unit!169730)

(declare-fun lt!2698466 () Unit!169730)

(assert (=> b!7946746 (= lt!2698476 lt!2698466)))

(declare-fun call!736555 () Bool)

(assert (=> b!7946746 call!736555))

(declare-fun call!736557 () Unit!169730)

(assert (=> b!7946746 (= lt!2698466 call!736557)))

(declare-fun e!4688337 () tuple2!70554)

(declare-fun e!4688335 () tuple2!70554)

(assert (=> b!7946746 (= e!4688337 e!4688335)))

(declare-fun b!7946747 () Bool)

(assert (=> b!7946747 (= e!4688335 (tuple2!70555 Nil!74551 input!7927))))

(declare-fun b!7946748 () Bool)

(declare-fun e!4688334 () Unit!169730)

(declare-fun Unit!169733 () Unit!169730)

(assert (=> b!7946748 (= e!4688334 Unit!169733)))

(declare-fun lt!2698475 () Unit!169730)

(assert (=> b!7946748 (= lt!2698475 call!736557)))

(assert (=> b!7946748 call!736555))

(declare-fun lt!2698478 () Unit!169730)

(assert (=> b!7946748 (= lt!2698478 lt!2698475)))

(declare-fun lt!2698460 () Unit!169730)

(assert (=> b!7946748 (= lt!2698460 call!736552)))

(assert (=> b!7946748 (= input!7927 testedP!447)))

(declare-fun lt!2698467 () Unit!169730)

(assert (=> b!7946748 (= lt!2698467 lt!2698460)))

(assert (=> b!7946748 false))

(declare-fun b!7946749 () Bool)

(declare-fun e!4688338 () Bool)

(assert (=> b!7946749 (= e!4688338 (>= (size!43382 (_1!38580 lt!2698480)) (size!43382 testedP!447)))))

(declare-fun b!7946750 () Bool)

(assert (=> b!7946750 (= e!4688335 (tuple2!70555 testedP!447 Nil!74551))))

(declare-fun bm!736547 () Bool)

(declare-fun lt!2698468 () List!74675)

(declare-fun call!736554 () List!74675)

(declare-fun call!736553 () Regex!21446)

(assert (=> bm!736547 (= call!736556 (findLongestMatchInner!2227 call!736553 lt!2698468 (+ (size!43382 testedP!447) 1) call!736554 input!7927 (size!43382 input!7927)))))

(declare-fun b!7946751 () Bool)

(assert (=> b!7946751 (= e!4688333 lt!2698461)))

(declare-fun bm!736548 () Bool)

(assert (=> bm!736548 (= call!736553 (derivativeStep!6486 r!24602 call!736550))))

(declare-fun b!7946752 () Bool)

(assert (=> b!7946752 (= e!4688331 e!4688337)))

(declare-fun c!1459782 () Bool)

(assert (=> b!7946752 (= c!1459782 (= (size!43382 testedP!447) (size!43382 input!7927)))))

(declare-fun b!7946753 () Bool)

(declare-fun Unit!169734 () Unit!169730)

(assert (=> b!7946753 (= e!4688334 Unit!169734)))

(declare-fun b!7946754 () Bool)

(declare-fun c!1459781 () Bool)

(assert (=> b!7946754 (= c!1459781 call!736551)))

(declare-fun lt!2698472 () Unit!169730)

(declare-fun lt!2698479 () Unit!169730)

(assert (=> b!7946754 (= lt!2698472 lt!2698479)))

(declare-fun lt!2698482 () C!43230)

(declare-fun lt!2698481 () List!74675)

(assert (=> b!7946754 (= (++!18324 (++!18324 testedP!447 (Cons!74551 lt!2698482 Nil!74551)) lt!2698481) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3507 (List!74675 C!43230 List!74675 List!74675) Unit!169730)

(assert (=> b!7946754 (= lt!2698479 (lemmaMoveElementToOtherListKeepsConcatEq!3507 testedP!447 lt!2698482 lt!2698481 input!7927))))

(assert (=> b!7946754 (= lt!2698481 (tail!15751 (getSuffix!3749 input!7927 testedP!447)))))

(assert (=> b!7946754 (= lt!2698482 (head!16208 (getSuffix!3749 input!7927 testedP!447)))))

(declare-fun lt!2698484 () Unit!169730)

(declare-fun lt!2698469 () Unit!169730)

(assert (=> b!7946754 (= lt!2698484 lt!2698469)))

(assert (=> b!7946754 (isPrefix!6546 (++!18324 testedP!447 (Cons!74551 (head!16208 (getSuffix!3749 input!7927 testedP!447)) Nil!74551)) input!7927)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1285 (List!74675 List!74675) Unit!169730)

(assert (=> b!7946754 (= lt!2698469 (lemmaAddHeadSuffixToPrefixStillPrefix!1285 testedP!447 input!7927))))

(declare-fun lt!2698458 () Unit!169730)

(declare-fun lt!2698483 () Unit!169730)

(assert (=> b!7946754 (= lt!2698458 lt!2698483)))

(assert (=> b!7946754 (= lt!2698483 (lemmaAddHeadSuffixToPrefixStillPrefix!1285 testedP!447 input!7927))))

(assert (=> b!7946754 (= lt!2698468 (++!18324 testedP!447 (Cons!74551 (head!16208 (getSuffix!3749 input!7927 testedP!447)) Nil!74551)))))

(declare-fun lt!2698471 () Unit!169730)

(assert (=> b!7946754 (= lt!2698471 e!4688334)))

(declare-fun c!1459784 () Bool)

(assert (=> b!7946754 (= c!1459784 (= (size!43382 testedP!447) (size!43382 input!7927)))))

(declare-fun lt!2698462 () Unit!169730)

(declare-fun lt!2698477 () Unit!169730)

(assert (=> b!7946754 (= lt!2698462 lt!2698477)))

(assert (=> b!7946754 (<= (size!43382 testedP!447) (size!43382 input!7927))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1065 (List!74675 List!74675) Unit!169730)

(assert (=> b!7946754 (= lt!2698477 (lemmaIsPrefixThenSmallerEqSize!1065 testedP!447 input!7927))))

(assert (=> b!7946754 (= e!4688337 e!4688332)))

(declare-fun b!7946755 () Bool)

(assert (=> b!7946755 (= e!4688332 call!736556)))

(declare-fun b!7946756 () Bool)

(assert (=> b!7946756 (= e!4688336 e!4688338)))

(declare-fun res!3151937 () Bool)

(assert (=> b!7946756 (=> res!3151937 e!4688338)))

(assert (=> b!7946756 (= res!3151937 (isEmpty!42850 (_1!38580 lt!2698480)))))

(declare-fun bm!736549 () Bool)

(assert (=> bm!736549 (= call!736555 (isPrefix!6546 input!7927 input!7927))))

(declare-fun bm!736550 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1600 (List!74675 List!74675 List!74675) Unit!169730)

(assert (=> bm!736550 (= call!736552 (lemmaIsPrefixSameLengthThenSameList!1600 input!7927 testedP!447 input!7927))))

(declare-fun bm!736551 () Bool)

(assert (=> bm!736551 (= call!736554 (tail!15751 (getSuffix!3749 input!7927 testedP!447)))))

(declare-fun bm!736552 () Bool)

(declare-fun lemmaIsPrefixRefl!4018 (List!74675 List!74675) Unit!169730)

(assert (=> bm!736552 (= call!736557 (lemmaIsPrefixRefl!4018 input!7927 input!7927))))

(declare-fun b!7946757 () Bool)

(assert (=> b!7946757 (= e!4688333 (tuple2!70555 testedP!447 (getSuffix!3749 input!7927 testedP!447)))))

(assert (= (and d!2375532 c!1459779) b!7946745))

(assert (= (and d!2375532 (not c!1459779)) b!7946752))

(assert (= (and b!7946752 c!1459782) b!7946746))

(assert (= (and b!7946752 (not c!1459782)) b!7946754))

(assert (= (and b!7946746 c!1459783) b!7946750))

(assert (= (and b!7946746 (not c!1459783)) b!7946747))

(assert (= (and b!7946754 c!1459784) b!7946748))

(assert (= (and b!7946754 (not c!1459784)) b!7946753))

(assert (= (and b!7946754 c!1459781) b!7946744))

(assert (= (and b!7946754 (not c!1459781)) b!7946755))

(assert (= (and b!7946744 c!1459780) b!7946757))

(assert (= (and b!7946744 (not c!1459780)) b!7946751))

(assert (= (or b!7946744 b!7946755) bm!736545))

(assert (= (or b!7946744 b!7946755) bm!736551))

(assert (= (or b!7946744 b!7946755) bm!736548))

(assert (= (or b!7946744 b!7946755) bm!736547))

(assert (= (or b!7946746 b!7946754) bm!736546))

(assert (= (or b!7946746 b!7946748) bm!736550))

(assert (= (or b!7946746 b!7946748) bm!736552))

(assert (= (or b!7946746 b!7946748) bm!736549))

(assert (= (and d!2375532 res!3151936) b!7946756))

(assert (= (and b!7946756 (not res!3151937)) b!7946749))

(assert (=> bm!736551 m!8332648))

(declare-fun m!8332744 () Bool)

(assert (=> bm!736551 m!8332744))

(declare-fun m!8332746 () Bool)

(assert (=> bm!736548 m!8332746))

(assert (=> bm!736546 m!8332640))

(declare-fun m!8332748 () Bool)

(assert (=> b!7946756 m!8332748))

(assert (=> d!2375532 m!8332648))

(assert (=> d!2375532 m!8332642))

(assert (=> d!2375532 m!8332648))

(declare-fun m!8332750 () Bool)

(assert (=> d!2375532 m!8332750))

(assert (=> d!2375532 m!8332648))

(declare-fun m!8332752 () Bool)

(assert (=> d!2375532 m!8332752))

(assert (=> d!2375532 m!8332648))

(declare-fun m!8332754 () Bool)

(assert (=> d!2375532 m!8332754))

(assert (=> d!2375532 m!8332752))

(declare-fun m!8332756 () Bool)

(assert (=> d!2375532 m!8332756))

(declare-fun m!8332758 () Bool)

(assert (=> d!2375532 m!8332758))

(declare-fun m!8332760 () Bool)

(assert (=> d!2375532 m!8332760))

(declare-fun m!8332762 () Bool)

(assert (=> bm!736549 m!8332762))

(assert (=> bm!736547 m!8332644))

(declare-fun m!8332764 () Bool)

(assert (=> bm!736547 m!8332764))

(declare-fun m!8332766 () Bool)

(assert (=> bm!736552 m!8332766))

(assert (=> b!7946754 m!8332648))

(assert (=> b!7946754 m!8332648))

(declare-fun m!8332768 () Bool)

(assert (=> b!7946754 m!8332768))

(assert (=> b!7946754 m!8332648))

(assert (=> b!7946754 m!8332744))

(declare-fun m!8332770 () Bool)

(assert (=> b!7946754 m!8332770))

(declare-fun m!8332772 () Bool)

(assert (=> b!7946754 m!8332772))

(declare-fun m!8332774 () Bool)

(assert (=> b!7946754 m!8332774))

(assert (=> b!7946754 m!8332770))

(assert (=> b!7946754 m!8332646))

(assert (=> b!7946754 m!8332644))

(declare-fun m!8332776 () Bool)

(assert (=> b!7946754 m!8332776))

(declare-fun m!8332778 () Bool)

(assert (=> b!7946754 m!8332778))

(assert (=> b!7946754 m!8332778))

(declare-fun m!8332780 () Bool)

(assert (=> b!7946754 m!8332780))

(assert (=> b!7946754 m!8332770))

(assert (=> b!7946754 m!8332648))

(assert (=> b!7946754 m!8332768))

(declare-fun m!8332782 () Bool)

(assert (=> b!7946754 m!8332782))

(assert (=> bm!736545 m!8332648))

(assert (=> bm!736545 m!8332768))

(declare-fun m!8332784 () Bool)

(assert (=> bm!736550 m!8332784))

(declare-fun m!8332786 () Bool)

(assert (=> b!7946744 m!8332786))

(declare-fun m!8332788 () Bool)

(assert (=> b!7946749 m!8332788))

(assert (=> b!7946749 m!8332646))

(assert (=> b!7946538 d!2375532))

(declare-fun b!7946758 () Bool)

(declare-fun e!4688339 () Bool)

(declare-fun call!736558 () Bool)

(assert (=> b!7946758 (= e!4688339 call!736558)))

(declare-fun b!7946759 () Bool)

(declare-fun e!4688342 () Bool)

(declare-fun e!4688341 () Bool)

(assert (=> b!7946759 (= e!4688342 e!4688341)))

(declare-fun c!1459785 () Bool)

(assert (=> b!7946759 (= c!1459785 (is-Union!21446 baseR!116))))

(declare-fun b!7946760 () Bool)

(declare-fun e!4688343 () Bool)

(assert (=> b!7946760 (= e!4688343 e!4688342)))

(declare-fun c!1459786 () Bool)

(assert (=> b!7946760 (= c!1459786 (is-Star!21446 baseR!116))))

(declare-fun b!7946761 () Bool)

(declare-fun e!4688344 () Bool)

(declare-fun call!736559 () Bool)

(assert (=> b!7946761 (= e!4688344 call!736559)))

(declare-fun b!7946762 () Bool)

(declare-fun res!3151938 () Bool)

(assert (=> b!7946762 (=> (not res!3151938) (not e!4688339))))

(declare-fun call!736560 () Bool)

(assert (=> b!7946762 (= res!3151938 call!736560)))

(assert (=> b!7946762 (= e!4688341 e!4688339)))

(declare-fun b!7946763 () Bool)

(assert (=> b!7946763 (= e!4688342 e!4688344)))

(declare-fun res!3151939 () Bool)

(assert (=> b!7946763 (= res!3151939 (not (nullable!9557 (reg!21775 baseR!116))))))

(assert (=> b!7946763 (=> (not res!3151939) (not e!4688344))))

(declare-fun b!7946764 () Bool)

(declare-fun e!4688340 () Bool)

(assert (=> b!7946764 (= e!4688340 call!736558)))

(declare-fun d!2375534 () Bool)

(declare-fun res!3151941 () Bool)

(assert (=> d!2375534 (=> res!3151941 e!4688343)))

(assert (=> d!2375534 (= res!3151941 (is-ElementMatch!21446 baseR!116))))

(assert (=> d!2375534 (= (validRegex!11750 baseR!116) e!4688343)))

(declare-fun b!7946765 () Bool)

(declare-fun res!3151942 () Bool)

(declare-fun e!4688345 () Bool)

(assert (=> b!7946765 (=> res!3151942 e!4688345)))

(assert (=> b!7946765 (= res!3151942 (not (is-Concat!30445 baseR!116)))))

(assert (=> b!7946765 (= e!4688341 e!4688345)))

(declare-fun bm!736553 () Bool)

(assert (=> bm!736553 (= call!736560 call!736559)))

(declare-fun bm!736554 () Bool)

(assert (=> bm!736554 (= call!736558 (validRegex!11750 (ite c!1459785 (regTwo!43405 baseR!116) (regTwo!43404 baseR!116))))))

(declare-fun bm!736555 () Bool)

(assert (=> bm!736555 (= call!736559 (validRegex!11750 (ite c!1459786 (reg!21775 baseR!116) (ite c!1459785 (regOne!43405 baseR!116) (regOne!43404 baseR!116)))))))

(declare-fun b!7946766 () Bool)

(assert (=> b!7946766 (= e!4688345 e!4688340)))

(declare-fun res!3151940 () Bool)

(assert (=> b!7946766 (=> (not res!3151940) (not e!4688340))))

(assert (=> b!7946766 (= res!3151940 call!736560)))

(assert (= (and d!2375534 (not res!3151941)) b!7946760))

(assert (= (and b!7946760 c!1459786) b!7946763))

(assert (= (and b!7946760 (not c!1459786)) b!7946759))

(assert (= (and b!7946763 res!3151939) b!7946761))

(assert (= (and b!7946759 c!1459785) b!7946762))

(assert (= (and b!7946759 (not c!1459785)) b!7946765))

(assert (= (and b!7946762 res!3151938) b!7946758))

(assert (= (and b!7946765 (not res!3151942)) b!7946766))

(assert (= (and b!7946766 res!3151940) b!7946764))

(assert (= (or b!7946758 b!7946764) bm!736554))

(assert (= (or b!7946762 b!7946766) bm!736553))

(assert (= (or b!7946761 bm!736553) bm!736555))

(declare-fun m!8332790 () Bool)

(assert (=> b!7946763 m!8332790))

(declare-fun m!8332792 () Bool)

(assert (=> bm!736554 m!8332792))

(declare-fun m!8332794 () Bool)

(assert (=> bm!736555 m!8332794))

(assert (=> start!749934 d!2375534))

(declare-fun b!7946771 () Bool)

(declare-fun e!4688348 () Bool)

(declare-fun tp!2363921 () Bool)

(assert (=> b!7946771 (= e!4688348 (and tp_is_empty!53435 tp!2363921))))

(assert (=> b!7946531 (= tp!2363879 e!4688348)))

(assert (= (and b!7946531 (is-Cons!74551 (t!390418 input!7927))) b!7946771))

(declare-fun b!7946772 () Bool)

(declare-fun e!4688349 () Bool)

(declare-fun tp!2363922 () Bool)

(assert (=> b!7946772 (= e!4688349 (and tp_is_empty!53435 tp!2363922))))

(assert (=> b!7946537 (= tp!2363877 e!4688349)))

(assert (= (and b!7946537 (is-Cons!74551 (t!390418 testedP!447))) b!7946772))

(declare-fun b!7946785 () Bool)

(declare-fun e!4688352 () Bool)

(declare-fun tp!2363933 () Bool)

(assert (=> b!7946785 (= e!4688352 tp!2363933)))

(declare-fun b!7946783 () Bool)

(assert (=> b!7946783 (= e!4688352 tp_is_empty!53435)))

(declare-fun b!7946786 () Bool)

(declare-fun tp!2363935 () Bool)

(declare-fun tp!2363937 () Bool)

(assert (=> b!7946786 (= e!4688352 (and tp!2363935 tp!2363937))))

(declare-fun b!7946784 () Bool)

(declare-fun tp!2363934 () Bool)

(declare-fun tp!2363936 () Bool)

(assert (=> b!7946784 (= e!4688352 (and tp!2363934 tp!2363936))))

(assert (=> b!7946535 (= tp!2363880 e!4688352)))

(assert (= (and b!7946535 (is-ElementMatch!21446 (regOne!43404 baseR!116))) b!7946783))

(assert (= (and b!7946535 (is-Concat!30445 (regOne!43404 baseR!116))) b!7946784))

(assert (= (and b!7946535 (is-Star!21446 (regOne!43404 baseR!116))) b!7946785))

(assert (= (and b!7946535 (is-Union!21446 (regOne!43404 baseR!116))) b!7946786))

(declare-fun b!7946789 () Bool)

(declare-fun e!4688353 () Bool)

(declare-fun tp!2363938 () Bool)

(assert (=> b!7946789 (= e!4688353 tp!2363938)))

(declare-fun b!7946787 () Bool)

(assert (=> b!7946787 (= e!4688353 tp_is_empty!53435)))

(declare-fun b!7946790 () Bool)

(declare-fun tp!2363940 () Bool)

(declare-fun tp!2363942 () Bool)

(assert (=> b!7946790 (= e!4688353 (and tp!2363940 tp!2363942))))

(declare-fun b!7946788 () Bool)

(declare-fun tp!2363939 () Bool)

(declare-fun tp!2363941 () Bool)

(assert (=> b!7946788 (= e!4688353 (and tp!2363939 tp!2363941))))

(assert (=> b!7946535 (= tp!2363871 e!4688353)))

(assert (= (and b!7946535 (is-ElementMatch!21446 (regTwo!43404 baseR!116))) b!7946787))

(assert (= (and b!7946535 (is-Concat!30445 (regTwo!43404 baseR!116))) b!7946788))

(assert (= (and b!7946535 (is-Star!21446 (regTwo!43404 baseR!116))) b!7946789))

(assert (= (and b!7946535 (is-Union!21446 (regTwo!43404 baseR!116))) b!7946790))

(declare-fun b!7946793 () Bool)

(declare-fun e!4688354 () Bool)

(declare-fun tp!2363943 () Bool)

(assert (=> b!7946793 (= e!4688354 tp!2363943)))

(declare-fun b!7946791 () Bool)

(assert (=> b!7946791 (= e!4688354 tp_is_empty!53435)))

(declare-fun b!7946794 () Bool)

(declare-fun tp!2363945 () Bool)

(declare-fun tp!2363947 () Bool)

(assert (=> b!7946794 (= e!4688354 (and tp!2363945 tp!2363947))))

(declare-fun b!7946792 () Bool)

(declare-fun tp!2363944 () Bool)

(declare-fun tp!2363946 () Bool)

(assert (=> b!7946792 (= e!4688354 (and tp!2363944 tp!2363946))))

(assert (=> b!7946536 (= tp!2363881 e!4688354)))

(assert (= (and b!7946536 (is-ElementMatch!21446 (reg!21775 r!24602))) b!7946791))

(assert (= (and b!7946536 (is-Concat!30445 (reg!21775 r!24602))) b!7946792))

(assert (= (and b!7946536 (is-Star!21446 (reg!21775 r!24602))) b!7946793))

(assert (= (and b!7946536 (is-Union!21446 (reg!21775 r!24602))) b!7946794))

(declare-fun b!7946797 () Bool)

(declare-fun e!4688355 () Bool)

(declare-fun tp!2363948 () Bool)

(assert (=> b!7946797 (= e!4688355 tp!2363948)))

(declare-fun b!7946795 () Bool)

(assert (=> b!7946795 (= e!4688355 tp_is_empty!53435)))

(declare-fun b!7946798 () Bool)

(declare-fun tp!2363950 () Bool)

(declare-fun tp!2363952 () Bool)

(assert (=> b!7946798 (= e!4688355 (and tp!2363950 tp!2363952))))

(declare-fun b!7946796 () Bool)

(declare-fun tp!2363949 () Bool)

(declare-fun tp!2363951 () Bool)

(assert (=> b!7946796 (= e!4688355 (and tp!2363949 tp!2363951))))

(assert (=> b!7946539 (= tp!2363872 e!4688355)))

(assert (= (and b!7946539 (is-ElementMatch!21446 (reg!21775 baseR!116))) b!7946795))

(assert (= (and b!7946539 (is-Concat!30445 (reg!21775 baseR!116))) b!7946796))

(assert (= (and b!7946539 (is-Star!21446 (reg!21775 baseR!116))) b!7946797))

(assert (= (and b!7946539 (is-Union!21446 (reg!21775 baseR!116))) b!7946798))

(declare-fun b!7946801 () Bool)

(declare-fun e!4688356 () Bool)

(declare-fun tp!2363953 () Bool)

(assert (=> b!7946801 (= e!4688356 tp!2363953)))

(declare-fun b!7946799 () Bool)

(assert (=> b!7946799 (= e!4688356 tp_is_empty!53435)))

(declare-fun b!7946802 () Bool)

(declare-fun tp!2363955 () Bool)

(declare-fun tp!2363957 () Bool)

(assert (=> b!7946802 (= e!4688356 (and tp!2363955 tp!2363957))))

(declare-fun b!7946800 () Bool)

(declare-fun tp!2363954 () Bool)

(declare-fun tp!2363956 () Bool)

(assert (=> b!7946800 (= e!4688356 (and tp!2363954 tp!2363956))))

(assert (=> b!7946527 (= tp!2363882 e!4688356)))

(assert (= (and b!7946527 (is-ElementMatch!21446 (regOne!43405 baseR!116))) b!7946799))

(assert (= (and b!7946527 (is-Concat!30445 (regOne!43405 baseR!116))) b!7946800))

(assert (= (and b!7946527 (is-Star!21446 (regOne!43405 baseR!116))) b!7946801))

(assert (= (and b!7946527 (is-Union!21446 (regOne!43405 baseR!116))) b!7946802))

(declare-fun b!7946805 () Bool)

(declare-fun e!4688357 () Bool)

(declare-fun tp!2363958 () Bool)

(assert (=> b!7946805 (= e!4688357 tp!2363958)))

(declare-fun b!7946803 () Bool)

(assert (=> b!7946803 (= e!4688357 tp_is_empty!53435)))

(declare-fun b!7946806 () Bool)

(declare-fun tp!2363960 () Bool)

(declare-fun tp!2363962 () Bool)

(assert (=> b!7946806 (= e!4688357 (and tp!2363960 tp!2363962))))

(declare-fun b!7946804 () Bool)

(declare-fun tp!2363959 () Bool)

(declare-fun tp!2363961 () Bool)

(assert (=> b!7946804 (= e!4688357 (and tp!2363959 tp!2363961))))

(assert (=> b!7946527 (= tp!2363878 e!4688357)))

(assert (= (and b!7946527 (is-ElementMatch!21446 (regTwo!43405 baseR!116))) b!7946803))

(assert (= (and b!7946527 (is-Concat!30445 (regTwo!43405 baseR!116))) b!7946804))

(assert (= (and b!7946527 (is-Star!21446 (regTwo!43405 baseR!116))) b!7946805))

(assert (= (and b!7946527 (is-Union!21446 (regTwo!43405 baseR!116))) b!7946806))

(declare-fun b!7946809 () Bool)

(declare-fun e!4688358 () Bool)

(declare-fun tp!2363963 () Bool)

(assert (=> b!7946809 (= e!4688358 tp!2363963)))

(declare-fun b!7946807 () Bool)

(assert (=> b!7946807 (= e!4688358 tp_is_empty!53435)))

(declare-fun b!7946810 () Bool)

(declare-fun tp!2363965 () Bool)

(declare-fun tp!2363967 () Bool)

(assert (=> b!7946810 (= e!4688358 (and tp!2363965 tp!2363967))))

(declare-fun b!7946808 () Bool)

(declare-fun tp!2363964 () Bool)

(declare-fun tp!2363966 () Bool)

(assert (=> b!7946808 (= e!4688358 (and tp!2363964 tp!2363966))))

(assert (=> b!7946533 (= tp!2363875 e!4688358)))

(assert (= (and b!7946533 (is-ElementMatch!21446 (regOne!43405 r!24602))) b!7946807))

(assert (= (and b!7946533 (is-Concat!30445 (regOne!43405 r!24602))) b!7946808))

(assert (= (and b!7946533 (is-Star!21446 (regOne!43405 r!24602))) b!7946809))

(assert (= (and b!7946533 (is-Union!21446 (regOne!43405 r!24602))) b!7946810))

(declare-fun b!7946813 () Bool)

(declare-fun e!4688359 () Bool)

(declare-fun tp!2363968 () Bool)

(assert (=> b!7946813 (= e!4688359 tp!2363968)))

(declare-fun b!7946811 () Bool)

(assert (=> b!7946811 (= e!4688359 tp_is_empty!53435)))

(declare-fun b!7946814 () Bool)

(declare-fun tp!2363970 () Bool)

(declare-fun tp!2363972 () Bool)

(assert (=> b!7946814 (= e!4688359 (and tp!2363970 tp!2363972))))

(declare-fun b!7946812 () Bool)

(declare-fun tp!2363969 () Bool)

(declare-fun tp!2363971 () Bool)

(assert (=> b!7946812 (= e!4688359 (and tp!2363969 tp!2363971))))

(assert (=> b!7946533 (= tp!2363876 e!4688359)))

(assert (= (and b!7946533 (is-ElementMatch!21446 (regTwo!43405 r!24602))) b!7946811))

(assert (= (and b!7946533 (is-Concat!30445 (regTwo!43405 r!24602))) b!7946812))

(assert (= (and b!7946533 (is-Star!21446 (regTwo!43405 r!24602))) b!7946813))

(assert (= (and b!7946533 (is-Union!21446 (regTwo!43405 r!24602))) b!7946814))

(declare-fun b!7946817 () Bool)

(declare-fun e!4688360 () Bool)

(declare-fun tp!2363973 () Bool)

(assert (=> b!7946817 (= e!4688360 tp!2363973)))

(declare-fun b!7946815 () Bool)

(assert (=> b!7946815 (= e!4688360 tp_is_empty!53435)))

(declare-fun b!7946818 () Bool)

(declare-fun tp!2363975 () Bool)

(declare-fun tp!2363977 () Bool)

(assert (=> b!7946818 (= e!4688360 (and tp!2363975 tp!2363977))))

(declare-fun b!7946816 () Bool)

(declare-fun tp!2363974 () Bool)

(declare-fun tp!2363976 () Bool)

(assert (=> b!7946816 (= e!4688360 (and tp!2363974 tp!2363976))))

(assert (=> b!7946528 (= tp!2363873 e!4688360)))

(assert (= (and b!7946528 (is-ElementMatch!21446 (regOne!43404 r!24602))) b!7946815))

(assert (= (and b!7946528 (is-Concat!30445 (regOne!43404 r!24602))) b!7946816))

(assert (= (and b!7946528 (is-Star!21446 (regOne!43404 r!24602))) b!7946817))

(assert (= (and b!7946528 (is-Union!21446 (regOne!43404 r!24602))) b!7946818))

(declare-fun b!7946821 () Bool)

(declare-fun e!4688361 () Bool)

(declare-fun tp!2363978 () Bool)

(assert (=> b!7946821 (= e!4688361 tp!2363978)))

(declare-fun b!7946819 () Bool)

(assert (=> b!7946819 (= e!4688361 tp_is_empty!53435)))

(declare-fun b!7946822 () Bool)

(declare-fun tp!2363980 () Bool)

(declare-fun tp!2363982 () Bool)

(assert (=> b!7946822 (= e!4688361 (and tp!2363980 tp!2363982))))

(declare-fun b!7946820 () Bool)

(declare-fun tp!2363979 () Bool)

(declare-fun tp!2363981 () Bool)

(assert (=> b!7946820 (= e!4688361 (and tp!2363979 tp!2363981))))

(assert (=> b!7946528 (= tp!2363874 e!4688361)))

(assert (= (and b!7946528 (is-ElementMatch!21446 (regTwo!43404 r!24602))) b!7946819))

(assert (= (and b!7946528 (is-Concat!30445 (regTwo!43404 r!24602))) b!7946820))

(assert (= (and b!7946528 (is-Star!21446 (regTwo!43404 r!24602))) b!7946821))

(assert (= (and b!7946528 (is-Union!21446 (regTwo!43404 r!24602))) b!7946822))

(push 1)

(assert (not b!7946820))

(assert (not b!7946784))

(assert (not b!7946806))

(assert (not b!7946699))

(assert (not b!7946801))

(assert (not b!7946810))

(assert (not bm!736525))

(assert (not b!7946772))

(assert (not b!7946796))

(assert (not b!7946802))

(assert (not bm!736549))

(assert (not b!7946710))

(assert (not bm!736547))

(assert (not b!7946821))

(assert (not b!7946812))

(assert (not b!7946808))

(assert (not b!7946804))

(assert (not bm!736524))

(assert (not bm!736551))

(assert (not d!2375498))

(assert (not b!7946790))

(assert (not bm!736550))

(assert (not b!7946816))

(assert (not bm!736554))

(assert (not b!7946817))

(assert (not bm!736552))

(assert (not b!7946756))

(assert (not d!2375500))

(assert (not b!7946814))

(assert (not b!7946805))

(assert tp_is_empty!53435)

(assert (not d!2375532))

(assert (not b!7946749))

(assert (not b!7946788))

(assert (not b!7946797))

(assert (not b!7946691))

(assert (not b!7946798))

(assert (not d!2375520))

(assert (not bm!736555))

(assert (not b!7946822))

(assert (not b!7946813))

(assert (not b!7946809))

(assert (not b!7946651))

(assert (not b!7946771))

(assert (not b!7946786))

(assert (not b!7946754))

(assert (not b!7946611))

(assert (not b!7946792))

(assert (not b!7946789))

(assert (not b!7946794))

(assert (not b!7946690))

(assert (not b!7946800))

(assert (not b!7946793))

(assert (not bm!736546))

(assert (not b!7946818))

(assert (not bm!736548))

(assert (not b!7946715))

(assert (not b!7946785))

(assert (not b!7946744))

(assert (not b!7946763))

(assert (not bm!736545))

(assert (not b!7946689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

