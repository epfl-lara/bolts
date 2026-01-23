; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543032 () Bool)

(assert start!543032)

(declare-fun b!5133092 () Bool)

(assert (=> b!5133092 true))

(declare-fun bs!1198975 () Bool)

(declare-fun b!5133086 () Bool)

(declare-fun b!5133091 () Bool)

(assert (= bs!1198975 (and b!5133086 b!5133091)))

(declare-fun lambda!255263 () Int)

(declare-fun lambda!255262 () Int)

(assert (=> bs!1198975 (not (= lambda!255263 lambda!255262))))

(declare-fun bs!1198976 () Bool)

(declare-fun b!5133087 () Bool)

(assert (= bs!1198976 (and b!5133087 b!5133091)))

(declare-fun lambda!255264 () Int)

(assert (=> bs!1198976 (not (= lambda!255264 lambda!255262))))

(declare-fun bs!1198977 () Bool)

(assert (= bs!1198977 (and b!5133087 b!5133086)))

(assert (=> bs!1198977 (not (= lambda!255264 lambda!255263))))

(assert (=> b!5133087 true))

(assert (=> b!5133087 true))

(declare-fun setIsEmpty!31230 () Bool)

(declare-fun setRes!31230 () Bool)

(assert (=> setIsEmpty!31230 setRes!31230))

(declare-fun b!5133079 () Bool)

(declare-fun e!3201596 () Bool)

(declare-fun e!3201593 () Bool)

(assert (=> b!5133079 (= e!3201596 e!3201593)))

(declare-fun res!2186351 () Bool)

(assert (=> b!5133079 (=> res!2186351 e!3201593)))

(declare-datatypes ((C!29004 0))(
  ( (C!29005 (val!24154 Int)) )
))
(declare-datatypes ((Regex!14369 0))(
  ( (ElementMatch!14369 (c!883396 C!29004)) (Concat!23214 (regOne!29250 Regex!14369) (regTwo!29250 Regex!14369)) (EmptyExpr!14369) (Star!14369 (reg!14698 Regex!14369)) (EmptyLang!14369) (Union!14369 (regOne!29251 Regex!14369) (regTwo!29251 Regex!14369)) )
))
(declare-datatypes ((List!59683 0))(
  ( (Nil!59559) (Cons!59559 (h!66007 Regex!14369) (t!372710 List!59683)) )
))
(declare-datatypes ((Context!7506 0))(
  ( (Context!7507 (exprs!4253 List!59683)) )
))
(declare-fun lt!2118284 () Context!7506)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1054 () (InoxSet Context!7506))

(assert (=> b!5133079 (= res!2186351 (not (select z!1054 lt!2118284)))))

(declare-fun getWitness!824 ((InoxSet Context!7506) Int) Context!7506)

(assert (=> b!5133079 (= lt!2118284 (getWitness!824 z!1054 lambda!255264))))

(declare-fun b!5133080 () Bool)

(declare-fun e!3201590 () Bool)

(assert (=> b!5133080 (= e!3201590 false)))

(declare-fun lt!2118287 () Context!7506)

(declare-datatypes ((Unit!150875 0))(
  ( (Unit!150876) )
))
(declare-fun lt!2118282 () Unit!150875)

(declare-fun lt!2118291 () (InoxSet Context!7506))

(declare-datatypes ((List!59684 0))(
  ( (Nil!59560) (Cons!59560 (h!66008 Context!7506) (t!372711 List!59684)) )
))
(declare-fun forallContained!4627 (List!59684 Int Context!7506) Unit!150875)

(declare-fun toList!8354 ((InoxSet Context!7506)) List!59684)

(assert (=> b!5133080 (= lt!2118282 (forallContained!4627 (toList!8354 lt!2118291) lambda!255262 lt!2118287))))

(declare-fun b!5133081 () Bool)

(declare-fun res!2186347 () Bool)

(declare-fun e!3201598 () Bool)

(assert (=> b!5133081 (=> (not res!2186347) (not e!3201598))))

(declare-fun forall!13821 ((InoxSet Context!7506) Int) Bool)

(assert (=> b!5133081 (= res!2186347 (forall!13821 z!1054 lambda!255262))))

(declare-fun b!5133082 () Bool)

(declare-fun e!3201599 () Bool)

(declare-fun tp!1431908 () Bool)

(assert (=> b!5133082 (= e!3201599 tp!1431908)))

(declare-fun b!5133083 () Bool)

(declare-fun e!3201592 () Bool)

(declare-fun e!3201600 () Bool)

(assert (=> b!5133083 (= e!3201592 e!3201600)))

(declare-fun res!2186342 () Bool)

(assert (=> b!5133083 (=> res!2186342 e!3201600)))

(declare-fun lt!2118286 () (InoxSet Context!7506))

(assert (=> b!5133083 (= res!2186342 (not (select lt!2118286 lt!2118287)))))

(declare-fun lt!2118290 () List!59684)

(declare-fun getWitness!825 (List!59684 Int) Context!7506)

(assert (=> b!5133083 (= lt!2118287 (getWitness!825 lt!2118290 lambda!255263))))

(declare-fun b!5133084 () Bool)

(declare-fun res!2186349 () Bool)

(assert (=> b!5133084 (=> (not res!2186349) (not e!3201598))))

(assert (=> b!5133084 (= res!2186349 (not (forall!13821 lt!2118286 lambda!255262)))))

(declare-fun b!5133085 () Bool)

(declare-fun e!3201595 () Bool)

(assert (=> b!5133085 (= e!3201593 e!3201595)))

(declare-fun res!2186341 () Bool)

(assert (=> b!5133085 (=> res!2186341 e!3201595)))

(assert (=> b!5133085 (= res!2186341 (not (select lt!2118291 lt!2118287)))))

(declare-fun a!1233 () C!29004)

(declare-fun derivationStepZipperUp!73 (Context!7506 C!29004) (InoxSet Context!7506))

(assert (=> b!5133085 (= lt!2118291 (derivationStepZipperUp!73 lt!2118284 a!1233))))

(assert (=> b!5133086 (= e!3201598 (not e!3201592))))

(declare-fun res!2186340 () Bool)

(assert (=> b!5133086 (=> res!2186340 e!3201592)))

(declare-fun exists!1700 ((InoxSet Context!7506) Int) Bool)

(assert (=> b!5133086 (= res!2186340 (not (exists!1700 lt!2118286 lambda!255263)))))

(declare-fun exists!1701 (List!59684 Int) Bool)

(assert (=> b!5133086 (exists!1701 lt!2118290 lambda!255263)))

(declare-fun lt!2118288 () Unit!150875)

(declare-fun lemmaNotForallThenExists!402 (List!59684 Int) Unit!150875)

(assert (=> b!5133086 (= lt!2118288 (lemmaNotForallThenExists!402 lt!2118290 lambda!255262))))

(assert (=> b!5133086 (= lt!2118290 (toList!8354 lt!2118286))))

(declare-fun b!5133088 () Bool)

(declare-fun e!3201591 () Bool)

(assert (=> b!5133088 (= e!3201591 e!3201590)))

(declare-fun res!2186352 () Bool)

(assert (=> b!5133088 (=> res!2186352 e!3201590)))

(declare-fun lostCauseZipper!1213 ((InoxSet Context!7506)) Bool)

(assert (=> b!5133088 (= res!2186352 (not (lostCauseZipper!1213 lt!2118291)))))

(assert (=> b!5133088 (lostCauseZipper!1213 (derivationStepZipperUp!73 lt!2118284 a!1233))))

(declare-fun lt!2118285 () Unit!150875)

(declare-fun lemmaLostCauseFixPointDerivUp!6 (Context!7506 C!29004) Unit!150875)

(assert (=> b!5133088 (= lt!2118285 (lemmaLostCauseFixPointDerivUp!6 lt!2118284 a!1233))))

(declare-fun setElem!31230 () Context!7506)

(declare-fun setNonEmpty!31230 () Bool)

(declare-fun tp!1431909 () Bool)

(declare-fun inv!79103 (Context!7506) Bool)

(assert (=> setNonEmpty!31230 (= setRes!31230 (and tp!1431909 (inv!79103 setElem!31230) e!3201599))))

(declare-fun setRest!31230 () (InoxSet Context!7506))

(assert (=> setNonEmpty!31230 (= z!1054 ((_ map or) (store ((as const (Array Context!7506 Bool)) false) setElem!31230 true) setRest!31230))))

(declare-fun b!5133089 () Bool)

(assert (=> b!5133089 (= e!3201595 e!3201591)))

(declare-fun res!2186345 () Bool)

(assert (=> b!5133089 (=> res!2186345 e!3201591)))

(declare-fun lostCause!1311 (Context!7506) Bool)

(assert (=> b!5133089 (= res!2186345 (not (lostCause!1311 lt!2118284)))))

(declare-fun lt!2118289 () Unit!150875)

(assert (=> b!5133089 (= lt!2118289 (forallContained!4627 (toList!8354 z!1054) lambda!255262 lt!2118284))))

(assert (=> b!5133087 (= e!3201600 e!3201596)))

(declare-fun res!2186344 () Bool)

(assert (=> b!5133087 (=> res!2186344 e!3201596)))

(assert (=> b!5133087 (= res!2186344 (not (exists!1700 z!1054 lambda!255264)))))

(assert (=> b!5133087 (exists!1700 z!1054 lambda!255264)))

(declare-fun lt!2118281 () Unit!150875)

(declare-fun lambda!255261 () Int)

(declare-fun lemmaFlatMapPost!20 ((InoxSet Context!7506) Int Context!7506) Unit!150875)

(assert (=> b!5133087 (= lt!2118281 (lemmaFlatMapPost!20 z!1054 lambda!255261 lt!2118287))))

(declare-fun res!2186346 () Bool)

(declare-fun e!3201594 () Bool)

(assert (=> start!543032 (=> (not res!2186346) (not e!3201594))))

(assert (=> start!543032 (= res!2186346 (lostCauseZipper!1213 z!1054))))

(assert (=> start!543032 e!3201594))

(declare-fun condSetEmpty!31230 () Bool)

(assert (=> start!543032 (= condSetEmpty!31230 (= z!1054 ((as const (Array Context!7506 Bool)) false)))))

(assert (=> start!543032 setRes!31230))

(declare-fun tp_is_empty!37911 () Bool)

(assert (=> start!543032 tp_is_empty!37911))

(declare-fun b!5133090 () Bool)

(declare-fun res!2186350 () Bool)

(assert (=> b!5133090 (=> res!2186350 e!3201600)))

(assert (=> b!5133090 (= res!2186350 (lostCause!1311 lt!2118287))))

(declare-fun e!3201597 () Bool)

(assert (=> b!5133091 (= e!3201597 e!3201598)))

(declare-fun res!2186343 () Bool)

(assert (=> b!5133091 (=> (not res!2186343) (not e!3201598))))

(declare-fun lt!2118283 () Bool)

(assert (=> b!5133091 (= res!2186343 (= lt!2118283 (forall!13821 lt!2118286 lambda!255262)))))

(assert (=> b!5133091 (= lt!2118283 (lostCauseZipper!1213 lt!2118286))))

(assert (=> b!5133092 (= e!3201594 e!3201597)))

(declare-fun res!2186339 () Bool)

(assert (=> b!5133092 (=> (not res!2186339) (not e!3201597))))

(declare-fun flatMap!420 ((InoxSet Context!7506) Int) (InoxSet Context!7506))

(assert (=> b!5133092 (= res!2186339 (= lt!2118286 (flatMap!420 z!1054 lambda!255261)))))

(declare-fun derivationStepZipper!924 ((InoxSet Context!7506) C!29004) (InoxSet Context!7506))

(assert (=> b!5133092 (= lt!2118286 (derivationStepZipper!924 z!1054 a!1233))))

(declare-fun b!5133093 () Bool)

