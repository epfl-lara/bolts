; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665018 () Bool)

(assert start!665018)

(declare-fun b!6907258 () Bool)

(assert (=> b!6907258 true))

(assert (=> b!6907258 true))

(assert (=> b!6907258 true))

(declare-fun lambda!392386 () Int)

(declare-fun lambda!392385 () Int)

(assert (=> b!6907258 (not (= lambda!392386 lambda!392385))))

(assert (=> b!6907258 true))

(assert (=> b!6907258 true))

(assert (=> b!6907258 true))

(declare-fun bs!1843871 () Bool)

(declare-fun b!6907264 () Bool)

(assert (= bs!1843871 (and b!6907264 b!6907258)))

(declare-datatypes ((C!34028 0))(
  ( (C!34029 (val!26716 Int)) )
))
(declare-datatypes ((Regex!16879 0))(
  ( (ElementMatch!16879 (c!1283141 C!34028)) (Concat!25724 (regOne!34270 Regex!16879) (regTwo!34270 Regex!16879)) (EmptyExpr!16879) (Star!16879 (reg!17208 Regex!16879)) (EmptyLang!16879) (Union!16879 (regOne!34271 Regex!16879) (regTwo!34271 Regex!16879)) )
))
(declare-fun r1!6342 () Regex!16879)

(declare-fun r3!135 () Regex!16879)

(declare-fun lt!2467776 () Regex!16879)

(declare-datatypes ((List!66636 0))(
  ( (Nil!66512) (Cons!66512 (h!72960 C!34028) (t!380379 List!66636)) )
))
(declare-fun s!14361 () List!66636)

(declare-fun r2!6280 () Regex!16879)

(declare-fun lambda!392387 () Int)

(declare-datatypes ((tuple2!67492 0))(
  ( (tuple2!67493 (_1!37049 List!66636) (_2!37049 List!66636)) )
))
(declare-fun lt!2467767 () tuple2!67492)

(assert (=> bs!1843871 (= (and (= (_1!37049 lt!2467767) s!14361) (= r1!6342 lt!2467776) (= r2!6280 r3!135)) (= lambda!392387 lambda!392385))))

(assert (=> bs!1843871 (not (= lambda!392387 lambda!392386))))

(assert (=> b!6907264 true))

(assert (=> b!6907264 true))

(assert (=> b!6907264 true))

(declare-fun lambda!392388 () Int)

(assert (=> bs!1843871 (not (= lambda!392388 lambda!392385))))

(assert (=> bs!1843871 (= (and (= (_1!37049 lt!2467767) s!14361) (= r1!6342 lt!2467776) (= r2!6280 r3!135)) (= lambda!392388 lambda!392386))))

(assert (=> b!6907264 (not (= lambda!392388 lambda!392387))))

(assert (=> b!6907264 true))

(assert (=> b!6907264 true))

(assert (=> b!6907264 true))

(declare-fun bs!1843872 () Bool)

(declare-fun b!6907251 () Bool)

(assert (= bs!1843872 (and b!6907251 b!6907258)))

(declare-fun lambda!392389 () Int)

(declare-fun lt!2467782 () List!66636)

(assert (=> bs!1843872 (= (and (= lt!2467782 s!14361) (= r2!6280 lt!2467776)) (= lambda!392389 lambda!392385))))

(assert (=> bs!1843872 (not (= lambda!392389 lambda!392386))))

(declare-fun bs!1843873 () Bool)

(assert (= bs!1843873 (and b!6907251 b!6907264)))

(assert (=> bs!1843873 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392389 lambda!392387))))

(assert (=> bs!1843873 (not (= lambda!392389 lambda!392388))))

(assert (=> b!6907251 true))

(assert (=> b!6907251 true))

(assert (=> b!6907251 true))

(declare-fun lambda!392390 () Int)

(assert (=> b!6907251 (not (= lambda!392390 lambda!392389))))

(assert (=> bs!1843873 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392390 lambda!392388))))

(assert (=> bs!1843873 (not (= lambda!392390 lambda!392387))))

(assert (=> bs!1843872 (= (and (= lt!2467782 s!14361) (= r2!6280 lt!2467776)) (= lambda!392390 lambda!392386))))

(assert (=> bs!1843872 (not (= lambda!392390 lambda!392385))))

(assert (=> b!6907251 true))

(assert (=> b!6907251 true))

(assert (=> b!6907251 true))

(declare-fun b!6907248 () Bool)

(declare-fun e!4159031 () Bool)

(declare-fun tp!1901933 () Bool)

(assert (=> b!6907248 (= e!4159031 tp!1901933)))

(declare-fun b!6907249 () Bool)

(declare-fun e!4159029 () Bool)

(declare-fun e!4159026 () Bool)

(assert (=> b!6907249 (= e!4159029 e!4159026)))

(declare-fun res!2816805 () Bool)

(assert (=> b!6907249 (=> res!2816805 e!4159026)))

(declare-fun lt!2467760 () tuple2!67492)

(declare-fun ++!14932 (List!66636 List!66636) List!66636)

(assert (=> b!6907249 (= res!2816805 (not (= (++!14932 (++!14932 (_1!37049 lt!2467760) (_2!37049 lt!2467760)) (_2!37049 lt!2467767)) s!14361)))))

(declare-fun matchRSpec!3942 (Regex!16879 List!66636) Bool)

(assert (=> b!6907249 (matchRSpec!3942 r2!6280 (_2!37049 lt!2467760))))

(declare-datatypes ((Unit!160494 0))(
  ( (Unit!160495) )
))
(declare-fun lt!2467758 () Unit!160494)

(declare-fun mainMatchTheorem!3942 (Regex!16879 List!66636) Unit!160494)

(assert (=> b!6907249 (= lt!2467758 (mainMatchTheorem!3942 r2!6280 (_2!37049 lt!2467760)))))

(assert (=> b!6907249 (matchRSpec!3942 r1!6342 (_1!37049 lt!2467760))))

(declare-fun lt!2467783 () Unit!160494)

(assert (=> b!6907249 (= lt!2467783 (mainMatchTheorem!3942 r1!6342 (_1!37049 lt!2467760)))))

(declare-fun lt!2467768 () Bool)

(assert (=> b!6907251 (= e!4159026 lt!2467768)))

(declare-fun lt!2467775 () Bool)

(assert (=> b!6907251 lt!2467775))

(declare-fun lt!2467774 () Unit!160494)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!70 (Regex!16879 Regex!16879 List!66636 List!66636 List!66636 List!66636 List!66636) Unit!160494)

(assert (=> b!6907251 (= lt!2467774 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!70 r2!6280 r3!135 (_2!37049 lt!2467760) (_2!37049 lt!2467767) lt!2467782 Nil!66512 lt!2467782))))

(declare-fun Exists!3887 (Int) Bool)

(assert (=> b!6907251 (= (Exists!3887 lambda!392389) (Exists!3887 lambda!392390))))

(declare-fun lt!2467773 () Unit!160494)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2360 (Regex!16879 Regex!16879 List!66636) Unit!160494)

(assert (=> b!6907251 (= lt!2467773 (lemmaExistCutMatchRandMatchRSpecEquivalent!2360 r2!6280 r3!135 lt!2467782))))

(assert (=> b!6907251 (= lt!2467775 (Exists!3887 lambda!392389))))

(declare-datatypes ((Option!16658 0))(
  ( (None!16657) (Some!16657 (v!52929 tuple2!67492)) )
))
(declare-fun isDefined!13361 (Option!16658) Bool)

(declare-fun findConcatSeparation!3072 (Regex!16879 Regex!16879 List!66636 List!66636 List!66636) Option!16658)

(assert (=> b!6907251 (= lt!2467775 (isDefined!13361 (findConcatSeparation!3072 r2!6280 r3!135 Nil!66512 lt!2467782 lt!2467782)))))

(declare-fun lt!2467770 () Unit!160494)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2834 (Regex!16879 Regex!16879 List!66636) Unit!160494)

(assert (=> b!6907251 (= lt!2467770 (lemmaFindConcatSeparationEquivalentToExists!2834 r2!6280 r3!135 lt!2467782))))

(declare-fun lt!2467762 () Regex!16879)

(assert (=> b!6907251 (= lt!2467768 (matchRSpec!3942 lt!2467762 lt!2467782))))

(declare-fun matchR!9024 (Regex!16879 List!66636) Bool)

(assert (=> b!6907251 (= lt!2467768 (matchR!9024 lt!2467762 lt!2467782))))

(declare-fun lt!2467779 () Unit!160494)

(assert (=> b!6907251 (= lt!2467779 (mainMatchTheorem!3942 lt!2467762 lt!2467782))))

(assert (=> b!6907251 (= lt!2467782 (++!14932 (_2!37049 lt!2467760) (_2!37049 lt!2467767)))))

(declare-fun b!6907252 () Bool)

(declare-fun e!4159032 () Bool)

(declare-fun tp_is_empty!42983 () Bool)

(assert (=> b!6907252 (= e!4159032 tp_is_empty!42983)))

(declare-fun b!6907253 () Bool)

(declare-fun tp!1901937 () Bool)

(declare-fun tp!1901942 () Bool)

(assert (=> b!6907253 (= e!4159031 (and tp!1901937 tp!1901942))))

(declare-fun b!6907254 () Bool)

(declare-fun res!2816800 () Bool)

(declare-fun e!4159033 () Bool)

(assert (=> b!6907254 (=> (not res!2816800) (not e!4159033))))

(declare-fun validRegex!8587 (Regex!16879) Bool)

(assert (=> b!6907254 (= res!2816800 (validRegex!8587 r2!6280))))

(declare-fun b!6907255 () Bool)

(declare-fun e!4159030 () Bool)

(assert (=> b!6907255 (= e!4159033 (not e!4159030))))

(declare-fun res!2816803 () Bool)

(assert (=> b!6907255 (=> res!2816803 e!4159030)))

(declare-fun lt!2467764 () Bool)

(assert (=> b!6907255 (= res!2816803 (not lt!2467764))))

(declare-fun lt!2467769 () Regex!16879)

(assert (=> b!6907255 (= (matchR!9024 lt!2467769 s!14361) (matchRSpec!3942 lt!2467769 s!14361))))

(declare-fun lt!2467780 () Unit!160494)

(assert (=> b!6907255 (= lt!2467780 (mainMatchTheorem!3942 lt!2467769 s!14361))))

(declare-fun lt!2467763 () Regex!16879)

(assert (=> b!6907255 (= lt!2467764 (matchRSpec!3942 lt!2467763 s!14361))))

(assert (=> b!6907255 (= lt!2467764 (matchR!9024 lt!2467763 s!14361))))

(declare-fun lt!2467772 () Unit!160494)

(assert (=> b!6907255 (= lt!2467772 (mainMatchTheorem!3942 lt!2467763 s!14361))))

(assert (=> b!6907255 (= lt!2467769 (Concat!25724 r1!6342 lt!2467762))))

(assert (=> b!6907255 (= lt!2467762 (Concat!25724 r2!6280 r3!135))))

(assert (=> b!6907255 (= lt!2467763 (Concat!25724 lt!2467776 r3!135))))

(assert (=> b!6907255 (= lt!2467776 (Concat!25724 r1!6342 r2!6280))))

(declare-fun b!6907256 () Bool)

(declare-fun tp!1901932 () Bool)

(declare-fun tp!1901936 () Bool)

(assert (=> b!6907256 (= e!4159032 (and tp!1901932 tp!1901936))))

(declare-fun b!6907257 () Bool)

(declare-fun e!4159027 () Bool)

(declare-fun tp!1901940 () Bool)

(declare-fun tp!1901928 () Bool)

(assert (=> b!6907257 (= e!4159027 (and tp!1901940 tp!1901928))))

(declare-fun e!4159028 () Bool)

(assert (=> b!6907258 (= e!4159030 e!4159028)))

(declare-fun res!2816798 () Bool)

(assert (=> b!6907258 (=> res!2816798 e!4159028)))

(declare-fun lt!2467771 () Bool)

(assert (=> b!6907258 (= res!2816798 (not lt!2467771))))

(assert (=> b!6907258 (= lt!2467771 (matchRSpec!3942 lt!2467776 (_1!37049 lt!2467767)))))

(assert (=> b!6907258 (= lt!2467771 (matchR!9024 lt!2467776 (_1!37049 lt!2467767)))))

(declare-fun lt!2467777 () Unit!160494)

(assert (=> b!6907258 (= lt!2467777 (mainMatchTheorem!3942 lt!2467776 (_1!37049 lt!2467767)))))

(declare-fun lt!2467778 () Option!16658)

(declare-fun get!23269 (Option!16658) tuple2!67492)

(assert (=> b!6907258 (= lt!2467767 (get!23269 lt!2467778))))

(assert (=> b!6907258 (= (Exists!3887 lambda!392385) (Exists!3887 lambda!392386))))

(declare-fun lt!2467781 () Unit!160494)

(assert (=> b!6907258 (= lt!2467781 (lemmaExistCutMatchRandMatchRSpecEquivalent!2360 lt!2467776 r3!135 s!14361))))

(assert (=> b!6907258 (= (isDefined!13361 lt!2467778) (Exists!3887 lambda!392385))))

(assert (=> b!6907258 (= lt!2467778 (findConcatSeparation!3072 lt!2467776 r3!135 Nil!66512 s!14361 s!14361))))

(declare-fun lt!2467765 () Unit!160494)

(assert (=> b!6907258 (= lt!2467765 (lemmaFindConcatSeparationEquivalentToExists!2834 lt!2467776 r3!135 s!14361))))

(declare-fun b!6907259 () Bool)

(declare-fun tp!1901938 () Bool)

(declare-fun tp!1901934 () Bool)

(assert (=> b!6907259 (= e!4159032 (and tp!1901938 tp!1901934))))

(declare-fun b!6907260 () Bool)

(declare-fun tp!1901931 () Bool)

(assert (=> b!6907260 (= e!4159032 tp!1901931)))

(declare-fun b!6907261 () Bool)

(declare-fun tp!1901941 () Bool)

(declare-fun tp!1901939 () Bool)

(assert (=> b!6907261 (= e!4159031 (and tp!1901941 tp!1901939))))

(declare-fun b!6907262 () Bool)

(declare-fun tp!1901930 () Bool)

(assert (=> b!6907262 (= e!4159027 tp!1901930)))

(declare-fun res!2816801 () Bool)

(assert (=> start!665018 (=> (not res!2816801) (not e!4159033))))

(assert (=> start!665018 (= res!2816801 (validRegex!8587 r1!6342))))

(assert (=> start!665018 e!4159033))

(assert (=> start!665018 e!4159027))

(assert (=> start!665018 e!4159031))

(assert (=> start!665018 e!4159032))

(declare-fun e!4159034 () Bool)

(assert (=> start!665018 e!4159034))

(declare-fun b!6907250 () Bool)

(declare-fun res!2816802 () Bool)

(assert (=> b!6907250 (=> res!2816802 e!4159029)))

(assert (=> b!6907250 (= res!2816802 (not (matchR!9024 r2!6280 (_2!37049 lt!2467760))))))

(declare-fun b!6907263 () Bool)

(declare-fun res!2816806 () Bool)

(assert (=> b!6907263 (=> res!2816806 e!4159028)))

(assert (=> b!6907263 (= res!2816806 (not (matchR!9024 r3!135 (_2!37049 lt!2467767))))))

(assert (=> b!6907264 (= e!4159028 e!4159029)))

(declare-fun res!2816799 () Bool)

(assert (=> b!6907264 (=> res!2816799 e!4159029)))

(assert (=> b!6907264 (= res!2816799 (not (matchR!9024 r1!6342 (_1!37049 lt!2467760))))))

(declare-fun lt!2467766 () Option!16658)

(assert (=> b!6907264 (= lt!2467760 (get!23269 lt!2467766))))

(assert (=> b!6907264 (= (Exists!3887 lambda!392387) (Exists!3887 lambda!392388))))

(declare-fun lt!2467759 () Unit!160494)

(assert (=> b!6907264 (= lt!2467759 (lemmaExistCutMatchRandMatchRSpecEquivalent!2360 r1!6342 r2!6280 (_1!37049 lt!2467767)))))

(assert (=> b!6907264 (= (isDefined!13361 lt!2467766) (Exists!3887 lambda!392387))))

(assert (=> b!6907264 (= lt!2467766 (findConcatSeparation!3072 r1!6342 r2!6280 Nil!66512 (_1!37049 lt!2467767) (_1!37049 lt!2467767)))))

(declare-fun lt!2467761 () Unit!160494)

(assert (=> b!6907264 (= lt!2467761 (lemmaFindConcatSeparationEquivalentToExists!2834 r1!6342 r2!6280 (_1!37049 lt!2467767)))))

(declare-fun b!6907265 () Bool)

(declare-fun tp!1901929 () Bool)

(declare-fun tp!1901935 () Bool)

(assert (=> b!6907265 (= e!4159027 (and tp!1901929 tp!1901935))))

(declare-fun b!6907266 () Bool)

(declare-fun tp!1901943 () Bool)

(assert (=> b!6907266 (= e!4159034 (and tp_is_empty!42983 tp!1901943))))

(declare-fun b!6907267 () Bool)

(declare-fun res!2816804 () Bool)

(assert (=> b!6907267 (=> (not res!2816804) (not e!4159033))))

(assert (=> b!6907267 (= res!2816804 (validRegex!8587 r3!135))))

(declare-fun b!6907268 () Bool)

(assert (=> b!6907268 (= e!4159031 tp_is_empty!42983)))

(declare-fun b!6907269 () Bool)

(assert (=> b!6907269 (= e!4159027 tp_is_empty!42983)))

(assert (= (and start!665018 res!2816801) b!6907254))

(assert (= (and b!6907254 res!2816800) b!6907267))

(assert (= (and b!6907267 res!2816804) b!6907255))

(assert (= (and b!6907255 (not res!2816803)) b!6907258))

(assert (= (and b!6907258 (not res!2816798)) b!6907263))

(assert (= (and b!6907263 (not res!2816806)) b!6907264))

(assert (= (and b!6907264 (not res!2816799)) b!6907250))

(assert (= (and b!6907250 (not res!2816802)) b!6907249))

(assert (= (and b!6907249 (not res!2816805)) b!6907251))

(get-info :version)

(assert (= (and start!665018 ((_ is ElementMatch!16879) r1!6342)) b!6907269))

(assert (= (and start!665018 ((_ is Concat!25724) r1!6342)) b!6907257))

(assert (= (and start!665018 ((_ is Star!16879) r1!6342)) b!6907262))

(assert (= (and start!665018 ((_ is Union!16879) r1!6342)) b!6907265))

(assert (= (and start!665018 ((_ is ElementMatch!16879) r2!6280)) b!6907268))

(assert (= (and start!665018 ((_ is Concat!25724) r2!6280)) b!6907253))

(assert (= (and start!665018 ((_ is Star!16879) r2!6280)) b!6907248))

(assert (= (and start!665018 ((_ is Union!16879) r2!6280)) b!6907261))

(assert (= (and start!665018 ((_ is ElementMatch!16879) r3!135)) b!6907252))

(assert (= (and start!665018 ((_ is Concat!25724) r3!135)) b!6907259))

(assert (= (and start!665018 ((_ is Star!16879) r3!135)) b!6907260))

(assert (= (and start!665018 ((_ is Union!16879) r3!135)) b!6907256))

(assert (= (and start!665018 ((_ is Cons!66512) s!14361)) b!6907266))

(declare-fun m!7623260 () Bool)

(assert (=> b!6907255 m!7623260))

(declare-fun m!7623262 () Bool)

(assert (=> b!6907255 m!7623262))

(declare-fun m!7623264 () Bool)

(assert (=> b!6907255 m!7623264))

(declare-fun m!7623266 () Bool)

(assert (=> b!6907255 m!7623266))

(declare-fun m!7623268 () Bool)

(assert (=> b!6907255 m!7623268))

(declare-fun m!7623270 () Bool)

(assert (=> b!6907255 m!7623270))

(declare-fun m!7623272 () Bool)

(assert (=> b!6907267 m!7623272))

(declare-fun m!7623274 () Bool)

(assert (=> b!6907254 m!7623274))

(declare-fun m!7623276 () Bool)

(assert (=> b!6907263 m!7623276))

(declare-fun m!7623278 () Bool)

(assert (=> start!665018 m!7623278))

(declare-fun m!7623280 () Bool)

(assert (=> b!6907251 m!7623280))

(declare-fun m!7623282 () Bool)

(assert (=> b!6907251 m!7623282))

(declare-fun m!7623284 () Bool)

(assert (=> b!6907251 m!7623284))

(declare-fun m!7623286 () Bool)

(assert (=> b!6907251 m!7623286))

(declare-fun m!7623288 () Bool)

(assert (=> b!6907251 m!7623288))

(declare-fun m!7623290 () Bool)

(assert (=> b!6907251 m!7623290))

(declare-fun m!7623292 () Bool)

(assert (=> b!6907251 m!7623292))

(declare-fun m!7623294 () Bool)

(assert (=> b!6907251 m!7623294))

(declare-fun m!7623296 () Bool)

(assert (=> b!6907251 m!7623296))

(declare-fun m!7623298 () Bool)

(assert (=> b!6907251 m!7623298))

(declare-fun m!7623300 () Bool)

(assert (=> b!6907251 m!7623300))

(assert (=> b!6907251 m!7623284))

(assert (=> b!6907251 m!7623292))

(declare-fun m!7623302 () Bool)

(assert (=> b!6907264 m!7623302))

(declare-fun m!7623304 () Bool)

(assert (=> b!6907264 m!7623304))

(declare-fun m!7623306 () Bool)

(assert (=> b!6907264 m!7623306))

(declare-fun m!7623308 () Bool)

(assert (=> b!6907264 m!7623308))

(assert (=> b!6907264 m!7623304))

(declare-fun m!7623310 () Bool)

(assert (=> b!6907264 m!7623310))

(declare-fun m!7623312 () Bool)

(assert (=> b!6907264 m!7623312))

(declare-fun m!7623314 () Bool)

(assert (=> b!6907264 m!7623314))

(declare-fun m!7623316 () Bool)

(assert (=> b!6907264 m!7623316))

(declare-fun m!7623318 () Bool)

(assert (=> b!6907249 m!7623318))

(declare-fun m!7623320 () Bool)

(assert (=> b!6907249 m!7623320))

(declare-fun m!7623322 () Bool)

(assert (=> b!6907249 m!7623322))

(assert (=> b!6907249 m!7623320))

(declare-fun m!7623324 () Bool)

(assert (=> b!6907249 m!7623324))

(declare-fun m!7623326 () Bool)

(assert (=> b!6907249 m!7623326))

(declare-fun m!7623328 () Bool)

(assert (=> b!6907249 m!7623328))

(declare-fun m!7623330 () Bool)

(assert (=> b!6907250 m!7623330))

(declare-fun m!7623332 () Bool)

(assert (=> b!6907258 m!7623332))

(declare-fun m!7623334 () Bool)

(assert (=> b!6907258 m!7623334))

(declare-fun m!7623336 () Bool)

(assert (=> b!6907258 m!7623336))

(declare-fun m!7623338 () Bool)

(assert (=> b!6907258 m!7623338))

(assert (=> b!6907258 m!7623336))

(declare-fun m!7623340 () Bool)

(assert (=> b!6907258 m!7623340))

(declare-fun m!7623342 () Bool)

(assert (=> b!6907258 m!7623342))

(declare-fun m!7623344 () Bool)

(assert (=> b!6907258 m!7623344))

(declare-fun m!7623346 () Bool)

(assert (=> b!6907258 m!7623346))

(declare-fun m!7623348 () Bool)

(assert (=> b!6907258 m!7623348))

(declare-fun m!7623350 () Bool)

(assert (=> b!6907258 m!7623350))

(check-sat (not b!6907258) (not b!6907256) (not b!6907265) (not b!6907253) (not b!6907250) tp_is_empty!42983 (not b!6907251) (not b!6907248) (not b!6907257) (not b!6907255) (not b!6907262) (not b!6907254) (not b!6907260) (not b!6907264) (not start!665018) (not b!6907263) (not b!6907249) (not b!6907266) (not b!6907259) (not b!6907267) (not b!6907261))
(check-sat)
(get-model)

(declare-fun b!6907294 () Bool)

(declare-fun e!4159049 () Bool)

(declare-fun call!628056 () Bool)

(assert (=> b!6907294 (= e!4159049 call!628056)))

(declare-fun bm!628049 () Bool)

(declare-fun c!1283147 () Bool)

(assert (=> bm!628049 (= call!628056 (validRegex!8587 (ite c!1283147 (regOne!34271 r2!6280) (regTwo!34270 r2!6280))))))

(declare-fun b!6907295 () Bool)

(declare-fun e!4159055 () Bool)

(declare-fun call!628054 () Bool)

(assert (=> b!6907295 (= e!4159055 call!628054)))

(declare-fun c!1283146 () Bool)

(declare-fun bm!628050 () Bool)

(assert (=> bm!628050 (= call!628054 (validRegex!8587 (ite c!1283146 (reg!17208 r2!6280) (ite c!1283147 (regTwo!34271 r2!6280) (regOne!34270 r2!6280)))))))

(declare-fun b!6907296 () Bool)

(declare-fun e!4159053 () Bool)

(declare-fun e!4159051 () Bool)

(assert (=> b!6907296 (= e!4159053 e!4159051)))

(assert (=> b!6907296 (= c!1283147 ((_ is Union!16879) r2!6280))))

(declare-fun b!6907297 () Bool)

(declare-fun e!4159050 () Bool)

(declare-fun call!628055 () Bool)

(assert (=> b!6907297 (= e!4159050 call!628055)))

(declare-fun b!6907299 () Bool)

(declare-fun e!4159054 () Bool)

(assert (=> b!6907299 (= e!4159054 e!4159049)))

(declare-fun res!2816821 () Bool)

(assert (=> b!6907299 (=> (not res!2816821) (not e!4159049))))

(assert (=> b!6907299 (= res!2816821 call!628055)))

(declare-fun b!6907300 () Bool)

(declare-fun e!4159052 () Bool)

(assert (=> b!6907300 (= e!4159052 e!4159053)))

(assert (=> b!6907300 (= c!1283146 ((_ is Star!16879) r2!6280))))

(declare-fun b!6907301 () Bool)

(declare-fun res!2816818 () Bool)

(assert (=> b!6907301 (=> res!2816818 e!4159054)))

(assert (=> b!6907301 (= res!2816818 (not ((_ is Concat!25724) r2!6280)))))

(assert (=> b!6907301 (= e!4159051 e!4159054)))

(declare-fun b!6907302 () Bool)

(declare-fun res!2816819 () Bool)

(assert (=> b!6907302 (=> (not res!2816819) (not e!4159050))))

(assert (=> b!6907302 (= res!2816819 call!628056)))

(assert (=> b!6907302 (= e!4159051 e!4159050)))

(declare-fun bm!628051 () Bool)

(assert (=> bm!628051 (= call!628055 call!628054)))

(declare-fun b!6907298 () Bool)

(assert (=> b!6907298 (= e!4159053 e!4159055)))

(declare-fun res!2816820 () Bool)

(declare-fun nullable!6719 (Regex!16879) Bool)

(assert (=> b!6907298 (= res!2816820 (not (nullable!6719 (reg!17208 r2!6280))))))

(assert (=> b!6907298 (=> (not res!2816820) (not e!4159055))))

(declare-fun d!2162871 () Bool)

(declare-fun res!2816817 () Bool)

(assert (=> d!2162871 (=> res!2816817 e!4159052)))

(assert (=> d!2162871 (= res!2816817 ((_ is ElementMatch!16879) r2!6280))))

(assert (=> d!2162871 (= (validRegex!8587 r2!6280) e!4159052)))

(assert (= (and d!2162871 (not res!2816817)) b!6907300))

(assert (= (and b!6907300 c!1283146) b!6907298))

(assert (= (and b!6907300 (not c!1283146)) b!6907296))

(assert (= (and b!6907298 res!2816820) b!6907295))

(assert (= (and b!6907296 c!1283147) b!6907302))

(assert (= (and b!6907296 (not c!1283147)) b!6907301))

(assert (= (and b!6907302 res!2816819) b!6907297))

(assert (= (and b!6907301 (not res!2816818)) b!6907299))

(assert (= (and b!6907299 res!2816821) b!6907294))

(assert (= (or b!6907302 b!6907294) bm!628049))

(assert (= (or b!6907297 b!6907299) bm!628051))

(assert (= (or b!6907295 bm!628051) bm!628050))

(declare-fun m!7623352 () Bool)

(assert (=> bm!628049 m!7623352))

(declare-fun m!7623354 () Bool)

(assert (=> bm!628050 m!7623354))

(declare-fun m!7623356 () Bool)

(assert (=> b!6907298 m!7623356))

(assert (=> b!6907254 d!2162871))

(declare-fun d!2162873 () Bool)

(assert (=> d!2162873 (= (matchR!9024 r2!6280 (_2!37049 lt!2467760)) (matchRSpec!3942 r2!6280 (_2!37049 lt!2467760)))))

(declare-fun lt!2467786 () Unit!160494)

(declare-fun choose!51436 (Regex!16879 List!66636) Unit!160494)

(assert (=> d!2162873 (= lt!2467786 (choose!51436 r2!6280 (_2!37049 lt!2467760)))))

(assert (=> d!2162873 (validRegex!8587 r2!6280)))

(assert (=> d!2162873 (= (mainMatchTheorem!3942 r2!6280 (_2!37049 lt!2467760)) lt!2467786)))

(declare-fun bs!1843874 () Bool)

(assert (= bs!1843874 d!2162873))

(assert (=> bs!1843874 m!7623330))

(assert (=> bs!1843874 m!7623328))

(declare-fun m!7623358 () Bool)

(assert (=> bs!1843874 m!7623358))

(assert (=> bs!1843874 m!7623274))

(assert (=> b!6907249 d!2162873))

(declare-fun b!6907313 () Bool)

(declare-fun res!2816827 () Bool)

(declare-fun e!4159060 () Bool)

(assert (=> b!6907313 (=> (not res!2816827) (not e!4159060))))

(declare-fun lt!2467789 () List!66636)

(declare-fun size!40762 (List!66636) Int)

(assert (=> b!6907313 (= res!2816827 (= (size!40762 lt!2467789) (+ (size!40762 (_1!37049 lt!2467760)) (size!40762 (_2!37049 lt!2467760)))))))

(declare-fun b!6907311 () Bool)

(declare-fun e!4159061 () List!66636)

(assert (=> b!6907311 (= e!4159061 (_2!37049 lt!2467760))))

(declare-fun d!2162875 () Bool)

(assert (=> d!2162875 e!4159060))

(declare-fun res!2816826 () Bool)

