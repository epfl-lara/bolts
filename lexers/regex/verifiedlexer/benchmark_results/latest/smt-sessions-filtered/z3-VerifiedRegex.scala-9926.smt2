; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520440 () Bool)

(assert start!520440)

(declare-fun b!4944716 () Bool)

(declare-fun e!3089416 () Bool)

(declare-fun e!3089421 () Bool)

(assert (=> b!4944716 (= e!3089416 (not e!3089421))))

(declare-fun res!2109960 () Bool)

(assert (=> b!4944716 (=> res!2109960 e!3089421)))

(declare-datatypes ((C!27188 0))(
  ( (C!27189 (val!22928 Int)) )
))
(declare-datatypes ((List!57068 0))(
  ( (Nil!56944) (Cons!56944 (h!63392 C!27188) (t!367604 List!57068)) )
))
(declare-fun testedP!110 () List!57068)

(declare-fun lt!2038453 () List!57068)

(declare-fun isPrefix!5075 (List!57068 List!57068) Bool)

(assert (=> b!4944716 (= res!2109960 (not (isPrefix!5075 testedP!110 lt!2038453)))))

(declare-fun lt!2038455 () List!57068)

(assert (=> b!4944716 (isPrefix!5075 testedP!110 lt!2038455)))

(declare-datatypes ((Unit!147717 0))(
  ( (Unit!147718) )
))
(declare-fun lt!2038457 () Unit!147717)

(declare-fun testedSuffix!70 () List!57068)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3299 (List!57068 List!57068) Unit!147717)

(assert (=> b!4944716 (= lt!2038457 (lemmaConcatTwoListThenFirstIsPrefix!3299 testedP!110 testedSuffix!70))))

(declare-fun res!2109953 () Bool)

(assert (=> start!520440 (=> (not res!2109953) (not e!3089416))))

(assert (=> start!520440 (= res!2109953 (= lt!2038455 lt!2038453))))

(declare-datatypes ((IArray!30037 0))(
  ( (IArray!30038 (innerList!15076 List!57068)) )
))
(declare-datatypes ((Conc!14988 0))(
  ( (Node!14988 (left!41548 Conc!14988) (right!41878 Conc!14988) (csize!30206 Int) (cheight!15199 Int)) (Leaf!24915 (xs!18314 IArray!30037) (csize!30207 Int)) (Empty!14988) )
))
(declare-datatypes ((BalanceConc!29406 0))(
  ( (BalanceConc!29407 (c!843668 Conc!14988)) )
))
(declare-fun totalInput!685 () BalanceConc!29406)

(declare-fun list!18139 (BalanceConc!29406) List!57068)

(assert (=> start!520440 (= lt!2038453 (list!18139 totalInput!685))))

(declare-fun ++!12454 (List!57068 List!57068) List!57068)

(assert (=> start!520440 (= lt!2038455 (++!12454 testedP!110 testedSuffix!70))))

(assert (=> start!520440 e!3089416))

(declare-fun e!3089420 () Bool)

(assert (=> start!520440 e!3089420))

(declare-fun condSetEmpty!27986 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13469 0))(
  ( (ElementMatch!13469 (c!843669 C!27188)) (Concat!22042 (regOne!27450 Regex!13469) (regTwo!27450 Regex!13469)) (EmptyExpr!13469) (Star!13469 (reg!13798 Regex!13469)) (EmptyLang!13469) (Union!13469 (regOne!27451 Regex!13469) (regTwo!27451 Regex!13469)) )
))
(declare-datatypes ((List!57069 0))(
  ( (Nil!56945) (Cons!56945 (h!63393 Regex!13469) (t!367605 List!57069)) )
))
(declare-datatypes ((Context!6222 0))(
  ( (Context!6223 (exprs!3611 List!57069)) )
))
(declare-fun z!3568 () (InoxSet Context!6222))

(assert (=> start!520440 (= condSetEmpty!27986 (= z!3568 ((as const (Array Context!6222 Bool)) false)))))

(declare-fun setRes!27986 () Bool)

(assert (=> start!520440 setRes!27986))

(assert (=> start!520440 true))

(declare-fun e!3089415 () Bool)

(declare-fun inv!74136 (BalanceConc!29406) Bool)

(assert (=> start!520440 (and (inv!74136 totalInput!685) e!3089415)))

(declare-fun e!3089418 () Bool)

(assert (=> start!520440 e!3089418))

(declare-fun b!4944717 () Bool)

(declare-fun res!2109959 () Bool)

(declare-fun e!3089419 () Bool)

(assert (=> b!4944717 (=> res!2109959 e!3089419)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4944717 (= res!2109959 (not (= testedPSize!70 totalInputSize!132)))))

(declare-fun b!4944718 () Bool)

(declare-fun tp_is_empty!36135 () Bool)

(declare-fun tp!1387051 () Bool)

(assert (=> b!4944718 (= e!3089420 (and tp_is_empty!36135 tp!1387051))))

(declare-fun b!4944719 () Bool)

(declare-fun e!3089417 () Bool)

(declare-fun tp!1387053 () Bool)

(assert (=> b!4944719 (= e!3089417 tp!1387053)))

(declare-fun e!3089414 () Bool)

(declare-fun b!4944720 () Bool)

(declare-fun size!37771 (List!57068) Int)

(declare-datatypes ((tuple2!61480 0))(
  ( (tuple2!61481 (_1!34043 List!57068) (_2!34043 List!57068)) )
))
(declare-fun findLongestMatchInnerZipper!74 ((InoxSet Context!6222) List!57068 Int List!57068 List!57068 Int) tuple2!61480)

(assert (=> b!4944720 (= e!3089414 (= (size!37771 (_1!34043 (findLongestMatchInnerZipper!74 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2038453 totalInputSize!132))) testedPSize!70))))

(declare-fun b!4944721 () Bool)

(assert (=> b!4944721 (= e!3089421 e!3089419)))

(declare-fun res!2109955 () Bool)

(assert (=> b!4944721 (=> res!2109955 e!3089419)))

(declare-fun lostCauseZipper!787 ((InoxSet Context!6222)) Bool)

(assert (=> b!4944721 (= res!2109955 (lostCauseZipper!787 z!3568))))

(declare-fun lt!2038458 () List!57068)

(assert (=> b!4944721 (and (= testedSuffix!70 lt!2038458) (= lt!2038458 testedSuffix!70))))

(declare-fun lt!2038456 () Unit!147717)

(declare-fun lemmaSamePrefixThenSameSuffix!2467 (List!57068 List!57068 List!57068 List!57068 List!57068) Unit!147717)

(assert (=> b!4944721 (= lt!2038456 (lemmaSamePrefixThenSameSuffix!2467 testedP!110 testedSuffix!70 testedP!110 lt!2038458 lt!2038453))))

(declare-fun getSuffix!3057 (List!57068 List!57068) List!57068)

(assert (=> b!4944721 (= lt!2038458 (getSuffix!3057 lt!2038453 testedP!110))))

(declare-fun b!4944722 () Bool)

(declare-fun tp!1387052 () Bool)

(assert (=> b!4944722 (= e!3089418 (and tp_is_empty!36135 tp!1387052))))

(declare-fun setElem!27986 () Context!6222)

(declare-fun setNonEmpty!27986 () Bool)

(declare-fun tp!1387054 () Bool)

(declare-fun inv!74137 (Context!6222) Bool)

(assert (=> setNonEmpty!27986 (= setRes!27986 (and tp!1387054 (inv!74137 setElem!27986) e!3089417))))

(declare-fun setRest!27986 () (InoxSet Context!6222))

(assert (=> setNonEmpty!27986 (= z!3568 ((_ map or) (store ((as const (Array Context!6222 Bool)) false) setElem!27986 true) setRest!27986))))

(declare-fun b!4944723 () Bool)

(declare-fun res!2109957 () Bool)

(assert (=> b!4944723 (=> (not res!2109957) (not e!3089416))))

