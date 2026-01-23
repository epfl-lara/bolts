; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690284 () Bool)

(assert start!690284)

(declare-fun b!7091686 () Bool)

(assert (=> b!7091686 true))

(declare-fun e!4263124 () Bool)

(declare-fun e!4263118 () Bool)

(assert (=> b!7091686 (= e!4263124 e!4263118)))

(declare-fun res!2896294 () Bool)

(assert (=> b!7091686 (=> (not res!2896294) (not e!4263118))))

(declare-datatypes ((C!35872 0))(
  ( (C!35873 (val!27642 Int)) )
))
(declare-datatypes ((Regex!17801 0))(
  ( (ElementMatch!17801 (c!1323410 C!35872)) (Concat!26646 (regOne!36114 Regex!17801) (regTwo!36114 Regex!17801)) (EmptyExpr!17801) (Star!17801 (reg!18130 Regex!17801)) (EmptyLang!17801) (Union!17801 (regOne!36115 Regex!17801) (regTwo!36115 Regex!17801)) )
))
(declare-fun r!11554 () Regex!17801)

(declare-fun a!1901 () C!35872)

(get-info :version)

(assert (=> b!7091686 (= res!2896294 (and (or (not ((_ is ElementMatch!17801) r!11554)) (not (= (c!1323410 r!11554) a!1901))) (not ((_ is Union!17801) r!11554)) ((_ is Concat!26646) r!11554)))))

(declare-fun b!7091687 () Bool)

(declare-fun e!4263122 () Bool)

(declare-fun tp!1948302 () Bool)

(declare-fun tp!1948301 () Bool)

(assert (=> b!7091687 (= e!4263122 (and tp!1948302 tp!1948301))))

(declare-fun b!7091688 () Bool)

(declare-fun res!2896295 () Bool)

(assert (=> b!7091688 (=> (not res!2896295) (not e!4263118))))

(declare-fun nullable!7441 (Regex!17801) Bool)

(assert (=> b!7091688 (= res!2896295 (nullable!7441 (regOne!36114 r!11554)))))

(declare-fun b!7091689 () Bool)

(declare-fun tp!1948300 () Bool)

(declare-fun tp!1948299 () Bool)

(assert (=> b!7091689 (= e!4263122 (and tp!1948300 tp!1948299))))

(declare-fun b!7091690 () Bool)

(declare-fun e!4263119 () Bool)

(declare-fun tp!1948303 () Bool)

(assert (=> b!7091690 (= e!4263119 tp!1948303)))

(declare-fun b!7091691 () Bool)

(declare-fun e!4263123 () Bool)

(declare-fun e!4263121 () Bool)

(assert (=> b!7091691 (= e!4263123 e!4263121)))

(declare-fun res!2896296 () Bool)

(assert (=> b!7091691 (=> (not res!2896296) (not e!4263121))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!68764 0))(
  ( (Nil!68640) (Cons!68640 (h!75088 Regex!17801) (t!382551 List!68764)) )
))
(declare-datatypes ((Context!13594 0))(
  ( (Context!13595 (exprs!7297 List!68764)) )
))
(declare-fun lt!2556176 () (InoxSet Context!13594))

(declare-fun lt!2556168 () Context!13594)

(declare-fun lt!2556166 () (InoxSet Context!13594))

(declare-fun derivationStepZipperDown!2364 (Regex!17801 Context!13594 C!35872) (InoxSet Context!13594))

(assert (=> b!7091691 (= res!2896296 (= (derivationStepZipperDown!2364 r!11554 lt!2556168 a!1901) ((_ map or) lt!2556166 lt!2556176)))))

(assert (=> b!7091691 (= lt!2556176 (derivationStepZipperDown!2364 (regTwo!36114 r!11554) lt!2556168 a!1901))))

(declare-fun lt!2556174 () List!68764)

(declare-fun $colon$colon!2708 (List!68764 Regex!17801) List!68764)

(assert (=> b!7091691 (= lt!2556166 (derivationStepZipperDown!2364 (regOne!36114 r!11554) (Context!13595 ($colon$colon!2708 lt!2556174 (regTwo!36114 r!11554))) a!1901))))

(declare-fun res!2896293 () Bool)

(assert (=> start!690284 (=> (not res!2896293) (not e!4263124))))

(declare-fun validRegex!9076 (Regex!17801) Bool)

(assert (=> start!690284 (= res!2896293 (validRegex!9076 r!11554))))

(assert (=> start!690284 e!4263124))

(assert (=> start!690284 e!4263122))

(declare-fun c!9994 () Context!13594)

(declare-fun e!4263120 () Bool)

(declare-fun inv!87367 (Context!13594) Bool)

(assert (=> start!690284 (and (inv!87367 c!9994) e!4263120)))

(declare-fun tp_is_empty!44835 () Bool)

(assert (=> start!690284 tp_is_empty!44835))

(declare-fun auxCtx!45 () Context!13594)

(assert (=> start!690284 (and (inv!87367 auxCtx!45) e!4263119)))

(declare-fun b!7091692 () Bool)

(assert (=> b!7091692 (= e!4263118 e!4263123)))

(declare-fun res!2896292 () Bool)

(assert (=> b!7091692 (=> (not res!2896292) (not e!4263123))))

(assert (=> b!7091692 (= res!2896292 (validRegex!9076 (regTwo!36114 r!11554)))))

(declare-fun lambda!429917 () Int)

(declare-datatypes ((Unit!162293 0))(
  ( (Unit!162294) )
))
(declare-fun lt!2556175 () Unit!162293)

(declare-fun lemmaConcatPreservesForall!1100 (List!68764 List!68764 Int) Unit!162293)

(assert (=> b!7091692 (= lt!2556175 (lemmaConcatPreservesForall!1100 (exprs!7297 c!9994) (exprs!7297 auxCtx!45) lambda!429917))))

(assert (=> b!7091692 (= lt!2556168 (Context!13595 lt!2556174))))

(declare-fun ++!15970 (List!68764 List!68764) List!68764)

(assert (=> b!7091692 (= lt!2556174 (++!15970 (exprs!7297 c!9994) (exprs!7297 auxCtx!45)))))

(declare-fun lt!2556162 () Unit!162293)

(assert (=> b!7091692 (= lt!2556162 (lemmaConcatPreservesForall!1100 (exprs!7297 c!9994) (exprs!7297 auxCtx!45) lambda!429917))))

(declare-fun lt!2556171 () Unit!162293)

(assert (=> b!7091692 (= lt!2556171 (lemmaConcatPreservesForall!1100 (exprs!7297 c!9994) (exprs!7297 auxCtx!45) lambda!429917))))

(declare-fun b!7091693 () Bool)

(declare-fun tp!1948298 () Bool)

(assert (=> b!7091693 (= e!4263122 tp!1948298)))

(declare-fun b!7091694 () Bool)

(declare-fun tp!1948304 () Bool)

(assert (=> b!7091694 (= e!4263120 tp!1948304)))

(declare-fun b!7091695 () Bool)

(assert (=> b!7091695 (= e!4263122 tp_is_empty!44835)))

(declare-fun b!7091696 () Bool)

(declare-fun forall!16733 (List!68764 Int) Bool)

(assert (=> b!7091696 (= e!4263121 (not (forall!16733 (exprs!7297 c!9994) lambda!429917)))))

(declare-fun lt!2556170 () (InoxSet Context!13594))

(declare-fun lambda!429916 () Int)

(declare-fun lt!2556165 () (InoxSet Context!13594))

(declare-fun map!16148 ((InoxSet Context!13594) Int) (InoxSet Context!13594))

(assert (=> b!7091696 (= ((_ map or) (map!16148 lt!2556170 lambda!429916) (map!16148 lt!2556165 lambda!429916)) (map!16148 ((_ map or) lt!2556170 lt!2556165) lambda!429916))))

(declare-fun lt!2556172 () Unit!162293)

(declare-fun lemmaMapAssociative!14 ((InoxSet Context!13594) (InoxSet Context!13594) Int) Unit!162293)

(assert (=> b!7091696 (= lt!2556172 (lemmaMapAssociative!14 lt!2556170 lt!2556165 lambda!429916))))

(declare-fun appendTo!872 ((InoxSet Context!13594) Context!13594) (InoxSet Context!13594))

(assert (=> b!7091696 (= lt!2556176 (appendTo!872 lt!2556165 auxCtx!45))))

(assert (=> b!7091696 (= lt!2556165 (derivationStepZipperDown!2364 (regTwo!36114 r!11554) c!9994 a!1901))))

(declare-fun lt!2556163 () Unit!162293)

(assert (=> b!7091696 (= lt!2556163 (lemmaConcatPreservesForall!1100 (exprs!7297 c!9994) (exprs!7297 auxCtx!45) lambda!429917))))

(declare-fun lt!2556164 () Unit!162293)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!180 (Context!13594 Regex!17801 C!35872 Context!13594) Unit!162293)

