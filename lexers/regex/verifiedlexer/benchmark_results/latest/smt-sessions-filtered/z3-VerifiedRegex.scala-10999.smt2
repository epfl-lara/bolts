; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570274 () Bool)

(assert start!570274)

(declare-fun b!5437204 () Bool)

(assert (=> b!5437204 true))

(assert (=> b!5437204 true))

(declare-fun lambda!285954 () Int)

(declare-fun lambda!285953 () Int)

(assert (=> b!5437204 (not (= lambda!285954 lambda!285953))))

(assert (=> b!5437204 true))

(assert (=> b!5437204 true))

(declare-fun b!5437192 () Bool)

(assert (=> b!5437192 true))

(declare-fun b!5437188 () Bool)

(declare-fun res!2314736 () Bool)

(declare-fun e!3368546 () Bool)

(assert (=> b!5437188 (=> res!2314736 e!3368546)))

(declare-datatypes ((C!30760 0))(
  ( (C!30761 (val!25082 Int)) )
))
(declare-datatypes ((Regex!15245 0))(
  ( (ElementMatch!15245 (c!948749 C!30760)) (Concat!24090 (regOne!31002 Regex!15245) (regTwo!31002 Regex!15245)) (EmptyExpr!15245) (Star!15245 (reg!15574 Regex!15245)) (EmptyLang!15245) (Union!15245 (regOne!31003 Regex!15245) (regTwo!31003 Regex!15245)) )
))
(declare-datatypes ((List!62034 0))(
  ( (Nil!61910) (Cons!61910 (h!68358 Regex!15245) (t!375259 List!62034)) )
))
(declare-datatypes ((Context!9258 0))(
  ( (Context!9259 (exprs!5129 List!62034)) )
))
(declare-datatypes ((List!62035 0))(
  ( (Nil!61911) (Cons!61911 (h!68359 Context!9258) (t!375260 List!62035)) )
))
(declare-fun zl!343 () List!62035)

(get-info :version)

(assert (=> b!5437188 (= res!2314736 (not ((_ is Cons!61910) (exprs!5129 (h!68359 zl!343)))))))

(declare-fun res!2314732 () Bool)

(declare-fun e!3368545 () Bool)

(assert (=> start!570274 (=> (not res!2314732) (not e!3368545))))

(declare-fun r!7292 () Regex!15245)

(declare-fun validRegex!6981 (Regex!15245) Bool)

(assert (=> start!570274 (= res!2314732 (validRegex!6981 r!7292))))

(assert (=> start!570274 e!3368545))

(declare-fun e!3368553 () Bool)

(assert (=> start!570274 e!3368553))

(declare-fun condSetEmpty!35511 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9258))

(assert (=> start!570274 (= condSetEmpty!35511 (= z!1189 ((as const (Array Context!9258 Bool)) false)))))

(declare-fun setRes!35511 () Bool)

(assert (=> start!570274 setRes!35511))

(declare-fun e!3368547 () Bool)

(assert (=> start!570274 e!3368547))

(declare-fun e!3368551 () Bool)

(assert (=> start!570274 e!3368551))

(declare-fun b!5437189 () Bool)

(assert (=> b!5437189 (= e!3368545 (not e!3368546))))

(declare-fun res!2314728 () Bool)

(assert (=> b!5437189 (=> res!2314728 e!3368546)))

(assert (=> b!5437189 (= res!2314728 (not ((_ is Cons!61911) zl!343)))))

(declare-fun lt!2217953 () Bool)

(declare-datatypes ((List!62036 0))(
  ( (Nil!61912) (Cons!61912 (h!68360 C!30760) (t!375261 List!62036)) )
))
(declare-fun s!2326 () List!62036)

(declare-fun matchRSpec!2348 (Regex!15245 List!62036) Bool)

(assert (=> b!5437189 (= lt!2217953 (matchRSpec!2348 r!7292 s!2326))))

(declare-fun matchR!7430 (Regex!15245 List!62036) Bool)

(assert (=> b!5437189 (= lt!2217953 (matchR!7430 r!7292 s!2326))))

(declare-datatypes ((Unit!154522 0))(
  ( (Unit!154523) )
))
(declare-fun lt!2217954 () Unit!154522)

