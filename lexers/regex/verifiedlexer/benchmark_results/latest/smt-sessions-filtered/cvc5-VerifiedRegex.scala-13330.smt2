; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723760 () Bool)

(assert start!723760)

(declare-fun b!7459186 () Bool)

(assert (=> b!7459186 true))

(assert (=> b!7459186 true))

(assert (=> b!7459186 true))

(declare-fun b!7459172 () Bool)

(declare-fun e!4451763 () Bool)

(declare-fun tp_is_empty!49333 () Bool)

(assert (=> b!7459172 (= e!4451763 tp_is_empty!49333)))

(declare-fun b!7459173 () Bool)

(declare-fun res!2992058 () Bool)

(declare-fun e!4451761 () Bool)

(assert (=> b!7459173 (=> (not res!2992058) (not e!4451761))))

(declare-datatypes ((C!39318 0))(
  ( (C!39319 (val!30057 Int)) )
))
(declare-datatypes ((Regex!19522 0))(
  ( (ElementMatch!19522 (c!1379067 C!39318)) (Concat!28367 (regOne!39556 Regex!19522) (regTwo!39556 Regex!19522)) (EmptyExpr!19522) (Star!19522 (reg!19851 Regex!19522)) (EmptyLang!19522) (Union!19522 (regOne!39557 Regex!19522) (regTwo!39557 Regex!19522)) )
))
(declare-fun r2!5783 () Regex!19522)

(declare-fun validRegex!10036 (Regex!19522) Bool)

(assert (=> b!7459173 (= res!2992058 (validRegex!10036 r2!5783))))

(declare-fun b!7459174 () Bool)

(declare-fun e!4451764 () Bool)

(declare-fun tp!2161608 () Bool)

(declare-fun tp!2161598 () Bool)

(assert (=> b!7459174 (= e!4451764 (and tp!2161608 tp!2161598))))

(declare-fun b!7459175 () Bool)

(declare-fun tp!2161611 () Bool)

(declare-fun tp!2161601 () Bool)

(assert (=> b!7459175 (= e!4451764 (and tp!2161611 tp!2161601))))

(declare-fun b!7459176 () Bool)

(declare-fun e!4451759 () Bool)

(declare-fun tp!2161603 () Bool)

(declare-fun tp!2161604 () Bool)

(assert (=> b!7459176 (= e!4451759 (and tp!2161603 tp!2161604))))

(declare-fun b!7459177 () Bool)

(declare-fun tp!2161607 () Bool)

(assert (=> b!7459177 (= e!4451763 tp!2161607)))

(declare-fun b!7459178 () Bool)

(declare-fun tp!2161597 () Bool)

(declare-fun tp!2161609 () Bool)

(assert (=> b!7459178 (= e!4451759 (and tp!2161597 tp!2161609))))

(declare-fun b!7459179 () Bool)

(declare-fun tp!2161602 () Bool)

(declare-fun tp!2161600 () Bool)

(assert (=> b!7459179 (= e!4451763 (and tp!2161602 tp!2161600))))

(declare-fun b!7459180 () Bool)

(assert (=> b!7459180 (= e!4451764 tp_is_empty!49333)))

(declare-fun b!7459181 () Bool)

(declare-fun e!4451760 () Bool)

(assert (=> b!7459181 (= e!4451761 (not e!4451760))))

(declare-fun res!2992060 () Bool)

(assert (=> b!7459181 (=> res!2992060 e!4451760)))

(declare-fun lt!2622234 () Bool)

(assert (=> b!7459181 (= res!2992060 lt!2622234)))

(declare-fun lt!2622235 () Regex!19522)

(declare-datatypes ((List!72238 0))(
  ( (Nil!72114) (Cons!72114 (h!78562 C!39318) (t!386807 List!72238)) )
))
(declare-fun s!13591 () List!72238)

(declare-fun matchR!9286 (Regex!19522 List!72238) Bool)

(declare-fun matchRSpec!4201 (Regex!19522 List!72238) Bool)

(assert (=> b!7459181 (= (matchR!9286 lt!2622235 s!13591) (matchRSpec!4201 lt!2622235 s!13591))))

(declare-datatypes ((Unit!165879 0))(
  ( (Unit!165880) )
))
(declare-fun lt!2622237 () Unit!165879)

(declare-fun mainMatchTheorem!4195 (Regex!19522 List!72238) Unit!165879)

(assert (=> b!7459181 (= lt!2622237 (mainMatchTheorem!4195 lt!2622235 s!13591))))

(declare-fun lt!2622238 () Regex!19522)

(assert (=> b!7459181 (= lt!2622234 (matchRSpec!4201 lt!2622238 s!13591))))

(assert (=> b!7459181 (= lt!2622234 (matchR!9286 lt!2622238 s!13591))))

(declare-fun lt!2622236 () Unit!165879)

(assert (=> b!7459181 (= lt!2622236 (mainMatchTheorem!4195 lt!2622238 s!13591))))

(declare-fun r1!5845 () Regex!19522)

(declare-fun rTail!78 () Regex!19522)

(assert (=> b!7459181 (= lt!2622235 (Union!19522 (Concat!28367 r1!5845 rTail!78) (Concat!28367 r2!5783 rTail!78)))))

(declare-fun lt!2622240 () Regex!19522)

(assert (=> b!7459181 (= lt!2622238 (Concat!28367 lt!2622240 rTail!78))))

(assert (=> b!7459181 (= lt!2622240 (Union!19522 r1!5845 r2!5783))))

(declare-fun b!7459182 () Bool)

(declare-fun tp!2161610 () Bool)

(assert (=> b!7459182 (= e!4451759 tp!2161610)))

(declare-fun b!7459183 () Bool)

(declare-fun tp!2161605 () Bool)