(assert (=> b!7091696 (= lt!2556164 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!180 c!9994 (regTwo!36114 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2556161 () List!68764)

(assert (=> b!7091696 (= (derivationStepZipperDown!2364 (regOne!36114 r!11554) (Context!13595 lt!2556161) a!1901) (appendTo!872 lt!2556170 auxCtx!45))))

(declare-fun lt!2556169 () Context!13594)

(assert (=> b!7091696 (= lt!2556170 (derivationStepZipperDown!2364 (regOne!36114 r!11554) lt!2556169 a!1901))))

(declare-fun lt!2556173 () List!68764)

(assert (=> b!7091696 (= lt!2556161 (++!15970 lt!2556173 (exprs!7297 auxCtx!45)))))

(declare-fun lt!2556160 () Unit!162293)

(assert (=> b!7091696 (= lt!2556160 (lemmaConcatPreservesForall!1100 lt!2556173 (exprs!7297 auxCtx!45) lambda!429917))))

(declare-fun lt!2556167 () Unit!162293)

(assert (=> b!7091696 (= lt!2556167 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!180 lt!2556169 (regOne!36114 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7091696 (= lt!2556169 (Context!13595 lt!2556173))))

(assert (=> b!7091696 (= lt!2556173 ($colon$colon!2708 (exprs!7297 c!9994) (regTwo!36114 r!11554)))))

(assert (= (and start!690284 res!2896293) b!7091686))

(assert (= (and b!7091686 res!2896294) b!7091688))

(assert (= (and b!7091688 res!2896295) b!7091692))

(assert (= (and b!7091692 res!2896292) b!7091691))

(assert (= (and b!7091691 res!2896296) b!7091696))

(assert (= (and start!690284 ((_ is ElementMatch!17801) r!11554)) b!7091695))

(assert (= (and start!690284 ((_ is Concat!26646) r!11554)) b!7091687))

(assert (= (and start!690284 ((_ is Star!17801) r!11554)) b!7091693))

(assert (= (and start!690284 ((_ is Union!17801) r!11554)) b!7091689))

(assert (= start!690284 b!7091694))

(assert (= start!690284 b!7091690))

(declare-fun m!7820508 () Bool)

(assert (=> start!690284 m!7820508))

(declare-fun m!7820510 () Bool)

(assert (=> start!690284 m!7820510))

(declare-fun m!7820512 () Bool)

(assert (=> start!690284 m!7820512))

(declare-fun m!7820514 () Bool)

(assert (=> b!7091691 m!7820514))

(declare-fun m!7820516 () Bool)

(assert (=> b!7091691 m!7820516))

(declare-fun m!7820518 () Bool)

(assert (=> b!7091691 m!7820518))

(declare-fun m!7820520 () Bool)

(assert (=> b!7091691 m!7820520))

(declare-fun m!7820522 () Bool)

(assert (=> b!7091696 m!7820522))

(declare-fun m!7820524 () Bool)

(assert (=> b!7091696 m!7820524))

(declare-fun m!7820526 () Bool)

(assert (=> b!7091696 m!7820526))

(declare-fun m!7820528 () Bool)

(assert (=> b!7091696 m!7820528))

(declare-fun m!7820530 () Bool)

(assert (=> b!7091696 m!7820530))

(declare-fun m!7820532 () Bool)

(assert (=> b!7091696 m!7820532))

(declare-fun m!7820534 () Bool)

(assert (=> b!7091696 m!7820534))

(declare-fun m!7820536 () Bool)

(assert (=> b!7091696 m!7820536))

(declare-fun m!7820538 () Bool)

(assert (=> b!7091696 m!7820538))

(declare-fun m!7820540 () Bool)

(assert (=> b!7091696 m!7820540))

(declare-fun m!7820542 () Bool)

(assert (=> b!7091696 m!7820542))

(declare-fun m!7820544 () Bool)

(assert (=> b!7091696 m!7820544))

(declare-fun m!7820546 () Bool)

(assert (=> b!7091696 m!7820546))

(declare-fun m!7820548 () Bool)

(assert (=> b!7091696 m!7820548))

(declare-fun m!7820550 () Bool)

(assert (=> b!7091696 m!7820550))

(declare-fun m!7820552 () Bool)

(assert (=> b!7091696 m!7820552))

(assert (=> b!7091692 m!7820542))

(assert (=> b!7091692 m!7820542))

(declare-fun m!7820554 () Bool)

(assert (=> b!7091692 m!7820554))

(declare-fun m!7820556 () Bool)

(assert (=> b!7091692 m!7820556))

(assert (=> b!7091692 m!7820542))

(declare-fun m!7820558 () Bool)

(assert (=> b!7091688 m!7820558))

(check-sat (not b!7091694) (not start!690284) (not b!7091690) (not b!7091687) (not b!7091689) (not b!7091691) (not b!7091692) (not b!7091696) (not b!7091688) (not b!7091693) tp_is_empty!44835)
(check-sat)
(get-model)

(declare-fun bm!644908 () Bool)

(declare-fun call!644913 () List!68764)

(declare-fun call!644918 () List!68764)

(assert (=> bm!644908 (= call!644913 call!644918)))

(declare-fun b!7091760 () Bool)

(declare-fun e!4263167 () (InoxSet Context!13594))

(declare-fun call!644917 () (InoxSet Context!13594))

(declare-fun call!644916 () (InoxSet Context!13594))

(assert (=> b!7091760 (= e!4263167 ((_ map or) call!644917 call!644916))))

(declare-fun b!7091761 () Bool)

(declare-fun e!4263165 () (InoxSet Context!13594))

(declare-fun call!644914 () (InoxSet Context!13594))

(assert (=> b!7091761 (= e!4263165 call!644914)))

(declare-fun d!2216970 () Bool)

(declare-fun c!1323431 () Bool)

(assert (=> d!2216970 (= c!1323431 (and ((_ is ElementMatch!17801) r!11554) (= (c!1323410 r!11554) a!1901)))))

(declare-fun e!4263166 () (InoxSet Context!13594))

(assert (=> d!2216970 (= (derivationStepZipperDown!2364 r!11554 lt!2556168 a!1901) e!4263166)))

(declare-fun c!1323430 () Bool)

(declare-fun bm!644909 () Bool)

(assert (=> bm!644909 (= call!644917 (derivationStepZipperDown!2364 (ite c!1323430 (regOne!36115 r!11554) (regOne!36114 r!11554)) (ite c!1323430 lt!2556168 (Context!13595 call!644918)) a!1901))))

(declare-fun b!7091762 () Bool)

(declare-fun e!4263169 () (InoxSet Context!13594))

(declare-fun call!644915 () (InoxSet Context!13594))

(assert (=> b!7091762 (= e!4263169 ((_ map or) call!644917 call!644915))))

(declare-fun b!7091763 () Bool)

(declare-fun e!4263164 () (InoxSet Context!13594))

(assert (=> b!7091763 (= e!4263164 call!644914)))

(declare-fun b!7091764 () Bool)

(assert (=> b!7091764 (= e!4263166 e!4263169)))

(assert (=> b!7091764 (= c!1323430 ((_ is Union!17801) r!11554))))

(declare-fun b!7091765 () Bool)

(assert (=> b!7091765 (= e!4263167 e!4263165)))

(declare-fun c!1323434 () Bool)

(assert (=> b!7091765 (= c!1323434 ((_ is Concat!26646) r!11554))))

(declare-fun b!7091766 () Bool)

(declare-fun c!1323433 () Bool)

(declare-fun e!4263168 () Bool)

(assert (=> b!7091766 (= c!1323433 e!4263168)))

(declare-fun res!2896322 () Bool)

(assert (=> b!7091766 (=> (not res!2896322) (not e!4263168))))

(assert (=> b!7091766 (= res!2896322 ((_ is Concat!26646) r!11554))))

(assert (=> b!7091766 (= e!4263169 e!4263167)))

(declare-fun b!7091769 () Bool)

(assert (=> b!7091769 (= e!4263168 (nullable!7441 (regOne!36114 r!11554)))))

(declare-fun bm!644910 () Bool)

(assert (=> bm!644910 (= call!644914 call!644916)))

(declare-fun bm!644911 () Bool)

(assert (=> bm!644911 (= call!644915 (derivationStepZipperDown!2364 (ite c!1323430 (regTwo!36115 r!11554) (ite c!1323433 (regTwo!36114 r!11554) (ite c!1323434 (regOne!36114 r!11554) (reg!18130 r!11554)))) (ite (or c!1323430 c!1323433) lt!2556168 (Context!13595 call!644913)) a!1901))))

(declare-fun b!7091770 () Bool)

(assert (=> b!7091770 (= e!4263164 ((as const (Array Context!13594 Bool)) false))))

(declare-fun bm!644912 () Bool)

(assert (=> bm!644912 (= call!644916 call!644915)))

(declare-fun b!7091771 () Bool)

(assert (=> b!7091771 (= e!4263166 (store ((as const (Array Context!13594 Bool)) false) lt!2556168 true))))

(declare-fun b!7091772 () Bool)

(declare-fun c!1323432 () Bool)

(assert (=> b!7091772 (= c!1323432 ((_ is Star!17801) r!11554))))

(assert (=> b!7091772 (= e!4263165 e!4263164)))

(declare-fun bm!644913 () Bool)

(assert (=> bm!644913 (= call!644918 ($colon$colon!2708 (exprs!7297 lt!2556168) (ite (or c!1323433 c!1323434) (regTwo!36114 r!11554) r!11554)))))

(assert (= (and d!2216970 c!1323431) b!7091771))

(assert (= (and d!2216970 (not c!1323431)) b!7091764))

(assert (= (and b!7091764 c!1323430) b!7091762))

(assert (= (and b!7091764 (not c!1323430)) b!7091766))

(assert (= (and b!7091766 res!2896322) b!7091769))

(assert (= (and b!7091766 c!1323433) b!7091760))

(assert (= (and b!7091766 (not c!1323433)) b!7091765))

(assert (= (and b!7091765 c!1323434) b!7091761))

(assert (= (and b!7091765 (not c!1323434)) b!7091772))

(assert (= (and b!7091772 c!1323432) b!7091763))

(assert (= (and b!7091772 (not c!1323432)) b!7091770))

(assert (= (or b!7091761 b!7091763) bm!644908))

(assert (= (or b!7091761 b!7091763) bm!644910))

(assert (= (or b!7091760 bm!644910) bm!644912))

(assert (= (or b!7091760 bm!644908) bm!644913))

(assert (= (or b!7091762 bm!644912) bm!644911))

(assert (= (or b!7091762 b!7091760) bm!644909))

(assert (=> b!7091769 m!7820558))

(declare-fun m!7820584 () Bool)

(assert (=> bm!644909 m!7820584))

(declare-fun m!7820586 () Bool)

(assert (=> bm!644913 m!7820586))

(declare-fun m!7820588 () Bool)

(assert (=> b!7091771 m!7820588))

(declare-fun m!7820590 () Bool)

(assert (=> bm!644911 m!7820590))

(assert (=> b!7091691 d!2216970))

(declare-fun bm!644918 () Bool)

(declare-fun call!644923 () List!68764)

(declare-fun call!644928 () List!68764)

(assert (=> bm!644918 (= call!644923 call!644928)))

(declare-fun b!7091793 () Bool)

(declare-fun e!4263185 () (InoxSet Context!13594))

(declare-fun call!644927 () (InoxSet Context!13594))

(declare-fun call!644926 () (InoxSet Context!13594))

(assert (=> b!7091793 (= e!4263185 ((_ map or) call!644927 call!644926))))

(declare-fun b!7091794 () Bool)

(declare-fun e!4263183 () (InoxSet Context!13594))

(declare-fun call!644924 () (InoxSet Context!13594))

(assert (=> b!7091794 (= e!4263183 call!644924)))

(declare-fun d!2216976 () Bool)

(declare-fun c!1323446 () Bool)

(assert (=> d!2216976 (= c!1323446 (and ((_ is ElementMatch!17801) (regTwo!36114 r!11554)) (= (c!1323410 (regTwo!36114 r!11554)) a!1901)))))

(declare-fun e!4263184 () (InoxSet Context!13594))

(assert (=> d!2216976 (= (derivationStepZipperDown!2364 (regTwo!36114 r!11554) lt!2556168 a!1901) e!4263184)))

(declare-fun bm!644919 () Bool)

(declare-fun c!1323445 () Bool)

(assert (=> bm!644919 (= call!644927 (derivationStepZipperDown!2364 (ite c!1323445 (regOne!36115 (regTwo!36114 r!11554)) (regOne!36114 (regTwo!36114 r!11554))) (ite c!1323445 lt!2556168 (Context!13595 call!644928)) a!1901))))

(declare-fun b!7091795 () Bool)

(declare-fun e!4263187 () (InoxSet Context!13594))

(declare-fun call!644925 () (InoxSet Context!13594))

(assert (=> b!7091795 (= e!4263187 ((_ map or) call!644927 call!644925))))

(declare-fun b!7091796 () Bool)

(declare-fun e!4263182 () (InoxSet Context!13594))

(assert (=> b!7091796 (= e!4263182 call!644924)))

(declare-fun b!7091797 () Bool)

(assert (=> b!7091797 (= e!4263184 e!4263187)))

(assert (=> b!7091797 (= c!1323445 ((_ is Union!17801) (regTwo!36114 r!11554)))))

(declare-fun b!7091798 () Bool)

(assert (=> b!7091798 (= e!4263185 e!4263183)))

(declare-fun c!1323449 () Bool)

(assert (=> b!7091798 (= c!1323449 ((_ is Concat!26646) (regTwo!36114 r!11554)))))

(declare-fun b!7091799 () Bool)

(declare-fun c!1323448 () Bool)

(declare-fun e!4263186 () Bool)

(assert (=> b!7091799 (= c!1323448 e!4263186)))

(declare-fun res!2896325 () Bool)

(assert (=> b!7091799 (=> (not res!2896325) (not e!4263186))))

(assert (=> b!7091799 (= res!2896325 ((_ is Concat!26646) (regTwo!36114 r!11554)))))

(assert (=> b!7091799 (= e!4263187 e!4263185)))

(declare-fun b!7091800 () Bool)

(assert (=> b!7091800 (= e!4263186 (nullable!7441 (regOne!36114 (regTwo!36114 r!11554))))))

(declare-fun bm!644920 () Bool)

(assert (=> bm!644920 (= call!644924 call!644926)))

(declare-fun bm!644921 () Bool)

(assert (=> bm!644921 (= call!644925 (derivationStepZipperDown!2364 (ite c!1323445 (regTwo!36115 (regTwo!36114 r!11554)) (ite c!1323448 (regTwo!36114 (regTwo!36114 r!11554)) (ite c!1323449 (regOne!36114 (regTwo!36114 r!11554)) (reg!18130 (regTwo!36114 r!11554))))) (ite (or c!1323445 c!1323448) lt!2556168 (Context!13595 call!644923)) a!1901))))

(declare-fun b!7091801 () Bool)

(assert (=> b!7091801 (= e!4263182 ((as const (Array Context!13594 Bool)) false))))

(declare-fun bm!644922 () Bool)

(assert (=> bm!644922 (= call!644926 call!644925)))

(declare-fun b!7091802 () Bool)

(assert (=> b!7091802 (= e!4263184 (store ((as const (Array Context!13594 Bool)) false) lt!2556168 true))))

(declare-fun b!7091803 () Bool)

(declare-fun c!1323447 () Bool)

(assert (=> b!7091803 (= c!1323447 ((_ is Star!17801) (regTwo!36114 r!11554)))))

(assert (=> b!7091803 (= e!4263183 e!4263182)))

(declare-fun bm!644923 () Bool)

(assert (=> bm!644923 (= call!644928 ($colon$colon!2708 (exprs!7297 lt!2556168) (ite (or c!1323448 c!1323449) (regTwo!36114 (regTwo!36114 r!11554)) (regTwo!36114 r!11554))))))

(assert (= (and d!2216976 c!1323446) b!7091802))

(assert (= (and d!2216976 (not c!1323446)) b!7091797))

(assert (= (and b!7091797 c!1323445) b!7091795))

(assert (= (and b!7091797 (not c!1323445)) b!7091799))

(assert (= (and b!7091799 res!2896325) b!7091800))

(assert (= (and b!7091799 c!1323448) b!7091793))

(assert (= (and b!7091799 (not c!1323448)) b!7091798))

(assert (= (and b!7091798 c!1323449) b!7091794))

(assert (= (and b!7091798 (not c!1323449)) b!7091803))

(assert (= (and b!7091803 c!1323447) b!7091796))

(assert (= (and b!7091803 (not c!1323447)) b!7091801))

(assert (= (or b!7091794 b!7091796) bm!644918))

(assert (= (or b!7091794 b!7091796) bm!644920))

(assert (= (or b!7091793 bm!644920) bm!644922))

(assert (= (or b!7091793 bm!644918) bm!644923))

(assert (= (or b!7091795 bm!644922) bm!644921))

(assert (= (or b!7091795 b!7091793) bm!644919))

(declare-fun m!7820592 () Bool)

(assert (=> b!7091800 m!7820592))

(declare-fun m!7820594 () Bool)

(assert (=> bm!644919 m!7820594))

(declare-fun m!7820596 () Bool)

(assert (=> bm!644923 m!7820596))

(assert (=> b!7091802 m!7820588))

(declare-fun m!7820598 () Bool)

(assert (=> bm!644921 m!7820598))

(assert (=> b!7091691 d!2216976))

(declare-fun bm!644928 () Bool)

(declare-fun call!644933 () List!68764)

(declare-fun call!644938 () List!68764)

(assert (=> bm!644928 (= call!644933 call!644938)))

(declare-fun b!7091804 () Bool)

(declare-fun e!4263191 () (InoxSet Context!13594))

(declare-fun call!644937 () (InoxSet Context!13594))

(declare-fun call!644936 () (InoxSet Context!13594))

(assert (=> b!7091804 (= e!4263191 ((_ map or) call!644937 call!644936))))

(declare-fun b!7091805 () Bool)

(declare-fun e!4263189 () (InoxSet Context!13594))

(declare-fun call!644934 () (InoxSet Context!13594))

(assert (=> b!7091805 (= e!4263189 call!644934)))

(declare-fun d!2216978 () Bool)

(declare-fun c!1323451 () Bool)

(assert (=> d!2216978 (= c!1323451 (and ((_ is ElementMatch!17801) (regOne!36114 r!11554)) (= (c!1323410 (regOne!36114 r!11554)) a!1901)))))

(declare-fun e!4263190 () (InoxSet Context!13594))

(assert (=> d!2216978 (= (derivationStepZipperDown!2364 (regOne!36114 r!11554) (Context!13595 ($colon$colon!2708 lt!2556174 (regTwo!36114 r!11554))) a!1901) e!4263190)))

(declare-fun c!1323450 () Bool)

(declare-fun bm!644929 () Bool)

(assert (=> bm!644929 (= call!644937 (derivationStepZipperDown!2364 (ite c!1323450 (regOne!36115 (regOne!36114 r!11554)) (regOne!36114 (regOne!36114 r!11554))) (ite c!1323450 (Context!13595 ($colon$colon!2708 lt!2556174 (regTwo!36114 r!11554))) (Context!13595 call!644938)) a!1901))))

(declare-fun b!7091806 () Bool)

(declare-fun e!4263193 () (InoxSet Context!13594))

(declare-fun call!644935 () (InoxSet Context!13594))

(assert (=> b!7091806 (= e!4263193 ((_ map or) call!644937 call!644935))))

(declare-fun b!7091807 () Bool)

(declare-fun e!4263188 () (InoxSet Context!13594))

(assert (=> b!7091807 (= e!4263188 call!644934)))

(declare-fun b!7091808 () Bool)

(assert (=> b!7091808 (= e!4263190 e!4263193)))

(assert (=> b!7091808 (= c!1323450 ((_ is Union!17801) (regOne!36114 r!11554)))))

(declare-fun b!7091809 () Bool)

(assert (=> b!7091809 (= e!4263191 e!4263189)))

(declare-fun c!1323454 () Bool)

(assert (=> b!7091809 (= c!1323454 ((_ is Concat!26646) (regOne!36114 r!11554)))))

(declare-fun b!7091810 () Bool)

(declare-fun c!1323453 () Bool)

(declare-fun e!4263192 () Bool)

(assert (=> b!7091810 (= c!1323453 e!4263192)))

(declare-fun res!2896326 () Bool)

(assert (=> b!7091810 (=> (not res!2896326) (not e!4263192))))

(assert (=> b!7091810 (= res!2896326 ((_ is Concat!26646) (regOne!36114 r!11554)))))

(assert (=> b!7091810 (= e!4263193 e!4263191)))

(declare-fun b!7091811 () Bool)

(assert (=> b!7091811 (= e!4263192 (nullable!7441 (regOne!36114 (regOne!36114 r!11554))))))

(declare-fun bm!644930 () Bool)

(assert (=> bm!644930 (= call!644934 call!644936)))

(declare-fun bm!644931 () Bool)

(assert (=> bm!644931 (= call!644935 (derivationStepZipperDown!2364 (ite c!1323450 (regTwo!36115 (regOne!36114 r!11554)) (ite c!1323453 (regTwo!36114 (regOne!36114 r!11554)) (ite c!1323454 (regOne!36114 (regOne!36114 r!11554)) (reg!18130 (regOne!36114 r!11554))))) (ite (or c!1323450 c!1323453) (Context!13595 ($colon$colon!2708 lt!2556174 (regTwo!36114 r!11554))) (Context!13595 call!644933)) a!1901))))

(declare-fun b!7091812 () Bool)

(assert (=> b!7091812 (= e!4263188 ((as const (Array Context!13594 Bool)) false))))

(declare-fun bm!644932 () Bool)

(assert (=> bm!644932 (= call!644936 call!644935)))

(declare-fun b!7091813 () Bool)

(assert (=> b!7091813 (= e!4263190 (store ((as const (Array Context!13594 Bool)) false) (Context!13595 ($colon$colon!2708 lt!2556174 (regTwo!36114 r!11554))) true))))

(declare-fun b!7091814 () Bool)

(declare-fun c!1323452 () Bool)

(assert (=> b!7091814 (= c!1323452 ((_ is Star!17801) (regOne!36114 r!11554)))))

(assert (=> b!7091814 (= e!4263189 e!4263188)))

(declare-fun bm!644933 () Bool)

(assert (=> bm!644933 (= call!644938 ($colon$colon!2708 (exprs!7297 (Context!13595 ($colon$colon!2708 lt!2556174 (regTwo!36114 r!11554)))) (ite (or c!1323453 c!1323454) (regTwo!36114 (regOne!36114 r!11554)) (regOne!36114 r!11554))))))

(assert (= (and d!2216978 c!1323451) b!7091813))

(assert (= (and d!2216978 (not c!1323451)) b!7091808))

(assert (= (and b!7091808 c!1323450) b!7091806))

(assert (= (and b!7091808 (not c!1323450)) b!7091810))

(assert (= (and b!7091810 res!2896326) b!7091811))

(assert (= (and b!7091810 c!1323453) b!7091804))

(assert (= (and b!7091810 (not c!1323453)) b!7091809))

(assert (= (and b!7091809 c!1323454) b!7091805))

(assert (= (and b!7091809 (not c!1323454)) b!7091814))

(assert (= (and b!7091814 c!1323452) b!7091807))

(assert (= (and b!7091814 (not c!1323452)) b!7091812))

(assert (= (or b!7091805 b!7091807) bm!644928))

(assert (= (or b!7091805 b!7091807) bm!644930))

(assert (= (or b!7091804 bm!644930) bm!644932))

(assert (= (or b!7091804 bm!644928) bm!644933))

(assert (= (or b!7091806 bm!644932) bm!644931))

(assert (= (or b!7091806 b!7091804) bm!644929))

(declare-fun m!7820600 () Bool)

(assert (=> b!7091811 m!7820600))

(declare-fun m!7820602 () Bool)

(assert (=> bm!644929 m!7820602))

(declare-fun m!7820604 () Bool)

(assert (=> bm!644933 m!7820604))

(declare-fun m!7820606 () Bool)

(assert (=> b!7091813 m!7820606))

(declare-fun m!7820608 () Bool)

(assert (=> bm!644931 m!7820608))

(assert (=> b!7091691 d!2216978))

(declare-fun d!2216980 () Bool)

(assert (=> d!2216980 (= ($colon$colon!2708 lt!2556174 (regTwo!36114 r!11554)) (Cons!68640 (regTwo!36114 r!11554) lt!2556174))))

(assert (=> b!7091691 d!2216980))

(declare-fun d!2216982 () Bool)

(declare-fun choose!54672 ((InoxSet Context!13594) Int) (InoxSet Context!13594))

(assert (=> d!2216982 (= (map!16148 ((_ map or) lt!2556170 lt!2556165) lambda!429916) (choose!54672 ((_ map or) lt!2556170 lt!2556165) lambda!429916))))

(declare-fun bs!1883504 () Bool)

(assert (= bs!1883504 d!2216982))

(declare-fun m!7820610 () Bool)

(assert (=> bs!1883504 m!7820610))

(assert (=> b!7091696 d!2216982))

(declare-fun d!2216984 () Bool)

(assert (=> d!2216984 (forall!16733 (++!15970 (exprs!7297 c!9994) (exprs!7297 auxCtx!45)) lambda!429917)))

(declare-fun lt!2556185 () Unit!162293)

(declare-fun choose!54673 (List!68764 List!68764 Int) Unit!162293)

(assert (=> d!2216984 (= lt!2556185 (choose!54673 (exprs!7297 c!9994) (exprs!7297 auxCtx!45) lambda!429917))))

(assert (=> d!2216984 (forall!16733 (exprs!7297 c!9994) lambda!429917)))

(assert (=> d!2216984 (= (lemmaConcatPreservesForall!1100 (exprs!7297 c!9994) (exprs!7297 auxCtx!45) lambda!429917) lt!2556185)))

(declare-fun bs!1883505 () Bool)

(assert (= bs!1883505 d!2216984))

(assert (=> bs!1883505 m!7820554))

(assert (=> bs!1883505 m!7820554))

(declare-fun m!7820612 () Bool)

(assert (=> bs!1883505 m!7820612))

(declare-fun m!7820614 () Bool)

(assert (=> bs!1883505 m!7820614))

(assert (=> bs!1883505 m!7820528))

(assert (=> b!7091696 d!2216984))

(declare-fun d!2216986 () Bool)

(assert (=> d!2216986 (= (map!16148 lt!2556170 lambda!429916) (choose!54672 lt!2556170 lambda!429916))))

(declare-fun bs!1883506 () Bool)

(assert (= bs!1883506 d!2216986))

(declare-fun m!7820616 () Bool)

(assert (=> bs!1883506 m!7820616))

(assert (=> b!7091696 d!2216986))

(declare-fun bs!1883510 () Bool)

(declare-fun d!2216988 () Bool)

(assert (= bs!1883510 (and d!2216988 b!7091692)))

(declare-fun lambda!429920 () Int)

(assert (=> bs!1883510 (= lambda!429920 lambda!429917)))

(assert (=> d!2216988 (= (derivationStepZipperDown!2364 (regOne!36114 r!11554) (Context!13595 (++!15970 (exprs!7297 lt!2556169) (exprs!7297 auxCtx!45))) a!1901) (appendTo!872 (derivationStepZipperDown!2364 (regOne!36114 r!11554) lt!2556169 a!1901) auxCtx!45))))

(declare-fun lt!2556192 () Unit!162293)

(assert (=> d!2216988 (= lt!2556192 (lemmaConcatPreservesForall!1100 (exprs!7297 lt!2556169) (exprs!7297 auxCtx!45) lambda!429920))))

(declare-fun lt!2556191 () Unit!162293)

(declare-fun choose!54674 (Context!13594 Regex!17801 C!35872 Context!13594) Unit!162293)

(assert (=> d!2216988 (= lt!2556191 (choose!54674 lt!2556169 (regOne!36114 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216988 (validRegex!9076 (regOne!36114 r!11554))))

(assert (=> d!2216988 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!180 lt!2556169 (regOne!36114 r!11554) a!1901 auxCtx!45) lt!2556191)))

(declare-fun bs!1883511 () Bool)

(assert (= bs!1883511 d!2216988))

(declare-fun m!7820654 () Bool)

(assert (=> bs!1883511 m!7820654))

(declare-fun m!7820656 () Bool)

(assert (=> bs!1883511 m!7820656))

(declare-fun m!7820658 () Bool)

(assert (=> bs!1883511 m!7820658))

(assert (=> bs!1883511 m!7820544))

(declare-fun m!7820660 () Bool)

(assert (=> bs!1883511 m!7820660))

(declare-fun m!7820662 () Bool)

(assert (=> bs!1883511 m!7820662))

(declare-fun m!7820664 () Bool)

(assert (=> bs!1883511 m!7820664))

(assert (=> bs!1883511 m!7820544))

(assert (=> b!7091696 d!2216988))

(declare-fun d!2217004 () Bool)

(declare-fun res!2896334 () Bool)

(declare-fun e!4263216 () Bool)

(assert (=> d!2217004 (=> res!2896334 e!4263216)))

(assert (=> d!2217004 (= res!2896334 ((_ is Nil!68640) (exprs!7297 c!9994)))))

(assert (=> d!2217004 (= (forall!16733 (exprs!7297 c!9994) lambda!429917) e!4263216)))

(declare-fun b!7091852 () Bool)

(declare-fun e!4263217 () Bool)

(assert (=> b!7091852 (= e!4263216 e!4263217)))

(declare-fun res!2896335 () Bool)

(assert (=> b!7091852 (=> (not res!2896335) (not e!4263217))))

(declare-fun dynLambda!28000 (Int Regex!17801) Bool)

(assert (=> b!7091852 (= res!2896335 (dynLambda!28000 lambda!429917 (h!75088 (exprs!7297 c!9994))))))

(declare-fun b!7091853 () Bool)

(assert (=> b!7091853 (= e!4263217 (forall!16733 (t!382551 (exprs!7297 c!9994)) lambda!429917))))

(assert (= (and d!2217004 (not res!2896334)) b!7091852))

(assert (= (and b!7091852 res!2896335) b!7091853))

(declare-fun b_lambda!271025 () Bool)

(assert (=> (not b_lambda!271025) (not b!7091852)))

(declare-fun m!7820666 () Bool)

(assert (=> b!7091852 m!7820666))

(declare-fun m!7820668 () Bool)

(assert (=> b!7091853 m!7820668))

(assert (=> b!7091696 d!2217004))

(declare-fun d!2217006 () Bool)

(assert (=> d!2217006 (= ((_ map or) (map!16148 lt!2556170 lambda!429916) (map!16148 lt!2556165 lambda!429916)) (map!16148 ((_ map or) lt!2556170 lt!2556165) lambda!429916))))

(declare-fun lt!2556201 () Unit!162293)

(declare-fun choose!54675 ((InoxSet Context!13594) (InoxSet Context!13594) Int) Unit!162293)

(assert (=> d!2217006 (= lt!2556201 (choose!54675 lt!2556170 lt!2556165 lambda!429916))))

(assert (=> d!2217006 (= (lemmaMapAssociative!14 lt!2556170 lt!2556165 lambda!429916) lt!2556201)))

(declare-fun bs!1883513 () Bool)

(assert (= bs!1883513 d!2217006))

(assert (=> bs!1883513 m!7820540))

(assert (=> bs!1883513 m!7820524))

(assert (=> bs!1883513 m!7820550))

(declare-fun m!7820670 () Bool)

(assert (=> bs!1883513 m!7820670))

(assert (=> b!7091696 d!2217006))

(declare-fun bm!644956 () Bool)

(declare-fun call!644961 () List!68764)

(declare-fun call!644966 () List!68764)

(assert (=> bm!644956 (= call!644961 call!644966)))

(declare-fun b!7091854 () Bool)

(declare-fun e!4263221 () (InoxSet Context!13594))

(declare-fun call!644965 () (InoxSet Context!13594))

(declare-fun call!644964 () (InoxSet Context!13594))

(assert (=> b!7091854 (= e!4263221 ((_ map or) call!644965 call!644964))))

(declare-fun b!7091855 () Bool)

(declare-fun e!4263219 () (InoxSet Context!13594))

(declare-fun call!644962 () (InoxSet Context!13594))

(assert (=> b!7091855 (= e!4263219 call!644962)))

(declare-fun d!2217008 () Bool)

(declare-fun c!1323473 () Bool)

(assert (=> d!2217008 (= c!1323473 (and ((_ is ElementMatch!17801) (regOne!36114 r!11554)) (= (c!1323410 (regOne!36114 r!11554)) a!1901)))))

(declare-fun e!4263220 () (InoxSet Context!13594))

(assert (=> d!2217008 (= (derivationStepZipperDown!2364 (regOne!36114 r!11554) (Context!13595 lt!2556161) a!1901) e!4263220)))

(declare-fun c!1323472 () Bool)

(declare-fun bm!644957 () Bool)

(assert (=> bm!644957 (= call!644965 (derivationStepZipperDown!2364 (ite c!1323472 (regOne!36115 (regOne!36114 r!11554)) (regOne!36114 (regOne!36114 r!11554))) (ite c!1323472 (Context!13595 lt!2556161) (Context!13595 call!644966)) a!1901))))

(declare-fun b!7091856 () Bool)

(declare-fun e!4263223 () (InoxSet Context!13594))

(declare-fun call!644963 () (InoxSet Context!13594))

(assert (=> b!7091856 (= e!4263223 ((_ map or) call!644965 call!644963))))

(declare-fun b!7091857 () Bool)

(declare-fun e!4263218 () (InoxSet Context!13594))

(assert (=> b!7091857 (= e!4263218 call!644962)))

(declare-fun b!7091858 () Bool)

(assert (=> b!7091858 (= e!4263220 e!4263223)))

(assert (=> b!7091858 (= c!1323472 ((_ is Union!17801) (regOne!36114 r!11554)))))

(declare-fun b!7091859 () Bool)

(assert (=> b!7091859 (= e!4263221 e!4263219)))

(declare-fun c!1323476 () Bool)

(assert (=> b!7091859 (= c!1323476 ((_ is Concat!26646) (regOne!36114 r!11554)))))

(declare-fun b!7091860 () Bool)

(declare-fun c!1323475 () Bool)

(declare-fun e!4263222 () Bool)

(assert (=> b!7091860 (= c!1323475 e!4263222)))

(declare-fun res!2896336 () Bool)

(assert (=> b!7091860 (=> (not res!2896336) (not e!4263222))))

(assert (=> b!7091860 (= res!2896336 ((_ is Concat!26646) (regOne!36114 r!11554)))))

(assert (=> b!7091860 (= e!4263223 e!4263221)))

(declare-fun b!7091861 () Bool)

(assert (=> b!7091861 (= e!4263222 (nullable!7441 (regOne!36114 (regOne!36114 r!11554))))))

(declare-fun bm!644958 () Bool)

(assert (=> bm!644958 (= call!644962 call!644964)))

(declare-fun bm!644959 () Bool)

(assert (=> bm!644959 (= call!644963 (derivationStepZipperDown!2364 (ite c!1323472 (regTwo!36115 (regOne!36114 r!11554)) (ite c!1323475 (regTwo!36114 (regOne!36114 r!11554)) (ite c!1323476 (regOne!36114 (regOne!36114 r!11554)) (reg!18130 (regOne!36114 r!11554))))) (ite (or c!1323472 c!1323475) (Context!13595 lt!2556161) (Context!13595 call!644961)) a!1901))))

(declare-fun b!7091862 () Bool)

(assert (=> b!7091862 (= e!4263218 ((as const (Array Context!13594 Bool)) false))))

(declare-fun bm!644960 () Bool)

(assert (=> bm!644960 (= call!644964 call!644963)))

(declare-fun b!7091863 () Bool)

(assert (=> b!7091863 (= e!4263220 (store ((as const (Array Context!13594 Bool)) false) (Context!13595 lt!2556161) true))))

(declare-fun b!7091864 () Bool)

(declare-fun c!1323474 () Bool)

(assert (=> b!7091864 (= c!1323474 ((_ is Star!17801) (regOne!36114 r!11554)))))

(assert (=> b!7091864 (= e!4263219 e!4263218)))

(declare-fun bm!644961 () Bool)

(assert (=> bm!644961 (= call!644966 ($colon$colon!2708 (exprs!7297 (Context!13595 lt!2556161)) (ite (or c!1323475 c!1323476) (regTwo!36114 (regOne!36114 r!11554)) (regOne!36114 r!11554))))))

(assert (= (and d!2217008 c!1323473) b!7091863))

(assert (= (and d!2217008 (not c!1323473)) b!7091858))

(assert (= (and b!7091858 c!1323472) b!7091856))

(assert (= (and b!7091858 (not c!1323472)) b!7091860))

(assert (= (and b!7091860 res!2896336) b!7091861))

(assert (= (and b!7091860 c!1323475) b!7091854))

(assert (= (and b!7091860 (not c!1323475)) b!7091859))

(assert (= (and b!7091859 c!1323476) b!7091855))

(assert (= (and b!7091859 (not c!1323476)) b!7091864))

(assert (= (and b!7091864 c!1323474) b!7091857))

(assert (= (and b!7091864 (not c!1323474)) b!7091862))

(assert (= (or b!7091855 b!7091857) bm!644956))

(assert (= (or b!7091855 b!7091857) bm!644958))

(assert (= (or b!7091854 bm!644958) bm!644960))

(assert (= (or b!7091854 bm!644956) bm!644961))

(assert (= (or b!7091856 bm!644960) bm!644959))

(assert (= (or b!7091856 b!7091854) bm!644957))

(assert (=> b!7091861 m!7820600))

(declare-fun m!7820684 () Bool)

(assert (=> bm!644957 m!7820684))

(declare-fun m!7820686 () Bool)

(assert (=> bm!644961 m!7820686))

(declare-fun m!7820688 () Bool)

(assert (=> b!7091863 m!7820688))

(declare-fun m!7820690 () Bool)

(assert (=> bm!644959 m!7820690))

(assert (=> b!7091696 d!2217008))

(declare-fun bm!644962 () Bool)

(declare-fun call!644967 () List!68764)

(declare-fun call!644972 () List!68764)

(assert (=> bm!644962 (= call!644967 call!644972)))

(declare-fun b!7091869 () Bool)

(declare-fun e!4263231 () (InoxSet Context!13594))

(declare-fun call!644971 () (InoxSet Context!13594))

(declare-fun call!644970 () (InoxSet Context!13594))

(assert (=> b!7091869 (= e!4263231 ((_ map or) call!644971 call!644970))))

(declare-fun b!7091870 () Bool)

(declare-fun e!4263229 () (InoxSet Context!13594))

(declare-fun call!644968 () (InoxSet Context!13594))

(assert (=> b!7091870 (= e!4263229 call!644968)))

(declare-fun d!2217012 () Bool)

(declare-fun c!1323478 () Bool)

(assert (=> d!2217012 (= c!1323478 (and ((_ is ElementMatch!17801) (regTwo!36114 r!11554)) (= (c!1323410 (regTwo!36114 r!11554)) a!1901)))))

(declare-fun e!4263230 () (InoxSet Context!13594))

(assert (=> d!2217012 (= (derivationStepZipperDown!2364 (regTwo!36114 r!11554) c!9994 a!1901) e!4263230)))

(declare-fun bm!644963 () Bool)

(declare-fun c!1323477 () Bool)

(assert (=> bm!644963 (= call!644971 (derivationStepZipperDown!2364 (ite c!1323477 (regOne!36115 (regTwo!36114 r!11554)) (regOne!36114 (regTwo!36114 r!11554))) (ite c!1323477 c!9994 (Context!13595 call!644972)) a!1901))))

(declare-fun b!7091871 () Bool)

(declare-fun e!4263233 () (InoxSet Context!13594))

(declare-fun call!644969 () (InoxSet Context!13594))

(assert (=> b!7091871 (= e!4263233 ((_ map or) call!644971 call!644969))))

(declare-fun b!7091872 () Bool)

(declare-fun e!4263228 () (InoxSet Context!13594))

(assert (=> b!7091872 (= e!4263228 call!644968)))

(declare-fun b!7091873 () Bool)

(assert (=> b!7091873 (= e!4263230 e!4263233)))

(assert (=> b!7091873 (= c!1323477 ((_ is Union!17801) (regTwo!36114 r!11554)))))

(declare-fun b!7091874 () Bool)

(assert (=> b!7091874 (= e!4263231 e!4263229)))

(declare-fun c!1323481 () Bool)

(assert (=> b!7091874 (= c!1323481 ((_ is Concat!26646) (regTwo!36114 r!11554)))))

(declare-fun b!7091875 () Bool)

(declare-fun c!1323480 () Bool)

(declare-fun e!4263232 () Bool)

(assert (=> b!7091875 (= c!1323480 e!4263232)))

(declare-fun res!2896341 () Bool)

(assert (=> b!7091875 (=> (not res!2896341) (not e!4263232))))

(assert (=> b!7091875 (= res!2896341 ((_ is Concat!26646) (regTwo!36114 r!11554)))))

(assert (=> b!7091875 (= e!4263233 e!4263231)))

(declare-fun b!7091876 () Bool)

(assert (=> b!7091876 (= e!4263232 (nullable!7441 (regOne!36114 (regTwo!36114 r!11554))))))

(declare-fun bm!644964 () Bool)

(assert (=> bm!644964 (= call!644968 call!644970)))

(declare-fun bm!644965 () Bool)

(assert (=> bm!644965 (= call!644969 (derivationStepZipperDown!2364 (ite c!1323477 (regTwo!36115 (regTwo!36114 r!11554)) (ite c!1323480 (regTwo!36114 (regTwo!36114 r!11554)) (ite c!1323481 (regOne!36114 (regTwo!36114 r!11554)) (reg!18130 (regTwo!36114 r!11554))))) (ite (or c!1323477 c!1323480) c!9994 (Context!13595 call!644967)) a!1901))))

(declare-fun b!7091877 () Bool)

(assert (=> b!7091877 (= e!4263228 ((as const (Array Context!13594 Bool)) false))))

(declare-fun bm!644966 () Bool)

(assert (=> bm!644966 (= call!644970 call!644969)))

(declare-fun b!7091878 () Bool)

(assert (=> b!7091878 (= e!4263230 (store ((as const (Array Context!13594 Bool)) false) c!9994 true))))

(declare-fun b!7091879 () Bool)

(declare-fun c!1323479 () Bool)

(assert (=> b!7091879 (= c!1323479 ((_ is Star!17801) (regTwo!36114 r!11554)))))

(assert (=> b!7091879 (= e!4263229 e!4263228)))

(declare-fun bm!644967 () Bool)

(assert (=> bm!644967 (= call!644972 ($colon$colon!2708 (exprs!7297 c!9994) (ite (or c!1323480 c!1323481) (regTwo!36114 (regTwo!36114 r!11554)) (regTwo!36114 r!11554))))))

(assert (= (and d!2217012 c!1323478) b!7091878))

(assert (= (and d!2217012 (not c!1323478)) b!7091873))

(assert (= (and b!7091873 c!1323477) b!7091871))

(assert (= (and b!7091873 (not c!1323477)) b!7091875))

(assert (= (and b!7091875 res!2896341) b!7091876))

(assert (= (and b!7091875 c!1323480) b!7091869))

(assert (= (and b!7091875 (not c!1323480)) b!7091874))

(assert (= (and b!7091874 c!1323481) b!7091870))

(assert (= (and b!7091874 (not c!1323481)) b!7091879))

(assert (= (and b!7091879 c!1323479) b!7091872))

(assert (= (and b!7091879 (not c!1323479)) b!7091877))

(assert (= (or b!7091870 b!7091872) bm!644962))

(assert (= (or b!7091870 b!7091872) bm!644964))

(assert (= (or b!7091869 bm!644964) bm!644966))

(assert (= (or b!7091869 bm!644962) bm!644967))

(assert (= (or b!7091871 bm!644966) bm!644965))

(assert (= (or b!7091871 b!7091869) bm!644963))

(assert (=> b!7091876 m!7820592))

(declare-fun m!7820692 () Bool)

(assert (=> bm!644963 m!7820692))

(declare-fun m!7820694 () Bool)

(assert (=> bm!644967 m!7820694))

(declare-fun m!7820696 () Bool)

(assert (=> b!7091878 m!7820696))

(declare-fun m!7820698 () Bool)

(assert (=> bm!644965 m!7820698))

(assert (=> b!7091696 d!2217012))

(declare-fun bs!1883515 () Bool)

(declare-fun d!2217014 () Bool)

(assert (= bs!1883515 (and d!2217014 b!7091692)))

(declare-fun lambda!429924 () Int)

(assert (=> bs!1883515 (= lambda!429924 lambda!429917)))

(declare-fun bs!1883516 () Bool)

(assert (= bs!1883516 (and d!2217014 d!2216988)))

(assert (=> bs!1883516 (= lambda!429924 lambda!429920)))

(assert (=> d!2217014 (= (derivationStepZipperDown!2364 (regTwo!36114 r!11554) (Context!13595 (++!15970 (exprs!7297 c!9994) (exprs!7297 auxCtx!45))) a!1901) (appendTo!872 (derivationStepZipperDown!2364 (regTwo!36114 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2556203 () Unit!162293)

(assert (=> d!2217014 (= lt!2556203 (lemmaConcatPreservesForall!1100 (exprs!7297 c!9994) (exprs!7297 auxCtx!45) lambda!429924))))

(declare-fun lt!2556202 () Unit!162293)

(assert (=> d!2217014 (= lt!2556202 (choose!54674 c!9994 (regTwo!36114 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2217014 (validRegex!9076 (regTwo!36114 r!11554))))

(assert (=> d!2217014 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!180 c!9994 (regTwo!36114 r!11554) a!1901 auxCtx!45) lt!2556202)))

(declare-fun bs!1883517 () Bool)

(assert (= bs!1883517 d!2217014))

(assert (=> bs!1883517 m!7820554))

(declare-fun m!7820704 () Bool)

(assert (=> bs!1883517 m!7820704))

(declare-fun m!7820706 () Bool)

(assert (=> bs!1883517 m!7820706))

(assert (=> bs!1883517 m!7820546))

(declare-fun m!7820708 () Bool)

(assert (=> bs!1883517 m!7820708))

(assert (=> bs!1883517 m!7820556))

(declare-fun m!7820710 () Bool)

(assert (=> bs!1883517 m!7820710))

(assert (=> bs!1883517 m!7820546))

(assert (=> b!7091696 d!2217014))

(declare-fun bs!1883519 () Bool)

(declare-fun d!2217018 () Bool)

(assert (= bs!1883519 (and d!2217018 b!7091686)))

(declare-fun lambda!429933 () Int)

(assert (=> bs!1883519 (= lambda!429933 lambda!429916)))

(assert (=> d!2217018 true))

(assert (=> d!2217018 (= (appendTo!872 lt!2556170 auxCtx!45) (map!16148 lt!2556170 lambda!429933))))

(declare-fun bs!1883520 () Bool)

(assert (= bs!1883520 d!2217018))

(declare-fun m!7820722 () Bool)

(assert (=> bs!1883520 m!7820722))

(assert (=> b!7091696 d!2217018))

(declare-fun d!2217024 () Bool)

(assert (=> d!2217024 (= ($colon$colon!2708 (exprs!7297 c!9994) (regTwo!36114 r!11554)) (Cons!68640 (regTwo!36114 r!11554) (exprs!7297 c!9994)))))

(assert (=> b!7091696 d!2217024))

(declare-fun d!2217026 () Bool)

(assert (=> d!2217026 (forall!16733 (++!15970 lt!2556173 (exprs!7297 auxCtx!45)) lambda!429917)))

(declare-fun lt!2556208 () Unit!162293)

(assert (=> d!2217026 (= lt!2556208 (choose!54673 lt!2556173 (exprs!7297 auxCtx!45) lambda!429917))))

(assert (=> d!2217026 (forall!16733 lt!2556173 lambda!429917)))

(assert (=> d!2217026 (= (lemmaConcatPreservesForall!1100 lt!2556173 (exprs!7297 auxCtx!45) lambda!429917) lt!2556208)))

(declare-fun bs!1883522 () Bool)

(assert (= bs!1883522 d!2217026))

(assert (=> bs!1883522 m!7820552))

(assert (=> bs!1883522 m!7820552))

(declare-fun m!7820724 () Bool)

(assert (=> bs!1883522 m!7820724))

(declare-fun m!7820728 () Bool)

(assert (=> bs!1883522 m!7820728))

(declare-fun m!7820730 () Bool)

(assert (=> bs!1883522 m!7820730))

(assert (=> b!7091696 d!2217026))

(declare-fun b!7091916 () Bool)

(declare-fun e!4263255 () List!68764)

(assert (=> b!7091916 (= e!4263255 (exprs!7297 auxCtx!45))))

(declare-fun d!2217030 () Bool)

(declare-fun e!4263254 () Bool)

(assert (=> d!2217030 e!4263254))

(declare-fun res!2896353 () Bool)

(assert (=> d!2217030 (=> (not res!2896353) (not e!4263254))))

(declare-fun lt!2556214 () List!68764)

(declare-fun content!13940 (List!68764) (InoxSet Regex!17801))

(assert (=> d!2217030 (= res!2896353 (= (content!13940 lt!2556214) ((_ map or) (content!13940 lt!2556173) (content!13940 (exprs!7297 auxCtx!45)))))))

(assert (=> d!2217030 (= lt!2556214 e!4263255)))

(declare-fun c!1323497 () Bool)

(assert (=> d!2217030 (= c!1323497 ((_ is Nil!68640) lt!2556173))))

(assert (=> d!2217030 (= (++!15970 lt!2556173 (exprs!7297 auxCtx!45)) lt!2556214)))

(declare-fun b!7091919 () Bool)

(assert (=> b!7091919 (= e!4263254 (or (not (= (exprs!7297 auxCtx!45) Nil!68640)) (= lt!2556214 lt!2556173)))))

(declare-fun b!7091918 () Bool)

(declare-fun res!2896352 () Bool)

(assert (=> b!7091918 (=> (not res!2896352) (not e!4263254))))

(declare-fun size!41315 (List!68764) Int)

(assert (=> b!7091918 (= res!2896352 (= (size!41315 lt!2556214) (+ (size!41315 lt!2556173) (size!41315 (exprs!7297 auxCtx!45)))))))

(declare-fun b!7091917 () Bool)

(assert (=> b!7091917 (= e!4263255 (Cons!68640 (h!75088 lt!2556173) (++!15970 (t!382551 lt!2556173) (exprs!7297 auxCtx!45))))))

(assert (= (and d!2217030 c!1323497) b!7091916))

(assert (= (and d!2217030 (not c!1323497)) b!7091917))

(assert (= (and d!2217030 res!2896353) b!7091918))

(assert (= (and b!7091918 res!2896352) b!7091919))

(declare-fun m!7820762 () Bool)

(assert (=> d!2217030 m!7820762))

(declare-fun m!7820764 () Bool)

(assert (=> d!2217030 m!7820764))

(declare-fun m!7820766 () Bool)

(assert (=> d!2217030 m!7820766))

(declare-fun m!7820768 () Bool)

(assert (=> b!7091918 m!7820768))

(declare-fun m!7820770 () Bool)

(assert (=> b!7091918 m!7820770))

(declare-fun m!7820772 () Bool)

(assert (=> b!7091918 m!7820772))

(declare-fun m!7820774 () Bool)

(assert (=> b!7091917 m!7820774))

(assert (=> b!7091696 d!2217030))

(declare-fun d!2217044 () Bool)

(assert (=> d!2217044 (= (map!16148 lt!2556165 lambda!429916) (choose!54672 lt!2556165 lambda!429916))))

(declare-fun bs!1883531 () Bool)

(assert (= bs!1883531 d!2217044))

(declare-fun m!7820776 () Bool)

(assert (=> bs!1883531 m!7820776))

(assert (=> b!7091696 d!2217044))

(declare-fun bm!644980 () Bool)

(declare-fun call!644985 () List!68764)

(declare-fun call!644990 () List!68764)

(assert (=> bm!644980 (= call!644985 call!644990)))

(declare-fun b!7091920 () Bool)

(declare-fun e!4263259 () (InoxSet Context!13594))

(declare-fun call!644989 () (InoxSet Context!13594))

(declare-fun call!644988 () (InoxSet Context!13594))

(assert (=> b!7091920 (= e!4263259 ((_ map or) call!644989 call!644988))))

(declare-fun b!7091921 () Bool)

(declare-fun e!4263257 () (InoxSet Context!13594))

(declare-fun call!644986 () (InoxSet Context!13594))

(assert (=> b!7091921 (= e!4263257 call!644986)))

(declare-fun d!2217046 () Bool)

(declare-fun c!1323499 () Bool)

(assert (=> d!2217046 (= c!1323499 (and ((_ is ElementMatch!17801) (regOne!36114 r!11554)) (= (c!1323410 (regOne!36114 r!11554)) a!1901)))))

(declare-fun e!4263258 () (InoxSet Context!13594))

(assert (=> d!2217046 (= (derivationStepZipperDown!2364 (regOne!36114 r!11554) lt!2556169 a!1901) e!4263258)))

(declare-fun c!1323498 () Bool)

(declare-fun bm!644981 () Bool)

(assert (=> bm!644981 (= call!644989 (derivationStepZipperDown!2364 (ite c!1323498 (regOne!36115 (regOne!36114 r!11554)) (regOne!36114 (regOne!36114 r!11554))) (ite c!1323498 lt!2556169 (Context!13595 call!644990)) a!1901))))

(declare-fun b!7091922 () Bool)

(declare-fun e!4263261 () (InoxSet Context!13594))

(declare-fun call!644987 () (InoxSet Context!13594))

(assert (=> b!7091922 (= e!4263261 ((_ map or) call!644989 call!644987))))

(declare-fun b!7091923 () Bool)

(declare-fun e!4263256 () (InoxSet Context!13594))

(assert (=> b!7091923 (= e!4263256 call!644986)))

(declare-fun b!7091924 () Bool)

(assert (=> b!7091924 (= e!4263258 e!4263261)))

(assert (=> b!7091924 (= c!1323498 ((_ is Union!17801) (regOne!36114 r!11554)))))

(declare-fun b!7091925 () Bool)

(assert (=> b!7091925 (= e!4263259 e!4263257)))

(declare-fun c!1323502 () Bool)

(assert (=> b!7091925 (= c!1323502 ((_ is Concat!26646) (regOne!36114 r!11554)))))

(declare-fun b!7091926 () Bool)

(declare-fun c!1323501 () Bool)

(declare-fun e!4263260 () Bool)

(assert (=> b!7091926 (= c!1323501 e!4263260)))

(declare-fun res!2896354 () Bool)

(assert (=> b!7091926 (=> (not res!2896354) (not e!4263260))))

(assert (=> b!7091926 (= res!2896354 ((_ is Concat!26646) (regOne!36114 r!11554)))))

(assert (=> b!7091926 (= e!4263261 e!4263259)))

(declare-fun b!7091927 () Bool)

(assert (=> b!7091927 (= e!4263260 (nullable!7441 (regOne!36114 (regOne!36114 r!11554))))))

(declare-fun bm!644982 () Bool)

(assert (=> bm!644982 (= call!644986 call!644988)))

(declare-fun bm!644983 () Bool)

(assert (=> bm!644983 (= call!644987 (derivationStepZipperDown!2364 (ite c!1323498 (regTwo!36115 (regOne!36114 r!11554)) (ite c!1323501 (regTwo!36114 (regOne!36114 r!11554)) (ite c!1323502 (regOne!36114 (regOne!36114 r!11554)) (reg!18130 (regOne!36114 r!11554))))) (ite (or c!1323498 c!1323501) lt!2556169 (Context!13595 call!644985)) a!1901))))

(declare-fun b!7091928 () Bool)

(assert (=> b!7091928 (= e!4263256 ((as const (Array Context!13594 Bool)) false))))

(declare-fun bm!644984 () Bool)

(assert (=> bm!644984 (= call!644988 call!644987)))

(declare-fun b!7091929 () Bool)

(assert (=> b!7091929 (= e!4263258 (store ((as const (Array Context!13594 Bool)) false) lt!2556169 true))))

(declare-fun b!7091930 () Bool)

(declare-fun c!1323500 () Bool)

(assert (=> b!7091930 (= c!1323500 ((_ is Star!17801) (regOne!36114 r!11554)))))

(assert (=> b!7091930 (= e!4263257 e!4263256)))

(declare-fun bm!644985 () Bool)

(assert (=> bm!644985 (= call!644990 ($colon$colon!2708 (exprs!7297 lt!2556169) (ite (or c!1323501 c!1323502) (regTwo!36114 (regOne!36114 r!11554)) (regOne!36114 r!11554))))))

(assert (= (and d!2217046 c!1323499) b!7091929))

(assert (= (and d!2217046 (not c!1323499)) b!7091924))

(assert (= (and b!7091924 c!1323498) b!7091922))

(assert (= (and b!7091924 (not c!1323498)) b!7091926))

(assert (= (and b!7091926 res!2896354) b!7091927))

(assert (= (and b!7091926 c!1323501) b!7091920))

(assert (= (and b!7091926 (not c!1323501)) b!7091925))

(assert (= (and b!7091925 c!1323502) b!7091921))

(assert (= (and b!7091925 (not c!1323502)) b!7091930))

(assert (= (and b!7091930 c!1323500) b!7091923))

(assert (= (and b!7091930 (not c!1323500)) b!7091928))

(assert (= (or b!7091921 b!7091923) bm!644980))

(assert (= (or b!7091921 b!7091923) bm!644982))

(assert (= (or b!7091920 bm!644982) bm!644984))

(assert (= (or b!7091920 bm!644980) bm!644985))

(assert (= (or b!7091922 bm!644984) bm!644983))

(assert (= (or b!7091922 b!7091920) bm!644981))

(assert (=> b!7091927 m!7820600))

(declare-fun m!7820780 () Bool)

(assert (=> bm!644981 m!7820780))

(declare-fun m!7820782 () Bool)

(assert (=> bm!644985 m!7820782))

(declare-fun m!7820784 () Bool)

(assert (=> b!7091929 m!7820784))

(declare-fun m!7820786 () Bool)

(assert (=> bm!644983 m!7820786))

(assert (=> b!7091696 d!2217046))

(declare-fun bs!1883533 () Bool)

(declare-fun d!2217050 () Bool)

(assert (= bs!1883533 (and d!2217050 b!7091686)))

(declare-fun lambda!429937 () Int)

(assert (=> bs!1883533 (= lambda!429937 lambda!429916)))

(declare-fun bs!1883534 () Bool)

(assert (= bs!1883534 (and d!2217050 d!2217018)))

(assert (=> bs!1883534 (= lambda!429937 lambda!429933)))

(assert (=> d!2217050 true))

(assert (=> d!2217050 (= (appendTo!872 lt!2556165 auxCtx!45) (map!16148 lt!2556165 lambda!429937))))

(declare-fun bs!1883535 () Bool)

(assert (= bs!1883535 d!2217050))

(declare-fun m!7820796 () Bool)

(assert (=> bs!1883535 m!7820796))

(assert (=> b!7091696 d!2217050))

(declare-fun b!7092005 () Bool)

(declare-fun e!4263304 () Bool)

(declare-fun e!4263300 () Bool)

(assert (=> b!7092005 (= e!4263304 e!4263300)))

(declare-fun c!1323515 () Bool)

(assert (=> b!7092005 (= c!1323515 ((_ is Union!17801) (regTwo!36114 r!11554)))))

(declare-fun c!1323514 () Bool)

(declare-fun bm!645001 () Bool)

(declare-fun call!645008 () Bool)

(assert (=> bm!645001 (= call!645008 (validRegex!9076 (ite c!1323514 (reg!18130 (regTwo!36114 r!11554)) (ite c!1323515 (regTwo!36115 (regTwo!36114 r!11554)) (regOne!36114 (regTwo!36114 r!11554))))))))

(declare-fun b!7092006 () Bool)

(declare-fun res!2896371 () Bool)

(declare-fun e!4263306 () Bool)

(assert (=> b!7092006 (=> res!2896371 e!4263306)))

(assert (=> b!7092006 (= res!2896371 (not ((_ is Concat!26646) (regTwo!36114 r!11554))))))

(assert (=> b!7092006 (= e!4263300 e!4263306)))

(declare-fun b!7092007 () Bool)

(declare-fun e!4263303 () Bool)

(assert (=> b!7092007 (= e!4263304 e!4263303)))

(declare-fun res!2896375 () Bool)

(assert (=> b!7092007 (= res!2896375 (not (nullable!7441 (reg!18130 (regTwo!36114 r!11554)))))))

(assert (=> b!7092007 (=> (not res!2896375) (not e!4263303))))

(declare-fun b!7092008 () Bool)

(declare-fun res!2896373 () Bool)

(declare-fun e!4263302 () Bool)

(assert (=> b!7092008 (=> (not res!2896373) (not e!4263302))))

(declare-fun call!645006 () Bool)

(assert (=> b!7092008 (= res!2896373 call!645006)))

(assert (=> b!7092008 (= e!4263300 e!4263302)))

(declare-fun b!7092009 () Bool)

(declare-fun e!4263301 () Bool)

(assert (=> b!7092009 (= e!4263306 e!4263301)))

(declare-fun res!2896374 () Bool)

(assert (=> b!7092009 (=> (not res!2896374) (not e!4263301))))

(declare-fun call!645007 () Bool)

(assert (=> b!7092009 (= res!2896374 call!645007)))

(declare-fun b!7092010 () Bool)

(assert (=> b!7092010 (= e!4263303 call!645008)))

(declare-fun d!2217054 () Bool)

(declare-fun res!2896372 () Bool)

(declare-fun e!4263305 () Bool)

(assert (=> d!2217054 (=> res!2896372 e!4263305)))

(assert (=> d!2217054 (= res!2896372 ((_ is ElementMatch!17801) (regTwo!36114 r!11554)))))

(assert (=> d!2217054 (= (validRegex!9076 (regTwo!36114 r!11554)) e!4263305)))

(declare-fun b!7092011 () Bool)

(assert (=> b!7092011 (= e!4263301 call!645006)))

(declare-fun bm!645002 () Bool)

(assert (=> bm!645002 (= call!645007 call!645008)))

(declare-fun b!7092012 () Bool)

(assert (=> b!7092012 (= e!4263302 call!645007)))

(declare-fun bm!645003 () Bool)

(assert (=> bm!645003 (= call!645006 (validRegex!9076 (ite c!1323515 (regOne!36115 (regTwo!36114 r!11554)) (regTwo!36114 (regTwo!36114 r!11554)))))))

(declare-fun b!7092013 () Bool)

(assert (=> b!7092013 (= e!4263305 e!4263304)))

(assert (=> b!7092013 (= c!1323514 ((_ is Star!17801) (regTwo!36114 r!11554)))))

(assert (= (and d!2217054 (not res!2896372)) b!7092013))

(assert (= (and b!7092013 c!1323514) b!7092007))

(assert (= (and b!7092013 (not c!1323514)) b!7092005))

(assert (= (and b!7092007 res!2896375) b!7092010))

(assert (= (and b!7092005 c!1323515) b!7092008))

(assert (= (and b!7092005 (not c!1323515)) b!7092006))

(assert (= (and b!7092008 res!2896373) b!7092012))

(assert (= (and b!7092006 (not res!2896371)) b!7092009))

(assert (= (and b!7092009 res!2896374) b!7092011))

(assert (= (or b!7092008 b!7092011) bm!645003))

(assert (= (or b!7092012 b!7092009) bm!645002))

(assert (= (or b!7092010 bm!645002) bm!645001))

(declare-fun m!7820810 () Bool)

(assert (=> bm!645001 m!7820810))

(declare-fun m!7820812 () Bool)

(assert (=> b!7092007 m!7820812))

(declare-fun m!7820814 () Bool)

(assert (=> bm!645003 m!7820814))

(assert (=> b!7091692 d!2217054))

(assert (=> b!7091692 d!2216984))

(declare-fun b!7092014 () Bool)

(declare-fun e!4263308 () List!68764)

(assert (=> b!7092014 (= e!4263308 (exprs!7297 auxCtx!45))))

(declare-fun d!2217062 () Bool)

(declare-fun e!4263307 () Bool)

(assert (=> d!2217062 e!4263307))

(declare-fun res!2896377 () Bool)

(assert (=> d!2217062 (=> (not res!2896377) (not e!4263307))))

(declare-fun lt!2556218 () List!68764)

(assert (=> d!2217062 (= res!2896377 (= (content!13940 lt!2556218) ((_ map or) (content!13940 (exprs!7297 c!9994)) (content!13940 (exprs!7297 auxCtx!45)))))))

(assert (=> d!2217062 (= lt!2556218 e!4263308)))

(declare-fun c!1323516 () Bool)

(assert (=> d!2217062 (= c!1323516 ((_ is Nil!68640) (exprs!7297 c!9994)))))

(assert (=> d!2217062 (= (++!15970 (exprs!7297 c!9994) (exprs!7297 auxCtx!45)) lt!2556218)))

(declare-fun b!7092017 () Bool)

(assert (=> b!7092017 (= e!4263307 (or (not (= (exprs!7297 auxCtx!45) Nil!68640)) (= lt!2556218 (exprs!7297 c!9994))))))

(declare-fun b!7092016 () Bool)

(declare-fun res!2896376 () Bool)

(assert (=> b!7092016 (=> (not res!2896376) (not e!4263307))))

(assert (=> b!7092016 (= res!2896376 (= (size!41315 lt!2556218) (+ (size!41315 (exprs!7297 c!9994)) (size!41315 (exprs!7297 auxCtx!45)))))))

(declare-fun b!7092015 () Bool)

(assert (=> b!7092015 (= e!4263308 (Cons!68640 (h!75088 (exprs!7297 c!9994)) (++!15970 (t!382551 (exprs!7297 c!9994)) (exprs!7297 auxCtx!45))))))

(assert (= (and d!2217062 c!1323516) b!7092014))

(assert (= (and d!2217062 (not c!1323516)) b!7092015))

(assert (= (and d!2217062 res!2896377) b!7092016))

(assert (= (and b!7092016 res!2896376) b!7092017))

(declare-fun m!7820816 () Bool)

(assert (=> d!2217062 m!7820816))

(declare-fun m!7820818 () Bool)

(assert (=> d!2217062 m!7820818))

(assert (=> d!2217062 m!7820766))

(declare-fun m!7820820 () Bool)

(assert (=> b!7092016 m!7820820))

(declare-fun m!7820822 () Bool)

(assert (=> b!7092016 m!7820822))

(assert (=> b!7092016 m!7820772))

(declare-fun m!7820824 () Bool)

(assert (=> b!7092015 m!7820824))

(assert (=> b!7091692 d!2217062))

(declare-fun b!7092018 () Bool)

(declare-fun e!4263313 () Bool)

(declare-fun e!4263309 () Bool)

(assert (=> b!7092018 (= e!4263313 e!4263309)))

(declare-fun c!1323518 () Bool)

(assert (=> b!7092018 (= c!1323518 ((_ is Union!17801) r!11554))))

(declare-fun call!645011 () Bool)

(declare-fun bm!645004 () Bool)

(declare-fun c!1323517 () Bool)

(assert (=> bm!645004 (= call!645011 (validRegex!9076 (ite c!1323517 (reg!18130 r!11554) (ite c!1323518 (regTwo!36115 r!11554) (regOne!36114 r!11554)))))))

(declare-fun b!7092019 () Bool)

(declare-fun res!2896378 () Bool)

(declare-fun e!4263315 () Bool)

(assert (=> b!7092019 (=> res!2896378 e!4263315)))

(assert (=> b!7092019 (= res!2896378 (not ((_ is Concat!26646) r!11554)))))

(assert (=> b!7092019 (= e!4263309 e!4263315)))

(declare-fun b!7092020 () Bool)

(declare-fun e!4263312 () Bool)

(assert (=> b!7092020 (= e!4263313 e!4263312)))

(declare-fun res!2896382 () Bool)

(assert (=> b!7092020 (= res!2896382 (not (nullable!7441 (reg!18130 r!11554))))))

(assert (=> b!7092020 (=> (not res!2896382) (not e!4263312))))

(declare-fun b!7092021 () Bool)

(declare-fun res!2896380 () Bool)

(declare-fun e!4263311 () Bool)

(assert (=> b!7092021 (=> (not res!2896380) (not e!4263311))))

(declare-fun call!645009 () Bool)

(assert (=> b!7092021 (= res!2896380 call!645009)))

(assert (=> b!7092021 (= e!4263309 e!4263311)))

(declare-fun b!7092022 () Bool)

(declare-fun e!4263310 () Bool)

(assert (=> b!7092022 (= e!4263315 e!4263310)))

(declare-fun res!2896381 () Bool)

(assert (=> b!7092022 (=> (not res!2896381) (not e!4263310))))

(declare-fun call!645010 () Bool)

(assert (=> b!7092022 (= res!2896381 call!645010)))

(declare-fun b!7092023 () Bool)

(assert (=> b!7092023 (= e!4263312 call!645011)))

(declare-fun d!2217064 () Bool)

(declare-fun res!2896379 () Bool)

(declare-fun e!4263314 () Bool)

(assert (=> d!2217064 (=> res!2896379 e!4263314)))

(assert (=> d!2217064 (= res!2896379 ((_ is ElementMatch!17801) r!11554))))

(assert (=> d!2217064 (= (validRegex!9076 r!11554) e!4263314)))

(declare-fun b!7092024 () Bool)

(assert (=> b!7092024 (= e!4263310 call!645009)))

(declare-fun bm!645005 () Bool)

(assert (=> bm!645005 (= call!645010 call!645011)))

(declare-fun b!7092025 () Bool)

(assert (=> b!7092025 (= e!4263311 call!645010)))

(declare-fun bm!645006 () Bool)

(assert (=> bm!645006 (= call!645009 (validRegex!9076 (ite c!1323518 (regOne!36115 r!11554) (regTwo!36114 r!11554))))))

(declare-fun b!7092026 () Bool)

(assert (=> b!7092026 (= e!4263314 e!4263313)))

(assert (=> b!7092026 (= c!1323517 ((_ is Star!17801) r!11554))))

(assert (= (and d!2217064 (not res!2896379)) b!7092026))

(assert (= (and b!7092026 c!1323517) b!7092020))

(assert (= (and b!7092026 (not c!1323517)) b!7092018))

(assert (= (and b!7092020 res!2896382) b!7092023))

(assert (= (and b!7092018 c!1323518) b!7092021))

(assert (= (and b!7092018 (not c!1323518)) b!7092019))

(assert (= (and b!7092021 res!2896380) b!7092025))

(assert (= (and b!7092019 (not res!2896378)) b!7092022))

(assert (= (and b!7092022 res!2896381) b!7092024))

(assert (= (or b!7092021 b!7092024) bm!645006))

(assert (= (or b!7092025 b!7092022) bm!645005))

(assert (= (or b!7092023 bm!645005) bm!645004))

(declare-fun m!7820826 () Bool)

(assert (=> bm!645004 m!7820826))

(declare-fun m!7820828 () Bool)

(assert (=> b!7092020 m!7820828))

(declare-fun m!7820830 () Bool)

(assert (=> bm!645006 m!7820830))

(assert (=> start!690284 d!2217064))

(declare-fun bs!1883546 () Bool)

(declare-fun d!2217066 () Bool)

(assert (= bs!1883546 (and d!2217066 b!7091692)))

(declare-fun lambda!429944 () Int)

(assert (=> bs!1883546 (= lambda!429944 lambda!429917)))

(declare-fun bs!1883547 () Bool)

(assert (= bs!1883547 (and d!2217066 d!2216988)))

(assert (=> bs!1883547 (= lambda!429944 lambda!429920)))

(declare-fun bs!1883548 () Bool)

(assert (= bs!1883548 (and d!2217066 d!2217014)))

(assert (=> bs!1883548 (= lambda!429944 lambda!429924)))

(assert (=> d!2217066 (= (inv!87367 c!9994) (forall!16733 (exprs!7297 c!9994) lambda!429944))))

(declare-fun bs!1883549 () Bool)

(assert (= bs!1883549 d!2217066))

(declare-fun m!7820832 () Bool)

(assert (=> bs!1883549 m!7820832))

(assert (=> start!690284 d!2217066))

(declare-fun bs!1883550 () Bool)

(declare-fun d!2217068 () Bool)

(assert (= bs!1883550 (and d!2217068 b!7091692)))

(declare-fun lambda!429945 () Int)

(assert (=> bs!1883550 (= lambda!429945 lambda!429917)))

(declare-fun bs!1883551 () Bool)

(assert (= bs!1883551 (and d!2217068 d!2216988)))

(assert (=> bs!1883551 (= lambda!429945 lambda!429920)))

(declare-fun bs!1883552 () Bool)

(assert (= bs!1883552 (and d!2217068 d!2217014)))

(assert (=> bs!1883552 (= lambda!429945 lambda!429924)))

(declare-fun bs!1883553 () Bool)

(assert (= bs!1883553 (and d!2217068 d!2217066)))

(assert (=> bs!1883553 (= lambda!429945 lambda!429944)))

(assert (=> d!2217068 (= (inv!87367 auxCtx!45) (forall!16733 (exprs!7297 auxCtx!45) lambda!429945))))

(declare-fun bs!1883554 () Bool)

(assert (= bs!1883554 d!2217068))

(declare-fun m!7820834 () Bool)

(assert (=> bs!1883554 m!7820834))

(assert (=> start!690284 d!2217068))

(declare-fun d!2217070 () Bool)

(declare-fun nullableFct!2854 (Regex!17801) Bool)

(assert (=> d!2217070 (= (nullable!7441 (regOne!36114 r!11554)) (nullableFct!2854 (regOne!36114 r!11554)))))

(declare-fun bs!1883555 () Bool)

(assert (= bs!1883555 d!2217070))

(declare-fun m!7820836 () Bool)

(assert (=> bs!1883555 m!7820836))

(assert (=> b!7091688 d!2217070))

(declare-fun b!7092031 () Bool)

(declare-fun e!4263318 () Bool)

(declare-fun tp!1948352 () Bool)

(declare-fun tp!1948353 () Bool)

(assert (=> b!7092031 (= e!4263318 (and tp!1948352 tp!1948353))))

(assert (=> b!7091690 (= tp!1948303 e!4263318)))

(assert (= (and b!7091690 ((_ is Cons!68640) (exprs!7297 auxCtx!45))) b!7092031))

(declare-fun b!7092045 () Bool)

(declare-fun e!4263321 () Bool)

(declare-fun tp!1948368 () Bool)

(declare-fun tp!1948367 () Bool)

(assert (=> b!7092045 (= e!4263321 (and tp!1948368 tp!1948367))))

(assert (=> b!7091687 (= tp!1948302 e!4263321)))

(declare-fun b!7092042 () Bool)

(assert (=> b!7092042 (= e!4263321 tp_is_empty!44835)))

(declare-fun b!7092044 () Bool)

(declare-fun tp!1948365 () Bool)

(assert (=> b!7092044 (= e!4263321 tp!1948365)))

(declare-fun b!7092043 () Bool)

(declare-fun tp!1948366 () Bool)

(declare-fun tp!1948364 () Bool)

(assert (=> b!7092043 (= e!4263321 (and tp!1948366 tp!1948364))))

(assert (= (and b!7091687 ((_ is ElementMatch!17801) (regOne!36114 r!11554))) b!7092042))

(assert (= (and b!7091687 ((_ is Concat!26646) (regOne!36114 r!11554))) b!7092043))

(assert (= (and b!7091687 ((_ is Star!17801) (regOne!36114 r!11554))) b!7092044))

(assert (= (and b!7091687 ((_ is Union!17801) (regOne!36114 r!11554))) b!7092045))

(declare-fun b!7092049 () Bool)

(declare-fun e!4263322 () Bool)

(declare-fun tp!1948373 () Bool)

(declare-fun tp!1948372 () Bool)

(assert (=> b!7092049 (= e!4263322 (and tp!1948373 tp!1948372))))

(assert (=> b!7091687 (= tp!1948301 e!4263322)))

(declare-fun b!7092046 () Bool)

(assert (=> b!7092046 (= e!4263322 tp_is_empty!44835)))

(declare-fun b!7092048 () Bool)

(declare-fun tp!1948370 () Bool)

(assert (=> b!7092048 (= e!4263322 tp!1948370)))

(declare-fun b!7092047 () Bool)

(declare-fun tp!1948371 () Bool)

(declare-fun tp!1948369 () Bool)

(assert (=> b!7092047 (= e!4263322 (and tp!1948371 tp!1948369))))

(assert (= (and b!7091687 ((_ is ElementMatch!17801) (regTwo!36114 r!11554))) b!7092046))

(assert (= (and b!7091687 ((_ is Concat!26646) (regTwo!36114 r!11554))) b!7092047))

(assert (= (and b!7091687 ((_ is Star!17801) (regTwo!36114 r!11554))) b!7092048))

(assert (= (and b!7091687 ((_ is Union!17801) (regTwo!36114 r!11554))) b!7092049))

(declare-fun b!7092053 () Bool)

(declare-fun e!4263323 () Bool)

(declare-fun tp!1948378 () Bool)

(declare-fun tp!1948377 () Bool)

(assert (=> b!7092053 (= e!4263323 (and tp!1948378 tp!1948377))))

(assert (=> b!7091693 (= tp!1948298 e!4263323)))

(declare-fun b!7092050 () Bool)

(assert (=> b!7092050 (= e!4263323 tp_is_empty!44835)))

(declare-fun b!7092052 () Bool)

(declare-fun tp!1948375 () Bool)

(assert (=> b!7092052 (= e!4263323 tp!1948375)))

(declare-fun b!7092051 () Bool)

(declare-fun tp!1948376 () Bool)

(declare-fun tp!1948374 () Bool)

(assert (=> b!7092051 (= e!4263323 (and tp!1948376 tp!1948374))))

(assert (= (and b!7091693 ((_ is ElementMatch!17801) (reg!18130 r!11554))) b!7092050))

(assert (= (and b!7091693 ((_ is Concat!26646) (reg!18130 r!11554))) b!7092051))

(assert (= (and b!7091693 ((_ is Star!17801) (reg!18130 r!11554))) b!7092052))

(assert (= (and b!7091693 ((_ is Union!17801) (reg!18130 r!11554))) b!7092053))

(declare-fun b!7092057 () Bool)

(declare-fun e!4263324 () Bool)

(declare-fun tp!1948383 () Bool)

(declare-fun tp!1948382 () Bool)

(assert (=> b!7092057 (= e!4263324 (and tp!1948383 tp!1948382))))

(assert (=> b!7091689 (= tp!1948300 e!4263324)))

(declare-fun b!7092054 () Bool)

(assert (=> b!7092054 (= e!4263324 tp_is_empty!44835)))

(declare-fun b!7092056 () Bool)

(declare-fun tp!1948380 () Bool)

(assert (=> b!7092056 (= e!4263324 tp!1948380)))

(declare-fun b!7092055 () Bool)

(declare-fun tp!1948381 () Bool)

(declare-fun tp!1948379 () Bool)

(assert (=> b!7092055 (= e!4263324 (and tp!1948381 tp!1948379))))

(assert (= (and b!7091689 ((_ is ElementMatch!17801) (regOne!36115 r!11554))) b!7092054))

(assert (= (and b!7091689 ((_ is Concat!26646) (regOne!36115 r!11554))) b!7092055))

(assert (= (and b!7091689 ((_ is Star!17801) (regOne!36115 r!11554))) b!7092056))

(assert (= (and b!7091689 ((_ is Union!17801) (regOne!36115 r!11554))) b!7092057))

(declare-fun b!7092061 () Bool)

(declare-fun e!4263325 () Bool)

(declare-fun tp!1948388 () Bool)

(declare-fun tp!1948387 () Bool)

(assert (=> b!7092061 (= e!4263325 (and tp!1948388 tp!1948387))))

(assert (=> b!7091689 (= tp!1948299 e!4263325)))

(declare-fun b!7092058 () Bool)

(assert (=> b!7092058 (= e!4263325 tp_is_empty!44835)))

(declare-fun b!7092060 () Bool)

(declare-fun tp!1948385 () Bool)

(assert (=> b!7092060 (= e!4263325 tp!1948385)))

(declare-fun b!7092059 () Bool)

(declare-fun tp!1948386 () Bool)

(declare-fun tp!1948384 () Bool)

(assert (=> b!7092059 (= e!4263325 (and tp!1948386 tp!1948384))))

(assert (= (and b!7091689 ((_ is ElementMatch!17801) (regTwo!36115 r!11554))) b!7092058))

(assert (= (and b!7091689 ((_ is Concat!26646) (regTwo!36115 r!11554))) b!7092059))

(assert (= (and b!7091689 ((_ is Star!17801) (regTwo!36115 r!11554))) b!7092060))

(assert (= (and b!7091689 ((_ is Union!17801) (regTwo!36115 r!11554))) b!7092061))

(declare-fun b!7092062 () Bool)

(declare-fun e!4263326 () Bool)

(declare-fun tp!1948389 () Bool)

(declare-fun tp!1948390 () Bool)

(assert (=> b!7092062 (= e!4263326 (and tp!1948389 tp!1948390))))

(assert (=> b!7091694 (= tp!1948304 e!4263326)))

(assert (= (and b!7091694 ((_ is Cons!68640) (exprs!7297 c!9994))) b!7092062))

(declare-fun b_lambda!271031 () Bool)

(assert (= b_lambda!271025 (or b!7091692 b_lambda!271031)))

(declare-fun bs!1883556 () Bool)

(declare-fun d!2217072 () Bool)

(assert (= bs!1883556 (and d!2217072 b!7091692)))

(assert (=> bs!1883556 (= (dynLambda!28000 lambda!429917 (h!75088 (exprs!7297 c!9994))) (validRegex!9076 (h!75088 (exprs!7297 c!9994))))))

(declare-fun m!7820838 () Bool)

(assert (=> bs!1883556 m!7820838))

(assert (=> b!7091852 d!2217072))

(check-sat (not bm!644931) (not b_lambda!271031) (not b!7092061) (not d!2217044) (not b!7092044) (not bm!644957) (not b!7092016) (not bm!644985) (not d!2216986) (not d!2217030) (not bm!644965) (not bm!644967) (not d!2216982) (not d!2217006) (not b!7092048) (not b!7092043) tp_is_empty!44835 (not b!7092031) (not b!7091800) (not bm!644923) (not b!7092020) (not b!7091917) (not b!7092015) (not b!7092055) (not bm!644919) (not b!7092007) (not d!2217062) (not bm!644911) (not b!7092060) (not d!2217070) (not b!7092053) (not d!2217068) (not b!7091918) (not b!7091927) (not bm!644963) (not bm!644983) (not b!7092062) (not b!7092047) (not d!2216988) (not bm!644921) (not bm!645001) (not bm!645006) (not b!7092045) (not b!7092049) (not d!2217026) (not bm!644961) (not bm!644981) (not bm!645004) (not bm!644959) (not d!2217050) (not bs!1883556) (not b!7092052) (not bm!644913) (not b!7091853) (not b!7091769) (not b!7091861) (not d!2217066) (not bm!644929) (not b!7092056) (not b!7092051) (not bm!645003) (not d!2217018) (not bm!644909) (not d!2216984) (not bm!644933) (not b!7092059) (not d!2217014) (not b!7092057) (not b!7091811) (not b!7091876))
(check-sat)
