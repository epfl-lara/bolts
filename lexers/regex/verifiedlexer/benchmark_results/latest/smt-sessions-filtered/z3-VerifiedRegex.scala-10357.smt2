; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537728 () Bool)

(assert start!537728)

(declare-fun b!5098414 () Bool)

(declare-fun e!3179646 () Bool)

(declare-fun tp_is_empty!37283 () Bool)

(assert (=> b!5098414 (= e!3179646 tp_is_empty!37283)))

(declare-fun b!5098415 () Bool)

(declare-fun e!3179647 () Bool)

(declare-datatypes ((C!28276 0))(
  ( (C!28277 (val!23790 Int)) )
))
(declare-datatypes ((Regex!14009 0))(
  ( (ElementMatch!14009 (c!876103 C!28276)) (Concat!22854 (regOne!28530 Regex!14009) (regTwo!28530 Regex!14009)) (EmptyExpr!14009) (Star!14009 (reg!14338 Regex!14009)) (EmptyLang!14009) (Union!14009 (regOne!28531 Regex!14009) (regTwo!28531 Regex!14009)) )
))
(declare-fun r!15189 () Regex!14009)

(declare-datatypes ((List!58814 0))(
  ( (Nil!58690) (Cons!58690 (h!65138 Regex!14009) (t!371815 List!58814)) )
))
(declare-datatypes ((Context!6786 0))(
  ( (Context!6787 (exprs!3893 List!58814)) )
))
(declare-datatypes ((List!58815 0))(
  ( (Nil!58691) (Cons!58691 (h!65139 Context!6786) (t!371816 List!58815)) )
))
(declare-fun unfocusZipper!351 (List!58815) Regex!14009)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!8143 ((InoxSet Context!6786)) List!58815)

(declare-fun focus!370 (Regex!14009) (InoxSet Context!6786))

(assert (=> b!5098415 (= e!3179647 (not (= (unfocusZipper!351 (toList!8143 (focus!370 r!15189))) r!15189)))))

(declare-fun b!5098416 () Bool)

(declare-fun tp!1421661 () Bool)

(declare-fun tp!1421662 () Bool)

(assert (=> b!5098416 (= e!3179646 (and tp!1421661 tp!1421662))))

(declare-fun b!5098417 () Bool)

(declare-fun tp!1421663 () Bool)

(assert (=> b!5098417 (= e!3179646 tp!1421663)))

(declare-fun b!5098413 () Bool)

(declare-fun tp!1421665 () Bool)

(declare-fun tp!1421664 () Bool)

(assert (=> b!5098413 (= e!3179646 (and tp!1421665 tp!1421664))))

(declare-fun res!2169782 () Bool)

(assert (=> start!537728 (=> (not res!2169782) (not e!3179647))))

(declare-fun validRegex!6136 (Regex!14009) Bool)

(assert (=> start!537728 (= res!2169782 (validRegex!6136 r!15189))))

(assert (=> start!537728 e!3179647))

(assert (=> start!537728 e!3179646))

(assert (= (and start!537728 res!2169782) b!5098415))

(get-info :version)

(assert (= (and start!537728 ((_ is ElementMatch!14009) r!15189)) b!5098414))

(assert (= (and start!537728 ((_ is Concat!22854) r!15189)) b!5098416))

(assert (= (and start!537728 ((_ is Star!14009) r!15189)) b!5098417))

(assert (= (and start!537728 ((_ is Union!14009) r!15189)) b!5098413))

(declare-fun m!6155774 () Bool)

(assert (=> b!5098415 m!6155774))

(assert (=> b!5098415 m!6155774))

(declare-fun m!6155776 () Bool)

(assert (=> b!5098415 m!6155776))

(assert (=> b!5098415 m!6155776))

(declare-fun m!6155778 () Bool)

(assert (=> b!5098415 m!6155778))

(declare-fun m!6155780 () Bool)

(assert (=> start!537728 m!6155780))

(check-sat (not b!5098416) (not b!5098417) (not b!5098415) (not b!5098413) (not start!537728) tp_is_empty!37283)
(check-sat)
(get-model)

