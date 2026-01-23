; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665890 () Bool)

(assert start!665890)

(declare-fun b!6926806 () Bool)

(assert (=> b!6926806 true))

(assert (=> b!6926806 true))

(assert (=> b!6926806 true))

(declare-fun lambda!394067 () Int)

(declare-fun lambda!394066 () Int)

(assert (=> b!6926806 (not (= lambda!394067 lambda!394066))))

(assert (=> b!6926806 true))

(assert (=> b!6926806 true))

(assert (=> b!6926806 true))

(declare-fun bs!1849086 () Bool)

(declare-fun b!6926807 () Bool)

(assert (= bs!1849086 (and b!6926807 b!6926806)))

(declare-datatypes ((C!34132 0))(
  ( (C!34133 (val!26768 Int)) )
))
(declare-datatypes ((Regex!16931 0))(
  ( (ElementMatch!16931 (c!1285765 C!34132)) (Concat!25776 (regOne!34374 Regex!16931) (regTwo!34374 Regex!16931)) (EmptyExpr!16931) (Star!16931 (reg!17260 Regex!16931)) (EmptyLang!16931) (Union!16931 (regOne!34375 Regex!16931) (regTwo!34375 Regex!16931)) )
))
(declare-fun lt!2472136 () Regex!16931)

(declare-fun r1!6342 () Regex!16931)

(declare-fun r3!135 () Regex!16931)

(declare-datatypes ((List!66684 0))(
  ( (Nil!66560) (Cons!66560 (h!73008 C!34132) (t!380427 List!66684)) )
))
(declare-fun s!14361 () List!66684)

(declare-datatypes ((tuple2!67576 0))(
  ( (tuple2!67577 (_1!37091 List!66684) (_2!37091 List!66684)) )
))
(declare-fun lt!2472123 () tuple2!67576)

(declare-fun r2!6280 () Regex!16931)

(declare-fun lambda!394068 () Int)

(assert (=> bs!1849086 (= (and (= (_1!37091 lt!2472123) s!14361) (= r1!6342 lt!2472136) (= r2!6280 r3!135)) (= lambda!394068 lambda!394066))))

(assert (=> bs!1849086 (not (= lambda!394068 lambda!394067))))

(assert (=> b!6926807 true))

(assert (=> b!6926807 true))

(assert (=> b!6926807 true))

(declare-fun lambda!394069 () Int)

(assert (=> bs!1849086 (not (= lambda!394069 lambda!394066))))

(assert (=> bs!1849086 (= (and (= (_1!37091 lt!2472123) s!14361) (= r1!6342 lt!2472136) (= r2!6280 r3!135)) (= lambda!394069 lambda!394067))))

(assert (=> b!6926807 (not (= lambda!394069 lambda!394068))))

(assert (=> b!6926807 true))

(assert (=> b!6926807 true))

(assert (=> b!6926807 true))

(declare-fun bs!1849087 () Bool)

(declare-fun b!6926813 () Bool)

(assert (= bs!1849087 (and b!6926813 b!6926806)))

(declare-fun lambda!394070 () Int)

(declare-fun lt!2472113 () List!66684)

(assert (=> bs!1849087 (= (and (= lt!2472113 s!14361) (= r2!6280 lt!2472136)) (= lambda!394070 lambda!394066))))

(assert (=> bs!1849087 (not (= lambda!394070 lambda!394067))))

(declare-fun bs!1849088 () Bool)

(assert (= bs!1849088 (and b!6926813 b!6926807)))

