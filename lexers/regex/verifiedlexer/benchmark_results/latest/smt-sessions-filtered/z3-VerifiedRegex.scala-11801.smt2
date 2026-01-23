; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664598 () Bool)

(assert start!664598)

(declare-fun b!6898124 () Bool)

(assert (=> b!6898124 true))

(assert (=> b!6898124 true))

(assert (=> b!6898124 true))

(declare-fun lambda!391285 () Int)

(declare-fun lambda!391284 () Int)

(assert (=> b!6898124 (not (= lambda!391285 lambda!391284))))

(assert (=> b!6898124 true))

(assert (=> b!6898124 true))

(assert (=> b!6898124 true))

(declare-fun bs!1841163 () Bool)

(declare-fun b!6898117 () Bool)

(assert (= bs!1841163 (and b!6898117 b!6898124)))

(declare-datatypes ((C!33968 0))(
  ( (C!33969 (val!26686 Int)) )
))
(declare-datatypes ((List!66606 0))(
  ( (Nil!66482) (Cons!66482 (h!72930 C!33968) (t!380349 List!66606)) )
))
(declare-datatypes ((tuple2!67432 0))(
  ( (tuple2!67433 (_1!37019 List!66606) (_2!37019 List!66606)) )
))
(declare-fun lt!2464841 () tuple2!67432)

(declare-datatypes ((Regex!16849 0))(
  ( (ElementMatch!16849 (c!1281925 C!33968)) (Concat!25694 (regOne!34210 Regex!16849) (regTwo!34210 Regex!16849)) (EmptyExpr!16849) (Star!16849 (reg!17178 Regex!16849)) (EmptyLang!16849) (Union!16849 (regOne!34211 Regex!16849) (regTwo!34211 Regex!16849)) )
))
(declare-fun r1!6342 () Regex!16849)

(declare-fun s!14361 () List!66606)

(declare-fun r2!6280 () Regex!16849)

(declare-fun lambda!391286 () Int)

(declare-fun r3!135 () Regex!16849)

(declare-fun lt!2464851 () Regex!16849)

(assert (=> bs!1841163 (= (and (= (_2!37019 lt!2464841) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464851)) (= lambda!391286 lambda!391284))))

(assert (=> bs!1841163 (not (= lambda!391286 lambda!391285))))

(assert (=> b!6898117 true))

(assert (=> b!6898117 true))

(assert (=> b!6898117 true))

(declare-fun lambda!391287 () Int)

(assert (=> bs!1841163 (not (= lambda!391287 lambda!391284))))

(assert (=> bs!1841163 (= (and (= (_2!37019 lt!2464841) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464851)) (= lambda!391287 lambda!391285))))

(assert (=> b!6898117 (not (= lambda!391287 lambda!391286))))

(assert (=> b!6898117 true))

(assert (=> b!6898117 true))

(assert (=> b!6898117 true))

(declare-fun bs!1841164 () Bool)

(declare-fun b!6898129 () Bool)

(assert (= bs!1841164 (and b!6898129 b!6898124)))

(declare-fun lt!2464853 () List!66606)

(declare-fun lambda!391288 () Int)

(assert (=> bs!1841164 (= (and (= lt!2464853 s!14361) (= r2!6280 lt!2464851)) (= lambda!391288 lambda!391284))))

(assert (=> bs!1841164 (not (= lambda!391288 lambda!391285))))

(declare-fun bs!1841165 () Bool)

(assert (= bs!1841165 (and b!6898129 b!6898117)))