(declare-fun mainMatchTheorem!2348 (Regex!15245 List!62036) Unit!154522)

(assert (=> b!5437189 (= lt!2217954 (mainMatchTheorem!2348 r!7292 s!2326))))

(declare-fun b!5437190 () Bool)

(declare-fun res!2314729 () Bool)

(assert (=> b!5437190 (=> (not res!2314729) (not e!3368545))))

(declare-fun toList!9029 ((InoxSet Context!9258)) List!62035)

(assert (=> b!5437190 (= res!2314729 (= (toList!9029 z!1189) zl!343))))

(declare-fun b!5437191 () Bool)

(declare-fun tp_is_empty!39743 () Bool)

(assert (=> b!5437191 (= e!3368553 tp_is_empty!39743)))

(declare-fun setNonEmpty!35511 () Bool)

(declare-fun e!3368548 () Bool)

(declare-fun setElem!35511 () Context!9258)

(declare-fun tp!1499244 () Bool)

(declare-fun inv!81359 (Context!9258) Bool)

(assert (=> setNonEmpty!35511 (= setRes!35511 (and tp!1499244 (inv!81359 setElem!35511) e!3368548))))

(declare-fun setRest!35511 () (InoxSet Context!9258))

(assert (=> setNonEmpty!35511 (= z!1189 ((_ map or) (store ((as const (Array Context!9258 Bool)) false) setElem!35511 true) setRest!35511))))

(declare-fun e!3368554 () Bool)

(assert (=> b!5437192 (= e!3368554 true)))

(declare-fun lt!2217952 () Unit!154522)

(declare-fun e!3368549 () Unit!154522)

(assert (=> b!5437192 (= lt!2217952 e!3368549)))

(declare-fun c!948748 () Bool)

(declare-fun nullable!5414 (Regex!15245) Bool)

(assert (=> b!5437192 (= c!948748 (nullable!5414 (h!68358 (exprs!5129 (h!68359 zl!343)))))))

(declare-fun lambda!285955 () Int)

(declare-fun flatMap!972 ((InoxSet Context!9258) Int) (InoxSet Context!9258))

(declare-fun derivationStepZipperUp!617 (Context!9258 C!30760) (InoxSet Context!9258))

(assert (=> b!5437192 (= (flatMap!972 z!1189 lambda!285955) (derivationStepZipperUp!617 (h!68359 zl!343) (h!68360 s!2326)))))

(declare-fun lt!2217951 () Unit!154522)

(declare-fun lemmaFlatMapOnSingletonSet!504 ((InoxSet Context!9258) Context!9258 Int) Unit!154522)

(assert (=> b!5437192 (= lt!2217951 (lemmaFlatMapOnSingletonSet!504 z!1189 (h!68359 zl!343) lambda!285955))))

(declare-fun lt!2217962 () (InoxSet Context!9258))

(declare-fun lt!2217956 () Context!9258)

(assert (=> b!5437192 (= lt!2217962 (derivationStepZipperUp!617 lt!2217956 (h!68360 s!2326)))))

(declare-fun lt!2217959 () (InoxSet Context!9258))

(declare-fun derivationStepZipperDown!693 (Regex!15245 Context!9258 C!30760) (InoxSet Context!9258))

(assert (=> b!5437192 (= lt!2217959 (derivationStepZipperDown!693 (h!68358 (exprs!5129 (h!68359 zl!343))) lt!2217956 (h!68360 s!2326)))))

(assert (=> b!5437192 (= lt!2217956 (Context!9259 (t!375259 (exprs!5129 (h!68359 zl!343)))))))

(declare-fun lt!2217961 () (InoxSet Context!9258))

(assert (=> b!5437192 (= lt!2217961 (derivationStepZipperUp!617 (Context!9259 (Cons!61910 (h!68358 (exprs!5129 (h!68359 zl!343))) (t!375259 (exprs!5129 (h!68359 zl!343))))) (h!68360 s!2326)))))

(declare-fun b!5437193 () Bool)

(declare-fun tp!1499249 () Bool)

(assert (=> b!5437193 (= e!3368553 tp!1499249)))

(declare-fun b!5437194 () Bool)

