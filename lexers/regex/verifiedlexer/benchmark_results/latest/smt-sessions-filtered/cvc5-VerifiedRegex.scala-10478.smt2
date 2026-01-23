; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541222 () Bool)

(assert start!541222)

(declare-fun b!5126186 () Bool)

(declare-fun e!3196892 () Bool)

(declare-fun tp!1429789 () Bool)

(assert (=> b!5126186 (= e!3196892 tp!1429789)))

(declare-fun b!5126187 () Bool)

(declare-fun e!3196891 () Bool)

(declare-fun tp_is_empty!37765 () Bool)

(declare-fun tp!1429786 () Bool)

(assert (=> b!5126187 (= e!3196891 (and tp_is_empty!37765 tp!1429786))))

(declare-fun res!2182688 () Bool)

(declare-fun e!3196895 () Bool)

(assert (=> start!541222 (=> (not res!2182688) (not e!3196895))))

(declare-datatypes ((C!28758 0))(
  ( (C!28759 (val!24031 Int)) )
))
(declare-datatypes ((List!59423 0))(
  ( (Nil!59299) (Cons!59299 (h!65747 C!28758) (t!372450 List!59423)) )
))
(declare-fun testedP!289 () List!59423)

(declare-fun input!5798 () List!59423)

(declare-fun isPrefix!5651 (List!59423 List!59423) Bool)

(assert (=> start!541222 (= res!2182688 (isPrefix!5651 testedP!289 input!5798))))

(assert (=> start!541222 e!3196895))

(declare-fun e!3196893 () Bool)

(assert (=> start!541222 e!3196893))

(assert (=> start!541222 e!3196891))

(declare-fun condSetEmpty!30591 () Bool)

(declare-datatypes ((Regex!14246 0))(
  ( (ElementMatch!14246 (c!881302 C!28758)) (Concat!23091 (regOne!29004 Regex!14246) (regTwo!29004 Regex!14246)) (EmptyExpr!14246) (Star!14246 (reg!14575 Regex!14246)) (EmptyLang!14246) (Union!14246 (regOne!29005 Regex!14246) (regTwo!29005 Regex!14246)) )
))
(declare-datatypes ((List!59424 0))(
  ( (Nil!59300) (Cons!59300 (h!65748 Regex!14246) (t!372451 List!59424)) )
))
(declare-datatypes ((Context!7260 0))(
  ( (Context!7261 (exprs!4130 List!59424)) )
))
(declare-fun baseZ!61 () (Set Context!7260))

(assert (=> start!541222 (= condSetEmpty!30591 (= baseZ!61 (as set.empty (Set Context!7260))))))

(declare-fun setRes!30591 () Bool)

(assert (=> start!541222 setRes!30591))

(declare-fun condSetEmpty!30592 () Bool)

(declare-fun z!4546 () (Set Context!7260))

(assert (=> start!541222 (= condSetEmpty!30592 (= z!4546 (as set.empty (Set Context!7260))))))

(declare-fun setRes!30592 () Bool)

(assert (=> start!541222 setRes!30592))

(declare-fun b!5126188 () Bool)

(declare-fun e!3196894 () Bool)

(declare-fun size!39548 (List!59423) Int)

(assert (=> b!5126188 (= e!3196894 (>= (size!39548 input!5798) (size!39548 testedP!289)))))

(declare-fun b!5126189 () Bool)

(declare-fun tp!1429787 () Bool)

(assert (=> b!5126189 (= e!3196893 (and tp_is_empty!37765 tp!1429787))))

(declare-fun b!5126190 () Bool)

(declare-fun e!3196896 () Bool)

(assert (=> b!5126190 (= e!3196895 e!3196896)))

(declare-fun res!2182683 () Bool)

(assert (=> b!5126190 (=> (not res!2182683) (not e!3196896))))

(declare-fun lt!2114012 () (Set Context!7260))

(assert (=> b!5126190 (= res!2182683 (= lt!2114012 z!4546))))

(declare-fun derivationZipper!143 ((Set Context!7260) List!59423) (Set Context!7260))

(assert (=> b!5126190 (= lt!2114012 (derivationZipper!143 baseZ!61 testedP!289))))

(declare-fun setIsEmpty!30591 () Bool)

(assert (=> setIsEmpty!30591 setRes!30592))

(declare-fun setElem!30591 () Context!7260)

(declare-fun e!3196890 () Bool)

(declare-fun setNonEmpty!30591 () Bool)

