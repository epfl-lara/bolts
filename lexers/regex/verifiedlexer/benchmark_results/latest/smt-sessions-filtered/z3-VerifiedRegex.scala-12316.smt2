; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691176 () Bool)

(assert start!691176)

(declare-fun b!7100307 () Bool)

(assert (=> b!7100307 true))

(declare-fun b!7100301 () Bool)

(declare-fun e!4267784 () Bool)

(declare-fun tp!1951888 () Bool)

(assert (=> b!7100301 (= e!4267784 tp!1951888)))

(declare-fun b!7100302 () Bool)

(declare-fun e!4267783 () Bool)

(declare-fun tp!1951890 () Bool)

(assert (=> b!7100302 (= e!4267783 tp!1951890)))

(declare-fun b!7100303 () Bool)

(declare-fun res!2899217 () Bool)

(declare-fun e!4267787 () Bool)

(assert (=> b!7100303 (=> (not res!2899217) (not e!4267787))))

(declare-datatypes ((C!36020 0))(
  ( (C!36021 (val!27716 Int)) )
))
(declare-datatypes ((Regex!17875 0))(
  ( (ElementMatch!17875 (c!1324832 C!36020)) (Concat!26720 (regOne!36262 Regex!17875) (regTwo!36262 Regex!17875)) (EmptyExpr!17875) (Star!17875 (reg!18204 Regex!17875)) (EmptyLang!17875) (Union!17875 (regOne!36263 Regex!17875) (regTwo!36263 Regex!17875)) )
))
(declare-fun r!11554 () Regex!17875)

(get-info :version)

(assert (=> b!7100303 (= res!2899217 (and (not ((_ is Concat!26720) r!11554)) (not ((_ is Star!17875) r!11554))))))

(declare-fun b!7100304 () Bool)

(declare-fun e!4267782 () Bool)

(declare-fun nullable!7513 (Regex!17875) Bool)

(assert (=> b!7100304 (= e!4267782 (not (nullable!7513 (regOne!36262 r!11554))))))

(declare-fun b!7100305 () Bool)

(declare-fun tp_is_empty!44983 () Bool)

(assert (=> b!7100305 (= e!4267784 tp_is_empty!44983)))

(declare-fun b!7100306 () Bool)

(declare-fun tp!1951886 () Bool)

(declare-fun tp!1951885 () Bool)

(assert (=> b!7100306 (= e!4267784 (and tp!1951886 tp!1951885))))

(declare-fun b!7100308 () Bool)

(declare-fun e!4267786 () Bool)

(declare-fun tp!1951889 () Bool)

(assert (=> b!7100308 (= e!4267786 tp!1951889)))

(declare-fun b!7100309 () Bool)

(declare-fun res!2899220 () Bool)

(assert (=> b!7100309 (=> (not res!2899220) (not e!4267787))))

(assert (=> b!7100309 (= res!2899220 e!4267782)))

(declare-fun res!2899219 () Bool)

(assert (=> b!7100309 (=> res!2899219 e!4267782)))

(assert (=> b!7100309 (= res!2899219 (not ((_ is Concat!26720) r!11554)))))

(declare-fun b!7100310 () Bool)

(declare-fun e!4267788 () Bool)

(declare-datatypes ((List!68836 0))(
  ( (Nil!68712) (Cons!68712 (h!75160 Regex!17875) (t!382647 List!68836)) )
))
(declare-datatypes ((Context!13738 0))(
  ( (Context!13739 (exprs!7369 List!68836)) )
))
(declare-fun c!9994 () Context!13738)

(declare-fun lambda!430965 () Int)

(declare-fun forall!16781 (List!68836 Int) Bool)

(assert (=> b!7100310 (= e!4267788 (forall!16781 (exprs!7369 c!9994) lambda!430965))))

(declare-fun e!4267785 () Bool)

(assert (=> b!7100307 (= e!4267785 e!4267787)))

(declare-fun res!2899216 () Bool)

(assert (=> b!7100307 (=> (not res!2899216) (not e!4267787))))

(declare-fun a!1901 () C!36020)

(assert (=> b!7100307 (= res!2899216 (and (or (not ((_ is ElementMatch!17875) r!11554)) (not (= (c!1324832 r!11554) a!1901))) (not ((_ is Union!17875) r!11554))))))

(declare-fun res!2899218 () Bool)

(assert (=> start!691176 (=> (not res!2899218) (not e!4267785))))

(declare-fun validRegex!9148 (Regex!17875) Bool)

(assert (=> start!691176 (= res!2899218 (validRegex!9148 r!11554))))

(assert (=> start!691176 e!4267785))

(assert (=> start!691176 e!4267784))

(declare-fun inv!87550 (Context!13738) Bool)

(assert (=> start!691176 (and (inv!87550 c!9994) e!4267783)))

(assert (=> start!691176 tp_is_empty!44983))

(declare-fun auxCtx!45 () Context!13738)

(assert (=> start!691176 (and (inv!87550 auxCtx!45) e!4267786)))

(declare-fun b!7100311 () Bool)

(assert (=> b!7100311 (= e!4267787 (not e!4267788))))

(declare-fun res!2899215 () Bool)