(declare-fun res!2186348 () Bool)

(assert (=> b!5133093 (=> (not res!2186348) (not e!3201598))))

(assert (=> b!5133093 (= res!2186348 (not lt!2118283))))

(assert (= (and start!543032 res!2186346) b!5133092))

(assert (= (and b!5133092 res!2186339) b!5133091))

(assert (= (and b!5133091 res!2186343) b!5133081))

(assert (= (and b!5133081 res!2186347) b!5133093))

(assert (= (and b!5133093 res!2186348) b!5133084))

(assert (= (and b!5133084 res!2186349) b!5133086))

(assert (= (and b!5133086 (not res!2186340)) b!5133083))

(assert (= (and b!5133083 (not res!2186342)) b!5133090))

(assert (= (and b!5133090 (not res!2186350)) b!5133087))

(assert (= (and b!5133087 (not res!2186344)) b!5133079))

(assert (= (and b!5133079 (not res!2186351)) b!5133085))

(assert (= (and b!5133085 (not res!2186341)) b!5133089))

(assert (= (and b!5133089 (not res!2186345)) b!5133088))

(assert (= (and b!5133088 (not res!2186352)) b!5133080))

(assert (= (and start!543032 condSetEmpty!31230) setIsEmpty!31230))

(assert (= (and start!543032 (not condSetEmpty!31230)) setNonEmpty!31230))

(assert (= setNonEmpty!31230 b!5133082))

(declare-fun m!6199038 () Bool)

(assert (=> b!5133081 m!6199038))

(declare-fun m!6199040 () Bool)

(assert (=> b!5133090 m!6199040))

(declare-fun m!6199042 () Bool)

(assert (=> setNonEmpty!31230 m!6199042))

(declare-fun m!6199044 () Bool)

(assert (=> b!5133080 m!6199044))

(assert (=> b!5133080 m!6199044))

(declare-fun m!6199046 () Bool)

(assert (=> b!5133080 m!6199046))

(declare-fun m!6199048 () Bool)

(assert (=> b!5133089 m!6199048))

(declare-fun m!6199050 () Bool)

(assert (=> b!5133089 m!6199050))

(assert (=> b!5133089 m!6199050))

(declare-fun m!6199052 () Bool)

(assert (=> b!5133089 m!6199052))

(declare-fun m!6199054 () Bool)

(assert (=> b!5133083 m!6199054))

(declare-fun m!6199056 () Bool)

(assert (=> b!5133083 m!6199056))

(declare-fun m!6199058 () Bool)

(assert (=> start!543032 m!6199058))

(declare-fun m!6199060 () Bool)

(assert (=> b!5133086 m!6199060))

(declare-fun m!6199062 () Bool)

(assert (=> b!5133086 m!6199062))

(declare-fun m!6199064 () Bool)

(assert (=> b!5133086 m!6199064))

(declare-fun m!6199066 () Bool)

(assert (=> b!5133086 m!6199066))

(declare-fun m!6199068 () Bool)

(assert (=> b!5133088 m!6199068))

(declare-fun m!6199070 () Bool)

(assert (=> b!5133088 m!6199070))

(assert (=> b!5133088 m!6199070))

(declare-fun m!6199072 () Bool)

(assert (=> b!5133088 m!6199072))

(declare-fun m!6199074 () Bool)

(assert (=> b!5133088 m!6199074))

(declare-fun m!6199076 () Bool)

(assert (=> b!5133084 m!6199076))

(declare-fun m!6199078 () Bool)

(assert (=> b!5133085 m!6199078))

(assert (=> b!5133085 m!6199070))

(declare-fun m!6199080 () Bool)

(assert (=> b!5133087 m!6199080))

(assert (=> b!5133087 m!6199080))

(declare-fun m!6199082 () Bool)

(assert (=> b!5133087 m!6199082))

(declare-fun m!6199084 () Bool)

(assert (=> b!5133079 m!6199084))

(declare-fun m!6199086 () Bool)

(assert (=> b!5133079 m!6199086))

(assert (=> b!5133091 m!6199076))

(declare-fun m!6199088 () Bool)

(assert (=> b!5133091 m!6199088))

(declare-fun m!6199090 () Bool)

(assert (=> b!5133092 m!6199090))

(declare-fun m!6199092 () Bool)

(assert (=> b!5133092 m!6199092))

(check-sat (not b!5133089) (not b!5133082) (not start!543032) (not b!5133091) (not setNonEmpty!31230) (not b!5133084) (not b!5133080) (not b!5133081) (not b!5133083) (not b!5133086) (not b!5133085) tp_is_empty!37911 (not b!5133090) (not b!5133088) (not b!5133087) (not b!5133079) (not b!5133092))
(check-sat)
(get-model)

(declare-fun d!1660996 () Bool)

(declare-fun lambda!255294 () Int)

(declare-fun exists!1703 (List!59683 Int) Bool)

(assert (=> d!1660996 (= (lostCause!1311 lt!2118287) (exists!1703 (exprs!4253 lt!2118287) lambda!255294))))

(declare-fun bs!1199011 () Bool)

(assert (= bs!1199011 d!1660996))

(declare-fun m!6199134 () Bool)

(assert (=> bs!1199011 m!6199134))

(assert (=> b!5133090 d!1660996))

(declare-fun d!1661008 () Bool)

(declare-fun dynLambda!23716 (Int Context!7506) Bool)

(assert (=> d!1661008 (dynLambda!23716 lambda!255262 lt!2118287)))

(declare-fun lt!2118330 () Unit!150875)

(declare-fun choose!37945 (List!59684 Int Context!7506) Unit!150875)

(assert (=> d!1661008 (= lt!2118330 (choose!37945 (toList!8354 lt!2118291) lambda!255262 lt!2118287))))

(declare-fun e!3201624 () Bool)

(assert (=> d!1661008 e!3201624))

(declare-fun res!2186361 () Bool)

(assert (=> d!1661008 (=> (not res!2186361) (not e!3201624))))

(declare-fun forall!13824 (List!59684 Int) Bool)

(assert (=> d!1661008 (= res!2186361 (forall!13824 (toList!8354 lt!2118291) lambda!255262))))

(assert (=> d!1661008 (= (forallContained!4627 (toList!8354 lt!2118291) lambda!255262 lt!2118287) lt!2118330)))

(declare-fun b!5133128 () Bool)

(declare-fun contains!19646 (List!59684 Context!7506) Bool)

(assert (=> b!5133128 (= e!3201624 (contains!19646 (toList!8354 lt!2118291) lt!2118287))))

(assert (= (and d!1661008 res!2186361) b!5133128))

(declare-fun b_lambda!199949 () Bool)

(assert (=> (not b_lambda!199949) (not d!1661008)))

(declare-fun m!6199142 () Bool)

(assert (=> d!1661008 m!6199142))

(assert (=> d!1661008 m!6199044))

(declare-fun m!6199144 () Bool)

(assert (=> d!1661008 m!6199144))

(assert (=> d!1661008 m!6199044))

(declare-fun m!6199146 () Bool)

(assert (=> d!1661008 m!6199146))

(assert (=> b!5133128 m!6199044))

(declare-fun m!6199148 () Bool)

(assert (=> b!5133128 m!6199148))

(assert (=> b!5133080 d!1661008))

(declare-fun d!1661012 () Bool)

(declare-fun e!3201634 () Bool)

(assert (=> d!1661012 e!3201634))

(declare-fun res!2186370 () Bool)

(assert (=> d!1661012 (=> (not res!2186370) (not e!3201634))))

(declare-fun lt!2118347 () List!59684)

(declare-fun noDuplicate!1102 (List!59684) Bool)

(assert (=> d!1661012 (= res!2186370 (noDuplicate!1102 lt!2118347))))

(declare-fun choose!37946 ((InoxSet Context!7506)) List!59684)

(assert (=> d!1661012 (= lt!2118347 (choose!37946 lt!2118291))))

(assert (=> d!1661012 (= (toList!8354 lt!2118291) lt!2118347)))

(declare-fun b!5133139 () Bool)

(declare-fun content!10579 (List!59684) (InoxSet Context!7506))

(assert (=> b!5133139 (= e!3201634 (= (content!10579 lt!2118347) lt!2118291))))

(assert (= (and d!1661012 res!2186370) b!5133139))

(declare-fun m!6199180 () Bool)

(assert (=> d!1661012 m!6199180))

(declare-fun m!6199182 () Bool)

(assert (=> d!1661012 m!6199182))

(declare-fun m!6199184 () Bool)

(assert (=> b!5133139 m!6199184))

(assert (=> b!5133080 d!1661012))

(declare-fun d!1661024 () Bool)

(declare-fun lt!2118358 () Bool)

(assert (=> d!1661024 (= lt!2118358 (forall!13824 (toList!8354 lt!2118286) lambda!255262))))

(declare-fun choose!37947 ((InoxSet Context!7506) Int) Bool)

(assert (=> d!1661024 (= lt!2118358 (choose!37947 lt!2118286 lambda!255262))))

(assert (=> d!1661024 (= (forall!13821 lt!2118286 lambda!255262) lt!2118358)))

(declare-fun bs!1199077 () Bool)

(assert (= bs!1199077 d!1661024))

(assert (=> bs!1199077 m!6199066))

(assert (=> bs!1199077 m!6199066))

(declare-fun m!6199198 () Bool)

(assert (=> bs!1199077 m!6199198))

(declare-fun m!6199200 () Bool)

(assert (=> bs!1199077 m!6199200))

(assert (=> b!5133091 d!1661024))

(declare-fun bs!1199147 () Bool)

(declare-fun d!1661028 () Bool)

(assert (= bs!1199147 (and d!1661028 b!5133091)))

(declare-fun lambda!255323 () Int)

(assert (=> bs!1199147 (= lambda!255323 lambda!255262)))

(declare-fun bs!1199148 () Bool)

(assert (= bs!1199148 (and d!1661028 b!5133086)))

(assert (=> bs!1199148 (not (= lambda!255323 lambda!255263))))

(declare-fun bs!1199149 () Bool)

(assert (= bs!1199149 (and d!1661028 b!5133087)))

(assert (=> bs!1199149 (not (= lambda!255323 lambda!255264))))

(declare-fun bs!1199150 () Bool)

(declare-fun b!5133166 () Bool)

(assert (= bs!1199150 (and b!5133166 b!5133091)))

(declare-fun lambda!255324 () Int)

(assert (=> bs!1199150 (not (= lambda!255324 lambda!255262))))

(declare-fun bs!1199151 () Bool)

(assert (= bs!1199151 (and b!5133166 b!5133086)))

(assert (=> bs!1199151 (= lambda!255324 lambda!255263)))

(declare-fun bs!1199152 () Bool)

(assert (= bs!1199152 (and b!5133166 b!5133087)))

(assert (=> bs!1199152 (not (= lambda!255324 lambda!255264))))

(declare-fun bs!1199153 () Bool)

(assert (= bs!1199153 (and b!5133166 d!1661028)))

(assert (=> bs!1199153 (not (= lambda!255324 lambda!255323))))

(declare-fun bs!1199154 () Bool)

(declare-fun b!5133167 () Bool)

(assert (= bs!1199154 (and b!5133167 b!5133087)))

(declare-fun lambda!255325 () Int)

(assert (=> bs!1199154 (not (= lambda!255325 lambda!255264))))

(declare-fun bs!1199155 () Bool)

(assert (= bs!1199155 (and b!5133167 b!5133166)))

(assert (=> bs!1199155 (= lambda!255325 lambda!255324)))

(declare-fun bs!1199156 () Bool)

(assert (= bs!1199156 (and b!5133167 d!1661028)))

(assert (=> bs!1199156 (not (= lambda!255325 lambda!255323))))

(declare-fun bs!1199157 () Bool)

(assert (= bs!1199157 (and b!5133167 b!5133086)))

