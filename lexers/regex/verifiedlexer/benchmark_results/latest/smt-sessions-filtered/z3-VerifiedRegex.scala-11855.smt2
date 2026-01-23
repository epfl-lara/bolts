; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666346 () Bool)

(assert start!666346)

(declare-fun b!6936222 () Bool)

(assert (=> b!6936222 true))

(assert (=> b!6936222 true))

(assert (=> b!6936222 true))

(declare-fun lambda!394948 () Int)

(declare-fun lambda!394947 () Int)

(assert (=> b!6936222 (not (= lambda!394948 lambda!394947))))

(assert (=> b!6936222 true))

(assert (=> b!6936222 true))

(assert (=> b!6936222 true))

(declare-fun bs!1852489 () Bool)

(declare-fun b!6936235 () Bool)

(assert (= bs!1852489 (and b!6936235 b!6936222)))

(declare-datatypes ((C!34184 0))(
  ( (C!34185 (val!26794 Int)) )
))
(declare-datatypes ((Regex!16957 0))(
  ( (ElementMatch!16957 (c!1287147 C!34184)) (Concat!25802 (regOne!34426 Regex!16957) (regTwo!34426 Regex!16957)) (EmptyExpr!16957) (Star!16957 (reg!17286 Regex!16957)) (EmptyLang!16957) (Union!16957 (regOne!34427 Regex!16957) (regTwo!34427 Regex!16957)) )
))
(declare-fun r1!6342 () Regex!16957)

(declare-fun lt!2474488 () Regex!16957)

(declare-datatypes ((List!66710 0))(
  ( (Nil!66586) (Cons!66586 (h!73034 C!34184) (t!380453 List!66710)) )
))
(declare-fun s!14361 () List!66710)

(declare-datatypes ((tuple2!67628 0))(
  ( (tuple2!67629 (_1!37117 List!66710) (_2!37117 List!66710)) )
))
(declare-fun lt!2474475 () tuple2!67628)

(declare-fun r3!135 () Regex!16957)

(declare-fun lambda!394949 () Int)

(declare-fun r2!6280 () Regex!16957)

(assert (=> bs!1852489 (= (and (= (_2!37117 lt!2474475) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474488)) (= lambda!394949 lambda!394947))))

(assert (=> bs!1852489 (not (= lambda!394949 lambda!394948))))

(assert (=> b!6936235 true))

(assert (=> b!6936235 true))

(assert (=> b!6936235 true))

(declare-fun lambda!394950 () Int)

(assert (=> bs!1852489 (not (= lambda!394950 lambda!394947))))

(assert (=> bs!1852489 (= (and (= (_2!37117 lt!2474475) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474488)) (= lambda!394950 lambda!394948))))

(assert (=> b!6936235 (not (= lambda!394950 lambda!394949))))

(assert (=> b!6936235 true))

(assert (=> b!6936235 true))

(assert (=> b!6936235 true))

(declare-fun bs!1852490 () Bool)

(declare-fun b!6936239 () Bool)

(assert (= bs!1852490 (and b!6936239 b!6936222)))

(declare-fun lambda!394951 () Int)

(declare-fun lt!2474471 () List!66710)

(assert (=> bs!1852490 (= (and (= lt!2474471 s!14361) (= r2!6280 lt!2474488)) (= lambda!394951 lambda!394947))))

(assert (=> bs!1852490 (not (= lambda!394951 lambda!394948))))

(declare-fun bs!1852491 () Bool)

(assert (= bs!1852491 (and b!6936239 b!6936235)))