(declare-fun size!37772 (BalanceConc!29406) Int)

(assert (=> b!4944723 (= res!2109957 (= totalInputSize!132 (size!37772 totalInput!685)))))

(declare-fun setIsEmpty!27986 () Bool)

(assert (=> setIsEmpty!27986 setRes!27986))

(declare-fun b!4944724 () Bool)

(declare-fun res!2109956 () Bool)

(assert (=> b!4944724 (=> (not res!2109956) (not e!3089416))))

(assert (=> b!4944724 (= res!2109956 (= testedPSize!70 (size!37771 testedP!110)))))

(declare-fun b!4944725 () Bool)

(declare-fun tp!1387055 () Bool)

(declare-fun inv!74138 (Conc!14988) Bool)

(assert (=> b!4944725 (= e!3089415 (and (inv!74138 (c!843668 totalInput!685)) tp!1387055))))

(declare-fun b!4944726 () Bool)

(declare-fun res!2109954 () Bool)

(assert (=> b!4944726 (=> res!2109954 e!3089414)))

(declare-fun nullableZipper!854 ((InoxSet Context!6222)) Bool)

(assert (=> b!4944726 (= res!2109954 (not (nullableZipper!854 z!3568)))))

(declare-fun b!4944727 () Bool)

(assert (=> b!4944727 (= e!3089419 e!3089414)))

(declare-fun res!2109958 () Bool)

(assert (=> b!4944727 (=> res!2109958 e!3089414)))

(assert (=> b!4944727 (= res!2109958 (not (= testedP!110 lt!2038453)))))

(assert (=> b!4944727 (= lt!2038453 testedP!110)))

(declare-fun lt!2038454 () Unit!147717)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1175 (List!57068 List!57068 List!57068) Unit!147717)

(assert (=> b!4944727 (= lt!2038454 (lemmaIsPrefixSameLengthThenSameList!1175 lt!2038453 testedP!110 lt!2038453))))

(assert (=> b!4944727 (isPrefix!5075 lt!2038453 lt!2038453)))

(declare-fun lt!2038459 () Unit!147717)

(declare-fun lemmaIsPrefixRefl!3421 (List!57068 List!57068) Unit!147717)

(assert (=> b!4944727 (= lt!2038459 (lemmaIsPrefixRefl!3421 lt!2038453 lt!2038453))))

(assert (= (and start!520440 res!2109953) b!4944724))

(assert (= (and b!4944724 res!2109956) b!4944723))

(assert (= (and b!4944723 res!2109957) b!4944716))

(assert (= (and b!4944716 (not res!2109960)) b!4944721))

(assert (= (and b!4944721 (not res!2109955)) b!4944717))

(assert (= (and b!4944717 (not res!2109959)) b!4944727))

(assert (= (and b!4944727 (not res!2109958)) b!4944726))

(assert (= (and b!4944726 (not res!2109954)) b!4944720))

(get-info :version)

(assert (= (and start!520440 ((_ is Cons!56944) testedP!110)) b!4944718))

(assert (= (and start!520440 condSetEmpty!27986) setIsEmpty!27986))

(assert (= (and start!520440 (not condSetEmpty!27986)) setNonEmpty!27986))

(assert (= setNonEmpty!27986 b!4944719))

(assert (= start!520440 b!4944725))

(assert (= (and start!520440 ((_ is Cons!56944) testedSuffix!70)) b!4944722))

(declare-fun m!5967738 () Bool)

(assert (=> b!4944723 m!5967738))

(declare-fun m!5967740 () Bool)

(assert (=> b!4944716 m!5967740))

(declare-fun m!5967742 () Bool)

(assert (=> b!4944716 m!5967742))

(declare-fun m!5967744 () Bool)

(assert (=> b!4944716 m!5967744))

(declare-fun m!5967746 () Bool)

(assert (=> b!4944726 m!5967746))

(declare-fun m!5967748 () Bool)

(assert (=> b!4944727 m!5967748))

(declare-fun m!5967750 () Bool)

(assert (=> b!4944727 m!5967750))

(declare-fun m!5967752 () Bool)

(assert (=> b!4944727 m!5967752))

(declare-fun m!5967754 () Bool)

(assert (=> b!4944721 m!5967754))

(declare-fun m!5967756 () Bool)

(assert (=> b!4944721 m!5967756))

(declare-fun m!5967758 () Bool)

(assert (=> b!4944721 m!5967758))

(declare-fun m!5967760 () Bool)

(assert (=> start!520440 m!5967760))

(declare-fun m!5967762 () Bool)

(assert (=> start!520440 m!5967762))

(declare-fun m!5967764 () Bool)

(assert (=> start!520440 m!5967764))

(declare-fun m!5967766 () Bool)

(assert (=> setNonEmpty!27986 m!5967766))

(declare-fun m!5967768 () Bool)

(assert (=> b!4944724 m!5967768))

(declare-fun m!5967770 () Bool)

(assert (=> b!4944725 m!5967770))

(declare-fun m!5967772 () Bool)

(assert (=> b!4944720 m!5967772))

(declare-fun m!5967774 () Bool)

(assert (=> b!4944720 m!5967774))

(check-sat (not b!4944720) (not b!4944727) (not b!4944725) (not setNonEmpty!27986) (not b!4944723) (not b!4944721) (not b!4944716) (not b!4944726) tp_is_empty!36135 (not b!4944724) (not start!520440) (not b!4944719) (not b!4944718) (not b!4944722))
(check-sat)
(get-model)

(declare-fun bs!1181578 () Bool)

(declare-fun b!4944781 () Bool)

(declare-fun d!1592111 () Bool)

(assert (= bs!1181578 (and b!4944781 d!1592111)))

(declare-fun lambda!246470 () Int)

(declare-fun lambda!246469 () Int)

(assert (=> bs!1181578 (not (= lambda!246470 lambda!246469))))

(declare-fun bs!1181579 () Bool)

(declare-fun b!4944782 () Bool)

(assert (= bs!1181579 (and b!4944782 d!1592111)))

(declare-fun lambda!246471 () Int)

(assert (=> bs!1181579 (not (= lambda!246471 lambda!246469))))

(declare-fun bs!1181580 () Bool)

(assert (= bs!1181580 (and b!4944782 b!4944781)))

(assert (=> bs!1181580 (= lambda!246471 lambda!246470)))

(declare-datatypes ((List!57070 0))(
  ( (Nil!56946) (Cons!56946 (h!63394 Context!6222) (t!367606 List!57070)) )
))
(declare-fun lt!2038502 () List!57070)

(declare-fun c!843692 () Bool)

(declare-fun lt!2038503 () List!57070)

(declare-fun bm!345044 () Bool)

(declare-fun call!345049 () Bool)

(declare-fun exists!1321 (List!57070 Int) Bool)

(assert (=> bm!345044 (= call!345049 (exists!1321 (ite c!843692 lt!2038503 lt!2038502) (ite c!843692 lambda!246470 lambda!246471)))))

(declare-fun e!3089459 () Unit!147717)

(declare-fun Unit!147721 () Unit!147717)

(assert (=> b!4944781 (= e!3089459 Unit!147721)))

(declare-fun call!345050 () List!57070)

(assert (=> b!4944781 (= lt!2038503 call!345050)))

(declare-fun lt!2038498 () Unit!147717)

(declare-fun lemmaNotForallThenExists!226 (List!57070 Int) Unit!147717)

(assert (=> b!4944781 (= lt!2038498 (lemmaNotForallThenExists!226 lt!2038503 lambda!246469))))

(assert (=> b!4944781 call!345049))

(declare-fun lt!2038500 () Unit!147717)

(assert (=> b!4944781 (= lt!2038500 lt!2038498)))

(declare-fun bm!345045 () Bool)

(declare-fun toList!7988 ((InoxSet Context!6222)) List!57070)

(assert (=> bm!345045 (= call!345050 (toList!7988 z!3568))))

(declare-fun lt!2038504 () Bool)

