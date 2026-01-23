; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664078 () Bool)

(assert start!664078)

(declare-fun b!6885534 () Bool)

(assert (=> b!6885534 true))

(assert (=> b!6885534 true))

(assert (=> b!6885534 true))

(declare-fun lambda!389912 () Int)

(declare-fun lambda!389911 () Int)

(assert (=> b!6885534 (not (= lambda!389912 lambda!389911))))

(assert (=> b!6885534 true))

(assert (=> b!6885534 true))

(assert (=> b!6885534 true))

(declare-fun bs!1838605 () Bool)

(declare-fun b!6885536 () Bool)

(assert (= bs!1838605 (and b!6885536 b!6885534)))

(declare-datatypes ((C!33836 0))(
  ( (C!33837 (val!26620 Int)) )
))
(declare-datatypes ((Regex!16783 0))(
  ( (ElementMatch!16783 (c!1280615 C!33836)) (Concat!25628 (regOne!34078 Regex!16783) (regTwo!34078 Regex!16783)) (EmptyExpr!16783) (Star!16783 (reg!17112 Regex!16783)) (EmptyLang!16783) (Union!16783 (regOne!34079 Regex!16783) (regTwo!34079 Regex!16783)) )
))
(declare-fun r1!6342 () Regex!16783)

(declare-fun r3!135 () Regex!16783)

(declare-fun lt!2460787 () Regex!16783)

(declare-fun lambda!389913 () Int)

(declare-fun r2!6280 () Regex!16783)

(declare-datatypes ((List!66540 0))(
  ( (Nil!66416) (Cons!66416 (h!72864 C!33836) (t!380283 List!66540)) )
))
(declare-fun s!14361 () List!66540)

(declare-datatypes ((tuple2!67312 0))(
  ( (tuple2!67313 (_1!36959 List!66540) (_2!36959 List!66540)) )
))
(declare-fun lt!2460800 () tuple2!67312)

(assert (=> bs!1838605 (= (and (= (_1!36959 lt!2460800) s!14361) (= r1!6342 lt!2460787) (= r2!6280 r3!135)) (= lambda!389913 lambda!389911))))

(assert (=> bs!1838605 (not (= lambda!389913 lambda!389912))))

(assert (=> b!6885536 true))

(assert (=> b!6885536 true))

(assert (=> b!6885536 true))

(declare-fun lambda!389914 () Int)

(assert (=> bs!1838605 (not (= lambda!389914 lambda!389911))))

(assert (=> bs!1838605 (= (and (= (_1!36959 lt!2460800) s!14361) (= r1!6342 lt!2460787) (= r2!6280 r3!135)) (= lambda!389914 lambda!389912))))

(assert (=> b!6885536 (not (= lambda!389914 lambda!389913))))

(assert (=> b!6885536 true))

(assert (=> b!6885536 true))

(assert (=> b!6885536 true))

(declare-fun res!2806884 () Bool)

(declare-fun e!4148721 () Bool)

(assert (=> start!664078 (=> (not res!2806884) (not e!4148721))))

(declare-fun validRegex!8491 (Regex!16783) Bool)

(assert (=> start!664078 (= res!2806884 (validRegex!8491 r1!6342))))

(assert (=> start!664078 e!4148721))

(declare-fun e!4148727 () Bool)

(assert (=> start!664078 e!4148727))

(declare-fun e!4148724 () Bool)

(assert (=> start!664078 e!4148724))

(declare-fun e!4148723 () Bool)

(assert (=> start!664078 e!4148723))

(declare-fun e!4148725 () Bool)

(assert (=> start!664078 e!4148725))

(declare-fun b!6885522 () Bool)

(declare-fun tp!1894162 () Bool)

(declare-fun tp!1894158 () Bool)

(assert (=> b!6885522 (= e!4148724 (and tp!1894162 tp!1894158))))

(declare-fun b!6885523 () Bool)

(declare-fun tp!1894165 () Bool)

(declare-fun tp!1894163 () Bool)

(assert (=> b!6885523 (= e!4148723 (and tp!1894165 tp!1894163))))

(declare-fun b!6885524 () Bool)

(declare-fun e!4148728 () Bool)

(assert (=> b!6885524 (= e!4148728 true)))

(declare-fun lt!2460793 () Bool)

(declare-fun lt!2460794 () tuple2!67312)

(declare-fun matchR!8928 (Regex!16783 List!66540) Bool)

(assert (=> b!6885524 (= lt!2460793 (matchR!8928 r2!6280 (_2!36959 lt!2460794)))))

