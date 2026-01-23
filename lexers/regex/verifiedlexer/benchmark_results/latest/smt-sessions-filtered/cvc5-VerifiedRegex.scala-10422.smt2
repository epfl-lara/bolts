; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538814 () Bool)

(assert start!538814)

(declare-fun b!5109813 () Bool)

(declare-fun e!3186982 () Bool)

(declare-fun e!3186981 () Bool)

(assert (=> b!5109813 (= e!3186982 e!3186981)))

(declare-fun res!2174965 () Bool)

(assert (=> b!5109813 (=> (not res!2174965) (not e!3186981))))

(declare-fun lt!2104342 () Int)

(declare-fun lt!2104341 () Int)

(assert (=> b!5109813 (= res!2174965 (>= lt!2104342 lt!2104341))))

(declare-datatypes ((C!28534 0))(
  ( (C!28535 (val!23919 Int)) )
))
(declare-datatypes ((List!59146 0))(
  ( (Nil!59022) (Cons!59022 (h!65470 C!28534) (t!372147 List!59146)) )
))
(declare-fun testedP!265 () List!59146)

(declare-fun size!39440 (List!59146) Int)

(assert (=> b!5109813 (= lt!2104341 (size!39440 testedP!265))))

(declare-fun knownP!20 () List!59146)

(assert (=> b!5109813 (= lt!2104342 (size!39440 knownP!20))))

(declare-fun b!5109814 () Bool)

(declare-fun res!2174973 () Bool)

(declare-fun e!3186976 () Bool)

(assert (=> b!5109814 (=> res!2174973 e!3186976)))

(assert (=> b!5109814 (= res!2174973 (= lt!2104341 lt!2104342))))

(declare-fun b!5109815 () Bool)

(declare-fun e!3186977 () Bool)

(declare-fun tp!1425593 () Bool)

(assert (=> b!5109815 (= e!3186977 tp!1425593)))

(declare-fun setRes!29664 () Bool)

(declare-fun tp!1425597 () Bool)

(declare-datatypes ((Regex!14134 0))(
  ( (ElementMatch!14134 (c!877822 C!28534)) (Concat!22979 (regOne!28780 Regex!14134) (regTwo!28780 Regex!14134)) (EmptyExpr!14134) (Star!14134 (reg!14463 Regex!14134)) (EmptyLang!14134) (Union!14134 (regOne!28781 Regex!14134) (regTwo!28781 Regex!14134)) )
))
(declare-datatypes ((List!59147 0))(
  ( (Nil!59023) (Cons!59023 (h!65471 Regex!14134) (t!372148 List!59147)) )
))
(declare-datatypes ((Context!7036 0))(
  ( (Context!7037 (exprs!4018 List!59147)) )
))
(declare-fun setElem!29664 () Context!7036)

(declare-fun setNonEmpty!29663 () Bool)

(declare-fun inv!78517 (Context!7036) Bool)

(assert (=> setNonEmpty!29663 (= setRes!29664 (and tp!1425597 (inv!78517 setElem!29664) e!3186977))))

(declare-fun baseZ!46 () (Set Context!7036))

(declare-fun setRest!29663 () (Set Context!7036))

(assert (=> setNonEmpty!29663 (= baseZ!46 (set.union (set.insert setElem!29664 (as set.empty (Set Context!7036))) setRest!29663))))

(declare-fun tp!1425592 () Bool)

(declare-fun setElem!29663 () Context!7036)

(declare-fun setNonEmpty!29664 () Bool)

(declare-fun e!3186983 () Bool)

(declare-fun setRes!29663 () Bool)

(assert (=> setNonEmpty!29664 (= setRes!29663 (and tp!1425592 (inv!78517 setElem!29663) e!3186983))))

(declare-fun z!4463 () (Set Context!7036))

(declare-fun setRest!29664 () (Set Context!7036))

(assert (=> setNonEmpty!29664 (= z!4463 (set.union (set.insert setElem!29663 (as set.empty (Set Context!7036))) setRest!29664))))

(declare-fun b!5109816 () Bool)

(declare-fun e!3186980 () Bool)

(declare-fun tp_is_empty!37541 () Bool)

(declare-fun tp!1425595 () Bool)

(assert (=> b!5109816 (= e!3186980 (and tp_is_empty!37541 tp!1425595))))

(declare-fun setIsEmpty!29663 () Bool)

(assert (=> setIsEmpty!29663 setRes!29663))

(declare-fun b!5109817 () Bool)

(declare-fun res!2174966 () Bool)

(assert (=> b!5109817 (=> res!2174966 e!3186976)))

(declare-fun input!5745 () List!59146)

(assert (=> b!5109817 (= res!2174966 (>= lt!2104341 (size!39440 input!5745)))))

(declare-fun b!5109818 () Bool)

(declare-fun tp!1425598 () Bool)

(assert (=> b!5109818 (= e!3186983 tp!1425598)))

(declare-fun b!5109819 () Bool)

(declare-fun res!2174968 () Bool)

(assert (=> b!5109819 (=> (not res!2174968) (not e!3186981))))

(declare-fun matchZipper!802 ((Set Context!7036) List!59146) Bool)

(assert (=> b!5109819 (= res!2174968 (matchZipper!802 baseZ!46 knownP!20))))

(declare-fun b!5109820 () Bool)

(declare-fun res!2174967 () Bool)

(assert (=> b!5109820 (=> (not res!2174967) (not e!3186982))))

(declare-fun isPrefix!5539 (List!59146 List!59146) Bool)

(assert (=> b!5109820 (= res!2174967 (isPrefix!5539 knownP!20 input!5745))))

(declare-fun b!5109821 () Bool)

(assert (=> b!5109821 (= e!3186981 (not e!3186976))))

(declare-fun res!2174970 () Bool)

(assert (=> b!5109821 (=> res!2174970 e!3186976)))

(declare-fun getSuffix!3213 (List!59146 List!59146) List!59146)

(assert (=> b!5109821 (= res!2174970 (not (matchZipper!802 z!4463 (getSuffix!3213 knownP!20 testedP!265))))))

(assert (=> b!5109821 (isPrefix!5539 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150121 0))(
  ( (Unit!150122) )
))
(declare-fun lt!2104343 () Unit!150121)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!676 (List!59146 List!59146 List!59146) Unit!150121)

(assert (=> b!5109821 (= lt!2104343 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!676 knownP!20 testedP!265 input!5745))))

(declare-fun b!5109812 () Bool)

(declare-fun res!2174972 () Bool)

(assert (=> b!5109812 (=> res!2174972 e!3186976)))

(declare-fun lostCauseZipper!1020 ((Set Context!7036)) Bool)

(assert (=> b!5109812 (= res!2174972 (lostCauseZipper!1020 z!4463))))

(declare-fun res!2174969 () Bool)

(assert (=> start!538814 (=> (not res!2174969) (not e!3186982))))

(assert (=> start!538814 (= res!2174969 (isPrefix!5539 testedP!265 input!5745))))

(assert (=> start!538814 e!3186982))

(declare-fun e!3186979 () Bool)

(assert (=> start!538814 e!3186979))

(declare-fun condSetEmpty!29663 () Bool)

(assert (=> start!538814 (= condSetEmpty!29663 (= z!4463 (as set.empty (Set Context!7036))))))

(assert (=> start!538814 setRes!29663))

(assert (=> start!538814 e!3186980))

(declare-fun condSetEmpty!29664 () Bool)

(assert (=> start!538814 (= condSetEmpty!29664 (= baseZ!46 (as set.empty (Set Context!7036))))))

(assert (=> start!538814 setRes!29664))

(declare-fun e!3186978 () Bool)

(assert (=> start!538814 e!3186978))

(declare-fun b!5109822 () Bool)

(declare-fun tp!1425596 () Bool)

(assert (=> b!5109822 (= e!3186978 (and tp_is_empty!37541 tp!1425596))))

(declare-fun b!5109823 () Bool)

(declare-fun res!2174971 () Bool)

(assert (=> b!5109823 (=> res!2174971 e!3186976)))

(declare-fun derivationZipper!33 ((Set Context!7036) List!59146) (Set Context!7036))