(declare-fun e!3368552 () Bool)

(declare-fun matchZipper!1489 ((InoxSet Context!9258) List!62036) Bool)

(assert (=> b!5437194 (= e!3368552 (matchZipper!1489 lt!2217962 (t!375261 s!2326)))))

(declare-fun b!5437195 () Bool)

(declare-fun res!2314733 () Bool)

(assert (=> b!5437195 (=> res!2314733 e!3368546)))

(declare-fun isEmpty!33902 (List!62035) Bool)

(assert (=> b!5437195 (= res!2314733 (not (isEmpty!33902 (t!375260 zl!343))))))

(declare-fun b!5437196 () Bool)

(declare-fun res!2314726 () Bool)

(assert (=> b!5437196 (=> res!2314726 e!3368546)))

(declare-fun generalisedUnion!1174 (List!62034) Regex!15245)

(declare-fun unfocusZipperList!687 (List!62035) List!62034)

(assert (=> b!5437196 (= res!2314726 (not (= r!7292 (generalisedUnion!1174 (unfocusZipperList!687 zl!343)))))))

(declare-fun b!5437197 () Bool)

(declare-fun res!2314727 () Bool)

(assert (=> b!5437197 (=> res!2314727 e!3368546)))

(declare-fun generalisedConcat!914 (List!62034) Regex!15245)

(assert (=> b!5437197 (= res!2314727 (not (= r!7292 (generalisedConcat!914 (exprs!5129 (h!68359 zl!343))))))))

(declare-fun b!5437198 () Bool)

(declare-fun Unit!154524 () Unit!154522)

(assert (=> b!5437198 (= e!3368549 Unit!154524)))

(declare-fun e!3368550 () Bool)

(declare-fun b!5437199 () Bool)

(declare-fun tp!1499251 () Bool)

(assert (=> b!5437199 (= e!3368547 (and (inv!81359 (h!68359 zl!343)) e!3368550 tp!1499251))))

(declare-fun b!5437200 () Bool)

(declare-fun tp!1499247 () Bool)

(assert (=> b!5437200 (= e!3368550 tp!1499247)))

(declare-fun b!5437201 () Bool)

(declare-fun tp!1499248 () Bool)

(declare-fun tp!1499253 () Bool)

(assert (=> b!5437201 (= e!3368553 (and tp!1499248 tp!1499253))))

(declare-fun b!5437202 () Bool)

(declare-fun tp!1499246 () Bool)

(assert (=> b!5437202 (= e!3368551 (and tp_is_empty!39743 tp!1499246))))

(declare-fun b!5437203 () Bool)

(declare-fun tp!1499252 () Bool)

(assert (=> b!5437203 (= e!3368548 tp!1499252)))

(assert (=> b!5437204 (= e!3368546 e!3368554)))

(declare-fun res!2314730 () Bool)

(assert (=> b!5437204 (=> res!2314730 e!3368554)))

(declare-fun lt!2217960 () Bool)

(assert (=> b!5437204 (= res!2314730 (or (not (= lt!2217953 lt!2217960)) ((_ is Nil!61912) s!2326)))))

(declare-fun Exists!2426 (Int) Bool)

(assert (=> b!5437204 (= (Exists!2426 lambda!285953) (Exists!2426 lambda!285954))))

(declare-fun lt!2217955 () Unit!154522)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1080 (Regex!15245 Regex!15245 List!62036) Unit!154522)

(assert (=> b!5437204 (= lt!2217955 (lemmaExistCutMatchRandMatchRSpecEquivalent!1080 (regOne!31002 r!7292) (regTwo!31002 r!7292) s!2326))))

(assert (=> b!5437204 (= lt!2217960 (Exists!2426 lambda!285953))))

(declare-datatypes ((tuple2!64888 0))(
  ( (tuple2!64889 (_1!35747 List!62036) (_2!35747 List!62036)) )
))
(declare-datatypes ((Option!15356 0))(
  ( (None!15355) (Some!15355 (v!51384 tuple2!64888)) )
))
(declare-fun isDefined!12059 (Option!15356) Bool)

(declare-fun findConcatSeparation!1770 (Regex!15245 Regex!15245 List!62036 List!62036 List!62036) Option!15356)

