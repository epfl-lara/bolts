; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80290 () Bool)

(assert start!80290)

(declare-fun res!404611 () Bool)

(declare-fun e!583060 () Bool)

(assert (=> start!80290 (=> (not res!404611) (not e!583060))))

(declare-datatypes ((C!5176 0))(
  ( (C!5177 (val!2836 Int)) )
))
(declare-datatypes ((Regex!2303 0))(
  ( (ElementMatch!2303 (c!143938 C!5176)) (Concat!4136 (regOne!5118 Regex!2303) (regTwo!5118 Regex!2303)) (EmptyExpr!2303) (Star!2303 (reg!2632 Regex!2303)) (EmptyLang!2303) (Union!2303 (regOne!5119 Regex!2303) (regTwo!5119 Regex!2303)) )
))
(declare-fun r!15766 () Regex!2303)

(declare-fun validRegex!772 (Regex!2303) Bool)

(assert (=> start!80290 (= res!404611 (validRegex!772 r!15766))))

(assert (=> start!80290 e!583060))

(declare-fun e!583062 () Bool)

(assert (=> start!80290 e!583062))

(declare-fun e!583059 () Bool)

(assert (=> start!80290 e!583059))

(declare-fun b!889757 () Bool)

(declare-fun tp!280194 () Bool)

(declare-fun tp!280193 () Bool)

(assert (=> b!889757 (= e!583062 (and tp!280194 tp!280193))))

(declare-fun b!889758 () Bool)

(declare-fun tp!280196 () Bool)

(declare-fun tp!280195 () Bool)

(assert (=> b!889758 (= e!583062 (and tp!280196 tp!280195))))

(declare-fun b!889759 () Bool)

(declare-fun e!583065 () Bool)

(declare-fun e!583063 () Bool)

(assert (=> b!889759 (= e!583065 e!583063)))

(declare-fun res!404612 () Bool)

(assert (=> b!889759 (=> res!404612 e!583063)))

(declare-fun lt!332210 () Bool)

(assert (=> b!889759 (= res!404612 (not lt!332210))))

(declare-fun e!583061 () Bool)

(assert (=> b!889759 e!583061))

(declare-fun res!404616 () Bool)

(assert (=> b!889759 (=> res!404616 e!583061)))

(assert (=> b!889759 (= res!404616 lt!332210)))

(declare-datatypes ((List!9533 0))(
  ( (Nil!9517) (Cons!9517 (h!14918 C!5176) (t!100579 List!9533)) )
))
(declare-fun s!10566 () List!9533)

(declare-fun matchR!841 (Regex!2303 List!9533) Bool)

(assert (=> b!889759 (= lt!332210 (matchR!841 (regOne!5119 r!15766) s!10566))))

(declare-datatypes ((Unit!14185 0))(
  ( (Unit!14186) )
))
(declare-fun lt!332211 () Unit!14185)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!14 (Regex!2303 Regex!2303 List!9533) Unit!14185)

(assert (=> b!889759 (= lt!332211 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!14 (regOne!5119 r!15766) (regTwo!5119 r!15766) s!10566))))

(declare-fun b!889760 () Bool)

(assert (=> b!889760 (= e!583060 (not e!583065))))

(declare-fun res!404613 () Bool)

(assert (=> b!889760 (=> res!404613 e!583065)))

(declare-fun lt!332212 () Bool)

(get-info :version)

(assert (=> b!889760 (= res!404613 (or (not lt!332212) (and ((_ is Concat!4136) r!15766) ((_ is EmptyExpr!2303) (regOne!5118 r!15766))) (and ((_ is Concat!4136) r!15766) ((_ is EmptyExpr!2303) (regTwo!5118 r!15766))) ((_ is Concat!4136) r!15766) (not ((_ is Union!2303) r!15766))))))

(declare-fun matchRSpec!104 (Regex!2303 List!9533) Bool)

(assert (=> b!889760 (= lt!332212 (matchRSpec!104 r!15766 s!10566))))

(assert (=> b!889760 (= lt!332212 (matchR!841 r!15766 s!10566))))

(declare-fun lt!332206 () Unit!14185)

(declare-fun mainMatchTheorem!104 (Regex!2303 List!9533) Unit!14185)

(assert (=> b!889760 (= lt!332206 (mainMatchTheorem!104 r!15766 s!10566))))

(declare-fun b!889761 () Bool)

(declare-fun tp!280191 () Bool)

(assert (=> b!889761 (= e!583062 tp!280191)))

(declare-fun b!889762 () Bool)

(declare-fun res!404615 () Bool)

(declare-fun e!583064 () Bool)

(assert (=> b!889762 (=> res!404615 e!583064)))

