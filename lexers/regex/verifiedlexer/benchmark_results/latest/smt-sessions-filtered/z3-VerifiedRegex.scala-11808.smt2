; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664678 () Bool)

(assert start!664678)

(declare-fun b!6900576 () Bool)

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(declare-fun lambda!391708 () Int)

(declare-fun lambda!391707 () Int)

(assert (=> b!6900576 (not (= lambda!391708 lambda!391707))))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(declare-datatypes ((C!33996 0))(
  ( (C!33997 (val!26700 Int)) )
))
(declare-datatypes ((Regex!16863 0))(
  ( (ElementMatch!16863 (c!1282133 C!33996)) (Concat!25708 (regOne!34238 Regex!16863) (regTwo!34238 Regex!16863)) (EmptyExpr!16863) (Star!16863 (reg!17192 Regex!16863)) (EmptyLang!16863) (Union!16863 (regOne!34239 Regex!16863) (regTwo!34239 Regex!16863)) )
))
(declare-fun r1!6342 () Regex!16863)

(declare-fun lambda!391709 () Int)

(declare-fun r3!135 () Regex!16863)

(declare-datatypes ((List!66620 0))(
  ( (Nil!66496) (Cons!66496 (h!72944 C!33996) (t!380363 List!66620)) )
))
(declare-fun s!14361 () List!66620)

(declare-datatypes ((tuple2!67460 0))(
  ( (tuple2!67461 (_1!37033 List!66620) (_2!37033 List!66620)) )
))
(declare-fun lt!2466213 () tuple2!67460)

(declare-fun lt!2466234 () Regex!16863)

(declare-fun r2!6280 () Regex!16863)

