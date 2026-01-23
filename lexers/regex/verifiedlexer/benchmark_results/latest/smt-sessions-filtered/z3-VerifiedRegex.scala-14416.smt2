; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751316 () Bool)

(assert start!751316)

(declare-fun b!7965776 () Bool)

(declare-fun e!4697296 () Bool)

(declare-datatypes ((C!43364 0))(
  ( (C!43365 (val!32230 Int)) )
))
(declare-datatypes ((List!74742 0))(
  ( (Nil!74618) (Cons!74618 (h!81066 C!43364) (t!390485 List!74742)) )
))
(declare-fun lt!2705758 () List!74742)

(assert (=> b!7965776 (= e!4697296 (not (= lt!2705758 Nil!74618)))))

(declare-fun b!7965778 () Bool)

(declare-fun e!4697302 () Bool)

(declare-fun tp_is_empty!53569 () Bool)

(assert (=> b!7965778 (= e!4697302 tp_is_empty!53569)))

(declare-fun b!7965779 () Bool)

(declare-fun e!4697303 () Bool)

(declare-fun tp!2373862 () Bool)

(assert (=> b!7965779 (= e!4697303 (and tp_is_empty!53569 tp!2373862))))

(declare-fun b!7965780 () Bool)

(declare-fun tp!2373863 () Bool)

(assert (=> b!7965780 (= e!4697302 tp!2373863)))

(declare-fun b!7965781 () Bool)

(declare-fun e!4697297 () Bool)

(declare-fun tp!2373864 () Bool)

(assert (=> b!7965781 (= e!4697297 tp!2373864)))

(declare-fun b!7965782 () Bool)

(declare-fun res!3156642 () Bool)

(declare-fun e!4697301 () Bool)

(assert (=> b!7965782 (=> (not res!3156642) (not e!4697301))))

(declare-fun testedP!447 () List!74742)

(declare-fun input!7927 () List!74742)

(assert (=> b!7965782 (= res!3156642 (not (= testedP!447 input!7927)))))

(declare-fun b!7965783 () Bool)

(declare-fun tp!2373859 () Bool)

(declare-fun tp!2373870 () Bool)

(assert (=> b!7965783 (= e!4697302 (and tp!2373859 tp!2373870))))

(declare-fun b!7965784 () Bool)

(declare-fun e!4697298 () Bool)

(assert (=> b!7965784 (= e!4697301 (not e!4697298))))

(declare-fun res!3156637 () Bool)

(assert (=> b!7965784 (=> res!3156637 e!4697298)))

(declare-fun lt!2705763 () Int)

(declare-fun lt!2705756 () Int)

(assert (=> b!7965784 (= res!3156637 (>= lt!2705763 lt!2705756))))

(declare-datatypes ((Unit!170178 0))(
  ( (Unit!170179) )
))
(declare-fun lt!2705762 () Unit!170178)

(declare-fun e!4697295 () Unit!170178)

(assert (=> b!7965784 (= lt!2705762 e!4697295)))

(declare-fun c!1462925 () Bool)

(assert (=> b!7965784 (= c!1462925 (= lt!2705763 lt!2705756))))

(assert (=> b!7965784 (<= lt!2705763 lt!2705756)))

(declare-fun lt!2705761 () Unit!170178)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1130 (List!74742 List!74742) Unit!170178)

(assert (=> b!7965784 (= lt!2705761 (lemmaIsPrefixThenSmallerEqSize!1130 testedP!447 input!7927))))

(declare-fun b!7965785 () Bool)

(declare-fun e!4697300 () Bool)

(declare-fun tp!2373869 () Bool)

(assert (=> b!7965785 (= e!4697300 (and tp_is_empty!53569 tp!2373869))))

(declare-fun b!7965786 () Bool)

(declare-fun e!4697299 () Bool)

(assert (=> b!7965786 (= e!4697299 e!4697301)))

(declare-fun res!3156639 () Bool)

(assert (=> b!7965786 (=> (not res!3156639) (not e!4697301))))

(declare-datatypes ((Regex!21513 0))(
  ( (ElementMatch!21513 (c!1462926 C!43364)) (Concat!30512 (regOne!43538 Regex!21513) (regTwo!43538 Regex!21513)) (EmptyExpr!21513) (Star!21513 (reg!21842 Regex!21513)) (EmptyLang!21513) (Union!21513 (regOne!43539 Regex!21513) (regTwo!43539 Regex!21513)) )
))
(declare-fun r!24602 () Regex!21513)

(declare-fun isEmpty!42919 (List!74742) Bool)

(declare-datatypes ((tuple2!70688 0))(
  ( (tuple2!70689 (_1!38647 List!74742) (_2!38647 List!74742)) )
))
(declare-fun findLongestMatchInner!2294 (Regex!21513 List!74742 Int List!74742 List!74742 Int) tuple2!70688)

(assert (=> b!7965786 (= res!3156639 (not (isEmpty!42919 (_1!38647 (findLongestMatchInner!2294 r!24602 testedP!447 lt!2705763 lt!2705758 input!7927 lt!2705756)))))))

(declare-fun size!43449 (List!74742) Int)

(assert (=> b!7965786 (= lt!2705756 (size!43449 input!7927))))

(declare-fun getSuffix!3816 (List!74742 List!74742) List!74742)

(assert (=> b!7965786 (= lt!2705758 (getSuffix!3816 input!7927 testedP!447))))

(assert (=> b!7965786 (= lt!2705763 (size!43449 testedP!447))))

(declare-fun b!7965787 () Bool)

(declare-fun tp!2373868 () Bool)

(declare-fun tp!2373867 () Bool)

(assert (=> b!7965787 (= e!4697302 (and tp!2373868 tp!2373867))))

(declare-fun b!7965788 () Bool)

(declare-fun tp!2373860 () Bool)

(declare-fun tp!2373861 () Bool)

(assert (=> b!7965788 (= e!4697297 (and tp!2373860 tp!2373861))))

(declare-fun res!3156636 () Bool)

(assert (=> start!751316 (=> (not res!3156636) (not e!4697299))))

(declare-fun baseR!116 () Regex!21513)

(declare-fun validRegex!11817 (Regex!21513) Bool)

(assert (=> start!751316 (= res!3156636 (validRegex!11817 baseR!116))))

(assert (=> start!751316 e!4697299))

(assert (=> start!751316 e!4697297))

(assert (=> start!751316 e!4697300))

(assert (=> start!751316 e!4697303))

(assert (=> start!751316 e!4697302))

(declare-fun b!7965777 () Bool)

(assert (=> b!7965777 (= e!4697297 tp_is_empty!53569)))

(declare-fun b!7965789 () Bool)

(declare-fun Unit!170180 () Unit!170178)

(assert (=> b!7965789 (= e!4697295 Unit!170180)))

(declare-fun lt!2705759 () Unit!170178)

(declare-fun lemmaIsPrefixRefl!4081 (List!74742 List!74742) Unit!170178)

(assert (=> b!7965789 (= lt!2705759 (lemmaIsPrefixRefl!4081 input!7927 input!7927))))

(declare-fun isPrefix!6613 (List!74742 List!74742) Bool)

(assert (=> b!7965789 (isPrefix!6613 input!7927 input!7927)))

(declare-fun lt!2705757 () Unit!170178)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1661 (List!74742 List!74742 List!74742) Unit!170178)

(assert (=> b!7965789 (= lt!2705757 (lemmaIsPrefixSameLengthThenSameList!1661 input!7927 testedP!447 input!7927))))

(assert (=> b!7965789 false))

(declare-fun b!7965790 () Bool)

(assert (=> b!7965790 (= e!4697298 e!4697296)))

(declare-fun res!3156641 () Bool)

(assert (=> b!7965790 (=> res!3156641 e!4697296)))

(declare-fun nullable!9614 (Regex!21513) Bool)

(assert (=> b!7965790 (= res!3156641 (nullable!9614 r!24602))))

(declare-fun lt!2705755 () List!74742)

(assert (=> b!7965790 (isPrefix!6613 lt!2705755 input!7927)))

(declare-fun lt!2705760 () Unit!170178)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1340 (List!74742 List!74742) Unit!170178)

(assert (=> b!7965790 (= lt!2705760 (lemmaAddHeadSuffixToPrefixStillPrefix!1340 testedP!447 input!7927))))

(declare-fun ++!18383 (List!74742 List!74742) List!74742)

(declare-fun head!16265 (List!74742) C!43364)

(assert (=> b!7965790 (= lt!2705755 (++!18383 testedP!447 (Cons!74618 (head!16265 lt!2705758) Nil!74618)))))

(declare-fun b!7965791 () Bool)

(declare-fun res!3156638 () Bool)

(assert (=> b!7965791 (=> (not res!3156638) (not e!4697299))))

(assert (=> b!7965791 (= res!3156638 (isPrefix!6613 testedP!447 input!7927))))

(declare-fun b!7965792 () Bool)

(declare-fun tp!2373865 () Bool)

(declare-fun tp!2373866 () Bool)

(assert (=> b!7965792 (= e!4697297 (and tp!2373865 tp!2373866))))

(declare-fun b!7965793 () Bool)

(declare-fun res!3156640 () Bool)

(assert (=> b!7965793 (=> (not res!3156640) (not e!4697299))))

(declare-fun derivative!699 (Regex!21513 List!74742) Regex!21513)

(assert (=> b!7965793 (= res!3156640 (= (derivative!699 baseR!116 testedP!447) r!24602))))

(declare-fun b!7965794 () Bool)

(declare-fun Unit!170181 () Unit!170178)

(assert (=> b!7965794 (= e!4697295 Unit!170181)))

(assert (= (and start!751316 res!3156636) b!7965791))

(assert (= (and b!7965791 res!3156638) b!7965793))

(assert (= (and b!7965793 res!3156640) b!7965786))

(assert (= (and b!7965786 res!3156639) b!7965782))

(assert (= (and b!7965782 res!3156642) b!7965784))

(assert (= (and b!7965784 c!1462925) b!7965789))

(assert (= (and b!7965784 (not c!1462925)) b!7965794))

(assert (= (and b!7965784 (not res!3156637)) b!7965790))

(assert (= (and b!7965790 (not res!3156641)) b!7965776))

(get-info :version)

(assert (= (and start!751316 ((_ is ElementMatch!21513) baseR!116)) b!7965777))

(assert (= (and start!751316 ((_ is Concat!30512) baseR!116)) b!7965788))

(assert (= (and start!751316 ((_ is Star!21513) baseR!116)) b!7965781))

(assert (= (and start!751316 ((_ is Union!21513) baseR!116)) b!7965792))

(assert (= (and start!751316 ((_ is Cons!74618) testedP!447)) b!7965785))

(assert (= (and start!751316 ((_ is Cons!74618) input!7927)) b!7965779))

(assert (= (and start!751316 ((_ is ElementMatch!21513) r!24602)) b!7965778))

(assert (= (and start!751316 ((_ is Concat!30512) r!24602)) b!7965787))

(assert (= (and start!751316 ((_ is Star!21513) r!24602)) b!7965780))

(assert (= (and start!751316 ((_ is Union!21513) r!24602)) b!7965783))

(declare-fun m!8345552 () Bool)

(assert (=> b!7965790 m!8345552))

(declare-fun m!8345554 () Bool)

(assert (=> b!7965790 m!8345554))

(declare-fun m!8345556 () Bool)

(assert (=> b!7965790 m!8345556))

(declare-fun m!8345558 () Bool)

(assert (=> b!7965790 m!8345558))

(declare-fun m!8345560 () Bool)

(assert (=> b!7965790 m!8345560))

(declare-fun m!8345562 () Bool)

(assert (=> start!751316 m!8345562))

(declare-fun m!8345564 () Bool)

(assert (=> b!7965789 m!8345564))

(declare-fun m!8345566 () Bool)

(assert (=> b!7965789 m!8345566))

(declare-fun m!8345568 () Bool)

(assert (=> b!7965789 m!8345568))

(declare-fun m!8345570 () Bool)

(assert (=> b!7965791 m!8345570))

(declare-fun m!8345572 () Bool)

(assert (=> b!7965786 m!8345572))

(declare-fun m!8345574 () Bool)

(assert (=> b!7965786 m!8345574))

(declare-fun m!8345576 () Bool)

(assert (=> b!7965786 m!8345576))

(declare-fun m!8345578 () Bool)

(assert (=> b!7965786 m!8345578))

(declare-fun m!8345580 () Bool)

(assert (=> b!7965786 m!8345580))

(declare-fun m!8345582 () Bool)

(assert (=> b!7965784 m!8345582))

(declare-fun m!8345584 () Bool)

(assert (=> b!7965793 m!8345584))

(check-sat (not b!7965787) (not b!7965792) (not b!7965789) (not b!7965788) (not b!7965783) (not start!751316) (not b!7965779) (not b!7965780) (not b!7965791) (not b!7965785) (not b!7965781) (not b!7965784) tp_is_empty!53569 (not b!7965793) (not b!7965786) (not b!7965790))
(check-sat)
(get-model)

(declare-fun d!2378977 () Bool)

(declare-fun lt!2705768 () Regex!21513)

(assert (=> d!2378977 (validRegex!11817 lt!2705768)))

(declare-fun e!4697308 () Regex!21513)

(assert (=> d!2378977 (= lt!2705768 e!4697308)))

(declare-fun c!1462931 () Bool)

(assert (=> d!2378977 (= c!1462931 ((_ is Cons!74618) testedP!447))))

(assert (=> d!2378977 (validRegex!11817 baseR!116)))

(assert (=> d!2378977 (= (derivative!699 baseR!116 testedP!447) lt!2705768)))

(declare-fun b!7965803 () Bool)

(declare-fun derivativeStep!6541 (Regex!21513 C!43364) Regex!21513)

(assert (=> b!7965803 (= e!4697308 (derivative!699 (derivativeStep!6541 baseR!116 (h!81066 testedP!447)) (t!390485 testedP!447)))))

(declare-fun b!7965804 () Bool)

(assert (=> b!7965804 (= e!4697308 baseR!116)))

(assert (= (and d!2378977 c!1462931) b!7965803))

(assert (= (and d!2378977 (not c!1462931)) b!7965804))

(declare-fun m!8345586 () Bool)

(assert (=> d!2378977 m!8345586))

(assert (=> d!2378977 m!8345562))

(declare-fun m!8345588 () Bool)

(assert (=> b!7965803 m!8345588))

(assert (=> b!7965803 m!8345588))

(declare-fun m!8345590 () Bool)

(assert (=> b!7965803 m!8345590))

(assert (=> b!7965793 d!2378977))

(declare-fun d!2378981 () Bool)

(declare-fun res!3156656 () Bool)

(declare-fun e!4697327 () Bool)

(assert (=> d!2378981 (=> res!3156656 e!4697327)))

(assert (=> d!2378981 (= res!3156656 ((_ is ElementMatch!21513) baseR!116))))

(assert (=> d!2378981 (= (validRegex!11817 baseR!116) e!4697327)))

(declare-fun b!7965825 () Bool)

(declare-fun e!4697328 () Bool)

(declare-fun call!738939 () Bool)

(assert (=> b!7965825 (= e!4697328 call!738939)))

(declare-fun b!7965826 () Bool)

(declare-fun e!4697324 () Bool)

(declare-fun call!738938 () Bool)

(assert (=> b!7965826 (= e!4697324 call!738938)))

(declare-fun b!7965827 () Bool)

(declare-fun e!4697325 () Bool)

(assert (=> b!7965827 (= e!4697325 e!4697328)))

(declare-fun res!3156655 () Bool)

(assert (=> b!7965827 (=> (not res!3156655) (not e!4697328))))

(declare-fun call!738937 () Bool)

(assert (=> b!7965827 (= res!3156655 call!738937)))

(declare-fun b!7965828 () Bool)

(declare-fun e!4697326 () Bool)

(assert (=> b!7965828 (= e!4697326 call!738939)))

(declare-fun b!7965829 () Bool)

(declare-fun e!4697330 () Bool)

(declare-fun e!4697329 () Bool)

(assert (=> b!7965829 (= e!4697330 e!4697329)))

(declare-fun c!1462938 () Bool)

(assert (=> b!7965829 (= c!1462938 ((_ is Union!21513) baseR!116))))

(declare-fun bm!738932 () Bool)

(assert (=> bm!738932 (= call!738937 call!738938)))

(declare-fun bm!738933 () Bool)

(assert (=> bm!738933 (= call!738939 (validRegex!11817 (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116))))))

(declare-fun b!7965830 () Bool)

(assert (=> b!7965830 (= e!4697330 e!4697324)))

(declare-fun res!3156654 () Bool)

(assert (=> b!7965830 (= res!3156654 (not (nullable!9614 (reg!21842 baseR!116))))))

(assert (=> b!7965830 (=> (not res!3156654) (not e!4697324))))

(declare-fun b!7965831 () Bool)

(assert (=> b!7965831 (= e!4697327 e!4697330)))

(declare-fun c!1462937 () Bool)

(assert (=> b!7965831 (= c!1462937 ((_ is Star!21513) baseR!116))))

(declare-fun bm!738934 () Bool)

(assert (=> bm!738934 (= call!738938 (validRegex!11817 (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116)))))))

(declare-fun b!7965832 () Bool)

(declare-fun res!3156653 () Bool)

(assert (=> b!7965832 (=> res!3156653 e!4697325)))

(assert (=> b!7965832 (= res!3156653 (not ((_ is Concat!30512) baseR!116)))))

(assert (=> b!7965832 (= e!4697329 e!4697325)))

(declare-fun b!7965833 () Bool)

(declare-fun res!3156657 () Bool)

(assert (=> b!7965833 (=> (not res!3156657) (not e!4697326))))

(assert (=> b!7965833 (= res!3156657 call!738937)))

(assert (=> b!7965833 (= e!4697329 e!4697326)))

(assert (= (and d!2378981 (not res!3156656)) b!7965831))

(assert (= (and b!7965831 c!1462937) b!7965830))

(assert (= (and b!7965831 (not c!1462937)) b!7965829))

(assert (= (and b!7965830 res!3156654) b!7965826))

(assert (= (and b!7965829 c!1462938) b!7965833))

(assert (= (and b!7965829 (not c!1462938)) b!7965832))

(assert (= (and b!7965833 res!3156657) b!7965828))

(assert (= (and b!7965832 (not res!3156653)) b!7965827))

(assert (= (and b!7965827 res!3156655) b!7965825))

(assert (= (or b!7965828 b!7965825) bm!738933))

(assert (= (or b!7965833 b!7965827) bm!738932))

(assert (= (or b!7965826 bm!738932) bm!738934))

(declare-fun m!8345594 () Bool)

(assert (=> bm!738933 m!8345594))

(declare-fun m!8345596 () Bool)

(assert (=> b!7965830 m!8345596))

(declare-fun m!8345598 () Bool)

(assert (=> bm!738934 m!8345598))

(assert (=> start!751316 d!2378981))

(declare-fun d!2378987 () Bool)

(declare-fun lt!2705772 () Int)

(assert (=> d!2378987 (>= lt!2705772 0)))

(declare-fun e!4697333 () Int)

(assert (=> d!2378987 (= lt!2705772 e!4697333)))

(declare-fun c!1462941 () Bool)

(assert (=> d!2378987 (= c!1462941 ((_ is Nil!74618) input!7927))))

(assert (=> d!2378987 (= (size!43449 input!7927) lt!2705772)))

(declare-fun b!7965838 () Bool)

(assert (=> b!7965838 (= e!4697333 0)))

(declare-fun b!7965839 () Bool)

(assert (=> b!7965839 (= e!4697333 (+ 1 (size!43449 (t!390485 input!7927))))))

(assert (= (and d!2378987 c!1462941) b!7965838))

(assert (= (and d!2378987 (not c!1462941)) b!7965839))

(declare-fun m!8345600 () Bool)

(assert (=> b!7965839 m!8345600))

(assert (=> b!7965786 d!2378987))

(declare-fun d!2378989 () Bool)

(assert (=> d!2378989 (= (isEmpty!42919 (_1!38647 (findLongestMatchInner!2294 r!24602 testedP!447 lt!2705763 lt!2705758 input!7927 lt!2705756))) ((_ is Nil!74618) (_1!38647 (findLongestMatchInner!2294 r!24602 testedP!447 lt!2705763 lt!2705758 input!7927 lt!2705756))))))

(assert (=> b!7965786 d!2378989))

(declare-fun d!2378991 () Bool)

(declare-fun lt!2705775 () List!74742)

(assert (=> d!2378991 (= (++!18383 testedP!447 lt!2705775) input!7927)))

(declare-fun e!4697336 () List!74742)

(assert (=> d!2378991 (= lt!2705775 e!4697336)))

(declare-fun c!1462944 () Bool)

(assert (=> d!2378991 (= c!1462944 ((_ is Cons!74618) testedP!447))))

(assert (=> d!2378991 (>= (size!43449 input!7927) (size!43449 testedP!447))))

(assert (=> d!2378991 (= (getSuffix!3816 input!7927 testedP!447) lt!2705775)))

(declare-fun b!7965844 () Bool)

(declare-fun tail!15802 (List!74742) List!74742)

(assert (=> b!7965844 (= e!4697336 (getSuffix!3816 (tail!15802 input!7927) (t!390485 testedP!447)))))

(declare-fun b!7965845 () Bool)

(assert (=> b!7965845 (= e!4697336 input!7927)))

(assert (= (and d!2378991 c!1462944) b!7965844))

(assert (= (and d!2378991 (not c!1462944)) b!7965845))

(declare-fun m!8345602 () Bool)

(assert (=> d!2378991 m!8345602))

(assert (=> d!2378991 m!8345574))

(assert (=> d!2378991 m!8345572))

(declare-fun m!8345604 () Bool)

(assert (=> b!7965844 m!8345604))

(assert (=> b!7965844 m!8345604))

(declare-fun m!8345606 () Bool)

(assert (=> b!7965844 m!8345606))

(assert (=> b!7965786 d!2378991))

(declare-fun bm!738984 () Bool)

(declare-fun call!738994 () Bool)

(assert (=> bm!738984 (= call!738994 (isPrefix!6613 input!7927 input!7927))))

(declare-fun bm!738985 () Bool)

(declare-fun call!738991 () Unit!170178)

(assert (=> bm!738985 (= call!738991 (lemmaIsPrefixRefl!4081 input!7927 input!7927))))

(declare-fun b!7966045 () Bool)

(declare-fun e!4697444 () tuple2!70688)

(declare-fun e!4697443 () tuple2!70688)

(assert (=> b!7966045 (= e!4697444 e!4697443)))

(declare-fun lt!2705954 () tuple2!70688)

(declare-fun call!738995 () tuple2!70688)

(assert (=> b!7966045 (= lt!2705954 call!738995)))

(declare-fun c!1462991 () Bool)

(assert (=> b!7966045 (= c!1462991 (isEmpty!42919 (_1!38647 lt!2705954)))))

(declare-fun b!7966046 () Bool)

(assert (=> b!7966046 (= e!4697444 call!738995)))

(declare-fun bm!738986 () Bool)

(declare-fun call!738990 () Regex!21513)

(declare-fun call!738996 () C!43364)

(assert (=> bm!738986 (= call!738990 (derivativeStep!6541 r!24602 call!738996))))

(declare-fun b!7966047 () Bool)

(declare-fun e!4697445 () tuple2!70688)

(assert (=> b!7966047 (= e!4697445 (tuple2!70689 Nil!74618 input!7927))))

(declare-fun d!2378993 () Bool)

(declare-fun e!4697446 () Bool)

(assert (=> d!2378993 e!4697446))

(declare-fun res!3156709 () Bool)

(assert (=> d!2378993 (=> (not res!3156709) (not e!4697446))))

(declare-fun lt!2705951 () tuple2!70688)

(assert (=> d!2378993 (= res!3156709 (= (++!18383 (_1!38647 lt!2705951) (_2!38647 lt!2705951)) input!7927))))

(assert (=> d!2378993 (= lt!2705951 e!4697445)))

(declare-fun c!1462994 () Bool)

(declare-fun lostCause!1984 (Regex!21513) Bool)

(assert (=> d!2378993 (= c!1462994 (lostCause!1984 r!24602))))

(declare-fun lt!2705966 () Unit!170178)

(declare-fun Unit!170185 () Unit!170178)

(assert (=> d!2378993 (= lt!2705966 Unit!170185)))

(assert (=> d!2378993 (= (getSuffix!3816 input!7927 testedP!447) lt!2705758)))

(declare-fun lt!2705945 () Unit!170178)

(declare-fun lt!2705947 () Unit!170178)

(assert (=> d!2378993 (= lt!2705945 lt!2705947)))

(declare-fun lt!2705970 () List!74742)

(assert (=> d!2378993 (= lt!2705758 lt!2705970)))

(declare-fun lemmaSamePrefixThenSameSuffix!3000 (List!74742 List!74742 List!74742 List!74742 List!74742) Unit!170178)

(assert (=> d!2378993 (= lt!2705947 (lemmaSamePrefixThenSameSuffix!3000 testedP!447 lt!2705758 testedP!447 lt!2705970 input!7927))))

(assert (=> d!2378993 (= lt!2705970 (getSuffix!3816 input!7927 testedP!447))))

(declare-fun lt!2705950 () Unit!170178)

(declare-fun lt!2705944 () Unit!170178)

(assert (=> d!2378993 (= lt!2705950 lt!2705944)))