(assert (=> bs!1199157 (= lambda!255325 lambda!255263)))

(declare-fun bs!1199158 () Bool)

(assert (= bs!1199158 (and b!5133167 b!5133091)))

(assert (=> bs!1199158 (not (= lambda!255325 lambda!255262))))

(declare-fun lt!2118402 () Bool)

(declare-datatypes ((List!59686 0))(
  ( (Nil!59562) (Cons!59562 (h!66010 C!29004) (t!372713 List!59686)) )
))
(declare-datatypes ((Option!14749 0))(
  ( (None!14748) (Some!14748 (v!50777 List!59686)) )
))
(declare-fun isEmpty!32010 (Option!14749) Bool)

(declare-fun getLanguageWitness!886 ((InoxSet Context!7506)) Option!14749)

(assert (=> d!1661028 (= lt!2118402 (isEmpty!32010 (getLanguageWitness!886 lt!2118286)))))

(assert (=> d!1661028 (= lt!2118402 (forall!13821 lt!2118286 lambda!255323))))

(declare-fun lt!2118401 () Unit!150875)

(declare-fun e!3201654 () Unit!150875)

(assert (=> d!1661028 (= lt!2118401 e!3201654)))

(declare-fun c!883433 () Bool)

(assert (=> d!1661028 (= c!883433 (not (forall!13821 lt!2118286 lambda!255323)))))

(assert (=> d!1661028 (= (lostCauseZipper!1213 lt!2118286) lt!2118402)))

(declare-fun lt!2118405 () List!59684)

(declare-fun bm!357311 () Bool)

(declare-fun lt!2118403 () List!59684)

(declare-fun call!357316 () Bool)

(assert (=> bm!357311 (= call!357316 (exists!1701 (ite c!883433 lt!2118403 lt!2118405) (ite c!883433 lambda!255324 lambda!255325)))))

(declare-fun Unit!150885 () Unit!150875)

(assert (=> b!5133166 (= e!3201654 Unit!150885)))

(declare-fun call!357315 () List!59684)

(assert (=> b!5133166 (= lt!2118403 call!357315)))

(declare-fun lt!2118404 () Unit!150875)

(assert (=> b!5133166 (= lt!2118404 (lemmaNotForallThenExists!402 lt!2118403 lambda!255323))))

(assert (=> b!5133166 call!357316))

(declare-fun lt!2118400 () Unit!150875)

(assert (=> b!5133166 (= lt!2118400 lt!2118404)))

(declare-fun Unit!150886 () Unit!150875)

(assert (=> b!5133167 (= e!3201654 Unit!150886)))

(assert (=> b!5133167 (= lt!2118405 call!357315)))

(declare-fun lt!2118398 () Unit!150875)

(declare-fun lemmaForallThenNotExists!371 (List!59684 Int) Unit!150875)

(assert (=> b!5133167 (= lt!2118398 (lemmaForallThenNotExists!371 lt!2118405 lambda!255323))))

(assert (=> b!5133167 (not call!357316)))

(declare-fun lt!2118399 () Unit!150875)

(assert (=> b!5133167 (= lt!2118399 lt!2118398)))

(declare-fun bm!357310 () Bool)

(assert (=> bm!357310 (= call!357315 (toList!8354 lt!2118286))))

(assert (= (and d!1661028 c!883433) b!5133166))

(assert (= (and d!1661028 (not c!883433)) b!5133167))

(assert (= (or b!5133166 b!5133167) bm!357310))

(assert (= (or b!5133166 b!5133167) bm!357311))

(declare-fun m!6199270 () Bool)

(assert (=> b!5133167 m!6199270))

(declare-fun m!6199272 () Bool)

(assert (=> d!1661028 m!6199272))

(assert (=> d!1661028 m!6199272))

(declare-fun m!6199274 () Bool)

(assert (=> d!1661028 m!6199274))

(declare-fun m!6199276 () Bool)

(assert (=> d!1661028 m!6199276))

(assert (=> d!1661028 m!6199276))

(declare-fun m!6199278 () Bool)

(assert (=> b!5133166 m!6199278))

(assert (=> bm!357310 m!6199066))

(declare-fun m!6199280 () Bool)

(assert (=> bm!357311 m!6199280))

(assert (=> b!5133091 d!1661028))

(declare-fun d!1661056 () Bool)

(declare-fun lt!2118408 () Bool)

(assert (=> d!1661056 (= lt!2118408 (forall!13824 (toList!8354 z!1054) lambda!255262))))

(assert (=> d!1661056 (= lt!2118408 (choose!37947 z!1054 lambda!255262))))

(assert (=> d!1661056 (= (forall!13821 z!1054 lambda!255262) lt!2118408)))

(declare-fun bs!1199164 () Bool)

(assert (= bs!1199164 d!1661056))

(assert (=> bs!1199164 m!6199050))

(assert (=> bs!1199164 m!6199050))

(declare-fun m!6199282 () Bool)

(assert (=> bs!1199164 m!6199282))

(declare-fun m!6199284 () Bool)

(assert (=> bs!1199164 m!6199284))

(assert (=> b!5133081 d!1661056))

(declare-fun bs!1199165 () Bool)

(declare-fun d!1661058 () Bool)

(assert (= bs!1199165 (and d!1661058 b!5133087)))

(declare-fun lambda!255326 () Int)

(assert (=> bs!1199165 (not (= lambda!255326 lambda!255264))))

(declare-fun bs!1199166 () Bool)

(assert (= bs!1199166 (and d!1661058 b!5133167)))

(assert (=> bs!1199166 (not (= lambda!255326 lambda!255325))))

(declare-fun bs!1199167 () Bool)

(assert (= bs!1199167 (and d!1661058 b!5133166)))

(assert (=> bs!1199167 (not (= lambda!255326 lambda!255324))))

(declare-fun bs!1199168 () Bool)

(assert (= bs!1199168 (and d!1661058 d!1661028)))

(assert (=> bs!1199168 (= lambda!255326 lambda!255323)))

(declare-fun bs!1199169 () Bool)

(assert (= bs!1199169 (and d!1661058 b!5133086)))

(assert (=> bs!1199169 (not (= lambda!255326 lambda!255263))))

(declare-fun bs!1199170 () Bool)

(assert (= bs!1199170 (and d!1661058 b!5133091)))

(assert (=> bs!1199170 (= lambda!255326 lambda!255262)))

(declare-fun bs!1199171 () Bool)

(declare-fun b!5133184 () Bool)

(assert (= bs!1199171 (and b!5133184 b!5133087)))

(declare-fun lambda!255327 () Int)

(assert (=> bs!1199171 (not (= lambda!255327 lambda!255264))))

(declare-fun bs!1199172 () Bool)

(assert (= bs!1199172 (and b!5133184 b!5133167)))

(assert (=> bs!1199172 (= lambda!255327 lambda!255325)))

(declare-fun bs!1199173 () Bool)

(assert (= bs!1199173 (and b!5133184 b!5133166)))

(assert (=> bs!1199173 (= lambda!255327 lambda!255324)))

(declare-fun bs!1199174 () Bool)

(assert (= bs!1199174 (and b!5133184 d!1661028)))

(assert (=> bs!1199174 (not (= lambda!255327 lambda!255323))))

(declare-fun bs!1199175 () Bool)

(assert (= bs!1199175 (and b!5133184 b!5133086)))

(assert (=> bs!1199175 (= lambda!255327 lambda!255263)))

(declare-fun bs!1199176 () Bool)

(assert (= bs!1199176 (and b!5133184 d!1661058)))

(assert (=> bs!1199176 (not (= lambda!255327 lambda!255326))))

(declare-fun bs!1199177 () Bool)

(assert (= bs!1199177 (and b!5133184 b!5133091)))

(assert (=> bs!1199177 (not (= lambda!255327 lambda!255262))))

(declare-fun bs!1199178 () Bool)

(declare-fun b!5133185 () Bool)

(assert (= bs!1199178 (and b!5133185 b!5133087)))

(declare-fun lambda!255328 () Int)

(assert (=> bs!1199178 (not (= lambda!255328 lambda!255264))))

(declare-fun bs!1199179 () Bool)

(assert (= bs!1199179 (and b!5133185 b!5133167)))

(assert (=> bs!1199179 (= lambda!255328 lambda!255325)))

(declare-fun bs!1199180 () Bool)

(assert (= bs!1199180 (and b!5133185 b!5133166)))

(assert (=> bs!1199180 (= lambda!255328 lambda!255324)))

(declare-fun bs!1199181 () Bool)

(assert (= bs!1199181 (and b!5133185 d!1661028)))

(assert (=> bs!1199181 (not (= lambda!255328 lambda!255323))))

(declare-fun bs!1199182 () Bool)

(assert (= bs!1199182 (and b!5133185 b!5133086)))

(assert (=> bs!1199182 (= lambda!255328 lambda!255263)))

(declare-fun bs!1199183 () Bool)

(assert (= bs!1199183 (and b!5133185 d!1661058)))

(assert (=> bs!1199183 (not (= lambda!255328 lambda!255326))))

(declare-fun bs!1199184 () Bool)

(assert (= bs!1199184 (and b!5133185 b!5133184)))

(assert (=> bs!1199184 (= lambda!255328 lambda!255327)))

(declare-fun bs!1199185 () Bool)

(assert (= bs!1199185 (and b!5133185 b!5133091)))

(assert (=> bs!1199185 (not (= lambda!255328 lambda!255262))))

(declare-fun lt!2118413 () Bool)

(assert (=> d!1661058 (= lt!2118413 (isEmpty!32010 (getLanguageWitness!886 lt!2118291)))))

(assert (=> d!1661058 (= lt!2118413 (forall!13821 lt!2118291 lambda!255326))))

(declare-fun lt!2118412 () Unit!150875)

(declare-fun e!3201665 () Unit!150875)

(assert (=> d!1661058 (= lt!2118412 e!3201665)))

(declare-fun c!883436 () Bool)

(assert (=> d!1661058 (= c!883436 (not (forall!13821 lt!2118291 lambda!255326)))))

(assert (=> d!1661058 (= (lostCauseZipper!1213 lt!2118291) lt!2118413)))

(declare-fun lt!2118414 () List!59684)

(declare-fun call!357318 () Bool)

(declare-fun lt!2118416 () List!59684)

(declare-fun bm!357313 () Bool)

(assert (=> bm!357313 (= call!357318 (exists!1701 (ite c!883436 lt!2118414 lt!2118416) (ite c!883436 lambda!255327 lambda!255328)))))

(declare-fun Unit!150887 () Unit!150875)

(assert (=> b!5133184 (= e!3201665 Unit!150887)))

(declare-fun call!357317 () List!59684)

(assert (=> b!5133184 (= lt!2118414 call!357317)))

(declare-fun lt!2118415 () Unit!150875)

(assert (=> b!5133184 (= lt!2118415 (lemmaNotForallThenExists!402 lt!2118414 lambda!255326))))

(assert (=> b!5133184 call!357318))

(declare-fun lt!2118411 () Unit!150875)

(assert (=> b!5133184 (= lt!2118411 lt!2118415)))

(declare-fun Unit!150888 () Unit!150875)

(assert (=> b!5133185 (= e!3201665 Unit!150888)))

(assert (=> b!5133185 (= lt!2118416 call!357317)))

(declare-fun lt!2118409 () Unit!150875)

(assert (=> b!5133185 (= lt!2118409 (lemmaForallThenNotExists!371 lt!2118416 lambda!255326))))

(assert (=> b!5133185 (not call!357318)))

(declare-fun lt!2118410 () Unit!150875)

(assert (=> b!5133185 (= lt!2118410 lt!2118409)))

(declare-fun bm!357312 () Bool)

(assert (=> bm!357312 (= call!357317 (toList!8354 lt!2118291))))

(assert (= (and d!1661058 c!883436) b!5133184))

