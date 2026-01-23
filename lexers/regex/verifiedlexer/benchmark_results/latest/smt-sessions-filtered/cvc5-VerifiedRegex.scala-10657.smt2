; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546382 () Bool)

(assert start!546382)

(declare-fun setIsEmpty!31549 () Bool)

(declare-fun setRes!31549 () Bool)

(assert (=> setIsEmpty!31549 setRes!31549))

(declare-fun b!5164620 () Bool)

(declare-fun e!3218005 () Bool)

(declare-fun e!3218010 () Bool)

(assert (=> b!5164620 (= e!3218005 e!3218010)))

(declare-fun res!2195569 () Bool)

(assert (=> b!5164620 (=> (not res!2195569) (not e!3218010))))

(declare-datatypes ((C!29390 0))(
  ( (C!29391 (val!24397 Int)) )
))
(declare-datatypes ((List!60075 0))(
  ( (Nil!59951) (Cons!59951 (h!66399 C!29390) (t!373228 List!60075)) )
))
(declare-fun input!5817 () List!60075)

(declare-fun lt!2123876 () Int)

(declare-fun testedP!294 () List!60075)

(declare-fun lt!2123875 () List!60075)

(declare-datatypes ((Regex!14560 0))(
  ( (ElementMatch!14560 (c!888569 C!29390)) (Concat!23405 (regOne!29632 Regex!14560) (regTwo!29632 Regex!14560)) (EmptyExpr!14560) (Star!14560 (reg!14889 Regex!14560)) (EmptyLang!14560) (Union!14560 (regOne!29633 Regex!14560) (regTwo!29633 Regex!14560)) )
))
(declare-datatypes ((List!60076 0))(
  ( (Nil!59952) (Cons!59952 (h!66400 Regex!14560) (t!373229 List!60076)) )
))
(declare-datatypes ((Context!7888 0))(
  ( (Context!7889 (exprs!4444 List!60076)) )
))
(declare-fun z!4581 () (Set Context!7888))

(declare-fun isEmpty!32098 (List!60075) Bool)

(declare-datatypes ((tuple2!63674 0))(
  ( (tuple2!63675 (_1!35140 List!60075) (_2!35140 List!60075)) )
))
(declare-fun findLongestMatchInnerZipper!218 ((Set Context!7888) List!60075 Int List!60075 List!60075 Int) tuple2!63674)

(declare-fun size!39596 (List!60075) Int)

(assert (=> b!5164620 (= res!2195569 (isEmpty!32098 (_1!35140 (findLongestMatchInnerZipper!218 z!4581 testedP!294 lt!2123876 lt!2123875 input!5817 (size!39596 input!5817)))))))

(declare-fun getSuffix!3343 (List!60075 List!60075) List!60075)

(assert (=> b!5164620 (= lt!2123875 (getSuffix!3343 input!5817 testedP!294))))

(assert (=> b!5164620 (= lt!2123876 (size!39596 testedP!294))))

(declare-fun b!5164621 () Bool)

(declare-fun e!3218007 () Bool)

(declare-fun tp_is_empty!38373 () Bool)

(declare-fun tp!1448713 () Bool)

(assert (=> b!5164621 (= e!3218007 (and tp_is_empty!38373 tp!1448713))))

(declare-fun b!5164622 () Bool)

(declare-fun e!3218009 () Bool)

(declare-fun tp!1448716 () Bool)

(assert (=> b!5164622 (= e!3218009 (and tp_is_empty!38373 tp!1448716))))

(declare-fun b!5164623 () Bool)

(declare-fun e!3218006 () Bool)

(declare-fun tp!1448712 () Bool)

(assert (=> b!5164623 (= e!3218006 tp!1448712)))

(declare-fun setElem!31550 () Context!7888)

(declare-fun setNonEmpty!31549 () Bool)

(declare-fun tp!1448717 () Bool)

(declare-fun inv!79648 (Context!7888) Bool)

(assert (=> setNonEmpty!31549 (= setRes!31549 (and tp!1448717 (inv!79648 setElem!31550) e!3218006))))

(declare-fun setRest!31550 () (Set Context!7888))

(assert (=> setNonEmpty!31549 (= z!4581 (set.union (set.insert setElem!31550 (as set.empty (Set Context!7888))) setRest!31550))))

(declare-fun res!2195567 () Bool)

(assert (=> start!546382 (=> (not res!2195567) (not e!3218005))))

(declare-fun isPrefix!5693 (List!60075 List!60075) Bool)

(assert (=> start!546382 (= res!2195567 (isPrefix!5693 testedP!294 input!5817))))

(assert (=> start!546382 e!3218005))

(assert (=> start!546382 e!3218007))

(assert (=> start!546382 e!3218009))

(declare-fun condSetEmpty!31550 () Bool)

(declare-fun baseZ!62 () (Set Context!7888))

(assert (=> start!546382 (= condSetEmpty!31550 (= baseZ!62 (as set.empty (Set Context!7888))))))

(declare-fun setRes!31550 () Bool)

(assert (=> start!546382 setRes!31550))

(declare-fun condSetEmpty!31549 () Bool)

(assert (=> start!546382 (= condSetEmpty!31549 (= z!4581 (as set.empty (Set Context!7888))))))

(assert (=> start!546382 setRes!31549))

(declare-fun b!5164624 () Bool)

(declare-fun e!3218008 () Bool)

(declare-fun tp!1448715 () Bool)