(assert (=> bs!1852491 (= (and (= lt!2474471 (_2!37117 lt!2474475)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394951 lambda!394949))))

(assert (=> bs!1852491 (not (= lambda!394951 lambda!394950))))

(assert (=> b!6936239 true))

(assert (=> b!6936239 true))

(assert (=> b!6936239 true))

(declare-fun lambda!394952 () Int)

(assert (=> bs!1852490 (not (= lambda!394952 lambda!394947))))

(assert (=> bs!1852490 (= (and (= lt!2474471 s!14361) (= r2!6280 lt!2474488)) (= lambda!394952 lambda!394948))))

(assert (=> bs!1852491 (not (= lambda!394952 lambda!394949))))

(assert (=> bs!1852491 (= (and (= lt!2474471 (_2!37117 lt!2474475)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394952 lambda!394950))))

(assert (=> b!6936239 (not (= lambda!394952 lambda!394951))))

(assert (=> b!6936239 true))

(assert (=> b!6936239 true))

(assert (=> b!6936239 true))

(declare-fun b!6936219 () Bool)

(declare-fun e!4173104 () Bool)

(declare-fun e!4173106 () Bool)

(assert (=> b!6936219 (= e!4173104 (not e!4173106))))

(declare-fun res!2829114 () Bool)

(assert (=> b!6936219 (=> res!2829114 e!4173106)))

(declare-fun lt!2474464 () Bool)

(assert (=> b!6936219 (= res!2829114 lt!2474464)))

(declare-fun lt!2474477 () Regex!16957)

(declare-fun matchR!9096 (Regex!16957 List!66710) Bool)

(declare-fun matchRSpec!4014 (Regex!16957 List!66710) Bool)

(assert (=> b!6936219 (= (matchR!9096 lt!2474477 s!14361) (matchRSpec!4014 lt!2474477 s!14361))))

(declare-datatypes ((Unit!160638 0))(
  ( (Unit!160639) )
))
(declare-fun lt!2474484 () Unit!160638)

(declare-fun mainMatchTheorem!4014 (Regex!16957 List!66710) Unit!160638)

(assert (=> b!6936219 (= lt!2474484 (mainMatchTheorem!4014 lt!2474477 s!14361))))

(declare-fun lt!2474485 () Regex!16957)

(assert (=> b!6936219 (= lt!2474464 (matchRSpec!4014 lt!2474485 s!14361))))

(assert (=> b!6936219 (= lt!2474464 (matchR!9096 lt!2474485 s!14361))))

(declare-fun lt!2474483 () Unit!160638)

(assert (=> b!6936219 (= lt!2474483 (mainMatchTheorem!4014 lt!2474485 s!14361))))

(assert (=> b!6936219 (= lt!2474477 (Concat!25802 r1!6342 lt!2474488))))

(assert (=> b!6936219 (= lt!2474488 (Concat!25802 r2!6280 r3!135))))

(declare-fun lt!2474479 () Regex!16957)

(assert (=> b!6936219 (= lt!2474485 (Concat!25802 lt!2474479 r3!135))))

(assert (=> b!6936219 (= lt!2474479 (Concat!25802 r1!6342 r2!6280))))

(declare-fun b!6936220 () Bool)

(declare-fun e!4173107 () Bool)

(declare-fun tp!1912087 () Bool)

(declare-fun tp!1912092 () Bool)

(assert (=> b!6936220 (= e!4173107 (and tp!1912087 tp!1912092))))

(declare-fun b!6936221 () Bool)

(declare-fun e!4173108 () Bool)

(declare-fun tp!1912094 () Bool)

(declare-fun tp!1912085 () Bool)

(assert (=> b!6936221 (= e!4173108 (and tp!1912094 tp!1912085))))

(declare-fun e!4173103 () Bool)

(declare-fun e!4173101 () Bool)

(assert (=> b!6936222 (= e!4173103 e!4173101)))

(declare-fun res!2829110 () Bool)

(assert (=> b!6936222 (=> res!2829110 e!4173101)))

(declare-fun lt!2474487 () Bool)

(assert (=> b!6936222 (= res!2829110 (not lt!2474487))))

(assert (=> b!6936222 (= lt!2474487 (matchRSpec!4014 r1!6342 (_1!37117 lt!2474475)))))

(assert (=> b!6936222 (= lt!2474487 (matchR!9096 r1!6342 (_1!37117 lt!2474475)))))

(declare-fun lt!2474469 () Unit!160638)

(assert (=> b!6936222 (= lt!2474469 (mainMatchTheorem!4014 r1!6342 (_1!37117 lt!2474475)))))

(declare-datatypes ((Option!16726 0))(
  ( (None!16725) (Some!16725 (v!52997 tuple2!67628)) )
))
(declare-fun lt!2474468 () Option!16726)

(declare-fun get!23372 (Option!16726) tuple2!67628)

(assert (=> b!6936222 (= lt!2474475 (get!23372 lt!2474468))))

(declare-fun Exists!3957 (Int) Bool)

(assert (=> b!6936222 (= (Exists!3957 lambda!394947) (Exists!3957 lambda!394948))))

(declare-fun lt!2474467 () Unit!160638)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2418 (Regex!16957 Regex!16957 List!66710) Unit!160638)

(assert (=> b!6936222 (= lt!2474467 (lemmaExistCutMatchRandMatchRSpecEquivalent!2418 r1!6342 lt!2474488 s!14361))))

(assert (=> b!6936222 (Exists!3957 lambda!394947)))

(declare-fun lt!2474474 () Unit!160638)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2898 (Regex!16957 Regex!16957 List!66710) Unit!160638)

