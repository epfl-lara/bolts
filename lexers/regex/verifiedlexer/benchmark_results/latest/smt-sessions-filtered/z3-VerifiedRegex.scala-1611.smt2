; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82794 () Bool)

(assert start!82794)

(declare-fun b!922215 () Bool)

(assert (=> b!922215 true))

(assert (=> b!922215 true))

(declare-fun lambda!30128 () Int)

(declare-fun lambda!30127 () Int)

(assert (=> b!922215 (not (= lambda!30128 lambda!30127))))

(assert (=> b!922215 true))

(assert (=> b!922215 true))

(declare-fun bs!236953 () Bool)

(declare-fun b!922216 () Bool)

(assert (= bs!236953 (and b!922216 b!922215)))

(declare-fun lambda!30129 () Int)

(declare-datatypes ((C!5532 0))(
  ( (C!5533 (val!3014 Int)) )
))
(declare-datatypes ((Regex!2481 0))(
  ( (ElementMatch!2481 (c!149646 C!5532)) (Concat!4314 (regOne!5474 Regex!2481) (regTwo!5474 Regex!2481)) (EmptyExpr!2481) (Star!2481 (reg!2810 Regex!2481)) (EmptyLang!2481) (Union!2481 (regOne!5475 Regex!2481) (regTwo!5475 Regex!2481)) )
))
(declare-fun r!15766 () Regex!2481)

(declare-fun lt!338690 () Regex!2481)

(declare-fun lt!338685 () Regex!2481)

(assert (=> bs!236953 (= (and (= lt!338685 (regOne!5474 r!15766)) (= lt!338690 (regTwo!5474 r!15766))) (= lambda!30129 lambda!30127))))

(assert (=> bs!236953 (not (= lambda!30129 lambda!30128))))

(assert (=> b!922216 true))

(assert (=> b!922216 true))

(assert (=> b!922216 true))

(declare-fun lambda!30130 () Int)

(assert (=> bs!236953 (not (= lambda!30130 lambda!30127))))

(assert (=> bs!236953 (= (and (= lt!338685 (regOne!5474 r!15766)) (= lt!338690 (regTwo!5474 r!15766))) (= lambda!30130 lambda!30128))))

(assert (=> b!922216 (not (= lambda!30130 lambda!30129))))

(assert (=> b!922216 true))

(assert (=> b!922216 true))

(assert (=> b!922216 true))

(declare-fun b!922208 () Bool)

(declare-fun e!600325 () Bool)

(declare-fun validRegex!950 (Regex!2481) Bool)

(assert (=> b!922208 (= e!600325 (validRegex!950 (regOne!5474 r!15766)))))

(declare-fun b!922209 () Bool)

(declare-fun e!600327 () Bool)

(declare-fun tp!287122 () Bool)

(declare-fun tp!287119 () Bool)

(assert (=> b!922209 (= e!600327 (and tp!287122 tp!287119))))

(declare-fun b!922210 () Bool)

(declare-fun e!600326 () Bool)

(declare-fun e!600322 () Bool)

(assert (=> b!922210 (= e!600326 e!600322)))

(declare-fun res!419262 () Bool)

(assert (=> b!922210 (=> res!419262 e!600322)))

(declare-fun lt!338687 () Regex!2481)

(declare-datatypes ((List!9711 0))(
  ( (Nil!9695) (Cons!9695 (h!15096 C!5532) (t!100757 List!9711)) )
))
(declare-fun s!10566 () List!9711)

(declare-fun matchR!1019 (Regex!2481 List!9711) Bool)

(assert (=> b!922210 (= res!419262 (not (matchR!1019 lt!338687 s!10566)))))

(assert (=> b!922210 (= lt!338687 (Concat!4314 lt!338685 lt!338690))))

(declare-fun removeUselessConcat!158 (Regex!2481) Regex!2481)

(assert (=> b!922210 (= lt!338690 (removeUselessConcat!158 (regTwo!5474 r!15766)))))

(assert (=> b!922210 (= lt!338685 (removeUselessConcat!158 (regOne!5474 r!15766)))))

(declare-fun b!922211 () Bool)

(declare-fun tp_is_empty!4605 () Bool)

(assert (=> b!922211 (= e!600327 tp_is_empty!4605)))

(declare-fun res!419261 () Bool)

(declare-fun e!600323 () Bool)

(assert (=> start!82794 (=> (not res!419261) (not e!600323))))

(assert (=> start!82794 (= res!419261 (validRegex!950 r!15766))))

(assert (=> start!82794 e!600323))

(assert (=> start!82794 e!600327))

(declare-fun e!600324 () Bool)

(assert (=> start!82794 e!600324))

(declare-fun b!922212 () Bool)

(declare-fun tp!287123 () Bool)

(assert (=> b!922212 (= e!600324 (and tp_is_empty!4605 tp!287123))))

(declare-fun b!922213 () Bool)

(declare-fun tp!287120 () Bool)

(assert (=> b!922213 (= e!600327 tp!287120)))

(declare-fun b!922214 () Bool)

(declare-fun e!600321 () Bool)

(assert (=> b!922214 (= e!600323 (not e!600321))))

(declare-fun res!419258 () Bool)

(assert (=> b!922214 (=> res!419258 e!600321)))

(declare-fun lt!338684 () Bool)

(get-info :version)

(assert (=> b!922214 (= res!419258 (or lt!338684 (and ((_ is Concat!4314) r!15766) ((_ is EmptyExpr!2481) (regOne!5474 r!15766))) (and ((_ is Concat!4314) r!15766) ((_ is EmptyExpr!2481) (regTwo!5474 r!15766))) (not ((_ is Concat!4314) r!15766))))))

(declare-fun matchRSpec!282 (Regex!2481 List!9711) Bool)

(assert (=> b!922214 (= lt!338684 (matchRSpec!282 r!15766 s!10566))))

(assert (=> b!922214 (= lt!338684 (matchR!1019 r!15766 s!10566))))

(declare-datatypes ((Unit!14581 0))(
  ( (Unit!14582) )
))
(declare-fun lt!338681 () Unit!14581)

(declare-fun mainMatchTheorem!282 (Regex!2481 List!9711) Unit!14581)

(assert (=> b!922214 (= lt!338681 (mainMatchTheorem!282 r!15766 s!10566))))

(assert (=> b!922215 (= e!600321 e!600326)))

(declare-fun res!419260 () Bool)

(assert (=> b!922215 (=> res!419260 e!600326)))

(declare-fun isEmpty!5942 (List!9711) Bool)

(assert (=> b!922215 (= res!419260 (isEmpty!5942 s!10566))))

(declare-fun Exists!252 (Int) Bool)

(assert (=> b!922215 (= (Exists!252 lambda!30127) (Exists!252 lambda!30128))))

(declare-fun lt!338688 () Unit!14581)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!164 (Regex!2481 Regex!2481 List!9711) Unit!14581)

(assert (=> b!922215 (= lt!338688 (lemmaExistCutMatchRandMatchRSpecEquivalent!164 (regOne!5474 r!15766) (regTwo!5474 r!15766) s!10566))))

(declare-datatypes ((tuple2!10948 0))(
  ( (tuple2!10949 (_1!6300 List!9711) (_2!6300 List!9711)) )
))
(declare-datatypes ((Option!2116 0))(
  ( (None!2115) (Some!2115 (v!19532 tuple2!10948)) )
))
(declare-fun isDefined!1758 (Option!2116) Bool)

(declare-fun findConcatSeparation!222 (Regex!2481 Regex!2481 List!9711 List!9711 List!9711) Option!2116)

(assert (=> b!922215 (= (isDefined!1758 (findConcatSeparation!222 (regOne!5474 r!15766) (regTwo!5474 r!15766) Nil!9695 s!10566 s!10566)) (Exists!252 lambda!30127))))

(declare-fun lt!338683 () Unit!14581)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!222 (Regex!2481 Regex!2481 List!9711) Unit!14581)

(assert (=> b!922215 (= lt!338683 (lemmaFindConcatSeparationEquivalentToExists!222 (regOne!5474 r!15766) (regTwo!5474 r!15766) s!10566))))

(assert (=> b!922216 (= e!600322 e!600325)))

(declare-fun res!419259 () Bool)

(assert (=> b!922216 (=> res!419259 e!600325)))

(declare-fun lt!338682 () Bool)

(assert (=> b!922216 (= res!419259 (not lt!338682))))

(assert (=> b!922216 (= (Exists!252 lambda!30129) (Exists!252 lambda!30130))))

(declare-fun lt!338689 () Unit!14581)

(assert (=> b!922216 (= lt!338689 (lemmaExistCutMatchRandMatchRSpecEquivalent!164 lt!338685 lt!338690 s!10566))))

(assert (=> b!922216 (= lt!338682 (Exists!252 lambda!30129))))

(assert (=> b!922216 (= lt!338682 (isDefined!1758 (findConcatSeparation!222 lt!338685 lt!338690 Nil!9695 s!10566 s!10566)))))

(declare-fun lt!338686 () Unit!14581)

(assert (=> b!922216 (= lt!338686 (lemmaFindConcatSeparationEquivalentToExists!222 lt!338685 lt!338690 s!10566))))

(assert (=> b!922216 (matchRSpec!282 lt!338687 s!10566)))

(declare-fun lt!338691 () Unit!14581)

(assert (=> b!922216 (= lt!338691 (mainMatchTheorem!282 lt!338687 s!10566))))

(declare-fun b!922217 () Bool)

(declare-fun tp!287124 () Bool)

(declare-fun tp!287121 () Bool)

(assert (=> b!922217 (= e!600327 (and tp!287124 tp!287121))))

(assert (= (and start!82794 res!419261) b!922214))

(assert (= (and b!922214 (not res!419258)) b!922215))

(assert (= (and b!922215 (not res!419260)) b!922210))

(assert (= (and b!922210 (not res!419262)) b!922216))

(assert (= (and b!922216 (not res!419259)) b!922208))

(assert (= (and start!82794 ((_ is ElementMatch!2481) r!15766)) b!922211))

(assert (= (and start!82794 ((_ is Concat!4314) r!15766)) b!922217))

(assert (= (and start!82794 ((_ is Star!2481) r!15766)) b!922213))

(assert (= (and start!82794 ((_ is Union!2481) r!15766)) b!922209))

(assert (= (and start!82794 ((_ is Cons!9695) s!10566)) b!922212))

(declare-fun m!1148943 () Bool)

(assert (=> start!82794 m!1148943))

(declare-fun m!1148945 () Bool)

(assert (=> b!922208 m!1148945))

(declare-fun m!1148947 () Bool)

(assert (=> b!922215 m!1148947))

(declare-fun m!1148949 () Bool)

(assert (=> b!922215 m!1148949))

(declare-fun m!1148951 () Bool)

(assert (=> b!922215 m!1148951))

(declare-fun m!1148953 () Bool)

(assert (=> b!922215 m!1148953))

(declare-fun m!1148955 () Bool)

(assert (=> b!922215 m!1148955))

(declare-fun m!1148957 () Bool)

(assert (=> b!922215 m!1148957))

(assert (=> b!922215 m!1148949))

(assert (=> b!922215 m!1148957))

(declare-fun m!1148959 () Bool)

(assert (=> b!922215 m!1148959))

(declare-fun m!1148961 () Bool)

(assert (=> b!922214 m!1148961))

(declare-fun m!1148963 () Bool)

(assert (=> b!922214 m!1148963))

(declare-fun m!1148965 () Bool)

(assert (=> b!922214 m!1148965))

(declare-fun m!1148967 () Bool)

(assert (=> b!922216 m!1148967))

(declare-fun m!1148969 () Bool)

(assert (=> b!922216 m!1148969))

(declare-fun m!1148971 () Bool)

(assert (=> b!922216 m!1148971))

(declare-fun m!1148973 () Bool)

(assert (=> b!922216 m!1148973))

(declare-fun m!1148975 () Bool)

(assert (=> b!922216 m!1148975))

(assert (=> b!922216 m!1148975))

(declare-fun m!1148977 () Bool)

(assert (=> b!922216 m!1148977))

(declare-fun m!1148979 () Bool)

(assert (=> b!922216 m!1148979))

(assert (=> b!922216 m!1148973))

(declare-fun m!1148981 () Bool)

(assert (=> b!922216 m!1148981))

(declare-fun m!1148983 () Bool)

(assert (=> b!922210 m!1148983))