(assert (=> d!2378993 (isPrefix!6613 testedP!447 (++!18383 testedP!447 lt!2705758))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3862 (List!74742 List!74742) Unit!170178)

(assert (=> d!2378993 (= lt!2705944 (lemmaConcatTwoListThenFirstIsPrefix!3862 testedP!447 lt!2705758))))

(assert (=> d!2378993 (validRegex!11817 r!24602)))

(assert (=> d!2378993 (= (findLongestMatchInner!2294 r!24602 testedP!447 lt!2705763 lt!2705758 input!7927 lt!2705756) lt!2705951)))

(declare-fun b!7966048 () Bool)

(declare-fun e!4697449 () tuple2!70688)

(assert (=> b!7966048 (= e!4697449 (tuple2!70689 Nil!74618 input!7927))))

(declare-fun bm!738987 () Bool)

(assert (=> bm!738987 (= call!738996 (head!16265 lt!2705758))))

(declare-fun b!7966049 () Bool)

(declare-fun e!4697447 () Bool)

(assert (=> b!7966049 (= e!4697446 e!4697447)))

(declare-fun res!3156710 () Bool)

(assert (=> b!7966049 (=> res!3156710 e!4697447)))

(assert (=> b!7966049 (= res!3156710 (isEmpty!42919 (_1!38647 lt!2705951)))))

(declare-fun bm!738988 () Bool)

(declare-fun call!738989 () Bool)

(assert (=> bm!738988 (= call!738989 (nullable!9614 r!24602))))

(declare-fun b!7966050 () Bool)

(declare-fun e!4697442 () Unit!170178)

(declare-fun Unit!170186 () Unit!170178)

(assert (=> b!7966050 (= e!4697442 Unit!170186)))

(declare-fun lt!2705960 () Unit!170178)

(assert (=> b!7966050 (= lt!2705960 call!738991)))

(assert (=> b!7966050 call!738994))

(declare-fun lt!2705952 () Unit!170178)

(assert (=> b!7966050 (= lt!2705952 lt!2705960)))

(declare-fun lt!2705943 () Unit!170178)

(declare-fun call!738992 () Unit!170178)

(assert (=> b!7966050 (= lt!2705943 call!738992)))

(assert (=> b!7966050 (= input!7927 testedP!447)))

(declare-fun lt!2705953 () Unit!170178)

(assert (=> b!7966050 (= lt!2705953 lt!2705943)))

(assert (=> b!7966050 false))

(declare-fun bm!738989 () Bool)

(assert (=> bm!738989 (= call!738992 (lemmaIsPrefixSameLengthThenSameList!1661 input!7927 testedP!447 input!7927))))

(declare-fun b!7966051 () Bool)

(declare-fun e!4697448 () tuple2!70688)

(assert (=> b!7966051 (= e!4697445 e!4697448)))

(declare-fun c!1462992 () Bool)

(assert (=> b!7966051 (= c!1462992 (= lt!2705763 lt!2705756))))

(declare-fun b!7966052 () Bool)

(assert (=> b!7966052 (= e!4697449 (tuple2!70689 testedP!447 Nil!74618))))

(declare-fun bm!738990 () Bool)

(declare-fun call!738993 () List!74742)

(assert (=> bm!738990 (= call!738993 (tail!15802 lt!2705758))))

(declare-fun b!7966053 () Bool)

(declare-fun c!1462996 () Bool)

(assert (=> b!7966053 (= c!1462996 call!738989)))

(declare-fun lt!2705968 () Unit!170178)

(declare-fun lt!2705967 () Unit!170178)

(assert (=> b!7966053 (= lt!2705968 lt!2705967)))

(declare-fun lt!2705946 () List!74742)

(declare-fun lt!2705961 () C!43364)

(assert (=> b!7966053 (= (++!18383 (++!18383 testedP!447 (Cons!74618 lt!2705961 Nil!74618)) lt!2705946) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3540 (List!74742 C!43364 List!74742 List!74742) Unit!170178)

(assert (=> b!7966053 (= lt!2705967 (lemmaMoveElementToOtherListKeepsConcatEq!3540 testedP!447 lt!2705961 lt!2705946 input!7927))))

(assert (=> b!7966053 (= lt!2705946 (tail!15802 lt!2705758))))

(assert (=> b!7966053 (= lt!2705961 (head!16265 lt!2705758))))

(declare-fun lt!2705959 () Unit!170178)

(declare-fun lt!2705969 () Unit!170178)

(assert (=> b!7966053 (= lt!2705959 lt!2705969)))

(assert (=> b!7966053 (isPrefix!6613 (++!18383 testedP!447 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618)) input!7927)))

(assert (=> b!7966053 (= lt!2705969 (lemmaAddHeadSuffixToPrefixStillPrefix!1340 testedP!447 input!7927))))

(declare-fun lt!2705948 () Unit!170178)

(declare-fun lt!2705956 () Unit!170178)

(assert (=> b!7966053 (= lt!2705948 lt!2705956)))

(assert (=> b!7966053 (= lt!2705956 (lemmaAddHeadSuffixToPrefixStillPrefix!1340 testedP!447 input!7927))))

(declare-fun lt!2705955 () List!74742)

(assert (=> b!7966053 (= lt!2705955 (++!18383 testedP!447 (Cons!74618 (head!16265 lt!2705758) Nil!74618)))))

(declare-fun lt!2705964 () Unit!170178)

(assert (=> b!7966053 (= lt!2705964 e!4697442)))

(declare-fun c!1462995 () Bool)

(assert (=> b!7966053 (= c!1462995 (= (size!43449 testedP!447) (size!43449 input!7927)))))

(declare-fun lt!2705957 () Unit!170178)

(declare-fun lt!2705963 () Unit!170178)

(assert (=> b!7966053 (= lt!2705957 lt!2705963)))

(assert (=> b!7966053 (<= (size!43449 testedP!447) (size!43449 input!7927))))

(assert (=> b!7966053 (= lt!2705963 (lemmaIsPrefixThenSmallerEqSize!1130 testedP!447 input!7927))))

(assert (=> b!7966053 (= e!4697448 e!4697444)))

(declare-fun bm!738991 () Bool)

(assert (=> bm!738991 (= call!738995 (findLongestMatchInner!2294 call!738990 lt!2705955 (+ lt!2705763 1) call!738993 input!7927 lt!2705756))))

(declare-fun b!7966054 () Bool)

(assert (=> b!7966054 (= e!4697447 (>= (size!43449 (_1!38647 lt!2705951)) (size!43449 testedP!447)))))

(declare-fun b!7966055 () Bool)

(assert (=> b!7966055 (= e!4697443 lt!2705954)))

(declare-fun b!7966056 () Bool)

(declare-fun c!1462993 () Bool)

(assert (=> b!7966056 (= c!1462993 call!738989)))

(declare-fun lt!2705962 () Unit!170178)

(declare-fun lt!2705958 () Unit!170178)

(assert (=> b!7966056 (= lt!2705962 lt!2705958)))

(assert (=> b!7966056 (= input!7927 testedP!447)))

(assert (=> b!7966056 (= lt!2705958 call!738992)))

(declare-fun lt!2705949 () Unit!170178)

(declare-fun lt!2705965 () Unit!170178)

(assert (=> b!7966056 (= lt!2705949 lt!2705965)))

(assert (=> b!7966056 call!738994))

(assert (=> b!7966056 (= lt!2705965 call!738991)))

(assert (=> b!7966056 (= e!4697448 e!4697449)))

(declare-fun b!7966057 () Bool)

(assert (=> b!7966057 (= e!4697443 (tuple2!70689 testedP!447 lt!2705758))))

(declare-fun b!7966058 () Bool)

(declare-fun Unit!170187 () Unit!170178)

(assert (=> b!7966058 (= e!4697442 Unit!170187)))

(assert (= (and d!2378993 c!1462994) b!7966047))

(assert (= (and d!2378993 (not c!1462994)) b!7966051))

(assert (= (and b!7966051 c!1462992) b!7966056))

(assert (= (and b!7966051 (not c!1462992)) b!7966053))

(assert (= (and b!7966056 c!1462993) b!7966052))

(assert (= (and b!7966056 (not c!1462993)) b!7966048))

(assert (= (and b!7966053 c!1462995) b!7966050))

(assert (= (and b!7966053 (not c!1462995)) b!7966058))

(assert (= (and b!7966053 c!1462996) b!7966045))

(assert (= (and b!7966053 (not c!1462996)) b!7966046))

(assert (= (and b!7966045 c!1462991) b!7966057))

(assert (= (and b!7966045 (not c!1462991)) b!7966055))

(assert (= (or b!7966045 b!7966046) bm!738987))

(assert (= (or b!7966045 b!7966046) bm!738990))

(assert (= (or b!7966045 b!7966046) bm!738986))

(assert (= (or b!7966045 b!7966046) bm!738991))

(assert (= (or b!7966056 b!7966053) bm!738988))

(assert (= (or b!7966056 b!7966050) bm!738989))

(assert (= (or b!7966056 b!7966050) bm!738985))

(assert (= (or b!7966056 b!7966050) bm!738984))

(assert (= (and d!2378993 res!3156709) b!7966049))

(assert (= (and b!7966049 (not res!3156710)) b!7966054))

(declare-fun m!8345706 () Bool)

(assert (=> d!2378993 m!8345706))

(declare-fun m!8345708 () Bool)

(assert (=> d!2378993 m!8345708))

(declare-fun m!8345710 () Bool)

(assert (=> d!2378993 m!8345710))

(assert (=> d!2378993 m!8345710))

(declare-fun m!8345712 () Bool)

(assert (=> d!2378993 m!8345712))

(declare-fun m!8345714 () Bool)

(assert (=> d!2378993 m!8345714))

(assert (=> d!2378993 m!8345578))

(declare-fun m!8345716 () Bool)

(assert (=> d!2378993 m!8345716))

(declare-fun m!8345718 () Bool)

(assert (=> d!2378993 m!8345718))

(assert (=> bm!738989 m!8345568))

(declare-fun m!8345720 () Bool)

(assert (=> b!7966045 m!8345720))

(declare-fun m!8345722 () Bool)

(assert (=> b!7966054 m!8345722))

(assert (=> b!7966054 m!8345572))

(assert (=> bm!738984 m!8345566))

(declare-fun m!8345724 () Bool)

(assert (=> bm!738991 m!8345724))

(assert (=> bm!738987 m!8345556))

(assert (=> b!7966053 m!8345556))

(assert (=> b!7966053 m!8345560))

(declare-fun m!8345726 () Bool)

(assert (=> b!7966053 m!8345726))

(assert (=> b!7966053 m!8345578))

(declare-fun m!8345728 () Bool)

(assert (=> b!7966053 m!8345728))

(declare-fun m!8345730 () Bool)

(assert (=> b!7966053 m!8345730))

(declare-fun m!8345732 () Bool)

(assert (=> b!7966053 m!8345732))

(assert (=> b!7966053 m!8345558))

(declare-fun m!8345734 () Bool)

(assert (=> b!7966053 m!8345734))

(assert (=> b!7966053 m!8345582))

(assert (=> b!7966053 m!8345574))

(assert (=> b!7966053 m!8345730))

(declare-fun m!8345736 () Bool)

(assert (=> b!7966053 m!8345736))

(assert (=> b!7966053 m!8345736))

(declare-fun m!8345738 () Bool)

(assert (=> b!7966053 m!8345738))

(assert (=> b!7966053 m!8345578))

(assert (=> b!7966053 m!8345572))

(assert (=> bm!738990 m!8345726))

(assert (=> bm!738988 m!8345552))

(declare-fun m!8345740 () Bool)

(assert (=> bm!738986 m!8345740))

(assert (=> bm!738985 m!8345564))

(declare-fun m!8345742 () Bool)

(assert (=> b!7966049 m!8345742))

(assert (=> b!7965786 d!2378993))

(declare-fun d!2379023 () Bool)

(declare-fun lt!2705971 () Int)

(assert (=> d!2379023 (>= lt!2705971 0)))

(declare-fun e!4697450 () Int)

(assert (=> d!2379023 (= lt!2705971 e!4697450)))

(declare-fun c!1462997 () Bool)

(assert (=> d!2379023 (= c!1462997 ((_ is Nil!74618) testedP!447))))

(assert (=> d!2379023 (= (size!43449 testedP!447) lt!2705971)))

(declare-fun b!7966059 () Bool)

(assert (=> b!7966059 (= e!4697450 0)))

(declare-fun b!7966060 () Bool)

(assert (=> b!7966060 (= e!4697450 (+ 1 (size!43449 (t!390485 testedP!447))))))

(assert (= (and d!2379023 c!1462997) b!7966059))

(assert (= (and d!2379023 (not c!1462997)) b!7966060))

(declare-fun m!8345744 () Bool)

(assert (=> b!7966060 m!8345744))

(assert (=> b!7965786 d!2379023))

(declare-fun d!2379025 () Bool)

(declare-fun e!4697459 () Bool)

(assert (=> d!2379025 e!4697459))

(declare-fun res!3156720 () Bool)

(assert (=> d!2379025 (=> res!3156720 e!4697459)))

(declare-fun lt!2705974 () Bool)

(assert (=> d!2379025 (= res!3156720 (not lt!2705974))))

(declare-fun e!4697458 () Bool)

(assert (=> d!2379025 (= lt!2705974 e!4697458)))

(declare-fun res!3156719 () Bool)

(assert (=> d!2379025 (=> res!3156719 e!4697458)))

(assert (=> d!2379025 (= res!3156719 ((_ is Nil!74618) testedP!447))))

(assert (=> d!2379025 (= (isPrefix!6613 testedP!447 input!7927) lt!2705974)))

(declare-fun b!7966071 () Bool)

(declare-fun e!4697457 () Bool)

(assert (=> b!7966071 (= e!4697457 (isPrefix!6613 (tail!15802 testedP!447) (tail!15802 input!7927)))))

(declare-fun b!7966072 () Bool)

(assert (=> b!7966072 (= e!4697459 (>= (size!43449 input!7927) (size!43449 testedP!447)))))

(declare-fun b!7966069 () Bool)

(assert (=> b!7966069 (= e!4697458 e!4697457)))

(declare-fun res!3156721 () Bool)

(assert (=> b!7966069 (=> (not res!3156721) (not e!4697457))))

(assert (=> b!7966069 (= res!3156721 (not ((_ is Nil!74618) input!7927)))))

(declare-fun b!7966070 () Bool)

(declare-fun res!3156722 () Bool)

(assert (=> b!7966070 (=> (not res!3156722) (not e!4697457))))

(assert (=> b!7966070 (= res!3156722 (= (head!16265 testedP!447) (head!16265 input!7927)))))

(assert (= (and d!2379025 (not res!3156719)) b!7966069))

(assert (= (and b!7966069 res!3156721) b!7966070))

(assert (= (and b!7966070 res!3156722) b!7966071))

(assert (= (and d!2379025 (not res!3156720)) b!7966072))

(declare-fun m!8345746 () Bool)

(assert (=> b!7966071 m!8345746))

(assert (=> b!7966071 m!8345604))

(assert (=> b!7966071 m!8345746))

(assert (=> b!7966071 m!8345604))

(declare-fun m!8345748 () Bool)

(assert (=> b!7966071 m!8345748))

(assert (=> b!7966072 m!8345574))

(assert (=> b!7966072 m!8345572))

(declare-fun m!8345750 () Bool)

(assert (=> b!7966070 m!8345750))

(declare-fun m!8345752 () Bool)

(assert (=> b!7966070 m!8345752))

(assert (=> b!7965791 d!2379025))

(declare-fun d!2379027 () Bool)

(assert (=> d!2379027 (<= (size!43449 testedP!447) (size!43449 input!7927))))

(declare-fun lt!2705977 () Unit!170178)

(declare-fun choose!60048 (List!74742 List!74742) Unit!170178)

(assert (=> d!2379027 (= lt!2705977 (choose!60048 testedP!447 input!7927))))

(assert (=> d!2379027 (isPrefix!6613 testedP!447 input!7927)))

(assert (=> d!2379027 (= (lemmaIsPrefixThenSmallerEqSize!1130 testedP!447 input!7927) lt!2705977)))

(declare-fun bs!1969864 () Bool)

(assert (= bs!1969864 d!2379027))

(assert (=> bs!1969864 m!8345572))

(assert (=> bs!1969864 m!8345574))

(declare-fun m!8345754 () Bool)

(assert (=> bs!1969864 m!8345754))

(assert (=> bs!1969864 m!8345570))

(assert (=> b!7965784 d!2379027))

(declare-fun d!2379029 () Bool)

(assert (=> d!2379029 (isPrefix!6613 input!7927 input!7927)))

(declare-fun lt!2705980 () Unit!170178)

(declare-fun choose!60049 (List!74742 List!74742) Unit!170178)

(assert (=> d!2379029 (= lt!2705980 (choose!60049 input!7927 input!7927))))

(assert (=> d!2379029 (= (lemmaIsPrefixRefl!4081 input!7927 input!7927) lt!2705980)))

(declare-fun bs!1969865 () Bool)

(assert (= bs!1969865 d!2379029))

(assert (=> bs!1969865 m!8345566))

(declare-fun m!8345756 () Bool)

(assert (=> bs!1969865 m!8345756))

(assert (=> b!7965789 d!2379029))

(declare-fun d!2379031 () Bool)

(declare-fun e!4697462 () Bool)

(assert (=> d!2379031 e!4697462))

(declare-fun res!3156724 () Bool)

(assert (=> d!2379031 (=> res!3156724 e!4697462)))

(declare-fun lt!2705981 () Bool)

(assert (=> d!2379031 (= res!3156724 (not lt!2705981))))

(declare-fun e!4697461 () Bool)

(assert (=> d!2379031 (= lt!2705981 e!4697461)))

(declare-fun res!3156723 () Bool)

(assert (=> d!2379031 (=> res!3156723 e!4697461)))

(assert (=> d!2379031 (= res!3156723 ((_ is Nil!74618) input!7927))))

(assert (=> d!2379031 (= (isPrefix!6613 input!7927 input!7927) lt!2705981)))

(declare-fun b!7966075 () Bool)

(declare-fun e!4697460 () Bool)

(assert (=> b!7966075 (= e!4697460 (isPrefix!6613 (tail!15802 input!7927) (tail!15802 input!7927)))))

(declare-fun b!7966076 () Bool)

(assert (=> b!7966076 (= e!4697462 (>= (size!43449 input!7927) (size!43449 input!7927)))))

(declare-fun b!7966073 () Bool)

(assert (=> b!7966073 (= e!4697461 e!4697460)))

(declare-fun res!3156725 () Bool)

(assert (=> b!7966073 (=> (not res!3156725) (not e!4697460))))

(assert (=> b!7966073 (= res!3156725 (not ((_ is Nil!74618) input!7927)))))

(declare-fun b!7966074 () Bool)

(declare-fun res!3156726 () Bool)

(assert (=> b!7966074 (=> (not res!3156726) (not e!4697460))))

(assert (=> b!7966074 (= res!3156726 (= (head!16265 input!7927) (head!16265 input!7927)))))

(assert (= (and d!2379031 (not res!3156723)) b!7966073))

(assert (= (and b!7966073 res!3156725) b!7966074))

(assert (= (and b!7966074 res!3156726) b!7966075))

(assert (= (and d!2379031 (not res!3156724)) b!7966076))

(assert (=> b!7966075 m!8345604))

(assert (=> b!7966075 m!8345604))

(assert (=> b!7966075 m!8345604))

(assert (=> b!7966075 m!8345604))

(declare-fun m!8345758 () Bool)

(assert (=> b!7966075 m!8345758))

(assert (=> b!7966076 m!8345574))

(assert (=> b!7966076 m!8345574))

(assert (=> b!7966074 m!8345752))

(assert (=> b!7966074 m!8345752))

(assert (=> b!7965789 d!2379031))

(declare-fun d!2379033 () Bool)

(assert (=> d!2379033 (= input!7927 testedP!447)))

(declare-fun lt!2705984 () Unit!170178)

(declare-fun choose!60050 (List!74742 List!74742 List!74742) Unit!170178)

(assert (=> d!2379033 (= lt!2705984 (choose!60050 input!7927 testedP!447 input!7927))))

(assert (=> d!2379033 (isPrefix!6613 input!7927 input!7927)))

(assert (=> d!2379033 (= (lemmaIsPrefixSameLengthThenSameList!1661 input!7927 testedP!447 input!7927) lt!2705984)))

(declare-fun bs!1969866 () Bool)

(assert (= bs!1969866 d!2379033))

(declare-fun m!8345760 () Bool)

(assert (=> bs!1969866 m!8345760))

(assert (=> bs!1969866 m!8345566))

(assert (=> b!7965789 d!2379033))

(declare-fun d!2379035 () Bool)

(assert (=> d!2379035 (isPrefix!6613 (++!18383 testedP!447 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618)) input!7927)))

(declare-fun lt!2705987 () Unit!170178)

(declare-fun choose!60051 (List!74742 List!74742) Unit!170178)

(assert (=> d!2379035 (= lt!2705987 (choose!60051 testedP!447 input!7927))))

(assert (=> d!2379035 (isPrefix!6613 testedP!447 input!7927)))

(assert (=> d!2379035 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1340 testedP!447 input!7927) lt!2705987)))

(declare-fun bs!1969867 () Bool)

(assert (= bs!1969867 d!2379035))

(assert (=> bs!1969867 m!8345578))

(assert (=> bs!1969867 m!8345578))

(assert (=> bs!1969867 m!8345728))

(assert (=> bs!1969867 m!8345730))

(assert (=> bs!1969867 m!8345570))

(declare-fun m!8345762 () Bool)

(assert (=> bs!1969867 m!8345762))

(assert (=> bs!1969867 m!8345730))

(assert (=> bs!1969867 m!8345732))

(assert (=> b!7965790 d!2379035))

(declare-fun d!2379037 () Bool)

(assert (=> d!2379037 (= (head!16265 lt!2705758) (h!81066 lt!2705758))))

(assert (=> b!7965790 d!2379037))

(declare-fun b!7966087 () Bool)

(declare-fun res!3156731 () Bool)

(declare-fun e!4697468 () Bool)

(assert (=> b!7966087 (=> (not res!3156731) (not e!4697468))))

(declare-fun lt!2705990 () List!74742)

(assert (=> b!7966087 (= res!3156731 (= (size!43449 lt!2705990) (+ (size!43449 testedP!447) (size!43449 (Cons!74618 (head!16265 lt!2705758) Nil!74618)))))))

(declare-fun b!7966088 () Bool)

(assert (=> b!7966088 (= e!4697468 (or (not (= (Cons!74618 (head!16265 lt!2705758) Nil!74618) Nil!74618)) (= lt!2705990 testedP!447)))))

(declare-fun b!7966085 () Bool)

(declare-fun e!4697467 () List!74742)

(assert (=> b!7966085 (= e!4697467 (Cons!74618 (head!16265 lt!2705758) Nil!74618))))

(declare-fun d!2379039 () Bool)

(assert (=> d!2379039 e!4697468))

(declare-fun res!3156732 () Bool)

