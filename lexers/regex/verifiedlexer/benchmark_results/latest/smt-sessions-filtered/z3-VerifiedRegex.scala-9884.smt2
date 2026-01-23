; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517884 () Bool)

(assert start!517884)

(declare-fun b!4930983 () Bool)

(declare-fun res!2104309 () Bool)

(declare-fun e!3080770 () Bool)

(assert (=> b!4930983 (=> (not res!2104309) (not e!3080770))))

(declare-fun testedPSize!70 () Int)

(declare-datatypes ((C!27020 0))(
  ( (C!27021 (val!22844 Int)) )
))
(declare-datatypes ((List!56873 0))(
  ( (Nil!56749) (Cons!56749 (h!63197 C!27020) (t!367351 List!56873)) )
))
(declare-fun testedP!110 () List!56873)

(declare-fun size!37559 (List!56873) Int)

(assert (=> b!4930983 (= res!2104309 (= testedPSize!70 (size!37559 testedP!110)))))

(declare-fun b!4930984 () Bool)

(declare-fun e!3080772 () Bool)

(declare-fun lt!2029901 () Int)

(assert (=> b!4930984 (= e!3080772 (and (<= 0 testedPSize!70) (<= testedPSize!70 lt!2029901)))))

(declare-fun b!4930985 () Bool)

(declare-fun e!3080769 () Bool)

(declare-fun e!3080774 () Bool)

(assert (=> b!4930985 (= e!3080769 (not e!3080774))))

(declare-fun res!2104308 () Bool)

(assert (=> b!4930985 (=> res!2104308 e!3080774)))

(declare-fun lt!2029898 () List!56873)

(declare-fun isPrefix!4993 (List!56873 List!56873) Bool)

(assert (=> b!4930985 (= res!2104308 (not (isPrefix!4993 testedP!110 lt!2029898)))))

(declare-fun lt!2029899 () List!56873)

(assert (=> b!4930985 (isPrefix!4993 testedP!110 lt!2029899)))

(declare-datatypes ((Unit!147381 0))(
  ( (Unit!147382) )
))
(declare-fun lt!2029896 () Unit!147381)

(declare-fun testedSuffix!70 () List!56873)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3217 (List!56873 List!56873) Unit!147381)

(assert (=> b!4930985 (= lt!2029896 (lemmaConcatTwoListThenFirstIsPrefix!3217 testedP!110 testedSuffix!70))))

(declare-fun b!4930986 () Bool)

(declare-fun res!2104305 () Bool)

