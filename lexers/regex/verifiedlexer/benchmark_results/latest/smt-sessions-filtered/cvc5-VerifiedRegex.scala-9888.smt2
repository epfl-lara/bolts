; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!518022 () Bool)

(assert start!518022)

(declare-fun b!4931708 () Bool)

(declare-fun res!2104660 () Bool)

(declare-fun e!3081235 () Bool)

(assert (=> b!4931708 (=> res!2104660 e!3081235)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4931708 (= res!2104660 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4931709 () Bool)

(declare-fun e!3081233 () Bool)

(declare-datatypes ((C!27034 0))(
  ( (C!27035 (val!22851 Int)) )
))
(declare-datatypes ((List!56890 0))(
  ( (Nil!56766) (Cons!56766 (h!63214 C!27034) (t!367370 List!56890)) )
))
(declare-fun testedSuffix!70 () List!56890)

(assert (=> b!4931709 (= e!3081233 (not (= testedSuffix!70 Nil!56766)))))

(declare-fun lt!2030328 () List!56890)

(declare-fun head!10539 (List!56890) C!27034)

(declare-fun drop!2233 (List!56890 Int) List!56890)

(declare-fun apply!13681 (List!56890 Int) C!27034)

(assert (=> b!4931709 (= (head!10539 (drop!2233 lt!2030328 testedPSize!70)) (apply!13681 lt!2030328 testedPSize!70))))

(declare-datatypes ((Unit!147401 0))(
  ( (Unit!147402) )
))
(declare-fun lt!2030333 () Unit!147401)

(declare-fun lemmaDropApply!1291 (List!56890 Int) Unit!147401)

(assert (=> b!4931709 (= lt!2030333 (lemmaDropApply!1291 lt!2030328 testedPSize!70))))

(declare-fun testedP!110 () List!56890)

(declare-fun lt!2030334 () List!56890)

(declare-fun lt!2030332 () List!56890)

(assert (=> b!4931709 (not (or (not (= lt!2030334 testedP!110)) (not (= lt!2030332 testedSuffix!70))))))

(declare-fun lt!2030330 () Unit!147401)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!668 (List!56890 List!56890 List!56890 List!56890) Unit!147401)

(assert (=> b!4931709 (= lt!2030330 (lemmaConcatSameAndSameSizesThenSameLists!668 lt!2030334 lt!2030332 testedP!110 testedSuffix!70))))

(declare-fun setIsEmpty!27665 () Bool)

(declare-fun setRes!27665 () Bool)

(assert (=> setIsEmpty!27665 setRes!27665))

(declare-fun b!4931710 () Bool)

(assert (=> b!4931710 (= e!3081235 e!3081233)))

(declare-fun res!2104658 () Bool)

(assert (=> b!4931710 (=> res!2104658 e!3081233)))

(declare-fun ++!12367 (List!56890 List!56890) List!56890)

(assert (=> b!4931710 (= res!2104658 (not (= (++!12367 lt!2030334 lt!2030332) lt!2030328)))))

(declare-datatypes ((IArray!29883 0))(
  ( (IArray!29884 (innerList!14999 List!56890)) )
))
(declare-datatypes ((Conc!14911 0))(
  ( (Node!14911 (left!41401 Conc!14911) (right!41731 Conc!14911) (csize!30052 Int) (cheight!15122 Int)) (Leaf!24800 (xs!18235 IArray!29883) (csize!30053 Int)) (Empty!14911) )
))
(declare-datatypes ((BalanceConc!29252 0))(
  ( (BalanceConc!29253 (c!840443 Conc!14911)) )
))
(declare-datatypes ((tuple2!61232 0))(
  ( (tuple2!61233 (_1!33919 BalanceConc!29252) (_2!33919 BalanceConc!29252)) )
))
(declare-fun lt!2030326 () tuple2!61232)

(declare-fun list!18011 (BalanceConc!29252) List!56890)

(assert (=> b!4931710 (= lt!2030332 (list!18011 (_2!33919 lt!2030326)))))

(assert (=> b!4931710 (= lt!2030334 (list!18011 (_1!33919 lt!2030326)))))

(declare-fun totalInput!685 () BalanceConc!29252)

(declare-fun splitAt!292 (BalanceConc!29252 Int) tuple2!61232)

(assert (=> b!4931710 (= lt!2030326 (splitAt!292 totalInput!685 testedPSize!70))))

(declare-fun b!4931711 () Bool)

(declare-fun e!3081236 () Bool)

(declare-fun tp_is_empty!35981 () Bool)

(declare-fun tp!1384555 () Bool)

(assert (=> b!4931711 (= e!3081236 (and tp_is_empty!35981 tp!1384555))))

(declare-fun res!2104657 () Bool)

(declare-fun e!3081229 () Bool)

(assert (=> start!518022 (=> (not res!2104657) (not e!3081229))))

(declare-fun lt!2030327 () List!56890)

(assert (=> start!518022 (= res!2104657 (= lt!2030327 lt!2030328))))

(assert (=> start!518022 (= lt!2030328 (list!18011 totalInput!685))))

(assert (=> start!518022 (= lt!2030327 (++!12367 testedP!110 testedSuffix!70))))

(assert (=> start!518022 e!3081229))

(assert (=> start!518022 e!3081236))

(declare-fun condSetEmpty!27665 () Bool)

(declare-datatypes ((Regex!13402 0))(
  ( (ElementMatch!13402 (c!840444 C!27034)) (Concat!21975 (regOne!27316 Regex!13402) (regTwo!27316 Regex!13402)) (EmptyExpr!13402) (Star!13402 (reg!13731 Regex!13402)) (EmptyLang!13402) (Union!13402 (regOne!27317 Regex!13402) (regTwo!27317 Regex!13402)) )
))
(declare-datatypes ((List!56891 0))(
  ( (Nil!56767) (Cons!56767 (h!63215 Regex!13402) (t!367371 List!56891)) )
))
(declare-datatypes ((Context!6088 0))(
  ( (Context!6089 (exprs!3544 List!56891)) )
))
(declare-fun z!3568 () (Set Context!6088))

(assert (=> start!518022 (= condSetEmpty!27665 (= z!3568 (as set.empty (Set Context!6088))))))

(assert (=> start!518022 setRes!27665))

(assert (=> start!518022 true))

(declare-fun e!3081230 () Bool)

(declare-fun inv!73686 (BalanceConc!29252) Bool)

(assert (=> start!518022 (and (inv!73686 totalInput!685) e!3081230)))

(declare-fun e!3081231 () Bool)

(assert (=> start!518022 e!3081231))

(declare-fun b!4931712 () Bool)

(declare-fun e!3081234 () Bool)

(assert (=> b!4931712 (= e!3081234 e!3081235)))

(declare-fun res!2104656 () Bool)

(assert (=> b!4931712 (=> res!2104656 e!3081235)))

(declare-fun lostCauseZipper!720 ((Set Context!6088)) Bool)

(assert (=> b!4931712 (= res!2104656 (lostCauseZipper!720 z!3568))))

(declare-fun lt!2030335 () List!56890)

(assert (=> b!4931712 (and (= testedSuffix!70 lt!2030335) (= lt!2030335 testedSuffix!70))))

(declare-fun lt!2030331 () Unit!147401)

(declare-fun lemmaSamePrefixThenSameSuffix!2398 (List!56890 List!56890 List!56890 List!56890 List!56890) Unit!147401)

(assert (=> b!4931712 (= lt!2030331 (lemmaSamePrefixThenSameSuffix!2398 testedP!110 testedSuffix!70 testedP!110 lt!2030335 lt!2030328))))

(declare-fun getSuffix!2984 (List!56890 List!56890) List!56890)

(assert (=> b!4931712 (= lt!2030335 (getSuffix!2984 lt!2030328 testedP!110))))

(declare-fun b!4931713 () Bool)

(assert (=> b!4931713 (= e!3081229 (not e!3081234))))

(declare-fun res!2104653 () Bool)

(assert (=> b!4931713 (=> res!2104653 e!3081234)))

(declare-fun isPrefix!5000 (List!56890 List!56890) Bool)

(assert (=> b!4931713 (= res!2104653 (not (isPrefix!5000 testedP!110 lt!2030328)))))

(assert (=> b!4931713 (isPrefix!5000 testedP!110 lt!2030327)))

(declare-fun lt!2030329 () Unit!147401)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3224 (List!56890 List!56890) Unit!147401)

