; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740918 () Bool)

(assert start!740918)

(declare-fun b!7792068 () Bool)

(declare-fun e!4613979 () Bool)

(declare-datatypes ((C!42052 0))(
  ( (C!42053 (val!31466 Int)) )
))
(declare-datatypes ((Regex!20863 0))(
  ( (ElementMatch!20863 (c!1435040 C!42052)) (Concat!29708 (regOne!42238 Regex!20863) (regTwo!42238 Regex!20863)) (EmptyExpr!20863) (Star!20863 (reg!21192 Regex!20863)) (EmptyLang!20863) (Union!20863 (regOne!42239 Regex!20863) (regTwo!42239 Regex!20863)) )
))
(declare-fun lt!2673763 () Regex!20863)

(declare-datatypes ((List!73702 0))(
  ( (Nil!73578) (Cons!73578 (h!80026 C!42052) (t!388437 List!73702)) )
))
(declare-fun s!14292 () List!73702)

(declare-fun matchR!10323 (Regex!20863 List!73702) Bool)

(assert (=> b!7792068 (= e!4613979 (matchR!10323 lt!2673763 (t!388437 s!14292)))))

(declare-fun res!3104464 () Bool)

(declare-fun e!4613978 () Bool)

(assert (=> start!740918 (=> (not res!3104464) (not e!4613978))))

(declare-fun r1!6279 () Regex!20863)

(declare-fun validRegex!11277 (Regex!20863) Bool)

(assert (=> start!740918 (= res!3104464 (validRegex!11277 r1!6279))))

(assert (=> start!740918 e!4613978))

(declare-fun e!4613983 () Bool)

(assert (=> start!740918 e!4613983))

(declare-fun e!4613980 () Bool)

(assert (=> start!740918 e!4613980))

(declare-fun e!4613976 () Bool)

(assert (=> start!740918 e!4613976))

(declare-fun b!7792069 () Bool)

(declare-fun tp!2293866 () Bool)

(declare-fun tp!2293869 () Bool)

(assert (=> b!7792069 (= e!4613983 (and tp!2293866 tp!2293869))))

(declare-fun b!7792070 () Bool)

(declare-fun tp_is_empty!52081 () Bool)

(assert (=> b!7792070 (= e!4613980 tp_is_empty!52081)))

(declare-fun b!7792071 () Bool)

(declare-fun e!4613977 () Bool)

(declare-fun e!4613981 () Bool)

(assert (=> b!7792071 (= e!4613977 (not e!4613981))))

(declare-fun res!3104457 () Bool)

(assert (=> b!7792071 (=> res!3104457 e!4613981)))

(declare-fun lt!2673768 () Bool)

(assert (=> b!7792071 (= res!3104457 (not lt!2673768))))

(assert (=> b!7792071 e!4613979))

(declare-fun res!3104458 () Bool)

(assert (=> b!7792071 (=> res!3104458 e!4613979)))

(assert (=> b!7792071 (= res!3104458 lt!2673768)))

(declare-fun lt!2673760 () Regex!20863)

(assert (=> b!7792071 (= lt!2673768 (matchR!10323 lt!2673760 (t!388437 s!14292)))))

(declare-datatypes ((Unit!168572 0))(
  ( (Unit!168573) )
))
(declare-fun lt!2673764 () Unit!168572)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!406 (Regex!20863 Regex!20863 List!73702) Unit!168572)

(assert (=> b!7792071 (= lt!2673764 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!406 lt!2673760 lt!2673763 (t!388437 s!14292)))))

(declare-fun b!7792072 () Bool)

(declare-fun tp!2293861 () Bool)

(declare-fun tp!2293863 () Bool)

(assert (=> b!7792072 (= e!4613983 (and tp!2293861 tp!2293863))))

(declare-fun b!7792073 () Bool)

(declare-fun tp!2293867 () Bool)

(assert (=> b!7792073 (= e!4613983 tp!2293867)))

(declare-fun b!7792074 () Bool)

(declare-fun e!4613982 () Bool)

(assert (=> b!7792074 (= e!4613982 e!4613977)))

(declare-fun res!3104456 () Bool)

(assert (=> b!7792074 (=> (not res!3104456) (not e!4613977))))

(declare-fun lt!2673767 () Regex!20863)

(assert (=> b!7792074 (= res!3104456 (= lt!2673767 (Union!20863 lt!2673760 lt!2673763)))))

(declare-fun r2!6217 () Regex!20863)

(declare-fun derivativeStep!6200 (Regex!20863 C!42052) Regex!20863)

(assert (=> b!7792074 (= lt!2673763 (derivativeStep!6200 r2!6217 (h!80026 s!14292)))))

(declare-fun lt!2673766 () Regex!20863)

(assert (=> b!7792074 (= lt!2673760 (Concat!29708 lt!2673766 r2!6217))))

(assert (=> b!7792074 (= lt!2673766 (derivativeStep!6200 r1!6279 (h!80026 s!14292)))))

(declare-fun b!7792075 () Bool)

(declare-fun tp!2293871 () Bool)

(assert (=> b!7792075 (= e!4613976 (and tp_is_empty!52081 tp!2293871))))

(declare-fun b!7792076 () Bool)

(declare-fun res!3104462 () Bool)

(assert (=> b!7792076 (=> (not res!3104462) (not e!4613982))))

(declare-fun nullable!9247 (Regex!20863) Bool)

(assert (=> b!7792076 (= res!3104462 (nullable!9247 r1!6279))))

(declare-fun b!7792077 () Bool)

(declare-fun tp!2293864 () Bool)

(declare-fun tp!2293862 () Bool)

(assert (=> b!7792077 (= e!4613980 (and tp!2293864 tp!2293862))))

(declare-fun b!7792078 () Bool)

(declare-fun e!4613975 () Bool)

(assert (=> b!7792078 (= e!4613978 e!4613975)))

(declare-fun res!3104463 () Bool)

(assert (=> b!7792078 (=> (not res!3104463) (not e!4613975))))

(declare-fun lt!2673761 () Regex!20863)

(assert (=> b!7792078 (= res!3104463 (matchR!10323 lt!2673761 s!14292))))

(assert (=> b!7792078 (= lt!2673761 (Concat!29708 r1!6279 r2!6217))))

(declare-fun b!7792079 () Bool)

(declare-fun tp!2293865 () Bool)

(assert (=> b!7792079 (= e!4613980 tp!2293865)))

(declare-fun b!7792080 () Bool)

(assert (=> b!7792080 (= e!4613975 e!4613982)))

(declare-fun res!3104460 () Bool)

(assert (=> b!7792080 (=> (not res!3104460) (not e!4613982))))

(assert (=> b!7792080 (= res!3104460 (matchR!10323 lt!2673767 (t!388437 s!14292)))))

(assert (=> b!7792080 (= lt!2673767 (derivativeStep!6200 lt!2673761 (h!80026 s!14292)))))

(declare-fun b!7792081 () Bool)

(assert (=> b!7792081 (= e!4613983 tp_is_empty!52081)))

(declare-fun b!7792082 () Bool)

(declare-fun tp!2293870 () Bool)

(declare-fun tp!2293868 () Bool)

(assert (=> b!7792082 (= e!4613980 (and tp!2293870 tp!2293868))))

(declare-fun b!7792083 () Bool)

(declare-datatypes ((tuple2!69928 0))(
  ( (tuple2!69929 (_1!38267 List!73702) (_2!38267 List!73702)) )
))
(declare-fun lt!2673762 () tuple2!69928)

(declare-fun ++!17931 (List!73702 List!73702) List!73702)

(assert (=> b!7792083 (= e!4613981 (= (++!17931 (Cons!73578 (h!80026 s!14292) (_1!38267 lt!2673762)) (_2!38267 lt!2673762)) s!14292))))

(declare-datatypes ((Option!17758 0))(
  ( (None!17757) (Some!17757 (v!54892 tuple2!69928)) )
))
(declare-fun lt!2673759 () Option!17758)

(declare-fun get!26314 (Option!17758) tuple2!69928)

(assert (=> b!7792083 (= lt!2673762 (get!26314 lt!2673759))))

(declare-fun isDefined!14368 (Option!17758) Bool)

(assert (=> b!7792083 (isDefined!14368 lt!2673759)))

(declare-fun findConcatSeparation!3788 (Regex!20863 Regex!20863 List!73702 List!73702 List!73702) Option!17758)

(assert (=> b!7792083 (= lt!2673759 (findConcatSeparation!3788 lt!2673766 r2!6217 Nil!73578 (t!388437 s!14292) (t!388437 s!14292)))))

(declare-fun lt!2673765 () Unit!168572)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!372 (Regex!20863 Regex!20863 List!73702) Unit!168572)

(assert (=> b!7792083 (= lt!2673765 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!372 lt!2673766 r2!6217 (t!388437 s!14292)))))

(declare-fun b!7792084 () Bool)

(declare-fun res!3104459 () Bool)

(assert (=> b!7792084 (=> (not res!3104459) (not e!4613978))))

(assert (=> b!7792084 (= res!3104459 (validRegex!11277 r2!6217))))

(declare-fun b!7792085 () Bool)

(declare-fun res!3104461 () Bool)

(assert (=> b!7792085 (=> (not res!3104461) (not e!4613975))))

(get-info :version)

(assert (=> b!7792085 (= res!3104461 ((_ is Cons!73578) s!14292))))

(assert (= (and start!740918 res!3104464) b!7792084))

(assert (= (and b!7792084 res!3104459) b!7792078))

(assert (= (and b!7792078 res!3104463) b!7792085))

(assert (= (and b!7792085 res!3104461) b!7792080))

(assert (= (and b!7792080 res!3104460) b!7792076))

(assert (= (and b!7792076 res!3104462) b!7792074))

(assert (= (and b!7792074 res!3104456) b!7792071))

(assert (= (and b!7792071 (not res!3104458)) b!7792068))

(assert (= (and b!7792071 (not res!3104457)) b!7792083))

(assert (= (and start!740918 ((_ is ElementMatch!20863) r1!6279)) b!7792081))

(assert (= (and start!740918 ((_ is Concat!29708) r1!6279)) b!7792069))

(assert (= (and start!740918 ((_ is Star!20863) r1!6279)) b!7792073))

(assert (= (and start!740918 ((_ is Union!20863) r1!6279)) b!7792072))

(assert (= (and start!740918 ((_ is ElementMatch!20863) r2!6217)) b!7792070))

(assert (= (and start!740918 ((_ is Concat!29708) r2!6217)) b!7792082))

(assert (= (and start!740918 ((_ is Star!20863) r2!6217)) b!7792079))

(assert (= (and start!740918 ((_ is Union!20863) r2!6217)) b!7792077))

(assert (= (and start!740918 ((_ is Cons!73578) s!14292)) b!7792075))

(declare-fun m!8232418 () Bool)

(assert (=> b!7792078 m!8232418))

(declare-fun m!8232420 () Bool)

(assert (=> b!7792080 m!8232420))

(declare-fun m!8232422 () Bool)

(assert (=> b!7792080 m!8232422))

(declare-fun m!8232424 () Bool)

(assert (=> start!740918 m!8232424))

(declare-fun m!8232426 () Bool)

(assert (=> b!7792083 m!8232426))

(declare-fun m!8232428 () Bool)

(assert (=> b!7792083 m!8232428))

(declare-fun m!8232430 () Bool)

(assert (=> b!7792083 m!8232430))

(declare-fun m!8232432 () Bool)

(assert (=> b!7792083 m!8232432))

(declare-fun m!8232434 () Bool)

(assert (=> b!7792083 m!8232434))

(declare-fun m!8232436 () Bool)

(assert (=> b!7792074 m!8232436))

(declare-fun m!8232438 () Bool)

(assert (=> b!7792074 m!8232438))

(declare-fun m!8232440 () Bool)

(assert (=> b!7792068 m!8232440))

(declare-fun m!8232442 () Bool)

(assert (=> b!7792071 m!8232442))

