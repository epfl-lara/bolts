; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!665768 () Bool)

(assert start!665768)

(declare-fun b!6924197 () Bool)

(assert (=> b!6924197 true))

(assert (=> b!6924197 true))

(assert (=> b!6924197 true))

(declare-fun lambda!393770 () Int)

(declare-fun lambda!393769 () Int)

(assert (=> b!6924197 (not (= lambda!393770 lambda!393769))))

(assert (=> b!6924197 true))

(assert (=> b!6924197 true))

(assert (=> b!6924197 true))

(declare-fun bs!1848132 () Bool)

(declare-fun b!6924215 () Bool)

(assert (= bs!1848132 (and b!6924215 b!6924197)))

(declare-datatypes ((C!34118 0))(
  ( (C!34119 (val!26761 Int)) )
))
(declare-datatypes ((Regex!16924 0))(
  ( (ElementMatch!16924 (c!1285404 C!34118)) (Concat!25769 (regOne!34360 Regex!16924) (regTwo!34360 Regex!16924)) (EmptyExpr!16924) (Star!16924 (reg!17253 Regex!16924)) (EmptyLang!16924) (Union!16924 (regOne!34361 Regex!16924) (regTwo!34361 Regex!16924)) )
))
(declare-fun r1!6342 () Regex!16924)

(declare-fun lt!2471254 () Regex!16924)

(declare-datatypes ((List!66677 0))(
  ( (Nil!66553) (Cons!66553 (h!73001 C!34118) (t!380420 List!66677)) )
))
(declare-datatypes ((tuple2!67562 0))(
  ( (tuple2!67563 (_1!37084 List!66677) (_2!37084 List!66677)) )
))
(declare-fun lt!2471259 () tuple2!67562)

(declare-fun r3!135 () Regex!16924)

(declare-fun s!14361 () List!66677)

(declare-fun lambda!393771 () Int)

(declare-fun r2!6280 () Regex!16924)

(assert (=> bs!1848132 (= (and (= (_1!37084 lt!2471259) s!14361) (= r1!6342 lt!2471254) (= r2!6280 r3!135)) (= lambda!393771 lambda!393769))))

(assert (=> bs!1848132 (not (= lambda!393771 lambda!393770))))

(assert (=> b!6924215 true))

(assert (=> b!6924215 true))

(assert (=> b!6924215 true))

(declare-fun lambda!393772 () Int)

(assert (=> bs!1848132 (not (= lambda!393772 lambda!393769))))

(assert (=> bs!1848132 (= (and (= (_1!37084 lt!2471259) s!14361) (= r1!6342 lt!2471254) (= r2!6280 r3!135)) (= lambda!393772 lambda!393770))))

(assert (=> b!6924215 (not (= lambda!393772 lambda!393771))))

(assert (=> b!6924215 true))

(assert (=> b!6924215 true))

(assert (=> b!6924215 true))

(declare-fun bs!1848133 () Bool)

(declare-fun b!6924204 () Bool)

(assert (= bs!1848133 (and b!6924204 b!6924197)))

(declare-fun lt!2471255 () List!66677)

(declare-fun lambda!393773 () Int)

(assert (=> bs!1848133 (= (and (= lt!2471255 s!14361) (= r2!6280 lt!2471254)) (= lambda!393773 lambda!393769))))

(assert (=> bs!1848133 (not (= lambda!393773 lambda!393770))))

(declare-fun bs!1848134 () Bool)

(assert (= bs!1848134 (and b!6924204 b!6924215)))

(assert (=> bs!1848134 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393773 lambda!393771))))

(assert (=> bs!1848134 (not (= lambda!393773 lambda!393772))))

(assert (=> b!6924204 true))

(assert (=> b!6924204 true))

(assert (=> b!6924204 true))

(declare-fun lambda!393774 () Int)

(assert (=> bs!1848134 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393774 lambda!393772))))

(assert (=> bs!1848133 (not (= lambda!393774 lambda!393769))))

(assert (=> bs!1848134 (not (= lambda!393774 lambda!393771))))

(assert (=> b!6924204 (not (= lambda!393774 lambda!393773))))

(assert (=> bs!1848133 (= (and (= lt!2471255 s!14361) (= r2!6280 lt!2471254)) (= lambda!393774 lambda!393770))))

(assert (=> b!6924204 true))

(assert (=> b!6924204 true))

(assert (=> b!6924204 true))

(declare-fun b!6924196 () Bool)

(declare-fun e!4167122 () Bool)

(declare-fun e!4167115 () Bool)

(assert (=> b!6924196 (= e!4167122 e!4167115)))

(declare-fun res!2823623 () Bool)

(assert (=> b!6924196 (=> res!2823623 e!4167115)))

(declare-fun lt!2471256 () List!66677)

(assert (=> b!6924196 (= res!2823623 (not (= lt!2471256 s!14361)))))

(declare-fun lt!2471269 () List!66677)

(assert (=> b!6924196 (= lt!2471269 lt!2471256)))

(declare-fun lt!2471250 () tuple2!67562)

(declare-fun ++!14967 (List!66677 List!66677) List!66677)

(assert (=> b!6924196 (= lt!2471256 (++!14967 (_1!37084 lt!2471250) lt!2471255))))

(declare-datatypes ((Unit!160572 0))(
  ( (Unit!160573) )
))
(declare-fun lt!2471260 () Unit!160572)

(declare-fun lemmaConcatAssociativity!3015 (List!66677 List!66677 List!66677) Unit!160572)

(assert (=> b!6924196 (= lt!2471260 (lemmaConcatAssociativity!3015 (_1!37084 lt!2471250) (_2!37084 lt!2471250) (_2!37084 lt!2471259)))))

(declare-fun e!4167120 () Bool)

(declare-fun e!4167117 () Bool)

(assert (=> b!6924197 (= e!4167120 e!4167117)))

(declare-fun res!2823617 () Bool)

(assert (=> b!6924197 (=> res!2823617 e!4167117)))

(declare-fun lt!2471274 () Bool)

(assert (=> b!6924197 (= res!2823617 (not lt!2471274))))

(declare-fun matchRSpec!3981 (Regex!16924 List!66677) Bool)

(assert (=> b!6924197 (= lt!2471274 (matchRSpec!3981 lt!2471254 (_1!37084 lt!2471259)))))

(declare-fun matchR!9063 (Regex!16924 List!66677) Bool)

(assert (=> b!6924197 (= lt!2471274 (matchR!9063 lt!2471254 (_1!37084 lt!2471259)))))

(declare-fun lt!2471271 () Unit!160572)

(declare-fun mainMatchTheorem!3981 (Regex!16924 List!66677) Unit!160572)

(assert (=> b!6924197 (= lt!2471271 (mainMatchTheorem!3981 lt!2471254 (_1!37084 lt!2471259)))))

(declare-datatypes ((Option!16693 0))(
  ( (None!16692) (Some!16692 (v!52964 tuple2!67562)) )
))
(declare-fun lt!2471262 () Option!16693)

(declare-fun get!23327 (Option!16693) tuple2!67562)

(assert (=> b!6924197 (= lt!2471259 (get!23327 lt!2471262))))

(declare-fun Exists!3926 (Int) Bool)

(assert (=> b!6924197 (= (Exists!3926 lambda!393769) (Exists!3926 lambda!393770))))

(declare-fun lt!2471257 () Unit!160572)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2393 (Regex!16924 Regex!16924 List!66677) Unit!160572)

(assert (=> b!6924197 (= lt!2471257 (lemmaExistCutMatchRandMatchRSpecEquivalent!2393 lt!2471254 r3!135 s!14361))))

(declare-fun isDefined!13396 (Option!16693) Bool)

(assert (=> b!6924197 (= (isDefined!13396 lt!2471262) (Exists!3926 lambda!393769))))

(declare-fun findConcatSeparation!3107 (Regex!16924 Regex!16924 List!66677 List!66677 List!66677) Option!16693)

(assert (=> b!6924197 (= lt!2471262 (findConcatSeparation!3107 lt!2471254 r3!135 Nil!66553 s!14361 s!14361))))

(declare-fun lt!2471252 () Unit!160572)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2869 (Regex!16924 Regex!16924 List!66677) Unit!160572)

(assert (=> b!6924197 (= lt!2471252 (lemmaFindConcatSeparationEquivalentToExists!2869 lt!2471254 r3!135 s!14361))))

(declare-fun b!6924199 () Bool)

(declare-fun e!4167116 () Bool)

(declare-fun tp!1908576 () Bool)

(assert (=> b!6924199 (= e!4167116 tp!1908576)))

(declare-fun b!6924200 () Bool)

(declare-fun res!2823622 () Bool)

(declare-fun e!4167123 () Bool)

(assert (=> b!6924200 (=> res!2823622 e!4167123)))

(assert (=> b!6924200 (= res!2823622 (not (matchR!9063 r2!6280 (_2!37084 lt!2471250))))))

(declare-fun b!6924201 () Bool)

(declare-fun e!4167121 () Bool)

(declare-fun tp!1908577 () Bool)

(declare-fun tp!1908565 () Bool)

(assert (=> b!6924201 (= e!4167121 (and tp!1908577 tp!1908565))))

(declare-fun b!6924202 () Bool)

(declare-fun tp!1908564 () Bool)

(declare-fun tp!1908572 () Bool)

(assert (=> b!6924202 (= e!4167116 (and tp!1908564 tp!1908572))))

(declare-fun b!6924203 () Bool)

(declare-fun tp!1908567 () Bool)

(declare-fun tp!1908579 () Bool)

(assert (=> b!6924203 (= e!4167116 (and tp!1908567 tp!1908579))))

(declare-fun e!4167119 () Bool)

(assert (=> b!6924204 (= e!4167119 e!4167122)))

(declare-fun res!2823618 () Bool)

(assert (=> b!6924204 (=> res!2823618 e!4167122)))

(declare-fun lt!2471270 () Bool)

(assert (=> b!6924204 (= res!2823618 (not lt!2471270))))

(declare-fun lt!2471253 () Bool)

(assert (=> b!6924204 lt!2471253))

(declare-fun lt!2471268 () Unit!160572)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!85 (Regex!16924 Regex!16924 List!66677 List!66677 List!66677 List!66677 List!66677) Unit!160572)

(assert (=> b!6924204 (= lt!2471268 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!85 r2!6280 r3!135 (_2!37084 lt!2471250) (_2!37084 lt!2471259) lt!2471255 Nil!66553 lt!2471255))))

(assert (=> b!6924204 (= (Exists!3926 lambda!393773) (Exists!3926 lambda!393774))))

(declare-fun lt!2471265 () Unit!160572)

(assert (=> b!6924204 (= lt!2471265 (lemmaExistCutMatchRandMatchRSpecEquivalent!2393 r2!6280 r3!135 lt!2471255))))

(assert (=> b!6924204 (= lt!2471253 (Exists!3926 lambda!393773))))

(assert (=> b!6924204 (= lt!2471253 (isDefined!13396 (findConcatSeparation!3107 r2!6280 r3!135 Nil!66553 lt!2471255 lt!2471255)))))

(declare-fun lt!2471248 () Unit!160572)

(assert (=> b!6924204 (= lt!2471248 (lemmaFindConcatSeparationEquivalentToExists!2869 r2!6280 r3!135 lt!2471255))))

(declare-fun lt!2471249 () Regex!16924)

(assert (=> b!6924204 (= lt!2471270 (matchRSpec!3981 lt!2471249 lt!2471255))))

(assert (=> b!6924204 (= lt!2471270 (matchR!9063 lt!2471249 lt!2471255))))

(declare-fun lt!2471246 () Unit!160572)

(assert (=> b!6924204 (= lt!2471246 (mainMatchTheorem!3981 lt!2471249 lt!2471255))))

(assert (=> b!6924204 (= lt!2471255 (++!14967 (_2!37084 lt!2471250) (_2!37084 lt!2471259)))))

(declare-fun b!6924205 () Bool)

(declare-fun res!2823614 () Bool)

(declare-fun e!4167118 () Bool)

(assert (=> b!6924205 (=> (not res!2823614) (not e!4167118))))

(declare-fun validRegex!8630 (Regex!16924) Bool)

(assert (=> b!6924205 (= res!2823614 (validRegex!8630 r3!135))))

(declare-fun b!6924206 () Bool)

(declare-fun tp_is_empty!43073 () Bool)

(assert (=> b!6924206 (= e!4167116 tp_is_empty!43073)))

(declare-fun b!6924207 () Bool)

(assert (=> b!6924207 (= e!4167121 tp_is_empty!43073)))

(declare-fun res!2823619 () Bool)

(assert (=> start!665768 (=> (not res!2823619) (not e!4167118))))

(assert (=> start!665768 (= res!2823619 (validRegex!8630 r1!6342))))

(assert (=> start!665768 e!4167118))

(assert (=> start!665768 e!4167116))

(declare-fun e!4167113 () Bool)

(assert (=> start!665768 e!4167113))

(assert (=> start!665768 e!4167121))

(declare-fun e!4167114 () Bool)

(assert (=> start!665768 e!4167114))

(declare-fun b!6924198 () Bool)

(declare-fun res!2823615 () Bool)

(assert (=> b!6924198 (=> res!2823615 e!4167117)))

(assert (=> b!6924198 (= res!2823615 (not (matchR!9063 r3!135 (_2!37084 lt!2471259))))))

(declare-fun b!6924208 () Bool)

(declare-fun res!2823613 () Bool)

(assert (=> b!6924208 (=> (not res!2823613) (not e!4167118))))

(assert (=> b!6924208 (= res!2823613 (validRegex!8630 r2!6280))))

(declare-fun b!6924209 () Bool)

(declare-fun res!2823616 () Bool)

(assert (=> b!6924209 (=> res!2823616 e!4167115)))

(declare-fun isPrefix!5809 (List!66677 List!66677) Bool)

(assert (=> b!6924209 (= res!2823616 (not (isPrefix!5809 Nil!66553 (_1!37084 lt!2471250))))))

(declare-fun b!6924210 () Bool)

(assert (=> b!6924210 (= e!4167123 e!4167119)))

(declare-fun res!2823621 () Bool)

(assert (=> b!6924210 (=> res!2823621 e!4167119)))

(assert (=> b!6924210 (= res!2823621 (not (= lt!2471269 s!14361)))))

(assert (=> b!6924210 (= lt!2471269 (++!14967 (++!14967 (_1!37084 lt!2471250) (_2!37084 lt!2471250)) (_2!37084 lt!2471259)))))

(assert (=> b!6924210 (matchRSpec!3981 r2!6280 (_2!37084 lt!2471250))))

(declare-fun lt!2471267 () Unit!160572)

(assert (=> b!6924210 (= lt!2471267 (mainMatchTheorem!3981 r2!6280 (_2!37084 lt!2471250)))))

(assert (=> b!6924210 (matchRSpec!3981 r1!6342 (_1!37084 lt!2471250))))

(declare-fun lt!2471264 () Unit!160572)

(assert (=> b!6924210 (= lt!2471264 (mainMatchTheorem!3981 r1!6342 (_1!37084 lt!2471250)))))

(declare-fun b!6924211 () Bool)

(declare-fun tp!1908578 () Bool)

(declare-fun tp!1908571 () Bool)

(assert (=> b!6924211 (= e!4167113 (and tp!1908578 tp!1908571))))

(declare-fun b!6924212 () Bool)

(declare-fun res!2823620 () Bool)

(assert (=> b!6924212 (=> res!2823620 e!4167115)))

(assert (=> b!6924212 (= res!2823620 (not (validRegex!8630 lt!2471249)))))

(declare-fun b!6924213 () Bool)

(declare-fun tp!1908575 () Bool)

(declare-fun tp!1908573 () Bool)

(assert (=> b!6924213 (= e!4167113 (and tp!1908575 tp!1908573))))

(declare-fun b!6924214 () Bool)

(assert (=> b!6924214 (= e!4167115 (= (++!14967 Nil!66553 s!14361) s!14361))))

(assert (=> b!6924215 (= e!4167117 e!4167123)))

(declare-fun res!2823611 () Bool)

(assert (=> b!6924215 (=> res!2823611 e!4167123)))

(assert (=> b!6924215 (= res!2823611 (not (matchR!9063 r1!6342 (_1!37084 lt!2471250))))))

(declare-fun lt!2471266 () Option!16693)

(assert (=> b!6924215 (= lt!2471250 (get!23327 lt!2471266))))

(assert (=> b!6924215 (= (Exists!3926 lambda!393771) (Exists!3926 lambda!393772))))

(declare-fun lt!2471251 () Unit!160572)

(assert (=> b!6924215 (= lt!2471251 (lemmaExistCutMatchRandMatchRSpecEquivalent!2393 r1!6342 r2!6280 (_1!37084 lt!2471259)))))

(assert (=> b!6924215 (= (isDefined!13396 lt!2471266) (Exists!3926 lambda!393771))))

(assert (=> b!6924215 (= lt!2471266 (findConcatSeparation!3107 r1!6342 r2!6280 Nil!66553 (_1!37084 lt!2471259) (_1!37084 lt!2471259)))))

(declare-fun lt!2471272 () Unit!160572)

(assert (=> b!6924215 (= lt!2471272 (lemmaFindConcatSeparationEquivalentToExists!2869 r1!6342 r2!6280 (_1!37084 lt!2471259)))))

(declare-fun b!6924216 () Bool)

(declare-fun tp!1908574 () Bool)

(assert (=> b!6924216 (= e!4167121 tp!1908574)))

(declare-fun b!6924217 () Bool)

(assert (=> b!6924217 (= e!4167113 tp_is_empty!43073)))

(declare-fun b!6924218 () Bool)

(assert (=> b!6924218 (= e!4167118 (not e!4167120))))

(declare-fun res!2823612 () Bool)

(assert (=> b!6924218 (=> res!2823612 e!4167120)))

(declare-fun lt!2471261 () Bool)

(assert (=> b!6924218 (= res!2823612 (not lt!2471261))))

(declare-fun lt!2471263 () Regex!16924)

(assert (=> b!6924218 (= (matchR!9063 lt!2471263 s!14361) (matchRSpec!3981 lt!2471263 s!14361))))

(declare-fun lt!2471247 () Unit!160572)

(assert (=> b!6924218 (= lt!2471247 (mainMatchTheorem!3981 lt!2471263 s!14361))))

(declare-fun lt!2471273 () Regex!16924)

(assert (=> b!6924218 (= lt!2471261 (matchRSpec!3981 lt!2471273 s!14361))))

(assert (=> b!6924218 (= lt!2471261 (matchR!9063 lt!2471273 s!14361))))

(declare-fun lt!2471258 () Unit!160572)

(assert (=> b!6924218 (= lt!2471258 (mainMatchTheorem!3981 lt!2471273 s!14361))))

(assert (=> b!6924218 (= lt!2471263 (Concat!25769 r1!6342 lt!2471249))))

(assert (=> b!6924218 (= lt!2471249 (Concat!25769 r2!6280 r3!135))))

(assert (=> b!6924218 (= lt!2471273 (Concat!25769 lt!2471254 r3!135))))

(assert (=> b!6924218 (= lt!2471254 (Concat!25769 r1!6342 r2!6280))))

(declare-fun b!6924219 () Bool)

(declare-fun tp!1908566 () Bool)

(assert (=> b!6924219 (= e!4167113 tp!1908566)))

(declare-fun b!6924220 () Bool)

(declare-fun tp!1908568 () Bool)

(assert (=> b!6924220 (= e!4167114 (and tp_is_empty!43073 tp!1908568))))

(declare-fun b!6924221 () Bool)

(declare-fun tp!1908570 () Bool)

(declare-fun tp!1908569 () Bool)

(assert (=> b!6924221 (= e!4167121 (and tp!1908570 tp!1908569))))

(assert (= (and start!665768 res!2823619) b!6924208))

(assert (= (and b!6924208 res!2823613) b!6924205))

(assert (= (and b!6924205 res!2823614) b!6924218))

(assert (= (and b!6924218 (not res!2823612)) b!6924197))

(assert (= (and b!6924197 (not res!2823617)) b!6924198))

(assert (= (and b!6924198 (not res!2823615)) b!6924215))

(assert (= (and b!6924215 (not res!2823611)) b!6924200))

(assert (= (and b!6924200 (not res!2823622)) b!6924210))

(assert (= (and b!6924210 (not res!2823621)) b!6924204))

(assert (= (and b!6924204 (not res!2823618)) b!6924196))

(assert (= (and b!6924196 (not res!2823623)) b!6924212))

(assert (= (and b!6924212 (not res!2823620)) b!6924209))

(assert (= (and b!6924209 (not res!2823616)) b!6924214))

(assert (= (and start!665768 (is-ElementMatch!16924 r1!6342)) b!6924206))

(assert (= (and start!665768 (is-Concat!25769 r1!6342)) b!6924202))

(assert (= (and start!665768 (is-Star!16924 r1!6342)) b!6924199))

(assert (= (and start!665768 (is-Union!16924 r1!6342)) b!6924203))

(assert (= (and start!665768 (is-ElementMatch!16924 r2!6280)) b!6924217))

(assert (= (and start!665768 (is-Concat!25769 r2!6280)) b!6924213))

(assert (= (and start!665768 (is-Star!16924 r2!6280)) b!6924219))

(assert (= (and start!665768 (is-Union!16924 r2!6280)) b!6924211))

(assert (= (and start!665768 (is-ElementMatch!16924 r3!135)) b!6924207))

(assert (= (and start!665768 (is-Concat!25769 r3!135)) b!6924201))

(assert (= (and start!665768 (is-Star!16924 r3!135)) b!6924216))

(assert (= (and start!665768 (is-Union!16924 r3!135)) b!6924221))

(assert (= (and start!665768 (is-Cons!66553 s!14361)) b!6924220))

(declare-fun m!7633296 () Bool)

(assert (=> b!6924214 m!7633296))

(declare-fun m!7633298 () Bool)

(assert (=> b!6924196 m!7633298))

(declare-fun m!7633300 () Bool)

(assert (=> b!6924196 m!7633300))

(declare-fun m!7633302 () Bool)

(assert (=> b!6924218 m!7633302))

(declare-fun m!7633304 () Bool)

(assert (=> b!6924218 m!7633304))

(declare-fun m!7633306 () Bool)

(assert (=> b!6924218 m!7633306))

(declare-fun m!7633308 () Bool)

(assert (=> b!6924218 m!7633308))

(declare-fun m!7633310 () Bool)

(assert (=> b!6924218 m!7633310))

(declare-fun m!7633312 () Bool)

(assert (=> b!6924218 m!7633312))

(declare-fun m!7633314 () Bool)

(assert (=> b!6924215 m!7633314))

(declare-fun m!7633316 () Bool)

(assert (=> b!6924215 m!7633316))

(declare-fun m!7633318 () Bool)

(assert (=> b!6924215 m!7633318))

(declare-fun m!7633320 () Bool)

(assert (=> b!6924215 m!7633320))

(declare-fun m!7633322 () Bool)

(assert (=> b!6924215 m!7633322))

(declare-fun m!7633324 () Bool)

(assert (=> b!6924215 m!7633324))

(declare-fun m!7633326 () Bool)

(assert (=> b!6924215 m!7633326))

(assert (=> b!6924215 m!7633318))

(declare-fun m!7633328 () Bool)

(assert (=> b!6924215 m!7633328))

(declare-fun m!7633330 () Bool)

(assert (=> b!6924208 m!7633330))

(declare-fun m!7633332 () Bool)

(assert (=> b!6924212 m!7633332))

(declare-fun m!7633334 () Bool)

(assert (=> b!6924197 m!7633334))

(assert (=> b!6924197 m!7633334))

(declare-fun m!7633336 () Bool)

(assert (=> b!6924197 m!7633336))

(declare-fun m!7633338 () Bool)

(assert (=> b!6924197 m!7633338))

(declare-fun m!7633340 () Bool)

(assert (=> b!6924197 m!7633340))

(declare-fun m!7633342 () Bool)

(assert (=> b!6924197 m!7633342))

(declare-fun m!7633344 () Bool)

(assert (=> b!6924197 m!7633344))

(declare-fun m!7633346 () Bool)

(assert (=> b!6924197 m!7633346))

(declare-fun m!7633348 () Bool)

(assert (=> b!6924197 m!7633348))

(declare-fun m!7633350 () Bool)

(assert (=> b!6924197 m!7633350))

(declare-fun m!7633352 () Bool)

(assert (=> b!6924197 m!7633352))

(declare-fun m!7633354 () Bool)

(assert (=> b!6924209 m!7633354))

(declare-fun m!7633356 () Bool)

(assert (=> b!6924204 m!7633356))

(declare-fun m!7633358 () Bool)

(assert (=> b!6924204 m!7633358))

(assert (=> b!6924204 m!7633358))

(declare-fun m!7633360 () Bool)

(assert (=> b!6924204 m!7633360))

(declare-fun m!7633362 () Bool)

(assert (=> b!6924204 m!7633362))

(declare-fun m!7633364 () Bool)

(assert (=> b!6924204 m!7633364))

(declare-fun m!7633366 () Bool)

(assert (=> b!6924204 m!7633366))

(declare-fun m!7633368 () Bool)

(assert (=> b!6924204 m!7633368))

(declare-fun m!7633370 () Bool)

(assert (=> b!6924204 m!7633370))

(declare-fun m!7633372 () Bool)

(assert (=> b!6924204 m!7633372))

(declare-fun m!7633374 () Bool)

(assert (=> b!6924204 m!7633374))

(assert (=> b!6924204 m!7633374))

(declare-fun m!7633376 () Bool)

(assert (=> b!6924204 m!7633376))

(declare-fun m!7633378 () Bool)

(assert (=> b!6924205 m!7633378))

(declare-fun m!7633380 () Bool)

(assert (=> b!6924198 m!7633380))

(declare-fun m!7633382 () Bool)

(assert (=> start!665768 m!7633382))

(declare-fun m!7633384 () Bool)

(assert (=> b!6924200 m!7633384))

(declare-fun m!7633386 () Bool)

(assert (=> b!6924210 m!7633386))

(declare-fun m!7633388 () Bool)

(assert (=> b!6924210 m!7633388))

(declare-fun m!7633390 () Bool)

(assert (=> b!6924210 m!7633390))

(assert (=> b!6924210 m!7633388))

(declare-fun m!7633392 () Bool)

(assert (=> b!6924210 m!7633392))

(declare-fun m!7633394 () Bool)

(assert (=> b!6924210 m!7633394))

(declare-fun m!7633396 () Bool)

(assert (=> b!6924210 m!7633396))

(push 1)

(assert (not b!6924209))

(assert (not b!6924202))

(assert (not b!6924205))

(assert (not start!665768))

(assert (not b!6924214))

(assert (not b!6924203))

(assert (not b!6924213))

(assert (not b!6924211))

(assert (not b!6924210))

(assert (not b!6924199))

(assert (not b!6924200))

(assert (not b!6924208))

(assert (not b!6924218))

(assert (not b!6924216))

(assert (not b!6924215))

(assert (not b!6924197))

(assert (not b!6924204))

(assert (not b!6924198))

(assert (not b!6924212))

(assert tp_is_empty!43073)

(assert (not b!6924221))

(assert (not b!6924201))

(assert (not b!6924196))

(assert (not b!6924220))

