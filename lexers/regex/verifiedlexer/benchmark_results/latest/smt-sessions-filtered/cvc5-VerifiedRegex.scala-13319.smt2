; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723452 () Bool)

(assert start!723452)

(declare-fun b!7452206 () Bool)

(assert (=> b!7452206 true))

(assert (=> b!7452206 true))

(assert (=> b!7452206 true))

(declare-fun lambda!460977 () Int)

(declare-fun lambda!460976 () Int)

(assert (=> b!7452206 (not (= lambda!460977 lambda!460976))))

(assert (=> b!7452206 true))

(assert (=> b!7452206 true))

(assert (=> b!7452206 true))

(declare-fun b!7452198 () Bool)

(declare-fun res!2989146 () Bool)

(declare-fun e!4448278 () Bool)

(assert (=> b!7452198 (=> (not res!2989146) (not e!4448278))))

(declare-datatypes ((C!39274 0))(
  ( (C!39275 (val!30035 Int)) )
))
(declare-datatypes ((Regex!19500 0))(
  ( (ElementMatch!19500 (c!1377935 C!39274)) (Concat!28345 (regOne!39512 Regex!19500) (regTwo!39512 Regex!19500)) (EmptyExpr!19500) (Star!19500 (reg!19829 Regex!19500)) (EmptyLang!19500) (Union!19500 (regOne!39513 Regex!19500) (regTwo!39513 Regex!19500)) )
))
(declare-fun r2!5783 () Regex!19500)

(declare-fun validRegex!10014 (Regex!19500) Bool)

(assert (=> b!7452198 (= res!2989146 (validRegex!10014 r2!5783))))

(declare-fun b!7452199 () Bool)

(declare-fun e!4448275 () Bool)

(declare-fun tp!2159498 () Bool)

(declare-fun tp!2159496 () Bool)

(assert (=> b!7452199 (= e!4448275 (and tp!2159498 tp!2159496))))

(declare-fun b!7452200 () Bool)

(declare-fun e!4448279 () Bool)

(declare-fun tp!2159484 () Bool)

(declare-fun tp!2159486 () Bool)

(assert (=> b!7452200 (= e!4448279 (and tp!2159484 tp!2159486))))

(declare-fun b!7452201 () Bool)

(declare-fun e!4448277 () Bool)

(declare-fun tp!2159488 () Bool)

(assert (=> b!7452201 (= e!4448277 tp!2159488)))

(declare-fun b!7452202 () Bool)

(declare-fun tp!2159494 () Bool)

(declare-fun tp!2159491 () Bool)

(assert (=> b!7452202 (= e!4448279 (and tp!2159494 tp!2159491))))

(declare-fun b!7452203 () Bool)

(declare-fun res!2989144 () Bool)

(assert (=> b!7452203 (=> (not res!2989144) (not e!4448278))))

(declare-fun rTail!78 () Regex!19500)

(assert (=> b!7452203 (= res!2989144 (validRegex!10014 rTail!78))))

(declare-fun b!7452204 () Bool)

(declare-fun e!4448274 () Bool)

(assert (=> b!7452204 (= e!4448278 (not e!4448274))))

(declare-fun res!2989142 () Bool)

(assert (=> b!7452204 (=> res!2989142 e!4448274)))

(declare-fun lt!2620538 () Bool)

(assert (=> b!7452204 (= res!2989142 (not lt!2620538))))

(declare-fun lt!2620533 () Regex!19500)

(declare-datatypes ((List!72216 0))(
  ( (Nil!72092) (Cons!72092 (h!78540 C!39274) (t!386785 List!72216)) )
))
(declare-fun s!13591 () List!72216)

(declare-fun matchR!9264 (Regex!19500 List!72216) Bool)

(declare-fun matchRSpec!4179 (Regex!19500 List!72216) Bool)

(assert (=> b!7452204 (= (matchR!9264 lt!2620533 s!13591) (matchRSpec!4179 lt!2620533 s!13591))))

(declare-datatypes ((Unit!165835 0))(
  ( (Unit!165836) )
))
(declare-fun lt!2620534 () Unit!165835)

