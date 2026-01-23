; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734358 () Bool)

(assert start!734358)

(declare-fun b!7625242 () Bool)

(assert (=> b!7625242 true))

(assert (=> b!7625242 true))

(declare-fun b!7625238 () Bool)

(declare-fun e!4533684 () Bool)

(declare-fun tp_is_empty!51051 () Bool)

(assert (=> b!7625238 (= e!4533684 tp_is_empty!51051)))

(declare-fun b!7625239 () Bool)

(declare-fun tp!2226314 () Bool)

(declare-fun tp!2226311 () Bool)

(assert (=> b!7625239 (= e!4533684 (and tp!2226314 tp!2226311))))

(declare-fun b!7625240 () Bool)

(declare-fun e!4533683 () Bool)

(declare-fun tp!2226310 () Bool)

(assert (=> b!7625240 (= e!4533683 (and tp_is_empty!51051 tp!2226310))))

(declare-fun res!3053341 () Bool)

(declare-fun e!4533682 () Bool)

(assert (=> start!734358 (=> (not res!3053341) (not e!4533682))))

(declare-datatypes ((C!41022 0))(
  ( (C!41023 (val!30951 Int)) )
))
(declare-datatypes ((Regex!20348 0))(
  ( (ElementMatch!20348 (c!1405069 C!41022)) (Concat!29193 (regOne!41208 Regex!20348) (regTwo!41208 Regex!20348)) (EmptyExpr!20348) (Star!20348 (reg!20677 Regex!20348)) (EmptyLang!20348) (Union!20348 (regOne!41209 Regex!20348) (regTwo!41209 Regex!20348)) )
))
(declare-fun r!14126 () Regex!20348)

(declare-fun validRegex!10766 (Regex!20348) Bool)

(assert (=> start!734358 (= res!3053341 (validRegex!10766 r!14126))))

(assert (=> start!734358 e!4533682))

(assert (=> start!734358 e!4533684))

(assert (=> start!734358 e!4533683))

(declare-fun b!7625241 () Bool)

(declare-fun tp!2226313 () Bool)

(assert (=> b!7625241 (= e!4533684 tp!2226313)))

(assert (=> b!7625242 (= e!4533682 (not true))))

(declare-datatypes ((List!73199 0))(
  ( (Nil!73075) (Cons!73075 (h!79523 C!41022) (t!387934 List!73199)) )
))
(declare-fun s!9605 () List!73199)

(declare-fun lambda!468742 () Int)

(declare-datatypes ((tuple2!69254 0))(
  ( (tuple2!69255 (_1!37930 List!73199) (_2!37930 List!73199)) )
))
(declare-datatypes ((Option!17421 0))(
  ( (None!17420) (Some!17420 (v!54555 tuple2!69254)) )
))
(declare-fun isDefined!14037 (Option!17421) Bool)

(declare-fun findConcatSeparation!3451 (Regex!20348 Regex!20348 List!73199 List!73199 List!73199) Option!17421)

(declare-fun Exists!4502 (Int) Bool)

(assert (=> b!7625242 (= (isDefined!14037 (findConcatSeparation!3451 (regOne!41208 r!14126) (regTwo!41208 r!14126) Nil!73075 s!9605 s!9605)) (Exists!4502 lambda!468742))))

(declare-datatypes ((Unit!167624 0))(
  ( (Unit!167625) )
))
(declare-fun lt!2657791 () Unit!167624)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3209 (Regex!20348 Regex!20348 List!73199) Unit!167624)

(assert (=> b!7625242 (= lt!2657791 (lemmaFindConcatSeparationEquivalentToExists!3209 (regOne!41208 r!14126) (regTwo!41208 r!14126) s!9605))))

(declare-fun b!7625243 () Bool)

(declare-fun tp!2226312 () Bool)

(declare-fun tp!2226315 () Bool)

(assert (=> b!7625243 (= e!4533684 (and tp!2226312 tp!2226315))))

(declare-fun b!7625244 () Bool)

(declare-fun res!3053342 () Bool)

(assert (=> b!7625244 (=> (not res!3053342) (not e!4533682))))

(assert (=> b!7625244 (= res!3053342 (and (not (is-EmptyExpr!20348 r!14126)) (not (is-EmptyLang!20348 r!14126)) (not (is-ElementMatch!20348 r!14126)) (not (is-Union!20348 r!14126)) (not (is-Star!20348 r!14126))))))

(assert (= (and start!734358 res!3053341) b!7625244))

(assert (= (and b!7625244 res!3053342) b!7625242))

(assert (= (and start!734358 (is-ElementMatch!20348 r!14126)) b!7625238))

(assert (= (and start!734358 (is-Concat!29193 r!14126)) b!7625239))

(assert (= (and start!734358 (is-Star!20348 r!14126)) b!7625241))

(assert (= (and start!734358 (is-Union!20348 r!14126)) b!7625243))

(assert (= (and start!734358 (is-Cons!73075 s!9605)) b!7625240))

(declare-fun m!8155070 () Bool)

(assert (=> start!734358 m!8155070))

(declare-fun m!8155072 () Bool)

(assert (=> b!7625242 m!8155072))

(assert (=> b!7625242 m!8155072))

(declare-fun m!8155074 () Bool)

(assert (=> b!7625242 m!8155074))

(declare-fun m!8155076 () Bool)

(assert (=> b!7625242 m!8155076))

(declare-fun m!8155078 () Bool)

(assert (=> b!7625242 m!8155078))

(push 1)

(assert (not b!7625240))

(assert (not b!7625242))

(assert (not b!7625243))

(assert (not start!734358))

(assert (not b!7625239))

(assert (not b!7625241))

(assert tp_is_empty!51051)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

