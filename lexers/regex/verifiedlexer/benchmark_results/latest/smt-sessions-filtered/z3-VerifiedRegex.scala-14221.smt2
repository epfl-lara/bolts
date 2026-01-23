; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744578 () Bool)

(assert start!744578)

(declare-fun b!7892064 () Bool)

(declare-fun e!4658934 () Bool)

(declare-fun tp_is_empty!52829 () Bool)

(declare-fun tp!2348884 () Bool)

(assert (=> b!7892064 (= e!4658934 (and tp_is_empty!52829 tp!2348884))))

(declare-fun res!3131826 () Bool)

(declare-fun e!4658933 () Bool)

(assert (=> start!744578 (=> (not res!3131826) (not e!4658933))))

(declare-datatypes ((C!42756 0))(
  ( (C!42757 (val!31840 Int)) )
))
(declare-datatypes ((Regex!21215 0))(
  ( (ElementMatch!21215 (c!1448899 C!42756)) (Concat!30060 (regOne!42942 Regex!21215) (regTwo!42942 Regex!21215)) (EmptyExpr!21215) (Star!21215 (reg!21544 Regex!21215)) (EmptyLang!21215) (Union!21215 (regOne!42943 Regex!21215) (regTwo!42943 Regex!21215)) )
))
(declare-fun r!14100 () Regex!21215)

(declare-fun validRegex!11625 (Regex!21215) Bool)

(assert (=> start!744578 (= res!3131826 (validRegex!11625 r!14100))))

(assert (=> start!744578 e!4658933))

(declare-fun e!4658936 () Bool)

(assert (=> start!744578 e!4658936))

(declare-fun e!4658937 () Bool)

(assert (=> start!744578 (and e!4658934 e!4658937)))

(declare-fun e!4658935 () Bool)

(assert (=> start!744578 e!4658935))

(declare-fun b!7892065 () Bool)

(assert (=> b!7892065 (= e!4658936 tp_is_empty!52829)))

(declare-datatypes ((List!74072 0))(
  ( (Nil!73948) (Cons!73948 (h!80396 C!42756) (t!388807 List!74072)) )
))
(declare-fun s!9586 () List!74072)

(declare-datatypes ((tuple2!70068 0))(
  ( (tuple2!70069 (_1!38337 List!74072) (_2!38337 List!74072)) )
))
(declare-fun cut!3 () tuple2!70068)

(declare-fun b!7892066 () Bool)

(declare-fun size!42856 (List!74072) Int)

(declare-fun regexDepth!519 (Regex!21215) Int)

(assert (=> b!7892066 (= e!4658933 (>= (+ (size!42856 (_2!38337 cut!3)) (regexDepth!519 (regTwo!42942 r!14100))) (+ (size!42856 s!9586) (regexDepth!519 r!14100))))))

(declare-fun b!7892067 () Bool)

(declare-fun res!3131825 () Bool)

(assert (=> b!7892067 (=> (not res!3131825) (not e!4658933))))

(declare-fun ++!18119 (List!74072 List!74072) List!74072)

(assert (=> b!7892067 (= res!3131825 (= (++!18119 (_1!38337 cut!3) (_2!38337 cut!3)) s!9586))))

(declare-fun b!7892068 () Bool)

(declare-fun tp!2348885 () Bool)

(declare-fun tp!2348888 () Bool)

(assert (=> b!7892068 (= e!4658936 (and tp!2348885 tp!2348888))))

(declare-fun b!7892069 () Bool)

(declare-fun res!3131828 () Bool)

(assert (=> b!7892069 (=> (not res!3131828) (not e!4658933))))

(declare-fun matchRSpec!4676 (Regex!21215 List!74072) Bool)

(assert (=> b!7892069 (= res!3131828 (matchRSpec!4676 (regOne!42942 r!14100) (_1!38337 cut!3)))))

(declare-fun b!7892070 () Bool)

(declare-fun tp!2348886 () Bool)

(assert (=> b!7892070 (= e!4658937 (and tp_is_empty!52829 tp!2348886))))

(declare-fun b!7892071 () Bool)

(declare-fun res!3131827 () Bool)

(assert (=> b!7892071 (=> (not res!3131827) (not e!4658933))))

(get-info :version)

(assert (=> b!7892071 (= res!3131827 (and (not ((_ is EmptyExpr!21215) r!14100)) (not ((_ is EmptyLang!21215) r!14100)) (not ((_ is ElementMatch!21215) r!14100)) (not ((_ is Union!21215) r!14100)) (not ((_ is Star!21215) r!14100))))))

(declare-fun b!7892072 () Bool)

(declare-fun tp!2348883 () Bool)

(declare-fun tp!2348890 () Bool)

(assert (=> b!7892072 (= e!4658936 (and tp!2348883 tp!2348890))))

(declare-fun b!7892073 () Bool)

(declare-fun tp!2348889 () Bool)

(assert (=> b!7892073 (= e!4658936 tp!2348889)))

(declare-fun b!7892074 () Bool)

(declare-fun tp!2348887 () Bool)

(assert (=> b!7892074 (= e!4658935 (and tp_is_empty!52829 tp!2348887))))

(assert (= (and start!744578 res!3131826) b!7892071))

(assert (= (and b!7892071 res!3131827) b!7892067))

(assert (= (and b!7892067 res!3131825) b!7892069))

(assert (= (and b!7892069 res!3131828) b!7892066))

(assert (= (and start!744578 ((_ is ElementMatch!21215) r!14100)) b!7892065))

(assert (= (and start!744578 ((_ is Concat!30060) r!14100)) b!7892068))

(assert (= (and start!744578 ((_ is Star!21215) r!14100)) b!7892073))

(assert (= (and start!744578 ((_ is Union!21215) r!14100)) b!7892072))

(assert (= (and start!744578 ((_ is Cons!73948) (_1!38337 cut!3))) b!7892064))

(assert (= (and start!744578 ((_ is Cons!73948) (_2!38337 cut!3))) b!7892070))

(assert (= (and start!744578 ((_ is Cons!73948) s!9586)) b!7892074))

(declare-fun m!8271042 () Bool)

(assert (=> start!744578 m!8271042))

(declare-fun m!8271044 () Bool)

(assert (=> b!7892066 m!8271044))

(declare-fun m!8271046 () Bool)

(assert (=> b!7892066 m!8271046))

(declare-fun m!8271048 () Bool)

(assert (=> b!7892066 m!8271048))

(declare-fun m!8271050 () Bool)

(assert (=> b!7892066 m!8271050))

(declare-fun m!8271052 () Bool)

(assert (=> b!7892067 m!8271052))

(declare-fun m!8271054 () Bool)

(assert (=> b!7892069 m!8271054))

(check-sat (not b!7892074) (not b!7892068) tp_is_empty!52829 (not b!7892067) (not b!7892066) (not b!7892064) (not b!7892072) (not b!7892073) (not b!7892070) (not b!7892069) (not start!744578))
(check-sat)
(get-model)

(declare-fun b!7892175 () Bool)

(assert (=> b!7892175 true))

(assert (=> b!7892175 true))

(declare-fun bs!1967649 () Bool)

(declare-fun b!7892178 () Bool)

(assert (= bs!1967649 (and b!7892178 b!7892175)))

(declare-fun lambda!472199 () Int)

(declare-fun lambda!472196 () Int)

(assert (=> bs!1967649 (not (= lambda!472199 lambda!472196))))

(assert (=> b!7892178 true))

(assert (=> b!7892178 true))

(declare-fun b!7892174 () Bool)

(declare-fun c!1448925 () Bool)

(assert (=> b!7892174 (= c!1448925 ((_ is ElementMatch!21215) (regOne!42942 r!14100)))))

(declare-fun e!4659003 () Bool)

(declare-fun e!4659005 () Bool)

(assert (=> b!7892174 (= e!4659003 e!4659005)))

(declare-fun e!4659004 () Bool)

(declare-fun call!732566 () Bool)

(assert (=> b!7892175 (= e!4659004 call!732566)))

(declare-fun b!7892176 () Bool)

(declare-fun e!4659002 () Bool)

(declare-fun e!4659001 () Bool)

(assert (=> b!7892176 (= e!4659002 e!4659001)))

(declare-fun res!3131879 () Bool)

(assert (=> b!7892176 (= res!3131879 (matchRSpec!4676 (regOne!42943 (regOne!42942 r!14100)) (_1!38337 cut!3)))))

(assert (=> b!7892176 (=> res!3131879 e!4659001)))

(declare-fun d!2357070 () Bool)

(declare-fun c!1448927 () Bool)

(assert (=> d!2357070 (= c!1448927 ((_ is EmptyExpr!21215) (regOne!42942 r!14100)))))

(declare-fun e!4659000 () Bool)

(assert (=> d!2357070 (= (matchRSpec!4676 (regOne!42942 r!14100) (_1!38337 cut!3)) e!4659000)))

(declare-fun b!7892177 () Bool)

(declare-fun e!4658999 () Bool)

(assert (=> b!7892177 (= e!4659002 e!4658999)))

(declare-fun c!1448928 () Bool)

(assert (=> b!7892177 (= c!1448928 ((_ is Star!21215) (regOne!42942 r!14100)))))

(assert (=> b!7892178 (= e!4658999 call!732566)))

(declare-fun b!7892179 () Bool)

(assert (=> b!7892179 (= e!4659000 e!4659003)))

(declare-fun res!3131878 () Bool)

(assert (=> b!7892179 (= res!3131878 (not ((_ is EmptyLang!21215) (regOne!42942 r!14100))))))

(assert (=> b!7892179 (=> (not res!3131878) (not e!4659003))))

(declare-fun b!7892180 () Bool)

(assert (=> b!7892180 (= e!4659001 (matchRSpec!4676 (regTwo!42943 (regOne!42942 r!14100)) (_1!38337 cut!3)))))

(declare-fun b!7892181 () Bool)

(declare-fun res!3131880 () Bool)

(assert (=> b!7892181 (=> res!3131880 e!4659004)))

(declare-fun call!732567 () Bool)

(assert (=> b!7892181 (= res!3131880 call!732567)))

(assert (=> b!7892181 (= e!4658999 e!4659004)))

(declare-fun b!7892182 () Bool)

(assert (=> b!7892182 (= e!4659005 (= (_1!38337 cut!3) (Cons!73948 (c!1448899 (regOne!42942 r!14100)) Nil!73948)))))

(declare-fun bm!732561 () Bool)

(declare-fun Exists!4765 (Int) Bool)

(assert (=> bm!732561 (= call!732566 (Exists!4765 (ite c!1448928 lambda!472196 lambda!472199)))))

(declare-fun b!7892183 () Bool)

(assert (=> b!7892183 (= e!4659000 call!732567)))

(declare-fun b!7892184 () Bool)

(declare-fun c!1448926 () Bool)

(assert (=> b!7892184 (= c!1448926 ((_ is Union!21215) (regOne!42942 r!14100)))))

(assert (=> b!7892184 (= e!4659005 e!4659002)))

(declare-fun bm!732562 () Bool)

(declare-fun isEmpty!42430 (List!74072) Bool)

(assert (=> bm!732562 (= call!732567 (isEmpty!42430 (_1!38337 cut!3)))))

(assert (= (and d!2357070 c!1448927) b!7892183))

(assert (= (and d!2357070 (not c!1448927)) b!7892179))

(assert (= (and b!7892179 res!3131878) b!7892174))

(assert (= (and b!7892174 c!1448925) b!7892182))

(assert (= (and b!7892174 (not c!1448925)) b!7892184))

(assert (= (and b!7892184 c!1448926) b!7892176))

(assert (= (and b!7892184 (not c!1448926)) b!7892177))

(assert (= (and b!7892176 (not res!3131879)) b!7892180))

(assert (= (and b!7892177 c!1448928) b!7892181))

(assert (= (and b!7892177 (not c!1448928)) b!7892178))

(assert (= (and b!7892181 (not res!3131880)) b!7892175))

(assert (= (or b!7892175 b!7892178) bm!732561))

(assert (= (or b!7892183 b!7892181) bm!732562))

(declare-fun m!8271074 () Bool)

(assert (=> b!7892176 m!8271074))

(declare-fun m!8271076 () Bool)

(assert (=> b!7892180 m!8271076))

(declare-fun m!8271078 () Bool)

(assert (=> bm!732561 m!8271078))

(declare-fun m!8271080 () Bool)

(assert (=> bm!732562 m!8271080))

(assert (=> b!7892069 d!2357070))

(declare-fun b!7892226 () Bool)

(declare-fun e!4659033 () Bool)

(declare-fun call!732582 () Bool)

(assert (=> b!7892226 (= e!4659033 call!732582)))

(declare-fun b!7892227 () Bool)

(declare-fun e!4659032 () Bool)

(assert (=> b!7892227 (= e!4659032 e!4659033)))

(declare-fun res!3131902 () Bool)

(assert (=> b!7892227 (=> (not res!3131902) (not e!4659033))))

(declare-fun call!732581 () Bool)

(assert (=> b!7892227 (= res!3131902 call!732581)))

(declare-fun b!7892228 () Bool)

(declare-fun e!4659035 () Bool)

(declare-fun e!4659029 () Bool)

(assert (=> b!7892228 (= e!4659035 e!4659029)))

(declare-fun c!1448938 () Bool)

(assert (=> b!7892228 (= c!1448938 ((_ is Union!21215) r!14100))))

(declare-fun bm!732575 () Bool)

(declare-fun c!1448937 () Bool)

(declare-fun call!732580 () Bool)