(declare-fun m!8232444 () Bool)

(assert (=> b!7792071 m!8232444))

(declare-fun m!8232446 () Bool)

(assert (=> b!7792084 m!8232446))

(declare-fun m!8232448 () Bool)

(assert (=> b!7792076 m!8232448))

(check-sat (not b!7792084) (not b!7792075) (not b!7792072) (not b!7792069) (not start!740918) (not b!7792071) (not b!7792082) (not b!7792078) (not b!7792080) (not b!7792074) (not b!7792079) (not b!7792077) (not b!7792073) (not b!7792068) (not b!7792076) (not b!7792083) tp_is_empty!52081)
(check-sat)
(get-model)

(declare-fun b!7792114 () Bool)

(declare-fun e!4614002 () Bool)

(declare-fun head!15939 (List!73702) C!42052)

(declare-fun tail!15480 (List!73702) List!73702)

(assert (=> b!7792114 (= e!4614002 (matchR!10323 (derivativeStep!6200 lt!2673763 (head!15939 (t!388437 s!14292))) (tail!15480 (t!388437 s!14292))))))

(declare-fun b!7792115 () Bool)

(declare-fun res!3104487 () Bool)

(declare-fun e!4614001 () Bool)

(assert (=> b!7792115 (=> (not res!3104487) (not e!4614001))))

(declare-fun call!722259 () Bool)

(assert (=> b!7792115 (= res!3104487 (not call!722259))))

(declare-fun b!7792116 () Bool)

(declare-fun res!3104488 () Bool)

(declare-fun e!4613998 () Bool)

(assert (=> b!7792116 (=> res!3104488 e!4613998)))

(assert (=> b!7792116 (= res!3104488 (not ((_ is ElementMatch!20863) lt!2673763)))))

(declare-fun e!4614000 () Bool)

(assert (=> b!7792116 (= e!4614000 e!4613998)))

(declare-fun d!2346027 () Bool)

(declare-fun e!4614003 () Bool)

(assert (=> d!2346027 e!4614003))

(declare-fun c!1435049 () Bool)

(assert (=> d!2346027 (= c!1435049 ((_ is EmptyExpr!20863) lt!2673763))))

(declare-fun lt!2673771 () Bool)

(assert (=> d!2346027 (= lt!2673771 e!4614002)))

(declare-fun c!1435047 () Bool)

(declare-fun isEmpty!42215 (List!73702) Bool)

(assert (=> d!2346027 (= c!1435047 (isEmpty!42215 (t!388437 s!14292)))))

(assert (=> d!2346027 (validRegex!11277 lt!2673763)))

(assert (=> d!2346027 (= (matchR!10323 lt!2673763 (t!388437 s!14292)) lt!2673771)))

(declare-fun b!7792117 () Bool)

(declare-fun e!4613999 () Bool)

(declare-fun e!4614004 () Bool)

(assert (=> b!7792117 (= e!4613999 e!4614004)))

(declare-fun res!3104484 () Bool)

(assert (=> b!7792117 (=> res!3104484 e!4614004)))

(assert (=> b!7792117 (= res!3104484 call!722259)))

(declare-fun b!7792118 () Bool)

(assert (=> b!7792118 (= e!4614003 (= lt!2673771 call!722259))))

(declare-fun b!7792119 () Bool)

(declare-fun res!3104481 () Bool)

(assert (=> b!7792119 (=> res!3104481 e!4614004)))

(assert (=> b!7792119 (= res!3104481 (not (isEmpty!42215 (tail!15480 (t!388437 s!14292)))))))

(declare-fun b!7792120 () Bool)

(assert (=> b!7792120 (= e!4614002 (nullable!9247 lt!2673763))))

(declare-fun b!7792121 () Bool)

(assert (=> b!7792121 (= e!4613998 e!4613999)))

(declare-fun res!3104482 () Bool)

(assert (=> b!7792121 (=> (not res!3104482) (not e!4613999))))

(assert (=> b!7792121 (= res!3104482 (not lt!2673771))))

(declare-fun b!7792122 () Bool)

(declare-fun res!3104486 () Bool)

(assert (=> b!7792122 (=> res!3104486 e!4613998)))

(assert (=> b!7792122 (= res!3104486 e!4614001)))

(declare-fun res!3104485 () Bool)

(assert (=> b!7792122 (=> (not res!3104485) (not e!4614001))))

(assert (=> b!7792122 (= res!3104485 lt!2673771)))

(declare-fun b!7792123 () Bool)

(assert (=> b!7792123 (= e!4614000 (not lt!2673771))))

(declare-fun b!7792124 () Bool)

(declare-fun res!3104483 () Bool)

(assert (=> b!7792124 (=> (not res!3104483) (not e!4614001))))

(assert (=> b!7792124 (= res!3104483 (isEmpty!42215 (tail!15480 (t!388437 s!14292))))))

(declare-fun b!7792125 () Bool)

(assert (=> b!7792125 (= e!4614001 (= (head!15939 (t!388437 s!14292)) (c!1435040 lt!2673763)))))

(declare-fun bm!722254 () Bool)

(assert (=> bm!722254 (= call!722259 (isEmpty!42215 (t!388437 s!14292)))))

(declare-fun b!7792126 () Bool)

(assert (=> b!7792126 (= e!4614003 e!4614000)))

(declare-fun c!1435048 () Bool)

(assert (=> b!7792126 (= c!1435048 ((_ is EmptyLang!20863) lt!2673763))))

(declare-fun b!7792127 () Bool)

(assert (=> b!7792127 (= e!4614004 (not (= (head!15939 (t!388437 s!14292)) (c!1435040 lt!2673763))))))

(assert (= (and d!2346027 c!1435047) b!7792120))

(assert (= (and d!2346027 (not c!1435047)) b!7792114))

(assert (= (and d!2346027 c!1435049) b!7792118))

(assert (= (and d!2346027 (not c!1435049)) b!7792126))

(assert (= (and b!7792126 c!1435048) b!7792123))

(assert (= (and b!7792126 (not c!1435048)) b!7792116))

(assert (= (and b!7792116 (not res!3104488)) b!7792122))

(assert (= (and b!7792122 res!3104485) b!7792115))

(assert (= (and b!7792115 res!3104487) b!7792124))

(assert (= (and b!7792124 res!3104483) b!7792125))

(assert (= (and b!7792122 (not res!3104486)) b!7792121))

(assert (= (and b!7792121 res!3104482) b!7792117))

(assert (= (and b!7792117 (not res!3104484)) b!7792119))

(assert (= (and b!7792119 (not res!3104481)) b!7792127))

(assert (= (or b!7792118 b!7792115 b!7792117) bm!722254))

(declare-fun m!8232452 () Bool)

(assert (=> bm!722254 m!8232452))

(declare-fun m!8232454 () Bool)

(assert (=> b!7792125 m!8232454))

(assert (=> b!7792114 m!8232454))

(assert (=> b!7792114 m!8232454))

(declare-fun m!8232456 () Bool)

(assert (=> b!7792114 m!8232456))

(declare-fun m!8232458 () Bool)

(assert (=> b!7792114 m!8232458))

(assert (=> b!7792114 m!8232456))

(assert (=> b!7792114 m!8232458))

(declare-fun m!8232460 () Bool)

(assert (=> b!7792114 m!8232460))

(assert (=> b!7792124 m!8232458))

(assert (=> b!7792124 m!8232458))

(declare-fun m!8232462 () Bool)

(assert (=> b!7792124 m!8232462))

(assert (=> b!7792127 m!8232454))

(assert (=> b!7792119 m!8232458))

(assert (=> b!7792119 m!8232458))

(assert (=> b!7792119 m!8232462))

(declare-fun m!8232464 () Bool)

(assert (=> b!7792120 m!8232464))

(assert (=> d!2346027 m!8232452))

(declare-fun m!8232466 () Bool)

(assert (=> d!2346027 m!8232466))

(assert (=> b!7792068 d!2346027))

(declare-fun b!7792174 () Bool)

(declare-fun e!4614036 () Bool)

(declare-fun call!722270 () Bool)

(assert (=> b!7792174 (= e!4614036 call!722270)))

(declare-fun b!7792175 () Bool)

(declare-fun res!3104517 () Bool)

(declare-fun e!4614038 () Bool)

(assert (=> b!7792175 (=> res!3104517 e!4614038)))

(assert (=> b!7792175 (= res!3104517 (not ((_ is Concat!29708) r2!6217)))))

(declare-fun e!4614039 () Bool)

(assert (=> b!7792175 (= e!4614039 e!4614038)))

(declare-fun b!7792176 () Bool)

(declare-fun e!4614034 () Bool)

(declare-fun e!4614037 () Bool)

(assert (=> b!7792176 (= e!4614034 e!4614037)))

(declare-fun c!1435060 () Bool)

(assert (=> b!7792176 (= c!1435060 ((_ is Star!20863) r2!6217))))

(declare-fun b!7792177 () Bool)

(declare-fun e!4614033 () Bool)

(assert (=> b!7792177 (= e!4614037 e!4614033)))

(declare-fun res!3104516 () Bool)

(assert (=> b!7792177 (= res!3104516 (not (nullable!9247 (reg!21192 r2!6217))))))

(assert (=> b!7792177 (=> (not res!3104516) (not e!4614033))))

(declare-fun b!7792178 () Bool)

(assert (=> b!7792178 (= e!4614037 e!4614039)))

(declare-fun c!1435061 () Bool)

(assert (=> b!7792178 (= c!1435061 ((_ is Union!20863) r2!6217))))

(declare-fun b!7792179 () Bool)

(declare-fun e!4614035 () Bool)

(assert (=> b!7792179 (= e!4614035 call!722270)))

(declare-fun b!7792180 () Bool)

(assert (=> b!7792180 (= e!4614038 e!4614036)))

(declare-fun res!3104519 () Bool)

(assert (=> b!7792180 (=> (not res!3104519) (not e!4614036))))

(declare-fun call!722269 () Bool)

(assert (=> b!7792180 (= res!3104519 call!722269)))

(declare-fun bm!722264 () Bool)

(declare-fun call!722268 () Bool)

(assert (=> bm!722264 (= call!722268 (validRegex!11277 (ite c!1435060 (reg!21192 r2!6217) (ite c!1435061 (regOne!42239 r2!6217) (regOne!42238 r2!6217)))))))

(declare-fun b!7792181 () Bool)

(assert (=> b!7792181 (= e!4614033 call!722268)))

(declare-fun bm!722263 () Bool)

(assert (=> bm!722263 (= call!722270 (validRegex!11277 (ite c!1435061 (regTwo!42239 r2!6217) (regTwo!42238 r2!6217))))))

(declare-fun d!2346033 () Bool)

(declare-fun res!3104518 () Bool)

(assert (=> d!2346033 (=> res!3104518 e!4614034)))

(assert (=> d!2346033 (= res!3104518 ((_ is ElementMatch!20863) r2!6217))))

(assert (=> d!2346033 (= (validRegex!11277 r2!6217) e!4614034)))

(declare-fun bm!722265 () Bool)

(assert (=> bm!722265 (= call!722269 call!722268)))

(declare-fun b!7792182 () Bool)

(declare-fun res!3104515 () Bool)

(assert (=> b!7792182 (=> (not res!3104515) (not e!4614035))))

(assert (=> b!7792182 (= res!3104515 call!722269)))

(assert (=> b!7792182 (= e!4614039 e!4614035)))

(assert (= (and d!2346033 (not res!3104518)) b!7792176))

(assert (= (and b!7792176 c!1435060) b!7792177))

(assert (= (and b!7792176 (not c!1435060)) b!7792178))

(assert (= (and b!7792177 res!3104516) b!7792181))

(assert (= (and b!7792178 c!1435061) b!7792182))

(assert (= (and b!7792178 (not c!1435061)) b!7792175))

(assert (= (and b!7792182 res!3104515) b!7792179))

(assert (= (and b!7792175 (not res!3104517)) b!7792180))