(declare-fun mainMatchTheorem!4173 (Regex!19500 List!72216) Unit!165835)

(assert (=> b!7452204 (= lt!2620534 (mainMatchTheorem!4173 lt!2620533 s!13591))))

(declare-fun lt!2620543 () Regex!19500)

(assert (=> b!7452204 (= lt!2620538 (matchRSpec!4179 lt!2620543 s!13591))))

(assert (=> b!7452204 (= lt!2620538 (matchR!9264 lt!2620543 s!13591))))

(declare-fun lt!2620544 () Unit!165835)

(assert (=> b!7452204 (= lt!2620544 (mainMatchTheorem!4173 lt!2620543 s!13591))))

(declare-fun r1!5845 () Regex!19500)

(assert (=> b!7452204 (= lt!2620533 (Union!19500 (Concat!28345 r1!5845 rTail!78) (Concat!28345 r2!5783 rTail!78)))))

(declare-fun lt!2620535 () Regex!19500)

(assert (=> b!7452204 (= lt!2620543 (Concat!28345 lt!2620535 rTail!78))))

(assert (=> b!7452204 (= lt!2620535 (Union!19500 r1!5845 r2!5783))))

(declare-fun b!7452205 () Bool)

(declare-fun tp_is_empty!49289 () Bool)

(assert (=> b!7452205 (= e!4448275 tp_is_empty!49289)))

(declare-fun e!4448276 () Bool)

(assert (=> b!7452206 (= e!4448274 e!4448276)))

(declare-fun res!2989143 () Bool)

(assert (=> b!7452206 (=> res!2989143 e!4448276)))

(declare-datatypes ((tuple2!68454 0))(
  ( (tuple2!68455 (_1!37530 List!72216) (_2!37530 List!72216)) )
))
(declare-fun lt!2620539 () tuple2!68454)

(assert (=> b!7452206 (= res!2989143 (not (matchR!9264 lt!2620535 (_1!37530 lt!2620539))))))

(declare-datatypes ((Option!17059 0))(
  ( (None!17058) (Some!17058 (v!54187 tuple2!68454)) )
))
(declare-fun lt!2620542 () Option!17059)

(declare-fun get!25134 (Option!17059) tuple2!68454)

(assert (=> b!7452206 (= lt!2620539 (get!25134 lt!2620542))))

(declare-fun Exists!4121 (Int) Bool)

(assert (=> b!7452206 (= (Exists!4121 lambda!460976) (Exists!4121 lambda!460977))))

(declare-fun lt!2620537 () Unit!165835)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2457 (Regex!19500 Regex!19500 List!72216) Unit!165835)

(assert (=> b!7452206 (= lt!2620537 (lemmaExistCutMatchRandMatchRSpecEquivalent!2457 lt!2620535 rTail!78 s!13591))))

(declare-fun isDefined!13748 (Option!17059) Bool)

(assert (=> b!7452206 (= (isDefined!13748 lt!2620542) (Exists!4121 lambda!460976))))

(declare-fun findConcatSeparation!3181 (Regex!19500 Regex!19500 List!72216 List!72216 List!72216) Option!17059)

(assert (=> b!7452206 (= lt!2620542 (findConcatSeparation!3181 lt!2620535 rTail!78 Nil!72092 s!13591 s!13591))))

(declare-fun lt!2620545 () Unit!165835)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2939 (Regex!19500 Regex!19500 List!72216) Unit!165835)

(assert (=> b!7452206 (= lt!2620545 (lemmaFindConcatSeparationEquivalentToExists!2939 lt!2620535 rTail!78 s!13591))))

(declare-fun b!7452207 () Bool)

(declare-fun tp!2159492 () Bool)

(declare-fun tp!2159499 () Bool)

(assert (=> b!7452207 (= e!4448275 (and tp!2159492 tp!2159499))))

(declare-fun res!2989141 () Bool)

(assert (=> start!723452 (=> (not res!2989141) (not e!4448278))))

(assert (=> start!723452 (= res!2989141 (validRegex!10014 r1!5845))))