(declare-fun b!5098442 () Bool)

(declare-fun e!3179671 () Bool)

(declare-fun e!3179670 () Bool)

(assert (=> b!5098442 (= e!3179671 e!3179670)))

(declare-fun res!2169800 () Bool)

(assert (=> b!5098442 (=> (not res!2169800) (not e!3179670))))

(declare-fun call!355072 () Bool)

(assert (=> b!5098442 (= res!2169800 call!355072)))

(declare-fun d!1649808 () Bool)

(declare-fun res!2169802 () Bool)

(declare-fun e!3179674 () Bool)

(assert (=> d!1649808 (=> res!2169802 e!3179674)))

(assert (=> d!1649808 (= res!2169802 ((_ is ElementMatch!14009) r!15189))))

(assert (=> d!1649808 (= (validRegex!6136 r!15189) e!3179674)))

(declare-fun bm!355067 () Bool)

(declare-fun call!355073 () Bool)

(declare-fun call!355074 () Bool)

(assert (=> bm!355067 (= call!355073 call!355074)))

(declare-fun bm!355068 () Bool)

(declare-fun c!876109 () Bool)

(declare-fun c!876108 () Bool)

(assert (=> bm!355068 (= call!355074 (validRegex!6136 (ite c!876108 (reg!14338 r!15189) (ite c!876109 (regOne!28531 r!15189) (regTwo!28530 r!15189)))))))

(declare-fun b!5098443 () Bool)

(declare-fun e!3179669 () Bool)

(assert (=> b!5098443 (= e!3179669 call!355072)))

(declare-fun b!5098444 () Bool)

(declare-fun e!3179668 () Bool)

(declare-fun e!3179673 () Bool)

(assert (=> b!5098444 (= e!3179668 e!3179673)))

(declare-fun res!2169804 () Bool)

(declare-fun nullable!4708 (Regex!14009) Bool)

(assert (=> b!5098444 (= res!2169804 (not (nullable!4708 (reg!14338 r!15189))))))

(assert (=> b!5098444 (=> (not res!2169804) (not e!3179673))))

(declare-fun b!5098445 () Bool)

(declare-fun res!2169803 () Bool)

(assert (=> b!5098445 (=> res!2169803 e!3179671)))

(assert (=> b!5098445 (= res!2169803 (not ((_ is Concat!22854) r!15189)))))

(declare-fun e!3179672 () Bool)

(assert (=> b!5098445 (= e!3179672 e!3179671)))

(declare-fun b!5098446 () Bool)

(declare-fun res!2169801 () Bool)

(assert (=> b!5098446 (=> (not res!2169801) (not e!3179669))))

(assert (=> b!5098446 (= res!2169801 call!355073)))

(assert (=> b!5098446 (= e!3179672 e!3179669)))

(declare-fun b!5098447 () Bool)

(assert (=> b!5098447 (= e!3179670 call!355073)))

(declare-fun b!5098448 () Bool)

(assert (=> b!5098448 (= e!3179674 e!3179668)))

(assert (=> b!5098448 (= c!876108 ((_ is Star!14009) r!15189))))

(declare-fun b!5098449 () Bool)

(assert (=> b!5098449 (= e!3179668 e!3179672)))

(assert (=> b!5098449 (= c!876109 ((_ is Union!14009) r!15189))))

(declare-fun b!5098450 () Bool)

(assert (=> b!5098450 (= e!3179673 call!355074)))

(declare-fun bm!355069 () Bool)

(assert (=> bm!355069 (= call!355072 (validRegex!6136 (ite c!876109 (regTwo!28531 r!15189) (regOne!28530 r!15189))))))

(assert (= (and d!1649808 (not res!2169802)) b!5098448))

(assert (= (and b!5098448 c!876108) b!5098444))

(assert (= (and b!5098448 (not c!876108)) b!5098449))

(assert (= (and b!5098444 res!2169804) b!5098450))

(assert (= (and b!5098449 c!876109) b!5098446))