(assert (=> d!2379039 (=> (not res!3156732) (not e!4697468))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15852 (List!74742) (InoxSet C!43364))

(assert (=> d!2379039 (= res!3156732 (= (content!15852 lt!2705990) ((_ map or) (content!15852 testedP!447) (content!15852 (Cons!74618 (head!16265 lt!2705758) Nil!74618)))))))

(assert (=> d!2379039 (= lt!2705990 e!4697467)))

(declare-fun c!1463000 () Bool)

(assert (=> d!2379039 (= c!1463000 ((_ is Nil!74618) testedP!447))))

(assert (=> d!2379039 (= (++!18383 testedP!447 (Cons!74618 (head!16265 lt!2705758) Nil!74618)) lt!2705990)))

(declare-fun b!7966086 () Bool)

(assert (=> b!7966086 (= e!4697467 (Cons!74618 (h!81066 testedP!447) (++!18383 (t!390485 testedP!447) (Cons!74618 (head!16265 lt!2705758) Nil!74618))))))

(assert (= (and d!2379039 c!1463000) b!7966085))

(assert (= (and d!2379039 (not c!1463000)) b!7966086))

(assert (= (and d!2379039 res!3156732) b!7966087))

(assert (= (and b!7966087 res!3156731) b!7966088))

(declare-fun m!8345764 () Bool)

(assert (=> b!7966087 m!8345764))

(assert (=> b!7966087 m!8345572))

(declare-fun m!8345766 () Bool)

(assert (=> b!7966087 m!8345766))

(declare-fun m!8345768 () Bool)

(assert (=> d!2379039 m!8345768))

(declare-fun m!8345770 () Bool)

(assert (=> d!2379039 m!8345770))

(declare-fun m!8345772 () Bool)

(assert (=> d!2379039 m!8345772))

(declare-fun m!8345774 () Bool)

(assert (=> b!7966086 m!8345774))

(assert (=> b!7965790 d!2379039))

(declare-fun d!2379041 () Bool)

(declare-fun nullableFct!3794 (Regex!21513) Bool)

(assert (=> d!2379041 (= (nullable!9614 r!24602) (nullableFct!3794 r!24602))))

(declare-fun bs!1969868 () Bool)

(assert (= bs!1969868 d!2379041))

(declare-fun m!8345776 () Bool)

(assert (=> bs!1969868 m!8345776))

(assert (=> b!7965790 d!2379041))

(declare-fun d!2379043 () Bool)

(declare-fun e!4697471 () Bool)

(assert (=> d!2379043 e!4697471))

(declare-fun res!3156734 () Bool)

(assert (=> d!2379043 (=> res!3156734 e!4697471)))

(declare-fun lt!2705991 () Bool)

(assert (=> d!2379043 (= res!3156734 (not lt!2705991))))

(declare-fun e!4697470 () Bool)

(assert (=> d!2379043 (= lt!2705991 e!4697470)))

(declare-fun res!3156733 () Bool)

(assert (=> d!2379043 (=> res!3156733 e!4697470)))

(assert (=> d!2379043 (= res!3156733 ((_ is Nil!74618) lt!2705755))))

(assert (=> d!2379043 (= (isPrefix!6613 lt!2705755 input!7927) lt!2705991)))

(declare-fun b!7966091 () Bool)

(declare-fun e!4697469 () Bool)

(assert (=> b!7966091 (= e!4697469 (isPrefix!6613 (tail!15802 lt!2705755) (tail!15802 input!7927)))))

(declare-fun b!7966092 () Bool)

(assert (=> b!7966092 (= e!4697471 (>= (size!43449 input!7927) (size!43449 lt!2705755)))))

(declare-fun b!7966089 () Bool)

(assert (=> b!7966089 (= e!4697470 e!4697469)))

(declare-fun res!3156735 () Bool)

(assert (=> b!7966089 (=> (not res!3156735) (not e!4697469))))

(assert (=> b!7966089 (= res!3156735 (not ((_ is Nil!74618) input!7927)))))

(declare-fun b!7966090 () Bool)

(declare-fun res!3156736 () Bool)

(assert (=> b!7966090 (=> (not res!3156736) (not e!4697469))))

(assert (=> b!7966090 (= res!3156736 (= (head!16265 lt!2705755) (head!16265 input!7927)))))

(assert (= (and d!2379043 (not res!3156733)) b!7966089))

(assert (= (and b!7966089 res!3156735) b!7966090))

(assert (= (and b!7966090 res!3156736) b!7966091))

(assert (= (and d!2379043 (not res!3156734)) b!7966092))

(declare-fun m!8345778 () Bool)

(assert (=> b!7966091 m!8345778))

(assert (=> b!7966091 m!8345604))

(assert (=> b!7966091 m!8345778))

(assert (=> b!7966091 m!8345604))

(declare-fun m!8345780 () Bool)

(assert (=> b!7966091 m!8345780))

(assert (=> b!7966092 m!8345574))

(declare-fun m!8345782 () Bool)

(assert (=> b!7966092 m!8345782))

(declare-fun m!8345784 () Bool)

(assert (=> b!7966090 m!8345784))

(assert (=> b!7966090 m!8345752))

(assert (=> b!7965790 d!2379043))

(declare-fun b!7966104 () Bool)

(declare-fun e!4697474 () Bool)

(declare-fun tp!2373949 () Bool)

(declare-fun tp!2373948 () Bool)

(assert (=> b!7966104 (= e!4697474 (and tp!2373949 tp!2373948))))

(declare-fun b!7966106 () Bool)

(declare-fun tp!2373946 () Bool)

(declare-fun tp!2373947 () Bool)

(assert (=> b!7966106 (= e!4697474 (and tp!2373946 tp!2373947))))

(assert (=> b!7965788 (= tp!2373860 e!4697474)))

(declare-fun b!7966103 () Bool)

(assert (=> b!7966103 (= e!4697474 tp_is_empty!53569)))

(declare-fun b!7966105 () Bool)

(declare-fun tp!2373945 () Bool)

(assert (=> b!7966105 (= e!4697474 tp!2373945)))

(assert (= (and b!7965788 ((_ is ElementMatch!21513) (regOne!43538 baseR!116))) b!7966103))

(assert (= (and b!7965788 ((_ is Concat!30512) (regOne!43538 baseR!116))) b!7966104))

(assert (= (and b!7965788 ((_ is Star!21513) (regOne!43538 baseR!116))) b!7966105))

(assert (= (and b!7965788 ((_ is Union!21513) (regOne!43538 baseR!116))) b!7966106))

(declare-fun b!7966108 () Bool)

(declare-fun e!4697475 () Bool)

(declare-fun tp!2373954 () Bool)

(declare-fun tp!2373953 () Bool)

(assert (=> b!7966108 (= e!4697475 (and tp!2373954 tp!2373953))))

(declare-fun b!7966110 () Bool)

(declare-fun tp!2373951 () Bool)

(declare-fun tp!2373952 () Bool)

(assert (=> b!7966110 (= e!4697475 (and tp!2373951 tp!2373952))))

(assert (=> b!7965788 (= tp!2373861 e!4697475)))

(declare-fun b!7966107 () Bool)

(assert (=> b!7966107 (= e!4697475 tp_is_empty!53569)))

(declare-fun b!7966109 () Bool)

(declare-fun tp!2373950 () Bool)

(assert (=> b!7966109 (= e!4697475 tp!2373950)))

(assert (= (and b!7965788 ((_ is ElementMatch!21513) (regTwo!43538 baseR!116))) b!7966107))

(assert (= (and b!7965788 ((_ is Concat!30512) (regTwo!43538 baseR!116))) b!7966108))

(assert (= (and b!7965788 ((_ is Star!21513) (regTwo!43538 baseR!116))) b!7966109))

(assert (= (and b!7965788 ((_ is Union!21513) (regTwo!43538 baseR!116))) b!7966110))

(declare-fun b!7966112 () Bool)

(declare-fun e!4697476 () Bool)

(declare-fun tp!2373959 () Bool)

(declare-fun tp!2373958 () Bool)

(assert (=> b!7966112 (= e!4697476 (and tp!2373959 tp!2373958))))

(declare-fun b!7966114 () Bool)

(declare-fun tp!2373956 () Bool)

(declare-fun tp!2373957 () Bool)

(assert (=> b!7966114 (= e!4697476 (and tp!2373956 tp!2373957))))

(assert (=> b!7965783 (= tp!2373859 e!4697476)))

(declare-fun b!7966111 () Bool)

(assert (=> b!7966111 (= e!4697476 tp_is_empty!53569)))

(declare-fun b!7966113 () Bool)

(declare-fun tp!2373955 () Bool)

(assert (=> b!7966113 (= e!4697476 tp!2373955)))

(assert (= (and b!7965783 ((_ is ElementMatch!21513) (regOne!43539 r!24602))) b!7966111))

(assert (= (and b!7965783 ((_ is Concat!30512) (regOne!43539 r!24602))) b!7966112))

(assert (= (and b!7965783 ((_ is Star!21513) (regOne!43539 r!24602))) b!7966113))

(assert (= (and b!7965783 ((_ is Union!21513) (regOne!43539 r!24602))) b!7966114))

(declare-fun b!7966116 () Bool)

(declare-fun e!4697477 () Bool)

(declare-fun tp!2373964 () Bool)

(declare-fun tp!2373963 () Bool)

(assert (=> b!7966116 (= e!4697477 (and tp!2373964 tp!2373963))))

(declare-fun b!7966118 () Bool)

(declare-fun tp!2373961 () Bool)

(declare-fun tp!2373962 () Bool)

(assert (=> b!7966118 (= e!4697477 (and tp!2373961 tp!2373962))))

(assert (=> b!7965783 (= tp!2373870 e!4697477)))

(declare-fun b!7966115 () Bool)

(assert (=> b!7966115 (= e!4697477 tp_is_empty!53569)))

(declare-fun b!7966117 () Bool)

(declare-fun tp!2373960 () Bool)

(assert (=> b!7966117 (= e!4697477 tp!2373960)))

(assert (= (and b!7965783 ((_ is ElementMatch!21513) (regTwo!43539 r!24602))) b!7966115))

(assert (= (and b!7965783 ((_ is Concat!30512) (regTwo!43539 r!24602))) b!7966116))

(assert (= (and b!7965783 ((_ is Star!21513) (regTwo!43539 r!24602))) b!7966117))

(assert (= (and b!7965783 ((_ is Union!21513) (regTwo!43539 r!24602))) b!7966118))

(declare-fun b!7966120 () Bool)

(declare-fun e!4697478 () Bool)

(declare-fun tp!2373969 () Bool)

(declare-fun tp!2373968 () Bool)

(assert (=> b!7966120 (= e!4697478 (and tp!2373969 tp!2373968))))

(declare-fun b!7966122 () Bool)

(declare-fun tp!2373966 () Bool)

(declare-fun tp!2373967 () Bool)

(assert (=> b!7966122 (= e!4697478 (and tp!2373966 tp!2373967))))

(assert (=> b!7965792 (= tp!2373865 e!4697478)))

(declare-fun b!7966119 () Bool)

(assert (=> b!7966119 (= e!4697478 tp_is_empty!53569)))

(declare-fun b!7966121 () Bool)

(declare-fun tp!2373965 () Bool)

(assert (=> b!7966121 (= e!4697478 tp!2373965)))

(assert (= (and b!7965792 ((_ is ElementMatch!21513) (regOne!43539 baseR!116))) b!7966119))

(assert (= (and b!7965792 ((_ is Concat!30512) (regOne!43539 baseR!116))) b!7966120))

(assert (= (and b!7965792 ((_ is Star!21513) (regOne!43539 baseR!116))) b!7966121))

(assert (= (and b!7965792 ((_ is Union!21513) (regOne!43539 baseR!116))) b!7966122))

(declare-fun b!7966124 () Bool)

(declare-fun e!4697479 () Bool)

(declare-fun tp!2373974 () Bool)

(declare-fun tp!2373973 () Bool)

(assert (=> b!7966124 (= e!4697479 (and tp!2373974 tp!2373973))))

(declare-fun b!7966126 () Bool)

(declare-fun tp!2373971 () Bool)

(declare-fun tp!2373972 () Bool)

(assert (=> b!7966126 (= e!4697479 (and tp!2373971 tp!2373972))))

(assert (=> b!7965792 (= tp!2373866 e!4697479)))

(declare-fun b!7966123 () Bool)

(assert (=> b!7966123 (= e!4697479 tp_is_empty!53569)))

(declare-fun b!7966125 () Bool)

(declare-fun tp!2373970 () Bool)

(assert (=> b!7966125 (= e!4697479 tp!2373970)))

(assert (= (and b!7965792 ((_ is ElementMatch!21513) (regTwo!43539 baseR!116))) b!7966123))

(assert (= (and b!7965792 ((_ is Concat!30512) (regTwo!43539 baseR!116))) b!7966124))

(assert (= (and b!7965792 ((_ is Star!21513) (regTwo!43539 baseR!116))) b!7966125))

(assert (= (and b!7965792 ((_ is Union!21513) (regTwo!43539 baseR!116))) b!7966126))

(declare-fun b!7966128 () Bool)

(declare-fun e!4697480 () Bool)

(declare-fun tp!2373979 () Bool)

(declare-fun tp!2373978 () Bool)

(assert (=> b!7966128 (= e!4697480 (and tp!2373979 tp!2373978))))

(declare-fun b!7966130 () Bool)

(declare-fun tp!2373976 () Bool)

(declare-fun tp!2373977 () Bool)

(assert (=> b!7966130 (= e!4697480 (and tp!2373976 tp!2373977))))

(assert (=> b!7965781 (= tp!2373864 e!4697480)))

(declare-fun b!7966127 () Bool)

(assert (=> b!7966127 (= e!4697480 tp_is_empty!53569)))

(declare-fun b!7966129 () Bool)

(declare-fun tp!2373975 () Bool)

(assert (=> b!7966129 (= e!4697480 tp!2373975)))

(assert (= (and b!7965781 ((_ is ElementMatch!21513) (reg!21842 baseR!116))) b!7966127))

(assert (= (and b!7965781 ((_ is Concat!30512) (reg!21842 baseR!116))) b!7966128))

(assert (= (and b!7965781 ((_ is Star!21513) (reg!21842 baseR!116))) b!7966129))

(assert (= (and b!7965781 ((_ is Union!21513) (reg!21842 baseR!116))) b!7966130))

(declare-fun b!7966132 () Bool)

(declare-fun e!4697481 () Bool)

(declare-fun tp!2373984 () Bool)

(declare-fun tp!2373983 () Bool)

(assert (=> b!7966132 (= e!4697481 (and tp!2373984 tp!2373983))))

(declare-fun b!7966134 () Bool)

(declare-fun tp!2373981 () Bool)

(declare-fun tp!2373982 () Bool)

(assert (=> b!7966134 (= e!4697481 (and tp!2373981 tp!2373982))))

(assert (=> b!7965787 (= tp!2373868 e!4697481)))

(declare-fun b!7966131 () Bool)

(assert (=> b!7966131 (= e!4697481 tp_is_empty!53569)))

(declare-fun b!7966133 () Bool)

(declare-fun tp!2373980 () Bool)

(assert (=> b!7966133 (= e!4697481 tp!2373980)))

(assert (= (and b!7965787 ((_ is ElementMatch!21513) (regOne!43538 r!24602))) b!7966131))

(assert (= (and b!7965787 ((_ is Concat!30512) (regOne!43538 r!24602))) b!7966132))

(assert (= (and b!7965787 ((_ is Star!21513) (regOne!43538 r!24602))) b!7966133))

(assert (= (and b!7965787 ((_ is Union!21513) (regOne!43538 r!24602))) b!7966134))

(declare-fun b!7966136 () Bool)

(declare-fun e!4697482 () Bool)

(declare-fun tp!2373989 () Bool)

(declare-fun tp!2373988 () Bool)

(assert (=> b!7966136 (= e!4697482 (and tp!2373989 tp!2373988))))

(declare-fun b!7966138 () Bool)

(declare-fun tp!2373986 () Bool)

(declare-fun tp!2373987 () Bool)

(assert (=> b!7966138 (= e!4697482 (and tp!2373986 tp!2373987))))

(assert (=> b!7965787 (= tp!2373867 e!4697482)))

(declare-fun b!7966135 () Bool)

(assert (=> b!7966135 (= e!4697482 tp_is_empty!53569)))

(declare-fun b!7966137 () Bool)

(declare-fun tp!2373985 () Bool)

(assert (=> b!7966137 (= e!4697482 tp!2373985)))

(assert (= (and b!7965787 ((_ is ElementMatch!21513) (regTwo!43538 r!24602))) b!7966135))

(assert (= (and b!7965787 ((_ is Concat!30512) (regTwo!43538 r!24602))) b!7966136))

(assert (= (and b!7965787 ((_ is Star!21513) (regTwo!43538 r!24602))) b!7966137))

(assert (= (and b!7965787 ((_ is Union!21513) (regTwo!43538 r!24602))) b!7966138))

(declare-fun b!7966140 () Bool)

(declare-fun e!4697483 () Bool)

(declare-fun tp!2373994 () Bool)

(declare-fun tp!2373993 () Bool)

(assert (=> b!7966140 (= e!4697483 (and tp!2373994 tp!2373993))))

(declare-fun b!7966142 () Bool)

(declare-fun tp!2373991 () Bool)

(declare-fun tp!2373992 () Bool)

(assert (=> b!7966142 (= e!4697483 (and tp!2373991 tp!2373992))))

(assert (=> b!7965780 (= tp!2373863 e!4697483)))

(declare-fun b!7966139 () Bool)

(assert (=> b!7966139 (= e!4697483 tp_is_empty!53569)))

(declare-fun b!7966141 () Bool)

(declare-fun tp!2373990 () Bool)

(assert (=> b!7966141 (= e!4697483 tp!2373990)))

(assert (= (and b!7965780 ((_ is ElementMatch!21513) (reg!21842 r!24602))) b!7966139))

(assert (= (and b!7965780 ((_ is Concat!30512) (reg!21842 r!24602))) b!7966140))

(assert (= (and b!7965780 ((_ is Star!21513) (reg!21842 r!24602))) b!7966141))

(assert (= (and b!7965780 ((_ is Union!21513) (reg!21842 r!24602))) b!7966142))

(declare-fun b!7966147 () Bool)

(declare-fun e!4697486 () Bool)

(declare-fun tp!2373997 () Bool)

(assert (=> b!7966147 (= e!4697486 (and tp_is_empty!53569 tp!2373997))))

(assert (=> b!7965785 (= tp!2373869 e!4697486)))

(assert (= (and b!7965785 ((_ is Cons!74618) (t!390485 testedP!447))) b!7966147))

(declare-fun b!7966148 () Bool)

(declare-fun e!4697487 () Bool)

(declare-fun tp!2373998 () Bool)

(assert (=> b!7966148 (= e!4697487 (and tp_is_empty!53569 tp!2373998))))

(assert (=> b!7965779 (= tp!2373862 e!4697487)))

(assert (= (and b!7965779 ((_ is Cons!74618) (t!390485 input!7927))) b!7966148))

(check-sat (not b!7966045) (not b!7966125) (not d!2378993) (not b!7965830) (not bm!738986) (not bm!738988) (not b!7966104) (not b!7966060) (not d!2379029) (not b!7966090) (not bm!738933) (not b!7966134) (not b!7966112) (not b!7966092) (not b!7966133) (not b!7966147) (not b!7966091) tp_is_empty!53569 (not b!7966071) (not bm!738989) (not b!7966129) (not b!7966054) (not b!7966086) (not b!7965803) (not b!7966114) (not d!2379039) (not b!7966140) (not bm!738934) (not d!2379041) (not b!7966074) (not b!7966142) (not b!7966136) (not b!7966120) (not b!7966132) (not b!7966121) (not b!7966110) (not b!7966124) (not bm!738985) (not b!7966117) (not bm!738984) (not b!7966138) (not b!7965844) (not b!7966109) (not d!2378991) (not b!7966070) (not b!7966087) (not b!7966113) (not b!7966141) (not b!7966075) (not d!2378977) (not b!7966116) (not b!7966076) (not b!7966072) (not b!7966122) (not b!7966105) (not b!7966053) (not b!7966126) (not b!7966148) (not b!7966118) (not d!2379027) (not b!7965839) (not bm!738991) (not b!7966137) (not b!7966128) (not b!7966106) (not b!7966108) (not b!7966049) (not b!7966130) (not bm!738990) (not d!2379033) (not bm!738987) (not d!2379035))
(check-sat)
(get-model)

(declare-fun d!2379049 () Bool)

(declare-fun res!3156745 () Bool)

(declare-fun e!4697498 () Bool)

(assert (=> d!2379049 (=> res!3156745 e!4697498)))

(assert (=> d!2379049 (= res!3156745 ((_ is ElementMatch!21513) lt!2705768))))

(assert (=> d!2379049 (= (validRegex!11817 lt!2705768) e!4697498)))

(declare-fun b!7966158 () Bool)

(declare-fun e!4697499 () Bool)

(declare-fun call!739002 () Bool)

(assert (=> b!7966158 (= e!4697499 call!739002)))

(declare-fun b!7966159 () Bool)

(declare-fun e!4697495 () Bool)

(declare-fun call!739001 () Bool)

(assert (=> b!7966159 (= e!4697495 call!739001)))

(declare-fun b!7966160 () Bool)

(declare-fun e!4697496 () Bool)

(assert (=> b!7966160 (= e!4697496 e!4697499)))

(declare-fun res!3156744 () Bool)

(assert (=> b!7966160 (=> (not res!3156744) (not e!4697499))))

(declare-fun call!739000 () Bool)

(assert (=> b!7966160 (= res!3156744 call!739000)))

(declare-fun b!7966161 () Bool)

(declare-fun e!4697497 () Bool)

(assert (=> b!7966161 (= e!4697497 call!739002)))

(declare-fun b!7966162 () Bool)

(declare-fun e!4697501 () Bool)

(declare-fun e!4697500 () Bool)

(assert (=> b!7966162 (= e!4697501 e!4697500)))

(declare-fun c!1463004 () Bool)

(assert (=> b!7966162 (= c!1463004 ((_ is Union!21513) lt!2705768))))

(declare-fun bm!738995 () Bool)

(assert (=> bm!738995 (= call!739000 call!739001)))

(declare-fun bm!738996 () Bool)

(assert (=> bm!738996 (= call!739002 (validRegex!11817 (ite c!1463004 (regTwo!43539 lt!2705768) (regTwo!43538 lt!2705768))))))

(declare-fun b!7966163 () Bool)

(assert (=> b!7966163 (= e!4697501 e!4697495)))

(declare-fun res!3156743 () Bool)

(assert (=> b!7966163 (= res!3156743 (not (nullable!9614 (reg!21842 lt!2705768))))))

(assert (=> b!7966163 (=> (not res!3156743) (not e!4697495))))

(declare-fun b!7966164 () Bool)

(assert (=> b!7966164 (= e!4697498 e!4697501)))

(declare-fun c!1463003 () Bool)

(assert (=> b!7966164 (= c!1463003 ((_ is Star!21513) lt!2705768))))

(declare-fun bm!738997 () Bool)

(assert (=> bm!738997 (= call!739001 (validRegex!11817 (ite c!1463003 (reg!21842 lt!2705768) (ite c!1463004 (regOne!43539 lt!2705768) (regOne!43538 lt!2705768)))))))

(declare-fun b!7966165 () Bool)

(declare-fun res!3156742 () Bool)

(assert (=> b!7966165 (=> res!3156742 e!4697496)))

(assert (=> b!7966165 (= res!3156742 (not ((_ is Concat!30512) lt!2705768)))))

(assert (=> b!7966165 (= e!4697500 e!4697496)))

(declare-fun b!7966166 () Bool)

(declare-fun res!3156746 () Bool)

(assert (=> b!7966166 (=> (not res!3156746) (not e!4697497))))

(assert (=> b!7966166 (= res!3156746 call!739000)))

(assert (=> b!7966166 (= e!4697500 e!4697497)))

(assert (= (and d!2379049 (not res!3156745)) b!7966164))

(assert (= (and b!7966164 c!1463003) b!7966163))

(assert (= (and b!7966164 (not c!1463003)) b!7966162))

(assert (= (and b!7966163 res!3156743) b!7966159))

(assert (= (and b!7966162 c!1463004) b!7966166))

(assert (= (and b!7966162 (not c!1463004)) b!7966165))

(assert (= (and b!7966166 res!3156746) b!7966161))

(assert (= (and b!7966165 (not res!3156742)) b!7966160))

(assert (= (and b!7966160 res!3156744) b!7966158))

(assert (= (or b!7966161 b!7966158) bm!738996))

(assert (= (or b!7966166 b!7966160) bm!738995))

(assert (= (or b!7966159 bm!738995) bm!738997))

(declare-fun m!8345800 () Bool)

(assert (=> bm!738996 m!8345800))

(declare-fun m!8345802 () Bool)

(assert (=> b!7966163 m!8345802))

(declare-fun m!8345804 () Bool)

(assert (=> bm!738997 m!8345804))

(assert (=> d!2378977 d!2379049))

(assert (=> d!2378977 d!2378981))

(assert (=> bm!738984 d!2379031))

(declare-fun d!2379055 () Bool)

(declare-fun c!1463008 () Bool)

(assert (=> d!2379055 (= c!1463008 ((_ is Nil!74618) lt!2705990))))

(declare-fun e!4697505 () (InoxSet C!43364))

(assert (=> d!2379055 (= (content!15852 lt!2705990) e!4697505)))

(declare-fun b!7966173 () Bool)

(assert (=> b!7966173 (= e!4697505 ((as const (Array C!43364 Bool)) false))))

(declare-fun b!7966174 () Bool)

(assert (=> b!7966174 (= e!4697505 ((_ map or) (store ((as const (Array C!43364 Bool)) false) (h!81066 lt!2705990) true) (content!15852 (t!390485 lt!2705990))))))

(assert (= (and d!2379055 c!1463008) b!7966173))

(assert (= (and d!2379055 (not c!1463008)) b!7966174))

(declare-fun m!8345806 () Bool)

(assert (=> b!7966174 m!8345806))

(declare-fun m!8345808 () Bool)

(assert (=> b!7966174 m!8345808))

(assert (=> d!2379039 d!2379055))

(declare-fun d!2379057 () Bool)

(declare-fun c!1463009 () Bool)

(assert (=> d!2379057 (= c!1463009 ((_ is Nil!74618) testedP!447))))

(declare-fun e!4697506 () (InoxSet C!43364))

(assert (=> d!2379057 (= (content!15852 testedP!447) e!4697506)))

(declare-fun b!7966175 () Bool)

(assert (=> b!7966175 (= e!4697506 ((as const (Array C!43364 Bool)) false))))

(declare-fun b!7966176 () Bool)

(assert (=> b!7966176 (= e!4697506 ((_ map or) (store ((as const (Array C!43364 Bool)) false) (h!81066 testedP!447) true) (content!15852 (t!390485 testedP!447))))))

(assert (= (and d!2379057 c!1463009) b!7966175))

(assert (= (and d!2379057 (not c!1463009)) b!7966176))

(declare-fun m!8345810 () Bool)

(assert (=> b!7966176 m!8345810))

(declare-fun m!8345812 () Bool)

(assert (=> b!7966176 m!8345812))

(assert (=> d!2379039 d!2379057))

(declare-fun d!2379059 () Bool)

(declare-fun c!1463010 () Bool)

(assert (=> d!2379059 (= c!1463010 ((_ is Nil!74618) (Cons!74618 (head!16265 lt!2705758) Nil!74618)))))

(declare-fun e!4697507 () (InoxSet C!43364))

(assert (=> d!2379059 (= (content!15852 (Cons!74618 (head!16265 lt!2705758) Nil!74618)) e!4697507)))

(declare-fun b!7966177 () Bool)

(assert (=> b!7966177 (= e!4697507 ((as const (Array C!43364 Bool)) false))))

(declare-fun b!7966178 () Bool)

(assert (=> b!7966178 (= e!4697507 ((_ map or) (store ((as const (Array C!43364 Bool)) false) (h!81066 (Cons!74618 (head!16265 lt!2705758) Nil!74618)) true) (content!15852 (t!390485 (Cons!74618 (head!16265 lt!2705758) Nil!74618)))))))

(assert (= (and d!2379059 c!1463010) b!7966177))

(assert (= (and d!2379059 (not c!1463010)) b!7966178))

(declare-fun m!8345814 () Bool)

(assert (=> b!7966178 m!8345814))

(declare-fun m!8345816 () Bool)

(assert (=> b!7966178 m!8345816))

(assert (=> d!2379039 d!2379059))

(declare-fun d!2379061 () Bool)

(declare-fun e!4697510 () Bool)

(assert (=> d!2379061 e!4697510))

(declare-fun res!3156748 () Bool)

(assert (=> d!2379061 (=> res!3156748 e!4697510)))

(declare-fun lt!2705993 () Bool)

(assert (=> d!2379061 (= res!3156748 (not lt!2705993))))

(declare-fun e!4697509 () Bool)

(assert (=> d!2379061 (= lt!2705993 e!4697509)))

(declare-fun res!3156747 () Bool)

(assert (=> d!2379061 (=> res!3156747 e!4697509)))

(assert (=> d!2379061 (= res!3156747 ((_ is Nil!74618) (tail!15802 lt!2705755)))))

(assert (=> d!2379061 (= (isPrefix!6613 (tail!15802 lt!2705755) (tail!15802 input!7927)) lt!2705993)))

(declare-fun b!7966181 () Bool)

(declare-fun e!4697508 () Bool)

(assert (=> b!7966181 (= e!4697508 (isPrefix!6613 (tail!15802 (tail!15802 lt!2705755)) (tail!15802 (tail!15802 input!7927))))))

(declare-fun b!7966182 () Bool)

(assert (=> b!7966182 (= e!4697510 (>= (size!43449 (tail!15802 input!7927)) (size!43449 (tail!15802 lt!2705755))))))

(declare-fun b!7966179 () Bool)

(assert (=> b!7966179 (= e!4697509 e!4697508)))

(declare-fun res!3156749 () Bool)

(assert (=> b!7966179 (=> (not res!3156749) (not e!4697508))))

(assert (=> b!7966179 (= res!3156749 (not ((_ is Nil!74618) (tail!15802 input!7927))))))

(declare-fun b!7966180 () Bool)

(declare-fun res!3156750 () Bool)

(assert (=> b!7966180 (=> (not res!3156750) (not e!4697508))))

(assert (=> b!7966180 (= res!3156750 (= (head!16265 (tail!15802 lt!2705755)) (head!16265 (tail!15802 input!7927))))))

(assert (= (and d!2379061 (not res!3156747)) b!7966179))

(assert (= (and b!7966179 res!3156749) b!7966180))

(assert (= (and b!7966180 res!3156750) b!7966181))

(assert (= (and d!2379061 (not res!3156748)) b!7966182))

(assert (=> b!7966181 m!8345778))

(declare-fun m!8345818 () Bool)

(assert (=> b!7966181 m!8345818))

(assert (=> b!7966181 m!8345604))

(declare-fun m!8345820 () Bool)

(assert (=> b!7966181 m!8345820))

(assert (=> b!7966181 m!8345818))

(assert (=> b!7966181 m!8345820))

(declare-fun m!8345822 () Bool)

(assert (=> b!7966181 m!8345822))

(assert (=> b!7966182 m!8345604))

(declare-fun m!8345824 () Bool)

(assert (=> b!7966182 m!8345824))

(assert (=> b!7966182 m!8345778))

(declare-fun m!8345826 () Bool)

(assert (=> b!7966182 m!8345826))

(assert (=> b!7966180 m!8345778))

(declare-fun m!8345828 () Bool)

(assert (=> b!7966180 m!8345828))

(assert (=> b!7966180 m!8345604))

(declare-fun m!8345830 () Bool)

(assert (=> b!7966180 m!8345830))

(assert (=> b!7966091 d!2379061))

(declare-fun d!2379063 () Bool)

(assert (=> d!2379063 (= (tail!15802 lt!2705755) (t!390485 lt!2705755))))

(assert (=> b!7966091 d!2379063))

(declare-fun d!2379065 () Bool)

(assert (=> d!2379065 (= (tail!15802 input!7927) (t!390485 input!7927))))

(assert (=> b!7966091 d!2379065))

(declare-fun d!2379067 () Bool)

(assert (=> d!2379067 (= (head!16265 testedP!447) (h!81066 testedP!447))))

(assert (=> b!7966070 d!2379067))

(declare-fun d!2379069 () Bool)

(assert (=> d!2379069 (= (head!16265 input!7927) (h!81066 input!7927))))

(assert (=> b!7966070 d!2379069))

(assert (=> bm!738985 d!2379029))

(declare-fun d!2379071 () Bool)

(declare-fun lt!2705994 () Int)

(assert (=> d!2379071 (>= lt!2705994 0)))

(declare-fun e!4697511 () Int)

(assert (=> d!2379071 (= lt!2705994 e!4697511)))

(declare-fun c!1463011 () Bool)

(assert (=> d!2379071 (= c!1463011 ((_ is Nil!74618) (t!390485 input!7927)))))

(assert (=> d!2379071 (= (size!43449 (t!390485 input!7927)) lt!2705994)))

(declare-fun b!7966183 () Bool)

(assert (=> b!7966183 (= e!4697511 0)))

(declare-fun b!7966184 () Bool)

(assert (=> b!7966184 (= e!4697511 (+ 1 (size!43449 (t!390485 (t!390485 input!7927)))))))

(assert (= (and d!2379071 c!1463011) b!7966183))

(assert (= (and d!2379071 (not c!1463011)) b!7966184))

(declare-fun m!8345832 () Bool)

(assert (=> b!7966184 m!8345832))

(assert (=> b!7965839 d!2379071))

(declare-fun d!2379073 () Bool)

(assert (=> d!2379073 (= (isEmpty!42919 (_1!38647 lt!2705954)) ((_ is Nil!74618) (_1!38647 lt!2705954)))))

(assert (=> b!7966045 d!2379073))

(declare-fun d!2379075 () Bool)

(assert (=> d!2379075 (= (head!16265 lt!2705755) (h!81066 lt!2705755))))

(assert (=> b!7966090 d!2379075))

(assert (=> b!7966090 d!2379069))

(declare-fun d!2379077 () Bool)

(assert (=> d!2379077 (isPrefix!6613 testedP!447 (++!18383 testedP!447 lt!2705758))))

(declare-fun lt!2705999 () Unit!170178)

(declare-fun choose!60052 (List!74742 List!74742) Unit!170178)

(assert (=> d!2379077 (= lt!2705999 (choose!60052 testedP!447 lt!2705758))))

(assert (=> d!2379077 (= (lemmaConcatTwoListThenFirstIsPrefix!3862 testedP!447 lt!2705758) lt!2705999)))

(declare-fun bs!1969869 () Bool)

(assert (= bs!1969869 d!2379077))

(assert (=> bs!1969869 m!8345710))

(assert (=> bs!1969869 m!8345710))

(assert (=> bs!1969869 m!8345712))

(declare-fun m!8345834 () Bool)

(assert (=> bs!1969869 m!8345834))

(assert (=> d!2378993 d!2379077))

(declare-fun b!7966207 () Bool)

(declare-fun res!3156751 () Bool)

(declare-fun e!4697523 () Bool)

(assert (=> b!7966207 (=> (not res!3156751) (not e!4697523))))

(declare-fun lt!2706000 () List!74742)

(assert (=> b!7966207 (= res!3156751 (= (size!43449 lt!2706000) (+ (size!43449 testedP!447) (size!43449 lt!2705758))))))

(declare-fun b!7966208 () Bool)

(assert (=> b!7966208 (= e!4697523 (or (not (= lt!2705758 Nil!74618)) (= lt!2706000 testedP!447)))))

(declare-fun b!7966205 () Bool)

(declare-fun e!4697522 () List!74742)

(assert (=> b!7966205 (= e!4697522 lt!2705758)))

(declare-fun d!2379079 () Bool)

(assert (=> d!2379079 e!4697523))

(declare-fun res!3156752 () Bool)

(assert (=> d!2379079 (=> (not res!3156752) (not e!4697523))))

(assert (=> d!2379079 (= res!3156752 (= (content!15852 lt!2706000) ((_ map or) (content!15852 testedP!447) (content!15852 lt!2705758))))))

(assert (=> d!2379079 (= lt!2706000 e!4697522)))

(declare-fun c!1463022 () Bool)

(assert (=> d!2379079 (= c!1463022 ((_ is Nil!74618) testedP!447))))

(assert (=> d!2379079 (= (++!18383 testedP!447 lt!2705758) lt!2706000)))

(declare-fun b!7966206 () Bool)

(assert (=> b!7966206 (= e!4697522 (Cons!74618 (h!81066 testedP!447) (++!18383 (t!390485 testedP!447) lt!2705758)))))

(assert (= (and d!2379079 c!1463022) b!7966205))

(assert (= (and d!2379079 (not c!1463022)) b!7966206))

(assert (= (and d!2379079 res!3156752) b!7966207))

(assert (= (and b!7966207 res!3156751) b!7966208))

(declare-fun m!8345836 () Bool)

(assert (=> b!7966207 m!8345836))

(assert (=> b!7966207 m!8345572))

(declare-fun m!8345838 () Bool)

(assert (=> b!7966207 m!8345838))

(declare-fun m!8345840 () Bool)

(assert (=> d!2379079 m!8345840))

(assert (=> d!2379079 m!8345770))

(declare-fun m!8345842 () Bool)

(assert (=> d!2379079 m!8345842))

(declare-fun m!8345844 () Bool)

(assert (=> b!7966206 m!8345844))

(assert (=> d!2378993 d!2379079))

(declare-fun d!2379081 () Bool)

(declare-fun e!4697526 () Bool)

(assert (=> d!2379081 e!4697526))

(declare-fun res!3156754 () Bool)

(assert (=> d!2379081 (=> res!3156754 e!4697526)))

(declare-fun lt!2706001 () Bool)

(assert (=> d!2379081 (= res!3156754 (not lt!2706001))))

(declare-fun e!4697525 () Bool)

(assert (=> d!2379081 (= lt!2706001 e!4697525)))

(declare-fun res!3156753 () Bool)

(assert (=> d!2379081 (=> res!3156753 e!4697525)))

(assert (=> d!2379081 (= res!3156753 ((_ is Nil!74618) testedP!447))))

(assert (=> d!2379081 (= (isPrefix!6613 testedP!447 (++!18383 testedP!447 lt!2705758)) lt!2706001)))

(declare-fun b!7966211 () Bool)

(declare-fun e!4697524 () Bool)

(assert (=> b!7966211 (= e!4697524 (isPrefix!6613 (tail!15802 testedP!447) (tail!15802 (++!18383 testedP!447 lt!2705758))))))

(declare-fun b!7966212 () Bool)

(assert (=> b!7966212 (= e!4697526 (>= (size!43449 (++!18383 testedP!447 lt!2705758)) (size!43449 testedP!447)))))

(declare-fun b!7966209 () Bool)

(assert (=> b!7966209 (= e!4697525 e!4697524)))

(declare-fun res!3156755 () Bool)

(assert (=> b!7966209 (=> (not res!3156755) (not e!4697524))))

(assert (=> b!7966209 (= res!3156755 (not ((_ is Nil!74618) (++!18383 testedP!447 lt!2705758))))))

(declare-fun b!7966210 () Bool)

(declare-fun res!3156756 () Bool)

(assert (=> b!7966210 (=> (not res!3156756) (not e!4697524))))

(assert (=> b!7966210 (= res!3156756 (= (head!16265 testedP!447) (head!16265 (++!18383 testedP!447 lt!2705758))))))

(assert (= (and d!2379081 (not res!3156753)) b!7966209))

(assert (= (and b!7966209 res!3156755) b!7966210))

(assert (= (and b!7966210 res!3156756) b!7966211))

(assert (= (and d!2379081 (not res!3156754)) b!7966212))

(assert (=> b!7966211 m!8345746))

(assert (=> b!7966211 m!8345710))

(declare-fun m!8345846 () Bool)

(assert (=> b!7966211 m!8345846))

(assert (=> b!7966211 m!8345746))

(assert (=> b!7966211 m!8345846))

(declare-fun m!8345848 () Bool)

(assert (=> b!7966211 m!8345848))

(assert (=> b!7966212 m!8345710))

(declare-fun m!8345850 () Bool)

(assert (=> b!7966212 m!8345850))

(assert (=> b!7966212 m!8345572))

(assert (=> b!7966210 m!8345750))

(assert (=> b!7966210 m!8345710))

(declare-fun m!8345852 () Bool)

(assert (=> b!7966210 m!8345852))

(assert (=> d!2378993 d!2379081))

(declare-fun d!2379083 () Bool)

(assert (=> d!2379083 (= lt!2705758 lt!2705970)))

(declare-fun lt!2706004 () Unit!170178)

(declare-fun choose!60053 (List!74742 List!74742 List!74742 List!74742 List!74742) Unit!170178)

(assert (=> d!2379083 (= lt!2706004 (choose!60053 testedP!447 lt!2705758 testedP!447 lt!2705970 input!7927))))

(assert (=> d!2379083 (isPrefix!6613 testedP!447 input!7927)))

(assert (=> d!2379083 (= (lemmaSamePrefixThenSameSuffix!3000 testedP!447 lt!2705758 testedP!447 lt!2705970 input!7927) lt!2706004)))

(declare-fun bs!1969870 () Bool)

(assert (= bs!1969870 d!2379083))

(declare-fun m!8345854 () Bool)

(assert (=> bs!1969870 m!8345854))

(assert (=> bs!1969870 m!8345570))

(assert (=> d!2378993 d!2379083))

(assert (=> d!2378993 d!2378991))

(declare-fun d!2379085 () Bool)

(declare-fun lostCauseFct!573 (Regex!21513) Bool)

(assert (=> d!2379085 (= (lostCause!1984 r!24602) (lostCauseFct!573 r!24602))))

(declare-fun bs!1969871 () Bool)

(assert (= bs!1969871 d!2379085))

(declare-fun m!8345856 () Bool)

(assert (=> bs!1969871 m!8345856))

(assert (=> d!2378993 d!2379085))

(declare-fun d!2379087 () Bool)

(declare-fun res!3156760 () Bool)

(declare-fun e!4697535 () Bool)

(assert (=> d!2379087 (=> res!3156760 e!4697535)))

(assert (=> d!2379087 (= res!3156760 ((_ is ElementMatch!21513) r!24602))))

(assert (=> d!2379087 (= (validRegex!11817 r!24602) e!4697535)))

(declare-fun b!7966223 () Bool)

(declare-fun e!4697536 () Bool)

(declare-fun call!739017 () Bool)

(assert (=> b!7966223 (= e!4697536 call!739017)))

(declare-fun b!7966224 () Bool)

(declare-fun e!4697532 () Bool)

(declare-fun call!739016 () Bool)

(assert (=> b!7966224 (= e!4697532 call!739016)))

(declare-fun b!7966225 () Bool)

(declare-fun e!4697533 () Bool)

(assert (=> b!7966225 (= e!4697533 e!4697536)))

(declare-fun res!3156759 () Bool)

(assert (=> b!7966225 (=> (not res!3156759) (not e!4697536))))

(declare-fun call!739015 () Bool)

(assert (=> b!7966225 (= res!3156759 call!739015)))

(declare-fun b!7966226 () Bool)

(declare-fun e!4697534 () Bool)

(assert (=> b!7966226 (= e!4697534 call!739017)))

(declare-fun b!7966227 () Bool)

(declare-fun e!4697538 () Bool)

(declare-fun e!4697537 () Bool)

(assert (=> b!7966227 (= e!4697538 e!4697537)))

(declare-fun c!1463029 () Bool)

(assert (=> b!7966227 (= c!1463029 ((_ is Union!21513) r!24602))))

(declare-fun bm!739010 () Bool)

(assert (=> bm!739010 (= call!739015 call!739016)))

(declare-fun bm!739011 () Bool)

(assert (=> bm!739011 (= call!739017 (validRegex!11817 (ite c!1463029 (regTwo!43539 r!24602) (regTwo!43538 r!24602))))))

(declare-fun b!7966228 () Bool)

(assert (=> b!7966228 (= e!4697538 e!4697532)))

(declare-fun res!3156758 () Bool)

(assert (=> b!7966228 (= res!3156758 (not (nullable!9614 (reg!21842 r!24602))))))

(assert (=> b!7966228 (=> (not res!3156758) (not e!4697532))))

(declare-fun b!7966229 () Bool)

(assert (=> b!7966229 (= e!4697535 e!4697538)))

(declare-fun c!1463028 () Bool)

(assert (=> b!7966229 (= c!1463028 ((_ is Star!21513) r!24602))))

(declare-fun bm!739012 () Bool)

(assert (=> bm!739012 (= call!739016 (validRegex!11817 (ite c!1463028 (reg!21842 r!24602) (ite c!1463029 (regOne!43539 r!24602) (regOne!43538 r!24602)))))))

(declare-fun b!7966230 () Bool)

(declare-fun res!3156757 () Bool)

(assert (=> b!7966230 (=> res!3156757 e!4697533)))

(assert (=> b!7966230 (= res!3156757 (not ((_ is Concat!30512) r!24602)))))

(assert (=> b!7966230 (= e!4697537 e!4697533)))

(declare-fun b!7966231 () Bool)

(declare-fun res!3156761 () Bool)

(assert (=> b!7966231 (=> (not res!3156761) (not e!4697534))))

(assert (=> b!7966231 (= res!3156761 call!739015)))

(assert (=> b!7966231 (= e!4697537 e!4697534)))

(assert (= (and d!2379087 (not res!3156760)) b!7966229))

(assert (= (and b!7966229 c!1463028) b!7966228))

(assert (= (and b!7966229 (not c!1463028)) b!7966227))

(assert (= (and b!7966228 res!3156758) b!7966224))

(assert (= (and b!7966227 c!1463029) b!7966231))

(assert (= (and b!7966227 (not c!1463029)) b!7966230))

(assert (= (and b!7966231 res!3156761) b!7966226))

(assert (= (and b!7966230 (not res!3156757)) b!7966225))

(assert (= (and b!7966225 res!3156759) b!7966223))

(assert (= (or b!7966226 b!7966223) bm!739011))

(assert (= (or b!7966231 b!7966225) bm!739010))

(assert (= (or b!7966224 bm!739010) bm!739012))

(declare-fun m!8345864 () Bool)

(assert (=> bm!739011 m!8345864))

(declare-fun m!8345868 () Bool)

(assert (=> b!7966228 m!8345868))

(declare-fun m!8345870 () Bool)

(assert (=> bm!739012 m!8345870))

(assert (=> d!2378993 d!2379087))

(declare-fun b!7966236 () Bool)

(declare-fun res!3156762 () Bool)

(declare-fun e!4697541 () Bool)

(assert (=> b!7966236 (=> (not res!3156762) (not e!4697541))))

(declare-fun lt!2706007 () List!74742)

(assert (=> b!7966236 (= res!3156762 (= (size!43449 lt!2706007) (+ (size!43449 (_1!38647 lt!2705951)) (size!43449 (_2!38647 lt!2705951)))))))

(declare-fun b!7966237 () Bool)

(assert (=> b!7966237 (= e!4697541 (or (not (= (_2!38647 lt!2705951) Nil!74618)) (= lt!2706007 (_1!38647 lt!2705951))))))

(declare-fun b!7966234 () Bool)

(declare-fun e!4697540 () List!74742)

(assert (=> b!7966234 (= e!4697540 (_2!38647 lt!2705951))))

(declare-fun d!2379091 () Bool)

(assert (=> d!2379091 e!4697541))

(declare-fun res!3156763 () Bool)

(assert (=> d!2379091 (=> (not res!3156763) (not e!4697541))))

(assert (=> d!2379091 (= res!3156763 (= (content!15852 lt!2706007) ((_ map or) (content!15852 (_1!38647 lt!2705951)) (content!15852 (_2!38647 lt!2705951)))))))

(assert (=> d!2379091 (= lt!2706007 e!4697540)))

(declare-fun c!1463031 () Bool)

(assert (=> d!2379091 (= c!1463031 ((_ is Nil!74618) (_1!38647 lt!2705951)))))

(assert (=> d!2379091 (= (++!18383 (_1!38647 lt!2705951) (_2!38647 lt!2705951)) lt!2706007)))

(declare-fun b!7966235 () Bool)

(assert (=> b!7966235 (= e!4697540 (Cons!74618 (h!81066 (_1!38647 lt!2705951)) (++!18383 (t!390485 (_1!38647 lt!2705951)) (_2!38647 lt!2705951))))))

(assert (= (and d!2379091 c!1463031) b!7966234))

(assert (= (and d!2379091 (not c!1463031)) b!7966235))

(assert (= (and d!2379091 res!3156763) b!7966236))

(assert (= (and b!7966236 res!3156762) b!7966237))

(declare-fun m!8345874 () Bool)

(assert (=> b!7966236 m!8345874))

(assert (=> b!7966236 m!8345722))

(declare-fun m!8345876 () Bool)

(assert (=> b!7966236 m!8345876))

(declare-fun m!8345878 () Bool)

(assert (=> d!2379091 m!8345878))

(declare-fun m!8345880 () Bool)

(assert (=> d!2379091 m!8345880))

(declare-fun m!8345882 () Bool)

(assert (=> d!2379091 m!8345882))

(declare-fun m!8345884 () Bool)

(assert (=> b!7966235 m!8345884))

(assert (=> d!2378993 d!2379091))

(declare-fun d!2379095 () Bool)

(declare-fun res!3156772 () Bool)

(declare-fun e!4697552 () Bool)

(assert (=> d!2379095 (=> res!3156772 e!4697552)))

(assert (=> d!2379095 (= res!3156772 ((_ is ElementMatch!21513) (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116)))))))