(assert (=> b!7459183 (= e!4451764 tp!2161605)))

(declare-fun b!7459184 () Bool)

(declare-fun res!2992059 () Bool)

(assert (=> b!7459184 (=> (not res!2992059) (not e!4451761))))

(assert (=> b!7459184 (= res!2992059 (validRegex!10036 rTail!78))))

(declare-fun b!7459185 () Bool)

(assert (=> b!7459185 (= e!4451759 tp_is_empty!49333)))

(assert (=> b!7459186 (= e!4451760 true)))

(declare-fun lambda!461480 () Int)

(declare-datatypes ((tuple2!68494 0))(
  ( (tuple2!68495 (_1!37550 List!72238) (_2!37550 List!72238)) )
))
(declare-datatypes ((Option!17079 0))(
  ( (None!17078) (Some!17078 (v!54207 tuple2!68494)) )
))
(declare-fun isDefined!13768 (Option!17079) Bool)

(declare-fun findConcatSeparation!3201 (Regex!19522 Regex!19522 List!72238 List!72238 List!72238) Option!17079)

(declare-fun Exists!4141 (Int) Bool)

(assert (=> b!7459186 (= (isDefined!13768 (findConcatSeparation!3201 lt!2622240 rTail!78 Nil!72114 s!13591 s!13591)) (Exists!4141 lambda!461480))))

(declare-fun lt!2622239 () Unit!165879)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2959 (Regex!19522 Regex!19522 List!72238) Unit!165879)

(assert (=> b!7459186 (= lt!2622239 (lemmaFindConcatSeparationEquivalentToExists!2959 lt!2622240 rTail!78 s!13591))))

(declare-fun res!2992057 () Bool)

(assert (=> start!723760 (=> (not res!2992057) (not e!4451761))))

(assert (=> start!723760 (= res!2992057 (validRegex!10036 r1!5845))))

(assert (=> start!723760 e!4451761))

(assert (=> start!723760 e!4451763))

(assert (=> start!723760 e!4451764))

(assert (=> start!723760 e!4451759))

(declare-fun e!4451762 () Bool)

(assert (=> start!723760 e!4451762))

(declare-fun b!7459187 () Bool)

(declare-fun tp!2161599 () Bool)

(assert (=> b!7459187 (= e!4451762 (and tp_is_empty!49333 tp!2161599))))

(declare-fun b!7459188 () Bool)

(declare-fun tp!2161596 () Bool)

(declare-fun tp!2161606 () Bool)

(assert (=> b!7459188 (= e!4451763 (and tp!2161596 tp!2161606))))

(assert (= (and start!723760 res!2992057) b!7459173))

(assert (= (and b!7459173 res!2992058) b!7459184))

(assert (= (and b!7459184 res!2992059) b!7459181))

(assert (= (and b!7459181 (not res!2992060)) b!7459186))

(assert (= (and start!723760 (is-ElementMatch!19522 r1!5845)) b!7459172))

(assert (= (and start!723760 (is-Concat!28367 r1!5845)) b!7459188))

(assert (= (and start!723760 (is-Star!19522 r1!5845)) b!7459177))

(assert (= (and start!723760 (is-Union!19522 r1!5845)) b!7459179))

(assert (= (and start!723760 (is-ElementMatch!19522 r2!5783)) b!7459180))

(assert (= (and start!723760 (is-Concat!28367 r2!5783)) b!7459174))

(assert (= (and start!723760 (is-Star!19522 r2!5783)) b!7459183))

(assert (= (and start!723760 (is-Union!19522 r2!5783)) b!7459175))

(assert (= (and start!723760 (is-ElementMatch!19522 rTail!78)) b!7459185))

(assert (= (and start!723760 (is-Concat!28367 rTail!78)) b!7459176))

(assert (= (and start!723760 (is-Star!19522 rTail!78)) b!7459182))

(assert (= (and start!723760 (is-Union!19522 rTail!78)) b!7459178))

(assert (= (and start!723760 (is-Cons!72114 s!13591)) b!7459187))

(declare-fun m!8061664 () Bool)

(assert (=> b!7459186 m!8061664))

(assert (=> b!7459186 m!8061664))

(declare-fun m!8061666 () Bool)

(assert (=> b!7459186 m!8061666))

(declare-fun m!8061668 () Bool)

(assert (=> b!7459186 m!8061668))

(declare-fun m!8061670 () Bool)

(assert (=> b!7459186 m!8061670))

(declare-fun m!8061672 () Bool)

(assert (=> b!7459181 m!8061672))

(declare-fun m!8061674 () Bool)

(assert (=> b!7459181 m!8061674))

(declare-fun m!8061676 () Bool)

(assert (=> b!7459181 m!8061676))

(declare-fun m!8061678 () Bool)

(assert (=> b!7459181 m!8061678))

(declare-fun m!8061680 () Bool)

(assert (=> b!7459181 m!8061680))

(declare-fun m!8061682 () Bool)

(assert (=> b!7459181 m!8061682))

(declare-fun m!8061684 () Bool)

(assert (=> start!723760 m!8061684))

(declare-fun m!8061686 () Bool)

(assert (=> b!7459184 m!8061686))

(declare-fun m!8061688 () Bool)

(assert (=> b!7459173 m!8061688))

(push 1)

(assert (not b!7459186))

(assert (not b!7459173))

(assert (not b!7459181))

(assert (not b!7459179))

(assert (not b!7459175))

(assert (not b!7459187))

(assert (not b!7459174))

(assert (not b!7459183))

(assert (not b!7459176))

(assert (not b!7459184))

(assert (not start!723760))

(assert (not b!7459177))

(assert tp_is_empty!49333)

(assert (not b!7459182))

(assert (not b!7459188))

(assert (not b!7459178))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

