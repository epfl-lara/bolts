; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665538 () Bool)

(assert start!665538)

(declare-fun b!6919246 () Bool)

(assert (=> b!6919246 true))

(assert (=> b!6919246 true))

(assert (=> b!6919246 true))

(declare-fun lambda!393210 () Int)

(declare-fun lambda!393209 () Int)

(assert (=> b!6919246 (not (= lambda!393210 lambda!393209))))

(assert (=> b!6919246 true))

(assert (=> b!6919246 true))

(assert (=> b!6919246 true))

(declare-fun bs!1846247 () Bool)

(declare-fun b!6919244 () Bool)

(assert (= bs!1846247 (and b!6919244 b!6919246)))

(declare-datatypes ((C!34092 0))(
  ( (C!34093 (val!26748 Int)) )
))
(declare-datatypes ((Regex!16911 0))(
  ( (ElementMatch!16911 (c!1284705 C!34092)) (Concat!25756 (regOne!34334 Regex!16911) (regTwo!34334 Regex!16911)) (EmptyExpr!16911) (Star!16911 (reg!17240 Regex!16911)) (EmptyLang!16911) (Union!16911 (regOne!34335 Regex!16911) (regTwo!34335 Regex!16911)) )
))
(declare-fun r3!135 () Regex!16911)

(declare-datatypes ((List!66664 0))(
  ( (Nil!66540) (Cons!66540 (h!72988 C!34092) (t!380407 List!66664)) )
))
(declare-fun s!14361 () List!66664)

(declare-fun lambda!393211 () Int)

(declare-fun r2!6280 () Regex!16911)

(declare-datatypes ((tuple2!67536 0))(
  ( (tuple2!67537 (_1!37071 List!66664) (_2!37071 List!66664)) )
))
(declare-fun lt!2469781 () tuple2!67536)

(declare-fun lt!2469803 () Regex!16911)

(declare-fun r1!6342 () Regex!16911)

(assert (=> bs!1846247 (= (and (= (_1!37071 lt!2469781) s!14361) (= r1!6342 lt!2469803) (= r2!6280 r3!135)) (= lambda!393211 lambda!393209))))

(assert (=> bs!1846247 (not (= lambda!393211 lambda!393210))))

(assert (=> b!6919244 true))

(assert (=> b!6919244 true))

(assert (=> b!6919244 true))

(declare-fun lambda!393212 () Int)

(assert (=> bs!1846247 (not (= lambda!393212 lambda!393209))))

(assert (=> bs!1846247 (= (and (= (_1!37071 lt!2469781) s!14361) (= r1!6342 lt!2469803) (= r2!6280 r3!135)) (= lambda!393212 lambda!393210))))

(assert (=> b!6919244 (not (= lambda!393212 lambda!393211))))

(assert (=> b!6919244 true))

(assert (=> b!6919244 true))

(assert (=> b!6919244 true))

(declare-fun bs!1846248 () Bool)

(declare-fun b!6919238 () Bool)

(assert (= bs!1846248 (and b!6919238 b!6919246)))

(declare-fun lt!2469789 () List!66664)

(declare-fun lambda!393213 () Int)

(assert (=> bs!1846248 (= (and (= lt!2469789 s!14361) (= r2!6280 lt!2469803)) (= lambda!393213 lambda!393209))))

(assert (=> bs!1846248 (not (= lambda!393213 lambda!393210))))

(declare-fun bs!1846249 () Bool)

(assert (= bs!1846249 (and b!6919238 b!6919244)))