(declare-fun m!1148985 () Bool)

(assert (=> b!922210 m!1148985))

(declare-fun m!1148987 () Bool)

(assert (=> b!922210 m!1148987))

(check-sat (not b!922215) (not b!922216) (not b!922209) (not b!922208) (not b!922217) (not b!922212) (not start!82794) (not b!922214) tp_is_empty!4605 (not b!922213) (not b!922210))
(check-sat)
(get-model)

(declare-fun bm!56176 () Bool)

(declare-fun call!56182 () Bool)

(declare-fun c!149657 () Bool)

(assert (=> bm!56176 (= call!56182 (validRegex!950 (ite c!149657 (regTwo!5475 (regOne!5474 r!15766)) (regTwo!5474 (regOne!5474 r!15766)))))))

(declare-fun b!922279 () Bool)

(declare-fun res!419303 () Bool)

(declare-fun e!600374 () Bool)

(assert (=> b!922279 (=> res!419303 e!600374)))

(assert (=> b!922279 (= res!419303 (not ((_ is Concat!4314) (regOne!5474 r!15766))))))

(declare-fun e!600372 () Bool)

(assert (=> b!922279 (= e!600372 e!600374)))

(declare-fun bm!56177 () Bool)

(declare-fun call!56183 () Bool)

(declare-fun call!56181 () Bool)

(assert (=> bm!56177 (= call!56183 call!56181)))

(declare-fun b!922280 () Bool)

(declare-fun e!600373 () Bool)

(assert (=> b!922280 (= e!600373 e!600372)))

(assert (=> b!922280 (= c!149657 ((_ is Union!2481) (regOne!5474 r!15766)))))

(declare-fun d!280594 () Bool)

(declare-fun res!419302 () Bool)

(declare-fun e!600370 () Bool)

(assert (=> d!280594 (=> res!419302 e!600370)))

(assert (=> d!280594 (= res!419302 ((_ is ElementMatch!2481) (regOne!5474 r!15766)))))

(assert (=> d!280594 (= (validRegex!950 (regOne!5474 r!15766)) e!600370)))

(declare-fun b!922281 () Bool)

(declare-fun e!600369 () Bool)

(assert (=> b!922281 (= e!600374 e!600369)))

(declare-fun res!419301 () Bool)

(assert (=> b!922281 (=> (not res!419301) (not e!600369))))

(assert (=> b!922281 (= res!419301 call!56183)))

(declare-fun b!922282 () Bool)

(declare-fun e!600375 () Bool)

(assert (=> b!922282 (= e!600375 call!56182)))

(declare-fun b!922283 () Bool)

(declare-fun res!419304 () Bool)

(assert (=> b!922283 (=> (not res!419304) (not e!600375))))

(assert (=> b!922283 (= res!419304 call!56183)))

(assert (=> b!922283 (= e!600372 e!600375)))

(declare-fun b!922284 () Bool)

(assert (=> b!922284 (= e!600369 call!56182)))

(declare-fun b!922285 () Bool)

(declare-fun e!600371 () Bool)

(assert (=> b!922285 (= e!600371 call!56181)))

(declare-fun b!922286 () Bool)

(assert (=> b!922286 (= e!600373 e!600371)))

(declare-fun res!419300 () Bool)

(declare-fun nullable!693 (Regex!2481) Bool)

(assert (=> b!922286 (= res!419300 (not (nullable!693 (reg!2810 (regOne!5474 r!15766)))))))

(assert (=> b!922286 (=> (not res!419300) (not e!600371))))

(declare-fun b!922287 () Bool)

(assert (=> b!922287 (= e!600370 e!600373)))

(declare-fun c!149658 () Bool)

(assert (=> b!922287 (= c!149658 ((_ is Star!2481) (regOne!5474 r!15766)))))

(declare-fun bm!56178 () Bool)

(assert (=> bm!56178 (= call!56181 (validRegex!950 (ite c!149658 (reg!2810 (regOne!5474 r!15766)) (ite c!149657 (regOne!5475 (regOne!5474 r!15766)) (regOne!5474 (regOne!5474 r!15766))))))))

(assert (= (and d!280594 (not res!419302)) b!922287))

(assert (= (and b!922287 c!149658) b!922286))

(assert (= (and b!922287 (not c!149658)) b!922280))

(assert (= (and b!922286 res!419300) b!922285))

(assert (= (and b!922280 c!149657) b!922283))

(assert (= (and b!922280 (not c!149657)) b!922279))

(assert (= (and b!922283 res!419304) b!922282))

(assert (= (and b!922279 (not res!419303)) b!922281))

(assert (= (and b!922281 res!419301) b!922284))

(assert (= (or b!922282 b!922284) bm!56176))

(assert (= (or b!922283 b!922281) bm!56177))

(assert (= (or b!922285 bm!56177) bm!56178))

(declare-fun m!1149017 () Bool)

(assert (=> bm!56176 m!1149017))

(declare-fun m!1149019 () Bool)

(assert (=> b!922286 m!1149019))

(declare-fun m!1149021 () Bool)

(assert (=> bm!56178 m!1149021))

(assert (=> b!922208 d!280594))

(declare-fun d!280606 () Bool)

(assert (=> d!280606 (= (isEmpty!5942 s!10566) ((_ is Nil!9695) s!10566))))

(assert (=> b!922215 d!280606))

(declare-fun d!280608 () Bool)

(declare-fun isEmpty!5944 (Option!2116) Bool)

(assert (=> d!280608 (= (isDefined!1758 (findConcatSeparation!222 (regOne!5474 r!15766) (regTwo!5474 r!15766) Nil!9695 s!10566 s!10566)) (not (isEmpty!5944 (findConcatSeparation!222 (regOne!5474 r!15766) (regTwo!5474 r!15766) Nil!9695 s!10566 s!10566))))))

(declare-fun bs!236965 () Bool)

(assert (= bs!236965 d!280608))

(assert (=> bs!236965 m!1148949))

(declare-fun m!1149023 () Bool)

(assert (=> bs!236965 m!1149023))

(assert (=> b!922215 d!280608))

(declare-fun bs!236975 () Bool)

(declare-fun d!280610 () Bool)

(assert (= bs!236975 (and d!280610 b!922215)))

(declare-fun lambda!30148 () Int)

(assert (=> bs!236975 (= lambda!30148 lambda!30127)))

(assert (=> bs!236975 (not (= lambda!30148 lambda!30128))))

(declare-fun bs!236976 () Bool)

(assert (= bs!236976 (and d!280610 b!922216)))

(assert (=> bs!236976 (= (and (= (regOne!5474 r!15766) lt!338685) (= (regTwo!5474 r!15766) lt!338690)) (= lambda!30148 lambda!30129))))

(assert (=> bs!236976 (not (= lambda!30148 lambda!30130))))

(assert (=> d!280610 true))

(assert (=> d!280610 true))

(assert (=> d!280610 true))

(assert (=> d!280610 (= (isDefined!1758 (findConcatSeparation!222 (regOne!5474 r!15766) (regTwo!5474 r!15766) Nil!9695 s!10566 s!10566)) (Exists!252 lambda!30148))))

(declare-fun lt!338703 () Unit!14581)

(declare-fun choose!5660 (Regex!2481 Regex!2481 List!9711) Unit!14581)

(assert (=> d!280610 (= lt!338703 (choose!5660 (regOne!5474 r!15766) (regTwo!5474 r!15766) s!10566))))

(assert (=> d!280610 (validRegex!950 (regOne!5474 r!15766))))

(assert (=> d!280610 (= (lemmaFindConcatSeparationEquivalentToExists!222 (regOne!5474 r!15766) (regTwo!5474 r!15766) s!10566) lt!338703)))

(declare-fun bs!236977 () Bool)

(assert (= bs!236977 d!280610))

(declare-fun m!1149031 () Bool)

(assert (=> bs!236977 m!1149031))

(assert (=> bs!236977 m!1148945))

(assert (=> bs!236977 m!1148949))

(declare-fun m!1149033 () Bool)

(assert (=> bs!236977 m!1149033))

(assert (=> bs!236977 m!1148949))

(assert (=> bs!236977 m!1148951))

(assert (=> b!922215 d!280610))

(declare-fun b!922460 () Bool)

(declare-fun e!600473 () Option!2116)

(assert (=> b!922460 (= e!600473 None!2115)))

(declare-fun b!922461 () Bool)

(declare-fun res!419390 () Bool)

(declare-fun e!600471 () Bool)

(assert (=> b!922461 (=> (not res!419390) (not e!600471))))

(declare-fun lt!338730 () Option!2116)

(declare-fun get!3165 (Option!2116) tuple2!10948)

(assert (=> b!922461 (= res!419390 (matchR!1019 (regOne!5474 r!15766) (_1!6300 (get!3165 lt!338730))))))

(declare-fun b!922462 () Bool)

(declare-fun res!419387 () Bool)

(assert (=> b!922462 (=> (not res!419387) (not e!600471))))

(assert (=> b!922462 (= res!419387 (matchR!1019 (regTwo!5474 r!15766) (_2!6300 (get!3165 lt!338730))))))

(declare-fun b!922463 () Bool)

(declare-fun e!600472 () Option!2116)

(assert (=> b!922463 (= e!600472 (Some!2115 (tuple2!10949 Nil!9695 s!10566)))))

(declare-fun b!922464 () Bool)

(declare-fun e!600474 () Bool)

(assert (=> b!922464 (= e!600474 (not (isDefined!1758 lt!338730)))))

(declare-fun d!280614 () Bool)

(assert (=> d!280614 e!600474))

(declare-fun res!419389 () Bool)

(assert (=> d!280614 (=> res!419389 e!600474)))

(assert (=> d!280614 (= res!419389 e!600471)))

(declare-fun res!419391 () Bool)

(assert (=> d!280614 (=> (not res!419391) (not e!600471))))

(assert (=> d!280614 (= res!419391 (isDefined!1758 lt!338730))))

(assert (=> d!280614 (= lt!338730 e!600472)))

(declare-fun c!149704 () Bool)

(declare-fun e!600475 () Bool)

(assert (=> d!280614 (= c!149704 e!600475)))

(declare-fun res!419388 () Bool)

(assert (=> d!280614 (=> (not res!419388) (not e!600475))))

(assert (=> d!280614 (= res!419388 (matchR!1019 (regOne!5474 r!15766) Nil!9695))))

(assert (=> d!280614 (validRegex!950 (regOne!5474 r!15766))))

(assert (=> d!280614 (= (findConcatSeparation!222 (regOne!5474 r!15766) (regTwo!5474 r!15766) Nil!9695 s!10566 s!10566) lt!338730)))

(declare-fun b!922465 () Bool)

(assert (=> b!922465 (= e!600472 e!600473)))

(declare-fun c!149705 () Bool)

(assert (=> b!922465 (= c!149705 ((_ is Nil!9695) s!10566))))

(declare-fun b!922466 () Bool)

(declare-fun lt!338729 () Unit!14581)

(declare-fun lt!338731 () Unit!14581)

(assert (=> b!922466 (= lt!338729 lt!338731)))

(declare-fun ++!2569 (List!9711 List!9711) List!9711)

