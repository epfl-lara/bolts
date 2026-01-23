; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84966 () Bool)

(assert start!84966)

(declare-fun b!953589 () Bool)

(declare-fun e!616945 () Bool)

(declare-fun lt!345042 () Bool)

(assert (=> b!953589 (= e!616945 lt!345042)))

(declare-fun lt!345037 () Bool)

(assert (=> b!953589 (= lt!345037 lt!345042)))

(declare-datatypes ((C!5836 0))(
  ( (C!5837 (val!3166 Int)) )
))
(declare-datatypes ((Regex!2633 0))(
  ( (ElementMatch!2633 (c!155250 C!5836)) (Concat!4466 (regOne!5778 Regex!2633) (regTwo!5778 Regex!2633)) (EmptyExpr!2633) (Star!2633 (reg!2962 Regex!2633)) (EmptyLang!2633) (Union!2633 (regOne!5779 Regex!2633) (regTwo!5779 Regex!2633)) )
))
(declare-fun lt!345038 () Regex!2633)

(declare-datatypes ((List!9863 0))(
  ( (Nil!9847) (Cons!9847 (h!15248 C!5836) (t!100909 List!9863)) )
))
(declare-fun s!10566 () List!9863)

(declare-fun matchR!1171 (Regex!2633 List!9863) Bool)

(assert (=> b!953589 (= lt!345042 (matchR!1171 lt!345038 s!10566))))

(declare-fun r!15766 () Regex!2633)

(assert (=> b!953589 (= lt!345037 (matchR!1171 (regTwo!5779 r!15766) s!10566))))

(declare-fun removeUselessConcat!290 (Regex!2633) Regex!2633)

(assert (=> b!953589 (= lt!345038 (removeUselessConcat!290 (regTwo!5779 r!15766)))))

(declare-datatypes ((Unit!14909 0))(
  ( (Unit!14910) )
))
(declare-fun lt!345039 () Unit!14909)

(declare-fun lemmaRemoveUselessConcatSound!150 (Regex!2633 List!9863) Unit!14909)

(assert (=> b!953589 (= lt!345039 (lemmaRemoveUselessConcatSound!150 (regTwo!5779 r!15766) s!10566))))

(declare-fun res!433334 () Bool)

(declare-fun e!616944 () Bool)

(assert (=> start!84966 (=> (not res!433334) (not e!616944))))

(declare-fun validRegex!1102 (Regex!2633) Bool)

(assert (=> start!84966 (= res!433334 (validRegex!1102 r!15766))))

(assert (=> start!84966 e!616944))

(declare-fun e!616947 () Bool)

(assert (=> start!84966 e!616947))

(declare-fun e!616949 () Bool)

(assert (=> start!84966 e!616949))

(declare-fun b!953590 () Bool)

(declare-fun e!616948 () Bool)

(assert (=> b!953590 (= e!616948 (matchR!1171 (regTwo!5779 r!15766) s!10566))))

(declare-fun b!953591 () Bool)

(declare-fun tp!293855 () Bool)

(declare-fun tp!293859 () Bool)

(assert (=> b!953591 (= e!616947 (and tp!293855 tp!293859))))

(declare-fun b!953592 () Bool)

(declare-fun tp_is_empty!4909 () Bool)

(assert (=> b!953592 (= e!616947 tp_is_empty!4909)))

(declare-fun b!953593 () Bool)

(declare-fun tp!293860 () Bool)

(assert (=> b!953593 (= e!616947 tp!293860)))

(declare-fun b!953594 () Bool)

(declare-fun tp!293858 () Bool)

(declare-fun tp!293857 () Bool)

(assert (=> b!953594 (= e!616947 (and tp!293858 tp!293857))))

(declare-fun b!953595 () Bool)

(declare-fun tp!293856 () Bool)

(assert (=> b!953595 (= e!616949 (and tp_is_empty!4909 tp!293856))))

(declare-fun b!953596 () Bool)

(declare-fun e!616946 () Bool)