(assert (=> b!6900576 (= (and (= (_2!37033 lt!2466213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466234)) (= lambda!391709 lambda!391707))))

(assert (=> b!6900576 (not (= lambda!391709 lambda!391708))))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(declare-fun lambda!391710 () Int)

(assert (=> b!6900576 (not (= lambda!391710 lambda!391707))))

(assert (=> b!6900576 (= (and (= (_2!37033 lt!2466213) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466234)) (= lambda!391710 lambda!391708))))

(assert (=> b!6900576 (not (= lambda!391710 lambda!391709))))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(declare-fun lambda!391711 () Int)

(declare-fun lt!2466224 () List!66620)

(assert (=> b!6900576 (= (and (= lt!2466224 s!14361) (= r2!6280 lt!2466234)) (= lambda!391711 lambda!391707))))

(assert (=> b!6900576 (not (= lambda!391711 lambda!391708))))

(assert (=> b!6900576 (= (and (= lt!2466224 (_2!37033 lt!2466213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391711 lambda!391709))))

(assert (=> b!6900576 (not (= lambda!391711 lambda!391710))))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(declare-fun lambda!391712 () Int)

(assert (=> b!6900576 (not (= lambda!391712 lambda!391711))))

(assert (=> b!6900576 (= (and (= lt!2466224 s!14361) (= r2!6280 lt!2466234)) (= lambda!391712 lambda!391708))))

(assert (=> b!6900576 (= (and (= lt!2466224 (_2!37033 lt!2466213)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391712 lambda!391710))))

(assert (=> b!6900576 (not (= lambda!391712 lambda!391709))))

(assert (=> b!6900576 (not (= lambda!391712 lambda!391707))))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(declare-fun lt!2466217 () Regex!16863)

(declare-fun lambda!391713 () Int)

(assert (=> b!6900576 (= (and (= s!14361 lt!2466224) (= lt!2466217 r1!6342) (= r3!135 r2!6280)) (= lambda!391713 lambda!391711))))

(assert (=> b!6900576 (not (= lambda!391713 lambda!391710))))

(assert (=> b!6900576 (not (= lambda!391713 lambda!391712))))

(assert (=> b!6900576 (not (= lambda!391713 lambda!391708))))

(assert (=> b!6900576 (= (and (= s!14361 (_2!37033 lt!2466213)) (= lt!2466217 r2!6280)) (= lambda!391713 lambda!391709))))

(assert (=> b!6900576 (= (and (= lt!2466217 r1!6342) (= r3!135 lt!2466234)) (= lambda!391713 lambda!391707))))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(assert (=> b!6900576 true))

(declare-fun bs!1841765 () Bool)

(declare-fun b!6900593 () Bool)

(assert (= bs!1841765 (and b!6900593 b!6900576)))

(declare-fun lambda!391714 () Int)

(assert (=> bs!1841765 (= (and (= s!14361 lt!2466224) (= lt!2466234 r2!6280)) (= lambda!391714 lambda!391711))))

(assert (=> bs!1841765 (= (and (= r1!6342 lt!2466217) (= lt!2466234 r3!135)) (= lambda!391714 lambda!391713))))

(assert (=> bs!1841765 (not (= lambda!391714 lambda!391710))))

(assert (=> bs!1841765 (not (= lambda!391714 lambda!391712))))

(assert (=> bs!1841765 (not (= lambda!391714 lambda!391708))))

(assert (=> bs!1841765 (= (and (= s!14361 (_2!37033 lt!2466213)) (= r1!6342 r2!6280) (= lt!2466234 r3!135)) (= lambda!391714 lambda!391709))))

(assert (=> bs!1841765 (= lambda!391714 lambda!391707)))

(assert (=> b!6900593 true))

(assert (=> b!6900593 true))

(assert (=> b!6900593 true))

(declare-fun b!6900575 () Bool)

(declare-fun res!2813874 () Bool)

(declare-fun e!4155742 () Bool)

(assert (=> b!6900575 (=> (not res!2813874) (not e!4155742))))

(declare-fun validRegex!8571 (Regex!16863) Bool)

(assert (=> b!6900575 (= res!2813874 (validRegex!8571 r3!135))))

(declare-datatypes ((Unit!160452 0))(
  ( (Unit!160453) )
))
(declare-fun e!4155744 () Unit!160452)

(declare-fun Unit!160454 () Unit!160452)

(assert (=> b!6900576 (= e!4155744 Unit!160454)))

(declare-fun lt!2466214 () Unit!160452)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2818 (Regex!16863 Regex!16863 List!66620) Unit!160452)

(assert (=> b!6900576 (= lt!2466214 (lemmaFindConcatSeparationEquivalentToExists!2818 r1!6342 lt!2466234 s!14361))))

(declare-fun Exists!3871 (Int) Bool)

(assert (=> b!6900576 (Exists!3871 lambda!391707)))

(declare-fun lt!2466208 () Unit!160452)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2344 (Regex!16863 Regex!16863 List!66620) Unit!160452)

(assert (=> b!6900576 (= lt!2466208 (lemmaExistCutMatchRandMatchRSpecEquivalent!2344 r1!6342 lt!2466234 s!14361))))

(assert (=> b!6900576 (= (Exists!3871 lambda!391707) (Exists!3871 lambda!391708))))

(declare-datatypes ((Option!16642 0))(
  ( (None!16641) (Some!16641 (v!52913 tuple2!67460)) )
))
(declare-fun lt!2466239 () Option!16642)

(declare-fun get!23245 (Option!16642) tuple2!67460)

(assert (=> b!6900576 (= lt!2466213 (get!23245 lt!2466239))))

(declare-fun lt!2466238 () Unit!160452)

(declare-fun mainMatchTheorem!3926 (Regex!16863 List!66620) Unit!160452)

(assert (=> b!6900576 (= lt!2466238 (mainMatchTheorem!3926 r1!6342 (_1!37033 lt!2466213)))))

(declare-fun matchR!9008 (Regex!16863 List!66620) Bool)

(declare-fun matchRSpec!3926 (Regex!16863 List!66620) Bool)

(assert (=> b!6900576 (= (matchR!9008 r1!6342 (_1!37033 lt!2466213)) (matchRSpec!3926 r1!6342 (_1!37033 lt!2466213)))))

(declare-fun lt!2466219 () Unit!160452)

(assert (=> b!6900576 (= lt!2466219 (mainMatchTheorem!3926 lt!2466234 (_2!37033 lt!2466213)))))

(assert (=> b!6900576 (= (matchR!9008 lt!2466234 (_2!37033 lt!2466213)) (matchRSpec!3926 lt!2466234 (_2!37033 lt!2466213)))))

(declare-fun lt!2466226 () Unit!160452)

(assert (=> b!6900576 (= lt!2466226 (lemmaFindConcatSeparationEquivalentToExists!2818 r2!6280 r3!135 (_2!37033 lt!2466213)))))

(declare-fun lt!2466209 () Option!16642)

(declare-fun findConcatSeparation!3056 (Regex!16863 Regex!16863 List!66620 List!66620 List!66620) Option!16642)

(assert (=> b!6900576 (= lt!2466209 (findConcatSeparation!3056 r2!6280 r3!135 Nil!66496 (_2!37033 lt!2466213) (_2!37033 lt!2466213)))))

(declare-fun isDefined!13345 (Option!16642) Bool)

(assert (=> b!6900576 (= (isDefined!13345 lt!2466209) (Exists!3871 lambda!391709))))

(declare-fun lt!2466228 () Unit!160452)

(assert (=> b!6900576 (= lt!2466228 (lemmaExistCutMatchRandMatchRSpecEquivalent!2344 r2!6280 r3!135 (_2!37033 lt!2466213)))))

(assert (=> b!6900576 (= (Exists!3871 lambda!391709) (Exists!3871 lambda!391710))))

(declare-fun lt!2466210 () tuple2!67460)

(assert (=> b!6900576 (= lt!2466210 (get!23245 lt!2466209))))

(declare-fun lt!2466233 () Unit!160452)

(assert (=> b!6900576 (= lt!2466233 (mainMatchTheorem!3926 r2!6280 (_1!37033 lt!2466210)))))

(assert (=> b!6900576 (= (matchR!9008 r2!6280 (_1!37033 lt!2466210)) (matchRSpec!3926 r2!6280 (_1!37033 lt!2466210)))))

(declare-fun lt!2466211 () Unit!160452)

(assert (=> b!6900576 (= lt!2466211 (mainMatchTheorem!3926 r3!135 (_2!37033 lt!2466210)))))

(assert (=> b!6900576 (= (matchR!9008 r3!135 (_2!37033 lt!2466210)) (matchRSpec!3926 r3!135 (_2!37033 lt!2466210)))))

(declare-fun lt!2466218 () Unit!160452)

(declare-fun lemmaConcatAssociativity!2996 (List!66620 List!66620 List!66620) Unit!160452)

(assert (=> b!6900576 (= lt!2466218 (lemmaConcatAssociativity!2996 (_1!37033 lt!2466213) (_1!37033 lt!2466210) (_2!37033 lt!2466210)))))

(declare-fun ++!14916 (List!66620 List!66620) List!66620)

(assert (=> b!6900576 (= lt!2466224 (++!14916 (_1!37033 lt!2466213) (_1!37033 lt!2466210)))))

(assert (=> b!6900576 (= (++!14916 lt!2466224 (_2!37033 lt!2466210)) (++!14916 (_1!37033 lt!2466213) (++!14916 (_1!37033 lt!2466210) (_2!37033 lt!2466210))))))

(declare-fun lt!2466216 () Unit!160452)

(assert (=> b!6900576 (= lt!2466216 (mainMatchTheorem!3926 lt!2466217 lt!2466224))))

(assert (=> b!6900576 (= (matchR!9008 lt!2466217 lt!2466224) (matchRSpec!3926 lt!2466217 lt!2466224))))

(declare-fun lt!2466221 () Unit!160452)

(assert (=> b!6900576 (= lt!2466221 (lemmaFindConcatSeparationEquivalentToExists!2818 r1!6342 r2!6280 lt!2466224))))

(declare-fun lt!2466231 () Bool)

(assert (=> b!6900576 (= lt!2466231 (isDefined!13345 (findConcatSeparation!3056 r1!6342 r2!6280 Nil!66496 lt!2466224 lt!2466224)))))

(assert (=> b!6900576 (= lt!2466231 (Exists!3871 lambda!391711))))

(declare-fun lt!2466220 () Unit!160452)

(assert (=> b!6900576 (= lt!2466220 (lemmaExistCutMatchRandMatchRSpecEquivalent!2344 r1!6342 r2!6280 lt!2466224))))

(assert (=> b!6900576 (= (Exists!3871 lambda!391711) (Exists!3871 lambda!391712))))

(declare-fun lt!2466232 () Unit!160452)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!64 (Regex!16863 Regex!16863 List!66620 List!66620 List!66620 List!66620 List!66620) Unit!160452)

(assert (=> b!6900576 (= lt!2466232 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!64 r1!6342 r2!6280 (_1!37033 lt!2466213) (_1!37033 lt!2466210) lt!2466224 Nil!66496 lt!2466224))))

