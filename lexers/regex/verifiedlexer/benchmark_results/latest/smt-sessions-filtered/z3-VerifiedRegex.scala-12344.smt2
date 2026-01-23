; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!692056 () Bool)

(assert start!692056)

(declare-fun b!7109934 () Bool)

(declare-fun e!4272908 () Bool)

(declare-fun e!4272903 () Bool)

(assert (=> b!7109934 (= e!4272908 e!4272903)))

(declare-fun res!2901675 () Bool)

(assert (=> b!7109934 (=> (not res!2901675) (not e!4272903))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36132 0))(
  ( (C!36133 (val!27772 Int)) )
))
(declare-datatypes ((Regex!17931 0))(
  ( (ElementMatch!17931 (c!1326832 C!36132)) (Concat!26776 (regOne!36374 Regex!17931) (regTwo!36374 Regex!17931)) (EmptyExpr!17931) (Star!17931 (reg!18260 Regex!17931)) (EmptyLang!17931) (Union!17931 (regOne!36375 Regex!17931) (regTwo!36375 Regex!17931)) )
))
(declare-datatypes ((List!68892 0))(
  ( (Nil!68768) (Cons!68768 (h!75216 Regex!17931) (t!382719 List!68892)) )
))
(declare-datatypes ((Context!13850 0))(
  ( (Context!13851 (exprs!7425 List!68892)) )
))
(declare-fun lt!2559598 () (InoxSet Context!13850))

(declare-fun a!1901 () C!36132)

(declare-fun lt!2559603 () (InoxSet Context!13850))

(declare-fun lt!2559600 () Context!13850)

(declare-fun r!11554 () Regex!17931)

(declare-fun derivationStepZipperDown!2446 (Regex!17931 Context!13850 C!36132) (InoxSet Context!13850))

(assert (=> b!7109934 (= res!2901675 (= (derivationStepZipperDown!2446 r!11554 lt!2559600 a!1901) ((_ map or) lt!2559598 lt!2559603)))))

(assert (=> b!7109934 (= lt!2559603 (derivationStepZipperDown!2446 (regTwo!36374 r!11554) lt!2559600 a!1901))))

(declare-fun lt!2559607 () List!68892)

(declare-fun $colon$colon!2789 (List!68892 Regex!17931) List!68892)

(assert (=> b!7109934 (= lt!2559598 (derivationStepZipperDown!2446 (regOne!36374 r!11554) (Context!13851 ($colon$colon!2789 lt!2559607 (regTwo!36374 r!11554))) a!1901))))

(declare-fun b!7109935 () Bool)

(declare-fun lt!2559609 () Context!13850)

(declare-fun inv!87690 (Context!13850) Bool)

(assert (=> b!7109935 (= e!4272903 (not (inv!87690 lt!2559609)))))

(declare-fun c!9994 () Context!13850)

(declare-fun auxCtx!45 () Context!13850)

(declare-fun appendTo!930 ((InoxSet Context!13850) Context!13850) (InoxSet Context!13850))