(assert (=> bs!1841165 (= (and (= lt!2464853 (_2!37019 lt!2464841)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391288 lambda!391286))))

(assert (=> bs!1841165 (not (= lambda!391288 lambda!391287))))

(assert (=> b!6898129 true))

(assert (=> b!6898129 true))

(assert (=> b!6898129 true))

(declare-fun b!6898108 () Bool)

(declare-fun e!4154597 () Bool)

(declare-fun e!4154596 () Bool)

(assert (=> b!6898108 (= e!4154597 e!4154596)))

(declare-fun res!2812575 () Bool)

(assert (=> b!6898108 (=> res!2812575 e!4154596)))

(declare-fun lt!2464857 () List!66606)

(assert (=> b!6898108 (= res!2812575 (not (= lt!2464857 s!14361)))))

(declare-fun lt!2464854 () tuple2!67432)

(declare-fun ++!14902 (List!66606 List!66606) List!66606)

(assert (=> b!6898108 (= lt!2464857 (++!14902 (_1!37019 lt!2464841) (++!14902 (_1!37019 lt!2464854) (_2!37019 lt!2464854))))))

(declare-fun matchRSpec!3912 (Regex!16849 List!66606) Bool)

(assert (=> b!6898108 (matchRSpec!3912 r3!135 (_2!37019 lt!2464854))))

(declare-datatypes ((Unit!160418 0))(
  ( (Unit!160419) )
))
(declare-fun lt!2464855 () Unit!160418)

(declare-fun mainMatchTheorem!3912 (Regex!16849 List!66606) Unit!160418)

(assert (=> b!6898108 (= lt!2464855 (mainMatchTheorem!3912 r3!135 (_2!37019 lt!2464854)))))

(assert (=> b!6898108 (matchRSpec!3912 r2!6280 (_1!37019 lt!2464854))))

(declare-fun lt!2464862 () Unit!160418)

(assert (=> b!6898108 (= lt!2464862 (mainMatchTheorem!3912 r2!6280 (_1!37019 lt!2464854)))))

(declare-fun b!6898109 () Bool)

(declare-fun e!4154593 () Bool)

(declare-fun tp_is_empty!42923 () Bool)

(assert (=> b!6898109 (= e!4154593 tp_is_empty!42923)))

(declare-fun b!6898110 () Bool)

(declare-fun e!4154590 () Bool)

(declare-fun tp!1899089 () Bool)

(assert (=> b!6898110 (= e!4154590 tp!1899089)))

(declare-fun b!6898111 () Bool)

(declare-fun res!2812576 () Bool)

(assert (=> b!6898111 (=> res!2812576 e!4154597)))

(declare-fun matchR!8994 (Regex!16849 List!66606) Bool)

(assert (=> b!6898111 (= res!2812576 (not (matchR!8994 r3!135 (_2!37019 lt!2464854))))))

(declare-fun b!6898112 () Bool)

(declare-fun e!4154594 () Bool)

(declare-fun e!4154589 () Bool)

(assert (=> b!6898112 (= e!4154594 (not e!4154589))))

(declare-fun res!2812573 () Bool)

(assert (=> b!6898112 (=> res!2812573 e!4154589)))

(declare-fun lt!2464860 () Bool)

(assert (=> b!6898112 (= res!2812573 lt!2464860)))

(declare-fun lt!2464839 () Regex!16849)

(assert (=> b!6898112 (= (matchR!8994 lt!2464839 s!14361) (matchRSpec!3912 lt!2464839 s!14361))))

(declare-fun lt!2464858 () Unit!160418)

(assert (=> b!6898112 (= lt!2464858 (mainMatchTheorem!3912 lt!2464839 s!14361))))

(declare-fun lt!2464843 () Regex!16849)

(assert (=> b!6898112 (= lt!2464860 (matchRSpec!3912 lt!2464843 s!14361))))

(assert (=> b!6898112 (= lt!2464860 (matchR!8994 lt!2464843 s!14361))))

(declare-fun lt!2464850 () Unit!160418)

(assert (=> b!6898112 (= lt!2464850 (mainMatchTheorem!3912 lt!2464843 s!14361))))

(assert (=> b!6898112 (= lt!2464839 (Concat!25694 r1!6342 lt!2464851))))

(assert (=> b!6898112 (= lt!2464851 (Concat!25694 r2!6280 r3!135))))

(declare-fun lt!2464861 () Regex!16849)

(assert (=> b!6898112 (= lt!2464843 (Concat!25694 lt!2464861 r3!135))))

(assert (=> b!6898112 (= lt!2464861 (Concat!25694 r1!6342 r2!6280))))

(declare-fun b!6898113 () Bool)

(assert (=> b!6898113 (= e!4154590 tp_is_empty!42923)))

(declare-fun b!6898114 () Bool)

(declare-fun tp!1899094 () Bool)

(declare-fun tp!1899092 () Bool)

(assert (=> b!6898114 (= e!4154590 (and tp!1899094 tp!1899092))))

(declare-fun b!6898115 () Bool)

(declare-fun e!4154598 () Bool)

(declare-fun tp!1899081 () Bool)

(assert (=> b!6898115 (= e!4154598 (and tp_is_empty!42923 tp!1899081))))

(declare-fun b!6898116 () Bool)

(declare-fun e!4154591 () Bool)

(declare-fun tp!1899085 () Bool)

(declare-fun tp!1899087 () Bool)

(assert (=> b!6898116 (= e!4154591 (and tp!1899085 tp!1899087))))

(declare-fun e!4154595 () Bool)

(assert (=> b!6898117 (= e!4154595 e!4154597)))

(declare-fun res!2812578 () Bool)

(assert (=> b!6898117 (=> res!2812578 e!4154597)))

(assert (=> b!6898117 (= res!2812578 (not (matchR!8994 r2!6280 (_1!37019 lt!2464854))))))

(declare-datatypes ((Option!16628 0))(
  ( (None!16627) (Some!16627 (v!52899 tuple2!67432)) )
))
(declare-fun lt!2464846 () Option!16628)

(declare-fun get!23224 (Option!16628) tuple2!67432)

(assert (=> b!6898117 (= lt!2464854 (get!23224 lt!2464846))))

(declare-fun Exists!3857 (Int) Bool)

(assert (=> b!6898117 (= (Exists!3857 lambda!391286) (Exists!3857 lambda!391287))))

(declare-fun lt!2464840 () Unit!160418)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2330 (Regex!16849 Regex!16849 List!66606) Unit!160418)

