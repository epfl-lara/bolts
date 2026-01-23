; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279040 () Bool)

(assert start!279040)

(declare-fun b!2864191 () Bool)

(declare-fun condSetEmpty!25528 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17488 0))(
  ( (C!17489 (val!10778 Int)) )
))
(declare-datatypes ((Regex!8653 0))(
  ( (ElementMatch!8653 (c!461790 C!17488)) (Concat!13974 (regOne!17818 Regex!8653) (regTwo!17818 Regex!8653)) (EmptyExpr!8653) (Star!8653 (reg!8982 Regex!8653)) (EmptyLang!8653) (Union!8653 (regOne!17819 Regex!8653) (regTwo!17819 Regex!8653)) )
))
(declare-datatypes ((List!34295 0))(
  ( (Nil!34171) (Cons!34171 (h!39591 Regex!8653) (t!233336 List!34295)) )
))
(declare-datatypes ((Context!5226 0))(
  ( (Context!5227 (exprs!3113 List!34295)) )
))
(declare-fun lt!1015324 () (InoxSet Context!5226))

(assert (=> b!2864191 (= condSetEmpty!25528 (= lt!1015324 ((as const (Array Context!5226 Bool)) false)))))

(declare-fun setRes!25528 () Bool)

(assert (=> b!2864191 setRes!25528))

(declare-fun setIsEmpty!25528 () Bool)

(assert (=> setIsEmpty!25528 setRes!25528))

(declare-fun setNonEmpty!25528 () Bool)

(assert (=> setNonEmpty!25528 (= setRes!25528 true)))

(declare-fun setElem!25528 () Context!5226)

(declare-fun setRest!25528 () (InoxSet Context!5226))

(assert (=> setNonEmpty!25528 (= lt!1015324 ((_ map or) (store ((as const (Array Context!5226 Bool)) false) setElem!25528 true) setRest!25528))))

(assert (= (and b!2864191 condSetEmpty!25528) setIsEmpty!25528))

(assert (= (and b!2864191 (not condSetEmpty!25528)) setNonEmpty!25528))

(assert (=> b!2864191 true))

(declare-fun bs!520782 () Bool)

(declare-fun b!2864196 () Bool)

(assert (= bs!520782 (and b!2864196 b!2864191)))

(declare-fun lambda!105726 () Int)

(declare-fun lambda!105727 () Int)

(declare-datatypes ((List!34296 0))(
  ( (Nil!34172) (Cons!34172 (h!39592 C!17488) (t!233337 List!34296)) )
))
(declare-fun prefix!919 () List!34296)

(declare-fun z!960 () (InoxSet Context!5226))

(assert (=> bs!520782 (= (and (= z!960 lt!1015324) (= prefix!919 (t!233337 prefix!919))) (= lambda!105727 lambda!105726))))

(assert (=> b!2864196 true))

(declare-fun condSetEmpty!25529 () Bool)

(assert (=> b!2864196 (= condSetEmpty!25529 (= z!960 ((as const (Array Context!5226 Bool)) false)))))

(declare-fun setRes!25529 () Bool)

(assert (=> b!2864196 setRes!25529))

(declare-fun setIsEmpty!25529 () Bool)

(assert (=> setIsEmpty!25529 setRes!25529))

(declare-fun setNonEmpty!25529 () Bool)

(assert (=> setNonEmpty!25529 (= setRes!25529 true)))

(declare-fun setElem!25529 () Context!5226)

(declare-fun setRest!25529 () (InoxSet Context!5226))

(assert (=> setNonEmpty!25529 (= z!960 ((_ map or) (store ((as const (Array Context!5226 Bool)) false) setElem!25529 true) setRest!25529))))

(assert (= (and b!2864196 condSetEmpty!25529) setIsEmpty!25529))

(assert (= (and b!2864196 (not condSetEmpty!25529)) setNonEmpty!25529))

(declare-fun e!1813167 () Bool)

(declare-fun e!1813165 () Bool)

(assert (=> b!2864191 (= e!1813167 (not e!1813165))))

(declare-fun res!1189112 () Bool)

(assert (=> b!2864191 (=> res!1189112 e!1813165)))

(declare-fun lt!1015323 () List!34296)

(declare-fun matchZipper!441 ((InoxSet Context!5226) List!34296) Bool)

(assert (=> b!2864191 (= res!1189112 (not (matchZipper!441 lt!1015324 lt!1015323)))))

(declare-fun pickWitness!332 (Int) List!34296)

(assert (=> b!2864191 (= lt!1015323 (pickWitness!332 lambda!105726))))

(declare-fun Exists!1329 (Int) Bool)