(assert (=> d!2162875 (=> (not res!2816826) (not e!4159060))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13065 (List!66636) (InoxSet C!34028))

(assert (=> d!2162875 (= res!2816826 (= (content!13065 lt!2467789) ((_ map or) (content!13065 (_1!37049 lt!2467760)) (content!13065 (_2!37049 lt!2467760)))))))

(assert (=> d!2162875 (= lt!2467789 e!4159061)))

(declare-fun c!1283150 () Bool)

(assert (=> d!2162875 (= c!1283150 ((_ is Nil!66512) (_1!37049 lt!2467760)))))

(assert (=> d!2162875 (= (++!14932 (_1!37049 lt!2467760) (_2!37049 lt!2467760)) lt!2467789)))

(declare-fun b!6907314 () Bool)

(assert (=> b!6907314 (= e!4159060 (or (not (= (_2!37049 lt!2467760) Nil!66512)) (= lt!2467789 (_1!37049 lt!2467760))))))

(declare-fun b!6907312 () Bool)

(assert (=> b!6907312 (= e!4159061 (Cons!66512 (h!72960 (_1!37049 lt!2467760)) (++!14932 (t!380379 (_1!37049 lt!2467760)) (_2!37049 lt!2467760))))))

(assert (= (and d!2162875 c!1283150) b!6907311))

(assert (= (and d!2162875 (not c!1283150)) b!6907312))

(assert (= (and d!2162875 res!2816826) b!6907313))

(assert (= (and b!6907313 res!2816827) b!6907314))

(declare-fun m!7623360 () Bool)

(assert (=> b!6907313 m!7623360))

(declare-fun m!7623362 () Bool)

(assert (=> b!6907313 m!7623362))

(declare-fun m!7623364 () Bool)

(assert (=> b!6907313 m!7623364))

(declare-fun m!7623366 () Bool)

(assert (=> d!2162875 m!7623366))

(declare-fun m!7623368 () Bool)

(assert (=> d!2162875 m!7623368))

(declare-fun m!7623370 () Bool)

(assert (=> d!2162875 m!7623370))

(declare-fun m!7623372 () Bool)

(assert (=> b!6907312 m!7623372))

(assert (=> b!6907249 d!2162875))

(declare-fun bs!1843875 () Bool)

(declare-fun b!6907350 () Bool)

(assert (= bs!1843875 (and b!6907350 b!6907251)))

(declare-fun lambda!392395 () Int)

(assert (=> bs!1843875 (not (= lambda!392395 lambda!392389))))

(declare-fun bs!1843876 () Bool)

(assert (= bs!1843876 (and b!6907350 b!6907264)))

(assert (=> bs!1843876 (not (= lambda!392395 lambda!392388))))

(assert (=> bs!1843876 (not (= lambda!392395 lambda!392387))))

(declare-fun bs!1843877 () Bool)

(assert (= bs!1843877 (and b!6907350 b!6907258)))

(assert (=> bs!1843877 (not (= lambda!392395 lambda!392386))))

(assert (=> bs!1843877 (not (= lambda!392395 lambda!392385))))

(assert (=> bs!1843875 (not (= lambda!392395 lambda!392390))))

(assert (=> b!6907350 true))

(assert (=> b!6907350 true))

(declare-fun bs!1843878 () Bool)

(declare-fun b!6907353 () Bool)

(assert (= bs!1843878 (and b!6907353 b!6907251)))

(declare-fun lambda!392396 () Int)

(assert (=> bs!1843878 (not (= lambda!392396 lambda!392389))))

(declare-fun bs!1843879 () Bool)

(assert (= bs!1843879 (and b!6907353 b!6907264)))

(assert (=> bs!1843879 (= (and (= (_1!37049 lt!2467760) (_1!37049 lt!2467767)) (= (regOne!34270 r1!6342) r1!6342) (= (regTwo!34270 r1!6342) r2!6280)) (= lambda!392396 lambda!392388))))

(assert (=> bs!1843879 (not (= lambda!392396 lambda!392387))))

(declare-fun bs!1843880 () Bool)

(assert (= bs!1843880 (and b!6907353 b!6907258)))

(assert (=> bs!1843880 (= (and (= (_1!37049 lt!2467760) s!14361) (= (regOne!34270 r1!6342) lt!2467776) (= (regTwo!34270 r1!6342) r3!135)) (= lambda!392396 lambda!392386))))

(assert (=> bs!1843880 (not (= lambda!392396 lambda!392385))))

(declare-fun bs!1843881 () Bool)

(assert (= bs!1843881 (and b!6907353 b!6907350)))

(assert (=> bs!1843881 (not (= lambda!392396 lambda!392395))))

(assert (=> bs!1843878 (= (and (= (_1!37049 lt!2467760) lt!2467782) (= (regOne!34270 r1!6342) r2!6280) (= (regTwo!34270 r1!6342) r3!135)) (= lambda!392396 lambda!392390))))

(assert (=> b!6907353 true))

(assert (=> b!6907353 true))

(declare-fun b!6907347 () Bool)

(declare-fun e!4159081 () Bool)

(assert (=> b!6907347 (= e!4159081 (= (_1!37049 lt!2467760) (Cons!66512 (c!1283141 r1!6342) Nil!66512)))))

(declare-fun b!6907348 () Bool)

(declare-fun res!2816846 () Bool)

(declare-fun e!4159083 () Bool)

(assert (=> b!6907348 (=> res!2816846 e!4159083)))

(declare-fun call!628061 () Bool)

(assert (=> b!6907348 (= res!2816846 call!628061)))

(declare-fun e!4159082 () Bool)

(assert (=> b!6907348 (= e!4159082 e!4159083)))

(declare-fun b!6907349 () Bool)

(declare-fun e!4159084 () Bool)

(assert (=> b!6907349 (= e!4159084 call!628061)))

(declare-fun b!6907351 () Bool)

(declare-fun e!4159085 () Bool)

(assert (=> b!6907351 (= e!4159085 e!4159082)))

(declare-fun c!1283159 () Bool)

(assert (=> b!6907351 (= c!1283159 ((_ is Star!16879) r1!6342))))

(declare-fun bm!628056 () Bool)

(declare-fun isEmpty!38752 (List!66636) Bool)

(assert (=> bm!628056 (= call!628061 (isEmpty!38752 (_1!37049 lt!2467760)))))

(declare-fun call!628062 () Bool)

(assert (=> b!6907350 (= e!4159083 call!628062)))

(declare-fun d!2162877 () Bool)

(declare-fun c!1283161 () Bool)

(assert (=> d!2162877 (= c!1283161 ((_ is EmptyExpr!16879) r1!6342))))

(assert (=> d!2162877 (= (matchRSpec!3942 r1!6342 (_1!37049 lt!2467760)) e!4159084)))

(declare-fun bm!628057 () Bool)

(assert (=> bm!628057 (= call!628062 (Exists!3887 (ite c!1283159 lambda!392395 lambda!392396)))))

(declare-fun b!6907352 () Bool)

(declare-fun e!4159080 () Bool)

(assert (=> b!6907352 (= e!4159085 e!4159080)))

(declare-fun res!2816845 () Bool)

(assert (=> b!6907352 (= res!2816845 (matchRSpec!3942 (regOne!34271 r1!6342) (_1!37049 lt!2467760)))))

(assert (=> b!6907352 (=> res!2816845 e!4159080)))

(assert (=> b!6907353 (= e!4159082 call!628062)))

(declare-fun b!6907354 () Bool)

(declare-fun c!1283160 () Bool)

(assert (=> b!6907354 (= c!1283160 ((_ is Union!16879) r1!6342))))

(assert (=> b!6907354 (= e!4159081 e!4159085)))

(declare-fun b!6907355 () Bool)

(assert (=> b!6907355 (= e!4159080 (matchRSpec!3942 (regTwo!34271 r1!6342) (_1!37049 lt!2467760)))))

(declare-fun b!6907356 () Bool)

(declare-fun e!4159086 () Bool)

(assert (=> b!6907356 (= e!4159084 e!4159086)))

(declare-fun res!2816844 () Bool)

(assert (=> b!6907356 (= res!2816844 (not ((_ is EmptyLang!16879) r1!6342)))))

(assert (=> b!6907356 (=> (not res!2816844) (not e!4159086))))

(declare-fun b!6907357 () Bool)

(declare-fun c!1283162 () Bool)

(assert (=> b!6907357 (= c!1283162 ((_ is ElementMatch!16879) r1!6342))))

(assert (=> b!6907357 (= e!4159086 e!4159081)))

(assert (= (and d!2162877 c!1283161) b!6907349))

(assert (= (and d!2162877 (not c!1283161)) b!6907356))

(assert (= (and b!6907356 res!2816844) b!6907357))

(assert (= (and b!6907357 c!1283162) b!6907347))

(assert (= (and b!6907357 (not c!1283162)) b!6907354))

(assert (= (and b!6907354 c!1283160) b!6907352))

(assert (= (and b!6907354 (not c!1283160)) b!6907351))

(assert (= (and b!6907352 (not res!2816845)) b!6907355))

(assert (= (and b!6907351 c!1283159) b!6907348))

(assert (= (and b!6907351 (not c!1283159)) b!6907353))

(assert (= (and b!6907348 (not res!2816846)) b!6907350))

(assert (= (or b!6907350 b!6907353) bm!628057))

(assert (= (or b!6907349 b!6907348) bm!628056))

(declare-fun m!7623374 () Bool)

(assert (=> bm!628056 m!7623374))

(declare-fun m!7623376 () Bool)

(assert (=> bm!628057 m!7623376))

(declare-fun m!7623378 () Bool)

(assert (=> b!6907352 m!7623378))

(declare-fun m!7623380 () Bool)

(assert (=> b!6907355 m!7623380))

(assert (=> b!6907249 d!2162877))

(declare-fun b!6907372 () Bool)

(declare-fun res!2816852 () Bool)

(declare-fun e!4159093 () Bool)

(assert (=> b!6907372 (=> (not res!2816852) (not e!4159093))))

(declare-fun lt!2467790 () List!66636)

(assert (=> b!6907372 (= res!2816852 (= (size!40762 lt!2467790) (+ (size!40762 (++!14932 (_1!37049 lt!2467760) (_2!37049 lt!2467760))) (size!40762 (_2!37049 lt!2467767)))))))

(declare-fun b!6907370 () Bool)

(declare-fun e!4159095 () List!66636)

(assert (=> b!6907370 (= e!4159095 (_2!37049 lt!2467767))))

(declare-fun d!2162881 () Bool)

(assert (=> d!2162881 e!4159093))

(declare-fun res!2816851 () Bool)

(assert (=> d!2162881 (=> (not res!2816851) (not e!4159093))))

(assert (=> d!2162881 (= res!2816851 (= (content!13065 lt!2467790) ((_ map or) (content!13065 (++!14932 (_1!37049 lt!2467760) (_2!37049 lt!2467760))) (content!13065 (_2!37049 lt!2467767)))))))

(assert (=> d!2162881 (= lt!2467790 e!4159095)))

(declare-fun c!1283165 () Bool)

(assert (=> d!2162881 (= c!1283165 ((_ is Nil!66512) (++!14932 (_1!37049 lt!2467760) (_2!37049 lt!2467760))))))

(assert (=> d!2162881 (= (++!14932 (++!14932 (_1!37049 lt!2467760) (_2!37049 lt!2467760)) (_2!37049 lt!2467767)) lt!2467790)))

(declare-fun b!6907373 () Bool)

(assert (=> b!6907373 (= e!4159093 (or (not (= (_2!37049 lt!2467767) Nil!66512)) (= lt!2467790 (++!14932 (_1!37049 lt!2467760) (_2!37049 lt!2467760)))))))

(declare-fun b!6907371 () Bool)

(assert (=> b!6907371 (= e!4159095 (Cons!66512 (h!72960 (++!14932 (_1!37049 lt!2467760) (_2!37049 lt!2467760))) (++!14932 (t!380379 (++!14932 (_1!37049 lt!2467760) (_2!37049 lt!2467760))) (_2!37049 lt!2467767))))))

(assert (= (and d!2162881 c!1283165) b!6907370))

(assert (= (and d!2162881 (not c!1283165)) b!6907371))

(assert (= (and d!2162881 res!2816851) b!6907372))

(assert (= (and b!6907372 res!2816852) b!6907373))

(declare-fun m!7623382 () Bool)

(assert (=> b!6907372 m!7623382))

(assert (=> b!6907372 m!7623320))

(declare-fun m!7623384 () Bool)

(assert (=> b!6907372 m!7623384))

(declare-fun m!7623386 () Bool)

(assert (=> b!6907372 m!7623386))

(declare-fun m!7623388 () Bool)

(assert (=> d!2162881 m!7623388))

(assert (=> d!2162881 m!7623320))

(declare-fun m!7623390 () Bool)

(assert (=> d!2162881 m!7623390))

(declare-fun m!7623392 () Bool)

(assert (=> d!2162881 m!7623392))

(declare-fun m!7623394 () Bool)

(assert (=> b!6907371 m!7623394))

(assert (=> b!6907249 d!2162881))

(declare-fun bs!1843882 () Bool)

(declare-fun b!6907383 () Bool)

(assert (= bs!1843882 (and b!6907383 b!6907251)))

(declare-fun lambda!392397 () Int)

(assert (=> bs!1843882 (not (= lambda!392397 lambda!392389))))

(declare-fun bs!1843883 () Bool)

(assert (= bs!1843883 (and b!6907383 b!6907264)))

(assert (=> bs!1843883 (not (= lambda!392397 lambda!392388))))

(assert (=> bs!1843883 (not (= lambda!392397 lambda!392387))))

(declare-fun bs!1843884 () Bool)

(assert (= bs!1843884 (and b!6907383 b!6907258)))

(assert (=> bs!1843884 (not (= lambda!392397 lambda!392386))))

(assert (=> bs!1843884 (not (= lambda!392397 lambda!392385))))

(declare-fun bs!1843885 () Bool)

(assert (= bs!1843885 (and b!6907383 b!6907350)))

(assert (=> bs!1843885 (= (and (= (_2!37049 lt!2467760) (_1!37049 lt!2467760)) (= (reg!17208 r2!6280) (reg!17208 r1!6342)) (= r2!6280 r1!6342)) (= lambda!392397 lambda!392395))))

(assert (=> bs!1843882 (not (= lambda!392397 lambda!392390))))

(declare-fun bs!1843886 () Bool)

(assert (= bs!1843886 (and b!6907383 b!6907353)))

(assert (=> bs!1843886 (not (= lambda!392397 lambda!392396))))

(assert (=> b!6907383 true))

(assert (=> b!6907383 true))

(declare-fun bs!1843887 () Bool)

(declare-fun b!6907386 () Bool)

(assert (= bs!1843887 (and b!6907386 b!6907251)))

(declare-fun lambda!392398 () Int)

(assert (=> bs!1843887 (not (= lambda!392398 lambda!392389))))

(declare-fun bs!1843888 () Bool)

(assert (= bs!1843888 (and b!6907386 b!6907264)))

(assert (=> bs!1843888 (= (and (= (_2!37049 lt!2467760) (_1!37049 lt!2467767)) (= (regOne!34270 r2!6280) r1!6342) (= (regTwo!34270 r2!6280) r2!6280)) (= lambda!392398 lambda!392388))))

(assert (=> bs!1843888 (not (= lambda!392398 lambda!392387))))

(declare-fun bs!1843889 () Bool)

(assert (= bs!1843889 (and b!6907386 b!6907258)))

(assert (=> bs!1843889 (= (and (= (_2!37049 lt!2467760) s!14361) (= (regOne!34270 r2!6280) lt!2467776) (= (regTwo!34270 r2!6280) r3!135)) (= lambda!392398 lambda!392386))))

(assert (=> bs!1843889 (not (= lambda!392398 lambda!392385))))

(assert (=> bs!1843887 (= (and (= (_2!37049 lt!2467760) lt!2467782) (= (regOne!34270 r2!6280) r2!6280) (= (regTwo!34270 r2!6280) r3!135)) (= lambda!392398 lambda!392390))))

(declare-fun bs!1843890 () Bool)

(assert (= bs!1843890 (and b!6907386 b!6907353)))

(assert (=> bs!1843890 (= (and (= (_2!37049 lt!2467760) (_1!37049 lt!2467760)) (= (regOne!34270 r2!6280) (regOne!34270 r1!6342)) (= (regTwo!34270 r2!6280) (regTwo!34270 r1!6342))) (= lambda!392398 lambda!392396))))

(declare-fun bs!1843891 () Bool)

(assert (= bs!1843891 (and b!6907386 b!6907350)))

(assert (=> bs!1843891 (not (= lambda!392398 lambda!392395))))

(declare-fun bs!1843892 () Bool)

(assert (= bs!1843892 (and b!6907386 b!6907383)))

(assert (=> bs!1843892 (not (= lambda!392398 lambda!392397))))

(assert (=> b!6907386 true))

(assert (=> b!6907386 true))

(declare-fun b!6907380 () Bool)

(declare-fun e!4159104 () Bool)

(assert (=> b!6907380 (= e!4159104 (= (_2!37049 lt!2467760) (Cons!66512 (c!1283141 r2!6280) Nil!66512)))))

(declare-fun b!6907381 () Bool)

(declare-fun res!2816861 () Bool)

(declare-fun e!4159106 () Bool)

(assert (=> b!6907381 (=> res!2816861 e!4159106)))

(declare-fun call!628067 () Bool)

(assert (=> b!6907381 (= res!2816861 call!628067)))

(declare-fun e!4159105 () Bool)

(assert (=> b!6907381 (= e!4159105 e!4159106)))

(declare-fun b!6907382 () Bool)

(declare-fun e!4159107 () Bool)

(assert (=> b!6907382 (= e!4159107 call!628067)))

(declare-fun b!6907384 () Bool)

(declare-fun e!4159108 () Bool)

(assert (=> b!6907384 (= e!4159108 e!4159105)))

(declare-fun c!1283168 () Bool)

(assert (=> b!6907384 (= c!1283168 ((_ is Star!16879) r2!6280))))

(declare-fun bm!628062 () Bool)

(assert (=> bm!628062 (= call!628067 (isEmpty!38752 (_2!37049 lt!2467760)))))

(declare-fun call!628068 () Bool)

(assert (=> b!6907383 (= e!4159106 call!628068)))

(declare-fun d!2162883 () Bool)

(declare-fun c!1283170 () Bool)

(assert (=> d!2162883 (= c!1283170 ((_ is EmptyExpr!16879) r2!6280))))

(assert (=> d!2162883 (= (matchRSpec!3942 r2!6280 (_2!37049 lt!2467760)) e!4159107)))

(declare-fun bm!628063 () Bool)

(assert (=> bm!628063 (= call!628068 (Exists!3887 (ite c!1283168 lambda!392397 lambda!392398)))))

(declare-fun b!6907385 () Bool)

(declare-fun e!4159103 () Bool)

(assert (=> b!6907385 (= e!4159108 e!4159103)))

(declare-fun res!2816860 () Bool)

(assert (=> b!6907385 (= res!2816860 (matchRSpec!3942 (regOne!34271 r2!6280) (_2!37049 lt!2467760)))))

(assert (=> b!6907385 (=> res!2816860 e!4159103)))

(assert (=> b!6907386 (= e!4159105 call!628068)))

(declare-fun b!6907387 () Bool)

(declare-fun c!1283169 () Bool)

(assert (=> b!6907387 (= c!1283169 ((_ is Union!16879) r2!6280))))

(assert (=> b!6907387 (= e!4159104 e!4159108)))

(declare-fun b!6907388 () Bool)

(assert (=> b!6907388 (= e!4159103 (matchRSpec!3942 (regTwo!34271 r2!6280) (_2!37049 lt!2467760)))))

(declare-fun b!6907389 () Bool)

(declare-fun e!4159109 () Bool)

(assert (=> b!6907389 (= e!4159107 e!4159109)))

(declare-fun res!2816859 () Bool)

(assert (=> b!6907389 (= res!2816859 (not ((_ is EmptyLang!16879) r2!6280)))))

(assert (=> b!6907389 (=> (not res!2816859) (not e!4159109))))

(declare-fun b!6907390 () Bool)

(declare-fun c!1283171 () Bool)

(assert (=> b!6907390 (= c!1283171 ((_ is ElementMatch!16879) r2!6280))))

(assert (=> b!6907390 (= e!4159109 e!4159104)))

(assert (= (and d!2162883 c!1283170) b!6907382))

(assert (= (and d!2162883 (not c!1283170)) b!6907389))

(assert (= (and b!6907389 res!2816859) b!6907390))

(assert (= (and b!6907390 c!1283171) b!6907380))

(assert (= (and b!6907390 (not c!1283171)) b!6907387))

(assert (= (and b!6907387 c!1283169) b!6907385))

(assert (= (and b!6907387 (not c!1283169)) b!6907384))

(assert (= (and b!6907385 (not res!2816860)) b!6907388))

(assert (= (and b!6907384 c!1283168) b!6907381))

(assert (= (and b!6907384 (not c!1283168)) b!6907386))

(assert (= (and b!6907381 (not res!2816861)) b!6907383))

(assert (= (or b!6907383 b!6907386) bm!628063))

(assert (= (or b!6907382 b!6907381) bm!628062))

(declare-fun m!7623402 () Bool)

(assert (=> bm!628062 m!7623402))

(declare-fun m!7623404 () Bool)

(assert (=> bm!628063 m!7623404))

(declare-fun m!7623406 () Bool)

(assert (=> b!6907385 m!7623406))

(declare-fun m!7623408 () Bool)

(assert (=> b!6907388 m!7623408))

(assert (=> b!6907249 d!2162883))

(declare-fun d!2162887 () Bool)

(assert (=> d!2162887 (= (matchR!9024 r1!6342 (_1!37049 lt!2467760)) (matchRSpec!3942 r1!6342 (_1!37049 lt!2467760)))))

(declare-fun lt!2467791 () Unit!160494)

(assert (=> d!2162887 (= lt!2467791 (choose!51436 r1!6342 (_1!37049 lt!2467760)))))

(assert (=> d!2162887 (validRegex!8587 r1!6342)))

(assert (=> d!2162887 (= (mainMatchTheorem!3942 r1!6342 (_1!37049 lt!2467760)) lt!2467791)))

(declare-fun bs!1843893 () Bool)

(assert (= bs!1843893 d!2162887))

(assert (=> bs!1843893 m!7623312))

(assert (=> bs!1843893 m!7623324))

(declare-fun m!7623410 () Bool)

(assert (=> bs!1843893 m!7623410))

(assert (=> bs!1843893 m!7623278))

(assert (=> b!6907249 d!2162887))

(declare-fun b!6907470 () Bool)

(declare-fun res!2816914 () Bool)

(declare-fun e!4159154 () Bool)

(assert (=> b!6907470 (=> res!2816914 e!4159154)))

(declare-fun tail!12904 (List!66636) List!66636)

(assert (=> b!6907470 (= res!2816914 (not (isEmpty!38752 (tail!12904 (_2!37049 lt!2467767)))))))

(declare-fun d!2162889 () Bool)

(declare-fun e!4159153 () Bool)

(assert (=> d!2162889 e!4159153))

(declare-fun c!1283191 () Bool)

(assert (=> d!2162889 (= c!1283191 ((_ is EmptyExpr!16879) r3!135))))

(declare-fun lt!2467797 () Bool)

(declare-fun e!4159152 () Bool)

(assert (=> d!2162889 (= lt!2467797 e!4159152)))

(declare-fun c!1283189 () Bool)

(assert (=> d!2162889 (= c!1283189 (isEmpty!38752 (_2!37049 lt!2467767)))))

(assert (=> d!2162889 (validRegex!8587 r3!135)))

(assert (=> d!2162889 (= (matchR!9024 r3!135 (_2!37049 lt!2467767)) lt!2467797)))

(declare-fun b!6907471 () Bool)

(declare-fun e!4159155 () Bool)

(assert (=> b!6907471 (= e!4159155 e!4159154)))

(declare-fun res!2816911 () Bool)

(assert (=> b!6907471 (=> res!2816911 e!4159154)))

(declare-fun call!628079 () Bool)

(assert (=> b!6907471 (= res!2816911 call!628079)))

(declare-fun b!6907472 () Bool)

(assert (=> b!6907472 (= e!4159153 (= lt!2467797 call!628079))))

(declare-fun b!6907473 () Bool)

(declare-fun e!4159156 () Bool)

(assert (=> b!6907473 (= e!4159153 e!4159156)))

(declare-fun c!1283190 () Bool)

(assert (=> b!6907473 (= c!1283190 ((_ is EmptyLang!16879) r3!135))))

(declare-fun b!6907474 () Bool)

(assert (=> b!6907474 (= e!4159156 (not lt!2467797))))

(declare-fun b!6907475 () Bool)

(declare-fun derivativeStep!5399 (Regex!16879 C!34028) Regex!16879)

(declare-fun head!13852 (List!66636) C!34028)

(assert (=> b!6907475 (= e!4159152 (matchR!9024 (derivativeStep!5399 r3!135 (head!13852 (_2!37049 lt!2467767))) (tail!12904 (_2!37049 lt!2467767))))))

(declare-fun b!6907476 () Bool)

(declare-fun res!2816909 () Bool)

(declare-fun e!4159158 () Bool)

(assert (=> b!6907476 (=> (not res!2816909) (not e!4159158))))

(assert (=> b!6907476 (= res!2816909 (isEmpty!38752 (tail!12904 (_2!37049 lt!2467767))))))

(declare-fun b!6907477 () Bool)

(assert (=> b!6907477 (= e!4159158 (= (head!13852 (_2!37049 lt!2467767)) (c!1283141 r3!135)))))

(declare-fun b!6907478 () Bool)

(declare-fun res!2816908 () Bool)

(declare-fun e!4159157 () Bool)

(assert (=> b!6907478 (=> res!2816908 e!4159157)))

(assert (=> b!6907478 (= res!2816908 e!4159158)))

(declare-fun res!2816910 () Bool)

(assert (=> b!6907478 (=> (not res!2816910) (not e!4159158))))

(assert (=> b!6907478 (= res!2816910 lt!2467797)))

(declare-fun b!6907479 () Bool)

(assert (=> b!6907479 (= e!4159152 (nullable!6719 r3!135))))

(declare-fun b!6907480 () Bool)

(assert (=> b!6907480 (= e!4159157 e!4159155)))

(declare-fun res!2816912 () Bool)

(assert (=> b!6907480 (=> (not res!2816912) (not e!4159155))))

(assert (=> b!6907480 (= res!2816912 (not lt!2467797))))

(declare-fun b!6907481 () Bool)

(declare-fun res!2816913 () Bool)

(assert (=> b!6907481 (=> res!2816913 e!4159157)))

(assert (=> b!6907481 (= res!2816913 (not ((_ is ElementMatch!16879) r3!135)))))

(assert (=> b!6907481 (= e!4159156 e!4159157)))

(declare-fun b!6907482 () Bool)

(assert (=> b!6907482 (= e!4159154 (not (= (head!13852 (_2!37049 lt!2467767)) (c!1283141 r3!135))))))

(declare-fun b!6907483 () Bool)

(declare-fun res!2816907 () Bool)

(assert (=> b!6907483 (=> (not res!2816907) (not e!4159158))))

(assert (=> b!6907483 (= res!2816907 (not call!628079))))

(declare-fun bm!628074 () Bool)

(assert (=> bm!628074 (= call!628079 (isEmpty!38752 (_2!37049 lt!2467767)))))

(assert (= (and d!2162889 c!1283189) b!6907479))

(assert (= (and d!2162889 (not c!1283189)) b!6907475))

(assert (= (and d!2162889 c!1283191) b!6907472))

(assert (= (and d!2162889 (not c!1283191)) b!6907473))

(assert (= (and b!6907473 c!1283190) b!6907474))

(assert (= (and b!6907473 (not c!1283190)) b!6907481))

(assert (= (and b!6907481 (not res!2816913)) b!6907478))

(assert (= (and b!6907478 res!2816910) b!6907483))

(assert (= (and b!6907483 res!2816907) b!6907476))

(assert (= (and b!6907476 res!2816909) b!6907477))

(assert (= (and b!6907478 (not res!2816908)) b!6907480))

(assert (= (and b!6907480 res!2816912) b!6907471))

(assert (= (and b!6907471 (not res!2816911)) b!6907470))

(assert (= (and b!6907470 (not res!2816914)) b!6907482))

(assert (= (or b!6907472 b!6907471 b!6907483) bm!628074))

(declare-fun m!7623428 () Bool)

(assert (=> bm!628074 m!7623428))

(declare-fun m!7623430 () Bool)

(assert (=> b!6907479 m!7623430))

(declare-fun m!7623432 () Bool)

(assert (=> b!6907477 m!7623432))

(assert (=> b!6907482 m!7623432))

(declare-fun m!7623434 () Bool)

(assert (=> b!6907470 m!7623434))

(assert (=> b!6907470 m!7623434))

(declare-fun m!7623436 () Bool)

(assert (=> b!6907470 m!7623436))

(assert (=> d!2162889 m!7623428))

(assert (=> d!2162889 m!7623272))

(assert (=> b!6907476 m!7623434))

(assert (=> b!6907476 m!7623434))

(assert (=> b!6907476 m!7623436))

(assert (=> b!6907475 m!7623432))

(assert (=> b!6907475 m!7623432))

(declare-fun m!7623438 () Bool)

(assert (=> b!6907475 m!7623438))

(assert (=> b!6907475 m!7623434))

(assert (=> b!6907475 m!7623438))

(assert (=> b!6907475 m!7623434))

(declare-fun m!7623440 () Bool)

(assert (=> b!6907475 m!7623440))

(assert (=> b!6907263 d!2162889))

(declare-fun d!2162893 () Bool)

(assert (=> d!2162893 (= (matchR!9024 lt!2467776 (_1!37049 lt!2467767)) (matchRSpec!3942 lt!2467776 (_1!37049 lt!2467767)))))

(declare-fun lt!2467798 () Unit!160494)

(assert (=> d!2162893 (= lt!2467798 (choose!51436 lt!2467776 (_1!37049 lt!2467767)))))

(assert (=> d!2162893 (validRegex!8587 lt!2467776)))

(assert (=> d!2162893 (= (mainMatchTheorem!3942 lt!2467776 (_1!37049 lt!2467767)) lt!2467798)))

(declare-fun bs!1843894 () Bool)

(assert (= bs!1843894 d!2162893))

(assert (=> bs!1843894 m!7623344))

(assert (=> bs!1843894 m!7623348))

(declare-fun m!7623442 () Bool)

(assert (=> bs!1843894 m!7623442))

(declare-fun m!7623444 () Bool)

(assert (=> bs!1843894 m!7623444))

(assert (=> b!6907258 d!2162893))

(declare-fun bs!1843897 () Bool)

(declare-fun d!2162895 () Bool)

(assert (= bs!1843897 (and d!2162895 b!6907251)))

(declare-fun lambda!392403 () Int)

(assert (=> bs!1843897 (= (and (= s!14361 lt!2467782) (= lt!2467776 r2!6280)) (= lambda!392403 lambda!392389))))

(declare-fun bs!1843898 () Bool)

(assert (= bs!1843898 (and d!2162895 b!6907386)))

(assert (=> bs!1843898 (not (= lambda!392403 lambda!392398))))

(declare-fun bs!1843899 () Bool)

(assert (= bs!1843899 (and d!2162895 b!6907264)))

(assert (=> bs!1843899 (not (= lambda!392403 lambda!392388))))

(assert (=> bs!1843899 (= (and (= s!14361 (_1!37049 lt!2467767)) (= lt!2467776 r1!6342) (= r3!135 r2!6280)) (= lambda!392403 lambda!392387))))

(declare-fun bs!1843900 () Bool)

(assert (= bs!1843900 (and d!2162895 b!6907258)))

(assert (=> bs!1843900 (not (= lambda!392403 lambda!392386))))

(assert (=> bs!1843900 (= lambda!392403 lambda!392385)))

(assert (=> bs!1843897 (not (= lambda!392403 lambda!392390))))

(declare-fun bs!1843901 () Bool)

(assert (= bs!1843901 (and d!2162895 b!6907353)))

(assert (=> bs!1843901 (not (= lambda!392403 lambda!392396))))

(declare-fun bs!1843902 () Bool)

(assert (= bs!1843902 (and d!2162895 b!6907350)))

(assert (=> bs!1843902 (not (= lambda!392403 lambda!392395))))

(declare-fun bs!1843903 () Bool)

(assert (= bs!1843903 (and d!2162895 b!6907383)))

(assert (=> bs!1843903 (not (= lambda!392403 lambda!392397))))

(assert (=> d!2162895 true))

(assert (=> d!2162895 true))

(assert (=> d!2162895 true))

(declare-fun lambda!392406 () Int)

(assert (=> bs!1843897 (not (= lambda!392406 lambda!392389))))

(assert (=> bs!1843898 (= (and (= s!14361 (_2!37049 lt!2467760)) (= lt!2467776 (regOne!34270 r2!6280)) (= r3!135 (regTwo!34270 r2!6280))) (= lambda!392406 lambda!392398))))

(assert (=> bs!1843899 (= (and (= s!14361 (_1!37049 lt!2467767)) (= lt!2467776 r1!6342) (= r3!135 r2!6280)) (= lambda!392406 lambda!392388))))

(assert (=> bs!1843899 (not (= lambda!392406 lambda!392387))))

(assert (=> bs!1843900 (= lambda!392406 lambda!392386)))

(assert (=> bs!1843900 (not (= lambda!392406 lambda!392385))))

(declare-fun bs!1843904 () Bool)

(assert (= bs!1843904 d!2162895))

(assert (=> bs!1843904 (not (= lambda!392406 lambda!392403))))

(assert (=> bs!1843897 (= (and (= s!14361 lt!2467782) (= lt!2467776 r2!6280)) (= lambda!392406 lambda!392390))))

(assert (=> bs!1843901 (= (and (= s!14361 (_1!37049 lt!2467760)) (= lt!2467776 (regOne!34270 r1!6342)) (= r3!135 (regTwo!34270 r1!6342))) (= lambda!392406 lambda!392396))))

(assert (=> bs!1843902 (not (= lambda!392406 lambda!392395))))

(assert (=> bs!1843903 (not (= lambda!392406 lambda!392397))))

(assert (=> d!2162895 true))

(assert (=> d!2162895 true))

(assert (=> d!2162895 true))

(assert (=> d!2162895 (= (Exists!3887 lambda!392403) (Exists!3887 lambda!392406))))

(declare-fun lt!2467806 () Unit!160494)

(declare-fun choose!51438 (Regex!16879 Regex!16879 List!66636) Unit!160494)

(assert (=> d!2162895 (= lt!2467806 (choose!51438 lt!2467776 r3!135 s!14361))))

(assert (=> d!2162895 (validRegex!8587 lt!2467776)))

(assert (=> d!2162895 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2360 lt!2467776 r3!135 s!14361) lt!2467806)))