(assert (=> b!6900576 lt!2466231))

(declare-fun lt!2466215 () Unit!160452)

(assert (=> b!6900576 (= lt!2466215 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!64 lt!2466217 r3!135 lt!2466224 (_2!37033 lt!2466210) s!14361 Nil!66496 s!14361))))

(assert (=> b!6900576 (isDefined!13345 (findConcatSeparation!3056 lt!2466217 r3!135 Nil!66496 s!14361 s!14361))))

(declare-fun lt!2466222 () Unit!160452)

(assert (=> b!6900576 (= lt!2466222 (lemmaFindConcatSeparationEquivalentToExists!2818 lt!2466217 r3!135 s!14361))))

(assert (=> b!6900576 (Exists!3871 lambda!391713)))

(declare-fun lt!2466236 () Unit!160452)

(assert (=> b!6900576 (= lt!2466236 (lemmaExistCutMatchRandMatchRSpecEquivalent!2344 lt!2466217 r3!135 s!14361))))

(assert (=> b!6900576 false))

(declare-fun b!6900577 () Bool)

(declare-fun e!4155743 () Bool)

(declare-fun tp!1899936 () Bool)

(assert (=> b!6900577 (= e!4155743 tp!1899936)))

(declare-fun res!2813875 () Bool)

(assert (=> start!664678 (=> (not res!2813875) (not e!4155742))))