(assert (=> b!6936222 (= lt!2474474 (lemmaFindConcatSeparationEquivalentToExists!2898 r1!6342 lt!2474488 s!14361))))

(declare-fun b!6936223 () Bool)

(declare-fun res!2829113 () Bool)

(assert (=> b!6936223 (=> (not res!2829113) (not e!4173104))))

(declare-fun validRegex!8663 (Regex!16957) Bool)

(assert (=> b!6936223 (= res!2829113 (validRegex!8663 r2!6280))))

(declare-fun b!6936224 () Bool)

(declare-fun tp_is_empty!43139 () Bool)

(assert (=> b!6936224 (= e!4173108 tp_is_empty!43139)))

(declare-fun b!6936225 () Bool)

(declare-fun e!4173099 () Bool)

(assert (=> b!6936225 (= e!4173099 tp_is_empty!43139)))

(declare-fun b!6936226 () Bool)

(declare-fun e!4173102 () Bool)

(declare-fun e!4173105 () Bool)

(assert (=> b!6936226 (= e!4173102 e!4173105)))

(declare-fun res!2829116 () Bool)

(assert (=> b!6936226 (=> res!2829116 e!4173105)))

(declare-fun lt!2474480 () List!66710)

(assert (=> b!6936226 (= res!2829116 (not (= lt!2474480 s!14361)))))

(declare-fun lt!2474473 () tuple2!67628)

(declare-fun ++!14996 (List!66710 List!66710) List!66710)

(assert (=> b!6936226 (= lt!2474480 (++!14996 (_1!37117 lt!2474475) (++!14996 (_1!37117 lt!2474473) (_2!37117 lt!2474473))))))

(assert (=> b!6936226 (matchRSpec!4014 r3!135 (_2!37117 lt!2474473))))

(declare-fun lt!2474489 () Unit!160638)

(assert (=> b!6936226 (= lt!2474489 (mainMatchTheorem!4014 r3!135 (_2!37117 lt!2474473)))))

(assert (=> b!6936226 (matchRSpec!4014 r2!6280 (_1!37117 lt!2474473))))

(declare-fun lt!2474470 () Unit!160638)

(assert (=> b!6936226 (= lt!2474470 (mainMatchTheorem!4014 r2!6280 (_1!37117 lt!2474473)))))

(declare-fun b!6936227 () Bool)

(declare-fun tp!1912098 () Bool)

(assert (=> b!6936227 (= e!4173099 tp!1912098)))

(declare-fun b!6936228 () Bool)

(declare-fun tp!1912086 () Bool)

(assert (=> b!6936228 (= e!4173107 tp!1912086)))

(declare-fun b!6936229 () Bool)

(declare-fun tp!1912096 () Bool)

(declare-fun tp!1912093 () Bool)

(assert (=> b!6936229 (= e!4173099 (and tp!1912096 tp!1912093))))

(declare-fun res!2829108 () Bool)

(assert (=> start!666346 (=> (not res!2829108) (not e!4173104))))

(assert (=> start!666346 (= res!2829108 (validRegex!8663 r1!6342))))

(assert (=> start!666346 e!4173104))

(assert (=> start!666346 e!4173108))

(assert (=> start!666346 e!4173107))

(assert (=> start!666346 e!4173099))

(declare-fun e!4173100 () Bool)

(assert (=> start!666346 e!4173100))

(declare-fun b!6936230 () Bool)

(declare-fun res!2829115 () Bool)

(assert (=> b!6936230 (=> res!2829115 e!4173101)))

(assert (=> b!6936230 (= res!2829115 (not (matchR!9096 lt!2474488 (_2!37117 lt!2474475))))))

(declare-fun b!6936231 () Bool)

(declare-fun tp!1912088 () Bool)

(declare-fun tp!1912090 () Bool)

(assert (=> b!6936231 (= e!4173108 (and tp!1912088 tp!1912090))))

(declare-fun b!6936232 () Bool)

(declare-fun tp!1912095 () Bool)

(assert (=> b!6936232 (= e!4173108 tp!1912095)))

(declare-fun b!6936233 () Bool)

(assert (=> b!6936233 (= e!4173107 tp_is_empty!43139)))

(declare-fun b!6936234 () Bool)