(assert (=> b!922466 (= (++!2569 (++!2569 Nil!9695 (Cons!9695 (h!15096 s!10566) Nil!9695)) (t!100757 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!184 (List!9711 C!5532 List!9711 List!9711) Unit!14581)

(assert (=> b!922466 (= lt!338731 (lemmaMoveElementToOtherListKeepsConcatEq!184 Nil!9695 (h!15096 s!10566) (t!100757 s!10566) s!10566))))

(assert (=> b!922466 (= e!600473 (findConcatSeparation!222 (regOne!5474 r!15766) (regTwo!5474 r!15766) (++!2569 Nil!9695 (Cons!9695 (h!15096 s!10566) Nil!9695)) (t!100757 s!10566) s!10566))))

(declare-fun b!922467 () Bool)

(assert (=> b!922467 (= e!600475 (matchR!1019 (regTwo!5474 r!15766) s!10566))))

(declare-fun b!922468 () Bool)

(assert (=> b!922468 (= e!600471 (= (++!2569 (_1!6300 (get!3165 lt!338730)) (_2!6300 (get!3165 lt!338730))) s!10566))))

(assert (= (and d!280614 res!419388) b!922467))

(assert (= (and d!280614 c!149704) b!922463))

(assert (= (and d!280614 (not c!149704)) b!922465))

(assert (= (and b!922465 c!149705) b!922460))

(assert (= (and b!922465 (not c!149705)) b!922466))

(assert (= (and d!280614 res!419391) b!922461))

(assert (= (and b!922461 res!419390) b!922462))

(assert (= (and b!922462 res!419387) b!922468))

(assert (= (and d!280614 (not res!419389)) b!922464))

(declare-fun m!1149107 () Bool)

(assert (=> b!922467 m!1149107))

(declare-fun m!1149109 () Bool)

(assert (=> b!922461 m!1149109))

(declare-fun m!1149111 () Bool)

(assert (=> b!922461 m!1149111))

(assert (=> b!922462 m!1149109))

(declare-fun m!1149113 () Bool)

(assert (=> b!922462 m!1149113))

(declare-fun m!1149115 () Bool)

(assert (=> b!922466 m!1149115))

(assert (=> b!922466 m!1149115))

(declare-fun m!1149117 () Bool)

(assert (=> b!922466 m!1149117))

(declare-fun m!1149119 () Bool)

(assert (=> b!922466 m!1149119))

(assert (=> b!922466 m!1149115))

(declare-fun m!1149121 () Bool)

(assert (=> b!922466 m!1149121))

(declare-fun m!1149123 () Bool)

(assert (=> b!922464 m!1149123))

(assert (=> b!922468 m!1149109))

(declare-fun m!1149125 () Bool)

(assert (=> b!922468 m!1149125))

(assert (=> d!280614 m!1149123))

(declare-fun m!1149127 () Bool)

(assert (=> d!280614 m!1149127))

(assert (=> d!280614 m!1148945))

(assert (=> b!922215 d!280614))

(declare-fun d!280636 () Bool)

(declare-fun choose!5661 (Int) Bool)

(assert (=> d!280636 (= (Exists!252 lambda!30127) (choose!5661 lambda!30127))))

(declare-fun bs!236996 () Bool)

(assert (= bs!236996 d!280636))

(declare-fun m!1149141 () Bool)

(assert (=> bs!236996 m!1149141))

(assert (=> b!922215 d!280636))

(declare-fun bs!237015 () Bool)

(declare-fun d!280640 () Bool)

(assert (= bs!237015 (and d!280640 b!922215)))

(declare-fun lambda!30158 () Int)

(assert (=> bs!237015 (= lambda!30158 lambda!30127)))

(declare-fun bs!237016 () Bool)

(assert (= bs!237016 (and d!280640 d!280610)))

(assert (=> bs!237016 (= lambda!30158 lambda!30148)))

(assert (=> bs!237015 (not (= lambda!30158 lambda!30128))))

(declare-fun bs!237017 () Bool)

(assert (= bs!237017 (and d!280640 b!922216)))

(assert (=> bs!237017 (= (and (= (regOne!5474 r!15766) lt!338685) (= (regTwo!5474 r!15766) lt!338690)) (= lambda!30158 lambda!30129))))

(assert (=> bs!237017 (not (= lambda!30158 lambda!30130))))

(assert (=> d!280640 true))

(assert (=> d!280640 true))

(assert (=> d!280640 true))

(declare-fun lambda!30159 () Int)

(assert (=> bs!237015 (not (= lambda!30159 lambda!30127))))

(declare-fun bs!237018 () Bool)

(assert (= bs!237018 d!280640))

(assert (=> bs!237018 (not (= lambda!30159 lambda!30158))))

(assert (=> bs!237016 (not (= lambda!30159 lambda!30148))))

(assert (=> bs!237015 (= lambda!30159 lambda!30128)))

(assert (=> bs!237017 (not (= lambda!30159 lambda!30129))))

(assert (=> bs!237017 (= (and (= (regOne!5474 r!15766) lt!338685) (= (regTwo!5474 r!15766) lt!338690)) (= lambda!30159 lambda!30130))))

(assert (=> d!280640 true))

(assert (=> d!280640 true))

(assert (=> d!280640 true))

(assert (=> d!280640 (= (Exists!252 lambda!30158) (Exists!252 lambda!30159))))

(declare-fun lt!338738 () Unit!14581)

(declare-fun choose!5662 (Regex!2481 Regex!2481 List!9711) Unit!14581)

(assert (=> d!280640 (= lt!338738 (choose!5662 (regOne!5474 r!15766) (regTwo!5474 r!15766) s!10566))))

(assert (=> d!280640 (validRegex!950 (regOne!5474 r!15766))))

(assert (=> d!280640 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!164 (regOne!5474 r!15766) (regTwo!5474 r!15766) s!10566) lt!338738)))

(declare-fun m!1149167 () Bool)

(assert (=> bs!237018 m!1149167))

(declare-fun m!1149169 () Bool)

(assert (=> bs!237018 m!1149169))

(declare-fun m!1149171 () Bool)

(assert (=> bs!237018 m!1149171))

(assert (=> bs!237018 m!1148945))

(assert (=> b!922215 d!280640))

(declare-fun d!280648 () Bool)

(assert (=> d!280648 (= (Exists!252 lambda!30128) (choose!5661 lambda!30128))))

(declare-fun bs!237019 () Bool)

(assert (= bs!237019 d!280648))

(declare-fun m!1149173 () Bool)

(assert (=> bs!237019 m!1149173))

(assert (=> b!922215 d!280648))

(declare-fun bs!237020 () Bool)

(declare-fun b!922600 () Bool)

(assert (= bs!237020 (and b!922600 b!922215)))

(declare-fun lambda!30164 () Int)

(assert (=> bs!237020 (not (= lambda!30164 lambda!30127))))

(declare-fun bs!237021 () Bool)

(assert (= bs!237021 (and b!922600 d!280640)))

(assert (=> bs!237021 (not (= lambda!30164 lambda!30158))))

(declare-fun bs!237022 () Bool)

(assert (= bs!237022 (and b!922600 d!280610)))

(assert (=> bs!237022 (not (= lambda!30164 lambda!30148))))

(assert (=> bs!237020 (not (= lambda!30164 lambda!30128))))

(declare-fun bs!237023 () Bool)

(assert (= bs!237023 (and b!922600 b!922216)))

(assert (=> bs!237023 (not (= lambda!30164 lambda!30129))))

(assert (=> bs!237023 (not (= lambda!30164 lambda!30130))))

(assert (=> bs!237021 (not (= lambda!30164 lambda!30159))))

(assert (=> b!922600 true))

(assert (=> b!922600 true))

(declare-fun bs!237024 () Bool)

(declare-fun b!922602 () Bool)

(assert (= bs!237024 (and b!922602 b!922215)))

(declare-fun lambda!30165 () Int)

(assert (=> bs!237024 (not (= lambda!30165 lambda!30127))))

(declare-fun bs!237025 () Bool)

(assert (= bs!237025 (and b!922602 d!280610)))

(assert (=> bs!237025 (not (= lambda!30165 lambda!30148))))

(assert (=> bs!237024 (= lambda!30165 lambda!30128)))

(declare-fun bs!237026 () Bool)

(assert (= bs!237026 (and b!922602 b!922216)))

(assert (=> bs!237026 (not (= lambda!30165 lambda!30129))))

(assert (=> bs!237026 (= (and (= (regOne!5474 r!15766) lt!338685) (= (regTwo!5474 r!15766) lt!338690)) (= lambda!30165 lambda!30130))))

(declare-fun bs!237027 () Bool)

(assert (= bs!237027 (and b!922602 d!280640)))

(assert (=> bs!237027 (= lambda!30165 lambda!30159)))

(assert (=> bs!237027 (not (= lambda!30165 lambda!30158))))

(declare-fun bs!237028 () Bool)

(assert (= bs!237028 (and b!922602 b!922600)))

(assert (=> bs!237028 (not (= lambda!30165 lambda!30164))))

(assert (=> b!922602 true))

(assert (=> b!922602 true))

(declare-fun b!922593 () Bool)

(declare-fun e!600539 () Bool)

(declare-fun call!56224 () Bool)

(assert (=> b!922593 (= e!600539 call!56224)))

(declare-fun b!922594 () Bool)

(declare-fun e!600540 () Bool)

(assert (=> b!922594 (= e!600540 (= s!10566 (Cons!9695 (c!149646 r!15766) Nil!9695)))))

(declare-fun b!922595 () Bool)

(declare-fun c!149733 () Bool)

(assert (=> b!922595 (= c!149733 ((_ is ElementMatch!2481) r!15766))))

(declare-fun e!600541 () Bool)

(assert (=> b!922595 (= e!600541 e!600540)))

(declare-fun bm!56218 () Bool)

(declare-fun call!56223 () Bool)

(declare-fun c!149731 () Bool)

(assert (=> bm!56218 (= call!56223 (Exists!252 (ite c!149731 lambda!30164 lambda!30165)))))

(declare-fun b!922597 () Bool)

(declare-fun e!600537 () Bool)

(assert (=> b!922597 (= e!600537 (matchRSpec!282 (regTwo!5475 r!15766) s!10566))))

(declare-fun b!922598 () Bool)

(declare-fun c!149732 () Bool)

(assert (=> b!922598 (= c!149732 ((_ is Union!2481) r!15766))))

(declare-fun e!600538 () Bool)

(assert (=> b!922598 (= e!600540 e!600538)))

(declare-fun bm!56219 () Bool)

(assert (=> bm!56219 (= call!56224 (isEmpty!5942 s!10566))))

(declare-fun b!922599 () Bool)

(assert (=> b!922599 (= e!600538 e!600537)))

(declare-fun res!419433 () Bool)

(assert (=> b!922599 (= res!419433 (matchRSpec!282 (regOne!5475 r!15766) s!10566))))

(assert (=> b!922599 (=> res!419433 e!600537)))

(declare-fun e!600542 () Bool)

(assert (=> b!922600 (= e!600542 call!56223)))

(declare-fun b!922601 () Bool)

(declare-fun e!600536 () Bool)

(assert (=> b!922601 (= e!600538 e!600536)))

(assert (=> b!922601 (= c!149731 ((_ is Star!2481) r!15766))))

(assert (=> b!922602 (= e!600536 call!56223)))

(declare-fun b!922603 () Bool)

(declare-fun res!419432 () Bool)

(assert (=> b!922603 (=> res!419432 e!600542)))

(assert (=> b!922603 (= res!419432 call!56224)))

(assert (=> b!922603 (= e!600536 e!600542)))

(declare-fun b!922596 () Bool)

(assert (=> b!922596 (= e!600539 e!600541)))

(declare-fun res!419431 () Bool)

(assert (=> b!922596 (= res!419431 (not ((_ is EmptyLang!2481) r!15766)))))

(assert (=> b!922596 (=> (not res!419431) (not e!600541))))

(declare-fun d!280650 () Bool)

(declare-fun c!149734 () Bool)

(assert (=> d!280650 (= c!149734 ((_ is EmptyExpr!2481) r!15766))))

(assert (=> d!280650 (= (matchRSpec!282 r!15766 s!10566) e!600539)))

(assert (= (and d!280650 c!149734) b!922593))

(assert (= (and d!280650 (not c!149734)) b!922596))

(assert (= (and b!922596 res!419431) b!922595))

(assert (= (and b!922595 c!149733) b!922594))

(assert (= (and b!922595 (not c!149733)) b!922598))

(assert (= (and b!922598 c!149732) b!922599))

(assert (= (and b!922598 (not c!149732)) b!922601))

(assert (= (and b!922599 (not res!419433)) b!922597))

(assert (= (and b!922601 c!149731) b!922603))

(assert (= (and b!922601 (not c!149731)) b!922602))

(assert (= (and b!922603 (not res!419432)) b!922600))

(assert (= (or b!922600 b!922602) bm!56218))

(assert (= (or b!922593 b!922603) bm!56219))

(declare-fun m!1149175 () Bool)

(assert (=> bm!56218 m!1149175))

(declare-fun m!1149177 () Bool)

(assert (=> b!922597 m!1149177))

(assert (=> bm!56219 m!1148955))

(declare-fun m!1149179 () Bool)

(assert (=> b!922599 m!1149179))

(assert (=> b!922214 d!280650))

(declare-fun b!922632 () Bool)

(declare-fun e!600559 () Bool)

(declare-fun head!1656 (List!9711) C!5532)

(assert (=> b!922632 (= e!600559 (not (= (head!1656 s!10566) (c!149646 r!15766))))))

(declare-fun b!922633 () Bool)

(declare-fun e!600558 () Bool)

(assert (=> b!922633 (= e!600558 (nullable!693 r!15766))))

(declare-fun b!922634 () Bool)

(declare-fun e!600562 () Bool)

(declare-fun lt!338741 () Bool)

(declare-fun call!56227 () Bool)

(assert (=> b!922634 (= e!600562 (= lt!338741 call!56227))))

(declare-fun b!922635 () Bool)

(declare-fun res!419450 () Bool)

(declare-fun e!600563 () Bool)

(assert (=> b!922635 (=> (not res!419450) (not e!600563))))

(declare-fun tail!1218 (List!9711) List!9711)

(assert (=> b!922635 (= res!419450 (isEmpty!5942 (tail!1218 s!10566)))))

(declare-fun b!922636 () Bool)

(declare-fun e!600561 () Bool)

(assert (=> b!922636 (= e!600561 (not lt!338741))))

(declare-fun b!922637 () Bool)

(declare-fun e!600560 () Bool)

(declare-fun e!600557 () Bool)

(assert (=> b!922637 (= e!600560 e!600557)))

(declare-fun res!419454 () Bool)

(assert (=> b!922637 (=> (not res!419454) (not e!600557))))

(assert (=> b!922637 (= res!419454 (not lt!338741))))

(declare-fun d!280652 () Bool)

(assert (=> d!280652 e!600562))

(declare-fun c!149743 () Bool)

(assert (=> d!280652 (= c!149743 ((_ is EmptyExpr!2481) r!15766))))

(assert (=> d!280652 (= lt!338741 e!600558)))

(declare-fun c!149742 () Bool)

(assert (=> d!280652 (= c!149742 (isEmpty!5942 s!10566))))

(assert (=> d!280652 (validRegex!950 r!15766)))

(assert (=> d!280652 (= (matchR!1019 r!15766 s!10566) lt!338741)))

(declare-fun bm!56222 () Bool)

(assert (=> bm!56222 (= call!56227 (isEmpty!5942 s!10566))))

(declare-fun b!922638 () Bool)

(assert (=> b!922638 (= e!600557 e!600559)))

(declare-fun res!419451 () Bool)

(assert (=> b!922638 (=> res!419451 e!600559)))

(assert (=> b!922638 (= res!419451 call!56227)))

(declare-fun b!922639 () Bool)

(declare-fun res!419456 () Bool)

(assert (=> b!922639 (=> res!419456 e!600560)))

(assert (=> b!922639 (= res!419456 (not ((_ is ElementMatch!2481) r!15766)))))

(assert (=> b!922639 (= e!600561 e!600560)))

(declare-fun b!922640 () Bool)

(declare-fun res!419457 () Bool)

(assert (=> b!922640 (=> res!419457 e!600559)))

(assert (=> b!922640 (= res!419457 (not (isEmpty!5942 (tail!1218 s!10566))))))

(declare-fun b!922641 () Bool)

(assert (=> b!922641 (= e!600562 e!600561)))

(declare-fun c!149741 () Bool)

(assert (=> b!922641 (= c!149741 ((_ is EmptyLang!2481) r!15766))))

(declare-fun b!922642 () Bool)

(declare-fun res!419452 () Bool)

(assert (=> b!922642 (=> res!419452 e!600560)))

(assert (=> b!922642 (= res!419452 e!600563)))

(declare-fun res!419453 () Bool)

(assert (=> b!922642 (=> (not res!419453) (not e!600563))))

(assert (=> b!922642 (= res!419453 lt!338741)))

(declare-fun b!922643 () Bool)

(declare-fun res!419455 () Bool)

(assert (=> b!922643 (=> (not res!419455) (not e!600563))))

(assert (=> b!922643 (= res!419455 (not call!56227))))

(declare-fun b!922644 () Bool)

(assert (=> b!922644 (= e!600563 (= (head!1656 s!10566) (c!149646 r!15766)))))

(declare-fun b!922645 () Bool)

(declare-fun derivativeStep!503 (Regex!2481 C!5532) Regex!2481)

(assert (=> b!922645 (= e!600558 (matchR!1019 (derivativeStep!503 r!15766 (head!1656 s!10566)) (tail!1218 s!10566)))))

(assert (= (and d!280652 c!149742) b!922633))

(assert (= (and d!280652 (not c!149742)) b!922645))

(assert (= (and d!280652 c!149743) b!922634))

(assert (= (and d!280652 (not c!149743)) b!922641))

(assert (= (and b!922641 c!149741) b!922636))

(assert (= (and b!922641 (not c!149741)) b!922639))

(assert (= (and b!922639 (not res!419456)) b!922642))

(assert (= (and b!922642 res!419453) b!922643))

(assert (= (and b!922643 res!419455) b!922635))

(assert (= (and b!922635 res!419450) b!922644))

(assert (= (and b!922642 (not res!419452)) b!922637))

(assert (= (and b!922637 res!419454) b!922638))

(assert (= (and b!922638 (not res!419451)) b!922640))

(assert (= (and b!922640 (not res!419457)) b!922632))

(assert (= (or b!922634 b!922638 b!922643) bm!56222))

(assert (=> d!280652 m!1148955))

(assert (=> d!280652 m!1148943))

(declare-fun m!1149181 () Bool)

(assert (=> b!922635 m!1149181))

(assert (=> b!922635 m!1149181))

(declare-fun m!1149183 () Bool)

(assert (=> b!922635 m!1149183))

(declare-fun m!1149185 () Bool)

(assert (=> b!922645 m!1149185))

(assert (=> b!922645 m!1149185))

(declare-fun m!1149187 () Bool)

(assert (=> b!922645 m!1149187))

(assert (=> b!922645 m!1149181))

(assert (=> b!922645 m!1149187))

(assert (=> b!922645 m!1149181))

(declare-fun m!1149189 () Bool)

(assert (=> b!922645 m!1149189))

(assert (=> bm!56222 m!1148955))

(assert (=> b!922640 m!1149181))

(assert (=> b!922640 m!1149181))

(assert (=> b!922640 m!1149183))

(assert (=> b!922632 m!1149185))

(assert (=> b!922644 m!1149185))

(declare-fun m!1149191 () Bool)

(assert (=> b!922633 m!1149191))

(assert (=> b!922214 d!280652))

(declare-fun d!280654 () Bool)

(assert (=> d!280654 (= (matchR!1019 r!15766 s!10566) (matchRSpec!282 r!15766 s!10566))))

(declare-fun lt!338744 () Unit!14581)

(declare-fun choose!5663 (Regex!2481 List!9711) Unit!14581)

(assert (=> d!280654 (= lt!338744 (choose!5663 r!15766 s!10566))))

(assert (=> d!280654 (validRegex!950 r!15766)))

(assert (=> d!280654 (= (mainMatchTheorem!282 r!15766 s!10566) lt!338744)))

(declare-fun bs!237029 () Bool)

(assert (= bs!237029 d!280654))

(assert (=> bs!237029 m!1148963))

(assert (=> bs!237029 m!1148961))

(declare-fun m!1149193 () Bool)

(assert (=> bs!237029 m!1149193))

(assert (=> bs!237029 m!1148943))

(assert (=> b!922214 d!280654))

(declare-fun bm!56223 () Bool)

(declare-fun call!56229 () Bool)

(declare-fun c!149744 () Bool)

(assert (=> bm!56223 (= call!56229 (validRegex!950 (ite c!149744 (regTwo!5475 r!15766) (regTwo!5474 r!15766))))))

(declare-fun b!922646 () Bool)

(declare-fun res!419461 () Bool)

(declare-fun e!600569 () Bool)

(assert (=> b!922646 (=> res!419461 e!600569)))

(assert (=> b!922646 (= res!419461 (not ((_ is Concat!4314) r!15766)))))

(declare-fun e!600567 () Bool)

(assert (=> b!922646 (= e!600567 e!600569)))

(declare-fun bm!56224 () Bool)

(declare-fun call!56230 () Bool)

(declare-fun call!56228 () Bool)

(assert (=> bm!56224 (= call!56230 call!56228)))

(declare-fun b!922647 () Bool)

(declare-fun e!600568 () Bool)

(assert (=> b!922647 (= e!600568 e!600567)))

(assert (=> b!922647 (= c!149744 ((_ is Union!2481) r!15766))))

(declare-fun d!280656 () Bool)

(declare-fun res!419460 () Bool)

(declare-fun e!600565 () Bool)

(assert (=> d!280656 (=> res!419460 e!600565)))

(assert (=> d!280656 (= res!419460 ((_ is ElementMatch!2481) r!15766))))

(assert (=> d!280656 (= (validRegex!950 r!15766) e!600565)))

(declare-fun b!922648 () Bool)

(declare-fun e!600564 () Bool)

(assert (=> b!922648 (= e!600569 e!600564)))

(declare-fun res!419459 () Bool)

(assert (=> b!922648 (=> (not res!419459) (not e!600564))))

(assert (=> b!922648 (= res!419459 call!56230)))

(declare-fun b!922649 () Bool)

(declare-fun e!600570 () Bool)

(assert (=> b!922649 (= e!600570 call!56229)))

(declare-fun b!922650 () Bool)

(declare-fun res!419462 () Bool)

(assert (=> b!922650 (=> (not res!419462) (not e!600570))))

(assert (=> b!922650 (= res!419462 call!56230)))

(assert (=> b!922650 (= e!600567 e!600570)))

(declare-fun b!922651 () Bool)

(assert (=> b!922651 (= e!600564 call!56229)))

(declare-fun b!922652 () Bool)

(declare-fun e!600566 () Bool)

(assert (=> b!922652 (= e!600566 call!56228)))

(declare-fun b!922653 () Bool)

(assert (=> b!922653 (= e!600568 e!600566)))

(declare-fun res!419458 () Bool)

(assert (=> b!922653 (= res!419458 (not (nullable!693 (reg!2810 r!15766))))))

(assert (=> b!922653 (=> (not res!419458) (not e!600566))))

(declare-fun b!922654 () Bool)

(assert (=> b!922654 (= e!600565 e!600568)))

(declare-fun c!149745 () Bool)

(assert (=> b!922654 (= c!149745 ((_ is Star!2481) r!15766))))

(declare-fun bm!56225 () Bool)

(assert (=> bm!56225 (= call!56228 (validRegex!950 (ite c!149745 (reg!2810 r!15766) (ite c!149744 (regOne!5475 r!15766) (regOne!5474 r!15766)))))))

(assert (= (and d!280656 (not res!419460)) b!922654))

(assert (= (and b!922654 c!149745) b!922653))

(assert (= (and b!922654 (not c!149745)) b!922647))

(assert (= (and b!922653 res!419458) b!922652))

(assert (= (and b!922647 c!149744) b!922650))

(assert (= (and b!922647 (not c!149744)) b!922646))

(assert (= (and b!922650 res!419462) b!922649))

(assert (= (and b!922646 (not res!419461)) b!922648))

(assert (= (and b!922648 res!419459) b!922651))

(assert (= (or b!922649 b!922651) bm!56223))

(assert (= (or b!922650 b!922648) bm!56224))

(assert (= (or b!922652 bm!56224) bm!56225))

(declare-fun m!1149195 () Bool)

(assert (=> bm!56223 m!1149195))

(declare-fun m!1149197 () Bool)

(assert (=> b!922653 m!1149197))

(declare-fun m!1149199 () Bool)

(assert (=> bm!56225 m!1149199))

(assert (=> start!82794 d!280656))

(declare-fun d!280658 () Bool)

(assert (=> d!280658 (= (Exists!252 lambda!30129) (choose!5661 lambda!30129))))

(declare-fun bs!237030 () Bool)

(assert (= bs!237030 d!280658))

(declare-fun m!1149201 () Bool)

(assert (=> bs!237030 m!1149201))

(assert (=> b!922216 d!280658))

(declare-fun d!280660 () Bool)

(assert (=> d!280660 (= (Exists!252 lambda!30130) (choose!5661 lambda!30130))))

(declare-fun bs!237031 () Bool)

(assert (= bs!237031 d!280660))

(declare-fun m!1149203 () Bool)

(assert (=> bs!237031 m!1149203))

(assert (=> b!922216 d!280660))

(declare-fun bs!237032 () Bool)

(declare-fun b!922662 () Bool)

(assert (= bs!237032 (and b!922662 b!922215)))

(declare-fun lambda!30166 () Int)

(assert (=> bs!237032 (not (= lambda!30166 lambda!30127))))

(declare-fun bs!237033 () Bool)

(assert (= bs!237033 (and b!922662 d!280610)))

(assert (=> bs!237033 (not (= lambda!30166 lambda!30148))))

(assert (=> bs!237032 (not (= lambda!30166 lambda!30128))))

(declare-fun bs!237034 () Bool)

(assert (= bs!237034 (and b!922662 b!922216)))

(assert (=> bs!237034 (not (= lambda!30166 lambda!30129))))

(declare-fun bs!237035 () Bool)

(assert (= bs!237035 (and b!922662 b!922602)))

(assert (=> bs!237035 (not (= lambda!30166 lambda!30165))))

(assert (=> bs!237034 (not (= lambda!30166 lambda!30130))))

(declare-fun bs!237036 () Bool)

(assert (= bs!237036 (and b!922662 d!280640)))

(assert (=> bs!237036 (not (= lambda!30166 lambda!30159))))

(assert (=> bs!237036 (not (= lambda!30166 lambda!30158))))

(declare-fun bs!237037 () Bool)

(assert (= bs!237037 (and b!922662 b!922600)))

(assert (=> bs!237037 (= (and (= (reg!2810 lt!338687) (reg!2810 r!15766)) (= lt!338687 r!15766)) (= lambda!30166 lambda!30164))))

(assert (=> b!922662 true))

(assert (=> b!922662 true))

(declare-fun bs!237038 () Bool)

(declare-fun b!922664 () Bool)

(assert (= bs!237038 (and b!922664 b!922662)))

(declare-fun lambda!30167 () Int)

(assert (=> bs!237038 (not (= lambda!30167 lambda!30166))))

(declare-fun bs!237039 () Bool)

(assert (= bs!237039 (and b!922664 b!922215)))

(assert (=> bs!237039 (not (= lambda!30167 lambda!30127))))

(declare-fun bs!237040 () Bool)

(assert (= bs!237040 (and b!922664 d!280610)))

(assert (=> bs!237040 (not (= lambda!30167 lambda!30148))))

(assert (=> bs!237039 (= (and (= (regOne!5474 lt!338687) (regOne!5474 r!15766)) (= (regTwo!5474 lt!338687) (regTwo!5474 r!15766))) (= lambda!30167 lambda!30128))))

(declare-fun bs!237041 () Bool)

(assert (= bs!237041 (and b!922664 b!922216)))

(assert (=> bs!237041 (not (= lambda!30167 lambda!30129))))

(declare-fun bs!237042 () Bool)

(assert (= bs!237042 (and b!922664 b!922602)))

(assert (=> bs!237042 (= (and (= (regOne!5474 lt!338687) (regOne!5474 r!15766)) (= (regTwo!5474 lt!338687) (regTwo!5474 r!15766))) (= lambda!30167 lambda!30165))))

(assert (=> bs!237041 (= (and (= (regOne!5474 lt!338687) lt!338685) (= (regTwo!5474 lt!338687) lt!338690)) (= lambda!30167 lambda!30130))))

(declare-fun bs!237043 () Bool)

(assert (= bs!237043 (and b!922664 d!280640)))

(assert (=> bs!237043 (= (and (= (regOne!5474 lt!338687) (regOne!5474 r!15766)) (= (regTwo!5474 lt!338687) (regTwo!5474 r!15766))) (= lambda!30167 lambda!30159))))

(assert (=> bs!237043 (not (= lambda!30167 lambda!30158))))

(declare-fun bs!237044 () Bool)

(assert (= bs!237044 (and b!922664 b!922600)))

(assert (=> bs!237044 (not (= lambda!30167 lambda!30164))))

(assert (=> b!922664 true))

(assert (=> b!922664 true))

(declare-fun b!922655 () Bool)

(declare-fun e!600574 () Bool)

(declare-fun call!56232 () Bool)

(assert (=> b!922655 (= e!600574 call!56232)))

(declare-fun b!922656 () Bool)

(declare-fun e!600575 () Bool)

(assert (=> b!922656 (= e!600575 (= s!10566 (Cons!9695 (c!149646 lt!338687) Nil!9695)))))

(declare-fun b!922657 () Bool)

(declare-fun c!149748 () Bool)

(assert (=> b!922657 (= c!149748 ((_ is ElementMatch!2481) lt!338687))))

(declare-fun e!600576 () Bool)

(assert (=> b!922657 (= e!600576 e!600575)))

(declare-fun bm!56226 () Bool)

(declare-fun call!56231 () Bool)

(declare-fun c!149746 () Bool)

(assert (=> bm!56226 (= call!56231 (Exists!252 (ite c!149746 lambda!30166 lambda!30167)))))

(declare-fun b!922659 () Bool)

(declare-fun e!600572 () Bool)

(assert (=> b!922659 (= e!600572 (matchRSpec!282 (regTwo!5475 lt!338687) s!10566))))

(declare-fun b!922660 () Bool)

(declare-fun c!149747 () Bool)

(assert (=> b!922660 (= c!149747 ((_ is Union!2481) lt!338687))))

(declare-fun e!600573 () Bool)

(assert (=> b!922660 (= e!600575 e!600573)))

(declare-fun bm!56227 () Bool)

(assert (=> bm!56227 (= call!56232 (isEmpty!5942 s!10566))))

(declare-fun b!922661 () Bool)

(assert (=> b!922661 (= e!600573 e!600572)))

(declare-fun res!419465 () Bool)

(assert (=> b!922661 (= res!419465 (matchRSpec!282 (regOne!5475 lt!338687) s!10566))))

(assert (=> b!922661 (=> res!419465 e!600572)))

(declare-fun e!600577 () Bool)

(assert (=> b!922662 (= e!600577 call!56231)))

(declare-fun b!922663 () Bool)

(declare-fun e!600571 () Bool)

(assert (=> b!922663 (= e!600573 e!600571)))

(assert (=> b!922663 (= c!149746 ((_ is Star!2481) lt!338687))))

(assert (=> b!922664 (= e!600571 call!56231)))

(declare-fun b!922665 () Bool)

(declare-fun res!419464 () Bool)

(assert (=> b!922665 (=> res!419464 e!600577)))

(assert (=> b!922665 (= res!419464 call!56232)))

(assert (=> b!922665 (= e!600571 e!600577)))

(declare-fun b!922658 () Bool)

(assert (=> b!922658 (= e!600574 e!600576)))

(declare-fun res!419463 () Bool)

(assert (=> b!922658 (= res!419463 (not ((_ is EmptyLang!2481) lt!338687)))))

(assert (=> b!922658 (=> (not res!419463) (not e!600576))))

(declare-fun d!280662 () Bool)

(declare-fun c!149749 () Bool)

(assert (=> d!280662 (= c!149749 ((_ is EmptyExpr!2481) lt!338687))))

(assert (=> d!280662 (= (matchRSpec!282 lt!338687 s!10566) e!600574)))

(assert (= (and d!280662 c!149749) b!922655))

(assert (= (and d!280662 (not c!149749)) b!922658))

(assert (= (and b!922658 res!419463) b!922657))

(assert (= (and b!922657 c!149748) b!922656))

(assert (= (and b!922657 (not c!149748)) b!922660))

(assert (= (and b!922660 c!149747) b!922661))

(assert (= (and b!922660 (not c!149747)) b!922663))

(assert (= (and b!922661 (not res!419465)) b!922659))

(assert (= (and b!922663 c!149746) b!922665))

(assert (= (and b!922663 (not c!149746)) b!922664))

(assert (= (and b!922665 (not res!419464)) b!922662))

(assert (= (or b!922662 b!922664) bm!56226))

(assert (= (or b!922655 b!922665) bm!56227))

(declare-fun m!1149205 () Bool)

(assert (=> bm!56226 m!1149205))

(declare-fun m!1149207 () Bool)

(assert (=> b!922659 m!1149207))

(assert (=> bm!56227 m!1148955))

(declare-fun m!1149209 () Bool)

(assert (=> b!922661 m!1149209))

(assert (=> b!922216 d!280662))

(declare-fun d!280664 () Bool)

(assert (=> d!280664 (= (matchR!1019 lt!338687 s!10566) (matchRSpec!282 lt!338687 s!10566))))

(declare-fun lt!338745 () Unit!14581)

(assert (=> d!280664 (= lt!338745 (choose!5663 lt!338687 s!10566))))

(assert (=> d!280664 (validRegex!950 lt!338687)))

(assert (=> d!280664 (= (mainMatchTheorem!282 lt!338687 s!10566) lt!338745)))

(declare-fun bs!237045 () Bool)

(assert (= bs!237045 d!280664))

(assert (=> bs!237045 m!1148983))

(assert (=> bs!237045 m!1148969))

(declare-fun m!1149211 () Bool)

(assert (=> bs!237045 m!1149211))

(declare-fun m!1149213 () Bool)

(assert (=> bs!237045 m!1149213))

(assert (=> b!922216 d!280664))

(declare-fun d!280666 () Bool)

(assert (=> d!280666 (= (isDefined!1758 (findConcatSeparation!222 lt!338685 lt!338690 Nil!9695 s!10566 s!10566)) (not (isEmpty!5944 (findConcatSeparation!222 lt!338685 lt!338690 Nil!9695 s!10566 s!10566))))))

(declare-fun bs!237046 () Bool)

(assert (= bs!237046 d!280666))

(assert (=> bs!237046 m!1148975))

(declare-fun m!1149215 () Bool)

(assert (=> bs!237046 m!1149215))

(assert (=> b!922216 d!280666))

(declare-fun b!922666 () Bool)

(declare-fun e!600580 () Option!2116)

(assert (=> b!922666 (= e!600580 None!2115)))

(declare-fun b!922667 () Bool)

(declare-fun res!419469 () Bool)

(declare-fun e!600578 () Bool)

(assert (=> b!922667 (=> (not res!419469) (not e!600578))))

(declare-fun lt!338747 () Option!2116)

(assert (=> b!922667 (= res!419469 (matchR!1019 lt!338685 (_1!6300 (get!3165 lt!338747))))))

(declare-fun b!922668 () Bool)

(declare-fun res!419466 () Bool)

(assert (=> b!922668 (=> (not res!419466) (not e!600578))))

(assert (=> b!922668 (= res!419466 (matchR!1019 lt!338690 (_2!6300 (get!3165 lt!338747))))))

(declare-fun b!922669 () Bool)

(declare-fun e!600579 () Option!2116)

(assert (=> b!922669 (= e!600579 (Some!2115 (tuple2!10949 Nil!9695 s!10566)))))

(declare-fun b!922670 () Bool)

(declare-fun e!600581 () Bool)

(assert (=> b!922670 (= e!600581 (not (isDefined!1758 lt!338747)))))

(declare-fun d!280668 () Bool)

(assert (=> d!280668 e!600581))

(declare-fun res!419468 () Bool)

(assert (=> d!280668 (=> res!419468 e!600581)))

(assert (=> d!280668 (= res!419468 e!600578)))

(declare-fun res!419470 () Bool)

(assert (=> d!280668 (=> (not res!419470) (not e!600578))))

(assert (=> d!280668 (= res!419470 (isDefined!1758 lt!338747))))

(assert (=> d!280668 (= lt!338747 e!600579)))

(declare-fun c!149750 () Bool)

(declare-fun e!600582 () Bool)

(assert (=> d!280668 (= c!149750 e!600582)))

(declare-fun res!419467 () Bool)

(assert (=> d!280668 (=> (not res!419467) (not e!600582))))

(assert (=> d!280668 (= res!419467 (matchR!1019 lt!338685 Nil!9695))))

(assert (=> d!280668 (validRegex!950 lt!338685)))

(assert (=> d!280668 (= (findConcatSeparation!222 lt!338685 lt!338690 Nil!9695 s!10566 s!10566) lt!338747)))

(declare-fun b!922671 () Bool)

(assert (=> b!922671 (= e!600579 e!600580)))

(declare-fun c!149751 () Bool)

(assert (=> b!922671 (= c!149751 ((_ is Nil!9695) s!10566))))

(declare-fun b!922672 () Bool)

(declare-fun lt!338746 () Unit!14581)

(declare-fun lt!338748 () Unit!14581)

(assert (=> b!922672 (= lt!338746 lt!338748)))

(assert (=> b!922672 (= (++!2569 (++!2569 Nil!9695 (Cons!9695 (h!15096 s!10566) Nil!9695)) (t!100757 s!10566)) s!10566)))

(assert (=> b!922672 (= lt!338748 (lemmaMoveElementToOtherListKeepsConcatEq!184 Nil!9695 (h!15096 s!10566) (t!100757 s!10566) s!10566))))

(assert (=> b!922672 (= e!600580 (findConcatSeparation!222 lt!338685 lt!338690 (++!2569 Nil!9695 (Cons!9695 (h!15096 s!10566) Nil!9695)) (t!100757 s!10566) s!10566))))

(declare-fun b!922673 () Bool)

(assert (=> b!922673 (= e!600582 (matchR!1019 lt!338690 s!10566))))

(declare-fun b!922674 () Bool)

(assert (=> b!922674 (= e!600578 (= (++!2569 (_1!6300 (get!3165 lt!338747)) (_2!6300 (get!3165 lt!338747))) s!10566))))

(assert (= (and d!280668 res!419467) b!922673))

(assert (= (and d!280668 c!149750) b!922669))

(assert (= (and d!280668 (not c!149750)) b!922671))

(assert (= (and b!922671 c!149751) b!922666))

(assert (= (and b!922671 (not c!149751)) b!922672))

(assert (= (and d!280668 res!419470) b!922667))

(assert (= (and b!922667 res!419469) b!922668))

(assert (= (and b!922668 res!419466) b!922674))

(assert (= (and d!280668 (not res!419468)) b!922670))

(declare-fun m!1149217 () Bool)

(assert (=> b!922673 m!1149217))

(declare-fun m!1149219 () Bool)

(assert (=> b!922667 m!1149219))

(declare-fun m!1149221 () Bool)

(assert (=> b!922667 m!1149221))

(assert (=> b!922668 m!1149219))

(declare-fun m!1149223 () Bool)

(assert (=> b!922668 m!1149223))

(assert (=> b!922672 m!1149115))

(assert (=> b!922672 m!1149115))

(assert (=> b!922672 m!1149117))

(assert (=> b!922672 m!1149119))

(assert (=> b!922672 m!1149115))

(declare-fun m!1149225 () Bool)

(assert (=> b!922672 m!1149225))

(declare-fun m!1149227 () Bool)

(assert (=> b!922670 m!1149227))

(assert (=> b!922674 m!1149219))

(declare-fun m!1149229 () Bool)

(assert (=> b!922674 m!1149229))

(assert (=> d!280668 m!1149227))

(declare-fun m!1149231 () Bool)

(assert (=> d!280668 m!1149231))

(declare-fun m!1149233 () Bool)

(assert (=> d!280668 m!1149233))

(assert (=> b!922216 d!280668))

(declare-fun bs!237047 () Bool)

(declare-fun d!280670 () Bool)

(assert (= bs!237047 (and d!280670 b!922662)))

(declare-fun lambda!30168 () Int)

(assert (=> bs!237047 (not (= lambda!30168 lambda!30166))))

(declare-fun bs!237048 () Bool)

(assert (= bs!237048 (and d!280670 b!922215)))

(assert (=> bs!237048 (= (and (= lt!338685 (regOne!5474 r!15766)) (= lt!338690 (regTwo!5474 r!15766))) (= lambda!30168 lambda!30127))))

(declare-fun bs!237049 () Bool)

(assert (= bs!237049 (and d!280670 d!280610)))

(assert (=> bs!237049 (= (and (= lt!338685 (regOne!5474 r!15766)) (= lt!338690 (regTwo!5474 r!15766))) (= lambda!30168 lambda!30148))))

(declare-fun bs!237050 () Bool)

(assert (= bs!237050 (and d!280670 b!922216)))

(assert (=> bs!237050 (= lambda!30168 lambda!30129)))

(declare-fun bs!237051 () Bool)

(assert (= bs!237051 (and d!280670 b!922602)))

(assert (=> bs!237051 (not (= lambda!30168 lambda!30165))))

(assert (=> bs!237050 (not (= lambda!30168 lambda!30130))))

(declare-fun bs!237052 () Bool)

(assert (= bs!237052 (and d!280670 d!280640)))

(assert (=> bs!237052 (not (= lambda!30168 lambda!30159))))

(assert (=> bs!237052 (= (and (= lt!338685 (regOne!5474 r!15766)) (= lt!338690 (regTwo!5474 r!15766))) (= lambda!30168 lambda!30158))))

(declare-fun bs!237053 () Bool)

(assert (= bs!237053 (and d!280670 b!922600)))

(assert (=> bs!237053 (not (= lambda!30168 lambda!30164))))

(assert (=> bs!237048 (not (= lambda!30168 lambda!30128))))

(declare-fun bs!237054 () Bool)

(assert (= bs!237054 (and d!280670 b!922664)))

(assert (=> bs!237054 (not (= lambda!30168 lambda!30167))))

(assert (=> d!280670 true))

(assert (=> d!280670 true))

(assert (=> d!280670 true))

(declare-fun lambda!30169 () Int)

(assert (=> bs!237047 (not (= lambda!30169 lambda!30166))))

(assert (=> bs!237048 (not (= lambda!30169 lambda!30127))))

(declare-fun bs!237055 () Bool)

(assert (= bs!237055 d!280670))

(assert (=> bs!237055 (not (= lambda!30169 lambda!30168))))

(assert (=> bs!237049 (not (= lambda!30169 lambda!30148))))

(assert (=> bs!237050 (not (= lambda!30169 lambda!30129))))

(assert (=> bs!237051 (= (and (= lt!338685 (regOne!5474 r!15766)) (= lt!338690 (regTwo!5474 r!15766))) (= lambda!30169 lambda!30165))))

(assert (=> bs!237050 (= lambda!30169 lambda!30130)))

(assert (=> bs!237052 (= (and (= lt!338685 (regOne!5474 r!15766)) (= lt!338690 (regTwo!5474 r!15766))) (= lambda!30169 lambda!30159))))

(assert (=> bs!237052 (not (= lambda!30169 lambda!30158))))

(assert (=> bs!237053 (not (= lambda!30169 lambda!30164))))

(assert (=> bs!237048 (= (and (= lt!338685 (regOne!5474 r!15766)) (= lt!338690 (regTwo!5474 r!15766))) (= lambda!30169 lambda!30128))))

(assert (=> bs!237054 (= (and (= lt!338685 (regOne!5474 lt!338687)) (= lt!338690 (regTwo!5474 lt!338687))) (= lambda!30169 lambda!30167))))

(assert (=> d!280670 true))

(assert (=> d!280670 true))

(assert (=> d!280670 true))

(assert (=> d!280670 (= (Exists!252 lambda!30168) (Exists!252 lambda!30169))))

(declare-fun lt!338749 () Unit!14581)

(assert (=> d!280670 (= lt!338749 (choose!5662 lt!338685 lt!338690 s!10566))))

(assert (=> d!280670 (validRegex!950 lt!338685)))

(assert (=> d!280670 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!164 lt!338685 lt!338690 s!10566) lt!338749)))