(declare-fun m!7623458 () Bool)

(assert (=> bs!1843904 m!7623458))

(declare-fun m!7623460 () Bool)

(assert (=> bs!1843904 m!7623460))

(declare-fun m!7623462 () Bool)

(assert (=> bs!1843904 m!7623462))

(assert (=> bs!1843904 m!7623444))

(assert (=> b!6907258 d!2162895))

(declare-fun b!6907538 () Bool)

(declare-fun res!2816954 () Bool)

(declare-fun e!4159190 () Bool)

(assert (=> b!6907538 (=> res!2816954 e!4159190)))

(assert (=> b!6907538 (= res!2816954 (not (isEmpty!38752 (tail!12904 (_1!37049 lt!2467767)))))))

(declare-fun d!2162903 () Bool)

(declare-fun e!4159189 () Bool)

(assert (=> d!2162903 e!4159189))

(declare-fun c!1283205 () Bool)

(assert (=> d!2162903 (= c!1283205 ((_ is EmptyExpr!16879) lt!2467776))))

(declare-fun lt!2467807 () Bool)

(declare-fun e!4159188 () Bool)

(assert (=> d!2162903 (= lt!2467807 e!4159188)))

(declare-fun c!1283203 () Bool)

(assert (=> d!2162903 (= c!1283203 (isEmpty!38752 (_1!37049 lt!2467767)))))

(assert (=> d!2162903 (validRegex!8587 lt!2467776)))

(assert (=> d!2162903 (= (matchR!9024 lt!2467776 (_1!37049 lt!2467767)) lt!2467807)))

(declare-fun b!6907539 () Bool)

(declare-fun e!4159191 () Bool)

(assert (=> b!6907539 (= e!4159191 e!4159190)))

(declare-fun res!2816951 () Bool)

(assert (=> b!6907539 (=> res!2816951 e!4159190)))

(declare-fun call!628081 () Bool)

(assert (=> b!6907539 (= res!2816951 call!628081)))

(declare-fun b!6907540 () Bool)

(assert (=> b!6907540 (= e!4159189 (= lt!2467807 call!628081))))

(declare-fun b!6907541 () Bool)

(declare-fun e!4159192 () Bool)

(assert (=> b!6907541 (= e!4159189 e!4159192)))

(declare-fun c!1283204 () Bool)

(assert (=> b!6907541 (= c!1283204 ((_ is EmptyLang!16879) lt!2467776))))

(declare-fun b!6907542 () Bool)

(assert (=> b!6907542 (= e!4159192 (not lt!2467807))))

(declare-fun b!6907543 () Bool)

(assert (=> b!6907543 (= e!4159188 (matchR!9024 (derivativeStep!5399 lt!2467776 (head!13852 (_1!37049 lt!2467767))) (tail!12904 (_1!37049 lt!2467767))))))

(declare-fun b!6907544 () Bool)

(declare-fun res!2816949 () Bool)

(declare-fun e!4159194 () Bool)

(assert (=> b!6907544 (=> (not res!2816949) (not e!4159194))))

(assert (=> b!6907544 (= res!2816949 (isEmpty!38752 (tail!12904 (_1!37049 lt!2467767))))))

(declare-fun b!6907545 () Bool)

(assert (=> b!6907545 (= e!4159194 (= (head!13852 (_1!37049 lt!2467767)) (c!1283141 lt!2467776)))))

(declare-fun b!6907546 () Bool)

(declare-fun res!2816948 () Bool)

(declare-fun e!4159193 () Bool)

(assert (=> b!6907546 (=> res!2816948 e!4159193)))

(assert (=> b!6907546 (= res!2816948 e!4159194)))

(declare-fun res!2816950 () Bool)

(assert (=> b!6907546 (=> (not res!2816950) (not e!4159194))))

(assert (=> b!6907546 (= res!2816950 lt!2467807)))

(declare-fun b!6907547 () Bool)

(assert (=> b!6907547 (= e!4159188 (nullable!6719 lt!2467776))))

(declare-fun b!6907548 () Bool)

(assert (=> b!6907548 (= e!4159193 e!4159191)))

(declare-fun res!2816952 () Bool)

(assert (=> b!6907548 (=> (not res!2816952) (not e!4159191))))

(assert (=> b!6907548 (= res!2816952 (not lt!2467807))))

(declare-fun b!6907549 () Bool)

(declare-fun res!2816953 () Bool)

(assert (=> b!6907549 (=> res!2816953 e!4159193)))

(assert (=> b!6907549 (= res!2816953 (not ((_ is ElementMatch!16879) lt!2467776)))))

(assert (=> b!6907549 (= e!4159192 e!4159193)))

(declare-fun b!6907550 () Bool)

(assert (=> b!6907550 (= e!4159190 (not (= (head!13852 (_1!37049 lt!2467767)) (c!1283141 lt!2467776))))))

(declare-fun b!6907551 () Bool)

(declare-fun res!2816947 () Bool)

(assert (=> b!6907551 (=> (not res!2816947) (not e!4159194))))

(assert (=> b!6907551 (= res!2816947 (not call!628081))))

(declare-fun bm!628076 () Bool)

(assert (=> bm!628076 (= call!628081 (isEmpty!38752 (_1!37049 lt!2467767)))))

(assert (= (and d!2162903 c!1283203) b!6907547))

(assert (= (and d!2162903 (not c!1283203)) b!6907543))

(assert (= (and d!2162903 c!1283205) b!6907540))

(assert (= (and d!2162903 (not c!1283205)) b!6907541))

(assert (= (and b!6907541 c!1283204) b!6907542))

(assert (= (and b!6907541 (not c!1283204)) b!6907549))

(assert (= (and b!6907549 (not res!2816953)) b!6907546))

(assert (= (and b!6907546 res!2816950) b!6907551))

(assert (= (and b!6907551 res!2816947) b!6907544))

(assert (= (and b!6907544 res!2816949) b!6907545))

(assert (= (and b!6907546 (not res!2816948)) b!6907548))

(assert (= (and b!6907548 res!2816952) b!6907539))

(assert (= (and b!6907539 (not res!2816951)) b!6907538))

(assert (= (and b!6907538 (not res!2816954)) b!6907550))

(assert (= (or b!6907540 b!6907539 b!6907551) bm!628076))

(declare-fun m!7623464 () Bool)

(assert (=> bm!628076 m!7623464))

(declare-fun m!7623466 () Bool)

(assert (=> b!6907547 m!7623466))

(declare-fun m!7623468 () Bool)

(assert (=> b!6907545 m!7623468))

(assert (=> b!6907550 m!7623468))

(declare-fun m!7623470 () Bool)

(assert (=> b!6907538 m!7623470))

(assert (=> b!6907538 m!7623470))

(declare-fun m!7623472 () Bool)

(assert (=> b!6907538 m!7623472))

(assert (=> d!2162903 m!7623464))

(assert (=> d!2162903 m!7623444))

(assert (=> b!6907544 m!7623470))

(assert (=> b!6907544 m!7623470))

(assert (=> b!6907544 m!7623472))

(assert (=> b!6907543 m!7623468))

(assert (=> b!6907543 m!7623468))

(declare-fun m!7623474 () Bool)

(assert (=> b!6907543 m!7623474))

(assert (=> b!6907543 m!7623470))

(assert (=> b!6907543 m!7623474))

(assert (=> b!6907543 m!7623470))

(declare-fun m!7623476 () Bool)

(assert (=> b!6907543 m!7623476))

(assert (=> b!6907258 d!2162903))

(declare-fun bs!1843905 () Bool)

(declare-fun b!6907555 () Bool)

(assert (= bs!1843905 (and b!6907555 b!6907251)))

(declare-fun lambda!392409 () Int)

(assert (=> bs!1843905 (not (= lambda!392409 lambda!392389))))

(declare-fun bs!1843906 () Bool)

(assert (= bs!1843906 (and b!6907555 d!2162895)))

(assert (=> bs!1843906 (not (= lambda!392409 lambda!392406))))

(declare-fun bs!1843907 () Bool)

(assert (= bs!1843907 (and b!6907555 b!6907386)))

(assert (=> bs!1843907 (not (= lambda!392409 lambda!392398))))

(declare-fun bs!1843908 () Bool)

(assert (= bs!1843908 (and b!6907555 b!6907264)))

(assert (=> bs!1843908 (not (= lambda!392409 lambda!392388))))

(assert (=> bs!1843908 (not (= lambda!392409 lambda!392387))))

(declare-fun bs!1843909 () Bool)

(assert (= bs!1843909 (and b!6907555 b!6907258)))

(assert (=> bs!1843909 (not (= lambda!392409 lambda!392386))))

(assert (=> bs!1843909 (not (= lambda!392409 lambda!392385))))

(assert (=> bs!1843906 (not (= lambda!392409 lambda!392403))))

(assert (=> bs!1843905 (not (= lambda!392409 lambda!392390))))

(declare-fun bs!1843910 () Bool)

(assert (= bs!1843910 (and b!6907555 b!6907353)))

(assert (=> bs!1843910 (not (= lambda!392409 lambda!392396))))

(declare-fun bs!1843911 () Bool)

(assert (= bs!1843911 (and b!6907555 b!6907350)))

(assert (=> bs!1843911 (= (and (= (_1!37049 lt!2467767) (_1!37049 lt!2467760)) (= (reg!17208 lt!2467776) (reg!17208 r1!6342)) (= lt!2467776 r1!6342)) (= lambda!392409 lambda!392395))))

(declare-fun bs!1843912 () Bool)

(assert (= bs!1843912 (and b!6907555 b!6907383)))

(assert (=> bs!1843912 (= (and (= (_1!37049 lt!2467767) (_2!37049 lt!2467760)) (= (reg!17208 lt!2467776) (reg!17208 r2!6280)) (= lt!2467776 r2!6280)) (= lambda!392409 lambda!392397))))

(assert (=> b!6907555 true))

(assert (=> b!6907555 true))

(declare-fun bs!1843913 () Bool)

(declare-fun b!6907558 () Bool)

(assert (= bs!1843913 (and b!6907558 b!6907251)))

(declare-fun lambda!392410 () Int)

(assert (=> bs!1843913 (not (= lambda!392410 lambda!392389))))

(declare-fun bs!1843914 () Bool)

(assert (= bs!1843914 (and b!6907558 d!2162895)))

(assert (=> bs!1843914 (= (and (= (_1!37049 lt!2467767) s!14361) (= (regOne!34270 lt!2467776) lt!2467776) (= (regTwo!34270 lt!2467776) r3!135)) (= lambda!392410 lambda!392406))))

(declare-fun bs!1843915 () Bool)

(assert (= bs!1843915 (and b!6907558 b!6907386)))

(assert (=> bs!1843915 (= (and (= (_1!37049 lt!2467767) (_2!37049 lt!2467760)) (= (regOne!34270 lt!2467776) (regOne!34270 r2!6280)) (= (regTwo!34270 lt!2467776) (regTwo!34270 r2!6280))) (= lambda!392410 lambda!392398))))

(declare-fun bs!1843916 () Bool)

(assert (= bs!1843916 (and b!6907558 b!6907555)))

(assert (=> bs!1843916 (not (= lambda!392410 lambda!392409))))

(declare-fun bs!1843918 () Bool)

(assert (= bs!1843918 (and b!6907558 b!6907264)))

(assert (=> bs!1843918 (= (and (= (regOne!34270 lt!2467776) r1!6342) (= (regTwo!34270 lt!2467776) r2!6280)) (= lambda!392410 lambda!392388))))

(assert (=> bs!1843918 (not (= lambda!392410 lambda!392387))))

(declare-fun bs!1843920 () Bool)

(assert (= bs!1843920 (and b!6907558 b!6907258)))

(assert (=> bs!1843920 (= (and (= (_1!37049 lt!2467767) s!14361) (= (regOne!34270 lt!2467776) lt!2467776) (= (regTwo!34270 lt!2467776) r3!135)) (= lambda!392410 lambda!392386))))

(assert (=> bs!1843920 (not (= lambda!392410 lambda!392385))))

(assert (=> bs!1843914 (not (= lambda!392410 lambda!392403))))

(assert (=> bs!1843913 (= (and (= (_1!37049 lt!2467767) lt!2467782) (= (regOne!34270 lt!2467776) r2!6280) (= (regTwo!34270 lt!2467776) r3!135)) (= lambda!392410 lambda!392390))))

(declare-fun bs!1843922 () Bool)

(assert (= bs!1843922 (and b!6907558 b!6907353)))

(assert (=> bs!1843922 (= (and (= (_1!37049 lt!2467767) (_1!37049 lt!2467760)) (= (regOne!34270 lt!2467776) (regOne!34270 r1!6342)) (= (regTwo!34270 lt!2467776) (regTwo!34270 r1!6342))) (= lambda!392410 lambda!392396))))

(declare-fun bs!1843923 () Bool)

(assert (= bs!1843923 (and b!6907558 b!6907350)))

(assert (=> bs!1843923 (not (= lambda!392410 lambda!392395))))

(declare-fun bs!1843924 () Bool)

(assert (= bs!1843924 (and b!6907558 b!6907383)))

(assert (=> bs!1843924 (not (= lambda!392410 lambda!392397))))

(assert (=> b!6907558 true))

(assert (=> b!6907558 true))

(declare-fun b!6907552 () Bool)

(declare-fun e!4159196 () Bool)

(assert (=> b!6907552 (= e!4159196 (= (_1!37049 lt!2467767) (Cons!66512 (c!1283141 lt!2467776) Nil!66512)))))

(declare-fun b!6907553 () Bool)

(declare-fun res!2816957 () Bool)

(declare-fun e!4159198 () Bool)

(assert (=> b!6907553 (=> res!2816957 e!4159198)))

(declare-fun call!628086 () Bool)

(assert (=> b!6907553 (= res!2816957 call!628086)))

(declare-fun e!4159197 () Bool)

(assert (=> b!6907553 (= e!4159197 e!4159198)))

(declare-fun b!6907554 () Bool)

(declare-fun e!4159199 () Bool)

(assert (=> b!6907554 (= e!4159199 call!628086)))

(declare-fun b!6907556 () Bool)

(declare-fun e!4159200 () Bool)

(assert (=> b!6907556 (= e!4159200 e!4159197)))

(declare-fun c!1283206 () Bool)

(assert (=> b!6907556 (= c!1283206 ((_ is Star!16879) lt!2467776))))

(declare-fun bm!628081 () Bool)

(assert (=> bm!628081 (= call!628086 (isEmpty!38752 (_1!37049 lt!2467767)))))

(declare-fun call!628087 () Bool)

(assert (=> b!6907555 (= e!4159198 call!628087)))

(declare-fun d!2162905 () Bool)

(declare-fun c!1283208 () Bool)

(assert (=> d!2162905 (= c!1283208 ((_ is EmptyExpr!16879) lt!2467776))))

(assert (=> d!2162905 (= (matchRSpec!3942 lt!2467776 (_1!37049 lt!2467767)) e!4159199)))

(declare-fun bm!628082 () Bool)

(assert (=> bm!628082 (= call!628087 (Exists!3887 (ite c!1283206 lambda!392409 lambda!392410)))))

(declare-fun b!6907557 () Bool)

(declare-fun e!4159195 () Bool)

(assert (=> b!6907557 (= e!4159200 e!4159195)))

(declare-fun res!2816956 () Bool)

(assert (=> b!6907557 (= res!2816956 (matchRSpec!3942 (regOne!34271 lt!2467776) (_1!37049 lt!2467767)))))

(assert (=> b!6907557 (=> res!2816956 e!4159195)))

(assert (=> b!6907558 (= e!4159197 call!628087)))

(declare-fun b!6907559 () Bool)

(declare-fun c!1283207 () Bool)

(assert (=> b!6907559 (= c!1283207 ((_ is Union!16879) lt!2467776))))

(assert (=> b!6907559 (= e!4159196 e!4159200)))

(declare-fun b!6907560 () Bool)

(assert (=> b!6907560 (= e!4159195 (matchRSpec!3942 (regTwo!34271 lt!2467776) (_1!37049 lt!2467767)))))

(declare-fun b!6907561 () Bool)

(declare-fun e!4159201 () Bool)

(assert (=> b!6907561 (= e!4159199 e!4159201)))

(declare-fun res!2816955 () Bool)

(assert (=> b!6907561 (= res!2816955 (not ((_ is EmptyLang!16879) lt!2467776)))))

(assert (=> b!6907561 (=> (not res!2816955) (not e!4159201))))

(declare-fun b!6907562 () Bool)

(declare-fun c!1283209 () Bool)

(assert (=> b!6907562 (= c!1283209 ((_ is ElementMatch!16879) lt!2467776))))

(assert (=> b!6907562 (= e!4159201 e!4159196)))

(assert (= (and d!2162905 c!1283208) b!6907554))

(assert (= (and d!2162905 (not c!1283208)) b!6907561))

(assert (= (and b!6907561 res!2816955) b!6907562))

(assert (= (and b!6907562 c!1283209) b!6907552))

(assert (= (and b!6907562 (not c!1283209)) b!6907559))

(assert (= (and b!6907559 c!1283207) b!6907557))

(assert (= (and b!6907559 (not c!1283207)) b!6907556))

(assert (= (and b!6907557 (not res!2816956)) b!6907560))

(assert (= (and b!6907556 c!1283206) b!6907553))

(assert (= (and b!6907556 (not c!1283206)) b!6907558))

(assert (= (and b!6907553 (not res!2816957)) b!6907555))

(assert (= (or b!6907555 b!6907558) bm!628082))

(assert (= (or b!6907554 b!6907553) bm!628081))

(assert (=> bm!628081 m!7623464))

(declare-fun m!7623478 () Bool)

(assert (=> bm!628082 m!7623478))

(declare-fun m!7623480 () Bool)

(assert (=> b!6907557 m!7623480))

(declare-fun m!7623482 () Bool)

(assert (=> b!6907560 m!7623482))

(assert (=> b!6907258 d!2162905))

(declare-fun d!2162907 () Bool)

(declare-fun isEmpty!38755 (Option!16658) Bool)

(assert (=> d!2162907 (= (isDefined!13361 lt!2467778) (not (isEmpty!38755 lt!2467778)))))

(declare-fun bs!1843929 () Bool)

(assert (= bs!1843929 d!2162907))

(declare-fun m!7623484 () Bool)

(assert (=> bs!1843929 m!7623484))

(assert (=> b!6907258 d!2162907))

(declare-fun bs!1843944 () Bool)

(declare-fun d!2162909 () Bool)

(assert (= bs!1843944 (and d!2162909 b!6907251)))

(declare-fun lambda!392417 () Int)

(assert (=> bs!1843944 (= (and (= s!14361 lt!2467782) (= lt!2467776 r2!6280)) (= lambda!392417 lambda!392389))))

(declare-fun bs!1843945 () Bool)

(assert (= bs!1843945 (and d!2162909 d!2162895)))

(assert (=> bs!1843945 (not (= lambda!392417 lambda!392406))))

(declare-fun bs!1843946 () Bool)

(assert (= bs!1843946 (and d!2162909 b!6907386)))

(assert (=> bs!1843946 (not (= lambda!392417 lambda!392398))))

(declare-fun bs!1843947 () Bool)

(assert (= bs!1843947 (and d!2162909 b!6907555)))

(assert (=> bs!1843947 (not (= lambda!392417 lambda!392409))))

(declare-fun bs!1843948 () Bool)

(assert (= bs!1843948 (and d!2162909 b!6907264)))

(assert (=> bs!1843948 (not (= lambda!392417 lambda!392388))))

(assert (=> bs!1843948 (= (and (= s!14361 (_1!37049 lt!2467767)) (= lt!2467776 r1!6342) (= r3!135 r2!6280)) (= lambda!392417 lambda!392387))))

(declare-fun bs!1843949 () Bool)

(assert (= bs!1843949 (and d!2162909 b!6907258)))

(assert (=> bs!1843949 (not (= lambda!392417 lambda!392386))))

(assert (=> bs!1843945 (= lambda!392417 lambda!392403)))

(assert (=> bs!1843944 (not (= lambda!392417 lambda!392390))))

(declare-fun bs!1843950 () Bool)

(assert (= bs!1843950 (and d!2162909 b!6907353)))

(assert (=> bs!1843950 (not (= lambda!392417 lambda!392396))))

(assert (=> bs!1843949 (= lambda!392417 lambda!392385)))

(declare-fun bs!1843951 () Bool)

(assert (= bs!1843951 (and d!2162909 b!6907558)))

(assert (=> bs!1843951 (not (= lambda!392417 lambda!392410))))

(declare-fun bs!1843952 () Bool)

(assert (= bs!1843952 (and d!2162909 b!6907350)))

(assert (=> bs!1843952 (not (= lambda!392417 lambda!392395))))

(declare-fun bs!1843953 () Bool)

(assert (= bs!1843953 (and d!2162909 b!6907383)))

(assert (=> bs!1843953 (not (= lambda!392417 lambda!392397))))

(assert (=> d!2162909 true))

(assert (=> d!2162909 true))

(assert (=> d!2162909 true))

(assert (=> d!2162909 (= (isDefined!13361 (findConcatSeparation!3072 lt!2467776 r3!135 Nil!66512 s!14361 s!14361)) (Exists!3887 lambda!392417))))

(declare-fun lt!2467811 () Unit!160494)

(declare-fun choose!51440 (Regex!16879 Regex!16879 List!66636) Unit!160494)

(assert (=> d!2162909 (= lt!2467811 (choose!51440 lt!2467776 r3!135 s!14361))))

(assert (=> d!2162909 (validRegex!8587 lt!2467776)))

(assert (=> d!2162909 (= (lemmaFindConcatSeparationEquivalentToExists!2834 lt!2467776 r3!135 s!14361) lt!2467811)))

(declare-fun bs!1843954 () Bool)

(assert (= bs!1843954 d!2162909))

(declare-fun m!7623518 () Bool)

(assert (=> bs!1843954 m!7623518))

(assert (=> bs!1843954 m!7623444))

(assert (=> bs!1843954 m!7623342))

(declare-fun m!7623520 () Bool)

(assert (=> bs!1843954 m!7623520))

(assert (=> bs!1843954 m!7623342))

(declare-fun m!7623522 () Bool)

(assert (=> bs!1843954 m!7623522))

(assert (=> b!6907258 d!2162909))

(declare-fun d!2162925 () Bool)

(assert (=> d!2162925 (= (get!23269 lt!2467778) (v!52929 lt!2467778))))

(assert (=> b!6907258 d!2162925))

(declare-fun d!2162927 () Bool)

(declare-fun choose!51441 (Int) Bool)

(assert (=> d!2162927 (= (Exists!3887 lambda!392385) (choose!51441 lambda!392385))))

(declare-fun bs!1843955 () Bool)

(assert (= bs!1843955 d!2162927))

(declare-fun m!7623524 () Bool)

(assert (=> bs!1843955 m!7623524))

(assert (=> b!6907258 d!2162927))

(declare-fun b!6907625 () Bool)

(declare-fun e!4159239 () Option!16658)

(declare-fun e!4159238 () Option!16658)

(assert (=> b!6907625 (= e!4159239 e!4159238)))

(declare-fun c!1283226 () Bool)

(assert (=> b!6907625 (= c!1283226 ((_ is Nil!66512) s!14361))))

(declare-fun b!6907626 () Bool)

(declare-fun e!4159241 () Bool)

(assert (=> b!6907626 (= e!4159241 (matchR!9024 r3!135 s!14361))))

(declare-fun b!6907628 () Bool)

(declare-fun lt!2467823 () Unit!160494)

(declare-fun lt!2467822 () Unit!160494)

(assert (=> b!6907628 (= lt!2467823 lt!2467822)))