(declare-fun b!6885525 () Bool)

(declare-fun tp!1894153 () Bool)

(declare-fun tp!1894166 () Bool)

(assert (=> b!6885525 (= e!4148724 (and tp!1894153 tp!1894166))))

(declare-fun b!6885526 () Bool)

(declare-fun tp_is_empty!42791 () Bool)

(assert (=> b!6885526 (= e!4148727 tp_is_empty!42791)))

(declare-fun b!6885527 () Bool)

(declare-fun e!4148722 () Bool)

(assert (=> b!6885527 (= e!4148721 (not e!4148722))))

(declare-fun res!2806881 () Bool)

(assert (=> b!6885527 (=> res!2806881 e!4148722)))

(declare-fun lt!2460790 () Bool)

(assert (=> b!6885527 (= res!2806881 (not lt!2460790))))

(declare-fun lt!2460798 () Regex!16783)

(declare-fun matchRSpec!3846 (Regex!16783 List!66540) Bool)

(assert (=> b!6885527 (= (matchR!8928 lt!2460798 s!14361) (matchRSpec!3846 lt!2460798 s!14361))))

(declare-datatypes ((Unit!160286 0))(
  ( (Unit!160287) )
))
(declare-fun lt!2460796 () Unit!160286)

(declare-fun mainMatchTheorem!3846 (Regex!16783 List!66540) Unit!160286)

(assert (=> b!6885527 (= lt!2460796 (mainMatchTheorem!3846 lt!2460798 s!14361))))

(declare-fun lt!2460785 () Regex!16783)

(assert (=> b!6885527 (= lt!2460790 (matchRSpec!3846 lt!2460785 s!14361))))

(assert (=> b!6885527 (= lt!2460790 (matchR!8928 lt!2460785 s!14361))))

(declare-fun lt!2460792 () Unit!160286)

(assert (=> b!6885527 (= lt!2460792 (mainMatchTheorem!3846 lt!2460785 s!14361))))

(assert (=> b!6885527 (= lt!2460798 (Concat!25628 r1!6342 (Concat!25628 r2!6280 r3!135)))))

(assert (=> b!6885527 (= lt!2460785 (Concat!25628 lt!2460787 r3!135))))

(assert (=> b!6885527 (= lt!2460787 (Concat!25628 r1!6342 r2!6280))))

(declare-fun b!6885528 () Bool)

(declare-fun tp!1894156 () Bool)

(declare-fun tp!1894157 () Bool)

(assert (=> b!6885528 (= e!4148727 (and tp!1894156 tp!1894157))))

(declare-fun b!6885529 () Bool)

(assert (=> b!6885529 (= e!4148723 tp_is_empty!42791)))

(declare-fun b!6885530 () Bool)

(declare-fun res!2806880 () Bool)

(declare-fun e!4148726 () Bool)

(assert (=> b!6885530 (=> res!2806880 e!4148726)))

(assert (=> b!6885530 (= res!2806880 (not (matchR!8928 r3!135 (_2!36959 lt!2460800))))))

(declare-fun b!6885531 () Bool)

(declare-fun tp!1894159 () Bool)

(assert (=> b!6885531 (= e!4148724 tp!1894159)))

(declare-fun b!6885532 () Bool)

(declare-fun tp!1894154 () Bool)

(declare-fun tp!1894161 () Bool)

(assert (=> b!6885532 (= e!4148723 (and tp!1894154 tp!1894161))))

(declare-fun b!6885533 () Bool)

(assert (=> b!6885533 (= e!4148724 tp_is_empty!42791)))

(assert (=> b!6885534 (= e!4148722 e!4148726)))

(declare-fun res!2806883 () Bool)

(assert (=> b!6885534 (=> res!2806883 e!4148726)))

(declare-fun lt!2460786 () Bool)

(assert (=> b!6885534 (= res!2806883 (not lt!2460786))))

(assert (=> b!6885534 (= lt!2460786 (matchRSpec!3846 lt!2460787 (_1!36959 lt!2460800)))))

(assert (=> b!6885534 (= lt!2460786 (matchR!8928 lt!2460787 (_1!36959 lt!2460800)))))

(declare-fun lt!2460788 () Unit!160286)

(assert (=> b!6885534 (= lt!2460788 (mainMatchTheorem!3846 lt!2460787 (_1!36959 lt!2460800)))))

(declare-datatypes ((Option!16568 0))(
  ( (None!16567) (Some!16567 (v!52839 tuple2!67312)) )
))
(declare-fun lt!2460791 () Option!16568)