(assert (=> bs!1849088 (= (and (= lt!2472113 (_1!37091 lt!2472123)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394070 lambda!394068))))

(assert (=> bs!1849088 (not (= lambda!394070 lambda!394069))))

(assert (=> b!6926813 true))

(assert (=> b!6926813 true))

(assert (=> b!6926813 true))

(declare-fun lambda!394071 () Int)

(assert (=> bs!1849088 (not (= lambda!394071 lambda!394068))))

(assert (=> bs!1849087 (= (and (= lt!2472113 s!14361) (= r2!6280 lt!2472136)) (= lambda!394071 lambda!394067))))

(assert (=> b!6926813 (not (= lambda!394071 lambda!394070))))

(assert (=> bs!1849087 (not (= lambda!394071 lambda!394066))))

(assert (=> bs!1849088 (= (and (= lt!2472113 (_1!37091 lt!2472123)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394071 lambda!394069))))

(assert (=> b!6926813 true))

(assert (=> b!6926813 true))

(assert (=> b!6926813 true))

(declare-fun bs!1849089 () Bool)

(declare-fun b!6926805 () Bool)

(assert (= bs!1849089 (and b!6926805 b!6926807)))

(declare-fun lt!2472116 () Regex!16931)

(declare-fun lambda!394072 () Int)

(assert (=> bs!1849089 (= (and (= s!14361 (_1!37091 lt!2472123)) (= lt!2472116 r2!6280)) (= lambda!394072 lambda!394068))))

(declare-fun bs!1849090 () Bool)

(assert (= bs!1849090 (and b!6926805 b!6926806)))

(assert (=> bs!1849090 (not (= lambda!394072 lambda!394067))))

(declare-fun bs!1849091 () Bool)

(assert (= bs!1849091 (and b!6926805 b!6926813)))

(assert (=> bs!1849091 (not (= lambda!394072 lambda!394071))))

(assert (=> bs!1849091 (= (and (= s!14361 lt!2472113) (= r1!6342 r2!6280) (= lt!2472116 r3!135)) (= lambda!394072 lambda!394070))))

(assert (=> bs!1849090 (= (and (= r1!6342 lt!2472136) (= lt!2472116 r3!135)) (= lambda!394072 lambda!394066))))

(assert (=> bs!1849089 (not (= lambda!394072 lambda!394069))))

(assert (=> b!6926805 true))

(assert (=> b!6926805 true))

(assert (=> b!6926805 true))

(declare-fun b!6926796 () Bool)

(declare-fun e!4168418 () Bool)

(declare-fun tp!1909267 () Bool)

(declare-fun tp!1909258 () Bool)

(assert (=> b!6926796 (= e!4168418 (and tp!1909267 tp!1909258))))

(declare-fun b!6926797 () Bool)

(declare-fun e!4168419 () Bool)

(declare-fun tp!1909266 () Bool)

(declare-fun tp!1909264 () Bool)

(assert (=> b!6926797 (= e!4168419 (and tp!1909266 tp!1909264))))

(declare-fun b!6926798 () Bool)

(declare-fun e!4168420 () Bool)

(declare-fun tp_is_empty!43087 () Bool)

(assert (=> b!6926798 (= e!4168420 tp_is_empty!43087)))

(declare-fun b!6926799 () Bool)

(declare-fun tp!1909252 () Bool)

(assert (=> b!6926799 (= e!4168419 tp!1909252)))

(declare-fun b!6926800 () Bool)

(declare-fun e!4168424 () Bool)

(declare-fun e!4168421 () Bool)

(assert (=> b!6926800 (= e!4168424 e!4168421)))

(declare-fun res!2824897 () Bool)

(assert (=> b!6926800 (=> res!2824897 e!4168421)))

(declare-fun lt!2472133 () List!66684)

(assert (=> b!6926800 (= res!2824897 (not (= lt!2472133 s!14361)))))

(declare-fun lt!2472121 () List!66684)

(assert (=> b!6926800 (= lt!2472121 lt!2472133)))

(declare-fun lt!2472120 () tuple2!67576)

(declare-fun ++!14974 (List!66684 List!66684) List!66684)

(assert (=> b!6926800 (= lt!2472133 (++!14974 (_1!37091 lt!2472120) lt!2472113))))

(declare-datatypes ((Unit!160586 0))(
  ( (Unit!160587) )
))
(declare-fun lt!2472128 () Unit!160586)

(declare-fun lemmaConcatAssociativity!3022 (List!66684 List!66684 List!66684) Unit!160586)

(assert (=> b!6926800 (= lt!2472128 (lemmaConcatAssociativity!3022 (_1!37091 lt!2472120) (_2!37091 lt!2472120) (_2!37091 lt!2472123)))))

(declare-fun b!6926801 () Bool)

(declare-fun e!4168423 () Bool)

(declare-fun tp!1909263 () Bool)

(assert (=> b!6926801 (= e!4168423 (and tp_is_empty!43087 tp!1909263))))

(declare-fun b!6926802 () Bool)

(assert (=> b!6926802 (= e!4168419 tp_is_empty!43087)))

(declare-fun b!6926803 () Bool)

(declare-fun tp!1909260 () Bool)

(assert (=> b!6926803 (= e!4168420 tp!1909260)))

(declare-fun b!6926804 () Bool)

(declare-fun tp!1909259 () Bool)

(declare-fun tp!1909262 () Bool)

(assert (=> b!6926804 (= e!4168419 (and tp!1909259 tp!1909262))))

(assert (=> b!6926805 (= e!4168421 true)))

(declare-fun Exists!3933 (Int) Bool)

(assert (=> b!6926805 (Exists!3933 lambda!394072)))

(declare-fun lt!2472131 () Unit!160586)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2876 (Regex!16931 Regex!16931 List!66684) Unit!160586)

(assert (=> b!6926805 (= lt!2472131 (lemmaFindConcatSeparationEquivalentToExists!2876 r1!6342 lt!2472116 s!14361))))

(declare-datatypes ((Option!16700 0))(
  ( (None!16699) (Some!16699 (v!52971 tuple2!67576)) )
))
(declare-fun isDefined!13403 (Option!16700) Bool)

(declare-fun findConcatSeparation!3114 (Regex!16931 Regex!16931 List!66684 List!66684 List!66684) Option!16700)

(assert (=> b!6926805 (isDefined!13403 (findConcatSeparation!3114 r1!6342 lt!2472116 Nil!66560 s!14361 s!14361))))

(declare-fun lt!2472109 () Unit!160586)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!92 (Regex!16931 Regex!16931 List!66684 List!66684 List!66684 List!66684 List!66684) Unit!160586)

