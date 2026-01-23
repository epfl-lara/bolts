; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84962 () Bool)

(assert start!84962)

(declare-fun res!433308 () Bool)

(declare-fun e!616910 () Bool)

(assert (=> start!84962 (=> (not res!433308) (not e!616910))))

(declare-datatypes ((C!5832 0))(
  ( (C!5833 (val!3164 Int)) )
))
(declare-datatypes ((Regex!2631 0))(
  ( (ElementMatch!2631 (c!155248 C!5832)) (Concat!4464 (regOne!5774 Regex!2631) (regTwo!5774 Regex!2631)) (EmptyExpr!2631) (Star!2631 (reg!2960 Regex!2631)) (EmptyLang!2631) (Union!2631 (regOne!5775 Regex!2631) (regTwo!5775 Regex!2631)) )
))
(declare-fun r!15766 () Regex!2631)

(declare-fun validRegex!1100 (Regex!2631) Bool)

(assert (=> start!84962 (= res!433308 (validRegex!1100 r!15766))))

(assert (=> start!84962 e!616910))

(declare-fun e!616908 () Bool)

(assert (=> start!84962 e!616908))

(declare-fun e!616912 () Bool)

(assert (=> start!84962 e!616912))

(declare-fun b!953535 () Bool)

(declare-fun e!616913 () Bool)

(declare-fun e!616911 () Bool)

(assert (=> b!953535 (= e!616913 e!616911)))

(declare-fun res!433309 () Bool)

(assert (=> b!953535 (=> res!433309 e!616911)))

(declare-fun lt!344995 () Bool)

(assert (=> b!953535 (= res!433309 (not lt!344995))))

(declare-fun e!616909 () Bool)

(assert (=> b!953535 e!616909))

(declare-fun res!433307 () Bool)

(assert (=> b!953535 (=> res!433307 e!616909)))

(assert (=> b!953535 (= res!433307 lt!344995)))

(declare-datatypes ((List!9861 0))(
  ( (Nil!9845) (Cons!9845 (h!15246 C!5832) (t!100907 List!9861)) )
))
(declare-fun s!10566 () List!9861)

(declare-fun matchR!1169 (Regex!2631 List!9861) Bool)

(assert (=> b!953535 (= lt!344995 (matchR!1169 (regOne!5775 r!15766) s!10566))))

(declare-datatypes ((Unit!14905 0))(
  ( (Unit!14906) )
))
(declare-fun lt!344993 () Unit!14905)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!60 (Regex!2631 Regex!2631 List!9861) Unit!14905)

(assert (=> b!953535 (= lt!344993 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!60 (regOne!5775 r!15766) (regTwo!5775 r!15766) s!10566))))

(declare-fun b!953536 () Bool)

(declare-fun tp_is_empty!4905 () Bool)

(declare-fun tp!293823 () Bool)

(assert (=> b!953536 (= e!616912 (and tp_is_empty!4905 tp!293823))))

(declare-fun b!953537 () Bool)

(declare-fun tp!293822 () Bool)

(declare-fun tp!293820 () Bool)

(assert (=> b!953537 (= e!616908 (and tp!293822 tp!293820))))

(declare-fun b!953538 () Bool)

(assert (=> b!953538 (= e!616910 (not e!616913))))

(declare-fun res!433310 () Bool)

(assert (=> b!953538 (=> res!433310 e!616913)))

(declare-fun lt!344991 () Bool)

(get-info :version)

(assert (=> b!953538 (= res!433310 (or (not lt!344991) (and ((_ is Concat!4464) r!15766) ((_ is EmptyExpr!2631) (regOne!5774 r!15766))) (and ((_ is Concat!4464) r!15766) ((_ is EmptyExpr!2631) (regTwo!5774 r!15766))) ((_ is Concat!4464) r!15766) (not ((_ is Union!2631) r!15766))))))

(declare-fun matchRSpec!432 (Regex!2631 List!9861) Bool)

(assert (=> b!953538 (= lt!344991 (matchRSpec!432 r!15766 s!10566))))

(assert (=> b!953538 (= lt!344991 (matchR!1169 r!15766 s!10566))))

(declare-fun lt!344992 () Unit!14905)

(declare-fun mainMatchTheorem!432 (Regex!2631 List!9861) Unit!14905)

(assert (=> b!953538 (= lt!344992 (mainMatchTheorem!432 r!15766 s!10566))))

(declare-fun b!953539 () Bool)

(assert (=> b!953539 (= e!616911 true)))

(declare-fun removeUselessConcat!288 (Regex!2631) Regex!2631)

(assert (=> b!953539 (matchR!1169 (removeUselessConcat!288 (regOne!5775 r!15766)) s!10566)))

(declare-fun lt!344994 () Unit!14905)

(declare-fun lemmaRemoveUselessConcatSound!148 (Regex!2631 List!9861) Unit!14905)

(assert (=> b!953539 (= lt!344994 (lemmaRemoveUselessConcatSound!148 (regOne!5775 r!15766) s!10566))))

(declare-fun b!953540 () Bool)

(declare-fun tp!293824 () Bool)

(declare-fun tp!293819 () Bool)

(assert (=> b!953540 (= e!616908 (and tp!293824 tp!293819))))

(declare-fun b!953541 () Bool)

(declare-fun tp!293821 () Bool)

(assert (=> b!953541 (= e!616908 tp!293821)))

(declare-fun b!953542 () Bool)

(assert (=> b!953542 (= e!616908 tp_is_empty!4905)))

(declare-fun b!953543 () Bool)

(assert (=> b!953543 (= e!616909 (matchR!1169 (regTwo!5775 r!15766) s!10566))))

(assert (= (and start!84962 res!433308) b!953538))

(assert (= (and b!953538 (not res!433310)) b!953535))

(assert (= (and b!953535 (not res!433307)) b!953543))

(assert (= (and b!953535 (not res!433309)) b!953539))

(assert (= (and start!84962 ((_ is ElementMatch!2631) r!15766)) b!953542))

(assert (= (and start!84962 ((_ is Concat!4464) r!15766)) b!953540))

(assert (= (and start!84962 ((_ is Star!2631) r!15766)) b!953541))

(assert (= (and start!84962 ((_ is Union!2631) r!15766)) b!953537))

(assert (= (and start!84962 ((_ is Cons!9845) s!10566)) b!953536))

(declare-fun m!1165157 () Bool)

(assert (=> b!953535 m!1165157))

(declare-fun m!1165159 () Bool)

(assert (=> b!953535 m!1165159))

(declare-fun m!1165161 () Bool)

(assert (=> b!953539 m!1165161))

(assert (=> b!953539 m!1165161))

(declare-fun m!1165163 () Bool)

(assert (=> b!953539 m!1165163))

(declare-fun m!1165165 () Bool)

(assert (=> b!953539 m!1165165))

(declare-fun m!1165167 () Bool)

(assert (=> b!953543 m!1165167))

(declare-fun m!1165169 () Bool)

(assert (=> b!953538 m!1165169))

(declare-fun m!1165171 () Bool)

(assert (=> b!953538 m!1165171))

(declare-fun m!1165173 () Bool)

(assert (=> b!953538 m!1165173))

(declare-fun m!1165175 () Bool)

(assert (=> start!84962 m!1165175))

(check-sat (not b!953541) (not b!953543) tp_is_empty!4905 (not b!953535) (not b!953538) (not b!953537) (not b!953540) (not b!953536) (not start!84962) (not b!953539))
(check-sat)