(assert (=> b!4931713 (= lt!2030329 (lemmaConcatTwoListThenFirstIsPrefix!3224 testedP!110 testedSuffix!70))))

(declare-fun e!3081232 () Bool)

(declare-fun setNonEmpty!27665 () Bool)

(declare-fun setElem!27665 () Context!6088)

(declare-fun tp!1384554 () Bool)

(declare-fun inv!73687 (Context!6088) Bool)

(assert (=> setNonEmpty!27665 (= setRes!27665 (and tp!1384554 (inv!73687 setElem!27665) e!3081232))))

(declare-fun setRest!27665 () (Set Context!6088))

(assert (=> setNonEmpty!27665 (= z!3568 (set.union (set.insert setElem!27665 (as set.empty (Set Context!6088))) setRest!27665))))

(declare-fun b!4931714 () Bool)

(declare-fun tp!1384556 () Bool)

(assert (=> b!4931714 (= e!3081231 (and tp_is_empty!35981 tp!1384556))))

(declare-fun b!4931715 () Bool)

(declare-fun res!2104654 () Bool)

(assert (=> b!4931715 (=> (not res!2104654) (not e!3081229))))

(declare-fun size!37576 (List!56890) Int)

(assert (=> b!4931715 (= res!2104654 (= testedPSize!70 (size!37576 testedP!110)))))

(declare-fun b!4931716 () Bool)

(declare-fun res!2104655 () Bool)

(assert (=> b!4931716 (=> res!2104655 e!3081233)))

(declare-fun size!37577 (BalanceConc!29252) Int)

(assert (=> b!4931716 (= res!2104655 (not (= (size!37577 (_1!33919 lt!2030326)) testedPSize!70)))))

(declare-fun b!4931717 () Bool)

(declare-fun res!2104659 () Bool)

(assert (=> b!4931717 (=> (not res!2104659) (not e!3081229))))

(assert (=> b!4931717 (= res!2104659 (= totalInputSize!132 (size!37577 totalInput!685)))))

(declare-fun b!4931718 () Bool)

(declare-fun tp!1384558 () Bool)

(assert (=> b!4931718 (= e!3081232 tp!1384558)))

(declare-fun b!4931719 () Bool)

(declare-fun tp!1384557 () Bool)

(declare-fun inv!73688 (Conc!14911) Bool)

(assert (=> b!4931719 (= e!3081230 (and (inv!73688 (c!840443 totalInput!685)) tp!1384557))))

(assert (= (and start!518022 res!2104657) b!4931715))

(assert (= (and b!4931715 res!2104654) b!4931717))

(assert (= (and b!4931717 res!2104659) b!4931713))

(assert (= (and b!4931713 (not res!2104653)) b!4931712))

(assert (= (and b!4931712 (not res!2104656)) b!4931708))

(assert (= (and b!4931708 (not res!2104660)) b!4931710))

(assert (= (and b!4931710 (not res!2104658)) b!4931716))

(assert (= (and b!4931716 (not res!2104655)) b!4931709))

(assert (= (and start!518022 (is-Cons!56766 testedP!110)) b!4931711))

(assert (= (and start!518022 condSetEmpty!27665) setIsEmpty!27665))

(assert (= (and start!518022 (not condSetEmpty!27665)) setNonEmpty!27665))

(assert (= setNonEmpty!27665 b!4931718))

(assert (= start!518022 b!4931719))

(assert (= (and start!518022 (is-Cons!56766 testedSuffix!70)) b!4931714))

(declare-fun m!5951784 () Bool)

(assert (=> b!4931712 m!5951784))

(declare-fun m!5951786 () Bool)

(assert (=> b!4931712 m!5951786))

(declare-fun m!5951788 () Bool)

(assert (=> b!4931712 m!5951788))

(declare-fun m!5951790 () Bool)

(assert (=> b!4931710 m!5951790))

(declare-fun m!5951792 () Bool)

(assert (=> b!4931710 m!5951792))

(declare-fun m!5951794 () Bool)

(assert (=> b!4931710 m!5951794))

(declare-fun m!5951796 () Bool)

(assert (=> b!4931710 m!5951796))

(declare-fun m!5951798 () Bool)

(assert (=> b!4931709 m!5951798))

(declare-fun m!5951800 () Bool)

(assert (=> b!4931709 m!5951800))

(declare-fun m!5951802 () Bool)

(assert (=> b!4931709 m!5951802))

(declare-fun m!5951804 () Bool)

(assert (=> b!4931709 m!5951804))

(assert (=> b!4931709 m!5951802))

(declare-fun m!5951806 () Bool)

(assert (=> b!4931709 m!5951806))

(declare-fun m!5951808 () Bool)

(assert (=> b!4931716 m!5951808))

(declare-fun m!5951810 () Bool)

(assert (=> b!4931719 m!5951810))

(declare-fun m!5951812 () Bool)

(assert (=> b!4931717 m!5951812))

(declare-fun m!5951814 () Bool)

(assert (=> start!518022 m!5951814))

(declare-fun m!5951816 () Bool)

(assert (=> start!518022 m!5951816))

(declare-fun m!5951818 () Bool)

(assert (=> start!518022 m!5951818))

(declare-fun m!5951820 () Bool)

(assert (=> b!4931713 m!5951820))

(declare-fun m!5951822 () Bool)

(assert (=> b!4931713 m!5951822))

(declare-fun m!5951824 () Bool)

(assert (=> b!4931713 m!5951824))

(declare-fun m!5951826 () Bool)

(assert (=> b!4931715 m!5951826))

(declare-fun m!5951828 () Bool)

(assert (=> setNonEmpty!27665 m!5951828))

(push 1)

(assert (not b!4931718))

(assert (not b!4931714))

(assert (not b!4931713))

(assert (not b!4931715))

(assert (not b!4931716))

(assert (not setNonEmpty!27665))

(assert (not b!4931710))

(assert (not start!518022))

(assert (not b!4931711))

(assert (not b!4931709))

(assert tp_is_empty!35981)

(assert (not b!4931712))

(assert (not b!4931719))

(assert (not b!4931717))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1587561 () Bool)

(declare-fun lt!2030368 () Int)

(assert (=> d!1587561 (>= lt!2030368 0)))

(declare-fun e!3081263 () Int)

(assert (=> d!1587561 (= lt!2030368 e!3081263)))