(assert (=> b!6926805 (= lt!2472109 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!92 r1!6342 lt!2472116 (_1!37091 lt!2472120) lt!2472113 s!14361 Nil!66560 s!14361))))

(declare-fun e!4168427 () Bool)

(declare-fun e!4168428 () Bool)

(assert (=> b!6926806 (= e!4168427 e!4168428)))

(declare-fun res!2824893 () Bool)

(assert (=> b!6926806 (=> res!2824893 e!4168428)))

(declare-fun lt!2472137 () Bool)

(assert (=> b!6926806 (= res!2824893 (not lt!2472137))))

(declare-fun matchRSpec!3988 (Regex!16931 List!66684) Bool)

(assert (=> b!6926806 (= lt!2472137 (matchRSpec!3988 lt!2472136 (_1!37091 lt!2472123)))))

(declare-fun matchR!9070 (Regex!16931 List!66684) Bool)

(assert (=> b!6926806 (= lt!2472137 (matchR!9070 lt!2472136 (_1!37091 lt!2472123)))))

(declare-fun lt!2472112 () Unit!160586)

(declare-fun mainMatchTheorem!3988 (Regex!16931 List!66684) Unit!160586)

(assert (=> b!6926806 (= lt!2472112 (mainMatchTheorem!3988 lt!2472136 (_1!37091 lt!2472123)))))

(declare-fun lt!2472129 () Option!16700)

(declare-fun get!23337 (Option!16700) tuple2!67576)

(assert (=> b!6926806 (= lt!2472123 (get!23337 lt!2472129))))

(assert (=> b!6926806 (= (Exists!3933 lambda!394066) (Exists!3933 lambda!394067))))

(declare-fun lt!2472122 () Unit!160586)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2400 (Regex!16931 Regex!16931 List!66684) Unit!160586)

(assert (=> b!6926806 (= lt!2472122 (lemmaExistCutMatchRandMatchRSpecEquivalent!2400 lt!2472136 r3!135 s!14361))))

(assert (=> b!6926806 (= (isDefined!13403 lt!2472129) (Exists!3933 lambda!394066))))

(assert (=> b!6926806 (= lt!2472129 (findConcatSeparation!3114 lt!2472136 r3!135 Nil!66560 s!14361 s!14361))))

(declare-fun lt!2472118 () Unit!160586)

(assert (=> b!6926806 (= lt!2472118 (lemmaFindConcatSeparationEquivalentToExists!2876 lt!2472136 r3!135 s!14361))))

