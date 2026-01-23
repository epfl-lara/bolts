; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691220 () Bool)

(assert start!691220)

(declare-fun b!7100643 () Bool)

(assert (=> b!7100643 true))

(declare-fun b!7100632 () Bool)

(declare-fun e!4267966 () Bool)

(declare-fun e!4267970 () Bool)

(assert (=> b!7100632 (= e!4267966 e!4267970)))

(declare-fun res!2899321 () Bool)

(assert (=> b!7100632 (=> res!2899321 e!4267970)))

(declare-datatypes ((C!36024 0))(
  ( (C!36025 (val!27718 Int)) )
))
(declare-datatypes ((Regex!17877 0))(
  ( (ElementMatch!17877 (c!1324894 C!36024)) (Concat!26722 (regOne!36266 Regex!17877) (regTwo!36266 Regex!17877)) (EmptyExpr!17877) (Star!17877 (reg!18206 Regex!17877)) (EmptyLang!17877) (Union!17877 (regOne!36267 Regex!17877) (regTwo!36267 Regex!17877)) )
))
(declare-datatypes ((List!68838 0))(
  ( (Nil!68714) (Cons!68714 (h!75162 Regex!17877) (t!382649 List!68838)) )
))
(declare-datatypes ((Context!13742 0))(
  ( (Context!13743 (exprs!7371 List!68838)) )
))
(declare-fun c!9994 () Context!13742)

(declare-fun lambda!431003 () Int)

(declare-fun forall!16783 (List!68838 Int) Bool)

(assert (=> b!7100632 (= res!2899321 (not (forall!16783 (exprs!7371 c!9994) lambda!431003)))))

(declare-fun b!7100633 () Bool)

(declare-fun e!4267971 () Bool)

(assert (=> b!7100633 (= e!4267971 (not e!4267966))))

(declare-fun res!2899326 () Bool)

(assert (=> b!7100633 (=> res!2899326 e!4267966)))

(declare-fun a!1901 () C!36024)

(declare-fun r!11554 () Regex!17877)

(declare-fun auxCtx!45 () Context!13742)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2406 (Regex!17877 Context!13742 C!36024) (InoxSet Context!13742))

(declare-fun ++!16029 (List!68838 List!68838) List!68838)

(declare-fun appendTo!910 ((InoxSet Context!13742) Context!13742) (InoxSet Context!13742))