(assert (=> b!5437204 (= lt!2217960 (isDefined!12059 (findConcatSeparation!1770 (regOne!31002 r!7292) (regTwo!31002 r!7292) Nil!61912 s!2326 s!2326)))))

(declare-fun lt!2217958 () Unit!154522)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1534 (Regex!15245 Regex!15245 List!62036) Unit!154522)

(assert (=> b!5437204 (= lt!2217958 (lemmaFindConcatSeparationEquivalentToExists!1534 (regOne!31002 r!7292) (regTwo!31002 r!7292) s!2326))))

(declare-fun b!5437205 () Bool)

(declare-fun tp!1499250 () Bool)

(declare-fun tp!1499245 () Bool)

(assert (=> b!5437205 (= e!3368553 (and tp!1499250 tp!1499245))))

(declare-fun b!5437206 () Bool)

(declare-fun res!2314735 () Bool)

(assert (=> b!5437206 (=> res!2314735 e!3368554)))

(declare-fun isEmpty!33903 (List!62034) Bool)

(assert (=> b!5437206 (= res!2314735 (isEmpty!33903 (t!375259 (exprs!5129 (h!68359 zl!343)))))))

(declare-fun b!5437207 () Bool)

(declare-fun res!2314737 () Bool)

(assert (=> b!5437207 (=> res!2314737 e!3368546)))

(assert (=> b!5437207 (= res!2314737 (or ((_ is EmptyExpr!15245) r!7292) ((_ is EmptyLang!15245) r!7292) ((_ is ElementMatch!15245) r!7292) ((_ is Union!15245) r!7292) (not ((_ is Concat!24090) r!7292))))))

(declare-fun b!5437208 () Bool)

(declare-fun Unit!154525 () Unit!154522)

(assert (=> b!5437208 (= e!3368549 Unit!154525)))

(declare-fun lt!2217957 () Unit!154522)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!482 ((InoxSet Context!9258) (InoxSet Context!9258) List!62036) Unit!154522)

(assert (=> b!5437208 (= lt!2217957 (lemmaZipperConcatMatchesSameAsBothZippers!482 lt!2217959 lt!2217962 (t!375261 s!2326)))))

(declare-fun res!2314731 () Bool)

(assert (=> b!5437208 (= res!2314731 (matchZipper!1489 lt!2217959 (t!375261 s!2326)))))

(assert (=> b!5437208 (=> res!2314731 e!3368552)))

(assert (=> b!5437208 (= (matchZipper!1489 ((_ map or) lt!2217959 lt!2217962) (t!375261 s!2326)) e!3368552)))

(declare-fun setIsEmpty!35511 () Bool)

(assert (=> setIsEmpty!35511 setRes!35511))

(declare-fun b!5437209 () Bool)

(declare-fun res!2314734 () Bool)

(assert (=> b!5437209 (=> (not res!2314734) (not e!3368545))))

(declare-fun unfocusZipper!987 (List!62035) Regex!15245)

(assert (=> b!5437209 (= res!2314734 (= r!7292 (unfocusZipper!987 zl!343)))))

(assert (= (and start!570274 res!2314732) b!5437190))

(assert (= (and b!5437190 res!2314729) b!5437209))

(assert (= (and b!5437209 res!2314734) b!5437189))

(assert (= (and b!5437189 (not res!2314728)) b!5437195))

(assert (= (and b!5437195 (not res!2314733)) b!5437197))

(assert (= (and b!5437197 (not res!2314727)) b!5437188))

(assert (= (and b!5437188 (not res!2314736)) b!5437196))

(assert (= (and b!5437196 (not res!2314726)) b!5437207))

(assert (= (and b!5437207 (not res!2314737)) b!5437204))

(assert (= (and b!5437204 (not res!2314730)) b!5437206))

(assert (= (and b!5437206 (not res!2314735)) b!5437192))

(assert (= (and b!5437192 c!948748) b!5437208))

(assert (= (and b!5437192 (not c!948748)) b!5437198))

(assert (= (and b!5437208 (not res!2314731)) b!5437194))

(assert (= (and start!570274 ((_ is ElementMatch!15245) r!7292)) b!5437191))