(assert (=> b!6898117 (= lt!2464840 (lemmaExistCutMatchRandMatchRSpecEquivalent!2330 r2!6280 r3!135 (_2!37019 lt!2464841)))))

(declare-fun isDefined!13331 (Option!16628) Bool)

(assert (=> b!6898117 (= (isDefined!13331 lt!2464846) (Exists!3857 lambda!391286))))

(declare-fun findConcatSeparation!3042 (Regex!16849 Regex!16849 List!66606 List!66606 List!66606) Option!16628)

(assert (=> b!6898117 (= lt!2464846 (findConcatSeparation!3042 r2!6280 r3!135 Nil!66482 (_2!37019 lt!2464841) (_2!37019 lt!2464841)))))

(declare-fun lt!2464859 () Unit!160418)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2804 (Regex!16849 Regex!16849 List!66606) Unit!160418)

(assert (=> b!6898117 (= lt!2464859 (lemmaFindConcatSeparationEquivalentToExists!2804 r2!6280 r3!135 (_2!37019 lt!2464841)))))

(assert (=> b!6898117 (matchRSpec!3912 lt!2464851 (_2!37019 lt!2464841))))

(declare-fun lt!2464844 () Unit!160418)

(assert (=> b!6898117 (= lt!2464844 (mainMatchTheorem!3912 lt!2464851 (_2!37019 lt!2464841)))))

(declare-fun b!6898118 () Bool)

(declare-fun tp!1899084 () Bool)

(assert (=> b!6898118 (= e!4154591 tp!1899084)))

(declare-fun b!6898119 () Bool)

(declare-fun e!4154592 () Bool)

(assert (=> b!6898119 (= e!4154589 e!4154592)))

(declare-fun res!2812579 () Bool)

(assert (=> b!6898119 (=> res!2812579 e!4154592)))

(declare-fun lt!2464845 () Option!16628)

(assert (=> b!6898119 (= res!2812579 (not (isDefined!13331 lt!2464845)))))

(assert (=> b!6898119 (= lt!2464845 (findConcatSeparation!3042 r1!6342 lt!2464851 Nil!66482 s!14361 s!14361))))

(declare-fun b!6898120 () Bool)

(declare-fun res!2812580 () Bool)

(assert (=> b!6898120 (=> res!2812580 e!4154595)))

