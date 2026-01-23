; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286932 () Bool)

(assert start!286932)

(declare-fun res!1221947 () Bool)

(declare-fun e!1864310 () Bool)

(assert (=> start!286932 (=> (not res!1221947) (not e!1864310))))

(declare-datatypes ((C!18588 0))(
  ( (C!18589 (val!11330 Int)) )
))
(declare-datatypes ((Regex!9201 0))(
  ( (ElementMatch!9201 (c!485431 C!18588)) (Concat!14522 (regOne!18914 Regex!9201) (regTwo!18914 Regex!9201)) (EmptyExpr!9201) (Star!9201 (reg!9530 Regex!9201)) (EmptyLang!9201) (Union!9201 (regOne!18915 Regex!9201) (regTwo!18915 Regex!9201)) )
))
(declare-fun r!17423 () Regex!9201)

(declare-fun validRegex!3934 (Regex!9201) Bool)

(assert (=> start!286932 (= res!1221947 (validRegex!3934 r!17423))))

(assert (=> start!286932 e!1864310))

(declare-fun e!1864308 () Bool)

(assert (=> start!286932 e!1864308))

(declare-fun e!1864311 () Bool)

(assert (=> start!286932 e!1864311))

(declare-fun b!2961809 () Bool)

(declare-fun tp!945194 () Bool)

(declare-fun tp!945195 () Bool)

(assert (=> b!2961809 (= e!1864308 (and tp!945194 tp!945195))))

(declare-fun b!2961810 () Bool)

(declare-fun e!1864313 () Bool)

(declare-fun e!1864309 () Bool)

(assert (=> b!2961810 (= e!1864313 e!1864309)))

(declare-fun res!1221946 () Bool)

(assert (=> b!2961810 (=> res!1221946 e!1864309)))

(declare-fun lt!1034322 () Bool)

(assert (=> b!2961810 (= res!1221946 (not lt!1034322))))

(declare-fun lt!1034323 () Regex!9201)

(declare-datatypes ((List!35066 0))(
  ( (Nil!34942) (Cons!34942 (h!40362 C!18588) (t!234131 List!35066)) )
))
(declare-fun s!11993 () List!35066)

(declare-fun matchR!4083 (Regex!9201 List!35066) Bool)

(assert (=> b!2961810 (= lt!1034322 (matchR!4083 lt!1034323 s!11993))))

(assert (=> b!2961810 (= lt!1034322 (matchR!4083 (regTwo!18915 r!17423) s!11993))))

(declare-datatypes ((Unit!48781 0))(
  ( (Unit!48782) )
))
(declare-fun lt!1034318 () Unit!48781)

(declare-fun lemmaSimplifySound!130 (Regex!9201 List!35066) Unit!48781)

(assert (=> b!2961810 (= lt!1034318 (lemmaSimplifySound!130 (regTwo!18915 r!17423) s!11993))))

(declare-fun b!2961811 () Bool)

(assert (=> b!2961811 (= e!1864309 true)))

(assert (=> b!2961811 (matchR!4083 (Union!9201 (regOne!18915 r!17423) (regTwo!18915 r!17423)) s!11993)))

(declare-fun lt!1034319 () Unit!48781)

(declare-fun lemmaReversedUnionAcceptsSameString!20 (Regex!9201 Regex!9201 List!35066) Unit!48781)

(assert (=> b!2961811 (= lt!1034319 (lemmaReversedUnionAcceptsSameString!20 (regTwo!18915 r!17423) (regOne!18915 r!17423) s!11993))))

(assert (=> b!2961811 (matchR!4083 (Union!9201 (regTwo!18915 r!17423) (regOne!18915 r!17423)) s!11993)))

(declare-fun lt!1034324 () Unit!48781)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!66 (Regex!9201 Regex!9201 List!35066) Unit!48781)

(assert (=> b!2961811 (= lt!1034324 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!66 (regTwo!18915 r!17423) (regOne!18915 r!17423) s!11993))))

(declare-fun b!2961812 () Bool)

(declare-fun tp_is_empty!15965 () Bool)

(assert (=> b!2961812 (= e!1864308 tp_is_empty!15965)))

(declare-fun b!2961813 () Bool)

(declare-fun e!1864312 () Bool)

(assert (=> b!2961813 (= e!1864310 (not e!1864312))))

(declare-fun res!1221948 () Bool)

(assert (=> b!2961813 (=> res!1221948 e!1864312)))