(declare-fun e!4168426 () Bool)

(assert (=> b!6926807 (= e!4168428 e!4168426)))

(declare-fun res!2824891 () Bool)

(assert (=> b!6926807 (=> res!2824891 e!4168426)))

(assert (=> b!6926807 (= res!2824891 (not (matchR!9070 r1!6342 (_1!37091 lt!2472120))))))

(declare-fun lt!2472127 () Option!16700)

(assert (=> b!6926807 (= lt!2472120 (get!23337 lt!2472127))))

(assert (=> b!6926807 (= (Exists!3933 lambda!394068) (Exists!3933 lambda!394069))))

(declare-fun lt!2472124 () Unit!160586)

(assert (=> b!6926807 (= lt!2472124 (lemmaExistCutMatchRandMatchRSpecEquivalent!2400 r1!6342 r2!6280 (_1!37091 lt!2472123)))))

(assert (=> b!6926807 (= (isDefined!13403 lt!2472127) (Exists!3933 lambda!394068))))

(assert (=> b!6926807 (= lt!2472127 (findConcatSeparation!3114 r1!6342 r2!6280 Nil!66560 (_1!37091 lt!2472123) (_1!37091 lt!2472123)))))

(declare-fun lt!2472138 () Unit!160586)

(assert (=> b!6926807 (= lt!2472138 (lemmaFindConcatSeparationEquivalentToExists!2876 r1!6342 r2!6280 (_1!37091 lt!2472123)))))

(declare-fun b!6926808 () Bool)

(declare-fun tp!1909265 () Bool)

(declare-fun tp!1909261 () Bool)

(assert (=> b!6926808 (= e!4168418 (and tp!1909265 tp!1909261))))

(declare-fun b!6926809 () Bool)

(declare-fun tp!1909255 () Bool)

(declare-fun tp!1909253 () Bool)

(assert (=> b!6926809 (= e!4168420 (and tp!1909255 tp!1909253))))

(declare-fun b!6926810 () Bool)

(declare-fun tp!1909254 () Bool)

(assert (=> b!6926810 (= e!4168418 tp!1909254)))

(declare-fun b!6926811 () Bool)

(declare-fun e!4168425 () Bool)

(assert (=> b!6926811 (= e!4168425 (not e!4168427))))

(declare-fun res!2824889 () Bool)

(assert (=> b!6926811 (=> res!2824889 e!4168427)))

(declare-fun lt!2472125 () Bool)

(assert (=> b!6926811 (= res!2824889 (not lt!2472125))))

(declare-fun lt!2472134 () Regex!16931)

(assert (=> b!6926811 (= (matchR!9070 lt!2472134 s!14361) (matchRSpec!3988 lt!2472134 s!14361))))

(declare-fun lt!2472119 () Unit!160586)

(assert (=> b!6926811 (= lt!2472119 (mainMatchTheorem!3988 lt!2472134 s!14361))))

(declare-fun lt!2472139 () Regex!16931)

(assert (=> b!6926811 (= lt!2472125 (matchRSpec!3988 lt!2472139 s!14361))))

(assert (=> b!6926811 (= lt!2472125 (matchR!9070 lt!2472139 s!14361))))

(declare-fun lt!2472115 () Unit!160586)

(assert (=> b!6926811 (= lt!2472115 (mainMatchTheorem!3988 lt!2472139 s!14361))))

(assert (=> b!6926811 (= lt!2472134 (Concat!25776 r1!6342 lt!2472116))))

(assert (=> b!6926811 (= lt!2472116 (Concat!25776 r2!6280 r3!135))))

(assert (=> b!6926811 (= lt!2472139 (Concat!25776 lt!2472136 r3!135))))

(assert (=> b!6926811 (= lt!2472136 (Concat!25776 r1!6342 r2!6280))))

(declare-fun res!2824895 () Bool)

(assert (=> start!665890 (=> (not res!2824895) (not e!4168425))))

(declare-fun validRegex!8637 (Regex!16931) Bool)

(assert (=> start!665890 (= res!2824895 (validRegex!8637 r1!6342))))

(assert (=> start!665890 e!4168425))

(assert (=> start!665890 e!4168418))

(assert (=> start!665890 e!4168420))