(declare-fun m!1149235 () Bool)

(assert (=> bs!237055 m!1149235))

(declare-fun m!1149237 () Bool)

(assert (=> bs!237055 m!1149237))

(declare-fun m!1149239 () Bool)

(assert (=> bs!237055 m!1149239))

(assert (=> bs!237055 m!1149233))

(assert (=> b!922216 d!280670))

(declare-fun bs!237056 () Bool)

(declare-fun d!280672 () Bool)

(assert (= bs!237056 (and d!280672 b!922662)))

(declare-fun lambda!30170 () Int)

(assert (=> bs!237056 (not (= lambda!30170 lambda!30166))))

(declare-fun bs!237057 () Bool)

(assert (= bs!237057 (and d!280672 b!922215)))

(assert (=> bs!237057 (= (and (= lt!338685 (regOne!5474 r!15766)) (= lt!338690 (regTwo!5474 r!15766))) (= lambda!30170 lambda!30127))))

(declare-fun bs!237058 () Bool)

(assert (= bs!237058 (and d!280672 d!280610)))

(assert (=> bs!237058 (= (and (= lt!338685 (regOne!5474 r!15766)) (= lt!338690 (regTwo!5474 r!15766))) (= lambda!30170 lambda!30148))))

(declare-fun bs!237059 () Bool)

