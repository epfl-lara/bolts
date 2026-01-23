; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733664 () Bool)

(assert start!733664)

(declare-fun b!7615580 () Bool)

(declare-fun res!3048680 () Bool)

(declare-fun e!4528899 () Bool)

(assert (=> b!7615580 (=> (not res!3048680) (not e!4528899))))

(declare-datatypes ((C!40836 0))(
  ( (C!40837 (val!30858 Int)) )
))
(declare-datatypes ((Regex!20255 0))(
  ( (ElementMatch!20255 (c!1403822 C!40836)) (Concat!29100 (regOne!41022 Regex!20255) (regTwo!41022 Regex!20255)) (EmptyExpr!20255) (Star!20255 (reg!20584 Regex!20255)) (EmptyLang!20255) (Union!20255 (regOne!41023 Regex!20255) (regTwo!41023 Regex!20255)) )
))
(declare-fun r!14126 () Regex!20255)

(declare-datatypes ((List!73108 0))(
  ( (Nil!72984) (Cons!72984 (h!79432 C!40836) (t!387843 List!73108)) )
))
(declare-fun s!9605 () List!73108)

(declare-fun matchR!9770 (Regex!20255 List!73108) Bool)

(assert (=> b!7615580 (= res!3048680 (not (matchR!9770 r!14126 s!9605)))))

(declare-fun b!7615581 () Bool)

(declare-fun e!4528903 () Bool)

(declare-fun tp_is_empty!50865 () Bool)

(declare-fun tp!2223615 () Bool)

(assert (=> b!7615581 (= e!4528903 (and tp_is_empty!50865 tp!2223615))))

(declare-fun res!3048677 () Bool)

(assert (=> start!733664 (=> (not res!3048677) (not e!4528899))))

(declare-fun validRegex!10677 (Regex!20255) Bool)

(assert (=> start!733664 (= res!3048677 (validRegex!10677 r!14126))))

(assert (=> start!733664 e!4528899))

(declare-fun e!4528902 () Bool)

(assert (=> start!733664 e!4528902))

(assert (=> start!733664 e!4528903))

(declare-fun b!7615582 () Bool)

(declare-fun e!4528898 () Bool)

(assert (=> b!7615582 (= e!4528899 e!4528898)))

(declare-fun res!3048678 () Bool)

(assert (=> b!7615582 (=> (not res!3048678) (not e!4528898))))

(assert (=> b!7615582 (= res!3048678 (matchR!9770 (regTwo!41023 r!14126) s!9605))))

(declare-datatypes ((Unit!167320 0))(
  ( (Unit!167321) )
))
(declare-fun lt!2655216 () Unit!167320)

(declare-fun e!4528900 () Unit!167320)

(assert (=> b!7615582 (= lt!2655216 e!4528900)))

(declare-fun c!1403821 () Bool)

(assert (=> b!7615582 (= c!1403821 (matchR!9770 (regOne!41023 r!14126) s!9605))))

(declare-fun b!7615583 () Bool)

(assert (=> b!7615583 (= e!4528902 tp_is_empty!50865)))

(declare-fun b!7615584 () Bool)

(declare-fun tp!2223611 () Bool)

(declare-fun tp!2223610 () Bool)

(assert (=> b!7615584 (= e!4528902 (and tp!2223611 tp!2223610))))

(declare-fun b!7615585 () Bool)

(declare-fun res!3048679 () Bool)

(assert (=> b!7615585 (=> (not res!3048679) (not e!4528899))))

(get-info :version)

(assert (=> b!7615585 (= res!3048679 (and (not ((_ is EmptyExpr!20255) r!14126)) (not ((_ is EmptyLang!20255) r!14126)) (not ((_ is ElementMatch!20255) r!14126)) ((_ is Union!20255) r!14126)))))

(declare-fun b!7615586 () Bool)

(assert (=> b!7615586 (= e!4528898 (not true))))

(assert (=> b!7615586 (matchR!9770 (Union!20255 (regTwo!41023 r!14126) (regOne!41023 r!14126)) s!9605)))

(declare-fun lt!2655218 () Unit!167320)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!94 (Regex!20255 Regex!20255 List!73108) Unit!167320)

(assert (=> b!7615586 (= lt!2655218 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!94 (regTwo!41023 r!14126) (regOne!41023 r!14126) s!9605))))

(declare-fun b!7615587 () Bool)

(declare-fun tp!2223614 () Bool)

(assert (=> b!7615587 (= e!4528902 tp!2223614)))

(declare-fun b!7615588 () Bool)

(declare-fun tp!2223612 () Bool)

(declare-fun tp!2223613 () Bool)

(assert (=> b!7615588 (= e!4528902 (and tp!2223612 tp!2223613))))

(declare-fun b!7615589 () Bool)

(declare-fun Unit!167322 () Unit!167320)

(assert (=> b!7615589 (= e!4528900 Unit!167322)))

(declare-fun lt!2655217 () Unit!167320)

(assert (=> b!7615589 (= lt!2655217 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!94 (regOne!41023 r!14126) (regTwo!41023 r!14126) s!9605))))

(declare-fun res!3048676 () Bool)

(assert (=> b!7615589 (= res!3048676 (matchR!9770 r!14126 s!9605))))

(declare-fun e!4528901 () Bool)

(assert (=> b!7615589 (=> (not res!3048676) (not e!4528901))))

(assert (=> b!7615589 e!4528901))

(declare-fun b!7615590 () Bool)

(declare-fun Unit!167323 () Unit!167320)

(assert (=> b!7615590 (= e!4528900 Unit!167323)))

(declare-fun b!7615591 () Bool)

(assert (=> b!7615591 (= e!4528901 false)))

(assert (= (and start!733664 res!3048677) b!7615585))

(assert (= (and b!7615585 res!3048679) b!7615580))

(assert (= (and b!7615580 res!3048680) b!7615582))

(assert (= (and b!7615582 c!1403821) b!7615589))

(assert (= (and b!7615582 (not c!1403821)) b!7615590))

(assert (= (and b!7615589 res!3048676) b!7615591))

(assert (= (and b!7615582 res!3048678) b!7615586))

(assert (= (and start!733664 ((_ is ElementMatch!20255) r!14126)) b!7615583))

(assert (= (and start!733664 ((_ is Concat!29100) r!14126)) b!7615584))

(assert (= (and start!733664 ((_ is Star!20255) r!14126)) b!7615587))

(assert (= (and start!733664 ((_ is Union!20255) r!14126)) b!7615588))

(assert (= (and start!733664 ((_ is Cons!72984) s!9605)) b!7615581))

(declare-fun m!8149444 () Bool)

(assert (=> start!733664 m!8149444))

(declare-fun m!8149446 () Bool)

(assert (=> b!7615580 m!8149446))

(declare-fun m!8149448 () Bool)

(assert (=> b!7615586 m!8149448))

(declare-fun m!8149450 () Bool)

(assert (=> b!7615586 m!8149450))

(declare-fun m!8149452 () Bool)

(assert (=> b!7615582 m!8149452))

(declare-fun m!8149454 () Bool)

(assert (=> b!7615582 m!8149454))

(declare-fun m!8149456 () Bool)

(assert (=> b!7615589 m!8149456))

(assert (=> b!7615589 m!8149446))

(check-sat (not b!7615589) (not start!733664) (not b!7615584) (not b!7615580) (not b!7615581) (not b!7615586) (not b!7615587) (not b!7615582) tp_is_empty!50865 (not b!7615588))
(check-sat)