(assert (=> b!2864191 (Exists!1329 lambda!105726)))

(assert (=> b!2864191 (Exists!1329 lambda!105726)))

(declare-datatypes ((Unit!47833 0))(
  ( (Unit!47834) )
))
(declare-fun lt!1015322 () Unit!47833)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!373 ((InoxSet Context!5226) List!34296) Unit!47833)

(assert (=> b!2864191 (= lt!1015322 (lemmaPrefixMatchThenExistsStringThatMatches!373 lt!1015324 (t!233337 prefix!919)))))

(declare-fun derivationStepZipper!451 ((InoxSet Context!5226) C!17488) (InoxSet Context!5226))

(assert (=> b!2864191 (= lt!1015324 (derivationStepZipper!451 z!960 (h!39592 prefix!919)))))

(declare-fun b!2864192 () Bool)

(declare-fun res!1189109 () Bool)

(declare-fun e!1813163 () Bool)

(assert (=> b!2864192 (=> res!1189109 e!1813163)))

(declare-fun lt!1015321 () List!34296)

(declare-fun isPrefix!2702 (List!34296 List!34296) Bool)

(assert (=> b!2864192 (= res!1189109 (not (isPrefix!2702 prefix!919 lt!1015321)))))

(declare-fun res!1189110 () Bool)

(assert (=> start!279040 (=> (not res!1189110) (not e!1813167))))

(declare-fun prefixMatchZipper!335 ((InoxSet Context!5226) List!34296) Bool)

(assert (=> start!279040 (= res!1189110 (prefixMatchZipper!335 z!960 prefix!919))))

(assert (=> start!279040 e!1813167))

(declare-fun condSetEmpty!25525 () Bool)

(assert (=> start!279040 (= condSetEmpty!25525 (= z!960 ((as const (Array Context!5226 Bool)) false)))))

(declare-fun setRes!25525 () Bool)

(assert (=> start!279040 setRes!25525))

(declare-fun e!1813164 () Bool)

(assert (=> start!279040 e!1813164))

(declare-fun b!2864193 () Bool)

(declare-fun res!1189108 () Bool)

(assert (=> b!2864193 (=> (not res!1189108) (not e!1813167))))

(get-info :version)

(assert (=> b!2864193 (= res!1189108 (not ((_ is Nil!34172) prefix!919)))))

(declare-fun setIsEmpty!25525 () Bool)

(assert (=> setIsEmpty!25525 setRes!25525))

(declare-fun b!2864194 () Bool)

(declare-fun tp_is_empty!15043 () Bool)

(declare-fun tp!922385 () Bool)

(assert (=> b!2864194 (= e!1813164 (and tp_is_empty!15043 tp!922385))))

(declare-fun b!2864195 () Bool)

(assert (=> b!2864195 (= e!1813165 e!1813163)))

(declare-fun res!1189111 () Bool)

(assert (=> b!2864195 (=> res!1189111 e!1813163)))

(assert (=> b!2864195 (= res!1189111 (not (matchZipper!441 z!960 lt!1015321)))))

(declare-fun $colon$colon!607 (List!34296 C!17488) List!34296)

(assert (=> b!2864195 (= lt!1015321 ($colon$colon!607 lt!1015323 (h!39592 prefix!919)))))

(declare-fun setNonEmpty!25525 () Bool)

(declare-fun e!1813166 () Bool)

(declare-fun setElem!25525 () Context!5226)

(declare-fun tp!922386 () Bool)

(declare-fun inv!46219 (Context!5226) Bool)

(assert (=> setNonEmpty!25525 (= setRes!25525 (and tp!922386 (inv!46219 setElem!25525) e!1813166))))

(declare-fun setRest!25525 () (InoxSet Context!5226))

(assert (=> setNonEmpty!25525 (= z!960 ((_ map or) (store ((as const (Array Context!5226 Bool)) false) setElem!25525 true) setRest!25525))))

(assert (=> b!2864196 (= e!1813163 (Exists!1329 lambda!105727))))

(declare-fun lt!1015325 () Unit!47833)

(declare-fun ExistsThe!16 (List!34296 Int) Unit!47833)

(assert (=> b!2864196 (= lt!1015325 (ExistsThe!16 lt!1015321 lambda!105727))))

(declare-fun b!2864197 () Bool)

(declare-fun res!1189107 () Bool)

(assert (=> b!2864197 (=> res!1189107 e!1813165)))

(assert (=> b!2864197 (= res!1189107 (not (isPrefix!2702 (t!233337 prefix!919) lt!1015323)))))

(declare-fun b!2864198 () Bool)

(declare-fun tp!922384 () Bool)

(assert (=> b!2864198 (= e!1813166 tp!922384)))

