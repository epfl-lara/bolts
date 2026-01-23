; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664334 () Bool)

(assert start!664334)

(declare-fun b!6892306 () Bool)

(assert (=> b!6892306 true))

(assert (=> b!6892306 true))

(assert (=> b!6892306 true))

(declare-fun lambda!390674 () Int)

(declare-fun lambda!390673 () Int)

(assert (=> b!6892306 (not (= lambda!390674 lambda!390673))))

(assert (=> b!6892306 true))

(assert (=> b!6892306 true))

(assert (=> b!6892306 true))

(declare-fun b!6892296 () Bool)

(declare-fun e!4151908 () Bool)

(declare-fun tp!1896677 () Bool)

(declare-fun tp!1896666 () Bool)

(assert (=> b!6892296 (= e!4151908 (and tp!1896677 tp!1896666))))

(declare-fun b!6892297 () Bool)

(declare-fun e!4151911 () Bool)

(declare-fun tp_is_empty!42859 () Bool)

(assert (=> b!6892297 (= e!4151911 tp_is_empty!42859)))

(declare-fun b!6892298 () Bool)

(declare-fun e!4151912 () Bool)

(declare-fun tp!1896672 () Bool)

(assert (=> b!6892298 (= e!4151912 (and tp_is_empty!42859 tp!1896672))))

(declare-fun b!6892299 () Bool)

(declare-fun e!4151909 () Bool)

(declare-fun tp!1896674 () Bool)

(declare-fun tp!1896668 () Bool)

(assert (=> b!6892299 (= e!4151909 (and tp!1896674 tp!1896668))))

(declare-fun b!6892300 () Bool)

(assert (=> b!6892300 (= e!4151908 tp_is_empty!42859)))

(declare-fun b!6892301 () Bool)

(declare-fun tp!1896673 () Bool)

(declare-fun tp!1896665 () Bool)

(assert (=> b!6892301 (= e!4151908 (and tp!1896673 tp!1896665))))

(declare-fun b!6892302 () Bool)

(declare-fun tp!1896670 () Bool)

(declare-fun tp!1896679 () Bool)

(assert (=> b!6892302 (= e!4151911 (and tp!1896670 tp!1896679))))

(declare-fun b!6892303 () Bool)

(declare-fun tp!1896675 () Bool)

(assert (=> b!6892303 (= e!4151909 tp!1896675)))

(declare-fun b!6892304 () Bool)

(declare-fun tp!1896664 () Bool)

(declare-fun tp!1896678 () Bool)

(assert (=> b!6892304 (= e!4151911 (and tp!1896664 tp!1896678))))

(declare-fun b!6892305 () Bool)

(assert (=> b!6892305 (= e!4151909 tp_is_empty!42859)))

(declare-fun e!4151910 () Bool)

(assert (=> b!6892306 (= e!4151910 true)))

(declare-fun Exists!3825 (Int) Bool)

(assert (=> b!6892306 (= (Exists!3825 lambda!390673) (Exists!3825 lambda!390674))))

(declare-datatypes ((Unit!160354 0))(
  ( (Unit!160355) )
))
(declare-fun lt!2463096 () Unit!160354)

(declare-datatypes ((C!33904 0))(
  ( (C!33905 (val!26654 Int)) )
))
(declare-datatypes ((Regex!16817 0))(
  ( (ElementMatch!16817 (c!1281351 C!33904)) (Concat!25662 (regOne!34146 Regex!16817) (regTwo!34146 Regex!16817)) (EmptyExpr!16817) (Star!16817 (reg!17146 Regex!16817)) (EmptyLang!16817) (Union!16817 (regOne!34147 Regex!16817) (regTwo!34147 Regex!16817)) )
))
(declare-fun r1!6342 () Regex!16817)

(declare-datatypes ((List!66574 0))(
  ( (Nil!66450) (Cons!66450 (h!72898 C!33904) (t!380317 List!66574)) )
))
(declare-fun s!14361 () List!66574)

(declare-fun lt!2463093 () Regex!16817)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2298 (Regex!16817 Regex!16817 List!66574) Unit!160354)

(assert (=> b!6892306 (= lt!2463096 (lemmaExistCutMatchRandMatchRSpecEquivalent!2298 r1!6342 lt!2463093 s!14361))))