(assert (=> b!6907628 (= (++!14932 (++!14932 Nil!66512 (Cons!66512 (h!72960 s!14361) Nil!66512)) (t!380379 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2806 (List!66636 C!34028 List!66636 List!66636) Unit!160494)

(assert (=> b!6907628 (= lt!2467822 (lemmaMoveElementToOtherListKeepsConcatEq!2806 Nil!66512 (h!72960 s!14361) (t!380379 s!14361) s!14361))))

(assert (=> b!6907628 (= e!4159238 (findConcatSeparation!3072 lt!2467776 r3!135 (++!14932 Nil!66512 (Cons!66512 (h!72960 s!14361) Nil!66512)) (t!380379 s!14361) s!14361))))

(declare-fun b!6907629 () Bool)

(assert (=> b!6907629 (= e!4159239 (Some!16657 (tuple2!67493 Nil!66512 s!14361)))))

(declare-fun b!6907630 () Bool)

(declare-fun res!2816991 () Bool)

(declare-fun e!4159237 () Bool)

(assert (=> b!6907630 (=> (not res!2816991) (not e!4159237))))

(declare-fun lt!2467821 () Option!16658)

(assert (=> b!6907630 (= res!2816991 (matchR!9024 lt!2467776 (_1!37049 (get!23269 lt!2467821))))))

(declare-fun b!6907631 () Bool)

(declare-fun e!4159240 () Bool)

(assert (=> b!6907631 (= e!4159240 (not (isDefined!13361 lt!2467821)))))

(declare-fun b!6907632 () Bool)

(assert (=> b!6907632 (= e!4159237 (= (++!14932 (_1!37049 (get!23269 lt!2467821)) (_2!37049 (get!23269 lt!2467821))) s!14361))))

(declare-fun b!6907633 () Bool)

(assert (=> b!6907633 (= e!4159238 None!16657)))

(declare-fun b!6907627 () Bool)

(declare-fun res!2816993 () Bool)

(assert (=> b!6907627 (=> (not res!2816993) (not e!4159237))))

(assert (=> b!6907627 (= res!2816993 (matchR!9024 r3!135 (_2!37049 (get!23269 lt!2467821))))))

(declare-fun d!2162929 () Bool)

(assert (=> d!2162929 e!4159240))

(declare-fun res!2816992 () Bool)

(assert (=> d!2162929 (=> res!2816992 e!4159240)))

(assert (=> d!2162929 (= res!2816992 e!4159237)))

(declare-fun res!2816990 () Bool)

(assert (=> d!2162929 (=> (not res!2816990) (not e!4159237))))

(assert (=> d!2162929 (= res!2816990 (isDefined!13361 lt!2467821))))

(assert (=> d!2162929 (= lt!2467821 e!4159239)))

(declare-fun c!1283225 () Bool)

(assert (=> d!2162929 (= c!1283225 e!4159241)))

(declare-fun res!2816994 () Bool)

(assert (=> d!2162929 (=> (not res!2816994) (not e!4159241))))

(assert (=> d!2162929 (= res!2816994 (matchR!9024 lt!2467776 Nil!66512))))

(assert (=> d!2162929 (validRegex!8587 lt!2467776)))

(assert (=> d!2162929 (= (findConcatSeparation!3072 lt!2467776 r3!135 Nil!66512 s!14361 s!14361) lt!2467821)))

(assert (= (and d!2162929 res!2816994) b!6907626))

(assert (= (and d!2162929 c!1283225) b!6907629))

(assert (= (and d!2162929 (not c!1283225)) b!6907625))

(assert (= (and b!6907625 c!1283226) b!6907633))

(assert (= (and b!6907625 (not c!1283226)) b!6907628))

(assert (= (and d!2162929 res!2816990) b!6907630))

(assert (= (and b!6907630 res!2816991) b!6907627))

(assert (= (and b!6907627 res!2816993) b!6907632))

(assert (= (and d!2162929 (not res!2816992)) b!6907631))

(declare-fun m!7623532 () Bool)

(assert (=> b!6907626 m!7623532))

(declare-fun m!7623534 () Bool)

(assert (=> d!2162929 m!7623534))

(declare-fun m!7623536 () Bool)

(assert (=> d!2162929 m!7623536))

(assert (=> d!2162929 m!7623444))

(assert (=> b!6907631 m!7623534))

(declare-fun m!7623538 () Bool)

(assert (=> b!6907627 m!7623538))

(declare-fun m!7623540 () Bool)

(assert (=> b!6907627 m!7623540))

(assert (=> b!6907632 m!7623538))

(declare-fun m!7623542 () Bool)

(assert (=> b!6907632 m!7623542))

(assert (=> b!6907630 m!7623538))

(declare-fun m!7623544 () Bool)

(assert (=> b!6907630 m!7623544))

(declare-fun m!7623546 () Bool)

(assert (=> b!6907628 m!7623546))

(assert (=> b!6907628 m!7623546))

(declare-fun m!7623548 () Bool)

(assert (=> b!6907628 m!7623548))

(declare-fun m!7623550 () Bool)

(assert (=> b!6907628 m!7623550))

(assert (=> b!6907628 m!7623546))

(declare-fun m!7623552 () Bool)

(assert (=> b!6907628 m!7623552))

(assert (=> b!6907258 d!2162929))

(declare-fun d!2162933 () Bool)

(assert (=> d!2162933 (= (Exists!3887 lambda!392386) (choose!51441 lambda!392386))))

(declare-fun bs!1843964 () Bool)

(assert (= bs!1843964 d!2162933))

(declare-fun m!7623554 () Bool)

(assert (=> bs!1843964 m!7623554))

(assert (=> b!6907258 d!2162933))

(declare-fun d!2162935 () Bool)

(assert (=> d!2162935 (= (get!23269 lt!2467766) (v!52929 lt!2467766))))

(assert (=> b!6907264 d!2162935))

(declare-fun b!6907634 () Bool)

(declare-fun res!2817002 () Bool)

(declare-fun e!4159244 () Bool)

(assert (=> b!6907634 (=> res!2817002 e!4159244)))

(assert (=> b!6907634 (= res!2817002 (not (isEmpty!38752 (tail!12904 (_1!37049 lt!2467760)))))))

(declare-fun d!2162937 () Bool)

(declare-fun e!4159243 () Bool)

(assert (=> d!2162937 e!4159243))

(declare-fun c!1283229 () Bool)

(assert (=> d!2162937 (= c!1283229 ((_ is EmptyExpr!16879) r1!6342))))

(declare-fun lt!2467824 () Bool)

(declare-fun e!4159242 () Bool)

(assert (=> d!2162937 (= lt!2467824 e!4159242)))

(declare-fun c!1283227 () Bool)

(assert (=> d!2162937 (= c!1283227 (isEmpty!38752 (_1!37049 lt!2467760)))))

(assert (=> d!2162937 (validRegex!8587 r1!6342)))

(assert (=> d!2162937 (= (matchR!9024 r1!6342 (_1!37049 lt!2467760)) lt!2467824)))

(declare-fun b!6907635 () Bool)

(declare-fun e!4159245 () Bool)

(assert (=> b!6907635 (= e!4159245 e!4159244)))

(declare-fun res!2816999 () Bool)

(assert (=> b!6907635 (=> res!2816999 e!4159244)))

(declare-fun call!628093 () Bool)

(assert (=> b!6907635 (= res!2816999 call!628093)))

(declare-fun b!6907636 () Bool)

(assert (=> b!6907636 (= e!4159243 (= lt!2467824 call!628093))))

(declare-fun b!6907637 () Bool)

(declare-fun e!4159246 () Bool)

(assert (=> b!6907637 (= e!4159243 e!4159246)))

(declare-fun c!1283228 () Bool)

(assert (=> b!6907637 (= c!1283228 ((_ is EmptyLang!16879) r1!6342))))

(declare-fun b!6907638 () Bool)

(assert (=> b!6907638 (= e!4159246 (not lt!2467824))))

(declare-fun b!6907639 () Bool)

(assert (=> b!6907639 (= e!4159242 (matchR!9024 (derivativeStep!5399 r1!6342 (head!13852 (_1!37049 lt!2467760))) (tail!12904 (_1!37049 lt!2467760))))))

(declare-fun b!6907640 () Bool)

(declare-fun res!2816997 () Bool)

(declare-fun e!4159248 () Bool)

(assert (=> b!6907640 (=> (not res!2816997) (not e!4159248))))

(assert (=> b!6907640 (= res!2816997 (isEmpty!38752 (tail!12904 (_1!37049 lt!2467760))))))

(declare-fun b!6907641 () Bool)

(assert (=> b!6907641 (= e!4159248 (= (head!13852 (_1!37049 lt!2467760)) (c!1283141 r1!6342)))))

(declare-fun b!6907642 () Bool)

(declare-fun res!2816996 () Bool)

(declare-fun e!4159247 () Bool)

(assert (=> b!6907642 (=> res!2816996 e!4159247)))

(assert (=> b!6907642 (= res!2816996 e!4159248)))

(declare-fun res!2816998 () Bool)

(assert (=> b!6907642 (=> (not res!2816998) (not e!4159248))))

(assert (=> b!6907642 (= res!2816998 lt!2467824)))

(declare-fun b!6907643 () Bool)

(assert (=> b!6907643 (= e!4159242 (nullable!6719 r1!6342))))

(declare-fun b!6907644 () Bool)

(assert (=> b!6907644 (= e!4159247 e!4159245)))

(declare-fun res!2817000 () Bool)

(assert (=> b!6907644 (=> (not res!2817000) (not e!4159245))))

(assert (=> b!6907644 (= res!2817000 (not lt!2467824))))

(declare-fun b!6907645 () Bool)

(declare-fun res!2817001 () Bool)

(assert (=> b!6907645 (=> res!2817001 e!4159247)))

(assert (=> b!6907645 (= res!2817001 (not ((_ is ElementMatch!16879) r1!6342)))))

(assert (=> b!6907645 (= e!4159246 e!4159247)))

(declare-fun b!6907646 () Bool)

(assert (=> b!6907646 (= e!4159244 (not (= (head!13852 (_1!37049 lt!2467760)) (c!1283141 r1!6342))))))

(declare-fun b!6907647 () Bool)

(declare-fun res!2816995 () Bool)

(assert (=> b!6907647 (=> (not res!2816995) (not e!4159248))))

(assert (=> b!6907647 (= res!2816995 (not call!628093))))

(declare-fun bm!628088 () Bool)

(assert (=> bm!628088 (= call!628093 (isEmpty!38752 (_1!37049 lt!2467760)))))

(assert (= (and d!2162937 c!1283227) b!6907643))

(assert (= (and d!2162937 (not c!1283227)) b!6907639))

(assert (= (and d!2162937 c!1283229) b!6907636))

(assert (= (and d!2162937 (not c!1283229)) b!6907637))

(assert (= (and b!6907637 c!1283228) b!6907638))

(assert (= (and b!6907637 (not c!1283228)) b!6907645))

(assert (= (and b!6907645 (not res!2817001)) b!6907642))

(assert (= (and b!6907642 res!2816998) b!6907647))

(assert (= (and b!6907647 res!2816995) b!6907640))

(assert (= (and b!6907640 res!2816997) b!6907641))

(assert (= (and b!6907642 (not res!2816996)) b!6907644))

(assert (= (and b!6907644 res!2817000) b!6907635))

(assert (= (and b!6907635 (not res!2816999)) b!6907634))

(assert (= (and b!6907634 (not res!2817002)) b!6907646))

(assert (= (or b!6907636 b!6907635 b!6907647) bm!628088))

(assert (=> bm!628088 m!7623374))

(declare-fun m!7623556 () Bool)

(assert (=> b!6907643 m!7623556))

(declare-fun m!7623558 () Bool)

(assert (=> b!6907641 m!7623558))

(assert (=> b!6907646 m!7623558))

(declare-fun m!7623560 () Bool)

(assert (=> b!6907634 m!7623560))

(assert (=> b!6907634 m!7623560))

(declare-fun m!7623562 () Bool)

(assert (=> b!6907634 m!7623562))

(assert (=> d!2162937 m!7623374))

(assert (=> d!2162937 m!7623278))

(assert (=> b!6907640 m!7623560))

(assert (=> b!6907640 m!7623560))

(assert (=> b!6907640 m!7623562))

(assert (=> b!6907639 m!7623558))

(assert (=> b!6907639 m!7623558))

(declare-fun m!7623564 () Bool)

(assert (=> b!6907639 m!7623564))

(assert (=> b!6907639 m!7623560))

(assert (=> b!6907639 m!7623564))

(assert (=> b!6907639 m!7623560))

(declare-fun m!7623566 () Bool)

(assert (=> b!6907639 m!7623566))

(assert (=> b!6907264 d!2162937))

(declare-fun bs!1843965 () Bool)

(declare-fun d!2162939 () Bool)

(assert (= bs!1843965 (and d!2162939 b!6907251)))

(declare-fun lambda!392421 () Int)

(assert (=> bs!1843965 (= (and (= (_1!37049 lt!2467767) lt!2467782) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392421 lambda!392389))))

(declare-fun bs!1843966 () Bool)

(assert (= bs!1843966 (and d!2162939 d!2162895)))

(assert (=> bs!1843966 (not (= lambda!392421 lambda!392406))))

(declare-fun bs!1843967 () Bool)

(assert (= bs!1843967 (and d!2162939 b!6907555)))

(assert (=> bs!1843967 (not (= lambda!392421 lambda!392409))))

(declare-fun bs!1843968 () Bool)

(assert (= bs!1843968 (and d!2162939 b!6907264)))

(assert (=> bs!1843968 (not (= lambda!392421 lambda!392388))))

(assert (=> bs!1843968 (= lambda!392421 lambda!392387)))

(declare-fun bs!1843969 () Bool)

(assert (= bs!1843969 (and d!2162939 b!6907258)))

(assert (=> bs!1843969 (not (= lambda!392421 lambda!392386))))

(assert (=> bs!1843966 (= (and (= (_1!37049 lt!2467767) s!14361) (= r1!6342 lt!2467776) (= r2!6280 r3!135)) (= lambda!392421 lambda!392403))))

(assert (=> bs!1843965 (not (= lambda!392421 lambda!392390))))

(declare-fun bs!1843970 () Bool)

(assert (= bs!1843970 (and d!2162939 b!6907353)))

(assert (=> bs!1843970 (not (= lambda!392421 lambda!392396))))

(declare-fun bs!1843971 () Bool)

(assert (= bs!1843971 (and d!2162939 b!6907386)))

(assert (=> bs!1843971 (not (= lambda!392421 lambda!392398))))

(declare-fun bs!1843972 () Bool)

(assert (= bs!1843972 (and d!2162939 d!2162909)))

(assert (=> bs!1843972 (= (and (= (_1!37049 lt!2467767) s!14361) (= r1!6342 lt!2467776) (= r2!6280 r3!135)) (= lambda!392421 lambda!392417))))

(assert (=> bs!1843969 (= (and (= (_1!37049 lt!2467767) s!14361) (= r1!6342 lt!2467776) (= r2!6280 r3!135)) (= lambda!392421 lambda!392385))))

(declare-fun bs!1843973 () Bool)

(assert (= bs!1843973 (and d!2162939 b!6907558)))

(assert (=> bs!1843973 (not (= lambda!392421 lambda!392410))))

(declare-fun bs!1843974 () Bool)

(assert (= bs!1843974 (and d!2162939 b!6907350)))

(assert (=> bs!1843974 (not (= lambda!392421 lambda!392395))))

(declare-fun bs!1843975 () Bool)

(assert (= bs!1843975 (and d!2162939 b!6907383)))

(assert (=> bs!1843975 (not (= lambda!392421 lambda!392397))))

(assert (=> d!2162939 true))

(assert (=> d!2162939 true))

(assert (=> d!2162939 true))

(declare-fun lambda!392422 () Int)

(assert (=> bs!1843965 (not (= lambda!392422 lambda!392389))))

(assert (=> bs!1843966 (= (and (= (_1!37049 lt!2467767) s!14361) (= r1!6342 lt!2467776) (= r2!6280 r3!135)) (= lambda!392422 lambda!392406))))

(assert (=> bs!1843967 (not (= lambda!392422 lambda!392409))))

(assert (=> bs!1843968 (= lambda!392422 lambda!392388)))

(declare-fun bs!1843976 () Bool)

(assert (= bs!1843976 d!2162939))

(assert (=> bs!1843976 (not (= lambda!392422 lambda!392421))))

(assert (=> bs!1843968 (not (= lambda!392422 lambda!392387))))

(assert (=> bs!1843969 (= (and (= (_1!37049 lt!2467767) s!14361) (= r1!6342 lt!2467776) (= r2!6280 r3!135)) (= lambda!392422 lambda!392386))))

(assert (=> bs!1843966 (not (= lambda!392422 lambda!392403))))

(assert (=> bs!1843965 (= (and (= (_1!37049 lt!2467767) lt!2467782) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392422 lambda!392390))))

(assert (=> bs!1843970 (= (and (= (_1!37049 lt!2467767) (_1!37049 lt!2467760)) (= r1!6342 (regOne!34270 r1!6342)) (= r2!6280 (regTwo!34270 r1!6342))) (= lambda!392422 lambda!392396))))

(assert (=> bs!1843971 (= (and (= (_1!37049 lt!2467767) (_2!37049 lt!2467760)) (= r1!6342 (regOne!34270 r2!6280)) (= r2!6280 (regTwo!34270 r2!6280))) (= lambda!392422 lambda!392398))))

(assert (=> bs!1843972 (not (= lambda!392422 lambda!392417))))

(assert (=> bs!1843969 (not (= lambda!392422 lambda!392385))))

(assert (=> bs!1843973 (= (and (= r1!6342 (regOne!34270 lt!2467776)) (= r2!6280 (regTwo!34270 lt!2467776))) (= lambda!392422 lambda!392410))))

(assert (=> bs!1843974 (not (= lambda!392422 lambda!392395))))

(assert (=> bs!1843975 (not (= lambda!392422 lambda!392397))))

(assert (=> d!2162939 true))

(assert (=> d!2162939 true))

(assert (=> d!2162939 true))

(assert (=> d!2162939 (= (Exists!3887 lambda!392421) (Exists!3887 lambda!392422))))

(declare-fun lt!2467831 () Unit!160494)

(assert (=> d!2162939 (= lt!2467831 (choose!51438 r1!6342 r2!6280 (_1!37049 lt!2467767)))))

(assert (=> d!2162939 (validRegex!8587 r1!6342)))

(assert (=> d!2162939 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2360 r1!6342 r2!6280 (_1!37049 lt!2467767)) lt!2467831)))

(declare-fun m!7623574 () Bool)

(assert (=> bs!1843976 m!7623574))

(declare-fun m!7623576 () Bool)

(assert (=> bs!1843976 m!7623576))

(declare-fun m!7623578 () Bool)

(assert (=> bs!1843976 m!7623578))

(assert (=> bs!1843976 m!7623278))

(assert (=> b!6907264 d!2162939))

(declare-fun b!6907675 () Bool)

(declare-fun e!4159266 () Option!16658)

(declare-fun e!4159265 () Option!16658)

(assert (=> b!6907675 (= e!4159266 e!4159265)))

(declare-fun c!1283237 () Bool)

(assert (=> b!6907675 (= c!1283237 ((_ is Nil!66512) (_1!37049 lt!2467767)))))

(declare-fun b!6907676 () Bool)

(declare-fun e!4159268 () Bool)

(assert (=> b!6907676 (= e!4159268 (matchR!9024 r2!6280 (_1!37049 lt!2467767)))))

(declare-fun b!6907678 () Bool)

(declare-fun lt!2467837 () Unit!160494)

(declare-fun lt!2467836 () Unit!160494)

(assert (=> b!6907678 (= lt!2467837 lt!2467836)))

(assert (=> b!6907678 (= (++!14932 (++!14932 Nil!66512 (Cons!66512 (h!72960 (_1!37049 lt!2467767)) Nil!66512)) (t!380379 (_1!37049 lt!2467767))) (_1!37049 lt!2467767))))

(assert (=> b!6907678 (= lt!2467836 (lemmaMoveElementToOtherListKeepsConcatEq!2806 Nil!66512 (h!72960 (_1!37049 lt!2467767)) (t!380379 (_1!37049 lt!2467767)) (_1!37049 lt!2467767)))))

(assert (=> b!6907678 (= e!4159265 (findConcatSeparation!3072 r1!6342 r2!6280 (++!14932 Nil!66512 (Cons!66512 (h!72960 (_1!37049 lt!2467767)) Nil!66512)) (t!380379 (_1!37049 lt!2467767)) (_1!37049 lt!2467767)))))

(declare-fun b!6907679 () Bool)

(assert (=> b!6907679 (= e!4159266 (Some!16657 (tuple2!67493 Nil!66512 (_1!37049 lt!2467767))))))

(declare-fun b!6907680 () Bool)

(declare-fun res!2817019 () Bool)

(declare-fun e!4159264 () Bool)

(assert (=> b!6907680 (=> (not res!2817019) (not e!4159264))))

(declare-fun lt!2467835 () Option!16658)

(assert (=> b!6907680 (= res!2817019 (matchR!9024 r1!6342 (_1!37049 (get!23269 lt!2467835))))))

(declare-fun b!6907681 () Bool)

(declare-fun e!4159267 () Bool)

(assert (=> b!6907681 (= e!4159267 (not (isDefined!13361 lt!2467835)))))

(declare-fun b!6907682 () Bool)

(assert (=> b!6907682 (= e!4159264 (= (++!14932 (_1!37049 (get!23269 lt!2467835)) (_2!37049 (get!23269 lt!2467835))) (_1!37049 lt!2467767)))))

(declare-fun b!6907683 () Bool)

(assert (=> b!6907683 (= e!4159265 None!16657)))

(declare-fun b!6907677 () Bool)

(declare-fun res!2817021 () Bool)

(assert (=> b!6907677 (=> (not res!2817021) (not e!4159264))))

(assert (=> b!6907677 (= res!2817021 (matchR!9024 r2!6280 (_2!37049 (get!23269 lt!2467835))))))

(declare-fun d!2162941 () Bool)

(assert (=> d!2162941 e!4159267))

(declare-fun res!2817020 () Bool)

(assert (=> d!2162941 (=> res!2817020 e!4159267)))

(assert (=> d!2162941 (= res!2817020 e!4159264)))

(declare-fun res!2817018 () Bool)

(assert (=> d!2162941 (=> (not res!2817018) (not e!4159264))))

(assert (=> d!2162941 (= res!2817018 (isDefined!13361 lt!2467835))))

(assert (=> d!2162941 (= lt!2467835 e!4159266)))

(declare-fun c!1283236 () Bool)

(assert (=> d!2162941 (= c!1283236 e!4159268)))

(declare-fun res!2817022 () Bool)

(assert (=> d!2162941 (=> (not res!2817022) (not e!4159268))))

(assert (=> d!2162941 (= res!2817022 (matchR!9024 r1!6342 Nil!66512))))

(assert (=> d!2162941 (validRegex!8587 r1!6342)))

(assert (=> d!2162941 (= (findConcatSeparation!3072 r1!6342 r2!6280 Nil!66512 (_1!37049 lt!2467767) (_1!37049 lt!2467767)) lt!2467835)))

(assert (= (and d!2162941 res!2817022) b!6907676))

(assert (= (and d!2162941 c!1283236) b!6907679))

(assert (= (and d!2162941 (not c!1283236)) b!6907675))

(assert (= (and b!6907675 c!1283237) b!6907683))

(assert (= (and b!6907675 (not c!1283237)) b!6907678))

(assert (= (and d!2162941 res!2817018) b!6907680))

(assert (= (and b!6907680 res!2817019) b!6907677))

(assert (= (and b!6907677 res!2817021) b!6907682))

(assert (= (and d!2162941 (not res!2817020)) b!6907681))

(declare-fun m!7623596 () Bool)

(assert (=> b!6907676 m!7623596))

(declare-fun m!7623598 () Bool)

(assert (=> d!2162941 m!7623598))

(declare-fun m!7623600 () Bool)

(assert (=> d!2162941 m!7623600))

(assert (=> d!2162941 m!7623278))

(assert (=> b!6907681 m!7623598))

(declare-fun m!7623602 () Bool)

(assert (=> b!6907677 m!7623602))

(declare-fun m!7623604 () Bool)

(assert (=> b!6907677 m!7623604))

(assert (=> b!6907682 m!7623602))

(declare-fun m!7623606 () Bool)

(assert (=> b!6907682 m!7623606))

(assert (=> b!6907680 m!7623602))

(declare-fun m!7623608 () Bool)

(assert (=> b!6907680 m!7623608))

(declare-fun m!7623610 () Bool)

(assert (=> b!6907678 m!7623610))

(assert (=> b!6907678 m!7623610))

(declare-fun m!7623612 () Bool)

(assert (=> b!6907678 m!7623612))

(declare-fun m!7623614 () Bool)

(assert (=> b!6907678 m!7623614))

(assert (=> b!6907678 m!7623610))

(declare-fun m!7623616 () Bool)

(assert (=> b!6907678 m!7623616))

(assert (=> b!6907264 d!2162941))

(declare-fun d!2162945 () Bool)

(assert (=> d!2162945 (= (Exists!3887 lambda!392388) (choose!51441 lambda!392388))))

(declare-fun bs!1843977 () Bool)

(assert (= bs!1843977 d!2162945))

(declare-fun m!7623618 () Bool)

(assert (=> bs!1843977 m!7623618))

(assert (=> b!6907264 d!2162945))

(declare-fun d!2162947 () Bool)

(assert (=> d!2162947 (= (isDefined!13361 lt!2467766) (not (isEmpty!38755 lt!2467766)))))

(declare-fun bs!1843978 () Bool)

(assert (= bs!1843978 d!2162947))

(declare-fun m!7623620 () Bool)

(assert (=> bs!1843978 m!7623620))

(assert (=> b!6907264 d!2162947))

(declare-fun d!2162949 () Bool)

(assert (=> d!2162949 (= (Exists!3887 lambda!392387) (choose!51441 lambda!392387))))

(declare-fun bs!1843979 () Bool)

(assert (= bs!1843979 d!2162949))

(declare-fun m!7623622 () Bool)

(assert (=> bs!1843979 m!7623622))

(assert (=> b!6907264 d!2162949))

(declare-fun bs!1843980 () Bool)

(declare-fun d!2162951 () Bool)

(assert (= bs!1843980 (and d!2162951 d!2162939)))

(declare-fun lambda!392423 () Int)

(assert (=> bs!1843980 (not (= lambda!392423 lambda!392422))))

(declare-fun bs!1843981 () Bool)

(assert (= bs!1843981 (and d!2162951 b!6907251)))

(assert (=> bs!1843981 (= (and (= (_1!37049 lt!2467767) lt!2467782) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392423 lambda!392389))))

(declare-fun bs!1843982 () Bool)

(assert (= bs!1843982 (and d!2162951 d!2162895)))

(assert (=> bs!1843982 (not (= lambda!392423 lambda!392406))))

(declare-fun bs!1843983 () Bool)

(assert (= bs!1843983 (and d!2162951 b!6907555)))

(assert (=> bs!1843983 (not (= lambda!392423 lambda!392409))))

(declare-fun bs!1843984 () Bool)

(assert (= bs!1843984 (and d!2162951 b!6907264)))

(assert (=> bs!1843984 (not (= lambda!392423 lambda!392388))))

(assert (=> bs!1843980 (= lambda!392423 lambda!392421)))

(assert (=> bs!1843984 (= lambda!392423 lambda!392387)))

(declare-fun bs!1843985 () Bool)

(assert (= bs!1843985 (and d!2162951 b!6907258)))

(assert (=> bs!1843985 (not (= lambda!392423 lambda!392386))))

(assert (=> bs!1843982 (= (and (= (_1!37049 lt!2467767) s!14361) (= r1!6342 lt!2467776) (= r2!6280 r3!135)) (= lambda!392423 lambda!392403))))

(assert (=> bs!1843981 (not (= lambda!392423 lambda!392390))))

(declare-fun bs!1843986 () Bool)

(assert (= bs!1843986 (and d!2162951 b!6907353)))

(assert (=> bs!1843986 (not (= lambda!392423 lambda!392396))))

(declare-fun bs!1843987 () Bool)

(assert (= bs!1843987 (and d!2162951 b!6907386)))

(assert (=> bs!1843987 (not (= lambda!392423 lambda!392398))))

(declare-fun bs!1843988 () Bool)

(assert (= bs!1843988 (and d!2162951 d!2162909)))

(assert (=> bs!1843988 (= (and (= (_1!37049 lt!2467767) s!14361) (= r1!6342 lt!2467776) (= r2!6280 r3!135)) (= lambda!392423 lambda!392417))))

(assert (=> bs!1843985 (= (and (= (_1!37049 lt!2467767) s!14361) (= r1!6342 lt!2467776) (= r2!6280 r3!135)) (= lambda!392423 lambda!392385))))

(declare-fun bs!1843989 () Bool)

(assert (= bs!1843989 (and d!2162951 b!6907558)))

(assert (=> bs!1843989 (not (= lambda!392423 lambda!392410))))

(declare-fun bs!1843990 () Bool)

(assert (= bs!1843990 (and d!2162951 b!6907350)))

(assert (=> bs!1843990 (not (= lambda!392423 lambda!392395))))

(declare-fun bs!1843991 () Bool)

(assert (= bs!1843991 (and d!2162951 b!6907383)))

(assert (=> bs!1843991 (not (= lambda!392423 lambda!392397))))

(assert (=> d!2162951 true))

(assert (=> d!2162951 true))

(assert (=> d!2162951 true))

(assert (=> d!2162951 (= (isDefined!13361 (findConcatSeparation!3072 r1!6342 r2!6280 Nil!66512 (_1!37049 lt!2467767) (_1!37049 lt!2467767))) (Exists!3887 lambda!392423))))

(declare-fun lt!2467838 () Unit!160494)

(assert (=> d!2162951 (= lt!2467838 (choose!51440 r1!6342 r2!6280 (_1!37049 lt!2467767)))))

(assert (=> d!2162951 (validRegex!8587 r1!6342)))

(assert (=> d!2162951 (= (lemmaFindConcatSeparationEquivalentToExists!2834 r1!6342 r2!6280 (_1!37049 lt!2467767)) lt!2467838)))

(declare-fun bs!1843992 () Bool)

(assert (= bs!1843992 d!2162951))

(declare-fun m!7623624 () Bool)

(assert (=> bs!1843992 m!7623624))

(assert (=> bs!1843992 m!7623278))

(assert (=> bs!1843992 m!7623316))

(declare-fun m!7623626 () Bool)

(assert (=> bs!1843992 m!7623626))

(assert (=> bs!1843992 m!7623316))

(declare-fun m!7623628 () Bool)

(assert (=> bs!1843992 m!7623628))

(assert (=> b!6907264 d!2162951))

(declare-fun b!6907684 () Bool)

(declare-fun e!4159269 () Bool)

(declare-fun call!628096 () Bool)

(assert (=> b!6907684 (= e!4159269 call!628096)))

(declare-fun bm!628089 () Bool)

(declare-fun c!1283239 () Bool)

(assert (=> bm!628089 (= call!628096 (validRegex!8587 (ite c!1283239 (regOne!34271 r1!6342) (regTwo!34270 r1!6342))))))

(declare-fun b!6907685 () Bool)

(declare-fun e!4159275 () Bool)

(declare-fun call!628094 () Bool)

(assert (=> b!6907685 (= e!4159275 call!628094)))

(declare-fun c!1283238 () Bool)

(declare-fun bm!628090 () Bool)

(assert (=> bm!628090 (= call!628094 (validRegex!8587 (ite c!1283238 (reg!17208 r1!6342) (ite c!1283239 (regTwo!34271 r1!6342) (regOne!34270 r1!6342)))))))

(declare-fun b!6907686 () Bool)

(declare-fun e!4159273 () Bool)

(declare-fun e!4159271 () Bool)

(assert (=> b!6907686 (= e!4159273 e!4159271)))

(assert (=> b!6907686 (= c!1283239 ((_ is Union!16879) r1!6342))))

(declare-fun b!6907687 () Bool)

(declare-fun e!4159270 () Bool)

(declare-fun call!628095 () Bool)

(assert (=> b!6907687 (= e!4159270 call!628095)))

(declare-fun b!6907689 () Bool)

(declare-fun e!4159274 () Bool)

(assert (=> b!6907689 (= e!4159274 e!4159269)))

(declare-fun res!2817027 () Bool)

(assert (=> b!6907689 (=> (not res!2817027) (not e!4159269))))

(assert (=> b!6907689 (= res!2817027 call!628095)))

(declare-fun b!6907690 () Bool)

(declare-fun e!4159272 () Bool)

(assert (=> b!6907690 (= e!4159272 e!4159273)))

(assert (=> b!6907690 (= c!1283238 ((_ is Star!16879) r1!6342))))

(declare-fun b!6907691 () Bool)

(declare-fun res!2817024 () Bool)

(assert (=> b!6907691 (=> res!2817024 e!4159274)))

(assert (=> b!6907691 (= res!2817024 (not ((_ is Concat!25724) r1!6342)))))

(assert (=> b!6907691 (= e!4159271 e!4159274)))

(declare-fun b!6907692 () Bool)

(declare-fun res!2817025 () Bool)

(assert (=> b!6907692 (=> (not res!2817025) (not e!4159270))))

(assert (=> b!6907692 (= res!2817025 call!628096)))

(assert (=> b!6907692 (= e!4159271 e!4159270)))

(declare-fun bm!628091 () Bool)

(assert (=> bm!628091 (= call!628095 call!628094)))

(declare-fun b!6907688 () Bool)

(assert (=> b!6907688 (= e!4159273 e!4159275)))

(declare-fun res!2817026 () Bool)

(assert (=> b!6907688 (= res!2817026 (not (nullable!6719 (reg!17208 r1!6342))))))

(assert (=> b!6907688 (=> (not res!2817026) (not e!4159275))))

(declare-fun d!2162953 () Bool)

(declare-fun res!2817023 () Bool)

(assert (=> d!2162953 (=> res!2817023 e!4159272)))

(assert (=> d!2162953 (= res!2817023 ((_ is ElementMatch!16879) r1!6342))))

(assert (=> d!2162953 (= (validRegex!8587 r1!6342) e!4159272)))

(assert (= (and d!2162953 (not res!2817023)) b!6907690))

(assert (= (and b!6907690 c!1283238) b!6907688))

(assert (= (and b!6907690 (not c!1283238)) b!6907686))

(assert (= (and b!6907688 res!2817026) b!6907685))

(assert (= (and b!6907686 c!1283239) b!6907692))

(assert (= (and b!6907686 (not c!1283239)) b!6907691))

(assert (= (and b!6907692 res!2817025) b!6907687))

(assert (= (and b!6907691 (not res!2817024)) b!6907689))

(assert (= (and b!6907689 res!2817027) b!6907684))

(assert (= (or b!6907692 b!6907684) bm!628089))

(assert (= (or b!6907687 b!6907689) bm!628091))

(assert (= (or b!6907685 bm!628091) bm!628090))

(declare-fun m!7623630 () Bool)

(assert (=> bm!628089 m!7623630))

(declare-fun m!7623632 () Bool)

(assert (=> bm!628090 m!7623632))

(declare-fun m!7623634 () Bool)

(assert (=> b!6907688 m!7623634))

(assert (=> start!665018 d!2162953))

(declare-fun b!6907693 () Bool)

(declare-fun e!4159276 () Bool)

(declare-fun call!628099 () Bool)

(assert (=> b!6907693 (= e!4159276 call!628099)))

(declare-fun bm!628092 () Bool)

(declare-fun c!1283241 () Bool)

(assert (=> bm!628092 (= call!628099 (validRegex!8587 (ite c!1283241 (regOne!34271 r3!135) (regTwo!34270 r3!135))))))

(declare-fun b!6907694 () Bool)

(declare-fun e!4159282 () Bool)

(declare-fun call!628097 () Bool)

(assert (=> b!6907694 (= e!4159282 call!628097)))

(declare-fun bm!628093 () Bool)

(declare-fun c!1283240 () Bool)

(assert (=> bm!628093 (= call!628097 (validRegex!8587 (ite c!1283240 (reg!17208 r3!135) (ite c!1283241 (regTwo!34271 r3!135) (regOne!34270 r3!135)))))))

(declare-fun b!6907695 () Bool)

(declare-fun e!4159280 () Bool)

(declare-fun e!4159278 () Bool)

(assert (=> b!6907695 (= e!4159280 e!4159278)))

(assert (=> b!6907695 (= c!1283241 ((_ is Union!16879) r3!135))))

(declare-fun b!6907696 () Bool)

(declare-fun e!4159277 () Bool)

(declare-fun call!628098 () Bool)

(assert (=> b!6907696 (= e!4159277 call!628098)))

(declare-fun b!6907698 () Bool)

(declare-fun e!4159281 () Bool)

(assert (=> b!6907698 (= e!4159281 e!4159276)))

(declare-fun res!2817032 () Bool)

(assert (=> b!6907698 (=> (not res!2817032) (not e!4159276))))

(assert (=> b!6907698 (= res!2817032 call!628098)))

(declare-fun b!6907699 () Bool)

(declare-fun e!4159279 () Bool)

(assert (=> b!6907699 (= e!4159279 e!4159280)))

(assert (=> b!6907699 (= c!1283240 ((_ is Star!16879) r3!135))))

(declare-fun b!6907700 () Bool)

(declare-fun res!2817029 () Bool)

(assert (=> b!6907700 (=> res!2817029 e!4159281)))

(assert (=> b!6907700 (= res!2817029 (not ((_ is Concat!25724) r3!135)))))

(assert (=> b!6907700 (= e!4159278 e!4159281)))

(declare-fun b!6907701 () Bool)

(declare-fun res!2817030 () Bool)

(assert (=> b!6907701 (=> (not res!2817030) (not e!4159277))))

(assert (=> b!6907701 (= res!2817030 call!628099)))

(assert (=> b!6907701 (= e!4159278 e!4159277)))

(declare-fun bm!628094 () Bool)

(assert (=> bm!628094 (= call!628098 call!628097)))

(declare-fun b!6907697 () Bool)

(assert (=> b!6907697 (= e!4159280 e!4159282)))

(declare-fun res!2817031 () Bool)

(assert (=> b!6907697 (= res!2817031 (not (nullable!6719 (reg!17208 r3!135))))))

(assert (=> b!6907697 (=> (not res!2817031) (not e!4159282))))

(declare-fun d!2162955 () Bool)

(declare-fun res!2817028 () Bool)

(assert (=> d!2162955 (=> res!2817028 e!4159279)))

(assert (=> d!2162955 (= res!2817028 ((_ is ElementMatch!16879) r3!135))))

(assert (=> d!2162955 (= (validRegex!8587 r3!135) e!4159279)))

(assert (= (and d!2162955 (not res!2817028)) b!6907699))

(assert (= (and b!6907699 c!1283240) b!6907697))

(assert (= (and b!6907699 (not c!1283240)) b!6907695))

(assert (= (and b!6907697 res!2817031) b!6907694))

(assert (= (and b!6907695 c!1283241) b!6907701))

(assert (= (and b!6907695 (not c!1283241)) b!6907700))

(assert (= (and b!6907701 res!2817030) b!6907696))

(assert (= (and b!6907700 (not res!2817029)) b!6907698))

(assert (= (and b!6907698 res!2817032) b!6907693))

(assert (= (or b!6907701 b!6907693) bm!628092))

(assert (= (or b!6907696 b!6907698) bm!628094))

(assert (= (or b!6907694 bm!628094) bm!628093))

(declare-fun m!7623636 () Bool)

(assert (=> bm!628092 m!7623636))

(declare-fun m!7623638 () Bool)

(assert (=> bm!628093 m!7623638))

(declare-fun m!7623640 () Bool)

(assert (=> b!6907697 m!7623640))

(assert (=> b!6907267 d!2162955))

(declare-fun d!2162957 () Bool)

(assert (=> d!2162957 (= (Exists!3887 lambda!392390) (choose!51441 lambda!392390))))

(declare-fun bs!1843993 () Bool)

(assert (= bs!1843993 d!2162957))

(declare-fun m!7623642 () Bool)

(assert (=> bs!1843993 m!7623642))

(assert (=> b!6907251 d!2162957))

(declare-fun b!6907708 () Bool)

(declare-fun res!2817038 () Bool)

(declare-fun e!4159285 () Bool)

(assert (=> b!6907708 (=> (not res!2817038) (not e!4159285))))

(declare-fun lt!2467841 () List!66636)

(assert (=> b!6907708 (= res!2817038 (= (size!40762 lt!2467841) (+ (size!40762 (_2!37049 lt!2467760)) (size!40762 (_2!37049 lt!2467767)))))))

(declare-fun b!6907706 () Bool)

(declare-fun e!4159286 () List!66636)

(assert (=> b!6907706 (= e!4159286 (_2!37049 lt!2467767))))

(declare-fun d!2162959 () Bool)

(assert (=> d!2162959 e!4159285))

(declare-fun res!2817037 () Bool)

(assert (=> d!2162959 (=> (not res!2817037) (not e!4159285))))

(assert (=> d!2162959 (= res!2817037 (= (content!13065 lt!2467841) ((_ map or) (content!13065 (_2!37049 lt!2467760)) (content!13065 (_2!37049 lt!2467767)))))))

(assert (=> d!2162959 (= lt!2467841 e!4159286)))

(declare-fun c!1283242 () Bool)

(assert (=> d!2162959 (= c!1283242 ((_ is Nil!66512) (_2!37049 lt!2467760)))))

(assert (=> d!2162959 (= (++!14932 (_2!37049 lt!2467760) (_2!37049 lt!2467767)) lt!2467841)))

(declare-fun b!6907709 () Bool)

(assert (=> b!6907709 (= e!4159285 (or (not (= (_2!37049 lt!2467767) Nil!66512)) (= lt!2467841 (_2!37049 lt!2467760))))))

(declare-fun b!6907707 () Bool)

(assert (=> b!6907707 (= e!4159286 (Cons!66512 (h!72960 (_2!37049 lt!2467760)) (++!14932 (t!380379 (_2!37049 lt!2467760)) (_2!37049 lt!2467767))))))

(assert (= (and d!2162959 c!1283242) b!6907706))

(assert (= (and d!2162959 (not c!1283242)) b!6907707))

(assert (= (and d!2162959 res!2817037) b!6907708))

(assert (= (and b!6907708 res!2817038) b!6907709))

(declare-fun m!7623644 () Bool)

(assert (=> b!6907708 m!7623644))

(assert (=> b!6907708 m!7623364))

(assert (=> b!6907708 m!7623386))

(declare-fun m!7623646 () Bool)

(assert (=> d!2162959 m!7623646))

(assert (=> d!2162959 m!7623370))

(assert (=> d!2162959 m!7623392))

(declare-fun m!7623648 () Bool)

(assert (=> b!6907707 m!7623648))

(assert (=> b!6907251 d!2162959))

(declare-fun d!2162961 () Bool)

(assert (=> d!2162961 (= (Exists!3887 lambda!392389) (choose!51441 lambda!392389))))

(declare-fun bs!1843994 () Bool)

(assert (= bs!1843994 d!2162961))

(declare-fun m!7623650 () Bool)

(assert (=> bs!1843994 m!7623650))

(assert (=> b!6907251 d!2162961))

(declare-fun d!2162963 () Bool)

(assert (=> d!2162963 (= (isDefined!13361 (findConcatSeparation!3072 r2!6280 r3!135 Nil!66512 lt!2467782 lt!2467782)) (not (isEmpty!38755 (findConcatSeparation!3072 r2!6280 r3!135 Nil!66512 lt!2467782 lt!2467782))))))

(declare-fun bs!1843995 () Bool)

(assert (= bs!1843995 d!2162963))

(assert (=> bs!1843995 m!7623284))

(declare-fun m!7623652 () Bool)

(assert (=> bs!1843995 m!7623652))

(assert (=> b!6907251 d!2162963))

(declare-fun d!2162965 () Bool)

(assert (=> d!2162965 (= (matchR!9024 lt!2467762 lt!2467782) (matchRSpec!3942 lt!2467762 lt!2467782))))

(declare-fun lt!2467842 () Unit!160494)

(assert (=> d!2162965 (= lt!2467842 (choose!51436 lt!2467762 lt!2467782))))

(assert (=> d!2162965 (validRegex!8587 lt!2467762)))

(assert (=> d!2162965 (= (mainMatchTheorem!3942 lt!2467762 lt!2467782) lt!2467842)))

(declare-fun bs!1843996 () Bool)

(assert (= bs!1843996 d!2162965))

(assert (=> bs!1843996 m!7623288))

(assert (=> bs!1843996 m!7623294))

(declare-fun m!7623654 () Bool)

(assert (=> bs!1843996 m!7623654))

(declare-fun m!7623656 () Bool)

(assert (=> bs!1843996 m!7623656))

(assert (=> b!6907251 d!2162965))

(declare-fun d!2162967 () Bool)

(assert (=> d!2162967 (isDefined!13361 (findConcatSeparation!3072 r2!6280 r3!135 Nil!66512 lt!2467782 lt!2467782))))

(declare-fun lt!2467846 () Unit!160494)

(declare-fun choose!51444 (Regex!16879 Regex!16879 List!66636 List!66636 List!66636 List!66636 List!66636) Unit!160494)

(assert (=> d!2162967 (= lt!2467846 (choose!51444 r2!6280 r3!135 (_2!37049 lt!2467760) (_2!37049 lt!2467767) lt!2467782 Nil!66512 lt!2467782))))

(assert (=> d!2162967 (validRegex!8587 r2!6280)))

(assert (=> d!2162967 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!70 r2!6280 r3!135 (_2!37049 lt!2467760) (_2!37049 lt!2467767) lt!2467782 Nil!66512 lt!2467782) lt!2467846)))