(assert (= (and start!279040 res!1189110) b!2864193))

(assert (= (and b!2864193 res!1189108) b!2864191))

(assert (= (and b!2864191 (not res!1189112)) b!2864197))

(assert (= (and b!2864197 (not res!1189107)) b!2864195))

(assert (= (and b!2864195 (not res!1189111)) b!2864192))

(assert (= (and b!2864192 (not res!1189109)) b!2864196))

(assert (= (and start!279040 condSetEmpty!25525) setIsEmpty!25525))

(assert (= (and start!279040 (not condSetEmpty!25525)) setNonEmpty!25525))

(assert (= setNonEmpty!25525 b!2864198))

(assert (= (and start!279040 ((_ is Cons!34172) prefix!919)) b!2864194))

(declare-fun m!3283775 () Bool)

(assert (=> b!2864197 m!3283775))

(declare-fun m!3283777 () Bool)

(assert (=> b!2864192 m!3283777))

(declare-fun m!3283779 () Bool)

(assert (=> b!2864195 m!3283779))

(declare-fun m!3283781 () Bool)

(assert (=> b!2864195 m!3283781))

(declare-fun m!3283783 () Bool)

(assert (=> b!2864196 m!3283783))

(declare-fun m!3283785 () Bool)

(assert (=> b!2864196 m!3283785))

(declare-fun m!3283787 () Bool)

(assert (=> setNonEmpty!25525 m!3283787))

(declare-fun m!3283789 () Bool)

(assert (=> start!279040 m!3283789))

(declare-fun m!3283791 () Bool)

(assert (=> b!2864191 m!3283791))

(declare-fun m!3283793 () Bool)

(assert (=> b!2864191 m!3283793))

(declare-fun m!3283795 () Bool)

(assert (=> b!2864191 m!3283795))

(declare-fun m!3283797 () Bool)

(assert (=> b!2864191 m!3283797))

(declare-fun m!3283799 () Bool)

(assert (=> b!2864191 m!3283799))

(assert (=> b!2864191 m!3283791))

(check-sat (not b!2864198) (not b!2864191) tp_is_empty!15043 (not b!2864197) (not b!2864194) (not b!2864196) (not setNonEmpty!25528) (not start!279040) (not b!2864192) (not setNonEmpty!25529) (not b!2864195) (not setNonEmpty!25525))
(check-sat)
(get-model)

(declare-fun d!828088 () Bool)

(declare-fun lambda!105730 () Int)

(declare-fun forall!6989 (List!34295 Int) Bool)

(assert (=> d!828088 (= (inv!46219 setElem!25525) (forall!6989 (exprs!3113 setElem!25525) lambda!105730))))

(declare-fun bs!520783 () Bool)

(assert (= bs!520783 d!828088))

(declare-fun m!3283801 () Bool)

(assert (=> bs!520783 m!3283801))

(assert (=> setNonEmpty!25525 d!828088))

(declare-fun b!2864212 () Bool)

(declare-fun res!1189121 () Bool)

(declare-fun e!1813174 () Bool)

(assert (=> b!2864212 (=> (not res!1189121) (not e!1813174))))

(declare-fun head!6315 (List!34296) C!17488)

(assert (=> b!2864212 (= res!1189121 (= (head!6315 prefix!919) (head!6315 lt!1015321)))))

(declare-fun b!2864211 () Bool)

(declare-fun e!1813176 () Bool)

(assert (=> b!2864211 (= e!1813176 e!1813174)))

(declare-fun res!1189124 () Bool)

(assert (=> b!2864211 (=> (not res!1189124) (not e!1813174))))

(assert (=> b!2864211 (= res!1189124 (not ((_ is Nil!34172) lt!1015321)))))

(declare-fun d!828090 () Bool)

(declare-fun e!1813175 () Bool)

(assert (=> d!828090 e!1813175))

(declare-fun res!1189123 () Bool)

(assert (=> d!828090 (=> res!1189123 e!1813175)))

(declare-fun lt!1015328 () Bool)

(assert (=> d!828090 (= res!1189123 (not lt!1015328))))

(assert (=> d!828090 (= lt!1015328 e!1813176)))

(declare-fun res!1189122 () Bool)

(assert (=> d!828090 (=> res!1189122 e!1813176)))

(assert (=> d!828090 (= res!1189122 ((_ is Nil!34172) prefix!919))))

(assert (=> d!828090 (= (isPrefix!2702 prefix!919 lt!1015321) lt!1015328)))

(declare-fun b!2864213 () Bool)

(declare-fun tail!4540 (List!34296) List!34296)

