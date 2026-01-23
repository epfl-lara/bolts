; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735204 () Bool)

(assert start!735204)

(declare-fun b!7636152 () Bool)

(assert (=> b!7636152 true))

(assert (=> b!7636152 true))

(declare-fun b!7636143 () Bool)

(declare-fun e!4539382 () Bool)

(declare-datatypes ((C!41160 0))(
  ( (C!41161 (val!31020 Int)) )
))
(declare-datatypes ((Regex!20417 0))(
  ( (ElementMatch!20417 (c!1406604 C!41160)) (Concat!29262 (regOne!41346 Regex!20417) (regTwo!41346 Regex!20417)) (EmptyExpr!20417) (Star!20417 (reg!20746 Regex!20417)) (EmptyLang!20417) (Union!20417 (regOne!41347 Regex!20417) (regTwo!41347 Regex!20417)) )
))
(declare-fun r!14126 () Regex!20417)

(declare-fun nullable!8930 (Regex!20417) Bool)

(assert (=> b!7636143 (= e!4539382 (not (nullable!8930 (reg!20746 r!14126))))))

(declare-datatypes ((List!73268 0))(
  ( (Nil!73144) (Cons!73144 (h!79592 C!41160) (t!388003 List!73268)) )
))
(declare-datatypes ((tuple2!69392 0))(
  ( (tuple2!69393 (_1!37999 List!73268) (_2!37999 List!73268)) )
))
(declare-fun lt!2659880 () tuple2!69392)

(declare-fun matchR!9920 (Regex!20417 List!73268) Bool)

(declare-fun matchRSpec!4556 (Regex!20417 List!73268) Bool)

(assert (=> b!7636143 (= (matchR!9920 r!14126 (_2!37999 lt!2659880)) (matchRSpec!4556 r!14126 (_2!37999 lt!2659880)))))

(declare-datatypes ((Unit!167816 0))(
  ( (Unit!167817) )
))
(declare-fun lt!2659871 () Unit!167816)

(declare-fun mainMatchTheorem!4542 (Regex!20417 List!73268) Unit!167816)

(assert (=> b!7636143 (= lt!2659871 (mainMatchTheorem!4542 r!14126 (_2!37999 lt!2659880)))))

(assert (=> b!7636143 (= (matchR!9920 (reg!20746 r!14126) (_1!37999 lt!2659880)) (matchRSpec!4556 (reg!20746 r!14126) (_1!37999 lt!2659880)))))

(declare-fun lt!2659872 () Unit!167816)

(assert (=> b!7636143 (= lt!2659872 (mainMatchTheorem!4542 (reg!20746 r!14126) (_1!37999 lt!2659880)))))

(declare-fun lambda!469399 () Int)

(declare-fun pickWitness!482 (Int) tuple2!69392)

(assert (=> b!7636143 (= lt!2659880 (pickWitness!482 lambda!469399))))

(declare-fun b!7636144 () Bool)

(declare-fun e!4539379 () Bool)

(declare-fun tp!2229224 () Bool)

(assert (=> b!7636144 (= e!4539379 tp!2229224)))

(declare-fun b!7636145 () Bool)

(declare-fun e!4539377 () Bool)

(assert (=> b!7636145 (= e!4539377 false)))

(declare-fun b!7636146 () Bool)

(declare-fun e!4539378 () Bool)

(declare-fun tp_is_empty!51189 () Bool)

(declare-fun tp!2229221 () Bool)

(assert (=> b!7636146 (= e!4539378 (and tp_is_empty!51189 tp!2229221))))

(declare-fun b!7636148 () Bool)

(declare-fun e!4539381 () Bool)

(assert (=> b!7636148 (= e!4539381 e!4539382)))

(declare-fun res!3058453 () Bool)

(assert (=> b!7636148 (=> res!3058453 e!4539382)))

(declare-fun Exists!4571 (Int) Bool)

(assert (=> b!7636148 (= res!3058453 (not (Exists!4571 lambda!469399)))))

(declare-fun lt!2659877 () Unit!167816)

(declare-fun e!4539380 () Unit!167816)

(assert (=> b!7636148 (= lt!2659877 e!4539380)))

(declare-fun c!1406603 () Bool)

(declare-fun s!9605 () List!73268)

(assert (=> b!7636148 (= c!1406603 (not (matchR!9920 r!14126 s!9605)))))

(declare-fun lt!2659874 () tuple2!69392)

(assert (=> b!7636148 (= (matchR!9920 r!14126 (_2!37999 lt!2659874)) (matchRSpec!4556 r!14126 (_2!37999 lt!2659874)))))

(declare-fun lt!2659875 () Unit!167816)

(assert (=> b!7636148 (= lt!2659875 (mainMatchTheorem!4542 r!14126 (_2!37999 lt!2659874)))))

(assert (=> b!7636148 (= (matchR!9920 (reg!20746 r!14126) (_1!37999 lt!2659874)) (matchRSpec!4556 (reg!20746 r!14126) (_1!37999 lt!2659874)))))

(declare-fun lt!2659876 () Unit!167816)

(assert (=> b!7636148 (= lt!2659876 (mainMatchTheorem!4542 (reg!20746 r!14126) (_1!37999 lt!2659874)))))

(declare-datatypes ((Option!17490 0))(
  ( (None!17489) (Some!17489 (v!54624 tuple2!69392)) )
))
(declare-fun lt!2659879 () Option!17490)

(declare-fun get!25890 (Option!17490) tuple2!69392)

(assert (=> b!7636148 (= lt!2659874 (get!25890 lt!2659879))))

(declare-fun b!7636149 () Bool)

(declare-fun Unit!167818 () Unit!167816)

(assert (=> b!7636149 (= e!4539380 Unit!167818)))

(declare-fun b!7636150 () Bool)

(declare-fun tp!2229225 () Bool)

(declare-fun tp!2229220 () Bool)

(assert (=> b!7636150 (= e!4539379 (and tp!2229225 tp!2229220))))

(declare-fun b!7636151 () Bool)

(assert (=> b!7636151 (= e!4539379 tp_is_empty!51189)))

(declare-fun e!4539383 () Bool)

(assert (=> b!7636152 (= e!4539383 (not e!4539381))))

(declare-fun res!3058452 () Bool)

(assert (=> b!7636152 (=> res!3058452 e!4539381)))

(declare-fun lt!2659868 () Bool)

(assert (=> b!7636152 (= res!3058452 (not lt!2659868))))

(assert (=> b!7636152 (= lt!2659868 (Exists!4571 lambda!469399))))

(declare-fun isDefined!14106 (Option!17490) Bool)

(assert (=> b!7636152 (= lt!2659868 (isDefined!14106 lt!2659879))))

(declare-fun findConcatSeparation!3520 (Regex!20417 Regex!20417 List!73268 List!73268 List!73268) Option!17490)

(assert (=> b!7636152 (= lt!2659879 (findConcatSeparation!3520 (reg!20746 r!14126) r!14126 Nil!73144 s!9605 s!9605))))

(declare-fun lt!2659873 () Unit!167816)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3278 (Regex!20417 Regex!20417 List!73268) Unit!167816)

(assert (=> b!7636152 (= lt!2659873 (lemmaFindConcatSeparationEquivalentToExists!3278 (reg!20746 r!14126) r!14126 s!9605))))

(declare-fun b!7636153 () Bool)

(declare-fun res!3058454 () Bool)

(assert (=> b!7636153 (=> (not res!3058454) (not e!4539383))))

(get-info :version)

(assert (=> b!7636153 (= res!3058454 (and (not ((_ is EmptyExpr!20417) r!14126)) (not ((_ is EmptyLang!20417) r!14126)) (not ((_ is ElementMatch!20417) r!14126)) (not ((_ is Union!20417) r!14126)) ((_ is Star!20417) r!14126)))))

(declare-fun res!3058456 () Bool)

(assert (=> start!735204 (=> (not res!3058456) (not e!4539383))))

(declare-fun validRegex!10835 (Regex!20417) Bool)

(assert (=> start!735204 (= res!3058456 (validRegex!10835 r!14126))))

(assert (=> start!735204 e!4539383))

(assert (=> start!735204 e!4539379))

(assert (=> start!735204 e!4539378))

(declare-fun b!7636147 () Bool)

(declare-fun Unit!167819 () Unit!167816)

(assert (=> b!7636147 (= e!4539380 Unit!167819)))

(declare-fun lt!2659870 () Unit!167816)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!174 (Regex!20417 Regex!20417 List!73268 List!73268 List!73268) Unit!167816)

(assert (=> b!7636147 (= lt!2659870 (lemmaFindSeparationIsDefinedThenConcatMatches!174 (reg!20746 r!14126) r!14126 (_1!37999 lt!2659874) (_2!37999 lt!2659874) s!9605))))

(declare-fun lt!2659878 () List!73268)

(declare-fun ++!17697 (List!73268 List!73268) List!73268)

(assert (=> b!7636147 (= lt!2659878 (++!17697 (_1!37999 lt!2659874) (_2!37999 lt!2659874)))))

(assert (=> b!7636147 (matchR!9920 (Concat!29262 (reg!20746 r!14126) r!14126) lt!2659878)))

(declare-fun lt!2659869 () Unit!167816)

(declare-fun lemmaStarApp!204 (Regex!20417 List!73268 List!73268) Unit!167816)

(assert (=> b!7636147 (= lt!2659869 (lemmaStarApp!204 (reg!20746 r!14126) (_1!37999 lt!2659874) (_2!37999 lt!2659874)))))

(declare-fun res!3058451 () Bool)

(assert (=> b!7636147 (= res!3058451 (matchR!9920 r!14126 lt!2659878))))

(assert (=> b!7636147 (=> (not res!3058451) (not e!4539377))))

(assert (=> b!7636147 e!4539377))

(declare-fun b!7636154 () Bool)

(declare-fun tp!2229222 () Bool)

(declare-fun tp!2229223 () Bool)

(assert (=> b!7636154 (= e!4539379 (and tp!2229222 tp!2229223))))

(declare-fun b!7636155 () Bool)

(declare-fun res!3058455 () Bool)

(assert (=> b!7636155 (=> (not res!3058455) (not e!4539383))))

(declare-fun isEmpty!41773 (List!73268) Bool)

(assert (=> b!7636155 (= res!3058455 (not (isEmpty!41773 s!9605)))))

(assert (= (and start!735204 res!3058456) b!7636153))

(assert (= (and b!7636153 res!3058454) b!7636155))

(assert (= (and b!7636155 res!3058455) b!7636152))

(assert (= (and b!7636152 (not res!3058452)) b!7636148))

(assert (= (and b!7636148 c!1406603) b!7636147))

(assert (= (and b!7636148 (not c!1406603)) b!7636149))

(assert (= (and b!7636147 res!3058451) b!7636145))

(assert (= (and b!7636148 (not res!3058453)) b!7636143))

(assert (= (and start!735204 ((_ is ElementMatch!20417) r!14126)) b!7636151))

(assert (= (and start!735204 ((_ is Concat!29262) r!14126)) b!7636150))

(assert (= (and start!735204 ((_ is Star!20417) r!14126)) b!7636144))

(assert (= (and start!735204 ((_ is Union!20417) r!14126)) b!7636154))

(assert (= (and start!735204 ((_ is Cons!73144) s!9605)) b!7636146))

(declare-fun m!8160740 () Bool)

(assert (=> b!7636152 m!8160740))

(declare-fun m!8160742 () Bool)

(assert (=> b!7636152 m!8160742))

(declare-fun m!8160744 () Bool)

(assert (=> b!7636152 m!8160744))

(declare-fun m!8160746 () Bool)

(assert (=> b!7636152 m!8160746))

(declare-fun m!8160748 () Bool)

(assert (=> b!7636147 m!8160748))

(declare-fun m!8160750 () Bool)

(assert (=> b!7636147 m!8160750))

(declare-fun m!8160752 () Bool)

(assert (=> b!7636147 m!8160752))

(declare-fun m!8160754 () Bool)

(assert (=> b!7636147 m!8160754))

(declare-fun m!8160756 () Bool)

(assert (=> b!7636147 m!8160756))

(declare-fun m!8160758 () Bool)

(assert (=> b!7636148 m!8160758))

(assert (=> b!7636148 m!8160740))

(declare-fun m!8160760 () Bool)

(assert (=> b!7636148 m!8160760))

(declare-fun m!8160762 () Bool)

(assert (=> b!7636148 m!8160762))

(declare-fun m!8160764 () Bool)

(assert (=> b!7636148 m!8160764))

(declare-fun m!8160766 () Bool)

(assert (=> b!7636148 m!8160766))

(declare-fun m!8160768 () Bool)

(assert (=> b!7636148 m!8160768))

(declare-fun m!8160770 () Bool)

(assert (=> b!7636148 m!8160770))

(declare-fun m!8160772 () Bool)

(assert (=> b!7636148 m!8160772))

(declare-fun m!8160774 () Bool)

(assert (=> b!7636143 m!8160774))

(declare-fun m!8160776 () Bool)

(assert (=> b!7636143 m!8160776))

(declare-fun m!8160778 () Bool)

(assert (=> b!7636143 m!8160778))

(declare-fun m!8160780 () Bool)

(assert (=> b!7636143 m!8160780))

(declare-fun m!8160782 () Bool)

(assert (=> b!7636143 m!8160782))

(declare-fun m!8160784 () Bool)

(assert (=> b!7636143 m!8160784))

(declare-fun m!8160786 () Bool)

(assert (=> b!7636143 m!8160786))

(declare-fun m!8160788 () Bool)

(assert (=> b!7636143 m!8160788))

(declare-fun m!8160790 () Bool)

(assert (=> start!735204 m!8160790))

(declare-fun m!8160792 () Bool)

(assert (=> b!7636155 m!8160792))

(check-sat (not b!7636143) tp_is_empty!51189 (not b!7636152) (not b!7636150) (not b!7636147) (not b!7636154) (not b!7636144) (not b!7636148) (not start!735204) (not b!7636155) (not b!7636146))
(check-sat)
(get-model)

(declare-fun d!2324622 () Bool)

(assert (=> d!2324622 (= (isEmpty!41773 s!9605) ((_ is Nil!73144) s!9605))))

(assert (=> b!7636155 d!2324622))

(declare-fun b!7636269 () Bool)

(declare-fun res!3058518 () Bool)

(declare-fun e!4539450 () Bool)

(assert (=> b!7636269 (=> res!3058518 e!4539450)))

(assert (=> b!7636269 (= res!3058518 (not ((_ is ElementMatch!20417) (reg!20746 r!14126))))))

(declare-fun e!4539449 () Bool)

(assert (=> b!7636269 (= e!4539449 e!4539450)))

(declare-fun b!7636270 () Bool)

(declare-fun e!4539451 () Bool)

(assert (=> b!7636270 (= e!4539451 e!4539449)))

(declare-fun c!1406629 () Bool)

(assert (=> b!7636270 (= c!1406629 ((_ is EmptyLang!20417) (reg!20746 r!14126)))))

(declare-fun b!7636271 () Bool)

(declare-fun e!4539452 () Bool)

(declare-fun head!15703 (List!73268) C!41160)

(assert (=> b!7636271 (= e!4539452 (not (= (head!15703 (_1!37999 lt!2659880)) (c!1406604 (reg!20746 r!14126)))))))

(declare-fun b!7636272 () Bool)

(declare-fun e!4539448 () Bool)

(assert (=> b!7636272 (= e!4539448 e!4539452)))

(declare-fun res!3058519 () Bool)

(assert (=> b!7636272 (=> res!3058519 e!4539452)))

(declare-fun call!700881 () Bool)

(assert (=> b!7636272 (= res!3058519 call!700881)))

(declare-fun b!7636273 () Bool)

(declare-fun e!4539446 () Bool)

(declare-fun derivativeStep!5903 (Regex!20417 C!41160) Regex!20417)

(declare-fun tail!15243 (List!73268) List!73268)

(assert (=> b!7636273 (= e!4539446 (matchR!9920 (derivativeStep!5903 (reg!20746 r!14126) (head!15703 (_1!37999 lt!2659880))) (tail!15243 (_1!37999 lt!2659880))))))

(declare-fun b!7636274 () Bool)

(declare-fun res!3058525 () Bool)

(assert (=> b!7636274 (=> res!3058525 e!4539450)))

