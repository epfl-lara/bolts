; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81658 () Bool)

(assert start!81658)

(declare-fun b!908041 () Bool)

(assert (=> b!908041 true))

(assert (=> b!908041 true))

(declare-fun b!908039 () Bool)

(declare-fun e!592741 () Bool)

(declare-fun tp_is_empty!4465 () Bool)

(declare-fun tp!284191 () Bool)

(assert (=> b!908039 (= e!592741 (and tp_is_empty!4465 tp!284191))))

(declare-fun b!908040 () Bool)

(declare-fun e!592738 () Bool)

(assert (=> b!908040 (= e!592738 tp_is_empty!4465)))

(declare-fun e!592740 () Bool)

(assert (=> b!908041 (= e!592740 true)))

(declare-datatypes ((C!5392 0))(
  ( (C!5393 (val!2944 Int)) )
))
(declare-datatypes ((Regex!2411 0))(
  ( (ElementMatch!2411 (c!147102 C!5392)) (Concat!4244 (regOne!5334 Regex!2411) (regTwo!5334 Regex!2411)) (EmptyExpr!2411) (Star!2411 (reg!2740 Regex!2411)) (EmptyLang!2411) (Union!2411 (regOne!5335 Regex!2411) (regTwo!5335 Regex!2411)) )
))
(declare-fun r!15766 () Regex!2411)

(declare-datatypes ((List!9641 0))(
  ( (Nil!9625) (Cons!9625 (h!15026 C!5392) (t!100687 List!9641)) )
))
(declare-fun s!10566 () List!9641)

(declare-fun lambda!28752 () Int)

(declare-datatypes ((tuple2!10812 0))(
  ( (tuple2!10813 (_1!6232 List!9641) (_2!6232 List!9641)) )
))
(declare-datatypes ((Option!2048 0))(
  ( (None!2047) (Some!2047 (v!19464 tuple2!10812)) )
))
(declare-fun isDefined!1690 (Option!2048) Bool)

(declare-fun findConcatSeparation!154 (Regex!2411 Regex!2411 List!9641 List!9641 List!9641) Option!2048)

(declare-fun Exists!184 (Int) Bool)

(assert (=> b!908041 (= (isDefined!1690 (findConcatSeparation!154 (regOne!5334 r!15766) EmptyExpr!2411 Nil!9625 s!10566 s!10566)) (Exists!184 lambda!28752))))

(declare-datatypes ((Unit!14441 0))(
  ( (Unit!14442) )
))
(declare-fun lt!336118 () Unit!14441)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!154 (Regex!2411 Regex!2411 List!9641) Unit!14441)

(assert (=> b!908041 (= lt!336118 (lemmaFindConcatSeparationEquivalentToExists!154 (regOne!5334 r!15766) EmptyExpr!2411 s!10566))))

(declare-fun b!908042 () Bool)

(declare-fun tp!284187 () Bool)

(declare-fun tp!284188 () Bool)

(assert (=> b!908042 (= e!592738 (and tp!284187 tp!284188))))

(declare-fun b!908043 () Bool)

(declare-fun tp!284190 () Bool)

(declare-fun tp!284192 () Bool)

(assert (=> b!908043 (= e!592738 (and tp!284190 tp!284192))))

(declare-fun res!412899 () Bool)

(declare-fun e!592739 () Bool)

(assert (=> start!81658 (=> (not res!412899) (not e!592739))))

(declare-fun validRegex!880 (Regex!2411) Bool)

(assert (=> start!81658 (= res!412899 (validRegex!880 r!15766))))

(assert (=> start!81658 e!592739))

(assert (=> start!81658 e!592738))

(assert (=> start!81658 e!592741))

(declare-fun b!908044 () Bool)

(assert (=> b!908044 (= e!592739 (not e!592740))))

(declare-fun res!412900 () Bool)

(assert (=> b!908044 (=> res!412900 e!592740)))

(declare-fun lt!336119 () Bool)

(get-info :version)

(assert (=> b!908044 (= res!412900 (or lt!336119 (and ((_ is Concat!4244) r!15766) ((_ is EmptyExpr!2411) (regOne!5334 r!15766))) (not ((_ is Concat!4244) r!15766)) (not ((_ is EmptyExpr!2411) (regTwo!5334 r!15766)))))))

(declare-fun matchRSpec!212 (Regex!2411 List!9641) Bool)

(assert (=> b!908044 (= lt!336119 (matchRSpec!212 r!15766 s!10566))))

(declare-fun matchR!949 (Regex!2411 List!9641) Bool)

(assert (=> b!908044 (= lt!336119 (matchR!949 r!15766 s!10566))))

(declare-fun lt!336117 () Unit!14441)

(declare-fun mainMatchTheorem!212 (Regex!2411 List!9641) Unit!14441)

(assert (=> b!908044 (= lt!336117 (mainMatchTheorem!212 r!15766 s!10566))))

(declare-fun b!908045 () Bool)

(declare-fun tp!284189 () Bool)

(assert (=> b!908045 (= e!592738 tp!284189)))

(assert (= (and start!81658 res!412899) b!908044))

(assert (= (and b!908044 (not res!412900)) b!908041))

(assert (= (and start!81658 ((_ is ElementMatch!2411) r!15766)) b!908040))

(assert (= (and start!81658 ((_ is Concat!4244) r!15766)) b!908043))

(assert (= (and start!81658 ((_ is Star!2411) r!15766)) b!908045))

(assert (= (and start!81658 ((_ is Union!2411) r!15766)) b!908042))

(assert (= (and start!81658 ((_ is Cons!9625) s!10566)) b!908039))

(declare-fun m!1141981 () Bool)

(assert (=> b!908041 m!1141981))

(assert (=> b!908041 m!1141981))

(declare-fun m!1141983 () Bool)

(assert (=> b!908041 m!1141983))

(declare-fun m!1141985 () Bool)

(assert (=> b!908041 m!1141985))

(declare-fun m!1141987 () Bool)

(assert (=> b!908041 m!1141987))

(declare-fun m!1141989 () Bool)

(assert (=> start!81658 m!1141989))

(declare-fun m!1141991 () Bool)

(assert (=> b!908044 m!1141991))

(declare-fun m!1141993 () Bool)

(assert (=> b!908044 m!1141993))

(declare-fun m!1141995 () Bool)

(assert (=> b!908044 m!1141995))

(check-sat (not b!908045) (not b!908043) (not b!908044) (not b!908042) tp_is_empty!4465 (not b!908039) (not start!81658) (not b!908041))
(check-sat)