(assert (=> b!2864213 (= e!1813174 (isPrefix!2702 (tail!4540 prefix!919) (tail!4540 lt!1015321)))))

(declare-fun b!2864214 () Bool)

(declare-fun size!26300 (List!34296) Int)

(assert (=> b!2864214 (= e!1813175 (>= (size!26300 lt!1015321) (size!26300 prefix!919)))))

(assert (= (and d!828090 (not res!1189122)) b!2864211))

(assert (= (and b!2864211 res!1189124) b!2864212))

(assert (= (and b!2864212 res!1189121) b!2864213))

(assert (= (and d!828090 (not res!1189123)) b!2864214))

(declare-fun m!3283803 () Bool)

(assert (=> b!2864212 m!3283803))

(declare-fun m!3283805 () Bool)

(assert (=> b!2864212 m!3283805))

(declare-fun m!3283807 () Bool)

(assert (=> b!2864213 m!3283807))

(declare-fun m!3283809 () Bool)

(assert (=> b!2864213 m!3283809))

(assert (=> b!2864213 m!3283807))

(assert (=> b!2864213 m!3283809))

(declare-fun m!3283811 () Bool)

(assert (=> b!2864213 m!3283811))

(declare-fun m!3283813 () Bool)

(assert (=> b!2864214 m!3283813))

(declare-fun m!3283815 () Bool)

(assert (=> b!2864214 m!3283815))

(assert (=> b!2864192 d!828090))

(declare-fun d!828094 () Bool)

(declare-fun c!461793 () Bool)

(declare-fun isEmpty!18649 (List!34296) Bool)

(assert (=> d!828094 (= c!461793 (isEmpty!18649 lt!1015321))))

(declare-fun e!1813185 () Bool)

(assert (=> d!828094 (= (matchZipper!441 z!960 lt!1015321) e!1813185)))

(declare-fun b!2864227 () Bool)

(declare-fun nullableZipper!694 ((InoxSet Context!5226)) Bool)

(assert (=> b!2864227 (= e!1813185 (nullableZipper!694 z!960))))

(declare-fun b!2864228 () Bool)

(assert (=> b!2864228 (= e!1813185 (matchZipper!441 (derivationStepZipper!451 z!960 (head!6315 lt!1015321)) (tail!4540 lt!1015321)))))

(assert (= (and d!828094 c!461793) b!2864227))

(assert (= (and d!828094 (not c!461793)) b!2864228))

(declare-fun m!3283817 () Bool)

(assert (=> d!828094 m!3283817))

(declare-fun m!3283819 () Bool)

(assert (=> b!2864227 m!3283819))

(assert (=> b!2864228 m!3283805))

(assert (=> b!2864228 m!3283805))

(declare-fun m!3283821 () Bool)

(assert (=> b!2864228 m!3283821))

(assert (=> b!2864228 m!3283809))

(assert (=> b!2864228 m!3283821))

(assert (=> b!2864228 m!3283809))

(declare-fun m!3283823 () Bool)

(assert (=> b!2864228 m!3283823))

(assert (=> b!2864195 d!828094))

(declare-fun d!828096 () Bool)

(assert (=> d!828096 (= ($colon$colon!607 lt!1015323 (h!39592 prefix!919)) (Cons!34172 (h!39592 prefix!919) lt!1015323))))

(assert (=> b!2864195 d!828096))

(declare-fun d!828098 () Bool)

(declare-fun lt!1015336 () List!34296)

(declare-fun dynLambda!14263 (Int List!34296) Bool)

(assert (=> d!828098 (dynLambda!14263 lambda!105726 lt!1015336)))

(declare-fun choose!16878 (Int) List!34296)

(assert (=> d!828098 (= lt!1015336 (choose!16878 lambda!105726))))

(assert (=> d!828098 (Exists!1329 lambda!105726)))

(assert (=> d!828098 (= (pickWitness!332 lambda!105726) lt!1015336)))

(declare-fun b_lambda!85871 () Bool)

(assert (=> (not b_lambda!85871) (not d!828098)))

(declare-fun bs!520784 () Bool)

(assert (= bs!520784 d!828098))

(declare-fun m!3283839 () Bool)

(assert (=> bs!520784 m!3283839))

(declare-fun m!3283841 () Bool)

(assert (=> bs!520784 m!3283841))

(assert (=> bs!520784 m!3283791))

(assert (=> b!2864191 d!828098))

(declare-fun d!828102 () Bool)

(declare-fun choose!16879 (Int) Bool)

(assert (=> d!828102 (= (Exists!1329 lambda!105726) (choose!16879 lambda!105726))))

(declare-fun bs!520786 () Bool)

(assert (= bs!520786 d!828102))