(declare-fun tp!1912099 () Bool)

(declare-fun tp!1912089 () Bool)

(assert (=> b!6936234 (= e!4173099 (and tp!1912099 tp!1912089))))

(assert (=> b!6936235 (= e!4173101 e!4173102)))

(declare-fun res!2829111 () Bool)

(assert (=> b!6936235 (=> res!2829111 e!4173102)))

(assert (=> b!6936235 (= res!2829111 (not (matchR!9096 r2!6280 (_1!37117 lt!2474473))))))

(declare-fun lt!2474466 () Option!16726)

(assert (=> b!6936235 (= lt!2474473 (get!23372 lt!2474466))))

(assert (=> b!6936235 (= (Exists!3957 lambda!394949) (Exists!3957 lambda!394950))))

(declare-fun lt!2474476 () Unit!160638)

(assert (=> b!6936235 (= lt!2474476 (lemmaExistCutMatchRandMatchRSpecEquivalent!2418 r2!6280 r3!135 (_2!37117 lt!2474475)))))

(declare-fun isDefined!13427 (Option!16726) Bool)

(assert (=> b!6936235 (= (isDefined!13427 lt!2474466) (Exists!3957 lambda!394949))))

(declare-fun findConcatSeparation!3140 (Regex!16957 Regex!16957 List!66710 List!66710 List!66710) Option!16726)

(assert (=> b!6936235 (= lt!2474466 (findConcatSeparation!3140 r2!6280 r3!135 Nil!66586 (_2!37117 lt!2474475) (_2!37117 lt!2474475)))))

(declare-fun lt!2474465 () Unit!160638)

(assert (=> b!6936235 (= lt!2474465 (lemmaFindConcatSeparationEquivalentToExists!2898 r2!6280 r3!135 (_2!37117 lt!2474475)))))

(assert (=> b!6936235 (matchRSpec!4014 lt!2474488 (_2!37117 lt!2474475))))

(declare-fun lt!2474478 () Unit!160638)

(assert (=> b!6936235 (= lt!2474478 (mainMatchTheorem!4014 lt!2474488 (_2!37117 lt!2474475)))))

(declare-fun b!6936236 () Bool)

(declare-fun tp!1912084 () Bool)

(assert (=> b!6936236 (= e!4173100 (and tp_is_empty!43139 tp!1912084))))

(declare-fun b!6936237 () Bool)

(assert (=> b!6936237 (= e!4173106 e!4173103)))

(declare-fun res!2829112 () Bool)

(assert (=> b!6936237 (=> res!2829112 e!4173103)))

(assert (=> b!6936237 (= res!2829112 (not (isDefined!13427 lt!2474468)))))

(assert (=> b!6936237 (= lt!2474468 (findConcatSeparation!3140 r1!6342 lt!2474488 Nil!66586 s!14361 s!14361))))

(declare-fun b!6936238 () Bool)

(declare-fun res!2829107 () Bool)

(assert (=> b!6936238 (=> (not res!2829107) (not e!4173104))))

(assert (=> b!6936238 (= res!2829107 (validRegex!8663 r3!135))))

(assert (=> b!6936239 (= e!4173105 true)))

(declare-fun lt!2474490 () Bool)

(assert (=> b!6936239 lt!2474490))

(declare-fun lt!2474472 () Unit!160638)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!100 (Regex!16957 Regex!16957 List!66710 List!66710 List!66710 List!66710 List!66710) Unit!160638)

(assert (=> b!6936239 (= lt!2474472 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!100 r1!6342 r2!6280 (_1!37117 lt!2474475) (_1!37117 lt!2474473) lt!2474471 Nil!66586 lt!2474471))))

(assert (=> b!6936239 (= (Exists!3957 lambda!394951) (Exists!3957 lambda!394952))))

(declare-fun lt!2474486 () Unit!160638)

(assert (=> b!6936239 (= lt!2474486 (lemmaExistCutMatchRandMatchRSpecEquivalent!2418 r1!6342 r2!6280 lt!2474471))))

(assert (=> b!6936239 (= lt!2474490 (Exists!3957 lambda!394951))))

(assert (=> b!6936239 (= lt!2474490 (isDefined!13427 (findConcatSeparation!3140 r1!6342 r2!6280 Nil!66586 lt!2474471 lt!2474471)))))

(declare-fun lt!2474482 () Unit!160638)

(assert (=> b!6936239 (= lt!2474482 (lemmaFindConcatSeparationEquivalentToExists!2898 r1!6342 r2!6280 lt!2474471))))

