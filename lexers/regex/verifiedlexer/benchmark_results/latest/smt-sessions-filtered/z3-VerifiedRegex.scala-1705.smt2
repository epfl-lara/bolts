; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85646 () Bool)

(assert start!85646)

(declare-fun b!961634 () Bool)

(declare-fun e!621078 () Bool)

(declare-fun e!621077 () Bool)

(assert (=> b!961634 (= e!621078 e!621077)))

(declare-fun res!437036 () Bool)

(assert (=> b!961634 (=> res!437036 e!621077)))

(declare-fun lt!346818 () Bool)

(assert (=> b!961634 (= res!437036 (not lt!346818))))

(declare-fun e!621075 () Bool)

(assert (=> b!961634 e!621075))

(declare-fun res!437033 () Bool)

(assert (=> b!961634 (=> res!437033 e!621075)))

(assert (=> b!961634 (= res!437033 lt!346818)))

(declare-datatypes ((C!5908 0))(
  ( (C!5909 (val!3202 Int)) )
))
(declare-datatypes ((Regex!2669 0))(
  ( (ElementMatch!2669 (c!156638 C!5908)) (Concat!4502 (regOne!5850 Regex!2669) (regTwo!5850 Regex!2669)) (EmptyExpr!2669) (Star!2669 (reg!2998 Regex!2669)) (EmptyLang!2669) (Union!2669 (regOne!5851 Regex!2669) (regTwo!5851 Regex!2669)) )
))
(declare-fun lt!346823 () Regex!2669)

(declare-datatypes ((List!9899 0))(
  ( (Nil!9883) (Cons!9883 (h!15284 C!5908) (t!100945 List!9899)) )
))
(declare-fun s!10566 () List!9899)

(declare-fun matchR!1207 (Regex!2669 List!9899) Bool)

(assert (=> b!961634 (= lt!346818 (matchR!1207 lt!346823 s!10566))))

(declare-fun lt!346822 () Regex!2669)

(declare-datatypes ((Unit!14993 0))(
  ( (Unit!14994) )
))
(declare-fun lt!346821 () Unit!14993)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!64 (Regex!2669 Regex!2669 List!9899) Unit!14993)

(assert (=> b!961634 (= lt!346821 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!64 lt!346823 lt!346822 s!10566))))

(declare-fun lt!346824 () Regex!2669)

(declare-fun matchRSpec!470 (Regex!2669 List!9899) Bool)

(assert (=> b!961634 (matchRSpec!470 lt!346824 s!10566)))

(declare-fun lt!346819 () Unit!14993)

(declare-fun mainMatchTheorem!470 (Regex!2669 List!9899) Unit!14993)

(assert (=> b!961634 (= lt!346819 (mainMatchTheorem!470 lt!346824 s!10566))))

(declare-fun b!961635 () Bool)

(declare-fun e!621073 () Bool)

(declare-fun tp!295595 () Bool)

(declare-fun tp!295591 () Bool)

(assert (=> b!961635 (= e!621073 (and tp!295595 tp!295591))))

(declare-fun b!961636 () Bool)

(declare-fun tp!295592 () Bool)

(declare-fun tp!295596 () Bool)

(assert (=> b!961636 (= e!621073 (and tp!295592 tp!295596))))

(declare-fun b!961637 () Bool)

(declare-fun e!621079 () Bool)

(assert (=> b!961637 (= e!621079 e!621078)))

(declare-fun res!437035 () Bool)

(assert (=> b!961637 (=> res!437035 e!621078)))

(assert (=> b!961637 (= res!437035 (not (matchR!1207 lt!346824 s!10566)))))

(assert (=> b!961637 (= lt!346824 (Union!2669 lt!346823 lt!346822))))

(declare-fun r!15766 () Regex!2669)

(declare-fun removeUselessConcat!316 (Regex!2669) Regex!2669)

(assert (=> b!961637 (= lt!346822 (removeUselessConcat!316 (regTwo!5851 r!15766)))))

(assert (=> b!961637 (= lt!346823 (removeUselessConcat!316 (regOne!5851 r!15766)))))

(declare-fun b!961638 () Bool)

(declare-fun e!621076 () Bool)

(declare-fun tp_is_empty!4981 () Bool)

(declare-fun tp!295593 () Bool)

(assert (=> b!961638 (= e!621076 (and tp_is_empty!4981 tp!295593))))

(declare-fun b!961639 () Bool)

(assert (=> b!961639 (= e!621073 tp_is_empty!4981)))

(declare-fun b!961640 () Bool)

