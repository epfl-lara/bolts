; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!516258 () Bool)

(assert start!516258)

(declare-datatypes ((C!26914 0))(
  ( (C!26915 (val!22791 Int)) )
))
(declare-datatypes ((List!56765 0))(
  ( (Nil!56641) (Cons!56641 (h!63089 C!26914) (t!367187 List!56765)) )
))
(declare-fun lt!2019756 () List!56765)

(declare-datatypes ((IArray!29763 0))(
  ( (IArray!29764 (innerList!14939 List!56765)) )
))
(declare-datatypes ((Conc!14851 0))(
  ( (Node!14851 (left!41295 Conc!14851) (right!41625 Conc!14851) (csize!29932 Int) (cheight!15062 Int)) (Leaf!24710 (xs!18169 IArray!29763) (csize!29933 Int)) (Empty!14851) )
))
(declare-datatypes ((BalanceConc!29132 0))(
  ( (BalanceConc!29133 (c!836501 Conc!14851)) )
))
(declare-fun input!5492 () BalanceConc!29132)

(declare-datatypes ((Regex!13352 0))(
  ( (ElementMatch!13352 (c!836502 C!26914)) (Concat!21925 (regOne!27216 Regex!13352) (regTwo!27216 Regex!13352)) (EmptyExpr!13352) (Star!13352 (reg!13681 Regex!13352)) (EmptyLang!13352) (Union!13352 (regOne!27217 Regex!13352) (regTwo!27217 Regex!13352)) )
))
(declare-datatypes ((List!56766 0))(
  ( (Nil!56642) (Cons!56642 (h!63090 Regex!13352) (t!367188 List!56766)) )
))
(declare-datatypes ((Context!5988 0))(
  ( (Context!5989 (exprs!3494 List!56766)) )
))
(declare-fun z!3559 () (Set Context!5988))

(declare-fun list!17906 (BalanceConc!29132) List!56765)

(declare-datatypes ((tuple2!61050 0))(
  ( (tuple2!61051 (_1!33828 BalanceConc!29132) (_2!33828 BalanceConc!29132)) )
))
(declare-fun splitAt!231 (BalanceConc!29132 Int) tuple2!61050)

(declare-fun findLongestMatchInnerZipperFast!64 ((Set Context!5988) List!56765 Int List!56765 BalanceConc!29132 Int) Int)

(declare-fun size!37414 (BalanceConc!29132) Int)

(assert (=> start!516258 (= lt!2019756 (list!17906 (_1!33828 (splitAt!231 input!5492 (findLongestMatchInnerZipperFast!64 z!3559 Nil!56641 0 (list!17906 input!5492) input!5492 (size!37414 input!5492))))))))

(declare-fun isBalanced!4067 (Conc!14851) Bool)

(assert (=> start!516258 (not (isBalanced!4067 (c!836501 input!5492)))))

(declare-fun e!3073598 () Bool)

(declare-fun inv!73322 (BalanceConc!29132) Bool)

(assert (=> start!516258 (and (inv!73322 input!5492) e!3073598)))

(declare-fun condSetEmpty!27399 () Bool)

(assert (=> start!516258 (= condSetEmpty!27399 (= z!3559 (as set.empty (Set Context!5988))))))

(declare-fun setRes!27399 () Bool)

(assert (=> start!516258 setRes!27399))

(declare-fun setIsEmpty!27399 () Bool)

(assert (=> setIsEmpty!27399 setRes!27399))

(declare-fun b!4918146 () Bool)

(declare-fun tp!1382493 () Bool)

(declare-fun inv!73323 (Conc!14851) Bool)

(assert (=> b!4918146 (= e!3073598 (and (inv!73323 (c!836501 input!5492)) tp!1382493))))

(declare-fun b!4918147 () Bool)

(declare-fun e!3073597 () Bool)

(declare-fun tp!1382492 () Bool)

(assert (=> b!4918147 (= e!3073597 tp!1382492)))

(declare-fun setElem!27399 () Context!5988)

(declare-fun tp!1382494 () Bool)

(declare-fun setNonEmpty!27399 () Bool)

(declare-fun inv!73324 (Context!5988) Bool)

(assert (=> setNonEmpty!27399 (= setRes!27399 (and tp!1382494 (inv!73324 setElem!27399) e!3073597))))

(declare-fun setRest!27399 () (Set Context!5988))

(assert (=> setNonEmpty!27399 (= z!3559 (set.union (set.insert setElem!27399 (as set.empty (Set Context!5988))) setRest!27399))))

(assert (= start!516258 b!4918146))

(assert (= (and start!516258 condSetEmpty!27399) setIsEmpty!27399))

(assert (= (and start!516258 (not condSetEmpty!27399)) setNonEmpty!27399))

(assert (= setNonEmpty!27399 b!4918147))

(declare-fun m!5930976 () Bool)

(assert (=> start!516258 m!5930976))

(declare-fun m!5930978 () Bool)

(assert (=> start!516258 m!5930978))

(declare-fun m!5930980 () Bool)

(assert (=> start!516258 m!5930980))

(declare-fun m!5930982 () Bool)

(assert (=> start!516258 m!5930982))

(assert (=> start!516258 m!5930980))

(declare-fun m!5930984 () Bool)

(assert (=> start!516258 m!5930984))

(declare-fun m!5930986 () Bool)

(assert (=> start!516258 m!5930986))

(assert (=> start!516258 m!5930976))

(declare-fun m!5930988 () Bool)