(assert (=> d!2379095 (= (validRegex!11817 (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116)))) e!4697552)))

(declare-fun b!7966247 () Bool)

(declare-fun e!4697553 () Bool)

(declare-fun call!739023 () Bool)

(assert (=> b!7966247 (= e!4697553 call!739023)))

(declare-fun b!7966248 () Bool)

(declare-fun e!4697549 () Bool)

(declare-fun call!739022 () Bool)

(assert (=> b!7966248 (= e!4697549 call!739022)))

(declare-fun b!7966249 () Bool)

(declare-fun e!4697550 () Bool)

(assert (=> b!7966249 (= e!4697550 e!4697553)))

(declare-fun res!3156771 () Bool)

(assert (=> b!7966249 (=> (not res!3156771) (not e!4697553))))

(declare-fun call!739021 () Bool)

(assert (=> b!7966249 (= res!3156771 call!739021)))

(declare-fun b!7966250 () Bool)

(declare-fun e!4697551 () Bool)

(assert (=> b!7966250 (= e!4697551 call!739023)))

(declare-fun b!7966251 () Bool)

(declare-fun e!4697555 () Bool)

(declare-fun e!4697554 () Bool)

(assert (=> b!7966251 (= e!4697555 e!4697554)))

(declare-fun c!1463035 () Bool)

(assert (=> b!7966251 (= c!1463035 ((_ is Union!21513) (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116)))))))

(declare-fun bm!739016 () Bool)

(assert (=> bm!739016 (= call!739021 call!739022)))

(declare-fun bm!739017 () Bool)

(assert (=> bm!739017 (= call!739023 (validRegex!11817 (ite c!1463035 (regTwo!43539 (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116)))) (regTwo!43538 (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116)))))))))

(declare-fun b!7966252 () Bool)

(assert (=> b!7966252 (= e!4697555 e!4697549)))

(declare-fun res!3156770 () Bool)

(assert (=> b!7966252 (= res!3156770 (not (nullable!9614 (reg!21842 (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116)))))))))

(assert (=> b!7966252 (=> (not res!3156770) (not e!4697549))))

(declare-fun b!7966253 () Bool)

(assert (=> b!7966253 (= e!4697552 e!4697555)))

(declare-fun c!1463034 () Bool)

(assert (=> b!7966253 (= c!1463034 ((_ is Star!21513) (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116)))))))

(declare-fun bm!739018 () Bool)

(assert (=> bm!739018 (= call!739022 (validRegex!11817 (ite c!1463034 (reg!21842 (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116)))) (ite c!1463035 (regOne!43539 (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116)))) (regOne!43538 (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116))))))))))

(declare-fun b!7966254 () Bool)

(declare-fun res!3156769 () Bool)

(assert (=> b!7966254 (=> res!3156769 e!4697550)))

(assert (=> b!7966254 (= res!3156769 (not ((_ is Concat!30512) (ite c!1462937 (reg!21842 baseR!116) (ite c!1462938 (regOne!43539 baseR!116) (regOne!43538 baseR!116))))))))

(assert (=> b!7966254 (= e!4697554 e!4697550)))

(declare-fun b!7966255 () Bool)

(declare-fun res!3156773 () Bool)

(assert (=> b!7966255 (=> (not res!3156773) (not e!4697551))))

(assert (=> b!7966255 (= res!3156773 call!739021)))

(assert (=> b!7966255 (= e!4697554 e!4697551)))

(assert (= (and d!2379095 (not res!3156772)) b!7966253))

(assert (= (and b!7966253 c!1463034) b!7966252))

(assert (= (and b!7966253 (not c!1463034)) b!7966251))

(assert (= (and b!7966252 res!3156770) b!7966248))

(assert (= (and b!7966251 c!1463035) b!7966255))

(assert (= (and b!7966251 (not c!1463035)) b!7966254))

(assert (= (and b!7966255 res!3156773) b!7966250))

(assert (= (and b!7966254 (not res!3156769)) b!7966249))

(assert (= (and b!7966249 res!3156771) b!7966247))

(assert (= (or b!7966250 b!7966247) bm!739017))

(assert (= (or b!7966255 b!7966249) bm!739016))

(assert (= (or b!7966248 bm!739016) bm!739018))

(declare-fun m!8345892 () Bool)

(assert (=> bm!739017 m!8345892))

(declare-fun m!8345894 () Bool)

(assert (=> b!7966252 m!8345894))

(declare-fun m!8345896 () Bool)

(assert (=> bm!739018 m!8345896))

(assert (=> bm!738934 d!2379095))

(declare-fun bm!739019 () Bool)

(declare-fun call!739029 () Bool)

(assert (=> bm!739019 (= call!739029 (isPrefix!6613 input!7927 input!7927))))

(declare-fun bm!739020 () Bool)

(declare-fun call!739026 () Unit!170178)

(assert (=> bm!739020 (= call!739026 (lemmaIsPrefixRefl!4081 input!7927 input!7927))))

(declare-fun b!7966256 () Bool)

(declare-fun e!4697558 () tuple2!70688)

(declare-fun e!4697557 () tuple2!70688)

(assert (=> b!7966256 (= e!4697558 e!4697557)))

(declare-fun lt!2706019 () tuple2!70688)

(declare-fun call!739030 () tuple2!70688)

(assert (=> b!7966256 (= lt!2706019 call!739030)))

(declare-fun c!1463036 () Bool)

(assert (=> b!7966256 (= c!1463036 (isEmpty!42919 (_1!38647 lt!2706019)))))

(declare-fun b!7966257 () Bool)

(assert (=> b!7966257 (= e!4697558 call!739030)))

(declare-fun bm!739021 () Bool)

(declare-fun call!739025 () Regex!21513)

(declare-fun call!739031 () C!43364)

(assert (=> bm!739021 (= call!739025 (derivativeStep!6541 call!738990 call!739031))))

(declare-fun b!7966258 () Bool)

(declare-fun e!4697559 () tuple2!70688)

(assert (=> b!7966258 (= e!4697559 (tuple2!70689 Nil!74618 input!7927))))

(declare-fun d!2379099 () Bool)

(declare-fun e!4697560 () Bool)

(assert (=> d!2379099 e!4697560))

(declare-fun res!3156774 () Bool)

(assert (=> d!2379099 (=> (not res!3156774) (not e!4697560))))

(declare-fun lt!2706016 () tuple2!70688)

(assert (=> d!2379099 (= res!3156774 (= (++!18383 (_1!38647 lt!2706016) (_2!38647 lt!2706016)) input!7927))))

(assert (=> d!2379099 (= lt!2706016 e!4697559)))

(declare-fun c!1463039 () Bool)

(assert (=> d!2379099 (= c!1463039 (lostCause!1984 call!738990))))

(declare-fun lt!2706031 () Unit!170178)

(declare-fun Unit!170188 () Unit!170178)

(assert (=> d!2379099 (= lt!2706031 Unit!170188)))

(assert (=> d!2379099 (= (getSuffix!3816 input!7927 lt!2705955) call!738993)))

(declare-fun lt!2706010 () Unit!170178)

(declare-fun lt!2706012 () Unit!170178)

(assert (=> d!2379099 (= lt!2706010 lt!2706012)))

(declare-fun lt!2706035 () List!74742)

(assert (=> d!2379099 (= call!738993 lt!2706035)))

(assert (=> d!2379099 (= lt!2706012 (lemmaSamePrefixThenSameSuffix!3000 lt!2705955 call!738993 lt!2705955 lt!2706035 input!7927))))

(assert (=> d!2379099 (= lt!2706035 (getSuffix!3816 input!7927 lt!2705955))))

(declare-fun lt!2706015 () Unit!170178)

(declare-fun lt!2706009 () Unit!170178)

(assert (=> d!2379099 (= lt!2706015 lt!2706009)))

(assert (=> d!2379099 (isPrefix!6613 lt!2705955 (++!18383 lt!2705955 call!738993))))

(assert (=> d!2379099 (= lt!2706009 (lemmaConcatTwoListThenFirstIsPrefix!3862 lt!2705955 call!738993))))

(assert (=> d!2379099 (validRegex!11817 call!738990)))

(assert (=> d!2379099 (= (findLongestMatchInner!2294 call!738990 lt!2705955 (+ lt!2705763 1) call!738993 input!7927 lt!2705756) lt!2706016)))

(declare-fun b!7966259 () Bool)

(declare-fun e!4697563 () tuple2!70688)

(assert (=> b!7966259 (= e!4697563 (tuple2!70689 Nil!74618 input!7927))))

(declare-fun bm!739022 () Bool)

(assert (=> bm!739022 (= call!739031 (head!16265 call!738993))))

(declare-fun b!7966260 () Bool)

(declare-fun e!4697561 () Bool)

(assert (=> b!7966260 (= e!4697560 e!4697561)))

(declare-fun res!3156775 () Bool)

(assert (=> b!7966260 (=> res!3156775 e!4697561)))

(assert (=> b!7966260 (= res!3156775 (isEmpty!42919 (_1!38647 lt!2706016)))))

(declare-fun bm!739023 () Bool)

(declare-fun call!739024 () Bool)

(assert (=> bm!739023 (= call!739024 (nullable!9614 call!738990))))

(declare-fun b!7966261 () Bool)

(declare-fun e!4697556 () Unit!170178)

(declare-fun Unit!170189 () Unit!170178)

(assert (=> b!7966261 (= e!4697556 Unit!170189)))

(declare-fun lt!2706025 () Unit!170178)

(assert (=> b!7966261 (= lt!2706025 call!739026)))

(assert (=> b!7966261 call!739029))

(declare-fun lt!2706017 () Unit!170178)

(assert (=> b!7966261 (= lt!2706017 lt!2706025)))

(declare-fun lt!2706008 () Unit!170178)

(declare-fun call!739027 () Unit!170178)

(assert (=> b!7966261 (= lt!2706008 call!739027)))

(assert (=> b!7966261 (= input!7927 lt!2705955)))

(declare-fun lt!2706018 () Unit!170178)

(assert (=> b!7966261 (= lt!2706018 lt!2706008)))

(assert (=> b!7966261 false))

(declare-fun bm!739024 () Bool)

(assert (=> bm!739024 (= call!739027 (lemmaIsPrefixSameLengthThenSameList!1661 input!7927 lt!2705955 input!7927))))

(declare-fun b!7966262 () Bool)

(declare-fun e!4697562 () tuple2!70688)

(assert (=> b!7966262 (= e!4697559 e!4697562)))

(declare-fun c!1463037 () Bool)

(assert (=> b!7966262 (= c!1463037 (= (+ lt!2705763 1) lt!2705756))))

(declare-fun b!7966263 () Bool)

(assert (=> b!7966263 (= e!4697563 (tuple2!70689 lt!2705955 Nil!74618))))

(declare-fun bm!739025 () Bool)

(declare-fun call!739028 () List!74742)

(assert (=> bm!739025 (= call!739028 (tail!15802 call!738993))))

(declare-fun b!7966264 () Bool)

(declare-fun c!1463041 () Bool)

(assert (=> b!7966264 (= c!1463041 call!739024)))

(declare-fun lt!2706033 () Unit!170178)

(declare-fun lt!2706032 () Unit!170178)

(assert (=> b!7966264 (= lt!2706033 lt!2706032)))

(declare-fun lt!2706026 () C!43364)

(declare-fun lt!2706011 () List!74742)

(assert (=> b!7966264 (= (++!18383 (++!18383 lt!2705955 (Cons!74618 lt!2706026 Nil!74618)) lt!2706011) input!7927)))

(assert (=> b!7966264 (= lt!2706032 (lemmaMoveElementToOtherListKeepsConcatEq!3540 lt!2705955 lt!2706026 lt!2706011 input!7927))))

(assert (=> b!7966264 (= lt!2706011 (tail!15802 call!738993))))

(assert (=> b!7966264 (= lt!2706026 (head!16265 call!738993))))

(declare-fun lt!2706024 () Unit!170178)

(declare-fun lt!2706034 () Unit!170178)

(assert (=> b!7966264 (= lt!2706024 lt!2706034)))

(assert (=> b!7966264 (isPrefix!6613 (++!18383 lt!2705955 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 lt!2705955)) Nil!74618)) input!7927)))

(assert (=> b!7966264 (= lt!2706034 (lemmaAddHeadSuffixToPrefixStillPrefix!1340 lt!2705955 input!7927))))

(declare-fun lt!2706013 () Unit!170178)

(declare-fun lt!2706021 () Unit!170178)

(assert (=> b!7966264 (= lt!2706013 lt!2706021)))

(assert (=> b!7966264 (= lt!2706021 (lemmaAddHeadSuffixToPrefixStillPrefix!1340 lt!2705955 input!7927))))

(declare-fun lt!2706020 () List!74742)

(assert (=> b!7966264 (= lt!2706020 (++!18383 lt!2705955 (Cons!74618 (head!16265 call!738993) Nil!74618)))))

(declare-fun lt!2706029 () Unit!170178)

(assert (=> b!7966264 (= lt!2706029 e!4697556)))

(declare-fun c!1463040 () Bool)

(assert (=> b!7966264 (= c!1463040 (= (size!43449 lt!2705955) (size!43449 input!7927)))))

(declare-fun lt!2706022 () Unit!170178)

(declare-fun lt!2706028 () Unit!170178)

(assert (=> b!7966264 (= lt!2706022 lt!2706028)))

(assert (=> b!7966264 (<= (size!43449 lt!2705955) (size!43449 input!7927))))

(assert (=> b!7966264 (= lt!2706028 (lemmaIsPrefixThenSmallerEqSize!1130 lt!2705955 input!7927))))

(assert (=> b!7966264 (= e!4697562 e!4697558)))

(declare-fun bm!739026 () Bool)

(assert (=> bm!739026 (= call!739030 (findLongestMatchInner!2294 call!739025 lt!2706020 (+ lt!2705763 1 1) call!739028 input!7927 lt!2705756))))

(declare-fun b!7966265 () Bool)

(assert (=> b!7966265 (= e!4697561 (>= (size!43449 (_1!38647 lt!2706016)) (size!43449 lt!2705955)))))

(declare-fun b!7966266 () Bool)

(assert (=> b!7966266 (= e!4697557 lt!2706019)))

(declare-fun b!7966267 () Bool)

(declare-fun c!1463038 () Bool)

(assert (=> b!7966267 (= c!1463038 call!739024)))

(declare-fun lt!2706027 () Unit!170178)

(declare-fun lt!2706023 () Unit!170178)

(assert (=> b!7966267 (= lt!2706027 lt!2706023)))

(assert (=> b!7966267 (= input!7927 lt!2705955)))

(assert (=> b!7966267 (= lt!2706023 call!739027)))

(declare-fun lt!2706014 () Unit!170178)

(declare-fun lt!2706030 () Unit!170178)

(assert (=> b!7966267 (= lt!2706014 lt!2706030)))

(assert (=> b!7966267 call!739029))

(assert (=> b!7966267 (= lt!2706030 call!739026)))

(assert (=> b!7966267 (= e!4697562 e!4697563)))

(declare-fun b!7966268 () Bool)

(assert (=> b!7966268 (= e!4697557 (tuple2!70689 lt!2705955 call!738993))))

(declare-fun b!7966269 () Bool)

(declare-fun Unit!170190 () Unit!170178)

(assert (=> b!7966269 (= e!4697556 Unit!170190)))

(assert (= (and d!2379099 c!1463039) b!7966258))

(assert (= (and d!2379099 (not c!1463039)) b!7966262))

(assert (= (and b!7966262 c!1463037) b!7966267))

(assert (= (and b!7966262 (not c!1463037)) b!7966264))

(assert (= (and b!7966267 c!1463038) b!7966263))

(assert (= (and b!7966267 (not c!1463038)) b!7966259))

(assert (= (and b!7966264 c!1463040) b!7966261))

(assert (= (and b!7966264 (not c!1463040)) b!7966269))

(assert (= (and b!7966264 c!1463041) b!7966256))

(assert (= (and b!7966264 (not c!1463041)) b!7966257))

(assert (= (and b!7966256 c!1463036) b!7966268))

(assert (= (and b!7966256 (not c!1463036)) b!7966266))

(assert (= (or b!7966256 b!7966257) bm!739022))

(assert (= (or b!7966256 b!7966257) bm!739025))

(assert (= (or b!7966256 b!7966257) bm!739021))

(assert (= (or b!7966256 b!7966257) bm!739026))

(assert (= (or b!7966267 b!7966264) bm!739023))

(assert (= (or b!7966267 b!7966261) bm!739024))

(assert (= (or b!7966267 b!7966261) bm!739020))

(assert (= (or b!7966267 b!7966261) bm!739019))

(assert (= (and d!2379099 res!3156774) b!7966260))

(assert (= (and b!7966260 (not res!3156775)) b!7966265))

(declare-fun m!8345918 () Bool)

(assert (=> d!2379099 m!8345918))

(declare-fun m!8345920 () Bool)

(assert (=> d!2379099 m!8345920))

(declare-fun m!8345922 () Bool)

(assert (=> d!2379099 m!8345922))

(assert (=> d!2379099 m!8345922))

(declare-fun m!8345924 () Bool)

(assert (=> d!2379099 m!8345924))

(declare-fun m!8345926 () Bool)

(assert (=> d!2379099 m!8345926))

(declare-fun m!8345928 () Bool)

(assert (=> d!2379099 m!8345928))

(declare-fun m!8345930 () Bool)

(assert (=> d!2379099 m!8345930))

(declare-fun m!8345932 () Bool)

(assert (=> d!2379099 m!8345932))

(declare-fun m!8345934 () Bool)

(assert (=> bm!739024 m!8345934))

(declare-fun m!8345936 () Bool)

(assert (=> b!7966256 m!8345936))

(declare-fun m!8345938 () Bool)

(assert (=> b!7966265 m!8345938))

(declare-fun m!8345940 () Bool)

(assert (=> b!7966265 m!8345940))

(assert (=> bm!739019 m!8345566))

(declare-fun m!8345942 () Bool)

(assert (=> bm!739026 m!8345942))

(declare-fun m!8345944 () Bool)

(assert (=> bm!739022 m!8345944))

(assert (=> b!7966264 m!8345944))

(declare-fun m!8345946 () Bool)

(assert (=> b!7966264 m!8345946))

(declare-fun m!8345948 () Bool)

(assert (=> b!7966264 m!8345948))

(assert (=> b!7966264 m!8345928))

(declare-fun m!8345950 () Bool)

(assert (=> b!7966264 m!8345950))

(declare-fun m!8345952 () Bool)

(assert (=> b!7966264 m!8345952))

(declare-fun m!8345954 () Bool)

(assert (=> b!7966264 m!8345954))

(declare-fun m!8345956 () Bool)

(assert (=> b!7966264 m!8345956))

(declare-fun m!8345958 () Bool)

(assert (=> b!7966264 m!8345958))

(declare-fun m!8345960 () Bool)

(assert (=> b!7966264 m!8345960))

(assert (=> b!7966264 m!8345574))

(assert (=> b!7966264 m!8345952))

(declare-fun m!8345962 () Bool)

(assert (=> b!7966264 m!8345962))

(assert (=> b!7966264 m!8345962))

(declare-fun m!8345964 () Bool)

(assert (=> b!7966264 m!8345964))

(assert (=> b!7966264 m!8345928))

(assert (=> b!7966264 m!8345940))

(assert (=> bm!739025 m!8345948))

(declare-fun m!8345966 () Bool)

(assert (=> bm!739023 m!8345966))

(declare-fun m!8345968 () Bool)

(assert (=> bm!739021 m!8345968))

(assert (=> bm!739020 m!8345564))

(declare-fun m!8345970 () Bool)

(assert (=> b!7966260 m!8345970))

(assert (=> bm!738991 d!2379099))

(assert (=> b!7966053 d!2378987))

(assert (=> b!7966053 d!2379035))

(declare-fun d!2379115 () Bool)

(assert (=> d!2379115 (= (head!16265 (getSuffix!3816 input!7927 testedP!447)) (h!81066 (getSuffix!3816 input!7927 testedP!447)))))

(assert (=> b!7966053 d!2379115))

(declare-fun d!2379121 () Bool)

(assert (=> d!2379121 (= (tail!15802 lt!2705758) (t!390485 lt!2705758))))

(assert (=> b!7966053 d!2379121))

(assert (=> b!7966053 d!2379037))

(declare-fun b!7966287 () Bool)

(declare-fun res!3156785 () Bool)

(declare-fun e!4697576 () Bool)

(assert (=> b!7966287 (=> (not res!3156785) (not e!4697576))))

(declare-fun lt!2706038 () List!74742)

(assert (=> b!7966287 (= res!3156785 (= (size!43449 lt!2706038) (+ (size!43449 (++!18383 testedP!447 (Cons!74618 lt!2705961 Nil!74618))) (size!43449 lt!2705946))))))

(declare-fun b!7966288 () Bool)

(assert (=> b!7966288 (= e!4697576 (or (not (= lt!2705946 Nil!74618)) (= lt!2706038 (++!18383 testedP!447 (Cons!74618 lt!2705961 Nil!74618)))))))

(declare-fun b!7966285 () Bool)

(declare-fun e!4697575 () List!74742)

(assert (=> b!7966285 (= e!4697575 lt!2705946)))

(declare-fun d!2379123 () Bool)

(assert (=> d!2379123 e!4697576))

(declare-fun res!3156786 () Bool)

(assert (=> d!2379123 (=> (not res!3156786) (not e!4697576))))

(assert (=> d!2379123 (= res!3156786 (= (content!15852 lt!2706038) ((_ map or) (content!15852 (++!18383 testedP!447 (Cons!74618 lt!2705961 Nil!74618))) (content!15852 lt!2705946))))))

(assert (=> d!2379123 (= lt!2706038 e!4697575)))

(declare-fun c!1463045 () Bool)

(assert (=> d!2379123 (= c!1463045 ((_ is Nil!74618) (++!18383 testedP!447 (Cons!74618 lt!2705961 Nil!74618))))))

(assert (=> d!2379123 (= (++!18383 (++!18383 testedP!447 (Cons!74618 lt!2705961 Nil!74618)) lt!2705946) lt!2706038)))

(declare-fun b!7966286 () Bool)

(assert (=> b!7966286 (= e!4697575 (Cons!74618 (h!81066 (++!18383 testedP!447 (Cons!74618 lt!2705961 Nil!74618))) (++!18383 (t!390485 (++!18383 testedP!447 (Cons!74618 lt!2705961 Nil!74618))) lt!2705946)))))

(assert (= (and d!2379123 c!1463045) b!7966285))

(assert (= (and d!2379123 (not c!1463045)) b!7966286))

(assert (= (and d!2379123 res!3156786) b!7966287))

(assert (= (and b!7966287 res!3156785) b!7966288))

(declare-fun m!8345974 () Bool)

(assert (=> b!7966287 m!8345974))

(assert (=> b!7966287 m!8345736))

(declare-fun m!8345976 () Bool)

(assert (=> b!7966287 m!8345976))

(declare-fun m!8345978 () Bool)

(assert (=> b!7966287 m!8345978))

(declare-fun m!8345980 () Bool)

(assert (=> d!2379123 m!8345980))

(assert (=> d!2379123 m!8345736))

(declare-fun m!8345982 () Bool)

(assert (=> d!2379123 m!8345982))

(declare-fun m!8345984 () Bool)

(assert (=> d!2379123 m!8345984))

(declare-fun m!8345986 () Bool)

(assert (=> b!7966286 m!8345986))

(assert (=> b!7966053 d!2379123))

(assert (=> b!7966053 d!2378991))

(assert (=> b!7966053 d!2379023))

(assert (=> b!7966053 d!2379039))

(declare-fun b!7966295 () Bool)

(declare-fun res!3156787 () Bool)

(declare-fun e!4697580 () Bool)

(assert (=> b!7966295 (=> (not res!3156787) (not e!4697580))))

(declare-fun lt!2706039 () List!74742)

(assert (=> b!7966295 (= res!3156787 (= (size!43449 lt!2706039) (+ (size!43449 testedP!447) (size!43449 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618)))))))

(declare-fun b!7966296 () Bool)

(assert (=> b!7966296 (= e!4697580 (or (not (= (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618) Nil!74618)) (= lt!2706039 testedP!447)))))

(declare-fun b!7966293 () Bool)

(declare-fun e!4697579 () List!74742)

(assert (=> b!7966293 (= e!4697579 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618))))

(declare-fun d!2379125 () Bool)

(assert (=> d!2379125 e!4697580))

(declare-fun res!3156788 () Bool)

(assert (=> d!2379125 (=> (not res!3156788) (not e!4697580))))

(assert (=> d!2379125 (= res!3156788 (= (content!15852 lt!2706039) ((_ map or) (content!15852 testedP!447) (content!15852 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618)))))))

(assert (=> d!2379125 (= lt!2706039 e!4697579)))

(declare-fun c!1463048 () Bool)

(assert (=> d!2379125 (= c!1463048 ((_ is Nil!74618) testedP!447))))

(assert (=> d!2379125 (= (++!18383 testedP!447 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618)) lt!2706039)))

(declare-fun b!7966294 () Bool)

(assert (=> b!7966294 (= e!4697579 (Cons!74618 (h!81066 testedP!447) (++!18383 (t!390485 testedP!447) (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618))))))

(assert (= (and d!2379125 c!1463048) b!7966293))

(assert (= (and d!2379125 (not c!1463048)) b!7966294))

(assert (= (and d!2379125 res!3156788) b!7966295))

(assert (= (and b!7966295 res!3156787) b!7966296))

(declare-fun m!8345988 () Bool)

(assert (=> b!7966295 m!8345988))

(assert (=> b!7966295 m!8345572))

(declare-fun m!8345990 () Bool)

(assert (=> b!7966295 m!8345990))

(declare-fun m!8345992 () Bool)

(assert (=> d!2379125 m!8345992))

(assert (=> d!2379125 m!8345770))

(declare-fun m!8345994 () Bool)

(assert (=> d!2379125 m!8345994))

(declare-fun m!8345996 () Bool)

(assert (=> b!7966294 m!8345996))

(assert (=> b!7966053 d!2379125))

(declare-fun b!7966299 () Bool)

(declare-fun res!3156789 () Bool)

(declare-fun e!4697582 () Bool)

(assert (=> b!7966299 (=> (not res!3156789) (not e!4697582))))

(declare-fun lt!2706040 () List!74742)

(assert (=> b!7966299 (= res!3156789 (= (size!43449 lt!2706040) (+ (size!43449 testedP!447) (size!43449 (Cons!74618 lt!2705961 Nil!74618)))))))

(declare-fun b!7966300 () Bool)

(assert (=> b!7966300 (= e!4697582 (or (not (= (Cons!74618 lt!2705961 Nil!74618) Nil!74618)) (= lt!2706040 testedP!447)))))

(declare-fun b!7966297 () Bool)

(declare-fun e!4697581 () List!74742)

(assert (=> b!7966297 (= e!4697581 (Cons!74618 lt!2705961 Nil!74618))))

(declare-fun d!2379127 () Bool)

(assert (=> d!2379127 e!4697582))

(declare-fun res!3156790 () Bool)

(assert (=> d!2379127 (=> (not res!3156790) (not e!4697582))))

(assert (=> d!2379127 (= res!3156790 (= (content!15852 lt!2706040) ((_ map or) (content!15852 testedP!447) (content!15852 (Cons!74618 lt!2705961 Nil!74618)))))))