(assert (=> b!961640 (= e!621075 (matchR!1207 lt!346822 s!10566))))

(declare-fun b!961641 () Bool)

(declare-fun e!621074 () Bool)

(assert (=> b!961641 (= e!621074 (not e!621079))))

(declare-fun res!437034 () Bool)

(assert (=> b!961641 (=> res!437034 e!621079)))

(declare-fun lt!346820 () Bool)

(get-info :version)

(assert (=> b!961641 (= res!437034 (or lt!346820 (and ((_ is Concat!4502) r!15766) ((_ is EmptyExpr!2669) (regOne!5850 r!15766))) (and ((_ is Concat!4502) r!15766) ((_ is EmptyExpr!2669) (regTwo!5850 r!15766))) ((_ is Concat!4502) r!15766) (not ((_ is Union!2669) r!15766))))))

(assert (=> b!961641 (= lt!346820 (matchRSpec!470 r!15766 s!10566))))

(assert (=> b!961641 (= lt!346820 (matchR!1207 r!15766 s!10566))))

(declare-fun lt!346817 () Unit!14993)

(assert (=> b!961641 (= lt!346817 (mainMatchTheorem!470 r!15766 s!10566))))

(declare-fun res!437032 () Bool)

(assert (=> start!85646 (=> (not res!437032) (not e!621074))))

(declare-fun validRegex!1138 (Regex!2669) Bool)

(assert (=> start!85646 (= res!437032 (validRegex!1138 r!15766))))

(assert (=> start!85646 e!621074))

(assert (=> start!85646 e!621073))

(assert (=> start!85646 e!621076))

(declare-fun b!961642 () Bool)

(declare-fun tp!295594 () Bool)

(assert (=> b!961642 (= e!621073 tp!295594)))

(declare-fun b!961643 () Bool)

(assert (=> b!961643 (= e!621077 true)))

(assert (=> b!961643 (matchR!1207 (regOne!5851 r!15766) s!10566)))

(declare-fun lt!346825 () Unit!14993)

(declare-fun lemmaRemoveUselessConcatSound!174 (Regex!2669 List!9899) Unit!14993)

(assert (=> b!961643 (= lt!346825 (lemmaRemoveUselessConcatSound!174 (regOne!5851 r!15766) s!10566))))

(assert (= (and start!85646 res!437032) b!961641))

(assert (= (and b!961641 (not res!437034)) b!961637))

(assert (= (and b!961637 (not res!437035)) b!961634))

(assert (= (and b!961634 (not res!437033)) b!961640))

(assert (= (and b!961634 (not res!437036)) b!961643))

(assert (= (and start!85646 ((_ is ElementMatch!2669) r!15766)) b!961639))

(assert (= (and start!85646 ((_ is Concat!4502) r!15766)) b!961635))

(assert (= (and start!85646 ((_ is Star!2669) r!15766)) b!961642))

(assert (= (and start!85646 ((_ is Union!2669) r!15766)) b!961636))

(assert (= (and start!85646 ((_ is Cons!9883) s!10566)) b!961638))

(declare-fun m!1169497 () Bool)

(assert (=> b!961634 m!1169497))

(declare-fun m!1169499 () Bool)

(assert (=> b!961634 m!1169499))

(declare-fun m!1169501 () Bool)

(assert (=> b!961634 m!1169501))

(declare-fun m!1169503 () Bool)

(assert (=> b!961634 m!1169503))

(declare-fun m!1169505 () Bool)

(assert (=> b!961641 m!1169505))

(declare-fun m!1169507 () Bool)

(assert (=> b!961641 m!1169507))

(declare-fun m!1169509 () Bool)

(assert (=> b!961641 m!1169509))

(declare-fun m!1169511 () Bool)

(assert (=> start!85646 m!1169511))

(declare-fun m!1169513 () Bool)

(assert (=> b!961640 m!1169513))

(declare-fun m!1169515 () Bool)

(assert (=> b!961643 m!1169515))

(declare-fun m!1169517 () Bool)

(assert (=> b!961643 m!1169517))

(declare-fun m!1169519 () Bool)

(assert (=> b!961637 m!1169519))

(declare-fun m!1169521 () Bool)

(assert (=> b!961637 m!1169521))

(declare-fun m!1169523 () Bool)

(assert (=> b!961637 m!1169523))

(check-sat (not b!961643) (not start!85646) (not b!961641) (not b!961638) (not b!961637) (not b!961634) tp_is_empty!4981 (not b!961642) (not b!961640) (not b!961636) (not b!961635))
(check-sat)