(assert (not b!6924219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6924376 () Bool)

(declare-fun e!4167194 () Bool)

(declare-fun e!4167193 () Bool)

(assert (=> b!6924376 (= e!4167194 e!4167193)))

(declare-fun c!1285412 () Bool)

(assert (=> b!6924376 (= c!1285412 (is-EmptyLang!16924 r1!6342))))

(declare-fun b!6924377 () Bool)

(declare-fun res!2823719 () Bool)

(declare-fun e!4167191 () Bool)

(assert (=> b!6924377 (=> (not res!2823719) (not e!4167191))))

(declare-fun isEmpty!38808 (List!66677) Bool)

(declare-fun tail!12933 (List!66677) List!66677)

(assert (=> b!6924377 (= res!2823719 (isEmpty!38808 (tail!12933 (_1!37084 lt!2471250))))))

(declare-fun b!6924378 () Bool)

(declare-fun head!13881 (List!66677) C!34118)

(assert (=> b!6924378 (= e!4167191 (= (head!13881 (_1!37084 lt!2471250)) (c!1285404 r1!6342)))))

(declare-fun b!6924379 () Bool)

(declare-fun res!2823715 () Bool)

(declare-fun e!4167189 () Bool)

(assert (=> b!6924379 (=> res!2823715 e!4167189)))

(assert (=> b!6924379 (= res!2823715 (not (is-ElementMatch!16924 r1!6342)))))

(assert (=> b!6924379 (= e!4167193 e!4167189)))

(declare-fun d!2165042 () Bool)

(assert (=> d!2165042 e!4167194))

(declare-fun c!1285414 () Bool)

(assert (=> d!2165042 (= c!1285414 (is-EmptyExpr!16924 r1!6342))))

(declare-fun lt!2471364 () Bool)

(declare-fun e!4167195 () Bool)

(assert (=> d!2165042 (= lt!2471364 e!4167195)))

(declare-fun c!1285413 () Bool)

(assert (=> d!2165042 (= c!1285413 (isEmpty!38808 (_1!37084 lt!2471250)))))

(assert (=> d!2165042 (validRegex!8630 r1!6342)))

(assert (=> d!2165042 (= (matchR!9063 r1!6342 (_1!37084 lt!2471250)) lt!2471364)))

(declare-fun b!6924380 () Bool)

(assert (=> b!6924380 (= e!4167193 (not lt!2471364))))

(declare-fun b!6924381 () Bool)

(declare-fun e!4167192 () Bool)

(assert (=> b!6924381 (= e!4167189 e!4167192)))

(declare-fun res!2823722 () Bool)

(assert (=> b!6924381 (=> (not res!2823722) (not e!4167192))))

(assert (=> b!6924381 (= res!2823722 (not lt!2471364))))

(declare-fun b!6924382 () Bool)

(declare-fun res!2823716 () Bool)

(assert (=> b!6924382 (=> (not res!2823716) (not e!4167191))))

(declare-fun call!629340 () Bool)

(assert (=> b!6924382 (= res!2823716 (not call!629340))))

(declare-fun bm!629335 () Bool)

(assert (=> bm!629335 (= call!629340 (isEmpty!38808 (_1!37084 lt!2471250)))))

(declare-fun b!6924383 () Bool)

(declare-fun res!2823720 () Bool)

(assert (=> b!6924383 (=> res!2823720 e!4167189)))

(assert (=> b!6924383 (= res!2823720 e!4167191)))

(declare-fun res!2823721 () Bool)

(assert (=> b!6924383 (=> (not res!2823721) (not e!4167191))))

(assert (=> b!6924383 (= res!2823721 lt!2471364)))

(declare-fun b!6924384 () Bool)

(assert (=> b!6924384 (= e!4167194 (= lt!2471364 call!629340))))

(declare-fun b!6924385 () Bool)

(declare-fun res!2823718 () Bool)

(declare-fun e!4167190 () Bool)

(assert (=> b!6924385 (=> res!2823718 e!4167190)))

(assert (=> b!6924385 (= res!2823718 (not (isEmpty!38808 (tail!12933 (_1!37084 lt!2471250)))))))

(declare-fun b!6924386 () Bool)

(assert (=> b!6924386 (= e!4167190 (not (= (head!13881 (_1!37084 lt!2471250)) (c!1285404 r1!6342))))))

(declare-fun b!6924387 () Bool)

(declare-fun derivativeStep!5428 (Regex!16924 C!34118) Regex!16924)

(assert (=> b!6924387 (= e!4167195 (matchR!9063 (derivativeStep!5428 r1!6342 (head!13881 (_1!37084 lt!2471250))) (tail!12933 (_1!37084 lt!2471250))))))

(declare-fun b!6924388 () Bool)

(assert (=> b!6924388 (= e!4167192 e!4167190)))

(declare-fun res!2823717 () Bool)

(assert (=> b!6924388 (=> res!2823717 e!4167190)))

(assert (=> b!6924388 (= res!2823717 call!629340)))

(declare-fun b!6924389 () Bool)

(declare-fun nullable!6753 (Regex!16924) Bool)

(assert (=> b!6924389 (= e!4167195 (nullable!6753 r1!6342))))

(assert (= (and d!2165042 c!1285413) b!6924389))

(assert (= (and d!2165042 (not c!1285413)) b!6924387))

(assert (= (and d!2165042 c!1285414) b!6924384))

(assert (= (and d!2165042 (not c!1285414)) b!6924376))

(assert (= (and b!6924376 c!1285412) b!6924380))

(assert (= (and b!6924376 (not c!1285412)) b!6924379))

(assert (= (and b!6924379 (not res!2823715)) b!6924383))

(assert (= (and b!6924383 res!2823721) b!6924382))

(assert (= (and b!6924382 res!2823716) b!6924377))

(assert (= (and b!6924377 res!2823719) b!6924378))

(assert (= (and b!6924383 (not res!2823720)) b!6924381))

(assert (= (and b!6924381 res!2823722) b!6924388))

(assert (= (and b!6924388 (not res!2823717)) b!6924385))

(assert (= (and b!6924385 (not res!2823718)) b!6924386))

(assert (= (or b!6924384 b!6924388 b!6924382) bm!629335))

(declare-fun m!7633500 () Bool)

(assert (=> b!6924389 m!7633500))

(declare-fun m!7633502 () Bool)

(assert (=> b!6924386 m!7633502))

(declare-fun m!7633504 () Bool)

(assert (=> d!2165042 m!7633504))

(assert (=> d!2165042 m!7633382))

(assert (=> b!6924378 m!7633502))

(declare-fun m!7633506 () Bool)

(assert (=> b!6924377 m!7633506))

(assert (=> b!6924377 m!7633506))

(declare-fun m!7633508 () Bool)

(assert (=> b!6924377 m!7633508))

(assert (=> b!6924385 m!7633506))

(assert (=> b!6924385 m!7633506))

(assert (=> b!6924385 m!7633508))

(assert (=> b!6924387 m!7633502))

(assert (=> b!6924387 m!7633502))

(declare-fun m!7633510 () Bool)

(assert (=> b!6924387 m!7633510))

(assert (=> b!6924387 m!7633506))

(assert (=> b!6924387 m!7633510))

(assert (=> b!6924387 m!7633506))

(declare-fun m!7633512 () Bool)

(assert (=> b!6924387 m!7633512))

(assert (=> bm!629335 m!7633504))

(assert (=> b!6924215 d!2165042))

(declare-fun b!6924408 () Bool)

(declare-fun e!4167208 () Option!16693)

(assert (=> b!6924408 (= e!4167208 None!16692)))

(declare-fun b!6924409 () Bool)

(declare-fun e!4167206 () Option!16693)

(assert (=> b!6924409 (= e!4167206 e!4167208)))

(declare-fun c!1285419 () Bool)

(assert (=> b!6924409 (= c!1285419 (is-Nil!66553 (_1!37084 lt!2471259)))))

(declare-fun d!2165044 () Bool)

(declare-fun e!4167207 () Bool)

(assert (=> d!2165044 e!4167207))

(declare-fun res!2823734 () Bool)

(assert (=> d!2165044 (=> res!2823734 e!4167207)))

(declare-fun e!4167210 () Bool)

(assert (=> d!2165044 (= res!2823734 e!4167210)))

(declare-fun res!2823735 () Bool)

(assert (=> d!2165044 (=> (not res!2823735) (not e!4167210))))

(declare-fun lt!2471371 () Option!16693)

(assert (=> d!2165044 (= res!2823735 (isDefined!13396 lt!2471371))))

(assert (=> d!2165044 (= lt!2471371 e!4167206)))

(declare-fun c!1285420 () Bool)

(declare-fun e!4167209 () Bool)

(assert (=> d!2165044 (= c!1285420 e!4167209)))

(declare-fun res!2823736 () Bool)

(assert (=> d!2165044 (=> (not res!2823736) (not e!4167209))))

(assert (=> d!2165044 (= res!2823736 (matchR!9063 r1!6342 Nil!66553))))

(assert (=> d!2165044 (validRegex!8630 r1!6342)))

(assert (=> d!2165044 (= (findConcatSeparation!3107 r1!6342 r2!6280 Nil!66553 (_1!37084 lt!2471259) (_1!37084 lt!2471259)) lt!2471371)))

(declare-fun b!6924410 () Bool)

(assert (=> b!6924410 (= e!4167207 (not (isDefined!13396 lt!2471371)))))

(declare-fun b!6924411 () Bool)

(assert (=> b!6924411 (= e!4167209 (matchR!9063 r2!6280 (_1!37084 lt!2471259)))))

(declare-fun b!6924412 () Bool)

(assert (=> b!6924412 (= e!4167210 (= (++!14967 (_1!37084 (get!23327 lt!2471371)) (_2!37084 (get!23327 lt!2471371))) (_1!37084 lt!2471259)))))

(declare-fun b!6924413 () Bool)

(assert (=> b!6924413 (= e!4167206 (Some!16692 (tuple2!67563 Nil!66553 (_1!37084 lt!2471259))))))

(declare-fun b!6924414 () Bool)

(declare-fun res!2823737 () Bool)

(assert (=> b!6924414 (=> (not res!2823737) (not e!4167210))))

(assert (=> b!6924414 (= res!2823737 (matchR!9063 r1!6342 (_1!37084 (get!23327 lt!2471371))))))

(declare-fun b!6924415 () Bool)

(declare-fun lt!2471372 () Unit!160572)

(declare-fun lt!2471373 () Unit!160572)

(assert (=> b!6924415 (= lt!2471372 lt!2471373)))

(assert (=> b!6924415 (= (++!14967 (++!14967 Nil!66553 (Cons!66553 (h!73001 (_1!37084 lt!2471259)) Nil!66553)) (t!380420 (_1!37084 lt!2471259))) (_1!37084 lt!2471259))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2832 (List!66677 C!34118 List!66677 List!66677) Unit!160572)

(assert (=> b!6924415 (= lt!2471373 (lemmaMoveElementToOtherListKeepsConcatEq!2832 Nil!66553 (h!73001 (_1!37084 lt!2471259)) (t!380420 (_1!37084 lt!2471259)) (_1!37084 lt!2471259)))))

(assert (=> b!6924415 (= e!4167208 (findConcatSeparation!3107 r1!6342 r2!6280 (++!14967 Nil!66553 (Cons!66553 (h!73001 (_1!37084 lt!2471259)) Nil!66553)) (t!380420 (_1!37084 lt!2471259)) (_1!37084 lt!2471259)))))

(declare-fun b!6924416 () Bool)

(declare-fun res!2823733 () Bool)

(assert (=> b!6924416 (=> (not res!2823733) (not e!4167210))))

(assert (=> b!6924416 (= res!2823733 (matchR!9063 r2!6280 (_2!37084 (get!23327 lt!2471371))))))

(assert (= (and d!2165044 res!2823736) b!6924411))

(assert (= (and d!2165044 c!1285420) b!6924413))

(assert (= (and d!2165044 (not c!1285420)) b!6924409))

(assert (= (and b!6924409 c!1285419) b!6924408))

(assert (= (and b!6924409 (not c!1285419)) b!6924415))

(assert (= (and d!2165044 res!2823735) b!6924414))

(assert (= (and b!6924414 res!2823737) b!6924416))

(assert (= (and b!6924416 res!2823733) b!6924412))

(assert (= (and d!2165044 (not res!2823734)) b!6924410))

(declare-fun m!7633514 () Bool)

(assert (=> b!6924416 m!7633514))

(declare-fun m!7633516 () Bool)

(assert (=> b!6924416 m!7633516))

(declare-fun m!7633518 () Bool)

(assert (=> b!6924410 m!7633518))

(assert (=> b!6924414 m!7633514))

(declare-fun m!7633520 () Bool)

(assert (=> b!6924414 m!7633520))

(assert (=> d!2165044 m!7633518))

(declare-fun m!7633522 () Bool)

(assert (=> d!2165044 m!7633522))

(assert (=> d!2165044 m!7633382))

(assert (=> b!6924412 m!7633514))

(declare-fun m!7633524 () Bool)

(assert (=> b!6924412 m!7633524))

(declare-fun m!7633526 () Bool)

(assert (=> b!6924411 m!7633526))

(declare-fun m!7633528 () Bool)

(assert (=> b!6924415 m!7633528))

(assert (=> b!6924415 m!7633528))

(declare-fun m!7633530 () Bool)

(assert (=> b!6924415 m!7633530))

(declare-fun m!7633532 () Bool)

(assert (=> b!6924415 m!7633532))

(assert (=> b!6924415 m!7633528))

(declare-fun m!7633534 () Bool)

(assert (=> b!6924415 m!7633534))

(assert (=> b!6924215 d!2165044))

(declare-fun d!2165048 () Bool)

(assert (=> d!2165048 (= (get!23327 lt!2471266) (v!52964 lt!2471266))))

(assert (=> b!6924215 d!2165048))

(declare-fun d!2165050 () Bool)

(declare-fun choose!51558 (Int) Bool)

(assert (=> d!2165050 (= (Exists!3926 lambda!393771) (choose!51558 lambda!393771))))

(declare-fun bs!1848138 () Bool)

(assert (= bs!1848138 d!2165050))

(declare-fun m!7633536 () Bool)

(assert (=> bs!1848138 m!7633536))

(assert (=> b!6924215 d!2165050))

(declare-fun d!2165052 () Bool)

(declare-fun isEmpty!38809 (Option!16693) Bool)

(assert (=> d!2165052 (= (isDefined!13396 lt!2471266) (not (isEmpty!38809 lt!2471266)))))

(declare-fun bs!1848139 () Bool)

(assert (= bs!1848139 d!2165052))

(declare-fun m!7633538 () Bool)

(assert (=> bs!1848139 m!7633538))

(assert (=> b!6924215 d!2165052))

(declare-fun bs!1848140 () Bool)

(declare-fun d!2165054 () Bool)

(assert (= bs!1848140 (and d!2165054 b!6924215)))

(declare-fun lambda!393803 () Int)

(assert (=> bs!1848140 (not (= lambda!393803 lambda!393772))))

(declare-fun bs!1848141 () Bool)

(assert (= bs!1848141 (and d!2165054 b!6924197)))

(assert (=> bs!1848141 (= (and (= (_1!37084 lt!2471259) s!14361) (= r1!6342 lt!2471254) (= r2!6280 r3!135)) (= lambda!393803 lambda!393769))))

(assert (=> bs!1848140 (= lambda!393803 lambda!393771)))

(declare-fun bs!1848142 () Bool)

(assert (= bs!1848142 (and d!2165054 b!6924204)))

(assert (=> bs!1848142 (not (= lambda!393803 lambda!393774))))

(assert (=> bs!1848142 (= (and (= (_1!37084 lt!2471259) lt!2471255) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393803 lambda!393773))))

(assert (=> bs!1848141 (not (= lambda!393803 lambda!393770))))

(assert (=> d!2165054 true))

(assert (=> d!2165054 true))

(assert (=> d!2165054 true))

(declare-fun bs!1848143 () Bool)

(assert (= bs!1848143 d!2165054))

(declare-fun lambda!393804 () Int)

(assert (=> bs!1848143 (not (= lambda!393804 lambda!393803))))

(assert (=> bs!1848140 (= lambda!393804 lambda!393772)))

(assert (=> bs!1848141 (not (= lambda!393804 lambda!393769))))

(assert (=> bs!1848140 (not (= lambda!393804 lambda!393771))))

(assert (=> bs!1848142 (= (and (= (_1!37084 lt!2471259) lt!2471255) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393804 lambda!393774))))

(assert (=> bs!1848142 (not (= lambda!393804 lambda!393773))))

(assert (=> bs!1848141 (= (and (= (_1!37084 lt!2471259) s!14361) (= r1!6342 lt!2471254) (= r2!6280 r3!135)) (= lambda!393804 lambda!393770))))

(assert (=> d!2165054 true))

(assert (=> d!2165054 true))

(assert (=> d!2165054 true))

(assert (=> d!2165054 (= (Exists!3926 lambda!393803) (Exists!3926 lambda!393804))))

(declare-fun lt!2471379 () Unit!160572)

(declare-fun choose!51559 (Regex!16924 Regex!16924 List!66677) Unit!160572)

(assert (=> d!2165054 (= lt!2471379 (choose!51559 r1!6342 r2!6280 (_1!37084 lt!2471259)))))

(assert (=> d!2165054 (validRegex!8630 r1!6342)))

(assert (=> d!2165054 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2393 r1!6342 r2!6280 (_1!37084 lt!2471259)) lt!2471379)))

(declare-fun m!7633554 () Bool)

(assert (=> bs!1848143 m!7633554))

(declare-fun m!7633556 () Bool)

(assert (=> bs!1848143 m!7633556))

(declare-fun m!7633558 () Bool)

(assert (=> bs!1848143 m!7633558))

(assert (=> bs!1848143 m!7633382))

(assert (=> b!6924215 d!2165054))

(declare-fun d!2165058 () Bool)

(assert (=> d!2165058 (= (Exists!3926 lambda!393772) (choose!51558 lambda!393772))))

(declare-fun bs!1848144 () Bool)

(assert (= bs!1848144 d!2165058))

(declare-fun m!7633560 () Bool)

(assert (=> bs!1848144 m!7633560))

(assert (=> b!6924215 d!2165058))

(declare-fun bs!1848145 () Bool)

(declare-fun d!2165060 () Bool)

(assert (= bs!1848145 (and d!2165060 d!2165054)))

(declare-fun lambda!393807 () Int)

(assert (=> bs!1848145 (= lambda!393807 lambda!393803)))

(assert (=> bs!1848145 (not (= lambda!393807 lambda!393804))))

(declare-fun bs!1848146 () Bool)

(assert (= bs!1848146 (and d!2165060 b!6924215)))

(assert (=> bs!1848146 (not (= lambda!393807 lambda!393772))))

(declare-fun bs!1848147 () Bool)

(assert (= bs!1848147 (and d!2165060 b!6924197)))

(assert (=> bs!1848147 (= (and (= (_1!37084 lt!2471259) s!14361) (= r1!6342 lt!2471254) (= r2!6280 r3!135)) (= lambda!393807 lambda!393769))))

(assert (=> bs!1848146 (= lambda!393807 lambda!393771)))

(declare-fun bs!1848148 () Bool)

(assert (= bs!1848148 (and d!2165060 b!6924204)))

(assert (=> bs!1848148 (not (= lambda!393807 lambda!393774))))

(assert (=> bs!1848148 (= (and (= (_1!37084 lt!2471259) lt!2471255) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393807 lambda!393773))))

(assert (=> bs!1848147 (not (= lambda!393807 lambda!393770))))

(assert (=> d!2165060 true))

(assert (=> d!2165060 true))

(assert (=> d!2165060 true))

(assert (=> d!2165060 (= (isDefined!13396 (findConcatSeparation!3107 r1!6342 r2!6280 Nil!66553 (_1!37084 lt!2471259) (_1!37084 lt!2471259))) (Exists!3926 lambda!393807))))

(declare-fun lt!2471382 () Unit!160572)

(declare-fun choose!51560 (Regex!16924 Regex!16924 List!66677) Unit!160572)

(assert (=> d!2165060 (= lt!2471382 (choose!51560 r1!6342 r2!6280 (_1!37084 lt!2471259)))))

(assert (=> d!2165060 (validRegex!8630 r1!6342)))

(assert (=> d!2165060 (= (lemmaFindConcatSeparationEquivalentToExists!2869 r1!6342 r2!6280 (_1!37084 lt!2471259)) lt!2471382)))

(declare-fun bs!1848149 () Bool)

(assert (= bs!1848149 d!2165060))

(assert (=> bs!1848149 m!7633382))

(declare-fun m!7633562 () Bool)

(assert (=> bs!1848149 m!7633562))

(declare-fun m!7633564 () Bool)

(assert (=> bs!1848149 m!7633564))

(assert (=> bs!1848149 m!7633314))

(declare-fun m!7633566 () Bool)

(assert (=> bs!1848149 m!7633566))

(assert (=> bs!1848149 m!7633314))

(assert (=> b!6924215 d!2165060))

(declare-fun d!2165062 () Bool)

(assert (=> d!2165062 (= (Exists!3926 lambda!393774) (choose!51558 lambda!393774))))

(declare-fun bs!1848150 () Bool)

(assert (= bs!1848150 d!2165062))

(declare-fun m!7633568 () Bool)

(assert (=> bs!1848150 m!7633568))

(assert (=> b!6924204 d!2165062))

(declare-fun d!2165064 () Bool)

(declare-fun e!4167244 () Bool)

(assert (=> d!2165064 e!4167244))

(declare-fun res!2823783 () Bool)

(assert (=> d!2165064 (=> (not res!2823783) (not e!4167244))))

(declare-fun lt!2471387 () List!66677)

(declare-fun content!13081 (List!66677) (Set C!34118))

(assert (=> d!2165064 (= res!2823783 (= (content!13081 lt!2471387) (set.union (content!13081 (_2!37084 lt!2471250)) (content!13081 (_2!37084 lt!2471259)))))))

(declare-fun e!4167245 () List!66677)

(assert (=> d!2165064 (= lt!2471387 e!4167245)))

(declare-fun c!1285429 () Bool)

(assert (=> d!2165064 (= c!1285429 (is-Nil!66553 (_2!37084 lt!2471250)))))

(assert (=> d!2165064 (= (++!14967 (_2!37084 lt!2471250) (_2!37084 lt!2471259)) lt!2471387)))

(declare-fun b!6924477 () Bool)

(assert (=> b!6924477 (= e!4167245 (_2!37084 lt!2471259))))

(declare-fun b!6924478 () Bool)

(assert (=> b!6924478 (= e!4167245 (Cons!66553 (h!73001 (_2!37084 lt!2471250)) (++!14967 (t!380420 (_2!37084 lt!2471250)) (_2!37084 lt!2471259))))))

(declare-fun b!6924479 () Bool)

(declare-fun res!2823782 () Bool)

(assert (=> b!6924479 (=> (not res!2823782) (not e!4167244))))

(declare-fun size!40778 (List!66677) Int)

(assert (=> b!6924479 (= res!2823782 (= (size!40778 lt!2471387) (+ (size!40778 (_2!37084 lt!2471250)) (size!40778 (_2!37084 lt!2471259)))))))

(declare-fun b!6924480 () Bool)

(assert (=> b!6924480 (= e!4167244 (or (not (= (_2!37084 lt!2471259) Nil!66553)) (= lt!2471387 (_2!37084 lt!2471250))))))

(assert (= (and d!2165064 c!1285429) b!6924477))

(assert (= (and d!2165064 (not c!1285429)) b!6924478))

(assert (= (and d!2165064 res!2823783) b!6924479))

(assert (= (and b!6924479 res!2823782) b!6924480))

(declare-fun m!7633570 () Bool)

(assert (=> d!2165064 m!7633570))

(declare-fun m!7633572 () Bool)

(assert (=> d!2165064 m!7633572))

(declare-fun m!7633574 () Bool)

(assert (=> d!2165064 m!7633574))

(declare-fun m!7633576 () Bool)

(assert (=> b!6924478 m!7633576))

(declare-fun m!7633578 () Bool)

(assert (=> b!6924479 m!7633578))

(declare-fun m!7633580 () Bool)

(assert (=> b!6924479 m!7633580))

(declare-fun m!7633582 () Bool)

(assert (=> b!6924479 m!7633582))

(assert (=> b!6924204 d!2165064))

(declare-fun d!2165066 () Bool)

(assert (=> d!2165066 (= (Exists!3926 lambda!393773) (choose!51558 lambda!393773))))

(declare-fun bs!1848151 () Bool)

(assert (= bs!1848151 d!2165066))

(declare-fun m!7633584 () Bool)

(assert (=> bs!1848151 m!7633584))

(assert (=> b!6924204 d!2165066))

(declare-fun d!2165068 () Bool)

(assert (=> d!2165068 (isDefined!13396 (findConcatSeparation!3107 r2!6280 r3!135 Nil!66553 lt!2471255 lt!2471255))))

(declare-fun lt!2471390 () Unit!160572)

(declare-fun choose!51561 (Regex!16924 Regex!16924 List!66677 List!66677 List!66677 List!66677 List!66677) Unit!160572)

(assert (=> d!2165068 (= lt!2471390 (choose!51561 r2!6280 r3!135 (_2!37084 lt!2471250) (_2!37084 lt!2471259) lt!2471255 Nil!66553 lt!2471255))))

(assert (=> d!2165068 (validRegex!8630 r2!6280)))

(assert (=> d!2165068 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!85 r2!6280 r3!135 (_2!37084 lt!2471250) (_2!37084 lt!2471259) lt!2471255 Nil!66553 lt!2471255) lt!2471390)))

(declare-fun bs!1848152 () Bool)

(assert (= bs!1848152 d!2165068))

(assert (=> bs!1848152 m!7633358))

(assert (=> bs!1848152 m!7633358))

(assert (=> bs!1848152 m!7633360))

(declare-fun m!7633586 () Bool)

(assert (=> bs!1848152 m!7633586))

(assert (=> bs!1848152 m!7633330))

(assert (=> b!6924204 d!2165068))

(declare-fun d!2165070 () Bool)

(assert (=> d!2165070 (= (matchR!9063 lt!2471249 lt!2471255) (matchRSpec!3981 lt!2471249 lt!2471255))))

(declare-fun lt!2471393 () Unit!160572)

(declare-fun choose!51562 (Regex!16924 List!66677) Unit!160572)

(assert (=> d!2165070 (= lt!2471393 (choose!51562 lt!2471249 lt!2471255))))

(assert (=> d!2165070 (validRegex!8630 lt!2471249)))

(assert (=> d!2165070 (= (mainMatchTheorem!3981 lt!2471249 lt!2471255) lt!2471393)))

(declare-fun bs!1848153 () Bool)

(assert (= bs!1848153 d!2165070))

(assert (=> bs!1848153 m!7633376))

(assert (=> bs!1848153 m!7633366))

(declare-fun m!7633588 () Bool)

(assert (=> bs!1848153 m!7633588))

(assert (=> bs!1848153 m!7633332))

(assert (=> b!6924204 d!2165070))

(declare-fun bs!1848154 () Bool)

(declare-fun d!2165072 () Bool)

(assert (= bs!1848154 (and d!2165072 d!2165060)))

(declare-fun lambda!393808 () Int)

(assert (=> bs!1848154 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393808 lambda!393807))))

(declare-fun bs!1848155 () Bool)

(assert (= bs!1848155 (and d!2165072 d!2165054)))

(assert (=> bs!1848155 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393808 lambda!393803))))

(assert (=> bs!1848155 (not (= lambda!393808 lambda!393804))))

(declare-fun bs!1848156 () Bool)

(assert (= bs!1848156 (and d!2165072 b!6924215)))

(assert (=> bs!1848156 (not (= lambda!393808 lambda!393772))))

(declare-fun bs!1848157 () Bool)

(assert (= bs!1848157 (and d!2165072 b!6924197)))

(assert (=> bs!1848157 (= (and (= lt!2471255 s!14361) (= r2!6280 lt!2471254)) (= lambda!393808 lambda!393769))))

(assert (=> bs!1848156 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393808 lambda!393771))))

(declare-fun bs!1848158 () Bool)

(assert (= bs!1848158 (and d!2165072 b!6924204)))

(assert (=> bs!1848158 (not (= lambda!393808 lambda!393774))))

(assert (=> bs!1848158 (= lambda!393808 lambda!393773)))

(assert (=> bs!1848157 (not (= lambda!393808 lambda!393770))))

(assert (=> d!2165072 true))

(assert (=> d!2165072 true))

(assert (=> d!2165072 true))

(assert (=> d!2165072 (= (isDefined!13396 (findConcatSeparation!3107 r2!6280 r3!135 Nil!66553 lt!2471255 lt!2471255)) (Exists!3926 lambda!393808))))

(declare-fun lt!2471394 () Unit!160572)

(assert (=> d!2165072 (= lt!2471394 (choose!51560 r2!6280 r3!135 lt!2471255))))

(assert (=> d!2165072 (validRegex!8630 r2!6280)))

(assert (=> d!2165072 (= (lemmaFindConcatSeparationEquivalentToExists!2869 r2!6280 r3!135 lt!2471255) lt!2471394)))

(declare-fun bs!1848159 () Bool)

(assert (= bs!1848159 d!2165072))

(assert (=> bs!1848159 m!7633330))

(declare-fun m!7633590 () Bool)

(assert (=> bs!1848159 m!7633590))

(declare-fun m!7633592 () Bool)

(assert (=> bs!1848159 m!7633592))

(assert (=> bs!1848159 m!7633358))

(assert (=> bs!1848159 m!7633360))

(assert (=> bs!1848159 m!7633358))

(assert (=> b!6924204 d!2165072))

(declare-fun b!6924495 () Bool)

(declare-fun e!4167258 () Bool)

(declare-fun e!4167257 () Bool)

(assert (=> b!6924495 (= e!4167258 e!4167257)))

(declare-fun c!1285433 () Bool)

(assert (=> b!6924495 (= c!1285433 (is-EmptyLang!16924 lt!2471249))))

(declare-fun b!6924496 () Bool)

(declare-fun res!2823796 () Bool)

(declare-fun e!4167255 () Bool)

(assert (=> b!6924496 (=> (not res!2823796) (not e!4167255))))

(assert (=> b!6924496 (= res!2823796 (isEmpty!38808 (tail!12933 lt!2471255)))))

(declare-fun b!6924497 () Bool)

(assert (=> b!6924497 (= e!4167255 (= (head!13881 lt!2471255) (c!1285404 lt!2471249)))))

(declare-fun b!6924498 () Bool)

(declare-fun res!2823792 () Bool)

(declare-fun e!4167253 () Bool)

(assert (=> b!6924498 (=> res!2823792 e!4167253)))

(assert (=> b!6924498 (= res!2823792 (not (is-ElementMatch!16924 lt!2471249)))))

(assert (=> b!6924498 (= e!4167257 e!4167253)))

(declare-fun d!2165074 () Bool)

(assert (=> d!2165074 e!4167258))

(declare-fun c!1285435 () Bool)

(assert (=> d!2165074 (= c!1285435 (is-EmptyExpr!16924 lt!2471249))))

(declare-fun lt!2471396 () Bool)

(declare-fun e!4167259 () Bool)

(assert (=> d!2165074 (= lt!2471396 e!4167259)))

(declare-fun c!1285434 () Bool)

(assert (=> d!2165074 (= c!1285434 (isEmpty!38808 lt!2471255))))

(assert (=> d!2165074 (validRegex!8630 lt!2471249)))

(assert (=> d!2165074 (= (matchR!9063 lt!2471249 lt!2471255) lt!2471396)))

(declare-fun b!6924499 () Bool)

(assert (=> b!6924499 (= e!4167257 (not lt!2471396))))

(declare-fun b!6924500 () Bool)

(declare-fun e!4167256 () Bool)

(assert (=> b!6924500 (= e!4167253 e!4167256)))

(declare-fun res!2823799 () Bool)

(assert (=> b!6924500 (=> (not res!2823799) (not e!4167256))))

(assert (=> b!6924500 (= res!2823799 (not lt!2471396))))

(declare-fun b!6924501 () Bool)

(declare-fun res!2823793 () Bool)

(assert (=> b!6924501 (=> (not res!2823793) (not e!4167255))))

(declare-fun call!629344 () Bool)

(assert (=> b!6924501 (= res!2823793 (not call!629344))))

(declare-fun bm!629339 () Bool)

(assert (=> bm!629339 (= call!629344 (isEmpty!38808 lt!2471255))))

(declare-fun b!6924502 () Bool)

(declare-fun res!2823797 () Bool)

(assert (=> b!6924502 (=> res!2823797 e!4167253)))

(assert (=> b!6924502 (= res!2823797 e!4167255)))

(declare-fun res!2823798 () Bool)

(assert (=> b!6924502 (=> (not res!2823798) (not e!4167255))))

(assert (=> b!6924502 (= res!2823798 lt!2471396)))

(declare-fun b!6924503 () Bool)

(assert (=> b!6924503 (= e!4167258 (= lt!2471396 call!629344))))

(declare-fun b!6924504 () Bool)

(declare-fun res!2823795 () Bool)

(declare-fun e!4167254 () Bool)

(assert (=> b!6924504 (=> res!2823795 e!4167254)))

(assert (=> b!6924504 (= res!2823795 (not (isEmpty!38808 (tail!12933 lt!2471255))))))

(declare-fun b!6924505 () Bool)

(assert (=> b!6924505 (= e!4167254 (not (= (head!13881 lt!2471255) (c!1285404 lt!2471249))))))

(declare-fun b!6924506 () Bool)

(assert (=> b!6924506 (= e!4167259 (matchR!9063 (derivativeStep!5428 lt!2471249 (head!13881 lt!2471255)) (tail!12933 lt!2471255)))))

(declare-fun b!6924507 () Bool)

(assert (=> b!6924507 (= e!4167256 e!4167254)))

(declare-fun res!2823794 () Bool)

(assert (=> b!6924507 (=> res!2823794 e!4167254)))

(assert (=> b!6924507 (= res!2823794 call!629344)))

(declare-fun b!6924508 () Bool)

(assert (=> b!6924508 (= e!4167259 (nullable!6753 lt!2471249))))

(assert (= (and d!2165074 c!1285434) b!6924508))

(assert (= (and d!2165074 (not c!1285434)) b!6924506))

(assert (= (and d!2165074 c!1285435) b!6924503))

(assert (= (and d!2165074 (not c!1285435)) b!6924495))

(assert (= (and b!6924495 c!1285433) b!6924499))

(assert (= (and b!6924495 (not c!1285433)) b!6924498))

(assert (= (and b!6924498 (not res!2823792)) b!6924502))

(assert (= (and b!6924502 res!2823798) b!6924501))

(assert (= (and b!6924501 res!2823793) b!6924496))

(assert (= (and b!6924496 res!2823796) b!6924497))

(assert (= (and b!6924502 (not res!2823797)) b!6924500))

(assert (= (and b!6924500 res!2823799) b!6924507))

(assert (= (and b!6924507 (not res!2823794)) b!6924504))

(assert (= (and b!6924504 (not res!2823795)) b!6924505))

(assert (= (or b!6924503 b!6924507 b!6924501) bm!629339))

(declare-fun m!7633594 () Bool)

(assert (=> b!6924508 m!7633594))

(declare-fun m!7633596 () Bool)

(assert (=> b!6924505 m!7633596))

(declare-fun m!7633598 () Bool)

(assert (=> d!2165074 m!7633598))

(assert (=> d!2165074 m!7633332))

(assert (=> b!6924497 m!7633596))

(declare-fun m!7633600 () Bool)

(assert (=> b!6924496 m!7633600))

(assert (=> b!6924496 m!7633600))

(declare-fun m!7633602 () Bool)

(assert (=> b!6924496 m!7633602))

(assert (=> b!6924504 m!7633600))

(assert (=> b!6924504 m!7633600))

(assert (=> b!6924504 m!7633602))

(assert (=> b!6924506 m!7633596))

(assert (=> b!6924506 m!7633596))

(declare-fun m!7633604 () Bool)

(assert (=> b!6924506 m!7633604))

(assert (=> b!6924506 m!7633600))

(assert (=> b!6924506 m!7633604))

(assert (=> b!6924506 m!7633600))

(declare-fun m!7633606 () Bool)

(assert (=> b!6924506 m!7633606))

(assert (=> bm!629339 m!7633598))

(assert (=> b!6924204 d!2165074))

(declare-fun bs!1848160 () Bool)

(declare-fun b!6924563 () Bool)

(assert (= bs!1848160 (and b!6924563 d!2165060)))

(declare-fun lambda!393813 () Int)

(assert (=> bs!1848160 (not (= lambda!393813 lambda!393807))))

(declare-fun bs!1848161 () Bool)

(assert (= bs!1848161 (and b!6924563 d!2165054)))

(assert (=> bs!1848161 (not (= lambda!393813 lambda!393803))))

(assert (=> bs!1848161 (not (= lambda!393813 lambda!393804))))

(declare-fun bs!1848162 () Bool)

(assert (= bs!1848162 (and b!6924563 b!6924215)))

(assert (=> bs!1848162 (not (= lambda!393813 lambda!393772))))

(declare-fun bs!1848163 () Bool)

(assert (= bs!1848163 (and b!6924563 b!6924197)))

(assert (=> bs!1848163 (not (= lambda!393813 lambda!393769))))

(declare-fun bs!1848164 () Bool)

(assert (= bs!1848164 (and b!6924563 d!2165072)))

(assert (=> bs!1848164 (not (= lambda!393813 lambda!393808))))

(assert (=> bs!1848162 (not (= lambda!393813 lambda!393771))))

(declare-fun bs!1848165 () Bool)

(assert (= bs!1848165 (and b!6924563 b!6924204)))

(assert (=> bs!1848165 (not (= lambda!393813 lambda!393774))))

(assert (=> bs!1848165 (not (= lambda!393813 lambda!393773))))

(assert (=> bs!1848163 (not (= lambda!393813 lambda!393770))))

(assert (=> b!6924563 true))

(assert (=> b!6924563 true))

(declare-fun bs!1848166 () Bool)

(declare-fun b!6924554 () Bool)

(assert (= bs!1848166 (and b!6924554 d!2165060)))

(declare-fun lambda!393814 () Int)

(assert (=> bs!1848166 (not (= lambda!393814 lambda!393807))))

(declare-fun bs!1848167 () Bool)

(assert (= bs!1848167 (and b!6924554 d!2165054)))

(assert (=> bs!1848167 (not (= lambda!393814 lambda!393803))))

(declare-fun bs!1848168 () Bool)

(assert (= bs!1848168 (and b!6924554 b!6924563)))

(assert (=> bs!1848168 (not (= lambda!393814 lambda!393813))))

(assert (=> bs!1848167 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= (regOne!34360 lt!2471249) r1!6342) (= (regTwo!34360 lt!2471249) r2!6280)) (= lambda!393814 lambda!393804))))

(declare-fun bs!1848169 () Bool)

(assert (= bs!1848169 (and b!6924554 b!6924215)))

(assert (=> bs!1848169 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= (regOne!34360 lt!2471249) r1!6342) (= (regTwo!34360 lt!2471249) r2!6280)) (= lambda!393814 lambda!393772))))

(declare-fun bs!1848170 () Bool)

(assert (= bs!1848170 (and b!6924554 b!6924197)))

(assert (=> bs!1848170 (not (= lambda!393814 lambda!393769))))

(declare-fun bs!1848171 () Bool)

(assert (= bs!1848171 (and b!6924554 d!2165072)))

(assert (=> bs!1848171 (not (= lambda!393814 lambda!393808))))

(assert (=> bs!1848169 (not (= lambda!393814 lambda!393771))))

(declare-fun bs!1848172 () Bool)

(assert (= bs!1848172 (and b!6924554 b!6924204)))

(assert (=> bs!1848172 (= (and (= (regOne!34360 lt!2471249) r2!6280) (= (regTwo!34360 lt!2471249) r3!135)) (= lambda!393814 lambda!393774))))

(assert (=> bs!1848172 (not (= lambda!393814 lambda!393773))))