(assert (=> bs!1846249 (= (and (= lt!2469789 (_1!37071 lt!2469781)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393213 lambda!393211))))

(assert (=> bs!1846249 (not (= lambda!393213 lambda!393212))))

(assert (=> b!6919238 true))

(assert (=> b!6919238 true))

(assert (=> b!6919238 true))

(declare-fun lambda!393214 () Int)

(assert (=> bs!1846249 (= (and (= lt!2469789 (_1!37071 lt!2469781)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393214 lambda!393212))))

(assert (=> bs!1846248 (= (and (= lt!2469789 s!14361) (= r2!6280 lt!2469803)) (= lambda!393214 lambda!393210))))

(assert (=> bs!1846249 (not (= lambda!393214 lambda!393211))))

(assert (=> b!6919238 (not (= lambda!393214 lambda!393213))))

(assert (=> bs!1846248 (not (= lambda!393214 lambda!393209))))

(assert (=> b!6919238 true))

(assert (=> b!6919238 true))

(assert (=> b!6919238 true))

(declare-fun b!6919236 () Bool)

(declare-fun e!4164636 () Bool)

(declare-fun tp!1907238 () Bool)

(declare-fun tp!1907248 () Bool)

(assert (=> b!6919236 (= e!4164636 (and tp!1907238 tp!1907248))))

(declare-fun b!6919237 () Bool)

(declare-fun e!4164641 () Bool)

(declare-fun tp!1907246 () Bool)

(declare-fun tp!1907250 () Bool)

(assert (=> b!6919237 (= e!4164641 (and tp!1907246 tp!1907250))))

(declare-fun e!4164639 () Bool)

(assert (=> b!6919238 (= e!4164639 true)))

(declare-fun Exists!3913 (Int) Bool)

(assert (=> b!6919238 (= (Exists!3913 lambda!393213) (Exists!3913 lambda!393214))))

(declare-datatypes ((Unit!160546 0))(
  ( (Unit!160547) )
))
(declare-fun lt!2469792 () Unit!160546)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2380 (Regex!16911 Regex!16911 List!66664) Unit!160546)

(assert (=> b!6919238 (= lt!2469792 (lemmaExistCutMatchRandMatchRSpecEquivalent!2380 r2!6280 r3!135 lt!2469789))))

(declare-datatypes ((Option!16680 0))(
  ( (None!16679) (Some!16679 (v!52951 tuple2!67536)) )
))
(declare-fun isDefined!13383 (Option!16680) Bool)

(declare-fun findConcatSeparation!3094 (Regex!16911 Regex!16911 List!66664 List!66664 List!66664) Option!16680)

(assert (=> b!6919238 (= (isDefined!13383 (findConcatSeparation!3094 r2!6280 r3!135 Nil!66540 lt!2469789 lt!2469789)) (Exists!3913 lambda!393213))))

(declare-fun lt!2469799 () Unit!160546)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2856 (Regex!16911 Regex!16911 List!66664) Unit!160546)

(assert (=> b!6919238 (= lt!2469799 (lemmaFindConcatSeparationEquivalentToExists!2856 r2!6280 r3!135 lt!2469789))))

(declare-fun lt!2469802 () Regex!16911)

(declare-fun matchR!9050 (Regex!16911 List!66664) Bool)

(declare-fun matchRSpec!3968 (Regex!16911 List!66664) Bool)

(assert (=> b!6919238 (= (matchR!9050 lt!2469802 lt!2469789) (matchRSpec!3968 lt!2469802 lt!2469789))))

(declare-fun lt!2469788 () Unit!160546)

(declare-fun mainMatchTheorem!3968 (Regex!16911 List!66664) Unit!160546)

(assert (=> b!6919238 (= lt!2469788 (mainMatchTheorem!3968 lt!2469802 lt!2469789))))

(declare-fun lt!2469790 () tuple2!67536)

(declare-fun ++!14954 (List!66664 List!66664) List!66664)

(assert (=> b!6919238 (= lt!2469789 (++!14954 (_2!37071 lt!2469790) (_2!37071 lt!2469781)))))

(declare-fun b!6919239 () Bool)

(declare-fun e!4164637 () Bool)

(declare-fun tp!1907240 () Bool)

(declare-fun tp!1907247 () Bool)

(assert (=> b!6919239 (= e!4164637 (and tp!1907240 tp!1907247))))

(declare-fun b!6919240 () Bool)

(declare-fun tp_is_empty!43047 () Bool)

(assert (=> b!6919240 (= e!4164636 tp_is_empty!43047)))

(declare-fun b!6919241 () Bool)

(declare-fun e!4164644 () Bool)