(assert (=> d!2379127 (= lt!2706040 e!4697581)))

(declare-fun c!1463049 () Bool)

(assert (=> d!2379127 (= c!1463049 ((_ is Nil!74618) testedP!447))))

(assert (=> d!2379127 (= (++!18383 testedP!447 (Cons!74618 lt!2705961 Nil!74618)) lt!2706040)))

(declare-fun b!7966298 () Bool)

(assert (=> b!7966298 (= e!4697581 (Cons!74618 (h!81066 testedP!447) (++!18383 (t!390485 testedP!447) (Cons!74618 lt!2705961 Nil!74618))))))

(assert (= (and d!2379127 c!1463049) b!7966297))

(assert (= (and d!2379127 (not c!1463049)) b!7966298))

(assert (= (and d!2379127 res!3156790) b!7966299))

(assert (= (and b!7966299 res!3156789) b!7966300))

(declare-fun m!8345998 () Bool)

(assert (=> b!7966299 m!8345998))

(assert (=> b!7966299 m!8345572))

(declare-fun m!8346000 () Bool)

(assert (=> b!7966299 m!8346000))

(declare-fun m!8346004 () Bool)

(assert (=> d!2379127 m!8346004))

(assert (=> d!2379127 m!8345770))

(declare-fun m!8346008 () Bool)

(assert (=> d!2379127 m!8346008))

(declare-fun m!8346010 () Bool)

(assert (=> b!7966298 m!8346010))

(assert (=> b!7966053 d!2379127))

(declare-fun d!2379131 () Bool)

(declare-fun e!4697587 () Bool)

(assert (=> d!2379131 e!4697587))

(declare-fun res!3156792 () Bool)

(assert (=> d!2379131 (=> res!3156792 e!4697587)))

(declare-fun lt!2706041 () Bool)

(assert (=> d!2379131 (= res!3156792 (not lt!2706041))))

(declare-fun e!4697586 () Bool)

(assert (=> d!2379131 (= lt!2706041 e!4697586)))

(declare-fun res!3156791 () Bool)

(assert (=> d!2379131 (=> res!3156791 e!4697586)))

(assert (=> d!2379131 (= res!3156791 ((_ is Nil!74618) (++!18383 testedP!447 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618))))))

(assert (=> d!2379131 (= (isPrefix!6613 (++!18383 testedP!447 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618)) input!7927) lt!2706041)))

(declare-fun b!7966307 () Bool)

(declare-fun e!4697585 () Bool)

(assert (=> b!7966307 (= e!4697585 (isPrefix!6613 (tail!15802 (++!18383 testedP!447 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618))) (tail!15802 input!7927)))))

(declare-fun b!7966308 () Bool)

(assert (=> b!7966308 (= e!4697587 (>= (size!43449 input!7927) (size!43449 (++!18383 testedP!447 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618)))))))

(declare-fun b!7966305 () Bool)

(assert (=> b!7966305 (= e!4697586 e!4697585)))

(declare-fun res!3156793 () Bool)

(assert (=> b!7966305 (=> (not res!3156793) (not e!4697585))))

(assert (=> b!7966305 (= res!3156793 (not ((_ is Nil!74618) input!7927)))))

(declare-fun b!7966306 () Bool)

(declare-fun res!3156794 () Bool)

(assert (=> b!7966306 (=> (not res!3156794) (not e!4697585))))

(assert (=> b!7966306 (= res!3156794 (= (head!16265 (++!18383 testedP!447 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618))) (head!16265 input!7927)))))

(assert (= (and d!2379131 (not res!3156791)) b!7966305))

(assert (= (and b!7966305 res!3156793) b!7966306))

(assert (= (and b!7966306 res!3156794) b!7966307))

(assert (= (and d!2379131 (not res!3156792)) b!7966308))

(assert (=> b!7966307 m!8345730))

(declare-fun m!8346020 () Bool)

(assert (=> b!7966307 m!8346020))

(assert (=> b!7966307 m!8345604))

(assert (=> b!7966307 m!8346020))

(assert (=> b!7966307 m!8345604))

(declare-fun m!8346024 () Bool)

(assert (=> b!7966307 m!8346024))

(assert (=> b!7966308 m!8345574))

(assert (=> b!7966308 m!8345730))

(declare-fun m!8346026 () Bool)

(assert (=> b!7966308 m!8346026))

(assert (=> b!7966306 m!8345730))

(declare-fun m!8346028 () Bool)

(assert (=> b!7966306 m!8346028))

(assert (=> b!7966306 m!8345752))

(assert (=> b!7966053 d!2379131))

(declare-fun d!2379139 () Bool)

(assert (=> d!2379139 (= (++!18383 (++!18383 testedP!447 (Cons!74618 lt!2705961 Nil!74618)) lt!2705946) input!7927)))

(declare-fun lt!2706075 () Unit!170178)

(declare-fun choose!60054 (List!74742 C!43364 List!74742 List!74742) Unit!170178)

(assert (=> d!2379139 (= lt!2706075 (choose!60054 testedP!447 lt!2705961 lt!2705946 input!7927))))

(assert (=> d!2379139 (= (++!18383 testedP!447 (Cons!74618 lt!2705961 lt!2705946)) input!7927)))

(assert (=> d!2379139 (= (lemmaMoveElementToOtherListKeepsConcatEq!3540 testedP!447 lt!2705961 lt!2705946 input!7927) lt!2706075)))

(declare-fun bs!1969873 () Bool)

(assert (= bs!1969873 d!2379139))

(assert (=> bs!1969873 m!8345736))

(assert (=> bs!1969873 m!8345736))

(assert (=> bs!1969873 m!8345738))

(declare-fun m!8346040 () Bool)

(assert (=> bs!1969873 m!8346040))

(declare-fun m!8346042 () Bool)

(assert (=> bs!1969873 m!8346042))

(assert (=> b!7966053 d!2379139))

(assert (=> b!7966053 d!2379027))

(assert (=> d!2379027 d!2379023))

(assert (=> d!2379027 d!2378987))

(declare-fun d!2379147 () Bool)

(assert (=> d!2379147 (<= (size!43449 testedP!447) (size!43449 input!7927))))

(assert (=> d!2379147 true))

(declare-fun _$64!928 () Unit!170178)

(assert (=> d!2379147 (= (choose!60048 testedP!447 input!7927) _$64!928)))

(declare-fun bs!1969874 () Bool)

(assert (= bs!1969874 d!2379147))

(assert (=> bs!1969874 m!8345572))

(assert (=> bs!1969874 m!8345574))

(assert (=> d!2379027 d!2379147))

(assert (=> d!2379027 d!2379025))

(declare-fun d!2379149 () Bool)

(declare-fun lt!2706076 () Int)

(assert (=> d!2379149 (>= lt!2706076 0)))

(declare-fun e!4697606 () Int)

(assert (=> d!2379149 (= lt!2706076 e!4697606)))

(declare-fun c!1463065 () Bool)

(assert (=> d!2379149 (= c!1463065 ((_ is Nil!74618) (_1!38647 lt!2705951)))))

(assert (=> d!2379149 (= (size!43449 (_1!38647 lt!2705951)) lt!2706076)))

(declare-fun b!7966341 () Bool)

(assert (=> b!7966341 (= e!4697606 0)))

(declare-fun b!7966342 () Bool)

(assert (=> b!7966342 (= e!4697606 (+ 1 (size!43449 (t!390485 (_1!38647 lt!2705951)))))))

(assert (= (and d!2379149 c!1463065) b!7966341))

(assert (= (and d!2379149 (not c!1463065)) b!7966342))

(declare-fun m!8346098 () Bool)

(assert (=> b!7966342 m!8346098))

(assert (=> b!7966054 d!2379149))

(assert (=> b!7966054 d!2379023))

(declare-fun b!7966349 () Bool)

(declare-fun res!3156803 () Bool)

(declare-fun e!4697610 () Bool)

(assert (=> b!7966349 (=> (not res!3156803) (not e!4697610))))

(declare-fun lt!2706078 () List!74742)

(assert (=> b!7966349 (= res!3156803 (= (size!43449 lt!2706078) (+ (size!43449 (t!390485 testedP!447)) (size!43449 (Cons!74618 (head!16265 lt!2705758) Nil!74618)))))))

(declare-fun b!7966350 () Bool)

(assert (=> b!7966350 (= e!4697610 (or (not (= (Cons!74618 (head!16265 lt!2705758) Nil!74618) Nil!74618)) (= lt!2706078 (t!390485 testedP!447))))))

(declare-fun b!7966347 () Bool)

(declare-fun e!4697609 () List!74742)

(assert (=> b!7966347 (= e!4697609 (Cons!74618 (head!16265 lt!2705758) Nil!74618))))

(declare-fun d!2379153 () Bool)

(assert (=> d!2379153 e!4697610))

(declare-fun res!3156804 () Bool)

(assert (=> d!2379153 (=> (not res!3156804) (not e!4697610))))

(assert (=> d!2379153 (= res!3156804 (= (content!15852 lt!2706078) ((_ map or) (content!15852 (t!390485 testedP!447)) (content!15852 (Cons!74618 (head!16265 lt!2705758) Nil!74618)))))))

(assert (=> d!2379153 (= lt!2706078 e!4697609)))

(declare-fun c!1463067 () Bool)

(assert (=> d!2379153 (= c!1463067 ((_ is Nil!74618) (t!390485 testedP!447)))))

(assert (=> d!2379153 (= (++!18383 (t!390485 testedP!447) (Cons!74618 (head!16265 lt!2705758) Nil!74618)) lt!2706078)))

(declare-fun b!7966348 () Bool)

(assert (=> b!7966348 (= e!4697609 (Cons!74618 (h!81066 (t!390485 testedP!447)) (++!18383 (t!390485 (t!390485 testedP!447)) (Cons!74618 (head!16265 lt!2705758) Nil!74618))))))

(assert (= (and d!2379153 c!1463067) b!7966347))

(assert (= (and d!2379153 (not c!1463067)) b!7966348))

(assert (= (and d!2379153 res!3156804) b!7966349))

(assert (= (and b!7966349 res!3156803) b!7966350))

(declare-fun m!8346108 () Bool)

(assert (=> b!7966349 m!8346108))

(assert (=> b!7966349 m!8345744))

(assert (=> b!7966349 m!8345766))

(declare-fun m!8346112 () Bool)

(assert (=> d!2379153 m!8346112))

(assert (=> d!2379153 m!8345812))

(assert (=> d!2379153 m!8345772))

(declare-fun m!8346116 () Bool)

(assert (=> b!7966348 m!8346116))

(assert (=> b!7966086 d!2379153))

(declare-fun d!2379157 () Bool)

(declare-fun lt!2706079 () Regex!21513)

(assert (=> d!2379157 (validRegex!11817 lt!2706079)))

(declare-fun e!4697611 () Regex!21513)

(assert (=> d!2379157 (= lt!2706079 e!4697611)))

(declare-fun c!1463068 () Bool)

(assert (=> d!2379157 (= c!1463068 ((_ is Cons!74618) (t!390485 testedP!447)))))

(assert (=> d!2379157 (validRegex!11817 (derivativeStep!6541 baseR!116 (h!81066 testedP!447)))))

(assert (=> d!2379157 (= (derivative!699 (derivativeStep!6541 baseR!116 (h!81066 testedP!447)) (t!390485 testedP!447)) lt!2706079)))

(declare-fun b!7966351 () Bool)

(assert (=> b!7966351 (= e!4697611 (derivative!699 (derivativeStep!6541 (derivativeStep!6541 baseR!116 (h!81066 testedP!447)) (h!81066 (t!390485 testedP!447))) (t!390485 (t!390485 testedP!447))))))

(declare-fun b!7966352 () Bool)

(assert (=> b!7966352 (= e!4697611 (derivativeStep!6541 baseR!116 (h!81066 testedP!447)))))

(assert (= (and d!2379157 c!1463068) b!7966351))

(assert (= (and d!2379157 (not c!1463068)) b!7966352))

(declare-fun m!8346118 () Bool)

(assert (=> d!2379157 m!8346118))

(assert (=> d!2379157 m!8345588))

(declare-fun m!8346120 () Bool)

(assert (=> d!2379157 m!8346120))

(assert (=> b!7966351 m!8345588))

(declare-fun m!8346122 () Bool)

(assert (=> b!7966351 m!8346122))

(assert (=> b!7966351 m!8346122))

(declare-fun m!8346124 () Bool)

(assert (=> b!7966351 m!8346124))

(assert (=> b!7965803 d!2379157))

(declare-fun b!7966400 () Bool)

(declare-fun c!1463088 () Bool)

(assert (=> b!7966400 (= c!1463088 (nullable!9614 (regOne!43538 baseR!116)))))

(declare-fun e!4697641 () Regex!21513)

(declare-fun e!4697643 () Regex!21513)

(assert (=> b!7966400 (= e!4697641 e!4697643)))

(declare-fun b!7966401 () Bool)

(declare-fun e!4697639 () Regex!21513)

(assert (=> b!7966401 (= e!4697639 EmptyLang!21513)))

(declare-fun d!2379159 () Bool)

(declare-fun lt!2706093 () Regex!21513)

(assert (=> d!2379159 (validRegex!11817 lt!2706093)))

(assert (=> d!2379159 (= lt!2706093 e!4697639)))

(declare-fun c!1463087 () Bool)

(assert (=> d!2379159 (= c!1463087 (or ((_ is EmptyExpr!21513) baseR!116) ((_ is EmptyLang!21513) baseR!116)))))

(assert (=> d!2379159 (validRegex!11817 baseR!116)))

(assert (=> d!2379159 (= (derivativeStep!6541 baseR!116 (h!81066 testedP!447)) lt!2706093)))

(declare-fun b!7966402 () Bool)

(declare-fun e!4697638 () Regex!21513)

(assert (=> b!7966402 (= e!4697638 e!4697641)))

(declare-fun c!1463085 () Bool)

(assert (=> b!7966402 (= c!1463085 ((_ is Star!21513) baseR!116))))

(declare-fun b!7966403 () Bool)

(declare-fun e!4697637 () Regex!21513)

(assert (=> b!7966403 (= e!4697637 (ite (= (h!81066 testedP!447) (c!1462926 baseR!116)) EmptyExpr!21513 EmptyLang!21513))))

(declare-fun b!7966404 () Bool)

(assert (=> b!7966404 (= e!4697639 e!4697637)))

(declare-fun c!1463089 () Bool)

(assert (=> b!7966404 (= c!1463089 ((_ is ElementMatch!21513) baseR!116))))

(declare-fun b!7966405 () Bool)

(declare-fun c!1463084 () Bool)

(assert (=> b!7966405 (= c!1463084 ((_ is Union!21513) baseR!116))))

(assert (=> b!7966405 (= e!4697637 e!4697638)))

(declare-fun call!739058 () Regex!21513)

(declare-fun bm!739053 () Bool)

(assert (=> bm!739053 (= call!739058 (derivativeStep!6541 (ite c!1463084 (regOne!43539 baseR!116) (regOne!43538 baseR!116)) (h!81066 testedP!447)))))

(declare-fun bm!739054 () Bool)

(declare-fun call!739061 () Regex!21513)

(declare-fun call!739059 () Regex!21513)

(assert (=> bm!739054 (= call!739061 call!739059)))

(declare-fun b!7966406 () Bool)

(declare-fun call!739060 () Regex!21513)

(assert (=> b!7966406 (= e!4697643 (Union!21513 (Concat!30512 call!739060 (regTwo!43538 baseR!116)) EmptyLang!21513))))

(declare-fun bm!739055 () Bool)

(assert (=> bm!739055 (= call!739060 call!739061)))

(declare-fun b!7966407 () Bool)

(assert (=> b!7966407 (= e!4697643 (Union!21513 (Concat!30512 call!739058 (regTwo!43538 baseR!116)) call!739060))))

(declare-fun b!7966408 () Bool)

(assert (=> b!7966408 (= e!4697641 (Concat!30512 call!739061 baseR!116))))

(declare-fun bm!739056 () Bool)

(assert (=> bm!739056 (= call!739059 (derivativeStep!6541 (ite c!1463084 (regTwo!43539 baseR!116) (ite c!1463085 (reg!21842 baseR!116) (ite c!1463088 (regTwo!43538 baseR!116) (regOne!43538 baseR!116)))) (h!81066 testedP!447)))))

(declare-fun b!7966409 () Bool)

(assert (=> b!7966409 (= e!4697638 (Union!21513 call!739058 call!739059))))

(assert (= (and d!2379159 c!1463087) b!7966401))

(assert (= (and d!2379159 (not c!1463087)) b!7966404))

(assert (= (and b!7966404 c!1463089) b!7966403))

(assert (= (and b!7966404 (not c!1463089)) b!7966405))

(assert (= (and b!7966405 c!1463084) b!7966409))

(assert (= (and b!7966405 (not c!1463084)) b!7966402))

(assert (= (and b!7966402 c!1463085) b!7966408))

(assert (= (and b!7966402 (not c!1463085)) b!7966400))

(assert (= (and b!7966400 c!1463088) b!7966407))

(assert (= (and b!7966400 (not c!1463088)) b!7966406))

(assert (= (or b!7966407 b!7966406) bm!739055))

(assert (= (or b!7966408 bm!739055) bm!739054))

(assert (= (or b!7966409 bm!739054) bm!739056))

(assert (= (or b!7966409 b!7966407) bm!739053))

(declare-fun m!8346180 () Bool)

(assert (=> b!7966400 m!8346180))

(declare-fun m!8346182 () Bool)

(assert (=> d!2379159 m!8346182))

(assert (=> d!2379159 m!8345562))

(declare-fun m!8346184 () Bool)

(assert (=> bm!739053 m!8346184))

(declare-fun m!8346188 () Bool)

(assert (=> bm!739056 m!8346188))

(assert (=> b!7965803 d!2379159))

(assert (=> bm!738989 d!2379033))

(assert (=> bm!738988 d!2379041))

(declare-fun b!7966416 () Bool)

(declare-fun res!3156824 () Bool)

(declare-fun e!4697648 () Bool)

(assert (=> b!7966416 (=> (not res!3156824) (not e!4697648))))

(declare-fun lt!2706095 () List!74742)

(assert (=> b!7966416 (= res!3156824 (= (size!43449 lt!2706095) (+ (size!43449 testedP!447) (size!43449 lt!2705775))))))

(declare-fun b!7966417 () Bool)

(assert (=> b!7966417 (= e!4697648 (or (not (= lt!2705775 Nil!74618)) (= lt!2706095 testedP!447)))))

(declare-fun b!7966414 () Bool)

(declare-fun e!4697647 () List!74742)

(assert (=> b!7966414 (= e!4697647 lt!2705775)))

(declare-fun d!2379183 () Bool)

(assert (=> d!2379183 e!4697648))

(declare-fun res!3156825 () Bool)

(assert (=> d!2379183 (=> (not res!3156825) (not e!4697648))))

(assert (=> d!2379183 (= res!3156825 (= (content!15852 lt!2706095) ((_ map or) (content!15852 testedP!447) (content!15852 lt!2705775))))))

(assert (=> d!2379183 (= lt!2706095 e!4697647)))

(declare-fun c!1463090 () Bool)

(assert (=> d!2379183 (= c!1463090 ((_ is Nil!74618) testedP!447))))

(assert (=> d!2379183 (= (++!18383 testedP!447 lt!2705775) lt!2706095)))

(declare-fun b!7966415 () Bool)

(assert (=> b!7966415 (= e!4697647 (Cons!74618 (h!81066 testedP!447) (++!18383 (t!390485 testedP!447) lt!2705775)))))

(assert (= (and d!2379183 c!1463090) b!7966414))

(assert (= (and d!2379183 (not c!1463090)) b!7966415))

(assert (= (and d!2379183 res!3156825) b!7966416))

(assert (= (and b!7966416 res!3156824) b!7966417))

(declare-fun m!8346196 () Bool)

(assert (=> b!7966416 m!8346196))

(assert (=> b!7966416 m!8345572))

(declare-fun m!8346198 () Bool)

(assert (=> b!7966416 m!8346198))

(declare-fun m!8346200 () Bool)

(assert (=> d!2379183 m!8346200))

(assert (=> d!2379183 m!8345770))

(declare-fun m!8346202 () Bool)

(assert (=> d!2379183 m!8346202))

(declare-fun m!8346204 () Bool)

(assert (=> b!7966415 m!8346204))

(assert (=> d!2378991 d!2379183))

(assert (=> d!2378991 d!2378987))

(assert (=> d!2378991 d!2379023))

(declare-fun d!2379187 () Bool)

(assert (=> d!2379187 (= (nullable!9614 (reg!21842 baseR!116)) (nullableFct!3794 (reg!21842 baseR!116)))))

(declare-fun bs!1969879 () Bool)

(assert (= bs!1969879 d!2379187))

(declare-fun m!8346214 () Bool)

(assert (=> bs!1969879 m!8346214))

(assert (=> b!7965830 d!2379187))

(assert (=> bm!738990 d!2379121))

(declare-fun d!2379189 () Bool)

(declare-fun lt!2706097 () Int)

(assert (=> d!2379189 (>= lt!2706097 0)))

(declare-fun e!4697651 () Int)

(assert (=> d!2379189 (= lt!2706097 e!4697651)))

(declare-fun c!1463092 () Bool)

(assert (=> d!2379189 (= c!1463092 ((_ is Nil!74618) lt!2705990))))

(assert (=> d!2379189 (= (size!43449 lt!2705990) lt!2706097)))

(declare-fun b!7966422 () Bool)

(assert (=> b!7966422 (= e!4697651 0)))

(declare-fun b!7966423 () Bool)

(assert (=> b!7966423 (= e!4697651 (+ 1 (size!43449 (t!390485 lt!2705990))))))

(assert (= (and d!2379189 c!1463092) b!7966422))

(assert (= (and d!2379189 (not c!1463092)) b!7966423))

(declare-fun m!8346222 () Bool)

(assert (=> b!7966423 m!8346222))

(assert (=> b!7966087 d!2379189))

(assert (=> b!7966087 d!2379023))

(declare-fun d!2379193 () Bool)

(declare-fun lt!2706098 () Int)

(assert (=> d!2379193 (>= lt!2706098 0)))

(declare-fun e!4697652 () Int)

(assert (=> d!2379193 (= lt!2706098 e!4697652)))

(declare-fun c!1463093 () Bool)

(assert (=> d!2379193 (= c!1463093 ((_ is Nil!74618) (Cons!74618 (head!16265 lt!2705758) Nil!74618)))))

(assert (=> d!2379193 (= (size!43449 (Cons!74618 (head!16265 lt!2705758) Nil!74618)) lt!2706098)))

(declare-fun b!7966424 () Bool)

(assert (=> b!7966424 (= e!4697652 0)))

(declare-fun b!7966425 () Bool)

(assert (=> b!7966425 (= e!4697652 (+ 1 (size!43449 (t!390485 (Cons!74618 (head!16265 lt!2705758) Nil!74618)))))))

(assert (= (and d!2379193 c!1463093) b!7966424))

(assert (= (and d!2379193 (not c!1463093)) b!7966425))

(declare-fun m!8346224 () Bool)

(assert (=> b!7966425 m!8346224))

(assert (=> b!7966087 d!2379193))

(declare-fun d!2379195 () Bool)

(declare-fun res!3156831 () Bool)

(declare-fun e!4697656 () Bool)

(assert (=> d!2379195 (=> res!3156831 e!4697656)))

(assert (=> d!2379195 (= res!3156831 ((_ is ElementMatch!21513) (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116))))))

(assert (=> d!2379195 (= (validRegex!11817 (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116))) e!4697656)))

(declare-fun b!7966426 () Bool)

(declare-fun e!4697657 () Bool)

(declare-fun call!739064 () Bool)

(assert (=> b!7966426 (= e!4697657 call!739064)))

(declare-fun b!7966427 () Bool)

(declare-fun e!4697653 () Bool)

(declare-fun call!739063 () Bool)

(assert (=> b!7966427 (= e!4697653 call!739063)))

(declare-fun b!7966428 () Bool)

(declare-fun e!4697654 () Bool)

(assert (=> b!7966428 (= e!4697654 e!4697657)))

(declare-fun res!3156830 () Bool)

(assert (=> b!7966428 (=> (not res!3156830) (not e!4697657))))

(declare-fun call!739062 () Bool)

(assert (=> b!7966428 (= res!3156830 call!739062)))

(declare-fun b!7966429 () Bool)

(declare-fun e!4697655 () Bool)

(assert (=> b!7966429 (= e!4697655 call!739064)))

(declare-fun b!7966430 () Bool)

(declare-fun e!4697659 () Bool)

(declare-fun e!4697658 () Bool)

(assert (=> b!7966430 (= e!4697659 e!4697658)))

(declare-fun c!1463095 () Bool)

(assert (=> b!7966430 (= c!1463095 ((_ is Union!21513) (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116))))))

(declare-fun bm!739057 () Bool)

(assert (=> bm!739057 (= call!739062 call!739063)))

(declare-fun bm!739058 () Bool)

(assert (=> bm!739058 (= call!739064 (validRegex!11817 (ite c!1463095 (regTwo!43539 (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116))) (regTwo!43538 (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116))))))))

(declare-fun b!7966431 () Bool)

(assert (=> b!7966431 (= e!4697659 e!4697653)))

(declare-fun res!3156829 () Bool)

(assert (=> b!7966431 (= res!3156829 (not (nullable!9614 (reg!21842 (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116))))))))

(assert (=> b!7966431 (=> (not res!3156829) (not e!4697653))))

(declare-fun b!7966432 () Bool)

(assert (=> b!7966432 (= e!4697656 e!4697659)))

(declare-fun c!1463094 () Bool)

(assert (=> b!7966432 (= c!1463094 ((_ is Star!21513) (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116))))))

(declare-fun bm!739059 () Bool)

(assert (=> bm!739059 (= call!739063 (validRegex!11817 (ite c!1463094 (reg!21842 (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116))) (ite c!1463095 (regOne!43539 (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116))) (regOne!43538 (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116)))))))))

(declare-fun b!7966433 () Bool)

(declare-fun res!3156828 () Bool)

(assert (=> b!7966433 (=> res!3156828 e!4697654)))

(assert (=> b!7966433 (= res!3156828 (not ((_ is Concat!30512) (ite c!1462938 (regTwo!43539 baseR!116) (regTwo!43538 baseR!116)))))))

(assert (=> b!7966433 (= e!4697658 e!4697654)))

(declare-fun b!7966434 () Bool)

(declare-fun res!3156832 () Bool)

(assert (=> b!7966434 (=> (not res!3156832) (not e!4697655))))

(assert (=> b!7966434 (= res!3156832 call!739062)))

(assert (=> b!7966434 (= e!4697658 e!4697655)))

(assert (= (and d!2379195 (not res!3156831)) b!7966432))

(assert (= (and b!7966432 c!1463094) b!7966431))

(assert (= (and b!7966432 (not c!1463094)) b!7966430))

(assert (= (and b!7966431 res!3156829) b!7966427))

(assert (= (and b!7966430 c!1463095) b!7966434))

(assert (= (and b!7966430 (not c!1463095)) b!7966433))

(assert (= (and b!7966434 res!3156832) b!7966429))

(assert (= (and b!7966433 (not res!3156828)) b!7966428))

(assert (= (and b!7966428 res!3156830) b!7966426))

(assert (= (or b!7966429 b!7966426) bm!739058))

(assert (= (or b!7966434 b!7966428) bm!739057))

(assert (= (or b!7966427 bm!739057) bm!739059))

(declare-fun m!8346226 () Bool)

(assert (=> bm!739058 m!8346226))

(declare-fun m!8346228 () Bool)

(assert (=> b!7966431 m!8346228))

(declare-fun m!8346230 () Bool)

(assert (=> bm!739059 m!8346230))

(assert (=> bm!738933 d!2379195))

(declare-fun d!2379197 () Bool)

(assert (=> d!2379197 (= input!7927 testedP!447)))

(assert (=> d!2379197 true))

(declare-fun _$60!1345 () Unit!170178)

(assert (=> d!2379197 (= (choose!60050 input!7927 testedP!447 input!7927) _$60!1345)))

(assert (=> d!2379033 d!2379197))

(assert (=> d!2379033 d!2379031))

(assert (=> b!7966072 d!2378987))

(assert (=> b!7966072 d!2379023))

(declare-fun bm!739064 () Bool)

(declare-fun call!739070 () Bool)

(declare-fun c!1463103 () Bool)

(assert (=> bm!739064 (= call!739070 (nullable!9614 (ite c!1463103 (regTwo!43539 r!24602) (regOne!43538 r!24602))))))

(declare-fun bm!739065 () Bool)

(declare-fun call!739069 () Bool)

(assert (=> bm!739065 (= call!739069 (nullable!9614 (ite c!1463103 (regOne!43539 r!24602) (regTwo!43538 r!24602))))))

(declare-fun b!7966467 () Bool)

(declare-fun e!4697682 () Bool)

(declare-fun e!4697687 () Bool)

(assert (=> b!7966467 (= e!4697682 e!4697687)))

(declare-fun res!3156854 () Bool)

(assert (=> b!7966467 (= res!3156854 call!739070)))

(assert (=> b!7966467 (=> (not res!3156854) (not e!4697687))))

(declare-fun b!7966468 () Bool)

(declare-fun e!4697684 () Bool)

(declare-fun e!4697685 () Bool)

(assert (=> b!7966468 (= e!4697684 e!4697685)))

(declare-fun res!3156855 () Bool)

(assert (=> b!7966468 (=> res!3156855 e!4697685)))

(assert (=> b!7966468 (= res!3156855 ((_ is Star!21513) r!24602))))

(declare-fun d!2379199 () Bool)

(declare-fun res!3156853 () Bool)

(declare-fun e!4697686 () Bool)

(assert (=> d!2379199 (=> res!3156853 e!4697686)))

(assert (=> d!2379199 (= res!3156853 ((_ is EmptyExpr!21513) r!24602))))

(assert (=> d!2379199 (= (nullableFct!3794 r!24602) e!4697686)))

(declare-fun b!7966469 () Bool)

(assert (=> b!7966469 (= e!4697685 e!4697682)))

(assert (=> b!7966469 (= c!1463103 ((_ is Union!21513) r!24602))))

(declare-fun b!7966470 () Bool)

(declare-fun e!4697683 () Bool)

(assert (=> b!7966470 (= e!4697682 e!4697683)))

(declare-fun res!3156852 () Bool)

(assert (=> b!7966470 (= res!3156852 call!739069)))

(assert (=> b!7966470 (=> res!3156852 e!4697683)))

(declare-fun b!7966471 () Bool)

(assert (=> b!7966471 (= e!4697687 call!739069)))

(declare-fun b!7966472 () Bool)

(assert (=> b!7966472 (= e!4697686 e!4697684)))

(declare-fun res!3156851 () Bool)

(assert (=> b!7966472 (=> (not res!3156851) (not e!4697684))))

(assert (=> b!7966472 (= res!3156851 (and (not ((_ is EmptyLang!21513) r!24602)) (not ((_ is ElementMatch!21513) r!24602))))))

(declare-fun b!7966473 () Bool)

(assert (=> b!7966473 (= e!4697683 call!739070)))

(assert (= (and d!2379199 (not res!3156853)) b!7966472))

(assert (= (and b!7966472 res!3156851) b!7966468))

