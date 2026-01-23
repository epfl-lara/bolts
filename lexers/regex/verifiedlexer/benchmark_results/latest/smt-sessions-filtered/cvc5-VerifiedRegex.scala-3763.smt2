; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!209648 () Bool)

(assert start!209648)

(declare-fun res!931593 () Bool)

(declare-fun e!1383270 () Bool)

(assert (=> start!209648 (=> (not res!931593) (not e!1383270))))

(declare-datatypes ((C!12130 0))(
  ( (C!12131 (val!7051 Int)) )
))
(declare-datatypes ((Regex!5992 0))(
  ( (ElementMatch!5992 (c!341998 C!12130)) (Concat!10294 (regOne!12496 Regex!5992) (regTwo!12496 Regex!5992)) (EmptyExpr!5992) (Star!5992 (reg!6321 Regex!5992)) (EmptyLang!5992) (Union!5992 (regOne!12497 Regex!5992) (regTwo!12497 Regex!5992)) )
))
(declare-fun r!12534 () Regex!5992)

(declare-fun validRegex!2268 (Regex!5992) Bool)

(assert (=> start!209648 (= res!931593 (validRegex!2268 r!12534))))

(assert (=> start!209648 e!1383270))

(declare-fun e!1383268 () Bool)

(assert (=> start!209648 e!1383268))

(declare-fun condSetEmpty!18085 () Bool)

(declare-datatypes ((List!25189 0))(
  ( (Nil!25105) (Cons!25105 (h!30506 Regex!5992) (t!197737 List!25189)) )
))
(declare-datatypes ((Context!3124 0))(
  ( (Context!3125 (exprs!2062 List!25189)) )
))
(declare-fun z!4055 () (Set Context!3124))

(assert (=> start!209648 (= condSetEmpty!18085 (= z!4055 (as set.empty (Set Context!3124))))))

(declare-fun setRes!18085 () Bool)

(assert (=> start!209648 setRes!18085))

(declare-datatypes ((List!25190 0))(
  ( (Nil!25106) (Cons!25106 (h!30507 C!12130) (t!197738 List!25190)) )
))
(declare-datatypes ((IArray!16261 0))(
  ( (IArray!16262 (innerList!8188 List!25190)) )
))
(declare-datatypes ((Conc!8128 0))(
  ( (Node!8128 (left!19303 Conc!8128) (right!19633 Conc!8128) (csize!16486 Int) (cheight!8339 Int)) (Leaf!11892 (xs!11070 IArray!16261) (csize!16487 Int)) (Empty!8128) )
))
(declare-datatypes ((BalanceConc!16018 0))(
  ( (BalanceConc!16019 (c!341999 Conc!8128)) )
))
(declare-fun totalInput!977 () BalanceConc!16018)

(declare-fun e!1383273 () Bool)

(declare-fun inv!33268 (BalanceConc!16018) Bool)

(assert (=> start!209648 (and (inv!33268 totalInput!977) e!1383273)))

(declare-fun input!5540 () BalanceConc!16018)

(declare-fun e!1383271 () Bool)

(assert (=> start!209648 (and (inv!33268 input!5540) e!1383271)))

(declare-fun setElem!18085 () Context!3124)

(declare-fun setNonEmpty!18085 () Bool)

(declare-fun e!1383269 () Bool)

(declare-fun tp!674404 () Bool)

(declare-fun inv!33269 (Context!3124) Bool)

(assert (=> setNonEmpty!18085 (= setRes!18085 (and tp!674404 (inv!33269 setElem!18085) e!1383269))))

(declare-fun setRest!18085 () (Set Context!3124))

(assert (=> setNonEmpty!18085 (= z!4055 (set.union (set.insert setElem!18085 (as set.empty (Set Context!3124))) setRest!18085))))

(declare-fun b!2161598 () Bool)

(declare-fun tp!674401 () Bool)

(declare-fun tp!674405 () Bool)

(assert (=> b!2161598 (= e!1383268 (and tp!674401 tp!674405))))

(declare-fun b!2161599 () Bool)

(declare-fun res!931594 () Bool)

(assert (=> b!2161599 (=> (not res!931594) (not e!1383270))))

(declare-datatypes ((List!25191 0))(
  ( (Nil!25107) (Cons!25107 (h!30508 Context!3124) (t!197739 List!25191)) )
))
(declare-fun unfocusZipper!99 (List!25191) Regex!5992)

(declare-fun toList!1175 ((Set Context!3124)) List!25191)

(assert (=> b!2161599 (= res!931594 (= (unfocusZipper!99 (toList!1175 z!4055)) r!12534))))

(declare-fun setIsEmpty!18085 () Bool)

(assert (=> setIsEmpty!18085 setRes!18085))

(declare-fun b!2161600 () Bool)

(declare-fun tp!674397 () Bool)

(declare-fun tp!674400 () Bool)

(assert (=> b!2161600 (= e!1383268 (and tp!674397 tp!674400))))

(declare-fun b!2161601 () Bool)

(declare-fun tp!674399 () Bool)

(assert (=> b!2161601 (= e!1383269 tp!674399)))

(declare-fun b!2161602 () Bool)

(declare-fun tp!674402 () Bool)

(declare-fun inv!33270 (Conc!8128) Bool)

(assert (=> b!2161602 (= e!1383271 (and (inv!33270 (c!341999 input!5540)) tp!674402))))

(declare-fun b!2161603 () Bool)

(declare-fun tp!674398 () Bool)

(assert (=> b!2161603 (= e!1383273 (and (inv!33270 (c!341999 totalInput!977)) tp!674398))))

(declare-fun b!2161604 () Bool)

(declare-fun tp!674403 () Bool)

(assert (=> b!2161604 (= e!1383268 tp!674403)))

(declare-fun b!2161605 () Bool)

(declare-fun e!1383272 () Bool)

(declare-datatypes ((tuple2!24834 0))(
  ( (tuple2!24835 (_1!14787 BalanceConc!16018) (_2!14787 BalanceConc!16018)) )
))
(declare-fun lt!804826 () tuple2!24834)

(declare-fun lt!804824 () List!25190)

(declare-fun ++!6349 (List!25190 List!25190) List!25190)

(declare-fun list!9611 (BalanceConc!16018) List!25190)

(assert (=> b!2161605 (= e!1383272 (not (= (++!6349 (list!9611 (_1!14787 lt!804826)) (list!9611 (_2!14787 lt!804826))) lt!804824)))))