(declare-fun tp!1907242 () Bool)

(assert (=> b!6919241 (= e!4164644 (and tp_is_empty!43047 tp!1907242))))

(declare-fun b!6919242 () Bool)

(declare-fun e!4164642 () Bool)

(assert (=> b!6919242 (= e!4164642 e!4164639)))

(declare-fun res!2821210 () Bool)

(assert (=> b!6919242 (=> res!2821210 e!4164639)))

(assert (=> b!6919242 (= res!2821210 (not (= (++!14954 (++!14954 (_1!37071 lt!2469790) (_2!37071 lt!2469790)) (_2!37071 lt!2469781)) s!14361)))))

(assert (=> b!6919242 (matchRSpec!3968 r2!6280 (_2!37071 lt!2469790))))

(declare-fun lt!2469801 () Unit!160546)

(assert (=> b!6919242 (= lt!2469801 (mainMatchTheorem!3968 r2!6280 (_2!37071 lt!2469790)))))

(assert (=> b!6919242 (matchRSpec!3968 r1!6342 (_1!37071 lt!2469790))))

(declare-fun lt!2469797 () Unit!160546)

(assert (=> b!6919242 (= lt!2469797 (mainMatchTheorem!3968 r1!6342 (_1!37071 lt!2469790)))))

(declare-fun b!6919243 () Bool)

(declare-fun tp!1907244 () Bool)

(assert (=> b!6919243 (= e!4164637 tp!1907244)))

(declare-fun e!4164638 () Bool)

(assert (=> b!6919244 (= e!4164638 e!4164642)))

(declare-fun res!2821208 () Bool)

(assert (=> b!6919244 (=> res!2821208 e!4164642)))

(assert (=> b!6919244 (= res!2821208 (not (matchR!9050 r1!6342 (_1!37071 lt!2469790))))))

(declare-fun lt!2469798 () Option!16680)

(declare-fun get!23307 (Option!16680) tuple2!67536)

(assert (=> b!6919244 (= lt!2469790 (get!23307 lt!2469798))))

(assert (=> b!6919244 (= (Exists!3913 lambda!393211) (Exists!3913 lambda!393212))))

(declare-fun lt!2469785 () Unit!160546)

(assert (=> b!6919244 (= lt!2469785 (lemmaExistCutMatchRandMatchRSpecEquivalent!2380 r1!6342 r2!6280 (_1!37071 lt!2469781)))))

(assert (=> b!6919244 (= (isDefined!13383 lt!2469798) (Exists!3913 lambda!393211))))

(assert (=> b!6919244 (= lt!2469798 (findConcatSeparation!3094 r1!6342 r2!6280 Nil!66540 (_1!37071 lt!2469781) (_1!37071 lt!2469781)))))

(declare-fun lt!2469795 () Unit!160546)

(assert (=> b!6919244 (= lt!2469795 (lemmaFindConcatSeparationEquivalentToExists!2856 r1!6342 r2!6280 (_1!37071 lt!2469781)))))

(declare-fun b!6919245 () Bool)

(declare-fun tp!1907236 () Bool)

(assert (=> b!6919245 (= e!4164641 tp!1907236)))

(declare-fun res!2821212 () Bool)

(declare-fun e!4164640 () Bool)

(assert (=> start!665538 (=> (not res!2821212) (not e!4164640))))

(declare-fun validRegex!8617 (Regex!16911) Bool)

(assert (=> start!665538 (= res!2821212 (validRegex!8617 r1!6342))))

(assert (=> start!665538 e!4164640))

(assert (=> start!665538 e!4164637))

(assert (=> start!665538 e!4164641))

(assert (=> start!665538 e!4164636))

(assert (=> start!665538 e!4164644))

(declare-fun e!4164643 () Bool)

(assert (=> b!6919246 (= e!4164643 e!4164638)))

(declare-fun res!2821216 () Bool)

(assert (=> b!6919246 (=> res!2821216 e!4164638)))

(declare-fun lt!2469800 () Bool)

(assert (=> b!6919246 (= res!2821216 (not lt!2469800))))