(declare-fun c!840449 () Bool)

(assert (=> d!1587561 (= c!840449 (is-Nil!56766 testedP!110))))

(assert (=> d!1587561 (= (size!37576 testedP!110) lt!2030368)))

(declare-fun b!4931760 () Bool)

(assert (=> b!4931760 (= e!3081263 0)))

(declare-fun b!4931761 () Bool)

(assert (=> b!4931761 (= e!3081263 (+ 1 (size!37576 (t!367370 testedP!110))))))

(assert (= (and d!1587561 c!840449) b!4931760))

(assert (= (and d!1587561 (not c!840449)) b!4931761))

(declare-fun m!5951876 () Bool)

(assert (=> b!4931761 m!5951876))

(assert (=> b!4931715 d!1587561))

(declare-fun d!1587565 () Bool)

(declare-fun list!18013 (Conc!14911) List!56890)

(assert (=> d!1587565 (= (list!18011 totalInput!685) (list!18013 (c!840443 totalInput!685)))))

(declare-fun bs!1180359 () Bool)

(assert (= bs!1180359 d!1587565))

(declare-fun m!5951878 () Bool)

(assert (=> bs!1180359 m!5951878))

(assert (=> start!518022 d!1587565))

(declare-fun b!4931772 () Bool)

(declare-fun res!2104690 () Bool)

(declare-fun e!3081269 () Bool)

(assert (=> b!4931772 (=> (not res!2104690) (not e!3081269))))

(declare-fun lt!2030371 () List!56890)

(assert (=> b!4931772 (= res!2104690 (= (size!37576 lt!2030371) (+ (size!37576 testedP!110) (size!37576 testedSuffix!70))))))

(declare-fun b!4931770 () Bool)

(declare-fun e!3081268 () List!56890)

(assert (=> b!4931770 (= e!3081268 testedSuffix!70)))

(declare-fun b!4931773 () Bool)

(assert (=> b!4931773 (= e!3081269 (or (not (= testedSuffix!70 Nil!56766)) (= lt!2030371 testedP!110)))))

(declare-fun b!4931771 () Bool)

(assert (=> b!4931771 (= e!3081268 (Cons!56766 (h!63214 testedP!110) (++!12367 (t!367370 testedP!110) testedSuffix!70)))))

(declare-fun d!1587567 () Bool)

(assert (=> d!1587567 e!3081269))

(declare-fun res!2104689 () Bool)

(assert (=> d!1587567 (=> (not res!2104689) (not e!3081269))))

(declare-fun content!10089 (List!56890) (Set C!27034))

(assert (=> d!1587567 (= res!2104689 (= (content!10089 lt!2030371) (set.union (content!10089 testedP!110) (content!10089 testedSuffix!70))))))

(assert (=> d!1587567 (= lt!2030371 e!3081268)))

(declare-fun c!840452 () Bool)

(assert (=> d!1587567 (= c!840452 (is-Nil!56766 testedP!110))))

(assert (=> d!1587567 (= (++!12367 testedP!110 testedSuffix!70) lt!2030371)))

(assert (= (and d!1587567 c!840452) b!4931770))

(assert (= (and d!1587567 (not c!840452)) b!4931771))

(assert (= (and d!1587567 res!2104689) b!4931772))

(assert (= (and b!4931772 res!2104690) b!4931773))

(declare-fun m!5951880 () Bool)

(assert (=> b!4931772 m!5951880))

(assert (=> b!4931772 m!5951826))

(declare-fun m!5951882 () Bool)

(assert (=> b!4931772 m!5951882))

(declare-fun m!5951884 () Bool)

(assert (=> b!4931771 m!5951884))

(declare-fun m!5951886 () Bool)

(assert (=> d!1587567 m!5951886))

(declare-fun m!5951888 () Bool)

(assert (=> d!1587567 m!5951888))

(declare-fun m!5951890 () Bool)

(assert (=> d!1587567 m!5951890))

(assert (=> start!518022 d!1587567))

(declare-fun d!1587569 () Bool)

(declare-fun isBalanced!4104 (Conc!14911) Bool)

(assert (=> d!1587569 (= (inv!73686 totalInput!685) (isBalanced!4104 (c!840443 totalInput!685)))))

(declare-fun bs!1180360 () Bool)

(assert (= bs!1180360 d!1587569))

(declare-fun m!5951892 () Bool)

(assert (=> bs!1180360 m!5951892))

(assert (=> start!518022 d!1587569))

(declare-fun b!4931776 () Bool)

(declare-fun res!2104692 () Bool)

(declare-fun e!3081271 () Bool)

(assert (=> b!4931776 (=> (not res!2104692) (not e!3081271))))

(declare-fun lt!2030372 () List!56890)

(assert (=> b!4931776 (= res!2104692 (= (size!37576 lt!2030372) (+ (size!37576 lt!2030334) (size!37576 lt!2030332))))))

(declare-fun b!4931774 () Bool)

(declare-fun e!3081270 () List!56890)

(assert (=> b!4931774 (= e!3081270 lt!2030332)))

(declare-fun b!4931777 () Bool)

(assert (=> b!4931777 (= e!3081271 (or (not (= lt!2030332 Nil!56766)) (= lt!2030372 lt!2030334)))))

(declare-fun b!4931775 () Bool)

(assert (=> b!4931775 (= e!3081270 (Cons!56766 (h!63214 lt!2030334) (++!12367 (t!367370 lt!2030334) lt!2030332)))))

(declare-fun d!1587571 () Bool)

(assert (=> d!1587571 e!3081271))

(declare-fun res!2104691 () Bool)

(assert (=> d!1587571 (=> (not res!2104691) (not e!3081271))))

(assert (=> d!1587571 (= res!2104691 (= (content!10089 lt!2030372) (set.union (content!10089 lt!2030334) (content!10089 lt!2030332))))))

(assert (=> d!1587571 (= lt!2030372 e!3081270)))

(declare-fun c!840453 () Bool)

(assert (=> d!1587571 (= c!840453 (is-Nil!56766 lt!2030334))))

(assert (=> d!1587571 (= (++!12367 lt!2030334 lt!2030332) lt!2030372)))

(assert (= (and d!1587571 c!840453) b!4931774))

(assert (= (and d!1587571 (not c!840453)) b!4931775))

(assert (= (and d!1587571 res!2104691) b!4931776))

(assert (= (and b!4931776 res!2104692) b!4931777))

(declare-fun m!5951894 () Bool)

(assert (=> b!4931776 m!5951894))

(declare-fun m!5951896 () Bool)

(assert (=> b!4931776 m!5951896))

(declare-fun m!5951898 () Bool)

(assert (=> b!4931776 m!5951898))

(declare-fun m!5951900 () Bool)

(assert (=> b!4931775 m!5951900))

(declare-fun m!5951902 () Bool)

(assert (=> d!1587571 m!5951902))

(declare-fun m!5951904 () Bool)

(assert (=> d!1587571 m!5951904))

(declare-fun m!5951906 () Bool)

(assert (=> d!1587571 m!5951906))

(assert (=> b!4931710 d!1587571))

(declare-fun d!1587573 () Bool)

(assert (=> d!1587573 (= (list!18011 (_2!33919 lt!2030326)) (list!18013 (c!840443 (_2!33919 lt!2030326))))))

(declare-fun bs!1180361 () Bool)

(assert (= bs!1180361 d!1587573))