(declare-datatypes ((Option!14206 0))(
  ( (None!14205) (Some!14205 (v!50181 List!57068)) )
))
(declare-fun isEmpty!30648 (Option!14206) Bool)

(declare-fun getLanguageWitness!675 ((InoxSet Context!6222)) Option!14206)

(assert (=> d!1592111 (= lt!2038504 (isEmpty!30648 (getLanguageWitness!675 z!3568)))))

(declare-fun forall!13243 ((InoxSet Context!6222) Int) Bool)

(assert (=> d!1592111 (= lt!2038504 (forall!13243 z!3568 lambda!246469))))

(declare-fun lt!2038497 () Unit!147717)

(assert (=> d!1592111 (= lt!2038497 e!3089459)))

(assert (=> d!1592111 (= c!843692 (not (forall!13243 z!3568 lambda!246469)))))

(assert (=> d!1592111 (= (lostCauseZipper!787 z!3568) lt!2038504)))

(declare-fun Unit!147722 () Unit!147717)

(assert (=> b!4944782 (= e!3089459 Unit!147722)))

(assert (=> b!4944782 (= lt!2038502 call!345050)))

(declare-fun lt!2038501 () Unit!147717)

(declare-fun lemmaForallThenNotExists!209 (List!57070 Int) Unit!147717)

(assert (=> b!4944782 (= lt!2038501 (lemmaForallThenNotExists!209 lt!2038502 lambda!246469))))

(assert (=> b!4944782 (not call!345049)))

(declare-fun lt!2038499 () Unit!147717)

(assert (=> b!4944782 (= lt!2038499 lt!2038501)))

(assert (= (and d!1592111 c!843692) b!4944781))

(assert (= (and d!1592111 (not c!843692)) b!4944782))

(assert (= (or b!4944781 b!4944782) bm!345044))

(assert (= (or b!4944781 b!4944782) bm!345045))

(declare-fun m!5967834 () Bool)

(assert (=> bm!345045 m!5967834))

(declare-fun m!5967836 () Bool)

(assert (=> b!4944781 m!5967836))

(declare-fun m!5967838 () Bool)

(assert (=> bm!345044 m!5967838))

(declare-fun m!5967840 () Bool)

(assert (=> b!4944782 m!5967840))

(declare-fun m!5967842 () Bool)

(assert (=> d!1592111 m!5967842))

(assert (=> d!1592111 m!5967842))

(declare-fun m!5967844 () Bool)

(assert (=> d!1592111 m!5967844))

(declare-fun m!5967846 () Bool)

(assert (=> d!1592111 m!5967846))

(assert (=> d!1592111 m!5967846))

(assert (=> b!4944721 d!1592111))

(declare-fun d!1592143 () Bool)

(assert (=> d!1592143 (= testedSuffix!70 lt!2038458)))

(declare-fun lt!2038507 () Unit!147717)

(declare-fun choose!36436 (List!57068 List!57068 List!57068 List!57068 List!57068) Unit!147717)

(assert (=> d!1592143 (= lt!2038507 (choose!36436 testedP!110 testedSuffix!70 testedP!110 lt!2038458 lt!2038453))))

(assert (=> d!1592143 (isPrefix!5075 testedP!110 lt!2038453)))

(assert (=> d!1592143 (= (lemmaSamePrefixThenSameSuffix!2467 testedP!110 testedSuffix!70 testedP!110 lt!2038458 lt!2038453) lt!2038507)))

(declare-fun bs!1181581 () Bool)

(assert (= bs!1181581 d!1592143))

(declare-fun m!5967848 () Bool)

(assert (=> bs!1181581 m!5967848))

(assert (=> bs!1181581 m!5967740))

(assert (=> b!4944721 d!1592143))

(declare-fun d!1592145 () Bool)

(declare-fun lt!2038510 () List!57068)

(assert (=> d!1592145 (= (++!12454 testedP!110 lt!2038510) lt!2038453)))

(declare-fun e!3089462 () List!57068)

(assert (=> d!1592145 (= lt!2038510 e!3089462)))

(declare-fun c!843695 () Bool)

(assert (=> d!1592145 (= c!843695 ((_ is Cons!56944) testedP!110))))

(assert (=> d!1592145 (>= (size!37771 lt!2038453) (size!37771 testedP!110))))

(assert (=> d!1592145 (= (getSuffix!3057 lt!2038453 testedP!110) lt!2038510)))

(declare-fun b!4944787 () Bool)

(declare-fun tail!9737 (List!57068) List!57068)

(assert (=> b!4944787 (= e!3089462 (getSuffix!3057 (tail!9737 lt!2038453) (t!367604 testedP!110)))))

(declare-fun b!4944788 () Bool)

(assert (=> b!4944788 (= e!3089462 lt!2038453)))

(assert (= (and d!1592145 c!843695) b!4944787))

(assert (= (and d!1592145 (not c!843695)) b!4944788))

(declare-fun m!5967850 () Bool)

(assert (=> d!1592145 m!5967850))

(declare-fun m!5967852 () Bool)

(assert (=> d!1592145 m!5967852))

(assert (=> d!1592145 m!5967768))

(declare-fun m!5967854 () Bool)

(assert (=> b!4944787 m!5967854))

(assert (=> b!4944787 m!5967854))

(declare-fun m!5967856 () Bool)

(assert (=> b!4944787 m!5967856))

(assert (=> b!4944721 d!1592145))

(declare-fun d!1592147 () Bool)

(declare-fun lt!2038513 () Int)

(assert (=> d!1592147 (>= lt!2038513 0)))

(declare-fun e!3089465 () Int)

(assert (=> d!1592147 (= lt!2038513 e!3089465)))

(declare-fun c!843698 () Bool)

(assert (=> d!1592147 (= c!843698 ((_ is Nil!56944) testedP!110))))

(assert (=> d!1592147 (= (size!37771 testedP!110) lt!2038513)))

(declare-fun b!4944793 () Bool)

(assert (=> b!4944793 (= e!3089465 0)))

(declare-fun b!4944794 () Bool)

(assert (=> b!4944794 (= e!3089465 (+ 1 (size!37771 (t!367604 testedP!110))))))

(assert (= (and d!1592147 c!843698) b!4944793))

(assert (= (and d!1592147 (not c!843698)) b!4944794))

(declare-fun m!5967858 () Bool)

(assert (=> b!4944794 m!5967858))

(assert (=> b!4944724 d!1592147))

(declare-fun d!1592149 () Bool)

(declare-fun c!843701 () Bool)

(assert (=> d!1592149 (= c!843701 ((_ is Node!14988) (c!843668 totalInput!685)))))

(declare-fun e!3089470 () Bool)

(assert (=> d!1592149 (= (inv!74138 (c!843668 totalInput!685)) e!3089470)))

(declare-fun b!4944801 () Bool)

(declare-fun inv!74141 (Conc!14988) Bool)

(assert (=> b!4944801 (= e!3089470 (inv!74141 (c!843668 totalInput!685)))))

(declare-fun b!4944802 () Bool)

(declare-fun e!3089471 () Bool)

(assert (=> b!4944802 (= e!3089470 e!3089471)))

(declare-fun res!2109992 () Bool)

(assert (=> b!4944802 (= res!2109992 (not ((_ is Leaf!24915) (c!843668 totalInput!685))))))

(assert (=> b!4944802 (=> res!2109992 e!3089471)))

(declare-fun b!4944803 () Bool)

(declare-fun inv!74142 (Conc!14988) Bool)

(assert (=> b!4944803 (= e!3089471 (inv!74142 (c!843668 totalInput!685)))))

(assert (= (and d!1592149 c!843701) b!4944801))

(assert (= (and d!1592149 (not c!843701)) b!4944802))

(assert (= (and b!4944802 (not res!2109992)) b!4944803))

(declare-fun m!5967860 () Bool)

(assert (=> b!4944801 m!5967860))

(declare-fun m!5967862 () Bool)