(declare-fun bs!1844005 () Bool)

(assert (= bs!1844005 d!2162967))

(assert (=> bs!1844005 m!7623284))

(assert (=> bs!1844005 m!7623284))

(assert (=> bs!1844005 m!7623286))

(declare-fun m!7623658 () Bool)

(assert (=> bs!1844005 m!7623658))

(assert (=> bs!1844005 m!7623274))

(assert (=> b!6907251 d!2162967))

(declare-fun bs!1844006 () Bool)

(declare-fun b!6907717 () Bool)

(assert (= bs!1844006 (and b!6907717 d!2162939)))

(declare-fun lambda!392430 () Int)

(assert (=> bs!1844006 (not (= lambda!392430 lambda!392422))))

(declare-fun bs!1844007 () Bool)

(assert (= bs!1844007 (and b!6907717 b!6907251)))

(assert (=> bs!1844007 (not (= lambda!392430 lambda!392389))))

(declare-fun bs!1844008 () Bool)

(assert (= bs!1844008 (and b!6907717 d!2162895)))

(assert (=> bs!1844008 (not (= lambda!392430 lambda!392406))))

(declare-fun bs!1844010 () Bool)

(assert (= bs!1844010 (and b!6907717 b!6907555)))

(assert (=> bs!1844010 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= (reg!17208 lt!2467762) (reg!17208 lt!2467776)) (= lt!2467762 lt!2467776)) (= lambda!392430 lambda!392409))))

(declare-fun bs!1844011 () Bool)

(assert (= bs!1844011 (and b!6907717 b!6907264)))

(assert (=> bs!1844011 (not (= lambda!392430 lambda!392388))))

(declare-fun bs!1844012 () Bool)

(assert (= bs!1844012 (and b!6907717 d!2162951)))

(assert (=> bs!1844012 (not (= lambda!392430 lambda!392423))))

(assert (=> bs!1844006 (not (= lambda!392430 lambda!392421))))

(assert (=> bs!1844011 (not (= lambda!392430 lambda!392387))))

(declare-fun bs!1844013 () Bool)

(assert (= bs!1844013 (and b!6907717 b!6907258)))

(assert (=> bs!1844013 (not (= lambda!392430 lambda!392386))))

(assert (=> bs!1844008 (not (= lambda!392430 lambda!392403))))

(assert (=> bs!1844007 (not (= lambda!392430 lambda!392390))))

(declare-fun bs!1844014 () Bool)

(assert (= bs!1844014 (and b!6907717 b!6907353)))

(assert (=> bs!1844014 (not (= lambda!392430 lambda!392396))))

(declare-fun bs!1844015 () Bool)

(assert (= bs!1844015 (and b!6907717 b!6907386)))

(assert (=> bs!1844015 (not (= lambda!392430 lambda!392398))))

(declare-fun bs!1844016 () Bool)

(assert (= bs!1844016 (and b!6907717 d!2162909)))

(assert (=> bs!1844016 (not (= lambda!392430 lambda!392417))))

(assert (=> bs!1844013 (not (= lambda!392430 lambda!392385))))

(declare-fun bs!1844017 () Bool)

(assert (= bs!1844017 (and b!6907717 b!6907558)))

(assert (=> bs!1844017 (not (= lambda!392430 lambda!392410))))

(declare-fun bs!1844018 () Bool)

(assert (= bs!1844018 (and b!6907717 b!6907350)))

(assert (=> bs!1844018 (= (and (= lt!2467782 (_1!37049 lt!2467760)) (= (reg!17208 lt!2467762) (reg!17208 r1!6342)) (= lt!2467762 r1!6342)) (= lambda!392430 lambda!392395))))

(declare-fun bs!1844019 () Bool)

(assert (= bs!1844019 (and b!6907717 b!6907383)))

(assert (=> bs!1844019 (= (and (= lt!2467782 (_2!37049 lt!2467760)) (= (reg!17208 lt!2467762) (reg!17208 r2!6280)) (= lt!2467762 r2!6280)) (= lambda!392430 lambda!392397))))

(assert (=> b!6907717 true))

(assert (=> b!6907717 true))

(declare-fun bs!1844020 () Bool)

(declare-fun b!6907720 () Bool)

(assert (= bs!1844020 (and b!6907720 d!2162939)))

(declare-fun lambda!392431 () Int)

(assert (=> bs!1844020 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= (regOne!34270 lt!2467762) r1!6342) (= (regTwo!34270 lt!2467762) r2!6280)) (= lambda!392431 lambda!392422))))

(declare-fun bs!1844021 () Bool)

(assert (= bs!1844021 (and b!6907720 b!6907717)))

(assert (=> bs!1844021 (not (= lambda!392431 lambda!392430))))

(declare-fun bs!1844022 () Bool)

(assert (= bs!1844022 (and b!6907720 b!6907251)))

(assert (=> bs!1844022 (not (= lambda!392431 lambda!392389))))

(declare-fun bs!1844023 () Bool)

(assert (= bs!1844023 (and b!6907720 d!2162895)))

(assert (=> bs!1844023 (= (and (= lt!2467782 s!14361) (= (regOne!34270 lt!2467762) lt!2467776) (= (regTwo!34270 lt!2467762) r3!135)) (= lambda!392431 lambda!392406))))

(declare-fun bs!1844024 () Bool)

(assert (= bs!1844024 (and b!6907720 b!6907555)))

(assert (=> bs!1844024 (not (= lambda!392431 lambda!392409))))

(declare-fun bs!1844025 () Bool)

(assert (= bs!1844025 (and b!6907720 b!6907264)))

(assert (=> bs!1844025 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= (regOne!34270 lt!2467762) r1!6342) (= (regTwo!34270 lt!2467762) r2!6280)) (= lambda!392431 lambda!392388))))

(declare-fun bs!1844026 () Bool)

(assert (= bs!1844026 (and b!6907720 d!2162951)))

(assert (=> bs!1844026 (not (= lambda!392431 lambda!392423))))

(assert (=> bs!1844020 (not (= lambda!392431 lambda!392421))))

(assert (=> bs!1844025 (not (= lambda!392431 lambda!392387))))

(declare-fun bs!1844027 () Bool)

(assert (= bs!1844027 (and b!6907720 b!6907258)))

(assert (=> bs!1844027 (= (and (= lt!2467782 s!14361) (= (regOne!34270 lt!2467762) lt!2467776) (= (regTwo!34270 lt!2467762) r3!135)) (= lambda!392431 lambda!392386))))

(assert (=> bs!1844023 (not (= lambda!392431 lambda!392403))))

(assert (=> bs!1844022 (= (and (= (regOne!34270 lt!2467762) r2!6280) (= (regTwo!34270 lt!2467762) r3!135)) (= lambda!392431 lambda!392390))))

(declare-fun bs!1844028 () Bool)

(assert (= bs!1844028 (and b!6907720 b!6907353)))

(assert (=> bs!1844028 (= (and (= lt!2467782 (_1!37049 lt!2467760)) (= (regOne!34270 lt!2467762) (regOne!34270 r1!6342)) (= (regTwo!34270 lt!2467762) (regTwo!34270 r1!6342))) (= lambda!392431 lambda!392396))))

(declare-fun bs!1844029 () Bool)

(assert (= bs!1844029 (and b!6907720 b!6907386)))

(assert (=> bs!1844029 (= (and (= lt!2467782 (_2!37049 lt!2467760)) (= (regOne!34270 lt!2467762) (regOne!34270 r2!6280)) (= (regTwo!34270 lt!2467762) (regTwo!34270 r2!6280))) (= lambda!392431 lambda!392398))))

(declare-fun bs!1844030 () Bool)

(assert (= bs!1844030 (and b!6907720 d!2162909)))

(assert (=> bs!1844030 (not (= lambda!392431 lambda!392417))))

(assert (=> bs!1844027 (not (= lambda!392431 lambda!392385))))

(declare-fun bs!1844031 () Bool)

(assert (= bs!1844031 (and b!6907720 b!6907558)))

(assert (=> bs!1844031 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= (regOne!34270 lt!2467762) (regOne!34270 lt!2467776)) (= (regTwo!34270 lt!2467762) (regTwo!34270 lt!2467776))) (= lambda!392431 lambda!392410))))

(declare-fun bs!1844032 () Bool)

(assert (= bs!1844032 (and b!6907720 b!6907350)))

(assert (=> bs!1844032 (not (= lambda!392431 lambda!392395))))

(declare-fun bs!1844034 () Bool)

(assert (= bs!1844034 (and b!6907720 b!6907383)))

(assert (=> bs!1844034 (not (= lambda!392431 lambda!392397))))

(assert (=> b!6907720 true))

(assert (=> b!6907720 true))

(declare-fun b!6907714 () Bool)

(declare-fun e!4159290 () Bool)

(assert (=> b!6907714 (= e!4159290 (= lt!2467782 (Cons!66512 (c!1283141 lt!2467762) Nil!66512)))))

(declare-fun b!6907715 () Bool)

(declare-fun res!2817045 () Bool)

(declare-fun e!4159292 () Bool)

(assert (=> b!6907715 (=> res!2817045 e!4159292)))

(declare-fun call!628100 () Bool)

(assert (=> b!6907715 (= res!2817045 call!628100)))

(declare-fun e!4159291 () Bool)

(assert (=> b!6907715 (= e!4159291 e!4159292)))

(declare-fun b!6907716 () Bool)

(declare-fun e!4159293 () Bool)

(assert (=> b!6907716 (= e!4159293 call!628100)))

(declare-fun b!6907718 () Bool)

(declare-fun e!4159294 () Bool)

(assert (=> b!6907718 (= e!4159294 e!4159291)))

(declare-fun c!1283243 () Bool)

(assert (=> b!6907718 (= c!1283243 ((_ is Star!16879) lt!2467762))))

(declare-fun bm!628095 () Bool)

(assert (=> bm!628095 (= call!628100 (isEmpty!38752 lt!2467782))))

(declare-fun call!628101 () Bool)

(assert (=> b!6907717 (= e!4159292 call!628101)))

(declare-fun d!2162969 () Bool)

(declare-fun c!1283245 () Bool)

(assert (=> d!2162969 (= c!1283245 ((_ is EmptyExpr!16879) lt!2467762))))

(assert (=> d!2162969 (= (matchRSpec!3942 lt!2467762 lt!2467782) e!4159293)))

(declare-fun bm!628096 () Bool)

(assert (=> bm!628096 (= call!628101 (Exists!3887 (ite c!1283243 lambda!392430 lambda!392431)))))

(declare-fun b!6907719 () Bool)

(declare-fun e!4159289 () Bool)

(assert (=> b!6907719 (= e!4159294 e!4159289)))

(declare-fun res!2817044 () Bool)

(assert (=> b!6907719 (= res!2817044 (matchRSpec!3942 (regOne!34271 lt!2467762) lt!2467782))))

(assert (=> b!6907719 (=> res!2817044 e!4159289)))

(assert (=> b!6907720 (= e!4159291 call!628101)))

(declare-fun b!6907721 () Bool)

(declare-fun c!1283244 () Bool)

(assert (=> b!6907721 (= c!1283244 ((_ is Union!16879) lt!2467762))))

(assert (=> b!6907721 (= e!4159290 e!4159294)))

(declare-fun b!6907722 () Bool)

(assert (=> b!6907722 (= e!4159289 (matchRSpec!3942 (regTwo!34271 lt!2467762) lt!2467782))))

(declare-fun b!6907723 () Bool)

(declare-fun e!4159295 () Bool)

(assert (=> b!6907723 (= e!4159293 e!4159295)))

(declare-fun res!2817043 () Bool)

(assert (=> b!6907723 (= res!2817043 (not ((_ is EmptyLang!16879) lt!2467762)))))

(assert (=> b!6907723 (=> (not res!2817043) (not e!4159295))))

(declare-fun b!6907724 () Bool)

(declare-fun c!1283246 () Bool)

(assert (=> b!6907724 (= c!1283246 ((_ is ElementMatch!16879) lt!2467762))))

(assert (=> b!6907724 (= e!4159295 e!4159290)))

(assert (= (and d!2162969 c!1283245) b!6907716))

(assert (= (and d!2162969 (not c!1283245)) b!6907723))

(assert (= (and b!6907723 res!2817043) b!6907724))

(assert (= (and b!6907724 c!1283246) b!6907714))

(assert (= (and b!6907724 (not c!1283246)) b!6907721))

(assert (= (and b!6907721 c!1283244) b!6907719))

(assert (= (and b!6907721 (not c!1283244)) b!6907718))

(assert (= (and b!6907719 (not res!2817044)) b!6907722))

(assert (= (and b!6907718 c!1283243) b!6907715))

(assert (= (and b!6907718 (not c!1283243)) b!6907720))

(assert (= (and b!6907715 (not res!2817045)) b!6907717))

(assert (= (or b!6907717 b!6907720) bm!628096))

(assert (= (or b!6907716 b!6907715) bm!628095))

(declare-fun m!7623702 () Bool)

(assert (=> bm!628095 m!7623702))

(declare-fun m!7623704 () Bool)

(assert (=> bm!628096 m!7623704))

(declare-fun m!7623706 () Bool)

(assert (=> b!6907719 m!7623706))

(declare-fun m!7623708 () Bool)

(assert (=> b!6907722 m!7623708))

(assert (=> b!6907251 d!2162969))

(declare-fun bs!1844043 () Bool)

(declare-fun d!2162979 () Bool)

(assert (= bs!1844043 (and d!2162979 d!2162939)))

(declare-fun lambda!392433 () Int)

(assert (=> bs!1844043 (not (= lambda!392433 lambda!392422))))

(declare-fun bs!1844044 () Bool)

(assert (= bs!1844044 (and d!2162979 b!6907717)))

(assert (=> bs!1844044 (not (= lambda!392433 lambda!392430))))

(declare-fun bs!1844045 () Bool)

(assert (= bs!1844045 (and d!2162979 b!6907251)))

(assert (=> bs!1844045 (= lambda!392433 lambda!392389)))

(declare-fun bs!1844046 () Bool)

(assert (= bs!1844046 (and d!2162979 d!2162895)))

(assert (=> bs!1844046 (not (= lambda!392433 lambda!392406))))

(declare-fun bs!1844047 () Bool)

(assert (= bs!1844047 (and d!2162979 b!6907555)))

(assert (=> bs!1844047 (not (= lambda!392433 lambda!392409))))

(declare-fun bs!1844048 () Bool)

(assert (= bs!1844048 (and d!2162979 b!6907264)))

(assert (=> bs!1844048 (not (= lambda!392433 lambda!392388))))

(assert (=> bs!1844043 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392433 lambda!392421))))

(assert (=> bs!1844048 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392433 lambda!392387))))

(declare-fun bs!1844050 () Bool)

(assert (= bs!1844050 (and d!2162979 b!6907258)))

(assert (=> bs!1844050 (not (= lambda!392433 lambda!392386))))

(assert (=> bs!1844046 (= (and (= lt!2467782 s!14361) (= r2!6280 lt!2467776)) (= lambda!392433 lambda!392403))))

(assert (=> bs!1844045 (not (= lambda!392433 lambda!392390))))

(declare-fun bs!1844051 () Bool)

(assert (= bs!1844051 (and d!2162979 b!6907353)))

(assert (=> bs!1844051 (not (= lambda!392433 lambda!392396))))

(declare-fun bs!1844052 () Bool)

(assert (= bs!1844052 (and d!2162979 b!6907386)))

(assert (=> bs!1844052 (not (= lambda!392433 lambda!392398))))

(declare-fun bs!1844053 () Bool)

(assert (= bs!1844053 (and d!2162979 d!2162909)))

(assert (=> bs!1844053 (= (and (= lt!2467782 s!14361) (= r2!6280 lt!2467776)) (= lambda!392433 lambda!392417))))

(declare-fun bs!1844054 () Bool)

(assert (= bs!1844054 (and d!2162979 b!6907720)))

(assert (=> bs!1844054 (not (= lambda!392433 lambda!392431))))

(declare-fun bs!1844055 () Bool)

(assert (= bs!1844055 (and d!2162979 d!2162951)))

(assert (=> bs!1844055 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392433 lambda!392423))))

(assert (=> bs!1844050 (= (and (= lt!2467782 s!14361) (= r2!6280 lt!2467776)) (= lambda!392433 lambda!392385))))

(declare-fun bs!1844056 () Bool)

(assert (= bs!1844056 (and d!2162979 b!6907558)))

(assert (=> bs!1844056 (not (= lambda!392433 lambda!392410))))

(declare-fun bs!1844057 () Bool)

(assert (= bs!1844057 (and d!2162979 b!6907350)))

(assert (=> bs!1844057 (not (= lambda!392433 lambda!392395))))

(declare-fun bs!1844058 () Bool)

(assert (= bs!1844058 (and d!2162979 b!6907383)))

(assert (=> bs!1844058 (not (= lambda!392433 lambda!392397))))

(assert (=> d!2162979 true))

(assert (=> d!2162979 true))

(assert (=> d!2162979 true))

(declare-fun lambda!392435 () Int)

(assert (=> bs!1844043 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392435 lambda!392422))))

(assert (=> bs!1844044 (not (= lambda!392435 lambda!392430))))

(assert (=> bs!1844046 (= (and (= lt!2467782 s!14361) (= r2!6280 lt!2467776)) (= lambda!392435 lambda!392406))))

(assert (=> bs!1844047 (not (= lambda!392435 lambda!392409))))

(assert (=> bs!1844048 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392435 lambda!392388))))

(assert (=> bs!1844043 (not (= lambda!392435 lambda!392421))))

(assert (=> bs!1844048 (not (= lambda!392435 lambda!392387))))

(assert (=> bs!1844050 (= (and (= lt!2467782 s!14361) (= r2!6280 lt!2467776)) (= lambda!392435 lambda!392386))))

(assert (=> bs!1844046 (not (= lambda!392435 lambda!392403))))

(assert (=> bs!1844045 (= lambda!392435 lambda!392390)))

(assert (=> bs!1844051 (= (and (= lt!2467782 (_1!37049 lt!2467760)) (= r2!6280 (regOne!34270 r1!6342)) (= r3!135 (regTwo!34270 r1!6342))) (= lambda!392435 lambda!392396))))

(assert (=> bs!1844045 (not (= lambda!392435 lambda!392389))))

(declare-fun bs!1844067 () Bool)

(assert (= bs!1844067 d!2162979))

(assert (=> bs!1844067 (not (= lambda!392435 lambda!392433))))

(assert (=> bs!1844052 (= (and (= lt!2467782 (_2!37049 lt!2467760)) (= r2!6280 (regOne!34270 r2!6280)) (= r3!135 (regTwo!34270 r2!6280))) (= lambda!392435 lambda!392398))))

(assert (=> bs!1844053 (not (= lambda!392435 lambda!392417))))

(assert (=> bs!1844054 (= (and (= r2!6280 (regOne!34270 lt!2467762)) (= r3!135 (regTwo!34270 lt!2467762))) (= lambda!392435 lambda!392431))))

(assert (=> bs!1844055 (not (= lambda!392435 lambda!392423))))

(assert (=> bs!1844050 (not (= lambda!392435 lambda!392385))))

(assert (=> bs!1844056 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= r2!6280 (regOne!34270 lt!2467776)) (= r3!135 (regTwo!34270 lt!2467776))) (= lambda!392435 lambda!392410))))

(assert (=> bs!1844057 (not (= lambda!392435 lambda!392395))))

(assert (=> bs!1844058 (not (= lambda!392435 lambda!392397))))

(assert (=> d!2162979 true))

(assert (=> d!2162979 true))

(assert (=> d!2162979 true))

(assert (=> d!2162979 (= (Exists!3887 lambda!392433) (Exists!3887 lambda!392435))))

(declare-fun lt!2467850 () Unit!160494)

(assert (=> d!2162979 (= lt!2467850 (choose!51438 r2!6280 r3!135 lt!2467782))))

(assert (=> d!2162979 (validRegex!8587 r2!6280)))

(assert (=> d!2162979 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2360 r2!6280 r3!135 lt!2467782) lt!2467850)))

(declare-fun m!7623724 () Bool)

(assert (=> bs!1844067 m!7623724))

(declare-fun m!7623726 () Bool)

(assert (=> bs!1844067 m!7623726))

(declare-fun m!7623728 () Bool)

(assert (=> bs!1844067 m!7623728))

(assert (=> bs!1844067 m!7623274))

(assert (=> b!6907251 d!2162979))

(declare-fun b!6907762 () Bool)

(declare-fun res!2817074 () Bool)

(declare-fun e!4159319 () Bool)

(assert (=> b!6907762 (=> res!2817074 e!4159319)))

(assert (=> b!6907762 (= res!2817074 (not (isEmpty!38752 (tail!12904 lt!2467782))))))

(declare-fun d!2162989 () Bool)

(declare-fun e!4159318 () Bool)

(assert (=> d!2162989 e!4159318))

(declare-fun c!1283257 () Bool)

(assert (=> d!2162989 (= c!1283257 ((_ is EmptyExpr!16879) lt!2467762))))

(declare-fun lt!2467853 () Bool)

(declare-fun e!4159317 () Bool)

(assert (=> d!2162989 (= lt!2467853 e!4159317)))

(declare-fun c!1283255 () Bool)

(assert (=> d!2162989 (= c!1283255 (isEmpty!38752 lt!2467782))))

(assert (=> d!2162989 (validRegex!8587 lt!2467762)))

(assert (=> d!2162989 (= (matchR!9024 lt!2467762 lt!2467782) lt!2467853)))

