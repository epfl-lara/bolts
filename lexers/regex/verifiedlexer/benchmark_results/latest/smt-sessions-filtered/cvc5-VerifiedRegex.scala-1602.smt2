; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82444 () Bool)

(assert start!82444)

(declare-fun b!917325 () Bool)

(assert (=> b!917325 true))

(assert (=> b!917325 true))

(declare-fun lambda!29592 () Int)

(declare-fun lambda!29591 () Int)

(assert (=> b!917325 (not (= lambda!29592 lambda!29591))))

(assert (=> b!917325 true))

(assert (=> b!917325 true))

(declare-fun b!917318 () Bool)

(declare-fun e!597652 () Bool)

(declare-fun tp_is_empty!4567 () Bool)

(assert (=> b!917318 (= e!597652 tp_is_empty!4567)))

(declare-fun b!917319 () Bool)

(declare-fun tp!286246 () Bool)

(declare-fun tp!286250 () Bool)

(assert (=> b!917319 (= e!597652 (and tp!286246 tp!286250))))

(declare-fun b!917320 () Bool)

(declare-fun e!597654 () Bool)

(assert (=> b!917320 (= e!597654 true)))

(declare-datatypes ((C!5494 0))(
  ( (C!5495 (val!2995 Int)) )
))
(declare-datatypes ((Regex!2462 0))(
  ( (ElementMatch!2462 (c!148717 C!5494)) (Concat!4295 (regOne!5436 Regex!2462) (regTwo!5436 Regex!2462)) (EmptyExpr!2462) (Star!2462 (reg!2791 Regex!2462)) (EmptyLang!2462) (Union!2462 (regOne!5437 Regex!2462) (regTwo!5437 Regex!2462)) )
))
(declare-fun lt!337691 () Regex!2462)

(declare-datatypes ((List!9692 0))(
  ( (Nil!9676) (Cons!9676 (h!15077 C!5494) (t!100738 List!9692)) )
))
(declare-fun s!10566 () List!9692)

(declare-fun matchRSpec!263 (Regex!2462 List!9692) Bool)

(assert (=> b!917320 (matchRSpec!263 lt!337691 s!10566)))

(declare-datatypes ((Unit!14543 0))(
  ( (Unit!14544) )
))
(declare-fun lt!337693 () Unit!14543)

(declare-fun mainMatchTheorem!263 (Regex!2462 List!9692) Unit!14543)

(assert (=> b!917320 (= lt!337693 (mainMatchTheorem!263 lt!337691 s!10566))))

(declare-fun b!917321 () Bool)

(declare-fun e!597655 () Bool)

(declare-fun tp!286249 () Bool)

(assert (=> b!917321 (= e!597655 (and tp_is_empty!4567 tp!286249))))

(declare-fun b!917322 () Bool)

(declare-fun e!597656 () Bool)

(declare-fun e!597653 () Bool)

(assert (=> b!917322 (= e!597656 (not e!597653))))

(declare-fun res!417042 () Bool)

(assert (=> b!917322 (=> res!417042 e!597653)))

(declare-fun lt!337694 () Bool)

(declare-fun r!15766 () Regex!2462)

(assert (=> b!917322 (= res!417042 (or lt!337694 (and (is-Concat!4295 r!15766) (is-EmptyExpr!2462 (regOne!5436 r!15766))) (and (is-Concat!4295 r!15766) (is-EmptyExpr!2462 (regTwo!5436 r!15766))) (not (is-Concat!4295 r!15766))))))

(assert (=> b!917322 (= lt!337694 (matchRSpec!263 r!15766 s!10566))))

(declare-fun matchR!1000 (Regex!2462 List!9692) Bool)

(assert (=> b!917322 (= lt!337694 (matchR!1000 r!15766 s!10566))))

(declare-fun lt!337695 () Unit!14543)

(assert (=> b!917322 (= lt!337695 (mainMatchTheorem!263 r!15766 s!10566))))

(declare-fun b!917323 () Bool)

(declare-fun tp!286245 () Bool)

(assert (=> b!917323 (= e!597652 tp!286245)))

(declare-fun b!917324 () Bool)

(declare-fun e!597657 () Bool)

(assert (=> b!917324 (= e!597657 e!597654)))

(declare-fun res!417039 () Bool)

(assert (=> b!917324 (=> res!417039 e!597654)))

(assert (=> b!917324 (= res!417039 (not (matchR!1000 lt!337691 s!10566)))))

(declare-fun removeUselessConcat!139 (Regex!2462) Regex!2462)

(assert (=> b!917324 (= lt!337691 (Concat!4295 (removeUselessConcat!139 (regOne!5436 r!15766)) (removeUselessConcat!139 (regTwo!5436 r!15766))))))

(declare-fun res!417041 () Bool)

(assert (=> start!82444 (=> (not res!417041) (not e!597656))))