(assert (=> bs!1848170 (= (and (= lt!2471255 s!14361) (= (regOne!34360 lt!2471249) lt!2471254) (= (regTwo!34360 lt!2471249) r3!135)) (= lambda!393814 lambda!393770))))

(assert (=> b!6924554 true))

(assert (=> b!6924554 true))

(declare-fun bm!629344 () Bool)

(declare-fun call!629349 () Bool)

(assert (=> bm!629344 (= call!629349 (isEmpty!38808 lt!2471255))))

(declare-fun b!6924553 () Bool)

(declare-fun res!2823823 () Bool)

(declare-fun e!4167289 () Bool)

(assert (=> b!6924553 (=> res!2823823 e!4167289)))

(assert (=> b!6924553 (= res!2823823 call!629349)))

(declare-fun e!4167288 () Bool)

(assert (=> b!6924553 (= e!4167288 e!4167289)))

(declare-fun call!629350 () Bool)

(assert (=> b!6924554 (= e!4167288 call!629350)))

(declare-fun b!6924555 () Bool)

(declare-fun e!4167286 () Bool)

(assert (=> b!6924555 (= e!4167286 (= lt!2471255 (Cons!66553 (c!1285404 lt!2471249) Nil!66553)))))

(declare-fun b!6924556 () Bool)

(declare-fun e!4167285 () Bool)

(declare-fun e!4167290 () Bool)

(assert (=> b!6924556 (= e!4167285 e!4167290)))

(declare-fun res!2823822 () Bool)

(assert (=> b!6924556 (= res!2823822 (not (is-EmptyLang!16924 lt!2471249)))))

(assert (=> b!6924556 (=> (not res!2823822) (not e!4167290))))

(declare-fun b!6924557 () Bool)

(declare-fun e!4167287 () Bool)

(assert (=> b!6924557 (= e!4167287 (matchRSpec!3981 (regTwo!34361 lt!2471249) lt!2471255))))

(declare-fun b!6924558 () Bool)

(declare-fun c!1285449 () Bool)

(assert (=> b!6924558 (= c!1285449 (is-ElementMatch!16924 lt!2471249))))

(assert (=> b!6924558 (= e!4167290 e!4167286)))

(declare-fun b!6924559 () Bool)

(declare-fun e!4167284 () Bool)

(assert (=> b!6924559 (= e!4167284 e!4167287)))

(declare-fun res!2823824 () Bool)

(assert (=> b!6924559 (= res!2823824 (matchRSpec!3981 (regOne!34361 lt!2471249) lt!2471255))))

(assert (=> b!6924559 (=> res!2823824 e!4167287)))

(declare-fun b!6924560 () Bool)

(assert (=> b!6924560 (= e!4167284 e!4167288)))

(declare-fun c!1285448 () Bool)

(assert (=> b!6924560 (= c!1285448 (is-Star!16924 lt!2471249))))

(declare-fun d!2165076 () Bool)

(declare-fun c!1285447 () Bool)

(assert (=> d!2165076 (= c!1285447 (is-EmptyExpr!16924 lt!2471249))))

(assert (=> d!2165076 (= (matchRSpec!3981 lt!2471249 lt!2471255) e!4167285)))

(declare-fun b!6924561 () Bool)

(declare-fun c!1285450 () Bool)

(assert (=> b!6924561 (= c!1285450 (is-Union!16924 lt!2471249))))

(assert (=> b!6924561 (= e!4167286 e!4167284)))

(declare-fun b!6924562 () Bool)

(assert (=> b!6924562 (= e!4167285 call!629349)))

(assert (=> b!6924563 (= e!4167289 call!629350)))

(declare-fun bm!629345 () Bool)

(assert (=> bm!629345 (= call!629350 (Exists!3926 (ite c!1285448 lambda!393813 lambda!393814)))))

(assert (= (and d!2165076 c!1285447) b!6924562))

(assert (= (and d!2165076 (not c!1285447)) b!6924556))

(assert (= (and b!6924556 res!2823822) b!6924558))

(assert (= (and b!6924558 c!1285449) b!6924555))

(assert (= (and b!6924558 (not c!1285449)) b!6924561))

(assert (= (and b!6924561 c!1285450) b!6924559))

(assert (= (and b!6924561 (not c!1285450)) b!6924560))

(assert (= (and b!6924559 (not res!2823824)) b!6924557))

(assert (= (and b!6924560 c!1285448) b!6924553))

(assert (= (and b!6924560 (not c!1285448)) b!6924554))

(assert (= (and b!6924553 (not res!2823823)) b!6924563))

(assert (= (or b!6924563 b!6924554) bm!629345))

(assert (= (or b!6924562 b!6924553) bm!629344))

(assert (=> bm!629344 m!7633598))

(declare-fun m!7633634 () Bool)

(assert (=> b!6924557 m!7633634))

(declare-fun m!7633636 () Bool)

(assert (=> b!6924559 m!7633636))

(declare-fun m!7633638 () Bool)

(assert (=> bm!629345 m!7633638))

(assert (=> b!6924204 d!2165076))

(declare-fun d!2165082 () Bool)

(assert (=> d!2165082 (= (isDefined!13396 (findConcatSeparation!3107 r2!6280 r3!135 Nil!66553 lt!2471255 lt!2471255)) (not (isEmpty!38809 (findConcatSeparation!3107 r2!6280 r3!135 Nil!66553 lt!2471255 lt!2471255))))))

(declare-fun bs!1848173 () Bool)

(assert (= bs!1848173 d!2165082))

(assert (=> bs!1848173 m!7633358))

(declare-fun m!7633640 () Bool)

(assert (=> bs!1848173 m!7633640))

(assert (=> b!6924204 d!2165082))

(declare-fun bs!1848175 () Bool)

(declare-fun d!2165084 () Bool)

(assert (= bs!1848175 (and d!2165084 d!2165060)))

(declare-fun lambda!393815 () Int)

(assert (=> bs!1848175 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393815 lambda!393807))))

(declare-fun bs!1848176 () Bool)

(assert (= bs!1848176 (and d!2165084 b!6924563)))

(assert (=> bs!1848176 (not (= lambda!393815 lambda!393813))))

(declare-fun bs!1848177 () Bool)

(assert (= bs!1848177 (and d!2165084 d!2165054)))

(assert (=> bs!1848177 (not (= lambda!393815 lambda!393804))))

(declare-fun bs!1848178 () Bool)

(assert (= bs!1848178 (and d!2165084 b!6924215)))

(assert (=> bs!1848178 (not (= lambda!393815 lambda!393772))))

(declare-fun bs!1848179 () Bool)

(assert (= bs!1848179 (and d!2165084 b!6924197)))

(assert (=> bs!1848179 (= (and (= lt!2471255 s!14361) (= r2!6280 lt!2471254)) (= lambda!393815 lambda!393769))))

(declare-fun bs!1848180 () Bool)

(assert (= bs!1848180 (and d!2165084 d!2165072)))

(assert (=> bs!1848180 (= lambda!393815 lambda!393808)))

(assert (=> bs!1848178 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393815 lambda!393771))))

(declare-fun bs!1848181 () Bool)

(assert (= bs!1848181 (and d!2165084 b!6924204)))

(assert (=> bs!1848181 (not (= lambda!393815 lambda!393774))))

(assert (=> bs!1848181 (= lambda!393815 lambda!393773)))

(assert (=> bs!1848179 (not (= lambda!393815 lambda!393770))))

(declare-fun bs!1848182 () Bool)

(assert (= bs!1848182 (and d!2165084 b!6924554)))

(assert (=> bs!1848182 (not (= lambda!393815 lambda!393814))))

(assert (=> bs!1848177 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393815 lambda!393803))))

(assert (=> d!2165084 true))

(assert (=> d!2165084 true))

(assert (=> d!2165084 true))

(declare-fun lambda!393816 () Int)

(assert (=> bs!1848175 (not (= lambda!393816 lambda!393807))))

(assert (=> bs!1848176 (not (= lambda!393816 lambda!393813))))

(declare-fun bs!1848183 () Bool)

(assert (= bs!1848183 d!2165084))

(assert (=> bs!1848183 (not (= lambda!393816 lambda!393815))))

(assert (=> bs!1848177 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393816 lambda!393804))))

(assert (=> bs!1848178 (= (and (= lt!2471255 (_1!37084 lt!2471259)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393816 lambda!393772))))

(assert (=> bs!1848179 (not (= lambda!393816 lambda!393769))))

(assert (=> bs!1848180 (not (= lambda!393816 lambda!393808))))

(assert (=> bs!1848178 (not (= lambda!393816 lambda!393771))))

(assert (=> bs!1848181 (= lambda!393816 lambda!393774)))

(assert (=> bs!1848181 (not (= lambda!393816 lambda!393773))))

(assert (=> bs!1848179 (= (and (= lt!2471255 s!14361) (= r2!6280 lt!2471254)) (= lambda!393816 lambda!393770))))

(assert (=> bs!1848182 (= (and (= r2!6280 (regOne!34360 lt!2471249)) (= r3!135 (regTwo!34360 lt!2471249))) (= lambda!393816 lambda!393814))))

(assert (=> bs!1848177 (not (= lambda!393816 lambda!393803))))

(assert (=> d!2165084 true))

(assert (=> d!2165084 true))

(assert (=> d!2165084 true))

(assert (=> d!2165084 (= (Exists!3926 lambda!393815) (Exists!3926 lambda!393816))))

(declare-fun lt!2471403 () Unit!160572)

(assert (=> d!2165084 (= lt!2471403 (choose!51559 r2!6280 r3!135 lt!2471255))))

(assert (=> d!2165084 (validRegex!8630 r2!6280)))

(assert (=> d!2165084 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2393 r2!6280 r3!135 lt!2471255) lt!2471403)))

(declare-fun m!7633646 () Bool)

(assert (=> bs!1848183 m!7633646))

(declare-fun m!7633648 () Bool)

(assert (=> bs!1848183 m!7633648))

(declare-fun m!7633650 () Bool)

(assert (=> bs!1848183 m!7633650))

(assert (=> bs!1848183 m!7633330))

(assert (=> b!6924204 d!2165084))

(declare-fun b!6924564 () Bool)

(declare-fun e!4167293 () Option!16693)

(assert (=> b!6924564 (= e!4167293 None!16692)))

(declare-fun b!6924565 () Bool)

(declare-fun e!4167291 () Option!16693)

(assert (=> b!6924565 (= e!4167291 e!4167293)))

(declare-fun c!1285451 () Bool)

(assert (=> b!6924565 (= c!1285451 (is-Nil!66553 lt!2471255))))

(declare-fun d!2165088 () Bool)

(declare-fun e!4167292 () Bool)

(assert (=> d!2165088 e!4167292))

(declare-fun res!2823826 () Bool)

(assert (=> d!2165088 (=> res!2823826 e!4167292)))

(declare-fun e!4167295 () Bool)

(assert (=> d!2165088 (= res!2823826 e!4167295)))

(declare-fun res!2823827 () Bool)

(assert (=> d!2165088 (=> (not res!2823827) (not e!4167295))))

(declare-fun lt!2471404 () Option!16693)

(assert (=> d!2165088 (= res!2823827 (isDefined!13396 lt!2471404))))

(assert (=> d!2165088 (= lt!2471404 e!4167291)))

(declare-fun c!1285452 () Bool)

(declare-fun e!4167294 () Bool)

(assert (=> d!2165088 (= c!1285452 e!4167294)))

(declare-fun res!2823828 () Bool)

(assert (=> d!2165088 (=> (not res!2823828) (not e!4167294))))

(assert (=> d!2165088 (= res!2823828 (matchR!9063 r2!6280 Nil!66553))))

(assert (=> d!2165088 (validRegex!8630 r2!6280)))

(assert (=> d!2165088 (= (findConcatSeparation!3107 r2!6280 r3!135 Nil!66553 lt!2471255 lt!2471255) lt!2471404)))

(declare-fun b!6924566 () Bool)

(assert (=> b!6924566 (= e!4167292 (not (isDefined!13396 lt!2471404)))))

(declare-fun b!6924567 () Bool)

(assert (=> b!6924567 (= e!4167294 (matchR!9063 r3!135 lt!2471255))))

(declare-fun b!6924568 () Bool)

(assert (=> b!6924568 (= e!4167295 (= (++!14967 (_1!37084 (get!23327 lt!2471404)) (_2!37084 (get!23327 lt!2471404))) lt!2471255))))

(declare-fun b!6924569 () Bool)

(assert (=> b!6924569 (= e!4167291 (Some!16692 (tuple2!67563 Nil!66553 lt!2471255)))))

(declare-fun b!6924570 () Bool)

(declare-fun res!2823829 () Bool)

(assert (=> b!6924570 (=> (not res!2823829) (not e!4167295))))

(assert (=> b!6924570 (= res!2823829 (matchR!9063 r2!6280 (_1!37084 (get!23327 lt!2471404))))))

(declare-fun b!6924571 () Bool)

(declare-fun lt!2471405 () Unit!160572)

(declare-fun lt!2471406 () Unit!160572)

(assert (=> b!6924571 (= lt!2471405 lt!2471406)))

(assert (=> b!6924571 (= (++!14967 (++!14967 Nil!66553 (Cons!66553 (h!73001 lt!2471255) Nil!66553)) (t!380420 lt!2471255)) lt!2471255)))

(assert (=> b!6924571 (= lt!2471406 (lemmaMoveElementToOtherListKeepsConcatEq!2832 Nil!66553 (h!73001 lt!2471255) (t!380420 lt!2471255) lt!2471255))))

(assert (=> b!6924571 (= e!4167293 (findConcatSeparation!3107 r2!6280 r3!135 (++!14967 Nil!66553 (Cons!66553 (h!73001 lt!2471255) Nil!66553)) (t!380420 lt!2471255) lt!2471255))))

(declare-fun b!6924572 () Bool)

(declare-fun res!2823825 () Bool)

(assert (=> b!6924572 (=> (not res!2823825) (not e!4167295))))

(assert (=> b!6924572 (= res!2823825 (matchR!9063 r3!135 (_2!37084 (get!23327 lt!2471404))))))

(assert (= (and d!2165088 res!2823828) b!6924567))

(assert (= (and d!2165088 c!1285452) b!6924569))

(assert (= (and d!2165088 (not c!1285452)) b!6924565))

(assert (= (and b!6924565 c!1285451) b!6924564))

(assert (= (and b!6924565 (not c!1285451)) b!6924571))

(assert (= (and d!2165088 res!2823827) b!6924570))

(assert (= (and b!6924570 res!2823829) b!6924572))

(assert (= (and b!6924572 res!2823825) b!6924568))

(assert (= (and d!2165088 (not res!2823826)) b!6924566))

(declare-fun m!7633652 () Bool)

(assert (=> b!6924572 m!7633652))

(declare-fun m!7633654 () Bool)

(assert (=> b!6924572 m!7633654))

(declare-fun m!7633656 () Bool)

(assert (=> b!6924566 m!7633656))

(assert (=> b!6924570 m!7633652))

(declare-fun m!7633658 () Bool)

(assert (=> b!6924570 m!7633658))

(assert (=> d!2165088 m!7633656))

(declare-fun m!7633660 () Bool)

(assert (=> d!2165088 m!7633660))

(assert (=> d!2165088 m!7633330))

(assert (=> b!6924568 m!7633652))

(declare-fun m!7633662 () Bool)

(assert (=> b!6924568 m!7633662))

(declare-fun m!7633664 () Bool)

(assert (=> b!6924567 m!7633664))

(declare-fun m!7633666 () Bool)

(assert (=> b!6924571 m!7633666))

(assert (=> b!6924571 m!7633666))

(declare-fun m!7633668 () Bool)

(assert (=> b!6924571 m!7633668))

(declare-fun m!7633670 () Bool)

(assert (=> b!6924571 m!7633670))

(assert (=> b!6924571 m!7633666))

(declare-fun m!7633672 () Bool)

(assert (=> b!6924571 m!7633672))

(assert (=> b!6924204 d!2165088))

(declare-fun b!6924591 () Bool)

(declare-fun res!2823844 () Bool)

(declare-fun e!4167316 () Bool)

(assert (=> b!6924591 (=> (not res!2823844) (not e!4167316))))

(declare-fun call!629357 () Bool)

(assert (=> b!6924591 (= res!2823844 call!629357)))

(declare-fun e!4167313 () Bool)

(assert (=> b!6924591 (= e!4167313 e!4167316)))

(declare-fun bm!629352 () Bool)

(declare-fun call!629359 () Bool)

(assert (=> bm!629352 (= call!629357 call!629359)))

(declare-fun b!6924592 () Bool)

(declare-fun e!4167311 () Bool)

(declare-fun e!4167312 () Bool)

(assert (=> b!6924592 (= e!4167311 e!4167312)))

(declare-fun res!2823840 () Bool)

(assert (=> b!6924592 (= res!2823840 (not (nullable!6753 (reg!17253 r1!6342))))))

(assert (=> b!6924592 (=> (not res!2823840) (not e!4167312))))

(declare-fun bm!629353 () Bool)

(declare-fun call!629358 () Bool)

(declare-fun c!1285457 () Bool)

(assert (=> bm!629353 (= call!629358 (validRegex!8630 (ite c!1285457 (regTwo!34361 r1!6342) (regOne!34360 r1!6342))))))

(declare-fun bm!629354 () Bool)

(declare-fun c!1285458 () Bool)

(assert (=> bm!629354 (= call!629359 (validRegex!8630 (ite c!1285458 (reg!17253 r1!6342) (ite c!1285457 (regOne!34361 r1!6342) (regTwo!34360 r1!6342)))))))

(declare-fun b!6924593 () Bool)

(declare-fun e!4167310 () Bool)

(assert (=> b!6924593 (= e!4167310 e!4167311)))

(assert (=> b!6924593 (= c!1285458 (is-Star!16924 r1!6342))))

(declare-fun b!6924594 () Bool)

(declare-fun res!2823843 () Bool)

(declare-fun e!4167315 () Bool)

(assert (=> b!6924594 (=> res!2823843 e!4167315)))

(assert (=> b!6924594 (= res!2823843 (not (is-Concat!25769 r1!6342)))))

(assert (=> b!6924594 (= e!4167313 e!4167315)))

(declare-fun b!6924596 () Bool)

(declare-fun e!4167314 () Bool)

(assert (=> b!6924596 (= e!4167314 call!629357)))

(declare-fun b!6924597 () Bool)

(assert (=> b!6924597 (= e!4167316 call!629358)))

(declare-fun b!6924598 () Bool)

(assert (=> b!6924598 (= e!4167315 e!4167314)))

(declare-fun res!2823842 () Bool)

(assert (=> b!6924598 (=> (not res!2823842) (not e!4167314))))

(assert (=> b!6924598 (= res!2823842 call!629358)))

(declare-fun b!6924599 () Bool)

(assert (=> b!6924599 (= e!4167312 call!629359)))

(declare-fun d!2165090 () Bool)

(declare-fun res!2823841 () Bool)

(assert (=> d!2165090 (=> res!2823841 e!4167310)))

(assert (=> d!2165090 (= res!2823841 (is-ElementMatch!16924 r1!6342))))

(assert (=> d!2165090 (= (validRegex!8630 r1!6342) e!4167310)))

(declare-fun b!6924595 () Bool)

(assert (=> b!6924595 (= e!4167311 e!4167313)))

(assert (=> b!6924595 (= c!1285457 (is-Union!16924 r1!6342))))

(assert (= (and d!2165090 (not res!2823841)) b!6924593))

(assert (= (and b!6924593 c!1285458) b!6924592))

(assert (= (and b!6924593 (not c!1285458)) b!6924595))

(assert (= (and b!6924592 res!2823840) b!6924599))

(assert (= (and b!6924595 c!1285457) b!6924591))

(assert (= (and b!6924595 (not c!1285457)) b!6924594))

(assert (= (and b!6924591 res!2823844) b!6924597))

(assert (= (and b!6924594 (not res!2823843)) b!6924598))

(assert (= (and b!6924598 res!2823842) b!6924596))

(assert (= (or b!6924591 b!6924596) bm!629352))

(assert (= (or b!6924597 b!6924598) bm!629353))

(assert (= (or b!6924599 bm!629352) bm!629354))

(declare-fun m!7633674 () Bool)

(assert (=> b!6924592 m!7633674))

(declare-fun m!7633676 () Bool)

(assert (=> bm!629353 m!7633676))

(declare-fun m!7633678 () Bool)

(assert (=> bm!629354 m!7633678))

(assert (=> start!665768 d!2165090))

(declare-fun d!2165092 () Bool)

(declare-fun e!4167317 () Bool)

(assert (=> d!2165092 e!4167317))

(declare-fun res!2823846 () Bool)

(assert (=> d!2165092 (=> (not res!2823846) (not e!4167317))))

(declare-fun lt!2471407 () List!66677)

(assert (=> d!2165092 (= res!2823846 (= (content!13081 lt!2471407) (set.union (content!13081 Nil!66553) (content!13081 s!14361))))))

(declare-fun e!4167318 () List!66677)

(assert (=> d!2165092 (= lt!2471407 e!4167318)))

(declare-fun c!1285459 () Bool)

(assert (=> d!2165092 (= c!1285459 (is-Nil!66553 Nil!66553))))

(assert (=> d!2165092 (= (++!14967 Nil!66553 s!14361) lt!2471407)))

(declare-fun b!6924602 () Bool)

(assert (=> b!6924602 (= e!4167318 s!14361)))

(declare-fun b!6924603 () Bool)

(assert (=> b!6924603 (= e!4167318 (Cons!66553 (h!73001 Nil!66553) (++!14967 (t!380420 Nil!66553) s!14361)))))

(declare-fun b!6924604 () Bool)

(declare-fun res!2823845 () Bool)

(assert (=> b!6924604 (=> (not res!2823845) (not e!4167317))))

(assert (=> b!6924604 (= res!2823845 (= (size!40778 lt!2471407) (+ (size!40778 Nil!66553) (size!40778 s!14361))))))

(declare-fun b!6924605 () Bool)

(assert (=> b!6924605 (= e!4167317 (or (not (= s!14361 Nil!66553)) (= lt!2471407 Nil!66553)))))

(assert (= (and d!2165092 c!1285459) b!6924602))

(assert (= (and d!2165092 (not c!1285459)) b!6924603))

(assert (= (and d!2165092 res!2823846) b!6924604))

(assert (= (and b!6924604 res!2823845) b!6924605))

(declare-fun m!7633680 () Bool)

(assert (=> d!2165092 m!7633680))

(declare-fun m!7633682 () Bool)

(assert (=> d!2165092 m!7633682))

(declare-fun m!7633684 () Bool)

(assert (=> d!2165092 m!7633684))

(declare-fun m!7633686 () Bool)

(assert (=> b!6924603 m!7633686))

(declare-fun m!7633688 () Bool)

(assert (=> b!6924604 m!7633688))

(declare-fun m!7633690 () Bool)

(assert (=> b!6924604 m!7633690))

(declare-fun m!7633692 () Bool)

(assert (=> b!6924604 m!7633692))

(assert (=> b!6924214 d!2165092))

(declare-fun b!6924608 () Bool)

(declare-fun e!4167326 () Bool)

(declare-fun e!4167325 () Bool)

(assert (=> b!6924608 (= e!4167326 e!4167325)))

(declare-fun c!1285462 () Bool)

(assert (=> b!6924608 (= c!1285462 (is-EmptyLang!16924 lt!2471263))))

(declare-fun b!6924609 () Bool)

(declare-fun res!2823851 () Bool)

(declare-fun e!4167323 () Bool)

(assert (=> b!6924609 (=> (not res!2823851) (not e!4167323))))

(assert (=> b!6924609 (= res!2823851 (isEmpty!38808 (tail!12933 s!14361)))))

(declare-fun b!6924610 () Bool)

(assert (=> b!6924610 (= e!4167323 (= (head!13881 s!14361) (c!1285404 lt!2471263)))))

(declare-fun b!6924611 () Bool)

(declare-fun res!2823847 () Bool)

(declare-fun e!4167321 () Bool)

(assert (=> b!6924611 (=> res!2823847 e!4167321)))

(assert (=> b!6924611 (= res!2823847 (not (is-ElementMatch!16924 lt!2471263)))))

(assert (=> b!6924611 (= e!4167325 e!4167321)))

(declare-fun d!2165094 () Bool)

(assert (=> d!2165094 e!4167326))

(declare-fun c!1285464 () Bool)

(assert (=> d!2165094 (= c!1285464 (is-EmptyExpr!16924 lt!2471263))))

(declare-fun lt!2471408 () Bool)

(declare-fun e!4167327 () Bool)

(assert (=> d!2165094 (= lt!2471408 e!4167327)))

(declare-fun c!1285463 () Bool)

(assert (=> d!2165094 (= c!1285463 (isEmpty!38808 s!14361))))

(assert (=> d!2165094 (validRegex!8630 lt!2471263)))

(assert (=> d!2165094 (= (matchR!9063 lt!2471263 s!14361) lt!2471408)))

(declare-fun b!6924612 () Bool)

(assert (=> b!6924612 (= e!4167325 (not lt!2471408))))

(declare-fun b!6924613 () Bool)

(declare-fun e!4167324 () Bool)

(assert (=> b!6924613 (= e!4167321 e!4167324)))

(declare-fun res!2823854 () Bool)

(assert (=> b!6924613 (=> (not res!2823854) (not e!4167324))))

(assert (=> b!6924613 (= res!2823854 (not lt!2471408))))

(declare-fun b!6924614 () Bool)

(declare-fun res!2823848 () Bool)

(assert (=> b!6924614 (=> (not res!2823848) (not e!4167323))))

(declare-fun call!629360 () Bool)

(assert (=> b!6924614 (= res!2823848 (not call!629360))))

(declare-fun bm!629355 () Bool)

(assert (=> bm!629355 (= call!629360 (isEmpty!38808 s!14361))))

(declare-fun b!6924615 () Bool)

(declare-fun res!2823852 () Bool)

(assert (=> b!6924615 (=> res!2823852 e!4167321)))

(assert (=> b!6924615 (= res!2823852 e!4167323)))

(declare-fun res!2823853 () Bool)

(assert (=> b!6924615 (=> (not res!2823853) (not e!4167323))))

(assert (=> b!6924615 (= res!2823853 lt!2471408)))

(declare-fun b!6924616 () Bool)

(assert (=> b!6924616 (= e!4167326 (= lt!2471408 call!629360))))

(declare-fun b!6924617 () Bool)

(declare-fun res!2823850 () Bool)

(declare-fun e!4167322 () Bool)

(assert (=> b!6924617 (=> res!2823850 e!4167322)))

(assert (=> b!6924617 (= res!2823850 (not (isEmpty!38808 (tail!12933 s!14361))))))

(declare-fun b!6924618 () Bool)

(assert (=> b!6924618 (= e!4167322 (not (= (head!13881 s!14361) (c!1285404 lt!2471263))))))

(declare-fun b!6924619 () Bool)

(assert (=> b!6924619 (= e!4167327 (matchR!9063 (derivativeStep!5428 lt!2471263 (head!13881 s!14361)) (tail!12933 s!14361)))))

(declare-fun b!6924620 () Bool)

(assert (=> b!6924620 (= e!4167324 e!4167322)))

(declare-fun res!2823849 () Bool)

(assert (=> b!6924620 (=> res!2823849 e!4167322)))

(assert (=> b!6924620 (= res!2823849 call!629360)))

(declare-fun b!6924621 () Bool)

(assert (=> b!6924621 (= e!4167327 (nullable!6753 lt!2471263))))

(assert (= (and d!2165094 c!1285463) b!6924621))

(assert (= (and d!2165094 (not c!1285463)) b!6924619))

(assert (= (and d!2165094 c!1285464) b!6924616))

(assert (= (and d!2165094 (not c!1285464)) b!6924608))

(assert (= (and b!6924608 c!1285462) b!6924612))

(assert (= (and b!6924608 (not c!1285462)) b!6924611))

(assert (= (and b!6924611 (not res!2823847)) b!6924615))

(assert (= (and b!6924615 res!2823853) b!6924614))

(assert (= (and b!6924614 res!2823848) b!6924609))

(assert (= (and b!6924609 res!2823851) b!6924610))

(assert (= (and b!6924615 (not res!2823852)) b!6924613))

(assert (= (and b!6924613 res!2823854) b!6924620))

(assert (= (and b!6924620 (not res!2823849)) b!6924617))

(assert (= (and b!6924617 (not res!2823850)) b!6924618))

(assert (= (or b!6924616 b!6924620 b!6924614) bm!629355))

(declare-fun m!7633694 () Bool)

(assert (=> b!6924621 m!7633694))

(declare-fun m!7633696 () Bool)

(assert (=> b!6924618 m!7633696))

(declare-fun m!7633698 () Bool)

(assert (=> d!2165094 m!7633698))

(declare-fun m!7633700 () Bool)

(assert (=> d!2165094 m!7633700))

(assert (=> b!6924610 m!7633696))

(declare-fun m!7633702 () Bool)

(assert (=> b!6924609 m!7633702))

(assert (=> b!6924609 m!7633702))

(declare-fun m!7633704 () Bool)

(assert (=> b!6924609 m!7633704))

(assert (=> b!6924617 m!7633702))

(assert (=> b!6924617 m!7633702))

(assert (=> b!6924617 m!7633704))

(assert (=> b!6924619 m!7633696))

(assert (=> b!6924619 m!7633696))

(declare-fun m!7633706 () Bool)

(assert (=> b!6924619 m!7633706))

(assert (=> b!6924619 m!7633702))

(assert (=> b!6924619 m!7633706))

(assert (=> b!6924619 m!7633702))

(declare-fun m!7633708 () Bool)

(assert (=> b!6924619 m!7633708))

(assert (=> bm!629355 m!7633698))

(assert (=> b!6924218 d!2165094))

(declare-fun d!2165096 () Bool)

(assert (=> d!2165096 (= (matchR!9063 lt!2471273 s!14361) (matchRSpec!3981 lt!2471273 s!14361))))

(declare-fun lt!2471409 () Unit!160572)

(assert (=> d!2165096 (= lt!2471409 (choose!51562 lt!2471273 s!14361))))

(assert (=> d!2165096 (validRegex!8630 lt!2471273)))

(assert (=> d!2165096 (= (mainMatchTheorem!3981 lt!2471273 s!14361) lt!2471409)))

(declare-fun bs!1848184 () Bool)

(assert (= bs!1848184 d!2165096))

(assert (=> bs!1848184 m!7633312))

(assert (=> bs!1848184 m!7633306))

(declare-fun m!7633710 () Bool)

(assert (=> bs!1848184 m!7633710))

(declare-fun m!7633712 () Bool)

(assert (=> bs!1848184 m!7633712))

(assert (=> b!6924218 d!2165096))

(declare-fun bs!1848185 () Bool)

(declare-fun b!6924650 () Bool)

(assert (= bs!1848185 (and b!6924650 d!2165060)))

(declare-fun lambda!393817 () Int)

(assert (=> bs!1848185 (not (= lambda!393817 lambda!393807))))

(declare-fun bs!1848186 () Bool)

(assert (= bs!1848186 (and b!6924650 d!2165084)))

(assert (=> bs!1848186 (not (= lambda!393817 lambda!393815))))

(declare-fun bs!1848187 () Bool)

(assert (= bs!1848187 (and b!6924650 d!2165054)))

(assert (=> bs!1848187 (not (= lambda!393817 lambda!393804))))

(declare-fun bs!1848188 () Bool)

(assert (= bs!1848188 (and b!6924650 b!6924215)))

(assert (=> bs!1848188 (not (= lambda!393817 lambda!393772))))

(declare-fun bs!1848189 () Bool)

(assert (= bs!1848189 (and b!6924650 b!6924197)))

(assert (=> bs!1848189 (not (= lambda!393817 lambda!393769))))

(declare-fun bs!1848190 () Bool)

(assert (= bs!1848190 (and b!6924650 d!2165072)))

(assert (=> bs!1848190 (not (= lambda!393817 lambda!393808))))

(assert (=> bs!1848188 (not (= lambda!393817 lambda!393771))))

(declare-fun bs!1848191 () Bool)

(assert (= bs!1848191 (and b!6924650 b!6924204)))

(assert (=> bs!1848191 (not (= lambda!393817 lambda!393774))))

(assert (=> bs!1848191 (not (= lambda!393817 lambda!393773))))

(assert (=> bs!1848189 (not (= lambda!393817 lambda!393770))))

(declare-fun bs!1848192 () Bool)

(assert (= bs!1848192 (and b!6924650 b!6924554)))

(assert (=> bs!1848192 (not (= lambda!393817 lambda!393814))))

(assert (=> bs!1848187 (not (= lambda!393817 lambda!393803))))

(declare-fun bs!1848193 () Bool)

(assert (= bs!1848193 (and b!6924650 b!6924563)))

(assert (=> bs!1848193 (= (and (= s!14361 lt!2471255) (= (reg!17253 lt!2471263) (reg!17253 lt!2471249)) (= lt!2471263 lt!2471249)) (= lambda!393817 lambda!393813))))

(assert (=> bs!1848186 (not (= lambda!393817 lambda!393816))))

(assert (=> b!6924650 true))

(assert (=> b!6924650 true))

(declare-fun bs!1848194 () Bool)

(declare-fun b!6924641 () Bool)

(assert (= bs!1848194 (and b!6924641 d!2165060)))

(declare-fun lambda!393819 () Int)

(assert (=> bs!1848194 (not (= lambda!393819 lambda!393807))))

(declare-fun bs!1848195 () Bool)

(assert (= bs!1848195 (and b!6924641 d!2165084)))

(assert (=> bs!1848195 (not (= lambda!393819 lambda!393815))))