(assert (= bs!237059 (and d!280672 b!922216)))

(assert (=> bs!237059 (= lambda!30170 lambda!30129)))

(declare-fun bs!237060 () Bool)

(assert (= bs!237060 (and d!280672 b!922602)))

(assert (=> bs!237060 (not (= lambda!30170 lambda!30165))))

(assert (=> bs!237059 (not (= lambda!30170 lambda!30130))))

(declare-fun bs!237061 () Bool)

(assert (= bs!237061 (and d!280672 d!280640)))

(assert (=> bs!237061 (not (= lambda!30170 lambda!30159))))

(declare-fun bs!237062 () Bool)

(assert (= bs!237062 (and d!280672 d!280670)))

(assert (=> bs!237062 (not (= lambda!30170 lambda!30169))))

(assert (=> bs!237062 (= lambda!30170 lambda!30168)))

(assert (=> bs!237061 (= (and (= lt!338685 (regOne!5474 r!15766)) (= lt!338690 (regTwo!5474 r!15766))) (= lambda!30170 lambda!30158))))

(declare-fun bs!237063 () Bool)

(assert (= bs!237063 (and d!280672 b!922600)))

(assert (=> bs!237063 (not (= lambda!30170 lambda!30164))))

(assert (=> bs!237057 (not (= lambda!30170 lambda!30128))))