(assert (=> bm!732575 (= call!732580 (validRegex!11625 (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(declare-fun d!2357078 () Bool)

(declare-fun res!3131900 () Bool)

(declare-fun e!4659031 () Bool)

(assert (=> d!2357078 (=> res!3131900 e!4659031)))

(assert (=> d!2357078 (= res!3131900 ((_ is ElementMatch!21215) r!14100))))

(assert (=> d!2357078 (= (validRegex!11625 r!14100) e!4659031)))

(declare-fun bm!732576 () Bool)

(assert (=> bm!732576 (= call!732581 (validRegex!11625 (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun b!7892229 () Bool)

(assert (=> b!7892229 (= e!4659031 e!4659035)))

(assert (=> b!7892229 (= c!1448937 ((_ is Star!21215) r!14100))))

(declare-fun b!7892230 () Bool)

(declare-fun e!4659030 () Bool)

(assert (=> b!7892230 (= e!4659030 call!732580)))

(declare-fun b!7892231 () Bool)

(declare-fun res!3131899 () Bool)

(declare-fun e!4659034 () Bool)

(assert (=> b!7892231 (=> (not res!3131899) (not e!4659034))))

(assert (=> b!7892231 (= res!3131899 call!732582)))

(assert (=> b!7892231 (= e!4659029 e!4659034)))

(declare-fun b!7892232 () Bool)

(declare-fun res!3131901 () Bool)

(assert (=> b!7892232 (=> res!3131901 e!4659032)))

(assert (=> b!7892232 (= res!3131901 (not ((_ is Concat!30060) r!14100)))))

(assert (=> b!7892232 (= e!4659029 e!4659032)))

(declare-fun b!7892233 () Bool)

(assert (=> b!7892233 (= e!4659035 e!4659030)))

(declare-fun res!3131898 () Bool)

(declare-fun nullable!9470 (Regex!21215) Bool)

(assert (=> b!7892233 (= res!3131898 (not (nullable!9470 (reg!21544 r!14100))))))

(assert (=> b!7892233 (=> (not res!3131898) (not e!4659030))))

(declare-fun b!7892234 () Bool)

(assert (=> b!7892234 (= e!4659034 call!732581)))

(declare-fun bm!732577 () Bool)

(assert (=> bm!732577 (= call!732582 call!732580)))

(assert (= (and d!2357078 (not res!3131900)) b!7892229))

(assert (= (and b!7892229 c!1448937) b!7892233))

(assert (= (and b!7892229 (not c!1448937)) b!7892228))

(assert (= (and b!7892233 res!3131898) b!7892230))

(assert (= (and b!7892228 c!1448938) b!7892231))

(assert (= (and b!7892228 (not c!1448938)) b!7892232))

(assert (= (and b!7892231 res!3131899) b!7892234))

(assert (= (and b!7892232 (not res!3131901)) b!7892227))

(assert (= (and b!7892227 res!3131902) b!7892226))

(assert (= (or b!7892234 b!7892227) bm!732576))

(assert (= (or b!7892231 b!7892226) bm!732577))

(assert (= (or b!7892230 bm!732577) bm!732575))

(declare-fun m!8271090 () Bool)

(assert (=> bm!732575 m!8271090))

(declare-fun m!8271092 () Bool)

(assert (=> bm!732576 m!8271092))

(declare-fun m!8271094 () Bool)

(assert (=> b!7892233 m!8271094))

(assert (=> start!744578 d!2357078))

(declare-fun d!2357082 () Bool)

(declare-fun lt!2681608 () Int)

(assert (=> d!2357082 (>= lt!2681608 0)))

(declare-fun e!4659041 () Int)

(assert (=> d!2357082 (= lt!2681608 e!4659041)))

(declare-fun c!1448944 () Bool)

(assert (=> d!2357082 (= c!1448944 ((_ is Nil!73948) (_2!38337 cut!3)))))

(assert (=> d!2357082 (= (size!42856 (_2!38337 cut!3)) lt!2681608)))

(declare-fun b!7892245 () Bool)

(assert (=> b!7892245 (= e!4659041 0)))

(declare-fun b!7892246 () Bool)

(assert (=> b!7892246 (= e!4659041 (+ 1 (size!42856 (t!388807 (_2!38337 cut!3)))))))

(assert (= (and d!2357082 c!1448944) b!7892245))

(assert (= (and d!2357082 (not c!1448944)) b!7892246))

(declare-fun m!8271098 () Bool)

(assert (=> b!7892246 m!8271098))

(assert (=> b!7892066 d!2357082))

(declare-fun b!7892332 () Bool)

(declare-fun c!1448981 () Bool)

(assert (=> b!7892332 (= c!1448981 ((_ is Star!21215) (regTwo!42942 r!14100)))))

(declare-fun e!4659094 () Bool)

(declare-fun e!4659100 () Bool)

(assert (=> b!7892332 (= e!4659094 e!4659100)))

(declare-fun b!7892333 () Bool)

(declare-fun lt!2681614 () Int)

(declare-fun call!732622 () Int)

(assert (=> b!7892333 (= e!4659100 (> lt!2681614 call!732622))))

(declare-fun c!1448982 () Bool)

(declare-fun call!732623 () Int)

(declare-fun bm!732614 () Bool)

(declare-fun c!1448985 () Bool)

(assert (=> bm!732614 (= call!732623 (regexDepth!519 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))))))

(declare-fun bm!732615 () Bool)

(declare-fun call!732620 () Int)

(declare-fun c!1448980 () Bool)

(declare-fun c!1448984 () Bool)

(assert (=> bm!732615 (= call!732620 (regexDepth!519 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))))))

(declare-fun b!7892334 () Bool)

(declare-fun e!4659096 () Bool)

(declare-fun call!732624 () Int)

(assert (=> b!7892334 (= e!4659096 (> lt!2681614 call!732624))))

(declare-fun b!7892335 () Bool)

(declare-fun e!4659092 () Int)

(assert (=> b!7892335 (= e!4659092 (+ 1 call!732620))))

(declare-fun b!7892336 () Bool)

(declare-fun e!4659101 () Bool)

(assert (=> b!7892336 (= e!4659101 e!4659096)))

(declare-fun res!3131920 () Bool)

(assert (=> b!7892336 (= res!3131920 (> lt!2681614 call!732623))))

(assert (=> b!7892336 (=> (not res!3131920) (not e!4659096))))

(declare-fun b!7892337 () Bool)

(assert (=> b!7892337 (= c!1448980 ((_ is Union!21215) (regTwo!42942 r!14100)))))

(declare-fun e!4659099 () Int)

(assert (=> b!7892337 (= e!4659092 e!4659099)))

(declare-fun b!7892338 () Bool)

(declare-fun e!4659093 () Int)

(assert (=> b!7892338 (= e!4659093 1)))

(declare-fun bm!732616 () Bool)

(assert (=> bm!732616 (= call!732622 call!732623)))

(declare-fun bm!732617 () Bool)

(declare-fun call!732618 () Int)

(assert (=> bm!732617 (= call!732618 (regexDepth!519 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun call!732619 () Int)

(declare-fun call!732621 () Int)

(declare-fun bm!732618 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!732618 (= call!732619 (maxBigInt!0 (ite c!1448980 call!732621 call!732618) (ite c!1448980 call!732618 call!732621)))))

(declare-fun b!7892339 () Bool)

(declare-fun e!4659098 () Bool)

(assert (=> b!7892339 (= e!4659098 e!4659101)))

(assert (=> b!7892339 (= c!1448982 ((_ is Union!21215) (regTwo!42942 r!14100)))))

(declare-fun d!2357086 () Bool)

(assert (=> d!2357086 e!4659098))

(declare-fun res!3131919 () Bool)

(assert (=> d!2357086 (=> (not res!3131919) (not e!4659098))))

(assert (=> d!2357086 (= res!3131919 (> lt!2681614 0))))

(declare-fun e!4659097 () Int)

(assert (=> d!2357086 (= lt!2681614 e!4659097)))

(declare-fun c!1448983 () Bool)

(assert (=> d!2357086 (= c!1448983 ((_ is ElementMatch!21215) (regTwo!42942 r!14100)))))

(assert (=> d!2357086 (= (regexDepth!519 (regTwo!42942 r!14100)) lt!2681614)))

(declare-fun bm!732613 () Bool)

(assert (=> bm!732613 (= call!732621 call!732620)))

(declare-fun bm!732619 () Bool)

(assert (=> bm!732619 (= call!732624 (regexDepth!519 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun b!7892340 () Bool)

(assert (=> b!7892340 (= e!4659097 1)))

(declare-fun b!7892341 () Bool)

(assert (=> b!7892341 (= e!4659101 e!4659094)))

(assert (=> b!7892341 (= c!1448985 ((_ is Concat!30060) (regTwo!42942 r!14100)))))

(declare-fun b!7892342 () Bool)

(assert (=> b!7892342 (= e!4659093 (+ 1 call!732619))))

(declare-fun b!7892343 () Bool)

(assert (=> b!7892343 (= e!4659097 e!4659092)))

(assert (=> b!7892343 (= c!1448984 ((_ is Star!21215) (regTwo!42942 r!14100)))))

(declare-fun b!7892344 () Bool)

(declare-fun res!3131918 () Bool)

(declare-fun e!4659095 () Bool)

(assert (=> b!7892344 (=> (not res!3131918) (not e!4659095))))

(assert (=> b!7892344 (= res!3131918 (> lt!2681614 call!732624))))

(assert (=> b!7892344 (= e!4659094 e!4659095)))

(declare-fun b!7892345 () Bool)

(assert (=> b!7892345 (= e!4659100 (= lt!2681614 1))))

(declare-fun b!7892346 () Bool)

(assert (=> b!7892346 (= e!4659099 e!4659093)))

(declare-fun c!1448986 () Bool)

(assert (=> b!7892346 (= c!1448986 ((_ is Concat!30060) (regTwo!42942 r!14100)))))

(declare-fun b!7892347 () Bool)

(assert (=> b!7892347 (= e!4659095 (> lt!2681614 call!732622))))

(declare-fun b!7892348 () Bool)

(assert (=> b!7892348 (= e!4659099 (+ 1 call!732619))))

(assert (= (and d!2357086 c!1448983) b!7892340))

(assert (= (and d!2357086 (not c!1448983)) b!7892343))

(assert (= (and b!7892343 c!1448984) b!7892335))

(assert (= (and b!7892343 (not c!1448984)) b!7892337))

(assert (= (and b!7892337 c!1448980) b!7892348))

(assert (= (and b!7892337 (not c!1448980)) b!7892346))

(assert (= (and b!7892346 c!1448986) b!7892342))

(assert (= (and b!7892346 (not c!1448986)) b!7892338))

(assert (= (or b!7892348 b!7892342) bm!732613))

(assert (= (or b!7892348 b!7892342) bm!732617))

(assert (= (or b!7892348 b!7892342) bm!732618))

(assert (= (or b!7892335 bm!732613) bm!732615))

(assert (= (and d!2357086 res!3131919) b!7892339))

(assert (= (and b!7892339 c!1448982) b!7892336))

(assert (= (and b!7892339 (not c!1448982)) b!7892341))

(assert (= (and b!7892336 res!3131920) b!7892334))

(assert (= (and b!7892341 c!1448985) b!7892344))

(assert (= (and b!7892341 (not c!1448985)) b!7892332))

(assert (= (and b!7892344 res!3131918) b!7892347))

(assert (= (and b!7892332 c!1448981) b!7892333))

(assert (= (and b!7892332 (not c!1448981)) b!7892345))

(assert (= (or b!7892347 b!7892333) bm!732616))

(assert (= (or b!7892336 bm!732616) bm!732614))

(assert (= (or b!7892334 b!7892344) bm!732619))

(declare-fun m!8271112 () Bool)

(assert (=> bm!732614 m!8271112))

(declare-fun m!8271114 () Bool)

(assert (=> bm!732618 m!8271114))

(declare-fun m!8271116 () Bool)

(assert (=> bm!732619 m!8271116))

(declare-fun m!8271118 () Bool)

(assert (=> bm!732617 m!8271118))

(declare-fun m!8271120 () Bool)

(assert (=> bm!732615 m!8271120))

(assert (=> b!7892066 d!2357086))

(declare-fun d!2357092 () Bool)

(declare-fun lt!2681617 () Int)

(assert (=> d!2357092 (>= lt!2681617 0)))

(declare-fun e!4659113 () Int)

(assert (=> d!2357092 (= lt!2681617 e!4659113)))

(declare-fun c!1448995 () Bool)

(assert (=> d!2357092 (= c!1448995 ((_ is Nil!73948) s!9586))))

(assert (=> d!2357092 (= (size!42856 s!9586) lt!2681617)))

(declare-fun b!7892368 () Bool)

(assert (=> b!7892368 (= e!4659113 0)))

(declare-fun b!7892369 () Bool)

(assert (=> b!7892369 (= e!4659113 (+ 1 (size!42856 (t!388807 s!9586))))))

(assert (= (and d!2357092 c!1448995) b!7892368))

(assert (= (and d!2357092 (not c!1448995)) b!7892369))

(declare-fun m!8271122 () Bool)

(assert (=> b!7892369 m!8271122))

(assert (=> b!7892066 d!2357092))

(declare-fun b!7892370 () Bool)

(declare-fun c!1448997 () Bool)

(assert (=> b!7892370 (= c!1448997 ((_ is Star!21215) r!14100))))

(declare-fun e!4659116 () Bool)

(declare-fun e!4659122 () Bool)

(assert (=> b!7892370 (= e!4659116 e!4659122)))

(declare-fun b!7892371 () Bool)

(declare-fun lt!2681618 () Int)

(declare-fun call!732636 () Int)

(assert (=> b!7892371 (= e!4659122 (> lt!2681618 call!732636))))

(declare-fun c!1448998 () Bool)

(declare-fun bm!732628 () Bool)

(declare-fun c!1449001 () Bool)

(declare-fun call!732637 () Int)

(assert (=> bm!732628 (= call!732637 (regexDepth!519 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))))))

(declare-fun bm!732629 () Bool)

(declare-fun c!1448996 () Bool)

(declare-fun c!1449000 () Bool)

(declare-fun call!732634 () Int)

(assert (=> bm!732629 (= call!732634 (regexDepth!519 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(declare-fun b!7892372 () Bool)

(declare-fun e!4659118 () Bool)

(declare-fun call!732638 () Int)

(assert (=> b!7892372 (= e!4659118 (> lt!2681618 call!732638))))

(declare-fun b!7892373 () Bool)

(declare-fun e!4659114 () Int)

(assert (=> b!7892373 (= e!4659114 (+ 1 call!732634))))

(declare-fun b!7892374 () Bool)

(declare-fun e!4659123 () Bool)

(assert (=> b!7892374 (= e!4659123 e!4659118)))

(declare-fun res!3131926 () Bool)

(assert (=> b!7892374 (= res!3131926 (> lt!2681618 call!732637))))

(assert (=> b!7892374 (=> (not res!3131926) (not e!4659118))))

(declare-fun b!7892375 () Bool)

(assert (=> b!7892375 (= c!1448996 ((_ is Union!21215) r!14100))))

(declare-fun e!4659121 () Int)

(assert (=> b!7892375 (= e!4659114 e!4659121)))

(declare-fun b!7892376 () Bool)

(declare-fun e!4659115 () Int)

(assert (=> b!7892376 (= e!4659115 1)))

(declare-fun bm!732630 () Bool)

(assert (=> bm!732630 (= call!732636 call!732637)))

(declare-fun bm!732631 () Bool)

(declare-fun call!732632 () Int)

(assert (=> bm!732631 (= call!732632 (regexDepth!519 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun call!732633 () Int)

(declare-fun bm!732632 () Bool)

(declare-fun call!732635 () Int)

(assert (=> bm!732632 (= call!732633 (maxBigInt!0 (ite c!1448996 call!732635 call!732632) (ite c!1448996 call!732632 call!732635)))))

(declare-fun b!7892377 () Bool)

(declare-fun e!4659120 () Bool)

(assert (=> b!7892377 (= e!4659120 e!4659123)))

(assert (=> b!7892377 (= c!1448998 ((_ is Union!21215) r!14100))))

(declare-fun d!2357094 () Bool)

(assert (=> d!2357094 e!4659120))

(declare-fun res!3131925 () Bool)

(assert (=> d!2357094 (=> (not res!3131925) (not e!4659120))))

(assert (=> d!2357094 (= res!3131925 (> lt!2681618 0))))

(declare-fun e!4659119 () Int)

(assert (=> d!2357094 (= lt!2681618 e!4659119)))

(declare-fun c!1448999 () Bool)

(assert (=> d!2357094 (= c!1448999 ((_ is ElementMatch!21215) r!14100))))

(assert (=> d!2357094 (= (regexDepth!519 r!14100) lt!2681618)))

(declare-fun bm!732627 () Bool)

(assert (=> bm!732627 (= call!732635 call!732634)))

(declare-fun bm!732633 () Bool)

(assert (=> bm!732633 (= call!732638 (regexDepth!519 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun b!7892378 () Bool)

(assert (=> b!7892378 (= e!4659119 1)))

(declare-fun b!7892379 () Bool)

(assert (=> b!7892379 (= e!4659123 e!4659116)))

(assert (=> b!7892379 (= c!1449001 ((_ is Concat!30060) r!14100))))

(declare-fun b!7892380 () Bool)

(assert (=> b!7892380 (= e!4659115 (+ 1 call!732633))))

(declare-fun b!7892381 () Bool)

(assert (=> b!7892381 (= e!4659119 e!4659114)))

(assert (=> b!7892381 (= c!1449000 ((_ is Star!21215) r!14100))))

(declare-fun b!7892382 () Bool)

(declare-fun res!3131924 () Bool)

(declare-fun e!4659117 () Bool)

(assert (=> b!7892382 (=> (not res!3131924) (not e!4659117))))

(assert (=> b!7892382 (= res!3131924 (> lt!2681618 call!732638))))

(assert (=> b!7892382 (= e!4659116 e!4659117)))

(declare-fun b!7892383 () Bool)

(assert (=> b!7892383 (= e!4659122 (= lt!2681618 1))))

(declare-fun b!7892384 () Bool)

(assert (=> b!7892384 (= e!4659121 e!4659115)))

(declare-fun c!1449002 () Bool)

(assert (=> b!7892384 (= c!1449002 ((_ is Concat!30060) r!14100))))

(declare-fun b!7892385 () Bool)

(assert (=> b!7892385 (= e!4659117 (> lt!2681618 call!732636))))

(declare-fun b!7892386 () Bool)

(assert (=> b!7892386 (= e!4659121 (+ 1 call!732633))))

(assert (= (and d!2357094 c!1448999) b!7892378))

(assert (= (and d!2357094 (not c!1448999)) b!7892381))

(assert (= (and b!7892381 c!1449000) b!7892373))

(assert (= (and b!7892381 (not c!1449000)) b!7892375))

(assert (= (and b!7892375 c!1448996) b!7892386))

(assert (= (and b!7892375 (not c!1448996)) b!7892384))

(assert (= (and b!7892384 c!1449002) b!7892380))

(assert (= (and b!7892384 (not c!1449002)) b!7892376))

(assert (= (or b!7892386 b!7892380) bm!732627))

(assert (= (or b!7892386 b!7892380) bm!732631))

(assert (= (or b!7892386 b!7892380) bm!732632))

(assert (= (or b!7892373 bm!732627) bm!732629))

(assert (= (and d!2357094 res!3131925) b!7892377))

(assert (= (and b!7892377 c!1448998) b!7892374))

(assert (= (and b!7892377 (not c!1448998)) b!7892379))

(assert (= (and b!7892374 res!3131926) b!7892372))

(assert (= (and b!7892379 c!1449001) b!7892382))

(assert (= (and b!7892379 (not c!1449001)) b!7892370))

(assert (= (and b!7892382 res!3131924) b!7892385))

(assert (= (and b!7892370 c!1448997) b!7892371))

(assert (= (and b!7892370 (not c!1448997)) b!7892383))

(assert (= (or b!7892385 b!7892371) bm!732630))

(assert (= (or b!7892374 bm!732630) bm!732628))

(assert (= (or b!7892372 b!7892382) bm!732633))

(declare-fun m!8271134 () Bool)

(assert (=> bm!732628 m!8271134))

(declare-fun m!8271136 () Bool)

(assert (=> bm!732632 m!8271136))

(declare-fun m!8271138 () Bool)

(assert (=> bm!732633 m!8271138))

(declare-fun m!8271140 () Bool)

(assert (=> bm!732631 m!8271140))

(declare-fun m!8271142 () Bool)

(assert (=> bm!732629 m!8271142))

(assert (=> b!7892066 d!2357094))

(declare-fun d!2357096 () Bool)

(declare-fun e!4659140 () Bool)

(assert (=> d!2357096 e!4659140))

(declare-fun res!3131932 () Bool)

(assert (=> d!2357096 (=> (not res!3131932) (not e!4659140))))

(declare-fun lt!2681621 () List!74072)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15699 (List!74072) (InoxSet C!42756))

(assert (=> d!2357096 (= res!3131932 (= (content!15699 lt!2681621) ((_ map or) (content!15699 (_1!38337 cut!3)) (content!15699 (_2!38337 cut!3)))))))

(declare-fun e!4659141 () List!74072)

(assert (=> d!2357096 (= lt!2681621 e!4659141)))

(declare-fun c!1449005 () Bool)

(assert (=> d!2357096 (= c!1449005 ((_ is Nil!73948) (_1!38337 cut!3)))))

(assert (=> d!2357096 (= (++!18119 (_1!38337 cut!3) (_2!38337 cut!3)) lt!2681621)))

(declare-fun b!7892434 () Bool)

(declare-fun res!3131931 () Bool)

(assert (=> b!7892434 (=> (not res!3131931) (not e!4659140))))

(assert (=> b!7892434 (= res!3131931 (= (size!42856 lt!2681621) (+ (size!42856 (_1!38337 cut!3)) (size!42856 (_2!38337 cut!3)))))))

(declare-fun b!7892432 () Bool)

(assert (=> b!7892432 (= e!4659141 (_2!38337 cut!3))))

(declare-fun b!7892433 () Bool)

(assert (=> b!7892433 (= e!4659141 (Cons!73948 (h!80396 (_1!38337 cut!3)) (++!18119 (t!388807 (_1!38337 cut!3)) (_2!38337 cut!3))))))

(declare-fun b!7892435 () Bool)

(assert (=> b!7892435 (= e!4659140 (or (not (= (_2!38337 cut!3) Nil!73948)) (= lt!2681621 (_1!38337 cut!3))))))

(assert (= (and d!2357096 c!1449005) b!7892432))

(assert (= (and d!2357096 (not c!1449005)) b!7892433))

(assert (= (and d!2357096 res!3131932) b!7892434))

(assert (= (and b!7892434 res!3131931) b!7892435))

(declare-fun m!8271144 () Bool)

(assert (=> d!2357096 m!8271144))

(declare-fun m!8271146 () Bool)

(assert (=> d!2357096 m!8271146))

(declare-fun m!8271148 () Bool)

(assert (=> d!2357096 m!8271148))

(declare-fun m!8271150 () Bool)

(assert (=> b!7892434 m!8271150))

(declare-fun m!8271152 () Bool)

(assert (=> b!7892434 m!8271152))

(assert (=> b!7892434 m!8271044))

(declare-fun m!8271154 () Bool)

(assert (=> b!7892433 m!8271154))

(assert (=> b!7892067 d!2357096))

(declare-fun b!7892440 () Bool)

(declare-fun e!4659144 () Bool)

(declare-fun tp!2348933 () Bool)

(assert (=> b!7892440 (= e!4659144 (and tp_is_empty!52829 tp!2348933))))

(assert (=> b!7892074 (= tp!2348887 e!4659144)))

(assert (= (and b!7892074 ((_ is Cons!73948) (t!388807 s!9586))) b!7892440))

(declare-fun b!7892441 () Bool)

(declare-fun e!4659145 () Bool)

(declare-fun tp!2348934 () Bool)

(assert (=> b!7892441 (= e!4659145 (and tp_is_empty!52829 tp!2348934))))

(assert (=> b!7892064 (= tp!2348884 e!4659145)))

(assert (= (and b!7892064 ((_ is Cons!73948) (t!388807 (_1!38337 cut!3)))) b!7892441))

(declare-fun e!4659148 () Bool)

(assert (=> b!7892073 (= tp!2348889 e!4659148)))

(declare-fun b!7892454 () Bool)

(declare-fun tp!2348946 () Bool)

(assert (=> b!7892454 (= e!4659148 tp!2348946)))

(declare-fun b!7892453 () Bool)

(declare-fun tp!2348945 () Bool)

(declare-fun tp!2348947 () Bool)

(assert (=> b!7892453 (= e!4659148 (and tp!2348945 tp!2348947))))

(declare-fun b!7892455 () Bool)

(declare-fun tp!2348948 () Bool)

(declare-fun tp!2348949 () Bool)

(assert (=> b!7892455 (= e!4659148 (and tp!2348948 tp!2348949))))

(declare-fun b!7892452 () Bool)

(assert (=> b!7892452 (= e!4659148 tp_is_empty!52829)))

(assert (= (and b!7892073 ((_ is ElementMatch!21215) (reg!21544 r!14100))) b!7892452))

(assert (= (and b!7892073 ((_ is Concat!30060) (reg!21544 r!14100))) b!7892453))

(assert (= (and b!7892073 ((_ is Star!21215) (reg!21544 r!14100))) b!7892454))

(assert (= (and b!7892073 ((_ is Union!21215) (reg!21544 r!14100))) b!7892455))

(declare-fun e!4659149 () Bool)

(assert (=> b!7892068 (= tp!2348885 e!4659149)))

(declare-fun b!7892458 () Bool)

(declare-fun tp!2348951 () Bool)

(assert (=> b!7892458 (= e!4659149 tp!2348951)))

(declare-fun b!7892457 () Bool)

(declare-fun tp!2348950 () Bool)

(declare-fun tp!2348952 () Bool)

(assert (=> b!7892457 (= e!4659149 (and tp!2348950 tp!2348952))))

(declare-fun b!7892459 () Bool)

(declare-fun tp!2348953 () Bool)

(declare-fun tp!2348954 () Bool)

(assert (=> b!7892459 (= e!4659149 (and tp!2348953 tp!2348954))))

(declare-fun b!7892456 () Bool)

(assert (=> b!7892456 (= e!4659149 tp_is_empty!52829)))

(assert (= (and b!7892068 ((_ is ElementMatch!21215) (regOne!42942 r!14100))) b!7892456))

(assert (= (and b!7892068 ((_ is Concat!30060) (regOne!42942 r!14100))) b!7892457))

(assert (= (and b!7892068 ((_ is Star!21215) (regOne!42942 r!14100))) b!7892458))

(assert (= (and b!7892068 ((_ is Union!21215) (regOne!42942 r!14100))) b!7892459))

(declare-fun e!4659150 () Bool)

(assert (=> b!7892068 (= tp!2348888 e!4659150)))

(declare-fun b!7892462 () Bool)

(declare-fun tp!2348956 () Bool)

(assert (=> b!7892462 (= e!4659150 tp!2348956)))

(declare-fun b!7892461 () Bool)

(declare-fun tp!2348955 () Bool)

(declare-fun tp!2348957 () Bool)

(assert (=> b!7892461 (= e!4659150 (and tp!2348955 tp!2348957))))

(declare-fun b!7892463 () Bool)

(declare-fun tp!2348958 () Bool)

(declare-fun tp!2348959 () Bool)

(assert (=> b!7892463 (= e!4659150 (and tp!2348958 tp!2348959))))

(declare-fun b!7892460 () Bool)

(assert (=> b!7892460 (= e!4659150 tp_is_empty!52829)))

(assert (= (and b!7892068 ((_ is ElementMatch!21215) (regTwo!42942 r!14100))) b!7892460))

(assert (= (and b!7892068 ((_ is Concat!30060) (regTwo!42942 r!14100))) b!7892461))

(assert (= (and b!7892068 ((_ is Star!21215) (regTwo!42942 r!14100))) b!7892462))

(assert (= (and b!7892068 ((_ is Union!21215) (regTwo!42942 r!14100))) b!7892463))

(declare-fun e!4659151 () Bool)

(assert (=> b!7892072 (= tp!2348883 e!4659151)))

(declare-fun b!7892466 () Bool)

(declare-fun tp!2348961 () Bool)

(assert (=> b!7892466 (= e!4659151 tp!2348961)))

(declare-fun b!7892465 () Bool)

(declare-fun tp!2348960 () Bool)

(declare-fun tp!2348962 () Bool)

(assert (=> b!7892465 (= e!4659151 (and tp!2348960 tp!2348962))))

(declare-fun b!7892467 () Bool)

(declare-fun tp!2348963 () Bool)

(declare-fun tp!2348964 () Bool)

(assert (=> b!7892467 (= e!4659151 (and tp!2348963 tp!2348964))))

(declare-fun b!7892464 () Bool)

(assert (=> b!7892464 (= e!4659151 tp_is_empty!52829)))

(assert (= (and b!7892072 ((_ is ElementMatch!21215) (regOne!42943 r!14100))) b!7892464))

(assert (= (and b!7892072 ((_ is Concat!30060) (regOne!42943 r!14100))) b!7892465))

(assert (= (and b!7892072 ((_ is Star!21215) (regOne!42943 r!14100))) b!7892466))

(assert (= (and b!7892072 ((_ is Union!21215) (regOne!42943 r!14100))) b!7892467))

(declare-fun e!4659152 () Bool)

(assert (=> b!7892072 (= tp!2348890 e!4659152)))

(declare-fun b!7892470 () Bool)

(declare-fun tp!2348966 () Bool)

(assert (=> b!7892470 (= e!4659152 tp!2348966)))

(declare-fun b!7892469 () Bool)

(declare-fun tp!2348965 () Bool)

(declare-fun tp!2348967 () Bool)

(assert (=> b!7892469 (= e!4659152 (and tp!2348965 tp!2348967))))

(declare-fun b!7892471 () Bool)

(declare-fun tp!2348968 () Bool)

(declare-fun tp!2348969 () Bool)

(assert (=> b!7892471 (= e!4659152 (and tp!2348968 tp!2348969))))

(declare-fun b!7892468 () Bool)

(assert (=> b!7892468 (= e!4659152 tp_is_empty!52829)))

(assert (= (and b!7892072 ((_ is ElementMatch!21215) (regTwo!42943 r!14100))) b!7892468))

(assert (= (and b!7892072 ((_ is Concat!30060) (regTwo!42943 r!14100))) b!7892469))

(assert (= (and b!7892072 ((_ is Star!21215) (regTwo!42943 r!14100))) b!7892470))

(assert (= (and b!7892072 ((_ is Union!21215) (regTwo!42943 r!14100))) b!7892471))

(declare-fun b!7892472 () Bool)

(declare-fun e!4659153 () Bool)

(declare-fun tp!2348970 () Bool)

(assert (=> b!7892472 (= e!4659153 (and tp_is_empty!52829 tp!2348970))))

(assert (=> b!7892070 (= tp!2348886 e!4659153)))

(assert (= (and b!7892070 ((_ is Cons!73948) (t!388807 (_2!38337 cut!3)))) b!7892472))

(check-sat (not b!7892457) (not b!7892369) (not b!7892467) (not b!7892472) (not bm!732576) (not bm!732631) (not bm!732562) (not b!7892462) (not b!7892461) (not bm!732633) (not b!7892466) (not b!7892454) (not b!7892180) (not b!7892470) (not bm!732561) (not b!7892453) (not bm!732614) (not bm!732618) (not bm!732629) (not d!2357096) tp_is_empty!52829 (not b!7892440) (not b!7892434) (not b!7892441) (not b!7892246) (not b!7892459) (not b!7892469) (not bm!732615) (not b!7892463) (not bm!732619) (not b!7892455) (not b!7892471) (not bm!732628) (not b!7892458) (not b!7892176) (not b!7892233) (not bm!732617) (not bm!732575) (not b!7892465) (not b!7892433) (not bm!732632))
(check-sat)
(get-model)

(declare-fun b!7892473 () Bool)

(declare-fun c!1449007 () Bool)

(assert (=> b!7892473 (= c!1449007 ((_ is Star!21215) (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(declare-fun e!4659156 () Bool)

(declare-fun e!4659162 () Bool)

(assert (=> b!7892473 (= e!4659156 e!4659162)))

(declare-fun b!7892474 () Bool)

(declare-fun lt!2681622 () Int)

(declare-fun call!732643 () Int)

(assert (=> b!7892474 (= e!4659162 (> lt!2681622 call!732643))))

(declare-fun bm!732635 () Bool)

(declare-fun call!732644 () Int)

(declare-fun c!1449011 () Bool)

(declare-fun c!1449008 () Bool)

(assert (=> bm!732635 (= call!732644 (regexDepth!519 (ite c!1449008 (regOne!42943 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))) (ite c!1449011 (regTwo!42942 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))) (reg!21544 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100))))))))))

(declare-fun call!732641 () Int)

(declare-fun bm!732636 () Bool)

(declare-fun c!1449006 () Bool)

(declare-fun c!1449010 () Bool)

(assert (=> bm!732636 (= call!732641 (regexDepth!519 (ite c!1449010 (reg!21544 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))) (ite c!1449006 (regOne!42943 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))) (regTwo!42942 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100))))))))))

(declare-fun b!7892475 () Bool)

(declare-fun e!4659158 () Bool)

(declare-fun call!732645 () Int)

(assert (=> b!7892475 (= e!4659158 (> lt!2681622 call!732645))))

(declare-fun b!7892476 () Bool)

(declare-fun e!4659154 () Int)

(assert (=> b!7892476 (= e!4659154 (+ 1 call!732641))))

(declare-fun b!7892477 () Bool)

(declare-fun e!4659163 () Bool)

(assert (=> b!7892477 (= e!4659163 e!4659158)))

(declare-fun res!3131935 () Bool)

(assert (=> b!7892477 (= res!3131935 (> lt!2681622 call!732644))))

(assert (=> b!7892477 (=> (not res!3131935) (not e!4659158))))

(declare-fun b!7892478 () Bool)

(assert (=> b!7892478 (= c!1449006 ((_ is Union!21215) (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(declare-fun e!4659161 () Int)

(assert (=> b!7892478 (= e!4659154 e!4659161)))

(declare-fun b!7892479 () Bool)

(declare-fun e!4659155 () Int)

(assert (=> b!7892479 (= e!4659155 1)))

(declare-fun bm!732637 () Bool)

(assert (=> bm!732637 (= call!732643 call!732644)))

(declare-fun call!732639 () Int)

(declare-fun bm!732638 () Bool)

(assert (=> bm!732638 (= call!732639 (regexDepth!519 (ite c!1449006 (regTwo!42943 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))) (regOne!42942 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))))

(declare-fun call!732640 () Int)

(declare-fun bm!732639 () Bool)

(declare-fun call!732642 () Int)

(assert (=> bm!732639 (= call!732640 (maxBigInt!0 (ite c!1449006 call!732642 call!732639) (ite c!1449006 call!732639 call!732642)))))

(declare-fun b!7892480 () Bool)

(declare-fun e!4659160 () Bool)

(assert (=> b!7892480 (= e!4659160 e!4659163)))

(assert (=> b!7892480 (= c!1449008 ((_ is Union!21215) (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(declare-fun d!2357098 () Bool)

(assert (=> d!2357098 e!4659160))

(declare-fun res!3131934 () Bool)

(assert (=> d!2357098 (=> (not res!3131934) (not e!4659160))))

(assert (=> d!2357098 (= res!3131934 (> lt!2681622 0))))

(declare-fun e!4659159 () Int)

(assert (=> d!2357098 (= lt!2681622 e!4659159)))

(declare-fun c!1449009 () Bool)

(assert (=> d!2357098 (= c!1449009 ((_ is ElementMatch!21215) (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(assert (=> d!2357098 (= (regexDepth!519 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))) lt!2681622)))

(declare-fun bm!732634 () Bool)

(assert (=> bm!732634 (= call!732642 call!732641)))

(declare-fun bm!732640 () Bool)

(assert (=> bm!732640 (= call!732645 (regexDepth!519 (ite c!1449008 (regTwo!42943 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))) (regOne!42942 (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))))

(declare-fun b!7892481 () Bool)

(assert (=> b!7892481 (= e!4659159 1)))

(declare-fun b!7892482 () Bool)

(assert (=> b!7892482 (= e!4659163 e!4659156)))

(assert (=> b!7892482 (= c!1449011 ((_ is Concat!30060) (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(declare-fun b!7892483 () Bool)

(assert (=> b!7892483 (= e!4659155 (+ 1 call!732640))))

(declare-fun b!7892484 () Bool)

(assert (=> b!7892484 (= e!4659159 e!4659154)))

(assert (=> b!7892484 (= c!1449010 ((_ is Star!21215) (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(declare-fun b!7892485 () Bool)

(declare-fun res!3131933 () Bool)

(declare-fun e!4659157 () Bool)

(assert (=> b!7892485 (=> (not res!3131933) (not e!4659157))))

(assert (=> b!7892485 (= res!3131933 (> lt!2681622 call!732645))))

(assert (=> b!7892485 (= e!4659156 e!4659157)))

(declare-fun b!7892486 () Bool)

(assert (=> b!7892486 (= e!4659162 (= lt!2681622 1))))

(declare-fun b!7892487 () Bool)

(assert (=> b!7892487 (= e!4659161 e!4659155)))

(declare-fun c!1449012 () Bool)

(assert (=> b!7892487 (= c!1449012 ((_ is Concat!30060) (ite c!1449000 (reg!21544 r!14100) (ite c!1448996 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(declare-fun b!7892488 () Bool)

(assert (=> b!7892488 (= e!4659157 (> lt!2681622 call!732643))))

(declare-fun b!7892489 () Bool)

(assert (=> b!7892489 (= e!4659161 (+ 1 call!732640))))

(assert (= (and d!2357098 c!1449009) b!7892481))

(assert (= (and d!2357098 (not c!1449009)) b!7892484))

(assert (= (and b!7892484 c!1449010) b!7892476))

(assert (= (and b!7892484 (not c!1449010)) b!7892478))

(assert (= (and b!7892478 c!1449006) b!7892489))

(assert (= (and b!7892478 (not c!1449006)) b!7892487))

(assert (= (and b!7892487 c!1449012) b!7892483))

(assert (= (and b!7892487 (not c!1449012)) b!7892479))

(assert (= (or b!7892489 b!7892483) bm!732634))

(assert (= (or b!7892489 b!7892483) bm!732638))

(assert (= (or b!7892489 b!7892483) bm!732639))

(assert (= (or b!7892476 bm!732634) bm!732636))

(assert (= (and d!2357098 res!3131934) b!7892480))

(assert (= (and b!7892480 c!1449008) b!7892477))

(assert (= (and b!7892480 (not c!1449008)) b!7892482))

(assert (= (and b!7892477 res!3131935) b!7892475))

(assert (= (and b!7892482 c!1449011) b!7892485))

(assert (= (and b!7892482 (not c!1449011)) b!7892473))

(assert (= (and b!7892485 res!3131933) b!7892488))

(assert (= (and b!7892473 c!1449007) b!7892474))

(assert (= (and b!7892473 (not c!1449007)) b!7892486))

(assert (= (or b!7892488 b!7892474) bm!732637))

(assert (= (or b!7892477 bm!732637) bm!732635))

(assert (= (or b!7892475 b!7892485) bm!732640))

(declare-fun m!8271156 () Bool)

(assert (=> bm!732635 m!8271156))

(declare-fun m!8271158 () Bool)

(assert (=> bm!732639 m!8271158))

(declare-fun m!8271160 () Bool)

(assert (=> bm!732640 m!8271160))

(declare-fun m!8271162 () Bool)

(assert (=> bm!732638 m!8271162))

(declare-fun m!8271164 () Bool)

(assert (=> bm!732636 m!8271164))

(assert (=> bm!732629 d!2357098))

(declare-fun b!7892490 () Bool)

(declare-fun c!1449014 () Bool)

(assert (=> b!7892490 (= c!1449014 ((_ is Star!21215) (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun e!4659166 () Bool)

(declare-fun e!4659172 () Bool)

(assert (=> b!7892490 (= e!4659166 e!4659172)))

(declare-fun b!7892491 () Bool)

(declare-fun lt!2681623 () Int)

(declare-fun call!732650 () Int)

(assert (=> b!7892491 (= e!4659172 (> lt!2681623 call!732650))))

(declare-fun c!1449018 () Bool)

(declare-fun bm!732642 () Bool)

(declare-fun c!1449015 () Bool)

(declare-fun call!732651 () Int)

(assert (=> bm!732642 (= call!732651 (regexDepth!519 (ite c!1449015 (regOne!42943 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (ite c!1449018 (regTwo!42942 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (reg!21544 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100))))))))))

(declare-fun call!732648 () Int)

(declare-fun bm!732643 () Bool)

(declare-fun c!1449017 () Bool)

(declare-fun c!1449013 () Bool)

(assert (=> bm!732643 (= call!732648 (regexDepth!519 (ite c!1449017 (reg!21544 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (ite c!1449013 (regOne!42943 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (regTwo!42942 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100))))))))))

(declare-fun b!7892492 () Bool)

(declare-fun e!4659168 () Bool)

(declare-fun call!732652 () Int)

(assert (=> b!7892492 (= e!4659168 (> lt!2681623 call!732652))))

(declare-fun b!7892493 () Bool)

(declare-fun e!4659164 () Int)

(assert (=> b!7892493 (= e!4659164 (+ 1 call!732648))))

(declare-fun b!7892494 () Bool)

(declare-fun e!4659173 () Bool)

(assert (=> b!7892494 (= e!4659173 e!4659168)))

(declare-fun res!3131938 () Bool)

(assert (=> b!7892494 (= res!3131938 (> lt!2681623 call!732651))))

(assert (=> b!7892494 (=> (not res!3131938) (not e!4659168))))

(declare-fun b!7892495 () Bool)

(assert (=> b!7892495 (= c!1449013 ((_ is Union!21215) (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun e!4659171 () Int)

(assert (=> b!7892495 (= e!4659164 e!4659171)))

(declare-fun b!7892496 () Bool)

(declare-fun e!4659165 () Int)

(assert (=> b!7892496 (= e!4659165 1)))

(declare-fun bm!732644 () Bool)

(assert (=> bm!732644 (= call!732650 call!732651)))

(declare-fun bm!732645 () Bool)

(declare-fun call!732646 () Int)

(assert (=> bm!732645 (= call!732646 (regexDepth!519 (ite c!1449013 (regTwo!42943 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (regOne!42942 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))))

(declare-fun call!732649 () Int)

(declare-fun call!732647 () Int)

(declare-fun bm!732646 () Bool)

(assert (=> bm!732646 (= call!732647 (maxBigInt!0 (ite c!1449013 call!732649 call!732646) (ite c!1449013 call!732646 call!732649)))))

(declare-fun b!7892497 () Bool)

(declare-fun e!4659170 () Bool)

(assert (=> b!7892497 (= e!4659170 e!4659173)))

(assert (=> b!7892497 (= c!1449015 ((_ is Union!21215) (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun d!2357100 () Bool)

(assert (=> d!2357100 e!4659170))

(declare-fun res!3131937 () Bool)

(assert (=> d!2357100 (=> (not res!3131937) (not e!4659170))))

(assert (=> d!2357100 (= res!3131937 (> lt!2681623 0))))

(declare-fun e!4659169 () Int)

(assert (=> d!2357100 (= lt!2681623 e!4659169)))

(declare-fun c!1449016 () Bool)

(assert (=> d!2357100 (= c!1449016 ((_ is ElementMatch!21215) (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(assert (=> d!2357100 (= (regexDepth!519 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) lt!2681623)))

(declare-fun bm!732641 () Bool)

(assert (=> bm!732641 (= call!732649 call!732648)))

(declare-fun bm!732647 () Bool)

(assert (=> bm!732647 (= call!732652 (regexDepth!519 (ite c!1449015 (regTwo!42943 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (regOne!42942 (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))))

(declare-fun b!7892498 () Bool)

(assert (=> b!7892498 (= e!4659169 1)))

(declare-fun b!7892499 () Bool)

(assert (=> b!7892499 (= e!4659173 e!4659166)))

(assert (=> b!7892499 (= c!1449018 ((_ is Concat!30060) (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun b!7892500 () Bool)

(assert (=> b!7892500 (= e!4659165 (+ 1 call!732647))))

(declare-fun b!7892501 () Bool)

(assert (=> b!7892501 (= e!4659169 e!4659164)))

(assert (=> b!7892501 (= c!1449017 ((_ is Star!21215) (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun b!7892502 () Bool)

(declare-fun res!3131936 () Bool)

(declare-fun e!4659167 () Bool)

(assert (=> b!7892502 (=> (not res!3131936) (not e!4659167))))

(assert (=> b!7892502 (= res!3131936 (> lt!2681623 call!732652))))

(assert (=> b!7892502 (= e!4659166 e!4659167)))

(declare-fun b!7892503 () Bool)

(assert (=> b!7892503 (= e!4659172 (= lt!2681623 1))))

(declare-fun b!7892504 () Bool)

(assert (=> b!7892504 (= e!4659171 e!4659165)))

(declare-fun c!1449019 () Bool)

(assert (=> b!7892504 (= c!1449019 ((_ is Concat!30060) (ite c!1448980 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun b!7892505 () Bool)

(assert (=> b!7892505 (= e!4659167 (> lt!2681623 call!732650))))

(declare-fun b!7892506 () Bool)

(assert (=> b!7892506 (= e!4659171 (+ 1 call!732647))))

(assert (= (and d!2357100 c!1449016) b!7892498))

(assert (= (and d!2357100 (not c!1449016)) b!7892501))

(assert (= (and b!7892501 c!1449017) b!7892493))

(assert (= (and b!7892501 (not c!1449017)) b!7892495))

(assert (= (and b!7892495 c!1449013) b!7892506))

(assert (= (and b!7892495 (not c!1449013)) b!7892504))

(assert (= (and b!7892504 c!1449019) b!7892500))

(assert (= (and b!7892504 (not c!1449019)) b!7892496))

(assert (= (or b!7892506 b!7892500) bm!732641))

(assert (= (or b!7892506 b!7892500) bm!732645))

(assert (= (or b!7892506 b!7892500) bm!732646))

(assert (= (or b!7892493 bm!732641) bm!732643))

(assert (= (and d!2357100 res!3131937) b!7892497))

(assert (= (and b!7892497 c!1449015) b!7892494))

(assert (= (and b!7892497 (not c!1449015)) b!7892499))

(assert (= (and b!7892494 res!3131938) b!7892492))

(assert (= (and b!7892499 c!1449018) b!7892502))

(assert (= (and b!7892499 (not c!1449018)) b!7892490))

(assert (= (and b!7892502 res!3131936) b!7892505))

(assert (= (and b!7892490 c!1449014) b!7892491))

(assert (= (and b!7892490 (not c!1449014)) b!7892503))

(assert (= (or b!7892505 b!7892491) bm!732644))

(assert (= (or b!7892494 bm!732644) bm!732642))

(assert (= (or b!7892492 b!7892502) bm!732647))

(declare-fun m!8271166 () Bool)

(assert (=> bm!732642 m!8271166))

(declare-fun m!8271168 () Bool)

(assert (=> bm!732646 m!8271168))

(declare-fun m!8271170 () Bool)

(assert (=> bm!732647 m!8271170))

(declare-fun m!8271172 () Bool)

(assert (=> bm!732645 m!8271172))

(declare-fun m!8271174 () Bool)

(assert (=> bm!732643 m!8271174))

(assert (=> bm!732617 d!2357100))

(declare-fun b!7892507 () Bool)

(declare-fun c!1449021 () Bool)

(assert (=> b!7892507 (= c!1449021 ((_ is Star!21215) (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun e!4659176 () Bool)

(declare-fun e!4659182 () Bool)

(assert (=> b!7892507 (= e!4659176 e!4659182)))

(declare-fun b!7892508 () Bool)

(declare-fun lt!2681624 () Int)

(declare-fun call!732657 () Int)

(assert (=> b!7892508 (= e!4659182 (> lt!2681624 call!732657))))

(declare-fun bm!732649 () Bool)

(declare-fun call!732658 () Int)

(declare-fun c!1449025 () Bool)

(declare-fun c!1449022 () Bool)

(assert (=> bm!732649 (= call!732658 (regexDepth!519 (ite c!1449022 (regOne!42943 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (ite c!1449025 (regTwo!42942 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (reg!21544 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100)))))))))

(declare-fun c!1449020 () Bool)

(declare-fun c!1449024 () Bool)

(declare-fun call!732655 () Int)

(declare-fun bm!732650 () Bool)

(assert (=> bm!732650 (= call!732655 (regexDepth!519 (ite c!1449024 (reg!21544 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (ite c!1449020 (regOne!42943 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (regTwo!42942 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100)))))))))

(declare-fun b!7892509 () Bool)

(declare-fun e!4659178 () Bool)

(declare-fun call!732659 () Int)

(assert (=> b!7892509 (= e!4659178 (> lt!2681624 call!732659))))

(declare-fun b!7892510 () Bool)

(declare-fun e!4659174 () Int)

(assert (=> b!7892510 (= e!4659174 (+ 1 call!732655))))

(declare-fun b!7892511 () Bool)

(declare-fun e!4659183 () Bool)

(assert (=> b!7892511 (= e!4659183 e!4659178)))

(declare-fun res!3131941 () Bool)

(assert (=> b!7892511 (= res!3131941 (> lt!2681624 call!732658))))

(assert (=> b!7892511 (=> (not res!3131941) (not e!4659178))))

(declare-fun b!7892512 () Bool)

(assert (=> b!7892512 (= c!1449020 ((_ is Union!21215) (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun e!4659181 () Int)

(assert (=> b!7892512 (= e!4659174 e!4659181)))

(declare-fun b!7892513 () Bool)

(declare-fun e!4659175 () Int)

(assert (=> b!7892513 (= e!4659175 1)))

(declare-fun bm!732651 () Bool)

(assert (=> bm!732651 (= call!732657 call!732658)))

(declare-fun bm!732652 () Bool)

(declare-fun call!732653 () Int)

(assert (=> bm!732652 (= call!732653 (regexDepth!519 (ite c!1449020 (regTwo!42943 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (regOne!42942 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))))

(declare-fun bm!732653 () Bool)

(declare-fun call!732656 () Int)

(declare-fun call!732654 () Int)

(assert (=> bm!732653 (= call!732654 (maxBigInt!0 (ite c!1449020 call!732656 call!732653) (ite c!1449020 call!732653 call!732656)))))

(declare-fun b!7892514 () Bool)

(declare-fun e!4659180 () Bool)

(assert (=> b!7892514 (= e!4659180 e!4659183)))

(assert (=> b!7892514 (= c!1449022 ((_ is Union!21215) (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun d!2357102 () Bool)

(assert (=> d!2357102 e!4659180))

(declare-fun res!3131940 () Bool)

(assert (=> d!2357102 (=> (not res!3131940) (not e!4659180))))

(assert (=> d!2357102 (= res!3131940 (> lt!2681624 0))))

(declare-fun e!4659179 () Int)

(assert (=> d!2357102 (= lt!2681624 e!4659179)))

(declare-fun c!1449023 () Bool)

(assert (=> d!2357102 (= c!1449023 ((_ is ElementMatch!21215) (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(assert (=> d!2357102 (= (regexDepth!519 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))) lt!2681624)))

(declare-fun bm!732648 () Bool)

(assert (=> bm!732648 (= call!732656 call!732655)))

(declare-fun bm!732654 () Bool)

(assert (=> bm!732654 (= call!732659 (regexDepth!519 (ite c!1449022 (regTwo!42943 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (regOne!42942 (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))))

(declare-fun b!7892515 () Bool)

(assert (=> b!7892515 (= e!4659179 1)))

(declare-fun b!7892516 () Bool)

(assert (=> b!7892516 (= e!4659183 e!4659176)))

(assert (=> b!7892516 (= c!1449025 ((_ is Concat!30060) (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun b!7892517 () Bool)

(assert (=> b!7892517 (= e!4659175 (+ 1 call!732654))))

(declare-fun b!7892518 () Bool)

(assert (=> b!7892518 (= e!4659179 e!4659174)))

(assert (=> b!7892518 (= c!1449024 ((_ is Star!21215) (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun b!7892519 () Bool)

(declare-fun res!3131939 () Bool)

(declare-fun e!4659177 () Bool)

(assert (=> b!7892519 (=> (not res!3131939) (not e!4659177))))

(assert (=> b!7892519 (= res!3131939 (> lt!2681624 call!732659))))

(assert (=> b!7892519 (= e!4659176 e!4659177)))

(declare-fun b!7892520 () Bool)

(assert (=> b!7892520 (= e!4659182 (= lt!2681624 1))))

(declare-fun b!7892521 () Bool)

(assert (=> b!7892521 (= e!4659181 e!4659175)))

(declare-fun c!1449026 () Bool)

(assert (=> b!7892521 (= c!1449026 ((_ is Concat!30060) (ite c!1448998 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun b!7892522 () Bool)

(assert (=> b!7892522 (= e!4659177 (> lt!2681624 call!732657))))

(declare-fun b!7892523 () Bool)

(assert (=> b!7892523 (= e!4659181 (+ 1 call!732654))))

(assert (= (and d!2357102 c!1449023) b!7892515))

(assert (= (and d!2357102 (not c!1449023)) b!7892518))

(assert (= (and b!7892518 c!1449024) b!7892510))

(assert (= (and b!7892518 (not c!1449024)) b!7892512))

(assert (= (and b!7892512 c!1449020) b!7892523))

(assert (= (and b!7892512 (not c!1449020)) b!7892521))

(assert (= (and b!7892521 c!1449026) b!7892517))

(assert (= (and b!7892521 (not c!1449026)) b!7892513))

(assert (= (or b!7892523 b!7892517) bm!732648))

(assert (= (or b!7892523 b!7892517) bm!732652))

(assert (= (or b!7892523 b!7892517) bm!732653))

(assert (= (or b!7892510 bm!732648) bm!732650))

(assert (= (and d!2357102 res!3131940) b!7892514))

(assert (= (and b!7892514 c!1449022) b!7892511))

(assert (= (and b!7892514 (not c!1449022)) b!7892516))

(assert (= (and b!7892511 res!3131941) b!7892509))

(assert (= (and b!7892516 c!1449025) b!7892519))

(assert (= (and b!7892516 (not c!1449025)) b!7892507))

(assert (= (and b!7892519 res!3131939) b!7892522))

(assert (= (and b!7892507 c!1449021) b!7892508))

(assert (= (and b!7892507 (not c!1449021)) b!7892520))

(assert (= (or b!7892522 b!7892508) bm!732651))

(assert (= (or b!7892511 bm!732651) bm!732649))

(assert (= (or b!7892509 b!7892519) bm!732654))

(declare-fun m!8271176 () Bool)

(assert (=> bm!732649 m!8271176))

(declare-fun m!8271178 () Bool)

(assert (=> bm!732653 m!8271178))

(declare-fun m!8271180 () Bool)

(assert (=> bm!732654 m!8271180))

(declare-fun m!8271182 () Bool)

(assert (=> bm!732652 m!8271182))

(declare-fun m!8271184 () Bool)

(assert (=> bm!732650 m!8271184))

(assert (=> bm!732633 d!2357102))

(declare-fun d!2357104 () Bool)

(declare-fun e!4659184 () Bool)

(assert (=> d!2357104 e!4659184))

(declare-fun res!3131943 () Bool)

(assert (=> d!2357104 (=> (not res!3131943) (not e!4659184))))

(declare-fun lt!2681625 () List!74072)

(assert (=> d!2357104 (= res!3131943 (= (content!15699 lt!2681625) ((_ map or) (content!15699 (t!388807 (_1!38337 cut!3))) (content!15699 (_2!38337 cut!3)))))))

(declare-fun e!4659185 () List!74072)

(assert (=> d!2357104 (= lt!2681625 e!4659185)))

(declare-fun c!1449027 () Bool)

(assert (=> d!2357104 (= c!1449027 ((_ is Nil!73948) (t!388807 (_1!38337 cut!3))))))

(assert (=> d!2357104 (= (++!18119 (t!388807 (_1!38337 cut!3)) (_2!38337 cut!3)) lt!2681625)))

(declare-fun b!7892526 () Bool)

(declare-fun res!3131942 () Bool)

(assert (=> b!7892526 (=> (not res!3131942) (not e!4659184))))

(assert (=> b!7892526 (= res!3131942 (= (size!42856 lt!2681625) (+ (size!42856 (t!388807 (_1!38337 cut!3))) (size!42856 (_2!38337 cut!3)))))))

(declare-fun b!7892524 () Bool)

(assert (=> b!7892524 (= e!4659185 (_2!38337 cut!3))))

(declare-fun b!7892525 () Bool)

(assert (=> b!7892525 (= e!4659185 (Cons!73948 (h!80396 (t!388807 (_1!38337 cut!3))) (++!18119 (t!388807 (t!388807 (_1!38337 cut!3))) (_2!38337 cut!3))))))

(declare-fun b!7892527 () Bool)

(assert (=> b!7892527 (= e!4659184 (or (not (= (_2!38337 cut!3) Nil!73948)) (= lt!2681625 (t!388807 (_1!38337 cut!3)))))))

(assert (= (and d!2357104 c!1449027) b!7892524))

(assert (= (and d!2357104 (not c!1449027)) b!7892525))

(assert (= (and d!2357104 res!3131943) b!7892526))

(assert (= (and b!7892526 res!3131942) b!7892527))

(declare-fun m!8271186 () Bool)

(assert (=> d!2357104 m!8271186))

(declare-fun m!8271188 () Bool)

(assert (=> d!2357104 m!8271188))

(assert (=> d!2357104 m!8271148))

(declare-fun m!8271190 () Bool)

(assert (=> b!7892526 m!8271190))

(declare-fun m!8271192 () Bool)

(assert (=> b!7892526 m!8271192))

(assert (=> b!7892526 m!8271044))

(declare-fun m!8271194 () Bool)

(assert (=> b!7892525 m!8271194))

(assert (=> b!7892433 d!2357104))

(declare-fun c!1449029 () Bool)

(declare-fun b!7892528 () Bool)

(assert (=> b!7892528 (= c!1449029 ((_ is Star!21215) (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))))))

(declare-fun e!4659188 () Bool)

(declare-fun e!4659194 () Bool)

(assert (=> b!7892528 (= e!4659188 e!4659194)))

(declare-fun b!7892529 () Bool)

(declare-fun lt!2681626 () Int)

(declare-fun call!732664 () Int)

(assert (=> b!7892529 (= e!4659194 (> lt!2681626 call!732664))))

(declare-fun bm!732656 () Bool)

(declare-fun call!732665 () Int)

(declare-fun c!1449030 () Bool)

(declare-fun c!1449033 () Bool)

(assert (=> bm!732656 (= call!732665 (regexDepth!519 (ite c!1449030 (regOne!42943 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))) (ite c!1449033 (regTwo!42942 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))) (reg!21544 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100))))))))))

(declare-fun c!1449032 () Bool)

(declare-fun c!1449028 () Bool)

(declare-fun bm!732657 () Bool)

(declare-fun call!732662 () Int)

(assert (=> bm!732657 (= call!732662 (regexDepth!519 (ite c!1449032 (reg!21544 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))) (ite c!1449028 (regOne!42943 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))) (regTwo!42942 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100))))))))))

(declare-fun b!7892530 () Bool)

(declare-fun e!4659190 () Bool)

(declare-fun call!732666 () Int)

(assert (=> b!7892530 (= e!4659190 (> lt!2681626 call!732666))))

(declare-fun b!7892531 () Bool)

(declare-fun e!4659186 () Int)

(assert (=> b!7892531 (= e!4659186 (+ 1 call!732662))))

(declare-fun b!7892532 () Bool)

(declare-fun e!4659195 () Bool)

(assert (=> b!7892532 (= e!4659195 e!4659190)))

(declare-fun res!3131946 () Bool)

(assert (=> b!7892532 (= res!3131946 (> lt!2681626 call!732665))))

(assert (=> b!7892532 (=> (not res!3131946) (not e!4659190))))

(declare-fun b!7892533 () Bool)

(assert (=> b!7892533 (= c!1449028 ((_ is Union!21215) (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))))))

(declare-fun e!4659193 () Int)

(assert (=> b!7892533 (= e!4659186 e!4659193)))

(declare-fun b!7892534 () Bool)

(declare-fun e!4659187 () Int)

(assert (=> b!7892534 (= e!4659187 1)))

(declare-fun bm!732658 () Bool)

(assert (=> bm!732658 (= call!732664 call!732665)))

(declare-fun call!732660 () Int)

(declare-fun bm!732659 () Bool)

(assert (=> bm!732659 (= call!732660 (regexDepth!519 (ite c!1449028 (regTwo!42943 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))) (regOne!42942 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))))))))

(declare-fun call!732663 () Int)

(declare-fun bm!732660 () Bool)

(declare-fun call!732661 () Int)

(assert (=> bm!732660 (= call!732661 (maxBigInt!0 (ite c!1449028 call!732663 call!732660) (ite c!1449028 call!732660 call!732663)))))

(declare-fun b!7892535 () Bool)

(declare-fun e!4659192 () Bool)

(assert (=> b!7892535 (= e!4659192 e!4659195)))

(assert (=> b!7892535 (= c!1449030 ((_ is Union!21215) (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))))))

(declare-fun d!2357106 () Bool)

(assert (=> d!2357106 e!4659192))

(declare-fun res!3131945 () Bool)

(assert (=> d!2357106 (=> (not res!3131945) (not e!4659192))))

(assert (=> d!2357106 (= res!3131945 (> lt!2681626 0))))

(declare-fun e!4659191 () Int)

(assert (=> d!2357106 (= lt!2681626 e!4659191)))

(declare-fun c!1449031 () Bool)

(assert (=> d!2357106 (= c!1449031 ((_ is ElementMatch!21215) (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))))))

(assert (=> d!2357106 (= (regexDepth!519 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))) lt!2681626)))

(declare-fun bm!732655 () Bool)

(assert (=> bm!732655 (= call!732663 call!732662)))

(declare-fun bm!732661 () Bool)

(assert (=> bm!732661 (= call!732666 (regexDepth!519 (ite c!1449030 (regTwo!42943 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))) (regOne!42942 (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))))))))

(declare-fun b!7892536 () Bool)

(assert (=> b!7892536 (= e!4659191 1)))

(declare-fun b!7892537 () Bool)

(assert (=> b!7892537 (= e!4659195 e!4659188)))

(assert (=> b!7892537 (= c!1449033 ((_ is Concat!30060) (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))))))

(declare-fun b!7892538 () Bool)

(assert (=> b!7892538 (= e!4659187 (+ 1 call!732661))))

(declare-fun b!7892539 () Bool)

(assert (=> b!7892539 (= e!4659191 e!4659186)))

(assert (=> b!7892539 (= c!1449032 ((_ is Star!21215) (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))))))

(declare-fun b!7892540 () Bool)

(declare-fun res!3131944 () Bool)

(declare-fun e!4659189 () Bool)

(assert (=> b!7892540 (=> (not res!3131944) (not e!4659189))))

(assert (=> b!7892540 (= res!3131944 (> lt!2681626 call!732666))))

(assert (=> b!7892540 (= e!4659188 e!4659189)))

(declare-fun b!7892541 () Bool)

(assert (=> b!7892541 (= e!4659194 (= lt!2681626 1))))

(declare-fun b!7892542 () Bool)

(assert (=> b!7892542 (= e!4659193 e!4659187)))

(declare-fun c!1449034 () Bool)

(assert (=> b!7892542 (= c!1449034 ((_ is Concat!30060) (ite c!1448998 (regOne!42943 r!14100) (ite c!1449001 (regTwo!42942 r!14100) (reg!21544 r!14100)))))))

(declare-fun b!7892543 () Bool)

(assert (=> b!7892543 (= e!4659189 (> lt!2681626 call!732664))))

(declare-fun b!7892544 () Bool)

(assert (=> b!7892544 (= e!4659193 (+ 1 call!732661))))

(assert (= (and d!2357106 c!1449031) b!7892536))

(assert (= (and d!2357106 (not c!1449031)) b!7892539))

(assert (= (and b!7892539 c!1449032) b!7892531))

(assert (= (and b!7892539 (not c!1449032)) b!7892533))

(assert (= (and b!7892533 c!1449028) b!7892544))

(assert (= (and b!7892533 (not c!1449028)) b!7892542))

(assert (= (and b!7892542 c!1449034) b!7892538))

(assert (= (and b!7892542 (not c!1449034)) b!7892534))

(assert (= (or b!7892544 b!7892538) bm!732655))

(assert (= (or b!7892544 b!7892538) bm!732659))

(assert (= (or b!7892544 b!7892538) bm!732660))

(assert (= (or b!7892531 bm!732655) bm!732657))

(assert (= (and d!2357106 res!3131945) b!7892535))

(assert (= (and b!7892535 c!1449030) b!7892532))

(assert (= (and b!7892535 (not c!1449030)) b!7892537))

(assert (= (and b!7892532 res!3131946) b!7892530))

(assert (= (and b!7892537 c!1449033) b!7892540))

(assert (= (and b!7892537 (not c!1449033)) b!7892528))

(assert (= (and b!7892540 res!3131944) b!7892543))

(assert (= (and b!7892528 c!1449029) b!7892529))

(assert (= (and b!7892528 (not c!1449029)) b!7892541))

(assert (= (or b!7892543 b!7892529) bm!732658))

(assert (= (or b!7892532 bm!732658) bm!732656))

(assert (= (or b!7892530 b!7892540) bm!732661))

(declare-fun m!8271196 () Bool)

(assert (=> bm!732656 m!8271196))

(declare-fun m!8271198 () Bool)

(assert (=> bm!732660 m!8271198))

(declare-fun m!8271200 () Bool)

(assert (=> bm!732661 m!8271200))

(declare-fun m!8271202 () Bool)

(assert (=> bm!732659 m!8271202))

(declare-fun m!8271204 () Bool)

(assert (=> bm!732657 m!8271204))

(assert (=> bm!732628 d!2357106))

(declare-fun d!2357108 () Bool)

(declare-fun lt!2681627 () Int)

(assert (=> d!2357108 (>= lt!2681627 0)))

(declare-fun e!4659196 () Int)

(assert (=> d!2357108 (= lt!2681627 e!4659196)))

(declare-fun c!1449035 () Bool)

(assert (=> d!2357108 (= c!1449035 ((_ is Nil!73948) (t!388807 (_2!38337 cut!3))))))

(assert (=> d!2357108 (= (size!42856 (t!388807 (_2!38337 cut!3))) lt!2681627)))

(declare-fun b!7892545 () Bool)

(assert (=> b!7892545 (= e!4659196 0)))

(declare-fun b!7892546 () Bool)

(assert (=> b!7892546 (= e!4659196 (+ 1 (size!42856 (t!388807 (t!388807 (_2!38337 cut!3))))))))

(assert (= (and d!2357108 c!1449035) b!7892545))

(assert (= (and d!2357108 (not c!1449035)) b!7892546))

(declare-fun m!8271206 () Bool)

(assert (=> b!7892546 m!8271206))

(assert (=> b!7892246 d!2357108))

(declare-fun d!2357110 () Bool)

(assert (=> d!2357110 (= (maxBigInt!0 (ite c!1448980 call!732621 call!732618) (ite c!1448980 call!732618 call!732621)) (ite (>= (ite c!1448980 call!732621 call!732618) (ite c!1448980 call!732618 call!732621)) (ite c!1448980 call!732621 call!732618) (ite c!1448980 call!732618 call!732621)))))

(assert (=> bm!732618 d!2357110))

(declare-fun d!2357112 () Bool)

(declare-fun lt!2681628 () Int)

(assert (=> d!2357112 (>= lt!2681628 0)))

(declare-fun e!4659197 () Int)

(assert (=> d!2357112 (= lt!2681628 e!4659197)))

(declare-fun c!1449036 () Bool)

(assert (=> d!2357112 (= c!1449036 ((_ is Nil!73948) lt!2681621))))

(assert (=> d!2357112 (= (size!42856 lt!2681621) lt!2681628)))

(declare-fun b!7892548 () Bool)

(assert (=> b!7892548 (= e!4659197 0)))

(declare-fun b!7892549 () Bool)

(assert (=> b!7892549 (= e!4659197 (+ 1 (size!42856 (t!388807 lt!2681621))))))

(assert (= (and d!2357112 c!1449036) b!7892548))

(assert (= (and d!2357112 (not c!1449036)) b!7892549))

(declare-fun m!8271208 () Bool)

(assert (=> b!7892549 m!8271208))

(assert (=> b!7892434 d!2357112))

(declare-fun d!2357114 () Bool)

(declare-fun lt!2681629 () Int)

(assert (=> d!2357114 (>= lt!2681629 0)))

(declare-fun e!4659198 () Int)

(assert (=> d!2357114 (= lt!2681629 e!4659198)))

(declare-fun c!1449037 () Bool)

(assert (=> d!2357114 (= c!1449037 ((_ is Nil!73948) (_1!38337 cut!3)))))

(assert (=> d!2357114 (= (size!42856 (_1!38337 cut!3)) lt!2681629)))

(declare-fun b!7892550 () Bool)

(assert (=> b!7892550 (= e!4659198 0)))

(declare-fun b!7892551 () Bool)

(assert (=> b!7892551 (= e!4659198 (+ 1 (size!42856 (t!388807 (_1!38337 cut!3)))))))

(assert (= (and d!2357114 c!1449037) b!7892550))

(assert (= (and d!2357114 (not c!1449037)) b!7892551))

(assert (=> b!7892551 m!8271192))

(assert (=> b!7892434 d!2357114))

(assert (=> b!7892434 d!2357082))

(declare-fun b!7892552 () Bool)

(declare-fun c!1449039 () Bool)

(assert (=> b!7892552 (= c!1449039 ((_ is Star!21215) (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun e!4659201 () Bool)

(declare-fun e!4659207 () Bool)

(assert (=> b!7892552 (= e!4659201 e!4659207)))

(declare-fun b!7892553 () Bool)

(declare-fun lt!2681630 () Int)

(declare-fun call!732671 () Int)

(assert (=> b!7892553 (= e!4659207 (> lt!2681630 call!732671))))

(declare-fun call!732672 () Int)

(declare-fun bm!732663 () Bool)

(declare-fun c!1449043 () Bool)

(declare-fun c!1449040 () Bool)

(assert (=> bm!732663 (= call!732672 (regexDepth!519 (ite c!1449040 (regOne!42943 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (ite c!1449043 (regTwo!42942 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (reg!21544 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100))))))))))

(declare-fun bm!732664 () Bool)

(declare-fun c!1449042 () Bool)

(declare-fun c!1449038 () Bool)

(declare-fun call!732669 () Int)

(assert (=> bm!732664 (= call!732669 (regexDepth!519 (ite c!1449042 (reg!21544 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (ite c!1449038 (regOne!42943 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (regTwo!42942 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100))))))))))

(declare-fun b!7892554 () Bool)

(declare-fun e!4659203 () Bool)

(declare-fun call!732673 () Int)

(assert (=> b!7892554 (= e!4659203 (> lt!2681630 call!732673))))

(declare-fun b!7892555 () Bool)

(declare-fun e!4659199 () Int)

(assert (=> b!7892555 (= e!4659199 (+ 1 call!732669))))

(declare-fun b!7892556 () Bool)

(declare-fun e!4659208 () Bool)

(assert (=> b!7892556 (= e!4659208 e!4659203)))

(declare-fun res!3131949 () Bool)

(assert (=> b!7892556 (= res!3131949 (> lt!2681630 call!732672))))

(assert (=> b!7892556 (=> (not res!3131949) (not e!4659203))))

(declare-fun b!7892557 () Bool)

(assert (=> b!7892557 (= c!1449038 ((_ is Union!21215) (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun e!4659206 () Int)

(assert (=> b!7892557 (= e!4659199 e!4659206)))

(declare-fun b!7892558 () Bool)

(declare-fun e!4659200 () Int)

(assert (=> b!7892558 (= e!4659200 1)))

(declare-fun bm!732665 () Bool)

(assert (=> bm!732665 (= call!732671 call!732672)))

(declare-fun call!732667 () Int)

(declare-fun bm!732666 () Bool)

(assert (=> bm!732666 (= call!732667 (regexDepth!519 (ite c!1449038 (regTwo!42943 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (regOne!42942 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))))

(declare-fun call!732668 () Int)

(declare-fun call!732670 () Int)

(declare-fun bm!732667 () Bool)

(assert (=> bm!732667 (= call!732668 (maxBigInt!0 (ite c!1449038 call!732670 call!732667) (ite c!1449038 call!732667 call!732670)))))

(declare-fun b!7892559 () Bool)

(declare-fun e!4659205 () Bool)

(assert (=> b!7892559 (= e!4659205 e!4659208)))

(assert (=> b!7892559 (= c!1449040 ((_ is Union!21215) (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun d!2357116 () Bool)

(assert (=> d!2357116 e!4659205))

(declare-fun res!3131948 () Bool)

(assert (=> d!2357116 (=> (not res!3131948) (not e!4659205))))

(assert (=> d!2357116 (= res!3131948 (> lt!2681630 0))))

(declare-fun e!4659204 () Int)

(assert (=> d!2357116 (= lt!2681630 e!4659204)))

(declare-fun c!1449041 () Bool)

(assert (=> d!2357116 (= c!1449041 ((_ is ElementMatch!21215) (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(assert (=> d!2357116 (= (regexDepth!519 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) lt!2681630)))

(declare-fun bm!732662 () Bool)

(assert (=> bm!732662 (= call!732670 call!732669)))

(declare-fun bm!732668 () Bool)

(assert (=> bm!732668 (= call!732673 (regexDepth!519 (ite c!1449040 (regTwo!42943 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))) (regOne!42942 (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))))

(declare-fun b!7892560 () Bool)

(assert (=> b!7892560 (= e!4659204 1)))

(declare-fun b!7892561 () Bool)

(assert (=> b!7892561 (= e!4659208 e!4659201)))

(assert (=> b!7892561 (= c!1449043 ((_ is Concat!30060) (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun b!7892562 () Bool)

(assert (=> b!7892562 (= e!4659200 (+ 1 call!732668))))

(declare-fun b!7892563 () Bool)

(assert (=> b!7892563 (= e!4659204 e!4659199)))

(assert (=> b!7892563 (= c!1449042 ((_ is Star!21215) (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun b!7892564 () Bool)

(declare-fun res!3131947 () Bool)

(declare-fun e!4659202 () Bool)

(assert (=> b!7892564 (=> (not res!3131947) (not e!4659202))))

(assert (=> b!7892564 (= res!3131947 (> lt!2681630 call!732673))))

(assert (=> b!7892564 (= e!4659201 e!4659202)))

(declare-fun b!7892565 () Bool)

(assert (=> b!7892565 (= e!4659207 (= lt!2681630 1))))

(declare-fun b!7892566 () Bool)

(assert (=> b!7892566 (= e!4659206 e!4659200)))

(declare-fun c!1449044 () Bool)

(assert (=> b!7892566 (= c!1449044 ((_ is Concat!30060) (ite c!1448982 (regTwo!42943 (regTwo!42942 r!14100)) (regOne!42942 (regTwo!42942 r!14100)))))))

(declare-fun b!7892567 () Bool)

(assert (=> b!7892567 (= e!4659202 (> lt!2681630 call!732671))))

(declare-fun b!7892568 () Bool)

(assert (=> b!7892568 (= e!4659206 (+ 1 call!732668))))

(assert (= (and d!2357116 c!1449041) b!7892560))

(assert (= (and d!2357116 (not c!1449041)) b!7892563))

(assert (= (and b!7892563 c!1449042) b!7892555))

(assert (= (and b!7892563 (not c!1449042)) b!7892557))

(assert (= (and b!7892557 c!1449038) b!7892568))

(assert (= (and b!7892557 (not c!1449038)) b!7892566))

(assert (= (and b!7892566 c!1449044) b!7892562))

(assert (= (and b!7892566 (not c!1449044)) b!7892558))

(assert (= (or b!7892568 b!7892562) bm!732662))

(assert (= (or b!7892568 b!7892562) bm!732666))

(assert (= (or b!7892568 b!7892562) bm!732667))

(assert (= (or b!7892555 bm!732662) bm!732664))

(assert (= (and d!2357116 res!3131948) b!7892559))

(assert (= (and b!7892559 c!1449040) b!7892556))

(assert (= (and b!7892559 (not c!1449040)) b!7892561))

(assert (= (and b!7892556 res!3131949) b!7892554))

(assert (= (and b!7892561 c!1449043) b!7892564))

(assert (= (and b!7892561 (not c!1449043)) b!7892552))

(assert (= (and b!7892564 res!3131947) b!7892567))

(assert (= (and b!7892552 c!1449039) b!7892553))

(assert (= (and b!7892552 (not c!1449039)) b!7892565))

(assert (= (or b!7892567 b!7892553) bm!732665))

(assert (= (or b!7892556 bm!732665) bm!732663))

(assert (= (or b!7892554 b!7892564) bm!732668))

(declare-fun m!8271210 () Bool)

(assert (=> bm!732663 m!8271210))

(declare-fun m!8271212 () Bool)

(assert (=> bm!732667 m!8271212))

(declare-fun m!8271214 () Bool)

(assert (=> bm!732668 m!8271214))

(declare-fun m!8271216 () Bool)

(assert (=> bm!732666 m!8271216))

(declare-fun m!8271218 () Bool)

(assert (=> bm!732664 m!8271218))

(assert (=> bm!732619 d!2357116))

(declare-fun d!2357118 () Bool)

(declare-fun nullableFct!3740 (Regex!21215) Bool)

(assert (=> d!2357118 (= (nullable!9470 (reg!21544 r!14100)) (nullableFct!3740 (reg!21544 r!14100)))))

(declare-fun bs!1967651 () Bool)

(assert (= bs!1967651 d!2357118))

(declare-fun m!8271220 () Bool)

(assert (=> bs!1967651 m!8271220))

(assert (=> b!7892233 d!2357118))

(declare-fun c!1449046 () Bool)

(declare-fun b!7892569 () Bool)

(assert (=> b!7892569 (= c!1449046 ((_ is Star!21215) (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))))))

(declare-fun e!4659211 () Bool)

(declare-fun e!4659217 () Bool)

(assert (=> b!7892569 (= e!4659211 e!4659217)))

(declare-fun b!7892570 () Bool)

(declare-fun lt!2681631 () Int)

(declare-fun call!732678 () Int)

(assert (=> b!7892570 (= e!4659217 (> lt!2681631 call!732678))))

(declare-fun bm!732670 () Bool)

(declare-fun c!1449050 () Bool)

(declare-fun call!732679 () Int)

(declare-fun c!1449047 () Bool)

(assert (=> bm!732670 (= call!732679 (regexDepth!519 (ite c!1449047 (regOne!42943 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))) (ite c!1449050 (regTwo!42942 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))) (reg!21544 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100)))))))))))

(declare-fun call!732676 () Int)

(declare-fun c!1449049 () Bool)

(declare-fun c!1449045 () Bool)

(declare-fun bm!732671 () Bool)

(assert (=> bm!732671 (= call!732676 (regexDepth!519 (ite c!1449049 (reg!21544 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))) (ite c!1449045 (regOne!42943 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))) (regTwo!42942 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100)))))))))))

(declare-fun b!7892571 () Bool)

(declare-fun e!4659213 () Bool)

(declare-fun call!732680 () Int)

(assert (=> b!7892571 (= e!4659213 (> lt!2681631 call!732680))))

(declare-fun b!7892572 () Bool)

(declare-fun e!4659209 () Int)

(assert (=> b!7892572 (= e!4659209 (+ 1 call!732676))))

(declare-fun b!7892573 () Bool)

(declare-fun e!4659218 () Bool)

(assert (=> b!7892573 (= e!4659218 e!4659213)))

(declare-fun res!3131952 () Bool)

(assert (=> b!7892573 (= res!3131952 (> lt!2681631 call!732679))))

(assert (=> b!7892573 (=> (not res!3131952) (not e!4659213))))

(declare-fun b!7892574 () Bool)

(assert (=> b!7892574 (= c!1449045 ((_ is Union!21215) (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))))))

(declare-fun e!4659216 () Int)

(assert (=> b!7892574 (= e!4659209 e!4659216)))

(declare-fun b!7892575 () Bool)

(declare-fun e!4659210 () Int)

(assert (=> b!7892575 (= e!4659210 1)))

(declare-fun bm!732672 () Bool)

(assert (=> bm!732672 (= call!732678 call!732679)))

(declare-fun bm!732673 () Bool)

(declare-fun call!732674 () Int)

(assert (=> bm!732673 (= call!732674 (regexDepth!519 (ite c!1449045 (regTwo!42943 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))) (regOne!42942 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))))))))

(declare-fun call!732675 () Int)

(declare-fun call!732677 () Int)

(declare-fun bm!732674 () Bool)

(assert (=> bm!732674 (= call!732675 (maxBigInt!0 (ite c!1449045 call!732677 call!732674) (ite c!1449045 call!732674 call!732677)))))

(declare-fun b!7892576 () Bool)

(declare-fun e!4659215 () Bool)

(assert (=> b!7892576 (= e!4659215 e!4659218)))

(assert (=> b!7892576 (= c!1449047 ((_ is Union!21215) (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))))))

(declare-fun d!2357120 () Bool)

(assert (=> d!2357120 e!4659215))

(declare-fun res!3131951 () Bool)

(assert (=> d!2357120 (=> (not res!3131951) (not e!4659215))))

(assert (=> d!2357120 (= res!3131951 (> lt!2681631 0))))

(declare-fun e!4659214 () Int)

(assert (=> d!2357120 (= lt!2681631 e!4659214)))

(declare-fun c!1449048 () Bool)

(assert (=> d!2357120 (= c!1449048 ((_ is ElementMatch!21215) (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))))))

(assert (=> d!2357120 (= (regexDepth!519 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))) lt!2681631)))

(declare-fun bm!732669 () Bool)

(assert (=> bm!732669 (= call!732677 call!732676)))

(declare-fun bm!732675 () Bool)

(assert (=> bm!732675 (= call!732680 (regexDepth!519 (ite c!1449047 (regTwo!42943 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))) (regOne!42942 (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))))))))

(declare-fun b!7892577 () Bool)

(assert (=> b!7892577 (= e!4659214 1)))

(declare-fun b!7892578 () Bool)

(assert (=> b!7892578 (= e!4659218 e!4659211)))

(assert (=> b!7892578 (= c!1449050 ((_ is Concat!30060) (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))))))

(declare-fun b!7892579 () Bool)

(assert (=> b!7892579 (= e!4659210 (+ 1 call!732675))))

(declare-fun b!7892580 () Bool)

(assert (=> b!7892580 (= e!4659214 e!4659209)))

(assert (=> b!7892580 (= c!1449049 ((_ is Star!21215) (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))))))

(declare-fun b!7892581 () Bool)

(declare-fun res!3131950 () Bool)

(declare-fun e!4659212 () Bool)

(assert (=> b!7892581 (=> (not res!3131950) (not e!4659212))))

(assert (=> b!7892581 (= res!3131950 (> lt!2681631 call!732680))))

(assert (=> b!7892581 (= e!4659211 e!4659212)))

(declare-fun b!7892582 () Bool)

(assert (=> b!7892582 (= e!4659217 (= lt!2681631 1))))

(declare-fun b!7892583 () Bool)

(assert (=> b!7892583 (= e!4659216 e!4659210)))

(declare-fun c!1449051 () Bool)

(assert (=> b!7892583 (= c!1449051 ((_ is Concat!30060) (ite c!1448982 (regOne!42943 (regTwo!42942 r!14100)) (ite c!1448985 (regTwo!42942 (regTwo!42942 r!14100)) (reg!21544 (regTwo!42942 r!14100))))))))

(declare-fun b!7892584 () Bool)

(assert (=> b!7892584 (= e!4659212 (> lt!2681631 call!732678))))

(declare-fun b!7892585 () Bool)

(assert (=> b!7892585 (= e!4659216 (+ 1 call!732675))))

(assert (= (and d!2357120 c!1449048) b!7892577))

(assert (= (and d!2357120 (not c!1449048)) b!7892580))

(assert (= (and b!7892580 c!1449049) b!7892572))

(assert (= (and b!7892580 (not c!1449049)) b!7892574))

(assert (= (and b!7892574 c!1449045) b!7892585))

(assert (= (and b!7892574 (not c!1449045)) b!7892583))

(assert (= (and b!7892583 c!1449051) b!7892579))

(assert (= (and b!7892583 (not c!1449051)) b!7892575))

(assert (= (or b!7892585 b!7892579) bm!732669))

(assert (= (or b!7892585 b!7892579) bm!732673))

(assert (= (or b!7892585 b!7892579) bm!732674))

(assert (= (or b!7892572 bm!732669) bm!732671))

(assert (= (and d!2357120 res!3131951) b!7892576))

(assert (= (and b!7892576 c!1449047) b!7892573))

(assert (= (and b!7892576 (not c!1449047)) b!7892578))

(assert (= (and b!7892573 res!3131952) b!7892571))

(assert (= (and b!7892578 c!1449050) b!7892581))

(assert (= (and b!7892578 (not c!1449050)) b!7892569))

(assert (= (and b!7892581 res!3131950) b!7892584))

(assert (= (and b!7892569 c!1449046) b!7892570))

(assert (= (and b!7892569 (not c!1449046)) b!7892582))

(assert (= (or b!7892584 b!7892570) bm!732672))

(assert (= (or b!7892573 bm!732672) bm!732670))

(assert (= (or b!7892571 b!7892581) bm!732675))

(declare-fun m!8271222 () Bool)

(assert (=> bm!732670 m!8271222))

(declare-fun m!8271224 () Bool)

(assert (=> bm!732674 m!8271224))

(declare-fun m!8271226 () Bool)

(assert (=> bm!732675 m!8271226))

(declare-fun m!8271228 () Bool)

(assert (=> bm!732673 m!8271228))

(declare-fun m!8271230 () Bool)

(assert (=> bm!732671 m!8271230))

(assert (=> bm!732614 d!2357120))

(declare-fun bs!1967652 () Bool)

(declare-fun b!7892587 () Bool)

(assert (= bs!1967652 (and b!7892587 b!7892175)))

(declare-fun lambda!472202 () Int)

(assert (=> bs!1967652 (= (and (= (reg!21544 (regTwo!42943 (regOne!42942 r!14100))) (reg!21544 (regOne!42942 r!14100))) (= (regTwo!42943 (regOne!42942 r!14100)) (regOne!42942 r!14100))) (= lambda!472202 lambda!472196))))

(declare-fun bs!1967653 () Bool)

(assert (= bs!1967653 (and b!7892587 b!7892178)))

(assert (=> bs!1967653 (not (= lambda!472202 lambda!472199))))

(assert (=> b!7892587 true))

(assert (=> b!7892587 true))

(declare-fun bs!1967654 () Bool)

(declare-fun b!7892590 () Bool)

(assert (= bs!1967654 (and b!7892590 b!7892175)))

(declare-fun lambda!472203 () Int)

(assert (=> bs!1967654 (not (= lambda!472203 lambda!472196))))

(declare-fun bs!1967655 () Bool)

(assert (= bs!1967655 (and b!7892590 b!7892178)))

(assert (=> bs!1967655 (= (and (= (regOne!42942 (regTwo!42943 (regOne!42942 r!14100))) (regOne!42942 (regOne!42942 r!14100))) (= (regTwo!42942 (regTwo!42943 (regOne!42942 r!14100))) (regTwo!42942 (regOne!42942 r!14100)))) (= lambda!472203 lambda!472199))))

(declare-fun bs!1967656 () Bool)

(assert (= bs!1967656 (and b!7892590 b!7892587)))

(assert (=> bs!1967656 (not (= lambda!472203 lambda!472202))))

(assert (=> b!7892590 true))

(assert (=> b!7892590 true))

(declare-fun b!7892586 () Bool)

(declare-fun c!1449052 () Bool)

(assert (=> b!7892586 (= c!1449052 ((_ is ElementMatch!21215) (regTwo!42943 (regOne!42942 r!14100))))))

(declare-fun e!4659223 () Bool)

(declare-fun e!4659225 () Bool)

(assert (=> b!7892586 (= e!4659223 e!4659225)))

(declare-fun e!4659224 () Bool)

(declare-fun call!732681 () Bool)

(assert (=> b!7892587 (= e!4659224 call!732681)))

(declare-fun b!7892588 () Bool)

(declare-fun e!4659222 () Bool)

(declare-fun e!4659221 () Bool)

(assert (=> b!7892588 (= e!4659222 e!4659221)))

(declare-fun res!3131954 () Bool)

(assert (=> b!7892588 (= res!3131954 (matchRSpec!4676 (regOne!42943 (regTwo!42943 (regOne!42942 r!14100))) (_1!38337 cut!3)))))

(assert (=> b!7892588 (=> res!3131954 e!4659221)))

(declare-fun d!2357122 () Bool)

(declare-fun c!1449054 () Bool)

(assert (=> d!2357122 (= c!1449054 ((_ is EmptyExpr!21215) (regTwo!42943 (regOne!42942 r!14100))))))

(declare-fun e!4659220 () Bool)

(assert (=> d!2357122 (= (matchRSpec!4676 (regTwo!42943 (regOne!42942 r!14100)) (_1!38337 cut!3)) e!4659220)))

(declare-fun b!7892589 () Bool)

(declare-fun e!4659219 () Bool)

(assert (=> b!7892589 (= e!4659222 e!4659219)))

(declare-fun c!1449055 () Bool)

(assert (=> b!7892589 (= c!1449055 ((_ is Star!21215) (regTwo!42943 (regOne!42942 r!14100))))))

(assert (=> b!7892590 (= e!4659219 call!732681)))

(declare-fun b!7892591 () Bool)

(assert (=> b!7892591 (= e!4659220 e!4659223)))

(declare-fun res!3131953 () Bool)

(assert (=> b!7892591 (= res!3131953 (not ((_ is EmptyLang!21215) (regTwo!42943 (regOne!42942 r!14100)))))))

(assert (=> b!7892591 (=> (not res!3131953) (not e!4659223))))

(declare-fun b!7892592 () Bool)

(assert (=> b!7892592 (= e!4659221 (matchRSpec!4676 (regTwo!42943 (regTwo!42943 (regOne!42942 r!14100))) (_1!38337 cut!3)))))

(declare-fun b!7892593 () Bool)

(declare-fun res!3131955 () Bool)

(assert (=> b!7892593 (=> res!3131955 e!4659224)))

(declare-fun call!732682 () Bool)

(assert (=> b!7892593 (= res!3131955 call!732682)))

(assert (=> b!7892593 (= e!4659219 e!4659224)))

(declare-fun b!7892594 () Bool)

(assert (=> b!7892594 (= e!4659225 (= (_1!38337 cut!3) (Cons!73948 (c!1448899 (regTwo!42943 (regOne!42942 r!14100))) Nil!73948)))))

(declare-fun bm!732676 () Bool)

(assert (=> bm!732676 (= call!732681 (Exists!4765 (ite c!1449055 lambda!472202 lambda!472203)))))

(declare-fun b!7892595 () Bool)

(assert (=> b!7892595 (= e!4659220 call!732682)))

(declare-fun b!7892596 () Bool)

(declare-fun c!1449053 () Bool)

(assert (=> b!7892596 (= c!1449053 ((_ is Union!21215) (regTwo!42943 (regOne!42942 r!14100))))))

(assert (=> b!7892596 (= e!4659225 e!4659222)))

(declare-fun bm!732677 () Bool)

(assert (=> bm!732677 (= call!732682 (isEmpty!42430 (_1!38337 cut!3)))))

(assert (= (and d!2357122 c!1449054) b!7892595))

(assert (= (and d!2357122 (not c!1449054)) b!7892591))

(assert (= (and b!7892591 res!3131953) b!7892586))

(assert (= (and b!7892586 c!1449052) b!7892594))

(assert (= (and b!7892586 (not c!1449052)) b!7892596))

(assert (= (and b!7892596 c!1449053) b!7892588))

(assert (= (and b!7892596 (not c!1449053)) b!7892589))

(assert (= (and b!7892588 (not res!3131954)) b!7892592))

(assert (= (and b!7892589 c!1449055) b!7892593))

(assert (= (and b!7892589 (not c!1449055)) b!7892590))

(assert (= (and b!7892593 (not res!3131955)) b!7892587))

(assert (= (or b!7892587 b!7892590) bm!732676))

(assert (= (or b!7892595 b!7892593) bm!732677))

(declare-fun m!8271232 () Bool)

(assert (=> b!7892588 m!8271232))

(declare-fun m!8271234 () Bool)

(assert (=> b!7892592 m!8271234))

(declare-fun m!8271236 () Bool)

(assert (=> bm!732676 m!8271236))

(assert (=> bm!732677 m!8271080))

(assert (=> b!7892180 d!2357122))

(declare-fun b!7892597 () Bool)

(declare-fun c!1449057 () Bool)

(assert (=> b!7892597 (= c!1449057 ((_ is Star!21215) (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))))))

(declare-fun e!4659228 () Bool)

(declare-fun e!4659234 () Bool)

(assert (=> b!7892597 (= e!4659228 e!4659234)))

(declare-fun b!7892598 () Bool)

(declare-fun lt!2681632 () Int)

(declare-fun call!732687 () Int)

(assert (=> b!7892598 (= e!4659234 (> lt!2681632 call!732687))))

(declare-fun c!1449058 () Bool)

(declare-fun bm!732679 () Bool)

(declare-fun call!732688 () Int)

(declare-fun c!1449061 () Bool)

(assert (=> bm!732679 (= call!732688 (regexDepth!519 (ite c!1449058 (regOne!42943 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))) (ite c!1449061 (regTwo!42942 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))) (reg!21544 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100)))))))))))

(declare-fun call!732685 () Int)

(declare-fun bm!732680 () Bool)

(declare-fun c!1449056 () Bool)

(declare-fun c!1449060 () Bool)

(assert (=> bm!732680 (= call!732685 (regexDepth!519 (ite c!1449060 (reg!21544 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))) (ite c!1449056 (regOne!42943 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))) (regTwo!42942 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100)))))))))))

(declare-fun b!7892599 () Bool)

(declare-fun e!4659230 () Bool)

(declare-fun call!732689 () Int)

(assert (=> b!7892599 (= e!4659230 (> lt!2681632 call!732689))))

(declare-fun b!7892600 () Bool)

(declare-fun e!4659226 () Int)

(assert (=> b!7892600 (= e!4659226 (+ 1 call!732685))))

(declare-fun b!7892601 () Bool)

(declare-fun e!4659235 () Bool)

(assert (=> b!7892601 (= e!4659235 e!4659230)))

(declare-fun res!3131958 () Bool)

(assert (=> b!7892601 (= res!3131958 (> lt!2681632 call!732688))))

(assert (=> b!7892601 (=> (not res!3131958) (not e!4659230))))

(declare-fun b!7892602 () Bool)

(assert (=> b!7892602 (= c!1449056 ((_ is Union!21215) (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))))))

(declare-fun e!4659233 () Int)

(assert (=> b!7892602 (= e!4659226 e!4659233)))

(declare-fun b!7892603 () Bool)

(declare-fun e!4659227 () Int)

(assert (=> b!7892603 (= e!4659227 1)))

(declare-fun bm!732681 () Bool)

(assert (=> bm!732681 (= call!732687 call!732688)))

(declare-fun call!732683 () Int)

(declare-fun bm!732682 () Bool)

(assert (=> bm!732682 (= call!732683 (regexDepth!519 (ite c!1449056 (regTwo!42943 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))) (regOne!42942 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))))))))

(declare-fun bm!732683 () Bool)

(declare-fun call!732684 () Int)

(declare-fun call!732686 () Int)

(assert (=> bm!732683 (= call!732684 (maxBigInt!0 (ite c!1449056 call!732686 call!732683) (ite c!1449056 call!732683 call!732686)))))

(declare-fun b!7892604 () Bool)

(declare-fun e!4659232 () Bool)

(assert (=> b!7892604 (= e!4659232 e!4659235)))

(assert (=> b!7892604 (= c!1449058 ((_ is Union!21215) (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))))))

(declare-fun d!2357124 () Bool)

(assert (=> d!2357124 e!4659232))

(declare-fun res!3131957 () Bool)

(assert (=> d!2357124 (=> (not res!3131957) (not e!4659232))))

(assert (=> d!2357124 (= res!3131957 (> lt!2681632 0))))

(declare-fun e!4659231 () Int)

(assert (=> d!2357124 (= lt!2681632 e!4659231)))

(declare-fun c!1449059 () Bool)

(assert (=> d!2357124 (= c!1449059 ((_ is ElementMatch!21215) (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))))))

(assert (=> d!2357124 (= (regexDepth!519 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))) lt!2681632)))

(declare-fun bm!732678 () Bool)

(assert (=> bm!732678 (= call!732686 call!732685)))

(declare-fun bm!732684 () Bool)

(assert (=> bm!732684 (= call!732689 (regexDepth!519 (ite c!1449058 (regTwo!42943 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))) (regOne!42942 (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))))))))

(declare-fun b!7892605 () Bool)

(assert (=> b!7892605 (= e!4659231 1)))

(declare-fun b!7892606 () Bool)

(assert (=> b!7892606 (= e!4659235 e!4659228)))

(assert (=> b!7892606 (= c!1449061 ((_ is Concat!30060) (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))))))

(declare-fun b!7892607 () Bool)

(assert (=> b!7892607 (= e!4659227 (+ 1 call!732684))))

(declare-fun b!7892608 () Bool)

(assert (=> b!7892608 (= e!4659231 e!4659226)))

(assert (=> b!7892608 (= c!1449060 ((_ is Star!21215) (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))))))

(declare-fun b!7892609 () Bool)

(declare-fun res!3131956 () Bool)

(declare-fun e!4659229 () Bool)

(assert (=> b!7892609 (=> (not res!3131956) (not e!4659229))))

(assert (=> b!7892609 (= res!3131956 (> lt!2681632 call!732689))))

(assert (=> b!7892609 (= e!4659228 e!4659229)))

(declare-fun b!7892610 () Bool)

(assert (=> b!7892610 (= e!4659234 (= lt!2681632 1))))

(declare-fun b!7892611 () Bool)

(assert (=> b!7892611 (= e!4659233 e!4659227)))

(declare-fun c!1449062 () Bool)

(assert (=> b!7892611 (= c!1449062 ((_ is Concat!30060) (ite c!1448984 (reg!21544 (regTwo!42942 r!14100)) (ite c!1448980 (regOne!42943 (regTwo!42942 r!14100)) (regTwo!42942 (regTwo!42942 r!14100))))))))

(declare-fun b!7892612 () Bool)

(assert (=> b!7892612 (= e!4659229 (> lt!2681632 call!732687))))

(declare-fun b!7892613 () Bool)

(assert (=> b!7892613 (= e!4659233 (+ 1 call!732684))))

(assert (= (and d!2357124 c!1449059) b!7892605))

(assert (= (and d!2357124 (not c!1449059)) b!7892608))

(assert (= (and b!7892608 c!1449060) b!7892600))

(assert (= (and b!7892608 (not c!1449060)) b!7892602))

(assert (= (and b!7892602 c!1449056) b!7892613))

(assert (= (and b!7892602 (not c!1449056)) b!7892611))

(assert (= (and b!7892611 c!1449062) b!7892607))

(assert (= (and b!7892611 (not c!1449062)) b!7892603))

(assert (= (or b!7892613 b!7892607) bm!732678))

(assert (= (or b!7892613 b!7892607) bm!732682))

(assert (= (or b!7892613 b!7892607) bm!732683))

(assert (= (or b!7892600 bm!732678) bm!732680))

(assert (= (and d!2357124 res!3131957) b!7892604))

(assert (= (and b!7892604 c!1449058) b!7892601))

(assert (= (and b!7892604 (not c!1449058)) b!7892606))

(assert (= (and b!7892601 res!3131958) b!7892599))

(assert (= (and b!7892606 c!1449061) b!7892609))

(assert (= (and b!7892606 (not c!1449061)) b!7892597))

(assert (= (and b!7892609 res!3131956) b!7892612))

(assert (= (and b!7892597 c!1449057) b!7892598))

(assert (= (and b!7892597 (not c!1449057)) b!7892610))

(assert (= (or b!7892612 b!7892598) bm!732681))

(assert (= (or b!7892601 bm!732681) bm!732679))

(assert (= (or b!7892599 b!7892609) bm!732684))

(declare-fun m!8271238 () Bool)

(assert (=> bm!732679 m!8271238))

(declare-fun m!8271240 () Bool)

(assert (=> bm!732683 m!8271240))

(declare-fun m!8271242 () Bool)

(assert (=> bm!732684 m!8271242))

(declare-fun m!8271244 () Bool)

(assert (=> bm!732682 m!8271244))

(declare-fun m!8271246 () Bool)

(assert (=> bm!732680 m!8271246))

(assert (=> bm!732615 d!2357124))

(declare-fun d!2357126 () Bool)

(declare-fun c!1449065 () Bool)

(assert (=> d!2357126 (= c!1449065 ((_ is Nil!73948) lt!2681621))))

(declare-fun e!4659238 () (InoxSet C!42756))

(assert (=> d!2357126 (= (content!15699 lt!2681621) e!4659238)))

(declare-fun b!7892618 () Bool)

(assert (=> b!7892618 (= e!4659238 ((as const (Array C!42756 Bool)) false))))

(declare-fun b!7892619 () Bool)

(assert (=> b!7892619 (= e!4659238 ((_ map or) (store ((as const (Array C!42756 Bool)) false) (h!80396 lt!2681621) true) (content!15699 (t!388807 lt!2681621))))))

(assert (= (and d!2357126 c!1449065) b!7892618))

(assert (= (and d!2357126 (not c!1449065)) b!7892619))

(declare-fun m!8271248 () Bool)

(assert (=> b!7892619 m!8271248))

(declare-fun m!8271250 () Bool)

(assert (=> b!7892619 m!8271250))

(assert (=> d!2357096 d!2357126))

(declare-fun d!2357128 () Bool)

(declare-fun c!1449066 () Bool)

(assert (=> d!2357128 (= c!1449066 ((_ is Nil!73948) (_1!38337 cut!3)))))

(declare-fun e!4659239 () (InoxSet C!42756))

(assert (=> d!2357128 (= (content!15699 (_1!38337 cut!3)) e!4659239)))

(declare-fun b!7892620 () Bool)

(assert (=> b!7892620 (= e!4659239 ((as const (Array C!42756 Bool)) false))))

(declare-fun b!7892621 () Bool)

(assert (=> b!7892621 (= e!4659239 ((_ map or) (store ((as const (Array C!42756 Bool)) false) (h!80396 (_1!38337 cut!3)) true) (content!15699 (t!388807 (_1!38337 cut!3)))))))

(assert (= (and d!2357128 c!1449066) b!7892620))

(assert (= (and d!2357128 (not c!1449066)) b!7892621))

(declare-fun m!8271252 () Bool)

(assert (=> b!7892621 m!8271252))

(assert (=> b!7892621 m!8271188))

(assert (=> d!2357096 d!2357128))

(declare-fun d!2357130 () Bool)

(declare-fun c!1449067 () Bool)

(assert (=> d!2357130 (= c!1449067 ((_ is Nil!73948) (_2!38337 cut!3)))))

(declare-fun e!4659240 () (InoxSet C!42756))

(assert (=> d!2357130 (= (content!15699 (_2!38337 cut!3)) e!4659240)))

(declare-fun b!7892622 () Bool)

(assert (=> b!7892622 (= e!4659240 ((as const (Array C!42756 Bool)) false))))

(declare-fun b!7892623 () Bool)

(assert (=> b!7892623 (= e!4659240 ((_ map or) (store ((as const (Array C!42756 Bool)) false) (h!80396 (_2!38337 cut!3)) true) (content!15699 (t!388807 (_2!38337 cut!3)))))))

(assert (= (and d!2357130 c!1449067) b!7892622))

(assert (= (and d!2357130 (not c!1449067)) b!7892623))

(declare-fun m!8271254 () Bool)

(assert (=> b!7892623 m!8271254))

(declare-fun m!8271256 () Bool)

(assert (=> b!7892623 m!8271256))

(assert (=> d!2357096 d!2357130))

(declare-fun d!2357132 () Bool)

(declare-fun choose!59699 (Int) Bool)

(assert (=> d!2357132 (= (Exists!4765 (ite c!1448928 lambda!472196 lambda!472199)) (choose!59699 (ite c!1448928 lambda!472196 lambda!472199)))))

(declare-fun bs!1967657 () Bool)

(assert (= bs!1967657 d!2357132))

(declare-fun m!8271258 () Bool)

(assert (=> bs!1967657 m!8271258))

(assert (=> bm!732561 d!2357132))

(declare-fun d!2357134 () Bool)

(assert (=> d!2357134 (= (isEmpty!42430 (_1!38337 cut!3)) ((_ is Nil!73948) (_1!38337 cut!3)))))

(assert (=> bm!732562 d!2357134))

(declare-fun bs!1967658 () Bool)

(declare-fun b!7892625 () Bool)

(assert (= bs!1967658 (and b!7892625 b!7892175)))

(declare-fun lambda!472204 () Int)

(assert (=> bs!1967658 (= (and (= (reg!21544 (regOne!42943 (regOne!42942 r!14100))) (reg!21544 (regOne!42942 r!14100))) (= (regOne!42943 (regOne!42942 r!14100)) (regOne!42942 r!14100))) (= lambda!472204 lambda!472196))))

(declare-fun bs!1967659 () Bool)

(assert (= bs!1967659 (and b!7892625 b!7892178)))

(assert (=> bs!1967659 (not (= lambda!472204 lambda!472199))))

(declare-fun bs!1967660 () Bool)

(assert (= bs!1967660 (and b!7892625 b!7892587)))

(assert (=> bs!1967660 (= (and (= (reg!21544 (regOne!42943 (regOne!42942 r!14100))) (reg!21544 (regTwo!42943 (regOne!42942 r!14100)))) (= (regOne!42943 (regOne!42942 r!14100)) (regTwo!42943 (regOne!42942 r!14100)))) (= lambda!472204 lambda!472202))))

(declare-fun bs!1967661 () Bool)

(assert (= bs!1967661 (and b!7892625 b!7892590)))

(assert (=> bs!1967661 (not (= lambda!472204 lambda!472203))))

(assert (=> b!7892625 true))

(assert (=> b!7892625 true))

(declare-fun bs!1967662 () Bool)

(declare-fun b!7892628 () Bool)

(assert (= bs!1967662 (and b!7892628 b!7892175)))

(declare-fun lambda!472205 () Int)

(assert (=> bs!1967662 (not (= lambda!472205 lambda!472196))))

(declare-fun bs!1967663 () Bool)

(assert (= bs!1967663 (and b!7892628 b!7892590)))

(assert (=> bs!1967663 (= (and (= (regOne!42942 (regOne!42943 (regOne!42942 r!14100))) (regOne!42942 (regTwo!42943 (regOne!42942 r!14100)))) (= (regTwo!42942 (regOne!42943 (regOne!42942 r!14100))) (regTwo!42942 (regTwo!42943 (regOne!42942 r!14100))))) (= lambda!472205 lambda!472203))))

(declare-fun bs!1967664 () Bool)

(assert (= bs!1967664 (and b!7892628 b!7892587)))

(assert (=> bs!1967664 (not (= lambda!472205 lambda!472202))))

(declare-fun bs!1967665 () Bool)

(assert (= bs!1967665 (and b!7892628 b!7892178)))

(assert (=> bs!1967665 (= (and (= (regOne!42942 (regOne!42943 (regOne!42942 r!14100))) (regOne!42942 (regOne!42942 r!14100))) (= (regTwo!42942 (regOne!42943 (regOne!42942 r!14100))) (regTwo!42942 (regOne!42942 r!14100)))) (= lambda!472205 lambda!472199))))

(declare-fun bs!1967666 () Bool)

(assert (= bs!1967666 (and b!7892628 b!7892625)))

(assert (=> bs!1967666 (not (= lambda!472205 lambda!472204))))

(assert (=> b!7892628 true))

(assert (=> b!7892628 true))

(declare-fun b!7892624 () Bool)

(declare-fun c!1449068 () Bool)

(assert (=> b!7892624 (= c!1449068 ((_ is ElementMatch!21215) (regOne!42943 (regOne!42942 r!14100))))))

(declare-fun e!4659245 () Bool)

(declare-fun e!4659247 () Bool)

(assert (=> b!7892624 (= e!4659245 e!4659247)))

(declare-fun e!4659246 () Bool)

(declare-fun call!732690 () Bool)

(assert (=> b!7892625 (= e!4659246 call!732690)))

(declare-fun b!7892626 () Bool)

(declare-fun e!4659244 () Bool)

(declare-fun e!4659243 () Bool)

(assert (=> b!7892626 (= e!4659244 e!4659243)))

(declare-fun res!3131960 () Bool)

(assert (=> b!7892626 (= res!3131960 (matchRSpec!4676 (regOne!42943 (regOne!42943 (regOne!42942 r!14100))) (_1!38337 cut!3)))))

(assert (=> b!7892626 (=> res!3131960 e!4659243)))

(declare-fun d!2357136 () Bool)

(declare-fun c!1449070 () Bool)

(assert (=> d!2357136 (= c!1449070 ((_ is EmptyExpr!21215) (regOne!42943 (regOne!42942 r!14100))))))

(declare-fun e!4659242 () Bool)

(assert (=> d!2357136 (= (matchRSpec!4676 (regOne!42943 (regOne!42942 r!14100)) (_1!38337 cut!3)) e!4659242)))

(declare-fun b!7892627 () Bool)

(declare-fun e!4659241 () Bool)

(assert (=> b!7892627 (= e!4659244 e!4659241)))

(declare-fun c!1449071 () Bool)

(assert (=> b!7892627 (= c!1449071 ((_ is Star!21215) (regOne!42943 (regOne!42942 r!14100))))))

(assert (=> b!7892628 (= e!4659241 call!732690)))

(declare-fun b!7892629 () Bool)

(assert (=> b!7892629 (= e!4659242 e!4659245)))

(declare-fun res!3131959 () Bool)

(assert (=> b!7892629 (= res!3131959 (not ((_ is EmptyLang!21215) (regOne!42943 (regOne!42942 r!14100)))))))

(assert (=> b!7892629 (=> (not res!3131959) (not e!4659245))))

(declare-fun b!7892630 () Bool)

(assert (=> b!7892630 (= e!4659243 (matchRSpec!4676 (regTwo!42943 (regOne!42943 (regOne!42942 r!14100))) (_1!38337 cut!3)))))

(declare-fun b!7892631 () Bool)

(declare-fun res!3131961 () Bool)

(assert (=> b!7892631 (=> res!3131961 e!4659246)))

(declare-fun call!732691 () Bool)

(assert (=> b!7892631 (= res!3131961 call!732691)))

(assert (=> b!7892631 (= e!4659241 e!4659246)))

(declare-fun b!7892632 () Bool)

(assert (=> b!7892632 (= e!4659247 (= (_1!38337 cut!3) (Cons!73948 (c!1448899 (regOne!42943 (regOne!42942 r!14100))) Nil!73948)))))

(declare-fun bm!732685 () Bool)

(assert (=> bm!732685 (= call!732690 (Exists!4765 (ite c!1449071 lambda!472204 lambda!472205)))))

(declare-fun b!7892633 () Bool)

(assert (=> b!7892633 (= e!4659242 call!732691)))

(declare-fun b!7892634 () Bool)

(declare-fun c!1449069 () Bool)

(assert (=> b!7892634 (= c!1449069 ((_ is Union!21215) (regOne!42943 (regOne!42942 r!14100))))))

(assert (=> b!7892634 (= e!4659247 e!4659244)))

(declare-fun bm!732686 () Bool)

(assert (=> bm!732686 (= call!732691 (isEmpty!42430 (_1!38337 cut!3)))))

(assert (= (and d!2357136 c!1449070) b!7892633))

(assert (= (and d!2357136 (not c!1449070)) b!7892629))

(assert (= (and b!7892629 res!3131959) b!7892624))

(assert (= (and b!7892624 c!1449068) b!7892632))

(assert (= (and b!7892624 (not c!1449068)) b!7892634))

(assert (= (and b!7892634 c!1449069) b!7892626))

(assert (= (and b!7892634 (not c!1449069)) b!7892627))

(assert (= (and b!7892626 (not res!3131960)) b!7892630))

(assert (= (and b!7892627 c!1449071) b!7892631))

(assert (= (and b!7892627 (not c!1449071)) b!7892628))

(assert (= (and b!7892631 (not res!3131961)) b!7892625))

(assert (= (or b!7892625 b!7892628) bm!732685))

(assert (= (or b!7892633 b!7892631) bm!732686))

(declare-fun m!8271260 () Bool)

(assert (=> b!7892626 m!8271260))

(declare-fun m!8271262 () Bool)

(assert (=> b!7892630 m!8271262))

(declare-fun m!8271264 () Bool)

(assert (=> bm!732685 m!8271264))

(assert (=> bm!732686 m!8271080))

(assert (=> b!7892176 d!2357136))

(declare-fun d!2357138 () Bool)

(declare-fun lt!2681633 () Int)

(assert (=> d!2357138 (>= lt!2681633 0)))

(declare-fun e!4659248 () Int)

(assert (=> d!2357138 (= lt!2681633 e!4659248)))

(declare-fun c!1449072 () Bool)

(assert (=> d!2357138 (= c!1449072 ((_ is Nil!73948) (t!388807 s!9586)))))

(assert (=> d!2357138 (= (size!42856 (t!388807 s!9586)) lt!2681633)))

(declare-fun b!7892635 () Bool)

(assert (=> b!7892635 (= e!4659248 0)))

(declare-fun b!7892636 () Bool)

(assert (=> b!7892636 (= e!4659248 (+ 1 (size!42856 (t!388807 (t!388807 s!9586)))))))

(assert (= (and d!2357138 c!1449072) b!7892635))

(assert (= (and d!2357138 (not c!1449072)) b!7892636))

(declare-fun m!8271266 () Bool)

(assert (=> b!7892636 m!8271266))

(assert (=> b!7892369 d!2357138))

(declare-fun d!2357140 () Bool)

(assert (=> d!2357140 (= (maxBigInt!0 (ite c!1448996 call!732635 call!732632) (ite c!1448996 call!732632 call!732635)) (ite (>= (ite c!1448996 call!732635 call!732632) (ite c!1448996 call!732632 call!732635)) (ite c!1448996 call!732635 call!732632) (ite c!1448996 call!732632 call!732635)))))

(assert (=> bm!732632 d!2357140))

(declare-fun b!7892637 () Bool)

(declare-fun e!4659253 () Bool)

(declare-fun call!732694 () Bool)

(assert (=> b!7892637 (= e!4659253 call!732694)))

(declare-fun b!7892638 () Bool)

(declare-fun e!4659252 () Bool)

(assert (=> b!7892638 (= e!4659252 e!4659253)))

(declare-fun res!3131966 () Bool)

(assert (=> b!7892638 (=> (not res!3131966) (not e!4659253))))

(declare-fun call!732693 () Bool)

(assert (=> b!7892638 (= res!3131966 call!732693)))

(declare-fun b!7892639 () Bool)

(declare-fun e!4659255 () Bool)

(declare-fun e!4659249 () Bool)

(assert (=> b!7892639 (= e!4659255 e!4659249)))

(declare-fun c!1449074 () Bool)

(assert (=> b!7892639 (= c!1449074 ((_ is Union!21215) (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun c!1449073 () Bool)

(declare-fun bm!732687 () Bool)

(declare-fun call!732692 () Bool)

(assert (=> bm!732687 (= call!732692 (validRegex!11625 (ite c!1449073 (reg!21544 (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (ite c!1449074 (regOne!42943 (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (regTwo!42942 (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100)))))))))

(declare-fun d!2357142 () Bool)

(declare-fun res!3131964 () Bool)

(declare-fun e!4659251 () Bool)

(assert (=> d!2357142 (=> res!3131964 e!4659251)))

(assert (=> d!2357142 (= res!3131964 ((_ is ElementMatch!21215) (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(assert (=> d!2357142 (= (validRegex!11625 (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100))) e!4659251)))

(declare-fun bm!732688 () Bool)

(assert (=> bm!732688 (= call!732693 (validRegex!11625 (ite c!1449074 (regTwo!42943 (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (regOne!42942 (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))))

(declare-fun b!7892640 () Bool)

(assert (=> b!7892640 (= e!4659251 e!4659255)))

(assert (=> b!7892640 (= c!1449073 ((_ is Star!21215) (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun b!7892641 () Bool)

(declare-fun e!4659250 () Bool)

(assert (=> b!7892641 (= e!4659250 call!732692)))

(declare-fun b!7892642 () Bool)

(declare-fun res!3131963 () Bool)

(declare-fun e!4659254 () Bool)

(assert (=> b!7892642 (=> (not res!3131963) (not e!4659254))))

(assert (=> b!7892642 (= res!3131963 call!732694)))

(assert (=> b!7892642 (= e!4659249 e!4659254)))

(declare-fun b!7892643 () Bool)

(declare-fun res!3131965 () Bool)

(assert (=> b!7892643 (=> res!3131965 e!4659252)))

(assert (=> b!7892643 (= res!3131965 (not ((_ is Concat!30060) (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100)))))))

(assert (=> b!7892643 (= e!4659249 e!4659252)))

(declare-fun b!7892644 () Bool)

(assert (=> b!7892644 (= e!4659255 e!4659250)))

(declare-fun res!3131962 () Bool)

(assert (=> b!7892644 (= res!3131962 (not (nullable!9470 (reg!21544 (ite c!1448938 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))))

(assert (=> b!7892644 (=> (not res!3131962) (not e!4659250))))

(declare-fun b!7892645 () Bool)

(assert (=> b!7892645 (= e!4659254 call!732693)))

(declare-fun bm!732689 () Bool)

(assert (=> bm!732689 (= call!732694 call!732692)))

(assert (= (and d!2357142 (not res!3131964)) b!7892640))

(assert (= (and b!7892640 c!1449073) b!7892644))

(assert (= (and b!7892640 (not c!1449073)) b!7892639))

(assert (= (and b!7892644 res!3131962) b!7892641))

(assert (= (and b!7892639 c!1449074) b!7892642))

(assert (= (and b!7892639 (not c!1449074)) b!7892643))

(assert (= (and b!7892642 res!3131963) b!7892645))

(assert (= (and b!7892643 (not res!3131965)) b!7892638))

(assert (= (and b!7892638 res!3131966) b!7892637))

(assert (= (or b!7892645 b!7892638) bm!732688))

(assert (= (or b!7892642 b!7892637) bm!732689))

(assert (= (or b!7892641 bm!732689) bm!732687))

(declare-fun m!8271268 () Bool)

(assert (=> bm!732687 m!8271268))

(declare-fun m!8271270 () Bool)

(assert (=> bm!732688 m!8271270))

(declare-fun m!8271272 () Bool)

(assert (=> b!7892644 m!8271272))

(assert (=> bm!732576 d!2357142))

(declare-fun b!7892646 () Bool)

(declare-fun c!1449076 () Bool)

(assert (=> b!7892646 (= c!1449076 ((_ is Star!21215) (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun e!4659258 () Bool)

(declare-fun e!4659264 () Bool)

(assert (=> b!7892646 (= e!4659258 e!4659264)))

(declare-fun b!7892647 () Bool)

(declare-fun lt!2681634 () Int)

(declare-fun call!732699 () Int)

(assert (=> b!7892647 (= e!4659264 (> lt!2681634 call!732699))))

(declare-fun call!732700 () Int)

(declare-fun c!1449080 () Bool)

(declare-fun bm!732691 () Bool)

(declare-fun c!1449077 () Bool)

(assert (=> bm!732691 (= call!732700 (regexDepth!519 (ite c!1449077 (regOne!42943 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (ite c!1449080 (regTwo!42942 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (reg!21544 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100)))))))))

(declare-fun bm!732692 () Bool)

(declare-fun call!732697 () Int)

(declare-fun c!1449075 () Bool)

(declare-fun c!1449079 () Bool)

(assert (=> bm!732692 (= call!732697 (regexDepth!519 (ite c!1449079 (reg!21544 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (ite c!1449075 (regOne!42943 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (regTwo!42942 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100)))))))))

(declare-fun b!7892648 () Bool)

(declare-fun e!4659260 () Bool)

(declare-fun call!732701 () Int)

(assert (=> b!7892648 (= e!4659260 (> lt!2681634 call!732701))))

(declare-fun b!7892649 () Bool)

(declare-fun e!4659256 () Int)

(assert (=> b!7892649 (= e!4659256 (+ 1 call!732697))))

(declare-fun b!7892650 () Bool)

(declare-fun e!4659265 () Bool)

(assert (=> b!7892650 (= e!4659265 e!4659260)))

(declare-fun res!3131969 () Bool)

(assert (=> b!7892650 (= res!3131969 (> lt!2681634 call!732700))))

(assert (=> b!7892650 (=> (not res!3131969) (not e!4659260))))

(declare-fun b!7892651 () Bool)

(assert (=> b!7892651 (= c!1449075 ((_ is Union!21215) (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun e!4659263 () Int)

(assert (=> b!7892651 (= e!4659256 e!4659263)))

(declare-fun b!7892652 () Bool)

(declare-fun e!4659257 () Int)

(assert (=> b!7892652 (= e!4659257 1)))

(declare-fun bm!732693 () Bool)

(assert (=> bm!732693 (= call!732699 call!732700)))

(declare-fun bm!732694 () Bool)

(declare-fun call!732695 () Int)

(assert (=> bm!732694 (= call!732695 (regexDepth!519 (ite c!1449075 (regTwo!42943 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (regOne!42942 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))))

(declare-fun call!732698 () Int)

(declare-fun call!732696 () Int)

(declare-fun bm!732695 () Bool)

(assert (=> bm!732695 (= call!732696 (maxBigInt!0 (ite c!1449075 call!732698 call!732695) (ite c!1449075 call!732695 call!732698)))))

(declare-fun b!7892653 () Bool)

(declare-fun e!4659262 () Bool)

(assert (=> b!7892653 (= e!4659262 e!4659265)))

(assert (=> b!7892653 (= c!1449077 ((_ is Union!21215) (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun d!2357144 () Bool)

(assert (=> d!2357144 e!4659262))

(declare-fun res!3131968 () Bool)

(assert (=> d!2357144 (=> (not res!3131968) (not e!4659262))))

(assert (=> d!2357144 (= res!3131968 (> lt!2681634 0))))

(declare-fun e!4659261 () Int)

(assert (=> d!2357144 (= lt!2681634 e!4659261)))

(declare-fun c!1449078 () Bool)

(assert (=> d!2357144 (= c!1449078 ((_ is ElementMatch!21215) (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(assert (=> d!2357144 (= (regexDepth!519 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))) lt!2681634)))

(declare-fun bm!732690 () Bool)

(assert (=> bm!732690 (= call!732698 call!732697)))

(declare-fun bm!732696 () Bool)

(assert (=> bm!732696 (= call!732701 (regexDepth!519 (ite c!1449077 (regTwo!42943 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))) (regOne!42942 (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))))

(declare-fun b!7892654 () Bool)

(assert (=> b!7892654 (= e!4659261 1)))

(declare-fun b!7892655 () Bool)

(assert (=> b!7892655 (= e!4659265 e!4659258)))

(assert (=> b!7892655 (= c!1449080 ((_ is Concat!30060) (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun b!7892656 () Bool)

(assert (=> b!7892656 (= e!4659257 (+ 1 call!732696))))

(declare-fun b!7892657 () Bool)

(assert (=> b!7892657 (= e!4659261 e!4659256)))

(assert (=> b!7892657 (= c!1449079 ((_ is Star!21215) (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun b!7892658 () Bool)

(declare-fun res!3131967 () Bool)

(declare-fun e!4659259 () Bool)

(assert (=> b!7892658 (=> (not res!3131967) (not e!4659259))))

(assert (=> b!7892658 (= res!3131967 (> lt!2681634 call!732701))))

(assert (=> b!7892658 (= e!4659258 e!4659259)))

(declare-fun b!7892659 () Bool)

(assert (=> b!7892659 (= e!4659264 (= lt!2681634 1))))

(declare-fun b!7892660 () Bool)

(assert (=> b!7892660 (= e!4659263 e!4659257)))

(declare-fun c!1449081 () Bool)

(assert (=> b!7892660 (= c!1449081 ((_ is Concat!30060) (ite c!1448996 (regTwo!42943 r!14100) (regOne!42942 r!14100))))))

(declare-fun b!7892661 () Bool)

(assert (=> b!7892661 (= e!4659259 (> lt!2681634 call!732699))))

(declare-fun b!7892662 () Bool)

(assert (=> b!7892662 (= e!4659263 (+ 1 call!732696))))

(assert (= (and d!2357144 c!1449078) b!7892654))

(assert (= (and d!2357144 (not c!1449078)) b!7892657))

(assert (= (and b!7892657 c!1449079) b!7892649))

(assert (= (and b!7892657 (not c!1449079)) b!7892651))

(assert (= (and b!7892651 c!1449075) b!7892662))

(assert (= (and b!7892651 (not c!1449075)) b!7892660))

(assert (= (and b!7892660 c!1449081) b!7892656))

(assert (= (and b!7892660 (not c!1449081)) b!7892652))

(assert (= (or b!7892662 b!7892656) bm!732690))

(assert (= (or b!7892662 b!7892656) bm!732694))

(assert (= (or b!7892662 b!7892656) bm!732695))

(assert (= (or b!7892649 bm!732690) bm!732692))

(assert (= (and d!2357144 res!3131968) b!7892653))

(assert (= (and b!7892653 c!1449077) b!7892650))

(assert (= (and b!7892653 (not c!1449077)) b!7892655))

(assert (= (and b!7892650 res!3131969) b!7892648))

(assert (= (and b!7892655 c!1449080) b!7892658))

(assert (= (and b!7892655 (not c!1449080)) b!7892646))

(assert (= (and b!7892658 res!3131967) b!7892661))

(assert (= (and b!7892646 c!1449076) b!7892647))

(assert (= (and b!7892646 (not c!1449076)) b!7892659))

(assert (= (or b!7892661 b!7892647) bm!732693))

(assert (= (or b!7892650 bm!732693) bm!732691))

(assert (= (or b!7892648 b!7892658) bm!732696))

(declare-fun m!8271274 () Bool)

(assert (=> bm!732691 m!8271274))

(declare-fun m!8271276 () Bool)

(assert (=> bm!732695 m!8271276))

(declare-fun m!8271278 () Bool)

(assert (=> bm!732696 m!8271278))

(declare-fun m!8271280 () Bool)

(assert (=> bm!732694 m!8271280))

(declare-fun m!8271282 () Bool)

(assert (=> bm!732692 m!8271282))

(assert (=> bm!732631 d!2357144))

(declare-fun b!7892663 () Bool)

(declare-fun e!4659270 () Bool)

(declare-fun call!732704 () Bool)

(assert (=> b!7892663 (= e!4659270 call!732704)))

(declare-fun b!7892664 () Bool)

(declare-fun e!4659269 () Bool)

(assert (=> b!7892664 (= e!4659269 e!4659270)))

(declare-fun res!3131974 () Bool)

(assert (=> b!7892664 (=> (not res!3131974) (not e!4659270))))

(declare-fun call!732703 () Bool)

(assert (=> b!7892664 (= res!3131974 call!732703)))

(declare-fun b!7892665 () Bool)

(declare-fun e!4659272 () Bool)

(declare-fun e!4659266 () Bool)

(assert (=> b!7892665 (= e!4659272 e!4659266)))

(declare-fun c!1449083 () Bool)

(assert (=> b!7892665 (= c!1449083 ((_ is Union!21215) (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(declare-fun c!1449082 () Bool)

(declare-fun bm!732697 () Bool)

(declare-fun call!732702 () Bool)

(assert (=> bm!732697 (= call!732702 (validRegex!11625 (ite c!1449082 (reg!21544 (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100)))) (ite c!1449083 (regOne!42943 (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100)))) (regTwo!42942 (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100))))))))))

(declare-fun d!2357146 () Bool)

(declare-fun res!3131972 () Bool)

(declare-fun e!4659268 () Bool)

(assert (=> d!2357146 (=> res!3131972 e!4659268)))

(assert (=> d!2357146 (= res!3131972 ((_ is ElementMatch!21215) (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(assert (=> d!2357146 (= (validRegex!11625 (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100)))) e!4659268)))

(declare-fun bm!732698 () Bool)

(assert (=> bm!732698 (= call!732703 (validRegex!11625 (ite c!1449083 (regTwo!42943 (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100)))) (regOne!42942 (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))))

(declare-fun b!7892666 () Bool)

(assert (=> b!7892666 (= e!4659268 e!4659272)))

(assert (=> b!7892666 (= c!1449082 ((_ is Star!21215) (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))

(declare-fun b!7892667 () Bool)

(declare-fun e!4659267 () Bool)

(assert (=> b!7892667 (= e!4659267 call!732702)))

(declare-fun b!7892668 () Bool)

(declare-fun res!3131971 () Bool)

(declare-fun e!4659271 () Bool)

(assert (=> b!7892668 (=> (not res!3131971) (not e!4659271))))

(assert (=> b!7892668 (= res!3131971 call!732704)))

(assert (=> b!7892668 (= e!4659266 e!4659271)))

(declare-fun b!7892669 () Bool)

(declare-fun res!3131973 () Bool)

(assert (=> b!7892669 (=> res!3131973 e!4659269)))

(assert (=> b!7892669 (= res!3131973 (not ((_ is Concat!30060) (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100))))))))

(assert (=> b!7892669 (= e!4659266 e!4659269)))

(declare-fun b!7892670 () Bool)

(assert (=> b!7892670 (= e!4659272 e!4659267)))

(declare-fun res!3131970 () Bool)

(assert (=> b!7892670 (= res!3131970 (not (nullable!9470 (reg!21544 (ite c!1448937 (reg!21544 r!14100) (ite c!1448938 (regOne!42943 r!14100) (regTwo!42942 r!14100)))))))))

(assert (=> b!7892670 (=> (not res!3131970) (not e!4659267))))

(declare-fun b!7892671 () Bool)

(assert (=> b!7892671 (= e!4659271 call!732703)))

(declare-fun bm!732699 () Bool)

(assert (=> bm!732699 (= call!732704 call!732702)))

(assert (= (and d!2357146 (not res!3131972)) b!7892666))

(assert (= (and b!7892666 c!1449082) b!7892670))

(assert (= (and b!7892666 (not c!1449082)) b!7892665))

(assert (= (and b!7892670 res!3131970) b!7892667))

(assert (= (and b!7892665 c!1449083) b!7892668))

(assert (= (and b!7892665 (not c!1449083)) b!7892669))

(assert (= (and b!7892668 res!3131971) b!7892671))

(assert (= (and b!7892669 (not res!3131973)) b!7892664))

(assert (= (and b!7892664 res!3131974) b!7892663))

(assert (= (or b!7892671 b!7892664) bm!732698))

(assert (= (or b!7892668 b!7892663) bm!732699))

(assert (= (or b!7892667 bm!732699) bm!732697))

(declare-fun m!8271284 () Bool)

(assert (=> bm!732697 m!8271284))

(declare-fun m!8271286 () Bool)

(assert (=> bm!732698 m!8271286))

(declare-fun m!8271288 () Bool)

(assert (=> b!7892670 m!8271288))

(assert (=> bm!732575 d!2357146))

(declare-fun e!4659273 () Bool)

(assert (=> b!7892469 (= tp!2348965 e!4659273)))

(declare-fun b!7892674 () Bool)

(declare-fun tp!2348972 () Bool)

(assert (=> b!7892674 (= e!4659273 tp!2348972)))

(declare-fun b!7892673 () Bool)

(declare-fun tp!2348971 () Bool)

(declare-fun tp!2348973 () Bool)

(assert (=> b!7892673 (= e!4659273 (and tp!2348971 tp!2348973))))

(declare-fun b!7892675 () Bool)

(declare-fun tp!2348974 () Bool)

(declare-fun tp!2348975 () Bool)

(assert (=> b!7892675 (= e!4659273 (and tp!2348974 tp!2348975))))

(declare-fun b!7892672 () Bool)

(assert (=> b!7892672 (= e!4659273 tp_is_empty!52829)))

(assert (= (and b!7892469 ((_ is ElementMatch!21215) (regOne!42942 (regTwo!42943 r!14100)))) b!7892672))

(assert (= (and b!7892469 ((_ is Concat!30060) (regOne!42942 (regTwo!42943 r!14100)))) b!7892673))

(assert (= (and b!7892469 ((_ is Star!21215) (regOne!42942 (regTwo!42943 r!14100)))) b!7892674))

(assert (= (and b!7892469 ((_ is Union!21215) (regOne!42942 (regTwo!42943 r!14100)))) b!7892675))

(declare-fun e!4659274 () Bool)

(assert (=> b!7892469 (= tp!2348967 e!4659274)))

(declare-fun b!7892678 () Bool)

(declare-fun tp!2348977 () Bool)

(assert (=> b!7892678 (= e!4659274 tp!2348977)))

(declare-fun b!7892677 () Bool)

(declare-fun tp!2348976 () Bool)

(declare-fun tp!2348978 () Bool)

(assert (=> b!7892677 (= e!4659274 (and tp!2348976 tp!2348978))))

(declare-fun b!7892679 () Bool)

(declare-fun tp!2348979 () Bool)

(declare-fun tp!2348980 () Bool)

(assert (=> b!7892679 (= e!4659274 (and tp!2348979 tp!2348980))))

(declare-fun b!7892676 () Bool)

(assert (=> b!7892676 (= e!4659274 tp_is_empty!52829)))

(assert (= (and b!7892469 ((_ is ElementMatch!21215) (regTwo!42942 (regTwo!42943 r!14100)))) b!7892676))

(assert (= (and b!7892469 ((_ is Concat!30060) (regTwo!42942 (regTwo!42943 r!14100)))) b!7892677))

(assert (= (and b!7892469 ((_ is Star!21215) (regTwo!42942 (regTwo!42943 r!14100)))) b!7892678))

(assert (= (and b!7892469 ((_ is Union!21215) (regTwo!42942 (regTwo!42943 r!14100)))) b!7892679))

(declare-fun e!4659275 () Bool)

(assert (=> b!7892461 (= tp!2348955 e!4659275)))

(declare-fun b!7892682 () Bool)

(declare-fun tp!2348982 () Bool)

(assert (=> b!7892682 (= e!4659275 tp!2348982)))

(declare-fun b!7892681 () Bool)

(declare-fun tp!2348981 () Bool)

(declare-fun tp!2348983 () Bool)

(assert (=> b!7892681 (= e!4659275 (and tp!2348981 tp!2348983))))

(declare-fun b!7892683 () Bool)

(declare-fun tp!2348984 () Bool)

(declare-fun tp!2348985 () Bool)

(assert (=> b!7892683 (= e!4659275 (and tp!2348984 tp!2348985))))

(declare-fun b!7892680 () Bool)

(assert (=> b!7892680 (= e!4659275 tp_is_empty!52829)))

(assert (= (and b!7892461 ((_ is ElementMatch!21215) (regOne!42942 (regTwo!42942 r!14100)))) b!7892680))

(assert (= (and b!7892461 ((_ is Concat!30060) (regOne!42942 (regTwo!42942 r!14100)))) b!7892681))

(assert (= (and b!7892461 ((_ is Star!21215) (regOne!42942 (regTwo!42942 r!14100)))) b!7892682))

(assert (= (and b!7892461 ((_ is Union!21215) (regOne!42942 (regTwo!42942 r!14100)))) b!7892683))

(declare-fun e!4659276 () Bool)

(assert (=> b!7892461 (= tp!2348957 e!4659276)))

(declare-fun b!7892686 () Bool)

(declare-fun tp!2348987 () Bool)

(assert (=> b!7892686 (= e!4659276 tp!2348987)))

(declare-fun b!7892685 () Bool)

(declare-fun tp!2348986 () Bool)

(declare-fun tp!2348988 () Bool)

(assert (=> b!7892685 (= e!4659276 (and tp!2348986 tp!2348988))))

(declare-fun b!7892687 () Bool)

(declare-fun tp!2348989 () Bool)

(declare-fun tp!2348990 () Bool)

(assert (=> b!7892687 (= e!4659276 (and tp!2348989 tp!2348990))))

(declare-fun b!7892684 () Bool)

(assert (=> b!7892684 (= e!4659276 tp_is_empty!52829)))

(assert (= (and b!7892461 ((_ is ElementMatch!21215) (regTwo!42942 (regTwo!42942 r!14100)))) b!7892684))

(assert (= (and b!7892461 ((_ is Concat!30060) (regTwo!42942 (regTwo!42942 r!14100)))) b!7892685))

(assert (= (and b!7892461 ((_ is Star!21215) (regTwo!42942 (regTwo!42942 r!14100)))) b!7892686))

(assert (= (and b!7892461 ((_ is Union!21215) (regTwo!42942 (regTwo!42942 r!14100)))) b!7892687))

(declare-fun e!4659277 () Bool)

(assert (=> b!7892470 (= tp!2348966 e!4659277)))

(declare-fun b!7892690 () Bool)

(declare-fun tp!2348992 () Bool)

(assert (=> b!7892690 (= e!4659277 tp!2348992)))

(declare-fun b!7892689 () Bool)

(declare-fun tp!2348991 () Bool)

(declare-fun tp!2348993 () Bool)

(assert (=> b!7892689 (= e!4659277 (and tp!2348991 tp!2348993))))

(declare-fun b!7892691 () Bool)

(declare-fun tp!2348994 () Bool)

(declare-fun tp!2348995 () Bool)

(assert (=> b!7892691 (= e!4659277 (and tp!2348994 tp!2348995))))

(declare-fun b!7892688 () Bool)

(assert (=> b!7892688 (= e!4659277 tp_is_empty!52829)))

(assert (= (and b!7892470 ((_ is ElementMatch!21215) (reg!21544 (regTwo!42943 r!14100)))) b!7892688))

(assert (= (and b!7892470 ((_ is Concat!30060) (reg!21544 (regTwo!42943 r!14100)))) b!7892689))

(assert (= (and b!7892470 ((_ is Star!21215) (reg!21544 (regTwo!42943 r!14100)))) b!7892690))

(assert (= (and b!7892470 ((_ is Union!21215) (reg!21544 (regTwo!42943 r!14100)))) b!7892691))

(declare-fun b!7892692 () Bool)

(declare-fun e!4659278 () Bool)

(declare-fun tp!2348996 () Bool)

(assert (=> b!7892692 (= e!4659278 (and tp_is_empty!52829 tp!2348996))))

(assert (=> b!7892441 (= tp!2348934 e!4659278)))

(assert (= (and b!7892441 ((_ is Cons!73948) (t!388807 (t!388807 (_1!38337 cut!3))))) b!7892692))

(declare-fun e!4659279 () Bool)

(assert (=> b!7892465 (= tp!2348960 e!4659279)))

(declare-fun b!7892695 () Bool)

(declare-fun tp!2348998 () Bool)

(assert (=> b!7892695 (= e!4659279 tp!2348998)))

(declare-fun b!7892694 () Bool)

(declare-fun tp!2348997 () Bool)

(declare-fun tp!2348999 () Bool)

(assert (=> b!7892694 (= e!4659279 (and tp!2348997 tp!2348999))))

(declare-fun b!7892696 () Bool)

(declare-fun tp!2349000 () Bool)

(declare-fun tp!2349001 () Bool)

(assert (=> b!7892696 (= e!4659279 (and tp!2349000 tp!2349001))))

(declare-fun b!7892693 () Bool)

(assert (=> b!7892693 (= e!4659279 tp_is_empty!52829)))

(assert (= (and b!7892465 ((_ is ElementMatch!21215) (regOne!42942 (regOne!42943 r!14100)))) b!7892693))

(assert (= (and b!7892465 ((_ is Concat!30060) (regOne!42942 (regOne!42943 r!14100)))) b!7892694))

(assert (= (and b!7892465 ((_ is Star!21215) (regOne!42942 (regOne!42943 r!14100)))) b!7892695))

(assert (= (and b!7892465 ((_ is Union!21215) (regOne!42942 (regOne!42943 r!14100)))) b!7892696))

(declare-fun e!4659280 () Bool)

(assert (=> b!7892465 (= tp!2348962 e!4659280)))

(declare-fun b!7892699 () Bool)

(declare-fun tp!2349003 () Bool)

(assert (=> b!7892699 (= e!4659280 tp!2349003)))

(declare-fun b!7892698 () Bool)

(declare-fun tp!2349002 () Bool)

(declare-fun tp!2349004 () Bool)

(assert (=> b!7892698 (= e!4659280 (and tp!2349002 tp!2349004))))

(declare-fun b!7892700 () Bool)

(declare-fun tp!2349005 () Bool)

(declare-fun tp!2349006 () Bool)

(assert (=> b!7892700 (= e!4659280 (and tp!2349005 tp!2349006))))

(declare-fun b!7892697 () Bool)

(assert (=> b!7892697 (= e!4659280 tp_is_empty!52829)))

(assert (= (and b!7892465 ((_ is ElementMatch!21215) (regTwo!42942 (regOne!42943 r!14100)))) b!7892697))

(assert (= (and b!7892465 ((_ is Concat!30060) (regTwo!42942 (regOne!42943 r!14100)))) b!7892698))

(assert (= (and b!7892465 ((_ is Star!21215) (regTwo!42942 (regOne!42943 r!14100)))) b!7892699))

(assert (= (and b!7892465 ((_ is Union!21215) (regTwo!42942 (regOne!42943 r!14100)))) b!7892700))

(declare-fun e!4659281 () Bool)

(assert (=> b!7892453 (= tp!2348945 e!4659281)))

(declare-fun b!7892703 () Bool)

(declare-fun tp!2349008 () Bool)

(assert (=> b!7892703 (= e!4659281 tp!2349008)))

(declare-fun b!7892702 () Bool)

(declare-fun tp!2349007 () Bool)

(declare-fun tp!2349009 () Bool)

(assert (=> b!7892702 (= e!4659281 (and tp!2349007 tp!2349009))))

(declare-fun b!7892704 () Bool)

(declare-fun tp!2349010 () Bool)

(declare-fun tp!2349011 () Bool)

(assert (=> b!7892704 (= e!4659281 (and tp!2349010 tp!2349011))))

(declare-fun b!7892701 () Bool)

(assert (=> b!7892701 (= e!4659281 tp_is_empty!52829)))

(assert (= (and b!7892453 ((_ is ElementMatch!21215) (regOne!42942 (reg!21544 r!14100)))) b!7892701))

(assert (= (and b!7892453 ((_ is Concat!30060) (regOne!42942 (reg!21544 r!14100)))) b!7892702))

(assert (= (and b!7892453 ((_ is Star!21215) (regOne!42942 (reg!21544 r!14100)))) b!7892703))

(assert (= (and b!7892453 ((_ is Union!21215) (regOne!42942 (reg!21544 r!14100)))) b!7892704))

(declare-fun e!4659282 () Bool)

(assert (=> b!7892453 (= tp!2348947 e!4659282)))

(declare-fun b!7892707 () Bool)

(declare-fun tp!2349013 () Bool)

(assert (=> b!7892707 (= e!4659282 tp!2349013)))

(declare-fun b!7892706 () Bool)

(declare-fun tp!2349012 () Bool)

(declare-fun tp!2349014 () Bool)

(assert (=> b!7892706 (= e!4659282 (and tp!2349012 tp!2349014))))

(declare-fun b!7892708 () Bool)

(declare-fun tp!2349015 () Bool)

(declare-fun tp!2349016 () Bool)

(assert (=> b!7892708 (= e!4659282 (and tp!2349015 tp!2349016))))

(declare-fun b!7892705 () Bool)

(assert (=> b!7892705 (= e!4659282 tp_is_empty!52829)))

(assert (= (and b!7892453 ((_ is ElementMatch!21215) (regTwo!42942 (reg!21544 r!14100)))) b!7892705))

(assert (= (and b!7892453 ((_ is Concat!30060) (regTwo!42942 (reg!21544 r!14100)))) b!7892706))

(assert (= (and b!7892453 ((_ is Star!21215) (regTwo!42942 (reg!21544 r!14100)))) b!7892707))

(assert (= (and b!7892453 ((_ is Union!21215) (regTwo!42942 (reg!21544 r!14100)))) b!7892708))

(declare-fun e!4659283 () Bool)

(assert (=> b!7892467 (= tp!2348963 e!4659283)))

(declare-fun b!7892711 () Bool)

(declare-fun tp!2349018 () Bool)

(assert (=> b!7892711 (= e!4659283 tp!2349018)))

(declare-fun b!7892710 () Bool)

(declare-fun tp!2349017 () Bool)

(declare-fun tp!2349019 () Bool)

(assert (=> b!7892710 (= e!4659283 (and tp!2349017 tp!2349019))))

(declare-fun b!7892712 () Bool)

(declare-fun tp!2349020 () Bool)

(declare-fun tp!2349021 () Bool)

(assert (=> b!7892712 (= e!4659283 (and tp!2349020 tp!2349021))))

(declare-fun b!7892709 () Bool)

(assert (=> b!7892709 (= e!4659283 tp_is_empty!52829)))

(assert (= (and b!7892467 ((_ is ElementMatch!21215) (regOne!42943 (regOne!42943 r!14100)))) b!7892709))

(assert (= (and b!7892467 ((_ is Concat!30060) (regOne!42943 (regOne!42943 r!14100)))) b!7892710))

(assert (= (and b!7892467 ((_ is Star!21215) (regOne!42943 (regOne!42943 r!14100)))) b!7892711))

(assert (= (and b!7892467 ((_ is Union!21215) (regOne!42943 (regOne!42943 r!14100)))) b!7892712))

(declare-fun e!4659284 () Bool)

(assert (=> b!7892467 (= tp!2348964 e!4659284)))

(declare-fun b!7892715 () Bool)

(declare-fun tp!2349023 () Bool)

(assert (=> b!7892715 (= e!4659284 tp!2349023)))

(declare-fun b!7892714 () Bool)

(declare-fun tp!2349022 () Bool)

(declare-fun tp!2349024 () Bool)

(assert (=> b!7892714 (= e!4659284 (and tp!2349022 tp!2349024))))

(declare-fun b!7892716 () Bool)

(declare-fun tp!2349025 () Bool)

(declare-fun tp!2349026 () Bool)

(assert (=> b!7892716 (= e!4659284 (and tp!2349025 tp!2349026))))

(declare-fun b!7892713 () Bool)

(assert (=> b!7892713 (= e!4659284 tp_is_empty!52829)))

(assert (= (and b!7892467 ((_ is ElementMatch!21215) (regTwo!42943 (regOne!42943 r!14100)))) b!7892713))

(assert (= (and b!7892467 ((_ is Concat!30060) (regTwo!42943 (regOne!42943 r!14100)))) b!7892714))

(assert (= (and b!7892467 ((_ is Star!21215) (regTwo!42943 (regOne!42943 r!14100)))) b!7892715))

(assert (= (and b!7892467 ((_ is Union!21215) (regTwo!42943 (regOne!42943 r!14100)))) b!7892716))

(declare-fun e!4659285 () Bool)

(assert (=> b!7892462 (= tp!2348956 e!4659285)))

(declare-fun b!7892719 () Bool)

(declare-fun tp!2349028 () Bool)

(assert (=> b!7892719 (= e!4659285 tp!2349028)))

(declare-fun b!7892718 () Bool)

(declare-fun tp!2349027 () Bool)

(declare-fun tp!2349029 () Bool)

(assert (=> b!7892718 (= e!4659285 (and tp!2349027 tp!2349029))))

(declare-fun b!7892720 () Bool)

(declare-fun tp!2349030 () Bool)

(declare-fun tp!2349031 () Bool)

(assert (=> b!7892720 (= e!4659285 (and tp!2349030 tp!2349031))))

(declare-fun b!7892717 () Bool)

(assert (=> b!7892717 (= e!4659285 tp_is_empty!52829)))

(assert (= (and b!7892462 ((_ is ElementMatch!21215) (reg!21544 (regTwo!42942 r!14100)))) b!7892717))

(assert (= (and b!7892462 ((_ is Concat!30060) (reg!21544 (regTwo!42942 r!14100)))) b!7892718))

(assert (= (and b!7892462 ((_ is Star!21215) (reg!21544 (regTwo!42942 r!14100)))) b!7892719))

(assert (= (and b!7892462 ((_ is Union!21215) (reg!21544 (regTwo!42942 r!14100)))) b!7892720))

(declare-fun e!4659286 () Bool)

(assert (=> b!7892471 (= tp!2348968 e!4659286)))

(declare-fun b!7892723 () Bool)

(declare-fun tp!2349033 () Bool)

(assert (=> b!7892723 (= e!4659286 tp!2349033)))

(declare-fun b!7892722 () Bool)

(declare-fun tp!2349032 () Bool)

(declare-fun tp!2349034 () Bool)

(assert (=> b!7892722 (= e!4659286 (and tp!2349032 tp!2349034))))

(declare-fun b!7892724 () Bool)

(declare-fun tp!2349035 () Bool)

(declare-fun tp!2349036 () Bool)

(assert (=> b!7892724 (= e!4659286 (and tp!2349035 tp!2349036))))

(declare-fun b!7892721 () Bool)

(assert (=> b!7892721 (= e!4659286 tp_is_empty!52829)))

(assert (= (and b!7892471 ((_ is ElementMatch!21215) (regOne!42943 (regTwo!42943 r!14100)))) b!7892721))

(assert (= (and b!7892471 ((_ is Concat!30060) (regOne!42943 (regTwo!42943 r!14100)))) b!7892722))

(assert (= (and b!7892471 ((_ is Star!21215) (regOne!42943 (regTwo!42943 r!14100)))) b!7892723))

(assert (= (and b!7892471 ((_ is Union!21215) (regOne!42943 (regTwo!42943 r!14100)))) b!7892724))

(declare-fun e!4659287 () Bool)

(assert (=> b!7892471 (= tp!2348969 e!4659287)))

(declare-fun b!7892727 () Bool)

(declare-fun tp!2349038 () Bool)

(assert (=> b!7892727 (= e!4659287 tp!2349038)))

(declare-fun b!7892726 () Bool)

(declare-fun tp!2349037 () Bool)

(declare-fun tp!2349039 () Bool)

(assert (=> b!7892726 (= e!4659287 (and tp!2349037 tp!2349039))))

(declare-fun b!7892728 () Bool)

(declare-fun tp!2349040 () Bool)

(declare-fun tp!2349041 () Bool)

(assert (=> b!7892728 (= e!4659287 (and tp!2349040 tp!2349041))))

(declare-fun b!7892725 () Bool)

(assert (=> b!7892725 (= e!4659287 tp_is_empty!52829)))

(assert (= (and b!7892471 ((_ is ElementMatch!21215) (regTwo!42943 (regTwo!42943 r!14100)))) b!7892725))

(assert (= (and b!7892471 ((_ is Concat!30060) (regTwo!42943 (regTwo!42943 r!14100)))) b!7892726))

(assert (= (and b!7892471 ((_ is Star!21215) (regTwo!42943 (regTwo!42943 r!14100)))) b!7892727))

(assert (= (and b!7892471 ((_ is Union!21215) (regTwo!42943 (regTwo!42943 r!14100)))) b!7892728))

(declare-fun e!4659288 () Bool)

(assert (=> b!7892457 (= tp!2348950 e!4659288)))

(declare-fun b!7892731 () Bool)

(declare-fun tp!2349043 () Bool)

(assert (=> b!7892731 (= e!4659288 tp!2349043)))

(declare-fun b!7892730 () Bool)

(declare-fun tp!2349042 () Bool)

(declare-fun tp!2349044 () Bool)

(assert (=> b!7892730 (= e!4659288 (and tp!2349042 tp!2349044))))

(declare-fun b!7892732 () Bool)

(declare-fun tp!2349045 () Bool)

(declare-fun tp!2349046 () Bool)

(assert (=> b!7892732 (= e!4659288 (and tp!2349045 tp!2349046))))

(declare-fun b!7892729 () Bool)

(assert (=> b!7892729 (= e!4659288 tp_is_empty!52829)))

(assert (= (and b!7892457 ((_ is ElementMatch!21215) (regOne!42942 (regOne!42942 r!14100)))) b!7892729))

(assert (= (and b!7892457 ((_ is Concat!30060) (regOne!42942 (regOne!42942 r!14100)))) b!7892730))

(assert (= (and b!7892457 ((_ is Star!21215) (regOne!42942 (regOne!42942 r!14100)))) b!7892731))

(assert (= (and b!7892457 ((_ is Union!21215) (regOne!42942 (regOne!42942 r!14100)))) b!7892732))

(declare-fun e!4659289 () Bool)

(assert (=> b!7892457 (= tp!2348952 e!4659289)))

(declare-fun b!7892735 () Bool)

(declare-fun tp!2349048 () Bool)

(assert (=> b!7892735 (= e!4659289 tp!2349048)))

(declare-fun b!7892734 () Bool)

(declare-fun tp!2349047 () Bool)

(declare-fun tp!2349049 () Bool)

(assert (=> b!7892734 (= e!4659289 (and tp!2349047 tp!2349049))))

(declare-fun b!7892736 () Bool)

(declare-fun tp!2349050 () Bool)

(declare-fun tp!2349051 () Bool)

(assert (=> b!7892736 (= e!4659289 (and tp!2349050 tp!2349051))))

(declare-fun b!7892733 () Bool)

(assert (=> b!7892733 (= e!4659289 tp_is_empty!52829)))

(assert (= (and b!7892457 ((_ is ElementMatch!21215) (regTwo!42942 (regOne!42942 r!14100)))) b!7892733))

(assert (= (and b!7892457 ((_ is Concat!30060) (regTwo!42942 (regOne!42942 r!14100)))) b!7892734))

(assert (= (and b!7892457 ((_ is Star!21215) (regTwo!42942 (regOne!42942 r!14100)))) b!7892735))

(assert (= (and b!7892457 ((_ is Union!21215) (regTwo!42942 (regOne!42942 r!14100)))) b!7892736))

(declare-fun e!4659290 () Bool)

(assert (=> b!7892466 (= tp!2348961 e!4659290)))

(declare-fun b!7892739 () Bool)

(declare-fun tp!2349053 () Bool)

(assert (=> b!7892739 (= e!4659290 tp!2349053)))

(declare-fun b!7892738 () Bool)

(declare-fun tp!2349052 () Bool)

(declare-fun tp!2349054 () Bool)

(assert (=> b!7892738 (= e!4659290 (and tp!2349052 tp!2349054))))

(declare-fun b!7892740 () Bool)

(declare-fun tp!2349055 () Bool)

(declare-fun tp!2349056 () Bool)

(assert (=> b!7892740 (= e!4659290 (and tp!2349055 tp!2349056))))

(declare-fun b!7892737 () Bool)

(assert (=> b!7892737 (= e!4659290 tp_is_empty!52829)))

(assert (= (and b!7892466 ((_ is ElementMatch!21215) (reg!21544 (regOne!42943 r!14100)))) b!7892737))

(assert (= (and b!7892466 ((_ is Concat!30060) (reg!21544 (regOne!42943 r!14100)))) b!7892738))

(assert (= (and b!7892466 ((_ is Star!21215) (reg!21544 (regOne!42943 r!14100)))) b!7892739))

(assert (= (and b!7892466 ((_ is Union!21215) (reg!21544 (regOne!42943 r!14100)))) b!7892740))

(declare-fun e!4659291 () Bool)

(assert (=> b!7892459 (= tp!2348953 e!4659291)))

(declare-fun b!7892743 () Bool)

(declare-fun tp!2349058 () Bool)

(assert (=> b!7892743 (= e!4659291 tp!2349058)))

(declare-fun b!7892742 () Bool)

(declare-fun tp!2349057 () Bool)

(declare-fun tp!2349059 () Bool)

(assert (=> b!7892742 (= e!4659291 (and tp!2349057 tp!2349059))))

(declare-fun b!7892744 () Bool)

(declare-fun tp!2349060 () Bool)

(declare-fun tp!2349061 () Bool)

(assert (=> b!7892744 (= e!4659291 (and tp!2349060 tp!2349061))))

(declare-fun b!7892741 () Bool)

(assert (=> b!7892741 (= e!4659291 tp_is_empty!52829)))

(assert (= (and b!7892459 ((_ is ElementMatch!21215) (regOne!42943 (regOne!42942 r!14100)))) b!7892741))

(assert (= (and b!7892459 ((_ is Concat!30060) (regOne!42943 (regOne!42942 r!14100)))) b!7892742))

(assert (= (and b!7892459 ((_ is Star!21215) (regOne!42943 (regOne!42942 r!14100)))) b!7892743))

(assert (= (and b!7892459 ((_ is Union!21215) (regOne!42943 (regOne!42942 r!14100)))) b!7892744))

(declare-fun e!4659292 () Bool)

(assert (=> b!7892459 (= tp!2348954 e!4659292)))

(declare-fun b!7892747 () Bool)

(declare-fun tp!2349063 () Bool)

(assert (=> b!7892747 (= e!4659292 tp!2349063)))

(declare-fun b!7892746 () Bool)

(declare-fun tp!2349062 () Bool)

(declare-fun tp!2349064 () Bool)

(assert (=> b!7892746 (= e!4659292 (and tp!2349062 tp!2349064))))

(declare-fun b!7892748 () Bool)

(declare-fun tp!2349065 () Bool)

(declare-fun tp!2349066 () Bool)

(assert (=> b!7892748 (= e!4659292 (and tp!2349065 tp!2349066))))

(declare-fun b!7892745 () Bool)

(assert (=> b!7892745 (= e!4659292 tp_is_empty!52829)))

(assert (= (and b!7892459 ((_ is ElementMatch!21215) (regTwo!42943 (regOne!42942 r!14100)))) b!7892745))

(assert (= (and b!7892459 ((_ is Concat!30060) (regTwo!42943 (regOne!42942 r!14100)))) b!7892746))

(assert (= (and b!7892459 ((_ is Star!21215) (regTwo!42943 (regOne!42942 r!14100)))) b!7892747))

(assert (= (and b!7892459 ((_ is Union!21215) (regTwo!42943 (regOne!42942 r!14100)))) b!7892748))

(declare-fun e!4659293 () Bool)

(assert (=> b!7892454 (= tp!2348946 e!4659293)))

(declare-fun b!7892751 () Bool)

(declare-fun tp!2349068 () Bool)

(assert (=> b!7892751 (= e!4659293 tp!2349068)))

(declare-fun b!7892750 () Bool)

(declare-fun tp!2349067 () Bool)

(declare-fun tp!2349069 () Bool)

(assert (=> b!7892750 (= e!4659293 (and tp!2349067 tp!2349069))))

(declare-fun b!7892752 () Bool)

(declare-fun tp!2349070 () Bool)

(declare-fun tp!2349071 () Bool)

(assert (=> b!7892752 (= e!4659293 (and tp!2349070 tp!2349071))))

(declare-fun b!7892749 () Bool)

(assert (=> b!7892749 (= e!4659293 tp_is_empty!52829)))

(assert (= (and b!7892454 ((_ is ElementMatch!21215) (reg!21544 (reg!21544 r!14100)))) b!7892749))

(assert (= (and b!7892454 ((_ is Concat!30060) (reg!21544 (reg!21544 r!14100)))) b!7892750))

(assert (= (and b!7892454 ((_ is Star!21215) (reg!21544 (reg!21544 r!14100)))) b!7892751))

(assert (= (and b!7892454 ((_ is Union!21215) (reg!21544 (reg!21544 r!14100)))) b!7892752))

(declare-fun e!4659294 () Bool)

(assert (=> b!7892463 (= tp!2348958 e!4659294)))

(declare-fun b!7892755 () Bool)

(declare-fun tp!2349073 () Bool)

(assert (=> b!7892755 (= e!4659294 tp!2349073)))

(declare-fun b!7892754 () Bool)

(declare-fun tp!2349072 () Bool)

(declare-fun tp!2349074 () Bool)

(assert (=> b!7892754 (= e!4659294 (and tp!2349072 tp!2349074))))

(declare-fun b!7892756 () Bool)

(declare-fun tp!2349075 () Bool)

(declare-fun tp!2349076 () Bool)

(assert (=> b!7892756 (= e!4659294 (and tp!2349075 tp!2349076))))

(declare-fun b!7892753 () Bool)

(assert (=> b!7892753 (= e!4659294 tp_is_empty!52829)))

(assert (= (and b!7892463 ((_ is ElementMatch!21215) (regOne!42943 (regTwo!42942 r!14100)))) b!7892753))

(assert (= (and b!7892463 ((_ is Concat!30060) (regOne!42943 (regTwo!42942 r!14100)))) b!7892754))

(assert (= (and b!7892463 ((_ is Star!21215) (regOne!42943 (regTwo!42942 r!14100)))) b!7892755))

(assert (= (and b!7892463 ((_ is Union!21215) (regOne!42943 (regTwo!42942 r!14100)))) b!7892756))

(declare-fun e!4659295 () Bool)

(assert (=> b!7892463 (= tp!2348959 e!4659295)))

(declare-fun b!7892759 () Bool)

(declare-fun tp!2349078 () Bool)

(assert (=> b!7892759 (= e!4659295 tp!2349078)))

(declare-fun b!7892758 () Bool)

(declare-fun tp!2349077 () Bool)

(declare-fun tp!2349079 () Bool)

(assert (=> b!7892758 (= e!4659295 (and tp!2349077 tp!2349079))))

(declare-fun b!7892760 () Bool)

(declare-fun tp!2349080 () Bool)

(declare-fun tp!2349081 () Bool)

(assert (=> b!7892760 (= e!4659295 (and tp!2349080 tp!2349081))))

(declare-fun b!7892757 () Bool)

(assert (=> b!7892757 (= e!4659295 tp_is_empty!52829)))

(assert (= (and b!7892463 ((_ is ElementMatch!21215) (regTwo!42943 (regTwo!42942 r!14100)))) b!7892757))

(assert (= (and b!7892463 ((_ is Concat!30060) (regTwo!42943 (regTwo!42942 r!14100)))) b!7892758))

(assert (= (and b!7892463 ((_ is Star!21215) (regTwo!42943 (regTwo!42942 r!14100)))) b!7892759))

(assert (= (and b!7892463 ((_ is Union!21215) (regTwo!42943 (regTwo!42942 r!14100)))) b!7892760))

(declare-fun e!4659296 () Bool)

(assert (=> b!7892458 (= tp!2348951 e!4659296)))

(declare-fun b!7892763 () Bool)

(declare-fun tp!2349083 () Bool)

(assert (=> b!7892763 (= e!4659296 tp!2349083)))

(declare-fun b!7892762 () Bool)

(declare-fun tp!2349082 () Bool)

(declare-fun tp!2349084 () Bool)

(assert (=> b!7892762 (= e!4659296 (and tp!2349082 tp!2349084))))

(declare-fun b!7892764 () Bool)

(declare-fun tp!2349085 () Bool)

(declare-fun tp!2349086 () Bool)

(assert (=> b!7892764 (= e!4659296 (and tp!2349085 tp!2349086))))

(declare-fun b!7892761 () Bool)

(assert (=> b!7892761 (= e!4659296 tp_is_empty!52829)))

(assert (= (and b!7892458 ((_ is ElementMatch!21215) (reg!21544 (regOne!42942 r!14100)))) b!7892761))

(assert (= (and b!7892458 ((_ is Concat!30060) (reg!21544 (regOne!42942 r!14100)))) b!7892762))

(assert (= (and b!7892458 ((_ is Star!21215) (reg!21544 (regOne!42942 r!14100)))) b!7892763))

(assert (= (and b!7892458 ((_ is Union!21215) (reg!21544 (regOne!42942 r!14100)))) b!7892764))

(declare-fun b!7892765 () Bool)

(declare-fun e!4659297 () Bool)

(declare-fun tp!2349087 () Bool)

(assert (=> b!7892765 (= e!4659297 (and tp_is_empty!52829 tp!2349087))))

(assert (=> b!7892472 (= tp!2348970 e!4659297)))

(assert (= (and b!7892472 ((_ is Cons!73948) (t!388807 (t!388807 (_2!38337 cut!3))))) b!7892765))

(declare-fun e!4659298 () Bool)

(assert (=> b!7892455 (= tp!2348948 e!4659298)))

(declare-fun b!7892768 () Bool)

(declare-fun tp!2349089 () Bool)

(assert (=> b!7892768 (= e!4659298 tp!2349089)))

(declare-fun b!7892767 () Bool)

(declare-fun tp!2349088 () Bool)

(declare-fun tp!2349090 () Bool)

(assert (=> b!7892767 (= e!4659298 (and tp!2349088 tp!2349090))))

(declare-fun b!7892769 () Bool)

(declare-fun tp!2349091 () Bool)

(declare-fun tp!2349092 () Bool)

(assert (=> b!7892769 (= e!4659298 (and tp!2349091 tp!2349092))))

(declare-fun b!7892766 () Bool)

(assert (=> b!7892766 (= e!4659298 tp_is_empty!52829)))

(assert (= (and b!7892455 ((_ is ElementMatch!21215) (regOne!42943 (reg!21544 r!14100)))) b!7892766))

(assert (= (and b!7892455 ((_ is Concat!30060) (regOne!42943 (reg!21544 r!14100)))) b!7892767))

(assert (= (and b!7892455 ((_ is Star!21215) (regOne!42943 (reg!21544 r!14100)))) b!7892768))

(assert (= (and b!7892455 ((_ is Union!21215) (regOne!42943 (reg!21544 r!14100)))) b!7892769))

(declare-fun e!4659299 () Bool)

(assert (=> b!7892455 (= tp!2348949 e!4659299)))

(declare-fun b!7892772 () Bool)

(declare-fun tp!2349094 () Bool)

(assert (=> b!7892772 (= e!4659299 tp!2349094)))

(declare-fun b!7892771 () Bool)

(declare-fun tp!2349093 () Bool)

(declare-fun tp!2349095 () Bool)

(assert (=> b!7892771 (= e!4659299 (and tp!2349093 tp!2349095))))

(declare-fun b!7892773 () Bool)

(declare-fun tp!2349096 () Bool)

(declare-fun tp!2349097 () Bool)

(assert (=> b!7892773 (= e!4659299 (and tp!2349096 tp!2349097))))

(declare-fun b!7892770 () Bool)

(assert (=> b!7892770 (= e!4659299 tp_is_empty!52829)))

(assert (= (and b!7892455 ((_ is ElementMatch!21215) (regTwo!42943 (reg!21544 r!14100)))) b!7892770))

(assert (= (and b!7892455 ((_ is Concat!30060) (regTwo!42943 (reg!21544 r!14100)))) b!7892771))

(assert (= (and b!7892455 ((_ is Star!21215) (regTwo!42943 (reg!21544 r!14100)))) b!7892772))

(assert (= (and b!7892455 ((_ is Union!21215) (regTwo!42943 (reg!21544 r!14100)))) b!7892773))

(declare-fun b!7892774 () Bool)

(declare-fun e!4659300 () Bool)

(declare-fun tp!2349098 () Bool)

(assert (=> b!7892774 (= e!4659300 (and tp_is_empty!52829 tp!2349098))))

(assert (=> b!7892440 (= tp!2348933 e!4659300)))

(assert (= (and b!7892440 ((_ is Cons!73948) (t!388807 (t!388807 s!9586)))) b!7892774))

(check-sat (not d!2357104) (not b!7892758) (not b!7892769) (not bm!732652) (not b!7892738) (not b!7892636) (not b!7892772) (not bm!732684) (not b!7892525) (not b!7892686) (not b!7892685) (not bm!732696) (not b!7892724) (not bm!732639) (not b!7892687) (not bm!732671) (not bm!732673) (not b!7892678) (not b!7892699) (not b!7892682) (not b!7892694) (not bm!732691) (not b!7892727) (not bm!732661) (not b!7892744) (not b!7892703) (not bm!732686) (not bm!732638) (not bm!732679) (not b!7892716) (not b!7892689) (not b!7892700) (not d!2357132) (not b!7892695) (not b!7892630) tp_is_empty!52829 (not b!7892728) (not b!7892752) (not b!7892739) (not b!7892546) (not b!7892619) (not b!7892764) (not bm!732674) (not b!7892720) (not bm!732694) (not b!7892760) (not b!7892759) (not bm!732682) (not b!7892707) (not b!7892756) (not bm!732668) (not bm!732660) (not b!7892592) (not b!7892588) (not bm!732647) (not b!7892742) (not b!7892706) (not bm!732654) (not b!7892768) (not b!7892734) (not b!7892704) (not bm!732676) (not bm!732635) (not b!7892726) (not b!7892718) (not bm!732666) (not b!7892747) (not b!7892679) (not b!7892754) (not b!7892771) (not b!7892740) (not bm!732687) (not b!7892681) (not bm!732692) (not b!7892746) (not b!7892626) (not b!7892698) (not bm!732670) (not b!7892621) (not b!7892773) (not bm!732667) (not bm!732653) (not d!2357118) (not bm!732677) (not bm!732664) (not b!7892751) (not b!7892767) (not b!7892691) (not bm!732685) (not b!7892743) (not bm!732663) (not b!7892683) (not b!7892712) (not bm!732650) (not b!7892730) (not bm!732645) (not bm!732646) (not b!7892670) (not b!7892748) (not b!7892765) (not b!7892675) (not b!7892732) (not b!7892714) (not b!7892750) (not b!7892690) (not b!7892735) (not b!7892774) (not b!7892692) (not bm!732640) (not b!7892722) (not b!7892696) (not bm!732649) (not bm!732659) (not b!7892755) (not b!7892763) (not b!7892551) (not b!7892762) (not bm!732675) (not bm!732656) (not bm!732636) (not b!7892715) (not bm!732688) (not b!7892731) (not b!7892702) (not b!7892736) (not b!7892526) (not bm!732695) (not b!7892711) (not bm!732657) (not b!7892723) (not b!7892644) (not b!7892710) (not b!7892549) (not b!7892719) (not b!7892708) (not b!7892677) (not bm!732697) (not b!7892623) (not bm!732683) (not b!7892674) (not b!7892673) (not bm!732698) (not bm!732642) (not bm!732643) (not bm!732680))
(check-sat)