(assert (=> b!6919246 (= lt!2469800 (matchRSpec!3968 lt!2469803 (_1!37071 lt!2469781)))))

(assert (=> b!6919246 (= lt!2469800 (matchR!9050 lt!2469803 (_1!37071 lt!2469781)))))

(declare-fun lt!2469784 () Unit!160546)

(assert (=> b!6919246 (= lt!2469784 (mainMatchTheorem!3968 lt!2469803 (_1!37071 lt!2469781)))))

(declare-fun lt!2469787 () Option!16680)

(assert (=> b!6919246 (= lt!2469781 (get!23307 lt!2469787))))

(assert (=> b!6919246 (= (Exists!3913 lambda!393209) (Exists!3913 lambda!393210))))

(declare-fun lt!2469782 () Unit!160546)

(assert (=> b!6919246 (= lt!2469782 (lemmaExistCutMatchRandMatchRSpecEquivalent!2380 lt!2469803 r3!135 s!14361))))

(assert (=> b!6919246 (= (isDefined!13383 lt!2469787) (Exists!3913 lambda!393209))))

(assert (=> b!6919246 (= lt!2469787 (findConcatSeparation!3094 lt!2469803 r3!135 Nil!66540 s!14361 s!14361))))

(declare-fun lt!2469793 () Unit!160546)

(assert (=> b!6919246 (= lt!2469793 (lemmaFindConcatSeparationEquivalentToExists!2856 lt!2469803 r3!135 s!14361))))

(declare-fun b!6919247 () Bool)

(declare-fun res!2821213 () Bool)

(assert (=> b!6919247 (=> (not res!2821213) (not e!4164640))))

(assert (=> b!6919247 (= res!2821213 (validRegex!8617 r3!135))))

(declare-fun b!6919248 () Bool)

(declare-fun tp!1907243 () Bool)

(declare-fun tp!1907241 () Bool)

(assert (=> b!6919248 (= e!4164636 (and tp!1907243 tp!1907241))))

(declare-fun b!6919249 () Bool)

(declare-fun res!2821215 () Bool)

(assert (=> b!6919249 (=> (not res!2821215) (not e!4164640))))

(assert (=> b!6919249 (= res!2821215 (validRegex!8617 r2!6280))))

(declare-fun b!6919250 () Bool)

(declare-fun res!2821214 () Bool)

(assert (=> b!6919250 (=> res!2821214 e!4164638)))

(assert (=> b!6919250 (= res!2821214 (not (matchR!9050 r3!135 (_2!37071 lt!2469781))))))

(declare-fun b!6919251 () Bool)

(assert (=> b!6919251 (= e!4164640 (not e!4164643))))

(declare-fun res!2821211 () Bool)

(assert (=> b!6919251 (=> res!2821211 e!4164643)))

(declare-fun lt!2469794 () Bool)

(assert (=> b!6919251 (= res!2821211 (not lt!2469794))))

(declare-fun lt!2469786 () Regex!16911)

(assert (=> b!6919251 (= (matchR!9050 lt!2469786 s!14361) (matchRSpec!3968 lt!2469786 s!14361))))

(declare-fun lt!2469791 () Unit!160546)

(assert (=> b!6919251 (= lt!2469791 (mainMatchTheorem!3968 lt!2469786 s!14361))))

(declare-fun lt!2469796 () Regex!16911)

(assert (=> b!6919251 (= lt!2469794 (matchRSpec!3968 lt!2469796 s!14361))))

(assert (=> b!6919251 (= lt!2469794 (matchR!9050 lt!2469796 s!14361))))

(declare-fun lt!2469783 () Unit!160546)

(assert (=> b!6919251 (= lt!2469783 (mainMatchTheorem!3968 lt!2469796 s!14361))))

(assert (=> b!6919251 (= lt!2469786 (Concat!25756 r1!6342 lt!2469802))))

(assert (=> b!6919251 (= lt!2469802 (Concat!25756 r2!6280 r3!135))))

(assert (=> b!6919251 (= lt!2469796 (Concat!25756 lt!2469803 r3!135))))

