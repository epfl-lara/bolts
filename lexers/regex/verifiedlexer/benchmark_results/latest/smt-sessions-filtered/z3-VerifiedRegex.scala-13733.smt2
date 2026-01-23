; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733676 () Bool)

(assert start!733676)

(declare-fun b!7615835 () Bool)

(declare-fun e!4529034 () Bool)

(assert (=> b!7615835 (= e!4529034 false)))

(declare-fun b!7615836 () Bool)

(declare-fun res!3048772 () Bool)

(declare-fun e!4529033 () Bool)

(assert (=> b!7615836 (=> (not res!3048772) (not e!4529033))))

(declare-datatypes ((C!40848 0))(
  ( (C!40849 (val!30864 Int)) )
))
(declare-datatypes ((Regex!20261 0))(
  ( (ElementMatch!20261 (c!1403864 C!40848)) (Concat!29106 (regOne!41034 Regex!20261) (regTwo!41034 Regex!20261)) (EmptyExpr!20261) (Star!20261 (reg!20590 Regex!20261)) (EmptyLang!20261) (Union!20261 (regOne!41035 Regex!20261) (regTwo!41035 Regex!20261)) )
))
(declare-fun r!14126 () Regex!20261)

(get-info :version)

(assert (=> b!7615836 (= res!3048772 (and (not ((_ is EmptyExpr!20261) r!14126)) (not ((_ is EmptyLang!20261) r!14126)) (not ((_ is ElementMatch!20261) r!14126)) ((_ is Union!20261) r!14126)))))

(declare-fun b!7615837 () Bool)

(declare-fun res!3048775 () Bool)

(assert (=> b!7615837 (=> (not res!3048775) (not e!4529033))))

(declare-datatypes ((List!73114 0))(
  ( (Nil!72990) (Cons!72990 (h!79438 C!40848) (t!387849 List!73114)) )
))
(declare-fun s!9605 () List!73114)

(declare-fun matchR!9776 (Regex!20261 List!73114) Bool)

(assert (=> b!7615837 (= res!3048775 (not (matchR!9776 r!14126 s!9605)))))

(declare-fun b!7615838 () Bool)

(declare-fun e!4529035 () Bool)

(assert (=> b!7615838 (= e!4529033 (not e!4529035))))

(declare-fun res!3048776 () Bool)

(assert (=> b!7615838 (=> res!3048776 e!4529035)))

(declare-fun validRegex!10683 (Regex!20261) Bool)

(assert (=> b!7615838 (= res!3048776 (not (validRegex!10683 (regTwo!41035 r!14126))))))

(declare-fun lt!2655337 () Bool)

(declare-fun matchRSpec!4472 (Regex!20261 List!73114) Bool)

(assert (=> b!7615838 (= lt!2655337 (matchRSpec!4472 (regOne!41035 r!14126) s!9605))))

(declare-datatypes ((Unit!167354 0))(
  ( (Unit!167355) )
))
(declare-fun lt!2655341 () Unit!167354)

(declare-fun mainMatchTheorem!4466 (Regex!20261 List!73114) Unit!167354)

(assert (=> b!7615838 (= lt!2655341 (mainMatchTheorem!4466 (regOne!41035 r!14126) s!9605))))

(declare-fun lt!2655336 () Unit!167354)

(declare-fun e!4529031 () Unit!167354)

(assert (=> b!7615838 (= lt!2655336 e!4529031)))

(declare-fun c!1403863 () Bool)

(declare-fun lt!2655340 () Bool)

(assert (=> b!7615838 (= c!1403863 lt!2655340)))

(assert (=> b!7615838 (= lt!2655340 (matchR!9776 (regTwo!41035 r!14126) s!9605))))

(declare-fun lt!2655344 () Unit!167354)

(declare-fun e!4529028 () Unit!167354)

(assert (=> b!7615838 (= lt!2655344 e!4529028)))

(declare-fun c!1403862 () Bool)

(assert (=> b!7615838 (= c!1403862 lt!2655337)))

(assert (=> b!7615838 (= lt!2655337 (matchR!9776 (regOne!41035 r!14126) s!9605))))

(declare-fun b!7615839 () Bool)

(declare-fun Unit!167356 () Unit!167354)

(assert (=> b!7615839 (= e!4529028 Unit!167356)))

(declare-fun lt!2655339 () Unit!167354)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!100 (Regex!20261 Regex!20261 List!73114) Unit!167354)

(assert (=> b!7615839 (= lt!2655339 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!100 (regOne!41035 r!14126) (regTwo!41035 r!14126) s!9605))))

(declare-fun res!3048773 () Bool)

(assert (=> b!7615839 (= res!3048773 (matchR!9776 r!14126 s!9605))))

(assert (=> b!7615839 (=> (not res!3048773) (not e!4529034))))

(assert (=> b!7615839 e!4529034))

(declare-fun b!7615840 () Bool)

(assert (=> b!7615840 (= e!4529035 true)))

(assert (=> b!7615840 (= lt!2655340 (matchRSpec!4472 (regTwo!41035 r!14126) s!9605))))

(declare-fun lt!2655343 () Unit!167354)

(assert (=> b!7615840 (= lt!2655343 (mainMatchTheorem!4466 (regTwo!41035 r!14126) s!9605))))

(declare-fun b!7615841 () Bool)

(declare-fun e!4529030 () Bool)

(declare-fun tp!2223718 () Bool)

(declare-fun tp!2223719 () Bool)

(assert (=> b!7615841 (= e!4529030 (and tp!2223718 tp!2223719))))