(declare-fun e!4539447 () Bool)

(assert (=> b!7636274 (= res!3058525 e!4539447)))

(declare-fun res!3058524 () Bool)

(assert (=> b!7636274 (=> (not res!3058524) (not e!4539447))))

(declare-fun lt!2659892 () Bool)

(assert (=> b!7636274 (= res!3058524 lt!2659892)))

(declare-fun b!7636275 () Bool)

(declare-fun res!3058523 () Bool)

(assert (=> b!7636275 (=> (not res!3058523) (not e!4539447))))

(assert (=> b!7636275 (= res!3058523 (isEmpty!41773 (tail!15243 (_1!37999 lt!2659880))))))

(declare-fun b!7636276 () Bool)

(assert (=> b!7636276 (= e!4539446 (nullable!8930 (reg!20746 r!14126)))))

(declare-fun b!7636277 () Bool)

(declare-fun res!3058521 () Bool)

(assert (=> b!7636277 (=> res!3058521 e!4539452)))

(assert (=> b!7636277 (= res!3058521 (not (isEmpty!41773 (tail!15243 (_1!37999 lt!2659880)))))))

(declare-fun b!7636278 () Bool)

(assert (=> b!7636278 (= e!4539450 e!4539448)))

(declare-fun res!3058522 () Bool)

(assert (=> b!7636278 (=> (not res!3058522) (not e!4539448))))

(assert (=> b!7636278 (= res!3058522 (not lt!2659892))))

(declare-fun b!7636279 () Bool)

(assert (=> b!7636279 (= e!4539451 (= lt!2659892 call!700881))))

(declare-fun b!7636280 () Bool)

(assert (=> b!7636280 (= e!4539447 (= (head!15703 (_1!37999 lt!2659880)) (c!1406604 (reg!20746 r!14126))))))

(declare-fun b!7636281 () Bool)

(declare-fun res!3058520 () Bool)

(assert (=> b!7636281 (=> (not res!3058520) (not e!4539447))))

(assert (=> b!7636281 (= res!3058520 (not call!700881))))

(declare-fun bm!700876 () Bool)

(assert (=> bm!700876 (= call!700881 (isEmpty!41773 (_1!37999 lt!2659880)))))

(declare-fun d!2324624 () Bool)

(assert (=> d!2324624 e!4539451))

(declare-fun c!1406630 () Bool)

(assert (=> d!2324624 (= c!1406630 ((_ is EmptyExpr!20417) (reg!20746 r!14126)))))

(assert (=> d!2324624 (= lt!2659892 e!4539446)))

(declare-fun c!1406631 () Bool)

(assert (=> d!2324624 (= c!1406631 (isEmpty!41773 (_1!37999 lt!2659880)))))

(assert (=> d!2324624 (validRegex!10835 (reg!20746 r!14126))))

(assert (=> d!2324624 (= (matchR!9920 (reg!20746 r!14126) (_1!37999 lt!2659880)) lt!2659892)))

(declare-fun b!7636282 () Bool)

(assert (=> b!7636282 (= e!4539449 (not lt!2659892))))

(assert (= (and d!2324624 c!1406631) b!7636276))

(assert (= (and d!2324624 (not c!1406631)) b!7636273))

(assert (= (and d!2324624 c!1406630) b!7636279))

(assert (= (and d!2324624 (not c!1406630)) b!7636270))

(assert (= (and b!7636270 c!1406629) b!7636282))

(assert (= (and b!7636270 (not c!1406629)) b!7636269))

(assert (= (and b!7636269 (not res!3058518)) b!7636274))

(assert (= (and b!7636274 res!3058524) b!7636281))

(assert (= (and b!7636281 res!3058520) b!7636275))

(assert (= (and b!7636275 res!3058523) b!7636280))

(assert (= (and b!7636274 (not res!3058525)) b!7636278))

(assert (= (and b!7636278 res!3058522) b!7636272))

(assert (= (and b!7636272 (not res!3058519)) b!7636277))

(assert (= (and b!7636277 (not res!3058521)) b!7636271))

(assert (= (or b!7636279 b!7636272 b!7636281) bm!700876))

(assert (=> b!7636276 m!8160782))

(declare-fun m!8160834 () Bool)

(assert (=> d!2324624 m!8160834))

(declare-fun m!8160836 () Bool)

(assert (=> d!2324624 m!8160836))

(declare-fun m!8160838 () Bool)

(assert (=> b!7636280 m!8160838))

(declare-fun m!8160840 () Bool)

(assert (=> b!7636275 m!8160840))

(assert (=> b!7636275 m!8160840))

(declare-fun m!8160842 () Bool)

(assert (=> b!7636275 m!8160842))

(assert (=> b!7636271 m!8160838))

(assert (=> b!7636277 m!8160840))

(assert (=> b!7636277 m!8160840))

(assert (=> b!7636277 m!8160842))

(assert (=> b!7636273 m!8160838))

(assert (=> b!7636273 m!8160838))

(declare-fun m!8160844 () Bool)

(assert (=> b!7636273 m!8160844))

(assert (=> b!7636273 m!8160840))

(assert (=> b!7636273 m!8160844))

(assert (=> b!7636273 m!8160840))

(declare-fun m!8160846 () Bool)

(assert (=> b!7636273 m!8160846))

(assert (=> bm!700876 m!8160834))

(assert (=> b!7636143 d!2324624))

(declare-fun bs!1944240 () Bool)

(declare-fun b!7636370 () Bool)

(assert (= bs!1944240 (and b!7636370 b!7636152)))

(declare-fun lambda!469407 () Int)

(assert (=> bs!1944240 (not (= lambda!469407 lambda!469399))))

(assert (=> b!7636370 true))

(assert (=> b!7636370 true))

(declare-fun bs!1944241 () Bool)

(declare-fun b!7636360 () Bool)

(assert (= bs!1944241 (and b!7636360 b!7636152)))

(declare-fun lambda!469408 () Int)

(assert (=> bs!1944241 (not (= lambda!469408 lambda!469399))))

(declare-fun bs!1944243 () Bool)

(assert (= bs!1944243 (and b!7636360 b!7636370)))

(assert (=> bs!1944243 (not (= lambda!469408 lambda!469407))))

(assert (=> b!7636360 true))

(assert (=> b!7636360 true))

(declare-fun e!4539497 () Bool)

(declare-fun call!700888 () Bool)

(assert (=> b!7636360 (= e!4539497 call!700888)))

(declare-fun b!7636361 () Bool)

(declare-fun res!3058571 () Bool)

(declare-fun e!4539501 () Bool)

(assert (=> b!7636361 (=> res!3058571 e!4539501)))

(declare-fun call!700887 () Bool)

(assert (=> b!7636361 (= res!3058571 call!700887)))

(assert (=> b!7636361 (= e!4539497 e!4539501)))

(declare-fun b!7636362 () Bool)

(declare-fun c!1406651 () Bool)

(assert (=> b!7636362 (= c!1406651 ((_ is ElementMatch!20417) (reg!20746 r!14126)))))

(declare-fun e!4539499 () Bool)

(declare-fun e!4539495 () Bool)

(assert (=> b!7636362 (= e!4539499 e!4539495)))

(declare-fun bm!700882 () Bool)

(declare-fun c!1406652 () Bool)

(assert (=> bm!700882 (= call!700888 (Exists!4571 (ite c!1406652 lambda!469407 lambda!469408)))))

(declare-fun b!7636363 () Bool)

(declare-fun e!4539500 () Bool)

(assert (=> b!7636363 (= e!4539500 e!4539497)))

(assert (=> b!7636363 (= c!1406652 ((_ is Star!20417) (reg!20746 r!14126)))))

(declare-fun b!7636364 () Bool)

(declare-fun e!4539498 () Bool)

(assert (=> b!7636364 (= e!4539498 e!4539499)))

(declare-fun res!3058569 () Bool)

(assert (=> b!7636364 (= res!3058569 (not ((_ is EmptyLang!20417) (reg!20746 r!14126))))))

(assert (=> b!7636364 (=> (not res!3058569) (not e!4539499))))

(declare-fun b!7636365 () Bool)

(assert (=> b!7636365 (= e!4539495 (= (_1!37999 lt!2659880) (Cons!73144 (c!1406604 (reg!20746 r!14126)) Nil!73144)))))

(declare-fun b!7636366 () Bool)

(declare-fun e!4539496 () Bool)

(assert (=> b!7636366 (= e!4539500 e!4539496)))

(declare-fun res!3058570 () Bool)

(assert (=> b!7636366 (= res!3058570 (matchRSpec!4556 (regOne!41347 (reg!20746 r!14126)) (_1!37999 lt!2659880)))))

(assert (=> b!7636366 (=> res!3058570 e!4539496)))

(declare-fun b!7636367 () Bool)

(assert (=> b!7636367 (= e!4539498 call!700887)))

(declare-fun d!2324634 () Bool)

(declare-fun c!1406650 () Bool)

(assert (=> d!2324634 (= c!1406650 ((_ is EmptyExpr!20417) (reg!20746 r!14126)))))

(assert (=> d!2324634 (= (matchRSpec!4556 (reg!20746 r!14126) (_1!37999 lt!2659880)) e!4539498)))

(declare-fun b!7636368 () Bool)

(assert (=> b!7636368 (= e!4539496 (matchRSpec!4556 (regTwo!41347 (reg!20746 r!14126)) (_1!37999 lt!2659880)))))

(declare-fun b!7636369 () Bool)

(declare-fun c!1406649 () Bool)

(assert (=> b!7636369 (= c!1406649 ((_ is Union!20417) (reg!20746 r!14126)))))

(assert (=> b!7636369 (= e!4539495 e!4539500)))

(assert (=> b!7636370 (= e!4539501 call!700888)))

(declare-fun bm!700883 () Bool)

(assert (=> bm!700883 (= call!700887 (isEmpty!41773 (_1!37999 lt!2659880)))))

(assert (= (and d!2324634 c!1406650) b!7636367))

(assert (= (and d!2324634 (not c!1406650)) b!7636364))

(assert (= (and b!7636364 res!3058569) b!7636362))

(assert (= (and b!7636362 c!1406651) b!7636365))

(assert (= (and b!7636362 (not c!1406651)) b!7636369))

(assert (= (and b!7636369 c!1406649) b!7636366))

(assert (= (and b!7636369 (not c!1406649)) b!7636363))

(assert (= (and b!7636366 (not res!3058570)) b!7636368))

(assert (= (and b!7636363 c!1406652) b!7636361))

(assert (= (and b!7636363 (not c!1406652)) b!7636360))

(assert (= (and b!7636361 (not res!3058571)) b!7636370))

(assert (= (or b!7636370 b!7636360) bm!700882))

(assert (= (or b!7636367 b!7636361) bm!700883))

(declare-fun m!8160896 () Bool)

(assert (=> bm!700882 m!8160896))

(declare-fun m!8160898 () Bool)

(assert (=> b!7636366 m!8160898))

(declare-fun m!8160900 () Bool)

(assert (=> b!7636368 m!8160900))

(assert (=> bm!700883 m!8160834))

(assert (=> b!7636143 d!2324634))

(declare-fun d!2324656 () Bool)

(declare-fun nullableFct!3549 (Regex!20417) Bool)

(assert (=> d!2324656 (= (nullable!8930 (reg!20746 r!14126)) (nullableFct!3549 (reg!20746 r!14126)))))

(declare-fun bs!1944245 () Bool)

(assert (= bs!1944245 d!2324656))

(declare-fun m!8160902 () Bool)

(assert (=> bs!1944245 m!8160902))

(assert (=> b!7636143 d!2324656))

(declare-fun b!7636371 () Bool)

(declare-fun res!3058572 () Bool)

(declare-fun e!4539506 () Bool)

(assert (=> b!7636371 (=> res!3058572 e!4539506)))

(assert (=> b!7636371 (= res!3058572 (not ((_ is ElementMatch!20417) r!14126)))))

(declare-fun e!4539505 () Bool)

(assert (=> b!7636371 (= e!4539505 e!4539506)))

(declare-fun b!7636372 () Bool)

(declare-fun e!4539507 () Bool)

(assert (=> b!7636372 (= e!4539507 e!4539505)))

(declare-fun c!1406653 () Bool)

(assert (=> b!7636372 (= c!1406653 ((_ is EmptyLang!20417) r!14126))))

(declare-fun b!7636373 () Bool)

(declare-fun e!4539508 () Bool)

(assert (=> b!7636373 (= e!4539508 (not (= (head!15703 (_2!37999 lt!2659880)) (c!1406604 r!14126))))))

(declare-fun b!7636374 () Bool)

(declare-fun e!4539504 () Bool)

(assert (=> b!7636374 (= e!4539504 e!4539508)))

(declare-fun res!3058573 () Bool)

(assert (=> b!7636374 (=> res!3058573 e!4539508)))

(declare-fun call!700889 () Bool)

(assert (=> b!7636374 (= res!3058573 call!700889)))

(declare-fun b!7636375 () Bool)

(declare-fun e!4539502 () Bool)

(assert (=> b!7636375 (= e!4539502 (matchR!9920 (derivativeStep!5903 r!14126 (head!15703 (_2!37999 lt!2659880))) (tail!15243 (_2!37999 lt!2659880))))))

(declare-fun b!7636376 () Bool)

(declare-fun res!3058579 () Bool)

(assert (=> b!7636376 (=> res!3058579 e!4539506)))

(declare-fun e!4539503 () Bool)

(assert (=> b!7636376 (= res!3058579 e!4539503)))

(declare-fun res!3058578 () Bool)

(assert (=> b!7636376 (=> (not res!3058578) (not e!4539503))))

(declare-fun lt!2659913 () Bool)

(assert (=> b!7636376 (= res!3058578 lt!2659913)))

(declare-fun b!7636377 () Bool)

(declare-fun res!3058577 () Bool)

(assert (=> b!7636377 (=> (not res!3058577) (not e!4539503))))

(assert (=> b!7636377 (= res!3058577 (isEmpty!41773 (tail!15243 (_2!37999 lt!2659880))))))

(declare-fun b!7636378 () Bool)

(assert (=> b!7636378 (= e!4539502 (nullable!8930 r!14126))))

(declare-fun b!7636379 () Bool)

(declare-fun res!3058575 () Bool)

(assert (=> b!7636379 (=> res!3058575 e!4539508)))

(assert (=> b!7636379 (= res!3058575 (not (isEmpty!41773 (tail!15243 (_2!37999 lt!2659880)))))))

(declare-fun b!7636380 () Bool)

(assert (=> b!7636380 (= e!4539506 e!4539504)))

(declare-fun res!3058576 () Bool)

(assert (=> b!7636380 (=> (not res!3058576) (not e!4539504))))

(assert (=> b!7636380 (= res!3058576 (not lt!2659913))))

(declare-fun b!7636381 () Bool)

(assert (=> b!7636381 (= e!4539507 (= lt!2659913 call!700889))))

(declare-fun b!7636382 () Bool)

(assert (=> b!7636382 (= e!4539503 (= (head!15703 (_2!37999 lt!2659880)) (c!1406604 r!14126)))))

(declare-fun b!7636383 () Bool)

(declare-fun res!3058574 () Bool)

(assert (=> b!7636383 (=> (not res!3058574) (not e!4539503))))

(assert (=> b!7636383 (= res!3058574 (not call!700889))))

(declare-fun bm!700884 () Bool)

(assert (=> bm!700884 (= call!700889 (isEmpty!41773 (_2!37999 lt!2659880)))))

(declare-fun d!2324658 () Bool)

(assert (=> d!2324658 e!4539507))

(declare-fun c!1406654 () Bool)

(assert (=> d!2324658 (= c!1406654 ((_ is EmptyExpr!20417) r!14126))))

(assert (=> d!2324658 (= lt!2659913 e!4539502)))

(declare-fun c!1406655 () Bool)

(assert (=> d!2324658 (= c!1406655 (isEmpty!41773 (_2!37999 lt!2659880)))))

(assert (=> d!2324658 (validRegex!10835 r!14126)))

(assert (=> d!2324658 (= (matchR!9920 r!14126 (_2!37999 lt!2659880)) lt!2659913)))

(declare-fun b!7636384 () Bool)

(assert (=> b!7636384 (= e!4539505 (not lt!2659913))))

(assert (= (and d!2324658 c!1406655) b!7636378))