(assert (=> b!6919251 (= lt!2469803 (Concat!25756 r1!6342 r2!6280))))

(declare-fun b!6919252 () Bool)

(assert (=> b!6919252 (= e!4164641 tp_is_empty!43047)))

(declare-fun b!6919253 () Bool)

(declare-fun tp!1907239 () Bool)

(assert (=> b!6919253 (= e!4164636 tp!1907239)))

(declare-fun b!6919254 () Bool)

(assert (=> b!6919254 (= e!4164637 tp_is_empty!43047)))

(declare-fun b!6919255 () Bool)

(declare-fun res!2821209 () Bool)

(assert (=> b!6919255 (=> res!2821209 e!4164642)))

(assert (=> b!6919255 (= res!2821209 (not (matchR!9050 r2!6280 (_2!37071 lt!2469790))))))

(declare-fun b!6919256 () Bool)

(declare-fun tp!1907251 () Bool)

(declare-fun tp!1907245 () Bool)

(assert (=> b!6919256 (= e!4164637 (and tp!1907251 tp!1907245))))

(declare-fun b!6919257 () Bool)

(declare-fun tp!1907237 () Bool)

(declare-fun tp!1907249 () Bool)

(assert (=> b!6919257 (= e!4164641 (and tp!1907237 tp!1907249))))

(assert (= (and start!665538 res!2821212) b!6919249))

(assert (= (and b!6919249 res!2821215) b!6919247))

(assert (= (and b!6919247 res!2821213) b!6919251))

(assert (= (and b!6919251 (not res!2821211)) b!6919246))

(assert (= (and b!6919246 (not res!2821216)) b!6919250))

(assert (= (and b!6919250 (not res!2821214)) b!6919244))

(assert (= (and b!6919244 (not res!2821208)) b!6919255))

(assert (= (and b!6919255 (not res!2821209)) b!6919242))

(assert (= (and b!6919242 (not res!2821210)) b!6919238))

(get-info :version)

(assert (= (and start!665538 ((_ is ElementMatch!16911) r1!6342)) b!6919254))

(assert (= (and start!665538 ((_ is Concat!25756) r1!6342)) b!6919256))

(assert (= (and start!665538 ((_ is Star!16911) r1!6342)) b!6919243))

(assert (= (and start!665538 ((_ is Union!16911) r1!6342)) b!6919239))

(assert (= (and start!665538 ((_ is ElementMatch!16911) r2!6280)) b!6919252))

(assert (= (and start!665538 ((_ is Concat!25756) r2!6280)) b!6919237))

(assert (= (and start!665538 ((_ is Star!16911) r2!6280)) b!6919245))

(assert (= (and start!665538 ((_ is Union!16911) r2!6280)) b!6919257))

(assert (= (and start!665538 ((_ is ElementMatch!16911) r3!135)) b!6919240))

(assert (= (and start!665538 ((_ is Concat!25756) r3!135)) b!6919248))

(assert (= (and start!665538 ((_ is Star!16911) r3!135)) b!6919253))

(assert (= (and start!665538 ((_ is Union!16911) r3!135)) b!6919236))

(assert (= (and start!665538 ((_ is Cons!66540) s!14361)) b!6919241))

(declare-fun m!7629374 () Bool)

(assert (=> b!6919251 m!7629374))

(declare-fun m!7629376 () Bool)

(assert (=> b!6919251 m!7629376))

(declare-fun m!7629378 () Bool)

(assert (=> b!6919251 m!7629378))

(declare-fun m!7629380 () Bool)

(assert (=> b!6919251 m!7629380))

(declare-fun m!7629382 () Bool)

(assert (=> b!6919251 m!7629382))

(declare-fun m!7629384 () Bool)

(assert (=> b!6919251 m!7629384))

(declare-fun m!7629386 () Bool)

(assert (=> b!6919247 m!7629386))

(declare-fun m!7629388 () Bool)

(assert (=> b!6919238 m!7629388))

(declare-fun m!7629390 () Bool)

(assert (=> b!6919238 m!7629390))