(declare-fun b!6907763 () Bool)

(declare-fun e!4159320 () Bool)

(assert (=> b!6907763 (= e!4159320 e!4159319)))

(declare-fun res!2817071 () Bool)

(assert (=> b!6907763 (=> res!2817071 e!4159319)))

(declare-fun call!628107 () Bool)

(assert (=> b!6907763 (= res!2817071 call!628107)))

(declare-fun b!6907764 () Bool)

(assert (=> b!6907764 (= e!4159318 (= lt!2467853 call!628107))))

(declare-fun b!6907765 () Bool)

(declare-fun e!4159321 () Bool)

(assert (=> b!6907765 (= e!4159318 e!4159321)))

(declare-fun c!1283256 () Bool)

(assert (=> b!6907765 (= c!1283256 ((_ is EmptyLang!16879) lt!2467762))))

(declare-fun b!6907766 () Bool)

(assert (=> b!6907766 (= e!4159321 (not lt!2467853))))

(declare-fun b!6907767 () Bool)

(assert (=> b!6907767 (= e!4159317 (matchR!9024 (derivativeStep!5399 lt!2467762 (head!13852 lt!2467782)) (tail!12904 lt!2467782)))))

(declare-fun b!6907768 () Bool)

(declare-fun res!2817069 () Bool)

(declare-fun e!4159323 () Bool)

(assert (=> b!6907768 (=> (not res!2817069) (not e!4159323))))

(assert (=> b!6907768 (= res!2817069 (isEmpty!38752 (tail!12904 lt!2467782)))))

(declare-fun b!6907769 () Bool)

(assert (=> b!6907769 (= e!4159323 (= (head!13852 lt!2467782) (c!1283141 lt!2467762)))))

(declare-fun b!6907770 () Bool)

(declare-fun res!2817068 () Bool)

(declare-fun e!4159322 () Bool)

(assert (=> b!6907770 (=> res!2817068 e!4159322)))

(assert (=> b!6907770 (= res!2817068 e!4159323)))

(declare-fun res!2817070 () Bool)

(assert (=> b!6907770 (=> (not res!2817070) (not e!4159323))))

(assert (=> b!6907770 (= res!2817070 lt!2467853)))

(declare-fun b!6907771 () Bool)

(assert (=> b!6907771 (= e!4159317 (nullable!6719 lt!2467762))))

(declare-fun b!6907772 () Bool)

(assert (=> b!6907772 (= e!4159322 e!4159320)))

(declare-fun res!2817072 () Bool)

(assert (=> b!6907772 (=> (not res!2817072) (not e!4159320))))

(assert (=> b!6907772 (= res!2817072 (not lt!2467853))))

(declare-fun b!6907773 () Bool)

(declare-fun res!2817073 () Bool)

(assert (=> b!6907773 (=> res!2817073 e!4159322)))

(assert (=> b!6907773 (= res!2817073 (not ((_ is ElementMatch!16879) lt!2467762)))))

(assert (=> b!6907773 (= e!4159321 e!4159322)))

(declare-fun b!6907774 () Bool)

(assert (=> b!6907774 (= e!4159319 (not (= (head!13852 lt!2467782) (c!1283141 lt!2467762))))))

(declare-fun b!6907775 () Bool)

(declare-fun res!2817067 () Bool)

(assert (=> b!6907775 (=> (not res!2817067) (not e!4159323))))

(assert (=> b!6907775 (= res!2817067 (not call!628107))))

(declare-fun bm!628102 () Bool)

(assert (=> bm!628102 (= call!628107 (isEmpty!38752 lt!2467782))))

(assert (= (and d!2162989 c!1283255) b!6907771))

(assert (= (and d!2162989 (not c!1283255)) b!6907767))

(assert (= (and d!2162989 c!1283257) b!6907764))

(assert (= (and d!2162989 (not c!1283257)) b!6907765))

(assert (= (and b!6907765 c!1283256) b!6907766))

(assert (= (and b!6907765 (not c!1283256)) b!6907773))

(assert (= (and b!6907773 (not res!2817073)) b!6907770))

(assert (= (and b!6907770 res!2817070) b!6907775))

(assert (= (and b!6907775 res!2817067) b!6907768))

(assert (= (and b!6907768 res!2817069) b!6907769))

(assert (= (and b!6907770 (not res!2817068)) b!6907772))

(assert (= (and b!6907772 res!2817072) b!6907763))

(assert (= (and b!6907763 (not res!2817071)) b!6907762))

(assert (= (and b!6907762 (not res!2817074)) b!6907774))

(assert (= (or b!6907764 b!6907763 b!6907775) bm!628102))

(assert (=> bm!628102 m!7623702))

(declare-fun m!7623734 () Bool)

(assert (=> b!6907771 m!7623734))

(declare-fun m!7623736 () Bool)

(assert (=> b!6907769 m!7623736))

(assert (=> b!6907774 m!7623736))

(declare-fun m!7623738 () Bool)

(assert (=> b!6907762 m!7623738))

(assert (=> b!6907762 m!7623738))

(declare-fun m!7623740 () Bool)

(assert (=> b!6907762 m!7623740))

(assert (=> d!2162989 m!7623702))

(assert (=> d!2162989 m!7623656))

(assert (=> b!6907768 m!7623738))

(assert (=> b!6907768 m!7623738))

(assert (=> b!6907768 m!7623740))

(assert (=> b!6907767 m!7623736))

(assert (=> b!6907767 m!7623736))

(declare-fun m!7623742 () Bool)

(assert (=> b!6907767 m!7623742))

(assert (=> b!6907767 m!7623738))

(assert (=> b!6907767 m!7623742))

(assert (=> b!6907767 m!7623738))

(declare-fun m!7623744 () Bool)

(assert (=> b!6907767 m!7623744))

(assert (=> b!6907251 d!2162989))

(declare-fun bs!1844074 () Bool)

(declare-fun d!2162995 () Bool)

(assert (= bs!1844074 (and d!2162995 d!2162939)))

(declare-fun lambda!392437 () Int)

(assert (=> bs!1844074 (not (= lambda!392437 lambda!392422))))

(declare-fun bs!1844075 () Bool)

(assert (= bs!1844075 (and d!2162995 b!6907717)))

(assert (=> bs!1844075 (not (= lambda!392437 lambda!392430))))

(declare-fun bs!1844076 () Bool)

(assert (= bs!1844076 (and d!2162995 d!2162895)))

(assert (=> bs!1844076 (not (= lambda!392437 lambda!392406))))

(declare-fun bs!1844077 () Bool)

(assert (= bs!1844077 (and d!2162995 d!2162979)))

(assert (=> bs!1844077 (not (= lambda!392437 lambda!392435))))

(declare-fun bs!1844078 () Bool)

(assert (= bs!1844078 (and d!2162995 b!6907555)))

(assert (=> bs!1844078 (not (= lambda!392437 lambda!392409))))

(declare-fun bs!1844079 () Bool)

(assert (= bs!1844079 (and d!2162995 b!6907264)))

(assert (=> bs!1844079 (not (= lambda!392437 lambda!392388))))

(assert (=> bs!1844074 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392437 lambda!392421))))

(assert (=> bs!1844079 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392437 lambda!392387))))

(declare-fun bs!1844081 () Bool)

(assert (= bs!1844081 (and d!2162995 b!6907258)))

(assert (=> bs!1844081 (not (= lambda!392437 lambda!392386))))

(assert (=> bs!1844076 (= (and (= lt!2467782 s!14361) (= r2!6280 lt!2467776)) (= lambda!392437 lambda!392403))))

(declare-fun bs!1844083 () Bool)

(assert (= bs!1844083 (and d!2162995 b!6907251)))

(assert (=> bs!1844083 (not (= lambda!392437 lambda!392390))))

(declare-fun bs!1844085 () Bool)

(assert (= bs!1844085 (and d!2162995 b!6907353)))

(assert (=> bs!1844085 (not (= lambda!392437 lambda!392396))))

(assert (=> bs!1844083 (= lambda!392437 lambda!392389)))

(assert (=> bs!1844077 (= lambda!392437 lambda!392433)))

(declare-fun bs!1844088 () Bool)

(assert (= bs!1844088 (and d!2162995 b!6907386)))

(assert (=> bs!1844088 (not (= lambda!392437 lambda!392398))))

(declare-fun bs!1844089 () Bool)

(assert (= bs!1844089 (and d!2162995 d!2162909)))

(assert (=> bs!1844089 (= (and (= lt!2467782 s!14361) (= r2!6280 lt!2467776)) (= lambda!392437 lambda!392417))))

(declare-fun bs!1844091 () Bool)

(assert (= bs!1844091 (and d!2162995 b!6907720)))

(assert (=> bs!1844091 (not (= lambda!392437 lambda!392431))))

(declare-fun bs!1844093 () Bool)

(assert (= bs!1844093 (and d!2162995 d!2162951)))