(assert (= (and b!5098449 (not c!876109)) b!5098445))

(assert (= (and b!5098446 res!2169801) b!5098443))

(assert (= (and b!5098445 (not res!2169803)) b!5098442))

(assert (= (and b!5098442 res!2169800) b!5098447))

(assert (= (or b!5098443 b!5098442) bm!355069))

(assert (= (or b!5098446 b!5098447) bm!355067))

(assert (= (or b!5098450 bm!355067) bm!355068))

(declare-fun m!6155800 () Bool)

(assert (=> bm!355068 m!6155800))

(declare-fun m!6155802 () Bool)

(assert (=> b!5098444 m!6155802))

(declare-fun m!6155804 () Bool)

(assert (=> bm!355069 m!6155804))

(assert (=> start!537728 d!1649808))

(declare-fun d!1649816 () Bool)

(declare-fun lt!2095129 () Regex!14009)

(assert (=> d!1649816 (validRegex!6136 lt!2095129)))

(declare-fun generalisedUnion!594 (List!58814) Regex!14009)

(declare-fun unfocusZipperList!107 (List!58815) List!58814)

(assert (=> d!1649816 (= lt!2095129 (generalisedUnion!594 (unfocusZipperList!107 (toList!8143 (focus!370 r!15189)))))))

(assert (=> d!1649816 (= (unfocusZipper!351 (toList!8143 (focus!370 r!15189))) lt!2095129)))

(declare-fun bs!1191457 () Bool)

(assert (= bs!1191457 d!1649816))

(declare-fun m!6155806 () Bool)

(assert (=> bs!1191457 m!6155806))

(assert (=> bs!1191457 m!6155776))

(declare-fun m!6155808 () Bool)

(assert (=> bs!1191457 m!6155808))

(assert (=> bs!1191457 m!6155808))

(declare-fun m!6155810 () Bool)

(assert (=> bs!1191457 m!6155810))

(assert (=> b!5098415 d!1649816))

(declare-fun d!1649818 () Bool)

(declare-fun e!3179691 () Bool)

(assert (=> d!1649818 e!3179691))

(declare-fun res!2169817 () Bool)

(assert (=> d!1649818 (=> (not res!2169817) (not e!3179691))))

(declare-fun lt!2095132 () List!58815)

(declare-fun noDuplicate!1053 (List!58815) Bool)

(assert (=> d!1649818 (= res!2169817 (noDuplicate!1053 lt!2095132))))

(declare-fun choose!37350 ((InoxSet Context!6786)) List!58815)

(assert (=> d!1649818 (= lt!2095132 (choose!37350 (focus!370 r!15189)))))

(assert (=> d!1649818 (= (toList!8143 (focus!370 r!15189)) lt!2095132)))

(declare-fun b!5098471 () Bool)

(declare-fun content!10446 (List!58815) (InoxSet Context!6786))

(assert (=> b!5098471 (= e!3179691 (= (content!10446 lt!2095132) (focus!370 r!15189)))))

(assert (= (and d!1649818 res!2169817) b!5098471))

(declare-fun m!6155812 () Bool)

(assert (=> d!1649818 m!6155812))

(assert (=> d!1649818 m!6155774))

(declare-fun m!6155814 () Bool)

(assert (=> d!1649818 m!6155814))

(declare-fun m!6155816 () Bool)

(assert (=> b!5098471 m!6155816))

(assert (=> b!5098415 d!1649818))

(declare-fun d!1649820 () Bool)

(declare-fun e!3179708 () Bool)

(assert (=> d!1649820 e!3179708))

(declare-fun res!2169826 () Bool)

(assert (=> d!1649820 (=> (not res!2169826) (not e!3179708))))

(assert (=> d!1649820 (= res!2169826 (validRegex!6136 r!15189))))

(assert (=> d!1649820 (= (focus!370 r!15189) (store ((as const (Array Context!6786 Bool)) false) (Context!6787 (Cons!58690 r!15189 Nil!58690)) true))))

(declare-fun b!5098513 () Bool)