(declare-fun bs!237064 () Bool)

(assert (= bs!237064 (and d!280672 b!922664)))

(assert (=> bs!237064 (not (= lambda!30170 lambda!30167))))

(assert (=> d!280672 true))

(assert (=> d!280672 true))

(assert (=> d!280672 true))

(assert (=> d!280672 (= (isDefined!1758 (findConcatSeparation!222 lt!338685 lt!338690 Nil!9695 s!10566 s!10566)) (Exists!252 lambda!30170))))

(declare-fun lt!338750 () Unit!14581)

(assert (=> d!280672 (= lt!338750 (choose!5660 lt!338685 lt!338690 s!10566))))

(assert (=> d!280672 (validRegex!950 lt!338685)))

(assert (=> d!280672 (= (lemmaFindConcatSeparationEquivalentToExists!222 lt!338685 lt!338690 s!10566) lt!338750)))

(declare-fun bs!237065 () Bool)

(assert (= bs!237065 d!280672))

(declare-fun m!1149241 () Bool)

(assert (=> bs!237065 m!1149241))

(assert (=> bs!237065 m!1149233))

(assert (=> bs!237065 m!1148975))

(declare-fun m!1149243 () Bool)

(assert (=> bs!237065 m!1149243))

(assert (=> bs!237065 m!1148975))

(assert (=> bs!237065 m!1148977))

(assert (=> b!922216 d!280672))

(declare-fun b!922675 () Bool)

(declare-fun e!600585 () Bool)

(assert (=> b!922675 (= e!600585 (not (= (head!1656 s!10566) (c!149646 lt!338687))))))

(declare-fun b!922676 () Bool)

(declare-fun e!600584 () Bool)

(assert (=> b!922676 (= e!600584 (nullable!693 lt!338687))))

(declare-fun b!922677 () Bool)

(declare-fun e!600588 () Bool)

(declare-fun lt!338751 () Bool)

(declare-fun call!56233 () Bool)

(assert (=> b!922677 (= e!600588 (= lt!338751 call!56233))))

(declare-fun b!922678 () Bool)

(declare-fun res!419471 () Bool)

(declare-fun e!600589 () Bool)

(assert (=> b!922678 (=> (not res!419471) (not e!600589))))

(assert (=> b!922678 (= res!419471 (isEmpty!5942 (tail!1218 s!10566)))))

(declare-fun b!922679 () Bool)

(declare-fun e!600587 () Bool)

(assert (=> b!922679 (= e!600587 (not lt!338751))))

(declare-fun b!922680 () Bool)

(declare-fun e!600586 () Bool)

(declare-fun e!600583 () Bool)

(assert (=> b!922680 (= e!600586 e!600583)))

(declare-fun res!419475 () Bool)

(assert (=> b!922680 (=> (not res!419475) (not e!600583))))

(assert (=> b!922680 (= res!419475 (not lt!338751))))

(declare-fun d!280674 () Bool)

(assert (=> d!280674 e!600588))