(assert (= (and b!7966468 (not res!3156855)) b!7966469))

(assert (= (and b!7966469 c!1463103) b!7966470))

(assert (= (and b!7966469 (not c!1463103)) b!7966467))

(assert (= (and b!7966470 (not res!3156852)) b!7966473))

(assert (= (and b!7966467 res!3156854) b!7966471))

(assert (= (or b!7966470 b!7966471) bm!739065))

(assert (= (or b!7966473 b!7966467) bm!739064))

(declare-fun m!8346268 () Bool)

(assert (=> bm!739064 m!8346268))

(declare-fun m!8346270 () Bool)

(assert (=> bm!739065 m!8346270))

(assert (=> d!2379041 d!2379199))

(assert (=> d!2379029 d!2379031))

(declare-fun d!2379223 () Bool)

(assert (=> d!2379223 (isPrefix!6613 input!7927 input!7927)))

(assert (=> d!2379223 true))

(declare-fun _$45!2485 () Unit!170178)

(assert (=> d!2379223 (= (choose!60049 input!7927 input!7927) _$45!2485)))

(declare-fun bs!1969882 () Bool)

(assert (= bs!1969882 d!2379223))

(assert (=> bs!1969882 m!8345566))

(assert (=> d!2379029 d!2379223))

(declare-fun d!2379225 () Bool)

(declare-fun lt!2706108 () Int)

(assert (=> d!2379225 (>= lt!2706108 0)))

(declare-fun e!4697700 () Int)

(assert (=> d!2379225 (= lt!2706108 e!4697700)))

(declare-fun c!1463106 () Bool)

(assert (=> d!2379225 (= c!1463106 ((_ is Nil!74618) (t!390485 testedP!447)))))

(assert (=> d!2379225 (= (size!43449 (t!390485 testedP!447)) lt!2706108)))

(declare-fun b!7966488 () Bool)

(assert (=> b!7966488 (= e!4697700 0)))

(declare-fun b!7966489 () Bool)

(assert (=> b!7966489 (= e!4697700 (+ 1 (size!43449 (t!390485 (t!390485 testedP!447)))))))

(assert (= (and d!2379225 c!1463106) b!7966488))

(assert (= (and d!2379225 (not c!1463106)) b!7966489))

(declare-fun m!8346272 () Bool)

(assert (=> b!7966489 m!8346272))

(assert (=> b!7966060 d!2379225))

(declare-fun b!7966490 () Bool)

(declare-fun c!1463110 () Bool)

(assert (=> b!7966490 (= c!1463110 (nullable!9614 (regOne!43538 r!24602)))))

(declare-fun e!4697704 () Regex!21513)

(declare-fun e!4697705 () Regex!21513)

(assert (=> b!7966490 (= e!4697704 e!4697705)))

(declare-fun b!7966491 () Bool)

(declare-fun e!4697703 () Regex!21513)

(assert (=> b!7966491 (= e!4697703 EmptyLang!21513)))

(declare-fun d!2379227 () Bool)

(declare-fun lt!2706109 () Regex!21513)

(assert (=> d!2379227 (validRegex!11817 lt!2706109)))

(assert (=> d!2379227 (= lt!2706109 e!4697703)))

(declare-fun c!1463109 () Bool)

(assert (=> d!2379227 (= c!1463109 (or ((_ is EmptyExpr!21513) r!24602) ((_ is EmptyLang!21513) r!24602)))))

(assert (=> d!2379227 (validRegex!11817 r!24602)))

(assert (=> d!2379227 (= (derivativeStep!6541 r!24602 call!738996) lt!2706109)))

(declare-fun b!7966492 () Bool)

(declare-fun e!4697702 () Regex!21513)

(assert (=> b!7966492 (= e!4697702 e!4697704)))

(declare-fun c!1463108 () Bool)

(assert (=> b!7966492 (= c!1463108 ((_ is Star!21513) r!24602))))

(declare-fun b!7966493 () Bool)

(declare-fun e!4697701 () Regex!21513)

(assert (=> b!7966493 (= e!4697701 (ite (= call!738996 (c!1462926 r!24602)) EmptyExpr!21513 EmptyLang!21513))))

(declare-fun b!7966494 () Bool)

(assert (=> b!7966494 (= e!4697703 e!4697701)))

(declare-fun c!1463111 () Bool)

(assert (=> b!7966494 (= c!1463111 ((_ is ElementMatch!21513) r!24602))))

(declare-fun b!7966495 () Bool)

(declare-fun c!1463107 () Bool)

(assert (=> b!7966495 (= c!1463107 ((_ is Union!21513) r!24602))))

(assert (=> b!7966495 (= e!4697701 e!4697702)))

(declare-fun call!739075 () Regex!21513)

(declare-fun bm!739070 () Bool)

(assert (=> bm!739070 (= call!739075 (derivativeStep!6541 (ite c!1463107 (regOne!43539 r!24602) (regOne!43538 r!24602)) call!738996))))

(declare-fun bm!739071 () Bool)

(declare-fun call!739078 () Regex!21513)

(declare-fun call!739076 () Regex!21513)

(assert (=> bm!739071 (= call!739078 call!739076)))

(declare-fun b!7966496 () Bool)

(declare-fun call!739077 () Regex!21513)

(assert (=> b!7966496 (= e!4697705 (Union!21513 (Concat!30512 call!739077 (regTwo!43538 r!24602)) EmptyLang!21513))))

(declare-fun bm!739072 () Bool)

(assert (=> bm!739072 (= call!739077 call!739078)))

(declare-fun b!7966497 () Bool)

(assert (=> b!7966497 (= e!4697705 (Union!21513 (Concat!30512 call!739075 (regTwo!43538 r!24602)) call!739077))))

(declare-fun b!7966498 () Bool)

(assert (=> b!7966498 (= e!4697704 (Concat!30512 call!739078 r!24602))))

(declare-fun bm!739073 () Bool)

(assert (=> bm!739073 (= call!739076 (derivativeStep!6541 (ite c!1463107 (regTwo!43539 r!24602) (ite c!1463108 (reg!21842 r!24602) (ite c!1463110 (regTwo!43538 r!24602) (regOne!43538 r!24602)))) call!738996))))

(declare-fun b!7966499 () Bool)

(assert (=> b!7966499 (= e!4697702 (Union!21513 call!739075 call!739076))))

(assert (= (and d!2379227 c!1463109) b!7966491))

(assert (= (and d!2379227 (not c!1463109)) b!7966494))

(assert (= (and b!7966494 c!1463111) b!7966493))

(assert (= (and b!7966494 (not c!1463111)) b!7966495))

(assert (= (and b!7966495 c!1463107) b!7966499))

(assert (= (and b!7966495 (not c!1463107)) b!7966492))

(assert (= (and b!7966492 c!1463108) b!7966498))

(assert (= (and b!7966492 (not c!1463108)) b!7966490))

(assert (= (and b!7966490 c!1463110) b!7966497))

(assert (= (and b!7966490 (not c!1463110)) b!7966496))

(assert (= (or b!7966497 b!7966496) bm!739072))

(assert (= (or b!7966498 bm!739072) bm!739071))

(assert (= (or b!7966499 bm!739071) bm!739073))

(assert (= (or b!7966499 b!7966497) bm!739070))

(declare-fun m!8346274 () Bool)

(assert (=> b!7966490 m!8346274))

(declare-fun m!8346276 () Bool)

(assert (=> d!2379227 m!8346276))

(assert (=> d!2379227 m!8345716))

(declare-fun m!8346278 () Bool)

(assert (=> bm!739070 m!8346278))

(declare-fun m!8346280 () Bool)

(assert (=> bm!739073 m!8346280))

(assert (=> bm!738986 d!2379227))

(assert (=> b!7966092 d!2378987))

(declare-fun d!2379229 () Bool)

(declare-fun lt!2706110 () Int)

(assert (=> d!2379229 (>= lt!2706110 0)))

(declare-fun e!4697706 () Int)

(assert (=> d!2379229 (= lt!2706110 e!4697706)))

(declare-fun c!1463112 () Bool)

(assert (=> d!2379229 (= c!1463112 ((_ is Nil!74618) lt!2705755))))

(assert (=> d!2379229 (= (size!43449 lt!2705755) lt!2706110)))

(declare-fun b!7966500 () Bool)

(assert (=> b!7966500 (= e!4697706 0)))

(declare-fun b!7966501 () Bool)

(assert (=> b!7966501 (= e!4697706 (+ 1 (size!43449 (t!390485 lt!2705755))))))

(assert (= (and d!2379229 c!1463112) b!7966500))

(assert (= (and d!2379229 (not c!1463112)) b!7966501))

(declare-fun m!8346282 () Bool)

(assert (=> b!7966501 m!8346282))

(assert (=> b!7966092 d!2379229))

(declare-fun d!2379231 () Bool)

(declare-fun e!4697709 () Bool)

(assert (=> d!2379231 e!4697709))

(declare-fun res!3156867 () Bool)

(assert (=> d!2379231 (=> res!3156867 e!4697709)))

(declare-fun lt!2706111 () Bool)

(assert (=> d!2379231 (= res!3156867 (not lt!2706111))))

(declare-fun e!4697708 () Bool)

(assert (=> d!2379231 (= lt!2706111 e!4697708)))

(declare-fun res!3156866 () Bool)

(assert (=> d!2379231 (=> res!3156866 e!4697708)))

(assert (=> d!2379231 (= res!3156866 ((_ is Nil!74618) (tail!15802 testedP!447)))))

(assert (=> d!2379231 (= (isPrefix!6613 (tail!15802 testedP!447) (tail!15802 input!7927)) lt!2706111)))

(declare-fun b!7966504 () Bool)

(declare-fun e!4697707 () Bool)

(assert (=> b!7966504 (= e!4697707 (isPrefix!6613 (tail!15802 (tail!15802 testedP!447)) (tail!15802 (tail!15802 input!7927))))))

(declare-fun b!7966505 () Bool)

(assert (=> b!7966505 (= e!4697709 (>= (size!43449 (tail!15802 input!7927)) (size!43449 (tail!15802 testedP!447))))))

(declare-fun b!7966502 () Bool)

(assert (=> b!7966502 (= e!4697708 e!4697707)))

(declare-fun res!3156868 () Bool)

(assert (=> b!7966502 (=> (not res!3156868) (not e!4697707))))

(assert (=> b!7966502 (= res!3156868 (not ((_ is Nil!74618) (tail!15802 input!7927))))))

(declare-fun b!7966503 () Bool)

(declare-fun res!3156869 () Bool)

(assert (=> b!7966503 (=> (not res!3156869) (not e!4697707))))

(assert (=> b!7966503 (= res!3156869 (= (head!16265 (tail!15802 testedP!447)) (head!16265 (tail!15802 input!7927))))))

(assert (= (and d!2379231 (not res!3156866)) b!7966502))

(assert (= (and b!7966502 res!3156868) b!7966503))

(assert (= (and b!7966503 res!3156869) b!7966504))

(assert (= (and d!2379231 (not res!3156867)) b!7966505))

(assert (=> b!7966504 m!8345746))

(declare-fun m!8346284 () Bool)

(assert (=> b!7966504 m!8346284))

(assert (=> b!7966504 m!8345604))

(assert (=> b!7966504 m!8345820))

(assert (=> b!7966504 m!8346284))

(assert (=> b!7966504 m!8345820))

(declare-fun m!8346286 () Bool)

(assert (=> b!7966504 m!8346286))

(assert (=> b!7966505 m!8345604))

(assert (=> b!7966505 m!8345824))

(assert (=> b!7966505 m!8345746))

(declare-fun m!8346288 () Bool)

(assert (=> b!7966505 m!8346288))

(assert (=> b!7966503 m!8345746))

(declare-fun m!8346290 () Bool)

(assert (=> b!7966503 m!8346290))

(assert (=> b!7966503 m!8345604))

(assert (=> b!7966503 m!8345830))

(assert (=> b!7966071 d!2379231))

(declare-fun d!2379233 () Bool)

(assert (=> d!2379233 (= (tail!15802 testedP!447) (t!390485 testedP!447))))

(assert (=> b!7966071 d!2379233))

(assert (=> b!7966071 d!2379065))

(assert (=> d!2379035 d!2379115))

(declare-fun d!2379235 () Bool)

(assert (=> d!2379235 (isPrefix!6613 (++!18383 testedP!447 (Cons!74618 (head!16265 (getSuffix!3816 input!7927 testedP!447)) Nil!74618)) input!7927)))

(assert (=> d!2379235 true))

(declare-fun _$65!1955 () Unit!170178)

(assert (=> d!2379235 (= (choose!60051 testedP!447 input!7927) _$65!1955)))

(declare-fun bs!1969883 () Bool)

(assert (= bs!1969883 d!2379235))

(assert (=> bs!1969883 m!8345578))

(assert (=> bs!1969883 m!8345578))

(assert (=> bs!1969883 m!8345728))

(assert (=> bs!1969883 m!8345730))

(assert (=> bs!1969883 m!8345730))

(assert (=> bs!1969883 m!8345732))

(assert (=> d!2379035 d!2379235))

(assert (=> d!2379035 d!2379125))

(assert (=> d!2379035 d!2379131))

(assert (=> d!2379035 d!2379025))

(assert (=> d!2379035 d!2378991))

(declare-fun d!2379239 () Bool)

(declare-fun e!4697718 () Bool)

(assert (=> d!2379239 e!4697718))

(declare-fun res!3156876 () Bool)

(assert (=> d!2379239 (=> res!3156876 e!4697718)))

(declare-fun lt!2706112 () Bool)

(assert (=> d!2379239 (= res!3156876 (not lt!2706112))))

(declare-fun e!4697717 () Bool)

(assert (=> d!2379239 (= lt!2706112 e!4697717)))

(declare-fun res!3156875 () Bool)

(assert (=> d!2379239 (=> res!3156875 e!4697717)))

(assert (=> d!2379239 (= res!3156875 ((_ is Nil!74618) (tail!15802 input!7927)))))

(assert (=> d!2379239 (= (isPrefix!6613 (tail!15802 input!7927) (tail!15802 input!7927)) lt!2706112)))

(declare-fun b!7966515 () Bool)

(declare-fun e!4697716 () Bool)

(assert (=> b!7966515 (= e!4697716 (isPrefix!6613 (tail!15802 (tail!15802 input!7927)) (tail!15802 (tail!15802 input!7927))))))

(declare-fun b!7966516 () Bool)

(assert (=> b!7966516 (= e!4697718 (>= (size!43449 (tail!15802 input!7927)) (size!43449 (tail!15802 input!7927))))))

(declare-fun b!7966513 () Bool)

(assert (=> b!7966513 (= e!4697717 e!4697716)))

(declare-fun res!3156877 () Bool)

(assert (=> b!7966513 (=> (not res!3156877) (not e!4697716))))

(assert (=> b!7966513 (= res!3156877 (not ((_ is Nil!74618) (tail!15802 input!7927))))))

(declare-fun b!7966514 () Bool)

(declare-fun res!3156878 () Bool)

(assert (=> b!7966514 (=> (not res!3156878) (not e!4697716))))

(assert (=> b!7966514 (= res!3156878 (= (head!16265 (tail!15802 input!7927)) (head!16265 (tail!15802 input!7927))))))

(assert (= (and d!2379239 (not res!3156875)) b!7966513))

(assert (= (and b!7966513 res!3156877) b!7966514))

(assert (= (and b!7966514 res!3156878) b!7966515))

(assert (= (and d!2379239 (not res!3156876)) b!7966516))

(assert (=> b!7966515 m!8345604))

(assert (=> b!7966515 m!8345820))

(assert (=> b!7966515 m!8345604))

(assert (=> b!7966515 m!8345820))

(assert (=> b!7966515 m!8345820))

(assert (=> b!7966515 m!8345820))

(declare-fun m!8346296 () Bool)

(assert (=> b!7966515 m!8346296))

(assert (=> b!7966516 m!8345604))

(assert (=> b!7966516 m!8345824))

(assert (=> b!7966516 m!8345604))

(assert (=> b!7966516 m!8345824))

(assert (=> b!7966514 m!8345604))

(assert (=> b!7966514 m!8345830))

(assert (=> b!7966514 m!8345604))

(assert (=> b!7966514 m!8345830))

(assert (=> b!7966075 d!2379239))

(assert (=> b!7966075 d!2379065))

(declare-fun d!2379241 () Bool)

(assert (=> d!2379241 (= (isEmpty!42919 (_1!38647 lt!2705951)) ((_ is Nil!74618) (_1!38647 lt!2705951)))))

(assert (=> b!7966049 d!2379241))

(assert (=> b!7966076 d!2378987))

(declare-fun d!2379243 () Bool)

(declare-fun lt!2706113 () List!74742)

(assert (=> d!2379243 (= (++!18383 (t!390485 testedP!447) lt!2706113) (tail!15802 input!7927))))

(declare-fun e!4697719 () List!74742)

(assert (=> d!2379243 (= lt!2706113 e!4697719)))

(declare-fun c!1463114 () Bool)

(assert (=> d!2379243 (= c!1463114 ((_ is Cons!74618) (t!390485 testedP!447)))))

(assert (=> d!2379243 (>= (size!43449 (tail!15802 input!7927)) (size!43449 (t!390485 testedP!447)))))

(assert (=> d!2379243 (= (getSuffix!3816 (tail!15802 input!7927) (t!390485 testedP!447)) lt!2706113)))

(declare-fun b!7966517 () Bool)

(assert (=> b!7966517 (= e!4697719 (getSuffix!3816 (tail!15802 (tail!15802 input!7927)) (t!390485 (t!390485 testedP!447))))))

(declare-fun b!7966518 () Bool)

(assert (=> b!7966518 (= e!4697719 (tail!15802 input!7927))))

(assert (= (and d!2379243 c!1463114) b!7966517))

(assert (= (and d!2379243 (not c!1463114)) b!7966518))

(declare-fun m!8346298 () Bool)

(assert (=> d!2379243 m!8346298))

(assert (=> d!2379243 m!8345604))

(assert (=> d!2379243 m!8345824))

(assert (=> d!2379243 m!8345744))

(assert (=> b!7966517 m!8345604))

(assert (=> b!7966517 m!8345820))

(assert (=> b!7966517 m!8345820))

(declare-fun m!8346300 () Bool)

(assert (=> b!7966517 m!8346300))

(assert (=> b!7965844 d!2379243))

(assert (=> b!7965844 d!2379065))

(assert (=> b!7966074 d!2379069))

(assert (=> bm!738987 d!2379037))

(declare-fun b!7966524 () Bool)

(declare-fun e!4697721 () Bool)

(declare-fun tp!2374008 () Bool)

(declare-fun tp!2374007 () Bool)

(assert (=> b!7966524 (= e!4697721 (and tp!2374008 tp!2374007))))

(declare-fun b!7966526 () Bool)

(declare-fun tp!2374005 () Bool)

(declare-fun tp!2374006 () Bool)

(assert (=> b!7966526 (= e!4697721 (and tp!2374005 tp!2374006))))

(assert (=> b!7966128 (= tp!2373979 e!4697721)))

(declare-fun b!7966523 () Bool)

(assert (=> b!7966523 (= e!4697721 tp_is_empty!53569)))

(declare-fun b!7966525 () Bool)

(declare-fun tp!2374004 () Bool)

(assert (=> b!7966525 (= e!4697721 tp!2374004)))

(assert (= (and b!7966128 ((_ is ElementMatch!21513) (regOne!43538 (reg!21842 baseR!116)))) b!7966523))

(assert (= (and b!7966128 ((_ is Concat!30512) (regOne!43538 (reg!21842 baseR!116)))) b!7966524))

(assert (= (and b!7966128 ((_ is Star!21513) (regOne!43538 (reg!21842 baseR!116)))) b!7966525))

(assert (= (and b!7966128 ((_ is Union!21513) (regOne!43538 (reg!21842 baseR!116)))) b!7966526))

(declare-fun b!7966532 () Bool)

(declare-fun e!4697723 () Bool)

(declare-fun tp!2374018 () Bool)

(declare-fun tp!2374017 () Bool)

(assert (=> b!7966532 (= e!4697723 (and tp!2374018 tp!2374017))))

(declare-fun b!7966534 () Bool)

(declare-fun tp!2374015 () Bool)

(declare-fun tp!2374016 () Bool)

(assert (=> b!7966534 (= e!4697723 (and tp!2374015 tp!2374016))))

(assert (=> b!7966128 (= tp!2373978 e!4697723)))

(declare-fun b!7966531 () Bool)

(assert (=> b!7966531 (= e!4697723 tp_is_empty!53569)))

(declare-fun b!7966533 () Bool)

(declare-fun tp!2374014 () Bool)

(assert (=> b!7966533 (= e!4697723 tp!2374014)))

(assert (= (and b!7966128 ((_ is ElementMatch!21513) (regTwo!43538 (reg!21842 baseR!116)))) b!7966531))

(assert (= (and b!7966128 ((_ is Concat!30512) (regTwo!43538 (reg!21842 baseR!116)))) b!7966532))

(assert (= (and b!7966128 ((_ is Star!21513) (regTwo!43538 (reg!21842 baseR!116)))) b!7966533))

(assert (= (and b!7966128 ((_ is Union!21513) (regTwo!43538 (reg!21842 baseR!116)))) b!7966534))

(declare-fun b!7966540 () Bool)

(declare-fun e!4697725 () Bool)

(declare-fun tp!2374028 () Bool)

(declare-fun tp!2374027 () Bool)

(assert (=> b!7966540 (= e!4697725 (and tp!2374028 tp!2374027))))

(declare-fun b!7966542 () Bool)

(declare-fun tp!2374025 () Bool)

(declare-fun tp!2374026 () Bool)

(assert (=> b!7966542 (= e!4697725 (and tp!2374025 tp!2374026))))

(assert (=> b!7966137 (= tp!2373985 e!4697725)))

(declare-fun b!7966539 () Bool)

(assert (=> b!7966539 (= e!4697725 tp_is_empty!53569)))

(declare-fun b!7966541 () Bool)

(declare-fun tp!2374024 () Bool)

(assert (=> b!7966541 (= e!4697725 tp!2374024)))

(assert (= (and b!7966137 ((_ is ElementMatch!21513) (reg!21842 (regTwo!43538 r!24602)))) b!7966539))

(assert (= (and b!7966137 ((_ is Concat!30512) (reg!21842 (regTwo!43538 r!24602)))) b!7966540))

(assert (= (and b!7966137 ((_ is Star!21513) (reg!21842 (regTwo!43538 r!24602)))) b!7966541))

(assert (= (and b!7966137 ((_ is Union!21513) (reg!21842 (regTwo!43538 r!24602)))) b!7966542))

(declare-fun b!7966548 () Bool)

(declare-fun e!4697727 () Bool)

(declare-fun tp!2374038 () Bool)

(declare-fun tp!2374037 () Bool)

(assert (=> b!7966548 (= e!4697727 (and tp!2374038 tp!2374037))))

(declare-fun b!7966550 () Bool)

(declare-fun tp!2374035 () Bool)

(declare-fun tp!2374036 () Bool)

(assert (=> b!7966550 (= e!4697727 (and tp!2374035 tp!2374036))))

(assert (=> b!7966120 (= tp!2373969 e!4697727)))

(declare-fun b!7966547 () Bool)

(assert (=> b!7966547 (= e!4697727 tp_is_empty!53569)))

(declare-fun b!7966549 () Bool)

(declare-fun tp!2374034 () Bool)

(assert (=> b!7966549 (= e!4697727 tp!2374034)))

(assert (= (and b!7966120 ((_ is ElementMatch!21513) (regOne!43538 (regOne!43539 baseR!116)))) b!7966547))

(assert (= (and b!7966120 ((_ is Concat!30512) (regOne!43538 (regOne!43539 baseR!116)))) b!7966548))

(assert (= (and b!7966120 ((_ is Star!21513) (regOne!43538 (regOne!43539 baseR!116)))) b!7966549))

(assert (= (and b!7966120 ((_ is Union!21513) (regOne!43538 (regOne!43539 baseR!116)))) b!7966550))

(declare-fun b!7966556 () Bool)

(declare-fun e!4697729 () Bool)

(declare-fun tp!2374048 () Bool)

(declare-fun tp!2374047 () Bool)

(assert (=> b!7966556 (= e!4697729 (and tp!2374048 tp!2374047))))

(declare-fun b!7966558 () Bool)

(declare-fun tp!2374045 () Bool)

(declare-fun tp!2374046 () Bool)

(assert (=> b!7966558 (= e!4697729 (and tp!2374045 tp!2374046))))

(assert (=> b!7966120 (= tp!2373968 e!4697729)))

(declare-fun b!7966555 () Bool)

(assert (=> b!7966555 (= e!4697729 tp_is_empty!53569)))

(declare-fun b!7966557 () Bool)

(declare-fun tp!2374044 () Bool)

(assert (=> b!7966557 (= e!4697729 tp!2374044)))

(assert (= (and b!7966120 ((_ is ElementMatch!21513) (regTwo!43538 (regOne!43539 baseR!116)))) b!7966555))

(assert (= (and b!7966120 ((_ is Concat!30512) (regTwo!43538 (regOne!43539 baseR!116)))) b!7966556))

(assert (= (and b!7966120 ((_ is Star!21513) (regTwo!43538 (regOne!43539 baseR!116)))) b!7966557))

(assert (= (and b!7966120 ((_ is Union!21513) (regTwo!43538 (regOne!43539 baseR!116)))) b!7966558))

(declare-fun b!7966564 () Bool)

(declare-fun e!4697731 () Bool)

(declare-fun tp!2374058 () Bool)

(declare-fun tp!2374057 () Bool)

(assert (=> b!7966564 (= e!4697731 (and tp!2374058 tp!2374057))))

(declare-fun b!7966566 () Bool)

(declare-fun tp!2374055 () Bool)

(declare-fun tp!2374056 () Bool)

(assert (=> b!7966566 (= e!4697731 (and tp!2374055 tp!2374056))))

(assert (=> b!7966129 (= tp!2373975 e!4697731)))

(declare-fun b!7966563 () Bool)

(assert (=> b!7966563 (= e!4697731 tp_is_empty!53569)))

(declare-fun b!7966565 () Bool)

(declare-fun tp!2374054 () Bool)

(assert (=> b!7966565 (= e!4697731 tp!2374054)))

(assert (= (and b!7966129 ((_ is ElementMatch!21513) (reg!21842 (reg!21842 baseR!116)))) b!7966563))

(assert (= (and b!7966129 ((_ is Concat!30512) (reg!21842 (reg!21842 baseR!116)))) b!7966564))

(assert (= (and b!7966129 ((_ is Star!21513) (reg!21842 (reg!21842 baseR!116)))) b!7966565))

(assert (= (and b!7966129 ((_ is Union!21513) (reg!21842 (reg!21842 baseR!116)))) b!7966566))

(declare-fun b!7966572 () Bool)

(declare-fun e!4697733 () Bool)

(declare-fun tp!2374068 () Bool)

(declare-fun tp!2374067 () Bool)

(assert (=> b!7966572 (= e!4697733 (and tp!2374068 tp!2374067))))

(declare-fun b!7966574 () Bool)

(declare-fun tp!2374065 () Bool)

(declare-fun tp!2374066 () Bool)

(assert (=> b!7966574 (= e!4697733 (and tp!2374065 tp!2374066))))

(assert (=> b!7966138 (= tp!2373986 e!4697733)))

(declare-fun b!7966571 () Bool)

(assert (=> b!7966571 (= e!4697733 tp_is_empty!53569)))

(declare-fun b!7966573 () Bool)

(declare-fun tp!2374064 () Bool)

(assert (=> b!7966573 (= e!4697733 tp!2374064)))

(assert (= (and b!7966138 ((_ is ElementMatch!21513) (regOne!43539 (regTwo!43538 r!24602)))) b!7966571))

(assert (= (and b!7966138 ((_ is Concat!30512) (regOne!43539 (regTwo!43538 r!24602)))) b!7966572))

(assert (= (and b!7966138 ((_ is Star!21513) (regOne!43539 (regTwo!43538 r!24602)))) b!7966573))

(assert (= (and b!7966138 ((_ is Union!21513) (regOne!43539 (regTwo!43538 r!24602)))) b!7966574))

(declare-fun b!7966580 () Bool)

(declare-fun e!4697735 () Bool)

(declare-fun tp!2374078 () Bool)

(declare-fun tp!2374077 () Bool)

(assert (=> b!7966580 (= e!4697735 (and tp!2374078 tp!2374077))))

(declare-fun b!7966582 () Bool)

(declare-fun tp!2374075 () Bool)

(declare-fun tp!2374076 () Bool)

(assert (=> b!7966582 (= e!4697735 (and tp!2374075 tp!2374076))))

(assert (=> b!7966138 (= tp!2373987 e!4697735)))

(declare-fun b!7966579 () Bool)

(assert (=> b!7966579 (= e!4697735 tp_is_empty!53569)))

(declare-fun b!7966581 () Bool)

(declare-fun tp!2374074 () Bool)

(assert (=> b!7966581 (= e!4697735 tp!2374074)))

(assert (= (and b!7966138 ((_ is ElementMatch!21513) (regTwo!43539 (regTwo!43538 r!24602)))) b!7966579))

(assert (= (and b!7966138 ((_ is Concat!30512) (regTwo!43539 (regTwo!43538 r!24602)))) b!7966580))

(assert (= (and b!7966138 ((_ is Star!21513) (regTwo!43539 (regTwo!43538 r!24602)))) b!7966581))

(assert (= (and b!7966138 ((_ is Union!21513) (regTwo!43539 (regTwo!43538 r!24602)))) b!7966582))

(declare-fun b!7966588 () Bool)

(declare-fun e!4697737 () Bool)

(declare-fun tp!2374088 () Bool)

(declare-fun tp!2374087 () Bool)

(assert (=> b!7966588 (= e!4697737 (and tp!2374088 tp!2374087))))

(declare-fun b!7966590 () Bool)

(declare-fun tp!2374085 () Bool)

(declare-fun tp!2374086 () Bool)

(assert (=> b!7966590 (= e!4697737 (and tp!2374085 tp!2374086))))

(assert (=> b!7966112 (= tp!2373959 e!4697737)))

(declare-fun b!7966587 () Bool)

(assert (=> b!7966587 (= e!4697737 tp_is_empty!53569)))

(declare-fun b!7966589 () Bool)

(declare-fun tp!2374084 () Bool)

(assert (=> b!7966589 (= e!4697737 tp!2374084)))

(assert (= (and b!7966112 ((_ is ElementMatch!21513) (regOne!43538 (regOne!43539 r!24602)))) b!7966587))

(assert (= (and b!7966112 ((_ is Concat!30512) (regOne!43538 (regOne!43539 r!24602)))) b!7966588))

(assert (= (and b!7966112 ((_ is Star!21513) (regOne!43538 (regOne!43539 r!24602)))) b!7966589))

(assert (= (and b!7966112 ((_ is Union!21513) (regOne!43538 (regOne!43539 r!24602)))) b!7966590))

(declare-fun b!7966596 () Bool)

(declare-fun e!4697739 () Bool)

(declare-fun tp!2374098 () Bool)

(declare-fun tp!2374097 () Bool)

(assert (=> b!7966596 (= e!4697739 (and tp!2374098 tp!2374097))))

(declare-fun b!7966598 () Bool)

(declare-fun tp!2374095 () Bool)