(declare-fun m!5951908 () Bool)

(assert (=> bs!1180361 m!5951908))

(assert (=> b!4931710 d!1587573))

(declare-fun d!1587575 () Bool)

(assert (=> d!1587575 (= (list!18011 (_1!33919 lt!2030326)) (list!18013 (c!840443 (_1!33919 lt!2030326))))))

(declare-fun bs!1180362 () Bool)

(assert (= bs!1180362 d!1587575))

(declare-fun m!5951910 () Bool)

(assert (=> bs!1180362 m!5951910))

(assert (=> b!4931710 d!1587575))

(declare-fun d!1587577 () Bool)

(declare-fun e!3081274 () Bool)

(assert (=> d!1587577 e!3081274))

(declare-fun res!2104698 () Bool)

(assert (=> d!1587577 (=> (not res!2104698) (not e!3081274))))

(declare-fun lt!2030378 () tuple2!61232)

(assert (=> d!1587577 (= res!2104698 (isBalanced!4104 (c!840443 (_1!33919 lt!2030378))))))

(declare-datatypes ((tuple2!61236 0))(
  ( (tuple2!61237 (_1!33921 Conc!14911) (_2!33921 Conc!14911)) )
))
(declare-fun lt!2030377 () tuple2!61236)

(assert (=> d!1587577 (= lt!2030378 (tuple2!61233 (BalanceConc!29253 (_1!33921 lt!2030377)) (BalanceConc!29253 (_2!33921 lt!2030377))))))

(declare-fun splitAt!294 (Conc!14911 Int) tuple2!61236)

(assert (=> d!1587577 (= lt!2030377 (splitAt!294 (c!840443 totalInput!685) testedPSize!70))))

(assert (=> d!1587577 (isBalanced!4104 (c!840443 totalInput!685))))

(assert (=> d!1587577 (= (splitAt!292 totalInput!685 testedPSize!70) lt!2030378)))

(declare-fun b!4931782 () Bool)

(declare-fun res!2104697 () Bool)

(assert (=> b!4931782 (=> (not res!2104697) (not e!3081274))))

(assert (=> b!4931782 (= res!2104697 (isBalanced!4104 (c!840443 (_2!33919 lt!2030378))))))

(declare-fun b!4931783 () Bool)

(declare-datatypes ((tuple2!61238 0))(
  ( (tuple2!61239 (_1!33922 List!56890) (_2!33922 List!56890)) )
))
(declare-fun splitAtIndex!110 (List!56890 Int) tuple2!61238)

(assert (=> b!4931783 (= e!3081274 (= (tuple2!61239 (list!18011 (_1!33919 lt!2030378)) (list!18011 (_2!33919 lt!2030378))) (splitAtIndex!110 (list!18011 totalInput!685) testedPSize!70)))))

(assert (= (and d!1587577 res!2104698) b!4931782))

(assert (= (and b!4931782 res!2104697) b!4931783))

(declare-fun m!5951912 () Bool)

(assert (=> d!1587577 m!5951912))

(declare-fun m!5951914 () Bool)

(assert (=> d!1587577 m!5951914))

(assert (=> d!1587577 m!5951892))

(declare-fun m!5951916 () Bool)

(assert (=> b!4931782 m!5951916))

(declare-fun m!5951918 () Bool)

(assert (=> b!4931783 m!5951918))

(declare-fun m!5951920 () Bool)

(assert (=> b!4931783 m!5951920))

(assert (=> b!4931783 m!5951814))

(assert (=> b!4931783 m!5951814))

(declare-fun m!5951922 () Bool)

(assert (=> b!4931783 m!5951922))

(assert (=> b!4931710 d!1587577))

(declare-fun d!1587579 () Bool)

(declare-fun c!840456 () Bool)

(assert (=> d!1587579 (= c!840456 (is-Node!14911 (c!840443 totalInput!685)))))

(declare-fun e!3081279 () Bool)

(assert (=> d!1587579 (= (inv!73688 (c!840443 totalInput!685)) e!3081279)))

(declare-fun b!4931790 () Bool)

(declare-fun inv!73692 (Conc!14911) Bool)

(assert (=> b!4931790 (= e!3081279 (inv!73692 (c!840443 totalInput!685)))))

(declare-fun b!4931791 () Bool)

(declare-fun e!3081280 () Bool)

(assert (=> b!4931791 (= e!3081279 e!3081280)))

(declare-fun res!2104701 () Bool)

(assert (=> b!4931791 (= res!2104701 (not (is-Leaf!24800 (c!840443 totalInput!685))))))

(assert (=> b!4931791 (=> res!2104701 e!3081280)))

(declare-fun b!4931792 () Bool)

(declare-fun inv!73693 (Conc!14911) Bool)

(assert (=> b!4931792 (= e!3081280 (inv!73693 (c!840443 totalInput!685)))))

(assert (= (and d!1587579 c!840456) b!4931790))

(assert (= (and d!1587579 (not c!840456)) b!4931791))

(assert (= (and b!4931791 (not res!2104701)) b!4931792))

(declare-fun m!5951924 () Bool)

(assert (=> b!4931790 m!5951924))

(declare-fun m!5951926 () Bool)

(assert (=> b!4931792 m!5951926))

(assert (=> b!4931719 d!1587579))

(declare-fun d!1587581 () Bool)

(declare-fun lambda!245539 () Int)

(declare-fun forall!13163 (List!56891 Int) Bool)

(assert (=> d!1587581 (= (inv!73687 setElem!27665) (forall!13163 (exprs!3544 setElem!27665) lambda!245539))))

(declare-fun bs!1180363 () Bool)

(assert (= bs!1180363 d!1587581))

(declare-fun m!5951928 () Bool)

(assert (=> bs!1180363 m!5951928))

(assert (=> setNonEmpty!27665 d!1587581))

(declare-fun b!4931801 () Bool)

(declare-fun e!3081288 () Bool)

(declare-fun e!3081289 () Bool)

(assert (=> b!4931801 (= e!3081288 e!3081289)))

(declare-fun res!2104713 () Bool)

(assert (=> b!4931801 (=> (not res!2104713) (not e!3081289))))

(assert (=> b!4931801 (= res!2104713 (not (is-Nil!56766 lt!2030328)))))

(declare-fun b!4931802 () Bool)

(declare-fun res!2104710 () Bool)

(assert (=> b!4931802 (=> (not res!2104710) (not e!3081289))))

(assert (=> b!4931802 (= res!2104710 (= (head!10539 testedP!110) (head!10539 lt!2030328)))))

(declare-fun b!4931803 () Bool)

(declare-fun tail!9686 (List!56890) List!56890)

(assert (=> b!4931803 (= e!3081289 (isPrefix!5000 (tail!9686 testedP!110) (tail!9686 lt!2030328)))))

(declare-fun b!4931804 () Bool)

(declare-fun e!3081287 () Bool)

(assert (=> b!4931804 (= e!3081287 (>= (size!37576 lt!2030328) (size!37576 testedP!110)))))

(declare-fun d!1587583 () Bool)

(assert (=> d!1587583 e!3081287))

(declare-fun res!2104711 () Bool)

(assert (=> d!1587583 (=> res!2104711 e!3081287)))

(declare-fun lt!2030381 () Bool)

(assert (=> d!1587583 (= res!2104711 (not lt!2030381))))

(assert (=> d!1587583 (= lt!2030381 e!3081288)))