(assert (=> b!5098513 (= e!3179708 (= (unfocusZipper!351 (toList!8143 (store ((as const (Array Context!6786 Bool)) false) (Context!6787 (Cons!58690 r!15189 Nil!58690)) true))) r!15189))))

(assert (= (and d!1649820 res!2169826) b!5098513))

(assert (=> d!1649820 m!6155780))

(declare-fun m!6155824 () Bool)

(assert (=> d!1649820 m!6155824))

(assert (=> b!5098513 m!6155824))

(assert (=> b!5098513 m!6155824))

(declare-fun m!6155826 () Bool)

(assert (=> b!5098513 m!6155826))

(assert (=> b!5098513 m!6155826))

(declare-fun m!6155828 () Bool)

(assert (=> b!5098513 m!6155828))

(assert (=> b!5098415 d!1649820))

(declare-fun b!5098526 () Bool)

(declare-fun e!3179711 () Bool)

(declare-fun tp!1421711 () Bool)

(assert (=> b!5098526 (= e!3179711 tp!1421711)))

(declare-fun b!5098524 () Bool)

(assert (=> b!5098524 (= e!3179711 tp_is_empty!37283)))

(declare-fun b!5098527 () Bool)

(declare-fun tp!1421714 () Bool)

(declare-fun tp!1421712 () Bool)

(assert (=> b!5098527 (= e!3179711 (and tp!1421714 tp!1421712))))

(assert (=> b!5098416 (= tp!1421661 e!3179711)))

(declare-fun b!5098525 () Bool)

(declare-fun tp!1421715 () Bool)

(declare-fun tp!1421713 () Bool)

(assert (=> b!5098525 (= e!3179711 (and tp!1421715 tp!1421713))))

(assert (= (and b!5098416 ((_ is ElementMatch!14009) (regOne!28530 r!15189))) b!5098524))

(assert (= (and b!5098416 ((_ is Concat!22854) (regOne!28530 r!15189))) b!5098525))

(assert (= (and b!5098416 ((_ is Star!14009) (regOne!28530 r!15189))) b!5098526))

(assert (= (and b!5098416 ((_ is Union!14009) (regOne!28530 r!15189))) b!5098527))

(declare-fun b!5098530 () Bool)

(declare-fun e!3179712 () Bool)

(declare-fun tp!1421716 () Bool)

(assert (=> b!5098530 (= e!3179712 tp!1421716)))

(declare-fun b!5098528 () Bool)

(assert (=> b!5098528 (= e!3179712 tp_is_empty!37283)))

(declare-fun b!5098531 () Bool)

(declare-fun tp!1421719 () Bool)

(declare-fun tp!1421717 () Bool)

(assert (=> b!5098531 (= e!3179712 (and tp!1421719 tp!1421717))))

(assert (=> b!5098416 (= tp!1421662 e!3179712)))

(declare-fun b!5098529 () Bool)

(declare-fun tp!1421720 () Bool)

(declare-fun tp!1421718 () Bool)

(assert (=> b!5098529 (= e!3179712 (and tp!1421720 tp!1421718))))

(assert (= (and b!5098416 ((_ is ElementMatch!14009) (regTwo!28530 r!15189))) b!5098528))

(assert (= (and b!5098416 ((_ is Concat!22854) (regTwo!28530 r!15189))) b!5098529))

(assert (= (and b!5098416 ((_ is Star!14009) (regTwo!28530 r!15189))) b!5098530))

(assert (= (and b!5098416 ((_ is Union!14009) (regTwo!28530 r!15189))) b!5098531))

(declare-fun b!5098534 () Bool)

(declare-fun e!3179713 () Bool)

(declare-fun tp!1421721 () Bool)

(assert (=> b!5098534 (= e!3179713 tp!1421721)))

(declare-fun b!5098532 () Bool)

(assert (=> b!5098532 (= e!3179713 tp_is_empty!37283)))

(declare-fun b!5098535 () Bool)

(declare-fun tp!1421724 () Bool)

(declare-fun tp!1421722 () Bool)

(assert (=> b!5098535 (= e!3179713 (and tp!1421724 tp!1421722))))