(assert (= (and d!2324658 (not c!1406655)) b!7636375))

(assert (= (and d!2324658 c!1406654) b!7636381))

(assert (= (and d!2324658 (not c!1406654)) b!7636372))

(assert (= (and b!7636372 c!1406653) b!7636384))

(assert (= (and b!7636372 (not c!1406653)) b!7636371))

(assert (= (and b!7636371 (not res!3058572)) b!7636376))

(assert (= (and b!7636376 res!3058578) b!7636383))

(assert (= (and b!7636383 res!3058574) b!7636377))

(assert (= (and b!7636377 res!3058577) b!7636382))

(assert (= (and b!7636376 (not res!3058579)) b!7636380))

(assert (= (and b!7636380 res!3058576) b!7636374))

(assert (= (and b!7636374 (not res!3058573)) b!7636379))

(assert (= (and b!7636379 (not res!3058575)) b!7636373))

(assert (= (or b!7636381 b!7636374 b!7636383) bm!700884))

(declare-fun m!8160904 () Bool)

(assert (=> b!7636378 m!8160904))

(declare-fun m!8160906 () Bool)

(assert (=> d!2324658 m!8160906))

(assert (=> d!2324658 m!8160790))

(declare-fun m!8160908 () Bool)

(assert (=> b!7636382 m!8160908))

(declare-fun m!8160910 () Bool)

(assert (=> b!7636377 m!8160910))

(assert (=> b!7636377 m!8160910))

(declare-fun m!8160912 () Bool)

(assert (=> b!7636377 m!8160912))

(assert (=> b!7636373 m!8160908))

(assert (=> b!7636379 m!8160910))

(assert (=> b!7636379 m!8160910))

(assert (=> b!7636379 m!8160912))

(assert (=> b!7636375 m!8160908))

(assert (=> b!7636375 m!8160908))

(declare-fun m!8160914 () Bool)

(assert (=> b!7636375 m!8160914))

(assert (=> b!7636375 m!8160910))

(assert (=> b!7636375 m!8160914))

(assert (=> b!7636375 m!8160910))

(declare-fun m!8160916 () Bool)

(assert (=> b!7636375 m!8160916))

(assert (=> bm!700884 m!8160906))

(assert (=> b!7636143 d!2324658))

(declare-fun d!2324660 () Bool)

(assert (=> d!2324660 (= (matchR!9920 r!14126 (_2!37999 lt!2659880)) (matchRSpec!4556 r!14126 (_2!37999 lt!2659880)))))

(declare-fun lt!2659916 () Unit!167816)

(declare-fun choose!58963 (Regex!20417 List!73268) Unit!167816)

(assert (=> d!2324660 (= lt!2659916 (choose!58963 r!14126 (_2!37999 lt!2659880)))))

(assert (=> d!2324660 (validRegex!10835 r!14126)))

(assert (=> d!2324660 (= (mainMatchTheorem!4542 r!14126 (_2!37999 lt!2659880)) lt!2659916)))

(declare-fun bs!1944246 () Bool)

(assert (= bs!1944246 d!2324660))

(assert (=> bs!1944246 m!8160786))

(assert (=> bs!1944246 m!8160788))

(declare-fun m!8160918 () Bool)

(assert (=> bs!1944246 m!8160918))

(assert (=> bs!1944246 m!8160790))

(assert (=> b!7636143 d!2324660))

(declare-fun d!2324662 () Bool)

(assert (=> d!2324662 (= (matchR!9920 (reg!20746 r!14126) (_1!37999 lt!2659880)) (matchRSpec!4556 (reg!20746 r!14126) (_1!37999 lt!2659880)))))

(declare-fun lt!2659917 () Unit!167816)

(assert (=> d!2324662 (= lt!2659917 (choose!58963 (reg!20746 r!14126) (_1!37999 lt!2659880)))))

(assert (=> d!2324662 (validRegex!10835 (reg!20746 r!14126))))

(assert (=> d!2324662 (= (mainMatchTheorem!4542 (reg!20746 r!14126) (_1!37999 lt!2659880)) lt!2659917)))

(declare-fun bs!1944247 () Bool)

(assert (= bs!1944247 d!2324662))

(assert (=> bs!1944247 m!8160774))

(assert (=> bs!1944247 m!8160778))

(declare-fun m!8160920 () Bool)

(assert (=> bs!1944247 m!8160920))

(assert (=> bs!1944247 m!8160836))

(assert (=> b!7636143 d!2324662))

(declare-fun d!2324664 () Bool)

(declare-fun lt!2659920 () tuple2!69392)

(declare-fun dynLambda!29928 (Int tuple2!69392) Bool)

(assert (=> d!2324664 (dynLambda!29928 lambda!469399 lt!2659920)))

(declare-fun choose!58964 (Int) tuple2!69392)

(assert (=> d!2324664 (= lt!2659920 (choose!58964 lambda!469399))))

(assert (=> d!2324664 (Exists!4571 lambda!469399)))

(assert (=> d!2324664 (= (pickWitness!482 lambda!469399) lt!2659920)))

(declare-fun b_lambda!289075 () Bool)

(assert (=> (not b_lambda!289075) (not d!2324664)))

(declare-fun bs!1944251 () Bool)

(assert (= bs!1944251 d!2324664))

(declare-fun m!8160922 () Bool)

(assert (=> bs!1944251 m!8160922))

(declare-fun m!8160924 () Bool)

(assert (=> bs!1944251 m!8160924))

(assert (=> bs!1944251 m!8160740))

(assert (=> b!7636143 d!2324664))

(declare-fun bs!1944254 () Bool)

(declare-fun b!7636438 () Bool)

(assert (= bs!1944254 (and b!7636438 b!7636152)))

(declare-fun lambda!469415 () Int)

(assert (=> bs!1944254 (not (= lambda!469415 lambda!469399))))

(declare-fun bs!1944255 () Bool)

(assert (= bs!1944255 (and b!7636438 b!7636370)))

(assert (=> bs!1944255 (= (and (= (_2!37999 lt!2659880) (_1!37999 lt!2659880)) (= (reg!20746 r!14126) (reg!20746 (reg!20746 r!14126))) (= r!14126 (reg!20746 r!14126))) (= lambda!469415 lambda!469407))))

(declare-fun bs!1944256 () Bool)

(assert (= bs!1944256 (and b!7636438 b!7636360)))

(assert (=> bs!1944256 (not (= lambda!469415 lambda!469408))))

(assert (=> b!7636438 true))

(assert (=> b!7636438 true))

(declare-fun bs!1944258 () Bool)

(declare-fun b!7636428 () Bool)

(assert (= bs!1944258 (and b!7636428 b!7636152)))

(declare-fun lambda!469416 () Int)

(assert (=> bs!1944258 (not (= lambda!469416 lambda!469399))))

(declare-fun bs!1944259 () Bool)

(assert (= bs!1944259 (and b!7636428 b!7636370)))

(assert (=> bs!1944259 (not (= lambda!469416 lambda!469407))))

(declare-fun bs!1944260 () Bool)

(assert (= bs!1944260 (and b!7636428 b!7636360)))

(assert (=> bs!1944260 (= (and (= (_2!37999 lt!2659880) (_1!37999 lt!2659880)) (= (regOne!41346 r!14126) (regOne!41346 (reg!20746 r!14126))) (= (regTwo!41346 r!14126) (regTwo!41346 (reg!20746 r!14126)))) (= lambda!469416 lambda!469408))))

(declare-fun bs!1944261 () Bool)

(assert (= bs!1944261 (and b!7636428 b!7636438)))

(assert (=> bs!1944261 (not (= lambda!469416 lambda!469415))))

(assert (=> b!7636428 true))

(assert (=> b!7636428 true))

(declare-fun e!4539536 () Bool)

(declare-fun call!700897 () Bool)

(assert (=> b!7636428 (= e!4539536 call!700897)))

(declare-fun b!7636429 () Bool)

(declare-fun res!3058601 () Bool)

(declare-fun e!4539540 () Bool)

(assert (=> b!7636429 (=> res!3058601 e!4539540)))

(declare-fun call!700896 () Bool)

(assert (=> b!7636429 (= res!3058601 call!700896)))

(assert (=> b!7636429 (= e!4539536 e!4539540)))

(declare-fun b!7636430 () Bool)

(declare-fun c!1406670 () Bool)

(assert (=> b!7636430 (= c!1406670 ((_ is ElementMatch!20417) r!14126))))

(declare-fun e!4539538 () Bool)

(declare-fun e!4539534 () Bool)

(assert (=> b!7636430 (= e!4539538 e!4539534)))

(declare-fun c!1406671 () Bool)

(declare-fun bm!700891 () Bool)

(assert (=> bm!700891 (= call!700897 (Exists!4571 (ite c!1406671 lambda!469415 lambda!469416)))))

(declare-fun b!7636431 () Bool)

(declare-fun e!4539539 () Bool)

(assert (=> b!7636431 (= e!4539539 e!4539536)))

(assert (=> b!7636431 (= c!1406671 ((_ is Star!20417) r!14126))))

(declare-fun b!7636432 () Bool)

(declare-fun e!4539537 () Bool)

(assert (=> b!7636432 (= e!4539537 e!4539538)))

(declare-fun res!3058599 () Bool)

(assert (=> b!7636432 (= res!3058599 (not ((_ is EmptyLang!20417) r!14126)))))

(assert (=> b!7636432 (=> (not res!3058599) (not e!4539538))))

(declare-fun b!7636433 () Bool)

(assert (=> b!7636433 (= e!4539534 (= (_2!37999 lt!2659880) (Cons!73144 (c!1406604 r!14126) Nil!73144)))))

(declare-fun b!7636434 () Bool)

(declare-fun e!4539535 () Bool)

(assert (=> b!7636434 (= e!4539539 e!4539535)))

(declare-fun res!3058600 () Bool)

(assert (=> b!7636434 (= res!3058600 (matchRSpec!4556 (regOne!41347 r!14126) (_2!37999 lt!2659880)))))

(assert (=> b!7636434 (=> res!3058600 e!4539535)))

(declare-fun b!7636435 () Bool)

(assert (=> b!7636435 (= e!4539537 call!700896)))

(declare-fun d!2324666 () Bool)

(declare-fun c!1406669 () Bool)

(assert (=> d!2324666 (= c!1406669 ((_ is EmptyExpr!20417) r!14126))))

(assert (=> d!2324666 (= (matchRSpec!4556 r!14126 (_2!37999 lt!2659880)) e!4539537)))

(declare-fun b!7636436 () Bool)

(assert (=> b!7636436 (= e!4539535 (matchRSpec!4556 (regTwo!41347 r!14126) (_2!37999 lt!2659880)))))

(declare-fun b!7636437 () Bool)

(declare-fun c!1406668 () Bool)

(assert (=> b!7636437 (= c!1406668 ((_ is Union!20417) r!14126))))

(assert (=> b!7636437 (= e!4539534 e!4539539)))

(assert (=> b!7636438 (= e!4539540 call!700897)))

(declare-fun bm!700892 () Bool)

(assert (=> bm!700892 (= call!700896 (isEmpty!41773 (_2!37999 lt!2659880)))))

(assert (= (and d!2324666 c!1406669) b!7636435))

(assert (= (and d!2324666 (not c!1406669)) b!7636432))

(assert (= (and b!7636432 res!3058599) b!7636430))

(assert (= (and b!7636430 c!1406670) b!7636433))

(assert (= (and b!7636430 (not c!1406670)) b!7636437))

(assert (= (and b!7636437 c!1406668) b!7636434))

(assert (= (and b!7636437 (not c!1406668)) b!7636431))

(assert (= (and b!7636434 (not res!3058600)) b!7636436))

(assert (= (and b!7636431 c!1406671) b!7636429))

(assert (= (and b!7636431 (not c!1406671)) b!7636428))

(assert (= (and b!7636429 (not res!3058601)) b!7636438))

(assert (= (or b!7636438 b!7636428) bm!700891))

(assert (= (or b!7636435 b!7636429) bm!700892))

(declare-fun m!8160948 () Bool)

(assert (=> bm!700891 m!8160948))

(declare-fun m!8160950 () Bool)

(assert (=> b!7636434 m!8160950))

(declare-fun m!8160952 () Bool)

(assert (=> b!7636436 m!8160952))

(assert (=> bm!700892 m!8160906))

(assert (=> b!7636143 d!2324666))

(declare-fun b!7636464 () Bool)

(declare-fun res!3058613 () Bool)

(declare-fun e!4539559 () Bool)

(assert (=> b!7636464 (=> res!3058613 e!4539559)))

(assert (=> b!7636464 (= res!3058613 (not ((_ is ElementMatch!20417) r!14126)))))

(declare-fun e!4539558 () Bool)

(assert (=> b!7636464 (= e!4539558 e!4539559)))

(declare-fun b!7636465 () Bool)

(declare-fun e!4539560 () Bool)

(assert (=> b!7636465 (= e!4539560 e!4539558)))

(declare-fun c!1406679 () Bool)

(assert (=> b!7636465 (= c!1406679 ((_ is EmptyLang!20417) r!14126))))

(declare-fun b!7636466 () Bool)

(declare-fun e!4539561 () Bool)

(assert (=> b!7636466 (= e!4539561 (not (= (head!15703 s!9605) (c!1406604 r!14126))))))

(declare-fun b!7636467 () Bool)

(declare-fun e!4539557 () Bool)

(assert (=> b!7636467 (= e!4539557 e!4539561)))

(declare-fun res!3058614 () Bool)

(assert (=> b!7636467 (=> res!3058614 e!4539561)))

(declare-fun call!700901 () Bool)

(assert (=> b!7636467 (= res!3058614 call!700901)))

(declare-fun b!7636468 () Bool)

(declare-fun e!4539555 () Bool)

(assert (=> b!7636468 (= e!4539555 (matchR!9920 (derivativeStep!5903 r!14126 (head!15703 s!9605)) (tail!15243 s!9605)))))

(declare-fun b!7636469 () Bool)

(declare-fun res!3058620 () Bool)

(assert (=> b!7636469 (=> res!3058620 e!4539559)))

(declare-fun e!4539556 () Bool)

(assert (=> b!7636469 (= res!3058620 e!4539556)))

(declare-fun res!3058619 () Bool)

(assert (=> b!7636469 (=> (not res!3058619) (not e!4539556))))

(declare-fun lt!2659925 () Bool)

(assert (=> b!7636469 (= res!3058619 lt!2659925)))

(declare-fun b!7636470 () Bool)

(declare-fun res!3058618 () Bool)

(assert (=> b!7636470 (=> (not res!3058618) (not e!4539556))))

(assert (=> b!7636470 (= res!3058618 (isEmpty!41773 (tail!15243 s!9605)))))

(declare-fun b!7636471 () Bool)

(assert (=> b!7636471 (= e!4539555 (nullable!8930 r!14126))))

(declare-fun b!7636472 () Bool)

(declare-fun res!3058616 () Bool)

(assert (=> b!7636472 (=> res!3058616 e!4539561)))

(assert (=> b!7636472 (= res!3058616 (not (isEmpty!41773 (tail!15243 s!9605))))))

(declare-fun b!7636473 () Bool)

(assert (=> b!7636473 (= e!4539559 e!4539557)))

(declare-fun res!3058617 () Bool)

(assert (=> b!7636473 (=> (not res!3058617) (not e!4539557))))

(assert (=> b!7636473 (= res!3058617 (not lt!2659925))))

(declare-fun b!7636474 () Bool)

(assert (=> b!7636474 (= e!4539560 (= lt!2659925 call!700901))))

(declare-fun b!7636475 () Bool)

(assert (=> b!7636475 (= e!4539556 (= (head!15703 s!9605) (c!1406604 r!14126)))))

(declare-fun b!7636476 () Bool)

(declare-fun res!3058615 () Bool)

(assert (=> b!7636476 (=> (not res!3058615) (not e!4539556))))

(assert (=> b!7636476 (= res!3058615 (not call!700901))))

(declare-fun bm!700896 () Bool)

(assert (=> bm!700896 (= call!700901 (isEmpty!41773 s!9605))))

(declare-fun d!2324674 () Bool)

(assert (=> d!2324674 e!4539560))

(declare-fun c!1406680 () Bool)

(assert (=> d!2324674 (= c!1406680 ((_ is EmptyExpr!20417) r!14126))))