(declare-fun res!2104712 () Bool)

(assert (=> d!1587583 (=> res!2104712 e!3081288)))

(assert (=> d!1587583 (= res!2104712 (is-Nil!56766 testedP!110))))

(assert (=> d!1587583 (= (isPrefix!5000 testedP!110 lt!2030328) lt!2030381)))

(assert (= (and d!1587583 (not res!2104712)) b!4931801))

(assert (= (and b!4931801 res!2104713) b!4931802))

(assert (= (and b!4931802 res!2104710) b!4931803))

(assert (= (and d!1587583 (not res!2104711)) b!4931804))

(declare-fun m!5951930 () Bool)

(assert (=> b!4931802 m!5951930))

(declare-fun m!5951932 () Bool)

(assert (=> b!4931802 m!5951932))

(declare-fun m!5951934 () Bool)

(assert (=> b!4931803 m!5951934))

(declare-fun m!5951936 () Bool)

(assert (=> b!4931803 m!5951936))

(assert (=> b!4931803 m!5951934))

(assert (=> b!4931803 m!5951936))

(declare-fun m!5951938 () Bool)

(assert (=> b!4931803 m!5951938))

(declare-fun m!5951940 () Bool)

(assert (=> b!4931804 m!5951940))

(assert (=> b!4931804 m!5951826))

(assert (=> b!4931713 d!1587583))

(declare-fun b!4931805 () Bool)

(declare-fun e!3081291 () Bool)

(declare-fun e!3081292 () Bool)

(assert (=> b!4931805 (= e!3081291 e!3081292)))

(declare-fun res!2104717 () Bool)

(assert (=> b!4931805 (=> (not res!2104717) (not e!3081292))))

(assert (=> b!4931805 (= res!2104717 (not (is-Nil!56766 lt!2030327)))))

(declare-fun b!4931806 () Bool)

(declare-fun res!2104714 () Bool)

(assert (=> b!4931806 (=> (not res!2104714) (not e!3081292))))

(assert (=> b!4931806 (= res!2104714 (= (head!10539 testedP!110) (head!10539 lt!2030327)))))

(declare-fun b!4931807 () Bool)

(assert (=> b!4931807 (= e!3081292 (isPrefix!5000 (tail!9686 testedP!110) (tail!9686 lt!2030327)))))

(declare-fun b!4931808 () Bool)

(declare-fun e!3081290 () Bool)

(assert (=> b!4931808 (= e!3081290 (>= (size!37576 lt!2030327) (size!37576 testedP!110)))))

(declare-fun d!1587585 () Bool)

(assert (=> d!1587585 e!3081290))

(declare-fun res!2104715 () Bool)

(assert (=> d!1587585 (=> res!2104715 e!3081290)))

(declare-fun lt!2030382 () Bool)

(assert (=> d!1587585 (= res!2104715 (not lt!2030382))))

(assert (=> d!1587585 (= lt!2030382 e!3081291)))

(declare-fun res!2104716 () Bool)

(assert (=> d!1587585 (=> res!2104716 e!3081291)))

(assert (=> d!1587585 (= res!2104716 (is-Nil!56766 testedP!110))))

(assert (=> d!1587585 (= (isPrefix!5000 testedP!110 lt!2030327) lt!2030382)))

(assert (= (and d!1587585 (not res!2104716)) b!4931805))

(assert (= (and b!4931805 res!2104717) b!4931806))

(assert (= (and b!4931806 res!2104714) b!4931807))

(assert (= (and d!1587585 (not res!2104715)) b!4931808))

(assert (=> b!4931806 m!5951930))

(declare-fun m!5951942 () Bool)

(assert (=> b!4931806 m!5951942))

(assert (=> b!4931807 m!5951934))

(declare-fun m!5951944 () Bool)

(assert (=> b!4931807 m!5951944))

(assert (=> b!4931807 m!5951934))

(assert (=> b!4931807 m!5951944))

(declare-fun m!5951946 () Bool)

(assert (=> b!4931807 m!5951946))

(declare-fun m!5951948 () Bool)

(assert (=> b!4931808 m!5951948))

(assert (=> b!4931808 m!5951826))

(assert (=> b!4931713 d!1587585))

(declare-fun d!1587587 () Bool)

(assert (=> d!1587587 (isPrefix!5000 testedP!110 (++!12367 testedP!110 testedSuffix!70))))

(declare-fun lt!2030385 () Unit!147401)

(declare-fun choose!36147 (List!56890 List!56890) Unit!147401)

(assert (=> d!1587587 (= lt!2030385 (choose!36147 testedP!110 testedSuffix!70))))

(assert (=> d!1587587 (= (lemmaConcatTwoListThenFirstIsPrefix!3224 testedP!110 testedSuffix!70) lt!2030385)))

(declare-fun bs!1180364 () Bool)

(assert (= bs!1180364 d!1587587))

(assert (=> bs!1180364 m!5951816))

(assert (=> bs!1180364 m!5951816))

(declare-fun m!5951950 () Bool)

(assert (=> bs!1180364 m!5951950))

(declare-fun m!5951952 () Bool)

(assert (=> bs!1180364 m!5951952))

(assert (=> b!4931713 d!1587587))

(declare-fun d!1587589 () Bool)

(assert (=> d!1587589 (= (head!10539 (drop!2233 lt!2030328 testedPSize!70)) (apply!13681 lt!2030328 testedPSize!70))))

(declare-fun lt!2030388 () Unit!147401)

(declare-fun choose!36148 (List!56890 Int) Unit!147401)

(assert (=> d!1587589 (= lt!2030388 (choose!36148 lt!2030328 testedPSize!70))))

(declare-fun e!3081295 () Bool)

(assert (=> d!1587589 e!3081295))

(declare-fun res!2104720 () Bool)

(assert (=> d!1587589 (=> (not res!2104720) (not e!3081295))))

(assert (=> d!1587589 (= res!2104720 (>= testedPSize!70 0))))

(assert (=> d!1587589 (= (lemmaDropApply!1291 lt!2030328 testedPSize!70) lt!2030388)))

(declare-fun b!4931811 () Bool)

(assert (=> b!4931811 (= e!3081295 (< testedPSize!70 (size!37576 lt!2030328)))))

(assert (= (and d!1587589 res!2104720) b!4931811))

(assert (=> d!1587589 m!5951802))

(assert (=> d!1587589 m!5951802))

(assert (=> d!1587589 m!5951804))

(assert (=> d!1587589 m!5951806))

(declare-fun m!5951954 () Bool)

(assert (=> d!1587589 m!5951954))

(assert (=> b!4931811 m!5951940))

(assert (=> b!4931709 d!1587589))

(declare-fun b!4931830 () Bool)

(declare-fun e!3081306 () Int)

(assert (=> b!4931830 (= e!3081306 0)))

(declare-fun d!1587591 () Bool)

(declare-fun e!3081310 () Bool)

(assert (=> d!1587591 e!3081310))

(declare-fun res!2104723 () Bool)

(assert (=> d!1587591 (=> (not res!2104723) (not e!3081310))))

(declare-fun lt!2030391 () List!56890)

(assert (=> d!1587591 (= res!2104723 (set.subset (content!10089 lt!2030391) (content!10089 lt!2030328)))))

(declare-fun e!3081308 () List!56890)

(assert (=> d!1587591 (= lt!2030391 e!3081308)))