(declare-fun get!23137 (Option!16568) tuple2!67312)

(assert (=> b!6885534 (= lt!2460800 (get!23137 lt!2460791))))

(declare-fun Exists!3795 (Int) Bool)

(assert (=> b!6885534 (= (Exists!3795 lambda!389911) (Exists!3795 lambda!389912))))

(declare-fun lt!2460797 () Unit!160286)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2274 (Regex!16783 Regex!16783 List!66540) Unit!160286)

(assert (=> b!6885534 (= lt!2460797 (lemmaExistCutMatchRandMatchRSpecEquivalent!2274 lt!2460787 r3!135 s!14361))))

(declare-fun isDefined!13271 (Option!16568) Bool)

(assert (=> b!6885534 (= (isDefined!13271 lt!2460791) (Exists!3795 lambda!389911))))

(declare-fun findConcatSeparation!2982 (Regex!16783 Regex!16783 List!66540 List!66540 List!66540) Option!16568)

(assert (=> b!6885534 (= lt!2460791 (findConcatSeparation!2982 lt!2460787 r3!135 Nil!66416 s!14361 s!14361))))

(declare-fun lt!2460799 () Unit!160286)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2746 (Regex!16783 Regex!16783 List!66540) Unit!160286)

(assert (=> b!6885534 (= lt!2460799 (lemmaFindConcatSeparationEquivalentToExists!2746 lt!2460787 r3!135 s!14361))))

(declare-fun b!6885535 () Bool)

(declare-fun res!2806885 () Bool)

(assert (=> b!6885535 (=> (not res!2806885) (not e!4148721))))

(assert (=> b!6885535 (= res!2806885 (validRegex!8491 r2!6280))))

(assert (=> b!6885536 (= e!4148726 e!4148728)))

(declare-fun res!2806886 () Bool)

(assert (=> b!6885536 (=> res!2806886 e!4148728)))

(assert (=> b!6885536 (= res!2806886 (not (matchR!8928 r1!6342 (_1!36959 lt!2460794))))))

(declare-fun lt!2460789 () Option!16568)

(assert (=> b!6885536 (= lt!2460794 (get!23137 lt!2460789))))

(assert (=> b!6885536 (= (Exists!3795 lambda!389913) (Exists!3795 lambda!389914))))

(declare-fun lt!2460801 () Unit!160286)

(assert (=> b!6885536 (= lt!2460801 (lemmaExistCutMatchRandMatchRSpecEquivalent!2274 r1!6342 r2!6280 (_1!36959 lt!2460800)))))

(assert (=> b!6885536 (= (isDefined!13271 lt!2460789) (Exists!3795 lambda!389913))))

(assert (=> b!6885536 (= lt!2460789 (findConcatSeparation!2982 r1!6342 r2!6280 Nil!66416 (_1!36959 lt!2460800) (_1!36959 lt!2460800)))))

(declare-fun lt!2460795 () Unit!160286)

(assert (=> b!6885536 (= lt!2460795 (lemmaFindConcatSeparationEquivalentToExists!2746 r1!6342 r2!6280 (_1!36959 lt!2460800)))))

(declare-fun b!6885537 () Bool)

(declare-fun res!2806882 () Bool)

(assert (=> b!6885537 (=> (not res!2806882) (not e!4148721))))

(assert (=> b!6885537 (= res!2806882 (validRegex!8491 r3!135))))

(declare-fun b!6885538 () Bool)

(declare-fun tp!1894152 () Bool)

(assert (=> b!6885538 (= e!4148725 (and tp_is_empty!42791 tp!1894152))))

(declare-fun b!6885539 () Bool)

(declare-fun tp!1894160 () Bool)

(assert (=> b!6885539 (= e!4148727 tp!1894160)))

(declare-fun b!6885540 () Bool)

(declare-fun tp!1894167 () Bool)

(declare-fun tp!1894164 () Bool)

(assert (=> b!6885540 (= e!4148727 (and tp!1894167 tp!1894164))))

(declare-fun b!6885541 () Bool)

(declare-fun tp!1894155 () Bool)

(assert (=> b!6885541 (= e!4148723 tp!1894155)))

(assert (= (and start!664078 res!2806884) b!6885535))

(assert (= (and b!6885535 res!2806885) b!6885537))

(assert (= (and b!6885537 res!2806882) b!6885527))

(assert (= (and b!6885527 (not res!2806881)) b!6885534))

(assert (= (and b!6885534 (not res!2806883)) b!6885530))

(assert (= (and b!6885530 (not res!2806880)) b!6885536))