(assert (= (and start!570274 ((_ is Concat!24090) r!7292)) b!5437205))

(assert (= (and start!570274 ((_ is Star!15245) r!7292)) b!5437193))

(assert (= (and start!570274 ((_ is Union!15245) r!7292)) b!5437201))

(assert (= (and start!570274 condSetEmpty!35511) setIsEmpty!35511))

(assert (= (and start!570274 (not condSetEmpty!35511)) setNonEmpty!35511))

(assert (= setNonEmpty!35511 b!5437203))

(assert (= b!5437199 b!5437200))

(assert (= (and start!570274 ((_ is Cons!61911) zl!343)) b!5437199))

(assert (= (and start!570274 ((_ is Cons!61912) s!2326)) b!5437202))

(declare-fun m!6459208 () Bool)

(assert (=> b!5437196 m!6459208))

(assert (=> b!5437196 m!6459208))

(declare-fun m!6459210 () Bool)

(assert (=> b!5437196 m!6459210))

(declare-fun m!6459212 () Bool)

(assert (=> b!5437189 m!6459212))

(declare-fun m!6459214 () Bool)

(assert (=> b!5437189 m!6459214))

(declare-fun m!6459216 () Bool)

(assert (=> b!5437189 m!6459216))

(declare-fun m!6459218 () Bool)

(assert (=> start!570274 m!6459218))

(declare-fun m!6459220 () Bool)

(assert (=> setNonEmpty!35511 m!6459220))

(declare-fun m!6459222 () Bool)

(assert (=> b!5437206 m!6459222))

(declare-fun m!6459224 () Bool)

(assert (=> b!5437204 m!6459224))

(declare-fun m!6459226 () Bool)

(assert (=> b!5437204 m!6459226))

(declare-fun m!6459228 () Bool)

(assert (=> b!5437204 m!6459228))

(declare-fun m!6459230 () Bool)

(assert (=> b!5437204 m!6459230))

(assert (=> b!5437204 m!6459226))

(declare-fun m!6459232 () Bool)

(assert (=> b!5437204 m!6459232))

(assert (=> b!5437204 m!6459228))

(declare-fun m!6459234 () Bool)

(assert (=> b!5437204 m!6459234))

(declare-fun m!6459236 () Bool)

(assert (=> b!5437190 m!6459236))

(declare-fun m!6459238 () Bool)

(assert (=> b!5437194 m!6459238))

(declare-fun m!6459240 () Bool)

(assert (=> b!5437192 m!6459240))

(declare-fun m!6459242 () Bool)

(assert (=> b!5437192 m!6459242))

(declare-fun m!6459244 () Bool)

(assert (=> b!5437192 m!6459244))

(declare-fun m!6459246 () Bool)

(assert (=> b!5437192 m!6459246))

(declare-fun m!6459248 () Bool)

(assert (=> b!5437192 m!6459248))

(declare-fun m!6459250 () Bool)

(assert (=> b!5437192 m!6459250))

(declare-fun m!6459252 () Bool)

(assert (=> b!5437192 m!6459252))

(declare-fun m!6459254 () Bool)

(assert (=> b!5437199 m!6459254))

(declare-fun m!6459256 () Bool)

(assert (=> b!5437208 m!6459256))

(declare-fun m!6459258 () Bool)

(assert (=> b!5437208 m!6459258))

(declare-fun m!6459260 () Bool)

(assert (=> b!5437208 m!6459260))

(declare-fun m!6459262 () Bool)

(assert (=> b!5437195 m!6459262))

(declare-fun m!6459264 () Bool)

(assert (=> b!5437197 m!6459264))

(declare-fun m!6459266 () Bool)

(assert (=> b!5437209 m!6459266))

(check-sat (not b!5437206) (not start!570274) (not b!5437189) (not b!5437209) tp_is_empty!39743 (not b!5437200) (not b!5437197) (not b!5437195) (not b!5437205) (not b!5437192) (not setNonEmpty!35511) (not b!5437194) (not b!5437201) (not b!5437196) (not b!5437203) (not b!5437202) (not b!5437190) (not b!5437199) (not b!5437208) (not b!5437193) (not b!5437204))
(check-sat)