(assert (=> b!6898120 (= res!2812580 (not (matchR!8994 lt!2464851 (_2!37019 lt!2464841))))))

(declare-fun res!2812574 () Bool)

(assert (=> start!664598 (=> (not res!2812574) (not e!4154594))))

(declare-fun validRegex!8557 (Regex!16849) Bool)

(assert (=> start!664598 (= res!2812574 (validRegex!8557 r1!6342))))

(assert (=> start!664598 e!4154594))

(assert (=> start!664598 e!4154590))

(assert (=> start!664598 e!4154591))

(assert (=> start!664598 e!4154593))

(assert (=> start!664598 e!4154598))

(declare-fun b!6898107 () Bool)

(declare-fun tp!1899086 () Bool)

(declare-fun tp!1899095 () Bool)

(assert (=> b!6898107 (= e!4154591 (and tp!1899086 tp!1899095))))

(declare-fun b!6898121 () Bool)

(declare-fun tp!1899090 () Bool)

(declare-fun tp!1899093 () Bool)

(assert (=> b!6898121 (= e!4154593 (and tp!1899090 tp!1899093))))

(declare-fun b!6898122 () Bool)

(declare-fun res!2812572 () Bool)

(assert (=> b!6898122 (=> (not res!2812572) (not e!4154594))))

(assert (=> b!6898122 (= res!2812572 (validRegex!8557 r2!6280))))

(declare-fun b!6898123 () Bool)

(declare-fun tp!1899091 () Bool)

(declare-fun tp!1899088 () Bool)

(assert (=> b!6898123 (= e!4154590 (and tp!1899091 tp!1899088))))

(assert (=> b!6898124 (= e!4154592 e!4154595)))

(declare-fun res!2812577 () Bool)

(assert (=> b!6898124 (=> res!2812577 e!4154595)))

(declare-fun lt!2464847 () Bool)

(assert (=> b!6898124 (= res!2812577 (not lt!2464847))))

(assert (=> b!6898124 (= lt!2464847 (matchRSpec!3912 r1!6342 (_1!37019 lt!2464841)))))

(assert (=> b!6898124 (= lt!2464847 (matchR!8994 r1!6342 (_1!37019 lt!2464841)))))

(declare-fun lt!2464852 () Unit!160418)

(assert (=> b!6898124 (= lt!2464852 (mainMatchTheorem!3912 r1!6342 (_1!37019 lt!2464841)))))

(assert (=> b!6898124 (= lt!2464841 (get!23224 lt!2464845))))

(assert (=> b!6898124 (= (Exists!3857 lambda!391284) (Exists!3857 lambda!391285))))

(declare-fun lt!2464849 () Unit!160418)

(assert (=> b!6898124 (= lt!2464849 (lemmaExistCutMatchRandMatchRSpecEquivalent!2330 r1!6342 lt!2464851 s!14361))))

(assert (=> b!6898124 (Exists!3857 lambda!391284)))

(declare-fun lt!2464863 () Unit!160418)

(assert (=> b!6898124 (= lt!2464863 (lemmaFindConcatSeparationEquivalentToExists!2804 r1!6342 lt!2464851 s!14361))))

(declare-fun b!6898125 () Bool)

(declare-fun res!2812571 () Bool)

(assert (=> b!6898125 (=> (not res!2812571) (not e!4154594))))

(assert (=> b!6898125 (= res!2812571 (validRegex!8557 r3!135))))

(declare-fun b!6898126 () Bool)

(declare-fun tp!1899080 () Bool)

(assert (=> b!6898126 (= e!4154593 tp!1899080)))

(declare-fun b!6898127 () Bool)

(declare-fun tp!1899083 () Bool)

(declare-fun tp!1899082 () Bool)

(assert (=> b!6898127 (= e!4154593 (and tp!1899083 tp!1899082))))

(declare-fun b!6898128 () Bool)

(assert (=> b!6898128 (= e!4154591 tp_is_empty!42923)))

(assert (=> b!6898129 (= e!4154596 true)))

(assert (=> b!6898129 (= (isDefined!13331 (findConcatSeparation!3042 r1!6342 r2!6280 Nil!66482 lt!2464853 lt!2464853)) (Exists!3857 lambda!391288))))