(assert (= (and b!6885536 (not res!2806886)) b!6885524))

(get-info :version)

(assert (= (and start!664078 ((_ is ElementMatch!16783) r1!6342)) b!6885526))

(assert (= (and start!664078 ((_ is Concat!25628) r1!6342)) b!6885528))

(assert (= (and start!664078 ((_ is Star!16783) r1!6342)) b!6885539))

(assert (= (and start!664078 ((_ is Union!16783) r1!6342)) b!6885540))

(assert (= (and start!664078 ((_ is ElementMatch!16783) r2!6280)) b!6885533))

(assert (= (and start!664078 ((_ is Concat!25628) r2!6280)) b!6885522))

(assert (= (and start!664078 ((_ is Star!16783) r2!6280)) b!6885531))

(assert (= (and start!664078 ((_ is Union!16783) r2!6280)) b!6885525))

(assert (= (and start!664078 ((_ is ElementMatch!16783) r3!135)) b!6885529))

(assert (= (and start!664078 ((_ is Concat!25628) r3!135)) b!6885523))

(assert (= (and start!664078 ((_ is Star!16783) r3!135)) b!6885541))

(assert (= (and start!664078 ((_ is Union!16783) r3!135)) b!6885532))

(assert (= (and start!664078 ((_ is Cons!66416) s!14361)) b!6885538))

(declare-fun m!7608610 () Bool)

(assert (=> start!664078 m!7608610))

(declare-fun m!7608612 () Bool)

(assert (=> b!6885524 m!7608612))

(declare-fun m!7608614 () Bool)

(assert (=> b!6885534 m!7608614))

(declare-fun m!7608616 () Bool)

(assert (=> b!6885534 m!7608616))

(declare-fun m!7608618 () Bool)

(assert (=> b!6885534 m!7608618))

(declare-fun m!7608620 () Bool)

(assert (=> b!6885534 m!7608620))

(declare-fun m!7608622 () Bool)

(assert (=> b!6885534 m!7608622))

(declare-fun m!7608624 () Bool)

(assert (=> b!6885534 m!7608624))

(declare-fun m!7608626 () Bool)

(assert (=> b!6885534 m!7608626))

(declare-fun m!7608628 () Bool)

(assert (=> b!6885534 m!7608628))

(declare-fun m!7608630 () Bool)

(assert (=> b!6885534 m!7608630))

(assert (=> b!6885534 m!7608630))

(declare-fun m!7608632 () Bool)

(assert (=> b!6885534 m!7608632))

(declare-fun m!7608634 () Bool)

(assert (=> b!6885537 m!7608634))

(declare-fun m!7608636 () Bool)

(assert (=> b!6885535 m!7608636))

(declare-fun m!7608638 () Bool)

(assert (=> b!6885530 m!7608638))

(declare-fun m!7608640 () Bool)

(assert (=> b!6885536 m!7608640))

(declare-fun m!7608642 () Bool)

(assert (=> b!6885536 m!7608642))

(declare-fun m!7608644 () Bool)

(assert (=> b!6885536 m!7608644))

(declare-fun m!7608646 () Bool)

(assert (=> b!6885536 m!7608646))

(declare-fun m!7608648 () Bool)

(assert (=> b!6885536 m!7608648))

(declare-fun m!7608650 () Bool)

(assert (=> b!6885536 m!7608650))

(assert (=> b!6885536 m!7608650))

(declare-fun m!7608652 () Bool)

(assert (=> b!6885536 m!7608652))

(declare-fun m!7608654 () Bool)

(assert (=> b!6885536 m!7608654))

(declare-fun m!7608656 () Bool)

(assert (=> b!6885527 m!7608656))

(declare-fun m!7608658 () Bool)

(assert (=> b!6885527 m!7608658))

(declare-fun m!7608660 () Bool)

(assert (=> b!6885527 m!7608660))

(declare-fun m!7608662 () Bool)

(assert (=> b!6885527 m!7608662))

(declare-fun m!7608664 () Bool)

(assert (=> b!6885527 m!7608664))

(declare-fun m!7608666 () Bool)

(assert (=> b!6885527 m!7608666))

(check-sat (not b!6885523) (not b!6885527) (not b!6885532) (not b!6885539) (not b!6885541) (not b!6885535) (not b!6885534) (not b!6885540) (not b!6885522) (not b!6885525) (not b!6885536) (not b!6885528) (not start!664078) (not b!6885531) tp_is_empty!42791 (not b!6885537) (not b!6885538) (not b!6885530) (not b!6885524))
(check-sat)
