; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750028 () Bool)

(assert start!750028)

(declare-fun b!7947854 () Bool)

(declare-fun e!4688820 () Bool)

(declare-fun tp_is_empty!53461 () Bool)

(assert (=> b!7947854 (= e!4688820 tp_is_empty!53461)))

(declare-fun b!7947855 () Bool)

(declare-fun e!4688821 () Bool)

(declare-fun e!4688816 () Bool)

(assert (=> b!7947855 (= e!4688821 e!4688816)))

(declare-fun res!3152243 () Bool)

(assert (=> b!7947855 (=> (not res!3152243) (not e!4688816))))

(declare-fun lt!2698931 () Int)

(declare-datatypes ((C!43256 0))(
  ( (C!43257 (val!32176 Int)) )
))
(declare-datatypes ((Regex!21459 0))(
  ( (ElementMatch!21459 (c!1459906 C!43256)) (Concat!30458 (regOne!43430 Regex!21459) (regTwo!43430 Regex!21459)) (EmptyExpr!21459) (Star!21459 (reg!21788 Regex!21459)) (EmptyLang!21459) (Union!21459 (regOne!43431 Regex!21459) (regTwo!43431 Regex!21459)) )
))
(declare-fun r!24602 () Regex!21459)

(declare-datatypes ((List!74688 0))(
  ( (Nil!74564) (Cons!74564 (h!81012 C!43256) (t!390431 List!74688)) )
))
(declare-fun input!7927 () List!74688)

(declare-fun lt!2698936 () List!74688)

(declare-fun lt!2698933 () Int)

(declare-fun testedP!447 () List!74688)

(declare-fun isEmpty!42863 (List!74688) Bool)

(declare-datatypes ((tuple2!70580 0))(
  ( (tuple2!70581 (_1!38593 List!74688) (_2!38593 List!74688)) )
))
(declare-fun findLongestMatchInner!2240 (Regex!21459 List!74688 Int List!74688 List!74688 Int) tuple2!70580)

(assert (=> b!7947855 (= res!3152243 (not (isEmpty!42863 (_1!38593 (findLongestMatchInner!2240 r!24602 testedP!447 lt!2698933 lt!2698936 input!7927 lt!2698931)))))))

(declare-fun size!43395 (List!74688) Int)

(assert (=> b!7947855 (= lt!2698931 (size!43395 input!7927))))

(declare-fun getSuffix!3762 (List!74688 List!74688) List!74688)

(assert (=> b!7947855 (= lt!2698936 (getSuffix!3762 input!7927 testedP!447))))

(assert (=> b!7947855 (= lt!2698933 (size!43395 testedP!447))))

(declare-fun b!7947856 () Bool)

(declare-datatypes ((Unit!169770 0))(
  ( (Unit!169771) )
))
(declare-fun e!4688819 () Unit!169770)

(declare-fun Unit!169772 () Unit!169770)

(assert (=> b!7947856 (= e!4688819 Unit!169772)))

(declare-fun lt!2698937 () Unit!169770)

(declare-fun lemmaIsPrefixRefl!4027 (List!74688 List!74688) Unit!169770)

(assert (=> b!7947856 (= lt!2698937 (lemmaIsPrefixRefl!4027 input!7927 input!7927))))

(declare-fun isPrefix!6559 (List!74688 List!74688) Bool)

(assert (=> b!7947856 (isPrefix!6559 input!7927 input!7927)))

(declare-fun lt!2698934 () Unit!169770)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1607 (List!74688 List!74688 List!74688) Unit!169770)

(assert (=> b!7947856 (= lt!2698934 (lemmaIsPrefixSameLengthThenSameList!1607 input!7927 testedP!447 input!7927))))

(assert (=> b!7947856 false))

(declare-fun b!7947857 () Bool)

(declare-fun res!3152244 () Bool)

(assert (=> b!7947857 (=> (not res!3152244) (not e!4688821))))

(declare-fun baseR!116 () Regex!21459)

(declare-fun derivative!645 (Regex!21459 List!74688) Regex!21459)

(assert (=> b!7947857 (= res!3152244 (= (derivative!645 baseR!116 testedP!447) r!24602))))

(declare-fun b!7947858 () Bool)

(declare-fun e!4688817 () Bool)

(declare-fun tp!2364602 () Bool)

(assert (=> b!7947858 (= e!4688817 tp!2364602)))

(declare-fun b!7947859 () Bool)

(declare-fun e!4688815 () Bool)

(declare-fun tp!2364597 () Bool)

(assert (=> b!7947859 (= e!4688815 (and tp_is_empty!53461 tp!2364597))))

(declare-fun b!7947860 () Bool)

(declare-fun tp!2364598 () Bool)

(declare-fun tp!2364606 () Bool)

(assert (=> b!7947860 (= e!4688817 (and tp!2364598 tp!2364606))))

(declare-fun b!7947861 () Bool)

(declare-fun tp!2364600 () Bool)

(declare-fun tp!2364601 () Bool)

(assert (=> b!7947861 (= e!4688820 (and tp!2364600 tp!2364601))))

(declare-fun b!7947862 () Bool)

(declare-fun Unit!169773 () Unit!169770)

(assert (=> b!7947862 (= e!4688819 Unit!169773)))

(declare-fun b!7947863 () Bool)

(declare-fun tp!2364595 () Bool)

(declare-fun tp!2364596 () Bool)

(assert (=> b!7947863 (= e!4688820 (and tp!2364595 tp!2364596))))