(assert (=> b!5098417 (= tp!1421663 e!3179713)))

(declare-fun b!5098533 () Bool)

(declare-fun tp!1421725 () Bool)

(declare-fun tp!1421723 () Bool)

(assert (=> b!5098533 (= e!3179713 (and tp!1421725 tp!1421723))))

(assert (= (and b!5098417 ((_ is ElementMatch!14009) (reg!14338 r!15189))) b!5098532))

(assert (= (and b!5098417 ((_ is Concat!22854) (reg!14338 r!15189))) b!5098533))

(assert (= (and b!5098417 ((_ is Star!14009) (reg!14338 r!15189))) b!5098534))

(assert (= (and b!5098417 ((_ is Union!14009) (reg!14338 r!15189))) b!5098535))

(declare-fun b!5098538 () Bool)

(declare-fun e!3179714 () Bool)

(declare-fun tp!1421726 () Bool)

(assert (=> b!5098538 (= e!3179714 tp!1421726)))

(declare-fun b!5098536 () Bool)

(assert (=> b!5098536 (= e!3179714 tp_is_empty!37283)))

(declare-fun b!5098539 () Bool)

(declare-fun tp!1421729 () Bool)

(declare-fun tp!1421727 () Bool)

(assert (=> b!5098539 (= e!3179714 (and tp!1421729 tp!1421727))))

(assert (=> b!5098413 (= tp!1421665 e!3179714)))

(declare-fun b!5098537 () Bool)

(declare-fun tp!1421730 () Bool)

(declare-fun tp!1421728 () Bool)

(assert (=> b!5098537 (= e!3179714 (and tp!1421730 tp!1421728))))

(assert (= (and b!5098413 ((_ is ElementMatch!14009) (regOne!28531 r!15189))) b!5098536))

(assert (= (and b!5098413 ((_ is Concat!22854) (regOne!28531 r!15189))) b!5098537))

(assert (= (and b!5098413 ((_ is Star!14009) (regOne!28531 r!15189))) b!5098538))

(assert (= (and b!5098413 ((_ is Union!14009) (regOne!28531 r!15189))) b!5098539))

(declare-fun b!5098542 () Bool)

(declare-fun e!3179715 () Bool)

(declare-fun tp!1421731 () Bool)

(assert (=> b!5098542 (= e!3179715 tp!1421731)))

(declare-fun b!5098540 () Bool)

(assert (=> b!5098540 (= e!3179715 tp_is_empty!37283)))

(declare-fun b!5098543 () Bool)

(declare-fun tp!1421734 () Bool)

(declare-fun tp!1421732 () Bool)

(assert (=> b!5098543 (= e!3179715 (and tp!1421734 tp!1421732))))

(assert (=> b!5098413 (= tp!1421664 e!3179715)))

(declare-fun b!5098541 () Bool)

(declare-fun tp!1421735 () Bool)

(declare-fun tp!1421733 () Bool)

(assert (=> b!5098541 (= e!3179715 (and tp!1421735 tp!1421733))))

(assert (= (and b!5098413 ((_ is ElementMatch!14009) (regTwo!28531 r!15189))) b!5098540))

(assert (= (and b!5098413 ((_ is Concat!22854) (regTwo!28531 r!15189))) b!5098541))

(assert (= (and b!5098413 ((_ is Star!14009) (regTwo!28531 r!15189))) b!5098542))

(assert (= (and b!5098413 ((_ is Union!14009) (regTwo!28531 r!15189))) b!5098543))

(check-sat (not b!5098538) (not d!1649820) (not b!5098534) (not bm!355068) tp_is_empty!37283 (not b!5098471) (not b!5098539) (not d!1649818) (not b!5098525) (not b!5098513) (not b!5098530) (not b!5098526) (not b!5098537) (not b!5098542) (not b!5098535) (not b!5098527) (not b!5098533) (not b!5098444) (not b!5098531) (not b!5098541) (not bm!355069) (not b!5098529) (not d!1649816) (not b!5098543))
(check-sat)