(assert (=> b!5164624 (= e!3218008 tp!1448715)))

(declare-fun setIsEmpty!31550 () Bool)

(assert (=> setIsEmpty!31550 setRes!31550))

(declare-fun tp!1448714 () Bool)

(declare-fun setNonEmpty!31550 () Bool)

(declare-fun setElem!31549 () Context!7888)

(assert (=> setNonEmpty!31550 (= setRes!31550 (and tp!1448714 (inv!79648 setElem!31549) e!3218008))))

(declare-fun setRest!31549 () (Set Context!7888))

(assert (=> setNonEmpty!31550 (= baseZ!62 (set.union (set.insert setElem!31549 (as set.empty (Set Context!7888))) setRest!31549))))

(declare-fun b!5164625 () Bool)

(declare-fun res!2195568 () Bool)

(assert (=> b!5164625 (=> (not res!2195568) (not e!3218005))))

(declare-fun derivationZipper!183 ((Set Context!7888) List!60075) (Set Context!7888))

(assert (=> b!5164625 (= res!2195568 (= (derivationZipper!183 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5164626 () Bool)

(declare-fun ++!13100 (List!60075 List!60075) List!60075)

(assert (=> b!5164626 (= e!3218010 (not (= (++!13100 testedP!294 lt!2123875) input!5817)))))

(assert (= (and start!546382 res!2195567) b!5164625))

(assert (= (and b!5164625 res!2195568) b!5164620))

(assert (= (and b!5164620 res!2195569) b!5164626))

(assert (= (and start!546382 (is-Cons!59951 testedP!294)) b!5164621))

(assert (= (and start!546382 (is-Cons!59951 input!5817)) b!5164622))

(assert (= (and start!546382 condSetEmpty!31550) setIsEmpty!31550))

(assert (= (and start!546382 (not condSetEmpty!31550)) setNonEmpty!31550))

(assert (= setNonEmpty!31550 b!5164624))

(assert (= (and start!546382 condSetEmpty!31549) setIsEmpty!31549))

(assert (= (and start!546382 (not condSetEmpty!31549)) setNonEmpty!31549))

(assert (= setNonEmpty!31549 b!5164623))

(declare-fun m!6215152 () Bool)

(assert (=> setNonEmpty!31549 m!6215152))

(declare-fun m!6215154 () Bool)

(assert (=> b!5164626 m!6215154))

(declare-fun m!6215156 () Bool)

(assert (=> setNonEmpty!31550 m!6215156))

(declare-fun m!6215158 () Bool)

(assert (=> start!546382 m!6215158))

(declare-fun m!6215160 () Bool)

(assert (=> b!5164620 m!6215160))

(declare-fun m!6215162 () Bool)

(assert (=> b!5164620 m!6215162))

(declare-fun m!6215164 () Bool)

(assert (=> b!5164620 m!6215164))

(declare-fun m!6215166 () Bool)

(assert (=> b!5164620 m!6215166))

(assert (=> b!5164620 m!6215166))

(declare-fun m!6215168 () Bool)

(assert (=> b!5164620 m!6215168))

(declare-fun m!6215170 () Bool)

(assert (=> b!5164625 m!6215170))

(push 1)

(assert (not b!5164624))

(assert (not b!5164625))

(assert (not b!5164620))

(assert (not setNonEmpty!31549))

(assert (not b!5164621))

(assert (not setNonEmpty!31550))

(assert (not b!5164626))

(assert tp_is_empty!38373)

(assert (not b!5164623))

(assert (not b!5164622))

(assert (not start!546382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1666364 () Bool)

(declare-fun lambda!257750 () Int)

(declare-fun forall!14101 (List!60076 Int) Bool)

(assert (=> d!1666364 (= (inv!79648 setElem!31550) (forall!14101 (exprs!4444 setElem!31550) lambda!257750))))

(declare-fun bs!1202764 () Bool)

(assert (= bs!1202764 d!1666364))

(declare-fun m!6215264 () Bool)

(assert (=> bs!1202764 m!6215264))

(assert (=> setNonEmpty!31549 d!1666364))

(declare-fun d!1666380 () Bool)

(assert (=> d!1666380 (= (isEmpty!32098 (_1!35140 (findLongestMatchInnerZipper!218 z!4581 testedP!294 lt!2123876 lt!2123875 input!5817 (size!39596 input!5817)))) (is-Nil!59951 (_1!35140 (findLongestMatchInnerZipper!218 z!4581 testedP!294 lt!2123876 lt!2123875 input!5817 (size!39596 input!5817)))))))

(assert (=> b!5164620 d!1666380))

(declare-fun d!1666382 () Bool)

(declare-fun lt!2123973 () List!60075)

(assert (=> d!1666382 (= (++!13100 testedP!294 lt!2123973) input!5817)))

(declare-fun e!3218068 () List!60075)

(assert (=> d!1666382 (= lt!2123973 e!3218068)))

(declare-fun c!888601 () Bool)

(assert (=> d!1666382 (= c!888601 (is-Cons!59951 testedP!294))))

(assert (=> d!1666382 (>= (size!39596 input!5817) (size!39596 testedP!294))))

(assert (=> d!1666382 (= (getSuffix!3343 input!5817 testedP!294) lt!2123973)))

(declare-fun b!5164720 () Bool)

(declare-fun tail!10117 (List!60075) List!60075)

(assert (=> b!5164720 (= e!3218068 (getSuffix!3343 (tail!10117 input!5817) (t!373228 testedP!294)))))

(declare-fun b!5164721 () Bool)

(assert (=> b!5164721 (= e!3218068 input!5817)))

(assert (= (and d!1666382 c!888601) b!5164720))

(assert (= (and d!1666382 (not c!888601)) b!5164721))

(declare-fun m!6215266 () Bool)

(assert (=> d!1666382 m!6215266))

(assert (=> d!1666382 m!6215166))

(assert (=> d!1666382 m!6215160))

(declare-fun m!6215268 () Bool)

(assert (=> b!5164720 m!6215268))

(assert (=> b!5164720 m!6215268))

(declare-fun m!6215270 () Bool)

(assert (=> b!5164720 m!6215270))

(assert (=> b!5164620 d!1666382))

(declare-fun d!1666384 () Bool)

(declare-fun lt!2123976 () Int)

(assert (=> d!1666384 (>= lt!2123976 0)))

(declare-fun e!3218071 () Int)

(assert (=> d!1666384 (= lt!2123976 e!3218071)))

(declare-fun c!888604 () Bool)

(assert (=> d!1666384 (= c!888604 (is-Nil!59951 testedP!294))))

(assert (=> d!1666384 (= (size!39596 testedP!294) lt!2123976)))

(declare-fun b!5164726 () Bool)

(assert (=> b!5164726 (= e!3218071 0)))

(declare-fun b!5164727 () Bool)

(assert (=> b!5164727 (= e!3218071 (+ 1 (size!39596 (t!373228 testedP!294))))))

(assert (= (and d!1666384 c!888604) b!5164726))

(assert (= (and d!1666384 (not c!888604)) b!5164727))

(declare-fun m!6215272 () Bool)

(assert (=> b!5164727 m!6215272))

(assert (=> b!5164620 d!1666384))

(declare-fun d!1666386 () Bool)

(declare-fun lt!2123977 () Int)

(assert (=> d!1666386 (>= lt!2123977 0)))

(declare-fun e!3218072 () Int)

(assert (=> d!1666386 (= lt!2123977 e!3218072)))

(declare-fun c!888605 () Bool)

(assert (=> d!1666386 (= c!888605 (is-Nil!59951 input!5817))))

(assert (=> d!1666386 (= (size!39596 input!5817) lt!2123977)))

(declare-fun b!5164728 () Bool)

(assert (=> b!5164728 (= e!3218072 0)))

(declare-fun b!5164729 () Bool)

(assert (=> b!5164729 (= e!3218072 (+ 1 (size!39596 (t!373228 input!5817))))))

(assert (= (and d!1666386 c!888605) b!5164728))

(assert (= (and d!1666386 (not c!888605)) b!5164729))

(declare-fun m!6215274 () Bool)

(assert (=> b!5164729 m!6215274))

(assert (=> b!5164620 d!1666386))

(declare-fun b!5164758 () Bool)

(declare-fun e!3218093 () tuple2!63674)

(declare-fun lt!2124045 () tuple2!63674)

(assert (=> b!5164758 (= e!3218093 lt!2124045)))

(declare-fun b!5164759 () Bool)

(declare-fun e!3218095 () tuple2!63674)

(assert (=> b!5164759 (= e!3218095 (tuple2!63675 Nil!59951 input!5817))))

(declare-fun bm!362271 () Bool)

(declare-datatypes ((Unit!151392 0))(
  ( (Unit!151393) )
))
(declare-fun call!362283 () Unit!151392)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1360 (List!60075 List!60075 List!60075) Unit!151392)

(assert (=> bm!362271 (= call!362283 (lemmaIsPrefixSameLengthThenSameList!1360 input!5817 testedP!294 input!5817))))

(declare-fun bm!362272 () Bool)

(declare-fun call!362280 () Bool)

(assert (=> bm!362272 (= call!362280 (isPrefix!5693 input!5817 input!5817))))

(declare-fun b!5164760 () Bool)

(declare-fun e!3218089 () Bool)

(declare-fun lt!2124036 () tuple2!63674)

(assert (=> b!5164760 (= e!3218089 (>= (size!39596 (_1!35140 lt!2124036)) (size!39596 testedP!294)))))

(declare-fun call!362282 () (Set Context!7888))

(declare-fun lt!2124042 () List!60075)

(declare-fun bm!362273 () Bool)

(declare-fun call!362281 () tuple2!63674)

(declare-fun call!362277 () List!60075)

(assert (=> bm!362273 (= call!362281 (findLongestMatchInnerZipper!218 call!362282 lt!2124042 (+ lt!2123876 1) call!362277 input!5817 (size!39596 input!5817)))))

(declare-fun b!5164761 () Bool)

(declare-fun e!3218092 () tuple2!63674)

(assert (=> b!5164761 (= e!3218092 e!3218093)))

(assert (=> b!5164761 (= lt!2124045 call!362281)))

(declare-fun c!888623 () Bool)

(assert (=> b!5164761 (= c!888623 (isEmpty!32098 (_1!35140 lt!2124045)))))

(declare-fun bm!362274 () Bool)

(assert (=> bm!362274 (= call!362277 (tail!10117 lt!2123875))))

(declare-fun b!5164762 () Bool)

(declare-fun e!3218091 () Unit!151392)

(declare-fun Unit!151394 () Unit!151392)

(assert (=> b!5164762 (= e!3218091 Unit!151394)))

(declare-fun bm!362275 () Bool)

(declare-fun call!362276 () C!29390)

(declare-fun head!11006 (List!60075) C!29390)

(assert (=> bm!362275 (= call!362276 (head!11006 lt!2123875))))

(declare-fun b!5164763 () Bool)

(declare-fun Unit!151395 () Unit!151392)

(assert (=> b!5164763 (= e!3218091 Unit!151395)))

(declare-fun lt!2124049 () Unit!151392)

(declare-fun call!362278 () Unit!151392)

(assert (=> b!5164763 (= lt!2124049 call!362278)))

(assert (=> b!5164763 call!362280))

(declare-fun lt!2124039 () Unit!151392)

(assert (=> b!5164763 (= lt!2124039 lt!2124049)))

(declare-fun lt!2124031 () Unit!151392)

(assert (=> b!5164763 (= lt!2124031 call!362283)))

(assert (=> b!5164763 (= input!5817 testedP!294)))

(declare-fun lt!2124046 () Unit!151392)

(assert (=> b!5164763 (= lt!2124046 lt!2124031)))

(assert (=> b!5164763 false))

(declare-fun b!5164764 () Bool)

(assert (=> b!5164764 (= e!3218093 (tuple2!63675 testedP!294 lt!2123875))))

(declare-fun bm!362276 () Bool)

(declare-fun lemmaIsPrefixRefl!3716 (List!60075 List!60075) Unit!151392)

(assert (=> bm!362276 (= call!362278 (lemmaIsPrefixRefl!3716 input!5817 input!5817))))

(declare-fun b!5164765 () Bool)

(declare-fun c!888622 () Bool)

(declare-fun call!362279 () Bool)

(assert (=> b!5164765 (= c!888622 call!362279)))

(declare-fun lt!2124038 () Unit!151392)

(declare-fun lt!2124050 () Unit!151392)

(assert (=> b!5164765 (= lt!2124038 lt!2124050)))

(assert (=> b!5164765 (= input!5817 testedP!294)))

(assert (=> b!5164765 (= lt!2124050 call!362283)))

(declare-fun lt!2124033 () Unit!151392)

(declare-fun lt!2124052 () Unit!151392)

(assert (=> b!5164765 (= lt!2124033 lt!2124052)))

(assert (=> b!5164765 call!362280))

(assert (=> b!5164765 (= lt!2124052 call!362278)))

(declare-fun e!3218094 () tuple2!63674)

(declare-fun e!3218096 () tuple2!63674)

(assert (=> b!5164765 (= e!3218094 e!3218096)))

(declare-fun b!5164766 () Bool)

(assert (=> b!5164766 (= e!3218096 (tuple2!63675 testedP!294 Nil!59951))))

(declare-fun bm!362277 () Bool)

(declare-fun derivationStepZipper!940 ((Set Context!7888) C!29390) (Set Context!7888))

(assert (=> bm!362277 (= call!362282 (derivationStepZipper!940 z!4581 call!362276))))

(declare-fun d!1666388 () Bool)

(declare-fun e!3218090 () Bool)

(assert (=> d!1666388 e!3218090))

(declare-fun res!2195596 () Bool)

(assert (=> d!1666388 (=> (not res!2195596) (not e!3218090))))

(assert (=> d!1666388 (= res!2195596 (= (++!13100 (_1!35140 lt!2124036) (_2!35140 lt!2124036)) input!5817))))

(assert (=> d!1666388 (= lt!2124036 e!3218095)))

(declare-fun c!888619 () Bool)

(declare-fun lostCauseZipper!1307 ((Set Context!7888)) Bool)

(assert (=> d!1666388 (= c!888619 (lostCauseZipper!1307 z!4581))))

(declare-fun lt!2124037 () Unit!151392)

(declare-fun Unit!151396 () Unit!151392)

(assert (=> d!1666388 (= lt!2124037 Unit!151396)))

(assert (=> d!1666388 (= (getSuffix!3343 input!5817 testedP!294) lt!2123875)))

(declare-fun lt!2124051 () Unit!151392)

(declare-fun lt!2124041 () Unit!151392)

(assert (=> d!1666388 (= lt!2124051 lt!2124041)))

(declare-fun lt!2124053 () List!60075)

(assert (=> d!1666388 (= lt!2123875 lt!2124053)))

(declare-fun lemmaSamePrefixThenSameSuffix!2674 (List!60075 List!60075 List!60075 List!60075 List!60075) Unit!151392)

(assert (=> d!1666388 (= lt!2124041 (lemmaSamePrefixThenSameSuffix!2674 testedP!294 lt!2123875 testedP!294 lt!2124053 input!5817))))

(assert (=> d!1666388 (= lt!2124053 (getSuffix!3343 input!5817 testedP!294))))

(declare-fun lt!2124044 () Unit!151392)

(declare-fun lt!2124048 () Unit!151392)

(assert (=> d!1666388 (= lt!2124044 lt!2124048)))

(assert (=> d!1666388 (isPrefix!5693 testedP!294 (++!13100 testedP!294 lt!2123875))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3568 (List!60075 List!60075) Unit!151392)

(assert (=> d!1666388 (= lt!2124048 (lemmaConcatTwoListThenFirstIsPrefix!3568 testedP!294 lt!2123875))))

(assert (=> d!1666388 (= (++!13100 testedP!294 lt!2123875) input!5817)))

(assert (=> d!1666388 (= (findLongestMatchInnerZipper!218 z!4581 testedP!294 lt!2123876 lt!2123875 input!5817 (size!39596 input!5817)) lt!2124036)))

(declare-fun b!5164767 () Bool)

(assert (=> b!5164767 (= e!3218090 e!3218089)))

(declare-fun res!2195595 () Bool)

(assert (=> b!5164767 (=> res!2195595 e!3218089)))

(assert (=> b!5164767 (= res!2195595 (isEmpty!32098 (_1!35140 lt!2124036)))))

(declare-fun b!5164768 () Bool)

(assert (=> b!5164768 (= e!3218095 e!3218094)))

(declare-fun c!888621 () Bool)

(assert (=> b!5164768 (= c!888621 (= lt!2123876 (size!39596 input!5817)))))

(declare-fun b!5164769 () Bool)

(assert (=> b!5164769 (= e!3218092 call!362281)))

(declare-fun b!5164770 () Bool)

(declare-fun c!888620 () Bool)

(assert (=> b!5164770 (= c!888620 call!362279)))

(declare-fun lt!2124032 () Unit!151392)

(declare-fun lt!2124030 () Unit!151392)

(assert (=> b!5164770 (= lt!2124032 lt!2124030)))

(declare-fun lt!2124035 () List!60075)

(declare-fun lt!2124047 () C!29390)

(assert (=> b!5164770 (= (++!13100 (++!13100 testedP!294 (Cons!59951 lt!2124047 Nil!59951)) lt!2124035) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1555 (List!60075 C!29390 List!60075 List!60075) Unit!151392)

(assert (=> b!5164770 (= lt!2124030 (lemmaMoveElementToOtherListKeepsConcatEq!1555 testedP!294 lt!2124047 lt!2124035 input!5817))))

(assert (=> b!5164770 (= lt!2124035 (tail!10117 lt!2123875))))

(assert (=> b!5164770 (= lt!2124047 (head!11006 lt!2123875))))

(declare-fun lt!2124043 () Unit!151392)

(declare-fun lt!2124054 () Unit!151392)

(assert (=> b!5164770 (= lt!2124043 lt!2124054)))

(assert (=> b!5164770 (isPrefix!5693 (++!13100 testedP!294 (Cons!59951 (head!11006 (getSuffix!3343 input!5817 testedP!294)) Nil!59951)) input!5817)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1030 (List!60075 List!60075) Unit!151392)

(assert (=> b!5164770 (= lt!2124054 (lemmaAddHeadSuffixToPrefixStillPrefix!1030 testedP!294 input!5817))))

(assert (=> b!5164770 (= lt!2124042 (++!13100 testedP!294 (Cons!59951 (head!11006 lt!2123875) Nil!59951)))))

(declare-fun lt!2124055 () Unit!151392)

(assert (=> b!5164770 (= lt!2124055 e!3218091)))

(declare-fun c!888618 () Bool)

(assert (=> b!5164770 (= c!888618 (= (size!39596 testedP!294) (size!39596 input!5817)))))

(declare-fun lt!2124034 () Unit!151392)

(declare-fun lt!2124040 () Unit!151392)

(assert (=> b!5164770 (= lt!2124034 lt!2124040)))

(assert (=> b!5164770 (<= (size!39596 testedP!294) (size!39596 input!5817))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!870 (List!60075 List!60075) Unit!151392)

(assert (=> b!5164770 (= lt!2124040 (lemmaIsPrefixThenSmallerEqSize!870 testedP!294 input!5817))))

(assert (=> b!5164770 (= e!3218094 e!3218092)))

(declare-fun b!5164771 () Bool)

(assert (=> b!5164771 (= e!3218096 (tuple2!63675 Nil!59951 input!5817))))

(declare-fun bm!362278 () Bool)

(declare-fun nullableZipper!1118 ((Set Context!7888)) Bool)

(assert (=> bm!362278 (= call!362279 (nullableZipper!1118 z!4581))))

(assert (= (and d!1666388 c!888619) b!5164759))

(assert (= (and d!1666388 (not c!888619)) b!5164768))

(assert (= (and b!5164768 c!888621) b!5164765))

(assert (= (and b!5164768 (not c!888621)) b!5164770))

(assert (= (and b!5164765 c!888622) b!5164766))

(assert (= (and b!5164765 (not c!888622)) b!5164771))

(assert (= (and b!5164770 c!888618) b!5164763))

(assert (= (and b!5164770 (not c!888618)) b!5164762))

(assert (= (and b!5164770 c!888620) b!5164761))

(assert (= (and b!5164770 (not c!888620)) b!5164769))

(assert (= (and b!5164761 c!888623) b!5164764))

(assert (= (and b!5164761 (not c!888623)) b!5164758))

(assert (= (or b!5164761 b!5164769) bm!362274))

(assert (= (or b!5164761 b!5164769) bm!362275))

(assert (= (or b!5164761 b!5164769) bm!362277))

(assert (= (or b!5164761 b!5164769) bm!362273))

(assert (= (or b!5164765 b!5164763) bm!362276))

(assert (= (or b!5164765 b!5164770) bm!362278))

(assert (= (or b!5164765 b!5164763) bm!362272))

(assert (= (or b!5164765 b!5164763) bm!362271))

(assert (= (and d!1666388 res!2195596) b!5164767))

(assert (= (and b!5164767 (not res!2195595)) b!5164760))

(declare-fun m!6215276 () Bool)

(assert (=> bm!362276 m!6215276))

(declare-fun m!6215278 () Bool)

(assert (=> b!5164770 m!6215278))

(assert (=> b!5164770 m!6215164))

(declare-fun m!6215280 () Bool)

(assert (=> b!5164770 m!6215280))

(declare-fun m!6215282 () Bool)

(assert (=> b!5164770 m!6215282))

(declare-fun m!6215284 () Bool)

(assert (=> b!5164770 m!6215284))

(declare-fun m!6215286 () Bool)

(assert (=> b!5164770 m!6215286))

(declare-fun m!6215288 () Bool)

(assert (=> b!5164770 m!6215288))

(assert (=> b!5164770 m!6215164))

(assert (=> b!5164770 m!6215160))

(assert (=> b!5164770 m!6215282))

(declare-fun m!6215290 () Bool)

(assert (=> b!5164770 m!6215290))

(declare-fun m!6215292 () Bool)

(assert (=> b!5164770 m!6215292))

(declare-fun m!6215294 () Bool)

(assert (=> b!5164770 m!6215294))

(assert (=> b!5164770 m!6215294))

(declare-fun m!6215296 () Bool)

(assert (=> b!5164770 m!6215296))

(declare-fun m!6215298 () Bool)

(assert (=> b!5164770 m!6215298))

(assert (=> b!5164770 m!6215166))

(assert (=> bm!362274 m!6215288))

(assert (=> bm!362273 m!6215166))

(declare-fun m!6215300 () Bool)

(assert (=> bm!362273 m!6215300))

(declare-fun m!6215302 () Bool)

(assert (=> b!5164767 m!6215302))

(declare-fun m!6215304 () Bool)

(assert (=> b!5164761 m!6215304))

(declare-fun m!6215306 () Bool)

(assert (=> bm!362272 m!6215306))

(declare-fun m!6215308 () Bool)

(assert (=> bm!362277 m!6215308))

(declare-fun m!6215310 () Bool)

(assert (=> b!5164760 m!6215310))

(assert (=> b!5164760 m!6215160))

(declare-fun m!6215312 () Bool)

(assert (=> bm!362278 m!6215312))

(declare-fun m!6215314 () Bool)

(assert (=> bm!362271 m!6215314))

(assert (=> bm!362275 m!6215292))

(declare-fun m!6215316 () Bool)

(assert (=> d!1666388 m!6215316))

(assert (=> d!1666388 m!6215154))

(declare-fun m!6215318 () Bool)

(assert (=> d!1666388 m!6215318))

(assert (=> d!1666388 m!6215154))

(declare-fun m!6215320 () Bool)

(assert (=> d!1666388 m!6215320))

(assert (=> d!1666388 m!6215164))

(declare-fun m!6215322 () Bool)

(assert (=> d!1666388 m!6215322))

(declare-fun m!6215324 () Bool)

(assert (=> d!1666388 m!6215324))

(assert (=> b!5164620 d!1666388))

(declare-fun b!5164782 () Bool)

(declare-fun e!3218104 () Bool)

(assert (=> b!5164782 (= e!3218104 (isPrefix!5693 (tail!10117 testedP!294) (tail!10117 input!5817)))))

(declare-fun b!5164783 () Bool)

(declare-fun e!3218103 () Bool)

(assert (=> b!5164783 (= e!3218103 (>= (size!39596 input!5817) (size!39596 testedP!294)))))

(declare-fun b!5164780 () Bool)

(declare-fun e!3218105 () Bool)

(assert (=> b!5164780 (= e!3218105 e!3218104)))

(declare-fun res!2195605 () Bool)

(assert (=> b!5164780 (=> (not res!2195605) (not e!3218104))))

(assert (=> b!5164780 (= res!2195605 (not (is-Nil!59951 input!5817)))))

(declare-fun b!5164781 () Bool)

(declare-fun res!2195606 () Bool)

(assert (=> b!5164781 (=> (not res!2195606) (not e!3218104))))

(assert (=> b!5164781 (= res!2195606 (= (head!11006 testedP!294) (head!11006 input!5817)))))

(declare-fun d!1666390 () Bool)

(assert (=> d!1666390 e!3218103))

(declare-fun res!2195608 () Bool)

(assert (=> d!1666390 (=> res!2195608 e!3218103)))

(declare-fun lt!2124058 () Bool)

(assert (=> d!1666390 (= res!2195608 (not lt!2124058))))

(assert (=> d!1666390 (= lt!2124058 e!3218105)))

(declare-fun res!2195607 () Bool)

(assert (=> d!1666390 (=> res!2195607 e!3218105)))

(assert (=> d!1666390 (= res!2195607 (is-Nil!59951 testedP!294))))

(assert (=> d!1666390 (= (isPrefix!5693 testedP!294 input!5817) lt!2124058)))

(assert (= (and d!1666390 (not res!2195607)) b!5164780))

(assert (= (and b!5164780 res!2195605) b!5164781))

(assert (= (and b!5164781 res!2195606) b!5164782))

(assert (= (and d!1666390 (not res!2195608)) b!5164783))

(declare-fun m!6215326 () Bool)

(assert (=> b!5164782 m!6215326))

(assert (=> b!5164782 m!6215268))

(assert (=> b!5164782 m!6215326))

(assert (=> b!5164782 m!6215268))

(declare-fun m!6215328 () Bool)

(assert (=> b!5164782 m!6215328))

(assert (=> b!5164783 m!6215166))

(assert (=> b!5164783 m!6215160))

(declare-fun m!6215330 () Bool)

(assert (=> b!5164781 m!6215330))

(declare-fun m!6215332 () Bool)

(assert (=> b!5164781 m!6215332))

(assert (=> start!546382 d!1666390))

(declare-fun bs!1202765 () Bool)

(declare-fun d!1666392 () Bool)

(assert (= bs!1202765 (and d!1666392 d!1666364)))

(declare-fun lambda!257751 () Int)

(assert (=> bs!1202765 (= lambda!257751 lambda!257750)))

(assert (=> d!1666392 (= (inv!79648 setElem!31549) (forall!14101 (exprs!4444 setElem!31549) lambda!257751))))

(declare-fun bs!1202766 () Bool)

(assert (= bs!1202766 d!1666392))

(declare-fun m!6215334 () Bool)

(assert (=> bs!1202766 m!6215334))

(assert (=> setNonEmpty!31550 d!1666392))

(declare-fun b!5164792 () Bool)

(declare-fun e!3218111 () List!60075)

(assert (=> b!5164792 (= e!3218111 lt!2123875)))

(declare-fun d!1666394 () Bool)

(declare-fun e!3218110 () Bool)

(assert (=> d!1666394 e!3218110))

(declare-fun res!2195613 () Bool)

(assert (=> d!1666394 (=> (not res!2195613) (not e!3218110))))

(declare-fun lt!2124061 () List!60075)

(declare-fun content!10624 (List!60075) (Set C!29390))

(assert (=> d!1666394 (= res!2195613 (= (content!10624 lt!2124061) (set.union (content!10624 testedP!294) (content!10624 lt!2123875))))))

(assert (=> d!1666394 (= lt!2124061 e!3218111)))

(declare-fun c!888626 () Bool)

(assert (=> d!1666394 (= c!888626 (is-Nil!59951 testedP!294))))

(assert (=> d!1666394 (= (++!13100 testedP!294 lt!2123875) lt!2124061)))

(declare-fun b!5164795 () Bool)

(assert (=> b!5164795 (= e!3218110 (or (not (= lt!2123875 Nil!59951)) (= lt!2124061 testedP!294)))))

(declare-fun b!5164794 () Bool)

(declare-fun res!2195614 () Bool)

(assert (=> b!5164794 (=> (not res!2195614) (not e!3218110))))

(assert (=> b!5164794 (= res!2195614 (= (size!39596 lt!2124061) (+ (size!39596 testedP!294) (size!39596 lt!2123875))))))

(declare-fun b!5164793 () Bool)

(assert (=> b!5164793 (= e!3218111 (Cons!59951 (h!66399 testedP!294) (++!13100 (t!373228 testedP!294) lt!2123875)))))

(assert (= (and d!1666394 c!888626) b!5164792))

(assert (= (and d!1666394 (not c!888626)) b!5164793))

(assert (= (and d!1666394 res!2195613) b!5164794))

(assert (= (and b!5164794 res!2195614) b!5164795))

(declare-fun m!6215336 () Bool)

(assert (=> d!1666394 m!6215336))

(declare-fun m!6215338 () Bool)

(assert (=> d!1666394 m!6215338))

(declare-fun m!6215340 () Bool)

(assert (=> d!1666394 m!6215340))

(declare-fun m!6215342 () Bool)

(assert (=> b!5164794 m!6215342))

(assert (=> b!5164794 m!6215160))

(declare-fun m!6215344 () Bool)

(assert (=> b!5164794 m!6215344))

(declare-fun m!6215346 () Bool)

(assert (=> b!5164793 m!6215346))

(assert (=> b!5164626 d!1666394))

(declare-fun d!1666396 () Bool)

(declare-fun c!888629 () Bool)

(assert (=> d!1666396 (= c!888629 (is-Cons!59951 testedP!294))))

(declare-fun e!3218114 () (Set Context!7888))

(assert (=> d!1666396 (= (derivationZipper!183 baseZ!62 testedP!294) e!3218114)))

(declare-fun b!5164800 () Bool)

(assert (=> b!5164800 (= e!3218114 (derivationZipper!183 (derivationStepZipper!940 baseZ!62 (h!66399 testedP!294)) (t!373228 testedP!294)))))

(declare-fun b!5164801 () Bool)

(assert (=> b!5164801 (= e!3218114 baseZ!62)))

(assert (= (and d!1666396 c!888629) b!5164800))

(assert (= (and d!1666396 (not c!888629)) b!5164801))

(declare-fun m!6215348 () Bool)

(assert (=> b!5164800 m!6215348))

(assert (=> b!5164800 m!6215348))

(declare-fun m!6215350 () Bool)

(assert (=> b!5164800 m!6215350))

(assert (=> b!5164625 d!1666396))

(declare-fun b!5164806 () Bool)

(declare-fun e!3218117 () Bool)

(declare-fun tp!1448740 () Bool)

(declare-fun tp!1448741 () Bool)

(assert (=> b!5164806 (= e!3218117 (and tp!1448740 tp!1448741))))

(assert (=> b!5164624 (= tp!1448715 e!3218117)))

(assert (= (and b!5164624 (is-Cons!59952 (exprs!4444 setElem!31549))) b!5164806))

(declare-fun condSetEmpty!31559 () Bool)

(assert (=> setNonEmpty!31549 (= condSetEmpty!31559 (= setRest!31550 (as set.empty (Set Context!7888))))))

(declare-fun setRes!31559 () Bool)

(assert (=> setNonEmpty!31549 (= tp!1448717 setRes!31559)))

(declare-fun setIsEmpty!31559 () Bool)

(assert (=> setIsEmpty!31559 setRes!31559))

(declare-fun setNonEmpty!31559 () Bool)

(declare-fun tp!1448747 () Bool)

(declare-fun e!3218120 () Bool)

(declare-fun setElem!31559 () Context!7888)

(assert (=> setNonEmpty!31559 (= setRes!31559 (and tp!1448747 (inv!79648 setElem!31559) e!3218120))))

(declare-fun setRest!31559 () (Set Context!7888))

(assert (=> setNonEmpty!31559 (= setRest!31550 (set.union (set.insert setElem!31559 (as set.empty (Set Context!7888))) setRest!31559))))

(declare-fun b!5164811 () Bool)

(declare-fun tp!1448746 () Bool)

(assert (=> b!5164811 (= e!3218120 tp!1448746)))

(assert (= (and setNonEmpty!31549 condSetEmpty!31559) setIsEmpty!31559))

(assert (= (and setNonEmpty!31549 (not condSetEmpty!31559)) setNonEmpty!31559))

(assert (= setNonEmpty!31559 b!5164811))

(declare-fun m!6215352 () Bool)

(assert (=> setNonEmpty!31559 m!6215352))

(declare-fun b!5164816 () Bool)

(declare-fun e!3218123 () Bool)

(declare-fun tp!1448750 () Bool)

(assert (=> b!5164816 (= e!3218123 (and tp_is_empty!38373 tp!1448750))))

(assert (=> b!5164621 (= tp!1448713 e!3218123)))

(assert (= (and b!5164621 (is-Cons!59951 (t!373228 testedP!294))) b!5164816))

(declare-fun b!5164817 () Bool)

(declare-fun e!3218124 () Bool)

(declare-fun tp!1448751 () Bool)

(assert (=> b!5164817 (= e!3218124 (and tp_is_empty!38373 tp!1448751))))

(assert (=> b!5164622 (= tp!1448716 e!3218124)))

(assert (= (and b!5164622 (is-Cons!59951 (t!373228 input!5817))) b!5164817))

(declare-fun condSetEmpty!31560 () Bool)

(assert (=> setNonEmpty!31550 (= condSetEmpty!31560 (= setRest!31549 (as set.empty (Set Context!7888))))))

(declare-fun setRes!31560 () Bool)

(assert (=> setNonEmpty!31550 (= tp!1448714 setRes!31560)))

(declare-fun setIsEmpty!31560 () Bool)

(assert (=> setIsEmpty!31560 setRes!31560))

(declare-fun tp!1448753 () Bool)

(declare-fun setNonEmpty!31560 () Bool)

(declare-fun e!3218125 () Bool)

(declare-fun setElem!31560 () Context!7888)

(assert (=> setNonEmpty!31560 (= setRes!31560 (and tp!1448753 (inv!79648 setElem!31560) e!3218125))))

(declare-fun setRest!31560 () (Set Context!7888))

(assert (=> setNonEmpty!31560 (= setRest!31549 (set.union (set.insert setElem!31560 (as set.empty (Set Context!7888))) setRest!31560))))

(declare-fun b!5164818 () Bool)

(declare-fun tp!1448752 () Bool)

(assert (=> b!5164818 (= e!3218125 tp!1448752)))

(assert (= (and setNonEmpty!31550 condSetEmpty!31560) setIsEmpty!31560))

(assert (= (and setNonEmpty!31550 (not condSetEmpty!31560)) setNonEmpty!31560))

(assert (= setNonEmpty!31560 b!5164818))

(declare-fun m!6215354 () Bool)

(assert (=> setNonEmpty!31560 m!6215354))

(declare-fun b!5164819 () Bool)

(declare-fun e!3218126 () Bool)

(declare-fun tp!1448754 () Bool)

(declare-fun tp!1448755 () Bool)

(assert (=> b!5164819 (= e!3218126 (and tp!1448754 tp!1448755))))

(assert (=> b!5164623 (= tp!1448712 e!3218126)))

(assert (= (and b!5164623 (is-Cons!59952 (exprs!4444 setElem!31550))) b!5164819))

(push 1)

(assert (not b!5164770))

(assert (not bm!362274))

(assert (not b!5164781))

(assert (not b!5164720))

(assert tp_is_empty!38373)

(assert (not b!5164782))

(assert (not d!1666382))

(assert (not bm!362277))

(assert (not b!5164816))

(assert (not b!5164806))

(assert (not d!1666364))

(assert (not bm!362272))

(assert (not b!5164811))

(assert (not bm!362275))

(assert (not b!5164727))

(assert (not bm!362273))

(assert (not bm!362278))

(assert (not b!5164793))

(assert (not b!5164819))

(assert (not b!5164817))

(assert (not b!5164783))

(assert (not d!1666392))

(assert (not setNonEmpty!31560))

(assert (not d!1666388))

(assert (not b!5164761))

(assert (not b!5164729))

(assert (not b!5164800))

(assert (not setNonEmpty!31559))

(assert (not d!1666394))

(assert (not b!5164794))

(assert (not bm!362271))

(assert (not b!5164818))

(assert (not b!5164767))

(assert (not b!5164760))

(assert (not bm!362276))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