(declare-fun tp!2374096 () Bool)

(assert (=> b!7966598 (= e!4697739 (and tp!2374095 tp!2374096))))

(assert (=> b!7966112 (= tp!2373958 e!4697739)))

(declare-fun b!7966595 () Bool)

(assert (=> b!7966595 (= e!4697739 tp_is_empty!53569)))

(declare-fun b!7966597 () Bool)

(declare-fun tp!2374094 () Bool)

(assert (=> b!7966597 (= e!4697739 tp!2374094)))

(assert (= (and b!7966112 ((_ is ElementMatch!21513) (regTwo!43538 (regOne!43539 r!24602)))) b!7966595))

(assert (= (and b!7966112 ((_ is Concat!30512) (regTwo!43538 (regOne!43539 r!24602)))) b!7966596))

(assert (= (and b!7966112 ((_ is Star!21513) (regTwo!43538 (regOne!43539 r!24602)))) b!7966597))

(assert (= (and b!7966112 ((_ is Union!21513) (regTwo!43538 (regOne!43539 r!24602)))) b!7966598))

(declare-fun b!7966604 () Bool)

(declare-fun e!4697741 () Bool)

(declare-fun tp!2374108 () Bool)

(declare-fun tp!2374107 () Bool)

(assert (=> b!7966604 (= e!4697741 (and tp!2374108 tp!2374107))))

(declare-fun b!7966606 () Bool)

(declare-fun tp!2374105 () Bool)

(declare-fun tp!2374106 () Bool)

(assert (=> b!7966606 (= e!4697741 (and tp!2374105 tp!2374106))))

(assert (=> b!7966121 (= tp!2373965 e!4697741)))

(declare-fun b!7966603 () Bool)

(assert (=> b!7966603 (= e!4697741 tp_is_empty!53569)))

(declare-fun b!7966605 () Bool)

(declare-fun tp!2374104 () Bool)

(assert (=> b!7966605 (= e!4697741 tp!2374104)))

(assert (= (and b!7966121 ((_ is ElementMatch!21513) (reg!21842 (regOne!43539 baseR!116)))) b!7966603))

(assert (= (and b!7966121 ((_ is Concat!30512) (reg!21842 (regOne!43539 baseR!116)))) b!7966604))

(assert (= (and b!7966121 ((_ is Star!21513) (reg!21842 (regOne!43539 baseR!116)))) b!7966605))

(assert (= (and b!7966121 ((_ is Union!21513) (reg!21842 (regOne!43539 baseR!116)))) b!7966606))

(declare-fun b!7966612 () Bool)

(declare-fun e!4697743 () Bool)

(declare-fun tp!2374118 () Bool)

(declare-fun tp!2374117 () Bool)

(assert (=> b!7966612 (= e!4697743 (and tp!2374118 tp!2374117))))

(declare-fun b!7966614 () Bool)

(declare-fun tp!2374115 () Bool)

(declare-fun tp!2374116 () Bool)

(assert (=> b!7966614 (= e!4697743 (and tp!2374115 tp!2374116))))

(assert (=> b!7966130 (= tp!2373976 e!4697743)))

(declare-fun b!7966611 () Bool)

(assert (=> b!7966611 (= e!4697743 tp_is_empty!53569)))

(declare-fun b!7966613 () Bool)

(declare-fun tp!2374114 () Bool)

(assert (=> b!7966613 (= e!4697743 tp!2374114)))

(assert (= (and b!7966130 ((_ is ElementMatch!21513) (regOne!43539 (reg!21842 baseR!116)))) b!7966611))

(assert (= (and b!7966130 ((_ is Concat!30512) (regOne!43539 (reg!21842 baseR!116)))) b!7966612))

(assert (= (and b!7966130 ((_ is Star!21513) (regOne!43539 (reg!21842 baseR!116)))) b!7966613))

(assert (= (and b!7966130 ((_ is Union!21513) (regOne!43539 (reg!21842 baseR!116)))) b!7966614))

(declare-fun b!7966620 () Bool)

(declare-fun e!4697745 () Bool)

(declare-fun tp!2374128 () Bool)

(declare-fun tp!2374127 () Bool)

(assert (=> b!7966620 (= e!4697745 (and tp!2374128 tp!2374127))))

(declare-fun b!7966622 () Bool)

(declare-fun tp!2374125 () Bool)

(declare-fun tp!2374126 () Bool)

(assert (=> b!7966622 (= e!4697745 (and tp!2374125 tp!2374126))))

(assert (=> b!7966130 (= tp!2373977 e!4697745)))

(declare-fun b!7966619 () Bool)

(assert (=> b!7966619 (= e!4697745 tp_is_empty!53569)))

(declare-fun b!7966621 () Bool)

(declare-fun tp!2374124 () Bool)

(assert (=> b!7966621 (= e!4697745 tp!2374124)))

(assert (= (and b!7966130 ((_ is ElementMatch!21513) (regTwo!43539 (reg!21842 baseR!116)))) b!7966619))

(assert (= (and b!7966130 ((_ is Concat!30512) (regTwo!43539 (reg!21842 baseR!116)))) b!7966620))

(assert (= (and b!7966130 ((_ is Star!21513) (regTwo!43539 (reg!21842 baseR!116)))) b!7966621))

(assert (= (and b!7966130 ((_ is Union!21513) (regTwo!43539 (reg!21842 baseR!116)))) b!7966622))

(declare-fun b!7966628 () Bool)

(declare-fun e!4697747 () Bool)

(declare-fun tp!2374138 () Bool)

(declare-fun tp!2374137 () Bool)

(assert (=> b!7966628 (= e!4697747 (and tp!2374138 tp!2374137))))

(declare-fun b!7966630 () Bool)

(declare-fun tp!2374135 () Bool)

(declare-fun tp!2374136 () Bool)

(assert (=> b!7966630 (= e!4697747 (and tp!2374135 tp!2374136))))

(assert (=> b!7966104 (= tp!2373949 e!4697747)))

(declare-fun b!7966627 () Bool)

(assert (=> b!7966627 (= e!4697747 tp_is_empty!53569)))

(declare-fun b!7966629 () Bool)

(declare-fun tp!2374134 () Bool)

(assert (=> b!7966629 (= e!4697747 tp!2374134)))

(assert (= (and b!7966104 ((_ is ElementMatch!21513) (regOne!43538 (regOne!43538 baseR!116)))) b!7966627))

(assert (= (and b!7966104 ((_ is Concat!30512) (regOne!43538 (regOne!43538 baseR!116)))) b!7966628))

(assert (= (and b!7966104 ((_ is Star!21513) (regOne!43538 (regOne!43538 baseR!116)))) b!7966629))

(assert (= (and b!7966104 ((_ is Union!21513) (regOne!43538 (regOne!43538 baseR!116)))) b!7966630))

(declare-fun b!7966636 () Bool)

(declare-fun e!4697749 () Bool)

(declare-fun tp!2374148 () Bool)

(declare-fun tp!2374147 () Bool)

(assert (=> b!7966636 (= e!4697749 (and tp!2374148 tp!2374147))))

(declare-fun b!7966638 () Bool)

(declare-fun tp!2374145 () Bool)

(declare-fun tp!2374146 () Bool)

(assert (=> b!7966638 (= e!4697749 (and tp!2374145 tp!2374146))))

(assert (=> b!7966104 (= tp!2373948 e!4697749)))

(declare-fun b!7966635 () Bool)

(assert (=> b!7966635 (= e!4697749 tp_is_empty!53569)))

(declare-fun b!7966637 () Bool)

(declare-fun tp!2374144 () Bool)

(assert (=> b!7966637 (= e!4697749 tp!2374144)))

(assert (= (and b!7966104 ((_ is ElementMatch!21513) (regTwo!43538 (regOne!43538 baseR!116)))) b!7966635))

(assert (= (and b!7966104 ((_ is Concat!30512) (regTwo!43538 (regOne!43538 baseR!116)))) b!7966636))

(assert (= (and b!7966104 ((_ is Star!21513) (regTwo!43538 (regOne!43538 baseR!116)))) b!7966637))

(assert (= (and b!7966104 ((_ is Union!21513) (regTwo!43538 (regOne!43538 baseR!116)))) b!7966638))

(declare-fun b!7966644 () Bool)

(declare-fun e!4697751 () Bool)

(declare-fun tp!2374158 () Bool)

(declare-fun tp!2374157 () Bool)

(assert (=> b!7966644 (= e!4697751 (and tp!2374158 tp!2374157))))

(declare-fun b!7966646 () Bool)

(declare-fun tp!2374155 () Bool)

(declare-fun tp!2374156 () Bool)

(assert (=> b!7966646 (= e!4697751 (and tp!2374155 tp!2374156))))

(assert (=> b!7966113 (= tp!2373955 e!4697751)))

(declare-fun b!7966643 () Bool)

(assert (=> b!7966643 (= e!4697751 tp_is_empty!53569)))

(declare-fun b!7966645 () Bool)

(declare-fun tp!2374154 () Bool)

(assert (=> b!7966645 (= e!4697751 tp!2374154)))

(assert (= (and b!7966113 ((_ is ElementMatch!21513) (reg!21842 (regOne!43539 r!24602)))) b!7966643))

(assert (= (and b!7966113 ((_ is Concat!30512) (reg!21842 (regOne!43539 r!24602)))) b!7966644))

(assert (= (and b!7966113 ((_ is Star!21513) (reg!21842 (regOne!43539 r!24602)))) b!7966645))

(assert (= (and b!7966113 ((_ is Union!21513) (reg!21842 (regOne!43539 r!24602)))) b!7966646))

(declare-fun b!7966652 () Bool)

(declare-fun e!4697753 () Bool)

(declare-fun tp!2374168 () Bool)

(declare-fun tp!2374167 () Bool)

(assert (=> b!7966652 (= e!4697753 (and tp!2374168 tp!2374167))))

(declare-fun b!7966654 () Bool)

(declare-fun tp!2374165 () Bool)

(declare-fun tp!2374166 () Bool)

(assert (=> b!7966654 (= e!4697753 (and tp!2374165 tp!2374166))))

(assert (=> b!7966122 (= tp!2373966 e!4697753)))

(declare-fun b!7966651 () Bool)

(assert (=> b!7966651 (= e!4697753 tp_is_empty!53569)))

(declare-fun b!7966653 () Bool)

(declare-fun tp!2374164 () Bool)

(assert (=> b!7966653 (= e!4697753 tp!2374164)))

(assert (= (and b!7966122 ((_ is ElementMatch!21513) (regOne!43539 (regOne!43539 baseR!116)))) b!7966651))

(assert (= (and b!7966122 ((_ is Concat!30512) (regOne!43539 (regOne!43539 baseR!116)))) b!7966652))

(assert (= (and b!7966122 ((_ is Star!21513) (regOne!43539 (regOne!43539 baseR!116)))) b!7966653))

(assert (= (and b!7966122 ((_ is Union!21513) (regOne!43539 (regOne!43539 baseR!116)))) b!7966654))

(declare-fun b!7966660 () Bool)

(declare-fun e!4697755 () Bool)

(declare-fun tp!2374178 () Bool)

(declare-fun tp!2374177 () Bool)

(assert (=> b!7966660 (= e!4697755 (and tp!2374178 tp!2374177))))

(declare-fun b!7966662 () Bool)

(declare-fun tp!2374175 () Bool)

(declare-fun tp!2374176 () Bool)

(assert (=> b!7966662 (= e!4697755 (and tp!2374175 tp!2374176))))

(assert (=> b!7966122 (= tp!2373967 e!4697755)))

(declare-fun b!7966659 () Bool)

(assert (=> b!7966659 (= e!4697755 tp_is_empty!53569)))

(declare-fun b!7966661 () Bool)

(declare-fun tp!2374174 () Bool)

(assert (=> b!7966661 (= e!4697755 tp!2374174)))

(assert (= (and b!7966122 ((_ is ElementMatch!21513) (regTwo!43539 (regOne!43539 baseR!116)))) b!7966659))

(assert (= (and b!7966122 ((_ is Concat!30512) (regTwo!43539 (regOne!43539 baseR!116)))) b!7966660))

(assert (= (and b!7966122 ((_ is Star!21513) (regTwo!43539 (regOne!43539 baseR!116)))) b!7966661))

(assert (= (and b!7966122 ((_ is Union!21513) (regTwo!43539 (regOne!43539 baseR!116)))) b!7966662))

(declare-fun b!7966668 () Bool)

(declare-fun e!4697757 () Bool)

(declare-fun tp!2374188 () Bool)

(declare-fun tp!2374187 () Bool)

(assert (=> b!7966668 (= e!4697757 (and tp!2374188 tp!2374187))))

(declare-fun b!7966670 () Bool)

(declare-fun tp!2374185 () Bool)

(declare-fun tp!2374186 () Bool)

(assert (=> b!7966670 (= e!4697757 (and tp!2374185 tp!2374186))))

(assert (=> b!7966110 (= tp!2373951 e!4697757)))

(declare-fun b!7966667 () Bool)

(assert (=> b!7966667 (= e!4697757 tp_is_empty!53569)))

(declare-fun b!7966669 () Bool)

(declare-fun tp!2374184 () Bool)

(assert (=> b!7966669 (= e!4697757 tp!2374184)))

(assert (= (and b!7966110 ((_ is ElementMatch!21513) (regOne!43539 (regTwo!43538 baseR!116)))) b!7966667))

(assert (= (and b!7966110 ((_ is Concat!30512) (regOne!43539 (regTwo!43538 baseR!116)))) b!7966668))

(assert (= (and b!7966110 ((_ is Star!21513) (regOne!43539 (regTwo!43538 baseR!116)))) b!7966669))

(assert (= (and b!7966110 ((_ is Union!21513) (regOne!43539 (regTwo!43538 baseR!116)))) b!7966670))

(declare-fun b!7966676 () Bool)

(declare-fun e!4697759 () Bool)

(declare-fun tp!2374198 () Bool)

(declare-fun tp!2374197 () Bool)

(assert (=> b!7966676 (= e!4697759 (and tp!2374198 tp!2374197))))

(declare-fun b!7966678 () Bool)

(declare-fun tp!2374195 () Bool)

(declare-fun tp!2374196 () Bool)

(assert (=> b!7966678 (= e!4697759 (and tp!2374195 tp!2374196))))

(assert (=> b!7966110 (= tp!2373952 e!4697759)))

(declare-fun b!7966675 () Bool)

(assert (=> b!7966675 (= e!4697759 tp_is_empty!53569)))

(declare-fun b!7966677 () Bool)

(declare-fun tp!2374194 () Bool)

(assert (=> b!7966677 (= e!4697759 tp!2374194)))

(assert (= (and b!7966110 ((_ is ElementMatch!21513) (regTwo!43539 (regTwo!43538 baseR!116)))) b!7966675))

(assert (= (and b!7966110 ((_ is Concat!30512) (regTwo!43539 (regTwo!43538 baseR!116)))) b!7966676))

(assert (= (and b!7966110 ((_ is Star!21513) (regTwo!43539 (regTwo!43538 baseR!116)))) b!7966677))

(assert (= (and b!7966110 ((_ is Union!21513) (regTwo!43539 (regTwo!43538 baseR!116)))) b!7966678))

(declare-fun b!7966684 () Bool)

(declare-fun e!4697761 () Bool)

(declare-fun tp!2374208 () Bool)

(declare-fun tp!2374207 () Bool)

(assert (=> b!7966684 (= e!4697761 (and tp!2374208 tp!2374207))))

(declare-fun b!7966686 () Bool)

(declare-fun tp!2374205 () Bool)

(declare-fun tp!2374206 () Bool)

(assert (=> b!7966686 (= e!4697761 (and tp!2374205 tp!2374206))))

(assert (=> b!7966109 (= tp!2373950 e!4697761)))

(declare-fun b!7966683 () Bool)

(assert (=> b!7966683 (= e!4697761 tp_is_empty!53569)))

(declare-fun b!7966685 () Bool)

(declare-fun tp!2374204 () Bool)

(assert (=> b!7966685 (= e!4697761 tp!2374204)))

(assert (= (and b!7966109 ((_ is ElementMatch!21513) (reg!21842 (regTwo!43538 baseR!116)))) b!7966683))

(assert (= (and b!7966109 ((_ is Concat!30512) (reg!21842 (regTwo!43538 baseR!116)))) b!7966684))

(assert (= (and b!7966109 ((_ is Star!21513) (reg!21842 (regTwo!43538 baseR!116)))) b!7966685))

(assert (= (and b!7966109 ((_ is Union!21513) (reg!21842 (regTwo!43538 baseR!116)))) b!7966686))

(declare-fun b!7966692 () Bool)

(declare-fun e!4697763 () Bool)

(declare-fun tp!2374218 () Bool)

(declare-fun tp!2374217 () Bool)

(assert (=> b!7966692 (= e!4697763 (and tp!2374218 tp!2374217))))

(declare-fun b!7966694 () Bool)

(declare-fun tp!2374215 () Bool)

(declare-fun tp!2374216 () Bool)

(assert (=> b!7966694 (= e!4697763 (and tp!2374215 tp!2374216))))

(assert (=> b!7966136 (= tp!2373989 e!4697763)))

(declare-fun b!7966691 () Bool)

(assert (=> b!7966691 (= e!4697763 tp_is_empty!53569)))

(declare-fun b!7966693 () Bool)

(declare-fun tp!2374214 () Bool)

(assert (=> b!7966693 (= e!4697763 tp!2374214)))

(assert (= (and b!7966136 ((_ is ElementMatch!21513) (regOne!43538 (regTwo!43538 r!24602)))) b!7966691))

(assert (= (and b!7966136 ((_ is Concat!30512) (regOne!43538 (regTwo!43538 r!24602)))) b!7966692))

(assert (= (and b!7966136 ((_ is Star!21513) (regOne!43538 (regTwo!43538 r!24602)))) b!7966693))

(assert (= (and b!7966136 ((_ is Union!21513) (regOne!43538 (regTwo!43538 r!24602)))) b!7966694))

(declare-fun b!7966700 () Bool)

(declare-fun e!4697765 () Bool)

(declare-fun tp!2374228 () Bool)

(declare-fun tp!2374227 () Bool)

(assert (=> b!7966700 (= e!4697765 (and tp!2374228 tp!2374227))))

(declare-fun b!7966702 () Bool)

(declare-fun tp!2374225 () Bool)

(declare-fun tp!2374226 () Bool)

(assert (=> b!7966702 (= e!4697765 (and tp!2374225 tp!2374226))))

(assert (=> b!7966136 (= tp!2373988 e!4697765)))

(declare-fun b!7966699 () Bool)

(assert (=> b!7966699 (= e!4697765 tp_is_empty!53569)))

(declare-fun b!7966701 () Bool)

(declare-fun tp!2374224 () Bool)

(assert (=> b!7966701 (= e!4697765 tp!2374224)))

(assert (= (and b!7966136 ((_ is ElementMatch!21513) (regTwo!43538 (regTwo!43538 r!24602)))) b!7966699))

(assert (= (and b!7966136 ((_ is Concat!30512) (regTwo!43538 (regTwo!43538 r!24602)))) b!7966700))

(assert (= (and b!7966136 ((_ is Star!21513) (regTwo!43538 (regTwo!43538 r!24602)))) b!7966701))

(assert (= (and b!7966136 ((_ is Union!21513) (regTwo!43538 (regTwo!43538 r!24602)))) b!7966702))

(declare-fun b!7966708 () Bool)

(declare-fun e!4697767 () Bool)

(declare-fun tp!2374238 () Bool)

(declare-fun tp!2374237 () Bool)

(assert (=> b!7966708 (= e!4697767 (and tp!2374238 tp!2374237))))

(declare-fun b!7966710 () Bool)

(declare-fun tp!2374235 () Bool)

(declare-fun tp!2374236 () Bool)

(assert (=> b!7966710 (= e!4697767 (and tp!2374235 tp!2374236))))

(assert (=> b!7966142 (= tp!2373991 e!4697767)))

(declare-fun b!7966707 () Bool)

(assert (=> b!7966707 (= e!4697767 tp_is_empty!53569)))

(declare-fun b!7966709 () Bool)

(declare-fun tp!2374234 () Bool)

(assert (=> b!7966709 (= e!4697767 tp!2374234)))

(assert (= (and b!7966142 ((_ is ElementMatch!21513) (regOne!43539 (reg!21842 r!24602)))) b!7966707))

(assert (= (and b!7966142 ((_ is Concat!30512) (regOne!43539 (reg!21842 r!24602)))) b!7966708))

(assert (= (and b!7966142 ((_ is Star!21513) (regOne!43539 (reg!21842 r!24602)))) b!7966709))

(assert (= (and b!7966142 ((_ is Union!21513) (regOne!43539 (reg!21842 r!24602)))) b!7966710))

(declare-fun b!7966716 () Bool)

(declare-fun e!4697769 () Bool)

(declare-fun tp!2374248 () Bool)

(declare-fun tp!2374247 () Bool)

(assert (=> b!7966716 (= e!4697769 (and tp!2374248 tp!2374247))))

(declare-fun b!7966718 () Bool)

(declare-fun tp!2374245 () Bool)

(declare-fun tp!2374246 () Bool)

(assert (=> b!7966718 (= e!4697769 (and tp!2374245 tp!2374246))))

(assert (=> b!7966142 (= tp!2373992 e!4697769)))

(declare-fun b!7966715 () Bool)

(assert (=> b!7966715 (= e!4697769 tp_is_empty!53569)))

(declare-fun b!7966717 () Bool)

(declare-fun tp!2374244 () Bool)

(assert (=> b!7966717 (= e!4697769 tp!2374244)))

(assert (= (and b!7966142 ((_ is ElementMatch!21513) (regTwo!43539 (reg!21842 r!24602)))) b!7966715))

(assert (= (and b!7966142 ((_ is Concat!30512) (regTwo!43539 (reg!21842 r!24602)))) b!7966716))

(assert (= (and b!7966142 ((_ is Star!21513) (regTwo!43539 (reg!21842 r!24602)))) b!7966717))

(assert (= (and b!7966142 ((_ is Union!21513) (regTwo!43539 (reg!21842 r!24602)))) b!7966718))

(declare-fun b!7966724 () Bool)

(declare-fun e!4697771 () Bool)

(declare-fun tp!2374258 () Bool)

(declare-fun tp!2374257 () Bool)

(assert (=> b!7966724 (= e!4697771 (and tp!2374258 tp!2374257))))

(declare-fun b!7966726 () Bool)

(declare-fun tp!2374255 () Bool)

(declare-fun tp!2374256 () Bool)

(assert (=> b!7966726 (= e!4697771 (and tp!2374255 tp!2374256))))

(assert (=> b!7966132 (= tp!2373984 e!4697771)))

(declare-fun b!7966723 () Bool)

(assert (=> b!7966723 (= e!4697771 tp_is_empty!53569)))

(declare-fun b!7966725 () Bool)

(declare-fun tp!2374254 () Bool)

(assert (=> b!7966725 (= e!4697771 tp!2374254)))

(assert (= (and b!7966132 ((_ is ElementMatch!21513) (regOne!43538 (regOne!43538 r!24602)))) b!7966723))

(assert (= (and b!7966132 ((_ is Concat!30512) (regOne!43538 (regOne!43538 r!24602)))) b!7966724))

(assert (= (and b!7966132 ((_ is Star!21513) (regOne!43538 (regOne!43538 r!24602)))) b!7966725))

(assert (= (and b!7966132 ((_ is Union!21513) (regOne!43538 (regOne!43538 r!24602)))) b!7966726))

(declare-fun b!7966732 () Bool)

(declare-fun e!4697773 () Bool)

(declare-fun tp!2374268 () Bool)

(declare-fun tp!2374267 () Bool)

(assert (=> b!7966732 (= e!4697773 (and tp!2374268 tp!2374267))))

(declare-fun b!7966734 () Bool)

(declare-fun tp!2374265 () Bool)

(declare-fun tp!2374266 () Bool)

(assert (=> b!7966734 (= e!4697773 (and tp!2374265 tp!2374266))))

(assert (=> b!7966132 (= tp!2373983 e!4697773)))

(declare-fun b!7966731 () Bool)

(assert (=> b!7966731 (= e!4697773 tp_is_empty!53569)))

(declare-fun b!7966733 () Bool)

(declare-fun tp!2374264 () Bool)

(assert (=> b!7966733 (= e!4697773 tp!2374264)))

(assert (= (and b!7966132 ((_ is ElementMatch!21513) (regTwo!43538 (regOne!43538 r!24602)))) b!7966731))

(assert (= (and b!7966132 ((_ is Concat!30512) (regTwo!43538 (regOne!43538 r!24602)))) b!7966732))

(assert (= (and b!7966132 ((_ is Star!21513) (regTwo!43538 (regOne!43538 r!24602)))) b!7966733))

(assert (= (and b!7966132 ((_ is Union!21513) (regTwo!43538 (regOne!43538 r!24602)))) b!7966734))

(declare-fun b!7966740 () Bool)

(declare-fun e!4697775 () Bool)

(declare-fun tp!2374278 () Bool)

(declare-fun tp!2374277 () Bool)

(assert (=> b!7966740 (= e!4697775 (and tp!2374278 tp!2374277))))

(declare-fun b!7966742 () Bool)

(declare-fun tp!2374275 () Bool)

(declare-fun tp!2374276 () Bool)

(assert (=> b!7966742 (= e!4697775 (and tp!2374275 tp!2374276))))

(assert (=> b!7966141 (= tp!2373990 e!4697775)))

(declare-fun b!7966739 () Bool)

(assert (=> b!7966739 (= e!4697775 tp_is_empty!53569)))

(declare-fun b!7966741 () Bool)

(declare-fun tp!2374274 () Bool)

(assert (=> b!7966741 (= e!4697775 tp!2374274)))

(assert (= (and b!7966141 ((_ is ElementMatch!21513) (reg!21842 (reg!21842 r!24602)))) b!7966739))

(assert (= (and b!7966141 ((_ is Concat!30512) (reg!21842 (reg!21842 r!24602)))) b!7966740))

(assert (= (and b!7966141 ((_ is Star!21513) (reg!21842 (reg!21842 r!24602)))) b!7966741))

(assert (= (and b!7966141 ((_ is Union!21513) (reg!21842 (reg!21842 r!24602)))) b!7966742))

(declare-fun b!7966748 () Bool)

(declare-fun e!4697777 () Bool)

(declare-fun tp!2374288 () Bool)

(declare-fun tp!2374287 () Bool)

(assert (=> b!7966748 (= e!4697777 (and tp!2374288 tp!2374287))))

(declare-fun b!7966750 () Bool)

(declare-fun tp!2374285 () Bool)

(declare-fun tp!2374286 () Bool)

(assert (=> b!7966750 (= e!4697777 (and tp!2374285 tp!2374286))))

(assert (=> b!7966134 (= tp!2373981 e!4697777)))

(declare-fun b!7966747 () Bool)

(assert (=> b!7966747 (= e!4697777 tp_is_empty!53569)))

(declare-fun b!7966749 () Bool)

(declare-fun tp!2374284 () Bool)

(assert (=> b!7966749 (= e!4697777 tp!2374284)))

(assert (= (and b!7966134 ((_ is ElementMatch!21513) (regOne!43539 (regOne!43538 r!24602)))) b!7966747))

(assert (= (and b!7966134 ((_ is Concat!30512) (regOne!43539 (regOne!43538 r!24602)))) b!7966748))

(assert (= (and b!7966134 ((_ is Star!21513) (regOne!43539 (regOne!43538 r!24602)))) b!7966749))

(assert (= (and b!7966134 ((_ is Union!21513) (regOne!43539 (regOne!43538 r!24602)))) b!7966750))

(declare-fun b!7966756 () Bool)

(declare-fun e!4697779 () Bool)

(declare-fun tp!2374298 () Bool)

(declare-fun tp!2374297 () Bool)

(assert (=> b!7966756 (= e!4697779 (and tp!2374298 tp!2374297))))

(declare-fun b!7966758 () Bool)

(declare-fun tp!2374295 () Bool)

(declare-fun tp!2374296 () Bool)

(assert (=> b!7966758 (= e!4697779 (and tp!2374295 tp!2374296))))

(assert (=> b!7966134 (= tp!2373982 e!4697779)))

(declare-fun b!7966755 () Bool)

(assert (=> b!7966755 (= e!4697779 tp_is_empty!53569)))

(declare-fun b!7966757 () Bool)

(declare-fun tp!2374294 () Bool)

(assert (=> b!7966757 (= e!4697779 tp!2374294)))

(assert (= (and b!7966134 ((_ is ElementMatch!21513) (regTwo!43539 (regOne!43538 r!24602)))) b!7966755))

(assert (= (and b!7966134 ((_ is Concat!30512) (regTwo!43539 (regOne!43538 r!24602)))) b!7966756))

(assert (= (and b!7966134 ((_ is Star!21513) (regTwo!43539 (regOne!43538 r!24602)))) b!7966757))

(assert (= (and b!7966134 ((_ is Union!21513) (regTwo!43539 (regOne!43538 r!24602)))) b!7966758))

(declare-fun b!7966764 () Bool)

(declare-fun e!4697781 () Bool)

(declare-fun tp!2374308 () Bool)

(declare-fun tp!2374307 () Bool)

(assert (=> b!7966764 (= e!4697781 (and tp!2374308 tp!2374307))))

(declare-fun b!7966766 () Bool)

(declare-fun tp!2374305 () Bool)

(declare-fun tp!2374306 () Bool)

(assert (=> b!7966766 (= e!4697781 (and tp!2374305 tp!2374306))))

(assert (=> b!7966124 (= tp!2373974 e!4697781)))

(declare-fun b!7966763 () Bool)

(assert (=> b!7966763 (= e!4697781 tp_is_empty!53569)))

(declare-fun b!7966765 () Bool)

(declare-fun tp!2374304 () Bool)

(assert (=> b!7966765 (= e!4697781 tp!2374304)))

(assert (= (and b!7966124 ((_ is ElementMatch!21513) (regOne!43538 (regTwo!43539 baseR!116)))) b!7966763))

(assert (= (and b!7966124 ((_ is Concat!30512) (regOne!43538 (regTwo!43539 baseR!116)))) b!7966764))

(assert (= (and b!7966124 ((_ is Star!21513) (regOne!43538 (regTwo!43539 baseR!116)))) b!7966765))

(assert (= (and b!7966124 ((_ is Union!21513) (regOne!43538 (regTwo!43539 baseR!116)))) b!7966766))

(declare-fun b!7966772 () Bool)

(declare-fun e!4697783 () Bool)

(declare-fun tp!2374318 () Bool)

(declare-fun tp!2374317 () Bool)

(assert (=> b!7966772 (= e!4697783 (and tp!2374318 tp!2374317))))

(declare-fun b!7966774 () Bool)

(declare-fun tp!2374315 () Bool)

(declare-fun tp!2374316 () Bool)

(assert (=> b!7966774 (= e!4697783 (and tp!2374315 tp!2374316))))

(assert (=> b!7966124 (= tp!2373973 e!4697783)))

(declare-fun b!7966771 () Bool)

(assert (=> b!7966771 (= e!4697783 tp_is_empty!53569)))

(declare-fun b!7966773 () Bool)

(declare-fun tp!2374314 () Bool)

(assert (=> b!7966773 (= e!4697783 tp!2374314)))

(assert (= (and b!7966124 ((_ is ElementMatch!21513) (regTwo!43538 (regTwo!43539 baseR!116)))) b!7966771))

