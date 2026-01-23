; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664422 () Bool)

(assert start!664422)

(declare-fun b!6893867 () Bool)

(assert (=> b!6893867 true))

(assert (=> b!6893867 true))

(assert (=> b!6893867 true))

(declare-fun lambda!390790 () Int)

(declare-fun lambda!390789 () Int)

(assert (=> b!6893867 (not (= lambda!390790 lambda!390789))))

(assert (=> b!6893867 true))

(assert (=> b!6893867 true))

(assert (=> b!6893867 true))

(declare-fun b!6893858 () Bool)

(declare-fun e!4152647 () Bool)

(declare-fun tp_is_empty!42871 () Bool)

(declare-fun tp!1897318 () Bool)

(assert (=> b!6893858 (= e!4152647 (and tp_is_empty!42871 tp!1897318))))

(declare-fun res!2810633 () Bool)

(declare-fun e!4152652 () Bool)

(assert (=> start!664422 (=> (not res!2810633) (not e!4152652))))

(declare-datatypes ((C!33916 0))(
  ( (C!33917 (val!26660 Int)) )
))
(declare-datatypes ((Regex!16823 0))(
  ( (ElementMatch!16823 (c!1281547 C!33916)) (Concat!25668 (regOne!34158 Regex!16823) (regTwo!34158 Regex!16823)) (EmptyExpr!16823) (Star!16823 (reg!17152 Regex!16823)) (EmptyLang!16823) (Union!16823 (regOne!34159 Regex!16823) (regTwo!34159 Regex!16823)) )
))
(declare-fun r1!6342 () Regex!16823)

(declare-fun validRegex!8531 (Regex!16823) Bool)

(assert (=> start!664422 (= res!2810633 (validRegex!8531 r1!6342))))

(assert (=> start!664422 e!4152652))

(declare-fun e!4152651 () Bool)

(assert (=> start!664422 e!4152651))

(declare-fun e!4152648 () Bool)

(assert (=> start!664422 e!4152648))

(declare-fun e!4152649 () Bool)

(assert (=> start!664422 e!4152649))

(assert (=> start!664422 e!4152647))

(declare-fun b!6893859 () Bool)

(assert (=> b!6893859 (= e!4152651 tp_is_empty!42871)))

(declare-fun b!6893860 () Bool)

(assert (=> b!6893860 (= e!4152648 tp_is_empty!42871)))

(declare-fun b!6893861 () Bool)

(declare-fun tp!1897313 () Bool)

(declare-fun tp!1897311 () Bool)

(assert (=> b!6893861 (= e!4152651 (and tp!1897313 tp!1897311))))

(declare-fun b!6893862 () Bool)

(declare-fun e!4152650 () Bool)

(assert (=> b!6893862 (= e!4152652 (not e!4152650))))

(declare-fun res!2810636 () Bool)

(assert (=> b!6893862 (=> res!2810636 e!4152650)))

(declare-fun lt!2463349 () Bool)

(assert (=> b!6893862 (= res!2810636 lt!2463349)))

(declare-fun lt!2463359 () Regex!16823)

(declare-datatypes ((List!66580 0))(
  ( (Nil!66456) (Cons!66456 (h!72904 C!33916) (t!380323 List!66580)) )
))
(declare-fun s!14361 () List!66580)

(declare-fun matchR!8968 (Regex!16823 List!66580) Bool)

(declare-fun matchRSpec!3886 (Regex!16823 List!66580) Bool)

(assert (=> b!6893862 (= (matchR!8968 lt!2463359 s!14361) (matchRSpec!3886 lt!2463359 s!14361))))

(declare-datatypes ((Unit!160366 0))(
  ( (Unit!160367) )
))
(declare-fun lt!2463352 () Unit!160366)

(declare-fun mainMatchTheorem!3886 (Regex!16823 List!66580) Unit!160366)

(assert (=> b!6893862 (= lt!2463352 (mainMatchTheorem!3886 lt!2463359 s!14361))))

(declare-fun lt!2463354 () Regex!16823)

(assert (=> b!6893862 (= lt!2463349 (matchRSpec!3886 lt!2463354 s!14361))))

(assert (=> b!6893862 (= lt!2463349 (matchR!8968 lt!2463354 s!14361))))

(declare-fun lt!2463356 () Unit!160366)

(assert (=> b!6893862 (= lt!2463356 (mainMatchTheorem!3886 lt!2463354 s!14361))))

(declare-fun lt!2463357 () Regex!16823)

(assert (=> b!6893862 (= lt!2463359 (Concat!25668 r1!6342 lt!2463357))))