(assert (=> start!664678 (= res!2813875 (validRegex!8571 r1!6342))))

(assert (=> start!664678 e!4155742))

(declare-fun e!4155738 () Bool)

(assert (=> start!664678 e!4155738))

(assert (=> start!664678 e!4155743))

(declare-fun e!4155739 () Bool)

(assert (=> start!664678 e!4155739))

(declare-fun e!4155741 () Bool)

(assert (=> start!664678 e!4155741))

(declare-fun b!6900578 () Bool)

(declare-fun tp!1899938 () Bool)

(declare-fun tp!1899928 () Bool)

(assert (=> b!6900578 (= e!4155743 (and tp!1899938 tp!1899928))))

(declare-fun b!6900579 () Bool)

(declare-fun tp!1899941 () Bool)

(declare-fun tp!1899931 () Bool)

(assert (=> b!6900579 (= e!4155739 (and tp!1899941 tp!1899931))))

(declare-fun b!6900580 () Bool)

(declare-fun Unit!160455 () Unit!160452)

(assert (=> b!6900580 (= e!4155744 Unit!160455)))

(declare-fun b!6900581 () Bool)

(declare-fun tp!1899943 () Bool)

(declare-fun tp!1899932 () Bool)

(assert (=> b!6900581 (= e!4155743 (and tp!1899943 tp!1899932))))

(declare-fun b!6900582 () Bool)

(declare-fun tp!1899940 () Bool)

(assert (=> b!6900582 (= e!4155739 tp!1899940)))

(declare-fun b!6900583 () Bool)

(declare-fun res!2813873 () Bool)