(declare-fun bs!1848196 () Bool)

(assert (= bs!1848196 (and b!6924641 d!2165054)))

(assert (=> bs!1848196 (= (and (= s!14361 (_1!37084 lt!2471259)) (= (regOne!34360 lt!2471263) r1!6342) (= (regTwo!34360 lt!2471263) r2!6280)) (= lambda!393819 lambda!393804))))

(declare-fun bs!1848197 () Bool)

(assert (= bs!1848197 (and b!6924641 b!6924215)))

(assert (=> bs!1848197 (= (and (= s!14361 (_1!37084 lt!2471259)) (= (regOne!34360 lt!2471263) r1!6342) (= (regTwo!34360 lt!2471263) r2!6280)) (= lambda!393819 lambda!393772))))

(declare-fun bs!1848198 () Bool)

(assert (= bs!1848198 (and b!6924641 b!6924197)))

(assert (=> bs!1848198 (not (= lambda!393819 lambda!393769))))

(declare-fun bs!1848199 () Bool)

(assert (= bs!1848199 (and b!6924641 d!2165072)))

(assert (=> bs!1848199 (not (= lambda!393819 lambda!393808))))

(assert (=> bs!1848197 (not (= lambda!393819 lambda!393771))))

(declare-fun bs!1848200 () Bool)

(assert (= bs!1848200 (and b!6924641 b!6924204)))

(assert (=> bs!1848200 (= (and (= s!14361 lt!2471255) (= (regOne!34360 lt!2471263) r2!6280) (= (regTwo!34360 lt!2471263) r3!135)) (= lambda!393819 lambda!393774))))

(declare-fun bs!1848201 () Bool)

(assert (= bs!1848201 (and b!6924641 b!6924650)))

(assert (=> bs!1848201 (not (= lambda!393819 lambda!393817))))

(assert (=> bs!1848200 (not (= lambda!393819 lambda!393773))))

(assert (=> bs!1848198 (= (and (= (regOne!34360 lt!2471263) lt!2471254) (= (regTwo!34360 lt!2471263) r3!135)) (= lambda!393819 lambda!393770))))

(declare-fun bs!1848202 () Bool)

(assert (= bs!1848202 (and b!6924641 b!6924554)))

(assert (=> bs!1848202 (= (and (= s!14361 lt!2471255) (= (regOne!34360 lt!2471263) (regOne!34360 lt!2471249)) (= (regTwo!34360 lt!2471263) (regTwo!34360 lt!2471249))) (= lambda!393819 lambda!393814))))

(assert (=> bs!1848196 (not (= lambda!393819 lambda!393803))))

(declare-fun bs!1848203 () Bool)

(assert (= bs!1848203 (and b!6924641 b!6924563)))

(assert (=> bs!1848203 (not (= lambda!393819 lambda!393813))))

(assert (=> bs!1848195 (= (and (= s!14361 lt!2471255) (= (regOne!34360 lt!2471263) r2!6280) (= (regTwo!34360 lt!2471263) r3!135)) (= lambda!393819 lambda!393816))))

(assert (=> b!6924641 true))

(assert (=> b!6924641 true))

(declare-fun bm!629356 () Bool)

(declare-fun call!629361 () Bool)

(assert (=> bm!629356 (= call!629361 (isEmpty!38808 s!14361))))

(declare-fun b!6924640 () Bool)

(declare-fun res!2823862 () Bool)

(declare-fun e!4167345 () Bool)

(assert (=> b!6924640 (=> res!2823862 e!4167345)))

(assert (=> b!6924640 (= res!2823862 call!629361)))

(declare-fun e!4167344 () Bool)

(assert (=> b!6924640 (= e!4167344 e!4167345)))

(declare-fun call!629362 () Bool)

(assert (=> b!6924641 (= e!4167344 call!629362)))

(declare-fun b!6924642 () Bool)

(declare-fun e!4167342 () Bool)

(assert (=> b!6924642 (= e!4167342 (= s!14361 (Cons!66553 (c!1285404 lt!2471263) Nil!66553)))))

(declare-fun b!6924643 () Bool)

(declare-fun e!4167341 () Bool)

(declare-fun e!4167346 () Bool)

(assert (=> b!6924643 (= e!4167341 e!4167346)))

(declare-fun res!2823861 () Bool)

(assert (=> b!6924643 (= res!2823861 (not (is-EmptyLang!16924 lt!2471263)))))

(assert (=> b!6924643 (=> (not res!2823861) (not e!4167346))))

(declare-fun b!6924644 () Bool)

(declare-fun e!4167343 () Bool)

(assert (=> b!6924644 (= e!4167343 (matchRSpec!3981 (regTwo!34361 lt!2471263) s!14361))))

(declare-fun b!6924645 () Bool)

(declare-fun c!1285473 () Bool)

(assert (=> b!6924645 (= c!1285473 (is-ElementMatch!16924 lt!2471263))))

(assert (=> b!6924645 (= e!4167346 e!4167342)))

(declare-fun b!6924646 () Bool)

(declare-fun e!4167340 () Bool)

(assert (=> b!6924646 (= e!4167340 e!4167343)))

(declare-fun res!2823863 () Bool)

(assert (=> b!6924646 (= res!2823863 (matchRSpec!3981 (regOne!34361 lt!2471263) s!14361))))

(assert (=> b!6924646 (=> res!2823863 e!4167343)))

(declare-fun b!6924647 () Bool)

(assert (=> b!6924647 (= e!4167340 e!4167344)))

(declare-fun c!1285472 () Bool)

(assert (=> b!6924647 (= c!1285472 (is-Star!16924 lt!2471263))))

(declare-fun d!2165098 () Bool)

(declare-fun c!1285471 () Bool)

(assert (=> d!2165098 (= c!1285471 (is-EmptyExpr!16924 lt!2471263))))

(assert (=> d!2165098 (= (matchRSpec!3981 lt!2471263 s!14361) e!4167341)))

(declare-fun b!6924648 () Bool)

(declare-fun c!1285474 () Bool)

(assert (=> b!6924648 (= c!1285474 (is-Union!16924 lt!2471263))))

(assert (=> b!6924648 (= e!4167342 e!4167340)))

(declare-fun b!6924649 () Bool)

(assert (=> b!6924649 (= e!4167341 call!629361)))

(assert (=> b!6924650 (= e!4167345 call!629362)))

(declare-fun bm!629357 () Bool)

(assert (=> bm!629357 (= call!629362 (Exists!3926 (ite c!1285472 lambda!393817 lambda!393819)))))

(assert (= (and d!2165098 c!1285471) b!6924649))

(assert (= (and d!2165098 (not c!1285471)) b!6924643))

(assert (= (and b!6924643 res!2823861) b!6924645))

(assert (= (and b!6924645 c!1285473) b!6924642))

(assert (= (and b!6924645 (not c!1285473)) b!6924648))

(assert (= (and b!6924648 c!1285474) b!6924646))

(assert (= (and b!6924648 (not c!1285474)) b!6924647))

(assert (= (and b!6924646 (not res!2823863)) b!6924644))

(assert (= (and b!6924647 c!1285472) b!6924640))

(assert (= (and b!6924647 (not c!1285472)) b!6924641))

(assert (= (and b!6924640 (not res!2823862)) b!6924650))

(assert (= (or b!6924650 b!6924641) bm!629357))

(assert (= (or b!6924649 b!6924640) bm!629356))

(assert (=> bm!629356 m!7633698))

(declare-fun m!7633714 () Bool)

(assert (=> b!6924644 m!7633714))

(declare-fun m!7633716 () Bool)

(assert (=> b!6924646 m!7633716))

(declare-fun m!7633718 () Bool)

(assert (=> bm!629357 m!7633718))

(assert (=> b!6924218 d!2165098))

(declare-fun b!6924657 () Bool)

(declare-fun e!4167354 () Bool)

(declare-fun e!4167353 () Bool)

(assert (=> b!6924657 (= e!4167354 e!4167353)))

(declare-fun c!1285475 () Bool)

(assert (=> b!6924657 (= c!1285475 (is-EmptyLang!16924 lt!2471273))))

(declare-fun b!6924658 () Bool)

(declare-fun res!2823874 () Bool)

(declare-fun e!4167351 () Bool)

(assert (=> b!6924658 (=> (not res!2823874) (not e!4167351))))

(assert (=> b!6924658 (= res!2823874 (isEmpty!38808 (tail!12933 s!14361)))))

(declare-fun b!6924659 () Bool)

(assert (=> b!6924659 (= e!4167351 (= (head!13881 s!14361) (c!1285404 lt!2471273)))))

(declare-fun b!6924660 () Bool)

(declare-fun res!2823870 () Bool)

(declare-fun e!4167349 () Bool)

(assert (=> b!6924660 (=> res!2823870 e!4167349)))

(assert (=> b!6924660 (= res!2823870 (not (is-ElementMatch!16924 lt!2471273)))))

(assert (=> b!6924660 (= e!4167353 e!4167349)))

(declare-fun d!2165100 () Bool)

(assert (=> d!2165100 e!4167354))

(declare-fun c!1285477 () Bool)

(assert (=> d!2165100 (= c!1285477 (is-EmptyExpr!16924 lt!2471273))))

(declare-fun lt!2471410 () Bool)

(declare-fun e!4167355 () Bool)

(assert (=> d!2165100 (= lt!2471410 e!4167355)))

(declare-fun c!1285476 () Bool)

(assert (=> d!2165100 (= c!1285476 (isEmpty!38808 s!14361))))

(assert (=> d!2165100 (validRegex!8630 lt!2471273)))

(assert (=> d!2165100 (= (matchR!9063 lt!2471273 s!14361) lt!2471410)))

(declare-fun b!6924661 () Bool)

(assert (=> b!6924661 (= e!4167353 (not lt!2471410))))

(declare-fun b!6924662 () Bool)

(declare-fun e!4167352 () Bool)

(assert (=> b!6924662 (= e!4167349 e!4167352)))

(declare-fun res!2823877 () Bool)

(assert (=> b!6924662 (=> (not res!2823877) (not e!4167352))))

(assert (=> b!6924662 (= res!2823877 (not lt!2471410))))

(declare-fun b!6924663 () Bool)

(declare-fun res!2823871 () Bool)

(assert (=> b!6924663 (=> (not res!2823871) (not e!4167351))))

(declare-fun call!629363 () Bool)

(assert (=> b!6924663 (= res!2823871 (not call!629363))))

(declare-fun bm!629358 () Bool)

(assert (=> bm!629358 (= call!629363 (isEmpty!38808 s!14361))))

(declare-fun b!6924664 () Bool)

(declare-fun res!2823875 () Bool)

(assert (=> b!6924664 (=> res!2823875 e!4167349)))

(assert (=> b!6924664 (= res!2823875 e!4167351)))

(declare-fun res!2823876 () Bool)

(assert (=> b!6924664 (=> (not res!2823876) (not e!4167351))))

(assert (=> b!6924664 (= res!2823876 lt!2471410)))

(declare-fun b!6924665 () Bool)

(assert (=> b!6924665 (= e!4167354 (= lt!2471410 call!629363))))

(declare-fun b!6924666 () Bool)

(declare-fun res!2823873 () Bool)

(declare-fun e!4167350 () Bool)

(assert (=> b!6924666 (=> res!2823873 e!4167350)))

(assert (=> b!6924666 (= res!2823873 (not (isEmpty!38808 (tail!12933 s!14361))))))

(declare-fun b!6924667 () Bool)

(assert (=> b!6924667 (= e!4167350 (not (= (head!13881 s!14361) (c!1285404 lt!2471273))))))

(declare-fun b!6924668 () Bool)

(assert (=> b!6924668 (= e!4167355 (matchR!9063 (derivativeStep!5428 lt!2471273 (head!13881 s!14361)) (tail!12933 s!14361)))))

(declare-fun b!6924669 () Bool)

(assert (=> b!6924669 (= e!4167352 e!4167350)))

(declare-fun res!2823872 () Bool)

(assert (=> b!6924669 (=> res!2823872 e!4167350)))

(assert (=> b!6924669 (= res!2823872 call!629363)))

(declare-fun b!6924670 () Bool)

(assert (=> b!6924670 (= e!4167355 (nullable!6753 lt!2471273))))

(assert (= (and d!2165100 c!1285476) b!6924670))

(assert (= (and d!2165100 (not c!1285476)) b!6924668))

(assert (= (and d!2165100 c!1285477) b!6924665))

(assert (= (and d!2165100 (not c!1285477)) b!6924657))

(assert (= (and b!6924657 c!1285475) b!6924661))

(assert (= (and b!6924657 (not c!1285475)) b!6924660))

(assert (= (and b!6924660 (not res!2823870)) b!6924664))

(assert (= (and b!6924664 res!2823876) b!6924663))

(assert (= (and b!6924663 res!2823871) b!6924658))

(assert (= (and b!6924658 res!2823874) b!6924659))

(assert (= (and b!6924664 (not res!2823875)) b!6924662))

(assert (= (and b!6924662 res!2823877) b!6924669))

(assert (= (and b!6924669 (not res!2823872)) b!6924666))

(assert (= (and b!6924666 (not res!2823873)) b!6924667))

(assert (= (or b!6924665 b!6924669 b!6924663) bm!629358))

(declare-fun m!7633720 () Bool)

(assert (=> b!6924670 m!7633720))

(assert (=> b!6924667 m!7633696))

(assert (=> d!2165100 m!7633698))

(assert (=> d!2165100 m!7633712))

(assert (=> b!6924659 m!7633696))

(assert (=> b!6924658 m!7633702))

(assert (=> b!6924658 m!7633702))

(assert (=> b!6924658 m!7633704))

(assert (=> b!6924666 m!7633702))

(assert (=> b!6924666 m!7633702))

(assert (=> b!6924666 m!7633704))

(assert (=> b!6924668 m!7633696))

(assert (=> b!6924668 m!7633696))

(declare-fun m!7633722 () Bool)

(assert (=> b!6924668 m!7633722))

(assert (=> b!6924668 m!7633702))

(assert (=> b!6924668 m!7633722))

(assert (=> b!6924668 m!7633702))

(declare-fun m!7633724 () Bool)

(assert (=> b!6924668 m!7633724))

(assert (=> bm!629358 m!7633698))

(assert (=> b!6924218 d!2165100))

(declare-fun bs!1848204 () Bool)

(declare-fun b!6924681 () Bool)

(assert (= bs!1848204 (and b!6924681 d!2165060)))

(declare-fun lambda!393821 () Int)

(assert (=> bs!1848204 (not (= lambda!393821 lambda!393807))))

(declare-fun bs!1848205 () Bool)

(assert (= bs!1848205 (and b!6924681 d!2165084)))

(assert (=> bs!1848205 (not (= lambda!393821 lambda!393815))))

(declare-fun bs!1848206 () Bool)

(assert (= bs!1848206 (and b!6924681 d!2165054)))

(assert (=> bs!1848206 (not (= lambda!393821 lambda!393804))))

(declare-fun bs!1848207 () Bool)

(assert (= bs!1848207 (and b!6924681 b!6924215)))

(assert (=> bs!1848207 (not (= lambda!393821 lambda!393772))))

(declare-fun bs!1848208 () Bool)

(assert (= bs!1848208 (and b!6924681 b!6924197)))

(assert (=> bs!1848208 (not (= lambda!393821 lambda!393769))))

(declare-fun bs!1848209 () Bool)

(assert (= bs!1848209 (and b!6924681 d!2165072)))

(assert (=> bs!1848209 (not (= lambda!393821 lambda!393808))))

(declare-fun bs!1848210 () Bool)

(assert (= bs!1848210 (and b!6924681 b!6924641)))

(assert (=> bs!1848210 (not (= lambda!393821 lambda!393819))))

(assert (=> bs!1848207 (not (= lambda!393821 lambda!393771))))

(declare-fun bs!1848211 () Bool)

(assert (= bs!1848211 (and b!6924681 b!6924204)))

(assert (=> bs!1848211 (not (= lambda!393821 lambda!393774))))

(declare-fun bs!1848212 () Bool)

(assert (= bs!1848212 (and b!6924681 b!6924650)))

(assert (=> bs!1848212 (= (and (= (reg!17253 lt!2471273) (reg!17253 lt!2471263)) (= lt!2471273 lt!2471263)) (= lambda!393821 lambda!393817))))

(assert (=> bs!1848211 (not (= lambda!393821 lambda!393773))))

(assert (=> bs!1848208 (not (= lambda!393821 lambda!393770))))

(declare-fun bs!1848213 () Bool)

(assert (= bs!1848213 (and b!6924681 b!6924554)))

(assert (=> bs!1848213 (not (= lambda!393821 lambda!393814))))

(assert (=> bs!1848206 (not (= lambda!393821 lambda!393803))))

(declare-fun bs!1848214 () Bool)

(assert (= bs!1848214 (and b!6924681 b!6924563)))

(assert (=> bs!1848214 (= (and (= s!14361 lt!2471255) (= (reg!17253 lt!2471273) (reg!17253 lt!2471249)) (= lt!2471273 lt!2471249)) (= lambda!393821 lambda!393813))))

(assert (=> bs!1848205 (not (= lambda!393821 lambda!393816))))

(assert (=> b!6924681 true))

(assert (=> b!6924681 true))

(declare-fun bs!1848215 () Bool)

(declare-fun b!6924672 () Bool)

(assert (= bs!1848215 (and b!6924672 d!2165060)))

(declare-fun lambda!393824 () Int)

(assert (=> bs!1848215 (not (= lambda!393824 lambda!393807))))

(declare-fun bs!1848216 () Bool)

(assert (= bs!1848216 (and b!6924672 d!2165084)))

(assert (=> bs!1848216 (not (= lambda!393824 lambda!393815))))

(declare-fun bs!1848217 () Bool)

(assert (= bs!1848217 (and b!6924672 d!2165054)))

(assert (=> bs!1848217 (= (and (= s!14361 (_1!37084 lt!2471259)) (= (regOne!34360 lt!2471273) r1!6342) (= (regTwo!34360 lt!2471273) r2!6280)) (= lambda!393824 lambda!393804))))

(declare-fun bs!1848218 () Bool)

(assert (= bs!1848218 (and b!6924672 b!6924215)))

(assert (=> bs!1848218 (= (and (= s!14361 (_1!37084 lt!2471259)) (= (regOne!34360 lt!2471273) r1!6342) (= (regTwo!34360 lt!2471273) r2!6280)) (= lambda!393824 lambda!393772))))

(declare-fun bs!1848219 () Bool)

(assert (= bs!1848219 (and b!6924672 b!6924681)))

(assert (=> bs!1848219 (not (= lambda!393824 lambda!393821))))

(declare-fun bs!1848220 () Bool)

(assert (= bs!1848220 (and b!6924672 b!6924197)))

(assert (=> bs!1848220 (not (= lambda!393824 lambda!393769))))

(declare-fun bs!1848221 () Bool)

(assert (= bs!1848221 (and b!6924672 d!2165072)))

(assert (=> bs!1848221 (not (= lambda!393824 lambda!393808))))

(declare-fun bs!1848222 () Bool)

(assert (= bs!1848222 (and b!6924672 b!6924641)))

(assert (=> bs!1848222 (= (and (= (regOne!34360 lt!2471273) (regOne!34360 lt!2471263)) (= (regTwo!34360 lt!2471273) (regTwo!34360 lt!2471263))) (= lambda!393824 lambda!393819))))

(assert (=> bs!1848218 (not (= lambda!393824 lambda!393771))))

(declare-fun bs!1848223 () Bool)

(assert (= bs!1848223 (and b!6924672 b!6924204)))

(assert (=> bs!1848223 (= (and (= s!14361 lt!2471255) (= (regOne!34360 lt!2471273) r2!6280) (= (regTwo!34360 lt!2471273) r3!135)) (= lambda!393824 lambda!393774))))

(declare-fun bs!1848224 () Bool)

(assert (= bs!1848224 (and b!6924672 b!6924650)))

(assert (=> bs!1848224 (not (= lambda!393824 lambda!393817))))

(assert (=> bs!1848223 (not (= lambda!393824 lambda!393773))))

(assert (=> bs!1848220 (= (and (= (regOne!34360 lt!2471273) lt!2471254) (= (regTwo!34360 lt!2471273) r3!135)) (= lambda!393824 lambda!393770))))

(declare-fun bs!1848225 () Bool)

(assert (= bs!1848225 (and b!6924672 b!6924554)))

(assert (=> bs!1848225 (= (and (= s!14361 lt!2471255) (= (regOne!34360 lt!2471273) (regOne!34360 lt!2471249)) (= (regTwo!34360 lt!2471273) (regTwo!34360 lt!2471249))) (= lambda!393824 lambda!393814))))

(assert (=> bs!1848217 (not (= lambda!393824 lambda!393803))))

(declare-fun bs!1848226 () Bool)

(assert (= bs!1848226 (and b!6924672 b!6924563)))

(assert (=> bs!1848226 (not (= lambda!393824 lambda!393813))))

(assert (=> bs!1848216 (= (and (= s!14361 lt!2471255) (= (regOne!34360 lt!2471273) r2!6280) (= (regTwo!34360 lt!2471273) r3!135)) (= lambda!393824 lambda!393816))))

(assert (=> b!6924672 true))

(assert (=> b!6924672 true))

(declare-fun bm!629359 () Bool)

(declare-fun call!629364 () Bool)

(assert (=> bm!629359 (= call!629364 (isEmpty!38808 s!14361))))

(declare-fun b!6924671 () Bool)

(declare-fun res!2823879 () Bool)

(declare-fun e!4167361 () Bool)

(assert (=> b!6924671 (=> res!2823879 e!4167361)))

(assert (=> b!6924671 (= res!2823879 call!629364)))

(declare-fun e!4167360 () Bool)

(assert (=> b!6924671 (= e!4167360 e!4167361)))

(declare-fun call!629365 () Bool)

(assert (=> b!6924672 (= e!4167360 call!629365)))

(declare-fun b!6924673 () Bool)

(declare-fun e!4167358 () Bool)

(assert (=> b!6924673 (= e!4167358 (= s!14361 (Cons!66553 (c!1285404 lt!2471273) Nil!66553)))))

(declare-fun b!6924674 () Bool)

(declare-fun e!4167357 () Bool)

(declare-fun e!4167362 () Bool)

(assert (=> b!6924674 (= e!4167357 e!4167362)))

(declare-fun res!2823878 () Bool)

(assert (=> b!6924674 (= res!2823878 (not (is-EmptyLang!16924 lt!2471273)))))

(assert (=> b!6924674 (=> (not res!2823878) (not e!4167362))))

(declare-fun b!6924675 () Bool)

(declare-fun e!4167359 () Bool)

(assert (=> b!6924675 (= e!4167359 (matchRSpec!3981 (regTwo!34361 lt!2471273) s!14361))))

(declare-fun b!6924676 () Bool)

(declare-fun c!1285480 () Bool)

(assert (=> b!6924676 (= c!1285480 (is-ElementMatch!16924 lt!2471273))))

(assert (=> b!6924676 (= e!4167362 e!4167358)))

(declare-fun b!6924677 () Bool)

(declare-fun e!4167356 () Bool)

(assert (=> b!6924677 (= e!4167356 e!4167359)))

(declare-fun res!2823880 () Bool)

(assert (=> b!6924677 (= res!2823880 (matchRSpec!3981 (regOne!34361 lt!2471273) s!14361))))

(assert (=> b!6924677 (=> res!2823880 e!4167359)))

(declare-fun b!6924678 () Bool)

(assert (=> b!6924678 (= e!4167356 e!4167360)))

(declare-fun c!1285479 () Bool)

(assert (=> b!6924678 (= c!1285479 (is-Star!16924 lt!2471273))))

(declare-fun d!2165102 () Bool)

(declare-fun c!1285478 () Bool)

(assert (=> d!2165102 (= c!1285478 (is-EmptyExpr!16924 lt!2471273))))

(assert (=> d!2165102 (= (matchRSpec!3981 lt!2471273 s!14361) e!4167357)))

(declare-fun b!6924679 () Bool)

(declare-fun c!1285481 () Bool)

(assert (=> b!6924679 (= c!1285481 (is-Union!16924 lt!2471273))))

(assert (=> b!6924679 (= e!4167358 e!4167356)))

(declare-fun b!6924680 () Bool)

(assert (=> b!6924680 (= e!4167357 call!629364)))

(assert (=> b!6924681 (= e!4167361 call!629365)))

(declare-fun bm!629360 () Bool)

(assert (=> bm!629360 (= call!629365 (Exists!3926 (ite c!1285479 lambda!393821 lambda!393824)))))

(assert (= (and d!2165102 c!1285478) b!6924680))

(assert (= (and d!2165102 (not c!1285478)) b!6924674))

(assert (= (and b!6924674 res!2823878) b!6924676))

(assert (= (and b!6924676 c!1285480) b!6924673))

(assert (= (and b!6924676 (not c!1285480)) b!6924679))

(assert (= (and b!6924679 c!1285481) b!6924677))

(assert (= (and b!6924679 (not c!1285481)) b!6924678))

(assert (= (and b!6924677 (not res!2823880)) b!6924675))

(assert (= (and b!6924678 c!1285479) b!6924671))

(assert (= (and b!6924678 (not c!1285479)) b!6924672))

(assert (= (and b!6924671 (not res!2823879)) b!6924681))

(assert (= (or b!6924681 b!6924672) bm!629360))

(assert (= (or b!6924680 b!6924671) bm!629359))

(assert (=> bm!629359 m!7633698))

(declare-fun m!7633726 () Bool)

(assert (=> b!6924675 m!7633726))

(declare-fun m!7633728 () Bool)

(assert (=> b!6924677 m!7633728))

(declare-fun m!7633730 () Bool)

(assert (=> bm!629360 m!7633730))

(assert (=> b!6924218 d!2165102))

(declare-fun d!2165104 () Bool)

(assert (=> d!2165104 (= (matchR!9063 lt!2471263 s!14361) (matchRSpec!3981 lt!2471263 s!14361))))

(declare-fun lt!2471411 () Unit!160572)

(assert (=> d!2165104 (= lt!2471411 (choose!51562 lt!2471263 s!14361))))

(assert (=> d!2165104 (validRegex!8630 lt!2471263)))

(assert (=> d!2165104 (= (mainMatchTheorem!3981 lt!2471263 s!14361) lt!2471411)))

(declare-fun bs!1848227 () Bool)

(assert (= bs!1848227 d!2165104))

(assert (=> bs!1848227 m!7633304))

(assert (=> bs!1848227 m!7633302))

(declare-fun m!7633732 () Bool)

(assert (=> bs!1848227 m!7633732))

(assert (=> bs!1848227 m!7633700))

(assert (=> b!6924218 d!2165104))

(declare-fun d!2165106 () Bool)

(declare-fun e!4167365 () Bool)

(assert (=> d!2165106 e!4167365))

(declare-fun res!2823886 () Bool)

(assert (=> d!2165106 (=> (not res!2823886) (not e!4167365))))

(declare-fun lt!2471412 () List!66677)

(assert (=> d!2165106 (= res!2823886 (= (content!13081 lt!2471412) (set.union (content!13081 (_1!37084 lt!2471250)) (content!13081 lt!2471255))))))

(declare-fun e!4167366 () List!66677)

(assert (=> d!2165106 (= lt!2471412 e!4167366)))

(declare-fun c!1285482 () Bool)

(assert (=> d!2165106 (= c!1285482 (is-Nil!66553 (_1!37084 lt!2471250)))))

(assert (=> d!2165106 (= (++!14967 (_1!37084 lt!2471250) lt!2471255) lt!2471412)))

(declare-fun b!6924686 () Bool)

(assert (=> b!6924686 (= e!4167366 lt!2471255)))

(declare-fun b!6924687 () Bool)

(assert (=> b!6924687 (= e!4167366 (Cons!66553 (h!73001 (_1!37084 lt!2471250)) (++!14967 (t!380420 (_1!37084 lt!2471250)) lt!2471255)))))

(declare-fun b!6924688 () Bool)

(declare-fun res!2823885 () Bool)

(assert (=> b!6924688 (=> (not res!2823885) (not e!4167365))))

(assert (=> b!6924688 (= res!2823885 (= (size!40778 lt!2471412) (+ (size!40778 (_1!37084 lt!2471250)) (size!40778 lt!2471255))))))

(declare-fun b!6924689 () Bool)

(assert (=> b!6924689 (= e!4167365 (or (not (= lt!2471255 Nil!66553)) (= lt!2471412 (_1!37084 lt!2471250))))))

(assert (= (and d!2165106 c!1285482) b!6924686))

(assert (= (and d!2165106 (not c!1285482)) b!6924687))

(assert (= (and d!2165106 res!2823886) b!6924688))

(assert (= (and b!6924688 res!2823885) b!6924689))

(declare-fun m!7633734 () Bool)

(assert (=> d!2165106 m!7633734))

(declare-fun m!7633736 () Bool)

(assert (=> d!2165106 m!7633736))

(declare-fun m!7633738 () Bool)

(assert (=> d!2165106 m!7633738))

(declare-fun m!7633740 () Bool)

(assert (=> b!6924687 m!7633740))

(declare-fun m!7633742 () Bool)

(assert (=> b!6924688 m!7633742))

(declare-fun m!7633744 () Bool)

(assert (=> b!6924688 m!7633744))

(declare-fun m!7633746 () Bool)

(assert (=> b!6924688 m!7633746))

(assert (=> b!6924196 d!2165106))

(declare-fun d!2165108 () Bool)

(assert (=> d!2165108 (= (++!14967 (++!14967 (_1!37084 lt!2471250) (_2!37084 lt!2471250)) (_2!37084 lt!2471259)) (++!14967 (_1!37084 lt!2471250) (++!14967 (_2!37084 lt!2471250) (_2!37084 lt!2471259))))))

(declare-fun lt!2471415 () Unit!160572)

(declare-fun choose!51564 (List!66677 List!66677 List!66677) Unit!160572)

(assert (=> d!2165108 (= lt!2471415 (choose!51564 (_1!37084 lt!2471250) (_2!37084 lt!2471250) (_2!37084 lt!2471259)))))

(assert (=> d!2165108 (= (lemmaConcatAssociativity!3015 (_1!37084 lt!2471250) (_2!37084 lt!2471250) (_2!37084 lt!2471259)) lt!2471415)))

(declare-fun bs!1848228 () Bool)

(assert (= bs!1848228 d!2165108))

(assert (=> bs!1848228 m!7633356))

(assert (=> bs!1848228 m!7633388))

(declare-fun m!7633748 () Bool)

(assert (=> bs!1848228 m!7633748))

(assert (=> bs!1848228 m!7633356))

(declare-fun m!7633750 () Bool)

(assert (=> bs!1848228 m!7633750))

(assert (=> bs!1848228 m!7633388))

(assert (=> bs!1848228 m!7633390))

(assert (=> b!6924196 d!2165108))

(declare-fun b!6924690 () Bool)

(declare-fun res!2823891 () Bool)

(declare-fun e!4167373 () Bool)

(assert (=> b!6924690 (=> (not res!2823891) (not e!4167373))))

(declare-fun call!629370 () Bool)

(assert (=> b!6924690 (= res!2823891 call!629370)))

(declare-fun e!4167370 () Bool)

(assert (=> b!6924690 (= e!4167370 e!4167373)))

(declare-fun bm!629365 () Bool)

(declare-fun call!629372 () Bool)

(assert (=> bm!629365 (= call!629370 call!629372)))

(declare-fun b!6924691 () Bool)

(declare-fun e!4167368 () Bool)

(declare-fun e!4167369 () Bool)

(assert (=> b!6924691 (= e!4167368 e!4167369)))

(declare-fun res!2823887 () Bool)

(assert (=> b!6924691 (= res!2823887 (not (nullable!6753 (reg!17253 r3!135))))))

(assert (=> b!6924691 (=> (not res!2823887) (not e!4167369))))

(declare-fun bm!629366 () Bool)

(declare-fun call!629371 () Bool)

(declare-fun c!1285483 () Bool)

(assert (=> bm!629366 (= call!629371 (validRegex!8630 (ite c!1285483 (regTwo!34361 r3!135) (regOne!34360 r3!135))))))

(declare-fun bm!629367 () Bool)

(declare-fun c!1285484 () Bool)

(assert (=> bm!629367 (= call!629372 (validRegex!8630 (ite c!1285484 (reg!17253 r3!135) (ite c!1285483 (regOne!34361 r3!135) (regTwo!34360 r3!135)))))))

(declare-fun b!6924692 () Bool)

(declare-fun e!4167367 () Bool)

(assert (=> b!6924692 (= e!4167367 e!4167368)))

(assert (=> b!6924692 (= c!1285484 (is-Star!16924 r3!135))))

(declare-fun b!6924693 () Bool)

(declare-fun res!2823890 () Bool)

(declare-fun e!4167372 () Bool)

(assert (=> b!6924693 (=> res!2823890 e!4167372)))

(assert (=> b!6924693 (= res!2823890 (not (is-Concat!25769 r3!135)))))

(assert (=> b!6924693 (= e!4167370 e!4167372)))

(declare-fun b!6924695 () Bool)

(declare-fun e!4167371 () Bool)

(assert (=> b!6924695 (= e!4167371 call!629370)))

(declare-fun b!6924696 () Bool)

(assert (=> b!6924696 (= e!4167373 call!629371)))

(declare-fun b!6924697 () Bool)

(assert (=> b!6924697 (= e!4167372 e!4167371)))

(declare-fun res!2823889 () Bool)

(assert (=> b!6924697 (=> (not res!2823889) (not e!4167371))))

(assert (=> b!6924697 (= res!2823889 call!629371)))

(declare-fun b!6924698 () Bool)

(assert (=> b!6924698 (= e!4167369 call!629372)))