(assert (=> d!2324674 (= lt!2659925 e!4539555)))

(declare-fun c!1406681 () Bool)

(assert (=> d!2324674 (= c!1406681 (isEmpty!41773 s!9605))))

(assert (=> d!2324674 (validRegex!10835 r!14126)))

(assert (=> d!2324674 (= (matchR!9920 r!14126 s!9605) lt!2659925)))

(declare-fun b!7636477 () Bool)

(assert (=> b!7636477 (= e!4539558 (not lt!2659925))))

(assert (= (and d!2324674 c!1406681) b!7636471))

(assert (= (and d!2324674 (not c!1406681)) b!7636468))

(assert (= (and d!2324674 c!1406680) b!7636474))

(assert (= (and d!2324674 (not c!1406680)) b!7636465))

(assert (= (and b!7636465 c!1406679) b!7636477))

(assert (= (and b!7636465 (not c!1406679)) b!7636464))

(assert (= (and b!7636464 (not res!3058613)) b!7636469))

(assert (= (and b!7636469 res!3058619) b!7636476))

(assert (= (and b!7636476 res!3058615) b!7636470))

(assert (= (and b!7636470 res!3058618) b!7636475))

(assert (= (and b!7636469 (not res!3058620)) b!7636473))

(assert (= (and b!7636473 res!3058617) b!7636467))

(assert (= (and b!7636467 (not res!3058614)) b!7636472))

(assert (= (and b!7636472 (not res!3058616)) b!7636466))

(assert (= (or b!7636474 b!7636467 b!7636476) bm!700896))

(assert (=> b!7636471 m!8160904))

(assert (=> d!2324674 m!8160792))

(assert (=> d!2324674 m!8160790))

(declare-fun m!8160970 () Bool)

(assert (=> b!7636475 m!8160970))

(declare-fun m!8160974 () Bool)

(assert (=> b!7636470 m!8160974))

(assert (=> b!7636470 m!8160974))

(declare-fun m!8160976 () Bool)

(assert (=> b!7636470 m!8160976))

(assert (=> b!7636466 m!8160970))

(assert (=> b!7636472 m!8160974))

(assert (=> b!7636472 m!8160974))

(assert (=> b!7636472 m!8160976))

(assert (=> b!7636468 m!8160970))

(assert (=> b!7636468 m!8160970))

(declare-fun m!8160978 () Bool)

(assert (=> b!7636468 m!8160978))

(assert (=> b!7636468 m!8160974))

(assert (=> b!7636468 m!8160978))

(assert (=> b!7636468 m!8160974))

(declare-fun m!8160980 () Bool)

(assert (=> b!7636468 m!8160980))

(assert (=> bm!700896 m!8160792))

(assert (=> b!7636148 d!2324674))

(declare-fun b!7636506 () Bool)

(declare-fun res!3058637 () Bool)

(declare-fun e!4539580 () Bool)

(assert (=> b!7636506 (=> res!3058637 e!4539580)))

(assert (=> b!7636506 (= res!3058637 (not ((_ is ElementMatch!20417) r!14126)))))

(declare-fun e!4539579 () Bool)

(assert (=> b!7636506 (= e!4539579 e!4539580)))

(declare-fun b!7636507 () Bool)

(declare-fun e!4539581 () Bool)

(assert (=> b!7636507 (= e!4539581 e!4539579)))

(declare-fun c!1406688 () Bool)

(assert (=> b!7636507 (= c!1406688 ((_ is EmptyLang!20417) r!14126))))

(declare-fun b!7636508 () Bool)

(declare-fun e!4539582 () Bool)

(assert (=> b!7636508 (= e!4539582 (not (= (head!15703 (_2!37999 lt!2659874)) (c!1406604 r!14126))))))

(declare-fun b!7636509 () Bool)

(declare-fun e!4539578 () Bool)

(assert (=> b!7636509 (= e!4539578 e!4539582)))

(declare-fun res!3058638 () Bool)

(assert (=> b!7636509 (=> res!3058638 e!4539582)))

(declare-fun call!700904 () Bool)

(assert (=> b!7636509 (= res!3058638 call!700904)))

(declare-fun b!7636510 () Bool)

(declare-fun e!4539576 () Bool)

(assert (=> b!7636510 (= e!4539576 (matchR!9920 (derivativeStep!5903 r!14126 (head!15703 (_2!37999 lt!2659874))) (tail!15243 (_2!37999 lt!2659874))))))

(declare-fun b!7636511 () Bool)

(declare-fun res!3058644 () Bool)

(assert (=> b!7636511 (=> res!3058644 e!4539580)))

(declare-fun e!4539577 () Bool)

(assert (=> b!7636511 (= res!3058644 e!4539577)))

(declare-fun res!3058643 () Bool)

(assert (=> b!7636511 (=> (not res!3058643) (not e!4539577))))

(declare-fun lt!2659928 () Bool)

(assert (=> b!7636511 (= res!3058643 lt!2659928)))

(declare-fun b!7636512 () Bool)

(declare-fun res!3058642 () Bool)

(assert (=> b!7636512 (=> (not res!3058642) (not e!4539577))))

(assert (=> b!7636512 (= res!3058642 (isEmpty!41773 (tail!15243 (_2!37999 lt!2659874))))))

(declare-fun b!7636513 () Bool)

(assert (=> b!7636513 (= e!4539576 (nullable!8930 r!14126))))

(declare-fun b!7636514 () Bool)

(declare-fun res!3058640 () Bool)

(assert (=> b!7636514 (=> res!3058640 e!4539582)))

(assert (=> b!7636514 (= res!3058640 (not (isEmpty!41773 (tail!15243 (_2!37999 lt!2659874)))))))

(declare-fun b!7636515 () Bool)

(assert (=> b!7636515 (= e!4539580 e!4539578)))

(declare-fun res!3058641 () Bool)

(assert (=> b!7636515 (=> (not res!3058641) (not e!4539578))))

(assert (=> b!7636515 (= res!3058641 (not lt!2659928))))

(declare-fun b!7636516 () Bool)

(assert (=> b!7636516 (= e!4539581 (= lt!2659928 call!700904))))

(declare-fun b!7636517 () Bool)

(assert (=> b!7636517 (= e!4539577 (= (head!15703 (_2!37999 lt!2659874)) (c!1406604 r!14126)))))

(declare-fun b!7636518 () Bool)

(declare-fun res!3058639 () Bool)

(assert (=> b!7636518 (=> (not res!3058639) (not e!4539577))))

(assert (=> b!7636518 (= res!3058639 (not call!700904))))

(declare-fun bm!700899 () Bool)

(assert (=> bm!700899 (= call!700904 (isEmpty!41773 (_2!37999 lt!2659874)))))

(declare-fun d!2324680 () Bool)

(assert (=> d!2324680 e!4539581))

(declare-fun c!1406689 () Bool)

(assert (=> d!2324680 (= c!1406689 ((_ is EmptyExpr!20417) r!14126))))

(assert (=> d!2324680 (= lt!2659928 e!4539576)))

(declare-fun c!1406690 () Bool)

(assert (=> d!2324680 (= c!1406690 (isEmpty!41773 (_2!37999 lt!2659874)))))

(assert (=> d!2324680 (validRegex!10835 r!14126)))

(assert (=> d!2324680 (= (matchR!9920 r!14126 (_2!37999 lt!2659874)) lt!2659928)))

(declare-fun b!7636519 () Bool)

(assert (=> b!7636519 (= e!4539579 (not lt!2659928))))

(assert (= (and d!2324680 c!1406690) b!7636513))

(assert (= (and d!2324680 (not c!1406690)) b!7636510))

(assert (= (and d!2324680 c!1406689) b!7636516))

(assert (= (and d!2324680 (not c!1406689)) b!7636507))

(assert (= (and b!7636507 c!1406688) b!7636519))

(assert (= (and b!7636507 (not c!1406688)) b!7636506))

(assert (= (and b!7636506 (not res!3058637)) b!7636511))

(assert (= (and b!7636511 res!3058643) b!7636518))

(assert (= (and b!7636518 res!3058639) b!7636512))

(assert (= (and b!7636512 res!3058642) b!7636517))

(assert (= (and b!7636511 (not res!3058644)) b!7636515))

(assert (= (and b!7636515 res!3058641) b!7636509))

(assert (= (and b!7636509 (not res!3058638)) b!7636514))

(assert (= (and b!7636514 (not res!3058640)) b!7636508))

(assert (= (or b!7636516 b!7636509 b!7636518) bm!700899))

(assert (=> b!7636513 m!8160904))

(declare-fun m!8161000 () Bool)

(assert (=> d!2324680 m!8161000))

(assert (=> d!2324680 m!8160790))

(declare-fun m!8161004 () Bool)

(assert (=> b!7636517 m!8161004))

(declare-fun m!8161008 () Bool)

(assert (=> b!7636512 m!8161008))

(assert (=> b!7636512 m!8161008))

(declare-fun m!8161010 () Bool)

(assert (=> b!7636512 m!8161010))

(assert (=> b!7636508 m!8161004))

(assert (=> b!7636514 m!8161008))

(assert (=> b!7636514 m!8161008))

(assert (=> b!7636514 m!8161010))

(assert (=> b!7636510 m!8161004))

(assert (=> b!7636510 m!8161004))

(declare-fun m!8161014 () Bool)

(assert (=> b!7636510 m!8161014))

(assert (=> b!7636510 m!8161008))

(assert (=> b!7636510 m!8161014))

(assert (=> b!7636510 m!8161008))

(declare-fun m!8161016 () Bool)

(assert (=> b!7636510 m!8161016))

(assert (=> bm!700899 m!8161000))

(assert (=> b!7636148 d!2324680))

(declare-fun bs!1944272 () Bool)

(declare-fun b!7636558 () Bool)

(assert (= bs!1944272 (and b!7636558 b!7636152)))

(declare-fun lambda!469419 () Int)

(assert (=> bs!1944272 (not (= lambda!469419 lambda!469399))))

(declare-fun bs!1944274 () Bool)

(assert (= bs!1944274 (and b!7636558 b!7636370)))

(assert (=> bs!1944274 (= (and (= (_2!37999 lt!2659874) (_1!37999 lt!2659880)) (= (reg!20746 r!14126) (reg!20746 (reg!20746 r!14126))) (= r!14126 (reg!20746 r!14126))) (= lambda!469419 lambda!469407))))

(declare-fun bs!1944277 () Bool)

(assert (= bs!1944277 (and b!7636558 b!7636438)))

(assert (=> bs!1944277 (= (= (_2!37999 lt!2659874) (_2!37999 lt!2659880)) (= lambda!469419 lambda!469415))))

(declare-fun bs!1944280 () Bool)

(assert (= bs!1944280 (and b!7636558 b!7636428)))

(assert (=> bs!1944280 (not (= lambda!469419 lambda!469416))))

(declare-fun bs!1944282 () Bool)

(assert (= bs!1944282 (and b!7636558 b!7636360)))

(assert (=> bs!1944282 (not (= lambda!469419 lambda!469408))))

(assert (=> b!7636558 true))

(assert (=> b!7636558 true))

(declare-fun bs!1944290 () Bool)

(declare-fun b!7636548 () Bool)

(assert (= bs!1944290 (and b!7636548 b!7636152)))

(declare-fun lambda!469422 () Int)

(assert (=> bs!1944290 (not (= lambda!469422 lambda!469399))))

(declare-fun bs!1944291 () Bool)

(assert (= bs!1944291 (and b!7636548 b!7636558)))

(assert (=> bs!1944291 (not (= lambda!469422 lambda!469419))))

(declare-fun bs!1944292 () Bool)

(assert (= bs!1944292 (and b!7636548 b!7636370)))

(assert (=> bs!1944292 (not (= lambda!469422 lambda!469407))))

(declare-fun bs!1944293 () Bool)

(assert (= bs!1944293 (and b!7636548 b!7636438)))

(assert (=> bs!1944293 (not (= lambda!469422 lambda!469415))))

(declare-fun bs!1944294 () Bool)

(assert (= bs!1944294 (and b!7636548 b!7636428)))

(assert (=> bs!1944294 (= (= (_2!37999 lt!2659874) (_2!37999 lt!2659880)) (= lambda!469422 lambda!469416))))

(declare-fun bs!1944296 () Bool)

(assert (= bs!1944296 (and b!7636548 b!7636360)))

(assert (=> bs!1944296 (= (and (= (_2!37999 lt!2659874) (_1!37999 lt!2659880)) (= (regOne!41346 r!14126) (regOne!41346 (reg!20746 r!14126))) (= (regTwo!41346 r!14126) (regTwo!41346 (reg!20746 r!14126)))) (= lambda!469422 lambda!469408))))

(assert (=> b!7636548 true))

(assert (=> b!7636548 true))

(declare-fun e!4539599 () Bool)

(declare-fun call!700908 () Bool)

(assert (=> b!7636548 (= e!4539599 call!700908)))

(declare-fun b!7636549 () Bool)

(declare-fun res!3058663 () Bool)

(declare-fun e!4539603 () Bool)

(assert (=> b!7636549 (=> res!3058663 e!4539603)))

(declare-fun call!700907 () Bool)

(assert (=> b!7636549 (= res!3058663 call!700907)))

(assert (=> b!7636549 (= e!4539599 e!4539603)))

(declare-fun b!7636550 () Bool)

(declare-fun c!1406699 () Bool)

(assert (=> b!7636550 (= c!1406699 ((_ is ElementMatch!20417) r!14126))))

(declare-fun e!4539601 () Bool)

(declare-fun e!4539597 () Bool)

(assert (=> b!7636550 (= e!4539601 e!4539597)))

(declare-fun c!1406700 () Bool)

(declare-fun bm!700902 () Bool)

(assert (=> bm!700902 (= call!700908 (Exists!4571 (ite c!1406700 lambda!469419 lambda!469422)))))

(declare-fun b!7636551 () Bool)

(declare-fun e!4539602 () Bool)

(assert (=> b!7636551 (= e!4539602 e!4539599)))

(assert (=> b!7636551 (= c!1406700 ((_ is Star!20417) r!14126))))

(declare-fun b!7636552 () Bool)

(declare-fun e!4539600 () Bool)

(assert (=> b!7636552 (= e!4539600 e!4539601)))

(declare-fun res!3058661 () Bool)

(assert (=> b!7636552 (= res!3058661 (not ((_ is EmptyLang!20417) r!14126)))))

(assert (=> b!7636552 (=> (not res!3058661) (not e!4539601))))

(declare-fun b!7636553 () Bool)

(assert (=> b!7636553 (= e!4539597 (= (_2!37999 lt!2659874) (Cons!73144 (c!1406604 r!14126) Nil!73144)))))

(declare-fun b!7636554 () Bool)

(declare-fun e!4539598 () Bool)

(assert (=> b!7636554 (= e!4539602 e!4539598)))

(declare-fun res!3058662 () Bool)

(assert (=> b!7636554 (= res!3058662 (matchRSpec!4556 (regOne!41347 r!14126) (_2!37999 lt!2659874)))))

(assert (=> b!7636554 (=> res!3058662 e!4539598)))

(declare-fun b!7636555 () Bool)

(assert (=> b!7636555 (= e!4539600 call!700907)))

(declare-fun d!2324688 () Bool)

(declare-fun c!1406698 () Bool)

(assert (=> d!2324688 (= c!1406698 ((_ is EmptyExpr!20417) r!14126))))

(assert (=> d!2324688 (= (matchRSpec!4556 r!14126 (_2!37999 lt!2659874)) e!4539600)))

(declare-fun b!7636556 () Bool)

(assert (=> b!7636556 (= e!4539598 (matchRSpec!4556 (regTwo!41347 r!14126) (_2!37999 lt!2659874)))))

(declare-fun b!7636557 () Bool)

(declare-fun c!1406697 () Bool)

(assert (=> b!7636557 (= c!1406697 ((_ is Union!20417) r!14126))))

(assert (=> b!7636557 (= e!4539597 e!4539602)))

(assert (=> b!7636558 (= e!4539603 call!700908)))

(declare-fun bm!700903 () Bool)

(assert (=> bm!700903 (= call!700907 (isEmpty!41773 (_2!37999 lt!2659874)))))

(assert (= (and d!2324688 c!1406698) b!7636555))