(assert (=> b!6900583 (=> (not res!2813873) (not e!4155742))))

(assert (=> b!6900583 (= res!2813873 (validRegex!8571 r2!6280))))

(declare-fun b!6900584 () Bool)

(declare-fun tp!1899930 () Bool)

(declare-fun tp!1899939 () Bool)

(assert (=> b!6900584 (= e!4155738 (and tp!1899930 tp!1899939))))

(declare-fun b!6900585 () Bool)

(declare-fun tp_is_empty!42951 () Bool)

(declare-fun tp!1899934 () Bool)

(assert (=> b!6900585 (= e!4155741 (and tp_is_empty!42951 tp!1899934))))

(declare-fun b!6900586 () Bool)

(assert (=> b!6900586 (= e!4155738 tp_is_empty!42951)))

(declare-fun b!6900587 () Bool)

(declare-fun e!4155740 () Bool)

(assert (=> b!6900587 (= e!4155742 (not e!4155740))))

(declare-fun res!2813876 () Bool)

(assert (=> b!6900587 (=> res!2813876 e!4155740)))

(declare-fun lt!2466237 () Bool)

(assert (=> b!6900587 (= res!2813876 lt!2466237)))

(declare-fun lt!2466227 () Regex!16863)

(assert (=> b!6900587 (= (matchR!9008 lt!2466227 s!14361) (matchRSpec!3926 lt!2466227 s!14361))))

(declare-fun lt!2466229 () Unit!160452)

(assert (=> b!6900587 (= lt!2466229 (mainMatchTheorem!3926 lt!2466227 s!14361))))

(declare-fun lt!2466212 () Regex!16863)

(assert (=> b!6900587 (= lt!2466237 (matchRSpec!3926 lt!2466212 s!14361))))

(assert (=> b!6900587 (= lt!2466237 (matchR!9008 lt!2466212 s!14361))))

(declare-fun lt!2466223 () Unit!160452)

(assert (=> b!6900587 (= lt!2466223 (mainMatchTheorem!3926 lt!2466212 s!14361))))

(assert (=> b!6900587 (= lt!2466227 (Concat!25708 r1!6342 lt!2466234))))

(assert (=> b!6900587 (= lt!2466234 (Concat!25708 r2!6280 r3!135))))

(assert (=> b!6900587 (= lt!2466212 (Concat!25708 lt!2466217 r3!135))))

(assert (=> b!6900587 (= lt!2466217 (Concat!25708 r1!6342 r2!6280))))

(declare-fun b!6900588 () Bool)

(assert (=> b!6900588 (= e!4155739 tp_is_empty!42951)))

(declare-fun b!6900589 () Bool)

(declare-fun tp!1899933 () Bool)

(assert (=> b!6900589 (= e!4155738 tp!1899933)))

(declare-fun b!6900590 () Bool)

(declare-fun tp!1899935 () Bool)

(declare-fun tp!1899942 () Bool)

(assert (=> b!6900590 (= e!4155739 (and tp!1899935 tp!1899942))))

(declare-fun b!6900591 () Bool)

(assert (=> b!6900591 (= e!4155743 tp_is_empty!42951)))

(declare-fun b!6900592 () Bool)

(declare-fun tp!1899937 () Bool)

(declare-fun tp!1899929 () Bool)

(assert (=> b!6900592 (= e!4155738 (and tp!1899937 tp!1899929))))

(assert (=> b!6900593 (= e!4155740 true)))

(declare-fun lt!2466235 () Bool)

(assert (=> b!6900593 (= lt!2466235 (Exists!3871 lambda!391714))))

(declare-fun lt!2466230 () Unit!160452)

(assert (=> b!6900593 (= lt!2466230 (lemmaFindConcatSeparationEquivalentToExists!2818 r1!6342 lt!2466234 s!14361))))

(declare-fun lt!2466225 () Unit!160452)

(assert (=> b!6900593 (= lt!2466225 e!4155744)))

(declare-fun c!1282132 () Bool)