(assert (=> start!723452 e!4448278))

(assert (=> start!723452 e!4448275))

(assert (=> start!723452 e!4448279))

(assert (=> start!723452 e!4448277))

(declare-fun e!4448273 () Bool)

(assert (=> start!723452 e!4448273))

(declare-fun b!7452208 () Bool)

(declare-fun res!2989145 () Bool)

(assert (=> b!7452208 (=> res!2989145 e!4448276)))

(assert (=> b!7452208 (= res!2989145 (not (matchR!9264 rTail!78 (_2!37530 lt!2620539))))))

(declare-fun b!7452209 () Bool)

(assert (=> b!7452209 (= e!4448279 tp_is_empty!49289)))

(declare-fun b!7452210 () Bool)

(declare-fun tp!2159485 () Bool)

(assert (=> b!7452210 (= e!4448275 tp!2159485)))

(declare-fun b!7452211 () Bool)

(assert (=> b!7452211 (= e!4448277 tp_is_empty!49289)))

(declare-fun b!7452212 () Bool)

(declare-fun tp!2159495 () Bool)

(declare-fun tp!2159487 () Bool)

(assert (=> b!7452212 (= e!4448277 (and tp!2159495 tp!2159487))))

(declare-fun b!7452213 () Bool)

(declare-fun tp!2159493 () Bool)

(assert (=> b!7452213 (= e!4448279 tp!2159493)))

(declare-fun b!7452214 () Bool)

(declare-fun tp!2159497 () Bool)

(assert (=> b!7452214 (= e!4448273 (and tp_is_empty!49289 tp!2159497))))

(declare-fun b!7452215 () Bool)

(assert (=> b!7452215 (= e!4448276 true)))

(assert (=> b!7452215 (= (matchR!9264 r2!5783 (_1!37530 lt!2620539)) (matchRSpec!4179 r2!5783 (_1!37530 lt!2620539)))))

(declare-fun lt!2620541 () Unit!165835)

(assert (=> b!7452215 (= lt!2620541 (mainMatchTheorem!4173 r2!5783 (_1!37530 lt!2620539)))))

(assert (=> b!7452215 (= (matchR!9264 r1!5845 (_1!37530 lt!2620539)) (matchRSpec!4179 r1!5845 (_1!37530 lt!2620539)))))

(declare-fun lt!2620540 () Unit!165835)

(assert (=> b!7452215 (= lt!2620540 (mainMatchTheorem!4173 r1!5845 (_1!37530 lt!2620539)))))

(assert (=> b!7452215 (matchRSpec!4179 rTail!78 (_2!37530 lt!2620539))))

(declare-fun lt!2620536 () Unit!165835)

(assert (=> b!7452215 (= lt!2620536 (mainMatchTheorem!4173 rTail!78 (_2!37530 lt!2620539)))))

(assert (=> b!7452215 (matchRSpec!4179 lt!2620535 (_1!37530 lt!2620539))))

(declare-fun lt!2620532 () Unit!165835)

(assert (=> b!7452215 (= lt!2620532 (mainMatchTheorem!4173 lt!2620535 (_1!37530 lt!2620539)))))

(declare-fun b!7452216 () Bool)

(declare-fun tp!2159489 () Bool)

(declare-fun tp!2159490 () Bool)

(assert (=> b!7452216 (= e!4448277 (and tp!2159489 tp!2159490))))

(assert (= (and start!723452 res!2989141) b!7452198))

(assert (= (and b!7452198 res!2989146) b!7452203))

(assert (= (and b!7452203 res!2989144) b!7452204))

(assert (= (and b!7452204 (not res!2989142)) b!7452206))

(assert (= (and b!7452206 (not res!2989143)) b!7452208))

(assert (= (and b!7452208 (not res!2989145)) b!7452215))

(assert (= (and start!723452 (is-ElementMatch!19500 r1!5845)) b!7452205))

(assert (= (and start!723452 (is-Concat!28345 r1!5845)) b!7452207))

(assert (= (and start!723452 (is-Star!19500 r1!5845)) b!7452210))

(assert (= (and start!723452 (is-Union!19500 r1!5845)) b!7452199))