(assert (= (and d!1661058 (not c!883436)) b!5133185))

(assert (= (or b!5133184 b!5133185) bm!357312))

(assert (= (or b!5133184 b!5133185) bm!357313))

(declare-fun m!6199286 () Bool)

(assert (=> b!5133185 m!6199286))

(declare-fun m!6199288 () Bool)

(assert (=> d!1661058 m!6199288))

(assert (=> d!1661058 m!6199288))

(declare-fun m!6199290 () Bool)

(assert (=> d!1661058 m!6199290))

(declare-fun m!6199292 () Bool)

(assert (=> d!1661058 m!6199292))

(assert (=> d!1661058 m!6199292))

(declare-fun m!6199294 () Bool)

(assert (=> b!5133184 m!6199294))

(assert (=> bm!357312 m!6199044))

(declare-fun m!6199296 () Bool)

(assert (=> bm!357313 m!6199296))

(assert (=> b!5133088 d!1661058))

(declare-fun bs!1199186 () Bool)

(declare-fun d!1661060 () Bool)

(assert (= bs!1199186 (and d!1661060 b!5133087)))

(declare-fun lambda!255329 () Int)

(assert (=> bs!1199186 (not (= lambda!255329 lambda!255264))))

(declare-fun bs!1199187 () Bool)

(assert (= bs!1199187 (and d!1661060 b!5133167)))

(assert (=> bs!1199187 (not (= lambda!255329 lambda!255325))))

(declare-fun bs!1199188 () Bool)

(assert (= bs!1199188 (and d!1661060 b!5133166)))

(assert (=> bs!1199188 (not (= lambda!255329 lambda!255324))))

(declare-fun bs!1199189 () Bool)

(assert (= bs!1199189 (and d!1661060 d!1661028)))

(assert (=> bs!1199189 (= lambda!255329 lambda!255323)))

(declare-fun bs!1199190 () Bool)

(assert (= bs!1199190 (and d!1661060 b!5133086)))

(assert (=> bs!1199190 (not (= lambda!255329 lambda!255263))))

(declare-fun bs!1199191 () Bool)

(assert (= bs!1199191 (and d!1661060 b!5133185)))

(assert (=> bs!1199191 (not (= lambda!255329 lambda!255328))))

(declare-fun bs!1199192 () Bool)

(assert (= bs!1199192 (and d!1661060 d!1661058)))

(assert (=> bs!1199192 (= lambda!255329 lambda!255326)))

(declare-fun bs!1199193 () Bool)

(assert (= bs!1199193 (and d!1661060 b!5133184)))

(assert (=> bs!1199193 (not (= lambda!255329 lambda!255327))))

(declare-fun bs!1199194 () Bool)

(assert (= bs!1199194 (and d!1661060 b!5133091)))

(assert (=> bs!1199194 (= lambda!255329 lambda!255262)))

(declare-fun bs!1199195 () Bool)

(declare-fun b!5133186 () Bool)

(assert (= bs!1199195 (and b!5133186 b!5133087)))

(declare-fun lambda!255330 () Int)

(assert (=> bs!1199195 (not (= lambda!255330 lambda!255264))))

(declare-fun bs!1199196 () Bool)

(assert (= bs!1199196 (and b!5133186 b!5133167)))

(assert (=> bs!1199196 (= lambda!255330 lambda!255325)))

(declare-fun bs!1199197 () Bool)

(assert (= bs!1199197 (and b!5133186 b!5133166)))

(assert (=> bs!1199197 (= lambda!255330 lambda!255324)))

(declare-fun bs!1199198 () Bool)

(assert (= bs!1199198 (and b!5133186 d!1661028)))

(assert (=> bs!1199198 (not (= lambda!255330 lambda!255323))))

(declare-fun bs!1199199 () Bool)

(assert (= bs!1199199 (and b!5133186 b!5133086)))

(assert (=> bs!1199199 (= lambda!255330 lambda!255263)))

(declare-fun bs!1199200 () Bool)

(assert (= bs!1199200 (and b!5133186 b!5133185)))

(assert (=> bs!1199200 (= lambda!255330 lambda!255328)))

(declare-fun bs!1199201 () Bool)

(assert (= bs!1199201 (and b!5133186 d!1661060)))

(assert (=> bs!1199201 (not (= lambda!255330 lambda!255329))))

(declare-fun bs!1199202 () Bool)

(assert (= bs!1199202 (and b!5133186 d!1661058)))

(assert (=> bs!1199202 (not (= lambda!255330 lambda!255326))))

(declare-fun bs!1199203 () Bool)

(assert (= bs!1199203 (and b!5133186 b!5133184)))

(assert (=> bs!1199203 (= lambda!255330 lambda!255327)))

(declare-fun bs!1199204 () Bool)

(assert (= bs!1199204 (and b!5133186 b!5133091)))

(assert (=> bs!1199204 (not (= lambda!255330 lambda!255262))))

(declare-fun bs!1199205 () Bool)

(declare-fun b!5133187 () Bool)

(assert (= bs!1199205 (and b!5133187 b!5133087)))

(declare-fun lambda!255331 () Int)

(assert (=> bs!1199205 (not (= lambda!255331 lambda!255264))))

(declare-fun bs!1199206 () Bool)

(assert (= bs!1199206 (and b!5133187 b!5133167)))

(assert (=> bs!1199206 (= lambda!255331 lambda!255325)))

(declare-fun bs!1199207 () Bool)

(assert (= bs!1199207 (and b!5133187 d!1661028)))

(assert (=> bs!1199207 (not (= lambda!255331 lambda!255323))))

(declare-fun bs!1199208 () Bool)

(assert (= bs!1199208 (and b!5133187 b!5133086)))

(assert (=> bs!1199208 (= lambda!255331 lambda!255263)))

(declare-fun bs!1199209 () Bool)

(assert (= bs!1199209 (and b!5133187 b!5133185)))

(assert (=> bs!1199209 (= lambda!255331 lambda!255328)))

(declare-fun bs!1199210 () Bool)

(assert (= bs!1199210 (and b!5133187 d!1661060)))

(assert (=> bs!1199210 (not (= lambda!255331 lambda!255329))))

(declare-fun bs!1199211 () Bool)

(assert (= bs!1199211 (and b!5133187 d!1661058)))

(assert (=> bs!1199211 (not (= lambda!255331 lambda!255326))))

(declare-fun bs!1199212 () Bool)

(assert (= bs!1199212 (and b!5133187 b!5133184)))

(assert (=> bs!1199212 (= lambda!255331 lambda!255327)))

(declare-fun bs!1199213 () Bool)

(assert (= bs!1199213 (and b!5133187 b!5133091)))

(assert (=> bs!1199213 (not (= lambda!255331 lambda!255262))))

(declare-fun bs!1199214 () Bool)

(assert (= bs!1199214 (and b!5133187 b!5133186)))

(assert (=> bs!1199214 (= lambda!255331 lambda!255330)))

(declare-fun bs!1199215 () Bool)

(assert (= bs!1199215 (and b!5133187 b!5133166)))

(assert (=> bs!1199215 (= lambda!255331 lambda!255324)))

(declare-fun lt!2118421 () Bool)

(assert (=> d!1661060 (= lt!2118421 (isEmpty!32010 (getLanguageWitness!886 (derivationStepZipperUp!73 lt!2118284 a!1233))))))

(assert (=> d!1661060 (= lt!2118421 (forall!13821 (derivationStepZipperUp!73 lt!2118284 a!1233) lambda!255329))))

(declare-fun lt!2118420 () Unit!150875)

(declare-fun e!3201666 () Unit!150875)

(assert (=> d!1661060 (= lt!2118420 e!3201666)))

(declare-fun c!883437 () Bool)

(assert (=> d!1661060 (= c!883437 (not (forall!13821 (derivationStepZipperUp!73 lt!2118284 a!1233) lambda!255329)))))

(assert (=> d!1661060 (= (lostCauseZipper!1213 (derivationStepZipperUp!73 lt!2118284 a!1233)) lt!2118421)))

(declare-fun call!357320 () Bool)

(declare-fun lt!2118424 () List!59684)

(declare-fun lt!2118422 () List!59684)

(declare-fun bm!357315 () Bool)

(assert (=> bm!357315 (= call!357320 (exists!1701 (ite c!883437 lt!2118422 lt!2118424) (ite c!883437 lambda!255330 lambda!255331)))))

(declare-fun Unit!150890 () Unit!150875)

(assert (=> b!5133186 (= e!3201666 Unit!150890)))

(declare-fun call!357319 () List!59684)

(assert (=> b!5133186 (= lt!2118422 call!357319)))

(declare-fun lt!2118423 () Unit!150875)

(assert (=> b!5133186 (= lt!2118423 (lemmaNotForallThenExists!402 lt!2118422 lambda!255329))))

(assert (=> b!5133186 call!357320))

(declare-fun lt!2118419 () Unit!150875)

(assert (=> b!5133186 (= lt!2118419 lt!2118423)))

(declare-fun Unit!150891 () Unit!150875)

(assert (=> b!5133187 (= e!3201666 Unit!150891)))

(assert (=> b!5133187 (= lt!2118424 call!357319)))

(declare-fun lt!2118417 () Unit!150875)

(assert (=> b!5133187 (= lt!2118417 (lemmaForallThenNotExists!371 lt!2118424 lambda!255329))))

(assert (=> b!5133187 (not call!357320)))

(declare-fun lt!2118418 () Unit!150875)

(assert (=> b!5133187 (= lt!2118418 lt!2118417)))

(declare-fun bm!357314 () Bool)

(assert (=> bm!357314 (= call!357319 (toList!8354 (derivationStepZipperUp!73 lt!2118284 a!1233)))))

(assert (= (and d!1661060 c!883437) b!5133186))

(assert (= (and d!1661060 (not c!883437)) b!5133187))

(assert (= (or b!5133186 b!5133187) bm!357314))

(assert (= (or b!5133186 b!5133187) bm!357315))

(declare-fun m!6199298 () Bool)

(assert (=> b!5133187 m!6199298))

(assert (=> d!1661060 m!6199070))

(declare-fun m!6199300 () Bool)

(assert (=> d!1661060 m!6199300))

(assert (=> d!1661060 m!6199300))

(declare-fun m!6199302 () Bool)

(assert (=> d!1661060 m!6199302))

(assert (=> d!1661060 m!6199070))

(declare-fun m!6199304 () Bool)

(assert (=> d!1661060 m!6199304))

(assert (=> d!1661060 m!6199070))

(assert (=> d!1661060 m!6199304))

(declare-fun m!6199306 () Bool)

(assert (=> b!5133186 m!6199306))

(assert (=> bm!357314 m!6199070))

(declare-fun m!6199308 () Bool)

(assert (=> bm!357314 m!6199308))

(declare-fun m!6199310 () Bool)

(assert (=> bm!357315 m!6199310))

(assert (=> b!5133088 d!1661060))

(declare-fun call!357323 () (InoxSet Context!7506))

(declare-fun e!3201675 () (InoxSet Context!7506))

(declare-fun b!5133198 () Bool)

(assert (=> b!5133198 (= e!3201675 ((_ map or) call!357323 (derivationStepZipperUp!73 (Context!7507 (t!372710 (exprs!4253 lt!2118284))) a!1233)))))

(declare-fun b!5133199 () Bool)

(declare-fun e!3201674 () (InoxSet Context!7506))

(assert (=> b!5133199 (= e!3201675 e!3201674)))

(declare-fun c!883443 () Bool)

(get-info :version)

(assert (=> b!5133199 (= c!883443 ((_ is Cons!59559) (exprs!4253 lt!2118284)))))

(declare-fun b!5133200 () Bool)

(assert (=> b!5133200 (= e!3201674 call!357323)))

(declare-fun b!5133201 () Bool)

(assert (=> b!5133201 (= e!3201674 ((as const (Array Context!7506 Bool)) false))))

