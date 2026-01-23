; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81316 () Bool)

(assert start!81316)

(declare-fun b!904140 () Bool)

(assert (=> b!904140 true))

(assert (=> b!904140 true))

(declare-fun lambda!28398 () Int)

(declare-fun lambda!28397 () Int)

(assert (=> b!904140 (not (= lambda!28398 lambda!28397))))

(assert (=> b!904140 true))

(assert (=> b!904140 true))

(declare-fun b!904134 () Bool)

(declare-fun e!590694 () Bool)

(declare-fun tp_is_empty!4415 () Bool)

(declare-fun tp!283285 () Bool)

(assert (=> b!904134 (= e!590694 (and tp_is_empty!4415 tp!283285))))

(declare-fun res!411091 () Bool)

(declare-fun e!590696 () Bool)

(assert (=> start!81316 (=> (not res!411091) (not e!590696))))

(declare-datatypes ((C!5342 0))(
  ( (C!5343 (val!2919 Int)) )
))
(declare-datatypes ((Regex!2386 0))(
  ( (ElementMatch!2386 (c!146473 C!5342)) (Concat!4219 (regOne!5284 Regex!2386) (regTwo!5284 Regex!2386)) (EmptyExpr!2386) (Star!2386 (reg!2715 Regex!2386)) (EmptyLang!2386) (Union!2386 (regOne!5285 Regex!2386) (regTwo!5285 Regex!2386)) )
))
(declare-fun r!15766 () Regex!2386)

(declare-fun validRegex!855 (Regex!2386) Bool)

(assert (=> start!81316 (= res!411091 (validRegex!855 r!15766))))

(assert (=> start!81316 e!590696))

(declare-fun e!590695 () Bool)

(assert (=> start!81316 e!590695))

(assert (=> start!81316 e!590694))

(declare-fun b!904135 () Bool)

(assert (=> b!904135 (= e!590695 tp_is_empty!4415)))

(declare-fun b!904136 () Bool)

(declare-fun tp!283286 () Bool)

(declare-fun tp!283282 () Bool)

(assert (=> b!904136 (= e!590695 (and tp!283286 tp!283282))))

(declare-fun b!904137 () Bool)

(declare-fun e!590693 () Bool)

(assert (=> b!904137 (= e!590696 (not e!590693))))

(declare-fun res!411090 () Bool)

(assert (=> b!904137 (=> res!411090 e!590693)))

(declare-fun lt!335338 () Bool)

(assert (=> b!904137 (= res!411090 (or lt!335338 (not (is-Concat!4219 r!15766)) (not (is-EmptyExpr!2386 (regOne!5284 r!15766)))))))

(declare-datatypes ((List!9616 0))(
  ( (Nil!9600) (Cons!9600 (h!15001 C!5342) (t!100662 List!9616)) )
))
(declare-fun s!10566 () List!9616)

(declare-fun matchRSpec!187 (Regex!2386 List!9616) Bool)

(assert (=> b!904137 (= lt!335338 (matchRSpec!187 r!15766 s!10566))))

(declare-fun matchR!924 (Regex!2386 List!9616) Bool)

(assert (=> b!904137 (= lt!335338 (matchR!924 r!15766 s!10566))))

(declare-datatypes ((Unit!14391 0))(
  ( (Unit!14392) )
))
(declare-fun lt!335336 () Unit!14391)

(declare-fun mainMatchTheorem!187 (Regex!2386 List!9616) Unit!14391)

(assert (=> b!904137 (= lt!335336 (mainMatchTheorem!187 r!15766 s!10566))))

(declare-fun b!904138 () Bool)

(declare-fun tp!283284 () Bool)

(declare-fun tp!283283 () Bool)

(assert (=> b!904138 (= e!590695 (and tp!283284 tp!283283))))

(declare-fun b!904139 () Bool)

(declare-fun e!590692 () Bool)

(assert (=> b!904139 (= e!590692 true)))

(assert (=> b!904140 (= e!590693 e!590692)))