(declare-fun lt!1034321 () Bool)

(get-info :version)

(assert (=> b!2961813 (= res!1221948 (or lt!1034321 ((_ is Concat!14522) r!17423) (not ((_ is Union!9201) r!17423))))))

(declare-fun matchRSpec!1338 (Regex!9201 List!35066) Bool)

(assert (=> b!2961813 (= lt!1034321 (matchRSpec!1338 r!17423 s!11993))))

(assert (=> b!2961813 (= lt!1034321 (matchR!4083 r!17423 s!11993))))

(declare-fun lt!1034317 () Unit!48781)

(declare-fun mainMatchTheorem!1338 (Regex!9201 List!35066) Unit!48781)

(assert (=> b!2961813 (= lt!1034317 (mainMatchTheorem!1338 r!17423 s!11993))))

(declare-fun b!2961814 () Bool)

(declare-fun tp!945197 () Bool)

(declare-fun tp!945192 () Bool)

(assert (=> b!2961814 (= e!1864308 (and tp!945197 tp!945192))))

(declare-fun b!2961815 () Bool)

(assert (=> b!2961815 (= e!1864312 e!1864313)))

(declare-fun res!1221945 () Bool)

(assert (=> b!2961815 (=> res!1221945 e!1864313)))

(declare-fun lt!1034320 () Regex!9201)

(declare-fun isEmptyLang!319 (Regex!9201) Bool)

(assert (=> b!2961815 (= res!1221945 (not (isEmptyLang!319 lt!1034320)))))

(declare-fun simplify!204 (Regex!9201) Regex!9201)

(assert (=> b!2961815 (= lt!1034323 (simplify!204 (regTwo!18915 r!17423)))))

(assert (=> b!2961815 (= lt!1034320 (simplify!204 (regOne!18915 r!17423)))))

(declare-fun b!2961816 () Bool)

(declare-fun tp!945196 () Bool)

(assert (=> b!2961816 (= e!1864308 tp!945196)))

(declare-fun b!2961817 () Bool)

(declare-fun tp!945193 () Bool)

(assert (=> b!2961817 (= e!1864311 (and tp_is_empty!15965 tp!945193))))

(assert (= (and start!286932 res!1221947) b!2961813))

(assert (= (and b!2961813 (not res!1221948)) b!2961815))

(assert (= (and b!2961815 (not res!1221945)) b!2961810))

(assert (= (and b!2961810 (not res!1221946)) b!2961811))

(assert (= (and start!286932 ((_ is ElementMatch!9201) r!17423)) b!2961812))

(assert (= (and start!286932 ((_ is Concat!14522) r!17423)) b!2961814))

(assert (= (and start!286932 ((_ is Star!9201) r!17423)) b!2961816))

(assert (= (and start!286932 ((_ is Union!9201) r!17423)) b!2961809))

(assert (= (and start!286932 ((_ is Cons!34942) s!11993)) b!2961817))

(declare-fun m!3334619 () Bool)

(assert (=> b!2961815 m!3334619))

(declare-fun m!3334621 () Bool)

(assert (=> b!2961815 m!3334621))

(declare-fun m!3334623 () Bool)

(assert (=> b!2961815 m!3334623))

(declare-fun m!3334625 () Bool)

(assert (=> start!286932 m!3334625))

(declare-fun m!3334627 () Bool)

(assert (=> b!2961813 m!3334627))

(declare-fun m!3334629 () Bool)

(assert (=> b!2961813 m!3334629))

(declare-fun m!3334631 () Bool)

(assert (=> b!2961813 m!3334631))

(declare-fun m!3334633 () Bool)

(assert (=> b!2961811 m!3334633))

(declare-fun m!3334635 () Bool)

(assert (=> b!2961811 m!3334635))

(declare-fun m!3334637 () Bool)

(assert (=> b!2961811 m!3334637))

(declare-fun m!3334639 () Bool)

(assert (=> b!2961811 m!3334639))

(declare-fun m!3334641 () Bool)

(assert (=> b!2961810 m!3334641))

(declare-fun m!3334643 () Bool)

(assert (=> b!2961810 m!3334643))

(declare-fun m!3334645 () Bool)

(assert (=> b!2961810 m!3334645))

(check-sat (not start!286932) (not b!2961809) (not b!2961810) (not b!2961817) (not b!2961813) tp_is_empty!15965 (not b!2961814) (not b!2961815) (not b!2961811) (not b!2961816))
(check-sat)