(declare-fun m!3283847 () Bool)

(assert (=> bs!520786 m!3283847))

(assert (=> b!2864191 d!828102))

(declare-fun d!828106 () Bool)

(declare-fun c!461794 () Bool)

(assert (=> d!828106 (= c!461794 (isEmpty!18649 lt!1015323))))

(declare-fun e!1813189 () Bool)

(assert (=> d!828106 (= (matchZipper!441 lt!1015324 lt!1015323) e!1813189)))

(declare-fun b!2864233 () Bool)

(assert (=> b!2864233 (= e!1813189 (nullableZipper!694 lt!1015324))))

(declare-fun b!2864234 () Bool)

(assert (=> b!2864234 (= e!1813189 (matchZipper!441 (derivationStepZipper!451 lt!1015324 (head!6315 lt!1015323)) (tail!4540 lt!1015323)))))

(assert (= (and d!828106 c!461794) b!2864233))

(assert (= (and d!828106 (not c!461794)) b!2864234))

(declare-fun m!3283849 () Bool)

(assert (=> d!828106 m!3283849))

(declare-fun m!3283851 () Bool)

(assert (=> b!2864233 m!3283851))

(declare-fun m!3283853 () Bool)

(assert (=> b!2864234 m!3283853))

(assert (=> b!2864234 m!3283853))

(declare-fun m!3283855 () Bool)

(assert (=> b!2864234 m!3283855))

(declare-fun m!3283857 () Bool)

(assert (=> b!2864234 m!3283857))

(assert (=> b!2864234 m!3283855))

(assert (=> b!2864234 m!3283857))

(declare-fun m!3283859 () Bool)

(assert (=> b!2864234 m!3283859))

(assert (=> b!2864191 d!828106))

(declare-fun d!828108 () Bool)

(assert (=> d!828108 true))

(declare-fun lambda!105733 () Int)

(declare-fun flatMap!215 ((InoxSet Context!5226) Int) (InoxSet Context!5226))

(assert (=> d!828108 (= (derivationStepZipper!451 z!960 (h!39592 prefix!919)) (flatMap!215 z!960 lambda!105733))))

(declare-fun bs!520787 () Bool)

(assert (= bs!520787 d!828108))

(declare-fun m!3283861 () Bool)

(assert (=> bs!520787 m!3283861))

(assert (=> b!2864191 d!828108))

(declare-fun bs!520789 () Bool)

(declare-fun d!828110 () Bool)

(assert (= bs!520789 (and d!828110 b!2864191)))

(declare-fun lambda!105736 () Int)

(assert (=> bs!520789 (= lambda!105736 lambda!105726)))

(declare-fun bs!520790 () Bool)

(assert (= bs!520790 (and d!828110 b!2864196)))

(assert (=> bs!520790 (= (and (= lt!1015324 z!960) (= (t!233337 prefix!919) prefix!919)) (= lambda!105736 lambda!105727))))

(assert (=> d!828110 true))

(declare-fun condSetEmpty!25530 () Bool)

(assert (=> d!828110 (= condSetEmpty!25530 (= lt!1015324 ((as const (Array Context!5226 Bool)) false)))))

(declare-fun setRes!25530 () Bool)

(assert (=> d!828110 setRes!25530))

(declare-fun setIsEmpty!25530 () Bool)

(assert (=> setIsEmpty!25530 setRes!25530))

(declare-fun setNonEmpty!25530 () Bool)

(assert (=> setNonEmpty!25530 (= setRes!25530 true)))

(declare-fun setElem!25530 () Context!5226)

(declare-fun setRest!25530 () (InoxSet Context!5226))

(assert (=> setNonEmpty!25530 (= lt!1015324 ((_ map or) (store ((as const (Array Context!5226 Bool)) false) setElem!25530 true) setRest!25530))))

(assert (= (and d!828110 condSetEmpty!25530) setIsEmpty!25530))

(assert (= (and d!828110 (not condSetEmpty!25530)) setNonEmpty!25530))

(assert (=> d!828110 (Exists!1329 lambda!105736)))

(declare-fun lt!1015342 () Unit!47833)

(declare-fun choose!16882 ((InoxSet Context!5226) List!34296) Unit!47833)

(assert (=> d!828110 (= lt!1015342 (choose!16882 lt!1015324 (t!233337 prefix!919)))))

(assert (=> d!828110 (prefixMatchZipper!335 lt!1015324 (t!233337 prefix!919))))

(assert (=> d!828110 (= (lemmaPrefixMatchThenExistsStringThatMatches!373 lt!1015324 (t!233337 prefix!919)) lt!1015342)))

(declare-fun m!3283877 () Bool)