(declare-fun tp!1429791 () Bool)

(declare-fun inv!78797 (Context!7260) Bool)

(assert (=> setNonEmpty!30591 (= setRes!30591 (and tp!1429791 (inv!78797 setElem!30591) e!3196890))))

(declare-fun setRest!30592 () (Set Context!7260))

(assert (=> setNonEmpty!30591 (= baseZ!61 (set.union (set.insert setElem!30591 (as set.empty (Set Context!7260))) setRest!30592))))

(declare-fun setIsEmpty!30592 () Bool)

(assert (=> setIsEmpty!30592 setRes!30591))

(declare-fun b!5126191 () Bool)

(declare-fun res!2182687 () Bool)

(assert (=> b!5126191 (=> (not res!2182687) (not e!3196895))))

(declare-fun matchZipper!914 ((Set Context!7260) List!59423) Bool)

(assert (=> b!5126191 (= res!2182687 (matchZipper!914 baseZ!61 testedP!289))))

(declare-fun setNonEmpty!30592 () Bool)

(declare-fun setElem!30592 () Context!7260)

(declare-fun tp!1429788 () Bool)

(assert (=> setNonEmpty!30592 (= setRes!30592 (and tp!1429788 (inv!78797 setElem!30592) e!3196892))))

(declare-fun setRest!30591 () (Set Context!7260))

(assert (=> setNonEmpty!30592 (= z!4546 (set.union (set.insert setElem!30592 (as set.empty (Set Context!7260))) setRest!30591))))

(declare-fun b!5126192 () Bool)

(assert (=> b!5126192 (= e!3196896 (not e!3196894))))

(declare-fun res!2182686 () Bool)

(assert (=> b!5126192 (=> res!2182686 e!3196894)))

(assert (=> b!5126192 (= res!2182686 (not (matchZipper!914 z!4546 Nil!59299)))))

(assert (=> b!5126192 (matchZipper!914 lt!2114012 Nil!59299)))

(declare-datatypes ((Unit!150481 0))(
  ( (Unit!150482) )
))
(declare-fun lt!2114011 () Unit!150481)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!15 ((Set Context!7260) List!59423) Unit!150481)

(assert (=> b!5126192 (= lt!2114011 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!15 baseZ!61 testedP!289))))

(declare-fun b!5126193 () Bool)

(declare-fun tp!1429790 () Bool)

(assert (=> b!5126193 (= e!3196890 tp!1429790)))

(declare-fun b!5126194 () Bool)

(declare-fun res!2182685 () Bool)

(assert (=> b!5126194 (=> res!2182685 e!3196894)))

(declare-fun nullableZipper!1043 ((Set Context!7260)) Bool)

(assert (=> b!5126194 (= res!2182685 (not (nullableZipper!1043 z!4546)))))

(declare-fun b!5126195 () Bool)

(declare-fun res!2182684 () Bool)

(assert (=> b!5126195 (=> res!2182684 e!3196894)))

(declare-fun lostCauseZipper!1128 ((Set Context!7260)) Bool)

(assert (=> b!5126195 (= res!2182684 (lostCauseZipper!1128 z!4546))))

(assert (= (and start!541222 res!2182688) b!5126191))

(assert (= (and b!5126191 res!2182687) b!5126190))

(assert (= (and b!5126190 res!2182683) b!5126192))

(assert (= (and b!5126192 (not res!2182686)) b!5126194))

(assert (= (and b!5126194 (not res!2182685)) b!5126195))

(assert (= (and b!5126195 (not res!2182684)) b!5126188))

(assert (= (and start!541222 (is-Cons!59299 testedP!289)) b!5126189))

(assert (= (and start!541222 (is-Cons!59299 input!5798)) b!5126187))

(assert (= (and start!541222 condSetEmpty!30591) setIsEmpty!30592))

(assert (= (and start!541222 (not condSetEmpty!30591)) setNonEmpty!30591))

(assert (= setNonEmpty!30591 b!5126193))

(assert (= (and start!541222 condSetEmpty!30592) setIsEmpty!30591))

(assert (= (and start!541222 (not condSetEmpty!30592)) setNonEmpty!30592))

(assert (= setNonEmpty!30592 b!5126186))

(declare-fun m!6190154 () Bool)

(assert (=> setNonEmpty!30591 m!6190154))

(declare-fun m!6190156 () Bool)

(assert (=> b!5126188 m!6190156))

(declare-fun m!6190158 () Bool)

(assert (=> b!5126188 m!6190158))