(assert (=> start!665890 e!4168419))

(assert (=> start!665890 e!4168423))

(declare-fun b!6926812 () Bool)

(assert (=> b!6926812 (= e!4168418 tp_is_empty!43087)))

(declare-fun e!4168422 () Bool)

(assert (=> b!6926813 (= e!4168422 e!4168424)))

(declare-fun res!2824888 () Bool)

(assert (=> b!6926813 (=> res!2824888 e!4168424)))

(declare-fun lt!2472130 () Bool)

(assert (=> b!6926813 (= res!2824888 (not lt!2472130))))

(declare-fun lt!2472111 () Bool)

(assert (=> b!6926813 lt!2472111))

(declare-fun lt!2472117 () Unit!160586)

(assert (=> b!6926813 (= lt!2472117 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!92 r2!6280 r3!135 (_2!37091 lt!2472120) (_2!37091 lt!2472123) lt!2472113 Nil!66560 lt!2472113))))

(assert (=> b!6926813 (= (Exists!3933 lambda!394070) (Exists!3933 lambda!394071))))

(declare-fun lt!2472132 () Unit!160586)

(assert (=> b!6926813 (= lt!2472132 (lemmaExistCutMatchRandMatchRSpecEquivalent!2400 r2!6280 r3!135 lt!2472113))))

(assert (=> b!6926813 (= lt!2472111 (Exists!3933 lambda!394070))))

(assert (=> b!6926813 (= lt!2472111 (isDefined!13403 (findConcatSeparation!3114 r2!6280 r3!135 Nil!66560 lt!2472113 lt!2472113)))))

(declare-fun lt!2472135 () Unit!160586)

(assert (=> b!6926813 (= lt!2472135 (lemmaFindConcatSeparationEquivalentToExists!2876 r2!6280 r3!135 lt!2472113))))

(assert (=> b!6926813 (= lt!2472130 (matchRSpec!3988 lt!2472116 lt!2472113))))

(assert (=> b!6926813 (= lt!2472130 (matchR!9070 lt!2472116 lt!2472113))))

(declare-fun lt!2472114 () Unit!160586)

(assert (=> b!6926813 (= lt!2472114 (mainMatchTheorem!3988 lt!2472116 lt!2472113))))

(assert (=> b!6926813 (= lt!2472113 (++!14974 (_2!37091 lt!2472120) (_2!37091 lt!2472123)))))

(declare-fun b!6926814 () Bool)

(declare-fun res!2824890 () Bool)

(assert (=> b!6926814 (=> res!2824890 e!4168428)))

(assert (=> b!6926814 (= res!2824890 (not (matchR!9070 r3!135 (_2!37091 lt!2472123))))))

(declare-fun b!6926815 () Bool)

(declare-fun res!2824896 () Bool)

(assert (=> b!6926815 (=> res!2824896 e!4168426)))

(assert (=> b!6926815 (= res!2824896 (not (matchR!9070 r2!6280 (_2!37091 lt!2472120))))))

(declare-fun b!6926816 () Bool)

(declare-fun res!2824892 () Bool)

(assert (=> b!6926816 (=> (not res!2824892) (not e!4168425))))

(assert (=> b!6926816 (= res!2824892 (validRegex!8637 r3!135))))

(declare-fun b!6926817 () Bool)

(assert (=> b!6926817 (= e!4168426 e!4168422)))

(declare-fun res!2824894 () Bool)

(assert (=> b!6926817 (=> res!2824894 e!4168422)))

(assert (=> b!6926817 (= res!2824894 (not (= lt!2472121 s!14361)))))

(assert (=> b!6926817 (= lt!2472121 (++!14974 (++!14974 (_1!37091 lt!2472120) (_2!37091 lt!2472120)) (_2!37091 lt!2472123)))))

(assert (=> b!6926817 (matchRSpec!3988 r2!6280 (_2!37091 lt!2472120))))

(declare-fun lt!2472126 () Unit!160586)

(assert (=> b!6926817 (= lt!2472126 (mainMatchTheorem!3988 r2!6280 (_2!37091 lt!2472120)))))

(assert (=> b!6926817 (matchRSpec!3988 r1!6342 (_1!37091 lt!2472120))))

(declare-fun lt!2472110 () Unit!160586)