(assert (=> b!6892306 (Exists!3825 lambda!390673)))

(declare-fun lt!2463094 () Unit!160354)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2772 (Regex!16817 Regex!16817 List!66574) Unit!160354)

(assert (=> b!6892306 (= lt!2463094 (lemmaFindConcatSeparationEquivalentToExists!2772 r1!6342 lt!2463093 s!14361))))

(declare-fun b!6892307 () Bool)

(declare-fun res!2810011 () Bool)

(assert (=> b!6892307 (=> res!2810011 e!4151910)))

(declare-datatypes ((tuple2!67368 0))(
  ( (tuple2!67369 (_1!36987 List!66574) (_2!36987 List!66574)) )
))
(declare-datatypes ((Option!16596 0))(
  ( (None!16595) (Some!16595 (v!52867 tuple2!67368)) )
))
(declare-fun isDefined!13299 (Option!16596) Bool)

(declare-fun findConcatSeparation!3010 (Regex!16817 Regex!16817 List!66574 List!66574 List!66574) Option!16596)

(assert (=> b!6892307 (= res!2810011 (not (isDefined!13299 (findConcatSeparation!3010 r1!6342 lt!2463093 Nil!66450 s!14361 s!14361))))))

(declare-fun b!6892308 () Bool)

(declare-fun res!2810012 () Bool)

(declare-fun e!4151907 () Bool)

(assert (=> b!6892308 (=> (not res!2810012) (not e!4151907))))

(declare-fun r3!135 () Regex!16817)

(declare-fun validRegex!8525 (Regex!16817) Bool)

(assert (=> b!6892308 (= res!2810012 (validRegex!8525 r3!135))))

(declare-fun b!6892309 () Bool)

(declare-fun tp!1896671 () Bool)

(assert (=> b!6892309 (= e!4151911 tp!1896671)))

(declare-fun b!6892310 () Bool)

(declare-fun res!2810009 () Bool)

(assert (=> b!6892310 (=> (not res!2810009) (not e!4151907))))

(declare-fun r2!6280 () Regex!16817)

(assert (=> b!6892310 (= res!2810009 (validRegex!8525 r2!6280))))

(declare-fun b!6892311 () Bool)

(assert (=> b!6892311 (= e!4151907 (not e!4151910))))

(declare-fun res!2810008 () Bool)

(assert (=> b!6892311 (=> res!2810008 e!4151910)))

(declare-fun lt!2463098 () Bool)

(assert (=> b!6892311 (= res!2810008 lt!2463098)))

(declare-fun lt!2463095 () Regex!16817)

(declare-fun matchR!8962 (Regex!16817 List!66574) Bool)

(declare-fun matchRSpec!3880 (Regex!16817 List!66574) Bool)

(assert (=> b!6892311 (= (matchR!8962 lt!2463095 s!14361) (matchRSpec!3880 lt!2463095 s!14361))))

(declare-fun lt!2463099 () Unit!160354)

(declare-fun mainMatchTheorem!3880 (Regex!16817 List!66574) Unit!160354)

(assert (=> b!6892311 (= lt!2463099 (mainMatchTheorem!3880 lt!2463095 s!14361))))

(declare-fun lt!2463097 () Regex!16817)

(assert (=> b!6892311 (= lt!2463098 (matchRSpec!3880 lt!2463097 s!14361))))

(assert (=> b!6892311 (= lt!2463098 (matchR!8962 lt!2463097 s!14361))))

(declare-fun lt!2463092 () Unit!160354)

(assert (=> b!6892311 (= lt!2463092 (mainMatchTheorem!3880 lt!2463097 s!14361))))

(assert (=> b!6892311 (= lt!2463095 (Concat!25662 r1!6342 lt!2463093))))

(assert (=> b!6892311 (= lt!2463093 (Concat!25662 r2!6280 r3!135))))

(assert (=> b!6892311 (= lt!2463097 (Concat!25662 (Concat!25662 r1!6342 r2!6280) r3!135))))

(declare-fun res!2810010 () Bool)

(assert (=> start!664334 (=> (not res!2810010) (not e!4151907))))