(assert (= (and b!7966124 ((_ is Concat!30512) (regTwo!43538 (regTwo!43539 baseR!116)))) b!7966772))

(assert (= (and b!7966124 ((_ is Star!21513) (regTwo!43538 (regTwo!43539 baseR!116)))) b!7966773))

(assert (= (and b!7966124 ((_ is Union!21513) (regTwo!43538 (regTwo!43539 baseR!116)))) b!7966774))

(declare-fun b!7966780 () Bool)

(declare-fun e!4697785 () Bool)

(declare-fun tp!2374328 () Bool)

(declare-fun tp!2374327 () Bool)

(assert (=> b!7966780 (= e!4697785 (and tp!2374328 tp!2374327))))

(declare-fun b!7966782 () Bool)

(declare-fun tp!2374325 () Bool)

(declare-fun tp!2374326 () Bool)

(assert (=> b!7966782 (= e!4697785 (and tp!2374325 tp!2374326))))

(assert (=> b!7966133 (= tp!2373980 e!4697785)))

(declare-fun b!7966779 () Bool)

(assert (=> b!7966779 (= e!4697785 tp_is_empty!53569)))

(declare-fun b!7966781 () Bool)

(declare-fun tp!2374324 () Bool)

(assert (=> b!7966781 (= e!4697785 tp!2374324)))

(assert (= (and b!7966133 ((_ is ElementMatch!21513) (reg!21842 (regOne!43538 r!24602)))) b!7966779))

(assert (= (and b!7966133 ((_ is Concat!30512) (reg!21842 (regOne!43538 r!24602)))) b!7966780))

(assert (= (and b!7966133 ((_ is Star!21513) (reg!21842 (regOne!43538 r!24602)))) b!7966781))

(assert (= (and b!7966133 ((_ is Union!21513) (reg!21842 (regOne!43538 r!24602)))) b!7966782))

(declare-fun b!7966788 () Bool)

(declare-fun e!4697787 () Bool)

(declare-fun tp!2374338 () Bool)

(declare-fun tp!2374337 () Bool)

(assert (=> b!7966788 (= e!4697787 (and tp!2374338 tp!2374337))))

(declare-fun b!7966790 () Bool)

(declare-fun tp!2374335 () Bool)

(declare-fun tp!2374336 () Bool)

(assert (=> b!7966790 (= e!4697787 (and tp!2374335 tp!2374336))))

(assert (=> b!7966126 (= tp!2373971 e!4697787)))

(declare-fun b!7966787 () Bool)

(assert (=> b!7966787 (= e!4697787 tp_is_empty!53569)))

(declare-fun b!7966789 () Bool)

(declare-fun tp!2374334 () Bool)

(assert (=> b!7966789 (= e!4697787 tp!2374334)))

(assert (= (and b!7966126 ((_ is ElementMatch!21513) (regOne!43539 (regTwo!43539 baseR!116)))) b!7966787))

(assert (= (and b!7966126 ((_ is Concat!30512) (regOne!43539 (regTwo!43539 baseR!116)))) b!7966788))

(assert (= (and b!7966126 ((_ is Star!21513) (regOne!43539 (regTwo!43539 baseR!116)))) b!7966789))

(assert (= (and b!7966126 ((_ is Union!21513) (regOne!43539 (regTwo!43539 baseR!116)))) b!7966790))

(declare-fun b!7966796 () Bool)

(declare-fun e!4697789 () Bool)

(declare-fun tp!2374348 () Bool)

(declare-fun tp!2374347 () Bool)

(assert (=> b!7966796 (= e!4697789 (and tp!2374348 tp!2374347))))

(declare-fun b!7966798 () Bool)

(declare-fun tp!2374345 () Bool)

(declare-fun tp!2374346 () Bool)

(assert (=> b!7966798 (= e!4697789 (and tp!2374345 tp!2374346))))

(assert (=> b!7966126 (= tp!2373972 e!4697789)))

(declare-fun b!7966795 () Bool)

(assert (=> b!7966795 (= e!4697789 tp_is_empty!53569)))

(declare-fun b!7966797 () Bool)

(declare-fun tp!2374344 () Bool)

(assert (=> b!7966797 (= e!4697789 tp!2374344)))

(assert (= (and b!7966126 ((_ is ElementMatch!21513) (regTwo!43539 (regTwo!43539 baseR!116)))) b!7966795))

(assert (= (and b!7966126 ((_ is Concat!30512) (regTwo!43539 (regTwo!43539 baseR!116)))) b!7966796))

(assert (= (and b!7966126 ((_ is Star!21513) (regTwo!43539 (regTwo!43539 baseR!116)))) b!7966797))

(assert (= (and b!7966126 ((_ is Union!21513) (regTwo!43539 (regTwo!43539 baseR!116)))) b!7966798))

(declare-fun b!7966804 () Bool)

(declare-fun e!4697791 () Bool)

(declare-fun tp!2374358 () Bool)

(declare-fun tp!2374357 () Bool)

(assert (=> b!7966804 (= e!4697791 (and tp!2374358 tp!2374357))))

(declare-fun b!7966806 () Bool)

(declare-fun tp!2374355 () Bool)

(declare-fun tp!2374356 () Bool)

(assert (=> b!7966806 (= e!4697791 (and tp!2374355 tp!2374356))))

(assert (=> b!7966116 (= tp!2373964 e!4697791)))

(declare-fun b!7966803 () Bool)

(assert (=> b!7966803 (= e!4697791 tp_is_empty!53569)))

(declare-fun b!7966805 () Bool)

(declare-fun tp!2374354 () Bool)

(assert (=> b!7966805 (= e!4697791 tp!2374354)))

(assert (= (and b!7966116 ((_ is ElementMatch!21513) (regOne!43538 (regTwo!43539 r!24602)))) b!7966803))

(assert (= (and b!7966116 ((_ is Concat!30512) (regOne!43538 (regTwo!43539 r!24602)))) b!7966804))

(assert (= (and b!7966116 ((_ is Star!21513) (regOne!43538 (regTwo!43539 r!24602)))) b!7966805))

(assert (= (and b!7966116 ((_ is Union!21513) (regOne!43538 (regTwo!43539 r!24602)))) b!7966806))

(declare-fun b!7966812 () Bool)

(declare-fun e!4697793 () Bool)

(declare-fun tp!2374368 () Bool)

(declare-fun tp!2374367 () Bool)

(assert (=> b!7966812 (= e!4697793 (and tp!2374368 tp!2374367))))

(declare-fun b!7966814 () Bool)

(declare-fun tp!2374365 () Bool)

(declare-fun tp!2374366 () Bool)

(assert (=> b!7966814 (= e!4697793 (and tp!2374365 tp!2374366))))

(assert (=> b!7966116 (= tp!2373963 e!4697793)))

(declare-fun b!7966811 () Bool)

(assert (=> b!7966811 (= e!4697793 tp_is_empty!53569)))

(declare-fun b!7966813 () Bool)

(declare-fun tp!2374364 () Bool)

(assert (=> b!7966813 (= e!4697793 tp!2374364)))

(assert (= (and b!7966116 ((_ is ElementMatch!21513) (regTwo!43538 (regTwo!43539 r!24602)))) b!7966811))

(assert (= (and b!7966116 ((_ is Concat!30512) (regTwo!43538 (regTwo!43539 r!24602)))) b!7966812))

(assert (= (and b!7966116 ((_ is Star!21513) (regTwo!43538 (regTwo!43539 r!24602)))) b!7966813))

(assert (= (and b!7966116 ((_ is Union!21513) (regTwo!43538 (regTwo!43539 r!24602)))) b!7966814))

(declare-fun b!7966817 () Bool)

(declare-fun e!4697795 () Bool)

(declare-fun tp!2374374 () Bool)

(declare-fun tp!2374373 () Bool)

(assert (=> b!7966817 (= e!4697795 (and tp!2374374 tp!2374373))))

(declare-fun b!7966819 () Bool)

(declare-fun tp!2374371 () Bool)

(declare-fun tp!2374372 () Bool)

(assert (=> b!7966819 (= e!4697795 (and tp!2374371 tp!2374372))))

(assert (=> b!7966125 (= tp!2373970 e!4697795)))

(declare-fun b!7966816 () Bool)

(assert (=> b!7966816 (= e!4697795 tp_is_empty!53569)))

(declare-fun b!7966818 () Bool)

(declare-fun tp!2374370 () Bool)

(assert (=> b!7966818 (= e!4697795 tp!2374370)))

(assert (= (and b!7966125 ((_ is ElementMatch!21513) (reg!21842 (regTwo!43539 baseR!116)))) b!7966816))

(assert (= (and b!7966125 ((_ is Concat!30512) (reg!21842 (regTwo!43539 baseR!116)))) b!7966817))

(assert (= (and b!7966125 ((_ is Star!21513) (reg!21842 (regTwo!43539 baseR!116)))) b!7966818))

(assert (= (and b!7966125 ((_ is Union!21513) (reg!21842 (regTwo!43539 baseR!116)))) b!7966819))

(declare-fun b!7966825 () Bool)

(declare-fun e!4697797 () Bool)

(declare-fun tp!2374384 () Bool)

(declare-fun tp!2374383 () Bool)

(assert (=> b!7966825 (= e!4697797 (and tp!2374384 tp!2374383))))

(declare-fun b!7966827 () Bool)

(declare-fun tp!2374381 () Bool)

(declare-fun tp!2374382 () Bool)

(assert (=> b!7966827 (= e!4697797 (and tp!2374381 tp!2374382))))

(assert (=> b!7966118 (= tp!2373961 e!4697797)))

(declare-fun b!7966824 () Bool)

(assert (=> b!7966824 (= e!4697797 tp_is_empty!53569)))

(declare-fun b!7966826 () Bool)

(declare-fun tp!2374380 () Bool)

(assert (=> b!7966826 (= e!4697797 tp!2374380)))

(assert (= (and b!7966118 ((_ is ElementMatch!21513) (regOne!43539 (regTwo!43539 r!24602)))) b!7966824))

(assert (= (and b!7966118 ((_ is Concat!30512) (regOne!43539 (regTwo!43539 r!24602)))) b!7966825))

(assert (= (and b!7966118 ((_ is Star!21513) (regOne!43539 (regTwo!43539 r!24602)))) b!7966826))

(assert (= (and b!7966118 ((_ is Union!21513) (regOne!43539 (regTwo!43539 r!24602)))) b!7966827))

(declare-fun b!7966833 () Bool)

(declare-fun e!4697799 () Bool)

(declare-fun tp!2374394 () Bool)

(declare-fun tp!2374393 () Bool)

(assert (=> b!7966833 (= e!4697799 (and tp!2374394 tp!2374393))))

(declare-fun b!7966835 () Bool)

(declare-fun tp!2374391 () Bool)

(declare-fun tp!2374392 () Bool)

(assert (=> b!7966835 (= e!4697799 (and tp!2374391 tp!2374392))))

(assert (=> b!7966118 (= tp!2373962 e!4697799)))

(declare-fun b!7966832 () Bool)

(assert (=> b!7966832 (= e!4697799 tp_is_empty!53569)))

(declare-fun b!7966834 () Bool)

(declare-fun tp!2374390 () Bool)

(assert (=> b!7966834 (= e!4697799 tp!2374390)))

(assert (= (and b!7966118 ((_ is ElementMatch!21513) (regTwo!43539 (regTwo!43539 r!24602)))) b!7966832))

(assert (= (and b!7966118 ((_ is Concat!30512) (regTwo!43539 (regTwo!43539 r!24602)))) b!7966833))

(assert (= (and b!7966118 ((_ is Star!21513) (regTwo!43539 (regTwo!43539 r!24602)))) b!7966834))

(assert (= (and b!7966118 ((_ is Union!21513) (regTwo!43539 (regTwo!43539 r!24602)))) b!7966835))

(declare-fun b!7966841 () Bool)

(declare-fun e!4697801 () Bool)

(declare-fun tp!2374404 () Bool)

(declare-fun tp!2374403 () Bool)

(assert (=> b!7966841 (= e!4697801 (and tp!2374404 tp!2374403))))

(declare-fun b!7966843 () Bool)

(declare-fun tp!2374401 () Bool)

(declare-fun tp!2374402 () Bool)

(assert (=> b!7966843 (= e!4697801 (and tp!2374401 tp!2374402))))

(assert (=> b!7966108 (= tp!2373954 e!4697801)))

(declare-fun b!7966840 () Bool)

(assert (=> b!7966840 (= e!4697801 tp_is_empty!53569)))

(declare-fun b!7966842 () Bool)

(declare-fun tp!2374400 () Bool)

(assert (=> b!7966842 (= e!4697801 tp!2374400)))

(assert (= (and b!7966108 ((_ is ElementMatch!21513) (regOne!43538 (regTwo!43538 baseR!116)))) b!7966840))

(assert (= (and b!7966108 ((_ is Concat!30512) (regOne!43538 (regTwo!43538 baseR!116)))) b!7966841))

(assert (= (and b!7966108 ((_ is Star!21513) (regOne!43538 (regTwo!43538 baseR!116)))) b!7966842))

(assert (= (and b!7966108 ((_ is Union!21513) (regOne!43538 (regTwo!43538 baseR!116)))) b!7966843))

(declare-fun b!7966850 () Bool)

(declare-fun e!4697804 () Bool)

(declare-fun tp!2374415 () Bool)

(declare-fun tp!2374414 () Bool)

(assert (=> b!7966850 (= e!4697804 (and tp!2374415 tp!2374414))))

(declare-fun b!7966852 () Bool)

(declare-fun tp!2374412 () Bool)

(declare-fun tp!2374413 () Bool)

(assert (=> b!7966852 (= e!4697804 (and tp!2374412 tp!2374413))))

(assert (=> b!7966108 (= tp!2373953 e!4697804)))

(declare-fun b!7966849 () Bool)

(assert (=> b!7966849 (= e!4697804 tp_is_empty!53569)))

(declare-fun b!7966851 () Bool)

(declare-fun tp!2374411 () Bool)

(assert (=> b!7966851 (= e!4697804 tp!2374411)))

(assert (= (and b!7966108 ((_ is ElementMatch!21513) (regTwo!43538 (regTwo!43538 baseR!116)))) b!7966849))

(assert (= (and b!7966108 ((_ is Concat!30512) (regTwo!43538 (regTwo!43538 baseR!116)))) b!7966850))

(assert (= (and b!7966108 ((_ is Star!21513) (regTwo!43538 (regTwo!43538 baseR!116)))) b!7966851))

(assert (= (and b!7966108 ((_ is Union!21513) (regTwo!43538 (regTwo!43538 baseR!116)))) b!7966852))

(declare-fun b!7966858 () Bool)

(declare-fun e!4697806 () Bool)

(declare-fun tp!2374425 () Bool)

(declare-fun tp!2374424 () Bool)

(assert (=> b!7966858 (= e!4697806 (and tp!2374425 tp!2374424))))

(declare-fun b!7966860 () Bool)

(declare-fun tp!2374422 () Bool)

(declare-fun tp!2374423 () Bool)

(assert (=> b!7966860 (= e!4697806 (and tp!2374422 tp!2374423))))

(assert (=> b!7966117 (= tp!2373960 e!4697806)))

(declare-fun b!7966857 () Bool)

(assert (=> b!7966857 (= e!4697806 tp_is_empty!53569)))

(declare-fun b!7966859 () Bool)

(declare-fun tp!2374421 () Bool)

(assert (=> b!7966859 (= e!4697806 tp!2374421)))

(assert (= (and b!7966117 ((_ is ElementMatch!21513) (reg!21842 (regTwo!43539 r!24602)))) b!7966857))

(assert (= (and b!7966117 ((_ is Concat!30512) (reg!21842 (regTwo!43539 r!24602)))) b!7966858))

(assert (= (and b!7966117 ((_ is Star!21513) (reg!21842 (regTwo!43539 r!24602)))) b!7966859))

(assert (= (and b!7966117 ((_ is Union!21513) (reg!21842 (regTwo!43539 r!24602)))) b!7966860))

(declare-fun b!7966866 () Bool)

(declare-fun e!4697808 () Bool)

(declare-fun tp!2374435 () Bool)

(declare-fun tp!2374434 () Bool)

(assert (=> b!7966866 (= e!4697808 (and tp!2374435 tp!2374434))))

(declare-fun b!7966868 () Bool)

(declare-fun tp!2374432 () Bool)

(declare-fun tp!2374433 () Bool)

(assert (=> b!7966868 (= e!4697808 (and tp!2374432 tp!2374433))))

(assert (=> b!7966105 (= tp!2373945 e!4697808)))

(declare-fun b!7966865 () Bool)

(assert (=> b!7966865 (= e!4697808 tp_is_empty!53569)))

(declare-fun b!7966867 () Bool)

(declare-fun tp!2374431 () Bool)

(assert (=> b!7966867 (= e!4697808 tp!2374431)))

(assert (= (and b!7966105 ((_ is ElementMatch!21513) (reg!21842 (regOne!43538 baseR!116)))) b!7966865))

(assert (= (and b!7966105 ((_ is Concat!30512) (reg!21842 (regOne!43538 baseR!116)))) b!7966866))

(assert (= (and b!7966105 ((_ is Star!21513) (reg!21842 (regOne!43538 baseR!116)))) b!7966867))

(assert (= (and b!7966105 ((_ is Union!21513) (reg!21842 (regOne!43538 baseR!116)))) b!7966868))

(declare-fun b!7966874 () Bool)

(declare-fun e!4697810 () Bool)

(declare-fun tp!2374445 () Bool)

(declare-fun tp!2374444 () Bool)

(assert (=> b!7966874 (= e!4697810 (and tp!2374445 tp!2374444))))

(declare-fun b!7966876 () Bool)

(declare-fun tp!2374442 () Bool)

(declare-fun tp!2374443 () Bool)

(assert (=> b!7966876 (= e!4697810 (and tp!2374442 tp!2374443))))

(assert (=> b!7966114 (= tp!2373956 e!4697810)))

(declare-fun b!7966873 () Bool)

(assert (=> b!7966873 (= e!4697810 tp_is_empty!53569)))

(declare-fun b!7966875 () Bool)

(declare-fun tp!2374441 () Bool)

(assert (=> b!7966875 (= e!4697810 tp!2374441)))

(assert (= (and b!7966114 ((_ is ElementMatch!21513) (regOne!43539 (regOne!43539 r!24602)))) b!7966873))

(assert (= (and b!7966114 ((_ is Concat!30512) (regOne!43539 (regOne!43539 r!24602)))) b!7966874))

(assert (= (and b!7966114 ((_ is Star!21513) (regOne!43539 (regOne!43539 r!24602)))) b!7966875))

(assert (= (and b!7966114 ((_ is Union!21513) (regOne!43539 (regOne!43539 r!24602)))) b!7966876))

(declare-fun b!7966882 () Bool)

(declare-fun e!4697812 () Bool)

(declare-fun tp!2374455 () Bool)

(declare-fun tp!2374454 () Bool)

(assert (=> b!7966882 (= e!4697812 (and tp!2374455 tp!2374454))))

(declare-fun b!7966884 () Bool)

(declare-fun tp!2374452 () Bool)

(declare-fun tp!2374453 () Bool)

(assert (=> b!7966884 (= e!4697812 (and tp!2374452 tp!2374453))))

(assert (=> b!7966114 (= tp!2373957 e!4697812)))

(declare-fun b!7966881 () Bool)

(assert (=> b!7966881 (= e!4697812 tp_is_empty!53569)))

(declare-fun b!7966883 () Bool)

(declare-fun tp!2374451 () Bool)

(assert (=> b!7966883 (= e!4697812 tp!2374451)))

(assert (= (and b!7966114 ((_ is ElementMatch!21513) (regTwo!43539 (regOne!43539 r!24602)))) b!7966881))

(assert (= (and b!7966114 ((_ is Concat!30512) (regTwo!43539 (regOne!43539 r!24602)))) b!7966882))

(assert (= (and b!7966114 ((_ is Star!21513) (regTwo!43539 (regOne!43539 r!24602)))) b!7966883))

(assert (= (and b!7966114 ((_ is Union!21513) (regTwo!43539 (regOne!43539 r!24602)))) b!7966884))

(declare-fun b!7966889 () Bool)

(declare-fun e!4697814 () Bool)

(declare-fun tp!2374461 () Bool)

(assert (=> b!7966889 (= e!4697814 (and tp_is_empty!53569 tp!2374461))))

(assert (=> b!7966147 (= tp!2373997 e!4697814)))

(assert (= (and b!7966147 ((_ is Cons!74618) (t!390485 (t!390485 testedP!447)))) b!7966889))

(declare-fun b!7966891 () Bool)

(declare-fun e!4697815 () Bool)

(declare-fun tp!2374467 () Bool)

(declare-fun tp!2374465 () Bool)

(assert (=> b!7966891 (= e!4697815 (and tp!2374467 tp!2374465))))

(declare-fun b!7966893 () Bool)

(declare-fun tp!2374463 () Bool)

(declare-fun tp!2374464 () Bool)

(assert (=> b!7966893 (= e!4697815 (and tp!2374463 tp!2374464))))

(assert (=> b!7966106 (= tp!2373946 e!4697815)))

(declare-fun b!7966890 () Bool)

(assert (=> b!7966890 (= e!4697815 tp_is_empty!53569)))

(declare-fun b!7966892 () Bool)

(declare-fun tp!2374462 () Bool)

(assert (=> b!7966892 (= e!4697815 tp!2374462)))

(assert (= (and b!7966106 ((_ is ElementMatch!21513) (regOne!43539 (regOne!43538 baseR!116)))) b!7966890))

(assert (= (and b!7966106 ((_ is Concat!30512) (regOne!43539 (regOne!43538 baseR!116)))) b!7966891))

(assert (= (and b!7966106 ((_ is Star!21513) (regOne!43539 (regOne!43538 baseR!116)))) b!7966892))

(assert (= (and b!7966106 ((_ is Union!21513) (regOne!43539 (regOne!43538 baseR!116)))) b!7966893))

(declare-fun b!7966900 () Bool)

(declare-fun e!4697817 () Bool)

(declare-fun tp!2374480 () Bool)

(declare-fun tp!2374479 () Bool)

(assert (=> b!7966900 (= e!4697817 (and tp!2374480 tp!2374479))))

(declare-fun b!7966904 () Bool)

(declare-fun tp!2374475 () Bool)

(declare-fun tp!2374477 () Bool)

(assert (=> b!7966904 (= e!4697817 (and tp!2374475 tp!2374477))))

(assert (=> b!7966106 (= tp!2373947 e!4697817)))

(declare-fun b!7966898 () Bool)

(assert (=> b!7966898 (= e!4697817 tp_is_empty!53569)))

(declare-fun b!7966902 () Bool)

(declare-fun tp!2374473 () Bool)

(assert (=> b!7966902 (= e!4697817 tp!2374473)))

(assert (= (and b!7966106 ((_ is ElementMatch!21513) (regTwo!43539 (regOne!43538 baseR!116)))) b!7966898))

(assert (= (and b!7966106 ((_ is Concat!30512) (regTwo!43539 (regOne!43538 baseR!116)))) b!7966900))

(assert (= (and b!7966106 ((_ is Star!21513) (regTwo!43539 (regOne!43538 baseR!116)))) b!7966902))

(assert (= (and b!7966106 ((_ is Union!21513) (regTwo!43539 (regOne!43538 baseR!116)))) b!7966904))

(declare-fun b!7966910 () Bool)

(declare-fun e!4697820 () Bool)

(declare-fun tp!2374487 () Bool)

(assert (=> b!7966910 (= e!4697820 (and tp_is_empty!53569 tp!2374487))))

(assert (=> b!7966148 (= tp!2373998 e!4697820)))

(assert (= (and b!7966148 ((_ is Cons!74618) (t!390485 (t!390485 input!7927)))) b!7966910))

(declare-fun b!7966912 () Bool)

(declare-fun e!4697821 () Bool)

(declare-fun tp!2374492 () Bool)

(declare-fun tp!2374491 () Bool)

(assert (=> b!7966912 (= e!4697821 (and tp!2374492 tp!2374491))))

(declare-fun b!7966914 () Bool)

(declare-fun tp!2374489 () Bool)

(declare-fun tp!2374490 () Bool)

(assert (=> b!7966914 (= e!4697821 (and tp!2374489 tp!2374490))))

(assert (=> b!7966140 (= tp!2373994 e!4697821)))

(declare-fun b!7966911 () Bool)

(assert (=> b!7966911 (= e!4697821 tp_is_empty!53569)))

(declare-fun b!7966913 () Bool)

(declare-fun tp!2374488 () Bool)

(assert (=> b!7966913 (= e!4697821 tp!2374488)))

(assert (= (and b!7966140 ((_ is ElementMatch!21513) (regOne!43538 (reg!21842 r!24602)))) b!7966911))

(assert (= (and b!7966140 ((_ is Concat!30512) (regOne!43538 (reg!21842 r!24602)))) b!7966912))

(assert (= (and b!7966140 ((_ is Star!21513) (regOne!43538 (reg!21842 r!24602)))) b!7966913))

(assert (= (and b!7966140 ((_ is Union!21513) (regOne!43538 (reg!21842 r!24602)))) b!7966914))

(declare-fun b!7966920 () Bool)

(declare-fun e!4697823 () Bool)

(declare-fun tp!2374502 () Bool)

(declare-fun tp!2374501 () Bool)

(assert (=> b!7966920 (= e!4697823 (and tp!2374502 tp!2374501))))

(declare-fun b!7966922 () Bool)

(declare-fun tp!2374499 () Bool)

(declare-fun tp!2374500 () Bool)

(assert (=> b!7966922 (= e!4697823 (and tp!2374499 tp!2374500))))

(assert (=> b!7966140 (= tp!2373993 e!4697823)))

(declare-fun b!7966919 () Bool)

(assert (=> b!7966919 (= e!4697823 tp_is_empty!53569)))

(declare-fun b!7966921 () Bool)

(declare-fun tp!2374498 () Bool)

(assert (=> b!7966921 (= e!4697823 tp!2374498)))

(assert (= (and b!7966140 ((_ is ElementMatch!21513) (regTwo!43538 (reg!21842 r!24602)))) b!7966919))

(assert (= (and b!7966140 ((_ is Concat!30512) (regTwo!43538 (reg!21842 r!24602)))) b!7966920))

(assert (= (and b!7966140 ((_ is Star!21513) (regTwo!43538 (reg!21842 r!24602)))) b!7966921))

(assert (= (and b!7966140 ((_ is Union!21513) (regTwo!43538 (reg!21842 r!24602)))) b!7966922))

(check-sat (not b!7966842) (not b!7966866) (not b!7966614) (not bm!739025) (not b!7966817) (not d!2379157) (not b!7966286) (not b!7966351) (not b!7966867) (not b!7966701) (not b!7966708) (not b!7966780) tp_is_empty!53569 (not b!7966590) (not d!2379091) (not b!7966921) (not b!7966534) (not b!7966668) (not bm!739070) (not bm!739053) (not b!7966645) (not b!7966798) (not bm!738997) (not b!7966812) (not bm!739023) (not b!7966542) (not b!7966525) (not d!2379187) (not b!7966550) (not bm!739073) (not b!7966766) (not b!7966889) (not b!7966176) (not b!7966874) (not d!2379139) (not b!7966686) (not b!7966725) (not bm!739026) (not b!7966756) (not b!7966605) (not b!7966843) (not b!7966212) (not d!2379227) (not b!7966710) (not b!7966718) (not b!7966260) (not b!7966669) (not b!7966841) (not b!7966236) (not bm!739011) (not bm!739012) (not b!7966503) (not b!7966789) (not b!7966630) (not b!7966852) (not b!7966757) (not b!7966700) (not d!2379083) (not b!7966912) (not b!7966295) (not bm!739017) (not b!7966676) (not b!7966764) (not b!7966628) (not b!7966252) (not b!7966644) (not b!7966788) (not b!7966814) (not b!7966662) (not b!7966702) (not b!7966805) (not b!7966716) (not b!7966884) (not b!7966549) (not b!7966694) (not d!2379223) (not b!7966490) (not b!7966806) (not b!7966574) (not b!7966893) (not bm!739065) (not b!7966206) (not b!7966902) (not b!7966797) (not b!7966748) (not b!7966572) (not bm!739018) (not bm!739024) (not b!7966834) (not b!7966588) (not d!2379125) (not b!7966726) (not b!7966163) (not b!7966211) (not b!7966621) (not b!7966604) (not bm!739058) (not b!7966564) (not b!7966265) (not b!7966914) (not b!7966180) (not d!2379235) (not b!7966646) (not b!7966524) (not b!7966298) (not d!2379127) (not b!7966287) (not b!7966922) (not b!7966235) (not b!7966182) (not b!7966256) (not b!7966684) (not b!7966636) (not b!7966556) (not b!7966425) (not b!7966400) (not b!7966620) (not d!2379099) (not b!7966796) (not b!7966423) (not b!7966181) (not b!7966813) (not b!7966299) (not b!7966489) (not b!7966622) (not b!7966875) (not b!7966835) (not b!7966540) (not b!7966505) (not b!7966228) (not bm!739059) (not b!7966750) (not b!7966589) (not b!7966782) (not b!7966882) (not b!7966629) (not b!7966415) (not b!7966652) (not bm!739021) (not d!2379079) (not b!7966654) (not b!7966850) (not b!7966827) (not b!7966910) (not b!7966765) (not b!7966661) (not b!7966677) (not b!7966308) (not b!7966573) (not b!7966740) (not b!7966904) (not b!7966819) (not b!7966596) (not b!7966660) (not b!7966598) (not b!7966653) (not b!7966582) (not b!7966565) (not b!7966685) (not bm!739022) (not b!7966833) (not b!7966773) (not b!7966772) (not b!7966416) (not b!7966174) (not d!2379159) (not bm!739020) (not b!7966883) (not b!7966581) (not b!7966733) (not b!7966692) (not b!7966207) (not b!7966774) (not b!7966526) (not b!7966504) (not bm!739056) (not d!2379077) (not b!7966749) (not b!7966717) (not b!7966342) (not b!7966606) (not b!7966724) (not d!2379183) (not b!7966294) (not b!7966612) (not b!7966184) (not b!7966541) (not b!7966920) (not b!7966638) (not b!7966758) (not b!7966348) (not d!2379123) (not b!7966892) (not d!2379085) (not b!7966860) (not b!7966678) (not b!7966741) (not b!7966307) (not b!7966557) (not b!7966306) (not b!7966558) (not b!7966637) (not b!7966515) (not b!7966825) (not b!7966781) (not b!7966734) (not bm!739064) (not b!7966517) (not b!7966210) (not b!7966742) (not b!7966851) (not b!7966516) (not b!7966613) (not b!7966349) (not b!7966548) (not b!7966913) (not b!7966597) (not b!7966693) (not b!7966533) (not bm!738996) (not b!7966868) (not b!7966566) (not b!7966818) (not b!7966804) (not b!7966891) (not b!7966900) (not b!7966732) (not b!7966431) (not b!7966580) (not d!2379147) (not d!2379243) (not b!7966859) (not b!7966532) (not bm!739019) (not b!7966790) (not b!7966876) (not b!7966858) (not b!7966514) (not b!7966178) (not b!7966826) (not b!7966264) (not d!2379153) (not b!7966501) (not b!7966670) (not b!7966709))
(check-sat)
