; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80462 () Bool)

(assert start!80462)

(declare-fun b!892684 () Bool)

(declare-fun e!584692 () Bool)

(declare-fun tp!280825 () Bool)

(assert (=> b!892684 (= e!584692 tp!280825)))

(declare-fun b!892685 () Bool)

(declare-fun tp!280824 () Bool)

(declare-fun tp!280827 () Bool)

(assert (=> b!892685 (= e!584692 (and tp!280824 tp!280827))))

(declare-fun b!892686 () Bool)

(declare-fun tp_is_empty!4277 () Bool)

(assert (=> b!892686 (= e!584692 tp_is_empty!4277)))

(declare-fun b!892687 () Bool)

(declare-fun e!584695 () Bool)

(declare-fun e!584697 () Bool)

(assert (=> b!892687 (= e!584695 e!584697)))

(declare-fun res!405814 () Bool)

(assert (=> b!892687 (=> res!405814 e!584697)))

(declare-fun lt!332680 () Bool)

(assert (=> b!892687 (= res!405814 lt!332680)))

(declare-fun e!584693 () Bool)

(assert (=> b!892687 e!584693))

(declare-fun res!405811 () Bool)

(assert (=> b!892687 (=> res!405811 e!584693)))

(assert (=> b!892687 (= res!405811 lt!332680)))

(declare-datatypes ((C!5204 0))(
  ( (C!5205 (val!2850 Int)) )
))
(declare-datatypes ((Regex!2317 0))(
  ( (ElementMatch!2317 (c!144516 C!5204)) (Concat!4150 (regOne!5146 Regex!2317) (regTwo!5146 Regex!2317)) (EmptyExpr!2317) (Star!2317 (reg!2646 Regex!2317)) (EmptyLang!2317) (Union!2317 (regOne!5147 Regex!2317) (regTwo!5147 Regex!2317)) )
))
(declare-fun r!15766 () Regex!2317)

(declare-datatypes ((List!9547 0))(
  ( (Nil!9531) (Cons!9531 (h!14932 C!5204) (t!100593 List!9547)) )
))
(declare-fun s!10566 () List!9547)

(declare-fun matchR!855 (Regex!2317 List!9547) Bool)

(assert (=> b!892687 (= lt!332680 (matchR!855 (regOne!5147 r!15766) s!10566))))

(declare-datatypes ((Unit!14213 0))(
  ( (Unit!14214) )
))
(declare-fun lt!332683 () Unit!14213)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!28 (Regex!2317 Regex!2317 List!9547) Unit!14213)

(assert (=> b!892687 (= lt!332683 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!28 (regOne!5147 r!15766) (regTwo!5147 r!15766) s!10566))))

(declare-fun b!892688 () Bool)

(declare-fun e!584696 () Bool)

(assert (=> b!892688 (= e!584696 true)))

(declare-fun lt!332686 () Regex!2317)

(declare-fun removeUselessConcat!52 (Regex!2317) Regex!2317)

(assert (=> b!892688 (= lt!332686 (removeUselessConcat!52 (regOne!5147 r!15766)))))

(declare-fun b!892689 () Bool)

(declare-fun tp!280823 () Bool)

(declare-fun tp!280828 () Bool)

(assert (=> b!892689 (= e!584692 (and tp!280823 tp!280828))))

(declare-fun b!892691 () Bool)

(assert (=> b!892691 (= e!584693 (matchR!855 (regTwo!5147 r!15766) s!10566))))

(declare-fun b!892692 () Bool)

(declare-fun e!584694 () Bool)

(declare-fun tp!280826 () Bool)

(assert (=> b!892692 (= e!584694 (and tp_is_empty!4277 tp!280826))))

(declare-fun b!892693 () Bool)

(declare-fun e!584691 () Bool)

(assert (=> b!892693 (= e!584691 (not e!584695))))

(declare-fun res!405810 () Bool)

(assert (=> b!892693 (=> res!405810 e!584695)))

(declare-fun lt!332679 () Bool)

(get-info :version)

(assert (=> b!892693 (= res!405810 (or (not lt!332679) (and ((_ is Concat!4150) r!15766) ((_ is EmptyExpr!2317) (regOne!5146 r!15766))) (and ((_ is Concat!4150) r!15766) ((_ is EmptyExpr!2317) (regTwo!5146 r!15766))) ((_ is Concat!4150) r!15766) (not ((_ is Union!2317) r!15766))))))