(declare-fun d!1661062 () Bool)

(declare-fun c!883442 () Bool)

(declare-fun e!3201673 () Bool)

(assert (=> d!1661062 (= c!883442 e!3201673)))

(declare-fun res!2186382 () Bool)

(assert (=> d!1661062 (=> (not res!2186382) (not e!3201673))))

(assert (=> d!1661062 (= res!2186382 ((_ is Cons!59559) (exprs!4253 lt!2118284)))))

(assert (=> d!1661062 (= (derivationStepZipperUp!73 lt!2118284 a!1233) e!3201675)))

(declare-fun b!5133202 () Bool)

(declare-fun nullable!4750 (Regex!14369) Bool)

(assert (=> b!5133202 (= e!3201673 (nullable!4750 (h!66007 (exprs!4253 lt!2118284))))))

(declare-fun bm!357318 () Bool)

(declare-fun derivationStepZipperDown!100 (Regex!14369 Context!7506 C!29004) (InoxSet Context!7506))

(assert (=> bm!357318 (= call!357323 (derivationStepZipperDown!100 (h!66007 (exprs!4253 lt!2118284)) (Context!7507 (t!372710 (exprs!4253 lt!2118284))) a!1233))))

(assert (= (and d!1661062 res!2186382) b!5133202))

(assert (= (and d!1661062 c!883442) b!5133198))

(assert (= (and d!1661062 (not c!883442)) b!5133199))

(assert (= (and b!5133199 c!883443) b!5133200))

(assert (= (and b!5133199 (not c!883443)) b!5133201))

(assert (= (or b!5133198 b!5133200) bm!357318))

(declare-fun m!6199312 () Bool)

(assert (=> b!5133198 m!6199312))

(declare-fun m!6199314 () Bool)

(assert (=> b!5133202 m!6199314))

(declare-fun m!6199316 () Bool)

(assert (=> bm!357318 m!6199316))

(assert (=> b!5133088 d!1661062))

(declare-fun d!1661064 () Bool)

(assert (=> d!1661064 (lostCauseZipper!1213 (derivationStepZipperUp!73 lt!2118284 a!1233))))

(declare-fun lt!2118427 () Unit!150875)

(declare-fun choose!37949 (Context!7506 C!29004) Unit!150875)

(assert (=> d!1661064 (= lt!2118427 (choose!37949 lt!2118284 a!1233))))

(assert (=> d!1661064 (lostCause!1311 lt!2118284)))

(assert (=> d!1661064 (= (lemmaLostCauseFixPointDerivUp!6 lt!2118284 a!1233) lt!2118427)))

(declare-fun bs!1199216 () Bool)

(assert (= bs!1199216 d!1661064))

(assert (=> bs!1199216 m!6199070))

(assert (=> bs!1199216 m!6199070))

(assert (=> bs!1199216 m!6199072))

(declare-fun m!6199318 () Bool)

(assert (=> bs!1199216 m!6199318))

(assert (=> bs!1199216 m!6199048))

(assert (=> b!5133088 d!1661064))

(declare-fun bs!1199217 () Bool)

(declare-fun d!1661066 () Bool)

(assert (= bs!1199217 (and d!1661066 d!1660996)))

(declare-fun lambda!255332 () Int)

(assert (=> bs!1199217 (= lambda!255332 lambda!255294)))

(assert (=> d!1661066 (= (lostCause!1311 lt!2118284) (exists!1703 (exprs!4253 lt!2118284) lambda!255332))))

(declare-fun bs!1199218 () Bool)

(assert (= bs!1199218 d!1661066))

(declare-fun m!6199320 () Bool)

(assert (=> bs!1199218 m!6199320))

(assert (=> b!5133089 d!1661066))

(declare-fun d!1661068 () Bool)

(assert (=> d!1661068 (dynLambda!23716 lambda!255262 lt!2118284)))

(declare-fun lt!2118428 () Unit!150875)

(assert (=> d!1661068 (= lt!2118428 (choose!37945 (toList!8354 z!1054) lambda!255262 lt!2118284))))

(declare-fun e!3201676 () Bool)

(assert (=> d!1661068 e!3201676))

(declare-fun res!2186383 () Bool)

(assert (=> d!1661068 (=> (not res!2186383) (not e!3201676))))

(assert (=> d!1661068 (= res!2186383 (forall!13824 (toList!8354 z!1054) lambda!255262))))

(assert (=> d!1661068 (= (forallContained!4627 (toList!8354 z!1054) lambda!255262 lt!2118284) lt!2118428)))

(declare-fun b!5133203 () Bool)

(assert (=> b!5133203 (= e!3201676 (contains!19646 (toList!8354 z!1054) lt!2118284))))

(assert (= (and d!1661068 res!2186383) b!5133203))

(declare-fun b_lambda!199971 () Bool)

(assert (=> (not b_lambda!199971) (not d!1661068)))

(declare-fun m!6199322 () Bool)

(assert (=> d!1661068 m!6199322))

(assert (=> d!1661068 m!6199050))

(declare-fun m!6199324 () Bool)

(assert (=> d!1661068 m!6199324))

(assert (=> d!1661068 m!6199050))

(assert (=> d!1661068 m!6199282))

(assert (=> b!5133203 m!6199050))

(declare-fun m!6199326 () Bool)

(assert (=> b!5133203 m!6199326))

(assert (=> b!5133089 d!1661068))

(declare-fun d!1661070 () Bool)

(declare-fun e!3201677 () Bool)

(assert (=> d!1661070 e!3201677))

(declare-fun res!2186384 () Bool)

(assert (=> d!1661070 (=> (not res!2186384) (not e!3201677))))

(declare-fun lt!2118429 () List!59684)

(assert (=> d!1661070 (= res!2186384 (noDuplicate!1102 lt!2118429))))

(assert (=> d!1661070 (= lt!2118429 (choose!37946 z!1054))))

(assert (=> d!1661070 (= (toList!8354 z!1054) lt!2118429)))

(declare-fun b!5133204 () Bool)

(assert (=> b!5133204 (= e!3201677 (= (content!10579 lt!2118429) z!1054))))

(assert (= (and d!1661070 res!2186384) b!5133204))

(declare-fun m!6199328 () Bool)

(assert (=> d!1661070 m!6199328))

(declare-fun m!6199330 () Bool)

(assert (=> d!1661070 m!6199330))

(declare-fun m!6199332 () Bool)

(assert (=> b!5133204 m!6199332))

(assert (=> b!5133089 d!1661070))

(declare-fun d!1661072 () Bool)

(declare-fun e!3201680 () Bool)

(assert (=> d!1661072 e!3201680))

(declare-fun res!2186387 () Bool)

(assert (=> d!1661072 (=> (not res!2186387) (not e!3201680))))

(declare-fun lt!2118432 () Context!7506)

(assert (=> d!1661072 (= res!2186387 (dynLambda!23716 lambda!255264 lt!2118432))))

(assert (=> d!1661072 (= lt!2118432 (getWitness!825 (toList!8354 z!1054) lambda!255264))))

(assert (=> d!1661072 (exists!1700 z!1054 lambda!255264)))

(assert (=> d!1661072 (= (getWitness!824 z!1054 lambda!255264) lt!2118432)))

(declare-fun b!5133207 () Bool)

(assert (=> b!5133207 (= e!3201680 (select z!1054 lt!2118432))))

(assert (= (and d!1661072 res!2186387) b!5133207))

(declare-fun b_lambda!199973 () Bool)

(assert (=> (not b_lambda!199973) (not d!1661072)))

(declare-fun m!6199334 () Bool)

(assert (=> d!1661072 m!6199334))

(assert (=> d!1661072 m!6199050))

(assert (=> d!1661072 m!6199050))

(declare-fun m!6199336 () Bool)

(assert (=> d!1661072 m!6199336))

(assert (=> d!1661072 m!6199080))

(declare-fun m!6199338 () Bool)

(assert (=> b!5133207 m!6199338))

(assert (=> b!5133079 d!1661072))

(declare-fun bs!1199219 () Bool)

(declare-fun d!1661074 () Bool)

(assert (= bs!1199219 (and d!1661074 d!1660996)))

(declare-fun lambda!255335 () Int)

(assert (=> bs!1199219 (not (= lambda!255335 lambda!255294))))

(declare-fun bs!1199220 () Bool)

(assert (= bs!1199220 (and d!1661074 d!1661066)))

(assert (=> bs!1199220 (not (= lambda!255335 lambda!255332))))

(declare-fun forall!13825 (List!59683 Int) Bool)

(assert (=> d!1661074 (= (inv!79103 setElem!31230) (forall!13825 (exprs!4253 setElem!31230) lambda!255335))))

(declare-fun bs!1199221 () Bool)

(assert (= bs!1199221 d!1661074))

(declare-fun m!6199340 () Bool)

(assert (=> bs!1199221 m!6199340))

(assert (=> setNonEmpty!31230 d!1661074))

(declare-fun d!1661076 () Bool)

(declare-fun lt!2118435 () Bool)

(assert (=> d!1661076 (= lt!2118435 (exists!1701 (toList!8354 lt!2118286) lambda!255263))))

(declare-fun choose!37950 ((InoxSet Context!7506) Int) Bool)

(assert (=> d!1661076 (= lt!2118435 (choose!37950 lt!2118286 lambda!255263))))

(assert (=> d!1661076 (= (exists!1700 lt!2118286 lambda!255263) lt!2118435)))

(declare-fun bs!1199222 () Bool)

(assert (= bs!1199222 d!1661076))

(assert (=> bs!1199222 m!6199066))

(assert (=> bs!1199222 m!6199066))

(declare-fun m!6199342 () Bool)

(assert (=> bs!1199222 m!6199342))

(declare-fun m!6199344 () Bool)

(assert (=> bs!1199222 m!6199344))

(assert (=> b!5133086 d!1661076))

(declare-fun bs!1199223 () Bool)

(declare-fun d!1661078 () Bool)

(assert (= bs!1199223 (and d!1661078 b!5133087)))

(declare-fun lambda!255338 () Int)

(assert (=> bs!1199223 (not (= lambda!255338 lambda!255264))))

(declare-fun bs!1199224 () Bool)

(assert (= bs!1199224 (and d!1661078 b!5133167)))

(assert (=> bs!1199224 (not (= lambda!255338 lambda!255325))))

(declare-fun bs!1199225 () Bool)

(assert (= bs!1199225 (and d!1661078 d!1661028)))

(assert (=> bs!1199225 (not (= lambda!255338 lambda!255323))))

(declare-fun bs!1199226 () Bool)

(assert (= bs!1199226 (and d!1661078 b!5133086)))

(assert (=> bs!1199226 (not (= lambda!255338 lambda!255263))))

(declare-fun bs!1199227 () Bool)

(assert (= bs!1199227 (and d!1661078 b!5133185)))

(assert (=> bs!1199227 (not (= lambda!255338 lambda!255328))))

(declare-fun bs!1199228 () Bool)

(assert (= bs!1199228 (and d!1661078 d!1661060)))

(assert (=> bs!1199228 (not (= lambda!255338 lambda!255329))))

(declare-fun bs!1199229 () Bool)

(assert (= bs!1199229 (and d!1661078 d!1661058)))

(assert (=> bs!1199229 (not (= lambda!255338 lambda!255326))))

(declare-fun bs!1199230 () Bool)

(assert (= bs!1199230 (and d!1661078 b!5133184)))

(assert (=> bs!1199230 (not (= lambda!255338 lambda!255327))))

(declare-fun bs!1199231 () Bool)

(assert (= bs!1199231 (and d!1661078 b!5133091)))

(assert (=> bs!1199231 (not (= lambda!255338 lambda!255262))))

(declare-fun bs!1199232 () Bool)

(assert (= bs!1199232 (and d!1661078 b!5133187)))

