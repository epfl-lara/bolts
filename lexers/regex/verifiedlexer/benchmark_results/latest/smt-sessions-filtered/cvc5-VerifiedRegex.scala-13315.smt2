; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723436 () Bool)

(assert start!723436)

(declare-fun b!7451620 () Bool)

(assert (=> b!7451620 true))

(assert (=> b!7451620 true))

(assert (=> b!7451620 true))

(declare-fun lambda!460913 () Int)

(declare-fun lambda!460912 () Int)

(assert (=> b!7451620 (not (= lambda!460913 lambda!460912))))

(assert (=> b!7451620 true))

(assert (=> b!7451620 true))

(assert (=> b!7451620 true))

(declare-fun b!7451614 () Bool)

(declare-fun res!2988903 () Bool)

(declare-fun e!4448062 () Bool)

(assert (=> b!7451614 (=> res!2988903 e!4448062)))

(declare-datatypes ((C!39258 0))(
  ( (C!39259 (val!30027 Int)) )
))
(declare-datatypes ((Regex!19492 0))(
  ( (ElementMatch!19492 (c!1377927 C!39258)) (Concat!28337 (regOne!39496 Regex!19492) (regTwo!39496 Regex!19492)) (EmptyExpr!19492) (Star!19492 (reg!19821 Regex!19492)) (EmptyLang!19492) (Union!19492 (regOne!39497 Regex!19492) (regTwo!39497 Regex!19492)) )
))
(declare-fun rTail!78 () Regex!19492)

(declare-datatypes ((List!72208 0))(
  ( (Nil!72084) (Cons!72084 (h!78532 C!39258) (t!386777 List!72208)) )
))
(declare-datatypes ((tuple2!68438 0))(
  ( (tuple2!68439 (_1!37522 List!72208) (_2!37522 List!72208)) )
))
(declare-fun lt!2620255 () tuple2!68438)

(declare-fun matchR!9256 (Regex!19492 List!72208) Bool)

(assert (=> b!7451614 (= res!2988903 (not (matchR!9256 rTail!78 (_2!37522 lt!2620255))))))

(declare-fun b!7451615 () Bool)

(declare-fun e!4448058 () Bool)

(declare-fun tp_is_empty!49273 () Bool)

(declare-fun tp!2159110 () Bool)

(assert (=> b!7451615 (= e!4448058 (and tp_is_empty!49273 tp!2159110))))

(declare-fun b!7451616 () Bool)

(declare-fun e!4448059 () Bool)

(assert (=> b!7451616 (= e!4448059 tp_is_empty!49273)))

(declare-fun b!7451617 () Bool)

(declare-fun e!4448063 () Bool)

(declare-fun e!4448057 () Bool)

(assert (=> b!7451617 (= e!4448063 (not e!4448057))))

(declare-fun res!2988901 () Bool)

(assert (=> b!7451617 (=> res!2988901 e!4448057)))

(declare-fun lt!2620256 () Bool)

(assert (=> b!7451617 (= res!2988901 (not lt!2620256))))

(declare-fun lt!2620248 () Regex!19492)

(declare-fun s!13591 () List!72208)

(declare-fun matchRSpec!4171 (Regex!19492 List!72208) Bool)

(assert (=> b!7451617 (= (matchR!9256 lt!2620248 s!13591) (matchRSpec!4171 lt!2620248 s!13591))))

(declare-datatypes ((Unit!165819 0))(
  ( (Unit!165820) )
))
(declare-fun lt!2620249 () Unit!165819)

(declare-fun mainMatchTheorem!4165 (Regex!19492 List!72208) Unit!165819)

(assert (=> b!7451617 (= lt!2620249 (mainMatchTheorem!4165 lt!2620248 s!13591))))

(declare-fun lt!2620251 () Regex!19492)

(assert (=> b!7451617 (= lt!2620256 (matchRSpec!4171 lt!2620251 s!13591))))

(assert (=> b!7451617 (= lt!2620256 (matchR!9256 lt!2620251 s!13591))))

(declare-fun lt!2620257 () Unit!165819)

(assert (=> b!7451617 (= lt!2620257 (mainMatchTheorem!4165 lt!2620251 s!13591))))

(declare-fun r2!5783 () Regex!19492)

(declare-fun r1!5845 () Regex!19492)

(assert (=> b!7451617 (= lt!2620248 (Union!19492 (Concat!28337 r1!5845 rTail!78) (Concat!28337 r2!5783 rTail!78)))))

(declare-fun lt!2620252 () Regex!19492)

(assert (=> b!7451617 (= lt!2620251 (Concat!28337 lt!2620252 rTail!78))))