(assert (= (and d!2324688 (not c!1406698)) b!7636552))

(assert (= (and b!7636552 res!3058661) b!7636550))

(assert (= (and b!7636550 c!1406699) b!7636553))

(assert (= (and b!7636550 (not c!1406699)) b!7636557))

(assert (= (and b!7636557 c!1406697) b!7636554))

(assert (= (and b!7636557 (not c!1406697)) b!7636551))

(assert (= (and b!7636554 (not res!3058662)) b!7636556))

(assert (= (and b!7636551 c!1406700) b!7636549))

(assert (= (and b!7636551 (not c!1406700)) b!7636548))

(assert (= (and b!7636549 (not res!3058663)) b!7636558))

(assert (= (or b!7636558 b!7636548) bm!700902))

(assert (= (or b!7636555 b!7636549) bm!700903))

(declare-fun m!8161038 () Bool)

(assert (=> bm!700902 m!8161038))

(declare-fun m!8161040 () Bool)

(assert (=> b!7636554 m!8161040))

(declare-fun m!8161042 () Bool)

(assert (=> b!7636556 m!8161042))

(assert (=> bm!700903 m!8161000))

(assert (=> b!7636148 d!2324688))

(declare-fun b!7636581 () Bool)

(declare-fun res!3058670 () Bool)

(declare-fun e!4539622 () Bool)

(assert (=> b!7636581 (=> res!3058670 e!4539622)))

(assert (=> b!7636581 (= res!3058670 (not ((_ is ElementMatch!20417) (reg!20746 r!14126))))))

(declare-fun e!4539621 () Bool)

(assert (=> b!7636581 (= e!4539621 e!4539622)))

(declare-fun b!7636582 () Bool)

(declare-fun e!4539623 () Bool)

(assert (=> b!7636582 (= e!4539623 e!4539621)))

(declare-fun c!1406709 () Bool)

(assert (=> b!7636582 (= c!1406709 ((_ is EmptyLang!20417) (reg!20746 r!14126)))))

(declare-fun b!7636583 () Bool)

(declare-fun e!4539624 () Bool)

(assert (=> b!7636583 (= e!4539624 (not (= (head!15703 (_1!37999 lt!2659874)) (c!1406604 (reg!20746 r!14126)))))))

(declare-fun b!7636584 () Bool)

(declare-fun e!4539620 () Bool)

(assert (=> b!7636584 (= e!4539620 e!4539624)))

(declare-fun res!3058671 () Bool)

(assert (=> b!7636584 (=> res!3058671 e!4539624)))

(declare-fun call!700913 () Bool)

(assert (=> b!7636584 (= res!3058671 call!700913)))

(declare-fun b!7636585 () Bool)

(declare-fun e!4539618 () Bool)

(assert (=> b!7636585 (= e!4539618 (matchR!9920 (derivativeStep!5903 (reg!20746 r!14126) (head!15703 (_1!37999 lt!2659874))) (tail!15243 (_1!37999 lt!2659874))))))

(declare-fun b!7636586 () Bool)

(declare-fun res!3058677 () Bool)

(assert (=> b!7636586 (=> res!3058677 e!4539622)))

(declare-fun e!4539619 () Bool)

(assert (=> b!7636586 (= res!3058677 e!4539619)))

(declare-fun res!3058676 () Bool)

(assert (=> b!7636586 (=> (not res!3058676) (not e!4539619))))

(declare-fun lt!2659933 () Bool)

(assert (=> b!7636586 (= res!3058676 lt!2659933)))

(declare-fun b!7636587 () Bool)

(declare-fun res!3058675 () Bool)

(assert (=> b!7636587 (=> (not res!3058675) (not e!4539619))))

(assert (=> b!7636587 (= res!3058675 (isEmpty!41773 (tail!15243 (_1!37999 lt!2659874))))))

(declare-fun b!7636588 () Bool)

(assert (=> b!7636588 (= e!4539618 (nullable!8930 (reg!20746 r!14126)))))

(declare-fun b!7636589 () Bool)

(declare-fun res!3058673 () Bool)

(assert (=> b!7636589 (=> res!3058673 e!4539624)))

(assert (=> b!7636589 (= res!3058673 (not (isEmpty!41773 (tail!15243 (_1!37999 lt!2659874)))))))

(declare-fun b!7636590 () Bool)

(assert (=> b!7636590 (= e!4539622 e!4539620)))

(declare-fun res!3058674 () Bool)

(assert (=> b!7636590 (=> (not res!3058674) (not e!4539620))))

(assert (=> b!7636590 (= res!3058674 (not lt!2659933))))

(declare-fun b!7636591 () Bool)

(assert (=> b!7636591 (= e!4539623 (= lt!2659933 call!700913))))

(declare-fun b!7636592 () Bool)

(assert (=> b!7636592 (= e!4539619 (= (head!15703 (_1!37999 lt!2659874)) (c!1406604 (reg!20746 r!14126))))))

(declare-fun b!7636593 () Bool)

(declare-fun res!3058672 () Bool)

(assert (=> b!7636593 (=> (not res!3058672) (not e!4539619))))

(assert (=> b!7636593 (= res!3058672 (not call!700913))))

(declare-fun bm!700908 () Bool)

(assert (=> bm!700908 (= call!700913 (isEmpty!41773 (_1!37999 lt!2659874)))))

(declare-fun d!2324698 () Bool)

(assert (=> d!2324698 e!4539623))

(declare-fun c!1406710 () Bool)

(assert (=> d!2324698 (= c!1406710 ((_ is EmptyExpr!20417) (reg!20746 r!14126)))))

(assert (=> d!2324698 (= lt!2659933 e!4539618)))

(declare-fun c!1406711 () Bool)

(assert (=> d!2324698 (= c!1406711 (isEmpty!41773 (_1!37999 lt!2659874)))))

(assert (=> d!2324698 (validRegex!10835 (reg!20746 r!14126))))

(assert (=> d!2324698 (= (matchR!9920 (reg!20746 r!14126) (_1!37999 lt!2659874)) lt!2659933)))

(declare-fun b!7636594 () Bool)

(assert (=> b!7636594 (= e!4539621 (not lt!2659933))))

(assert (= (and d!2324698 c!1406711) b!7636588))

(assert (= (and d!2324698 (not c!1406711)) b!7636585))

(assert (= (and d!2324698 c!1406710) b!7636591))

(assert (= (and d!2324698 (not c!1406710)) b!7636582))

(assert (= (and b!7636582 c!1406709) b!7636594))

(assert (= (and b!7636582 (not c!1406709)) b!7636581))

(assert (= (and b!7636581 (not res!3058670)) b!7636586))

(assert (= (and b!7636586 res!3058676) b!7636593))

(assert (= (and b!7636593 res!3058672) b!7636587))

(assert (= (and b!7636587 res!3058675) b!7636592))

(assert (= (and b!7636586 (not res!3058677)) b!7636590))

(assert (= (and b!7636590 res!3058674) b!7636584))

(assert (= (and b!7636584 (not res!3058671)) b!7636589))

(assert (= (and b!7636589 (not res!3058673)) b!7636583))

(assert (= (or b!7636591 b!7636584 b!7636593) bm!700908))

(assert (=> b!7636588 m!8160782))

(declare-fun m!8161044 () Bool)

(assert (=> d!2324698 m!8161044))

(assert (=> d!2324698 m!8160836))

(declare-fun m!8161046 () Bool)

(assert (=> b!7636592 m!8161046))

(declare-fun m!8161048 () Bool)

(assert (=> b!7636587 m!8161048))

(assert (=> b!7636587 m!8161048))

(declare-fun m!8161050 () Bool)

(assert (=> b!7636587 m!8161050))

(assert (=> b!7636583 m!8161046))

(assert (=> b!7636589 m!8161048))

(assert (=> b!7636589 m!8161048))

(assert (=> b!7636589 m!8161050))

(assert (=> b!7636585 m!8161046))

(assert (=> b!7636585 m!8161046))

(declare-fun m!8161052 () Bool)

(assert (=> b!7636585 m!8161052))

(assert (=> b!7636585 m!8161048))

(assert (=> b!7636585 m!8161052))

(assert (=> b!7636585 m!8161048))

(declare-fun m!8161054 () Bool)

(assert (=> b!7636585 m!8161054))

(assert (=> bm!700908 m!8161044))

(assert (=> b!7636148 d!2324698))

(declare-fun d!2324700 () Bool)

(assert (=> d!2324700 (= (matchR!9920 r!14126 (_2!37999 lt!2659874)) (matchRSpec!4556 r!14126 (_2!37999 lt!2659874)))))

(declare-fun lt!2659934 () Unit!167816)

(assert (=> d!2324700 (= lt!2659934 (choose!58963 r!14126 (_2!37999 lt!2659874)))))

(assert (=> d!2324700 (validRegex!10835 r!14126)))

(assert (=> d!2324700 (= (mainMatchTheorem!4542 r!14126 (_2!37999 lt!2659874)) lt!2659934)))

(declare-fun bs!1944314 () Bool)

(assert (= bs!1944314 d!2324700))

(assert (=> bs!1944314 m!8160764))

(assert (=> bs!1944314 m!8160758))

(declare-fun m!8161062 () Bool)

(assert (=> bs!1944314 m!8161062))

(assert (=> bs!1944314 m!8160790))

(assert (=> b!7636148 d!2324700))

(declare-fun d!2324702 () Bool)

(assert (=> d!2324702 (= (matchR!9920 (reg!20746 r!14126) (_1!37999 lt!2659874)) (matchRSpec!4556 (reg!20746 r!14126) (_1!37999 lt!2659874)))))

(declare-fun lt!2659935 () Unit!167816)

(assert (=> d!2324702 (= lt!2659935 (choose!58963 (reg!20746 r!14126) (_1!37999 lt!2659874)))))

(assert (=> d!2324702 (validRegex!10835 (reg!20746 r!14126))))

(assert (=> d!2324702 (= (mainMatchTheorem!4542 (reg!20746 r!14126) (_1!37999 lt!2659874)) lt!2659935)))

(declare-fun bs!1944315 () Bool)

(assert (= bs!1944315 d!2324702))

(assert (=> bs!1944315 m!8160770))

(assert (=> bs!1944315 m!8160760))

(declare-fun m!8161064 () Bool)

(assert (=> bs!1944315 m!8161064))

(assert (=> bs!1944315 m!8160836))

(assert (=> b!7636148 d!2324702))

(declare-fun d!2324704 () Bool)

(declare-fun choose!58965 (Int) Bool)

(assert (=> d!2324704 (= (Exists!4571 lambda!469399) (choose!58965 lambda!469399))))

(declare-fun bs!1944316 () Bool)

(assert (= bs!1944316 d!2324704))

(declare-fun m!8161066 () Bool)

(assert (=> bs!1944316 m!8161066))

(assert (=> b!7636148 d!2324704))

(declare-fun bs!1944318 () Bool)

(declare-fun b!7636636 () Bool)

(assert (= bs!1944318 (and b!7636636 b!7636152)))

(declare-fun lambda!469425 () Int)

(assert (=> bs!1944318 (not (= lambda!469425 lambda!469399))))

(declare-fun bs!1944319 () Bool)

(assert (= bs!1944319 (and b!7636636 b!7636548)))

(assert (=> bs!1944319 (not (= lambda!469425 lambda!469422))))

(declare-fun bs!1944320 () Bool)

(assert (= bs!1944320 (and b!7636636 b!7636558)))

(assert (=> bs!1944320 (= (and (= (_1!37999 lt!2659874) (_2!37999 lt!2659874)) (= (reg!20746 (reg!20746 r!14126)) (reg!20746 r!14126)) (= (reg!20746 r!14126) r!14126)) (= lambda!469425 lambda!469419))))

(declare-fun bs!1944321 () Bool)

(assert (= bs!1944321 (and b!7636636 b!7636370)))

(assert (=> bs!1944321 (= (= (_1!37999 lt!2659874) (_1!37999 lt!2659880)) (= lambda!469425 lambda!469407))))

(declare-fun bs!1944322 () Bool)

(assert (= bs!1944322 (and b!7636636 b!7636438)))

(assert (=> bs!1944322 (= (and (= (_1!37999 lt!2659874) (_2!37999 lt!2659880)) (= (reg!20746 (reg!20746 r!14126)) (reg!20746 r!14126)) (= (reg!20746 r!14126) r!14126)) (= lambda!469425 lambda!469415))))

(declare-fun bs!1944323 () Bool)

(assert (= bs!1944323 (and b!7636636 b!7636428)))

(assert (=> bs!1944323 (not (= lambda!469425 lambda!469416))))

(declare-fun bs!1944324 () Bool)

(assert (= bs!1944324 (and b!7636636 b!7636360)))

(assert (=> bs!1944324 (not (= lambda!469425 lambda!469408))))

(assert (=> b!7636636 true))

(assert (=> b!7636636 true))

(declare-fun bs!1944325 () Bool)

(declare-fun b!7636626 () Bool)

(assert (= bs!1944325 (and b!7636626 b!7636152)))

(declare-fun lambda!469426 () Int)

(assert (=> bs!1944325 (not (= lambda!469426 lambda!469399))))

(declare-fun bs!1944326 () Bool)

(assert (= bs!1944326 (and b!7636626 b!7636636)))

(assert (=> bs!1944326 (not (= lambda!469426 lambda!469425))))

(declare-fun bs!1944327 () Bool)

(assert (= bs!1944327 (and b!7636626 b!7636548)))

(assert (=> bs!1944327 (= (and (= (_1!37999 lt!2659874) (_2!37999 lt!2659874)) (= (regOne!41346 (reg!20746 r!14126)) (regOne!41346 r!14126)) (= (regTwo!41346 (reg!20746 r!14126)) (regTwo!41346 r!14126))) (= lambda!469426 lambda!469422))))

(declare-fun bs!1944328 () Bool)

(assert (= bs!1944328 (and b!7636626 b!7636558)))

(assert (=> bs!1944328 (not (= lambda!469426 lambda!469419))))

(declare-fun bs!1944329 () Bool)

(assert (= bs!1944329 (and b!7636626 b!7636370)))

(assert (=> bs!1944329 (not (= lambda!469426 lambda!469407))))

(declare-fun bs!1944330 () Bool)

(assert (= bs!1944330 (and b!7636626 b!7636438)))

(assert (=> bs!1944330 (not (= lambda!469426 lambda!469415))))

(declare-fun bs!1944331 () Bool)

(assert (= bs!1944331 (and b!7636626 b!7636428)))

(assert (=> bs!1944331 (= (and (= (_1!37999 lt!2659874) (_2!37999 lt!2659880)) (= (regOne!41346 (reg!20746 r!14126)) (regOne!41346 r!14126)) (= (regTwo!41346 (reg!20746 r!14126)) (regTwo!41346 r!14126))) (= lambda!469426 lambda!469416))))

(declare-fun bs!1944332 () Bool)

(assert (= bs!1944332 (and b!7636626 b!7636360)))

(assert (=> bs!1944332 (= (= (_1!37999 lt!2659874) (_1!37999 lt!2659880)) (= lambda!469426 lambda!469408))))

(assert (=> b!7636626 true))

(assert (=> b!7636626 true))

(declare-fun e!4539636 () Bool)

(declare-fun call!700915 () Bool)

(assert (=> b!7636626 (= e!4539636 call!700915)))

(declare-fun b!7636627 () Bool)

(declare-fun res!3058680 () Bool)

(declare-fun e!4539640 () Bool)

(assert (=> b!7636627 (=> res!3058680 e!4539640)))

(declare-fun call!700914 () Bool)

(assert (=> b!7636627 (= res!3058680 call!700914)))

(assert (=> b!7636627 (= e!4539636 e!4539640)))

(declare-fun b!7636628 () Bool)

(declare-fun c!1406714 () Bool)

(assert (=> b!7636628 (= c!1406714 ((_ is ElementMatch!20417) (reg!20746 r!14126)))))

(declare-fun e!4539638 () Bool)

(declare-fun e!4539634 () Bool)

(assert (=> b!7636628 (= e!4539638 e!4539634)))

(declare-fun bm!700909 () Bool)

(declare-fun c!1406715 () Bool)

(assert (=> bm!700909 (= call!700915 (Exists!4571 (ite c!1406715 lambda!469425 lambda!469426)))))

(declare-fun b!7636629 () Bool)