(assert (=> bs!1199232 (not (= lambda!255338 lambda!255331))))

(declare-fun bs!1199233 () Bool)

(assert (= bs!1199233 (and d!1661078 b!5133186)))

(assert (=> bs!1199233 (not (= lambda!255338 lambda!255330))))

(declare-fun bs!1199234 () Bool)

(assert (= bs!1199234 (and d!1661078 b!5133166)))

(assert (=> bs!1199234 (not (= lambda!255338 lambda!255324))))

(assert (=> d!1661078 true))

(declare-fun order!26895 () Int)

(declare-fun dynLambda!23718 (Int Int) Int)

(assert (=> d!1661078 (< (dynLambda!23718 order!26895 lambda!255263) (dynLambda!23718 order!26895 lambda!255338))))

(assert (=> d!1661078 (= (exists!1701 lt!2118290 lambda!255263) (not (forall!13824 lt!2118290 lambda!255338)))))

(declare-fun bs!1199235 () Bool)

(assert (= bs!1199235 d!1661078))

(declare-fun m!6199346 () Bool)

(assert (=> bs!1199235 m!6199346))

(assert (=> b!5133086 d!1661078))

(declare-fun bs!1199236 () Bool)

(declare-fun d!1661080 () Bool)

(assert (= bs!1199236 (and d!1661080 d!1661078)))

(declare-fun lambda!255341 () Int)

(assert (=> bs!1199236 (= (= lambda!255262 lambda!255263) (= lambda!255341 lambda!255338))))

(declare-fun bs!1199237 () Bool)

(assert (= bs!1199237 (and d!1661080 b!5133087)))

(assert (=> bs!1199237 (not (= lambda!255341 lambda!255264))))

(declare-fun bs!1199238 () Bool)

(assert (= bs!1199238 (and d!1661080 b!5133167)))

(assert (=> bs!1199238 (not (= lambda!255341 lambda!255325))))

(declare-fun bs!1199239 () Bool)

(assert (= bs!1199239 (and d!1661080 d!1661028)))

(assert (=> bs!1199239 (not (= lambda!255341 lambda!255323))))

(declare-fun bs!1199240 () Bool)

(assert (= bs!1199240 (and d!1661080 b!5133086)))

(assert (=> bs!1199240 (not (= lambda!255341 lambda!255263))))

(declare-fun bs!1199241 () Bool)

(assert (= bs!1199241 (and d!1661080 b!5133185)))

(assert (=> bs!1199241 (not (= lambda!255341 lambda!255328))))

(declare-fun bs!1199242 () Bool)

(assert (= bs!1199242 (and d!1661080 d!1661060)))

(assert (=> bs!1199242 (not (= lambda!255341 lambda!255329))))

(declare-fun bs!1199243 () Bool)

(assert (= bs!1199243 (and d!1661080 d!1661058)))

(assert (=> bs!1199243 (not (= lambda!255341 lambda!255326))))

(declare-fun bs!1199244 () Bool)

(assert (= bs!1199244 (and d!1661080 b!5133184)))

(assert (=> bs!1199244 (not (= lambda!255341 lambda!255327))))

(declare-fun bs!1199245 () Bool)

(assert (= bs!1199245 (and d!1661080 b!5133091)))

(assert (=> bs!1199245 (not (= lambda!255341 lambda!255262))))

(declare-fun bs!1199246 () Bool)

(assert (= bs!1199246 (and d!1661080 b!5133187)))

(assert (=> bs!1199246 (not (= lambda!255341 lambda!255331))))

(declare-fun bs!1199247 () Bool)

(assert (= bs!1199247 (and d!1661080 b!5133186)))

(assert (=> bs!1199247 (not (= lambda!255341 lambda!255330))))

(declare-fun bs!1199248 () Bool)

(assert (= bs!1199248 (and d!1661080 b!5133166)))

(assert (=> bs!1199248 (not (= lambda!255341 lambda!255324))))

(assert (=> d!1661080 true))

(assert (=> d!1661080 (< (dynLambda!23718 order!26895 lambda!255262) (dynLambda!23718 order!26895 lambda!255341))))

(assert (=> d!1661080 (exists!1701 lt!2118290 lambda!255341)))

(declare-fun lt!2118438 () Unit!150875)

(declare-fun choose!37951 (List!59684 Int) Unit!150875)

(assert (=> d!1661080 (= lt!2118438 (choose!37951 lt!2118290 lambda!255262))))

(assert (=> d!1661080 (not (forall!13824 lt!2118290 lambda!255262))))

(assert (=> d!1661080 (= (lemmaNotForallThenExists!402 lt!2118290 lambda!255262) lt!2118438)))

(declare-fun bs!1199249 () Bool)

(assert (= bs!1199249 d!1661080))

(declare-fun m!6199348 () Bool)

(assert (=> bs!1199249 m!6199348))

(declare-fun m!6199350 () Bool)

(assert (=> bs!1199249 m!6199350))

(declare-fun m!6199352 () Bool)

(assert (=> bs!1199249 m!6199352))

(assert (=> b!5133086 d!1661080))

(declare-fun d!1661082 () Bool)

(declare-fun e!3201683 () Bool)

(assert (=> d!1661082 e!3201683))

(declare-fun res!2186388 () Bool)

(assert (=> d!1661082 (=> (not res!2186388) (not e!3201683))))

(declare-fun lt!2118439 () List!59684)

(assert (=> d!1661082 (= res!2186388 (noDuplicate!1102 lt!2118439))))

(assert (=> d!1661082 (= lt!2118439 (choose!37946 lt!2118286))))

(assert (=> d!1661082 (= (toList!8354 lt!2118286) lt!2118439)))

(declare-fun b!5133210 () Bool)

(assert (=> b!5133210 (= e!3201683 (= (content!10579 lt!2118439) lt!2118286))))

(assert (= (and d!1661082 res!2186388) b!5133210))

(declare-fun m!6199354 () Bool)

(assert (=> d!1661082 m!6199354))

(declare-fun m!6199356 () Bool)

(assert (=> d!1661082 m!6199356))

(declare-fun m!6199358 () Bool)

(assert (=> b!5133210 m!6199358))

(assert (=> b!5133086 d!1661082))

(assert (=> b!5133085 d!1661062))

(declare-fun d!1661084 () Bool)

(declare-fun lt!2118440 () Bool)

(assert (=> d!1661084 (= lt!2118440 (exists!1701 (toList!8354 z!1054) lambda!255264))))

(assert (=> d!1661084 (= lt!2118440 (choose!37950 z!1054 lambda!255264))))

(assert (=> d!1661084 (= (exists!1700 z!1054 lambda!255264) lt!2118440)))

(declare-fun bs!1199250 () Bool)

(assert (= bs!1199250 d!1661084))

(assert (=> bs!1199250 m!6199050))

(assert (=> bs!1199250 m!6199050))

(declare-fun m!6199360 () Bool)

(assert (=> bs!1199250 m!6199360))

(declare-fun m!6199362 () Bool)

(assert (=> bs!1199250 m!6199362))

(assert (=> b!5133087 d!1661084))

(declare-fun bs!1199251 () Bool)

(declare-fun d!1661086 () Bool)

(assert (= bs!1199251 (and d!1661086 d!1661078)))

(declare-fun lambda!255344 () Int)

(assert (=> bs!1199251 (not (= lambda!255344 lambda!255338))))

(declare-fun bs!1199252 () Bool)

(assert (= bs!1199252 (and d!1661086 b!5133087)))

(assert (=> bs!1199252 (not (= lambda!255344 lambda!255264))))

(declare-fun bs!1199253 () Bool)

(assert (= bs!1199253 (and d!1661086 b!5133167)))

(assert (=> bs!1199253 (not (= lambda!255344 lambda!255325))))

(declare-fun bs!1199254 () Bool)

(assert (= bs!1199254 (and d!1661086 d!1661028)))

(assert (=> bs!1199254 (not (= lambda!255344 lambda!255323))))

(declare-fun bs!1199255 () Bool)

(assert (= bs!1199255 (and d!1661086 b!5133185)))

(assert (=> bs!1199255 (not (= lambda!255344 lambda!255328))))

(declare-fun bs!1199256 () Bool)

(assert (= bs!1199256 (and d!1661086 d!1661060)))

(assert (=> bs!1199256 (not (= lambda!255344 lambda!255329))))

(declare-fun bs!1199257 () Bool)

(assert (= bs!1199257 (and d!1661086 d!1661058)))

(assert (=> bs!1199257 (not (= lambda!255344 lambda!255326))))

(declare-fun bs!1199258 () Bool)

(assert (= bs!1199258 (and d!1661086 b!5133184)))

(assert (=> bs!1199258 (not (= lambda!255344 lambda!255327))))

(declare-fun bs!1199259 () Bool)

(assert (= bs!1199259 (and d!1661086 b!5133091)))

(assert (=> bs!1199259 (not (= lambda!255344 lambda!255262))))

(declare-fun bs!1199260 () Bool)

(assert (= bs!1199260 (and d!1661086 b!5133187)))

(assert (=> bs!1199260 (not (= lambda!255344 lambda!255331))))

(declare-fun bs!1199261 () Bool)

(assert (= bs!1199261 (and d!1661086 b!5133186)))

(assert (=> bs!1199261 (not (= lambda!255344 lambda!255330))))

(declare-fun bs!1199262 () Bool)

(assert (= bs!1199262 (and d!1661086 b!5133166)))

(assert (=> bs!1199262 (not (= lambda!255344 lambda!255324))))

(declare-fun bs!1199263 () Bool)

(assert (= bs!1199263 (and d!1661086 d!1661080)))

(assert (=> bs!1199263 (not (= lambda!255344 lambda!255341))))

(declare-fun bs!1199264 () Bool)

(assert (= bs!1199264 (and d!1661086 b!5133086)))

(assert (=> bs!1199264 (not (= lambda!255344 lambda!255263))))

(assert (=> d!1661086 true))

(assert (=> d!1661086 true))

(declare-fun order!26897 () Int)

(declare-fun dynLambda!23719 (Int Int) Int)

(assert (=> d!1661086 (< (dynLambda!23719 order!26897 lambda!255261) (dynLambda!23718 order!26895 lambda!255344))))

(assert (=> d!1661086 (exists!1700 z!1054 lambda!255344)))

(declare-fun lt!2118443 () Unit!150875)

(declare-fun choose!37952 ((InoxSet Context!7506) Int Context!7506) Unit!150875)

(assert (=> d!1661086 (= lt!2118443 (choose!37952 z!1054 lambda!255261 lt!2118287))))

(assert (=> d!1661086 (select (flatMap!420 z!1054 lambda!255261) lt!2118287)))

(assert (=> d!1661086 (= (lemmaFlatMapPost!20 z!1054 lambda!255261 lt!2118287) lt!2118443)))

(declare-fun bs!1199265 () Bool)

(assert (= bs!1199265 d!1661086))

(declare-fun m!6199364 () Bool)

(assert (=> bs!1199265 m!6199364))

(declare-fun m!6199366 () Bool)

(assert (=> bs!1199265 m!6199366))

(assert (=> bs!1199265 m!6199090))

(declare-fun m!6199368 () Bool)

(assert (=> bs!1199265 m!6199368))

(assert (=> b!5133087 d!1661086))

(declare-fun d!1661088 () Bool)

(declare-fun e!3201695 () Bool)

(assert (=> d!1661088 e!3201695))

(declare-fun res!2186393 () Bool)

(assert (=> d!1661088 (=> (not res!2186393) (not e!3201695))))

(declare-fun lt!2118449 () Context!7506)

(assert (=> d!1661088 (= res!2186393 (dynLambda!23716 lambda!255263 lt!2118449))))

(declare-fun e!3201693 () Context!7506)

(assert (=> d!1661088 (= lt!2118449 e!3201693)))

(declare-fun c!883448 () Bool)