(assert (=> b!7451617 (= lt!2620252 (Union!19492 r1!5845 r2!5783))))

(declare-fun b!7451618 () Bool)

(declare-fun e!4448061 () Bool)

(declare-fun tp!2159111 () Bool)

(declare-fun tp!2159115 () Bool)

(assert (=> b!7451618 (= e!4448061 (and tp!2159111 tp!2159115))))

(declare-fun b!7451619 () Bool)

(declare-fun tp!2159103 () Bool)

(declare-fun tp!2159109 () Bool)

(assert (=> b!7451619 (= e!4448059 (and tp!2159103 tp!2159109))))

(assert (=> b!7451620 (= e!4448057 e!4448062)))

(declare-fun res!2988904 () Bool)

(assert (=> b!7451620 (=> res!2988904 e!4448062)))

(assert (=> b!7451620 (= res!2988904 (not (matchR!9256 lt!2620252 (_1!37522 lt!2620255))))))

(declare-datatypes ((Option!17051 0))(
  ( (None!17050) (Some!17050 (v!54179 tuple2!68438)) )
))
(declare-fun lt!2620250 () Option!17051)

(declare-fun get!25122 (Option!17051) tuple2!68438)

(assert (=> b!7451620 (= lt!2620255 (get!25122 lt!2620250))))

(declare-fun Exists!4113 (Int) Bool)

(assert (=> b!7451620 (= (Exists!4113 lambda!460912) (Exists!4113 lambda!460913))))

(declare-fun lt!2620253 () Unit!165819)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2449 (Regex!19492 Regex!19492 List!72208) Unit!165819)

(assert (=> b!7451620 (= lt!2620253 (lemmaExistCutMatchRandMatchRSpecEquivalent!2449 lt!2620252 rTail!78 s!13591))))

(declare-fun isDefined!13740 (Option!17051) Bool)

(assert (=> b!7451620 (= (isDefined!13740 lt!2620250) (Exists!4113 lambda!460912))))

(declare-fun findConcatSeparation!3173 (Regex!19492 Regex!19492 List!72208 List!72208 List!72208) Option!17051)

(assert (=> b!7451620 (= lt!2620250 (findConcatSeparation!3173 lt!2620252 rTail!78 Nil!72084 s!13591 s!13591))))

(declare-fun lt!2620254 () Unit!165819)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2931 (Regex!19492 Regex!19492 List!72208) Unit!165819)

(assert (=> b!7451620 (= lt!2620254 (lemmaFindConcatSeparationEquivalentToExists!2931 lt!2620252 rTail!78 s!13591))))

(declare-fun b!7451622 () Bool)

(declare-fun e!4448060 () Bool)

(declare-fun tp!2159108 () Bool)

(declare-fun tp!2159106 () Bool)

(assert (=> b!7451622 (= e!4448060 (and tp!2159108 tp!2159106))))

(declare-fun b!7451623 () Bool)

(declare-fun res!2988905 () Bool)

(assert (=> b!7451623 (=> (not res!2988905) (not e!4448063))))

(declare-fun validRegex!10006 (Regex!19492) Bool)

(assert (=> b!7451623 (= res!2988905 (validRegex!10006 r2!5783))))

(declare-fun b!7451624 () Bool)

(assert (=> b!7451624 (= e!4448060 tp_is_empty!49273)))

(declare-fun b!7451625 () Bool)

(declare-fun tp!2159101 () Bool)

(declare-fun tp!2159102 () Bool)

(assert (=> b!7451625 (= e!4448060 (and tp!2159101 tp!2159102))))

(declare-fun b!7451626 () Bool)

(assert (=> b!7451626 (= e!4448061 tp_is_empty!49273)))

(declare-fun b!7451627 () Bool)

(declare-fun tp!2159113 () Bool)

(assert (=> b!7451627 (= e!4448061 tp!2159113)))

(declare-fun b!7451628 () Bool)

(declare-fun tp!2159112 () Bool)

(assert (=> b!7451628 (= e!4448060 tp!2159112)))

(declare-fun b!7451629 () Bool)

(declare-fun res!2988906 () Bool)

(assert (=> b!7451629 (=> (not res!2988906) (not e!4448063))))

(assert (=> b!7451629 (= res!2988906 (validRegex!10006 rTail!78))))

(declare-fun b!7451630 () Bool)

(assert (=> b!7451630 (= e!4448062 true)))

(declare-fun b!7451631 () Bool)

(declare-fun tp!2159105 () Bool)

(declare-fun tp!2159107 () Bool)

(assert (=> b!7451631 (= e!4448059 (and tp!2159105 tp!2159107))))

(declare-fun b!7451632 () Bool)