(declare-fun m!6190160 () Bool)

(assert (=> start!541222 m!6190160))

(declare-fun m!6190162 () Bool)

(assert (=> setNonEmpty!30592 m!6190162))

(declare-fun m!6190164 () Bool)

(assert (=> b!5126192 m!6190164))

(declare-fun m!6190166 () Bool)

(assert (=> b!5126192 m!6190166))

(declare-fun m!6190168 () Bool)

(assert (=> b!5126192 m!6190168))

(declare-fun m!6190170 () Bool)

(assert (=> b!5126190 m!6190170))

(declare-fun m!6190172 () Bool)

(assert (=> b!5126191 m!6190172))

(declare-fun m!6190174 () Bool)

(assert (=> b!5126195 m!6190174))

(declare-fun m!6190176 () Bool)

(assert (=> b!5126194 m!6190176))

(push 1)

(assert (not b!5126195))

(assert (not b!5126191))

(assert (not b!5126194))

(assert (not b!5126193))

(assert (not b!5126186))

(assert tp_is_empty!37765)

(assert (not b!5126187))

(assert (not b!5126188))

(assert (not setNonEmpty!30591))

(assert (not b!5126192))

(assert (not b!5126190))

(assert (not b!5126189))

(assert (not start!541222))

(assert (not setNonEmpty!30592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1658219 () Bool)

(declare-fun lambda!251805 () Int)

(declare-fun forall!13643 (List!59424 Int) Bool)

(assert (=> d!1658219 (= (inv!78797 setElem!30592) (forall!13643 (exprs!4130 setElem!30592) lambda!251805))))

(declare-fun bs!1193990 () Bool)

(assert (= bs!1193990 d!1658219))

(declare-fun m!6190202 () Bool)

(assert (=> bs!1193990 m!6190202))

(assert (=> setNonEmpty!30592 d!1658219))

(declare-fun d!1658223 () Bool)

(declare-fun c!881310 () Bool)

(declare-fun isEmpty!31958 (List!59423) Bool)

(assert (=> d!1658223 (= c!881310 (isEmpty!31958 testedP!289))))

(declare-fun e!3196922 () Bool)

(assert (=> d!1658223 (= (matchZipper!914 baseZ!61 testedP!289) e!3196922)))

(declare-fun b!5126234 () Bool)

(assert (=> b!5126234 (= e!3196922 (nullableZipper!1043 baseZ!61))))

(declare-fun b!5126235 () Bool)

(declare-fun derivationStepZipper!865 ((Set Context!7260) C!28758) (Set Context!7260))

(declare-fun head!10958 (List!59423) C!28758)

(declare-fun tail!10093 (List!59423) List!59423)

(assert (=> b!5126235 (= e!3196922 (matchZipper!914 (derivationStepZipper!865 baseZ!61 (head!10958 testedP!289)) (tail!10093 testedP!289)))))

(assert (= (and d!1658223 c!881310) b!5126234))

(assert (= (and d!1658223 (not c!881310)) b!5126235))

(declare-fun m!6190204 () Bool)

(assert (=> d!1658223 m!6190204))

(declare-fun m!6190206 () Bool)

(assert (=> b!5126234 m!6190206))

(declare-fun m!6190208 () Bool)

(assert (=> b!5126235 m!6190208))

(assert (=> b!5126235 m!6190208))

(declare-fun m!6190210 () Bool)

(assert (=> b!5126235 m!6190210))

(declare-fun m!6190212 () Bool)

(assert (=> b!5126235 m!6190212))

(assert (=> b!5126235 m!6190210))

(assert (=> b!5126235 m!6190212))

(declare-fun m!6190214 () Bool)

(assert (=> b!5126235 m!6190214))

(assert (=> b!5126191 d!1658223))

(declare-fun d!1658225 () Bool)

(declare-fun c!881311 () Bool)

(assert (=> d!1658225 (= c!881311 (isEmpty!31958 Nil!59299))))

(declare-fun e!3196923 () Bool)

(assert (=> d!1658225 (= (matchZipper!914 z!4546 Nil!59299) e!3196923)))

(declare-fun b!5126236 () Bool)

(assert (=> b!5126236 (= e!3196923 (nullableZipper!1043 z!4546))))

(declare-fun b!5126237 () Bool)

(assert (=> b!5126237 (= e!3196923 (matchZipper!914 (derivationStepZipper!865 z!4546 (head!10958 Nil!59299)) (tail!10093 Nil!59299)))))

(assert (= (and d!1658225 c!881311) b!5126236))

(assert (= (and d!1658225 (not c!881311)) b!5126237))

(declare-fun m!6190216 () Bool)

(assert (=> d!1658225 m!6190216))

(assert (=> b!5126236 m!6190176))

(declare-fun m!6190218 () Bool)

(assert (=> b!5126237 m!6190218))

(assert (=> b!5126237 m!6190218))

(declare-fun m!6190220 () Bool)

(assert (=> b!5126237 m!6190220))

(declare-fun m!6190222 () Bool)

(assert (=> b!5126237 m!6190222))

(assert (=> b!5126237 m!6190220))

(assert (=> b!5126237 m!6190222))

(declare-fun m!6190224 () Bool)

(assert (=> b!5126237 m!6190224))

(assert (=> b!5126192 d!1658225))

(declare-fun d!1658227 () Bool)

(declare-fun c!881312 () Bool)

(assert (=> d!1658227 (= c!881312 (isEmpty!31958 Nil!59299))))

(declare-fun e!3196924 () Bool)

(assert (=> d!1658227 (= (matchZipper!914 lt!2114012 Nil!59299) e!3196924)))

(declare-fun b!5126238 () Bool)

(assert (=> b!5126238 (= e!3196924 (nullableZipper!1043 lt!2114012))))

(declare-fun b!5126239 () Bool)

(assert (=> b!5126239 (= e!3196924 (matchZipper!914 (derivationStepZipper!865 lt!2114012 (head!10958 Nil!59299)) (tail!10093 Nil!59299)))))

(assert (= (and d!1658227 c!881312) b!5126238))

(assert (= (and d!1658227 (not c!881312)) b!5126239))

(assert (=> d!1658227 m!6190216))

(declare-fun m!6190226 () Bool)

(assert (=> b!5126238 m!6190226))

(assert (=> b!5126239 m!6190218))

(assert (=> b!5126239 m!6190218))

(declare-fun m!6190228 () Bool)

(assert (=> b!5126239 m!6190228))

(assert (=> b!5126239 m!6190222))

(assert (=> b!5126239 m!6190228))

(assert (=> b!5126239 m!6190222))

(declare-fun m!6190230 () Bool)

(assert (=> b!5126239 m!6190230))

(assert (=> b!5126192 d!1658227))

(declare-fun d!1658229 () Bool)

(assert (=> d!1658229 (= (matchZipper!914 baseZ!61 testedP!289) (matchZipper!914 (derivationZipper!143 baseZ!61 testedP!289) Nil!59299))))

(declare-fun lt!2114025 () Unit!150481)

(declare-fun choose!37747 ((Set Context!7260) List!59423) Unit!150481)

(assert (=> d!1658229 (= lt!2114025 (choose!37747 baseZ!61 testedP!289))))

(assert (=> d!1658229 (= (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!15 baseZ!61 testedP!289) lt!2114025)))

(declare-fun bs!1193991 () Bool)

(assert (= bs!1193991 d!1658229))

(assert (=> bs!1193991 m!6190172))

(assert (=> bs!1193991 m!6190170))

(assert (=> bs!1193991 m!6190170))

(declare-fun m!6190232 () Bool)

(assert (=> bs!1193991 m!6190232))

(declare-fun m!6190234 () Bool)

(assert (=> bs!1193991 m!6190234))

(assert (=> b!5126192 d!1658229))

(declare-fun b!5126249 () Bool)

(declare-fun res!2182717 () Bool)

(declare-fun e!3196932 () Bool)

(assert (=> b!5126249 (=> (not res!2182717) (not e!3196932))))

(assert (=> b!5126249 (= res!2182717 (= (head!10958 testedP!289) (head!10958 input!5798)))))

(declare-fun b!5126248 () Bool)

(declare-fun e!3196933 () Bool)

(assert (=> b!5126248 (= e!3196933 e!3196932)))

(declare-fun res!2182715 () Bool)

(assert (=> b!5126248 (=> (not res!2182715) (not e!3196932))))

(assert (=> b!5126248 (= res!2182715 (not (is-Nil!59299 input!5798)))))

(declare-fun b!5126251 () Bool)

(declare-fun e!3196931 () Bool)

(assert (=> b!5126251 (= e!3196931 (>= (size!39548 input!5798) (size!39548 testedP!289)))))

(declare-fun b!5126250 () Bool)

(assert (=> b!5126250 (= e!3196932 (isPrefix!5651 (tail!10093 testedP!289) (tail!10093 input!5798)))))

(declare-fun d!1658231 () Bool)

(assert (=> d!1658231 e!3196931))

(declare-fun res!2182716 () Bool)

(assert (=> d!1658231 (=> res!2182716 e!3196931)))

(declare-fun lt!2114028 () Bool)

(assert (=> d!1658231 (= res!2182716 (not lt!2114028))))

(assert (=> d!1658231 (= lt!2114028 e!3196933)))

(declare-fun res!2182718 () Bool)

(assert (=> d!1658231 (=> res!2182718 e!3196933)))

(assert (=> d!1658231 (= res!2182718 (is-Nil!59299 testedP!289))))

(assert (=> d!1658231 (= (isPrefix!5651 testedP!289 input!5798) lt!2114028)))

(assert (= (and d!1658231 (not res!2182718)) b!5126248))

(assert (= (and b!5126248 res!2182715) b!5126249))

(assert (= (and b!5126249 res!2182717) b!5126250))

(assert (= (and d!1658231 (not res!2182716)) b!5126251))

(assert (=> b!5126249 m!6190208))

(declare-fun m!6190236 () Bool)

(assert (=> b!5126249 m!6190236))

(assert (=> b!5126251 m!6190156))

(assert (=> b!5126251 m!6190158))

(assert (=> b!5126250 m!6190212))

(declare-fun m!6190238 () Bool)

(assert (=> b!5126250 m!6190238))

(assert (=> b!5126250 m!6190212))

(assert (=> b!5126250 m!6190238))

(declare-fun m!6190240 () Bool)

(assert (=> b!5126250 m!6190240))

(assert (=> start!541222 d!1658231))

(declare-fun d!1658233 () Bool)

(declare-fun c!881315 () Bool)

(assert (=> d!1658233 (= c!881315 (is-Cons!59299 testedP!289))))

(declare-fun e!3196936 () (Set Context!7260))

(assert (=> d!1658233 (= (derivationZipper!143 baseZ!61 testedP!289) e!3196936)))

(declare-fun b!5126256 () Bool)

(assert (=> b!5126256 (= e!3196936 (derivationZipper!143 (derivationStepZipper!865 baseZ!61 (h!65747 testedP!289)) (t!372450 testedP!289)))))

(declare-fun b!5126257 () Bool)

(assert (=> b!5126257 (= e!3196936 baseZ!61)))

(assert (= (and d!1658233 c!881315) b!5126256))

(assert (= (and d!1658233 (not c!881315)) b!5126257))

(declare-fun m!6190242 () Bool)

(assert (=> b!5126256 m!6190242))

(assert (=> b!5126256 m!6190242))

(declare-fun m!6190244 () Bool)

(assert (=> b!5126256 m!6190244))

(assert (=> b!5126190 d!1658233))

(declare-fun bs!1193992 () Bool)

(declare-fun d!1658235 () Bool)

(assert (= bs!1193992 (and d!1658235 d!1658219)))

(declare-fun lambda!251806 () Int)

(assert (=> bs!1193992 (= lambda!251806 lambda!251805)))

(assert (=> d!1658235 (= (inv!78797 setElem!30591) (forall!13643 (exprs!4130 setElem!30591) lambda!251806))))

(declare-fun bs!1193993 () Bool)

(assert (= bs!1193993 d!1658235))

(declare-fun m!6190246 () Bool)

(assert (=> bs!1193993 m!6190246))

(assert (=> setNonEmpty!30591 d!1658235))

(declare-fun bs!1193994 () Bool)

(declare-fun b!5126262 () Bool)

(declare-fun d!1658237 () Bool)

(assert (= bs!1193994 (and b!5126262 d!1658237)))

(declare-fun lambda!251820 () Int)

(declare-fun lambda!251819 () Int)

(assert (=> bs!1193994 (not (= lambda!251820 lambda!251819))))

(declare-fun bs!1193995 () Bool)

(declare-fun b!5126263 () Bool)

(assert (= bs!1193995 (and b!5126263 d!1658237)))

(declare-fun lambda!251821 () Int)

(assert (=> bs!1193995 (not (= lambda!251821 lambda!251819))))

(declare-fun bs!1193996 () Bool)

(assert (= bs!1193996 (and b!5126263 b!5126262)))

(assert (=> bs!1193996 (= lambda!251821 lambda!251820)))

(declare-datatypes ((List!59427 0))(
  ( (Nil!59303) (Cons!59303 (h!65751 Context!7260) (t!372454 List!59427)) )
))
(declare-fun lt!2114049 () List!59427)

(declare-fun c!881326 () Bool)

(declare-fun bm!356829 () Bool)

(declare-fun lt!2114052 () List!59427)

(declare-fun call!356834 () Bool)

(declare-fun exists!1498 (List!59427 Int) Bool)

(assert (=> bm!356829 (= call!356834 (exists!1498 (ite c!881326 lt!2114049 lt!2114052) (ite c!881326 lambda!251820 lambda!251821)))))

(declare-fun e!3196943 () Unit!150481)

(declare-fun Unit!150485 () Unit!150481)

(assert (=> b!5126262 (= e!3196943 Unit!150485)))

(declare-fun call!356835 () List!59427)

(assert (=> b!5126262 (= lt!2114049 call!356835)))

(declare-fun lt!2114051 () Unit!150481)

(declare-fun lemmaNotForallThenExists!349 (List!59427 Int) Unit!150481)

(assert (=> b!5126262 (= lt!2114051 (lemmaNotForallThenExists!349 lt!2114049 lambda!251819))))

(assert (=> b!5126262 call!356834))

(declare-fun lt!2114045 () Unit!150481)

(assert (=> b!5126262 (= lt!2114045 lt!2114051)))

(declare-fun lt!2114047 () Bool)

(declare-datatypes ((Option!14709 0))(
  ( (None!14708) (Some!14708 (v!50721 List!59423)) )
))
(declare-fun isEmpty!31959 (Option!14709) Bool)

(declare-fun getLanguageWitness!838 ((Set Context!7260)) Option!14709)

(assert (=> d!1658237 (= lt!2114047 (isEmpty!31959 (getLanguageWitness!838 z!4546)))))

(declare-fun forall!13644 ((Set Context!7260) Int) Bool)

(assert (=> d!1658237 (= lt!2114047 (forall!13644 z!4546 lambda!251819))))

(declare-fun lt!2114046 () Unit!150481)

(assert (=> d!1658237 (= lt!2114046 e!3196943)))

(assert (=> d!1658237 (= c!881326 (not (forall!13644 z!4546 lambda!251819)))))

(assert (=> d!1658237 (= (lostCauseZipper!1128 z!4546) lt!2114047)))

(declare-fun Unit!150486 () Unit!150481)

(assert (=> b!5126263 (= e!3196943 Unit!150486)))

(assert (=> b!5126263 (= lt!2114052 call!356835)))

(declare-fun lt!2114048 () Unit!150481)

(declare-fun lemmaForallThenNotExists!332 (List!59427 Int) Unit!150481)

(assert (=> b!5126263 (= lt!2114048 (lemmaForallThenNotExists!332 lt!2114052 lambda!251819))))

(assert (=> b!5126263 (not call!356834)))

(declare-fun lt!2114050 () Unit!150481)

(assert (=> b!5126263 (= lt!2114050 lt!2114048)))

(declare-fun bm!356830 () Bool)

(declare-fun toList!8275 ((Set Context!7260)) List!59427)

(assert (=> bm!356830 (= call!356835 (toList!8275 z!4546))))

(assert (= (and d!1658237 c!881326) b!5126262))

(assert (= (and d!1658237 (not c!881326)) b!5126263))

(assert (= (or b!5126262 b!5126263) bm!356829))

(assert (= (or b!5126262 b!5126263) bm!356830))

(declare-fun m!6190248 () Bool)

(assert (=> b!5126262 m!6190248))

(declare-fun m!6190250 () Bool)

(assert (=> bm!356829 m!6190250))

(declare-fun m!6190252 () Bool)

(assert (=> d!1658237 m!6190252))

(assert (=> d!1658237 m!6190252))

(declare-fun m!6190254 () Bool)

(assert (=> d!1658237 m!6190254))

(declare-fun m!6190256 () Bool)

(assert (=> d!1658237 m!6190256))

(assert (=> d!1658237 m!6190256))

(declare-fun m!6190258 () Bool)

(assert (=> b!5126263 m!6190258))

(declare-fun m!6190260 () Bool)

(assert (=> bm!356830 m!6190260))

(assert (=> b!5126195 d!1658237))

(declare-fun d!1658239 () Bool)

(declare-fun lt!2114055 () Int)

(assert (=> d!1658239 (>= lt!2114055 0)))

(declare-fun e!3196946 () Int)

(assert (=> d!1658239 (= lt!2114055 e!3196946)))

(declare-fun c!881329 () Bool)

(assert (=> d!1658239 (= c!881329 (is-Nil!59299 input!5798))))

(assert (=> d!1658239 (= (size!39548 input!5798) lt!2114055)))

(declare-fun b!5126268 () Bool)

(assert (=> b!5126268 (= e!3196946 0)))

(declare-fun b!5126269 () Bool)

(assert (=> b!5126269 (= e!3196946 (+ 1 (size!39548 (t!372450 input!5798))))))

(assert (= (and d!1658239 c!881329) b!5126268))

(assert (= (and d!1658239 (not c!881329)) b!5126269))

(declare-fun m!6190262 () Bool)

(assert (=> b!5126269 m!6190262))

(assert (=> b!5126188 d!1658239))

(declare-fun d!1658241 () Bool)

(declare-fun lt!2114056 () Int)

(assert (=> d!1658241 (>= lt!2114056 0)))

(declare-fun e!3196947 () Int)

(assert (=> d!1658241 (= lt!2114056 e!3196947)))

(declare-fun c!881330 () Bool)

(assert (=> d!1658241 (= c!881330 (is-Nil!59299 testedP!289))))

(assert (=> d!1658241 (= (size!39548 testedP!289) lt!2114056)))

(declare-fun b!5126270 () Bool)

(assert (=> b!5126270 (= e!3196947 0)))

(declare-fun b!5126271 () Bool)

(assert (=> b!5126271 (= e!3196947 (+ 1 (size!39548 (t!372450 testedP!289))))))

(assert (= (and d!1658241 c!881330) b!5126270))

(assert (= (and d!1658241 (not c!881330)) b!5126271))

(declare-fun m!6190264 () Bool)

(assert (=> b!5126271 m!6190264))

(assert (=> b!5126188 d!1658241))

(declare-fun bs!1193997 () Bool)

(declare-fun d!1658243 () Bool)

(assert (= bs!1193997 (and d!1658243 d!1658237)))

(declare-fun lambda!251824 () Int)

(assert (=> bs!1193997 (not (= lambda!251824 lambda!251819))))

(declare-fun bs!1193998 () Bool)

(assert (= bs!1193998 (and d!1658243 b!5126262)))

(assert (=> bs!1193998 (not (= lambda!251824 lambda!251820))))

(declare-fun bs!1193999 () Bool)

(assert (= bs!1193999 (and d!1658243 b!5126263)))

(assert (=> bs!1193999 (not (= lambda!251824 lambda!251821))))

(declare-fun exists!1499 ((Set Context!7260) Int) Bool)

(assert (=> d!1658243 (= (nullableZipper!1043 z!4546) (exists!1499 z!4546 lambda!251824))))

(declare-fun bs!1194000 () Bool)

(assert (= bs!1194000 d!1658243))

(declare-fun m!6190266 () Bool)

(assert (=> bs!1194000 m!6190266))

(assert (=> b!5126194 d!1658243))

(declare-fun condSetEmpty!30601 () Bool)

(assert (=> setNonEmpty!30592 (= condSetEmpty!30601 (= setRest!30591 (as set.empty (Set Context!7260))))))

(declare-fun setRes!30601 () Bool)

(assert (=> setNonEmpty!30592 (= tp!1429788 setRes!30601)))

(declare-fun setIsEmpty!30601 () Bool)

(assert (=> setIsEmpty!30601 setRes!30601))

(declare-fun setNonEmpty!30601 () Bool)

(declare-fun e!3196950 () Bool)

(declare-fun setElem!30601 () Context!7260)

(declare-fun tp!1429815 () Bool)

(assert (=> setNonEmpty!30601 (= setRes!30601 (and tp!1429815 (inv!78797 setElem!30601) e!3196950))))

(declare-fun setRest!30601 () (Set Context!7260))

(assert (=> setNonEmpty!30601 (= setRest!30591 (set.union (set.insert setElem!30601 (as set.empty (Set Context!7260))) setRest!30601))))

(declare-fun b!5126276 () Bool)

(declare-fun tp!1429814 () Bool)

(assert (=> b!5126276 (= e!3196950 tp!1429814)))

(assert (= (and setNonEmpty!30592 condSetEmpty!30601) setIsEmpty!30601))

(assert (= (and setNonEmpty!30592 (not condSetEmpty!30601)) setNonEmpty!30601))

(assert (= setNonEmpty!30601 b!5126276))

(declare-fun m!6190268 () Bool)

(assert (=> setNonEmpty!30601 m!6190268))

(declare-fun b!5126281 () Bool)

(declare-fun e!3196953 () Bool)

(declare-fun tp!1429818 () Bool)

(assert (=> b!5126281 (= e!3196953 (and tp_is_empty!37765 tp!1429818))))

(assert (=> b!5126189 (= tp!1429787 e!3196953)))

(assert (= (and b!5126189 (is-Cons!59299 (t!372450 testedP!289))) b!5126281))

(declare-fun b!5126282 () Bool)

(declare-fun e!3196954 () Bool)

(declare-fun tp!1429819 () Bool)

(assert (=> b!5126282 (= e!3196954 (and tp_is_empty!37765 tp!1429819))))

(assert (=> b!5126187 (= tp!1429786 e!3196954)))

(assert (= (and b!5126187 (is-Cons!59299 (t!372450 input!5798))) b!5126282))

(declare-fun condSetEmpty!30602 () Bool)

(assert (=> setNonEmpty!30591 (= condSetEmpty!30602 (= setRest!30592 (as set.empty (Set Context!7260))))))

(declare-fun setRes!30602 () Bool)

(assert (=> setNonEmpty!30591 (= tp!1429791 setRes!30602)))

(declare-fun setIsEmpty!30602 () Bool)

(assert (=> setIsEmpty!30602 setRes!30602))

(declare-fun tp!1429821 () Bool)

(declare-fun setElem!30602 () Context!7260)

(declare-fun setNonEmpty!30602 () Bool)

(declare-fun e!3196955 () Bool)

(assert (=> setNonEmpty!30602 (= setRes!30602 (and tp!1429821 (inv!78797 setElem!30602) e!3196955))))

(declare-fun setRest!30602 () (Set Context!7260))

(assert (=> setNonEmpty!30602 (= setRest!30592 (set.union (set.insert setElem!30602 (as set.empty (Set Context!7260))) setRest!30602))))

(declare-fun b!5126283 () Bool)

(declare-fun tp!1429820 () Bool)

(assert (=> b!5126283 (= e!3196955 tp!1429820)))

(assert (= (and setNonEmpty!30591 condSetEmpty!30602) setIsEmpty!30602))

(assert (= (and setNonEmpty!30591 (not condSetEmpty!30602)) setNonEmpty!30602))

(assert (= setNonEmpty!30602 b!5126283))

(declare-fun m!6190270 () Bool)

(assert (=> setNonEmpty!30602 m!6190270))

(declare-fun b!5126288 () Bool)

(declare-fun e!3196958 () Bool)

(declare-fun tp!1429826 () Bool)

(declare-fun tp!1429827 () Bool)

(assert (=> b!5126288 (= e!3196958 (and tp!1429826 tp!1429827))))

(assert (=> b!5126193 (= tp!1429790 e!3196958)))

(assert (= (and b!5126193 (is-Cons!59300 (exprs!4130 setElem!30591))) b!5126288))

(declare-fun b!5126289 () Bool)

(declare-fun e!3196959 () Bool)

(declare-fun tp!1429828 () Bool)

(declare-fun tp!1429829 () Bool)

(assert (=> b!5126289 (= e!3196959 (and tp!1429828 tp!1429829))))

(assert (=> b!5126186 (= tp!1429789 e!3196959)))

(assert (= (and b!5126186 (is-Cons!59300 (exprs!4130 setElem!30592))) b!5126289))

(push 1)

(assert (not b!5126281))

(assert (not b!5126263))

(assert (not b!5126288))

(assert (not b!5126262))

(assert (not b!5126282))

(assert (not b!5126271))

(assert (not bm!356829))

(assert (not d!1658243))

(assert (not b!5126235))

(assert (not b!5126249))

(assert (not d!1658219))

(assert (not b!5126234))

(assert (not d!1658235))

(assert (not b!5126238))

(assert (not b!5126237))

(assert (not b!5126239))

(assert (not d!1658227))

(assert (not b!5126250))

(assert (not b!5126236))

(assert (not setNonEmpty!30602))

(assert (not d!1658223))

(assert (not b!5126256))

(assert (not b!5126269))

(assert (not b!5126289))

(assert (not bm!356830))

(assert tp_is_empty!37765)

(assert (not d!1658225))

(assert (not b!5126276))

(assert (not setNonEmpty!30601))

(assert (not b!5126283))

(assert (not d!1658229))

(assert (not d!1658237))

(assert (not b!5126251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