(assert (= (and start!723452 (is-ElementMatch!19500 r2!5783)) b!7452209))

(assert (= (and start!723452 (is-Concat!28345 r2!5783)) b!7452202))

(assert (= (and start!723452 (is-Star!19500 r2!5783)) b!7452213))

(assert (= (and start!723452 (is-Union!19500 r2!5783)) b!7452200))

(assert (= (and start!723452 (is-ElementMatch!19500 rTail!78)) b!7452211))

(assert (= (and start!723452 (is-Concat!28345 rTail!78)) b!7452212))

(assert (= (and start!723452 (is-Star!19500 rTail!78)) b!7452201))

(assert (= (and start!723452 (is-Union!19500 rTail!78)) b!7452216))

(assert (= (and start!723452 (is-Cons!72092 s!13591)) b!7452214))

(declare-fun m!8057556 () Bool)

(assert (=> b!7452215 m!8057556))

(declare-fun m!8057558 () Bool)

(assert (=> b!7452215 m!8057558))

(declare-fun m!8057560 () Bool)

(assert (=> b!7452215 m!8057560))

(declare-fun m!8057562 () Bool)

(assert (=> b!7452215 m!8057562))

(declare-fun m!8057564 () Bool)

(assert (=> b!7452215 m!8057564))

(declare-fun m!8057566 () Bool)

(assert (=> b!7452215 m!8057566))

(declare-fun m!8057568 () Bool)

(assert (=> b!7452215 m!8057568))

(declare-fun m!8057570 () Bool)

(assert (=> b!7452215 m!8057570))

(declare-fun m!8057572 () Bool)

(assert (=> b!7452215 m!8057572))

(declare-fun m!8057574 () Bool)

(assert (=> b!7452215 m!8057574))

(declare-fun m!8057576 () Bool)

(assert (=> b!7452204 m!8057576))

(declare-fun m!8057578 () Bool)

(assert (=> b!7452204 m!8057578))

(declare-fun m!8057580 () Bool)

(assert (=> b!7452204 m!8057580))

(declare-fun m!8057582 () Bool)

(assert (=> b!7452204 m!8057582))

(declare-fun m!8057584 () Bool)

(assert (=> b!7452204 m!8057584))

(declare-fun m!8057586 () Bool)

(assert (=> b!7452204 m!8057586))

(declare-fun m!8057588 () Bool)

(assert (=> b!7452208 m!8057588))

(declare-fun m!8057590 () Bool)

(assert (=> start!723452 m!8057590))

(declare-fun m!8057592 () Bool)

(assert (=> b!7452198 m!8057592))

(declare-fun m!8057594 () Bool)

(assert (=> b!7452206 m!8057594))

(declare-fun m!8057596 () Bool)

(assert (=> b!7452206 m!8057596))

(declare-fun m!8057598 () Bool)

(assert (=> b!7452206 m!8057598))

(declare-fun m!8057600 () Bool)

(assert (=> b!7452206 m!8057600))

(declare-fun m!8057602 () Bool)

(assert (=> b!7452206 m!8057602))

(declare-fun m!8057604 () Bool)

(assert (=> b!7452206 m!8057604))

(declare-fun m!8057606 () Bool)

(assert (=> b!7452206 m!8057606))

(assert (=> b!7452206 m!8057596))

(declare-fun m!8057608 () Bool)

(assert (=> b!7452206 m!8057608))

(declare-fun m!8057610 () Bool)

(assert (=> b!7452203 m!8057610))

(push 1)

(assert (not b!7452204))

(assert (not b!7452201))

(assert (not b!7452213))

(assert (not b!7452212))

(assert (not b!7452206))

(assert (not b!7452199))

(assert (not b!7452203))

(assert (not b!7452214))

(assert (not b!7452216))

(assert (not start!723452))

(assert (not b!7452215))

(assert tp_is_empty!49289)

(assert (not b!7452210))

(assert (not b!7452198))

(assert (not b!7452208))

(assert (not b!7452202))

(assert (not b!7452207))

(assert (not b!7452200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