(declare-fun d!2165110 () Bool)

(declare-fun res!2823888 () Bool)

(assert (=> d!2165110 (=> res!2823888 e!4167367)))

(assert (=> d!2165110 (= res!2823888 (is-ElementMatch!16924 r3!135))))

(assert (=> d!2165110 (= (validRegex!8630 r3!135) e!4167367)))

(declare-fun b!6924694 () Bool)

(assert (=> b!6924694 (= e!4167368 e!4167370)))

(assert (=> b!6924694 (= c!1285483 (is-Union!16924 r3!135))))

(assert (= (and d!2165110 (not res!2823888)) b!6924692))

(assert (= (and b!6924692 c!1285484) b!6924691))

(assert (= (and b!6924692 (not c!1285484)) b!6924694))

(assert (= (and b!6924691 res!2823887) b!6924698))

(assert (= (and b!6924694 c!1285483) b!6924690))

(assert (= (and b!6924694 (not c!1285483)) b!6924693))

(assert (= (and b!6924690 res!2823891) b!6924696))

(assert (= (and b!6924693 (not res!2823890)) b!6924697))

(assert (= (and b!6924697 res!2823889) b!6924695))

(assert (= (or b!6924690 b!6924695) bm!629365))

(assert (= (or b!6924696 b!6924697) bm!629366))

(assert (= (or b!6924698 bm!629365) bm!629367))

(declare-fun m!7633752 () Bool)

(assert (=> b!6924691 m!7633752))

(declare-fun m!7633754 () Bool)

(assert (=> bm!629366 m!7633754))

(declare-fun m!7633756 () Bool)

(assert (=> bm!629367 m!7633756))

(assert (=> b!6924205 d!2165110))

(declare-fun bs!1848229 () Bool)

(declare-fun b!6924709 () Bool)

(assert (= bs!1848229 (and b!6924709 d!2165060)))

(declare-fun lambda!393825 () Int)

(assert (=> bs!1848229 (not (= lambda!393825 lambda!393807))))

(declare-fun bs!1848230 () Bool)

(assert (= bs!1848230 (and b!6924709 d!2165084)))

(assert (=> bs!1848230 (not (= lambda!393825 lambda!393815))))

(declare-fun bs!1848231 () Bool)

(assert (= bs!1848231 (and b!6924709 d!2165054)))

(assert (=> bs!1848231 (not (= lambda!393825 lambda!393804))))

(declare-fun bs!1848232 () Bool)

(assert (= bs!1848232 (and b!6924709 b!6924215)))

(assert (=> bs!1848232 (not (= lambda!393825 lambda!393772))))

(declare-fun bs!1848233 () Bool)

(assert (= bs!1848233 (and b!6924709 b!6924681)))

(assert (=> bs!1848233 (= (and (= (_1!37084 lt!2471250) s!14361) (= (reg!17253 r1!6342) (reg!17253 lt!2471273)) (= r1!6342 lt!2471273)) (= lambda!393825 lambda!393821))))

(declare-fun bs!1848234 () Bool)

(assert (= bs!1848234 (and b!6924709 b!6924197)))

(assert (=> bs!1848234 (not (= lambda!393825 lambda!393769))))

(declare-fun bs!1848235 () Bool)

(assert (= bs!1848235 (and b!6924709 d!2165072)))

(assert (=> bs!1848235 (not (= lambda!393825 lambda!393808))))

(declare-fun bs!1848236 () Bool)

(assert (= bs!1848236 (and b!6924709 b!6924672)))

(assert (=> bs!1848236 (not (= lambda!393825 lambda!393824))))

(declare-fun bs!1848237 () Bool)

(assert (= bs!1848237 (and b!6924709 b!6924641)))

(assert (=> bs!1848237 (not (= lambda!393825 lambda!393819))))

(assert (=> bs!1848232 (not (= lambda!393825 lambda!393771))))

(declare-fun bs!1848238 () Bool)

(assert (= bs!1848238 (and b!6924709 b!6924204)))

(assert (=> bs!1848238 (not (= lambda!393825 lambda!393774))))

(declare-fun bs!1848239 () Bool)

(assert (= bs!1848239 (and b!6924709 b!6924650)))

(assert (=> bs!1848239 (= (and (= (_1!37084 lt!2471250) s!14361) (= (reg!17253 r1!6342) (reg!17253 lt!2471263)) (= r1!6342 lt!2471263)) (= lambda!393825 lambda!393817))))

(assert (=> bs!1848238 (not (= lambda!393825 lambda!393773))))

(assert (=> bs!1848234 (not (= lambda!393825 lambda!393770))))

(declare-fun bs!1848240 () Bool)

(assert (= bs!1848240 (and b!6924709 b!6924554)))

(assert (=> bs!1848240 (not (= lambda!393825 lambda!393814))))

(assert (=> bs!1848231 (not (= lambda!393825 lambda!393803))))

(declare-fun bs!1848241 () Bool)

(assert (= bs!1848241 (and b!6924709 b!6924563)))

(assert (=> bs!1848241 (= (and (= (_1!37084 lt!2471250) lt!2471255) (= (reg!17253 r1!6342) (reg!17253 lt!2471249)) (= r1!6342 lt!2471249)) (= lambda!393825 lambda!393813))))

(assert (=> bs!1848230 (not (= lambda!393825 lambda!393816))))

(assert (=> b!6924709 true))

(assert (=> b!6924709 true))

(declare-fun bs!1848242 () Bool)

(declare-fun b!6924700 () Bool)

(assert (= bs!1848242 (and b!6924700 d!2165060)))

(declare-fun lambda!393826 () Int)

(assert (=> bs!1848242 (not (= lambda!393826 lambda!393807))))

(declare-fun bs!1848243 () Bool)

(assert (= bs!1848243 (and b!6924700 d!2165084)))

(assert (=> bs!1848243 (not (= lambda!393826 lambda!393815))))

(declare-fun bs!1848244 () Bool)

(assert (= bs!1848244 (and b!6924700 d!2165054)))

(assert (=> bs!1848244 (= (and (= (_1!37084 lt!2471250) (_1!37084 lt!2471259)) (= (regOne!34360 r1!6342) r1!6342) (= (regTwo!34360 r1!6342) r2!6280)) (= lambda!393826 lambda!393804))))

(declare-fun bs!1848245 () Bool)

(assert (= bs!1848245 (and b!6924700 b!6924215)))

(assert (=> bs!1848245 (= (and (= (_1!37084 lt!2471250) (_1!37084 lt!2471259)) (= (regOne!34360 r1!6342) r1!6342) (= (regTwo!34360 r1!6342) r2!6280)) (= lambda!393826 lambda!393772))))

(declare-fun bs!1848246 () Bool)

(assert (= bs!1848246 (and b!6924700 b!6924681)))

(assert (=> bs!1848246 (not (= lambda!393826 lambda!393821))))

(declare-fun bs!1848247 () Bool)

(assert (= bs!1848247 (and b!6924700 b!6924197)))

(assert (=> bs!1848247 (not (= lambda!393826 lambda!393769))))

(declare-fun bs!1848248 () Bool)

(assert (= bs!1848248 (and b!6924700 d!2165072)))

(assert (=> bs!1848248 (not (= lambda!393826 lambda!393808))))

(declare-fun bs!1848249 () Bool)

(assert (= bs!1848249 (and b!6924700 b!6924672)))

(assert (=> bs!1848249 (= (and (= (_1!37084 lt!2471250) s!14361) (= (regOne!34360 r1!6342) (regOne!34360 lt!2471273)) (= (regTwo!34360 r1!6342) (regTwo!34360 lt!2471273))) (= lambda!393826 lambda!393824))))

(declare-fun bs!1848250 () Bool)

(assert (= bs!1848250 (and b!6924700 b!6924641)))

(assert (=> bs!1848250 (= (and (= (_1!37084 lt!2471250) s!14361) (= (regOne!34360 r1!6342) (regOne!34360 lt!2471263)) (= (regTwo!34360 r1!6342) (regTwo!34360 lt!2471263))) (= lambda!393826 lambda!393819))))

(assert (=> bs!1848245 (not (= lambda!393826 lambda!393771))))

(declare-fun bs!1848251 () Bool)

(assert (= bs!1848251 (and b!6924700 b!6924204)))

(assert (=> bs!1848251 (= (and (= (_1!37084 lt!2471250) lt!2471255) (= (regOne!34360 r1!6342) r2!6280) (= (regTwo!34360 r1!6342) r3!135)) (= lambda!393826 lambda!393774))))

(declare-fun bs!1848252 () Bool)

(assert (= bs!1848252 (and b!6924700 b!6924650)))

(assert (=> bs!1848252 (not (= lambda!393826 lambda!393817))))

(assert (=> bs!1848251 (not (= lambda!393826 lambda!393773))))

(assert (=> bs!1848247 (= (and (= (_1!37084 lt!2471250) s!14361) (= (regOne!34360 r1!6342) lt!2471254) (= (regTwo!34360 r1!6342) r3!135)) (= lambda!393826 lambda!393770))))

(declare-fun bs!1848253 () Bool)

(assert (= bs!1848253 (and b!6924700 b!6924554)))

(assert (=> bs!1848253 (= (and (= (_1!37084 lt!2471250) lt!2471255) (= (regOne!34360 r1!6342) (regOne!34360 lt!2471249)) (= (regTwo!34360 r1!6342) (regTwo!34360 lt!2471249))) (= lambda!393826 lambda!393814))))

(assert (=> bs!1848244 (not (= lambda!393826 lambda!393803))))

(declare-fun bs!1848254 () Bool)

(assert (= bs!1848254 (and b!6924700 b!6924709)))

(assert (=> bs!1848254 (not (= lambda!393826 lambda!393825))))

(declare-fun bs!1848255 () Bool)

(assert (= bs!1848255 (and b!6924700 b!6924563)))

(assert (=> bs!1848255 (not (= lambda!393826 lambda!393813))))

(assert (=> bs!1848243 (= (and (= (_1!37084 lt!2471250) lt!2471255) (= (regOne!34360 r1!6342) r2!6280) (= (regTwo!34360 r1!6342) r3!135)) (= lambda!393826 lambda!393816))))

(assert (=> b!6924700 true))

(assert (=> b!6924700 true))

(declare-fun bm!629368 () Bool)

(declare-fun call!629373 () Bool)

(assert (=> bm!629368 (= call!629373 (isEmpty!38808 (_1!37084 lt!2471250)))))

(declare-fun b!6924699 () Bool)

(declare-fun res!2823893 () Bool)

(declare-fun e!4167379 () Bool)

(assert (=> b!6924699 (=> res!2823893 e!4167379)))

(assert (=> b!6924699 (= res!2823893 call!629373)))

(declare-fun e!4167378 () Bool)

(assert (=> b!6924699 (= e!4167378 e!4167379)))

(declare-fun call!629374 () Bool)

(assert (=> b!6924700 (= e!4167378 call!629374)))

(declare-fun b!6924701 () Bool)

(declare-fun e!4167376 () Bool)

(assert (=> b!6924701 (= e!4167376 (= (_1!37084 lt!2471250) (Cons!66553 (c!1285404 r1!6342) Nil!66553)))))

(declare-fun b!6924702 () Bool)

(declare-fun e!4167375 () Bool)

(declare-fun e!4167380 () Bool)

(assert (=> b!6924702 (= e!4167375 e!4167380)))

(declare-fun res!2823892 () Bool)

(assert (=> b!6924702 (= res!2823892 (not (is-EmptyLang!16924 r1!6342)))))

(assert (=> b!6924702 (=> (not res!2823892) (not e!4167380))))

(declare-fun b!6924703 () Bool)

(declare-fun e!4167377 () Bool)

(assert (=> b!6924703 (= e!4167377 (matchRSpec!3981 (regTwo!34361 r1!6342) (_1!37084 lt!2471250)))))

(declare-fun b!6924704 () Bool)

(declare-fun c!1285487 () Bool)

(assert (=> b!6924704 (= c!1285487 (is-ElementMatch!16924 r1!6342))))

(assert (=> b!6924704 (= e!4167380 e!4167376)))

(declare-fun b!6924705 () Bool)

(declare-fun e!4167374 () Bool)

(assert (=> b!6924705 (= e!4167374 e!4167377)))

(declare-fun res!2823894 () Bool)

(assert (=> b!6924705 (= res!2823894 (matchRSpec!3981 (regOne!34361 r1!6342) (_1!37084 lt!2471250)))))

(assert (=> b!6924705 (=> res!2823894 e!4167377)))

(declare-fun b!6924706 () Bool)

(assert (=> b!6924706 (= e!4167374 e!4167378)))

(declare-fun c!1285486 () Bool)

(assert (=> b!6924706 (= c!1285486 (is-Star!16924 r1!6342))))

(declare-fun d!2165112 () Bool)

(declare-fun c!1285485 () Bool)

(assert (=> d!2165112 (= c!1285485 (is-EmptyExpr!16924 r1!6342))))

(assert (=> d!2165112 (= (matchRSpec!3981 r1!6342 (_1!37084 lt!2471250)) e!4167375)))

(declare-fun b!6924707 () Bool)

(declare-fun c!1285488 () Bool)

(assert (=> b!6924707 (= c!1285488 (is-Union!16924 r1!6342))))

(assert (=> b!6924707 (= e!4167376 e!4167374)))

(declare-fun b!6924708 () Bool)

(assert (=> b!6924708 (= e!4167375 call!629373)))

(assert (=> b!6924709 (= e!4167379 call!629374)))

(declare-fun bm!629369 () Bool)

(assert (=> bm!629369 (= call!629374 (Exists!3926 (ite c!1285486 lambda!393825 lambda!393826)))))

(assert (= (and d!2165112 c!1285485) b!6924708))

(assert (= (and d!2165112 (not c!1285485)) b!6924702))

(assert (= (and b!6924702 res!2823892) b!6924704))

(assert (= (and b!6924704 c!1285487) b!6924701))

(assert (= (and b!6924704 (not c!1285487)) b!6924707))

(assert (= (and b!6924707 c!1285488) b!6924705))

(assert (= (and b!6924707 (not c!1285488)) b!6924706))

(assert (= (and b!6924705 (not res!2823894)) b!6924703))

(assert (= (and b!6924706 c!1285486) b!6924699))

(assert (= (and b!6924706 (not c!1285486)) b!6924700))

(assert (= (and b!6924699 (not res!2823893)) b!6924709))

(assert (= (or b!6924709 b!6924700) bm!629369))

(assert (= (or b!6924708 b!6924699) bm!629368))

(assert (=> bm!629368 m!7633504))

(declare-fun m!7633758 () Bool)

(assert (=> b!6924703 m!7633758))

(declare-fun m!7633760 () Bool)

(assert (=> b!6924705 m!7633760))

(declare-fun m!7633762 () Bool)

(assert (=> bm!629369 m!7633762))

(assert (=> b!6924210 d!2165112))

(declare-fun bs!1848256 () Bool)

(declare-fun b!6924731 () Bool)

(assert (= bs!1848256 (and b!6924731 b!6924700)))

(declare-fun lambda!393827 () Int)

(assert (=> bs!1848256 (not (= lambda!393827 lambda!393826))))

(declare-fun bs!1848257 () Bool)

(assert (= bs!1848257 (and b!6924731 d!2165060)))

(assert (=> bs!1848257 (not (= lambda!393827 lambda!393807))))

(declare-fun bs!1848258 () Bool)

(assert (= bs!1848258 (and b!6924731 d!2165084)))

(assert (=> bs!1848258 (not (= lambda!393827 lambda!393815))))

(declare-fun bs!1848259 () Bool)

(assert (= bs!1848259 (and b!6924731 d!2165054)))

(assert (=> bs!1848259 (not (= lambda!393827 lambda!393804))))

(declare-fun bs!1848261 () Bool)

(assert (= bs!1848261 (and b!6924731 b!6924215)))

(assert (=> bs!1848261 (not (= lambda!393827 lambda!393772))))

(declare-fun bs!1848262 () Bool)

(assert (= bs!1848262 (and b!6924731 b!6924681)))

(assert (=> bs!1848262 (= (and (= (_2!37084 lt!2471250) s!14361) (= (reg!17253 r2!6280) (reg!17253 lt!2471273)) (= r2!6280 lt!2471273)) (= lambda!393827 lambda!393821))))

(declare-fun bs!1848263 () Bool)

(assert (= bs!1848263 (and b!6924731 b!6924197)))

(assert (=> bs!1848263 (not (= lambda!393827 lambda!393769))))

(declare-fun bs!1848264 () Bool)

(assert (= bs!1848264 (and b!6924731 d!2165072)))

(assert (=> bs!1848264 (not (= lambda!393827 lambda!393808))))

(declare-fun bs!1848265 () Bool)

(assert (= bs!1848265 (and b!6924731 b!6924672)))

(assert (=> bs!1848265 (not (= lambda!393827 lambda!393824))))

(declare-fun bs!1848266 () Bool)

(assert (= bs!1848266 (and b!6924731 b!6924641)))

(assert (=> bs!1848266 (not (= lambda!393827 lambda!393819))))

(assert (=> bs!1848261 (not (= lambda!393827 lambda!393771))))

(declare-fun bs!1848268 () Bool)

(assert (= bs!1848268 (and b!6924731 b!6924204)))

(assert (=> bs!1848268 (not (= lambda!393827 lambda!393774))))

(declare-fun bs!1848269 () Bool)

(assert (= bs!1848269 (and b!6924731 b!6924650)))

(assert (=> bs!1848269 (= (and (= (_2!37084 lt!2471250) s!14361) (= (reg!17253 r2!6280) (reg!17253 lt!2471263)) (= r2!6280 lt!2471263)) (= lambda!393827 lambda!393817))))

(assert (=> bs!1848268 (not (= lambda!393827 lambda!393773))))

(assert (=> bs!1848263 (not (= lambda!393827 lambda!393770))))

(declare-fun bs!1848271 () Bool)

(assert (= bs!1848271 (and b!6924731 b!6924554)))

(assert (=> bs!1848271 (not (= lambda!393827 lambda!393814))))

(assert (=> bs!1848259 (not (= lambda!393827 lambda!393803))))

(declare-fun bs!1848272 () Bool)

(assert (= bs!1848272 (and b!6924731 b!6924709)))

(assert (=> bs!1848272 (= (and (= (_2!37084 lt!2471250) (_1!37084 lt!2471250)) (= (reg!17253 r2!6280) (reg!17253 r1!6342)) (= r2!6280 r1!6342)) (= lambda!393827 lambda!393825))))

(declare-fun bs!1848273 () Bool)

(assert (= bs!1848273 (and b!6924731 b!6924563)))

(assert (=> bs!1848273 (= (and (= (_2!37084 lt!2471250) lt!2471255) (= (reg!17253 r2!6280) (reg!17253 lt!2471249)) (= r2!6280 lt!2471249)) (= lambda!393827 lambda!393813))))

(assert (=> bs!1848258 (not (= lambda!393827 lambda!393816))))

(assert (=> b!6924731 true))

(assert (=> b!6924731 true))

(declare-fun bs!1848274 () Bool)

(declare-fun b!6924722 () Bool)

(assert (= bs!1848274 (and b!6924722 b!6924700)))

(declare-fun lambda!393829 () Int)

(assert (=> bs!1848274 (= (and (= (_2!37084 lt!2471250) (_1!37084 lt!2471250)) (= (regOne!34360 r2!6280) (regOne!34360 r1!6342)) (= (regTwo!34360 r2!6280) (regTwo!34360 r1!6342))) (= lambda!393829 lambda!393826))))

(declare-fun bs!1848275 () Bool)

(assert (= bs!1848275 (and b!6924722 d!2165060)))

(assert (=> bs!1848275 (not (= lambda!393829 lambda!393807))))

(declare-fun bs!1848276 () Bool)

(assert (= bs!1848276 (and b!6924722 d!2165084)))

(assert (=> bs!1848276 (not (= lambda!393829 lambda!393815))))

(declare-fun bs!1848277 () Bool)

(assert (= bs!1848277 (and b!6924722 d!2165054)))

(assert (=> bs!1848277 (= (and (= (_2!37084 lt!2471250) (_1!37084 lt!2471259)) (= (regOne!34360 r2!6280) r1!6342) (= (regTwo!34360 r2!6280) r2!6280)) (= lambda!393829 lambda!393804))))

(declare-fun bs!1848279 () Bool)

(assert (= bs!1848279 (and b!6924722 b!6924215)))

(assert (=> bs!1848279 (= (and (= (_2!37084 lt!2471250) (_1!37084 lt!2471259)) (= (regOne!34360 r2!6280) r1!6342) (= (regTwo!34360 r2!6280) r2!6280)) (= lambda!393829 lambda!393772))))

(declare-fun bs!1848280 () Bool)

(assert (= bs!1848280 (and b!6924722 b!6924681)))

(assert (=> bs!1848280 (not (= lambda!393829 lambda!393821))))

(declare-fun bs!1848282 () Bool)

(assert (= bs!1848282 (and b!6924722 b!6924197)))

(assert (=> bs!1848282 (not (= lambda!393829 lambda!393769))))

(declare-fun bs!1848283 () Bool)

(assert (= bs!1848283 (and b!6924722 d!2165072)))

(assert (=> bs!1848283 (not (= lambda!393829 lambda!393808))))

(declare-fun bs!1848284 () Bool)

(assert (= bs!1848284 (and b!6924722 b!6924672)))

(assert (=> bs!1848284 (= (and (= (_2!37084 lt!2471250) s!14361) (= (regOne!34360 r2!6280) (regOne!34360 lt!2471273)) (= (regTwo!34360 r2!6280) (regTwo!34360 lt!2471273))) (= lambda!393829 lambda!393824))))

(declare-fun bs!1848285 () Bool)

(assert (= bs!1848285 (and b!6924722 b!6924641)))

(assert (=> bs!1848285 (= (and (= (_2!37084 lt!2471250) s!14361) (= (regOne!34360 r2!6280) (regOne!34360 lt!2471263)) (= (regTwo!34360 r2!6280) (regTwo!34360 lt!2471263))) (= lambda!393829 lambda!393819))))

(declare-fun bs!1848287 () Bool)

(assert (= bs!1848287 (and b!6924722 b!6924731)))

(assert (=> bs!1848287 (not (= lambda!393829 lambda!393827))))

(assert (=> bs!1848279 (not (= lambda!393829 lambda!393771))))

(declare-fun bs!1848289 () Bool)

(assert (= bs!1848289 (and b!6924722 b!6924204)))

(assert (=> bs!1848289 (= (and (= (_2!37084 lt!2471250) lt!2471255) (= (regOne!34360 r2!6280) r2!6280) (= (regTwo!34360 r2!6280) r3!135)) (= lambda!393829 lambda!393774))))

(declare-fun bs!1848290 () Bool)

(assert (= bs!1848290 (and b!6924722 b!6924650)))

(assert (=> bs!1848290 (not (= lambda!393829 lambda!393817))))

(assert (=> bs!1848289 (not (= lambda!393829 lambda!393773))))

(assert (=> bs!1848282 (= (and (= (_2!37084 lt!2471250) s!14361) (= (regOne!34360 r2!6280) lt!2471254) (= (regTwo!34360 r2!6280) r3!135)) (= lambda!393829 lambda!393770))))

(declare-fun bs!1848291 () Bool)

(assert (= bs!1848291 (and b!6924722 b!6924554)))

(assert (=> bs!1848291 (= (and (= (_2!37084 lt!2471250) lt!2471255) (= (regOne!34360 r2!6280) (regOne!34360 lt!2471249)) (= (regTwo!34360 r2!6280) (regTwo!34360 lt!2471249))) (= lambda!393829 lambda!393814))))

(assert (=> bs!1848277 (not (= lambda!393829 lambda!393803))))

(declare-fun bs!1848292 () Bool)

(assert (= bs!1848292 (and b!6924722 b!6924709)))

(assert (=> bs!1848292 (not (= lambda!393829 lambda!393825))))

(declare-fun bs!1848293 () Bool)

(assert (= bs!1848293 (and b!6924722 b!6924563)))

(assert (=> bs!1848293 (not (= lambda!393829 lambda!393813))))

(assert (=> bs!1848276 (= (and (= (_2!37084 lt!2471250) lt!2471255) (= (regOne!34360 r2!6280) r2!6280) (= (regTwo!34360 r2!6280) r3!135)) (= lambda!393829 lambda!393816))))

(assert (=> b!6924722 true))

(assert (=> b!6924722 true))

(declare-fun bm!629372 () Bool)

(declare-fun call!629377 () Bool)

(assert (=> bm!629372 (= call!629377 (isEmpty!38808 (_2!37084 lt!2471250)))))

(declare-fun b!6924721 () Bool)

(declare-fun res!2823899 () Bool)

(declare-fun e!4167393 () Bool)

(assert (=> b!6924721 (=> res!2823899 e!4167393)))

(assert (=> b!6924721 (= res!2823899 call!629377)))

(declare-fun e!4167392 () Bool)

(assert (=> b!6924721 (= e!4167392 e!4167393)))

(declare-fun call!629378 () Bool)

(assert (=> b!6924722 (= e!4167392 call!629378)))

(declare-fun b!6924723 () Bool)

(declare-fun e!4167390 () Bool)

(assert (=> b!6924723 (= e!4167390 (= (_2!37084 lt!2471250) (Cons!66553 (c!1285404 r2!6280) Nil!66553)))))

(declare-fun b!6924724 () Bool)

(declare-fun e!4167389 () Bool)

(declare-fun e!4167394 () Bool)

(assert (=> b!6924724 (= e!4167389 e!4167394)))

(declare-fun res!2823898 () Bool)

(assert (=> b!6924724 (= res!2823898 (not (is-EmptyLang!16924 r2!6280)))))

(assert (=> b!6924724 (=> (not res!2823898) (not e!4167394))))

(declare-fun b!6924725 () Bool)

(declare-fun e!4167391 () Bool)

(assert (=> b!6924725 (= e!4167391 (matchRSpec!3981 (regTwo!34361 r2!6280) (_2!37084 lt!2471250)))))

(declare-fun b!6924726 () Bool)

(declare-fun c!1285495 () Bool)

(assert (=> b!6924726 (= c!1285495 (is-ElementMatch!16924 r2!6280))))

(assert (=> b!6924726 (= e!4167394 e!4167390)))

(declare-fun b!6924727 () Bool)

(declare-fun e!4167388 () Bool)

(assert (=> b!6924727 (= e!4167388 e!4167391)))

(declare-fun res!2823900 () Bool)

(assert (=> b!6924727 (= res!2823900 (matchRSpec!3981 (regOne!34361 r2!6280) (_2!37084 lt!2471250)))))

(assert (=> b!6924727 (=> res!2823900 e!4167391)))

(declare-fun b!6924728 () Bool)

(assert (=> b!6924728 (= e!4167388 e!4167392)))

(declare-fun c!1285494 () Bool)

(assert (=> b!6924728 (= c!1285494 (is-Star!16924 r2!6280))))

(declare-fun d!2165114 () Bool)

(declare-fun c!1285493 () Bool)

(assert (=> d!2165114 (= c!1285493 (is-EmptyExpr!16924 r2!6280))))

(assert (=> d!2165114 (= (matchRSpec!3981 r2!6280 (_2!37084 lt!2471250)) e!4167389)))

(declare-fun b!6924729 () Bool)

(declare-fun c!1285496 () Bool)

(assert (=> b!6924729 (= c!1285496 (is-Union!16924 r2!6280))))

(assert (=> b!6924729 (= e!4167390 e!4167388)))

(declare-fun b!6924730 () Bool)

(assert (=> b!6924730 (= e!4167389 call!629377)))

(assert (=> b!6924731 (= e!4167393 call!629378)))

(declare-fun bm!629373 () Bool)

(assert (=> bm!629373 (= call!629378 (Exists!3926 (ite c!1285494 lambda!393827 lambda!393829)))))

(assert (= (and d!2165114 c!1285493) b!6924730))

(assert (= (and d!2165114 (not c!1285493)) b!6924724))

(assert (= (and b!6924724 res!2823898) b!6924726))

(assert (= (and b!6924726 c!1285495) b!6924723))

(assert (= (and b!6924726 (not c!1285495)) b!6924729))

(assert (= (and b!6924729 c!1285496) b!6924727))

(assert (= (and b!6924729 (not c!1285496)) b!6924728))

(assert (= (and b!6924727 (not res!2823900)) b!6924725))

(assert (= (and b!6924728 c!1285494) b!6924721))

(assert (= (and b!6924728 (not c!1285494)) b!6924722))

(assert (= (and b!6924721 (not res!2823899)) b!6924731))

(assert (= (or b!6924731 b!6924722) bm!629373))

(assert (= (or b!6924730 b!6924721) bm!629372))

(declare-fun m!7633764 () Bool)

(assert (=> bm!629372 m!7633764))

(declare-fun m!7633768 () Bool)

(assert (=> b!6924725 m!7633768))

(declare-fun m!7633771 () Bool)

(assert (=> b!6924727 m!7633771))

(declare-fun m!7633774 () Bool)

(assert (=> bm!629373 m!7633774))

(assert (=> b!6924210 d!2165114))

(declare-fun d!2165116 () Bool)

(assert (=> d!2165116 (= (matchR!9063 r1!6342 (_1!37084 lt!2471250)) (matchRSpec!3981 r1!6342 (_1!37084 lt!2471250)))))

(declare-fun lt!2471416 () Unit!160572)

(assert (=> d!2165116 (= lt!2471416 (choose!51562 r1!6342 (_1!37084 lt!2471250)))))

(assert (=> d!2165116 (validRegex!8630 r1!6342)))

(assert (=> d!2165116 (= (mainMatchTheorem!3981 r1!6342 (_1!37084 lt!2471250)) lt!2471416)))

(declare-fun bs!1848294 () Bool)

(assert (= bs!1848294 d!2165116))

(assert (=> bs!1848294 m!7633320))

(assert (=> bs!1848294 m!7633392))

(declare-fun m!7633780 () Bool)

(assert (=> bs!1848294 m!7633780))

(assert (=> bs!1848294 m!7633382))

(assert (=> b!6924210 d!2165116))

(declare-fun d!2165120 () Bool)

(assert (=> d!2165120 (= (matchR!9063 r2!6280 (_2!37084 lt!2471250)) (matchRSpec!3981 r2!6280 (_2!37084 lt!2471250)))))

(declare-fun lt!2471417 () Unit!160572)

(assert (=> d!2165120 (= lt!2471417 (choose!51562 r2!6280 (_2!37084 lt!2471250)))))

(assert (=> d!2165120 (validRegex!8630 r2!6280)))

(assert (=> d!2165120 (= (mainMatchTheorem!3981 r2!6280 (_2!37084 lt!2471250)) lt!2471417)))

(declare-fun bs!1848295 () Bool)

(assert (= bs!1848295 d!2165120))

(assert (=> bs!1848295 m!7633384))

(assert (=> bs!1848295 m!7633386))

(declare-fun m!7633782 () Bool)

(assert (=> bs!1848295 m!7633782))

(assert (=> bs!1848295 m!7633330))

(assert (=> b!6924210 d!2165120))

(declare-fun d!2165122 () Bool)

(declare-fun e!4167395 () Bool)

(assert (=> d!2165122 e!4167395))

(declare-fun res!2823902 () Bool)

(assert (=> d!2165122 (=> (not res!2823902) (not e!4167395))))

(declare-fun lt!2471418 () List!66677)

(assert (=> d!2165122 (= res!2823902 (= (content!13081 lt!2471418) (set.union (content!13081 (_1!37084 lt!2471250)) (content!13081 (_2!37084 lt!2471250)))))))

(declare-fun e!4167396 () List!66677)

(assert (=> d!2165122 (= lt!2471418 e!4167396)))

(declare-fun c!1285497 () Bool)

(assert (=> d!2165122 (= c!1285497 (is-Nil!66553 (_1!37084 lt!2471250)))))

(assert (=> d!2165122 (= (++!14967 (_1!37084 lt!2471250) (_2!37084 lt!2471250)) lt!2471418)))

(declare-fun b!6924732 () Bool)

(assert (=> b!6924732 (= e!4167396 (_2!37084 lt!2471250))))

(declare-fun b!6924733 () Bool)

(assert (=> b!6924733 (= e!4167396 (Cons!66553 (h!73001 (_1!37084 lt!2471250)) (++!14967 (t!380420 (_1!37084 lt!2471250)) (_2!37084 lt!2471250))))))

(declare-fun b!6924734 () Bool)

(declare-fun res!2823901 () Bool)

(assert (=> b!6924734 (=> (not res!2823901) (not e!4167395))))

(assert (=> b!6924734 (= res!2823901 (= (size!40778 lt!2471418) (+ (size!40778 (_1!37084 lt!2471250)) (size!40778 (_2!37084 lt!2471250)))))))

(declare-fun b!6924735 () Bool)

(assert (=> b!6924735 (= e!4167395 (or (not (= (_2!37084 lt!2471250) Nil!66553)) (= lt!2471418 (_1!37084 lt!2471250))))))

(assert (= (and d!2165122 c!1285497) b!6924732))

(assert (= (and d!2165122 (not c!1285497)) b!6924733))

(assert (= (and d!2165122 res!2823902) b!6924734))

(assert (= (and b!6924734 res!2823901) b!6924735))

(declare-fun m!7633784 () Bool)

(assert (=> d!2165122 m!7633784))

(assert (=> d!2165122 m!7633736))

(assert (=> d!2165122 m!7633572))

(declare-fun m!7633786 () Bool)

(assert (=> b!6924733 m!7633786))

(declare-fun m!7633788 () Bool)

(assert (=> b!6924734 m!7633788))

(assert (=> b!6924734 m!7633744))