(declare-fun e!3201694 () Bool)

(assert (=> d!1661088 (= c!883448 e!3201694)))

(declare-fun res!2186394 () Bool)

(assert (=> d!1661088 (=> (not res!2186394) (not e!3201694))))

(assert (=> d!1661088 (= res!2186394 ((_ is Cons!59560) lt!2118290))))

(assert (=> d!1661088 (exists!1701 lt!2118290 lambda!255263)))

(assert (=> d!1661088 (= (getWitness!825 lt!2118290 lambda!255263) lt!2118449)))

(declare-fun b!5133226 () Bool)

(assert (=> b!5133226 (= e!3201694 (dynLambda!23716 lambda!255263 (h!66008 lt!2118290)))))

(declare-fun b!5133227 () Bool)

(assert (=> b!5133227 (= e!3201693 (h!66008 lt!2118290))))

(declare-fun b!5133228 () Bool)

(assert (=> b!5133228 (= e!3201695 (contains!19646 lt!2118290 lt!2118449))))

(declare-fun b!5133229 () Bool)

(declare-fun e!3201692 () Context!7506)

(assert (=> b!5133229 (= e!3201692 (getWitness!825 (t!372711 lt!2118290) lambda!255263))))

(declare-fun b!5133230 () Bool)

(assert (=> b!5133230 (= e!3201693 e!3201692)))

(declare-fun c!883449 () Bool)

(assert (=> b!5133230 (= c!883449 ((_ is Cons!59560) lt!2118290))))

(declare-fun b!5133231 () Bool)

(declare-fun lt!2118448 () Unit!150875)

(declare-fun Unit!150892 () Unit!150875)

(assert (=> b!5133231 (= lt!2118448 Unit!150892)))

(assert (=> b!5133231 false))

(declare-fun head!10993 (List!59684) Context!7506)

(assert (=> b!5133231 (= e!3201692 (head!10993 lt!2118290))))

(assert (= (and d!1661088 res!2186394) b!5133226))

(assert (= (and d!1661088 c!883448) b!5133227))

(assert (= (and d!1661088 (not c!883448)) b!5133230))

(assert (= (and b!5133230 c!883449) b!5133229))

(assert (= (and b!5133230 (not c!883449)) b!5133231))

(assert (= (and d!1661088 res!2186393) b!5133228))

(declare-fun b_lambda!199975 () Bool)

(assert (=> (not b_lambda!199975) (not d!1661088)))

(declare-fun b_lambda!199977 () Bool)

(assert (=> (not b_lambda!199977) (not b!5133226)))

(declare-fun m!6199370 () Bool)

(assert (=> d!1661088 m!6199370))

(assert (=> d!1661088 m!6199062))

(declare-fun m!6199372 () Bool)

(assert (=> b!5133228 m!6199372))

(declare-fun m!6199374 () Bool)

(assert (=> b!5133231 m!6199374))

(declare-fun m!6199376 () Bool)

(assert (=> b!5133226 m!6199376))

(declare-fun m!6199378 () Bool)

(assert (=> b!5133229 m!6199378))

(assert (=> b!5133083 d!1661088))

(declare-fun bs!1199266 () Bool)

(declare-fun d!1661090 () Bool)

(assert (= bs!1199266 (and d!1661090 d!1661086)))

(declare-fun lambda!255345 () Int)

(assert (=> bs!1199266 (not (= lambda!255345 lambda!255344))))

(declare-fun bs!1199267 () Bool)

(assert (= bs!1199267 (and d!1661090 d!1661078)))

(assert (=> bs!1199267 (not (= lambda!255345 lambda!255338))))

(declare-fun bs!1199268 () Bool)

(assert (= bs!1199268 (and d!1661090 b!5133087)))

(assert (=> bs!1199268 (not (= lambda!255345 lambda!255264))))

(declare-fun bs!1199269 () Bool)

(assert (= bs!1199269 (and d!1661090 b!5133167)))

(assert (=> bs!1199269 (not (= lambda!255345 lambda!255325))))

(declare-fun bs!1199270 () Bool)

(assert (= bs!1199270 (and d!1661090 d!1661028)))

(assert (=> bs!1199270 (= lambda!255345 lambda!255323)))

(declare-fun bs!1199271 () Bool)

(assert (= bs!1199271 (and d!1661090 b!5133185)))

(assert (=> bs!1199271 (not (= lambda!255345 lambda!255328))))

(declare-fun bs!1199272 () Bool)

(assert (= bs!1199272 (and d!1661090 d!1661060)))

(assert (=> bs!1199272 (= lambda!255345 lambda!255329)))

(declare-fun bs!1199273 () Bool)

(assert (= bs!1199273 (and d!1661090 d!1661058)))

(assert (=> bs!1199273 (= lambda!255345 lambda!255326)))

(declare-fun bs!1199274 () Bool)

(assert (= bs!1199274 (and d!1661090 b!5133184)))

(assert (=> bs!1199274 (not (= lambda!255345 lambda!255327))))

(declare-fun bs!1199275 () Bool)

(assert (= bs!1199275 (and d!1661090 b!5133091)))

(assert (=> bs!1199275 (= lambda!255345 lambda!255262)))

(declare-fun bs!1199276 () Bool)

(assert (= bs!1199276 (and d!1661090 b!5133187)))

(assert (=> bs!1199276 (not (= lambda!255345 lambda!255331))))

(declare-fun bs!1199277 () Bool)

(assert (= bs!1199277 (and d!1661090 b!5133186)))

(assert (=> bs!1199277 (not (= lambda!255345 lambda!255330))))

(declare-fun bs!1199278 () Bool)

(assert (= bs!1199278 (and d!1661090 b!5133166)))

(assert (=> bs!1199278 (not (= lambda!255345 lambda!255324))))

(declare-fun bs!1199279 () Bool)

(assert (= bs!1199279 (and d!1661090 d!1661080)))

(assert (=> bs!1199279 (not (= lambda!255345 lambda!255341))))

(declare-fun bs!1199280 () Bool)

(assert (= bs!1199280 (and d!1661090 b!5133086)))

(assert (=> bs!1199280 (not (= lambda!255345 lambda!255263))))

(declare-fun bs!1199281 () Bool)

(declare-fun b!5133232 () Bool)

(assert (= bs!1199281 (and b!5133232 d!1661086)))

(declare-fun lambda!255346 () Int)

(assert (=> bs!1199281 (not (= lambda!255346 lambda!255344))))

(declare-fun bs!1199282 () Bool)

(assert (= bs!1199282 (and b!5133232 d!1661078)))

(assert (=> bs!1199282 (not (= lambda!255346 lambda!255338))))

(declare-fun bs!1199283 () Bool)

(assert (= bs!1199283 (and b!5133232 b!5133087)))

(assert (=> bs!1199283 (not (= lambda!255346 lambda!255264))))

(declare-fun bs!1199284 () Bool)

(assert (= bs!1199284 (and b!5133232 b!5133167)))

(assert (=> bs!1199284 (= lambda!255346 lambda!255325)))

(declare-fun bs!1199285 () Bool)

(assert (= bs!1199285 (and b!5133232 d!1661028)))

(assert (=> bs!1199285 (not (= lambda!255346 lambda!255323))))

(declare-fun bs!1199286 () Bool)

(assert (= bs!1199286 (and b!5133232 b!5133185)))

(assert (=> bs!1199286 (= lambda!255346 lambda!255328)))

(declare-fun bs!1199287 () Bool)

(assert (= bs!1199287 (and b!5133232 d!1661090)))

(assert (=> bs!1199287 (not (= lambda!255346 lambda!255345))))

(declare-fun bs!1199288 () Bool)

(assert (= bs!1199288 (and b!5133232 d!1661060)))

(assert (=> bs!1199288 (not (= lambda!255346 lambda!255329))))

(declare-fun bs!1199289 () Bool)

(assert (= bs!1199289 (and b!5133232 d!1661058)))

(assert (=> bs!1199289 (not (= lambda!255346 lambda!255326))))

(declare-fun bs!1199290 () Bool)

(assert (= bs!1199290 (and b!5133232 b!5133184)))

(assert (=> bs!1199290 (= lambda!255346 lambda!255327)))

(declare-fun bs!1199291 () Bool)

(assert (= bs!1199291 (and b!5133232 b!5133091)))

(assert (=> bs!1199291 (not (= lambda!255346 lambda!255262))))

(declare-fun bs!1199292 () Bool)

(assert (= bs!1199292 (and b!5133232 b!5133187)))

(assert (=> bs!1199292 (= lambda!255346 lambda!255331)))

(declare-fun bs!1199293 () Bool)

(assert (= bs!1199293 (and b!5133232 b!5133186)))

(assert (=> bs!1199293 (= lambda!255346 lambda!255330)))

(declare-fun bs!1199294 () Bool)

(assert (= bs!1199294 (and b!5133232 b!5133166)))

(assert (=> bs!1199294 (= lambda!255346 lambda!255324)))

(declare-fun bs!1199295 () Bool)

(assert (= bs!1199295 (and b!5133232 d!1661080)))

(assert (=> bs!1199295 (not (= lambda!255346 lambda!255341))))

(declare-fun bs!1199296 () Bool)

(assert (= bs!1199296 (and b!5133232 b!5133086)))

(assert (=> bs!1199296 (= lambda!255346 lambda!255263)))

(declare-fun bs!1199297 () Bool)

(declare-fun b!5133233 () Bool)

(assert (= bs!1199297 (and b!5133233 d!1661086)))

(declare-fun lambda!255347 () Int)

(assert (=> bs!1199297 (not (= lambda!255347 lambda!255344))))

(declare-fun bs!1199298 () Bool)

(assert (= bs!1199298 (and b!5133233 d!1661078)))

(assert (=> bs!1199298 (not (= lambda!255347 lambda!255338))))

(declare-fun bs!1199299 () Bool)

(assert (= bs!1199299 (and b!5133233 b!5133087)))

(assert (=> bs!1199299 (not (= lambda!255347 lambda!255264))))

(declare-fun bs!1199300 () Bool)

(assert (= bs!1199300 (and b!5133233 d!1661028)))

(assert (=> bs!1199300 (not (= lambda!255347 lambda!255323))))

(declare-fun bs!1199301 () Bool)

(assert (= bs!1199301 (and b!5133233 b!5133185)))

(assert (=> bs!1199301 (= lambda!255347 lambda!255328)))

(declare-fun bs!1199302 () Bool)

(assert (= bs!1199302 (and b!5133233 d!1661090)))

(assert (=> bs!1199302 (not (= lambda!255347 lambda!255345))))

(declare-fun bs!1199303 () Bool)

(assert (= bs!1199303 (and b!5133233 d!1661060)))

(assert (=> bs!1199303 (not (= lambda!255347 lambda!255329))))

(declare-fun bs!1199304 () Bool)

(assert (= bs!1199304 (and b!5133233 d!1661058)))

(assert (=> bs!1199304 (not (= lambda!255347 lambda!255326))))

(declare-fun bs!1199305 () Bool)

(assert (= bs!1199305 (and b!5133233 b!5133184)))

(assert (=> bs!1199305 (= lambda!255347 lambda!255327)))

(declare-fun bs!1199306 () Bool)

(assert (= bs!1199306 (and b!5133233 b!5133091)))

(assert (=> bs!1199306 (not (= lambda!255347 lambda!255262))))

(declare-fun bs!1199307 () Bool)

(assert (= bs!1199307 (and b!5133233 b!5133187)))

(assert (=> bs!1199307 (= lambda!255347 lambda!255331)))

(declare-fun bs!1199308 () Bool)

(assert (= bs!1199308 (and b!5133233 b!5133167)))

(assert (=> bs!1199308 (= lambda!255347 lambda!255325)))

(declare-fun bs!1199309 () Bool)

(assert (= bs!1199309 (and b!5133233 b!5133232)))