(declare-fun lt!2464848 () Unit!160418)

(assert (=> b!6898129 (= lt!2464848 (lemmaFindConcatSeparationEquivalentToExists!2804 r1!6342 r2!6280 lt!2464853))))

(assert (=> b!6898129 (= (matchR!8994 lt!2464861 lt!2464853) (matchRSpec!3912 lt!2464861 lt!2464853))))

(declare-fun lt!2464856 () Unit!160418)

(assert (=> b!6898129 (= lt!2464856 (mainMatchTheorem!3912 lt!2464861 lt!2464853))))

(assert (=> b!6898129 (= (++!14902 lt!2464853 (_2!37019 lt!2464854)) lt!2464857)))

(assert (=> b!6898129 (= lt!2464853 (++!14902 (_1!37019 lt!2464841) (_1!37019 lt!2464854)))))

(declare-fun lt!2464842 () Unit!160418)

(declare-fun lemmaConcatAssociativity!2982 (List!66606 List!66606 List!66606) Unit!160418)

(assert (=> b!6898129 (= lt!2464842 (lemmaConcatAssociativity!2982 (_1!37019 lt!2464841) (_1!37019 lt!2464854) (_2!37019 lt!2464854)))))

(assert (= (and start!664598 res!2812574) b!6898122))

(assert (= (and b!6898122 res!2812572) b!6898125))

(assert (= (and b!6898125 res!2812571) b!6898112))

(assert (= (and b!6898112 (not res!2812573)) b!6898119))

(assert (= (and b!6898119 (not res!2812579)) b!6898124))

(assert (= (and b!6898124 (not res!2812577)) b!6898120))

(assert (= (and b!6898120 (not res!2812580)) b!6898117))

(assert (= (and b!6898117 (not res!2812578)) b!6898111))

(assert (= (and b!6898111 (not res!2812576)) b!6898108))

(assert (= (and b!6898108 (not res!2812575)) b!6898129))

(get-info :version)

(assert (= (and start!664598 ((_ is ElementMatch!16849) r1!6342)) b!6898113))

(assert (= (and start!664598 ((_ is Concat!25694) r1!6342)) b!6898123))

(assert (= (and start!664598 ((_ is Star!16849) r1!6342)) b!6898110))

(assert (= (and start!664598 ((_ is Union!16849) r1!6342)) b!6898114))

(assert (= (and start!664598 ((_ is ElementMatch!16849) r2!6280)) b!6898128))

(assert (= (and start!664598 ((_ is Concat!25694) r2!6280)) b!6898107))

(assert (= (and start!664598 ((_ is Star!16849) r2!6280)) b!6898118))

(assert (= (and start!664598 ((_ is Union!16849) r2!6280)) b!6898116))

(assert (= (and start!664598 ((_ is ElementMatch!16849) r3!135)) b!6898109))

(assert (= (and start!664598 ((_ is Concat!25694) r3!135)) b!6898121))

(assert (= (and start!664598 ((_ is Star!16849) r3!135)) b!6898126))

(assert (= (and start!664598 ((_ is Union!16849) r3!135)) b!6898127))

(assert (= (and start!664598 ((_ is Cons!66482) s!14361)) b!6898115))

(declare-fun m!7616554 () Bool)

(assert (=> b!6898108 m!7616554))

(declare-fun m!7616556 () Bool)

(assert (=> b!6898108 m!7616556))

(declare-fun m!7616558 () Bool)

(assert (=> b!6898108 m!7616558))

(declare-fun m!7616560 () Bool)

(assert (=> b!6898108 m!7616560))

(declare-fun m!7616562 () Bool)

(assert (=> b!6898108 m!7616562))

(assert (=> b!6898108 m!7616554))

(declare-fun m!7616564 () Bool)

(assert (=> b!6898108 m!7616564))

(declare-fun m!7616566 () Bool)

(assert (=> b!6898119 m!7616566))

(declare-fun m!7616568 () Bool)

(assert (=> b!6898119 m!7616568))

(declare-fun m!7616570 () Bool)

(assert (=> b!6898117 m!7616570))

(declare-fun m!7616572 () Bool)