(assert (=> b!6900593 (= c!1282132 lt!2466235)))

(assert (=> b!6900593 (= lt!2466235 (isDefined!13345 lt!2466239))))

(assert (=> b!6900593 (= lt!2466239 (findConcatSeparation!3056 r1!6342 lt!2466234 Nil!66496 s!14361 s!14361))))

(assert (= (and start!664678 res!2813875) b!6900583))

(assert (= (and b!6900583 res!2813873) b!6900575))

(assert (= (and b!6900575 res!2813874) b!6900587))

(assert (= (and b!6900587 (not res!2813876)) b!6900593))

(assert (= (and b!6900593 c!1282132) b!6900576))

(assert (= (and b!6900593 (not c!1282132)) b!6900580))

(get-info :version)

(assert (= (and start!664678 ((_ is ElementMatch!16863) r1!6342)) b!6900586))

(assert (= (and start!664678 ((_ is Concat!25708) r1!6342)) b!6900592))

(assert (= (and start!664678 ((_ is Star!16863) r1!6342)) b!6900589))

(assert (= (and start!664678 ((_ is Union!16863) r1!6342)) b!6900584))

(assert (= (and start!664678 ((_ is ElementMatch!16863) r2!6280)) b!6900591))

(assert (= (and start!664678 ((_ is Concat!25708) r2!6280)) b!6900578))

(assert (= (and start!664678 ((_ is Star!16863) r2!6280)) b!6900577))

(assert (= (and start!664678 ((_ is Union!16863) r2!6280)) b!6900581))

(assert (= (and start!664678 ((_ is ElementMatch!16863) r3!135)) b!6900588))

(assert (= (and start!664678 ((_ is Concat!25708) r3!135)) b!6900590))

(assert (= (and start!664678 ((_ is Star!16863) r3!135)) b!6900582))

(assert (= (and start!664678 ((_ is Union!16863) r3!135)) b!6900579))

(assert (= (and start!664678 ((_ is Cons!66496) s!14361)) b!6900585))

(declare-fun m!7618722 () Bool)

(assert (=> start!664678 m!7618722))

(declare-fun m!7618724 () Bool)

(assert (=> b!6900576 m!7618724))

(declare-fun m!7618726 () Bool)

(assert (=> b!6900576 m!7618726))

(declare-fun m!7618728 () Bool)

(assert (=> b!6900576 m!7618728))

(declare-fun m!7618730 () Bool)

(assert (=> b!6900576 m!7618730))

(declare-fun m!7618732 () Bool)

(assert (=> b!6900576 m!7618732))

(declare-fun m!7618734 () Bool)

(assert (=> b!6900576 m!7618734))

(declare-fun m!7618736 () Bool)

(assert (=> b!6900576 m!7618736))

(assert (=> b!6900576 m!7618728))

(declare-fun m!7618738 () Bool)

(assert (=> b!6900576 m!7618738))

(declare-fun m!7618740 () Bool)

(assert (=> b!6900576 m!7618740))

(declare-fun m!7618742 () Bool)

(assert (=> b!6900576 m!7618742))

(declare-fun m!7618744 () Bool)

(assert (=> b!6900576 m!7618744))

(declare-fun m!7618746 () Bool)

(assert (=> b!6900576 m!7618746))

(declare-fun m!7618748 () Bool)

(assert (=> b!6900576 m!7618748))

(declare-fun m!7618750 () Bool)

(assert (=> b!6900576 m!7618750))

(declare-fun m!7618752 () Bool)

(assert (=> b!6900576 m!7618752))

(declare-fun m!7618754 () Bool)

(assert (=> b!6900576 m!7618754))

(declare-fun m!7618756 () Bool)

(assert (=> b!6900576 m!7618756))

(declare-fun m!7618758 () Bool)

(assert (=> b!6900576 m!7618758))

(declare-fun m!7618760 () Bool)

(assert (=> b!6900576 m!7618760))

(assert (=> b!6900576 m!7618740))

(declare-fun m!7618762 () Bool)

(assert (=> b!6900576 m!7618762))