(declare-fun matchRSpec!118 (Regex!2317 List!9547) Bool)

(assert (=> b!892693 (= lt!332679 (matchRSpec!118 r!15766 s!10566))))

(assert (=> b!892693 (= lt!332679 (matchR!855 r!15766 s!10566))))

(declare-fun lt!332681 () Unit!14213)

(declare-fun mainMatchTheorem!118 (Regex!2317 List!9547) Unit!14213)

(assert (=> b!892693 (= lt!332681 (mainMatchTheorem!118 r!15766 s!10566))))

(declare-fun res!405812 () Bool)

(assert (=> start!80462 (=> (not res!405812) (not e!584691))))

(declare-fun validRegex!786 (Regex!2317) Bool)

(assert (=> start!80462 (= res!405812 (validRegex!786 r!15766))))

(assert (=> start!80462 e!584691))

(assert (=> start!80462 e!584692))

(assert (=> start!80462 e!584694))

(declare-fun b!892690 () Bool)

(assert (=> b!892690 (= e!584697 e!584696)))

(declare-fun res!405813 () Bool)

(assert (=> b!892690 (=> res!405813 e!584696)))

(declare-fun lt!332685 () Bool)

(assert (=> b!892690 (= res!405813 (not lt!332685))))

(declare-fun lt!332682 () Bool)

(assert (=> b!892690 (= lt!332682 lt!332685)))

(declare-fun lt!332687 () Regex!2317)

(assert (=> b!892690 (= lt!332685 (matchR!855 lt!332687 s!10566))))

(assert (=> b!892690 (= lt!332682 (matchR!855 (regTwo!5147 r!15766) s!10566))))

(assert (=> b!892690 (= lt!332687 (removeUselessConcat!52 (regTwo!5147 r!15766)))))

(declare-fun lt!332684 () Unit!14213)

(declare-fun lemmaRemoveUselessConcatSound!46 (Regex!2317 List!9547) Unit!14213)

(assert (=> b!892690 (= lt!332684 (lemmaRemoveUselessConcatSound!46 (regTwo!5147 r!15766) s!10566))))

(assert (= (and start!80462 res!405812) b!892693))

(assert (= (and b!892693 (not res!405810)) b!892687))

(assert (= (and b!892687 (not res!405811)) b!892691))

(assert (= (and b!892687 (not res!405814)) b!892690))

(assert (= (and b!892690 (not res!405813)) b!892688))

(assert (= (and start!80462 ((_ is ElementMatch!2317) r!15766)) b!892686))

(assert (= (and start!80462 ((_ is Concat!4150) r!15766)) b!892689))

(assert (= (and start!80462 ((_ is Star!2317) r!15766)) b!892684))

(assert (= (and start!80462 ((_ is Union!2317) r!15766)) b!892685))

(assert (= (and start!80462 ((_ is Cons!9531) s!10566)) b!892692))

(declare-fun m!1134567 () Bool)

(assert (=> b!892688 m!1134567))

(declare-fun m!1134569 () Bool)

(assert (=> b!892691 m!1134569))

(declare-fun m!1134571 () Bool)

(assert (=> b!892693 m!1134571))

(declare-fun m!1134573 () Bool)

(assert (=> b!892693 m!1134573))

(declare-fun m!1134575 () Bool)

(assert (=> b!892693 m!1134575))

(declare-fun m!1134577 () Bool)

(assert (=> b!892690 m!1134577))

(assert (=> b!892690 m!1134569))

(declare-fun m!1134579 () Bool)

(assert (=> b!892690 m!1134579))

(declare-fun m!1134581 () Bool)

(assert (=> b!892690 m!1134581))

(declare-fun m!1134583 () Bool)

(assert (=> b!892687 m!1134583))

(declare-fun m!1134585 () Bool)

(assert (=> b!892687 m!1134585))

(declare-fun m!1134587 () Bool)

(assert (=> start!80462 m!1134587))

(check-sat (not b!892684) (not b!892690) (not start!80462) (not b!892692) (not b!892691) (not b!892689) (not b!892688) (not b!892685) (not b!892693) (not b!892687) tp_is_empty!4277)
(check-sat)