(declare-fun c!149754 () Bool)

(assert (=> d!280674 (= c!149754 ((_ is EmptyExpr!2481) lt!338687))))

(assert (=> d!280674 (= lt!338751 e!600584)))

(declare-fun c!149753 () Bool)

(assert (=> d!280674 (= c!149753 (isEmpty!5942 s!10566))))

(assert (=> d!280674 (validRegex!950 lt!338687)))

(assert (=> d!280674 (= (matchR!1019 lt!338687 s!10566) lt!338751)))

(declare-fun bm!56228 () Bool)

(assert (=> bm!56228 (= call!56233 (isEmpty!5942 s!10566))))

(declare-fun b!922681 () Bool)

(assert (=> b!922681 (= e!600583 e!600585)))

(declare-fun res!419472 () Bool)

(assert (=> b!922681 (=> res!419472 e!600585)))

(assert (=> b!922681 (= res!419472 call!56233)))

(declare-fun b!922682 () Bool)

(declare-fun res!419477 () Bool)

(assert (=> b!922682 (=> res!419477 e!600586)))

(assert (=> b!922682 (= res!419477 (not ((_ is ElementMatch!2481) lt!338687)))))

(assert (=> b!922682 (= e!600587 e!600586)))

(declare-fun b!922683 () Bool)

(declare-fun res!419478 () Bool)

(assert (=> b!922683 (=> res!419478 e!600585)))

(assert (=> b!922683 (= res!419478 (not (isEmpty!5942 (tail!1218 s!10566))))))

(declare-fun b!922684 () Bool)

(assert (=> b!922684 (= e!600588 e!600587)))

(declare-fun c!149752 () Bool)

(assert (=> b!922684 (= c!149752 ((_ is EmptyLang!2481) lt!338687))))

(declare-fun b!922685 () Bool)

(declare-fun res!419473 () Bool)

(assert (=> b!922685 (=> res!419473 e!600586)))

(assert (=> b!922685 (= res!419473 e!600589)))

(declare-fun res!419474 () Bool)

(assert (=> b!922685 (=> (not res!419474) (not e!600589))))

(assert (=> b!922685 (= res!419474 lt!338751)))

(declare-fun b!922686 () Bool)

(declare-fun res!419476 () Bool)

(assert (=> b!922686 (=> (not res!419476) (not e!600589))))

(assert (=> b!922686 (= res!419476 (not call!56233))))

(declare-fun b!922687 () Bool)

(assert (=> b!922687 (= e!600589 (= (head!1656 s!10566) (c!149646 lt!338687)))))

(declare-fun b!922688 () Bool)

(assert (=> b!922688 (= e!600584 (matchR!1019 (derivativeStep!503 lt!338687 (head!1656 s!10566)) (tail!1218 s!10566)))))

(assert (= (and d!280674 c!149753) b!922676))

(assert (= (and d!280674 (not c!149753)) b!922688))

(assert (= (and d!280674 c!149754) b!922677))

(assert (= (and d!280674 (not c!149754)) b!922684))

(assert (= (and b!922684 c!149752) b!922679))

(assert (= (and b!922684 (not c!149752)) b!922682))

(assert (= (and b!922682 (not res!419477)) b!922685))

(assert (= (and b!922685 res!419474) b!922686))

(assert (= (and b!922686 res!419476) b!922678))

(assert (= (and b!922678 res!419471) b!922687))

(assert (= (and b!922685 (not res!419473)) b!922680))

(assert (= (and b!922680 res!419475) b!922681))

(assert (= (and b!922681 (not res!419472)) b!922683))

(assert (= (and b!922683 (not res!419478)) b!922675))

(assert (= (or b!922677 b!922681 b!922686) bm!56228))

(assert (=> d!280674 m!1148955))

(assert (=> d!280674 m!1149213))

(assert (=> b!922678 m!1149181))

(assert (=> b!922678 m!1149181))

(assert (=> b!922678 m!1149183))

(assert (=> b!922688 m!1149185))

(assert (=> b!922688 m!1149185))

(declare-fun m!1149245 () Bool)

(assert (=> b!922688 m!1149245))

(assert (=> b!922688 m!1149181))

(assert (=> b!922688 m!1149245))

(assert (=> b!922688 m!1149181))

(declare-fun m!1149247 () Bool)

(assert (=> b!922688 m!1149247))

(assert (=> bm!56228 m!1148955))

(assert (=> b!922683 m!1149181))

(assert (=> b!922683 m!1149181))

(assert (=> b!922683 m!1149183))

(assert (=> b!922675 m!1149185))

(assert (=> b!922687 m!1149185))

(declare-fun m!1149249 () Bool)

(assert (=> b!922676 m!1149249))

(assert (=> b!922210 d!280674))

(declare-fun b!922711 () Bool)

(declare-fun e!600603 () Regex!2481)

(declare-fun call!56248 () Regex!2481)

(assert (=> b!922711 (= e!600603 call!56248)))

(declare-fun d!280676 () Bool)

(declare-fun e!600604 () Bool)

(assert (=> d!280676 e!600604))

(declare-fun res!419481 () Bool)

(assert (=> d!280676 (=> (not res!419481) (not e!600604))))

(declare-fun lt!338754 () Regex!2481)

(assert (=> d!280676 (= res!419481 (validRegex!950 lt!338754))))

(declare-fun e!600605 () Regex!2481)

(assert (=> d!280676 (= lt!338754 e!600605)))

(declare-fun c!149765 () Bool)

(assert (=> d!280676 (= c!149765 (and ((_ is Concat!4314) (regTwo!5474 r!15766)) ((_ is EmptyExpr!2481) (regOne!5474 (regTwo!5474 r!15766)))))))

(assert (=> d!280676 (validRegex!950 (regTwo!5474 r!15766))))

(assert (=> d!280676 (= (removeUselessConcat!158 (regTwo!5474 r!15766)) lt!338754)))

(declare-fun bm!56239 () Bool)

(declare-fun call!56246 () Regex!2481)

(assert (=> bm!56239 (= call!56246 call!56248)))

(declare-fun c!149769 () Bool)

(declare-fun c!149767 () Bool)

(declare-fun bm!56240 () Bool)

(declare-fun call!56247 () Regex!2481)

(assert (=> bm!56240 (= call!56247 (removeUselessConcat!158 (ite c!149765 (regTwo!5474 (regTwo!5474 r!15766)) (ite c!149767 (regOne!5474 (regTwo!5474 r!15766)) (ite c!149769 (regTwo!5474 (regTwo!5474 r!15766)) (regOne!5475 (regTwo!5474 r!15766)))))))))

(declare-fun b!922712 () Bool)

(declare-fun e!600607 () Regex!2481)

(assert (=> b!922712 (= e!600607 (regTwo!5474 r!15766))))

(declare-fun b!922713 () Bool)

(assert (=> b!922713 (= e!600604 (= (nullable!693 lt!338754) (nullable!693 (regTwo!5474 r!15766))))))

(declare-fun b!922714 () Bool)

(declare-fun e!600606 () Regex!2481)

(declare-fun call!56245 () Regex!2481)

(assert (=> b!922714 (= e!600606 (Union!2481 call!56246 call!56245))))

(declare-fun b!922715 () Bool)

(assert (=> b!922715 (= e!600605 call!56247)))

(declare-fun b!922716 () Bool)

(assert (=> b!922716 (= c!149769 ((_ is Concat!4314) (regTwo!5474 r!15766)))))

(declare-fun e!600602 () Regex!2481)

(assert (=> b!922716 (= e!600603 e!600602)))

(declare-fun b!922717 () Bool)

(declare-fun call!56244 () Regex!2481)

(assert (=> b!922717 (= e!600602 (Concat!4314 call!56244 call!56246))))

(declare-fun b!922718 () Bool)

(declare-fun c!149768 () Bool)

(assert (=> b!922718 (= c!149768 ((_ is Star!2481) (regTwo!5474 r!15766)))))

(assert (=> b!922718 (= e!600606 e!600607)))

(declare-fun b!922719 () Bool)

(assert (=> b!922719 (= e!600607 (Star!2481 call!56245))))

(declare-fun bm!56241 () Bool)

(assert (=> bm!56241 (= call!56245 call!56244)))

(declare-fun c!149766 () Bool)

(declare-fun bm!56242 () Bool)

(assert (=> bm!56242 (= call!56244 (removeUselessConcat!158 (ite c!149769 (regOne!5474 (regTwo!5474 r!15766)) (ite c!149766 (regTwo!5475 (regTwo!5474 r!15766)) (reg!2810 (regTwo!5474 r!15766))))))))

(declare-fun b!922720 () Bool)

(assert (=> b!922720 (= e!600602 e!600606)))

(assert (=> b!922720 (= c!149766 ((_ is Union!2481) (regTwo!5474 r!15766)))))

(declare-fun b!922721 () Bool)

(assert (=> b!922721 (= e!600605 e!600603)))

(assert (=> b!922721 (= c!149767 (and ((_ is Concat!4314) (regTwo!5474 r!15766)) ((_ is EmptyExpr!2481) (regTwo!5474 (regTwo!5474 r!15766)))))))

(declare-fun bm!56243 () Bool)

(assert (=> bm!56243 (= call!56248 call!56247)))

(assert (= (and d!280676 c!149765) b!922715))

(assert (= (and d!280676 (not c!149765)) b!922721))

(assert (= (and b!922721 c!149767) b!922711))

(assert (= (and b!922721 (not c!149767)) b!922716))

(assert (= (and b!922716 c!149769) b!922717))

(assert (= (and b!922716 (not c!149769)) b!922720))

(assert (= (and b!922720 c!149766) b!922714))

(assert (= (and b!922720 (not c!149766)) b!922718))

(assert (= (and b!922718 c!149768) b!922719))

(assert (= (and b!922718 (not c!149768)) b!922712))

(assert (= (or b!922714 b!922719) bm!56241))

(assert (= (or b!922717 b!922714) bm!56239))

(assert (= (or b!922717 bm!56241) bm!56242))

(assert (= (or b!922711 bm!56239) bm!56243))

(assert (= (or b!922715 bm!56243) bm!56240))

(assert (= (and d!280676 res!419481) b!922713))

(declare-fun m!1149251 () Bool)

(assert (=> d!280676 m!1149251))

(declare-fun m!1149253 () Bool)

(assert (=> d!280676 m!1149253))

(declare-fun m!1149255 () Bool)

(assert (=> bm!56240 m!1149255))

(declare-fun m!1149257 () Bool)

(assert (=> b!922713 m!1149257))

(declare-fun m!1149259 () Bool)

(assert (=> b!922713 m!1149259))

(declare-fun m!1149261 () Bool)

(assert (=> bm!56242 m!1149261))

(assert (=> b!922210 d!280676))

(declare-fun b!922722 () Bool)

(declare-fun e!600609 () Regex!2481)

(declare-fun call!56253 () Regex!2481)

(assert (=> b!922722 (= e!600609 call!56253)))

(declare-fun d!280678 () Bool)

(declare-fun e!600610 () Bool)

(assert (=> d!280678 e!600610))

(declare-fun res!419482 () Bool)

(assert (=> d!280678 (=> (not res!419482) (not e!600610))))

(declare-fun lt!338755 () Regex!2481)

(assert (=> d!280678 (= res!419482 (validRegex!950 lt!338755))))

(declare-fun e!600611 () Regex!2481)

(assert (=> d!280678 (= lt!338755 e!600611)))

(declare-fun c!149770 () Bool)

(assert (=> d!280678 (= c!149770 (and ((_ is Concat!4314) (regOne!5474 r!15766)) ((_ is EmptyExpr!2481) (regOne!5474 (regOne!5474 r!15766)))))))

(assert (=> d!280678 (validRegex!950 (regOne!5474 r!15766))))

(assert (=> d!280678 (= (removeUselessConcat!158 (regOne!5474 r!15766)) lt!338755)))

(declare-fun bm!56244 () Bool)

(declare-fun call!56251 () Regex!2481)

(assert (=> bm!56244 (= call!56251 call!56253)))

(declare-fun call!56252 () Regex!2481)

(declare-fun bm!56245 () Bool)

(declare-fun c!149774 () Bool)

(declare-fun c!149772 () Bool)