(declare-fun c!840466 () Bool)

(assert (=> d!1587591 (= c!840466 (is-Nil!56766 lt!2030328))))

(assert (=> d!1587591 (= (drop!2233 lt!2030328 testedPSize!70) lt!2030391)))

(declare-fun b!4931831 () Bool)

(assert (=> b!4931831 (= e!3081308 Nil!56766)))

(declare-fun b!4931832 () Bool)

(declare-fun e!3081307 () Int)

(assert (=> b!4931832 (= e!3081307 e!3081306)))

(declare-fun c!840468 () Bool)

(declare-fun call!344169 () Int)

(assert (=> b!4931832 (= c!840468 (>= testedPSize!70 call!344169))))

(declare-fun b!4931833 () Bool)

(assert (=> b!4931833 (= e!3081310 (= (size!37576 lt!2030391) e!3081307))))

(declare-fun c!840467 () Bool)

(assert (=> b!4931833 (= c!840467 (<= testedPSize!70 0))))

(declare-fun bm!344164 () Bool)

(assert (=> bm!344164 (= call!344169 (size!37576 lt!2030328))))

(declare-fun b!4931834 () Bool)

(assert (=> b!4931834 (= e!3081306 (- call!344169 testedPSize!70))))

(declare-fun b!4931835 () Bool)

(assert (=> b!4931835 (= e!3081307 call!344169)))

(declare-fun b!4931836 () Bool)

(declare-fun e!3081309 () List!56890)

(assert (=> b!4931836 (= e!3081309 lt!2030328)))

(declare-fun b!4931837 () Bool)

(assert (=> b!4931837 (= e!3081308 e!3081309)))

(declare-fun c!840465 () Bool)

(assert (=> b!4931837 (= c!840465 (<= testedPSize!70 0))))

(declare-fun b!4931838 () Bool)

(assert (=> b!4931838 (= e!3081309 (drop!2233 (t!367370 lt!2030328) (- testedPSize!70 1)))))

(assert (= (and d!1587591 c!840466) b!4931831))

(assert (= (and d!1587591 (not c!840466)) b!4931837))

(assert (= (and b!4931837 c!840465) b!4931836))

(assert (= (and b!4931837 (not c!840465)) b!4931838))

(assert (= (and d!1587591 res!2104723) b!4931833))

(assert (= (and b!4931833 c!840467) b!4931835))

(assert (= (and b!4931833 (not c!840467)) b!4931832))

(assert (= (and b!4931832 c!840468) b!4931830))

(assert (= (and b!4931832 (not c!840468)) b!4931834))

(assert (= (or b!4931835 b!4931832 b!4931834) bm!344164))

(declare-fun m!5951956 () Bool)

(assert (=> d!1587591 m!5951956))

(declare-fun m!5951958 () Bool)

(assert (=> d!1587591 m!5951958))

(declare-fun m!5951960 () Bool)

(assert (=> b!4931833 m!5951960))

(assert (=> bm!344164 m!5951940))

(declare-fun m!5951962 () Bool)

(assert (=> b!4931838 m!5951962))

(assert (=> b!4931709 d!1587591))

(declare-fun d!1587593 () Bool)

(assert (=> d!1587593 (and (= lt!2030334 testedP!110) (= lt!2030332 testedSuffix!70))))

(declare-fun lt!2030394 () Unit!147401)

(declare-fun choose!36149 (List!56890 List!56890 List!56890 List!56890) Unit!147401)

(assert (=> d!1587593 (= lt!2030394 (choose!36149 lt!2030334 lt!2030332 testedP!110 testedSuffix!70))))

(assert (=> d!1587593 (= (++!12367 lt!2030334 lt!2030332) (++!12367 testedP!110 testedSuffix!70))))

(assert (=> d!1587593 (= (lemmaConcatSameAndSameSizesThenSameLists!668 lt!2030334 lt!2030332 testedP!110 testedSuffix!70) lt!2030394)))

(declare-fun bs!1180365 () Bool)

(assert (= bs!1180365 d!1587593))

(declare-fun m!5951964 () Bool)

(assert (=> bs!1180365 m!5951964))

(assert (=> bs!1180365 m!5951790))

(assert (=> bs!1180365 m!5951816))

(assert (=> b!4931709 d!1587593))

(declare-fun d!1587595 () Bool)

(declare-fun lt!2030397 () C!27034)

(declare-fun contains!19462 (List!56890 C!27034) Bool)

(assert (=> d!1587595 (contains!19462 lt!2030328 lt!2030397)))

(declare-fun e!3081315 () C!27034)

(assert (=> d!1587595 (= lt!2030397 e!3081315)))

(declare-fun c!840471 () Bool)

(assert (=> d!1587595 (= c!840471 (= testedPSize!70 0))))

(declare-fun e!3081316 () Bool)

(assert (=> d!1587595 e!3081316))

(declare-fun res!2104726 () Bool)

(assert (=> d!1587595 (=> (not res!2104726) (not e!3081316))))

(assert (=> d!1587595 (= res!2104726 (<= 0 testedPSize!70))))

(assert (=> d!1587595 (= (apply!13681 lt!2030328 testedPSize!70) lt!2030397)))

(declare-fun b!4931845 () Bool)

(assert (=> b!4931845 (= e!3081316 (< testedPSize!70 (size!37576 lt!2030328)))))

(declare-fun b!4931846 () Bool)

(assert (=> b!4931846 (= e!3081315 (head!10539 lt!2030328))))

(declare-fun b!4931847 () Bool)

(assert (=> b!4931847 (= e!3081315 (apply!13681 (tail!9686 lt!2030328) (- testedPSize!70 1)))))

(assert (= (and d!1587595 res!2104726) b!4931845))

(assert (= (and d!1587595 c!840471) b!4931846))

(assert (= (and d!1587595 (not c!840471)) b!4931847))

(declare-fun m!5951966 () Bool)

(assert (=> d!1587595 m!5951966))

(assert (=> b!4931845 m!5951940))

(assert (=> b!4931846 m!5951932))

(assert (=> b!4931847 m!5951936))

(assert (=> b!4931847 m!5951936))

(declare-fun m!5951968 () Bool)

(assert (=> b!4931847 m!5951968))

(assert (=> b!4931709 d!1587595))

(declare-fun d!1587597 () Bool)

(assert (=> d!1587597 (= (head!10539 (drop!2233 lt!2030328 testedPSize!70)) (h!63214 (drop!2233 lt!2030328 testedPSize!70)))))

(assert (=> b!4931709 d!1587597))

(declare-fun d!1587599 () Bool)

(declare-fun lt!2030400 () Int)

(assert (=> d!1587599 (= lt!2030400 (size!37576 (list!18011 totalInput!685)))))

(declare-fun size!37580 (Conc!14911) Int)

(assert (=> d!1587599 (= lt!2030400 (size!37580 (c!840443 totalInput!685)))))

(assert (=> d!1587599 (= (size!37577 totalInput!685) lt!2030400)))

(declare-fun bs!1180366 () Bool)

(assert (= bs!1180366 d!1587599))

(assert (=> bs!1180366 m!5951814))

(assert (=> bs!1180366 m!5951814))

(declare-fun m!5951970 () Bool)

(assert (=> bs!1180366 m!5951970))

(declare-fun m!5951972 () Bool)

(assert (=> bs!1180366 m!5951972))

(assert (=> b!4931717 d!1587599))