(declare-fun r2!6280 () Regex!16823)

(declare-fun r3!135 () Regex!16823)

(assert (=> b!6893862 (= lt!2463357 (Concat!25668 r2!6280 r3!135))))

(assert (=> b!6893862 (= lt!2463354 (Concat!25668 (Concat!25668 r1!6342 r2!6280) r3!135))))

(declare-fun b!6893863 () Bool)

(declare-fun tp!1897316 () Bool)

(declare-fun tp!1897304 () Bool)

(assert (=> b!6893863 (= e!4152649 (and tp!1897316 tp!1897304))))

(declare-fun b!6893864 () Bool)

(declare-fun tp!1897310 () Bool)

(declare-fun tp!1897309 () Bool)

(assert (=> b!6893864 (= e!4152648 (and tp!1897310 tp!1897309))))

(declare-fun b!6893865 () Bool)

(declare-fun tp!1897305 () Bool)

(assert (=> b!6893865 (= e!4152651 tp!1897305)))

(declare-fun b!6893866 () Bool)

(declare-fun tp!1897306 () Bool)

(assert (=> b!6893866 (= e!4152649 tp!1897306)))

(declare-fun e!4152646 () Bool)

(assert (=> b!6893867 (= e!4152646 true)))

(declare-datatypes ((tuple2!67380 0))(
  ( (tuple2!67381 (_1!36993 List!66580) (_2!36993 List!66580)) )
))
(declare-fun lt!2463358 () tuple2!67380)

(assert (=> b!6893867 (= (matchR!8968 r1!6342 (_1!36993 lt!2463358)) (matchRSpec!3886 r1!6342 (_1!36993 lt!2463358)))))

(declare-fun lt!2463353 () Unit!160366)

(assert (=> b!6893867 (= lt!2463353 (mainMatchTheorem!3886 r1!6342 (_1!36993 lt!2463358)))))

(declare-datatypes ((Option!16602 0))(
  ( (None!16601) (Some!16601 (v!52873 tuple2!67380)) )
))
(declare-fun lt!2463350 () Option!16602)

(declare-fun get!23185 (Option!16602) tuple2!67380)

(assert (=> b!6893867 (= lt!2463358 (get!23185 lt!2463350))))

(declare-fun Exists!3831 (Int) Bool)

(assert (=> b!6893867 (= (Exists!3831 lambda!390789) (Exists!3831 lambda!390790))))

(declare-fun lt!2463351 () Unit!160366)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2304 (Regex!16823 Regex!16823 List!66580) Unit!160366)

(assert (=> b!6893867 (= lt!2463351 (lemmaExistCutMatchRandMatchRSpecEquivalent!2304 r1!6342 lt!2463357 s!14361))))

(assert (=> b!6893867 (Exists!3831 lambda!390789)))

(declare-fun lt!2463355 () Unit!160366)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2778 (Regex!16823 Regex!16823 List!66580) Unit!160366)

(assert (=> b!6893867 (= lt!2463355 (lemmaFindConcatSeparationEquivalentToExists!2778 r1!6342 lt!2463357 s!14361))))

(declare-fun b!6893868 () Bool)

(assert (=> b!6893868 (= e!4152649 tp_is_empty!42871)))

(declare-fun b!6893869 () Bool)

(declare-fun res!2810632 () Bool)

(assert (=> b!6893869 (=> (not res!2810632) (not e!4152652))))

(assert (=> b!6893869 (= res!2810632 (validRegex!8531 r2!6280))))

(declare-fun b!6893870 () Bool)

(declare-fun tp!1897307 () Bool)

(declare-fun tp!1897315 () Bool)

(assert (=> b!6893870 (= e!4152648 (and tp!1897307 tp!1897315))))

(declare-fun b!6893871 () Bool)

(assert (=> b!6893871 (= e!4152650 e!4152646)))

(declare-fun res!2810635 () Bool)

(assert (=> b!6893871 (=> res!2810635 e!4152646)))

(declare-fun isDefined!13305 (Option!16602) Bool)

(assert (=> b!6893871 (= res!2810635 (not (isDefined!13305 lt!2463350)))))

(declare-fun findConcatSeparation!3016 (Regex!16823 Regex!16823 List!66580 List!66580 List!66580) Option!16602)

(assert (=> b!6893871 (= lt!2463350 (findConcatSeparation!3016 r1!6342 lt!2463357 Nil!66456 s!14361 s!14361))))

(declare-fun b!6893872 () Bool)

(declare-fun res!2810634 () Bool)