(assert (=> bm!56245 (= call!56252 (removeUselessConcat!158 (ite c!149770 (regTwo!5474 (regOne!5474 r!15766)) (ite c!149772 (regOne!5474 (regOne!5474 r!15766)) (ite c!149774 (regTwo!5474 (regOne!5474 r!15766)) (regOne!5475 (regOne!5474 r!15766)))))))))

(declare-fun b!922723 () Bool)

(declare-fun e!600613 () Regex!2481)

(assert (=> b!922723 (= e!600613 (regOne!5474 r!15766))))

(declare-fun b!922724 () Bool)

(assert (=> b!922724 (= e!600610 (= (nullable!693 lt!338755) (nullable!693 (regOne!5474 r!15766))))))

(declare-fun b!922725 () Bool)

(declare-fun e!600612 () Regex!2481)

(declare-fun call!56250 () Regex!2481)

(assert (=> b!922725 (= e!600612 (Union!2481 call!56251 call!56250))))

(declare-fun b!922726 () Bool)

(assert (=> b!922726 (= e!600611 call!56252)))

(declare-fun b!922727 () Bool)

(assert (=> b!922727 (= c!149774 ((_ is Concat!4314) (regOne!5474 r!15766)))))

(declare-fun e!600608 () Regex!2481)

(assert (=> b!922727 (= e!600609 e!600608)))

(declare-fun b!922728 () Bool)

(declare-fun call!56249 () Regex!2481)

(assert (=> b!922728 (= e!600608 (Concat!4314 call!56249 call!56251))))

(declare-fun b!922729 () Bool)

(declare-fun c!149773 () Bool)

(assert (=> b!922729 (= c!149773 ((_ is Star!2481) (regOne!5474 r!15766)))))

(assert (=> b!922729 (= e!600612 e!600613)))

(declare-fun b!922730 () Bool)

(assert (=> b!922730 (= e!600613 (Star!2481 call!56250))))

(declare-fun bm!56246 () Bool)

(assert (=> bm!56246 (= call!56250 call!56249)))

(declare-fun bm!56247 () Bool)

(declare-fun c!149771 () Bool)

(assert (=> bm!56247 (= call!56249 (removeUselessConcat!158 (ite c!149774 (regOne!5474 (regOne!5474 r!15766)) (ite c!149771 (regTwo!5475 (regOne!5474 r!15766)) (reg!2810 (regOne!5474 r!15766))))))))

(declare-fun b!922731 () Bool)

(assert (=> b!922731 (= e!600608 e!600612)))

(assert (=> b!922731 (= c!149771 ((_ is Union!2481) (regOne!5474 r!15766)))))

(declare-fun b!922732 () Bool)

(assert (=> b!922732 (= e!600611 e!600609)))

(assert (=> b!922732 (= c!149772 (and ((_ is Concat!4314) (regOne!5474 r!15766)) ((_ is EmptyExpr!2481) (regTwo!5474 (regOne!5474 r!15766)))))))

(declare-fun bm!56248 () Bool)

(assert (=> bm!56248 (= call!56253 call!56252)))

(assert (= (and d!280678 c!149770) b!922726))

(assert (= (and d!280678 (not c!149770)) b!922732))

(assert (= (and b!922732 c!149772) b!922722))

(assert (= (and b!922732 (not c!149772)) b!922727))

(assert (= (and b!922727 c!149774) b!922728))

(assert (= (and b!922727 (not c!149774)) b!922731))

(assert (= (and b!922731 c!149771) b!922725))

(assert (= (and b!922731 (not c!149771)) b!922729))

(assert (= (and b!922729 c!149773) b!922730))

(assert (= (and b!922729 (not c!149773)) b!922723))

(assert (= (or b!922725 b!922730) bm!56246))

(assert (= (or b!922728 b!922725) bm!56244))

(assert (= (or b!922728 bm!56246) bm!56247))

(assert (= (or b!922722 bm!56244) bm!56248))

(assert (= (or b!922726 bm!56248) bm!56245))

(assert (= (and d!280678 res!419482) b!922724))

(declare-fun m!1149263 () Bool)

(assert (=> d!280678 m!1149263))

(assert (=> d!280678 m!1148945))

(declare-fun m!1149265 () Bool)

(assert (=> bm!56245 m!1149265))

(declare-fun m!1149267 () Bool)

(assert (=> b!922724 m!1149267))

(declare-fun m!1149269 () Bool)

(assert (=> b!922724 m!1149269))

(declare-fun m!1149271 () Bool)

(assert (=> bm!56247 m!1149271))

(assert (=> b!922210 d!280678))

(declare-fun b!922744 () Bool)

(declare-fun e!600616 () Bool)

(declare-fun tp!287173 () Bool)

(declare-fun tp!287177 () Bool)

(assert (=> b!922744 (= e!600616 (and tp!287173 tp!287177))))

(declare-fun b!922746 () Bool)

(declare-fun tp!287176 () Bool)

(declare-fun tp!287174 () Bool)

(assert (=> b!922746 (= e!600616 (and tp!287176 tp!287174))))

(declare-fun b!922743 () Bool)

(assert (=> b!922743 (= e!600616 tp_is_empty!4605)))

(declare-fun b!922745 () Bool)

(declare-fun tp!287175 () Bool)

(assert (=> b!922745 (= e!600616 tp!287175)))

(assert (=> b!922213 (= tp!287120 e!600616)))

(assert (= (and b!922213 ((_ is ElementMatch!2481) (reg!2810 r!15766))) b!922743))

(assert (= (and b!922213 ((_ is Concat!4314) (reg!2810 r!15766))) b!922744))

(assert (= (and b!922213 ((_ is Star!2481) (reg!2810 r!15766))) b!922745))

(assert (= (and b!922213 ((_ is Union!2481) (reg!2810 r!15766))) b!922746))

(declare-fun b!922748 () Bool)

(declare-fun e!600617 () Bool)

(declare-fun tp!287178 () Bool)

(declare-fun tp!287182 () Bool)

(assert (=> b!922748 (= e!600617 (and tp!287178 tp!287182))))

(declare-fun b!922750 () Bool)

(declare-fun tp!287181 () Bool)

(declare-fun tp!287179 () Bool)

(assert (=> b!922750 (= e!600617 (and tp!287181 tp!287179))))

(declare-fun b!922747 () Bool)

(assert (=> b!922747 (= e!600617 tp_is_empty!4605)))

(declare-fun b!922749 () Bool)

(declare-fun tp!287180 () Bool)

(assert (=> b!922749 (= e!600617 tp!287180)))

(assert (=> b!922209 (= tp!287122 e!600617)))

(assert (= (and b!922209 ((_ is ElementMatch!2481) (regOne!5475 r!15766))) b!922747))

(assert (= (and b!922209 ((_ is Concat!4314) (regOne!5475 r!15766))) b!922748))

(assert (= (and b!922209 ((_ is Star!2481) (regOne!5475 r!15766))) b!922749))

(assert (= (and b!922209 ((_ is Union!2481) (regOne!5475 r!15766))) b!922750))

(declare-fun b!922752 () Bool)

(declare-fun e!600618 () Bool)

(declare-fun tp!287183 () Bool)

(declare-fun tp!287187 () Bool)

(assert (=> b!922752 (= e!600618 (and tp!287183 tp!287187))))

(declare-fun b!922754 () Bool)

(declare-fun tp!287186 () Bool)

(declare-fun tp!287184 () Bool)

(assert (=> b!922754 (= e!600618 (and tp!287186 tp!287184))))

(declare-fun b!922751 () Bool)

(assert (=> b!922751 (= e!600618 tp_is_empty!4605)))

(declare-fun b!922753 () Bool)

(declare-fun tp!287185 () Bool)

(assert (=> b!922753 (= e!600618 tp!287185)))

(assert (=> b!922209 (= tp!287119 e!600618)))

(assert (= (and b!922209 ((_ is ElementMatch!2481) (regTwo!5475 r!15766))) b!922751))

(assert (= (and b!922209 ((_ is Concat!4314) (regTwo!5475 r!15766))) b!922752))

(assert (= (and b!922209 ((_ is Star!2481) (regTwo!5475 r!15766))) b!922753))

(assert (= (and b!922209 ((_ is Union!2481) (regTwo!5475 r!15766))) b!922754))

(declare-fun b!922759 () Bool)

(declare-fun e!600621 () Bool)

(declare-fun tp!287190 () Bool)

(assert (=> b!922759 (= e!600621 (and tp_is_empty!4605 tp!287190))))

(assert (=> b!922212 (= tp!287123 e!600621)))

(assert (= (and b!922212 ((_ is Cons!9695) (t!100757 s!10566))) b!922759))

(declare-fun b!922761 () Bool)

(declare-fun e!600622 () Bool)

(declare-fun tp!287191 () Bool)

(declare-fun tp!287195 () Bool)

(assert (=> b!922761 (= e!600622 (and tp!287191 tp!287195))))

(declare-fun b!922763 () Bool)

(declare-fun tp!287194 () Bool)

(declare-fun tp!287192 () Bool)

(assert (=> b!922763 (= e!600622 (and tp!287194 tp!287192))))

(declare-fun b!922760 () Bool)

(assert (=> b!922760 (= e!600622 tp_is_empty!4605)))

(declare-fun b!922762 () Bool)

(declare-fun tp!287193 () Bool)

(assert (=> b!922762 (= e!600622 tp!287193)))

(assert (=> b!922217 (= tp!287124 e!600622)))

(assert (= (and b!922217 ((_ is ElementMatch!2481) (regOne!5474 r!15766))) b!922760))

(assert (= (and b!922217 ((_ is Concat!4314) (regOne!5474 r!15766))) b!922761))

(assert (= (and b!922217 ((_ is Star!2481) (regOne!5474 r!15766))) b!922762))

(assert (= (and b!922217 ((_ is Union!2481) (regOne!5474 r!15766))) b!922763))

(declare-fun b!922765 () Bool)

(declare-fun e!600623 () Bool)

(declare-fun tp!287196 () Bool)

(declare-fun tp!287200 () Bool)

(assert (=> b!922765 (= e!600623 (and tp!287196 tp!287200))))

(declare-fun b!922767 () Bool)

(declare-fun tp!287199 () Bool)

(declare-fun tp!287197 () Bool)

(assert (=> b!922767 (= e!600623 (and tp!287199 tp!287197))))

(declare-fun b!922764 () Bool)

(assert (=> b!922764 (= e!600623 tp_is_empty!4605)))

(declare-fun b!922766 () Bool)

(declare-fun tp!287198 () Bool)

(assert (=> b!922766 (= e!600623 tp!287198)))

(assert (=> b!922217 (= tp!287121 e!600623)))

(assert (= (and b!922217 ((_ is ElementMatch!2481) (regTwo!5474 r!15766))) b!922764))

(assert (= (and b!922217 ((_ is Concat!4314) (regTwo!5474 r!15766))) b!922765))

(assert (= (and b!922217 ((_ is Star!2481) (regTwo!5474 r!15766))) b!922766))

(assert (= (and b!922217 ((_ is Union!2481) (regTwo!5474 r!15766))) b!922767))

(check-sat (not b!922632) (not d!280660) (not d!280652) (not b!922659) (not d!280636) (not d!280654) (not b!922746) (not b!922762) (not b!922661) (not bm!56226) (not b!922633) (not bm!56222) (not b!922713) (not b!922464) (not b!922467) (not bm!56176) (not b!922670) (not b!922763) (not bm!56218) (not bm!56245) (not b!922765) (not b!922667) (not b!922754) (not d!280678) (not b!922673) (not d!280676) (not bm!56242) (not b!922676) (not b!922766) (not d!280648) (not b!922672) (not b!922683) (not bm!56225) (not b!922597) (not b!922644) (not bm!56240) tp_is_empty!4605 (not b!922678) (not b!922599) (not b!922752) (not b!922653) (not b!922767) (not bm!56228) (not d!280614) (not d!280666) (not b!922750) (not bm!56223) (not b!922745) (not b!922668) (not b!922759) (not b!922748) (not d!280670) (not b!922461) (not b!922753) (not bm!56178) (not d!280672) (not d!280610) (not b!922286) (not b!922462) (not b!922674) (not b!922724) (not d!280664) (not b!922744) (not bm!56219) (not bm!56247) (not d!280640) (not b!922749) (not b!922675) (not b!922687) (not d!280668) (not b!922761) (not b!922640) (not b!922645) (not d!280658) (not b!922466) (not bm!56227) (not b!922635) (not b!922468) (not b!922688) (not d!280674) (not d!280608))
(check-sat)
