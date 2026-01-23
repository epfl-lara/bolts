; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734514 () Bool)

(assert start!734514)

(declare-fun b!7627165 () Bool)

(assert (=> b!7627165 true))

(assert (=> b!7627165 true))

(declare-fun b!7627158 () Bool)

(declare-fun e!4534676 () Bool)

(declare-fun e!4534674 () Bool)

(assert (=> b!7627158 (= e!4534676 e!4534674)))

(declare-fun res!3054214 () Bool)

(assert (=> b!7627158 (=> res!3054214 e!4534674)))

(declare-fun lambda!468828 () Int)

(declare-fun Exists!4516 (Int) Bool)

(assert (=> b!7627158 (= res!3054214 (not (Exists!4516 lambda!468828)))))

(declare-fun lt!2658077 () Bool)

(assert (=> b!7627158 lt!2658077))

(declare-datatypes ((Unit!167652 0))(
  ( (Unit!167653) )
))
(declare-fun lt!2658080 () Unit!167652)

(declare-datatypes ((C!41050 0))(
  ( (C!41051 (val!30965 Int)) )
))
(declare-datatypes ((Regex!20362 0))(
  ( (ElementMatch!20362 (c!1405303 C!41050)) (Concat!29207 (regOne!41236 Regex!20362) (regTwo!41236 Regex!20362)) (EmptyExpr!20362) (Star!20362 (reg!20691 Regex!20362)) (EmptyLang!20362) (Union!20362 (regOne!41237 Regex!20362) (regTwo!41237 Regex!20362)) )
))
(declare-fun r!14126 () Regex!20362)

(declare-datatypes ((List!73213 0))(
  ( (Nil!73089) (Cons!73089 (h!79537 C!41050) (t!387948 List!73213)) )
))
(declare-fun s!9605 () List!73213)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!269 (Regex!20362 Regex!20362 List!73213) Unit!167652)

(assert (=> b!7627158 (= lt!2658080 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!269 (regOne!41236 r!14126) (regTwo!41236 r!14126) s!9605))))

(declare-fun b!7627159 () Bool)

(declare-fun e!4534678 () Bool)

(declare-fun tp!2226932 () Bool)

(declare-fun tp!2226934 () Bool)

(assert (=> b!7627159 (= e!4534678 (and tp!2226932 tp!2226934))))

(declare-fun b!7627160 () Bool)

(assert (=> b!7627160 (= e!4534674 true)))

(declare-datatypes ((tuple2!69282 0))(
  ( (tuple2!69283 (_1!37944 List!73213) (_2!37944 List!73213)) )
))
(declare-fun lt!2658079 () tuple2!69282)

(declare-fun pickWitness!457 (Int) tuple2!69282)

(assert (=> b!7627160 (= lt!2658079 (pickWitness!457 lambda!468828))))

(declare-fun b!7627161 () Bool)

(declare-fun res!3054212 () Bool)

(declare-fun e!4534675 () Bool)

(assert (=> b!7627161 (=> (not res!3054212) (not e!4534675))))

(assert (=> b!7627161 (= res!3054212 (and (not (is-EmptyExpr!20362 r!14126)) (not (is-EmptyLang!20362 r!14126)) (not (is-ElementMatch!20362 r!14126)) (not (is-Union!20362 r!14126)) (not (is-Star!20362 r!14126))))))

(declare-fun b!7627162 () Bool)

(declare-fun tp!2226930 () Bool)

(declare-fun tp!2226933 () Bool)

(assert (=> b!7627162 (= e!4534678 (and tp!2226930 tp!2226933))))

(declare-fun b!7627163 () Bool)

(declare-fun e!4534677 () Bool)

(declare-fun tp_is_empty!51079 () Bool)

(declare-fun tp!2226935 () Bool)

(assert (=> b!7627163 (= e!4534677 (and tp_is_empty!51079 tp!2226935))))

(declare-fun res!3054211 () Bool)