(assert (=> b!6893872 (=> (not res!2810634) (not e!4152652))))

(assert (=> b!6893872 (= res!2810634 (validRegex!8531 r3!135))))

(declare-fun b!6893873 () Bool)

(declare-fun tp!1897308 () Bool)

(assert (=> b!6893873 (= e!4152648 tp!1897308)))

(declare-fun b!6893874 () Bool)

(declare-fun tp!1897317 () Bool)

(declare-fun tp!1897314 () Bool)

(assert (=> b!6893874 (= e!4152651 (and tp!1897317 tp!1897314))))

(declare-fun b!6893875 () Bool)

(declare-fun tp!1897312 () Bool)

(declare-fun tp!1897319 () Bool)

(assert (=> b!6893875 (= e!4152649 (and tp!1897312 tp!1897319))))

(assert (= (and start!664422 res!2810633) b!6893869))

(assert (= (and b!6893869 res!2810632) b!6893872))

(assert (= (and b!6893872 res!2810634) b!6893862))

(assert (= (and b!6893862 (not res!2810636)) b!6893871))

(assert (= (and b!6893871 (not res!2810635)) b!6893867))

(get-info :version)

(assert (= (and start!664422 ((_ is ElementMatch!16823) r1!6342)) b!6893859))

(assert (= (and start!664422 ((_ is Concat!25668) r1!6342)) b!6893861))

(assert (= (and start!664422 ((_ is Star!16823) r1!6342)) b!6893865))

(assert (= (and start!664422 ((_ is Union!16823) r1!6342)) b!6893874))

(assert (= (and start!664422 ((_ is ElementMatch!16823) r2!6280)) b!6893860))

(assert (= (and start!664422 ((_ is Concat!25668) r2!6280)) b!6893864))

(assert (= (and start!664422 ((_ is Star!16823) r2!6280)) b!6893873))

(assert (= (and start!664422 ((_ is Union!16823) r2!6280)) b!6893870))

(assert (= (and start!664422 ((_ is ElementMatch!16823) r3!135)) b!6893868))

(assert (= (and start!664422 ((_ is Concat!25668) r3!135)) b!6893863))

(assert (= (and start!664422 ((_ is Star!16823) r3!135)) b!6893866))

(assert (= (and start!664422 ((_ is Union!16823) r3!135)) b!6893875))

(assert (= (and start!664422 ((_ is Cons!66456) s!14361)) b!6893858))

(declare-fun m!7614014 () Bool)

(assert (=> b!6893869 m!7614014))

(declare-fun m!7614016 () Bool)

(assert (=> b!6893867 m!7614016))

(declare-fun m!7614018 () Bool)

(assert (=> b!6893867 m!7614018))

(declare-fun m!7614020 () Bool)

(assert (=> b!6893867 m!7614020))

(declare-fun m!7614022 () Bool)

(assert (=> b!6893867 m!7614022))

(declare-fun m!7614024 () Bool)

(assert (=> b!6893867 m!7614024))

(assert (=> b!6893867 m!7614016))

(declare-fun m!7614026 () Bool)

(assert (=> b!6893867 m!7614026))

(declare-fun m!7614028 () Bool)

(assert (=> b!6893867 m!7614028))

(declare-fun m!7614030 () Bool)

(assert (=> b!6893867 m!7614030))

(declare-fun m!7614032 () Bool)

(assert (=> b!6893862 m!7614032))

(declare-fun m!7614034 () Bool)

(assert (=> b!6893862 m!7614034))

(declare-fun m!7614036 () Bool)

(assert (=> b!6893862 m!7614036))

(declare-fun m!7614038 () Bool)

(assert (=> b!6893862 m!7614038))

(declare-fun m!7614040 () Bool)

(assert (=> b!6893862 m!7614040))

(declare-fun m!7614042 () Bool)

(assert (=> b!6893862 m!7614042))

(declare-fun m!7614044 () Bool)

(assert (=> start!664422 m!7614044))

(declare-fun m!7614046 () Bool)

(assert (=> b!6893872 m!7614046))

(declare-fun m!7614048 () Bool)

(assert (=> b!6893871 m!7614048))

(declare-fun m!7614050 () Bool)

(assert (=> b!6893871 m!7614050))

(check-sat (not b!6893875) (not b!6893870) tp_is_empty!42871 (not b!6893864) (not b!6893873) (not b!6893866) (not start!664422) (not b!6893872) (not b!6893871) (not b!6893869) (not b!6893858) (not b!6893863) (not b!6893862) (not b!6893865) (not b!6893867) (not b!6893861) (not b!6893874))
(check-sat)