(assert (= (and b!7792180 res!3104519) b!7792174))

(assert (= (or b!7792182 b!7792180) bm!722265))

(assert (= (or b!7792179 b!7792174) bm!722263))

(assert (= (or b!7792181 bm!722265) bm!722264))

(declare-fun m!8232468 () Bool)

(assert (=> b!7792177 m!8232468))

(declare-fun m!8232470 () Bool)

(assert (=> bm!722264 m!8232470))

(declare-fun m!8232472 () Bool)

(assert (=> bm!722263 m!8232472))

(assert (=> b!7792084 d!2346033))

(declare-fun d!2346035 () Bool)

(declare-fun isEmpty!42216 (Option!17758) Bool)

(assert (=> d!2346035 (= (isDefined!14368 lt!2673759) (not (isEmpty!42216 lt!2673759)))))

(declare-fun bs!1966349 () Bool)

(assert (= bs!1966349 d!2346035))

(declare-fun m!8232474 () Bool)

(assert (=> bs!1966349 m!8232474))

(assert (=> b!7792083 d!2346035))

(declare-fun d!2346037 () Bool)

(assert (=> d!2346037 (isDefined!14368 (findConcatSeparation!3788 lt!2673766 r2!6217 Nil!73578 (t!388437 s!14292) (t!388437 s!14292)))))

(declare-fun lt!2673778 () Unit!168572)

(declare-fun choose!59516 (Regex!20863 Regex!20863 List!73702) Unit!168572)

(assert (=> d!2346037 (= lt!2673778 (choose!59516 lt!2673766 r2!6217 (t!388437 s!14292)))))

(assert (=> d!2346037 (validRegex!11277 lt!2673766)))

(assert (=> d!2346037 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!372 lt!2673766 r2!6217 (t!388437 s!14292)) lt!2673778)))

(declare-fun bs!1966350 () Bool)

(assert (= bs!1966350 d!2346037))

(assert (=> bs!1966350 m!8232434))

(assert (=> bs!1966350 m!8232434))

(declare-fun m!8232500 () Bool)

(assert (=> bs!1966350 m!8232500))

(declare-fun m!8232502 () Bool)

(assert (=> bs!1966350 m!8232502))

(declare-fun m!8232504 () Bool)

(assert (=> bs!1966350 m!8232504))

(assert (=> b!7792083 d!2346037))

(declare-fun b!7792240 () Bool)

(declare-fun e!4614068 () List!73702)

(assert (=> b!7792240 (= e!4614068 (Cons!73578 (h!80026 (Cons!73578 (h!80026 s!14292) (_1!38267 lt!2673762))) (++!17931 (t!388437 (Cons!73578 (h!80026 s!14292) (_1!38267 lt!2673762))) (_2!38267 lt!2673762))))))

(declare-fun d!2346043 () Bool)

(declare-fun e!4614069 () Bool)

(assert (=> d!2346043 e!4614069))

(declare-fun res!3104540 () Bool)

(assert (=> d!2346043 (=> (not res!3104540) (not e!4614069))))

(declare-fun lt!2673783 () List!73702)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15609 (List!73702) (InoxSet C!42052))

(assert (=> d!2346043 (= res!3104540 (= (content!15609 lt!2673783) ((_ map or) (content!15609 (Cons!73578 (h!80026 s!14292) (_1!38267 lt!2673762))) (content!15609 (_2!38267 lt!2673762)))))))

(assert (=> d!2346043 (= lt!2673783 e!4614068)))

(declare-fun c!1435080 () Bool)

(assert (=> d!2346043 (= c!1435080 ((_ is Nil!73578) (Cons!73578 (h!80026 s!14292) (_1!38267 lt!2673762))))))

(assert (=> d!2346043 (= (++!17931 (Cons!73578 (h!80026 s!14292) (_1!38267 lt!2673762)) (_2!38267 lt!2673762)) lt!2673783)))

(declare-fun b!7792239 () Bool)

(assert (=> b!7792239 (= e!4614068 (_2!38267 lt!2673762))))

(declare-fun b!7792241 () Bool)

(declare-fun res!3104541 () Bool)

(assert (=> b!7792241 (=> (not res!3104541) (not e!4614069))))

(declare-fun size!42712 (List!73702) Int)

(assert (=> b!7792241 (= res!3104541 (= (size!42712 lt!2673783) (+ (size!42712 (Cons!73578 (h!80026 s!14292) (_1!38267 lt!2673762))) (size!42712 (_2!38267 lt!2673762)))))))

(declare-fun b!7792242 () Bool)

(assert (=> b!7792242 (= e!4614069 (or (not (= (_2!38267 lt!2673762) Nil!73578)) (= lt!2673783 (Cons!73578 (h!80026 s!14292) (_1!38267 lt!2673762)))))))

(assert (= (and d!2346043 c!1435080) b!7792239))

(assert (= (and d!2346043 (not c!1435080)) b!7792240))

(assert (= (and d!2346043 res!3104540) b!7792241))

(assert (= (and b!7792241 res!3104541) b!7792242))

(declare-fun m!8232506 () Bool)

(assert (=> b!7792240 m!8232506))

(declare-fun m!8232508 () Bool)

(assert (=> d!2346043 m!8232508))

(declare-fun m!8232510 () Bool)

(assert (=> d!2346043 m!8232510))

(declare-fun m!8232512 () Bool)

(assert (=> d!2346043 m!8232512))

(declare-fun m!8232514 () Bool)

(assert (=> b!7792241 m!8232514))

(declare-fun m!8232516 () Bool)

(assert (=> b!7792241 m!8232516))

(declare-fun m!8232518 () Bool)

(assert (=> b!7792241 m!8232518))

(assert (=> b!7792083 d!2346043))

(declare-fun d!2346045 () Bool)

(assert (=> d!2346045 (= (get!26314 lt!2673759) (v!54892 lt!2673759))))

(assert (=> b!7792083 d!2346045))

(declare-fun b!7792325 () Bool)

(declare-fun e!4614116 () Option!17758)

(declare-fun e!4614115 () Option!17758)

(assert (=> b!7792325 (= e!4614116 e!4614115)))

(declare-fun c!1435107 () Bool)

(assert (=> b!7792325 (= c!1435107 ((_ is Nil!73578) (t!388437 s!14292)))))

(declare-fun b!7792326 () Bool)

(declare-fun res!3104576 () Bool)

(declare-fun e!4614119 () Bool)

(assert (=> b!7792326 (=> (not res!3104576) (not e!4614119))))

(declare-fun lt!2673800 () Option!17758)

(assert (=> b!7792326 (= res!3104576 (matchR!10323 r2!6217 (_2!38267 (get!26314 lt!2673800))))))

(declare-fun b!7792327 () Bool)

(assert (=> b!7792327 (= e!4614119 (= (++!17931 (_1!38267 (get!26314 lt!2673800)) (_2!38267 (get!26314 lt!2673800))) (t!388437 s!14292)))))

(declare-fun b!7792328 () Bool)

(declare-fun lt!2673798 () Unit!168572)

(declare-fun lt!2673799 () Unit!168572)

(assert (=> b!7792328 (= lt!2673798 lt!2673799)))