(declare-fun e!4539639 () Bool)

(assert (=> b!7636629 (= e!4539639 e!4539636)))

(assert (=> b!7636629 (= c!1406715 ((_ is Star!20417) (reg!20746 r!14126)))))

(declare-fun b!7636630 () Bool)

(declare-fun e!4539637 () Bool)

(assert (=> b!7636630 (= e!4539637 e!4539638)))

(declare-fun res!3058678 () Bool)

(assert (=> b!7636630 (= res!3058678 (not ((_ is EmptyLang!20417) (reg!20746 r!14126))))))

(assert (=> b!7636630 (=> (not res!3058678) (not e!4539638))))

(declare-fun b!7636631 () Bool)

(assert (=> b!7636631 (= e!4539634 (= (_1!37999 lt!2659874) (Cons!73144 (c!1406604 (reg!20746 r!14126)) Nil!73144)))))

(declare-fun b!7636632 () Bool)

(declare-fun e!4539635 () Bool)

(assert (=> b!7636632 (= e!4539639 e!4539635)))

(declare-fun res!3058679 () Bool)

(assert (=> b!7636632 (= res!3058679 (matchRSpec!4556 (regOne!41347 (reg!20746 r!14126)) (_1!37999 lt!2659874)))))

(assert (=> b!7636632 (=> res!3058679 e!4539635)))

(declare-fun b!7636633 () Bool)

(assert (=> b!7636633 (= e!4539637 call!700914)))

(declare-fun d!2324706 () Bool)

(declare-fun c!1406713 () Bool)

(assert (=> d!2324706 (= c!1406713 ((_ is EmptyExpr!20417) (reg!20746 r!14126)))))

(assert (=> d!2324706 (= (matchRSpec!4556 (reg!20746 r!14126) (_1!37999 lt!2659874)) e!4539637)))

(declare-fun b!7636634 () Bool)

(assert (=> b!7636634 (= e!4539635 (matchRSpec!4556 (regTwo!41347 (reg!20746 r!14126)) (_1!37999 lt!2659874)))))

(declare-fun b!7636635 () Bool)

(declare-fun c!1406712 () Bool)

(assert (=> b!7636635 (= c!1406712 ((_ is Union!20417) (reg!20746 r!14126)))))

(assert (=> b!7636635 (= e!4539634 e!4539639)))

(assert (=> b!7636636 (= e!4539640 call!700915)))

(declare-fun bm!700910 () Bool)

(assert (=> bm!700910 (= call!700914 (isEmpty!41773 (_1!37999 lt!2659874)))))

(assert (= (and d!2324706 c!1406713) b!7636633))

(assert (= (and d!2324706 (not c!1406713)) b!7636630))

(assert (= (and b!7636630 res!3058678) b!7636628))

(assert (= (and b!7636628 c!1406714) b!7636631))

(assert (= (and b!7636628 (not c!1406714)) b!7636635))

(assert (= (and b!7636635 c!1406712) b!7636632))

(assert (= (and b!7636635 (not c!1406712)) b!7636629))

(assert (= (and b!7636632 (not res!3058679)) b!7636634))

(assert (= (and b!7636629 c!1406715) b!7636627))

(assert (= (and b!7636629 (not c!1406715)) b!7636626))

(assert (= (and b!7636627 (not res!3058680)) b!7636636))

(assert (= (or b!7636636 b!7636626) bm!700909))

(assert (= (or b!7636633 b!7636627) bm!700910))

(declare-fun m!8161074 () Bool)

(assert (=> bm!700909 m!8161074))

(declare-fun m!8161076 () Bool)

(assert (=> b!7636632 m!8161076))

(declare-fun m!8161078 () Bool)

(assert (=> b!7636634 m!8161078))

(assert (=> bm!700910 m!8161044))

(assert (=> b!7636148 d!2324706))

(declare-fun d!2324710 () Bool)

(assert (=> d!2324710 (= (get!25890 lt!2659879) (v!54624 lt!2659879))))

(assert (=> b!7636148 d!2324710))

(declare-fun d!2324712 () Bool)

(assert (=> d!2324712 (matchR!9920 (Star!20417 (reg!20746 r!14126)) (++!17697 (_1!37999 lt!2659874) (_2!37999 lt!2659874)))))

(declare-fun lt!2659938 () Unit!167816)

(declare-fun choose!58966 (Regex!20417 List!73268 List!73268) Unit!167816)

(assert (=> d!2324712 (= lt!2659938 (choose!58966 (reg!20746 r!14126) (_1!37999 lt!2659874) (_2!37999 lt!2659874)))))

(assert (=> d!2324712 (validRegex!10835 (Star!20417 (reg!20746 r!14126)))))

(assert (=> d!2324712 (= (lemmaStarApp!204 (reg!20746 r!14126) (_1!37999 lt!2659874) (_2!37999 lt!2659874)) lt!2659938)))

(declare-fun bs!1944333 () Bool)

(assert (= bs!1944333 d!2324712))

(assert (=> bs!1944333 m!8160756))

(assert (=> bs!1944333 m!8160756))

(declare-fun m!8161080 () Bool)

(assert (=> bs!1944333 m!8161080))

(declare-fun m!8161082 () Bool)

(assert (=> bs!1944333 m!8161082))

(declare-fun m!8161084 () Bool)

(assert (=> bs!1944333 m!8161084))

(assert (=> b!7636147 d!2324712))

(declare-fun b!7636651 () Bool)

(declare-fun e!4539648 () List!73268)

(assert (=> b!7636651 (= e!4539648 (_2!37999 lt!2659874))))

(declare-fun b!7636652 () Bool)

(assert (=> b!7636652 (= e!4539648 (Cons!73144 (h!79592 (_1!37999 lt!2659874)) (++!17697 (t!388003 (_1!37999 lt!2659874)) (_2!37999 lt!2659874))))))

(declare-fun d!2324714 () Bool)

(declare-fun e!4539647 () Bool)

(assert (=> d!2324714 e!4539647))

(declare-fun res!3058688 () Bool)

(assert (=> d!2324714 (=> (not res!3058688) (not e!4539647))))

(declare-fun lt!2659941 () List!73268)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15486 (List!73268) (InoxSet C!41160))

(assert (=> d!2324714 (= res!3058688 (= (content!15486 lt!2659941) ((_ map or) (content!15486 (_1!37999 lt!2659874)) (content!15486 (_2!37999 lt!2659874)))))))

(assert (=> d!2324714 (= lt!2659941 e!4539648)))

(declare-fun c!1406718 () Bool)

(assert (=> d!2324714 (= c!1406718 ((_ is Nil!73144) (_1!37999 lt!2659874)))))

(assert (=> d!2324714 (= (++!17697 (_1!37999 lt!2659874) (_2!37999 lt!2659874)) lt!2659941)))

(declare-fun b!7636654 () Bool)

(assert (=> b!7636654 (= e!4539647 (or (not (= (_2!37999 lt!2659874) Nil!73144)) (= lt!2659941 (_1!37999 lt!2659874))))))

(declare-fun b!7636653 () Bool)

(declare-fun res!3058687 () Bool)

(assert (=> b!7636653 (=> (not res!3058687) (not e!4539647))))

(declare-fun size!42579 (List!73268) Int)

(assert (=> b!7636653 (= res!3058687 (= (size!42579 lt!2659941) (+ (size!42579 (_1!37999 lt!2659874)) (size!42579 (_2!37999 lt!2659874)))))))

(assert (= (and d!2324714 c!1406718) b!7636651))

(assert (= (and d!2324714 (not c!1406718)) b!7636652))

(assert (= (and d!2324714 res!3058688) b!7636653))

(assert (= (and b!7636653 res!3058687) b!7636654))

(declare-fun m!8161086 () Bool)

(assert (=> b!7636652 m!8161086))

(declare-fun m!8161088 () Bool)

(assert (=> d!2324714 m!8161088))

(declare-fun m!8161090 () Bool)

(assert (=> d!2324714 m!8161090))

(declare-fun m!8161092 () Bool)

(assert (=> d!2324714 m!8161092))

(declare-fun m!8161094 () Bool)

(assert (=> b!7636653 m!8161094))

(declare-fun m!8161096 () Bool)

(assert (=> b!7636653 m!8161096))

(declare-fun m!8161098 () Bool)

(assert (=> b!7636653 m!8161098))

(assert (=> b!7636147 d!2324714))

(declare-fun b!7636655 () Bool)

(declare-fun res!3058689 () Bool)

(declare-fun e!4539653 () Bool)

(assert (=> b!7636655 (=> res!3058689 e!4539653)))

(assert (=> b!7636655 (= res!3058689 (not ((_ is ElementMatch!20417) r!14126)))))

(declare-fun e!4539652 () Bool)

(assert (=> b!7636655 (= e!4539652 e!4539653)))

(declare-fun b!7636656 () Bool)

(declare-fun e!4539654 () Bool)

(assert (=> b!7636656 (= e!4539654 e!4539652)))

(declare-fun c!1406719 () Bool)

(assert (=> b!7636656 (= c!1406719 ((_ is EmptyLang!20417) r!14126))))

(declare-fun b!7636657 () Bool)

(declare-fun e!4539655 () Bool)

(assert (=> b!7636657 (= e!4539655 (not (= (head!15703 lt!2659878) (c!1406604 r!14126))))))

(declare-fun b!7636658 () Bool)

(declare-fun e!4539651 () Bool)

(assert (=> b!7636658 (= e!4539651 e!4539655)))

(declare-fun res!3058690 () Bool)

(assert (=> b!7636658 (=> res!3058690 e!4539655)))

(declare-fun call!700916 () Bool)

(assert (=> b!7636658 (= res!3058690 call!700916)))

(declare-fun b!7636659 () Bool)

(declare-fun e!4539649 () Bool)

(assert (=> b!7636659 (= e!4539649 (matchR!9920 (derivativeStep!5903 r!14126 (head!15703 lt!2659878)) (tail!15243 lt!2659878)))))

(declare-fun b!7636660 () Bool)

(declare-fun res!3058696 () Bool)

(assert (=> b!7636660 (=> res!3058696 e!4539653)))

(declare-fun e!4539650 () Bool)

(assert (=> b!7636660 (= res!3058696 e!4539650)))

(declare-fun res!3058695 () Bool)

(assert (=> b!7636660 (=> (not res!3058695) (not e!4539650))))

(declare-fun lt!2659942 () Bool)

(assert (=> b!7636660 (= res!3058695 lt!2659942)))

(declare-fun b!7636661 () Bool)

(declare-fun res!3058694 () Bool)

(assert (=> b!7636661 (=> (not res!3058694) (not e!4539650))))

(assert (=> b!7636661 (= res!3058694 (isEmpty!41773 (tail!15243 lt!2659878)))))

(declare-fun b!7636662 () Bool)

(assert (=> b!7636662 (= e!4539649 (nullable!8930 r!14126))))

(declare-fun b!7636663 () Bool)

(declare-fun res!3058692 () Bool)

(assert (=> b!7636663 (=> res!3058692 e!4539655)))

(assert (=> b!7636663 (= res!3058692 (not (isEmpty!41773 (tail!15243 lt!2659878))))))

(declare-fun b!7636664 () Bool)

(assert (=> b!7636664 (= e!4539653 e!4539651)))

(declare-fun res!3058693 () Bool)

(assert (=> b!7636664 (=> (not res!3058693) (not e!4539651))))

(assert (=> b!7636664 (= res!3058693 (not lt!2659942))))

(declare-fun b!7636665 () Bool)

(assert (=> b!7636665 (= e!4539654 (= lt!2659942 call!700916))))

(declare-fun b!7636666 () Bool)

(assert (=> b!7636666 (= e!4539650 (= (head!15703 lt!2659878) (c!1406604 r!14126)))))

(declare-fun b!7636667 () Bool)

(declare-fun res!3058691 () Bool)

(assert (=> b!7636667 (=> (not res!3058691) (not e!4539650))))

(assert (=> b!7636667 (= res!3058691 (not call!700916))))

(declare-fun bm!700911 () Bool)

(assert (=> bm!700911 (= call!700916 (isEmpty!41773 lt!2659878))))

(declare-fun d!2324716 () Bool)

(assert (=> d!2324716 e!4539654))

(declare-fun c!1406720 () Bool)

(assert (=> d!2324716 (= c!1406720 ((_ is EmptyExpr!20417) r!14126))))

(assert (=> d!2324716 (= lt!2659942 e!4539649)))

(declare-fun c!1406721 () Bool)

(assert (=> d!2324716 (= c!1406721 (isEmpty!41773 lt!2659878))))

(assert (=> d!2324716 (validRegex!10835 r!14126)))

(assert (=> d!2324716 (= (matchR!9920 r!14126 lt!2659878) lt!2659942)))

(declare-fun b!7636668 () Bool)

(assert (=> b!7636668 (= e!4539652 (not lt!2659942))))

(assert (= (and d!2324716 c!1406721) b!7636662))

(assert (= (and d!2324716 (not c!1406721)) b!7636659))

(assert (= (and d!2324716 c!1406720) b!7636665))

(assert (= (and d!2324716 (not c!1406720)) b!7636656))

(assert (= (and b!7636656 c!1406719) b!7636668))

(assert (= (and b!7636656 (not c!1406719)) b!7636655))

(assert (= (and b!7636655 (not res!3058689)) b!7636660))

(assert (= (and b!7636660 res!3058695) b!7636667))

(assert (= (and b!7636667 res!3058691) b!7636661))

(assert (= (and b!7636661 res!3058694) b!7636666))

(assert (= (and b!7636660 (not res!3058696)) b!7636664))

(assert (= (and b!7636664 res!3058693) b!7636658))

(assert (= (and b!7636658 (not res!3058690)) b!7636663))

(assert (= (and b!7636663 (not res!3058692)) b!7636657))

(assert (= (or b!7636665 b!7636658 b!7636667) bm!700911))

(assert (=> b!7636662 m!8160904))

(declare-fun m!8161100 () Bool)

(assert (=> d!2324716 m!8161100))

(assert (=> d!2324716 m!8160790))

(declare-fun m!8161102 () Bool)

(assert (=> b!7636666 m!8161102))

(declare-fun m!8161104 () Bool)

(assert (=> b!7636661 m!8161104))

(assert (=> b!7636661 m!8161104))

(declare-fun m!8161106 () Bool)

(assert (=> b!7636661 m!8161106))

(assert (=> b!7636657 m!8161102))

(assert (=> b!7636663 m!8161104))

(assert (=> b!7636663 m!8161104))

(assert (=> b!7636663 m!8161106))

(assert (=> b!7636659 m!8161102))

(assert (=> b!7636659 m!8161102))

(declare-fun m!8161108 () Bool)

(assert (=> b!7636659 m!8161108))

(assert (=> b!7636659 m!8161104))

(assert (=> b!7636659 m!8161108))

(assert (=> b!7636659 m!8161104))

(declare-fun m!8161110 () Bool)

(assert (=> b!7636659 m!8161110))

(assert (=> bm!700911 m!8161100))

(assert (=> b!7636147 d!2324716))

(declare-fun d!2324718 () Bool)

(assert (=> d!2324718 (matchR!9920 (Concat!29262 (reg!20746 r!14126) r!14126) (++!17697 (_1!37999 lt!2659874) (_2!37999 lt!2659874)))))

(declare-fun lt!2659945 () Unit!167816)

(declare-fun choose!58967 (Regex!20417 Regex!20417 List!73268 List!73268 List!73268) Unit!167816)

(assert (=> d!2324718 (= lt!2659945 (choose!58967 (reg!20746 r!14126) r!14126 (_1!37999 lt!2659874) (_2!37999 lt!2659874) s!9605))))

(assert (=> d!2324718 (validRegex!10835 (reg!20746 r!14126))))

(assert (=> d!2324718 (= (lemmaFindSeparationIsDefinedThenConcatMatches!174 (reg!20746 r!14126) r!14126 (_1!37999 lt!2659874) (_2!37999 lt!2659874) s!9605) lt!2659945)))

(declare-fun bs!1944334 () Bool)

(assert (= bs!1944334 d!2324718))

(assert (=> bs!1944334 m!8160756))

(assert (=> bs!1944334 m!8160756))

(declare-fun m!8161112 () Bool)

(assert (=> bs!1944334 m!8161112))

(declare-fun m!8161114 () Bool)