(assert (=> b!4944803 m!5967862))

(assert (=> b!4944725 d!1592149))

(declare-fun b!4944831 () Bool)

(declare-fun e!3089487 () Bool)

(assert (=> b!4944831 (= e!3089487 (>= (size!37771 lt!2038453) (size!37771 testedP!110)))))

(declare-fun b!4944828 () Bool)

(declare-fun e!3089486 () Bool)

(declare-fun e!3089488 () Bool)

(assert (=> b!4944828 (= e!3089486 e!3089488)))

(declare-fun res!2110001 () Bool)

(assert (=> b!4944828 (=> (not res!2110001) (not e!3089488))))

(assert (=> b!4944828 (= res!2110001 (not ((_ is Nil!56944) lt!2038453)))))

(declare-fun b!4944829 () Bool)

(declare-fun res!2110003 () Bool)

(assert (=> b!4944829 (=> (not res!2110003) (not e!3089488))))

(declare-fun head!10598 (List!57068) C!27188)

(assert (=> b!4944829 (= res!2110003 (= (head!10598 testedP!110) (head!10598 lt!2038453)))))

(declare-fun b!4944830 () Bool)

(assert (=> b!4944830 (= e!3089488 (isPrefix!5075 (tail!9737 testedP!110) (tail!9737 lt!2038453)))))

(declare-fun d!1592151 () Bool)

(assert (=> d!1592151 e!3089487))

(declare-fun res!2110002 () Bool)

(assert (=> d!1592151 (=> res!2110002 e!3089487)))

(declare-fun lt!2038558 () Bool)

(assert (=> d!1592151 (= res!2110002 (not lt!2038558))))

(assert (=> d!1592151 (= lt!2038558 e!3089486)))

(declare-fun res!2110004 () Bool)

(assert (=> d!1592151 (=> res!2110004 e!3089486)))

(assert (=> d!1592151 (= res!2110004 ((_ is Nil!56944) testedP!110))))

(assert (=> d!1592151 (= (isPrefix!5075 testedP!110 lt!2038453) lt!2038558)))

(assert (= (and d!1592151 (not res!2110004)) b!4944828))

(assert (= (and b!4944828 res!2110001) b!4944829))

(assert (= (and b!4944829 res!2110003) b!4944830))

(assert (= (and d!1592151 (not res!2110002)) b!4944831))

(assert (=> b!4944831 m!5967852))

(assert (=> b!4944831 m!5967768))

(declare-fun m!5967864 () Bool)

(assert (=> b!4944829 m!5967864))

(declare-fun m!5967866 () Bool)

(assert (=> b!4944829 m!5967866))

(declare-fun m!5967868 () Bool)

(assert (=> b!4944830 m!5967868))

(assert (=> b!4944830 m!5967854))

(assert (=> b!4944830 m!5967868))

(assert (=> b!4944830 m!5967854))

(declare-fun m!5967870 () Bool)

(assert (=> b!4944830 m!5967870))

(assert (=> b!4944716 d!1592151))

(declare-fun b!4944843 () Bool)

(declare-fun e!3089494 () Bool)

(assert (=> b!4944843 (= e!3089494 (>= (size!37771 lt!2038455) (size!37771 testedP!110)))))

(declare-fun b!4944840 () Bool)

(declare-fun e!3089493 () Bool)

(declare-fun e!3089495 () Bool)

(assert (=> b!4944840 (= e!3089493 e!3089495)))

(declare-fun res!2110005 () Bool)

(assert (=> b!4944840 (=> (not res!2110005) (not e!3089495))))

(assert (=> b!4944840 (= res!2110005 (not ((_ is Nil!56944) lt!2038455)))))

(declare-fun b!4944841 () Bool)

(declare-fun res!2110007 () Bool)

(assert (=> b!4944841 (=> (not res!2110007) (not e!3089495))))

(assert (=> b!4944841 (= res!2110007 (= (head!10598 testedP!110) (head!10598 lt!2038455)))))

(declare-fun b!4944842 () Bool)

(assert (=> b!4944842 (= e!3089495 (isPrefix!5075 (tail!9737 testedP!110) (tail!9737 lt!2038455)))))

(declare-fun d!1592153 () Bool)

(assert (=> d!1592153 e!3089494))

(declare-fun res!2110006 () Bool)

(assert (=> d!1592153 (=> res!2110006 e!3089494)))

(declare-fun lt!2038569 () Bool)

(assert (=> d!1592153 (= res!2110006 (not lt!2038569))))

(assert (=> d!1592153 (= lt!2038569 e!3089493)))

(declare-fun res!2110008 () Bool)

(assert (=> d!1592153 (=> res!2110008 e!3089493)))

(assert (=> d!1592153 (= res!2110008 ((_ is Nil!56944) testedP!110))))

(assert (=> d!1592153 (= (isPrefix!5075 testedP!110 lt!2038455) lt!2038569)))

(assert (= (and d!1592153 (not res!2110008)) b!4944840))

(assert (= (and b!4944840 res!2110005) b!4944841))

(assert (= (and b!4944841 res!2110007) b!4944842))

(assert (= (and d!1592153 (not res!2110006)) b!4944843))

(declare-fun m!5967872 () Bool)

(assert (=> b!4944843 m!5967872))

(assert (=> b!4944843 m!5967768))

(assert (=> b!4944841 m!5967864))

(declare-fun m!5967874 () Bool)

(assert (=> b!4944841 m!5967874))

(assert (=> b!4944842 m!5967868))

(declare-fun m!5967876 () Bool)

(assert (=> b!4944842 m!5967876))

(assert (=> b!4944842 m!5967868))

(assert (=> b!4944842 m!5967876))

(declare-fun m!5967878 () Bool)

(assert (=> b!4944842 m!5967878))

(assert (=> b!4944716 d!1592153))

(declare-fun d!1592155 () Bool)

(assert (=> d!1592155 (isPrefix!5075 testedP!110 (++!12454 testedP!110 testedSuffix!70))))

(declare-fun lt!2038572 () Unit!147717)

(declare-fun choose!36437 (List!57068 List!57068) Unit!147717)

(assert (=> d!1592155 (= lt!2038572 (choose!36437 testedP!110 testedSuffix!70))))

(assert (=> d!1592155 (= (lemmaConcatTwoListThenFirstIsPrefix!3299 testedP!110 testedSuffix!70) lt!2038572)))

(declare-fun bs!1181582 () Bool)

(assert (= bs!1181582 d!1592155))

(assert (=> bs!1181582 m!5967762))

(assert (=> bs!1181582 m!5967762))

(declare-fun m!5967880 () Bool)

(assert (=> bs!1181582 m!5967880))

(declare-fun m!5967882 () Bool)

(assert (=> bs!1181582 m!5967882))

(assert (=> b!4944716 d!1592155))

(declare-fun d!1592157 () Bool)

(declare-fun list!18141 (Conc!14988) List!57068)

(assert (=> d!1592157 (= (list!18139 totalInput!685) (list!18141 (c!843668 totalInput!685)))))

(declare-fun bs!1181583 () Bool)

(assert (= bs!1181583 d!1592157))

(declare-fun m!5967884 () Bool)

(assert (=> bs!1181583 m!5967884))

(assert (=> start!520440 d!1592157))

(declare-fun b!4944857 () Bool)

(declare-fun e!3089505 () List!57068)

(assert (=> b!4944857 (= e!3089505 (Cons!56944 (h!63392 testedP!110) (++!12454 (t!367604 testedP!110) testedSuffix!70)))))

(declare-fun b!4944858 () Bool)

(declare-fun res!2110018 () Bool)

(declare-fun e!3089504 () Bool)

(assert (=> b!4944858 (=> (not res!2110018) (not e!3089504))))

(declare-fun lt!2038575 () List!57068)

(assert (=> b!4944858 (= res!2110018 (= (size!37771 lt!2038575) (+ (size!37771 testedP!110) (size!37771 testedSuffix!70))))))