(assert (=> bs!1199309 (= lambda!255347 lambda!255346)))

(declare-fun bs!1199310 () Bool)

(assert (= bs!1199310 (and b!5133233 b!5133186)))

(assert (=> bs!1199310 (= lambda!255347 lambda!255330)))

(declare-fun bs!1199311 () Bool)

(assert (= bs!1199311 (and b!5133233 b!5133166)))

(assert (=> bs!1199311 (= lambda!255347 lambda!255324)))

(declare-fun bs!1199312 () Bool)

(assert (= bs!1199312 (and b!5133233 d!1661080)))

(assert (=> bs!1199312 (not (= lambda!255347 lambda!255341))))

(declare-fun bs!1199313 () Bool)

(assert (= bs!1199313 (and b!5133233 b!5133086)))

(assert (=> bs!1199313 (= lambda!255347 lambda!255263)))

(declare-fun lt!2118454 () Bool)

(assert (=> d!1661090 (= lt!2118454 (isEmpty!32010 (getLanguageWitness!886 z!1054)))))

(assert (=> d!1661090 (= lt!2118454 (forall!13821 z!1054 lambda!255345))))

(declare-fun lt!2118453 () Unit!150875)

(declare-fun e!3201696 () Unit!150875)

(assert (=> d!1661090 (= lt!2118453 e!3201696)))

(declare-fun c!883450 () Bool)

(assert (=> d!1661090 (= c!883450 (not (forall!13821 z!1054 lambda!255345)))))

(assert (=> d!1661090 (= (lostCauseZipper!1213 z!1054) lt!2118454)))

(declare-fun call!357325 () Bool)

(declare-fun lt!2118457 () List!59684)

(declare-fun lt!2118455 () List!59684)

(declare-fun bm!357320 () Bool)

(assert (=> bm!357320 (= call!357325 (exists!1701 (ite c!883450 lt!2118455 lt!2118457) (ite c!883450 lambda!255346 lambda!255347)))))

(declare-fun Unit!150893 () Unit!150875)

(assert (=> b!5133232 (= e!3201696 Unit!150893)))

(declare-fun call!357324 () List!59684)

(assert (=> b!5133232 (= lt!2118455 call!357324)))

(declare-fun lt!2118456 () Unit!150875)

(assert (=> b!5133232 (= lt!2118456 (lemmaNotForallThenExists!402 lt!2118455 lambda!255345))))

(assert (=> b!5133232 call!357325))

(declare-fun lt!2118452 () Unit!150875)

(assert (=> b!5133232 (= lt!2118452 lt!2118456)))

(declare-fun Unit!150894 () Unit!150875)

(assert (=> b!5133233 (= e!3201696 Unit!150894)))

(assert (=> b!5133233 (= lt!2118457 call!357324)))

(declare-fun lt!2118450 () Unit!150875)

(assert (=> b!5133233 (= lt!2118450 (lemmaForallThenNotExists!371 lt!2118457 lambda!255345))))

(assert (=> b!5133233 (not call!357325)))

(declare-fun lt!2118451 () Unit!150875)

(assert (=> b!5133233 (= lt!2118451 lt!2118450)))

(declare-fun bm!357319 () Bool)

(assert (=> bm!357319 (= call!357324 (toList!8354 z!1054))))

(assert (= (and d!1661090 c!883450) b!5133232))

(assert (= (and d!1661090 (not c!883450)) b!5133233))

(assert (= (or b!5133232 b!5133233) bm!357319))

(assert (= (or b!5133232 b!5133233) bm!357320))

(declare-fun m!6199380 () Bool)

(assert (=> b!5133233 m!6199380))

(declare-fun m!6199382 () Bool)

(assert (=> d!1661090 m!6199382))

(assert (=> d!1661090 m!6199382))

(declare-fun m!6199384 () Bool)

(assert (=> d!1661090 m!6199384))

(declare-fun m!6199386 () Bool)

(assert (=> d!1661090 m!6199386))

(assert (=> d!1661090 m!6199386))

(declare-fun m!6199388 () Bool)

(assert (=> b!5133232 m!6199388))

(assert (=> bm!357319 m!6199050))

(declare-fun m!6199390 () Bool)

(assert (=> bm!357320 m!6199390))

(assert (=> start!543032 d!1661090))

(declare-fun d!1661092 () Bool)

(declare-fun choose!37953 ((InoxSet Context!7506) Int) (InoxSet Context!7506))

(assert (=> d!1661092 (= (flatMap!420 z!1054 lambda!255261) (choose!37953 z!1054 lambda!255261))))

(declare-fun bs!1199314 () Bool)

(assert (= bs!1199314 d!1661092))

(declare-fun m!6199392 () Bool)

(assert (=> bs!1199314 m!6199392))

(assert (=> b!5133092 d!1661092))

(declare-fun bs!1199315 () Bool)

(declare-fun d!1661094 () Bool)

(assert (= bs!1199315 (and d!1661094 b!5133092)))

(declare-fun lambda!255350 () Int)

(assert (=> bs!1199315 (= lambda!255350 lambda!255261)))

(assert (=> d!1661094 true))

(assert (=> d!1661094 (= (derivationStepZipper!924 z!1054 a!1233) (flatMap!420 z!1054 lambda!255350))))

(declare-fun bs!1199316 () Bool)

(assert (= bs!1199316 d!1661094))

(declare-fun m!6199394 () Bool)

(assert (=> bs!1199316 m!6199394))

(assert (=> b!5133092 d!1661094))

(assert (=> b!5133084 d!1661024))

(declare-fun b!5133238 () Bool)

(declare-fun e!3201699 () Bool)

(declare-fun tp!1431926 () Bool)

(declare-fun tp!1431927 () Bool)

(assert (=> b!5133238 (= e!3201699 (and tp!1431926 tp!1431927))))

(assert (=> b!5133082 (= tp!1431908 e!3201699)))

(assert (= (and b!5133082 ((_ is Cons!59559) (exprs!4253 setElem!31230))) b!5133238))

(declare-fun condSetEmpty!31236 () Bool)

(assert (=> setNonEmpty!31230 (= condSetEmpty!31236 (= setRest!31230 ((as const (Array Context!7506 Bool)) false)))))

(declare-fun setRes!31236 () Bool)

(assert (=> setNonEmpty!31230 (= tp!1431909 setRes!31236)))

(declare-fun setIsEmpty!31236 () Bool)

(assert (=> setIsEmpty!31236 setRes!31236))

(declare-fun e!3201702 () Bool)

(declare-fun setNonEmpty!31236 () Bool)

(declare-fun setElem!31236 () Context!7506)

(declare-fun tp!1431932 () Bool)

(assert (=> setNonEmpty!31236 (= setRes!31236 (and tp!1431932 (inv!79103 setElem!31236) e!3201702))))

(declare-fun setRest!31236 () (InoxSet Context!7506))

(assert (=> setNonEmpty!31236 (= setRest!31230 ((_ map or) (store ((as const (Array Context!7506 Bool)) false) setElem!31236 true) setRest!31236))))

(declare-fun b!5133243 () Bool)

(declare-fun tp!1431933 () Bool)

(assert (=> b!5133243 (= e!3201702 tp!1431933)))

(assert (= (and setNonEmpty!31230 condSetEmpty!31236) setIsEmpty!31236))

(assert (= (and setNonEmpty!31230 (not condSetEmpty!31236)) setNonEmpty!31236))

(assert (= setNonEmpty!31236 b!5133243))

(declare-fun m!6199396 () Bool)

(assert (=> setNonEmpty!31236 m!6199396))

(declare-fun b_lambda!199979 () Bool)

(assert (= b_lambda!199975 (or b!5133086 b_lambda!199979)))

(declare-fun bs!1199317 () Bool)

(declare-fun d!1661096 () Bool)

(assert (= bs!1199317 (and d!1661096 b!5133086)))

(assert (=> bs!1199317 (= (dynLambda!23716 lambda!255263 lt!2118449) (not (lostCause!1311 lt!2118449)))))

(declare-fun m!6199398 () Bool)

(assert (=> bs!1199317 m!6199398))

(assert (=> d!1661088 d!1661096))

(declare-fun b_lambda!199981 () Bool)

(assert (= b_lambda!199977 (or b!5133086 b_lambda!199981)))

(declare-fun bs!1199318 () Bool)

(declare-fun d!1661098 () Bool)

(assert (= bs!1199318 (and d!1661098 b!5133086)))

(assert (=> bs!1199318 (= (dynLambda!23716 lambda!255263 (h!66008 lt!2118290)) (not (lostCause!1311 (h!66008 lt!2118290))))))

(declare-fun m!6199400 () Bool)

(assert (=> bs!1199318 m!6199400))

(assert (=> b!5133226 d!1661098))

(declare-fun b_lambda!199983 () Bool)

(assert (= b_lambda!199973 (or b!5133087 b_lambda!199983)))

(declare-fun bs!1199319 () Bool)

(declare-fun d!1661100 () Bool)

(assert (= bs!1199319 (and d!1661100 b!5133087)))

(assert (=> bs!1199319 (= (dynLambda!23716 lambda!255264 lt!2118432) (select (derivationStepZipperUp!73 lt!2118432 a!1233) lt!2118287))))

(declare-fun m!6199402 () Bool)

(assert (=> bs!1199319 m!6199402))

(declare-fun m!6199404 () Bool)

(assert (=> bs!1199319 m!6199404))

(assert (=> d!1661072 d!1661100))

(declare-fun b_lambda!199985 () Bool)

(assert (= b_lambda!199949 (or b!5133091 b_lambda!199985)))

(declare-fun bs!1199320 () Bool)

(declare-fun d!1661102 () Bool)

(assert (= bs!1199320 (and d!1661102 b!5133091)))

(assert (=> bs!1199320 (= (dynLambda!23716 lambda!255262 lt!2118287) (lostCause!1311 lt!2118287))))

(assert (=> bs!1199320 m!6199040))

(assert (=> d!1661008 d!1661102))

(declare-fun b_lambda!199987 () Bool)

(assert (= b_lambda!199971 (or b!5133091 b_lambda!199987)))

(declare-fun bs!1199321 () Bool)

(declare-fun d!1661104 () Bool)

(assert (= bs!1199321 (and d!1661104 b!5133091)))

(assert (=> bs!1199321 (= (dynLambda!23716 lambda!255262 lt!2118284) (lostCause!1311 lt!2118284))))

(assert (=> bs!1199321 m!6199048))

(assert (=> d!1661068 d!1661104))

(check-sat tp_is_empty!37911 (not d!1661082) (not d!1661028) (not b!5133128) (not bm!357315) (not b!5133243) (not bm!357311) (not d!1661080) (not b!5133232) (not d!1661092) (not d!1661086) (not d!1661008) (not d!1661024) (not b!5133167) (not b!5133203) (not setNonEmpty!31236) (not bm!357313) (not d!1661064) (not b_lambda!199987) (not b!5133186) (not b_lambda!199979) (not b_lambda!199981) (not b!5133210) (not d!1661094) (not d!1661058) (not d!1661078) (not bs!1199321) (not b!5133139) (not bm!357320) (not d!1661090) (not d!1661088) (not d!1661056) (not b!5133204) (not b!5133202) (not d!1661068) (not b!5133185) (not bm!357312) (not bm!357319) (not bs!1199320) (not b!5133166) (not b_lambda!199985) (not d!1661070) (not d!1661066) (not b!5133229) (not b!5133228) (not b_lambda!199983) (not b!5133231) (not bs!1199318) (not b!5133184) (not b!5133187) (not d!1661084) (not d!1660996) (not d!1661060) (not d!1661012) (not b!5133233) (not bs!1199317) (not b!5133238) (not d!1661072) (not b!5133198) (not d!1661076) (not bm!357314) (not d!1661074) (not bm!357310) (not bs!1199319) (not bm!357318))
(check-sat)