(assert (=> b!5109823 (= res!2174971 (not (= (derivationZipper!33 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5109824 () Bool)

(declare-fun tp!1425594 () Bool)

(assert (=> b!5109824 (= e!3186979 (and tp_is_empty!37541 tp!1425594))))

(declare-fun setIsEmpty!29664 () Bool)

(assert (=> setIsEmpty!29664 setRes!29664))

(declare-fun b!5109825 () Bool)

(assert (=> b!5109825 (= e!3186976 (not (= (getSuffix!3213 input!5745 testedP!265) Nil!59022)))))

(assert (= (and start!538814 res!2174969) b!5109820))

(assert (= (and b!5109820 res!2174967) b!5109813))

(assert (= (and b!5109813 res!2174965) b!5109819))

(assert (= (and b!5109819 res!2174968) b!5109821))

(assert (= (and b!5109821 (not res!2174970)) b!5109823))

(assert (= (and b!5109823 (not res!2174971)) b!5109812))

(assert (= (and b!5109812 (not res!2174972)) b!5109814))

(assert (= (and b!5109814 (not res!2174973)) b!5109817))

(assert (= (and b!5109817 (not res!2174966)) b!5109825))

(assert (= (and start!538814 (is-Cons!59022 input!5745)) b!5109824))

(assert (= (and start!538814 condSetEmpty!29663) setIsEmpty!29663))

(assert (= (and start!538814 (not condSetEmpty!29663)) setNonEmpty!29664))

(assert (= setNonEmpty!29664 b!5109818))

(assert (= (and start!538814 (is-Cons!59022 testedP!265)) b!5109816))

(assert (= (and start!538814 condSetEmpty!29664) setIsEmpty!29664))

(assert (= (and start!538814 (not condSetEmpty!29664)) setNonEmpty!29663))

(assert (= setNonEmpty!29663 b!5109815))

(assert (= (and start!538814 (is-Cons!59022 knownP!20)) b!5109822))

(declare-fun m!6166978 () Bool)

(assert (=> b!5109820 m!6166978))

(declare-fun m!6166980 () Bool)

(assert (=> setNonEmpty!29663 m!6166980))

(declare-fun m!6166982 () Bool)

(assert (=> b!5109821 m!6166982))

(assert (=> b!5109821 m!6166982))

(declare-fun m!6166984 () Bool)

(assert (=> b!5109821 m!6166984))

(declare-fun m!6166986 () Bool)

(assert (=> b!5109821 m!6166986))

(declare-fun m!6166988 () Bool)

(assert (=> b!5109821 m!6166988))

(declare-fun m!6166990 () Bool)

(assert (=> b!5109812 m!6166990))

(declare-fun m!6166992 () Bool)

(assert (=> b!5109825 m!6166992))

(declare-fun m!6166994 () Bool)

(assert (=> b!5109819 m!6166994))

(declare-fun m!6166996 () Bool)

(assert (=> b!5109823 m!6166996))

(declare-fun m!6166998 () Bool)

(assert (=> start!538814 m!6166998))

(declare-fun m!6167000 () Bool)

(assert (=> setNonEmpty!29664 m!6167000))

(declare-fun m!6167002 () Bool)

(assert (=> b!5109817 m!6167002))

(declare-fun m!6167004 () Bool)

(assert (=> b!5109813 m!6167004))

(declare-fun m!6167006 () Bool)

(assert (=> b!5109813 m!6167006))

(push 1)

(assert (not b!5109824))

(assert (not b!5109813))

(assert (not b!5109822))

(assert (not b!5109815))

(assert (not b!5109816))

(assert (not b!5109821))

(assert (not b!5109820))

(assert (not start!538814))

(assert (not b!5109817))

(assert (not setNonEmpty!29663))

(assert (not b!5109812))

(assert (not b!5109823))

(assert (not b!5109818))

(assert (not setNonEmpty!29664))

(assert (not b!5109819))

(assert tp_is_empty!37541)

(assert (not b!5109825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1651271 () Bool)

(declare-fun c!877826 () Bool)

(assert (=> d!1651271 (= c!877826 (is-Cons!59022 testedP!265))))

(declare-fun e!3187010 () (Set Context!7036))

(assert (=> d!1651271 (= (derivationZipper!33 baseZ!46 testedP!265) e!3187010)))

(declare-fun b!5109872 () Bool)

(declare-fun derivationStepZipper!773 ((Set Context!7036) C!28534) (Set Context!7036))

(assert (=> b!5109872 (= e!3187010 (derivationZipper!33 (derivationStepZipper!773 baseZ!46 (h!65470 testedP!265)) (t!372147 testedP!265)))))

(declare-fun b!5109873 () Bool)

(assert (=> b!5109873 (= e!3187010 baseZ!46)))

(assert (= (and d!1651271 c!877826) b!5109872))

(assert (= (and d!1651271 (not c!877826)) b!5109873))

(declare-fun m!6167038 () Bool)

(assert (=> b!5109872 m!6167038))

(assert (=> b!5109872 m!6167038))

(declare-fun m!6167040 () Bool)

(assert (=> b!5109872 m!6167040))

(assert (=> b!5109823 d!1651271))

(declare-fun d!1651273 () Bool)

(declare-fun lt!2104355 () Int)

(assert (=> d!1651273 (>= lt!2104355 0)))

(declare-fun e!3187013 () Int)

(assert (=> d!1651273 (= lt!2104355 e!3187013)))

(declare-fun c!877829 () Bool)

(assert (=> d!1651273 (= c!877829 (is-Nil!59022 input!5745))))

(assert (=> d!1651273 (= (size!39440 input!5745) lt!2104355)))

(declare-fun b!5109878 () Bool)

(assert (=> b!5109878 (= e!3187013 0)))

(declare-fun b!5109879 () Bool)

(assert (=> b!5109879 (= e!3187013 (+ 1 (size!39440 (t!372147 input!5745))))))

(assert (= (and d!1651273 c!877829) b!5109878))

(assert (= (and d!1651273 (not c!877829)) b!5109879))

(declare-fun m!6167042 () Bool)

(assert (=> b!5109879 m!6167042))

(assert (=> b!5109817 d!1651273))

(declare-fun d!1651275 () Bool)

(declare-fun c!877832 () Bool)

(declare-fun isEmpty!31851 (List!59146) Bool)

(assert (=> d!1651275 (= c!877832 (isEmpty!31851 knownP!20))))

(declare-fun e!3187016 () Bool)

(assert (=> d!1651275 (= (matchZipper!802 baseZ!46 knownP!20) e!3187016)))

(declare-fun b!5109884 () Bool)

(declare-fun nullableZipper!985 ((Set Context!7036)) Bool)

(assert (=> b!5109884 (= e!3187016 (nullableZipper!985 baseZ!46))))

(declare-fun b!5109885 () Bool)

(declare-fun head!10862 (List!59146) C!28534)

(declare-fun tail!10017 (List!59146) List!59146)

(assert (=> b!5109885 (= e!3187016 (matchZipper!802 (derivationStepZipper!773 baseZ!46 (head!10862 knownP!20)) (tail!10017 knownP!20)))))

(assert (= (and d!1651275 c!877832) b!5109884))

(assert (= (and d!1651275 (not c!877832)) b!5109885))

(declare-fun m!6167044 () Bool)

(assert (=> d!1651275 m!6167044))

(declare-fun m!6167046 () Bool)

(assert (=> b!5109884 m!6167046))

(declare-fun m!6167048 () Bool)

(assert (=> b!5109885 m!6167048))

(assert (=> b!5109885 m!6167048))

(declare-fun m!6167050 () Bool)

(assert (=> b!5109885 m!6167050))

(declare-fun m!6167052 () Bool)

(assert (=> b!5109885 m!6167052))

(assert (=> b!5109885 m!6167050))

(assert (=> b!5109885 m!6167052))

(declare-fun m!6167054 () Bool)

(assert (=> b!5109885 m!6167054))

(assert (=> b!5109819 d!1651275))

(declare-fun d!1651279 () Bool)

(declare-fun lambda!250169 () Int)

(declare-fun forall!13522 (List!59147 Int) Bool)

(assert (=> d!1651279 (= (inv!78517 setElem!29664) (forall!13522 (exprs!4018 setElem!29664) lambda!250169))))

(declare-fun bs!1191781 () Bool)

(assert (= bs!1191781 d!1651279))

(declare-fun m!6167102 () Bool)

(assert (=> bs!1191781 m!6167102))

(assert (=> setNonEmpty!29663 d!1651279))

(declare-fun d!1651301 () Bool)

(declare-fun e!3187054 () Bool)

(assert (=> d!1651301 e!3187054))

(declare-fun res!2175030 () Bool)

(assert (=> d!1651301 (=> res!2175030 e!3187054)))

(declare-fun lt!2104378 () Bool)

(assert (=> d!1651301 (= res!2175030 (not lt!2104378))))

(declare-fun e!3187056 () Bool)

(assert (=> d!1651301 (= lt!2104378 e!3187056)))

(declare-fun res!2175029 () Bool)

(assert (=> d!1651301 (=> res!2175029 e!3187056)))

(assert (=> d!1651301 (= res!2175029 (is-Nil!59022 knownP!20))))

(assert (=> d!1651301 (= (isPrefix!5539 knownP!20 input!5745) lt!2104378)))

(declare-fun b!5109947 () Bool)

(declare-fun res!2175031 () Bool)

(declare-fun e!3187055 () Bool)

(assert (=> b!5109947 (=> (not res!2175031) (not e!3187055))))

(assert (=> b!5109947 (= res!2175031 (= (head!10862 knownP!20) (head!10862 input!5745)))))

(declare-fun b!5109949 () Bool)

(assert (=> b!5109949 (= e!3187054 (>= (size!39440 input!5745) (size!39440 knownP!20)))))

(declare-fun b!5109946 () Bool)

(assert (=> b!5109946 (= e!3187056 e!3187055)))

(declare-fun res!2175032 () Bool)

(assert (=> b!5109946 (=> (not res!2175032) (not e!3187055))))

(assert (=> b!5109946 (= res!2175032 (not (is-Nil!59022 input!5745)))))

(declare-fun b!5109948 () Bool)

(assert (=> b!5109948 (= e!3187055 (isPrefix!5539 (tail!10017 knownP!20) (tail!10017 input!5745)))))

(assert (= (and d!1651301 (not res!2175029)) b!5109946))

(assert (= (and b!5109946 res!2175032) b!5109947))

(assert (= (and b!5109947 res!2175031) b!5109948))

(assert (= (and d!1651301 (not res!2175030)) b!5109949))

(assert (=> b!5109947 m!6167048))

(declare-fun m!6167104 () Bool)

(assert (=> b!5109947 m!6167104))

(assert (=> b!5109949 m!6167002))

(assert (=> b!5109949 m!6167006))

(assert (=> b!5109948 m!6167052))

(declare-fun m!6167106 () Bool)

(assert (=> b!5109948 m!6167106))

(assert (=> b!5109948 m!6167052))

(assert (=> b!5109948 m!6167106))

(declare-fun m!6167108 () Bool)

(assert (=> b!5109948 m!6167108))

(assert (=> b!5109820 d!1651301))

(declare-fun d!1651303 () Bool)

(declare-fun e!3187057 () Bool)

(assert (=> d!1651303 e!3187057))

(declare-fun res!2175034 () Bool)

(assert (=> d!1651303 (=> res!2175034 e!3187057)))

(declare-fun lt!2104379 () Bool)

(assert (=> d!1651303 (= res!2175034 (not lt!2104379))))

(declare-fun e!3187059 () Bool)

(assert (=> d!1651303 (= lt!2104379 e!3187059)))

(declare-fun res!2175033 () Bool)

(assert (=> d!1651303 (=> res!2175033 e!3187059)))

(assert (=> d!1651303 (= res!2175033 (is-Nil!59022 testedP!265))))

(assert (=> d!1651303 (= (isPrefix!5539 testedP!265 input!5745) lt!2104379)))

(declare-fun b!5109951 () Bool)

(declare-fun res!2175035 () Bool)

(declare-fun e!3187058 () Bool)

(assert (=> b!5109951 (=> (not res!2175035) (not e!3187058))))

(assert (=> b!5109951 (= res!2175035 (= (head!10862 testedP!265) (head!10862 input!5745)))))

(declare-fun b!5109953 () Bool)

(assert (=> b!5109953 (= e!3187057 (>= (size!39440 input!5745) (size!39440 testedP!265)))))

(declare-fun b!5109950 () Bool)

(assert (=> b!5109950 (= e!3187059 e!3187058)))

(declare-fun res!2175036 () Bool)

(assert (=> b!5109950 (=> (not res!2175036) (not e!3187058))))

(assert (=> b!5109950 (= res!2175036 (not (is-Nil!59022 input!5745)))))

(declare-fun b!5109952 () Bool)

(assert (=> b!5109952 (= e!3187058 (isPrefix!5539 (tail!10017 testedP!265) (tail!10017 input!5745)))))

(assert (= (and d!1651303 (not res!2175033)) b!5109950))

(assert (= (and b!5109950 res!2175036) b!5109951))

(assert (= (and b!5109951 res!2175035) b!5109952))

(assert (= (and d!1651303 (not res!2175034)) b!5109953))

(declare-fun m!6167110 () Bool)

(assert (=> b!5109951 m!6167110))

(assert (=> b!5109951 m!6167104))

(assert (=> b!5109953 m!6167002))

(assert (=> b!5109953 m!6167004))

(declare-fun m!6167112 () Bool)

(assert (=> b!5109952 m!6167112))

(assert (=> b!5109952 m!6167106))

(assert (=> b!5109952 m!6167112))

(assert (=> b!5109952 m!6167106))

(declare-fun m!6167114 () Bool)

(assert (=> b!5109952 m!6167114))

(assert (=> start!538814 d!1651303))

(declare-fun bs!1191782 () Bool)

(declare-fun b!5109958 () Bool)

(declare-fun d!1651305 () Bool)

(assert (= bs!1191782 (and b!5109958 d!1651305)))

(declare-fun lambda!250183 () Int)

(declare-fun lambda!250182 () Int)

(assert (=> bs!1191782 (not (= lambda!250183 lambda!250182))))

(declare-fun bs!1191783 () Bool)

(declare-fun b!5109959 () Bool)

(assert (= bs!1191783 (and b!5109959 d!1651305)))

(declare-fun lambda!250184 () Int)

(assert (=> bs!1191783 (not (= lambda!250184 lambda!250182))))

(declare-fun bs!1191784 () Bool)

(assert (= bs!1191784 (and b!5109959 b!5109958)))

(assert (=> bs!1191784 (= lambda!250184 lambda!250183)))

(declare-fun lt!2104401 () Bool)

(declare-datatypes ((Option!14656 0))(
  ( (None!14655) (Some!14655 (v!50668 List!59146)) )
))
(declare-fun isEmpty!31852 (Option!14656) Bool)

(declare-fun getLanguageWitness!769 ((Set Context!7036)) Option!14656)

(assert (=> d!1651305 (= lt!2104401 (isEmpty!31852 (getLanguageWitness!769 z!4463)))))

(declare-fun forall!13523 ((Set Context!7036) Int) Bool)

(assert (=> d!1651305 (= lt!2104401 (forall!13523 z!4463 lambda!250182))))

(declare-fun lt!2104399 () Unit!150121)

(declare-fun e!3187066 () Unit!150121)

(assert (=> d!1651305 (= lt!2104399 e!3187066)))

(declare-fun c!877861 () Bool)

(assert (=> d!1651305 (= c!877861 (not (forall!13523 z!4463 lambda!250182)))))

(assert (=> d!1651305 (= (lostCauseZipper!1020 z!4463) lt!2104401)))

(declare-fun Unit!150125 () Unit!150121)

(assert (=> b!5109959 (= e!3187066 Unit!150125)))

(declare-datatypes ((List!59150 0))(
  ( (Nil!59026) (Cons!59026 (h!65474 Context!7036) (t!372151 List!59150)) )
))
(declare-fun lt!2104402 () List!59150)

(declare-fun call!356359 () List!59150)

(assert (=> b!5109959 (= lt!2104402 call!356359)))

(declare-fun lt!2104403 () Unit!150121)

(declare-fun lemmaForallThenNotExists!279 (List!59150 Int) Unit!150121)

(assert (=> b!5109959 (= lt!2104403 (lemmaForallThenNotExists!279 lt!2104402 lambda!250182))))

(declare-fun call!356358 () Bool)

(assert (=> b!5109959 (not call!356358)))

(declare-fun lt!2104398 () Unit!150121)

(assert (=> b!5109959 (= lt!2104398 lt!2104403)))

(declare-fun Unit!150126 () Unit!150121)

(assert (=> b!5109958 (= e!3187066 Unit!150126)))

(declare-fun lt!2104396 () List!59150)

(assert (=> b!5109958 (= lt!2104396 call!356359)))

(declare-fun lt!2104397 () Unit!150121)

(declare-fun lemmaNotForallThenExists!296 (List!59150 Int) Unit!150121)

(assert (=> b!5109958 (= lt!2104397 (lemmaNotForallThenExists!296 lt!2104396 lambda!250182))))

(assert (=> b!5109958 call!356358))

(declare-fun lt!2104400 () Unit!150121)

(assert (=> b!5109958 (= lt!2104400 lt!2104397)))

(declare-fun bm!356354 () Bool)

(declare-fun exists!1429 (List!59150 Int) Bool)

(assert (=> bm!356354 (= call!356358 (exists!1429 (ite c!877861 lt!2104396 lt!2104402) (ite c!877861 lambda!250183 lambda!250184)))))

(declare-fun bm!356353 () Bool)

(declare-fun toList!8222 ((Set Context!7036)) List!59150)

(assert (=> bm!356353 (= call!356359 (toList!8222 z!4463))))

(assert (= (and d!1651305 c!877861) b!5109958))

(assert (= (and d!1651305 (not c!877861)) b!5109959))

(assert (= (or b!5109958 b!5109959) bm!356353))

(assert (= (or b!5109958 b!5109959) bm!356354))

(declare-fun m!6167116 () Bool)

(assert (=> bm!356354 m!6167116))

(declare-fun m!6167118 () Bool)

(assert (=> b!5109959 m!6167118))

(declare-fun m!6167120 () Bool)

(assert (=> b!5109958 m!6167120))

(declare-fun m!6167122 () Bool)

(assert (=> d!1651305 m!6167122))

(assert (=> d!1651305 m!6167122))

(declare-fun m!6167124 () Bool)

(assert (=> d!1651305 m!6167124))

(declare-fun m!6167126 () Bool)

(assert (=> d!1651305 m!6167126))

(assert (=> d!1651305 m!6167126))

(declare-fun m!6167128 () Bool)

(assert (=> bm!356353 m!6167128))

(assert (=> b!5109812 d!1651305))

(declare-fun bs!1191785 () Bool)

(declare-fun d!1651307 () Bool)

(assert (= bs!1191785 (and d!1651307 d!1651279)))

(declare-fun lambda!250185 () Int)

(assert (=> bs!1191785 (= lambda!250185 lambda!250169)))

(assert (=> d!1651307 (= (inv!78517 setElem!29663) (forall!13522 (exprs!4018 setElem!29663) lambda!250185))))

(declare-fun bs!1191786 () Bool)

(assert (= bs!1191786 d!1651307))

(declare-fun m!6167130 () Bool)

(assert (=> bs!1191786 m!6167130))

(assert (=> setNonEmpty!29664 d!1651307))

(declare-fun d!1651309 () Bool)

(declare-fun c!877862 () Bool)

(assert (=> d!1651309 (= c!877862 (isEmpty!31851 (getSuffix!3213 knownP!20 testedP!265)))))

(declare-fun e!3187067 () Bool)

(assert (=> d!1651309 (= (matchZipper!802 z!4463 (getSuffix!3213 knownP!20 testedP!265)) e!3187067)))

(declare-fun b!5109960 () Bool)

(assert (=> b!5109960 (= e!3187067 (nullableZipper!985 z!4463))))

(declare-fun b!5109961 () Bool)

(assert (=> b!5109961 (= e!3187067 (matchZipper!802 (derivationStepZipper!773 z!4463 (head!10862 (getSuffix!3213 knownP!20 testedP!265))) (tail!10017 (getSuffix!3213 knownP!20 testedP!265))))))

(assert (= (and d!1651309 c!877862) b!5109960))

(assert (= (and d!1651309 (not c!877862)) b!5109961))

(assert (=> d!1651309 m!6166982))

(declare-fun m!6167132 () Bool)

(assert (=> d!1651309 m!6167132))

(declare-fun m!6167134 () Bool)

(assert (=> b!5109960 m!6167134))

(assert (=> b!5109961 m!6166982))

(declare-fun m!6167136 () Bool)

(assert (=> b!5109961 m!6167136))

(assert (=> b!5109961 m!6167136))

(declare-fun m!6167138 () Bool)

(assert (=> b!5109961 m!6167138))

(assert (=> b!5109961 m!6166982))

(declare-fun m!6167140 () Bool)

(assert (=> b!5109961 m!6167140))

(assert (=> b!5109961 m!6167138))

(assert (=> b!5109961 m!6167140))

(declare-fun m!6167142 () Bool)

(assert (=> b!5109961 m!6167142))

(assert (=> b!5109821 d!1651309))

(declare-fun d!1651311 () Bool)

(declare-fun lt!2104406 () List!59146)

(declare-fun ++!12959 (List!59146 List!59146) List!59146)

(assert (=> d!1651311 (= (++!12959 testedP!265 lt!2104406) knownP!20)))

(declare-fun e!3187070 () List!59146)

(assert (=> d!1651311 (= lt!2104406 e!3187070)))

(declare-fun c!877865 () Bool)

(assert (=> d!1651311 (= c!877865 (is-Cons!59022 testedP!265))))

(assert (=> d!1651311 (>= (size!39440 knownP!20) (size!39440 testedP!265))))

(assert (=> d!1651311 (= (getSuffix!3213 knownP!20 testedP!265) lt!2104406)))

(declare-fun b!5109966 () Bool)

(assert (=> b!5109966 (= e!3187070 (getSuffix!3213 (tail!10017 knownP!20) (t!372147 testedP!265)))))

(declare-fun b!5109967 () Bool)

(assert (=> b!5109967 (= e!3187070 knownP!20)))

(assert (= (and d!1651311 c!877865) b!5109966))

(assert (= (and d!1651311 (not c!877865)) b!5109967))

(declare-fun m!6167144 () Bool)

(assert (=> d!1651311 m!6167144))

(assert (=> d!1651311 m!6167006))

(assert (=> d!1651311 m!6167004))

(assert (=> b!5109966 m!6167052))

(assert (=> b!5109966 m!6167052))

(declare-fun m!6167146 () Bool)

(assert (=> b!5109966 m!6167146))

(assert (=> b!5109821 d!1651311))

(declare-fun d!1651313 () Bool)

(declare-fun e!3187071 () Bool)

(assert (=> d!1651313 e!3187071))

(declare-fun res!2175038 () Bool)

(assert (=> d!1651313 (=> res!2175038 e!3187071)))

(declare-fun lt!2104407 () Bool)

(assert (=> d!1651313 (= res!2175038 (not lt!2104407))))

(declare-fun e!3187073 () Bool)

(assert (=> d!1651313 (= lt!2104407 e!3187073)))

(declare-fun res!2175037 () Bool)

(assert (=> d!1651313 (=> res!2175037 e!3187073)))

(assert (=> d!1651313 (= res!2175037 (is-Nil!59022 testedP!265))))

(assert (=> d!1651313 (= (isPrefix!5539 testedP!265 knownP!20) lt!2104407)))

(declare-fun b!5109969 () Bool)

(declare-fun res!2175039 () Bool)

(declare-fun e!3187072 () Bool)

(assert (=> b!5109969 (=> (not res!2175039) (not e!3187072))))

(assert (=> b!5109969 (= res!2175039 (= (head!10862 testedP!265) (head!10862 knownP!20)))))

(declare-fun b!5109971 () Bool)

(assert (=> b!5109971 (= e!3187071 (>= (size!39440 knownP!20) (size!39440 testedP!265)))))

(declare-fun b!5109968 () Bool)

(assert (=> b!5109968 (= e!3187073 e!3187072)))

(declare-fun res!2175040 () Bool)

(assert (=> b!5109968 (=> (not res!2175040) (not e!3187072))))

(assert (=> b!5109968 (= res!2175040 (not (is-Nil!59022 knownP!20)))))

(declare-fun b!5109970 () Bool)

(assert (=> b!5109970 (= e!3187072 (isPrefix!5539 (tail!10017 testedP!265) (tail!10017 knownP!20)))))

(assert (= (and d!1651313 (not res!2175037)) b!5109968))

(assert (= (and b!5109968 res!2175040) b!5109969))

(assert (= (and b!5109969 res!2175039) b!5109970))

(assert (= (and d!1651313 (not res!2175038)) b!5109971))

(assert (=> b!5109969 m!6167110))

(assert (=> b!5109969 m!6167048))

(assert (=> b!5109971 m!6167006))

(assert (=> b!5109971 m!6167004))

(assert (=> b!5109970 m!6167112))

(assert (=> b!5109970 m!6167052))

(assert (=> b!5109970 m!6167112))

(assert (=> b!5109970 m!6167052))

(declare-fun m!6167148 () Bool)

(assert (=> b!5109970 m!6167148))

(assert (=> b!5109821 d!1651313))

(declare-fun d!1651315 () Bool)

(assert (=> d!1651315 (isPrefix!5539 testedP!265 knownP!20)))

(declare-fun lt!2104410 () Unit!150121)

(declare-fun choose!37443 (List!59146 List!59146 List!59146) Unit!150121)

(assert (=> d!1651315 (= lt!2104410 (choose!37443 knownP!20 testedP!265 input!5745))))

(assert (=> d!1651315 (isPrefix!5539 knownP!20 input!5745)))

(assert (=> d!1651315 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!676 knownP!20 testedP!265 input!5745) lt!2104410)))

(declare-fun bs!1191787 () Bool)

(assert (= bs!1191787 d!1651315))

(assert (=> bs!1191787 m!6166986))

(declare-fun m!6167150 () Bool)

(assert (=> bs!1191787 m!6167150))

(assert (=> bs!1191787 m!6166978))

(assert (=> b!5109821 d!1651315))

(declare-fun d!1651317 () Bool)

(declare-fun lt!2104411 () Int)

(assert (=> d!1651317 (>= lt!2104411 0)))

(declare-fun e!3187074 () Int)

(assert (=> d!1651317 (= lt!2104411 e!3187074)))

(declare-fun c!877866 () Bool)

(assert (=> d!1651317 (= c!877866 (is-Nil!59022 testedP!265))))

(assert (=> d!1651317 (= (size!39440 testedP!265) lt!2104411)))

(declare-fun b!5109972 () Bool)

(assert (=> b!5109972 (= e!3187074 0)))

(declare-fun b!5109973 () Bool)

(assert (=> b!5109973 (= e!3187074 (+ 1 (size!39440 (t!372147 testedP!265))))))

(assert (= (and d!1651317 c!877866) b!5109972))

(assert (= (and d!1651317 (not c!877866)) b!5109973))

(declare-fun m!6167152 () Bool)

(assert (=> b!5109973 m!6167152))

(assert (=> b!5109813 d!1651317))

(declare-fun d!1651319 () Bool)

(declare-fun lt!2104412 () Int)

(assert (=> d!1651319 (>= lt!2104412 0)))

(declare-fun e!3187075 () Int)

(assert (=> d!1651319 (= lt!2104412 e!3187075)))

(declare-fun c!877867 () Bool)

(assert (=> d!1651319 (= c!877867 (is-Nil!59022 knownP!20))))

(assert (=> d!1651319 (= (size!39440 knownP!20) lt!2104412)))

(declare-fun b!5109974 () Bool)

(assert (=> b!5109974 (= e!3187075 0)))

(declare-fun b!5109975 () Bool)

(assert (=> b!5109975 (= e!3187075 (+ 1 (size!39440 (t!372147 knownP!20))))))

(assert (= (and d!1651319 c!877867) b!5109974))

(assert (= (and d!1651319 (not c!877867)) b!5109975))

(declare-fun m!6167154 () Bool)

(assert (=> b!5109975 m!6167154))

(assert (=> b!5109813 d!1651319))

(declare-fun d!1651321 () Bool)

(declare-fun lt!2104413 () List!59146)

(assert (=> d!1651321 (= (++!12959 testedP!265 lt!2104413) input!5745)))

(declare-fun e!3187076 () List!59146)

(assert (=> d!1651321 (= lt!2104413 e!3187076)))

(declare-fun c!877868 () Bool)

(assert (=> d!1651321 (= c!877868 (is-Cons!59022 testedP!265))))

(assert (=> d!1651321 (>= (size!39440 input!5745) (size!39440 testedP!265))))

(assert (=> d!1651321 (= (getSuffix!3213 input!5745 testedP!265) lt!2104413)))

(declare-fun b!5109976 () Bool)

(assert (=> b!5109976 (= e!3187076 (getSuffix!3213 (tail!10017 input!5745) (t!372147 testedP!265)))))

(declare-fun b!5109977 () Bool)

(assert (=> b!5109977 (= e!3187076 input!5745)))

(assert (= (and d!1651321 c!877868) b!5109976))

(assert (= (and d!1651321 (not c!877868)) b!5109977))

(declare-fun m!6167156 () Bool)

(assert (=> d!1651321 m!6167156))

(assert (=> d!1651321 m!6167002))

(assert (=> d!1651321 m!6167004))

(assert (=> b!5109976 m!6167106))

(assert (=> b!5109976 m!6167106))

(declare-fun m!6167158 () Bool)

(assert (=> b!5109976 m!6167158))

(assert (=> b!5109825 d!1651321))

(declare-fun b!5109982 () Bool)

(declare-fun e!3187079 () Bool)

(declare-fun tp!1425624 () Bool)

(declare-fun tp!1425625 () Bool)

(assert (=> b!5109982 (= e!3187079 (and tp!1425624 tp!1425625))))

(assert (=> b!5109815 (= tp!1425593 e!3187079)))

(assert (= (and b!5109815 (is-Cons!59023 (exprs!4018 setElem!29664))) b!5109982))

(declare-fun b!5109987 () Bool)

(declare-fun e!3187082 () Bool)

(declare-fun tp!1425628 () Bool)

(assert (=> b!5109987 (= e!3187082 (and tp_is_empty!37541 tp!1425628))))

(assert (=> b!5109822 (= tp!1425596 e!3187082)))

(assert (= (and b!5109822 (is-Cons!59022 (t!372147 knownP!20))) b!5109987))

(declare-fun b!5109988 () Bool)

(declare-fun e!3187083 () Bool)

(declare-fun tp!1425629 () Bool)

(assert (=> b!5109988 (= e!3187083 (and tp_is_empty!37541 tp!1425629))))

(assert (=> b!5109824 (= tp!1425594 e!3187083)))

(assert (= (and b!5109824 (is-Cons!59022 (t!372147 input!5745))) b!5109988))

(declare-fun condSetEmpty!29673 () Bool)

(assert (=> setNonEmpty!29663 (= condSetEmpty!29673 (= setRest!29663 (as set.empty (Set Context!7036))))))

(declare-fun setRes!29673 () Bool)

(assert (=> setNonEmpty!29663 (= tp!1425597 setRes!29673)))

(declare-fun setIsEmpty!29673 () Bool)

(assert (=> setIsEmpty!29673 setRes!29673))

(declare-fun tp!1425634 () Bool)

(declare-fun setElem!29673 () Context!7036)

(declare-fun e!3187086 () Bool)

(declare-fun setNonEmpty!29673 () Bool)

(assert (=> setNonEmpty!29673 (= setRes!29673 (and tp!1425634 (inv!78517 setElem!29673) e!3187086))))

(declare-fun setRest!29673 () (Set Context!7036))

(assert (=> setNonEmpty!29673 (= setRest!29663 (set.union (set.insert setElem!29673 (as set.empty (Set Context!7036))) setRest!29673))))

(declare-fun b!5109993 () Bool)

(declare-fun tp!1425635 () Bool)

(assert (=> b!5109993 (= e!3187086 tp!1425635)))

(assert (= (and setNonEmpty!29663 condSetEmpty!29673) setIsEmpty!29673))

(assert (= (and setNonEmpty!29663 (not condSetEmpty!29673)) setNonEmpty!29673))

(assert (= setNonEmpty!29673 b!5109993))

(declare-fun m!6167160 () Bool)

(assert (=> setNonEmpty!29673 m!6167160))

(declare-fun b!5109994 () Bool)

(declare-fun e!3187087 () Bool)

(declare-fun tp!1425636 () Bool)

(declare-fun tp!1425637 () Bool)

(assert (=> b!5109994 (= e!3187087 (and tp!1425636 tp!1425637))))

(assert (=> b!5109818 (= tp!1425598 e!3187087)))

(assert (= (and b!5109818 (is-Cons!59023 (exprs!4018 setElem!29663))) b!5109994))

(declare-fun b!5109995 () Bool)

(declare-fun e!3187088 () Bool)

(declare-fun tp!1425638 () Bool)

(assert (=> b!5109995 (= e!3187088 (and tp_is_empty!37541 tp!1425638))))

(assert (=> b!5109816 (= tp!1425595 e!3187088)))

(assert (= (and b!5109816 (is-Cons!59022 (t!372147 testedP!265))) b!5109995))

(declare-fun condSetEmpty!29674 () Bool)

(assert (=> setNonEmpty!29664 (= condSetEmpty!29674 (= setRest!29664 (as set.empty (Set Context!7036))))))

(declare-fun setRes!29674 () Bool)

(assert (=> setNonEmpty!29664 (= tp!1425592 setRes!29674)))

(declare-fun setIsEmpty!29674 () Bool)

(assert (=> setIsEmpty!29674 setRes!29674))

(declare-fun setNonEmpty!29674 () Bool)

(declare-fun tp!1425639 () Bool)

(declare-fun setElem!29674 () Context!7036)

(declare-fun e!3187089 () Bool)

(assert (=> setNonEmpty!29674 (= setRes!29674 (and tp!1425639 (inv!78517 setElem!29674) e!3187089))))

(declare-fun setRest!29674 () (Set Context!7036))

(assert (=> setNonEmpty!29674 (= setRest!29664 (set.union (set.insert setElem!29674 (as set.empty (Set Context!7036))) setRest!29674))))

(declare-fun b!5109996 () Bool)

(declare-fun tp!1425640 () Bool)

(assert (=> b!5109996 (= e!3187089 tp!1425640)))

(assert (= (and setNonEmpty!29664 condSetEmpty!29674) setIsEmpty!29674))

(assert (= (and setNonEmpty!29664 (not condSetEmpty!29674)) setNonEmpty!29674))

(assert (= setNonEmpty!29674 b!5109996))

(declare-fun m!6167162 () Bool)

(assert (=> setNonEmpty!29674 m!6167162))

(push 1)

(assert (not d!1651275))

(assert (not d!1651309))

(assert (not b!5109958))

(assert (not b!5109996))

(assert (not b!5109988))

(assert (not b!5109993))

(assert (not b!5109952))

(assert (not b!5109982))

(assert (not b!5109960))

(assert (not b!5109885))

(assert (not d!1651315))

(assert (not b!5109976))

(assert (not b!5109951))

(assert (not b!5109987))

(assert (not b!5109947))

(assert (not d!1651279))

(assert (not d!1651311))

(assert (not b!5109971))

(assert (not b!5109948))

(assert (not b!5109973))

(assert (not b!5109994))

(assert (not b!5109995))

(assert (not b!5109969))

(assert (not d!1651305))

(assert (not d!1651321))

(assert (not bm!356353))

(assert (not b!5109879))

(assert (not setNonEmpty!29673))

(assert (not b!5109949))

(assert (not b!5109970))

(assert (not setNonEmpty!29674))

(assert (not b!5109872))

(assert (not bm!356354))

(assert tp_is_empty!37541)

(assert (not b!5109961))

(assert (not b!5109975))

(assert (not d!1651307))

(assert (not b!5109959))

(assert (not b!5109953))

(assert (not b!5109884))

(assert (not b!5109966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1651331 () Bool)

(declare-fun c!877878 () Bool)

(assert (=> d!1651331 (= c!877878 (isEmpty!31851 (tail!10017 knownP!20)))))

(declare-fun e!3187110 () Bool)

(assert (=> d!1651331 (= (matchZipper!802 (derivationStepZipper!773 baseZ!46 (head!10862 knownP!20)) (tail!10017 knownP!20)) e!3187110)))

(declare-fun b!5110022 () Bool)

(assert (=> b!5110022 (= e!3187110 (nullableZipper!985 (derivationStepZipper!773 baseZ!46 (head!10862 knownP!20))))))

(declare-fun b!5110023 () Bool)

(assert (=> b!5110023 (= e!3187110 (matchZipper!802 (derivationStepZipper!773 (derivationStepZipper!773 baseZ!46 (head!10862 knownP!20)) (head!10862 (tail!10017 knownP!20))) (tail!10017 (tail!10017 knownP!20))))))

(assert (= (and d!1651331 c!877878) b!5110022))

(assert (= (and d!1651331 (not c!877878)) b!5110023))

(assert (=> d!1651331 m!6167052))

(declare-fun m!6167198 () Bool)

(assert (=> d!1651331 m!6167198))

(assert (=> b!5110022 m!6167050))

(declare-fun m!6167200 () Bool)

(assert (=> b!5110022 m!6167200))

(assert (=> b!5110023 m!6167052))

(declare-fun m!6167202 () Bool)

(assert (=> b!5110023 m!6167202))

(assert (=> b!5110023 m!6167050))

(assert (=> b!5110023 m!6167202))

(declare-fun m!6167204 () Bool)

(assert (=> b!5110023 m!6167204))

(assert (=> b!5110023 m!6167052))

(declare-fun m!6167206 () Bool)

(assert (=> b!5110023 m!6167206))

(assert (=> b!5110023 m!6167204))

(assert (=> b!5110023 m!6167206))

(declare-fun m!6167208 () Bool)

(assert (=> b!5110023 m!6167208))

(assert (=> b!5109885 d!1651331))

(declare-fun d!1651333 () Bool)

(assert (=> d!1651333 true))

(declare-fun lambda!250207 () Int)

(declare-fun flatMap!319 ((Set Context!7036) Int) (Set Context!7036))

(assert (=> d!1651333 (= (derivationStepZipper!773 baseZ!46 (head!10862 knownP!20)) (flatMap!319 baseZ!46 lambda!250207))))

(declare-fun bs!1191794 () Bool)

(assert (= bs!1191794 d!1651333))

(declare-fun m!6167210 () Bool)

(assert (=> bs!1191794 m!6167210))

(assert (=> b!5109885 d!1651333))

(declare-fun d!1651335 () Bool)

(assert (=> d!1651335 (= (head!10862 knownP!20) (h!65470 knownP!20))))

(assert (=> b!5109885 d!1651335))

(declare-fun d!1651337 () Bool)

(assert (=> d!1651337 (= (tail!10017 knownP!20) (t!372147 knownP!20))))

(assert (=> b!5109885 d!1651337))

(declare-fun d!1651339 () Bool)

(declare-fun lt!2104435 () Int)

(assert (=> d!1651339 (>= lt!2104435 0)))

(declare-fun e!3187111 () Int)

(assert (=> d!1651339 (= lt!2104435 e!3187111)))

(declare-fun c!877881 () Bool)

(assert (=> d!1651339 (= c!877881 (is-Nil!59022 (t!372147 input!5745)))))

(assert (=> d!1651339 (= (size!39440 (t!372147 input!5745)) lt!2104435)))

(declare-fun b!5110026 () Bool)

(assert (=> b!5110026 (= e!3187111 0)))

(declare-fun b!5110027 () Bool)

(assert (=> b!5110027 (= e!3187111 (+ 1 (size!39440 (t!372147 (t!372147 input!5745)))))))

(assert (= (and d!1651339 c!877881) b!5110026))

(assert (= (and d!1651339 (not c!877881)) b!5110027))

(declare-fun m!6167212 () Bool)

(assert (=> b!5110027 m!6167212))

(assert (=> b!5109879 d!1651339))

(declare-fun bs!1191795 () Bool)

(declare-fun d!1651341 () Bool)

(assert (= bs!1191795 (and d!1651341 d!1651305)))

(declare-fun lambda!250210 () Int)

(assert (=> bs!1191795 (not (= lambda!250210 lambda!250182))))

(declare-fun bs!1191796 () Bool)

(assert (= bs!1191796 (and d!1651341 b!5109958)))

(assert (=> bs!1191796 (not (= lambda!250210 lambda!250183))))

(declare-fun bs!1191797 () Bool)

(assert (= bs!1191797 (and d!1651341 b!5109959)))

(assert (=> bs!1191797 (not (= lambda!250210 lambda!250184))))

(declare-fun exists!1431 ((Set Context!7036) Int) Bool)

(assert (=> d!1651341 (= (nullableZipper!985 baseZ!46) (exists!1431 baseZ!46 lambda!250210))))

(declare-fun bs!1191798 () Bool)

(assert (= bs!1191798 d!1651341))

(declare-fun m!6167214 () Bool)

(assert (=> bs!1191798 m!6167214))

(assert (=> b!5109884 d!1651341))

(declare-fun d!1651343 () Bool)

(declare-fun lt!2104436 () List!59146)

(assert (=> d!1651343 (= (++!12959 (t!372147 testedP!265) lt!2104436) (tail!10017 input!5745))))

(declare-fun e!3187112 () List!59146)

(assert (=> d!1651343 (= lt!2104436 e!3187112)))

(declare-fun c!877884 () Bool)

(assert (=> d!1651343 (= c!877884 (is-Cons!59022 (t!372147 testedP!265)))))

(assert (=> d!1651343 (>= (size!39440 (tail!10017 input!5745)) (size!39440 (t!372147 testedP!265)))))

(assert (=> d!1651343 (= (getSuffix!3213 (tail!10017 input!5745) (t!372147 testedP!265)) lt!2104436)))

(declare-fun b!5110028 () Bool)

(assert (=> b!5110028 (= e!3187112 (getSuffix!3213 (tail!10017 (tail!10017 input!5745)) (t!372147 (t!372147 testedP!265))))))

(declare-fun b!5110029 () Bool)

(assert (=> b!5110029 (= e!3187112 (tail!10017 input!5745))))

(assert (= (and d!1651343 c!877884) b!5110028))

(assert (= (and d!1651343 (not c!877884)) b!5110029))

(declare-fun m!6167216 () Bool)

(assert (=> d!1651343 m!6167216))

(assert (=> d!1651343 m!6167106))

(declare-fun m!6167218 () Bool)

(assert (=> d!1651343 m!6167218))

(assert (=> d!1651343 m!6167152))

(assert (=> b!5110028 m!6167106))

(declare-fun m!6167220 () Bool)

(assert (=> b!5110028 m!6167220))

(assert (=> b!5110028 m!6167220))

(declare-fun m!6167222 () Bool)

(assert (=> b!5110028 m!6167222))

(assert (=> b!5109976 d!1651343))

(declare-fun d!1651345 () Bool)

(assert (=> d!1651345 (= (tail!10017 input!5745) (t!372147 input!5745))))

(assert (=> b!5109976 d!1651345))

(declare-fun d!1651347 () Bool)

(assert (=> d!1651347 (= (head!10862 testedP!265) (h!65470 testedP!265))))

(assert (=> b!5109951 d!1651347))

(declare-fun d!1651349 () Bool)

(assert (=> d!1651349 (= (head!10862 input!5745) (h!65470 input!5745))))

(assert (=> b!5109951 d!1651349))

(declare-fun d!1651351 () Bool)

(assert (=> d!1651351 (= (isEmpty!31851 knownP!20) (is-Nil!59022 knownP!20))))

(assert (=> d!1651275 d!1651351))

(declare-fun d!1651353 () Bool)

(declare-fun lt!2104437 () Int)

(assert (=> d!1651353 (>= lt!2104437 0)))

(declare-fun e!3187113 () Int)

(assert (=> d!1651353 (= lt!2104437 e!3187113)))

(declare-fun c!877885 () Bool)

(assert (=> d!1651353 (= c!877885 (is-Nil!59022 (t!372147 knownP!20)))))

(assert (=> d!1651353 (= (size!39440 (t!372147 knownP!20)) lt!2104437)))

(declare-fun b!5110030 () Bool)

(assert (=> b!5110030 (= e!3187113 0)))

(declare-fun b!5110031 () Bool)

(assert (=> b!5110031 (= e!3187113 (+ 1 (size!39440 (t!372147 (t!372147 knownP!20)))))))

(assert (= (and d!1651353 c!877885) b!5110030))

(assert (= (and d!1651353 (not c!877885)) b!5110031))

(declare-fun m!6167224 () Bool)

(assert (=> b!5110031 m!6167224))

(assert (=> b!5109975 d!1651353))

(declare-fun d!1651355 () Bool)

(assert (=> d!1651355 (= (isEmpty!31851 (getSuffix!3213 knownP!20 testedP!265)) (is-Nil!59022 (getSuffix!3213 knownP!20 testedP!265)))))

(assert (=> d!1651309 d!1651355))

(declare-fun d!1651357 () Bool)

(declare-fun c!877886 () Bool)

(assert (=> d!1651357 (= c!877886 (is-Cons!59022 (t!372147 testedP!265)))))

(declare-fun e!3187114 () (Set Context!7036))

(assert (=> d!1651357 (= (derivationZipper!33 (derivationStepZipper!773 baseZ!46 (h!65470 testedP!265)) (t!372147 testedP!265)) e!3187114)))

(declare-fun b!5110032 () Bool)

(assert (=> b!5110032 (= e!3187114 (derivationZipper!33 (derivationStepZipper!773 (derivationStepZipper!773 baseZ!46 (h!65470 testedP!265)) (h!65470 (t!372147 testedP!265))) (t!372147 (t!372147 testedP!265))))))

(declare-fun b!5110033 () Bool)

(assert (=> b!5110033 (= e!3187114 (derivationStepZipper!773 baseZ!46 (h!65470 testedP!265)))))

(assert (= (and d!1651357 c!877886) b!5110032))

(assert (= (and d!1651357 (not c!877886)) b!5110033))

(assert (=> b!5110032 m!6167038))

(declare-fun m!6167226 () Bool)

(assert (=> b!5110032 m!6167226))

(assert (=> b!5110032 m!6167226))

(declare-fun m!6167228 () Bool)

(assert (=> b!5110032 m!6167228))

(assert (=> b!5109872 d!1651357))

(declare-fun bs!1191799 () Bool)

(declare-fun d!1651359 () Bool)

(assert (= bs!1191799 (and d!1651359 d!1651333)))

(declare-fun lambda!250211 () Int)

(assert (=> bs!1191799 (= (= (h!65470 testedP!265) (head!10862 knownP!20)) (= lambda!250211 lambda!250207))))

(assert (=> d!1651359 true))

(assert (=> d!1651359 (= (derivationStepZipper!773 baseZ!46 (h!65470 testedP!265)) (flatMap!319 baseZ!46 lambda!250211))))

(declare-fun bs!1191800 () Bool)

(assert (= bs!1191800 d!1651359))

(declare-fun m!6167230 () Bool)

(assert (=> bs!1191800 m!6167230))

(assert (=> b!5109872 d!1651359))

(declare-fun bs!1191801 () Bool)

(declare-fun d!1651361 () Bool)

(assert (= bs!1191801 (and d!1651361 d!1651305)))

(declare-fun lambda!250212 () Int)

(assert (=> bs!1191801 (not (= lambda!250212 lambda!250182))))

(declare-fun bs!1191802 () Bool)

(assert (= bs!1191802 (and d!1651361 b!5109958)))

(assert (=> bs!1191802 (not (= lambda!250212 lambda!250183))))

(declare-fun bs!1191803 () Bool)

(assert (= bs!1191803 (and d!1651361 b!5109959)))

(assert (=> bs!1191803 (not (= lambda!250212 lambda!250184))))

(declare-fun bs!1191804 () Bool)

(assert (= bs!1191804 (and d!1651361 d!1651341)))

(assert (=> bs!1191804 (= lambda!250212 lambda!250210)))

(assert (=> d!1651361 (= (nullableZipper!985 z!4463) (exists!1431 z!4463 lambda!250212))))

(declare-fun bs!1191805 () Bool)

(assert (= bs!1191805 d!1651361))

(declare-fun m!6167232 () Bool)

(assert (=> bs!1191805 m!6167232))

(assert (=> b!5109960 d!1651361))

(declare-fun b!5110043 () Bool)

(declare-fun e!3187119 () List!59146)

(assert (=> b!5110043 (= e!3187119 (Cons!59022 (h!65470 testedP!265) (++!12959 (t!372147 testedP!265) lt!2104413)))))

(declare-fun b!5110042 () Bool)

(assert (=> b!5110042 (= e!3187119 lt!2104413)))

(declare-fun d!1651363 () Bool)

(declare-fun e!3187120 () Bool)

(assert (=> d!1651363 e!3187120))

(declare-fun res!2175046 () Bool)

(assert (=> d!1651363 (=> (not res!2175046) (not e!3187120))))

(declare-fun lt!2104440 () List!59146)

(declare-fun content!10484 (List!59146) (Set C!28534))

(assert (=> d!1651363 (= res!2175046 (= (content!10484 lt!2104440) (set.union (content!10484 testedP!265) (content!10484 lt!2104413))))))

(assert (=> d!1651363 (= lt!2104440 e!3187119)))

(declare-fun c!877889 () Bool)

(assert (=> d!1651363 (= c!877889 (is-Nil!59022 testedP!265))))

(assert (=> d!1651363 (= (++!12959 testedP!265 lt!2104413) lt!2104440)))

(declare-fun b!5110045 () Bool)

(assert (=> b!5110045 (= e!3187120 (or (not (= lt!2104413 Nil!59022)) (= lt!2104440 testedP!265)))))

(declare-fun b!5110044 () Bool)

(declare-fun res!2175045 () Bool)

(assert (=> b!5110044 (=> (not res!2175045) (not e!3187120))))

(assert (=> b!5110044 (= res!2175045 (= (size!39440 lt!2104440) (+ (size!39440 testedP!265) (size!39440 lt!2104413))))))

(assert (= (and d!1651363 c!877889) b!5110042))

(assert (= (and d!1651363 (not c!877889)) b!5110043))

(assert (= (and d!1651363 res!2175046) b!5110044))

(assert (= (and b!5110044 res!2175045) b!5110045))

(declare-fun m!6167234 () Bool)

(assert (=> b!5110043 m!6167234))

(declare-fun m!6167236 () Bool)

(assert (=> d!1651363 m!6167236))

(declare-fun m!6167238 () Bool)

(assert (=> d!1651363 m!6167238))

(declare-fun m!6167240 () Bool)

(assert (=> d!1651363 m!6167240))

(declare-fun m!6167242 () Bool)

(assert (=> b!5110044 m!6167242))

(assert (=> b!5110044 m!6167004))

(declare-fun m!6167244 () Bool)

(assert (=> b!5110044 m!6167244))

(assert (=> d!1651321 d!1651363))

(assert (=> d!1651321 d!1651273))

(assert (=> d!1651321 d!1651317))

(declare-fun d!1651365 () Bool)

(declare-fun c!877890 () Bool)

(assert (=> d!1651365 (= c!877890 (isEmpty!31851 (tail!10017 (getSuffix!3213 knownP!20 testedP!265))))))

(declare-fun e!3187121 () Bool)

(assert (=> d!1651365 (= (matchZipper!802 (derivationStepZipper!773 z!4463 (head!10862 (getSuffix!3213 knownP!20 testedP!265))) (tail!10017 (getSuffix!3213 knownP!20 testedP!265))) e!3187121)))

(declare-fun b!5110046 () Bool)

(assert (=> b!5110046 (= e!3187121 (nullableZipper!985 (derivationStepZipper!773 z!4463 (head!10862 (getSuffix!3213 knownP!20 testedP!265)))))))

(declare-fun b!5110047 () Bool)

(assert (=> b!5110047 (= e!3187121 (matchZipper!802 (derivationStepZipper!773 (derivationStepZipper!773 z!4463 (head!10862 (getSuffix!3213 knownP!20 testedP!265))) (head!10862 (tail!10017 (getSuffix!3213 knownP!20 testedP!265)))) (tail!10017 (tail!10017 (getSuffix!3213 knownP!20 testedP!265)))))))

(assert (= (and d!1651365 c!877890) b!5110046))

(assert (= (and d!1651365 (not c!877890)) b!5110047))

(assert (=> d!1651365 m!6167140))

(declare-fun m!6167246 () Bool)

(assert (=> d!1651365 m!6167246))

(assert (=> b!5110046 m!6167138))

(declare-fun m!6167248 () Bool)

(assert (=> b!5110046 m!6167248))

(assert (=> b!5110047 m!6167140))

(declare-fun m!6167250 () Bool)

(assert (=> b!5110047 m!6167250))

(assert (=> b!5110047 m!6167138))

(assert (=> b!5110047 m!6167250))

(declare-fun m!6167252 () Bool)

(assert (=> b!5110047 m!6167252))

(assert (=> b!5110047 m!6167140))

(declare-fun m!6167254 () Bool)

(assert (=> b!5110047 m!6167254))

(assert (=> b!5110047 m!6167252))

(assert (=> b!5110047 m!6167254))

(declare-fun m!6167256 () Bool)

(assert (=> b!5110047 m!6167256))

(assert (=> b!5109961 d!1651365))

(declare-fun bs!1191806 () Bool)

(declare-fun d!1651367 () Bool)

(assert (= bs!1191806 (and d!1651367 d!1651333)))

(declare-fun lambda!250213 () Int)

(assert (=> bs!1191806 (= (= (head!10862 (getSuffix!3213 knownP!20 testedP!265)) (head!10862 knownP!20)) (= lambda!250213 lambda!250207))))

(declare-fun bs!1191807 () Bool)

(assert (= bs!1191807 (and d!1651367 d!1651359)))

(assert (=> bs!1191807 (= (= (head!10862 (getSuffix!3213 knownP!20 testedP!265)) (h!65470 testedP!265)) (= lambda!250213 lambda!250211))))

(assert (=> d!1651367 true))

(assert (=> d!1651367 (= (derivationStepZipper!773 z!4463 (head!10862 (getSuffix!3213 knownP!20 testedP!265))) (flatMap!319 z!4463 lambda!250213))))

(declare-fun bs!1191808 () Bool)

(assert (= bs!1191808 d!1651367))

(declare-fun m!6167258 () Bool)

(assert (=> bs!1191808 m!6167258))

(assert (=> b!5109961 d!1651367))

(declare-fun d!1651369 () Bool)

(assert (=> d!1651369 (= (head!10862 (getSuffix!3213 knownP!20 testedP!265)) (h!65470 (getSuffix!3213 knownP!20 testedP!265)))))

(assert (=> b!5109961 d!1651369))

(declare-fun d!1651371 () Bool)

(assert (=> d!1651371 (= (tail!10017 (getSuffix!3213 knownP!20 testedP!265)) (t!372147 (getSuffix!3213 knownP!20 testedP!265)))))

(assert (=> b!5109961 d!1651371))

(assert (=> d!1651315 d!1651313))

(declare-fun d!1651373 () Bool)

(assert (=> d!1651373 (isPrefix!5539 testedP!265 knownP!20)))

(assert (=> d!1651373 true))

(declare-fun _$69!337 () Unit!150121)

(assert (=> d!1651373 (= (choose!37443 knownP!20 testedP!265 input!5745) _$69!337)))

(declare-fun bs!1191809 () Bool)

(assert (= bs!1191809 d!1651373))

(assert (=> bs!1191809 m!6166986))

(assert (=> d!1651315 d!1651373))

(assert (=> d!1651315 d!1651301))

(declare-fun b!5110049 () Bool)

(declare-fun e!3187122 () List!59146)

(assert (=> b!5110049 (= e!3187122 (Cons!59022 (h!65470 testedP!265) (++!12959 (t!372147 testedP!265) lt!2104406)))))

(declare-fun b!5110048 () Bool)

(assert (=> b!5110048 (= e!3187122 lt!2104406)))

(declare-fun d!1651375 () Bool)

(declare-fun e!3187123 () Bool)

(assert (=> d!1651375 e!3187123))

(declare-fun res!2175048 () Bool)

(assert (=> d!1651375 (=> (not res!2175048) (not e!3187123))))

(declare-fun lt!2104441 () List!59146)

(assert (=> d!1651375 (= res!2175048 (= (content!10484 lt!2104441) (set.union (content!10484 testedP!265) (content!10484 lt!2104406))))))

(assert (=> d!1651375 (= lt!2104441 e!3187122)))

(declare-fun c!877891 () Bool)

(assert (=> d!1651375 (= c!877891 (is-Nil!59022 testedP!265))))

(assert (=> d!1651375 (= (++!12959 testedP!265 lt!2104406) lt!2104441)))

(declare-fun b!5110051 () Bool)

(assert (=> b!5110051 (= e!3187123 (or (not (= lt!2104406 Nil!59022)) (= lt!2104441 testedP!265)))))

(declare-fun b!5110050 () Bool)

(declare-fun res!2175047 () Bool)

(assert (=> b!5110050 (=> (not res!2175047) (not e!3187123))))

(assert (=> b!5110050 (= res!2175047 (= (size!39440 lt!2104441) (+ (size!39440 testedP!265) (size!39440 lt!2104406))))))

(assert (= (and d!1651375 c!877891) b!5110048))

(assert (= (and d!1651375 (not c!877891)) b!5110049))

(assert (= (and d!1651375 res!2175048) b!5110050))

(assert (= (and b!5110050 res!2175047) b!5110051))

(declare-fun m!6167260 () Bool)

(assert (=> b!5110049 m!6167260))

(declare-fun m!6167262 () Bool)

(assert (=> d!1651375 m!6167262))

(assert (=> d!1651375 m!6167238))

(declare-fun m!6167264 () Bool)

(assert (=> d!1651375 m!6167264))

(declare-fun m!6167266 () Bool)

(assert (=> b!5110050 m!6167266))

(assert (=> b!5110050 m!6167004))

(declare-fun m!6167268 () Bool)

(assert (=> b!5110050 m!6167268))

(assert (=> d!1651311 d!1651375))

(assert (=> d!1651311 d!1651319))

(assert (=> d!1651311 d!1651317))

(declare-fun bs!1191810 () Bool)

(declare-fun d!1651377 () Bool)

(assert (= bs!1191810 (and d!1651377 d!1651279)))

(declare-fun lambda!250214 () Int)

(assert (=> bs!1191810 (= lambda!250214 lambda!250169)))

(declare-fun bs!1191811 () Bool)

(assert (= bs!1191811 (and d!1651377 d!1651307)))

(assert (=> bs!1191811 (= lambda!250214 lambda!250185)))

(assert (=> d!1651377 (= (inv!78517 setElem!29674) (forall!13522 (exprs!4018 setElem!29674) lambda!250214))))

(declare-fun bs!1191812 () Bool)

(assert (= bs!1191812 d!1651377))

(declare-fun m!6167270 () Bool)

(assert (=> bs!1191812 m!6167270))

(assert (=> setNonEmpty!29674 d!1651377))

(declare-fun bs!1191813 () Bool)

(declare-fun d!1651379 () Bool)

(assert (= bs!1191813 (and d!1651379 d!1651279)))

(declare-fun lambda!250215 () Int)

(assert (=> bs!1191813 (= lambda!250215 lambda!250169)))

(declare-fun bs!1191814 () Bool)

(assert (= bs!1191814 (and d!1651379 d!1651307)))

(assert (=> bs!1191814 (= lambda!250215 lambda!250185)))

(declare-fun bs!1191815 () Bool)

(assert (= bs!1191815 (and d!1651379 d!1651377)))

(assert (=> bs!1191815 (= lambda!250215 lambda!250214)))

(assert (=> d!1651379 (= (inv!78517 setElem!29673) (forall!13522 (exprs!4018 setElem!29673) lambda!250215))))

(declare-fun bs!1191816 () Bool)

(assert (= bs!1191816 d!1651379))

(declare-fun m!6167272 () Bool)

(assert (=> bs!1191816 m!6167272))

(assert (=> setNonEmpty!29673 d!1651379))

(declare-fun d!1651381 () Bool)

(declare-fun res!2175053 () Bool)

(declare-fun e!3187128 () Bool)

(assert (=> d!1651381 (=> res!2175053 e!3187128)))

(assert (=> d!1651381 (= res!2175053 (is-Nil!59023 (exprs!4018 setElem!29664)))))

(assert (=> d!1651381 (= (forall!13522 (exprs!4018 setElem!29664) lambda!250169) e!3187128)))

(declare-fun b!5110056 () Bool)

(declare-fun e!3187129 () Bool)

(assert (=> b!5110056 (= e!3187128 e!3187129)))

(declare-fun res!2175054 () Bool)

(assert (=> b!5110056 (=> (not res!2175054) (not e!3187129))))

(declare-fun dynLambda!23588 (Int Regex!14134) Bool)

(assert (=> b!5110056 (= res!2175054 (dynLambda!23588 lambda!250169 (h!65471 (exprs!4018 setElem!29664))))))

(declare-fun b!5110057 () Bool)

(assert (=> b!5110057 (= e!3187129 (forall!13522 (t!372148 (exprs!4018 setElem!29664)) lambda!250169))))

(assert (= (and d!1651381 (not res!2175053)) b!5110056))

(assert (= (and b!5110056 res!2175054) b!5110057))

(declare-fun b_lambda!198877 () Bool)

(assert (=> (not b_lambda!198877) (not b!5110056)))

(declare-fun m!6167274 () Bool)

(assert (=> b!5110056 m!6167274))

(declare-fun m!6167276 () Bool)

(assert (=> b!5110057 m!6167276))

(assert (=> d!1651279 d!1651381))

(declare-fun d!1651383 () Bool)

(assert (=> d!1651383 (= (isEmpty!31852 (getLanguageWitness!769 z!4463)) (not (is-Some!14655 (getLanguageWitness!769 z!4463))))))

(assert (=> d!1651305 d!1651383))

(declare-fun bs!1191817 () Bool)

(declare-fun d!1651385 () Bool)

(assert (= bs!1191817 (and d!1651385 b!5109958)))

(declare-fun lambda!250222 () Int)

(assert (=> bs!1191817 (= lambda!250222 lambda!250183)))

(declare-fun bs!1191818 () Bool)

(assert (= bs!1191818 (and d!1651385 d!1651341)))

(assert (=> bs!1191818 (not (= lambda!250222 lambda!250210))))

(declare-fun bs!1191819 () Bool)

(assert (= bs!1191819 (and d!1651385 d!1651305)))

(assert (=> bs!1191819 (not (= lambda!250222 lambda!250182))))

(declare-fun bs!1191820 () Bool)

(assert (= bs!1191820 (and d!1651385 b!5109959)))

(assert (=> bs!1191820 (= lambda!250222 lambda!250184)))

(declare-fun bs!1191821 () Bool)

(assert (= bs!1191821 (and d!1651385 d!1651361)))

(assert (=> bs!1191821 (not (= lambda!250222 lambda!250212))))

(declare-fun lt!2104444 () Option!14656)

(declare-fun isDefined!11505 (Option!14656) Bool)

(assert (=> d!1651385 (= (isDefined!11505 lt!2104444) (exists!1431 z!4463 lambda!250222))))

(declare-fun e!3187132 () Option!14656)

(assert (=> d!1651385 (= lt!2104444 e!3187132)))

(declare-fun c!877900 () Bool)

(assert (=> d!1651385 (= c!877900 (exists!1431 z!4463 lambda!250222))))

(assert (=> d!1651385 (= (getLanguageWitness!769 z!4463) lt!2104444)))

(declare-fun b!5110062 () Bool)

(declare-fun getLanguageWitness!771 (Context!7036) Option!14656)

(declare-fun getWitness!666 ((Set Context!7036) Int) Context!7036)

(assert (=> b!5110062 (= e!3187132 (getLanguageWitness!771 (getWitness!666 z!4463 lambda!250222)))))

(declare-fun b!5110063 () Bool)

(assert (=> b!5110063 (= e!3187132 None!14655)))

(assert (= (and d!1651385 c!877900) b!5110062))

(assert (= (and d!1651385 (not c!877900)) b!5110063))

(declare-fun m!6167278 () Bool)

(assert (=> d!1651385 m!6167278))

(declare-fun m!6167280 () Bool)

(assert (=> d!1651385 m!6167280))

(assert (=> d!1651385 m!6167280))

(declare-fun m!6167282 () Bool)

(assert (=> b!5110062 m!6167282))

(assert (=> b!5110062 m!6167282))

(declare-fun m!6167284 () Bool)

(assert (=> b!5110062 m!6167284))

(assert (=> d!1651305 d!1651385))

(declare-fun d!1651387 () Bool)

(declare-fun lt!2104447 () Bool)

(declare-fun forall!13526 (List!59150 Int) Bool)

(assert (=> d!1651387 (= lt!2104447 (forall!13526 (toList!8222 z!4463) lambda!250182))))

(declare-fun choose!37445 ((Set Context!7036) Int) Bool)

(assert (=> d!1651387 (= lt!2104447 (choose!37445 z!4463 lambda!250182))))

(assert (=> d!1651387 (= (forall!13523 z!4463 lambda!250182) lt!2104447)))

(declare-fun bs!1191822 () Bool)

(assert (= bs!1191822 d!1651387))

(assert (=> bs!1191822 m!6167128))

(assert (=> bs!1191822 m!6167128))

(declare-fun m!6167286 () Bool)

(assert (=> bs!1191822 m!6167286))

(declare-fun m!6167288 () Bool)

(assert (=> bs!1191822 m!6167288))

(assert (=> d!1651305 d!1651387))

(declare-fun d!1651389 () Bool)

(declare-fun e!3187133 () Bool)

(assert (=> d!1651389 e!3187133))

(declare-fun res!2175056 () Bool)

(assert (=> d!1651389 (=> res!2175056 e!3187133)))

(declare-fun lt!2104448 () Bool)

(assert (=> d!1651389 (= res!2175056 (not lt!2104448))))

(declare-fun e!3187135 () Bool)

(assert (=> d!1651389 (= lt!2104448 e!3187135)))

(declare-fun res!2175055 () Bool)

(assert (=> d!1651389 (=> res!2175055 e!3187135)))

(assert (=> d!1651389 (= res!2175055 (is-Nil!59022 (tail!10017 testedP!265)))))

(assert (=> d!1651389 (= (isPrefix!5539 (tail!10017 testedP!265) (tail!10017 input!5745)) lt!2104448)))

(declare-fun b!5110065 () Bool)

(declare-fun res!2175057 () Bool)

(declare-fun e!3187134 () Bool)

(assert (=> b!5110065 (=> (not res!2175057) (not e!3187134))))

(assert (=> b!5110065 (= res!2175057 (= (head!10862 (tail!10017 testedP!265)) (head!10862 (tail!10017 input!5745))))))

(declare-fun b!5110067 () Bool)

(assert (=> b!5110067 (= e!3187133 (>= (size!39440 (tail!10017 input!5745)) (size!39440 (tail!10017 testedP!265))))))

(declare-fun b!5110064 () Bool)

(assert (=> b!5110064 (= e!3187135 e!3187134)))

(declare-fun res!2175058 () Bool)

(assert (=> b!5110064 (=> (not res!2175058) (not e!3187134))))

(assert (=> b!5110064 (= res!2175058 (not (is-Nil!59022 (tail!10017 input!5745))))))

(declare-fun b!5110066 () Bool)

(assert (=> b!5110066 (= e!3187134 (isPrefix!5539 (tail!10017 (tail!10017 testedP!265)) (tail!10017 (tail!10017 input!5745))))))

(assert (= (and d!1651389 (not res!2175055)) b!5110064))

(assert (= (and b!5110064 res!2175058) b!5110065))

(assert (= (and b!5110065 res!2175057) b!5110066))

(assert (= (and d!1651389 (not res!2175056)) b!5110067))

(assert (=> b!5110065 m!6167112))

(declare-fun m!6167290 () Bool)

(assert (=> b!5110065 m!6167290))

(assert (=> b!5110065 m!6167106))

(declare-fun m!6167292 () Bool)

(assert (=> b!5110065 m!6167292))

(assert (=> b!5110067 m!6167106))

(assert (=> b!5110067 m!6167218))

(assert (=> b!5110067 m!6167112))

(declare-fun m!6167294 () Bool)

(assert (=> b!5110067 m!6167294))

(assert (=> b!5110066 m!6167112))

(declare-fun m!6167296 () Bool)

(assert (=> b!5110066 m!6167296))

(assert (=> b!5110066 m!6167106))

(assert (=> b!5110066 m!6167220))

(assert (=> b!5110066 m!6167296))

(assert (=> b!5110066 m!6167220))

(declare-fun m!6167298 () Bool)

(assert (=> b!5110066 m!6167298))

(assert (=> b!5109952 d!1651389))

(declare-fun d!1651391 () Bool)

(assert (=> d!1651391 (= (tail!10017 testedP!265) (t!372147 testedP!265))))

(assert (=> b!5109952 d!1651391))

(assert (=> b!5109952 d!1651345))

(declare-fun d!1651393 () Bool)

(declare-fun e!3187136 () Bool)

(assert (=> d!1651393 e!3187136))

(declare-fun res!2175060 () Bool)

(assert (=> d!1651393 (=> res!2175060 e!3187136)))

(declare-fun lt!2104449 () Bool)

(assert (=> d!1651393 (= res!2175060 (not lt!2104449))))

(declare-fun e!3187138 () Bool)

(assert (=> d!1651393 (= lt!2104449 e!3187138)))

(declare-fun res!2175059 () Bool)

(assert (=> d!1651393 (=> res!2175059 e!3187138)))

(assert (=> d!1651393 (= res!2175059 (is-Nil!59022 (tail!10017 testedP!265)))))

(assert (=> d!1651393 (= (isPrefix!5539 (tail!10017 testedP!265) (tail!10017 knownP!20)) lt!2104449)))

(declare-fun b!5110069 () Bool)

(declare-fun res!2175061 () Bool)

(declare-fun e!3187137 () Bool)

(assert (=> b!5110069 (=> (not res!2175061) (not e!3187137))))

(assert (=> b!5110069 (= res!2175061 (= (head!10862 (tail!10017 testedP!265)) (head!10862 (tail!10017 knownP!20))))))

(declare-fun b!5110071 () Bool)

(assert (=> b!5110071 (= e!3187136 (>= (size!39440 (tail!10017 knownP!20)) (size!39440 (tail!10017 testedP!265))))))

(declare-fun b!5110068 () Bool)

(assert (=> b!5110068 (= e!3187138 e!3187137)))

(declare-fun res!2175062 () Bool)

(assert (=> b!5110068 (=> (not res!2175062) (not e!3187137))))

(assert (=> b!5110068 (= res!2175062 (not (is-Nil!59022 (tail!10017 knownP!20))))))

(declare-fun b!5110070 () Bool)

(assert (=> b!5110070 (= e!3187137 (isPrefix!5539 (tail!10017 (tail!10017 testedP!265)) (tail!10017 (tail!10017 knownP!20))))))

(assert (= (and d!1651393 (not res!2175059)) b!5110068))

(assert (= (and b!5110068 res!2175062) b!5110069))

(assert (= (and b!5110069 res!2175061) b!5110070))

(assert (= (and d!1651393 (not res!2175060)) b!5110071))

(assert (=> b!5110069 m!6167112))

(assert (=> b!5110069 m!6167290))

(assert (=> b!5110069 m!6167052))

(assert (=> b!5110069 m!6167202))

(assert (=> b!5110071 m!6167052))

(declare-fun m!6167300 () Bool)

(assert (=> b!5110071 m!6167300))

(assert (=> b!5110071 m!6167112))

(assert (=> b!5110071 m!6167294))

(assert (=> b!5110070 m!6167112))

(assert (=> b!5110070 m!6167296))

(assert (=> b!5110070 m!6167052))

(assert (=> b!5110070 m!6167206))

(assert (=> b!5110070 m!6167296))

(assert (=> b!5110070 m!6167206))

(declare-fun m!6167302 () Bool)

(assert (=> b!5110070 m!6167302))

(assert (=> b!5109970 d!1651393))

(assert (=> b!5109970 d!1651391))

(assert (=> b!5109970 d!1651337))

(assert (=> b!5109947 d!1651335))

(assert (=> b!5109947 d!1651349))

(assert (=> b!5109969 d!1651347))

(assert (=> b!5109969 d!1651335))

(declare-fun bs!1191823 () Bool)

(declare-fun d!1651395 () Bool)

(assert (= bs!1191823 (and d!1651395 b!5109958)))

(declare-fun lambda!250225 () Int)

(assert (=> bs!1191823 (not (= lambda!250225 lambda!250183))))

(declare-fun bs!1191824 () Bool)

(assert (= bs!1191824 (and d!1651395 d!1651341)))

(assert (=> bs!1191824 (not (= lambda!250225 lambda!250210))))

(declare-fun bs!1191825 () Bool)

(assert (= bs!1191825 (and d!1651395 d!1651305)))

(assert (=> bs!1191825 (not (= lambda!250225 lambda!250182))))

(declare-fun bs!1191826 () Bool)

(assert (= bs!1191826 (and d!1651395 b!5109959)))

(assert (=> bs!1191826 (not (= lambda!250225 lambda!250184))))

(declare-fun bs!1191827 () Bool)

(assert (= bs!1191827 (and d!1651395 d!1651385)))

(assert (=> bs!1191827 (not (= lambda!250225 lambda!250222))))

(declare-fun bs!1191828 () Bool)

(assert (= bs!1191828 (and d!1651395 d!1651361)))

(assert (=> bs!1191828 (not (= lambda!250225 lambda!250212))))

(assert (=> d!1651395 true))

(declare-fun order!26779 () Int)

(declare-fun dynLambda!23589 (Int Int) Int)

(assert (=> d!1651395 (< (dynLambda!23589 order!26779 lambda!250182) (dynLambda!23589 order!26779 lambda!250225))))

(assert (=> d!1651395 (exists!1429 lt!2104396 lambda!250225)))

(declare-fun lt!2104452 () Unit!150121)

(declare-fun choose!37446 (List!59150 Int) Unit!150121)

(assert (=> d!1651395 (= lt!2104452 (choose!37446 lt!2104396 lambda!250182))))

(assert (=> d!1651395 (not (forall!13526 lt!2104396 lambda!250182))))

(assert (=> d!1651395 (= (lemmaNotForallThenExists!296 lt!2104396 lambda!250182) lt!2104452)))

(declare-fun bs!1191829 () Bool)

(assert (= bs!1191829 d!1651395))

(declare-fun m!6167304 () Bool)

(assert (=> bs!1191829 m!6167304))

(declare-fun m!6167306 () Bool)

(assert (=> bs!1191829 m!6167306))

(declare-fun m!6167308 () Bool)

(assert (=> bs!1191829 m!6167308))

(assert (=> b!5109958 d!1651395))

(assert (=> b!5109971 d!1651319))

(assert (=> b!5109971 d!1651317))

(declare-fun d!1651397 () Bool)

(declare-fun e!3187141 () Bool)

(assert (=> d!1651397 e!3187141))

(declare-fun res!2175064 () Bool)

(assert (=> d!1651397 (=> res!2175064 e!3187141)))

(declare-fun lt!2104453 () Bool)

(assert (=> d!1651397 (= res!2175064 (not lt!2104453))))

(declare-fun e!3187143 () Bool)

(assert (=> d!1651397 (= lt!2104453 e!3187143)))

(declare-fun res!2175063 () Bool)

(assert (=> d!1651397 (=> res!2175063 e!3187143)))

(assert (=> d!1651397 (= res!2175063 (is-Nil!59022 (tail!10017 knownP!20)))))

(assert (=> d!1651397 (= (isPrefix!5539 (tail!10017 knownP!20) (tail!10017 input!5745)) lt!2104453)))

(declare-fun b!5110075 () Bool)

(declare-fun res!2175065 () Bool)

(declare-fun e!3187142 () Bool)

(assert (=> b!5110075 (=> (not res!2175065) (not e!3187142))))

(assert (=> b!5110075 (= res!2175065 (= (head!10862 (tail!10017 knownP!20)) (head!10862 (tail!10017 input!5745))))))

(declare-fun b!5110077 () Bool)

(assert (=> b!5110077 (= e!3187141 (>= (size!39440 (tail!10017 input!5745)) (size!39440 (tail!10017 knownP!20))))))

(declare-fun b!5110074 () Bool)

(assert (=> b!5110074 (= e!3187143 e!3187142)))

(declare-fun res!2175066 () Bool)

(assert (=> b!5110074 (=> (not res!2175066) (not e!3187142))))

(assert (=> b!5110074 (= res!2175066 (not (is-Nil!59022 (tail!10017 input!5745))))))

(declare-fun b!5110076 () Bool)

(assert (=> b!5110076 (= e!3187142 (isPrefix!5539 (tail!10017 (tail!10017 knownP!20)) (tail!10017 (tail!10017 input!5745))))))

(assert (= (and d!1651397 (not res!2175063)) b!5110074))

(assert (= (and b!5110074 res!2175066) b!5110075))

(assert (= (and b!5110075 res!2175065) b!5110076))

(assert (= (and d!1651397 (not res!2175064)) b!5110077))

(assert (=> b!5110075 m!6167052))

(assert (=> b!5110075 m!6167202))

(assert (=> b!5110075 m!6167106))

(assert (=> b!5110075 m!6167292))

(assert (=> b!5110077 m!6167106))

(assert (=> b!5110077 m!6167218))

(assert (=> b!5110077 m!6167052))

(assert (=> b!5110077 m!6167300))

(assert (=> b!5110076 m!6167052))

(assert (=> b!5110076 m!6167206))

(assert (=> b!5110076 m!6167106))

(assert (=> b!5110076 m!6167220))

(assert (=> b!5110076 m!6167206))

(assert (=> b!5110076 m!6167220))

(declare-fun m!6167310 () Bool)

(assert (=> b!5110076 m!6167310))

(assert (=> b!5109948 d!1651397))

(assert (=> b!5109948 d!1651337))

(assert (=> b!5109948 d!1651345))

(declare-fun d!1651399 () Bool)

(declare-fun e!3187146 () Bool)

(assert (=> d!1651399 e!3187146))

(declare-fun res!2175069 () Bool)

(assert (=> d!1651399 (=> (not res!2175069) (not e!3187146))))

(declare-fun lt!2104456 () List!59150)

(declare-fun noDuplicate!1069 (List!59150) Bool)

(assert (=> d!1651399 (= res!2175069 (noDuplicate!1069 lt!2104456))))

(declare-fun choose!37447 ((Set Context!7036)) List!59150)

(assert (=> d!1651399 (= lt!2104456 (choose!37447 z!4463))))

(assert (=> d!1651399 (= (toList!8222 z!4463) lt!2104456)))

(declare-fun b!5110080 () Bool)

(declare-fun content!10485 (List!59150) (Set Context!7036))

(assert (=> b!5110080 (= e!3187146 (= (content!10485 lt!2104456) z!4463))))

(assert (= (and d!1651399 res!2175069) b!5110080))

(declare-fun m!6167312 () Bool)

(assert (=> d!1651399 m!6167312))

(declare-fun m!6167314 () Bool)

(assert (=> d!1651399 m!6167314))

(declare-fun m!6167316 () Bool)

(assert (=> b!5110080 m!6167316))

(assert (=> bm!356353 d!1651399))

(declare-fun bs!1191830 () Bool)

(declare-fun d!1651401 () Bool)

(assert (= bs!1191830 (and d!1651401 b!5109958)))

(declare-fun lambda!250228 () Int)

(assert (=> bs!1191830 (not (= lambda!250228 lambda!250183))))

(declare-fun bs!1191831 () Bool)

(assert (= bs!1191831 (and d!1651401 d!1651341)))

(assert (=> bs!1191831 (not (= lambda!250228 lambda!250210))))

(declare-fun bs!1191832 () Bool)

(assert (= bs!1191832 (and d!1651401 d!1651305)))

(assert (=> bs!1191832 (not (= lambda!250228 lambda!250182))))

(declare-fun bs!1191833 () Bool)

(assert (= bs!1191833 (and d!1651401 d!1651395)))

(assert (=> bs!1191833 (= lambda!250228 lambda!250225)))

(declare-fun bs!1191834 () Bool)

(assert (= bs!1191834 (and d!1651401 b!5109959)))

(assert (=> bs!1191834 (not (= lambda!250228 lambda!250184))))

(declare-fun bs!1191835 () Bool)

(assert (= bs!1191835 (and d!1651401 d!1651385)))

(assert (=> bs!1191835 (not (= lambda!250228 lambda!250222))))

(declare-fun bs!1191836 () Bool)

(assert (= bs!1191836 (and d!1651401 d!1651361)))

(assert (=> bs!1191836 (not (= lambda!250228 lambda!250212))))

(assert (=> d!1651401 true))

(assert (=> d!1651401 (< (dynLambda!23589 order!26779 lambda!250182) (dynLambda!23589 order!26779 lambda!250228))))

(assert (=> d!1651401 (not (exists!1429 lt!2104402 lambda!250228))))

(declare-fun lt!2104459 () Unit!150121)

(declare-fun choose!37448 (List!59150 Int) Unit!150121)

(assert (=> d!1651401 (= lt!2104459 (choose!37448 lt!2104402 lambda!250182))))

(assert (=> d!1651401 (forall!13526 lt!2104402 lambda!250182)))

(assert (=> d!1651401 (= (lemmaForallThenNotExists!279 lt!2104402 lambda!250182) lt!2104459)))

(declare-fun bs!1191837 () Bool)

(assert (= bs!1191837 d!1651401))

(declare-fun m!6167318 () Bool)

(assert (=> bs!1191837 m!6167318))

(declare-fun m!6167320 () Bool)

(assert (=> bs!1191837 m!6167320))

(declare-fun m!6167322 () Bool)

(assert (=> bs!1191837 m!6167322))

(assert (=> b!5109959 d!1651401))

(assert (=> b!5109953 d!1651273))

(assert (=> b!5109953 d!1651317))

(declare-fun bs!1191838 () Bool)

(declare-fun d!1651403 () Bool)

(assert (= bs!1191838 (and d!1651403 b!5109958)))

(declare-fun lambda!250231 () Int)

(assert (=> bs!1191838 (not (= lambda!250231 lambda!250183))))

(declare-fun bs!1191839 () Bool)

(assert (= bs!1191839 (and d!1651403 d!1651341)))

(assert (=> bs!1191839 (not (= lambda!250231 lambda!250210))))

(declare-fun bs!1191840 () Bool)

(assert (= bs!1191840 (and d!1651403 d!1651305)))

(assert (=> bs!1191840 (not (= lambda!250231 lambda!250182))))

(declare-fun bs!1191841 () Bool)

(assert (= bs!1191841 (and d!1651403 d!1651395)))

(assert (=> bs!1191841 (= (= (ite c!877861 lambda!250183 lambda!250184) lambda!250182) (= lambda!250231 lambda!250225))))

(declare-fun bs!1191842 () Bool)

(assert (= bs!1191842 (and d!1651403 b!5109959)))

(assert (=> bs!1191842 (not (= lambda!250231 lambda!250184))))

(declare-fun bs!1191843 () Bool)

(assert (= bs!1191843 (and d!1651403 d!1651361)))

(assert (=> bs!1191843 (not (= lambda!250231 lambda!250212))))

(declare-fun bs!1191844 () Bool)

(assert (= bs!1191844 (and d!1651403 d!1651401)))

(assert (=> bs!1191844 (= (= (ite c!877861 lambda!250183 lambda!250184) lambda!250182) (= lambda!250231 lambda!250228))))

(declare-fun bs!1191845 () Bool)

(assert (= bs!1191845 (and d!1651403 d!1651385)))

(assert (=> bs!1191845 (not (= lambda!250231 lambda!250222))))

(assert (=> d!1651403 true))

(assert (=> d!1651403 (< (dynLambda!23589 order!26779 (ite c!877861 lambda!250183 lambda!250184)) (dynLambda!23589 order!26779 lambda!250231))))

(assert (=> d!1651403 (= (exists!1429 (ite c!877861 lt!2104396 lt!2104402) (ite c!877861 lambda!250183 lambda!250184)) (not (forall!13526 (ite c!877861 lt!2104396 lt!2104402) lambda!250231)))))

(declare-fun bs!1191846 () Bool)

(assert (= bs!1191846 d!1651403))

(declare-fun m!6167324 () Bool)

(assert (=> bs!1191846 m!6167324))

(assert (=> bm!356354 d!1651403))

(declare-fun d!1651405 () Bool)

(declare-fun lt!2104460 () Int)

(assert (=> d!1651405 (>= lt!2104460 0)))

(declare-fun e!3187149 () Int)

(assert (=> d!1651405 (= lt!2104460 e!3187149)))

(declare-fun c!877901 () Bool)

(assert (=> d!1651405 (= c!877901 (is-Nil!59022 (t!372147 testedP!265)))))

(assert (=> d!1651405 (= (size!39440 (t!372147 testedP!265)) lt!2104460)))

(declare-fun b!5110081 () Bool)

(assert (=> b!5110081 (= e!3187149 0)))

(declare-fun b!5110082 () Bool)

(assert (=> b!5110082 (= e!3187149 (+ 1 (size!39440 (t!372147 (t!372147 testedP!265)))))))

(assert (= (and d!1651405 c!877901) b!5110081))

(assert (= (and d!1651405 (not c!877901)) b!5110082))

(declare-fun m!6167326 () Bool)

(assert (=> b!5110082 m!6167326))

(assert (=> b!5109973 d!1651405))

(assert (=> b!5109949 d!1651273))

(assert (=> b!5109949 d!1651319))

(declare-fun d!1651407 () Bool)

(declare-fun res!2175070 () Bool)

(declare-fun e!3187150 () Bool)

(assert (=> d!1651407 (=> res!2175070 e!3187150)))

(assert (=> d!1651407 (= res!2175070 (is-Nil!59023 (exprs!4018 setElem!29663)))))

(assert (=> d!1651407 (= (forall!13522 (exprs!4018 setElem!29663) lambda!250185) e!3187150)))

(declare-fun b!5110083 () Bool)

(declare-fun e!3187151 () Bool)

(assert (=> b!5110083 (= e!3187150 e!3187151)))

(declare-fun res!2175071 () Bool)

(assert (=> b!5110083 (=> (not res!2175071) (not e!3187151))))

(assert (=> b!5110083 (= res!2175071 (dynLambda!23588 lambda!250185 (h!65471 (exprs!4018 setElem!29663))))))

(declare-fun b!5110084 () Bool)

(assert (=> b!5110084 (= e!3187151 (forall!13522 (t!372148 (exprs!4018 setElem!29663)) lambda!250185))))

(assert (= (and d!1651407 (not res!2175070)) b!5110083))

(assert (= (and b!5110083 res!2175071) b!5110084))

(declare-fun b_lambda!198879 () Bool)

(assert (=> (not b_lambda!198879) (not b!5110083)))

(declare-fun m!6167328 () Bool)

(assert (=> b!5110083 m!6167328))

(declare-fun m!6167330 () Bool)

(assert (=> b!5110084 m!6167330))

(assert (=> d!1651307 d!1651407))

(declare-fun d!1651409 () Bool)

(declare-fun lt!2104461 () List!59146)

(assert (=> d!1651409 (= (++!12959 (t!372147 testedP!265) lt!2104461) (tail!10017 knownP!20))))

(declare-fun e!3187152 () List!59146)

(assert (=> d!1651409 (= lt!2104461 e!3187152)))

(declare-fun c!877902 () Bool)

(assert (=> d!1651409 (= c!877902 (is-Cons!59022 (t!372147 testedP!265)))))

(assert (=> d!1651409 (>= (size!39440 (tail!10017 knownP!20)) (size!39440 (t!372147 testedP!265)))))

(assert (=> d!1651409 (= (getSuffix!3213 (tail!10017 knownP!20) (t!372147 testedP!265)) lt!2104461)))

(declare-fun b!5110085 () Bool)

(assert (=> b!5110085 (= e!3187152 (getSuffix!3213 (tail!10017 (tail!10017 knownP!20)) (t!372147 (t!372147 testedP!265))))))

(declare-fun b!5110086 () Bool)

(assert (=> b!5110086 (= e!3187152 (tail!10017 knownP!20))))

(assert (= (and d!1651409 c!877902) b!5110085))

(assert (= (and d!1651409 (not c!877902)) b!5110086))

(declare-fun m!6167332 () Bool)

(assert (=> d!1651409 m!6167332))

(assert (=> d!1651409 m!6167052))

(assert (=> d!1651409 m!6167300))

(assert (=> d!1651409 m!6167152))

(assert (=> b!5110085 m!6167052))

(assert (=> b!5110085 m!6167206))

(assert (=> b!5110085 m!6167206))

(declare-fun m!6167334 () Bool)

(assert (=> b!5110085 m!6167334))

(assert (=> b!5109966 d!1651409))

(assert (=> b!5109966 d!1651337))

(declare-fun b!5110087 () Bool)

(declare-fun e!3187153 () Bool)

(declare-fun tp!1425662 () Bool)

(declare-fun tp!1425663 () Bool)

(assert (=> b!5110087 (= e!3187153 (and tp!1425662 tp!1425663))))

(assert (=> b!5109993 (= tp!1425635 e!3187153)))

(assert (= (and b!5109993 (is-Cons!59023 (exprs!4018 setElem!29673))) b!5110087))

(declare-fun e!3187156 () Bool)

(assert (=> b!5109982 (= tp!1425624 e!3187156)))

(declare-fun b!5110099 () Bool)

(declare-fun tp!1425678 () Bool)

(declare-fun tp!1425676 () Bool)

(assert (=> b!5110099 (= e!3187156 (and tp!1425678 tp!1425676))))

(declare-fun b!5110100 () Bool)

(declare-fun tp!1425675 () Bool)

(assert (=> b!5110100 (= e!3187156 tp!1425675)))

(declare-fun b!5110101 () Bool)

(declare-fun tp!1425677 () Bool)

(declare-fun tp!1425674 () Bool)

(assert (=> b!5110101 (= e!3187156 (and tp!1425677 tp!1425674))))

(declare-fun b!5110098 () Bool)

(assert (=> b!5110098 (= e!3187156 tp_is_empty!37541)))

(assert (= (and b!5109982 (is-ElementMatch!14134 (h!65471 (exprs!4018 setElem!29664)))) b!5110098))

(assert (= (and b!5109982 (is-Concat!22979 (h!65471 (exprs!4018 setElem!29664)))) b!5110099))

(assert (= (and b!5109982 (is-Star!14134 (h!65471 (exprs!4018 setElem!29664)))) b!5110100))

(assert (= (and b!5109982 (is-Union!14134 (h!65471 (exprs!4018 setElem!29664)))) b!5110101))

(declare-fun b!5110102 () Bool)

(declare-fun e!3187157 () Bool)

(declare-fun tp!1425679 () Bool)

(declare-fun tp!1425680 () Bool)

(assert (=> b!5110102 (= e!3187157 (and tp!1425679 tp!1425680))))

(assert (=> b!5109982 (= tp!1425625 e!3187157)))

(assert (= (and b!5109982 (is-Cons!59023 (t!372148 (exprs!4018 setElem!29664)))) b!5110102))

(declare-fun b!5110103 () Bool)

(declare-fun e!3187158 () Bool)

(declare-fun tp!1425681 () Bool)

(assert (=> b!5110103 (= e!3187158 (and tp_is_empty!37541 tp!1425681))))

(assert (=> b!5109988 (= tp!1425629 e!3187158)))

(assert (= (and b!5109988 (is-Cons!59022 (t!372147 (t!372147 input!5745)))) b!5110103))

(declare-fun e!3187159 () Bool)

(assert (=> b!5109994 (= tp!1425636 e!3187159)))

(declare-fun b!5110105 () Bool)

(declare-fun tp!1425686 () Bool)

(declare-fun tp!1425684 () Bool)

(assert (=> b!5110105 (= e!3187159 (and tp!1425686 tp!1425684))))

(declare-fun b!5110106 () Bool)

(declare-fun tp!1425683 () Bool)

(assert (=> b!5110106 (= e!3187159 tp!1425683)))

(declare-fun b!5110107 () Bool)

(declare-fun tp!1425685 () Bool)

(declare-fun tp!1425682 () Bool)

(assert (=> b!5110107 (= e!3187159 (and tp!1425685 tp!1425682))))

(declare-fun b!5110104 () Bool)

(assert (=> b!5110104 (= e!3187159 tp_is_empty!37541)))

(assert (= (and b!5109994 (is-ElementMatch!14134 (h!65471 (exprs!4018 setElem!29663)))) b!5110104))

(assert (= (and b!5109994 (is-Concat!22979 (h!65471 (exprs!4018 setElem!29663)))) b!5110105))

(assert (= (and b!5109994 (is-Star!14134 (h!65471 (exprs!4018 setElem!29663)))) b!5110106))

(assert (= (and b!5109994 (is-Union!14134 (h!65471 (exprs!4018 setElem!29663)))) b!5110107))

(declare-fun b!5110108 () Bool)

(declare-fun e!3187160 () Bool)

(declare-fun tp!1425687 () Bool)

(declare-fun tp!1425688 () Bool)

(assert (=> b!5110108 (= e!3187160 (and tp!1425687 tp!1425688))))

(assert (=> b!5109994 (= tp!1425637 e!3187160)))

(assert (= (and b!5109994 (is-Cons!59023 (t!372148 (exprs!4018 setElem!29663)))) b!5110108))

(declare-fun b!5110109 () Bool)

(declare-fun e!3187161 () Bool)

(declare-fun tp!1425689 () Bool)

(declare-fun tp!1425690 () Bool)

(assert (=> b!5110109 (= e!3187161 (and tp!1425689 tp!1425690))))

(assert (=> b!5109996 (= tp!1425640 e!3187161)))

(assert (= (and b!5109996 (is-Cons!59023 (exprs!4018 setElem!29674))) b!5110109))

(declare-fun condSetEmpty!29679 () Bool)

(assert (=> setNonEmpty!29674 (= condSetEmpty!29679 (= setRest!29674 (as set.empty (Set Context!7036))))))

(declare-fun setRes!29679 () Bool)

(assert (=> setNonEmpty!29674 (= tp!1425639 setRes!29679)))

(declare-fun setIsEmpty!29679 () Bool)

(assert (=> setIsEmpty!29679 setRes!29679))

(declare-fun e!3187162 () Bool)

(declare-fun setNonEmpty!29679 () Bool)

(declare-fun tp!1425691 () Bool)

(declare-fun setElem!29679 () Context!7036)

(assert (=> setNonEmpty!29679 (= setRes!29679 (and tp!1425691 (inv!78517 setElem!29679) e!3187162))))

(declare-fun setRest!29679 () (Set Context!7036))

(assert (=> setNonEmpty!29679 (= setRest!29674 (set.union (set.insert setElem!29679 (as set.empty (Set Context!7036))) setRest!29679))))

(declare-fun b!5110110 () Bool)

(declare-fun tp!1425692 () Bool)

(assert (=> b!5110110 (= e!3187162 tp!1425692)))

(assert (= (and setNonEmpty!29674 condSetEmpty!29679) setIsEmpty!29679))

(assert (= (and setNonEmpty!29674 (not condSetEmpty!29679)) setNonEmpty!29679))

(assert (= setNonEmpty!29679 b!5110110))

(declare-fun m!6167336 () Bool)

(assert (=> setNonEmpty!29679 m!6167336))

(declare-fun condSetEmpty!29680 () Bool)

(assert (=> setNonEmpty!29673 (= condSetEmpty!29680 (= setRest!29673 (as set.empty (Set Context!7036))))))

(declare-fun setRes!29680 () Bool)

(assert (=> setNonEmpty!29673 (= tp!1425634 setRes!29680)))

(declare-fun setIsEmpty!29680 () Bool)

(assert (=> setIsEmpty!29680 setRes!29680))

(declare-fun e!3187163 () Bool)

(declare-fun tp!1425693 () Bool)

(declare-fun setElem!29680 () Context!7036)

(declare-fun setNonEmpty!29680 () Bool)

(assert (=> setNonEmpty!29680 (= setRes!29680 (and tp!1425693 (inv!78517 setElem!29680) e!3187163))))

(declare-fun setRest!29680 () (Set Context!7036))

(assert (=> setNonEmpty!29680 (= setRest!29673 (set.union (set.insert setElem!29680 (as set.empty (Set Context!7036))) setRest!29680))))

(declare-fun b!5110111 () Bool)

(declare-fun tp!1425694 () Bool)

(assert (=> b!5110111 (= e!3187163 tp!1425694)))

(assert (= (and setNonEmpty!29673 condSetEmpty!29680) setIsEmpty!29680))

(assert (= (and setNonEmpty!29673 (not condSetEmpty!29680)) setNonEmpty!29680))

(assert (= setNonEmpty!29680 b!5110111))

(declare-fun m!6167338 () Bool)

(assert (=> setNonEmpty!29680 m!6167338))

(declare-fun b!5110112 () Bool)

(declare-fun e!3187164 () Bool)

(declare-fun tp!1425695 () Bool)

(assert (=> b!5110112 (= e!3187164 (and tp_is_empty!37541 tp!1425695))))

(assert (=> b!5109987 (= tp!1425628 e!3187164)))

(assert (= (and b!5109987 (is-Cons!59022 (t!372147 (t!372147 knownP!20)))) b!5110112))

(declare-fun b!5110113 () Bool)

(declare-fun e!3187165 () Bool)

(declare-fun tp!1425696 () Bool)

(assert (=> b!5110113 (= e!3187165 (and tp_is_empty!37541 tp!1425696))))

(assert (=> b!5109995 (= tp!1425638 e!3187165)))

(assert (= (and b!5109995 (is-Cons!59022 (t!372147 (t!372147 testedP!265)))) b!5110113))

(declare-fun b_lambda!198881 () Bool)

(assert (= b_lambda!198877 (or d!1651279 b_lambda!198881)))

(declare-fun bs!1191847 () Bool)

(declare-fun d!1651411 () Bool)

(assert (= bs!1191847 (and d!1651411 d!1651279)))

(declare-fun validRegex!6207 (Regex!14134) Bool)

(assert (=> bs!1191847 (= (dynLambda!23588 lambda!250169 (h!65471 (exprs!4018 setElem!29664))) (validRegex!6207 (h!65471 (exprs!4018 setElem!29664))))))

(declare-fun m!6167340 () Bool)

(assert (=> bs!1191847 m!6167340))

(assert (=> b!5110056 d!1651411))

(declare-fun b_lambda!198883 () Bool)

(assert (= b_lambda!198879 (or d!1651307 b_lambda!198883)))

(declare-fun bs!1191848 () Bool)

(declare-fun d!1651413 () Bool)

(assert (= bs!1191848 (and d!1651413 d!1651307)))

(assert (=> bs!1191848 (= (dynLambda!23588 lambda!250185 (h!65471 (exprs!4018 setElem!29663))) (validRegex!6207 (h!65471 (exprs!4018 setElem!29663))))))

(declare-fun m!6167342 () Bool)

(assert (=> bs!1191848 m!6167342))

(assert (=> b!5110083 d!1651413))

(push 1)

(assert (not setNonEmpty!29679))

(assert (not d!1651359))

(assert (not b!5110109))

(assert (not b!5110082))

(assert (not b!5110071))

(assert (not b!5110105))

(assert (not b!5110043))

(assert (not b!5110028))

(assert (not b_lambda!198883))

(assert tp_is_empty!37541)

(assert (not bs!1191847))

(assert (not d!1651375))

(assert (not b!5110046))

(assert (not d!1651379))

(assert (not d!1651387))

(assert (not b!5110057))

(assert (not d!1651333))

(assert (not b!5110044))

(assert (not b!5110050))

(assert (not b!5110113))

(assert (not b!5110022))

(assert (not b!5110027))

(assert (not b!5110106))

(assert (not b!5110023))

(assert (not d!1651341))

(assert (not d!1651399))

(assert (not d!1651409))

(assert (not b!5110066))

(assert (not d!1651367))

(assert (not d!1651363))

(assert (not d!1651343))

(assert (not b!5110085))

(assert (not d!1651365))

(assert (not b!5110047))

(assert (not b!5110065))

(assert (not d!1651377))

(assert (not b!5110080))

(assert (not b!5110070))

(assert (not b!5110069))

(assert (not b!5110049))

(assert (not b!5110087))

(assert (not b!5110075))

(assert (not b!5110084))

(assert (not b!5110031))

(assert (not b!5110067))

(assert (not b!5110111))

(assert (not b!5110107))

(assert (not b!5110032))

(assert (not d!1651395))

(assert (not d!1651361))

(assert (not b!5110062))

(assert (not b!5110100))

(assert (not d!1651331))

(assert (not d!1651403))

(assert (not b!5110108))

(assert (not b!5110099))

(assert (not b!5110103))

(assert (not b!5110102))

(assert (not bs!1191848))

(assert (not setNonEmpty!29680))

(assert (not b!5110110))

(assert (not b!5110076))

(assert (not d!1651385))

(assert (not b!5110077))

(assert (not b!5110101))

(assert (not b!5110112))

(assert (not b_lambda!198881))

(assert (not d!1651401))

(assert (not d!1651373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