(declare-datatypes ((tuple2!24836 0))(
  ( (tuple2!24837 (_1!14788 List!25190) (_2!14788 List!25190)) )
))
(declare-fun lt!804825 () tuple2!24836)

(declare-fun findLongestMatch!546 (Regex!5992 List!25190) tuple2!24836)

(assert (=> b!2161605 (= lt!804825 (findLongestMatch!546 r!12534 lt!804824))))

(declare-fun lt!804827 () Int)

(declare-fun size!19611 (BalanceConc!16018) Int)

(assert (=> b!2161605 (= lt!804827 (size!19611 input!5540))))

(declare-fun lt!804823 () Int)

(assert (=> b!2161605 (= lt!804823 (size!19611 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!41 ((Set Context!3124) BalanceConc!16018 BalanceConc!16018) tuple2!24834)

(assert (=> b!2161605 (= lt!804826 (findLongestMatchZipperSequenceV3!41 z!4055 input!5540 totalInput!977))))

(declare-fun b!2161606 () Bool)

(assert (=> b!2161606 (= e!1383270 e!1383272)))

(declare-fun res!931592 () Bool)

(assert (=> b!2161606 (=> (not res!931592) (not e!1383272))))

(declare-fun isSuffix!659 (List!25190 List!25190) Bool)

(assert (=> b!2161606 (= res!931592 (isSuffix!659 lt!804824 (list!9611 totalInput!977)))))

(assert (=> b!2161606 (= lt!804824 (list!9611 input!5540))))

(declare-fun b!2161607 () Bool)

(declare-fun tp_is_empty!9591 () Bool)

(assert (=> b!2161607 (= e!1383268 tp_is_empty!9591)))

(assert (= (and start!209648 res!931593) b!2161599))

(assert (= (and b!2161599 res!931594) b!2161606))

(assert (= (and b!2161606 res!931592) b!2161605))

(assert (= (and start!209648 (is-ElementMatch!5992 r!12534)) b!2161607))

(assert (= (and start!209648 (is-Concat!10294 r!12534)) b!2161600))

(assert (= (and start!209648 (is-Star!5992 r!12534)) b!2161604))

(assert (= (and start!209648 (is-Union!5992 r!12534)) b!2161598))

(assert (= (and start!209648 condSetEmpty!18085) setIsEmpty!18085))

(assert (= (and start!209648 (not condSetEmpty!18085)) setNonEmpty!18085))

(assert (= setNonEmpty!18085 b!2161601))

(assert (= start!209648 b!2161603))

(assert (= start!209648 b!2161602))

(declare-fun m!2602235 () Bool)

(assert (=> b!2161602 m!2602235))

(declare-fun m!2602237 () Bool)

(assert (=> b!2161606 m!2602237))

(assert (=> b!2161606 m!2602237))

(declare-fun m!2602239 () Bool)

(assert (=> b!2161606 m!2602239))

(declare-fun m!2602241 () Bool)

(assert (=> b!2161606 m!2602241))

(declare-fun m!2602243 () Bool)

(assert (=> b!2161605 m!2602243))

(declare-fun m!2602245 () Bool)

(assert (=> b!2161605 m!2602245))

(declare-fun m!2602247 () Bool)

(assert (=> b!2161605 m!2602247))

(declare-fun m!2602249 () Bool)

(assert (=> b!2161605 m!2602249))

(declare-fun m!2602251 () Bool)

(assert (=> b!2161605 m!2602251))

(assert (=> b!2161605 m!2602249))

(declare-fun m!2602253 () Bool)

(assert (=> b!2161605 m!2602253))

(assert (=> b!2161605 m!2602251))

(declare-fun m!2602255 () Bool)

(assert (=> b!2161605 m!2602255))

(declare-fun m!2602257 () Bool)

(assert (=> setNonEmpty!18085 m!2602257))

(declare-fun m!2602259 () Bool)

(assert (=> b!2161599 m!2602259))

(assert (=> b!2161599 m!2602259))

(declare-fun m!2602261 () Bool)

(assert (=> b!2161599 m!2602261))

(declare-fun m!2602263 () Bool)

(assert (=> start!209648 m!2602263))

(declare-fun m!2602265 () Bool)

(assert (=> start!209648 m!2602265))

(declare-fun m!2602267 () Bool)

(assert (=> start!209648 m!2602267))

(declare-fun m!2602269 () Bool)

(assert (=> b!2161603 m!2602269))

(push 1)

(assert (not b!2161598))

(assert (not b!2161602))

(assert (not start!209648))

(assert (not b!2161604))

(assert (not b!2161600))

(assert (not b!2161606))

(assert tp_is_empty!9591)

(assert (not setNonEmpty!18085))

(assert (not b!2161603))

(assert (not b!2161605))

(assert (not b!2161599))

(assert (not b!2161601))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!646874 () Bool)

(declare-fun c!342004 () Bool)

(assert (=> d!646874 (= c!342004 (is-Node!8128 (c!341999 totalInput!977)))))

(declare-fun e!1383296 () Bool)

(assert (=> d!646874 (= (inv!33270 (c!341999 totalInput!977)) e!1383296)))

(declare-fun b!2161644 () Bool)

(declare-fun inv!33274 (Conc!8128) Bool)

(assert (=> b!2161644 (= e!1383296 (inv!33274 (c!341999 totalInput!977)))))

(declare-fun b!2161645 () Bool)

(declare-fun e!1383297 () Bool)

(assert (=> b!2161645 (= e!1383296 e!1383297)))

(declare-fun res!931606 () Bool)

(assert (=> b!2161645 (= res!931606 (not (is-Leaf!11892 (c!341999 totalInput!977))))))

(assert (=> b!2161645 (=> res!931606 e!1383297)))

(declare-fun b!2161646 () Bool)

(declare-fun inv!33275 (Conc!8128) Bool)

(assert (=> b!2161646 (= e!1383297 (inv!33275 (c!341999 totalInput!977)))))

(assert (= (and d!646874 c!342004) b!2161644))

(assert (= (and d!646874 (not c!342004)) b!2161645))

(assert (= (and b!2161645 (not res!931606)) b!2161646))

(declare-fun m!2602307 () Bool)

(assert (=> b!2161644 m!2602307))

(declare-fun m!2602309 () Bool)

(assert (=> b!2161646 m!2602309))

(assert (=> b!2161603 d!646874))

(declare-fun d!646876 () Bool)

(declare-fun lt!804845 () Regex!5992)

(assert (=> d!646876 (validRegex!2268 lt!804845)))

(declare-fun generalisedUnion!499 (List!25189) Regex!5992)

(declare-fun unfocusZipperList!23 (List!25191) List!25189)

(assert (=> d!646876 (= lt!804845 (generalisedUnion!499 (unfocusZipperList!23 (toList!1175 z!4055))))))

(assert (=> d!646876 (= (unfocusZipper!99 (toList!1175 z!4055)) lt!804845)))

(declare-fun bs!446053 () Bool)

(assert (= bs!446053 d!646876))

(declare-fun m!2602311 () Bool)

(assert (=> bs!446053 m!2602311))

(assert (=> bs!446053 m!2602259))

(declare-fun m!2602313 () Bool)

(assert (=> bs!446053 m!2602313))

(assert (=> bs!446053 m!2602313))

(declare-fun m!2602315 () Bool)

(assert (=> bs!446053 m!2602315))

(assert (=> b!2161599 d!646876))

(declare-fun d!646880 () Bool)

(declare-fun e!1383314 () Bool)

(assert (=> d!646880 e!1383314))

(declare-fun res!931619 () Bool)

(assert (=> d!646880 (=> (not res!931619) (not e!1383314))))

(declare-fun lt!804848 () List!25191)

(declare-fun noDuplicate!276 (List!25191) Bool)

(assert (=> d!646880 (= res!931619 (noDuplicate!276 lt!804848))))

(declare-fun choose!12718 ((Set Context!3124)) List!25191)

(assert (=> d!646880 (= lt!804848 (choose!12718 z!4055))))

(assert (=> d!646880 (= (toList!1175 z!4055) lt!804848)))

(declare-fun b!2161667 () Bool)

(declare-fun content!3392 (List!25191) (Set Context!3124))

(assert (=> b!2161667 (= e!1383314 (= (content!3392 lt!804848) z!4055))))

(assert (= (and d!646880 res!931619) b!2161667))

(declare-fun m!2602317 () Bool)

(assert (=> d!646880 m!2602317))

(declare-fun m!2602319 () Bool)

(assert (=> d!646880 m!2602319))

(declare-fun m!2602321 () Bool)

(assert (=> b!2161667 m!2602321))

(assert (=> b!2161599 d!646880))

(declare-fun d!646882 () Bool)

(declare-fun list!9613 (Conc!8128) List!25190)

(assert (=> d!646882 (= (list!9611 (_2!14787 lt!804826)) (list!9613 (c!341999 (_2!14787 lt!804826))))))

(declare-fun bs!446054 () Bool)

(assert (= bs!446054 d!646882))

(declare-fun m!2602323 () Bool)

(assert (=> bs!446054 m!2602323))

(assert (=> b!2161605 d!646882))

(declare-fun d!646884 () Bool)

(declare-fun lt!804866 () tuple2!24836)

(assert (=> d!646884 (= (++!6349 (_1!14788 lt!804866) (_2!14788 lt!804866)) lt!804824)))

(declare-fun findLongestMatchInner!621 (Regex!5992 List!25190 Int List!25190 List!25190 Int) tuple2!24836)

(declare-fun sizeTr!99 (List!25190 Int) Int)

(assert (=> d!646884 (= lt!804866 (findLongestMatchInner!621 r!12534 Nil!25106 0 lt!804824 lt!804824 (sizeTr!99 lt!804824 0)))))

(declare-datatypes ((Unit!38135 0))(
  ( (Unit!38136) )
))
(declare-fun lt!804870 () Unit!38135)

(declare-fun lt!804865 () Unit!38135)

(assert (=> d!646884 (= lt!804870 lt!804865)))

(declare-fun lt!804867 () List!25190)

(declare-fun lt!804872 () Int)

(declare-fun size!19613 (List!25190) Int)

(assert (=> d!646884 (= (sizeTr!99 lt!804867 lt!804872) (+ (size!19613 lt!804867) lt!804872))))

(declare-fun lemmaSizeTrEqualsSize!99 (List!25190 Int) Unit!38135)

(assert (=> d!646884 (= lt!804865 (lemmaSizeTrEqualsSize!99 lt!804867 lt!804872))))

(assert (=> d!646884 (= lt!804872 0)))

(assert (=> d!646884 (= lt!804867 Nil!25106)))

(declare-fun lt!804871 () Unit!38135)

(declare-fun lt!804869 () Unit!38135)

(assert (=> d!646884 (= lt!804871 lt!804869)))

(declare-fun lt!804868 () Int)

(assert (=> d!646884 (= (sizeTr!99 lt!804824 lt!804868) (+ (size!19613 lt!804824) lt!804868))))

(assert (=> d!646884 (= lt!804869 (lemmaSizeTrEqualsSize!99 lt!804824 lt!804868))))

(assert (=> d!646884 (= lt!804868 0)))

(assert (=> d!646884 (validRegex!2268 r!12534)))

(assert (=> d!646884 (= (findLongestMatch!546 r!12534 lt!804824) lt!804866)))

(declare-fun bs!446057 () Bool)

(assert (= bs!446057 d!646884))

(declare-fun m!2602335 () Bool)

(assert (=> bs!446057 m!2602335))

(declare-fun m!2602337 () Bool)

(assert (=> bs!446057 m!2602337))

(assert (=> bs!446057 m!2602263))

(declare-fun m!2602339 () Bool)

(assert (=> bs!446057 m!2602339))

(declare-fun m!2602341 () Bool)

(assert (=> bs!446057 m!2602341))

(declare-fun m!2602343 () Bool)

(assert (=> bs!446057 m!2602343))

(declare-fun m!2602345 () Bool)

(assert (=> bs!446057 m!2602345))

(declare-fun m!2602347 () Bool)

(assert (=> bs!446057 m!2602347))

(assert (=> bs!446057 m!2602343))

(declare-fun m!2602349 () Bool)

(assert (=> bs!446057 m!2602349))

(declare-fun m!2602351 () Bool)

(assert (=> bs!446057 m!2602351))

(assert (=> b!2161605 d!646884))

(declare-fun b!2161688 () Bool)

(declare-fun e!1383326 () Bool)

(declare-fun lt!804875 () List!25190)

(assert (=> b!2161688 (= e!1383326 (or (not (= (list!9611 (_2!14787 lt!804826)) Nil!25106)) (= lt!804875 (list!9611 (_1!14787 lt!804826)))))))

(declare-fun b!2161686 () Bool)

(declare-fun e!1383327 () List!25190)

(assert (=> b!2161686 (= e!1383327 (Cons!25106 (h!30507 (list!9611 (_1!14787 lt!804826))) (++!6349 (t!197738 (list!9611 (_1!14787 lt!804826))) (list!9611 (_2!14787 lt!804826)))))))

(declare-fun d!646892 () Bool)

(assert (=> d!646892 e!1383326))

(declare-fun res!931630 () Bool)

(assert (=> d!646892 (=> (not res!931630) (not e!1383326))))

(declare-fun content!3393 (List!25190) (Set C!12130))

(assert (=> d!646892 (= res!931630 (= (content!3393 lt!804875) (set.union (content!3393 (list!9611 (_1!14787 lt!804826))) (content!3393 (list!9611 (_2!14787 lt!804826))))))))

(assert (=> d!646892 (= lt!804875 e!1383327)))

(declare-fun c!342013 () Bool)

(assert (=> d!646892 (= c!342013 (is-Nil!25106 (list!9611 (_1!14787 lt!804826))))))

(assert (=> d!646892 (= (++!6349 (list!9611 (_1!14787 lt!804826)) (list!9611 (_2!14787 lt!804826))) lt!804875)))

(declare-fun b!2161687 () Bool)

(declare-fun res!931629 () Bool)

(assert (=> b!2161687 (=> (not res!931629) (not e!1383326))))

(assert (=> b!2161687 (= res!931629 (= (size!19613 lt!804875) (+ (size!19613 (list!9611 (_1!14787 lt!804826))) (size!19613 (list!9611 (_2!14787 lt!804826))))))))

(declare-fun b!2161685 () Bool)

(assert (=> b!2161685 (= e!1383327 (list!9611 (_2!14787 lt!804826)))))

(assert (= (and d!646892 c!342013) b!2161685))

(assert (= (and d!646892 (not c!342013)) b!2161686))

(assert (= (and d!646892 res!931630) b!2161687))

(assert (= (and b!2161687 res!931629) b!2161688))

(assert (=> b!2161686 m!2602249))

(declare-fun m!2602353 () Bool)

(assert (=> b!2161686 m!2602353))

(declare-fun m!2602355 () Bool)

(assert (=> d!646892 m!2602355))

(assert (=> d!646892 m!2602251))

(declare-fun m!2602357 () Bool)

(assert (=> d!646892 m!2602357))

(assert (=> d!646892 m!2602249))

(declare-fun m!2602359 () Bool)

(assert (=> d!646892 m!2602359))

(declare-fun m!2602361 () Bool)

(assert (=> b!2161687 m!2602361))

(assert (=> b!2161687 m!2602251))

(declare-fun m!2602363 () Bool)

(assert (=> b!2161687 m!2602363))

(assert (=> b!2161687 m!2602249))

(declare-fun m!2602365 () Bool)

(assert (=> b!2161687 m!2602365))

(assert (=> b!2161605 d!646892))

(declare-fun d!646894 () Bool)

(declare-fun lt!804878 () Int)

(assert (=> d!646894 (= lt!804878 (size!19613 (list!9611 totalInput!977)))))

(declare-fun size!19614 (Conc!8128) Int)

(assert (=> d!646894 (= lt!804878 (size!19614 (c!341999 totalInput!977)))))

(assert (=> d!646894 (= (size!19611 totalInput!977) lt!804878)))

(declare-fun bs!446058 () Bool)

(assert (= bs!446058 d!646894))

(assert (=> bs!446058 m!2602237))

(assert (=> bs!446058 m!2602237))

(declare-fun m!2602367 () Bool)

(assert (=> bs!446058 m!2602367))

(declare-fun m!2602369 () Bool)

(assert (=> bs!446058 m!2602369))

(assert (=> b!2161605 d!646894))

(declare-fun d!646896 () Bool)

(assert (=> d!646896 (= (list!9611 (_1!14787 lt!804826)) (list!9613 (c!341999 (_1!14787 lt!804826))))))

(declare-fun bs!446059 () Bool)

(assert (= bs!446059 d!646896))

(declare-fun m!2602371 () Bool)

(assert (=> bs!446059 m!2602371))

(assert (=> b!2161605 d!646896))

(declare-fun d!646898 () Bool)

(declare-fun lt!804879 () Int)

(assert (=> d!646898 (= lt!804879 (size!19613 (list!9611 input!5540)))))

(assert (=> d!646898 (= lt!804879 (size!19614 (c!341999 input!5540)))))

(assert (=> d!646898 (= (size!19611 input!5540) lt!804879)))

(declare-fun bs!446060 () Bool)

(assert (= bs!446060 d!646898))

(assert (=> bs!446060 m!2602241))

(assert (=> bs!446060 m!2602241))

(declare-fun m!2602373 () Bool)

(assert (=> bs!446060 m!2602373))

(declare-fun m!2602375 () Bool)

(assert (=> bs!446060 m!2602375))

(assert (=> b!2161605 d!646898))

(declare-fun b!2161697 () Bool)

(declare-fun e!1383333 () Int)

(declare-fun lt!804888 () Int)

(assert (=> b!2161697 (= e!1383333 (- lt!804888 1))))

(declare-fun b!2161698 () Bool)

(assert (=> b!2161698 (= e!1383333 (- 1))))

(declare-fun d!646900 () Bool)

(declare-fun lt!804890 () tuple2!24834)

(assert (=> d!646900 (= (++!6349 (list!9611 (_1!14787 lt!804890)) (list!9611 (_2!14787 lt!804890))) (list!9611 input!5540))))

(declare-fun e!1383332 () tuple2!24834)

(assert (=> d!646900 (= lt!804890 e!1383332)))

(declare-fun c!342018 () Bool)

(declare-fun lt!804891 () Int)

(assert (=> d!646900 (= c!342018 (< lt!804891 0))))

(declare-fun lt!804889 () Int)

(declare-fun furthestNullablePosition!179 ((Set Context!3124) Int BalanceConc!16018 Int Int) Int)

(assert (=> d!646900 (= lt!804891 (+ (- (furthestNullablePosition!179 z!4055 lt!804888 totalInput!977 lt!804889 e!1383333) lt!804888) 1))))

(declare-fun c!342019 () Bool)

(declare-fun nullableZipper!273 ((Set Context!3124)) Bool)

(assert (=> d!646900 (= c!342019 (nullableZipper!273 z!4055))))

(assert (=> d!646900 (= lt!804888 (- lt!804889 (size!19611 input!5540)))))

(assert (=> d!646900 (= lt!804889 (size!19611 totalInput!977))))

(assert (=> d!646900 (isSuffix!659 (list!9611 input!5540) (list!9611 totalInput!977))))

(assert (=> d!646900 (= (findLongestMatchZipperSequenceV3!41 z!4055 input!5540 totalInput!977) lt!804890)))

(declare-fun b!2161699 () Bool)

(declare-fun call!129476 () tuple2!24834)

(assert (=> b!2161699 (= e!1383332 call!129476)))

(declare-fun bm!129471 () Bool)

(declare-fun splitAt!19 (BalanceConc!16018 Int) tuple2!24834)

(assert (=> bm!129471 (= call!129476 (splitAt!19 input!5540 (ite c!342018 0 lt!804891)))))

(declare-fun b!2161700 () Bool)

(assert (=> b!2161700 (= e!1383332 call!129476)))

(assert (= (and d!646900 c!342019) b!2161697))

(assert (= (and d!646900 (not c!342019)) b!2161698))

(assert (= (and d!646900 c!342018) b!2161699))

(assert (= (and d!646900 (not c!342018)) b!2161700))

(assert (= (or b!2161699 b!2161700) bm!129471))

(declare-fun m!2602377 () Bool)

(assert (=> d!646900 m!2602377))

(assert (=> d!646900 m!2602245))

(assert (=> d!646900 m!2602241))

(assert (=> d!646900 m!2602247))

(declare-fun m!2602379 () Bool)

(assert (=> d!646900 m!2602379))

(declare-fun m!2602381 () Bool)

(assert (=> d!646900 m!2602381))

(assert (=> d!646900 m!2602377))

(declare-fun m!2602383 () Bool)

(assert (=> d!646900 m!2602383))

(declare-fun m!2602385 () Bool)

(assert (=> d!646900 m!2602385))

(assert (=> d!646900 m!2602381))

(assert (=> d!646900 m!2602237))

(assert (=> d!646900 m!2602241))

(assert (=> d!646900 m!2602237))

(declare-fun m!2602387 () Bool)

(assert (=> d!646900 m!2602387))

(declare-fun m!2602389 () Bool)

(assert (=> bm!129471 m!2602389))

(assert (=> b!2161605 d!646900))

(declare-fun d!646902 () Bool)

(declare-fun res!931642 () Bool)

(declare-fun e!1383352 () Bool)

(assert (=> d!646902 (=> res!931642 e!1383352)))

(assert (=> d!646902 (= res!931642 (is-ElementMatch!5992 r!12534))))

(assert (=> d!646902 (= (validRegex!2268 r!12534) e!1383352)))

(declare-fun b!2161719 () Bool)

(declare-fun res!931641 () Bool)

(declare-fun e!1383353 () Bool)

(assert (=> b!2161719 (=> res!931641 e!1383353)))

(assert (=> b!2161719 (= res!931641 (not (is-Concat!10294 r!12534)))))

(declare-fun e!1383354 () Bool)

(assert (=> b!2161719 (= e!1383354 e!1383353)))

(declare-fun b!2161720 () Bool)

(declare-fun e!1383351 () Bool)

(declare-fun call!129483 () Bool)

(assert (=> b!2161720 (= e!1383351 call!129483)))

(declare-fun b!2161721 () Bool)

(declare-fun e!1383350 () Bool)

(declare-fun e!1383349 () Bool)

(assert (=> b!2161721 (= e!1383350 e!1383349)))

(declare-fun res!931645 () Bool)

(declare-fun nullable!1683 (Regex!5992) Bool)

(assert (=> b!2161721 (= res!931645 (not (nullable!1683 (reg!6321 r!12534))))))

(assert (=> b!2161721 (=> (not res!931645) (not e!1383349))))

(declare-fun b!2161722 () Bool)

(declare-fun e!1383348 () Bool)

(declare-fun call!129485 () Bool)

(assert (=> b!2161722 (= e!1383348 call!129485)))

(declare-fun b!2161723 () Bool)

(declare-fun res!931644 () Bool)

(assert (=> b!2161723 (=> (not res!931644) (not e!1383348))))

(assert (=> b!2161723 (= res!931644 call!129483)))

(assert (=> b!2161723 (= e!1383354 e!1383348)))

(declare-fun b!2161724 () Bool)

(assert (=> b!2161724 (= e!1383353 e!1383351)))

(declare-fun res!931643 () Bool)

(assert (=> b!2161724 (=> (not res!931643) (not e!1383351))))

(assert (=> b!2161724 (= res!931643 call!129485)))

(declare-fun b!2161725 () Bool)

(declare-fun call!129484 () Bool)

(assert (=> b!2161725 (= e!1383349 call!129484)))

(declare-fun bm!129478 () Bool)

(declare-fun c!342024 () Bool)

(declare-fun c!342025 () Bool)

(assert (=> bm!129478 (= call!129484 (validRegex!2268 (ite c!342025 (reg!6321 r!12534) (ite c!342024 (regTwo!12497 r!12534) (regOne!12496 r!12534)))))))

(declare-fun b!2161726 () Bool)

(assert (=> b!2161726 (= e!1383350 e!1383354)))

(assert (=> b!2161726 (= c!342024 (is-Union!5992 r!12534))))

(declare-fun bm!129479 () Bool)

(assert (=> bm!129479 (= call!129483 (validRegex!2268 (ite c!342024 (regOne!12497 r!12534) (regTwo!12496 r!12534))))))

(declare-fun bm!129480 () Bool)

(assert (=> bm!129480 (= call!129485 call!129484)))

(declare-fun b!2161727 () Bool)

(assert (=> b!2161727 (= e!1383352 e!1383350)))

(assert (=> b!2161727 (= c!342025 (is-Star!5992 r!12534))))

(assert (= (and d!646902 (not res!931642)) b!2161727))

(assert (= (and b!2161727 c!342025) b!2161721))

(assert (= (and b!2161727 (not c!342025)) b!2161726))

(assert (= (and b!2161721 res!931645) b!2161725))

(assert (= (and b!2161726 c!342024) b!2161723))

(assert (= (and b!2161726 (not c!342024)) b!2161719))

(assert (= (and b!2161723 res!931644) b!2161722))

(assert (= (and b!2161719 (not res!931641)) b!2161724))

(assert (= (and b!2161724 res!931643) b!2161720))

(assert (= (or b!2161722 b!2161724) bm!129480))

(assert (= (or b!2161723 b!2161720) bm!129479))

(assert (= (or b!2161725 bm!129480) bm!129478))

(declare-fun m!2602391 () Bool)

(assert (=> b!2161721 m!2602391))

(declare-fun m!2602393 () Bool)

(assert (=> bm!129478 m!2602393))

(declare-fun m!2602395 () Bool)

(assert (=> bm!129479 m!2602395))

(assert (=> start!209648 d!646902))

(declare-fun d!646904 () Bool)

(declare-fun isBalanced!2516 (Conc!8128) Bool)

(assert (=> d!646904 (= (inv!33268 totalInput!977) (isBalanced!2516 (c!341999 totalInput!977)))))

(declare-fun bs!446061 () Bool)

(assert (= bs!446061 d!646904))

(declare-fun m!2602397 () Bool)

(assert (=> bs!446061 m!2602397))

(assert (=> start!209648 d!646904))

(declare-fun d!646906 () Bool)

(assert (=> d!646906 (= (inv!33268 input!5540) (isBalanced!2516 (c!341999 input!5540)))))

(declare-fun bs!446062 () Bool)

(assert (= bs!446062 d!646906))

(declare-fun m!2602399 () Bool)

(assert (=> bs!446062 m!2602399))

(assert (=> start!209648 d!646906))

(declare-fun d!646908 () Bool)

(declare-fun e!1383357 () Bool)

(assert (=> d!646908 e!1383357))

(declare-fun res!931648 () Bool)

(assert (=> d!646908 (=> res!931648 e!1383357)))

(declare-fun lt!804894 () Bool)

(assert (=> d!646908 (= res!931648 (not lt!804894))))

(declare-fun drop!1215 (List!25190 Int) List!25190)

(assert (=> d!646908 (= lt!804894 (= lt!804824 (drop!1215 (list!9611 totalInput!977) (- (size!19613 (list!9611 totalInput!977)) (size!19613 lt!804824)))))))

(assert (=> d!646908 (= (isSuffix!659 lt!804824 (list!9611 totalInput!977)) lt!804894)))

(declare-fun b!2161730 () Bool)

(assert (=> b!2161730 (= e!1383357 (>= (size!19613 (list!9611 totalInput!977)) (size!19613 lt!804824)))))

(assert (= (and d!646908 (not res!931648)) b!2161730))

(assert (=> d!646908 m!2602237))

(assert (=> d!646908 m!2602367))

(assert (=> d!646908 m!2602349))

(assert (=> d!646908 m!2602237))

(declare-fun m!2602401 () Bool)

(assert (=> d!646908 m!2602401))

(assert (=> b!2161730 m!2602237))

(assert (=> b!2161730 m!2602367))

(assert (=> b!2161730 m!2602349))

(assert (=> b!2161606 d!646908))

(declare-fun d!646910 () Bool)

(assert (=> d!646910 (= (list!9611 totalInput!977) (list!9613 (c!341999 totalInput!977)))))

(declare-fun bs!446063 () Bool)

(assert (= bs!446063 d!646910))

(declare-fun m!2602403 () Bool)

(assert (=> bs!446063 m!2602403))

(assert (=> b!2161606 d!646910))

(declare-fun d!646912 () Bool)

(assert (=> d!646912 (= (list!9611 input!5540) (list!9613 (c!341999 input!5540)))))

(declare-fun bs!446064 () Bool)

(assert (= bs!446064 d!646912))

(declare-fun m!2602405 () Bool)

(assert (=> bs!446064 m!2602405))

(assert (=> b!2161606 d!646912))

(declare-fun d!646914 () Bool)

(declare-fun lambda!81592 () Int)

(declare-fun forall!5151 (List!25189 Int) Bool)

(assert (=> d!646914 (= (inv!33269 setElem!18085) (forall!5151 (exprs!2062 setElem!18085) lambda!81592))))

(declare-fun bs!446065 () Bool)

(assert (= bs!446065 d!646914))

(declare-fun m!2602407 () Bool)

(assert (=> bs!446065 m!2602407))

(assert (=> setNonEmpty!18085 d!646914))

(declare-fun d!646916 () Bool)

(declare-fun c!342026 () Bool)

(assert (=> d!646916 (= c!342026 (is-Node!8128 (c!341999 input!5540)))))

(declare-fun e!1383358 () Bool)

(assert (=> d!646916 (= (inv!33270 (c!341999 input!5540)) e!1383358)))

(declare-fun b!2161731 () Bool)

(assert (=> b!2161731 (= e!1383358 (inv!33274 (c!341999 input!5540)))))

(declare-fun b!2161732 () Bool)

(declare-fun e!1383359 () Bool)

(assert (=> b!2161732 (= e!1383358 e!1383359)))

(declare-fun res!931649 () Bool)

(assert (=> b!2161732 (= res!931649 (not (is-Leaf!11892 (c!341999 input!5540))))))

(assert (=> b!2161732 (=> res!931649 e!1383359)))

(declare-fun b!2161733 () Bool)

(assert (=> b!2161733 (= e!1383359 (inv!33275 (c!341999 input!5540)))))

(assert (= (and d!646916 c!342026) b!2161731))

(assert (= (and d!646916 (not c!342026)) b!2161732))

(assert (= (and b!2161732 (not res!931649)) b!2161733))

(declare-fun m!2602409 () Bool)

(assert (=> b!2161731 m!2602409))

(declare-fun m!2602411 () Bool)

(assert (=> b!2161733 m!2602411))

(assert (=> b!2161602 d!646916))

(declare-fun e!1383364 () Bool)

(declare-fun b!2161742 () Bool)

(declare-fun tp!674441 () Bool)

(declare-fun tp!674439 () Bool)

(assert (=> b!2161742 (= e!1383364 (and (inv!33270 (left!19303 (c!341999 totalInput!977))) tp!674439 (inv!33270 (right!19633 (c!341999 totalInput!977))) tp!674441))))

(declare-fun b!2161744 () Bool)

(declare-fun e!1383365 () Bool)

(declare-fun tp!674440 () Bool)

(assert (=> b!2161744 (= e!1383365 tp!674440)))

(declare-fun b!2161743 () Bool)

(declare-fun inv!33276 (IArray!16261) Bool)

(assert (=> b!2161743 (= e!1383364 (and (inv!33276 (xs!11070 (c!341999 totalInput!977))) e!1383365))))

(assert (=> b!2161603 (= tp!674398 (and (inv!33270 (c!341999 totalInput!977)) e!1383364))))

(assert (= (and b!2161603 (is-Node!8128 (c!341999 totalInput!977))) b!2161742))

(assert (= b!2161743 b!2161744))

(assert (= (and b!2161603 (is-Leaf!11892 (c!341999 totalInput!977))) b!2161743))

(declare-fun m!2602413 () Bool)

(assert (=> b!2161742 m!2602413))

(declare-fun m!2602415 () Bool)

(assert (=> b!2161742 m!2602415))

(declare-fun m!2602417 () Bool)

(assert (=> b!2161743 m!2602417))

(assert (=> b!2161603 m!2602269))

(declare-fun b!2161755 () Bool)

(declare-fun e!1383368 () Bool)

(assert (=> b!2161755 (= e!1383368 tp_is_empty!9591)))

(assert (=> b!2161604 (= tp!674403 e!1383368)))

(declare-fun b!2161758 () Bool)

(declare-fun tp!674455 () Bool)

(declare-fun tp!674452 () Bool)

(assert (=> b!2161758 (= e!1383368 (and tp!674455 tp!674452))))

(declare-fun b!2161756 () Bool)

(declare-fun tp!674453 () Bool)

(declare-fun tp!674456 () Bool)

(assert (=> b!2161756 (= e!1383368 (and tp!674453 tp!674456))))

(declare-fun b!2161757 () Bool)

(declare-fun tp!674454 () Bool)

(assert (=> b!2161757 (= e!1383368 tp!674454)))

(assert (= (and b!2161604 (is-ElementMatch!5992 (reg!6321 r!12534))) b!2161755))

(assert (= (and b!2161604 (is-Concat!10294 (reg!6321 r!12534))) b!2161756))

(assert (= (and b!2161604 (is-Star!5992 (reg!6321 r!12534))) b!2161757))

(assert (= (and b!2161604 (is-Union!5992 (reg!6321 r!12534))) b!2161758))

(declare-fun b!2161759 () Bool)

(declare-fun e!1383369 () Bool)

(assert (=> b!2161759 (= e!1383369 tp_is_empty!9591)))

(assert (=> b!2161600 (= tp!674397 e!1383369)))

(declare-fun b!2161762 () Bool)

(declare-fun tp!674460 () Bool)

(declare-fun tp!674457 () Bool)

(assert (=> b!2161762 (= e!1383369 (and tp!674460 tp!674457))))

(declare-fun b!2161760 () Bool)

(declare-fun tp!674458 () Bool)

(declare-fun tp!674461 () Bool)

(assert (=> b!2161760 (= e!1383369 (and tp!674458 tp!674461))))

(declare-fun b!2161761 () Bool)

(declare-fun tp!674459 () Bool)

(assert (=> b!2161761 (= e!1383369 tp!674459)))

(assert (= (and b!2161600 (is-ElementMatch!5992 (regOne!12496 r!12534))) b!2161759))

(assert (= (and b!2161600 (is-Concat!10294 (regOne!12496 r!12534))) b!2161760))

(assert (= (and b!2161600 (is-Star!5992 (regOne!12496 r!12534))) b!2161761))

(assert (= (and b!2161600 (is-Union!5992 (regOne!12496 r!12534))) b!2161762))

(declare-fun b!2161763 () Bool)

(declare-fun e!1383370 () Bool)

(assert (=> b!2161763 (= e!1383370 tp_is_empty!9591)))

(assert (=> b!2161600 (= tp!674400 e!1383370)))

(declare-fun b!2161766 () Bool)

(declare-fun tp!674465 () Bool)

(declare-fun tp!674462 () Bool)

(assert (=> b!2161766 (= e!1383370 (and tp!674465 tp!674462))))

(declare-fun b!2161764 () Bool)

(declare-fun tp!674463 () Bool)

(declare-fun tp!674466 () Bool)

(assert (=> b!2161764 (= e!1383370 (and tp!674463 tp!674466))))

(declare-fun b!2161765 () Bool)

(declare-fun tp!674464 () Bool)

(assert (=> b!2161765 (= e!1383370 tp!674464)))

(assert (= (and b!2161600 (is-ElementMatch!5992 (regTwo!12496 r!12534))) b!2161763))

(assert (= (and b!2161600 (is-Concat!10294 (regTwo!12496 r!12534))) b!2161764))

(assert (= (and b!2161600 (is-Star!5992 (regTwo!12496 r!12534))) b!2161765))

(assert (= (and b!2161600 (is-Union!5992 (regTwo!12496 r!12534))) b!2161766))

(declare-fun b!2161771 () Bool)

(declare-fun e!1383373 () Bool)

(declare-fun tp!674471 () Bool)

(declare-fun tp!674472 () Bool)

(assert (=> b!2161771 (= e!1383373 (and tp!674471 tp!674472))))

(assert (=> b!2161601 (= tp!674399 e!1383373)))

(assert (= (and b!2161601 (is-Cons!25105 (exprs!2062 setElem!18085))) b!2161771))

(declare-fun condSetEmpty!18091 () Bool)

(assert (=> setNonEmpty!18085 (= condSetEmpty!18091 (= setRest!18085 (as set.empty (Set Context!3124))))))

(declare-fun setRes!18091 () Bool)

(assert (=> setNonEmpty!18085 (= tp!674404 setRes!18091)))

(declare-fun setIsEmpty!18091 () Bool)

(assert (=> setIsEmpty!18091 setRes!18091))

(declare-fun tp!674478 () Bool)

(declare-fun setNonEmpty!18091 () Bool)

(declare-fun setElem!18091 () Context!3124)

(declare-fun e!1383376 () Bool)

(assert (=> setNonEmpty!18091 (= setRes!18091 (and tp!674478 (inv!33269 setElem!18091) e!1383376))))

(declare-fun setRest!18091 () (Set Context!3124))

(assert (=> setNonEmpty!18091 (= setRest!18085 (set.union (set.insert setElem!18091 (as set.empty (Set Context!3124))) setRest!18091))))

(declare-fun b!2161776 () Bool)

(declare-fun tp!674477 () Bool)

(assert (=> b!2161776 (= e!1383376 tp!674477)))

(assert (= (and setNonEmpty!18085 condSetEmpty!18091) setIsEmpty!18091))

(assert (= (and setNonEmpty!18085 (not condSetEmpty!18091)) setNonEmpty!18091))

(assert (= setNonEmpty!18091 b!2161776))

(declare-fun m!2602419 () Bool)

(assert (=> setNonEmpty!18091 m!2602419))

(declare-fun b!2161777 () Bool)

(declare-fun tp!674481 () Bool)

(declare-fun e!1383377 () Bool)

(declare-fun tp!674479 () Bool)

(assert (=> b!2161777 (= e!1383377 (and (inv!33270 (left!19303 (c!341999 input!5540))) tp!674479 (inv!33270 (right!19633 (c!341999 input!5540))) tp!674481))))

(declare-fun b!2161779 () Bool)

(declare-fun e!1383378 () Bool)

(declare-fun tp!674480 () Bool)

(assert (=> b!2161779 (= e!1383378 tp!674480)))

(declare-fun b!2161778 () Bool)

(assert (=> b!2161778 (= e!1383377 (and (inv!33276 (xs!11070 (c!341999 input!5540))) e!1383378))))

(assert (=> b!2161602 (= tp!674402 (and (inv!33270 (c!341999 input!5540)) e!1383377))))

(assert (= (and b!2161602 (is-Node!8128 (c!341999 input!5540))) b!2161777))

(assert (= b!2161778 b!2161779))

(assert (= (and b!2161602 (is-Leaf!11892 (c!341999 input!5540))) b!2161778))

(declare-fun m!2602421 () Bool)

(assert (=> b!2161777 m!2602421))

(declare-fun m!2602423 () Bool)

(assert (=> b!2161777 m!2602423))

(declare-fun m!2602425 () Bool)

(assert (=> b!2161778 m!2602425))

(assert (=> b!2161602 m!2602235))

(declare-fun b!2161780 () Bool)

(declare-fun e!1383379 () Bool)

(assert (=> b!2161780 (= e!1383379 tp_is_empty!9591)))

(assert (=> b!2161598 (= tp!674401 e!1383379)))

(declare-fun b!2161783 () Bool)

(declare-fun tp!674485 () Bool)

(declare-fun tp!674482 () Bool)

(assert (=> b!2161783 (= e!1383379 (and tp!674485 tp!674482))))

(declare-fun b!2161781 () Bool)

(declare-fun tp!674483 () Bool)

(declare-fun tp!674486 () Bool)

(assert (=> b!2161781 (= e!1383379 (and tp!674483 tp!674486))))

(declare-fun b!2161782 () Bool)

(declare-fun tp!674484 () Bool)

(assert (=> b!2161782 (= e!1383379 tp!674484)))

(assert (= (and b!2161598 (is-ElementMatch!5992 (regOne!12497 r!12534))) b!2161780))

(assert (= (and b!2161598 (is-Concat!10294 (regOne!12497 r!12534))) b!2161781))

(assert (= (and b!2161598 (is-Star!5992 (regOne!12497 r!12534))) b!2161782))

(assert (= (and b!2161598 (is-Union!5992 (regOne!12497 r!12534))) b!2161783))

(declare-fun b!2161784 () Bool)

(declare-fun e!1383380 () Bool)

(assert (=> b!2161784 (= e!1383380 tp_is_empty!9591)))

(assert (=> b!2161598 (= tp!674405 e!1383380)))

(declare-fun b!2161787 () Bool)

(declare-fun tp!674490 () Bool)

(declare-fun tp!674487 () Bool)

(assert (=> b!2161787 (= e!1383380 (and tp!674490 tp!674487))))

(declare-fun b!2161785 () Bool)

(declare-fun tp!674488 () Bool)

(declare-fun tp!674491 () Bool)

(assert (=> b!2161785 (= e!1383380 (and tp!674488 tp!674491))))

(declare-fun b!2161786 () Bool)

(declare-fun tp!674489 () Bool)

(assert (=> b!2161786 (= e!1383380 tp!674489)))

(assert (= (and b!2161598 (is-ElementMatch!5992 (regTwo!12497 r!12534))) b!2161784))

(assert (= (and b!2161598 (is-Concat!10294 (regTwo!12497 r!12534))) b!2161785))

(assert (= (and b!2161598 (is-Star!5992 (regTwo!12497 r!12534))) b!2161786))

(assert (= (and b!2161598 (is-Union!5992 (regTwo!12497 r!12534))) b!2161787))

(push 1)

(assert (not b!2161730))

(assert (not d!646904))

(assert (not b!2161721))

(assert (not d!646876))

(assert (not b!2161757))

(assert (not b!2161771))

(assert (not b!2161777))

(assert (not b!2161756))

(assert (not b!2161687))

(assert (not b!2161758))

(assert (not bm!129478))

(assert (not b!2161786))

(assert (not d!646896))

(assert (not b!2161602))

(assert (not d!646912))

(assert (not b!2161742))

(assert (not b!2161764))

(assert (not d!646906))

(assert (not b!2161733))

(assert (not b!2161785))

(assert (not b!2161787))

(assert (not b!2161783))

(assert (not b!2161765))

(assert (not b!2161744))

(assert (not d!646884))

(assert (not b!2161766))

(assert (not b!2161686))

(assert (not d!646892))

(assert (not b!2161762))

(assert (not d!646882))

(assert (not d!646880))

(assert (not b!2161646))

(assert (not bm!129471))

(assert (not d!646898))

(assert (not b!2161743))

(assert (not b!2161731))

(assert tp_is_empty!9591)

(assert (not d!646914))

(assert (not b!2161760))

(assert (not d!646910))

(assert (not b!2161776))

(assert (not setNonEmpty!18091))

(assert (not d!646908))

(assert (not b!2161603))

(assert (not b!2161779))

(assert (not b!2161761))

(assert (not b!2161644))

(assert (not d!646900))

(assert (not b!2161781))

(assert (not b!2161667))

(assert (not b!2161778))

(assert (not bm!129479))

(assert (not d!646894))

(assert (not b!2161782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