(assert (=> start!664334 (= res!2810010 (validRegex!8525 r1!6342))))

(assert (=> start!664334 e!4151907))

(assert (=> start!664334 e!4151911))

(assert (=> start!664334 e!4151909))

(assert (=> start!664334 e!4151908))

(assert (=> start!664334 e!4151912))

(declare-fun b!6892312 () Bool)

(declare-fun tp!1896667 () Bool)

(declare-fun tp!1896669 () Bool)

(assert (=> b!6892312 (= e!4151909 (and tp!1896667 tp!1896669))))

(declare-fun b!6892313 () Bool)

(declare-fun tp!1896676 () Bool)

(assert (=> b!6892313 (= e!4151908 tp!1896676)))

(assert (= (and start!664334 res!2810010) b!6892310))

(assert (= (and b!6892310 res!2810009) b!6892308))

(assert (= (and b!6892308 res!2810012) b!6892311))

(assert (= (and b!6892311 (not res!2810008)) b!6892307))

(assert (= (and b!6892307 (not res!2810011)) b!6892306))

(get-info :version)

(assert (= (and start!664334 ((_ is ElementMatch!16817) r1!6342)) b!6892297))

(assert (= (and start!664334 ((_ is Concat!25662) r1!6342)) b!6892302))

(assert (= (and start!664334 ((_ is Star!16817) r1!6342)) b!6892309))

(assert (= (and start!664334 ((_ is Union!16817) r1!6342)) b!6892304))

(assert (= (and start!664334 ((_ is ElementMatch!16817) r2!6280)) b!6892305))

(assert (= (and start!664334 ((_ is Concat!25662) r2!6280)) b!6892312))

(assert (= (and start!664334 ((_ is Star!16817) r2!6280)) b!6892303))

(assert (= (and start!664334 ((_ is Union!16817) r2!6280)) b!6892299))

(assert (= (and start!664334 ((_ is ElementMatch!16817) r3!135)) b!6892300))

(assert (= (and start!664334 ((_ is Concat!25662) r3!135)) b!6892301))

(assert (= (and start!664334 ((_ is Star!16817) r3!135)) b!6892313))

(assert (= (and start!664334 ((_ is Union!16817) r3!135)) b!6892296))

(assert (= (and start!664334 ((_ is Cons!66450) s!14361)) b!6892298))

(declare-fun m!7613378 () Bool)

(assert (=> start!664334 m!7613378))

(declare-fun m!7613380 () Bool)

(assert (=> b!6892308 m!7613380))

(declare-fun m!7613382 () Bool)

(assert (=> b!6892306 m!7613382))

(declare-fun m!7613384 () Bool)

(assert (=> b!6892306 m!7613384))

(declare-fun m!7613386 () Bool)

(assert (=> b!6892306 m!7613386))

(assert (=> b!6892306 m!7613382))

(declare-fun m!7613388 () Bool)

(assert (=> b!6892306 m!7613388))

(declare-fun m!7613390 () Bool)

(assert (=> b!6892307 m!7613390))

(assert (=> b!6892307 m!7613390))

(declare-fun m!7613392 () Bool)

(assert (=> b!6892307 m!7613392))

(declare-fun m!7613394 () Bool)

(assert (=> b!6892311 m!7613394))

(declare-fun m!7613396 () Bool)

(assert (=> b!6892311 m!7613396))

(declare-fun m!7613398 () Bool)

(assert (=> b!6892311 m!7613398))

(declare-fun m!7613400 () Bool)

(assert (=> b!6892311 m!7613400))

(declare-fun m!7613402 () Bool)

(assert (=> b!6892311 m!7613402))

(declare-fun m!7613404 () Bool)

(assert (=> b!6892311 m!7613404))

(declare-fun m!7613406 () Bool)

(assert (=> b!6892310 m!7613406))

(check-sat (not b!6892298) (not b!6892299) (not start!664334) (not b!6892303) tp_is_empty!42859 (not b!6892296) (not b!6892311) (not b!6892308) (not b!6892312) (not b!6892304) (not b!6892309) (not b!6892313) (not b!6892307) (not b!6892301) (not b!6892310) (not b!6892306) (not b!6892302))
(check-sat)