(declare-fun m!7629392 () Bool)

(assert (=> b!6919238 m!7629392))

(declare-fun m!7629394 () Bool)

(assert (=> b!6919238 m!7629394))

(declare-fun m!7629396 () Bool)

(assert (=> b!6919238 m!7629396))

(assert (=> b!6919238 m!7629390))

(declare-fun m!7629398 () Bool)

(assert (=> b!6919238 m!7629398))

(declare-fun m!7629400 () Bool)

(assert (=> b!6919238 m!7629400))

(declare-fun m!7629402 () Bool)

(assert (=> b!6919238 m!7629402))

(declare-fun m!7629404 () Bool)

(assert (=> b!6919238 m!7629404))

(assert (=> b!6919238 m!7629394))

(declare-fun m!7629406 () Bool)

(assert (=> b!6919238 m!7629406))

(declare-fun m!7629408 () Bool)

(assert (=> start!665538 m!7629408))

(declare-fun m!7629410 () Bool)

(assert (=> b!6919255 m!7629410))

(declare-fun m!7629412 () Bool)

(assert (=> b!6919242 m!7629412))

(declare-fun m!7629414 () Bool)

(assert (=> b!6919242 m!7629414))

(declare-fun m!7629416 () Bool)

(assert (=> b!6919242 m!7629416))

(declare-fun m!7629418 () Bool)

(assert (=> b!6919242 m!7629418))

(declare-fun m!7629420 () Bool)

(assert (=> b!6919242 m!7629420))

(declare-fun m!7629422 () Bool)

(assert (=> b!6919242 m!7629422))

(assert (=> b!6919242 m!7629416))

(declare-fun m!7629424 () Bool)

(assert (=> b!6919249 m!7629424))

(declare-fun m!7629426 () Bool)

(assert (=> b!6919246 m!7629426))

(declare-fun m!7629428 () Bool)

(assert (=> b!6919246 m!7629428))

(declare-fun m!7629430 () Bool)

(assert (=> b!6919246 m!7629430))

(declare-fun m!7629432 () Bool)

(assert (=> b!6919246 m!7629432))

(declare-fun m!7629434 () Bool)

(assert (=> b!6919246 m!7629434))

(declare-fun m!7629436 () Bool)

(assert (=> b!6919246 m!7629436))

(declare-fun m!7629438 () Bool)

(assert (=> b!6919246 m!7629438))

(declare-fun m!7629440 () Bool)

(assert (=> b!6919246 m!7629440))

(assert (=> b!6919246 m!7629428))

(declare-fun m!7629442 () Bool)

(assert (=> b!6919246 m!7629442))

(declare-fun m!7629444 () Bool)

(assert (=> b!6919246 m!7629444))

(declare-fun m!7629446 () Bool)

(assert (=> b!6919244 m!7629446))

(declare-fun m!7629448 () Bool)

(assert (=> b!6919244 m!7629448))

(declare-fun m!7629450 () Bool)

(assert (=> b!6919244 m!7629450))

(declare-fun m!7629452 () Bool)

(assert (=> b!6919244 m!7629452))

(declare-fun m!7629454 () Bool)

(assert (=> b!6919244 m!7629454))

(declare-fun m!7629456 () Bool)

(assert (=> b!6919244 m!7629456))

(declare-fun m!7629458 () Bool)

(assert (=> b!6919244 m!7629458))

(assert (=> b!6919244 m!7629452))

(declare-fun m!7629460 () Bool)

(assert (=> b!6919244 m!7629460))

(declare-fun m!7629462 () Bool)

(assert (=> b!6919250 m!7629462))

(check-sat (not b!6919253) (not b!6919255) (not b!6919236) (not b!6919245) (not b!6919257) (not b!6919248) (not b!6919256) (not b!6919239) (not b!6919238) (not b!6919243) (not b!6919244) (not b!6919246) (not b!6919241) (not b!6919242) tp_is_empty!43047 (not start!665538) (not b!6919249) (not b!6919247) (not b!6919237) (not b!6919250) (not b!6919251))
(check-sat)