(assert (=> bs!1944334 m!8161114))

(assert (=> bs!1944334 m!8160836))

(assert (=> b!7636147 d!2324718))

(declare-fun b!7636669 () Bool)

(declare-fun res!3058697 () Bool)

(declare-fun e!4539660 () Bool)

(assert (=> b!7636669 (=> res!3058697 e!4539660)))

(assert (=> b!7636669 (= res!3058697 (not ((_ is ElementMatch!20417) (Concat!29262 (reg!20746 r!14126) r!14126))))))

(declare-fun e!4539659 () Bool)

(assert (=> b!7636669 (= e!4539659 e!4539660)))

(declare-fun b!7636670 () Bool)

(declare-fun e!4539661 () Bool)

(assert (=> b!7636670 (= e!4539661 e!4539659)))

(declare-fun c!1406722 () Bool)

(assert (=> b!7636670 (= c!1406722 ((_ is EmptyLang!20417) (Concat!29262 (reg!20746 r!14126) r!14126)))))

(declare-fun b!7636671 () Bool)

(declare-fun e!4539662 () Bool)

(assert (=> b!7636671 (= e!4539662 (not (= (head!15703 lt!2659878) (c!1406604 (Concat!29262 (reg!20746 r!14126) r!14126)))))))

(declare-fun b!7636672 () Bool)

(declare-fun e!4539658 () Bool)

(assert (=> b!7636672 (= e!4539658 e!4539662)))

(declare-fun res!3058698 () Bool)

(assert (=> b!7636672 (=> res!3058698 e!4539662)))

(declare-fun call!700917 () Bool)

(assert (=> b!7636672 (= res!3058698 call!700917)))

(declare-fun b!7636673 () Bool)

(declare-fun e!4539656 () Bool)

(assert (=> b!7636673 (= e!4539656 (matchR!9920 (derivativeStep!5903 (Concat!29262 (reg!20746 r!14126) r!14126) (head!15703 lt!2659878)) (tail!15243 lt!2659878)))))

(declare-fun b!7636674 () Bool)

(declare-fun res!3058704 () Bool)

(assert (=> b!7636674 (=> res!3058704 e!4539660)))

(declare-fun e!4539657 () Bool)

(assert (=> b!7636674 (= res!3058704 e!4539657)))

(declare-fun res!3058703 () Bool)

(assert (=> b!7636674 (=> (not res!3058703) (not e!4539657))))

(declare-fun lt!2659946 () Bool)

(assert (=> b!7636674 (= res!3058703 lt!2659946)))

(declare-fun b!7636675 () Bool)

(declare-fun res!3058702 () Bool)

(assert (=> b!7636675 (=> (not res!3058702) (not e!4539657))))

(assert (=> b!7636675 (= res!3058702 (isEmpty!41773 (tail!15243 lt!2659878)))))

(declare-fun b!7636676 () Bool)

(assert (=> b!7636676 (= e!4539656 (nullable!8930 (Concat!29262 (reg!20746 r!14126) r!14126)))))

(declare-fun b!7636677 () Bool)

(declare-fun res!3058700 () Bool)

(assert (=> b!7636677 (=> res!3058700 e!4539662)))

(assert (=> b!7636677 (= res!3058700 (not (isEmpty!41773 (tail!15243 lt!2659878))))))

(declare-fun b!7636678 () Bool)

(assert (=> b!7636678 (= e!4539660 e!4539658)))

(declare-fun res!3058701 () Bool)

(assert (=> b!7636678 (=> (not res!3058701) (not e!4539658))))

(assert (=> b!7636678 (= res!3058701 (not lt!2659946))))

(declare-fun b!7636679 () Bool)

(assert (=> b!7636679 (= e!4539661 (= lt!2659946 call!700917))))

(declare-fun b!7636680 () Bool)

(assert (=> b!7636680 (= e!4539657 (= (head!15703 lt!2659878) (c!1406604 (Concat!29262 (reg!20746 r!14126) r!14126))))))

(declare-fun b!7636681 () Bool)

(declare-fun res!3058699 () Bool)

(assert (=> b!7636681 (=> (not res!3058699) (not e!4539657))))

(assert (=> b!7636681 (= res!3058699 (not call!700917))))

(declare-fun bm!700912 () Bool)

(assert (=> bm!700912 (= call!700917 (isEmpty!41773 lt!2659878))))

(declare-fun d!2324720 () Bool)

(assert (=> d!2324720 e!4539661))

(declare-fun c!1406723 () Bool)

(assert (=> d!2324720 (= c!1406723 ((_ is EmptyExpr!20417) (Concat!29262 (reg!20746 r!14126) r!14126)))))

(assert (=> d!2324720 (= lt!2659946 e!4539656)))

(declare-fun c!1406724 () Bool)

(assert (=> d!2324720 (= c!1406724 (isEmpty!41773 lt!2659878))))

(assert (=> d!2324720 (validRegex!10835 (Concat!29262 (reg!20746 r!14126) r!14126))))

(assert (=> d!2324720 (= (matchR!9920 (Concat!29262 (reg!20746 r!14126) r!14126) lt!2659878) lt!2659946)))

(declare-fun b!7636682 () Bool)

(assert (=> b!7636682 (= e!4539659 (not lt!2659946))))

(assert (= (and d!2324720 c!1406724) b!7636676))

(assert (= (and d!2324720 (not c!1406724)) b!7636673))

(assert (= (and d!2324720 c!1406723) b!7636679))

(assert (= (and d!2324720 (not c!1406723)) b!7636670))

(assert (= (and b!7636670 c!1406722) b!7636682))

(assert (= (and b!7636670 (not c!1406722)) b!7636669))

(assert (= (and b!7636669 (not res!3058697)) b!7636674))

(assert (= (and b!7636674 res!3058703) b!7636681))

(assert (= (and b!7636681 res!3058699) b!7636675))

(assert (= (and b!7636675 res!3058702) b!7636680))

(assert (= (and b!7636674 (not res!3058704)) b!7636678))

(assert (= (and b!7636678 res!3058701) b!7636672))

(assert (= (and b!7636672 (not res!3058698)) b!7636677))

(assert (= (and b!7636677 (not res!3058700)) b!7636671))

(assert (= (or b!7636679 b!7636672 b!7636681) bm!700912))

(declare-fun m!8161116 () Bool)

(assert (=> b!7636676 m!8161116))

(assert (=> d!2324720 m!8161100))

(declare-fun m!8161118 () Bool)

(assert (=> d!2324720 m!8161118))

(assert (=> b!7636680 m!8161102))

(assert (=> b!7636675 m!8161104))

(assert (=> b!7636675 m!8161104))

(assert (=> b!7636675 m!8161106))

(assert (=> b!7636671 m!8161102))

(assert (=> b!7636677 m!8161104))

(assert (=> b!7636677 m!8161104))

(assert (=> b!7636677 m!8161106))

(assert (=> b!7636673 m!8161102))

(assert (=> b!7636673 m!8161102))

(declare-fun m!8161120 () Bool)

(assert (=> b!7636673 m!8161120))

(assert (=> b!7636673 m!8161104))

(assert (=> b!7636673 m!8161120))

(assert (=> b!7636673 m!8161104))

(declare-fun m!8161122 () Bool)

(assert (=> b!7636673 m!8161122))

(assert (=> bm!700912 m!8161100))

(assert (=> b!7636147 d!2324720))

(declare-fun b!7636701 () Bool)

(declare-fun e!4539678 () Bool)

(declare-fun call!700926 () Bool)

(assert (=> b!7636701 (= e!4539678 call!700926)))

(declare-fun bm!700919 () Bool)

(declare-fun call!700925 () Bool)

(declare-fun c!1406729 () Bool)

(assert (=> bm!700919 (= call!700925 (validRegex!10835 (ite c!1406729 (regOne!41347 r!14126) (regOne!41346 r!14126))))))

(declare-fun bm!700920 () Bool)

(declare-fun call!700924 () Bool)

(assert (=> bm!700920 (= call!700926 call!700924)))

(declare-fun b!7636703 () Bool)

(declare-fun e!4539681 () Bool)

(declare-fun e!4539682 () Bool)

(assert (=> b!7636703 (= e!4539681 e!4539682)))

(declare-fun c!1406730 () Bool)

(assert (=> b!7636703 (= c!1406730 ((_ is Star!20417) r!14126))))

(declare-fun b!7636704 () Bool)

(declare-fun e!4539679 () Bool)

(assert (=> b!7636704 (= e!4539682 e!4539679)))

(assert (=> b!7636704 (= c!1406729 ((_ is Union!20417) r!14126))))

(declare-fun b!7636705 () Bool)

(declare-fun e!4539677 () Bool)

(assert (=> b!7636705 (= e!4539677 call!700924)))

(declare-fun d!2324722 () Bool)

(declare-fun res!3058717 () Bool)

(assert (=> d!2324722 (=> res!3058717 e!4539681)))

(assert (=> d!2324722 (= res!3058717 ((_ is ElementMatch!20417) r!14126))))

(assert (=> d!2324722 (= (validRegex!10835 r!14126) e!4539681)))

(declare-fun b!7636702 () Bool)

(declare-fun res!3058718 () Bool)

(declare-fun e!4539680 () Bool)

(assert (=> b!7636702 (=> (not res!3058718) (not e!4539680))))

(assert (=> b!7636702 (= res!3058718 call!700925)))

(assert (=> b!7636702 (= e!4539679 e!4539680)))

(declare-fun b!7636706 () Bool)

(declare-fun e!4539683 () Bool)

(assert (=> b!7636706 (= e!4539683 e!4539678)))

(declare-fun res!3058716 () Bool)

(assert (=> b!7636706 (=> (not res!3058716) (not e!4539678))))

(assert (=> b!7636706 (= res!3058716 call!700925)))

(declare-fun bm!700921 () Bool)

(assert (=> bm!700921 (= call!700924 (validRegex!10835 (ite c!1406730 (reg!20746 r!14126) (ite c!1406729 (regTwo!41347 r!14126) (regTwo!41346 r!14126)))))))

(declare-fun b!7636707 () Bool)

(assert (=> b!7636707 (= e!4539682 e!4539677)))

(declare-fun res!3058719 () Bool)

(assert (=> b!7636707 (= res!3058719 (not (nullable!8930 (reg!20746 r!14126))))))

(assert (=> b!7636707 (=> (not res!3058719) (not e!4539677))))

(declare-fun b!7636708 () Bool)

(assert (=> b!7636708 (= e!4539680 call!700926)))

(declare-fun b!7636709 () Bool)

(declare-fun res!3058715 () Bool)

(assert (=> b!7636709 (=> res!3058715 e!4539683)))

(assert (=> b!7636709 (= res!3058715 (not ((_ is Concat!29262) r!14126)))))

(assert (=> b!7636709 (= e!4539679 e!4539683)))

(assert (= (and d!2324722 (not res!3058717)) b!7636703))

(assert (= (and b!7636703 c!1406730) b!7636707))

(assert (= (and b!7636703 (not c!1406730)) b!7636704))

(assert (= (and b!7636707 res!3058719) b!7636705))

(assert (= (and b!7636704 c!1406729) b!7636702))

(assert (= (and b!7636704 (not c!1406729)) b!7636709))

(assert (= (and b!7636702 res!3058718) b!7636708))

(assert (= (and b!7636709 (not res!3058715)) b!7636706))

(assert (= (and b!7636706 res!3058716) b!7636701))

(assert (= (or b!7636702 b!7636706) bm!700919))

(assert (= (or b!7636708 b!7636701) bm!700920))

(assert (= (or b!7636705 bm!700920) bm!700921))

(declare-fun m!8161124 () Bool)

(assert (=> bm!700919 m!8161124))

(declare-fun m!8161126 () Bool)

(assert (=> bm!700921 m!8161126))

(assert (=> b!7636707 m!8160782))

(assert (=> start!735204 d!2324722))

(assert (=> b!7636152 d!2324704))

(declare-fun d!2324724 () Bool)

(declare-fun isEmpty!41775 (Option!17490) Bool)

(assert (=> d!2324724 (= (isDefined!14106 lt!2659879) (not (isEmpty!41775 lt!2659879)))))

(declare-fun bs!1944335 () Bool)

(assert (= bs!1944335 d!2324724))

(declare-fun m!8161128 () Bool)

(assert (=> bs!1944335 m!8161128))

(assert (=> b!7636152 d!2324724))

(declare-fun b!7636728 () Bool)

(declare-fun e!4539698 () Bool)

(declare-fun lt!2659955 () Option!17490)

(assert (=> b!7636728 (= e!4539698 (not (isDefined!14106 lt!2659955)))))

(declare-fun b!7636729 () Bool)

(declare-fun e!4539696 () Option!17490)

(declare-fun e!4539694 () Option!17490)

(assert (=> b!7636729 (= e!4539696 e!4539694)))

(declare-fun c!1406736 () Bool)

(assert (=> b!7636729 (= c!1406736 ((_ is Nil!73144) s!9605))))

(declare-fun b!7636730 () Bool)

(declare-fun e!4539697 () Bool)

(assert (=> b!7636730 (= e!4539697 (matchR!9920 r!14126 s!9605))))

(declare-fun b!7636731 () Bool)

(assert (=> b!7636731 (= e!4539696 (Some!17489 (tuple2!69393 Nil!73144 s!9605)))))

(declare-fun b!7636732 () Bool)

(assert (=> b!7636732 (= e!4539694 None!17489)))

(declare-fun b!7636734 () Bool)

(declare-fun res!3058732 () Bool)

(declare-fun e!4539695 () Bool)

(assert (=> b!7636734 (=> (not res!3058732) (not e!4539695))))

(assert (=> b!7636734 (= res!3058732 (matchR!9920 r!14126 (_2!37999 (get!25890 lt!2659955))))))

(declare-fun b!7636735 () Bool)

(declare-fun lt!2659954 () Unit!167816)

(declare-fun lt!2659953 () Unit!167816)

(assert (=> b!7636735 (= lt!2659954 lt!2659953)))