(declare-fun d!1587601 () Bool)

(declare-fun lt!2030401 () Int)

(assert (=> d!1587601 (= lt!2030401 (size!37576 (list!18011 (_1!33919 lt!2030326))))))

(assert (=> d!1587601 (= lt!2030401 (size!37580 (c!840443 (_1!33919 lt!2030326))))))

(assert (=> d!1587601 (= (size!37577 (_1!33919 lt!2030326)) lt!2030401)))

(declare-fun bs!1180367 () Bool)

(assert (= bs!1180367 d!1587601))

(assert (=> bs!1180367 m!5951794))

(assert (=> bs!1180367 m!5951794))

(declare-fun m!5951974 () Bool)

(assert (=> bs!1180367 m!5951974))

(declare-fun m!5951976 () Bool)

(assert (=> bs!1180367 m!5951976))

(assert (=> b!4931716 d!1587601))

(declare-fun bs!1180368 () Bool)

(declare-fun b!4931852 () Bool)

(declare-fun d!1587603 () Bool)

(assert (= bs!1180368 (and b!4931852 d!1587603)))

(declare-fun lambda!245553 () Int)

(declare-fun lambda!245552 () Int)

(assert (=> bs!1180368 (not (= lambda!245553 lambda!245552))))

(declare-fun bs!1180369 () Bool)

(declare-fun b!4931853 () Bool)

(assert (= bs!1180369 (and b!4931853 d!1587603)))

(declare-fun lambda!245554 () Int)

(assert (=> bs!1180369 (not (= lambda!245554 lambda!245552))))

(declare-fun bs!1180370 () Bool)

(assert (= bs!1180370 (and b!4931853 b!4931852)))

(assert (=> bs!1180370 (= lambda!245554 lambda!245553)))

(declare-fun lt!2030424 () Bool)

(declare-datatypes ((Option!14172 0))(
  ( (None!14171) (Some!14171 (v!50141 List!56890)) )
))
(declare-fun isEmpty!30597 (Option!14172) Bool)

(declare-fun getLanguageWitness!630 ((Set Context!6088)) Option!14172)

(assert (=> d!1587603 (= lt!2030424 (isEmpty!30597 (getLanguageWitness!630 z!3568)))))

(declare-fun forall!13165 ((Set Context!6088) Int) Bool)

(assert (=> d!1587603 (= lt!2030424 (forall!13165 z!3568 lambda!245552))))

(declare-fun lt!2030423 () Unit!147401)

(declare-fun e!3081323 () Unit!147401)

(assert (=> d!1587603 (= lt!2030423 e!3081323)))

(declare-fun c!840482 () Bool)

(assert (=> d!1587603 (= c!840482 (not (forall!13165 z!3568 lambda!245552)))))

(assert (=> d!1587603 (= (lostCauseZipper!720 z!3568) lt!2030424)))

(declare-fun bm!344170 () Bool)

(declare-datatypes ((List!56894 0))(
  ( (Nil!56770) (Cons!56770 (h!63218 Context!6088) (t!367374 List!56894)) )
))
(declare-fun call!344174 () List!56894)

(declare-fun toList!7954 ((Set Context!6088)) List!56894)

(assert (=> bm!344170 (= call!344174 (toList!7954 z!3568))))

(declare-fun Unit!147405 () Unit!147401)

(assert (=> b!4931853 (= e!3081323 Unit!147405)))

(declare-fun lt!2030421 () List!56894)

(assert (=> b!4931853 (= lt!2030421 call!344174)))

(declare-fun lt!2030418 () Unit!147401)

(declare-fun lemmaForallThenNotExists!175 (List!56894 Int) Unit!147401)

(assert (=> b!4931853 (= lt!2030418 (lemmaForallThenNotExists!175 lt!2030421 lambda!245552))))

(declare-fun call!344175 () Bool)

(assert (=> b!4931853 (not call!344175)))

(declare-fun lt!2030419 () Unit!147401)

(assert (=> b!4931853 (= lt!2030419 lt!2030418)))

(declare-fun lt!2030420 () List!56894)

(declare-fun bm!344169 () Bool)

(declare-fun exists!1261 (List!56894 Int) Bool)

(assert (=> bm!344169 (= call!344175 (exists!1261 (ite c!840482 lt!2030420 lt!2030421) (ite c!840482 lambda!245553 lambda!245554)))))

(declare-fun Unit!147406 () Unit!147401)

(assert (=> b!4931852 (= e!3081323 Unit!147406)))

(assert (=> b!4931852 (= lt!2030420 call!344174)))

(declare-fun lt!2030422 () Unit!147401)

(declare-fun lemmaNotForallThenExists!192 (List!56894 Int) Unit!147401)

(assert (=> b!4931852 (= lt!2030422 (lemmaNotForallThenExists!192 lt!2030420 lambda!245552))))

(assert (=> b!4931852 call!344175))

(declare-fun lt!2030425 () Unit!147401)

(assert (=> b!4931852 (= lt!2030425 lt!2030422)))

(assert (= (and d!1587603 c!840482) b!4931852))

(assert (= (and d!1587603 (not c!840482)) b!4931853))

(assert (= (or b!4931852 b!4931853) bm!344169))

(assert (= (or b!4931852 b!4931853) bm!344170))

(declare-fun m!5951978 () Bool)

(assert (=> d!1587603 m!5951978))

(assert (=> d!1587603 m!5951978))

(declare-fun m!5951980 () Bool)

(assert (=> d!1587603 m!5951980))

(declare-fun m!5951982 () Bool)

(assert (=> d!1587603 m!5951982))

(assert (=> d!1587603 m!5951982))

(declare-fun m!5951984 () Bool)

(assert (=> bm!344169 m!5951984))

(declare-fun m!5951986 () Bool)

(assert (=> b!4931853 m!5951986))

(declare-fun m!5951988 () Bool)

(assert (=> bm!344170 m!5951988))

(declare-fun m!5951990 () Bool)

(assert (=> b!4931852 m!5951990))

(assert (=> b!4931712 d!1587603))

(declare-fun d!1587605 () Bool)

(assert (=> d!1587605 (= testedSuffix!70 lt!2030335)))

(declare-fun lt!2030428 () Unit!147401)

(declare-fun choose!36150 (List!56890 List!56890 List!56890 List!56890 List!56890) Unit!147401)

(assert (=> d!1587605 (= lt!2030428 (choose!36150 testedP!110 testedSuffix!70 testedP!110 lt!2030335 lt!2030328))))

(assert (=> d!1587605 (isPrefix!5000 testedP!110 lt!2030328)))

(assert (=> d!1587605 (= (lemmaSamePrefixThenSameSuffix!2398 testedP!110 testedSuffix!70 testedP!110 lt!2030335 lt!2030328) lt!2030428)))

(declare-fun bs!1180371 () Bool)

(assert (= bs!1180371 d!1587605))

(declare-fun m!5951992 () Bool)

(assert (=> bs!1180371 m!5951992))

(assert (=> bs!1180371 m!5951820))

(assert (=> b!4931712 d!1587605))

(declare-fun d!1587607 () Bool)

(declare-fun lt!2030431 () List!56890)

(assert (=> d!1587607 (= (++!12367 testedP!110 lt!2030431) lt!2030328)))

(declare-fun e!3081326 () List!56890)

(assert (=> d!1587607 (= lt!2030431 e!3081326)))