(assert (=> d!828110 m!3283877))

(declare-fun m!3283879 () Bool)

(assert (=> d!828110 m!3283879))

(declare-fun m!3283881 () Bool)

(assert (=> d!828110 m!3283881))

(assert (=> b!2864191 d!828110))

(declare-fun d!828116 () Bool)

(declare-fun c!461804 () Bool)

(assert (=> d!828116 (= c!461804 (isEmpty!18649 prefix!919))))

(declare-fun e!1813199 () Bool)

(assert (=> d!828116 (= (prefixMatchZipper!335 z!960 prefix!919) e!1813199)))

(declare-fun b!2864253 () Bool)

(declare-fun lostCauseZipper!558 ((InoxSet Context!5226)) Bool)

(assert (=> b!2864253 (= e!1813199 (not (lostCauseZipper!558 z!960)))))

(declare-fun b!2864254 () Bool)

(assert (=> b!2864254 (= e!1813199 (prefixMatchZipper!335 (derivationStepZipper!451 z!960 (head!6315 prefix!919)) (tail!4540 prefix!919)))))

(assert (= (and d!828116 c!461804) b!2864253))

(assert (= (and d!828116 (not c!461804)) b!2864254))

(declare-fun m!3283897 () Bool)

(assert (=> d!828116 m!3283897))

(declare-fun m!3283899 () Bool)

(assert (=> b!2864253 m!3283899))

(assert (=> b!2864254 m!3283803))

(assert (=> b!2864254 m!3283803))

(declare-fun m!3283901 () Bool)

(assert (=> b!2864254 m!3283901))

(assert (=> b!2864254 m!3283807))

(assert (=> b!2864254 m!3283901))

(assert (=> b!2864254 m!3283807))

(declare-fun m!3283903 () Bool)

(assert (=> b!2864254 m!3283903))

(assert (=> start!279040 d!828116))

(declare-fun d!828126 () Bool)

(assert (=> d!828126 (= (Exists!1329 lambda!105727) (choose!16879 lambda!105727))))

(declare-fun bs!520796 () Bool)

(assert (= bs!520796 d!828126))

(declare-fun m!3283905 () Bool)

(assert (=> bs!520796 m!3283905))

(assert (=> b!2864196 d!828126))

(declare-fun d!828128 () Bool)

(assert (=> d!828128 (Exists!1329 lambda!105727)))

(declare-fun lt!1015349 () Unit!47833)

(declare-fun choose!16884 (List!34296 Int) Unit!47833)

(assert (=> d!828128 (= lt!1015349 (choose!16884 lt!1015321 lambda!105727))))

(assert (=> d!828128 (dynLambda!14263 lambda!105727 lt!1015321)))

(assert (=> d!828128 (= (ExistsThe!16 lt!1015321 lambda!105727) lt!1015349)))

(declare-fun b_lambda!85877 () Bool)

(assert (=> (not b_lambda!85877) (not d!828128)))

(declare-fun bs!520797 () Bool)

(assert (= bs!520797 d!828128))

(assert (=> bs!520797 m!3283783))

(declare-fun m!3283907 () Bool)

(assert (=> bs!520797 m!3283907))

(declare-fun m!3283909 () Bool)

(assert (=> bs!520797 m!3283909))

(assert (=> b!2864196 d!828128))

(declare-fun b!2864256 () Bool)

(declare-fun res!1189141 () Bool)

(declare-fun e!1813200 () Bool)

(assert (=> b!2864256 (=> (not res!1189141) (not e!1813200))))

(assert (=> b!2864256 (= res!1189141 (= (head!6315 (t!233337 prefix!919)) (head!6315 lt!1015323)))))

(declare-fun b!2864255 () Bool)

(declare-fun e!1813202 () Bool)

(assert (=> b!2864255 (= e!1813202 e!1813200)))

(declare-fun res!1189144 () Bool)

(assert (=> b!2864255 (=> (not res!1189144) (not e!1813200))))

(assert (=> b!2864255 (= res!1189144 (not ((_ is Nil!34172) lt!1015323)))))

(declare-fun d!828130 () Bool)

(declare-fun e!1813201 () Bool)

(assert (=> d!828130 e!1813201))

(declare-fun res!1189143 () Bool)

(assert (=> d!828130 (=> res!1189143 e!1813201)))

(declare-fun lt!1015350 () Bool)

(assert (=> d!828130 (= res!1189143 (not lt!1015350))))

(assert (=> d!828130 (= lt!1015350 e!1813202)))

(declare-fun res!1189142 () Bool)

(assert (=> d!828130 (=> res!1189142 e!1813202)))