(assert (=> b!7636735 (= (++!17697 (++!17697 Nil!73144 (Cons!73144 (h!79592 s!9605) Nil!73144)) (t!388003 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3257 (List!73268 C!41160 List!73268 List!73268) Unit!167816)

(assert (=> b!7636735 (= lt!2659953 (lemmaMoveElementToOtherListKeepsConcatEq!3257 Nil!73144 (h!79592 s!9605) (t!388003 s!9605) s!9605))))

(assert (=> b!7636735 (= e!4539694 (findConcatSeparation!3520 (reg!20746 r!14126) r!14126 (++!17697 Nil!73144 (Cons!73144 (h!79592 s!9605) Nil!73144)) (t!388003 s!9605) s!9605))))

(declare-fun b!7636736 () Bool)

(declare-fun res!3058731 () Bool)

(assert (=> b!7636736 (=> (not res!3058731) (not e!4539695))))

(assert (=> b!7636736 (= res!3058731 (matchR!9920 (reg!20746 r!14126) (_1!37999 (get!25890 lt!2659955))))))

(declare-fun b!7636733 () Bool)

(assert (=> b!7636733 (= e!4539695 (= (++!17697 (_1!37999 (get!25890 lt!2659955)) (_2!37999 (get!25890 lt!2659955))) s!9605))))

(declare-fun d!2324726 () Bool)

(assert (=> d!2324726 e!4539698))

(declare-fun res!3058734 () Bool)

(assert (=> d!2324726 (=> res!3058734 e!4539698)))

(assert (=> d!2324726 (= res!3058734 e!4539695)))

(declare-fun res!3058733 () Bool)

(assert (=> d!2324726 (=> (not res!3058733) (not e!4539695))))

(assert (=> d!2324726 (= res!3058733 (isDefined!14106 lt!2659955))))

(assert (=> d!2324726 (= lt!2659955 e!4539696)))

(declare-fun c!1406735 () Bool)

(assert (=> d!2324726 (= c!1406735 e!4539697)))

(declare-fun res!3058730 () Bool)

(assert (=> d!2324726 (=> (not res!3058730) (not e!4539697))))

(assert (=> d!2324726 (= res!3058730 (matchR!9920 (reg!20746 r!14126) Nil!73144))))

(assert (=> d!2324726 (validRegex!10835 (reg!20746 r!14126))))

(assert (=> d!2324726 (= (findConcatSeparation!3520 (reg!20746 r!14126) r!14126 Nil!73144 s!9605 s!9605) lt!2659955)))

(assert (= (and d!2324726 res!3058730) b!7636730))

(assert (= (and d!2324726 c!1406735) b!7636731))

(assert (= (and d!2324726 (not c!1406735)) b!7636729))

(assert (= (and b!7636729 c!1406736) b!7636732))

(assert (= (and b!7636729 (not c!1406736)) b!7636735))

(assert (= (and d!2324726 res!3058733) b!7636736))

(assert (= (and b!7636736 res!3058731) b!7636734))

(assert (= (and b!7636734 res!3058732) b!7636733))

(assert (= (and d!2324726 (not res!3058734)) b!7636728))

(declare-fun m!8161130 () Bool)

(assert (=> d!2324726 m!8161130))

(declare-fun m!8161132 () Bool)

(assert (=> d!2324726 m!8161132))

(assert (=> d!2324726 m!8160836))

(declare-fun m!8161134 () Bool)

(assert (=> b!7636733 m!8161134))

(declare-fun m!8161136 () Bool)

(assert (=> b!7636733 m!8161136))

(assert (=> b!7636736 m!8161134))

(declare-fun m!8161138 () Bool)

(assert (=> b!7636736 m!8161138))

(assert (=> b!7636730 m!8160762))

(declare-fun m!8161140 () Bool)

(assert (=> b!7636735 m!8161140))

(assert (=> b!7636735 m!8161140))

(declare-fun m!8161142 () Bool)

(assert (=> b!7636735 m!8161142))

(declare-fun m!8161144 () Bool)

(assert (=> b!7636735 m!8161144))

(assert (=> b!7636735 m!8161140))

(declare-fun m!8161146 () Bool)

(assert (=> b!7636735 m!8161146))

(assert (=> b!7636728 m!8161130))

(assert (=> b!7636734 m!8161134))

(declare-fun m!8161148 () Bool)

(assert (=> b!7636734 m!8161148))

(assert (=> b!7636152 d!2324726))

(declare-fun bs!1944336 () Bool)

(declare-fun d!2324728 () Bool)

(assert (= bs!1944336 (and d!2324728 b!7636152)))

(declare-fun lambda!469429 () Int)

(assert (=> bs!1944336 (= lambda!469429 lambda!469399)))

(declare-fun bs!1944337 () Bool)

(assert (= bs!1944337 (and d!2324728 b!7636636)))

(assert (=> bs!1944337 (not (= lambda!469429 lambda!469425))))

(declare-fun bs!1944338 () Bool)

(assert (= bs!1944338 (and d!2324728 b!7636558)))

(assert (=> bs!1944338 (not (= lambda!469429 lambda!469419))))

(declare-fun bs!1944339 () Bool)

(assert (= bs!1944339 (and d!2324728 b!7636370)))

(assert (=> bs!1944339 (not (= lambda!469429 lambda!469407))))

(declare-fun bs!1944340 () Bool)

(assert (= bs!1944340 (and d!2324728 b!7636438)))

(assert (=> bs!1944340 (not (= lambda!469429 lambda!469415))))

(declare-fun bs!1944341 () Bool)

(assert (= bs!1944341 (and d!2324728 b!7636548)))

(assert (=> bs!1944341 (not (= lambda!469429 lambda!469422))))

(declare-fun bs!1944342 () Bool)

(assert (= bs!1944342 (and d!2324728 b!7636626)))

(assert (=> bs!1944342 (not (= lambda!469429 lambda!469426))))

(declare-fun bs!1944343 () Bool)

(assert (= bs!1944343 (and d!2324728 b!7636428)))

(assert (=> bs!1944343 (not (= lambda!469429 lambda!469416))))

(declare-fun bs!1944344 () Bool)

(assert (= bs!1944344 (and d!2324728 b!7636360)))

(assert (=> bs!1944344 (not (= lambda!469429 lambda!469408))))

(assert (=> d!2324728 true))

(assert (=> d!2324728 true))

(assert (=> d!2324728 true))

(assert (=> d!2324728 (= (isDefined!14106 (findConcatSeparation!3520 (reg!20746 r!14126) r!14126 Nil!73144 s!9605 s!9605)) (Exists!4571 lambda!469429))))

(declare-fun lt!2659958 () Unit!167816)

(declare-fun choose!58968 (Regex!20417 Regex!20417 List!73268) Unit!167816)

(assert (=> d!2324728 (= lt!2659958 (choose!58968 (reg!20746 r!14126) r!14126 s!9605))))

(assert (=> d!2324728 (validRegex!10835 (reg!20746 r!14126))))

(assert (=> d!2324728 (= (lemmaFindConcatSeparationEquivalentToExists!3278 (reg!20746 r!14126) r!14126 s!9605) lt!2659958)))

(declare-fun bs!1944345 () Bool)

(assert (= bs!1944345 d!2324728))

(assert (=> bs!1944345 m!8160744))

(declare-fun m!8161150 () Bool)

(assert (=> bs!1944345 m!8161150))

(assert (=> bs!1944345 m!8160744))

(declare-fun m!8161152 () Bool)

(assert (=> bs!1944345 m!8161152))

(declare-fun m!8161154 () Bool)

(assert (=> bs!1944345 m!8161154))

(assert (=> bs!1944345 m!8160836))

(assert (=> b!7636152 d!2324728))

(declare-fun b!7636745 () Bool)

(declare-fun e!4539703 () Bool)

(declare-fun tp!2229266 () Bool)

(assert (=> b!7636745 (= e!4539703 (and tp_is_empty!51189 tp!2229266))))

(assert (=> b!7636146 (= tp!2229221 e!4539703)))

(assert (= (and b!7636146 ((_ is Cons!73144) (t!388003 s!9605))) b!7636745))

(declare-fun b!7636758 () Bool)

(declare-fun e!4539706 () Bool)

(declare-fun tp!2229279 () Bool)

(assert (=> b!7636758 (= e!4539706 tp!2229279)))

(declare-fun b!7636759 () Bool)

(declare-fun tp!2229281 () Bool)

(declare-fun tp!2229278 () Bool)

(assert (=> b!7636759 (= e!4539706 (and tp!2229281 tp!2229278))))

(declare-fun b!7636756 () Bool)

(assert (=> b!7636756 (= e!4539706 tp_is_empty!51189)))

(assert (=> b!7636150 (= tp!2229225 e!4539706)))

(declare-fun b!7636757 () Bool)

(declare-fun tp!2229280 () Bool)

(declare-fun tp!2229277 () Bool)

(assert (=> b!7636757 (= e!4539706 (and tp!2229280 tp!2229277))))

(assert (= (and b!7636150 ((_ is ElementMatch!20417) (regOne!41346 r!14126))) b!7636756))

(assert (= (and b!7636150 ((_ is Concat!29262) (regOne!41346 r!14126))) b!7636757))

(assert (= (and b!7636150 ((_ is Star!20417) (regOne!41346 r!14126))) b!7636758))

(assert (= (and b!7636150 ((_ is Union!20417) (regOne!41346 r!14126))) b!7636759))

(declare-fun b!7636762 () Bool)

(declare-fun e!4539707 () Bool)

(declare-fun tp!2229284 () Bool)

(assert (=> b!7636762 (= e!4539707 tp!2229284)))

(declare-fun b!7636763 () Bool)

(declare-fun tp!2229286 () Bool)

(declare-fun tp!2229283 () Bool)

(assert (=> b!7636763 (= e!4539707 (and tp!2229286 tp!2229283))))

(declare-fun b!7636760 () Bool)

(assert (=> b!7636760 (= e!4539707 tp_is_empty!51189)))

(assert (=> b!7636150 (= tp!2229220 e!4539707)))

(declare-fun b!7636761 () Bool)

(declare-fun tp!2229285 () Bool)

(declare-fun tp!2229282 () Bool)

(assert (=> b!7636761 (= e!4539707 (and tp!2229285 tp!2229282))))

(assert (= (and b!7636150 ((_ is ElementMatch!20417) (regTwo!41346 r!14126))) b!7636760))

(assert (= (and b!7636150 ((_ is Concat!29262) (regTwo!41346 r!14126))) b!7636761))

(assert (= (and b!7636150 ((_ is Star!20417) (regTwo!41346 r!14126))) b!7636762))

(assert (= (and b!7636150 ((_ is Union!20417) (regTwo!41346 r!14126))) b!7636763))

(declare-fun b!7636766 () Bool)

(declare-fun e!4539708 () Bool)

(declare-fun tp!2229289 () Bool)

(assert (=> b!7636766 (= e!4539708 tp!2229289)))

(declare-fun b!7636767 () Bool)

(declare-fun tp!2229291 () Bool)

(declare-fun tp!2229288 () Bool)

(assert (=> b!7636767 (= e!4539708 (and tp!2229291 tp!2229288))))

(declare-fun b!7636764 () Bool)

(assert (=> b!7636764 (= e!4539708 tp_is_empty!51189)))

(assert (=> b!7636144 (= tp!2229224 e!4539708)))

(declare-fun b!7636765 () Bool)

(declare-fun tp!2229290 () Bool)

(declare-fun tp!2229287 () Bool)

(assert (=> b!7636765 (= e!4539708 (and tp!2229290 tp!2229287))))

(assert (= (and b!7636144 ((_ is ElementMatch!20417) (reg!20746 r!14126))) b!7636764))

(assert (= (and b!7636144 ((_ is Concat!29262) (reg!20746 r!14126))) b!7636765))

(assert (= (and b!7636144 ((_ is Star!20417) (reg!20746 r!14126))) b!7636766))

(assert (= (and b!7636144 ((_ is Union!20417) (reg!20746 r!14126))) b!7636767))

(declare-fun b!7636770 () Bool)

(declare-fun e!4539709 () Bool)

(declare-fun tp!2229294 () Bool)

(assert (=> b!7636770 (= e!4539709 tp!2229294)))

(declare-fun b!7636771 () Bool)

(declare-fun tp!2229296 () Bool)

(declare-fun tp!2229293 () Bool)

(assert (=> b!7636771 (= e!4539709 (and tp!2229296 tp!2229293))))

(declare-fun b!7636768 () Bool)

(assert (=> b!7636768 (= e!4539709 tp_is_empty!51189)))

(assert (=> b!7636154 (= tp!2229222 e!4539709)))

(declare-fun b!7636769 () Bool)

(declare-fun tp!2229295 () Bool)

(declare-fun tp!2229292 () Bool)

(assert (=> b!7636769 (= e!4539709 (and tp!2229295 tp!2229292))))

(assert (= (and b!7636154 ((_ is ElementMatch!20417) (regOne!41347 r!14126))) b!7636768))

(assert (= (and b!7636154 ((_ is Concat!29262) (regOne!41347 r!14126))) b!7636769))

(assert (= (and b!7636154 ((_ is Star!20417) (regOne!41347 r!14126))) b!7636770))

(assert (= (and b!7636154 ((_ is Union!20417) (regOne!41347 r!14126))) b!7636771))

(declare-fun b!7636774 () Bool)

(declare-fun e!4539710 () Bool)

(declare-fun tp!2229299 () Bool)

(assert (=> b!7636774 (= e!4539710 tp!2229299)))

(declare-fun b!7636775 () Bool)

(declare-fun tp!2229301 () Bool)

(declare-fun tp!2229298 () Bool)

(assert (=> b!7636775 (= e!4539710 (and tp!2229301 tp!2229298))))

(declare-fun b!7636772 () Bool)

(assert (=> b!7636772 (= e!4539710 tp_is_empty!51189)))

(assert (=> b!7636154 (= tp!2229223 e!4539710)))

(declare-fun b!7636773 () Bool)

(declare-fun tp!2229300 () Bool)

(declare-fun tp!2229297 () Bool)

(assert (=> b!7636773 (= e!4539710 (and tp!2229300 tp!2229297))))

(assert (= (and b!7636154 ((_ is ElementMatch!20417) (regTwo!41347 r!14126))) b!7636772))

(assert (= (and b!7636154 ((_ is Concat!29262) (regTwo!41347 r!14126))) b!7636773))

(assert (= (and b!7636154 ((_ is Star!20417) (regTwo!41347 r!14126))) b!7636774))

(assert (= (and b!7636154 ((_ is Union!20417) (regTwo!41347 r!14126))) b!7636775))

(declare-fun b_lambda!289081 () Bool)

(assert (= b_lambda!289075 (or b!7636152 b_lambda!289081)))

(declare-fun bs!1944346 () Bool)

(declare-fun d!2324730 () Bool)

(assert (= bs!1944346 (and d!2324730 b!7636152)))

(declare-fun res!3058739 () Bool)

(declare-fun e!4539711 () Bool)

(assert (=> bs!1944346 (=> (not res!3058739) (not e!4539711))))

(assert (=> bs!1944346 (= res!3058739 (= (++!17697 (_1!37999 lt!2659920) (_2!37999 lt!2659920)) s!9605))))

(assert (=> bs!1944346 (= (dynLambda!29928 lambda!469399 lt!2659920) e!4539711)))

(declare-fun b!7636776 () Bool)

(declare-fun res!3058740 () Bool)

(assert (=> b!7636776 (=> (not res!3058740) (not e!4539711))))

(assert (=> b!7636776 (= res!3058740 (matchR!9920 (reg!20746 r!14126) (_1!37999 lt!2659920)))))

(declare-fun b!7636777 () Bool)

(assert (=> b!7636777 (= e!4539711 (matchR!9920 r!14126 (_2!37999 lt!2659920)))))

(assert (= (and bs!1944346 res!3058739) b!7636776))

(assert (= (and b!7636776 res!3058740) b!7636777))

(declare-fun m!8161156 () Bool)

(assert (=> bs!1944346 m!8161156))

(declare-fun m!8161158 () Bool)

(assert (=> b!7636776 m!8161158))

(declare-fun m!8161160 () Bool)

(assert (=> b!7636777 m!8161160))

(assert (=> d!2324664 d!2324730))

(check-sat (not b_lambda!289081) (not b!7636767) (not d!2324712) (not bm!700912) (not d!2324700) (not b!7636273) (not d!2324726) (not b!7636673) tp_is_empty!51189 (not b!7636671) (not b!7636770) (not b!7636471) (not b!7636776) (not d!2324624) (not bm!700899) (not bm!700908) (not b!7636762) (not b!7636436) (not d!2324680) (not d!2324658) (not bm!700896) (not b!7636758) (not b!7636592) (not b!7636466) (not bm!700903) (not b!7636675) (not b!7636666) (not b!7636659) (not b!7636377) (not b!7636730) (not d!2324656) (not b!7636761) (not d!2324702) (not b!7636379) (not b!7636736) (not d!2324720) (not bm!700884) (not b!7636517) (not b!7636663) (not bm!700911) (not b!7636733) (not bm!700909) (not b!7636774) (not b!7636470) (not b!7636375) (not b!7636513) (not b!7636757) (not b!7636769) (not bm!700902) (not b!7636662) (not d!2324698) (not b!7636632) (not b!7636766) (not d!2324660) (not b!7636587) (not b!7636589) (not b!7636777) (not b!7636275) (not d!2324674) (not bm!700882) (not b!7636583) (not d!2324662) (not d!2324704) (not b!7636771) (not b!7636735) (not b!7636585) (not b!7636680) (not b!7636652) (not b!7636382) (not b!7636728) (not b!7636765) (not d!2324714) (not b!7636775) (not b!7636434) (not b!7636745) (not b!7636657) (not b!7636276) (not b!7636634) (not b!7636378) (not b!7636475) (not b!7636707) (not b!7636366) (not b!7636676) (not b!7636271) (not b!7636472) (not d!2324724) (not b!7636468) (not b!7636588) (not bm!700919) (not bs!1944346) (not b!7636763) (not bm!700892) (not bm!700883) (not bm!700876) (not b!7636773) (not d!2324664) (not bm!700891) (not b!7636514) (not b!7636556) (not b!7636677) (not b!7636512) (not d!2324718) (not b!7636653) (not b!7636734) (not d!2324728) (not b!7636373) (not b!7636368) (not b!7636280) (not bm!700910) (not b!7636508) (not b!7636661) (not d!2324716) (not bm!700921) (not b!7636554) (not b!7636277) (not b!7636759) (not b!7636510))
(check-sat)
