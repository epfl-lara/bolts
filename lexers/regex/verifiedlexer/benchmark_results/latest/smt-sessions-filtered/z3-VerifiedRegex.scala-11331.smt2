; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597980 () Bool)

(assert start!597980)

(declare-fun b!5840637 () Bool)

(declare-fun e!3582518 () Bool)

(declare-fun tp_is_empty!41071 () Bool)

(declare-fun tp!1615066 () Bool)

(assert (=> b!5840637 (= e!3582518 (and tp_is_empty!41071 tp!1615066))))

(declare-fun b!5840638 () Bool)

(declare-fun res!2460531 () Bool)

(declare-fun e!3582523 () Bool)

(assert (=> b!5840638 (=> res!2460531 e!3582523)))

(declare-datatypes ((C!32088 0))(
  ( (C!32089 (val!25746 Int)) )
))
(declare-datatypes ((Regex!15909 0))(
  ( (ElementMatch!15909 (c!1034845 C!32088)) (Concat!24754 (regOne!32330 Regex!15909) (regTwo!32330 Regex!15909)) (EmptyExpr!15909) (Star!15909 (reg!16238 Regex!15909)) (EmptyLang!15909) (Union!15909 (regOne!32331 Regex!15909) (regTwo!32331 Regex!15909)) )
))
(declare-datatypes ((List!64026 0))(
  ( (Nil!63902) (Cons!63902 (h!70350 Regex!15909) (t!377381 List!64026)) )
))
(declare-datatypes ((Context!10586 0))(
  ( (Context!10587 (exprs!5793 List!64026)) )
))
(declare-datatypes ((List!64027 0))(
  ( (Nil!63903) (Cons!63903 (h!70351 Context!10586) (t!377382 List!64027)) )
))
(declare-fun zl!343 () List!64027)

(declare-fun isEmpty!35760 (List!64027) Bool)

(assert (=> b!5840638 (= res!2460531 (not (isEmpty!35760 (t!377382 zl!343))))))

(declare-fun setRes!39572 () Bool)

(declare-fun e!3582519 () Bool)

(declare-fun setNonEmpty!39572 () Bool)

(declare-fun setElem!39572 () Context!10586)

(declare-fun tp!1615064 () Bool)

(declare-fun inv!83019 (Context!10586) Bool)

(assert (=> setNonEmpty!39572 (= setRes!39572 (and tp!1615064 (inv!83019 setElem!39572) e!3582519))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10586))

(declare-fun setRest!39572 () (InoxSet Context!10586))

(assert (=> setNonEmpty!39572 (= z!1189 ((_ map or) (store ((as const (Array Context!10586 Bool)) false) setElem!39572 true) setRest!39572))))

(declare-fun b!5840639 () Bool)

(declare-fun res!2460540 () Bool)

(declare-fun e!3582520 () Bool)

(assert (=> b!5840639 (=> (not res!2460540) (not e!3582520))))

(declare-fun r!7292 () Regex!15909)

(declare-fun unfocusZipper!1651 (List!64027) Regex!15909)

(assert (=> b!5840639 (= res!2460540 (= r!7292 (unfocusZipper!1651 zl!343)))))

(declare-fun setIsEmpty!39572 () Bool)

(assert (=> setIsEmpty!39572 setRes!39572))

(declare-fun b!5840640 () Bool)

(declare-fun e!3582522 () Bool)

(assert (=> b!5840640 (= e!3582523 e!3582522)))

(declare-fun res!2460539 () Bool)

(assert (=> b!5840640 (=> res!2460539 e!3582522)))

(declare-fun lt!2303748 () Bool)

(declare-datatypes ((List!64028 0))(
  ( (Nil!63904) (Cons!63904 (h!70352 C!32088) (t!377383 List!64028)) )
))
(declare-fun s!2326 () List!64028)

(declare-fun lt!2303750 () Bool)

(declare-fun lt!2303744 () Bool)

(get-info :version)

(assert (=> b!5840640 (= res!2460539 (or (not (= lt!2303744 (or lt!2303748 lt!2303750))) ((_ is Nil!63904) s!2326)))))

(declare-fun matchRSpec!3010 (Regex!15909 List!64028) Bool)

(assert (=> b!5840640 (= lt!2303750 (matchRSpec!3010 (regTwo!32331 r!7292) s!2326))))

(declare-fun matchR!8092 (Regex!15909 List!64028) Bool)

(assert (=> b!5840640 (= lt!2303750 (matchR!8092 (regTwo!32331 r!7292) s!2326))))

(declare-datatypes ((Unit!157089 0))(
  ( (Unit!157090) )
))
(declare-fun lt!2303745 () Unit!157089)

(declare-fun mainMatchTheorem!3010 (Regex!15909 List!64028) Unit!157089)

(assert (=> b!5840640 (= lt!2303745 (mainMatchTheorem!3010 (regTwo!32331 r!7292) s!2326))))

(assert (=> b!5840640 (= lt!2303748 (matchRSpec!3010 (regOne!32331 r!7292) s!2326))))

(assert (=> b!5840640 (= lt!2303748 (matchR!8092 (regOne!32331 r!7292) s!2326))))

(declare-fun lt!2303747 () Unit!157089)

(assert (=> b!5840640 (= lt!2303747 (mainMatchTheorem!3010 (regOne!32331 r!7292) s!2326))))

(declare-fun b!5840642 () Bool)

(declare-fun res!2460535 () Bool)

(assert (=> b!5840642 (=> res!2460535 e!3582523)))

(declare-fun generalisedConcat!1506 (List!64026) Regex!15909)

(assert (=> b!5840642 (= res!2460535 (not (= r!7292 (generalisedConcat!1506 (exprs!5793 (h!70351 zl!343))))))))

(declare-fun tp!1615070 () Bool)

(declare-fun e!3582521 () Bool)

(declare-fun b!5840643 () Bool)

(declare-fun e!3582517 () Bool)

(assert (=> b!5840643 (= e!3582517 (and (inv!83019 (h!70351 zl!343)) e!3582521 tp!1615070))))

(declare-fun b!5840644 () Bool)

(declare-fun res!2460538 () Bool)

(assert (=> b!5840644 (=> res!2460538 e!3582523)))

(assert (=> b!5840644 (= res!2460538 (not ((_ is Cons!63902) (exprs!5793 (h!70351 zl!343)))))))

(declare-fun b!5840645 () Bool)

(declare-fun tp!1615071 () Bool)

(assert (=> b!5840645 (= e!3582521 tp!1615071)))

(declare-fun b!5840646 () Bool)

(declare-fun res!2460533 () Bool)

(assert (=> b!5840646 (=> res!2460533 e!3582523)))

(assert (=> b!5840646 (= res!2460533 (or ((_ is EmptyExpr!15909) r!7292) ((_ is EmptyLang!15909) r!7292) ((_ is ElementMatch!15909) r!7292) (not ((_ is Union!15909) r!7292))))))

(declare-fun b!5840647 () Bool)

(assert (=> b!5840647 (= e!3582520 (not e!3582523))))

(declare-fun res!2460537 () Bool)

(assert (=> b!5840647 (=> res!2460537 e!3582523)))

(assert (=> b!5840647 (= res!2460537 (not ((_ is Cons!63903) zl!343)))))

(assert (=> b!5840647 (= lt!2303744 (matchRSpec!3010 r!7292 s!2326))))

(assert (=> b!5840647 (= lt!2303744 (matchR!8092 r!7292 s!2326))))

(declare-fun lt!2303746 () Unit!157089)

(assert (=> b!5840647 (= lt!2303746 (mainMatchTheorem!3010 r!7292 s!2326))))

(declare-fun b!5840648 () Bool)

(assert (=> b!5840648 (= e!3582522 (inv!83019 (Context!10587 Nil!63902)))))

(declare-fun lt!2303749 () (InoxSet Context!10586))

(declare-fun derivationStepZipperUp!1101 (Context!10586 C!32088) (InoxSet Context!10586))

(assert (=> b!5840648 (= lt!2303749 (derivationStepZipperUp!1101 (Context!10587 (Cons!63902 r!7292 Nil!63902)) (h!70352 s!2326)))))

(declare-fun b!5840649 () Bool)

(declare-fun res!2460534 () Bool)

(assert (=> b!5840649 (=> (not res!2460534) (not e!3582520))))

(declare-fun toList!9693 ((InoxSet Context!10586)) List!64027)

(assert (=> b!5840649 (= res!2460534 (= (toList!9693 z!1189) zl!343))))

(declare-fun b!5840650 () Bool)

(declare-fun e!3582516 () Bool)

(declare-fun tp!1615069 () Bool)

(declare-fun tp!1615067 () Bool)

(assert (=> b!5840650 (= e!3582516 (and tp!1615069 tp!1615067))))

(declare-fun b!5840651 () Bool)

(declare-fun tp!1615063 () Bool)

(declare-fun tp!1615065 () Bool)

(assert (=> b!5840651 (= e!3582516 (and tp!1615063 tp!1615065))))

(declare-fun b!5840652 () Bool)

(declare-fun res!2460532 () Bool)

(assert (=> b!5840652 (=> res!2460532 e!3582523)))

(declare-fun generalisedUnion!1753 (List!64026) Regex!15909)

(declare-fun unfocusZipperList!1330 (List!64027) List!64026)

(assert (=> b!5840652 (= res!2460532 (not (= r!7292 (generalisedUnion!1753 (unfocusZipperList!1330 zl!343)))))))

(declare-fun b!5840641 () Bool)

(declare-fun tp!1615072 () Bool)

(assert (=> b!5840641 (= e!3582519 tp!1615072)))

(declare-fun res!2460536 () Bool)

(assert (=> start!597980 (=> (not res!2460536) (not e!3582520))))

(declare-fun validRegex!7645 (Regex!15909) Bool)

(assert (=> start!597980 (= res!2460536 (validRegex!7645 r!7292))))

(assert (=> start!597980 e!3582520))

(assert (=> start!597980 e!3582516))

(declare-fun condSetEmpty!39572 () Bool)

(assert (=> start!597980 (= condSetEmpty!39572 (= z!1189 ((as const (Array Context!10586 Bool)) false)))))

(assert (=> start!597980 setRes!39572))

(assert (=> start!597980 e!3582517))

(assert (=> start!597980 e!3582518))

(declare-fun b!5840653 () Bool)

(declare-fun tp!1615068 () Bool)

(assert (=> b!5840653 (= e!3582516 tp!1615068)))

(declare-fun b!5840654 () Bool)

(assert (=> b!5840654 (= e!3582516 tp_is_empty!41071)))

(assert (= (and start!597980 res!2460536) b!5840649))

(assert (= (and b!5840649 res!2460534) b!5840639))

(assert (= (and b!5840639 res!2460540) b!5840647))

(assert (= (and b!5840647 (not res!2460537)) b!5840638))

(assert (= (and b!5840638 (not res!2460531)) b!5840642))

(assert (= (and b!5840642 (not res!2460535)) b!5840644))

(assert (= (and b!5840644 (not res!2460538)) b!5840652))

(assert (= (and b!5840652 (not res!2460532)) b!5840646))

(assert (= (and b!5840646 (not res!2460533)) b!5840640))

(assert (= (and b!5840640 (not res!2460539)) b!5840648))

(assert (= (and start!597980 ((_ is ElementMatch!15909) r!7292)) b!5840654))

(assert (= (and start!597980 ((_ is Concat!24754) r!7292)) b!5840651))

(assert (= (and start!597980 ((_ is Star!15909) r!7292)) b!5840653))

(assert (= (and start!597980 ((_ is Union!15909) r!7292)) b!5840650))

(assert (= (and start!597980 condSetEmpty!39572) setIsEmpty!39572))

(assert (= (and start!597980 (not condSetEmpty!39572)) setNonEmpty!39572))

(assert (= setNonEmpty!39572 b!5840641))

(assert (= b!5840643 b!5840645))

(assert (= (and start!597980 ((_ is Cons!63903) zl!343)) b!5840643))

(assert (= (and start!597980 ((_ is Cons!63904) s!2326)) b!5840637))

(declare-fun m!6765088 () Bool)

(assert (=> setNonEmpty!39572 m!6765088))

(declare-fun m!6765090 () Bool)

(assert (=> b!5840652 m!6765090))

(assert (=> b!5840652 m!6765090))

(declare-fun m!6765092 () Bool)

(assert (=> b!5840652 m!6765092))

(declare-fun m!6765094 () Bool)

(assert (=> b!5840640 m!6765094))

(declare-fun m!6765096 () Bool)

(assert (=> b!5840640 m!6765096))

(declare-fun m!6765098 () Bool)

(assert (=> b!5840640 m!6765098))

(declare-fun m!6765100 () Bool)

(assert (=> b!5840640 m!6765100))

(declare-fun m!6765102 () Bool)

(assert (=> b!5840640 m!6765102))

(declare-fun m!6765104 () Bool)

(assert (=> b!5840640 m!6765104))

(declare-fun m!6765106 () Bool)

(assert (=> b!5840643 m!6765106))

(declare-fun m!6765108 () Bool)

(assert (=> b!5840647 m!6765108))

(declare-fun m!6765110 () Bool)

(assert (=> b!5840647 m!6765110))

(declare-fun m!6765112 () Bool)

(assert (=> b!5840647 m!6765112))

(declare-fun m!6765114 () Bool)

(assert (=> b!5840648 m!6765114))

(declare-fun m!6765116 () Bool)

(assert (=> b!5840648 m!6765116))

(declare-fun m!6765118 () Bool)

(assert (=> b!5840638 m!6765118))

(declare-fun m!6765120 () Bool)

(assert (=> b!5840649 m!6765120))

(declare-fun m!6765122 () Bool)

(assert (=> b!5840639 m!6765122))

(declare-fun m!6765124 () Bool)

(assert (=> start!597980 m!6765124))

(declare-fun m!6765126 () Bool)

(assert (=> b!5840642 m!6765126))

(check-sat (not b!5840648) (not b!5840643) (not b!5840653) (not start!597980) (not b!5840652) (not setNonEmpty!39572) (not b!5840638) (not b!5840641) (not b!5840651) (not b!5840645) (not b!5840642) (not b!5840650) (not b!5840640) (not b!5840637) (not b!5840649) (not b!5840639) tp_is_empty!41071 (not b!5840647))
(check-sat)
(get-model)

(declare-fun bm!456180 () Bool)

(declare-fun call!456185 () Bool)

(declare-fun call!456187 () Bool)

(assert (=> bm!456180 (= call!456185 call!456187)))

(declare-fun b!5840673 () Bool)

(declare-fun e!3582539 () Bool)

(declare-fun call!456186 () Bool)

(assert (=> b!5840673 (= e!3582539 call!456186)))

(declare-fun b!5840674 () Bool)

(declare-fun e!3582541 () Bool)

(declare-fun e!3582544 () Bool)

(assert (=> b!5840674 (= e!3582541 e!3582544)))

(declare-fun res!2460551 () Bool)

(assert (=> b!5840674 (=> (not res!2460551) (not e!3582544))))

(assert (=> b!5840674 (= res!2460551 call!456185)))

(declare-fun b!5840675 () Bool)

(declare-fun e!3582542 () Bool)

(declare-fun e!3582540 () Bool)

(assert (=> b!5840675 (= e!3582542 e!3582540)))

(declare-fun c!1034850 () Bool)

(assert (=> b!5840675 (= c!1034850 ((_ is Union!15909) r!7292))))

(declare-fun b!5840676 () Bool)

(declare-fun e!3582538 () Bool)

(assert (=> b!5840676 (= e!3582538 e!3582542)))

(declare-fun c!1034851 () Bool)

(assert (=> b!5840676 (= c!1034851 ((_ is Star!15909) r!7292))))

(declare-fun b!5840677 () Bool)

(declare-fun e!3582543 () Bool)

(assert (=> b!5840677 (= e!3582543 call!456187)))

(declare-fun b!5840678 () Bool)

(declare-fun res!2460555 () Bool)

(assert (=> b!5840678 (=> (not res!2460555) (not e!3582539))))

(assert (=> b!5840678 (= res!2460555 call!456185)))

(assert (=> b!5840678 (= e!3582540 e!3582539)))

(declare-fun bm!456181 () Bool)

(assert (=> bm!456181 (= call!456186 (validRegex!7645 (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292))))))

(declare-fun b!5840680 () Bool)

(declare-fun res!2460553 () Bool)

(assert (=> b!5840680 (=> res!2460553 e!3582541)))

(assert (=> b!5840680 (= res!2460553 (not ((_ is Concat!24754) r!7292)))))

(assert (=> b!5840680 (= e!3582540 e!3582541)))

(declare-fun d!1835232 () Bool)

(declare-fun res!2460554 () Bool)

(assert (=> d!1835232 (=> res!2460554 e!3582538)))

(assert (=> d!1835232 (= res!2460554 ((_ is ElementMatch!15909) r!7292))))

(assert (=> d!1835232 (= (validRegex!7645 r!7292) e!3582538)))

(declare-fun b!5840679 () Bool)

(assert (=> b!5840679 (= e!3582542 e!3582543)))

(declare-fun res!2460552 () Bool)

(declare-fun nullable!5908 (Regex!15909) Bool)

(assert (=> b!5840679 (= res!2460552 (not (nullable!5908 (reg!16238 r!7292))))))

(assert (=> b!5840679 (=> (not res!2460552) (not e!3582543))))

(declare-fun bm!456182 () Bool)

(assert (=> bm!456182 (= call!456187 (validRegex!7645 (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292)))))))

(declare-fun b!5840681 () Bool)

(assert (=> b!5840681 (= e!3582544 call!456186)))

(assert (= (and d!1835232 (not res!2460554)) b!5840676))

(assert (= (and b!5840676 c!1034851) b!5840679))

(assert (= (and b!5840676 (not c!1034851)) b!5840675))

(assert (= (and b!5840679 res!2460552) b!5840677))

(assert (= (and b!5840675 c!1034850) b!5840678))

(assert (= (and b!5840675 (not c!1034850)) b!5840680))

(assert (= (and b!5840678 res!2460555) b!5840673))

(assert (= (and b!5840680 (not res!2460553)) b!5840674))

(assert (= (and b!5840674 res!2460551) b!5840681))

(assert (= (or b!5840673 b!5840681) bm!456181))

(assert (= (or b!5840678 b!5840674) bm!456180))

(assert (= (or b!5840677 bm!456180) bm!456182))

(declare-fun m!6765128 () Bool)

(assert (=> bm!456181 m!6765128))

(declare-fun m!6765130 () Bool)

(assert (=> b!5840679 m!6765130))

(declare-fun m!6765132 () Bool)

(assert (=> bm!456182 m!6765132))

(assert (=> start!597980 d!1835232))

(declare-fun b!5840721 () Bool)

(assert (=> b!5840721 true))

(assert (=> b!5840721 true))

(declare-fun bs!1376144 () Bool)

(declare-fun b!5840716 () Bool)

(assert (= bs!1376144 (and b!5840716 b!5840721)))

(declare-fun lambda!319512 () Int)

(declare-fun lambda!319511 () Int)

(assert (=> bs!1376144 (not (= lambda!319512 lambda!319511))))

(assert (=> b!5840716 true))

(assert (=> b!5840716 true))

(declare-fun bm!456187 () Bool)

(declare-fun call!456192 () Bool)

(declare-fun isEmpty!35761 (List!64028) Bool)

(assert (=> bm!456187 (= call!456192 (isEmpty!35761 s!2326))))

(declare-fun b!5840714 () Bool)

(declare-fun e!3582565 () Bool)

(declare-fun e!3582568 () Bool)

(assert (=> b!5840714 (= e!3582565 e!3582568)))

(declare-fun res!2460574 () Bool)

(assert (=> b!5840714 (= res!2460574 (not ((_ is EmptyLang!15909) (regTwo!32331 r!7292))))))

(assert (=> b!5840714 (=> (not res!2460574) (not e!3582568))))

(declare-fun b!5840715 () Bool)

(declare-fun e!3582564 () Bool)

(assert (=> b!5840715 (= e!3582564 (matchRSpec!3010 (regTwo!32331 (regTwo!32331 r!7292)) s!2326))))

(declare-fun e!3582566 () Bool)

(declare-fun call!456193 () Bool)

(assert (=> b!5840716 (= e!3582566 call!456193)))

(declare-fun d!1835234 () Bool)

(declare-fun c!1034862 () Bool)

(assert (=> d!1835234 (= c!1034862 ((_ is EmptyExpr!15909) (regTwo!32331 r!7292)))))

(assert (=> d!1835234 (= (matchRSpec!3010 (regTwo!32331 r!7292) s!2326) e!3582565)))

(declare-fun b!5840717 () Bool)

(declare-fun c!1034861 () Bool)

(assert (=> b!5840717 (= c!1034861 ((_ is Union!15909) (regTwo!32331 r!7292)))))

(declare-fun e!3582569 () Bool)

(declare-fun e!3582563 () Bool)

(assert (=> b!5840717 (= e!3582569 e!3582563)))

(declare-fun bm!456188 () Bool)

(declare-fun c!1034863 () Bool)

(declare-fun Exists!2980 (Int) Bool)

(assert (=> bm!456188 (= call!456193 (Exists!2980 (ite c!1034863 lambda!319511 lambda!319512)))))

(declare-fun b!5840718 () Bool)

(declare-fun res!2460573 () Bool)

(declare-fun e!3582567 () Bool)

(assert (=> b!5840718 (=> res!2460573 e!3582567)))

(assert (=> b!5840718 (= res!2460573 call!456192)))

(assert (=> b!5840718 (= e!3582566 e!3582567)))

(declare-fun b!5840719 () Bool)

(assert (=> b!5840719 (= e!3582569 (= s!2326 (Cons!63904 (c!1034845 (regTwo!32331 r!7292)) Nil!63904)))))

(declare-fun b!5840720 () Bool)

(assert (=> b!5840720 (= e!3582563 e!3582566)))

(assert (=> b!5840720 (= c!1034863 ((_ is Star!15909) (regTwo!32331 r!7292)))))

(assert (=> b!5840721 (= e!3582567 call!456193)))

(declare-fun b!5840722 () Bool)

(assert (=> b!5840722 (= e!3582565 call!456192)))

(declare-fun b!5840723 () Bool)

(declare-fun c!1034860 () Bool)

(assert (=> b!5840723 (= c!1034860 ((_ is ElementMatch!15909) (regTwo!32331 r!7292)))))

(assert (=> b!5840723 (= e!3582568 e!3582569)))

(declare-fun b!5840724 () Bool)

(assert (=> b!5840724 (= e!3582563 e!3582564)))

(declare-fun res!2460572 () Bool)

(assert (=> b!5840724 (= res!2460572 (matchRSpec!3010 (regOne!32331 (regTwo!32331 r!7292)) s!2326))))

(assert (=> b!5840724 (=> res!2460572 e!3582564)))

(assert (= (and d!1835234 c!1034862) b!5840722))

(assert (= (and d!1835234 (not c!1034862)) b!5840714))

(assert (= (and b!5840714 res!2460574) b!5840723))

(assert (= (and b!5840723 c!1034860) b!5840719))

(assert (= (and b!5840723 (not c!1034860)) b!5840717))

(assert (= (and b!5840717 c!1034861) b!5840724))

(assert (= (and b!5840717 (not c!1034861)) b!5840720))

(assert (= (and b!5840724 (not res!2460572)) b!5840715))

(assert (= (and b!5840720 c!1034863) b!5840718))

(assert (= (and b!5840720 (not c!1034863)) b!5840716))

(assert (= (and b!5840718 (not res!2460573)) b!5840721))

(assert (= (or b!5840721 b!5840716) bm!456188))

(assert (= (or b!5840722 b!5840718) bm!456187))

(declare-fun m!6765134 () Bool)

(assert (=> bm!456187 m!6765134))

(declare-fun m!6765136 () Bool)

(assert (=> b!5840715 m!6765136))

(declare-fun m!6765138 () Bool)

(assert (=> bm!456188 m!6765138))

(declare-fun m!6765140 () Bool)

(assert (=> b!5840724 m!6765140))

(assert (=> b!5840640 d!1835234))

(declare-fun d!1835236 () Bool)

(assert (=> d!1835236 (= (matchR!8092 (regOne!32331 r!7292) s!2326) (matchRSpec!3010 (regOne!32331 r!7292) s!2326))))

(declare-fun lt!2303753 () Unit!157089)

(declare-fun choose!44340 (Regex!15909 List!64028) Unit!157089)

(assert (=> d!1835236 (= lt!2303753 (choose!44340 (regOne!32331 r!7292) s!2326))))

(assert (=> d!1835236 (validRegex!7645 (regOne!32331 r!7292))))

(assert (=> d!1835236 (= (mainMatchTheorem!3010 (regOne!32331 r!7292) s!2326) lt!2303753)))

(declare-fun bs!1376145 () Bool)

(assert (= bs!1376145 d!1835236))

(assert (=> bs!1376145 m!6765104))

(assert (=> bs!1376145 m!6765100))

(declare-fun m!6765142 () Bool)

(assert (=> bs!1376145 m!6765142))

(declare-fun m!6765144 () Bool)

(assert (=> bs!1376145 m!6765144))

(assert (=> b!5840640 d!1835236))

(declare-fun b!5840757 () Bool)

(declare-fun e!3582586 () Bool)

(declare-fun e!3582585 () Bool)

(assert (=> b!5840757 (= e!3582586 e!3582585)))

(declare-fun c!1034872 () Bool)

(assert (=> b!5840757 (= c!1034872 ((_ is EmptyLang!15909) (regTwo!32331 r!7292)))))

(declare-fun b!5840758 () Bool)

(declare-fun e!3582589 () Bool)

(declare-fun head!12370 (List!64028) C!32088)

(assert (=> b!5840758 (= e!3582589 (= (head!12370 s!2326) (c!1034845 (regTwo!32331 r!7292))))))

(declare-fun b!5840759 () Bool)

(declare-fun lt!2303756 () Bool)

(assert (=> b!5840759 (= e!3582585 (not lt!2303756))))

(declare-fun b!5840760 () Bool)

(declare-fun res!2460592 () Bool)

(declare-fun e!3582587 () Bool)

(assert (=> b!5840760 (=> res!2460592 e!3582587)))

(assert (=> b!5840760 (= res!2460592 e!3582589)))

(declare-fun res!2460595 () Bool)

(assert (=> b!5840760 (=> (not res!2460595) (not e!3582589))))

(assert (=> b!5840760 (= res!2460595 lt!2303756)))

(declare-fun d!1835238 () Bool)

(assert (=> d!1835238 e!3582586))

(declare-fun c!1034870 () Bool)

(assert (=> d!1835238 (= c!1034870 ((_ is EmptyExpr!15909) (regTwo!32331 r!7292)))))

(declare-fun e!3582584 () Bool)

(assert (=> d!1835238 (= lt!2303756 e!3582584)))

(declare-fun c!1034871 () Bool)

(assert (=> d!1835238 (= c!1034871 (isEmpty!35761 s!2326))))

(assert (=> d!1835238 (validRegex!7645 (regTwo!32331 r!7292))))

(assert (=> d!1835238 (= (matchR!8092 (regTwo!32331 r!7292) s!2326) lt!2303756)))

(declare-fun b!5840761 () Bool)

(declare-fun e!3582590 () Bool)

(declare-fun e!3582588 () Bool)

(assert (=> b!5840761 (= e!3582590 e!3582588)))

(declare-fun res!2460596 () Bool)

(assert (=> b!5840761 (=> res!2460596 e!3582588)))

(declare-fun call!456196 () Bool)

(assert (=> b!5840761 (= res!2460596 call!456196)))

(declare-fun b!5840762 () Bool)

(declare-fun res!2460594 () Bool)

(assert (=> b!5840762 (=> (not res!2460594) (not e!3582589))))

(assert (=> b!5840762 (= res!2460594 (not call!456196))))

(declare-fun b!5840763 () Bool)

(assert (=> b!5840763 (= e!3582587 e!3582590)))

(declare-fun res!2460593 () Bool)

(assert (=> b!5840763 (=> (not res!2460593) (not e!3582590))))

(assert (=> b!5840763 (= res!2460593 (not lt!2303756))))

(declare-fun b!5840764 () Bool)

(declare-fun res!2460598 () Bool)

(assert (=> b!5840764 (=> res!2460598 e!3582587)))

(assert (=> b!5840764 (= res!2460598 (not ((_ is ElementMatch!15909) (regTwo!32331 r!7292))))))

(assert (=> b!5840764 (= e!3582585 e!3582587)))

(declare-fun bm!456191 () Bool)

(assert (=> bm!456191 (= call!456196 (isEmpty!35761 s!2326))))

(declare-fun b!5840765 () Bool)

(declare-fun res!2460597 () Bool)

(assert (=> b!5840765 (=> res!2460597 e!3582588)))

(declare-fun tail!11455 (List!64028) List!64028)

(assert (=> b!5840765 (= res!2460597 (not (isEmpty!35761 (tail!11455 s!2326))))))

(declare-fun b!5840766 () Bool)

(assert (=> b!5840766 (= e!3582584 (nullable!5908 (regTwo!32331 r!7292)))))

(declare-fun b!5840767 () Bool)

(declare-fun res!2460591 () Bool)

(assert (=> b!5840767 (=> (not res!2460591) (not e!3582589))))

(assert (=> b!5840767 (= res!2460591 (isEmpty!35761 (tail!11455 s!2326)))))

(declare-fun b!5840768 () Bool)

(assert (=> b!5840768 (= e!3582588 (not (= (head!12370 s!2326) (c!1034845 (regTwo!32331 r!7292)))))))

(declare-fun b!5840769 () Bool)

(declare-fun derivativeStep!4646 (Regex!15909 C!32088) Regex!15909)

(assert (=> b!5840769 (= e!3582584 (matchR!8092 (derivativeStep!4646 (regTwo!32331 r!7292) (head!12370 s!2326)) (tail!11455 s!2326)))))

(declare-fun b!5840770 () Bool)

(assert (=> b!5840770 (= e!3582586 (= lt!2303756 call!456196))))

(assert (= (and d!1835238 c!1034871) b!5840766))

(assert (= (and d!1835238 (not c!1034871)) b!5840769))

(assert (= (and d!1835238 c!1034870) b!5840770))

(assert (= (and d!1835238 (not c!1034870)) b!5840757))

(assert (= (and b!5840757 c!1034872) b!5840759))

(assert (= (and b!5840757 (not c!1034872)) b!5840764))

(assert (= (and b!5840764 (not res!2460598)) b!5840760))

(assert (= (and b!5840760 res!2460595) b!5840762))

(assert (= (and b!5840762 res!2460594) b!5840767))

(assert (= (and b!5840767 res!2460591) b!5840758))

(assert (= (and b!5840760 (not res!2460592)) b!5840763))

(assert (= (and b!5840763 res!2460593) b!5840761))

(assert (= (and b!5840761 (not res!2460596)) b!5840765))

(assert (= (and b!5840765 (not res!2460597)) b!5840768))

(assert (= (or b!5840770 b!5840761 b!5840762) bm!456191))

(declare-fun m!6765146 () Bool)

(assert (=> b!5840769 m!6765146))

(assert (=> b!5840769 m!6765146))

(declare-fun m!6765148 () Bool)

(assert (=> b!5840769 m!6765148))

(declare-fun m!6765150 () Bool)

(assert (=> b!5840769 m!6765150))

(assert (=> b!5840769 m!6765148))

(assert (=> b!5840769 m!6765150))

(declare-fun m!6765152 () Bool)

(assert (=> b!5840769 m!6765152))

(assert (=> bm!456191 m!6765134))

(assert (=> b!5840767 m!6765150))

(assert (=> b!5840767 m!6765150))

(declare-fun m!6765154 () Bool)

(assert (=> b!5840767 m!6765154))

(assert (=> b!5840765 m!6765150))

(assert (=> b!5840765 m!6765150))

(assert (=> b!5840765 m!6765154))

(assert (=> d!1835238 m!6765134))

(declare-fun m!6765156 () Bool)

(assert (=> d!1835238 m!6765156))

(assert (=> b!5840768 m!6765146))

(declare-fun m!6765158 () Bool)

(assert (=> b!5840766 m!6765158))

(assert (=> b!5840758 m!6765146))

(assert (=> b!5840640 d!1835238))

(declare-fun d!1835240 () Bool)

(assert (=> d!1835240 (= (matchR!8092 (regTwo!32331 r!7292) s!2326) (matchRSpec!3010 (regTwo!32331 r!7292) s!2326))))

(declare-fun lt!2303757 () Unit!157089)

(assert (=> d!1835240 (= lt!2303757 (choose!44340 (regTwo!32331 r!7292) s!2326))))

(assert (=> d!1835240 (validRegex!7645 (regTwo!32331 r!7292))))

(assert (=> d!1835240 (= (mainMatchTheorem!3010 (regTwo!32331 r!7292) s!2326) lt!2303757)))

(declare-fun bs!1376146 () Bool)

(assert (= bs!1376146 d!1835240))

(assert (=> bs!1376146 m!6765098))

(assert (=> bs!1376146 m!6765094))

(declare-fun m!6765160 () Bool)

(assert (=> bs!1376146 m!6765160))

(assert (=> bs!1376146 m!6765156))

(assert (=> b!5840640 d!1835240))

(declare-fun bs!1376147 () Bool)

(declare-fun b!5840778 () Bool)

(assert (= bs!1376147 (and b!5840778 b!5840721)))

(declare-fun lambda!319513 () Int)

(assert (=> bs!1376147 (= (and (= (reg!16238 (regOne!32331 r!7292)) (reg!16238 (regTwo!32331 r!7292))) (= (regOne!32331 r!7292) (regTwo!32331 r!7292))) (= lambda!319513 lambda!319511))))

(declare-fun bs!1376148 () Bool)

(assert (= bs!1376148 (and b!5840778 b!5840716)))

(assert (=> bs!1376148 (not (= lambda!319513 lambda!319512))))

(assert (=> b!5840778 true))

(assert (=> b!5840778 true))

(declare-fun bs!1376149 () Bool)

(declare-fun b!5840773 () Bool)

(assert (= bs!1376149 (and b!5840773 b!5840721)))

(declare-fun lambda!319514 () Int)

(assert (=> bs!1376149 (not (= lambda!319514 lambda!319511))))

(declare-fun bs!1376150 () Bool)

(assert (= bs!1376150 (and b!5840773 b!5840716)))

(assert (=> bs!1376150 (= (and (= (regOne!32330 (regOne!32331 r!7292)) (regOne!32330 (regTwo!32331 r!7292))) (= (regTwo!32330 (regOne!32331 r!7292)) (regTwo!32330 (regTwo!32331 r!7292)))) (= lambda!319514 lambda!319512))))

(declare-fun bs!1376151 () Bool)

(assert (= bs!1376151 (and b!5840773 b!5840778)))

(assert (=> bs!1376151 (not (= lambda!319514 lambda!319513))))

(assert (=> b!5840773 true))

(assert (=> b!5840773 true))

(declare-fun bm!456192 () Bool)

(declare-fun call!456197 () Bool)

(assert (=> bm!456192 (= call!456197 (isEmpty!35761 s!2326))))

(declare-fun b!5840771 () Bool)

(declare-fun e!3582593 () Bool)

(declare-fun e!3582596 () Bool)

(assert (=> b!5840771 (= e!3582593 e!3582596)))

(declare-fun res!2460601 () Bool)

(assert (=> b!5840771 (= res!2460601 (not ((_ is EmptyLang!15909) (regOne!32331 r!7292))))))

(assert (=> b!5840771 (=> (not res!2460601) (not e!3582596))))

(declare-fun b!5840772 () Bool)

(declare-fun e!3582592 () Bool)

(assert (=> b!5840772 (= e!3582592 (matchRSpec!3010 (regTwo!32331 (regOne!32331 r!7292)) s!2326))))

(declare-fun e!3582594 () Bool)

(declare-fun call!456198 () Bool)

(assert (=> b!5840773 (= e!3582594 call!456198)))

(declare-fun d!1835242 () Bool)

(declare-fun c!1034875 () Bool)

(assert (=> d!1835242 (= c!1034875 ((_ is EmptyExpr!15909) (regOne!32331 r!7292)))))

(assert (=> d!1835242 (= (matchRSpec!3010 (regOne!32331 r!7292) s!2326) e!3582593)))

(declare-fun b!5840774 () Bool)

(declare-fun c!1034874 () Bool)

(assert (=> b!5840774 (= c!1034874 ((_ is Union!15909) (regOne!32331 r!7292)))))

(declare-fun e!3582597 () Bool)

(declare-fun e!3582591 () Bool)

(assert (=> b!5840774 (= e!3582597 e!3582591)))

(declare-fun c!1034876 () Bool)

(declare-fun bm!456193 () Bool)

(assert (=> bm!456193 (= call!456198 (Exists!2980 (ite c!1034876 lambda!319513 lambda!319514)))))

(declare-fun b!5840775 () Bool)

(declare-fun res!2460600 () Bool)

(declare-fun e!3582595 () Bool)

(assert (=> b!5840775 (=> res!2460600 e!3582595)))

(assert (=> b!5840775 (= res!2460600 call!456197)))

(assert (=> b!5840775 (= e!3582594 e!3582595)))

(declare-fun b!5840776 () Bool)

(assert (=> b!5840776 (= e!3582597 (= s!2326 (Cons!63904 (c!1034845 (regOne!32331 r!7292)) Nil!63904)))))

(declare-fun b!5840777 () Bool)

(assert (=> b!5840777 (= e!3582591 e!3582594)))

(assert (=> b!5840777 (= c!1034876 ((_ is Star!15909) (regOne!32331 r!7292)))))

(assert (=> b!5840778 (= e!3582595 call!456198)))

(declare-fun b!5840779 () Bool)

(assert (=> b!5840779 (= e!3582593 call!456197)))

(declare-fun b!5840780 () Bool)

(declare-fun c!1034873 () Bool)

(assert (=> b!5840780 (= c!1034873 ((_ is ElementMatch!15909) (regOne!32331 r!7292)))))

(assert (=> b!5840780 (= e!3582596 e!3582597)))

(declare-fun b!5840781 () Bool)

(assert (=> b!5840781 (= e!3582591 e!3582592)))

(declare-fun res!2460599 () Bool)

(assert (=> b!5840781 (= res!2460599 (matchRSpec!3010 (regOne!32331 (regOne!32331 r!7292)) s!2326))))

(assert (=> b!5840781 (=> res!2460599 e!3582592)))

(assert (= (and d!1835242 c!1034875) b!5840779))

(assert (= (and d!1835242 (not c!1034875)) b!5840771))

(assert (= (and b!5840771 res!2460601) b!5840780))

(assert (= (and b!5840780 c!1034873) b!5840776))

(assert (= (and b!5840780 (not c!1034873)) b!5840774))

(assert (= (and b!5840774 c!1034874) b!5840781))

(assert (= (and b!5840774 (not c!1034874)) b!5840777))

(assert (= (and b!5840781 (not res!2460599)) b!5840772))

(assert (= (and b!5840777 c!1034876) b!5840775))

(assert (= (and b!5840777 (not c!1034876)) b!5840773))

(assert (= (and b!5840775 (not res!2460600)) b!5840778))

(assert (= (or b!5840778 b!5840773) bm!456193))

(assert (= (or b!5840779 b!5840775) bm!456192))

(assert (=> bm!456192 m!6765134))

(declare-fun m!6765162 () Bool)

(assert (=> b!5840772 m!6765162))

(declare-fun m!6765164 () Bool)

(assert (=> bm!456193 m!6765164))

(declare-fun m!6765166 () Bool)

(assert (=> b!5840781 m!6765166))

(assert (=> b!5840640 d!1835242))

(declare-fun b!5840782 () Bool)

(declare-fun e!3582600 () Bool)

(declare-fun e!3582599 () Bool)

(assert (=> b!5840782 (= e!3582600 e!3582599)))

(declare-fun c!1034879 () Bool)

(assert (=> b!5840782 (= c!1034879 ((_ is EmptyLang!15909) (regOne!32331 r!7292)))))

(declare-fun b!5840783 () Bool)

(declare-fun e!3582603 () Bool)

(assert (=> b!5840783 (= e!3582603 (= (head!12370 s!2326) (c!1034845 (regOne!32331 r!7292))))))

(declare-fun b!5840784 () Bool)

(declare-fun lt!2303758 () Bool)

(assert (=> b!5840784 (= e!3582599 (not lt!2303758))))

(declare-fun b!5840785 () Bool)

(declare-fun res!2460603 () Bool)

(declare-fun e!3582601 () Bool)

(assert (=> b!5840785 (=> res!2460603 e!3582601)))

(assert (=> b!5840785 (= res!2460603 e!3582603)))

(declare-fun res!2460606 () Bool)

(assert (=> b!5840785 (=> (not res!2460606) (not e!3582603))))

(assert (=> b!5840785 (= res!2460606 lt!2303758)))

(declare-fun d!1835244 () Bool)

(assert (=> d!1835244 e!3582600))

(declare-fun c!1034877 () Bool)

(assert (=> d!1835244 (= c!1034877 ((_ is EmptyExpr!15909) (regOne!32331 r!7292)))))

(declare-fun e!3582598 () Bool)

(assert (=> d!1835244 (= lt!2303758 e!3582598)))

(declare-fun c!1034878 () Bool)

(assert (=> d!1835244 (= c!1034878 (isEmpty!35761 s!2326))))

(assert (=> d!1835244 (validRegex!7645 (regOne!32331 r!7292))))

(assert (=> d!1835244 (= (matchR!8092 (regOne!32331 r!7292) s!2326) lt!2303758)))

(declare-fun b!5840786 () Bool)

(declare-fun e!3582604 () Bool)

(declare-fun e!3582602 () Bool)

(assert (=> b!5840786 (= e!3582604 e!3582602)))

(declare-fun res!2460607 () Bool)

(assert (=> b!5840786 (=> res!2460607 e!3582602)))

(declare-fun call!456199 () Bool)

(assert (=> b!5840786 (= res!2460607 call!456199)))

(declare-fun b!5840787 () Bool)

(declare-fun res!2460605 () Bool)

(assert (=> b!5840787 (=> (not res!2460605) (not e!3582603))))

(assert (=> b!5840787 (= res!2460605 (not call!456199))))

(declare-fun b!5840788 () Bool)

(assert (=> b!5840788 (= e!3582601 e!3582604)))

(declare-fun res!2460604 () Bool)

(assert (=> b!5840788 (=> (not res!2460604) (not e!3582604))))

(assert (=> b!5840788 (= res!2460604 (not lt!2303758))))

(declare-fun b!5840789 () Bool)

(declare-fun res!2460609 () Bool)

(assert (=> b!5840789 (=> res!2460609 e!3582601)))

(assert (=> b!5840789 (= res!2460609 (not ((_ is ElementMatch!15909) (regOne!32331 r!7292))))))

(assert (=> b!5840789 (= e!3582599 e!3582601)))

(declare-fun bm!456194 () Bool)

(assert (=> bm!456194 (= call!456199 (isEmpty!35761 s!2326))))

(declare-fun b!5840790 () Bool)

(declare-fun res!2460608 () Bool)

(assert (=> b!5840790 (=> res!2460608 e!3582602)))

(assert (=> b!5840790 (= res!2460608 (not (isEmpty!35761 (tail!11455 s!2326))))))

(declare-fun b!5840791 () Bool)

(assert (=> b!5840791 (= e!3582598 (nullable!5908 (regOne!32331 r!7292)))))

(declare-fun b!5840792 () Bool)

(declare-fun res!2460602 () Bool)

(assert (=> b!5840792 (=> (not res!2460602) (not e!3582603))))

(assert (=> b!5840792 (= res!2460602 (isEmpty!35761 (tail!11455 s!2326)))))

(declare-fun b!5840793 () Bool)

(assert (=> b!5840793 (= e!3582602 (not (= (head!12370 s!2326) (c!1034845 (regOne!32331 r!7292)))))))

(declare-fun b!5840794 () Bool)

(assert (=> b!5840794 (= e!3582598 (matchR!8092 (derivativeStep!4646 (regOne!32331 r!7292) (head!12370 s!2326)) (tail!11455 s!2326)))))

(declare-fun b!5840795 () Bool)

(assert (=> b!5840795 (= e!3582600 (= lt!2303758 call!456199))))

(assert (= (and d!1835244 c!1034878) b!5840791))

(assert (= (and d!1835244 (not c!1034878)) b!5840794))

(assert (= (and d!1835244 c!1034877) b!5840795))

(assert (= (and d!1835244 (not c!1034877)) b!5840782))

(assert (= (and b!5840782 c!1034879) b!5840784))

(assert (= (and b!5840782 (not c!1034879)) b!5840789))

(assert (= (and b!5840789 (not res!2460609)) b!5840785))

(assert (= (and b!5840785 res!2460606) b!5840787))

(assert (= (and b!5840787 res!2460605) b!5840792))

(assert (= (and b!5840792 res!2460602) b!5840783))

(assert (= (and b!5840785 (not res!2460603)) b!5840788))

(assert (= (and b!5840788 res!2460604) b!5840786))

(assert (= (and b!5840786 (not res!2460607)) b!5840790))

(assert (= (and b!5840790 (not res!2460608)) b!5840793))

(assert (= (or b!5840795 b!5840786 b!5840787) bm!456194))

(assert (=> b!5840794 m!6765146))

(assert (=> b!5840794 m!6765146))

(declare-fun m!6765168 () Bool)

(assert (=> b!5840794 m!6765168))

(assert (=> b!5840794 m!6765150))

(assert (=> b!5840794 m!6765168))

(assert (=> b!5840794 m!6765150))

(declare-fun m!6765170 () Bool)

(assert (=> b!5840794 m!6765170))

(assert (=> bm!456194 m!6765134))

(assert (=> b!5840792 m!6765150))

(assert (=> b!5840792 m!6765150))

(assert (=> b!5840792 m!6765154))

(assert (=> b!5840790 m!6765150))

(assert (=> b!5840790 m!6765150))

(assert (=> b!5840790 m!6765154))

(assert (=> d!1835244 m!6765134))

(assert (=> d!1835244 m!6765144))

(assert (=> b!5840793 m!6765146))

(declare-fun m!6765172 () Bool)

(assert (=> b!5840791 m!6765172))

(assert (=> b!5840783 m!6765146))

(assert (=> b!5840640 d!1835244))

(declare-fun d!1835246 () Bool)

(declare-fun e!3582607 () Bool)

(assert (=> d!1835246 e!3582607))

(declare-fun res!2460612 () Bool)

(assert (=> d!1835246 (=> (not res!2460612) (not e!3582607))))

(declare-fun lt!2303761 () List!64027)

(declare-fun noDuplicate!1773 (List!64027) Bool)

(assert (=> d!1835246 (= res!2460612 (noDuplicate!1773 lt!2303761))))

(declare-fun choose!44341 ((InoxSet Context!10586)) List!64027)

(assert (=> d!1835246 (= lt!2303761 (choose!44341 z!1189))))

(assert (=> d!1835246 (= (toList!9693 z!1189) lt!2303761)))

(declare-fun b!5840798 () Bool)

(declare-fun content!11738 (List!64027) (InoxSet Context!10586))

(assert (=> b!5840798 (= e!3582607 (= (content!11738 lt!2303761) z!1189))))

(assert (= (and d!1835246 res!2460612) b!5840798))

(declare-fun m!6765174 () Bool)

(assert (=> d!1835246 m!6765174))

(declare-fun m!6765176 () Bool)

(assert (=> d!1835246 m!6765176))

(declare-fun m!6765178 () Bool)

(assert (=> b!5840798 m!6765178))

(assert (=> b!5840649 d!1835246))

(declare-fun d!1835248 () Bool)

(declare-fun lt!2303764 () Regex!15909)

(assert (=> d!1835248 (validRegex!7645 lt!2303764)))

(assert (=> d!1835248 (= lt!2303764 (generalisedUnion!1753 (unfocusZipperList!1330 zl!343)))))

(assert (=> d!1835248 (= (unfocusZipper!1651 zl!343) lt!2303764)))

(declare-fun bs!1376152 () Bool)

(assert (= bs!1376152 d!1835248))

(declare-fun m!6765180 () Bool)

(assert (=> bs!1376152 m!6765180))

(assert (=> bs!1376152 m!6765090))

(assert (=> bs!1376152 m!6765090))

(assert (=> bs!1376152 m!6765092))

(assert (=> b!5840639 d!1835248))

(declare-fun d!1835250 () Bool)

(declare-fun lambda!319517 () Int)

(declare-fun forall!14996 (List!64026 Int) Bool)

(assert (=> d!1835250 (= (inv!83019 (h!70351 zl!343)) (forall!14996 (exprs!5793 (h!70351 zl!343)) lambda!319517))))

(declare-fun bs!1376153 () Bool)

(assert (= bs!1376153 d!1835250))

(declare-fun m!6765182 () Bool)

(assert (=> bs!1376153 m!6765182))

(assert (=> b!5840643 d!1835250))

(declare-fun bs!1376154 () Bool)

(declare-fun d!1835252 () Bool)

(assert (= bs!1376154 (and d!1835252 d!1835250)))

(declare-fun lambda!319518 () Int)

(assert (=> bs!1376154 (= lambda!319518 lambda!319517)))

(assert (=> d!1835252 (= (inv!83019 (Context!10587 Nil!63902)) (forall!14996 (exprs!5793 (Context!10587 Nil!63902)) lambda!319518))))

(declare-fun bs!1376155 () Bool)

(assert (= bs!1376155 d!1835252))

(declare-fun m!6765184 () Bool)

(assert (=> bs!1376155 m!6765184))

(assert (=> b!5840648 d!1835252))

(declare-fun b!5840809 () Bool)

(declare-fun e!3582614 () (InoxSet Context!10586))

(assert (=> b!5840809 (= e!3582614 ((as const (Array Context!10586 Bool)) false))))

(declare-fun call!456202 () (InoxSet Context!10586))

(declare-fun e!3582615 () (InoxSet Context!10586))

(declare-fun b!5840810 () Bool)

(assert (=> b!5840810 (= e!3582615 ((_ map or) call!456202 (derivationStepZipperUp!1101 (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (h!70352 s!2326))))))

(declare-fun b!5840811 () Bool)

(declare-fun e!3582616 () Bool)

(assert (=> b!5840811 (= e!3582616 (nullable!5908 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))))))

(declare-fun b!5840812 () Bool)

(assert (=> b!5840812 (= e!3582615 e!3582614)))

(declare-fun c!1034885 () Bool)

(assert (=> b!5840812 (= c!1034885 ((_ is Cons!63902) (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))))))

(declare-fun b!5840813 () Bool)

(assert (=> b!5840813 (= e!3582614 call!456202)))

(declare-fun d!1835254 () Bool)

(declare-fun c!1034884 () Bool)

(assert (=> d!1835254 (= c!1034884 e!3582616)))

(declare-fun res!2460615 () Bool)

(assert (=> d!1835254 (=> (not res!2460615) (not e!3582616))))

(assert (=> d!1835254 (= res!2460615 ((_ is Cons!63902) (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))))))

(assert (=> d!1835254 (= (derivationStepZipperUp!1101 (Context!10587 (Cons!63902 r!7292 Nil!63902)) (h!70352 s!2326)) e!3582615)))

(declare-fun bm!456197 () Bool)

(declare-fun derivationStepZipperDown!1174 (Regex!15909 Context!10586 C!32088) (InoxSet Context!10586))

(assert (=> bm!456197 (= call!456202 (derivationStepZipperDown!1174 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))) (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (h!70352 s!2326)))))

(assert (= (and d!1835254 res!2460615) b!5840811))

(assert (= (and d!1835254 c!1034884) b!5840810))

(assert (= (and d!1835254 (not c!1034884)) b!5840812))

(assert (= (and b!5840812 c!1034885) b!5840813))

(assert (= (and b!5840812 (not c!1034885)) b!5840809))

(assert (= (or b!5840810 b!5840813) bm!456197))

(declare-fun m!6765186 () Bool)

(assert (=> b!5840810 m!6765186))

(declare-fun m!6765188 () Bool)

(assert (=> b!5840811 m!6765188))

(declare-fun m!6765190 () Bool)

(assert (=> bm!456197 m!6765190))

(assert (=> b!5840648 d!1835254))

(declare-fun bs!1376156 () Bool)

(declare-fun d!1835256 () Bool)

(assert (= bs!1376156 (and d!1835256 d!1835250)))

(declare-fun lambda!319521 () Int)

(assert (=> bs!1376156 (= lambda!319521 lambda!319517)))

(declare-fun bs!1376157 () Bool)

(assert (= bs!1376157 (and d!1835256 d!1835252)))

(assert (=> bs!1376157 (= lambda!319521 lambda!319518)))

(assert (=> d!1835256 (= (inv!83019 setElem!39572) (forall!14996 (exprs!5793 setElem!39572) lambda!319521))))

(declare-fun bs!1376158 () Bool)

(assert (= bs!1376158 d!1835256))

(declare-fun m!6765192 () Bool)

(assert (=> bs!1376158 m!6765192))

(assert (=> setNonEmpty!39572 d!1835256))

(declare-fun bs!1376159 () Bool)

(declare-fun d!1835258 () Bool)

(assert (= bs!1376159 (and d!1835258 d!1835250)))

(declare-fun lambda!319525 () Int)

(assert (=> bs!1376159 (= lambda!319525 lambda!319517)))

(declare-fun bs!1376160 () Bool)

(assert (= bs!1376160 (and d!1835258 d!1835252)))

(assert (=> bs!1376160 (= lambda!319525 lambda!319518)))

(declare-fun bs!1376161 () Bool)

(assert (= bs!1376161 (and d!1835258 d!1835256)))

(assert (=> bs!1376161 (= lambda!319525 lambda!319521)))

(declare-fun b!5840864 () Bool)

(declare-fun e!3582650 () Regex!15909)

(assert (=> b!5840864 (= e!3582650 (h!70350 (exprs!5793 (h!70351 zl!343))))))

(declare-fun b!5840865 () Bool)

(declare-fun e!3582647 () Regex!15909)

(assert (=> b!5840865 (= e!3582650 e!3582647)))

(declare-fun c!1034907 () Bool)

(assert (=> b!5840865 (= c!1034907 ((_ is Cons!63902) (exprs!5793 (h!70351 zl!343))))))

(declare-fun b!5840866 () Bool)

(assert (=> b!5840866 (= e!3582647 (Concat!24754 (h!70350 (exprs!5793 (h!70351 zl!343))) (generalisedConcat!1506 (t!377381 (exprs!5793 (h!70351 zl!343))))))))

(declare-fun b!5840867 () Bool)

(assert (=> b!5840867 (= e!3582647 EmptyExpr!15909)))

(declare-fun b!5840868 () Bool)

(declare-fun e!3582652 () Bool)

(declare-fun isEmpty!35763 (List!64026) Bool)

(assert (=> b!5840868 (= e!3582652 (isEmpty!35763 (t!377381 (exprs!5793 (h!70351 zl!343)))))))

(declare-fun b!5840869 () Bool)

(declare-fun e!3582649 () Bool)

(declare-fun lt!2303770 () Regex!15909)

(declare-fun isConcat!867 (Regex!15909) Bool)

(assert (=> b!5840869 (= e!3582649 (isConcat!867 lt!2303770))))

(declare-fun b!5840870 () Bool)

(declare-fun e!3582648 () Bool)

(declare-fun isEmptyExpr!1344 (Regex!15909) Bool)

(assert (=> b!5840870 (= e!3582648 (isEmptyExpr!1344 lt!2303770))))

(declare-fun b!5840872 () Bool)

(declare-fun head!12372 (List!64026) Regex!15909)

(assert (=> b!5840872 (= e!3582649 (= lt!2303770 (head!12372 (exprs!5793 (h!70351 zl!343)))))))

(declare-fun b!5840873 () Bool)

(assert (=> b!5840873 (= e!3582648 e!3582649)))

(declare-fun c!1034909 () Bool)

(declare-fun tail!11457 (List!64026) List!64026)

(assert (=> b!5840873 (= c!1034909 (isEmpty!35763 (tail!11457 (exprs!5793 (h!70351 zl!343)))))))

(declare-fun b!5840871 () Bool)

(declare-fun e!3582651 () Bool)

(assert (=> b!5840871 (= e!3582651 e!3582648)))

(declare-fun c!1034908 () Bool)

(assert (=> b!5840871 (= c!1034908 (isEmpty!35763 (exprs!5793 (h!70351 zl!343))))))

(assert (=> d!1835258 e!3582651))

(declare-fun res!2460627 () Bool)

(assert (=> d!1835258 (=> (not res!2460627) (not e!3582651))))

(assert (=> d!1835258 (= res!2460627 (validRegex!7645 lt!2303770))))

(assert (=> d!1835258 (= lt!2303770 e!3582650)))

(declare-fun c!1034906 () Bool)

(assert (=> d!1835258 (= c!1034906 e!3582652)))

(declare-fun res!2460626 () Bool)

(assert (=> d!1835258 (=> (not res!2460626) (not e!3582652))))

(assert (=> d!1835258 (= res!2460626 ((_ is Cons!63902) (exprs!5793 (h!70351 zl!343))))))

(assert (=> d!1835258 (forall!14996 (exprs!5793 (h!70351 zl!343)) lambda!319525)))

(assert (=> d!1835258 (= (generalisedConcat!1506 (exprs!5793 (h!70351 zl!343))) lt!2303770)))

(assert (= (and d!1835258 res!2460626) b!5840868))

(assert (= (and d!1835258 c!1034906) b!5840864))

(assert (= (and d!1835258 (not c!1034906)) b!5840865))

(assert (= (and b!5840865 c!1034907) b!5840866))

(assert (= (and b!5840865 (not c!1034907)) b!5840867))

(assert (= (and d!1835258 res!2460627) b!5840871))

(assert (= (and b!5840871 c!1034908) b!5840870))

(assert (= (and b!5840871 (not c!1034908)) b!5840873))

(assert (= (and b!5840873 c!1034909) b!5840872))

(assert (= (and b!5840873 (not c!1034909)) b!5840869))

(declare-fun m!6765214 () Bool)

(assert (=> b!5840870 m!6765214))

(declare-fun m!6765216 () Bool)

(assert (=> b!5840869 m!6765216))

(declare-fun m!6765218 () Bool)

(assert (=> d!1835258 m!6765218))

(declare-fun m!6765220 () Bool)

(assert (=> d!1835258 m!6765220))

(declare-fun m!6765222 () Bool)

(assert (=> b!5840868 m!6765222))

(declare-fun m!6765224 () Bool)

(assert (=> b!5840871 m!6765224))

(declare-fun m!6765226 () Bool)

(assert (=> b!5840872 m!6765226))

(declare-fun m!6765228 () Bool)

(assert (=> b!5840866 m!6765228))

(declare-fun m!6765230 () Bool)

(assert (=> b!5840873 m!6765230))

(assert (=> b!5840873 m!6765230))

(declare-fun m!6765232 () Bool)

(assert (=> b!5840873 m!6765232))

(assert (=> b!5840642 d!1835258))

(declare-fun bs!1376162 () Bool)

(declare-fun b!5840881 () Bool)

(assert (= bs!1376162 (and b!5840881 b!5840721)))

(declare-fun lambda!319528 () Int)

(assert (=> bs!1376162 (= (and (= (reg!16238 r!7292) (reg!16238 (regTwo!32331 r!7292))) (= r!7292 (regTwo!32331 r!7292))) (= lambda!319528 lambda!319511))))

(declare-fun bs!1376163 () Bool)

(assert (= bs!1376163 (and b!5840881 b!5840716)))

(assert (=> bs!1376163 (not (= lambda!319528 lambda!319512))))

(declare-fun bs!1376164 () Bool)

(assert (= bs!1376164 (and b!5840881 b!5840778)))

(assert (=> bs!1376164 (= (and (= (reg!16238 r!7292) (reg!16238 (regOne!32331 r!7292))) (= r!7292 (regOne!32331 r!7292))) (= lambda!319528 lambda!319513))))

(declare-fun bs!1376165 () Bool)

(assert (= bs!1376165 (and b!5840881 b!5840773)))

(assert (=> bs!1376165 (not (= lambda!319528 lambda!319514))))

(assert (=> b!5840881 true))

(assert (=> b!5840881 true))

(declare-fun bs!1376166 () Bool)

(declare-fun b!5840876 () Bool)

(assert (= bs!1376166 (and b!5840876 b!5840881)))

(declare-fun lambda!319529 () Int)

(assert (=> bs!1376166 (not (= lambda!319529 lambda!319528))))

(declare-fun bs!1376167 () Bool)

(assert (= bs!1376167 (and b!5840876 b!5840716)))

(assert (=> bs!1376167 (= (and (= (regOne!32330 r!7292) (regOne!32330 (regTwo!32331 r!7292))) (= (regTwo!32330 r!7292) (regTwo!32330 (regTwo!32331 r!7292)))) (= lambda!319529 lambda!319512))))

(declare-fun bs!1376168 () Bool)

(assert (= bs!1376168 (and b!5840876 b!5840721)))

(assert (=> bs!1376168 (not (= lambda!319529 lambda!319511))))

(declare-fun bs!1376169 () Bool)

(assert (= bs!1376169 (and b!5840876 b!5840778)))

(assert (=> bs!1376169 (not (= lambda!319529 lambda!319513))))

(declare-fun bs!1376170 () Bool)

(assert (= bs!1376170 (and b!5840876 b!5840773)))

(assert (=> bs!1376170 (= (and (= (regOne!32330 r!7292) (regOne!32330 (regOne!32331 r!7292))) (= (regTwo!32330 r!7292) (regTwo!32330 (regOne!32331 r!7292)))) (= lambda!319529 lambda!319514))))

(assert (=> b!5840876 true))

(assert (=> b!5840876 true))

(declare-fun bm!456198 () Bool)

(declare-fun call!456203 () Bool)

(assert (=> bm!456198 (= call!456203 (isEmpty!35761 s!2326))))

(declare-fun b!5840874 () Bool)

(declare-fun e!3582655 () Bool)

(declare-fun e!3582658 () Bool)

(assert (=> b!5840874 (= e!3582655 e!3582658)))

(declare-fun res!2460630 () Bool)

(assert (=> b!5840874 (= res!2460630 (not ((_ is EmptyLang!15909) r!7292)))))

(assert (=> b!5840874 (=> (not res!2460630) (not e!3582658))))

(declare-fun b!5840875 () Bool)

(declare-fun e!3582654 () Bool)

(assert (=> b!5840875 (= e!3582654 (matchRSpec!3010 (regTwo!32331 r!7292) s!2326))))

(declare-fun e!3582656 () Bool)

(declare-fun call!456204 () Bool)

(assert (=> b!5840876 (= e!3582656 call!456204)))

(declare-fun d!1835262 () Bool)

(declare-fun c!1034912 () Bool)

(assert (=> d!1835262 (= c!1034912 ((_ is EmptyExpr!15909) r!7292))))

(assert (=> d!1835262 (= (matchRSpec!3010 r!7292 s!2326) e!3582655)))

(declare-fun b!5840877 () Bool)

(declare-fun c!1034911 () Bool)

(assert (=> b!5840877 (= c!1034911 ((_ is Union!15909) r!7292))))

(declare-fun e!3582659 () Bool)

(declare-fun e!3582653 () Bool)

(assert (=> b!5840877 (= e!3582659 e!3582653)))

(declare-fun c!1034913 () Bool)

(declare-fun bm!456199 () Bool)

(assert (=> bm!456199 (= call!456204 (Exists!2980 (ite c!1034913 lambda!319528 lambda!319529)))))

(declare-fun b!5840878 () Bool)

(declare-fun res!2460629 () Bool)

(declare-fun e!3582657 () Bool)

(assert (=> b!5840878 (=> res!2460629 e!3582657)))

(assert (=> b!5840878 (= res!2460629 call!456203)))

(assert (=> b!5840878 (= e!3582656 e!3582657)))

(declare-fun b!5840879 () Bool)

(assert (=> b!5840879 (= e!3582659 (= s!2326 (Cons!63904 (c!1034845 r!7292) Nil!63904)))))

(declare-fun b!5840880 () Bool)

(assert (=> b!5840880 (= e!3582653 e!3582656)))

(assert (=> b!5840880 (= c!1034913 ((_ is Star!15909) r!7292))))

(assert (=> b!5840881 (= e!3582657 call!456204)))

(declare-fun b!5840882 () Bool)

(assert (=> b!5840882 (= e!3582655 call!456203)))

(declare-fun b!5840883 () Bool)

(declare-fun c!1034910 () Bool)

(assert (=> b!5840883 (= c!1034910 ((_ is ElementMatch!15909) r!7292))))

(assert (=> b!5840883 (= e!3582658 e!3582659)))

(declare-fun b!5840884 () Bool)

(assert (=> b!5840884 (= e!3582653 e!3582654)))

(declare-fun res!2460628 () Bool)

(assert (=> b!5840884 (= res!2460628 (matchRSpec!3010 (regOne!32331 r!7292) s!2326))))

(assert (=> b!5840884 (=> res!2460628 e!3582654)))

(assert (= (and d!1835262 c!1034912) b!5840882))

(assert (= (and d!1835262 (not c!1034912)) b!5840874))

(assert (= (and b!5840874 res!2460630) b!5840883))

(assert (= (and b!5840883 c!1034910) b!5840879))

(assert (= (and b!5840883 (not c!1034910)) b!5840877))

(assert (= (and b!5840877 c!1034911) b!5840884))

(assert (= (and b!5840877 (not c!1034911)) b!5840880))

(assert (= (and b!5840884 (not res!2460628)) b!5840875))

(assert (= (and b!5840880 c!1034913) b!5840878))

(assert (= (and b!5840880 (not c!1034913)) b!5840876))

(assert (= (and b!5840878 (not res!2460629)) b!5840881))

(assert (= (or b!5840881 b!5840876) bm!456199))

(assert (= (or b!5840882 b!5840878) bm!456198))

(assert (=> bm!456198 m!6765134))

(assert (=> b!5840875 m!6765094))

(declare-fun m!6765234 () Bool)

(assert (=> bm!456199 m!6765234))

(assert (=> b!5840884 m!6765100))

(assert (=> b!5840647 d!1835262))

(declare-fun b!5840905 () Bool)

(declare-fun e!3582674 () Bool)

(declare-fun e!3582673 () Bool)

(assert (=> b!5840905 (= e!3582674 e!3582673)))

(declare-fun c!1034924 () Bool)

(assert (=> b!5840905 (= c!1034924 ((_ is EmptyLang!15909) r!7292))))

(declare-fun b!5840906 () Bool)

(declare-fun e!3582677 () Bool)

(assert (=> b!5840906 (= e!3582677 (= (head!12370 s!2326) (c!1034845 r!7292)))))

(declare-fun b!5840907 () Bool)

(declare-fun lt!2303773 () Bool)

(assert (=> b!5840907 (= e!3582673 (not lt!2303773))))

(declare-fun b!5840908 () Bool)

(declare-fun res!2460636 () Bool)

(declare-fun e!3582675 () Bool)

(assert (=> b!5840908 (=> res!2460636 e!3582675)))

(assert (=> b!5840908 (= res!2460636 e!3582677)))

(declare-fun res!2460639 () Bool)

(assert (=> b!5840908 (=> (not res!2460639) (not e!3582677))))

(assert (=> b!5840908 (= res!2460639 lt!2303773)))

(declare-fun d!1835264 () Bool)

(assert (=> d!1835264 e!3582674))

(declare-fun c!1034922 () Bool)

(assert (=> d!1835264 (= c!1034922 ((_ is EmptyExpr!15909) r!7292))))

(declare-fun e!3582672 () Bool)

(assert (=> d!1835264 (= lt!2303773 e!3582672)))

(declare-fun c!1034923 () Bool)

(assert (=> d!1835264 (= c!1034923 (isEmpty!35761 s!2326))))

(assert (=> d!1835264 (validRegex!7645 r!7292)))

(assert (=> d!1835264 (= (matchR!8092 r!7292 s!2326) lt!2303773)))

(declare-fun b!5840909 () Bool)

(declare-fun e!3582678 () Bool)

(declare-fun e!3582676 () Bool)

(assert (=> b!5840909 (= e!3582678 e!3582676)))

(declare-fun res!2460640 () Bool)

(assert (=> b!5840909 (=> res!2460640 e!3582676)))

(declare-fun call!456205 () Bool)

(assert (=> b!5840909 (= res!2460640 call!456205)))

(declare-fun b!5840910 () Bool)

(declare-fun res!2460638 () Bool)

(assert (=> b!5840910 (=> (not res!2460638) (not e!3582677))))

(assert (=> b!5840910 (= res!2460638 (not call!456205))))

(declare-fun b!5840911 () Bool)

(assert (=> b!5840911 (= e!3582675 e!3582678)))

(declare-fun res!2460637 () Bool)

(assert (=> b!5840911 (=> (not res!2460637) (not e!3582678))))

(assert (=> b!5840911 (= res!2460637 (not lt!2303773))))

(declare-fun b!5840912 () Bool)

(declare-fun res!2460642 () Bool)

(assert (=> b!5840912 (=> res!2460642 e!3582675)))

(assert (=> b!5840912 (= res!2460642 (not ((_ is ElementMatch!15909) r!7292)))))

(assert (=> b!5840912 (= e!3582673 e!3582675)))

(declare-fun bm!456200 () Bool)

(assert (=> bm!456200 (= call!456205 (isEmpty!35761 s!2326))))

(declare-fun b!5840913 () Bool)

(declare-fun res!2460641 () Bool)

(assert (=> b!5840913 (=> res!2460641 e!3582676)))

(assert (=> b!5840913 (= res!2460641 (not (isEmpty!35761 (tail!11455 s!2326))))))

(declare-fun b!5840914 () Bool)

(assert (=> b!5840914 (= e!3582672 (nullable!5908 r!7292))))

(declare-fun b!5840915 () Bool)

(declare-fun res!2460635 () Bool)

(assert (=> b!5840915 (=> (not res!2460635) (not e!3582677))))

(assert (=> b!5840915 (= res!2460635 (isEmpty!35761 (tail!11455 s!2326)))))

(declare-fun b!5840916 () Bool)

(assert (=> b!5840916 (= e!3582676 (not (= (head!12370 s!2326) (c!1034845 r!7292))))))

(declare-fun b!5840917 () Bool)

(assert (=> b!5840917 (= e!3582672 (matchR!8092 (derivativeStep!4646 r!7292 (head!12370 s!2326)) (tail!11455 s!2326)))))

(declare-fun b!5840918 () Bool)

(assert (=> b!5840918 (= e!3582674 (= lt!2303773 call!456205))))

(assert (= (and d!1835264 c!1034923) b!5840914))

(assert (= (and d!1835264 (not c!1034923)) b!5840917))

(assert (= (and d!1835264 c!1034922) b!5840918))

(assert (= (and d!1835264 (not c!1034922)) b!5840905))

(assert (= (and b!5840905 c!1034924) b!5840907))

(assert (= (and b!5840905 (not c!1034924)) b!5840912))

(assert (= (and b!5840912 (not res!2460642)) b!5840908))

(assert (= (and b!5840908 res!2460639) b!5840910))

(assert (= (and b!5840910 res!2460638) b!5840915))

(assert (= (and b!5840915 res!2460635) b!5840906))

(assert (= (and b!5840908 (not res!2460636)) b!5840911))

(assert (= (and b!5840911 res!2460637) b!5840909))

(assert (= (and b!5840909 (not res!2460640)) b!5840913))

(assert (= (and b!5840913 (not res!2460641)) b!5840916))

(assert (= (or b!5840918 b!5840909 b!5840910) bm!456200))

(assert (=> b!5840917 m!6765146))

(assert (=> b!5840917 m!6765146))

(declare-fun m!6765236 () Bool)

(assert (=> b!5840917 m!6765236))

(assert (=> b!5840917 m!6765150))

(assert (=> b!5840917 m!6765236))

(assert (=> b!5840917 m!6765150))

(declare-fun m!6765238 () Bool)

(assert (=> b!5840917 m!6765238))

(assert (=> bm!456200 m!6765134))

(assert (=> b!5840915 m!6765150))

(assert (=> b!5840915 m!6765150))

(assert (=> b!5840915 m!6765154))

(assert (=> b!5840913 m!6765150))

(assert (=> b!5840913 m!6765150))

(assert (=> b!5840913 m!6765154))

(assert (=> d!1835264 m!6765134))

(assert (=> d!1835264 m!6765124))

(assert (=> b!5840916 m!6765146))

(declare-fun m!6765240 () Bool)

(assert (=> b!5840914 m!6765240))

(assert (=> b!5840906 m!6765146))

(assert (=> b!5840647 d!1835264))

(declare-fun d!1835266 () Bool)

(assert (=> d!1835266 (= (matchR!8092 r!7292 s!2326) (matchRSpec!3010 r!7292 s!2326))))

(declare-fun lt!2303775 () Unit!157089)

(assert (=> d!1835266 (= lt!2303775 (choose!44340 r!7292 s!2326))))

(assert (=> d!1835266 (validRegex!7645 r!7292)))

(assert (=> d!1835266 (= (mainMatchTheorem!3010 r!7292 s!2326) lt!2303775)))

(declare-fun bs!1376171 () Bool)

(assert (= bs!1376171 d!1835266))

(assert (=> bs!1376171 m!6765110))

(assert (=> bs!1376171 m!6765108))

(declare-fun m!6765242 () Bool)

(assert (=> bs!1376171 m!6765242))

(assert (=> bs!1376171 m!6765124))

(assert (=> b!5840647 d!1835266))

(declare-fun d!1835268 () Bool)

(assert (=> d!1835268 (= (isEmpty!35760 (t!377382 zl!343)) ((_ is Nil!63903) (t!377382 zl!343)))))

(assert (=> b!5840638 d!1835268))

(declare-fun bs!1376176 () Bool)

(declare-fun d!1835270 () Bool)

(assert (= bs!1376176 (and d!1835270 d!1835250)))

(declare-fun lambda!319536 () Int)

(assert (=> bs!1376176 (= lambda!319536 lambda!319517)))

(declare-fun bs!1376177 () Bool)

(assert (= bs!1376177 (and d!1835270 d!1835252)))

(assert (=> bs!1376177 (= lambda!319536 lambda!319518)))

(declare-fun bs!1376178 () Bool)

(assert (= bs!1376178 (and d!1835270 d!1835256)))

(assert (=> bs!1376178 (= lambda!319536 lambda!319521)))

(declare-fun bs!1376179 () Bool)

(assert (= bs!1376179 (and d!1835270 d!1835258)))

(assert (=> bs!1376179 (= lambda!319536 lambda!319525)))

(declare-fun b!5840955 () Bool)

(declare-fun e!3582705 () Regex!15909)

(assert (=> b!5840955 (= e!3582705 (Union!15909 (h!70350 (unfocusZipperList!1330 zl!343)) (generalisedUnion!1753 (t!377381 (unfocusZipperList!1330 zl!343)))))))

(declare-fun b!5840956 () Bool)

(declare-fun e!3582702 () Bool)

(declare-fun lt!2303784 () Regex!15909)

(assert (=> b!5840956 (= e!3582702 (= lt!2303784 (head!12372 (unfocusZipperList!1330 zl!343))))))

(declare-fun b!5840957 () Bool)

(declare-fun e!3582703 () Bool)

(declare-fun e!3582700 () Bool)

(assert (=> b!5840957 (= e!3582703 e!3582700)))

(declare-fun c!1034940 () Bool)

(assert (=> b!5840957 (= c!1034940 (isEmpty!35763 (unfocusZipperList!1330 zl!343)))))

(declare-fun b!5840958 () Bool)

(declare-fun e!3582701 () Regex!15909)

(assert (=> b!5840958 (= e!3582701 (h!70350 (unfocusZipperList!1330 zl!343)))))

(assert (=> d!1835270 e!3582703))

(declare-fun res!2460650 () Bool)

(assert (=> d!1835270 (=> (not res!2460650) (not e!3582703))))

(assert (=> d!1835270 (= res!2460650 (validRegex!7645 lt!2303784))))

(assert (=> d!1835270 (= lt!2303784 e!3582701)))

(declare-fun c!1034941 () Bool)

(declare-fun e!3582704 () Bool)

(assert (=> d!1835270 (= c!1034941 e!3582704)))

(declare-fun res!2460649 () Bool)

(assert (=> d!1835270 (=> (not res!2460649) (not e!3582704))))

(assert (=> d!1835270 (= res!2460649 ((_ is Cons!63902) (unfocusZipperList!1330 zl!343)))))

(assert (=> d!1835270 (forall!14996 (unfocusZipperList!1330 zl!343) lambda!319536)))

(assert (=> d!1835270 (= (generalisedUnion!1753 (unfocusZipperList!1330 zl!343)) lt!2303784)))

(declare-fun b!5840959 () Bool)

(declare-fun isEmptyLang!1352 (Regex!15909) Bool)

(assert (=> b!5840959 (= e!3582700 (isEmptyLang!1352 lt!2303784))))

(declare-fun b!5840960 () Bool)

(assert (=> b!5840960 (= e!3582705 EmptyLang!15909)))

(declare-fun b!5840961 () Bool)

(assert (=> b!5840961 (= e!3582704 (isEmpty!35763 (t!377381 (unfocusZipperList!1330 zl!343))))))

(declare-fun b!5840962 () Bool)

(declare-fun isUnion!782 (Regex!15909) Bool)

(assert (=> b!5840962 (= e!3582702 (isUnion!782 lt!2303784))))

(declare-fun b!5840963 () Bool)

(assert (=> b!5840963 (= e!3582701 e!3582705)))

(declare-fun c!1034942 () Bool)

(assert (=> b!5840963 (= c!1034942 ((_ is Cons!63902) (unfocusZipperList!1330 zl!343)))))

(declare-fun b!5840964 () Bool)

(assert (=> b!5840964 (= e!3582700 e!3582702)))

(declare-fun c!1034943 () Bool)

(assert (=> b!5840964 (= c!1034943 (isEmpty!35763 (tail!11457 (unfocusZipperList!1330 zl!343))))))

(assert (= (and d!1835270 res!2460649) b!5840961))

(assert (= (and d!1835270 c!1034941) b!5840958))

(assert (= (and d!1835270 (not c!1034941)) b!5840963))

(assert (= (and b!5840963 c!1034942) b!5840955))

(assert (= (and b!5840963 (not c!1034942)) b!5840960))

(assert (= (and d!1835270 res!2460650) b!5840957))

(assert (= (and b!5840957 c!1034940) b!5840959))

(assert (= (and b!5840957 (not c!1034940)) b!5840964))

(assert (= (and b!5840964 c!1034943) b!5840956))

(assert (= (and b!5840964 (not c!1034943)) b!5840962))

(declare-fun m!6765270 () Bool)

(assert (=> b!5840955 m!6765270))

(declare-fun m!6765272 () Bool)

(assert (=> b!5840959 m!6765272))

(assert (=> b!5840957 m!6765090))

(declare-fun m!6765274 () Bool)

(assert (=> b!5840957 m!6765274))

(declare-fun m!6765276 () Bool)

(assert (=> b!5840962 m!6765276))

(declare-fun m!6765278 () Bool)

(assert (=> b!5840961 m!6765278))

(declare-fun m!6765280 () Bool)

(assert (=> d!1835270 m!6765280))

(assert (=> d!1835270 m!6765090))

(declare-fun m!6765282 () Bool)

(assert (=> d!1835270 m!6765282))

(assert (=> b!5840964 m!6765090))

(declare-fun m!6765284 () Bool)

(assert (=> b!5840964 m!6765284))

(assert (=> b!5840964 m!6765284))

(declare-fun m!6765286 () Bool)

(assert (=> b!5840964 m!6765286))

(assert (=> b!5840956 m!6765090))

(declare-fun m!6765288 () Bool)

(assert (=> b!5840956 m!6765288))

(assert (=> b!5840652 d!1835270))

(declare-fun bs!1376180 () Bool)

(declare-fun d!1835278 () Bool)

(assert (= bs!1376180 (and d!1835278 d!1835258)))

(declare-fun lambda!319539 () Int)

(assert (=> bs!1376180 (= lambda!319539 lambda!319525)))

(declare-fun bs!1376181 () Bool)

(assert (= bs!1376181 (and d!1835278 d!1835252)))

(assert (=> bs!1376181 (= lambda!319539 lambda!319518)))

(declare-fun bs!1376182 () Bool)

(assert (= bs!1376182 (and d!1835278 d!1835250)))

(assert (=> bs!1376182 (= lambda!319539 lambda!319517)))

(declare-fun bs!1376183 () Bool)

(assert (= bs!1376183 (and d!1835278 d!1835270)))

(assert (=> bs!1376183 (= lambda!319539 lambda!319536)))

(declare-fun bs!1376184 () Bool)

(assert (= bs!1376184 (and d!1835278 d!1835256)))

(assert (=> bs!1376184 (= lambda!319539 lambda!319521)))

(declare-fun lt!2303787 () List!64026)

(assert (=> d!1835278 (forall!14996 lt!2303787 lambda!319539)))

(declare-fun e!3582722 () List!64026)

(assert (=> d!1835278 (= lt!2303787 e!3582722)))

(declare-fun c!1034954 () Bool)

(assert (=> d!1835278 (= c!1034954 ((_ is Cons!63903) zl!343))))

(assert (=> d!1835278 (= (unfocusZipperList!1330 zl!343) lt!2303787)))

(declare-fun b!5840991 () Bool)

(assert (=> b!5840991 (= e!3582722 (Cons!63902 (generalisedConcat!1506 (exprs!5793 (h!70351 zl!343))) (unfocusZipperList!1330 (t!377382 zl!343))))))

(declare-fun b!5840992 () Bool)

(assert (=> b!5840992 (= e!3582722 Nil!63902)))

(assert (= (and d!1835278 c!1034954) b!5840991))

(assert (= (and d!1835278 (not c!1034954)) b!5840992))

(declare-fun m!6765290 () Bool)

(assert (=> d!1835278 m!6765290))

(assert (=> b!5840991 m!6765126))

(declare-fun m!6765292 () Bool)

(assert (=> b!5840991 m!6765292))

(assert (=> b!5840652 d!1835278))

(declare-fun b!5841003 () Bool)

(declare-fun e!3582727 () Bool)

(declare-fun tp!1615075 () Bool)

(assert (=> b!5841003 (= e!3582727 (and tp_is_empty!41071 tp!1615075))))

(assert (=> b!5840637 (= tp!1615066 e!3582727)))

(assert (= (and b!5840637 ((_ is Cons!63904) (t!377383 s!2326))) b!5841003))

(declare-fun b!5841014 () Bool)

(declare-fun e!3582730 () Bool)

(assert (=> b!5841014 (= e!3582730 tp_is_empty!41071)))

(declare-fun b!5841017 () Bool)

(declare-fun tp!1615090 () Bool)

(declare-fun tp!1615089 () Bool)

(assert (=> b!5841017 (= e!3582730 (and tp!1615090 tp!1615089))))

(assert (=> b!5840651 (= tp!1615063 e!3582730)))

(declare-fun b!5841015 () Bool)

(declare-fun tp!1615088 () Bool)

(declare-fun tp!1615086 () Bool)

(assert (=> b!5841015 (= e!3582730 (and tp!1615088 tp!1615086))))

(declare-fun b!5841016 () Bool)

(declare-fun tp!1615087 () Bool)

(assert (=> b!5841016 (= e!3582730 tp!1615087)))

(assert (= (and b!5840651 ((_ is ElementMatch!15909) (regOne!32330 r!7292))) b!5841014))

(assert (= (and b!5840651 ((_ is Concat!24754) (regOne!32330 r!7292))) b!5841015))

(assert (= (and b!5840651 ((_ is Star!15909) (regOne!32330 r!7292))) b!5841016))

(assert (= (and b!5840651 ((_ is Union!15909) (regOne!32330 r!7292))) b!5841017))

(declare-fun b!5841018 () Bool)

(declare-fun e!3582731 () Bool)

(assert (=> b!5841018 (= e!3582731 tp_is_empty!41071)))

(declare-fun b!5841021 () Bool)

(declare-fun tp!1615095 () Bool)

(declare-fun tp!1615094 () Bool)

(assert (=> b!5841021 (= e!3582731 (and tp!1615095 tp!1615094))))

(assert (=> b!5840651 (= tp!1615065 e!3582731)))

(declare-fun b!5841019 () Bool)

(declare-fun tp!1615093 () Bool)

(declare-fun tp!1615091 () Bool)

(assert (=> b!5841019 (= e!3582731 (and tp!1615093 tp!1615091))))

(declare-fun b!5841020 () Bool)

(declare-fun tp!1615092 () Bool)

(assert (=> b!5841020 (= e!3582731 tp!1615092)))

(assert (= (and b!5840651 ((_ is ElementMatch!15909) (regTwo!32330 r!7292))) b!5841018))

(assert (= (and b!5840651 ((_ is Concat!24754) (regTwo!32330 r!7292))) b!5841019))

(assert (= (and b!5840651 ((_ is Star!15909) (regTwo!32330 r!7292))) b!5841020))

(assert (= (and b!5840651 ((_ is Union!15909) (regTwo!32330 r!7292))) b!5841021))

(declare-fun b!5841026 () Bool)

(declare-fun e!3582734 () Bool)

(declare-fun tp!1615100 () Bool)

(declare-fun tp!1615101 () Bool)

(assert (=> b!5841026 (= e!3582734 (and tp!1615100 tp!1615101))))

(assert (=> b!5840645 (= tp!1615071 e!3582734)))

(assert (= (and b!5840645 ((_ is Cons!63902) (exprs!5793 (h!70351 zl!343)))) b!5841026))

(declare-fun b!5841029 () Bool)

(declare-fun e!3582737 () Bool)

(assert (=> b!5841029 (= e!3582737 tp_is_empty!41071)))

(declare-fun b!5841032 () Bool)

(declare-fun tp!1615106 () Bool)

(declare-fun tp!1615105 () Bool)

(assert (=> b!5841032 (= e!3582737 (and tp!1615106 tp!1615105))))

(assert (=> b!5840650 (= tp!1615069 e!3582737)))

(declare-fun b!5841030 () Bool)

(declare-fun tp!1615104 () Bool)

(declare-fun tp!1615102 () Bool)

(assert (=> b!5841030 (= e!3582737 (and tp!1615104 tp!1615102))))

(declare-fun b!5841031 () Bool)

(declare-fun tp!1615103 () Bool)

(assert (=> b!5841031 (= e!3582737 tp!1615103)))

(assert (= (and b!5840650 ((_ is ElementMatch!15909) (regOne!32331 r!7292))) b!5841029))

(assert (= (and b!5840650 ((_ is Concat!24754) (regOne!32331 r!7292))) b!5841030))

(assert (= (and b!5840650 ((_ is Star!15909) (regOne!32331 r!7292))) b!5841031))

(assert (= (and b!5840650 ((_ is Union!15909) (regOne!32331 r!7292))) b!5841032))

(declare-fun b!5841035 () Bool)

(declare-fun e!3582738 () Bool)

(assert (=> b!5841035 (= e!3582738 tp_is_empty!41071)))

(declare-fun b!5841038 () Bool)

(declare-fun tp!1615111 () Bool)

(declare-fun tp!1615110 () Bool)

(assert (=> b!5841038 (= e!3582738 (and tp!1615111 tp!1615110))))

(assert (=> b!5840650 (= tp!1615067 e!3582738)))

(declare-fun b!5841036 () Bool)

(declare-fun tp!1615109 () Bool)

(declare-fun tp!1615107 () Bool)

(assert (=> b!5841036 (= e!3582738 (and tp!1615109 tp!1615107))))

(declare-fun b!5841037 () Bool)

(declare-fun tp!1615108 () Bool)

(assert (=> b!5841037 (= e!3582738 tp!1615108)))

(assert (= (and b!5840650 ((_ is ElementMatch!15909) (regTwo!32331 r!7292))) b!5841035))

(assert (= (and b!5840650 ((_ is Concat!24754) (regTwo!32331 r!7292))) b!5841036))

(assert (= (and b!5840650 ((_ is Star!15909) (regTwo!32331 r!7292))) b!5841037))

(assert (= (and b!5840650 ((_ is Union!15909) (regTwo!32331 r!7292))) b!5841038))

(declare-fun b!5841046 () Bool)

(declare-fun e!3582744 () Bool)

(declare-fun tp!1615116 () Bool)

(assert (=> b!5841046 (= e!3582744 tp!1615116)))

(declare-fun tp!1615117 () Bool)

(declare-fun b!5841045 () Bool)

(declare-fun e!3582743 () Bool)

(assert (=> b!5841045 (= e!3582743 (and (inv!83019 (h!70351 (t!377382 zl!343))) e!3582744 tp!1615117))))

(assert (=> b!5840643 (= tp!1615070 e!3582743)))

(assert (= b!5841045 b!5841046))

(assert (= (and b!5840643 ((_ is Cons!63903) (t!377382 zl!343))) b!5841045))

(declare-fun m!6765294 () Bool)

(assert (=> b!5841045 m!6765294))

(declare-fun condSetEmpty!39575 () Bool)

(assert (=> setNonEmpty!39572 (= condSetEmpty!39575 (= setRest!39572 ((as const (Array Context!10586 Bool)) false)))))

(declare-fun setRes!39575 () Bool)

(assert (=> setNonEmpty!39572 (= tp!1615064 setRes!39575)))

(declare-fun setIsEmpty!39575 () Bool)

(assert (=> setIsEmpty!39575 setRes!39575))

(declare-fun setNonEmpty!39575 () Bool)

(declare-fun setElem!39575 () Context!10586)

(declare-fun tp!1615122 () Bool)

(declare-fun e!3582747 () Bool)

(assert (=> setNonEmpty!39575 (= setRes!39575 (and tp!1615122 (inv!83019 setElem!39575) e!3582747))))

(declare-fun setRest!39575 () (InoxSet Context!10586))

(assert (=> setNonEmpty!39575 (= setRest!39572 ((_ map or) (store ((as const (Array Context!10586 Bool)) false) setElem!39575 true) setRest!39575))))

(declare-fun b!5841051 () Bool)

(declare-fun tp!1615123 () Bool)

(assert (=> b!5841051 (= e!3582747 tp!1615123)))

(assert (= (and setNonEmpty!39572 condSetEmpty!39575) setIsEmpty!39575))

(assert (= (and setNonEmpty!39572 (not condSetEmpty!39575)) setNonEmpty!39575))

(assert (= setNonEmpty!39575 b!5841051))

(declare-fun m!6765296 () Bool)

(assert (=> setNonEmpty!39575 m!6765296))

(declare-fun b!5841052 () Bool)

(declare-fun e!3582748 () Bool)

(assert (=> b!5841052 (= e!3582748 tp_is_empty!41071)))

(declare-fun b!5841055 () Bool)

(declare-fun tp!1615128 () Bool)

(declare-fun tp!1615127 () Bool)

(assert (=> b!5841055 (= e!3582748 (and tp!1615128 tp!1615127))))

(assert (=> b!5840653 (= tp!1615068 e!3582748)))

(declare-fun b!5841053 () Bool)

(declare-fun tp!1615126 () Bool)

(declare-fun tp!1615124 () Bool)

(assert (=> b!5841053 (= e!3582748 (and tp!1615126 tp!1615124))))

(declare-fun b!5841054 () Bool)

(declare-fun tp!1615125 () Bool)

(assert (=> b!5841054 (= e!3582748 tp!1615125)))

(assert (= (and b!5840653 ((_ is ElementMatch!15909) (reg!16238 r!7292))) b!5841052))

(assert (= (and b!5840653 ((_ is Concat!24754) (reg!16238 r!7292))) b!5841053))

(assert (= (and b!5840653 ((_ is Star!15909) (reg!16238 r!7292))) b!5841054))

(assert (= (and b!5840653 ((_ is Union!15909) (reg!16238 r!7292))) b!5841055))

(declare-fun b!5841056 () Bool)

(declare-fun e!3582749 () Bool)

(declare-fun tp!1615129 () Bool)

(declare-fun tp!1615130 () Bool)

(assert (=> b!5841056 (= e!3582749 (and tp!1615129 tp!1615130))))

(assert (=> b!5840641 (= tp!1615072 e!3582749)))

(assert (= (and b!5840641 ((_ is Cons!63902) (exprs!5793 setElem!39572))) b!5841056))

(check-sat (not b!5840866) (not b!5841015) (not b!5841054) (not b!5840758) (not bm!456199) (not d!1835264) (not b!5840913) (not b!5840871) (not b!5840955) (not b!5841055) (not b!5840794) (not b!5840790) (not b!5841053) (not b!5840769) (not b!5840964) (not b!5841020) (not b!5840916) (not b!5840959) (not b!5840765) (not bm!456181) (not b!5840724) (not bm!456192) (not b!5841030) (not b!5840991) (not b!5840957) (not b!5841051) (not b!5840783) (not bm!456194) (not b!5840810) (not b!5840962) (not b!5840715) (not b!5840914) (not bm!456187) (not b!5841045) (not d!1835236) (not b!5840884) (not b!5840917) (not b!5840793) (not b!5841019) (not b!5841021) (not b!5840873) tp_is_empty!41071 (not b!5840811) (not d!1835250) (not setNonEmpty!39575) (not b!5840956) (not d!1835248) (not b!5840870) (not b!5840767) (not b!5840679) (not d!1835266) (not d!1835258) (not b!5840772) (not b!5841003) (not b!5841017) (not b!5841037) (not d!1835238) (not b!5840768) (not bm!456182) (not b!5840875) (not b!5841046) (not b!5840766) (not b!5841036) (not d!1835240) (not b!5840791) (not d!1835244) (not b!5841056) (not b!5840906) (not b!5841016) (not bm!456191) (not b!5840872) (not b!5841026) (not b!5841031) (not bm!456197) (not d!1835246) (not b!5840798) (not bm!456193) (not b!5841038) (not b!5841032) (not b!5840868) (not d!1835270) (not bm!456200) (not d!1835278) (not d!1835252) (not d!1835256) (not b!5840915) (not bm!456188) (not bm!456198) (not b!5840781) (not b!5840792) (not b!5840869) (not b!5840961))
(check-sat)
(get-model)

(declare-fun b!5841285 () Bool)

(declare-fun e!3582876 () (InoxSet Context!10586))

(declare-fun call!456246 () (InoxSet Context!10586))

(assert (=> b!5841285 (= e!3582876 call!456246)))

(declare-fun call!456249 () List!64026)

(declare-fun c!1035006 () Bool)

(declare-fun bm!456240 () Bool)

(declare-fun c!1035005 () Bool)

(declare-fun $colon$colon!1813 (List!64026 Regex!15909) List!64026)

(assert (=> bm!456240 (= call!456249 ($colon$colon!1813 (exprs!5793 (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))))) (ite (or c!1035005 c!1035006) (regTwo!32330 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))))))))

(declare-fun c!1035008 () Bool)

(declare-fun call!456248 () List!64026)

(declare-fun bm!456241 () Bool)

(declare-fun call!456247 () (InoxSet Context!10586))

(assert (=> bm!456241 (= call!456247 (derivationStepZipperDown!1174 (ite c!1035008 (regTwo!32331 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (ite c!1035005 (regTwo!32330 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (ite c!1035006 (regOne!32330 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (reg!16238 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))))))) (ite (or c!1035008 c!1035005) (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (Context!10587 call!456248)) (h!70352 s!2326)))))

(declare-fun b!5841286 () Bool)

(assert (=> b!5841286 (= e!3582876 ((as const (Array Context!10586 Bool)) false))))

(declare-fun b!5841287 () Bool)

(declare-fun e!3582874 () (InoxSet Context!10586))

(declare-fun e!3582877 () (InoxSet Context!10586))

(assert (=> b!5841287 (= e!3582874 e!3582877)))

(assert (=> b!5841287 (= c!1035006 ((_ is Concat!24754) (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))))))

(declare-fun bm!456242 () Bool)

(declare-fun call!456250 () (InoxSet Context!10586))

(assert (=> bm!456242 (= call!456246 call!456250)))

(declare-fun b!5841288 () Bool)

(declare-fun e!3582878 () Bool)

(assert (=> b!5841288 (= c!1035005 e!3582878)))

(declare-fun res!2460739 () Bool)

(assert (=> b!5841288 (=> (not res!2460739) (not e!3582878))))

(assert (=> b!5841288 (= res!2460739 ((_ is Concat!24754) (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))))))

(declare-fun e!3582875 () (InoxSet Context!10586))

(assert (=> b!5841288 (= e!3582875 e!3582874)))

(declare-fun b!5841289 () Bool)

(declare-fun call!456245 () (InoxSet Context!10586))

(assert (=> b!5841289 (= e!3582874 ((_ map or) call!456245 call!456250))))

(declare-fun d!1835310 () Bool)

(declare-fun c!1035007 () Bool)

(assert (=> d!1835310 (= c!1035007 (and ((_ is ElementMatch!15909) (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (= (c!1034845 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (h!70352 s!2326))))))

(declare-fun e!3582879 () (InoxSet Context!10586))

(assert (=> d!1835310 (= (derivationStepZipperDown!1174 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))) (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (h!70352 s!2326)) e!3582879)))

(declare-fun b!5841290 () Bool)

(assert (=> b!5841290 (= e!3582879 e!3582875)))

(assert (=> b!5841290 (= c!1035008 ((_ is Union!15909) (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))))))

(declare-fun b!5841291 () Bool)

(declare-fun c!1035004 () Bool)

(assert (=> b!5841291 (= c!1035004 ((_ is Star!15909) (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))))))

(assert (=> b!5841291 (= e!3582877 e!3582876)))

(declare-fun b!5841292 () Bool)

(assert (=> b!5841292 (= e!3582875 ((_ map or) call!456245 call!456247))))

(declare-fun b!5841293 () Bool)

(assert (=> b!5841293 (= e!3582877 call!456246)))

(declare-fun b!5841294 () Bool)

(assert (=> b!5841294 (= e!3582878 (nullable!5908 (regOne!32330 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))))))))

(declare-fun bm!456243 () Bool)

(assert (=> bm!456243 (= call!456248 call!456249)))

(declare-fun b!5841295 () Bool)

(assert (=> b!5841295 (= e!3582879 (store ((as const (Array Context!10586 Bool)) false) (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) true))))

(declare-fun bm!456244 () Bool)

(assert (=> bm!456244 (= call!456245 (derivationStepZipperDown!1174 (ite c!1035008 (regOne!32331 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (regOne!32330 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))))) (ite c!1035008 (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (Context!10587 call!456249)) (h!70352 s!2326)))))

(declare-fun bm!456245 () Bool)

(assert (=> bm!456245 (= call!456250 call!456247)))

(assert (= (and d!1835310 c!1035007) b!5841295))

(assert (= (and d!1835310 (not c!1035007)) b!5841290))

(assert (= (and b!5841290 c!1035008) b!5841292))

(assert (= (and b!5841290 (not c!1035008)) b!5841288))

(assert (= (and b!5841288 res!2460739) b!5841294))

(assert (= (and b!5841288 c!1035005) b!5841289))

(assert (= (and b!5841288 (not c!1035005)) b!5841287))

(assert (= (and b!5841287 c!1035006) b!5841293))

(assert (= (and b!5841287 (not c!1035006)) b!5841291))

(assert (= (and b!5841291 c!1035004) b!5841285))

(assert (= (and b!5841291 (not c!1035004)) b!5841286))

(assert (= (or b!5841293 b!5841285) bm!456243))

(assert (= (or b!5841293 b!5841285) bm!456242))

(assert (= (or b!5841289 bm!456243) bm!456240))

(assert (= (or b!5841289 bm!456242) bm!456245))

(assert (= (or b!5841292 bm!456245) bm!456241))

(assert (= (or b!5841292 b!5841289) bm!456244))

(declare-fun m!6765376 () Bool)

(assert (=> bm!456240 m!6765376))

(declare-fun m!6765378 () Bool)

(assert (=> b!5841295 m!6765378))

(declare-fun m!6765380 () Bool)

(assert (=> bm!456241 m!6765380))

(declare-fun m!6765382 () Bool)

(assert (=> bm!456244 m!6765382))

(declare-fun m!6765384 () Bool)

(assert (=> b!5841294 m!6765384))

(assert (=> bm!456197 d!1835310))

(declare-fun d!1835312 () Bool)

(declare-fun nullableFct!1895 (Regex!15909) Bool)

(assert (=> d!1835312 (= (nullable!5908 (reg!16238 r!7292)) (nullableFct!1895 (reg!16238 r!7292)))))

(declare-fun bs!1376218 () Bool)

(assert (= bs!1376218 d!1835312))

(declare-fun m!6765386 () Bool)

(assert (=> bs!1376218 m!6765386))

(assert (=> b!5840679 d!1835312))

(declare-fun d!1835314 () Bool)

(declare-fun c!1035011 () Bool)

(assert (=> d!1835314 (= c!1035011 ((_ is Nil!63903) lt!2303761))))

(declare-fun e!3582882 () (InoxSet Context!10586))

(assert (=> d!1835314 (= (content!11738 lt!2303761) e!3582882)))

(declare-fun b!5841300 () Bool)

(assert (=> b!5841300 (= e!3582882 ((as const (Array Context!10586 Bool)) false))))

(declare-fun b!5841301 () Bool)

(assert (=> b!5841301 (= e!3582882 ((_ map or) (store ((as const (Array Context!10586 Bool)) false) (h!70351 lt!2303761) true) (content!11738 (t!377382 lt!2303761))))))

(assert (= (and d!1835314 c!1035011) b!5841300))

(assert (= (and d!1835314 (not c!1035011)) b!5841301))

(declare-fun m!6765388 () Bool)

(assert (=> b!5841301 m!6765388))

(declare-fun m!6765390 () Bool)

(assert (=> b!5841301 m!6765390))

(assert (=> b!5840798 d!1835314))

(declare-fun d!1835316 () Bool)

(assert (=> d!1835316 (= (nullable!5908 (regTwo!32331 r!7292)) (nullableFct!1895 (regTwo!32331 r!7292)))))

(declare-fun bs!1376219 () Bool)

(assert (= bs!1376219 d!1835316))

(declare-fun m!6765392 () Bool)

(assert (=> bs!1376219 m!6765392))

(assert (=> b!5840766 d!1835316))

(declare-fun d!1835318 () Bool)

(assert (=> d!1835318 (= (isUnion!782 lt!2303784) ((_ is Union!15909) lt!2303784))))

(assert (=> b!5840962 d!1835318))

(declare-fun d!1835320 () Bool)

(assert (=> d!1835320 (= (isEmpty!35763 (exprs!5793 (h!70351 zl!343))) ((_ is Nil!63902) (exprs!5793 (h!70351 zl!343))))))

(assert (=> b!5840871 d!1835320))

(assert (=> d!1835266 d!1835264))

(assert (=> d!1835266 d!1835262))

(declare-fun d!1835322 () Bool)

(assert (=> d!1835322 (= (matchR!8092 r!7292 s!2326) (matchRSpec!3010 r!7292 s!2326))))

(assert (=> d!1835322 true))

(declare-fun _$88!4203 () Unit!157089)

(assert (=> d!1835322 (= (choose!44340 r!7292 s!2326) _$88!4203)))

(declare-fun bs!1376220 () Bool)

(assert (= bs!1376220 d!1835322))

(assert (=> bs!1376220 m!6765110))

(assert (=> bs!1376220 m!6765108))

(assert (=> d!1835266 d!1835322))

(assert (=> d!1835266 d!1835232))

(declare-fun d!1835324 () Bool)

(assert (=> d!1835324 (= (isEmpty!35761 s!2326) ((_ is Nil!63904) s!2326))))

(assert (=> bm!456191 d!1835324))

(declare-fun d!1835326 () Bool)

(declare-fun res!2460744 () Bool)

(declare-fun e!3582887 () Bool)

(assert (=> d!1835326 (=> res!2460744 e!3582887)))

(assert (=> d!1835326 (= res!2460744 ((_ is Nil!63902) (exprs!5793 (h!70351 zl!343))))))

(assert (=> d!1835326 (= (forall!14996 (exprs!5793 (h!70351 zl!343)) lambda!319517) e!3582887)))

(declare-fun b!5841306 () Bool)

(declare-fun e!3582888 () Bool)

(assert (=> b!5841306 (= e!3582887 e!3582888)))

(declare-fun res!2460745 () Bool)

(assert (=> b!5841306 (=> (not res!2460745) (not e!3582888))))

(declare-fun dynLambda!24979 (Int Regex!15909) Bool)

(assert (=> b!5841306 (= res!2460745 (dynLambda!24979 lambda!319517 (h!70350 (exprs!5793 (h!70351 zl!343)))))))

(declare-fun b!5841307 () Bool)

(assert (=> b!5841307 (= e!3582888 (forall!14996 (t!377381 (exprs!5793 (h!70351 zl!343))) lambda!319517))))

(assert (= (and d!1835326 (not res!2460744)) b!5841306))

(assert (= (and b!5841306 res!2460745) b!5841307))

(declare-fun b_lambda!219957 () Bool)

(assert (=> (not b_lambda!219957) (not b!5841306)))

(declare-fun m!6765394 () Bool)

(assert (=> b!5841306 m!6765394))

(declare-fun m!6765396 () Bool)

(assert (=> b!5841307 m!6765396))

(assert (=> d!1835250 d!1835326))

(declare-fun d!1835328 () Bool)

(assert (=> d!1835328 (= (head!12370 s!2326) (h!70352 s!2326))))

(assert (=> b!5840906 d!1835328))

(declare-fun d!1835330 () Bool)

(assert (=> d!1835330 (= (isConcat!867 lt!2303770) ((_ is Concat!24754) lt!2303770))))

(assert (=> b!5840869 d!1835330))

(declare-fun d!1835332 () Bool)

(declare-fun res!2460746 () Bool)

(declare-fun e!3582889 () Bool)

(assert (=> d!1835332 (=> res!2460746 e!3582889)))

(assert (=> d!1835332 (= res!2460746 ((_ is Nil!63902) (exprs!5793 setElem!39572)))))

(assert (=> d!1835332 (= (forall!14996 (exprs!5793 setElem!39572) lambda!319521) e!3582889)))

(declare-fun b!5841308 () Bool)

(declare-fun e!3582890 () Bool)

(assert (=> b!5841308 (= e!3582889 e!3582890)))

(declare-fun res!2460747 () Bool)

(assert (=> b!5841308 (=> (not res!2460747) (not e!3582890))))

(assert (=> b!5841308 (= res!2460747 (dynLambda!24979 lambda!319521 (h!70350 (exprs!5793 setElem!39572))))))

(declare-fun b!5841309 () Bool)

(assert (=> b!5841309 (= e!3582890 (forall!14996 (t!377381 (exprs!5793 setElem!39572)) lambda!319521))))

(assert (= (and d!1835332 (not res!2460746)) b!5841308))

(assert (= (and b!5841308 res!2460747) b!5841309))

(declare-fun b_lambda!219959 () Bool)

(assert (=> (not b_lambda!219959) (not b!5841308)))

(declare-fun m!6765398 () Bool)

(assert (=> b!5841308 m!6765398))

(declare-fun m!6765400 () Bool)

(assert (=> b!5841309 m!6765400))

(assert (=> d!1835256 d!1835332))

(assert (=> b!5840793 d!1835328))

(declare-fun d!1835334 () Bool)

(declare-fun res!2460752 () Bool)

(declare-fun e!3582895 () Bool)

(assert (=> d!1835334 (=> res!2460752 e!3582895)))

(assert (=> d!1835334 (= res!2460752 ((_ is Nil!63903) lt!2303761))))

(assert (=> d!1835334 (= (noDuplicate!1773 lt!2303761) e!3582895)))

(declare-fun b!5841314 () Bool)

(declare-fun e!3582896 () Bool)

(assert (=> b!5841314 (= e!3582895 e!3582896)))

(declare-fun res!2460753 () Bool)

(assert (=> b!5841314 (=> (not res!2460753) (not e!3582896))))

(declare-fun contains!19916 (List!64027 Context!10586) Bool)

(assert (=> b!5841314 (= res!2460753 (not (contains!19916 (t!377382 lt!2303761) (h!70351 lt!2303761))))))

(declare-fun b!5841315 () Bool)

(assert (=> b!5841315 (= e!3582896 (noDuplicate!1773 (t!377382 lt!2303761)))))

(assert (= (and d!1835334 (not res!2460752)) b!5841314))

(assert (= (and b!5841314 res!2460753) b!5841315))

(declare-fun m!6765402 () Bool)

(assert (=> b!5841314 m!6765402))

(declare-fun m!6765404 () Bool)

(assert (=> b!5841315 m!6765404))

(assert (=> d!1835246 d!1835334))

(declare-fun d!1835336 () Bool)

(declare-fun e!3582903 () Bool)

(assert (=> d!1835336 e!3582903))

(declare-fun res!2460759 () Bool)

(assert (=> d!1835336 (=> (not res!2460759) (not e!3582903))))

(declare-fun res!2460758 () List!64027)

(assert (=> d!1835336 (= res!2460759 (noDuplicate!1773 res!2460758))))

(declare-fun e!3582904 () Bool)

(assert (=> d!1835336 e!3582904))

(assert (=> d!1835336 (= (choose!44341 z!1189) res!2460758)))

(declare-fun b!5841323 () Bool)

(declare-fun e!3582905 () Bool)

(declare-fun tp!1615194 () Bool)

(assert (=> b!5841323 (= e!3582905 tp!1615194)))

(declare-fun b!5841322 () Bool)

(declare-fun tp!1615193 () Bool)

(assert (=> b!5841322 (= e!3582904 (and (inv!83019 (h!70351 res!2460758)) e!3582905 tp!1615193))))

(declare-fun b!5841324 () Bool)

(assert (=> b!5841324 (= e!3582903 (= (content!11738 res!2460758) z!1189))))

(assert (= b!5841322 b!5841323))

(assert (= (and d!1835336 ((_ is Cons!63903) res!2460758)) b!5841322))

(assert (= (and d!1835336 res!2460759) b!5841324))

(declare-fun m!6765406 () Bool)

(assert (=> d!1835336 m!6765406))

(declare-fun m!6765408 () Bool)

(assert (=> b!5841322 m!6765408))

(declare-fun m!6765410 () Bool)

(assert (=> b!5841324 m!6765410))

(assert (=> d!1835246 d!1835336))

(declare-fun d!1835338 () Bool)

(assert (=> d!1835338 (= (isEmpty!35761 (tail!11455 s!2326)) ((_ is Nil!63904) (tail!11455 s!2326)))))

(assert (=> b!5840913 d!1835338))

(declare-fun d!1835340 () Bool)

(assert (=> d!1835340 (= (tail!11455 s!2326) (t!377383 s!2326))))

(assert (=> b!5840913 d!1835340))

(declare-fun d!1835342 () Bool)

(declare-fun choose!44344 (Int) Bool)

(assert (=> d!1835342 (= (Exists!2980 (ite c!1034876 lambda!319513 lambda!319514)) (choose!44344 (ite c!1034876 lambda!319513 lambda!319514)))))

(declare-fun bs!1376221 () Bool)

(assert (= bs!1376221 d!1835342))

(declare-fun m!6765412 () Bool)

(assert (=> bs!1376221 m!6765412))

(assert (=> bm!456193 d!1835342))

(declare-fun bs!1376222 () Bool)

(declare-fun d!1835344 () Bool)

(assert (= bs!1376222 (and d!1835344 d!1835258)))

(declare-fun lambda!319555 () Int)

(assert (=> bs!1376222 (= lambda!319555 lambda!319525)))

(declare-fun bs!1376223 () Bool)

(assert (= bs!1376223 (and d!1835344 d!1835252)))

(assert (=> bs!1376223 (= lambda!319555 lambda!319518)))

(declare-fun bs!1376224 () Bool)

(assert (= bs!1376224 (and d!1835344 d!1835250)))

(assert (=> bs!1376224 (= lambda!319555 lambda!319517)))

(declare-fun bs!1376225 () Bool)

(assert (= bs!1376225 (and d!1835344 d!1835270)))

(assert (=> bs!1376225 (= lambda!319555 lambda!319536)))

(declare-fun bs!1376226 () Bool)

(assert (= bs!1376226 (and d!1835344 d!1835278)))

(assert (=> bs!1376226 (= lambda!319555 lambda!319539)))

(declare-fun bs!1376227 () Bool)

(assert (= bs!1376227 (and d!1835344 d!1835256)))

(assert (=> bs!1376227 (= lambda!319555 lambda!319521)))

(assert (=> d!1835344 (= (inv!83019 (h!70351 (t!377382 zl!343))) (forall!14996 (exprs!5793 (h!70351 (t!377382 zl!343))) lambda!319555))))

(declare-fun bs!1376228 () Bool)

(assert (= bs!1376228 d!1835344))

(declare-fun m!6765414 () Bool)

(assert (=> bs!1376228 m!6765414))

(assert (=> b!5841045 d!1835344))

(assert (=> b!5840768 d!1835328))

(declare-fun d!1835346 () Bool)

(assert (=> d!1835346 (= (isEmpty!35763 (tail!11457 (unfocusZipperList!1330 zl!343))) ((_ is Nil!63902) (tail!11457 (unfocusZipperList!1330 zl!343))))))

(assert (=> b!5840964 d!1835346))

(declare-fun d!1835348 () Bool)

(assert (=> d!1835348 (= (tail!11457 (unfocusZipperList!1330 zl!343)) (t!377381 (unfocusZipperList!1330 zl!343)))))

(assert (=> b!5840964 d!1835348))

(assert (=> d!1835238 d!1835324))

(declare-fun bm!456246 () Bool)

(declare-fun call!456251 () Bool)

(declare-fun call!456253 () Bool)

(assert (=> bm!456246 (= call!456251 call!456253)))

(declare-fun b!5841325 () Bool)

(declare-fun e!3582907 () Bool)

(declare-fun call!456252 () Bool)

(assert (=> b!5841325 (= e!3582907 call!456252)))

(declare-fun b!5841326 () Bool)

(declare-fun e!3582909 () Bool)

(declare-fun e!3582912 () Bool)

(assert (=> b!5841326 (= e!3582909 e!3582912)))

(declare-fun res!2460760 () Bool)

(assert (=> b!5841326 (=> (not res!2460760) (not e!3582912))))

(assert (=> b!5841326 (= res!2460760 call!456251)))

(declare-fun b!5841327 () Bool)

(declare-fun e!3582910 () Bool)

(declare-fun e!3582908 () Bool)

(assert (=> b!5841327 (= e!3582910 e!3582908)))

(declare-fun c!1035012 () Bool)

(assert (=> b!5841327 (= c!1035012 ((_ is Union!15909) (regTwo!32331 r!7292)))))

(declare-fun b!5841328 () Bool)

(declare-fun e!3582906 () Bool)

(assert (=> b!5841328 (= e!3582906 e!3582910)))

(declare-fun c!1035013 () Bool)

(assert (=> b!5841328 (= c!1035013 ((_ is Star!15909) (regTwo!32331 r!7292)))))

(declare-fun b!5841329 () Bool)

(declare-fun e!3582911 () Bool)

(assert (=> b!5841329 (= e!3582911 call!456253)))

(declare-fun b!5841330 () Bool)

(declare-fun res!2460764 () Bool)

(assert (=> b!5841330 (=> (not res!2460764) (not e!3582907))))

(assert (=> b!5841330 (= res!2460764 call!456251)))

(assert (=> b!5841330 (= e!3582908 e!3582907)))

(declare-fun bm!456247 () Bool)

(assert (=> bm!456247 (= call!456252 (validRegex!7645 (ite c!1035012 (regTwo!32331 (regTwo!32331 r!7292)) (regTwo!32330 (regTwo!32331 r!7292)))))))

(declare-fun b!5841332 () Bool)

(declare-fun res!2460762 () Bool)

(assert (=> b!5841332 (=> res!2460762 e!3582909)))

(assert (=> b!5841332 (= res!2460762 (not ((_ is Concat!24754) (regTwo!32331 r!7292))))))

(assert (=> b!5841332 (= e!3582908 e!3582909)))

(declare-fun d!1835350 () Bool)

(declare-fun res!2460763 () Bool)

(assert (=> d!1835350 (=> res!2460763 e!3582906)))

(assert (=> d!1835350 (= res!2460763 ((_ is ElementMatch!15909) (regTwo!32331 r!7292)))))

(assert (=> d!1835350 (= (validRegex!7645 (regTwo!32331 r!7292)) e!3582906)))

(declare-fun b!5841331 () Bool)

(assert (=> b!5841331 (= e!3582910 e!3582911)))

(declare-fun res!2460761 () Bool)

(assert (=> b!5841331 (= res!2460761 (not (nullable!5908 (reg!16238 (regTwo!32331 r!7292)))))))

(assert (=> b!5841331 (=> (not res!2460761) (not e!3582911))))

(declare-fun bm!456248 () Bool)

(assert (=> bm!456248 (= call!456253 (validRegex!7645 (ite c!1035013 (reg!16238 (regTwo!32331 r!7292)) (ite c!1035012 (regOne!32331 (regTwo!32331 r!7292)) (regOne!32330 (regTwo!32331 r!7292))))))))

(declare-fun b!5841333 () Bool)

(assert (=> b!5841333 (= e!3582912 call!456252)))

(assert (= (and d!1835350 (not res!2460763)) b!5841328))

(assert (= (and b!5841328 c!1035013) b!5841331))

(assert (= (and b!5841328 (not c!1035013)) b!5841327))

(assert (= (and b!5841331 res!2460761) b!5841329))

(assert (= (and b!5841327 c!1035012) b!5841330))

(assert (= (and b!5841327 (not c!1035012)) b!5841332))

(assert (= (and b!5841330 res!2460764) b!5841325))

(assert (= (and b!5841332 (not res!2460762)) b!5841326))

(assert (= (and b!5841326 res!2460760) b!5841333))

(assert (= (or b!5841325 b!5841333) bm!456247))

(assert (= (or b!5841330 b!5841326) bm!456246))

(assert (= (or b!5841329 bm!456246) bm!456248))

(declare-fun m!6765416 () Bool)

(assert (=> bm!456247 m!6765416))

(declare-fun m!6765418 () Bool)

(assert (=> b!5841331 m!6765418))

(declare-fun m!6765420 () Bool)

(assert (=> bm!456248 m!6765420))

(assert (=> d!1835238 d!1835350))

(declare-fun bs!1376229 () Bool)

(declare-fun d!1835352 () Bool)

(assert (= bs!1376229 (and d!1835352 d!1835258)))

(declare-fun lambda!319556 () Int)

(assert (=> bs!1376229 (= lambda!319556 lambda!319525)))

(declare-fun bs!1376230 () Bool)

(assert (= bs!1376230 (and d!1835352 d!1835252)))

(assert (=> bs!1376230 (= lambda!319556 lambda!319518)))

(declare-fun bs!1376231 () Bool)

(assert (= bs!1376231 (and d!1835352 d!1835250)))

(assert (=> bs!1376231 (= lambda!319556 lambda!319517)))

(declare-fun bs!1376232 () Bool)

(assert (= bs!1376232 (and d!1835352 d!1835270)))

(assert (=> bs!1376232 (= lambda!319556 lambda!319536)))

(declare-fun bs!1376233 () Bool)

(assert (= bs!1376233 (and d!1835352 d!1835278)))

(assert (=> bs!1376233 (= lambda!319556 lambda!319539)))

(declare-fun bs!1376234 () Bool)

(assert (= bs!1376234 (and d!1835352 d!1835344)))

(assert (=> bs!1376234 (= lambda!319556 lambda!319555)))

(declare-fun bs!1376235 () Bool)

(assert (= bs!1376235 (and d!1835352 d!1835256)))

(assert (=> bs!1376235 (= lambda!319556 lambda!319521)))

(assert (=> d!1835352 (= (inv!83019 setElem!39575) (forall!14996 (exprs!5793 setElem!39575) lambda!319556))))

(declare-fun bs!1376236 () Bool)

(assert (= bs!1376236 d!1835352))

(declare-fun m!6765422 () Bool)

(assert (=> bs!1376236 m!6765422))

(assert (=> setNonEmpty!39575 d!1835352))

(declare-fun d!1835354 () Bool)

(assert (=> d!1835354 (= (isEmpty!35763 (tail!11457 (exprs!5793 (h!70351 zl!343)))) ((_ is Nil!63902) (tail!11457 (exprs!5793 (h!70351 zl!343)))))))

(assert (=> b!5840873 d!1835354))

(declare-fun d!1835356 () Bool)

(assert (=> d!1835356 (= (tail!11457 (exprs!5793 (h!70351 zl!343))) (t!377381 (exprs!5793 (h!70351 zl!343))))))

(assert (=> b!5840873 d!1835356))

(assert (=> bm!456187 d!1835324))

(declare-fun b!5841334 () Bool)

(declare-fun e!3582915 () Bool)

(declare-fun e!3582914 () Bool)

(assert (=> b!5841334 (= e!3582915 e!3582914)))

(declare-fun c!1035016 () Bool)

(assert (=> b!5841334 (= c!1035016 ((_ is EmptyLang!15909) (derivativeStep!4646 r!7292 (head!12370 s!2326))))))

(declare-fun b!5841335 () Bool)

(declare-fun e!3582918 () Bool)

(assert (=> b!5841335 (= e!3582918 (= (head!12370 (tail!11455 s!2326)) (c!1034845 (derivativeStep!4646 r!7292 (head!12370 s!2326)))))))

(declare-fun b!5841336 () Bool)

(declare-fun lt!2303801 () Bool)

(assert (=> b!5841336 (= e!3582914 (not lt!2303801))))

(declare-fun b!5841337 () Bool)

(declare-fun res!2460766 () Bool)

(declare-fun e!3582916 () Bool)

(assert (=> b!5841337 (=> res!2460766 e!3582916)))

(assert (=> b!5841337 (= res!2460766 e!3582918)))

(declare-fun res!2460769 () Bool)

(assert (=> b!5841337 (=> (not res!2460769) (not e!3582918))))

(assert (=> b!5841337 (= res!2460769 lt!2303801)))

(declare-fun d!1835358 () Bool)

(assert (=> d!1835358 e!3582915))

(declare-fun c!1035014 () Bool)

(assert (=> d!1835358 (= c!1035014 ((_ is EmptyExpr!15909) (derivativeStep!4646 r!7292 (head!12370 s!2326))))))

(declare-fun e!3582913 () Bool)

(assert (=> d!1835358 (= lt!2303801 e!3582913)))

(declare-fun c!1035015 () Bool)

(assert (=> d!1835358 (= c!1035015 (isEmpty!35761 (tail!11455 s!2326)))))

(assert (=> d!1835358 (validRegex!7645 (derivativeStep!4646 r!7292 (head!12370 s!2326)))))

(assert (=> d!1835358 (= (matchR!8092 (derivativeStep!4646 r!7292 (head!12370 s!2326)) (tail!11455 s!2326)) lt!2303801)))

(declare-fun b!5841338 () Bool)

(declare-fun e!3582919 () Bool)

(declare-fun e!3582917 () Bool)

(assert (=> b!5841338 (= e!3582919 e!3582917)))

(declare-fun res!2460770 () Bool)

(assert (=> b!5841338 (=> res!2460770 e!3582917)))

(declare-fun call!456254 () Bool)

(assert (=> b!5841338 (= res!2460770 call!456254)))

(declare-fun b!5841339 () Bool)

(declare-fun res!2460768 () Bool)

(assert (=> b!5841339 (=> (not res!2460768) (not e!3582918))))

(assert (=> b!5841339 (= res!2460768 (not call!456254))))

(declare-fun b!5841340 () Bool)

(assert (=> b!5841340 (= e!3582916 e!3582919)))

(declare-fun res!2460767 () Bool)

(assert (=> b!5841340 (=> (not res!2460767) (not e!3582919))))

(assert (=> b!5841340 (= res!2460767 (not lt!2303801))))

(declare-fun b!5841341 () Bool)

(declare-fun res!2460772 () Bool)

(assert (=> b!5841341 (=> res!2460772 e!3582916)))

(assert (=> b!5841341 (= res!2460772 (not ((_ is ElementMatch!15909) (derivativeStep!4646 r!7292 (head!12370 s!2326)))))))

(assert (=> b!5841341 (= e!3582914 e!3582916)))

(declare-fun bm!456249 () Bool)

(assert (=> bm!456249 (= call!456254 (isEmpty!35761 (tail!11455 s!2326)))))

(declare-fun b!5841342 () Bool)

(declare-fun res!2460771 () Bool)

(assert (=> b!5841342 (=> res!2460771 e!3582917)))

(assert (=> b!5841342 (= res!2460771 (not (isEmpty!35761 (tail!11455 (tail!11455 s!2326)))))))

(declare-fun b!5841343 () Bool)

(assert (=> b!5841343 (= e!3582913 (nullable!5908 (derivativeStep!4646 r!7292 (head!12370 s!2326))))))

(declare-fun b!5841344 () Bool)

(declare-fun res!2460765 () Bool)

(assert (=> b!5841344 (=> (not res!2460765) (not e!3582918))))

(assert (=> b!5841344 (= res!2460765 (isEmpty!35761 (tail!11455 (tail!11455 s!2326))))))

(declare-fun b!5841345 () Bool)

(assert (=> b!5841345 (= e!3582917 (not (= (head!12370 (tail!11455 s!2326)) (c!1034845 (derivativeStep!4646 r!7292 (head!12370 s!2326))))))))

(declare-fun b!5841346 () Bool)

(assert (=> b!5841346 (= e!3582913 (matchR!8092 (derivativeStep!4646 (derivativeStep!4646 r!7292 (head!12370 s!2326)) (head!12370 (tail!11455 s!2326))) (tail!11455 (tail!11455 s!2326))))))

(declare-fun b!5841347 () Bool)

(assert (=> b!5841347 (= e!3582915 (= lt!2303801 call!456254))))

(assert (= (and d!1835358 c!1035015) b!5841343))

(assert (= (and d!1835358 (not c!1035015)) b!5841346))

(assert (= (and d!1835358 c!1035014) b!5841347))

(assert (= (and d!1835358 (not c!1035014)) b!5841334))

(assert (= (and b!5841334 c!1035016) b!5841336))

(assert (= (and b!5841334 (not c!1035016)) b!5841341))

(assert (= (and b!5841341 (not res!2460772)) b!5841337))

(assert (= (and b!5841337 res!2460769) b!5841339))

(assert (= (and b!5841339 res!2460768) b!5841344))

(assert (= (and b!5841344 res!2460765) b!5841335))

(assert (= (and b!5841337 (not res!2460766)) b!5841340))

(assert (= (and b!5841340 res!2460767) b!5841338))

(assert (= (and b!5841338 (not res!2460770)) b!5841342))

(assert (= (and b!5841342 (not res!2460771)) b!5841345))

(assert (= (or b!5841347 b!5841338 b!5841339) bm!456249))

(assert (=> b!5841346 m!6765150))

(declare-fun m!6765424 () Bool)

(assert (=> b!5841346 m!6765424))

(assert (=> b!5841346 m!6765236))

(assert (=> b!5841346 m!6765424))

(declare-fun m!6765426 () Bool)

(assert (=> b!5841346 m!6765426))

(assert (=> b!5841346 m!6765150))

(declare-fun m!6765428 () Bool)

(assert (=> b!5841346 m!6765428))

(assert (=> b!5841346 m!6765426))

(assert (=> b!5841346 m!6765428))

(declare-fun m!6765430 () Bool)

(assert (=> b!5841346 m!6765430))

(assert (=> bm!456249 m!6765150))

(assert (=> bm!456249 m!6765154))

(assert (=> b!5841344 m!6765150))

(assert (=> b!5841344 m!6765428))

(assert (=> b!5841344 m!6765428))

(declare-fun m!6765432 () Bool)

(assert (=> b!5841344 m!6765432))

(assert (=> b!5841342 m!6765150))

(assert (=> b!5841342 m!6765428))

(assert (=> b!5841342 m!6765428))

(assert (=> b!5841342 m!6765432))

(assert (=> d!1835358 m!6765150))

(assert (=> d!1835358 m!6765154))

(assert (=> d!1835358 m!6765236))

(declare-fun m!6765434 () Bool)

(assert (=> d!1835358 m!6765434))

(assert (=> b!5841345 m!6765150))

(assert (=> b!5841345 m!6765424))

(assert (=> b!5841343 m!6765236))

(declare-fun m!6765436 () Bool)

(assert (=> b!5841343 m!6765436))

(assert (=> b!5841335 m!6765150))

(assert (=> b!5841335 m!6765424))

(assert (=> b!5840917 d!1835358))

(declare-fun b!5841368 () Bool)

(declare-fun c!1035029 () Bool)

(assert (=> b!5841368 (= c!1035029 (nullable!5908 (regOne!32330 r!7292)))))

(declare-fun e!3582934 () Regex!15909)

(declare-fun e!3582933 () Regex!15909)

(assert (=> b!5841368 (= e!3582934 e!3582933)))

(declare-fun call!456264 () Regex!15909)

(declare-fun b!5841369 () Bool)

(declare-fun call!456266 () Regex!15909)

(assert (=> b!5841369 (= e!3582933 (Union!15909 (Concat!24754 call!456264 (regTwo!32330 r!7292)) call!456266))))

(declare-fun b!5841370 () Bool)

(declare-fun e!3582931 () Regex!15909)

(assert (=> b!5841370 (= e!3582931 (ite (= (head!12370 s!2326) (c!1034845 r!7292)) EmptyExpr!15909 EmptyLang!15909))))

(declare-fun c!1035030 () Bool)

(declare-fun call!456263 () Regex!15909)

(declare-fun c!1035028 () Bool)

(declare-fun bm!456258 () Bool)

(assert (=> bm!456258 (= call!456263 (derivativeStep!4646 (ite c!1035028 (regTwo!32331 r!7292) (ite c!1035030 (reg!16238 r!7292) (ite c!1035029 (regTwo!32330 r!7292) (regOne!32330 r!7292)))) (head!12370 s!2326)))))

(declare-fun b!5841371 () Bool)

(declare-fun e!3582930 () Regex!15909)

(assert (=> b!5841371 (= e!3582930 e!3582931)))

(declare-fun c!1035031 () Bool)

(assert (=> b!5841371 (= c!1035031 ((_ is ElementMatch!15909) r!7292))))

(declare-fun b!5841372 () Bool)

(assert (=> b!5841372 (= e!3582933 (Union!15909 (Concat!24754 call!456266 (regTwo!32330 r!7292)) EmptyLang!15909))))

(declare-fun b!5841373 () Bool)

(declare-fun e!3582932 () Regex!15909)

(assert (=> b!5841373 (= e!3582932 e!3582934)))

(assert (=> b!5841373 (= c!1035030 ((_ is Star!15909) r!7292))))

(declare-fun bm!456259 () Bool)

(assert (=> bm!456259 (= call!456264 (derivativeStep!4646 (ite c!1035028 (regOne!32331 r!7292) (regOne!32330 r!7292)) (head!12370 s!2326)))))

(declare-fun b!5841374 () Bool)

(assert (=> b!5841374 (= e!3582930 EmptyLang!15909)))

(declare-fun d!1835360 () Bool)

(declare-fun lt!2303804 () Regex!15909)

(assert (=> d!1835360 (validRegex!7645 lt!2303804)))

(assert (=> d!1835360 (= lt!2303804 e!3582930)))

(declare-fun c!1035027 () Bool)

(assert (=> d!1835360 (= c!1035027 (or ((_ is EmptyExpr!15909) r!7292) ((_ is EmptyLang!15909) r!7292)))))

(assert (=> d!1835360 (validRegex!7645 r!7292)))

(assert (=> d!1835360 (= (derivativeStep!4646 r!7292 (head!12370 s!2326)) lt!2303804)))

(declare-fun bm!456260 () Bool)

(declare-fun call!456265 () Regex!15909)

(assert (=> bm!456260 (= call!456265 call!456263)))

(declare-fun b!5841375 () Bool)

(assert (=> b!5841375 (= c!1035028 ((_ is Union!15909) r!7292))))

(assert (=> b!5841375 (= e!3582931 e!3582932)))

(declare-fun b!5841376 () Bool)

(assert (=> b!5841376 (= e!3582932 (Union!15909 call!456264 call!456263))))

(declare-fun bm!456261 () Bool)

(assert (=> bm!456261 (= call!456266 call!456265)))

(declare-fun b!5841377 () Bool)

(assert (=> b!5841377 (= e!3582934 (Concat!24754 call!456265 r!7292))))

(assert (= (and d!1835360 c!1035027) b!5841374))

(assert (= (and d!1835360 (not c!1035027)) b!5841371))

(assert (= (and b!5841371 c!1035031) b!5841370))

(assert (= (and b!5841371 (not c!1035031)) b!5841375))

(assert (= (and b!5841375 c!1035028) b!5841376))

(assert (= (and b!5841375 (not c!1035028)) b!5841373))

(assert (= (and b!5841373 c!1035030) b!5841377))

(assert (= (and b!5841373 (not c!1035030)) b!5841368))

(assert (= (and b!5841368 c!1035029) b!5841369))

(assert (= (and b!5841368 (not c!1035029)) b!5841372))

(assert (= (or b!5841369 b!5841372) bm!456261))

(assert (= (or b!5841377 bm!456261) bm!456260))

(assert (= (or b!5841376 bm!456260) bm!456258))

(assert (= (or b!5841376 b!5841369) bm!456259))

(declare-fun m!6765438 () Bool)

(assert (=> b!5841368 m!6765438))

(assert (=> bm!456258 m!6765146))

(declare-fun m!6765440 () Bool)

(assert (=> bm!456258 m!6765440))

(assert (=> bm!456259 m!6765146))

(declare-fun m!6765442 () Bool)

(assert (=> bm!456259 m!6765442))

(declare-fun m!6765444 () Bool)

(assert (=> d!1835360 m!6765444))

(assert (=> d!1835360 m!6765124))

(assert (=> b!5840917 d!1835360))

(assert (=> b!5840917 d!1835328))

(assert (=> b!5840917 d!1835340))

(declare-fun d!1835362 () Bool)

(declare-fun res!2460773 () Bool)

(declare-fun e!3582935 () Bool)

(assert (=> d!1835362 (=> res!2460773 e!3582935)))

(assert (=> d!1835362 (= res!2460773 ((_ is Nil!63902) lt!2303787))))

(assert (=> d!1835362 (= (forall!14996 lt!2303787 lambda!319539) e!3582935)))

(declare-fun b!5841378 () Bool)

(declare-fun e!3582936 () Bool)

(assert (=> b!5841378 (= e!3582935 e!3582936)))

(declare-fun res!2460774 () Bool)

(assert (=> b!5841378 (=> (not res!2460774) (not e!3582936))))

(assert (=> b!5841378 (= res!2460774 (dynLambda!24979 lambda!319539 (h!70350 lt!2303787)))))

(declare-fun b!5841379 () Bool)

(assert (=> b!5841379 (= e!3582936 (forall!14996 (t!377381 lt!2303787) lambda!319539))))

(assert (= (and d!1835362 (not res!2460773)) b!5841378))

(assert (= (and b!5841378 res!2460774) b!5841379))

(declare-fun b_lambda!219961 () Bool)

(assert (=> (not b_lambda!219961) (not b!5841378)))

(declare-fun m!6765446 () Bool)

(assert (=> b!5841378 m!6765446))

(declare-fun m!6765448 () Bool)

(assert (=> b!5841379 m!6765448))

(assert (=> d!1835278 d!1835362))

(declare-fun bm!456262 () Bool)

(declare-fun call!456267 () Bool)

(declare-fun call!456269 () Bool)

(assert (=> bm!456262 (= call!456267 call!456269)))

(declare-fun b!5841380 () Bool)

(declare-fun e!3582938 () Bool)

(declare-fun call!456268 () Bool)

(assert (=> b!5841380 (= e!3582938 call!456268)))

(declare-fun b!5841381 () Bool)

(declare-fun e!3582940 () Bool)

(declare-fun e!3582943 () Bool)

(assert (=> b!5841381 (= e!3582940 e!3582943)))

(declare-fun res!2460775 () Bool)

(assert (=> b!5841381 (=> (not res!2460775) (not e!3582943))))

(assert (=> b!5841381 (= res!2460775 call!456267)))

(declare-fun b!5841382 () Bool)

(declare-fun e!3582941 () Bool)

(declare-fun e!3582939 () Bool)

(assert (=> b!5841382 (= e!3582941 e!3582939)))

(declare-fun c!1035032 () Bool)

(assert (=> b!5841382 (= c!1035032 ((_ is Union!15909) lt!2303764))))

(declare-fun b!5841383 () Bool)

(declare-fun e!3582937 () Bool)

(assert (=> b!5841383 (= e!3582937 e!3582941)))

(declare-fun c!1035033 () Bool)

(assert (=> b!5841383 (= c!1035033 ((_ is Star!15909) lt!2303764))))

(declare-fun b!5841384 () Bool)

(declare-fun e!3582942 () Bool)

(assert (=> b!5841384 (= e!3582942 call!456269)))

(declare-fun b!5841385 () Bool)

(declare-fun res!2460779 () Bool)

(assert (=> b!5841385 (=> (not res!2460779) (not e!3582938))))

(assert (=> b!5841385 (= res!2460779 call!456267)))

(assert (=> b!5841385 (= e!3582939 e!3582938)))

(declare-fun bm!456263 () Bool)

(assert (=> bm!456263 (= call!456268 (validRegex!7645 (ite c!1035032 (regTwo!32331 lt!2303764) (regTwo!32330 lt!2303764))))))

(declare-fun b!5841387 () Bool)

(declare-fun res!2460777 () Bool)

(assert (=> b!5841387 (=> res!2460777 e!3582940)))

(assert (=> b!5841387 (= res!2460777 (not ((_ is Concat!24754) lt!2303764)))))

(assert (=> b!5841387 (= e!3582939 e!3582940)))

(declare-fun d!1835364 () Bool)

(declare-fun res!2460778 () Bool)

(assert (=> d!1835364 (=> res!2460778 e!3582937)))

(assert (=> d!1835364 (= res!2460778 ((_ is ElementMatch!15909) lt!2303764))))

(assert (=> d!1835364 (= (validRegex!7645 lt!2303764) e!3582937)))

(declare-fun b!5841386 () Bool)

(assert (=> b!5841386 (= e!3582941 e!3582942)))

(declare-fun res!2460776 () Bool)

(assert (=> b!5841386 (= res!2460776 (not (nullable!5908 (reg!16238 lt!2303764))))))

(assert (=> b!5841386 (=> (not res!2460776) (not e!3582942))))

(declare-fun bm!456264 () Bool)

(assert (=> bm!456264 (= call!456269 (validRegex!7645 (ite c!1035033 (reg!16238 lt!2303764) (ite c!1035032 (regOne!32331 lt!2303764) (regOne!32330 lt!2303764)))))))

(declare-fun b!5841388 () Bool)

(assert (=> b!5841388 (= e!3582943 call!456268)))

(assert (= (and d!1835364 (not res!2460778)) b!5841383))

(assert (= (and b!5841383 c!1035033) b!5841386))

(assert (= (and b!5841383 (not c!1035033)) b!5841382))

(assert (= (and b!5841386 res!2460776) b!5841384))

(assert (= (and b!5841382 c!1035032) b!5841385))

(assert (= (and b!5841382 (not c!1035032)) b!5841387))

(assert (= (and b!5841385 res!2460779) b!5841380))

(assert (= (and b!5841387 (not res!2460777)) b!5841381))

(assert (= (and b!5841381 res!2460775) b!5841388))

(assert (= (or b!5841380 b!5841388) bm!456263))

(assert (= (or b!5841385 b!5841381) bm!456262))

(assert (= (or b!5841384 bm!456262) bm!456264))

(declare-fun m!6765450 () Bool)

(assert (=> bm!456263 m!6765450))

(declare-fun m!6765452 () Bool)

(assert (=> b!5841386 m!6765452))

(declare-fun m!6765454 () Bool)

(assert (=> bm!456264 m!6765454))

(assert (=> d!1835248 d!1835364))

(assert (=> d!1835248 d!1835270))

(assert (=> d!1835248 d!1835278))

(declare-fun bm!456265 () Bool)

(declare-fun call!456270 () Bool)

(declare-fun call!456272 () Bool)

(assert (=> bm!456265 (= call!456270 call!456272)))

(declare-fun b!5841389 () Bool)

(declare-fun e!3582945 () Bool)

(declare-fun call!456271 () Bool)

(assert (=> b!5841389 (= e!3582945 call!456271)))

(declare-fun b!5841390 () Bool)

(declare-fun e!3582947 () Bool)

(declare-fun e!3582950 () Bool)

(assert (=> b!5841390 (= e!3582947 e!3582950)))

(declare-fun res!2460780 () Bool)

(assert (=> b!5841390 (=> (not res!2460780) (not e!3582950))))

(assert (=> b!5841390 (= res!2460780 call!456270)))

(declare-fun b!5841391 () Bool)

(declare-fun e!3582948 () Bool)

(declare-fun e!3582946 () Bool)

(assert (=> b!5841391 (= e!3582948 e!3582946)))

(declare-fun c!1035034 () Bool)

(assert (=> b!5841391 (= c!1035034 ((_ is Union!15909) lt!2303770))))

(declare-fun b!5841392 () Bool)

(declare-fun e!3582944 () Bool)

(assert (=> b!5841392 (= e!3582944 e!3582948)))

(declare-fun c!1035035 () Bool)

(assert (=> b!5841392 (= c!1035035 ((_ is Star!15909) lt!2303770))))

(declare-fun b!5841393 () Bool)

(declare-fun e!3582949 () Bool)

(assert (=> b!5841393 (= e!3582949 call!456272)))

(declare-fun b!5841394 () Bool)

(declare-fun res!2460784 () Bool)

(assert (=> b!5841394 (=> (not res!2460784) (not e!3582945))))

(assert (=> b!5841394 (= res!2460784 call!456270)))

(assert (=> b!5841394 (= e!3582946 e!3582945)))

(declare-fun bm!456266 () Bool)

(assert (=> bm!456266 (= call!456271 (validRegex!7645 (ite c!1035034 (regTwo!32331 lt!2303770) (regTwo!32330 lt!2303770))))))

(declare-fun b!5841396 () Bool)

(declare-fun res!2460782 () Bool)

(assert (=> b!5841396 (=> res!2460782 e!3582947)))

(assert (=> b!5841396 (= res!2460782 (not ((_ is Concat!24754) lt!2303770)))))

(assert (=> b!5841396 (= e!3582946 e!3582947)))

(declare-fun d!1835366 () Bool)

(declare-fun res!2460783 () Bool)

(assert (=> d!1835366 (=> res!2460783 e!3582944)))

(assert (=> d!1835366 (= res!2460783 ((_ is ElementMatch!15909) lt!2303770))))

(assert (=> d!1835366 (= (validRegex!7645 lt!2303770) e!3582944)))

(declare-fun b!5841395 () Bool)

(assert (=> b!5841395 (= e!3582948 e!3582949)))

(declare-fun res!2460781 () Bool)

(assert (=> b!5841395 (= res!2460781 (not (nullable!5908 (reg!16238 lt!2303770))))))

(assert (=> b!5841395 (=> (not res!2460781) (not e!3582949))))

(declare-fun bm!456267 () Bool)

(assert (=> bm!456267 (= call!456272 (validRegex!7645 (ite c!1035035 (reg!16238 lt!2303770) (ite c!1035034 (regOne!32331 lt!2303770) (regOne!32330 lt!2303770)))))))

(declare-fun b!5841397 () Bool)

(assert (=> b!5841397 (= e!3582950 call!456271)))

(assert (= (and d!1835366 (not res!2460783)) b!5841392))

(assert (= (and b!5841392 c!1035035) b!5841395))

(assert (= (and b!5841392 (not c!1035035)) b!5841391))

(assert (= (and b!5841395 res!2460781) b!5841393))

(assert (= (and b!5841391 c!1035034) b!5841394))

(assert (= (and b!5841391 (not c!1035034)) b!5841396))

(assert (= (and b!5841394 res!2460784) b!5841389))

(assert (= (and b!5841396 (not res!2460782)) b!5841390))

(assert (= (and b!5841390 res!2460780) b!5841397))

(assert (= (or b!5841389 b!5841397) bm!456266))

(assert (= (or b!5841394 b!5841390) bm!456265))

(assert (= (or b!5841393 bm!456265) bm!456267))

(declare-fun m!6765456 () Bool)

(assert (=> bm!456266 m!6765456))

(declare-fun m!6765458 () Bool)

(assert (=> b!5841395 m!6765458))

(declare-fun m!6765460 () Bool)

(assert (=> bm!456267 m!6765460))

(assert (=> d!1835258 d!1835366))

(declare-fun d!1835368 () Bool)

(declare-fun res!2460785 () Bool)

(declare-fun e!3582951 () Bool)

(assert (=> d!1835368 (=> res!2460785 e!3582951)))

(assert (=> d!1835368 (= res!2460785 ((_ is Nil!63902) (exprs!5793 (h!70351 zl!343))))))

(assert (=> d!1835368 (= (forall!14996 (exprs!5793 (h!70351 zl!343)) lambda!319525) e!3582951)))

(declare-fun b!5841398 () Bool)

(declare-fun e!3582952 () Bool)

(assert (=> b!5841398 (= e!3582951 e!3582952)))

(declare-fun res!2460786 () Bool)

(assert (=> b!5841398 (=> (not res!2460786) (not e!3582952))))

(assert (=> b!5841398 (= res!2460786 (dynLambda!24979 lambda!319525 (h!70350 (exprs!5793 (h!70351 zl!343)))))))

(declare-fun b!5841399 () Bool)

(assert (=> b!5841399 (= e!3582952 (forall!14996 (t!377381 (exprs!5793 (h!70351 zl!343))) lambda!319525))))

(assert (= (and d!1835368 (not res!2460785)) b!5841398))

(assert (= (and b!5841398 res!2460786) b!5841399))

(declare-fun b_lambda!219963 () Bool)

(assert (=> (not b_lambda!219963) (not b!5841398)))

(declare-fun m!6765462 () Bool)

(assert (=> b!5841398 m!6765462))

(declare-fun m!6765464 () Bool)

(assert (=> b!5841399 m!6765464))

(assert (=> d!1835258 d!1835368))

(assert (=> b!5840915 d!1835338))

(assert (=> b!5840915 d!1835340))

(assert (=> b!5840783 d!1835328))

(declare-fun d!1835370 () Bool)

(assert (=> d!1835370 (= (Exists!2980 (ite c!1034913 lambda!319528 lambda!319529)) (choose!44344 (ite c!1034913 lambda!319528 lambda!319529)))))

(declare-fun bs!1376237 () Bool)

(assert (= bs!1376237 d!1835370))

(declare-fun m!6765466 () Bool)

(assert (=> bs!1376237 m!6765466))

(assert (=> bm!456199 d!1835370))

(declare-fun d!1835372 () Bool)

(assert (=> d!1835372 (= (isEmpty!35763 (unfocusZipperList!1330 zl!343)) ((_ is Nil!63902) (unfocusZipperList!1330 zl!343)))))

(assert (=> b!5840957 d!1835372))

(assert (=> b!5840792 d!1835338))

(assert (=> b!5840792 d!1835340))

(declare-fun bs!1376238 () Bool)

(declare-fun d!1835374 () Bool)

(assert (= bs!1376238 (and d!1835374 d!1835252)))

(declare-fun lambda!319557 () Int)

(assert (=> bs!1376238 (= lambda!319557 lambda!319518)))

(declare-fun bs!1376239 () Bool)

(assert (= bs!1376239 (and d!1835374 d!1835250)))

(assert (=> bs!1376239 (= lambda!319557 lambda!319517)))

(declare-fun bs!1376240 () Bool)

(assert (= bs!1376240 (and d!1835374 d!1835270)))

(assert (=> bs!1376240 (= lambda!319557 lambda!319536)))

(declare-fun bs!1376241 () Bool)

(assert (= bs!1376241 (and d!1835374 d!1835278)))

(assert (=> bs!1376241 (= lambda!319557 lambda!319539)))

(declare-fun bs!1376242 () Bool)

(assert (= bs!1376242 (and d!1835374 d!1835344)))

(assert (=> bs!1376242 (= lambda!319557 lambda!319555)))

(declare-fun bs!1376243 () Bool)

(assert (= bs!1376243 (and d!1835374 d!1835256)))

(assert (=> bs!1376243 (= lambda!319557 lambda!319521)))

(declare-fun bs!1376244 () Bool)

(assert (= bs!1376244 (and d!1835374 d!1835258)))

(assert (=> bs!1376244 (= lambda!319557 lambda!319525)))

(declare-fun bs!1376245 () Bool)

(assert (= bs!1376245 (and d!1835374 d!1835352)))

(assert (=> bs!1376245 (= lambda!319557 lambda!319556)))

(declare-fun b!5841400 () Bool)

(declare-fun e!3582956 () Regex!15909)

(assert (=> b!5841400 (= e!3582956 (h!70350 (t!377381 (exprs!5793 (h!70351 zl!343)))))))

(declare-fun b!5841401 () Bool)

(declare-fun e!3582953 () Regex!15909)

(assert (=> b!5841401 (= e!3582956 e!3582953)))

(declare-fun c!1035037 () Bool)

(assert (=> b!5841401 (= c!1035037 ((_ is Cons!63902) (t!377381 (exprs!5793 (h!70351 zl!343)))))))

(declare-fun b!5841402 () Bool)

(assert (=> b!5841402 (= e!3582953 (Concat!24754 (h!70350 (t!377381 (exprs!5793 (h!70351 zl!343)))) (generalisedConcat!1506 (t!377381 (t!377381 (exprs!5793 (h!70351 zl!343)))))))))

(declare-fun b!5841403 () Bool)

(assert (=> b!5841403 (= e!3582953 EmptyExpr!15909)))

(declare-fun b!5841404 () Bool)

(declare-fun e!3582958 () Bool)

(assert (=> b!5841404 (= e!3582958 (isEmpty!35763 (t!377381 (t!377381 (exprs!5793 (h!70351 zl!343))))))))

(declare-fun b!5841405 () Bool)

(declare-fun e!3582955 () Bool)

(declare-fun lt!2303805 () Regex!15909)

(assert (=> b!5841405 (= e!3582955 (isConcat!867 lt!2303805))))

(declare-fun b!5841406 () Bool)

(declare-fun e!3582954 () Bool)

(assert (=> b!5841406 (= e!3582954 (isEmptyExpr!1344 lt!2303805))))

(declare-fun b!5841408 () Bool)

(assert (=> b!5841408 (= e!3582955 (= lt!2303805 (head!12372 (t!377381 (exprs!5793 (h!70351 zl!343))))))))

(declare-fun b!5841409 () Bool)

(assert (=> b!5841409 (= e!3582954 e!3582955)))

(declare-fun c!1035039 () Bool)

(assert (=> b!5841409 (= c!1035039 (isEmpty!35763 (tail!11457 (t!377381 (exprs!5793 (h!70351 zl!343))))))))

(declare-fun b!5841407 () Bool)

(declare-fun e!3582957 () Bool)

(assert (=> b!5841407 (= e!3582957 e!3582954)))

(declare-fun c!1035038 () Bool)

(assert (=> b!5841407 (= c!1035038 (isEmpty!35763 (t!377381 (exprs!5793 (h!70351 zl!343)))))))

(assert (=> d!1835374 e!3582957))

(declare-fun res!2460788 () Bool)

(assert (=> d!1835374 (=> (not res!2460788) (not e!3582957))))

(assert (=> d!1835374 (= res!2460788 (validRegex!7645 lt!2303805))))

(assert (=> d!1835374 (= lt!2303805 e!3582956)))

(declare-fun c!1035036 () Bool)

(assert (=> d!1835374 (= c!1035036 e!3582958)))

(declare-fun res!2460787 () Bool)

(assert (=> d!1835374 (=> (not res!2460787) (not e!3582958))))

(assert (=> d!1835374 (= res!2460787 ((_ is Cons!63902) (t!377381 (exprs!5793 (h!70351 zl!343)))))))

(assert (=> d!1835374 (forall!14996 (t!377381 (exprs!5793 (h!70351 zl!343))) lambda!319557)))

(assert (=> d!1835374 (= (generalisedConcat!1506 (t!377381 (exprs!5793 (h!70351 zl!343)))) lt!2303805)))

(assert (= (and d!1835374 res!2460787) b!5841404))

(assert (= (and d!1835374 c!1035036) b!5841400))

(assert (= (and d!1835374 (not c!1035036)) b!5841401))

(assert (= (and b!5841401 c!1035037) b!5841402))

(assert (= (and b!5841401 (not c!1035037)) b!5841403))

(assert (= (and d!1835374 res!2460788) b!5841407))

(assert (= (and b!5841407 c!1035038) b!5841406))

(assert (= (and b!5841407 (not c!1035038)) b!5841409))

(assert (= (and b!5841409 c!1035039) b!5841408))

(assert (= (and b!5841409 (not c!1035039)) b!5841405))

(declare-fun m!6765468 () Bool)

(assert (=> b!5841406 m!6765468))

(declare-fun m!6765470 () Bool)

(assert (=> b!5841405 m!6765470))

(declare-fun m!6765472 () Bool)

(assert (=> d!1835374 m!6765472))

(declare-fun m!6765474 () Bool)

(assert (=> d!1835374 m!6765474))

(declare-fun m!6765476 () Bool)

(assert (=> b!5841404 m!6765476))

(assert (=> b!5841407 m!6765222))

(declare-fun m!6765478 () Bool)

(assert (=> b!5841408 m!6765478))

(declare-fun m!6765480 () Bool)

(assert (=> b!5841402 m!6765480))

(declare-fun m!6765482 () Bool)

(assert (=> b!5841409 m!6765482))

(assert (=> b!5841409 m!6765482))

(declare-fun m!6765484 () Bool)

(assert (=> b!5841409 m!6765484))

(assert (=> b!5840866 d!1835374))

(declare-fun bs!1376246 () Bool)

(declare-fun d!1835376 () Bool)

(assert (= bs!1376246 (and d!1835376 d!1835252)))

(declare-fun lambda!319558 () Int)

(assert (=> bs!1376246 (= lambda!319558 lambda!319518)))

(declare-fun bs!1376247 () Bool)

(assert (= bs!1376247 (and d!1835376 d!1835250)))

(assert (=> bs!1376247 (= lambda!319558 lambda!319517)))

(declare-fun bs!1376248 () Bool)

(assert (= bs!1376248 (and d!1835376 d!1835270)))

(assert (=> bs!1376248 (= lambda!319558 lambda!319536)))

(declare-fun bs!1376249 () Bool)

(assert (= bs!1376249 (and d!1835376 d!1835278)))

(assert (=> bs!1376249 (= lambda!319558 lambda!319539)))

(declare-fun bs!1376250 () Bool)

(assert (= bs!1376250 (and d!1835376 d!1835344)))

(assert (=> bs!1376250 (= lambda!319558 lambda!319555)))

(declare-fun bs!1376251 () Bool)

(assert (= bs!1376251 (and d!1835376 d!1835374)))

(assert (=> bs!1376251 (= lambda!319558 lambda!319557)))

(declare-fun bs!1376252 () Bool)

(assert (= bs!1376252 (and d!1835376 d!1835256)))

(assert (=> bs!1376252 (= lambda!319558 lambda!319521)))

(declare-fun bs!1376253 () Bool)

(assert (= bs!1376253 (and d!1835376 d!1835258)))

(assert (=> bs!1376253 (= lambda!319558 lambda!319525)))

(declare-fun bs!1376254 () Bool)

(assert (= bs!1376254 (and d!1835376 d!1835352)))

(assert (=> bs!1376254 (= lambda!319558 lambda!319556)))

(declare-fun b!5841410 () Bool)

(declare-fun e!3582964 () Regex!15909)

(assert (=> b!5841410 (= e!3582964 (Union!15909 (h!70350 (t!377381 (unfocusZipperList!1330 zl!343))) (generalisedUnion!1753 (t!377381 (t!377381 (unfocusZipperList!1330 zl!343))))))))

(declare-fun b!5841411 () Bool)

(declare-fun e!3582961 () Bool)

(declare-fun lt!2303806 () Regex!15909)

(assert (=> b!5841411 (= e!3582961 (= lt!2303806 (head!12372 (t!377381 (unfocusZipperList!1330 zl!343)))))))

(declare-fun b!5841412 () Bool)

(declare-fun e!3582962 () Bool)

(declare-fun e!3582959 () Bool)

(assert (=> b!5841412 (= e!3582962 e!3582959)))

(declare-fun c!1035040 () Bool)

(assert (=> b!5841412 (= c!1035040 (isEmpty!35763 (t!377381 (unfocusZipperList!1330 zl!343))))))

(declare-fun b!5841413 () Bool)

(declare-fun e!3582960 () Regex!15909)

(assert (=> b!5841413 (= e!3582960 (h!70350 (t!377381 (unfocusZipperList!1330 zl!343))))))

(assert (=> d!1835376 e!3582962))

(declare-fun res!2460790 () Bool)

(assert (=> d!1835376 (=> (not res!2460790) (not e!3582962))))

(assert (=> d!1835376 (= res!2460790 (validRegex!7645 lt!2303806))))

(assert (=> d!1835376 (= lt!2303806 e!3582960)))

(declare-fun c!1035041 () Bool)

(declare-fun e!3582963 () Bool)

(assert (=> d!1835376 (= c!1035041 e!3582963)))

(declare-fun res!2460789 () Bool)

(assert (=> d!1835376 (=> (not res!2460789) (not e!3582963))))

(assert (=> d!1835376 (= res!2460789 ((_ is Cons!63902) (t!377381 (unfocusZipperList!1330 zl!343))))))

(assert (=> d!1835376 (forall!14996 (t!377381 (unfocusZipperList!1330 zl!343)) lambda!319558)))

(assert (=> d!1835376 (= (generalisedUnion!1753 (t!377381 (unfocusZipperList!1330 zl!343))) lt!2303806)))

(declare-fun b!5841414 () Bool)

(assert (=> b!5841414 (= e!3582959 (isEmptyLang!1352 lt!2303806))))

(declare-fun b!5841415 () Bool)

(assert (=> b!5841415 (= e!3582964 EmptyLang!15909)))

(declare-fun b!5841416 () Bool)

(assert (=> b!5841416 (= e!3582963 (isEmpty!35763 (t!377381 (t!377381 (unfocusZipperList!1330 zl!343)))))))

(declare-fun b!5841417 () Bool)

(assert (=> b!5841417 (= e!3582961 (isUnion!782 lt!2303806))))

(declare-fun b!5841418 () Bool)

(assert (=> b!5841418 (= e!3582960 e!3582964)))

(declare-fun c!1035042 () Bool)

(assert (=> b!5841418 (= c!1035042 ((_ is Cons!63902) (t!377381 (unfocusZipperList!1330 zl!343))))))

(declare-fun b!5841419 () Bool)

(assert (=> b!5841419 (= e!3582959 e!3582961)))

(declare-fun c!1035043 () Bool)

(assert (=> b!5841419 (= c!1035043 (isEmpty!35763 (tail!11457 (t!377381 (unfocusZipperList!1330 zl!343)))))))

(assert (= (and d!1835376 res!2460789) b!5841416))

(assert (= (and d!1835376 c!1035041) b!5841413))

(assert (= (and d!1835376 (not c!1035041)) b!5841418))

(assert (= (and b!5841418 c!1035042) b!5841410))

(assert (= (and b!5841418 (not c!1035042)) b!5841415))

(assert (= (and d!1835376 res!2460790) b!5841412))

(assert (= (and b!5841412 c!1035040) b!5841414))

(assert (= (and b!5841412 (not c!1035040)) b!5841419))

(assert (= (and b!5841419 c!1035043) b!5841411))

(assert (= (and b!5841419 (not c!1035043)) b!5841417))

(declare-fun m!6765486 () Bool)

(assert (=> b!5841410 m!6765486))

(declare-fun m!6765488 () Bool)

(assert (=> b!5841414 m!6765488))

(assert (=> b!5841412 m!6765278))

(declare-fun m!6765490 () Bool)

(assert (=> b!5841417 m!6765490))

(declare-fun m!6765492 () Bool)

(assert (=> b!5841416 m!6765492))

(declare-fun m!6765494 () Bool)

(assert (=> d!1835376 m!6765494))

(declare-fun m!6765496 () Bool)

(assert (=> d!1835376 m!6765496))

(declare-fun m!6765498 () Bool)

(assert (=> b!5841419 m!6765498))

(assert (=> b!5841419 m!6765498))

(declare-fun m!6765500 () Bool)

(assert (=> b!5841419 m!6765500))

(declare-fun m!6765502 () Bool)

(assert (=> b!5841411 m!6765502))

(assert (=> b!5840955 d!1835376))

(assert (=> b!5840790 d!1835338))

(assert (=> b!5840790 d!1835340))

(declare-fun bs!1376255 () Bool)

(declare-fun b!5841427 () Bool)

(assert (= bs!1376255 (and b!5841427 b!5840881)))

(declare-fun lambda!319559 () Int)

(assert (=> bs!1376255 (= (and (= (reg!16238 (regTwo!32331 (regTwo!32331 r!7292))) (reg!16238 r!7292)) (= (regTwo!32331 (regTwo!32331 r!7292)) r!7292)) (= lambda!319559 lambda!319528))))

(declare-fun bs!1376256 () Bool)

(assert (= bs!1376256 (and b!5841427 b!5840716)))

(assert (=> bs!1376256 (not (= lambda!319559 lambda!319512))))

(declare-fun bs!1376257 () Bool)

(assert (= bs!1376257 (and b!5841427 b!5840876)))

(assert (=> bs!1376257 (not (= lambda!319559 lambda!319529))))

(declare-fun bs!1376258 () Bool)

(assert (= bs!1376258 (and b!5841427 b!5840721)))

(assert (=> bs!1376258 (= (and (= (reg!16238 (regTwo!32331 (regTwo!32331 r!7292))) (reg!16238 (regTwo!32331 r!7292))) (= (regTwo!32331 (regTwo!32331 r!7292)) (regTwo!32331 r!7292))) (= lambda!319559 lambda!319511))))

(declare-fun bs!1376259 () Bool)

(assert (= bs!1376259 (and b!5841427 b!5840778)))

(assert (=> bs!1376259 (= (and (= (reg!16238 (regTwo!32331 (regTwo!32331 r!7292))) (reg!16238 (regOne!32331 r!7292))) (= (regTwo!32331 (regTwo!32331 r!7292)) (regOne!32331 r!7292))) (= lambda!319559 lambda!319513))))

(declare-fun bs!1376260 () Bool)

(assert (= bs!1376260 (and b!5841427 b!5840773)))

(assert (=> bs!1376260 (not (= lambda!319559 lambda!319514))))

(assert (=> b!5841427 true))

(assert (=> b!5841427 true))

(declare-fun bs!1376261 () Bool)

(declare-fun b!5841422 () Bool)

(assert (= bs!1376261 (and b!5841422 b!5841427)))

(declare-fun lambda!319560 () Int)

(assert (=> bs!1376261 (not (= lambda!319560 lambda!319559))))

(declare-fun bs!1376262 () Bool)

(assert (= bs!1376262 (and b!5841422 b!5840881)))

(assert (=> bs!1376262 (not (= lambda!319560 lambda!319528))))

(declare-fun bs!1376263 () Bool)

(assert (= bs!1376263 (and b!5841422 b!5840716)))

(assert (=> bs!1376263 (= (and (= (regOne!32330 (regTwo!32331 (regTwo!32331 r!7292))) (regOne!32330 (regTwo!32331 r!7292))) (= (regTwo!32330 (regTwo!32331 (regTwo!32331 r!7292))) (regTwo!32330 (regTwo!32331 r!7292)))) (= lambda!319560 lambda!319512))))

(declare-fun bs!1376264 () Bool)

(assert (= bs!1376264 (and b!5841422 b!5840876)))

(assert (=> bs!1376264 (= (and (= (regOne!32330 (regTwo!32331 (regTwo!32331 r!7292))) (regOne!32330 r!7292)) (= (regTwo!32330 (regTwo!32331 (regTwo!32331 r!7292))) (regTwo!32330 r!7292))) (= lambda!319560 lambda!319529))))

(declare-fun bs!1376265 () Bool)

(assert (= bs!1376265 (and b!5841422 b!5840721)))

(assert (=> bs!1376265 (not (= lambda!319560 lambda!319511))))

(declare-fun bs!1376266 () Bool)

(assert (= bs!1376266 (and b!5841422 b!5840778)))

(assert (=> bs!1376266 (not (= lambda!319560 lambda!319513))))

(declare-fun bs!1376267 () Bool)

(assert (= bs!1376267 (and b!5841422 b!5840773)))

(assert (=> bs!1376267 (= (and (= (regOne!32330 (regTwo!32331 (regTwo!32331 r!7292))) (regOne!32330 (regOne!32331 r!7292))) (= (regTwo!32330 (regTwo!32331 (regTwo!32331 r!7292))) (regTwo!32330 (regOne!32331 r!7292)))) (= lambda!319560 lambda!319514))))

(assert (=> b!5841422 true))

(assert (=> b!5841422 true))

(declare-fun bm!456268 () Bool)

(declare-fun call!456273 () Bool)

(assert (=> bm!456268 (= call!456273 (isEmpty!35761 s!2326))))

(declare-fun b!5841420 () Bool)

(declare-fun e!3582967 () Bool)

(declare-fun e!3582970 () Bool)

(assert (=> b!5841420 (= e!3582967 e!3582970)))

(declare-fun res!2460793 () Bool)

(assert (=> b!5841420 (= res!2460793 (not ((_ is EmptyLang!15909) (regTwo!32331 (regTwo!32331 r!7292)))))))

(assert (=> b!5841420 (=> (not res!2460793) (not e!3582970))))

(declare-fun b!5841421 () Bool)

(declare-fun e!3582966 () Bool)

(assert (=> b!5841421 (= e!3582966 (matchRSpec!3010 (regTwo!32331 (regTwo!32331 (regTwo!32331 r!7292))) s!2326))))

(declare-fun e!3582968 () Bool)

(declare-fun call!456274 () Bool)

(assert (=> b!5841422 (= e!3582968 call!456274)))

(declare-fun d!1835378 () Bool)

(declare-fun c!1035046 () Bool)

(assert (=> d!1835378 (= c!1035046 ((_ is EmptyExpr!15909) (regTwo!32331 (regTwo!32331 r!7292))))))

(assert (=> d!1835378 (= (matchRSpec!3010 (regTwo!32331 (regTwo!32331 r!7292)) s!2326) e!3582967)))

(declare-fun b!5841423 () Bool)

(declare-fun c!1035045 () Bool)

(assert (=> b!5841423 (= c!1035045 ((_ is Union!15909) (regTwo!32331 (regTwo!32331 r!7292))))))

(declare-fun e!3582971 () Bool)

(declare-fun e!3582965 () Bool)

(assert (=> b!5841423 (= e!3582971 e!3582965)))

(declare-fun c!1035047 () Bool)

(declare-fun bm!456269 () Bool)

(assert (=> bm!456269 (= call!456274 (Exists!2980 (ite c!1035047 lambda!319559 lambda!319560)))))

(declare-fun b!5841424 () Bool)

(declare-fun res!2460792 () Bool)

(declare-fun e!3582969 () Bool)

(assert (=> b!5841424 (=> res!2460792 e!3582969)))

(assert (=> b!5841424 (= res!2460792 call!456273)))

(assert (=> b!5841424 (= e!3582968 e!3582969)))

(declare-fun b!5841425 () Bool)

(assert (=> b!5841425 (= e!3582971 (= s!2326 (Cons!63904 (c!1034845 (regTwo!32331 (regTwo!32331 r!7292))) Nil!63904)))))

(declare-fun b!5841426 () Bool)

(assert (=> b!5841426 (= e!3582965 e!3582968)))

(assert (=> b!5841426 (= c!1035047 ((_ is Star!15909) (regTwo!32331 (regTwo!32331 r!7292))))))

(assert (=> b!5841427 (= e!3582969 call!456274)))

(declare-fun b!5841428 () Bool)

(assert (=> b!5841428 (= e!3582967 call!456273)))

(declare-fun b!5841429 () Bool)

(declare-fun c!1035044 () Bool)

(assert (=> b!5841429 (= c!1035044 ((_ is ElementMatch!15909) (regTwo!32331 (regTwo!32331 r!7292))))))

(assert (=> b!5841429 (= e!3582970 e!3582971)))

(declare-fun b!5841430 () Bool)

(assert (=> b!5841430 (= e!3582965 e!3582966)))

(declare-fun res!2460791 () Bool)

(assert (=> b!5841430 (= res!2460791 (matchRSpec!3010 (regOne!32331 (regTwo!32331 (regTwo!32331 r!7292))) s!2326))))

(assert (=> b!5841430 (=> res!2460791 e!3582966)))

(assert (= (and d!1835378 c!1035046) b!5841428))

(assert (= (and d!1835378 (not c!1035046)) b!5841420))

(assert (= (and b!5841420 res!2460793) b!5841429))

(assert (= (and b!5841429 c!1035044) b!5841425))

(assert (= (and b!5841429 (not c!1035044)) b!5841423))

(assert (= (and b!5841423 c!1035045) b!5841430))

(assert (= (and b!5841423 (not c!1035045)) b!5841426))

(assert (= (and b!5841430 (not res!2460791)) b!5841421))

(assert (= (and b!5841426 c!1035047) b!5841424))

(assert (= (and b!5841426 (not c!1035047)) b!5841422))

(assert (= (and b!5841424 (not res!2460792)) b!5841427))

(assert (= (or b!5841427 b!5841422) bm!456269))

(assert (= (or b!5841428 b!5841424) bm!456268))

(assert (=> bm!456268 m!6765134))

(declare-fun m!6765504 () Bool)

(assert (=> b!5841421 m!6765504))

(declare-fun m!6765506 () Bool)

(assert (=> bm!456269 m!6765506))

(declare-fun m!6765508 () Bool)

(assert (=> b!5841430 m!6765508))

(assert (=> b!5840715 d!1835378))

(assert (=> b!5840758 d!1835328))

(assert (=> b!5840767 d!1835338))

(assert (=> b!5840767 d!1835340))

(declare-fun d!1835380 () Bool)

(assert (=> d!1835380 (= (head!12372 (exprs!5793 (h!70351 zl!343))) (h!70350 (exprs!5793 (h!70351 zl!343))))))

(assert (=> b!5840872 d!1835380))

(assert (=> bm!456192 d!1835324))

(declare-fun b!5841431 () Bool)

(declare-fun e!3582972 () (InoxSet Context!10586))

(assert (=> b!5841431 (= e!3582972 ((as const (Array Context!10586 Bool)) false))))

(declare-fun call!456275 () (InoxSet Context!10586))

(declare-fun e!3582973 () (InoxSet Context!10586))

(declare-fun b!5841432 () Bool)

(assert (=> b!5841432 (= e!3582973 ((_ map or) call!456275 (derivationStepZipperUp!1101 (Context!10587 (t!377381 (exprs!5793 (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))))))) (h!70352 s!2326))))))

(declare-fun b!5841433 () Bool)

(declare-fun e!3582974 () Bool)

(assert (=> b!5841433 (= e!3582974 (nullable!5908 (h!70350 (exprs!5793 (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))))))))))

(declare-fun b!5841434 () Bool)

(assert (=> b!5841434 (= e!3582973 e!3582972)))

(declare-fun c!1035049 () Bool)

(assert (=> b!5841434 (= c!1035049 ((_ is Cons!63902) (exprs!5793 (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))))))))

(declare-fun b!5841435 () Bool)

(assert (=> b!5841435 (= e!3582972 call!456275)))

(declare-fun d!1835382 () Bool)

(declare-fun c!1035048 () Bool)

(assert (=> d!1835382 (= c!1035048 e!3582974)))

(declare-fun res!2460794 () Bool)

(assert (=> d!1835382 (=> (not res!2460794) (not e!3582974))))

(assert (=> d!1835382 (= res!2460794 ((_ is Cons!63902) (exprs!5793 (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))))))))

(assert (=> d!1835382 (= (derivationStepZipperUp!1101 (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (h!70352 s!2326)) e!3582973)))

(declare-fun bm!456270 () Bool)

(assert (=> bm!456270 (= call!456275 (derivationStepZipperDown!1174 (h!70350 (exprs!5793 (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))))) (Context!10587 (t!377381 (exprs!5793 (Context!10587 (t!377381 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902)))))))) (h!70352 s!2326)))))

(assert (= (and d!1835382 res!2460794) b!5841433))

(assert (= (and d!1835382 c!1035048) b!5841432))

(assert (= (and d!1835382 (not c!1035048)) b!5841434))

(assert (= (and b!5841434 c!1035049) b!5841435))

(assert (= (and b!5841434 (not c!1035049)) b!5841431))

(assert (= (or b!5841432 b!5841435) bm!456270))

(declare-fun m!6765510 () Bool)

(assert (=> b!5841432 m!6765510))

(declare-fun m!6765512 () Bool)

(assert (=> b!5841433 m!6765512))

(declare-fun m!6765514 () Bool)

(assert (=> bm!456270 m!6765514))

(assert (=> b!5840810 d!1835382))

(declare-fun d!1835384 () Bool)

(assert (=> d!1835384 (= (isEmpty!35763 (t!377381 (unfocusZipperList!1330 zl!343))) ((_ is Nil!63902) (t!377381 (unfocusZipperList!1330 zl!343))))))

(assert (=> b!5840961 d!1835384))

(assert (=> b!5840991 d!1835258))

(declare-fun bs!1376268 () Bool)

(declare-fun d!1835386 () Bool)

(assert (= bs!1376268 (and d!1835386 d!1835252)))

(declare-fun lambda!319561 () Int)

(assert (=> bs!1376268 (= lambda!319561 lambda!319518)))

(declare-fun bs!1376269 () Bool)

(assert (= bs!1376269 (and d!1835386 d!1835250)))

(assert (=> bs!1376269 (= lambda!319561 lambda!319517)))

(declare-fun bs!1376270 () Bool)

(assert (= bs!1376270 (and d!1835386 d!1835270)))

(assert (=> bs!1376270 (= lambda!319561 lambda!319536)))

(declare-fun bs!1376271 () Bool)

(assert (= bs!1376271 (and d!1835386 d!1835278)))

(assert (=> bs!1376271 (= lambda!319561 lambda!319539)))

(declare-fun bs!1376272 () Bool)

(assert (= bs!1376272 (and d!1835386 d!1835344)))

(assert (=> bs!1376272 (= lambda!319561 lambda!319555)))

(declare-fun bs!1376273 () Bool)

(assert (= bs!1376273 (and d!1835386 d!1835376)))

(assert (=> bs!1376273 (= lambda!319561 lambda!319558)))

(declare-fun bs!1376274 () Bool)

(assert (= bs!1376274 (and d!1835386 d!1835374)))

(assert (=> bs!1376274 (= lambda!319561 lambda!319557)))

(declare-fun bs!1376275 () Bool)

(assert (= bs!1376275 (and d!1835386 d!1835256)))

(assert (=> bs!1376275 (= lambda!319561 lambda!319521)))

(declare-fun bs!1376276 () Bool)

(assert (= bs!1376276 (and d!1835386 d!1835258)))

(assert (=> bs!1376276 (= lambda!319561 lambda!319525)))

(declare-fun bs!1376277 () Bool)

(assert (= bs!1376277 (and d!1835386 d!1835352)))

(assert (=> bs!1376277 (= lambda!319561 lambda!319556)))

(declare-fun lt!2303807 () List!64026)

(assert (=> d!1835386 (forall!14996 lt!2303807 lambda!319561)))

(declare-fun e!3582975 () List!64026)

(assert (=> d!1835386 (= lt!2303807 e!3582975)))

(declare-fun c!1035050 () Bool)

(assert (=> d!1835386 (= c!1035050 ((_ is Cons!63903) (t!377382 zl!343)))))

(assert (=> d!1835386 (= (unfocusZipperList!1330 (t!377382 zl!343)) lt!2303807)))

(declare-fun b!5841436 () Bool)

(assert (=> b!5841436 (= e!3582975 (Cons!63902 (generalisedConcat!1506 (exprs!5793 (h!70351 (t!377382 zl!343)))) (unfocusZipperList!1330 (t!377382 (t!377382 zl!343)))))))

(declare-fun b!5841437 () Bool)

(assert (=> b!5841437 (= e!3582975 Nil!63902)))

(assert (= (and d!1835386 c!1035050) b!5841436))

(assert (= (and d!1835386 (not c!1035050)) b!5841437))

(declare-fun m!6765516 () Bool)

(assert (=> d!1835386 m!6765516))

(declare-fun m!6765518 () Bool)

(assert (=> b!5841436 m!6765518))

(declare-fun m!6765520 () Bool)

(assert (=> b!5841436 m!6765520))

(assert (=> b!5840991 d!1835386))

(assert (=> b!5840765 d!1835338))

(assert (=> b!5840765 d!1835340))

(declare-fun d!1835388 () Bool)

(assert (=> d!1835388 (= (isEmptyExpr!1344 lt!2303770) ((_ is EmptyExpr!15909) lt!2303770))))

(assert (=> b!5840870 d!1835388))

(assert (=> d!1835240 d!1835238))

(assert (=> d!1835240 d!1835234))

(declare-fun d!1835390 () Bool)

(assert (=> d!1835390 (= (matchR!8092 (regTwo!32331 r!7292) s!2326) (matchRSpec!3010 (regTwo!32331 r!7292) s!2326))))

(assert (=> d!1835390 true))

(declare-fun _$88!4204 () Unit!157089)

(assert (=> d!1835390 (= (choose!44340 (regTwo!32331 r!7292) s!2326) _$88!4204)))

(declare-fun bs!1376278 () Bool)

(assert (= bs!1376278 d!1835390))

(assert (=> bs!1376278 m!6765098))

(assert (=> bs!1376278 m!6765094))

(assert (=> d!1835240 d!1835390))

(assert (=> d!1835240 d!1835350))

(declare-fun d!1835392 () Bool)

(assert (=> d!1835392 (= (isEmptyLang!1352 lt!2303784) ((_ is EmptyLang!15909) lt!2303784))))

(assert (=> b!5840959 d!1835392))

(declare-fun b!5841438 () Bool)

(declare-fun e!3582978 () Bool)

(declare-fun e!3582977 () Bool)

(assert (=> b!5841438 (= e!3582978 e!3582977)))

(declare-fun c!1035053 () Bool)

(assert (=> b!5841438 (= c!1035053 ((_ is EmptyLang!15909) (derivativeStep!4646 (regOne!32331 r!7292) (head!12370 s!2326))))))

(declare-fun b!5841439 () Bool)

(declare-fun e!3582981 () Bool)

(assert (=> b!5841439 (= e!3582981 (= (head!12370 (tail!11455 s!2326)) (c!1034845 (derivativeStep!4646 (regOne!32331 r!7292) (head!12370 s!2326)))))))

(declare-fun b!5841440 () Bool)

(declare-fun lt!2303808 () Bool)

(assert (=> b!5841440 (= e!3582977 (not lt!2303808))))

(declare-fun b!5841441 () Bool)

(declare-fun res!2460796 () Bool)

(declare-fun e!3582979 () Bool)

(assert (=> b!5841441 (=> res!2460796 e!3582979)))

(assert (=> b!5841441 (= res!2460796 e!3582981)))

(declare-fun res!2460799 () Bool)

(assert (=> b!5841441 (=> (not res!2460799) (not e!3582981))))

(assert (=> b!5841441 (= res!2460799 lt!2303808)))

(declare-fun d!1835394 () Bool)

(assert (=> d!1835394 e!3582978))

(declare-fun c!1035051 () Bool)

(assert (=> d!1835394 (= c!1035051 ((_ is EmptyExpr!15909) (derivativeStep!4646 (regOne!32331 r!7292) (head!12370 s!2326))))))

(declare-fun e!3582976 () Bool)

(assert (=> d!1835394 (= lt!2303808 e!3582976)))

(declare-fun c!1035052 () Bool)

(assert (=> d!1835394 (= c!1035052 (isEmpty!35761 (tail!11455 s!2326)))))

(assert (=> d!1835394 (validRegex!7645 (derivativeStep!4646 (regOne!32331 r!7292) (head!12370 s!2326)))))

(assert (=> d!1835394 (= (matchR!8092 (derivativeStep!4646 (regOne!32331 r!7292) (head!12370 s!2326)) (tail!11455 s!2326)) lt!2303808)))

(declare-fun b!5841442 () Bool)

(declare-fun e!3582982 () Bool)

(declare-fun e!3582980 () Bool)

(assert (=> b!5841442 (= e!3582982 e!3582980)))

(declare-fun res!2460800 () Bool)

(assert (=> b!5841442 (=> res!2460800 e!3582980)))

(declare-fun call!456276 () Bool)

(assert (=> b!5841442 (= res!2460800 call!456276)))

(declare-fun b!5841443 () Bool)

(declare-fun res!2460798 () Bool)

(assert (=> b!5841443 (=> (not res!2460798) (not e!3582981))))

(assert (=> b!5841443 (= res!2460798 (not call!456276))))

(declare-fun b!5841444 () Bool)

(assert (=> b!5841444 (= e!3582979 e!3582982)))

(declare-fun res!2460797 () Bool)

(assert (=> b!5841444 (=> (not res!2460797) (not e!3582982))))

(assert (=> b!5841444 (= res!2460797 (not lt!2303808))))

(declare-fun b!5841445 () Bool)

(declare-fun res!2460802 () Bool)

(assert (=> b!5841445 (=> res!2460802 e!3582979)))

(assert (=> b!5841445 (= res!2460802 (not ((_ is ElementMatch!15909) (derivativeStep!4646 (regOne!32331 r!7292) (head!12370 s!2326)))))))

(assert (=> b!5841445 (= e!3582977 e!3582979)))

(declare-fun bm!456271 () Bool)

(assert (=> bm!456271 (= call!456276 (isEmpty!35761 (tail!11455 s!2326)))))

(declare-fun b!5841446 () Bool)

(declare-fun res!2460801 () Bool)

(assert (=> b!5841446 (=> res!2460801 e!3582980)))

(assert (=> b!5841446 (= res!2460801 (not (isEmpty!35761 (tail!11455 (tail!11455 s!2326)))))))

(declare-fun b!5841447 () Bool)

(assert (=> b!5841447 (= e!3582976 (nullable!5908 (derivativeStep!4646 (regOne!32331 r!7292) (head!12370 s!2326))))))

(declare-fun b!5841448 () Bool)

(declare-fun res!2460795 () Bool)

(assert (=> b!5841448 (=> (not res!2460795) (not e!3582981))))

(assert (=> b!5841448 (= res!2460795 (isEmpty!35761 (tail!11455 (tail!11455 s!2326))))))

(declare-fun b!5841449 () Bool)

(assert (=> b!5841449 (= e!3582980 (not (= (head!12370 (tail!11455 s!2326)) (c!1034845 (derivativeStep!4646 (regOne!32331 r!7292) (head!12370 s!2326))))))))

(declare-fun b!5841450 () Bool)

(assert (=> b!5841450 (= e!3582976 (matchR!8092 (derivativeStep!4646 (derivativeStep!4646 (regOne!32331 r!7292) (head!12370 s!2326)) (head!12370 (tail!11455 s!2326))) (tail!11455 (tail!11455 s!2326))))))

(declare-fun b!5841451 () Bool)

(assert (=> b!5841451 (= e!3582978 (= lt!2303808 call!456276))))

(assert (= (and d!1835394 c!1035052) b!5841447))

(assert (= (and d!1835394 (not c!1035052)) b!5841450))

(assert (= (and d!1835394 c!1035051) b!5841451))

(assert (= (and d!1835394 (not c!1035051)) b!5841438))

(assert (= (and b!5841438 c!1035053) b!5841440))

(assert (= (and b!5841438 (not c!1035053)) b!5841445))

(assert (= (and b!5841445 (not res!2460802)) b!5841441))

(assert (= (and b!5841441 res!2460799) b!5841443))

(assert (= (and b!5841443 res!2460798) b!5841448))

(assert (= (and b!5841448 res!2460795) b!5841439))

(assert (= (and b!5841441 (not res!2460796)) b!5841444))

(assert (= (and b!5841444 res!2460797) b!5841442))

(assert (= (and b!5841442 (not res!2460800)) b!5841446))

(assert (= (and b!5841446 (not res!2460801)) b!5841449))

(assert (= (or b!5841451 b!5841442 b!5841443) bm!456271))

(assert (=> b!5841450 m!6765150))

(assert (=> b!5841450 m!6765424))

(assert (=> b!5841450 m!6765168))

(assert (=> b!5841450 m!6765424))

(declare-fun m!6765522 () Bool)

(assert (=> b!5841450 m!6765522))

(assert (=> b!5841450 m!6765150))

(assert (=> b!5841450 m!6765428))

(assert (=> b!5841450 m!6765522))

(assert (=> b!5841450 m!6765428))

(declare-fun m!6765524 () Bool)

(assert (=> b!5841450 m!6765524))

(assert (=> bm!456271 m!6765150))

(assert (=> bm!456271 m!6765154))

(assert (=> b!5841448 m!6765150))

(assert (=> b!5841448 m!6765428))

(assert (=> b!5841448 m!6765428))

(assert (=> b!5841448 m!6765432))

(assert (=> b!5841446 m!6765150))

(assert (=> b!5841446 m!6765428))

(assert (=> b!5841446 m!6765428))

(assert (=> b!5841446 m!6765432))

(assert (=> d!1835394 m!6765150))

(assert (=> d!1835394 m!6765154))

(assert (=> d!1835394 m!6765168))

(declare-fun m!6765526 () Bool)

(assert (=> d!1835394 m!6765526))

(assert (=> b!5841449 m!6765150))

(assert (=> b!5841449 m!6765424))

(assert (=> b!5841447 m!6765168))

(declare-fun m!6765528 () Bool)

(assert (=> b!5841447 m!6765528))

(assert (=> b!5841439 m!6765150))

(assert (=> b!5841439 m!6765424))

(assert (=> b!5840794 d!1835394))

(declare-fun b!5841452 () Bool)

(declare-fun c!1035056 () Bool)

(assert (=> b!5841452 (= c!1035056 (nullable!5908 (regOne!32330 (regOne!32331 r!7292))))))

(declare-fun e!3582987 () Regex!15909)

(declare-fun e!3582986 () Regex!15909)

(assert (=> b!5841452 (= e!3582987 e!3582986)))

(declare-fun call!456278 () Regex!15909)

(declare-fun b!5841453 () Bool)

(declare-fun call!456280 () Regex!15909)

(assert (=> b!5841453 (= e!3582986 (Union!15909 (Concat!24754 call!456278 (regTwo!32330 (regOne!32331 r!7292))) call!456280))))

(declare-fun b!5841454 () Bool)

(declare-fun e!3582984 () Regex!15909)

(assert (=> b!5841454 (= e!3582984 (ite (= (head!12370 s!2326) (c!1034845 (regOne!32331 r!7292))) EmptyExpr!15909 EmptyLang!15909))))

(declare-fun c!1035055 () Bool)

(declare-fun bm!456272 () Bool)

(declare-fun c!1035057 () Bool)

(declare-fun call!456277 () Regex!15909)

(assert (=> bm!456272 (= call!456277 (derivativeStep!4646 (ite c!1035055 (regTwo!32331 (regOne!32331 r!7292)) (ite c!1035057 (reg!16238 (regOne!32331 r!7292)) (ite c!1035056 (regTwo!32330 (regOne!32331 r!7292)) (regOne!32330 (regOne!32331 r!7292))))) (head!12370 s!2326)))))

(declare-fun b!5841455 () Bool)

(declare-fun e!3582983 () Regex!15909)

(assert (=> b!5841455 (= e!3582983 e!3582984)))

(declare-fun c!1035058 () Bool)

(assert (=> b!5841455 (= c!1035058 ((_ is ElementMatch!15909) (regOne!32331 r!7292)))))

(declare-fun b!5841456 () Bool)

(assert (=> b!5841456 (= e!3582986 (Union!15909 (Concat!24754 call!456280 (regTwo!32330 (regOne!32331 r!7292))) EmptyLang!15909))))

(declare-fun b!5841457 () Bool)

(declare-fun e!3582985 () Regex!15909)

(assert (=> b!5841457 (= e!3582985 e!3582987)))

(assert (=> b!5841457 (= c!1035057 ((_ is Star!15909) (regOne!32331 r!7292)))))

(declare-fun bm!456273 () Bool)

(assert (=> bm!456273 (= call!456278 (derivativeStep!4646 (ite c!1035055 (regOne!32331 (regOne!32331 r!7292)) (regOne!32330 (regOne!32331 r!7292))) (head!12370 s!2326)))))

(declare-fun b!5841458 () Bool)

(assert (=> b!5841458 (= e!3582983 EmptyLang!15909)))

(declare-fun d!1835396 () Bool)

(declare-fun lt!2303809 () Regex!15909)

(assert (=> d!1835396 (validRegex!7645 lt!2303809)))

(assert (=> d!1835396 (= lt!2303809 e!3582983)))

(declare-fun c!1035054 () Bool)

(assert (=> d!1835396 (= c!1035054 (or ((_ is EmptyExpr!15909) (regOne!32331 r!7292)) ((_ is EmptyLang!15909) (regOne!32331 r!7292))))))

(assert (=> d!1835396 (validRegex!7645 (regOne!32331 r!7292))))

(assert (=> d!1835396 (= (derivativeStep!4646 (regOne!32331 r!7292) (head!12370 s!2326)) lt!2303809)))

(declare-fun bm!456274 () Bool)

(declare-fun call!456279 () Regex!15909)

(assert (=> bm!456274 (= call!456279 call!456277)))

(declare-fun b!5841459 () Bool)

(assert (=> b!5841459 (= c!1035055 ((_ is Union!15909) (regOne!32331 r!7292)))))

(assert (=> b!5841459 (= e!3582984 e!3582985)))

(declare-fun b!5841460 () Bool)

(assert (=> b!5841460 (= e!3582985 (Union!15909 call!456278 call!456277))))

(declare-fun bm!456275 () Bool)

(assert (=> bm!456275 (= call!456280 call!456279)))

(declare-fun b!5841461 () Bool)

(assert (=> b!5841461 (= e!3582987 (Concat!24754 call!456279 (regOne!32331 r!7292)))))

(assert (= (and d!1835396 c!1035054) b!5841458))

(assert (= (and d!1835396 (not c!1035054)) b!5841455))

(assert (= (and b!5841455 c!1035058) b!5841454))

(assert (= (and b!5841455 (not c!1035058)) b!5841459))

(assert (= (and b!5841459 c!1035055) b!5841460))

(assert (= (and b!5841459 (not c!1035055)) b!5841457))

(assert (= (and b!5841457 c!1035057) b!5841461))

(assert (= (and b!5841457 (not c!1035057)) b!5841452))

(assert (= (and b!5841452 c!1035056) b!5841453))

(assert (= (and b!5841452 (not c!1035056)) b!5841456))

(assert (= (or b!5841453 b!5841456) bm!456275))

(assert (= (or b!5841461 bm!456275) bm!456274))

(assert (= (or b!5841460 bm!456274) bm!456272))

(assert (= (or b!5841460 b!5841453) bm!456273))

(declare-fun m!6765530 () Bool)

(assert (=> b!5841452 m!6765530))

(assert (=> bm!456272 m!6765146))

(declare-fun m!6765532 () Bool)

(assert (=> bm!456272 m!6765532))

(assert (=> bm!456273 m!6765146))

(declare-fun m!6765534 () Bool)

(assert (=> bm!456273 m!6765534))

(declare-fun m!6765536 () Bool)

(assert (=> d!1835396 m!6765536))

(assert (=> d!1835396 m!6765144))

(assert (=> b!5840794 d!1835396))

(assert (=> b!5840794 d!1835328))

(assert (=> b!5840794 d!1835340))

(assert (=> d!1835264 d!1835324))

(assert (=> d!1835264 d!1835232))

(declare-fun d!1835398 () Bool)

(assert (=> d!1835398 (= (isEmpty!35763 (t!377381 (exprs!5793 (h!70351 zl!343)))) ((_ is Nil!63902) (t!377381 (exprs!5793 (h!70351 zl!343)))))))

(assert (=> b!5840868 d!1835398))

(assert (=> d!1835244 d!1835324))

(declare-fun bm!456276 () Bool)

(declare-fun call!456281 () Bool)

(declare-fun call!456283 () Bool)

(assert (=> bm!456276 (= call!456281 call!456283)))

(declare-fun b!5841462 () Bool)

(declare-fun e!3582989 () Bool)

(declare-fun call!456282 () Bool)

(assert (=> b!5841462 (= e!3582989 call!456282)))

(declare-fun b!5841463 () Bool)

(declare-fun e!3582991 () Bool)

(declare-fun e!3582994 () Bool)

(assert (=> b!5841463 (= e!3582991 e!3582994)))

(declare-fun res!2460803 () Bool)

(assert (=> b!5841463 (=> (not res!2460803) (not e!3582994))))

(assert (=> b!5841463 (= res!2460803 call!456281)))

(declare-fun b!5841464 () Bool)

(declare-fun e!3582992 () Bool)

(declare-fun e!3582990 () Bool)

(assert (=> b!5841464 (= e!3582992 e!3582990)))

(declare-fun c!1035059 () Bool)

(assert (=> b!5841464 (= c!1035059 ((_ is Union!15909) (regOne!32331 r!7292)))))

(declare-fun b!5841465 () Bool)

(declare-fun e!3582988 () Bool)

(assert (=> b!5841465 (= e!3582988 e!3582992)))

(declare-fun c!1035060 () Bool)

(assert (=> b!5841465 (= c!1035060 ((_ is Star!15909) (regOne!32331 r!7292)))))

(declare-fun b!5841466 () Bool)

(declare-fun e!3582993 () Bool)

(assert (=> b!5841466 (= e!3582993 call!456283)))

(declare-fun b!5841467 () Bool)

(declare-fun res!2460807 () Bool)

(assert (=> b!5841467 (=> (not res!2460807) (not e!3582989))))

(assert (=> b!5841467 (= res!2460807 call!456281)))

(assert (=> b!5841467 (= e!3582990 e!3582989)))

(declare-fun bm!456277 () Bool)

(assert (=> bm!456277 (= call!456282 (validRegex!7645 (ite c!1035059 (regTwo!32331 (regOne!32331 r!7292)) (regTwo!32330 (regOne!32331 r!7292)))))))

(declare-fun b!5841469 () Bool)

(declare-fun res!2460805 () Bool)

(assert (=> b!5841469 (=> res!2460805 e!3582991)))

(assert (=> b!5841469 (= res!2460805 (not ((_ is Concat!24754) (regOne!32331 r!7292))))))

(assert (=> b!5841469 (= e!3582990 e!3582991)))

(declare-fun d!1835400 () Bool)

(declare-fun res!2460806 () Bool)

(assert (=> d!1835400 (=> res!2460806 e!3582988)))

(assert (=> d!1835400 (= res!2460806 ((_ is ElementMatch!15909) (regOne!32331 r!7292)))))

(assert (=> d!1835400 (= (validRegex!7645 (regOne!32331 r!7292)) e!3582988)))

(declare-fun b!5841468 () Bool)

(assert (=> b!5841468 (= e!3582992 e!3582993)))

(declare-fun res!2460804 () Bool)

(assert (=> b!5841468 (= res!2460804 (not (nullable!5908 (reg!16238 (regOne!32331 r!7292)))))))

(assert (=> b!5841468 (=> (not res!2460804) (not e!3582993))))

(declare-fun bm!456278 () Bool)

(assert (=> bm!456278 (= call!456283 (validRegex!7645 (ite c!1035060 (reg!16238 (regOne!32331 r!7292)) (ite c!1035059 (regOne!32331 (regOne!32331 r!7292)) (regOne!32330 (regOne!32331 r!7292))))))))

(declare-fun b!5841470 () Bool)

(assert (=> b!5841470 (= e!3582994 call!456282)))

(assert (= (and d!1835400 (not res!2460806)) b!5841465))

(assert (= (and b!5841465 c!1035060) b!5841468))

(assert (= (and b!5841465 (not c!1035060)) b!5841464))

(assert (= (and b!5841468 res!2460804) b!5841466))

(assert (= (and b!5841464 c!1035059) b!5841467))

(assert (= (and b!5841464 (not c!1035059)) b!5841469))

(assert (= (and b!5841467 res!2460807) b!5841462))

(assert (= (and b!5841469 (not res!2460805)) b!5841463))

(assert (= (and b!5841463 res!2460803) b!5841470))

(assert (= (or b!5841462 b!5841470) bm!456277))

(assert (= (or b!5841467 b!5841463) bm!456276))

(assert (= (or b!5841466 bm!456276) bm!456278))

(declare-fun m!6765538 () Bool)

(assert (=> bm!456277 m!6765538))

(declare-fun m!6765540 () Bool)

(assert (=> b!5841468 m!6765540))

(declare-fun m!6765542 () Bool)

(assert (=> bm!456278 m!6765542))

(assert (=> d!1835244 d!1835400))

(declare-fun d!1835402 () Bool)

(assert (=> d!1835402 (= (nullable!5908 r!7292) (nullableFct!1895 r!7292))))

(declare-fun bs!1376279 () Bool)

(assert (= bs!1376279 d!1835402))

(declare-fun m!6765544 () Bool)

(assert (=> bs!1376279 m!6765544))

(assert (=> b!5840914 d!1835402))

(assert (=> b!5840875 d!1835234))

(assert (=> bm!456200 d!1835324))

(declare-fun bm!456279 () Bool)

(declare-fun call!456284 () Bool)

(declare-fun call!456286 () Bool)

(assert (=> bm!456279 (= call!456284 call!456286)))

(declare-fun b!5841471 () Bool)

(declare-fun e!3582996 () Bool)

(declare-fun call!456285 () Bool)

(assert (=> b!5841471 (= e!3582996 call!456285)))

(declare-fun b!5841472 () Bool)

(declare-fun e!3582998 () Bool)

(declare-fun e!3583001 () Bool)

(assert (=> b!5841472 (= e!3582998 e!3583001)))

(declare-fun res!2460808 () Bool)

(assert (=> b!5841472 (=> (not res!2460808) (not e!3583001))))

(assert (=> b!5841472 (= res!2460808 call!456284)))

(declare-fun b!5841473 () Bool)

(declare-fun e!3582999 () Bool)

(declare-fun e!3582997 () Bool)

(assert (=> b!5841473 (= e!3582999 e!3582997)))

(declare-fun c!1035061 () Bool)

(assert (=> b!5841473 (= c!1035061 ((_ is Union!15909) (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292)))))))

(declare-fun b!5841474 () Bool)

(declare-fun e!3582995 () Bool)

(assert (=> b!5841474 (= e!3582995 e!3582999)))

(declare-fun c!1035062 () Bool)

(assert (=> b!5841474 (= c!1035062 ((_ is Star!15909) (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292)))))))

(declare-fun b!5841475 () Bool)

(declare-fun e!3583000 () Bool)

(assert (=> b!5841475 (= e!3583000 call!456286)))

(declare-fun b!5841476 () Bool)

(declare-fun res!2460812 () Bool)

(assert (=> b!5841476 (=> (not res!2460812) (not e!3582996))))

(assert (=> b!5841476 (= res!2460812 call!456284)))

(assert (=> b!5841476 (= e!3582997 e!3582996)))

(declare-fun bm!456280 () Bool)

(assert (=> bm!456280 (= call!456285 (validRegex!7645 (ite c!1035061 (regTwo!32331 (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292)))) (regTwo!32330 (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292)))))))))

(declare-fun b!5841478 () Bool)

(declare-fun res!2460810 () Bool)

(assert (=> b!5841478 (=> res!2460810 e!3582998)))

(assert (=> b!5841478 (= res!2460810 (not ((_ is Concat!24754) (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292))))))))

(assert (=> b!5841478 (= e!3582997 e!3582998)))

(declare-fun d!1835404 () Bool)

(declare-fun res!2460811 () Bool)

(assert (=> d!1835404 (=> res!2460811 e!3582995)))

(assert (=> d!1835404 (= res!2460811 ((_ is ElementMatch!15909) (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292)))))))

(assert (=> d!1835404 (= (validRegex!7645 (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292)))) e!3582995)))

(declare-fun b!5841477 () Bool)

(assert (=> b!5841477 (= e!3582999 e!3583000)))

(declare-fun res!2460809 () Bool)

(assert (=> b!5841477 (= res!2460809 (not (nullable!5908 (reg!16238 (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292)))))))))

(assert (=> b!5841477 (=> (not res!2460809) (not e!3583000))))

(declare-fun bm!456281 () Bool)

(assert (=> bm!456281 (= call!456286 (validRegex!7645 (ite c!1035062 (reg!16238 (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292)))) (ite c!1035061 (regOne!32331 (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292)))) (regOne!32330 (ite c!1034851 (reg!16238 r!7292) (ite c!1034850 (regOne!32331 r!7292) (regOne!32330 r!7292))))))))))

(declare-fun b!5841479 () Bool)

(assert (=> b!5841479 (= e!3583001 call!456285)))

(assert (= (and d!1835404 (not res!2460811)) b!5841474))

(assert (= (and b!5841474 c!1035062) b!5841477))

(assert (= (and b!5841474 (not c!1035062)) b!5841473))

(assert (= (and b!5841477 res!2460809) b!5841475))

(assert (= (and b!5841473 c!1035061) b!5841476))

(assert (= (and b!5841473 (not c!1035061)) b!5841478))

(assert (= (and b!5841476 res!2460812) b!5841471))

(assert (= (and b!5841478 (not res!2460810)) b!5841472))

(assert (= (and b!5841472 res!2460808) b!5841479))

(assert (= (or b!5841471 b!5841479) bm!456280))

(assert (= (or b!5841476 b!5841472) bm!456279))

(assert (= (or b!5841475 bm!456279) bm!456281))

(declare-fun m!6765546 () Bool)

(assert (=> bm!456280 m!6765546))

(declare-fun m!6765548 () Bool)

(assert (=> b!5841477 m!6765548))

(declare-fun m!6765550 () Bool)

(assert (=> bm!456281 m!6765550))

(assert (=> bm!456182 d!1835404))

(declare-fun b!5841480 () Bool)

(declare-fun e!3583004 () Bool)

(declare-fun e!3583003 () Bool)

(assert (=> b!5841480 (= e!3583004 e!3583003)))

(declare-fun c!1035065 () Bool)

(assert (=> b!5841480 (= c!1035065 ((_ is EmptyLang!15909) (derivativeStep!4646 (regTwo!32331 r!7292) (head!12370 s!2326))))))

(declare-fun b!5841481 () Bool)

(declare-fun e!3583007 () Bool)

(assert (=> b!5841481 (= e!3583007 (= (head!12370 (tail!11455 s!2326)) (c!1034845 (derivativeStep!4646 (regTwo!32331 r!7292) (head!12370 s!2326)))))))

(declare-fun b!5841482 () Bool)

(declare-fun lt!2303810 () Bool)

(assert (=> b!5841482 (= e!3583003 (not lt!2303810))))

(declare-fun b!5841483 () Bool)

(declare-fun res!2460814 () Bool)

(declare-fun e!3583005 () Bool)

(assert (=> b!5841483 (=> res!2460814 e!3583005)))

(assert (=> b!5841483 (= res!2460814 e!3583007)))

(declare-fun res!2460817 () Bool)

(assert (=> b!5841483 (=> (not res!2460817) (not e!3583007))))

(assert (=> b!5841483 (= res!2460817 lt!2303810)))

(declare-fun d!1835406 () Bool)

(assert (=> d!1835406 e!3583004))

(declare-fun c!1035063 () Bool)

(assert (=> d!1835406 (= c!1035063 ((_ is EmptyExpr!15909) (derivativeStep!4646 (regTwo!32331 r!7292) (head!12370 s!2326))))))

(declare-fun e!3583002 () Bool)

(assert (=> d!1835406 (= lt!2303810 e!3583002)))

(declare-fun c!1035064 () Bool)

(assert (=> d!1835406 (= c!1035064 (isEmpty!35761 (tail!11455 s!2326)))))

(assert (=> d!1835406 (validRegex!7645 (derivativeStep!4646 (regTwo!32331 r!7292) (head!12370 s!2326)))))

(assert (=> d!1835406 (= (matchR!8092 (derivativeStep!4646 (regTwo!32331 r!7292) (head!12370 s!2326)) (tail!11455 s!2326)) lt!2303810)))

(declare-fun b!5841484 () Bool)

(declare-fun e!3583008 () Bool)

(declare-fun e!3583006 () Bool)

(assert (=> b!5841484 (= e!3583008 e!3583006)))

(declare-fun res!2460818 () Bool)

(assert (=> b!5841484 (=> res!2460818 e!3583006)))

(declare-fun call!456287 () Bool)

(assert (=> b!5841484 (= res!2460818 call!456287)))

(declare-fun b!5841485 () Bool)

(declare-fun res!2460816 () Bool)

(assert (=> b!5841485 (=> (not res!2460816) (not e!3583007))))

(assert (=> b!5841485 (= res!2460816 (not call!456287))))

(declare-fun b!5841486 () Bool)

(assert (=> b!5841486 (= e!3583005 e!3583008)))

(declare-fun res!2460815 () Bool)

(assert (=> b!5841486 (=> (not res!2460815) (not e!3583008))))

(assert (=> b!5841486 (= res!2460815 (not lt!2303810))))

(declare-fun b!5841487 () Bool)

(declare-fun res!2460820 () Bool)

(assert (=> b!5841487 (=> res!2460820 e!3583005)))

(assert (=> b!5841487 (= res!2460820 (not ((_ is ElementMatch!15909) (derivativeStep!4646 (regTwo!32331 r!7292) (head!12370 s!2326)))))))

(assert (=> b!5841487 (= e!3583003 e!3583005)))

(declare-fun bm!456282 () Bool)

(assert (=> bm!456282 (= call!456287 (isEmpty!35761 (tail!11455 s!2326)))))

(declare-fun b!5841488 () Bool)

(declare-fun res!2460819 () Bool)

(assert (=> b!5841488 (=> res!2460819 e!3583006)))

(assert (=> b!5841488 (= res!2460819 (not (isEmpty!35761 (tail!11455 (tail!11455 s!2326)))))))

(declare-fun b!5841489 () Bool)

(assert (=> b!5841489 (= e!3583002 (nullable!5908 (derivativeStep!4646 (regTwo!32331 r!7292) (head!12370 s!2326))))))

(declare-fun b!5841490 () Bool)

(declare-fun res!2460813 () Bool)

(assert (=> b!5841490 (=> (not res!2460813) (not e!3583007))))

(assert (=> b!5841490 (= res!2460813 (isEmpty!35761 (tail!11455 (tail!11455 s!2326))))))

(declare-fun b!5841491 () Bool)

(assert (=> b!5841491 (= e!3583006 (not (= (head!12370 (tail!11455 s!2326)) (c!1034845 (derivativeStep!4646 (regTwo!32331 r!7292) (head!12370 s!2326))))))))

(declare-fun b!5841492 () Bool)

(assert (=> b!5841492 (= e!3583002 (matchR!8092 (derivativeStep!4646 (derivativeStep!4646 (regTwo!32331 r!7292) (head!12370 s!2326)) (head!12370 (tail!11455 s!2326))) (tail!11455 (tail!11455 s!2326))))))

(declare-fun b!5841493 () Bool)

(assert (=> b!5841493 (= e!3583004 (= lt!2303810 call!456287))))

(assert (= (and d!1835406 c!1035064) b!5841489))

(assert (= (and d!1835406 (not c!1035064)) b!5841492))

(assert (= (and d!1835406 c!1035063) b!5841493))

(assert (= (and d!1835406 (not c!1035063)) b!5841480))

(assert (= (and b!5841480 c!1035065) b!5841482))

(assert (= (and b!5841480 (not c!1035065)) b!5841487))

(assert (= (and b!5841487 (not res!2460820)) b!5841483))

(assert (= (and b!5841483 res!2460817) b!5841485))

(assert (= (and b!5841485 res!2460816) b!5841490))

(assert (= (and b!5841490 res!2460813) b!5841481))

(assert (= (and b!5841483 (not res!2460814)) b!5841486))

(assert (= (and b!5841486 res!2460815) b!5841484))

(assert (= (and b!5841484 (not res!2460818)) b!5841488))

(assert (= (and b!5841488 (not res!2460819)) b!5841491))

(assert (= (or b!5841493 b!5841484 b!5841485) bm!456282))

(assert (=> b!5841492 m!6765150))

(assert (=> b!5841492 m!6765424))

(assert (=> b!5841492 m!6765148))

(assert (=> b!5841492 m!6765424))

(declare-fun m!6765552 () Bool)

(assert (=> b!5841492 m!6765552))

(assert (=> b!5841492 m!6765150))

(assert (=> b!5841492 m!6765428))

(assert (=> b!5841492 m!6765552))

(assert (=> b!5841492 m!6765428))

(declare-fun m!6765554 () Bool)

(assert (=> b!5841492 m!6765554))

(assert (=> bm!456282 m!6765150))

(assert (=> bm!456282 m!6765154))

(assert (=> b!5841490 m!6765150))

(assert (=> b!5841490 m!6765428))

(assert (=> b!5841490 m!6765428))

(assert (=> b!5841490 m!6765432))

(assert (=> b!5841488 m!6765150))

(assert (=> b!5841488 m!6765428))

(assert (=> b!5841488 m!6765428))

(assert (=> b!5841488 m!6765432))

(assert (=> d!1835406 m!6765150))

(assert (=> d!1835406 m!6765154))

(assert (=> d!1835406 m!6765148))

(declare-fun m!6765556 () Bool)

(assert (=> d!1835406 m!6765556))

(assert (=> b!5841491 m!6765150))

(assert (=> b!5841491 m!6765424))

(assert (=> b!5841489 m!6765148))

(declare-fun m!6765558 () Bool)

(assert (=> b!5841489 m!6765558))

(assert (=> b!5841481 m!6765150))

(assert (=> b!5841481 m!6765424))

(assert (=> b!5840769 d!1835406))

(declare-fun b!5841494 () Bool)

(declare-fun c!1035068 () Bool)

(assert (=> b!5841494 (= c!1035068 (nullable!5908 (regOne!32330 (regTwo!32331 r!7292))))))

(declare-fun e!3583013 () Regex!15909)

(declare-fun e!3583012 () Regex!15909)

(assert (=> b!5841494 (= e!3583013 e!3583012)))

(declare-fun call!456291 () Regex!15909)

(declare-fun b!5841495 () Bool)

(declare-fun call!456289 () Regex!15909)

(assert (=> b!5841495 (= e!3583012 (Union!15909 (Concat!24754 call!456289 (regTwo!32330 (regTwo!32331 r!7292))) call!456291))))

(declare-fun b!5841496 () Bool)

(declare-fun e!3583010 () Regex!15909)

(assert (=> b!5841496 (= e!3583010 (ite (= (head!12370 s!2326) (c!1034845 (regTwo!32331 r!7292))) EmptyExpr!15909 EmptyLang!15909))))

(declare-fun c!1035069 () Bool)

(declare-fun bm!456283 () Bool)

(declare-fun call!456288 () Regex!15909)

(declare-fun c!1035067 () Bool)

(assert (=> bm!456283 (= call!456288 (derivativeStep!4646 (ite c!1035067 (regTwo!32331 (regTwo!32331 r!7292)) (ite c!1035069 (reg!16238 (regTwo!32331 r!7292)) (ite c!1035068 (regTwo!32330 (regTwo!32331 r!7292)) (regOne!32330 (regTwo!32331 r!7292))))) (head!12370 s!2326)))))

(declare-fun b!5841497 () Bool)

(declare-fun e!3583009 () Regex!15909)

(assert (=> b!5841497 (= e!3583009 e!3583010)))

(declare-fun c!1035070 () Bool)

(assert (=> b!5841497 (= c!1035070 ((_ is ElementMatch!15909) (regTwo!32331 r!7292)))))

(declare-fun b!5841498 () Bool)

(assert (=> b!5841498 (= e!3583012 (Union!15909 (Concat!24754 call!456291 (regTwo!32330 (regTwo!32331 r!7292))) EmptyLang!15909))))

(declare-fun b!5841499 () Bool)

(declare-fun e!3583011 () Regex!15909)

(assert (=> b!5841499 (= e!3583011 e!3583013)))

(assert (=> b!5841499 (= c!1035069 ((_ is Star!15909) (regTwo!32331 r!7292)))))

(declare-fun bm!456284 () Bool)

(assert (=> bm!456284 (= call!456289 (derivativeStep!4646 (ite c!1035067 (regOne!32331 (regTwo!32331 r!7292)) (regOne!32330 (regTwo!32331 r!7292))) (head!12370 s!2326)))))

(declare-fun b!5841500 () Bool)

(assert (=> b!5841500 (= e!3583009 EmptyLang!15909)))

(declare-fun d!1835408 () Bool)

(declare-fun lt!2303811 () Regex!15909)

(assert (=> d!1835408 (validRegex!7645 lt!2303811)))

(assert (=> d!1835408 (= lt!2303811 e!3583009)))

(declare-fun c!1035066 () Bool)

(assert (=> d!1835408 (= c!1035066 (or ((_ is EmptyExpr!15909) (regTwo!32331 r!7292)) ((_ is EmptyLang!15909) (regTwo!32331 r!7292))))))

(assert (=> d!1835408 (validRegex!7645 (regTwo!32331 r!7292))))

(assert (=> d!1835408 (= (derivativeStep!4646 (regTwo!32331 r!7292) (head!12370 s!2326)) lt!2303811)))

(declare-fun bm!456285 () Bool)

(declare-fun call!456290 () Regex!15909)

(assert (=> bm!456285 (= call!456290 call!456288)))

(declare-fun b!5841501 () Bool)

(assert (=> b!5841501 (= c!1035067 ((_ is Union!15909) (regTwo!32331 r!7292)))))

(assert (=> b!5841501 (= e!3583010 e!3583011)))

(declare-fun b!5841502 () Bool)

(assert (=> b!5841502 (= e!3583011 (Union!15909 call!456289 call!456288))))

(declare-fun bm!456286 () Bool)

(assert (=> bm!456286 (= call!456291 call!456290)))

(declare-fun b!5841503 () Bool)

(assert (=> b!5841503 (= e!3583013 (Concat!24754 call!456290 (regTwo!32331 r!7292)))))

(assert (= (and d!1835408 c!1035066) b!5841500))

(assert (= (and d!1835408 (not c!1035066)) b!5841497))

(assert (= (and b!5841497 c!1035070) b!5841496))

(assert (= (and b!5841497 (not c!1035070)) b!5841501))

(assert (= (and b!5841501 c!1035067) b!5841502))

(assert (= (and b!5841501 (not c!1035067)) b!5841499))

(assert (= (and b!5841499 c!1035069) b!5841503))

(assert (= (and b!5841499 (not c!1035069)) b!5841494))

(assert (= (and b!5841494 c!1035068) b!5841495))

(assert (= (and b!5841494 (not c!1035068)) b!5841498))

(assert (= (or b!5841495 b!5841498) bm!456286))

(assert (= (or b!5841503 bm!456286) bm!456285))

(assert (= (or b!5841502 bm!456285) bm!456283))

(assert (= (or b!5841502 b!5841495) bm!456284))

(declare-fun m!6765560 () Bool)

(assert (=> b!5841494 m!6765560))

(assert (=> bm!456283 m!6765146))

(declare-fun m!6765562 () Bool)

(assert (=> bm!456283 m!6765562))

(assert (=> bm!456284 m!6765146))

(declare-fun m!6765564 () Bool)

(assert (=> bm!456284 m!6765564))

(declare-fun m!6765566 () Bool)

(assert (=> d!1835408 m!6765566))

(assert (=> d!1835408 m!6765156))

(assert (=> b!5840769 d!1835408))

(assert (=> b!5840769 d!1835328))

(assert (=> b!5840769 d!1835340))

(declare-fun bs!1376280 () Bool)

(declare-fun b!5841511 () Bool)

(assert (= bs!1376280 (and b!5841511 b!5841427)))

(declare-fun lambda!319562 () Int)

(assert (=> bs!1376280 (= (and (= (reg!16238 (regTwo!32331 (regOne!32331 r!7292))) (reg!16238 (regTwo!32331 (regTwo!32331 r!7292)))) (= (regTwo!32331 (regOne!32331 r!7292)) (regTwo!32331 (regTwo!32331 r!7292)))) (= lambda!319562 lambda!319559))))

(declare-fun bs!1376281 () Bool)

(assert (= bs!1376281 (and b!5841511 b!5840881)))

(assert (=> bs!1376281 (= (and (= (reg!16238 (regTwo!32331 (regOne!32331 r!7292))) (reg!16238 r!7292)) (= (regTwo!32331 (regOne!32331 r!7292)) r!7292)) (= lambda!319562 lambda!319528))))

(declare-fun bs!1376282 () Bool)

(assert (= bs!1376282 (and b!5841511 b!5840716)))

(assert (=> bs!1376282 (not (= lambda!319562 lambda!319512))))

(declare-fun bs!1376283 () Bool)

(assert (= bs!1376283 (and b!5841511 b!5840876)))

(assert (=> bs!1376283 (not (= lambda!319562 lambda!319529))))

(declare-fun bs!1376284 () Bool)

(assert (= bs!1376284 (and b!5841511 b!5840721)))

(assert (=> bs!1376284 (= (and (= (reg!16238 (regTwo!32331 (regOne!32331 r!7292))) (reg!16238 (regTwo!32331 r!7292))) (= (regTwo!32331 (regOne!32331 r!7292)) (regTwo!32331 r!7292))) (= lambda!319562 lambda!319511))))

(declare-fun bs!1376285 () Bool)

(assert (= bs!1376285 (and b!5841511 b!5840773)))

(assert (=> bs!1376285 (not (= lambda!319562 lambda!319514))))

(declare-fun bs!1376286 () Bool)

(assert (= bs!1376286 (and b!5841511 b!5841422)))

(assert (=> bs!1376286 (not (= lambda!319562 lambda!319560))))

(declare-fun bs!1376287 () Bool)

(assert (= bs!1376287 (and b!5841511 b!5840778)))

(assert (=> bs!1376287 (= (and (= (reg!16238 (regTwo!32331 (regOne!32331 r!7292))) (reg!16238 (regOne!32331 r!7292))) (= (regTwo!32331 (regOne!32331 r!7292)) (regOne!32331 r!7292))) (= lambda!319562 lambda!319513))))

(assert (=> b!5841511 true))

(assert (=> b!5841511 true))

(declare-fun bs!1376288 () Bool)

(declare-fun b!5841506 () Bool)

(assert (= bs!1376288 (and b!5841506 b!5841427)))

(declare-fun lambda!319563 () Int)

(assert (=> bs!1376288 (not (= lambda!319563 lambda!319559))))

(declare-fun bs!1376289 () Bool)

(assert (= bs!1376289 (and b!5841506 b!5840881)))

(assert (=> bs!1376289 (not (= lambda!319563 lambda!319528))))

(declare-fun bs!1376290 () Bool)

(assert (= bs!1376290 (and b!5841506 b!5840716)))

(assert (=> bs!1376290 (= (and (= (regOne!32330 (regTwo!32331 (regOne!32331 r!7292))) (regOne!32330 (regTwo!32331 r!7292))) (= (regTwo!32330 (regTwo!32331 (regOne!32331 r!7292))) (regTwo!32330 (regTwo!32331 r!7292)))) (= lambda!319563 lambda!319512))))

(declare-fun bs!1376291 () Bool)

(assert (= bs!1376291 (and b!5841506 b!5840876)))

(assert (=> bs!1376291 (= (and (= (regOne!32330 (regTwo!32331 (regOne!32331 r!7292))) (regOne!32330 r!7292)) (= (regTwo!32330 (regTwo!32331 (regOne!32331 r!7292))) (regTwo!32330 r!7292))) (= lambda!319563 lambda!319529))))

(declare-fun bs!1376292 () Bool)

(assert (= bs!1376292 (and b!5841506 b!5840721)))

(assert (=> bs!1376292 (not (= lambda!319563 lambda!319511))))

(declare-fun bs!1376293 () Bool)

(assert (= bs!1376293 (and b!5841506 b!5841422)))

(assert (=> bs!1376293 (= (and (= (regOne!32330 (regTwo!32331 (regOne!32331 r!7292))) (regOne!32330 (regTwo!32331 (regTwo!32331 r!7292)))) (= (regTwo!32330 (regTwo!32331 (regOne!32331 r!7292))) (regTwo!32330 (regTwo!32331 (regTwo!32331 r!7292))))) (= lambda!319563 lambda!319560))))

(declare-fun bs!1376294 () Bool)

(assert (= bs!1376294 (and b!5841506 b!5840778)))

(assert (=> bs!1376294 (not (= lambda!319563 lambda!319513))))

(declare-fun bs!1376295 () Bool)

(assert (= bs!1376295 (and b!5841506 b!5841511)))

(assert (=> bs!1376295 (not (= lambda!319563 lambda!319562))))

(declare-fun bs!1376296 () Bool)

(assert (= bs!1376296 (and b!5841506 b!5840773)))

(assert (=> bs!1376296 (= (and (= (regOne!32330 (regTwo!32331 (regOne!32331 r!7292))) (regOne!32330 (regOne!32331 r!7292))) (= (regTwo!32330 (regTwo!32331 (regOne!32331 r!7292))) (regTwo!32330 (regOne!32331 r!7292)))) (= lambda!319563 lambda!319514))))

(assert (=> b!5841506 true))

(assert (=> b!5841506 true))

(declare-fun bm!456287 () Bool)

(declare-fun call!456292 () Bool)

(assert (=> bm!456287 (= call!456292 (isEmpty!35761 s!2326))))

(declare-fun b!5841504 () Bool)

(declare-fun e!3583016 () Bool)

(declare-fun e!3583019 () Bool)

(assert (=> b!5841504 (= e!3583016 e!3583019)))

(declare-fun res!2460823 () Bool)

(assert (=> b!5841504 (= res!2460823 (not ((_ is EmptyLang!15909) (regTwo!32331 (regOne!32331 r!7292)))))))

(assert (=> b!5841504 (=> (not res!2460823) (not e!3583019))))

(declare-fun b!5841505 () Bool)

(declare-fun e!3583015 () Bool)

(assert (=> b!5841505 (= e!3583015 (matchRSpec!3010 (regTwo!32331 (regTwo!32331 (regOne!32331 r!7292))) s!2326))))

(declare-fun e!3583017 () Bool)

(declare-fun call!456293 () Bool)

(assert (=> b!5841506 (= e!3583017 call!456293)))

(declare-fun d!1835410 () Bool)

(declare-fun c!1035073 () Bool)

(assert (=> d!1835410 (= c!1035073 ((_ is EmptyExpr!15909) (regTwo!32331 (regOne!32331 r!7292))))))

(assert (=> d!1835410 (= (matchRSpec!3010 (regTwo!32331 (regOne!32331 r!7292)) s!2326) e!3583016)))

(declare-fun b!5841507 () Bool)

(declare-fun c!1035072 () Bool)

(assert (=> b!5841507 (= c!1035072 ((_ is Union!15909) (regTwo!32331 (regOne!32331 r!7292))))))

(declare-fun e!3583020 () Bool)

(declare-fun e!3583014 () Bool)

(assert (=> b!5841507 (= e!3583020 e!3583014)))

(declare-fun bm!456288 () Bool)

(declare-fun c!1035074 () Bool)

(assert (=> bm!456288 (= call!456293 (Exists!2980 (ite c!1035074 lambda!319562 lambda!319563)))))

(declare-fun b!5841508 () Bool)

(declare-fun res!2460822 () Bool)

(declare-fun e!3583018 () Bool)

(assert (=> b!5841508 (=> res!2460822 e!3583018)))

(assert (=> b!5841508 (= res!2460822 call!456292)))

(assert (=> b!5841508 (= e!3583017 e!3583018)))

(declare-fun b!5841509 () Bool)

(assert (=> b!5841509 (= e!3583020 (= s!2326 (Cons!63904 (c!1034845 (regTwo!32331 (regOne!32331 r!7292))) Nil!63904)))))

(declare-fun b!5841510 () Bool)

(assert (=> b!5841510 (= e!3583014 e!3583017)))

(assert (=> b!5841510 (= c!1035074 ((_ is Star!15909) (regTwo!32331 (regOne!32331 r!7292))))))

(assert (=> b!5841511 (= e!3583018 call!456293)))

(declare-fun b!5841512 () Bool)

(assert (=> b!5841512 (= e!3583016 call!456292)))

(declare-fun b!5841513 () Bool)

(declare-fun c!1035071 () Bool)

(assert (=> b!5841513 (= c!1035071 ((_ is ElementMatch!15909) (regTwo!32331 (regOne!32331 r!7292))))))

(assert (=> b!5841513 (= e!3583019 e!3583020)))

(declare-fun b!5841514 () Bool)

(assert (=> b!5841514 (= e!3583014 e!3583015)))

(declare-fun res!2460821 () Bool)

(assert (=> b!5841514 (= res!2460821 (matchRSpec!3010 (regOne!32331 (regTwo!32331 (regOne!32331 r!7292))) s!2326))))

(assert (=> b!5841514 (=> res!2460821 e!3583015)))

(assert (= (and d!1835410 c!1035073) b!5841512))

(assert (= (and d!1835410 (not c!1035073)) b!5841504))

(assert (= (and b!5841504 res!2460823) b!5841513))

(assert (= (and b!5841513 c!1035071) b!5841509))

(assert (= (and b!5841513 (not c!1035071)) b!5841507))

(assert (= (and b!5841507 c!1035072) b!5841514))

(assert (= (and b!5841507 (not c!1035072)) b!5841510))

(assert (= (and b!5841514 (not res!2460821)) b!5841505))

(assert (= (and b!5841510 c!1035074) b!5841508))

(assert (= (and b!5841510 (not c!1035074)) b!5841506))

(assert (= (and b!5841508 (not res!2460822)) b!5841511))

(assert (= (or b!5841511 b!5841506) bm!456288))

(assert (= (or b!5841512 b!5841508) bm!456287))

(assert (=> bm!456287 m!6765134))

(declare-fun m!6765568 () Bool)

(assert (=> b!5841505 m!6765568))

(declare-fun m!6765570 () Bool)

(assert (=> bm!456288 m!6765570))

(declare-fun m!6765572 () Bool)

(assert (=> b!5841514 m!6765572))

(assert (=> b!5840772 d!1835410))

(assert (=> bm!456198 d!1835324))

(declare-fun d!1835412 () Bool)

(assert (=> d!1835412 (= (nullable!5908 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))) (nullableFct!1895 (h!70350 (exprs!5793 (Context!10587 (Cons!63902 r!7292 Nil!63902))))))))

(declare-fun bs!1376297 () Bool)

(assert (= bs!1376297 d!1835412))

(declare-fun m!6765574 () Bool)

(assert (=> bs!1376297 m!6765574))

(assert (=> b!5840811 d!1835412))

(declare-fun bm!456289 () Bool)

(declare-fun call!456294 () Bool)

(declare-fun call!456296 () Bool)

(assert (=> bm!456289 (= call!456294 call!456296)))

(declare-fun b!5841515 () Bool)

(declare-fun e!3583022 () Bool)

(declare-fun call!456295 () Bool)

(assert (=> b!5841515 (= e!3583022 call!456295)))

(declare-fun b!5841516 () Bool)

(declare-fun e!3583024 () Bool)

(declare-fun e!3583027 () Bool)

(assert (=> b!5841516 (= e!3583024 e!3583027)))

(declare-fun res!2460824 () Bool)

(assert (=> b!5841516 (=> (not res!2460824) (not e!3583027))))

(assert (=> b!5841516 (= res!2460824 call!456294)))

(declare-fun b!5841517 () Bool)

(declare-fun e!3583025 () Bool)

(declare-fun e!3583023 () Bool)

(assert (=> b!5841517 (= e!3583025 e!3583023)))

(declare-fun c!1035075 () Bool)

(assert (=> b!5841517 (= c!1035075 ((_ is Union!15909) (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292))))))

(declare-fun b!5841518 () Bool)

(declare-fun e!3583021 () Bool)

(assert (=> b!5841518 (= e!3583021 e!3583025)))

(declare-fun c!1035076 () Bool)

(assert (=> b!5841518 (= c!1035076 ((_ is Star!15909) (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292))))))

(declare-fun b!5841519 () Bool)

(declare-fun e!3583026 () Bool)

(assert (=> b!5841519 (= e!3583026 call!456296)))

(declare-fun b!5841520 () Bool)

(declare-fun res!2460828 () Bool)

(assert (=> b!5841520 (=> (not res!2460828) (not e!3583022))))

(assert (=> b!5841520 (= res!2460828 call!456294)))

(assert (=> b!5841520 (= e!3583023 e!3583022)))

(declare-fun bm!456290 () Bool)

(assert (=> bm!456290 (= call!456295 (validRegex!7645 (ite c!1035075 (regTwo!32331 (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292))) (regTwo!32330 (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292))))))))

(declare-fun b!5841522 () Bool)

(declare-fun res!2460826 () Bool)

(assert (=> b!5841522 (=> res!2460826 e!3583024)))

(assert (=> b!5841522 (= res!2460826 (not ((_ is Concat!24754) (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292)))))))

(assert (=> b!5841522 (= e!3583023 e!3583024)))

(declare-fun d!1835414 () Bool)

(declare-fun res!2460827 () Bool)

(assert (=> d!1835414 (=> res!2460827 e!3583021)))

(assert (=> d!1835414 (= res!2460827 ((_ is ElementMatch!15909) (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292))))))

(assert (=> d!1835414 (= (validRegex!7645 (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292))) e!3583021)))

(declare-fun b!5841521 () Bool)

(assert (=> b!5841521 (= e!3583025 e!3583026)))

(declare-fun res!2460825 () Bool)

(assert (=> b!5841521 (= res!2460825 (not (nullable!5908 (reg!16238 (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292))))))))

(assert (=> b!5841521 (=> (not res!2460825) (not e!3583026))))

(declare-fun bm!456291 () Bool)

(assert (=> bm!456291 (= call!456296 (validRegex!7645 (ite c!1035076 (reg!16238 (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292))) (ite c!1035075 (regOne!32331 (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292))) (regOne!32330 (ite c!1034850 (regTwo!32331 r!7292) (regTwo!32330 r!7292)))))))))

(declare-fun b!5841523 () Bool)

(assert (=> b!5841523 (= e!3583027 call!456295)))

(assert (= (and d!1835414 (not res!2460827)) b!5841518))

(assert (= (and b!5841518 c!1035076) b!5841521))

(assert (= (and b!5841518 (not c!1035076)) b!5841517))

(assert (= (and b!5841521 res!2460825) b!5841519))

(assert (= (and b!5841517 c!1035075) b!5841520))

(assert (= (and b!5841517 (not c!1035075)) b!5841522))

(assert (= (and b!5841520 res!2460828) b!5841515))

(assert (= (and b!5841522 (not res!2460826)) b!5841516))

(assert (= (and b!5841516 res!2460824) b!5841523))

(assert (= (or b!5841515 b!5841523) bm!456290))

(assert (= (or b!5841520 b!5841516) bm!456289))

(assert (= (or b!5841519 bm!456289) bm!456291))

(declare-fun m!6765576 () Bool)

(assert (=> bm!456290 m!6765576))

(declare-fun m!6765578 () Bool)

(assert (=> b!5841521 m!6765578))

(declare-fun m!6765580 () Bool)

(assert (=> bm!456291 m!6765580))

(assert (=> bm!456181 d!1835414))

(declare-fun bs!1376298 () Bool)

(declare-fun b!5841531 () Bool)

(assert (= bs!1376298 (and b!5841531 b!5841427)))

(declare-fun lambda!319564 () Int)

(assert (=> bs!1376298 (= (and (= (reg!16238 (regOne!32331 (regTwo!32331 r!7292))) (reg!16238 (regTwo!32331 (regTwo!32331 r!7292)))) (= (regOne!32331 (regTwo!32331 r!7292)) (regTwo!32331 (regTwo!32331 r!7292)))) (= lambda!319564 lambda!319559))))

(declare-fun bs!1376299 () Bool)

(assert (= bs!1376299 (and b!5841531 b!5841506)))

(assert (=> bs!1376299 (not (= lambda!319564 lambda!319563))))

(declare-fun bs!1376300 () Bool)

(assert (= bs!1376300 (and b!5841531 b!5840881)))

(assert (=> bs!1376300 (= (and (= (reg!16238 (regOne!32331 (regTwo!32331 r!7292))) (reg!16238 r!7292)) (= (regOne!32331 (regTwo!32331 r!7292)) r!7292)) (= lambda!319564 lambda!319528))))

(declare-fun bs!1376301 () Bool)

(assert (= bs!1376301 (and b!5841531 b!5840716)))

(assert (=> bs!1376301 (not (= lambda!319564 lambda!319512))))

(declare-fun bs!1376302 () Bool)

(assert (= bs!1376302 (and b!5841531 b!5840876)))

(assert (=> bs!1376302 (not (= lambda!319564 lambda!319529))))

(declare-fun bs!1376303 () Bool)

(assert (= bs!1376303 (and b!5841531 b!5840721)))

(assert (=> bs!1376303 (= (and (= (reg!16238 (regOne!32331 (regTwo!32331 r!7292))) (reg!16238 (regTwo!32331 r!7292))) (= (regOne!32331 (regTwo!32331 r!7292)) (regTwo!32331 r!7292))) (= lambda!319564 lambda!319511))))

(declare-fun bs!1376304 () Bool)

(assert (= bs!1376304 (and b!5841531 b!5841422)))

(assert (=> bs!1376304 (not (= lambda!319564 lambda!319560))))

(declare-fun bs!1376305 () Bool)

(assert (= bs!1376305 (and b!5841531 b!5840778)))

(assert (=> bs!1376305 (= (and (= (reg!16238 (regOne!32331 (regTwo!32331 r!7292))) (reg!16238 (regOne!32331 r!7292))) (= (regOne!32331 (regTwo!32331 r!7292)) (regOne!32331 r!7292))) (= lambda!319564 lambda!319513))))

(declare-fun bs!1376306 () Bool)

(assert (= bs!1376306 (and b!5841531 b!5841511)))

(assert (=> bs!1376306 (= (and (= (reg!16238 (regOne!32331 (regTwo!32331 r!7292))) (reg!16238 (regTwo!32331 (regOne!32331 r!7292)))) (= (regOne!32331 (regTwo!32331 r!7292)) (regTwo!32331 (regOne!32331 r!7292)))) (= lambda!319564 lambda!319562))))

(declare-fun bs!1376307 () Bool)

(assert (= bs!1376307 (and b!5841531 b!5840773)))

(assert (=> bs!1376307 (not (= lambda!319564 lambda!319514))))

(assert (=> b!5841531 true))

(assert (=> b!5841531 true))

(declare-fun bs!1376308 () Bool)

(declare-fun b!5841526 () Bool)

(assert (= bs!1376308 (and b!5841526 b!5841531)))

(declare-fun lambda!319565 () Int)

(assert (=> bs!1376308 (not (= lambda!319565 lambda!319564))))

(declare-fun bs!1376309 () Bool)

(assert (= bs!1376309 (and b!5841526 b!5841427)))

(assert (=> bs!1376309 (not (= lambda!319565 lambda!319559))))

(declare-fun bs!1376310 () Bool)

(assert (= bs!1376310 (and b!5841526 b!5841506)))

(assert (=> bs!1376310 (= (and (= (regOne!32330 (regOne!32331 (regTwo!32331 r!7292))) (regOne!32330 (regTwo!32331 (regOne!32331 r!7292)))) (= (regTwo!32330 (regOne!32331 (regTwo!32331 r!7292))) (regTwo!32330 (regTwo!32331 (regOne!32331 r!7292))))) (= lambda!319565 lambda!319563))))

(declare-fun bs!1376311 () Bool)

(assert (= bs!1376311 (and b!5841526 b!5840881)))

(assert (=> bs!1376311 (not (= lambda!319565 lambda!319528))))

(declare-fun bs!1376312 () Bool)

(assert (= bs!1376312 (and b!5841526 b!5840716)))

(assert (=> bs!1376312 (= (and (= (regOne!32330 (regOne!32331 (regTwo!32331 r!7292))) (regOne!32330 (regTwo!32331 r!7292))) (= (regTwo!32330 (regOne!32331 (regTwo!32331 r!7292))) (regTwo!32330 (regTwo!32331 r!7292)))) (= lambda!319565 lambda!319512))))

(declare-fun bs!1376313 () Bool)

(assert (= bs!1376313 (and b!5841526 b!5840876)))

(assert (=> bs!1376313 (= (and (= (regOne!32330 (regOne!32331 (regTwo!32331 r!7292))) (regOne!32330 r!7292)) (= (regTwo!32330 (regOne!32331 (regTwo!32331 r!7292))) (regTwo!32330 r!7292))) (= lambda!319565 lambda!319529))))

(declare-fun bs!1376314 () Bool)

(assert (= bs!1376314 (and b!5841526 b!5840721)))

(assert (=> bs!1376314 (not (= lambda!319565 lambda!319511))))

(declare-fun bs!1376315 () Bool)

(assert (= bs!1376315 (and b!5841526 b!5841422)))

(assert (=> bs!1376315 (= (and (= (regOne!32330 (regOne!32331 (regTwo!32331 r!7292))) (regOne!32330 (regTwo!32331 (regTwo!32331 r!7292)))) (= (regTwo!32330 (regOne!32331 (regTwo!32331 r!7292))) (regTwo!32330 (regTwo!32331 (regTwo!32331 r!7292))))) (= lambda!319565 lambda!319560))))

(declare-fun bs!1376316 () Bool)

(assert (= bs!1376316 (and b!5841526 b!5840778)))

(assert (=> bs!1376316 (not (= lambda!319565 lambda!319513))))

(declare-fun bs!1376317 () Bool)

(assert (= bs!1376317 (and b!5841526 b!5841511)))

(assert (=> bs!1376317 (not (= lambda!319565 lambda!319562))))

(declare-fun bs!1376318 () Bool)

(assert (= bs!1376318 (and b!5841526 b!5840773)))

(assert (=> bs!1376318 (= (and (= (regOne!32330 (regOne!32331 (regTwo!32331 r!7292))) (regOne!32330 (regOne!32331 r!7292))) (= (regTwo!32330 (regOne!32331 (regTwo!32331 r!7292))) (regTwo!32330 (regOne!32331 r!7292)))) (= lambda!319565 lambda!319514))))

(assert (=> b!5841526 true))

(assert (=> b!5841526 true))

(declare-fun bm!456292 () Bool)

(declare-fun call!456297 () Bool)

(assert (=> bm!456292 (= call!456297 (isEmpty!35761 s!2326))))

(declare-fun b!5841524 () Bool)

(declare-fun e!3583030 () Bool)

(declare-fun e!3583033 () Bool)

(assert (=> b!5841524 (= e!3583030 e!3583033)))

(declare-fun res!2460831 () Bool)

(assert (=> b!5841524 (= res!2460831 (not ((_ is EmptyLang!15909) (regOne!32331 (regTwo!32331 r!7292)))))))

(assert (=> b!5841524 (=> (not res!2460831) (not e!3583033))))

(declare-fun b!5841525 () Bool)

(declare-fun e!3583029 () Bool)

(assert (=> b!5841525 (= e!3583029 (matchRSpec!3010 (regTwo!32331 (regOne!32331 (regTwo!32331 r!7292))) s!2326))))

(declare-fun e!3583031 () Bool)

(declare-fun call!456298 () Bool)

(assert (=> b!5841526 (= e!3583031 call!456298)))

(declare-fun d!1835416 () Bool)

(declare-fun c!1035079 () Bool)

(assert (=> d!1835416 (= c!1035079 ((_ is EmptyExpr!15909) (regOne!32331 (regTwo!32331 r!7292))))))

(assert (=> d!1835416 (= (matchRSpec!3010 (regOne!32331 (regTwo!32331 r!7292)) s!2326) e!3583030)))

(declare-fun b!5841527 () Bool)

(declare-fun c!1035078 () Bool)

(assert (=> b!5841527 (= c!1035078 ((_ is Union!15909) (regOne!32331 (regTwo!32331 r!7292))))))

(declare-fun e!3583034 () Bool)

(declare-fun e!3583028 () Bool)

(assert (=> b!5841527 (= e!3583034 e!3583028)))

(declare-fun bm!456293 () Bool)

(declare-fun c!1035080 () Bool)

(assert (=> bm!456293 (= call!456298 (Exists!2980 (ite c!1035080 lambda!319564 lambda!319565)))))

(declare-fun b!5841528 () Bool)

(declare-fun res!2460830 () Bool)

(declare-fun e!3583032 () Bool)

(assert (=> b!5841528 (=> res!2460830 e!3583032)))

(assert (=> b!5841528 (= res!2460830 call!456297)))

(assert (=> b!5841528 (= e!3583031 e!3583032)))

(declare-fun b!5841529 () Bool)

(assert (=> b!5841529 (= e!3583034 (= s!2326 (Cons!63904 (c!1034845 (regOne!32331 (regTwo!32331 r!7292))) Nil!63904)))))

(declare-fun b!5841530 () Bool)

(assert (=> b!5841530 (= e!3583028 e!3583031)))

(assert (=> b!5841530 (= c!1035080 ((_ is Star!15909) (regOne!32331 (regTwo!32331 r!7292))))))

(assert (=> b!5841531 (= e!3583032 call!456298)))

(declare-fun b!5841532 () Bool)

(assert (=> b!5841532 (= e!3583030 call!456297)))

(declare-fun b!5841533 () Bool)

(declare-fun c!1035077 () Bool)

(assert (=> b!5841533 (= c!1035077 ((_ is ElementMatch!15909) (regOne!32331 (regTwo!32331 r!7292))))))

(assert (=> b!5841533 (= e!3583033 e!3583034)))

(declare-fun b!5841534 () Bool)

(assert (=> b!5841534 (= e!3583028 e!3583029)))

(declare-fun res!2460829 () Bool)

(assert (=> b!5841534 (= res!2460829 (matchRSpec!3010 (regOne!32331 (regOne!32331 (regTwo!32331 r!7292))) s!2326))))

(assert (=> b!5841534 (=> res!2460829 e!3583029)))

(assert (= (and d!1835416 c!1035079) b!5841532))

(assert (= (and d!1835416 (not c!1035079)) b!5841524))

(assert (= (and b!5841524 res!2460831) b!5841533))

(assert (= (and b!5841533 c!1035077) b!5841529))

(assert (= (and b!5841533 (not c!1035077)) b!5841527))

(assert (= (and b!5841527 c!1035078) b!5841534))

(assert (= (and b!5841527 (not c!1035078)) b!5841530))

(assert (= (and b!5841534 (not res!2460829)) b!5841525))

(assert (= (and b!5841530 c!1035080) b!5841528))

(assert (= (and b!5841530 (not c!1035080)) b!5841526))

(assert (= (and b!5841528 (not res!2460830)) b!5841531))

(assert (= (or b!5841531 b!5841526) bm!456293))

(assert (= (or b!5841532 b!5841528) bm!456292))

(assert (=> bm!456292 m!6765134))

(declare-fun m!6765582 () Bool)

(assert (=> b!5841525 m!6765582))

(declare-fun m!6765584 () Bool)

(assert (=> bm!456293 m!6765584))

(declare-fun m!6765586 () Bool)

(assert (=> b!5841534 m!6765586))

(assert (=> b!5840724 d!1835416))

(declare-fun bm!456294 () Bool)

(declare-fun call!456299 () Bool)

(declare-fun call!456301 () Bool)

(assert (=> bm!456294 (= call!456299 call!456301)))

(declare-fun b!5841535 () Bool)

(declare-fun e!3583036 () Bool)

(declare-fun call!456300 () Bool)

(assert (=> b!5841535 (= e!3583036 call!456300)))

(declare-fun b!5841536 () Bool)

(declare-fun e!3583038 () Bool)

(declare-fun e!3583041 () Bool)

(assert (=> b!5841536 (= e!3583038 e!3583041)))

(declare-fun res!2460832 () Bool)

(assert (=> b!5841536 (=> (not res!2460832) (not e!3583041))))

(assert (=> b!5841536 (= res!2460832 call!456299)))

(declare-fun b!5841537 () Bool)

(declare-fun e!3583039 () Bool)

(declare-fun e!3583037 () Bool)

(assert (=> b!5841537 (= e!3583039 e!3583037)))

(declare-fun c!1035081 () Bool)

(assert (=> b!5841537 (= c!1035081 ((_ is Union!15909) lt!2303784))))

(declare-fun b!5841538 () Bool)

(declare-fun e!3583035 () Bool)

(assert (=> b!5841538 (= e!3583035 e!3583039)))

(declare-fun c!1035082 () Bool)

(assert (=> b!5841538 (= c!1035082 ((_ is Star!15909) lt!2303784))))

(declare-fun b!5841539 () Bool)

(declare-fun e!3583040 () Bool)

(assert (=> b!5841539 (= e!3583040 call!456301)))

(declare-fun b!5841540 () Bool)

(declare-fun res!2460836 () Bool)

(assert (=> b!5841540 (=> (not res!2460836) (not e!3583036))))

(assert (=> b!5841540 (= res!2460836 call!456299)))

(assert (=> b!5841540 (= e!3583037 e!3583036)))

(declare-fun bm!456295 () Bool)

(assert (=> bm!456295 (= call!456300 (validRegex!7645 (ite c!1035081 (regTwo!32331 lt!2303784) (regTwo!32330 lt!2303784))))))

(declare-fun b!5841542 () Bool)

(declare-fun res!2460834 () Bool)

(assert (=> b!5841542 (=> res!2460834 e!3583038)))

(assert (=> b!5841542 (= res!2460834 (not ((_ is Concat!24754) lt!2303784)))))

(assert (=> b!5841542 (= e!3583037 e!3583038)))

(declare-fun d!1835418 () Bool)

(declare-fun res!2460835 () Bool)

(assert (=> d!1835418 (=> res!2460835 e!3583035)))

(assert (=> d!1835418 (= res!2460835 ((_ is ElementMatch!15909) lt!2303784))))

(assert (=> d!1835418 (= (validRegex!7645 lt!2303784) e!3583035)))

(declare-fun b!5841541 () Bool)

(assert (=> b!5841541 (= e!3583039 e!3583040)))

(declare-fun res!2460833 () Bool)

(assert (=> b!5841541 (= res!2460833 (not (nullable!5908 (reg!16238 lt!2303784))))))

(assert (=> b!5841541 (=> (not res!2460833) (not e!3583040))))

(declare-fun bm!456296 () Bool)

(assert (=> bm!456296 (= call!456301 (validRegex!7645 (ite c!1035082 (reg!16238 lt!2303784) (ite c!1035081 (regOne!32331 lt!2303784) (regOne!32330 lt!2303784)))))))

(declare-fun b!5841543 () Bool)

(assert (=> b!5841543 (= e!3583041 call!456300)))

(assert (= (and d!1835418 (not res!2460835)) b!5841538))

(assert (= (and b!5841538 c!1035082) b!5841541))

(assert (= (and b!5841538 (not c!1035082)) b!5841537))

(assert (= (and b!5841541 res!2460833) b!5841539))

(assert (= (and b!5841537 c!1035081) b!5841540))

(assert (= (and b!5841537 (not c!1035081)) b!5841542))

(assert (= (and b!5841540 res!2460836) b!5841535))

(assert (= (and b!5841542 (not res!2460834)) b!5841536))

(assert (= (and b!5841536 res!2460832) b!5841543))

(assert (= (or b!5841535 b!5841543) bm!456295))

(assert (= (or b!5841540 b!5841536) bm!456294))

(assert (= (or b!5841539 bm!456294) bm!456296))

(declare-fun m!6765588 () Bool)

(assert (=> bm!456295 m!6765588))

(declare-fun m!6765590 () Bool)

(assert (=> b!5841541 m!6765590))

(declare-fun m!6765592 () Bool)

(assert (=> bm!456296 m!6765592))

(assert (=> d!1835270 d!1835418))

(declare-fun d!1835420 () Bool)

(declare-fun res!2460837 () Bool)

(declare-fun e!3583042 () Bool)

(assert (=> d!1835420 (=> res!2460837 e!3583042)))

(assert (=> d!1835420 (= res!2460837 ((_ is Nil!63902) (unfocusZipperList!1330 zl!343)))))

(assert (=> d!1835420 (= (forall!14996 (unfocusZipperList!1330 zl!343) lambda!319536) e!3583042)))

(declare-fun b!5841544 () Bool)

(declare-fun e!3583043 () Bool)

(assert (=> b!5841544 (= e!3583042 e!3583043)))

(declare-fun res!2460838 () Bool)

(assert (=> b!5841544 (=> (not res!2460838) (not e!3583043))))

(assert (=> b!5841544 (= res!2460838 (dynLambda!24979 lambda!319536 (h!70350 (unfocusZipperList!1330 zl!343))))))

(declare-fun b!5841545 () Bool)

(assert (=> b!5841545 (= e!3583043 (forall!14996 (t!377381 (unfocusZipperList!1330 zl!343)) lambda!319536))))

(assert (= (and d!1835420 (not res!2460837)) b!5841544))

(assert (= (and b!5841544 res!2460838) b!5841545))

(declare-fun b_lambda!219965 () Bool)

(assert (=> (not b_lambda!219965) (not b!5841544)))

(declare-fun m!6765594 () Bool)

(assert (=> b!5841544 m!6765594))

(declare-fun m!6765596 () Bool)

(assert (=> b!5841545 m!6765596))

(assert (=> d!1835270 d!1835420))

(assert (=> d!1835236 d!1835244))

(assert (=> d!1835236 d!1835242))

(declare-fun d!1835422 () Bool)

(assert (=> d!1835422 (= (matchR!8092 (regOne!32331 r!7292) s!2326) (matchRSpec!3010 (regOne!32331 r!7292) s!2326))))

(assert (=> d!1835422 true))

(declare-fun _$88!4205 () Unit!157089)

(assert (=> d!1835422 (= (choose!44340 (regOne!32331 r!7292) s!2326) _$88!4205)))

(declare-fun bs!1376319 () Bool)

(assert (= bs!1376319 d!1835422))

(assert (=> bs!1376319 m!6765104))

(assert (=> bs!1376319 m!6765100))

(assert (=> d!1835236 d!1835422))

(assert (=> d!1835236 d!1835400))

(assert (=> b!5840916 d!1835328))

(declare-fun d!1835424 () Bool)

(assert (=> d!1835424 (= (nullable!5908 (regOne!32331 r!7292)) (nullableFct!1895 (regOne!32331 r!7292)))))

(declare-fun bs!1376320 () Bool)

(assert (= bs!1376320 d!1835424))

(declare-fun m!6765598 () Bool)

(assert (=> bs!1376320 m!6765598))

(assert (=> b!5840791 d!1835424))

(declare-fun d!1835426 () Bool)

(assert (=> d!1835426 (= (Exists!2980 (ite c!1034863 lambda!319511 lambda!319512)) (choose!44344 (ite c!1034863 lambda!319511 lambda!319512)))))

(declare-fun bs!1376321 () Bool)

(assert (= bs!1376321 d!1835426))

(declare-fun m!6765600 () Bool)

(assert (=> bs!1376321 m!6765600))

(assert (=> bm!456188 d!1835426))

(declare-fun d!1835428 () Bool)

(assert (=> d!1835428 (= (head!12372 (unfocusZipperList!1330 zl!343)) (h!70350 (unfocusZipperList!1330 zl!343)))))

(assert (=> b!5840956 d!1835428))

(declare-fun d!1835430 () Bool)

(declare-fun res!2460839 () Bool)

(declare-fun e!3583044 () Bool)

(assert (=> d!1835430 (=> res!2460839 e!3583044)))

(assert (=> d!1835430 (= res!2460839 ((_ is Nil!63902) (exprs!5793 (Context!10587 Nil!63902))))))

(assert (=> d!1835430 (= (forall!14996 (exprs!5793 (Context!10587 Nil!63902)) lambda!319518) e!3583044)))

(declare-fun b!5841546 () Bool)

(declare-fun e!3583045 () Bool)

(assert (=> b!5841546 (= e!3583044 e!3583045)))

(declare-fun res!2460840 () Bool)

(assert (=> b!5841546 (=> (not res!2460840) (not e!3583045))))

(assert (=> b!5841546 (= res!2460840 (dynLambda!24979 lambda!319518 (h!70350 (exprs!5793 (Context!10587 Nil!63902)))))))

(declare-fun b!5841547 () Bool)

(assert (=> b!5841547 (= e!3583045 (forall!14996 (t!377381 (exprs!5793 (Context!10587 Nil!63902))) lambda!319518))))

(assert (= (and d!1835430 (not res!2460839)) b!5841546))

(assert (= (and b!5841546 res!2460840) b!5841547))

(declare-fun b_lambda!219967 () Bool)

(assert (=> (not b_lambda!219967) (not b!5841546)))

(declare-fun m!6765602 () Bool)

(assert (=> b!5841546 m!6765602))

(declare-fun m!6765604 () Bool)

(assert (=> b!5841547 m!6765604))

(assert (=> d!1835252 d!1835430))

(assert (=> b!5840884 d!1835242))

(assert (=> bm!456194 d!1835324))

(declare-fun bs!1376322 () Bool)

(declare-fun b!5841555 () Bool)

(assert (= bs!1376322 (and b!5841555 b!5841531)))

(declare-fun lambda!319566 () Int)

(assert (=> bs!1376322 (= (and (= (reg!16238 (regOne!32331 (regOne!32331 r!7292))) (reg!16238 (regOne!32331 (regTwo!32331 r!7292)))) (= (regOne!32331 (regOne!32331 r!7292)) (regOne!32331 (regTwo!32331 r!7292)))) (= lambda!319566 lambda!319564))))

(declare-fun bs!1376323 () Bool)

(assert (= bs!1376323 (and b!5841555 b!5841427)))

(assert (=> bs!1376323 (= (and (= (reg!16238 (regOne!32331 (regOne!32331 r!7292))) (reg!16238 (regTwo!32331 (regTwo!32331 r!7292)))) (= (regOne!32331 (regOne!32331 r!7292)) (regTwo!32331 (regTwo!32331 r!7292)))) (= lambda!319566 lambda!319559))))

(declare-fun bs!1376324 () Bool)

(assert (= bs!1376324 (and b!5841555 b!5840881)))

(assert (=> bs!1376324 (= (and (= (reg!16238 (regOne!32331 (regOne!32331 r!7292))) (reg!16238 r!7292)) (= (regOne!32331 (regOne!32331 r!7292)) r!7292)) (= lambda!319566 lambda!319528))))

(declare-fun bs!1376325 () Bool)

(assert (= bs!1376325 (and b!5841555 b!5840716)))

(assert (=> bs!1376325 (not (= lambda!319566 lambda!319512))))

(declare-fun bs!1376326 () Bool)

(assert (= bs!1376326 (and b!5841555 b!5840876)))

(assert (=> bs!1376326 (not (= lambda!319566 lambda!319529))))

(declare-fun bs!1376327 () Bool)

(assert (= bs!1376327 (and b!5841555 b!5840721)))

(assert (=> bs!1376327 (= (and (= (reg!16238 (regOne!32331 (regOne!32331 r!7292))) (reg!16238 (regTwo!32331 r!7292))) (= (regOne!32331 (regOne!32331 r!7292)) (regTwo!32331 r!7292))) (= lambda!319566 lambda!319511))))

(declare-fun bs!1376328 () Bool)

(assert (= bs!1376328 (and b!5841555 b!5841526)))

(assert (=> bs!1376328 (not (= lambda!319566 lambda!319565))))

(declare-fun bs!1376329 () Bool)

(assert (= bs!1376329 (and b!5841555 b!5841506)))

(assert (=> bs!1376329 (not (= lambda!319566 lambda!319563))))

(declare-fun bs!1376330 () Bool)

(assert (= bs!1376330 (and b!5841555 b!5841422)))

(assert (=> bs!1376330 (not (= lambda!319566 lambda!319560))))

(declare-fun bs!1376331 () Bool)

(assert (= bs!1376331 (and b!5841555 b!5840778)))

(assert (=> bs!1376331 (= (and (= (reg!16238 (regOne!32331 (regOne!32331 r!7292))) (reg!16238 (regOne!32331 r!7292))) (= (regOne!32331 (regOne!32331 r!7292)) (regOne!32331 r!7292))) (= lambda!319566 lambda!319513))))

(declare-fun bs!1376332 () Bool)

(assert (= bs!1376332 (and b!5841555 b!5841511)))

(assert (=> bs!1376332 (= (and (= (reg!16238 (regOne!32331 (regOne!32331 r!7292))) (reg!16238 (regTwo!32331 (regOne!32331 r!7292)))) (= (regOne!32331 (regOne!32331 r!7292)) (regTwo!32331 (regOne!32331 r!7292)))) (= lambda!319566 lambda!319562))))

(declare-fun bs!1376333 () Bool)

(assert (= bs!1376333 (and b!5841555 b!5840773)))

(assert (=> bs!1376333 (not (= lambda!319566 lambda!319514))))

(assert (=> b!5841555 true))

(assert (=> b!5841555 true))

(declare-fun bs!1376334 () Bool)

(declare-fun b!5841550 () Bool)

(assert (= bs!1376334 (and b!5841550 b!5841531)))

(declare-fun lambda!319567 () Int)

(assert (=> bs!1376334 (not (= lambda!319567 lambda!319564))))

(declare-fun bs!1376335 () Bool)

(assert (= bs!1376335 (and b!5841550 b!5841427)))

(assert (=> bs!1376335 (not (= lambda!319567 lambda!319559))))

(declare-fun bs!1376336 () Bool)

(assert (= bs!1376336 (and b!5841550 b!5841555)))

(assert (=> bs!1376336 (not (= lambda!319567 lambda!319566))))

(declare-fun bs!1376337 () Bool)

(assert (= bs!1376337 (and b!5841550 b!5840881)))

(assert (=> bs!1376337 (not (= lambda!319567 lambda!319528))))

(declare-fun bs!1376338 () Bool)

(assert (= bs!1376338 (and b!5841550 b!5840716)))

(assert (=> bs!1376338 (= (and (= (regOne!32330 (regOne!32331 (regOne!32331 r!7292))) (regOne!32330 (regTwo!32331 r!7292))) (= (regTwo!32330 (regOne!32331 (regOne!32331 r!7292))) (regTwo!32330 (regTwo!32331 r!7292)))) (= lambda!319567 lambda!319512))))

(declare-fun bs!1376339 () Bool)

(assert (= bs!1376339 (and b!5841550 b!5840876)))

(assert (=> bs!1376339 (= (and (= (regOne!32330 (regOne!32331 (regOne!32331 r!7292))) (regOne!32330 r!7292)) (= (regTwo!32330 (regOne!32331 (regOne!32331 r!7292))) (regTwo!32330 r!7292))) (= lambda!319567 lambda!319529))))

(declare-fun bs!1376340 () Bool)

(assert (= bs!1376340 (and b!5841550 b!5840721)))

(assert (=> bs!1376340 (not (= lambda!319567 lambda!319511))))

(declare-fun bs!1376341 () Bool)

(assert (= bs!1376341 (and b!5841550 b!5841526)))

(assert (=> bs!1376341 (= (and (= (regOne!32330 (regOne!32331 (regOne!32331 r!7292))) (regOne!32330 (regOne!32331 (regTwo!32331 r!7292)))) (= (regTwo!32330 (regOne!32331 (regOne!32331 r!7292))) (regTwo!32330 (regOne!32331 (regTwo!32331 r!7292))))) (= lambda!319567 lambda!319565))))

(declare-fun bs!1376342 () Bool)

(assert (= bs!1376342 (and b!5841550 b!5841506)))

(assert (=> bs!1376342 (= (and (= (regOne!32330 (regOne!32331 (regOne!32331 r!7292))) (regOne!32330 (regTwo!32331 (regOne!32331 r!7292)))) (= (regTwo!32330 (regOne!32331 (regOne!32331 r!7292))) (regTwo!32330 (regTwo!32331 (regOne!32331 r!7292))))) (= lambda!319567 lambda!319563))))

(declare-fun bs!1376343 () Bool)

(assert (= bs!1376343 (and b!5841550 b!5841422)))

(assert (=> bs!1376343 (= (and (= (regOne!32330 (regOne!32331 (regOne!32331 r!7292))) (regOne!32330 (regTwo!32331 (regTwo!32331 r!7292)))) (= (regTwo!32330 (regOne!32331 (regOne!32331 r!7292))) (regTwo!32330 (regTwo!32331 (regTwo!32331 r!7292))))) (= lambda!319567 lambda!319560))))

(declare-fun bs!1376344 () Bool)

(assert (= bs!1376344 (and b!5841550 b!5840778)))

(assert (=> bs!1376344 (not (= lambda!319567 lambda!319513))))

(declare-fun bs!1376345 () Bool)

(assert (= bs!1376345 (and b!5841550 b!5841511)))

(assert (=> bs!1376345 (not (= lambda!319567 lambda!319562))))

(declare-fun bs!1376346 () Bool)

(assert (= bs!1376346 (and b!5841550 b!5840773)))

(assert (=> bs!1376346 (= (and (= (regOne!32330 (regOne!32331 (regOne!32331 r!7292))) (regOne!32330 (regOne!32331 r!7292))) (= (regTwo!32330 (regOne!32331 (regOne!32331 r!7292))) (regTwo!32330 (regOne!32331 r!7292)))) (= lambda!319567 lambda!319514))))

(assert (=> b!5841550 true))

(assert (=> b!5841550 true))

(declare-fun bm!456297 () Bool)

(declare-fun call!456302 () Bool)

(assert (=> bm!456297 (= call!456302 (isEmpty!35761 s!2326))))

(declare-fun b!5841548 () Bool)

(declare-fun e!3583048 () Bool)

(declare-fun e!3583051 () Bool)

(assert (=> b!5841548 (= e!3583048 e!3583051)))

(declare-fun res!2460843 () Bool)

(assert (=> b!5841548 (= res!2460843 (not ((_ is EmptyLang!15909) (regOne!32331 (regOne!32331 r!7292)))))))

(assert (=> b!5841548 (=> (not res!2460843) (not e!3583051))))

(declare-fun b!5841549 () Bool)

(declare-fun e!3583047 () Bool)

(assert (=> b!5841549 (= e!3583047 (matchRSpec!3010 (regTwo!32331 (regOne!32331 (regOne!32331 r!7292))) s!2326))))

(declare-fun e!3583049 () Bool)

(declare-fun call!456303 () Bool)

(assert (=> b!5841550 (= e!3583049 call!456303)))

(declare-fun d!1835432 () Bool)

(declare-fun c!1035085 () Bool)

(assert (=> d!1835432 (= c!1035085 ((_ is EmptyExpr!15909) (regOne!32331 (regOne!32331 r!7292))))))

(assert (=> d!1835432 (= (matchRSpec!3010 (regOne!32331 (regOne!32331 r!7292)) s!2326) e!3583048)))

(declare-fun b!5841551 () Bool)

(declare-fun c!1035084 () Bool)

(assert (=> b!5841551 (= c!1035084 ((_ is Union!15909) (regOne!32331 (regOne!32331 r!7292))))))

(declare-fun e!3583052 () Bool)

(declare-fun e!3583046 () Bool)

(assert (=> b!5841551 (= e!3583052 e!3583046)))

(declare-fun bm!456298 () Bool)

(declare-fun c!1035086 () Bool)

(assert (=> bm!456298 (= call!456303 (Exists!2980 (ite c!1035086 lambda!319566 lambda!319567)))))

(declare-fun b!5841552 () Bool)

(declare-fun res!2460842 () Bool)

(declare-fun e!3583050 () Bool)

(assert (=> b!5841552 (=> res!2460842 e!3583050)))

(assert (=> b!5841552 (= res!2460842 call!456302)))

(assert (=> b!5841552 (= e!3583049 e!3583050)))

(declare-fun b!5841553 () Bool)

(assert (=> b!5841553 (= e!3583052 (= s!2326 (Cons!63904 (c!1034845 (regOne!32331 (regOne!32331 r!7292))) Nil!63904)))))

(declare-fun b!5841554 () Bool)

(assert (=> b!5841554 (= e!3583046 e!3583049)))

(assert (=> b!5841554 (= c!1035086 ((_ is Star!15909) (regOne!32331 (regOne!32331 r!7292))))))

(assert (=> b!5841555 (= e!3583050 call!456303)))

(declare-fun b!5841556 () Bool)

(assert (=> b!5841556 (= e!3583048 call!456302)))

(declare-fun b!5841557 () Bool)

(declare-fun c!1035083 () Bool)

(assert (=> b!5841557 (= c!1035083 ((_ is ElementMatch!15909) (regOne!32331 (regOne!32331 r!7292))))))

(assert (=> b!5841557 (= e!3583051 e!3583052)))

(declare-fun b!5841558 () Bool)

(assert (=> b!5841558 (= e!3583046 e!3583047)))

(declare-fun res!2460841 () Bool)

(assert (=> b!5841558 (= res!2460841 (matchRSpec!3010 (regOne!32331 (regOne!32331 (regOne!32331 r!7292))) s!2326))))

(assert (=> b!5841558 (=> res!2460841 e!3583047)))

(assert (= (and d!1835432 c!1035085) b!5841556))

(assert (= (and d!1835432 (not c!1035085)) b!5841548))

(assert (= (and b!5841548 res!2460843) b!5841557))

(assert (= (and b!5841557 c!1035083) b!5841553))

(assert (= (and b!5841557 (not c!1035083)) b!5841551))

(assert (= (and b!5841551 c!1035084) b!5841558))

(assert (= (and b!5841551 (not c!1035084)) b!5841554))

(assert (= (and b!5841558 (not res!2460841)) b!5841549))

(assert (= (and b!5841554 c!1035086) b!5841552))

(assert (= (and b!5841554 (not c!1035086)) b!5841550))

(assert (= (and b!5841552 (not res!2460842)) b!5841555))

(assert (= (or b!5841555 b!5841550) bm!456298))

(assert (= (or b!5841556 b!5841552) bm!456297))

(assert (=> bm!456297 m!6765134))

(declare-fun m!6765606 () Bool)

(assert (=> b!5841549 m!6765606))

(declare-fun m!6765608 () Bool)

(assert (=> bm!456298 m!6765608))

(declare-fun m!6765610 () Bool)

(assert (=> b!5841558 m!6765610))

(assert (=> b!5840781 d!1835432))

(declare-fun b!5841559 () Bool)

(declare-fun e!3583053 () Bool)

(assert (=> b!5841559 (= e!3583053 tp_is_empty!41071)))

(declare-fun b!5841562 () Bool)

(declare-fun tp!1615199 () Bool)

(declare-fun tp!1615198 () Bool)

(assert (=> b!5841562 (= e!3583053 (and tp!1615199 tp!1615198))))

(assert (=> b!5841056 (= tp!1615129 e!3583053)))

(declare-fun b!5841560 () Bool)

(declare-fun tp!1615197 () Bool)

(declare-fun tp!1615195 () Bool)

(assert (=> b!5841560 (= e!3583053 (and tp!1615197 tp!1615195))))

(declare-fun b!5841561 () Bool)

(declare-fun tp!1615196 () Bool)

(assert (=> b!5841561 (= e!3583053 tp!1615196)))

(assert (= (and b!5841056 ((_ is ElementMatch!15909) (h!70350 (exprs!5793 setElem!39572)))) b!5841559))

(assert (= (and b!5841056 ((_ is Concat!24754) (h!70350 (exprs!5793 setElem!39572)))) b!5841560))

(assert (= (and b!5841056 ((_ is Star!15909) (h!70350 (exprs!5793 setElem!39572)))) b!5841561))

(assert (= (and b!5841056 ((_ is Union!15909) (h!70350 (exprs!5793 setElem!39572)))) b!5841562))

(declare-fun b!5841563 () Bool)

(declare-fun e!3583054 () Bool)

(declare-fun tp!1615200 () Bool)

(declare-fun tp!1615201 () Bool)

(assert (=> b!5841563 (= e!3583054 (and tp!1615200 tp!1615201))))

(assert (=> b!5841056 (= tp!1615130 e!3583054)))

(assert (= (and b!5841056 ((_ is Cons!63902) (t!377381 (exprs!5793 setElem!39572)))) b!5841563))

(declare-fun b!5841564 () Bool)

(declare-fun e!3583055 () Bool)

(assert (=> b!5841564 (= e!3583055 tp_is_empty!41071)))

(declare-fun b!5841567 () Bool)

(declare-fun tp!1615206 () Bool)

(declare-fun tp!1615205 () Bool)

(assert (=> b!5841567 (= e!3583055 (and tp!1615206 tp!1615205))))

(assert (=> b!5841038 (= tp!1615111 e!3583055)))

(declare-fun b!5841565 () Bool)

(declare-fun tp!1615204 () Bool)

(declare-fun tp!1615202 () Bool)

(assert (=> b!5841565 (= e!3583055 (and tp!1615204 tp!1615202))))

(declare-fun b!5841566 () Bool)

(declare-fun tp!1615203 () Bool)

(assert (=> b!5841566 (= e!3583055 tp!1615203)))

(assert (= (and b!5841038 ((_ is ElementMatch!15909) (regOne!32331 (regTwo!32331 r!7292)))) b!5841564))

(assert (= (and b!5841038 ((_ is Concat!24754) (regOne!32331 (regTwo!32331 r!7292)))) b!5841565))

(assert (= (and b!5841038 ((_ is Star!15909) (regOne!32331 (regTwo!32331 r!7292)))) b!5841566))

(assert (= (and b!5841038 ((_ is Union!15909) (regOne!32331 (regTwo!32331 r!7292)))) b!5841567))

(declare-fun b!5841568 () Bool)

(declare-fun e!3583056 () Bool)

(assert (=> b!5841568 (= e!3583056 tp_is_empty!41071)))

(declare-fun b!5841571 () Bool)

(declare-fun tp!1615211 () Bool)

(declare-fun tp!1615210 () Bool)

(assert (=> b!5841571 (= e!3583056 (and tp!1615211 tp!1615210))))

(assert (=> b!5841038 (= tp!1615110 e!3583056)))

(declare-fun b!5841569 () Bool)

(declare-fun tp!1615209 () Bool)

(declare-fun tp!1615207 () Bool)

(assert (=> b!5841569 (= e!3583056 (and tp!1615209 tp!1615207))))

(declare-fun b!5841570 () Bool)

(declare-fun tp!1615208 () Bool)

(assert (=> b!5841570 (= e!3583056 tp!1615208)))

(assert (= (and b!5841038 ((_ is ElementMatch!15909) (regTwo!32331 (regTwo!32331 r!7292)))) b!5841568))

(assert (= (and b!5841038 ((_ is Concat!24754) (regTwo!32331 (regTwo!32331 r!7292)))) b!5841569))

(assert (= (and b!5841038 ((_ is Star!15909) (regTwo!32331 (regTwo!32331 r!7292)))) b!5841570))

(assert (= (and b!5841038 ((_ is Union!15909) (regTwo!32331 (regTwo!32331 r!7292)))) b!5841571))

(declare-fun b!5841572 () Bool)

(declare-fun e!3583057 () Bool)

(assert (=> b!5841572 (= e!3583057 tp_is_empty!41071)))

(declare-fun b!5841575 () Bool)

(declare-fun tp!1615216 () Bool)

(declare-fun tp!1615215 () Bool)

(assert (=> b!5841575 (= e!3583057 (and tp!1615216 tp!1615215))))

(assert (=> b!5841016 (= tp!1615087 e!3583057)))

(declare-fun b!5841573 () Bool)

(declare-fun tp!1615214 () Bool)

(declare-fun tp!1615212 () Bool)

(assert (=> b!5841573 (= e!3583057 (and tp!1615214 tp!1615212))))

(declare-fun b!5841574 () Bool)

(declare-fun tp!1615213 () Bool)

(assert (=> b!5841574 (= e!3583057 tp!1615213)))

(assert (= (and b!5841016 ((_ is ElementMatch!15909) (reg!16238 (regOne!32330 r!7292)))) b!5841572))

(assert (= (and b!5841016 ((_ is Concat!24754) (reg!16238 (regOne!32330 r!7292)))) b!5841573))

(assert (= (and b!5841016 ((_ is Star!15909) (reg!16238 (regOne!32330 r!7292)))) b!5841574))

(assert (= (and b!5841016 ((_ is Union!15909) (reg!16238 (regOne!32330 r!7292)))) b!5841575))

(declare-fun b!5841576 () Bool)

(declare-fun e!3583058 () Bool)

(assert (=> b!5841576 (= e!3583058 tp_is_empty!41071)))

(declare-fun b!5841579 () Bool)

(declare-fun tp!1615221 () Bool)

(declare-fun tp!1615220 () Bool)

(assert (=> b!5841579 (= e!3583058 (and tp!1615221 tp!1615220))))

(assert (=> b!5841037 (= tp!1615108 e!3583058)))

(declare-fun b!5841577 () Bool)

(declare-fun tp!1615219 () Bool)

(declare-fun tp!1615217 () Bool)

(assert (=> b!5841577 (= e!3583058 (and tp!1615219 tp!1615217))))

(declare-fun b!5841578 () Bool)

(declare-fun tp!1615218 () Bool)

(assert (=> b!5841578 (= e!3583058 tp!1615218)))

(assert (= (and b!5841037 ((_ is ElementMatch!15909) (reg!16238 (regTwo!32331 r!7292)))) b!5841576))

(assert (= (and b!5841037 ((_ is Concat!24754) (reg!16238 (regTwo!32331 r!7292)))) b!5841577))

(assert (= (and b!5841037 ((_ is Star!15909) (reg!16238 (regTwo!32331 r!7292)))) b!5841578))

(assert (= (and b!5841037 ((_ is Union!15909) (reg!16238 (regTwo!32331 r!7292)))) b!5841579))

(declare-fun b!5841580 () Bool)

(declare-fun e!3583059 () Bool)

(assert (=> b!5841580 (= e!3583059 tp_is_empty!41071)))

(declare-fun b!5841583 () Bool)

(declare-fun tp!1615226 () Bool)

(declare-fun tp!1615225 () Bool)

(assert (=> b!5841583 (= e!3583059 (and tp!1615226 tp!1615225))))

(assert (=> b!5841015 (= tp!1615088 e!3583059)))

(declare-fun b!5841581 () Bool)

(declare-fun tp!1615224 () Bool)

(declare-fun tp!1615222 () Bool)

(assert (=> b!5841581 (= e!3583059 (and tp!1615224 tp!1615222))))

(declare-fun b!5841582 () Bool)

(declare-fun tp!1615223 () Bool)

(assert (=> b!5841582 (= e!3583059 tp!1615223)))

(assert (= (and b!5841015 ((_ is ElementMatch!15909) (regOne!32330 (regOne!32330 r!7292)))) b!5841580))

(assert (= (and b!5841015 ((_ is Concat!24754) (regOne!32330 (regOne!32330 r!7292)))) b!5841581))

(assert (= (and b!5841015 ((_ is Star!15909) (regOne!32330 (regOne!32330 r!7292)))) b!5841582))

(assert (= (and b!5841015 ((_ is Union!15909) (regOne!32330 (regOne!32330 r!7292)))) b!5841583))

(declare-fun b!5841584 () Bool)

(declare-fun e!3583060 () Bool)

(assert (=> b!5841584 (= e!3583060 tp_is_empty!41071)))

(declare-fun b!5841587 () Bool)

(declare-fun tp!1615231 () Bool)

(declare-fun tp!1615230 () Bool)

(assert (=> b!5841587 (= e!3583060 (and tp!1615231 tp!1615230))))

(assert (=> b!5841015 (= tp!1615086 e!3583060)))

(declare-fun b!5841585 () Bool)

(declare-fun tp!1615229 () Bool)

(declare-fun tp!1615227 () Bool)

(assert (=> b!5841585 (= e!3583060 (and tp!1615229 tp!1615227))))

(declare-fun b!5841586 () Bool)

(declare-fun tp!1615228 () Bool)

(assert (=> b!5841586 (= e!3583060 tp!1615228)))

(assert (= (and b!5841015 ((_ is ElementMatch!15909) (regTwo!32330 (regOne!32330 r!7292)))) b!5841584))

(assert (= (and b!5841015 ((_ is Concat!24754) (regTwo!32330 (regOne!32330 r!7292)))) b!5841585))

(assert (= (and b!5841015 ((_ is Star!15909) (regTwo!32330 (regOne!32330 r!7292)))) b!5841586))

(assert (= (and b!5841015 ((_ is Union!15909) (regTwo!32330 (regOne!32330 r!7292)))) b!5841587))

(declare-fun b!5841588 () Bool)

(declare-fun e!3583061 () Bool)

(assert (=> b!5841588 (= e!3583061 tp_is_empty!41071)))

(declare-fun b!5841591 () Bool)

(declare-fun tp!1615236 () Bool)

(declare-fun tp!1615235 () Bool)

(assert (=> b!5841591 (= e!3583061 (and tp!1615236 tp!1615235))))

(assert (=> b!5841036 (= tp!1615109 e!3583061)))

(declare-fun b!5841589 () Bool)

(declare-fun tp!1615234 () Bool)

(declare-fun tp!1615232 () Bool)

(assert (=> b!5841589 (= e!3583061 (and tp!1615234 tp!1615232))))

(declare-fun b!5841590 () Bool)

(declare-fun tp!1615233 () Bool)

(assert (=> b!5841590 (= e!3583061 tp!1615233)))

(assert (= (and b!5841036 ((_ is ElementMatch!15909) (regOne!32330 (regTwo!32331 r!7292)))) b!5841588))

(assert (= (and b!5841036 ((_ is Concat!24754) (regOne!32330 (regTwo!32331 r!7292)))) b!5841589))

(assert (= (and b!5841036 ((_ is Star!15909) (regOne!32330 (regTwo!32331 r!7292)))) b!5841590))

(assert (= (and b!5841036 ((_ is Union!15909) (regOne!32330 (regTwo!32331 r!7292)))) b!5841591))

(declare-fun b!5841592 () Bool)

(declare-fun e!3583062 () Bool)

(assert (=> b!5841592 (= e!3583062 tp_is_empty!41071)))

(declare-fun b!5841595 () Bool)

(declare-fun tp!1615241 () Bool)

(declare-fun tp!1615240 () Bool)

(assert (=> b!5841595 (= e!3583062 (and tp!1615241 tp!1615240))))

(assert (=> b!5841036 (= tp!1615107 e!3583062)))

(declare-fun b!5841593 () Bool)

(declare-fun tp!1615239 () Bool)

(declare-fun tp!1615237 () Bool)

(assert (=> b!5841593 (= e!3583062 (and tp!1615239 tp!1615237))))

(declare-fun b!5841594 () Bool)

(declare-fun tp!1615238 () Bool)

(assert (=> b!5841594 (= e!3583062 tp!1615238)))

(assert (= (and b!5841036 ((_ is ElementMatch!15909) (regTwo!32330 (regTwo!32331 r!7292)))) b!5841592))

(assert (= (and b!5841036 ((_ is Concat!24754) (regTwo!32330 (regTwo!32331 r!7292)))) b!5841593))

(assert (= (and b!5841036 ((_ is Star!15909) (regTwo!32330 (regTwo!32331 r!7292)))) b!5841594))

(assert (= (and b!5841036 ((_ is Union!15909) (regTwo!32330 (regTwo!32331 r!7292)))) b!5841595))

(declare-fun b!5841596 () Bool)

(declare-fun e!3583063 () Bool)

(assert (=> b!5841596 (= e!3583063 tp_is_empty!41071)))

(declare-fun b!5841599 () Bool)

(declare-fun tp!1615246 () Bool)

(declare-fun tp!1615245 () Bool)

(assert (=> b!5841599 (= e!3583063 (and tp!1615246 tp!1615245))))

(assert (=> b!5841055 (= tp!1615128 e!3583063)))

(declare-fun b!5841597 () Bool)

(declare-fun tp!1615244 () Bool)

(declare-fun tp!1615242 () Bool)

(assert (=> b!5841597 (= e!3583063 (and tp!1615244 tp!1615242))))

(declare-fun b!5841598 () Bool)

(declare-fun tp!1615243 () Bool)

(assert (=> b!5841598 (= e!3583063 tp!1615243)))

(assert (= (and b!5841055 ((_ is ElementMatch!15909) (regOne!32331 (reg!16238 r!7292)))) b!5841596))

(assert (= (and b!5841055 ((_ is Concat!24754) (regOne!32331 (reg!16238 r!7292)))) b!5841597))

(assert (= (and b!5841055 ((_ is Star!15909) (regOne!32331 (reg!16238 r!7292)))) b!5841598))

(assert (= (and b!5841055 ((_ is Union!15909) (regOne!32331 (reg!16238 r!7292)))) b!5841599))

(declare-fun b!5841600 () Bool)

(declare-fun e!3583064 () Bool)

(assert (=> b!5841600 (= e!3583064 tp_is_empty!41071)))

(declare-fun b!5841603 () Bool)

(declare-fun tp!1615251 () Bool)

(declare-fun tp!1615250 () Bool)

(assert (=> b!5841603 (= e!3583064 (and tp!1615251 tp!1615250))))

(assert (=> b!5841055 (= tp!1615127 e!3583064)))

(declare-fun b!5841601 () Bool)

(declare-fun tp!1615249 () Bool)

(declare-fun tp!1615247 () Bool)

(assert (=> b!5841601 (= e!3583064 (and tp!1615249 tp!1615247))))

(declare-fun b!5841602 () Bool)

(declare-fun tp!1615248 () Bool)

(assert (=> b!5841602 (= e!3583064 tp!1615248)))

(assert (= (and b!5841055 ((_ is ElementMatch!15909) (regTwo!32331 (reg!16238 r!7292)))) b!5841600))

(assert (= (and b!5841055 ((_ is Concat!24754) (regTwo!32331 (reg!16238 r!7292)))) b!5841601))

(assert (= (and b!5841055 ((_ is Star!15909) (regTwo!32331 (reg!16238 r!7292)))) b!5841602))

(assert (= (and b!5841055 ((_ is Union!15909) (regTwo!32331 (reg!16238 r!7292)))) b!5841603))

(declare-fun b!5841604 () Bool)

(declare-fun e!3583065 () Bool)

(assert (=> b!5841604 (= e!3583065 tp_is_empty!41071)))

(declare-fun b!5841607 () Bool)

(declare-fun tp!1615256 () Bool)

(declare-fun tp!1615255 () Bool)

(assert (=> b!5841607 (= e!3583065 (and tp!1615256 tp!1615255))))

(assert (=> b!5841054 (= tp!1615125 e!3583065)))

(declare-fun b!5841605 () Bool)

(declare-fun tp!1615254 () Bool)

(declare-fun tp!1615252 () Bool)

(assert (=> b!5841605 (= e!3583065 (and tp!1615254 tp!1615252))))

(declare-fun b!5841606 () Bool)

(declare-fun tp!1615253 () Bool)

(assert (=> b!5841606 (= e!3583065 tp!1615253)))

(assert (= (and b!5841054 ((_ is ElementMatch!15909) (reg!16238 (reg!16238 r!7292)))) b!5841604))

(assert (= (and b!5841054 ((_ is Concat!24754) (reg!16238 (reg!16238 r!7292)))) b!5841605))

(assert (= (and b!5841054 ((_ is Star!15909) (reg!16238 (reg!16238 r!7292)))) b!5841606))

(assert (= (and b!5841054 ((_ is Union!15909) (reg!16238 (reg!16238 r!7292)))) b!5841607))

(declare-fun b!5841608 () Bool)

(declare-fun e!3583066 () Bool)

(declare-fun tp!1615257 () Bool)

(assert (=> b!5841608 (= e!3583066 (and tp_is_empty!41071 tp!1615257))))

(assert (=> b!5841003 (= tp!1615075 e!3583066)))

(assert (= (and b!5841003 ((_ is Cons!63904) (t!377383 (t!377383 s!2326)))) b!5841608))

(declare-fun b!5841609 () Bool)

(declare-fun e!3583067 () Bool)

(declare-fun tp!1615258 () Bool)

(declare-fun tp!1615259 () Bool)

(assert (=> b!5841609 (= e!3583067 (and tp!1615258 tp!1615259))))

(assert (=> b!5841046 (= tp!1615116 e!3583067)))

(assert (= (and b!5841046 ((_ is Cons!63902) (exprs!5793 (h!70351 (t!377382 zl!343))))) b!5841609))

(declare-fun b!5841611 () Bool)

(declare-fun e!3583069 () Bool)

(declare-fun tp!1615260 () Bool)

(assert (=> b!5841611 (= e!3583069 tp!1615260)))

(declare-fun e!3583068 () Bool)

(declare-fun tp!1615261 () Bool)

(declare-fun b!5841610 () Bool)

(assert (=> b!5841610 (= e!3583068 (and (inv!83019 (h!70351 (t!377382 (t!377382 zl!343)))) e!3583069 tp!1615261))))

(assert (=> b!5841045 (= tp!1615117 e!3583068)))

(assert (= b!5841610 b!5841611))

(assert (= (and b!5841045 ((_ is Cons!63903) (t!377382 (t!377382 zl!343)))) b!5841610))

(declare-fun m!6765612 () Bool)

(assert (=> b!5841610 m!6765612))

(declare-fun b!5841612 () Bool)

(declare-fun e!3583070 () Bool)

(declare-fun tp!1615262 () Bool)

(declare-fun tp!1615263 () Bool)

(assert (=> b!5841612 (= e!3583070 (and tp!1615262 tp!1615263))))

(assert (=> b!5841051 (= tp!1615123 e!3583070)))

(assert (= (and b!5841051 ((_ is Cons!63902) (exprs!5793 setElem!39575))) b!5841612))

(declare-fun condSetEmpty!39579 () Bool)

(assert (=> setNonEmpty!39575 (= condSetEmpty!39579 (= setRest!39575 ((as const (Array Context!10586 Bool)) false)))))

(declare-fun setRes!39579 () Bool)

(assert (=> setNonEmpty!39575 (= tp!1615122 setRes!39579)))

(declare-fun setIsEmpty!39579 () Bool)

(assert (=> setIsEmpty!39579 setRes!39579))

(declare-fun e!3583071 () Bool)

(declare-fun tp!1615264 () Bool)

(declare-fun setNonEmpty!39579 () Bool)

(declare-fun setElem!39579 () Context!10586)

(assert (=> setNonEmpty!39579 (= setRes!39579 (and tp!1615264 (inv!83019 setElem!39579) e!3583071))))

(declare-fun setRest!39579 () (InoxSet Context!10586))

(assert (=> setNonEmpty!39579 (= setRest!39575 ((_ map or) (store ((as const (Array Context!10586 Bool)) false) setElem!39579 true) setRest!39579))))

(declare-fun b!5841613 () Bool)

(declare-fun tp!1615265 () Bool)

(assert (=> b!5841613 (= e!3583071 tp!1615265)))

(assert (= (and setNonEmpty!39575 condSetEmpty!39579) setIsEmpty!39579))

(assert (= (and setNonEmpty!39575 (not condSetEmpty!39579)) setNonEmpty!39579))

(assert (= setNonEmpty!39579 b!5841613))

(declare-fun m!6765614 () Bool)

(assert (=> setNonEmpty!39579 m!6765614))

(declare-fun b!5841614 () Bool)

(declare-fun e!3583072 () Bool)

(assert (=> b!5841614 (= e!3583072 tp_is_empty!41071)))

(declare-fun b!5841617 () Bool)

(declare-fun tp!1615270 () Bool)

(declare-fun tp!1615269 () Bool)

(assert (=> b!5841617 (= e!3583072 (and tp!1615270 tp!1615269))))

(assert (=> b!5841017 (= tp!1615090 e!3583072)))

(declare-fun b!5841615 () Bool)

(declare-fun tp!1615268 () Bool)

(declare-fun tp!1615266 () Bool)

(assert (=> b!5841615 (= e!3583072 (and tp!1615268 tp!1615266))))

(declare-fun b!5841616 () Bool)

(declare-fun tp!1615267 () Bool)

(assert (=> b!5841616 (= e!3583072 tp!1615267)))

(assert (= (and b!5841017 ((_ is ElementMatch!15909) (regOne!32331 (regOne!32330 r!7292)))) b!5841614))

(assert (= (and b!5841017 ((_ is Concat!24754) (regOne!32331 (regOne!32330 r!7292)))) b!5841615))

(assert (= (and b!5841017 ((_ is Star!15909) (regOne!32331 (regOne!32330 r!7292)))) b!5841616))

(assert (= (and b!5841017 ((_ is Union!15909) (regOne!32331 (regOne!32330 r!7292)))) b!5841617))

(declare-fun b!5841618 () Bool)

(declare-fun e!3583073 () Bool)

(assert (=> b!5841618 (= e!3583073 tp_is_empty!41071)))

(declare-fun b!5841621 () Bool)

(declare-fun tp!1615275 () Bool)

(declare-fun tp!1615274 () Bool)

(assert (=> b!5841621 (= e!3583073 (and tp!1615275 tp!1615274))))

(assert (=> b!5841017 (= tp!1615089 e!3583073)))

(declare-fun b!5841619 () Bool)

(declare-fun tp!1615273 () Bool)

(declare-fun tp!1615271 () Bool)

(assert (=> b!5841619 (= e!3583073 (and tp!1615273 tp!1615271))))

(declare-fun b!5841620 () Bool)

(declare-fun tp!1615272 () Bool)

(assert (=> b!5841620 (= e!3583073 tp!1615272)))

(assert (= (and b!5841017 ((_ is ElementMatch!15909) (regTwo!32331 (regOne!32330 r!7292)))) b!5841618))

(assert (= (and b!5841017 ((_ is Concat!24754) (regTwo!32331 (regOne!32330 r!7292)))) b!5841619))

(assert (= (and b!5841017 ((_ is Star!15909) (regTwo!32331 (regOne!32330 r!7292)))) b!5841620))

(assert (= (and b!5841017 ((_ is Union!15909) (regTwo!32331 (regOne!32330 r!7292)))) b!5841621))

(declare-fun b!5841622 () Bool)

(declare-fun e!3583074 () Bool)

(assert (=> b!5841622 (= e!3583074 tp_is_empty!41071)))

(declare-fun b!5841625 () Bool)

(declare-fun tp!1615280 () Bool)

(declare-fun tp!1615279 () Bool)

(assert (=> b!5841625 (= e!3583074 (and tp!1615280 tp!1615279))))

(assert (=> b!5841021 (= tp!1615095 e!3583074)))

(declare-fun b!5841623 () Bool)

(declare-fun tp!1615278 () Bool)

(declare-fun tp!1615276 () Bool)

(assert (=> b!5841623 (= e!3583074 (and tp!1615278 tp!1615276))))

(declare-fun b!5841624 () Bool)

(declare-fun tp!1615277 () Bool)

(assert (=> b!5841624 (= e!3583074 tp!1615277)))

(assert (= (and b!5841021 ((_ is ElementMatch!15909) (regOne!32331 (regTwo!32330 r!7292)))) b!5841622))

(assert (= (and b!5841021 ((_ is Concat!24754) (regOne!32331 (regTwo!32330 r!7292)))) b!5841623))

(assert (= (and b!5841021 ((_ is Star!15909) (regOne!32331 (regTwo!32330 r!7292)))) b!5841624))

(assert (= (and b!5841021 ((_ is Union!15909) (regOne!32331 (regTwo!32330 r!7292)))) b!5841625))

(declare-fun b!5841626 () Bool)

(declare-fun e!3583075 () Bool)

(assert (=> b!5841626 (= e!3583075 tp_is_empty!41071)))

(declare-fun b!5841629 () Bool)

(declare-fun tp!1615285 () Bool)

(declare-fun tp!1615284 () Bool)

(assert (=> b!5841629 (= e!3583075 (and tp!1615285 tp!1615284))))

(assert (=> b!5841021 (= tp!1615094 e!3583075)))

(declare-fun b!5841627 () Bool)

(declare-fun tp!1615283 () Bool)

(declare-fun tp!1615281 () Bool)

(assert (=> b!5841627 (= e!3583075 (and tp!1615283 tp!1615281))))

(declare-fun b!5841628 () Bool)

(declare-fun tp!1615282 () Bool)

(assert (=> b!5841628 (= e!3583075 tp!1615282)))

(assert (= (and b!5841021 ((_ is ElementMatch!15909) (regTwo!32331 (regTwo!32330 r!7292)))) b!5841626))

(assert (= (and b!5841021 ((_ is Concat!24754) (regTwo!32331 (regTwo!32330 r!7292)))) b!5841627))

(assert (= (and b!5841021 ((_ is Star!15909) (regTwo!32331 (regTwo!32330 r!7292)))) b!5841628))

(assert (= (and b!5841021 ((_ is Union!15909) (regTwo!32331 (regTwo!32330 r!7292)))) b!5841629))

(declare-fun b!5841630 () Bool)

(declare-fun e!3583076 () Bool)

(assert (=> b!5841630 (= e!3583076 tp_is_empty!41071)))

(declare-fun b!5841633 () Bool)

(declare-fun tp!1615290 () Bool)

(declare-fun tp!1615289 () Bool)

(assert (=> b!5841633 (= e!3583076 (and tp!1615290 tp!1615289))))

(assert (=> b!5841020 (= tp!1615092 e!3583076)))

(declare-fun b!5841631 () Bool)

(declare-fun tp!1615288 () Bool)

(declare-fun tp!1615286 () Bool)

(assert (=> b!5841631 (= e!3583076 (and tp!1615288 tp!1615286))))

(declare-fun b!5841632 () Bool)

(declare-fun tp!1615287 () Bool)

(assert (=> b!5841632 (= e!3583076 tp!1615287)))

(assert (= (and b!5841020 ((_ is ElementMatch!15909) (reg!16238 (regTwo!32330 r!7292)))) b!5841630))

(assert (= (and b!5841020 ((_ is Concat!24754) (reg!16238 (regTwo!32330 r!7292)))) b!5841631))

(assert (= (and b!5841020 ((_ is Star!15909) (reg!16238 (regTwo!32330 r!7292)))) b!5841632))

(assert (= (and b!5841020 ((_ is Union!15909) (reg!16238 (regTwo!32330 r!7292)))) b!5841633))

(declare-fun b!5841634 () Bool)

(declare-fun e!3583077 () Bool)

(assert (=> b!5841634 (= e!3583077 tp_is_empty!41071)))

(declare-fun b!5841637 () Bool)

(declare-fun tp!1615295 () Bool)

(declare-fun tp!1615294 () Bool)

(assert (=> b!5841637 (= e!3583077 (and tp!1615295 tp!1615294))))

(assert (=> b!5841019 (= tp!1615093 e!3583077)))

(declare-fun b!5841635 () Bool)

(declare-fun tp!1615293 () Bool)

(declare-fun tp!1615291 () Bool)

(assert (=> b!5841635 (= e!3583077 (and tp!1615293 tp!1615291))))

(declare-fun b!5841636 () Bool)

(declare-fun tp!1615292 () Bool)

(assert (=> b!5841636 (= e!3583077 tp!1615292)))

(assert (= (and b!5841019 ((_ is ElementMatch!15909) (regOne!32330 (regTwo!32330 r!7292)))) b!5841634))

(assert (= (and b!5841019 ((_ is Concat!24754) (regOne!32330 (regTwo!32330 r!7292)))) b!5841635))

(assert (= (and b!5841019 ((_ is Star!15909) (regOne!32330 (regTwo!32330 r!7292)))) b!5841636))

(assert (= (and b!5841019 ((_ is Union!15909) (regOne!32330 (regTwo!32330 r!7292)))) b!5841637))

(declare-fun b!5841638 () Bool)

(declare-fun e!3583078 () Bool)

(assert (=> b!5841638 (= e!3583078 tp_is_empty!41071)))

(declare-fun b!5841641 () Bool)

(declare-fun tp!1615300 () Bool)

(declare-fun tp!1615299 () Bool)

(assert (=> b!5841641 (= e!3583078 (and tp!1615300 tp!1615299))))

(assert (=> b!5841019 (= tp!1615091 e!3583078)))

(declare-fun b!5841639 () Bool)

(declare-fun tp!1615298 () Bool)

(declare-fun tp!1615296 () Bool)

(assert (=> b!5841639 (= e!3583078 (and tp!1615298 tp!1615296))))

(declare-fun b!5841640 () Bool)

(declare-fun tp!1615297 () Bool)

(assert (=> b!5841640 (= e!3583078 tp!1615297)))

(assert (= (and b!5841019 ((_ is ElementMatch!15909) (regTwo!32330 (regTwo!32330 r!7292)))) b!5841638))

(assert (= (and b!5841019 ((_ is Concat!24754) (regTwo!32330 (regTwo!32330 r!7292)))) b!5841639))

(assert (= (and b!5841019 ((_ is Star!15909) (regTwo!32330 (regTwo!32330 r!7292)))) b!5841640))

(assert (= (and b!5841019 ((_ is Union!15909) (regTwo!32330 (regTwo!32330 r!7292)))) b!5841641))

(declare-fun b!5841642 () Bool)

(declare-fun e!3583079 () Bool)

(assert (=> b!5841642 (= e!3583079 tp_is_empty!41071)))

(declare-fun b!5841645 () Bool)

(declare-fun tp!1615305 () Bool)

(declare-fun tp!1615304 () Bool)

(assert (=> b!5841645 (= e!3583079 (and tp!1615305 tp!1615304))))

(assert (=> b!5841032 (= tp!1615106 e!3583079)))

(declare-fun b!5841643 () Bool)

(declare-fun tp!1615303 () Bool)

(declare-fun tp!1615301 () Bool)

(assert (=> b!5841643 (= e!3583079 (and tp!1615303 tp!1615301))))

(declare-fun b!5841644 () Bool)

(declare-fun tp!1615302 () Bool)

(assert (=> b!5841644 (= e!3583079 tp!1615302)))

(assert (= (and b!5841032 ((_ is ElementMatch!15909) (regOne!32331 (regOne!32331 r!7292)))) b!5841642))

(assert (= (and b!5841032 ((_ is Concat!24754) (regOne!32331 (regOne!32331 r!7292)))) b!5841643))

(assert (= (and b!5841032 ((_ is Star!15909) (regOne!32331 (regOne!32331 r!7292)))) b!5841644))

(assert (= (and b!5841032 ((_ is Union!15909) (regOne!32331 (regOne!32331 r!7292)))) b!5841645))

(declare-fun b!5841646 () Bool)

(declare-fun e!3583080 () Bool)

(assert (=> b!5841646 (= e!3583080 tp_is_empty!41071)))

(declare-fun b!5841649 () Bool)

(declare-fun tp!1615310 () Bool)

(declare-fun tp!1615309 () Bool)

(assert (=> b!5841649 (= e!3583080 (and tp!1615310 tp!1615309))))

(assert (=> b!5841032 (= tp!1615105 e!3583080)))

(declare-fun b!5841647 () Bool)

(declare-fun tp!1615308 () Bool)

(declare-fun tp!1615306 () Bool)

(assert (=> b!5841647 (= e!3583080 (and tp!1615308 tp!1615306))))

(declare-fun b!5841648 () Bool)

(declare-fun tp!1615307 () Bool)

(assert (=> b!5841648 (= e!3583080 tp!1615307)))

(assert (= (and b!5841032 ((_ is ElementMatch!15909) (regTwo!32331 (regOne!32331 r!7292)))) b!5841646))

(assert (= (and b!5841032 ((_ is Concat!24754) (regTwo!32331 (regOne!32331 r!7292)))) b!5841647))

(assert (= (and b!5841032 ((_ is Star!15909) (regTwo!32331 (regOne!32331 r!7292)))) b!5841648))

(assert (= (and b!5841032 ((_ is Union!15909) (regTwo!32331 (regOne!32331 r!7292)))) b!5841649))

(declare-fun b!5841650 () Bool)

(declare-fun e!3583081 () Bool)

(assert (=> b!5841650 (= e!3583081 tp_is_empty!41071)))

(declare-fun b!5841653 () Bool)

(declare-fun tp!1615315 () Bool)

(declare-fun tp!1615314 () Bool)

(assert (=> b!5841653 (= e!3583081 (and tp!1615315 tp!1615314))))

(assert (=> b!5841031 (= tp!1615103 e!3583081)))

(declare-fun b!5841651 () Bool)

(declare-fun tp!1615313 () Bool)

(declare-fun tp!1615311 () Bool)

(assert (=> b!5841651 (= e!3583081 (and tp!1615313 tp!1615311))))

(declare-fun b!5841652 () Bool)

(declare-fun tp!1615312 () Bool)

(assert (=> b!5841652 (= e!3583081 tp!1615312)))

(assert (= (and b!5841031 ((_ is ElementMatch!15909) (reg!16238 (regOne!32331 r!7292)))) b!5841650))

(assert (= (and b!5841031 ((_ is Concat!24754) (reg!16238 (regOne!32331 r!7292)))) b!5841651))

(assert (= (and b!5841031 ((_ is Star!15909) (reg!16238 (regOne!32331 r!7292)))) b!5841652))

(assert (= (and b!5841031 ((_ is Union!15909) (reg!16238 (regOne!32331 r!7292)))) b!5841653))

(declare-fun b!5841654 () Bool)

(declare-fun e!3583082 () Bool)

(assert (=> b!5841654 (= e!3583082 tp_is_empty!41071)))

(declare-fun b!5841657 () Bool)

(declare-fun tp!1615320 () Bool)

(declare-fun tp!1615319 () Bool)

(assert (=> b!5841657 (= e!3583082 (and tp!1615320 tp!1615319))))

(assert (=> b!5841030 (= tp!1615104 e!3583082)))

(declare-fun b!5841655 () Bool)

(declare-fun tp!1615318 () Bool)

(declare-fun tp!1615316 () Bool)

(assert (=> b!5841655 (= e!3583082 (and tp!1615318 tp!1615316))))

(declare-fun b!5841656 () Bool)

(declare-fun tp!1615317 () Bool)

(assert (=> b!5841656 (= e!3583082 tp!1615317)))

(assert (= (and b!5841030 ((_ is ElementMatch!15909) (regOne!32330 (regOne!32331 r!7292)))) b!5841654))

(assert (= (and b!5841030 ((_ is Concat!24754) (regOne!32330 (regOne!32331 r!7292)))) b!5841655))

(assert (= (and b!5841030 ((_ is Star!15909) (regOne!32330 (regOne!32331 r!7292)))) b!5841656))

(assert (= (and b!5841030 ((_ is Union!15909) (regOne!32330 (regOne!32331 r!7292)))) b!5841657))

(declare-fun b!5841658 () Bool)

(declare-fun e!3583083 () Bool)

(assert (=> b!5841658 (= e!3583083 tp_is_empty!41071)))

(declare-fun b!5841661 () Bool)

(declare-fun tp!1615325 () Bool)

(declare-fun tp!1615324 () Bool)

(assert (=> b!5841661 (= e!3583083 (and tp!1615325 tp!1615324))))

(assert (=> b!5841030 (= tp!1615102 e!3583083)))

(declare-fun b!5841659 () Bool)

(declare-fun tp!1615323 () Bool)

(declare-fun tp!1615321 () Bool)

(assert (=> b!5841659 (= e!3583083 (and tp!1615323 tp!1615321))))

(declare-fun b!5841660 () Bool)

(declare-fun tp!1615322 () Bool)

(assert (=> b!5841660 (= e!3583083 tp!1615322)))

(assert (= (and b!5841030 ((_ is ElementMatch!15909) (regTwo!32330 (regOne!32331 r!7292)))) b!5841658))

(assert (= (and b!5841030 ((_ is Concat!24754) (regTwo!32330 (regOne!32331 r!7292)))) b!5841659))

(assert (= (and b!5841030 ((_ is Star!15909) (regTwo!32330 (regOne!32331 r!7292)))) b!5841660))

(assert (= (and b!5841030 ((_ is Union!15909) (regTwo!32330 (regOne!32331 r!7292)))) b!5841661))

(declare-fun b!5841662 () Bool)

(declare-fun e!3583084 () Bool)

(assert (=> b!5841662 (= e!3583084 tp_is_empty!41071)))

(declare-fun b!5841665 () Bool)

(declare-fun tp!1615330 () Bool)

(declare-fun tp!1615329 () Bool)

(assert (=> b!5841665 (= e!3583084 (and tp!1615330 tp!1615329))))

(assert (=> b!5841053 (= tp!1615126 e!3583084)))

(declare-fun b!5841663 () Bool)

(declare-fun tp!1615328 () Bool)

(declare-fun tp!1615326 () Bool)

(assert (=> b!5841663 (= e!3583084 (and tp!1615328 tp!1615326))))

(declare-fun b!5841664 () Bool)

(declare-fun tp!1615327 () Bool)

(assert (=> b!5841664 (= e!3583084 tp!1615327)))

(assert (= (and b!5841053 ((_ is ElementMatch!15909) (regOne!32330 (reg!16238 r!7292)))) b!5841662))

(assert (= (and b!5841053 ((_ is Concat!24754) (regOne!32330 (reg!16238 r!7292)))) b!5841663))

(assert (= (and b!5841053 ((_ is Star!15909) (regOne!32330 (reg!16238 r!7292)))) b!5841664))

(assert (= (and b!5841053 ((_ is Union!15909) (regOne!32330 (reg!16238 r!7292)))) b!5841665))

(declare-fun b!5841666 () Bool)

(declare-fun e!3583085 () Bool)

(assert (=> b!5841666 (= e!3583085 tp_is_empty!41071)))

(declare-fun b!5841669 () Bool)

(declare-fun tp!1615335 () Bool)

(declare-fun tp!1615334 () Bool)

(assert (=> b!5841669 (= e!3583085 (and tp!1615335 tp!1615334))))

(assert (=> b!5841053 (= tp!1615124 e!3583085)))

(declare-fun b!5841667 () Bool)

(declare-fun tp!1615333 () Bool)

(declare-fun tp!1615331 () Bool)

(assert (=> b!5841667 (= e!3583085 (and tp!1615333 tp!1615331))))

(declare-fun b!5841668 () Bool)

(declare-fun tp!1615332 () Bool)

(assert (=> b!5841668 (= e!3583085 tp!1615332)))

(assert (= (and b!5841053 ((_ is ElementMatch!15909) (regTwo!32330 (reg!16238 r!7292)))) b!5841666))

(assert (= (and b!5841053 ((_ is Concat!24754) (regTwo!32330 (reg!16238 r!7292)))) b!5841667))

(assert (= (and b!5841053 ((_ is Star!15909) (regTwo!32330 (reg!16238 r!7292)))) b!5841668))

(assert (= (and b!5841053 ((_ is Union!15909) (regTwo!32330 (reg!16238 r!7292)))) b!5841669))

(declare-fun b!5841670 () Bool)

(declare-fun e!3583086 () Bool)

(assert (=> b!5841670 (= e!3583086 tp_is_empty!41071)))

(declare-fun b!5841673 () Bool)

(declare-fun tp!1615340 () Bool)

(declare-fun tp!1615339 () Bool)

(assert (=> b!5841673 (= e!3583086 (and tp!1615340 tp!1615339))))

(assert (=> b!5841026 (= tp!1615100 e!3583086)))

(declare-fun b!5841671 () Bool)

(declare-fun tp!1615338 () Bool)

(declare-fun tp!1615336 () Bool)

(assert (=> b!5841671 (= e!3583086 (and tp!1615338 tp!1615336))))

(declare-fun b!5841672 () Bool)

(declare-fun tp!1615337 () Bool)

(assert (=> b!5841672 (= e!3583086 tp!1615337)))

(assert (= (and b!5841026 ((_ is ElementMatch!15909) (h!70350 (exprs!5793 (h!70351 zl!343))))) b!5841670))

(assert (= (and b!5841026 ((_ is Concat!24754) (h!70350 (exprs!5793 (h!70351 zl!343))))) b!5841671))

(assert (= (and b!5841026 ((_ is Star!15909) (h!70350 (exprs!5793 (h!70351 zl!343))))) b!5841672))

(assert (= (and b!5841026 ((_ is Union!15909) (h!70350 (exprs!5793 (h!70351 zl!343))))) b!5841673))

(declare-fun b!5841674 () Bool)

(declare-fun e!3583087 () Bool)

(declare-fun tp!1615341 () Bool)

(declare-fun tp!1615342 () Bool)

(assert (=> b!5841674 (= e!3583087 (and tp!1615341 tp!1615342))))

(assert (=> b!5841026 (= tp!1615101 e!3583087)))

(assert (= (and b!5841026 ((_ is Cons!63902) (t!377381 (exprs!5793 (h!70351 zl!343))))) b!5841674))

(declare-fun b_lambda!219969 () Bool)

(assert (= b_lambda!219963 (or d!1835258 b_lambda!219969)))

(declare-fun bs!1376347 () Bool)

(declare-fun d!1835434 () Bool)

(assert (= bs!1376347 (and d!1835434 d!1835258)))

(assert (=> bs!1376347 (= (dynLambda!24979 lambda!319525 (h!70350 (exprs!5793 (h!70351 zl!343)))) (validRegex!7645 (h!70350 (exprs!5793 (h!70351 zl!343)))))))

(declare-fun m!6765616 () Bool)

(assert (=> bs!1376347 m!6765616))

(assert (=> b!5841398 d!1835434))

(declare-fun b_lambda!219971 () Bool)

(assert (= b_lambda!219959 (or d!1835256 b_lambda!219971)))

(declare-fun bs!1376348 () Bool)

(declare-fun d!1835436 () Bool)

(assert (= bs!1376348 (and d!1835436 d!1835256)))

(assert (=> bs!1376348 (= (dynLambda!24979 lambda!319521 (h!70350 (exprs!5793 setElem!39572))) (validRegex!7645 (h!70350 (exprs!5793 setElem!39572))))))

(declare-fun m!6765618 () Bool)

(assert (=> bs!1376348 m!6765618))

(assert (=> b!5841308 d!1835436))

(declare-fun b_lambda!219973 () Bool)

(assert (= b_lambda!219957 (or d!1835250 b_lambda!219973)))

(declare-fun bs!1376349 () Bool)

(declare-fun d!1835438 () Bool)

(assert (= bs!1376349 (and d!1835438 d!1835250)))

(assert (=> bs!1376349 (= (dynLambda!24979 lambda!319517 (h!70350 (exprs!5793 (h!70351 zl!343)))) (validRegex!7645 (h!70350 (exprs!5793 (h!70351 zl!343)))))))

(assert (=> bs!1376349 m!6765616))

(assert (=> b!5841306 d!1835438))

(declare-fun b_lambda!219975 () Bool)

(assert (= b_lambda!219967 (or d!1835252 b_lambda!219975)))

(declare-fun bs!1376350 () Bool)

(declare-fun d!1835440 () Bool)

(assert (= bs!1376350 (and d!1835440 d!1835252)))

(assert (=> bs!1376350 (= (dynLambda!24979 lambda!319518 (h!70350 (exprs!5793 (Context!10587 Nil!63902)))) (validRegex!7645 (h!70350 (exprs!5793 (Context!10587 Nil!63902)))))))

(declare-fun m!6765620 () Bool)

(assert (=> bs!1376350 m!6765620))

(assert (=> b!5841546 d!1835440))

(declare-fun b_lambda!219977 () Bool)

(assert (= b_lambda!219961 (or d!1835278 b_lambda!219977)))

(declare-fun bs!1376351 () Bool)

(declare-fun d!1835442 () Bool)

(assert (= bs!1376351 (and d!1835442 d!1835278)))

(assert (=> bs!1376351 (= (dynLambda!24979 lambda!319539 (h!70350 lt!2303787)) (validRegex!7645 (h!70350 lt!2303787)))))

(declare-fun m!6765622 () Bool)

(assert (=> bs!1376351 m!6765622))

(assert (=> b!5841378 d!1835442))

(declare-fun b_lambda!219979 () Bool)

(assert (= b_lambda!219965 (or d!1835270 b_lambda!219979)))

(declare-fun bs!1376352 () Bool)

(declare-fun d!1835444 () Bool)

(assert (= bs!1376352 (and d!1835444 d!1835270)))

(assert (=> bs!1376352 (= (dynLambda!24979 lambda!319536 (h!70350 (unfocusZipperList!1330 zl!343))) (validRegex!7645 (h!70350 (unfocusZipperList!1330 zl!343))))))

(declare-fun m!6765624 () Bool)

(assert (=> bs!1376352 m!6765624))

(assert (=> b!5841544 d!1835444))

(check-sat (not b!5841620) (not bs!1376351) (not b!5841560) (not b!5841591) (not bm!456247) (not b!5841607) (not b!5841419) (not b!5841639) (not b!5841652) (not b!5841402) (not b!5841589) (not b!5841632) (not bm!456263) (not b!5841452) (not b!5841663) (not b!5841346) (not d!1835344) (not b_lambda!219977) (not bm!456284) (not d!1835390) (not bm!456267) (not b!5841491) (not b!5841585) (not b!5841345) (not b!5841598) (not b!5841579) (not bm!456259) (not d!1835394) (not b!5841534) (not bm!456291) (not b!5841448) (not b!5841489) (not b!5841599) (not b!5841335) (not b!5841446) (not b!5841490) (not b!5841613) (not b!5841409) (not bm!456298) (not b!5841590) (not bm!456268) (not b!5841301) (not b!5841601) (not b!5841324) (not b!5841627) (not bm!456241) (not b!5841309) (not b!5841492) (not b!5841671) (not b!5841412) (not d!1835408) (not bm!456278) (not bm!456264) (not b!5841439) (not b!5841436) (not b!5841577) (not b!5841307) (not b!5841636) (not b!5841563) (not b!5841608) (not b!5841406) (not setNonEmpty!39579) (not bm!456297) (not b!5841657) (not d!1835312) (not b!5841619) (not b!5841323) (not b!5841595) (not b!5841597) (not d!1835336) (not b!5841521) (not b_lambda!219975) (not b!5841368) (not b!5841661) (not b!5841386) (not bs!1376352) (not b!5841644) (not b!5841414) (not b!5841331) (not bm!456295) (not b!5841342) (not b!5841631) (not b!5841603) (not b!5841664) (not bm!456270) (not b!5841447) (not b!5841648) (not b!5841649) (not b!5841488) (not b!5841566) (not bm!456296) (not b!5841616) (not b!5841549) (not b!5841665) (not b!5841605) (not bm!456269) (not b!5841673) (not b!5841653) (not bm!456282) (not bm!456290) (not b_lambda!219971) (not b!5841315) (not d!1835376) (not bm!456287) (not b!5841505) (not b!5841314) (not b!5841405) (not b!5841430) (not b!5841635) (not b!5841643) (not b!5841628) (not b!5841583) (not b!5841621) (not b!5841481) tp_is_empty!41071 (not b!5841609) (not b!5841610) (not b!5841562) (not b!5841449) (not d!1835396) (not b!5841587) (not bm!456280) (not b!5841344) (not b!5841602) (not b!5841399) (not b!5841674) (not b!5841582) (not b!5841615) (not b!5841547) (not b!5841668) (not b!5841569) (not b!5841421) (not bm!456293) (not d!1835406) (not b!5841571) (not bm!456288) (not b!5841570) (not b!5841468) (not b!5841525) (not b!5841395) (not b!5841594) (not bm!456272) (not b_lambda!219973) (not bm!456273) (not b!5841565) (not bm!456240) (not bm!456249) (not bm!456244) (not b!5841586) (not b!5841514) (not b!5841637) (not b!5841294) (not bm!456281) (not b!5841651) (not d!1835422) (not b!5841494) (not b!5841624) (not b!5841404) (not b!5841641) (not b!5841450) (not bm!456292) (not bm!456283) (not b!5841561) (not bm!456266) (not d!1835426) (not b!5841606) (not bm!456258) (not b!5841659) (not d!1835358) (not b!5841407) (not b!5841647) (not b!5841667) (not b!5841660) (not b!5841629) (not b!5841669) (not b!5841416) (not b!5841558) (not bs!1376349) (not d!1835386) (not b_lambda!219979) (not b!5841379) (not d!1835322) (not bs!1376348) (not b!5841575) (not bs!1376347) (not b!5841611) (not b!5841432) (not b!5841545) (not b!5841593) (not b!5841574) (not bm!456277) (not b!5841573) (not bm!456248) (not b!5841640) (not d!1835402) (not b!5841617) (not d!1835424) (not b!5841655) (not d!1835370) (not b!5841645) (not b!5841578) (not b!5841343) (not d!1835412) (not b_lambda!219969) (not d!1835360) (not bs!1376350) (not d!1835352) (not b!5841541) (not b!5841625) (not b!5841672) (not b!5841408) (not d!1835342) (not b!5841417) (not bm!456271) (not b!5841410) (not d!1835316) (not b!5841477) (not d!1835374) (not b!5841623) (not b!5841411) (not b!5841322) (not b!5841656) (not b!5841633) (not b!5841433) (not b!5841612) (not b!5841567) (not b!5841581))
(check-sat)