(assert (=> b!6926817 (= lt!2472110 (mainMatchTheorem!3988 r1!6342 (_1!37091 lt!2472120)))))

(declare-fun b!6926818 () Bool)

(declare-fun res!2824898 () Bool)

(assert (=> b!6926818 (=> (not res!2824898) (not e!4168425))))

(assert (=> b!6926818 (= res!2824898 (validRegex!8637 r2!6280))))

(declare-fun b!6926819 () Bool)

(declare-fun tp!1909256 () Bool)

(declare-fun tp!1909257 () Bool)

(assert (=> b!6926819 (= e!4168420 (and tp!1909256 tp!1909257))))

(assert (= (and start!665890 res!2824895) b!6926818))

(assert (= (and b!6926818 res!2824898) b!6926816))

(assert (= (and b!6926816 res!2824892) b!6926811))

(assert (= (and b!6926811 (not res!2824889)) b!6926806))

(assert (= (and b!6926806 (not res!2824893)) b!6926814))

(assert (= (and b!6926814 (not res!2824890)) b!6926807))

(assert (= (and b!6926807 (not res!2824891)) b!6926815))

(assert (= (and b!6926815 (not res!2824896)) b!6926817))

(assert (= (and b!6926817 (not res!2824894)) b!6926813))

(assert (= (and b!6926813 (not res!2824888)) b!6926800))

(assert (= (and b!6926800 (not res!2824897)) b!6926805))

(get-info :version)

(assert (= (and start!665890 ((_ is ElementMatch!16931) r1!6342)) b!6926812))

(assert (= (and start!665890 ((_ is Concat!25776) r1!6342)) b!6926796))

(assert (= (and start!665890 ((_ is Star!16931) r1!6342)) b!6926810))

(assert (= (and start!665890 ((_ is Union!16931) r1!6342)) b!6926808))

(assert (= (and start!665890 ((_ is ElementMatch!16931) r2!6280)) b!6926798))

(assert (= (and start!665890 ((_ is Concat!25776) r2!6280)) b!6926809))

(assert (= (and start!665890 ((_ is Star!16931) r2!6280)) b!6926803))

(assert (= (and start!665890 ((_ is Union!16931) r2!6280)) b!6926819))

(assert (= (and start!665890 ((_ is ElementMatch!16931) r3!135)) b!6926802))

(assert (= (and start!665890 ((_ is Concat!25776) r3!135)) b!6926797))

(assert (= (and start!665890 ((_ is Star!16931) r3!135)) b!6926799))

(assert (= (and start!665890 ((_ is Union!16931) r3!135)) b!6926804))

(assert (= (and start!665890 ((_ is Cons!66560) s!14361)) b!6926801))

(declare-fun m!7635438 () Bool)

(assert (=> b!6926815 m!7635438))

(declare-fun m!7635440 () Bool)

(assert (=> b!6926817 m!7635440))

(declare-fun m!7635442 () Bool)

(assert (=> b!6926817 m!7635442))

(declare-fun m!7635444 () Bool)

(assert (=> b!6926817 m!7635444))

(declare-fun m!7635446 () Bool)

(assert (=> b!6926817 m!7635446))

(declare-fun m!7635448 () Bool)

(assert (=> b!6926817 m!7635448))

(assert (=> b!6926817 m!7635442))

(declare-fun m!7635450 () Bool)

(assert (=> b!6926817 m!7635450))

(declare-fun m!7635452 () Bool)

(assert (=> b!6926805 m!7635452))

(declare-fun m!7635454 () Bool)

(assert (=> b!6926805 m!7635454))

(declare-fun m!7635456 () Bool)

(assert (=> b!6926805 m!7635456))

(declare-fun m!7635458 () Bool)

(assert (=> b!6926805 m!7635458))

(assert (=> b!6926805 m!7635454))

(declare-fun m!7635460 () Bool)

(assert (=> b!6926805 m!7635460))

(declare-fun m!7635462 () Bool)

(assert (=> b!6926806 m!7635462))

(declare-fun m!7635464 () Bool)

(assert (=> b!6926806 m!7635464))

(declare-fun m!7635466 () Bool)

(assert (=> b!6926806 m!7635466))