(declare-fun b!4944859 () Bool)

(assert (=> b!4944859 (= e!3089504 (or (not (= testedSuffix!70 Nil!56944)) (= lt!2038575 testedP!110)))))

(declare-fun b!4944856 () Bool)

(assert (=> b!4944856 (= e!3089505 testedSuffix!70)))

(declare-fun d!1592159 () Bool)

(assert (=> d!1592159 e!3089504))

(declare-fun res!2110017 () Bool)

(assert (=> d!1592159 (=> (not res!2110017) (not e!3089504))))

(declare-fun content!10139 (List!57068) (InoxSet C!27188))

(assert (=> d!1592159 (= res!2110017 (= (content!10139 lt!2038575) ((_ map or) (content!10139 testedP!110) (content!10139 testedSuffix!70))))))

(assert (=> d!1592159 (= lt!2038575 e!3089505)))

(declare-fun c!843716 () Bool)

(assert (=> d!1592159 (= c!843716 ((_ is Nil!56944) testedP!110))))

(assert (=> d!1592159 (= (++!12454 testedP!110 testedSuffix!70) lt!2038575)))

(assert (= (and d!1592159 c!843716) b!4944856))

(assert (= (and d!1592159 (not c!843716)) b!4944857))

(assert (= (and d!1592159 res!2110017) b!4944858))

(assert (= (and b!4944858 res!2110018) b!4944859))

(declare-fun m!5967886 () Bool)

(assert (=> b!4944857 m!5967886))

(declare-fun m!5967888 () Bool)

(assert (=> b!4944858 m!5967888))

(assert (=> b!4944858 m!5967768))

(declare-fun m!5967890 () Bool)

(assert (=> b!4944858 m!5967890))

(declare-fun m!5967892 () Bool)

(assert (=> d!1592159 m!5967892))

(declare-fun m!5967894 () Bool)

(assert (=> d!1592159 m!5967894))

(declare-fun m!5967896 () Bool)

(assert (=> d!1592159 m!5967896))

(assert (=> start!520440 d!1592159))

(declare-fun d!1592161 () Bool)

(declare-fun isBalanced!4144 (Conc!14988) Bool)

(assert (=> d!1592161 (= (inv!74136 totalInput!685) (isBalanced!4144 (c!843668 totalInput!685)))))

(declare-fun bs!1181584 () Bool)

(assert (= bs!1181584 d!1592161))

(declare-fun m!5967898 () Bool)

(assert (=> bs!1181584 m!5967898))

(assert (=> start!520440 d!1592161))

(declare-fun d!1592163 () Bool)

(declare-fun lambda!246474 () Int)

(declare-fun forall!13245 (List!57069 Int) Bool)

(assert (=> d!1592163 (= (inv!74137 setElem!27986) (forall!13245 (exprs!3611 setElem!27986) lambda!246474))))

(declare-fun bs!1181585 () Bool)

(assert (= bs!1181585 d!1592163))

(declare-fun m!5967900 () Bool)

(assert (=> bs!1181585 m!5967900))

(assert (=> setNonEmpty!27986 d!1592163))

(declare-fun bs!1181586 () Bool)

(declare-fun d!1592165 () Bool)

(assert (= bs!1181586 (and d!1592165 d!1592111)))

(declare-fun lambda!246477 () Int)

(assert (=> bs!1181586 (not (= lambda!246477 lambda!246469))))

(declare-fun bs!1181587 () Bool)

(assert (= bs!1181587 (and d!1592165 b!4944781)))

(assert (=> bs!1181587 (not (= lambda!246477 lambda!246470))))

(declare-fun bs!1181588 () Bool)

(assert (= bs!1181588 (and d!1592165 b!4944782)))

(assert (=> bs!1181588 (not (= lambda!246477 lambda!246471))))

(declare-fun exists!1323 ((InoxSet Context!6222) Int) Bool)

(assert (=> d!1592165 (= (nullableZipper!854 z!3568) (exists!1323 z!3568 lambda!246477))))

(declare-fun bs!1181589 () Bool)

(assert (= bs!1181589 d!1592165))

(declare-fun m!5967936 () Bool)

(assert (=> bs!1181589 m!5967936))

(assert (=> b!4944726 d!1592165))

(declare-fun d!1592167 () Bool)

(assert (=> d!1592167 (= lt!2038453 testedP!110)))

(declare-fun lt!2038604 () Unit!147717)

(declare-fun choose!36438 (List!57068 List!57068 List!57068) Unit!147717)

(assert (=> d!1592167 (= lt!2038604 (choose!36438 lt!2038453 testedP!110 lt!2038453))))

(assert (=> d!1592167 (isPrefix!5075 lt!2038453 lt!2038453)))

(assert (=> d!1592167 (= (lemmaIsPrefixSameLengthThenSameList!1175 lt!2038453 testedP!110 lt!2038453) lt!2038604)))

(declare-fun bs!1181590 () Bool)

(assert (= bs!1181590 d!1592167))

(declare-fun m!5967940 () Bool)

(assert (=> bs!1181590 m!5967940))

(assert (=> bs!1181590 m!5967750))

(assert (=> b!4944727 d!1592167))

(declare-fun b!4944877 () Bool)

(declare-fun e!3089515 () Bool)

(assert (=> b!4944877 (= e!3089515 (>= (size!37771 lt!2038453) (size!37771 lt!2038453)))))

(declare-fun b!4944874 () Bool)

(declare-fun e!3089514 () Bool)

(declare-fun e!3089516 () Bool)

(assert (=> b!4944874 (= e!3089514 e!3089516)))

(declare-fun res!2110021 () Bool)

(assert (=> b!4944874 (=> (not res!2110021) (not e!3089516))))

(assert (=> b!4944874 (= res!2110021 (not ((_ is Nil!56944) lt!2038453)))))

(declare-fun b!4944875 () Bool)

(declare-fun res!2110023 () Bool)

(assert (=> b!4944875 (=> (not res!2110023) (not e!3089516))))

(assert (=> b!4944875 (= res!2110023 (= (head!10598 lt!2038453) (head!10598 lt!2038453)))))

(declare-fun b!4944876 () Bool)

(assert (=> b!4944876 (= e!3089516 (isPrefix!5075 (tail!9737 lt!2038453) (tail!9737 lt!2038453)))))

(declare-fun d!1592171 () Bool)

(assert (=> d!1592171 e!3089515))

(declare-fun res!2110022 () Bool)

(assert (=> d!1592171 (=> res!2110022 e!3089515)))

(declare-fun lt!2038605 () Bool)

(assert (=> d!1592171 (= res!2110022 (not lt!2038605))))

(assert (=> d!1592171 (= lt!2038605 e!3089514)))

(declare-fun res!2110024 () Bool)

(assert (=> d!1592171 (=> res!2110024 e!3089514)))

(assert (=> d!1592171 (= res!2110024 ((_ is Nil!56944) lt!2038453))))

(assert (=> d!1592171 (= (isPrefix!5075 lt!2038453 lt!2038453) lt!2038605)))

(assert (= (and d!1592171 (not res!2110024)) b!4944874))

(assert (= (and b!4944874 res!2110021) b!4944875))

(assert (= (and b!4944875 res!2110023) b!4944876))

(assert (= (and d!1592171 (not res!2110022)) b!4944877))

(assert (=> b!4944877 m!5967852))

(assert (=> b!4944877 m!5967852))

(assert (=> b!4944875 m!5967866))

(assert (=> b!4944875 m!5967866))

(assert (=> b!4944876 m!5967854))

(assert (=> b!4944876 m!5967854))

(assert (=> b!4944876 m!5967854))

(assert (=> b!4944876 m!5967854))

(declare-fun m!5967942 () Bool)

(assert (=> b!4944876 m!5967942))

(assert (=> b!4944727 d!1592171))

(declare-fun d!1592173 () Bool)

(assert (=> d!1592173 (isPrefix!5075 lt!2038453 lt!2038453)))

