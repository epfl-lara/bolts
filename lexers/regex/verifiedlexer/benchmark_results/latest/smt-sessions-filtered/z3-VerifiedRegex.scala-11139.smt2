; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!577426 () Bool)

(assert start!577426)

(declare-fun b!5533875 () Bool)

(assert (=> b!5533875 true))

(assert (=> b!5533875 true))

(declare-fun lambda!297148 () Int)

(declare-fun lambda!297147 () Int)

(assert (=> b!5533875 (not (= lambda!297148 lambda!297147))))

(assert (=> b!5533875 true))

(assert (=> b!5533875 true))

(declare-fun b!5533867 () Bool)

(assert (=> b!5533867 true))

(declare-fun e!3420601 () Bool)

(declare-fun e!3420603 () Bool)

(assert (=> b!5533867 (= e!3420601 e!3420603)))

(declare-fun res!2356077 () Bool)

(assert (=> b!5533867 (=> res!2356077 e!3420603)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31320 0))(
  ( (C!31321 (val!25362 Int)) )
))
(declare-datatypes ((Regex!15525 0))(
  ( (ElementMatch!15525 (c!968567 C!31320)) (Concat!24370 (regOne!31562 Regex!15525) (regTwo!31562 Regex!15525)) (EmptyExpr!15525) (Star!15525 (reg!15854 Regex!15525)) (EmptyLang!15525) (Union!15525 (regOne!31563 Regex!15525) (regTwo!31563 Regex!15525)) )
))
(declare-datatypes ((List!62874 0))(
  ( (Nil!62750) (Cons!62750 (h!69198 Regex!15525) (t!376135 List!62874)) )
))
(declare-datatypes ((Context!9818 0))(
  ( (Context!9819 (exprs!5409 List!62874)) )
))
(declare-fun lt!2249149 () (InoxSet Context!9818))

(declare-fun lt!2249163 () (InoxSet Context!9818))

(assert (=> b!5533867 (= res!2356077 (not (= lt!2249149 lt!2249163)))))

(declare-datatypes ((List!62875 0))(
  ( (Nil!62751) (Cons!62751 (h!69199 C!31320) (t!376136 List!62875)) )
))
(declare-fun s!2326 () List!62875)

(declare-fun lambda!297149 () Int)

(declare-fun z!1189 () (InoxSet Context!9818))

(declare-datatypes ((List!62876 0))(
  ( (Nil!62752) (Cons!62752 (h!69200 Context!9818) (t!376137 List!62876)) )
))
(declare-fun zl!343 () List!62876)

(declare-fun flatMap!1138 ((InoxSet Context!9818) Int) (InoxSet Context!9818))

(declare-fun derivationStepZipperUp!793 (Context!9818 C!31320) (InoxSet Context!9818))

(assert (=> b!5533867 (= (flatMap!1138 z!1189 lambda!297149) (derivationStepZipperUp!793 (h!69200 zl!343) (h!69199 s!2326)))))

(declare-datatypes ((Unit!155510 0))(
  ( (Unit!155511) )
))
(declare-fun lt!2249162 () Unit!155510)

(declare-fun lemmaFlatMapOnSingletonSet!670 ((InoxSet Context!9818) Context!9818 Int) Unit!155510)

(assert (=> b!5533867 (= lt!2249162 (lemmaFlatMapOnSingletonSet!670 z!1189 (h!69200 zl!343) lambda!297149))))

(declare-fun b!5533868 () Bool)

(declare-fun e!3420605 () Bool)

(declare-fun tp!1522243 () Bool)

(assert (=> b!5533868 (= e!3420605 tp!1522243)))

(declare-fun res!2356086 () Bool)

(declare-fun e!3420602 () Bool)

(assert (=> start!577426 (=> (not res!2356086) (not e!3420602))))

(declare-fun r!7292 () Regex!15525)

(declare-fun validRegex!7261 (Regex!15525) Bool)

(assert (=> start!577426 (= res!2356086 (validRegex!7261 r!7292))))

(assert (=> start!577426 e!3420602))

(assert (=> start!577426 e!3420605))

(declare-fun condSetEmpty!36845 () Bool)

(assert (=> start!577426 (= condSetEmpty!36845 (= z!1189 ((as const (Array Context!9818 Bool)) false)))))

(declare-fun setRes!36845 () Bool)

(assert (=> start!577426 setRes!36845))

(declare-fun e!3420608 () Bool)

(assert (=> start!577426 e!3420608))

(declare-fun e!3420612 () Bool)

(assert (=> start!577426 e!3420612))

(declare-fun e!3420607 () Bool)

(declare-fun b!5533869 () Bool)

(declare-fun tp!1522242 () Bool)

(declare-fun inv!82059 (Context!9818) Bool)

(assert (=> b!5533869 (= e!3420608 (and (inv!82059 (h!69200 zl!343)) e!3420607 tp!1522242))))

(declare-fun b!5533870 () Bool)

(declare-fun res!2356087 () Bool)

(assert (=> b!5533870 (=> (not res!2356087) (not e!3420602))))

(declare-fun toList!9309 ((InoxSet Context!9818)) List!62876)

(assert (=> b!5533870 (= res!2356087 (= (toList!9309 z!1189) zl!343))))

(declare-fun b!5533871 () Bool)

(declare-fun tp_is_empty!40303 () Bool)

(assert (=> b!5533871 (= e!3420605 tp_is_empty!40303)))

(declare-fun b!5533872 () Bool)

(declare-fun tp!1522238 () Bool)

(assert (=> b!5533872 (= e!3420607 tp!1522238)))

(declare-fun b!5533873 () Bool)

(declare-fun e!3420611 () Bool)

(declare-fun tp!1522235 () Bool)

(assert (=> b!5533873 (= e!3420611 tp!1522235)))

(declare-fun b!5533874 () Bool)

(declare-fun e!3420604 () Bool)

(assert (=> b!5533874 (= e!3420604 e!3420601)))

(declare-fun res!2356082 () Bool)

(assert (=> b!5533874 (=> res!2356082 e!3420601)))

(declare-fun lt!2249150 () (InoxSet Context!9818))

(assert (=> b!5533874 (= res!2356082 (not (= lt!2249150 lt!2249163)))))

(declare-fun lt!2249157 () Context!9818)

(declare-fun derivationStepZipperDown!867 (Regex!15525 Context!9818 C!31320) (InoxSet Context!9818))

(assert (=> b!5533874 (= lt!2249163 (derivationStepZipperDown!867 r!7292 lt!2249157 (h!69199 s!2326)))))

(assert (=> b!5533874 (= lt!2249157 (Context!9819 Nil!62750))))

(declare-fun lt!2249169 () List!62874)

(assert (=> b!5533874 (= lt!2249150 (derivationStepZipperUp!793 (Context!9819 lt!2249169) (h!69199 s!2326)))))

(assert (=> b!5533874 (= lt!2249169 (Cons!62750 r!7292 Nil!62750))))

(declare-fun derivationStepZipper!1630 ((InoxSet Context!9818) C!31320) (InoxSet Context!9818))

(assert (=> b!5533874 (= lt!2249149 (derivationStepZipper!1630 z!1189 (h!69199 s!2326)))))

(declare-fun e!3420609 () Bool)

(assert (=> b!5533875 (= e!3420609 e!3420604)))

(declare-fun res!2356084 () Bool)

(assert (=> b!5533875 (=> res!2356084 e!3420604)))

(declare-fun lt!2249161 () Bool)

(declare-fun lt!2249165 () Bool)

(get-info :version)

(assert (=> b!5533875 (= res!2356084 (or (not (= lt!2249161 lt!2249165)) ((_ is Nil!62751) s!2326)))))

(declare-fun Exists!2625 (Int) Bool)

(assert (=> b!5533875 (= (Exists!2625 lambda!297147) (Exists!2625 lambda!297148))))

(declare-fun lt!2249167 () Unit!155510)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1254 (Regex!15525 Regex!15525 List!62875) Unit!155510)

(assert (=> b!5533875 (= lt!2249167 (lemmaExistCutMatchRandMatchRSpecEquivalent!1254 (regOne!31562 r!7292) (regTwo!31562 r!7292) s!2326))))

(assert (=> b!5533875 (= lt!2249165 (Exists!2625 lambda!297147))))

(declare-datatypes ((tuple2!65244 0))(
  ( (tuple2!65245 (_1!35925 List!62875) (_2!35925 List!62875)) )
))
(declare-datatypes ((Option!15534 0))(
  ( (None!15533) (Some!15533 (v!51570 tuple2!65244)) )
))
(declare-fun isDefined!12237 (Option!15534) Bool)

(declare-fun findConcatSeparation!1948 (Regex!15525 Regex!15525 List!62875 List!62875 List!62875) Option!15534)

(assert (=> b!5533875 (= lt!2249165 (isDefined!12237 (findConcatSeparation!1948 (regOne!31562 r!7292) (regTwo!31562 r!7292) Nil!62751 s!2326 s!2326)))))

(declare-fun lt!2249154 () Unit!155510)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1712 (Regex!15525 Regex!15525 List!62875) Unit!155510)

(assert (=> b!5533875 (= lt!2249154 (lemmaFindConcatSeparationEquivalentToExists!1712 (regOne!31562 r!7292) (regTwo!31562 r!7292) s!2326))))

(declare-fun b!5533876 () Bool)

(declare-fun e!3420610 () Bool)

(assert (=> b!5533876 (= e!3420610 (not e!3420609))))

(declare-fun res!2356088 () Bool)

(assert (=> b!5533876 (=> res!2356088 e!3420609)))

(assert (=> b!5533876 (= res!2356088 (not ((_ is Cons!62752) zl!343)))))

(declare-fun matchRSpec!2628 (Regex!15525 List!62875) Bool)

(assert (=> b!5533876 (= lt!2249161 (matchRSpec!2628 r!7292 s!2326))))

(declare-fun matchR!7710 (Regex!15525 List!62875) Bool)

(assert (=> b!5533876 (= lt!2249161 (matchR!7710 r!7292 s!2326))))

(declare-fun lt!2249159 () Unit!155510)

(declare-fun mainMatchTheorem!2628 (Regex!15525 List!62875) Unit!155510)

(assert (=> b!5533876 (= lt!2249159 (mainMatchTheorem!2628 r!7292 s!2326))))

(declare-fun b!5533877 () Bool)

(declare-fun tp!1522241 () Bool)

(declare-fun tp!1522234 () Bool)

(assert (=> b!5533877 (= e!3420605 (and tp!1522241 tp!1522234))))

(declare-fun b!5533878 () Bool)

(declare-fun res!2356090 () Bool)

(assert (=> b!5533878 (=> res!2356090 e!3420609)))

(declare-fun generalisedUnion!1388 (List!62874) Regex!15525)

(declare-fun unfocusZipperList!953 (List!62876) List!62874)

(assert (=> b!5533878 (= res!2356090 (not (= r!7292 (generalisedUnion!1388 (unfocusZipperList!953 zl!343)))))))

(declare-fun b!5533879 () Bool)

(declare-fun res!2356089 () Bool)

(assert (=> b!5533879 (=> res!2356089 e!3420609)))

(declare-fun isEmpty!34537 (List!62876) Bool)

(assert (=> b!5533879 (= res!2356089 (not (isEmpty!34537 (t!376137 zl!343))))))

(declare-fun setIsEmpty!36845 () Bool)

(assert (=> setIsEmpty!36845 setRes!36845))

(declare-fun b!5533880 () Bool)

(declare-fun tp!1522240 () Bool)

(declare-fun tp!1522239 () Bool)

(assert (=> b!5533880 (= e!3420605 (and tp!1522240 tp!1522239))))

(declare-fun b!5533881 () Bool)

(declare-fun res!2356079 () Bool)

(assert (=> b!5533881 (=> res!2356079 e!3420609)))

(assert (=> b!5533881 (= res!2356079 (not ((_ is Cons!62750) (exprs!5409 (h!69200 zl!343)))))))

(declare-fun b!5533882 () Bool)

(declare-fun res!2356083 () Bool)

(assert (=> b!5533882 (=> res!2356083 e!3420609)))

(assert (=> b!5533882 (= res!2356083 (or ((_ is EmptyExpr!15525) r!7292) ((_ is EmptyLang!15525) r!7292) ((_ is ElementMatch!15525) r!7292) ((_ is Union!15525) r!7292) (not ((_ is Concat!24370) r!7292))))))

(declare-fun b!5533883 () Bool)

(declare-fun e!3420606 () Bool)

(assert (=> b!5533883 (= e!3420603 e!3420606)))

(declare-fun res!2356080 () Bool)

(assert (=> b!5533883 (=> res!2356080 e!3420606)))

(declare-fun nullable!5557 (Regex!15525) Bool)

(assert (=> b!5533883 (= res!2356080 (nullable!5557 (regOne!31562 r!7292)))))

(declare-fun lt!2249153 () (InoxSet Context!9818))

(assert (=> b!5533883 (= lt!2249153 (derivationStepZipperDown!867 (regTwo!31562 r!7292) lt!2249157 (h!69199 s!2326)))))

(declare-fun lt!2249171 () Context!9818)

(declare-fun lt!2249160 () (InoxSet Context!9818))

(assert (=> b!5533883 (= lt!2249160 (derivationStepZipperDown!867 (regOne!31562 r!7292) lt!2249171 (h!69199 s!2326)))))

(declare-fun lt!2249170 () (InoxSet Context!9818))

(assert (=> b!5533883 (= (flatMap!1138 lt!2249170 lambda!297149) (derivationStepZipperUp!793 lt!2249171 (h!69199 s!2326)))))

(declare-fun lt!2249156 () Unit!155510)

(assert (=> b!5533883 (= lt!2249156 (lemmaFlatMapOnSingletonSet!670 lt!2249170 lt!2249171 lambda!297149))))

(declare-fun lt!2249155 () Context!9818)

(declare-fun lt!2249151 () (InoxSet Context!9818))

(assert (=> b!5533883 (= (flatMap!1138 lt!2249151 lambda!297149) (derivationStepZipperUp!793 lt!2249155 (h!69199 s!2326)))))

(declare-fun lt!2249152 () Unit!155510)

(assert (=> b!5533883 (= lt!2249152 (lemmaFlatMapOnSingletonSet!670 lt!2249151 lt!2249155 lambda!297149))))

(declare-fun lt!2249168 () (InoxSet Context!9818))

(assert (=> b!5533883 (= lt!2249168 (derivationStepZipperUp!793 lt!2249171 (h!69199 s!2326)))))

(declare-fun lt!2249164 () (InoxSet Context!9818))

(assert (=> b!5533883 (= lt!2249164 (derivationStepZipperUp!793 lt!2249155 (h!69199 s!2326)))))

(assert (=> b!5533883 (= lt!2249170 (store ((as const (Array Context!9818 Bool)) false) lt!2249171 true))))

(declare-fun lt!2249158 () List!62874)

(assert (=> b!5533883 (= lt!2249171 (Context!9819 lt!2249158))))

(assert (=> b!5533883 (= lt!2249151 (store ((as const (Array Context!9818 Bool)) false) lt!2249155 true))))

(assert (=> b!5533883 (= lt!2249155 (Context!9819 (Cons!62750 (regOne!31562 r!7292) lt!2249158)))))

(assert (=> b!5533883 (= lt!2249158 (Cons!62750 (regTwo!31562 r!7292) Nil!62750))))

(declare-fun b!5533884 () Bool)