(declare-fun m!7635468 () Bool)

(assert (=> b!6926806 m!7635468))

(assert (=> b!6926806 m!7635466))

(declare-fun m!7635470 () Bool)

(assert (=> b!6926806 m!7635470))

(declare-fun m!7635472 () Bool)

(assert (=> b!6926806 m!7635472))

(declare-fun m!7635474 () Bool)

(assert (=> b!6926806 m!7635474))

(declare-fun m!7635476 () Bool)

(assert (=> b!6926806 m!7635476))

(declare-fun m!7635478 () Bool)

(assert (=> b!6926806 m!7635478))

(declare-fun m!7635480 () Bool)

(assert (=> b!6926806 m!7635480))

(declare-fun m!7635482 () Bool)

(assert (=> b!6926811 m!7635482))

(declare-fun m!7635484 () Bool)

(assert (=> b!6926811 m!7635484))

(declare-fun m!7635486 () Bool)

(assert (=> b!6926811 m!7635486))

(declare-fun m!7635488 () Bool)

(assert (=> b!6926811 m!7635488))

(declare-fun m!7635490 () Bool)

(assert (=> b!6926811 m!7635490))

(declare-fun m!7635492 () Bool)

(assert (=> b!6926811 m!7635492))

(declare-fun m!7635494 () Bool)

(assert (=> b!6926814 m!7635494))

(declare-fun m!7635496 () Bool)

(assert (=> b!6926818 m!7635496))

(declare-fun m!7635498 () Bool)

(assert (=> b!6926800 m!7635498))

(declare-fun m!7635500 () Bool)

(assert (=> b!6926800 m!7635500))

(declare-fun m!7635502 () Bool)

(assert (=> b!6926816 m!7635502))

(declare-fun m!7635504 () Bool)

(assert (=> start!665890 m!7635504))

(declare-fun m!7635506 () Bool)

(assert (=> b!6926813 m!7635506))

(declare-fun m!7635508 () Bool)

(assert (=> b!6926813 m!7635508))

(declare-fun m!7635510 () Bool)

(assert (=> b!6926813 m!7635510))

(declare-fun m!7635512 () Bool)

(assert (=> b!6926813 m!7635512))

(declare-fun m!7635514 () Bool)

(assert (=> b!6926813 m!7635514))

(declare-fun m!7635516 () Bool)

(assert (=> b!6926813 m!7635516))

(assert (=> b!6926813 m!7635508))

(declare-fun m!7635518 () Bool)

(assert (=> b!6926813 m!7635518))

(declare-fun m!7635520 () Bool)

(assert (=> b!6926813 m!7635520))

(declare-fun m!7635522 () Bool)

(assert (=> b!6926813 m!7635522))

(assert (=> b!6926813 m!7635512))

(declare-fun m!7635524 () Bool)

(assert (=> b!6926813 m!7635524))

(declare-fun m!7635526 () Bool)

(assert (=> b!6926813 m!7635526))

(declare-fun m!7635528 () Bool)

(assert (=> b!6926807 m!7635528))

(declare-fun m!7635530 () Bool)

(assert (=> b!6926807 m!7635530))

(declare-fun m!7635532 () Bool)

(assert (=> b!6926807 m!7635532))

(declare-fun m!7635534 () Bool)

(assert (=> b!6926807 m!7635534))

(declare-fun m!7635536 () Bool)

(assert (=> b!6926807 m!7635536))

(declare-fun m!7635538 () Bool)

(assert (=> b!6926807 m!7635538))

(declare-fun m!7635540 () Bool)

(assert (=> b!6926807 m!7635540))

(declare-fun m!7635542 () Bool)

(assert (=> b!6926807 m!7635542))

(assert (=> b!6926807 m!7635538))

(check-sat (not b!6926816) (not b!6926797) (not b!6926813) (not b!6926819) (not b!6926814) (not b!6926809) tp_is_empty!43087 (not b!6926807) (not b!6926801) (not b!6926810) (not b!6926800) (not b!6926806) (not b!6926803) (not b!6926805) (not b!6926804) (not start!665890) (not b!6926796) (not b!6926818) (not b!6926811) (not b!6926817) (not b!6926815) (not b!6926808) (not b!6926799))
(check-sat)