(assert (=> b!6924734 m!7633580))

(assert (=> b!6924210 d!2165122))

(declare-fun d!2165124 () Bool)

(declare-fun e!4167397 () Bool)

(assert (=> d!2165124 e!4167397))

(declare-fun res!2823904 () Bool)

(assert (=> d!2165124 (=> (not res!2823904) (not e!4167397))))

(declare-fun lt!2471419 () List!66677)

(assert (=> d!2165124 (= res!2823904 (= (content!13081 lt!2471419) (set.union (content!13081 (++!14967 (_1!37084 lt!2471250) (_2!37084 lt!2471250))) (content!13081 (_2!37084 lt!2471259)))))))

(declare-fun e!4167398 () List!66677)

(assert (=> d!2165124 (= lt!2471419 e!4167398)))

(declare-fun c!1285498 () Bool)

(assert (=> d!2165124 (= c!1285498 (is-Nil!66553 (++!14967 (_1!37084 lt!2471250) (_2!37084 lt!2471250))))))

(assert (=> d!2165124 (= (++!14967 (++!14967 (_1!37084 lt!2471250) (_2!37084 lt!2471250)) (_2!37084 lt!2471259)) lt!2471419)))

(declare-fun b!6924736 () Bool)

(assert (=> b!6924736 (= e!4167398 (_2!37084 lt!2471259))))

(declare-fun b!6924737 () Bool)

(assert (=> b!6924737 (= e!4167398 (Cons!66553 (h!73001 (++!14967 (_1!37084 lt!2471250) (_2!37084 lt!2471250))) (++!14967 (t!380420 (++!14967 (_1!37084 lt!2471250) (_2!37084 lt!2471250))) (_2!37084 lt!2471259))))))

(declare-fun b!6924738 () Bool)

(declare-fun res!2823903 () Bool)

(assert (=> b!6924738 (=> (not res!2823903) (not e!4167397))))

(assert (=> b!6924738 (= res!2823903 (= (size!40778 lt!2471419) (+ (size!40778 (++!14967 (_1!37084 lt!2471250) (_2!37084 lt!2471250))) (size!40778 (_2!37084 lt!2471259)))))))

(declare-fun b!6924739 () Bool)

(assert (=> b!6924739 (= e!4167397 (or (not (= (_2!37084 lt!2471259) Nil!66553)) (= lt!2471419 (++!14967 (_1!37084 lt!2471250) (_2!37084 lt!2471250)))))))

(assert (= (and d!2165124 c!1285498) b!6924736))

(assert (= (and d!2165124 (not c!1285498)) b!6924737))

(assert (= (and d!2165124 res!2823904) b!6924738))

(assert (= (and b!6924738 res!2823903) b!6924739))

(declare-fun m!7633790 () Bool)

(assert (=> d!2165124 m!7633790))

(assert (=> d!2165124 m!7633388))

(declare-fun m!7633792 () Bool)

(assert (=> d!2165124 m!7633792))

(assert (=> d!2165124 m!7633574))

(declare-fun m!7633794 () Bool)

(assert (=> b!6924737 m!7633794))

(declare-fun m!7633796 () Bool)

(assert (=> b!6924738 m!7633796))

(assert (=> b!6924738 m!7633388))

(declare-fun m!7633798 () Bool)

(assert (=> b!6924738 m!7633798))

(assert (=> b!6924738 m!7633582))

(assert (=> b!6924210 d!2165124))

(declare-fun b!6924751 () Bool)

(declare-fun e!4167405 () Bool)

(assert (=> b!6924751 (= e!4167405 (>= (size!40778 (_1!37084 lt!2471250)) (size!40778 Nil!66553)))))

(declare-fun b!6924748 () Bool)

(declare-fun e!4167407 () Bool)

(declare-fun e!4167406 () Bool)

(assert (=> b!6924748 (= e!4167407 e!4167406)))

(declare-fun res!2823913 () Bool)

(assert (=> b!6924748 (=> (not res!2823913) (not e!4167406))))

(assert (=> b!6924748 (= res!2823913 (not (is-Nil!66553 (_1!37084 lt!2471250))))))

(declare-fun b!6924749 () Bool)

(declare-fun res!2823915 () Bool)

(assert (=> b!6924749 (=> (not res!2823915) (not e!4167406))))

(assert (=> b!6924749 (= res!2823915 (= (head!13881 Nil!66553) (head!13881 (_1!37084 lt!2471250))))))

(declare-fun b!6924750 () Bool)

(assert (=> b!6924750 (= e!4167406 (isPrefix!5809 (tail!12933 Nil!66553) (tail!12933 (_1!37084 lt!2471250))))))

(declare-fun d!2165126 () Bool)

(assert (=> d!2165126 e!4167405))

(declare-fun res!2823916 () Bool)

(assert (=> d!2165126 (=> res!2823916 e!4167405)))

(declare-fun lt!2471424 () Bool)

(assert (=> d!2165126 (= res!2823916 (not lt!2471424))))

(assert (=> d!2165126 (= lt!2471424 e!4167407)))

(declare-fun res!2823914 () Bool)

(assert (=> d!2165126 (=> res!2823914 e!4167407)))

(assert (=> d!2165126 (= res!2823914 (is-Nil!66553 Nil!66553))))

(assert (=> d!2165126 (= (isPrefix!5809 Nil!66553 (_1!37084 lt!2471250)) lt!2471424)))

(assert (= (and d!2165126 (not res!2823914)) b!6924748))

(assert (= (and b!6924748 res!2823913) b!6924749))

(assert (= (and b!6924749 res!2823915) b!6924750))

(assert (= (and d!2165126 (not res!2823916)) b!6924751))

(assert (=> b!6924751 m!7633744))

(assert (=> b!6924751 m!7633690))

(declare-fun m!7633802 () Bool)

(assert (=> b!6924749 m!7633802))

(assert (=> b!6924749 m!7633502))

(declare-fun m!7633806 () Bool)

(assert (=> b!6924750 m!7633806))

(assert (=> b!6924750 m!7633506))

(assert (=> b!6924750 m!7633806))

(assert (=> b!6924750 m!7633506))

(declare-fun m!7633808 () Bool)

(assert (=> b!6924750 m!7633808))

(assert (=> b!6924209 d!2165126))

(declare-fun b!6924752 () Bool)

(declare-fun e!4167413 () Bool)

(declare-fun e!4167412 () Bool)

(assert (=> b!6924752 (= e!4167413 e!4167412)))

(declare-fun c!1285499 () Bool)

(assert (=> b!6924752 (= c!1285499 (is-EmptyLang!16924 r3!135))))

(declare-fun b!6924753 () Bool)

(declare-fun res!2823921 () Bool)

(declare-fun e!4167410 () Bool)

(assert (=> b!6924753 (=> (not res!2823921) (not e!4167410))))

(assert (=> b!6924753 (= res!2823921 (isEmpty!38808 (tail!12933 (_2!37084 lt!2471259))))))

(declare-fun b!6924754 () Bool)

(assert (=> b!6924754 (= e!4167410 (= (head!13881 (_2!37084 lt!2471259)) (c!1285404 r3!135)))))

(declare-fun b!6924755 () Bool)

(declare-fun res!2823917 () Bool)

(declare-fun e!4167408 () Bool)

(assert (=> b!6924755 (=> res!2823917 e!4167408)))

(assert (=> b!6924755 (= res!2823917 (not (is-ElementMatch!16924 r3!135)))))

(assert (=> b!6924755 (= e!4167412 e!4167408)))

(declare-fun d!2165130 () Bool)

(assert (=> d!2165130 e!4167413))

(declare-fun c!1285501 () Bool)

(assert (=> d!2165130 (= c!1285501 (is-EmptyExpr!16924 r3!135))))

(declare-fun lt!2471427 () Bool)

(declare-fun e!4167414 () Bool)

(assert (=> d!2165130 (= lt!2471427 e!4167414)))

(declare-fun c!1285500 () Bool)

(assert (=> d!2165130 (= c!1285500 (isEmpty!38808 (_2!37084 lt!2471259)))))

(assert (=> d!2165130 (validRegex!8630 r3!135)))

(assert (=> d!2165130 (= (matchR!9063 r3!135 (_2!37084 lt!2471259)) lt!2471427)))

(declare-fun b!6924756 () Bool)

(assert (=> b!6924756 (= e!4167412 (not lt!2471427))))

(declare-fun b!6924757 () Bool)

(declare-fun e!4167411 () Bool)

(assert (=> b!6924757 (= e!4167408 e!4167411)))

(declare-fun res!2823924 () Bool)

(assert (=> b!6924757 (=> (not res!2823924) (not e!4167411))))

(assert (=> b!6924757 (= res!2823924 (not lt!2471427))))

(declare-fun b!6924758 () Bool)

(declare-fun res!2823918 () Bool)

(assert (=> b!6924758 (=> (not res!2823918) (not e!4167410))))

(declare-fun call!629379 () Bool)

(assert (=> b!6924758 (= res!2823918 (not call!629379))))

(declare-fun bm!629374 () Bool)

(assert (=> bm!629374 (= call!629379 (isEmpty!38808 (_2!37084 lt!2471259)))))

(declare-fun b!6924759 () Bool)

(declare-fun res!2823922 () Bool)

(assert (=> b!6924759 (=> res!2823922 e!4167408)))

(assert (=> b!6924759 (= res!2823922 e!4167410)))

(declare-fun res!2823923 () Bool)

(assert (=> b!6924759 (=> (not res!2823923) (not e!4167410))))

(assert (=> b!6924759 (= res!2823923 lt!2471427)))

(declare-fun b!6924760 () Bool)

(assert (=> b!6924760 (= e!4167413 (= lt!2471427 call!629379))))

(declare-fun b!6924761 () Bool)

(declare-fun res!2823920 () Bool)

(declare-fun e!4167409 () Bool)

(assert (=> b!6924761 (=> res!2823920 e!4167409)))

(assert (=> b!6924761 (= res!2823920 (not (isEmpty!38808 (tail!12933 (_2!37084 lt!2471259)))))))

(declare-fun b!6924762 () Bool)

(assert (=> b!6924762 (= e!4167409 (not (= (head!13881 (_2!37084 lt!2471259)) (c!1285404 r3!135))))))

(declare-fun b!6924763 () Bool)

(assert (=> b!6924763 (= e!4167414 (matchR!9063 (derivativeStep!5428 r3!135 (head!13881 (_2!37084 lt!2471259))) (tail!12933 (_2!37084 lt!2471259))))))

(declare-fun b!6924764 () Bool)

(assert (=> b!6924764 (= e!4167411 e!4167409)))

(declare-fun res!2823919 () Bool)

(assert (=> b!6924764 (=> res!2823919 e!4167409)))

(assert (=> b!6924764 (= res!2823919 call!629379)))

(declare-fun b!6924765 () Bool)

(assert (=> b!6924765 (= e!4167414 (nullable!6753 r3!135))))

(assert (= (and d!2165130 c!1285500) b!6924765))

(assert (= (and d!2165130 (not c!1285500)) b!6924763))

(assert (= (and d!2165130 c!1285501) b!6924760))

(assert (= (and d!2165130 (not c!1285501)) b!6924752))

(assert (= (and b!6924752 c!1285499) b!6924756))

(assert (= (and b!6924752 (not c!1285499)) b!6924755))

(assert (= (and b!6924755 (not res!2823917)) b!6924759))

(assert (= (and b!6924759 res!2823923) b!6924758))

(assert (= (and b!6924758 res!2823918) b!6924753))

(assert (= (and b!6924753 res!2823921) b!6924754))

(assert (= (and b!6924759 (not res!2823922)) b!6924757))

(assert (= (and b!6924757 res!2823924) b!6924764))

(assert (= (and b!6924764 (not res!2823919)) b!6924761))

(assert (= (and b!6924761 (not res!2823920)) b!6924762))

(assert (= (or b!6924760 b!6924764 b!6924758) bm!629374))

(declare-fun m!7633814 () Bool)

(assert (=> b!6924765 m!7633814))

(declare-fun m!7633816 () Bool)

(assert (=> b!6924762 m!7633816))

(declare-fun m!7633818 () Bool)

(assert (=> d!2165130 m!7633818))

(assert (=> d!2165130 m!7633378))

(assert (=> b!6924754 m!7633816))

(declare-fun m!7633820 () Bool)

(assert (=> b!6924753 m!7633820))

(assert (=> b!6924753 m!7633820))

(declare-fun m!7633822 () Bool)

(assert (=> b!6924753 m!7633822))

(assert (=> b!6924761 m!7633820))

(assert (=> b!6924761 m!7633820))

(assert (=> b!6924761 m!7633822))

(assert (=> b!6924763 m!7633816))

(assert (=> b!6924763 m!7633816))

(declare-fun m!7633824 () Bool)

(assert (=> b!6924763 m!7633824))

(assert (=> b!6924763 m!7633820))

(assert (=> b!6924763 m!7633824))

(assert (=> b!6924763 m!7633820))

(declare-fun m!7633826 () Bool)

(assert (=> b!6924763 m!7633826))

(assert (=> bm!629374 m!7633818))

(assert (=> b!6924198 d!2165130))

(declare-fun b!6924777 () Bool)

(declare-fun res!2823932 () Bool)

(declare-fun e!4167428 () Bool)

(assert (=> b!6924777 (=> (not res!2823932) (not e!4167428))))

(declare-fun call!629382 () Bool)

(assert (=> b!6924777 (= res!2823932 call!629382)))

(declare-fun e!4167425 () Bool)

(assert (=> b!6924777 (= e!4167425 e!4167428)))

(declare-fun bm!629377 () Bool)

(declare-fun call!629384 () Bool)

(assert (=> bm!629377 (= call!629382 call!629384)))

(declare-fun b!6924778 () Bool)

(declare-fun e!4167423 () Bool)

(declare-fun e!4167424 () Bool)

(assert (=> b!6924778 (= e!4167423 e!4167424)))

(declare-fun res!2823928 () Bool)

(assert (=> b!6924778 (= res!2823928 (not (nullable!6753 (reg!17253 r2!6280))))))

(assert (=> b!6924778 (=> (not res!2823928) (not e!4167424))))

(declare-fun bm!629378 () Bool)

(declare-fun call!629383 () Bool)

(declare-fun c!1285506 () Bool)

(assert (=> bm!629378 (= call!629383 (validRegex!8630 (ite c!1285506 (regTwo!34361 r2!6280) (regOne!34360 r2!6280))))))

(declare-fun bm!629379 () Bool)

(declare-fun c!1285507 () Bool)

(assert (=> bm!629379 (= call!629384 (validRegex!8630 (ite c!1285507 (reg!17253 r2!6280) (ite c!1285506 (regOne!34361 r2!6280) (regTwo!34360 r2!6280)))))))

(declare-fun b!6924779 () Bool)

(declare-fun e!4167422 () Bool)

(assert (=> b!6924779 (= e!4167422 e!4167423)))

(assert (=> b!6924779 (= c!1285507 (is-Star!16924 r2!6280))))

(declare-fun b!6924780 () Bool)

(declare-fun res!2823931 () Bool)

(declare-fun e!4167427 () Bool)

(assert (=> b!6924780 (=> res!2823931 e!4167427)))

(assert (=> b!6924780 (= res!2823931 (not (is-Concat!25769 r2!6280)))))

(assert (=> b!6924780 (= e!4167425 e!4167427)))

(declare-fun b!6924782 () Bool)

(declare-fun e!4167426 () Bool)

(assert (=> b!6924782 (= e!4167426 call!629382)))

(declare-fun b!6924783 () Bool)

(assert (=> b!6924783 (= e!4167428 call!629383)))

(declare-fun b!6924784 () Bool)

(assert (=> b!6924784 (= e!4167427 e!4167426)))

(declare-fun res!2823930 () Bool)

(assert (=> b!6924784 (=> (not res!2823930) (not e!4167426))))

(assert (=> b!6924784 (= res!2823930 call!629383)))

(declare-fun b!6924785 () Bool)

(assert (=> b!6924785 (= e!4167424 call!629384)))

(declare-fun d!2165134 () Bool)

(declare-fun res!2823929 () Bool)

(assert (=> d!2165134 (=> res!2823929 e!4167422)))

(assert (=> d!2165134 (= res!2823929 (is-ElementMatch!16924 r2!6280))))

(assert (=> d!2165134 (= (validRegex!8630 r2!6280) e!4167422)))

(declare-fun b!6924781 () Bool)

(assert (=> b!6924781 (= e!4167423 e!4167425)))

(assert (=> b!6924781 (= c!1285506 (is-Union!16924 r2!6280))))

(assert (= (and d!2165134 (not res!2823929)) b!6924779))

(assert (= (and b!6924779 c!1285507) b!6924778))

(assert (= (and b!6924779 (not c!1285507)) b!6924781))

(assert (= (and b!6924778 res!2823928) b!6924785))

(assert (= (and b!6924781 c!1285506) b!6924777))

(assert (= (and b!6924781 (not c!1285506)) b!6924780))

(assert (= (and b!6924777 res!2823932) b!6924783))

(assert (= (and b!6924780 (not res!2823931)) b!6924784))

(assert (= (and b!6924784 res!2823930) b!6924782))

(assert (= (or b!6924777 b!6924782) bm!629377))

(assert (= (or b!6924783 b!6924784) bm!629378))

(assert (= (or b!6924785 bm!629377) bm!629379))

(declare-fun m!7633828 () Bool)

(assert (=> b!6924778 m!7633828))

(declare-fun m!7633830 () Bool)

(assert (=> bm!629378 m!7633830))

(declare-fun m!7633832 () Bool)

(assert (=> bm!629379 m!7633832))

(assert (=> b!6924208 d!2165134))

(declare-fun d!2165136 () Bool)

(assert (=> d!2165136 (= (Exists!3926 lambda!393770) (choose!51558 lambda!393770))))

(declare-fun bs!1848300 () Bool)

(assert (= bs!1848300 d!2165136))

(declare-fun m!7633834 () Bool)

(assert (=> bs!1848300 m!7633834))

(assert (=> b!6924197 d!2165136))

(declare-fun b!6924786 () Bool)

(declare-fun e!4167431 () Option!16693)

(assert (=> b!6924786 (= e!4167431 None!16692)))

(declare-fun b!6924787 () Bool)

(declare-fun e!4167429 () Option!16693)

(assert (=> b!6924787 (= e!4167429 e!4167431)))

(declare-fun c!1285508 () Bool)

(assert (=> b!6924787 (= c!1285508 (is-Nil!66553 s!14361))))

(declare-fun d!2165138 () Bool)

(declare-fun e!4167430 () Bool)

(assert (=> d!2165138 e!4167430))

(declare-fun res!2823934 () Bool)

(assert (=> d!2165138 (=> res!2823934 e!4167430)))

(declare-fun e!4167433 () Bool)

(assert (=> d!2165138 (= res!2823934 e!4167433)))

(declare-fun res!2823935 () Bool)

(assert (=> d!2165138 (=> (not res!2823935) (not e!4167433))))

(declare-fun lt!2471428 () Option!16693)

(assert (=> d!2165138 (= res!2823935 (isDefined!13396 lt!2471428))))

(assert (=> d!2165138 (= lt!2471428 e!4167429)))

(declare-fun c!1285509 () Bool)

(declare-fun e!4167432 () Bool)

(assert (=> d!2165138 (= c!1285509 e!4167432)))

(declare-fun res!2823936 () Bool)

(assert (=> d!2165138 (=> (not res!2823936) (not e!4167432))))

(assert (=> d!2165138 (= res!2823936 (matchR!9063 lt!2471254 Nil!66553))))

(assert (=> d!2165138 (validRegex!8630 lt!2471254)))

(assert (=> d!2165138 (= (findConcatSeparation!3107 lt!2471254 r3!135 Nil!66553 s!14361 s!14361) lt!2471428)))

(declare-fun b!6924788 () Bool)

(assert (=> b!6924788 (= e!4167430 (not (isDefined!13396 lt!2471428)))))

(declare-fun b!6924789 () Bool)

(assert (=> b!6924789 (= e!4167432 (matchR!9063 r3!135 s!14361))))

(declare-fun b!6924790 () Bool)

(assert (=> b!6924790 (= e!4167433 (= (++!14967 (_1!37084 (get!23327 lt!2471428)) (_2!37084 (get!23327 lt!2471428))) s!14361))))

(declare-fun b!6924791 () Bool)

(assert (=> b!6924791 (= e!4167429 (Some!16692 (tuple2!67563 Nil!66553 s!14361)))))

(declare-fun b!6924792 () Bool)

(declare-fun res!2823937 () Bool)

(assert (=> b!6924792 (=> (not res!2823937) (not e!4167433))))

(assert (=> b!6924792 (= res!2823937 (matchR!9063 lt!2471254 (_1!37084 (get!23327 lt!2471428))))))

(declare-fun b!6924793 () Bool)

(declare-fun lt!2471429 () Unit!160572)

(declare-fun lt!2471430 () Unit!160572)

(assert (=> b!6924793 (= lt!2471429 lt!2471430)))

(assert (=> b!6924793 (= (++!14967 (++!14967 Nil!66553 (Cons!66553 (h!73001 s!14361) Nil!66553)) (t!380420 s!14361)) s!14361)))

(assert (=> b!6924793 (= lt!2471430 (lemmaMoveElementToOtherListKeepsConcatEq!2832 Nil!66553 (h!73001 s!14361) (t!380420 s!14361) s!14361))))

(assert (=> b!6924793 (= e!4167431 (findConcatSeparation!3107 lt!2471254 r3!135 (++!14967 Nil!66553 (Cons!66553 (h!73001 s!14361) Nil!66553)) (t!380420 s!14361) s!14361))))

(declare-fun b!6924794 () Bool)

(declare-fun res!2823933 () Bool)

(assert (=> b!6924794 (=> (not res!2823933) (not e!4167433))))

(assert (=> b!6924794 (= res!2823933 (matchR!9063 r3!135 (_2!37084 (get!23327 lt!2471428))))))

(assert (= (and d!2165138 res!2823936) b!6924789))

(assert (= (and d!2165138 c!1285509) b!6924791))

(assert (= (and d!2165138 (not c!1285509)) b!6924787))

(assert (= (and b!6924787 c!1285508) b!6924786))

(assert (= (and b!6924787 (not c!1285508)) b!6924793))

(assert (= (and d!2165138 res!2823935) b!6924792))

(assert (= (and b!6924792 res!2823937) b!6924794))

(assert (= (and b!6924794 res!2823933) b!6924790))

(assert (= (and d!2165138 (not res!2823934)) b!6924788))

(declare-fun m!7633836 () Bool)

(assert (=> b!6924794 m!7633836))

(declare-fun m!7633838 () Bool)

(assert (=> b!6924794 m!7633838))

(declare-fun m!7633840 () Bool)

(assert (=> b!6924788 m!7633840))

(assert (=> b!6924792 m!7633836))

(declare-fun m!7633842 () Bool)

(assert (=> b!6924792 m!7633842))

(assert (=> d!2165138 m!7633840))

(declare-fun m!7633844 () Bool)

(assert (=> d!2165138 m!7633844))

(declare-fun m!7633846 () Bool)

(assert (=> d!2165138 m!7633846))

(assert (=> b!6924790 m!7633836))

(declare-fun m!7633848 () Bool)

(assert (=> b!6924790 m!7633848))

(declare-fun m!7633850 () Bool)

(assert (=> b!6924789 m!7633850))

(declare-fun m!7633852 () Bool)

(assert (=> b!6924793 m!7633852))

(assert (=> b!6924793 m!7633852))

(declare-fun m!7633854 () Bool)

(assert (=> b!6924793 m!7633854))

(declare-fun m!7633856 () Bool)

(assert (=> b!6924793 m!7633856))

(assert (=> b!6924793 m!7633852))

(declare-fun m!7633858 () Bool)

(assert (=> b!6924793 m!7633858))

(assert (=> b!6924197 d!2165138))

(declare-fun bs!1848305 () Bool)

(declare-fun b!6924805 () Bool)

(assert (= bs!1848305 (and b!6924805 b!6924700)))

(declare-fun lambda!393833 () Int)

(assert (=> bs!1848305 (not (= lambda!393833 lambda!393826))))

(declare-fun bs!1848306 () Bool)

(assert (= bs!1848306 (and b!6924805 d!2165060)))

(assert (=> bs!1848306 (not (= lambda!393833 lambda!393807))))

(declare-fun bs!1848308 () Bool)

(assert (= bs!1848308 (and b!6924805 d!2165084)))

(assert (=> bs!1848308 (not (= lambda!393833 lambda!393815))))

(declare-fun bs!1848309 () Bool)

(assert (= bs!1848309 (and b!6924805 d!2165054)))

(assert (=> bs!1848309 (not (= lambda!393833 lambda!393804))))

(declare-fun bs!1848310 () Bool)

(assert (= bs!1848310 (and b!6924805 b!6924215)))

(assert (=> bs!1848310 (not (= lambda!393833 lambda!393772))))

(declare-fun bs!1848311 () Bool)

(assert (= bs!1848311 (and b!6924805 b!6924681)))

(assert (=> bs!1848311 (= (and (= (_1!37084 lt!2471259) s!14361) (= (reg!17253 lt!2471254) (reg!17253 lt!2471273)) (= lt!2471254 lt!2471273)) (= lambda!393833 lambda!393821))))

(declare-fun bs!1848313 () Bool)

(assert (= bs!1848313 (and b!6924805 b!6924197)))

(assert (=> bs!1848313 (not (= lambda!393833 lambda!393769))))

(declare-fun bs!1848315 () Bool)

(assert (= bs!1848315 (and b!6924805 d!2165072)))

(assert (=> bs!1848315 (not (= lambda!393833 lambda!393808))))

(declare-fun bs!1848316 () Bool)

(assert (= bs!1848316 (and b!6924805 b!6924672)))

(assert (=> bs!1848316 (not (= lambda!393833 lambda!393824))))

(declare-fun bs!1848318 () Bool)

(assert (= bs!1848318 (and b!6924805 b!6924641)))

(assert (=> bs!1848318 (not (= lambda!393833 lambda!393819))))

(declare-fun bs!1848319 () Bool)

(assert (= bs!1848319 (and b!6924805 b!6924731)))

(assert (=> bs!1848319 (= (and (= (_1!37084 lt!2471259) (_2!37084 lt!2471250)) (= (reg!17253 lt!2471254) (reg!17253 r2!6280)) (= lt!2471254 r2!6280)) (= lambda!393833 lambda!393827))))

(assert (=> bs!1848310 (not (= lambda!393833 lambda!393771))))

(declare-fun bs!1848321 () Bool)

(assert (= bs!1848321 (and b!6924805 b!6924204)))

(assert (=> bs!1848321 (not (= lambda!393833 lambda!393774))))

(declare-fun bs!1848322 () Bool)

(assert (= bs!1848322 (and b!6924805 b!6924650)))

(assert (=> bs!1848322 (= (and (= (_1!37084 lt!2471259) s!14361) (= (reg!17253 lt!2471254) (reg!17253 lt!2471263)) (= lt!2471254 lt!2471263)) (= lambda!393833 lambda!393817))))

(assert (=> bs!1848321 (not (= lambda!393833 lambda!393773))))

(assert (=> bs!1848313 (not (= lambda!393833 lambda!393770))))

(declare-fun bs!1848323 () Bool)

(assert (= bs!1848323 (and b!6924805 b!6924554)))

(assert (=> bs!1848323 (not (= lambda!393833 lambda!393814))))

(assert (=> bs!1848309 (not (= lambda!393833 lambda!393803))))

(declare-fun bs!1848324 () Bool)

(assert (= bs!1848324 (and b!6924805 b!6924722)))

(assert (=> bs!1848324 (not (= lambda!393833 lambda!393829))))

(declare-fun bs!1848325 () Bool)

(assert (= bs!1848325 (and b!6924805 b!6924709)))

(assert (=> bs!1848325 (= (and (= (_1!37084 lt!2471259) (_1!37084 lt!2471250)) (= (reg!17253 lt!2471254) (reg!17253 r1!6342)) (= lt!2471254 r1!6342)) (= lambda!393833 lambda!393825))))

(declare-fun bs!1848326 () Bool)

(assert (= bs!1848326 (and b!6924805 b!6924563)))

(assert (=> bs!1848326 (= (and (= (_1!37084 lt!2471259) lt!2471255) (= (reg!17253 lt!2471254) (reg!17253 lt!2471249)) (= lt!2471254 lt!2471249)) (= lambda!393833 lambda!393813))))

(assert (=> bs!1848308 (not (= lambda!393833 lambda!393816))))

(assert (=> b!6924805 true))

(assert (=> b!6924805 true))

(declare-fun bs!1848327 () Bool)

(declare-fun b!6924796 () Bool)

(assert (= bs!1848327 (and b!6924796 b!6924700)))

(declare-fun lambda!393834 () Int)

(assert (=> bs!1848327 (= (and (= (_1!37084 lt!2471259) (_1!37084 lt!2471250)) (= (regOne!34360 lt!2471254) (regOne!34360 r1!6342)) (= (regTwo!34360 lt!2471254) (regTwo!34360 r1!6342))) (= lambda!393834 lambda!393826))))

(declare-fun bs!1848328 () Bool)

(assert (= bs!1848328 (and b!6924796 d!2165060)))

(assert (=> bs!1848328 (not (= lambda!393834 lambda!393807))))

(declare-fun bs!1848329 () Bool)

(assert (= bs!1848329 (and b!6924796 d!2165084)))

(assert (=> bs!1848329 (not (= lambda!393834 lambda!393815))))

(declare-fun bs!1848330 () Bool)

(assert (= bs!1848330 (and b!6924796 d!2165054)))

(assert (=> bs!1848330 (= (and (= (regOne!34360 lt!2471254) r1!6342) (= (regTwo!34360 lt!2471254) r2!6280)) (= lambda!393834 lambda!393804))))

(declare-fun bs!1848331 () Bool)

(assert (= bs!1848331 (and b!6924796 b!6924215)))

(assert (=> bs!1848331 (= (and (= (regOne!34360 lt!2471254) r1!6342) (= (regTwo!34360 lt!2471254) r2!6280)) (= lambda!393834 lambda!393772))))

(declare-fun bs!1848332 () Bool)

(assert (= bs!1848332 (and b!6924796 b!6924681)))

(assert (=> bs!1848332 (not (= lambda!393834 lambda!393821))))

(declare-fun bs!1848333 () Bool)

(assert (= bs!1848333 (and b!6924796 b!6924197)))

(assert (=> bs!1848333 (not (= lambda!393834 lambda!393769))))

(declare-fun bs!1848334 () Bool)

(assert (= bs!1848334 (and b!6924796 d!2165072)))

(assert (=> bs!1848334 (not (= lambda!393834 lambda!393808))))

(declare-fun bs!1848335 () Bool)

(assert (= bs!1848335 (and b!6924796 b!6924672)))

(assert (=> bs!1848335 (= (and (= (_1!37084 lt!2471259) s!14361) (= (regOne!34360 lt!2471254) (regOne!34360 lt!2471273)) (= (regTwo!34360 lt!2471254) (regTwo!34360 lt!2471273))) (= lambda!393834 lambda!393824))))

(declare-fun bs!1848336 () Bool)

(assert (= bs!1848336 (and b!6924796 b!6924641)))

(assert (=> bs!1848336 (= (and (= (_1!37084 lt!2471259) s!14361) (= (regOne!34360 lt!2471254) (regOne!34360 lt!2471263)) (= (regTwo!34360 lt!2471254) (regTwo!34360 lt!2471263))) (= lambda!393834 lambda!393819))))

(assert (=> bs!1848331 (not (= lambda!393834 lambda!393771))))

(declare-fun bs!1848337 () Bool)

(assert (= bs!1848337 (and b!6924796 b!6924204)))

(assert (=> bs!1848337 (= (and (= (_1!37084 lt!2471259) lt!2471255) (= (regOne!34360 lt!2471254) r2!6280) (= (regTwo!34360 lt!2471254) r3!135)) (= lambda!393834 lambda!393774))))

(declare-fun bs!1848338 () Bool)

(assert (= bs!1848338 (and b!6924796 b!6924650)))

(assert (=> bs!1848338 (not (= lambda!393834 lambda!393817))))

(assert (=> bs!1848337 (not (= lambda!393834 lambda!393773))))

(assert (=> bs!1848333 (= (and (= (_1!37084 lt!2471259) s!14361) (= (regOne!34360 lt!2471254) lt!2471254) (= (regTwo!34360 lt!2471254) r3!135)) (= lambda!393834 lambda!393770))))

(declare-fun bs!1848339 () Bool)

(assert (= bs!1848339 (and b!6924796 b!6924554)))

(assert (=> bs!1848339 (= (and (= (_1!37084 lt!2471259) lt!2471255) (= (regOne!34360 lt!2471254) (regOne!34360 lt!2471249)) (= (regTwo!34360 lt!2471254) (regTwo!34360 lt!2471249))) (= lambda!393834 lambda!393814))))

(assert (=> bs!1848330 (not (= lambda!393834 lambda!393803))))

(declare-fun bs!1848340 () Bool)

(assert (= bs!1848340 (and b!6924796 b!6924722)))

(assert (=> bs!1848340 (= (and (= (_1!37084 lt!2471259) (_2!37084 lt!2471250)) (= (regOne!34360 lt!2471254) (regOne!34360 r2!6280)) (= (regTwo!34360 lt!2471254) (regTwo!34360 r2!6280))) (= lambda!393834 lambda!393829))))

(declare-fun bs!1848341 () Bool)

(assert (= bs!1848341 (and b!6924796 b!6924709)))

(assert (=> bs!1848341 (not (= lambda!393834 lambda!393825))))