(assert (=> b!953596 (= e!616946 e!616945)))

(declare-fun res!433333 () Bool)

(assert (=> b!953596 (=> res!433333 e!616945)))

(declare-fun lt!345036 () Bool)

(assert (=> b!953596 (= res!433333 lt!345036)))

(assert (=> b!953596 e!616948))

(declare-fun res!433332 () Bool)

(assert (=> b!953596 (=> res!433332 e!616948)))

(assert (=> b!953596 (= res!433332 lt!345036)))

(assert (=> b!953596 (= lt!345036 (matchR!1171 (regOne!5779 r!15766) s!10566))))

(declare-fun lt!345040 () Unit!14909)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!62 (Regex!2633 Regex!2633 List!9863) Unit!14909)

(assert (=> b!953596 (= lt!345040 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!62 (regOne!5779 r!15766) (regTwo!5779 r!15766) s!10566))))

(declare-fun b!953597 () Bool)

(assert (=> b!953597 (= e!616944 (not e!616946))))

(declare-fun res!433331 () Bool)

(assert (=> b!953597 (=> res!433331 e!616946)))

(declare-fun lt!345041 () Bool)

(get-info :version)

(assert (=> b!953597 (= res!433331 (or (not lt!345041) (and ((_ is Concat!4466) r!15766) ((_ is EmptyExpr!2633) (regOne!5778 r!15766))) (and ((_ is Concat!4466) r!15766) ((_ is EmptyExpr!2633) (regTwo!5778 r!15766))) ((_ is Concat!4466) r!15766) (not ((_ is Union!2633) r!15766))))))

(declare-fun matchRSpec!434 (Regex!2633 List!9863) Bool)

(assert (=> b!953597 (= lt!345041 (matchRSpec!434 r!15766 s!10566))))

(assert (=> b!953597 (= lt!345041 (matchR!1171 r!15766 s!10566))))

(declare-fun lt!345043 () Unit!14909)

(declare-fun mainMatchTheorem!434 (Regex!2633 List!9863) Unit!14909)

(assert (=> b!953597 (= lt!345043 (mainMatchTheorem!434 r!15766 s!10566))))

(assert (= (and start!84966 res!433334) b!953597))

(assert (= (and b!953597 (not res!433331)) b!953596))

(assert (= (and b!953596 (not res!433332)) b!953590))

(assert (= (and b!953596 (not res!433333)) b!953589))

(assert (= (and start!84966 ((_ is ElementMatch!2633) r!15766)) b!953592))

(assert (= (and start!84966 ((_ is Concat!4466) r!15766)) b!953594))

(assert (= (and start!84966 ((_ is Star!2633) r!15766)) b!953593))

(assert (= (and start!84966 ((_ is Union!2633) r!15766)) b!953591))

(assert (= (and start!84966 ((_ is Cons!9847) s!10566)) b!953595))

(declare-fun m!1165197 () Bool)

(assert (=> b!953589 m!1165197))

(declare-fun m!1165199 () Bool)

(assert (=> b!953589 m!1165199))

(declare-fun m!1165201 () Bool)

(assert (=> b!953589 m!1165201))

(declare-fun m!1165203 () Bool)

(assert (=> b!953589 m!1165203))

(assert (=> b!953590 m!1165199))

(declare-fun m!1165205 () Bool)

(assert (=> b!953597 m!1165205))

(declare-fun m!1165207 () Bool)

(assert (=> b!953597 m!1165207))

(declare-fun m!1165209 () Bool)

(assert (=> b!953597 m!1165209))

(declare-fun m!1165211 () Bool)

(assert (=> b!953596 m!1165211))

(declare-fun m!1165213 () Bool)

(assert (=> b!953596 m!1165213))

(declare-fun m!1165215 () Bool)

(assert (=> start!84966 m!1165215))

(check-sat (not b!953594) (not start!84966) (not b!953595) (not b!953593) (not b!953591) (not b!953596) (not b!953597) (not b!953589) tp_is_empty!4909 (not b!953590))
(check-sat)