(assert (=> b!6936239 (= (matchR!9096 lt!2474479 lt!2474471) (matchRSpec!4014 lt!2474479 lt!2474471))))

(declare-fun lt!2474481 () Unit!160638)

(assert (=> b!6936239 (= lt!2474481 (mainMatchTheorem!4014 lt!2474479 lt!2474471))))

(assert (=> b!6936239 (= (++!14996 lt!2474471 (_2!37117 lt!2474473)) lt!2474480)))

(assert (=> b!6936239 (= lt!2474471 (++!14996 (_1!37117 lt!2474475) (_1!37117 lt!2474473)))))

(declare-fun lt!2474491 () Unit!160638)

(declare-fun lemmaConcatAssociativity!3038 (List!66710 List!66710 List!66710) Unit!160638)

(assert (=> b!6936239 (= lt!2474491 (lemmaConcatAssociativity!3038 (_1!37117 lt!2474475) (_1!37117 lt!2474473) (_2!37117 lt!2474473)))))

(declare-fun b!6936240 () Bool)

(declare-fun tp!1912091 () Bool)

(declare-fun tp!1912097 () Bool)

(assert (=> b!6936240 (= e!4173107 (and tp!1912091 tp!1912097))))

(declare-fun b!6936241 () Bool)

(declare-fun res!2829109 () Bool)

(assert (=> b!6936241 (=> res!2829109 e!4173102)))

(assert (=> b!6936241 (= res!2829109 (not (matchR!9096 r3!135 (_2!37117 lt!2474473))))))

(assert (= (and start!666346 res!2829108) b!6936223))

(assert (= (and b!6936223 res!2829113) b!6936238))

(assert (= (and b!6936238 res!2829107) b!6936219))

(assert (= (and b!6936219 (not res!2829114)) b!6936237))

(assert (= (and b!6936237 (not res!2829112)) b!6936222))

(assert (= (and b!6936222 (not res!2829110)) b!6936230))

(assert (= (and b!6936230 (not res!2829115)) b!6936235))

(assert (= (and b!6936235 (not res!2829111)) b!6936241))

(assert (= (and b!6936241 (not res!2829109)) b!6936226))

(assert (= (and b!6936226 (not res!2829116)) b!6936239))

(get-info :version)

(assert (= (and start!666346 ((_ is ElementMatch!16957) r1!6342)) b!6936224))

(assert (= (and start!666346 ((_ is Concat!25802) r1!6342)) b!6936221))

(assert (= (and start!666346 ((_ is Star!16957) r1!6342)) b!6936232))

(assert (= (and start!666346 ((_ is Union!16957) r1!6342)) b!6936231))

(assert (= (and start!666346 ((_ is ElementMatch!16957) r2!6280)) b!6936233))

(assert (= (and start!666346 ((_ is Concat!25802) r2!6280)) b!6936220))

(assert (= (and start!666346 ((_ is Star!16957) r2!6280)) b!6936228))

(assert (= (and start!666346 ((_ is Union!16957) r2!6280)) b!6936240))

(assert (= (and start!666346 ((_ is ElementMatch!16957) r3!135)) b!6936225))

(assert (= (and start!666346 ((_ is Concat!25802) r3!135)) b!6936234))

(assert (= (and start!666346 ((_ is Star!16957) r3!135)) b!6936227))

(assert (= (and start!666346 ((_ is Union!16957) r3!135)) b!6936229))

(assert (= (and start!666346 ((_ is Cons!66586) s!14361)) b!6936236))

(declare-fun m!7642068 () Bool)

(assert (=> b!6936230 m!7642068))

(declare-fun m!7642070 () Bool)

(assert (=> b!6936219 m!7642070))

(declare-fun m!7642072 () Bool)

(assert (=> b!6936219 m!7642072))

(declare-fun m!7642074 () Bool)

(assert (=> b!6936219 m!7642074))

(declare-fun m!7642076 () Bool)

(assert (=> b!6936219 m!7642076))

(declare-fun m!7642078 () Bool)

(assert (=> b!6936219 m!7642078))

(declare-fun m!7642080 () Bool)

(assert (=> b!6936219 m!7642080))

(declare-fun m!7642082 () Bool)

(assert (=> b!6936237 m!7642082))

(declare-fun m!7642084 () Bool)

(assert (=> b!6936237 m!7642084))

(declare-fun m!7642086 () Bool)

(assert (=> b!6936238 m!7642086))