(declare-fun bs!1848342 () Bool)

(assert (= bs!1848342 (and b!6924796 b!6924563)))

(assert (=> bs!1848342 (not (= lambda!393834 lambda!393813))))

(assert (=> bs!1848329 (= (and (= (_1!37084 lt!2471259) lt!2471255) (= (regOne!34360 lt!2471254) r2!6280) (= (regTwo!34360 lt!2471254) r3!135)) (= lambda!393834 lambda!393816))))

(declare-fun bs!1848343 () Bool)

(assert (= bs!1848343 (and b!6924796 b!6924731)))

(assert (=> bs!1848343 (not (= lambda!393834 lambda!393827))))

(declare-fun bs!1848344 () Bool)

(assert (= bs!1848344 (and b!6924796 b!6924805)))

(assert (=> bs!1848344 (not (= lambda!393834 lambda!393833))))

(assert (=> b!6924796 true))

(assert (=> b!6924796 true))

(declare-fun bm!629380 () Bool)

(declare-fun call!629385 () Bool)

(assert (=> bm!629380 (= call!629385 (isEmpty!38808 (_1!37084 lt!2471259)))))

(declare-fun b!6924795 () Bool)

(declare-fun res!2823939 () Bool)

(declare-fun e!4167439 () Bool)

(assert (=> b!6924795 (=> res!2823939 e!4167439)))

(assert (=> b!6924795 (= res!2823939 call!629385)))

(declare-fun e!4167438 () Bool)

(assert (=> b!6924795 (= e!4167438 e!4167439)))

(declare-fun call!629386 () Bool)

(assert (=> b!6924796 (= e!4167438 call!629386)))

(declare-fun b!6924797 () Bool)

(declare-fun e!4167436 () Bool)

(assert (=> b!6924797 (= e!4167436 (= (_1!37084 lt!2471259) (Cons!66553 (c!1285404 lt!2471254) Nil!66553)))))

(declare-fun b!6924798 () Bool)

(declare-fun e!4167435 () Bool)

(declare-fun e!4167440 () Bool)

(assert (=> b!6924798 (= e!4167435 e!4167440)))

(declare-fun res!2823938 () Bool)

(assert (=> b!6924798 (= res!2823938 (not (is-EmptyLang!16924 lt!2471254)))))

(assert (=> b!6924798 (=> (not res!2823938) (not e!4167440))))

(declare-fun b!6924799 () Bool)

(declare-fun e!4167437 () Bool)

(assert (=> b!6924799 (= e!4167437 (matchRSpec!3981 (regTwo!34361 lt!2471254) (_1!37084 lt!2471259)))))

(declare-fun b!6924800 () Bool)

(declare-fun c!1285512 () Bool)

(assert (=> b!6924800 (= c!1285512 (is-ElementMatch!16924 lt!2471254))))

(assert (=> b!6924800 (= e!4167440 e!4167436)))

(declare-fun b!6924801 () Bool)

(declare-fun e!4167434 () Bool)

(assert (=> b!6924801 (= e!4167434 e!4167437)))

(declare-fun res!2823940 () Bool)

(assert (=> b!6924801 (= res!2823940 (matchRSpec!3981 (regOne!34361 lt!2471254) (_1!37084 lt!2471259)))))

(assert (=> b!6924801 (=> res!2823940 e!4167437)))

(declare-fun b!6924802 () Bool)

(assert (=> b!6924802 (= e!4167434 e!4167438)))

(declare-fun c!1285511 () Bool)

(assert (=> b!6924802 (= c!1285511 (is-Star!16924 lt!2471254))))

(declare-fun d!2165140 () Bool)

(declare-fun c!1285510 () Bool)

(assert (=> d!2165140 (= c!1285510 (is-EmptyExpr!16924 lt!2471254))))

(assert (=> d!2165140 (= (matchRSpec!3981 lt!2471254 (_1!37084 lt!2471259)) e!4167435)))

(declare-fun b!6924803 () Bool)

(declare-fun c!1285513 () Bool)

(assert (=> b!6924803 (= c!1285513 (is-Union!16924 lt!2471254))))

(assert (=> b!6924803 (= e!4167436 e!4167434)))

(declare-fun b!6924804 () Bool)

(assert (=> b!6924804 (= e!4167435 call!629385)))

(assert (=> b!6924805 (= e!4167439 call!629386)))

(declare-fun bm!629381 () Bool)

(assert (=> bm!629381 (= call!629386 (Exists!3926 (ite c!1285511 lambda!393833 lambda!393834)))))

(assert (= (and d!2165140 c!1285510) b!6924804))

(assert (= (and d!2165140 (not c!1285510)) b!6924798))

(assert (= (and b!6924798 res!2823938) b!6924800))

(assert (= (and b!6924800 c!1285512) b!6924797))

(assert (= (and b!6924800 (not c!1285512)) b!6924803))

(assert (= (and b!6924803 c!1285513) b!6924801))

(assert (= (and b!6924803 (not c!1285513)) b!6924802))

(assert (= (and b!6924801 (not res!2823940)) b!6924799))

(assert (= (and b!6924802 c!1285511) b!6924795))

(assert (= (and b!6924802 (not c!1285511)) b!6924796))

(assert (= (and b!6924795 (not res!2823939)) b!6924805))

(assert (= (or b!6924805 b!6924796) bm!629381))

(assert (= (or b!6924804 b!6924795) bm!629380))

(declare-fun m!7633882 () Bool)

(assert (=> bm!629380 m!7633882))

(declare-fun m!7633884 () Bool)

(assert (=> b!6924799 m!7633884))

(declare-fun m!7633886 () Bool)

(assert (=> b!6924801 m!7633886))

(declare-fun m!7633890 () Bool)

(assert (=> bm!629381 m!7633890))

(assert (=> b!6924197 d!2165140))

(declare-fun d!2165146 () Bool)

(assert (=> d!2165146 (= (get!23327 lt!2471262) (v!52964 lt!2471262))))

(assert (=> b!6924197 d!2165146))

(declare-fun bs!1848345 () Bool)

(declare-fun d!2165148 () Bool)

(assert (= bs!1848345 (and d!2165148 b!6924700)))

(declare-fun lambda!393835 () Int)

(assert (=> bs!1848345 (not (= lambda!393835 lambda!393826))))

(declare-fun bs!1848346 () Bool)

(assert (= bs!1848346 (and d!2165148 d!2165060)))

(assert (=> bs!1848346 (= (and (= s!14361 (_1!37084 lt!2471259)) (= lt!2471254 r1!6342) (= r3!135 r2!6280)) (= lambda!393835 lambda!393807))))

(declare-fun bs!1848347 () Bool)

(assert (= bs!1848347 (and d!2165148 d!2165084)))

(assert (=> bs!1848347 (= (and (= s!14361 lt!2471255) (= lt!2471254 r2!6280)) (= lambda!393835 lambda!393815))))

(declare-fun bs!1848348 () Bool)

(assert (= bs!1848348 (and d!2165148 d!2165054)))

(assert (=> bs!1848348 (not (= lambda!393835 lambda!393804))))

(declare-fun bs!1848349 () Bool)

(assert (= bs!1848349 (and d!2165148 b!6924215)))

(assert (=> bs!1848349 (not (= lambda!393835 lambda!393772))))

(declare-fun bs!1848350 () Bool)

(assert (= bs!1848350 (and d!2165148 b!6924681)))

(assert (=> bs!1848350 (not (= lambda!393835 lambda!393821))))

(declare-fun bs!1848351 () Bool)

(assert (= bs!1848351 (and d!2165148 b!6924197)))

(assert (=> bs!1848351 (= lambda!393835 lambda!393769)))

(declare-fun bs!1848352 () Bool)

(assert (= bs!1848352 (and d!2165148 d!2165072)))

(assert (=> bs!1848352 (= (and (= s!14361 lt!2471255) (= lt!2471254 r2!6280)) (= lambda!393835 lambda!393808))))

(declare-fun bs!1848353 () Bool)

(assert (= bs!1848353 (and d!2165148 b!6924672)))

(assert (=> bs!1848353 (not (= lambda!393835 lambda!393824))))

(declare-fun bs!1848354 () Bool)

(assert (= bs!1848354 (and d!2165148 b!6924641)))

(assert (=> bs!1848354 (not (= lambda!393835 lambda!393819))))

(assert (=> bs!1848349 (= (and (= s!14361 (_1!37084 lt!2471259)) (= lt!2471254 r1!6342) (= r3!135 r2!6280)) (= lambda!393835 lambda!393771))))

(declare-fun bs!1848355 () Bool)

(assert (= bs!1848355 (and d!2165148 b!6924204)))

(assert (=> bs!1848355 (not (= lambda!393835 lambda!393774))))

(declare-fun bs!1848357 () Bool)

(assert (= bs!1848357 (and d!2165148 b!6924650)))

(assert (=> bs!1848357 (not (= lambda!393835 lambda!393817))))

(assert (=> bs!1848351 (not (= lambda!393835 lambda!393770))))

(declare-fun bs!1848358 () Bool)

(assert (= bs!1848358 (and d!2165148 b!6924554)))

(assert (=> bs!1848358 (not (= lambda!393835 lambda!393814))))

(assert (=> bs!1848348 (= (and (= s!14361 (_1!37084 lt!2471259)) (= lt!2471254 r1!6342) (= r3!135 r2!6280)) (= lambda!393835 lambda!393803))))

(declare-fun bs!1848359 () Bool)

(assert (= bs!1848359 (and d!2165148 b!6924722)))

(assert (=> bs!1848359 (not (= lambda!393835 lambda!393829))))

(declare-fun bs!1848360 () Bool)

(assert (= bs!1848360 (and d!2165148 b!6924709)))

(assert (=> bs!1848360 (not (= lambda!393835 lambda!393825))))

(declare-fun bs!1848361 () Bool)

(assert (= bs!1848361 (and d!2165148 b!6924563)))

(assert (=> bs!1848361 (not (= lambda!393835 lambda!393813))))

(assert (=> bs!1848347 (not (= lambda!393835 lambda!393816))))

(declare-fun bs!1848362 () Bool)

(assert (= bs!1848362 (and d!2165148 b!6924731)))

(assert (=> bs!1848362 (not (= lambda!393835 lambda!393827))))

(declare-fun bs!1848363 () Bool)

(assert (= bs!1848363 (and d!2165148 b!6924805)))

(assert (=> bs!1848363 (not (= lambda!393835 lambda!393833))))

(declare-fun bs!1848364 () Bool)

(assert (= bs!1848364 (and d!2165148 b!6924796)))

(assert (=> bs!1848364 (not (= lambda!393835 lambda!393834))))

(assert (=> bs!1848355 (= (and (= s!14361 lt!2471255) (= lt!2471254 r2!6280)) (= lambda!393835 lambda!393773))))

(assert (=> d!2165148 true))

(assert (=> d!2165148 true))

(assert (=> d!2165148 true))

(assert (=> d!2165148 (= (isDefined!13396 (findConcatSeparation!3107 lt!2471254 r3!135 Nil!66553 s!14361 s!14361)) (Exists!3926 lambda!393835))))

(declare-fun lt!2471433 () Unit!160572)

(assert (=> d!2165148 (= lt!2471433 (choose!51560 lt!2471254 r3!135 s!14361))))

(assert (=> d!2165148 (validRegex!8630 lt!2471254)))

(assert (=> d!2165148 (= (lemmaFindConcatSeparationEquivalentToExists!2869 lt!2471254 r3!135 s!14361) lt!2471433)))

(declare-fun bs!1848365 () Bool)

(assert (= bs!1848365 d!2165148))

(assert (=> bs!1848365 m!7633846))

(declare-fun m!7633894 () Bool)

(assert (=> bs!1848365 m!7633894))

(declare-fun m!7633896 () Bool)

(assert (=> bs!1848365 m!7633896))

(assert (=> bs!1848365 m!7633348))

(declare-fun m!7633898 () Bool)

(assert (=> bs!1848365 m!7633898))

(assert (=> bs!1848365 m!7633348))

(assert (=> b!6924197 d!2165148))

(declare-fun b!6924834 () Bool)

(declare-fun e!4167460 () Bool)

(declare-fun e!4167459 () Bool)

(assert (=> b!6924834 (= e!4167460 e!4167459)))

(declare-fun c!1285520 () Bool)

(assert (=> b!6924834 (= c!1285520 (is-EmptyLang!16924 lt!2471254))))

(declare-fun b!6924835 () Bool)

(declare-fun res!2823961 () Bool)

(declare-fun e!4167457 () Bool)

(assert (=> b!6924835 (=> (not res!2823961) (not e!4167457))))

(assert (=> b!6924835 (= res!2823961 (isEmpty!38808 (tail!12933 (_1!37084 lt!2471259))))))

(declare-fun b!6924836 () Bool)

(assert (=> b!6924836 (= e!4167457 (= (head!13881 (_1!37084 lt!2471259)) (c!1285404 lt!2471254)))))

(declare-fun b!6924837 () Bool)

(declare-fun res!2823957 () Bool)

(declare-fun e!4167455 () Bool)

(assert (=> b!6924837 (=> res!2823957 e!4167455)))

(assert (=> b!6924837 (= res!2823957 (not (is-ElementMatch!16924 lt!2471254)))))

(assert (=> b!6924837 (= e!4167459 e!4167455)))

(declare-fun d!2165156 () Bool)

(assert (=> d!2165156 e!4167460))

(declare-fun c!1285522 () Bool)

(assert (=> d!2165156 (= c!1285522 (is-EmptyExpr!16924 lt!2471254))))

(declare-fun lt!2471434 () Bool)

(declare-fun e!4167461 () Bool)

(assert (=> d!2165156 (= lt!2471434 e!4167461)))

(declare-fun c!1285521 () Bool)

(assert (=> d!2165156 (= c!1285521 (isEmpty!38808 (_1!37084 lt!2471259)))))

(assert (=> d!2165156 (validRegex!8630 lt!2471254)))

(assert (=> d!2165156 (= (matchR!9063 lt!2471254 (_1!37084 lt!2471259)) lt!2471434)))

(declare-fun b!6924838 () Bool)

(assert (=> b!6924838 (= e!4167459 (not lt!2471434))))

(declare-fun b!6924839 () Bool)

(declare-fun e!4167458 () Bool)

(assert (=> b!6924839 (= e!4167455 e!4167458)))

(declare-fun res!2823964 () Bool)

(assert (=> b!6924839 (=> (not res!2823964) (not e!4167458))))

(assert (=> b!6924839 (= res!2823964 (not lt!2471434))))

(declare-fun b!6924840 () Bool)

(declare-fun res!2823958 () Bool)

(assert (=> b!6924840 (=> (not res!2823958) (not e!4167457))))

(declare-fun call!629389 () Bool)

(assert (=> b!6924840 (= res!2823958 (not call!629389))))

(declare-fun bm!629384 () Bool)

(assert (=> bm!629384 (= call!629389 (isEmpty!38808 (_1!37084 lt!2471259)))))

(declare-fun b!6924841 () Bool)

(declare-fun res!2823962 () Bool)

(assert (=> b!6924841 (=> res!2823962 e!4167455)))

(assert (=> b!6924841 (= res!2823962 e!4167457)))

(declare-fun res!2823963 () Bool)

(assert (=> b!6924841 (=> (not res!2823963) (not e!4167457))))

(assert (=> b!6924841 (= res!2823963 lt!2471434)))

(declare-fun b!6924842 () Bool)

(assert (=> b!6924842 (= e!4167460 (= lt!2471434 call!629389))))

(declare-fun b!6924843 () Bool)

(declare-fun res!2823960 () Bool)

(declare-fun e!4167456 () Bool)

(assert (=> b!6924843 (=> res!2823960 e!4167456)))

(assert (=> b!6924843 (= res!2823960 (not (isEmpty!38808 (tail!12933 (_1!37084 lt!2471259)))))))

(declare-fun b!6924844 () Bool)

(assert (=> b!6924844 (= e!4167456 (not (= (head!13881 (_1!37084 lt!2471259)) (c!1285404 lt!2471254))))))

(declare-fun b!6924845 () Bool)

(assert (=> b!6924845 (= e!4167461 (matchR!9063 (derivativeStep!5428 lt!2471254 (head!13881 (_1!37084 lt!2471259))) (tail!12933 (_1!37084 lt!2471259))))))

(declare-fun b!6924846 () Bool)

(assert (=> b!6924846 (= e!4167458 e!4167456)))

(declare-fun res!2823959 () Bool)

(assert (=> b!6924846 (=> res!2823959 e!4167456)))

(assert (=> b!6924846 (= res!2823959 call!629389)))

(declare-fun b!6924847 () Bool)

(assert (=> b!6924847 (= e!4167461 (nullable!6753 lt!2471254))))

(assert (= (and d!2165156 c!1285521) b!6924847))

(assert (= (and d!2165156 (not c!1285521)) b!6924845))

(assert (= (and d!2165156 c!1285522) b!6924842))

(assert (= (and d!2165156 (not c!1285522)) b!6924834))

(assert (= (and b!6924834 c!1285520) b!6924838))

(assert (= (and b!6924834 (not c!1285520)) b!6924837))

(assert (= (and b!6924837 (not res!2823957)) b!6924841))

(assert (= (and b!6924841 res!2823963) b!6924840))

(assert (= (and b!6924840 res!2823958) b!6924835))

(assert (= (and b!6924835 res!2823961) b!6924836))

(assert (= (and b!6924841 (not res!2823962)) b!6924839))

(assert (= (and b!6924839 res!2823964) b!6924846))

(assert (= (and b!6924846 (not res!2823959)) b!6924843))

(assert (= (and b!6924843 (not res!2823960)) b!6924844))

(assert (= (or b!6924842 b!6924846 b!6924840) bm!629384))

(declare-fun m!7633900 () Bool)

(assert (=> b!6924847 m!7633900))

(declare-fun m!7633902 () Bool)

(assert (=> b!6924844 m!7633902))

(assert (=> d!2165156 m!7633882))

(assert (=> d!2165156 m!7633846))

(assert (=> b!6924836 m!7633902))

(declare-fun m!7633904 () Bool)

(assert (=> b!6924835 m!7633904))

(assert (=> b!6924835 m!7633904))

(declare-fun m!7633906 () Bool)

(assert (=> b!6924835 m!7633906))

(assert (=> b!6924843 m!7633904))

(assert (=> b!6924843 m!7633904))

(assert (=> b!6924843 m!7633906))

(assert (=> b!6924845 m!7633902))

(assert (=> b!6924845 m!7633902))

(declare-fun m!7633908 () Bool)

(assert (=> b!6924845 m!7633908))

(assert (=> b!6924845 m!7633904))

(assert (=> b!6924845 m!7633908))

(assert (=> b!6924845 m!7633904))

(declare-fun m!7633910 () Bool)

(assert (=> b!6924845 m!7633910))

(assert (=> bm!629384 m!7633882))

(assert (=> b!6924197 d!2165156))

(declare-fun d!2165158 () Bool)

(assert (=> d!2165158 (= (Exists!3926 lambda!393769) (choose!51558 lambda!393769))))

(declare-fun bs!1848366 () Bool)

(assert (= bs!1848366 d!2165158))

(declare-fun m!7633912 () Bool)

(assert (=> bs!1848366 m!7633912))

(assert (=> b!6924197 d!2165158))

(declare-fun d!2165160 () Bool)

(assert (=> d!2165160 (= (matchR!9063 lt!2471254 (_1!37084 lt!2471259)) (matchRSpec!3981 lt!2471254 (_1!37084 lt!2471259)))))

(declare-fun lt!2471435 () Unit!160572)

(assert (=> d!2165160 (= lt!2471435 (choose!51562 lt!2471254 (_1!37084 lt!2471259)))))

(assert (=> d!2165160 (validRegex!8630 lt!2471254)))

(assert (=> d!2165160 (= (mainMatchTheorem!3981 lt!2471254 (_1!37084 lt!2471259)) lt!2471435)))

(declare-fun bs!1848367 () Bool)

(assert (= bs!1848367 d!2165160))

(assert (=> bs!1848367 m!7633338))

(assert (=> bs!1848367 m!7633352))

(declare-fun m!7633914 () Bool)

(assert (=> bs!1848367 m!7633914))

(assert (=> bs!1848367 m!7633846))

(assert (=> b!6924197 d!2165160))

(declare-fun d!2165162 () Bool)

(assert (=> d!2165162 (= (isDefined!13396 lt!2471262) (not (isEmpty!38809 lt!2471262)))))

(declare-fun bs!1848368 () Bool)

(assert (= bs!1848368 d!2165162))

(declare-fun m!7633916 () Bool)

(assert (=> bs!1848368 m!7633916))

(assert (=> b!6924197 d!2165162))

(declare-fun bs!1848369 () Bool)

(declare-fun d!2165164 () Bool)

(assert (= bs!1848369 (and d!2165164 b!6924700)))

(declare-fun lambda!393836 () Int)

(assert (=> bs!1848369 (not (= lambda!393836 lambda!393826))))

(declare-fun bs!1848370 () Bool)

(assert (= bs!1848370 (and d!2165164 d!2165060)))

(assert (=> bs!1848370 (= (and (= s!14361 (_1!37084 lt!2471259)) (= lt!2471254 r1!6342) (= r3!135 r2!6280)) (= lambda!393836 lambda!393807))))

(declare-fun bs!1848371 () Bool)

(assert (= bs!1848371 (and d!2165164 d!2165084)))

(assert (=> bs!1848371 (= (and (= s!14361 lt!2471255) (= lt!2471254 r2!6280)) (= lambda!393836 lambda!393815))))

(declare-fun bs!1848372 () Bool)

(assert (= bs!1848372 (and d!2165164 d!2165054)))

(assert (=> bs!1848372 (not (= lambda!393836 lambda!393804))))

(declare-fun bs!1848373 () Bool)

(assert (= bs!1848373 (and d!2165164 b!6924215)))

(assert (=> bs!1848373 (not (= lambda!393836 lambda!393772))))

(declare-fun bs!1848374 () Bool)

(assert (= bs!1848374 (and d!2165164 b!6924681)))

(assert (=> bs!1848374 (not (= lambda!393836 lambda!393821))))

(declare-fun bs!1848375 () Bool)

(assert (= bs!1848375 (and d!2165164 b!6924197)))

(assert (=> bs!1848375 (= lambda!393836 lambda!393769)))

(declare-fun bs!1848376 () Bool)

(assert (= bs!1848376 (and d!2165164 d!2165072)))

(assert (=> bs!1848376 (= (and (= s!14361 lt!2471255) (= lt!2471254 r2!6280)) (= lambda!393836 lambda!393808))))

(declare-fun bs!1848377 () Bool)

(assert (= bs!1848377 (and d!2165164 b!6924672)))

(assert (=> bs!1848377 (not (= lambda!393836 lambda!393824))))

(declare-fun bs!1848378 () Bool)

(assert (= bs!1848378 (and d!2165164 b!6924641)))

(assert (=> bs!1848378 (not (= lambda!393836 lambda!393819))))

(assert (=> bs!1848373 (= (and (= s!14361 (_1!37084 lt!2471259)) (= lt!2471254 r1!6342) (= r3!135 r2!6280)) (= lambda!393836 lambda!393771))))

(declare-fun bs!1848379 () Bool)

(assert (= bs!1848379 (and d!2165164 b!6924204)))

(assert (=> bs!1848379 (not (= lambda!393836 lambda!393774))))

(declare-fun bs!1848380 () Bool)

(assert (= bs!1848380 (and d!2165164 b!6924650)))

(assert (=> bs!1848380 (not (= lambda!393836 lambda!393817))))

(assert (=> bs!1848375 (not (= lambda!393836 lambda!393770))))

(declare-fun bs!1848381 () Bool)

(assert (= bs!1848381 (and d!2165164 b!6924554)))

(assert (=> bs!1848381 (not (= lambda!393836 lambda!393814))))

(assert (=> bs!1848372 (= (and (= s!14361 (_1!37084 lt!2471259)) (= lt!2471254 r1!6342) (= r3!135 r2!6280)) (= lambda!393836 lambda!393803))))

(declare-fun bs!1848382 () Bool)

(assert (= bs!1848382 (and d!2165164 b!6924722)))

(assert (=> bs!1848382 (not (= lambda!393836 lambda!393829))))

(declare-fun bs!1848383 () Bool)

(assert (= bs!1848383 (and d!2165164 b!6924709)))

(assert (=> bs!1848383 (not (= lambda!393836 lambda!393825))))

(declare-fun bs!1848384 () Bool)

(assert (= bs!1848384 (and d!2165164 b!6924563)))

(assert (=> bs!1848384 (not (= lambda!393836 lambda!393813))))

(assert (=> bs!1848371 (not (= lambda!393836 lambda!393816))))

(declare-fun bs!1848385 () Bool)

(assert (= bs!1848385 (and d!2165164 b!6924731)))

(assert (=> bs!1848385 (not (= lambda!393836 lambda!393827))))

(declare-fun bs!1848386 () Bool)

(assert (= bs!1848386 (and d!2165164 b!6924805)))

(assert (=> bs!1848386 (not (= lambda!393836 lambda!393833))))

(declare-fun bs!1848387 () Bool)

(assert (= bs!1848387 (and d!2165164 d!2165148)))

(assert (=> bs!1848387 (= lambda!393836 lambda!393835)))

(declare-fun bs!1848388 () Bool)

(assert (= bs!1848388 (and d!2165164 b!6924796)))

(assert (=> bs!1848388 (not (= lambda!393836 lambda!393834))))

(assert (=> bs!1848379 (= (and (= s!14361 lt!2471255) (= lt!2471254 r2!6280)) (= lambda!393836 lambda!393773))))

(assert (=> d!2165164 true))

(assert (=> d!2165164 true))

(assert (=> d!2165164 true))

(declare-fun lambda!393837 () Int)

(assert (=> bs!1848369 (= (and (= s!14361 (_1!37084 lt!2471250)) (= lt!2471254 (regOne!34360 r1!6342)) (= r3!135 (regTwo!34360 r1!6342))) (= lambda!393837 lambda!393826))))

(assert (=> bs!1848370 (not (= lambda!393837 lambda!393807))))

(assert (=> bs!1848371 (not (= lambda!393837 lambda!393815))))

(assert (=> bs!1848372 (= (and (= s!14361 (_1!37084 lt!2471259)) (= lt!2471254 r1!6342) (= r3!135 r2!6280)) (= lambda!393837 lambda!393804))))

(assert (=> bs!1848373 (= (and (= s!14361 (_1!37084 lt!2471259)) (= lt!2471254 r1!6342) (= r3!135 r2!6280)) (= lambda!393837 lambda!393772))))

(assert (=> bs!1848374 (not (= lambda!393837 lambda!393821))))

(declare-fun bs!1848389 () Bool)

(assert (= bs!1848389 d!2165164))

(assert (=> bs!1848389 (not (= lambda!393837 lambda!393836))))

(assert (=> bs!1848375 (not (= lambda!393837 lambda!393769))))

(assert (=> bs!1848376 (not (= lambda!393837 lambda!393808))))

(assert (=> bs!1848377 (= (and (= lt!2471254 (regOne!34360 lt!2471273)) (= r3!135 (regTwo!34360 lt!2471273))) (= lambda!393837 lambda!393824))))

(assert (=> bs!1848378 (= (and (= lt!2471254 (regOne!34360 lt!2471263)) (= r3!135 (regTwo!34360 lt!2471263))) (= lambda!393837 lambda!393819))))

(assert (=> bs!1848373 (not (= lambda!393837 lambda!393771))))

(assert (=> bs!1848379 (= (and (= s!14361 lt!2471255) (= lt!2471254 r2!6280)) (= lambda!393837 lambda!393774))))

(assert (=> bs!1848380 (not (= lambda!393837 lambda!393817))))

(assert (=> bs!1848375 (= lambda!393837 lambda!393770)))

(assert (=> bs!1848381 (= (and (= s!14361 lt!2471255) (= lt!2471254 (regOne!34360 lt!2471249)) (= r3!135 (regTwo!34360 lt!2471249))) (= lambda!393837 lambda!393814))))

(assert (=> bs!1848372 (not (= lambda!393837 lambda!393803))))

(assert (=> bs!1848382 (= (and (= s!14361 (_2!37084 lt!2471250)) (= lt!2471254 (regOne!34360 r2!6280)) (= r3!135 (regTwo!34360 r2!6280))) (= lambda!393837 lambda!393829))))

(assert (=> bs!1848383 (not (= lambda!393837 lambda!393825))))

(assert (=> bs!1848384 (not (= lambda!393837 lambda!393813))))

(assert (=> bs!1848371 (= (and (= s!14361 lt!2471255) (= lt!2471254 r2!6280)) (= lambda!393837 lambda!393816))))

(assert (=> bs!1848385 (not (= lambda!393837 lambda!393827))))

(assert (=> bs!1848386 (not (= lambda!393837 lambda!393833))))

(assert (=> bs!1848387 (not (= lambda!393837 lambda!393835))))

(assert (=> bs!1848388 (= (and (= s!14361 (_1!37084 lt!2471259)) (= lt!2471254 (regOne!34360 lt!2471254)) (= r3!135 (regTwo!34360 lt!2471254))) (= lambda!393837 lambda!393834))))

(assert (=> bs!1848379 (not (= lambda!393837 lambda!393773))))

(assert (=> d!2165164 true))

(assert (=> d!2165164 true))

(assert (=> d!2165164 true))

(assert (=> d!2165164 (= (Exists!3926 lambda!393836) (Exists!3926 lambda!393837))))

(declare-fun lt!2471436 () Unit!160572)

(assert (=> d!2165164 (= lt!2471436 (choose!51559 lt!2471254 r3!135 s!14361))))

(assert (=> d!2165164 (validRegex!8630 lt!2471254)))

(assert (=> d!2165164 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2393 lt!2471254 r3!135 s!14361) lt!2471436)))

(declare-fun m!7633918 () Bool)

(assert (=> bs!1848389 m!7633918))

(declare-fun m!7633920 () Bool)

(assert (=> bs!1848389 m!7633920))

(declare-fun m!7633922 () Bool)

(assert (=> bs!1848389 m!7633922))

(assert (=> bs!1848389 m!7633846))

(assert (=> b!6924197 d!2165164))

(declare-fun b!6924848 () Bool)

(declare-fun res!2823969 () Bool)

(declare-fun e!4167468 () Bool)

(assert (=> b!6924848 (=> (not res!2823969) (not e!4167468))))

(declare-fun call!629390 () Bool)

(assert (=> b!6924848 (= res!2823969 call!629390)))

(declare-fun e!4167465 () Bool)

(assert (=> b!6924848 (= e!4167465 e!4167468)))

(declare-fun bm!629385 () Bool)

(declare-fun call!629392 () Bool)

(assert (=> bm!629385 (= call!629390 call!629392)))

(declare-fun b!6924849 () Bool)

(declare-fun e!4167463 () Bool)

(declare-fun e!4167464 () Bool)

(assert (=> b!6924849 (= e!4167463 e!4167464)))

(declare-fun res!2823965 () Bool)

(assert (=> b!6924849 (= res!2823965 (not (nullable!6753 (reg!17253 lt!2471249))))))

(assert (=> b!6924849 (=> (not res!2823965) (not e!4167464))))

(declare-fun bm!629386 () Bool)

(declare-fun call!629391 () Bool)

(declare-fun c!1285523 () Bool)

(assert (=> bm!629386 (= call!629391 (validRegex!8630 (ite c!1285523 (regTwo!34361 lt!2471249) (regOne!34360 lt!2471249))))))

(declare-fun c!1285524 () Bool)

(declare-fun bm!629387 () Bool)

(assert (=> bm!629387 (= call!629392 (validRegex!8630 (ite c!1285524 (reg!17253 lt!2471249) (ite c!1285523 (regOne!34361 lt!2471249) (regTwo!34360 lt!2471249)))))))

(declare-fun b!6924850 () Bool)

(declare-fun e!4167462 () Bool)

(assert (=> b!6924850 (= e!4167462 e!4167463)))

(assert (=> b!6924850 (= c!1285524 (is-Star!16924 lt!2471249))))

(declare-fun b!6924851 () Bool)

(declare-fun res!2823968 () Bool)

(declare-fun e!4167467 () Bool)

(assert (=> b!6924851 (=> res!2823968 e!4167467)))

(assert (=> b!6924851 (= res!2823968 (not (is-Concat!25769 lt!2471249)))))

(assert (=> b!6924851 (= e!4167465 e!4167467)))

(declare-fun b!6924853 () Bool)

(declare-fun e!4167466 () Bool)

(assert (=> b!6924853 (= e!4167466 call!629390)))

(declare-fun b!6924854 () Bool)

(assert (=> b!6924854 (= e!4167468 call!629391)))

(declare-fun b!6924855 () Bool)

(assert (=> b!6924855 (= e!4167467 e!4167466)))

(declare-fun res!2823967 () Bool)

(assert (=> b!6924855 (=> (not res!2823967) (not e!4167466))))

(assert (=> b!6924855 (= res!2823967 call!629391)))

(declare-fun b!6924856 () Bool)

(assert (=> b!6924856 (= e!4167464 call!629392)))

(declare-fun d!2165166 () Bool)

(declare-fun res!2823966 () Bool)

(assert (=> d!2165166 (=> res!2823966 e!4167462)))

(assert (=> d!2165166 (= res!2823966 (is-ElementMatch!16924 lt!2471249))))

(assert (=> d!2165166 (= (validRegex!8630 lt!2471249) e!4167462)))

(declare-fun b!6924852 () Bool)

(assert (=> b!6924852 (= e!4167463 e!4167465)))

(assert (=> b!6924852 (= c!1285523 (is-Union!16924 lt!2471249))))