(declare-fun m!7618764 () Bool)

(assert (=> b!6900576 m!7618764))

(assert (=> b!6900576 m!7618748))

(declare-fun m!7618766 () Bool)

(assert (=> b!6900576 m!7618766))

(declare-fun m!7618768 () Bool)

(assert (=> b!6900576 m!7618768))

(declare-fun m!7618770 () Bool)

(assert (=> b!6900576 m!7618770))

(declare-fun m!7618772 () Bool)

(assert (=> b!6900576 m!7618772))

(declare-fun m!7618774 () Bool)

(assert (=> b!6900576 m!7618774))

(declare-fun m!7618776 () Bool)

(assert (=> b!6900576 m!7618776))

(declare-fun m!7618778 () Bool)

(assert (=> b!6900576 m!7618778))

(declare-fun m!7618780 () Bool)

(assert (=> b!6900576 m!7618780))

(declare-fun m!7618782 () Bool)

(assert (=> b!6900576 m!7618782))

(declare-fun m!7618784 () Bool)

(assert (=> b!6900576 m!7618784))

(declare-fun m!7618786 () Bool)

(assert (=> b!6900576 m!7618786))

(declare-fun m!7618788 () Bool)

(assert (=> b!6900576 m!7618788))

(declare-fun m!7618790 () Bool)

(assert (=> b!6900576 m!7618790))

(declare-fun m!7618792 () Bool)

(assert (=> b!6900576 m!7618792))

(declare-fun m!7618794 () Bool)

(assert (=> b!6900576 m!7618794))

(declare-fun m!7618796 () Bool)

(assert (=> b!6900576 m!7618796))

(declare-fun m!7618798 () Bool)

(assert (=> b!6900576 m!7618798))

(assert (=> b!6900576 m!7618788))

(assert (=> b!6900576 m!7618758))

(assert (=> b!6900576 m!7618794))

(declare-fun m!7618800 () Bool)

(assert (=> b!6900576 m!7618800))

(declare-fun m!7618802 () Bool)

(assert (=> b!6900576 m!7618802))

(declare-fun m!7618804 () Bool)

(assert (=> b!6900576 m!7618804))

(declare-fun m!7618806 () Bool)

(assert (=> b!6900576 m!7618806))

(declare-fun m!7618808 () Bool)

(assert (=> b!6900576 m!7618808))

(declare-fun m!7618810 () Bool)

(assert (=> b!6900576 m!7618810))

(declare-fun m!7618812 () Bool)

(assert (=> b!6900576 m!7618812))

(declare-fun m!7618814 () Bool)

(assert (=> b!6900583 m!7618814))

(declare-fun m!7618816 () Bool)

(assert (=> b!6900593 m!7618816))

(assert (=> b!6900593 m!7618732))

(declare-fun m!7618818 () Bool)

(assert (=> b!6900593 m!7618818))

(declare-fun m!7618820 () Bool)

(assert (=> b!6900593 m!7618820))

(declare-fun m!7618822 () Bool)

(assert (=> b!6900587 m!7618822))

(declare-fun m!7618824 () Bool)

(assert (=> b!6900587 m!7618824))

(declare-fun m!7618826 () Bool)

(assert (=> b!6900587 m!7618826))

(declare-fun m!7618828 () Bool)

(assert (=> b!6900587 m!7618828))

(declare-fun m!7618830 () Bool)

(assert (=> b!6900587 m!7618830))

(declare-fun m!7618832 () Bool)

(assert (=> b!6900587 m!7618832))

(declare-fun m!7618834 () Bool)

(assert (=> b!6900575 m!7618834))

(check-sat (not b!6900583) (not b!6900575) (not start!664678) (not b!6900579) (not b!6900585) (not b!6900577) (not b!6900576) (not b!6900590) (not b!6900578) tp_is_empty!42951 (not b!6900592) (not b!6900582) (not b!6900593) (not b!6900581) (not b!6900584) (not b!6900589) (not b!6900587))
(check-sat)