(declare-fun lt!2038608 () Unit!147717)

(declare-fun choose!36440 (List!57068 List!57068) Unit!147717)

(assert (=> d!1592173 (= lt!2038608 (choose!36440 lt!2038453 lt!2038453))))

(assert (=> d!1592173 (= (lemmaIsPrefixRefl!3421 lt!2038453 lt!2038453) lt!2038608)))

(declare-fun bs!1181591 () Bool)

(assert (= bs!1181591 d!1592173))

(assert (=> bs!1181591 m!5967750))

(declare-fun m!5967944 () Bool)

(assert (=> bs!1181591 m!5967944))

(assert (=> b!4944727 d!1592173))

(declare-fun d!1592175 () Bool)

(declare-fun lt!2038611 () Int)

(assert (=> d!1592175 (= lt!2038611 (size!37771 (list!18139 totalInput!685)))))

(declare-fun size!37773 (Conc!14988) Int)

(assert (=> d!1592175 (= lt!2038611 (size!37773 (c!843668 totalInput!685)))))

(assert (=> d!1592175 (= (size!37772 totalInput!685) lt!2038611)))

(declare-fun bs!1181592 () Bool)

(assert (= bs!1181592 d!1592175))

(assert (=> bs!1181592 m!5967760))

(assert (=> bs!1181592 m!5967760))

(declare-fun m!5967946 () Bool)

(assert (=> bs!1181592 m!5967946))

(declare-fun m!5967948 () Bool)

(assert (=> bs!1181592 m!5967948))

(assert (=> b!4944723 d!1592175))

(declare-fun d!1592177 () Bool)

(declare-fun lt!2038612 () Int)

(assert (=> d!1592177 (>= lt!2038612 0)))

(declare-fun e!3089517 () Int)

(assert (=> d!1592177 (= lt!2038612 e!3089517)))

(declare-fun c!843725 () Bool)

(assert (=> d!1592177 (= c!843725 ((_ is Nil!56944) (_1!34043 (findLongestMatchInnerZipper!74 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2038453 totalInputSize!132))))))

(assert (=> d!1592177 (= (size!37771 (_1!34043 (findLongestMatchInnerZipper!74 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2038453 totalInputSize!132))) lt!2038612)))

(declare-fun b!4944878 () Bool)

(assert (=> b!4944878 (= e!3089517 0)))

(declare-fun b!4944879 () Bool)

(assert (=> b!4944879 (= e!3089517 (+ 1 (size!37771 (t!367604 (_1!34043 (findLongestMatchInnerZipper!74 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2038453 totalInputSize!132))))))))

(assert (= (and d!1592177 c!843725) b!4944878))

(assert (= (and d!1592177 (not c!843725)) b!4944879))

(declare-fun m!5967950 () Bool)

(assert (=> b!4944879 m!5967950))

(assert (=> b!4944720 d!1592177))

(declare-fun d!1592179 () Bool)

(declare-fun e!3089566 () Bool)

(assert (=> d!1592179 e!3089566))

(declare-fun res!2110029 () Bool)

(assert (=> d!1592179 (=> (not res!2110029) (not e!3089566))))

(declare-fun lt!2038716 () tuple2!61480)

(assert (=> d!1592179 (= res!2110029 (= (++!12454 (_1!34043 lt!2038716) (_2!34043 lt!2038716)) lt!2038453))))

(declare-fun e!3089560 () tuple2!61480)

(assert (=> d!1592179 (= lt!2038716 e!3089560)))

(declare-fun c!843752 () Bool)

(assert (=> d!1592179 (= c!843752 (lostCauseZipper!787 z!3568))))

(declare-fun lt!2038704 () Unit!147717)

(declare-fun Unit!147726 () Unit!147717)

(assert (=> d!1592179 (= lt!2038704 Unit!147726)))

(assert (=> d!1592179 (= (getSuffix!3057 lt!2038453 testedP!110) testedSuffix!70)))

(declare-fun lt!2038702 () Unit!147717)

(declare-fun lt!2038715 () Unit!147717)

(assert (=> d!1592179 (= lt!2038702 lt!2038715)))

(declare-fun lt!2038712 () List!57068)

(assert (=> d!1592179 (= testedSuffix!70 lt!2038712)))

(assert (=> d!1592179 (= lt!2038715 (lemmaSamePrefixThenSameSuffix!2467 testedP!110 testedSuffix!70 testedP!110 lt!2038712 lt!2038453))))

(assert (=> d!1592179 (= lt!2038712 (getSuffix!3057 lt!2038453 testedP!110))))

(declare-fun lt!2038710 () Unit!147717)

(declare-fun lt!2038723 () Unit!147717)

(assert (=> d!1592179 (= lt!2038710 lt!2038723)))

(assert (=> d!1592179 (isPrefix!5075 testedP!110 (++!12454 testedP!110 testedSuffix!70))))

(assert (=> d!1592179 (= lt!2038723 (lemmaConcatTwoListThenFirstIsPrefix!3299 testedP!110 testedSuffix!70))))

(assert (=> d!1592179 (= (++!12454 testedP!110 testedSuffix!70) lt!2038453)))

(assert (=> d!1592179 (= (findLongestMatchInnerZipper!74 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2038453 totalInputSize!132) lt!2038716)))

(declare-fun b!4944947 () Bool)

(declare-fun e!3089565 () tuple2!61480)

(assert (=> b!4944947 (= e!3089565 (tuple2!61481 testedP!110 Nil!56944))))

(declare-fun b!4944948 () Bool)

(declare-fun e!3089561 () tuple2!61480)

(declare-fun lt!2038711 () tuple2!61480)

(assert (=> b!4944948 (= e!3089561 lt!2038711)))

(declare-fun bm!345092 () Bool)

(declare-fun call!345099 () List!57068)

(assert (=> bm!345092 (= call!345099 (tail!9737 testedSuffix!70))))

(declare-fun b!4944949 () Bool)

(declare-fun e!3089563 () Unit!147717)

(declare-fun Unit!147727 () Unit!147717)

(assert (=> b!4944949 (= e!3089563 Unit!147727)))

(declare-fun b!4944950 () Bool)

(declare-fun Unit!147728 () Unit!147717)

(assert (=> b!4944950 (= e!3089563 Unit!147728)))

(declare-fun lt!2038698 () Unit!147717)

(declare-fun call!345104 () Unit!147717)

(assert (=> b!4944950 (= lt!2038698 call!345104)))

(declare-fun call!345103 () Bool)

(assert (=> b!4944950 call!345103))

(declare-fun lt!2038713 () Unit!147717)

(assert (=> b!4944950 (= lt!2038713 lt!2038698)))

(declare-fun lt!2038705 () Unit!147717)

(declare-fun call!345100 () Unit!147717)

(assert (=> b!4944950 (= lt!2038705 call!345100)))

(assert (=> b!4944950 (= lt!2038453 testedP!110)))

(declare-fun lt!2038709 () Unit!147717)

(assert (=> b!4944950 (= lt!2038709 lt!2038705)))

(assert (=> b!4944950 false))

(declare-fun bm!345093 () Bool)

(declare-fun call!345101 () (InoxSet Context!6222))

(declare-fun call!345102 () C!27188)

(declare-fun derivationStepZipper!608 ((InoxSet Context!6222) C!27188) (InoxSet Context!6222))

(assert (=> bm!345093 (= call!345101 (derivationStepZipper!608 z!3568 call!345102))))

(declare-fun bm!345094 () Bool)

(assert (=> bm!345094 (= call!345100 (lemmaIsPrefixSameLengthThenSameList!1175 lt!2038453 testedP!110 lt!2038453))))

(declare-fun b!4944951 () Bool)

(declare-fun e!3089562 () Bool)

(assert (=> b!4944951 (= e!3089566 e!3089562)))

(declare-fun res!2110030 () Bool)

(assert (=> b!4944951 (=> res!2110030 e!3089562)))