(declare-fun validRegex!931 (Regex!2462) Bool)

(assert (=> start!82444 (= res!417041 (validRegex!931 r!15766))))

(assert (=> start!82444 e!597656))

(assert (=> start!82444 e!597652))

(assert (=> start!82444 e!597655))

(assert (=> b!917325 (= e!597653 e!597657)))

(declare-fun res!417040 () Bool)

(assert (=> b!917325 (=> res!417040 e!597657)))

(declare-fun isEmpty!5909 (List!9692) Bool)

(assert (=> b!917325 (= res!417040 (isEmpty!5909 s!10566))))

(declare-fun Exists!233 (Int) Bool)

(assert (=> b!917325 (= (Exists!233 lambda!29591) (Exists!233 lambda!29592))))

(declare-fun lt!337692 () Unit!14543)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!145 (Regex!2462 Regex!2462 List!9692) Unit!14543)

(assert (=> b!917325 (= lt!337692 (lemmaExistCutMatchRandMatchRSpecEquivalent!145 (regOne!5436 r!15766) (regTwo!5436 r!15766) s!10566))))

(declare-datatypes ((tuple2!10910 0))(
  ( (tuple2!10911 (_1!6281 List!9692) (_2!6281 List!9692)) )
))
(declare-datatypes ((Option!2097 0))(
  ( (None!2096) (Some!2096 (v!19513 tuple2!10910)) )
))
(declare-fun isDefined!1739 (Option!2097) Bool)

(declare-fun findConcatSeparation!203 (Regex!2462 Regex!2462 List!9692 List!9692 List!9692) Option!2097)

(assert (=> b!917325 (= (isDefined!1739 (findConcatSeparation!203 (regOne!5436 r!15766) (regTwo!5436 r!15766) Nil!9676 s!10566 s!10566)) (Exists!233 lambda!29591))))

(declare-fun lt!337690 () Unit!14543)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!203 (Regex!2462 Regex!2462 List!9692) Unit!14543)

(assert (=> b!917325 (= lt!337690 (lemmaFindConcatSeparationEquivalentToExists!203 (regOne!5436 r!15766) (regTwo!5436 r!15766) s!10566))))

(declare-fun b!917326 () Bool)

(declare-fun tp!286248 () Bool)

(declare-fun tp!286247 () Bool)

(assert (=> b!917326 (= e!597652 (and tp!286248 tp!286247))))

(assert (= (and start!82444 res!417041) b!917322))

(assert (= (and b!917322 (not res!417042)) b!917325))

(assert (= (and b!917325 (not res!417040)) b!917324))

(assert (= (and b!917324 (not res!417039)) b!917320))

(assert (= (and start!82444 (is-ElementMatch!2462 r!15766)) b!917318))

(assert (= (and start!82444 (is-Concat!4295 r!15766)) b!917319))

(assert (= (and start!82444 (is-Star!2462 r!15766)) b!917323))

(assert (= (and start!82444 (is-Union!2462 r!15766)) b!917326))

(assert (= (and start!82444 (is-Cons!9676 s!10566)) b!917321))

(declare-fun m!1146105 () Bool)

(assert (=> start!82444 m!1146105))

(declare-fun m!1146107 () Bool)

(assert (=> b!917325 m!1146107))

(assert (=> b!917325 m!1146107))

(declare-fun m!1146109 () Bool)

(assert (=> b!917325 m!1146109))

(declare-fun m!1146111 () Bool)

(assert (=> b!917325 m!1146111))

(declare-fun m!1146113 () Bool)

(assert (=> b!917325 m!1146113))

(declare-fun m!1146115 () Bool)

(assert (=> b!917325 m!1146115))

(assert (=> b!917325 m!1146115))

(declare-fun m!1146117 () Bool)

(assert (=> b!917325 m!1146117))

(declare-fun m!1146119 () Bool)

(assert (=> b!917325 m!1146119))

(declare-fun m!1146121 () Bool)

(assert (=> b!917320 m!1146121))

(declare-fun m!1146123 () Bool)

(assert (=> b!917320 m!1146123))

(declare-fun m!1146125 () Bool)

(assert (=> b!917322 m!1146125))

(declare-fun m!1146127 () Bool)

(assert (=> b!917322 m!1146127))

(declare-fun m!1146129 () Bool)

(assert (=> b!917322 m!1146129))

(declare-fun m!1146131 () Bool)

(assert (=> b!917324 m!1146131))

(declare-fun m!1146133 () Bool)

(assert (=> b!917324 m!1146133))

(declare-fun m!1146135 () Bool)

(assert (=> b!917324 m!1146135))

(push 1)

(assert (not b!917326))

(assert (not start!82444))

(assert (not b!917323))

(assert (not b!917324))

(assert tp_is_empty!4567)

(assert (not b!917322))

(assert (not b!917321))

(assert (not b!917325))

(assert (not b!917319))

(assert (not b!917320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