(declare-fun c!840485 () Bool)

(assert (=> d!1587607 (= c!840485 (is-Cons!56766 testedP!110))))

(assert (=> d!1587607 (>= (size!37576 lt!2030328) (size!37576 testedP!110))))

(assert (=> d!1587607 (= (getSuffix!2984 lt!2030328 testedP!110) lt!2030431)))

(declare-fun b!4931858 () Bool)

(assert (=> b!4931858 (= e!3081326 (getSuffix!2984 (tail!9686 lt!2030328) (t!367370 testedP!110)))))

(declare-fun b!4931859 () Bool)

(assert (=> b!4931859 (= e!3081326 lt!2030328)))

(assert (= (and d!1587607 c!840485) b!4931858))

(assert (= (and d!1587607 (not c!840485)) b!4931859))

(declare-fun m!5951996 () Bool)

(assert (=> d!1587607 m!5951996))

(assert (=> d!1587607 m!5951940))

(assert (=> d!1587607 m!5951826))

(assert (=> b!4931858 m!5951936))

(assert (=> b!4931858 m!5951936))

(declare-fun m!5951998 () Bool)

(assert (=> b!4931858 m!5951998))

(assert (=> b!4931712 d!1587607))

(declare-fun b!4931864 () Bool)

(declare-fun e!3081329 () Bool)

(declare-fun tp!1384576 () Bool)

(assert (=> b!4931864 (= e!3081329 (and tp_is_empty!35981 tp!1384576))))

(assert (=> b!4931714 (= tp!1384556 e!3081329)))

(assert (= (and b!4931714 (is-Cons!56766 (t!367370 testedSuffix!70))) b!4931864))

(declare-fun tp!1384583 () Bool)

(declare-fun e!3081339 () Bool)

(declare-fun tp!1384585 () Bool)

(declare-fun b!4931879 () Bool)

(assert (=> b!4931879 (= e!3081339 (and (inv!73688 (left!41401 (c!840443 totalInput!685))) tp!1384583 (inv!73688 (right!41731 (c!840443 totalInput!685))) tp!1384585))))

(declare-fun b!4931881 () Bool)

(declare-fun e!3081338 () Bool)

(declare-fun tp!1384584 () Bool)

(assert (=> b!4931881 (= e!3081338 tp!1384584)))

(declare-fun b!4931880 () Bool)

(declare-fun inv!73696 (IArray!29883) Bool)

(assert (=> b!4931880 (= e!3081339 (and (inv!73696 (xs!18235 (c!840443 totalInput!685))) e!3081338))))

(assert (=> b!4931719 (= tp!1384557 (and (inv!73688 (c!840443 totalInput!685)) e!3081339))))

(assert (= (and b!4931719 (is-Node!14911 (c!840443 totalInput!685))) b!4931879))

(assert (= b!4931880 b!4931881))

(assert (= (and b!4931719 (is-Leaf!24800 (c!840443 totalInput!685))) b!4931880))

(declare-fun m!5952000 () Bool)

(assert (=> b!4931879 m!5952000))

(declare-fun m!5952002 () Bool)

(assert (=> b!4931879 m!5952002))

(declare-fun m!5952004 () Bool)

(assert (=> b!4931880 m!5952004))

(assert (=> b!4931719 m!5951810))

(declare-fun b!4931889 () Bool)

(declare-fun e!3081344 () Bool)

(declare-fun tp!1384590 () Bool)

(declare-fun tp!1384591 () Bool)

(assert (=> b!4931889 (= e!3081344 (and tp!1384590 tp!1384591))))

(assert (=> b!4931718 (= tp!1384558 e!3081344)))

(assert (= (and b!4931718 (is-Cons!56767 (exprs!3544 setElem!27665))) b!4931889))

(declare-fun condSetEmpty!27671 () Bool)

(assert (=> setNonEmpty!27665 (= condSetEmpty!27671 (= setRest!27665 (as set.empty (Set Context!6088))))))

(declare-fun setRes!27671 () Bool)

(assert (=> setNonEmpty!27665 (= tp!1384554 setRes!27671)))

(declare-fun setIsEmpty!27671 () Bool)

(assert (=> setIsEmpty!27671 setRes!27671))

(declare-fun setElem!27671 () Context!6088)

(declare-fun e!3081347 () Bool)

(declare-fun setNonEmpty!27671 () Bool)

(declare-fun tp!1384597 () Bool)

(assert (=> setNonEmpty!27671 (= setRes!27671 (and tp!1384597 (inv!73687 setElem!27671) e!3081347))))

(declare-fun setRest!27671 () (Set Context!6088))

(assert (=> setNonEmpty!27671 (= setRest!27665 (set.union (set.insert setElem!27671 (as set.empty (Set Context!6088))) setRest!27671))))

(declare-fun b!4931894 () Bool)

(declare-fun tp!1384596 () Bool)

(assert (=> b!4931894 (= e!3081347 tp!1384596)))

(assert (= (and setNonEmpty!27665 condSetEmpty!27671) setIsEmpty!27671))

(assert (= (and setNonEmpty!27665 (not condSetEmpty!27671)) setNonEmpty!27671))

(assert (= setNonEmpty!27671 b!4931894))

(declare-fun m!5952012 () Bool)

(assert (=> setNonEmpty!27671 m!5952012))

(declare-fun b!4931895 () Bool)

(declare-fun e!3081348 () Bool)

(declare-fun tp!1384598 () Bool)

(assert (=> b!4931895 (= e!3081348 (and tp_is_empty!35981 tp!1384598))))

(assert (=> b!4931711 (= tp!1384555 e!3081348)))

(assert (= (and b!4931711 (is-Cons!56766 (t!367370 testedP!110))) b!4931895))

(push 1)

(assert (not d!1587591))

(assert (not b!4931807))

(assert (not d!1587581))

(assert (not b!4931771))

(assert (not b!4931864))

(assert (not b!4931880))

(assert (not d!1587571))

(assert (not b!4931802))

(assert (not b!4931790))

(assert (not b!4931811))

(assert (not b!4931808))

(assert (not b!4931833))

(assert (not d!1587575))

(assert (not d!1587577))

(assert (not b!4931761))

(assert (not b!4931853))

(assert (not bm!344164))

(assert (not b!4931776))

(assert (not b!4931804))

(assert (not d!1587595))

(assert (not b!4931846))

(assert (not b!4931894))

(assert (not d!1587593))

(assert (not d!1587599))

(assert (not b!4931889))

(assert (not bm!344170))

(assert (not b!4931792))

(assert (not b!4931803))

(assert (not b!4931858))

(assert (not d!1587567))

(assert (not b!4931881))

(assert (not b!4931845))

(assert (not bm!344169))

(assert (not d!1587573))

(assert (not b!4931838))

(assert tp_is_empty!35981)

(assert (not setNonEmpty!27671))

(assert (not d!1587601))

(assert (not b!4931719))

(assert (not d!1587569))

(assert (not b!4931895))

(assert (not d!1587587))

(assert (not d!1587565))

(assert (not b!4931879))

(assert (not d!1587607))

(assert (not b!4931782))

(assert (not b!4931772))

(assert (not d!1587605))

(assert (not b!4931775))

(assert (not b!4931852))

(assert (not d!1587589))

(assert (not b!4931806))

(assert (not b!4931783))

(assert (not b!4931847))

(assert (not d!1587603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