(assert (=> bs!1844093 (= (and (= lt!2467782 (_1!37049 lt!2467767)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392437 lambda!392423))))

(assert (=> bs!1844081 (= (and (= lt!2467782 s!14361) (= r2!6280 lt!2467776)) (= lambda!392437 lambda!392385))))

(declare-fun bs!1844095 () Bool)

(assert (= bs!1844095 (and d!2162995 b!6907558)))

(assert (=> bs!1844095 (not (= lambda!392437 lambda!392410))))

(declare-fun bs!1844097 () Bool)

(assert (= bs!1844097 (and d!2162995 b!6907350)))

(assert (=> bs!1844097 (not (= lambda!392437 lambda!392395))))

(declare-fun bs!1844099 () Bool)

(assert (= bs!1844099 (and d!2162995 b!6907383)))

(assert (=> bs!1844099 (not (= lambda!392437 lambda!392397))))

(assert (=> d!2162995 true))

(assert (=> d!2162995 true))

(assert (=> d!2162995 true))

(assert (=> d!2162995 (= (isDefined!13361 (findConcatSeparation!3072 r2!6280 r3!135 Nil!66512 lt!2467782 lt!2467782)) (Exists!3887 lambda!392437))))

(declare-fun lt!2467857 () Unit!160494)

(assert (=> d!2162995 (= lt!2467857 (choose!51440 r2!6280 r3!135 lt!2467782))))

(assert (=> d!2162995 (validRegex!8587 r2!6280)))

(assert (=> d!2162995 (= (lemmaFindConcatSeparationEquivalentToExists!2834 r2!6280 r3!135 lt!2467782) lt!2467857)))

(declare-fun bs!1844101 () Bool)

(assert (= bs!1844101 d!2162995))

(declare-fun m!7623768 () Bool)

(assert (=> bs!1844101 m!7623768))

(assert (=> bs!1844101 m!7623274))

(assert (=> bs!1844101 m!7623284))

(assert (=> bs!1844101 m!7623286))

(assert (=> bs!1844101 m!7623284))

(declare-fun m!7623770 () Bool)

(assert (=> bs!1844101 m!7623770))

(assert (=> b!6907251 d!2162995))

(declare-fun b!6907796 () Bool)

(declare-fun e!4159338 () Option!16658)

(declare-fun e!4159337 () Option!16658)

(assert (=> b!6907796 (= e!4159338 e!4159337)))

(declare-fun c!1283265 () Bool)

(assert (=> b!6907796 (= c!1283265 ((_ is Nil!66512) lt!2467782))))

(declare-fun b!6907797 () Bool)

(declare-fun e!4159340 () Bool)

(assert (=> b!6907797 (= e!4159340 (matchR!9024 r3!135 lt!2467782))))

(declare-fun b!6907799 () Bool)

(declare-fun lt!2467860 () Unit!160494)

(declare-fun lt!2467859 () Unit!160494)

(assert (=> b!6907799 (= lt!2467860 lt!2467859)))

(assert (=> b!6907799 (= (++!14932 (++!14932 Nil!66512 (Cons!66512 (h!72960 lt!2467782) Nil!66512)) (t!380379 lt!2467782)) lt!2467782)))

(assert (=> b!6907799 (= lt!2467859 (lemmaMoveElementToOtherListKeepsConcatEq!2806 Nil!66512 (h!72960 lt!2467782) (t!380379 lt!2467782) lt!2467782))))

(assert (=> b!6907799 (= e!4159337 (findConcatSeparation!3072 r2!6280 r3!135 (++!14932 Nil!66512 (Cons!66512 (h!72960 lt!2467782) Nil!66512)) (t!380379 lt!2467782) lt!2467782))))

(declare-fun b!6907800 () Bool)

(assert (=> b!6907800 (= e!4159338 (Some!16657 (tuple2!67493 Nil!66512 lt!2467782)))))

(declare-fun b!6907801 () Bool)

(declare-fun res!2817084 () Bool)

(declare-fun e!4159336 () Bool)

(assert (=> b!6907801 (=> (not res!2817084) (not e!4159336))))

(declare-fun lt!2467858 () Option!16658)

(assert (=> b!6907801 (= res!2817084 (matchR!9024 r2!6280 (_1!37049 (get!23269 lt!2467858))))))

(declare-fun b!6907802 () Bool)

(declare-fun e!4159339 () Bool)

(assert (=> b!6907802 (= e!4159339 (not (isDefined!13361 lt!2467858)))))

(declare-fun b!6907803 () Bool)

(assert (=> b!6907803 (= e!4159336 (= (++!14932 (_1!37049 (get!23269 lt!2467858)) (_2!37049 (get!23269 lt!2467858))) lt!2467782))))

(declare-fun b!6907804 () Bool)

(assert (=> b!6907804 (= e!4159337 None!16657)))

(declare-fun b!6907798 () Bool)

(declare-fun res!2817086 () Bool)

(assert (=> b!6907798 (=> (not res!2817086) (not e!4159336))))

(assert (=> b!6907798 (= res!2817086 (matchR!9024 r3!135 (_2!37049 (get!23269 lt!2467858))))))

(declare-fun d!2162999 () Bool)

(assert (=> d!2162999 e!4159339))

(declare-fun res!2817085 () Bool)

(assert (=> d!2162999 (=> res!2817085 e!4159339)))

(assert (=> d!2162999 (= res!2817085 e!4159336)))

(declare-fun res!2817083 () Bool)

(assert (=> d!2162999 (=> (not res!2817083) (not e!4159336))))

(assert (=> d!2162999 (= res!2817083 (isDefined!13361 lt!2467858))))

(assert (=> d!2162999 (= lt!2467858 e!4159338)))

(declare-fun c!1283264 () Bool)

(assert (=> d!2162999 (= c!1283264 e!4159340)))

(declare-fun res!2817087 () Bool)

(assert (=> d!2162999 (=> (not res!2817087) (not e!4159340))))

(assert (=> d!2162999 (= res!2817087 (matchR!9024 r2!6280 Nil!66512))))

(assert (=> d!2162999 (validRegex!8587 r2!6280)))

(assert (=> d!2162999 (= (findConcatSeparation!3072 r2!6280 r3!135 Nil!66512 lt!2467782 lt!2467782) lt!2467858)))

(assert (= (and d!2162999 res!2817087) b!6907797))

(assert (= (and d!2162999 c!1283264) b!6907800))

(assert (= (and d!2162999 (not c!1283264)) b!6907796))

(assert (= (and b!6907796 c!1283265) b!6907804))

(assert (= (and b!6907796 (not c!1283265)) b!6907799))

(assert (= (and d!2162999 res!2817083) b!6907801))

(assert (= (and b!6907801 res!2817084) b!6907798))

(assert (= (and b!6907798 res!2817086) b!6907803))

(assert (= (and d!2162999 (not res!2817085)) b!6907802))

(declare-fun m!7623772 () Bool)

(assert (=> b!6907797 m!7623772))

(declare-fun m!7623774 () Bool)

(assert (=> d!2162999 m!7623774))

(declare-fun m!7623776 () Bool)

(assert (=> d!2162999 m!7623776))

(assert (=> d!2162999 m!7623274))

(assert (=> b!6907802 m!7623774))

(declare-fun m!7623778 () Bool)

(assert (=> b!6907798 m!7623778))

(declare-fun m!7623780 () Bool)

(assert (=> b!6907798 m!7623780))

(assert (=> b!6907803 m!7623778))

(declare-fun m!7623782 () Bool)

(assert (=> b!6907803 m!7623782))

(assert (=> b!6907801 m!7623778))

(declare-fun m!7623784 () Bool)

(assert (=> b!6907801 m!7623784))

(declare-fun m!7623786 () Bool)

(assert (=> b!6907799 m!7623786))

(assert (=> b!6907799 m!7623786))

(declare-fun m!7623788 () Bool)

(assert (=> b!6907799 m!7623788))

(declare-fun m!7623790 () Bool)

(assert (=> b!6907799 m!7623790))

(assert (=> b!6907799 m!7623786))

(declare-fun m!7623792 () Bool)

(assert (=> b!6907799 m!7623792))

(assert (=> b!6907251 d!2162999))

(declare-fun bs!1844114 () Bool)

(declare-fun b!6907808 () Bool)

(assert (= bs!1844114 (and b!6907808 d!2162939)))

(declare-fun lambda!392440 () Int)

(assert (=> bs!1844114 (not (= lambda!392440 lambda!392422))))

(declare-fun bs!1844115 () Bool)

(assert (= bs!1844115 (and b!6907808 b!6907717)))

(assert (=> bs!1844115 (= (and (= s!14361 lt!2467782) (= (reg!17208 lt!2467769) (reg!17208 lt!2467762)) (= lt!2467769 lt!2467762)) (= lambda!392440 lambda!392430))))

(declare-fun bs!1844116 () Bool)

(assert (= bs!1844116 (and b!6907808 d!2162995)))

(assert (=> bs!1844116 (not (= lambda!392440 lambda!392437))))

(declare-fun bs!1844117 () Bool)

(assert (= bs!1844117 (and b!6907808 d!2162895)))

(assert (=> bs!1844117 (not (= lambda!392440 lambda!392406))))

(declare-fun bs!1844118 () Bool)

(assert (= bs!1844118 (and b!6907808 d!2162979)))

(assert (=> bs!1844118 (not (= lambda!392440 lambda!392435))))

(declare-fun bs!1844120 () Bool)

(assert (= bs!1844120 (and b!6907808 b!6907555)))

(assert (=> bs!1844120 (= (and (= s!14361 (_1!37049 lt!2467767)) (= (reg!17208 lt!2467769) (reg!17208 lt!2467776)) (= lt!2467769 lt!2467776)) (= lambda!392440 lambda!392409))))

(declare-fun bs!1844121 () Bool)

(assert (= bs!1844121 (and b!6907808 b!6907264)))

(assert (=> bs!1844121 (not (= lambda!392440 lambda!392388))))

(assert (=> bs!1844114 (not (= lambda!392440 lambda!392421))))

(assert (=> bs!1844121 (not (= lambda!392440 lambda!392387))))

(declare-fun bs!1844122 () Bool)

(assert (= bs!1844122 (and b!6907808 b!6907258)))

(assert (=> bs!1844122 (not (= lambda!392440 lambda!392386))))

(assert (=> bs!1844117 (not (= lambda!392440 lambda!392403))))

(declare-fun bs!1844123 () Bool)

(assert (= bs!1844123 (and b!6907808 b!6907251)))

(assert (=> bs!1844123 (not (= lambda!392440 lambda!392390))))

(declare-fun bs!1844124 () Bool)

(assert (= bs!1844124 (and b!6907808 b!6907353)))

(assert (=> bs!1844124 (not (= lambda!392440 lambda!392396))))

(assert (=> bs!1844123 (not (= lambda!392440 lambda!392389))))

(assert (=> bs!1844118 (not (= lambda!392440 lambda!392433))))

(declare-fun bs!1844125 () Bool)

(assert (= bs!1844125 (and b!6907808 b!6907386)))

(assert (=> bs!1844125 (not (= lambda!392440 lambda!392398))))

(declare-fun bs!1844126 () Bool)

(assert (= bs!1844126 (and b!6907808 d!2162909)))

(assert (=> bs!1844126 (not (= lambda!392440 lambda!392417))))

(declare-fun bs!1844127 () Bool)

(assert (= bs!1844127 (and b!6907808 b!6907720)))

(assert (=> bs!1844127 (not (= lambda!392440 lambda!392431))))

(declare-fun bs!1844128 () Bool)

(assert (= bs!1844128 (and b!6907808 d!2162951)))

(assert (=> bs!1844128 (not (= lambda!392440 lambda!392423))))

(assert (=> bs!1844122 (not (= lambda!392440 lambda!392385))))

(declare-fun bs!1844129 () Bool)

(assert (= bs!1844129 (and b!6907808 b!6907558)))

(assert (=> bs!1844129 (not (= lambda!392440 lambda!392410))))

(declare-fun bs!1844130 () Bool)

(assert (= bs!1844130 (and b!6907808 b!6907350)))

(assert (=> bs!1844130 (= (and (= s!14361 (_1!37049 lt!2467760)) (= (reg!17208 lt!2467769) (reg!17208 r1!6342)) (= lt!2467769 r1!6342)) (= lambda!392440 lambda!392395))))

(declare-fun bs!1844131 () Bool)

(assert (= bs!1844131 (and b!6907808 b!6907383)))

(assert (=> bs!1844131 (= (and (= s!14361 (_2!37049 lt!2467760)) (= (reg!17208 lt!2467769) (reg!17208 r2!6280)) (= lt!2467769 r2!6280)) (= lambda!392440 lambda!392397))))

(assert (=> b!6907808 true))

(assert (=> b!6907808 true))

(declare-fun bs!1844132 () Bool)

(declare-fun b!6907811 () Bool)

(assert (= bs!1844132 (and b!6907811 d!2162939)))

(declare-fun lambda!392441 () Int)

(assert (=> bs!1844132 (= (and (= s!14361 (_1!37049 lt!2467767)) (= (regOne!34270 lt!2467769) r1!6342) (= (regTwo!34270 lt!2467769) r2!6280)) (= lambda!392441 lambda!392422))))

(declare-fun bs!1844133 () Bool)

(assert (= bs!1844133 (and b!6907811 b!6907717)))

(assert (=> bs!1844133 (not (= lambda!392441 lambda!392430))))

(declare-fun bs!1844134 () Bool)

(assert (= bs!1844134 (and b!6907811 d!2162995)))

(assert (=> bs!1844134 (not (= lambda!392441 lambda!392437))))

(declare-fun bs!1844135 () Bool)

(assert (= bs!1844135 (and b!6907811 d!2162895)))

(assert (=> bs!1844135 (= (and (= (regOne!34270 lt!2467769) lt!2467776) (= (regTwo!34270 lt!2467769) r3!135)) (= lambda!392441 lambda!392406))))

(declare-fun bs!1844136 () Bool)

(assert (= bs!1844136 (and b!6907811 d!2162979)))

(assert (=> bs!1844136 (= (and (= s!14361 lt!2467782) (= (regOne!34270 lt!2467769) r2!6280) (= (regTwo!34270 lt!2467769) r3!135)) (= lambda!392441 lambda!392435))))

(declare-fun bs!1844137 () Bool)

(assert (= bs!1844137 (and b!6907811 b!6907555)))

(assert (=> bs!1844137 (not (= lambda!392441 lambda!392409))))

(declare-fun bs!1844138 () Bool)

(assert (= bs!1844138 (and b!6907811 b!6907264)))

(assert (=> bs!1844138 (= (and (= s!14361 (_1!37049 lt!2467767)) (= (regOne!34270 lt!2467769) r1!6342) (= (regTwo!34270 lt!2467769) r2!6280)) (= lambda!392441 lambda!392388))))

(assert (=> bs!1844132 (not (= lambda!392441 lambda!392421))))

(assert (=> bs!1844138 (not (= lambda!392441 lambda!392387))))

(declare-fun bs!1844139 () Bool)

(assert (= bs!1844139 (and b!6907811 b!6907808)))

(assert (=> bs!1844139 (not (= lambda!392441 lambda!392440))))

(declare-fun bs!1844140 () Bool)

(assert (= bs!1844140 (and b!6907811 b!6907258)))

(assert (=> bs!1844140 (= (and (= (regOne!34270 lt!2467769) lt!2467776) (= (regTwo!34270 lt!2467769) r3!135)) (= lambda!392441 lambda!392386))))

(assert (=> bs!1844135 (not (= lambda!392441 lambda!392403))))

(declare-fun bs!1844141 () Bool)

(assert (= bs!1844141 (and b!6907811 b!6907251)))

(assert (=> bs!1844141 (= (and (= s!14361 lt!2467782) (= (regOne!34270 lt!2467769) r2!6280) (= (regTwo!34270 lt!2467769) r3!135)) (= lambda!392441 lambda!392390))))

(declare-fun bs!1844142 () Bool)

(assert (= bs!1844142 (and b!6907811 b!6907353)))

(assert (=> bs!1844142 (= (and (= s!14361 (_1!37049 lt!2467760)) (= (regOne!34270 lt!2467769) (regOne!34270 r1!6342)) (= (regTwo!34270 lt!2467769) (regTwo!34270 r1!6342))) (= lambda!392441 lambda!392396))))

(assert (=> bs!1844141 (not (= lambda!392441 lambda!392389))))

(assert (=> bs!1844136 (not (= lambda!392441 lambda!392433))))

(declare-fun bs!1844143 () Bool)

(assert (= bs!1844143 (and b!6907811 b!6907386)))

(assert (=> bs!1844143 (= (and (= s!14361 (_2!37049 lt!2467760)) (= (regOne!34270 lt!2467769) (regOne!34270 r2!6280)) (= (regTwo!34270 lt!2467769) (regTwo!34270 r2!6280))) (= lambda!392441 lambda!392398))))

(declare-fun bs!1844144 () Bool)

(assert (= bs!1844144 (and b!6907811 d!2162909)))

(assert (=> bs!1844144 (not (= lambda!392441 lambda!392417))))

(declare-fun bs!1844145 () Bool)

(assert (= bs!1844145 (and b!6907811 b!6907720)))

(assert (=> bs!1844145 (= (and (= s!14361 lt!2467782) (= (regOne!34270 lt!2467769) (regOne!34270 lt!2467762)) (= (regTwo!34270 lt!2467769) (regTwo!34270 lt!2467762))) (= lambda!392441 lambda!392431))))

(declare-fun bs!1844146 () Bool)

(assert (= bs!1844146 (and b!6907811 d!2162951)))

(assert (=> bs!1844146 (not (= lambda!392441 lambda!392423))))

(assert (=> bs!1844140 (not (= lambda!392441 lambda!392385))))

(declare-fun bs!1844147 () Bool)

(assert (= bs!1844147 (and b!6907811 b!6907558)))

(assert (=> bs!1844147 (= (and (= s!14361 (_1!37049 lt!2467767)) (= (regOne!34270 lt!2467769) (regOne!34270 lt!2467776)) (= (regTwo!34270 lt!2467769) (regTwo!34270 lt!2467776))) (= lambda!392441 lambda!392410))))

(declare-fun bs!1844148 () Bool)

(assert (= bs!1844148 (and b!6907811 b!6907350)))

(assert (=> bs!1844148 (not (= lambda!392441 lambda!392395))))

(declare-fun bs!1844149 () Bool)

(assert (= bs!1844149 (and b!6907811 b!6907383)))

(assert (=> bs!1844149 (not (= lambda!392441 lambda!392397))))

(assert (=> b!6907811 true))

(assert (=> b!6907811 true))

(declare-fun b!6907805 () Bool)

(declare-fun e!4159342 () Bool)

(assert (=> b!6907805 (= e!4159342 (= s!14361 (Cons!66512 (c!1283141 lt!2467769) Nil!66512)))))

(declare-fun b!6907806 () Bool)

(declare-fun res!2817090 () Bool)

(declare-fun e!4159344 () Bool)

(assert (=> b!6907806 (=> res!2817090 e!4159344)))

(declare-fun call!628110 () Bool)

(assert (=> b!6907806 (= res!2817090 call!628110)))

(declare-fun e!4159343 () Bool)

(assert (=> b!6907806 (= e!4159343 e!4159344)))

(declare-fun b!6907807 () Bool)

(declare-fun e!4159345 () Bool)

(assert (=> b!6907807 (= e!4159345 call!628110)))

(declare-fun b!6907809 () Bool)

(declare-fun e!4159346 () Bool)

(assert (=> b!6907809 (= e!4159346 e!4159343)))

(declare-fun c!1283266 () Bool)

(assert (=> b!6907809 (= c!1283266 ((_ is Star!16879) lt!2467769))))

(declare-fun bm!628105 () Bool)

(assert (=> bm!628105 (= call!628110 (isEmpty!38752 s!14361))))

(declare-fun call!628111 () Bool)

(assert (=> b!6907808 (= e!4159344 call!628111)))

(declare-fun d!2163001 () Bool)

(declare-fun c!1283268 () Bool)

(assert (=> d!2163001 (= c!1283268 ((_ is EmptyExpr!16879) lt!2467769))))

(assert (=> d!2163001 (= (matchRSpec!3942 lt!2467769 s!14361) e!4159345)))

(declare-fun bm!628106 () Bool)

(assert (=> bm!628106 (= call!628111 (Exists!3887 (ite c!1283266 lambda!392440 lambda!392441)))))

(declare-fun b!6907810 () Bool)

(declare-fun e!4159341 () Bool)

(assert (=> b!6907810 (= e!4159346 e!4159341)))

(declare-fun res!2817089 () Bool)

(assert (=> b!6907810 (= res!2817089 (matchRSpec!3942 (regOne!34271 lt!2467769) s!14361))))

(assert (=> b!6907810 (=> res!2817089 e!4159341)))

(assert (=> b!6907811 (= e!4159343 call!628111)))

(declare-fun b!6907812 () Bool)

(declare-fun c!1283267 () Bool)

(assert (=> b!6907812 (= c!1283267 ((_ is Union!16879) lt!2467769))))

(assert (=> b!6907812 (= e!4159342 e!4159346)))

(declare-fun b!6907813 () Bool)

(assert (=> b!6907813 (= e!4159341 (matchRSpec!3942 (regTwo!34271 lt!2467769) s!14361))))

(declare-fun b!6907814 () Bool)

(declare-fun e!4159347 () Bool)

(assert (=> b!6907814 (= e!4159345 e!4159347)))

(declare-fun res!2817088 () Bool)

(assert (=> b!6907814 (= res!2817088 (not ((_ is EmptyLang!16879) lt!2467769)))))

(assert (=> b!6907814 (=> (not res!2817088) (not e!4159347))))

(declare-fun b!6907815 () Bool)

(declare-fun c!1283269 () Bool)

(assert (=> b!6907815 (= c!1283269 ((_ is ElementMatch!16879) lt!2467769))))

(assert (=> b!6907815 (= e!4159347 e!4159342)))

(assert (= (and d!2163001 c!1283268) b!6907807))

(assert (= (and d!2163001 (not c!1283268)) b!6907814))

(assert (= (and b!6907814 res!2817088) b!6907815))

(assert (= (and b!6907815 c!1283269) b!6907805))

(assert (= (and b!6907815 (not c!1283269)) b!6907812))

(assert (= (and b!6907812 c!1283267) b!6907810))

(assert (= (and b!6907812 (not c!1283267)) b!6907809))

(assert (= (and b!6907810 (not res!2817089)) b!6907813))

(assert (= (and b!6907809 c!1283266) b!6907806))

(assert (= (and b!6907809 (not c!1283266)) b!6907811))

(assert (= (and b!6907806 (not res!2817090)) b!6907808))

(assert (= (or b!6907808 b!6907811) bm!628106))

(assert (= (or b!6907807 b!6907806) bm!628105))

(declare-fun m!7623822 () Bool)

(assert (=> bm!628105 m!7623822))

(declare-fun m!7623824 () Bool)

(assert (=> bm!628106 m!7623824))

(declare-fun m!7623826 () Bool)

(assert (=> b!6907810 m!7623826))

(declare-fun m!7623828 () Bool)

(assert (=> b!6907813 m!7623828))

(assert (=> b!6907255 d!2163001))

(declare-fun b!6907848 () Bool)

(declare-fun res!2817112 () Bool)

(declare-fun e!4159370 () Bool)

(assert (=> b!6907848 (=> res!2817112 e!4159370)))

(assert (=> b!6907848 (= res!2817112 (not (isEmpty!38752 (tail!12904 s!14361))))))

(declare-fun d!2163011 () Bool)

(declare-fun e!4159369 () Bool)

(assert (=> d!2163011 e!4159369))

(declare-fun c!1283281 () Bool)

(assert (=> d!2163011 (= c!1283281 ((_ is EmptyExpr!16879) lt!2467763))))

(declare-fun lt!2467864 () Bool)

(declare-fun e!4159368 () Bool)

(assert (=> d!2163011 (= lt!2467864 e!4159368)))

(declare-fun c!1283279 () Bool)

(assert (=> d!2163011 (= c!1283279 (isEmpty!38752 s!14361))))

(assert (=> d!2163011 (validRegex!8587 lt!2467763)))

(assert (=> d!2163011 (= (matchR!9024 lt!2467763 s!14361) lt!2467864)))

(declare-fun b!6907849 () Bool)

(declare-fun e!4159371 () Bool)

(assert (=> b!6907849 (= e!4159371 e!4159370)))

(declare-fun res!2817109 () Bool)

(assert (=> b!6907849 (=> res!2817109 e!4159370)))

(declare-fun call!628117 () Bool)

(assert (=> b!6907849 (= res!2817109 call!628117)))

(declare-fun b!6907850 () Bool)

(assert (=> b!6907850 (= e!4159369 (= lt!2467864 call!628117))))

(declare-fun b!6907851 () Bool)

(declare-fun e!4159372 () Bool)

(assert (=> b!6907851 (= e!4159369 e!4159372)))

(declare-fun c!1283280 () Bool)

(assert (=> b!6907851 (= c!1283280 ((_ is EmptyLang!16879) lt!2467763))))

(declare-fun b!6907852 () Bool)

(assert (=> b!6907852 (= e!4159372 (not lt!2467864))))

(declare-fun b!6907853 () Bool)

(assert (=> b!6907853 (= e!4159368 (matchR!9024 (derivativeStep!5399 lt!2467763 (head!13852 s!14361)) (tail!12904 s!14361)))))

(declare-fun b!6907854 () Bool)

(declare-fun res!2817107 () Bool)

(declare-fun e!4159374 () Bool)

(assert (=> b!6907854 (=> (not res!2817107) (not e!4159374))))

(assert (=> b!6907854 (= res!2817107 (isEmpty!38752 (tail!12904 s!14361)))))

(declare-fun b!6907855 () Bool)

(assert (=> b!6907855 (= e!4159374 (= (head!13852 s!14361) (c!1283141 lt!2467763)))))

(declare-fun b!6907856 () Bool)

(declare-fun res!2817106 () Bool)

(declare-fun e!4159373 () Bool)

(assert (=> b!6907856 (=> res!2817106 e!4159373)))

(assert (=> b!6907856 (= res!2817106 e!4159374)))

(declare-fun res!2817108 () Bool)

(assert (=> b!6907856 (=> (not res!2817108) (not e!4159374))))

(assert (=> b!6907856 (= res!2817108 lt!2467864)))

(declare-fun b!6907857 () Bool)

(assert (=> b!6907857 (= e!4159368 (nullable!6719 lt!2467763))))

(declare-fun b!6907858 () Bool)

(assert (=> b!6907858 (= e!4159373 e!4159371)))

(declare-fun res!2817110 () Bool)

(assert (=> b!6907858 (=> (not res!2817110) (not e!4159371))))

(assert (=> b!6907858 (= res!2817110 (not lt!2467864))))

(declare-fun b!6907859 () Bool)

(declare-fun res!2817111 () Bool)

(assert (=> b!6907859 (=> res!2817111 e!4159373)))

(assert (=> b!6907859 (= res!2817111 (not ((_ is ElementMatch!16879) lt!2467763)))))

(assert (=> b!6907859 (= e!4159372 e!4159373)))

(declare-fun b!6907860 () Bool)

(assert (=> b!6907860 (= e!4159370 (not (= (head!13852 s!14361) (c!1283141 lt!2467763))))))

(declare-fun b!6907861 () Bool)

(declare-fun res!2817105 () Bool)

(assert (=> b!6907861 (=> (not res!2817105) (not e!4159374))))

(assert (=> b!6907861 (= res!2817105 (not call!628117))))

(declare-fun bm!628112 () Bool)

(assert (=> bm!628112 (= call!628117 (isEmpty!38752 s!14361))))

(assert (= (and d!2163011 c!1283279) b!6907857))

(assert (= (and d!2163011 (not c!1283279)) b!6907853))

(assert (= (and d!2163011 c!1283281) b!6907850))

(assert (= (and d!2163011 (not c!1283281)) b!6907851))

(assert (= (and b!6907851 c!1283280) b!6907852))

(assert (= (and b!6907851 (not c!1283280)) b!6907859))

(assert (= (and b!6907859 (not res!2817111)) b!6907856))

(assert (= (and b!6907856 res!2817108) b!6907861))

(assert (= (and b!6907861 res!2817105) b!6907854))

(assert (= (and b!6907854 res!2817107) b!6907855))

(assert (= (and b!6907856 (not res!2817106)) b!6907858))

(assert (= (and b!6907858 res!2817110) b!6907849))

(assert (= (and b!6907849 (not res!2817109)) b!6907848))

(assert (= (and b!6907848 (not res!2817112)) b!6907860))

(assert (= (or b!6907850 b!6907849 b!6907861) bm!628112))

(assert (=> bm!628112 m!7623822))

(declare-fun m!7623830 () Bool)

(assert (=> b!6907857 m!7623830))

(declare-fun m!7623832 () Bool)

(assert (=> b!6907855 m!7623832))

(assert (=> b!6907860 m!7623832))

(declare-fun m!7623834 () Bool)

(assert (=> b!6907848 m!7623834))

(assert (=> b!6907848 m!7623834))

(declare-fun m!7623836 () Bool)

(assert (=> b!6907848 m!7623836))

(assert (=> d!2163011 m!7623822))

(declare-fun m!7623838 () Bool)

(assert (=> d!2163011 m!7623838))

(assert (=> b!6907854 m!7623834))

(assert (=> b!6907854 m!7623834))

(assert (=> b!6907854 m!7623836))

(assert (=> b!6907853 m!7623832))

(assert (=> b!6907853 m!7623832))

(declare-fun m!7623840 () Bool)

(assert (=> b!6907853 m!7623840))

(assert (=> b!6907853 m!7623834))

(assert (=> b!6907853 m!7623840))

(assert (=> b!6907853 m!7623834))

(declare-fun m!7623842 () Bool)

(assert (=> b!6907853 m!7623842))

(assert (=> b!6907255 d!2163011))

(declare-fun b!6907862 () Bool)

(declare-fun res!2817120 () Bool)

(declare-fun e!4159377 () Bool)

(assert (=> b!6907862 (=> res!2817120 e!4159377)))

(assert (=> b!6907862 (= res!2817120 (not (isEmpty!38752 (tail!12904 s!14361))))))

(declare-fun d!2163013 () Bool)

(declare-fun e!4159376 () Bool)

(assert (=> d!2163013 e!4159376))

(declare-fun c!1283284 () Bool)

(assert (=> d!2163013 (= c!1283284 ((_ is EmptyExpr!16879) lt!2467769))))

(declare-fun lt!2467865 () Bool)

(declare-fun e!4159375 () Bool)

(assert (=> d!2163013 (= lt!2467865 e!4159375)))

(declare-fun c!1283282 () Bool)

(assert (=> d!2163013 (= c!1283282 (isEmpty!38752 s!14361))))

(assert (=> d!2163013 (validRegex!8587 lt!2467769)))

(assert (=> d!2163013 (= (matchR!9024 lt!2467769 s!14361) lt!2467865)))

(declare-fun b!6907863 () Bool)

(declare-fun e!4159378 () Bool)

(assert (=> b!6907863 (= e!4159378 e!4159377)))

(declare-fun res!2817117 () Bool)

(assert (=> b!6907863 (=> res!2817117 e!4159377)))

(declare-fun call!628118 () Bool)

(assert (=> b!6907863 (= res!2817117 call!628118)))

(declare-fun b!6907864 () Bool)

(assert (=> b!6907864 (= e!4159376 (= lt!2467865 call!628118))))

(declare-fun b!6907865 () Bool)

(declare-fun e!4159379 () Bool)

(assert (=> b!6907865 (= e!4159376 e!4159379)))

(declare-fun c!1283283 () Bool)

(assert (=> b!6907865 (= c!1283283 ((_ is EmptyLang!16879) lt!2467769))))

(declare-fun b!6907866 () Bool)

(assert (=> b!6907866 (= e!4159379 (not lt!2467865))))

(declare-fun b!6907867 () Bool)

(assert (=> b!6907867 (= e!4159375 (matchR!9024 (derivativeStep!5399 lt!2467769 (head!13852 s!14361)) (tail!12904 s!14361)))))

(declare-fun b!6907868 () Bool)

(declare-fun res!2817115 () Bool)

(declare-fun e!4159381 () Bool)

(assert (=> b!6907868 (=> (not res!2817115) (not e!4159381))))

(assert (=> b!6907868 (= res!2817115 (isEmpty!38752 (tail!12904 s!14361)))))

(declare-fun b!6907869 () Bool)

(assert (=> b!6907869 (= e!4159381 (= (head!13852 s!14361) (c!1283141 lt!2467769)))))

(declare-fun b!6907870 () Bool)

(declare-fun res!2817114 () Bool)

(declare-fun e!4159380 () Bool)

(assert (=> b!6907870 (=> res!2817114 e!4159380)))

(assert (=> b!6907870 (= res!2817114 e!4159381)))

(declare-fun res!2817116 () Bool)

(assert (=> b!6907870 (=> (not res!2817116) (not e!4159381))))

(assert (=> b!6907870 (= res!2817116 lt!2467865)))

(declare-fun b!6907871 () Bool)

(assert (=> b!6907871 (= e!4159375 (nullable!6719 lt!2467769))))

(declare-fun b!6907872 () Bool)

(assert (=> b!6907872 (= e!4159380 e!4159378)))

(declare-fun res!2817118 () Bool)

(assert (=> b!6907872 (=> (not res!2817118) (not e!4159378))))

(assert (=> b!6907872 (= res!2817118 (not lt!2467865))))

(declare-fun b!6907873 () Bool)

(declare-fun res!2817119 () Bool)

(assert (=> b!6907873 (=> res!2817119 e!4159380)))

(assert (=> b!6907873 (= res!2817119 (not ((_ is ElementMatch!16879) lt!2467769)))))

(assert (=> b!6907873 (= e!4159379 e!4159380)))

(declare-fun b!6907874 () Bool)

(assert (=> b!6907874 (= e!4159377 (not (= (head!13852 s!14361) (c!1283141 lt!2467769))))))

(declare-fun b!6907875 () Bool)

(declare-fun res!2817113 () Bool)

(assert (=> b!6907875 (=> (not res!2817113) (not e!4159381))))

(assert (=> b!6907875 (= res!2817113 (not call!628118))))

(declare-fun bm!628113 () Bool)

(assert (=> bm!628113 (= call!628118 (isEmpty!38752 s!14361))))

(assert (= (and d!2163013 c!1283282) b!6907871))

(assert (= (and d!2163013 (not c!1283282)) b!6907867))

(assert (= (and d!2163013 c!1283284) b!6907864))

(assert (= (and d!2163013 (not c!1283284)) b!6907865))

(assert (= (and b!6907865 c!1283283) b!6907866))

(assert (= (and b!6907865 (not c!1283283)) b!6907873))

(assert (= (and b!6907873 (not res!2817119)) b!6907870))

(assert (= (and b!6907870 res!2817116) b!6907875))

(assert (= (and b!6907875 res!2817113) b!6907868))

(assert (= (and b!6907868 res!2817115) b!6907869))

(assert (= (and b!6907870 (not res!2817114)) b!6907872))

(assert (= (and b!6907872 res!2817118) b!6907863))

(assert (= (and b!6907863 (not res!2817117)) b!6907862))

(assert (= (and b!6907862 (not res!2817120)) b!6907874))

(assert (= (or b!6907864 b!6907863 b!6907875) bm!628113))

(assert (=> bm!628113 m!7623822))

(declare-fun m!7623844 () Bool)

(assert (=> b!6907871 m!7623844))

(assert (=> b!6907869 m!7623832))

(assert (=> b!6907874 m!7623832))

(assert (=> b!6907862 m!7623834))

(assert (=> b!6907862 m!7623834))

(assert (=> b!6907862 m!7623836))

(assert (=> d!2163013 m!7623822))

(declare-fun m!7623846 () Bool)

(assert (=> d!2163013 m!7623846))

(assert (=> b!6907868 m!7623834))

(assert (=> b!6907868 m!7623834))

(assert (=> b!6907868 m!7623836))

(assert (=> b!6907867 m!7623832))

(assert (=> b!6907867 m!7623832))

(declare-fun m!7623848 () Bool)

(assert (=> b!6907867 m!7623848))

(assert (=> b!6907867 m!7623834))

(assert (=> b!6907867 m!7623848))

(assert (=> b!6907867 m!7623834))

(declare-fun m!7623850 () Bool)

(assert (=> b!6907867 m!7623850))

(assert (=> b!6907255 d!2163013))

(declare-fun d!2163015 () Bool)

(assert (=> d!2163015 (= (matchR!9024 lt!2467763 s!14361) (matchRSpec!3942 lt!2467763 s!14361))))

(declare-fun lt!2467866 () Unit!160494)

(assert (=> d!2163015 (= lt!2467866 (choose!51436 lt!2467763 s!14361))))

(assert (=> d!2163015 (validRegex!8587 lt!2467763)))

(assert (=> d!2163015 (= (mainMatchTheorem!3942 lt!2467763 s!14361) lt!2467866)))

(declare-fun bs!1844163 () Bool)

(assert (= bs!1844163 d!2163015))

(assert (=> bs!1844163 m!7623270))

(assert (=> bs!1844163 m!7623260))

(declare-fun m!7623852 () Bool)

(assert (=> bs!1844163 m!7623852))

(assert (=> bs!1844163 m!7623838))

(assert (=> b!6907255 d!2163015))

(declare-fun bs!1844167 () Bool)

(declare-fun b!6907879 () Bool)

(assert (= bs!1844167 (and b!6907879 d!2162939)))

(declare-fun lambda!392444 () Int)

(assert (=> bs!1844167 (not (= lambda!392444 lambda!392422))))

(declare-fun bs!1844170 () Bool)

(assert (= bs!1844170 (and b!6907879 b!6907717)))

(assert (=> bs!1844170 (= (and (= s!14361 lt!2467782) (= (reg!17208 lt!2467763) (reg!17208 lt!2467762)) (= lt!2467763 lt!2467762)) (= lambda!392444 lambda!392430))))

(declare-fun bs!1844172 () Bool)

(assert (= bs!1844172 (and b!6907879 d!2162995)))

(assert (=> bs!1844172 (not (= lambda!392444 lambda!392437))))

(declare-fun bs!1844173 () Bool)

(assert (= bs!1844173 (and b!6907879 d!2162895)))

(assert (=> bs!1844173 (not (= lambda!392444 lambda!392406))))

(declare-fun bs!1844174 () Bool)

(assert (= bs!1844174 (and b!6907879 d!2162979)))

(assert (=> bs!1844174 (not (= lambda!392444 lambda!392435))))

(declare-fun bs!1844176 () Bool)

(assert (= bs!1844176 (and b!6907879 b!6907555)))

(assert (=> bs!1844176 (= (and (= s!14361 (_1!37049 lt!2467767)) (= (reg!17208 lt!2467763) (reg!17208 lt!2467776)) (= lt!2467763 lt!2467776)) (= lambda!392444 lambda!392409))))

(declare-fun bs!1844178 () Bool)

(assert (= bs!1844178 (and b!6907879 b!6907264)))

(assert (=> bs!1844178 (not (= lambda!392444 lambda!392388))))

(assert (=> bs!1844167 (not (= lambda!392444 lambda!392421))))

(assert (=> bs!1844178 (not (= lambda!392444 lambda!392387))))

(declare-fun bs!1844181 () Bool)

(assert (= bs!1844181 (and b!6907879 b!6907808)))

(assert (=> bs!1844181 (= (and (= (reg!17208 lt!2467763) (reg!17208 lt!2467769)) (= lt!2467763 lt!2467769)) (= lambda!392444 lambda!392440))))

(declare-fun bs!1844183 () Bool)

(assert (= bs!1844183 (and b!6907879 b!6907258)))

(assert (=> bs!1844183 (not (= lambda!392444 lambda!392386))))

(assert (=> bs!1844173 (not (= lambda!392444 lambda!392403))))

(declare-fun bs!1844186 () Bool)

(assert (= bs!1844186 (and b!6907879 b!6907251)))

(assert (=> bs!1844186 (not (= lambda!392444 lambda!392390))))

(declare-fun bs!1844188 () Bool)

(assert (= bs!1844188 (and b!6907879 b!6907353)))

(assert (=> bs!1844188 (not (= lambda!392444 lambda!392396))))

(assert (=> bs!1844186 (not (= lambda!392444 lambda!392389))))

(assert (=> bs!1844174 (not (= lambda!392444 lambda!392433))))

(declare-fun bs!1844189 () Bool)

(assert (= bs!1844189 (and b!6907879 b!6907811)))

(assert (=> bs!1844189 (not (= lambda!392444 lambda!392441))))

(declare-fun bs!1844190 () Bool)

(assert (= bs!1844190 (and b!6907879 b!6907386)))

(assert (=> bs!1844190 (not (= lambda!392444 lambda!392398))))

(declare-fun bs!1844191 () Bool)

(assert (= bs!1844191 (and b!6907879 d!2162909)))

(assert (=> bs!1844191 (not (= lambda!392444 lambda!392417))))

(declare-fun bs!1844192 () Bool)

(assert (= bs!1844192 (and b!6907879 b!6907720)))

(assert (=> bs!1844192 (not (= lambda!392444 lambda!392431))))

(declare-fun bs!1844193 () Bool)

(assert (= bs!1844193 (and b!6907879 d!2162951)))

(assert (=> bs!1844193 (not (= lambda!392444 lambda!392423))))

(assert (=> bs!1844183 (not (= lambda!392444 lambda!392385))))

(declare-fun bs!1844194 () Bool)

(assert (= bs!1844194 (and b!6907879 b!6907558)))

(assert (=> bs!1844194 (not (= lambda!392444 lambda!392410))))

(declare-fun bs!1844195 () Bool)

(assert (= bs!1844195 (and b!6907879 b!6907350)))

(assert (=> bs!1844195 (= (and (= s!14361 (_1!37049 lt!2467760)) (= (reg!17208 lt!2467763) (reg!17208 r1!6342)) (= lt!2467763 r1!6342)) (= lambda!392444 lambda!392395))))

(declare-fun bs!1844196 () Bool)

(assert (= bs!1844196 (and b!6907879 b!6907383)))

(assert (=> bs!1844196 (= (and (= s!14361 (_2!37049 lt!2467760)) (= (reg!17208 lt!2467763) (reg!17208 r2!6280)) (= lt!2467763 r2!6280)) (= lambda!392444 lambda!392397))))

(assert (=> b!6907879 true))

(assert (=> b!6907879 true))

(declare-fun bs!1844198 () Bool)

(declare-fun b!6907882 () Bool)

(assert (= bs!1844198 (and b!6907882 b!6907717)))

(declare-fun lambda!392445 () Int)

(assert (=> bs!1844198 (not (= lambda!392445 lambda!392430))))

(declare-fun bs!1844200 () Bool)

(assert (= bs!1844200 (and b!6907882 d!2162995)))

(assert (=> bs!1844200 (not (= lambda!392445 lambda!392437))))

(declare-fun bs!1844201 () Bool)

(assert (= bs!1844201 (and b!6907882 d!2162895)))

(assert (=> bs!1844201 (= (and (= (regOne!34270 lt!2467763) lt!2467776) (= (regTwo!34270 lt!2467763) r3!135)) (= lambda!392445 lambda!392406))))

(declare-fun bs!1844202 () Bool)

(assert (= bs!1844202 (and b!6907882 d!2162979)))

(assert (=> bs!1844202 (= (and (= s!14361 lt!2467782) (= (regOne!34270 lt!2467763) r2!6280) (= (regTwo!34270 lt!2467763) r3!135)) (= lambda!392445 lambda!392435))))

(declare-fun bs!1844203 () Bool)

(assert (= bs!1844203 (and b!6907882 b!6907555)))

(assert (=> bs!1844203 (not (= lambda!392445 lambda!392409))))

(declare-fun bs!1844204 () Bool)

(assert (= bs!1844204 (and b!6907882 b!6907264)))

(assert (=> bs!1844204 (= (and (= s!14361 (_1!37049 lt!2467767)) (= (regOne!34270 lt!2467763) r1!6342) (= (regTwo!34270 lt!2467763) r2!6280)) (= lambda!392445 lambda!392388))))

(declare-fun bs!1844205 () Bool)

(assert (= bs!1844205 (and b!6907882 d!2162939)))

(assert (=> bs!1844205 (not (= lambda!392445 lambda!392421))))

(assert (=> bs!1844204 (not (= lambda!392445 lambda!392387))))

(declare-fun bs!1844207 () Bool)

(assert (= bs!1844207 (and b!6907882 b!6907808)))

(assert (=> bs!1844207 (not (= lambda!392445 lambda!392440))))

(declare-fun bs!1844208 () Bool)

(assert (= bs!1844208 (and b!6907882 b!6907258)))

(assert (=> bs!1844208 (= (and (= (regOne!34270 lt!2467763) lt!2467776) (= (regTwo!34270 lt!2467763) r3!135)) (= lambda!392445 lambda!392386))))

(assert (=> bs!1844201 (not (= lambda!392445 lambda!392403))))

(declare-fun bs!1844211 () Bool)

(assert (= bs!1844211 (and b!6907882 b!6907251)))

(assert (=> bs!1844211 (= (and (= s!14361 lt!2467782) (= (regOne!34270 lt!2467763) r2!6280) (= (regTwo!34270 lt!2467763) r3!135)) (= lambda!392445 lambda!392390))))

(declare-fun bs!1844213 () Bool)

(assert (= bs!1844213 (and b!6907882 b!6907353)))

(assert (=> bs!1844213 (= (and (= s!14361 (_1!37049 lt!2467760)) (= (regOne!34270 lt!2467763) (regOne!34270 r1!6342)) (= (regTwo!34270 lt!2467763) (regTwo!34270 r1!6342))) (= lambda!392445 lambda!392396))))

(declare-fun bs!1844215 () Bool)

(assert (= bs!1844215 (and b!6907882 b!6907879)))

(assert (=> bs!1844215 (not (= lambda!392445 lambda!392444))))

(assert (=> bs!1844205 (= (and (= s!14361 (_1!37049 lt!2467767)) (= (regOne!34270 lt!2467763) r1!6342) (= (regTwo!34270 lt!2467763) r2!6280)) (= lambda!392445 lambda!392422))))

(assert (=> bs!1844211 (not (= lambda!392445 lambda!392389))))

(assert (=> bs!1844202 (not (= lambda!392445 lambda!392433))))

(declare-fun bs!1844218 () Bool)

(assert (= bs!1844218 (and b!6907882 b!6907811)))

(assert (=> bs!1844218 (= (and (= (regOne!34270 lt!2467763) (regOne!34270 lt!2467769)) (= (regTwo!34270 lt!2467763) (regTwo!34270 lt!2467769))) (= lambda!392445 lambda!392441))))

(declare-fun bs!1844220 () Bool)

(assert (= bs!1844220 (and b!6907882 b!6907386)))

(assert (=> bs!1844220 (= (and (= s!14361 (_2!37049 lt!2467760)) (= (regOne!34270 lt!2467763) (regOne!34270 r2!6280)) (= (regTwo!34270 lt!2467763) (regTwo!34270 r2!6280))) (= lambda!392445 lambda!392398))))

(declare-fun bs!1844222 () Bool)

(assert (= bs!1844222 (and b!6907882 d!2162909)))

(assert (=> bs!1844222 (not (= lambda!392445 lambda!392417))))

(declare-fun bs!1844224 () Bool)

(assert (= bs!1844224 (and b!6907882 b!6907720)))

(assert (=> bs!1844224 (= (and (= s!14361 lt!2467782) (= (regOne!34270 lt!2467763) (regOne!34270 lt!2467762)) (= (regTwo!34270 lt!2467763) (regTwo!34270 lt!2467762))) (= lambda!392445 lambda!392431))))

(declare-fun bs!1844226 () Bool)

(assert (= bs!1844226 (and b!6907882 d!2162951)))

(assert (=> bs!1844226 (not (= lambda!392445 lambda!392423))))

(assert (=> bs!1844208 (not (= lambda!392445 lambda!392385))))

(declare-fun bs!1844228 () Bool)

(assert (= bs!1844228 (and b!6907882 b!6907558)))

(assert (=> bs!1844228 (= (and (= s!14361 (_1!37049 lt!2467767)) (= (regOne!34270 lt!2467763) (regOne!34270 lt!2467776)) (= (regTwo!34270 lt!2467763) (regTwo!34270 lt!2467776))) (= lambda!392445 lambda!392410))))

(declare-fun bs!1844230 () Bool)

(assert (= bs!1844230 (and b!6907882 b!6907350)))

(assert (=> bs!1844230 (not (= lambda!392445 lambda!392395))))

(declare-fun bs!1844231 () Bool)

(assert (= bs!1844231 (and b!6907882 b!6907383)))

(assert (=> bs!1844231 (not (= lambda!392445 lambda!392397))))

(assert (=> b!6907882 true))

(assert (=> b!6907882 true))

(declare-fun b!6907876 () Bool)

(declare-fun e!4159383 () Bool)

(assert (=> b!6907876 (= e!4159383 (= s!14361 (Cons!66512 (c!1283141 lt!2467763) Nil!66512)))))

(declare-fun b!6907877 () Bool)

(declare-fun res!2817123 () Bool)

(declare-fun e!4159385 () Bool)

(assert (=> b!6907877 (=> res!2817123 e!4159385)))

(declare-fun call!628119 () Bool)

(assert (=> b!6907877 (= res!2817123 call!628119)))

(declare-fun e!4159384 () Bool)

(assert (=> b!6907877 (= e!4159384 e!4159385)))

(declare-fun b!6907878 () Bool)

(declare-fun e!4159386 () Bool)

(assert (=> b!6907878 (= e!4159386 call!628119)))

(declare-fun b!6907880 () Bool)

(declare-fun e!4159387 () Bool)

(assert (=> b!6907880 (= e!4159387 e!4159384)))

(declare-fun c!1283285 () Bool)

(assert (=> b!6907880 (= c!1283285 ((_ is Star!16879) lt!2467763))))

(declare-fun bm!628114 () Bool)

(assert (=> bm!628114 (= call!628119 (isEmpty!38752 s!14361))))

(declare-fun call!628120 () Bool)

(assert (=> b!6907879 (= e!4159385 call!628120)))

(declare-fun d!2163017 () Bool)

(declare-fun c!1283287 () Bool)

(assert (=> d!2163017 (= c!1283287 ((_ is EmptyExpr!16879) lt!2467763))))

(assert (=> d!2163017 (= (matchRSpec!3942 lt!2467763 s!14361) e!4159386)))

(declare-fun bm!628115 () Bool)

(assert (=> bm!628115 (= call!628120 (Exists!3887 (ite c!1283285 lambda!392444 lambda!392445)))))

(declare-fun b!6907881 () Bool)

(declare-fun e!4159382 () Bool)

(assert (=> b!6907881 (= e!4159387 e!4159382)))

(declare-fun res!2817122 () Bool)

(assert (=> b!6907881 (= res!2817122 (matchRSpec!3942 (regOne!34271 lt!2467763) s!14361))))

(assert (=> b!6907881 (=> res!2817122 e!4159382)))

(assert (=> b!6907882 (= e!4159384 call!628120)))

(declare-fun b!6907883 () Bool)

(declare-fun c!1283286 () Bool)

(assert (=> b!6907883 (= c!1283286 ((_ is Union!16879) lt!2467763))))

(assert (=> b!6907883 (= e!4159383 e!4159387)))

(declare-fun b!6907884 () Bool)

(assert (=> b!6907884 (= e!4159382 (matchRSpec!3942 (regTwo!34271 lt!2467763) s!14361))))

(declare-fun b!6907885 () Bool)

(declare-fun e!4159388 () Bool)

(assert (=> b!6907885 (= e!4159386 e!4159388)))

(declare-fun res!2817121 () Bool)

(assert (=> b!6907885 (= res!2817121 (not ((_ is EmptyLang!16879) lt!2467763)))))

(assert (=> b!6907885 (=> (not res!2817121) (not e!4159388))))

(declare-fun b!6907886 () Bool)

(declare-fun c!1283288 () Bool)

(assert (=> b!6907886 (= c!1283288 ((_ is ElementMatch!16879) lt!2467763))))

(assert (=> b!6907886 (= e!4159388 e!4159383)))

(assert (= (and d!2163017 c!1283287) b!6907878))

(assert (= (and d!2163017 (not c!1283287)) b!6907885))

(assert (= (and b!6907885 res!2817121) b!6907886))

(assert (= (and b!6907886 c!1283288) b!6907876))

(assert (= (and b!6907886 (not c!1283288)) b!6907883))

(assert (= (and b!6907883 c!1283286) b!6907881))

(assert (= (and b!6907883 (not c!1283286)) b!6907880))

(assert (= (and b!6907881 (not res!2817122)) b!6907884))

(assert (= (and b!6907880 c!1283285) b!6907877))

(assert (= (and b!6907880 (not c!1283285)) b!6907882))

(assert (= (and b!6907877 (not res!2817123)) b!6907879))

(assert (= (or b!6907879 b!6907882) bm!628115))

(assert (= (or b!6907878 b!6907877) bm!628114))

(assert (=> bm!628114 m!7623822))

(declare-fun m!7623880 () Bool)

(assert (=> bm!628115 m!7623880))

(declare-fun m!7623882 () Bool)

(assert (=> b!6907881 m!7623882))

(declare-fun m!7623884 () Bool)

(assert (=> b!6907884 m!7623884))

(assert (=> b!6907255 d!2163017))

(declare-fun d!2163027 () Bool)

(assert (=> d!2163027 (= (matchR!9024 lt!2467769 s!14361) (matchRSpec!3942 lt!2467769 s!14361))))

(declare-fun lt!2467870 () Unit!160494)

(assert (=> d!2163027 (= lt!2467870 (choose!51436 lt!2467769 s!14361))))

(assert (=> d!2163027 (validRegex!8587 lt!2467769)))

(assert (=> d!2163027 (= (mainMatchTheorem!3942 lt!2467769 s!14361) lt!2467870)))

(declare-fun bs!1844234 () Bool)

(assert (= bs!1844234 d!2163027))

(assert (=> bs!1844234 m!7623262))

(assert (=> bs!1844234 m!7623266))

(declare-fun m!7623886 () Bool)

(assert (=> bs!1844234 m!7623886))

(assert (=> bs!1844234 m!7623846))

(assert (=> b!6907255 d!2163027))

(declare-fun b!6907902 () Bool)

(declare-fun res!2817136 () Bool)

(declare-fun e!4159400 () Bool)

(assert (=> b!6907902 (=> res!2817136 e!4159400)))

(assert (=> b!6907902 (= res!2817136 (not (isEmpty!38752 (tail!12904 (_2!37049 lt!2467760)))))))

(declare-fun d!2163029 () Bool)

(declare-fun e!4159399 () Bool)

(assert (=> d!2163029 e!4159399))

(declare-fun c!1283296 () Bool)

(assert (=> d!2163029 (= c!1283296 ((_ is EmptyExpr!16879) r2!6280))))

(declare-fun lt!2467871 () Bool)

(declare-fun e!4159398 () Bool)

(assert (=> d!2163029 (= lt!2467871 e!4159398)))

(declare-fun c!1283294 () Bool)

(assert (=> d!2163029 (= c!1283294 (isEmpty!38752 (_2!37049 lt!2467760)))))

(assert (=> d!2163029 (validRegex!8587 r2!6280)))

(assert (=> d!2163029 (= (matchR!9024 r2!6280 (_2!37049 lt!2467760)) lt!2467871)))

(declare-fun b!6907903 () Bool)

(declare-fun e!4159401 () Bool)

(assert (=> b!6907903 (= e!4159401 e!4159400)))

(declare-fun res!2817133 () Bool)

(assert (=> b!6907903 (=> res!2817133 e!4159400)))

(declare-fun call!628123 () Bool)

(assert (=> b!6907903 (= res!2817133 call!628123)))

(declare-fun b!6907904 () Bool)

(assert (=> b!6907904 (= e!4159399 (= lt!2467871 call!628123))))

(declare-fun b!6907905 () Bool)

(declare-fun e!4159402 () Bool)

(assert (=> b!6907905 (= e!4159399 e!4159402)))

(declare-fun c!1283295 () Bool)

(assert (=> b!6907905 (= c!1283295 ((_ is EmptyLang!16879) r2!6280))))

(declare-fun b!6907906 () Bool)

(assert (=> b!6907906 (= e!4159402 (not lt!2467871))))

(declare-fun b!6907907 () Bool)

(assert (=> b!6907907 (= e!4159398 (matchR!9024 (derivativeStep!5399 r2!6280 (head!13852 (_2!37049 lt!2467760))) (tail!12904 (_2!37049 lt!2467760))))))

(declare-fun b!6907908 () Bool)

(declare-fun res!2817131 () Bool)

(declare-fun e!4159404 () Bool)

(assert (=> b!6907908 (=> (not res!2817131) (not e!4159404))))

(assert (=> b!6907908 (= res!2817131 (isEmpty!38752 (tail!12904 (_2!37049 lt!2467760))))))

(declare-fun b!6907909 () Bool)

(assert (=> b!6907909 (= e!4159404 (= (head!13852 (_2!37049 lt!2467760)) (c!1283141 r2!6280)))))

(declare-fun b!6907910 () Bool)

(declare-fun res!2817130 () Bool)

(declare-fun e!4159403 () Bool)

(assert (=> b!6907910 (=> res!2817130 e!4159403)))

(assert (=> b!6907910 (= res!2817130 e!4159404)))

(declare-fun res!2817132 () Bool)

(assert (=> b!6907910 (=> (not res!2817132) (not e!4159404))))

(assert (=> b!6907910 (= res!2817132 lt!2467871)))

(declare-fun b!6907911 () Bool)

(assert (=> b!6907911 (= e!4159398 (nullable!6719 r2!6280))))

(declare-fun b!6907912 () Bool)

(assert (=> b!6907912 (= e!4159403 e!4159401)))

(declare-fun res!2817134 () Bool)

(assert (=> b!6907912 (=> (not res!2817134) (not e!4159401))))

(assert (=> b!6907912 (= res!2817134 (not lt!2467871))))

(declare-fun b!6907913 () Bool)

(declare-fun res!2817135 () Bool)

(assert (=> b!6907913 (=> res!2817135 e!4159403)))

(assert (=> b!6907913 (= res!2817135 (not ((_ is ElementMatch!16879) r2!6280)))))

(assert (=> b!6907913 (= e!4159402 e!4159403)))

(declare-fun b!6907914 () Bool)

(assert (=> b!6907914 (= e!4159400 (not (= (head!13852 (_2!37049 lt!2467760)) (c!1283141 r2!6280))))))

(declare-fun b!6907915 () Bool)

(declare-fun res!2817129 () Bool)

(assert (=> b!6907915 (=> (not res!2817129) (not e!4159404))))

(assert (=> b!6907915 (= res!2817129 (not call!628123))))

(declare-fun bm!628118 () Bool)

(assert (=> bm!628118 (= call!628123 (isEmpty!38752 (_2!37049 lt!2467760)))))

(assert (= (and d!2163029 c!1283294) b!6907911))

(assert (= (and d!2163029 (not c!1283294)) b!6907907))

(assert (= (and d!2163029 c!1283296) b!6907904))

(assert (= (and d!2163029 (not c!1283296)) b!6907905))

(assert (= (and b!6907905 c!1283295) b!6907906))

(assert (= (and b!6907905 (not c!1283295)) b!6907913))

(assert (= (and b!6907913 (not res!2817135)) b!6907910))

(assert (= (and b!6907910 res!2817132) b!6907915))

(assert (= (and b!6907915 res!2817129) b!6907908))

(assert (= (and b!6907908 res!2817131) b!6907909))

(assert (= (and b!6907910 (not res!2817130)) b!6907912))

(assert (= (and b!6907912 res!2817134) b!6907903))

(assert (= (and b!6907903 (not res!2817133)) b!6907902))

(assert (= (and b!6907902 (not res!2817136)) b!6907914))

(assert (= (or b!6907904 b!6907903 b!6907915) bm!628118))

(assert (=> bm!628118 m!7623402))

(declare-fun m!7623888 () Bool)

(assert (=> b!6907911 m!7623888))

(declare-fun m!7623890 () Bool)

(assert (=> b!6907909 m!7623890))

(assert (=> b!6907914 m!7623890))

(declare-fun m!7623892 () Bool)

(assert (=> b!6907902 m!7623892))

(assert (=> b!6907902 m!7623892))

(declare-fun m!7623894 () Bool)

(assert (=> b!6907902 m!7623894))

(assert (=> d!2163029 m!7623402))

(assert (=> d!2163029 m!7623274))

(assert (=> b!6907908 m!7623892))

(assert (=> b!6907908 m!7623892))

(assert (=> b!6907908 m!7623894))

(assert (=> b!6907907 m!7623890))

(assert (=> b!6907907 m!7623890))

(declare-fun m!7623896 () Bool)

(assert (=> b!6907907 m!7623896))

(assert (=> b!6907907 m!7623892))

(assert (=> b!6907907 m!7623896))

(assert (=> b!6907907 m!7623892))

(declare-fun m!7623898 () Bool)

(assert (=> b!6907907 m!7623898))

(assert (=> b!6907250 d!2163029))

(declare-fun b!6907926 () Bool)

(declare-fun e!4159407 () Bool)

(assert (=> b!6907926 (= e!4159407 tp_is_empty!42983)))

(declare-fun b!6907929 () Bool)

(declare-fun tp!1901956 () Bool)

(declare-fun tp!1901955 () Bool)

(assert (=> b!6907929 (= e!4159407 (and tp!1901956 tp!1901955))))

(declare-fun b!6907927 () Bool)

(declare-fun tp!1901957 () Bool)

(declare-fun tp!1901954 () Bool)

(assert (=> b!6907927 (= e!4159407 (and tp!1901957 tp!1901954))))

(assert (=> b!6907259 (= tp!1901938 e!4159407)))

(declare-fun b!6907928 () Bool)

(declare-fun tp!1901958 () Bool)

(assert (=> b!6907928 (= e!4159407 tp!1901958)))

(assert (= (and b!6907259 ((_ is ElementMatch!16879) (regOne!34270 r3!135))) b!6907926))

(assert (= (and b!6907259 ((_ is Concat!25724) (regOne!34270 r3!135))) b!6907927))

(assert (= (and b!6907259 ((_ is Star!16879) (regOne!34270 r3!135))) b!6907928))

(assert (= (and b!6907259 ((_ is Union!16879) (regOne!34270 r3!135))) b!6907929))

(declare-fun b!6907930 () Bool)

(declare-fun e!4159408 () Bool)

(assert (=> b!6907930 (= e!4159408 tp_is_empty!42983)))

(declare-fun b!6907933 () Bool)

(declare-fun tp!1901961 () Bool)

(declare-fun tp!1901960 () Bool)

(assert (=> b!6907933 (= e!4159408 (and tp!1901961 tp!1901960))))

(declare-fun b!6907931 () Bool)

(declare-fun tp!1901962 () Bool)

(declare-fun tp!1901959 () Bool)

(assert (=> b!6907931 (= e!4159408 (and tp!1901962 tp!1901959))))

(assert (=> b!6907259 (= tp!1901934 e!4159408)))

(declare-fun b!6907932 () Bool)

(declare-fun tp!1901963 () Bool)

(assert (=> b!6907932 (= e!4159408 tp!1901963)))

(assert (= (and b!6907259 ((_ is ElementMatch!16879) (regTwo!34270 r3!135))) b!6907930))

(assert (= (and b!6907259 ((_ is Concat!25724) (regTwo!34270 r3!135))) b!6907931))

(assert (= (and b!6907259 ((_ is Star!16879) (regTwo!34270 r3!135))) b!6907932))

(assert (= (and b!6907259 ((_ is Union!16879) (regTwo!34270 r3!135))) b!6907933))

(declare-fun b!6907934 () Bool)

(declare-fun e!4159409 () Bool)

(assert (=> b!6907934 (= e!4159409 tp_is_empty!42983)))

(declare-fun b!6907937 () Bool)

(declare-fun tp!1901966 () Bool)

(declare-fun tp!1901965 () Bool)

(assert (=> b!6907937 (= e!4159409 (and tp!1901966 tp!1901965))))

(declare-fun b!6907935 () Bool)

(declare-fun tp!1901967 () Bool)

(declare-fun tp!1901964 () Bool)

(assert (=> b!6907935 (= e!4159409 (and tp!1901967 tp!1901964))))

(assert (=> b!6907265 (= tp!1901929 e!4159409)))

(declare-fun b!6907936 () Bool)

(declare-fun tp!1901968 () Bool)

(assert (=> b!6907936 (= e!4159409 tp!1901968)))

(assert (= (and b!6907265 ((_ is ElementMatch!16879) (regOne!34271 r1!6342))) b!6907934))

(assert (= (and b!6907265 ((_ is Concat!25724) (regOne!34271 r1!6342))) b!6907935))

(assert (= (and b!6907265 ((_ is Star!16879) (regOne!34271 r1!6342))) b!6907936))

(assert (= (and b!6907265 ((_ is Union!16879) (regOne!34271 r1!6342))) b!6907937))

(declare-fun b!6907938 () Bool)

(declare-fun e!4159410 () Bool)

(assert (=> b!6907938 (= e!4159410 tp_is_empty!42983)))

(declare-fun b!6907941 () Bool)

(declare-fun tp!1901971 () Bool)

(declare-fun tp!1901970 () Bool)

(assert (=> b!6907941 (= e!4159410 (and tp!1901971 tp!1901970))))

(declare-fun b!6907939 () Bool)

(declare-fun tp!1901972 () Bool)

(declare-fun tp!1901969 () Bool)

(assert (=> b!6907939 (= e!4159410 (and tp!1901972 tp!1901969))))

(assert (=> b!6907265 (= tp!1901935 e!4159410)))

(declare-fun b!6907940 () Bool)

(declare-fun tp!1901973 () Bool)

(assert (=> b!6907940 (= e!4159410 tp!1901973)))

(assert (= (and b!6907265 ((_ is ElementMatch!16879) (regTwo!34271 r1!6342))) b!6907938))

(assert (= (and b!6907265 ((_ is Concat!25724) (regTwo!34271 r1!6342))) b!6907939))

(assert (= (and b!6907265 ((_ is Star!16879) (regTwo!34271 r1!6342))) b!6907940))

(assert (= (and b!6907265 ((_ is Union!16879) (regTwo!34271 r1!6342))) b!6907941))

(declare-fun b!6907942 () Bool)

(declare-fun e!4159411 () Bool)

(assert (=> b!6907942 (= e!4159411 tp_is_empty!42983)))

(declare-fun b!6907945 () Bool)

(declare-fun tp!1901976 () Bool)

(declare-fun tp!1901975 () Bool)

(assert (=> b!6907945 (= e!4159411 (and tp!1901976 tp!1901975))))

(declare-fun b!6907943 () Bool)

(declare-fun tp!1901977 () Bool)

(declare-fun tp!1901974 () Bool)

(assert (=> b!6907943 (= e!4159411 (and tp!1901977 tp!1901974))))

(assert (=> b!6907260 (= tp!1901931 e!4159411)))

(declare-fun b!6907944 () Bool)

(declare-fun tp!1901978 () Bool)

(assert (=> b!6907944 (= e!4159411 tp!1901978)))

(assert (= (and b!6907260 ((_ is ElementMatch!16879) (reg!17208 r3!135))) b!6907942))

(assert (= (and b!6907260 ((_ is Concat!25724) (reg!17208 r3!135))) b!6907943))

(assert (= (and b!6907260 ((_ is Star!16879) (reg!17208 r3!135))) b!6907944))

(assert (= (and b!6907260 ((_ is Union!16879) (reg!17208 r3!135))) b!6907945))

(declare-fun b!6907946 () Bool)

(declare-fun e!4159412 () Bool)

(assert (=> b!6907946 (= e!4159412 tp_is_empty!42983)))

(declare-fun b!6907949 () Bool)

(declare-fun tp!1901981 () Bool)

(declare-fun tp!1901980 () Bool)

(assert (=> b!6907949 (= e!4159412 (and tp!1901981 tp!1901980))))

(declare-fun b!6907947 () Bool)

(declare-fun tp!1901982 () Bool)

(declare-fun tp!1901979 () Bool)

(assert (=> b!6907947 (= e!4159412 (and tp!1901982 tp!1901979))))

(assert (=> b!6907253 (= tp!1901937 e!4159412)))

(declare-fun b!6907948 () Bool)

(declare-fun tp!1901983 () Bool)

(assert (=> b!6907948 (= e!4159412 tp!1901983)))

(assert (= (and b!6907253 ((_ is ElementMatch!16879) (regOne!34270 r2!6280))) b!6907946))

(assert (= (and b!6907253 ((_ is Concat!25724) (regOne!34270 r2!6280))) b!6907947))

(assert (= (and b!6907253 ((_ is Star!16879) (regOne!34270 r2!6280))) b!6907948))

(assert (= (and b!6907253 ((_ is Union!16879) (regOne!34270 r2!6280))) b!6907949))

(declare-fun b!6907950 () Bool)

(declare-fun e!4159413 () Bool)

(assert (=> b!6907950 (= e!4159413 tp_is_empty!42983)))

(declare-fun b!6907953 () Bool)

(declare-fun tp!1901986 () Bool)

(declare-fun tp!1901985 () Bool)

(assert (=> b!6907953 (= e!4159413 (and tp!1901986 tp!1901985))))

(declare-fun b!6907951 () Bool)

(declare-fun tp!1901987 () Bool)

(declare-fun tp!1901984 () Bool)

(assert (=> b!6907951 (= e!4159413 (and tp!1901987 tp!1901984))))

(assert (=> b!6907253 (= tp!1901942 e!4159413)))

(declare-fun b!6907952 () Bool)

(declare-fun tp!1901988 () Bool)

(assert (=> b!6907952 (= e!4159413 tp!1901988)))

(assert (= (and b!6907253 ((_ is ElementMatch!16879) (regTwo!34270 r2!6280))) b!6907950))

(assert (= (and b!6907253 ((_ is Concat!25724) (regTwo!34270 r2!6280))) b!6907951))

(assert (= (and b!6907253 ((_ is Star!16879) (regTwo!34270 r2!6280))) b!6907952))

(assert (= (and b!6907253 ((_ is Union!16879) (regTwo!34270 r2!6280))) b!6907953))

(declare-fun b!6907954 () Bool)

(declare-fun e!4159414 () Bool)

(assert (=> b!6907954 (= e!4159414 tp_is_empty!42983)))

(declare-fun b!6907957 () Bool)

(declare-fun tp!1901991 () Bool)

(declare-fun tp!1901990 () Bool)

(assert (=> b!6907957 (= e!4159414 (and tp!1901991 tp!1901990))))

(declare-fun b!6907955 () Bool)

(declare-fun tp!1901992 () Bool)

(declare-fun tp!1901989 () Bool)

(assert (=> b!6907955 (= e!4159414 (and tp!1901992 tp!1901989))))

(assert (=> b!6907248 (= tp!1901933 e!4159414)))

(declare-fun b!6907956 () Bool)

(declare-fun tp!1901993 () Bool)

(assert (=> b!6907956 (= e!4159414 tp!1901993)))

(assert (= (and b!6907248 ((_ is ElementMatch!16879) (reg!17208 r2!6280))) b!6907954))

(assert (= (and b!6907248 ((_ is Concat!25724) (reg!17208 r2!6280))) b!6907955))

(assert (= (and b!6907248 ((_ is Star!16879) (reg!17208 r2!6280))) b!6907956))

(assert (= (and b!6907248 ((_ is Union!16879) (reg!17208 r2!6280))) b!6907957))

(declare-fun b!6907958 () Bool)

(declare-fun e!4159415 () Bool)

(assert (=> b!6907958 (= e!4159415 tp_is_empty!42983)))

(declare-fun b!6907961 () Bool)

(declare-fun tp!1901996 () Bool)

(declare-fun tp!1901995 () Bool)

(assert (=> b!6907961 (= e!4159415 (and tp!1901996 tp!1901995))))

(declare-fun b!6907959 () Bool)

(declare-fun tp!1901997 () Bool)

(declare-fun tp!1901994 () Bool)

(assert (=> b!6907959 (= e!4159415 (and tp!1901997 tp!1901994))))

(assert (=> b!6907262 (= tp!1901930 e!4159415)))

(declare-fun b!6907960 () Bool)

(declare-fun tp!1901998 () Bool)

(assert (=> b!6907960 (= e!4159415 tp!1901998)))

(assert (= (and b!6907262 ((_ is ElementMatch!16879) (reg!17208 r1!6342))) b!6907958))

(assert (= (and b!6907262 ((_ is Concat!25724) (reg!17208 r1!6342))) b!6907959))

(assert (= (and b!6907262 ((_ is Star!16879) (reg!17208 r1!6342))) b!6907960))

(assert (= (and b!6907262 ((_ is Union!16879) (reg!17208 r1!6342))) b!6907961))

(declare-fun b!6907962 () Bool)

(declare-fun e!4159416 () Bool)

(assert (=> b!6907962 (= e!4159416 tp_is_empty!42983)))

(declare-fun b!6907965 () Bool)

(declare-fun tp!1902001 () Bool)

(declare-fun tp!1902000 () Bool)

(assert (=> b!6907965 (= e!4159416 (and tp!1902001 tp!1902000))))

(declare-fun b!6907963 () Bool)

(declare-fun tp!1902002 () Bool)

(declare-fun tp!1901999 () Bool)

(assert (=> b!6907963 (= e!4159416 (and tp!1902002 tp!1901999))))

(assert (=> b!6907257 (= tp!1901940 e!4159416)))

(declare-fun b!6907964 () Bool)

(declare-fun tp!1902003 () Bool)

(assert (=> b!6907964 (= e!4159416 tp!1902003)))

(assert (= (and b!6907257 ((_ is ElementMatch!16879) (regOne!34270 r1!6342))) b!6907962))

(assert (= (and b!6907257 ((_ is Concat!25724) (regOne!34270 r1!6342))) b!6907963))

(assert (= (and b!6907257 ((_ is Star!16879) (regOne!34270 r1!6342))) b!6907964))

(assert (= (and b!6907257 ((_ is Union!16879) (regOne!34270 r1!6342))) b!6907965))

(declare-fun b!6907966 () Bool)

(declare-fun e!4159417 () Bool)

(assert (=> b!6907966 (= e!4159417 tp_is_empty!42983)))

(declare-fun b!6907969 () Bool)

(declare-fun tp!1902006 () Bool)

(declare-fun tp!1902005 () Bool)

(assert (=> b!6907969 (= e!4159417 (and tp!1902006 tp!1902005))))

(declare-fun b!6907967 () Bool)

(declare-fun tp!1902007 () Bool)

(declare-fun tp!1902004 () Bool)

(assert (=> b!6907967 (= e!4159417 (and tp!1902007 tp!1902004))))

(assert (=> b!6907257 (= tp!1901928 e!4159417)))

(declare-fun b!6907968 () Bool)

(declare-fun tp!1902008 () Bool)

(assert (=> b!6907968 (= e!4159417 tp!1902008)))

(assert (= (and b!6907257 ((_ is ElementMatch!16879) (regTwo!34270 r1!6342))) b!6907966))

(assert (= (and b!6907257 ((_ is Concat!25724) (regTwo!34270 r1!6342))) b!6907967))

(assert (= (and b!6907257 ((_ is Star!16879) (regTwo!34270 r1!6342))) b!6907968))

(assert (= (and b!6907257 ((_ is Union!16879) (regTwo!34270 r1!6342))) b!6907969))

(declare-fun b!6907974 () Bool)

(declare-fun e!4159420 () Bool)

(declare-fun tp!1902011 () Bool)

(assert (=> b!6907974 (= e!4159420 (and tp_is_empty!42983 tp!1902011))))

(assert (=> b!6907266 (= tp!1901943 e!4159420)))

(assert (= (and b!6907266 ((_ is Cons!66512) (t!380379 s!14361))) b!6907974))

(declare-fun b!6907975 () Bool)

(declare-fun e!4159421 () Bool)

(assert (=> b!6907975 (= e!4159421 tp_is_empty!42983)))

(declare-fun b!6907978 () Bool)

(declare-fun tp!1902014 () Bool)

(declare-fun tp!1902013 () Bool)

(assert (=> b!6907978 (= e!4159421 (and tp!1902014 tp!1902013))))

(declare-fun b!6907976 () Bool)

(declare-fun tp!1902015 () Bool)

(declare-fun tp!1902012 () Bool)

(assert (=> b!6907976 (= e!4159421 (and tp!1902015 tp!1902012))))

(assert (=> b!6907261 (= tp!1901941 e!4159421)))

(declare-fun b!6907977 () Bool)

(declare-fun tp!1902016 () Bool)

(assert (=> b!6907977 (= e!4159421 tp!1902016)))

(assert (= (and b!6907261 ((_ is ElementMatch!16879) (regOne!34271 r2!6280))) b!6907975))

(assert (= (and b!6907261 ((_ is Concat!25724) (regOne!34271 r2!6280))) b!6907976))

(assert (= (and b!6907261 ((_ is Star!16879) (regOne!34271 r2!6280))) b!6907977))

(assert (= (and b!6907261 ((_ is Union!16879) (regOne!34271 r2!6280))) b!6907978))

(declare-fun b!6907979 () Bool)

(declare-fun e!4159422 () Bool)

(assert (=> b!6907979 (= e!4159422 tp_is_empty!42983)))

(declare-fun b!6907982 () Bool)

(declare-fun tp!1902019 () Bool)

(declare-fun tp!1902018 () Bool)

(assert (=> b!6907982 (= e!4159422 (and tp!1902019 tp!1902018))))

(declare-fun b!6907980 () Bool)

(declare-fun tp!1902020 () Bool)

(declare-fun tp!1902017 () Bool)

(assert (=> b!6907980 (= e!4159422 (and tp!1902020 tp!1902017))))

(assert (=> b!6907261 (= tp!1901939 e!4159422)))

(declare-fun b!6907981 () Bool)

(declare-fun tp!1902021 () Bool)

(assert (=> b!6907981 (= e!4159422 tp!1902021)))

(assert (= (and b!6907261 ((_ is ElementMatch!16879) (regTwo!34271 r2!6280))) b!6907979))

(assert (= (and b!6907261 ((_ is Concat!25724) (regTwo!34271 r2!6280))) b!6907980))

(assert (= (and b!6907261 ((_ is Star!16879) (regTwo!34271 r2!6280))) b!6907981))

(assert (= (and b!6907261 ((_ is Union!16879) (regTwo!34271 r2!6280))) b!6907982))

(declare-fun b!6907983 () Bool)

(declare-fun e!4159423 () Bool)

(assert (=> b!6907983 (= e!4159423 tp_is_empty!42983)))

(declare-fun b!6907986 () Bool)

(declare-fun tp!1902024 () Bool)

(declare-fun tp!1902023 () Bool)

(assert (=> b!6907986 (= e!4159423 (and tp!1902024 tp!1902023))))

(declare-fun b!6907984 () Bool)

(declare-fun tp!1902025 () Bool)

(declare-fun tp!1902022 () Bool)

(assert (=> b!6907984 (= e!4159423 (and tp!1902025 tp!1902022))))

(assert (=> b!6907256 (= tp!1901932 e!4159423)))

(declare-fun b!6907985 () Bool)

(declare-fun tp!1902026 () Bool)

(assert (=> b!6907985 (= e!4159423 tp!1902026)))

(assert (= (and b!6907256 ((_ is ElementMatch!16879) (regOne!34271 r3!135))) b!6907983))

(assert (= (and b!6907256 ((_ is Concat!25724) (regOne!34271 r3!135))) b!6907984))

(assert (= (and b!6907256 ((_ is Star!16879) (regOne!34271 r3!135))) b!6907985))

(assert (= (and b!6907256 ((_ is Union!16879) (regOne!34271 r3!135))) b!6907986))

(declare-fun b!6907987 () Bool)

(declare-fun e!4159424 () Bool)

(assert (=> b!6907987 (= e!4159424 tp_is_empty!42983)))

(declare-fun b!6907990 () Bool)

(declare-fun tp!1902029 () Bool)

(declare-fun tp!1902028 () Bool)

(assert (=> b!6907990 (= e!4159424 (and tp!1902029 tp!1902028))))

(declare-fun b!6907988 () Bool)

(declare-fun tp!1902030 () Bool)

(declare-fun tp!1902027 () Bool)

(assert (=> b!6907988 (= e!4159424 (and tp!1902030 tp!1902027))))

(assert (=> b!6907256 (= tp!1901936 e!4159424)))

(declare-fun b!6907989 () Bool)

(declare-fun tp!1902031 () Bool)

(assert (=> b!6907989 (= e!4159424 tp!1902031)))

(assert (= (and b!6907256 ((_ is ElementMatch!16879) (regTwo!34271 r3!135))) b!6907987))

(assert (= (and b!6907256 ((_ is Concat!25724) (regTwo!34271 r3!135))) b!6907988))

(assert (= (and b!6907256 ((_ is Star!16879) (regTwo!34271 r3!135))) b!6907989))

(assert (= (and b!6907256 ((_ is Union!16879) (regTwo!34271 r3!135))) b!6907990))

(check-sat (not b!6907902) (not d!2162965) (not b!6907980) (not b!6907940) (not b!6907976) (not b!6907803) (not bm!628056) (not b!6907544) (not b!6907868) (not b!6907955) (not b!6907680) (not b!6907681) (not b!6907974) (not b!6907871) (not d!2162947) (not d!2162989) (not bm!628114) (not d!2162873) (not b!6907298) (not d!2162945) (not b!6907857) (not bm!628092) (not b!6907813) (not b!6907951) (not b!6907944) (not b!6907560) (not b!6907639) (not b!6907927) (not b!6907676) (not b!6907848) (not bm!628088) (not b!6907646) (not b!6907688) (not d!2162961) (not b!6907928) (not b!6907632) (not d!2163027) (not bm!628082) (not bm!628106) (not bm!628063) (not b!6907947) (not b!6907697) (not b!6907854) (not b!6907853) (not bm!628096) (not d!2162979) (not b!6907797) (not b!6907908) (not b!6907476) (not d!2162907) (not b!6907634) (not b!6907801) (not b!6907798) (not b!6907963) (not d!2162895) (not b!6907969) (not b!6907956) (not b!6907388) (not b!6907867) (not d!2162887) (not b!6907312) (not bm!628113) (not d!2162999) (not bm!628095) (not d!2162967) (not d!2163029) (not b!6907355) (not bm!628062) (not bm!628112) (not d!2162875) (not d!2162893) (not b!6907941) (not b!6907550) (not b!6907547) (not b!6907933) (not b!6907372) (not b!6907769) (not bm!628057) (not b!6907543) (not b!6907929) (not b!6907631) (not b!6907985) (not b!6907937) (not b!6907952) (not b!6907677) (not d!2162929) (not b!6907957) (not b!6907965) (not b!6907682) (not b!6907869) (not b!6907545) (not b!6907707) tp_is_empty!42983 (not b!6907678) (not bm!628090) (not b!6907881) (not b!6907538) (not b!6907477) (not b!6907990) (not b!6907943) (not b!6907932) (not bm!628093) (not b!6907939) (not d!2162903) (not d!2162949) (not b!6907802) (not d!2162951) (not b!6907708) (not b!6907968) (not b!6907799) (not bm!628102) (not b!6907627) (not bm!628049) (not b!6907988) (not b!6907884) (not b!6907641) (not b!6907767) (not b!6907630) (not b!6907470) (not d!2162937) (not d!2162927) (not b!6907626) (not b!6907989) (not b!6907978) (not b!6907948) (not b!6907862) (not b!6907643) (not b!6907722) (not b!6907907) (not b!6907977) (not d!2162941) (not b!6907860) (not b!6907953) (not b!6907986) (not d!2163013) (not bm!628081) (not d!2162963) (not b!6907936) (not d!2162909) (not b!6907935) (not b!6907909) (not b!6907914) (not bm!628050) (not b!6907961) (not b!6907855) (not b!6907982) (not b!6907967) (not b!6907313) (not b!6907774) (not d!2163011) (not d!2162939) (not b!6907810) (not b!6907984) (not b!6907874) (not b!6907945) (not d!2163015) (not d!2162995) (not b!6907771) (not b!6907960) (not b!6907479) (not bm!628074) (not bm!628089) (not b!6907964) (not b!6907557) (not d!2162881) (not bm!628118) (not b!6907482) (not b!6907959) (not bm!628105) (not d!2162889) (not b!6907911) (not bm!628076) (not d!2162933) (not b!6907640) (not b!6907768) (not b!6907931) (not b!6907949) (not b!6907719) (not bm!628115) (not b!6907475) (not d!2162957) (not b!6907628) (not d!2162959) (not b!6907352) (not b!6907371) (not b!6907981) (not b!6907385) (not b!6907762))
(check-sat)