(assert (=> b!7792328 (= (++!17931 (++!17931 Nil!73578 (Cons!73578 (h!80026 (t!388437 s!14292)) Nil!73578)) (t!388437 (t!388437 s!14292))) (t!388437 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3401 (List!73702 C!42052 List!73702 List!73702) Unit!168572)

(assert (=> b!7792328 (= lt!2673799 (lemmaMoveElementToOtherListKeepsConcatEq!3401 Nil!73578 (h!80026 (t!388437 s!14292)) (t!388437 (t!388437 s!14292)) (t!388437 s!14292)))))

(assert (=> b!7792328 (= e!4614115 (findConcatSeparation!3788 lt!2673766 r2!6217 (++!17931 Nil!73578 (Cons!73578 (h!80026 (t!388437 s!14292)) Nil!73578)) (t!388437 (t!388437 s!14292)) (t!388437 s!14292)))))

(declare-fun b!7792329 () Bool)

(assert (=> b!7792329 (= e!4614116 (Some!17757 (tuple2!69929 Nil!73578 (t!388437 s!14292))))))

(declare-fun d!2346047 () Bool)

(declare-fun e!4614118 () Bool)

(assert (=> d!2346047 e!4614118))

(declare-fun res!3104577 () Bool)

(assert (=> d!2346047 (=> res!3104577 e!4614118)))

(assert (=> d!2346047 (= res!3104577 e!4614119)))

(declare-fun res!3104574 () Bool)

(assert (=> d!2346047 (=> (not res!3104574) (not e!4614119))))

(assert (=> d!2346047 (= res!3104574 (isDefined!14368 lt!2673800))))

(assert (=> d!2346047 (= lt!2673800 e!4614116)))

(declare-fun c!1435106 () Bool)

(declare-fun e!4614117 () Bool)

(assert (=> d!2346047 (= c!1435106 e!4614117)))

(declare-fun res!3104578 () Bool)

(assert (=> d!2346047 (=> (not res!3104578) (not e!4614117))))

(assert (=> d!2346047 (= res!3104578 (matchR!10323 lt!2673766 Nil!73578))))

(assert (=> d!2346047 (validRegex!11277 lt!2673766)))

(assert (=> d!2346047 (= (findConcatSeparation!3788 lt!2673766 r2!6217 Nil!73578 (t!388437 s!14292) (t!388437 s!14292)) lt!2673800)))

(declare-fun b!7792330 () Bool)

(declare-fun res!3104575 () Bool)

(assert (=> b!7792330 (=> (not res!3104575) (not e!4614119))))

(assert (=> b!7792330 (= res!3104575 (matchR!10323 lt!2673766 (_1!38267 (get!26314 lt!2673800))))))

(declare-fun b!7792331 () Bool)

(assert (=> b!7792331 (= e!4614115 None!17757)))

(declare-fun b!7792332 () Bool)

(assert (=> b!7792332 (= e!4614118 (not (isDefined!14368 lt!2673800)))))

(declare-fun b!7792333 () Bool)

(assert (=> b!7792333 (= e!4614117 (matchR!10323 r2!6217 (t!388437 s!14292)))))

(assert (= (and d!2346047 res!3104578) b!7792333))

(assert (= (and d!2346047 c!1435106) b!7792329))

(assert (= (and d!2346047 (not c!1435106)) b!7792325))

(assert (= (and b!7792325 c!1435107) b!7792331))

(assert (= (and b!7792325 (not c!1435107)) b!7792328))

(assert (= (and d!2346047 res!3104574) b!7792330))

(assert (= (and b!7792330 res!3104575) b!7792326))

(assert (= (and b!7792326 res!3104576) b!7792327))

(assert (= (and d!2346047 (not res!3104577)) b!7792332))

(declare-fun m!8232570 () Bool)

(assert (=> b!7792332 m!8232570))

(declare-fun m!8232572 () Bool)

(assert (=> b!7792333 m!8232572))

(declare-fun m!8232574 () Bool)

(assert (=> b!7792327 m!8232574))

(declare-fun m!8232576 () Bool)

(assert (=> b!7792327 m!8232576))

(assert (=> b!7792330 m!8232574))

(declare-fun m!8232578 () Bool)

(assert (=> b!7792330 m!8232578))

(declare-fun m!8232580 () Bool)

(assert (=> b!7792328 m!8232580))

(assert (=> b!7792328 m!8232580))

(declare-fun m!8232582 () Bool)

(assert (=> b!7792328 m!8232582))

(declare-fun m!8232584 () Bool)

(assert (=> b!7792328 m!8232584))

(assert (=> b!7792328 m!8232580))

(declare-fun m!8232586 () Bool)

(assert (=> b!7792328 m!8232586))

(assert (=> b!7792326 m!8232574))

(declare-fun m!8232588 () Bool)

(assert (=> b!7792326 m!8232588))

(assert (=> d!2346047 m!8232570))

(declare-fun m!8232590 () Bool)

(assert (=> d!2346047 m!8232590))

(assert (=> d!2346047 m!8232504))

(assert (=> b!7792083 d!2346047))

(declare-fun b!7792352 () Bool)

(declare-fun e!4614138 () Bool)

(assert (=> b!7792352 (= e!4614138 (matchR!10323 (derivativeStep!6200 lt!2673761 (head!15939 s!14292)) (tail!15480 s!14292)))))

(declare-fun b!7792353 () Bool)

(declare-fun res!3104595 () Bool)

(declare-fun e!4614137 () Bool)

(assert (=> b!7792353 (=> (not res!3104595) (not e!4614137))))

(declare-fun call!722301 () Bool)

(assert (=> b!7792353 (= res!3104595 (not call!722301))))

(declare-fun b!7792354 () Bool)

(declare-fun res!3104596 () Bool)

(declare-fun e!4614134 () Bool)

(assert (=> b!7792354 (=> res!3104596 e!4614134)))

(assert (=> b!7792354 (= res!3104596 (not ((_ is ElementMatch!20863) lt!2673761)))))

(declare-fun e!4614136 () Bool)

(assert (=> b!7792354 (= e!4614136 e!4614134)))

(declare-fun d!2346061 () Bool)

(declare-fun e!4614139 () Bool)

(assert (=> d!2346061 e!4614139))

(declare-fun c!1435114 () Bool)

(assert (=> d!2346061 (= c!1435114 ((_ is EmptyExpr!20863) lt!2673761))))

(declare-fun lt!2673801 () Bool)

(assert (=> d!2346061 (= lt!2673801 e!4614138)))

(declare-fun c!1435112 () Bool)

(assert (=> d!2346061 (= c!1435112 (isEmpty!42215 s!14292))))

(assert (=> d!2346061 (validRegex!11277 lt!2673761)))

(assert (=> d!2346061 (= (matchR!10323 lt!2673761 s!14292) lt!2673801)))

(declare-fun b!7792355 () Bool)

(declare-fun e!4614135 () Bool)

(declare-fun e!4614140 () Bool)

(assert (=> b!7792355 (= e!4614135 e!4614140)))

(declare-fun res!3104592 () Bool)

(assert (=> b!7792355 (=> res!3104592 e!4614140)))

(assert (=> b!7792355 (= res!3104592 call!722301)))

(declare-fun b!7792356 () Bool)

(assert (=> b!7792356 (= e!4614139 (= lt!2673801 call!722301))))

(declare-fun b!7792357 () Bool)

(declare-fun res!3104589 () Bool)

(assert (=> b!7792357 (=> res!3104589 e!4614140)))

(assert (=> b!7792357 (= res!3104589 (not (isEmpty!42215 (tail!15480 s!14292))))))

(declare-fun b!7792358 () Bool)

(assert (=> b!7792358 (= e!4614138 (nullable!9247 lt!2673761))))

(declare-fun b!7792359 () Bool)

(assert (=> b!7792359 (= e!4614134 e!4614135)))

(declare-fun res!3104590 () Bool)

(assert (=> b!7792359 (=> (not res!3104590) (not e!4614135))))

(assert (=> b!7792359 (= res!3104590 (not lt!2673801))))

(declare-fun b!7792360 () Bool)

(declare-fun res!3104594 () Bool)

(assert (=> b!7792360 (=> res!3104594 e!4614134)))

(assert (=> b!7792360 (= res!3104594 e!4614137)))

(declare-fun res!3104593 () Bool)

(assert (=> b!7792360 (=> (not res!3104593) (not e!4614137))))

(assert (=> b!7792360 (= res!3104593 lt!2673801)))

(declare-fun b!7792361 () Bool)

(assert (=> b!7792361 (= e!4614136 (not lt!2673801))))

(declare-fun b!7792362 () Bool)

(declare-fun res!3104591 () Bool)

(assert (=> b!7792362 (=> (not res!3104591) (not e!4614137))))

(assert (=> b!7792362 (= res!3104591 (isEmpty!42215 (tail!15480 s!14292)))))

(declare-fun b!7792363 () Bool)

(assert (=> b!7792363 (= e!4614137 (= (head!15939 s!14292) (c!1435040 lt!2673761)))))

(declare-fun bm!722296 () Bool)

(assert (=> bm!722296 (= call!722301 (isEmpty!42215 s!14292))))

(declare-fun b!7792364 () Bool)

(assert (=> b!7792364 (= e!4614139 e!4614136)))

(declare-fun c!1435113 () Bool)

(assert (=> b!7792364 (= c!1435113 ((_ is EmptyLang!20863) lt!2673761))))

(declare-fun b!7792365 () Bool)

(assert (=> b!7792365 (= e!4614140 (not (= (head!15939 s!14292) (c!1435040 lt!2673761))))))

(assert (= (and d!2346061 c!1435112) b!7792358))

(assert (= (and d!2346061 (not c!1435112)) b!7792352))

(assert (= (and d!2346061 c!1435114) b!7792356))

(assert (= (and d!2346061 (not c!1435114)) b!7792364))

(assert (= (and b!7792364 c!1435113) b!7792361))

(assert (= (and b!7792364 (not c!1435113)) b!7792354))

(assert (= (and b!7792354 (not res!3104596)) b!7792360))

(assert (= (and b!7792360 res!3104593) b!7792353))

(assert (= (and b!7792353 res!3104595) b!7792362))

(assert (= (and b!7792362 res!3104591) b!7792363))

(assert (= (and b!7792360 (not res!3104594)) b!7792359))

(assert (= (and b!7792359 res!3104590) b!7792355))

(assert (= (and b!7792355 (not res!3104592)) b!7792357))

(assert (= (and b!7792357 (not res!3104589)) b!7792365))

(assert (= (or b!7792356 b!7792353 b!7792355) bm!722296))

(declare-fun m!8232592 () Bool)

(assert (=> bm!722296 m!8232592))

(declare-fun m!8232594 () Bool)

(assert (=> b!7792363 m!8232594))

(assert (=> b!7792352 m!8232594))

(assert (=> b!7792352 m!8232594))

(declare-fun m!8232596 () Bool)

(assert (=> b!7792352 m!8232596))

(declare-fun m!8232598 () Bool)

(assert (=> b!7792352 m!8232598))

(assert (=> b!7792352 m!8232596))

(assert (=> b!7792352 m!8232598))

(declare-fun m!8232600 () Bool)

(assert (=> b!7792352 m!8232600))

(assert (=> b!7792362 m!8232598))

(assert (=> b!7792362 m!8232598))

(declare-fun m!8232602 () Bool)

(assert (=> b!7792362 m!8232602))

(assert (=> b!7792365 m!8232594))

(assert (=> b!7792357 m!8232598))

(assert (=> b!7792357 m!8232598))

(assert (=> b!7792357 m!8232602))

(declare-fun m!8232604 () Bool)

(assert (=> b!7792358 m!8232604))

(assert (=> d!2346061 m!8232592))

(declare-fun m!8232606 () Bool)

(assert (=> d!2346061 m!8232606))

(assert (=> b!7792078 d!2346061))

(declare-fun b!7792366 () Bool)

(declare-fun e!4614144 () Bool)

(declare-fun call!722304 () Bool)

(assert (=> b!7792366 (= e!4614144 call!722304)))

(declare-fun b!7792367 () Bool)

(declare-fun res!3104599 () Bool)

(declare-fun e!4614146 () Bool)

(assert (=> b!7792367 (=> res!3104599 e!4614146)))

(assert (=> b!7792367 (= res!3104599 (not ((_ is Concat!29708) r1!6279)))))

(declare-fun e!4614147 () Bool)

(assert (=> b!7792367 (= e!4614147 e!4614146)))

(declare-fun b!7792368 () Bool)

(declare-fun e!4614142 () Bool)

(declare-fun e!4614145 () Bool)

(assert (=> b!7792368 (= e!4614142 e!4614145)))

(declare-fun c!1435115 () Bool)

(assert (=> b!7792368 (= c!1435115 ((_ is Star!20863) r1!6279))))

(declare-fun b!7792369 () Bool)

(declare-fun e!4614141 () Bool)

(assert (=> b!7792369 (= e!4614145 e!4614141)))

(declare-fun res!3104598 () Bool)

(assert (=> b!7792369 (= res!3104598 (not (nullable!9247 (reg!21192 r1!6279))))))

(assert (=> b!7792369 (=> (not res!3104598) (not e!4614141))))

(declare-fun b!7792370 () Bool)

(assert (=> b!7792370 (= e!4614145 e!4614147)))

(declare-fun c!1435116 () Bool)

(assert (=> b!7792370 (= c!1435116 ((_ is Union!20863) r1!6279))))

(declare-fun b!7792371 () Bool)

(declare-fun e!4614143 () Bool)

(assert (=> b!7792371 (= e!4614143 call!722304)))

(declare-fun b!7792372 () Bool)

(assert (=> b!7792372 (= e!4614146 e!4614144)))

(declare-fun res!3104601 () Bool)

(assert (=> b!7792372 (=> (not res!3104601) (not e!4614144))))

(declare-fun call!722303 () Bool)

(assert (=> b!7792372 (= res!3104601 call!722303)))

(declare-fun call!722302 () Bool)

(declare-fun bm!722298 () Bool)

(assert (=> bm!722298 (= call!722302 (validRegex!11277 (ite c!1435115 (reg!21192 r1!6279) (ite c!1435116 (regOne!42239 r1!6279) (regOne!42238 r1!6279)))))))

(declare-fun b!7792373 () Bool)

(assert (=> b!7792373 (= e!4614141 call!722302)))

(declare-fun bm!722297 () Bool)

(assert (=> bm!722297 (= call!722304 (validRegex!11277 (ite c!1435116 (regTwo!42239 r1!6279) (regTwo!42238 r1!6279))))))

(declare-fun d!2346063 () Bool)

(declare-fun res!3104600 () Bool)

(assert (=> d!2346063 (=> res!3104600 e!4614142)))

(assert (=> d!2346063 (= res!3104600 ((_ is ElementMatch!20863) r1!6279))))

(assert (=> d!2346063 (= (validRegex!11277 r1!6279) e!4614142)))

(declare-fun bm!722299 () Bool)

(assert (=> bm!722299 (= call!722303 call!722302)))

(declare-fun b!7792374 () Bool)

(declare-fun res!3104597 () Bool)

(assert (=> b!7792374 (=> (not res!3104597) (not e!4614143))))

(assert (=> b!7792374 (= res!3104597 call!722303)))

(assert (=> b!7792374 (= e!4614147 e!4614143)))

(assert (= (and d!2346063 (not res!3104600)) b!7792368))

(assert (= (and b!7792368 c!1435115) b!7792369))

(assert (= (and b!7792368 (not c!1435115)) b!7792370))

(assert (= (and b!7792369 res!3104598) b!7792373))

(assert (= (and b!7792370 c!1435116) b!7792374))

(assert (= (and b!7792370 (not c!1435116)) b!7792367))

(assert (= (and b!7792374 res!3104597) b!7792371))

(assert (= (and b!7792367 (not res!3104599)) b!7792372))

(assert (= (and b!7792372 res!3104601) b!7792366))

(assert (= (or b!7792374 b!7792372) bm!722299))

(assert (= (or b!7792371 b!7792366) bm!722297))

(assert (= (or b!7792373 bm!722299) bm!722298))

(declare-fun m!8232608 () Bool)

(assert (=> b!7792369 m!8232608))

(declare-fun m!8232610 () Bool)

(assert (=> bm!722298 m!8232610))

(declare-fun m!8232612 () Bool)

(assert (=> bm!722297 m!8232612))

(assert (=> start!740918 d!2346063))

(declare-fun b!7792375 () Bool)

(declare-fun e!4614152 () Bool)

(assert (=> b!7792375 (= e!4614152 (matchR!10323 (derivativeStep!6200 lt!2673760 (head!15939 (t!388437 s!14292))) (tail!15480 (t!388437 s!14292))))))

(declare-fun b!7792376 () Bool)

(declare-fun res!3104608 () Bool)

(declare-fun e!4614151 () Bool)

(assert (=> b!7792376 (=> (not res!3104608) (not e!4614151))))

(declare-fun call!722305 () Bool)

(assert (=> b!7792376 (= res!3104608 (not call!722305))))

(declare-fun b!7792377 () Bool)

(declare-fun res!3104609 () Bool)

(declare-fun e!4614148 () Bool)

(assert (=> b!7792377 (=> res!3104609 e!4614148)))

(assert (=> b!7792377 (= res!3104609 (not ((_ is ElementMatch!20863) lt!2673760)))))

(declare-fun e!4614150 () Bool)

(assert (=> b!7792377 (= e!4614150 e!4614148)))

(declare-fun d!2346065 () Bool)

(declare-fun e!4614153 () Bool)

(assert (=> d!2346065 e!4614153))

(declare-fun c!1435119 () Bool)

(assert (=> d!2346065 (= c!1435119 ((_ is EmptyExpr!20863) lt!2673760))))

(declare-fun lt!2673802 () Bool)

(assert (=> d!2346065 (= lt!2673802 e!4614152)))

(declare-fun c!1435117 () Bool)

(assert (=> d!2346065 (= c!1435117 (isEmpty!42215 (t!388437 s!14292)))))

(assert (=> d!2346065 (validRegex!11277 lt!2673760)))

(assert (=> d!2346065 (= (matchR!10323 lt!2673760 (t!388437 s!14292)) lt!2673802)))

(declare-fun b!7792378 () Bool)

(declare-fun e!4614149 () Bool)

(declare-fun e!4614154 () Bool)

(assert (=> b!7792378 (= e!4614149 e!4614154)))

(declare-fun res!3104605 () Bool)

(assert (=> b!7792378 (=> res!3104605 e!4614154)))

(assert (=> b!7792378 (= res!3104605 call!722305)))

(declare-fun b!7792379 () Bool)

(assert (=> b!7792379 (= e!4614153 (= lt!2673802 call!722305))))

(declare-fun b!7792380 () Bool)

(declare-fun res!3104602 () Bool)

(assert (=> b!7792380 (=> res!3104602 e!4614154)))

(assert (=> b!7792380 (= res!3104602 (not (isEmpty!42215 (tail!15480 (t!388437 s!14292)))))))

(declare-fun b!7792381 () Bool)

(assert (=> b!7792381 (= e!4614152 (nullable!9247 lt!2673760))))

(declare-fun b!7792382 () Bool)

(assert (=> b!7792382 (= e!4614148 e!4614149)))

(declare-fun res!3104603 () Bool)

(assert (=> b!7792382 (=> (not res!3104603) (not e!4614149))))

(assert (=> b!7792382 (= res!3104603 (not lt!2673802))))

(declare-fun b!7792383 () Bool)

(declare-fun res!3104607 () Bool)

(assert (=> b!7792383 (=> res!3104607 e!4614148)))

(assert (=> b!7792383 (= res!3104607 e!4614151)))

(declare-fun res!3104606 () Bool)

(assert (=> b!7792383 (=> (not res!3104606) (not e!4614151))))

(assert (=> b!7792383 (= res!3104606 lt!2673802)))

(declare-fun b!7792384 () Bool)

(assert (=> b!7792384 (= e!4614150 (not lt!2673802))))

(declare-fun b!7792385 () Bool)

(declare-fun res!3104604 () Bool)

(assert (=> b!7792385 (=> (not res!3104604) (not e!4614151))))

(assert (=> b!7792385 (= res!3104604 (isEmpty!42215 (tail!15480 (t!388437 s!14292))))))

(declare-fun b!7792386 () Bool)

(assert (=> b!7792386 (= e!4614151 (= (head!15939 (t!388437 s!14292)) (c!1435040 lt!2673760)))))

(declare-fun bm!722300 () Bool)

(assert (=> bm!722300 (= call!722305 (isEmpty!42215 (t!388437 s!14292)))))

(declare-fun b!7792387 () Bool)

(assert (=> b!7792387 (= e!4614153 e!4614150)))

(declare-fun c!1435118 () Bool)

(assert (=> b!7792387 (= c!1435118 ((_ is EmptyLang!20863) lt!2673760))))

(declare-fun b!7792388 () Bool)

(assert (=> b!7792388 (= e!4614154 (not (= (head!15939 (t!388437 s!14292)) (c!1435040 lt!2673760))))))

(assert (= (and d!2346065 c!1435117) b!7792381))

(assert (= (and d!2346065 (not c!1435117)) b!7792375))

(assert (= (and d!2346065 c!1435119) b!7792379))

(assert (= (and d!2346065 (not c!1435119)) b!7792387))

(assert (= (and b!7792387 c!1435118) b!7792384))

(assert (= (and b!7792387 (not c!1435118)) b!7792377))

(assert (= (and b!7792377 (not res!3104609)) b!7792383))

(assert (= (and b!7792383 res!3104606) b!7792376))

(assert (= (and b!7792376 res!3104608) b!7792385))

(assert (= (and b!7792385 res!3104604) b!7792386))

(assert (= (and b!7792383 (not res!3104607)) b!7792382))

(assert (= (and b!7792382 res!3104603) b!7792378))

(assert (= (and b!7792378 (not res!3104605)) b!7792380))

(assert (= (and b!7792380 (not res!3104602)) b!7792388))

(assert (= (or b!7792379 b!7792376 b!7792378) bm!722300))

(assert (=> bm!722300 m!8232452))

(assert (=> b!7792386 m!8232454))

(assert (=> b!7792375 m!8232454))

(assert (=> b!7792375 m!8232454))

(declare-fun m!8232614 () Bool)

(assert (=> b!7792375 m!8232614))

(assert (=> b!7792375 m!8232458))

(assert (=> b!7792375 m!8232614))

(assert (=> b!7792375 m!8232458))

(declare-fun m!8232616 () Bool)

(assert (=> b!7792375 m!8232616))

(assert (=> b!7792385 m!8232458))

(assert (=> b!7792385 m!8232458))

(assert (=> b!7792385 m!8232462))

(assert (=> b!7792388 m!8232454))

(assert (=> b!7792380 m!8232458))

(assert (=> b!7792380 m!8232458))

(assert (=> b!7792380 m!8232462))

(declare-fun m!8232618 () Bool)

(assert (=> b!7792381 m!8232618))

(assert (=> d!2346065 m!8232452))

(declare-fun m!8232620 () Bool)

(assert (=> d!2346065 m!8232620))

(assert (=> b!7792071 d!2346065))

(declare-fun d!2346067 () Bool)

(declare-fun e!4614173 () Bool)

(assert (=> d!2346067 e!4614173))

(declare-fun res!3104625 () Bool)

(assert (=> d!2346067 (=> res!3104625 e!4614173)))

(assert (=> d!2346067 (= res!3104625 (matchR!10323 lt!2673760 (t!388437 s!14292)))))

(declare-fun lt!2673805 () Unit!168572)

(declare-fun choose!59519 (Regex!20863 Regex!20863 List!73702) Unit!168572)

(assert (=> d!2346067 (= lt!2673805 (choose!59519 lt!2673760 lt!2673763 (t!388437 s!14292)))))

(declare-fun e!4614174 () Bool)

(assert (=> d!2346067 e!4614174))

(declare-fun res!3104624 () Bool)

(assert (=> d!2346067 (=> (not res!3104624) (not e!4614174))))

(assert (=> d!2346067 (= res!3104624 (validRegex!11277 lt!2673760))))

(assert (=> d!2346067 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!406 lt!2673760 lt!2673763 (t!388437 s!14292)) lt!2673805)))

(declare-fun b!7792411 () Bool)

(assert (=> b!7792411 (= e!4614174 (validRegex!11277 lt!2673763))))

(declare-fun b!7792412 () Bool)

(assert (=> b!7792412 (= e!4614173 (matchR!10323 lt!2673763 (t!388437 s!14292)))))

(assert (= (and d!2346067 res!3104624) b!7792411))

(assert (= (and d!2346067 (not res!3104625)) b!7792412))

(assert (=> d!2346067 m!8232442))

(declare-fun m!8232634 () Bool)

(assert (=> d!2346067 m!8232634))

(assert (=> d!2346067 m!8232620))

(assert (=> b!7792411 m!8232466))

(assert (=> b!7792412 m!8232440))

(assert (=> b!7792071 d!2346067))

(declare-fun d!2346075 () Bool)

(declare-fun nullableFct!3628 (Regex!20863) Bool)

(assert (=> d!2346075 (= (nullable!9247 r1!6279) (nullableFct!3628 r1!6279))))

(declare-fun bs!1966351 () Bool)

(assert (= bs!1966351 d!2346075))

(declare-fun m!8232636 () Bool)

(assert (=> bs!1966351 m!8232636))

(assert (=> b!7792076 d!2346075))

(declare-fun b!7792413 () Bool)

(declare-fun e!4614179 () Bool)

(assert (=> b!7792413 (= e!4614179 (matchR!10323 (derivativeStep!6200 lt!2673767 (head!15939 (t!388437 s!14292))) (tail!15480 (t!388437 s!14292))))))

(declare-fun b!7792414 () Bool)

(declare-fun res!3104632 () Bool)

(declare-fun e!4614178 () Bool)

(assert (=> b!7792414 (=> (not res!3104632) (not e!4614178))))

(declare-fun call!722312 () Bool)

(assert (=> b!7792414 (= res!3104632 (not call!722312))))

(declare-fun b!7792415 () Bool)

(declare-fun res!3104633 () Bool)

(declare-fun e!4614175 () Bool)

(assert (=> b!7792415 (=> res!3104633 e!4614175)))

(assert (=> b!7792415 (= res!3104633 (not ((_ is ElementMatch!20863) lt!2673767)))))

(declare-fun e!4614177 () Bool)

(assert (=> b!7792415 (= e!4614177 e!4614175)))

(declare-fun d!2346077 () Bool)

(declare-fun e!4614180 () Bool)

(assert (=> d!2346077 e!4614180))

(declare-fun c!1435126 () Bool)

(assert (=> d!2346077 (= c!1435126 ((_ is EmptyExpr!20863) lt!2673767))))

(declare-fun lt!2673808 () Bool)

(assert (=> d!2346077 (= lt!2673808 e!4614179)))

(declare-fun c!1435124 () Bool)

(assert (=> d!2346077 (= c!1435124 (isEmpty!42215 (t!388437 s!14292)))))

(assert (=> d!2346077 (validRegex!11277 lt!2673767)))

(assert (=> d!2346077 (= (matchR!10323 lt!2673767 (t!388437 s!14292)) lt!2673808)))

(declare-fun b!7792416 () Bool)

(declare-fun e!4614176 () Bool)

(declare-fun e!4614181 () Bool)

(assert (=> b!7792416 (= e!4614176 e!4614181)))

(declare-fun res!3104629 () Bool)

(assert (=> b!7792416 (=> res!3104629 e!4614181)))

(assert (=> b!7792416 (= res!3104629 call!722312)))

(declare-fun b!7792417 () Bool)

(assert (=> b!7792417 (= e!4614180 (= lt!2673808 call!722312))))

(declare-fun b!7792418 () Bool)

(declare-fun res!3104626 () Bool)

(assert (=> b!7792418 (=> res!3104626 e!4614181)))

(assert (=> b!7792418 (= res!3104626 (not (isEmpty!42215 (tail!15480 (t!388437 s!14292)))))))

(declare-fun b!7792419 () Bool)

(assert (=> b!7792419 (= e!4614179 (nullable!9247 lt!2673767))))

(declare-fun b!7792420 () Bool)

(assert (=> b!7792420 (= e!4614175 e!4614176)))

(declare-fun res!3104627 () Bool)

(assert (=> b!7792420 (=> (not res!3104627) (not e!4614176))))

(assert (=> b!7792420 (= res!3104627 (not lt!2673808))))

(declare-fun b!7792421 () Bool)

(declare-fun res!3104631 () Bool)

(assert (=> b!7792421 (=> res!3104631 e!4614175)))

(assert (=> b!7792421 (= res!3104631 e!4614178)))

(declare-fun res!3104630 () Bool)

(assert (=> b!7792421 (=> (not res!3104630) (not e!4614178))))

(assert (=> b!7792421 (= res!3104630 lt!2673808)))

(declare-fun b!7792422 () Bool)

(assert (=> b!7792422 (= e!4614177 (not lt!2673808))))

(declare-fun b!7792423 () Bool)

(declare-fun res!3104628 () Bool)

(assert (=> b!7792423 (=> (not res!3104628) (not e!4614178))))

(assert (=> b!7792423 (= res!3104628 (isEmpty!42215 (tail!15480 (t!388437 s!14292))))))

(declare-fun b!7792424 () Bool)

(assert (=> b!7792424 (= e!4614178 (= (head!15939 (t!388437 s!14292)) (c!1435040 lt!2673767)))))

(declare-fun bm!722307 () Bool)

(assert (=> bm!722307 (= call!722312 (isEmpty!42215 (t!388437 s!14292)))))

(declare-fun b!7792425 () Bool)

(assert (=> b!7792425 (= e!4614180 e!4614177)))

(declare-fun c!1435125 () Bool)

(assert (=> b!7792425 (= c!1435125 ((_ is EmptyLang!20863) lt!2673767))))

(declare-fun b!7792426 () Bool)

(assert (=> b!7792426 (= e!4614181 (not (= (head!15939 (t!388437 s!14292)) (c!1435040 lt!2673767))))))

(assert (= (and d!2346077 c!1435124) b!7792419))

(assert (= (and d!2346077 (not c!1435124)) b!7792413))

(assert (= (and d!2346077 c!1435126) b!7792417))

(assert (= (and d!2346077 (not c!1435126)) b!7792425))

(assert (= (and b!7792425 c!1435125) b!7792422))

(assert (= (and b!7792425 (not c!1435125)) b!7792415))

(assert (= (and b!7792415 (not res!3104633)) b!7792421))

(assert (= (and b!7792421 res!3104630) b!7792414))

(assert (= (and b!7792414 res!3104632) b!7792423))

(assert (= (and b!7792423 res!3104628) b!7792424))

(assert (= (and b!7792421 (not res!3104631)) b!7792420))

(assert (= (and b!7792420 res!3104627) b!7792416))

(assert (= (and b!7792416 (not res!3104629)) b!7792418))

(assert (= (and b!7792418 (not res!3104626)) b!7792426))

(assert (= (or b!7792417 b!7792414 b!7792416) bm!722307))

(assert (=> bm!722307 m!8232452))

(assert (=> b!7792424 m!8232454))

(assert (=> b!7792413 m!8232454))

(assert (=> b!7792413 m!8232454))

(declare-fun m!8232644 () Bool)

(assert (=> b!7792413 m!8232644))

(assert (=> b!7792413 m!8232458))

(assert (=> b!7792413 m!8232644))

(assert (=> b!7792413 m!8232458))

(declare-fun m!8232646 () Bool)

(assert (=> b!7792413 m!8232646))

(assert (=> b!7792423 m!8232458))

(assert (=> b!7792423 m!8232458))

(assert (=> b!7792423 m!8232462))

(assert (=> b!7792426 m!8232454))

(assert (=> b!7792418 m!8232458))

(assert (=> b!7792418 m!8232458))

(assert (=> b!7792418 m!8232462))

(declare-fun m!8232648 () Bool)

(assert (=> b!7792419 m!8232648))

(assert (=> d!2346077 m!8232452))

(declare-fun m!8232650 () Bool)

(assert (=> d!2346077 m!8232650))

(assert (=> b!7792080 d!2346077))

(declare-fun b!7792474 () Bool)

(declare-fun e!4614210 () Regex!20863)

(declare-fun e!4614209 () Regex!20863)

(assert (=> b!7792474 (= e!4614210 e!4614209)))

(declare-fun c!1435146 () Bool)

(assert (=> b!7792474 (= c!1435146 ((_ is Star!20863) lt!2673761))))

(declare-fun b!7792475 () Bool)

(declare-fun c!1435143 () Bool)

(assert (=> b!7792475 (= c!1435143 ((_ is Union!20863) lt!2673761))))

(declare-fun e!4614208 () Regex!20863)

(assert (=> b!7792475 (= e!4614208 e!4614210)))

(declare-fun b!7792476 () Bool)

(declare-fun e!4614207 () Regex!20863)

(assert (=> b!7792476 (= e!4614207 e!4614208)))

(declare-fun c!1435145 () Bool)

(assert (=> b!7792476 (= c!1435145 ((_ is ElementMatch!20863) lt!2673761))))

(declare-fun b!7792477 () Bool)

(assert (=> b!7792477 (= e!4614208 (ite (= (h!80026 s!14292) (c!1435040 lt!2673761)) EmptyExpr!20863 EmptyLang!20863))))

(declare-fun b!7792478 () Bool)

(declare-fun e!4614211 () Regex!20863)

(declare-fun call!722324 () Regex!20863)

(assert (=> b!7792478 (= e!4614211 (Union!20863 (Concat!29708 call!722324 (regTwo!42238 lt!2673761)) EmptyLang!20863))))

(declare-fun bm!722316 () Bool)

(declare-fun call!722321 () Regex!20863)

(declare-fun call!722322 () Regex!20863)

(assert (=> bm!722316 (= call!722321 call!722322)))

(declare-fun bm!722317 () Bool)

(assert (=> bm!722317 (= call!722324 call!722321)))

(declare-fun b!7792480 () Bool)

(declare-fun c!1435144 () Bool)

(assert (=> b!7792480 (= c!1435144 (nullable!9247 (regOne!42238 lt!2673761)))))

(assert (=> b!7792480 (= e!4614209 e!4614211)))

(declare-fun b!7792481 () Bool)

(assert (=> b!7792481 (= e!4614209 (Concat!29708 call!722321 lt!2673761))))

(declare-fun call!722323 () Regex!20863)

(declare-fun bm!722318 () Bool)

(assert (=> bm!722318 (= call!722323 (derivativeStep!6200 (ite c!1435143 (regOne!42239 lt!2673761) (regOne!42238 lt!2673761)) (h!80026 s!14292)))))

(declare-fun b!7792482 () Bool)

(assert (=> b!7792482 (= e!4614207 EmptyLang!20863)))

(declare-fun d!2346081 () Bool)

(declare-fun lt!2673821 () Regex!20863)

(assert (=> d!2346081 (validRegex!11277 lt!2673821)))

(assert (=> d!2346081 (= lt!2673821 e!4614207)))

(declare-fun c!1435147 () Bool)

(assert (=> d!2346081 (= c!1435147 (or ((_ is EmptyExpr!20863) lt!2673761) ((_ is EmptyLang!20863) lt!2673761)))))

(assert (=> d!2346081 (validRegex!11277 lt!2673761)))

(assert (=> d!2346081 (= (derivativeStep!6200 lt!2673761 (h!80026 s!14292)) lt!2673821)))

(declare-fun b!7792479 () Bool)

(assert (=> b!7792479 (= e!4614211 (Union!20863 (Concat!29708 call!722323 (regTwo!42238 lt!2673761)) call!722324))))

(declare-fun b!7792483 () Bool)

(assert (=> b!7792483 (= e!4614210 (Union!20863 call!722323 call!722322))))

(declare-fun bm!722319 () Bool)

(assert (=> bm!722319 (= call!722322 (derivativeStep!6200 (ite c!1435143 (regTwo!42239 lt!2673761) (ite c!1435146 (reg!21192 lt!2673761) (ite c!1435144 (regTwo!42238 lt!2673761) (regOne!42238 lt!2673761)))) (h!80026 s!14292)))))

(assert (= (and d!2346081 c!1435147) b!7792482))

(assert (= (and d!2346081 (not c!1435147)) b!7792476))

(assert (= (and b!7792476 c!1435145) b!7792477))

(assert (= (and b!7792476 (not c!1435145)) b!7792475))

(assert (= (and b!7792475 c!1435143) b!7792483))

(assert (= (and b!7792475 (not c!1435143)) b!7792474))

(assert (= (and b!7792474 c!1435146) b!7792481))

(assert (= (and b!7792474 (not c!1435146)) b!7792480))

(assert (= (and b!7792480 c!1435144) b!7792479))

(assert (= (and b!7792480 (not c!1435144)) b!7792478))

(assert (= (or b!7792479 b!7792478) bm!722317))

(assert (= (or b!7792481 bm!722317) bm!722316))

(assert (= (or b!7792483 bm!722316) bm!722319))

(assert (= (or b!7792483 b!7792479) bm!722318))

(declare-fun m!8232676 () Bool)

(assert (=> b!7792480 m!8232676))

(declare-fun m!8232678 () Bool)

(assert (=> bm!722318 m!8232678))

(declare-fun m!8232680 () Bool)

(assert (=> d!2346081 m!8232680))

(assert (=> d!2346081 m!8232606))

(declare-fun m!8232682 () Bool)

(assert (=> bm!722319 m!8232682))

(assert (=> b!7792080 d!2346081))

(declare-fun b!7792492 () Bool)

(declare-fun e!4614219 () Regex!20863)

(declare-fun e!4614218 () Regex!20863)

(assert (=> b!7792492 (= e!4614219 e!4614218)))

(declare-fun c!1435153 () Bool)

(assert (=> b!7792492 (= c!1435153 ((_ is Star!20863) r2!6217))))

(declare-fun b!7792493 () Bool)

(declare-fun c!1435150 () Bool)

(assert (=> b!7792493 (= c!1435150 ((_ is Union!20863) r2!6217))))

(declare-fun e!4614217 () Regex!20863)

(assert (=> b!7792493 (= e!4614217 e!4614219)))

(declare-fun b!7792494 () Bool)

(declare-fun e!4614216 () Regex!20863)

(assert (=> b!7792494 (= e!4614216 e!4614217)))

(declare-fun c!1435152 () Bool)

(assert (=> b!7792494 (= c!1435152 ((_ is ElementMatch!20863) r2!6217))))

(declare-fun b!7792495 () Bool)

(assert (=> b!7792495 (= e!4614217 (ite (= (h!80026 s!14292) (c!1435040 r2!6217)) EmptyExpr!20863 EmptyLang!20863))))

(declare-fun b!7792496 () Bool)

(declare-fun e!4614220 () Regex!20863)

(declare-fun call!722328 () Regex!20863)

(assert (=> b!7792496 (= e!4614220 (Union!20863 (Concat!29708 call!722328 (regTwo!42238 r2!6217)) EmptyLang!20863))))

(declare-fun bm!722320 () Bool)

(declare-fun call!722325 () Regex!20863)

(declare-fun call!722326 () Regex!20863)

(assert (=> bm!722320 (= call!722325 call!722326)))

(declare-fun bm!722321 () Bool)

(assert (=> bm!722321 (= call!722328 call!722325)))

(declare-fun b!7792498 () Bool)

(declare-fun c!1435151 () Bool)

(assert (=> b!7792498 (= c!1435151 (nullable!9247 (regOne!42238 r2!6217)))))

(assert (=> b!7792498 (= e!4614218 e!4614220)))

(declare-fun b!7792499 () Bool)

(assert (=> b!7792499 (= e!4614218 (Concat!29708 call!722325 r2!6217))))

(declare-fun bm!722322 () Bool)

(declare-fun call!722327 () Regex!20863)

(assert (=> bm!722322 (= call!722327 (derivativeStep!6200 (ite c!1435150 (regOne!42239 r2!6217) (regOne!42238 r2!6217)) (h!80026 s!14292)))))

(declare-fun b!7792500 () Bool)

(assert (=> b!7792500 (= e!4614216 EmptyLang!20863)))

(declare-fun d!2346087 () Bool)

(declare-fun lt!2673824 () Regex!20863)

(assert (=> d!2346087 (validRegex!11277 lt!2673824)))

(assert (=> d!2346087 (= lt!2673824 e!4614216)))

(declare-fun c!1435154 () Bool)

(assert (=> d!2346087 (= c!1435154 (or ((_ is EmptyExpr!20863) r2!6217) ((_ is EmptyLang!20863) r2!6217)))))

(assert (=> d!2346087 (validRegex!11277 r2!6217)))

(assert (=> d!2346087 (= (derivativeStep!6200 r2!6217 (h!80026 s!14292)) lt!2673824)))

(declare-fun b!7792497 () Bool)

(assert (=> b!7792497 (= e!4614220 (Union!20863 (Concat!29708 call!722327 (regTwo!42238 r2!6217)) call!722328))))

(declare-fun b!7792501 () Bool)

(assert (=> b!7792501 (= e!4614219 (Union!20863 call!722327 call!722326))))

(declare-fun bm!722323 () Bool)

(assert (=> bm!722323 (= call!722326 (derivativeStep!6200 (ite c!1435150 (regTwo!42239 r2!6217) (ite c!1435153 (reg!21192 r2!6217) (ite c!1435151 (regTwo!42238 r2!6217) (regOne!42238 r2!6217)))) (h!80026 s!14292)))))

(assert (= (and d!2346087 c!1435154) b!7792500))

(assert (= (and d!2346087 (not c!1435154)) b!7792494))

(assert (= (and b!7792494 c!1435152) b!7792495))

(assert (= (and b!7792494 (not c!1435152)) b!7792493))

(assert (= (and b!7792493 c!1435150) b!7792501))

(assert (= (and b!7792493 (not c!1435150)) b!7792492))

(assert (= (and b!7792492 c!1435153) b!7792499))

(assert (= (and b!7792492 (not c!1435153)) b!7792498))

(assert (= (and b!7792498 c!1435151) b!7792497))

(assert (= (and b!7792498 (not c!1435151)) b!7792496))

(assert (= (or b!7792497 b!7792496) bm!722321))

(assert (= (or b!7792499 bm!722321) bm!722320))

(assert (= (or b!7792501 bm!722320) bm!722323))

(assert (= (or b!7792501 b!7792497) bm!722322))

(declare-fun m!8232684 () Bool)

(assert (=> b!7792498 m!8232684))

(declare-fun m!8232686 () Bool)

(assert (=> bm!722322 m!8232686))

(declare-fun m!8232688 () Bool)

(assert (=> d!2346087 m!8232688))

(assert (=> d!2346087 m!8232446))

(declare-fun m!8232690 () Bool)

(assert (=> bm!722323 m!8232690))

(assert (=> b!7792074 d!2346087))

(declare-fun b!7792506 () Bool)

(declare-fun e!4614226 () Regex!20863)

(declare-fun e!4614225 () Regex!20863)

(assert (=> b!7792506 (= e!4614226 e!4614225)))

(declare-fun c!1435159 () Bool)

(assert (=> b!7792506 (= c!1435159 ((_ is Star!20863) r1!6279))))

(declare-fun b!7792507 () Bool)

(declare-fun c!1435156 () Bool)

(assert (=> b!7792507 (= c!1435156 ((_ is Union!20863) r1!6279))))

(declare-fun e!4614224 () Regex!20863)

(assert (=> b!7792507 (= e!4614224 e!4614226)))

(declare-fun b!7792508 () Bool)

(declare-fun e!4614223 () Regex!20863)

(assert (=> b!7792508 (= e!4614223 e!4614224)))

(declare-fun c!1435158 () Bool)

(assert (=> b!7792508 (= c!1435158 ((_ is ElementMatch!20863) r1!6279))))

(declare-fun b!7792509 () Bool)

(assert (=> b!7792509 (= e!4614224 (ite (= (h!80026 s!14292) (c!1435040 r1!6279)) EmptyExpr!20863 EmptyLang!20863))))

(declare-fun b!7792510 () Bool)

(declare-fun e!4614227 () Regex!20863)

(declare-fun call!722332 () Regex!20863)

(assert (=> b!7792510 (= e!4614227 (Union!20863 (Concat!29708 call!722332 (regTwo!42238 r1!6279)) EmptyLang!20863))))

(declare-fun bm!722324 () Bool)

(declare-fun call!722329 () Regex!20863)

(declare-fun call!722330 () Regex!20863)

(assert (=> bm!722324 (= call!722329 call!722330)))

(declare-fun bm!722325 () Bool)

(assert (=> bm!722325 (= call!722332 call!722329)))

(declare-fun b!7792512 () Bool)

(declare-fun c!1435157 () Bool)

(assert (=> b!7792512 (= c!1435157 (nullable!9247 (regOne!42238 r1!6279)))))

(assert (=> b!7792512 (= e!4614225 e!4614227)))

(declare-fun b!7792513 () Bool)

(assert (=> b!7792513 (= e!4614225 (Concat!29708 call!722329 r1!6279))))

(declare-fun bm!722326 () Bool)

(declare-fun call!722331 () Regex!20863)

(assert (=> bm!722326 (= call!722331 (derivativeStep!6200 (ite c!1435156 (regOne!42239 r1!6279) (regOne!42238 r1!6279)) (h!80026 s!14292)))))

(declare-fun b!7792514 () Bool)

(assert (=> b!7792514 (= e!4614223 EmptyLang!20863)))

(declare-fun d!2346089 () Bool)

(declare-fun lt!2673826 () Regex!20863)

(assert (=> d!2346089 (validRegex!11277 lt!2673826)))

(assert (=> d!2346089 (= lt!2673826 e!4614223)))

(declare-fun c!1435160 () Bool)

(assert (=> d!2346089 (= c!1435160 (or ((_ is EmptyExpr!20863) r1!6279) ((_ is EmptyLang!20863) r1!6279)))))

(assert (=> d!2346089 (validRegex!11277 r1!6279)))

(assert (=> d!2346089 (= (derivativeStep!6200 r1!6279 (h!80026 s!14292)) lt!2673826)))

(declare-fun b!7792511 () Bool)

(assert (=> b!7792511 (= e!4614227 (Union!20863 (Concat!29708 call!722331 (regTwo!42238 r1!6279)) call!722332))))

(declare-fun b!7792515 () Bool)

(assert (=> b!7792515 (= e!4614226 (Union!20863 call!722331 call!722330))))

(declare-fun bm!722327 () Bool)

(assert (=> bm!722327 (= call!722330 (derivativeStep!6200 (ite c!1435156 (regTwo!42239 r1!6279) (ite c!1435159 (reg!21192 r1!6279) (ite c!1435157 (regTwo!42238 r1!6279) (regOne!42238 r1!6279)))) (h!80026 s!14292)))))

(assert (= (and d!2346089 c!1435160) b!7792514))

(assert (= (and d!2346089 (not c!1435160)) b!7792508))

(assert (= (and b!7792508 c!1435158) b!7792509))

(assert (= (and b!7792508 (not c!1435158)) b!7792507))

(assert (= (and b!7792507 c!1435156) b!7792515))

(assert (= (and b!7792507 (not c!1435156)) b!7792506))

(assert (= (and b!7792506 c!1435159) b!7792513))

(assert (= (and b!7792506 (not c!1435159)) b!7792512))

(assert (= (and b!7792512 c!1435157) b!7792511))

(assert (= (and b!7792512 (not c!1435157)) b!7792510))

(assert (= (or b!7792511 b!7792510) bm!722325))

(assert (= (or b!7792513 bm!722325) bm!722324))

(assert (= (or b!7792515 bm!722324) bm!722327))

(assert (= (or b!7792515 b!7792511) bm!722326))

(declare-fun m!8232706 () Bool)

(assert (=> b!7792512 m!8232706))

(declare-fun m!8232708 () Bool)

(assert (=> bm!722326 m!8232708))

(declare-fun m!8232710 () Bool)

(assert (=> d!2346089 m!8232710))

(assert (=> d!2346089 m!8232424))

(declare-fun m!8232712 () Bool)

(assert (=> bm!722327 m!8232712))

(assert (=> b!7792074 d!2346089))

(declare-fun b!7792580 () Bool)

(declare-fun e!4614243 () Bool)

(declare-fun tp!2293940 () Bool)

(declare-fun tp!2293939 () Bool)

(assert (=> b!7792580 (= e!4614243 (and tp!2293940 tp!2293939))))

(declare-fun b!7792578 () Bool)

(declare-fun tp!2293936 () Bool)

(assert (=> b!7792578 (= e!4614243 tp!2293936)))

(assert (=> b!7792073 (= tp!2293867 e!4614243)))

(declare-fun b!7792573 () Bool)

(assert (=> b!7792573 (= e!4614243 tp_is_empty!52081)))

(declare-fun b!7792576 () Bool)

(declare-fun tp!2293937 () Bool)

(declare-fun tp!2293935 () Bool)

(assert (=> b!7792576 (= e!4614243 (and tp!2293937 tp!2293935))))

(assert (= (and b!7792073 ((_ is ElementMatch!20863) (reg!21192 r1!6279))) b!7792573))

(assert (= (and b!7792073 ((_ is Concat!29708) (reg!21192 r1!6279))) b!7792576))

(assert (= (and b!7792073 ((_ is Star!20863) (reg!21192 r1!6279))) b!7792578))

(assert (= (and b!7792073 ((_ is Union!20863) (reg!21192 r1!6279))) b!7792580))

(declare-fun b!7792588 () Bool)

(declare-fun e!4614246 () Bool)

(declare-fun tp!2293954 () Bool)

(declare-fun tp!2293953 () Bool)

(assert (=> b!7792588 (= e!4614246 (and tp!2293954 tp!2293953))))

(declare-fun b!7792587 () Bool)

(declare-fun tp!2293951 () Bool)

(assert (=> b!7792587 (= e!4614246 tp!2293951)))

(assert (=> b!7792077 (= tp!2293864 e!4614246)))

(declare-fun b!7792585 () Bool)

(assert (=> b!7792585 (= e!4614246 tp_is_empty!52081)))

(declare-fun b!7792586 () Bool)

(declare-fun tp!2293952 () Bool)

(declare-fun tp!2293950 () Bool)

(assert (=> b!7792586 (= e!4614246 (and tp!2293952 tp!2293950))))

(assert (= (and b!7792077 ((_ is ElementMatch!20863) (regOne!42239 r2!6217))) b!7792585))

(assert (= (and b!7792077 ((_ is Concat!29708) (regOne!42239 r2!6217))) b!7792586))

(assert (= (and b!7792077 ((_ is Star!20863) (regOne!42239 r2!6217))) b!7792587))

(assert (= (and b!7792077 ((_ is Union!20863) (regOne!42239 r2!6217))) b!7792588))

(declare-fun b!7792592 () Bool)

(declare-fun e!4614247 () Bool)

(declare-fun tp!2293959 () Bool)

(declare-fun tp!2293958 () Bool)

(assert (=> b!7792592 (= e!4614247 (and tp!2293959 tp!2293958))))

(declare-fun b!7792591 () Bool)

(declare-fun tp!2293956 () Bool)

(assert (=> b!7792591 (= e!4614247 tp!2293956)))

(assert (=> b!7792077 (= tp!2293862 e!4614247)))

(declare-fun b!7792589 () Bool)

(assert (=> b!7792589 (= e!4614247 tp_is_empty!52081)))

(declare-fun b!7792590 () Bool)

(declare-fun tp!2293957 () Bool)

(declare-fun tp!2293955 () Bool)

(assert (=> b!7792590 (= e!4614247 (and tp!2293957 tp!2293955))))

(assert (= (and b!7792077 ((_ is ElementMatch!20863) (regTwo!42239 r2!6217))) b!7792589))

(assert (= (and b!7792077 ((_ is Concat!29708) (regTwo!42239 r2!6217))) b!7792590))

(assert (= (and b!7792077 ((_ is Star!20863) (regTwo!42239 r2!6217))) b!7792591))

(assert (= (and b!7792077 ((_ is Union!20863) (regTwo!42239 r2!6217))) b!7792592))

(declare-fun b!7792596 () Bool)

(declare-fun e!4614248 () Bool)

(declare-fun tp!2293964 () Bool)

(declare-fun tp!2293963 () Bool)

(assert (=> b!7792596 (= e!4614248 (and tp!2293964 tp!2293963))))

(declare-fun b!7792595 () Bool)

(declare-fun tp!2293961 () Bool)

(assert (=> b!7792595 (= e!4614248 tp!2293961)))

(assert (=> b!7792072 (= tp!2293861 e!4614248)))

(declare-fun b!7792593 () Bool)

(assert (=> b!7792593 (= e!4614248 tp_is_empty!52081)))

(declare-fun b!7792594 () Bool)

(declare-fun tp!2293962 () Bool)

(declare-fun tp!2293960 () Bool)

(assert (=> b!7792594 (= e!4614248 (and tp!2293962 tp!2293960))))

(assert (= (and b!7792072 ((_ is ElementMatch!20863) (regOne!42239 r1!6279))) b!7792593))

(assert (= (and b!7792072 ((_ is Concat!29708) (regOne!42239 r1!6279))) b!7792594))

(assert (= (and b!7792072 ((_ is Star!20863) (regOne!42239 r1!6279))) b!7792595))

(assert (= (and b!7792072 ((_ is Union!20863) (regOne!42239 r1!6279))) b!7792596))

(declare-fun b!7792600 () Bool)

(declare-fun e!4614249 () Bool)

(declare-fun tp!2293969 () Bool)

(declare-fun tp!2293968 () Bool)

(assert (=> b!7792600 (= e!4614249 (and tp!2293969 tp!2293968))))

(declare-fun b!7792599 () Bool)

(declare-fun tp!2293966 () Bool)

(assert (=> b!7792599 (= e!4614249 tp!2293966)))

(assert (=> b!7792072 (= tp!2293863 e!4614249)))

(declare-fun b!7792597 () Bool)

(assert (=> b!7792597 (= e!4614249 tp_is_empty!52081)))

(declare-fun b!7792598 () Bool)

(declare-fun tp!2293967 () Bool)

(declare-fun tp!2293965 () Bool)

(assert (=> b!7792598 (= e!4614249 (and tp!2293967 tp!2293965))))

(assert (= (and b!7792072 ((_ is ElementMatch!20863) (regTwo!42239 r1!6279))) b!7792597))

(assert (= (and b!7792072 ((_ is Concat!29708) (regTwo!42239 r1!6279))) b!7792598))

(assert (= (and b!7792072 ((_ is Star!20863) (regTwo!42239 r1!6279))) b!7792599))

(assert (= (and b!7792072 ((_ is Union!20863) (regTwo!42239 r1!6279))) b!7792600))

(declare-fun b!7792604 () Bool)

(declare-fun e!4614250 () Bool)

(declare-fun tp!2293974 () Bool)

(declare-fun tp!2293973 () Bool)

(assert (=> b!7792604 (= e!4614250 (and tp!2293974 tp!2293973))))

(declare-fun b!7792603 () Bool)

(declare-fun tp!2293971 () Bool)

(assert (=> b!7792603 (= e!4614250 tp!2293971)))

(assert (=> b!7792082 (= tp!2293870 e!4614250)))

(declare-fun b!7792601 () Bool)

(assert (=> b!7792601 (= e!4614250 tp_is_empty!52081)))

(declare-fun b!7792602 () Bool)

(declare-fun tp!2293972 () Bool)

(declare-fun tp!2293970 () Bool)

(assert (=> b!7792602 (= e!4614250 (and tp!2293972 tp!2293970))))

(assert (= (and b!7792082 ((_ is ElementMatch!20863) (regOne!42238 r2!6217))) b!7792601))

(assert (= (and b!7792082 ((_ is Concat!29708) (regOne!42238 r2!6217))) b!7792602))

(assert (= (and b!7792082 ((_ is Star!20863) (regOne!42238 r2!6217))) b!7792603))

(assert (= (and b!7792082 ((_ is Union!20863) (regOne!42238 r2!6217))) b!7792604))

(declare-fun b!7792608 () Bool)

(declare-fun e!4614251 () Bool)

(declare-fun tp!2293979 () Bool)

(declare-fun tp!2293978 () Bool)

(assert (=> b!7792608 (= e!4614251 (and tp!2293979 tp!2293978))))

(declare-fun b!7792607 () Bool)

(declare-fun tp!2293976 () Bool)

(assert (=> b!7792607 (= e!4614251 tp!2293976)))

(assert (=> b!7792082 (= tp!2293868 e!4614251)))

(declare-fun b!7792605 () Bool)

(assert (=> b!7792605 (= e!4614251 tp_is_empty!52081)))

(declare-fun b!7792606 () Bool)

(declare-fun tp!2293977 () Bool)

(declare-fun tp!2293975 () Bool)

(assert (=> b!7792606 (= e!4614251 (and tp!2293977 tp!2293975))))

(assert (= (and b!7792082 ((_ is ElementMatch!20863) (regTwo!42238 r2!6217))) b!7792605))

(assert (= (and b!7792082 ((_ is Concat!29708) (regTwo!42238 r2!6217))) b!7792606))

(assert (= (and b!7792082 ((_ is Star!20863) (regTwo!42238 r2!6217))) b!7792607))

(assert (= (and b!7792082 ((_ is Union!20863) (regTwo!42238 r2!6217))) b!7792608))

(declare-fun b!7792613 () Bool)

(declare-fun e!4614254 () Bool)

(declare-fun tp!2293982 () Bool)

(assert (=> b!7792613 (= e!4614254 (and tp_is_empty!52081 tp!2293982))))

(assert (=> b!7792075 (= tp!2293871 e!4614254)))

(assert (= (and b!7792075 ((_ is Cons!73578) (t!388437 s!14292))) b!7792613))

(declare-fun b!7792617 () Bool)

(declare-fun e!4614255 () Bool)

(declare-fun tp!2293987 () Bool)

(declare-fun tp!2293986 () Bool)

(assert (=> b!7792617 (= e!4614255 (and tp!2293987 tp!2293986))))

(declare-fun b!7792616 () Bool)

(declare-fun tp!2293984 () Bool)

(assert (=> b!7792616 (= e!4614255 tp!2293984)))

(assert (=> b!7792069 (= tp!2293866 e!4614255)))

(declare-fun b!7792614 () Bool)

(assert (=> b!7792614 (= e!4614255 tp_is_empty!52081)))

(declare-fun b!7792615 () Bool)

(declare-fun tp!2293985 () Bool)

(declare-fun tp!2293983 () Bool)

(assert (=> b!7792615 (= e!4614255 (and tp!2293985 tp!2293983))))

(assert (= (and b!7792069 ((_ is ElementMatch!20863) (regOne!42238 r1!6279))) b!7792614))

(assert (= (and b!7792069 ((_ is Concat!29708) (regOne!42238 r1!6279))) b!7792615))

(assert (= (and b!7792069 ((_ is Star!20863) (regOne!42238 r1!6279))) b!7792616))

(assert (= (and b!7792069 ((_ is Union!20863) (regOne!42238 r1!6279))) b!7792617))

(declare-fun b!7792621 () Bool)

(declare-fun e!4614256 () Bool)

(declare-fun tp!2293992 () Bool)

(declare-fun tp!2293991 () Bool)

(assert (=> b!7792621 (= e!4614256 (and tp!2293992 tp!2293991))))

(declare-fun b!7792620 () Bool)

(declare-fun tp!2293989 () Bool)

(assert (=> b!7792620 (= e!4614256 tp!2293989)))

(assert (=> b!7792069 (= tp!2293869 e!4614256)))

(declare-fun b!7792618 () Bool)

(assert (=> b!7792618 (= e!4614256 tp_is_empty!52081)))

(declare-fun b!7792619 () Bool)

(declare-fun tp!2293990 () Bool)

(declare-fun tp!2293988 () Bool)

(assert (=> b!7792619 (= e!4614256 (and tp!2293990 tp!2293988))))

(assert (= (and b!7792069 ((_ is ElementMatch!20863) (regTwo!42238 r1!6279))) b!7792618))

(assert (= (and b!7792069 ((_ is Concat!29708) (regTwo!42238 r1!6279))) b!7792619))

(assert (= (and b!7792069 ((_ is Star!20863) (regTwo!42238 r1!6279))) b!7792620))

(assert (= (and b!7792069 ((_ is Union!20863) (regTwo!42238 r1!6279))) b!7792621))

(declare-fun b!7792625 () Bool)

(declare-fun e!4614257 () Bool)

(declare-fun tp!2293997 () Bool)

(declare-fun tp!2293996 () Bool)

(assert (=> b!7792625 (= e!4614257 (and tp!2293997 tp!2293996))))

(declare-fun b!7792624 () Bool)

(declare-fun tp!2293994 () Bool)

(assert (=> b!7792624 (= e!4614257 tp!2293994)))

(assert (=> b!7792079 (= tp!2293865 e!4614257)))

(declare-fun b!7792622 () Bool)

(assert (=> b!7792622 (= e!4614257 tp_is_empty!52081)))

(declare-fun b!7792623 () Bool)

(declare-fun tp!2293995 () Bool)

(declare-fun tp!2293993 () Bool)

(assert (=> b!7792623 (= e!4614257 (and tp!2293995 tp!2293993))))

(assert (= (and b!7792079 ((_ is ElementMatch!20863) (reg!21192 r2!6217))) b!7792622))

(assert (= (and b!7792079 ((_ is Concat!29708) (reg!21192 r2!6217))) b!7792623))

(assert (= (and b!7792079 ((_ is Star!20863) (reg!21192 r2!6217))) b!7792624))

(assert (= (and b!7792079 ((_ is Union!20863) (reg!21192 r2!6217))) b!7792625))

(check-sat (not bm!722300) (not b!7792241) (not b!7792587) (not b!7792607) (not d!2346043) (not bm!722298) (not b!7792596) (not b!7792426) (not b!7792592) (not b!7792375) (not b!7792602) (not b!7792617) (not bm!722319) (not b!7792595) (not b!7792388) (not b!7792598) (not d!2346037) (not d!2346047) (not b!7792608) (not b!7792624) (not b!7792358) (not b!7792424) (not bm!722322) (not b!7792600) (not b!7792419) (not bm!722254) (not b!7792177) (not b!7792411) (not bm!722263) (not b!7792480) (not b!7792512) (not b!7792328) (not b!7792385) (not b!7792619) (not b!7792362) (not b!7792120) (not b!7792386) (not b!7792498) (not d!2346089) (not bm!722326) (not b!7792357) (not bm!722307) (not b!7792332) (not b!7792352) (not b!7792365) (not b!7792603) (not bm!722297) (not b!7792125) (not b!7792606) (not b!7792114) (not b!7792578) (not bm!722323) (not bm!722327) (not d!2346067) (not b!7792604) (not b!7792380) (not b!7792599) (not d!2346081) (not b!7792615) (not b!7792381) (not b!7792613) (not b!7792580) (not b!7792594) (not b!7792413) (not b!7792620) (not bm!722318) (not b!7792333) (not d!2346077) (not b!7792590) (not b!7792119) tp_is_empty!52081 (not b!7792623) (not b!7792588) (not b!7792326) (not d!2346027) (not b!7792621) (not b!7792363) (not d!2346065) (not b!7792330) (not d!2346087) (not bm!722264) (not b!7792586) (not b!7792418) (not b!7792576) (not d!2346061) (not bm!722296) (not b!7792369) (not b!7792124) (not b!7792127) (not d!2346035) (not b!7792423) (not d!2346075) (not b!7792616) (not b!7792327) (not b!7792591) (not b!7792625) (not b!7792412) (not b!7792240))
(check-sat)