(declare-fun tp!2159100 () Bool)

(declare-fun tp!2159114 () Bool)

(assert (=> b!7451632 (= e!4448061 (and tp!2159100 tp!2159114))))

(declare-fun res!2988902 () Bool)

(assert (=> start!723436 (=> (not res!2988902) (not e!4448063))))

(assert (=> start!723436 (= res!2988902 (validRegex!10006 r1!5845))))

(assert (=> start!723436 e!4448063))

(assert (=> start!723436 e!4448060))

(assert (=> start!723436 e!4448059))

(assert (=> start!723436 e!4448061))

(assert (=> start!723436 e!4448058))

(declare-fun b!7451621 () Bool)

(declare-fun tp!2159104 () Bool)

(assert (=> b!7451621 (= e!4448059 tp!2159104)))

(assert (= (and start!723436 res!2988902) b!7451623))

(assert (= (and b!7451623 res!2988905) b!7451629))

(assert (= (and b!7451629 res!2988906) b!7451617))

(assert (= (and b!7451617 (not res!2988901)) b!7451620))

(assert (= (and b!7451620 (not res!2988904)) b!7451614))

(assert (= (and b!7451614 (not res!2988903)) b!7451630))

(assert (= (and start!723436 (is-ElementMatch!19492 r1!5845)) b!7451624))

(assert (= (and start!723436 (is-Concat!28337 r1!5845)) b!7451622))

(assert (= (and start!723436 (is-Star!19492 r1!5845)) b!7451628))

(assert (= (and start!723436 (is-Union!19492 r1!5845)) b!7451625))

(assert (= (and start!723436 (is-ElementMatch!19492 r2!5783)) b!7451616))

(assert (= (and start!723436 (is-Concat!28337 r2!5783)) b!7451631))

(assert (= (and start!723436 (is-Star!19492 r2!5783)) b!7451621))

(assert (= (and start!723436 (is-Union!19492 r2!5783)) b!7451619))

(assert (= (and start!723436 (is-ElementMatch!19492 rTail!78)) b!7451626))

(assert (= (and start!723436 (is-Concat!28337 rTail!78)) b!7451618))

(assert (= (and start!723436 (is-Star!19492 rTail!78)) b!7451627))

(assert (= (and start!723436 (is-Union!19492 rTail!78)) b!7451632))

(assert (= (and start!723436 (is-Cons!72084 s!13591)) b!7451615))

(declare-fun m!8057216 () Bool)

(assert (=> b!7451614 m!8057216))

(declare-fun m!8057218 () Bool)

(assert (=> start!723436 m!8057218))

(declare-fun m!8057220 () Bool)

(assert (=> b!7451623 m!8057220))

(declare-fun m!8057222 () Bool)

(assert (=> b!7451620 m!8057222))

(declare-fun m!8057224 () Bool)

(assert (=> b!7451620 m!8057224))

(declare-fun m!8057226 () Bool)

(assert (=> b!7451620 m!8057226))

(declare-fun m!8057228 () Bool)

(assert (=> b!7451620 m!8057228))

(declare-fun m!8057230 () Bool)

(assert (=> b!7451620 m!8057230))

(assert (=> b!7451620 m!8057230))

(declare-fun m!8057232 () Bool)

(assert (=> b!7451620 m!8057232))

(declare-fun m!8057234 () Bool)

(assert (=> b!7451620 m!8057234))

(declare-fun m!8057236 () Bool)

(assert (=> b!7451620 m!8057236))

(declare-fun m!8057238 () Bool)

(assert (=> b!7451617 m!8057238))

(declare-fun m!8057240 () Bool)

(assert (=> b!7451617 m!8057240))

(declare-fun m!8057242 () Bool)

(assert (=> b!7451617 m!8057242))

(declare-fun m!8057244 () Bool)

(assert (=> b!7451617 m!8057244))

(declare-fun m!8057246 () Bool)

(assert (=> b!7451617 m!8057246))

(declare-fun m!8057248 () Bool)

(assert (=> b!7451617 m!8057248))

(declare-fun m!8057250 () Bool)

(assert (=> b!7451629 m!8057250))

(push 1)

(assert (not b!7451621))

(assert (not start!723436))

(assert (not b!7451623))

(assert (not b!7451617))

(assert (not b!7451625))

(assert (not b!7451629))

(assert (not b!7451615))

(assert (not b!7451632))

(assert (not b!7451614))

(assert (not b!7451618))

(assert (not b!7451620))

(assert (not b!7451631))

(assert (not b!7451619))

(assert (not b!7451628))

(assert (not b!7451627))

(assert tp_is_empty!49273)

(assert (not b!7451622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