(assert (=> b!7100633 (= res!2899326 (not (= (derivationStepZipperDown!2406 r!11554 (Context!13743 (++!16029 (exprs!7371 c!9994) (exprs!7371 auxCtx!45))) a!1901) (appendTo!910 (derivationStepZipperDown!2406 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-datatypes ((Unit!162425 0))(
  ( (Unit!162426) )
))
(declare-fun lt!2558082 () Unit!162425)

(declare-fun lemmaConcatPreservesForall!1162 (List!68838 List!68838 Int) Unit!162425)

(assert (=> b!7100633 (= lt!2558082 (lemmaConcatPreservesForall!1162 (exprs!7371 c!9994) (exprs!7371 auxCtx!45) lambda!431003))))

(declare-fun lambda!431002 () Int)

(declare-fun map!16222 ((InoxSet Context!13742) Int) (InoxSet Context!13742))

(assert (=> b!7100633 (= (map!16222 ((as const (Array Context!13742 Bool)) false) lambda!431002) ((as const (Array Context!13742 Bool)) false))))

(declare-fun lt!2558081 () Unit!162425)

(declare-fun lemmaMapOnEmptySetIsEmpty!12 ((InoxSet Context!13742) Int) Unit!162425)

(assert (=> b!7100633 (= lt!2558081 (lemmaMapOnEmptySetIsEmpty!12 ((as const (Array Context!13742 Bool)) false) lambda!431002))))

(declare-fun b!7100634 () Bool)

(declare-fun res!2899325 () Bool)

(assert (=> b!7100634 (=> (not res!2899325) (not e!4267971))))

(declare-fun e!4267967 () Bool)

(assert (=> b!7100634 (= res!2899325 e!4267967)))

(declare-fun res!2899324 () Bool)

(assert (=> b!7100634 (=> res!2899324 e!4267967)))

(get-info :version)

(assert (=> b!7100634 (= res!2899324 (not ((_ is Concat!26722) r!11554)))))

(declare-fun b!7100635 () Bool)

(declare-fun e!4267972 () Bool)

(declare-fun tp!1952014 () Bool)

(assert (=> b!7100635 (= e!4267972 tp!1952014)))

(declare-fun b!7100636 () Bool)

(declare-fun e!4267965 () Bool)

(declare-fun tp!1952016 () Bool)

(declare-fun tp!1952018 () Bool)

(assert (=> b!7100636 (= e!4267965 (and tp!1952016 tp!1952018))))

(declare-fun b!7100637 () Bool)

(declare-fun tp_is_empty!44987 () Bool)

(assert (=> b!7100637 (= e!4267965 tp_is_empty!44987)))

(declare-fun b!7100638 () Bool)

(declare-fun res!2899323 () Bool)

(assert (=> b!7100638 (=> (not res!2899323) (not e!4267971))))

(assert (=> b!7100638 (= res!2899323 (and (not ((_ is Concat!26722) r!11554)) (not ((_ is Star!17877) r!11554))))))

(declare-fun b!7100639 () Bool)

(assert (=> b!7100639 (= e!4267970 (forall!16783 (exprs!7371 auxCtx!45) lambda!431003))))

(declare-fun b!7100640 () Bool)

(declare-fun tp!1952012 () Bool)

(declare-fun tp!1952017 () Bool)

(assert (=> b!7100640 (= e!4267965 (and tp!1952012 tp!1952017))))

(declare-fun b!7100642 () Bool)

(declare-fun e!4267968 () Bool)

(declare-fun tp!1952015 () Bool)

(assert (=> b!7100642 (= e!4267968 tp!1952015)))

(declare-fun e!4267969 () Bool)

(assert (=> b!7100643 (= e!4267969 e!4267971)))

(declare-fun res!2899320 () Bool)

(assert (=> b!7100643 (=> (not res!2899320) (not e!4267971))))

(assert (=> b!7100643 (= res!2899320 (and (or (not ((_ is ElementMatch!17877) r!11554)) (not (= (c!1324894 r!11554) a!1901))) (not ((_ is Union!17877) r!11554))))))

(declare-fun b!7100644 () Bool)

(declare-fun tp!1952013 () Bool)

(assert (=> b!7100644 (= e!4267965 tp!1952013)))

(declare-fun b!7100641 () Bool)

(declare-fun nullable!7515 (Regex!17877) Bool)

(assert (=> b!7100641 (= e!4267967 (not (nullable!7515 (regOne!36266 r!11554))))))

(declare-fun res!2899322 () Bool)

(assert (=> start!691220 (=> (not res!2899322) (not e!4267969))))

(declare-fun validRegex!9150 (Regex!17877) Bool)

(assert (=> start!691220 (= res!2899322 (validRegex!9150 r!11554))))

(assert (=> start!691220 e!4267969))

(assert (=> start!691220 e!4267965))

(declare-fun inv!87555 (Context!13742) Bool)

(assert (=> start!691220 (and (inv!87555 c!9994) e!4267968)))

(assert (=> start!691220 tp_is_empty!44987))

(assert (=> start!691220 (and (inv!87555 auxCtx!45) e!4267972)))

(assert (= (and start!691220 res!2899322) b!7100643))

(assert (= (and b!7100643 res!2899320) b!7100634))

(assert (= (and b!7100634 (not res!2899324)) b!7100641))

(assert (= (and b!7100634 res!2899325) b!7100638))

(assert (= (and b!7100638 res!2899323) b!7100633))

(assert (= (and b!7100633 (not res!2899326)) b!7100632))

(assert (= (and b!7100632 (not res!2899321)) b!7100639))

(assert (= (and start!691220 ((_ is ElementMatch!17877) r!11554)) b!7100637))

(assert (= (and start!691220 ((_ is Concat!26722) r!11554)) b!7100636))

(assert (= (and start!691220 ((_ is Star!17877) r!11554)) b!7100644))

(assert (= (and start!691220 ((_ is Union!17877) r!11554)) b!7100640))

(assert (= start!691220 b!7100642))

(assert (= start!691220 b!7100635))

(declare-fun m!7826230 () Bool)

(assert (=> b!7100639 m!7826230))

(declare-fun m!7826232 () Bool)

(assert (=> b!7100633 m!7826232))

(declare-fun m!7826234 () Bool)

(assert (=> b!7100633 m!7826234))

(declare-fun m!7826236 () Bool)

(assert (=> b!7100633 m!7826236))

(declare-fun m!7826238 () Bool)

(assert (=> b!7100633 m!7826238))

(assert (=> b!7100633 m!7826232))

(declare-fun m!7826240 () Bool)

(assert (=> b!7100633 m!7826240))

(declare-fun m!7826242 () Bool)

(assert (=> b!7100633 m!7826242))

(declare-fun m!7826244 () Bool)

(assert (=> b!7100633 m!7826244))

(declare-fun m!7826246 () Bool)

(assert (=> start!691220 m!7826246))

(declare-fun m!7826248 () Bool)

(assert (=> start!691220 m!7826248))

(declare-fun m!7826250 () Bool)

(assert (=> start!691220 m!7826250))

(declare-fun m!7826252 () Bool)

(assert (=> b!7100632 m!7826252))

(declare-fun m!7826254 () Bool)

(assert (=> b!7100641 m!7826254))

(check-sat (not b!7100644) (not b!7100640) (not b!7100632) (not b!7100636) tp_is_empty!44987 (not b!7100639) (not b!7100633) (not start!691220) (not b!7100635) (not b!7100642) (not b!7100641))
(check-sat)
(get-model)

(declare-fun d!2218540 () Bool)

(declare-fun res!2899332 () Bool)

(declare-fun e!4267977 () Bool)

(assert (=> d!2218540 (=> res!2899332 e!4267977)))

(assert (=> d!2218540 (= res!2899332 ((_ is Nil!68714) (exprs!7371 auxCtx!45)))))

(assert (=> d!2218540 (= (forall!16783 (exprs!7371 auxCtx!45) lambda!431003) e!4267977)))

(declare-fun b!7100651 () Bool)

(declare-fun e!4267978 () Bool)

(assert (=> b!7100651 (= e!4267977 e!4267978)))

(declare-fun res!2899333 () Bool)

(assert (=> b!7100651 (=> (not res!2899333) (not e!4267978))))

(declare-fun dynLambda!28045 (Int Regex!17877) Bool)

(assert (=> b!7100651 (= res!2899333 (dynLambda!28045 lambda!431003 (h!75162 (exprs!7371 auxCtx!45))))))

(declare-fun b!7100652 () Bool)

(assert (=> b!7100652 (= e!4267978 (forall!16783 (t!382649 (exprs!7371 auxCtx!45)) lambda!431003))))

(assert (= (and d!2218540 (not res!2899332)) b!7100651))

(assert (= (and b!7100651 res!2899333) b!7100652))

(declare-fun b_lambda!271297 () Bool)

(assert (=> (not b_lambda!271297) (not b!7100651)))

(declare-fun m!7826256 () Bool)

(assert (=> b!7100651 m!7826256))

(declare-fun m!7826258 () Bool)

(assert (=> b!7100652 m!7826258))

(assert (=> b!7100639 d!2218540))

(declare-fun d!2218542 () Bool)

(assert (=> d!2218542 (= (map!16222 ((as const (Array Context!13742 Bool)) false) lambda!431002) ((as const (Array Context!13742 Bool)) false))))

(declare-fun lt!2558085 () Unit!162425)

(declare-fun choose!54755 ((InoxSet Context!13742) Int) Unit!162425)

(assert (=> d!2218542 (= lt!2558085 (choose!54755 ((as const (Array Context!13742 Bool)) false) lambda!431002))))

(assert (=> d!2218542 (= ((as const (Array Context!13742 Bool)) false) ((as const (Array Context!13742 Bool)) false))))

(assert (=> d!2218542 (= (lemmaMapOnEmptySetIsEmpty!12 ((as const (Array Context!13742 Bool)) false) lambda!431002) lt!2558085)))

(declare-fun bs!1884269 () Bool)

(assert (= bs!1884269 d!2218542))

(assert (=> bs!1884269 m!7826236))

(declare-fun m!7826260 () Bool)

(assert (=> bs!1884269 m!7826260))

(assert (=> b!7100633 d!2218542))

(declare-fun d!2218544 () Bool)

(declare-fun choose!54756 ((InoxSet Context!13742) Int) (InoxSet Context!13742))

(assert (=> d!2218544 (= (map!16222 ((as const (Array Context!13742 Bool)) false) lambda!431002) (choose!54756 ((as const (Array Context!13742 Bool)) false) lambda!431002))))

(declare-fun bs!1884270 () Bool)

(assert (= bs!1884270 d!2218544))

(declare-fun m!7826262 () Bool)

(assert (=> bs!1884270 m!7826262))

(assert (=> b!7100633 d!2218544))

(declare-fun bm!646495 () Bool)

(declare-fun call!646505 () (InoxSet Context!13742))

(declare-fun call!646501 () (InoxSet Context!13742))

(assert (=> bm!646495 (= call!646505 call!646501)))

(declare-fun c!1324906 () Bool)

(declare-fun call!646502 () List!68838)

(declare-fun bm!646496 () Bool)

(declare-fun call!646503 () (InoxSet Context!13742))

(assert (=> bm!646496 (= call!646503 (derivationStepZipperDown!2406 (ite c!1324906 (regTwo!36267 r!11554) (regOne!36266 r!11554)) (ite c!1324906 c!9994 (Context!13743 call!646502)) a!1901))))

(declare-fun b!7100675 () Bool)

(declare-fun e!4267991 () (InoxSet Context!13742))

(assert (=> b!7100675 (= e!4267991 call!646505)))

(declare-fun bm!646497 () Bool)

(declare-fun c!1324909 () Bool)

(declare-fun c!1324908 () Bool)

(declare-fun $colon$colon!2749 (List!68838 Regex!17877) List!68838)

(assert (=> bm!646497 (= call!646502 ($colon$colon!2749 (exprs!7371 c!9994) (ite (or c!1324908 c!1324909) (regTwo!36266 r!11554) r!11554)))))

(declare-fun b!7100676 () Bool)

(assert (=> b!7100676 (= e!4267991 ((as const (Array Context!13742 Bool)) false))))

(declare-fun b!7100677 () Bool)

(declare-fun e!4267994 () Bool)

(assert (=> b!7100677 (= e!4267994 (nullable!7515 (regOne!36266 r!11554)))))

(declare-fun b!7100678 () Bool)

(declare-fun e!4267995 () (InoxSet Context!13742))

(assert (=> b!7100678 (= e!4267995 (store ((as const (Array Context!13742 Bool)) false) c!9994 true))))

(declare-fun b!7100679 () Bool)

(declare-fun e!4267996 () (InoxSet Context!13742))

(assert (=> b!7100679 (= e!4267995 e!4267996)))

(assert (=> b!7100679 (= c!1324906 ((_ is Union!17877) r!11554))))

(declare-fun d!2218546 () Bool)

(declare-fun c!1324910 () Bool)

(assert (=> d!2218546 (= c!1324910 (and ((_ is ElementMatch!17877) r!11554) (= (c!1324894 r!11554) a!1901)))))

(assert (=> d!2218546 (= (derivationStepZipperDown!2406 r!11554 c!9994 a!1901) e!4267995)))

(declare-fun b!7100680 () Bool)

(declare-fun e!4267993 () (InoxSet Context!13742))

(assert (=> b!7100680 (= e!4267993 ((_ map or) call!646503 call!646501))))

(declare-fun bm!646498 () Bool)

(declare-fun call!646500 () (InoxSet Context!13742))

(assert (=> bm!646498 (= call!646501 call!646500)))

(declare-fun b!7100681 () Bool)

(declare-fun e!4267992 () (InoxSet Context!13742))

(assert (=> b!7100681 (= e!4267993 e!4267992)))

(assert (=> b!7100681 (= c!1324909 ((_ is Concat!26722) r!11554))))

(declare-fun b!7100682 () Bool)

(assert (=> b!7100682 (= e!4267996 ((_ map or) call!646500 call!646503))))

(declare-fun b!7100683 () Bool)

(assert (=> b!7100683 (= e!4267992 call!646505)))

(declare-fun b!7100684 () Bool)

(declare-fun c!1324907 () Bool)

(assert (=> b!7100684 (= c!1324907 ((_ is Star!17877) r!11554))))

(assert (=> b!7100684 (= e!4267992 e!4267991)))

(declare-fun call!646504 () List!68838)

(declare-fun bm!646499 () Bool)

(assert (=> bm!646499 (= call!646500 (derivationStepZipperDown!2406 (ite c!1324906 (regOne!36267 r!11554) (ite c!1324908 (regTwo!36266 r!11554) (ite c!1324909 (regOne!36266 r!11554) (reg!18206 r!11554)))) (ite (or c!1324906 c!1324908) c!9994 (Context!13743 call!646504)) a!1901))))

(declare-fun bm!646500 () Bool)

(assert (=> bm!646500 (= call!646504 call!646502)))

(declare-fun b!7100685 () Bool)

(assert (=> b!7100685 (= c!1324908 e!4267994)))

(declare-fun res!2899337 () Bool)

(assert (=> b!7100685 (=> (not res!2899337) (not e!4267994))))

(assert (=> b!7100685 (= res!2899337 ((_ is Concat!26722) r!11554))))

(assert (=> b!7100685 (= e!4267996 e!4267993)))

(assert (= (and d!2218546 c!1324910) b!7100678))

(assert (= (and d!2218546 (not c!1324910)) b!7100679))

(assert (= (and b!7100679 c!1324906) b!7100682))

(assert (= (and b!7100679 (not c!1324906)) b!7100685))

(assert (= (and b!7100685 res!2899337) b!7100677))

(assert (= (and b!7100685 c!1324908) b!7100680))

(assert (= (and b!7100685 (not c!1324908)) b!7100681))

(assert (= (and b!7100681 c!1324909) b!7100683))

(assert (= (and b!7100681 (not c!1324909)) b!7100684))

(assert (= (and b!7100684 c!1324907) b!7100675))

(assert (= (and b!7100684 (not c!1324907)) b!7100676))

(assert (= (or b!7100683 b!7100675) bm!646500))

(assert (= (or b!7100683 b!7100675) bm!646495))

(assert (= (or b!7100680 bm!646495) bm!646498))

(assert (= (or b!7100680 bm!646500) bm!646497))

(assert (= (or b!7100682 b!7100680) bm!646496))

(assert (= (or b!7100682 bm!646498) bm!646499))

(declare-fun m!7826272 () Bool)

(assert (=> bm!646496 m!7826272))

(declare-fun m!7826274 () Bool)

(assert (=> bm!646497 m!7826274))

(declare-fun m!7826276 () Bool)

(assert (=> b!7100678 m!7826276))

(declare-fun m!7826278 () Bool)

(assert (=> bm!646499 m!7826278))

(assert (=> b!7100677 m!7826254))

(assert (=> b!7100633 d!2218546))

(declare-fun bm!646501 () Bool)

(declare-fun call!646511 () (InoxSet Context!13742))

(declare-fun call!646507 () (InoxSet Context!13742))

(assert (=> bm!646501 (= call!646511 call!646507)))

(declare-fun call!646508 () List!68838)

(declare-fun c!1324911 () Bool)

(declare-fun call!646509 () (InoxSet Context!13742))

(declare-fun bm!646502 () Bool)

(assert (=> bm!646502 (= call!646509 (derivationStepZipperDown!2406 (ite c!1324911 (regTwo!36267 r!11554) (regOne!36266 r!11554)) (ite c!1324911 (Context!13743 (++!16029 (exprs!7371 c!9994) (exprs!7371 auxCtx!45))) (Context!13743 call!646508)) a!1901))))

(declare-fun b!7100686 () Bool)

(declare-fun e!4267997 () (InoxSet Context!13742))

(assert (=> b!7100686 (= e!4267997 call!646511)))

(declare-fun c!1324914 () Bool)

(declare-fun bm!646503 () Bool)

(declare-fun c!1324913 () Bool)

(assert (=> bm!646503 (= call!646508 ($colon$colon!2749 (exprs!7371 (Context!13743 (++!16029 (exprs!7371 c!9994) (exprs!7371 auxCtx!45)))) (ite (or c!1324913 c!1324914) (regTwo!36266 r!11554) r!11554)))))

(declare-fun b!7100687 () Bool)

(assert (=> b!7100687 (= e!4267997 ((as const (Array Context!13742 Bool)) false))))

(declare-fun b!7100688 () Bool)

(declare-fun e!4268000 () Bool)

(assert (=> b!7100688 (= e!4268000 (nullable!7515 (regOne!36266 r!11554)))))

(declare-fun b!7100689 () Bool)

(declare-fun e!4268001 () (InoxSet Context!13742))

(assert (=> b!7100689 (= e!4268001 (store ((as const (Array Context!13742 Bool)) false) (Context!13743 (++!16029 (exprs!7371 c!9994) (exprs!7371 auxCtx!45))) true))))

(declare-fun b!7100690 () Bool)

(declare-fun e!4268002 () (InoxSet Context!13742))

(assert (=> b!7100690 (= e!4268001 e!4268002)))

(assert (=> b!7100690 (= c!1324911 ((_ is Union!17877) r!11554))))

(declare-fun d!2218556 () Bool)

(declare-fun c!1324915 () Bool)

(assert (=> d!2218556 (= c!1324915 (and ((_ is ElementMatch!17877) r!11554) (= (c!1324894 r!11554) a!1901)))))

(assert (=> d!2218556 (= (derivationStepZipperDown!2406 r!11554 (Context!13743 (++!16029 (exprs!7371 c!9994) (exprs!7371 auxCtx!45))) a!1901) e!4268001)))

(declare-fun b!7100691 () Bool)

(declare-fun e!4267999 () (InoxSet Context!13742))

(assert (=> b!7100691 (= e!4267999 ((_ map or) call!646509 call!646507))))

(declare-fun bm!646504 () Bool)

(declare-fun call!646506 () (InoxSet Context!13742))

(assert (=> bm!646504 (= call!646507 call!646506)))

(declare-fun b!7100692 () Bool)

(declare-fun e!4267998 () (InoxSet Context!13742))

(assert (=> b!7100692 (= e!4267999 e!4267998)))

(assert (=> b!7100692 (= c!1324914 ((_ is Concat!26722) r!11554))))

(declare-fun b!7100693 () Bool)

(assert (=> b!7100693 (= e!4268002 ((_ map or) call!646506 call!646509))))

(declare-fun b!7100694 () Bool)

(assert (=> b!7100694 (= e!4267998 call!646511)))

(declare-fun b!7100695 () Bool)

(declare-fun c!1324912 () Bool)

(assert (=> b!7100695 (= c!1324912 ((_ is Star!17877) r!11554))))

(assert (=> b!7100695 (= e!4267998 e!4267997)))

(declare-fun call!646510 () List!68838)

(declare-fun bm!646505 () Bool)

(assert (=> bm!646505 (= call!646506 (derivationStepZipperDown!2406 (ite c!1324911 (regOne!36267 r!11554) (ite c!1324913 (regTwo!36266 r!11554) (ite c!1324914 (regOne!36266 r!11554) (reg!18206 r!11554)))) (ite (or c!1324911 c!1324913) (Context!13743 (++!16029 (exprs!7371 c!9994) (exprs!7371 auxCtx!45))) (Context!13743 call!646510)) a!1901))))

(declare-fun bm!646506 () Bool)

(assert (=> bm!646506 (= call!646510 call!646508)))

(declare-fun b!7100696 () Bool)

(assert (=> b!7100696 (= c!1324913 e!4268000)))

(declare-fun res!2899338 () Bool)

(assert (=> b!7100696 (=> (not res!2899338) (not e!4268000))))

(assert (=> b!7100696 (= res!2899338 ((_ is Concat!26722) r!11554))))

(assert (=> b!7100696 (= e!4268002 e!4267999)))

(assert (= (and d!2218556 c!1324915) b!7100689))

(assert (= (and d!2218556 (not c!1324915)) b!7100690))

(assert (= (and b!7100690 c!1324911) b!7100693))

(assert (= (and b!7100690 (not c!1324911)) b!7100696))

(assert (= (and b!7100696 res!2899338) b!7100688))

(assert (= (and b!7100696 c!1324913) b!7100691))

(assert (= (and b!7100696 (not c!1324913)) b!7100692))

(assert (= (and b!7100692 c!1324914) b!7100694))

(assert (= (and b!7100692 (not c!1324914)) b!7100695))

(assert (= (and b!7100695 c!1324912) b!7100686))

(assert (= (and b!7100695 (not c!1324912)) b!7100687))

(assert (= (or b!7100694 b!7100686) bm!646506))

(assert (= (or b!7100694 b!7100686) bm!646501))

(assert (= (or b!7100691 bm!646501) bm!646504))

(assert (= (or b!7100691 bm!646506) bm!646503))

(assert (= (or b!7100693 b!7100691) bm!646502))

(assert (= (or b!7100693 bm!646504) bm!646505))

(declare-fun m!7826280 () Bool)

(assert (=> bm!646502 m!7826280))

(declare-fun m!7826282 () Bool)

(assert (=> bm!646503 m!7826282))

(declare-fun m!7826284 () Bool)

(assert (=> b!7100689 m!7826284))

(declare-fun m!7826286 () Bool)

(assert (=> bm!646505 m!7826286))

(assert (=> b!7100688 m!7826254))

(assert (=> b!7100633 d!2218556))

(declare-fun b!7100727 () Bool)

(declare-fun e!4268019 () List!68838)

(assert (=> b!7100727 (= e!4268019 (exprs!7371 auxCtx!45))))

(declare-fun d!2218558 () Bool)

(declare-fun e!4268020 () Bool)

(assert (=> d!2218558 e!4268020))

(declare-fun res!2899346 () Bool)

(assert (=> d!2218558 (=> (not res!2899346) (not e!4268020))))

(declare-fun lt!2558096 () List!68838)

(declare-fun content!13970 (List!68838) (InoxSet Regex!17877))

(assert (=> d!2218558 (= res!2899346 (= (content!13970 lt!2558096) ((_ map or) (content!13970 (exprs!7371 c!9994)) (content!13970 (exprs!7371 auxCtx!45)))))))

(assert (=> d!2218558 (= lt!2558096 e!4268019)))

(declare-fun c!1324928 () Bool)

(assert (=> d!2218558 (= c!1324928 ((_ is Nil!68714) (exprs!7371 c!9994)))))

(assert (=> d!2218558 (= (++!16029 (exprs!7371 c!9994) (exprs!7371 auxCtx!45)) lt!2558096)))

(declare-fun b!7100730 () Bool)

(assert (=> b!7100730 (= e!4268020 (or (not (= (exprs!7371 auxCtx!45) Nil!68714)) (= lt!2558096 (exprs!7371 c!9994))))))

(declare-fun b!7100729 () Bool)

(declare-fun res!2899345 () Bool)

(assert (=> b!7100729 (=> (not res!2899345) (not e!4268020))))

(declare-fun size!41345 (List!68838) Int)

(assert (=> b!7100729 (= res!2899345 (= (size!41345 lt!2558096) (+ (size!41345 (exprs!7371 c!9994)) (size!41345 (exprs!7371 auxCtx!45)))))))

(declare-fun b!7100728 () Bool)

(assert (=> b!7100728 (= e!4268019 (Cons!68714 (h!75162 (exprs!7371 c!9994)) (++!16029 (t!382649 (exprs!7371 c!9994)) (exprs!7371 auxCtx!45))))))

(assert (= (and d!2218558 c!1324928) b!7100727))

(assert (= (and d!2218558 (not c!1324928)) b!7100728))

(assert (= (and d!2218558 res!2899346) b!7100729))

(assert (= (and b!7100729 res!2899345) b!7100730))

(declare-fun m!7826288 () Bool)

(assert (=> d!2218558 m!7826288))

(declare-fun m!7826290 () Bool)

(assert (=> d!2218558 m!7826290))

(declare-fun m!7826292 () Bool)

(assert (=> d!2218558 m!7826292))

(declare-fun m!7826294 () Bool)

(assert (=> b!7100729 m!7826294))

(declare-fun m!7826296 () Bool)

(assert (=> b!7100729 m!7826296))

(declare-fun m!7826298 () Bool)

(assert (=> b!7100729 m!7826298))

(declare-fun m!7826300 () Bool)

(assert (=> b!7100728 m!7826300))

(assert (=> b!7100633 d!2218558))

(declare-fun d!2218560 () Bool)

(assert (=> d!2218560 (forall!16783 (++!16029 (exprs!7371 c!9994) (exprs!7371 auxCtx!45)) lambda!431003)))

(declare-fun lt!2558099 () Unit!162425)

(declare-fun choose!54760 (List!68838 List!68838 Int) Unit!162425)

(assert (=> d!2218560 (= lt!2558099 (choose!54760 (exprs!7371 c!9994) (exprs!7371 auxCtx!45) lambda!431003))))

(assert (=> d!2218560 (forall!16783 (exprs!7371 c!9994) lambda!431003)))

(assert (=> d!2218560 (= (lemmaConcatPreservesForall!1162 (exprs!7371 c!9994) (exprs!7371 auxCtx!45) lambda!431003) lt!2558099)))

(declare-fun bs!1884275 () Bool)

(assert (= bs!1884275 d!2218560))

(assert (=> bs!1884275 m!7826242))

(assert (=> bs!1884275 m!7826242))

(declare-fun m!7826302 () Bool)

(assert (=> bs!1884275 m!7826302))

(declare-fun m!7826304 () Bool)

(assert (=> bs!1884275 m!7826304))

(assert (=> bs!1884275 m!7826252))

(assert (=> b!7100633 d!2218560))

(declare-fun bs!1884276 () Bool)

(declare-fun d!2218562 () Bool)

(assert (= bs!1884276 (and d!2218562 b!7100643)))

(declare-fun lambda!431013 () Int)

(assert (=> bs!1884276 (= lambda!431013 lambda!431002)))

(assert (=> d!2218562 true))

(assert (=> d!2218562 (= (appendTo!910 (derivationStepZipperDown!2406 r!11554 c!9994 a!1901) auxCtx!45) (map!16222 (derivationStepZipperDown!2406 r!11554 c!9994 a!1901) lambda!431013))))

(declare-fun bs!1884277 () Bool)

(assert (= bs!1884277 d!2218562))

(assert (=> bs!1884277 m!7826232))

(declare-fun m!7826322 () Bool)

(assert (=> bs!1884277 m!7826322))

(assert (=> b!7100633 d!2218562))

(declare-fun d!2218568 () Bool)

(declare-fun res!2899349 () Bool)

(declare-fun e!4268033 () Bool)

(assert (=> d!2218568 (=> res!2899349 e!4268033)))

(assert (=> d!2218568 (= res!2899349 ((_ is Nil!68714) (exprs!7371 c!9994)))))

(assert (=> d!2218568 (= (forall!16783 (exprs!7371 c!9994) lambda!431003) e!4268033)))

(declare-fun b!7100753 () Bool)

(declare-fun e!4268034 () Bool)

(assert (=> b!7100753 (= e!4268033 e!4268034)))

(declare-fun res!2899350 () Bool)

(assert (=> b!7100753 (=> (not res!2899350) (not e!4268034))))

(assert (=> b!7100753 (= res!2899350 (dynLambda!28045 lambda!431003 (h!75162 (exprs!7371 c!9994))))))

(declare-fun b!7100754 () Bool)

(assert (=> b!7100754 (= e!4268034 (forall!16783 (t!382649 (exprs!7371 c!9994)) lambda!431003))))

(assert (= (and d!2218568 (not res!2899349)) b!7100753))

(assert (= (and b!7100753 res!2899350) b!7100754))

(declare-fun b_lambda!271299 () Bool)

(assert (=> (not b_lambda!271299) (not b!7100753)))

(declare-fun m!7826324 () Bool)

(assert (=> b!7100753 m!7826324))

(declare-fun m!7826326 () Bool)

(assert (=> b!7100754 m!7826326))

(assert (=> b!7100632 d!2218568))

(declare-fun d!2218570 () Bool)

(declare-fun nullableFct!2898 (Regex!17877) Bool)

(assert (=> d!2218570 (= (nullable!7515 (regOne!36266 r!11554)) (nullableFct!2898 (regOne!36266 r!11554)))))

(declare-fun bs!1884278 () Bool)

(assert (= bs!1884278 d!2218570))

(declare-fun m!7826328 () Bool)

(assert (=> bs!1884278 m!7826328))

(assert (=> b!7100641 d!2218570))

(declare-fun b!7100787 () Bool)

(declare-fun e!4268055 () Bool)

(declare-fun call!646542 () Bool)

(assert (=> b!7100787 (= e!4268055 call!646542)))

(declare-fun b!7100788 () Bool)

(declare-fun res!2899369 () Bool)

(declare-fun e!4268062 () Bool)

(assert (=> b!7100788 (=> (not res!2899369) (not e!4268062))))

(assert (=> b!7100788 (= res!2899369 call!646542)))

(declare-fun e!4268058 () Bool)

(assert (=> b!7100788 (= e!4268058 e!4268062)))

(declare-fun b!7100789 () Bool)

(declare-fun e!4268056 () Bool)

(assert (=> b!7100789 (= e!4268056 e!4268058)))

(declare-fun c!1324948 () Bool)

(assert (=> b!7100789 (= c!1324948 ((_ is Union!17877) r!11554))))

(declare-fun b!7100790 () Bool)

(declare-fun res!2899368 () Bool)

(declare-fun e!4268057 () Bool)

(assert (=> b!7100790 (=> res!2899368 e!4268057)))

(assert (=> b!7100790 (= res!2899368 (not ((_ is Concat!26722) r!11554)))))

(assert (=> b!7100790 (= e!4268058 e!4268057)))

(declare-fun bm!646537 () Bool)

(declare-fun call!646543 () Bool)

(declare-fun call!646544 () Bool)

(assert (=> bm!646537 (= call!646543 call!646544)))

(declare-fun bm!646538 () Bool)

(assert (=> bm!646538 (= call!646542 (validRegex!9150 (ite c!1324948 (regOne!36267 r!11554) (regTwo!36266 r!11554))))))

(declare-fun c!1324947 () Bool)

(declare-fun bm!646539 () Bool)

(assert (=> bm!646539 (= call!646544 (validRegex!9150 (ite c!1324947 (reg!18206 r!11554) (ite c!1324948 (regTwo!36267 r!11554) (regOne!36266 r!11554)))))))

(declare-fun b!7100791 () Bool)

(declare-fun e!4268060 () Bool)

(assert (=> b!7100791 (= e!4268060 call!646544)))

(declare-fun b!7100792 () Bool)

(assert (=> b!7100792 (= e!4268056 e!4268060)))

(declare-fun res!2899367 () Bool)

(assert (=> b!7100792 (= res!2899367 (not (nullable!7515 (reg!18206 r!11554))))))

(assert (=> b!7100792 (=> (not res!2899367) (not e!4268060))))

(declare-fun b!7100793 () Bool)

(assert (=> b!7100793 (= e!4268057 e!4268055)))

(declare-fun res!2899370 () Bool)

(assert (=> b!7100793 (=> (not res!2899370) (not e!4268055))))

(assert (=> b!7100793 (= res!2899370 call!646543)))

(declare-fun b!7100794 () Bool)

(declare-fun e!4268059 () Bool)

(assert (=> b!7100794 (= e!4268059 e!4268056)))

(assert (=> b!7100794 (= c!1324947 ((_ is Star!17877) r!11554))))

(declare-fun d!2218572 () Bool)

(declare-fun res!2899373 () Bool)

(assert (=> d!2218572 (=> res!2899373 e!4268059)))

(assert (=> d!2218572 (= res!2899373 ((_ is ElementMatch!17877) r!11554))))

(assert (=> d!2218572 (= (validRegex!9150 r!11554) e!4268059)))

(declare-fun b!7100795 () Bool)

(assert (=> b!7100795 (= e!4268062 call!646543)))

(assert (= (and d!2218572 (not res!2899373)) b!7100794))

(assert (= (and b!7100794 c!1324947) b!7100792))

(assert (= (and b!7100794 (not c!1324947)) b!7100789))

(assert (= (and b!7100792 res!2899367) b!7100791))

(assert (= (and b!7100789 c!1324948) b!7100788))

(assert (= (and b!7100789 (not c!1324948)) b!7100790))

(assert (= (and b!7100788 res!2899369) b!7100795))

(assert (= (and b!7100790 (not res!2899368)) b!7100793))

(assert (= (and b!7100793 res!2899370) b!7100787))

(assert (= (or b!7100788 b!7100787) bm!646538))

(assert (= (or b!7100795 b!7100793) bm!646537))

(assert (= (or b!7100791 bm!646537) bm!646539))

(declare-fun m!7826346 () Bool)

(assert (=> bm!646538 m!7826346))

(declare-fun m!7826348 () Bool)

(assert (=> bm!646539 m!7826348))

(declare-fun m!7826350 () Bool)

(assert (=> b!7100792 m!7826350))

(assert (=> start!691220 d!2218572))

(declare-fun bs!1884280 () Bool)

(declare-fun d!2218578 () Bool)

(assert (= bs!1884280 (and d!2218578 b!7100633)))

(declare-fun lambda!431016 () Int)

(assert (=> bs!1884280 (= lambda!431016 lambda!431003)))

(assert (=> d!2218578 (= (inv!87555 c!9994) (forall!16783 (exprs!7371 c!9994) lambda!431016))))

(declare-fun bs!1884281 () Bool)

(assert (= bs!1884281 d!2218578))

(declare-fun m!7826352 () Bool)

(assert (=> bs!1884281 m!7826352))

(assert (=> start!691220 d!2218578))

(declare-fun bs!1884282 () Bool)

(declare-fun d!2218580 () Bool)

(assert (= bs!1884282 (and d!2218580 b!7100633)))

(declare-fun lambda!431017 () Int)

(assert (=> bs!1884282 (= lambda!431017 lambda!431003)))

(declare-fun bs!1884283 () Bool)

(assert (= bs!1884283 (and d!2218580 d!2218578)))

(assert (=> bs!1884283 (= lambda!431017 lambda!431016)))

(assert (=> d!2218580 (= (inv!87555 auxCtx!45) (forall!16783 (exprs!7371 auxCtx!45) lambda!431017))))

(declare-fun bs!1884284 () Bool)

(assert (= bs!1884284 d!2218580))

(declare-fun m!7826354 () Bool)

(assert (=> bs!1884284 m!7826354))

(assert (=> start!691220 d!2218580))

(declare-fun b!7100822 () Bool)

(declare-fun e!4268083 () Bool)

(assert (=> b!7100822 (= e!4268083 tp_is_empty!44987)))

(declare-fun b!7100824 () Bool)

(declare-fun tp!1952032 () Bool)

(assert (=> b!7100824 (= e!4268083 tp!1952032)))

(declare-fun b!7100823 () Bool)

(declare-fun tp!1952029 () Bool)

(declare-fun tp!1952033 () Bool)

(assert (=> b!7100823 (= e!4268083 (and tp!1952029 tp!1952033))))

(assert (=> b!7100644 (= tp!1952013 e!4268083)))

(declare-fun b!7100825 () Bool)

(declare-fun tp!1952031 () Bool)

(declare-fun tp!1952030 () Bool)

(assert (=> b!7100825 (= e!4268083 (and tp!1952031 tp!1952030))))

(assert (= (and b!7100644 ((_ is ElementMatch!17877) (reg!18206 r!11554))) b!7100822))

(assert (= (and b!7100644 ((_ is Concat!26722) (reg!18206 r!11554))) b!7100823))

(assert (= (and b!7100644 ((_ is Star!17877) (reg!18206 r!11554))) b!7100824))

(assert (= (and b!7100644 ((_ is Union!17877) (reg!18206 r!11554))) b!7100825))

(declare-fun b!7100839 () Bool)

(declare-fun e!4268088 () Bool)

(declare-fun tp!1952038 () Bool)

(declare-fun tp!1952039 () Bool)

(assert (=> b!7100839 (= e!4268088 (and tp!1952038 tp!1952039))))

(assert (=> b!7100642 (= tp!1952015 e!4268088)))

(assert (= (and b!7100642 ((_ is Cons!68714) (exprs!7371 c!9994))) b!7100839))

(declare-fun b!7100840 () Bool)

(declare-fun e!4268089 () Bool)

(assert (=> b!7100840 (= e!4268089 tp_is_empty!44987)))

(declare-fun b!7100842 () Bool)

(declare-fun tp!1952043 () Bool)

(assert (=> b!7100842 (= e!4268089 tp!1952043)))

(declare-fun b!7100841 () Bool)

(declare-fun tp!1952040 () Bool)

(declare-fun tp!1952044 () Bool)

(assert (=> b!7100841 (= e!4268089 (and tp!1952040 tp!1952044))))

(assert (=> b!7100636 (= tp!1952016 e!4268089)))

(declare-fun b!7100843 () Bool)

(declare-fun tp!1952042 () Bool)

(declare-fun tp!1952041 () Bool)

(assert (=> b!7100843 (= e!4268089 (and tp!1952042 tp!1952041))))

(assert (= (and b!7100636 ((_ is ElementMatch!17877) (regOne!36266 r!11554))) b!7100840))

(assert (= (and b!7100636 ((_ is Concat!26722) (regOne!36266 r!11554))) b!7100841))

(assert (= (and b!7100636 ((_ is Star!17877) (regOne!36266 r!11554))) b!7100842))

(assert (= (and b!7100636 ((_ is Union!17877) (regOne!36266 r!11554))) b!7100843))

(declare-fun b!7100844 () Bool)

(declare-fun e!4268090 () Bool)

(assert (=> b!7100844 (= e!4268090 tp_is_empty!44987)))

(declare-fun b!7100846 () Bool)

(declare-fun tp!1952048 () Bool)

(assert (=> b!7100846 (= e!4268090 tp!1952048)))

(declare-fun b!7100845 () Bool)

(declare-fun tp!1952045 () Bool)

(declare-fun tp!1952049 () Bool)

(assert (=> b!7100845 (= e!4268090 (and tp!1952045 tp!1952049))))

(assert (=> b!7100636 (= tp!1952018 e!4268090)))

(declare-fun b!7100847 () Bool)

(declare-fun tp!1952047 () Bool)

(declare-fun tp!1952046 () Bool)

(assert (=> b!7100847 (= e!4268090 (and tp!1952047 tp!1952046))))

(assert (= (and b!7100636 ((_ is ElementMatch!17877) (regTwo!36266 r!11554))) b!7100844))

(assert (= (and b!7100636 ((_ is Concat!26722) (regTwo!36266 r!11554))) b!7100845))

(assert (= (and b!7100636 ((_ is Star!17877) (regTwo!36266 r!11554))) b!7100846))

(assert (= (and b!7100636 ((_ is Union!17877) (regTwo!36266 r!11554))) b!7100847))

(declare-fun b!7100848 () Bool)

(declare-fun e!4268091 () Bool)

(declare-fun tp!1952050 () Bool)

(declare-fun tp!1952051 () Bool)

(assert (=> b!7100848 (= e!4268091 (and tp!1952050 tp!1952051))))

(assert (=> b!7100635 (= tp!1952014 e!4268091)))

(assert (= (and b!7100635 ((_ is Cons!68714) (exprs!7371 auxCtx!45))) b!7100848))

(declare-fun b!7100849 () Bool)

(declare-fun e!4268092 () Bool)

(assert (=> b!7100849 (= e!4268092 tp_is_empty!44987)))

(declare-fun b!7100851 () Bool)

(declare-fun tp!1952055 () Bool)

(assert (=> b!7100851 (= e!4268092 tp!1952055)))

(declare-fun b!7100850 () Bool)

(declare-fun tp!1952052 () Bool)

(declare-fun tp!1952056 () Bool)

(assert (=> b!7100850 (= e!4268092 (and tp!1952052 tp!1952056))))

(assert (=> b!7100640 (= tp!1952012 e!4268092)))

(declare-fun b!7100852 () Bool)

(declare-fun tp!1952054 () Bool)

(declare-fun tp!1952053 () Bool)

(assert (=> b!7100852 (= e!4268092 (and tp!1952054 tp!1952053))))

(assert (= (and b!7100640 ((_ is ElementMatch!17877) (regOne!36267 r!11554))) b!7100849))

(assert (= (and b!7100640 ((_ is Concat!26722) (regOne!36267 r!11554))) b!7100850))

(assert (= (and b!7100640 ((_ is Star!17877) (regOne!36267 r!11554))) b!7100851))

(assert (= (and b!7100640 ((_ is Union!17877) (regOne!36267 r!11554))) b!7100852))

(declare-fun b!7100853 () Bool)

(declare-fun e!4268093 () Bool)

(assert (=> b!7100853 (= e!4268093 tp_is_empty!44987)))

(declare-fun b!7100855 () Bool)

(declare-fun tp!1952060 () Bool)

(assert (=> b!7100855 (= e!4268093 tp!1952060)))

(declare-fun b!7100854 () Bool)

(declare-fun tp!1952057 () Bool)

(declare-fun tp!1952061 () Bool)

(assert (=> b!7100854 (= e!4268093 (and tp!1952057 tp!1952061))))

(assert (=> b!7100640 (= tp!1952017 e!4268093)))

(declare-fun b!7100856 () Bool)

(declare-fun tp!1952059 () Bool)

(declare-fun tp!1952058 () Bool)

(assert (=> b!7100856 (= e!4268093 (and tp!1952059 tp!1952058))))

(assert (= (and b!7100640 ((_ is ElementMatch!17877) (regTwo!36267 r!11554))) b!7100853))

(assert (= (and b!7100640 ((_ is Concat!26722) (regTwo!36267 r!11554))) b!7100854))

(assert (= (and b!7100640 ((_ is Star!17877) (regTwo!36267 r!11554))) b!7100855))

(assert (= (and b!7100640 ((_ is Union!17877) (regTwo!36267 r!11554))) b!7100856))

(declare-fun b_lambda!271301 () Bool)

(assert (= b_lambda!271297 (or b!7100633 b_lambda!271301)))

(declare-fun bs!1884285 () Bool)

(declare-fun d!2218584 () Bool)

(assert (= bs!1884285 (and d!2218584 b!7100633)))

(assert (=> bs!1884285 (= (dynLambda!28045 lambda!431003 (h!75162 (exprs!7371 auxCtx!45))) (validRegex!9150 (h!75162 (exprs!7371 auxCtx!45))))))

(declare-fun m!7826362 () Bool)

(assert (=> bs!1884285 m!7826362))

(assert (=> b!7100651 d!2218584))

(declare-fun b_lambda!271303 () Bool)

(assert (= b_lambda!271299 (or b!7100633 b_lambda!271303)))

(declare-fun bs!1884286 () Bool)

(declare-fun d!2218586 () Bool)

(assert (= bs!1884286 (and d!2218586 b!7100633)))

(assert (=> bs!1884286 (= (dynLambda!28045 lambda!431003 (h!75162 (exprs!7371 c!9994))) (validRegex!9150 (h!75162 (exprs!7371 c!9994))))))

(declare-fun m!7826364 () Bool)

(assert (=> bs!1884286 m!7826364))

(assert (=> b!7100753 d!2218586))

(check-sat (not b_lambda!271303) (not b!7100754) (not bm!646503) (not b!7100839) (not b!7100852) (not bm!646502) (not d!2218578) (not bm!646499) (not b!7100688) (not b!7100824) (not bm!646539) (not bm!646505) (not d!2218562) (not bm!646496) (not d!2218580) (not b!7100854) (not bm!646497) (not b!7100848) (not b!7100850) (not bs!1884286) (not b!7100856) (not b!7100652) (not b!7100851) (not b!7100843) (not bs!1884285) (not d!2218570) (not d!2218560) (not b!7100845) (not b!7100825) (not b!7100792) tp_is_empty!44987 (not b!7100728) (not b!7100847) (not bm!646538) (not b_lambda!271301) (not b!7100855) (not b!7100823) (not b!7100842) (not b!7100846) (not d!2218544) (not b!7100677) (not b!7100841) (not d!2218542) (not d!2218558) (not b!7100729))
(check-sat)