(declare-fun b!7947864 () Bool)

(declare-fun res!3152245 () Bool)

(assert (=> b!7947864 (=> (not res!3152245) (not e!4688821))))

(assert (=> b!7947864 (= res!3152245 (isPrefix!6559 testedP!447 input!7927))))

(declare-fun b!7947865 () Bool)

(declare-fun tp!2364603 () Bool)

(declare-fun tp!2364604 () Bool)

(assert (=> b!7947865 (= e!4688817 (and tp!2364603 tp!2364604))))

(declare-fun b!7947866 () Bool)

(assert (=> b!7947866 (= e!4688817 tp_is_empty!53461)))

(declare-fun b!7947867 () Bool)

(declare-fun e!4688818 () Bool)

(declare-fun tp!2364599 () Bool)

(assert (=> b!7947867 (= e!4688818 (and tp_is_empty!53461 tp!2364599))))

(declare-fun b!7947868 () Bool)

(assert (=> b!7947868 (= e!4688816 (not true))))

(declare-fun lt!2698932 () Unit!169770)

(assert (=> b!7947868 (= lt!2698932 e!4688819)))

(declare-fun c!1459905 () Bool)

(assert (=> b!7947868 (= c!1459905 (= lt!2698933 lt!2698931))))

(assert (=> b!7947868 (<= lt!2698933 lt!2698931)))

(declare-fun lt!2698935 () Unit!169770)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1076 (List!74688 List!74688) Unit!169770)

(assert (=> b!7947868 (= lt!2698935 (lemmaIsPrefixThenSmallerEqSize!1076 testedP!447 input!7927))))

(declare-fun b!7947869 () Bool)

(declare-fun res!3152246 () Bool)

(assert (=> b!7947869 (=> (not res!3152246) (not e!4688816))))

(assert (=> b!7947869 (= res!3152246 (not (= testedP!447 input!7927)))))

(declare-fun res!3152242 () Bool)

(assert (=> start!750028 (=> (not res!3152242) (not e!4688821))))

(declare-fun validRegex!11763 (Regex!21459) Bool)

(assert (=> start!750028 (= res!3152242 (validRegex!11763 baseR!116))))

(assert (=> start!750028 e!4688821))

(assert (=> start!750028 e!4688817))

(assert (=> start!750028 e!4688818))

(assert (=> start!750028 e!4688815))

(assert (=> start!750028 e!4688820))

(declare-fun b!7947870 () Bool)

(declare-fun tp!2364605 () Bool)

(assert (=> b!7947870 (= e!4688820 tp!2364605)))

(assert (= (and start!750028 res!3152242) b!7947864))

(assert (= (and b!7947864 res!3152245) b!7947857))

(assert (= (and b!7947857 res!3152244) b!7947855))

(assert (= (and b!7947855 res!3152243) b!7947869))

(assert (= (and b!7947869 res!3152246) b!7947868))

(assert (= (and b!7947868 c!1459905) b!7947856))

(assert (= (and b!7947868 (not c!1459905)) b!7947862))

(get-info :version)

(assert (= (and start!750028 ((_ is ElementMatch!21459) baseR!116)) b!7947866))

(assert (= (and start!750028 ((_ is Concat!30458) baseR!116)) b!7947860))

(assert (= (and start!750028 ((_ is Star!21459) baseR!116)) b!7947858))

(assert (= (and start!750028 ((_ is Union!21459) baseR!116)) b!7947865))

(assert (= (and start!750028 ((_ is Cons!74564) testedP!447)) b!7947867))

(assert (= (and start!750028 ((_ is Cons!74564) input!7927)) b!7947859))

(assert (= (and start!750028 ((_ is ElementMatch!21459) r!24602)) b!7947854))

(assert (= (and start!750028 ((_ is Concat!30458) r!24602)) b!7947863))

(assert (= (and start!750028 ((_ is Star!21459) r!24602)) b!7947870))

(assert (= (and start!750028 ((_ is Union!21459) r!24602)) b!7947861))

(declare-fun m!8333278 () Bool)

(assert (=> b!7947864 m!8333278))

(declare-fun m!8333280 () Bool)

(assert (=> b!7947855 m!8333280))

(declare-fun m!8333282 () Bool)

(assert (=> b!7947855 m!8333282))

(declare-fun m!8333284 () Bool)

(assert (=> b!7947855 m!8333284))

(declare-fun m!8333286 () Bool)

(assert (=> b!7947855 m!8333286))

(declare-fun m!8333288 () Bool)

(assert (=> b!7947855 m!8333288))

(declare-fun m!8333290 () Bool)

(assert (=> b!7947857 m!8333290))

(declare-fun m!8333292 () Bool)

(assert (=> start!750028 m!8333292))

(declare-fun m!8333294 () Bool)

(assert (=> b!7947868 m!8333294))

(declare-fun m!8333296 () Bool)

(assert (=> b!7947856 m!8333296))

(declare-fun m!8333298 () Bool)

(assert (=> b!7947856 m!8333298))

(declare-fun m!8333300 () Bool)

(assert (=> b!7947856 m!8333300))

(check-sat (not b!7947867) tp_is_empty!53461 (not b!7947863) (not b!7947860) (not start!750028) (not b!7947865) (not b!7947868) (not b!7947870) (not b!7947857) (not b!7947859) (not b!7947856) (not b!7947855) (not b!7947858) (not b!7947861) (not b!7947864))
(check-sat)