(assert (=> b!7100311 (=> res!2899215 e!4267788)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2404 (Regex!17875 Context!13738 C!36020) (InoxSet Context!13738))

(declare-fun ++!16027 (List!68836 List!68836) List!68836)

(declare-fun appendTo!908 ((InoxSet Context!13738) Context!13738) (InoxSet Context!13738))

(assert (=> b!7100311 (= res!2899215 (not (= (derivationStepZipperDown!2404 r!11554 (Context!13739 (++!16027 (exprs!7369 c!9994) (exprs!7369 auxCtx!45))) a!1901) (appendTo!908 (derivationStepZipperDown!2404 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-datatypes ((Unit!162421 0))(
  ( (Unit!162422) )
))
(declare-fun lt!2558043 () Unit!162421)

(declare-fun lemmaConcatPreservesForall!1160 (List!68836 List!68836 Int) Unit!162421)

(assert (=> b!7100311 (= lt!2558043 (lemmaConcatPreservesForall!1160 (exprs!7369 c!9994) (exprs!7369 auxCtx!45) lambda!430965))))

(declare-fun lambda!430964 () Int)

(declare-fun map!16219 ((InoxSet Context!13738) Int) (InoxSet Context!13738))

(assert (=> b!7100311 (= (map!16219 ((as const (Array Context!13738 Bool)) false) lambda!430964) ((as const (Array Context!13738 Bool)) false))))

(declare-fun lt!2558044 () Unit!162421)

(declare-fun lemmaMapOnEmptySetIsEmpty!10 ((InoxSet Context!13738) Int) Unit!162421)

(assert (=> b!7100311 (= lt!2558044 (lemmaMapOnEmptySetIsEmpty!10 ((as const (Array Context!13738 Bool)) false) lambda!430964))))

(declare-fun b!7100312 () Bool)

(declare-fun tp!1951884 () Bool)

(declare-fun tp!1951887 () Bool)

(assert (=> b!7100312 (= e!4267784 (and tp!1951884 tp!1951887))))

(assert (= (and start!691176 res!2899218) b!7100307))

(assert (= (and b!7100307 res!2899216) b!7100309))

(assert (= (and b!7100309 (not res!2899219)) b!7100304))

(assert (= (and b!7100309 res!2899220) b!7100303))

(assert (= (and b!7100303 res!2899217) b!7100311))

(assert (= (and b!7100311 (not res!2899215)) b!7100310))

(assert (= (and start!691176 ((_ is ElementMatch!17875) r!11554)) b!7100305))

(assert (= (and start!691176 ((_ is Concat!26720) r!11554)) b!7100306))

(assert (= (and start!691176 ((_ is Star!17875) r!11554)) b!7100301))

(assert (= (and start!691176 ((_ is Union!17875) r!11554)) b!7100312))

(assert (= start!691176 b!7100302))

(assert (= start!691176 b!7100308))

(declare-fun m!7826064 () Bool)

(assert (=> b!7100304 m!7826064))

(declare-fun m!7826066 () Bool)

(assert (=> b!7100310 m!7826066))

(declare-fun m!7826068 () Bool)

(assert (=> start!691176 m!7826068))

(declare-fun m!7826070 () Bool)

(assert (=> start!691176 m!7826070))

(declare-fun m!7826072 () Bool)

(assert (=> start!691176 m!7826072))

(declare-fun m!7826074 () Bool)

(assert (=> b!7100311 m!7826074))

(declare-fun m!7826076 () Bool)

(assert (=> b!7100311 m!7826076))

(declare-fun m!7826078 () Bool)

(assert (=> b!7100311 m!7826078))

(declare-fun m!7826080 () Bool)

(assert (=> b!7100311 m!7826080))

(assert (=> b!7100311 m!7826076))

(declare-fun m!7826082 () Bool)

(assert (=> b!7100311 m!7826082))

(declare-fun m!7826084 () Bool)

(assert (=> b!7100311 m!7826084))

(declare-fun m!7826086 () Bool)

(assert (=> b!7100311 m!7826086))

(check-sat (not b!7100308) (not start!691176) (not b!7100310) (not b!7100312) (not b!7100311) (not b!7100304) tp_is_empty!44983 (not b!7100301) (not b!7100306) (not b!7100302))
(check-sat)
(get-model)

(declare-fun d!2218489 () Bool)

(declare-fun res!2899249 () Bool)

(declare-fun e!4267826 () Bool)

(assert (=> d!2218489 (=> res!2899249 e!4267826)))

(assert (=> d!2218489 (= res!2899249 ((_ is ElementMatch!17875) r!11554))))

(assert (=> d!2218489 (= (validRegex!9148 r!11554) e!4267826)))

(declare-fun b!7100360 () Bool)

(declare-fun e!4267827 () Bool)

(declare-fun call!646439 () Bool)

(assert (=> b!7100360 (= e!4267827 call!646439)))

(declare-fun b!7100361 () Bool)

(declare-fun e!4267828 () Bool)

(declare-fun e!4267825 () Bool)

(assert (=> b!7100361 (= e!4267828 e!4267825)))

(declare-fun res!2899248 () Bool)

(assert (=> b!7100361 (= res!2899248 (not (nullable!7513 (reg!18204 r!11554))))))

(assert (=> b!7100361 (=> (not res!2899248) (not e!4267825))))

(declare-fun bm!646432 () Bool)

(declare-fun call!646437 () Bool)

(declare-fun call!646438 () Bool)

(assert (=> bm!646432 (= call!646437 call!646438)))

(declare-fun b!7100362 () Bool)

(declare-fun e!4267824 () Bool)

(assert (=> b!7100362 (= e!4267828 e!4267824)))

(declare-fun c!1324843 () Bool)

(assert (=> b!7100362 (= c!1324843 ((_ is Union!17875) r!11554))))

(declare-fun b!7100363 () Bool)

(declare-fun res!2899252 () Bool)

(assert (=> b!7100363 (=> (not res!2899252) (not e!4267827))))

(assert (=> b!7100363 (= res!2899252 call!646437)))

(assert (=> b!7100363 (= e!4267824 e!4267827)))

(declare-fun bm!646433 () Bool)

(assert (=> bm!646433 (= call!646439 (validRegex!9148 (ite c!1324843 (regTwo!36263 r!11554) (regOne!36262 r!11554))))))

(declare-fun b!7100364 () Bool)

(declare-fun e!4267829 () Bool)

(assert (=> b!7100364 (= e!4267829 call!646437)))

(declare-fun b!7100365 () Bool)

(assert (=> b!7100365 (= e!4267826 e!4267828)))

(declare-fun c!1324844 () Bool)

(assert (=> b!7100365 (= c!1324844 ((_ is Star!17875) r!11554))))

(declare-fun b!7100366 () Bool)

(declare-fun res!2899250 () Bool)

(declare-fun e!4267830 () Bool)

(assert (=> b!7100366 (=> res!2899250 e!4267830)))

(assert (=> b!7100366 (= res!2899250 (not ((_ is Concat!26720) r!11554)))))

(assert (=> b!7100366 (= e!4267824 e!4267830)))

(declare-fun bm!646434 () Bool)

(assert (=> bm!646434 (= call!646438 (validRegex!9148 (ite c!1324844 (reg!18204 r!11554) (ite c!1324843 (regOne!36263 r!11554) (regTwo!36262 r!11554)))))))

(declare-fun b!7100367 () Bool)

(assert (=> b!7100367 (= e!4267830 e!4267829)))

(declare-fun res!2899251 () Bool)

(assert (=> b!7100367 (=> (not res!2899251) (not e!4267829))))

(assert (=> b!7100367 (= res!2899251 call!646439)))

(declare-fun b!7100368 () Bool)

(assert (=> b!7100368 (= e!4267825 call!646438)))

(assert (= (and d!2218489 (not res!2899249)) b!7100365))

(assert (= (and b!7100365 c!1324844) b!7100361))

(assert (= (and b!7100365 (not c!1324844)) b!7100362))

(assert (= (and b!7100361 res!2899248) b!7100368))

(assert (= (and b!7100362 c!1324843) b!7100363))

(assert (= (and b!7100362 (not c!1324843)) b!7100366))

(assert (= (and b!7100363 res!2899252) b!7100360))

(assert (= (and b!7100366 (not res!2899250)) b!7100367))

(assert (= (and b!7100367 res!2899251) b!7100364))

(assert (= (or b!7100363 b!7100364) bm!646432))

(assert (= (or b!7100360 b!7100367) bm!646433))

(assert (= (or b!7100368 bm!646432) bm!646434))

(declare-fun m!7826098 () Bool)

(assert (=> b!7100361 m!7826098))

(declare-fun m!7826100 () Bool)

(assert (=> bm!646433 m!7826100))

(declare-fun m!7826102 () Bool)

(assert (=> bm!646434 m!7826102))

(assert (=> start!691176 d!2218489))

(declare-fun bs!1884248 () Bool)

(declare-fun d!2218497 () Bool)

(assert (= bs!1884248 (and d!2218497 b!7100311)))

(declare-fun lambda!430972 () Int)

(assert (=> bs!1884248 (= lambda!430972 lambda!430965)))

(assert (=> d!2218497 (= (inv!87550 c!9994) (forall!16781 (exprs!7369 c!9994) lambda!430972))))

(declare-fun bs!1884249 () Bool)

(assert (= bs!1884249 d!2218497))

(declare-fun m!7826108 () Bool)

(assert (=> bs!1884249 m!7826108))

(assert (=> start!691176 d!2218497))

(declare-fun bs!1884250 () Bool)

(declare-fun d!2218501 () Bool)

(assert (= bs!1884250 (and d!2218501 b!7100311)))

(declare-fun lambda!430973 () Int)

(assert (=> bs!1884250 (= lambda!430973 lambda!430965)))

(declare-fun bs!1884251 () Bool)

(assert (= bs!1884251 (and d!2218501 d!2218497)))

(assert (=> bs!1884251 (= lambda!430973 lambda!430972)))

(assert (=> d!2218501 (= (inv!87550 auxCtx!45) (forall!16781 (exprs!7369 auxCtx!45) lambda!430973))))

(declare-fun bs!1884252 () Bool)

(assert (= bs!1884252 d!2218501))

(declare-fun m!7826110 () Bool)

(assert (=> bs!1884252 m!7826110))

(assert (=> start!691176 d!2218501))

(declare-fun bs!1884255 () Bool)

(declare-fun d!2218503 () Bool)

(assert (= bs!1884255 (and d!2218503 b!7100307)))

(declare-fun lambda!430983 () Int)

(assert (=> bs!1884255 (= lambda!430983 lambda!430964)))

(assert (=> d!2218503 true))

(assert (=> d!2218503 (= (appendTo!908 (derivationStepZipperDown!2404 r!11554 c!9994 a!1901) auxCtx!45) (map!16219 (derivationStepZipperDown!2404 r!11554 c!9994 a!1901) lambda!430983))))

(declare-fun bs!1884256 () Bool)

(assert (= bs!1884256 d!2218503))

(assert (=> bs!1884256 m!7826076))

(declare-fun m!7826114 () Bool)

(assert (=> bs!1884256 m!7826114))

(assert (=> b!7100311 d!2218503))

(declare-fun d!2218507 () Bool)

(assert (=> d!2218507 (= (map!16219 ((as const (Array Context!13738 Bool)) false) lambda!430964) ((as const (Array Context!13738 Bool)) false))))

(declare-fun lt!2558054 () Unit!162421)

(declare-fun choose!54749 ((InoxSet Context!13738) Int) Unit!162421)

(assert (=> d!2218507 (= lt!2558054 (choose!54749 ((as const (Array Context!13738 Bool)) false) lambda!430964))))

(assert (=> d!2218507 (= ((as const (Array Context!13738 Bool)) false) ((as const (Array Context!13738 Bool)) false))))

(assert (=> d!2218507 (= (lemmaMapOnEmptySetIsEmpty!10 ((as const (Array Context!13738 Bool)) false) lambda!430964) lt!2558054)))

(declare-fun bs!1884258 () Bool)

(assert (= bs!1884258 d!2218507))

(assert (=> bs!1884258 m!7826074))

(declare-fun m!7826120 () Bool)

(assert (=> bs!1884258 m!7826120))

(assert (=> b!7100311 d!2218507))

(declare-fun c!1324869 () Bool)

(declare-fun bm!646459 () Bool)

(declare-fun call!646465 () (InoxSet Context!13738))

(declare-fun c!1324871 () Bool)

(declare-fun c!1324868 () Bool)

(declare-fun call!646467 () List!68836)

(assert (=> bm!646459 (= call!646465 (derivationStepZipperDown!2404 (ite c!1324868 (regTwo!36263 r!11554) (ite c!1324869 (regTwo!36262 r!11554) (ite c!1324871 (regOne!36262 r!11554) (reg!18204 r!11554)))) (ite (or c!1324868 c!1324869) c!9994 (Context!13739 call!646467)) a!1901))))

(declare-fun b!7100419 () Bool)

(declare-fun e!4267863 () (InoxSet Context!13738))

(declare-fun call!646469 () (InoxSet Context!13738))

(declare-fun call!646468 () (InoxSet Context!13738))

(assert (=> b!7100419 (= e!4267863 ((_ map or) call!646469 call!646468))))

(declare-fun b!7100420 () Bool)

(declare-fun c!1324870 () Bool)

(assert (=> b!7100420 (= c!1324870 ((_ is Star!17875) r!11554))))

(declare-fun e!4267862 () (InoxSet Context!13738))

(declare-fun e!4267865 () (InoxSet Context!13738))

(assert (=> b!7100420 (= e!4267862 e!4267865)))

(declare-fun bm!646460 () Bool)

(declare-fun call!646466 () List!68836)

(assert (=> bm!646460 (= call!646467 call!646466)))

(declare-fun bm!646461 () Bool)

(declare-fun $colon$colon!2747 (List!68836 Regex!17875) List!68836)

(assert (=> bm!646461 (= call!646466 ($colon$colon!2747 (exprs!7369 c!9994) (ite (or c!1324869 c!1324871) (regTwo!36262 r!11554) r!11554)))))

(declare-fun bm!646462 () Bool)

(assert (=> bm!646462 (= call!646469 (derivationStepZipperDown!2404 (ite c!1324868 (regOne!36263 r!11554) (regOne!36262 r!11554)) (ite c!1324868 c!9994 (Context!13739 call!646466)) a!1901))))

(declare-fun b!7100421 () Bool)

(assert (=> b!7100421 (= e!4267863 e!4267862)))

(assert (=> b!7100421 (= c!1324871 ((_ is Concat!26720) r!11554))))

(declare-fun bm!646463 () Bool)

(declare-fun call!646464 () (InoxSet Context!13738))

(assert (=> bm!646463 (= call!646464 call!646468)))

(declare-fun b!7100422 () Bool)

(declare-fun e!4267866 () (InoxSet Context!13738))

(assert (=> b!7100422 (= e!4267866 ((_ map or) call!646469 call!646465))))

(declare-fun b!7100423 () Bool)

(declare-fun e!4267864 () Bool)

(assert (=> b!7100423 (= e!4267864 (nullable!7513 (regOne!36262 r!11554)))))

(declare-fun bm!646464 () Bool)

(assert (=> bm!646464 (= call!646468 call!646465)))

(declare-fun b!7100424 () Bool)

(assert (=> b!7100424 (= e!4267865 ((as const (Array Context!13738 Bool)) false))))

(declare-fun b!7100425 () Bool)

(declare-fun e!4267861 () (InoxSet Context!13738))

(assert (=> b!7100425 (= e!4267861 (store ((as const (Array Context!13738 Bool)) false) c!9994 true))))

(declare-fun b!7100426 () Bool)

(assert (=> b!7100426 (= c!1324869 e!4267864)))

(declare-fun res!2899263 () Bool)

(assert (=> b!7100426 (=> (not res!2899263) (not e!4267864))))

(assert (=> b!7100426 (= res!2899263 ((_ is Concat!26720) r!11554))))

(assert (=> b!7100426 (= e!4267866 e!4267863)))

(declare-fun b!7100427 () Bool)

(assert (=> b!7100427 (= e!4267861 e!4267866)))

(assert (=> b!7100427 (= c!1324868 ((_ is Union!17875) r!11554))))

(declare-fun d!2218511 () Bool)

(declare-fun c!1324867 () Bool)

(assert (=> d!2218511 (= c!1324867 (and ((_ is ElementMatch!17875) r!11554) (= (c!1324832 r!11554) a!1901)))))

(assert (=> d!2218511 (= (derivationStepZipperDown!2404 r!11554 c!9994 a!1901) e!4267861)))

(declare-fun b!7100428 () Bool)

(assert (=> b!7100428 (= e!4267865 call!646464)))

(declare-fun b!7100429 () Bool)

(assert (=> b!7100429 (= e!4267862 call!646464)))

(assert (= (and d!2218511 c!1324867) b!7100425))

(assert (= (and d!2218511 (not c!1324867)) b!7100427))

(assert (= (and b!7100427 c!1324868) b!7100422))

(assert (= (and b!7100427 (not c!1324868)) b!7100426))

(assert (= (and b!7100426 res!2899263) b!7100423))

(assert (= (and b!7100426 c!1324869) b!7100419))

(assert (= (and b!7100426 (not c!1324869)) b!7100421))

(assert (= (and b!7100421 c!1324871) b!7100429))

(assert (= (and b!7100421 (not c!1324871)) b!7100420))

(assert (= (and b!7100420 c!1324870) b!7100428))

(assert (= (and b!7100420 (not c!1324870)) b!7100424))

(assert (= (or b!7100429 b!7100428) bm!646460))

(assert (= (or b!7100429 b!7100428) bm!646463))

(assert (= (or b!7100419 bm!646463) bm!646464))

(assert (= (or b!7100419 bm!646460) bm!646461))

(assert (= (or b!7100422 bm!646464) bm!646459))

(assert (= (or b!7100422 b!7100419) bm!646462))

(declare-fun m!7826124 () Bool)

(assert (=> bm!646461 m!7826124))

(assert (=> b!7100423 m!7826064))

(declare-fun m!7826126 () Bool)

(assert (=> bm!646462 m!7826126))

(declare-fun m!7826128 () Bool)

(assert (=> b!7100425 m!7826128))

(declare-fun m!7826130 () Bool)

(assert (=> bm!646459 m!7826130))

(assert (=> b!7100311 d!2218511))

(declare-fun d!2218515 () Bool)

(declare-fun choose!54752 ((InoxSet Context!13738) Int) (InoxSet Context!13738))

(assert (=> d!2218515 (= (map!16219 ((as const (Array Context!13738 Bool)) false) lambda!430964) (choose!54752 ((as const (Array Context!13738 Bool)) false) lambda!430964))))

(declare-fun bs!1884260 () Bool)

(assert (= bs!1884260 d!2218515))

(declare-fun m!7826132 () Bool)

(assert (=> bs!1884260 m!7826132))

(assert (=> b!7100311 d!2218515))

(declare-fun c!1324881 () Bool)

(declare-fun call!646477 () (InoxSet Context!13738))

(declare-fun call!646479 () List!68836)

(declare-fun c!1324878 () Bool)

(declare-fun bm!646471 () Bool)

(declare-fun c!1324879 () Bool)

(assert (=> bm!646471 (= call!646477 (derivationStepZipperDown!2404 (ite c!1324878 (regTwo!36263 r!11554) (ite c!1324879 (regTwo!36262 r!11554) (ite c!1324881 (regOne!36262 r!11554) (reg!18204 r!11554)))) (ite (or c!1324878 c!1324879) (Context!13739 (++!16027 (exprs!7369 c!9994) (exprs!7369 auxCtx!45))) (Context!13739 call!646479)) a!1901))))

(declare-fun b!7100441 () Bool)

(declare-fun e!4267875 () (InoxSet Context!13738))

(declare-fun call!646481 () (InoxSet Context!13738))

(declare-fun call!646480 () (InoxSet Context!13738))

(assert (=> b!7100441 (= e!4267875 ((_ map or) call!646481 call!646480))))

(declare-fun b!7100442 () Bool)

(declare-fun c!1324880 () Bool)

(assert (=> b!7100442 (= c!1324880 ((_ is Star!17875) r!11554))))

(declare-fun e!4267874 () (InoxSet Context!13738))

(declare-fun e!4267877 () (InoxSet Context!13738))

(assert (=> b!7100442 (= e!4267874 e!4267877)))

(declare-fun bm!646472 () Bool)

(declare-fun call!646478 () List!68836)

(assert (=> bm!646472 (= call!646479 call!646478)))

(declare-fun bm!646473 () Bool)

(assert (=> bm!646473 (= call!646478 ($colon$colon!2747 (exprs!7369 (Context!13739 (++!16027 (exprs!7369 c!9994) (exprs!7369 auxCtx!45)))) (ite (or c!1324879 c!1324881) (regTwo!36262 r!11554) r!11554)))))

(declare-fun bm!646474 () Bool)

(assert (=> bm!646474 (= call!646481 (derivationStepZipperDown!2404 (ite c!1324878 (regOne!36263 r!11554) (regOne!36262 r!11554)) (ite c!1324878 (Context!13739 (++!16027 (exprs!7369 c!9994) (exprs!7369 auxCtx!45))) (Context!13739 call!646478)) a!1901))))

(declare-fun b!7100443 () Bool)

(assert (=> b!7100443 (= e!4267875 e!4267874)))

(assert (=> b!7100443 (= c!1324881 ((_ is Concat!26720) r!11554))))

(declare-fun bm!646475 () Bool)

(declare-fun call!646476 () (InoxSet Context!13738))

(assert (=> bm!646475 (= call!646476 call!646480)))

(declare-fun b!7100444 () Bool)

(declare-fun e!4267878 () (InoxSet Context!13738))

(assert (=> b!7100444 (= e!4267878 ((_ map or) call!646481 call!646477))))

(declare-fun b!7100445 () Bool)

(declare-fun e!4267876 () Bool)

(assert (=> b!7100445 (= e!4267876 (nullable!7513 (regOne!36262 r!11554)))))

(declare-fun bm!646476 () Bool)

(assert (=> bm!646476 (= call!646480 call!646477)))

(declare-fun b!7100446 () Bool)

(assert (=> b!7100446 (= e!4267877 ((as const (Array Context!13738 Bool)) false))))

(declare-fun b!7100447 () Bool)

(declare-fun e!4267873 () (InoxSet Context!13738))

(assert (=> b!7100447 (= e!4267873 (store ((as const (Array Context!13738 Bool)) false) (Context!13739 (++!16027 (exprs!7369 c!9994) (exprs!7369 auxCtx!45))) true))))

(declare-fun b!7100448 () Bool)

(assert (=> b!7100448 (= c!1324879 e!4267876)))

(declare-fun res!2899265 () Bool)

(assert (=> b!7100448 (=> (not res!2899265) (not e!4267876))))

(assert (=> b!7100448 (= res!2899265 ((_ is Concat!26720) r!11554))))

(assert (=> b!7100448 (= e!4267878 e!4267875)))

(declare-fun b!7100449 () Bool)

(assert (=> b!7100449 (= e!4267873 e!4267878)))

(assert (=> b!7100449 (= c!1324878 ((_ is Union!17875) r!11554))))

(declare-fun d!2218517 () Bool)

(declare-fun c!1324877 () Bool)

(assert (=> d!2218517 (= c!1324877 (and ((_ is ElementMatch!17875) r!11554) (= (c!1324832 r!11554) a!1901)))))

(assert (=> d!2218517 (= (derivationStepZipperDown!2404 r!11554 (Context!13739 (++!16027 (exprs!7369 c!9994) (exprs!7369 auxCtx!45))) a!1901) e!4267873)))

(declare-fun b!7100450 () Bool)

(assert (=> b!7100450 (= e!4267877 call!646476)))

(declare-fun b!7100451 () Bool)

(assert (=> b!7100451 (= e!4267874 call!646476)))

(assert (= (and d!2218517 c!1324877) b!7100447))

(assert (= (and d!2218517 (not c!1324877)) b!7100449))

(assert (= (and b!7100449 c!1324878) b!7100444))

(assert (= (and b!7100449 (not c!1324878)) b!7100448))

(assert (= (and b!7100448 res!2899265) b!7100445))

(assert (= (and b!7100448 c!1324879) b!7100441))

(assert (= (and b!7100448 (not c!1324879)) b!7100443))

(assert (= (and b!7100443 c!1324881) b!7100451))

(assert (= (and b!7100443 (not c!1324881)) b!7100442))

(assert (= (and b!7100442 c!1324880) b!7100450))

(assert (= (and b!7100442 (not c!1324880)) b!7100446))

(assert (= (or b!7100451 b!7100450) bm!646472))

(assert (= (or b!7100451 b!7100450) bm!646475))

(assert (= (or b!7100441 bm!646475) bm!646476))

(assert (= (or b!7100441 bm!646472) bm!646473))

(assert (= (or b!7100444 bm!646476) bm!646471))

(assert (= (or b!7100444 b!7100441) bm!646474))

(declare-fun m!7826144 () Bool)

(assert (=> bm!646473 m!7826144))

(assert (=> b!7100445 m!7826064))

(declare-fun m!7826146 () Bool)

(assert (=> bm!646474 m!7826146))

(declare-fun m!7826148 () Bool)

(assert (=> b!7100447 m!7826148))

(declare-fun m!7826150 () Bool)

(assert (=> bm!646471 m!7826150))

(assert (=> b!7100311 d!2218517))

(declare-fun d!2218523 () Bool)

(declare-fun e!4267894 () Bool)

(assert (=> d!2218523 e!4267894))

(declare-fun res!2899276 () Bool)

(assert (=> d!2218523 (=> (not res!2899276) (not e!4267894))))

(declare-fun lt!2558062 () List!68836)

(declare-fun content!13967 (List!68836) (InoxSet Regex!17875))

(assert (=> d!2218523 (= res!2899276 (= (content!13967 lt!2558062) ((_ map or) (content!13967 (exprs!7369 c!9994)) (content!13967 (exprs!7369 auxCtx!45)))))))

(declare-fun e!4267893 () List!68836)

(assert (=> d!2218523 (= lt!2558062 e!4267893)))

(declare-fun c!1324891 () Bool)

(assert (=> d!2218523 (= c!1324891 ((_ is Nil!68712) (exprs!7369 c!9994)))))

(assert (=> d!2218523 (= (++!16027 (exprs!7369 c!9994) (exprs!7369 auxCtx!45)) lt!2558062)))

(declare-fun b!7100482 () Bool)

(assert (=> b!7100482 (= e!4267894 (or (not (= (exprs!7369 auxCtx!45) Nil!68712)) (= lt!2558062 (exprs!7369 c!9994))))))

(declare-fun b!7100479 () Bool)

(assert (=> b!7100479 (= e!4267893 (exprs!7369 auxCtx!45))))

(declare-fun b!7100481 () Bool)

(declare-fun res!2899275 () Bool)

(assert (=> b!7100481 (=> (not res!2899275) (not e!4267894))))

(declare-fun size!41342 (List!68836) Int)

(assert (=> b!7100481 (= res!2899275 (= (size!41342 lt!2558062) (+ (size!41342 (exprs!7369 c!9994)) (size!41342 (exprs!7369 auxCtx!45)))))))

(declare-fun b!7100480 () Bool)

(assert (=> b!7100480 (= e!4267893 (Cons!68712 (h!75160 (exprs!7369 c!9994)) (++!16027 (t!382647 (exprs!7369 c!9994)) (exprs!7369 auxCtx!45))))))

(assert (= (and d!2218523 c!1324891) b!7100479))

(assert (= (and d!2218523 (not c!1324891)) b!7100480))

(assert (= (and d!2218523 res!2899276) b!7100481))

(assert (= (and b!7100481 res!2899275) b!7100482))

(declare-fun m!7826160 () Bool)

(assert (=> d!2218523 m!7826160))

(declare-fun m!7826162 () Bool)

(assert (=> d!2218523 m!7826162))

(declare-fun m!7826164 () Bool)

(assert (=> d!2218523 m!7826164))

(declare-fun m!7826166 () Bool)

(assert (=> b!7100481 m!7826166))

(declare-fun m!7826168 () Bool)

(assert (=> b!7100481 m!7826168))

(declare-fun m!7826170 () Bool)

(assert (=> b!7100481 m!7826170))

(declare-fun m!7826172 () Bool)

(assert (=> b!7100480 m!7826172))

(assert (=> b!7100311 d!2218523))

(declare-fun d!2218527 () Bool)

(assert (=> d!2218527 (forall!16781 (++!16027 (exprs!7369 c!9994) (exprs!7369 auxCtx!45)) lambda!430965)))

(declare-fun lt!2558066 () Unit!162421)

(declare-fun choose!54754 (List!68836 List!68836 Int) Unit!162421)

(assert (=> d!2218527 (= lt!2558066 (choose!54754 (exprs!7369 c!9994) (exprs!7369 auxCtx!45) lambda!430965))))

(assert (=> d!2218527 (forall!16781 (exprs!7369 c!9994) lambda!430965)))

(assert (=> d!2218527 (= (lemmaConcatPreservesForall!1160 (exprs!7369 c!9994) (exprs!7369 auxCtx!45) lambda!430965) lt!2558066)))

(declare-fun bs!1884263 () Bool)

(assert (= bs!1884263 d!2218527))

(assert (=> bs!1884263 m!7826084))

(assert (=> bs!1884263 m!7826084))

(declare-fun m!7826190 () Bool)

(assert (=> bs!1884263 m!7826190))

(declare-fun m!7826192 () Bool)

(assert (=> bs!1884263 m!7826192))

(assert (=> bs!1884263 m!7826066))

(assert (=> b!7100311 d!2218527))

(declare-fun d!2218531 () Bool)

(declare-fun res!2899283 () Bool)

(declare-fun e!4267912 () Bool)

(assert (=> d!2218531 (=> res!2899283 e!4267912)))

(assert (=> d!2218531 (= res!2899283 ((_ is Nil!68712) (exprs!7369 c!9994)))))

(assert (=> d!2218531 (= (forall!16781 (exprs!7369 c!9994) lambda!430965) e!4267912)))

(declare-fun b!7100527 () Bool)

(declare-fun e!4267913 () Bool)

(assert (=> b!7100527 (= e!4267912 e!4267913)))

(declare-fun res!2899284 () Bool)

(assert (=> b!7100527 (=> (not res!2899284) (not e!4267913))))

(declare-fun dynLambda!28044 (Int Regex!17875) Bool)

(assert (=> b!7100527 (= res!2899284 (dynLambda!28044 lambda!430965 (h!75160 (exprs!7369 c!9994))))))

(declare-fun b!7100528 () Bool)

(assert (=> b!7100528 (= e!4267913 (forall!16781 (t!382647 (exprs!7369 c!9994)) lambda!430965))))

(assert (= (and d!2218531 (not res!2899283)) b!7100527))

(assert (= (and b!7100527 res!2899284) b!7100528))

(declare-fun b_lambda!271293 () Bool)

(assert (=> (not b_lambda!271293) (not b!7100527)))

(declare-fun m!7826196 () Bool)

(assert (=> b!7100527 m!7826196))

(declare-fun m!7826198 () Bool)

(assert (=> b!7100528 m!7826198))

(assert (=> b!7100310 d!2218531))

(declare-fun d!2218535 () Bool)

(declare-fun nullableFct!2896 (Regex!17875) Bool)

(assert (=> d!2218535 (= (nullable!7513 (regOne!36262 r!11554)) (nullableFct!2896 (regOne!36262 r!11554)))))

(declare-fun bs!1884265 () Bool)

(assert (= bs!1884265 d!2218535))

(declare-fun m!7826200 () Bool)

(assert (=> bs!1884265 m!7826200))

(assert (=> b!7100304 d!2218535))

(declare-fun b!7100541 () Bool)

(declare-fun e!4267916 () Bool)

(declare-fun tp!1951948 () Bool)

(assert (=> b!7100541 (= e!4267916 tp!1951948)))

(declare-fun b!7100542 () Bool)

(declare-fun tp!1951946 () Bool)

(declare-fun tp!1951947 () Bool)

(assert (=> b!7100542 (= e!4267916 (and tp!1951946 tp!1951947))))

(assert (=> b!7100306 (= tp!1951886 e!4267916)))

(declare-fun b!7100539 () Bool)

(assert (=> b!7100539 (= e!4267916 tp_is_empty!44983)))

(declare-fun b!7100540 () Bool)

(declare-fun tp!1951945 () Bool)

(declare-fun tp!1951944 () Bool)

(assert (=> b!7100540 (= e!4267916 (and tp!1951945 tp!1951944))))

(assert (= (and b!7100306 ((_ is ElementMatch!17875) (regOne!36262 r!11554))) b!7100539))

(assert (= (and b!7100306 ((_ is Concat!26720) (regOne!36262 r!11554))) b!7100540))

(assert (= (and b!7100306 ((_ is Star!17875) (regOne!36262 r!11554))) b!7100541))

(assert (= (and b!7100306 ((_ is Union!17875) (regOne!36262 r!11554))) b!7100542))

(declare-fun b!7100545 () Bool)

(declare-fun e!4267917 () Bool)

(declare-fun tp!1951953 () Bool)

(assert (=> b!7100545 (= e!4267917 tp!1951953)))

(declare-fun b!7100546 () Bool)

(declare-fun tp!1951951 () Bool)

(declare-fun tp!1951952 () Bool)

(assert (=> b!7100546 (= e!4267917 (and tp!1951951 tp!1951952))))

(assert (=> b!7100306 (= tp!1951885 e!4267917)))

(declare-fun b!7100543 () Bool)

(assert (=> b!7100543 (= e!4267917 tp_is_empty!44983)))

(declare-fun b!7100544 () Bool)

(declare-fun tp!1951950 () Bool)

(declare-fun tp!1951949 () Bool)

(assert (=> b!7100544 (= e!4267917 (and tp!1951950 tp!1951949))))

(assert (= (and b!7100306 ((_ is ElementMatch!17875) (regTwo!36262 r!11554))) b!7100543))

(assert (= (and b!7100306 ((_ is Concat!26720) (regTwo!36262 r!11554))) b!7100544))

(assert (= (and b!7100306 ((_ is Star!17875) (regTwo!36262 r!11554))) b!7100545))

(assert (= (and b!7100306 ((_ is Union!17875) (regTwo!36262 r!11554))) b!7100546))

(declare-fun b!7100551 () Bool)

(declare-fun e!4267920 () Bool)

(declare-fun tp!1951958 () Bool)

(declare-fun tp!1951959 () Bool)

(assert (=> b!7100551 (= e!4267920 (and tp!1951958 tp!1951959))))

(assert (=> b!7100308 (= tp!1951889 e!4267920)))

(assert (= (and b!7100308 ((_ is Cons!68712) (exprs!7369 auxCtx!45))) b!7100551))

(declare-fun b!7100552 () Bool)

(declare-fun e!4267921 () Bool)

(declare-fun tp!1951960 () Bool)

(declare-fun tp!1951961 () Bool)

(assert (=> b!7100552 (= e!4267921 (and tp!1951960 tp!1951961))))

(assert (=> b!7100302 (= tp!1951890 e!4267921)))

(assert (= (and b!7100302 ((_ is Cons!68712) (exprs!7369 c!9994))) b!7100552))

(declare-fun b!7100555 () Bool)

(declare-fun e!4267922 () Bool)

(declare-fun tp!1951966 () Bool)

(assert (=> b!7100555 (= e!4267922 tp!1951966)))

(declare-fun b!7100556 () Bool)

(declare-fun tp!1951964 () Bool)

(declare-fun tp!1951965 () Bool)

(assert (=> b!7100556 (= e!4267922 (and tp!1951964 tp!1951965))))

(assert (=> b!7100312 (= tp!1951884 e!4267922)))

(declare-fun b!7100553 () Bool)

(assert (=> b!7100553 (= e!4267922 tp_is_empty!44983)))

(declare-fun b!7100554 () Bool)

(declare-fun tp!1951963 () Bool)

(declare-fun tp!1951962 () Bool)

(assert (=> b!7100554 (= e!4267922 (and tp!1951963 tp!1951962))))

(assert (= (and b!7100312 ((_ is ElementMatch!17875) (regOne!36263 r!11554))) b!7100553))

(assert (= (and b!7100312 ((_ is Concat!26720) (regOne!36263 r!11554))) b!7100554))

(assert (= (and b!7100312 ((_ is Star!17875) (regOne!36263 r!11554))) b!7100555))

(assert (= (and b!7100312 ((_ is Union!17875) (regOne!36263 r!11554))) b!7100556))

(declare-fun b!7100559 () Bool)

(declare-fun e!4267923 () Bool)

(declare-fun tp!1951971 () Bool)

(assert (=> b!7100559 (= e!4267923 tp!1951971)))

(declare-fun b!7100560 () Bool)

(declare-fun tp!1951969 () Bool)

(declare-fun tp!1951970 () Bool)

(assert (=> b!7100560 (= e!4267923 (and tp!1951969 tp!1951970))))

(assert (=> b!7100312 (= tp!1951887 e!4267923)))

(declare-fun b!7100557 () Bool)

(assert (=> b!7100557 (= e!4267923 tp_is_empty!44983)))

(declare-fun b!7100558 () Bool)

(declare-fun tp!1951968 () Bool)

(declare-fun tp!1951967 () Bool)

(assert (=> b!7100558 (= e!4267923 (and tp!1951968 tp!1951967))))

(assert (= (and b!7100312 ((_ is ElementMatch!17875) (regTwo!36263 r!11554))) b!7100557))

(assert (= (and b!7100312 ((_ is Concat!26720) (regTwo!36263 r!11554))) b!7100558))

(assert (= (and b!7100312 ((_ is Star!17875) (regTwo!36263 r!11554))) b!7100559))

(assert (= (and b!7100312 ((_ is Union!17875) (regTwo!36263 r!11554))) b!7100560))

(declare-fun b!7100563 () Bool)

(declare-fun e!4267924 () Bool)

(declare-fun tp!1951976 () Bool)

(assert (=> b!7100563 (= e!4267924 tp!1951976)))

(declare-fun b!7100564 () Bool)

(declare-fun tp!1951974 () Bool)

(declare-fun tp!1951975 () Bool)

(assert (=> b!7100564 (= e!4267924 (and tp!1951974 tp!1951975))))

(assert (=> b!7100301 (= tp!1951888 e!4267924)))

(declare-fun b!7100561 () Bool)

(assert (=> b!7100561 (= e!4267924 tp_is_empty!44983)))

(declare-fun b!7100562 () Bool)

(declare-fun tp!1951973 () Bool)

(declare-fun tp!1951972 () Bool)

(assert (=> b!7100562 (= e!4267924 (and tp!1951973 tp!1951972))))

(assert (= (and b!7100301 ((_ is ElementMatch!17875) (reg!18204 r!11554))) b!7100561))

(assert (= (and b!7100301 ((_ is Concat!26720) (reg!18204 r!11554))) b!7100562))

(assert (= (and b!7100301 ((_ is Star!17875) (reg!18204 r!11554))) b!7100563))

(assert (= (and b!7100301 ((_ is Union!17875) (reg!18204 r!11554))) b!7100564))

(declare-fun b_lambda!271295 () Bool)

(assert (= b_lambda!271293 (or b!7100311 b_lambda!271295)))

(declare-fun bs!1884266 () Bool)

(declare-fun d!2218537 () Bool)

(assert (= bs!1884266 (and d!2218537 b!7100311)))

(assert (=> bs!1884266 (= (dynLambda!28044 lambda!430965 (h!75160 (exprs!7369 c!9994))) (validRegex!9148 (h!75160 (exprs!7369 c!9994))))))

(declare-fun m!7826202 () Bool)

(assert (=> bs!1884266 m!7826202))

(assert (=> b!7100527 d!2218537))

(check-sat (not b!7100562) (not b!7100554) (not b!7100481) (not b!7100480) (not b!7100545) (not d!2218535) (not d!2218507) (not b_lambda!271295) (not b!7100528) (not b!7100552) (not b!7100551) (not b!7100544) (not d!2218515) (not d!2218501) (not b!7100361) (not bm!646473) (not bm!646471) (not bm!646459) (not b!7100546) (not bm!646461) (not bm!646474) (not bm!646462) (not b!7100541) (not d!2218497) tp_is_empty!44983 (not b!7100559) (not bs!1884266) (not d!2218527) (not b!7100556) (not d!2218523) (not bm!646434) (not b!7100560) (not b!7100555) (not bm!646433) (not b!7100564) (not b!7100542) (not b!7100445) (not b!7100558) (not d!2218503) (not b!7100540) (not b!7100563) (not b!7100423))
(check-sat)