(assert (=> start!734514 (=> (not res!3054211) (not e!4534675))))

(declare-fun validRegex!10780 (Regex!20362) Bool)

(assert (=> start!734514 (= res!3054211 (validRegex!10780 r!14126))))

(assert (=> start!734514 e!4534675))

(assert (=> start!734514 e!4534678))

(assert (=> start!734514 e!4534677))

(declare-fun b!7627164 () Bool)

(declare-fun tp!2226931 () Bool)

(assert (=> b!7627164 (= e!4534678 tp!2226931)))

(assert (=> b!7627165 (= e!4534675 (not e!4534676))))

(declare-fun res!3054213 () Bool)

(assert (=> b!7627165 (=> res!3054213 e!4534676)))

(declare-fun matchR!9865 (Regex!20362 List!73213) Bool)

(assert (=> b!7627165 (= res!3054213 (not (matchR!9865 r!14126 s!9605)))))

(assert (=> b!7627165 (= lt!2658077 (Exists!4516 lambda!468828))))

(declare-datatypes ((Option!17435 0))(
  ( (None!17434) (Some!17434 (v!54569 tuple2!69282)) )
))
(declare-fun isDefined!14051 (Option!17435) Bool)

(declare-fun findConcatSeparation!3465 (Regex!20362 Regex!20362 List!73213 List!73213 List!73213) Option!17435)

(assert (=> b!7627165 (= lt!2658077 (isDefined!14051 (findConcatSeparation!3465 (regOne!41236 r!14126) (regTwo!41236 r!14126) Nil!73089 s!9605 s!9605)))))

(declare-fun lt!2658078 () Unit!167652)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3223 (Regex!20362 Regex!20362 List!73213) Unit!167652)

(assert (=> b!7627165 (= lt!2658078 (lemmaFindConcatSeparationEquivalentToExists!3223 (regOne!41236 r!14126) (regTwo!41236 r!14126) s!9605))))

(declare-fun b!7627166 () Bool)

(assert (=> b!7627166 (= e!4534678 tp_is_empty!51079)))

(assert (= (and start!734514 res!3054211) b!7627161))

(assert (= (and b!7627161 res!3054212) b!7627165))

(assert (= (and b!7627165 (not res!3054213)) b!7627158))

(assert (= (and b!7627158 (not res!3054214)) b!7627160))

(assert (= (and start!734514 (is-ElementMatch!20362 r!14126)) b!7627166))

(assert (= (and start!734514 (is-Concat!29207 r!14126)) b!7627162))

(assert (= (and start!734514 (is-Star!20362 r!14126)) b!7627164))

(assert (= (and start!734514 (is-Union!20362 r!14126)) b!7627159))

(assert (= (and start!734514 (is-Cons!73089 s!9605)) b!7627163))

(declare-fun m!8155942 () Bool)

(assert (=> b!7627158 m!8155942))

(declare-fun m!8155944 () Bool)

(assert (=> b!7627158 m!8155944))

(declare-fun m!8155946 () Bool)

(assert (=> b!7627160 m!8155946))

(declare-fun m!8155948 () Bool)

(assert (=> start!734514 m!8155948))

(declare-fun m!8155950 () Bool)

(assert (=> b!7627165 m!8155950))

(declare-fun m!8155952 () Bool)

(assert (=> b!7627165 m!8155952))

(declare-fun m!8155954 () Bool)

(assert (=> b!7627165 m!8155954))

(assert (=> b!7627165 m!8155952))

(declare-fun m!8155956 () Bool)

(assert (=> b!7627165 m!8155956))

(assert (=> b!7627165 m!8155942))

(push 1)

(assert (not b!7627165))

(assert (not b!7627163))

(assert (not start!734514))

(assert (not b!7627162))

(assert (not b!7627164))

(assert tp_is_empty!51079)

(assert (not b!7627159))

(assert (not b!7627158))

(assert (not b!7627160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