(declare-fun res!411089 () Bool)

(assert (=> b!904140 (=> res!411089 e!590692)))

(declare-fun isEmpty!5802 (List!9616) Bool)

(assert (=> b!904140 (= res!411089 (isEmpty!5802 s!10566))))

(declare-fun Exists!161 (Int) Bool)

(assert (=> b!904140 (= (Exists!161 lambda!28397) (Exists!161 lambda!28398))))

(declare-fun lt!335339 () Unit!14391)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!77 (Regex!2386 Regex!2386 List!9616) Unit!14391)

(assert (=> b!904140 (= lt!335339 (lemmaExistCutMatchRandMatchRSpecEquivalent!77 EmptyExpr!2386 (regTwo!5284 r!15766) s!10566))))

(declare-datatypes ((tuple2!10766 0))(
  ( (tuple2!10767 (_1!6209 List!9616) (_2!6209 List!9616)) )
))
(declare-datatypes ((Option!2025 0))(
  ( (None!2024) (Some!2024 (v!19441 tuple2!10766)) )
))
(declare-fun isDefined!1667 (Option!2025) Bool)

(declare-fun findConcatSeparation!131 (Regex!2386 Regex!2386 List!9616 List!9616 List!9616) Option!2025)

(assert (=> b!904140 (= (isDefined!1667 (findConcatSeparation!131 EmptyExpr!2386 (regTwo!5284 r!15766) Nil!9600 s!10566 s!10566)) (Exists!161 lambda!28397))))

(declare-fun lt!335337 () Unit!14391)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!131 (Regex!2386 Regex!2386 List!9616) Unit!14391)

(assert (=> b!904140 (= lt!335337 (lemmaFindConcatSeparationEquivalentToExists!131 EmptyExpr!2386 (regTwo!5284 r!15766) s!10566))))

(declare-fun b!904141 () Bool)

(declare-fun tp!283281 () Bool)

(assert (=> b!904141 (= e!590695 tp!283281)))

(assert (= (and start!81316 res!411091) b!904137))

(assert (= (and b!904137 (not res!411090)) b!904140))

(assert (= (and b!904140 (not res!411089)) b!904139))

(assert (= (and start!81316 (is-ElementMatch!2386 r!15766)) b!904135))

(assert (= (and start!81316 (is-Concat!4219 r!15766)) b!904136))

(assert (= (and start!81316 (is-Star!2386 r!15766)) b!904141))

(assert (= (and start!81316 (is-Union!2386 r!15766)) b!904138))

(assert (= (and start!81316 (is-Cons!9600 s!10566)) b!904134))

(declare-fun m!1140177 () Bool)

(assert (=> start!81316 m!1140177))

(declare-fun m!1140179 () Bool)

(assert (=> b!904137 m!1140179))

(declare-fun m!1140181 () Bool)

(assert (=> b!904137 m!1140181))

(declare-fun m!1140183 () Bool)

(assert (=> b!904137 m!1140183))

(declare-fun m!1140185 () Bool)

(assert (=> b!904140 m!1140185))

(declare-fun m!1140187 () Bool)

(assert (=> b!904140 m!1140187))

(declare-fun m!1140189 () Bool)

(assert (=> b!904140 m!1140189))

(assert (=> b!904140 m!1140185))

(declare-fun m!1140191 () Bool)

(assert (=> b!904140 m!1140191))

(declare-fun m!1140193 () Bool)

(assert (=> b!904140 m!1140193))

(declare-fun m!1140195 () Bool)

(assert (=> b!904140 m!1140195))

(declare-fun m!1140197 () Bool)

(assert (=> b!904140 m!1140197))

(assert (=> b!904140 m!1140187))

(push 1)

(assert (not b!904136))

(assert (not b!904137))

(assert (not b!904141))

(assert (not start!81316))

(assert tp_is_empty!4415)

(assert (not b!904140))

(assert (not b!904138))

(assert (not b!904134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