(declare-fun isEmpty!30650 (List!57068) Bool)

(assert (=> b!4944951 (= res!2110030 (isEmpty!30650 (_1!34043 lt!2038716)))))

(declare-fun b!4944952 () Bool)

(declare-fun c!843757 () Bool)

(declare-fun call!345098 () Bool)

(assert (=> b!4944952 (= c!843757 call!345098)))

(declare-fun lt!2038701 () Unit!147717)

(declare-fun lt!2038708 () Unit!147717)

(assert (=> b!4944952 (= lt!2038701 lt!2038708)))

(declare-fun lt!2038721 () List!57068)

(declare-fun lt!2038703 () C!27188)

(assert (=> b!4944952 (= (++!12454 (++!12454 testedP!110 (Cons!56944 lt!2038703 Nil!56944)) lt!2038721) lt!2038453)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1429 (List!57068 C!27188 List!57068 List!57068) Unit!147717)

(assert (=> b!4944952 (= lt!2038708 (lemmaMoveElementToOtherListKeepsConcatEq!1429 testedP!110 lt!2038703 lt!2038721 lt!2038453))))

(assert (=> b!4944952 (= lt!2038721 (tail!9737 testedSuffix!70))))

(assert (=> b!4944952 (= lt!2038703 (head!10598 testedSuffix!70))))

(declare-fun lt!2038700 () Unit!147717)

(declare-fun lt!2038707 () Unit!147717)

(assert (=> b!4944952 (= lt!2038700 lt!2038707)))

(assert (=> b!4944952 (isPrefix!5075 (++!12454 testedP!110 (Cons!56944 (head!10598 (getSuffix!3057 lt!2038453 testedP!110)) Nil!56944)) lt!2038453)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!817 (List!57068 List!57068) Unit!147717)

(assert (=> b!4944952 (= lt!2038707 (lemmaAddHeadSuffixToPrefixStillPrefix!817 testedP!110 lt!2038453))))

(declare-fun lt!2038722 () List!57068)

(assert (=> b!4944952 (= lt!2038722 (++!12454 testedP!110 (Cons!56944 (head!10598 testedSuffix!70) Nil!56944)))))

(declare-fun lt!2038714 () Unit!147717)

(assert (=> b!4944952 (= lt!2038714 e!3089563)))

(declare-fun c!843754 () Bool)

(assert (=> b!4944952 (= c!843754 (= (size!37771 testedP!110) (size!37771 lt!2038453)))))

(declare-fun lt!2038718 () Unit!147717)

(declare-fun lt!2038720 () Unit!147717)

(assert (=> b!4944952 (= lt!2038718 lt!2038720)))

(assert (=> b!4944952 (<= (size!37771 testedP!110) (size!37771 lt!2038453))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!737 (List!57068 List!57068) Unit!147717)

(assert (=> b!4944952 (= lt!2038720 (lemmaIsPrefixThenSmallerEqSize!737 testedP!110 lt!2038453))))

(declare-fun e!3089567 () tuple2!61480)

(declare-fun e!3089564 () tuple2!61480)

(assert (=> b!4944952 (= e!3089567 e!3089564)))

(declare-fun b!4944953 () Bool)

(assert (=> b!4944953 (= e!3089561 (tuple2!61481 testedP!110 testedSuffix!70))))

(declare-fun bm!345095 () Bool)

(assert (=> bm!345095 (= call!345104 (lemmaIsPrefixRefl!3421 lt!2038453 lt!2038453))))

(declare-fun b!4944954 () Bool)

(assert (=> b!4944954 (= e!3089560 (tuple2!61481 Nil!56944 lt!2038453))))

(declare-fun b!4944955 () Bool)

(assert (=> b!4944955 (= e!3089562 (>= (size!37771 (_1!34043 lt!2038716)) (size!37771 testedP!110)))))

(declare-fun call!345097 () tuple2!61480)

(declare-fun bm!345096 () Bool)

(assert (=> bm!345096 (= call!345097 (findLongestMatchInnerZipper!74 call!345101 lt!2038722 (+ testedPSize!70 1) call!345099 lt!2038453 totalInputSize!132))))

(declare-fun b!4944956 () Bool)

(assert (=> b!4944956 (= e!3089560 e!3089567)))

(declare-fun c!843756 () Bool)

(assert (=> b!4944956 (= c!843756 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4944957 () Bool)

(declare-fun c!843755 () Bool)

(assert (=> b!4944957 (= c!843755 call!345098)))

(declare-fun lt!2038706 () Unit!147717)

(declare-fun lt!2038719 () Unit!147717)

(assert (=> b!4944957 (= lt!2038706 lt!2038719)))

(assert (=> b!4944957 (= lt!2038453 testedP!110)))

(assert (=> b!4944957 (= lt!2038719 call!345100)))

(declare-fun lt!2038717 () Unit!147717)

(declare-fun lt!2038699 () Unit!147717)

(assert (=> b!4944957 (= lt!2038717 lt!2038699)))

(assert (=> b!4944957 call!345103))

(assert (=> b!4944957 (= lt!2038699 call!345104)))

(assert (=> b!4944957 (= e!3089567 e!3089565)))

(declare-fun b!4944958 () Bool)

(assert (=> b!4944958 (= e!3089564 call!345097)))

(declare-fun b!4944959 () Bool)

(assert (=> b!4944959 (= e!3089564 e!3089561)))

(assert (=> b!4944959 (= lt!2038711 call!345097)))

(declare-fun c!843753 () Bool)

(assert (=> b!4944959 (= c!843753 (isEmpty!30650 (_1!34043 lt!2038711)))))

(declare-fun bm!345097 () Bool)

(assert (=> bm!345097 (= call!345098 (nullableZipper!854 z!3568))))

(declare-fun b!4944960 () Bool)

(assert (=> b!4944960 (= e!3089565 (tuple2!61481 Nil!56944 lt!2038453))))

(declare-fun bm!345098 () Bool)

(assert (=> bm!345098 (= call!345102 (head!10598 testedSuffix!70))))

(declare-fun bm!345099 () Bool)

(assert (=> bm!345099 (= call!345103 (isPrefix!5075 lt!2038453 lt!2038453))))

(assert (= (and d!1592179 c!843752) b!4944954))

(assert (= (and d!1592179 (not c!843752)) b!4944956))

(assert (= (and b!4944956 c!843756) b!4944957))

(assert (= (and b!4944956 (not c!843756)) b!4944952))

(assert (= (and b!4944957 c!843755) b!4944947))

(assert (= (and b!4944957 (not c!843755)) b!4944960))

(assert (= (and b!4944952 c!843754) b!4944950))

(assert (= (and b!4944952 (not c!843754)) b!4944949))

(assert (= (and b!4944952 c!843757) b!4944959))

(assert (= (and b!4944952 (not c!843757)) b!4944958))

(assert (= (and b!4944959 c!843753) b!4944953))

(assert (= (and b!4944959 (not c!843753)) b!4944948))

(assert (= (or b!4944959 b!4944958) bm!345092))

(assert (= (or b!4944959 b!4944958) bm!345098))

(assert (= (or b!4944959 b!4944958) bm!345093))

(assert (= (or b!4944959 b!4944958) bm!345096))

(assert (= (or b!4944957 b!4944950) bm!345095))

(assert (= (or b!4944957 b!4944950) bm!345099))

(assert (= (or b!4944957 b!4944950) bm!345094))

(assert (= (or b!4944957 b!4944952) bm!345097))

(assert (= (and d!1592179 res!2110029) b!4944951))

(assert (= (and b!4944951 (not res!2110030)) b!4944955))

(declare-fun m!5967984 () Bool)

(assert (=> bm!345093 m!5967984))

(assert (=> b!4944952 m!5967852))

(declare-fun m!5967986 () Bool)

(assert (=> b!4944952 m!5967986))

(assert (=> b!4944952 m!5967758))

(declare-fun m!5967988 () Bool)

(assert (=> b!4944952 m!5967988))

(declare-fun m!5967990 () Bool)

(assert (=> b!4944952 m!5967990))

(assert (=> b!4944952 m!5967768))

(declare-fun m!5967992 () Bool)

(assert (=> b!4944952 m!5967992))

(declare-fun m!5967994 () Bool)

(assert (=> b!4944952 m!5967994))

(declare-fun m!5967996 () Bool)

(assert (=> b!4944952 m!5967996))

(declare-fun m!5967998 () Bool)

(assert (=> b!4944952 m!5967998))

(declare-fun m!5968000 () Bool)

(assert (=> b!4944952 m!5968000))

(assert (=> b!4944952 m!5967994))

(declare-fun m!5968002 () Bool)

(assert (=> b!4944952 m!5968002))

(assert (=> b!4944952 m!5967758))

(declare-fun m!5968004 () Bool)

(assert (=> b!4944952 m!5968004))

(assert (=> b!4944952 m!5967992))

(declare-fun m!5968006 () Bool)

(assert (=> b!4944952 m!5968006))

(assert (=> bm!345097 m!5967746))

(declare-fun m!5968008 () Bool)

(assert (=> b!4944959 m!5968008))

(assert (=> d!1592179 m!5967758))

(declare-fun m!5968010 () Bool)

(assert (=> d!1592179 m!5968010))

(assert (=> d!1592179 m!5967762))

(assert (=> d!1592179 m!5967744))

(assert (=> d!1592179 m!5967762))

(assert (=> d!1592179 m!5967880))

(assert (=> d!1592179 m!5967754))

(declare-fun m!5968012 () Bool)

(assert (=> d!1592179 m!5968012))

(assert (=> bm!345092 m!5967996))

(assert (=> bm!345098 m!5968000))

(assert (=> bm!345094 m!5967748))

(declare-fun m!5968014 () Bool)

(assert (=> b!4944951 m!5968014))

(assert (=> bm!345099 m!5967750))

(declare-fun m!5968016 () Bool)

(assert (=> b!4944955 m!5968016))

(assert (=> b!4944955 m!5967768))

(declare-fun m!5968018 () Bool)

(assert (=> bm!345096 m!5968018))

(assert (=> bm!345095 m!5967752))

(assert (=> b!4944720 d!1592179))

(declare-fun tp!1387087 () Bool)

(declare-fun tp!1387088 () Bool)

(declare-fun b!4944969 () Bool)

(declare-fun e!3089573 () Bool)

(assert (=> b!4944969 (= e!3089573 (and (inv!74138 (left!41548 (c!843668 totalInput!685))) tp!1387087 (inv!74138 (right!41878 (c!843668 totalInput!685))) tp!1387088))))

(declare-fun b!4944971 () Bool)

(declare-fun e!3089572 () Bool)

(declare-fun tp!1387089 () Bool)

(assert (=> b!4944971 (= e!3089572 tp!1387089)))

(declare-fun b!4944970 () Bool)

(declare-fun inv!74144 (IArray!30037) Bool)

(assert (=> b!4944970 (= e!3089573 (and (inv!74144 (xs!18314 (c!843668 totalInput!685))) e!3089572))))

(assert (=> b!4944725 (= tp!1387055 (and (inv!74138 (c!843668 totalInput!685)) e!3089573))))

(assert (= (and b!4944725 ((_ is Node!14988) (c!843668 totalInput!685))) b!4944969))

(assert (= b!4944970 b!4944971))

(assert (= (and b!4944725 ((_ is Leaf!24915) (c!843668 totalInput!685))) b!4944970))

(declare-fun m!5968020 () Bool)

(assert (=> b!4944969 m!5968020))

(declare-fun m!5968022 () Bool)

(assert (=> b!4944969 m!5968022))

(declare-fun m!5968024 () Bool)

(assert (=> b!4944970 m!5968024))

(assert (=> b!4944725 m!5967770))

(declare-fun b!4944976 () Bool)

(declare-fun e!3089576 () Bool)

(declare-fun tp!1387092 () Bool)

(assert (=> b!4944976 (= e!3089576 (and tp_is_empty!36135 tp!1387092))))

(assert (=> b!4944722 (= tp!1387052 e!3089576)))

(assert (= (and b!4944722 ((_ is Cons!56944) (t!367604 testedSuffix!70))) b!4944976))

(declare-fun condSetEmpty!27992 () Bool)

(assert (=> setNonEmpty!27986 (= condSetEmpty!27992 (= setRest!27986 ((as const (Array Context!6222 Bool)) false)))))

(declare-fun setRes!27992 () Bool)

(assert (=> setNonEmpty!27986 (= tp!1387054 setRes!27992)))

(declare-fun setIsEmpty!27992 () Bool)

(assert (=> setIsEmpty!27992 setRes!27992))

(declare-fun setElem!27992 () Context!6222)

(declare-fun e!3089579 () Bool)

(declare-fun setNonEmpty!27992 () Bool)

(declare-fun tp!1387097 () Bool)

(assert (=> setNonEmpty!27992 (= setRes!27992 (and tp!1387097 (inv!74137 setElem!27992) e!3089579))))

(declare-fun setRest!27992 () (InoxSet Context!6222))

(assert (=> setNonEmpty!27992 (= setRest!27986 ((_ map or) (store ((as const (Array Context!6222 Bool)) false) setElem!27992 true) setRest!27992))))

(declare-fun b!4944981 () Bool)

(declare-fun tp!1387098 () Bool)

(assert (=> b!4944981 (= e!3089579 tp!1387098)))

(assert (= (and setNonEmpty!27986 condSetEmpty!27992) setIsEmpty!27992))

(assert (= (and setNonEmpty!27986 (not condSetEmpty!27992)) setNonEmpty!27992))

(assert (= setNonEmpty!27992 b!4944981))

(declare-fun m!5968026 () Bool)

(assert (=> setNonEmpty!27992 m!5968026))

(declare-fun b!4944982 () Bool)

(declare-fun e!3089580 () Bool)

(declare-fun tp!1387099 () Bool)

(assert (=> b!4944982 (= e!3089580 (and tp_is_empty!36135 tp!1387099))))

(assert (=> b!4944718 (= tp!1387051 e!3089580)))

(assert (= (and b!4944718 ((_ is Cons!56944) (t!367604 testedP!110))) b!4944982))

(declare-fun b!4944987 () Bool)

(declare-fun e!3089583 () Bool)

(declare-fun tp!1387104 () Bool)

(declare-fun tp!1387105 () Bool)

(assert (=> b!4944987 (= e!3089583 (and tp!1387104 tp!1387105))))

(assert (=> b!4944719 (= tp!1387053 e!3089583)))

(assert (= (and b!4944719 ((_ is Cons!56945) (exprs!3611 setElem!27986))) b!4944987))

(check-sat (not b!4944981) (not d!1592173) (not b!4944952) (not b!4944782) (not b!4944987) (not b!4944876) (not bm!345097) (not d!1592163) (not b!4944959) (not d!1592143) (not b!4944857) (not b!4944969) (not b!4944976) (not d!1592155) (not bm!345096) (not setNonEmpty!27992) (not b!4944725) (not d!1592111) (not b!4944801) (not bm!345094) (not b!4944831) (not d!1592159) (not d!1592167) (not d!1592165) (not b!4944829) (not b!4944877) (not d!1592157) (not b!4944830) (not b!4944982) (not d!1592161) (not b!4944841) (not bm!345044) (not b!4944843) (not b!4944842) (not bm!345045) (not d!1592175) (not b!4944858) (not b!4944955) (not b!4944970) (not bm!345099) (not b!4944787) (not b!4944803) (not bm!345095) (not b!4944794) (not b!4944781) (not b!4944875) (not bm!345093) (not b!4944879) tp_is_empty!36135 (not d!1592145) (not d!1592179) (not b!4944971) (not bm!345092) (not b!4944951) (not bm!345098))
(check-sat)