(assert (=> d!828130 (= res!1189142 ((_ is Nil!34172) (t!233337 prefix!919)))))

(assert (=> d!828130 (= (isPrefix!2702 (t!233337 prefix!919) lt!1015323) lt!1015350)))

(declare-fun b!2864257 () Bool)

(assert (=> b!2864257 (= e!1813200 (isPrefix!2702 (tail!4540 (t!233337 prefix!919)) (tail!4540 lt!1015323)))))

(declare-fun b!2864258 () Bool)

(assert (=> b!2864258 (= e!1813201 (>= (size!26300 lt!1015323) (size!26300 (t!233337 prefix!919))))))

(assert (= (and d!828130 (not res!1189142)) b!2864255))

(assert (= (and b!2864255 res!1189144) b!2864256))

(assert (= (and b!2864256 res!1189141) b!2864257))

(assert (= (and d!828130 (not res!1189143)) b!2864258))

(declare-fun m!3283911 () Bool)

(assert (=> b!2864256 m!3283911))

(assert (=> b!2864256 m!3283853))

(declare-fun m!3283913 () Bool)

(assert (=> b!2864257 m!3283913))

(assert (=> b!2864257 m!3283857))

(assert (=> b!2864257 m!3283913))

(assert (=> b!2864257 m!3283857))

(declare-fun m!3283915 () Bool)

(assert (=> b!2864257 m!3283915))

(declare-fun m!3283917 () Bool)

(assert (=> b!2864258 m!3283917))

(declare-fun m!3283919 () Bool)

(assert (=> b!2864258 m!3283919))

(assert (=> b!2864197 d!828130))

(declare-fun condSetEmpty!25534 () Bool)

(assert (=> setNonEmpty!25525 (= condSetEmpty!25534 (= setRest!25525 ((as const (Array Context!5226 Bool)) false)))))

(declare-fun setRes!25534 () Bool)

(assert (=> setNonEmpty!25525 (= tp!922386 setRes!25534)))

(declare-fun setIsEmpty!25534 () Bool)

(assert (=> setIsEmpty!25534 setRes!25534))

(declare-fun e!1813208 () Bool)

(declare-fun setNonEmpty!25534 () Bool)

(declare-fun setElem!25534 () Context!5226)

(declare-fun tp!922391 () Bool)

(assert (=> setNonEmpty!25534 (= setRes!25534 (and tp!922391 (inv!46219 setElem!25534) e!1813208))))

(declare-fun setRest!25534 () (InoxSet Context!5226))

(assert (=> setNonEmpty!25534 (= setRest!25525 ((_ map or) (store ((as const (Array Context!5226 Bool)) false) setElem!25534 true) setRest!25534))))

(declare-fun b!2864267 () Bool)

(declare-fun tp!922392 () Bool)

(assert (=> b!2864267 (= e!1813208 tp!922392)))

(assert (= (and setNonEmpty!25525 condSetEmpty!25534) setIsEmpty!25534))

(assert (= (and setNonEmpty!25525 (not condSetEmpty!25534)) setNonEmpty!25534))

(assert (= setNonEmpty!25534 b!2864267))

(declare-fun m!3283929 () Bool)

(assert (=> setNonEmpty!25534 m!3283929))

(declare-fun condSetEmpty!25535 () Bool)

(assert (=> setNonEmpty!25528 (= condSetEmpty!25535 (= setRest!25528 ((as const (Array Context!5226 Bool)) false)))))

(declare-fun setRes!25535 () Bool)

(assert (=> setNonEmpty!25528 setRes!25535))

(declare-fun setIsEmpty!25535 () Bool)

(assert (=> setIsEmpty!25535 setRes!25535))

(declare-fun setNonEmpty!25535 () Bool)

(assert (=> setNonEmpty!25535 (= setRes!25535 true)))

(declare-fun setElem!25535 () Context!5226)

(declare-fun setRest!25535 () (InoxSet Context!5226))

(assert (=> setNonEmpty!25535 (= setRest!25528 ((_ map or) (store ((as const (Array Context!5226 Bool)) false) setElem!25535 true) setRest!25535))))

(assert (= (and setNonEmpty!25528 condSetEmpty!25535) setIsEmpty!25535))

(assert (= (and setNonEmpty!25528 (not condSetEmpty!25535)) setNonEmpty!25535))

(declare-fun condSetEmpty!25536 () Bool)

(assert (=> setNonEmpty!25529 (= condSetEmpty!25536 (= setRest!25529 ((as const (Array Context!5226 Bool)) false)))))

(declare-fun setRes!25536 () Bool)

(assert (=> setNonEmpty!25529 setRes!25536))