(assert (= (and d!2165166 (not res!2823966)) b!6924850))

(assert (= (and b!6924850 c!1285524) b!6924849))

(assert (= (and b!6924850 (not c!1285524)) b!6924852))

(assert (= (and b!6924849 res!2823965) b!6924856))

(assert (= (and b!6924852 c!1285523) b!6924848))

(assert (= (and b!6924852 (not c!1285523)) b!6924851))

(assert (= (and b!6924848 res!2823969) b!6924854))

(assert (= (and b!6924851 (not res!2823968)) b!6924855))

(assert (= (and b!6924855 res!2823967) b!6924853))

(assert (= (or b!6924848 b!6924853) bm!629385))

(assert (= (or b!6924854 b!6924855) bm!629386))

(assert (= (or b!6924856 bm!629385) bm!629387))

(declare-fun m!7633924 () Bool)

(assert (=> b!6924849 m!7633924))

(declare-fun m!7633926 () Bool)

(assert (=> bm!629386 m!7633926))

(declare-fun m!7633928 () Bool)

(assert (=> bm!629387 m!7633928))

(assert (=> b!6924212 d!2165166))

(declare-fun b!6924857 () Bool)

(declare-fun e!4167474 () Bool)

(declare-fun e!4167473 () Bool)

(assert (=> b!6924857 (= e!4167474 e!4167473)))

(declare-fun c!1285525 () Bool)

(assert (=> b!6924857 (= c!1285525 (is-EmptyLang!16924 r2!6280))))

(declare-fun b!6924858 () Bool)

(declare-fun res!2823974 () Bool)

(declare-fun e!4167471 () Bool)

(assert (=> b!6924858 (=> (not res!2823974) (not e!4167471))))

(assert (=> b!6924858 (= res!2823974 (isEmpty!38808 (tail!12933 (_2!37084 lt!2471250))))))

(declare-fun b!6924859 () Bool)

(assert (=> b!6924859 (= e!4167471 (= (head!13881 (_2!37084 lt!2471250)) (c!1285404 r2!6280)))))

(declare-fun b!6924860 () Bool)

(declare-fun res!2823970 () Bool)

(declare-fun e!4167469 () Bool)

(assert (=> b!6924860 (=> res!2823970 e!4167469)))

(assert (=> b!6924860 (= res!2823970 (not (is-ElementMatch!16924 r2!6280)))))

(assert (=> b!6924860 (= e!4167473 e!4167469)))

(declare-fun d!2165168 () Bool)

(assert (=> d!2165168 e!4167474))

(declare-fun c!1285527 () Bool)

(assert (=> d!2165168 (= c!1285527 (is-EmptyExpr!16924 r2!6280))))

(declare-fun lt!2471437 () Bool)

(declare-fun e!4167475 () Bool)

(assert (=> d!2165168 (= lt!2471437 e!4167475)))

(declare-fun c!1285526 () Bool)

(assert (=> d!2165168 (= c!1285526 (isEmpty!38808 (_2!37084 lt!2471250)))))

(assert (=> d!2165168 (validRegex!8630 r2!6280)))

(assert (=> d!2165168 (= (matchR!9063 r2!6280 (_2!37084 lt!2471250)) lt!2471437)))

(declare-fun b!6924861 () Bool)

(assert (=> b!6924861 (= e!4167473 (not lt!2471437))))

(declare-fun b!6924862 () Bool)

(declare-fun e!4167472 () Bool)

(assert (=> b!6924862 (= e!4167469 e!4167472)))

(declare-fun res!2823977 () Bool)

(assert (=> b!6924862 (=> (not res!2823977) (not e!4167472))))

(assert (=> b!6924862 (= res!2823977 (not lt!2471437))))

(declare-fun b!6924863 () Bool)

(declare-fun res!2823971 () Bool)

(assert (=> b!6924863 (=> (not res!2823971) (not e!4167471))))

(declare-fun call!629393 () Bool)

(assert (=> b!6924863 (= res!2823971 (not call!629393))))

(declare-fun bm!629388 () Bool)

(assert (=> bm!629388 (= call!629393 (isEmpty!38808 (_2!37084 lt!2471250)))))

(declare-fun b!6924864 () Bool)

(declare-fun res!2823975 () Bool)

(assert (=> b!6924864 (=> res!2823975 e!4167469)))

(assert (=> b!6924864 (= res!2823975 e!4167471)))

(declare-fun res!2823976 () Bool)

(assert (=> b!6924864 (=> (not res!2823976) (not e!4167471))))

(assert (=> b!6924864 (= res!2823976 lt!2471437)))

(declare-fun b!6924865 () Bool)

(assert (=> b!6924865 (= e!4167474 (= lt!2471437 call!629393))))

(declare-fun b!6924866 () Bool)

(declare-fun res!2823973 () Bool)

(declare-fun e!4167470 () Bool)

(assert (=> b!6924866 (=> res!2823973 e!4167470)))

(assert (=> b!6924866 (= res!2823973 (not (isEmpty!38808 (tail!12933 (_2!37084 lt!2471250)))))))

(declare-fun b!6924867 () Bool)

(assert (=> b!6924867 (= e!4167470 (not (= (head!13881 (_2!37084 lt!2471250)) (c!1285404 r2!6280))))))

(declare-fun b!6924868 () Bool)

(assert (=> b!6924868 (= e!4167475 (matchR!9063 (derivativeStep!5428 r2!6280 (head!13881 (_2!37084 lt!2471250))) (tail!12933 (_2!37084 lt!2471250))))))

(declare-fun b!6924869 () Bool)

(assert (=> b!6924869 (= e!4167472 e!4167470)))

(declare-fun res!2823972 () Bool)

(assert (=> b!6924869 (=> res!2823972 e!4167470)))

(assert (=> b!6924869 (= res!2823972 call!629393)))

(declare-fun b!6924870 () Bool)

(assert (=> b!6924870 (= e!4167475 (nullable!6753 r2!6280))))

(assert (= (and d!2165168 c!1285526) b!6924870))

(assert (= (and d!2165168 (not c!1285526)) b!6924868))

(assert (= (and d!2165168 c!1285527) b!6924865))

(assert (= (and d!2165168 (not c!1285527)) b!6924857))

(assert (= (and b!6924857 c!1285525) b!6924861))

(assert (= (and b!6924857 (not c!1285525)) b!6924860))

(assert (= (and b!6924860 (not res!2823970)) b!6924864))

(assert (= (and b!6924864 res!2823976) b!6924863))

(assert (= (and b!6924863 res!2823971) b!6924858))

(assert (= (and b!6924858 res!2823974) b!6924859))

(assert (= (and b!6924864 (not res!2823975)) b!6924862))

(assert (= (and b!6924862 res!2823977) b!6924869))

(assert (= (and b!6924869 (not res!2823972)) b!6924866))

(assert (= (and b!6924866 (not res!2823973)) b!6924867))

(assert (= (or b!6924865 b!6924869 b!6924863) bm!629388))

(declare-fun m!7633930 () Bool)

(assert (=> b!6924870 m!7633930))

(declare-fun m!7633932 () Bool)

(assert (=> b!6924867 m!7633932))

(assert (=> d!2165168 m!7633764))

(assert (=> d!2165168 m!7633330))

(assert (=> b!6924859 m!7633932))

(declare-fun m!7633934 () Bool)

(assert (=> b!6924858 m!7633934))

(assert (=> b!6924858 m!7633934))

(declare-fun m!7633936 () Bool)

(assert (=> b!6924858 m!7633936))

(assert (=> b!6924866 m!7633934))

(assert (=> b!6924866 m!7633934))

(assert (=> b!6924866 m!7633936))

(assert (=> b!6924868 m!7633932))

(assert (=> b!6924868 m!7633932))

(declare-fun m!7633938 () Bool)

(assert (=> b!6924868 m!7633938))

(assert (=> b!6924868 m!7633934))

(assert (=> b!6924868 m!7633938))

(assert (=> b!6924868 m!7633934))

(declare-fun m!7633940 () Bool)

(assert (=> b!6924868 m!7633940))

(assert (=> bm!629388 m!7633764))

(assert (=> b!6924200 d!2165168))

(declare-fun b!6924883 () Bool)

(declare-fun e!4167478 () Bool)

(declare-fun tp!1908639 () Bool)

(assert (=> b!6924883 (= e!4167478 tp!1908639)))

(declare-fun b!6924884 () Bool)

(declare-fun tp!1908641 () Bool)

(declare-fun tp!1908642 () Bool)

(assert (=> b!6924884 (= e!4167478 (and tp!1908641 tp!1908642))))

(assert (=> b!6924199 (= tp!1908576 e!4167478)))

(declare-fun b!6924882 () Bool)

(declare-fun tp!1908638 () Bool)

(declare-fun tp!1908640 () Bool)

(assert (=> b!6924882 (= e!4167478 (and tp!1908638 tp!1908640))))

(declare-fun b!6924881 () Bool)

(assert (=> b!6924881 (= e!4167478 tp_is_empty!43073)))

(assert (= (and b!6924199 (is-ElementMatch!16924 (reg!17253 r1!6342))) b!6924881))

(assert (= (and b!6924199 (is-Concat!25769 (reg!17253 r1!6342))) b!6924882))

(assert (= (and b!6924199 (is-Star!16924 (reg!17253 r1!6342))) b!6924883))

(assert (= (and b!6924199 (is-Union!16924 (reg!17253 r1!6342))) b!6924884))

(declare-fun b!6924889 () Bool)

(declare-fun e!4167481 () Bool)

(declare-fun tp!1908645 () Bool)

(assert (=> b!6924889 (= e!4167481 (and tp_is_empty!43073 tp!1908645))))

(assert (=> b!6924220 (= tp!1908568 e!4167481)))

(assert (= (and b!6924220 (is-Cons!66553 (t!380420 s!14361))) b!6924889))

(declare-fun b!6924892 () Bool)

(declare-fun e!4167482 () Bool)

(declare-fun tp!1908647 () Bool)

(assert (=> b!6924892 (= e!4167482 tp!1908647)))

(declare-fun b!6924893 () Bool)

(declare-fun tp!1908649 () Bool)

(declare-fun tp!1908650 () Bool)

(assert (=> b!6924893 (= e!4167482 (and tp!1908649 tp!1908650))))

(assert (=> b!6924203 (= tp!1908567 e!4167482)))

(declare-fun b!6924891 () Bool)

(declare-fun tp!1908646 () Bool)

(declare-fun tp!1908648 () Bool)

(assert (=> b!6924891 (= e!4167482 (and tp!1908646 tp!1908648))))

(declare-fun b!6924890 () Bool)

(assert (=> b!6924890 (= e!4167482 tp_is_empty!43073)))

(assert (= (and b!6924203 (is-ElementMatch!16924 (regOne!34361 r1!6342))) b!6924890))

(assert (= (and b!6924203 (is-Concat!25769 (regOne!34361 r1!6342))) b!6924891))

(assert (= (and b!6924203 (is-Star!16924 (regOne!34361 r1!6342))) b!6924892))

(assert (= (and b!6924203 (is-Union!16924 (regOne!34361 r1!6342))) b!6924893))

(declare-fun b!6924896 () Bool)

(declare-fun e!4167483 () Bool)

(declare-fun tp!1908652 () Bool)

(assert (=> b!6924896 (= e!4167483 tp!1908652)))

(declare-fun b!6924897 () Bool)

(declare-fun tp!1908654 () Bool)

(declare-fun tp!1908655 () Bool)

(assert (=> b!6924897 (= e!4167483 (and tp!1908654 tp!1908655))))

(assert (=> b!6924203 (= tp!1908579 e!4167483)))

(declare-fun b!6924895 () Bool)

(declare-fun tp!1908651 () Bool)

(declare-fun tp!1908653 () Bool)

(assert (=> b!6924895 (= e!4167483 (and tp!1908651 tp!1908653))))

(declare-fun b!6924894 () Bool)

(assert (=> b!6924894 (= e!4167483 tp_is_empty!43073)))

(assert (= (and b!6924203 (is-ElementMatch!16924 (regTwo!34361 r1!6342))) b!6924894))

(assert (= (and b!6924203 (is-Concat!25769 (regTwo!34361 r1!6342))) b!6924895))

(assert (= (and b!6924203 (is-Star!16924 (regTwo!34361 r1!6342))) b!6924896))

(assert (= (and b!6924203 (is-Union!16924 (regTwo!34361 r1!6342))) b!6924897))

(declare-fun b!6924900 () Bool)

(declare-fun e!4167484 () Bool)

(declare-fun tp!1908657 () Bool)

(assert (=> b!6924900 (= e!4167484 tp!1908657)))

(declare-fun b!6924901 () Bool)

(declare-fun tp!1908659 () Bool)

(declare-fun tp!1908660 () Bool)

(assert (=> b!6924901 (= e!4167484 (and tp!1908659 tp!1908660))))

(assert (=> b!6924219 (= tp!1908566 e!4167484)))

(declare-fun b!6924899 () Bool)

(declare-fun tp!1908656 () Bool)

(declare-fun tp!1908658 () Bool)

(assert (=> b!6924899 (= e!4167484 (and tp!1908656 tp!1908658))))

(declare-fun b!6924898 () Bool)

(assert (=> b!6924898 (= e!4167484 tp_is_empty!43073)))

(assert (= (and b!6924219 (is-ElementMatch!16924 (reg!17253 r2!6280))) b!6924898))

(assert (= (and b!6924219 (is-Concat!25769 (reg!17253 r2!6280))) b!6924899))

(assert (= (and b!6924219 (is-Star!16924 (reg!17253 r2!6280))) b!6924900))

(assert (= (and b!6924219 (is-Union!16924 (reg!17253 r2!6280))) b!6924901))

(declare-fun b!6924904 () Bool)

(declare-fun e!4167485 () Bool)

(declare-fun tp!1908662 () Bool)

(assert (=> b!6924904 (= e!4167485 tp!1908662)))

(declare-fun b!6924905 () Bool)

(declare-fun tp!1908664 () Bool)

(declare-fun tp!1908665 () Bool)

(assert (=> b!6924905 (= e!4167485 (and tp!1908664 tp!1908665))))

(assert (=> b!6924213 (= tp!1908575 e!4167485)))

(declare-fun b!6924903 () Bool)

(declare-fun tp!1908661 () Bool)

(declare-fun tp!1908663 () Bool)

(assert (=> b!6924903 (= e!4167485 (and tp!1908661 tp!1908663))))

(declare-fun b!6924902 () Bool)

(assert (=> b!6924902 (= e!4167485 tp_is_empty!43073)))

(assert (= (and b!6924213 (is-ElementMatch!16924 (regOne!34360 r2!6280))) b!6924902))

(assert (= (and b!6924213 (is-Concat!25769 (regOne!34360 r2!6280))) b!6924903))

(assert (= (and b!6924213 (is-Star!16924 (regOne!34360 r2!6280))) b!6924904))

(assert (= (and b!6924213 (is-Union!16924 (regOne!34360 r2!6280))) b!6924905))

(declare-fun b!6924908 () Bool)

(declare-fun e!4167486 () Bool)

(declare-fun tp!1908667 () Bool)

(assert (=> b!6924908 (= e!4167486 tp!1908667)))

(declare-fun b!6924909 () Bool)

(declare-fun tp!1908669 () Bool)

(declare-fun tp!1908670 () Bool)

(assert (=> b!6924909 (= e!4167486 (and tp!1908669 tp!1908670))))

(assert (=> b!6924213 (= tp!1908573 e!4167486)))

(declare-fun b!6924907 () Bool)

(declare-fun tp!1908666 () Bool)

(declare-fun tp!1908668 () Bool)

(assert (=> b!6924907 (= e!4167486 (and tp!1908666 tp!1908668))))

(declare-fun b!6924906 () Bool)

(assert (=> b!6924906 (= e!4167486 tp_is_empty!43073)))

(assert (= (and b!6924213 (is-ElementMatch!16924 (regTwo!34360 r2!6280))) b!6924906))

(assert (= (and b!6924213 (is-Concat!25769 (regTwo!34360 r2!6280))) b!6924907))

(assert (= (and b!6924213 (is-Star!16924 (regTwo!34360 r2!6280))) b!6924908))

(assert (= (and b!6924213 (is-Union!16924 (regTwo!34360 r2!6280))) b!6924909))

(declare-fun b!6924912 () Bool)

(declare-fun e!4167487 () Bool)

(declare-fun tp!1908672 () Bool)

(assert (=> b!6924912 (= e!4167487 tp!1908672)))

(declare-fun b!6924913 () Bool)

(declare-fun tp!1908674 () Bool)

(declare-fun tp!1908675 () Bool)

(assert (=> b!6924913 (= e!4167487 (and tp!1908674 tp!1908675))))

(assert (=> b!6924202 (= tp!1908564 e!4167487)))

(declare-fun b!6924911 () Bool)

(declare-fun tp!1908671 () Bool)

(declare-fun tp!1908673 () Bool)

(assert (=> b!6924911 (= e!4167487 (and tp!1908671 tp!1908673))))

(declare-fun b!6924910 () Bool)

(assert (=> b!6924910 (= e!4167487 tp_is_empty!43073)))

(assert (= (and b!6924202 (is-ElementMatch!16924 (regOne!34360 r1!6342))) b!6924910))

(assert (= (and b!6924202 (is-Concat!25769 (regOne!34360 r1!6342))) b!6924911))

(assert (= (and b!6924202 (is-Star!16924 (regOne!34360 r1!6342))) b!6924912))

(assert (= (and b!6924202 (is-Union!16924 (regOne!34360 r1!6342))) b!6924913))

(declare-fun b!6924916 () Bool)

(declare-fun e!4167488 () Bool)

(declare-fun tp!1908677 () Bool)

(assert (=> b!6924916 (= e!4167488 tp!1908677)))

(declare-fun b!6924917 () Bool)

(declare-fun tp!1908679 () Bool)

(declare-fun tp!1908680 () Bool)

(assert (=> b!6924917 (= e!4167488 (and tp!1908679 tp!1908680))))

(assert (=> b!6924202 (= tp!1908572 e!4167488)))

(declare-fun b!6924915 () Bool)

(declare-fun tp!1908676 () Bool)

(declare-fun tp!1908678 () Bool)

(assert (=> b!6924915 (= e!4167488 (and tp!1908676 tp!1908678))))

(declare-fun b!6924914 () Bool)

(assert (=> b!6924914 (= e!4167488 tp_is_empty!43073)))

(assert (= (and b!6924202 (is-ElementMatch!16924 (regTwo!34360 r1!6342))) b!6924914))

(assert (= (and b!6924202 (is-Concat!25769 (regTwo!34360 r1!6342))) b!6924915))

(assert (= (and b!6924202 (is-Star!16924 (regTwo!34360 r1!6342))) b!6924916))

(assert (= (and b!6924202 (is-Union!16924 (regTwo!34360 r1!6342))) b!6924917))

(declare-fun b!6924920 () Bool)

(declare-fun e!4167489 () Bool)

(declare-fun tp!1908682 () Bool)

(assert (=> b!6924920 (= e!4167489 tp!1908682)))

(declare-fun b!6924921 () Bool)

(declare-fun tp!1908684 () Bool)

(declare-fun tp!1908685 () Bool)

(assert (=> b!6924921 (= e!4167489 (and tp!1908684 tp!1908685))))

(assert (=> b!6924201 (= tp!1908577 e!4167489)))

(declare-fun b!6924919 () Bool)

(declare-fun tp!1908681 () Bool)

(declare-fun tp!1908683 () Bool)

(assert (=> b!6924919 (= e!4167489 (and tp!1908681 tp!1908683))))

(declare-fun b!6924918 () Bool)

(assert (=> b!6924918 (= e!4167489 tp_is_empty!43073)))

(assert (= (and b!6924201 (is-ElementMatch!16924 (regOne!34360 r3!135))) b!6924918))

(assert (= (and b!6924201 (is-Concat!25769 (regOne!34360 r3!135))) b!6924919))

(assert (= (and b!6924201 (is-Star!16924 (regOne!34360 r3!135))) b!6924920))

(assert (= (and b!6924201 (is-Union!16924 (regOne!34360 r3!135))) b!6924921))

(declare-fun b!6924926 () Bool)

(declare-fun e!4167490 () Bool)

(declare-fun tp!1908687 () Bool)

(assert (=> b!6924926 (= e!4167490 tp!1908687)))

(declare-fun b!6924927 () Bool)

(declare-fun tp!1908689 () Bool)

(declare-fun tp!1908690 () Bool)

(assert (=> b!6924927 (= e!4167490 (and tp!1908689 tp!1908690))))

(assert (=> b!6924201 (= tp!1908565 e!4167490)))

(declare-fun b!6924925 () Bool)

(declare-fun tp!1908686 () Bool)

(declare-fun tp!1908688 () Bool)

(assert (=> b!6924925 (= e!4167490 (and tp!1908686 tp!1908688))))

(declare-fun b!6924924 () Bool)

(assert (=> b!6924924 (= e!4167490 tp_is_empty!43073)))

(assert (= (and b!6924201 (is-ElementMatch!16924 (regTwo!34360 r3!135))) b!6924924))

(assert (= (and b!6924201 (is-Concat!25769 (regTwo!34360 r3!135))) b!6924925))

(assert (= (and b!6924201 (is-Star!16924 (regTwo!34360 r3!135))) b!6924926))

(assert (= (and b!6924201 (is-Union!16924 (regTwo!34360 r3!135))) b!6924927))

(declare-fun b!6924932 () Bool)

(declare-fun e!4167495 () Bool)

(declare-fun tp!1908692 () Bool)

(assert (=> b!6924932 (= e!4167495 tp!1908692)))

(declare-fun b!6924933 () Bool)

(declare-fun tp!1908694 () Bool)

(declare-fun tp!1908695 () Bool)

(assert (=> b!6924933 (= e!4167495 (and tp!1908694 tp!1908695))))

(assert (=> b!6924211 (= tp!1908578 e!4167495)))

(declare-fun b!6924931 () Bool)

(declare-fun tp!1908691 () Bool)

(declare-fun tp!1908693 () Bool)

(assert (=> b!6924931 (= e!4167495 (and tp!1908691 tp!1908693))))

(declare-fun b!6924930 () Bool)

(assert (=> b!6924930 (= e!4167495 tp_is_empty!43073)))

(assert (= (and b!6924211 (is-ElementMatch!16924 (regOne!34361 r2!6280))) b!6924930))

(assert (= (and b!6924211 (is-Concat!25769 (regOne!34361 r2!6280))) b!6924931))

(assert (= (and b!6924211 (is-Star!16924 (regOne!34361 r2!6280))) b!6924932))

(assert (= (and b!6924211 (is-Union!16924 (regOne!34361 r2!6280))) b!6924933))

(declare-fun b!6924938 () Bool)

(declare-fun e!4167496 () Bool)

(declare-fun tp!1908697 () Bool)

(assert (=> b!6924938 (= e!4167496 tp!1908697)))

(declare-fun b!6924939 () Bool)

(declare-fun tp!1908699 () Bool)

(declare-fun tp!1908700 () Bool)

(assert (=> b!6924939 (= e!4167496 (and tp!1908699 tp!1908700))))

(assert (=> b!6924211 (= tp!1908571 e!4167496)))

(declare-fun b!6924937 () Bool)

(declare-fun tp!1908696 () Bool)

(declare-fun tp!1908698 () Bool)

(assert (=> b!6924937 (= e!4167496 (and tp!1908696 tp!1908698))))

(declare-fun b!6924936 () Bool)

(assert (=> b!6924936 (= e!4167496 tp_is_empty!43073)))

(assert (= (and b!6924211 (is-ElementMatch!16924 (regTwo!34361 r2!6280))) b!6924936))

(assert (= (and b!6924211 (is-Concat!25769 (regTwo!34361 r2!6280))) b!6924937))

(assert (= (and b!6924211 (is-Star!16924 (regTwo!34361 r2!6280))) b!6924938))

(assert (= (and b!6924211 (is-Union!16924 (regTwo!34361 r2!6280))) b!6924939))

(declare-fun b!6924946 () Bool)

(declare-fun e!4167499 () Bool)

(declare-fun tp!1908702 () Bool)

(assert (=> b!6924946 (= e!4167499 tp!1908702)))

(declare-fun b!6924947 () Bool)

(declare-fun tp!1908704 () Bool)

(declare-fun tp!1908705 () Bool)

(assert (=> b!6924947 (= e!4167499 (and tp!1908704 tp!1908705))))

(assert (=> b!6924216 (= tp!1908574 e!4167499)))

(declare-fun b!6924945 () Bool)

(declare-fun tp!1908701 () Bool)

(declare-fun tp!1908703 () Bool)

(assert (=> b!6924945 (= e!4167499 (and tp!1908701 tp!1908703))))

(declare-fun b!6924944 () Bool)

(assert (=> b!6924944 (= e!4167499 tp_is_empty!43073)))

(assert (= (and b!6924216 (is-ElementMatch!16924 (reg!17253 r3!135))) b!6924944))

(assert (= (and b!6924216 (is-Concat!25769 (reg!17253 r3!135))) b!6924945))

(assert (= (and b!6924216 (is-Star!16924 (reg!17253 r3!135))) b!6924946))

(assert (= (and b!6924216 (is-Union!16924 (reg!17253 r3!135))) b!6924947))

(declare-fun b!6924950 () Bool)

(declare-fun e!4167500 () Bool)

(declare-fun tp!1908707 () Bool)

(assert (=> b!6924950 (= e!4167500 tp!1908707)))

(declare-fun b!6924951 () Bool)

(declare-fun tp!1908709 () Bool)

(declare-fun tp!1908710 () Bool)

(assert (=> b!6924951 (= e!4167500 (and tp!1908709 tp!1908710))))

(assert (=> b!6924221 (= tp!1908570 e!4167500)))

(declare-fun b!6924949 () Bool)

(declare-fun tp!1908706 () Bool)

(declare-fun tp!1908708 () Bool)

(assert (=> b!6924949 (= e!4167500 (and tp!1908706 tp!1908708))))

(declare-fun b!6924948 () Bool)

(assert (=> b!6924948 (= e!4167500 tp_is_empty!43073)))

(assert (= (and b!6924221 (is-ElementMatch!16924 (regOne!34361 r3!135))) b!6924948))

(assert (= (and b!6924221 (is-Concat!25769 (regOne!34361 r3!135))) b!6924949))

(assert (= (and b!6924221 (is-Star!16924 (regOne!34361 r3!135))) b!6924950))

(assert (= (and b!6924221 (is-Union!16924 (regOne!34361 r3!135))) b!6924951))

(declare-fun b!6924954 () Bool)

(declare-fun e!4167501 () Bool)

(declare-fun tp!1908712 () Bool)

(assert (=> b!6924954 (= e!4167501 tp!1908712)))

(declare-fun b!6924955 () Bool)

(declare-fun tp!1908714 () Bool)

(declare-fun tp!1908715 () Bool)

(assert (=> b!6924955 (= e!4167501 (and tp!1908714 tp!1908715))))

(assert (=> b!6924221 (= tp!1908569 e!4167501)))

(declare-fun b!6924953 () Bool)

(declare-fun tp!1908711 () Bool)

(declare-fun tp!1908713 () Bool)

(assert (=> b!6924953 (= e!4167501 (and tp!1908711 tp!1908713))))

(declare-fun b!6924952 () Bool)

(assert (=> b!6924952 (= e!4167501 tp_is_empty!43073)))

(assert (= (and b!6924221 (is-ElementMatch!16924 (regTwo!34361 r3!135))) b!6924952))

(assert (= (and b!6924221 (is-Concat!25769 (regTwo!34361 r3!135))) b!6924953))

(assert (= (and b!6924221 (is-Star!16924 (regTwo!34361 r3!135))) b!6924954))

(assert (= (and b!6924221 (is-Union!16924 (regTwo!34361 r3!135))) b!6924955))

(push 1)

(assert (not bm!629380))

(assert (not b!6924609))

(assert (not d!2165050))

(assert (not b!6924799))

(assert (not b!6924504))

(assert (not bm!629387))

(assert (not b!6924688))

(assert (not b!6924916))

(assert (not b!6924387))

(assert (not b!6924604))

(assert (not bm!629355))

(assert (not b!6924939))

(assert (not b!6924385))

(assert (not bm!629386))

(assert (not b!6924931))

(assert (not b!6924377))

(assert (not d!2165094))

(assert (not b!6924901))

(assert (not b!6924479))

(assert (not d!2165138))

(assert (not b!6924790))

(assert (not bm!629356))

(assert (not b!6924378))

(assert (not b!6924870))

(assert (not b!6924412))

(assert (not d!2165106))

(assert (not b!6924618))

(assert (not bm!629367))

(assert (not bm!629372))

(assert (not b!6924566))

(assert (not d!2165120))

(assert (not b!6924567))

(assert (not b!6924919))

(assert (not b!6924705))

(assert (not b!6924921))

(assert (not b!6924658))

(assert (not b!6924788))

(assert (not d!2165156))

(assert (not b!6924844))

(assert (not b!6924703))

(assert (not d!2165162))

(assert (not b!6924912))

(assert (not b!6924734))

(assert (not b!6924496))

(assert (not b!6924389))

(assert (not d!2165108))

(assert (not b!6924691))

(assert (not b!6924410))

(assert (not b!6924909))

(assert (not b!6924667))

(assert (not b!6924754))

(assert (not b!6924738))

(assert (not b!6924670))

(assert (not b!6924505))

(assert (not b!6924920))

(assert (not bm!629374))

(assert (not b!6924750))

(assert (not b!6924619))

(assert (not b!6924478))

(assert (not b!6924955))

(assert (not b!6924559))

(assert (not b!6924945))

(assert (not bm!629378))

(assert (not b!6924884))

(assert (not b!6924868))

(assert (not b!6924889))

(assert (not d!2165070))

(assert (not d!2165082))

(assert (not b!6924836))

(assert (not d!2165168))

(assert (not d!2165066))

(assert (not b!6924778))

(assert (not bm!629373))

(assert (not d!2165084))

(assert (not d!2165054))

(assert (not b!6924938))

(assert (not b!6924414))

(assert (not b!6924947))

(assert (not bm!629369))

(assert (not b!6924835))

(assert (not b!6924617))

(assert (not d!2165104))

(assert (not d!2165148))

(assert (not b!6924727))

(assert (not b!6924749))

(assert (not b!6924905))

(assert (not b!6924845))

(assert (not b!6924953))

(assert (not b!6924911))

(assert (not d!2165074))

(assert (not b!6924847))

(assert (not b!6924926))

(assert (not b!6924737))

(assert (not b!6924610))

(assert (not b!6924932))

(assert (not d!2165052))

(assert (not bm!629359))

(assert (not b!6924913))

(assert (not d!2165062))

(assert (not d!2165160))

(assert (not d!2165096))

(assert (not b!6924954))

(assert tp_is_empty!43073)

(assert (not bm!629344))

(assert (not b!6924621))

(assert (not d!2165130))

(assert (not b!6924792))

(assert (not b!6924506))

(assert (not b!6924950))

(assert (not b!6924903))

(assert (not d!2165116))

(assert (not b!6924675))

(assert (not bm!629353))

(assert (not b!6924762))

(assert (not b!6924891))

(assert (not bm!629335))

(assert (not b!6924508))

(assert (not b!6924883))

(assert (not b!6924925))

(assert (not b!6924949))

(assert (not b!6924753))

(assert (not b!6924765))

(assert (not b!6924899))

(assert (not b!6924415))

(assert (not b!6924858))

(assert (not bm!629368))

(assert (not b!6924849))

(assert (not b!6924751))

(assert (not b!6924603))

(assert (not d!2165158))

(assert (not d!2165068))

(assert (not b!6924904))

(assert (not d!2165164))

(assert (not d!2165060))

(assert (not b!6924668))

(assert (not d!2165122))

(assert (not bm!629339))

(assert (not d!2165072))

(assert (not d!2165124))

(assert (not b!6924733))

(assert (not bm!629360))

(assert (not b!6924416))

(assert (not b!6924497))

(assert (not b!6924951))

(assert (not b!6924763))

(assert (not d!2165042))

(assert (not b!6924933))

(assert (not b!6924859))

(assert (not b!6924915))

(assert (not b!6924917))

(assert (not b!6924900))

(assert (not d!2165088))

(assert (not b!6924793))

(assert (not b!6924571))

(assert (not bm!629354))

(assert (not b!6924893))

(assert (not b!6924794))

(assert (not d!2165092))

(assert (not b!6924666))

(assert (not d!2165058))

(assert (not bm!629366))

(assert (not b!6924725))

(assert (not d!2165136))

(assert (not bm!629379))

(assert (not bm!629384))

(assert (not b!6924937))

(assert (not b!6924843))

(assert (not b!6924572))

(assert (not b!6924908))

(assert (not b!6924659))

(assert (not b!6924897))

(assert (not b!6924866))

(assert (not b!6924895))

(assert (not bm!629357))

(assert (not b!6924927))

(assert (not d!2165064))

(assert (not b!6924907))

(assert (not bm!629358))

(assert (not b!6924568))

(assert (not b!6924892))

(assert (not bm!629388))

(assert (not d!2165044))

(assert (not b!6924411))

(assert (not b!6924557))

(assert (not b!6924946))

(assert (not b!6924677))

(assert (not b!6924570))

(assert (not bm!629345))

(assert (not b!6924646))

(assert (not b!6924867))

(assert (not b!6924882))

(assert (not b!6924592))

(assert (not bm!629381))

(assert (not b!6924386))

(assert (not b!6924789))

(assert (not d!2165100))

(assert (not b!6924896))

(assert (not b!6924801))

(assert (not b!6924761))

(assert (not b!6924687))

(assert (not b!6924644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