(assert (=> b!4930986 (=> res!2104305 e!3080772)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4930986 (= res!2104305 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4930987 () Bool)

(assert (=> b!4930987 (= e!3080774 e!3080772)))

(declare-fun res!2104307 () Bool)

(assert (=> b!4930987 (=> res!2104307 e!3080772)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13395 0))(
  ( (ElementMatch!13395 (c!840305 C!27020)) (Concat!21968 (regOne!27302 Regex!13395) (regTwo!27302 Regex!13395)) (EmptyExpr!13395) (Star!13395 (reg!13724 Regex!13395)) (EmptyLang!13395) (Union!13395 (regOne!27303 Regex!13395) (regTwo!27303 Regex!13395)) )
))
(declare-datatypes ((List!56874 0))(
  ( (Nil!56750) (Cons!56750 (h!63198 Regex!13395) (t!367352 List!56874)) )
))
(declare-datatypes ((Context!6074 0))(
  ( (Context!6075 (exprs!3537 List!56874)) )
))
(declare-fun z!3568 () (InoxSet Context!6074))

(declare-fun lostCauseZipper!713 ((InoxSet Context!6074)) Bool)

(assert (=> b!4930987 (= res!2104307 (lostCauseZipper!713 z!3568))))

(declare-fun lt!2029897 () List!56873)

(assert (=> b!4930987 (and (= testedSuffix!70 lt!2029897) (= lt!2029897 testedSuffix!70))))

(declare-fun lt!2029900 () Unit!147381)

(declare-fun lemmaSamePrefixThenSameSuffix!2391 (List!56873 List!56873 List!56873 List!56873 List!56873) Unit!147381)

(assert (=> b!4930987 (= lt!2029900 (lemmaSamePrefixThenSameSuffix!2391 testedP!110 testedSuffix!70 testedP!110 lt!2029897 lt!2029898))))

(declare-fun getSuffix!2977 (List!56873 List!56873) List!56873)

(assert (=> b!4930987 (= lt!2029897 (getSuffix!2977 lt!2029898 testedP!110))))

(declare-fun b!4930988 () Bool)

(declare-fun e!3080768 () Bool)

(declare-fun tp_is_empty!35967 () Bool)

(declare-fun tp!1384350 () Bool)

(assert (=> b!4930988 (= e!3080768 (and tp_is_empty!35967 tp!1384350))))

(declare-fun res!2104306 () Bool)

(assert (=> start!517884 (=> (not res!2104306) (not e!3080770))))

(assert (=> start!517884 (= res!2104306 (= lt!2029899 lt!2029898))))

(declare-datatypes ((IArray!29869 0))(
  ( (IArray!29870 (innerList!14992 List!56873)) )
))
(declare-datatypes ((Conc!14904 0))(
  ( (Node!14904 (left!41390 Conc!14904) (right!41720 Conc!14904) (csize!30038 Int) (cheight!15115 Int)) (Leaf!24789 (xs!18228 IArray!29869) (csize!30039 Int)) (Empty!14904) )
))
(declare-datatypes ((BalanceConc!29238 0))(
  ( (BalanceConc!29239 (c!840306 Conc!14904)) )
))
(declare-fun totalInput!685 () BalanceConc!29238)

(declare-fun list!18001 (BalanceConc!29238) List!56873)

(assert (=> start!517884 (= lt!2029898 (list!18001 totalInput!685))))

(declare-fun ++!12360 (List!56873 List!56873) List!56873)

(assert (=> start!517884 (= lt!2029899 (++!12360 testedP!110 testedSuffix!70))))

(assert (=> start!517884 e!3080770))

(assert (=> start!517884 e!3080768))

(declare-fun condSetEmpty!27632 () Bool)

(assert (=> start!517884 (= condSetEmpty!27632 (= z!3568 ((as const (Array Context!6074 Bool)) false)))))

(declare-fun setRes!27632 () Bool)

(assert (=> start!517884 setRes!27632))

(assert (=> start!517884 true))

(declare-fun e!3080767 () Bool)

(declare-fun inv!73644 (BalanceConc!29238) Bool)

(assert (=> start!517884 (and (inv!73644 totalInput!685) e!3080767)))

(declare-fun e!3080773 () Bool)

(assert (=> start!517884 e!3080773))

(declare-fun b!4930989 () Bool)

(declare-fun res!2104310 () Bool)

(assert (=> b!4930989 (=> res!2104310 e!3080772)))

(declare-fun isBalanced!4101 (Conc!14904) Bool)

(assert (=> b!4930989 (= res!2104310 (not (isBalanced!4101 (c!840306 totalInput!685))))))

(declare-fun setNonEmpty!27632 () Bool)

(declare-fun setElem!27632 () Context!6074)

(declare-fun e!3080771 () Bool)

(declare-fun tp!1384351 () Bool)

(declare-fun inv!73645 (Context!6074) Bool)

(assert (=> setNonEmpty!27632 (= setRes!27632 (and tp!1384351 (inv!73645 setElem!27632) e!3080771))))

(declare-fun setRest!27632 () (InoxSet Context!6074))

(assert (=> setNonEmpty!27632 (= z!3568 ((_ map or) (store ((as const (Array Context!6074 Bool)) false) setElem!27632 true) setRest!27632))))

(declare-fun b!4930990 () Bool)

(assert (=> b!4930990 (= e!3080770 e!3080769)))

(declare-fun res!2104304 () Bool)

(assert (=> b!4930990 (=> (not res!2104304) (not e!3080769))))

(assert (=> b!4930990 (= res!2104304 (= totalInputSize!132 lt!2029901))))

(declare-fun size!37560 (BalanceConc!29238) Int)

(assert (=> b!4930990 (= lt!2029901 (size!37560 totalInput!685))))

(declare-fun b!4930991 () Bool)

(declare-fun tp!1384353 () Bool)

(declare-fun inv!73646 (Conc!14904) Bool)

(assert (=> b!4930991 (= e!3080767 (and (inv!73646 (c!840306 totalInput!685)) tp!1384353))))

(declare-fun b!4930992 () Bool)

(declare-fun tp!1384352 () Bool)

(assert (=> b!4930992 (= e!3080771 tp!1384352)))

(declare-fun setIsEmpty!27632 () Bool)

(assert (=> setIsEmpty!27632 setRes!27632))

(declare-fun b!4930993 () Bool)

(declare-fun tp!1384349 () Bool)

(assert (=> b!4930993 (= e!3080773 (and tp_is_empty!35967 tp!1384349))))

(assert (= (and start!517884 res!2104306) b!4930983))

(assert (= (and b!4930983 res!2104309) b!4930990))

(assert (= (and b!4930990 res!2104304) b!4930985))

(assert (= (and b!4930985 (not res!2104308)) b!4930987))

(assert (= (and b!4930987 (not res!2104307)) b!4930986))

(assert (= (and b!4930986 (not res!2104305)) b!4930989))

(assert (= (and b!4930989 (not res!2104310)) b!4930984))

(get-info :version)

(assert (= (and start!517884 ((_ is Cons!56749) testedP!110)) b!4930988))

(assert (= (and start!517884 condSetEmpty!27632) setIsEmpty!27632))

(assert (= (and start!517884 (not condSetEmpty!27632)) setNonEmpty!27632))

(assert (= setNonEmpty!27632 b!4930992))

(assert (= start!517884 b!4930991))

(assert (= (and start!517884 ((_ is Cons!56749) testedSuffix!70)) b!4930993))

(declare-fun m!5951068 () Bool)

(assert (=> start!517884 m!5951068))

(declare-fun m!5951070 () Bool)

(assert (=> start!517884 m!5951070))

(declare-fun m!5951072 () Bool)

(assert (=> start!517884 m!5951072))

(declare-fun m!5951074 () Bool)

(assert (=> b!4930987 m!5951074))

(declare-fun m!5951076 () Bool)

(assert (=> b!4930987 m!5951076))

(declare-fun m!5951078 () Bool)

(assert (=> b!4930987 m!5951078))

(declare-fun m!5951080 () Bool)

(assert (=> b!4930983 m!5951080))

(declare-fun m!5951082 () Bool)

(assert (=> b!4930990 m!5951082))

(declare-fun m!5951084 () Bool)

(assert (=> b!4930991 m!5951084))

(declare-fun m!5951086 () Bool)

(assert (=> setNonEmpty!27632 m!5951086))

(declare-fun m!5951088 () Bool)

(assert (=> b!4930989 m!5951088))

(declare-fun m!5951090 () Bool)

(assert (=> b!4930985 m!5951090))

(declare-fun m!5951092 () Bool)

(assert (=> b!4930985 m!5951092))

(declare-fun m!5951094 () Bool)

(assert (=> b!4930985 m!5951094))

(check-sat (not b!4930989) (not start!517884) (not b!4930988) tp_is_empty!35967 (not b!4930990) (not setNonEmpty!27632) (not b!4930985) (not b!4930987) (not b!4930991) (not b!4930992) (not b!4930983) (not b!4930993))
(check-sat)
(get-model)

(declare-fun d!1587411 () Bool)

(declare-fun lt!2029904 () Int)

(assert (=> d!1587411 (= lt!2029904 (size!37559 (list!18001 totalInput!685)))))

(declare-fun size!37561 (Conc!14904) Int)

(assert (=> d!1587411 (= lt!2029904 (size!37561 (c!840306 totalInput!685)))))

(assert (=> d!1587411 (= (size!37560 totalInput!685) lt!2029904)))

(declare-fun bs!1180307 () Bool)

(assert (= bs!1180307 d!1587411))

(assert (=> bs!1180307 m!5951068))

(assert (=> bs!1180307 m!5951068))

(declare-fun m!5951096 () Bool)

(assert (=> bs!1180307 m!5951096))

(declare-fun m!5951098 () Bool)

(assert (=> bs!1180307 m!5951098))

(assert (=> b!4930990 d!1587411))

(declare-fun b!4931010 () Bool)

(declare-fun e!3080789 () Bool)

(declare-fun e!3080787 () Bool)

(assert (=> b!4931010 (= e!3080789 e!3080787)))

(declare-fun res!2104328 () Bool)

(assert (=> b!4931010 (=> (not res!2104328) (not e!3080787))))

(assert (=> b!4931010 (= res!2104328 (not ((_ is Nil!56749) lt!2029898)))))

(declare-fun b!4931013 () Bool)

(declare-fun e!3080788 () Bool)

(assert (=> b!4931013 (= e!3080788 (>= (size!37559 lt!2029898) (size!37559 testedP!110)))))

(declare-fun b!4931011 () Bool)

(declare-fun res!2104330 () Bool)

(assert (=> b!4931011 (=> (not res!2104330) (not e!3080787))))

(declare-fun head!10535 (List!56873) C!27020)

(assert (=> b!4931011 (= res!2104330 (= (head!10535 testedP!110) (head!10535 lt!2029898)))))

(declare-fun d!1587413 () Bool)

(assert (=> d!1587413 e!3080788))

(declare-fun res!2104327 () Bool)

(assert (=> d!1587413 (=> res!2104327 e!3080788)))

(declare-fun lt!2029909 () Bool)

(assert (=> d!1587413 (= res!2104327 (not lt!2029909))))

(assert (=> d!1587413 (= lt!2029909 e!3080789)))

(declare-fun res!2104329 () Bool)

(assert (=> d!1587413 (=> res!2104329 e!3080789)))

(assert (=> d!1587413 (= res!2104329 ((_ is Nil!56749) testedP!110))))

(assert (=> d!1587413 (= (isPrefix!4993 testedP!110 lt!2029898) lt!2029909)))

(declare-fun b!4931012 () Bool)

(declare-fun tail!9682 (List!56873) List!56873)

(assert (=> b!4931012 (= e!3080787 (isPrefix!4993 (tail!9682 testedP!110) (tail!9682 lt!2029898)))))

(assert (= (and d!1587413 (not res!2104329)) b!4931010))

(assert (= (and b!4931010 res!2104328) b!4931011))

(assert (= (and b!4931011 res!2104330) b!4931012))

(assert (= (and d!1587413 (not res!2104327)) b!4931013))

(declare-fun m!5951100 () Bool)

(assert (=> b!4931013 m!5951100))

(assert (=> b!4931013 m!5951080))

(declare-fun m!5951102 () Bool)

(assert (=> b!4931011 m!5951102))

(declare-fun m!5951104 () Bool)

(assert (=> b!4931011 m!5951104))

(declare-fun m!5951106 () Bool)

(assert (=> b!4931012 m!5951106))

(declare-fun m!5951108 () Bool)

(assert (=> b!4931012 m!5951108))

(assert (=> b!4931012 m!5951106))

(assert (=> b!4931012 m!5951108))

(declare-fun m!5951110 () Bool)

(assert (=> b!4931012 m!5951110))

(assert (=> b!4930985 d!1587413))

(declare-fun b!4931014 () Bool)

(declare-fun e!3080792 () Bool)

(declare-fun e!3080790 () Bool)

(assert (=> b!4931014 (= e!3080792 e!3080790)))

(declare-fun res!2104332 () Bool)

(assert (=> b!4931014 (=> (not res!2104332) (not e!3080790))))

(assert (=> b!4931014 (= res!2104332 (not ((_ is Nil!56749) lt!2029899)))))

(declare-fun b!4931017 () Bool)

(declare-fun e!3080791 () Bool)

(assert (=> b!4931017 (= e!3080791 (>= (size!37559 lt!2029899) (size!37559 testedP!110)))))

(declare-fun b!4931015 () Bool)

(declare-fun res!2104334 () Bool)

(assert (=> b!4931015 (=> (not res!2104334) (not e!3080790))))

(assert (=> b!4931015 (= res!2104334 (= (head!10535 testedP!110) (head!10535 lt!2029899)))))

(declare-fun d!1587415 () Bool)

(assert (=> d!1587415 e!3080791))

(declare-fun res!2104331 () Bool)

(assert (=> d!1587415 (=> res!2104331 e!3080791)))

(declare-fun lt!2029910 () Bool)

(assert (=> d!1587415 (= res!2104331 (not lt!2029910))))

(assert (=> d!1587415 (= lt!2029910 e!3080792)))

(declare-fun res!2104333 () Bool)

(assert (=> d!1587415 (=> res!2104333 e!3080792)))

(assert (=> d!1587415 (= res!2104333 ((_ is Nil!56749) testedP!110))))

(assert (=> d!1587415 (= (isPrefix!4993 testedP!110 lt!2029899) lt!2029910)))

(declare-fun b!4931016 () Bool)

(assert (=> b!4931016 (= e!3080790 (isPrefix!4993 (tail!9682 testedP!110) (tail!9682 lt!2029899)))))

(assert (= (and d!1587415 (not res!2104333)) b!4931014))

(assert (= (and b!4931014 res!2104332) b!4931015))

(assert (= (and b!4931015 res!2104334) b!4931016))

(assert (= (and d!1587415 (not res!2104331)) b!4931017))

(declare-fun m!5951112 () Bool)

(assert (=> b!4931017 m!5951112))

(assert (=> b!4931017 m!5951080))

(assert (=> b!4931015 m!5951102))

(declare-fun m!5951114 () Bool)

(assert (=> b!4931015 m!5951114))

(assert (=> b!4931016 m!5951106))

(declare-fun m!5951116 () Bool)

(assert (=> b!4931016 m!5951116))

(assert (=> b!4931016 m!5951106))

(assert (=> b!4931016 m!5951116))

(declare-fun m!5951118 () Bool)

(assert (=> b!4931016 m!5951118))

(assert (=> b!4930985 d!1587415))

(declare-fun d!1587417 () Bool)

(assert (=> d!1587417 (isPrefix!4993 testedP!110 (++!12360 testedP!110 testedSuffix!70))))

(declare-fun lt!2029914 () Unit!147381)

(declare-fun choose!36136 (List!56873 List!56873) Unit!147381)

(assert (=> d!1587417 (= lt!2029914 (choose!36136 testedP!110 testedSuffix!70))))

(assert (=> d!1587417 (= (lemmaConcatTwoListThenFirstIsPrefix!3217 testedP!110 testedSuffix!70) lt!2029914)))

(declare-fun bs!1180308 () Bool)

(assert (= bs!1180308 d!1587417))

(assert (=> bs!1180308 m!5951070))

(assert (=> bs!1180308 m!5951070))

(declare-fun m!5951132 () Bool)

(assert (=> bs!1180308 m!5951132))

(declare-fun m!5951134 () Bool)

(assert (=> bs!1180308 m!5951134))

(assert (=> b!4930985 d!1587417))

(declare-fun d!1587421 () Bool)

(declare-fun lambda!245467 () Int)

(declare-fun forall!13156 (List!56874 Int) Bool)

(assert (=> d!1587421 (= (inv!73645 setElem!27632) (forall!13156 (exprs!3537 setElem!27632) lambda!245467))))

(declare-fun bs!1180310 () Bool)

(assert (= bs!1180310 d!1587421))

(declare-fun m!5951150 () Bool)

(assert (=> bs!1180310 m!5951150))

(assert (=> setNonEmpty!27632 d!1587421))

(declare-fun bs!1180311 () Bool)

(declare-fun b!4931036 () Bool)

(declare-fun d!1587429 () Bool)

(assert (= bs!1180311 (and b!4931036 d!1587429)))

(declare-fun lambda!245481 () Int)

(declare-fun lambda!245480 () Int)

(assert (=> bs!1180311 (not (= lambda!245481 lambda!245480))))

(declare-fun bs!1180312 () Bool)

(declare-fun b!4931037 () Bool)

(assert (= bs!1180312 (and b!4931037 d!1587429)))

(declare-fun lambda!245482 () Int)

(assert (=> bs!1180312 (not (= lambda!245482 lambda!245480))))

(declare-fun bs!1180313 () Bool)

(assert (= bs!1180313 (and b!4931037 b!4931036)))

(assert (=> bs!1180313 (= lambda!245482 lambda!245481)))

(declare-fun bm!344137 () Bool)

(declare-datatypes ((List!56875 0))(
  ( (Nil!56751) (Cons!56751 (h!63199 Context!6074) (t!367355 List!56875)) )
))
(declare-fun call!344142 () List!56875)

(declare-fun toList!7951 ((InoxSet Context!6074)) List!56875)

(assert (=> bm!344137 (= call!344142 (toList!7951 z!3568))))

(declare-fun e!3080808 () Unit!147381)

(declare-fun Unit!147383 () Unit!147381)

(assert (=> b!4931036 (= e!3080808 Unit!147383)))

(declare-fun lt!2029940 () List!56875)

(assert (=> b!4931036 (= lt!2029940 call!344142)))

(declare-fun lt!2029939 () Unit!147381)

(declare-fun lemmaNotForallThenExists!189 (List!56875 Int) Unit!147381)

(assert (=> b!4931036 (= lt!2029939 (lemmaNotForallThenExists!189 lt!2029940 lambda!245480))))

(declare-fun call!344141 () Bool)

(assert (=> b!4931036 call!344141))

(declare-fun lt!2029938 () Unit!147381)

(assert (=> b!4931036 (= lt!2029938 lt!2029939)))

(declare-fun lt!2029941 () Bool)

(declare-datatypes ((Option!14169 0))(
  ( (None!14168) (Some!14168 (v!50138 List!56873)) )
))
(declare-fun isEmpty!30592 (Option!14169) Bool)

(declare-fun getLanguageWitness!627 ((InoxSet Context!6074)) Option!14169)

(assert (=> d!1587429 (= lt!2029941 (isEmpty!30592 (getLanguageWitness!627 z!3568)))))

(declare-fun forall!13157 ((InoxSet Context!6074) Int) Bool)

(assert (=> d!1587429 (= lt!2029941 (forall!13157 z!3568 lambda!245480))))

(declare-fun lt!2029942 () Unit!147381)

(assert (=> d!1587429 (= lt!2029942 e!3080808)))

(declare-fun c!840320 () Bool)

(assert (=> d!1587429 (= c!840320 (not (forall!13157 z!3568 lambda!245480)))))

(assert (=> d!1587429 (= (lostCauseZipper!713 z!3568) lt!2029941)))

(declare-fun Unit!147384 () Unit!147381)

(assert (=> b!4931037 (= e!3080808 Unit!147384)))

(declare-fun lt!2029944 () List!56875)

(assert (=> b!4931037 (= lt!2029944 call!344142)))

(declare-fun lt!2029943 () Unit!147381)

(declare-fun lemmaForallThenNotExists!172 (List!56875 Int) Unit!147381)

(assert (=> b!4931037 (= lt!2029943 (lemmaForallThenNotExists!172 lt!2029944 lambda!245480))))

(assert (=> b!4931037 (not call!344141)))

(declare-fun lt!2029945 () Unit!147381)

(assert (=> b!4931037 (= lt!2029945 lt!2029943)))

(declare-fun bm!344136 () Bool)

(declare-fun exists!1258 (List!56875 Int) Bool)

(assert (=> bm!344136 (= call!344141 (exists!1258 (ite c!840320 lt!2029940 lt!2029944) (ite c!840320 lambda!245481 lambda!245482)))))

(assert (= (and d!1587429 c!840320) b!4931036))

(assert (= (and d!1587429 (not c!840320)) b!4931037))

(assert (= (or b!4931036 b!4931037) bm!344136))

(assert (= (or b!4931036 b!4931037) bm!344137))

(declare-fun m!5951152 () Bool)

(assert (=> b!4931037 m!5951152))

(declare-fun m!5951154 () Bool)

(assert (=> b!4931036 m!5951154))

(declare-fun m!5951156 () Bool)

(assert (=> bm!344137 m!5951156))

(declare-fun m!5951158 () Bool)

(assert (=> bm!344136 m!5951158))

(declare-fun m!5951160 () Bool)

(assert (=> d!1587429 m!5951160))

(assert (=> d!1587429 m!5951160))

(declare-fun m!5951162 () Bool)

(assert (=> d!1587429 m!5951162))

(declare-fun m!5951164 () Bool)

(assert (=> d!1587429 m!5951164))

(assert (=> d!1587429 m!5951164))

(assert (=> b!4930987 d!1587429))

(declare-fun d!1587431 () Bool)

(assert (=> d!1587431 (= testedSuffix!70 lt!2029897)))

(declare-fun lt!2029948 () Unit!147381)

(declare-fun choose!36137 (List!56873 List!56873 List!56873 List!56873 List!56873) Unit!147381)

(assert (=> d!1587431 (= lt!2029948 (choose!36137 testedP!110 testedSuffix!70 testedP!110 lt!2029897 lt!2029898))))

(assert (=> d!1587431 (isPrefix!4993 testedP!110 lt!2029898)))

(assert (=> d!1587431 (= (lemmaSamePrefixThenSameSuffix!2391 testedP!110 testedSuffix!70 testedP!110 lt!2029897 lt!2029898) lt!2029948)))

(declare-fun bs!1180314 () Bool)

(assert (= bs!1180314 d!1587431))

(declare-fun m!5951166 () Bool)

(assert (=> bs!1180314 m!5951166))

(assert (=> bs!1180314 m!5951090))

(assert (=> b!4930987 d!1587431))

(declare-fun d!1587433 () Bool)

(declare-fun lt!2029951 () List!56873)

(assert (=> d!1587433 (= (++!12360 testedP!110 lt!2029951) lt!2029898)))

(declare-fun e!3080811 () List!56873)

(assert (=> d!1587433 (= lt!2029951 e!3080811)))

(declare-fun c!840323 () Bool)

(assert (=> d!1587433 (= c!840323 ((_ is Cons!56749) testedP!110))))

(assert (=> d!1587433 (>= (size!37559 lt!2029898) (size!37559 testedP!110))))

(assert (=> d!1587433 (= (getSuffix!2977 lt!2029898 testedP!110) lt!2029951)))

(declare-fun b!4931042 () Bool)

(assert (=> b!4931042 (= e!3080811 (getSuffix!2977 (tail!9682 lt!2029898) (t!367351 testedP!110)))))

(declare-fun b!4931043 () Bool)

(assert (=> b!4931043 (= e!3080811 lt!2029898)))

(assert (= (and d!1587433 c!840323) b!4931042))

(assert (= (and d!1587433 (not c!840323)) b!4931043))

(declare-fun m!5951168 () Bool)

(assert (=> d!1587433 m!5951168))

(assert (=> d!1587433 m!5951100))

(assert (=> d!1587433 m!5951080))

(assert (=> b!4931042 m!5951108))

(assert (=> b!4931042 m!5951108))

(declare-fun m!5951170 () Bool)

(assert (=> b!4931042 m!5951170))

(assert (=> b!4930987 d!1587433))

(declare-fun d!1587435 () Bool)

(declare-fun list!18002 (Conc!14904) List!56873)

(assert (=> d!1587435 (= (list!18001 totalInput!685) (list!18002 (c!840306 totalInput!685)))))

(declare-fun bs!1180315 () Bool)

(assert (= bs!1180315 d!1587435))

(declare-fun m!5951172 () Bool)

(assert (=> bs!1180315 m!5951172))

(assert (=> start!517884 d!1587435))

(declare-fun b!4931054 () Bool)

(declare-fun res!2104348 () Bool)

(declare-fun e!3080817 () Bool)

(assert (=> b!4931054 (=> (not res!2104348) (not e!3080817))))

(declare-fun lt!2029954 () List!56873)

(assert (=> b!4931054 (= res!2104348 (= (size!37559 lt!2029954) (+ (size!37559 testedP!110) (size!37559 testedSuffix!70))))))

(declare-fun b!4931052 () Bool)

(declare-fun e!3080816 () List!56873)

(assert (=> b!4931052 (= e!3080816 testedSuffix!70)))

(declare-fun b!4931053 () Bool)

(assert (=> b!4931053 (= e!3080816 (Cons!56749 (h!63197 testedP!110) (++!12360 (t!367351 testedP!110) testedSuffix!70)))))

(declare-fun b!4931055 () Bool)

(assert (=> b!4931055 (= e!3080817 (or (not (= testedSuffix!70 Nil!56749)) (= lt!2029954 testedP!110)))))

(declare-fun d!1587437 () Bool)

(assert (=> d!1587437 e!3080817))

(declare-fun res!2104347 () Bool)

(assert (=> d!1587437 (=> (not res!2104347) (not e!3080817))))

(declare-fun content!10086 (List!56873) (InoxSet C!27020))

(assert (=> d!1587437 (= res!2104347 (= (content!10086 lt!2029954) ((_ map or) (content!10086 testedP!110) (content!10086 testedSuffix!70))))))

(assert (=> d!1587437 (= lt!2029954 e!3080816)))

(declare-fun c!840326 () Bool)

(assert (=> d!1587437 (= c!840326 ((_ is Nil!56749) testedP!110))))

(assert (=> d!1587437 (= (++!12360 testedP!110 testedSuffix!70) lt!2029954)))

(assert (= (and d!1587437 c!840326) b!4931052))

(assert (= (and d!1587437 (not c!840326)) b!4931053))

(assert (= (and d!1587437 res!2104347) b!4931054))

(assert (= (and b!4931054 res!2104348) b!4931055))

(declare-fun m!5951174 () Bool)

(assert (=> b!4931054 m!5951174))

(assert (=> b!4931054 m!5951080))

(declare-fun m!5951176 () Bool)

(assert (=> b!4931054 m!5951176))

(declare-fun m!5951178 () Bool)

(assert (=> b!4931053 m!5951178))

(declare-fun m!5951180 () Bool)

(assert (=> d!1587437 m!5951180))

(declare-fun m!5951182 () Bool)

(assert (=> d!1587437 m!5951182))

(declare-fun m!5951184 () Bool)

(assert (=> d!1587437 m!5951184))

(assert (=> start!517884 d!1587437))

(declare-fun d!1587439 () Bool)

(assert (=> d!1587439 (= (inv!73644 totalInput!685) (isBalanced!4101 (c!840306 totalInput!685)))))

(declare-fun bs!1180316 () Bool)

(assert (= bs!1180316 d!1587439))

(assert (=> bs!1180316 m!5951088))

(assert (=> start!517884 d!1587439))

(declare-fun d!1587441 () Bool)

(declare-fun c!840329 () Bool)

(assert (=> d!1587441 (= c!840329 ((_ is Node!14904) (c!840306 totalInput!685)))))

(declare-fun e!3080822 () Bool)

(assert (=> d!1587441 (= (inv!73646 (c!840306 totalInput!685)) e!3080822)))

(declare-fun b!4931062 () Bool)

(declare-fun inv!73647 (Conc!14904) Bool)

(assert (=> b!4931062 (= e!3080822 (inv!73647 (c!840306 totalInput!685)))))

(declare-fun b!4931063 () Bool)

(declare-fun e!3080823 () Bool)

(assert (=> b!4931063 (= e!3080822 e!3080823)))

(declare-fun res!2104351 () Bool)

(assert (=> b!4931063 (= res!2104351 (not ((_ is Leaf!24789) (c!840306 totalInput!685))))))

(assert (=> b!4931063 (=> res!2104351 e!3080823)))

(declare-fun b!4931064 () Bool)

(declare-fun inv!73648 (Conc!14904) Bool)

(assert (=> b!4931064 (= e!3080823 (inv!73648 (c!840306 totalInput!685)))))

(assert (= (and d!1587441 c!840329) b!4931062))

(assert (= (and d!1587441 (not c!840329)) b!4931063))

(assert (= (and b!4931063 (not res!2104351)) b!4931064))

(declare-fun m!5951186 () Bool)

(assert (=> b!4931062 m!5951186))

(declare-fun m!5951188 () Bool)

(assert (=> b!4931064 m!5951188))

(assert (=> b!4930991 d!1587441))

(declare-fun d!1587443 () Bool)

(declare-fun lt!2029957 () Int)

(assert (=> d!1587443 (>= lt!2029957 0)))

(declare-fun e!3080826 () Int)

(assert (=> d!1587443 (= lt!2029957 e!3080826)))

(declare-fun c!840332 () Bool)

(assert (=> d!1587443 (= c!840332 ((_ is Nil!56749) testedP!110))))

(assert (=> d!1587443 (= (size!37559 testedP!110) lt!2029957)))

(declare-fun b!4931069 () Bool)

(assert (=> b!4931069 (= e!3080826 0)))

(declare-fun b!4931070 () Bool)

(assert (=> b!4931070 (= e!3080826 (+ 1 (size!37559 (t!367351 testedP!110))))))

(assert (= (and d!1587443 c!840332) b!4931069))

(assert (= (and d!1587443 (not c!840332)) b!4931070))

(declare-fun m!5951190 () Bool)

(assert (=> b!4931070 m!5951190))

(assert (=> b!4930983 d!1587443))

(declare-fun d!1587445 () Bool)

(declare-fun res!2104367 () Bool)

(declare-fun e!3080831 () Bool)

(assert (=> d!1587445 (=> res!2104367 e!3080831)))

(assert (=> d!1587445 (= res!2104367 (not ((_ is Node!14904) (c!840306 totalInput!685))))))

(assert (=> d!1587445 (= (isBalanced!4101 (c!840306 totalInput!685)) e!3080831)))

(declare-fun b!4931083 () Bool)

(declare-fun e!3080832 () Bool)

(declare-fun isEmpty!30593 (Conc!14904) Bool)

(assert (=> b!4931083 (= e!3080832 (not (isEmpty!30593 (right!41720 (c!840306 totalInput!685)))))))

(declare-fun b!4931084 () Bool)

(declare-fun res!2104364 () Bool)

(assert (=> b!4931084 (=> (not res!2104364) (not e!3080832))))

(assert (=> b!4931084 (= res!2104364 (not (isEmpty!30593 (left!41390 (c!840306 totalInput!685)))))))

(declare-fun b!4931085 () Bool)

(declare-fun res!2104366 () Bool)

(assert (=> b!4931085 (=> (not res!2104366) (not e!3080832))))

(assert (=> b!4931085 (= res!2104366 (isBalanced!4101 (right!41720 (c!840306 totalInput!685))))))

(declare-fun b!4931086 () Bool)

(assert (=> b!4931086 (= e!3080831 e!3080832)))

(declare-fun res!2104368 () Bool)

(assert (=> b!4931086 (=> (not res!2104368) (not e!3080832))))

(declare-fun height!1989 (Conc!14904) Int)

(assert (=> b!4931086 (= res!2104368 (<= (- 1) (- (height!1989 (left!41390 (c!840306 totalInput!685))) (height!1989 (right!41720 (c!840306 totalInput!685))))))))

(declare-fun b!4931087 () Bool)

(declare-fun res!2104365 () Bool)

(assert (=> b!4931087 (=> (not res!2104365) (not e!3080832))))

(assert (=> b!4931087 (= res!2104365 (<= (- (height!1989 (left!41390 (c!840306 totalInput!685))) (height!1989 (right!41720 (c!840306 totalInput!685)))) 1))))

(declare-fun b!4931088 () Bool)

(declare-fun res!2104369 () Bool)

(assert (=> b!4931088 (=> (not res!2104369) (not e!3080832))))

(assert (=> b!4931088 (= res!2104369 (isBalanced!4101 (left!41390 (c!840306 totalInput!685))))))

(assert (= (and d!1587445 (not res!2104367)) b!4931086))

(assert (= (and b!4931086 res!2104368) b!4931087))

(assert (= (and b!4931087 res!2104365) b!4931088))

(assert (= (and b!4931088 res!2104369) b!4931085))

(assert (= (and b!4931085 res!2104366) b!4931084))

(assert (= (and b!4931084 res!2104364) b!4931083))

(declare-fun m!5951192 () Bool)

(assert (=> b!4931084 m!5951192))

(declare-fun m!5951194 () Bool)

(assert (=> b!4931088 m!5951194))

(declare-fun m!5951196 () Bool)

(assert (=> b!4931083 m!5951196))

(declare-fun m!5951198 () Bool)

(assert (=> b!4931085 m!5951198))

(declare-fun m!5951200 () Bool)

(assert (=> b!4931086 m!5951200))

(declare-fun m!5951202 () Bool)

(assert (=> b!4931086 m!5951202))

(assert (=> b!4931087 m!5951200))

(assert (=> b!4931087 m!5951202))

(assert (=> b!4930989 d!1587445))

(declare-fun condSetEmpty!27635 () Bool)

(assert (=> setNonEmpty!27632 (= condSetEmpty!27635 (= setRest!27632 ((as const (Array Context!6074 Bool)) false)))))

(declare-fun setRes!27635 () Bool)

(assert (=> setNonEmpty!27632 (= tp!1384351 setRes!27635)))

(declare-fun setIsEmpty!27635 () Bool)

(assert (=> setIsEmpty!27635 setRes!27635))

(declare-fun setNonEmpty!27635 () Bool)

(declare-fun e!3080835 () Bool)

(declare-fun tp!1384359 () Bool)

(declare-fun setElem!27635 () Context!6074)

(assert (=> setNonEmpty!27635 (= setRes!27635 (and tp!1384359 (inv!73645 setElem!27635) e!3080835))))

(declare-fun setRest!27635 () (InoxSet Context!6074))

(assert (=> setNonEmpty!27635 (= setRest!27632 ((_ map or) (store ((as const (Array Context!6074 Bool)) false) setElem!27635 true) setRest!27635))))

(declare-fun b!4931093 () Bool)

(declare-fun tp!1384358 () Bool)

(assert (=> b!4931093 (= e!3080835 tp!1384358)))

(assert (= (and setNonEmpty!27632 condSetEmpty!27635) setIsEmpty!27635))

(assert (= (and setNonEmpty!27632 (not condSetEmpty!27635)) setNonEmpty!27635))

(assert (= setNonEmpty!27635 b!4931093))

(declare-fun m!5951204 () Bool)

(assert (=> setNonEmpty!27635 m!5951204))

(declare-fun b!4931102 () Bool)

(declare-fun tp!1384366 () Bool)

(declare-fun e!3080840 () Bool)

(declare-fun tp!1384367 () Bool)

(assert (=> b!4931102 (= e!3080840 (and (inv!73646 (left!41390 (c!840306 totalInput!685))) tp!1384367 (inv!73646 (right!41720 (c!840306 totalInput!685))) tp!1384366))))

(declare-fun b!4931104 () Bool)

(declare-fun e!3080841 () Bool)

(declare-fun tp!1384368 () Bool)

(assert (=> b!4931104 (= e!3080841 tp!1384368)))

(declare-fun b!4931103 () Bool)

(declare-fun inv!73649 (IArray!29869) Bool)

(assert (=> b!4931103 (= e!3080840 (and (inv!73649 (xs!18228 (c!840306 totalInput!685))) e!3080841))))

(assert (=> b!4930991 (= tp!1384353 (and (inv!73646 (c!840306 totalInput!685)) e!3080840))))

(assert (= (and b!4930991 ((_ is Node!14904) (c!840306 totalInput!685))) b!4931102))

(assert (= b!4931103 b!4931104))

(assert (= (and b!4930991 ((_ is Leaf!24789) (c!840306 totalInput!685))) b!4931103))

(declare-fun m!5951206 () Bool)

(assert (=> b!4931102 m!5951206))

(declare-fun m!5951208 () Bool)

(assert (=> b!4931102 m!5951208))

(declare-fun m!5951210 () Bool)

(assert (=> b!4931103 m!5951210))

(assert (=> b!4930991 m!5951084))

(declare-fun b!4931109 () Bool)

(declare-fun e!3080844 () Bool)

(declare-fun tp!1384371 () Bool)

(assert (=> b!4931109 (= e!3080844 (and tp_is_empty!35967 tp!1384371))))

(assert (=> b!4930988 (= tp!1384350 e!3080844)))

(assert (= (and b!4930988 ((_ is Cons!56749) (t!367351 testedP!110))) b!4931109))

(declare-fun b!4931114 () Bool)

(declare-fun e!3080847 () Bool)

(declare-fun tp!1384376 () Bool)

(declare-fun tp!1384377 () Bool)

(assert (=> b!4931114 (= e!3080847 (and tp!1384376 tp!1384377))))

(assert (=> b!4930992 (= tp!1384352 e!3080847)))

(assert (= (and b!4930992 ((_ is Cons!56750) (exprs!3537 setElem!27632))) b!4931114))

(declare-fun b!4931115 () Bool)

(declare-fun e!3080848 () Bool)

(declare-fun tp!1384378 () Bool)

(assert (=> b!4931115 (= e!3080848 (and tp_is_empty!35967 tp!1384378))))

(assert (=> b!4930993 (= tp!1384349 e!3080848)))

(assert (= (and b!4930993 ((_ is Cons!56749) (t!367351 testedSuffix!70))) b!4931115))

(check-sat (not d!1587431) (not b!4931064) (not b!4931036) (not b!4931070) (not b!4931054) tp_is_empty!35967 (not d!1587439) (not b!4931114) (not b!4931093) (not setNonEmpty!27635) (not d!1587417) (not b!4931053) (not b!4931103) (not b!4931109) (not b!4931011) (not b!4931083) (not b!4931012) (not d!1587435) (not b!4931084) (not b!4931088) (not b!4931016) (not b!4930991) (not d!1587433) (not b!4931062) (not b!4931042) (not b!4931015) (not b!4931017) (not d!1587411) (not b!4931037) (not b!4931115) (not b!4931087) (not b!4931104) (not d!1587429) (not d!1587421) (not bm!344136) (not d!1587437) (not b!4931086) (not bm!344137) (not b!4931085) (not b!4931102) (not b!4931013))
(check-sat)