(assert (=> b!7109935 (= lt!2559603 (appendTo!930 (derivationStepZipperDown!2446 (regTwo!36374 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-datatypes ((Unit!162533 0))(
  ( (Unit!162534) )
))
(declare-fun lt!2559606 () Unit!162533)

(declare-fun lambda!431847 () Int)

(declare-fun lemmaConcatPreservesForall!1216 (List!68892 List!68892 Int) Unit!162533)

(assert (=> b!7109935 (= lt!2559606 (lemmaConcatPreservesForall!1216 (exprs!7425 c!9994) (exprs!7425 auxCtx!45) lambda!431847))))

(declare-fun lt!2559601 () Unit!162533)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!228 (Context!13850 Regex!17931 C!36132 Context!13850) Unit!162533)

(assert (=> b!7109935 (= lt!2559601 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!228 c!9994 (regTwo!36374 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2559608 () List!68892)

(declare-fun ++!16083 (List!68892 List!68892) List!68892)

(assert (=> b!7109935 (= (derivationStepZipperDown!2446 (regOne!36374 r!11554) (Context!13851 (++!16083 lt!2559608 (exprs!7425 auxCtx!45))) a!1901) (appendTo!930 (derivationStepZipperDown!2446 (regOne!36374 r!11554) lt!2559609 a!1901) auxCtx!45))))

(declare-fun lt!2559599 () Unit!162533)

(assert (=> b!7109935 (= lt!2559599 (lemmaConcatPreservesForall!1216 lt!2559608 (exprs!7425 auxCtx!45) lambda!431847))))

(declare-fun lt!2559604 () Unit!162533)

(assert (=> b!7109935 (= lt!2559604 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!228 lt!2559609 (regOne!36374 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7109935 (= lt!2559609 (Context!13851 lt!2559608))))

(assert (=> b!7109935 (= lt!2559608 ($colon$colon!2789 (exprs!7425 c!9994) (regTwo!36374 r!11554)))))

(declare-fun b!7109936 () Bool)

(declare-fun e!4272906 () Bool)

(assert (=> b!7109936 (= e!4272906 e!4272908)))

(declare-fun res!2901678 () Bool)

(assert (=> b!7109936 (=> (not res!2901678) (not e!4272908))))

(declare-fun validRegex!9204 (Regex!17931) Bool)

(assert (=> b!7109936 (= res!2901678 (validRegex!9204 (regTwo!36374 r!11554)))))

(declare-fun lt!2559602 () Unit!162533)

(assert (=> b!7109936 (= lt!2559602 (lemmaConcatPreservesForall!1216 (exprs!7425 c!9994) (exprs!7425 auxCtx!45) lambda!431847))))

(assert (=> b!7109936 (= lt!2559600 (Context!13851 lt!2559607))))

(assert (=> b!7109936 (= lt!2559607 (++!16083 (exprs!7425 c!9994) (exprs!7425 auxCtx!45)))))

(declare-fun lt!2559610 () Unit!162533)

(assert (=> b!7109936 (= lt!2559610 (lemmaConcatPreservesForall!1216 (exprs!7425 c!9994) (exprs!7425 auxCtx!45) lambda!431847))))

(declare-fun lt!2559605 () Unit!162533)

(assert (=> b!7109936 (= lt!2559605 (lemmaConcatPreservesForall!1216 (exprs!7425 c!9994) (exprs!7425 auxCtx!45) lambda!431847))))

(declare-fun b!7109937 () Bool)

(declare-fun e!4272905 () Bool)

(declare-fun tp_is_empty!45095 () Bool)

(assert (=> b!7109937 (= e!4272905 tp_is_empty!45095)))

(declare-fun b!7109938 () Bool)

(declare-fun e!4272907 () Bool)

(declare-fun tp!1955854 () Bool)

(assert (=> b!7109938 (= e!4272907 tp!1955854)))

(declare-fun b!7109939 () Bool)

(declare-fun tp!1955857 () Bool)

(declare-fun tp!1955858 () Bool)

(assert (=> b!7109939 (= e!4272905 (and tp!1955857 tp!1955858))))

(declare-fun b!7109940 () Bool)

(declare-fun res!2901674 () Bool)

(assert (=> b!7109940 (=> (not res!2901674) (not e!4272906))))

(get-info :version)

(assert (=> b!7109940 (= res!2901674 (and (or (not ((_ is ElementMatch!17931) r!11554)) (not (= (c!1326832 r!11554) a!1901))) (not ((_ is Union!17931) r!11554)) ((_ is Concat!26776) r!11554)))))

(declare-fun b!7109941 () Bool)

(declare-fun res!2901677 () Bool)

(assert (=> b!7109941 (=> (not res!2901677) (not e!4272906))))

(declare-fun nullable!7568 (Regex!17931) Bool)

(assert (=> b!7109941 (= res!2901677 (nullable!7568 (regOne!36374 r!11554)))))

(declare-fun res!2901676 () Bool)

(assert (=> start!692056 (=> (not res!2901676) (not e!4272906))))

(assert (=> start!692056 (= res!2901676 (validRegex!9204 r!11554))))

(assert (=> start!692056 e!4272906))

(assert (=> start!692056 e!4272905))

(assert (=> start!692056 tp_is_empty!45095))

(assert (=> start!692056 (and (inv!87690 c!9994) e!4272907)))

(declare-fun e!4272904 () Bool)

(assert (=> start!692056 (and (inv!87690 auxCtx!45) e!4272904)))

(declare-fun b!7109942 () Bool)

(declare-fun tp!1955852 () Bool)

(assert (=> b!7109942 (= e!4272905 tp!1955852)))

(declare-fun b!7109943 () Bool)

(declare-fun tp!1955855 () Bool)

(assert (=> b!7109943 (= e!4272904 tp!1955855)))

(declare-fun b!7109944 () Bool)

(declare-fun tp!1955853 () Bool)

(declare-fun tp!1955856 () Bool)

(assert (=> b!7109944 (= e!4272905 (and tp!1955853 tp!1955856))))

(assert (= (and start!692056 res!2901676) b!7109940))

(assert (= (and b!7109940 res!2901674) b!7109941))

(assert (= (and b!7109941 res!2901677) b!7109936))

(assert (= (and b!7109936 res!2901678) b!7109934))

(assert (= (and b!7109934 res!2901675) b!7109935))

(assert (= (and start!692056 ((_ is ElementMatch!17931) r!11554)) b!7109937))

(assert (= (and start!692056 ((_ is Concat!26776) r!11554)) b!7109944))

(assert (= (and start!692056 ((_ is Star!17931) r!11554)) b!7109942))

(assert (= (and start!692056 ((_ is Union!17931) r!11554)) b!7109939))

(assert (= start!692056 b!7109938))

(assert (= start!692056 b!7109943))

(declare-fun m!7831312 () Bool)

(assert (=> b!7109941 m!7831312))

(declare-fun m!7831314 () Bool)

(assert (=> b!7109935 m!7831314))

(declare-fun m!7831316 () Bool)

(assert (=> b!7109935 m!7831316))

(declare-fun m!7831318 () Bool)

(assert (=> b!7109935 m!7831318))

(assert (=> b!7109935 m!7831318))

(declare-fun m!7831320 () Bool)

(assert (=> b!7109935 m!7831320))

(declare-fun m!7831322 () Bool)

(assert (=> b!7109935 m!7831322))

(declare-fun m!7831324 () Bool)

(assert (=> b!7109935 m!7831324))

(declare-fun m!7831326 () Bool)

(assert (=> b!7109935 m!7831326))

(declare-fun m!7831328 () Bool)

(assert (=> b!7109935 m!7831328))

(declare-fun m!7831330 () Bool)

(assert (=> b!7109935 m!7831330))

(declare-fun m!7831332 () Bool)

(assert (=> b!7109935 m!7831332))

(declare-fun m!7831334 () Bool)

(assert (=> b!7109935 m!7831334))

(assert (=> b!7109935 m!7831326))

(declare-fun m!7831336 () Bool)

(assert (=> b!7109935 m!7831336))

(declare-fun m!7831338 () Bool)

(assert (=> start!692056 m!7831338))

(declare-fun m!7831340 () Bool)

(assert (=> start!692056 m!7831340))

(declare-fun m!7831342 () Bool)

(assert (=> start!692056 m!7831342))

(declare-fun m!7831344 () Bool)

(assert (=> b!7109934 m!7831344))

(declare-fun m!7831346 () Bool)

(assert (=> b!7109934 m!7831346))

(declare-fun m!7831348 () Bool)

(assert (=> b!7109934 m!7831348))

(declare-fun m!7831350 () Bool)

(assert (=> b!7109934 m!7831350))

(assert (=> b!7109936 m!7831334))

(assert (=> b!7109936 m!7831334))

(declare-fun m!7831352 () Bool)

(assert (=> b!7109936 m!7831352))

(declare-fun m!7831354 () Bool)

(assert (=> b!7109936 m!7831354))

(assert (=> b!7109936 m!7831334))

(check-sat (not b!7109939) (not b!7109943) (not b!7109944) (not b!7109934) (not start!692056) (not b!7109938) (not b!7109941) (not b!7109935) (not b!7109942) tp_is_empty!45095 (not b!7109936))
(check-sat)
(get-model)

(declare-fun d!2219987 () Bool)

(declare-fun nullableFct!2921 (Regex!17931) Bool)

(assert (=> d!2219987 (= (nullable!7568 (regOne!36374 r!11554)) (nullableFct!2921 (regOne!36374 r!11554)))))

(declare-fun bs!1884988 () Bool)

(assert (= bs!1884988 d!2219987))

(declare-fun m!7831368 () Bool)

(assert (=> bs!1884988 m!7831368))

(assert (=> b!7109941 d!2219987))

(declare-fun b!7110002 () Bool)

(declare-fun e!4272950 () Bool)

(declare-fun e!4272955 () Bool)

(assert (=> b!7110002 (= e!4272950 e!4272955)))

(declare-fun res!2901711 () Bool)

(assert (=> b!7110002 (= res!2901711 (not (nullable!7568 (reg!18260 r!11554))))))

(assert (=> b!7110002 (=> (not res!2901711) (not e!4272955))))

(declare-fun b!7110003 () Bool)

(declare-fun e!4272952 () Bool)

(assert (=> b!7110003 (= e!4272952 e!4272950)))

(declare-fun c!1326847 () Bool)

(assert (=> b!7110003 (= c!1326847 ((_ is Star!17931) r!11554))))

(declare-fun b!7110004 () Bool)

(declare-fun res!2901714 () Bool)

(declare-fun e!4272956 () Bool)

(assert (=> b!7110004 (=> (not res!2901714) (not e!4272956))))

(declare-fun call!648577 () Bool)

(assert (=> b!7110004 (= res!2901714 call!648577)))

(declare-fun e!4272951 () Bool)

(assert (=> b!7110004 (= e!4272951 e!4272956)))

(declare-fun b!7110005 () Bool)

(declare-fun call!648575 () Bool)

(assert (=> b!7110005 (= e!4272956 call!648575)))

(declare-fun b!7110006 () Bool)

(declare-fun e!4272954 () Bool)

(declare-fun e!4272953 () Bool)

(assert (=> b!7110006 (= e!4272954 e!4272953)))

(declare-fun res!2901712 () Bool)

(assert (=> b!7110006 (=> (not res!2901712) (not e!4272953))))

(assert (=> b!7110006 (= res!2901712 call!648575)))

(declare-fun b!7110007 () Bool)

(assert (=> b!7110007 (= e!4272950 e!4272951)))

(declare-fun c!1326846 () Bool)

(assert (=> b!7110007 (= c!1326846 ((_ is Union!17931) r!11554))))

(declare-fun bm!648570 () Bool)

(assert (=> bm!648570 (= call!648577 (validRegex!9204 (ite c!1326846 (regOne!36375 r!11554) (regTwo!36374 r!11554))))))

(declare-fun b!7110008 () Bool)

(assert (=> b!7110008 (= e!4272953 call!648577)))

(declare-fun d!2219991 () Bool)

(declare-fun res!2901713 () Bool)

(assert (=> d!2219991 (=> res!2901713 e!4272952)))

(assert (=> d!2219991 (= res!2901713 ((_ is ElementMatch!17931) r!11554))))

(assert (=> d!2219991 (= (validRegex!9204 r!11554) e!4272952)))

(declare-fun call!648576 () Bool)

(declare-fun bm!648571 () Bool)

(assert (=> bm!648571 (= call!648576 (validRegex!9204 (ite c!1326847 (reg!18260 r!11554) (ite c!1326846 (regTwo!36375 r!11554) (regOne!36374 r!11554)))))))

(declare-fun bm!648572 () Bool)

(assert (=> bm!648572 (= call!648575 call!648576)))

(declare-fun b!7110009 () Bool)

(assert (=> b!7110009 (= e!4272955 call!648576)))

(declare-fun b!7110010 () Bool)

(declare-fun res!2901710 () Bool)

(assert (=> b!7110010 (=> res!2901710 e!4272954)))

(assert (=> b!7110010 (= res!2901710 (not ((_ is Concat!26776) r!11554)))))

(assert (=> b!7110010 (= e!4272951 e!4272954)))

(assert (= (and d!2219991 (not res!2901713)) b!7110003))

(assert (= (and b!7110003 c!1326847) b!7110002))

(assert (= (and b!7110003 (not c!1326847)) b!7110007))

(assert (= (and b!7110002 res!2901711) b!7110009))

(assert (= (and b!7110007 c!1326846) b!7110004))

(assert (= (and b!7110007 (not c!1326846)) b!7110010))

(assert (= (and b!7110004 res!2901714) b!7110005))

(assert (= (and b!7110010 (not res!2901710)) b!7110006))

(assert (= (and b!7110006 res!2901712) b!7110008))

(assert (= (or b!7110004 b!7110008) bm!648570))

(assert (= (or b!7110005 b!7110006) bm!648572))

(assert (= (or b!7110009 bm!648572) bm!648571))

(declare-fun m!7831384 () Bool)

(assert (=> b!7110002 m!7831384))

(declare-fun m!7831386 () Bool)

(assert (=> bm!648570 m!7831386))

(declare-fun m!7831388 () Bool)

(assert (=> bm!648571 m!7831388))

(assert (=> start!692056 d!2219991))

(declare-fun bs!1884989 () Bool)

(declare-fun d!2219995 () Bool)

(assert (= bs!1884989 (and d!2219995 b!7109936)))

(declare-fun lambda!431850 () Int)

(assert (=> bs!1884989 (= lambda!431850 lambda!431847)))

(declare-fun forall!16831 (List!68892 Int) Bool)

(assert (=> d!2219995 (= (inv!87690 c!9994) (forall!16831 (exprs!7425 c!9994) lambda!431850))))

(declare-fun bs!1884990 () Bool)

(assert (= bs!1884990 d!2219995))

(declare-fun m!7831390 () Bool)

(assert (=> bs!1884990 m!7831390))

(assert (=> start!692056 d!2219995))

(declare-fun bs!1884991 () Bool)

(declare-fun d!2219997 () Bool)

(assert (= bs!1884991 (and d!2219997 b!7109936)))

(declare-fun lambda!431851 () Int)

(assert (=> bs!1884991 (= lambda!431851 lambda!431847)))

(declare-fun bs!1884992 () Bool)

(assert (= bs!1884992 (and d!2219997 d!2219995)))

(assert (=> bs!1884992 (= lambda!431851 lambda!431850)))

(assert (=> d!2219997 (= (inv!87690 auxCtx!45) (forall!16831 (exprs!7425 auxCtx!45) lambda!431851))))

(declare-fun bs!1884993 () Bool)

(assert (= bs!1884993 d!2219997))

(declare-fun m!7831392 () Bool)

(assert (=> bs!1884993 m!7831392))

(assert (=> start!692056 d!2219997))

(declare-fun b!7110033 () Bool)

(declare-fun e!4272969 () Bool)

(declare-fun e!4272974 () Bool)

(assert (=> b!7110033 (= e!4272969 e!4272974)))

(declare-fun res!2901718 () Bool)

(assert (=> b!7110033 (= res!2901718 (not (nullable!7568 (reg!18260 (regTwo!36374 r!11554)))))))

(assert (=> b!7110033 (=> (not res!2901718) (not e!4272974))))

(declare-fun b!7110034 () Bool)

(declare-fun e!4272971 () Bool)

(assert (=> b!7110034 (= e!4272971 e!4272969)))

(declare-fun c!1326859 () Bool)

(assert (=> b!7110034 (= c!1326859 ((_ is Star!17931) (regTwo!36374 r!11554)))))

(declare-fun b!7110035 () Bool)

(declare-fun res!2901721 () Bool)

(declare-fun e!4272975 () Bool)

(assert (=> b!7110035 (=> (not res!2901721) (not e!4272975))))

(declare-fun call!648586 () Bool)

(assert (=> b!7110035 (= res!2901721 call!648586)))

(declare-fun e!4272970 () Bool)

(assert (=> b!7110035 (= e!4272970 e!4272975)))

(declare-fun b!7110036 () Bool)

(declare-fun call!648584 () Bool)

(assert (=> b!7110036 (= e!4272975 call!648584)))

(declare-fun b!7110037 () Bool)

(declare-fun e!4272973 () Bool)

(declare-fun e!4272972 () Bool)

(assert (=> b!7110037 (= e!4272973 e!4272972)))

(declare-fun res!2901719 () Bool)

(assert (=> b!7110037 (=> (not res!2901719) (not e!4272972))))

(assert (=> b!7110037 (= res!2901719 call!648584)))

(declare-fun b!7110038 () Bool)

(assert (=> b!7110038 (= e!4272969 e!4272970)))

(declare-fun c!1326858 () Bool)

(assert (=> b!7110038 (= c!1326858 ((_ is Union!17931) (regTwo!36374 r!11554)))))

(declare-fun bm!648579 () Bool)

(assert (=> bm!648579 (= call!648586 (validRegex!9204 (ite c!1326858 (regOne!36375 (regTwo!36374 r!11554)) (regTwo!36374 (regTwo!36374 r!11554)))))))

(declare-fun b!7110039 () Bool)

(assert (=> b!7110039 (= e!4272972 call!648586)))

(declare-fun d!2219999 () Bool)

(declare-fun res!2901720 () Bool)

(assert (=> d!2219999 (=> res!2901720 e!4272971)))

(assert (=> d!2219999 (= res!2901720 ((_ is ElementMatch!17931) (regTwo!36374 r!11554)))))

(assert (=> d!2219999 (= (validRegex!9204 (regTwo!36374 r!11554)) e!4272971)))

(declare-fun call!648585 () Bool)

(declare-fun bm!648580 () Bool)

(assert (=> bm!648580 (= call!648585 (validRegex!9204 (ite c!1326859 (reg!18260 (regTwo!36374 r!11554)) (ite c!1326858 (regTwo!36375 (regTwo!36374 r!11554)) (regOne!36374 (regTwo!36374 r!11554))))))))

(declare-fun bm!648581 () Bool)

(assert (=> bm!648581 (= call!648584 call!648585)))

(declare-fun b!7110040 () Bool)

(assert (=> b!7110040 (= e!4272974 call!648585)))

(declare-fun b!7110041 () Bool)

(declare-fun res!2901717 () Bool)

(assert (=> b!7110041 (=> res!2901717 e!4272973)))

(assert (=> b!7110041 (= res!2901717 (not ((_ is Concat!26776) (regTwo!36374 r!11554))))))

(assert (=> b!7110041 (= e!4272970 e!4272973)))

(assert (= (and d!2219999 (not res!2901720)) b!7110034))

(assert (= (and b!7110034 c!1326859) b!7110033))

(assert (= (and b!7110034 (not c!1326859)) b!7110038))

(assert (= (and b!7110033 res!2901718) b!7110040))

(assert (= (and b!7110038 c!1326858) b!7110035))

(assert (= (and b!7110038 (not c!1326858)) b!7110041))

(assert (= (and b!7110035 res!2901721) b!7110036))

(assert (= (and b!7110041 (not res!2901717)) b!7110037))

(assert (= (and b!7110037 res!2901719) b!7110039))

(assert (= (or b!7110035 b!7110039) bm!648579))

(assert (= (or b!7110036 b!7110037) bm!648581))

(assert (= (or b!7110040 bm!648581) bm!648580))

(declare-fun m!7831394 () Bool)

(assert (=> b!7110033 m!7831394))

(declare-fun m!7831396 () Bool)

(assert (=> bm!648579 m!7831396))

(declare-fun m!7831398 () Bool)

(assert (=> bm!648580 m!7831398))

(assert (=> b!7109936 d!2219999))

(declare-fun d!2220001 () Bool)

(assert (=> d!2220001 (forall!16831 (++!16083 (exprs!7425 c!9994) (exprs!7425 auxCtx!45)) lambda!431847)))

(declare-fun lt!2559619 () Unit!162533)

(declare-fun choose!54841 (List!68892 List!68892 Int) Unit!162533)

(assert (=> d!2220001 (= lt!2559619 (choose!54841 (exprs!7425 c!9994) (exprs!7425 auxCtx!45) lambda!431847))))

(assert (=> d!2220001 (forall!16831 (exprs!7425 c!9994) lambda!431847)))

(assert (=> d!2220001 (= (lemmaConcatPreservesForall!1216 (exprs!7425 c!9994) (exprs!7425 auxCtx!45) lambda!431847) lt!2559619)))

(declare-fun bs!1884994 () Bool)

(assert (= bs!1884994 d!2220001))

(assert (=> bs!1884994 m!7831352))

(assert (=> bs!1884994 m!7831352))

(declare-fun m!7831400 () Bool)

(assert (=> bs!1884994 m!7831400))

(declare-fun m!7831402 () Bool)

(assert (=> bs!1884994 m!7831402))

(declare-fun m!7831404 () Bool)

(assert (=> bs!1884994 m!7831404))

(assert (=> b!7109936 d!2220001))

(declare-fun b!7110084 () Bool)

(declare-fun e!4272998 () List!68892)

(assert (=> b!7110084 (= e!4272998 (Cons!68768 (h!75216 (exprs!7425 c!9994)) (++!16083 (t!382719 (exprs!7425 c!9994)) (exprs!7425 auxCtx!45))))))

(declare-fun b!7110085 () Bool)

(declare-fun res!2901729 () Bool)

(declare-fun e!4272999 () Bool)

(assert (=> b!7110085 (=> (not res!2901729) (not e!4272999))))

(declare-fun lt!2559622 () List!68892)

(declare-fun size!41391 (List!68892) Int)

(assert (=> b!7110085 (= res!2901729 (= (size!41391 lt!2559622) (+ (size!41391 (exprs!7425 c!9994)) (size!41391 (exprs!7425 auxCtx!45)))))))

(declare-fun d!2220003 () Bool)

(assert (=> d!2220003 e!4272999))

(declare-fun res!2901730 () Bool)

(assert (=> d!2220003 (=> (not res!2901730) (not e!4272999))))

(declare-fun content!14016 (List!68892) (InoxSet Regex!17931))

(assert (=> d!2220003 (= res!2901730 (= (content!14016 lt!2559622) ((_ map or) (content!14016 (exprs!7425 c!9994)) (content!14016 (exprs!7425 auxCtx!45)))))))

(assert (=> d!2220003 (= lt!2559622 e!4272998)))

(declare-fun c!1326877 () Bool)

(assert (=> d!2220003 (= c!1326877 ((_ is Nil!68768) (exprs!7425 c!9994)))))

(assert (=> d!2220003 (= (++!16083 (exprs!7425 c!9994) (exprs!7425 auxCtx!45)) lt!2559622)))

(declare-fun b!7110083 () Bool)

(assert (=> b!7110083 (= e!4272998 (exprs!7425 auxCtx!45))))

(declare-fun b!7110086 () Bool)

(assert (=> b!7110086 (= e!4272999 (or (not (= (exprs!7425 auxCtx!45) Nil!68768)) (= lt!2559622 (exprs!7425 c!9994))))))

(assert (= (and d!2220003 c!1326877) b!7110083))

(assert (= (and d!2220003 (not c!1326877)) b!7110084))

(assert (= (and d!2220003 res!2901730) b!7110085))

(assert (= (and b!7110085 res!2901729) b!7110086))

(declare-fun m!7831422 () Bool)

(assert (=> b!7110084 m!7831422))

(declare-fun m!7831424 () Bool)

(assert (=> b!7110085 m!7831424))

(declare-fun m!7831426 () Bool)

(assert (=> b!7110085 m!7831426))

(declare-fun m!7831428 () Bool)

(assert (=> b!7110085 m!7831428))

(declare-fun m!7831430 () Bool)

(assert (=> d!2220003 m!7831430))

(declare-fun m!7831432 () Bool)

(assert (=> d!2220003 m!7831432))

(declare-fun m!7831434 () Bool)

(assert (=> d!2220003 m!7831434))

(assert (=> b!7109936 d!2220003))

(declare-fun b!7110118 () Bool)

(declare-fun c!1326892 () Bool)

(declare-fun e!4273021 () Bool)

(assert (=> b!7110118 (= c!1326892 e!4273021)))

(declare-fun res!2901738 () Bool)

(assert (=> b!7110118 (=> (not res!2901738) (not e!4273021))))

(assert (=> b!7110118 (= res!2901738 ((_ is Concat!26776) r!11554))))

(declare-fun e!4273024 () (InoxSet Context!13850))

(declare-fun e!4273023 () (InoxSet Context!13850))

(assert (=> b!7110118 (= e!4273024 e!4273023)))

(declare-fun b!7110119 () Bool)

(declare-fun call!648626 () (InoxSet Context!13850))

(declare-fun call!648631 () (InoxSet Context!13850))

(assert (=> b!7110119 (= e!4273023 ((_ map or) call!648626 call!648631))))

(declare-fun call!648628 () List!68892)

(declare-fun c!1326895 () Bool)

(declare-fun bm!648621 () Bool)

(assert (=> bm!648621 (= call!648626 (derivationStepZipperDown!2446 (ite c!1326895 (regOne!36375 r!11554) (regOne!36374 r!11554)) (ite c!1326895 lt!2559600 (Context!13851 call!648628)) a!1901))))

(declare-fun b!7110120 () Bool)

(declare-fun e!4273019 () (InoxSet Context!13850))

(assert (=> b!7110120 (= e!4273019 e!4273024)))

(assert (=> b!7110120 (= c!1326895 ((_ is Union!17931) r!11554))))

(declare-fun c!1326894 () Bool)

(declare-fun bm!648622 () Bool)

(assert (=> bm!648622 (= call!648628 ($colon$colon!2789 (exprs!7425 lt!2559600) (ite (or c!1326892 c!1326894) (regTwo!36374 r!11554) r!11554)))))

(declare-fun b!7110121 () Bool)

(declare-fun e!4273022 () (InoxSet Context!13850))

(declare-fun call!648630 () (InoxSet Context!13850))

(assert (=> b!7110121 (= e!4273022 call!648630)))

(declare-fun b!7110122 () Bool)

(assert (=> b!7110122 (= e!4273019 (store ((as const (Array Context!13850 Bool)) false) lt!2559600 true))))

(declare-fun d!2220009 () Bool)

(declare-fun c!1326891 () Bool)

(assert (=> d!2220009 (= c!1326891 (and ((_ is ElementMatch!17931) r!11554) (= (c!1326832 r!11554) a!1901)))))

(assert (=> d!2220009 (= (derivationStepZipperDown!2446 r!11554 lt!2559600 a!1901) e!4273019)))

(declare-fun b!7110123 () Bool)

(declare-fun e!4273020 () (InoxSet Context!13850))

(assert (=> b!7110123 (= e!4273020 call!648630)))

(declare-fun bm!648623 () Bool)

(assert (=> bm!648623 (= call!648630 call!648631)))

(declare-fun b!7110124 () Bool)

(assert (=> b!7110124 (= e!4273021 (nullable!7568 (regOne!36374 r!11554)))))

(declare-fun b!7110125 () Bool)

(assert (=> b!7110125 (= e!4273020 ((as const (Array Context!13850 Bool)) false))))

(declare-fun b!7110126 () Bool)

(assert (=> b!7110126 (= e!4273023 e!4273022)))

(assert (=> b!7110126 (= c!1326894 ((_ is Concat!26776) r!11554))))

(declare-fun bm!648624 () Bool)

(declare-fun call!648627 () (InoxSet Context!13850))

(assert (=> bm!648624 (= call!648631 call!648627)))

(declare-fun b!7110127 () Bool)

(assert (=> b!7110127 (= e!4273024 ((_ map or) call!648626 call!648627))))

(declare-fun b!7110128 () Bool)

(declare-fun c!1326893 () Bool)

(assert (=> b!7110128 (= c!1326893 ((_ is Star!17931) r!11554))))

(assert (=> b!7110128 (= e!4273022 e!4273020)))

(declare-fun bm!648625 () Bool)

(declare-fun call!648629 () List!68892)

(assert (=> bm!648625 (= call!648629 call!648628)))

(declare-fun bm!648626 () Bool)

(assert (=> bm!648626 (= call!648627 (derivationStepZipperDown!2446 (ite c!1326895 (regTwo!36375 r!11554) (ite c!1326892 (regTwo!36374 r!11554) (ite c!1326894 (regOne!36374 r!11554) (reg!18260 r!11554)))) (ite (or c!1326895 c!1326892) lt!2559600 (Context!13851 call!648629)) a!1901))))

(assert (= (and d!2220009 c!1326891) b!7110122))

(assert (= (and d!2220009 (not c!1326891)) b!7110120))

(assert (= (and b!7110120 c!1326895) b!7110127))

(assert (= (and b!7110120 (not c!1326895)) b!7110118))

(assert (= (and b!7110118 res!2901738) b!7110124))

(assert (= (and b!7110118 c!1326892) b!7110119))

(assert (= (and b!7110118 (not c!1326892)) b!7110126))

(assert (= (and b!7110126 c!1326894) b!7110121))

(assert (= (and b!7110126 (not c!1326894)) b!7110128))

(assert (= (and b!7110128 c!1326893) b!7110123))

(assert (= (and b!7110128 (not c!1326893)) b!7110125))

(assert (= (or b!7110121 b!7110123) bm!648625))

(assert (= (or b!7110121 b!7110123) bm!648623))

(assert (= (or b!7110119 bm!648623) bm!648624))

(assert (= (or b!7110119 bm!648625) bm!648622))

(assert (= (or b!7110127 bm!648624) bm!648626))

(assert (= (or b!7110127 b!7110119) bm!648621))

(declare-fun m!7831474 () Bool)

(assert (=> bm!648622 m!7831474))

(declare-fun m!7831476 () Bool)

(assert (=> bm!648621 m!7831476))

(declare-fun m!7831478 () Bool)

(assert (=> b!7110122 m!7831478))

(assert (=> b!7110124 m!7831312))

(declare-fun m!7831482 () Bool)

(assert (=> bm!648626 m!7831482))

(assert (=> b!7109934 d!2220009))

(declare-fun b!7110140 () Bool)

(declare-fun c!1326902 () Bool)

(declare-fun e!4273033 () Bool)

(assert (=> b!7110140 (= c!1326902 e!4273033)))

(declare-fun res!2901740 () Bool)

(assert (=> b!7110140 (=> (not res!2901740) (not e!4273033))))

(assert (=> b!7110140 (= res!2901740 ((_ is Concat!26776) (regTwo!36374 r!11554)))))

(declare-fun e!4273036 () (InoxSet Context!13850))

(declare-fun e!4273035 () (InoxSet Context!13850))

(assert (=> b!7110140 (= e!4273036 e!4273035)))

(declare-fun b!7110141 () Bool)

(declare-fun call!648638 () (InoxSet Context!13850))

(declare-fun call!648643 () (InoxSet Context!13850))

(assert (=> b!7110141 (= e!4273035 ((_ map or) call!648638 call!648643))))

(declare-fun call!648640 () List!68892)

(declare-fun c!1326905 () Bool)

(declare-fun bm!648633 () Bool)

(assert (=> bm!648633 (= call!648638 (derivationStepZipperDown!2446 (ite c!1326905 (regOne!36375 (regTwo!36374 r!11554)) (regOne!36374 (regTwo!36374 r!11554))) (ite c!1326905 lt!2559600 (Context!13851 call!648640)) a!1901))))

(declare-fun b!7110142 () Bool)

(declare-fun e!4273031 () (InoxSet Context!13850))

(assert (=> b!7110142 (= e!4273031 e!4273036)))

(assert (=> b!7110142 (= c!1326905 ((_ is Union!17931) (regTwo!36374 r!11554)))))

(declare-fun c!1326904 () Bool)

(declare-fun bm!648634 () Bool)

(assert (=> bm!648634 (= call!648640 ($colon$colon!2789 (exprs!7425 lt!2559600) (ite (or c!1326902 c!1326904) (regTwo!36374 (regTwo!36374 r!11554)) (regTwo!36374 r!11554))))))

(declare-fun b!7110143 () Bool)

(declare-fun e!4273034 () (InoxSet Context!13850))

(declare-fun call!648642 () (InoxSet Context!13850))

(assert (=> b!7110143 (= e!4273034 call!648642)))

(declare-fun b!7110144 () Bool)

(assert (=> b!7110144 (= e!4273031 (store ((as const (Array Context!13850 Bool)) false) lt!2559600 true))))

(declare-fun d!2220027 () Bool)

(declare-fun c!1326901 () Bool)

(assert (=> d!2220027 (= c!1326901 (and ((_ is ElementMatch!17931) (regTwo!36374 r!11554)) (= (c!1326832 (regTwo!36374 r!11554)) a!1901)))))

(assert (=> d!2220027 (= (derivationStepZipperDown!2446 (regTwo!36374 r!11554) lt!2559600 a!1901) e!4273031)))

(declare-fun b!7110145 () Bool)

(declare-fun e!4273032 () (InoxSet Context!13850))

(assert (=> b!7110145 (= e!4273032 call!648642)))

(declare-fun bm!648635 () Bool)

(assert (=> bm!648635 (= call!648642 call!648643)))

(declare-fun b!7110146 () Bool)

(assert (=> b!7110146 (= e!4273033 (nullable!7568 (regOne!36374 (regTwo!36374 r!11554))))))

(declare-fun b!7110147 () Bool)

(assert (=> b!7110147 (= e!4273032 ((as const (Array Context!13850 Bool)) false))))

(declare-fun b!7110148 () Bool)

(assert (=> b!7110148 (= e!4273035 e!4273034)))

(assert (=> b!7110148 (= c!1326904 ((_ is Concat!26776) (regTwo!36374 r!11554)))))

(declare-fun bm!648636 () Bool)

(declare-fun call!648639 () (InoxSet Context!13850))

(assert (=> bm!648636 (= call!648643 call!648639)))

(declare-fun b!7110149 () Bool)

(assert (=> b!7110149 (= e!4273036 ((_ map or) call!648638 call!648639))))

(declare-fun b!7110150 () Bool)

(declare-fun c!1326903 () Bool)

(assert (=> b!7110150 (= c!1326903 ((_ is Star!17931) (regTwo!36374 r!11554)))))

(assert (=> b!7110150 (= e!4273034 e!4273032)))

(declare-fun bm!648637 () Bool)

(declare-fun call!648641 () List!68892)

(assert (=> bm!648637 (= call!648641 call!648640)))

(declare-fun bm!648638 () Bool)

(assert (=> bm!648638 (= call!648639 (derivationStepZipperDown!2446 (ite c!1326905 (regTwo!36375 (regTwo!36374 r!11554)) (ite c!1326902 (regTwo!36374 (regTwo!36374 r!11554)) (ite c!1326904 (regOne!36374 (regTwo!36374 r!11554)) (reg!18260 (regTwo!36374 r!11554))))) (ite (or c!1326905 c!1326902) lt!2559600 (Context!13851 call!648641)) a!1901))))

(assert (= (and d!2220027 c!1326901) b!7110144))

(assert (= (and d!2220027 (not c!1326901)) b!7110142))

(assert (= (and b!7110142 c!1326905) b!7110149))

(assert (= (and b!7110142 (not c!1326905)) b!7110140))

(assert (= (and b!7110140 res!2901740) b!7110146))

(assert (= (and b!7110140 c!1326902) b!7110141))

(assert (= (and b!7110140 (not c!1326902)) b!7110148))

(assert (= (and b!7110148 c!1326904) b!7110143))

(assert (= (and b!7110148 (not c!1326904)) b!7110150))

(assert (= (and b!7110150 c!1326903) b!7110145))

(assert (= (and b!7110150 (not c!1326903)) b!7110147))

(assert (= (or b!7110143 b!7110145) bm!648637))

(assert (= (or b!7110143 b!7110145) bm!648635))

(assert (= (or b!7110141 bm!648635) bm!648636))

(assert (= (or b!7110141 bm!648637) bm!648634))

(assert (= (or b!7110149 bm!648636) bm!648638))

(assert (= (or b!7110149 b!7110141) bm!648633))

(declare-fun m!7831490 () Bool)

(assert (=> bm!648634 m!7831490))

(declare-fun m!7831492 () Bool)

(assert (=> bm!648633 m!7831492))

(assert (=> b!7110144 m!7831478))

(declare-fun m!7831496 () Bool)

(assert (=> b!7110146 m!7831496))

(declare-fun m!7831500 () Bool)

(assert (=> bm!648638 m!7831500))

(assert (=> b!7109934 d!2220027))

(declare-fun b!7110162 () Bool)

(declare-fun c!1326912 () Bool)

(declare-fun e!4273045 () Bool)

(assert (=> b!7110162 (= c!1326912 e!4273045)))

(declare-fun res!2901742 () Bool)

(assert (=> b!7110162 (=> (not res!2901742) (not e!4273045))))

(assert (=> b!7110162 (= res!2901742 ((_ is Concat!26776) (regOne!36374 r!11554)))))

(declare-fun e!4273048 () (InoxSet Context!13850))

(declare-fun e!4273047 () (InoxSet Context!13850))

(assert (=> b!7110162 (= e!4273048 e!4273047)))

(declare-fun b!7110163 () Bool)

(declare-fun call!648650 () (InoxSet Context!13850))

(declare-fun call!648655 () (InoxSet Context!13850))

(assert (=> b!7110163 (= e!4273047 ((_ map or) call!648650 call!648655))))

(declare-fun c!1326915 () Bool)

(declare-fun call!648652 () List!68892)

(declare-fun bm!648645 () Bool)

(assert (=> bm!648645 (= call!648650 (derivationStepZipperDown!2446 (ite c!1326915 (regOne!36375 (regOne!36374 r!11554)) (regOne!36374 (regOne!36374 r!11554))) (ite c!1326915 (Context!13851 ($colon$colon!2789 lt!2559607 (regTwo!36374 r!11554))) (Context!13851 call!648652)) a!1901))))

(declare-fun b!7110164 () Bool)

(declare-fun e!4273043 () (InoxSet Context!13850))

(assert (=> b!7110164 (= e!4273043 e!4273048)))

(assert (=> b!7110164 (= c!1326915 ((_ is Union!17931) (regOne!36374 r!11554)))))

(declare-fun c!1326914 () Bool)

(declare-fun bm!648646 () Bool)

(assert (=> bm!648646 (= call!648652 ($colon$colon!2789 (exprs!7425 (Context!13851 ($colon$colon!2789 lt!2559607 (regTwo!36374 r!11554)))) (ite (or c!1326912 c!1326914) (regTwo!36374 (regOne!36374 r!11554)) (regOne!36374 r!11554))))))

(declare-fun b!7110165 () Bool)

(declare-fun e!4273046 () (InoxSet Context!13850))

(declare-fun call!648654 () (InoxSet Context!13850))

(assert (=> b!7110165 (= e!4273046 call!648654)))

(declare-fun b!7110166 () Bool)

(assert (=> b!7110166 (= e!4273043 (store ((as const (Array Context!13850 Bool)) false) (Context!13851 ($colon$colon!2789 lt!2559607 (regTwo!36374 r!11554))) true))))

(declare-fun d!2220031 () Bool)

(declare-fun c!1326911 () Bool)

(assert (=> d!2220031 (= c!1326911 (and ((_ is ElementMatch!17931) (regOne!36374 r!11554)) (= (c!1326832 (regOne!36374 r!11554)) a!1901)))))

(assert (=> d!2220031 (= (derivationStepZipperDown!2446 (regOne!36374 r!11554) (Context!13851 ($colon$colon!2789 lt!2559607 (regTwo!36374 r!11554))) a!1901) e!4273043)))

(declare-fun b!7110167 () Bool)

(declare-fun e!4273044 () (InoxSet Context!13850))

(assert (=> b!7110167 (= e!4273044 call!648654)))

(declare-fun bm!648647 () Bool)

(assert (=> bm!648647 (= call!648654 call!648655)))

(declare-fun b!7110168 () Bool)

(assert (=> b!7110168 (= e!4273045 (nullable!7568 (regOne!36374 (regOne!36374 r!11554))))))

(declare-fun b!7110169 () Bool)

(assert (=> b!7110169 (= e!4273044 ((as const (Array Context!13850 Bool)) false))))

(declare-fun b!7110170 () Bool)

(assert (=> b!7110170 (= e!4273047 e!4273046)))

(assert (=> b!7110170 (= c!1326914 ((_ is Concat!26776) (regOne!36374 r!11554)))))

(declare-fun bm!648648 () Bool)

(declare-fun call!648651 () (InoxSet Context!13850))

(assert (=> bm!648648 (= call!648655 call!648651)))

(declare-fun b!7110171 () Bool)

(assert (=> b!7110171 (= e!4273048 ((_ map or) call!648650 call!648651))))

(declare-fun b!7110172 () Bool)

(declare-fun c!1326913 () Bool)

(assert (=> b!7110172 (= c!1326913 ((_ is Star!17931) (regOne!36374 r!11554)))))

(assert (=> b!7110172 (= e!4273046 e!4273044)))

(declare-fun bm!648649 () Bool)

(declare-fun call!648653 () List!68892)

(assert (=> bm!648649 (= call!648653 call!648652)))

(declare-fun bm!648650 () Bool)

(assert (=> bm!648650 (= call!648651 (derivationStepZipperDown!2446 (ite c!1326915 (regTwo!36375 (regOne!36374 r!11554)) (ite c!1326912 (regTwo!36374 (regOne!36374 r!11554)) (ite c!1326914 (regOne!36374 (regOne!36374 r!11554)) (reg!18260 (regOne!36374 r!11554))))) (ite (or c!1326915 c!1326912) (Context!13851 ($colon$colon!2789 lt!2559607 (regTwo!36374 r!11554))) (Context!13851 call!648653)) a!1901))))

(assert (= (and d!2220031 c!1326911) b!7110166))

(assert (= (and d!2220031 (not c!1326911)) b!7110164))

(assert (= (and b!7110164 c!1326915) b!7110171))

(assert (= (and b!7110164 (not c!1326915)) b!7110162))

(assert (= (and b!7110162 res!2901742) b!7110168))

(assert (= (and b!7110162 c!1326912) b!7110163))

(assert (= (and b!7110162 (not c!1326912)) b!7110170))

(assert (= (and b!7110170 c!1326914) b!7110165))

(assert (= (and b!7110170 (not c!1326914)) b!7110172))

(assert (= (and b!7110172 c!1326913) b!7110167))

(assert (= (and b!7110172 (not c!1326913)) b!7110169))

(assert (= (or b!7110165 b!7110167) bm!648649))

(assert (= (or b!7110165 b!7110167) bm!648647))

(assert (= (or b!7110163 bm!648647) bm!648648))

(assert (= (or b!7110163 bm!648649) bm!648646))

(assert (= (or b!7110171 bm!648648) bm!648650))

(assert (= (or b!7110171 b!7110163) bm!648645))

(declare-fun m!7831506 () Bool)

(assert (=> bm!648646 m!7831506))

(declare-fun m!7831510 () Bool)

(assert (=> bm!648645 m!7831510))

(declare-fun m!7831514 () Bool)

(assert (=> b!7110166 m!7831514))

(declare-fun m!7831518 () Bool)

(assert (=> b!7110168 m!7831518))

(declare-fun m!7831520 () Bool)

(assert (=> bm!648650 m!7831520))

(assert (=> b!7109934 d!2220031))

(declare-fun d!2220037 () Bool)

(assert (=> d!2220037 (= ($colon$colon!2789 lt!2559607 (regTwo!36374 r!11554)) (Cons!68768 (regTwo!36374 r!11554) lt!2559607))))

(assert (=> b!7109934 d!2220037))

(declare-fun b!7110173 () Bool)

(declare-fun c!1326917 () Bool)

(declare-fun e!4273051 () Bool)

(assert (=> b!7110173 (= c!1326917 e!4273051)))

(declare-fun res!2901743 () Bool)

(assert (=> b!7110173 (=> (not res!2901743) (not e!4273051))))

(assert (=> b!7110173 (= res!2901743 ((_ is Concat!26776) (regOne!36374 r!11554)))))

(declare-fun e!4273054 () (InoxSet Context!13850))

(declare-fun e!4273053 () (InoxSet Context!13850))

(assert (=> b!7110173 (= e!4273054 e!4273053)))

(declare-fun b!7110174 () Bool)

(declare-fun call!648656 () (InoxSet Context!13850))

(declare-fun call!648661 () (InoxSet Context!13850))

(assert (=> b!7110174 (= e!4273053 ((_ map or) call!648656 call!648661))))

(declare-fun c!1326920 () Bool)

(declare-fun call!648658 () List!68892)

(declare-fun bm!648651 () Bool)

(assert (=> bm!648651 (= call!648656 (derivationStepZipperDown!2446 (ite c!1326920 (regOne!36375 (regOne!36374 r!11554)) (regOne!36374 (regOne!36374 r!11554))) (ite c!1326920 lt!2559609 (Context!13851 call!648658)) a!1901))))

(declare-fun b!7110175 () Bool)

(declare-fun e!4273049 () (InoxSet Context!13850))

(assert (=> b!7110175 (= e!4273049 e!4273054)))

(assert (=> b!7110175 (= c!1326920 ((_ is Union!17931) (regOne!36374 r!11554)))))

(declare-fun c!1326919 () Bool)

(declare-fun bm!648652 () Bool)

(assert (=> bm!648652 (= call!648658 ($colon$colon!2789 (exprs!7425 lt!2559609) (ite (or c!1326917 c!1326919) (regTwo!36374 (regOne!36374 r!11554)) (regOne!36374 r!11554))))))

(declare-fun b!7110176 () Bool)

(declare-fun e!4273052 () (InoxSet Context!13850))

(declare-fun call!648660 () (InoxSet Context!13850))

(assert (=> b!7110176 (= e!4273052 call!648660)))

(declare-fun b!7110177 () Bool)

(assert (=> b!7110177 (= e!4273049 (store ((as const (Array Context!13850 Bool)) false) lt!2559609 true))))

(declare-fun d!2220039 () Bool)

(declare-fun c!1326916 () Bool)

(assert (=> d!2220039 (= c!1326916 (and ((_ is ElementMatch!17931) (regOne!36374 r!11554)) (= (c!1326832 (regOne!36374 r!11554)) a!1901)))))

(assert (=> d!2220039 (= (derivationStepZipperDown!2446 (regOne!36374 r!11554) lt!2559609 a!1901) e!4273049)))

(declare-fun b!7110178 () Bool)

(declare-fun e!4273050 () (InoxSet Context!13850))

(assert (=> b!7110178 (= e!4273050 call!648660)))

(declare-fun bm!648653 () Bool)

(assert (=> bm!648653 (= call!648660 call!648661)))

(declare-fun b!7110179 () Bool)

(assert (=> b!7110179 (= e!4273051 (nullable!7568 (regOne!36374 (regOne!36374 r!11554))))))

(declare-fun b!7110180 () Bool)

(assert (=> b!7110180 (= e!4273050 ((as const (Array Context!13850 Bool)) false))))

(declare-fun b!7110181 () Bool)

(assert (=> b!7110181 (= e!4273053 e!4273052)))

(assert (=> b!7110181 (= c!1326919 ((_ is Concat!26776) (regOne!36374 r!11554)))))

(declare-fun bm!648654 () Bool)

(declare-fun call!648657 () (InoxSet Context!13850))

(assert (=> bm!648654 (= call!648661 call!648657)))

(declare-fun b!7110182 () Bool)

(assert (=> b!7110182 (= e!4273054 ((_ map or) call!648656 call!648657))))

(declare-fun b!7110183 () Bool)

(declare-fun c!1326918 () Bool)

(assert (=> b!7110183 (= c!1326918 ((_ is Star!17931) (regOne!36374 r!11554)))))

(assert (=> b!7110183 (= e!4273052 e!4273050)))

(declare-fun bm!648655 () Bool)

(declare-fun call!648659 () List!68892)

(assert (=> bm!648655 (= call!648659 call!648658)))

(declare-fun bm!648656 () Bool)

(assert (=> bm!648656 (= call!648657 (derivationStepZipperDown!2446 (ite c!1326920 (regTwo!36375 (regOne!36374 r!11554)) (ite c!1326917 (regTwo!36374 (regOne!36374 r!11554)) (ite c!1326919 (regOne!36374 (regOne!36374 r!11554)) (reg!18260 (regOne!36374 r!11554))))) (ite (or c!1326920 c!1326917) lt!2559609 (Context!13851 call!648659)) a!1901))))

(assert (= (and d!2220039 c!1326916) b!7110177))

(assert (= (and d!2220039 (not c!1326916)) b!7110175))

(assert (= (and b!7110175 c!1326920) b!7110182))

(assert (= (and b!7110175 (not c!1326920)) b!7110173))

(assert (= (and b!7110173 res!2901743) b!7110179))

(assert (= (and b!7110173 c!1326917) b!7110174))

(assert (= (and b!7110173 (not c!1326917)) b!7110181))

(assert (= (and b!7110181 c!1326919) b!7110176))

(assert (= (and b!7110181 (not c!1326919)) b!7110183))

(assert (= (and b!7110183 c!1326918) b!7110178))

(assert (= (and b!7110183 (not c!1326918)) b!7110180))

(assert (= (or b!7110176 b!7110178) bm!648655))

(assert (= (or b!7110176 b!7110178) bm!648653))

(assert (= (or b!7110174 bm!648653) bm!648654))

(assert (= (or b!7110174 bm!648655) bm!648652))

(assert (= (or b!7110182 bm!648654) bm!648656))

(assert (= (or b!7110182 b!7110174) bm!648651))

(declare-fun m!7831522 () Bool)

(assert (=> bm!648652 m!7831522))

(declare-fun m!7831524 () Bool)

(assert (=> bm!648651 m!7831524))

(declare-fun m!7831526 () Bool)

(assert (=> b!7110177 m!7831526))

(assert (=> b!7110179 m!7831518))

(declare-fun m!7831528 () Bool)

(assert (=> bm!648656 m!7831528))

(assert (=> b!7109935 d!2220039))

(declare-fun b!7110185 () Bool)

(declare-fun e!4273055 () List!68892)

(assert (=> b!7110185 (= e!4273055 (Cons!68768 (h!75216 lt!2559608) (++!16083 (t!382719 lt!2559608) (exprs!7425 auxCtx!45))))))

(declare-fun b!7110186 () Bool)

(declare-fun res!2901744 () Bool)

(declare-fun e!4273056 () Bool)

(assert (=> b!7110186 (=> (not res!2901744) (not e!4273056))))

(declare-fun lt!2559632 () List!68892)

(assert (=> b!7110186 (= res!2901744 (= (size!41391 lt!2559632) (+ (size!41391 lt!2559608) (size!41391 (exprs!7425 auxCtx!45)))))))

(declare-fun d!2220041 () Bool)

(assert (=> d!2220041 e!4273056))

(declare-fun res!2901745 () Bool)

(assert (=> d!2220041 (=> (not res!2901745) (not e!4273056))))

(assert (=> d!2220041 (= res!2901745 (= (content!14016 lt!2559632) ((_ map or) (content!14016 lt!2559608) (content!14016 (exprs!7425 auxCtx!45)))))))

(assert (=> d!2220041 (= lt!2559632 e!4273055)))

(declare-fun c!1326921 () Bool)

(assert (=> d!2220041 (= c!1326921 ((_ is Nil!68768) lt!2559608))))

(assert (=> d!2220041 (= (++!16083 lt!2559608 (exprs!7425 auxCtx!45)) lt!2559632)))

(declare-fun b!7110184 () Bool)

(assert (=> b!7110184 (= e!4273055 (exprs!7425 auxCtx!45))))

(declare-fun b!7110187 () Bool)

(assert (=> b!7110187 (= e!4273056 (or (not (= (exprs!7425 auxCtx!45) Nil!68768)) (= lt!2559632 lt!2559608)))))

(assert (= (and d!2220041 c!1326921) b!7110184))

(assert (= (and d!2220041 (not c!1326921)) b!7110185))

(assert (= (and d!2220041 res!2901745) b!7110186))

(assert (= (and b!7110186 res!2901744) b!7110187))

(declare-fun m!7831530 () Bool)

(assert (=> b!7110185 m!7831530))

(declare-fun m!7831532 () Bool)

(assert (=> b!7110186 m!7831532))

(declare-fun m!7831534 () Bool)

(assert (=> b!7110186 m!7831534))

(assert (=> b!7110186 m!7831428))

(declare-fun m!7831536 () Bool)

(assert (=> d!2220041 m!7831536))

(declare-fun m!7831538 () Bool)

(assert (=> d!2220041 m!7831538))

(assert (=> d!2220041 m!7831434))

(assert (=> b!7109935 d!2220041))

(declare-fun bs!1885011 () Bool)

(declare-fun d!2220043 () Bool)

(assert (= bs!1885011 (and d!2220043 b!7109936)))

(declare-fun lambda!431860 () Int)

(assert (=> bs!1885011 (= lambda!431860 lambda!431847)))

(declare-fun bs!1885012 () Bool)

(assert (= bs!1885012 (and d!2220043 d!2219995)))

(assert (=> bs!1885012 (= lambda!431860 lambda!431850)))

(declare-fun bs!1885013 () Bool)

(assert (= bs!1885013 (and d!2220043 d!2219997)))

(assert (=> bs!1885013 (= lambda!431860 lambda!431851)))

(assert (=> d!2220043 (= (inv!87690 lt!2559609) (forall!16831 (exprs!7425 lt!2559609) lambda!431860))))

(declare-fun bs!1885014 () Bool)

(assert (= bs!1885014 d!2220043))

(declare-fun m!7831540 () Bool)

(assert (=> bs!1885014 m!7831540))

(assert (=> b!7109935 d!2220043))

(declare-fun b!7110188 () Bool)

(declare-fun c!1326924 () Bool)

(declare-fun e!4273059 () Bool)

(assert (=> b!7110188 (= c!1326924 e!4273059)))

(declare-fun res!2901746 () Bool)

(assert (=> b!7110188 (=> (not res!2901746) (not e!4273059))))

(assert (=> b!7110188 (= res!2901746 ((_ is Concat!26776) (regTwo!36374 r!11554)))))

(declare-fun e!4273062 () (InoxSet Context!13850))

(declare-fun e!4273061 () (InoxSet Context!13850))

(assert (=> b!7110188 (= e!4273062 e!4273061)))

(declare-fun b!7110189 () Bool)

(declare-fun call!648662 () (InoxSet Context!13850))

(declare-fun call!648667 () (InoxSet Context!13850))

(assert (=> b!7110189 (= e!4273061 ((_ map or) call!648662 call!648667))))

(declare-fun call!648664 () List!68892)

(declare-fun c!1326927 () Bool)

(declare-fun bm!648657 () Bool)

(assert (=> bm!648657 (= call!648662 (derivationStepZipperDown!2446 (ite c!1326927 (regOne!36375 (regTwo!36374 r!11554)) (regOne!36374 (regTwo!36374 r!11554))) (ite c!1326927 c!9994 (Context!13851 call!648664)) a!1901))))

(declare-fun b!7110190 () Bool)

(declare-fun e!4273057 () (InoxSet Context!13850))

(assert (=> b!7110190 (= e!4273057 e!4273062)))

(assert (=> b!7110190 (= c!1326927 ((_ is Union!17931) (regTwo!36374 r!11554)))))

(declare-fun c!1326926 () Bool)

(declare-fun bm!648658 () Bool)

(assert (=> bm!648658 (= call!648664 ($colon$colon!2789 (exprs!7425 c!9994) (ite (or c!1326924 c!1326926) (regTwo!36374 (regTwo!36374 r!11554)) (regTwo!36374 r!11554))))))

(declare-fun b!7110191 () Bool)

(declare-fun e!4273060 () (InoxSet Context!13850))

(declare-fun call!648666 () (InoxSet Context!13850))

(assert (=> b!7110191 (= e!4273060 call!648666)))

(declare-fun b!7110192 () Bool)

(assert (=> b!7110192 (= e!4273057 (store ((as const (Array Context!13850 Bool)) false) c!9994 true))))

(declare-fun d!2220045 () Bool)

(declare-fun c!1326923 () Bool)

(assert (=> d!2220045 (= c!1326923 (and ((_ is ElementMatch!17931) (regTwo!36374 r!11554)) (= (c!1326832 (regTwo!36374 r!11554)) a!1901)))))

(assert (=> d!2220045 (= (derivationStepZipperDown!2446 (regTwo!36374 r!11554) c!9994 a!1901) e!4273057)))

(declare-fun b!7110193 () Bool)

(declare-fun e!4273058 () (InoxSet Context!13850))

(assert (=> b!7110193 (= e!4273058 call!648666)))

(declare-fun bm!648659 () Bool)

(assert (=> bm!648659 (= call!648666 call!648667)))

(declare-fun b!7110194 () Bool)

(assert (=> b!7110194 (= e!4273059 (nullable!7568 (regOne!36374 (regTwo!36374 r!11554))))))

(declare-fun b!7110195 () Bool)

(assert (=> b!7110195 (= e!4273058 ((as const (Array Context!13850 Bool)) false))))

(declare-fun b!7110196 () Bool)

(assert (=> b!7110196 (= e!4273061 e!4273060)))

(assert (=> b!7110196 (= c!1326926 ((_ is Concat!26776) (regTwo!36374 r!11554)))))

(declare-fun bm!648660 () Bool)

(declare-fun call!648663 () (InoxSet Context!13850))

(assert (=> bm!648660 (= call!648667 call!648663)))

(declare-fun b!7110197 () Bool)

(assert (=> b!7110197 (= e!4273062 ((_ map or) call!648662 call!648663))))

(declare-fun b!7110198 () Bool)

(declare-fun c!1326925 () Bool)

(assert (=> b!7110198 (= c!1326925 ((_ is Star!17931) (regTwo!36374 r!11554)))))

(assert (=> b!7110198 (= e!4273060 e!4273058)))

(declare-fun bm!648661 () Bool)

(declare-fun call!648665 () List!68892)

(assert (=> bm!648661 (= call!648665 call!648664)))

(declare-fun bm!648662 () Bool)

(assert (=> bm!648662 (= call!648663 (derivationStepZipperDown!2446 (ite c!1326927 (regTwo!36375 (regTwo!36374 r!11554)) (ite c!1326924 (regTwo!36374 (regTwo!36374 r!11554)) (ite c!1326926 (regOne!36374 (regTwo!36374 r!11554)) (reg!18260 (regTwo!36374 r!11554))))) (ite (or c!1326927 c!1326924) c!9994 (Context!13851 call!648665)) a!1901))))

(assert (= (and d!2220045 c!1326923) b!7110192))

(assert (= (and d!2220045 (not c!1326923)) b!7110190))

(assert (= (and b!7110190 c!1326927) b!7110197))

(assert (= (and b!7110190 (not c!1326927)) b!7110188))

(assert (= (and b!7110188 res!2901746) b!7110194))

(assert (= (and b!7110188 c!1326924) b!7110189))

(assert (= (and b!7110188 (not c!1326924)) b!7110196))

(assert (= (and b!7110196 c!1326926) b!7110191))

(assert (= (and b!7110196 (not c!1326926)) b!7110198))

(assert (= (and b!7110198 c!1326925) b!7110193))

(assert (= (and b!7110198 (not c!1326925)) b!7110195))

(assert (= (or b!7110191 b!7110193) bm!648661))

(assert (= (or b!7110191 b!7110193) bm!648659))

(assert (= (or b!7110189 bm!648659) bm!648660))

(assert (= (or b!7110189 bm!648661) bm!648658))

(assert (= (or b!7110197 bm!648660) bm!648662))

(assert (= (or b!7110197 b!7110189) bm!648657))

(declare-fun m!7831542 () Bool)

(assert (=> bm!648658 m!7831542))

(declare-fun m!7831544 () Bool)

(assert (=> bm!648657 m!7831544))

(declare-fun m!7831546 () Bool)

(assert (=> b!7110192 m!7831546))

(assert (=> b!7110194 m!7831496))

(declare-fun m!7831548 () Bool)

(assert (=> bm!648662 m!7831548))

(assert (=> b!7109935 d!2220045))

(declare-fun bs!1885024 () Bool)

(declare-fun d!2220047 () Bool)

(assert (= bs!1885024 (and d!2220047 b!7109936)))

(declare-fun lambda!431870 () Int)

(assert (=> bs!1885024 (= lambda!431870 lambda!431847)))

(declare-fun bs!1885025 () Bool)

(assert (= bs!1885025 (and d!2220047 d!2219995)))

(assert (=> bs!1885025 (= lambda!431870 lambda!431850)))

(declare-fun bs!1885026 () Bool)

(assert (= bs!1885026 (and d!2220047 d!2219997)))

(assert (=> bs!1885026 (= lambda!431870 lambda!431851)))

(declare-fun bs!1885027 () Bool)

(assert (= bs!1885027 (and d!2220047 d!2220043)))

(assert (=> bs!1885027 (= lambda!431870 lambda!431860)))

(assert (=> d!2220047 (= (derivationStepZipperDown!2446 (regTwo!36374 r!11554) (Context!13851 (++!16083 (exprs!7425 c!9994) (exprs!7425 auxCtx!45))) a!1901) (appendTo!930 (derivationStepZipperDown!2446 (regTwo!36374 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2559641 () Unit!162533)

(assert (=> d!2220047 (= lt!2559641 (lemmaConcatPreservesForall!1216 (exprs!7425 c!9994) (exprs!7425 auxCtx!45) lambda!431870))))

(declare-fun lt!2559640 () Unit!162533)

(declare-fun choose!54843 (Context!13850 Regex!17931 C!36132 Context!13850) Unit!162533)

(assert (=> d!2220047 (= lt!2559640 (choose!54843 c!9994 (regTwo!36374 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2220047 (validRegex!9204 (regTwo!36374 r!11554))))

(assert (=> d!2220047 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!228 c!9994 (regTwo!36374 r!11554) a!1901 auxCtx!45) lt!2559640)))

(declare-fun bs!1885028 () Bool)

(assert (= bs!1885028 d!2220047))

(assert (=> bs!1885028 m!7831354))

(assert (=> bs!1885028 m!7831352))

(declare-fun m!7831574 () Bool)

(assert (=> bs!1885028 m!7831574))

(assert (=> bs!1885028 m!7831326))

(declare-fun m!7831576 () Bool)

(assert (=> bs!1885028 m!7831576))

(declare-fun m!7831578 () Bool)

(assert (=> bs!1885028 m!7831578))

(assert (=> bs!1885028 m!7831326))

(assert (=> bs!1885028 m!7831328))

(assert (=> b!7109935 d!2220047))

(declare-fun bs!1885029 () Bool)

(declare-fun d!2220059 () Bool)

(assert (= bs!1885029 (and d!2220059 d!2219995)))

(declare-fun lambda!431871 () Int)

(assert (=> bs!1885029 (= lambda!431871 lambda!431850)))

(declare-fun bs!1885030 () Bool)

(assert (= bs!1885030 (and d!2220059 d!2219997)))

(assert (=> bs!1885030 (= lambda!431871 lambda!431851)))

(declare-fun bs!1885031 () Bool)

(assert (= bs!1885031 (and d!2220059 d!2220043)))

(assert (=> bs!1885031 (= lambda!431871 lambda!431860)))

(declare-fun bs!1885032 () Bool)

(assert (= bs!1885032 (and d!2220059 d!2220047)))

(assert (=> bs!1885032 (= lambda!431871 lambda!431870)))

(declare-fun bs!1885033 () Bool)

(assert (= bs!1885033 (and d!2220059 b!7109936)))

(assert (=> bs!1885033 (= lambda!431871 lambda!431847)))

(assert (=> d!2220059 (= (derivationStepZipperDown!2446 (regOne!36374 r!11554) (Context!13851 (++!16083 (exprs!7425 lt!2559609) (exprs!7425 auxCtx!45))) a!1901) (appendTo!930 (derivationStepZipperDown!2446 (regOne!36374 r!11554) lt!2559609 a!1901) auxCtx!45))))

(declare-fun lt!2559643 () Unit!162533)

(assert (=> d!2220059 (= lt!2559643 (lemmaConcatPreservesForall!1216 (exprs!7425 lt!2559609) (exprs!7425 auxCtx!45) lambda!431871))))

(declare-fun lt!2559642 () Unit!162533)

(assert (=> d!2220059 (= lt!2559642 (choose!54843 lt!2559609 (regOne!36374 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2220059 (validRegex!9204 (regOne!36374 r!11554))))

(assert (=> d!2220059 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!228 lt!2559609 (regOne!36374 r!11554) a!1901 auxCtx!45) lt!2559642)))

(declare-fun bs!1885034 () Bool)

(assert (= bs!1885034 d!2220059))

(declare-fun m!7831580 () Bool)

(assert (=> bs!1885034 m!7831580))

(declare-fun m!7831582 () Bool)

(assert (=> bs!1885034 m!7831582))

(declare-fun m!7831584 () Bool)

(assert (=> bs!1885034 m!7831584))

(assert (=> bs!1885034 m!7831318))

(declare-fun m!7831586 () Bool)

(assert (=> bs!1885034 m!7831586))

(declare-fun m!7831588 () Bool)

(assert (=> bs!1885034 m!7831588))

(assert (=> bs!1885034 m!7831318))

(assert (=> bs!1885034 m!7831320))

(assert (=> b!7109935 d!2220059))

(declare-fun d!2220061 () Bool)

(assert (=> d!2220061 true))

(declare-fun lambda!431876 () Int)

(declare-fun map!16271 ((InoxSet Context!13850) Int) (InoxSet Context!13850))

(assert (=> d!2220061 (= (appendTo!930 (derivationStepZipperDown!2446 (regOne!36374 r!11554) lt!2559609 a!1901) auxCtx!45) (map!16271 (derivationStepZipperDown!2446 (regOne!36374 r!11554) lt!2559609 a!1901) lambda!431876))))

(declare-fun bs!1885035 () Bool)

(assert (= bs!1885035 d!2220061))

(assert (=> bs!1885035 m!7831318))

(declare-fun m!7831590 () Bool)

(assert (=> bs!1885035 m!7831590))

(assert (=> b!7109935 d!2220061))

(assert (=> b!7109935 d!2220001))

(declare-fun d!2220063 () Bool)

(assert (=> d!2220063 (= ($colon$colon!2789 (exprs!7425 c!9994) (regTwo!36374 r!11554)) (Cons!68768 (regTwo!36374 r!11554) (exprs!7425 c!9994)))))

(assert (=> b!7109935 d!2220063))

(declare-fun b!7110254 () Bool)

(declare-fun c!1326937 () Bool)

(declare-fun e!4273084 () Bool)

(assert (=> b!7110254 (= c!1326937 e!4273084)))

(declare-fun res!2901750 () Bool)

(assert (=> b!7110254 (=> (not res!2901750) (not e!4273084))))

(assert (=> b!7110254 (= res!2901750 ((_ is Concat!26776) (regOne!36374 r!11554)))))

(declare-fun e!4273087 () (InoxSet Context!13850))

(declare-fun e!4273086 () (InoxSet Context!13850))

(assert (=> b!7110254 (= e!4273087 e!4273086)))

(declare-fun b!7110255 () Bool)

(declare-fun call!648674 () (InoxSet Context!13850))

(declare-fun call!648679 () (InoxSet Context!13850))

(assert (=> b!7110255 (= e!4273086 ((_ map or) call!648674 call!648679))))

(declare-fun call!648676 () List!68892)

(declare-fun bm!648669 () Bool)

(declare-fun c!1326940 () Bool)

(assert (=> bm!648669 (= call!648674 (derivationStepZipperDown!2446 (ite c!1326940 (regOne!36375 (regOne!36374 r!11554)) (regOne!36374 (regOne!36374 r!11554))) (ite c!1326940 (Context!13851 (++!16083 lt!2559608 (exprs!7425 auxCtx!45))) (Context!13851 call!648676)) a!1901))))

(declare-fun b!7110256 () Bool)

(declare-fun e!4273082 () (InoxSet Context!13850))

(assert (=> b!7110256 (= e!4273082 e!4273087)))

(assert (=> b!7110256 (= c!1326940 ((_ is Union!17931) (regOne!36374 r!11554)))))

(declare-fun bm!648670 () Bool)

(declare-fun c!1326939 () Bool)

(assert (=> bm!648670 (= call!648676 ($colon$colon!2789 (exprs!7425 (Context!13851 (++!16083 lt!2559608 (exprs!7425 auxCtx!45)))) (ite (or c!1326937 c!1326939) (regTwo!36374 (regOne!36374 r!11554)) (regOne!36374 r!11554))))))

(declare-fun b!7110257 () Bool)

(declare-fun e!4273085 () (InoxSet Context!13850))

(declare-fun call!648678 () (InoxSet Context!13850))

(assert (=> b!7110257 (= e!4273085 call!648678)))

(declare-fun b!7110258 () Bool)

(assert (=> b!7110258 (= e!4273082 (store ((as const (Array Context!13850 Bool)) false) (Context!13851 (++!16083 lt!2559608 (exprs!7425 auxCtx!45))) true))))

(declare-fun d!2220065 () Bool)

(declare-fun c!1326936 () Bool)

(assert (=> d!2220065 (= c!1326936 (and ((_ is ElementMatch!17931) (regOne!36374 r!11554)) (= (c!1326832 (regOne!36374 r!11554)) a!1901)))))

(assert (=> d!2220065 (= (derivationStepZipperDown!2446 (regOne!36374 r!11554) (Context!13851 (++!16083 lt!2559608 (exprs!7425 auxCtx!45))) a!1901) e!4273082)))

(declare-fun b!7110259 () Bool)

(declare-fun e!4273083 () (InoxSet Context!13850))

(assert (=> b!7110259 (= e!4273083 call!648678)))

(declare-fun bm!648671 () Bool)

(assert (=> bm!648671 (= call!648678 call!648679)))

(declare-fun b!7110260 () Bool)

(assert (=> b!7110260 (= e!4273084 (nullable!7568 (regOne!36374 (regOne!36374 r!11554))))))

(declare-fun b!7110261 () Bool)

(assert (=> b!7110261 (= e!4273083 ((as const (Array Context!13850 Bool)) false))))

(declare-fun b!7110262 () Bool)

(assert (=> b!7110262 (= e!4273086 e!4273085)))

(assert (=> b!7110262 (= c!1326939 ((_ is Concat!26776) (regOne!36374 r!11554)))))

(declare-fun bm!648672 () Bool)

(declare-fun call!648675 () (InoxSet Context!13850))

(assert (=> bm!648672 (= call!648679 call!648675)))

(declare-fun b!7110263 () Bool)

(assert (=> b!7110263 (= e!4273087 ((_ map or) call!648674 call!648675))))

(declare-fun b!7110264 () Bool)

(declare-fun c!1326938 () Bool)

(assert (=> b!7110264 (= c!1326938 ((_ is Star!17931) (regOne!36374 r!11554)))))

(assert (=> b!7110264 (= e!4273085 e!4273083)))

(declare-fun bm!648673 () Bool)

(declare-fun call!648677 () List!68892)

(assert (=> bm!648673 (= call!648677 call!648676)))

(declare-fun bm!648674 () Bool)

(assert (=> bm!648674 (= call!648675 (derivationStepZipperDown!2446 (ite c!1326940 (regTwo!36375 (regOne!36374 r!11554)) (ite c!1326937 (regTwo!36374 (regOne!36374 r!11554)) (ite c!1326939 (regOne!36374 (regOne!36374 r!11554)) (reg!18260 (regOne!36374 r!11554))))) (ite (or c!1326940 c!1326937) (Context!13851 (++!16083 lt!2559608 (exprs!7425 auxCtx!45))) (Context!13851 call!648677)) a!1901))))

(assert (= (and d!2220065 c!1326936) b!7110258))

(assert (= (and d!2220065 (not c!1326936)) b!7110256))

(assert (= (and b!7110256 c!1326940) b!7110263))

(assert (= (and b!7110256 (not c!1326940)) b!7110254))

(assert (= (and b!7110254 res!2901750) b!7110260))

(assert (= (and b!7110254 c!1326937) b!7110255))

(assert (= (and b!7110254 (not c!1326937)) b!7110262))

(assert (= (and b!7110262 c!1326939) b!7110257))

(assert (= (and b!7110262 (not c!1326939)) b!7110264))

(assert (= (and b!7110264 c!1326938) b!7110259))

(assert (= (and b!7110264 (not c!1326938)) b!7110261))

(assert (= (or b!7110257 b!7110259) bm!648673))

(assert (= (or b!7110257 b!7110259) bm!648671))

(assert (= (or b!7110255 bm!648671) bm!648672))

(assert (= (or b!7110255 bm!648673) bm!648670))

(assert (= (or b!7110263 bm!648672) bm!648674))

(assert (= (or b!7110263 b!7110255) bm!648669))

(declare-fun m!7831592 () Bool)

(assert (=> bm!648670 m!7831592))

(declare-fun m!7831594 () Bool)

(assert (=> bm!648669 m!7831594))

(declare-fun m!7831596 () Bool)

(assert (=> b!7110258 m!7831596))

(assert (=> b!7110260 m!7831518))

(declare-fun m!7831598 () Bool)

(assert (=> bm!648674 m!7831598))

(assert (=> b!7109935 d!2220065))

(declare-fun d!2220067 () Bool)

(assert (=> d!2220067 (forall!16831 (++!16083 lt!2559608 (exprs!7425 auxCtx!45)) lambda!431847)))

(declare-fun lt!2559646 () Unit!162533)

(assert (=> d!2220067 (= lt!2559646 (choose!54841 lt!2559608 (exprs!7425 auxCtx!45) lambda!431847))))

(assert (=> d!2220067 (forall!16831 lt!2559608 lambda!431847)))

(assert (=> d!2220067 (= (lemmaConcatPreservesForall!1216 lt!2559608 (exprs!7425 auxCtx!45) lambda!431847) lt!2559646)))

(declare-fun bs!1885036 () Bool)

(assert (= bs!1885036 d!2220067))

(assert (=> bs!1885036 m!7831316))

(assert (=> bs!1885036 m!7831316))

(declare-fun m!7831600 () Bool)

(assert (=> bs!1885036 m!7831600))

(declare-fun m!7831602 () Bool)

(assert (=> bs!1885036 m!7831602))

(declare-fun m!7831604 () Bool)

(assert (=> bs!1885036 m!7831604))

(assert (=> b!7109935 d!2220067))

(declare-fun bs!1885037 () Bool)

(declare-fun d!2220069 () Bool)

(assert (= bs!1885037 (and d!2220069 d!2220061)))

(declare-fun lambda!431877 () Int)

(assert (=> bs!1885037 (= lambda!431877 lambda!431876)))

(assert (=> d!2220069 true))

(assert (=> d!2220069 (= (appendTo!930 (derivationStepZipperDown!2446 (regTwo!36374 r!11554) c!9994 a!1901) auxCtx!45) (map!16271 (derivationStepZipperDown!2446 (regTwo!36374 r!11554) c!9994 a!1901) lambda!431877))))

(declare-fun bs!1885038 () Bool)

(assert (= bs!1885038 d!2220069))

(assert (=> bs!1885038 m!7831326))

(declare-fun m!7831606 () Bool)

(assert (=> bs!1885038 m!7831606))

(assert (=> b!7109935 d!2220069))

(declare-fun b!7110269 () Bool)

(declare-fun e!4273090 () Bool)

(declare-fun tp!1955906 () Bool)

(declare-fun tp!1955907 () Bool)

(assert (=> b!7110269 (= e!4273090 (and tp!1955906 tp!1955907))))

(assert (=> b!7109938 (= tp!1955854 e!4273090)))

(assert (= (and b!7109938 ((_ is Cons!68768) (exprs!7425 c!9994))) b!7110269))

(declare-fun b!7110280 () Bool)

(declare-fun e!4273093 () Bool)

(assert (=> b!7110280 (= e!4273093 tp_is_empty!45095)))

(declare-fun b!7110282 () Bool)

(declare-fun tp!1955918 () Bool)

(assert (=> b!7110282 (= e!4273093 tp!1955918)))

(declare-fun b!7110283 () Bool)

(declare-fun tp!1955922 () Bool)

(declare-fun tp!1955919 () Bool)

(assert (=> b!7110283 (= e!4273093 (and tp!1955922 tp!1955919))))

(declare-fun b!7110281 () Bool)

(declare-fun tp!1955920 () Bool)

(declare-fun tp!1955921 () Bool)

(assert (=> b!7110281 (= e!4273093 (and tp!1955920 tp!1955921))))

(assert (=> b!7109939 (= tp!1955857 e!4273093)))

(assert (= (and b!7109939 ((_ is ElementMatch!17931) (regOne!36375 r!11554))) b!7110280))

(assert (= (and b!7109939 ((_ is Concat!26776) (regOne!36375 r!11554))) b!7110281))

(assert (= (and b!7109939 ((_ is Star!17931) (regOne!36375 r!11554))) b!7110282))

(assert (= (and b!7109939 ((_ is Union!17931) (regOne!36375 r!11554))) b!7110283))

(declare-fun b!7110284 () Bool)

(declare-fun e!4273094 () Bool)

(assert (=> b!7110284 (= e!4273094 tp_is_empty!45095)))

(declare-fun b!7110286 () Bool)

(declare-fun tp!1955923 () Bool)

(assert (=> b!7110286 (= e!4273094 tp!1955923)))

(declare-fun b!7110287 () Bool)

(declare-fun tp!1955927 () Bool)

(declare-fun tp!1955924 () Bool)

(assert (=> b!7110287 (= e!4273094 (and tp!1955927 tp!1955924))))

(declare-fun b!7110285 () Bool)

(declare-fun tp!1955925 () Bool)

(declare-fun tp!1955926 () Bool)

(assert (=> b!7110285 (= e!4273094 (and tp!1955925 tp!1955926))))

(assert (=> b!7109939 (= tp!1955858 e!4273094)))

(assert (= (and b!7109939 ((_ is ElementMatch!17931) (regTwo!36375 r!11554))) b!7110284))

(assert (= (and b!7109939 ((_ is Concat!26776) (regTwo!36375 r!11554))) b!7110285))

(assert (= (and b!7109939 ((_ is Star!17931) (regTwo!36375 r!11554))) b!7110286))

(assert (= (and b!7109939 ((_ is Union!17931) (regTwo!36375 r!11554))) b!7110287))

(declare-fun b!7110288 () Bool)

(declare-fun e!4273095 () Bool)

(assert (=> b!7110288 (= e!4273095 tp_is_empty!45095)))

(declare-fun b!7110290 () Bool)

(declare-fun tp!1955928 () Bool)

(assert (=> b!7110290 (= e!4273095 tp!1955928)))

(declare-fun b!7110291 () Bool)

(declare-fun tp!1955932 () Bool)

(declare-fun tp!1955929 () Bool)

(assert (=> b!7110291 (= e!4273095 (and tp!1955932 tp!1955929))))

(declare-fun b!7110289 () Bool)

(declare-fun tp!1955930 () Bool)

(declare-fun tp!1955931 () Bool)

(assert (=> b!7110289 (= e!4273095 (and tp!1955930 tp!1955931))))

(assert (=> b!7109944 (= tp!1955853 e!4273095)))

(assert (= (and b!7109944 ((_ is ElementMatch!17931) (regOne!36374 r!11554))) b!7110288))

(assert (= (and b!7109944 ((_ is Concat!26776) (regOne!36374 r!11554))) b!7110289))

(assert (= (and b!7109944 ((_ is Star!17931) (regOne!36374 r!11554))) b!7110290))

(assert (= (and b!7109944 ((_ is Union!17931) (regOne!36374 r!11554))) b!7110291))

(declare-fun b!7110292 () Bool)

(declare-fun e!4273096 () Bool)

(assert (=> b!7110292 (= e!4273096 tp_is_empty!45095)))

(declare-fun b!7110294 () Bool)

(declare-fun tp!1955933 () Bool)

(assert (=> b!7110294 (= e!4273096 tp!1955933)))

(declare-fun b!7110295 () Bool)

(declare-fun tp!1955937 () Bool)

(declare-fun tp!1955934 () Bool)

(assert (=> b!7110295 (= e!4273096 (and tp!1955937 tp!1955934))))

(declare-fun b!7110293 () Bool)

(declare-fun tp!1955935 () Bool)

(declare-fun tp!1955936 () Bool)

(assert (=> b!7110293 (= e!4273096 (and tp!1955935 tp!1955936))))

(assert (=> b!7109944 (= tp!1955856 e!4273096)))

(assert (= (and b!7109944 ((_ is ElementMatch!17931) (regTwo!36374 r!11554))) b!7110292))

(assert (= (and b!7109944 ((_ is Concat!26776) (regTwo!36374 r!11554))) b!7110293))

(assert (= (and b!7109944 ((_ is Star!17931) (regTwo!36374 r!11554))) b!7110294))

(assert (= (and b!7109944 ((_ is Union!17931) (regTwo!36374 r!11554))) b!7110295))

(declare-fun b!7110296 () Bool)

(declare-fun e!4273097 () Bool)

(assert (=> b!7110296 (= e!4273097 tp_is_empty!45095)))

(declare-fun b!7110298 () Bool)

(declare-fun tp!1955938 () Bool)

(assert (=> b!7110298 (= e!4273097 tp!1955938)))

(declare-fun b!7110299 () Bool)

(declare-fun tp!1955942 () Bool)

(declare-fun tp!1955939 () Bool)

(assert (=> b!7110299 (= e!4273097 (and tp!1955942 tp!1955939))))

(declare-fun b!7110297 () Bool)

(declare-fun tp!1955940 () Bool)

(declare-fun tp!1955941 () Bool)

(assert (=> b!7110297 (= e!4273097 (and tp!1955940 tp!1955941))))

(assert (=> b!7109942 (= tp!1955852 e!4273097)))

(assert (= (and b!7109942 ((_ is ElementMatch!17931) (reg!18260 r!11554))) b!7110296))

(assert (= (and b!7109942 ((_ is Concat!26776) (reg!18260 r!11554))) b!7110297))

(assert (= (and b!7109942 ((_ is Star!17931) (reg!18260 r!11554))) b!7110298))

(assert (= (and b!7109942 ((_ is Union!17931) (reg!18260 r!11554))) b!7110299))

(declare-fun b!7110300 () Bool)

(declare-fun e!4273098 () Bool)

(declare-fun tp!1955943 () Bool)

(declare-fun tp!1955944 () Bool)

(assert (=> b!7110300 (= e!4273098 (and tp!1955943 tp!1955944))))

(assert (=> b!7109943 (= tp!1955855 e!4273098)))

(assert (= (and b!7109943 ((_ is Cons!68768) (exprs!7425 auxCtx!45))) b!7110300))

(check-sat (not b!7110285) (not bm!648634) (not d!2220003) (not bm!648571) (not b!7110033) (not bm!648622) (not b!7110260) (not bm!648651) (not b!7110084) (not bm!648626) (not d!2220043) (not b!7110002) (not b!7110291) (not b!7110290) (not d!2219997) (not d!2220069) (not b!7110299) (not d!2220041) (not d!2220067) (not d!2220061) (not b!7110286) (not b!7110269) (not b!7110185) (not bm!648652) (not b!7110179) (not b!7110146) (not b!7110294) (not d!2220001) (not d!2219995) (not bm!648662) (not bm!648638) (not b!7110168) (not b!7110295) (not b!7110300) (not b!7110289) (not bm!648633) (not d!2220047) (not bm!648669) (not bm!648670) (not b!7110287) (not b!7110293) (not bm!648658) (not d!2219987) (not bm!648650) (not bm!648674) (not bm!648580) (not b!7110297) (not bm!648579) (not b!7110298) (not b!7110085) (not b!7110186) (not d!2220059) (not b!7110124) (not b!7110282) (not b!7110283) (not bm!648621) (not b!7110281) (not bm!648645) (not bm!648657) (not b!7110194) (not bm!648656) (not bm!648570) tp_is_empty!45095 (not bm!648646))
(check-sat)