(assert (=> b!6898117 m!7616572))

(declare-fun m!7616574 () Bool)

(assert (=> b!6898117 m!7616574))

(declare-fun m!7616576 () Bool)

(assert (=> b!6898117 m!7616576))

(declare-fun m!7616578 () Bool)

(assert (=> b!6898117 m!7616578))

(assert (=> b!6898117 m!7616578))

(declare-fun m!7616580 () Bool)

(assert (=> b!6898117 m!7616580))

(declare-fun m!7616582 () Bool)

(assert (=> b!6898117 m!7616582))

(declare-fun m!7616584 () Bool)

(assert (=> b!6898117 m!7616584))

(declare-fun m!7616586 () Bool)

(assert (=> b!6898117 m!7616586))

(declare-fun m!7616588 () Bool)

(assert (=> b!6898117 m!7616588))

(declare-fun m!7616590 () Bool)

(assert (=> b!6898124 m!7616590))

(declare-fun m!7616592 () Bool)

(assert (=> b!6898124 m!7616592))

(declare-fun m!7616594 () Bool)

(assert (=> b!6898124 m!7616594))

(declare-fun m!7616596 () Bool)

(assert (=> b!6898124 m!7616596))

(declare-fun m!7616598 () Bool)

(assert (=> b!6898124 m!7616598))

(assert (=> b!6898124 m!7616596))

(declare-fun m!7616600 () Bool)

(assert (=> b!6898124 m!7616600))

(declare-fun m!7616602 () Bool)

(assert (=> b!6898124 m!7616602))

(declare-fun m!7616604 () Bool)

(assert (=> b!6898124 m!7616604))

(declare-fun m!7616606 () Bool)

(assert (=> b!6898122 m!7616606))

(declare-fun m!7616608 () Bool)

(assert (=> b!6898120 m!7616608))

(declare-fun m!7616610 () Bool)

(assert (=> b!6898112 m!7616610))

(declare-fun m!7616612 () Bool)

(assert (=> b!6898112 m!7616612))

(declare-fun m!7616614 () Bool)

(assert (=> b!6898112 m!7616614))

(declare-fun m!7616616 () Bool)

(assert (=> b!6898112 m!7616616))

(declare-fun m!7616618 () Bool)

(assert (=> b!6898112 m!7616618))

(declare-fun m!7616620 () Bool)

(assert (=> b!6898112 m!7616620))

(declare-fun m!7616622 () Bool)

(assert (=> b!6898125 m!7616622))

(declare-fun m!7616624 () Bool)

(assert (=> b!6898111 m!7616624))

(declare-fun m!7616626 () Bool)

(assert (=> start!664598 m!7616626))

(declare-fun m!7616628 () Bool)

(assert (=> b!6898129 m!7616628))

(declare-fun m!7616630 () Bool)

(assert (=> b!6898129 m!7616630))

(declare-fun m!7616632 () Bool)

(assert (=> b!6898129 m!7616632))

(declare-fun m!7616634 () Bool)

(assert (=> b!6898129 m!7616634))

(declare-fun m!7616636 () Bool)

(assert (=> b!6898129 m!7616636))

(declare-fun m!7616638 () Bool)

(assert (=> b!6898129 m!7616638))

(declare-fun m!7616640 () Bool)

(assert (=> b!6898129 m!7616640))

(assert (=> b!6898129 m!7616634))

(declare-fun m!7616642 () Bool)

(assert (=> b!6898129 m!7616642))

(declare-fun m!7616644 () Bool)

(assert (=> b!6898129 m!7616644))

(declare-fun m!7616646 () Bool)

(assert (=> b!6898129 m!7616646))

(check-sat (not b!6898122) (not b!6898127) (not b!6898117) (not b!6898121) (not b!6898123) (not b!6898119) (not start!664598) (not b!6898118) (not b!6898115) (not b!6898114) (not b!6898125) tp_is_empty!42923 (not b!6898120) (not b!6898112) (not b!6898129) (not b!6898126) (not b!6898111) (not b!6898110) (not b!6898107) (not b!6898116) (not b!6898108) (not b!6898124))
(check-sat)
