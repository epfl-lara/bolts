; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80588 () Bool)

(assert start!80588)

(declare-fun b!894784 () Bool)

(assert (=> b!894784 true))

(assert (=> b!894784 true))

(assert (=> b!894784 true))

(declare-fun b!894778 () Bool)

(declare-fun e!585880 () Bool)

(declare-fun e!585878 () Bool)

(assert (=> b!894778 (= e!585880 (not e!585878))))

(declare-fun res!406696 () Bool)

(assert (=> b!894778 (=> res!406696 e!585878)))

(declare-fun lt!333165 () Bool)

(declare-datatypes ((C!5230 0))(
  ( (C!5231 (val!2863 Int)) )
))
(declare-datatypes ((Regex!2330 0))(
  ( (ElementMatch!2330 (c!144919 C!5230)) (Concat!4163 (regOne!5172 Regex!2330) (regTwo!5172 Regex!2330)) (EmptyExpr!2330) (Star!2330 (reg!2659 Regex!2330)) (EmptyLang!2330) (Union!2330 (regOne!5173 Regex!2330) (regTwo!5173 Regex!2330)) )
))
(declare-fun r!15766 () Regex!2330)

(assert (=> b!894778 (= res!406696 (or (not lt!333165) (and (is-Concat!4163 r!15766) (is-EmptyExpr!2330 (regOne!5172 r!15766))) (and (is-Concat!4163 r!15766) (is-EmptyExpr!2330 (regTwo!5172 r!15766))) (is-Concat!4163 r!15766) (is-Union!2330 r!15766) (not (is-Star!2330 r!15766))))))

(declare-datatypes ((List!9560 0))(
  ( (Nil!9544) (Cons!9544 (h!14945 C!5230) (t!100606 List!9560)) )
))
(declare-fun s!10566 () List!9560)

(declare-fun matchRSpec!131 (Regex!2330 List!9560) Bool)

(assert (=> b!894778 (= lt!333165 (matchRSpec!131 r!15766 s!10566))))

(declare-fun matchR!868 (Regex!2330 List!9560) Bool)

(assert (=> b!894778 (= lt!333165 (matchR!868 r!15766 s!10566))))

(declare-datatypes ((Unit!14239 0))(
  ( (Unit!14240) )
))
(declare-fun lt!333162 () Unit!14239)

(declare-fun mainMatchTheorem!131 (Regex!2330 List!9560) Unit!14239)

(assert (=> b!894778 (= lt!333162 (mainMatchTheorem!131 r!15766 s!10566))))

(declare-fun b!894779 () Bool)

(declare-fun e!585879 () Bool)

(declare-fun tp_is_empty!4303 () Bool)

(assert (=> b!894779 (= e!585879 tp_is_empty!4303)))

(declare-fun b!894780 () Bool)

(declare-fun tp!281286 () Bool)

(declare-fun tp!281287 () Bool)

(assert (=> b!894780 (= e!585879 (and tp!281286 tp!281287))))

(declare-fun b!894781 () Bool)

(declare-fun tp!281288 () Bool)

(declare-fun tp!281290 () Bool)

(assert (=> b!894781 (= e!585879 (and tp!281288 tp!281290))))

(declare-fun res!406695 () Bool)

(assert (=> start!80588 (=> (not res!406695) (not e!585880))))

(declare-fun validRegex!799 (Regex!2330) Bool)

(assert (=> start!80588 (= res!406695 (validRegex!799 r!15766))))

(assert (=> start!80588 e!585880))

(assert (=> start!80588 e!585879))

(declare-fun e!585881 () Bool)

(assert (=> start!80588 e!585881))

(declare-fun b!894782 () Bool)

(declare-fun tp!281285 () Bool)

(assert (=> b!894782 (= e!585881 (and tp_is_empty!4303 tp!281285))))

(declare-fun b!894783 () Bool)

(declare-fun tp!281289 () Bool)

(assert (=> b!894783 (= e!585879 tp!281289)))

(assert (=> b!894784 (= e!585878 true)))

(declare-fun lt!333163 () Regex!2330)

(declare-fun lambda!27625 () Int)

(declare-datatypes ((tuple2!10662 0))(
  ( (tuple2!10663 (_1!6157 List!9560) (_2!6157 List!9560)) )
))
(declare-datatypes ((Option!1973 0))(
  ( (None!1972) (Some!1972 (v!19389 tuple2!10662)) )
))
(declare-fun isDefined!1615 (Option!1973) Bool)

(declare-fun findConcatSeparation!79 (Regex!2330 Regex!2330 List!9560 List!9560 List!9560) Option!1973)

(declare-fun Exists!107 (Int) Bool)

(assert (=> b!894784 (= (isDefined!1615 (findConcatSeparation!79 (reg!2659 r!15766) lt!333163 Nil!9544 s!10566 s!10566)) (Exists!107 lambda!27625))))

(declare-fun lt!333164 () Unit!14239)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!79 (Regex!2330 Regex!2330 List!9560) Unit!14239)

(assert (=> b!894784 (= lt!333164 (lemmaFindConcatSeparationEquivalentToExists!79 (reg!2659 r!15766) lt!333163 s!10566))))

(assert (=> b!894784 (= lt!333163 (Star!2330 (reg!2659 r!15766)))))

(assert (= (and start!80588 res!406695) b!894778))

(assert (= (and b!894778 (not res!406696)) b!894784))

(assert (= (and start!80588 (is-ElementMatch!2330 r!15766)) b!894779))

(assert (= (and start!80588 (is-Concat!4163 r!15766)) b!894781))

(assert (= (and start!80588 (is-Star!2330 r!15766)) b!894783))

(assert (= (and start!80588 (is-Union!2330 r!15766)) b!894780))

(assert (= (and start!80588 (is-Cons!9544 s!10566)) b!894782))

(declare-fun m!1135509 () Bool)

(assert (=> b!894778 m!1135509))

(declare-fun m!1135511 () Bool)

(assert (=> b!894778 m!1135511))

(declare-fun m!1135513 () Bool)

(assert (=> b!894778 m!1135513))

(declare-fun m!1135515 () Bool)

(assert (=> start!80588 m!1135515))

(declare-fun m!1135517 () Bool)

(assert (=> b!894784 m!1135517))

(assert (=> b!894784 m!1135517))

(declare-fun m!1135519 () Bool)

(assert (=> b!894784 m!1135519))

(declare-fun m!1135521 () Bool)

(assert (=> b!894784 m!1135521))

(declare-fun m!1135523 () Bool)

(assert (=> b!894784 m!1135523))

(push 1)

(assert (not b!894784))

(assert (not b!894782))

(assert (not b!894778))

(assert (not b!894783))

(assert tp_is_empty!4303)

(assert (not start!80588))

(assert (not b!894781))

(assert (not b!894780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