(declare-fun setIsEmpty!25536 () Bool)

(assert (=> setIsEmpty!25536 setRes!25536))

(declare-fun setNonEmpty!25536 () Bool)

(assert (=> setNonEmpty!25536 (= setRes!25536 true)))

(declare-fun setElem!25536 () Context!5226)

(declare-fun setRest!25536 () (InoxSet Context!5226))

(assert (=> setNonEmpty!25536 (= setRest!25529 ((_ map or) (store ((as const (Array Context!5226 Bool)) false) setElem!25536 true) setRest!25536))))

(assert (= (and setNonEmpty!25529 condSetEmpty!25536) setIsEmpty!25536))

(assert (= (and setNonEmpty!25529 (not condSetEmpty!25536)) setNonEmpty!25536))

(declare-fun b!2864272 () Bool)

(declare-fun e!1813211 () Bool)

(declare-fun tp!922397 () Bool)

(declare-fun tp!922398 () Bool)

(assert (=> b!2864272 (= e!1813211 (and tp!922397 tp!922398))))

(assert (=> b!2864198 (= tp!922384 e!1813211)))

(assert (= (and b!2864198 ((_ is Cons!34171) (exprs!3113 setElem!25525))) b!2864272))

(declare-fun b!2864277 () Bool)

(declare-fun e!1813214 () Bool)

(declare-fun tp!922401 () Bool)

(assert (=> b!2864277 (= e!1813214 (and tp_is_empty!15043 tp!922401))))

(assert (=> b!2864194 (= tp!922385 e!1813214)))

(assert (= (and b!2864194 ((_ is Cons!34172) (t!233337 prefix!919))) b!2864277))

(declare-fun b_lambda!85879 () Bool)

(assert (= b_lambda!85877 (or b!2864196 b_lambda!85879)))

(declare-fun bs!520799 () Bool)

(declare-fun d!828136 () Bool)

(assert (= bs!520799 (and d!828136 b!2864196)))

(declare-fun res!1189149 () Bool)

(declare-fun e!1813215 () Bool)

(assert (=> bs!520799 (=> (not res!1189149) (not e!1813215))))

(assert (=> bs!520799 (= res!1189149 (matchZipper!441 z!960 lt!1015321))))

(assert (=> bs!520799 (= (dynLambda!14263 lambda!105727 lt!1015321) e!1813215)))

(declare-fun b!2864278 () Bool)

(assert (=> b!2864278 (= e!1813215 (isPrefix!2702 prefix!919 lt!1015321))))

(assert (= (and bs!520799 res!1189149) b!2864278))

(assert (=> bs!520799 m!3283779))

(assert (=> b!2864278 m!3283777))

(assert (=> d!828128 d!828136))

(declare-fun b_lambda!85881 () Bool)

(assert (= b_lambda!85871 (or b!2864191 b_lambda!85881)))

(declare-fun bs!520800 () Bool)

(declare-fun d!828138 () Bool)

(assert (= bs!520800 (and d!828138 b!2864191)))

(declare-fun res!1189150 () Bool)

(declare-fun e!1813216 () Bool)

(assert (=> bs!520800 (=> (not res!1189150) (not e!1813216))))

(assert (=> bs!520800 (= res!1189150 (matchZipper!441 lt!1015324 lt!1015336))))

(assert (=> bs!520800 (= (dynLambda!14263 lambda!105726 lt!1015336) e!1813216)))

(declare-fun b!2864279 () Bool)

(assert (=> b!2864279 (= e!1813216 (isPrefix!2702 (t!233337 prefix!919) lt!1015336))))

(assert (= (and bs!520800 res!1189150) b!2864279))

(declare-fun m!3283935 () Bool)

(assert (=> bs!520800 m!3283935))

(declare-fun m!3283937 () Bool)

(assert (=> b!2864279 m!3283937))

(assert (=> d!828098 d!828138))

(check-sat (not d!828110) (not b!2864257) (not d!828088) (not setNonEmpty!25530) (not d!828128) (not d!828108) (not b!2864258) (not b_lambda!85881) (not b!2864233) (not b!2864213) (not b!2864254) (not b!2864256) (not setNonEmpty!25536) (not b!2864277) (not b!2864253) (not d!828094) (not b!2864278) (not b!2864212) (not b_lambda!85879) tp_is_empty!15043 (not b!2864228) (not d!828106) (not b!2864272) (not b!2864227) (not setNonEmpty!25534) (not bs!520799) (not d!828098) (not d!828126) (not d!828102) (not b!2864234) (not setNonEmpty!25535) (not b!2864279) (not bs!520800) (not b!2864214) (not d!828116) (not b!2864267))
(check-sat)