(declare-fun lt!332208 () Regex!2303)

(assert (=> b!889762 (= res!404615 (not (validRegex!772 lt!332208)))))

(declare-fun b!889763 () Bool)

(assert (=> b!889763 (= e!583061 (matchR!841 (regTwo!5119 r!15766) s!10566))))

(declare-fun b!889764 () Bool)

(assert (=> b!889764 (= e!583063 e!583064)))

(declare-fun res!404614 () Bool)

(assert (=> b!889764 (=> res!404614 e!583064)))

(declare-fun lt!332209 () Regex!2303)

(assert (=> b!889764 (= res!404614 (not (validRegex!772 lt!332209)))))

(declare-fun removeUselessConcat!40 (Regex!2303) Regex!2303)

(assert (=> b!889764 (= lt!332208 (removeUselessConcat!40 (regTwo!5119 r!15766)))))

(assert (=> b!889764 (matchR!841 lt!332209 s!10566)))

(assert (=> b!889764 (= lt!332209 (removeUselessConcat!40 (regOne!5119 r!15766)))))

(declare-fun lt!332207 () Unit!14185)

(declare-fun lemmaRemoveUselessConcatSound!34 (Regex!2303 List!9533) Unit!14185)

(assert (=> b!889764 (= lt!332207 (lemmaRemoveUselessConcatSound!34 (regOne!5119 r!15766) s!10566))))

(declare-fun b!889765 () Bool)

(declare-fun tp_is_empty!4249 () Bool)

(declare-fun tp!280192 () Bool)

(assert (=> b!889765 (= e!583059 (and tp_is_empty!4249 tp!280192))))

(declare-fun b!889766 () Bool)

(assert (=> b!889766 (= e!583064 true)))

(assert (=> b!889766 (matchR!841 (Union!2303 lt!332209 lt!332208) s!10566)))

(declare-fun lt!332213 () Unit!14185)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!2 (Regex!2303 Regex!2303 List!9533) Unit!14185)

(assert (=> b!889766 (= lt!332213 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!2 lt!332209 lt!332208 s!10566))))

(declare-fun b!889767 () Bool)

(assert (=> b!889767 (= e!583062 tp_is_empty!4249)))

(assert (= (and start!80290 res!404611) b!889760))

(assert (= (and b!889760 (not res!404613)) b!889759))

(assert (= (and b!889759 (not res!404616)) b!889763))

(assert (= (and b!889759 (not res!404612)) b!889764))

(assert (= (and b!889764 (not res!404614)) b!889762))

(assert (= (and b!889762 (not res!404615)) b!889766))

(assert (= (and start!80290 ((_ is ElementMatch!2303) r!15766)) b!889767))

(assert (= (and start!80290 ((_ is Concat!4136) r!15766)) b!889757))

(assert (= (and start!80290 ((_ is Star!2303) r!15766)) b!889761))

(assert (= (and start!80290 ((_ is Union!2303) r!15766)) b!889758))

(assert (= (and start!80290 ((_ is Cons!9517) s!10566)) b!889765))

(declare-fun m!1133471 () Bool)

(assert (=> b!889766 m!1133471))

(declare-fun m!1133473 () Bool)

(assert (=> b!889766 m!1133473))

(declare-fun m!1133475 () Bool)

(assert (=> b!889764 m!1133475))

(declare-fun m!1133477 () Bool)

(assert (=> b!889764 m!1133477))

(declare-fun m!1133479 () Bool)

(assert (=> b!889764 m!1133479))

(declare-fun m!1133481 () Bool)

(assert (=> b!889764 m!1133481))

(declare-fun m!1133483 () Bool)

(assert (=> b!889764 m!1133483))

(declare-fun m!1133485 () Bool)

(assert (=> b!889763 m!1133485))

(declare-fun m!1133487 () Bool)

(assert (=> start!80290 m!1133487))

(declare-fun m!1133489 () Bool)

(assert (=> b!889762 m!1133489))

(declare-fun m!1133491 () Bool)

(assert (=> b!889759 m!1133491))

(declare-fun m!1133493 () Bool)

(assert (=> b!889759 m!1133493))

(declare-fun m!1133495 () Bool)

(assert (=> b!889760 m!1133495))

(declare-fun m!1133497 () Bool)

(assert (=> b!889760 m!1133497))

(declare-fun m!1133499 () Bool)

(assert (=> b!889760 m!1133499))

(check-sat (not b!889762) (not b!889757) (not b!889766) (not start!80290) (not b!889759) (not b!889760) (not b!889761) (not b!889763) (not b!889758) (not b!889765) tp_is_empty!4249 (not b!889764))
(check-sat)