(declare-fun b!7615842 () Bool)

(declare-fun e!4529032 () Bool)

(declare-fun tp_is_empty!50877 () Bool)

(declare-fun tp!2223722 () Bool)

(assert (=> b!7615842 (= e!4529032 (and tp_is_empty!50877 tp!2223722))))

(declare-fun b!7615844 () Bool)

(declare-fun Unit!167357 () Unit!167354)

(assert (=> b!7615844 (= e!4529031 Unit!167357)))

(declare-fun lt!2655342 () Unit!167354)

(assert (=> b!7615844 (= lt!2655342 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!100 (regTwo!41035 r!14126) (regOne!41035 r!14126) s!9605))))

(assert (=> b!7615844 (matchR!9776 (Union!20261 (regTwo!41035 r!14126) (regOne!41035 r!14126)) s!9605)))

(declare-fun lt!2655338 () Unit!167354)

(declare-fun lemmaReversedUnionAcceptsSameString!34 (Regex!20261 Regex!20261 List!73114) Unit!167354)

(assert (=> b!7615844 (= lt!2655338 (lemmaReversedUnionAcceptsSameString!34 (regTwo!41035 r!14126) (regOne!41035 r!14126) s!9605))))

(declare-fun res!3048771 () Bool)

(assert (=> b!7615844 (= res!3048771 (matchR!9776 r!14126 s!9605))))

(declare-fun e!4529029 () Bool)

(assert (=> b!7615844 (=> (not res!3048771) (not e!4529029))))

(assert (=> b!7615844 e!4529029))

(declare-fun b!7615845 () Bool)

(assert (=> b!7615845 (= e!4529029 false)))

(declare-fun b!7615846 () Bool)

(declare-fun Unit!167358 () Unit!167354)

(assert (=> b!7615846 (= e!4529028 Unit!167358)))

(declare-fun b!7615847 () Bool)

(assert (=> b!7615847 (= e!4529030 tp_is_empty!50877)))

(declare-fun b!7615843 () Bool)

(declare-fun tp!2223721 () Bool)

(declare-fun tp!2223723 () Bool)

(assert (=> b!7615843 (= e!4529030 (and tp!2223721 tp!2223723))))

(declare-fun res!3048774 () Bool)

(assert (=> start!733676 (=> (not res!3048774) (not e!4529033))))

(assert (=> start!733676 (= res!3048774 (validRegex!10683 r!14126))))

(assert (=> start!733676 e!4529033))

(assert (=> start!733676 e!4529030))

(assert (=> start!733676 e!4529032))

(declare-fun b!7615848 () Bool)

(declare-fun tp!2223720 () Bool)

(assert (=> b!7615848 (= e!4529030 tp!2223720)))

(declare-fun b!7615849 () Bool)

(declare-fun Unit!167359 () Unit!167354)

(assert (=> b!7615849 (= e!4529031 Unit!167359)))

(assert (= (and start!733676 res!3048774) b!7615836))

(assert (= (and b!7615836 res!3048772) b!7615837))

(assert (= (and b!7615837 res!3048775) b!7615838))

(assert (= (and b!7615838 c!1403862) b!7615839))

(assert (= (and b!7615838 (not c!1403862)) b!7615846))

(assert (= (and b!7615839 res!3048773) b!7615835))

(assert (= (and b!7615838 c!1403863) b!7615844))

(assert (= (and b!7615838 (not c!1403863)) b!7615849))

(assert (= (and b!7615844 res!3048771) b!7615845))

(assert (= (and b!7615838 (not res!3048776)) b!7615840))

(assert (= (and start!733676 ((_ is ElementMatch!20261) r!14126)) b!7615847))

(assert (= (and start!733676 ((_ is Concat!29106) r!14126)) b!7615841))

(assert (= (and start!733676 ((_ is Star!20261) r!14126)) b!7615848))

(assert (= (and start!733676 ((_ is Union!20261) r!14126)) b!7615843))

(assert (= (and start!733676 ((_ is Cons!72990) s!9605)) b!7615842))

(declare-fun m!8149556 () Bool)

(assert (=> b!7615840 m!8149556))

(declare-fun m!8149558 () Bool)

(assert (=> b!7615840 m!8149558))

(declare-fun m!8149560 () Bool)

(assert (=> b!7615844 m!8149560))

(declare-fun m!8149562 () Bool)

(assert (=> b!7615844 m!8149562))

(declare-fun m!8149564 () Bool)

(assert (=> b!7615844 m!8149564))

(declare-fun m!8149566 () Bool)

(assert (=> b!7615844 m!8149566))

(declare-fun m!8149568 () Bool)

(assert (=> b!7615839 m!8149568))

(assert (=> b!7615839 m!8149566))

(assert (=> b!7615837 m!8149566))

(declare-fun m!8149570 () Bool)

(assert (=> start!733676 m!8149570))

(declare-fun m!8149572 () Bool)

(assert (=> b!7615838 m!8149572))

(declare-fun m!8149574 () Bool)

(assert (=> b!7615838 m!8149574))

(declare-fun m!8149576 () Bool)

(assert (=> b!7615838 m!8149576))

(declare-fun m!8149578 () Bool)

(assert (=> b!7615838 m!8149578))

(declare-fun m!8149580 () Bool)

(assert (=> b!7615838 m!8149580))

(check-sat (not b!7615844) (not b!7615841) (not b!7615843) (not b!7615839) (not b!7615837) tp_is_empty!50877 (not b!7615840) (not b!7615842) (not b!7615848) (not start!733676) (not b!7615838))
(check-sat)