(declare-fun res!2356085 () Bool)

(assert (=> b!5533884 (=> res!2356085 e!3420609)))

(declare-fun generalisedConcat!1140 (List!62874) Regex!15525)

(assert (=> b!5533884 (= res!2356085 (not (= r!7292 (generalisedConcat!1140 (exprs!5409 (h!69200 zl!343))))))))

(declare-fun setNonEmpty!36845 () Bool)

(declare-fun tp!1522237 () Bool)

(declare-fun setElem!36845 () Context!9818)

(assert (=> setNonEmpty!36845 (= setRes!36845 (and tp!1522237 (inv!82059 setElem!36845) e!3420611))))

(declare-fun setRest!36845 () (InoxSet Context!9818))

(assert (=> setNonEmpty!36845 (= z!1189 ((_ map or) (store ((as const (Array Context!9818 Bool)) false) setElem!36845 true) setRest!36845))))

(declare-fun b!5533885 () Bool)

(declare-fun res!2356078 () Bool)

(assert (=> b!5533885 (=> res!2356078 e!3420604)))

(declare-fun isEmpty!34538 (List!62874) Bool)

(assert (=> b!5533885 (= res!2356078 (not (isEmpty!34538 (t!376135 (exprs!5409 (h!69200 zl!343))))))))

(declare-fun lt!2249166 () Regex!15525)

(declare-fun b!5533886 () Bool)

(assert (=> b!5533886 (= e!3420606 (or (not (= lt!2249149 lt!2249160)) (not (= lt!2249166 r!7292)) (= (exprs!5409 (h!69200 zl!343)) lt!2249169)))))

(declare-fun b!5533887 () Bool)

(assert (=> b!5533887 (= e!3420602 e!3420610)))

(declare-fun res!2356081 () Bool)

(assert (=> b!5533887 (=> (not res!2356081) (not e!3420610))))

(assert (=> b!5533887 (= res!2356081 (= r!7292 lt!2249166))))

(declare-fun unfocusZipper!1267 (List!62876) Regex!15525)

(assert (=> b!5533887 (= lt!2249166 (unfocusZipper!1267 zl!343))))

(declare-fun b!5533888 () Bool)

(declare-fun tp!1522236 () Bool)

(assert (=> b!5533888 (= e!3420612 (and tp_is_empty!40303 tp!1522236))))

(assert (= (and start!577426 res!2356086) b!5533870))

(assert (= (and b!5533870 res!2356087) b!5533887))

(assert (= (and b!5533887 res!2356081) b!5533876))

(assert (= (and b!5533876 (not res!2356088)) b!5533879))

(assert (= (and b!5533879 (not res!2356089)) b!5533884))

(assert (= (and b!5533884 (not res!2356085)) b!5533881))

(assert (= (and b!5533881 (not res!2356079)) b!5533878))

(assert (= (and b!5533878 (not res!2356090)) b!5533882))

(assert (= (and b!5533882 (not res!2356083)) b!5533875))

(assert (= (and b!5533875 (not res!2356084)) b!5533885))

(assert (= (and b!5533885 (not res!2356078)) b!5533874))

(assert (= (and b!5533874 (not res!2356082)) b!5533867))

(assert (= (and b!5533867 (not res!2356077)) b!5533883))

(assert (= (and b!5533883 (not res!2356080)) b!5533886))

(assert (= (and start!577426 ((_ is ElementMatch!15525) r!7292)) b!5533871))

(assert (= (and start!577426 ((_ is Concat!24370) r!7292)) b!5533877))

(assert (= (and start!577426 ((_ is Star!15525) r!7292)) b!5533868))

(assert (= (and start!577426 ((_ is Union!15525) r!7292)) b!5533880))

(assert (= (and start!577426 condSetEmpty!36845) setIsEmpty!36845))

(assert (= (and start!577426 (not condSetEmpty!36845)) setNonEmpty!36845))

(assert (= setNonEmpty!36845 b!5533873))

(assert (= b!5533869 b!5533872))

(assert (= (and start!577426 ((_ is Cons!62752) zl!343)) b!5533869))

(assert (= (and start!577426 ((_ is Cons!62751) s!2326)) b!5533888))

(declare-fun m!6535244 () Bool)

(assert (=> b!5533878 m!6535244))

(assert (=> b!5533878 m!6535244))

(declare-fun m!6535246 () Bool)

(assert (=> b!5533878 m!6535246))

(declare-fun m!6535248 () Bool)

(assert (=> b!5533867 m!6535248))

(declare-fun m!6535250 () Bool)

(assert (=> b!5533867 m!6535250))

(declare-fun m!6535252 () Bool)

(assert (=> b!5533867 m!6535252))

(declare-fun m!6535254 () Bool)

(assert (=> b!5533875 m!6535254))

(declare-fun m!6535256 () Bool)

(assert (=> b!5533875 m!6535256))

(declare-fun m!6535258 () Bool)

(assert (=> b!5533875 m!6535258))

(declare-fun m!6535260 () Bool)

(assert (=> b!5533875 m!6535260))

(declare-fun m!6535262 () Bool)

(assert (=> b!5533875 m!6535262))

(assert (=> b!5533875 m!6535260))

(assert (=> b!5533875 m!6535256))

(declare-fun m!6535264 () Bool)

(assert (=> b!5533875 m!6535264))

(declare-fun m!6535266 () Bool)

(assert (=> b!5533870 m!6535266))

(declare-fun m!6535268 () Bool)

(assert (=> b!5533883 m!6535268))

(declare-fun m!6535270 () Bool)

(assert (=> b!5533883 m!6535270))

(declare-fun m!6535272 () Bool)

(assert (=> b!5533883 m!6535272))

(declare-fun m!6535274 () Bool)

(assert (=> b!5533883 m!6535274))

(declare-fun m!6535276 () Bool)

(assert (=> b!5533883 m!6535276))

(declare-fun m!6535278 () Bool)

(assert (=> b!5533883 m!6535278))

(declare-fun m!6535280 () Bool)

(assert (=> b!5533883 m!6535280))

(declare-fun m!6535282 () Bool)

(assert (=> b!5533883 m!6535282))

(declare-fun m!6535284 () Bool)

(assert (=> b!5533883 m!6535284))

(declare-fun m!6535286 () Bool)

(assert (=> b!5533883 m!6535286))

(declare-fun m!6535288 () Bool)

(assert (=> b!5533883 m!6535288))

(declare-fun m!6535290 () Bool)

(assert (=> setNonEmpty!36845 m!6535290))

(declare-fun m!6535292 () Bool)

(assert (=> start!577426 m!6535292))

(declare-fun m!6535294 () Bool)

(assert (=> b!5533876 m!6535294))

(declare-fun m!6535296 () Bool)

(assert (=> b!5533876 m!6535296))

(declare-fun m!6535298 () Bool)

(assert (=> b!5533876 m!6535298))

(declare-fun m!6535300 () Bool)

(assert (=> b!5533874 m!6535300))

(declare-fun m!6535302 () Bool)

(assert (=> b!5533874 m!6535302))

(declare-fun m!6535304 () Bool)

(assert (=> b!5533874 m!6535304))

(declare-fun m!6535306 () Bool)

(assert (=> b!5533887 m!6535306))

(declare-fun m!6535308 () Bool)

(assert (=> b!5533879 m!6535308))

(declare-fun m!6535310 () Bool)

(assert (=> b!5533869 m!6535310))

(declare-fun m!6535312 () Bool)

(assert (=> b!5533885 m!6535312))

(declare-fun m!6535314 () Bool)

(assert (=> b!5533884 m!6535314))

(check-sat (not setNonEmpty!36845) (not b!5533873) (not b!5533887) (not b!5533883) (not b!5533868) (not b!5533879) (not b!5533869) (not b!5533884) (not b!5533888) (not b!5533878) (not b!5533880) (not b!5533885) (not b!5533876) (not b!5533872) (not start!577426) (not b!5533875) (not b!5533874) (not b!5533877) (not b!5533870) tp_is_empty!40303 (not b!5533867))
(check-sat)
(get-model)

(declare-fun d!1753526 () Bool)

(declare-fun lambda!297152 () Int)

(declare-fun forall!14699 (List!62874 Int) Bool)

(assert (=> d!1753526 (= (inv!82059 setElem!36845) (forall!14699 (exprs!5409 setElem!36845) lambda!297152))))

(declare-fun bs!1279568 () Bool)

(assert (= bs!1279568 d!1753526))

(declare-fun m!6535360 () Bool)

(assert (=> bs!1279568 m!6535360))

(assert (=> setNonEmpty!36845 d!1753526))

(declare-fun b!5534016 () Bool)

(declare-fun e!3420684 () Option!15534)

(declare-fun e!3420680 () Option!15534)

(assert (=> b!5534016 (= e!3420684 e!3420680)))

(declare-fun c!968607 () Bool)

(assert (=> b!5534016 (= c!968607 ((_ is Nil!62751) s!2326))))

(declare-fun b!5534017 () Bool)

(declare-fun res!2356136 () Bool)

(declare-fun e!3420683 () Bool)

(assert (=> b!5534017 (=> (not res!2356136) (not e!3420683))))

(declare-fun lt!2249198 () Option!15534)

(declare-fun get!21597 (Option!15534) tuple2!65244)

(assert (=> b!5534017 (= res!2356136 (matchR!7710 (regTwo!31562 r!7292) (_2!35925 (get!21597 lt!2249198))))))

(declare-fun b!5534018 () Bool)

(declare-fun res!2356138 () Bool)

(assert (=> b!5534018 (=> (not res!2356138) (not e!3420683))))

(assert (=> b!5534018 (= res!2356138 (matchR!7710 (regOne!31562 r!7292) (_1!35925 (get!21597 lt!2249198))))))

(declare-fun b!5534019 () Bool)

(assert (=> b!5534019 (= e!3420680 None!15533)))

(declare-fun b!5534020 () Bool)

(declare-fun ++!13767 (List!62875 List!62875) List!62875)

(assert (=> b!5534020 (= e!3420683 (= (++!13767 (_1!35925 (get!21597 lt!2249198)) (_2!35925 (get!21597 lt!2249198))) s!2326))))

(declare-fun d!1753528 () Bool)

(declare-fun e!3420681 () Bool)

(assert (=> d!1753528 e!3420681))

(declare-fun res!2356139 () Bool)

(assert (=> d!1753528 (=> res!2356139 e!3420681)))

(assert (=> d!1753528 (= res!2356139 e!3420683)))

(declare-fun res!2356137 () Bool)

(assert (=> d!1753528 (=> (not res!2356137) (not e!3420683))))

(assert (=> d!1753528 (= res!2356137 (isDefined!12237 lt!2249198))))

(assert (=> d!1753528 (= lt!2249198 e!3420684)))

(declare-fun c!968606 () Bool)

(declare-fun e!3420682 () Bool)

(assert (=> d!1753528 (= c!968606 e!3420682)))

(declare-fun res!2356140 () Bool)

(assert (=> d!1753528 (=> (not res!2356140) (not e!3420682))))

(assert (=> d!1753528 (= res!2356140 (matchR!7710 (regOne!31562 r!7292) Nil!62751))))

(assert (=> d!1753528 (validRegex!7261 (regOne!31562 r!7292))))

(assert (=> d!1753528 (= (findConcatSeparation!1948 (regOne!31562 r!7292) (regTwo!31562 r!7292) Nil!62751 s!2326 s!2326) lt!2249198)))

(declare-fun b!5534021 () Bool)

(declare-fun lt!2249197 () Unit!155510)

(declare-fun lt!2249199 () Unit!155510)

(assert (=> b!5534021 (= lt!2249197 lt!2249199)))

