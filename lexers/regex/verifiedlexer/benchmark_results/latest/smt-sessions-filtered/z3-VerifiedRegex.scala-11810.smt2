; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664738 () Bool)

(assert start!664738)

(declare-fun b!6901981 () Bool)

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(declare-fun lambda!391919 () Int)

(declare-fun lambda!391918 () Int)

(assert (=> b!6901981 (not (= lambda!391919 lambda!391918))))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(declare-datatypes ((C!34004 0))(
  ( (C!34005 (val!26704 Int)) )
))
(declare-datatypes ((Regex!16867 0))(
  ( (ElementMatch!16867 (c!1282339 C!34004)) (Concat!25712 (regOne!34246 Regex!16867) (regTwo!34246 Regex!16867)) (EmptyExpr!16867) (Star!16867 (reg!17196 Regex!16867)) (EmptyLang!16867) (Union!16867 (regOne!34247 Regex!16867) (regTwo!34247 Regex!16867)) )
))
(declare-fun r1!6342 () Regex!16867)

(declare-fun r3!135 () Regex!16867)

(declare-fun lt!2466750 () Regex!16867)

(declare-datatypes ((List!66624 0))(
  ( (Nil!66500) (Cons!66500 (h!72948 C!34004) (t!380367 List!66624)) )
))
(declare-fun s!14361 () List!66624)

(declare-datatypes ((tuple2!67468 0))(
  ( (tuple2!67469 (_1!37037 List!66624) (_2!37037 List!66624)) )
))
(declare-fun lt!2466743 () tuple2!67468)

(declare-fun lambda!391920 () Int)

(declare-fun r2!6280 () Regex!16867)

(assert (=> b!6901981 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391920 lambda!391918))))

(assert (=> b!6901981 (not (= lambda!391920 lambda!391919))))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(declare-fun lambda!391921 () Int)

(assert (=> b!6901981 (not (= lambda!391921 lambda!391918))))

(assert (=> b!6901981 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391921 lambda!391919))))

(assert (=> b!6901981 (not (= lambda!391921 lambda!391920))))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(declare-fun lambda!391922 () Int)

(declare-fun lt!2466728 () List!66624)

(assert (=> b!6901981 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391922 lambda!391918))))

(assert (=> b!6901981 (not (= lambda!391922 lambda!391919))))

(assert (=> b!6901981 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391922 lambda!391920))))

(assert (=> b!6901981 (not (= lambda!391922 lambda!391921))))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(declare-fun lambda!391923 () Int)

(assert (=> b!6901981 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391923 lambda!391921))))

(assert (=> b!6901981 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391923 lambda!391919))))

(assert (=> b!6901981 (not (= lambda!391923 lambda!391922))))

(assert (=> b!6901981 (not (= lambda!391923 lambda!391920))))

(assert (=> b!6901981 (not (= lambda!391923 lambda!391918))))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(declare-fun lambda!391924 () Int)

(assert (=> b!6901981 (not (= lambda!391924 lambda!391921))))

(assert (=> b!6901981 (not (= lambda!391924 lambda!391919))))

(declare-fun lt!2466741 () Regex!16867)

(assert (=> b!6901981 (= (and (= s!14361 lt!2466728) (= lt!2466741 r1!6342) (= r3!135 r2!6280)) (= lambda!391924 lambda!391922))))

(assert (=> b!6901981 (not (= lambda!391924 lambda!391923))))

(assert (=> b!6901981 (= (and (= s!14361 (_2!37037 lt!2466743)) (= lt!2466741 r2!6280)) (= lambda!391924 lambda!391920))))

(assert (=> b!6901981 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391924 lambda!391918))))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(assert (=> b!6901981 true))

(declare-fun bs!1842435 () Bool)

(declare-fun b!6901988 () Bool)

(assert (= bs!1842435 (and b!6901988 b!6901981)))

(declare-fun lambda!391925 () Int)

(assert (=> bs!1842435 (not (= lambda!391925 lambda!391921))))

(assert (=> bs!1842435 (not (= lambda!391925 lambda!391919))))

(assert (=> bs!1842435 (= (and (= s!14361 lt!2466728) (= lt!2466750 r2!6280)) (= lambda!391925 lambda!391922))))

(assert (=> bs!1842435 (= (and (= r1!6342 lt!2466741) (= lt!2466750 r3!135)) (= lambda!391925 lambda!391924))))

(assert (=> bs!1842435 (not (= lambda!391925 lambda!391923))))

(assert (=> bs!1842435 (= (and (= s!14361 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= lt!2466750 r3!135)) (= lambda!391925 lambda!391920))))

(assert (=> bs!1842435 (= lambda!391925 lambda!391918)))

(assert (=> b!6901988 true))

(assert (=> b!6901988 true))

(assert (=> b!6901988 true))

(declare-fun bs!1842436 () Bool)

(declare-fun b!6901987 () Bool)

(assert (= bs!1842436 (and b!6901987 b!6901981)))

(declare-fun lambda!391926 () Int)

(assert (=> bs!1842436 (= (and (= s!14361 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= lt!2466750 r3!135)) (= lambda!391926 lambda!391921))))

(assert (=> bs!1842436 (= lambda!391926 lambda!391919)))

(assert (=> bs!1842436 (not (= lambda!391926 lambda!391922))))

(assert (=> bs!1842436 (not (= lambda!391926 lambda!391924))))

(assert (=> bs!1842436 (= (and (= s!14361 lt!2466728) (= lt!2466750 r2!6280)) (= lambda!391926 lambda!391923))))

(declare-fun bs!1842437 () Bool)

(assert (= bs!1842437 (and b!6901987 b!6901988)))

(assert (=> bs!1842437 (not (= lambda!391926 lambda!391925))))

(assert (=> bs!1842436 (not (= lambda!391926 lambda!391920))))

(assert (=> bs!1842436 (not (= lambda!391926 lambda!391918))))

(assert (=> b!6901987 true))

(assert (=> b!6901987 true))

(assert (=> b!6901987 true))

(declare-fun b!6901972 () Bool)

(declare-fun e!4156433 () Bool)

(declare-fun tp_is_empty!42959 () Bool)

(assert (=> b!6901972 (= e!4156433 tp_is_empty!42959)))

(declare-fun b!6901973 () Bool)

(declare-fun tp!1900308 () Bool)

(declare-fun tp!1900306 () Bool)

(assert (=> b!6901973 (= e!4156433 (and tp!1900308 tp!1900306))))

(declare-fun b!6901974 () Bool)

(declare-fun e!4156431 () Bool)

(declare-fun tp!1900302 () Bool)

(declare-fun tp!1900297 () Bool)

(assert (=> b!6901974 (= e!4156431 (and tp!1900302 tp!1900297))))

(declare-fun b!6901975 () Bool)

(declare-fun e!4156435 () Bool)

(declare-fun tp!1900301 () Bool)

(declare-fun tp!1900299 () Bool)

(assert (=> b!6901975 (= e!4156435 (and tp!1900301 tp!1900299))))

(declare-fun b!6901976 () Bool)

(declare-fun res!2814536 () Bool)

(declare-fun e!4156438 () Bool)

(assert (=> b!6901976 (=> (not res!2814536) (not e!4156438))))

(declare-fun validRegex!8575 (Regex!16867) Bool)

(assert (=> b!6901976 (= res!2814536 (validRegex!8575 r2!6280))))

(declare-fun b!6901977 () Bool)

(declare-datatypes ((Unit!160468 0))(
  ( (Unit!160469) )
))
(declare-fun e!4156437 () Unit!160468)

(declare-fun Unit!160470 () Unit!160468)

(assert (=> b!6901977 (= e!4156437 Unit!160470)))

(declare-fun b!6901978 () Bool)

(declare-fun tp!1900309 () Bool)

(declare-fun tp!1900303 () Bool)

(assert (=> b!6901978 (= e!4156431 (and tp!1900309 tp!1900303))))

(declare-fun b!6901980 () Bool)

(declare-fun e!4156436 () Bool)

(assert (=> b!6901980 (= e!4156438 (not e!4156436))))

(declare-fun res!2814537 () Bool)

(assert (=> b!6901980 (=> res!2814537 e!4156436)))

(declare-fun lt!2466751 () Bool)

(assert (=> b!6901980 (= res!2814537 lt!2466751)))

(declare-fun lt!2466744 () Regex!16867)

(declare-fun matchR!9012 (Regex!16867 List!66624) Bool)

(declare-fun matchRSpec!3930 (Regex!16867 List!66624) Bool)

(assert (=> b!6901980 (= (matchR!9012 lt!2466744 s!14361) (matchRSpec!3930 lt!2466744 s!14361))))

(declare-fun lt!2466730 () Unit!160468)

(declare-fun mainMatchTheorem!3930 (Regex!16867 List!66624) Unit!160468)

(assert (=> b!6901980 (= lt!2466730 (mainMatchTheorem!3930 lt!2466744 s!14361))))

(declare-fun lt!2466727 () Regex!16867)

(assert (=> b!6901980 (= lt!2466751 (matchRSpec!3930 lt!2466727 s!14361))))

(assert (=> b!6901980 (= lt!2466751 (matchR!9012 lt!2466727 s!14361))))

(declare-fun lt!2466748 () Unit!160468)

(assert (=> b!6901980 (= lt!2466748 (mainMatchTheorem!3930 lt!2466727 s!14361))))

(assert (=> b!6901980 (= lt!2466744 (Concat!25712 r1!6342 lt!2466750))))

(assert (=> b!6901980 (= lt!2466750 (Concat!25712 r2!6280 r3!135))))

(assert (=> b!6901980 (= lt!2466727 (Concat!25712 lt!2466741 r3!135))))

(assert (=> b!6901980 (= lt!2466741 (Concat!25712 r1!6342 r2!6280))))

(declare-fun Unit!160471 () Unit!160468)

(assert (=> b!6901981 (= e!4156437 Unit!160471)))

(declare-fun lt!2466725 () Unit!160468)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2822 (Regex!16867 Regex!16867 List!66624) Unit!160468)

(assert (=> b!6901981 (= lt!2466725 (lemmaFindConcatSeparationEquivalentToExists!2822 r1!6342 lt!2466750 s!14361))))

(declare-fun Exists!3875 (Int) Bool)

(assert (=> b!6901981 (Exists!3875 lambda!391918)))

(declare-fun lt!2466731 () Unit!160468)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2348 (Regex!16867 Regex!16867 List!66624) Unit!160468)

(assert (=> b!6901981 (= lt!2466731 (lemmaExistCutMatchRandMatchRSpecEquivalent!2348 r1!6342 lt!2466750 s!14361))))

(assert (=> b!6901981 (= (Exists!3875 lambda!391918) (Exists!3875 lambda!391919))))

(declare-datatypes ((Option!16646 0))(
  ( (None!16645) (Some!16645 (v!52917 tuple2!67468)) )
))
(declare-fun lt!2466747 () Option!16646)

(declare-fun get!23251 (Option!16646) tuple2!67468)

(assert (=> b!6901981 (= lt!2466743 (get!23251 lt!2466747))))

(declare-fun lt!2466740 () Unit!160468)

(assert (=> b!6901981 (= lt!2466740 (mainMatchTheorem!3930 r1!6342 (_1!37037 lt!2466743)))))

(assert (=> b!6901981 (= (matchR!9012 r1!6342 (_1!37037 lt!2466743)) (matchRSpec!3930 r1!6342 (_1!37037 lt!2466743)))))

(declare-fun lt!2466757 () Unit!160468)

(assert (=> b!6901981 (= lt!2466757 (mainMatchTheorem!3930 lt!2466750 (_2!37037 lt!2466743)))))

(assert (=> b!6901981 (= (matchR!9012 lt!2466750 (_2!37037 lt!2466743)) (matchRSpec!3930 lt!2466750 (_2!37037 lt!2466743)))))

(declare-fun lt!2466756 () Unit!160468)

(assert (=> b!6901981 (= lt!2466756 (lemmaFindConcatSeparationEquivalentToExists!2822 r2!6280 r3!135 (_2!37037 lt!2466743)))))

(declare-fun lt!2466745 () Option!16646)

(declare-fun findConcatSeparation!3060 (Regex!16867 Regex!16867 List!66624 List!66624 List!66624) Option!16646)

(assert (=> b!6901981 (= lt!2466745 (findConcatSeparation!3060 r2!6280 r3!135 Nil!66500 (_2!37037 lt!2466743) (_2!37037 lt!2466743)))))

(declare-fun isDefined!13349 (Option!16646) Bool)

(assert (=> b!6901981 (= (isDefined!13349 lt!2466745) (Exists!3875 lambda!391920))))

(declare-fun lt!2466729 () Unit!160468)

(assert (=> b!6901981 (= lt!2466729 (lemmaExistCutMatchRandMatchRSpecEquivalent!2348 r2!6280 r3!135 (_2!37037 lt!2466743)))))

(assert (=> b!6901981 (= (Exists!3875 lambda!391920) (Exists!3875 lambda!391921))))

(declare-fun lt!2466737 () tuple2!67468)

(assert (=> b!6901981 (= lt!2466737 (get!23251 lt!2466745))))

(declare-fun lt!2466734 () Unit!160468)

(assert (=> b!6901981 (= lt!2466734 (mainMatchTheorem!3930 r2!6280 (_1!37037 lt!2466737)))))

(assert (=> b!6901981 (= (matchR!9012 r2!6280 (_1!37037 lt!2466737)) (matchRSpec!3930 r2!6280 (_1!37037 lt!2466737)))))

(declare-fun lt!2466742 () Unit!160468)

(assert (=> b!6901981 (= lt!2466742 (mainMatchTheorem!3930 r3!135 (_2!37037 lt!2466737)))))

(assert (=> b!6901981 (= (matchR!9012 r3!135 (_2!37037 lt!2466737)) (matchRSpec!3930 r3!135 (_2!37037 lt!2466737)))))

(declare-fun lt!2466749 () Unit!160468)

(declare-fun lemmaConcatAssociativity!3000 (List!66624 List!66624 List!66624) Unit!160468)

(assert (=> b!6901981 (= lt!2466749 (lemmaConcatAssociativity!3000 (_1!37037 lt!2466743) (_1!37037 lt!2466737) (_2!37037 lt!2466737)))))

(declare-fun ++!14920 (List!66624 List!66624) List!66624)

(assert (=> b!6901981 (= lt!2466728 (++!14920 (_1!37037 lt!2466743) (_1!37037 lt!2466737)))))

(assert (=> b!6901981 (= (++!14920 lt!2466728 (_2!37037 lt!2466737)) (++!14920 (_1!37037 lt!2466743) (++!14920 (_1!37037 lt!2466737) (_2!37037 lt!2466737))))))

(declare-fun lt!2466752 () Unit!160468)

(assert (=> b!6901981 (= lt!2466752 (mainMatchTheorem!3930 lt!2466741 lt!2466728))))

(assert (=> b!6901981 (= (matchR!9012 lt!2466741 lt!2466728) (matchRSpec!3930 lt!2466741 lt!2466728))))

(declare-fun lt!2466755 () Unit!160468)

(assert (=> b!6901981 (= lt!2466755 (lemmaFindConcatSeparationEquivalentToExists!2822 r1!6342 r2!6280 lt!2466728))))

(declare-fun lt!2466735 () Bool)

(assert (=> b!6901981 (= lt!2466735 (isDefined!13349 (findConcatSeparation!3060 r1!6342 r2!6280 Nil!66500 lt!2466728 lt!2466728)))))

(assert (=> b!6901981 (= lt!2466735 (Exists!3875 lambda!391922))))

(declare-fun lt!2466754 () Unit!160468)

(assert (=> b!6901981 (= lt!2466754 (lemmaExistCutMatchRandMatchRSpecEquivalent!2348 r1!6342 r2!6280 lt!2466728))))

(assert (=> b!6901981 (= (Exists!3875 lambda!391922) (Exists!3875 lambda!391923))))

(declare-fun lt!2466753 () Unit!160468)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!68 (Regex!16867 Regex!16867 List!66624 List!66624 List!66624 List!66624 List!66624) Unit!160468)

(assert (=> b!6901981 (= lt!2466753 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!68 r1!6342 r2!6280 (_1!37037 lt!2466743) (_1!37037 lt!2466737) lt!2466728 Nil!66500 lt!2466728))))

(assert (=> b!6901981 lt!2466735))

(declare-fun lt!2466733 () Unit!160468)

(assert (=> b!6901981 (= lt!2466733 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!68 lt!2466741 r3!135 lt!2466728 (_2!37037 lt!2466737) s!14361 Nil!66500 s!14361))))

(assert (=> b!6901981 (isDefined!13349 (findConcatSeparation!3060 lt!2466741 r3!135 Nil!66500 s!14361 s!14361))))

(declare-fun lt!2466736 () Unit!160468)

(assert (=> b!6901981 (= lt!2466736 (lemmaFindConcatSeparationEquivalentToExists!2822 lt!2466741 r3!135 s!14361))))

(assert (=> b!6901981 (Exists!3875 lambda!391924)))

(declare-fun lt!2466726 () Unit!160468)

(assert (=> b!6901981 (= lt!2466726 (lemmaExistCutMatchRandMatchRSpecEquivalent!2348 lt!2466741 r3!135 s!14361))))

(assert (=> b!6901981 false))

(declare-fun b!6901982 () Bool)

(assert (=> b!6901982 (= e!4156431 tp_is_empty!42959)))

(declare-fun b!6901983 () Bool)

(declare-fun res!2814540 () Bool)

(assert (=> b!6901983 (=> (not res!2814540) (not e!4156438))))

(assert (=> b!6901983 (= res!2814540 (validRegex!8575 r3!135))))

(declare-fun b!6901984 () Bool)

(declare-fun tp!1900305 () Bool)

(assert (=> b!6901984 (= e!4156435 tp!1900305)))

(declare-fun b!6901985 () Bool)

(declare-fun tp!1900307 () Bool)

(declare-fun tp!1900296 () Bool)

(assert (=> b!6901985 (= e!4156435 (and tp!1900307 tp!1900296))))

(declare-fun b!6901986 () Bool)

(assert (=> b!6901986 (= e!4156435 tp_is_empty!42959)))

(declare-fun e!4156434 () Bool)

(assert (=> b!6901987 (= e!4156434 (validRegex!8575 lt!2466744))))

(assert (=> b!6901987 (= (Exists!3875 lambda!391925) (Exists!3875 lambda!391926))))

(declare-fun lt!2466746 () Unit!160468)

(assert (=> b!6901987 (= lt!2466746 (lemmaExistCutMatchRandMatchRSpecEquivalent!2348 r1!6342 lt!2466750 s!14361))))

(assert (=> b!6901988 (= e!4156436 e!4156434)))

(declare-fun res!2814538 () Bool)

(assert (=> b!6901988 (=> res!2814538 e!4156434)))

(assert (=> b!6901988 (= res!2814538 (not (validRegex!8575 lt!2466750)))))

(declare-fun lt!2466732 () Bool)

(assert (=> b!6901988 (= lt!2466732 (Exists!3875 lambda!391925))))

(declare-fun lt!2466738 () Unit!160468)

(assert (=> b!6901988 (= lt!2466738 (lemmaFindConcatSeparationEquivalentToExists!2822 r1!6342 lt!2466750 s!14361))))

(declare-fun lt!2466739 () Unit!160468)

(assert (=> b!6901988 (= lt!2466739 e!4156437)))

(declare-fun c!1282338 () Bool)

(assert (=> b!6901988 (= c!1282338 lt!2466732)))

(assert (=> b!6901988 (= lt!2466732 (isDefined!13349 lt!2466747))))

(assert (=> b!6901988 (= lt!2466747 (findConcatSeparation!3060 r1!6342 lt!2466750 Nil!66500 s!14361 s!14361))))

(declare-fun b!6901989 () Bool)

(declare-fun tp!1900298 () Bool)

(assert (=> b!6901989 (= e!4156433 tp!1900298)))

(declare-fun b!6901990 () Bool)

(declare-fun e!4156432 () Bool)

(declare-fun tp!1900310 () Bool)

(assert (=> b!6901990 (= e!4156432 (and tp_is_empty!42959 tp!1900310))))

(declare-fun b!6901991 () Bool)

(declare-fun tp!1900304 () Bool)

(assert (=> b!6901991 (= e!4156431 tp!1900304)))

(declare-fun b!6901979 () Bool)

(declare-fun tp!1900311 () Bool)

(declare-fun tp!1900300 () Bool)

(assert (=> b!6901979 (= e!4156433 (and tp!1900311 tp!1900300))))

(declare-fun res!2814539 () Bool)

(assert (=> start!664738 (=> (not res!2814539) (not e!4156438))))

(assert (=> start!664738 (= res!2814539 (validRegex!8575 r1!6342))))

(assert (=> start!664738 e!4156438))

(assert (=> start!664738 e!4156435))

(assert (=> start!664738 e!4156433))

(assert (=> start!664738 e!4156431))

(assert (=> start!664738 e!4156432))

(assert (= (and start!664738 res!2814539) b!6901976))

(assert (= (and b!6901976 res!2814536) b!6901983))

(assert (= (and b!6901983 res!2814540) b!6901980))

(assert (= (and b!6901980 (not res!2814537)) b!6901988))

(assert (= (and b!6901988 c!1282338) b!6901981))

(assert (= (and b!6901988 (not c!1282338)) b!6901977))

(assert (= (and b!6901988 (not res!2814538)) b!6901987))

(get-info :version)

(assert (= (and start!664738 ((_ is ElementMatch!16867) r1!6342)) b!6901986))

(assert (= (and start!664738 ((_ is Concat!25712) r1!6342)) b!6901985))

(assert (= (and start!664738 ((_ is Star!16867) r1!6342)) b!6901984))

(assert (= (and start!664738 ((_ is Union!16867) r1!6342)) b!6901975))

(assert (= (and start!664738 ((_ is ElementMatch!16867) r2!6280)) b!6901972))

(assert (= (and start!664738 ((_ is Concat!25712) r2!6280)) b!6901979))

(assert (= (and start!664738 ((_ is Star!16867) r2!6280)) b!6901989))

(assert (= (and start!664738 ((_ is Union!16867) r2!6280)) b!6901973))

(assert (= (and start!664738 ((_ is ElementMatch!16867) r3!135)) b!6901982))

(assert (= (and start!664738 ((_ is Concat!25712) r3!135)) b!6901978))

(assert (= (and start!664738 ((_ is Star!16867) r3!135)) b!6901991))

(assert (= (and start!664738 ((_ is Union!16867) r3!135)) b!6901974))

(assert (= (and start!664738 ((_ is Cons!66500) s!14361)) b!6901990))

(declare-fun m!7619960 () Bool)

(assert (=> b!6901983 m!7619960))

(declare-fun m!7619962 () Bool)

(assert (=> b!6901987 m!7619962))

(declare-fun m!7619964 () Bool)

(assert (=> b!6901987 m!7619964))

(declare-fun m!7619966 () Bool)

(assert (=> b!6901987 m!7619966))

(declare-fun m!7619968 () Bool)

(assert (=> b!6901987 m!7619968))

(declare-fun m!7619970 () Bool)

(assert (=> b!6901988 m!7619970))

(declare-fun m!7619972 () Bool)

(assert (=> b!6901988 m!7619972))

(declare-fun m!7619974 () Bool)

(assert (=> b!6901988 m!7619974))

(declare-fun m!7619976 () Bool)

(assert (=> b!6901988 m!7619976))

(assert (=> b!6901988 m!7619964))

(declare-fun m!7619978 () Bool)

(assert (=> b!6901981 m!7619978))

(declare-fun m!7619980 () Bool)

(assert (=> b!6901981 m!7619980))

(declare-fun m!7619982 () Bool)

(assert (=> b!6901981 m!7619982))

(declare-fun m!7619984 () Bool)

(assert (=> b!6901981 m!7619984))

(declare-fun m!7619986 () Bool)

(assert (=> b!6901981 m!7619986))

(declare-fun m!7619988 () Bool)

(assert (=> b!6901981 m!7619988))

(declare-fun m!7619990 () Bool)

(assert (=> b!6901981 m!7619990))

(declare-fun m!7619992 () Bool)

(assert (=> b!6901981 m!7619992))

(declare-fun m!7619994 () Bool)

(assert (=> b!6901981 m!7619994))

(declare-fun m!7619996 () Bool)

(assert (=> b!6901981 m!7619996))

(declare-fun m!7619998 () Bool)

(assert (=> b!6901981 m!7619998))

(declare-fun m!7620000 () Bool)

(assert (=> b!6901981 m!7620000))

(declare-fun m!7620002 () Bool)

(assert (=> b!6901981 m!7620002))

(declare-fun m!7620004 () Bool)

(assert (=> b!6901981 m!7620004))

(declare-fun m!7620006 () Bool)

(assert (=> b!6901981 m!7620006))

(declare-fun m!7620008 () Bool)

(assert (=> b!6901981 m!7620008))

(declare-fun m!7620010 () Bool)

(assert (=> b!6901981 m!7620010))

(declare-fun m!7620012 () Bool)

(assert (=> b!6901981 m!7620012))

(declare-fun m!7620014 () Bool)

(assert (=> b!6901981 m!7620014))

(declare-fun m!7620016 () Bool)

(assert (=> b!6901981 m!7620016))

(declare-fun m!7620018 () Bool)

(assert (=> b!6901981 m!7620018))

(declare-fun m!7620020 () Bool)

(assert (=> b!6901981 m!7620020))

(declare-fun m!7620022 () Bool)

(assert (=> b!6901981 m!7620022))

(declare-fun m!7620024 () Bool)

(assert (=> b!6901981 m!7620024))

(declare-fun m!7620026 () Bool)

(assert (=> b!6901981 m!7620026))

(declare-fun m!7620028 () Bool)

(assert (=> b!6901981 m!7620028))

(assert (=> b!6901981 m!7619976))

(declare-fun m!7620030 () Bool)

(assert (=> b!6901981 m!7620030))

(declare-fun m!7620032 () Bool)

(assert (=> b!6901981 m!7620032))

(assert (=> b!6901981 m!7619998))

(declare-fun m!7620034 () Bool)

(assert (=> b!6901981 m!7620034))

(declare-fun m!7620036 () Bool)

(assert (=> b!6901981 m!7620036))

(declare-fun m!7620038 () Bool)

(assert (=> b!6901981 m!7620038))

(assert (=> b!6901981 m!7619968))

(declare-fun m!7620040 () Bool)

(assert (=> b!6901981 m!7620040))

(declare-fun m!7620042 () Bool)

(assert (=> b!6901981 m!7620042))

(declare-fun m!7620044 () Bool)

(assert (=> b!6901981 m!7620044))

(assert (=> b!6901981 m!7619982))

(declare-fun m!7620046 () Bool)

(assert (=> b!6901981 m!7620046))

(declare-fun m!7620048 () Bool)

(assert (=> b!6901981 m!7620048))

(declare-fun m!7620050 () Bool)

(assert (=> b!6901981 m!7620050))

(declare-fun m!7620052 () Bool)

(assert (=> b!6901981 m!7620052))

(assert (=> b!6901981 m!7620034))

(declare-fun m!7620054 () Bool)

(assert (=> b!6901981 m!7620054))

(declare-fun m!7620056 () Bool)

(assert (=> b!6901981 m!7620056))

(assert (=> b!6901981 m!7620056))

(declare-fun m!7620058 () Bool)

(assert (=> b!6901981 m!7620058))

(declare-fun m!7620060 () Bool)

(assert (=> b!6901981 m!7620060))

(declare-fun m!7620062 () Bool)

(assert (=> b!6901981 m!7620062))

(assert (=> b!6901981 m!7620002))

(assert (=> b!6901981 m!7620050))

(declare-fun m!7620064 () Bool)

(assert (=> b!6901980 m!7620064))

(declare-fun m!7620066 () Bool)

(assert (=> b!6901980 m!7620066))

(declare-fun m!7620068 () Bool)

(assert (=> b!6901980 m!7620068))

(declare-fun m!7620070 () Bool)

(assert (=> b!6901980 m!7620070))

(declare-fun m!7620072 () Bool)

(assert (=> b!6901980 m!7620072))

(declare-fun m!7620074 () Bool)

(assert (=> b!6901980 m!7620074))

(declare-fun m!7620076 () Bool)

(assert (=> b!6901976 m!7620076))

(declare-fun m!7620078 () Bool)

(assert (=> start!664738 m!7620078))

(check-sat (not start!664738) (not b!6901975) (not b!6901984) (not b!6901979) (not b!6901976) (not b!6901988) (not b!6901991) (not b!6901983) (not b!6901973) (not b!6901985) (not b!6901987) (not b!6901981) tp_is_empty!42959 (not b!6901974) (not b!6901990) (not b!6901980) (not b!6901978) (not b!6901989))
(check-sat)
(get-model)

(declare-fun b!6902084 () Bool)

(declare-fun e!4156496 () Bool)

(declare-fun e!4156495 () Bool)

(assert (=> b!6902084 (= e!4156496 e!4156495)))

(declare-fun res!2814591 () Bool)

(assert (=> b!6902084 (=> (not res!2814591) (not e!4156495))))

(declare-fun lt!2466772 () Bool)

(assert (=> b!6902084 (= res!2814591 (not lt!2466772))))

(declare-fun b!6902085 () Bool)

(declare-fun res!2814593 () Bool)

(declare-fun e!4156493 () Bool)

(assert (=> b!6902085 (=> (not res!2814593) (not e!4156493))))

(declare-fun call!627637 () Bool)

(assert (=> b!6902085 (= res!2814593 (not call!627637))))

(declare-fun b!6902086 () Bool)

(declare-fun e!4156491 () Bool)

(declare-fun derivativeStep!5387 (Regex!16867 C!34004) Regex!16867)

(declare-fun head!13840 (List!66624) C!34004)

(declare-fun tail!12892 (List!66624) List!66624)

(assert (=> b!6902086 (= e!4156491 (matchR!9012 (derivativeStep!5387 lt!2466727 (head!13840 s!14361)) (tail!12892 s!14361)))))

(declare-fun b!6902087 () Bool)

(declare-fun e!4156494 () Bool)

(assert (=> b!6902087 (= e!4156495 e!4156494)))

(declare-fun res!2814597 () Bool)

(assert (=> b!6902087 (=> res!2814597 e!4156494)))

(assert (=> b!6902087 (= res!2814597 call!627637)))

(declare-fun b!6902088 () Bool)

(assert (=> b!6902088 (= e!4156493 (= (head!13840 s!14361) (c!1282339 lt!2466727)))))

(declare-fun b!6902089 () Bool)

(assert (=> b!6902089 (= e!4156494 (not (= (head!13840 s!14361) (c!1282339 lt!2466727))))))

(declare-fun b!6902090 () Bool)

(declare-fun nullable!6708 (Regex!16867) Bool)

(assert (=> b!6902090 (= e!4156491 (nullable!6708 lt!2466727))))

(declare-fun b!6902091 () Bool)

(declare-fun e!4156497 () Bool)

(declare-fun e!4156492 () Bool)

(assert (=> b!6902091 (= e!4156497 e!4156492)))

(declare-fun c!1282360 () Bool)

(assert (=> b!6902091 (= c!1282360 ((_ is EmptyLang!16867) lt!2466727))))

(declare-fun b!6902092 () Bool)

(declare-fun res!2814598 () Bool)

(assert (=> b!6902092 (=> res!2814598 e!4156496)))

(assert (=> b!6902092 (= res!2814598 (not ((_ is ElementMatch!16867) lt!2466727)))))

(assert (=> b!6902092 (= e!4156492 e!4156496)))

(declare-fun d!2162103 () Bool)

(assert (=> d!2162103 e!4156497))

(declare-fun c!1282358 () Bool)

(assert (=> d!2162103 (= c!1282358 ((_ is EmptyExpr!16867) lt!2466727))))

(assert (=> d!2162103 (= lt!2466772 e!4156491)))

(declare-fun c!1282359 () Bool)

(declare-fun isEmpty!38730 (List!66624) Bool)

(assert (=> d!2162103 (= c!1282359 (isEmpty!38730 s!14361))))

(assert (=> d!2162103 (validRegex!8575 lt!2466727)))

(assert (=> d!2162103 (= (matchR!9012 lt!2466727 s!14361) lt!2466772)))

(declare-fun b!6902093 () Bool)

(declare-fun res!2814594 () Bool)

(assert (=> b!6902093 (=> res!2814594 e!4156496)))

(assert (=> b!6902093 (= res!2814594 e!4156493)))

(declare-fun res!2814592 () Bool)

(assert (=> b!6902093 (=> (not res!2814592) (not e!4156493))))

(assert (=> b!6902093 (= res!2814592 lt!2466772)))

(declare-fun b!6902094 () Bool)

(declare-fun res!2814595 () Bool)

(assert (=> b!6902094 (=> res!2814595 e!4156494)))

(assert (=> b!6902094 (= res!2814595 (not (isEmpty!38730 (tail!12892 s!14361))))))

(declare-fun b!6902095 () Bool)

(assert (=> b!6902095 (= e!4156492 (not lt!2466772))))

(declare-fun b!6902096 () Bool)

(assert (=> b!6902096 (= e!4156497 (= lt!2466772 call!627637))))

(declare-fun bm!627632 () Bool)

(assert (=> bm!627632 (= call!627637 (isEmpty!38730 s!14361))))

(declare-fun b!6902097 () Bool)

(declare-fun res!2814596 () Bool)

(assert (=> b!6902097 (=> (not res!2814596) (not e!4156493))))

(assert (=> b!6902097 (= res!2814596 (isEmpty!38730 (tail!12892 s!14361)))))

(assert (= (and d!2162103 c!1282359) b!6902090))

(assert (= (and d!2162103 (not c!1282359)) b!6902086))

(assert (= (and d!2162103 c!1282358) b!6902096))

(assert (= (and d!2162103 (not c!1282358)) b!6902091))

(assert (= (and b!6902091 c!1282360) b!6902095))

(assert (= (and b!6902091 (not c!1282360)) b!6902092))

(assert (= (and b!6902092 (not res!2814598)) b!6902093))

(assert (= (and b!6902093 res!2814592) b!6902085))

(assert (= (and b!6902085 res!2814593) b!6902097))

(assert (= (and b!6902097 res!2814596) b!6902088))

(assert (= (and b!6902093 (not res!2814594)) b!6902084))

(assert (= (and b!6902084 res!2814591) b!6902087))

(assert (= (and b!6902087 (not res!2814597)) b!6902094))

(assert (= (and b!6902094 (not res!2814595)) b!6902089))

(assert (= (or b!6902096 b!6902085 b!6902087) bm!627632))

(declare-fun m!7620116 () Bool)

(assert (=> d!2162103 m!7620116))

(declare-fun m!7620118 () Bool)

(assert (=> d!2162103 m!7620118))

(declare-fun m!7620120 () Bool)

(assert (=> b!6902090 m!7620120))

(declare-fun m!7620122 () Bool)

(assert (=> b!6902097 m!7620122))

(assert (=> b!6902097 m!7620122))

(declare-fun m!7620124 () Bool)

(assert (=> b!6902097 m!7620124))

(declare-fun m!7620126 () Bool)

(assert (=> b!6902086 m!7620126))

(assert (=> b!6902086 m!7620126))

(declare-fun m!7620128 () Bool)

(assert (=> b!6902086 m!7620128))

(assert (=> b!6902086 m!7620122))

(assert (=> b!6902086 m!7620128))

(assert (=> b!6902086 m!7620122))

(declare-fun m!7620132 () Bool)

(assert (=> b!6902086 m!7620132))

(assert (=> b!6902088 m!7620126))

(assert (=> b!6902089 m!7620126))

(assert (=> b!6902094 m!7620122))

(assert (=> b!6902094 m!7620122))

(assert (=> b!6902094 m!7620124))

(assert (=> bm!627632 m!7620116))

(assert (=> b!6901980 d!2162103))

(declare-fun d!2162115 () Bool)

(assert (=> d!2162115 (= (matchR!9012 lt!2466727 s!14361) (matchRSpec!3930 lt!2466727 s!14361))))

(declare-fun lt!2466777 () Unit!160468)

(declare-fun choose!51388 (Regex!16867 List!66624) Unit!160468)

(assert (=> d!2162115 (= lt!2466777 (choose!51388 lt!2466727 s!14361))))

(assert (=> d!2162115 (validRegex!8575 lt!2466727)))

(assert (=> d!2162115 (= (mainMatchTheorem!3930 lt!2466727 s!14361) lt!2466777)))

(declare-fun bs!1842445 () Bool)

(assert (= bs!1842445 d!2162115))

(assert (=> bs!1842445 m!7620072))

(assert (=> bs!1842445 m!7620070))

(declare-fun m!7620142 () Bool)

(assert (=> bs!1842445 m!7620142))

(assert (=> bs!1842445 m!7620118))

(assert (=> b!6901980 d!2162115))

(declare-fun d!2162121 () Bool)

(assert (=> d!2162121 (= (matchR!9012 lt!2466744 s!14361) (matchRSpec!3930 lt!2466744 s!14361))))

(declare-fun lt!2466778 () Unit!160468)

(assert (=> d!2162121 (= lt!2466778 (choose!51388 lt!2466744 s!14361))))

(assert (=> d!2162121 (validRegex!8575 lt!2466744)))

(assert (=> d!2162121 (= (mainMatchTheorem!3930 lt!2466744 s!14361) lt!2466778)))

(declare-fun bs!1842446 () Bool)

(assert (= bs!1842446 d!2162121))

(assert (=> bs!1842446 m!7620066))

(assert (=> bs!1842446 m!7620068))

(declare-fun m!7620144 () Bool)

(assert (=> bs!1842446 m!7620144))

(assert (=> bs!1842446 m!7619962))

(assert (=> b!6901980 d!2162121))

(declare-fun b!6902115 () Bool)

(declare-fun e!4156514 () Bool)

(declare-fun e!4156513 () Bool)

(assert (=> b!6902115 (= e!4156514 e!4156513)))

(declare-fun res!2814612 () Bool)

(assert (=> b!6902115 (=> (not res!2814612) (not e!4156513))))

(declare-fun lt!2466779 () Bool)

(assert (=> b!6902115 (= res!2814612 (not lt!2466779))))

(declare-fun b!6902116 () Bool)

(declare-fun res!2814614 () Bool)

(declare-fun e!4156511 () Bool)

(assert (=> b!6902116 (=> (not res!2814614) (not e!4156511))))

(declare-fun call!627641 () Bool)

(assert (=> b!6902116 (= res!2814614 (not call!627641))))

(declare-fun b!6902117 () Bool)

(declare-fun e!4156509 () Bool)

(assert (=> b!6902117 (= e!4156509 (matchR!9012 (derivativeStep!5387 lt!2466744 (head!13840 s!14361)) (tail!12892 s!14361)))))

(declare-fun b!6902118 () Bool)

(declare-fun e!4156512 () Bool)

(assert (=> b!6902118 (= e!4156513 e!4156512)))

(declare-fun res!2814618 () Bool)

(assert (=> b!6902118 (=> res!2814618 e!4156512)))

(assert (=> b!6902118 (= res!2814618 call!627641)))

(declare-fun b!6902119 () Bool)

(assert (=> b!6902119 (= e!4156511 (= (head!13840 s!14361) (c!1282339 lt!2466744)))))

(declare-fun b!6902120 () Bool)

(assert (=> b!6902120 (= e!4156512 (not (= (head!13840 s!14361) (c!1282339 lt!2466744))))))

(declare-fun b!6902121 () Bool)

(assert (=> b!6902121 (= e!4156509 (nullable!6708 lt!2466744))))

(declare-fun b!6902122 () Bool)

(declare-fun e!4156515 () Bool)

(declare-fun e!4156510 () Bool)

(assert (=> b!6902122 (= e!4156515 e!4156510)))

(declare-fun c!1282365 () Bool)

(assert (=> b!6902122 (= c!1282365 ((_ is EmptyLang!16867) lt!2466744))))

(declare-fun b!6902123 () Bool)

(declare-fun res!2814619 () Bool)

(assert (=> b!6902123 (=> res!2814619 e!4156514)))

(assert (=> b!6902123 (= res!2814619 (not ((_ is ElementMatch!16867) lt!2466744)))))

(assert (=> b!6902123 (= e!4156510 e!4156514)))

(declare-fun d!2162123 () Bool)

(assert (=> d!2162123 e!4156515))

(declare-fun c!1282363 () Bool)

(assert (=> d!2162123 (= c!1282363 ((_ is EmptyExpr!16867) lt!2466744))))

(assert (=> d!2162123 (= lt!2466779 e!4156509)))

(declare-fun c!1282364 () Bool)

(assert (=> d!2162123 (= c!1282364 (isEmpty!38730 s!14361))))

(assert (=> d!2162123 (validRegex!8575 lt!2466744)))

(assert (=> d!2162123 (= (matchR!9012 lt!2466744 s!14361) lt!2466779)))

(declare-fun b!6902124 () Bool)

(declare-fun res!2814615 () Bool)

(assert (=> b!6902124 (=> res!2814615 e!4156514)))

(assert (=> b!6902124 (= res!2814615 e!4156511)))

(declare-fun res!2814613 () Bool)

(assert (=> b!6902124 (=> (not res!2814613) (not e!4156511))))

(assert (=> b!6902124 (= res!2814613 lt!2466779)))

(declare-fun b!6902125 () Bool)

(declare-fun res!2814616 () Bool)

(assert (=> b!6902125 (=> res!2814616 e!4156512)))

(assert (=> b!6902125 (= res!2814616 (not (isEmpty!38730 (tail!12892 s!14361))))))

(declare-fun b!6902126 () Bool)

(assert (=> b!6902126 (= e!4156510 (not lt!2466779))))

(declare-fun b!6902127 () Bool)

(assert (=> b!6902127 (= e!4156515 (= lt!2466779 call!627641))))

(declare-fun bm!627636 () Bool)

(assert (=> bm!627636 (= call!627641 (isEmpty!38730 s!14361))))

(declare-fun b!6902128 () Bool)

(declare-fun res!2814617 () Bool)

(assert (=> b!6902128 (=> (not res!2814617) (not e!4156511))))

(assert (=> b!6902128 (= res!2814617 (isEmpty!38730 (tail!12892 s!14361)))))

(assert (= (and d!2162123 c!1282364) b!6902121))

(assert (= (and d!2162123 (not c!1282364)) b!6902117))

(assert (= (and d!2162123 c!1282363) b!6902127))

(assert (= (and d!2162123 (not c!1282363)) b!6902122))

(assert (= (and b!6902122 c!1282365) b!6902126))

(assert (= (and b!6902122 (not c!1282365)) b!6902123))

(assert (= (and b!6902123 (not res!2814619)) b!6902124))

(assert (= (and b!6902124 res!2814613) b!6902116))

(assert (= (and b!6902116 res!2814614) b!6902128))

(assert (= (and b!6902128 res!2814617) b!6902119))

(assert (= (and b!6902124 (not res!2814615)) b!6902115))

(assert (= (and b!6902115 res!2814612) b!6902118))

(assert (= (and b!6902118 (not res!2814618)) b!6902125))

(assert (= (and b!6902125 (not res!2814616)) b!6902120))

(assert (= (or b!6902127 b!6902116 b!6902118) bm!627636))

(assert (=> d!2162123 m!7620116))

(assert (=> d!2162123 m!7619962))

(declare-fun m!7620146 () Bool)

(assert (=> b!6902121 m!7620146))

(assert (=> b!6902128 m!7620122))

(assert (=> b!6902128 m!7620122))

(assert (=> b!6902128 m!7620124))

(assert (=> b!6902117 m!7620126))

(assert (=> b!6902117 m!7620126))

(declare-fun m!7620148 () Bool)

(assert (=> b!6902117 m!7620148))

(assert (=> b!6902117 m!7620122))

(assert (=> b!6902117 m!7620148))

(assert (=> b!6902117 m!7620122))

(declare-fun m!7620150 () Bool)

(assert (=> b!6902117 m!7620150))

(assert (=> b!6902119 m!7620126))

(assert (=> b!6902120 m!7620126))

(assert (=> b!6902125 m!7620122))

(assert (=> b!6902125 m!7620122))

(assert (=> b!6902125 m!7620124))

(assert (=> bm!627636 m!7620116))

(assert (=> b!6901980 d!2162123))

(declare-fun bs!1842465 () Bool)

(declare-fun b!6902246 () Bool)

(assert (= bs!1842465 (and b!6902246 b!6901981)))

(declare-fun lambda!391946 () Int)

(assert (=> bs!1842465 (not (= lambda!391946 lambda!391921))))

(assert (=> bs!1842465 (not (= lambda!391946 lambda!391919))))

(assert (=> bs!1842465 (not (= lambda!391946 lambda!391922))))

(assert (=> bs!1842465 (not (= lambda!391946 lambda!391924))))

(assert (=> bs!1842465 (not (= lambda!391946 lambda!391923))))

(declare-fun bs!1842466 () Bool)

(assert (= bs!1842466 (and b!6902246 b!6901988)))

(assert (=> bs!1842466 (not (= lambda!391946 lambda!391925))))

(assert (=> bs!1842465 (not (= lambda!391946 lambda!391920))))

(declare-fun bs!1842467 () Bool)

(assert (= bs!1842467 (and b!6902246 b!6901987)))

(assert (=> bs!1842467 (not (= lambda!391946 lambda!391926))))

(assert (=> bs!1842465 (not (= lambda!391946 lambda!391918))))

(assert (=> b!6902246 true))

(assert (=> b!6902246 true))

(declare-fun bs!1842468 () Bool)

(declare-fun b!6902251 () Bool)

(assert (= bs!1842468 (and b!6902251 b!6901981)))

(declare-fun lambda!391947 () Int)

(assert (=> bs!1842468 (= (and (= s!14361 (_2!37037 lt!2466743)) (= (regOne!34246 lt!2466744) r2!6280) (= (regTwo!34246 lt!2466744) r3!135)) (= lambda!391947 lambda!391921))))

(assert (=> bs!1842468 (= (and (= (regOne!34246 lt!2466744) r1!6342) (= (regTwo!34246 lt!2466744) lt!2466750)) (= lambda!391947 lambda!391919))))

(assert (=> bs!1842468 (not (= lambda!391947 lambda!391922))))

(assert (=> bs!1842468 (not (= lambda!391947 lambda!391924))))

(assert (=> bs!1842468 (= (and (= s!14361 lt!2466728) (= (regOne!34246 lt!2466744) r1!6342) (= (regTwo!34246 lt!2466744) r2!6280)) (= lambda!391947 lambda!391923))))

(declare-fun bs!1842474 () Bool)

(assert (= bs!1842474 (and b!6902251 b!6902246)))

(assert (=> bs!1842474 (not (= lambda!391947 lambda!391946))))

(declare-fun bs!1842476 () Bool)

(assert (= bs!1842476 (and b!6902251 b!6901988)))

(assert (=> bs!1842476 (not (= lambda!391947 lambda!391925))))

(assert (=> bs!1842468 (not (= lambda!391947 lambda!391920))))

(declare-fun bs!1842478 () Bool)

(assert (= bs!1842478 (and b!6902251 b!6901987)))

(assert (=> bs!1842478 (= (and (= (regOne!34246 lt!2466744) r1!6342) (= (regTwo!34246 lt!2466744) lt!2466750)) (= lambda!391947 lambda!391926))))

(assert (=> bs!1842468 (not (= lambda!391947 lambda!391918))))

(assert (=> b!6902251 true))

(assert (=> b!6902251 true))

(declare-fun b!6902241 () Bool)

(declare-fun e!4156586 () Bool)

(declare-fun e!4156581 () Bool)

(assert (=> b!6902241 (= e!4156586 e!4156581)))

(declare-fun c!1282394 () Bool)

(assert (=> b!6902241 (= c!1282394 ((_ is Star!16867) lt!2466744))))

(declare-fun b!6902242 () Bool)

(declare-fun e!4156582 () Bool)

(assert (=> b!6902242 (= e!4156582 (matchRSpec!3930 (regTwo!34247 lt!2466744) s!14361))))

(declare-fun b!6902243 () Bool)

(declare-fun e!4156584 () Bool)

(assert (=> b!6902243 (= e!4156584 (= s!14361 (Cons!66500 (c!1282339 lt!2466744) Nil!66500)))))

(declare-fun bm!627652 () Bool)

(declare-fun call!627657 () Bool)

(assert (=> bm!627652 (= call!627657 (isEmpty!38730 s!14361))))

(declare-fun d!2162125 () Bool)

(declare-fun c!1282396 () Bool)

(assert (=> d!2162125 (= c!1282396 ((_ is EmptyExpr!16867) lt!2466744))))

(declare-fun e!4156585 () Bool)

(assert (=> d!2162125 (= (matchRSpec!3930 lt!2466744 s!14361) e!4156585)))

(declare-fun b!6902244 () Bool)

(declare-fun res!2814678 () Bool)

(declare-fun e!4156583 () Bool)

(assert (=> b!6902244 (=> res!2814678 e!4156583)))

(assert (=> b!6902244 (= res!2814678 call!627657)))

(assert (=> b!6902244 (= e!4156581 e!4156583)))

(declare-fun b!6902245 () Bool)

(declare-fun e!4156580 () Bool)

(assert (=> b!6902245 (= e!4156585 e!4156580)))

(declare-fun res!2814676 () Bool)

(assert (=> b!6902245 (= res!2814676 (not ((_ is EmptyLang!16867) lt!2466744)))))

(assert (=> b!6902245 (=> (not res!2814676) (not e!4156580))))

(declare-fun call!627658 () Bool)

(assert (=> b!6902246 (= e!4156583 call!627658)))

(declare-fun b!6902247 () Bool)

(declare-fun c!1282395 () Bool)

(assert (=> b!6902247 (= c!1282395 ((_ is Union!16867) lt!2466744))))

(assert (=> b!6902247 (= e!4156584 e!4156586)))

(declare-fun b!6902248 () Bool)

(declare-fun c!1282397 () Bool)

(assert (=> b!6902248 (= c!1282397 ((_ is ElementMatch!16867) lt!2466744))))

(assert (=> b!6902248 (= e!4156580 e!4156584)))

(declare-fun b!6902249 () Bool)

(assert (=> b!6902249 (= e!4156585 call!627657)))

(declare-fun b!6902250 () Bool)

(assert (=> b!6902250 (= e!4156586 e!4156582)))

(declare-fun res!2814677 () Bool)

(assert (=> b!6902250 (= res!2814677 (matchRSpec!3930 (regOne!34247 lt!2466744) s!14361))))

(assert (=> b!6902250 (=> res!2814677 e!4156582)))

(assert (=> b!6902251 (= e!4156581 call!627658)))

(declare-fun bm!627653 () Bool)

(assert (=> bm!627653 (= call!627658 (Exists!3875 (ite c!1282394 lambda!391946 lambda!391947)))))

(assert (= (and d!2162125 c!1282396) b!6902249))

(assert (= (and d!2162125 (not c!1282396)) b!6902245))

(assert (= (and b!6902245 res!2814676) b!6902248))

(assert (= (and b!6902248 c!1282397) b!6902243))

(assert (= (and b!6902248 (not c!1282397)) b!6902247))

(assert (= (and b!6902247 c!1282395) b!6902250))

(assert (= (and b!6902247 (not c!1282395)) b!6902241))

(assert (= (and b!6902250 (not res!2814677)) b!6902242))

(assert (= (and b!6902241 c!1282394) b!6902244))

(assert (= (and b!6902241 (not c!1282394)) b!6902251))

(assert (= (and b!6902244 (not res!2814678)) b!6902246))

(assert (= (or b!6902246 b!6902251) bm!627653))

(assert (= (or b!6902249 b!6902244) bm!627652))

(declare-fun m!7620196 () Bool)

(assert (=> b!6902242 m!7620196))

(assert (=> bm!627652 m!7620116))

(declare-fun m!7620198 () Bool)

(assert (=> b!6902250 m!7620198))

(declare-fun m!7620200 () Bool)

(assert (=> bm!627653 m!7620200))

(assert (=> b!6901980 d!2162125))

(declare-fun bs!1842487 () Bool)

(declare-fun b!6902296 () Bool)

(assert (= bs!1842487 (and b!6902296 b!6901981)))

(declare-fun lambda!391950 () Int)

(assert (=> bs!1842487 (not (= lambda!391950 lambda!391921))))

(assert (=> bs!1842487 (not (= lambda!391950 lambda!391919))))

(assert (=> bs!1842487 (not (= lambda!391950 lambda!391922))))

(assert (=> bs!1842487 (not (= lambda!391950 lambda!391924))))

(assert (=> bs!1842487 (not (= lambda!391950 lambda!391923))))

(declare-fun bs!1842491 () Bool)

(assert (= bs!1842491 (and b!6902296 b!6901988)))

(assert (=> bs!1842491 (not (= lambda!391950 lambda!391925))))

(assert (=> bs!1842487 (not (= lambda!391950 lambda!391920))))

(declare-fun bs!1842494 () Bool)

(assert (= bs!1842494 (and b!6902296 b!6901987)))

(assert (=> bs!1842494 (not (= lambda!391950 lambda!391926))))

(assert (=> bs!1842487 (not (= lambda!391950 lambda!391918))))

(declare-fun bs!1842498 () Bool)

(assert (= bs!1842498 (and b!6902296 b!6902251)))

(assert (=> bs!1842498 (not (= lambda!391950 lambda!391947))))

(declare-fun bs!1842500 () Bool)

(assert (= bs!1842500 (and b!6902296 b!6902246)))

(assert (=> bs!1842500 (= (and (= (reg!17196 lt!2466727) (reg!17196 lt!2466744)) (= lt!2466727 lt!2466744)) (= lambda!391950 lambda!391946))))

(assert (=> b!6902296 true))

(assert (=> b!6902296 true))

(declare-fun bs!1842504 () Bool)

(declare-fun b!6902301 () Bool)

(assert (= bs!1842504 (and b!6902301 b!6901981)))

(declare-fun lambda!391952 () Int)

(assert (=> bs!1842504 (= (and (= s!14361 (_2!37037 lt!2466743)) (= (regOne!34246 lt!2466727) r2!6280) (= (regTwo!34246 lt!2466727) r3!135)) (= lambda!391952 lambda!391921))))

(assert (=> bs!1842504 (= (and (= (regOne!34246 lt!2466727) r1!6342) (= (regTwo!34246 lt!2466727) lt!2466750)) (= lambda!391952 lambda!391919))))

(assert (=> bs!1842504 (not (= lambda!391952 lambda!391924))))

(assert (=> bs!1842504 (= (and (= s!14361 lt!2466728) (= (regOne!34246 lt!2466727) r1!6342) (= (regTwo!34246 lt!2466727) r2!6280)) (= lambda!391952 lambda!391923))))

(declare-fun bs!1842505 () Bool)

(assert (= bs!1842505 (and b!6902301 b!6901988)))

(assert (=> bs!1842505 (not (= lambda!391952 lambda!391925))))

(assert (=> bs!1842504 (not (= lambda!391952 lambda!391920))))

(declare-fun bs!1842507 () Bool)

(assert (= bs!1842507 (and b!6902301 b!6901987)))

(assert (=> bs!1842507 (= (and (= (regOne!34246 lt!2466727) r1!6342) (= (regTwo!34246 lt!2466727) lt!2466750)) (= lambda!391952 lambda!391926))))

(assert (=> bs!1842504 (not (= lambda!391952 lambda!391918))))

(declare-fun bs!1842511 () Bool)

(assert (= bs!1842511 (and b!6902301 b!6902296)))

(assert (=> bs!1842511 (not (= lambda!391952 lambda!391950))))

(assert (=> bs!1842504 (not (= lambda!391952 lambda!391922))))

(declare-fun bs!1842514 () Bool)

(assert (= bs!1842514 (and b!6902301 b!6902251)))

(assert (=> bs!1842514 (= (and (= (regOne!34246 lt!2466727) (regOne!34246 lt!2466744)) (= (regTwo!34246 lt!2466727) (regTwo!34246 lt!2466744))) (= lambda!391952 lambda!391947))))

(declare-fun bs!1842516 () Bool)

(assert (= bs!1842516 (and b!6902301 b!6902246)))

(assert (=> bs!1842516 (not (= lambda!391952 lambda!391946))))

(assert (=> b!6902301 true))

(assert (=> b!6902301 true))

(declare-fun b!6902291 () Bool)

(declare-fun e!4156614 () Bool)

(declare-fun e!4156609 () Bool)

(assert (=> b!6902291 (= e!4156614 e!4156609)))

(declare-fun c!1282408 () Bool)

(assert (=> b!6902291 (= c!1282408 ((_ is Star!16867) lt!2466727))))

(declare-fun b!6902292 () Bool)

(declare-fun e!4156610 () Bool)

(assert (=> b!6902292 (= e!4156610 (matchRSpec!3930 (regTwo!34247 lt!2466727) s!14361))))

(declare-fun b!6902293 () Bool)

(declare-fun e!4156612 () Bool)

(assert (=> b!6902293 (= e!4156612 (= s!14361 (Cons!66500 (c!1282339 lt!2466727) Nil!66500)))))

(declare-fun bm!627658 () Bool)

(declare-fun call!627663 () Bool)

(assert (=> bm!627658 (= call!627663 (isEmpty!38730 s!14361))))

(declare-fun d!2162141 () Bool)

(declare-fun c!1282410 () Bool)

(assert (=> d!2162141 (= c!1282410 ((_ is EmptyExpr!16867) lt!2466727))))

(declare-fun e!4156613 () Bool)

(assert (=> d!2162141 (= (matchRSpec!3930 lt!2466727 s!14361) e!4156613)))

(declare-fun b!6902294 () Bool)

(declare-fun res!2814700 () Bool)

(declare-fun e!4156611 () Bool)

(assert (=> b!6902294 (=> res!2814700 e!4156611)))

(assert (=> b!6902294 (= res!2814700 call!627663)))

(assert (=> b!6902294 (= e!4156609 e!4156611)))

(declare-fun b!6902295 () Bool)

(declare-fun e!4156608 () Bool)

(assert (=> b!6902295 (= e!4156613 e!4156608)))

(declare-fun res!2814698 () Bool)

(assert (=> b!6902295 (= res!2814698 (not ((_ is EmptyLang!16867) lt!2466727)))))

(assert (=> b!6902295 (=> (not res!2814698) (not e!4156608))))

(declare-fun call!627664 () Bool)

(assert (=> b!6902296 (= e!4156611 call!627664)))

(declare-fun b!6902297 () Bool)

(declare-fun c!1282409 () Bool)

(assert (=> b!6902297 (= c!1282409 ((_ is Union!16867) lt!2466727))))

(assert (=> b!6902297 (= e!4156612 e!4156614)))

(declare-fun b!6902298 () Bool)

(declare-fun c!1282411 () Bool)

(assert (=> b!6902298 (= c!1282411 ((_ is ElementMatch!16867) lt!2466727))))

(assert (=> b!6902298 (= e!4156608 e!4156612)))

(declare-fun b!6902299 () Bool)

(assert (=> b!6902299 (= e!4156613 call!627663)))

(declare-fun b!6902300 () Bool)

(assert (=> b!6902300 (= e!4156614 e!4156610)))

(declare-fun res!2814699 () Bool)

(assert (=> b!6902300 (= res!2814699 (matchRSpec!3930 (regOne!34247 lt!2466727) s!14361))))

(assert (=> b!6902300 (=> res!2814699 e!4156610)))

(assert (=> b!6902301 (= e!4156609 call!627664)))

(declare-fun bm!627659 () Bool)

(assert (=> bm!627659 (= call!627664 (Exists!3875 (ite c!1282408 lambda!391950 lambda!391952)))))

(assert (= (and d!2162141 c!1282410) b!6902299))

(assert (= (and d!2162141 (not c!1282410)) b!6902295))

(assert (= (and b!6902295 res!2814698) b!6902298))

(assert (= (and b!6902298 c!1282411) b!6902293))

(assert (= (and b!6902298 (not c!1282411)) b!6902297))

(assert (= (and b!6902297 c!1282409) b!6902300))

(assert (= (and b!6902297 (not c!1282409)) b!6902291))

(assert (= (and b!6902300 (not res!2814699)) b!6902292))

(assert (= (and b!6902291 c!1282408) b!6902294))

(assert (= (and b!6902291 (not c!1282408)) b!6902301))

(assert (= (and b!6902294 (not res!2814700)) b!6902296))

(assert (= (or b!6902296 b!6902301) bm!627659))

(assert (= (or b!6902299 b!6902294) bm!627658))

(declare-fun m!7620264 () Bool)

(assert (=> b!6902292 m!7620264))

(assert (=> bm!627658 m!7620116))

(declare-fun m!7620266 () Bool)

(assert (=> b!6902300 m!7620266))

(declare-fun m!7620268 () Bool)

(assert (=> bm!627659 m!7620268))

(assert (=> b!6901980 d!2162141))

(declare-fun b!6902368 () Bool)

(declare-fun res!2814738 () Bool)

(declare-fun e!4156657 () Bool)

(assert (=> b!6902368 (=> res!2814738 e!4156657)))

(assert (=> b!6902368 (= res!2814738 (not ((_ is Concat!25712) r2!6280)))))

(declare-fun e!4156659 () Bool)

(assert (=> b!6902368 (= e!4156659 e!4156657)))

(declare-fun b!6902369 () Bool)

(declare-fun e!4156660 () Bool)

(declare-fun e!4156658 () Bool)

(assert (=> b!6902369 (= e!4156660 e!4156658)))

(declare-fun c!1282429 () Bool)

(assert (=> b!6902369 (= c!1282429 ((_ is Star!16867) r2!6280))))

(declare-fun b!6902370 () Bool)

(declare-fun e!4156655 () Bool)

(declare-fun call!627676 () Bool)

(assert (=> b!6902370 (= e!4156655 call!627676)))

(declare-fun bm!627670 () Bool)

(declare-fun c!1282428 () Bool)

(assert (=> bm!627670 (= call!627676 (validRegex!8575 (ite c!1282428 (regTwo!34247 r2!6280) (regOne!34246 r2!6280))))))

(declare-fun b!6902371 () Bool)

(declare-fun e!4156661 () Bool)

(declare-fun call!627677 () Bool)

(assert (=> b!6902371 (= e!4156661 call!627677)))

(declare-fun b!6902372 () Bool)

(assert (=> b!6902372 (= e!4156658 e!4156659)))

(assert (=> b!6902372 (= c!1282428 ((_ is Union!16867) r2!6280))))

(declare-fun bm!627671 () Bool)

(declare-fun call!627675 () Bool)

(assert (=> bm!627671 (= call!627675 (validRegex!8575 (ite c!1282429 (reg!17196 r2!6280) (ite c!1282428 (regOne!34247 r2!6280) (regTwo!34246 r2!6280)))))))

(declare-fun b!6902373 () Bool)

(declare-fun e!4156656 () Bool)

(assert (=> b!6902373 (= e!4156658 e!4156656)))

(declare-fun res!2814736 () Bool)

(assert (=> b!6902373 (= res!2814736 (not (nullable!6708 (reg!17196 r2!6280))))))

(assert (=> b!6902373 (=> (not res!2814736) (not e!4156656))))

(declare-fun b!6902374 () Bool)

(assert (=> b!6902374 (= e!4156656 call!627675)))

(declare-fun b!6902375 () Bool)

(declare-fun res!2814739 () Bool)

(assert (=> b!6902375 (=> (not res!2814739) (not e!4156655))))

(assert (=> b!6902375 (= res!2814739 call!627677)))

(assert (=> b!6902375 (= e!4156659 e!4156655)))

(declare-fun b!6902376 () Bool)

(assert (=> b!6902376 (= e!4156657 e!4156661)))

(declare-fun res!2814735 () Bool)

(assert (=> b!6902376 (=> (not res!2814735) (not e!4156661))))

(assert (=> b!6902376 (= res!2814735 call!627676)))

(declare-fun bm!627672 () Bool)

(assert (=> bm!627672 (= call!627677 call!627675)))

(declare-fun d!2162165 () Bool)

(declare-fun res!2814737 () Bool)

(assert (=> d!2162165 (=> res!2814737 e!4156660)))

(assert (=> d!2162165 (= res!2814737 ((_ is ElementMatch!16867) r2!6280))))

(assert (=> d!2162165 (= (validRegex!8575 r2!6280) e!4156660)))

(assert (= (and d!2162165 (not res!2814737)) b!6902369))

(assert (= (and b!6902369 c!1282429) b!6902373))

(assert (= (and b!6902369 (not c!1282429)) b!6902372))

(assert (= (and b!6902373 res!2814736) b!6902374))

(assert (= (and b!6902372 c!1282428) b!6902375))

(assert (= (and b!6902372 (not c!1282428)) b!6902368))

(assert (= (and b!6902375 res!2814739) b!6902370))

(assert (= (and b!6902368 (not res!2814738)) b!6902376))

(assert (= (and b!6902376 res!2814735) b!6902371))

(assert (= (or b!6902375 b!6902371) bm!627672))

(assert (= (or b!6902370 b!6902376) bm!627670))

(assert (= (or b!6902374 bm!627672) bm!627671))

(declare-fun m!7620302 () Bool)

(assert (=> bm!627670 m!7620302))

(declare-fun m!7620304 () Bool)

(assert (=> bm!627671 m!7620304))

(declare-fun m!7620306 () Bool)

(assert (=> b!6902373 m!7620306))

(assert (=> b!6901976 d!2162165))

(declare-fun b!6902391 () Bool)

(declare-fun res!2814751 () Bool)

(declare-fun e!4156671 () Bool)

(assert (=> b!6902391 (=> res!2814751 e!4156671)))

(assert (=> b!6902391 (= res!2814751 (not ((_ is Concat!25712) lt!2466744)))))

(declare-fun e!4156673 () Bool)

(assert (=> b!6902391 (= e!4156673 e!4156671)))

(declare-fun b!6902392 () Bool)

(declare-fun e!4156674 () Bool)

(declare-fun e!4156672 () Bool)

(assert (=> b!6902392 (= e!4156674 e!4156672)))

(declare-fun c!1282434 () Bool)

(assert (=> b!6902392 (= c!1282434 ((_ is Star!16867) lt!2466744))))

(declare-fun b!6902393 () Bool)

(declare-fun e!4156669 () Bool)

(declare-fun call!627680 () Bool)

(assert (=> b!6902393 (= e!4156669 call!627680)))

(declare-fun bm!627674 () Bool)

(declare-fun c!1282433 () Bool)

(assert (=> bm!627674 (= call!627680 (validRegex!8575 (ite c!1282433 (regTwo!34247 lt!2466744) (regOne!34246 lt!2466744))))))

(declare-fun b!6902394 () Bool)

(declare-fun e!4156675 () Bool)

(declare-fun call!627681 () Bool)

(assert (=> b!6902394 (= e!4156675 call!627681)))

(declare-fun b!6902395 () Bool)

(assert (=> b!6902395 (= e!4156672 e!4156673)))

(assert (=> b!6902395 (= c!1282433 ((_ is Union!16867) lt!2466744))))

(declare-fun call!627679 () Bool)

(declare-fun bm!627675 () Bool)

(assert (=> bm!627675 (= call!627679 (validRegex!8575 (ite c!1282434 (reg!17196 lt!2466744) (ite c!1282433 (regOne!34247 lt!2466744) (regTwo!34246 lt!2466744)))))))

(declare-fun b!6902396 () Bool)

(declare-fun e!4156670 () Bool)

(assert (=> b!6902396 (= e!4156672 e!4156670)))

(declare-fun res!2814749 () Bool)

(assert (=> b!6902396 (= res!2814749 (not (nullable!6708 (reg!17196 lt!2466744))))))

(assert (=> b!6902396 (=> (not res!2814749) (not e!4156670))))

(declare-fun b!6902397 () Bool)

(assert (=> b!6902397 (= e!4156670 call!627679)))

(declare-fun b!6902398 () Bool)

(declare-fun res!2814752 () Bool)

(assert (=> b!6902398 (=> (not res!2814752) (not e!4156669))))

(assert (=> b!6902398 (= res!2814752 call!627681)))

(assert (=> b!6902398 (= e!4156673 e!4156669)))

(declare-fun b!6902399 () Bool)

(assert (=> b!6902399 (= e!4156671 e!4156675)))

(declare-fun res!2814748 () Bool)

(assert (=> b!6902399 (=> (not res!2814748) (not e!4156675))))

(assert (=> b!6902399 (= res!2814748 call!627680)))

(declare-fun bm!627676 () Bool)

(assert (=> bm!627676 (= call!627681 call!627679)))

(declare-fun d!2162177 () Bool)

(declare-fun res!2814750 () Bool)

(assert (=> d!2162177 (=> res!2814750 e!4156674)))

(assert (=> d!2162177 (= res!2814750 ((_ is ElementMatch!16867) lt!2466744))))

(assert (=> d!2162177 (= (validRegex!8575 lt!2466744) e!4156674)))

(assert (= (and d!2162177 (not res!2814750)) b!6902392))

(assert (= (and b!6902392 c!1282434) b!6902396))

(assert (= (and b!6902392 (not c!1282434)) b!6902395))

(assert (= (and b!6902396 res!2814749) b!6902397))

(assert (= (and b!6902395 c!1282433) b!6902398))

(assert (= (and b!6902395 (not c!1282433)) b!6902391))

(assert (= (and b!6902398 res!2814752) b!6902393))

(assert (= (and b!6902391 (not res!2814751)) b!6902399))

(assert (= (and b!6902399 res!2814748) b!6902394))

(assert (= (or b!6902398 b!6902394) bm!627676))

(assert (= (or b!6902393 b!6902399) bm!627674))

(assert (= (or b!6902397 bm!627676) bm!627675))

(declare-fun m!7620324 () Bool)

(assert (=> bm!627674 m!7620324))

(declare-fun m!7620326 () Bool)

(assert (=> bm!627675 m!7620326))

(declare-fun m!7620328 () Bool)

(assert (=> b!6902396 m!7620328))

(assert (=> b!6901987 d!2162177))

(declare-fun d!2162185 () Bool)

(declare-fun choose!51389 (Int) Bool)

(assert (=> d!2162185 (= (Exists!3875 lambda!391925) (choose!51389 lambda!391925))))

(declare-fun bs!1842565 () Bool)

(assert (= bs!1842565 d!2162185))

(declare-fun m!7620334 () Bool)

(assert (=> bs!1842565 m!7620334))

(assert (=> b!6901987 d!2162185))

(declare-fun d!2162187 () Bool)

(assert (=> d!2162187 (= (Exists!3875 lambda!391926) (choose!51389 lambda!391926))))

(declare-fun bs!1842566 () Bool)

(assert (= bs!1842566 d!2162187))

(declare-fun m!7620344 () Bool)

(assert (=> bs!1842566 m!7620344))

(assert (=> b!6901987 d!2162187))

(declare-fun bs!1842586 () Bool)

(declare-fun d!2162189 () Bool)

(assert (= bs!1842586 (and d!2162189 b!6901981)))

(declare-fun lambda!391963 () Int)

(assert (=> bs!1842586 (not (= lambda!391963 lambda!391921))))

(assert (=> bs!1842586 (not (= lambda!391963 lambda!391919))))

(assert (=> bs!1842586 (= (and (= r1!6342 lt!2466741) (= lt!2466750 r3!135)) (= lambda!391963 lambda!391924))))

(declare-fun bs!1842587 () Bool)

(assert (= bs!1842587 (and d!2162189 b!6902301)))

(assert (=> bs!1842587 (not (= lambda!391963 lambda!391952))))

(assert (=> bs!1842586 (not (= lambda!391963 lambda!391923))))

(declare-fun bs!1842588 () Bool)

(assert (= bs!1842588 (and d!2162189 b!6901988)))

(assert (=> bs!1842588 (= lambda!391963 lambda!391925)))

(assert (=> bs!1842586 (= (and (= s!14361 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= lt!2466750 r3!135)) (= lambda!391963 lambda!391920))))

(declare-fun bs!1842590 () Bool)

(assert (= bs!1842590 (and d!2162189 b!6901987)))

(assert (=> bs!1842590 (not (= lambda!391963 lambda!391926))))

(assert (=> bs!1842586 (= lambda!391963 lambda!391918)))

(declare-fun bs!1842591 () Bool)

(assert (= bs!1842591 (and d!2162189 b!6902296)))

(assert (=> bs!1842591 (not (= lambda!391963 lambda!391950))))

(assert (=> bs!1842586 (= (and (= s!14361 lt!2466728) (= lt!2466750 r2!6280)) (= lambda!391963 lambda!391922))))

(declare-fun bs!1842592 () Bool)

(assert (= bs!1842592 (and d!2162189 b!6902251)))

(assert (=> bs!1842592 (not (= lambda!391963 lambda!391947))))

(declare-fun bs!1842594 () Bool)

(assert (= bs!1842594 (and d!2162189 b!6902246)))

(assert (=> bs!1842594 (not (= lambda!391963 lambda!391946))))

(assert (=> d!2162189 true))

(assert (=> d!2162189 true))

(assert (=> d!2162189 true))

(declare-fun lambda!391965 () Int)

(assert (=> bs!1842586 (= (and (= s!14361 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= lt!2466750 r3!135)) (= lambda!391965 lambda!391921))))

(assert (=> bs!1842586 (= lambda!391965 lambda!391919)))

(assert (=> bs!1842586 (not (= lambda!391965 lambda!391924))))

(assert (=> bs!1842587 (= (and (= r1!6342 (regOne!34246 lt!2466727)) (= lt!2466750 (regTwo!34246 lt!2466727))) (= lambda!391965 lambda!391952))))

(assert (=> bs!1842586 (= (and (= s!14361 lt!2466728) (= lt!2466750 r2!6280)) (= lambda!391965 lambda!391923))))

(assert (=> bs!1842588 (not (= lambda!391965 lambda!391925))))

(assert (=> bs!1842586 (not (= lambda!391965 lambda!391920))))

(assert (=> bs!1842590 (= lambda!391965 lambda!391926)))

(assert (=> bs!1842586 (not (= lambda!391965 lambda!391918))))

(declare-fun bs!1842609 () Bool)

(assert (= bs!1842609 d!2162189))

(assert (=> bs!1842609 (not (= lambda!391965 lambda!391963))))

(assert (=> bs!1842591 (not (= lambda!391965 lambda!391950))))

(assert (=> bs!1842586 (not (= lambda!391965 lambda!391922))))

(assert (=> bs!1842592 (= (and (= r1!6342 (regOne!34246 lt!2466744)) (= lt!2466750 (regTwo!34246 lt!2466744))) (= lambda!391965 lambda!391947))))

(assert (=> bs!1842594 (not (= lambda!391965 lambda!391946))))

(assert (=> d!2162189 true))

(assert (=> d!2162189 true))

(assert (=> d!2162189 true))

(assert (=> d!2162189 (= (Exists!3875 lambda!391963) (Exists!3875 lambda!391965))))

(declare-fun lt!2466819 () Unit!160468)

(declare-fun choose!51390 (Regex!16867 Regex!16867 List!66624) Unit!160468)

(assert (=> d!2162189 (= lt!2466819 (choose!51390 r1!6342 lt!2466750 s!14361))))

(assert (=> d!2162189 (validRegex!8575 r1!6342)))

(assert (=> d!2162189 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2348 r1!6342 lt!2466750 s!14361) lt!2466819)))

(declare-fun m!7620428 () Bool)

(assert (=> bs!1842609 m!7620428))

(declare-fun m!7620430 () Bool)

(assert (=> bs!1842609 m!7620430))

(declare-fun m!7620432 () Bool)

(assert (=> bs!1842609 m!7620432))

(assert (=> bs!1842609 m!7620078))

(assert (=> b!6901987 d!2162189))

(declare-fun bs!1842668 () Bool)

(declare-fun d!2162215 () Bool)

(assert (= bs!1842668 (and d!2162215 b!6901981)))

(declare-fun lambda!391973 () Int)

(assert (=> bs!1842668 (not (= lambda!391973 lambda!391921))))

(assert (=> bs!1842668 (not (= lambda!391973 lambda!391919))))

(assert (=> bs!1842668 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 lt!2466741)) (= lambda!391973 lambda!391924))))

(declare-fun bs!1842674 () Bool)

(assert (= bs!1842674 (and d!2162215 b!6902301)))

(assert (=> bs!1842674 (not (= lambda!391973 lambda!391952))))

(assert (=> bs!1842668 (not (= lambda!391973 lambda!391923))))

(declare-fun bs!1842676 () Bool)

(assert (= bs!1842676 (and d!2162215 b!6901988)))

(assert (=> bs!1842676 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391973 lambda!391925))))

(assert (=> bs!1842668 (= lambda!391973 lambda!391920)))

(declare-fun bs!1842680 () Bool)

(assert (= bs!1842680 (and d!2162215 b!6901987)))

(assert (=> bs!1842680 (not (= lambda!391973 lambda!391926))))

(assert (=> bs!1842668 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391973 lambda!391918))))

(declare-fun bs!1842684 () Bool)

(assert (= bs!1842684 (and d!2162215 d!2162189)))

(assert (=> bs!1842684 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391973 lambda!391963))))

(assert (=> bs!1842684 (not (= lambda!391973 lambda!391965))))

(declare-fun bs!1842687 () Bool)

(assert (= bs!1842687 (and d!2162215 b!6902296)))

(assert (=> bs!1842687 (not (= lambda!391973 lambda!391950))))

(assert (=> bs!1842668 (= (and (= (_2!37037 lt!2466743) lt!2466728) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!391973 lambda!391922))))

(declare-fun bs!1842688 () Bool)

(assert (= bs!1842688 (and d!2162215 b!6902251)))

(assert (=> bs!1842688 (not (= lambda!391973 lambda!391947))))

(declare-fun bs!1842689 () Bool)

(assert (= bs!1842689 (and d!2162215 b!6902246)))

(assert (=> bs!1842689 (not (= lambda!391973 lambda!391946))))

(assert (=> d!2162215 true))

(assert (=> d!2162215 true))

(assert (=> d!2162215 true))

(assert (=> d!2162215 (= (isDefined!13349 (findConcatSeparation!3060 r2!6280 r3!135 Nil!66500 (_2!37037 lt!2466743) (_2!37037 lt!2466743))) (Exists!3875 lambda!391973))))

(declare-fun lt!2466826 () Unit!160468)

(declare-fun choose!51391 (Regex!16867 Regex!16867 List!66624) Unit!160468)

(assert (=> d!2162215 (= lt!2466826 (choose!51391 r2!6280 r3!135 (_2!37037 lt!2466743)))))

(assert (=> d!2162215 (validRegex!8575 r2!6280)))

(assert (=> d!2162215 (= (lemmaFindConcatSeparationEquivalentToExists!2822 r2!6280 r3!135 (_2!37037 lt!2466743)) lt!2466826)))

(declare-fun bs!1842690 () Bool)

(assert (= bs!1842690 d!2162215))

(assert (=> bs!1842690 m!7620006))

(declare-fun m!7620454 () Bool)

(assert (=> bs!1842690 m!7620454))

(declare-fun m!7620456 () Bool)

(assert (=> bs!1842690 m!7620456))

(assert (=> bs!1842690 m!7620006))

(assert (=> bs!1842690 m!7620076))

(declare-fun m!7620458 () Bool)

(assert (=> bs!1842690 m!7620458))

(assert (=> b!6901981 d!2162215))

(declare-fun d!2162225 () Bool)

(assert (=> d!2162225 (= (matchR!9012 lt!2466750 (_2!37037 lt!2466743)) (matchRSpec!3930 lt!2466750 (_2!37037 lt!2466743)))))

(declare-fun lt!2466830 () Unit!160468)

(assert (=> d!2162225 (= lt!2466830 (choose!51388 lt!2466750 (_2!37037 lt!2466743)))))

(assert (=> d!2162225 (validRegex!8575 lt!2466750)))

(assert (=> d!2162225 (= (mainMatchTheorem!3930 lt!2466750 (_2!37037 lt!2466743)) lt!2466830)))

(declare-fun bs!1842691 () Bool)

(assert (= bs!1842691 d!2162225))

(assert (=> bs!1842691 m!7620042))

(assert (=> bs!1842691 m!7620030))

(declare-fun m!7620466 () Bool)

(assert (=> bs!1842691 m!7620466))

(assert (=> bs!1842691 m!7619972))

(assert (=> b!6901981 d!2162225))

(declare-fun d!2162227 () Bool)

(declare-fun isEmpty!38731 (Option!16646) Bool)

(assert (=> d!2162227 (= (isDefined!13349 (findConcatSeparation!3060 lt!2466741 r3!135 Nil!66500 s!14361 s!14361)) (not (isEmpty!38731 (findConcatSeparation!3060 lt!2466741 r3!135 Nil!66500 s!14361 s!14361))))))

(declare-fun bs!1842692 () Bool)

(assert (= bs!1842692 d!2162227))

(assert (=> bs!1842692 m!7620034))

(declare-fun m!7620484 () Bool)

(assert (=> bs!1842692 m!7620484))

(assert (=> b!6901981 d!2162227))

(declare-fun d!2162231 () Bool)

(assert (=> d!2162231 (= (isDefined!13349 (findConcatSeparation!3060 r1!6342 r2!6280 Nil!66500 lt!2466728 lt!2466728)) (not (isEmpty!38731 (findConcatSeparation!3060 r1!6342 r2!6280 Nil!66500 lt!2466728 lt!2466728))))))

(declare-fun bs!1842695 () Bool)

(assert (= bs!1842695 d!2162231))

(assert (=> bs!1842695 m!7620050))

(declare-fun m!7620486 () Bool)

(assert (=> bs!1842695 m!7620486))

(assert (=> b!6901981 d!2162231))

(declare-fun d!2162233 () Bool)

(assert (=> d!2162233 (= (matchR!9012 r2!6280 (_1!37037 lt!2466737)) (matchRSpec!3930 r2!6280 (_1!37037 lt!2466737)))))

(declare-fun lt!2466831 () Unit!160468)

(assert (=> d!2162233 (= lt!2466831 (choose!51388 r2!6280 (_1!37037 lt!2466737)))))

(assert (=> d!2162233 (validRegex!8575 r2!6280)))

(assert (=> d!2162233 (= (mainMatchTheorem!3930 r2!6280 (_1!37037 lt!2466737)) lt!2466831)))

(declare-fun bs!1842698 () Bool)

(assert (= bs!1842698 d!2162233))

(assert (=> bs!1842698 m!7620032))

(assert (=> bs!1842698 m!7620038))

(declare-fun m!7620488 () Bool)

(assert (=> bs!1842698 m!7620488))

(assert (=> bs!1842698 m!7620076))

(assert (=> b!6901981 d!2162233))

(declare-fun d!2162235 () Bool)

(assert (=> d!2162235 (= (Exists!3875 lambda!391922) (choose!51389 lambda!391922))))

(declare-fun bs!1842700 () Bool)

(assert (= bs!1842700 d!2162235))

(declare-fun m!7620490 () Bool)

(assert (=> bs!1842700 m!7620490))

(assert (=> b!6901981 d!2162235))

(declare-fun d!2162237 () Bool)

(assert (=> d!2162237 (= (matchR!9012 lt!2466741 lt!2466728) (matchRSpec!3930 lt!2466741 lt!2466728))))

(declare-fun lt!2466832 () Unit!160468)

(assert (=> d!2162237 (= lt!2466832 (choose!51388 lt!2466741 lt!2466728))))

(assert (=> d!2162237 (validRegex!8575 lt!2466741)))

(assert (=> d!2162237 (= (mainMatchTheorem!3930 lt!2466741 lt!2466728) lt!2466832)))

(declare-fun bs!1842703 () Bool)

(assert (= bs!1842703 d!2162237))

(assert (=> bs!1842703 m!7620024))

(assert (=> bs!1842703 m!7620012))

(declare-fun m!7620492 () Bool)

(assert (=> bs!1842703 m!7620492))

(declare-fun m!7620494 () Bool)

(assert (=> bs!1842703 m!7620494))

(assert (=> b!6901981 d!2162237))

(declare-fun b!6902511 () Bool)

(declare-fun e!4156742 () Bool)

(declare-fun e!4156741 () Bool)

(assert (=> b!6902511 (= e!4156742 e!4156741)))

(declare-fun res!2814810 () Bool)

(assert (=> b!6902511 (=> (not res!2814810) (not e!4156741))))

(declare-fun lt!2466833 () Bool)

(assert (=> b!6902511 (= res!2814810 (not lt!2466833))))

(declare-fun b!6902512 () Bool)

(declare-fun res!2814812 () Bool)

(declare-fun e!4156739 () Bool)

(assert (=> b!6902512 (=> (not res!2814812) (not e!4156739))))

(declare-fun call!627690 () Bool)

(assert (=> b!6902512 (= res!2814812 (not call!627690))))

(declare-fun b!6902513 () Bool)

(declare-fun e!4156737 () Bool)

(assert (=> b!6902513 (= e!4156737 (matchR!9012 (derivativeStep!5387 r2!6280 (head!13840 (_1!37037 lt!2466737))) (tail!12892 (_1!37037 lt!2466737))))))

(declare-fun b!6902514 () Bool)

(declare-fun e!4156740 () Bool)

(assert (=> b!6902514 (= e!4156741 e!4156740)))

(declare-fun res!2814816 () Bool)

(assert (=> b!6902514 (=> res!2814816 e!4156740)))

(assert (=> b!6902514 (= res!2814816 call!627690)))

(declare-fun b!6902515 () Bool)

(assert (=> b!6902515 (= e!4156739 (= (head!13840 (_1!37037 lt!2466737)) (c!1282339 r2!6280)))))

(declare-fun b!6902516 () Bool)

(assert (=> b!6902516 (= e!4156740 (not (= (head!13840 (_1!37037 lt!2466737)) (c!1282339 r2!6280))))))

(declare-fun b!6902517 () Bool)

(assert (=> b!6902517 (= e!4156737 (nullable!6708 r2!6280))))

(declare-fun b!6902518 () Bool)

(declare-fun e!4156743 () Bool)

(declare-fun e!4156738 () Bool)

(assert (=> b!6902518 (= e!4156743 e!4156738)))

(declare-fun c!1282464 () Bool)

(assert (=> b!6902518 (= c!1282464 ((_ is EmptyLang!16867) r2!6280))))

(declare-fun b!6902519 () Bool)

(declare-fun res!2814817 () Bool)

(assert (=> b!6902519 (=> res!2814817 e!4156742)))

(assert (=> b!6902519 (= res!2814817 (not ((_ is ElementMatch!16867) r2!6280)))))

(assert (=> b!6902519 (= e!4156738 e!4156742)))

(declare-fun d!2162239 () Bool)

(assert (=> d!2162239 e!4156743))

(declare-fun c!1282462 () Bool)

(assert (=> d!2162239 (= c!1282462 ((_ is EmptyExpr!16867) r2!6280))))

(assert (=> d!2162239 (= lt!2466833 e!4156737)))

(declare-fun c!1282463 () Bool)

(assert (=> d!2162239 (= c!1282463 (isEmpty!38730 (_1!37037 lt!2466737)))))

(assert (=> d!2162239 (validRegex!8575 r2!6280)))

(assert (=> d!2162239 (= (matchR!9012 r2!6280 (_1!37037 lt!2466737)) lt!2466833)))

(declare-fun b!6902520 () Bool)

(declare-fun res!2814813 () Bool)

(assert (=> b!6902520 (=> res!2814813 e!4156742)))

(assert (=> b!6902520 (= res!2814813 e!4156739)))

(declare-fun res!2814811 () Bool)

(assert (=> b!6902520 (=> (not res!2814811) (not e!4156739))))

(assert (=> b!6902520 (= res!2814811 lt!2466833)))

(declare-fun b!6902521 () Bool)

(declare-fun res!2814814 () Bool)

(assert (=> b!6902521 (=> res!2814814 e!4156740)))

(assert (=> b!6902521 (= res!2814814 (not (isEmpty!38730 (tail!12892 (_1!37037 lt!2466737)))))))

(declare-fun b!6902522 () Bool)

(assert (=> b!6902522 (= e!4156738 (not lt!2466833))))

(declare-fun b!6902523 () Bool)

(assert (=> b!6902523 (= e!4156743 (= lt!2466833 call!627690))))

(declare-fun bm!627685 () Bool)

(assert (=> bm!627685 (= call!627690 (isEmpty!38730 (_1!37037 lt!2466737)))))

(declare-fun b!6902524 () Bool)

(declare-fun res!2814815 () Bool)

(assert (=> b!6902524 (=> (not res!2814815) (not e!4156739))))

(assert (=> b!6902524 (= res!2814815 (isEmpty!38730 (tail!12892 (_1!37037 lt!2466737))))))

(assert (= (and d!2162239 c!1282463) b!6902517))

(assert (= (and d!2162239 (not c!1282463)) b!6902513))

(assert (= (and d!2162239 c!1282462) b!6902523))

(assert (= (and d!2162239 (not c!1282462)) b!6902518))

(assert (= (and b!6902518 c!1282464) b!6902522))

(assert (= (and b!6902518 (not c!1282464)) b!6902519))

(assert (= (and b!6902519 (not res!2814817)) b!6902520))

(assert (= (and b!6902520 res!2814811) b!6902512))

(assert (= (and b!6902512 res!2814812) b!6902524))

(assert (= (and b!6902524 res!2814815) b!6902515))

(assert (= (and b!6902520 (not res!2814813)) b!6902511))

(assert (= (and b!6902511 res!2814810) b!6902514))

(assert (= (and b!6902514 (not res!2814816)) b!6902521))

(assert (= (and b!6902521 (not res!2814814)) b!6902516))

(assert (= (or b!6902523 b!6902512 b!6902514) bm!627685))

(declare-fun m!7620496 () Bool)

(assert (=> d!2162239 m!7620496))

(assert (=> d!2162239 m!7620076))

(declare-fun m!7620498 () Bool)

(assert (=> b!6902517 m!7620498))

(declare-fun m!7620500 () Bool)

(assert (=> b!6902524 m!7620500))

(assert (=> b!6902524 m!7620500))

(declare-fun m!7620502 () Bool)

(assert (=> b!6902524 m!7620502))

(declare-fun m!7620504 () Bool)

(assert (=> b!6902513 m!7620504))

(assert (=> b!6902513 m!7620504))

(declare-fun m!7620506 () Bool)

(assert (=> b!6902513 m!7620506))

(assert (=> b!6902513 m!7620500))

(assert (=> b!6902513 m!7620506))

(assert (=> b!6902513 m!7620500))

(declare-fun m!7620508 () Bool)

(assert (=> b!6902513 m!7620508))

(assert (=> b!6902515 m!7620504))

(assert (=> b!6902516 m!7620504))

(assert (=> b!6902521 m!7620500))

(assert (=> b!6902521 m!7620500))

(assert (=> b!6902521 m!7620502))

(assert (=> bm!627685 m!7620496))

(assert (=> b!6901981 d!2162239))

(assert (=> b!6901981 d!2162189))

(declare-fun b!6902525 () Bool)

(declare-fun e!4156749 () Bool)

(declare-fun e!4156748 () Bool)

(assert (=> b!6902525 (= e!4156749 e!4156748)))

(declare-fun res!2814818 () Bool)

(assert (=> b!6902525 (=> (not res!2814818) (not e!4156748))))

(declare-fun lt!2466834 () Bool)

(assert (=> b!6902525 (= res!2814818 (not lt!2466834))))

(declare-fun b!6902526 () Bool)

(declare-fun res!2814820 () Bool)

(declare-fun e!4156746 () Bool)

(assert (=> b!6902526 (=> (not res!2814820) (not e!4156746))))

(declare-fun call!627691 () Bool)

(assert (=> b!6902526 (= res!2814820 (not call!627691))))

(declare-fun b!6902527 () Bool)

(declare-fun e!4156744 () Bool)

(assert (=> b!6902527 (= e!4156744 (matchR!9012 (derivativeStep!5387 r1!6342 (head!13840 (_1!37037 lt!2466743))) (tail!12892 (_1!37037 lt!2466743))))))

(declare-fun b!6902528 () Bool)

(declare-fun e!4156747 () Bool)

(assert (=> b!6902528 (= e!4156748 e!4156747)))

(declare-fun res!2814824 () Bool)

(assert (=> b!6902528 (=> res!2814824 e!4156747)))

(assert (=> b!6902528 (= res!2814824 call!627691)))

(declare-fun b!6902529 () Bool)

(assert (=> b!6902529 (= e!4156746 (= (head!13840 (_1!37037 lt!2466743)) (c!1282339 r1!6342)))))

(declare-fun b!6902530 () Bool)

(assert (=> b!6902530 (= e!4156747 (not (= (head!13840 (_1!37037 lt!2466743)) (c!1282339 r1!6342))))))

(declare-fun b!6902531 () Bool)

(assert (=> b!6902531 (= e!4156744 (nullable!6708 r1!6342))))

(declare-fun b!6902532 () Bool)

(declare-fun e!4156750 () Bool)

(declare-fun e!4156745 () Bool)

(assert (=> b!6902532 (= e!4156750 e!4156745)))

(declare-fun c!1282467 () Bool)

(assert (=> b!6902532 (= c!1282467 ((_ is EmptyLang!16867) r1!6342))))

(declare-fun b!6902533 () Bool)

(declare-fun res!2814825 () Bool)

(assert (=> b!6902533 (=> res!2814825 e!4156749)))

(assert (=> b!6902533 (= res!2814825 (not ((_ is ElementMatch!16867) r1!6342)))))

(assert (=> b!6902533 (= e!4156745 e!4156749)))

(declare-fun d!2162241 () Bool)

(assert (=> d!2162241 e!4156750))

(declare-fun c!1282465 () Bool)

(assert (=> d!2162241 (= c!1282465 ((_ is EmptyExpr!16867) r1!6342))))

(assert (=> d!2162241 (= lt!2466834 e!4156744)))

(declare-fun c!1282466 () Bool)

(assert (=> d!2162241 (= c!1282466 (isEmpty!38730 (_1!37037 lt!2466743)))))

(assert (=> d!2162241 (validRegex!8575 r1!6342)))

(assert (=> d!2162241 (= (matchR!9012 r1!6342 (_1!37037 lt!2466743)) lt!2466834)))

(declare-fun b!6902534 () Bool)

(declare-fun res!2814821 () Bool)

(assert (=> b!6902534 (=> res!2814821 e!4156749)))

(assert (=> b!6902534 (= res!2814821 e!4156746)))

(declare-fun res!2814819 () Bool)

(assert (=> b!6902534 (=> (not res!2814819) (not e!4156746))))

(assert (=> b!6902534 (= res!2814819 lt!2466834)))

(declare-fun b!6902535 () Bool)

(declare-fun res!2814822 () Bool)

(assert (=> b!6902535 (=> res!2814822 e!4156747)))

(assert (=> b!6902535 (= res!2814822 (not (isEmpty!38730 (tail!12892 (_1!37037 lt!2466743)))))))

(declare-fun b!6902536 () Bool)

(assert (=> b!6902536 (= e!4156745 (not lt!2466834))))

(declare-fun b!6902537 () Bool)

(assert (=> b!6902537 (= e!4156750 (= lt!2466834 call!627691))))

(declare-fun bm!627686 () Bool)

(assert (=> bm!627686 (= call!627691 (isEmpty!38730 (_1!37037 lt!2466743)))))

(declare-fun b!6902538 () Bool)

(declare-fun res!2814823 () Bool)

(assert (=> b!6902538 (=> (not res!2814823) (not e!4156746))))

(assert (=> b!6902538 (= res!2814823 (isEmpty!38730 (tail!12892 (_1!37037 lt!2466743))))))

(assert (= (and d!2162241 c!1282466) b!6902531))

(assert (= (and d!2162241 (not c!1282466)) b!6902527))

(assert (= (and d!2162241 c!1282465) b!6902537))

(assert (= (and d!2162241 (not c!1282465)) b!6902532))

(assert (= (and b!6902532 c!1282467) b!6902536))

(assert (= (and b!6902532 (not c!1282467)) b!6902533))

(assert (= (and b!6902533 (not res!2814825)) b!6902534))

(assert (= (and b!6902534 res!2814819) b!6902526))

(assert (= (and b!6902526 res!2814820) b!6902538))

(assert (= (and b!6902538 res!2814823) b!6902529))

(assert (= (and b!6902534 (not res!2814821)) b!6902525))

(assert (= (and b!6902525 res!2814818) b!6902528))

(assert (= (and b!6902528 (not res!2814824)) b!6902535))

(assert (= (and b!6902535 (not res!2814822)) b!6902530))

(assert (= (or b!6902537 b!6902526 b!6902528) bm!627686))

(declare-fun m!7620510 () Bool)

(assert (=> d!2162241 m!7620510))

(assert (=> d!2162241 m!7620078))

(declare-fun m!7620512 () Bool)

(assert (=> b!6902531 m!7620512))

(declare-fun m!7620514 () Bool)

(assert (=> b!6902538 m!7620514))

(assert (=> b!6902538 m!7620514))

(declare-fun m!7620516 () Bool)

(assert (=> b!6902538 m!7620516))

(declare-fun m!7620518 () Bool)

(assert (=> b!6902527 m!7620518))

(assert (=> b!6902527 m!7620518))

(declare-fun m!7620520 () Bool)

(assert (=> b!6902527 m!7620520))

(assert (=> b!6902527 m!7620514))

(assert (=> b!6902527 m!7620520))

(assert (=> b!6902527 m!7620514))

(declare-fun m!7620522 () Bool)

(assert (=> b!6902527 m!7620522))

(assert (=> b!6902529 m!7620518))

(assert (=> b!6902530 m!7620518))

(assert (=> b!6902535 m!7620514))

(assert (=> b!6902535 m!7620514))

(assert (=> b!6902535 m!7620516))

(assert (=> bm!627686 m!7620510))

(assert (=> b!6901981 d!2162241))

(declare-fun bs!1842731 () Bool)

(declare-fun d!2162243 () Bool)

(assert (= bs!1842731 (and d!2162243 b!6901981)))

(declare-fun lambda!391976 () Int)

(assert (=> bs!1842731 (not (= lambda!391976 lambda!391921))))

(assert (=> bs!1842731 (not (= lambda!391976 lambda!391919))))

(assert (=> bs!1842731 (= (and (= r1!6342 lt!2466741) (= lt!2466750 r3!135)) (= lambda!391976 lambda!391924))))

(declare-fun bs!1842737 () Bool)

(assert (= bs!1842737 (and d!2162243 b!6902301)))

(assert (=> bs!1842737 (not (= lambda!391976 lambda!391952))))

(assert (=> bs!1842731 (not (= lambda!391976 lambda!391923))))

(declare-fun bs!1842740 () Bool)

(assert (= bs!1842740 (and d!2162243 b!6901988)))

(assert (=> bs!1842740 (= lambda!391976 lambda!391925)))

(assert (=> bs!1842731 (= (and (= s!14361 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= lt!2466750 r3!135)) (= lambda!391976 lambda!391920))))

(declare-fun bs!1842741 () Bool)

(assert (= bs!1842741 (and d!2162243 b!6901987)))

(assert (=> bs!1842741 (not (= lambda!391976 lambda!391926))))

(assert (=> bs!1842731 (= lambda!391976 lambda!391918)))

(declare-fun bs!1842743 () Bool)

(assert (= bs!1842743 (and d!2162243 d!2162189)))

(assert (=> bs!1842743 (= lambda!391976 lambda!391963)))

(assert (=> bs!1842743 (not (= lambda!391976 lambda!391965))))

(declare-fun bs!1842744 () Bool)

(assert (= bs!1842744 (and d!2162243 d!2162215)))

(assert (=> bs!1842744 (= (and (= s!14361 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= lt!2466750 r3!135)) (= lambda!391976 lambda!391973))))

(declare-fun bs!1842745 () Bool)

(assert (= bs!1842745 (and d!2162243 b!6902296)))

(assert (=> bs!1842745 (not (= lambda!391976 lambda!391950))))

(assert (=> bs!1842731 (= (and (= s!14361 lt!2466728) (= lt!2466750 r2!6280)) (= lambda!391976 lambda!391922))))

(declare-fun bs!1842746 () Bool)

(assert (= bs!1842746 (and d!2162243 b!6902251)))

(assert (=> bs!1842746 (not (= lambda!391976 lambda!391947))))

(declare-fun bs!1842748 () Bool)

(assert (= bs!1842748 (and d!2162243 b!6902246)))

(assert (=> bs!1842748 (not (= lambda!391976 lambda!391946))))

(assert (=> d!2162243 true))

(assert (=> d!2162243 true))

(assert (=> d!2162243 true))

(assert (=> d!2162243 (= (isDefined!13349 (findConcatSeparation!3060 r1!6342 lt!2466750 Nil!66500 s!14361 s!14361)) (Exists!3875 lambda!391976))))

(declare-fun lt!2466835 () Unit!160468)

(assert (=> d!2162243 (= lt!2466835 (choose!51391 r1!6342 lt!2466750 s!14361))))

(assert (=> d!2162243 (validRegex!8575 r1!6342)))

(assert (=> d!2162243 (= (lemmaFindConcatSeparationEquivalentToExists!2822 r1!6342 lt!2466750 s!14361) lt!2466835)))

(declare-fun bs!1842754 () Bool)

(assert (= bs!1842754 d!2162243))

(assert (=> bs!1842754 m!7619970))

(declare-fun m!7620542 () Bool)

(assert (=> bs!1842754 m!7620542))

(declare-fun m!7620544 () Bool)

(assert (=> bs!1842754 m!7620544))

(assert (=> bs!1842754 m!7619970))

(assert (=> bs!1842754 m!7620078))

(declare-fun m!7620546 () Bool)

(assert (=> bs!1842754 m!7620546))

(assert (=> b!6901981 d!2162243))

(declare-fun d!2162253 () Bool)

(assert (=> d!2162253 (= (Exists!3875 lambda!391918) (choose!51389 lambda!391918))))

(declare-fun bs!1842756 () Bool)

(assert (= bs!1842756 d!2162253))

(declare-fun m!7620548 () Bool)

(assert (=> bs!1842756 m!7620548))

(assert (=> b!6901981 d!2162253))

(declare-fun d!2162255 () Bool)

(assert (=> d!2162255 (= (Exists!3875 lambda!391923) (choose!51389 lambda!391923))))

(declare-fun bs!1842759 () Bool)

(assert (= bs!1842759 d!2162255))

(declare-fun m!7620550 () Bool)

(assert (=> bs!1842759 m!7620550))

(assert (=> b!6901981 d!2162255))

(declare-fun d!2162257 () Bool)

(assert (=> d!2162257 (= (get!23251 lt!2466745) (v!52917 lt!2466745))))

(assert (=> b!6901981 d!2162257))

(declare-fun bs!1842771 () Bool)

(declare-fun d!2162259 () Bool)

(assert (= bs!1842771 (and d!2162259 b!6901981)))

(declare-fun lambda!391978 () Int)

(assert (=> bs!1842771 (not (= lambda!391978 lambda!391921))))

(assert (=> bs!1842771 (= lambda!391978 lambda!391924)))

(declare-fun bs!1842774 () Bool)

(assert (= bs!1842774 (and d!2162259 b!6902301)))

(assert (=> bs!1842774 (not (= lambda!391978 lambda!391952))))

(assert (=> bs!1842771 (not (= lambda!391978 lambda!391923))))

(declare-fun bs!1842775 () Bool)

(assert (= bs!1842775 (and d!2162259 b!6901988)))

(assert (=> bs!1842775 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391978 lambda!391925))))

(assert (=> bs!1842771 (= (and (= s!14361 (_2!37037 lt!2466743)) (= lt!2466741 r2!6280)) (= lambda!391978 lambda!391920))))

(declare-fun bs!1842776 () Bool)

(assert (= bs!1842776 (and d!2162259 b!6901987)))

(assert (=> bs!1842776 (not (= lambda!391978 lambda!391926))))

(assert (=> bs!1842771 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391978 lambda!391918))))

(declare-fun bs!1842779 () Bool)

(assert (= bs!1842779 (and d!2162259 d!2162189)))

(assert (=> bs!1842779 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391978 lambda!391963))))

(assert (=> bs!1842779 (not (= lambda!391978 lambda!391965))))

(assert (=> bs!1842771 (not (= lambda!391978 lambda!391919))))

(declare-fun bs!1842783 () Bool)

(assert (= bs!1842783 (and d!2162259 d!2162243)))

(assert (=> bs!1842783 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391978 lambda!391976))))

(declare-fun bs!1842784 () Bool)

(assert (= bs!1842784 (and d!2162259 d!2162215)))

(assert (=> bs!1842784 (= (and (= s!14361 (_2!37037 lt!2466743)) (= lt!2466741 r2!6280)) (= lambda!391978 lambda!391973))))

(declare-fun bs!1842785 () Bool)

(assert (= bs!1842785 (and d!2162259 b!6902296)))

(assert (=> bs!1842785 (not (= lambda!391978 lambda!391950))))

(assert (=> bs!1842771 (= (and (= s!14361 lt!2466728) (= lt!2466741 r1!6342) (= r3!135 r2!6280)) (= lambda!391978 lambda!391922))))

(declare-fun bs!1842787 () Bool)

(assert (= bs!1842787 (and d!2162259 b!6902251)))

(assert (=> bs!1842787 (not (= lambda!391978 lambda!391947))))

(declare-fun bs!1842789 () Bool)

(assert (= bs!1842789 (and d!2162259 b!6902246)))

(assert (=> bs!1842789 (not (= lambda!391978 lambda!391946))))

(assert (=> d!2162259 true))

(assert (=> d!2162259 true))

(assert (=> d!2162259 true))

(assert (=> d!2162259 (= (isDefined!13349 (findConcatSeparation!3060 lt!2466741 r3!135 Nil!66500 s!14361 s!14361)) (Exists!3875 lambda!391978))))

(declare-fun lt!2466837 () Unit!160468)

(assert (=> d!2162259 (= lt!2466837 (choose!51391 lt!2466741 r3!135 s!14361))))

(assert (=> d!2162259 (validRegex!8575 lt!2466741)))

(assert (=> d!2162259 (= (lemmaFindConcatSeparationEquivalentToExists!2822 lt!2466741 r3!135 s!14361) lt!2466837)))

(declare-fun bs!1842793 () Bool)

(assert (= bs!1842793 d!2162259))

(assert (=> bs!1842793 m!7620034))

(assert (=> bs!1842793 m!7620054))

(declare-fun m!7620552 () Bool)

(assert (=> bs!1842793 m!7620552))

(assert (=> bs!1842793 m!7620034))

(assert (=> bs!1842793 m!7620494))

(declare-fun m!7620554 () Bool)

(assert (=> bs!1842793 m!7620554))

(assert (=> b!6901981 d!2162259))

(declare-fun d!2162261 () Bool)

(assert (=> d!2162261 (= (Exists!3875 lambda!391921) (choose!51389 lambda!391921))))

(declare-fun bs!1842795 () Bool)

(assert (= bs!1842795 d!2162261))

(declare-fun m!7620556 () Bool)

(assert (=> bs!1842795 m!7620556))

(assert (=> b!6901981 d!2162261))

(declare-fun bs!1842801 () Bool)

(declare-fun b!6902559 () Bool)

(assert (= bs!1842801 (and b!6902559 b!6901981)))

(declare-fun lambda!391980 () Int)

(assert (=> bs!1842801 (not (= lambda!391980 lambda!391921))))

(declare-fun bs!1842803 () Bool)

(assert (= bs!1842803 (and b!6902559 d!2162259)))

(assert (=> bs!1842803 (not (= lambda!391980 lambda!391978))))

(assert (=> bs!1842801 (not (= lambda!391980 lambda!391924))))

(declare-fun bs!1842806 () Bool)

(assert (= bs!1842806 (and b!6902559 b!6902301)))

(assert (=> bs!1842806 (not (= lambda!391980 lambda!391952))))

(assert (=> bs!1842801 (not (= lambda!391980 lambda!391923))))

(declare-fun bs!1842809 () Bool)

(assert (= bs!1842809 (and b!6902559 b!6901988)))

(assert (=> bs!1842809 (not (= lambda!391980 lambda!391925))))

(assert (=> bs!1842801 (not (= lambda!391980 lambda!391920))))

(declare-fun bs!1842811 () Bool)

(assert (= bs!1842811 (and b!6902559 b!6901987)))

(assert (=> bs!1842811 (not (= lambda!391980 lambda!391926))))

(assert (=> bs!1842801 (not (= lambda!391980 lambda!391918))))

(declare-fun bs!1842813 () Bool)

(assert (= bs!1842813 (and b!6902559 d!2162189)))

(assert (=> bs!1842813 (not (= lambda!391980 lambda!391963))))

(assert (=> bs!1842813 (not (= lambda!391980 lambda!391965))))

(assert (=> bs!1842801 (not (= lambda!391980 lambda!391919))))

(declare-fun bs!1842814 () Bool)

(assert (= bs!1842814 (and b!6902559 d!2162243)))

(assert (=> bs!1842814 (not (= lambda!391980 lambda!391976))))

(declare-fun bs!1842815 () Bool)

(assert (= bs!1842815 (and b!6902559 d!2162215)))

(assert (=> bs!1842815 (not (= lambda!391980 lambda!391973))))

(declare-fun bs!1842816 () Bool)

(assert (= bs!1842816 (and b!6902559 b!6902296)))

(assert (=> bs!1842816 (= (and (= (_1!37037 lt!2466737) s!14361) (= (reg!17196 r2!6280) (reg!17196 lt!2466727)) (= r2!6280 lt!2466727)) (= lambda!391980 lambda!391950))))

(assert (=> bs!1842801 (not (= lambda!391980 lambda!391922))))

(declare-fun bs!1842817 () Bool)

(assert (= bs!1842817 (and b!6902559 b!6902251)))

(assert (=> bs!1842817 (not (= lambda!391980 lambda!391947))))

(declare-fun bs!1842818 () Bool)

(assert (= bs!1842818 (and b!6902559 b!6902246)))

(assert (=> bs!1842818 (= (and (= (_1!37037 lt!2466737) s!14361) (= (reg!17196 r2!6280) (reg!17196 lt!2466744)) (= r2!6280 lt!2466744)) (= lambda!391980 lambda!391946))))

(assert (=> b!6902559 true))

(assert (=> b!6902559 true))

(declare-fun bs!1842821 () Bool)

(declare-fun b!6902564 () Bool)

(assert (= bs!1842821 (and b!6902564 b!6901981)))

(declare-fun lambda!391981 () Int)

(assert (=> bs!1842821 (= (and (= (_1!37037 lt!2466737) (_2!37037 lt!2466743)) (= (regOne!34246 r2!6280) r2!6280) (= (regTwo!34246 r2!6280) r3!135)) (= lambda!391981 lambda!391921))))

(declare-fun bs!1842822 () Bool)

(assert (= bs!1842822 (and b!6902564 d!2162259)))

(assert (=> bs!1842822 (not (= lambda!391981 lambda!391978))))

(assert (=> bs!1842821 (not (= lambda!391981 lambda!391924))))

(declare-fun bs!1842824 () Bool)

(assert (= bs!1842824 (and b!6902564 b!6902301)))

(assert (=> bs!1842824 (= (and (= (_1!37037 lt!2466737) s!14361) (= (regOne!34246 r2!6280) (regOne!34246 lt!2466727)) (= (regTwo!34246 r2!6280) (regTwo!34246 lt!2466727))) (= lambda!391981 lambda!391952))))

(assert (=> bs!1842821 (= (and (= (_1!37037 lt!2466737) lt!2466728) (= (regOne!34246 r2!6280) r1!6342) (= (regTwo!34246 r2!6280) r2!6280)) (= lambda!391981 lambda!391923))))

(declare-fun bs!1842827 () Bool)

(assert (= bs!1842827 (and b!6902564 b!6901988)))

(assert (=> bs!1842827 (not (= lambda!391981 lambda!391925))))

(assert (=> bs!1842821 (not (= lambda!391981 lambda!391920))))

(declare-fun bs!1842830 () Bool)

(assert (= bs!1842830 (and b!6902564 b!6901987)))

(assert (=> bs!1842830 (= (and (= (_1!37037 lt!2466737) s!14361) (= (regOne!34246 r2!6280) r1!6342) (= (regTwo!34246 r2!6280) lt!2466750)) (= lambda!391981 lambda!391926))))

(assert (=> bs!1842821 (not (= lambda!391981 lambda!391918))))

(declare-fun bs!1842832 () Bool)

(assert (= bs!1842832 (and b!6902564 d!2162189)))

(assert (=> bs!1842832 (not (= lambda!391981 lambda!391963))))

(assert (=> bs!1842832 (= (and (= (_1!37037 lt!2466737) s!14361) (= (regOne!34246 r2!6280) r1!6342) (= (regTwo!34246 r2!6280) lt!2466750)) (= lambda!391981 lambda!391965))))

(declare-fun bs!1842834 () Bool)

(assert (= bs!1842834 (and b!6902564 b!6902559)))

(assert (=> bs!1842834 (not (= lambda!391981 lambda!391980))))

(assert (=> bs!1842821 (= (and (= (_1!37037 lt!2466737) s!14361) (= (regOne!34246 r2!6280) r1!6342) (= (regTwo!34246 r2!6280) lt!2466750)) (= lambda!391981 lambda!391919))))

(declare-fun bs!1842836 () Bool)

(assert (= bs!1842836 (and b!6902564 d!2162243)))

(assert (=> bs!1842836 (not (= lambda!391981 lambda!391976))))

(declare-fun bs!1842838 () Bool)

(assert (= bs!1842838 (and b!6902564 d!2162215)))

(assert (=> bs!1842838 (not (= lambda!391981 lambda!391973))))

(declare-fun bs!1842840 () Bool)

(assert (= bs!1842840 (and b!6902564 b!6902296)))

(assert (=> bs!1842840 (not (= lambda!391981 lambda!391950))))

(assert (=> bs!1842821 (not (= lambda!391981 lambda!391922))))

(declare-fun bs!1842842 () Bool)

(assert (= bs!1842842 (and b!6902564 b!6902251)))

(assert (=> bs!1842842 (= (and (= (_1!37037 lt!2466737) s!14361) (= (regOne!34246 r2!6280) (regOne!34246 lt!2466744)) (= (regTwo!34246 r2!6280) (regTwo!34246 lt!2466744))) (= lambda!391981 lambda!391947))))

(declare-fun bs!1842844 () Bool)

(assert (= bs!1842844 (and b!6902564 b!6902246)))

(assert (=> bs!1842844 (not (= lambda!391981 lambda!391946))))

(assert (=> b!6902564 true))

(assert (=> b!6902564 true))

(declare-fun b!6902554 () Bool)

(declare-fun e!4156766 () Bool)

(declare-fun e!4156761 () Bool)

(assert (=> b!6902554 (= e!4156766 e!4156761)))

(declare-fun c!1282473 () Bool)

(assert (=> b!6902554 (= c!1282473 ((_ is Star!16867) r2!6280))))

(declare-fun b!6902555 () Bool)

(declare-fun e!4156762 () Bool)

(assert (=> b!6902555 (= e!4156762 (matchRSpec!3930 (regTwo!34247 r2!6280) (_1!37037 lt!2466737)))))

(declare-fun b!6902556 () Bool)

(declare-fun e!4156764 () Bool)

(assert (=> b!6902556 (= e!4156764 (= (_1!37037 lt!2466737) (Cons!66500 (c!1282339 r2!6280) Nil!66500)))))

(declare-fun bm!627689 () Bool)

(declare-fun call!627694 () Bool)

(assert (=> bm!627689 (= call!627694 (isEmpty!38730 (_1!37037 lt!2466737)))))

(declare-fun d!2162263 () Bool)

(declare-fun c!1282475 () Bool)

(assert (=> d!2162263 (= c!1282475 ((_ is EmptyExpr!16867) r2!6280))))

(declare-fun e!4156765 () Bool)

(assert (=> d!2162263 (= (matchRSpec!3930 r2!6280 (_1!37037 lt!2466737)) e!4156765)))

(declare-fun b!6902557 () Bool)

(declare-fun res!2814833 () Bool)

(declare-fun e!4156763 () Bool)

(assert (=> b!6902557 (=> res!2814833 e!4156763)))

(assert (=> b!6902557 (= res!2814833 call!627694)))

(assert (=> b!6902557 (= e!4156761 e!4156763)))

(declare-fun b!6902558 () Bool)

(declare-fun e!4156760 () Bool)

(assert (=> b!6902558 (= e!4156765 e!4156760)))

(declare-fun res!2814831 () Bool)

(assert (=> b!6902558 (= res!2814831 (not ((_ is EmptyLang!16867) r2!6280)))))

(assert (=> b!6902558 (=> (not res!2814831) (not e!4156760))))

(declare-fun call!627695 () Bool)

(assert (=> b!6902559 (= e!4156763 call!627695)))

(declare-fun b!6902560 () Bool)

(declare-fun c!1282474 () Bool)

(assert (=> b!6902560 (= c!1282474 ((_ is Union!16867) r2!6280))))

(assert (=> b!6902560 (= e!4156764 e!4156766)))

(declare-fun b!6902561 () Bool)

(declare-fun c!1282476 () Bool)

(assert (=> b!6902561 (= c!1282476 ((_ is ElementMatch!16867) r2!6280))))

(assert (=> b!6902561 (= e!4156760 e!4156764)))

(declare-fun b!6902562 () Bool)

(assert (=> b!6902562 (= e!4156765 call!627694)))

(declare-fun b!6902563 () Bool)

(assert (=> b!6902563 (= e!4156766 e!4156762)))

(declare-fun res!2814832 () Bool)

(assert (=> b!6902563 (= res!2814832 (matchRSpec!3930 (regOne!34247 r2!6280) (_1!37037 lt!2466737)))))

(assert (=> b!6902563 (=> res!2814832 e!4156762)))

(assert (=> b!6902564 (= e!4156761 call!627695)))

(declare-fun bm!627690 () Bool)

(assert (=> bm!627690 (= call!627695 (Exists!3875 (ite c!1282473 lambda!391980 lambda!391981)))))

(assert (= (and d!2162263 c!1282475) b!6902562))

(assert (= (and d!2162263 (not c!1282475)) b!6902558))

(assert (= (and b!6902558 res!2814831) b!6902561))

(assert (= (and b!6902561 c!1282476) b!6902556))

(assert (= (and b!6902561 (not c!1282476)) b!6902560))

(assert (= (and b!6902560 c!1282474) b!6902563))

(assert (= (and b!6902560 (not c!1282474)) b!6902554))

(assert (= (and b!6902563 (not res!2814832)) b!6902555))

(assert (= (and b!6902554 c!1282473) b!6902557))

(assert (= (and b!6902554 (not c!1282473)) b!6902564))

(assert (= (and b!6902557 (not res!2814833)) b!6902559))

(assert (= (or b!6902559 b!6902564) bm!627690))

(assert (= (or b!6902562 b!6902557) bm!627689))

(declare-fun m!7620568 () Bool)

(assert (=> b!6902555 m!7620568))

(assert (=> bm!627689 m!7620496))

(declare-fun m!7620570 () Bool)

(assert (=> b!6902563 m!7620570))

(declare-fun m!7620572 () Bool)

(assert (=> bm!627690 m!7620572))

(assert (=> b!6901981 d!2162263))

(declare-fun d!2162271 () Bool)

(assert (=> d!2162271 (= (matchR!9012 r1!6342 (_1!37037 lt!2466743)) (matchRSpec!3930 r1!6342 (_1!37037 lt!2466743)))))

(declare-fun lt!2466840 () Unit!160468)

(assert (=> d!2162271 (= lt!2466840 (choose!51388 r1!6342 (_1!37037 lt!2466743)))))

(assert (=> d!2162271 (validRegex!8575 r1!6342)))

(assert (=> d!2162271 (= (mainMatchTheorem!3930 r1!6342 (_1!37037 lt!2466743)) lt!2466840)))

(declare-fun bs!1842850 () Bool)

(assert (= bs!1842850 d!2162271))

(assert (=> bs!1842850 m!7620062))

(assert (=> bs!1842850 m!7620022))

(declare-fun m!7620574 () Bool)

(assert (=> bs!1842850 m!7620574))

(assert (=> bs!1842850 m!7620078))

(assert (=> b!6901981 d!2162271))

(declare-fun lt!2466843 () List!66624)

(declare-fun e!4156772 () Bool)

(declare-fun b!6902576 () Bool)

(assert (=> b!6902576 (= e!4156772 (or (not (= (_2!37037 lt!2466737) Nil!66500)) (= lt!2466843 lt!2466728)))))

(declare-fun b!6902575 () Bool)

(declare-fun res!2814839 () Bool)

(assert (=> b!6902575 (=> (not res!2814839) (not e!4156772))))

(declare-fun size!40758 (List!66624) Int)

(assert (=> b!6902575 (= res!2814839 (= (size!40758 lt!2466843) (+ (size!40758 lt!2466728) (size!40758 (_2!37037 lt!2466737)))))))

(declare-fun b!6902573 () Bool)

(declare-fun e!4156771 () List!66624)

(assert (=> b!6902573 (= e!4156771 (_2!37037 lt!2466737))))

(declare-fun b!6902574 () Bool)

(assert (=> b!6902574 (= e!4156771 (Cons!66500 (h!72948 lt!2466728) (++!14920 (t!380367 lt!2466728) (_2!37037 lt!2466737))))))

(declare-fun d!2162273 () Bool)

(assert (=> d!2162273 e!4156772))

(declare-fun res!2814838 () Bool)

(assert (=> d!2162273 (=> (not res!2814838) (not e!4156772))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13061 (List!66624) (InoxSet C!34004))

(assert (=> d!2162273 (= res!2814838 (= (content!13061 lt!2466843) ((_ map or) (content!13061 lt!2466728) (content!13061 (_2!37037 lt!2466737)))))))

(assert (=> d!2162273 (= lt!2466843 e!4156771)))

(declare-fun c!1282479 () Bool)

(assert (=> d!2162273 (= c!1282479 ((_ is Nil!66500) lt!2466728))))

(assert (=> d!2162273 (= (++!14920 lt!2466728 (_2!37037 lt!2466737)) lt!2466843)))

(assert (= (and d!2162273 c!1282479) b!6902573))

(assert (= (and d!2162273 (not c!1282479)) b!6902574))

(assert (= (and d!2162273 res!2814838) b!6902575))

(assert (= (and b!6902575 res!2814839) b!6902576))

(declare-fun m!7620576 () Bool)

(assert (=> b!6902575 m!7620576))

(declare-fun m!7620578 () Bool)

(assert (=> b!6902575 m!7620578))

(declare-fun m!7620580 () Bool)

(assert (=> b!6902575 m!7620580))

(declare-fun m!7620582 () Bool)

(assert (=> b!6902574 m!7620582))

(declare-fun m!7620584 () Bool)

(assert (=> d!2162273 m!7620584))

(declare-fun m!7620586 () Bool)

(assert (=> d!2162273 m!7620586))

(declare-fun m!7620588 () Bool)

(assert (=> d!2162273 m!7620588))

(assert (=> b!6901981 d!2162273))

(declare-fun d!2162275 () Bool)

(assert (=> d!2162275 (isDefined!13349 (findConcatSeparation!3060 lt!2466741 r3!135 Nil!66500 s!14361 s!14361))))

(declare-fun lt!2466846 () Unit!160468)

(declare-fun choose!51393 (Regex!16867 Regex!16867 List!66624 List!66624 List!66624 List!66624 List!66624) Unit!160468)

(assert (=> d!2162275 (= lt!2466846 (choose!51393 lt!2466741 r3!135 lt!2466728 (_2!37037 lt!2466737) s!14361 Nil!66500 s!14361))))

(assert (=> d!2162275 (validRegex!8575 lt!2466741)))

(assert (=> d!2162275 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!68 lt!2466741 r3!135 lt!2466728 (_2!37037 lt!2466737) s!14361 Nil!66500 s!14361) lt!2466846)))

(declare-fun bs!1842859 () Bool)

(assert (= bs!1842859 d!2162275))

(assert (=> bs!1842859 m!7620034))

(assert (=> bs!1842859 m!7620034))

(assert (=> bs!1842859 m!7620054))

(declare-fun m!7620608 () Bool)

(assert (=> bs!1842859 m!7620608))

(assert (=> bs!1842859 m!7620494))

(assert (=> b!6901981 d!2162275))

(declare-fun d!2162281 () Bool)

(assert (=> d!2162281 (= (++!14920 (++!14920 (_1!37037 lt!2466743) (_1!37037 lt!2466737)) (_2!37037 lt!2466737)) (++!14920 (_1!37037 lt!2466743) (++!14920 (_1!37037 lt!2466737) (_2!37037 lt!2466737))))))

(declare-fun lt!2466849 () Unit!160468)

(declare-fun choose!51394 (List!66624 List!66624 List!66624) Unit!160468)

(assert (=> d!2162281 (= lt!2466849 (choose!51394 (_1!37037 lt!2466743) (_1!37037 lt!2466737) (_2!37037 lt!2466737)))))

(assert (=> d!2162281 (= (lemmaConcatAssociativity!3000 (_1!37037 lt!2466743) (_1!37037 lt!2466737) (_2!37037 lt!2466737)) lt!2466849)))

(declare-fun bs!1842860 () Bool)

(assert (= bs!1842860 d!2162281))

(assert (=> bs!1842860 m!7620056))

(assert (=> bs!1842860 m!7620058))

(assert (=> bs!1842860 m!7620004))

(assert (=> bs!1842860 m!7620056))

(assert (=> bs!1842860 m!7620004))

(declare-fun m!7620610 () Bool)

(assert (=> bs!1842860 m!7620610))

(declare-fun m!7620612 () Bool)

(assert (=> bs!1842860 m!7620612))

(assert (=> b!6901981 d!2162281))

(declare-fun e!4156807 () Bool)

(declare-fun b!6902669 () Bool)

(declare-fun lt!2466850 () List!66624)

(assert (=> b!6902669 (= e!4156807 (or (not (= (_1!37037 lt!2466737) Nil!66500)) (= lt!2466850 (_1!37037 lt!2466743))))))

(declare-fun b!6902668 () Bool)

(declare-fun res!2814851 () Bool)

(assert (=> b!6902668 (=> (not res!2814851) (not e!4156807))))

(assert (=> b!6902668 (= res!2814851 (= (size!40758 lt!2466850) (+ (size!40758 (_1!37037 lt!2466743)) (size!40758 (_1!37037 lt!2466737)))))))

(declare-fun b!6902666 () Bool)

(declare-fun e!4156806 () List!66624)

(assert (=> b!6902666 (= e!4156806 (_1!37037 lt!2466737))))

(declare-fun b!6902667 () Bool)

(assert (=> b!6902667 (= e!4156806 (Cons!66500 (h!72948 (_1!37037 lt!2466743)) (++!14920 (t!380367 (_1!37037 lt!2466743)) (_1!37037 lt!2466737))))))

(declare-fun d!2162283 () Bool)

(assert (=> d!2162283 e!4156807))

(declare-fun res!2814850 () Bool)

(assert (=> d!2162283 (=> (not res!2814850) (not e!4156807))))

(assert (=> d!2162283 (= res!2814850 (= (content!13061 lt!2466850) ((_ map or) (content!13061 (_1!37037 lt!2466743)) (content!13061 (_1!37037 lt!2466737)))))))

(assert (=> d!2162283 (= lt!2466850 e!4156806)))

(declare-fun c!1282484 () Bool)

(assert (=> d!2162283 (= c!1282484 ((_ is Nil!66500) (_1!37037 lt!2466743)))))

(assert (=> d!2162283 (= (++!14920 (_1!37037 lt!2466743) (_1!37037 lt!2466737)) lt!2466850)))

(assert (= (and d!2162283 c!1282484) b!6902666))

(assert (= (and d!2162283 (not c!1282484)) b!6902667))

(assert (= (and d!2162283 res!2814850) b!6902668))

(assert (= (and b!6902668 res!2814851) b!6902669))

(declare-fun m!7620614 () Bool)

(assert (=> b!6902668 m!7620614))

(declare-fun m!7620616 () Bool)

(assert (=> b!6902668 m!7620616))

(declare-fun m!7620618 () Bool)

(assert (=> b!6902668 m!7620618))

(declare-fun m!7620620 () Bool)

(assert (=> b!6902667 m!7620620))

(declare-fun m!7620622 () Bool)

(assert (=> d!2162283 m!7620622))

(declare-fun m!7620624 () Bool)

(assert (=> d!2162283 m!7620624))

(declare-fun m!7620626 () Bool)

(assert (=> d!2162283 m!7620626))

(assert (=> b!6901981 d!2162283))

(declare-fun d!2162285 () Bool)

(assert (=> d!2162285 (= (Exists!3875 lambda!391924) (choose!51389 lambda!391924))))

(declare-fun bs!1842861 () Bool)

(assert (= bs!1842861 d!2162285))

(declare-fun m!7620628 () Bool)

(assert (=> bs!1842861 m!7620628))

(assert (=> b!6901981 d!2162285))

(declare-fun b!6902677 () Bool)

(declare-fun e!4156810 () Bool)

(declare-fun lt!2466851 () List!66624)

(assert (=> b!6902677 (= e!4156810 (or (not (= (++!14920 (_1!37037 lt!2466737) (_2!37037 lt!2466737)) Nil!66500)) (= lt!2466851 (_1!37037 lt!2466743))))))

(declare-fun b!6902676 () Bool)

(declare-fun res!2814853 () Bool)

(assert (=> b!6902676 (=> (not res!2814853) (not e!4156810))))

(assert (=> b!6902676 (= res!2814853 (= (size!40758 lt!2466851) (+ (size!40758 (_1!37037 lt!2466743)) (size!40758 (++!14920 (_1!37037 lt!2466737) (_2!37037 lt!2466737))))))))

(declare-fun b!6902674 () Bool)

(declare-fun e!4156809 () List!66624)

(assert (=> b!6902674 (= e!4156809 (++!14920 (_1!37037 lt!2466737) (_2!37037 lt!2466737)))))

(declare-fun b!6902675 () Bool)

(assert (=> b!6902675 (= e!4156809 (Cons!66500 (h!72948 (_1!37037 lt!2466743)) (++!14920 (t!380367 (_1!37037 lt!2466743)) (++!14920 (_1!37037 lt!2466737) (_2!37037 lt!2466737)))))))

(declare-fun d!2162287 () Bool)

(assert (=> d!2162287 e!4156810))

(declare-fun res!2814852 () Bool)

(assert (=> d!2162287 (=> (not res!2814852) (not e!4156810))))

(assert (=> d!2162287 (= res!2814852 (= (content!13061 lt!2466851) ((_ map or) (content!13061 (_1!37037 lt!2466743)) (content!13061 (++!14920 (_1!37037 lt!2466737) (_2!37037 lt!2466737))))))))

(assert (=> d!2162287 (= lt!2466851 e!4156809)))

(declare-fun c!1282485 () Bool)

(assert (=> d!2162287 (= c!1282485 ((_ is Nil!66500) (_1!37037 lt!2466743)))))

(assert (=> d!2162287 (= (++!14920 (_1!37037 lt!2466743) (++!14920 (_1!37037 lt!2466737) (_2!37037 lt!2466737))) lt!2466851)))

(assert (= (and d!2162287 c!1282485) b!6902674))

(assert (= (and d!2162287 (not c!1282485)) b!6902675))

(assert (= (and d!2162287 res!2814852) b!6902676))

(assert (= (and b!6902676 res!2814853) b!6902677))

(declare-fun m!7620630 () Bool)

(assert (=> b!6902676 m!7620630))

(assert (=> b!6902676 m!7620616))

(assert (=> b!6902676 m!7620056))

(declare-fun m!7620632 () Bool)

(assert (=> b!6902676 m!7620632))

(assert (=> b!6902675 m!7620056))

(declare-fun m!7620634 () Bool)

(assert (=> b!6902675 m!7620634))

(declare-fun m!7620636 () Bool)

(assert (=> d!2162287 m!7620636))

(assert (=> d!2162287 m!7620624))

(assert (=> d!2162287 m!7620056))

(declare-fun m!7620638 () Bool)

(assert (=> d!2162287 m!7620638))

(assert (=> b!6901981 d!2162287))

(declare-fun b!6902678 () Bool)

(declare-fun e!4156816 () Bool)

(declare-fun e!4156815 () Bool)

(assert (=> b!6902678 (= e!4156816 e!4156815)))

(declare-fun res!2814854 () Bool)

(assert (=> b!6902678 (=> (not res!2814854) (not e!4156815))))

(declare-fun lt!2466852 () Bool)

(assert (=> b!6902678 (= res!2814854 (not lt!2466852))))

(declare-fun b!6902679 () Bool)

(declare-fun res!2814856 () Bool)

(declare-fun e!4156813 () Bool)

(assert (=> b!6902679 (=> (not res!2814856) (not e!4156813))))

(declare-fun call!627702 () Bool)

(assert (=> b!6902679 (= res!2814856 (not call!627702))))

(declare-fun b!6902680 () Bool)

(declare-fun e!4156811 () Bool)

(assert (=> b!6902680 (= e!4156811 (matchR!9012 (derivativeStep!5387 lt!2466750 (head!13840 (_2!37037 lt!2466743))) (tail!12892 (_2!37037 lt!2466743))))))

(declare-fun b!6902681 () Bool)

(declare-fun e!4156814 () Bool)

(assert (=> b!6902681 (= e!4156815 e!4156814)))

(declare-fun res!2814860 () Bool)

(assert (=> b!6902681 (=> res!2814860 e!4156814)))

(assert (=> b!6902681 (= res!2814860 call!627702)))

(declare-fun b!6902682 () Bool)

(assert (=> b!6902682 (= e!4156813 (= (head!13840 (_2!37037 lt!2466743)) (c!1282339 lt!2466750)))))

(declare-fun b!6902683 () Bool)

(assert (=> b!6902683 (= e!4156814 (not (= (head!13840 (_2!37037 lt!2466743)) (c!1282339 lt!2466750))))))

(declare-fun b!6902684 () Bool)

(assert (=> b!6902684 (= e!4156811 (nullable!6708 lt!2466750))))

(declare-fun b!6902685 () Bool)

(declare-fun e!4156817 () Bool)

(declare-fun e!4156812 () Bool)

(assert (=> b!6902685 (= e!4156817 e!4156812)))

(declare-fun c!1282488 () Bool)

(assert (=> b!6902685 (= c!1282488 ((_ is EmptyLang!16867) lt!2466750))))

(declare-fun b!6902686 () Bool)

(declare-fun res!2814861 () Bool)

(assert (=> b!6902686 (=> res!2814861 e!4156816)))

(assert (=> b!6902686 (= res!2814861 (not ((_ is ElementMatch!16867) lt!2466750)))))

(assert (=> b!6902686 (= e!4156812 e!4156816)))

(declare-fun d!2162289 () Bool)

(assert (=> d!2162289 e!4156817))

(declare-fun c!1282486 () Bool)

(assert (=> d!2162289 (= c!1282486 ((_ is EmptyExpr!16867) lt!2466750))))

(assert (=> d!2162289 (= lt!2466852 e!4156811)))

(declare-fun c!1282487 () Bool)

(assert (=> d!2162289 (= c!1282487 (isEmpty!38730 (_2!37037 lt!2466743)))))

(assert (=> d!2162289 (validRegex!8575 lt!2466750)))

(assert (=> d!2162289 (= (matchR!9012 lt!2466750 (_2!37037 lt!2466743)) lt!2466852)))

(declare-fun b!6902687 () Bool)

(declare-fun res!2814857 () Bool)

(assert (=> b!6902687 (=> res!2814857 e!4156816)))

(assert (=> b!6902687 (= res!2814857 e!4156813)))

(declare-fun res!2814855 () Bool)

(assert (=> b!6902687 (=> (not res!2814855) (not e!4156813))))

(assert (=> b!6902687 (= res!2814855 lt!2466852)))

(declare-fun b!6902688 () Bool)

(declare-fun res!2814858 () Bool)

(assert (=> b!6902688 (=> res!2814858 e!4156814)))

(assert (=> b!6902688 (= res!2814858 (not (isEmpty!38730 (tail!12892 (_2!37037 lt!2466743)))))))

(declare-fun b!6902689 () Bool)

(assert (=> b!6902689 (= e!4156812 (not lt!2466852))))

(declare-fun b!6902690 () Bool)

(assert (=> b!6902690 (= e!4156817 (= lt!2466852 call!627702))))

(declare-fun bm!627697 () Bool)

(assert (=> bm!627697 (= call!627702 (isEmpty!38730 (_2!37037 lt!2466743)))))

(declare-fun b!6902691 () Bool)

(declare-fun res!2814859 () Bool)

(assert (=> b!6902691 (=> (not res!2814859) (not e!4156813))))

(assert (=> b!6902691 (= res!2814859 (isEmpty!38730 (tail!12892 (_2!37037 lt!2466743))))))

(assert (= (and d!2162289 c!1282487) b!6902684))

(assert (= (and d!2162289 (not c!1282487)) b!6902680))

(assert (= (and d!2162289 c!1282486) b!6902690))

(assert (= (and d!2162289 (not c!1282486)) b!6902685))

(assert (= (and b!6902685 c!1282488) b!6902689))

(assert (= (and b!6902685 (not c!1282488)) b!6902686))

(assert (= (and b!6902686 (not res!2814861)) b!6902687))

(assert (= (and b!6902687 res!2814855) b!6902679))

(assert (= (and b!6902679 res!2814856) b!6902691))

(assert (= (and b!6902691 res!2814859) b!6902682))

(assert (= (and b!6902687 (not res!2814857)) b!6902678))

(assert (= (and b!6902678 res!2814854) b!6902681))

(assert (= (and b!6902681 (not res!2814860)) b!6902688))

(assert (= (and b!6902688 (not res!2814858)) b!6902683))

(assert (= (or b!6902690 b!6902679 b!6902681) bm!627697))

(declare-fun m!7620640 () Bool)

(assert (=> d!2162289 m!7620640))

(assert (=> d!2162289 m!7619972))

(declare-fun m!7620642 () Bool)

(assert (=> b!6902684 m!7620642))

(declare-fun m!7620644 () Bool)

(assert (=> b!6902691 m!7620644))

(assert (=> b!6902691 m!7620644))

(declare-fun m!7620646 () Bool)

(assert (=> b!6902691 m!7620646))

(declare-fun m!7620648 () Bool)

(assert (=> b!6902680 m!7620648))

(assert (=> b!6902680 m!7620648))

(declare-fun m!7620650 () Bool)

(assert (=> b!6902680 m!7620650))

(assert (=> b!6902680 m!7620644))

(assert (=> b!6902680 m!7620650))

(assert (=> b!6902680 m!7620644))

(declare-fun m!7620652 () Bool)

(assert (=> b!6902680 m!7620652))

(assert (=> b!6902682 m!7620648))

(assert (=> b!6902683 m!7620648))

(assert (=> b!6902688 m!7620644))

(assert (=> b!6902688 m!7620644))

(assert (=> b!6902688 m!7620646))

(assert (=> bm!627697 m!7620640))

(assert (=> b!6901981 d!2162289))

(declare-fun bs!1842862 () Bool)

(declare-fun b!6902697 () Bool)

(assert (= bs!1842862 (and b!6902697 b!6901981)))

(declare-fun lambda!391984 () Int)

(assert (=> bs!1842862 (not (= lambda!391984 lambda!391921))))

(declare-fun bs!1842863 () Bool)

(assert (= bs!1842863 (and b!6902697 d!2162259)))

(assert (=> bs!1842863 (not (= lambda!391984 lambda!391978))))

(assert (=> bs!1842862 (not (= lambda!391984 lambda!391924))))

(declare-fun bs!1842864 () Bool)

(assert (= bs!1842864 (and b!6902697 b!6902301)))

(assert (=> bs!1842864 (not (= lambda!391984 lambda!391952))))

(assert (=> bs!1842862 (not (= lambda!391984 lambda!391923))))

(declare-fun bs!1842865 () Bool)

(assert (= bs!1842865 (and b!6902697 b!6901988)))

(assert (=> bs!1842865 (not (= lambda!391984 lambda!391925))))

(declare-fun bs!1842866 () Bool)

(assert (= bs!1842866 (and b!6902697 b!6902564)))

(assert (=> bs!1842866 (not (= lambda!391984 lambda!391981))))

(assert (=> bs!1842862 (not (= lambda!391984 lambda!391920))))

(declare-fun bs!1842867 () Bool)

(assert (= bs!1842867 (and b!6902697 b!6901987)))

(assert (=> bs!1842867 (not (= lambda!391984 lambda!391926))))

(assert (=> bs!1842862 (not (= lambda!391984 lambda!391918))))

(declare-fun bs!1842868 () Bool)

(assert (= bs!1842868 (and b!6902697 d!2162189)))

(assert (=> bs!1842868 (not (= lambda!391984 lambda!391963))))

(assert (=> bs!1842868 (not (= lambda!391984 lambda!391965))))

(declare-fun bs!1842869 () Bool)

(assert (= bs!1842869 (and b!6902697 b!6902559)))

(assert (=> bs!1842869 (= (and (= (_2!37037 lt!2466737) (_1!37037 lt!2466737)) (= (reg!17196 r3!135) (reg!17196 r2!6280)) (= r3!135 r2!6280)) (= lambda!391984 lambda!391980))))

(assert (=> bs!1842862 (not (= lambda!391984 lambda!391919))))

(declare-fun bs!1842870 () Bool)

(assert (= bs!1842870 (and b!6902697 d!2162243)))

(assert (=> bs!1842870 (not (= lambda!391984 lambda!391976))))

(declare-fun bs!1842871 () Bool)

(assert (= bs!1842871 (and b!6902697 d!2162215)))

(assert (=> bs!1842871 (not (= lambda!391984 lambda!391973))))

(declare-fun bs!1842872 () Bool)

(assert (= bs!1842872 (and b!6902697 b!6902296)))

(assert (=> bs!1842872 (= (and (= (_2!37037 lt!2466737) s!14361) (= (reg!17196 r3!135) (reg!17196 lt!2466727)) (= r3!135 lt!2466727)) (= lambda!391984 lambda!391950))))

(assert (=> bs!1842862 (not (= lambda!391984 lambda!391922))))

(declare-fun bs!1842873 () Bool)

(assert (= bs!1842873 (and b!6902697 b!6902251)))

(assert (=> bs!1842873 (not (= lambda!391984 lambda!391947))))

(declare-fun bs!1842874 () Bool)

(assert (= bs!1842874 (and b!6902697 b!6902246)))

(assert (=> bs!1842874 (= (and (= (_2!37037 lt!2466737) s!14361) (= (reg!17196 r3!135) (reg!17196 lt!2466744)) (= r3!135 lt!2466744)) (= lambda!391984 lambda!391946))))

(assert (=> b!6902697 true))

(assert (=> b!6902697 true))

(declare-fun bs!1842875 () Bool)

(declare-fun b!6902702 () Bool)

(assert (= bs!1842875 (and b!6902702 b!6901981)))

(declare-fun lambda!391985 () Int)

(assert (=> bs!1842875 (= (and (= (_2!37037 lt!2466737) (_2!37037 lt!2466743)) (= (regOne!34246 r3!135) r2!6280) (= (regTwo!34246 r3!135) r3!135)) (= lambda!391985 lambda!391921))))

(declare-fun bs!1842876 () Bool)

(assert (= bs!1842876 (and b!6902702 d!2162259)))

(assert (=> bs!1842876 (not (= lambda!391985 lambda!391978))))

(assert (=> bs!1842875 (not (= lambda!391985 lambda!391924))))

(declare-fun bs!1842877 () Bool)

(assert (= bs!1842877 (and b!6902702 b!6902301)))

(assert (=> bs!1842877 (= (and (= (_2!37037 lt!2466737) s!14361) (= (regOne!34246 r3!135) (regOne!34246 lt!2466727)) (= (regTwo!34246 r3!135) (regTwo!34246 lt!2466727))) (= lambda!391985 lambda!391952))))

(assert (=> bs!1842875 (= (and (= (_2!37037 lt!2466737) lt!2466728) (= (regOne!34246 r3!135) r1!6342) (= (regTwo!34246 r3!135) r2!6280)) (= lambda!391985 lambda!391923))))

(declare-fun bs!1842878 () Bool)

(assert (= bs!1842878 (and b!6902702 b!6901988)))

(assert (=> bs!1842878 (not (= lambda!391985 lambda!391925))))

(declare-fun bs!1842879 () Bool)

(assert (= bs!1842879 (and b!6902702 b!6902564)))

(assert (=> bs!1842879 (= (and (= (_2!37037 lt!2466737) (_1!37037 lt!2466737)) (= (regOne!34246 r3!135) (regOne!34246 r2!6280)) (= (regTwo!34246 r3!135) (regTwo!34246 r2!6280))) (= lambda!391985 lambda!391981))))

(assert (=> bs!1842875 (not (= lambda!391985 lambda!391920))))

(declare-fun bs!1842880 () Bool)

(assert (= bs!1842880 (and b!6902702 b!6901987)))

(assert (=> bs!1842880 (= (and (= (_2!37037 lt!2466737) s!14361) (= (regOne!34246 r3!135) r1!6342) (= (regTwo!34246 r3!135) lt!2466750)) (= lambda!391985 lambda!391926))))

(assert (=> bs!1842875 (not (= lambda!391985 lambda!391918))))

(declare-fun bs!1842881 () Bool)

(assert (= bs!1842881 (and b!6902702 d!2162189)))

(assert (=> bs!1842881 (not (= lambda!391985 lambda!391963))))

(assert (=> bs!1842881 (= (and (= (_2!37037 lt!2466737) s!14361) (= (regOne!34246 r3!135) r1!6342) (= (regTwo!34246 r3!135) lt!2466750)) (= lambda!391985 lambda!391965))))

(declare-fun bs!1842882 () Bool)

(assert (= bs!1842882 (and b!6902702 b!6902559)))

(assert (=> bs!1842882 (not (= lambda!391985 lambda!391980))))

(declare-fun bs!1842883 () Bool)

(assert (= bs!1842883 (and b!6902702 b!6902697)))

(assert (=> bs!1842883 (not (= lambda!391985 lambda!391984))))

(assert (=> bs!1842875 (= (and (= (_2!37037 lt!2466737) s!14361) (= (regOne!34246 r3!135) r1!6342) (= (regTwo!34246 r3!135) lt!2466750)) (= lambda!391985 lambda!391919))))

(declare-fun bs!1842884 () Bool)

(assert (= bs!1842884 (and b!6902702 d!2162243)))

(assert (=> bs!1842884 (not (= lambda!391985 lambda!391976))))

(declare-fun bs!1842885 () Bool)

(assert (= bs!1842885 (and b!6902702 d!2162215)))

(assert (=> bs!1842885 (not (= lambda!391985 lambda!391973))))

(declare-fun bs!1842886 () Bool)

(assert (= bs!1842886 (and b!6902702 b!6902296)))

(assert (=> bs!1842886 (not (= lambda!391985 lambda!391950))))

(assert (=> bs!1842875 (not (= lambda!391985 lambda!391922))))

(declare-fun bs!1842887 () Bool)

(assert (= bs!1842887 (and b!6902702 b!6902251)))

(assert (=> bs!1842887 (= (and (= (_2!37037 lt!2466737) s!14361) (= (regOne!34246 r3!135) (regOne!34246 lt!2466744)) (= (regTwo!34246 r3!135) (regTwo!34246 lt!2466744))) (= lambda!391985 lambda!391947))))

(declare-fun bs!1842888 () Bool)

(assert (= bs!1842888 (and b!6902702 b!6902246)))

(assert (=> bs!1842888 (not (= lambda!391985 lambda!391946))))

(assert (=> b!6902702 true))

(assert (=> b!6902702 true))

(declare-fun b!6902692 () Bool)

(declare-fun e!4156824 () Bool)

(declare-fun e!4156819 () Bool)

(assert (=> b!6902692 (= e!4156824 e!4156819)))

(declare-fun c!1282489 () Bool)

(assert (=> b!6902692 (= c!1282489 ((_ is Star!16867) r3!135))))

(declare-fun b!6902693 () Bool)

(declare-fun e!4156820 () Bool)

(assert (=> b!6902693 (= e!4156820 (matchRSpec!3930 (regTwo!34247 r3!135) (_2!37037 lt!2466737)))))

(declare-fun b!6902694 () Bool)

(declare-fun e!4156822 () Bool)

(assert (=> b!6902694 (= e!4156822 (= (_2!37037 lt!2466737) (Cons!66500 (c!1282339 r3!135) Nil!66500)))))

(declare-fun bm!627698 () Bool)

(declare-fun call!627703 () Bool)

(assert (=> bm!627698 (= call!627703 (isEmpty!38730 (_2!37037 lt!2466737)))))

(declare-fun d!2162291 () Bool)

(declare-fun c!1282491 () Bool)

(assert (=> d!2162291 (= c!1282491 ((_ is EmptyExpr!16867) r3!135))))

(declare-fun e!4156823 () Bool)

(assert (=> d!2162291 (= (matchRSpec!3930 r3!135 (_2!37037 lt!2466737)) e!4156823)))

(declare-fun b!6902695 () Bool)

(declare-fun res!2814864 () Bool)

(declare-fun e!4156821 () Bool)

(assert (=> b!6902695 (=> res!2814864 e!4156821)))

(assert (=> b!6902695 (= res!2814864 call!627703)))

(assert (=> b!6902695 (= e!4156819 e!4156821)))

(declare-fun b!6902696 () Bool)

(declare-fun e!4156818 () Bool)

(assert (=> b!6902696 (= e!4156823 e!4156818)))

(declare-fun res!2814862 () Bool)

(assert (=> b!6902696 (= res!2814862 (not ((_ is EmptyLang!16867) r3!135)))))

(assert (=> b!6902696 (=> (not res!2814862) (not e!4156818))))

(declare-fun call!627704 () Bool)

(assert (=> b!6902697 (= e!4156821 call!627704)))

(declare-fun b!6902698 () Bool)

(declare-fun c!1282490 () Bool)

(assert (=> b!6902698 (= c!1282490 ((_ is Union!16867) r3!135))))

(assert (=> b!6902698 (= e!4156822 e!4156824)))

(declare-fun b!6902699 () Bool)

(declare-fun c!1282492 () Bool)

(assert (=> b!6902699 (= c!1282492 ((_ is ElementMatch!16867) r3!135))))

(assert (=> b!6902699 (= e!4156818 e!4156822)))

(declare-fun b!6902700 () Bool)

(assert (=> b!6902700 (= e!4156823 call!627703)))

(declare-fun b!6902701 () Bool)

(assert (=> b!6902701 (= e!4156824 e!4156820)))

(declare-fun res!2814863 () Bool)

(assert (=> b!6902701 (= res!2814863 (matchRSpec!3930 (regOne!34247 r3!135) (_2!37037 lt!2466737)))))

(assert (=> b!6902701 (=> res!2814863 e!4156820)))

(assert (=> b!6902702 (= e!4156819 call!627704)))

(declare-fun bm!627699 () Bool)

(assert (=> bm!627699 (= call!627704 (Exists!3875 (ite c!1282489 lambda!391984 lambda!391985)))))

(assert (= (and d!2162291 c!1282491) b!6902700))

(assert (= (and d!2162291 (not c!1282491)) b!6902696))

(assert (= (and b!6902696 res!2814862) b!6902699))

(assert (= (and b!6902699 c!1282492) b!6902694))

(assert (= (and b!6902699 (not c!1282492)) b!6902698))

(assert (= (and b!6902698 c!1282490) b!6902701))

(assert (= (and b!6902698 (not c!1282490)) b!6902692))

(assert (= (and b!6902701 (not res!2814863)) b!6902693))

(assert (= (and b!6902692 c!1282489) b!6902695))

(assert (= (and b!6902692 (not c!1282489)) b!6902702))

(assert (= (and b!6902695 (not res!2814864)) b!6902697))

(assert (= (or b!6902697 b!6902702) bm!627699))

(assert (= (or b!6902700 b!6902695) bm!627698))

(declare-fun m!7620654 () Bool)

(assert (=> b!6902693 m!7620654))

(declare-fun m!7620656 () Bool)

(assert (=> bm!627698 m!7620656))

(declare-fun m!7620658 () Bool)

(assert (=> b!6902701 m!7620658))

(declare-fun m!7620660 () Bool)

(assert (=> bm!627699 m!7620660))

(assert (=> b!6901981 d!2162291))

(declare-fun d!2162293 () Bool)

(assert (=> d!2162293 (= (matchR!9012 r3!135 (_2!37037 lt!2466737)) (matchRSpec!3930 r3!135 (_2!37037 lt!2466737)))))

(declare-fun lt!2466853 () Unit!160468)

(assert (=> d!2162293 (= lt!2466853 (choose!51388 r3!135 (_2!37037 lt!2466737)))))

(assert (=> d!2162293 (validRegex!8575 r3!135)))

(assert (=> d!2162293 (= (mainMatchTheorem!3930 r3!135 (_2!37037 lt!2466737)) lt!2466853)))

(declare-fun bs!1842889 () Bool)

(assert (= bs!1842889 d!2162293))

(assert (=> bs!1842889 m!7620036))

(assert (=> bs!1842889 m!7619988))

(declare-fun m!7620662 () Bool)

(assert (=> bs!1842889 m!7620662))

(assert (=> bs!1842889 m!7619960))

(assert (=> b!6901981 d!2162293))

(declare-fun d!2162295 () Bool)

(assert (=> d!2162295 (= (isDefined!13349 lt!2466745) (not (isEmpty!38731 lt!2466745)))))

(declare-fun bs!1842890 () Bool)

(assert (= bs!1842890 d!2162295))

(declare-fun m!7620664 () Bool)

(assert (=> bs!1842890 m!7620664))

(assert (=> b!6901981 d!2162295))

(declare-fun d!2162297 () Bool)

(assert (=> d!2162297 (= (Exists!3875 lambda!391920) (choose!51389 lambda!391920))))

(declare-fun bs!1842891 () Bool)

(assert (= bs!1842891 d!2162297))

(declare-fun m!7620666 () Bool)

(assert (=> bs!1842891 m!7620666))

(assert (=> b!6901981 d!2162297))

(declare-fun b!6902703 () Bool)

(declare-fun e!4156830 () Bool)

(declare-fun e!4156829 () Bool)

(assert (=> b!6902703 (= e!4156830 e!4156829)))

(declare-fun res!2814865 () Bool)

(assert (=> b!6902703 (=> (not res!2814865) (not e!4156829))))

(declare-fun lt!2466854 () Bool)

(assert (=> b!6902703 (= res!2814865 (not lt!2466854))))

(declare-fun b!6902704 () Bool)

(declare-fun res!2814867 () Bool)

(declare-fun e!4156827 () Bool)

(assert (=> b!6902704 (=> (not res!2814867) (not e!4156827))))

(declare-fun call!627705 () Bool)

(assert (=> b!6902704 (= res!2814867 (not call!627705))))

(declare-fun b!6902705 () Bool)

(declare-fun e!4156825 () Bool)

(assert (=> b!6902705 (= e!4156825 (matchR!9012 (derivativeStep!5387 lt!2466741 (head!13840 lt!2466728)) (tail!12892 lt!2466728)))))

(declare-fun b!6902706 () Bool)

(declare-fun e!4156828 () Bool)

(assert (=> b!6902706 (= e!4156829 e!4156828)))

(declare-fun res!2814871 () Bool)

(assert (=> b!6902706 (=> res!2814871 e!4156828)))

(assert (=> b!6902706 (= res!2814871 call!627705)))

(declare-fun b!6902707 () Bool)

(assert (=> b!6902707 (= e!4156827 (= (head!13840 lt!2466728) (c!1282339 lt!2466741)))))

(declare-fun b!6902708 () Bool)

(assert (=> b!6902708 (= e!4156828 (not (= (head!13840 lt!2466728) (c!1282339 lt!2466741))))))

(declare-fun b!6902709 () Bool)

(assert (=> b!6902709 (= e!4156825 (nullable!6708 lt!2466741))))

(declare-fun b!6902710 () Bool)

(declare-fun e!4156831 () Bool)

(declare-fun e!4156826 () Bool)

(assert (=> b!6902710 (= e!4156831 e!4156826)))

(declare-fun c!1282495 () Bool)

(assert (=> b!6902710 (= c!1282495 ((_ is EmptyLang!16867) lt!2466741))))

(declare-fun b!6902711 () Bool)

(declare-fun res!2814872 () Bool)

(assert (=> b!6902711 (=> res!2814872 e!4156830)))

(assert (=> b!6902711 (= res!2814872 (not ((_ is ElementMatch!16867) lt!2466741)))))

(assert (=> b!6902711 (= e!4156826 e!4156830)))

(declare-fun d!2162299 () Bool)

(assert (=> d!2162299 e!4156831))

(declare-fun c!1282493 () Bool)

(assert (=> d!2162299 (= c!1282493 ((_ is EmptyExpr!16867) lt!2466741))))

(assert (=> d!2162299 (= lt!2466854 e!4156825)))

(declare-fun c!1282494 () Bool)

(assert (=> d!2162299 (= c!1282494 (isEmpty!38730 lt!2466728))))

(assert (=> d!2162299 (validRegex!8575 lt!2466741)))

(assert (=> d!2162299 (= (matchR!9012 lt!2466741 lt!2466728) lt!2466854)))

(declare-fun b!6902712 () Bool)

(declare-fun res!2814868 () Bool)

(assert (=> b!6902712 (=> res!2814868 e!4156830)))

(assert (=> b!6902712 (= res!2814868 e!4156827)))

(declare-fun res!2814866 () Bool)

(assert (=> b!6902712 (=> (not res!2814866) (not e!4156827))))

(assert (=> b!6902712 (= res!2814866 lt!2466854)))

(declare-fun b!6902713 () Bool)

(declare-fun res!2814869 () Bool)

(assert (=> b!6902713 (=> res!2814869 e!4156828)))

(assert (=> b!6902713 (= res!2814869 (not (isEmpty!38730 (tail!12892 lt!2466728))))))

(declare-fun b!6902714 () Bool)

(assert (=> b!6902714 (= e!4156826 (not lt!2466854))))

(declare-fun b!6902715 () Bool)

(assert (=> b!6902715 (= e!4156831 (= lt!2466854 call!627705))))

(declare-fun bm!627700 () Bool)

(assert (=> bm!627700 (= call!627705 (isEmpty!38730 lt!2466728))))

(declare-fun b!6902716 () Bool)

(declare-fun res!2814870 () Bool)

(assert (=> b!6902716 (=> (not res!2814870) (not e!4156827))))

(assert (=> b!6902716 (= res!2814870 (isEmpty!38730 (tail!12892 lt!2466728)))))

(assert (= (and d!2162299 c!1282494) b!6902709))

(assert (= (and d!2162299 (not c!1282494)) b!6902705))

(assert (= (and d!2162299 c!1282493) b!6902715))

(assert (= (and d!2162299 (not c!1282493)) b!6902710))

(assert (= (and b!6902710 c!1282495) b!6902714))

(assert (= (and b!6902710 (not c!1282495)) b!6902711))

(assert (= (and b!6902711 (not res!2814872)) b!6902712))

(assert (= (and b!6902712 res!2814866) b!6902704))

(assert (= (and b!6902704 res!2814867) b!6902716))

(assert (= (and b!6902716 res!2814870) b!6902707))

(assert (= (and b!6902712 (not res!2814868)) b!6902703))

(assert (= (and b!6902703 res!2814865) b!6902706))

(assert (= (and b!6902706 (not res!2814871)) b!6902713))

(assert (= (and b!6902713 (not res!2814869)) b!6902708))

(assert (= (or b!6902715 b!6902704 b!6902706) bm!627700))

(declare-fun m!7620668 () Bool)

(assert (=> d!2162299 m!7620668))

(assert (=> d!2162299 m!7620494))

(declare-fun m!7620670 () Bool)

(assert (=> b!6902709 m!7620670))

(declare-fun m!7620672 () Bool)

(assert (=> b!6902716 m!7620672))

(assert (=> b!6902716 m!7620672))

(declare-fun m!7620674 () Bool)

(assert (=> b!6902716 m!7620674))

(declare-fun m!7620676 () Bool)

(assert (=> b!6902705 m!7620676))

(assert (=> b!6902705 m!7620676))

(declare-fun m!7620678 () Bool)

(assert (=> b!6902705 m!7620678))

(assert (=> b!6902705 m!7620672))

(assert (=> b!6902705 m!7620678))

(assert (=> b!6902705 m!7620672))

(declare-fun m!7620680 () Bool)

(assert (=> b!6902705 m!7620680))

(assert (=> b!6902707 m!7620676))

(assert (=> b!6902708 m!7620676))

(assert (=> b!6902713 m!7620672))

(assert (=> b!6902713 m!7620672))

(assert (=> b!6902713 m!7620674))

(assert (=> bm!627700 m!7620668))

(assert (=> b!6901981 d!2162299))

(declare-fun bs!1842892 () Bool)

(declare-fun d!2162301 () Bool)

(assert (= bs!1842892 (and d!2162301 b!6901981)))

(declare-fun lambda!391986 () Int)

(assert (=> bs!1842892 (not (= lambda!391986 lambda!391921))))

(declare-fun bs!1842893 () Bool)

(assert (= bs!1842893 (and d!2162301 d!2162259)))

(assert (=> bs!1842893 (= lambda!391986 lambda!391978)))

(assert (=> bs!1842892 (= lambda!391986 lambda!391924)))

(declare-fun bs!1842894 () Bool)

(assert (= bs!1842894 (and d!2162301 b!6902301)))

(assert (=> bs!1842894 (not (= lambda!391986 lambda!391952))))

(assert (=> bs!1842892 (not (= lambda!391986 lambda!391923))))

(declare-fun bs!1842895 () Bool)

(assert (= bs!1842895 (and d!2162301 b!6901988)))

(assert (=> bs!1842895 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391986 lambda!391925))))

(declare-fun bs!1842896 () Bool)

(assert (= bs!1842896 (and d!2162301 b!6902564)))

(assert (=> bs!1842896 (not (= lambda!391986 lambda!391981))))

(assert (=> bs!1842892 (= (and (= s!14361 (_2!37037 lt!2466743)) (= lt!2466741 r2!6280)) (= lambda!391986 lambda!391920))))

(declare-fun bs!1842897 () Bool)

(assert (= bs!1842897 (and d!2162301 b!6902702)))

(assert (=> bs!1842897 (not (= lambda!391986 lambda!391985))))

(declare-fun bs!1842898 () Bool)

(assert (= bs!1842898 (and d!2162301 b!6901987)))

(assert (=> bs!1842898 (not (= lambda!391986 lambda!391926))))

(assert (=> bs!1842892 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391986 lambda!391918))))

(declare-fun bs!1842899 () Bool)

(assert (= bs!1842899 (and d!2162301 d!2162189)))

(assert (=> bs!1842899 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391986 lambda!391963))))

(assert (=> bs!1842899 (not (= lambda!391986 lambda!391965))))

(declare-fun bs!1842900 () Bool)

(assert (= bs!1842900 (and d!2162301 b!6902559)))

(assert (=> bs!1842900 (not (= lambda!391986 lambda!391980))))

(declare-fun bs!1842901 () Bool)

(assert (= bs!1842901 (and d!2162301 b!6902697)))

(assert (=> bs!1842901 (not (= lambda!391986 lambda!391984))))

(assert (=> bs!1842892 (not (= lambda!391986 lambda!391919))))

(declare-fun bs!1842902 () Bool)

(assert (= bs!1842902 (and d!2162301 d!2162243)))

(assert (=> bs!1842902 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391986 lambda!391976))))

(declare-fun bs!1842903 () Bool)

(assert (= bs!1842903 (and d!2162301 d!2162215)))

(assert (=> bs!1842903 (= (and (= s!14361 (_2!37037 lt!2466743)) (= lt!2466741 r2!6280)) (= lambda!391986 lambda!391973))))

(declare-fun bs!1842904 () Bool)

(assert (= bs!1842904 (and d!2162301 b!6902296)))

(assert (=> bs!1842904 (not (= lambda!391986 lambda!391950))))

(assert (=> bs!1842892 (= (and (= s!14361 lt!2466728) (= lt!2466741 r1!6342) (= r3!135 r2!6280)) (= lambda!391986 lambda!391922))))

(declare-fun bs!1842905 () Bool)

(assert (= bs!1842905 (and d!2162301 b!6902251)))

(assert (=> bs!1842905 (not (= lambda!391986 lambda!391947))))

(declare-fun bs!1842906 () Bool)

(assert (= bs!1842906 (and d!2162301 b!6902246)))

(assert (=> bs!1842906 (not (= lambda!391986 lambda!391946))))

(assert (=> d!2162301 true))

(assert (=> d!2162301 true))

(assert (=> d!2162301 true))

(declare-fun lambda!391987 () Int)

(assert (=> bs!1842892 (= (and (= s!14361 (_2!37037 lt!2466743)) (= lt!2466741 r2!6280)) (= lambda!391987 lambda!391921))))

(assert (=> bs!1842893 (not (= lambda!391987 lambda!391978))))

(assert (=> bs!1842892 (not (= lambda!391987 lambda!391924))))

(assert (=> bs!1842894 (= (and (= lt!2466741 (regOne!34246 lt!2466727)) (= r3!135 (regTwo!34246 lt!2466727))) (= lambda!391987 lambda!391952))))

(assert (=> bs!1842892 (= (and (= s!14361 lt!2466728) (= lt!2466741 r1!6342) (= r3!135 r2!6280)) (= lambda!391987 lambda!391923))))

(assert (=> bs!1842895 (not (= lambda!391987 lambda!391925))))

(assert (=> bs!1842896 (= (and (= s!14361 (_1!37037 lt!2466737)) (= lt!2466741 (regOne!34246 r2!6280)) (= r3!135 (regTwo!34246 r2!6280))) (= lambda!391987 lambda!391981))))

(assert (=> bs!1842892 (not (= lambda!391987 lambda!391920))))

(assert (=> bs!1842897 (= (and (= s!14361 (_2!37037 lt!2466737)) (= lt!2466741 (regOne!34246 r3!135)) (= r3!135 (regTwo!34246 r3!135))) (= lambda!391987 lambda!391985))))

(assert (=> bs!1842898 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391987 lambda!391926))))

(assert (=> bs!1842892 (not (= lambda!391987 lambda!391918))))

(assert (=> bs!1842899 (not (= lambda!391987 lambda!391963))))

(assert (=> bs!1842900 (not (= lambda!391987 lambda!391980))))

(assert (=> bs!1842901 (not (= lambda!391987 lambda!391984))))

(assert (=> bs!1842892 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391987 lambda!391919))))

(assert (=> bs!1842902 (not (= lambda!391987 lambda!391976))))

(assert (=> bs!1842903 (not (= lambda!391987 lambda!391973))))

(assert (=> bs!1842904 (not (= lambda!391987 lambda!391950))))

(assert (=> bs!1842892 (not (= lambda!391987 lambda!391922))))

(assert (=> bs!1842905 (= (and (= lt!2466741 (regOne!34246 lt!2466744)) (= r3!135 (regTwo!34246 lt!2466744))) (= lambda!391987 lambda!391947))))

(assert (=> bs!1842906 (not (= lambda!391987 lambda!391946))))

(assert (=> bs!1842899 (= (and (= lt!2466741 r1!6342) (= r3!135 lt!2466750)) (= lambda!391987 lambda!391965))))

(declare-fun bs!1842907 () Bool)

(assert (= bs!1842907 d!2162301))

(assert (=> bs!1842907 (not (= lambda!391987 lambda!391986))))

(assert (=> d!2162301 true))

(assert (=> d!2162301 true))

(assert (=> d!2162301 true))

(assert (=> d!2162301 (= (Exists!3875 lambda!391986) (Exists!3875 lambda!391987))))

(declare-fun lt!2466855 () Unit!160468)

(assert (=> d!2162301 (= lt!2466855 (choose!51390 lt!2466741 r3!135 s!14361))))

(assert (=> d!2162301 (validRegex!8575 lt!2466741)))

(assert (=> d!2162301 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2348 lt!2466741 r3!135 s!14361) lt!2466855)))

(declare-fun m!7620682 () Bool)

(assert (=> bs!1842907 m!7620682))

(declare-fun m!7620684 () Bool)

(assert (=> bs!1842907 m!7620684))

(declare-fun m!7620686 () Bool)

(assert (=> bs!1842907 m!7620686))

(assert (=> bs!1842907 m!7620494))

(assert (=> b!6901981 d!2162301))

(declare-fun b!6902717 () Bool)

(declare-fun e!4156837 () Bool)

(declare-fun e!4156836 () Bool)

(assert (=> b!6902717 (= e!4156837 e!4156836)))

(declare-fun res!2814873 () Bool)

(assert (=> b!6902717 (=> (not res!2814873) (not e!4156836))))

(declare-fun lt!2466856 () Bool)

(assert (=> b!6902717 (= res!2814873 (not lt!2466856))))

(declare-fun b!6902718 () Bool)

(declare-fun res!2814875 () Bool)

(declare-fun e!4156834 () Bool)

(assert (=> b!6902718 (=> (not res!2814875) (not e!4156834))))

(declare-fun call!627706 () Bool)

(assert (=> b!6902718 (= res!2814875 (not call!627706))))

(declare-fun b!6902719 () Bool)

(declare-fun e!4156832 () Bool)

(assert (=> b!6902719 (= e!4156832 (matchR!9012 (derivativeStep!5387 r3!135 (head!13840 (_2!37037 lt!2466737))) (tail!12892 (_2!37037 lt!2466737))))))

(declare-fun b!6902720 () Bool)

(declare-fun e!4156835 () Bool)

(assert (=> b!6902720 (= e!4156836 e!4156835)))

(declare-fun res!2814879 () Bool)

(assert (=> b!6902720 (=> res!2814879 e!4156835)))

(assert (=> b!6902720 (= res!2814879 call!627706)))

(declare-fun b!6902721 () Bool)

(assert (=> b!6902721 (= e!4156834 (= (head!13840 (_2!37037 lt!2466737)) (c!1282339 r3!135)))))

(declare-fun b!6902722 () Bool)

(assert (=> b!6902722 (= e!4156835 (not (= (head!13840 (_2!37037 lt!2466737)) (c!1282339 r3!135))))))

(declare-fun b!6902723 () Bool)

(assert (=> b!6902723 (= e!4156832 (nullable!6708 r3!135))))

(declare-fun b!6902724 () Bool)

(declare-fun e!4156838 () Bool)

(declare-fun e!4156833 () Bool)

(assert (=> b!6902724 (= e!4156838 e!4156833)))

(declare-fun c!1282498 () Bool)

(assert (=> b!6902724 (= c!1282498 ((_ is EmptyLang!16867) r3!135))))

(declare-fun b!6902725 () Bool)

(declare-fun res!2814880 () Bool)

(assert (=> b!6902725 (=> res!2814880 e!4156837)))

(assert (=> b!6902725 (= res!2814880 (not ((_ is ElementMatch!16867) r3!135)))))

(assert (=> b!6902725 (= e!4156833 e!4156837)))

(declare-fun d!2162303 () Bool)

(assert (=> d!2162303 e!4156838))

(declare-fun c!1282496 () Bool)

(assert (=> d!2162303 (= c!1282496 ((_ is EmptyExpr!16867) r3!135))))

(assert (=> d!2162303 (= lt!2466856 e!4156832)))

(declare-fun c!1282497 () Bool)

(assert (=> d!2162303 (= c!1282497 (isEmpty!38730 (_2!37037 lt!2466737)))))

(assert (=> d!2162303 (validRegex!8575 r3!135)))

(assert (=> d!2162303 (= (matchR!9012 r3!135 (_2!37037 lt!2466737)) lt!2466856)))

(declare-fun b!6902726 () Bool)

(declare-fun res!2814876 () Bool)

(assert (=> b!6902726 (=> res!2814876 e!4156837)))

(assert (=> b!6902726 (= res!2814876 e!4156834)))

(declare-fun res!2814874 () Bool)

(assert (=> b!6902726 (=> (not res!2814874) (not e!4156834))))

(assert (=> b!6902726 (= res!2814874 lt!2466856)))

(declare-fun b!6902727 () Bool)

(declare-fun res!2814877 () Bool)

(assert (=> b!6902727 (=> res!2814877 e!4156835)))

(assert (=> b!6902727 (= res!2814877 (not (isEmpty!38730 (tail!12892 (_2!37037 lt!2466737)))))))

(declare-fun b!6902728 () Bool)

(assert (=> b!6902728 (= e!4156833 (not lt!2466856))))

(declare-fun b!6902729 () Bool)

(assert (=> b!6902729 (= e!4156838 (= lt!2466856 call!627706))))

(declare-fun bm!627701 () Bool)

(assert (=> bm!627701 (= call!627706 (isEmpty!38730 (_2!37037 lt!2466737)))))

(declare-fun b!6902730 () Bool)

(declare-fun res!2814878 () Bool)

(assert (=> b!6902730 (=> (not res!2814878) (not e!4156834))))

(assert (=> b!6902730 (= res!2814878 (isEmpty!38730 (tail!12892 (_2!37037 lt!2466737))))))

(assert (= (and d!2162303 c!1282497) b!6902723))

(assert (= (and d!2162303 (not c!1282497)) b!6902719))

(assert (= (and d!2162303 c!1282496) b!6902729))

(assert (= (and d!2162303 (not c!1282496)) b!6902724))

(assert (= (and b!6902724 c!1282498) b!6902728))

(assert (= (and b!6902724 (not c!1282498)) b!6902725))

(assert (= (and b!6902725 (not res!2814880)) b!6902726))

(assert (= (and b!6902726 res!2814874) b!6902718))

(assert (= (and b!6902718 res!2814875) b!6902730))

(assert (= (and b!6902730 res!2814878) b!6902721))

(assert (= (and b!6902726 (not res!2814876)) b!6902717))

(assert (= (and b!6902717 res!2814873) b!6902720))

(assert (= (and b!6902720 (not res!2814879)) b!6902727))

(assert (= (and b!6902727 (not res!2814877)) b!6902722))

(assert (= (or b!6902729 b!6902718 b!6902720) bm!627701))

(assert (=> d!2162303 m!7620656))

(assert (=> d!2162303 m!7619960))

(declare-fun m!7620688 () Bool)

(assert (=> b!6902723 m!7620688))

(declare-fun m!7620690 () Bool)

(assert (=> b!6902730 m!7620690))

(assert (=> b!6902730 m!7620690))

(declare-fun m!7620692 () Bool)

(assert (=> b!6902730 m!7620692))

(declare-fun m!7620694 () Bool)

(assert (=> b!6902719 m!7620694))

(assert (=> b!6902719 m!7620694))

(declare-fun m!7620696 () Bool)

(assert (=> b!6902719 m!7620696))

(assert (=> b!6902719 m!7620690))

(assert (=> b!6902719 m!7620696))

(assert (=> b!6902719 m!7620690))

(declare-fun m!7620698 () Bool)

(assert (=> b!6902719 m!7620698))

(assert (=> b!6902721 m!7620694))

(assert (=> b!6902722 m!7620694))

(assert (=> b!6902727 m!7620690))

(assert (=> b!6902727 m!7620690))

(assert (=> b!6902727 m!7620692))

(assert (=> bm!627701 m!7620656))

(assert (=> b!6901981 d!2162303))

(declare-fun d!2162305 () Bool)

(assert (=> d!2162305 (= (Exists!3875 lambda!391919) (choose!51389 lambda!391919))))

(declare-fun bs!1842908 () Bool)

(assert (= bs!1842908 d!2162305))

(declare-fun m!7620700 () Bool)

(assert (=> bs!1842908 m!7620700))

(assert (=> b!6901981 d!2162305))

(declare-fun d!2162307 () Bool)

(assert (=> d!2162307 (= (get!23251 lt!2466747) (v!52917 lt!2466747))))

(assert (=> b!6901981 d!2162307))

(declare-fun bs!1842909 () Bool)

(declare-fun d!2162309 () Bool)

(assert (= bs!1842909 (and d!2162309 b!6901981)))

(declare-fun lambda!391988 () Int)

(assert (=> bs!1842909 (not (= lambda!391988 lambda!391921))))

(declare-fun bs!1842910 () Bool)

(assert (= bs!1842910 (and d!2162309 d!2162259)))

(assert (=> bs!1842910 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 lt!2466741)) (= lambda!391988 lambda!391978))))

(assert (=> bs!1842909 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 lt!2466741)) (= lambda!391988 lambda!391924))))

(declare-fun bs!1842911 () Bool)

(assert (= bs!1842911 (and d!2162309 b!6902301)))

(assert (=> bs!1842911 (not (= lambda!391988 lambda!391952))))

(assert (=> bs!1842909 (not (= lambda!391988 lambda!391923))))

(declare-fun bs!1842912 () Bool)

(assert (= bs!1842912 (and d!2162309 b!6901988)))

(assert (=> bs!1842912 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391988 lambda!391925))))

(declare-fun bs!1842913 () Bool)

(assert (= bs!1842913 (and d!2162309 b!6902564)))

(assert (=> bs!1842913 (not (= lambda!391988 lambda!391981))))

(assert (=> bs!1842909 (= lambda!391988 lambda!391920)))

(declare-fun bs!1842914 () Bool)

(assert (= bs!1842914 (and d!2162309 b!6902702)))

(assert (=> bs!1842914 (not (= lambda!391988 lambda!391985))))

(declare-fun bs!1842915 () Bool)

(assert (= bs!1842915 (and d!2162309 d!2162301)))

(assert (=> bs!1842915 (not (= lambda!391988 lambda!391987))))

(declare-fun bs!1842916 () Bool)

(assert (= bs!1842916 (and d!2162309 b!6901987)))

(assert (=> bs!1842916 (not (= lambda!391988 lambda!391926))))

(assert (=> bs!1842909 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391988 lambda!391918))))

(declare-fun bs!1842917 () Bool)

(assert (= bs!1842917 (and d!2162309 d!2162189)))

(assert (=> bs!1842917 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391988 lambda!391963))))

(declare-fun bs!1842918 () Bool)

(assert (= bs!1842918 (and d!2162309 b!6902559)))

(assert (=> bs!1842918 (not (= lambda!391988 lambda!391980))))

(declare-fun bs!1842919 () Bool)

(assert (= bs!1842919 (and d!2162309 b!6902697)))

(assert (=> bs!1842919 (not (= lambda!391988 lambda!391984))))

(assert (=> bs!1842909 (not (= lambda!391988 lambda!391919))))

(declare-fun bs!1842920 () Bool)

(assert (= bs!1842920 (and d!2162309 d!2162243)))

(assert (=> bs!1842920 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391988 lambda!391976))))

(declare-fun bs!1842921 () Bool)

(assert (= bs!1842921 (and d!2162309 d!2162215)))

(assert (=> bs!1842921 (= lambda!391988 lambda!391973)))

(declare-fun bs!1842922 () Bool)

(assert (= bs!1842922 (and d!2162309 b!6902296)))

(assert (=> bs!1842922 (not (= lambda!391988 lambda!391950))))

(assert (=> bs!1842909 (= (and (= (_2!37037 lt!2466743) lt!2466728) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!391988 lambda!391922))))

(declare-fun bs!1842923 () Bool)

(assert (= bs!1842923 (and d!2162309 b!6902251)))

(assert (=> bs!1842923 (not (= lambda!391988 lambda!391947))))

(declare-fun bs!1842924 () Bool)

(assert (= bs!1842924 (and d!2162309 b!6902246)))

(assert (=> bs!1842924 (not (= lambda!391988 lambda!391946))))

(assert (=> bs!1842917 (not (= lambda!391988 lambda!391965))))

(assert (=> bs!1842915 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 lt!2466741)) (= lambda!391988 lambda!391986))))

(assert (=> d!2162309 true))

(assert (=> d!2162309 true))

(assert (=> d!2162309 true))

(declare-fun lambda!391989 () Int)

(assert (=> bs!1842909 (= lambda!391989 lambda!391921)))

(assert (=> bs!1842910 (not (= lambda!391989 lambda!391978))))

(assert (=> bs!1842909 (not (= lambda!391989 lambda!391924))))

(assert (=> bs!1842911 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 (regOne!34246 lt!2466727)) (= r3!135 (regTwo!34246 lt!2466727))) (= lambda!391989 lambda!391952))))

(assert (=> bs!1842909 (= (and (= (_2!37037 lt!2466743) lt!2466728) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!391989 lambda!391923))))

(declare-fun bs!1842925 () Bool)

(assert (= bs!1842925 d!2162309))

(assert (=> bs!1842925 (not (= lambda!391989 lambda!391988))))

(assert (=> bs!1842912 (not (= lambda!391989 lambda!391925))))

(assert (=> bs!1842913 (= (and (= (_2!37037 lt!2466743) (_1!37037 lt!2466737)) (= r2!6280 (regOne!34246 r2!6280)) (= r3!135 (regTwo!34246 r2!6280))) (= lambda!391989 lambda!391981))))

(assert (=> bs!1842909 (not (= lambda!391989 lambda!391920))))

(assert (=> bs!1842914 (= (and (= (_2!37037 lt!2466743) (_2!37037 lt!2466737)) (= r2!6280 (regOne!34246 r3!135)) (= r3!135 (regTwo!34246 r3!135))) (= lambda!391989 lambda!391985))))

(assert (=> bs!1842915 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 lt!2466741)) (= lambda!391989 lambda!391987))))

(assert (=> bs!1842916 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391989 lambda!391926))))

(assert (=> bs!1842909 (not (= lambda!391989 lambda!391918))))

(assert (=> bs!1842917 (not (= lambda!391989 lambda!391963))))

(assert (=> bs!1842918 (not (= lambda!391989 lambda!391980))))

(assert (=> bs!1842919 (not (= lambda!391989 lambda!391984))))

(assert (=> bs!1842909 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391989 lambda!391919))))

(assert (=> bs!1842920 (not (= lambda!391989 lambda!391976))))

(assert (=> bs!1842921 (not (= lambda!391989 lambda!391973))))

(assert (=> bs!1842922 (not (= lambda!391989 lambda!391950))))

(assert (=> bs!1842909 (not (= lambda!391989 lambda!391922))))

(assert (=> bs!1842923 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 (regOne!34246 lt!2466744)) (= r3!135 (regTwo!34246 lt!2466744))) (= lambda!391989 lambda!391947))))

(assert (=> bs!1842924 (not (= lambda!391989 lambda!391946))))

(assert (=> bs!1842917 (= (and (= (_2!37037 lt!2466743) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466750)) (= lambda!391989 lambda!391965))))

(assert (=> bs!1842915 (not (= lambda!391989 lambda!391986))))

(assert (=> d!2162309 true))

(assert (=> d!2162309 true))

(assert (=> d!2162309 true))

(assert (=> d!2162309 (= (Exists!3875 lambda!391988) (Exists!3875 lambda!391989))))

(declare-fun lt!2466857 () Unit!160468)

(assert (=> d!2162309 (= lt!2466857 (choose!51390 r2!6280 r3!135 (_2!37037 lt!2466743)))))

(assert (=> d!2162309 (validRegex!8575 r2!6280)))

(assert (=> d!2162309 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2348 r2!6280 r3!135 (_2!37037 lt!2466743)) lt!2466857)))

(declare-fun m!7620702 () Bool)

(assert (=> bs!1842925 m!7620702))

(declare-fun m!7620704 () Bool)

(assert (=> bs!1842925 m!7620704))

(declare-fun m!7620706 () Bool)

(assert (=> bs!1842925 m!7620706))

(assert (=> bs!1842925 m!7620076))

(assert (=> b!6901981 d!2162309))

(declare-fun b!6902749 () Bool)

(declare-fun e!4156851 () Bool)

(declare-fun lt!2466865 () Option!16646)

(assert (=> b!6902749 (= e!4156851 (not (isDefined!13349 lt!2466865)))))

(declare-fun b!6902750 () Bool)

(declare-fun e!4156852 () Option!16646)

(assert (=> b!6902750 (= e!4156852 None!16645)))

(declare-fun d!2162311 () Bool)

(assert (=> d!2162311 e!4156851))

(declare-fun res!2814893 () Bool)

(assert (=> d!2162311 (=> res!2814893 e!4156851)))

(declare-fun e!4156853 () Bool)

(assert (=> d!2162311 (= res!2814893 e!4156853)))

(declare-fun res!2814895 () Bool)

(assert (=> d!2162311 (=> (not res!2814895) (not e!4156853))))

(assert (=> d!2162311 (= res!2814895 (isDefined!13349 lt!2466865))))

(declare-fun e!4156850 () Option!16646)

(assert (=> d!2162311 (= lt!2466865 e!4156850)))

(declare-fun c!1282504 () Bool)

(declare-fun e!4156849 () Bool)

(assert (=> d!2162311 (= c!1282504 e!4156849)))

(declare-fun res!2814892 () Bool)

(assert (=> d!2162311 (=> (not res!2814892) (not e!4156849))))

(assert (=> d!2162311 (= res!2814892 (matchR!9012 lt!2466741 Nil!66500))))

(assert (=> d!2162311 (validRegex!8575 lt!2466741)))

(assert (=> d!2162311 (= (findConcatSeparation!3060 lt!2466741 r3!135 Nil!66500 s!14361 s!14361) lt!2466865)))

(declare-fun b!6902751 () Bool)

(assert (=> b!6902751 (= e!4156853 (= (++!14920 (_1!37037 (get!23251 lt!2466865)) (_2!37037 (get!23251 lt!2466865))) s!14361))))

(declare-fun b!6902752 () Bool)

(assert (=> b!6902752 (= e!4156850 (Some!16645 (tuple2!67469 Nil!66500 s!14361)))))

(declare-fun b!6902753 () Bool)

(assert (=> b!6902753 (= e!4156850 e!4156852)))

(declare-fun c!1282503 () Bool)

(assert (=> b!6902753 (= c!1282503 ((_ is Nil!66500) s!14361))))

(declare-fun b!6902754 () Bool)

(declare-fun res!2814894 () Bool)

(assert (=> b!6902754 (=> (not res!2814894) (not e!4156853))))

(assert (=> b!6902754 (= res!2814894 (matchR!9012 lt!2466741 (_1!37037 (get!23251 lt!2466865))))))

(declare-fun b!6902755 () Bool)

(assert (=> b!6902755 (= e!4156849 (matchR!9012 r3!135 s!14361))))

(declare-fun b!6902756 () Bool)

(declare-fun lt!2466864 () Unit!160468)

(declare-fun lt!2466866 () Unit!160468)

(assert (=> b!6902756 (= lt!2466864 lt!2466866)))

(assert (=> b!6902756 (= (++!14920 (++!14920 Nil!66500 (Cons!66500 (h!72948 s!14361) Nil!66500)) (t!380367 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2795 (List!66624 C!34004 List!66624 List!66624) Unit!160468)

(assert (=> b!6902756 (= lt!2466866 (lemmaMoveElementToOtherListKeepsConcatEq!2795 Nil!66500 (h!72948 s!14361) (t!380367 s!14361) s!14361))))

(assert (=> b!6902756 (= e!4156852 (findConcatSeparation!3060 lt!2466741 r3!135 (++!14920 Nil!66500 (Cons!66500 (h!72948 s!14361) Nil!66500)) (t!380367 s!14361) s!14361))))

(declare-fun b!6902757 () Bool)

(declare-fun res!2814891 () Bool)

(assert (=> b!6902757 (=> (not res!2814891) (not e!4156853))))

(assert (=> b!6902757 (= res!2814891 (matchR!9012 r3!135 (_2!37037 (get!23251 lt!2466865))))))

(assert (= (and d!2162311 res!2814892) b!6902755))

(assert (= (and d!2162311 c!1282504) b!6902752))

(assert (= (and d!2162311 (not c!1282504)) b!6902753))

(assert (= (and b!6902753 c!1282503) b!6902750))

(assert (= (and b!6902753 (not c!1282503)) b!6902756))

(assert (= (and d!2162311 res!2814895) b!6902754))

(assert (= (and b!6902754 res!2814894) b!6902757))

(assert (= (and b!6902757 res!2814891) b!6902751))

(assert (= (and d!2162311 (not res!2814893)) b!6902749))

(declare-fun m!7620708 () Bool)

(assert (=> b!6902751 m!7620708))

(declare-fun m!7620710 () Bool)

(assert (=> b!6902751 m!7620710))

(declare-fun m!7620712 () Bool)

(assert (=> b!6902755 m!7620712))

(assert (=> b!6902757 m!7620708))

(declare-fun m!7620714 () Bool)

(assert (=> b!6902757 m!7620714))

(declare-fun m!7620716 () Bool)

(assert (=> b!6902756 m!7620716))

(assert (=> b!6902756 m!7620716))

(declare-fun m!7620718 () Bool)

(assert (=> b!6902756 m!7620718))

(declare-fun m!7620720 () Bool)

(assert (=> b!6902756 m!7620720))

(assert (=> b!6902756 m!7620716))

(declare-fun m!7620722 () Bool)

(assert (=> b!6902756 m!7620722))

(declare-fun m!7620724 () Bool)

(assert (=> d!2162311 m!7620724))

(declare-fun m!7620726 () Bool)

(assert (=> d!2162311 m!7620726))

(assert (=> d!2162311 m!7620494))

(assert (=> b!6902749 m!7620724))

(assert (=> b!6902754 m!7620708))

(declare-fun m!7620728 () Bool)

(assert (=> b!6902754 m!7620728))

(assert (=> b!6901981 d!2162311))

(declare-fun bs!1842926 () Bool)

(declare-fun b!6902763 () Bool)

(assert (= bs!1842926 (and b!6902763 b!6901981)))

(declare-fun lambda!391990 () Int)

(assert (=> bs!1842926 (not (= lambda!391990 lambda!391921))))

(declare-fun bs!1842927 () Bool)

(assert (= bs!1842927 (and b!6902763 d!2162259)))

(assert (=> bs!1842927 (not (= lambda!391990 lambda!391978))))

(assert (=> bs!1842926 (not (= lambda!391990 lambda!391924))))

(declare-fun bs!1842928 () Bool)

(assert (= bs!1842928 (and b!6902763 b!6902301)))

(assert (=> bs!1842928 (not (= lambda!391990 lambda!391952))))

(assert (=> bs!1842926 (not (= lambda!391990 lambda!391923))))

(declare-fun bs!1842929 () Bool)

(assert (= bs!1842929 (and b!6902763 d!2162309)))

(assert (=> bs!1842929 (not (= lambda!391990 lambda!391988))))

(declare-fun bs!1842930 () Bool)

(assert (= bs!1842930 (and b!6902763 b!6901988)))

(assert (=> bs!1842930 (not (= lambda!391990 lambda!391925))))

(declare-fun bs!1842931 () Bool)

(assert (= bs!1842931 (and b!6902763 b!6902564)))

(assert (=> bs!1842931 (not (= lambda!391990 lambda!391981))))

(declare-fun bs!1842932 () Bool)

(assert (= bs!1842932 (and b!6902763 b!6902702)))

(assert (=> bs!1842932 (not (= lambda!391990 lambda!391985))))

(declare-fun bs!1842933 () Bool)

(assert (= bs!1842933 (and b!6902763 d!2162301)))

(assert (=> bs!1842933 (not (= lambda!391990 lambda!391987))))

(declare-fun bs!1842934 () Bool)

(assert (= bs!1842934 (and b!6902763 b!6901987)))

(assert (=> bs!1842934 (not (= lambda!391990 lambda!391926))))

(assert (=> bs!1842926 (not (= lambda!391990 lambda!391918))))

(declare-fun bs!1842935 () Bool)

(assert (= bs!1842935 (and b!6902763 d!2162189)))

(assert (=> bs!1842935 (not (= lambda!391990 lambda!391963))))

(declare-fun bs!1842936 () Bool)

(assert (= bs!1842936 (and b!6902763 b!6902559)))

(assert (=> bs!1842936 (= (and (= (_1!37037 lt!2466743) (_1!37037 lt!2466737)) (= (reg!17196 r1!6342) (reg!17196 r2!6280)) (= r1!6342 r2!6280)) (= lambda!391990 lambda!391980))))

(declare-fun bs!1842937 () Bool)

(assert (= bs!1842937 (and b!6902763 b!6902697)))

(assert (=> bs!1842937 (= (and (= (_1!37037 lt!2466743) (_2!37037 lt!2466737)) (= (reg!17196 r1!6342) (reg!17196 r3!135)) (= r1!6342 r3!135)) (= lambda!391990 lambda!391984))))

(assert (=> bs!1842926 (not (= lambda!391990 lambda!391919))))

(declare-fun bs!1842938 () Bool)

(assert (= bs!1842938 (and b!6902763 d!2162243)))

(assert (=> bs!1842938 (not (= lambda!391990 lambda!391976))))

(declare-fun bs!1842939 () Bool)

(assert (= bs!1842939 (and b!6902763 d!2162215)))

(assert (=> bs!1842939 (not (= lambda!391990 lambda!391973))))

(declare-fun bs!1842940 () Bool)

(assert (= bs!1842940 (and b!6902763 b!6902296)))

(assert (=> bs!1842940 (= (and (= (_1!37037 lt!2466743) s!14361) (= (reg!17196 r1!6342) (reg!17196 lt!2466727)) (= r1!6342 lt!2466727)) (= lambda!391990 lambda!391950))))

(assert (=> bs!1842926 (not (= lambda!391990 lambda!391922))))

(declare-fun bs!1842941 () Bool)

(assert (= bs!1842941 (and b!6902763 b!6902251)))

(assert (=> bs!1842941 (not (= lambda!391990 lambda!391947))))

(declare-fun bs!1842942 () Bool)

(assert (= bs!1842942 (and b!6902763 b!6902246)))

(assert (=> bs!1842942 (= (and (= (_1!37037 lt!2466743) s!14361) (= (reg!17196 r1!6342) (reg!17196 lt!2466744)) (= r1!6342 lt!2466744)) (= lambda!391990 lambda!391946))))

(assert (=> bs!1842929 (not (= lambda!391990 lambda!391989))))

(assert (=> bs!1842926 (not (= lambda!391990 lambda!391920))))

(assert (=> bs!1842935 (not (= lambda!391990 lambda!391965))))

(assert (=> bs!1842933 (not (= lambda!391990 lambda!391986))))

(assert (=> b!6902763 true))

(assert (=> b!6902763 true))

(declare-fun bs!1842943 () Bool)

(declare-fun b!6902768 () Bool)

(assert (= bs!1842943 (and b!6902768 b!6901981)))

(declare-fun lambda!391991 () Int)

(assert (=> bs!1842943 (= (and (= (_1!37037 lt!2466743) (_2!37037 lt!2466743)) (= (regOne!34246 r1!6342) r2!6280) (= (regTwo!34246 r1!6342) r3!135)) (= lambda!391991 lambda!391921))))

(declare-fun bs!1842944 () Bool)

(assert (= bs!1842944 (and b!6902768 d!2162259)))

(assert (=> bs!1842944 (not (= lambda!391991 lambda!391978))))

(assert (=> bs!1842943 (not (= lambda!391991 lambda!391924))))

(declare-fun bs!1842945 () Bool)

(assert (= bs!1842945 (and b!6902768 b!6902301)))

(assert (=> bs!1842945 (= (and (= (_1!37037 lt!2466743) s!14361) (= (regOne!34246 r1!6342) (regOne!34246 lt!2466727)) (= (regTwo!34246 r1!6342) (regTwo!34246 lt!2466727))) (= lambda!391991 lambda!391952))))

(assert (=> bs!1842943 (= (and (= (_1!37037 lt!2466743) lt!2466728) (= (regOne!34246 r1!6342) r1!6342) (= (regTwo!34246 r1!6342) r2!6280)) (= lambda!391991 lambda!391923))))

(declare-fun bs!1842946 () Bool)

(assert (= bs!1842946 (and b!6902768 b!6902763)))

(assert (=> bs!1842946 (not (= lambda!391991 lambda!391990))))

(declare-fun bs!1842947 () Bool)

(assert (= bs!1842947 (and b!6902768 d!2162309)))

(assert (=> bs!1842947 (not (= lambda!391991 lambda!391988))))

(declare-fun bs!1842948 () Bool)

(assert (= bs!1842948 (and b!6902768 b!6901988)))

(assert (=> bs!1842948 (not (= lambda!391991 lambda!391925))))

(declare-fun bs!1842949 () Bool)

(assert (= bs!1842949 (and b!6902768 b!6902564)))

(assert (=> bs!1842949 (= (and (= (_1!37037 lt!2466743) (_1!37037 lt!2466737)) (= (regOne!34246 r1!6342) (regOne!34246 r2!6280)) (= (regTwo!34246 r1!6342) (regTwo!34246 r2!6280))) (= lambda!391991 lambda!391981))))

(declare-fun bs!1842950 () Bool)

(assert (= bs!1842950 (and b!6902768 b!6902702)))

(assert (=> bs!1842950 (= (and (= (_1!37037 lt!2466743) (_2!37037 lt!2466737)) (= (regOne!34246 r1!6342) (regOne!34246 r3!135)) (= (regTwo!34246 r1!6342) (regTwo!34246 r3!135))) (= lambda!391991 lambda!391985))))

(declare-fun bs!1842951 () Bool)

(assert (= bs!1842951 (and b!6902768 d!2162301)))

(assert (=> bs!1842951 (= (and (= (_1!37037 lt!2466743) s!14361) (= (regOne!34246 r1!6342) lt!2466741) (= (regTwo!34246 r1!6342) r3!135)) (= lambda!391991 lambda!391987))))

(declare-fun bs!1842952 () Bool)

(assert (= bs!1842952 (and b!6902768 b!6901987)))

(assert (=> bs!1842952 (= (and (= (_1!37037 lt!2466743) s!14361) (= (regOne!34246 r1!6342) r1!6342) (= (regTwo!34246 r1!6342) lt!2466750)) (= lambda!391991 lambda!391926))))

(assert (=> bs!1842943 (not (= lambda!391991 lambda!391918))))

(declare-fun bs!1842953 () Bool)

(assert (= bs!1842953 (and b!6902768 d!2162189)))

(assert (=> bs!1842953 (not (= lambda!391991 lambda!391963))))

(declare-fun bs!1842954 () Bool)

(assert (= bs!1842954 (and b!6902768 b!6902559)))

(assert (=> bs!1842954 (not (= lambda!391991 lambda!391980))))

(declare-fun bs!1842955 () Bool)

(assert (= bs!1842955 (and b!6902768 b!6902697)))

(assert (=> bs!1842955 (not (= lambda!391991 lambda!391984))))

(assert (=> bs!1842943 (= (and (= (_1!37037 lt!2466743) s!14361) (= (regOne!34246 r1!6342) r1!6342) (= (regTwo!34246 r1!6342) lt!2466750)) (= lambda!391991 lambda!391919))))

(declare-fun bs!1842956 () Bool)

(assert (= bs!1842956 (and b!6902768 d!2162243)))

(assert (=> bs!1842956 (not (= lambda!391991 lambda!391976))))

(declare-fun bs!1842957 () Bool)

(assert (= bs!1842957 (and b!6902768 d!2162215)))

(assert (=> bs!1842957 (not (= lambda!391991 lambda!391973))))

(declare-fun bs!1842958 () Bool)

(assert (= bs!1842958 (and b!6902768 b!6902296)))

(assert (=> bs!1842958 (not (= lambda!391991 lambda!391950))))

(assert (=> bs!1842943 (not (= lambda!391991 lambda!391922))))

(declare-fun bs!1842959 () Bool)

(assert (= bs!1842959 (and b!6902768 b!6902251)))

(assert (=> bs!1842959 (= (and (= (_1!37037 lt!2466743) s!14361) (= (regOne!34246 r1!6342) (regOne!34246 lt!2466744)) (= (regTwo!34246 r1!6342) (regTwo!34246 lt!2466744))) (= lambda!391991 lambda!391947))))

(declare-fun bs!1842960 () Bool)

(assert (= bs!1842960 (and b!6902768 b!6902246)))

(assert (=> bs!1842960 (not (= lambda!391991 lambda!391946))))

(assert (=> bs!1842947 (= (and (= (_1!37037 lt!2466743) (_2!37037 lt!2466743)) (= (regOne!34246 r1!6342) r2!6280) (= (regTwo!34246 r1!6342) r3!135)) (= lambda!391991 lambda!391989))))

(assert (=> bs!1842943 (not (= lambda!391991 lambda!391920))))

(assert (=> bs!1842953 (= (and (= (_1!37037 lt!2466743) s!14361) (= (regOne!34246 r1!6342) r1!6342) (= (regTwo!34246 r1!6342) lt!2466750)) (= lambda!391991 lambda!391965))))

(assert (=> bs!1842951 (not (= lambda!391991 lambda!391986))))

(assert (=> b!6902768 true))

(assert (=> b!6902768 true))

(declare-fun b!6902758 () Bool)

(declare-fun e!4156860 () Bool)

(declare-fun e!4156855 () Bool)

(assert (=> b!6902758 (= e!4156860 e!4156855)))

(declare-fun c!1282505 () Bool)

(assert (=> b!6902758 (= c!1282505 ((_ is Star!16867) r1!6342))))

(declare-fun b!6902759 () Bool)

(declare-fun e!4156856 () Bool)

(assert (=> b!6902759 (= e!4156856 (matchRSpec!3930 (regTwo!34247 r1!6342) (_1!37037 lt!2466743)))))

(declare-fun b!6902760 () Bool)

(declare-fun e!4156858 () Bool)

(assert (=> b!6902760 (= e!4156858 (= (_1!37037 lt!2466743) (Cons!66500 (c!1282339 r1!6342) Nil!66500)))))

(declare-fun bm!627702 () Bool)

(declare-fun call!627707 () Bool)

(assert (=> bm!627702 (= call!627707 (isEmpty!38730 (_1!37037 lt!2466743)))))

(declare-fun d!2162313 () Bool)

(declare-fun c!1282507 () Bool)

(assert (=> d!2162313 (= c!1282507 ((_ is EmptyExpr!16867) r1!6342))))

(declare-fun e!4156859 () Bool)

(assert (=> d!2162313 (= (matchRSpec!3930 r1!6342 (_1!37037 lt!2466743)) e!4156859)))

(declare-fun b!6902761 () Bool)

(declare-fun res!2814898 () Bool)

(declare-fun e!4156857 () Bool)

(assert (=> b!6902761 (=> res!2814898 e!4156857)))

(assert (=> b!6902761 (= res!2814898 call!627707)))

(assert (=> b!6902761 (= e!4156855 e!4156857)))

(declare-fun b!6902762 () Bool)

(declare-fun e!4156854 () Bool)

(assert (=> b!6902762 (= e!4156859 e!4156854)))

(declare-fun res!2814896 () Bool)

(assert (=> b!6902762 (= res!2814896 (not ((_ is EmptyLang!16867) r1!6342)))))

(assert (=> b!6902762 (=> (not res!2814896) (not e!4156854))))

(declare-fun call!627708 () Bool)

(assert (=> b!6902763 (= e!4156857 call!627708)))

(declare-fun b!6902764 () Bool)

(declare-fun c!1282506 () Bool)

(assert (=> b!6902764 (= c!1282506 ((_ is Union!16867) r1!6342))))

(assert (=> b!6902764 (= e!4156858 e!4156860)))

(declare-fun b!6902765 () Bool)

(declare-fun c!1282508 () Bool)

(assert (=> b!6902765 (= c!1282508 ((_ is ElementMatch!16867) r1!6342))))

(assert (=> b!6902765 (= e!4156854 e!4156858)))

(declare-fun b!6902766 () Bool)

(assert (=> b!6902766 (= e!4156859 call!627707)))

(declare-fun b!6902767 () Bool)

(assert (=> b!6902767 (= e!4156860 e!4156856)))

(declare-fun res!2814897 () Bool)

(assert (=> b!6902767 (= res!2814897 (matchRSpec!3930 (regOne!34247 r1!6342) (_1!37037 lt!2466743)))))

(assert (=> b!6902767 (=> res!2814897 e!4156856)))

(assert (=> b!6902768 (= e!4156855 call!627708)))

(declare-fun bm!627703 () Bool)

(assert (=> bm!627703 (= call!627708 (Exists!3875 (ite c!1282505 lambda!391990 lambda!391991)))))

(assert (= (and d!2162313 c!1282507) b!6902766))

(assert (= (and d!2162313 (not c!1282507)) b!6902762))

(assert (= (and b!6902762 res!2814896) b!6902765))

(assert (= (and b!6902765 c!1282508) b!6902760))

(assert (= (and b!6902765 (not c!1282508)) b!6902764))

(assert (= (and b!6902764 c!1282506) b!6902767))

(assert (= (and b!6902764 (not c!1282506)) b!6902758))

(assert (= (and b!6902767 (not res!2814897)) b!6902759))

(assert (= (and b!6902758 c!1282505) b!6902761))

(assert (= (and b!6902758 (not c!1282505)) b!6902768))

(assert (= (and b!6902761 (not res!2814898)) b!6902763))

(assert (= (or b!6902763 b!6902768) bm!627703))

(assert (= (or b!6902766 b!6902761) bm!627702))

(declare-fun m!7620730 () Bool)

(assert (=> b!6902759 m!7620730))

(assert (=> bm!627702 m!7620510))

(declare-fun m!7620732 () Bool)

(assert (=> b!6902767 m!7620732))

(declare-fun m!7620734 () Bool)

(assert (=> bm!627703 m!7620734))

(assert (=> b!6901981 d!2162313))

(declare-fun bs!1842961 () Bool)

(declare-fun b!6902774 () Bool)

(assert (= bs!1842961 (and b!6902774 b!6901981)))

(declare-fun lambda!391992 () Int)

(assert (=> bs!1842961 (not (= lambda!391992 lambda!391921))))

(declare-fun bs!1842962 () Bool)

(assert (= bs!1842962 (and b!6902774 d!2162259)))

(assert (=> bs!1842962 (not (= lambda!391992 lambda!391978))))

(assert (=> bs!1842961 (not (= lambda!391992 lambda!391924))))

(declare-fun bs!1842963 () Bool)

(assert (= bs!1842963 (and b!6902774 b!6902301)))

(assert (=> bs!1842963 (not (= lambda!391992 lambda!391952))))

(assert (=> bs!1842961 (not (= lambda!391992 lambda!391923))))

(declare-fun bs!1842964 () Bool)

(assert (= bs!1842964 (and b!6902774 d!2162309)))

(assert (=> bs!1842964 (not (= lambda!391992 lambda!391988))))

(declare-fun bs!1842965 () Bool)

(assert (= bs!1842965 (and b!6902774 b!6901988)))

(assert (=> bs!1842965 (not (= lambda!391992 lambda!391925))))

(declare-fun bs!1842966 () Bool)

(assert (= bs!1842966 (and b!6902774 b!6902564)))

(assert (=> bs!1842966 (not (= lambda!391992 lambda!391981))))

(declare-fun bs!1842967 () Bool)

(assert (= bs!1842967 (and b!6902774 b!6902702)))

(assert (=> bs!1842967 (not (= lambda!391992 lambda!391985))))

(declare-fun bs!1842968 () Bool)

(assert (= bs!1842968 (and b!6902774 d!2162301)))

(assert (=> bs!1842968 (not (= lambda!391992 lambda!391987))))

(declare-fun bs!1842969 () Bool)

(assert (= bs!1842969 (and b!6902774 b!6901987)))

(assert (=> bs!1842969 (not (= lambda!391992 lambda!391926))))

(assert (=> bs!1842961 (not (= lambda!391992 lambda!391918))))

(declare-fun bs!1842970 () Bool)

(assert (= bs!1842970 (and b!6902774 d!2162189)))

(assert (=> bs!1842970 (not (= lambda!391992 lambda!391963))))

(declare-fun bs!1842971 () Bool)

(assert (= bs!1842971 (and b!6902774 b!6902559)))

(assert (=> bs!1842971 (= (and (= (_2!37037 lt!2466743) (_1!37037 lt!2466737)) (= (reg!17196 lt!2466750) (reg!17196 r2!6280)) (= lt!2466750 r2!6280)) (= lambda!391992 lambda!391980))))

(declare-fun bs!1842972 () Bool)

(assert (= bs!1842972 (and b!6902774 b!6902697)))

(assert (=> bs!1842972 (= (and (= (_2!37037 lt!2466743) (_2!37037 lt!2466737)) (= (reg!17196 lt!2466750) (reg!17196 r3!135)) (= lt!2466750 r3!135)) (= lambda!391992 lambda!391984))))

(assert (=> bs!1842961 (not (= lambda!391992 lambda!391919))))

(declare-fun bs!1842973 () Bool)

(assert (= bs!1842973 (and b!6902774 d!2162243)))

(assert (=> bs!1842973 (not (= lambda!391992 lambda!391976))))

(declare-fun bs!1842974 () Bool)

(assert (= bs!1842974 (and b!6902774 d!2162215)))

(assert (=> bs!1842974 (not (= lambda!391992 lambda!391973))))

(declare-fun bs!1842975 () Bool)

(assert (= bs!1842975 (and b!6902774 b!6902296)))

(assert (=> bs!1842975 (= (and (= (_2!37037 lt!2466743) s!14361) (= (reg!17196 lt!2466750) (reg!17196 lt!2466727)) (= lt!2466750 lt!2466727)) (= lambda!391992 lambda!391950))))

(assert (=> bs!1842961 (not (= lambda!391992 lambda!391922))))

(declare-fun bs!1842976 () Bool)

(assert (= bs!1842976 (and b!6902774 b!6902768)))

(assert (=> bs!1842976 (not (= lambda!391992 lambda!391991))))

(declare-fun bs!1842977 () Bool)

(assert (= bs!1842977 (and b!6902774 b!6902763)))

(assert (=> bs!1842977 (= (and (= (_2!37037 lt!2466743) (_1!37037 lt!2466743)) (= (reg!17196 lt!2466750) (reg!17196 r1!6342)) (= lt!2466750 r1!6342)) (= lambda!391992 lambda!391990))))

(declare-fun bs!1842978 () Bool)

(assert (= bs!1842978 (and b!6902774 b!6902251)))

(assert (=> bs!1842978 (not (= lambda!391992 lambda!391947))))

(declare-fun bs!1842979 () Bool)

(assert (= bs!1842979 (and b!6902774 b!6902246)))

(assert (=> bs!1842979 (= (and (= (_2!37037 lt!2466743) s!14361) (= (reg!17196 lt!2466750) (reg!17196 lt!2466744)) (= lt!2466750 lt!2466744)) (= lambda!391992 lambda!391946))))

(assert (=> bs!1842964 (not (= lambda!391992 lambda!391989))))

(assert (=> bs!1842961 (not (= lambda!391992 lambda!391920))))

(assert (=> bs!1842970 (not (= lambda!391992 lambda!391965))))

(assert (=> bs!1842968 (not (= lambda!391992 lambda!391986))))

(assert (=> b!6902774 true))

(assert (=> b!6902774 true))

(declare-fun bs!1842980 () Bool)

(declare-fun b!6902779 () Bool)

(assert (= bs!1842980 (and b!6902779 b!6901981)))

(declare-fun lambda!391993 () Int)

(assert (=> bs!1842980 (= (and (= (regOne!34246 lt!2466750) r2!6280) (= (regTwo!34246 lt!2466750) r3!135)) (= lambda!391993 lambda!391921))))

(declare-fun bs!1842981 () Bool)

(assert (= bs!1842981 (and b!6902779 d!2162259)))

(assert (=> bs!1842981 (not (= lambda!391993 lambda!391978))))

(assert (=> bs!1842980 (not (= lambda!391993 lambda!391924))))

(declare-fun bs!1842982 () Bool)

(assert (= bs!1842982 (and b!6902779 b!6902301)))

(assert (=> bs!1842982 (= (and (= (_2!37037 lt!2466743) s!14361) (= (regOne!34246 lt!2466750) (regOne!34246 lt!2466727)) (= (regTwo!34246 lt!2466750) (regTwo!34246 lt!2466727))) (= lambda!391993 lambda!391952))))

(assert (=> bs!1842980 (= (and (= (_2!37037 lt!2466743) lt!2466728) (= (regOne!34246 lt!2466750) r1!6342) (= (regTwo!34246 lt!2466750) r2!6280)) (= lambda!391993 lambda!391923))))

(declare-fun bs!1842983 () Bool)

(assert (= bs!1842983 (and b!6902779 d!2162309)))

(assert (=> bs!1842983 (not (= lambda!391993 lambda!391988))))

(declare-fun bs!1842984 () Bool)

(assert (= bs!1842984 (and b!6902779 b!6901988)))

(assert (=> bs!1842984 (not (= lambda!391993 lambda!391925))))

(declare-fun bs!1842985 () Bool)

(assert (= bs!1842985 (and b!6902779 b!6902564)))

(assert (=> bs!1842985 (= (and (= (_2!37037 lt!2466743) (_1!37037 lt!2466737)) (= (regOne!34246 lt!2466750) (regOne!34246 r2!6280)) (= (regTwo!34246 lt!2466750) (regTwo!34246 r2!6280))) (= lambda!391993 lambda!391981))))

(declare-fun bs!1842986 () Bool)

(assert (= bs!1842986 (and b!6902779 b!6902702)))

(assert (=> bs!1842986 (= (and (= (_2!37037 lt!2466743) (_2!37037 lt!2466737)) (= (regOne!34246 lt!2466750) (regOne!34246 r3!135)) (= (regTwo!34246 lt!2466750) (regTwo!34246 r3!135))) (= lambda!391993 lambda!391985))))

(declare-fun bs!1842987 () Bool)

(assert (= bs!1842987 (and b!6902779 d!2162301)))

(assert (=> bs!1842987 (= (and (= (_2!37037 lt!2466743) s!14361) (= (regOne!34246 lt!2466750) lt!2466741) (= (regTwo!34246 lt!2466750) r3!135)) (= lambda!391993 lambda!391987))))

(declare-fun bs!1842988 () Bool)

(assert (= bs!1842988 (and b!6902779 b!6901987)))

(assert (=> bs!1842988 (= (and (= (_2!37037 lt!2466743) s!14361) (= (regOne!34246 lt!2466750) r1!6342) (= (regTwo!34246 lt!2466750) lt!2466750)) (= lambda!391993 lambda!391926))))

(declare-fun bs!1842989 () Bool)

(assert (= bs!1842989 (and b!6902779 b!6902774)))

(assert (=> bs!1842989 (not (= lambda!391993 lambda!391992))))

(assert (=> bs!1842980 (not (= lambda!391993 lambda!391918))))

(declare-fun bs!1842990 () Bool)

(assert (= bs!1842990 (and b!6902779 d!2162189)))

(assert (=> bs!1842990 (not (= lambda!391993 lambda!391963))))

(declare-fun bs!1842991 () Bool)

(assert (= bs!1842991 (and b!6902779 b!6902559)))

(assert (=> bs!1842991 (not (= lambda!391993 lambda!391980))))

(declare-fun bs!1842992 () Bool)

(assert (= bs!1842992 (and b!6902779 b!6902697)))

(assert (=> bs!1842992 (not (= lambda!391993 lambda!391984))))

(assert (=> bs!1842980 (= (and (= (_2!37037 lt!2466743) s!14361) (= (regOne!34246 lt!2466750) r1!6342) (= (regTwo!34246 lt!2466750) lt!2466750)) (= lambda!391993 lambda!391919))))

(declare-fun bs!1842993 () Bool)

(assert (= bs!1842993 (and b!6902779 d!2162243)))

(assert (=> bs!1842993 (not (= lambda!391993 lambda!391976))))

(declare-fun bs!1842994 () Bool)

(assert (= bs!1842994 (and b!6902779 d!2162215)))

(assert (=> bs!1842994 (not (= lambda!391993 lambda!391973))))

(declare-fun bs!1842995 () Bool)

(assert (= bs!1842995 (and b!6902779 b!6902296)))

(assert (=> bs!1842995 (not (= lambda!391993 lambda!391950))))

(assert (=> bs!1842980 (not (= lambda!391993 lambda!391922))))

(declare-fun bs!1842996 () Bool)

(assert (= bs!1842996 (and b!6902779 b!6902768)))

(assert (=> bs!1842996 (= (and (= (_2!37037 lt!2466743) (_1!37037 lt!2466743)) (= (regOne!34246 lt!2466750) (regOne!34246 r1!6342)) (= (regTwo!34246 lt!2466750) (regTwo!34246 r1!6342))) (= lambda!391993 lambda!391991))))

(declare-fun bs!1842997 () Bool)

(assert (= bs!1842997 (and b!6902779 b!6902763)))

(assert (=> bs!1842997 (not (= lambda!391993 lambda!391990))))

(declare-fun bs!1842998 () Bool)

(assert (= bs!1842998 (and b!6902779 b!6902251)))

(assert (=> bs!1842998 (= (and (= (_2!37037 lt!2466743) s!14361) (= (regOne!34246 lt!2466750) (regOne!34246 lt!2466744)) (= (regTwo!34246 lt!2466750) (regTwo!34246 lt!2466744))) (= lambda!391993 lambda!391947))))

(declare-fun bs!1842999 () Bool)

(assert (= bs!1842999 (and b!6902779 b!6902246)))

(assert (=> bs!1842999 (not (= lambda!391993 lambda!391946))))

(assert (=> bs!1842983 (= (and (= (regOne!34246 lt!2466750) r2!6280) (= (regTwo!34246 lt!2466750) r3!135)) (= lambda!391993 lambda!391989))))

(assert (=> bs!1842980 (not (= lambda!391993 lambda!391920))))

(assert (=> bs!1842990 (= (and (= (_2!37037 lt!2466743) s!14361) (= (regOne!34246 lt!2466750) r1!6342) (= (regTwo!34246 lt!2466750) lt!2466750)) (= lambda!391993 lambda!391965))))

(assert (=> bs!1842987 (not (= lambda!391993 lambda!391986))))

(assert (=> b!6902779 true))

(assert (=> b!6902779 true))

(declare-fun b!6902769 () Bool)

(declare-fun e!4156867 () Bool)

(declare-fun e!4156862 () Bool)

(assert (=> b!6902769 (= e!4156867 e!4156862)))

(declare-fun c!1282509 () Bool)

(assert (=> b!6902769 (= c!1282509 ((_ is Star!16867) lt!2466750))))

(declare-fun b!6902770 () Bool)

(declare-fun e!4156863 () Bool)

(assert (=> b!6902770 (= e!4156863 (matchRSpec!3930 (regTwo!34247 lt!2466750) (_2!37037 lt!2466743)))))

(declare-fun b!6902771 () Bool)

(declare-fun e!4156865 () Bool)

(assert (=> b!6902771 (= e!4156865 (= (_2!37037 lt!2466743) (Cons!66500 (c!1282339 lt!2466750) Nil!66500)))))

(declare-fun bm!627704 () Bool)

(declare-fun call!627709 () Bool)

(assert (=> bm!627704 (= call!627709 (isEmpty!38730 (_2!37037 lt!2466743)))))

(declare-fun d!2162315 () Bool)

(declare-fun c!1282511 () Bool)

(assert (=> d!2162315 (= c!1282511 ((_ is EmptyExpr!16867) lt!2466750))))

(declare-fun e!4156866 () Bool)

(assert (=> d!2162315 (= (matchRSpec!3930 lt!2466750 (_2!37037 lt!2466743)) e!4156866)))

(declare-fun b!6902772 () Bool)

(declare-fun res!2814901 () Bool)

(declare-fun e!4156864 () Bool)

(assert (=> b!6902772 (=> res!2814901 e!4156864)))

(assert (=> b!6902772 (= res!2814901 call!627709)))

(assert (=> b!6902772 (= e!4156862 e!4156864)))

(declare-fun b!6902773 () Bool)

(declare-fun e!4156861 () Bool)

(assert (=> b!6902773 (= e!4156866 e!4156861)))

(declare-fun res!2814899 () Bool)

(assert (=> b!6902773 (= res!2814899 (not ((_ is EmptyLang!16867) lt!2466750)))))

(assert (=> b!6902773 (=> (not res!2814899) (not e!4156861))))

(declare-fun call!627710 () Bool)

(assert (=> b!6902774 (= e!4156864 call!627710)))

(declare-fun b!6902775 () Bool)

(declare-fun c!1282510 () Bool)

(assert (=> b!6902775 (= c!1282510 ((_ is Union!16867) lt!2466750))))

(assert (=> b!6902775 (= e!4156865 e!4156867)))

(declare-fun b!6902776 () Bool)

(declare-fun c!1282512 () Bool)

(assert (=> b!6902776 (= c!1282512 ((_ is ElementMatch!16867) lt!2466750))))

(assert (=> b!6902776 (= e!4156861 e!4156865)))

(declare-fun b!6902777 () Bool)

(assert (=> b!6902777 (= e!4156866 call!627709)))

(declare-fun b!6902778 () Bool)

(assert (=> b!6902778 (= e!4156867 e!4156863)))

(declare-fun res!2814900 () Bool)

(assert (=> b!6902778 (= res!2814900 (matchRSpec!3930 (regOne!34247 lt!2466750) (_2!37037 lt!2466743)))))

(assert (=> b!6902778 (=> res!2814900 e!4156863)))

(assert (=> b!6902779 (= e!4156862 call!627710)))

(declare-fun bm!627705 () Bool)

(assert (=> bm!627705 (= call!627710 (Exists!3875 (ite c!1282509 lambda!391992 lambda!391993)))))

(assert (= (and d!2162315 c!1282511) b!6902777))

(assert (= (and d!2162315 (not c!1282511)) b!6902773))

(assert (= (and b!6902773 res!2814899) b!6902776))

(assert (= (and b!6902776 c!1282512) b!6902771))

(assert (= (and b!6902776 (not c!1282512)) b!6902775))

(assert (= (and b!6902775 c!1282510) b!6902778))

(assert (= (and b!6902775 (not c!1282510)) b!6902769))

(assert (= (and b!6902778 (not res!2814900)) b!6902770))

(assert (= (and b!6902769 c!1282509) b!6902772))

(assert (= (and b!6902769 (not c!1282509)) b!6902779))

(assert (= (and b!6902772 (not res!2814901)) b!6902774))

(assert (= (or b!6902774 b!6902779) bm!627705))

(assert (= (or b!6902777 b!6902772) bm!627704))

(declare-fun m!7620736 () Bool)

(assert (=> b!6902770 m!7620736))

(assert (=> bm!627704 m!7620640))

(declare-fun m!7620738 () Bool)

(assert (=> b!6902778 m!7620738))

(declare-fun m!7620740 () Bool)

(assert (=> bm!627705 m!7620740))

(assert (=> b!6901981 d!2162315))

(declare-fun bs!1843000 () Bool)

(declare-fun d!2162317 () Bool)

(assert (= bs!1843000 (and d!2162317 b!6901981)))

(declare-fun lambda!391994 () Int)

(assert (=> bs!1843000 (not (= lambda!391994 lambda!391921))))

(declare-fun bs!1843001 () Bool)

(assert (= bs!1843001 (and d!2162317 d!2162259)))

(assert (=> bs!1843001 (= (and (= lt!2466728 s!14361) (= r1!6342 lt!2466741) (= r2!6280 r3!135)) (= lambda!391994 lambda!391978))))

(assert (=> bs!1843000 (= (and (= lt!2466728 s!14361) (= r1!6342 lt!2466741) (= r2!6280 r3!135)) (= lambda!391994 lambda!391924))))

(declare-fun bs!1843002 () Bool)

(assert (= bs!1843002 (and d!2162317 b!6902301)))

(assert (=> bs!1843002 (not (= lambda!391994 lambda!391952))))

(assert (=> bs!1843000 (not (= lambda!391994 lambda!391923))))

(declare-fun bs!1843003 () Bool)

(assert (= bs!1843003 (and d!2162317 d!2162309)))

(assert (=> bs!1843003 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391994 lambda!391988))))

(declare-fun bs!1843004 () Bool)

(assert (= bs!1843004 (and d!2162317 b!6901988)))

(assert (=> bs!1843004 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391994 lambda!391925))))

(declare-fun bs!1843005 () Bool)

(assert (= bs!1843005 (and d!2162317 b!6902564)))

(assert (=> bs!1843005 (not (= lambda!391994 lambda!391981))))

(declare-fun bs!1843006 () Bool)

(assert (= bs!1843006 (and d!2162317 b!6902702)))

(assert (=> bs!1843006 (not (= lambda!391994 lambda!391985))))

(declare-fun bs!1843007 () Bool)

(assert (= bs!1843007 (and d!2162317 d!2162301)))

(assert (=> bs!1843007 (not (= lambda!391994 lambda!391987))))

(declare-fun bs!1843008 () Bool)

(assert (= bs!1843008 (and d!2162317 b!6901987)))

(assert (=> bs!1843008 (not (= lambda!391994 lambda!391926))))

(declare-fun bs!1843009 () Bool)

(assert (= bs!1843009 (and d!2162317 b!6902774)))

(assert (=> bs!1843009 (not (= lambda!391994 lambda!391992))))

(declare-fun bs!1843010 () Bool)

(assert (= bs!1843010 (and d!2162317 d!2162189)))

(assert (=> bs!1843010 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391994 lambda!391963))))

(declare-fun bs!1843011 () Bool)

(assert (= bs!1843011 (and d!2162317 b!6902559)))

(assert (=> bs!1843011 (not (= lambda!391994 lambda!391980))))

(declare-fun bs!1843012 () Bool)

(assert (= bs!1843012 (and d!2162317 b!6902697)))

(assert (=> bs!1843012 (not (= lambda!391994 lambda!391984))))

(assert (=> bs!1843000 (not (= lambda!391994 lambda!391919))))

(declare-fun bs!1843013 () Bool)

(assert (= bs!1843013 (and d!2162317 d!2162243)))

(assert (=> bs!1843013 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391994 lambda!391976))))

(declare-fun bs!1843014 () Bool)

(assert (= bs!1843014 (and d!2162317 d!2162215)))

(assert (=> bs!1843014 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391994 lambda!391973))))

(declare-fun bs!1843015 () Bool)

(assert (= bs!1843015 (and d!2162317 b!6902296)))

(assert (=> bs!1843015 (not (= lambda!391994 lambda!391950))))

(assert (=> bs!1843000 (= lambda!391994 lambda!391922)))

(declare-fun bs!1843016 () Bool)

(assert (= bs!1843016 (and d!2162317 b!6902768)))

(assert (=> bs!1843016 (not (= lambda!391994 lambda!391991))))

(declare-fun bs!1843017 () Bool)

(assert (= bs!1843017 (and d!2162317 b!6902763)))

(assert (=> bs!1843017 (not (= lambda!391994 lambda!391990))))

(declare-fun bs!1843018 () Bool)

(assert (= bs!1843018 (and d!2162317 b!6902251)))

(assert (=> bs!1843018 (not (= lambda!391994 lambda!391947))))

(declare-fun bs!1843019 () Bool)

(assert (= bs!1843019 (and d!2162317 b!6902246)))

(assert (=> bs!1843019 (not (= lambda!391994 lambda!391946))))

(assert (=> bs!1843003 (not (= lambda!391994 lambda!391989))))

(assert (=> bs!1843000 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391994 lambda!391920))))

(declare-fun bs!1843020 () Bool)

(assert (= bs!1843020 (and d!2162317 b!6902779)))

(assert (=> bs!1843020 (not (= lambda!391994 lambda!391993))))

(assert (=> bs!1843000 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391994 lambda!391918))))

(assert (=> bs!1843010 (not (= lambda!391994 lambda!391965))))

(assert (=> bs!1843007 (= (and (= lt!2466728 s!14361) (= r1!6342 lt!2466741) (= r2!6280 r3!135)) (= lambda!391994 lambda!391986))))

(assert (=> d!2162317 true))

(assert (=> d!2162317 true))

(assert (=> d!2162317 true))

(assert (=> d!2162317 (= (isDefined!13349 (findConcatSeparation!3060 r1!6342 r2!6280 Nil!66500 lt!2466728 lt!2466728)) (Exists!3875 lambda!391994))))

(declare-fun lt!2466867 () Unit!160468)

(assert (=> d!2162317 (= lt!2466867 (choose!51391 r1!6342 r2!6280 lt!2466728))))

(assert (=> d!2162317 (validRegex!8575 r1!6342)))

(assert (=> d!2162317 (= (lemmaFindConcatSeparationEquivalentToExists!2822 r1!6342 r2!6280 lt!2466728) lt!2466867)))

(declare-fun bs!1843021 () Bool)

(assert (= bs!1843021 d!2162317))

(assert (=> bs!1843021 m!7620050))

(assert (=> bs!1843021 m!7620052))

(declare-fun m!7620742 () Bool)

(assert (=> bs!1843021 m!7620742))

(assert (=> bs!1843021 m!7620050))

(assert (=> bs!1843021 m!7620078))

(declare-fun m!7620744 () Bool)

(assert (=> bs!1843021 m!7620744))

(assert (=> b!6901981 d!2162317))

(declare-fun b!6902780 () Bool)

(declare-fun e!4156870 () Bool)

(declare-fun lt!2466869 () Option!16646)

(assert (=> b!6902780 (= e!4156870 (not (isDefined!13349 lt!2466869)))))

(declare-fun b!6902781 () Bool)

(declare-fun e!4156871 () Option!16646)

(assert (=> b!6902781 (= e!4156871 None!16645)))

(declare-fun d!2162319 () Bool)

(assert (=> d!2162319 e!4156870))

(declare-fun res!2814904 () Bool)

(assert (=> d!2162319 (=> res!2814904 e!4156870)))

(declare-fun e!4156872 () Bool)

(assert (=> d!2162319 (= res!2814904 e!4156872)))

(declare-fun res!2814906 () Bool)

(assert (=> d!2162319 (=> (not res!2814906) (not e!4156872))))

(assert (=> d!2162319 (= res!2814906 (isDefined!13349 lt!2466869))))

(declare-fun e!4156869 () Option!16646)

(assert (=> d!2162319 (= lt!2466869 e!4156869)))

(declare-fun c!1282514 () Bool)

(declare-fun e!4156868 () Bool)

(assert (=> d!2162319 (= c!1282514 e!4156868)))

(declare-fun res!2814903 () Bool)

(assert (=> d!2162319 (=> (not res!2814903) (not e!4156868))))

(assert (=> d!2162319 (= res!2814903 (matchR!9012 r2!6280 Nil!66500))))

(assert (=> d!2162319 (validRegex!8575 r2!6280)))

(assert (=> d!2162319 (= (findConcatSeparation!3060 r2!6280 r3!135 Nil!66500 (_2!37037 lt!2466743) (_2!37037 lt!2466743)) lt!2466869)))

(declare-fun b!6902782 () Bool)

(assert (=> b!6902782 (= e!4156872 (= (++!14920 (_1!37037 (get!23251 lt!2466869)) (_2!37037 (get!23251 lt!2466869))) (_2!37037 lt!2466743)))))

(declare-fun b!6902783 () Bool)

(assert (=> b!6902783 (= e!4156869 (Some!16645 (tuple2!67469 Nil!66500 (_2!37037 lt!2466743))))))

(declare-fun b!6902784 () Bool)

(assert (=> b!6902784 (= e!4156869 e!4156871)))

(declare-fun c!1282513 () Bool)

(assert (=> b!6902784 (= c!1282513 ((_ is Nil!66500) (_2!37037 lt!2466743)))))

(declare-fun b!6902785 () Bool)

(declare-fun res!2814905 () Bool)

(assert (=> b!6902785 (=> (not res!2814905) (not e!4156872))))

(assert (=> b!6902785 (= res!2814905 (matchR!9012 r2!6280 (_1!37037 (get!23251 lt!2466869))))))

(declare-fun b!6902786 () Bool)

(assert (=> b!6902786 (= e!4156868 (matchR!9012 r3!135 (_2!37037 lt!2466743)))))

(declare-fun b!6902787 () Bool)

(declare-fun lt!2466868 () Unit!160468)

(declare-fun lt!2466870 () Unit!160468)

(assert (=> b!6902787 (= lt!2466868 lt!2466870)))

(assert (=> b!6902787 (= (++!14920 (++!14920 Nil!66500 (Cons!66500 (h!72948 (_2!37037 lt!2466743)) Nil!66500)) (t!380367 (_2!37037 lt!2466743))) (_2!37037 lt!2466743))))

(assert (=> b!6902787 (= lt!2466870 (lemmaMoveElementToOtherListKeepsConcatEq!2795 Nil!66500 (h!72948 (_2!37037 lt!2466743)) (t!380367 (_2!37037 lt!2466743)) (_2!37037 lt!2466743)))))

(assert (=> b!6902787 (= e!4156871 (findConcatSeparation!3060 r2!6280 r3!135 (++!14920 Nil!66500 (Cons!66500 (h!72948 (_2!37037 lt!2466743)) Nil!66500)) (t!380367 (_2!37037 lt!2466743)) (_2!37037 lt!2466743)))))

(declare-fun b!6902788 () Bool)

(declare-fun res!2814902 () Bool)

(assert (=> b!6902788 (=> (not res!2814902) (not e!4156872))))

(assert (=> b!6902788 (= res!2814902 (matchR!9012 r3!135 (_2!37037 (get!23251 lt!2466869))))))

(assert (= (and d!2162319 res!2814903) b!6902786))

(assert (= (and d!2162319 c!1282514) b!6902783))

(assert (= (and d!2162319 (not c!1282514)) b!6902784))

(assert (= (and b!6902784 c!1282513) b!6902781))

(assert (= (and b!6902784 (not c!1282513)) b!6902787))

(assert (= (and d!2162319 res!2814906) b!6902785))

(assert (= (and b!6902785 res!2814905) b!6902788))

(assert (= (and b!6902788 res!2814902) b!6902782))

(assert (= (and d!2162319 (not res!2814904)) b!6902780))

(declare-fun m!7620746 () Bool)

(assert (=> b!6902782 m!7620746))

(declare-fun m!7620748 () Bool)

(assert (=> b!6902782 m!7620748))

(declare-fun m!7620750 () Bool)

(assert (=> b!6902786 m!7620750))

(assert (=> b!6902788 m!7620746))

(declare-fun m!7620752 () Bool)

(assert (=> b!6902788 m!7620752))

(declare-fun m!7620754 () Bool)

(assert (=> b!6902787 m!7620754))

(assert (=> b!6902787 m!7620754))

(declare-fun m!7620756 () Bool)

(assert (=> b!6902787 m!7620756))

(declare-fun m!7620758 () Bool)

(assert (=> b!6902787 m!7620758))

(assert (=> b!6902787 m!7620754))

(declare-fun m!7620760 () Bool)

(assert (=> b!6902787 m!7620760))

(declare-fun m!7620762 () Bool)

(assert (=> d!2162319 m!7620762))

(declare-fun m!7620764 () Bool)

(assert (=> d!2162319 m!7620764))

(assert (=> d!2162319 m!7620076))

(assert (=> b!6902780 m!7620762))

(assert (=> b!6902785 m!7620746))

(declare-fun m!7620766 () Bool)

(assert (=> b!6902785 m!7620766))

(assert (=> b!6901981 d!2162319))

(declare-fun b!6902792 () Bool)

(declare-fun e!4156874 () Bool)

(declare-fun lt!2466871 () List!66624)

(assert (=> b!6902792 (= e!4156874 (or (not (= (_2!37037 lt!2466737) Nil!66500)) (= lt!2466871 (_1!37037 lt!2466737))))))

(declare-fun b!6902791 () Bool)

(declare-fun res!2814908 () Bool)

(assert (=> b!6902791 (=> (not res!2814908) (not e!4156874))))

(assert (=> b!6902791 (= res!2814908 (= (size!40758 lt!2466871) (+ (size!40758 (_1!37037 lt!2466737)) (size!40758 (_2!37037 lt!2466737)))))))

(declare-fun b!6902789 () Bool)

(declare-fun e!4156873 () List!66624)

(assert (=> b!6902789 (= e!4156873 (_2!37037 lt!2466737))))

(declare-fun b!6902790 () Bool)

(assert (=> b!6902790 (= e!4156873 (Cons!66500 (h!72948 (_1!37037 lt!2466737)) (++!14920 (t!380367 (_1!37037 lt!2466737)) (_2!37037 lt!2466737))))))

(declare-fun d!2162321 () Bool)

(assert (=> d!2162321 e!4156874))

(declare-fun res!2814907 () Bool)

(assert (=> d!2162321 (=> (not res!2814907) (not e!4156874))))

(assert (=> d!2162321 (= res!2814907 (= (content!13061 lt!2466871) ((_ map or) (content!13061 (_1!37037 lt!2466737)) (content!13061 (_2!37037 lt!2466737)))))))

(assert (=> d!2162321 (= lt!2466871 e!4156873)))

(declare-fun c!1282515 () Bool)

(assert (=> d!2162321 (= c!1282515 ((_ is Nil!66500) (_1!37037 lt!2466737)))))

(assert (=> d!2162321 (= (++!14920 (_1!37037 lt!2466737) (_2!37037 lt!2466737)) lt!2466871)))

(assert (= (and d!2162321 c!1282515) b!6902789))

(assert (= (and d!2162321 (not c!1282515)) b!6902790))

(assert (= (and d!2162321 res!2814907) b!6902791))

(assert (= (and b!6902791 res!2814908) b!6902792))

(declare-fun m!7620768 () Bool)

(assert (=> b!6902791 m!7620768))

(assert (=> b!6902791 m!7620618))

(assert (=> b!6902791 m!7620580))

(declare-fun m!7620770 () Bool)

(assert (=> b!6902790 m!7620770))

(declare-fun m!7620772 () Bool)

(assert (=> d!2162321 m!7620772))

(assert (=> d!2162321 m!7620626))

(assert (=> d!2162321 m!7620588))

(assert (=> b!6901981 d!2162321))

(declare-fun d!2162323 () Bool)

(assert (=> d!2162323 (isDefined!13349 (findConcatSeparation!3060 r1!6342 r2!6280 Nil!66500 lt!2466728 lt!2466728))))

(declare-fun lt!2466872 () Unit!160468)

(assert (=> d!2162323 (= lt!2466872 (choose!51393 r1!6342 r2!6280 (_1!37037 lt!2466743) (_1!37037 lt!2466737) lt!2466728 Nil!66500 lt!2466728))))

(assert (=> d!2162323 (validRegex!8575 r1!6342)))

(assert (=> d!2162323 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!68 r1!6342 r2!6280 (_1!37037 lt!2466743) (_1!37037 lt!2466737) lt!2466728 Nil!66500 lt!2466728) lt!2466872)))

(declare-fun bs!1843022 () Bool)

(assert (= bs!1843022 d!2162323))

(assert (=> bs!1843022 m!7620050))

(assert (=> bs!1843022 m!7620050))

(assert (=> bs!1843022 m!7620052))

(declare-fun m!7620774 () Bool)

(assert (=> bs!1843022 m!7620774))

(assert (=> bs!1843022 m!7620078))

(assert (=> b!6901981 d!2162323))

(declare-fun bs!1843023 () Bool)

(declare-fun d!2162325 () Bool)

(assert (= bs!1843023 (and d!2162325 b!6901981)))

(declare-fun lambda!391995 () Int)

(assert (=> bs!1843023 (not (= lambda!391995 lambda!391921))))

(declare-fun bs!1843024 () Bool)

(assert (= bs!1843024 (and d!2162325 d!2162259)))

(assert (=> bs!1843024 (= (and (= lt!2466728 s!14361) (= r1!6342 lt!2466741) (= r2!6280 r3!135)) (= lambda!391995 lambda!391978))))

(assert (=> bs!1843023 (= (and (= lt!2466728 s!14361) (= r1!6342 lt!2466741) (= r2!6280 r3!135)) (= lambda!391995 lambda!391924))))

(declare-fun bs!1843025 () Bool)

(assert (= bs!1843025 (and d!2162325 b!6902301)))

(assert (=> bs!1843025 (not (= lambda!391995 lambda!391952))))

(assert (=> bs!1843023 (not (= lambda!391995 lambda!391923))))

(declare-fun bs!1843026 () Bool)

(assert (= bs!1843026 (and d!2162325 d!2162309)))

(assert (=> bs!1843026 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391995 lambda!391988))))

(declare-fun bs!1843027 () Bool)

(assert (= bs!1843027 (and d!2162325 b!6901988)))

(assert (=> bs!1843027 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391995 lambda!391925))))

(declare-fun bs!1843028 () Bool)

(assert (= bs!1843028 (and d!2162325 b!6902564)))

(assert (=> bs!1843028 (not (= lambda!391995 lambda!391981))))

(declare-fun bs!1843029 () Bool)

(assert (= bs!1843029 (and d!2162325 d!2162317)))

(assert (=> bs!1843029 (= lambda!391995 lambda!391994)))

(declare-fun bs!1843030 () Bool)

(assert (= bs!1843030 (and d!2162325 b!6902702)))

(assert (=> bs!1843030 (not (= lambda!391995 lambda!391985))))

(declare-fun bs!1843031 () Bool)

(assert (= bs!1843031 (and d!2162325 d!2162301)))

(assert (=> bs!1843031 (not (= lambda!391995 lambda!391987))))

(declare-fun bs!1843032 () Bool)

(assert (= bs!1843032 (and d!2162325 b!6901987)))

(assert (=> bs!1843032 (not (= lambda!391995 lambda!391926))))

(declare-fun bs!1843033 () Bool)

(assert (= bs!1843033 (and d!2162325 b!6902774)))

(assert (=> bs!1843033 (not (= lambda!391995 lambda!391992))))

(declare-fun bs!1843034 () Bool)

(assert (= bs!1843034 (and d!2162325 d!2162189)))

(assert (=> bs!1843034 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391995 lambda!391963))))

(declare-fun bs!1843035 () Bool)

(assert (= bs!1843035 (and d!2162325 b!6902559)))

(assert (=> bs!1843035 (not (= lambda!391995 lambda!391980))))

(declare-fun bs!1843036 () Bool)

(assert (= bs!1843036 (and d!2162325 b!6902697)))

(assert (=> bs!1843036 (not (= lambda!391995 lambda!391984))))

(assert (=> bs!1843023 (not (= lambda!391995 lambda!391919))))

(declare-fun bs!1843037 () Bool)

(assert (= bs!1843037 (and d!2162325 d!2162243)))

(assert (=> bs!1843037 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391995 lambda!391976))))

(declare-fun bs!1843038 () Bool)

(assert (= bs!1843038 (and d!2162325 d!2162215)))

(assert (=> bs!1843038 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391995 lambda!391973))))

(declare-fun bs!1843039 () Bool)

(assert (= bs!1843039 (and d!2162325 b!6902296)))

(assert (=> bs!1843039 (not (= lambda!391995 lambda!391950))))

(assert (=> bs!1843023 (= lambda!391995 lambda!391922)))

(declare-fun bs!1843040 () Bool)

(assert (= bs!1843040 (and d!2162325 b!6902768)))

(assert (=> bs!1843040 (not (= lambda!391995 lambda!391991))))

(declare-fun bs!1843041 () Bool)

(assert (= bs!1843041 (and d!2162325 b!6902763)))

(assert (=> bs!1843041 (not (= lambda!391995 lambda!391990))))

(declare-fun bs!1843042 () Bool)

(assert (= bs!1843042 (and d!2162325 b!6902251)))

(assert (=> bs!1843042 (not (= lambda!391995 lambda!391947))))

(declare-fun bs!1843043 () Bool)

(assert (= bs!1843043 (and d!2162325 b!6902246)))

(assert (=> bs!1843043 (not (= lambda!391995 lambda!391946))))

(assert (=> bs!1843026 (not (= lambda!391995 lambda!391989))))

(assert (=> bs!1843023 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391995 lambda!391920))))

(declare-fun bs!1843044 () Bool)

(assert (= bs!1843044 (and d!2162325 b!6902779)))

(assert (=> bs!1843044 (not (= lambda!391995 lambda!391993))))

(assert (=> bs!1843023 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391995 lambda!391918))))

(assert (=> bs!1843034 (not (= lambda!391995 lambda!391965))))

(assert (=> bs!1843031 (= (and (= lt!2466728 s!14361) (= r1!6342 lt!2466741) (= r2!6280 r3!135)) (= lambda!391995 lambda!391986))))

(assert (=> d!2162325 true))

(assert (=> d!2162325 true))

(assert (=> d!2162325 true))

(declare-fun lambda!391996 () Int)

(assert (=> bs!1843023 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391996 lambda!391921))))

(assert (=> bs!1843024 (not (= lambda!391996 lambda!391978))))

(assert (=> bs!1843023 (not (= lambda!391996 lambda!391924))))

(assert (=> bs!1843025 (= (and (= lt!2466728 s!14361) (= r1!6342 (regOne!34246 lt!2466727)) (= r2!6280 (regTwo!34246 lt!2466727))) (= lambda!391996 lambda!391952))))

(assert (=> bs!1843026 (not (= lambda!391996 lambda!391988))))

(assert (=> bs!1843027 (not (= lambda!391996 lambda!391925))))

(assert (=> bs!1843028 (= (and (= lt!2466728 (_1!37037 lt!2466737)) (= r1!6342 (regOne!34246 r2!6280)) (= r2!6280 (regTwo!34246 r2!6280))) (= lambda!391996 lambda!391981))))

(assert (=> bs!1843029 (not (= lambda!391996 lambda!391994))))

(assert (=> bs!1843030 (= (and (= lt!2466728 (_2!37037 lt!2466737)) (= r1!6342 (regOne!34246 r3!135)) (= r2!6280 (regTwo!34246 r3!135))) (= lambda!391996 lambda!391985))))

(assert (=> bs!1843031 (= (and (= lt!2466728 s!14361) (= r1!6342 lt!2466741) (= r2!6280 r3!135)) (= lambda!391996 lambda!391987))))

(assert (=> bs!1843032 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391996 lambda!391926))))

(assert (=> bs!1843033 (not (= lambda!391996 lambda!391992))))

(assert (=> bs!1843034 (not (= lambda!391996 lambda!391963))))

(assert (=> bs!1843035 (not (= lambda!391996 lambda!391980))))

(assert (=> bs!1843036 (not (= lambda!391996 lambda!391984))))

(assert (=> bs!1843023 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391996 lambda!391919))))

(assert (=> bs!1843037 (not (= lambda!391996 lambda!391976))))

(assert (=> bs!1843038 (not (= lambda!391996 lambda!391973))))

(assert (=> bs!1843039 (not (= lambda!391996 lambda!391950))))

(assert (=> bs!1843023 (not (= lambda!391996 lambda!391922))))

(assert (=> bs!1843023 (= lambda!391996 lambda!391923)))

(declare-fun bs!1843045 () Bool)

(assert (= bs!1843045 d!2162325))

(assert (=> bs!1843045 (not (= lambda!391996 lambda!391995))))

(assert (=> bs!1843040 (= (and (= lt!2466728 (_1!37037 lt!2466743)) (= r1!6342 (regOne!34246 r1!6342)) (= r2!6280 (regTwo!34246 r1!6342))) (= lambda!391996 lambda!391991))))

(assert (=> bs!1843041 (not (= lambda!391996 lambda!391990))))

(assert (=> bs!1843042 (= (and (= lt!2466728 s!14361) (= r1!6342 (regOne!34246 lt!2466744)) (= r2!6280 (regTwo!34246 lt!2466744))) (= lambda!391996 lambda!391947))))

(assert (=> bs!1843043 (not (= lambda!391996 lambda!391946))))

(assert (=> bs!1843026 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391996 lambda!391989))))

(assert (=> bs!1843023 (not (= lambda!391996 lambda!391920))))

(assert (=> bs!1843044 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= r1!6342 (regOne!34246 lt!2466750)) (= r2!6280 (regTwo!34246 lt!2466750))) (= lambda!391996 lambda!391993))))

(assert (=> bs!1843023 (not (= lambda!391996 lambda!391918))))

(assert (=> bs!1843034 (= (and (= lt!2466728 s!14361) (= r2!6280 lt!2466750)) (= lambda!391996 lambda!391965))))

(assert (=> bs!1843031 (not (= lambda!391996 lambda!391986))))

(assert (=> d!2162325 true))

(assert (=> d!2162325 true))

(assert (=> d!2162325 true))

(assert (=> d!2162325 (= (Exists!3875 lambda!391995) (Exists!3875 lambda!391996))))

(declare-fun lt!2466873 () Unit!160468)

(assert (=> d!2162325 (= lt!2466873 (choose!51390 r1!6342 r2!6280 lt!2466728))))

(assert (=> d!2162325 (validRegex!8575 r1!6342)))

(assert (=> d!2162325 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2348 r1!6342 r2!6280 lt!2466728) lt!2466873)))

(declare-fun m!7620776 () Bool)

(assert (=> bs!1843045 m!7620776))

(declare-fun m!7620778 () Bool)

(assert (=> bs!1843045 m!7620778))

(declare-fun m!7620780 () Bool)

(assert (=> bs!1843045 m!7620780))

(assert (=> bs!1843045 m!7620078))

(assert (=> b!6901981 d!2162325))

(declare-fun b!6902793 () Bool)

(declare-fun e!4156877 () Bool)

(declare-fun lt!2466875 () Option!16646)

(assert (=> b!6902793 (= e!4156877 (not (isDefined!13349 lt!2466875)))))

(declare-fun b!6902794 () Bool)

(declare-fun e!4156878 () Option!16646)

(assert (=> b!6902794 (= e!4156878 None!16645)))

(declare-fun d!2162327 () Bool)

(assert (=> d!2162327 e!4156877))

(declare-fun res!2814911 () Bool)

(assert (=> d!2162327 (=> res!2814911 e!4156877)))

(declare-fun e!4156879 () Bool)

(assert (=> d!2162327 (= res!2814911 e!4156879)))

(declare-fun res!2814913 () Bool)

(assert (=> d!2162327 (=> (not res!2814913) (not e!4156879))))

(assert (=> d!2162327 (= res!2814913 (isDefined!13349 lt!2466875))))

(declare-fun e!4156876 () Option!16646)

(assert (=> d!2162327 (= lt!2466875 e!4156876)))

(declare-fun c!1282517 () Bool)

(declare-fun e!4156875 () Bool)

(assert (=> d!2162327 (= c!1282517 e!4156875)))

(declare-fun res!2814910 () Bool)

(assert (=> d!2162327 (=> (not res!2814910) (not e!4156875))))

(assert (=> d!2162327 (= res!2814910 (matchR!9012 r1!6342 Nil!66500))))

(assert (=> d!2162327 (validRegex!8575 r1!6342)))

(assert (=> d!2162327 (= (findConcatSeparation!3060 r1!6342 r2!6280 Nil!66500 lt!2466728 lt!2466728) lt!2466875)))

(declare-fun b!6902795 () Bool)

(assert (=> b!6902795 (= e!4156879 (= (++!14920 (_1!37037 (get!23251 lt!2466875)) (_2!37037 (get!23251 lt!2466875))) lt!2466728))))

(declare-fun b!6902796 () Bool)

(assert (=> b!6902796 (= e!4156876 (Some!16645 (tuple2!67469 Nil!66500 lt!2466728)))))

(declare-fun b!6902797 () Bool)

(assert (=> b!6902797 (= e!4156876 e!4156878)))

(declare-fun c!1282516 () Bool)

(assert (=> b!6902797 (= c!1282516 ((_ is Nil!66500) lt!2466728))))

(declare-fun b!6902798 () Bool)

(declare-fun res!2814912 () Bool)

(assert (=> b!6902798 (=> (not res!2814912) (not e!4156879))))

(assert (=> b!6902798 (= res!2814912 (matchR!9012 r1!6342 (_1!37037 (get!23251 lt!2466875))))))

(declare-fun b!6902799 () Bool)

(assert (=> b!6902799 (= e!4156875 (matchR!9012 r2!6280 lt!2466728))))

(declare-fun b!6902800 () Bool)

(declare-fun lt!2466874 () Unit!160468)

(declare-fun lt!2466876 () Unit!160468)

(assert (=> b!6902800 (= lt!2466874 lt!2466876)))

(assert (=> b!6902800 (= (++!14920 (++!14920 Nil!66500 (Cons!66500 (h!72948 lt!2466728) Nil!66500)) (t!380367 lt!2466728)) lt!2466728)))

(assert (=> b!6902800 (= lt!2466876 (lemmaMoveElementToOtherListKeepsConcatEq!2795 Nil!66500 (h!72948 lt!2466728) (t!380367 lt!2466728) lt!2466728))))

(assert (=> b!6902800 (= e!4156878 (findConcatSeparation!3060 r1!6342 r2!6280 (++!14920 Nil!66500 (Cons!66500 (h!72948 lt!2466728) Nil!66500)) (t!380367 lt!2466728) lt!2466728))))

(declare-fun b!6902801 () Bool)

(declare-fun res!2814909 () Bool)

(assert (=> b!6902801 (=> (not res!2814909) (not e!4156879))))

(assert (=> b!6902801 (= res!2814909 (matchR!9012 r2!6280 (_2!37037 (get!23251 lt!2466875))))))

(assert (= (and d!2162327 res!2814910) b!6902799))

(assert (= (and d!2162327 c!1282517) b!6902796))

(assert (= (and d!2162327 (not c!1282517)) b!6902797))

(assert (= (and b!6902797 c!1282516) b!6902794))

(assert (= (and b!6902797 (not c!1282516)) b!6902800))

(assert (= (and d!2162327 res!2814913) b!6902798))

(assert (= (and b!6902798 res!2814912) b!6902801))

(assert (= (and b!6902801 res!2814909) b!6902795))

(assert (= (and d!2162327 (not res!2814911)) b!6902793))

(declare-fun m!7620782 () Bool)

(assert (=> b!6902795 m!7620782))

(declare-fun m!7620784 () Bool)

(assert (=> b!6902795 m!7620784))

(declare-fun m!7620786 () Bool)

(assert (=> b!6902799 m!7620786))

(assert (=> b!6902801 m!7620782))

(declare-fun m!7620788 () Bool)

(assert (=> b!6902801 m!7620788))

(declare-fun m!7620790 () Bool)

(assert (=> b!6902800 m!7620790))

(assert (=> b!6902800 m!7620790))

(declare-fun m!7620792 () Bool)

(assert (=> b!6902800 m!7620792))

(declare-fun m!7620794 () Bool)

(assert (=> b!6902800 m!7620794))

(assert (=> b!6902800 m!7620790))

(declare-fun m!7620796 () Bool)

(assert (=> b!6902800 m!7620796))

(declare-fun m!7620798 () Bool)

(assert (=> d!2162327 m!7620798))

(declare-fun m!7620800 () Bool)

(assert (=> d!2162327 m!7620800))

(assert (=> d!2162327 m!7620078))

(assert (=> b!6902793 m!7620798))

(assert (=> b!6902798 m!7620782))

(declare-fun m!7620802 () Bool)

(assert (=> b!6902798 m!7620802))

(assert (=> b!6901981 d!2162327))

(declare-fun bs!1843046 () Bool)

(declare-fun b!6902807 () Bool)

(assert (= bs!1843046 (and b!6902807 b!6901981)))

(declare-fun lambda!391997 () Int)

(assert (=> bs!1843046 (not (= lambda!391997 lambda!391921))))

(declare-fun bs!1843047 () Bool)

(assert (= bs!1843047 (and b!6902807 d!2162259)))

(assert (=> bs!1843047 (not (= lambda!391997 lambda!391978))))

(assert (=> bs!1843046 (not (= lambda!391997 lambda!391924))))

(declare-fun bs!1843048 () Bool)

(assert (= bs!1843048 (and b!6902807 b!6902301)))

(assert (=> bs!1843048 (not (= lambda!391997 lambda!391952))))

(declare-fun bs!1843049 () Bool)

(assert (= bs!1843049 (and b!6902807 d!2162325)))

(assert (=> bs!1843049 (not (= lambda!391997 lambda!391996))))

(declare-fun bs!1843050 () Bool)

(assert (= bs!1843050 (and b!6902807 d!2162309)))

(assert (=> bs!1843050 (not (= lambda!391997 lambda!391988))))

(declare-fun bs!1843051 () Bool)

(assert (= bs!1843051 (and b!6902807 b!6901988)))

(assert (=> bs!1843051 (not (= lambda!391997 lambda!391925))))

(declare-fun bs!1843052 () Bool)

(assert (= bs!1843052 (and b!6902807 b!6902564)))

(assert (=> bs!1843052 (not (= lambda!391997 lambda!391981))))

(declare-fun bs!1843053 () Bool)

(assert (= bs!1843053 (and b!6902807 d!2162317)))

(assert (=> bs!1843053 (not (= lambda!391997 lambda!391994))))

(declare-fun bs!1843054 () Bool)

(assert (= bs!1843054 (and b!6902807 b!6902702)))

(assert (=> bs!1843054 (not (= lambda!391997 lambda!391985))))

(declare-fun bs!1843055 () Bool)

(assert (= bs!1843055 (and b!6902807 d!2162301)))

(assert (=> bs!1843055 (not (= lambda!391997 lambda!391987))))

(declare-fun bs!1843056 () Bool)

(assert (= bs!1843056 (and b!6902807 b!6901987)))

(assert (=> bs!1843056 (not (= lambda!391997 lambda!391926))))

(declare-fun bs!1843057 () Bool)

(assert (= bs!1843057 (and b!6902807 b!6902774)))

(assert (=> bs!1843057 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= (reg!17196 lt!2466741) (reg!17196 lt!2466750)) (= lt!2466741 lt!2466750)) (= lambda!391997 lambda!391992))))

(declare-fun bs!1843058 () Bool)

(assert (= bs!1843058 (and b!6902807 d!2162189)))

(assert (=> bs!1843058 (not (= lambda!391997 lambda!391963))))

(declare-fun bs!1843059 () Bool)

(assert (= bs!1843059 (and b!6902807 b!6902559)))

(assert (=> bs!1843059 (= (and (= lt!2466728 (_1!37037 lt!2466737)) (= (reg!17196 lt!2466741) (reg!17196 r2!6280)) (= lt!2466741 r2!6280)) (= lambda!391997 lambda!391980))))

(declare-fun bs!1843060 () Bool)

(assert (= bs!1843060 (and b!6902807 b!6902697)))

(assert (=> bs!1843060 (= (and (= lt!2466728 (_2!37037 lt!2466737)) (= (reg!17196 lt!2466741) (reg!17196 r3!135)) (= lt!2466741 r3!135)) (= lambda!391997 lambda!391984))))

(assert (=> bs!1843046 (not (= lambda!391997 lambda!391919))))

(declare-fun bs!1843061 () Bool)

(assert (= bs!1843061 (and b!6902807 d!2162243)))

(assert (=> bs!1843061 (not (= lambda!391997 lambda!391976))))

(declare-fun bs!1843062 () Bool)

(assert (= bs!1843062 (and b!6902807 d!2162215)))

(assert (=> bs!1843062 (not (= lambda!391997 lambda!391973))))

(declare-fun bs!1843063 () Bool)

(assert (= bs!1843063 (and b!6902807 b!6902296)))

(assert (=> bs!1843063 (= (and (= lt!2466728 s!14361) (= (reg!17196 lt!2466741) (reg!17196 lt!2466727)) (= lt!2466741 lt!2466727)) (= lambda!391997 lambda!391950))))

(assert (=> bs!1843046 (not (= lambda!391997 lambda!391922))))

(assert (=> bs!1843046 (not (= lambda!391997 lambda!391923))))

(assert (=> bs!1843049 (not (= lambda!391997 lambda!391995))))

(declare-fun bs!1843064 () Bool)

(assert (= bs!1843064 (and b!6902807 b!6902768)))

(assert (=> bs!1843064 (not (= lambda!391997 lambda!391991))))

(declare-fun bs!1843065 () Bool)

(assert (= bs!1843065 (and b!6902807 b!6902763)))

(assert (=> bs!1843065 (= (and (= lt!2466728 (_1!37037 lt!2466743)) (= (reg!17196 lt!2466741) (reg!17196 r1!6342)) (= lt!2466741 r1!6342)) (= lambda!391997 lambda!391990))))

(declare-fun bs!1843066 () Bool)

(assert (= bs!1843066 (and b!6902807 b!6902251)))

(assert (=> bs!1843066 (not (= lambda!391997 lambda!391947))))

(declare-fun bs!1843067 () Bool)

(assert (= bs!1843067 (and b!6902807 b!6902246)))

(assert (=> bs!1843067 (= (and (= lt!2466728 s!14361) (= (reg!17196 lt!2466741) (reg!17196 lt!2466744)) (= lt!2466741 lt!2466744)) (= lambda!391997 lambda!391946))))

(assert (=> bs!1843050 (not (= lambda!391997 lambda!391989))))

(assert (=> bs!1843046 (not (= lambda!391997 lambda!391920))))

(declare-fun bs!1843068 () Bool)

(assert (= bs!1843068 (and b!6902807 b!6902779)))

(assert (=> bs!1843068 (not (= lambda!391997 lambda!391993))))

(assert (=> bs!1843046 (not (= lambda!391997 lambda!391918))))

(assert (=> bs!1843058 (not (= lambda!391997 lambda!391965))))

(assert (=> bs!1843055 (not (= lambda!391997 lambda!391986))))

(assert (=> b!6902807 true))

(assert (=> b!6902807 true))

(declare-fun bs!1843069 () Bool)

(declare-fun b!6902812 () Bool)

(assert (= bs!1843069 (and b!6902812 b!6901981)))

(declare-fun lambda!391998 () Int)

(assert (=> bs!1843069 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= (regOne!34246 lt!2466741) r2!6280) (= (regTwo!34246 lt!2466741) r3!135)) (= lambda!391998 lambda!391921))))

(declare-fun bs!1843070 () Bool)

(assert (= bs!1843070 (and b!6902812 d!2162259)))

(assert (=> bs!1843070 (not (= lambda!391998 lambda!391978))))

(assert (=> bs!1843069 (not (= lambda!391998 lambda!391924))))

(declare-fun bs!1843071 () Bool)

(assert (= bs!1843071 (and b!6902812 b!6902301)))

(assert (=> bs!1843071 (= (and (= lt!2466728 s!14361) (= (regOne!34246 lt!2466741) (regOne!34246 lt!2466727)) (= (regTwo!34246 lt!2466741) (regTwo!34246 lt!2466727))) (= lambda!391998 lambda!391952))))

(declare-fun bs!1843072 () Bool)

(assert (= bs!1843072 (and b!6902812 d!2162325)))

(assert (=> bs!1843072 (= (and (= (regOne!34246 lt!2466741) r1!6342) (= (regTwo!34246 lt!2466741) r2!6280)) (= lambda!391998 lambda!391996))))

(declare-fun bs!1843073 () Bool)

(assert (= bs!1843073 (and b!6902812 d!2162309)))

(assert (=> bs!1843073 (not (= lambda!391998 lambda!391988))))

(declare-fun bs!1843074 () Bool)

(assert (= bs!1843074 (and b!6902812 b!6901988)))

(assert (=> bs!1843074 (not (= lambda!391998 lambda!391925))))

(declare-fun bs!1843075 () Bool)

(assert (= bs!1843075 (and b!6902812 b!6902564)))

(assert (=> bs!1843075 (= (and (= lt!2466728 (_1!37037 lt!2466737)) (= (regOne!34246 lt!2466741) (regOne!34246 r2!6280)) (= (regTwo!34246 lt!2466741) (regTwo!34246 r2!6280))) (= lambda!391998 lambda!391981))))

(declare-fun bs!1843076 () Bool)

(assert (= bs!1843076 (and b!6902812 d!2162317)))

(assert (=> bs!1843076 (not (= lambda!391998 lambda!391994))))

(declare-fun bs!1843077 () Bool)

(assert (= bs!1843077 (and b!6902812 b!6902702)))

(assert (=> bs!1843077 (= (and (= lt!2466728 (_2!37037 lt!2466737)) (= (regOne!34246 lt!2466741) (regOne!34246 r3!135)) (= (regTwo!34246 lt!2466741) (regTwo!34246 r3!135))) (= lambda!391998 lambda!391985))))

(declare-fun bs!1843078 () Bool)

(assert (= bs!1843078 (and b!6902812 d!2162301)))

(assert (=> bs!1843078 (= (and (= lt!2466728 s!14361) (= (regOne!34246 lt!2466741) lt!2466741) (= (regTwo!34246 lt!2466741) r3!135)) (= lambda!391998 lambda!391987))))

(declare-fun bs!1843079 () Bool)

(assert (= bs!1843079 (and b!6902812 b!6901987)))

(assert (=> bs!1843079 (= (and (= lt!2466728 s!14361) (= (regOne!34246 lt!2466741) r1!6342) (= (regTwo!34246 lt!2466741) lt!2466750)) (= lambda!391998 lambda!391926))))

(declare-fun bs!1843080 () Bool)

(assert (= bs!1843080 (and b!6902812 b!6902774)))

(assert (=> bs!1843080 (not (= lambda!391998 lambda!391992))))

(declare-fun bs!1843081 () Bool)

(assert (= bs!1843081 (and b!6902812 d!2162189)))

(assert (=> bs!1843081 (not (= lambda!391998 lambda!391963))))

(declare-fun bs!1843082 () Bool)

(assert (= bs!1843082 (and b!6902812 b!6902559)))

(assert (=> bs!1843082 (not (= lambda!391998 lambda!391980))))

(declare-fun bs!1843083 () Bool)

(assert (= bs!1843083 (and b!6902812 b!6902697)))

(assert (=> bs!1843083 (not (= lambda!391998 lambda!391984))))

(assert (=> bs!1843069 (= (and (= lt!2466728 s!14361) (= (regOne!34246 lt!2466741) r1!6342) (= (regTwo!34246 lt!2466741) lt!2466750)) (= lambda!391998 lambda!391919))))

(declare-fun bs!1843084 () Bool)

(assert (= bs!1843084 (and b!6902812 d!2162243)))

(assert (=> bs!1843084 (not (= lambda!391998 lambda!391976))))

(declare-fun bs!1843085 () Bool)

(assert (= bs!1843085 (and b!6902812 b!6902807)))

(assert (=> bs!1843085 (not (= lambda!391998 lambda!391997))))

(declare-fun bs!1843086 () Bool)

(assert (= bs!1843086 (and b!6902812 d!2162215)))

(assert (=> bs!1843086 (not (= lambda!391998 lambda!391973))))

(declare-fun bs!1843087 () Bool)

(assert (= bs!1843087 (and b!6902812 b!6902296)))

(assert (=> bs!1843087 (not (= lambda!391998 lambda!391950))))

(assert (=> bs!1843069 (not (= lambda!391998 lambda!391922))))

(assert (=> bs!1843069 (= (and (= (regOne!34246 lt!2466741) r1!6342) (= (regTwo!34246 lt!2466741) r2!6280)) (= lambda!391998 lambda!391923))))

(assert (=> bs!1843072 (not (= lambda!391998 lambda!391995))))

(declare-fun bs!1843088 () Bool)

(assert (= bs!1843088 (and b!6902812 b!6902768)))

(assert (=> bs!1843088 (= (and (= lt!2466728 (_1!37037 lt!2466743)) (= (regOne!34246 lt!2466741) (regOne!34246 r1!6342)) (= (regTwo!34246 lt!2466741) (regTwo!34246 r1!6342))) (= lambda!391998 lambda!391991))))

(declare-fun bs!1843089 () Bool)

(assert (= bs!1843089 (and b!6902812 b!6902763)))

(assert (=> bs!1843089 (not (= lambda!391998 lambda!391990))))

(declare-fun bs!1843090 () Bool)

(assert (= bs!1843090 (and b!6902812 b!6902251)))

(assert (=> bs!1843090 (= (and (= lt!2466728 s!14361) (= (regOne!34246 lt!2466741) (regOne!34246 lt!2466744)) (= (regTwo!34246 lt!2466741) (regTwo!34246 lt!2466744))) (= lambda!391998 lambda!391947))))

(declare-fun bs!1843091 () Bool)

(assert (= bs!1843091 (and b!6902812 b!6902246)))

(assert (=> bs!1843091 (not (= lambda!391998 lambda!391946))))

(assert (=> bs!1843073 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= (regOne!34246 lt!2466741) r2!6280) (= (regTwo!34246 lt!2466741) r3!135)) (= lambda!391998 lambda!391989))))

(assert (=> bs!1843069 (not (= lambda!391998 lambda!391920))))

(declare-fun bs!1843092 () Bool)

(assert (= bs!1843092 (and b!6902812 b!6902779)))

(assert (=> bs!1843092 (= (and (= lt!2466728 (_2!37037 lt!2466743)) (= (regOne!34246 lt!2466741) (regOne!34246 lt!2466750)) (= (regTwo!34246 lt!2466741) (regTwo!34246 lt!2466750))) (= lambda!391998 lambda!391993))))

(assert (=> bs!1843069 (not (= lambda!391998 lambda!391918))))

(assert (=> bs!1843081 (= (and (= lt!2466728 s!14361) (= (regOne!34246 lt!2466741) r1!6342) (= (regTwo!34246 lt!2466741) lt!2466750)) (= lambda!391998 lambda!391965))))

(assert (=> bs!1843078 (not (= lambda!391998 lambda!391986))))

(assert (=> b!6902812 true))

(assert (=> b!6902812 true))

(declare-fun b!6902802 () Bool)

(declare-fun e!4156886 () Bool)

(declare-fun e!4156881 () Bool)

(assert (=> b!6902802 (= e!4156886 e!4156881)))

(declare-fun c!1282518 () Bool)

(assert (=> b!6902802 (= c!1282518 ((_ is Star!16867) lt!2466741))))

(declare-fun b!6902803 () Bool)

(declare-fun e!4156882 () Bool)

(assert (=> b!6902803 (= e!4156882 (matchRSpec!3930 (regTwo!34247 lt!2466741) lt!2466728))))

(declare-fun b!6902804 () Bool)

(declare-fun e!4156884 () Bool)

(assert (=> b!6902804 (= e!4156884 (= lt!2466728 (Cons!66500 (c!1282339 lt!2466741) Nil!66500)))))

(declare-fun bm!627706 () Bool)

(declare-fun call!627711 () Bool)

(assert (=> bm!627706 (= call!627711 (isEmpty!38730 lt!2466728))))

(declare-fun d!2162329 () Bool)

(declare-fun c!1282520 () Bool)

(assert (=> d!2162329 (= c!1282520 ((_ is EmptyExpr!16867) lt!2466741))))

(declare-fun e!4156885 () Bool)

(assert (=> d!2162329 (= (matchRSpec!3930 lt!2466741 lt!2466728) e!4156885)))

(declare-fun b!6902805 () Bool)

(declare-fun res!2814916 () Bool)

(declare-fun e!4156883 () Bool)

(assert (=> b!6902805 (=> res!2814916 e!4156883)))

(assert (=> b!6902805 (= res!2814916 call!627711)))

(assert (=> b!6902805 (= e!4156881 e!4156883)))

(declare-fun b!6902806 () Bool)

(declare-fun e!4156880 () Bool)

(assert (=> b!6902806 (= e!4156885 e!4156880)))

(declare-fun res!2814914 () Bool)

(assert (=> b!6902806 (= res!2814914 (not ((_ is EmptyLang!16867) lt!2466741)))))

(assert (=> b!6902806 (=> (not res!2814914) (not e!4156880))))

(declare-fun call!627712 () Bool)

(assert (=> b!6902807 (= e!4156883 call!627712)))

(declare-fun b!6902808 () Bool)

(declare-fun c!1282519 () Bool)

(assert (=> b!6902808 (= c!1282519 ((_ is Union!16867) lt!2466741))))

(assert (=> b!6902808 (= e!4156884 e!4156886)))

(declare-fun b!6902809 () Bool)

(declare-fun c!1282521 () Bool)

(assert (=> b!6902809 (= c!1282521 ((_ is ElementMatch!16867) lt!2466741))))

(assert (=> b!6902809 (= e!4156880 e!4156884)))

(declare-fun b!6902810 () Bool)

(assert (=> b!6902810 (= e!4156885 call!627711)))

(declare-fun b!6902811 () Bool)

(assert (=> b!6902811 (= e!4156886 e!4156882)))

(declare-fun res!2814915 () Bool)

(assert (=> b!6902811 (= res!2814915 (matchRSpec!3930 (regOne!34247 lt!2466741) lt!2466728))))

(assert (=> b!6902811 (=> res!2814915 e!4156882)))

(assert (=> b!6902812 (= e!4156881 call!627712)))

(declare-fun bm!627707 () Bool)

(assert (=> bm!627707 (= call!627712 (Exists!3875 (ite c!1282518 lambda!391997 lambda!391998)))))

(assert (= (and d!2162329 c!1282520) b!6902810))

(assert (= (and d!2162329 (not c!1282520)) b!6902806))

(assert (= (and b!6902806 res!2814914) b!6902809))

(assert (= (and b!6902809 c!1282521) b!6902804))

(assert (= (and b!6902809 (not c!1282521)) b!6902808))

(assert (= (and b!6902808 c!1282519) b!6902811))

(assert (= (and b!6902808 (not c!1282519)) b!6902802))

(assert (= (and b!6902811 (not res!2814915)) b!6902803))

(assert (= (and b!6902802 c!1282518) b!6902805))

(assert (= (and b!6902802 (not c!1282518)) b!6902812))

(assert (= (and b!6902805 (not res!2814916)) b!6902807))

(assert (= (or b!6902807 b!6902812) bm!627707))

(assert (= (or b!6902810 b!6902805) bm!627706))

(declare-fun m!7620804 () Bool)

(assert (=> b!6902803 m!7620804))

(assert (=> bm!627706 m!7620668))

(declare-fun m!7620806 () Bool)

(assert (=> b!6902811 m!7620806))

(declare-fun m!7620808 () Bool)

(assert (=> bm!627707 m!7620808))

(assert (=> b!6901981 d!2162329))

(declare-fun b!6902813 () Bool)

(declare-fun res!2814920 () Bool)

(declare-fun e!4156889 () Bool)

(assert (=> b!6902813 (=> res!2814920 e!4156889)))

(assert (=> b!6902813 (= res!2814920 (not ((_ is Concat!25712) lt!2466750)))))

(declare-fun e!4156891 () Bool)

(assert (=> b!6902813 (= e!4156891 e!4156889)))

(declare-fun b!6902814 () Bool)

(declare-fun e!4156892 () Bool)

(declare-fun e!4156890 () Bool)

(assert (=> b!6902814 (= e!4156892 e!4156890)))

(declare-fun c!1282523 () Bool)

(assert (=> b!6902814 (= c!1282523 ((_ is Star!16867) lt!2466750))))

(declare-fun b!6902815 () Bool)

(declare-fun e!4156887 () Bool)

(declare-fun call!627714 () Bool)

(assert (=> b!6902815 (= e!4156887 call!627714)))

(declare-fun bm!627708 () Bool)

(declare-fun c!1282522 () Bool)

(assert (=> bm!627708 (= call!627714 (validRegex!8575 (ite c!1282522 (regTwo!34247 lt!2466750) (regOne!34246 lt!2466750))))))

(declare-fun b!6902816 () Bool)

(declare-fun e!4156893 () Bool)

(declare-fun call!627715 () Bool)

(assert (=> b!6902816 (= e!4156893 call!627715)))

(declare-fun b!6902817 () Bool)

(assert (=> b!6902817 (= e!4156890 e!4156891)))

(assert (=> b!6902817 (= c!1282522 ((_ is Union!16867) lt!2466750))))

(declare-fun call!627713 () Bool)

(declare-fun bm!627709 () Bool)

(assert (=> bm!627709 (= call!627713 (validRegex!8575 (ite c!1282523 (reg!17196 lt!2466750) (ite c!1282522 (regOne!34247 lt!2466750) (regTwo!34246 lt!2466750)))))))

(declare-fun b!6902818 () Bool)

(declare-fun e!4156888 () Bool)

(assert (=> b!6902818 (= e!4156890 e!4156888)))

(declare-fun res!2814918 () Bool)

(assert (=> b!6902818 (= res!2814918 (not (nullable!6708 (reg!17196 lt!2466750))))))

(assert (=> b!6902818 (=> (not res!2814918) (not e!4156888))))

(declare-fun b!6902819 () Bool)

(assert (=> b!6902819 (= e!4156888 call!627713)))

(declare-fun b!6902820 () Bool)

(declare-fun res!2814921 () Bool)

(assert (=> b!6902820 (=> (not res!2814921) (not e!4156887))))

(assert (=> b!6902820 (= res!2814921 call!627715)))

(assert (=> b!6902820 (= e!4156891 e!4156887)))

(declare-fun b!6902821 () Bool)

(assert (=> b!6902821 (= e!4156889 e!4156893)))

(declare-fun res!2814917 () Bool)

(assert (=> b!6902821 (=> (not res!2814917) (not e!4156893))))

(assert (=> b!6902821 (= res!2814917 call!627714)))

(declare-fun bm!627710 () Bool)

(assert (=> bm!627710 (= call!627715 call!627713)))

(declare-fun d!2162331 () Bool)

(declare-fun res!2814919 () Bool)

(assert (=> d!2162331 (=> res!2814919 e!4156892)))

(assert (=> d!2162331 (= res!2814919 ((_ is ElementMatch!16867) lt!2466750))))

(assert (=> d!2162331 (= (validRegex!8575 lt!2466750) e!4156892)))

(assert (= (and d!2162331 (not res!2814919)) b!6902814))

(assert (= (and b!6902814 c!1282523) b!6902818))

(assert (= (and b!6902814 (not c!1282523)) b!6902817))

(assert (= (and b!6902818 res!2814918) b!6902819))

(assert (= (and b!6902817 c!1282522) b!6902820))

(assert (= (and b!6902817 (not c!1282522)) b!6902813))

(assert (= (and b!6902820 res!2814921) b!6902815))

(assert (= (and b!6902813 (not res!2814920)) b!6902821))

(assert (= (and b!6902821 res!2814917) b!6902816))

(assert (= (or b!6902820 b!6902816) bm!627710))

(assert (= (or b!6902815 b!6902821) bm!627708))

(assert (= (or b!6902819 bm!627710) bm!627709))

(declare-fun m!7620810 () Bool)

(assert (=> bm!627708 m!7620810))

(declare-fun m!7620812 () Bool)

(assert (=> bm!627709 m!7620812))

(declare-fun m!7620814 () Bool)

(assert (=> b!6902818 m!7620814))

(assert (=> b!6901988 d!2162331))

(assert (=> b!6901988 d!2162243))

(declare-fun b!6902822 () Bool)

(declare-fun e!4156896 () Bool)

(declare-fun lt!2466878 () Option!16646)

(assert (=> b!6902822 (= e!4156896 (not (isDefined!13349 lt!2466878)))))

(declare-fun b!6902823 () Bool)

(declare-fun e!4156897 () Option!16646)

(assert (=> b!6902823 (= e!4156897 None!16645)))

(declare-fun d!2162333 () Bool)

(assert (=> d!2162333 e!4156896))

(declare-fun res!2814924 () Bool)

(assert (=> d!2162333 (=> res!2814924 e!4156896)))

(declare-fun e!4156898 () Bool)

(assert (=> d!2162333 (= res!2814924 e!4156898)))

(declare-fun res!2814926 () Bool)

(assert (=> d!2162333 (=> (not res!2814926) (not e!4156898))))

(assert (=> d!2162333 (= res!2814926 (isDefined!13349 lt!2466878))))

(declare-fun e!4156895 () Option!16646)

(assert (=> d!2162333 (= lt!2466878 e!4156895)))

(declare-fun c!1282525 () Bool)

(declare-fun e!4156894 () Bool)

(assert (=> d!2162333 (= c!1282525 e!4156894)))

(declare-fun res!2814923 () Bool)

(assert (=> d!2162333 (=> (not res!2814923) (not e!4156894))))

(assert (=> d!2162333 (= res!2814923 (matchR!9012 r1!6342 Nil!66500))))

(assert (=> d!2162333 (validRegex!8575 r1!6342)))

(assert (=> d!2162333 (= (findConcatSeparation!3060 r1!6342 lt!2466750 Nil!66500 s!14361 s!14361) lt!2466878)))

(declare-fun b!6902824 () Bool)

(assert (=> b!6902824 (= e!4156898 (= (++!14920 (_1!37037 (get!23251 lt!2466878)) (_2!37037 (get!23251 lt!2466878))) s!14361))))

(declare-fun b!6902825 () Bool)

(assert (=> b!6902825 (= e!4156895 (Some!16645 (tuple2!67469 Nil!66500 s!14361)))))

(declare-fun b!6902826 () Bool)

(assert (=> b!6902826 (= e!4156895 e!4156897)))

(declare-fun c!1282524 () Bool)

(assert (=> b!6902826 (= c!1282524 ((_ is Nil!66500) s!14361))))

(declare-fun b!6902827 () Bool)

(declare-fun res!2814925 () Bool)

(assert (=> b!6902827 (=> (not res!2814925) (not e!4156898))))

(assert (=> b!6902827 (= res!2814925 (matchR!9012 r1!6342 (_1!37037 (get!23251 lt!2466878))))))

(declare-fun b!6902828 () Bool)

(assert (=> b!6902828 (= e!4156894 (matchR!9012 lt!2466750 s!14361))))

(declare-fun b!6902829 () Bool)

(declare-fun lt!2466877 () Unit!160468)

(declare-fun lt!2466879 () Unit!160468)

(assert (=> b!6902829 (= lt!2466877 lt!2466879)))

(assert (=> b!6902829 (= (++!14920 (++!14920 Nil!66500 (Cons!66500 (h!72948 s!14361) Nil!66500)) (t!380367 s!14361)) s!14361)))

(assert (=> b!6902829 (= lt!2466879 (lemmaMoveElementToOtherListKeepsConcatEq!2795 Nil!66500 (h!72948 s!14361) (t!380367 s!14361) s!14361))))

(assert (=> b!6902829 (= e!4156897 (findConcatSeparation!3060 r1!6342 lt!2466750 (++!14920 Nil!66500 (Cons!66500 (h!72948 s!14361) Nil!66500)) (t!380367 s!14361) s!14361))))

(declare-fun b!6902830 () Bool)

(declare-fun res!2814922 () Bool)

(assert (=> b!6902830 (=> (not res!2814922) (not e!4156898))))

(assert (=> b!6902830 (= res!2814922 (matchR!9012 lt!2466750 (_2!37037 (get!23251 lt!2466878))))))

(assert (= (and d!2162333 res!2814923) b!6902828))

(assert (= (and d!2162333 c!1282525) b!6902825))

(assert (= (and d!2162333 (not c!1282525)) b!6902826))

(assert (= (and b!6902826 c!1282524) b!6902823))

(assert (= (and b!6902826 (not c!1282524)) b!6902829))

(assert (= (and d!2162333 res!2814926) b!6902827))

(assert (= (and b!6902827 res!2814925) b!6902830))

(assert (= (and b!6902830 res!2814922) b!6902824))

(assert (= (and d!2162333 (not res!2814924)) b!6902822))

(declare-fun m!7620816 () Bool)

(assert (=> b!6902824 m!7620816))

(declare-fun m!7620818 () Bool)

(assert (=> b!6902824 m!7620818))

(declare-fun m!7620820 () Bool)

(assert (=> b!6902828 m!7620820))

(assert (=> b!6902830 m!7620816))

(declare-fun m!7620822 () Bool)

(assert (=> b!6902830 m!7620822))

(assert (=> b!6902829 m!7620716))

(assert (=> b!6902829 m!7620716))

(assert (=> b!6902829 m!7620718))

(assert (=> b!6902829 m!7620720))

(assert (=> b!6902829 m!7620716))

(declare-fun m!7620824 () Bool)

(assert (=> b!6902829 m!7620824))

(declare-fun m!7620826 () Bool)

(assert (=> d!2162333 m!7620826))

(assert (=> d!2162333 m!7620800))

(assert (=> d!2162333 m!7620078))

(assert (=> b!6902822 m!7620826))

(assert (=> b!6902827 m!7620816))

(declare-fun m!7620828 () Bool)

(assert (=> b!6902827 m!7620828))

(assert (=> b!6901988 d!2162333))

(assert (=> b!6901988 d!2162185))

(declare-fun d!2162335 () Bool)

(assert (=> d!2162335 (= (isDefined!13349 lt!2466747) (not (isEmpty!38731 lt!2466747)))))

(declare-fun bs!1843093 () Bool)

(assert (= bs!1843093 d!2162335))

(declare-fun m!7620830 () Bool)

(assert (=> bs!1843093 m!7620830))

(assert (=> b!6901988 d!2162335))

(declare-fun b!6902831 () Bool)

(declare-fun res!2814930 () Bool)

(declare-fun e!4156901 () Bool)

(assert (=> b!6902831 (=> res!2814930 e!4156901)))

(assert (=> b!6902831 (= res!2814930 (not ((_ is Concat!25712) r3!135)))))

(declare-fun e!4156903 () Bool)

(assert (=> b!6902831 (= e!4156903 e!4156901)))

(declare-fun b!6902832 () Bool)

(declare-fun e!4156904 () Bool)

(declare-fun e!4156902 () Bool)

(assert (=> b!6902832 (= e!4156904 e!4156902)))

(declare-fun c!1282527 () Bool)

(assert (=> b!6902832 (= c!1282527 ((_ is Star!16867) r3!135))))

(declare-fun b!6902833 () Bool)

(declare-fun e!4156899 () Bool)

(declare-fun call!627717 () Bool)

(assert (=> b!6902833 (= e!4156899 call!627717)))

(declare-fun bm!627711 () Bool)

(declare-fun c!1282526 () Bool)

(assert (=> bm!627711 (= call!627717 (validRegex!8575 (ite c!1282526 (regTwo!34247 r3!135) (regOne!34246 r3!135))))))

(declare-fun b!6902834 () Bool)

(declare-fun e!4156905 () Bool)

(declare-fun call!627718 () Bool)

(assert (=> b!6902834 (= e!4156905 call!627718)))

(declare-fun b!6902835 () Bool)

(assert (=> b!6902835 (= e!4156902 e!4156903)))

(assert (=> b!6902835 (= c!1282526 ((_ is Union!16867) r3!135))))

(declare-fun bm!627712 () Bool)

(declare-fun call!627716 () Bool)

(assert (=> bm!627712 (= call!627716 (validRegex!8575 (ite c!1282527 (reg!17196 r3!135) (ite c!1282526 (regOne!34247 r3!135) (regTwo!34246 r3!135)))))))

(declare-fun b!6902836 () Bool)

(declare-fun e!4156900 () Bool)

(assert (=> b!6902836 (= e!4156902 e!4156900)))

(declare-fun res!2814928 () Bool)

(assert (=> b!6902836 (= res!2814928 (not (nullable!6708 (reg!17196 r3!135))))))

(assert (=> b!6902836 (=> (not res!2814928) (not e!4156900))))

(declare-fun b!6902837 () Bool)

(assert (=> b!6902837 (= e!4156900 call!627716)))

(declare-fun b!6902838 () Bool)

(declare-fun res!2814931 () Bool)

(assert (=> b!6902838 (=> (not res!2814931) (not e!4156899))))

(assert (=> b!6902838 (= res!2814931 call!627718)))

(assert (=> b!6902838 (= e!4156903 e!4156899)))

(declare-fun b!6902839 () Bool)

(assert (=> b!6902839 (= e!4156901 e!4156905)))

(declare-fun res!2814927 () Bool)

(assert (=> b!6902839 (=> (not res!2814927) (not e!4156905))))

(assert (=> b!6902839 (= res!2814927 call!627717)))

(declare-fun bm!627713 () Bool)

(assert (=> bm!627713 (= call!627718 call!627716)))

(declare-fun d!2162337 () Bool)

(declare-fun res!2814929 () Bool)

(assert (=> d!2162337 (=> res!2814929 e!4156904)))

(assert (=> d!2162337 (= res!2814929 ((_ is ElementMatch!16867) r3!135))))

(assert (=> d!2162337 (= (validRegex!8575 r3!135) e!4156904)))

(assert (= (and d!2162337 (not res!2814929)) b!6902832))

(assert (= (and b!6902832 c!1282527) b!6902836))

(assert (= (and b!6902832 (not c!1282527)) b!6902835))

(assert (= (and b!6902836 res!2814928) b!6902837))

(assert (= (and b!6902835 c!1282526) b!6902838))

(assert (= (and b!6902835 (not c!1282526)) b!6902831))

(assert (= (and b!6902838 res!2814931) b!6902833))

(assert (= (and b!6902831 (not res!2814930)) b!6902839))

(assert (= (and b!6902839 res!2814927) b!6902834))

(assert (= (or b!6902838 b!6902834) bm!627713))

(assert (= (or b!6902833 b!6902839) bm!627711))

(assert (= (or b!6902837 bm!627713) bm!627712))

(declare-fun m!7620832 () Bool)

(assert (=> bm!627711 m!7620832))

(declare-fun m!7620834 () Bool)

(assert (=> bm!627712 m!7620834))

(declare-fun m!7620836 () Bool)

(assert (=> b!6902836 m!7620836))

(assert (=> b!6901983 d!2162337))

(declare-fun b!6902840 () Bool)

(declare-fun res!2814935 () Bool)

(declare-fun e!4156908 () Bool)

(assert (=> b!6902840 (=> res!2814935 e!4156908)))

(assert (=> b!6902840 (= res!2814935 (not ((_ is Concat!25712) r1!6342)))))

(declare-fun e!4156910 () Bool)

(assert (=> b!6902840 (= e!4156910 e!4156908)))

(declare-fun b!6902841 () Bool)

(declare-fun e!4156911 () Bool)

(declare-fun e!4156909 () Bool)

(assert (=> b!6902841 (= e!4156911 e!4156909)))

(declare-fun c!1282529 () Bool)

(assert (=> b!6902841 (= c!1282529 ((_ is Star!16867) r1!6342))))

(declare-fun b!6902842 () Bool)

(declare-fun e!4156906 () Bool)

(declare-fun call!627720 () Bool)

(assert (=> b!6902842 (= e!4156906 call!627720)))

(declare-fun bm!627714 () Bool)

(declare-fun c!1282528 () Bool)

(assert (=> bm!627714 (= call!627720 (validRegex!8575 (ite c!1282528 (regTwo!34247 r1!6342) (regOne!34246 r1!6342))))))

(declare-fun b!6902843 () Bool)

(declare-fun e!4156912 () Bool)

(declare-fun call!627721 () Bool)

(assert (=> b!6902843 (= e!4156912 call!627721)))

(declare-fun b!6902844 () Bool)

(assert (=> b!6902844 (= e!4156909 e!4156910)))

(assert (=> b!6902844 (= c!1282528 ((_ is Union!16867) r1!6342))))

(declare-fun call!627719 () Bool)

(declare-fun bm!627715 () Bool)

(assert (=> bm!627715 (= call!627719 (validRegex!8575 (ite c!1282529 (reg!17196 r1!6342) (ite c!1282528 (regOne!34247 r1!6342) (regTwo!34246 r1!6342)))))))

(declare-fun b!6902845 () Bool)

(declare-fun e!4156907 () Bool)

(assert (=> b!6902845 (= e!4156909 e!4156907)))

(declare-fun res!2814933 () Bool)

(assert (=> b!6902845 (= res!2814933 (not (nullable!6708 (reg!17196 r1!6342))))))

(assert (=> b!6902845 (=> (not res!2814933) (not e!4156907))))

(declare-fun b!6902846 () Bool)

(assert (=> b!6902846 (= e!4156907 call!627719)))

(declare-fun b!6902847 () Bool)

(declare-fun res!2814936 () Bool)

(assert (=> b!6902847 (=> (not res!2814936) (not e!4156906))))

(assert (=> b!6902847 (= res!2814936 call!627721)))

(assert (=> b!6902847 (= e!4156910 e!4156906)))

(declare-fun b!6902848 () Bool)

(assert (=> b!6902848 (= e!4156908 e!4156912)))

(declare-fun res!2814932 () Bool)

(assert (=> b!6902848 (=> (not res!2814932) (not e!4156912))))

(assert (=> b!6902848 (= res!2814932 call!627720)))

(declare-fun bm!627716 () Bool)

(assert (=> bm!627716 (= call!627721 call!627719)))

(declare-fun d!2162339 () Bool)

(declare-fun res!2814934 () Bool)

(assert (=> d!2162339 (=> res!2814934 e!4156911)))

(assert (=> d!2162339 (= res!2814934 ((_ is ElementMatch!16867) r1!6342))))

(assert (=> d!2162339 (= (validRegex!8575 r1!6342) e!4156911)))

(assert (= (and d!2162339 (not res!2814934)) b!6902841))

(assert (= (and b!6902841 c!1282529) b!6902845))

(assert (= (and b!6902841 (not c!1282529)) b!6902844))

(assert (= (and b!6902845 res!2814933) b!6902846))

(assert (= (and b!6902844 c!1282528) b!6902847))

(assert (= (and b!6902844 (not c!1282528)) b!6902840))

(assert (= (and b!6902847 res!2814936) b!6902842))

(assert (= (and b!6902840 (not res!2814935)) b!6902848))

(assert (= (and b!6902848 res!2814932) b!6902843))

(assert (= (or b!6902847 b!6902843) bm!627716))

(assert (= (or b!6902842 b!6902848) bm!627714))

(assert (= (or b!6902846 bm!627716) bm!627715))

(declare-fun m!7620838 () Bool)

(assert (=> bm!627714 m!7620838))

(declare-fun m!7620840 () Bool)

(assert (=> bm!627715 m!7620840))

(declare-fun m!7620842 () Bool)

(assert (=> b!6902845 m!7620842))

(assert (=> start!664738 d!2162339))

(declare-fun b!6902859 () Bool)

(declare-fun e!4156915 () Bool)

(assert (=> b!6902859 (= e!4156915 tp_is_empty!42959)))

(declare-fun b!6902862 () Bool)

(declare-fun tp!1900414 () Bool)

(declare-fun tp!1900410 () Bool)

(assert (=> b!6902862 (= e!4156915 (and tp!1900414 tp!1900410))))

(declare-fun b!6902860 () Bool)

(declare-fun tp!1900412 () Bool)

(declare-fun tp!1900413 () Bool)

(assert (=> b!6902860 (= e!4156915 (and tp!1900412 tp!1900413))))

(declare-fun b!6902861 () Bool)

(declare-fun tp!1900411 () Bool)

(assert (=> b!6902861 (= e!4156915 tp!1900411)))

(assert (=> b!6901975 (= tp!1900301 e!4156915)))

(assert (= (and b!6901975 ((_ is ElementMatch!16867) (regOne!34247 r1!6342))) b!6902859))

(assert (= (and b!6901975 ((_ is Concat!25712) (regOne!34247 r1!6342))) b!6902860))

(assert (= (and b!6901975 ((_ is Star!16867) (regOne!34247 r1!6342))) b!6902861))

(assert (= (and b!6901975 ((_ is Union!16867) (regOne!34247 r1!6342))) b!6902862))

(declare-fun b!6902863 () Bool)

(declare-fun e!4156916 () Bool)

(assert (=> b!6902863 (= e!4156916 tp_is_empty!42959)))

(declare-fun b!6902866 () Bool)

(declare-fun tp!1900419 () Bool)

(declare-fun tp!1900415 () Bool)

(assert (=> b!6902866 (= e!4156916 (and tp!1900419 tp!1900415))))

(declare-fun b!6902864 () Bool)

(declare-fun tp!1900417 () Bool)

(declare-fun tp!1900418 () Bool)

(assert (=> b!6902864 (= e!4156916 (and tp!1900417 tp!1900418))))

(declare-fun b!6902865 () Bool)

(declare-fun tp!1900416 () Bool)

(assert (=> b!6902865 (= e!4156916 tp!1900416)))

(assert (=> b!6901975 (= tp!1900299 e!4156916)))

(assert (= (and b!6901975 ((_ is ElementMatch!16867) (regTwo!34247 r1!6342))) b!6902863))

(assert (= (and b!6901975 ((_ is Concat!25712) (regTwo!34247 r1!6342))) b!6902864))

(assert (= (and b!6901975 ((_ is Star!16867) (regTwo!34247 r1!6342))) b!6902865))

(assert (= (and b!6901975 ((_ is Union!16867) (regTwo!34247 r1!6342))) b!6902866))

(declare-fun b!6902867 () Bool)

(declare-fun e!4156917 () Bool)

(assert (=> b!6902867 (= e!4156917 tp_is_empty!42959)))

(declare-fun b!6902870 () Bool)

(declare-fun tp!1900424 () Bool)

(declare-fun tp!1900420 () Bool)

(assert (=> b!6902870 (= e!4156917 (and tp!1900424 tp!1900420))))

(declare-fun b!6902868 () Bool)

(declare-fun tp!1900422 () Bool)

(declare-fun tp!1900423 () Bool)

(assert (=> b!6902868 (= e!4156917 (and tp!1900422 tp!1900423))))

(declare-fun b!6902869 () Bool)

(declare-fun tp!1900421 () Bool)

(assert (=> b!6902869 (= e!4156917 tp!1900421)))

(assert (=> b!6901991 (= tp!1900304 e!4156917)))

(assert (= (and b!6901991 ((_ is ElementMatch!16867) (reg!17196 r3!135))) b!6902867))

(assert (= (and b!6901991 ((_ is Concat!25712) (reg!17196 r3!135))) b!6902868))

(assert (= (and b!6901991 ((_ is Star!16867) (reg!17196 r3!135))) b!6902869))

(assert (= (and b!6901991 ((_ is Union!16867) (reg!17196 r3!135))) b!6902870))

(declare-fun b!6902871 () Bool)

(declare-fun e!4156918 () Bool)

(assert (=> b!6902871 (= e!4156918 tp_is_empty!42959)))

(declare-fun b!6902874 () Bool)

(declare-fun tp!1900429 () Bool)

(declare-fun tp!1900425 () Bool)

(assert (=> b!6902874 (= e!4156918 (and tp!1900429 tp!1900425))))

(declare-fun b!6902872 () Bool)

(declare-fun tp!1900427 () Bool)

(declare-fun tp!1900428 () Bool)

(assert (=> b!6902872 (= e!4156918 (and tp!1900427 tp!1900428))))

(declare-fun b!6902873 () Bool)

(declare-fun tp!1900426 () Bool)

(assert (=> b!6902873 (= e!4156918 tp!1900426)))

(assert (=> b!6901974 (= tp!1900302 e!4156918)))

(assert (= (and b!6901974 ((_ is ElementMatch!16867) (regOne!34247 r3!135))) b!6902871))

(assert (= (and b!6901974 ((_ is Concat!25712) (regOne!34247 r3!135))) b!6902872))

(assert (= (and b!6901974 ((_ is Star!16867) (regOne!34247 r3!135))) b!6902873))

(assert (= (and b!6901974 ((_ is Union!16867) (regOne!34247 r3!135))) b!6902874))

(declare-fun b!6902875 () Bool)

(declare-fun e!4156919 () Bool)

(assert (=> b!6902875 (= e!4156919 tp_is_empty!42959)))

(declare-fun b!6902878 () Bool)

(declare-fun tp!1900434 () Bool)

(declare-fun tp!1900430 () Bool)

(assert (=> b!6902878 (= e!4156919 (and tp!1900434 tp!1900430))))

(declare-fun b!6902876 () Bool)

(declare-fun tp!1900432 () Bool)

(declare-fun tp!1900433 () Bool)

(assert (=> b!6902876 (= e!4156919 (and tp!1900432 tp!1900433))))

(declare-fun b!6902877 () Bool)

(declare-fun tp!1900431 () Bool)

(assert (=> b!6902877 (= e!4156919 tp!1900431)))

(assert (=> b!6901974 (= tp!1900297 e!4156919)))

(assert (= (and b!6901974 ((_ is ElementMatch!16867) (regTwo!34247 r3!135))) b!6902875))

(assert (= (and b!6901974 ((_ is Concat!25712) (regTwo!34247 r3!135))) b!6902876))

(assert (= (and b!6901974 ((_ is Star!16867) (regTwo!34247 r3!135))) b!6902877))

(assert (= (and b!6901974 ((_ is Union!16867) (regTwo!34247 r3!135))) b!6902878))

(declare-fun b!6902883 () Bool)

(declare-fun e!4156922 () Bool)

(declare-fun tp!1900437 () Bool)

(assert (=> b!6902883 (= e!4156922 (and tp_is_empty!42959 tp!1900437))))

(assert (=> b!6901990 (= tp!1900310 e!4156922)))

(assert (= (and b!6901990 ((_ is Cons!66500) (t!380367 s!14361))) b!6902883))

(declare-fun b!6902884 () Bool)

(declare-fun e!4156923 () Bool)

(assert (=> b!6902884 (= e!4156923 tp_is_empty!42959)))

(declare-fun b!6902887 () Bool)

(declare-fun tp!1900442 () Bool)

(declare-fun tp!1900438 () Bool)

(assert (=> b!6902887 (= e!4156923 (and tp!1900442 tp!1900438))))

(declare-fun b!6902885 () Bool)

(declare-fun tp!1900440 () Bool)

(declare-fun tp!1900441 () Bool)

(assert (=> b!6902885 (= e!4156923 (and tp!1900440 tp!1900441))))

(declare-fun b!6902886 () Bool)

(declare-fun tp!1900439 () Bool)

(assert (=> b!6902886 (= e!4156923 tp!1900439)))

(assert (=> b!6901985 (= tp!1900307 e!4156923)))

(assert (= (and b!6901985 ((_ is ElementMatch!16867) (regOne!34246 r1!6342))) b!6902884))

(assert (= (and b!6901985 ((_ is Concat!25712) (regOne!34246 r1!6342))) b!6902885))

(assert (= (and b!6901985 ((_ is Star!16867) (regOne!34246 r1!6342))) b!6902886))

(assert (= (and b!6901985 ((_ is Union!16867) (regOne!34246 r1!6342))) b!6902887))

(declare-fun b!6902888 () Bool)

(declare-fun e!4156924 () Bool)

(assert (=> b!6902888 (= e!4156924 tp_is_empty!42959)))

(declare-fun b!6902891 () Bool)

(declare-fun tp!1900447 () Bool)

(declare-fun tp!1900443 () Bool)

(assert (=> b!6902891 (= e!4156924 (and tp!1900447 tp!1900443))))

(declare-fun b!6902889 () Bool)

(declare-fun tp!1900445 () Bool)

(declare-fun tp!1900446 () Bool)

(assert (=> b!6902889 (= e!4156924 (and tp!1900445 tp!1900446))))

(declare-fun b!6902890 () Bool)

(declare-fun tp!1900444 () Bool)

(assert (=> b!6902890 (= e!4156924 tp!1900444)))

(assert (=> b!6901985 (= tp!1900296 e!4156924)))

(assert (= (and b!6901985 ((_ is ElementMatch!16867) (regTwo!34246 r1!6342))) b!6902888))

(assert (= (and b!6901985 ((_ is Concat!25712) (regTwo!34246 r1!6342))) b!6902889))

(assert (= (and b!6901985 ((_ is Star!16867) (regTwo!34246 r1!6342))) b!6902890))

(assert (= (and b!6901985 ((_ is Union!16867) (regTwo!34246 r1!6342))) b!6902891))

(declare-fun b!6902892 () Bool)

(declare-fun e!4156925 () Bool)

(assert (=> b!6902892 (= e!4156925 tp_is_empty!42959)))

(declare-fun b!6902895 () Bool)

(declare-fun tp!1900452 () Bool)

(declare-fun tp!1900448 () Bool)

(assert (=> b!6902895 (= e!4156925 (and tp!1900452 tp!1900448))))

(declare-fun b!6902893 () Bool)

(declare-fun tp!1900450 () Bool)

(declare-fun tp!1900451 () Bool)

(assert (=> b!6902893 (= e!4156925 (and tp!1900450 tp!1900451))))

(declare-fun b!6902894 () Bool)

(declare-fun tp!1900449 () Bool)

(assert (=> b!6902894 (= e!4156925 tp!1900449)))

(assert (=> b!6901984 (= tp!1900305 e!4156925)))

(assert (= (and b!6901984 ((_ is ElementMatch!16867) (reg!17196 r1!6342))) b!6902892))

(assert (= (and b!6901984 ((_ is Concat!25712) (reg!17196 r1!6342))) b!6902893))

(assert (= (and b!6901984 ((_ is Star!16867) (reg!17196 r1!6342))) b!6902894))

(assert (= (and b!6901984 ((_ is Union!16867) (reg!17196 r1!6342))) b!6902895))

(declare-fun b!6902896 () Bool)

(declare-fun e!4156926 () Bool)

(assert (=> b!6902896 (= e!4156926 tp_is_empty!42959)))

(declare-fun b!6902899 () Bool)

(declare-fun tp!1900457 () Bool)

(declare-fun tp!1900453 () Bool)

(assert (=> b!6902899 (= e!4156926 (and tp!1900457 tp!1900453))))

(declare-fun b!6902897 () Bool)

(declare-fun tp!1900455 () Bool)

(declare-fun tp!1900456 () Bool)

(assert (=> b!6902897 (= e!4156926 (and tp!1900455 tp!1900456))))

(declare-fun b!6902898 () Bool)

(declare-fun tp!1900454 () Bool)

(assert (=> b!6902898 (= e!4156926 tp!1900454)))

(assert (=> b!6901979 (= tp!1900311 e!4156926)))

(assert (= (and b!6901979 ((_ is ElementMatch!16867) (regOne!34246 r2!6280))) b!6902896))

(assert (= (and b!6901979 ((_ is Concat!25712) (regOne!34246 r2!6280))) b!6902897))

(assert (= (and b!6901979 ((_ is Star!16867) (regOne!34246 r2!6280))) b!6902898))

(assert (= (and b!6901979 ((_ is Union!16867) (regOne!34246 r2!6280))) b!6902899))

(declare-fun b!6902900 () Bool)

(declare-fun e!4156927 () Bool)

(assert (=> b!6902900 (= e!4156927 tp_is_empty!42959)))

(declare-fun b!6902903 () Bool)

(declare-fun tp!1900462 () Bool)

(declare-fun tp!1900458 () Bool)

(assert (=> b!6902903 (= e!4156927 (and tp!1900462 tp!1900458))))

(declare-fun b!6902901 () Bool)

(declare-fun tp!1900460 () Bool)

(declare-fun tp!1900461 () Bool)

(assert (=> b!6902901 (= e!4156927 (and tp!1900460 tp!1900461))))

(declare-fun b!6902902 () Bool)

(declare-fun tp!1900459 () Bool)

(assert (=> b!6902902 (= e!4156927 tp!1900459)))

(assert (=> b!6901979 (= tp!1900300 e!4156927)))

(assert (= (and b!6901979 ((_ is ElementMatch!16867) (regTwo!34246 r2!6280))) b!6902900))

(assert (= (and b!6901979 ((_ is Concat!25712) (regTwo!34246 r2!6280))) b!6902901))

(assert (= (and b!6901979 ((_ is Star!16867) (regTwo!34246 r2!6280))) b!6902902))

(assert (= (and b!6901979 ((_ is Union!16867) (regTwo!34246 r2!6280))) b!6902903))

(declare-fun b!6902904 () Bool)

(declare-fun e!4156928 () Bool)

(assert (=> b!6902904 (= e!4156928 tp_is_empty!42959)))

(declare-fun b!6902907 () Bool)

(declare-fun tp!1900467 () Bool)

(declare-fun tp!1900463 () Bool)

(assert (=> b!6902907 (= e!4156928 (and tp!1900467 tp!1900463))))

(declare-fun b!6902905 () Bool)

(declare-fun tp!1900465 () Bool)

(declare-fun tp!1900466 () Bool)

(assert (=> b!6902905 (= e!4156928 (and tp!1900465 tp!1900466))))

(declare-fun b!6902906 () Bool)

(declare-fun tp!1900464 () Bool)

(assert (=> b!6902906 (= e!4156928 tp!1900464)))

(assert (=> b!6901978 (= tp!1900309 e!4156928)))

(assert (= (and b!6901978 ((_ is ElementMatch!16867) (regOne!34246 r3!135))) b!6902904))

(assert (= (and b!6901978 ((_ is Concat!25712) (regOne!34246 r3!135))) b!6902905))

(assert (= (and b!6901978 ((_ is Star!16867) (regOne!34246 r3!135))) b!6902906))

(assert (= (and b!6901978 ((_ is Union!16867) (regOne!34246 r3!135))) b!6902907))

(declare-fun b!6902908 () Bool)

(declare-fun e!4156929 () Bool)

(assert (=> b!6902908 (= e!4156929 tp_is_empty!42959)))

(declare-fun b!6902911 () Bool)

(declare-fun tp!1900472 () Bool)

(declare-fun tp!1900468 () Bool)

(assert (=> b!6902911 (= e!4156929 (and tp!1900472 tp!1900468))))

(declare-fun b!6902909 () Bool)

(declare-fun tp!1900470 () Bool)

(declare-fun tp!1900471 () Bool)

(assert (=> b!6902909 (= e!4156929 (and tp!1900470 tp!1900471))))

(declare-fun b!6902910 () Bool)

(declare-fun tp!1900469 () Bool)

(assert (=> b!6902910 (= e!4156929 tp!1900469)))

(assert (=> b!6901978 (= tp!1900303 e!4156929)))

(assert (= (and b!6901978 ((_ is ElementMatch!16867) (regTwo!34246 r3!135))) b!6902908))

(assert (= (and b!6901978 ((_ is Concat!25712) (regTwo!34246 r3!135))) b!6902909))

(assert (= (and b!6901978 ((_ is Star!16867) (regTwo!34246 r3!135))) b!6902910))

(assert (= (and b!6901978 ((_ is Union!16867) (regTwo!34246 r3!135))) b!6902911))

(declare-fun b!6902912 () Bool)

(declare-fun e!4156930 () Bool)

(assert (=> b!6902912 (= e!4156930 tp_is_empty!42959)))

(declare-fun b!6902915 () Bool)

(declare-fun tp!1900477 () Bool)

(declare-fun tp!1900473 () Bool)

(assert (=> b!6902915 (= e!4156930 (and tp!1900477 tp!1900473))))

(declare-fun b!6902913 () Bool)

(declare-fun tp!1900475 () Bool)

(declare-fun tp!1900476 () Bool)

(assert (=> b!6902913 (= e!4156930 (and tp!1900475 tp!1900476))))

(declare-fun b!6902914 () Bool)

(declare-fun tp!1900474 () Bool)

(assert (=> b!6902914 (= e!4156930 tp!1900474)))

(assert (=> b!6901973 (= tp!1900308 e!4156930)))

(assert (= (and b!6901973 ((_ is ElementMatch!16867) (regOne!34247 r2!6280))) b!6902912))

(assert (= (and b!6901973 ((_ is Concat!25712) (regOne!34247 r2!6280))) b!6902913))

(assert (= (and b!6901973 ((_ is Star!16867) (regOne!34247 r2!6280))) b!6902914))

(assert (= (and b!6901973 ((_ is Union!16867) (regOne!34247 r2!6280))) b!6902915))

(declare-fun b!6902916 () Bool)

(declare-fun e!4156931 () Bool)

(assert (=> b!6902916 (= e!4156931 tp_is_empty!42959)))

(declare-fun b!6902919 () Bool)

(declare-fun tp!1900482 () Bool)

(declare-fun tp!1900478 () Bool)

(assert (=> b!6902919 (= e!4156931 (and tp!1900482 tp!1900478))))

(declare-fun b!6902917 () Bool)

(declare-fun tp!1900480 () Bool)

(declare-fun tp!1900481 () Bool)

(assert (=> b!6902917 (= e!4156931 (and tp!1900480 tp!1900481))))

(declare-fun b!6902918 () Bool)

(declare-fun tp!1900479 () Bool)

(assert (=> b!6902918 (= e!4156931 tp!1900479)))

(assert (=> b!6901973 (= tp!1900306 e!4156931)))

(assert (= (and b!6901973 ((_ is ElementMatch!16867) (regTwo!34247 r2!6280))) b!6902916))

(assert (= (and b!6901973 ((_ is Concat!25712) (regTwo!34247 r2!6280))) b!6902917))

(assert (= (and b!6901973 ((_ is Star!16867) (regTwo!34247 r2!6280))) b!6902918))

(assert (= (and b!6901973 ((_ is Union!16867) (regTwo!34247 r2!6280))) b!6902919))

(declare-fun b!6902920 () Bool)

(declare-fun e!4156932 () Bool)

(assert (=> b!6902920 (= e!4156932 tp_is_empty!42959)))

(declare-fun b!6902923 () Bool)

(declare-fun tp!1900487 () Bool)

(declare-fun tp!1900483 () Bool)

(assert (=> b!6902923 (= e!4156932 (and tp!1900487 tp!1900483))))

(declare-fun b!6902921 () Bool)

(declare-fun tp!1900485 () Bool)

(declare-fun tp!1900486 () Bool)

(assert (=> b!6902921 (= e!4156932 (and tp!1900485 tp!1900486))))

(declare-fun b!6902922 () Bool)

(declare-fun tp!1900484 () Bool)

(assert (=> b!6902922 (= e!4156932 tp!1900484)))

(assert (=> b!6901989 (= tp!1900298 e!4156932)))

(assert (= (and b!6901989 ((_ is ElementMatch!16867) (reg!17196 r2!6280))) b!6902920))

(assert (= (and b!6901989 ((_ is Concat!25712) (reg!17196 r2!6280))) b!6902921))

(assert (= (and b!6901989 ((_ is Star!16867) (reg!17196 r2!6280))) b!6902922))

(assert (= (and b!6901989 ((_ is Union!16867) (reg!17196 r2!6280))) b!6902923))

(check-sat (not d!2162275) (not b!6902727) (not b!6902721) (not b!6902090) (not d!2162327) (not b!6902906) (not b!6902822) (not b!6902918) (not d!2162335) (not b!6902790) (not b!6902786) (not b!6902791) (not b!6902811) (not bm!627689) (not b!6902913) (not d!2162319) (not bm!627671) (not b!6902874) (not b!6902688) (not b!6902708) (not d!2162293) (not b!6902120) (not b!6902907) (not b!6902755) (not b!6902905) (not b!6902538) (not b!6902513) (not d!2162281) (not b!6902876) (not b!6902860) (not b!6902800) (not b!6902864) (not b!6902911) (not bm!627675) (not b!6902917) (not b!6902865) (not b!6902683) (not b!6902921) (not b!6902667) (not d!2162287) (not b!6902749) (not b!6902829) (not b!6902555) (not bm!627702) (not b!6902903) (not b!6902300) (not b!6902530) (not d!2162299) (not b!6902097) (not b!6902919) (not b!6902902) (not b!6902517) (not b!6902830) (not b!6902767) (not b!6902531) (not b!6902897) (not bm!627686) (not d!2162231) (not b!6902121) (not b!6902709) (not b!6902125) (not b!6902563) (not bm!627704) (not b!6902886) (not d!2162309) (not b!6902861) (not bm!627701) (not d!2162237) (not b!6902757) (not d!2162115) (not d!2162297) (not bm!627712) (not d!2162283) (not d!2162239) (not b!6902527) (not b!6902894) (not d!2162123) (not b!6902250) (not d!2162215) (not b!6902292) (not b!6902836) (not b!6902870) (not b!6902719) (not b!6902798) (not d!2162121) tp_is_empty!42959 (not d!2162289) (not b!6902895) (not b!6902890) (not d!2162295) (not b!6902780) (not b!6902873) (not b!6902086) (not b!6902535) (not bm!627698) (not b!6902680) (not bm!627632) (not b!6902898) (not b!6902723) (not b!6902119) (not d!2162225) (not b!6902878) (not bm!627690) (not b!6902521) (not b!6902785) (not d!2162305) (not b!6902693) (not b!6902818) (not b!6902845) (not b!6902684) (not d!2162301) (not d!2162285) (not bm!627685) (not b!6902872) (not b!6902923) (not b!6902827) (not b!6902094) (not d!2162241) (not d!2162243) (not b!6902868) (not b!6902754) (not b!6902770) (not b!6902575) (not b!6902705) (not b!6902730) (not b!6902373) (not b!6902089) (not b!6902787) (not d!2162187) (not d!2162261) (not bm!627652) (not b!6902117) (not b!6902914) (not d!2162253) (not b!6902759) (not b!6902529) (not b!6902887) (not b!6902899) (not b!6902691) (not d!2162271) (not bm!627674) (not b!6902751) (not d!2162255) (not b!6902866) (not bm!627706) (not b!6902782) (not b!6902893) (not d!2162189) (not b!6902707) (not b!6902901) (not bm!627709) (not bm!627708) (not bm!627636) (not b!6902909) (not b!6902242) (not bm!627658) (not b!6902799) (not b!6902722) (not b!6902668) (not b!6902889) (not bm!627699) (not bm!627653) (not d!2162321) (not bm!627703) (not b!6902910) (not d!2162259) (not b!6902793) (not bm!627714) (not bm!627715) (not b!6902716) (not d!2162325) (not b!6902883) (not b!6902869) (not d!2162235) (not b!6902676) (not b!6902915) (not d!2162303) (not b!6902574) (not bm!627707) (not b!6902824) (not d!2162103) (not bm!627659) (not d!2162311) (not d!2162185) (not d!2162273) (not b!6902801) (not b!6902803) (not b!6902675) (not b!6902885) (not b!6902128) (not b!6902795) (not b!6902682) (not b!6902088) (not b!6902396) (not b!6902788) (not b!6902713) (not b!6902524) (not b!6902828) (not d!2162227) (not d!2162233) (not b!6902515) (not bm!627670) (not b!6902922) (not b!6902862) (not d!2162323) (not b!6902778) (not bm!627711) (not b!6902516) (not b!6902891) (not b!6902701) (not bm!627700) (not d!2162333) (not bm!627705) (not b!6902877) (not bm!627697) (not b!6902756) (not d!2162317))
(check-sat)