(declare-fun m!7642088 () Bool)

(assert (=> start!666346 m!7642088))

(declare-fun m!7642090 () Bool)

(assert (=> b!6936223 m!7642090))

(declare-fun m!7642092 () Bool)

(assert (=> b!6936226 m!7642092))

(declare-fun m!7642094 () Bool)

(assert (=> b!6936226 m!7642094))

(declare-fun m!7642096 () Bool)

(assert (=> b!6936226 m!7642096))

(declare-fun m!7642098 () Bool)

(assert (=> b!6936226 m!7642098))

(declare-fun m!7642100 () Bool)

(assert (=> b!6936226 m!7642100))

(assert (=> b!6936226 m!7642094))

(declare-fun m!7642102 () Bool)

(assert (=> b!6936226 m!7642102))

(declare-fun m!7642104 () Bool)

(assert (=> b!6936241 m!7642104))

(declare-fun m!7642106 () Bool)

(assert (=> b!6936235 m!7642106))

(declare-fun m!7642108 () Bool)

(assert (=> b!6936235 m!7642108))

(declare-fun m!7642110 () Bool)

(assert (=> b!6936235 m!7642110))

(declare-fun m!7642112 () Bool)

(assert (=> b!6936235 m!7642112))

(declare-fun m!7642114 () Bool)

(assert (=> b!6936235 m!7642114))

(declare-fun m!7642116 () Bool)

(assert (=> b!6936235 m!7642116))

(declare-fun m!7642118 () Bool)

(assert (=> b!6936235 m!7642118))

(declare-fun m!7642120 () Bool)

(assert (=> b!6936235 m!7642120))

(assert (=> b!6936235 m!7642118))

(declare-fun m!7642122 () Bool)

(assert (=> b!6936235 m!7642122))

(declare-fun m!7642124 () Bool)

(assert (=> b!6936235 m!7642124))

(declare-fun m!7642126 () Bool)

(assert (=> b!6936239 m!7642126))

(declare-fun m!7642128 () Bool)

(assert (=> b!6936239 m!7642128))

(declare-fun m!7642130 () Bool)

(assert (=> b!6936239 m!7642130))

(declare-fun m!7642132 () Bool)

(assert (=> b!6936239 m!7642132))

(declare-fun m!7642134 () Bool)

(assert (=> b!6936239 m!7642134))

(declare-fun m!7642136 () Bool)

(assert (=> b!6936239 m!7642136))

(declare-fun m!7642138 () Bool)

(assert (=> b!6936239 m!7642138))

(declare-fun m!7642140 () Bool)

(assert (=> b!6936239 m!7642140))

(declare-fun m!7642142 () Bool)

(assert (=> b!6936239 m!7642142))

(declare-fun m!7642144 () Bool)

(assert (=> b!6936239 m!7642144))

(declare-fun m!7642146 () Bool)

(assert (=> b!6936239 m!7642146))

(assert (=> b!6936239 m!7642130))

(assert (=> b!6936239 m!7642144))

(declare-fun m!7642148 () Bool)

(assert (=> b!6936239 m!7642148))

(declare-fun m!7642150 () Bool)

(assert (=> b!6936239 m!7642150))

(declare-fun m!7642152 () Bool)

(assert (=> b!6936222 m!7642152))

(declare-fun m!7642154 () Bool)

(assert (=> b!6936222 m!7642154))

(declare-fun m!7642156 () Bool)

(assert (=> b!6936222 m!7642156))

(declare-fun m!7642158 () Bool)

(assert (=> b!6936222 m!7642158))

(declare-fun m!7642160 () Bool)

(assert (=> b!6936222 m!7642160))

(declare-fun m!7642162 () Bool)

(assert (=> b!6936222 m!7642162))

(declare-fun m!7642164 () Bool)

(assert (=> b!6936222 m!7642164))

(declare-fun m!7642166 () Bool)

(assert (=> b!6936222 m!7642166))

(assert (=> b!6936222 m!7642158))

(check-sat (not b!6936232) (not b!6936226) (not b!6936230) (not b!6936231) (not b!6936223) tp_is_empty!43139 (not b!6936240) (not b!6936228) (not b!6936227) (not b!6936221) (not b!6936239) (not start!666346) (not b!6936237) (not b!6936220) (not b!6936234) (not b!6936222) (not b!6936238) (not b!6936241) (not b!6936219) (not b!6936235) (not b!6936229) (not b!6936236))
(check-sat)