(assert (=> b!5534021 (= (++!13767 (++!13767 Nil!62751 (Cons!62751 (h!69199 s!2326) Nil!62751)) (t!376136 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1936 (List!62875 C!31320 List!62875 List!62875) Unit!155510)

(assert (=> b!5534021 (= lt!2249199 (lemmaMoveElementToOtherListKeepsConcatEq!1936 Nil!62751 (h!69199 s!2326) (t!376136 s!2326) s!2326))))

(assert (=> b!5534021 (= e!3420680 (findConcatSeparation!1948 (regOne!31562 r!7292) (regTwo!31562 r!7292) (++!13767 Nil!62751 (Cons!62751 (h!69199 s!2326) Nil!62751)) (t!376136 s!2326) s!2326))))

(declare-fun b!5534022 () Bool)

(assert (=> b!5534022 (= e!3420684 (Some!15533 (tuple2!65245 Nil!62751 s!2326)))))

(declare-fun b!5534023 () Bool)

(assert (=> b!5534023 (= e!3420682 (matchR!7710 (regTwo!31562 r!7292) s!2326))))

(declare-fun b!5534024 () Bool)

(assert (=> b!5534024 (= e!3420681 (not (isDefined!12237 lt!2249198)))))

(assert (= (and d!1753528 res!2356140) b!5534023))

(assert (= (and d!1753528 c!968606) b!5534022))

(assert (= (and d!1753528 (not c!968606)) b!5534016))

(assert (= (and b!5534016 c!968607) b!5534019))

(assert (= (and b!5534016 (not c!968607)) b!5534021))

(assert (= (and d!1753528 res!2356137) b!5534018))

(assert (= (and b!5534018 res!2356138) b!5534017))

(assert (= (and b!5534017 res!2356136) b!5534020))

(assert (= (and d!1753528 (not res!2356139)) b!5534024))

(declare-fun m!6535404 () Bool)

(assert (=> b!5534020 m!6535404))

(declare-fun m!6535406 () Bool)

(assert (=> b!5534020 m!6535406))

(declare-fun m!6535408 () Bool)

(assert (=> d!1753528 m!6535408))

(declare-fun m!6535410 () Bool)

(assert (=> d!1753528 m!6535410))

(declare-fun m!6535412 () Bool)

(assert (=> d!1753528 m!6535412))

(assert (=> b!5534018 m!6535404))

(declare-fun m!6535414 () Bool)

(assert (=> b!5534018 m!6535414))

(declare-fun m!6535416 () Bool)

(assert (=> b!5534021 m!6535416))

(assert (=> b!5534021 m!6535416))

(declare-fun m!6535418 () Bool)

(assert (=> b!5534021 m!6535418))

(declare-fun m!6535420 () Bool)

(assert (=> b!5534021 m!6535420))

(assert (=> b!5534021 m!6535416))

(declare-fun m!6535422 () Bool)

(assert (=> b!5534021 m!6535422))

(declare-fun m!6535424 () Bool)

(assert (=> b!5534023 m!6535424))

(assert (=> b!5534017 m!6535404))

(declare-fun m!6535426 () Bool)

(assert (=> b!5534017 m!6535426))

(assert (=> b!5534024 m!6535408))

(assert (=> b!5533875 d!1753528))

(declare-fun bs!1279583 () Bool)

(declare-fun d!1753544 () Bool)

(assert (= bs!1279583 (and d!1753544 b!5533875)))

(declare-fun lambda!297175 () Int)

(assert (=> bs!1279583 (= lambda!297175 lambda!297147)))

(assert (=> bs!1279583 (not (= lambda!297175 lambda!297148))))

(assert (=> d!1753544 true))

(assert (=> d!1753544 true))

(assert (=> d!1753544 true))

(assert (=> d!1753544 (= (isDefined!12237 (findConcatSeparation!1948 (regOne!31562 r!7292) (regTwo!31562 r!7292) Nil!62751 s!2326 s!2326)) (Exists!2625 lambda!297175))))

(declare-fun lt!2249211 () Unit!155510)

(declare-fun choose!42050 (Regex!15525 Regex!15525 List!62875) Unit!155510)

(assert (=> d!1753544 (= lt!2249211 (choose!42050 (regOne!31562 r!7292) (regTwo!31562 r!7292) s!2326))))

(assert (=> d!1753544 (validRegex!7261 (regOne!31562 r!7292))))

(assert (=> d!1753544 (= (lemmaFindConcatSeparationEquivalentToExists!1712 (regOne!31562 r!7292) (regTwo!31562 r!7292) s!2326) lt!2249211)))

(declare-fun bs!1279588 () Bool)

(assert (= bs!1279588 d!1753544))

(assert (=> bs!1279588 m!6535256))

(assert (=> bs!1279588 m!6535258))

(declare-fun m!6535474 () Bool)

(assert (=> bs!1279588 m!6535474))

(assert (=> bs!1279588 m!6535412))

(declare-fun m!6535476 () Bool)

(assert (=> bs!1279588 m!6535476))

(assert (=> bs!1279588 m!6535256))

(assert (=> b!5533875 d!1753544))

(declare-fun bs!1279596 () Bool)

(declare-fun d!1753562 () Bool)

(assert (= bs!1279596 (and d!1753562 b!5533875)))

(declare-fun lambda!297188 () Int)

(assert (=> bs!1279596 (= lambda!297188 lambda!297147)))

(assert (=> bs!1279596 (not (= lambda!297188 lambda!297148))))

(declare-fun bs!1279597 () Bool)

(assert (= bs!1279597 (and d!1753562 d!1753544)))

(assert (=> bs!1279597 (= lambda!297188 lambda!297175)))

(assert (=> d!1753562 true))

(assert (=> d!1753562 true))

(assert (=> d!1753562 true))

(declare-fun lambda!297189 () Int)

(assert (=> bs!1279596 (not (= lambda!297189 lambda!297147))))

(assert (=> bs!1279596 (= lambda!297189 lambda!297148)))

(assert (=> bs!1279597 (not (= lambda!297189 lambda!297175))))

(declare-fun bs!1279598 () Bool)

(assert (= bs!1279598 d!1753562))

(assert (=> bs!1279598 (not (= lambda!297189 lambda!297188))))

(assert (=> d!1753562 true))

(assert (=> d!1753562 true))

(assert (=> d!1753562 true))

(assert (=> d!1753562 (= (Exists!2625 lambda!297188) (Exists!2625 lambda!297189))))

(declare-fun lt!2249214 () Unit!155510)

(declare-fun choose!42051 (Regex!15525 Regex!15525 List!62875) Unit!155510)

(assert (=> d!1753562 (= lt!2249214 (choose!42051 (regOne!31562 r!7292) (regTwo!31562 r!7292) s!2326))))

(assert (=> d!1753562 (validRegex!7261 (regOne!31562 r!7292))))

(assert (=> d!1753562 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1254 (regOne!31562 r!7292) (regTwo!31562 r!7292) s!2326) lt!2249214)))

(declare-fun m!6535486 () Bool)

(assert (=> bs!1279598 m!6535486))

(declare-fun m!6535488 () Bool)

(assert (=> bs!1279598 m!6535488))

(declare-fun m!6535490 () Bool)

(assert (=> bs!1279598 m!6535490))

(assert (=> bs!1279598 m!6535412))

(assert (=> b!5533875 d!1753562))

(declare-fun d!1753566 () Bool)

(declare-fun isEmpty!34541 (Option!15534) Bool)

(assert (=> d!1753566 (= (isDefined!12237 (findConcatSeparation!1948 (regOne!31562 r!7292) (regTwo!31562 r!7292) Nil!62751 s!2326 s!2326)) (not (isEmpty!34541 (findConcatSeparation!1948 (regOne!31562 r!7292) (regTwo!31562 r!7292) Nil!62751 s!2326 s!2326))))))

(declare-fun bs!1279599 () Bool)

(assert (= bs!1279599 d!1753566))

(assert (=> bs!1279599 m!6535256))

(declare-fun m!6535492 () Bool)

(assert (=> bs!1279599 m!6535492))

(assert (=> b!5533875 d!1753566))

(declare-fun d!1753568 () Bool)

(declare-fun choose!42052 (Int) Bool)

(assert (=> d!1753568 (= (Exists!2625 lambda!297147) (choose!42052 lambda!297147))))

(declare-fun bs!1279600 () Bool)

(assert (= bs!1279600 d!1753568))

(declare-fun m!6535506 () Bool)

(assert (=> bs!1279600 m!6535506))

(assert (=> b!5533875 d!1753568))

(declare-fun d!1753572 () Bool)

(assert (=> d!1753572 (= (Exists!2625 lambda!297148) (choose!42052 lambda!297148))))

(declare-fun bs!1279601 () Bool)

(assert (= bs!1279601 d!1753572))

(declare-fun m!6535508 () Bool)

(assert (=> bs!1279601 m!6535508))

(assert (=> b!5533875 d!1753572))

(declare-fun bs!1279610 () Bool)

(declare-fun d!1753574 () Bool)

(assert (= bs!1279610 (and d!1753574 d!1753526)))

(declare-fun lambda!297195 () Int)

(assert (=> bs!1279610 (= lambda!297195 lambda!297152)))

(declare-fun b!5534234 () Bool)

(declare-fun e!3420806 () Regex!15525)

(assert (=> b!5534234 (= e!3420806 (Concat!24370 (h!69198 (exprs!5409 (h!69200 zl!343))) (generalisedConcat!1140 (t!376135 (exprs!5409 (h!69200 zl!343))))))))

(declare-fun b!5534235 () Bool)

(declare-fun e!3420805 () Bool)

(declare-fun e!3420804 () Bool)

(assert (=> b!5534235 (= e!3420805 e!3420804)))

(declare-fun c!968676 () Bool)

(declare-fun tail!10936 (List!62874) List!62874)

(assert (=> b!5534235 (= c!968676 (isEmpty!34538 (tail!10936 (exprs!5409 (h!69200 zl!343)))))))

(declare-fun b!5534236 () Bool)

(declare-fun e!3420803 () Bool)

(assert (=> b!5534236 (= e!3420803 (isEmpty!34538 (t!376135 (exprs!5409 (h!69200 zl!343)))))))

(declare-fun b!5534237 () Bool)

(declare-fun lt!2249230 () Regex!15525)

(declare-fun isEmptyExpr!1090 (Regex!15525) Bool)

(assert (=> b!5534237 (= e!3420805 (isEmptyExpr!1090 lt!2249230))))

(declare-fun b!5534238 () Bool)

(declare-fun head!11841 (List!62874) Regex!15525)

(assert (=> b!5534238 (= e!3420804 (= lt!2249230 (head!11841 (exprs!5409 (h!69200 zl!343)))))))

(declare-fun b!5534239 () Bool)

(declare-fun e!3420808 () Regex!15525)

(assert (=> b!5534239 (= e!3420808 (h!69198 (exprs!5409 (h!69200 zl!343))))))

(declare-fun b!5534241 () Bool)

(assert (=> b!5534241 (= e!3420806 EmptyExpr!15525)))

(declare-fun b!5534240 () Bool)

(assert (=> b!5534240 (= e!3420808 e!3420806)))

(declare-fun c!968675 () Bool)

(assert (=> b!5534240 (= c!968675 ((_ is Cons!62750) (exprs!5409 (h!69200 zl!343))))))

(declare-fun e!3420807 () Bool)

(assert (=> d!1753574 e!3420807))

(declare-fun res!2356219 () Bool)

(assert (=> d!1753574 (=> (not res!2356219) (not e!3420807))))

(assert (=> d!1753574 (= res!2356219 (validRegex!7261 lt!2249230))))

(assert (=> d!1753574 (= lt!2249230 e!3420808)))

(declare-fun c!968677 () Bool)

(assert (=> d!1753574 (= c!968677 e!3420803)))

(declare-fun res!2356218 () Bool)

(assert (=> d!1753574 (=> (not res!2356218) (not e!3420803))))

(assert (=> d!1753574 (= res!2356218 ((_ is Cons!62750) (exprs!5409 (h!69200 zl!343))))))

(assert (=> d!1753574 (forall!14699 (exprs!5409 (h!69200 zl!343)) lambda!297195)))

(assert (=> d!1753574 (= (generalisedConcat!1140 (exprs!5409 (h!69200 zl!343))) lt!2249230)))

(declare-fun b!5534242 () Bool)

(assert (=> b!5534242 (= e!3420807 e!3420805)))

(declare-fun c!968678 () Bool)

(assert (=> b!5534242 (= c!968678 (isEmpty!34538 (exprs!5409 (h!69200 zl!343))))))

(declare-fun b!5534243 () Bool)

(declare-fun isConcat!613 (Regex!15525) Bool)

(assert (=> b!5534243 (= e!3420804 (isConcat!613 lt!2249230))))

(assert (= (and d!1753574 res!2356218) b!5534236))

(assert (= (and d!1753574 c!968677) b!5534239))

(assert (= (and d!1753574 (not c!968677)) b!5534240))

(assert (= (and b!5534240 c!968675) b!5534234))

(assert (= (and b!5534240 (not c!968675)) b!5534241))

(assert (= (and d!1753574 res!2356219) b!5534242))

(assert (= (and b!5534242 c!968678) b!5534237))

(assert (= (and b!5534242 (not c!968678)) b!5534235))

(assert (= (and b!5534235 c!968676) b!5534238))

(assert (= (and b!5534235 (not c!968676)) b!5534243))

(declare-fun m!6535546 () Bool)

(assert (=> b!5534237 m!6535546))

(declare-fun m!6535548 () Bool)

(assert (=> d!1753574 m!6535548))

(declare-fun m!6535550 () Bool)

(assert (=> d!1753574 m!6535550))

(declare-fun m!6535552 () Bool)

(assert (=> b!5534242 m!6535552))

(declare-fun m!6535554 () Bool)

(assert (=> b!5534243 m!6535554))

(declare-fun m!6535556 () Bool)

(assert (=> b!5534234 m!6535556))

(declare-fun m!6535558 () Bool)

(assert (=> b!5534235 m!6535558))

(assert (=> b!5534235 m!6535558))

(declare-fun m!6535560 () Bool)

(assert (=> b!5534235 m!6535560))

(declare-fun m!6535562 () Bool)

(assert (=> b!5534238 m!6535562))

(assert (=> b!5534236 m!6535312))

(assert (=> b!5533884 d!1753574))

(declare-fun bm!411159 () Bool)

(declare-fun call!411164 () (InoxSet Context!9818))

(declare-fun call!411165 () (InoxSet Context!9818))

(assert (=> bm!411159 (= call!411164 call!411165)))

(declare-fun b!5534347 () Bool)

(declare-fun e!3420868 () (InoxSet Context!9818))

(declare-fun call!411169 () (InoxSet Context!9818))

(assert (=> b!5534347 (= e!3420868 ((_ map or) call!411169 call!411165))))

(declare-fun bm!411160 () Bool)

(declare-fun c!968696 () Bool)

(declare-fun call!411168 () List!62874)

(assert (=> bm!411160 (= call!411169 (derivationStepZipperDown!867 (ite c!968696 (regTwo!31563 r!7292) (regOne!31562 r!7292)) (ite c!968696 lt!2249157 (Context!9819 call!411168)) (h!69199 s!2326)))))

(declare-fun c!968697 () Bool)

(declare-fun bm!411161 () Bool)

(declare-fun c!968699 () Bool)

(declare-fun $colon$colon!1598 (List!62874 Regex!15525) List!62874)

(assert (=> bm!411161 (= call!411168 ($colon$colon!1598 (exprs!5409 lt!2249157) (ite (or c!968697 c!968699) (regTwo!31562 r!7292) r!7292)))))

(declare-fun b!5534348 () Bool)

(declare-fun e!3420865 () Bool)

(assert (=> b!5534348 (= c!968697 e!3420865)))

(declare-fun res!2356237 () Bool)

(assert (=> b!5534348 (=> (not res!2356237) (not e!3420865))))

(assert (=> b!5534348 (= res!2356237 ((_ is Concat!24370) r!7292))))

(declare-fun e!3420866 () (InoxSet Context!9818))

(assert (=> b!5534348 (= e!3420866 e!3420868)))

(declare-fun b!5534349 () Bool)

(declare-fun e!3420869 () (InoxSet Context!9818))

(assert (=> b!5534349 (= e!3420869 ((as const (Array Context!9818 Bool)) false))))

(declare-fun d!1753588 () Bool)

(declare-fun c!968695 () Bool)

(assert (=> d!1753588 (= c!968695 (and ((_ is ElementMatch!15525) r!7292) (= (c!968567 r!7292) (h!69199 s!2326))))))

(declare-fun e!3420867 () (InoxSet Context!9818))

(assert (=> d!1753588 (= (derivationStepZipperDown!867 r!7292 lt!2249157 (h!69199 s!2326)) e!3420867)))

(declare-fun b!5534350 () Bool)

(assert (=> b!5534350 (= e!3420865 (nullable!5557 (regOne!31562 r!7292)))))

(declare-fun b!5534351 () Bool)

(assert (=> b!5534351 (= e!3420869 call!411164)))

(declare-fun b!5534352 () Bool)

(declare-fun e!3420870 () (InoxSet Context!9818))

(assert (=> b!5534352 (= e!3420870 call!411164)))

(declare-fun b!5534353 () Bool)

(assert (=> b!5534353 (= e!3420868 e!3420870)))

(assert (=> b!5534353 (= c!968699 ((_ is Concat!24370) r!7292))))

(declare-fun bm!411162 () Bool)

(declare-fun call!411166 () List!62874)

(assert (=> bm!411162 (= call!411166 call!411168)))

(declare-fun b!5534354 () Bool)

(declare-fun call!411167 () (InoxSet Context!9818))

(assert (=> b!5534354 (= e!3420866 ((_ map or) call!411167 call!411169))))

(declare-fun bm!411163 () Bool)

(assert (=> bm!411163 (= call!411165 call!411167)))

(declare-fun b!5534355 () Bool)

(assert (=> b!5534355 (= e!3420867 (store ((as const (Array Context!9818 Bool)) false) lt!2249157 true))))

(declare-fun bm!411164 () Bool)

(assert (=> bm!411164 (= call!411167 (derivationStepZipperDown!867 (ite c!968696 (regOne!31563 r!7292) (ite c!968697 (regTwo!31562 r!7292) (ite c!968699 (regOne!31562 r!7292) (reg!15854 r!7292)))) (ite (or c!968696 c!968697) lt!2249157 (Context!9819 call!411166)) (h!69199 s!2326)))))

(declare-fun b!5534356 () Bool)

(declare-fun c!968698 () Bool)

(assert (=> b!5534356 (= c!968698 ((_ is Star!15525) r!7292))))

(assert (=> b!5534356 (= e!3420870 e!3420869)))

(declare-fun b!5534357 () Bool)

(assert (=> b!5534357 (= e!3420867 e!3420866)))

(assert (=> b!5534357 (= c!968696 ((_ is Union!15525) r!7292))))

(assert (= (and d!1753588 c!968695) b!5534355))

(assert (= (and d!1753588 (not c!968695)) b!5534357))

(assert (= (and b!5534357 c!968696) b!5534354))

(assert (= (and b!5534357 (not c!968696)) b!5534348))

(assert (= (and b!5534348 res!2356237) b!5534350))

(assert (= (and b!5534348 c!968697) b!5534347))

(assert (= (and b!5534348 (not c!968697)) b!5534353))

(assert (= (and b!5534353 c!968699) b!5534352))

(assert (= (and b!5534353 (not c!968699)) b!5534356))

(assert (= (and b!5534356 c!968698) b!5534351))

(assert (= (and b!5534356 (not c!968698)) b!5534349))

(assert (= (or b!5534352 b!5534351) bm!411162))

(assert (= (or b!5534352 b!5534351) bm!411159))

(assert (= (or b!5534347 bm!411162) bm!411161))

(assert (= (or b!5534347 bm!411159) bm!411163))

(assert (= (or b!5534354 b!5534347) bm!411160))

(assert (= (or b!5534354 bm!411163) bm!411164))

(declare-fun m!6535574 () Bool)

(assert (=> b!5534355 m!6535574))

(assert (=> b!5534350 m!6535288))

(declare-fun m!6535576 () Bool)

(assert (=> bm!411161 m!6535576))

(declare-fun m!6535578 () Bool)

(assert (=> bm!411160 m!6535578))

(declare-fun m!6535580 () Bool)

(assert (=> bm!411164 m!6535580))

(assert (=> b!5533874 d!1753588))

(declare-fun bm!411167 () Bool)

(declare-fun call!411172 () (InoxSet Context!9818))

(assert (=> bm!411167 (= call!411172 (derivationStepZipperDown!867 (h!69198 (exprs!5409 (Context!9819 lt!2249169))) (Context!9819 (t!376135 (exprs!5409 (Context!9819 lt!2249169)))) (h!69199 s!2326)))))

(declare-fun b!5534368 () Bool)

(declare-fun e!3420879 () (InoxSet Context!9818))

(assert (=> b!5534368 (= e!3420879 ((as const (Array Context!9818 Bool)) false))))

(declare-fun b!5534369 () Bool)

(declare-fun e!3420877 () Bool)

(assert (=> b!5534369 (= e!3420877 (nullable!5557 (h!69198 (exprs!5409 (Context!9819 lt!2249169)))))))

(declare-fun e!3420878 () (InoxSet Context!9818))

(declare-fun b!5534370 () Bool)

(assert (=> b!5534370 (= e!3420878 ((_ map or) call!411172 (derivationStepZipperUp!793 (Context!9819 (t!376135 (exprs!5409 (Context!9819 lt!2249169)))) (h!69199 s!2326))))))

(declare-fun b!5534371 () Bool)

(assert (=> b!5534371 (= e!3420878 e!3420879)))

(declare-fun c!968704 () Bool)

(assert (=> b!5534371 (= c!968704 ((_ is Cons!62750) (exprs!5409 (Context!9819 lt!2249169))))))

(declare-fun b!5534372 () Bool)

(assert (=> b!5534372 (= e!3420879 call!411172)))

(declare-fun d!1753598 () Bool)

(declare-fun c!968705 () Bool)

(assert (=> d!1753598 (= c!968705 e!3420877)))

(declare-fun res!2356240 () Bool)

(assert (=> d!1753598 (=> (not res!2356240) (not e!3420877))))

(assert (=> d!1753598 (= res!2356240 ((_ is Cons!62750) (exprs!5409 (Context!9819 lt!2249169))))))

(assert (=> d!1753598 (= (derivationStepZipperUp!793 (Context!9819 lt!2249169) (h!69199 s!2326)) e!3420878)))

(assert (= (and d!1753598 res!2356240) b!5534369))

(assert (= (and d!1753598 c!968705) b!5534370))

(assert (= (and d!1753598 (not c!968705)) b!5534371))

(assert (= (and b!5534371 c!968704) b!5534372))

(assert (= (and b!5534371 (not c!968704)) b!5534368))

(assert (= (or b!5534370 b!5534372) bm!411167))

(declare-fun m!6535582 () Bool)

(assert (=> bm!411167 m!6535582))

(declare-fun m!6535584 () Bool)

(assert (=> b!5534369 m!6535584))

(declare-fun m!6535586 () Bool)

(assert (=> b!5534370 m!6535586))

(assert (=> b!5533874 d!1753598))

(declare-fun bs!1279614 () Bool)

(declare-fun d!1753600 () Bool)

(assert (= bs!1279614 (and d!1753600 b!5533867)))

(declare-fun lambda!297198 () Int)

(assert (=> bs!1279614 (= lambda!297198 lambda!297149)))

(assert (=> d!1753600 true))

(assert (=> d!1753600 (= (derivationStepZipper!1630 z!1189 (h!69199 s!2326)) (flatMap!1138 z!1189 lambda!297198))))

(declare-fun bs!1279615 () Bool)

(assert (= bs!1279615 d!1753600))

(declare-fun m!6535588 () Bool)

(assert (=> bs!1279615 m!6535588))

(assert (=> b!5533874 d!1753600))

(declare-fun d!1753602 () Bool)

(declare-fun choose!42054 ((InoxSet Context!9818) Int) (InoxSet Context!9818))

(assert (=> d!1753602 (= (flatMap!1138 lt!2249170 lambda!297149) (choose!42054 lt!2249170 lambda!297149))))

(declare-fun bs!1279616 () Bool)

(assert (= bs!1279616 d!1753602))

(declare-fun m!6535590 () Bool)

(assert (=> bs!1279616 m!6535590))

(assert (=> b!5533883 d!1753602))

(declare-fun d!1753604 () Bool)

(declare-fun dynLambda!24536 (Int Context!9818) (InoxSet Context!9818))

(assert (=> d!1753604 (= (flatMap!1138 lt!2249170 lambda!297149) (dynLambda!24536 lambda!297149 lt!2249171))))

(declare-fun lt!2249233 () Unit!155510)

(declare-fun choose!42055 ((InoxSet Context!9818) Context!9818 Int) Unit!155510)

(assert (=> d!1753604 (= lt!2249233 (choose!42055 lt!2249170 lt!2249171 lambda!297149))))

(assert (=> d!1753604 (= lt!2249170 (store ((as const (Array Context!9818 Bool)) false) lt!2249171 true))))

(assert (=> d!1753604 (= (lemmaFlatMapOnSingletonSet!670 lt!2249170 lt!2249171 lambda!297149) lt!2249233)))

(declare-fun b_lambda!210111 () Bool)

(assert (=> (not b_lambda!210111) (not d!1753604)))

(declare-fun bs!1279617 () Bool)

(assert (= bs!1279617 d!1753604))

(assert (=> bs!1279617 m!6535278))

(declare-fun m!6535592 () Bool)

(assert (=> bs!1279617 m!6535592))

(declare-fun m!6535594 () Bool)

(assert (=> bs!1279617 m!6535594))

(assert (=> bs!1279617 m!6535284))

(assert (=> b!5533883 d!1753604))

(declare-fun bm!411168 () Bool)

(declare-fun call!411173 () (InoxSet Context!9818))

(assert (=> bm!411168 (= call!411173 (derivationStepZipperDown!867 (h!69198 (exprs!5409 lt!2249171)) (Context!9819 (t!376135 (exprs!5409 lt!2249171))) (h!69199 s!2326)))))

(declare-fun b!5534375 () Bool)

(declare-fun e!3420882 () (InoxSet Context!9818))

(assert (=> b!5534375 (= e!3420882 ((as const (Array Context!9818 Bool)) false))))

(declare-fun b!5534376 () Bool)

(declare-fun e!3420880 () Bool)

(assert (=> b!5534376 (= e!3420880 (nullable!5557 (h!69198 (exprs!5409 lt!2249171))))))

(declare-fun e!3420881 () (InoxSet Context!9818))

(declare-fun b!5534377 () Bool)

(assert (=> b!5534377 (= e!3420881 ((_ map or) call!411173 (derivationStepZipperUp!793 (Context!9819 (t!376135 (exprs!5409 lt!2249171))) (h!69199 s!2326))))))

(declare-fun b!5534378 () Bool)

(assert (=> b!5534378 (= e!3420881 e!3420882)))

(declare-fun c!968708 () Bool)

(assert (=> b!5534378 (= c!968708 ((_ is Cons!62750) (exprs!5409 lt!2249171)))))

(declare-fun b!5534379 () Bool)

(assert (=> b!5534379 (= e!3420882 call!411173)))

(declare-fun d!1753606 () Bool)

(declare-fun c!968709 () Bool)

(assert (=> d!1753606 (= c!968709 e!3420880)))

(declare-fun res!2356241 () Bool)

(assert (=> d!1753606 (=> (not res!2356241) (not e!3420880))))

(assert (=> d!1753606 (= res!2356241 ((_ is Cons!62750) (exprs!5409 lt!2249171)))))

(assert (=> d!1753606 (= (derivationStepZipperUp!793 lt!2249171 (h!69199 s!2326)) e!3420881)))

(assert (= (and d!1753606 res!2356241) b!5534376))

(assert (= (and d!1753606 c!968709) b!5534377))

(assert (= (and d!1753606 (not c!968709)) b!5534378))

(assert (= (and b!5534378 c!968708) b!5534379))

(assert (= (and b!5534378 (not c!968708)) b!5534375))

(assert (= (or b!5534377 b!5534379) bm!411168))

(declare-fun m!6535596 () Bool)

(assert (=> bm!411168 m!6535596))

(declare-fun m!6535598 () Bool)

(assert (=> b!5534376 m!6535598))

(declare-fun m!6535600 () Bool)

(assert (=> b!5534377 m!6535600))

(assert (=> b!5533883 d!1753606))

(declare-fun d!1753608 () Bool)

(assert (=> d!1753608 (= (flatMap!1138 lt!2249151 lambda!297149) (dynLambda!24536 lambda!297149 lt!2249155))))

(declare-fun lt!2249234 () Unit!155510)

(assert (=> d!1753608 (= lt!2249234 (choose!42055 lt!2249151 lt!2249155 lambda!297149))))

(assert (=> d!1753608 (= lt!2249151 (store ((as const (Array Context!9818 Bool)) false) lt!2249155 true))))

(assert (=> d!1753608 (= (lemmaFlatMapOnSingletonSet!670 lt!2249151 lt!2249155 lambda!297149) lt!2249234)))

(declare-fun b_lambda!210113 () Bool)

(assert (=> (not b_lambda!210113) (not d!1753608)))

(declare-fun bs!1279618 () Bool)

(assert (= bs!1279618 d!1753608))

(assert (=> bs!1279618 m!6535286))

(declare-fun m!6535602 () Bool)

(assert (=> bs!1279618 m!6535602))

(declare-fun m!6535604 () Bool)

(assert (=> bs!1279618 m!6535604))

(assert (=> bs!1279618 m!6535280))

(assert (=> b!5533883 d!1753608))

(declare-fun bm!411169 () Bool)

(declare-fun call!411174 () (InoxSet Context!9818))

(declare-fun call!411175 () (InoxSet Context!9818))

(assert (=> bm!411169 (= call!411174 call!411175)))

(declare-fun b!5534380 () Bool)

(declare-fun e!3420886 () (InoxSet Context!9818))

(declare-fun call!411179 () (InoxSet Context!9818))

(assert (=> b!5534380 (= e!3420886 ((_ map or) call!411179 call!411175))))

(declare-fun c!968711 () Bool)

(declare-fun call!411178 () List!62874)

(declare-fun bm!411170 () Bool)

(assert (=> bm!411170 (= call!411179 (derivationStepZipperDown!867 (ite c!968711 (regTwo!31563 (regTwo!31562 r!7292)) (regOne!31562 (regTwo!31562 r!7292))) (ite c!968711 lt!2249157 (Context!9819 call!411178)) (h!69199 s!2326)))))

(declare-fun c!968712 () Bool)

(declare-fun c!968714 () Bool)

(declare-fun bm!411171 () Bool)

(assert (=> bm!411171 (= call!411178 ($colon$colon!1598 (exprs!5409 lt!2249157) (ite (or c!968712 c!968714) (regTwo!31562 (regTwo!31562 r!7292)) (regTwo!31562 r!7292))))))

(declare-fun b!5534381 () Bool)

(declare-fun e!3420883 () Bool)

(assert (=> b!5534381 (= c!968712 e!3420883)))

(declare-fun res!2356242 () Bool)

(assert (=> b!5534381 (=> (not res!2356242) (not e!3420883))))

(assert (=> b!5534381 (= res!2356242 ((_ is Concat!24370) (regTwo!31562 r!7292)))))

(declare-fun e!3420884 () (InoxSet Context!9818))

(assert (=> b!5534381 (= e!3420884 e!3420886)))

(declare-fun b!5534382 () Bool)

(declare-fun e!3420887 () (InoxSet Context!9818))

(assert (=> b!5534382 (= e!3420887 ((as const (Array Context!9818 Bool)) false))))

(declare-fun d!1753610 () Bool)

(declare-fun c!968710 () Bool)

(assert (=> d!1753610 (= c!968710 (and ((_ is ElementMatch!15525) (regTwo!31562 r!7292)) (= (c!968567 (regTwo!31562 r!7292)) (h!69199 s!2326))))))

(declare-fun e!3420885 () (InoxSet Context!9818))

(assert (=> d!1753610 (= (derivationStepZipperDown!867 (regTwo!31562 r!7292) lt!2249157 (h!69199 s!2326)) e!3420885)))

(declare-fun b!5534383 () Bool)

(assert (=> b!5534383 (= e!3420883 (nullable!5557 (regOne!31562 (regTwo!31562 r!7292))))))

(declare-fun b!5534384 () Bool)

(assert (=> b!5534384 (= e!3420887 call!411174)))

(declare-fun b!5534385 () Bool)

(declare-fun e!3420888 () (InoxSet Context!9818))

(assert (=> b!5534385 (= e!3420888 call!411174)))

(declare-fun b!5534386 () Bool)

(assert (=> b!5534386 (= e!3420886 e!3420888)))

(assert (=> b!5534386 (= c!968714 ((_ is Concat!24370) (regTwo!31562 r!7292)))))

(declare-fun bm!411172 () Bool)

(declare-fun call!411176 () List!62874)

(assert (=> bm!411172 (= call!411176 call!411178)))

(declare-fun b!5534387 () Bool)

(declare-fun call!411177 () (InoxSet Context!9818))

(assert (=> b!5534387 (= e!3420884 ((_ map or) call!411177 call!411179))))

(declare-fun bm!411173 () Bool)

(assert (=> bm!411173 (= call!411175 call!411177)))

(declare-fun b!5534388 () Bool)

(assert (=> b!5534388 (= e!3420885 (store ((as const (Array Context!9818 Bool)) false) lt!2249157 true))))

(declare-fun bm!411174 () Bool)

(assert (=> bm!411174 (= call!411177 (derivationStepZipperDown!867 (ite c!968711 (regOne!31563 (regTwo!31562 r!7292)) (ite c!968712 (regTwo!31562 (regTwo!31562 r!7292)) (ite c!968714 (regOne!31562 (regTwo!31562 r!7292)) (reg!15854 (regTwo!31562 r!7292))))) (ite (or c!968711 c!968712) lt!2249157 (Context!9819 call!411176)) (h!69199 s!2326)))))

(declare-fun b!5534389 () Bool)

(declare-fun c!968713 () Bool)

(assert (=> b!5534389 (= c!968713 ((_ is Star!15525) (regTwo!31562 r!7292)))))

(assert (=> b!5534389 (= e!3420888 e!3420887)))

(declare-fun b!5534390 () Bool)

(assert (=> b!5534390 (= e!3420885 e!3420884)))

(assert (=> b!5534390 (= c!968711 ((_ is Union!15525) (regTwo!31562 r!7292)))))

(assert (= (and d!1753610 c!968710) b!5534388))

(assert (= (and d!1753610 (not c!968710)) b!5534390))

(assert (= (and b!5534390 c!968711) b!5534387))

(assert (= (and b!5534390 (not c!968711)) b!5534381))

(assert (= (and b!5534381 res!2356242) b!5534383))

(assert (= (and b!5534381 c!968712) b!5534380))

(assert (= (and b!5534381 (not c!968712)) b!5534386))

(assert (= (and b!5534386 c!968714) b!5534385))

(assert (= (and b!5534386 (not c!968714)) b!5534389))

(assert (= (and b!5534389 c!968713) b!5534384))

(assert (= (and b!5534389 (not c!968713)) b!5534382))

(assert (= (or b!5534385 b!5534384) bm!411172))

(assert (= (or b!5534385 b!5534384) bm!411169))

(assert (= (or b!5534380 bm!411172) bm!411171))

(assert (= (or b!5534380 bm!411169) bm!411173))

(assert (= (or b!5534387 b!5534380) bm!411170))

(assert (= (or b!5534387 bm!411173) bm!411174))

(assert (=> b!5534388 m!6535574))

(declare-fun m!6535606 () Bool)

(assert (=> b!5534383 m!6535606))

(declare-fun m!6535608 () Bool)

(assert (=> bm!411171 m!6535608))

(declare-fun m!6535610 () Bool)

(assert (=> bm!411170 m!6535610))

(declare-fun m!6535612 () Bool)

(assert (=> bm!411174 m!6535612))

(assert (=> b!5533883 d!1753610))

(declare-fun d!1753612 () Bool)

(assert (=> d!1753612 (= (flatMap!1138 lt!2249151 lambda!297149) (choose!42054 lt!2249151 lambda!297149))))

(declare-fun bs!1279619 () Bool)

(assert (= bs!1279619 d!1753612))

(declare-fun m!6535614 () Bool)

(assert (=> bs!1279619 m!6535614))

(assert (=> b!5533883 d!1753612))

(declare-fun bm!411175 () Bool)

(declare-fun call!411180 () (InoxSet Context!9818))

(assert (=> bm!411175 (= call!411180 (derivationStepZipperDown!867 (h!69198 (exprs!5409 lt!2249155)) (Context!9819 (t!376135 (exprs!5409 lt!2249155))) (h!69199 s!2326)))))

(declare-fun b!5534391 () Bool)

(declare-fun e!3420891 () (InoxSet Context!9818))

(assert (=> b!5534391 (= e!3420891 ((as const (Array Context!9818 Bool)) false))))

(declare-fun b!5534392 () Bool)

(declare-fun e!3420889 () Bool)

(assert (=> b!5534392 (= e!3420889 (nullable!5557 (h!69198 (exprs!5409 lt!2249155))))))

(declare-fun b!5534393 () Bool)

(declare-fun e!3420890 () (InoxSet Context!9818))

(assert (=> b!5534393 (= e!3420890 ((_ map or) call!411180 (derivationStepZipperUp!793 (Context!9819 (t!376135 (exprs!5409 lt!2249155))) (h!69199 s!2326))))))

(declare-fun b!5534394 () Bool)

(assert (=> b!5534394 (= e!3420890 e!3420891)))

(declare-fun c!968715 () Bool)

(assert (=> b!5534394 (= c!968715 ((_ is Cons!62750) (exprs!5409 lt!2249155)))))

(declare-fun b!5534395 () Bool)

(assert (=> b!5534395 (= e!3420891 call!411180)))

(declare-fun d!1753614 () Bool)

(declare-fun c!968716 () Bool)

(assert (=> d!1753614 (= c!968716 e!3420889)))

(declare-fun res!2356243 () Bool)

(assert (=> d!1753614 (=> (not res!2356243) (not e!3420889))))

(assert (=> d!1753614 (= res!2356243 ((_ is Cons!62750) (exprs!5409 lt!2249155)))))

(assert (=> d!1753614 (= (derivationStepZipperUp!793 lt!2249155 (h!69199 s!2326)) e!3420890)))

(assert (= (and d!1753614 res!2356243) b!5534392))

(assert (= (and d!1753614 c!968716) b!5534393))

(assert (= (and d!1753614 (not c!968716)) b!5534394))

(assert (= (and b!5534394 c!968715) b!5534395))

(assert (= (and b!5534394 (not c!968715)) b!5534391))

(assert (= (or b!5534393 b!5534395) bm!411175))

(declare-fun m!6535616 () Bool)

(assert (=> bm!411175 m!6535616))

(declare-fun m!6535618 () Bool)

(assert (=> b!5534392 m!6535618))

(declare-fun m!6535620 () Bool)

(assert (=> b!5534393 m!6535620))

(assert (=> b!5533883 d!1753614))

(declare-fun d!1753616 () Bool)

(declare-fun nullableFct!1677 (Regex!15525) Bool)

(assert (=> d!1753616 (= (nullable!5557 (regOne!31562 r!7292)) (nullableFct!1677 (regOne!31562 r!7292)))))

(declare-fun bs!1279620 () Bool)

(assert (= bs!1279620 d!1753616))

(declare-fun m!6535622 () Bool)

(assert (=> bs!1279620 m!6535622))

(assert (=> b!5533883 d!1753616))

(declare-fun bm!411176 () Bool)

(declare-fun call!411181 () (InoxSet Context!9818))

(declare-fun call!411182 () (InoxSet Context!9818))

(assert (=> bm!411176 (= call!411181 call!411182)))

(declare-fun b!5534396 () Bool)

(declare-fun e!3420895 () (InoxSet Context!9818))

(declare-fun call!411186 () (InoxSet Context!9818))

(assert (=> b!5534396 (= e!3420895 ((_ map or) call!411186 call!411182))))

(declare-fun c!968718 () Bool)

(declare-fun bm!411177 () Bool)

(declare-fun call!411185 () List!62874)

(assert (=> bm!411177 (= call!411186 (derivationStepZipperDown!867 (ite c!968718 (regTwo!31563 (regOne!31562 r!7292)) (regOne!31562 (regOne!31562 r!7292))) (ite c!968718 lt!2249171 (Context!9819 call!411185)) (h!69199 s!2326)))))

(declare-fun bm!411178 () Bool)

(declare-fun c!968719 () Bool)

(declare-fun c!968721 () Bool)

(assert (=> bm!411178 (= call!411185 ($colon$colon!1598 (exprs!5409 lt!2249171) (ite (or c!968719 c!968721) (regTwo!31562 (regOne!31562 r!7292)) (regOne!31562 r!7292))))))

(declare-fun b!5534397 () Bool)

(declare-fun e!3420892 () Bool)

(assert (=> b!5534397 (= c!968719 e!3420892)))

(declare-fun res!2356244 () Bool)

(assert (=> b!5534397 (=> (not res!2356244) (not e!3420892))))

(assert (=> b!5534397 (= res!2356244 ((_ is Concat!24370) (regOne!31562 r!7292)))))

(declare-fun e!3420893 () (InoxSet Context!9818))

(assert (=> b!5534397 (= e!3420893 e!3420895)))

(declare-fun b!5534398 () Bool)

(declare-fun e!3420896 () (InoxSet Context!9818))

(assert (=> b!5534398 (= e!3420896 ((as const (Array Context!9818 Bool)) false))))

(declare-fun d!1753618 () Bool)

(declare-fun c!968717 () Bool)

(assert (=> d!1753618 (= c!968717 (and ((_ is ElementMatch!15525) (regOne!31562 r!7292)) (= (c!968567 (regOne!31562 r!7292)) (h!69199 s!2326))))))

(declare-fun e!3420894 () (InoxSet Context!9818))

(assert (=> d!1753618 (= (derivationStepZipperDown!867 (regOne!31562 r!7292) lt!2249171 (h!69199 s!2326)) e!3420894)))

(declare-fun b!5534399 () Bool)

(assert (=> b!5534399 (= e!3420892 (nullable!5557 (regOne!31562 (regOne!31562 r!7292))))))

(declare-fun b!5534400 () Bool)

(assert (=> b!5534400 (= e!3420896 call!411181)))

(declare-fun b!5534401 () Bool)

(declare-fun e!3420897 () (InoxSet Context!9818))

(assert (=> b!5534401 (= e!3420897 call!411181)))

(declare-fun b!5534402 () Bool)

(assert (=> b!5534402 (= e!3420895 e!3420897)))

(assert (=> b!5534402 (= c!968721 ((_ is Concat!24370) (regOne!31562 r!7292)))))

(declare-fun bm!411179 () Bool)

(declare-fun call!411183 () List!62874)

(assert (=> bm!411179 (= call!411183 call!411185)))

(declare-fun b!5534403 () Bool)

(declare-fun call!411184 () (InoxSet Context!9818))

(assert (=> b!5534403 (= e!3420893 ((_ map or) call!411184 call!411186))))

(declare-fun bm!411180 () Bool)

(assert (=> bm!411180 (= call!411182 call!411184)))

(declare-fun b!5534404 () Bool)

(assert (=> b!5534404 (= e!3420894 (store ((as const (Array Context!9818 Bool)) false) lt!2249171 true))))

(declare-fun bm!411181 () Bool)

(assert (=> bm!411181 (= call!411184 (derivationStepZipperDown!867 (ite c!968718 (regOne!31563 (regOne!31562 r!7292)) (ite c!968719 (regTwo!31562 (regOne!31562 r!7292)) (ite c!968721 (regOne!31562 (regOne!31562 r!7292)) (reg!15854 (regOne!31562 r!7292))))) (ite (or c!968718 c!968719) lt!2249171 (Context!9819 call!411183)) (h!69199 s!2326)))))

(declare-fun b!5534405 () Bool)

(declare-fun c!968720 () Bool)

(assert (=> b!5534405 (= c!968720 ((_ is Star!15525) (regOne!31562 r!7292)))))

(assert (=> b!5534405 (= e!3420897 e!3420896)))

(declare-fun b!5534406 () Bool)

(assert (=> b!5534406 (= e!3420894 e!3420893)))

(assert (=> b!5534406 (= c!968718 ((_ is Union!15525) (regOne!31562 r!7292)))))

(assert (= (and d!1753618 c!968717) b!5534404))

(assert (= (and d!1753618 (not c!968717)) b!5534406))

(assert (= (and b!5534406 c!968718) b!5534403))

(assert (= (and b!5534406 (not c!968718)) b!5534397))

(assert (= (and b!5534397 res!2356244) b!5534399))

(assert (= (and b!5534397 c!968719) b!5534396))

(assert (= (and b!5534397 (not c!968719)) b!5534402))

(assert (= (and b!5534402 c!968721) b!5534401))

(assert (= (and b!5534402 (not c!968721)) b!5534405))

(assert (= (and b!5534405 c!968720) b!5534400))

(assert (= (and b!5534405 (not c!968720)) b!5534398))

(assert (= (or b!5534401 b!5534400) bm!411179))

(assert (= (or b!5534401 b!5534400) bm!411176))

(assert (= (or b!5534396 bm!411179) bm!411178))

(assert (= (or b!5534396 bm!411176) bm!411180))

(assert (= (or b!5534403 b!5534396) bm!411177))

(assert (= (or b!5534403 bm!411180) bm!411181))

(assert (=> b!5534404 m!6535284))

(declare-fun m!6535624 () Bool)

(assert (=> b!5534399 m!6535624))

(declare-fun m!6535626 () Bool)

(assert (=> bm!411178 m!6535626))

(declare-fun m!6535628 () Bool)

(assert (=> bm!411177 m!6535628))

(declare-fun m!6535630 () Bool)

(assert (=> bm!411181 m!6535630))

(assert (=> b!5533883 d!1753618))

(declare-fun bs!1279621 () Bool)

(declare-fun d!1753620 () Bool)

(assert (= bs!1279621 (and d!1753620 d!1753526)))

(declare-fun lambda!297201 () Int)

(assert (=> bs!1279621 (= lambda!297201 lambda!297152)))

(declare-fun bs!1279622 () Bool)

(assert (= bs!1279622 (and d!1753620 d!1753574)))

(assert (=> bs!1279622 (= lambda!297201 lambda!297195)))

(declare-fun b!5534427 () Bool)

(declare-fun e!3420911 () Bool)

(declare-fun lt!2249237 () Regex!15525)

(declare-fun isUnion!532 (Regex!15525) Bool)

(assert (=> b!5534427 (= e!3420911 (isUnion!532 lt!2249237))))

(declare-fun b!5534428 () Bool)

(assert (=> b!5534428 (= e!3420911 (= lt!2249237 (head!11841 (unfocusZipperList!953 zl!343))))))

(declare-fun b!5534429 () Bool)

(declare-fun e!3420914 () Regex!15525)

(assert (=> b!5534429 (= e!3420914 EmptyLang!15525)))

(declare-fun e!3420912 () Bool)

(assert (=> d!1753620 e!3420912))

(declare-fun res!2356250 () Bool)

(assert (=> d!1753620 (=> (not res!2356250) (not e!3420912))))

(assert (=> d!1753620 (= res!2356250 (validRegex!7261 lt!2249237))))

(declare-fun e!3420915 () Regex!15525)

(assert (=> d!1753620 (= lt!2249237 e!3420915)))

(declare-fun c!968730 () Bool)

(declare-fun e!3420910 () Bool)

(assert (=> d!1753620 (= c!968730 e!3420910)))

(declare-fun res!2356249 () Bool)

(assert (=> d!1753620 (=> (not res!2356249) (not e!3420910))))

(assert (=> d!1753620 (= res!2356249 ((_ is Cons!62750) (unfocusZipperList!953 zl!343)))))

(assert (=> d!1753620 (forall!14699 (unfocusZipperList!953 zl!343) lambda!297201)))

(assert (=> d!1753620 (= (generalisedUnion!1388 (unfocusZipperList!953 zl!343)) lt!2249237)))

(declare-fun b!5534430 () Bool)

(assert (=> b!5534430 (= e!3420915 (h!69198 (unfocusZipperList!953 zl!343)))))

(declare-fun b!5534431 () Bool)

(declare-fun e!3420913 () Bool)

(assert (=> b!5534431 (= e!3420912 e!3420913)))

(declare-fun c!968733 () Bool)

(assert (=> b!5534431 (= c!968733 (isEmpty!34538 (unfocusZipperList!953 zl!343)))))

(declare-fun b!5534432 () Bool)

(declare-fun isEmptyLang!1102 (Regex!15525) Bool)

(assert (=> b!5534432 (= e!3420913 (isEmptyLang!1102 lt!2249237))))

(declare-fun b!5534433 () Bool)

(assert (=> b!5534433 (= e!3420913 e!3420911)))

(declare-fun c!968731 () Bool)

(assert (=> b!5534433 (= c!968731 (isEmpty!34538 (tail!10936 (unfocusZipperList!953 zl!343))))))

(declare-fun b!5534434 () Bool)

(assert (=> b!5534434 (= e!3420915 e!3420914)))

(declare-fun c!968732 () Bool)

(assert (=> b!5534434 (= c!968732 ((_ is Cons!62750) (unfocusZipperList!953 zl!343)))))

(declare-fun b!5534435 () Bool)

(assert (=> b!5534435 (= e!3420910 (isEmpty!34538 (t!376135 (unfocusZipperList!953 zl!343))))))

(declare-fun b!5534436 () Bool)

(assert (=> b!5534436 (= e!3420914 (Union!15525 (h!69198 (unfocusZipperList!953 zl!343)) (generalisedUnion!1388 (t!376135 (unfocusZipperList!953 zl!343)))))))

(assert (= (and d!1753620 res!2356249) b!5534435))

(assert (= (and d!1753620 c!968730) b!5534430))

(assert (= (and d!1753620 (not c!968730)) b!5534434))

(assert (= (and b!5534434 c!968732) b!5534436))

(assert (= (and b!5534434 (not c!968732)) b!5534429))

(assert (= (and d!1753620 res!2356250) b!5534431))

(assert (= (and b!5534431 c!968733) b!5534432))

(assert (= (and b!5534431 (not c!968733)) b!5534433))

(assert (= (and b!5534433 c!968731) b!5534428))

(assert (= (and b!5534433 (not c!968731)) b!5534427))

(assert (=> b!5534428 m!6535244))

(declare-fun m!6535632 () Bool)

(assert (=> b!5534428 m!6535632))

(assert (=> b!5534433 m!6535244))

(declare-fun m!6535634 () Bool)

(assert (=> b!5534433 m!6535634))

(assert (=> b!5534433 m!6535634))

(declare-fun m!6535636 () Bool)

(assert (=> b!5534433 m!6535636))

(declare-fun m!6535638 () Bool)

(assert (=> d!1753620 m!6535638))

(assert (=> d!1753620 m!6535244))

(declare-fun m!6535640 () Bool)

(assert (=> d!1753620 m!6535640))

(declare-fun m!6535642 () Bool)

(assert (=> b!5534435 m!6535642))

(declare-fun m!6535644 () Bool)

(assert (=> b!5534427 m!6535644))

(assert (=> b!5534431 m!6535244))

(declare-fun m!6535646 () Bool)

(assert (=> b!5534431 m!6535646))

(declare-fun m!6535648 () Bool)

(assert (=> b!5534432 m!6535648))

(declare-fun m!6535650 () Bool)

(assert (=> b!5534436 m!6535650))

(assert (=> b!5533878 d!1753620))

(declare-fun bs!1279623 () Bool)

(declare-fun d!1753622 () Bool)

(assert (= bs!1279623 (and d!1753622 d!1753526)))

(declare-fun lambda!297204 () Int)

(assert (=> bs!1279623 (= lambda!297204 lambda!297152)))

(declare-fun bs!1279624 () Bool)

(assert (= bs!1279624 (and d!1753622 d!1753574)))

(assert (=> bs!1279624 (= lambda!297204 lambda!297195)))

(declare-fun bs!1279625 () Bool)

(assert (= bs!1279625 (and d!1753622 d!1753620)))

(assert (=> bs!1279625 (= lambda!297204 lambda!297201)))

(declare-fun lt!2249240 () List!62874)

(assert (=> d!1753622 (forall!14699 lt!2249240 lambda!297204)))

(declare-fun e!3420918 () List!62874)

(assert (=> d!1753622 (= lt!2249240 e!3420918)))

(declare-fun c!968736 () Bool)

(assert (=> d!1753622 (= c!968736 ((_ is Cons!62752) zl!343))))

(assert (=> d!1753622 (= (unfocusZipperList!953 zl!343) lt!2249240)))

(declare-fun b!5534441 () Bool)

(assert (=> b!5534441 (= e!3420918 (Cons!62750 (generalisedConcat!1140 (exprs!5409 (h!69200 zl!343))) (unfocusZipperList!953 (t!376137 zl!343))))))

(declare-fun b!5534442 () Bool)

(assert (=> b!5534442 (= e!3420918 Nil!62750)))

(assert (= (and d!1753622 c!968736) b!5534441))

(assert (= (and d!1753622 (not c!968736)) b!5534442))

(declare-fun m!6535652 () Bool)

(assert (=> d!1753622 m!6535652))

(assert (=> b!5534441 m!6535314))

(declare-fun m!6535654 () Bool)

(assert (=> b!5534441 m!6535654))

(assert (=> b!5533878 d!1753622))

(declare-fun d!1753624 () Bool)

(assert (=> d!1753624 (= (flatMap!1138 z!1189 lambda!297149) (choose!42054 z!1189 lambda!297149))))

(declare-fun bs!1279626 () Bool)

(assert (= bs!1279626 d!1753624))

(declare-fun m!6535656 () Bool)

(assert (=> bs!1279626 m!6535656))

(assert (=> b!5533867 d!1753624))

(declare-fun bm!411182 () Bool)

(declare-fun call!411187 () (InoxSet Context!9818))

(assert (=> bm!411182 (= call!411187 (derivationStepZipperDown!867 (h!69198 (exprs!5409 (h!69200 zl!343))) (Context!9819 (t!376135 (exprs!5409 (h!69200 zl!343)))) (h!69199 s!2326)))))

(declare-fun b!5534443 () Bool)

(declare-fun e!3420921 () (InoxSet Context!9818))

(assert (=> b!5534443 (= e!3420921 ((as const (Array Context!9818 Bool)) false))))

(declare-fun b!5534444 () Bool)

(declare-fun e!3420919 () Bool)

(assert (=> b!5534444 (= e!3420919 (nullable!5557 (h!69198 (exprs!5409 (h!69200 zl!343)))))))

(declare-fun b!5534445 () Bool)

(declare-fun e!3420920 () (InoxSet Context!9818))

(assert (=> b!5534445 (= e!3420920 ((_ map or) call!411187 (derivationStepZipperUp!793 (Context!9819 (t!376135 (exprs!5409 (h!69200 zl!343)))) (h!69199 s!2326))))))

(declare-fun b!5534446 () Bool)

(assert (=> b!5534446 (= e!3420920 e!3420921)))

(declare-fun c!968737 () Bool)

(assert (=> b!5534446 (= c!968737 ((_ is Cons!62750) (exprs!5409 (h!69200 zl!343))))))

(declare-fun b!5534447 () Bool)

(assert (=> b!5534447 (= e!3420921 call!411187)))

(declare-fun d!1753626 () Bool)

(declare-fun c!968738 () Bool)

(assert (=> d!1753626 (= c!968738 e!3420919)))

(declare-fun res!2356251 () Bool)

(assert (=> d!1753626 (=> (not res!2356251) (not e!3420919))))

(assert (=> d!1753626 (= res!2356251 ((_ is Cons!62750) (exprs!5409 (h!69200 zl!343))))))

(assert (=> d!1753626 (= (derivationStepZipperUp!793 (h!69200 zl!343) (h!69199 s!2326)) e!3420920)))

(assert (= (and d!1753626 res!2356251) b!5534444))

(assert (= (and d!1753626 c!968738) b!5534445))

(assert (= (and d!1753626 (not c!968738)) b!5534446))

(assert (= (and b!5534446 c!968737) b!5534447))

(assert (= (and b!5534446 (not c!968737)) b!5534443))

(assert (= (or b!5534445 b!5534447) bm!411182))

(declare-fun m!6535658 () Bool)

(assert (=> bm!411182 m!6535658))

(declare-fun m!6535660 () Bool)

(assert (=> b!5534444 m!6535660))

(declare-fun m!6535662 () Bool)

(assert (=> b!5534445 m!6535662))

(assert (=> b!5533867 d!1753626))

(declare-fun d!1753628 () Bool)

(assert (=> d!1753628 (= (flatMap!1138 z!1189 lambda!297149) (dynLambda!24536 lambda!297149 (h!69200 zl!343)))))

(declare-fun lt!2249241 () Unit!155510)

(assert (=> d!1753628 (= lt!2249241 (choose!42055 z!1189 (h!69200 zl!343) lambda!297149))))

(assert (=> d!1753628 (= z!1189 (store ((as const (Array Context!9818 Bool)) false) (h!69200 zl!343) true))))

(assert (=> d!1753628 (= (lemmaFlatMapOnSingletonSet!670 z!1189 (h!69200 zl!343) lambda!297149) lt!2249241)))

(declare-fun b_lambda!210115 () Bool)

(assert (=> (not b_lambda!210115) (not d!1753628)))

(declare-fun bs!1279627 () Bool)

(assert (= bs!1279627 d!1753628))

(assert (=> bs!1279627 m!6535248))

(declare-fun m!6535664 () Bool)

(assert (=> bs!1279627 m!6535664))

(declare-fun m!6535666 () Bool)

(assert (=> bs!1279627 m!6535666))

(declare-fun m!6535668 () Bool)

(assert (=> bs!1279627 m!6535668))

(assert (=> b!5533867 d!1753628))

(declare-fun d!1753630 () Bool)

(assert (=> d!1753630 (= (isEmpty!34538 (t!376135 (exprs!5409 (h!69200 zl!343)))) ((_ is Nil!62750) (t!376135 (exprs!5409 (h!69200 zl!343)))))))

(assert (=> b!5533885 d!1753630))

(declare-fun bs!1279628 () Bool)

(declare-fun b!5534488 () Bool)

(assert (= bs!1279628 (and b!5534488 b!5533875)))

(declare-fun lambda!297209 () Int)

(assert (=> bs!1279628 (not (= lambda!297209 lambda!297148))))

(declare-fun bs!1279629 () Bool)

(assert (= bs!1279629 (and b!5534488 d!1753562)))

(assert (=> bs!1279629 (not (= lambda!297209 lambda!297189))))

(assert (=> bs!1279628 (not (= lambda!297209 lambda!297147))))

(assert (=> bs!1279629 (not (= lambda!297209 lambda!297188))))

(declare-fun bs!1279630 () Bool)

(assert (= bs!1279630 (and b!5534488 d!1753544)))

(assert (=> bs!1279630 (not (= lambda!297209 lambda!297175))))

(assert (=> b!5534488 true))

(assert (=> b!5534488 true))

(declare-fun bs!1279631 () Bool)

(declare-fun b!5534481 () Bool)

(assert (= bs!1279631 (and b!5534481 b!5534488)))

(declare-fun lambda!297210 () Int)

(assert (=> bs!1279631 (not (= lambda!297210 lambda!297209))))

(declare-fun bs!1279632 () Bool)

(assert (= bs!1279632 (and b!5534481 b!5533875)))

(assert (=> bs!1279632 (= lambda!297210 lambda!297148)))

(declare-fun bs!1279633 () Bool)

(assert (= bs!1279633 (and b!5534481 d!1753562)))

(assert (=> bs!1279633 (= lambda!297210 lambda!297189)))

(assert (=> bs!1279632 (not (= lambda!297210 lambda!297147))))

(assert (=> bs!1279633 (not (= lambda!297210 lambda!297188))))

(declare-fun bs!1279634 () Bool)

(assert (= bs!1279634 (and b!5534481 d!1753544)))

(assert (=> bs!1279634 (not (= lambda!297210 lambda!297175))))

(assert (=> b!5534481 true))

(assert (=> b!5534481 true))

(declare-fun call!411193 () Bool)

(declare-fun bm!411187 () Bool)

(declare-fun c!968750 () Bool)

(assert (=> bm!411187 (= call!411193 (Exists!2625 (ite c!968750 lambda!297209 lambda!297210)))))

(declare-fun b!5534480 () Bool)

(declare-fun e!3420942 () Bool)

(declare-fun e!3420941 () Bool)

(assert (=> b!5534480 (= e!3420942 e!3420941)))

(declare-fun res!2356268 () Bool)

(assert (=> b!5534480 (= res!2356268 (not ((_ is EmptyLang!15525) r!7292)))))

(assert (=> b!5534480 (=> (not res!2356268) (not e!3420941))))

(declare-fun e!3420943 () Bool)

(assert (=> b!5534481 (= e!3420943 call!411193)))

(declare-fun b!5534482 () Bool)

(declare-fun e!3420945 () Bool)

(assert (=> b!5534482 (= e!3420945 (matchRSpec!2628 (regTwo!31563 r!7292) s!2326))))

(declare-fun b!5534483 () Bool)

(declare-fun call!411192 () Bool)

(assert (=> b!5534483 (= e!3420942 call!411192)))

(declare-fun b!5534484 () Bool)

(declare-fun res!2356270 () Bool)

(declare-fun e!3420946 () Bool)

(assert (=> b!5534484 (=> res!2356270 e!3420946)))

(assert (=> b!5534484 (= res!2356270 call!411192)))

(assert (=> b!5534484 (= e!3420943 e!3420946)))

(declare-fun b!5534485 () Bool)

(declare-fun c!968748 () Bool)

(assert (=> b!5534485 (= c!968748 ((_ is ElementMatch!15525) r!7292))))

(declare-fun e!3420944 () Bool)

(assert (=> b!5534485 (= e!3420941 e!3420944)))

(declare-fun b!5534486 () Bool)

(declare-fun c!968749 () Bool)

(assert (=> b!5534486 (= c!968749 ((_ is Union!15525) r!7292))))

(declare-fun e!3420940 () Bool)

(assert (=> b!5534486 (= e!3420944 e!3420940)))

(declare-fun b!5534487 () Bool)

(assert (=> b!5534487 (= e!3420940 e!3420943)))

(assert (=> b!5534487 (= c!968750 ((_ is Star!15525) r!7292))))

(assert (=> b!5534488 (= e!3420946 call!411193)))

(declare-fun b!5534489 () Bool)

(assert (=> b!5534489 (= e!3420940 e!3420945)))

(declare-fun res!2356269 () Bool)

(assert (=> b!5534489 (= res!2356269 (matchRSpec!2628 (regOne!31563 r!7292) s!2326))))

(assert (=> b!5534489 (=> res!2356269 e!3420945)))

(declare-fun d!1753632 () Bool)

(declare-fun c!968747 () Bool)

(assert (=> d!1753632 (= c!968747 ((_ is EmptyExpr!15525) r!7292))))

(assert (=> d!1753632 (= (matchRSpec!2628 r!7292 s!2326) e!3420942)))

(declare-fun bm!411188 () Bool)

(declare-fun isEmpty!34542 (List!62875) Bool)

(assert (=> bm!411188 (= call!411192 (isEmpty!34542 s!2326))))

(declare-fun b!5534490 () Bool)

(assert (=> b!5534490 (= e!3420944 (= s!2326 (Cons!62751 (c!968567 r!7292) Nil!62751)))))

(assert (= (and d!1753632 c!968747) b!5534483))

(assert (= (and d!1753632 (not c!968747)) b!5534480))

(assert (= (and b!5534480 res!2356268) b!5534485))

(assert (= (and b!5534485 c!968748) b!5534490))

(assert (= (and b!5534485 (not c!968748)) b!5534486))

(assert (= (and b!5534486 c!968749) b!5534489))

(assert (= (and b!5534486 (not c!968749)) b!5534487))

(assert (= (and b!5534489 (not res!2356269)) b!5534482))

(assert (= (and b!5534487 c!968750) b!5534484))

(assert (= (and b!5534487 (not c!968750)) b!5534481))

(assert (= (and b!5534484 (not res!2356270)) b!5534488))

(assert (= (or b!5534488 b!5534481) bm!411187))

(assert (= (or b!5534483 b!5534484) bm!411188))

(declare-fun m!6535670 () Bool)

(assert (=> bm!411187 m!6535670))

(declare-fun m!6535672 () Bool)

(assert (=> b!5534482 m!6535672))

(declare-fun m!6535674 () Bool)

(assert (=> b!5534489 m!6535674))

(declare-fun m!6535676 () Bool)

(assert (=> bm!411188 m!6535676))

(assert (=> b!5533876 d!1753632))

(declare-fun b!5534519 () Bool)

(declare-fun e!3420961 () Bool)

(declare-fun lt!2249244 () Bool)

(assert (=> b!5534519 (= e!3420961 (not lt!2249244))))

(declare-fun b!5534520 () Bool)

(declare-fun e!3420965 () Bool)

(declare-fun e!3420967 () Bool)

(assert (=> b!5534520 (= e!3420965 e!3420967)))

(declare-fun res!2356293 () Bool)

(assert (=> b!5534520 (=> res!2356293 e!3420967)))

(declare-fun call!411196 () Bool)

(assert (=> b!5534520 (= res!2356293 call!411196)))

(declare-fun b!5534521 () Bool)

(declare-fun e!3420962 () Bool)

(assert (=> b!5534521 (= e!3420962 e!3420965)))

(declare-fun res!2356291 () Bool)

(assert (=> b!5534521 (=> (not res!2356291) (not e!3420965))))

(assert (=> b!5534521 (= res!2356291 (not lt!2249244))))

(declare-fun b!5534522 () Bool)

(declare-fun res!2356292 () Bool)

(assert (=> b!5534522 (=> res!2356292 e!3420962)))

(assert (=> b!5534522 (= res!2356292 (not ((_ is ElementMatch!15525) r!7292)))))

(assert (=> b!5534522 (= e!3420961 e!3420962)))

(declare-fun b!5534523 () Bool)

(declare-fun e!3420963 () Bool)

(declare-fun derivativeStep!4384 (Regex!15525 C!31320) Regex!15525)

(declare-fun head!11842 (List!62875) C!31320)

(declare-fun tail!10937 (List!62875) List!62875)

(assert (=> b!5534523 (= e!3420963 (matchR!7710 (derivativeStep!4384 r!7292 (head!11842 s!2326)) (tail!10937 s!2326)))))

(declare-fun b!5534524 () Bool)

(declare-fun e!3420966 () Bool)

(assert (=> b!5534524 (= e!3420966 (= lt!2249244 call!411196))))

(declare-fun b!5534525 () Bool)

(declare-fun res!2356287 () Bool)

(declare-fun e!3420964 () Bool)

(assert (=> b!5534525 (=> (not res!2356287) (not e!3420964))))

(assert (=> b!5534525 (= res!2356287 (not call!411196))))

(declare-fun b!5534526 () Bool)

(assert (=> b!5534526 (= e!3420964 (= (head!11842 s!2326) (c!968567 r!7292)))))

(declare-fun b!5534527 () Bool)

(declare-fun res!2356290 () Bool)

(assert (=> b!5534527 (=> (not res!2356290) (not e!3420964))))

(assert (=> b!5534527 (= res!2356290 (isEmpty!34542 (tail!10937 s!2326)))))

(declare-fun bm!411191 () Bool)

(assert (=> bm!411191 (= call!411196 (isEmpty!34542 s!2326))))

(declare-fun d!1753634 () Bool)

(assert (=> d!1753634 e!3420966))

(declare-fun c!968757 () Bool)

(assert (=> d!1753634 (= c!968757 ((_ is EmptyExpr!15525) r!7292))))

(assert (=> d!1753634 (= lt!2249244 e!3420963)))

(declare-fun c!968759 () Bool)

(assert (=> d!1753634 (= c!968759 (isEmpty!34542 s!2326))))

(assert (=> d!1753634 (validRegex!7261 r!7292)))

(assert (=> d!1753634 (= (matchR!7710 r!7292 s!2326) lt!2249244)))

(declare-fun b!5534528 () Bool)

(assert (=> b!5534528 (= e!3420967 (not (= (head!11842 s!2326) (c!968567 r!7292))))))

(declare-fun b!5534529 () Bool)

(assert (=> b!5534529 (= e!3420966 e!3420961)))

(declare-fun c!968758 () Bool)

(assert (=> b!5534529 (= c!968758 ((_ is EmptyLang!15525) r!7292))))

(declare-fun b!5534530 () Bool)

(declare-fun res!2356288 () Bool)

(assert (=> b!5534530 (=> res!2356288 e!3420967)))

(assert (=> b!5534530 (= res!2356288 (not (isEmpty!34542 (tail!10937 s!2326))))))

(declare-fun b!5534531 () Bool)

(declare-fun res!2356289 () Bool)

(assert (=> b!5534531 (=> res!2356289 e!3420962)))

(assert (=> b!5534531 (= res!2356289 e!3420964)))

(declare-fun res!2356294 () Bool)

(assert (=> b!5534531 (=> (not res!2356294) (not e!3420964))))

(assert (=> b!5534531 (= res!2356294 lt!2249244)))

(declare-fun b!5534532 () Bool)

(assert (=> b!5534532 (= e!3420963 (nullable!5557 r!7292))))

(assert (= (and d!1753634 c!968759) b!5534532))

(assert (= (and d!1753634 (not c!968759)) b!5534523))

(assert (= (and d!1753634 c!968757) b!5534524))

(assert (= (and d!1753634 (not c!968757)) b!5534529))

(assert (= (and b!5534529 c!968758) b!5534519))

(assert (= (and b!5534529 (not c!968758)) b!5534522))

(assert (= (and b!5534522 (not res!2356292)) b!5534531))

(assert (= (and b!5534531 res!2356294) b!5534525))

(assert (= (and b!5534525 res!2356287) b!5534527))

(assert (= (and b!5534527 res!2356290) b!5534526))

(assert (= (and b!5534531 (not res!2356289)) b!5534521))

(assert (= (and b!5534521 res!2356291) b!5534520))

(assert (= (and b!5534520 (not res!2356293)) b!5534530))

(assert (= (and b!5534530 (not res!2356288)) b!5534528))

(assert (= (or b!5534524 b!5534520 b!5534525) bm!411191))

(declare-fun m!6535678 () Bool)

(assert (=> b!5534526 m!6535678))

(assert (=> b!5534523 m!6535678))

(assert (=> b!5534523 m!6535678))

(declare-fun m!6535680 () Bool)

(assert (=> b!5534523 m!6535680))

(declare-fun m!6535682 () Bool)

(assert (=> b!5534523 m!6535682))

(assert (=> b!5534523 m!6535680))

(assert (=> b!5534523 m!6535682))

(declare-fun m!6535684 () Bool)

(assert (=> b!5534523 m!6535684))

(declare-fun m!6535686 () Bool)

(assert (=> b!5534532 m!6535686))

(assert (=> bm!411191 m!6535676))

(assert (=> b!5534530 m!6535682))

(assert (=> b!5534530 m!6535682))

(declare-fun m!6535688 () Bool)

(assert (=> b!5534530 m!6535688))

(assert (=> b!5534528 m!6535678))

(assert (=> b!5534527 m!6535682))

(assert (=> b!5534527 m!6535682))

(assert (=> b!5534527 m!6535688))

(assert (=> d!1753634 m!6535676))

(assert (=> d!1753634 m!6535292))

(assert (=> b!5533876 d!1753634))

(declare-fun d!1753636 () Bool)

(assert (=> d!1753636 (= (matchR!7710 r!7292 s!2326) (matchRSpec!2628 r!7292 s!2326))))

(declare-fun lt!2249247 () Unit!155510)

(declare-fun choose!42056 (Regex!15525 List!62875) Unit!155510)

(assert (=> d!1753636 (= lt!2249247 (choose!42056 r!7292 s!2326))))

(assert (=> d!1753636 (validRegex!7261 r!7292)))

(assert (=> d!1753636 (= (mainMatchTheorem!2628 r!7292 s!2326) lt!2249247)))

(declare-fun bs!1279635 () Bool)

(assert (= bs!1279635 d!1753636))

(assert (=> bs!1279635 m!6535296))

(assert (=> bs!1279635 m!6535294))

(declare-fun m!6535690 () Bool)

(assert (=> bs!1279635 m!6535690))

(assert (=> bs!1279635 m!6535292))

(assert (=> b!5533876 d!1753636))

(declare-fun d!1753638 () Bool)

(declare-fun e!3420970 () Bool)

(assert (=> d!1753638 e!3420970))

(declare-fun res!2356297 () Bool)

(assert (=> d!1753638 (=> (not res!2356297) (not e!3420970))))

(declare-fun lt!2249250 () List!62876)

(declare-fun noDuplicate!1512 (List!62876) Bool)

(assert (=> d!1753638 (= res!2356297 (noDuplicate!1512 lt!2249250))))

(declare-fun choose!42057 ((InoxSet Context!9818)) List!62876)

(assert (=> d!1753638 (= lt!2249250 (choose!42057 z!1189))))

(assert (=> d!1753638 (= (toList!9309 z!1189) lt!2249250)))

(declare-fun b!5534535 () Bool)

(declare-fun content!11292 (List!62876) (InoxSet Context!9818))

(assert (=> b!5534535 (= e!3420970 (= (content!11292 lt!2249250) z!1189))))

(assert (= (and d!1753638 res!2356297) b!5534535))

(declare-fun m!6535692 () Bool)

(assert (=> d!1753638 m!6535692))

(declare-fun m!6535694 () Bool)

(assert (=> d!1753638 m!6535694))

(declare-fun m!6535696 () Bool)

(assert (=> b!5534535 m!6535696))

(assert (=> b!5533870 d!1753638))

(declare-fun bs!1279636 () Bool)

(declare-fun d!1753640 () Bool)

(assert (= bs!1279636 (and d!1753640 d!1753526)))

(declare-fun lambda!297211 () Int)

(assert (=> bs!1279636 (= lambda!297211 lambda!297152)))

(declare-fun bs!1279637 () Bool)

(assert (= bs!1279637 (and d!1753640 d!1753574)))

(assert (=> bs!1279637 (= lambda!297211 lambda!297195)))

(declare-fun bs!1279638 () Bool)

(assert (= bs!1279638 (and d!1753640 d!1753620)))

(assert (=> bs!1279638 (= lambda!297211 lambda!297201)))

(declare-fun bs!1279639 () Bool)

(assert (= bs!1279639 (and d!1753640 d!1753622)))

(assert (=> bs!1279639 (= lambda!297211 lambda!297204)))

(assert (=> d!1753640 (= (inv!82059 (h!69200 zl!343)) (forall!14699 (exprs!5409 (h!69200 zl!343)) lambda!297211))))

(declare-fun bs!1279640 () Bool)

(assert (= bs!1279640 d!1753640))

(declare-fun m!6535698 () Bool)

(assert (=> bs!1279640 m!6535698))

(assert (=> b!5533869 d!1753640))

(declare-fun d!1753642 () Bool)

(assert (=> d!1753642 (= (isEmpty!34537 (t!376137 zl!343)) ((_ is Nil!62752) (t!376137 zl!343)))))

(assert (=> b!5533879 d!1753642))

(declare-fun d!1753644 () Bool)

(declare-fun lt!2249253 () Regex!15525)

(assert (=> d!1753644 (validRegex!7261 lt!2249253)))

(assert (=> d!1753644 (= lt!2249253 (generalisedUnion!1388 (unfocusZipperList!953 zl!343)))))

(assert (=> d!1753644 (= (unfocusZipper!1267 zl!343) lt!2249253)))

(declare-fun bs!1279641 () Bool)

(assert (= bs!1279641 d!1753644))

(declare-fun m!6535700 () Bool)

(assert (=> bs!1279641 m!6535700))

(assert (=> bs!1279641 m!6535244))

(assert (=> bs!1279641 m!6535244))

(assert (=> bs!1279641 m!6535246))

(assert (=> b!5533887 d!1753644))

(declare-fun b!5534554 () Bool)

(declare-fun e!3420987 () Bool)

(declare-fun e!3420986 () Bool)

(assert (=> b!5534554 (= e!3420987 e!3420986)))

(declare-fun c!968764 () Bool)

(assert (=> b!5534554 (= c!968764 ((_ is Union!15525) r!7292))))

(declare-fun b!5534555 () Bool)

(declare-fun e!3420988 () Bool)

(declare-fun call!411203 () Bool)

(assert (=> b!5534555 (= e!3420988 call!411203)))

(declare-fun b!5534556 () Bool)

(declare-fun e!3420985 () Bool)

(assert (=> b!5534556 (= e!3420985 call!411203)))

(declare-fun b!5534558 () Bool)

(declare-fun res!2356309 () Bool)

(assert (=> b!5534558 (=> (not res!2356309) (not e!3420988))))

(declare-fun call!411204 () Bool)

(assert (=> b!5534558 (= res!2356309 call!411204)))

(assert (=> b!5534558 (= e!3420986 e!3420988)))

(declare-fun call!411205 () Bool)

(declare-fun bm!411198 () Bool)

(declare-fun c!968765 () Bool)

(assert (=> bm!411198 (= call!411205 (validRegex!7261 (ite c!968765 (reg!15854 r!7292) (ite c!968764 (regOne!31563 r!7292) (regOne!31562 r!7292)))))))

(declare-fun b!5534559 () Bool)

(declare-fun e!3420991 () Bool)

(assert (=> b!5534559 (= e!3420991 call!411205)))

(declare-fun b!5534560 () Bool)

(declare-fun res!2356310 () Bool)

(declare-fun e!3420989 () Bool)

(assert (=> b!5534560 (=> res!2356310 e!3420989)))

(assert (=> b!5534560 (= res!2356310 (not ((_ is Concat!24370) r!7292)))))

(assert (=> b!5534560 (= e!3420986 e!3420989)))

(declare-fun d!1753646 () Bool)

(declare-fun res!2356308 () Bool)

(declare-fun e!3420990 () Bool)

(assert (=> d!1753646 (=> res!2356308 e!3420990)))

(assert (=> d!1753646 (= res!2356308 ((_ is ElementMatch!15525) r!7292))))

(assert (=> d!1753646 (= (validRegex!7261 r!7292) e!3420990)))

(declare-fun b!5534557 () Bool)

(assert (=> b!5534557 (= e!3420987 e!3420991)))

(declare-fun res!2356311 () Bool)

(assert (=> b!5534557 (= res!2356311 (not (nullable!5557 (reg!15854 r!7292))))))

(assert (=> b!5534557 (=> (not res!2356311) (not e!3420991))))

(declare-fun bm!411199 () Bool)

(assert (=> bm!411199 (= call!411203 (validRegex!7261 (ite c!968764 (regTwo!31563 r!7292) (regTwo!31562 r!7292))))))

(declare-fun b!5534561 () Bool)

(assert (=> b!5534561 (= e!3420990 e!3420987)))

(assert (=> b!5534561 (= c!968765 ((_ is Star!15525) r!7292))))

(declare-fun b!5534562 () Bool)

(assert (=> b!5534562 (= e!3420989 e!3420985)))

(declare-fun res!2356312 () Bool)

(assert (=> b!5534562 (=> (not res!2356312) (not e!3420985))))

(assert (=> b!5534562 (= res!2356312 call!411204)))

(declare-fun bm!411200 () Bool)

(assert (=> bm!411200 (= call!411204 call!411205)))

(assert (= (and d!1753646 (not res!2356308)) b!5534561))

(assert (= (and b!5534561 c!968765) b!5534557))

(assert (= (and b!5534561 (not c!968765)) b!5534554))

(assert (= (and b!5534557 res!2356311) b!5534559))

(assert (= (and b!5534554 c!968764) b!5534558))

(assert (= (and b!5534554 (not c!968764)) b!5534560))

(assert (= (and b!5534558 res!2356309) b!5534555))

(assert (= (and b!5534560 (not res!2356310)) b!5534562))

(assert (= (and b!5534562 res!2356312) b!5534556))

(assert (= (or b!5534555 b!5534556) bm!411199))

(assert (= (or b!5534558 b!5534562) bm!411200))

(assert (= (or b!5534559 bm!411200) bm!411198))

(declare-fun m!6535702 () Bool)

(assert (=> bm!411198 m!6535702))

(declare-fun m!6535704 () Bool)

(assert (=> b!5534557 m!6535704))

(declare-fun m!6535706 () Bool)

(assert (=> bm!411199 m!6535706))

(assert (=> start!577426 d!1753646))

(declare-fun condSetEmpty!36851 () Bool)

(assert (=> setNonEmpty!36845 (= condSetEmpty!36851 (= setRest!36845 ((as const (Array Context!9818 Bool)) false)))))

(declare-fun setRes!36851 () Bool)

(assert (=> setNonEmpty!36845 (= tp!1522237 setRes!36851)))

(declare-fun setIsEmpty!36851 () Bool)

(assert (=> setIsEmpty!36851 setRes!36851))

(declare-fun e!3420994 () Bool)

(declare-fun setElem!36851 () Context!9818)

(declare-fun setNonEmpty!36851 () Bool)

(declare-fun tp!1522307 () Bool)

(assert (=> setNonEmpty!36851 (= setRes!36851 (and tp!1522307 (inv!82059 setElem!36851) e!3420994))))

(declare-fun setRest!36851 () (InoxSet Context!9818))

(assert (=> setNonEmpty!36851 (= setRest!36845 ((_ map or) (store ((as const (Array Context!9818 Bool)) false) setElem!36851 true) setRest!36851))))

(declare-fun b!5534567 () Bool)

(declare-fun tp!1522306 () Bool)

(assert (=> b!5534567 (= e!3420994 tp!1522306)))

(assert (= (and setNonEmpty!36845 condSetEmpty!36851) setIsEmpty!36851))

(assert (= (and setNonEmpty!36845 (not condSetEmpty!36851)) setNonEmpty!36851))

(assert (= setNonEmpty!36851 b!5534567))

(declare-fun m!6535708 () Bool)

(assert (=> setNonEmpty!36851 m!6535708))

(declare-fun b!5534575 () Bool)

(declare-fun e!3421000 () Bool)

(declare-fun tp!1522312 () Bool)

(assert (=> b!5534575 (= e!3421000 tp!1522312)))

(declare-fun tp!1522313 () Bool)

(declare-fun e!3420999 () Bool)

(declare-fun b!5534574 () Bool)

(assert (=> b!5534574 (= e!3420999 (and (inv!82059 (h!69200 (t!376137 zl!343))) e!3421000 tp!1522313))))

(assert (=> b!5533869 (= tp!1522242 e!3420999)))

(assert (= b!5534574 b!5534575))

(assert (= (and b!5533869 ((_ is Cons!62752) (t!376137 zl!343))) b!5534574))

(declare-fun m!6535710 () Bool)

(assert (=> b!5534574 m!6535710))

(declare-fun b!5534580 () Bool)

(declare-fun e!3421003 () Bool)

(declare-fun tp!1522316 () Bool)

(assert (=> b!5534580 (= e!3421003 (and tp_is_empty!40303 tp!1522316))))

(assert (=> b!5533888 (= tp!1522236 e!3421003)))

(assert (= (and b!5533888 ((_ is Cons!62751) (t!376136 s!2326))) b!5534580))

(declare-fun b!5534592 () Bool)

(declare-fun e!3421006 () Bool)

(declare-fun tp!1522328 () Bool)

(declare-fun tp!1522331 () Bool)

(assert (=> b!5534592 (= e!3421006 (and tp!1522328 tp!1522331))))

(declare-fun b!5534591 () Bool)

(assert (=> b!5534591 (= e!3421006 tp_is_empty!40303)))

(declare-fun b!5534594 () Bool)

(declare-fun tp!1522329 () Bool)

(declare-fun tp!1522330 () Bool)

(assert (=> b!5534594 (= e!3421006 (and tp!1522329 tp!1522330))))

(declare-fun b!5534593 () Bool)

(declare-fun tp!1522327 () Bool)

(assert (=> b!5534593 (= e!3421006 tp!1522327)))

(assert (=> b!5533868 (= tp!1522243 e!3421006)))

(assert (= (and b!5533868 ((_ is ElementMatch!15525) (reg!15854 r!7292))) b!5534591))

(assert (= (and b!5533868 ((_ is Concat!24370) (reg!15854 r!7292))) b!5534592))

(assert (= (and b!5533868 ((_ is Star!15525) (reg!15854 r!7292))) b!5534593))

(assert (= (and b!5533868 ((_ is Union!15525) (reg!15854 r!7292))) b!5534594))

(declare-fun b!5534599 () Bool)

(declare-fun e!3421009 () Bool)

(declare-fun tp!1522336 () Bool)

(declare-fun tp!1522337 () Bool)

(assert (=> b!5534599 (= e!3421009 (and tp!1522336 tp!1522337))))

(assert (=> b!5533873 (= tp!1522235 e!3421009)))

(assert (= (and b!5533873 ((_ is Cons!62750) (exprs!5409 setElem!36845))) b!5534599))

(declare-fun b!5534600 () Bool)

(declare-fun e!3421010 () Bool)

(declare-fun tp!1522338 () Bool)

(declare-fun tp!1522339 () Bool)

(assert (=> b!5534600 (= e!3421010 (and tp!1522338 tp!1522339))))

(assert (=> b!5533872 (= tp!1522238 e!3421010)))

(assert (= (and b!5533872 ((_ is Cons!62750) (exprs!5409 (h!69200 zl!343)))) b!5534600))

(declare-fun b!5534602 () Bool)

(declare-fun e!3421011 () Bool)

(declare-fun tp!1522341 () Bool)

(declare-fun tp!1522344 () Bool)

(assert (=> b!5534602 (= e!3421011 (and tp!1522341 tp!1522344))))

(declare-fun b!5534601 () Bool)

(assert (=> b!5534601 (= e!3421011 tp_is_empty!40303)))

(declare-fun b!5534604 () Bool)

(declare-fun tp!1522342 () Bool)

(declare-fun tp!1522343 () Bool)

(assert (=> b!5534604 (= e!3421011 (and tp!1522342 tp!1522343))))

(declare-fun b!5534603 () Bool)

(declare-fun tp!1522340 () Bool)

(assert (=> b!5534603 (= e!3421011 tp!1522340)))

(assert (=> b!5533877 (= tp!1522241 e!3421011)))

(assert (= (and b!5533877 ((_ is ElementMatch!15525) (regOne!31562 r!7292))) b!5534601))

(assert (= (and b!5533877 ((_ is Concat!24370) (regOne!31562 r!7292))) b!5534602))

(assert (= (and b!5533877 ((_ is Star!15525) (regOne!31562 r!7292))) b!5534603))

(assert (= (and b!5533877 ((_ is Union!15525) (regOne!31562 r!7292))) b!5534604))

(declare-fun b!5534606 () Bool)

(declare-fun e!3421012 () Bool)

(declare-fun tp!1522346 () Bool)

(declare-fun tp!1522349 () Bool)

(assert (=> b!5534606 (= e!3421012 (and tp!1522346 tp!1522349))))

(declare-fun b!5534605 () Bool)

(assert (=> b!5534605 (= e!3421012 tp_is_empty!40303)))

(declare-fun b!5534608 () Bool)

(declare-fun tp!1522347 () Bool)

(declare-fun tp!1522348 () Bool)

(assert (=> b!5534608 (= e!3421012 (and tp!1522347 tp!1522348))))

(declare-fun b!5534607 () Bool)

(declare-fun tp!1522345 () Bool)

(assert (=> b!5534607 (= e!3421012 tp!1522345)))

(assert (=> b!5533877 (= tp!1522234 e!3421012)))

(assert (= (and b!5533877 ((_ is ElementMatch!15525) (regTwo!31562 r!7292))) b!5534605))

(assert (= (and b!5533877 ((_ is Concat!24370) (regTwo!31562 r!7292))) b!5534606))

(assert (= (and b!5533877 ((_ is Star!15525) (regTwo!31562 r!7292))) b!5534607))

(assert (= (and b!5533877 ((_ is Union!15525) (regTwo!31562 r!7292))) b!5534608))

(declare-fun b!5534610 () Bool)

(declare-fun e!3421013 () Bool)

(declare-fun tp!1522351 () Bool)

(declare-fun tp!1522354 () Bool)

(assert (=> b!5534610 (= e!3421013 (and tp!1522351 tp!1522354))))

(declare-fun b!5534609 () Bool)

(assert (=> b!5534609 (= e!3421013 tp_is_empty!40303)))

(declare-fun b!5534612 () Bool)

(declare-fun tp!1522352 () Bool)

(declare-fun tp!1522353 () Bool)

(assert (=> b!5534612 (= e!3421013 (and tp!1522352 tp!1522353))))

(declare-fun b!5534611 () Bool)

(declare-fun tp!1522350 () Bool)

(assert (=> b!5534611 (= e!3421013 tp!1522350)))

(assert (=> b!5533880 (= tp!1522240 e!3421013)))

(assert (= (and b!5533880 ((_ is ElementMatch!15525) (regOne!31563 r!7292))) b!5534609))

(assert (= (and b!5533880 ((_ is Concat!24370) (regOne!31563 r!7292))) b!5534610))

(assert (= (and b!5533880 ((_ is Star!15525) (regOne!31563 r!7292))) b!5534611))

(assert (= (and b!5533880 ((_ is Union!15525) (regOne!31563 r!7292))) b!5534612))

(declare-fun b!5534614 () Bool)

(declare-fun e!3421014 () Bool)

(declare-fun tp!1522356 () Bool)

(declare-fun tp!1522359 () Bool)

(assert (=> b!5534614 (= e!3421014 (and tp!1522356 tp!1522359))))

(declare-fun b!5534613 () Bool)

(assert (=> b!5534613 (= e!3421014 tp_is_empty!40303)))

(declare-fun b!5534616 () Bool)

(declare-fun tp!1522357 () Bool)

(declare-fun tp!1522358 () Bool)

(assert (=> b!5534616 (= e!3421014 (and tp!1522357 tp!1522358))))

(declare-fun b!5534615 () Bool)

(declare-fun tp!1522355 () Bool)

(assert (=> b!5534615 (= e!3421014 tp!1522355)))

(assert (=> b!5533880 (= tp!1522239 e!3421014)))

(assert (= (and b!5533880 ((_ is ElementMatch!15525) (regTwo!31563 r!7292))) b!5534613))

(assert (= (and b!5533880 ((_ is Concat!24370) (regTwo!31563 r!7292))) b!5534614))

(assert (= (and b!5533880 ((_ is Star!15525) (regTwo!31563 r!7292))) b!5534615))

(assert (= (and b!5533880 ((_ is Union!15525) (regTwo!31563 r!7292))) b!5534616))

(declare-fun b_lambda!210117 () Bool)

(assert (= b_lambda!210115 (or b!5533867 b_lambda!210117)))

(declare-fun bs!1279642 () Bool)

(declare-fun d!1753648 () Bool)

(assert (= bs!1279642 (and d!1753648 b!5533867)))

(assert (=> bs!1279642 (= (dynLambda!24536 lambda!297149 (h!69200 zl!343)) (derivationStepZipperUp!793 (h!69200 zl!343) (h!69199 s!2326)))))

(assert (=> bs!1279642 m!6535250))

(assert (=> d!1753628 d!1753648))

(declare-fun b_lambda!210119 () Bool)

(assert (= b_lambda!210111 (or b!5533867 b_lambda!210119)))

(declare-fun bs!1279643 () Bool)

(declare-fun d!1753650 () Bool)

(assert (= bs!1279643 (and d!1753650 b!5533867)))

(assert (=> bs!1279643 (= (dynLambda!24536 lambda!297149 lt!2249171) (derivationStepZipperUp!793 lt!2249171 (h!69199 s!2326)))))

(assert (=> bs!1279643 m!6535268))

(assert (=> d!1753604 d!1753650))

(declare-fun b_lambda!210121 () Bool)

(assert (= b_lambda!210113 (or b!5533867 b_lambda!210121)))

(declare-fun bs!1279644 () Bool)

(declare-fun d!1753652 () Bool)

(assert (= bs!1279644 (and d!1753652 b!5533867)))

(assert (=> bs!1279644 (= (dynLambda!24536 lambda!297149 lt!2249155) (derivationStepZipperUp!793 lt!2249155 (h!69199 s!2326)))))

(assert (=> bs!1279644 m!6535276))

(assert (=> d!1753608 d!1753652))

(check-sat (not bm!411178) (not b!5534399) (not d!1753634) (not b!5534435) (not d!1753566) (not b!5534432) (not b!5534392) (not d!1753638) (not b_lambda!210117) (not bs!1279644) (not bm!411171) (not bs!1279643) (not b!5534431) (not d!1753628) (not d!1753616) (not bm!411181) (not bm!411191) (not b!5534243) (not b!5534020) (not d!1753636) (not bm!411167) (not b!5534592) (not bm!411164) (not b!5534377) (not b!5534238) (not b!5534428) (not bm!411160) (not bs!1279642) (not d!1753572) (not b!5534599) (not b!5534523) (not b!5534616) (not d!1753562) (not b!5534602) (not b!5534350) (not b!5534482) (not d!1753620) (not d!1753622) (not bm!411161) (not b!5534535) (not b_lambda!210119) (not d!1753568) (not b!5534237) (not b!5534527) (not b!5534023) (not bm!411198) (not b_lambda!210121) (not b!5534611) (not b!5534369) (not b!5534575) (not b!5534557) (not b!5534530) (not b!5534236) (not b!5534606) (not b!5534018) (not b!5534393) (not b!5534532) (not b!5534580) (not bm!411168) (not bm!411170) (not b!5534370) (not b!5534235) (not d!1753544) (not b!5534612) (not d!1753574) (not b!5534234) (not b!5534607) (not b!5534376) (not b!5534383) (not b!5534593) (not d!1753624) (not b!5534608) (not d!1753600) (not bm!411175) (not b!5534600) (not bm!411174) (not setNonEmpty!36851) (not b!5534604) (not b!5534610) (not bm!411199) (not b!5534594) (not b!5534567) (not bm!411187) (not d!1753612) (not b!5534024) (not b!5534614) (not b!5534444) (not b!5534489) (not bm!411188) (not b!5534445) (not b!5534242) (not b!5534433) (not d!1753528) (not d!1753526) (not b!5534603) tp_is_empty!40303 (not b!5534526) (not d!1753644) (not b!5534615) (not d!1753608) (not b!5534017) (not b!5534436) (not b!5534427) (not d!1753602) (not bm!411182) (not b!5534528) (not bm!411177) (not d!1753604) (not b!5534021) (not b!5534574) (not b!5534441) (not d!1753640))
(check-sat)