(assert (=> start!516258 m!5930988))

(assert (=> start!516258 m!5930978))

(declare-fun m!5930990 () Bool)

(assert (=> b!4918146 m!5930990))

(declare-fun m!5930992 () Bool)

(assert (=> setNonEmpty!27399 m!5930992))

(push 1)

(assert (not start!516258))

(assert (not b!4918146))

(assert (not setNonEmpty!27399))

(assert (not b!4918147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1581751 () Bool)

(declare-fun list!17908 (Conc!14851) List!56765)

(assert (=> d!1581751 (= (list!17906 (_1!33828 (splitAt!231 input!5492 (findLongestMatchInnerZipperFast!64 z!3559 Nil!56641 0 (list!17906 input!5492) input!5492 (size!37414 input!5492))))) (list!17908 (c!836501 (_1!33828 (splitAt!231 input!5492 (findLongestMatchInnerZipperFast!64 z!3559 Nil!56641 0 (list!17906 input!5492) input!5492 (size!37414 input!5492)))))))))

(declare-fun bs!1178813 () Bool)

(assert (= bs!1178813 d!1581751))

(declare-fun m!5931012 () Bool)

(assert (=> bs!1178813 m!5931012))

(assert (=> start!516258 d!1581751))

(declare-fun d!1581753 () Bool)

(declare-fun e!3073607 () Bool)

(assert (=> d!1581753 e!3073607))

(declare-fun res!2100258 () Bool)

(assert (=> d!1581753 (=> (not res!2100258) (not e!3073607))))

(declare-fun lt!2019764 () tuple2!61050)

(assert (=> d!1581753 (= res!2100258 (isBalanced!4067 (c!836501 (_1!33828 lt!2019764))))))

(declare-datatypes ((tuple2!61054 0))(
  ( (tuple2!61055 (_1!33830 Conc!14851) (_2!33830 Conc!14851)) )
))
(declare-fun lt!2019765 () tuple2!61054)

(assert (=> d!1581753 (= lt!2019764 (tuple2!61051 (BalanceConc!29133 (_1!33830 lt!2019765)) (BalanceConc!29133 (_2!33830 lt!2019765))))))

(declare-fun splitAt!233 (Conc!14851 Int) tuple2!61054)

(assert (=> d!1581753 (= lt!2019765 (splitAt!233 (c!836501 input!5492) (findLongestMatchInnerZipperFast!64 z!3559 Nil!56641 0 (list!17906 input!5492) input!5492 (size!37414 input!5492))))))

(assert (=> d!1581753 (isBalanced!4067 (c!836501 input!5492))))

(assert (=> d!1581753 (= (splitAt!231 input!5492 (findLongestMatchInnerZipperFast!64 z!3559 Nil!56641 0 (list!17906 input!5492) input!5492 (size!37414 input!5492))) lt!2019764)))

(declare-fun b!4918158 () Bool)

(declare-fun res!2100257 () Bool)

(assert (=> b!4918158 (=> (not res!2100257) (not e!3073607))))

(assert (=> b!4918158 (= res!2100257 (isBalanced!4067 (c!836501 (_2!33828 lt!2019764))))))

(declare-fun b!4918159 () Bool)

(declare-datatypes ((tuple2!61056 0))(
  ( (tuple2!61057 (_1!33831 List!56765) (_2!33831 List!56765)) )
))
(declare-fun splitAtIndex!83 (List!56765 Int) tuple2!61056)

(assert (=> b!4918159 (= e!3073607 (= (tuple2!61057 (list!17906 (_1!33828 lt!2019764)) (list!17906 (_2!33828 lt!2019764))) (splitAtIndex!83 (list!17906 input!5492) (findLongestMatchInnerZipperFast!64 z!3559 Nil!56641 0 (list!17906 input!5492) input!5492 (size!37414 input!5492)))))))

(assert (= (and d!1581753 res!2100258) b!4918158))

(assert (= (and b!4918158 res!2100257) b!4918159))

(declare-fun m!5931014 () Bool)

(assert (=> d!1581753 m!5931014))

(assert (=> d!1581753 m!5930980))

(declare-fun m!5931016 () Bool)

(assert (=> d!1581753 m!5931016))

(assert (=> d!1581753 m!5930986))

(declare-fun m!5931018 () Bool)

(assert (=> b!4918158 m!5931018))

(declare-fun m!5931020 () Bool)

(assert (=> b!4918159 m!5931020))

(declare-fun m!5931022 () Bool)

(assert (=> b!4918159 m!5931022))

(assert (=> b!4918159 m!5930976))

(assert (=> b!4918159 m!5930976))

(assert (=> b!4918159 m!5930980))

(declare-fun m!5931024 () Bool)

(assert (=> b!4918159 m!5931024))

(assert (=> start!516258 d!1581753))

(declare-fun b!4918172 () Bool)

(declare-fun res!2100274 () Bool)

(declare-fun e!3073612 () Bool)

(assert (=> b!4918172 (=> (not res!2100274) (not e!3073612))))

(assert (=> b!4918172 (= res!2100274 (isBalanced!4067 (left!41295 (c!836501 input!5492))))))

(declare-fun b!4918173 () Bool)

(declare-fun res!2100276 () Bool)

(assert (=> b!4918173 (=> (not res!2100276) (not e!3073612))))

(declare-fun isEmpty!30548 (Conc!14851) Bool)

(assert (=> b!4918173 (= res!2100276 (not (isEmpty!30548 (left!41295 (c!836501 input!5492)))))))

(declare-fun b!4918174 () Bool)

(declare-fun e!3073613 () Bool)

(assert (=> b!4918174 (= e!3073613 e!3073612)))

(declare-fun res!2100273 () Bool)

(assert (=> b!4918174 (=> (not res!2100273) (not e!3073612))))

(declare-fun height!1975 (Conc!14851) Int)

(assert (=> b!4918174 (= res!2100273 (<= (- 1) (- (height!1975 (left!41295 (c!836501 input!5492))) (height!1975 (right!41625 (c!836501 input!5492))))))))

(declare-fun b!4918175 () Bool)

(declare-fun res!2100275 () Bool)

(assert (=> b!4918175 (=> (not res!2100275) (not e!3073612))))

(assert (=> b!4918175 (= res!2100275 (<= (- (height!1975 (left!41295 (c!836501 input!5492))) (height!1975 (right!41625 (c!836501 input!5492)))) 1))))

(declare-fun d!1581757 () Bool)

(declare-fun res!2100272 () Bool)

(assert (=> d!1581757 (=> res!2100272 e!3073613)))

(assert (=> d!1581757 (= res!2100272 (not (is-Node!14851 (c!836501 input!5492))))))

(assert (=> d!1581757 (= (isBalanced!4067 (c!836501 input!5492)) e!3073613)))

(declare-fun b!4918176 () Bool)

(assert (=> b!4918176 (= e!3073612 (not (isEmpty!30548 (right!41625 (c!836501 input!5492)))))))

(declare-fun b!4918177 () Bool)

(declare-fun res!2100271 () Bool)

(assert (=> b!4918177 (=> (not res!2100271) (not e!3073612))))

(assert (=> b!4918177 (= res!2100271 (isBalanced!4067 (right!41625 (c!836501 input!5492))))))

(assert (= (and d!1581757 (not res!2100272)) b!4918174))

(assert (= (and b!4918174 res!2100273) b!4918175))

(assert (= (and b!4918175 res!2100275) b!4918172))

(assert (= (and b!4918172 res!2100274) b!4918177))

(assert (= (and b!4918177 res!2100271) b!4918173))

(assert (= (and b!4918173 res!2100276) b!4918176))

(declare-fun m!5931026 () Bool)

(assert (=> b!4918174 m!5931026))

(declare-fun m!5931028 () Bool)

(assert (=> b!4918174 m!5931028))

(declare-fun m!5931030 () Bool)

(assert (=> b!4918177 m!5931030))

(assert (=> b!4918175 m!5931026))

(assert (=> b!4918175 m!5931028))

(declare-fun m!5931032 () Bool)

(assert (=> b!4918172 m!5931032))

(declare-fun m!5931034 () Bool)

(assert (=> b!4918173 m!5931034))

(declare-fun m!5931036 () Bool)

(assert (=> b!4918176 m!5931036))

(assert (=> start!516258 d!1581757))

(declare-fun d!1581759 () Bool)

(declare-fun lt!2019768 () Int)

(declare-fun size!37416 (List!56765) Int)

(assert (=> d!1581759 (= lt!2019768 (size!37416 (list!17906 input!5492)))))

(declare-fun size!37417 (Conc!14851) Int)

(assert (=> d!1581759 (= lt!2019768 (size!37417 (c!836501 input!5492)))))

(assert (=> d!1581759 (= (size!37414 input!5492) lt!2019768)))

(declare-fun bs!1178814 () Bool)

(assert (= bs!1178814 d!1581759))

(assert (=> bs!1178814 m!5930976))

(assert (=> bs!1178814 m!5930976))

(declare-fun m!5931038 () Bool)

(assert (=> bs!1178814 m!5931038))

(declare-fun m!5931040 () Bool)

(assert (=> bs!1178814 m!5931040))

(assert (=> start!516258 d!1581759))

(declare-fun d!1581761 () Bool)

(declare-fun lt!2019858 () Int)

(declare-fun findLongestMatchInnerZipper!37 ((Set Context!5988) List!56765 Int List!56765 List!56765 Int) tuple2!61056)

(assert (=> d!1581761 (= (size!37416 (_1!33831 (findLongestMatchInnerZipper!37 z!3559 Nil!56641 0 (list!17906 input!5492) (list!17906 input!5492) (size!37414 input!5492)))) lt!2019858)))

(declare-fun e!3073626 () Int)

(assert (=> d!1581761 (= lt!2019858 e!3073626)))

(declare-fun c!836522 () Bool)

(declare-fun lostCauseZipper!672 ((Set Context!5988)) Bool)

(assert (=> d!1581761 (= c!836522 (lostCauseZipper!672 z!3559))))

(declare-datatypes ((Unit!146978 0))(
  ( (Unit!146979) )
))
(declare-fun lt!2019891 () Unit!146978)

(declare-fun Unit!146980 () Unit!146978)

(assert (=> d!1581761 (= lt!2019891 Unit!146980)))

(declare-fun getSuffix!2930 (List!56765 List!56765) List!56765)

(assert (=> d!1581761 (= (getSuffix!2930 (list!17906 input!5492) Nil!56641) (list!17906 input!5492))))

(declare-fun lt!2019862 () Unit!146978)

(declare-fun lt!2019883 () Unit!146978)

(assert (=> d!1581761 (= lt!2019862 lt!2019883)))

(declare-fun lt!2019873 () List!56765)

(assert (=> d!1581761 (= (list!17906 input!5492) lt!2019873)))

(declare-fun lemmaSamePrefixThenSameSuffix!2346 (List!56765 List!56765 List!56765 List!56765 List!56765) Unit!146978)

(assert (=> d!1581761 (= lt!2019883 (lemmaSamePrefixThenSameSuffix!2346 Nil!56641 (list!17906 input!5492) Nil!56641 lt!2019873 (list!17906 input!5492)))))

(assert (=> d!1581761 (= lt!2019873 (getSuffix!2930 (list!17906 input!5492) Nil!56641))))

(declare-fun lt!2019868 () Unit!146978)

(declare-fun lt!2019871 () Unit!146978)

(assert (=> d!1581761 (= lt!2019868 lt!2019871)))

(declare-fun isPrefix!4942 (List!56765 List!56765) Bool)

(declare-fun ++!12299 (List!56765 List!56765) List!56765)

(assert (=> d!1581761 (isPrefix!4942 Nil!56641 (++!12299 Nil!56641 (list!17906 input!5492)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3166 (List!56765 List!56765) Unit!146978)

(assert (=> d!1581761 (= lt!2019871 (lemmaConcatTwoListThenFirstIsPrefix!3166 Nil!56641 (list!17906 input!5492)))))

(assert (=> d!1581761 (= (++!12299 Nil!56641 (list!17906 input!5492)) (list!17906 input!5492))))

(assert (=> d!1581761 (= (findLongestMatchInnerZipperFast!64 z!3559 Nil!56641 0 (list!17906 input!5492) input!5492 (size!37414 input!5492)) lt!2019858)))

(declare-fun b!4918202 () Bool)

(declare-fun e!3073627 () List!56765)

(assert (=> b!4918202 (= e!3073627 (list!17906 input!5492))))

(declare-fun b!4918203 () Bool)

(declare-fun e!3073631 () Unit!146978)

(declare-fun Unit!146981 () Unit!146978)

(assert (=> b!4918203 (= e!3073631 Unit!146981)))

(declare-fun lt!2019879 () List!56765)

(assert (=> b!4918203 (= lt!2019879 (list!17906 input!5492))))

(declare-fun lt!2019864 () List!56765)

(assert (=> b!4918203 (= lt!2019864 (list!17906 input!5492))))

(declare-fun lt!2019893 () Unit!146978)

(declare-fun call!341835 () Unit!146978)

(assert (=> b!4918203 (= lt!2019893 call!341835)))

(declare-fun call!341831 () Bool)

(assert (=> b!4918203 call!341831))

(declare-fun lt!2019860 () Unit!146978)

(assert (=> b!4918203 (= lt!2019860 lt!2019893)))

(declare-fun lt!2019855 () List!56765)

(assert (=> b!4918203 (= lt!2019855 (list!17906 input!5492))))

(declare-fun lt!2019866 () Unit!146978)

(declare-fun call!341834 () Unit!146978)

(assert (=> b!4918203 (= lt!2019866 call!341834)))

(assert (=> b!4918203 (= lt!2019855 Nil!56641)))

(declare-fun lt!2019861 () Unit!146978)

(assert (=> b!4918203 (= lt!2019861 lt!2019866)))

(assert (=> b!4918203 false))

(declare-fun b!4918204 () Bool)

(declare-fun c!836520 () Bool)

(declare-fun call!341832 () Bool)

(assert (=> b!4918204 (= c!836520 call!341832)))

(declare-fun lt!2019880 () Unit!146978)

(declare-fun lt!2019881 () Unit!146978)

(assert (=> b!4918204 (= lt!2019880 lt!2019881)))

(declare-fun lt!2019872 () List!56765)

(assert (=> b!4918204 (= lt!2019872 Nil!56641)))

(assert (=> b!4918204 (= lt!2019881 call!341834)))

(declare-fun call!341837 () List!56765)

(assert (=> b!4918204 (= lt!2019872 call!341837)))

(declare-fun lt!2019876 () Unit!146978)

(declare-fun lt!2019867 () Unit!146978)

(assert (=> b!4918204 (= lt!2019876 lt!2019867)))

(assert (=> b!4918204 call!341831))

(assert (=> b!4918204 (= lt!2019867 call!341835)))

(declare-fun lt!2019887 () List!56765)

(assert (=> b!4918204 (= lt!2019887 call!341837)))

(declare-fun lt!2019875 () List!56765)

(assert (=> b!4918204 (= lt!2019875 call!341837)))

(declare-fun e!3073630 () Int)

(declare-fun e!3073629 () Int)

(assert (=> b!4918204 (= e!3073630 e!3073629)))

(declare-fun b!4918205 () Bool)

(assert (=> b!4918205 (= e!3073629 0)))

(declare-fun bm!341824 () Bool)

(declare-fun call!341838 () List!56765)

(declare-fun tail!9649 (List!56765) List!56765)

(assert (=> bm!341824 (= call!341838 (tail!9649 (list!17906 input!5492)))))

(declare-fun bm!341825 () Bool)

(declare-fun call!341833 () List!56765)

(declare-fun call!341830 () C!26914)

(assert (=> bm!341825 (= call!341833 (++!12299 Nil!56641 (Cons!56641 call!341830 Nil!56641)))))

(declare-fun b!4918206 () Bool)

(declare-fun e!3073628 () Int)

(declare-fun call!341829 () Int)

(assert (=> b!4918206 (= e!3073628 call!341829)))

(declare-fun bm!341826 () Bool)

(declare-fun c!836521 () Bool)

(declare-fun c!836518 () Bool)

(assert (=> bm!341826 (= c!836521 c!836518)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!1101 (List!56765 List!56765 List!56765) Unit!146978)

(assert (=> bm!341826 (= call!341834 (lemmaIsPrefixSameLengthThenSameList!1101 (ite c!836518 lt!2019872 lt!2019855) Nil!56641 e!3073627))))

(declare-fun bm!341827 () Bool)

(declare-fun nullableZipper!792 ((Set Context!5988)) Bool)

(assert (=> bm!341827 (= call!341832 (nullableZipper!792 z!3559))))

(declare-fun bm!341828 () Bool)

(declare-fun lemmaIsPrefixRefl!3339 (List!56765 List!56765) Unit!146978)

(assert (=> bm!341828 (= call!341835 (lemmaIsPrefixRefl!3339 (ite c!836518 lt!2019875 lt!2019879) (ite c!836518 lt!2019887 lt!2019864)))))

(declare-fun b!4918207 () Bool)

(assert (=> b!4918207 (= e!3073629 0)))

(declare-fun bm!341829 () Bool)

(declare-fun lt!2019853 () tuple2!61050)

(assert (=> bm!341829 (= call!341837 (list!17906 (ite c!836518 input!5492 (_1!33828 lt!2019853))))))

(declare-fun bm!341830 () Bool)

(assert (=> bm!341830 (= call!341831 (isPrefix!4942 (ite c!836518 lt!2019875 lt!2019879) (ite c!836518 lt!2019887 lt!2019864)))))

(declare-fun b!4918208 () Bool)

(declare-fun Unit!146982 () Unit!146978)

(assert (=> b!4918208 (= e!3073631 Unit!146982)))

(declare-fun b!4918209 () Bool)

(declare-fun c!836517 () Bool)

(assert (=> b!4918209 (= c!836517 call!341832)))

(declare-fun lt!2019863 () Unit!146978)

(declare-fun lt!2019892 () Unit!146978)

(assert (=> b!4918209 (= lt!2019863 lt!2019892)))

(declare-fun lt!2019894 () C!26914)

(declare-fun lt!2019865 () List!56765)

(declare-fun lt!2019859 () List!56765)

(assert (=> b!4918209 (= (++!12299 (++!12299 Nil!56641 (Cons!56641 lt!2019894 Nil!56641)) lt!2019865) lt!2019859)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1373 (List!56765 C!26914 List!56765 List!56765) Unit!146978)

(assert (=> b!4918209 (= lt!2019892 (lemmaMoveElementToOtherListKeepsConcatEq!1373 Nil!56641 lt!2019894 lt!2019865 lt!2019859))))

(assert (=> b!4918209 (= lt!2019859 (list!17906 input!5492))))

(assert (=> b!4918209 (= lt!2019865 (tail!9649 (list!17906 input!5492)))))

(declare-fun apply!13615 (BalanceConc!29132 Int) C!26914)

(assert (=> b!4918209 (= lt!2019894 (apply!13615 input!5492 0))))

(declare-fun lt!2019885 () Unit!146978)

(declare-fun lt!2019854 () Unit!146978)

(assert (=> b!4918209 (= lt!2019885 lt!2019854)))

(declare-fun lt!2019874 () List!56765)

(declare-fun head!10502 (List!56765) C!26914)

(assert (=> b!4918209 (isPrefix!4942 (++!12299 Nil!56641 (Cons!56641 (head!10502 (getSuffix!2930 lt!2019874 Nil!56641)) Nil!56641)) lt!2019874)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!755 (List!56765 List!56765) Unit!146978)

(assert (=> b!4918209 (= lt!2019854 (lemmaAddHeadSuffixToPrefixStillPrefix!755 Nil!56641 lt!2019874))))

(assert (=> b!4918209 (= lt!2019874 (list!17906 input!5492))))

(declare-fun lt!2019884 () Unit!146978)

(assert (=> b!4918209 (= lt!2019884 e!3073631)))

(declare-fun c!836519 () Bool)

(assert (=> b!4918209 (= c!836519 (= (size!37416 Nil!56641) (size!37414 input!5492)))))

(declare-fun lt!2019886 () Unit!146978)

(declare-fun lt!2019878 () Unit!146978)

(assert (=> b!4918209 (= lt!2019886 lt!2019878)))

(declare-fun lt!2019857 () List!56765)

(assert (=> b!4918209 (<= (size!37416 Nil!56641) (size!37416 lt!2019857))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!667 (List!56765 List!56765) Unit!146978)

(assert (=> b!4918209 (= lt!2019878 (lemmaIsPrefixThenSmallerEqSize!667 Nil!56641 lt!2019857))))

(assert (=> b!4918209 (= lt!2019857 (list!17906 input!5492))))

(declare-fun lt!2019882 () Unit!146978)

(declare-fun lt!2019869 () Unit!146978)

(assert (=> b!4918209 (= lt!2019882 lt!2019869)))

(declare-fun lt!2019888 () List!56765)

(declare-fun drop!2206 (List!56765 Int) List!56765)

(declare-fun apply!13616 (List!56765 Int) C!26914)

(assert (=> b!4918209 (= (head!10502 (drop!2206 lt!2019888 0)) (apply!13616 lt!2019888 0))))

(declare-fun lemmaDropApply!1265 (List!56765 Int) Unit!146978)

(assert (=> b!4918209 (= lt!2019869 (lemmaDropApply!1265 lt!2019888 0))))

(assert (=> b!4918209 (= lt!2019888 (list!17906 input!5492))))

(declare-fun lt!2019889 () Unit!146978)

(declare-fun lt!2019877 () Unit!146978)

(assert (=> b!4918209 (= lt!2019889 lt!2019877)))

(declare-fun lt!2019890 () List!56765)

(declare-fun lt!2019870 () List!56765)

(assert (=> b!4918209 (and (= lt!2019890 Nil!56641) (= lt!2019870 (list!17906 input!5492)))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!640 (List!56765 List!56765 List!56765 List!56765) Unit!146978)

(assert (=> b!4918209 (= lt!2019877 (lemmaConcatSameAndSameSizesThenSameLists!640 lt!2019890 lt!2019870 Nil!56641 (list!17906 input!5492)))))

(assert (=> b!4918209 (= lt!2019870 (list!17906 (_2!33828 lt!2019853)))))

(assert (=> b!4918209 (= lt!2019890 call!341837)))

(assert (=> b!4918209 (= lt!2019853 (splitAt!231 input!5492 0))))

(assert (=> b!4918209 (= e!3073630 e!3073628)))

(declare-fun bm!341831 () Bool)

(declare-fun call!341836 () (Set Context!5988))

(assert (=> bm!341831 (= call!341829 (findLongestMatchInnerZipperFast!64 call!341836 call!341833 (+ 0 1) call!341838 input!5492 (size!37414 input!5492)))))

(declare-fun b!4918210 () Bool)

(assert (=> b!4918210 (= e!3073626 0)))

(declare-fun bm!341832 () Bool)

(assert (=> bm!341832 (= call!341830 (apply!13615 input!5492 0))))

(declare-fun b!4918211 () Bool)

(declare-fun lt!2019856 () Int)

(assert (=> b!4918211 (= e!3073628 (ite (= lt!2019856 0) 0 lt!2019856))))

(assert (=> b!4918211 (= lt!2019856 call!341829)))

(declare-fun b!4918212 () Bool)

(assert (=> b!4918212 (= e!3073627 call!341837)))

(declare-fun b!4918213 () Bool)

(assert (=> b!4918213 (= e!3073626 e!3073630)))

(assert (=> b!4918213 (= c!836518 (= 0 (size!37414 input!5492)))))

(declare-fun bm!341833 () Bool)

(declare-fun derivationStepZipper!570 ((Set Context!5988) C!26914) (Set Context!5988))

(assert (=> bm!341833 (= call!341836 (derivationStepZipper!570 z!3559 call!341830))))

(assert (= (and d!1581761 c!836522) b!4918210))

(assert (= (and d!1581761 (not c!836522)) b!4918213))

(assert (= (and b!4918213 c!836518) b!4918204))

(assert (= (and b!4918213 (not c!836518)) b!4918209))

(assert (= (and b!4918204 c!836520) b!4918205))

(assert (= (and b!4918204 (not c!836520)) b!4918207))

(assert (= (and b!4918209 c!836519) b!4918203))

(assert (= (and b!4918209 (not c!836519)) b!4918208))

(assert (= (and b!4918209 c!836517) b!4918211))

(assert (= (and b!4918209 (not c!836517)) b!4918206))

(assert (= (or b!4918211 b!4918206) bm!341832))

(assert (= (or b!4918211 b!4918206) bm!341824))

(assert (= (or b!4918211 b!4918206) bm!341825))

(assert (= (or b!4918211 b!4918206) bm!341833))

(assert (= (or b!4918211 b!4918206) bm!341831))

(assert (= (or b!4918204 b!4918209) bm!341829))

(assert (= (or b!4918204 b!4918203) bm!341828))

(assert (= (or b!4918204 b!4918209) bm!341827))

(assert (= (or b!4918204 b!4918203) bm!341830))

(assert (= (or b!4918204 b!4918203) bm!341826))

(assert (= (and bm!341826 c!836521) b!4918212))

(assert (= (and bm!341826 (not c!836521)) b!4918202))

(declare-fun m!5931042 () Bool)

(assert (=> b!4918209 m!5931042))

(declare-fun m!5931044 () Bool)

(assert (=> b!4918209 m!5931044))

(declare-fun m!5931046 () Bool)

(assert (=> b!4918209 m!5931046))

(declare-fun m!5931048 () Bool)

(assert (=> b!4918209 m!5931048))

(declare-fun m!5931050 () Bool)

(assert (=> b!4918209 m!5931050))

(declare-fun m!5931052 () Bool)

(assert (=> b!4918209 m!5931052))

(assert (=> b!4918209 m!5930976))

(declare-fun m!5931054 () Bool)

(assert (=> b!4918209 m!5931054))

(declare-fun m!5931056 () Bool)

(assert (=> b!4918209 m!5931056))

(declare-fun m!5931058 () Bool)

(assert (=> b!4918209 m!5931058))

(declare-fun m!5931060 () Bool)

(assert (=> b!4918209 m!5931060))

(declare-fun m!5931062 () Bool)

(assert (=> b!4918209 m!5931062))

(assert (=> b!4918209 m!5931046))

(assert (=> b!4918209 m!5930978))

(declare-fun m!5931064 () Bool)

(assert (=> b!4918209 m!5931064))

(declare-fun m!5931066 () Bool)

(assert (=> b!4918209 m!5931066))

(assert (=> b!4918209 m!5930976))

(declare-fun m!5931068 () Bool)

(assert (=> b!4918209 m!5931068))

(declare-fun m!5931070 () Bool)

(assert (=> b!4918209 m!5931070))

(assert (=> b!4918209 m!5931064))

(declare-fun m!5931072 () Bool)

(assert (=> b!4918209 m!5931072))

(declare-fun m!5931074 () Bool)

(assert (=> b!4918209 m!5931074))

(declare-fun m!5931076 () Bool)

(assert (=> b!4918209 m!5931076))

(assert (=> b!4918209 m!5931060))

(assert (=> b!4918209 m!5930976))

(declare-fun m!5931078 () Bool)

(assert (=> b!4918209 m!5931078))

(declare-fun m!5931080 () Bool)

(assert (=> b!4918209 m!5931080))

(assert (=> b!4918209 m!5931078))

(assert (=> bm!341831 m!5930978))

(declare-fun m!5931082 () Bool)

(assert (=> bm!341831 m!5931082))

(declare-fun m!5931084 () Bool)

(assert (=> bm!341829 m!5931084))

(declare-fun m!5931086 () Bool)

(assert (=> bm!341826 m!5931086))

(declare-fun m!5931088 () Bool)

(assert (=> bm!341827 m!5931088))

(assert (=> bm!341824 m!5930976))

(assert (=> bm!341824 m!5931054))

(assert (=> b!4918203 m!5930976))

(assert (=> b!4918202 m!5930976))

(declare-fun m!5931090 () Bool)

(assert (=> d!1581761 m!5931090))

(assert (=> d!1581761 m!5930976))

(assert (=> d!1581761 m!5930976))

(assert (=> d!1581761 m!5930978))

(declare-fun m!5931092 () Bool)

(assert (=> d!1581761 m!5931092))

(assert (=> d!1581761 m!5930976))

(assert (=> d!1581761 m!5930976))

(declare-fun m!5931094 () Bool)

(assert (=> d!1581761 m!5931094))

(assert (=> d!1581761 m!5930976))

(assert (=> d!1581761 m!5930976))

(declare-fun m!5931096 () Bool)

(assert (=> d!1581761 m!5931096))

(declare-fun m!5931098 () Bool)

(assert (=> d!1581761 m!5931098))

(declare-fun m!5931100 () Bool)

(assert (=> d!1581761 m!5931100))

(declare-fun m!5931102 () Bool)

(assert (=> d!1581761 m!5931102))

(assert (=> d!1581761 m!5930976))

(assert (=> d!1581761 m!5931100))

(assert (=> d!1581761 m!5930976))

(declare-fun m!5931104 () Bool)

(assert (=> d!1581761 m!5931104))

(declare-fun m!5931106 () Bool)

(assert (=> bm!341825 m!5931106))

(declare-fun m!5931108 () Bool)

(assert (=> bm!341830 m!5931108))

(declare-fun m!5931110 () Bool)

(assert (=> bm!341833 m!5931110))

(declare-fun m!5931112 () Bool)

(assert (=> bm!341828 m!5931112))

(assert (=> bm!341832 m!5931074))

(assert (=> start!516258 d!1581761))

(declare-fun d!1581763 () Bool)

(assert (=> d!1581763 (= (list!17906 input!5492) (list!17908 (c!836501 input!5492)))))

(declare-fun bs!1178815 () Bool)

(assert (= bs!1178815 d!1581763))

(declare-fun m!5931114 () Bool)

(assert (=> bs!1178815 m!5931114))

(assert (=> start!516258 d!1581763))

(declare-fun d!1581765 () Bool)

(assert (=> d!1581765 (= (inv!73322 input!5492) (isBalanced!4067 (c!836501 input!5492)))))

(declare-fun bs!1178816 () Bool)

(assert (= bs!1178816 d!1581765))

(assert (=> bs!1178816 m!5930986))

(assert (=> start!516258 d!1581765))

(declare-fun d!1581767 () Bool)

(declare-fun c!836525 () Bool)

(assert (=> d!1581767 (= c!836525 (is-Node!14851 (c!836501 input!5492)))))

(declare-fun e!3073636 () Bool)

(assert (=> d!1581767 (= (inv!73323 (c!836501 input!5492)) e!3073636)))

(declare-fun b!4918220 () Bool)

(declare-fun inv!73328 (Conc!14851) Bool)

(assert (=> b!4918220 (= e!3073636 (inv!73328 (c!836501 input!5492)))))

(declare-fun b!4918221 () Bool)

(declare-fun e!3073637 () Bool)

(assert (=> b!4918221 (= e!3073636 e!3073637)))

(declare-fun res!2100279 () Bool)

(assert (=> b!4918221 (= res!2100279 (not (is-Leaf!24710 (c!836501 input!5492))))))

(assert (=> b!4918221 (=> res!2100279 e!3073637)))

(declare-fun b!4918222 () Bool)

(declare-fun inv!73329 (Conc!14851) Bool)

(assert (=> b!4918222 (= e!3073637 (inv!73329 (c!836501 input!5492)))))

(assert (= (and d!1581767 c!836525) b!4918220))

(assert (= (and d!1581767 (not c!836525)) b!4918221))

(assert (= (and b!4918221 (not res!2100279)) b!4918222))

(declare-fun m!5931116 () Bool)

(assert (=> b!4918220 m!5931116))

(declare-fun m!5931118 () Bool)

(assert (=> b!4918222 m!5931118))

(assert (=> b!4918146 d!1581767))

(declare-fun d!1581769 () Bool)

(declare-fun lambda!244980 () Int)

(declare-fun forall!13111 (List!56766 Int) Bool)

(assert (=> d!1581769 (= (inv!73324 setElem!27399) (forall!13111 (exprs!3494 setElem!27399) lambda!244980))))

(declare-fun bs!1178820 () Bool)

(assert (= bs!1178820 d!1581769))

(declare-fun m!5931152 () Bool)

(assert (=> bs!1178820 m!5931152))

(assert (=> setNonEmpty!27399 d!1581769))

(declare-fun b!4918255 () Bool)

(declare-fun tp!1382510 () Bool)

(declare-fun tp!1382512 () Bool)

(declare-fun e!3073651 () Bool)

(assert (=> b!4918255 (= e!3073651 (and (inv!73323 (left!41295 (c!836501 input!5492))) tp!1382512 (inv!73323 (right!41625 (c!836501 input!5492))) tp!1382510))))

(declare-fun b!4918257 () Bool)

(declare-fun e!3073652 () Bool)

(declare-fun tp!1382511 () Bool)

(assert (=> b!4918257 (= e!3073652 tp!1382511)))

(declare-fun b!4918256 () Bool)

(declare-fun inv!73330 (IArray!29763) Bool)

(assert (=> b!4918256 (= e!3073651 (and (inv!73330 (xs!18169 (c!836501 input!5492))) e!3073652))))

(assert (=> b!4918146 (= tp!1382493 (and (inv!73323 (c!836501 input!5492)) e!3073651))))

(assert (= (and b!4918146 (is-Node!14851 (c!836501 input!5492))) b!4918255))

(assert (= b!4918256 b!4918257))

(assert (= (and b!4918146 (is-Leaf!24710 (c!836501 input!5492))) b!4918256))

(declare-fun m!5931154 () Bool)

(assert (=> b!4918255 m!5931154))

(declare-fun m!5931156 () Bool)

(assert (=> b!4918255 m!5931156))

(declare-fun m!5931158 () Bool)

(assert (=> b!4918256 m!5931158))

(assert (=> b!4918146 m!5930990))

(declare-fun condSetEmpty!27405 () Bool)

(assert (=> setNonEmpty!27399 (= condSetEmpty!27405 (= setRest!27399 (as set.empty (Set Context!5988))))))

(declare-fun setRes!27405 () Bool)

(assert (=> setNonEmpty!27399 (= tp!1382494 setRes!27405)))

(declare-fun setIsEmpty!27405 () Bool)

(assert (=> setIsEmpty!27405 setRes!27405))

(declare-fun tp!1382518 () Bool)

(declare-fun e!3073655 () Bool)

(declare-fun setElem!27405 () Context!5988)

(declare-fun setNonEmpty!27405 () Bool)

(assert (=> setNonEmpty!27405 (= setRes!27405 (and tp!1382518 (inv!73324 setElem!27405) e!3073655))))

(declare-fun setRest!27405 () (Set Context!5988))

(assert (=> setNonEmpty!27405 (= setRest!27399 (set.union (set.insert setElem!27405 (as set.empty (Set Context!5988))) setRest!27405))))

(declare-fun b!4918262 () Bool)

(declare-fun tp!1382517 () Bool)

(assert (=> b!4918262 (= e!3073655 tp!1382517)))

(assert (= (and setNonEmpty!27399 condSetEmpty!27405) setIsEmpty!27405))

(assert (= (and setNonEmpty!27399 (not condSetEmpty!27405)) setNonEmpty!27405))

(assert (= setNonEmpty!27405 b!4918262))

(declare-fun m!5931160 () Bool)

(assert (=> setNonEmpty!27405 m!5931160))

(declare-fun b!4918267 () Bool)

(declare-fun e!3073658 () Bool)

(declare-fun tp!1382523 () Bool)

(declare-fun tp!1382524 () Bool)

(assert (=> b!4918267 (= e!3073658 (and tp!1382523 tp!1382524))))

(assert (=> b!4918147 (= tp!1382492 e!3073658)))

(assert (= (and b!4918147 (is-Cons!56642 (exprs!3494 setElem!27399))) b!4918267))

(push 1)

(assert (not b!4918220))

(assert (not b!4918209))

(assert (not b!4918203))

(assert (not d!1581765))

(assert (not d!1581751))

(assert (not bm!341825))

(assert (not bm!341829))

(assert (not b!4918173))

(assert (not b!4918267))

(assert (not bm!341827))

(assert (not b!4918158))

(assert (not bm!341830))

(assert (not b!4918222))

(assert (not b!4918262))

(assert (not d!1581761))

(assert (not b!4918202))

(assert (not bm!341826))

(assert (not b!4918255))

(assert (not b!4918257))

(assert (not bm!341833))

(assert (not b!4918159))

(assert (not d!1581769))

(assert (not b!4918146))

(assert (not b!4918177))

(assert (not bm!341832))

(assert (not b!4918172))

(assert (not bm!341828))

(assert (not setNonEmpty!27405))

(assert (not b!4918174))

(assert (not d!1581753))

(assert (not b!4918256))

(assert (not bm!341831))

(assert (not bm!341824))

(assert (not b!4918176))

(assert (not b!4918175))

(assert (not d!1581759))

(assert (not d!1581763))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

