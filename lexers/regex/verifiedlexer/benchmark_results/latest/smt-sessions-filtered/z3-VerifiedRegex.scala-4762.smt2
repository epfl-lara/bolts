; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245476 () Bool)

(assert start!245476)

(declare-fun b!2517679 () Bool)

(declare-fun res!1063953 () Bool)

(declare-fun e!1594797 () Bool)

(assert (=> b!2517679 (=> (not res!1063953) (not e!1594797))))

(declare-datatypes ((C!15156 0))(
  ( (C!15157 (val!9230 Int)) )
))
(declare-datatypes ((Regex!7499 0))(
  ( (ElementMatch!7499 (c!401377 C!15156)) (Concat!12195 (regOne!15510 Regex!7499) (regTwo!15510 Regex!7499)) (EmptyExpr!7499) (Star!7499 (reg!7828 Regex!7499)) (EmptyLang!7499) (Union!7499 (regOne!15511 Regex!7499) (regTwo!15511 Regex!7499)) )
))
(declare-fun r!27340 () Regex!7499)

(get-info :version)

(assert (=> b!2517679 (= res!1063953 (and (not ((_ is EmptyExpr!7499) r!27340)) (not ((_ is EmptyLang!7499) r!27340)) (not ((_ is ElementMatch!7499) r!27340)) (not ((_ is Union!7499) r!27340)) ((_ is Star!7499) r!27340)))))

(declare-fun b!2517680 () Bool)

(declare-fun e!1594799 () Bool)

(declare-fun tp!804775 () Bool)

(assert (=> b!2517680 (= e!1594799 tp!804775)))

(declare-fun b!2517681 () Bool)

(declare-fun e!1594796 () Bool)

(assert (=> b!2517681 (= e!1594797 e!1594796)))

(declare-fun res!1063954 () Bool)

(assert (=> b!2517681 (=> (not res!1063954) (not e!1594796))))

(declare-fun lt!899103 () Regex!7499)

(declare-fun lt!899105 () Regex!7499)

(assert (=> b!2517681 (= res!1063954 (= lt!899103 (Concat!12195 lt!899105 (Star!7499 (reg!7828 r!27340)))))))

(declare-fun c!14016 () C!15156)

(declare-fun derivativeStep!2068 (Regex!7499 C!15156) Regex!7499)

(assert (=> b!2517681 (= lt!899105 (derivativeStep!2068 (reg!7828 r!27340) c!14016))))

(declare-fun b!2517682 () Bool)

(declare-fun tp_is_empty!12853 () Bool)

(assert (=> b!2517682 (= e!1594799 tp_is_empty!12853)))

(declare-fun b!2517683 () Bool)

(declare-fun tp!804777 () Bool)

(declare-fun tp!804778 () Bool)

(assert (=> b!2517683 (= e!1594799 (and tp!804777 tp!804778))))

(declare-fun b!2517684 () Bool)

(declare-fun tp!804773 () Bool)

(declare-fun tp!804774 () Bool)

(assert (=> b!2517684 (= e!1594799 (and tp!804773 tp!804774))))

(declare-fun b!2517685 () Bool)

(declare-fun res!1063951 () Bool)

(assert (=> b!2517685 (=> (not res!1063951) (not e!1594796))))

(declare-datatypes ((List!29564 0))(
  ( (Nil!29464) (Cons!29464 (h!34884 C!15156) (t!211263 List!29564)) )
))
(declare-fun tl!4068 () List!29564)

(declare-fun nullable!2416 (Regex!7499) Bool)

(declare-fun derivative!194 (Regex!7499 List!29564) Regex!7499)

(assert (=> b!2517685 (= res!1063951 (not (nullable!2416 (derivative!194 lt!899105 tl!4068))))))

(declare-fun res!1063952 () Bool)

(declare-fun e!1594800 () Bool)

(assert (=> start!245476 (=> (not res!1063952) (not e!1594800))))

(declare-fun validRegex!3125 (Regex!7499) Bool)

(assert (=> start!245476 (= res!1063952 (validRegex!3125 r!27340))))

(assert (=> start!245476 e!1594800))

(assert (=> start!245476 e!1594799))

(assert (=> start!245476 tp_is_empty!12853))

(declare-fun e!1594798 () Bool)

(assert (=> start!245476 e!1594798))

(declare-fun b!2517686 () Bool)

(assert (=> b!2517686 (= e!1594800 e!1594797)))

(declare-fun res!1063950 () Bool)

(assert (=> b!2517686 (=> (not res!1063950) (not e!1594797))))

(declare-fun lt!899102 () Regex!7499)

(assert (=> b!2517686 (= res!1063950 (nullable!2416 lt!899102))))

(assert (=> b!2517686 (= lt!899102 (derivative!194 lt!899103 tl!4068))))

(assert (=> b!2517686 (= lt!899103 (derivativeStep!2068 r!27340 c!14016))))

(declare-fun b!2517687 () Bool)

(declare-fun lt!899104 () Bool)

(assert (=> b!2517687 (= e!1594796 (not lt!899104))))

(declare-fun matchR!3486 (Regex!7499 List!29564) Bool)

(assert (=> b!2517687 (= lt!899104 (matchR!3486 lt!899102 Nil!29464))))

(assert (=> b!2517687 (= lt!899104 (matchR!3486 lt!899103 tl!4068))))

(declare-datatypes ((Unit!43223 0))(
  ( (Unit!43224) )
))
(declare-fun lt!899106 () Unit!43223)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!132 (Regex!7499 List!29564) Unit!43223)

(assert (=> b!2517687 (= lt!899106 (lemmaMatchRIsSameAsWholeDerivativeAndNil!132 lt!899103 tl!4068))))

(declare-fun b!2517688 () Bool)

(declare-fun tp!804776 () Bool)

(assert (=> b!2517688 (= e!1594798 (and tp_is_empty!12853 tp!804776))))

(assert (= (and start!245476 res!1063952) b!2517686))

(assert (= (and b!2517686 res!1063950) b!2517679))

(assert (= (and b!2517679 res!1063953) b!2517681))

(assert (= (and b!2517681 res!1063954) b!2517685))

(assert (= (and b!2517685 res!1063951) b!2517687))

(assert (= (and start!245476 ((_ is ElementMatch!7499) r!27340)) b!2517682))

(assert (= (and start!245476 ((_ is Concat!12195) r!27340)) b!2517684))

(assert (= (and start!245476 ((_ is Star!7499) r!27340)) b!2517680))

(assert (= (and start!245476 ((_ is Union!7499) r!27340)) b!2517683))

(assert (= (and start!245476 ((_ is Cons!29464) tl!4068)) b!2517688))

(declare-fun m!2873665 () Bool)

(assert (=> b!2517687 m!2873665))

(declare-fun m!2873667 () Bool)

(assert (=> b!2517687 m!2873667))

(declare-fun m!2873669 () Bool)

(assert (=> b!2517687 m!2873669))

(declare-fun m!2873671 () Bool)

(assert (=> b!2517685 m!2873671))

(assert (=> b!2517685 m!2873671))

(declare-fun m!2873673 () Bool)

(assert (=> b!2517685 m!2873673))

(declare-fun m!2873675 () Bool)

(assert (=> b!2517681 m!2873675))

(declare-fun m!2873677 () Bool)

(assert (=> start!245476 m!2873677))

(declare-fun m!2873679 () Bool)

(assert (=> b!2517686 m!2873679))

(declare-fun m!2873681 () Bool)

(assert (=> b!2517686 m!2873681))

(declare-fun m!2873683 () Bool)

(assert (=> b!2517686 m!2873683))

(check-sat (not b!2517685) (not b!2517687) (not b!2517680) (not b!2517684) (not b!2517686) (not start!245476) tp_is_empty!12853 (not b!2517681) (not b!2517688) (not b!2517683))
(check-sat)
(get-model)

(declare-fun d!717493 () Bool)

(declare-fun nullableFct!658 (Regex!7499) Bool)

(assert (=> d!717493 (= (nullable!2416 (derivative!194 lt!899105 tl!4068)) (nullableFct!658 (derivative!194 lt!899105 tl!4068)))))

(declare-fun bs!468921 () Bool)

(assert (= bs!468921 d!717493))

(assert (=> bs!468921 m!2873671))

(declare-fun m!2873687 () Bool)

(assert (=> bs!468921 m!2873687))

(assert (=> b!2517685 d!717493))

(declare-fun d!717497 () Bool)

(declare-fun lt!899113 () Regex!7499)

(assert (=> d!717497 (validRegex!3125 lt!899113)))

(declare-fun e!1594807 () Regex!7499)

(assert (=> d!717497 (= lt!899113 e!1594807)))

(declare-fun c!401384 () Bool)

(assert (=> d!717497 (= c!401384 ((_ is Cons!29464) tl!4068))))

(assert (=> d!717497 (validRegex!3125 lt!899105)))

(assert (=> d!717497 (= (derivative!194 lt!899105 tl!4068) lt!899113)))

(declare-fun b!2517701 () Bool)

(assert (=> b!2517701 (= e!1594807 (derivative!194 (derivativeStep!2068 lt!899105 (h!34884 tl!4068)) (t!211263 tl!4068)))))

(declare-fun b!2517702 () Bool)

(assert (=> b!2517702 (= e!1594807 lt!899105)))

(assert (= (and d!717497 c!401384) b!2517701))

(assert (= (and d!717497 (not c!401384)) b!2517702))

(declare-fun m!2873707 () Bool)

(assert (=> d!717497 m!2873707))

(declare-fun m!2873709 () Bool)

(assert (=> d!717497 m!2873709))

(declare-fun m!2873711 () Bool)

(assert (=> b!2517701 m!2873711))

(assert (=> b!2517701 m!2873711))

(declare-fun m!2873713 () Bool)

(assert (=> b!2517701 m!2873713))

(assert (=> b!2517685 d!717497))

(declare-fun b!2517753 () Bool)

(declare-fun e!1594833 () Regex!7499)

(declare-fun e!1594834 () Regex!7499)

(assert (=> b!2517753 (= e!1594833 e!1594834)))

(declare-fun c!401413 () Bool)

(assert (=> b!2517753 (= c!401413 ((_ is ElementMatch!7499) (reg!7828 r!27340)))))

(declare-fun b!2517754 () Bool)

(declare-fun e!1594837 () Regex!7499)

(declare-fun call!156650 () Regex!7499)

(declare-fun call!156653 () Regex!7499)

(assert (=> b!2517754 (= e!1594837 (Union!7499 call!156650 call!156653))))

(declare-fun b!2517755 () Bool)

(declare-fun e!1594835 () Regex!7499)

(declare-fun call!156652 () Regex!7499)

(assert (=> b!2517755 (= e!1594835 (Concat!12195 call!156652 (reg!7828 r!27340)))))

(declare-fun d!717505 () Bool)

(declare-fun lt!899119 () Regex!7499)

(assert (=> d!717505 (validRegex!3125 lt!899119)))

(assert (=> d!717505 (= lt!899119 e!1594833)))

(declare-fun c!401410 () Bool)

(assert (=> d!717505 (= c!401410 (or ((_ is EmptyExpr!7499) (reg!7828 r!27340)) ((_ is EmptyLang!7499) (reg!7828 r!27340))))))

(assert (=> d!717505 (validRegex!3125 (reg!7828 r!27340))))

(assert (=> d!717505 (= (derivativeStep!2068 (reg!7828 r!27340) c!14016) lt!899119)))

(declare-fun b!2517756 () Bool)

(declare-fun c!401412 () Bool)

(assert (=> b!2517756 (= c!401412 (nullable!2416 (regOne!15510 (reg!7828 r!27340))))))

(declare-fun e!1594836 () Regex!7499)

(assert (=> b!2517756 (= e!1594835 e!1594836)))

(declare-fun bm!156645 () Bool)

(assert (=> bm!156645 (= call!156652 call!156650)))

(declare-fun b!2517757 () Bool)

(declare-fun call!156651 () Regex!7499)

(assert (=> b!2517757 (= e!1594836 (Union!7499 (Concat!12195 call!156651 (regTwo!15510 (reg!7828 r!27340))) EmptyLang!7499))))

(declare-fun b!2517758 () Bool)

(assert (=> b!2517758 (= e!1594834 (ite (= c!14016 (c!401377 (reg!7828 r!27340))) EmptyExpr!7499 EmptyLang!7499))))

(declare-fun bm!156646 () Bool)

(assert (=> bm!156646 (= call!156651 call!156652)))

(declare-fun b!2517759 () Bool)

(assert (=> b!2517759 (= e!1594833 EmptyLang!7499)))

(declare-fun b!2517760 () Bool)

(assert (=> b!2517760 (= e!1594837 e!1594835)))

(declare-fun c!401414 () Bool)

(assert (=> b!2517760 (= c!401414 ((_ is Star!7499) (reg!7828 r!27340)))))

(declare-fun bm!156647 () Bool)

(declare-fun c!401411 () Bool)

(assert (=> bm!156647 (= call!156650 (derivativeStep!2068 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340)))) c!14016))))

(declare-fun bm!156648 () Bool)

(assert (=> bm!156648 (= call!156653 (derivativeStep!2068 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340))) c!14016))))

(declare-fun b!2517761 () Bool)

(assert (=> b!2517761 (= e!1594836 (Union!7499 (Concat!12195 call!156651 (regTwo!15510 (reg!7828 r!27340))) call!156653))))

(declare-fun b!2517762 () Bool)

(assert (=> b!2517762 (= c!401411 ((_ is Union!7499) (reg!7828 r!27340)))))

(assert (=> b!2517762 (= e!1594834 e!1594837)))

(assert (= (and d!717505 c!401410) b!2517759))

(assert (= (and d!717505 (not c!401410)) b!2517753))

(assert (= (and b!2517753 c!401413) b!2517758))

(assert (= (and b!2517753 (not c!401413)) b!2517762))

(assert (= (and b!2517762 c!401411) b!2517754))

(assert (= (and b!2517762 (not c!401411)) b!2517760))

(assert (= (and b!2517760 c!401414) b!2517755))

(assert (= (and b!2517760 (not c!401414)) b!2517756))

(assert (= (and b!2517756 c!401412) b!2517761))

(assert (= (and b!2517756 (not c!401412)) b!2517757))

(assert (= (or b!2517761 b!2517757) bm!156646))

(assert (= (or b!2517755 bm!156646) bm!156645))

(assert (= (or b!2517754 b!2517761) bm!156648))

(assert (= (or b!2517754 bm!156645) bm!156647))

(declare-fun m!2873723 () Bool)

(assert (=> d!717505 m!2873723))

(declare-fun m!2873725 () Bool)

(assert (=> d!717505 m!2873725))

(declare-fun m!2873727 () Bool)

(assert (=> b!2517756 m!2873727))

(declare-fun m!2873729 () Bool)

(assert (=> bm!156647 m!2873729))

(declare-fun m!2873731 () Bool)

(assert (=> bm!156648 m!2873731))

(assert (=> b!2517681 d!717505))

(declare-fun d!717509 () Bool)

(assert (=> d!717509 (= (nullable!2416 lt!899102) (nullableFct!658 lt!899102))))

(declare-fun bs!468923 () Bool)

(assert (= bs!468923 d!717509))

(declare-fun m!2873733 () Bool)

(assert (=> bs!468923 m!2873733))

(assert (=> b!2517686 d!717509))

(declare-fun d!717511 () Bool)

(declare-fun lt!899121 () Regex!7499)

(assert (=> d!717511 (validRegex!3125 lt!899121)))

(declare-fun e!1594843 () Regex!7499)

(assert (=> d!717511 (= lt!899121 e!1594843)))

(declare-fun c!401420 () Bool)

(assert (=> d!717511 (= c!401420 ((_ is Cons!29464) tl!4068))))

(assert (=> d!717511 (validRegex!3125 lt!899103)))

(assert (=> d!717511 (= (derivative!194 lt!899103 tl!4068) lt!899121)))

(declare-fun b!2517773 () Bool)

(assert (=> b!2517773 (= e!1594843 (derivative!194 (derivativeStep!2068 lt!899103 (h!34884 tl!4068)) (t!211263 tl!4068)))))

(declare-fun b!2517774 () Bool)

(assert (=> b!2517774 (= e!1594843 lt!899103)))

(assert (= (and d!717511 c!401420) b!2517773))

(assert (= (and d!717511 (not c!401420)) b!2517774))

(declare-fun m!2873737 () Bool)

(assert (=> d!717511 m!2873737))

(declare-fun m!2873739 () Bool)

(assert (=> d!717511 m!2873739))

(declare-fun m!2873743 () Bool)

(assert (=> b!2517773 m!2873743))

(assert (=> b!2517773 m!2873743))

(declare-fun m!2873751 () Bool)

(assert (=> b!2517773 m!2873751))

(assert (=> b!2517686 d!717511))

(declare-fun b!2517775 () Bool)

(declare-fun e!1594844 () Regex!7499)

(declare-fun e!1594845 () Regex!7499)

(assert (=> b!2517775 (= e!1594844 e!1594845)))

(declare-fun c!401424 () Bool)

(assert (=> b!2517775 (= c!401424 ((_ is ElementMatch!7499) r!27340))))

(declare-fun b!2517776 () Bool)

(declare-fun e!1594848 () Regex!7499)

(declare-fun call!156658 () Regex!7499)

(declare-fun call!156661 () Regex!7499)

(assert (=> b!2517776 (= e!1594848 (Union!7499 call!156658 call!156661))))

(declare-fun b!2517777 () Bool)

(declare-fun e!1594846 () Regex!7499)

(declare-fun call!156660 () Regex!7499)

(assert (=> b!2517777 (= e!1594846 (Concat!12195 call!156660 r!27340))))

(declare-fun d!717515 () Bool)

(declare-fun lt!899122 () Regex!7499)

(assert (=> d!717515 (validRegex!3125 lt!899122)))

(assert (=> d!717515 (= lt!899122 e!1594844)))

(declare-fun c!401421 () Bool)

(assert (=> d!717515 (= c!401421 (or ((_ is EmptyExpr!7499) r!27340) ((_ is EmptyLang!7499) r!27340)))))

(assert (=> d!717515 (validRegex!3125 r!27340)))

(assert (=> d!717515 (= (derivativeStep!2068 r!27340 c!14016) lt!899122)))

(declare-fun b!2517778 () Bool)

(declare-fun c!401423 () Bool)

(assert (=> b!2517778 (= c!401423 (nullable!2416 (regOne!15510 r!27340)))))

(declare-fun e!1594847 () Regex!7499)

(assert (=> b!2517778 (= e!1594846 e!1594847)))

(declare-fun bm!156653 () Bool)

(assert (=> bm!156653 (= call!156660 call!156658)))

(declare-fun b!2517779 () Bool)

(declare-fun call!156659 () Regex!7499)

(assert (=> b!2517779 (= e!1594847 (Union!7499 (Concat!12195 call!156659 (regTwo!15510 r!27340)) EmptyLang!7499))))

(declare-fun b!2517780 () Bool)

(assert (=> b!2517780 (= e!1594845 (ite (= c!14016 (c!401377 r!27340)) EmptyExpr!7499 EmptyLang!7499))))

(declare-fun bm!156654 () Bool)

(assert (=> bm!156654 (= call!156659 call!156660)))

(declare-fun b!2517781 () Bool)

(assert (=> b!2517781 (= e!1594844 EmptyLang!7499)))

(declare-fun b!2517782 () Bool)

(assert (=> b!2517782 (= e!1594848 e!1594846)))

(declare-fun c!401425 () Bool)

(assert (=> b!2517782 (= c!401425 ((_ is Star!7499) r!27340))))

(declare-fun c!401422 () Bool)

(declare-fun bm!156655 () Bool)

(assert (=> bm!156655 (= call!156658 (derivativeStep!2068 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340))) c!14016))))

(declare-fun bm!156656 () Bool)

(assert (=> bm!156656 (= call!156661 (derivativeStep!2068 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340)) c!14016))))

(declare-fun b!2517783 () Bool)

(assert (=> b!2517783 (= e!1594847 (Union!7499 (Concat!12195 call!156659 (regTwo!15510 r!27340)) call!156661))))

(declare-fun b!2517784 () Bool)

(assert (=> b!2517784 (= c!401422 ((_ is Union!7499) r!27340))))

(assert (=> b!2517784 (= e!1594845 e!1594848)))

(assert (= (and d!717515 c!401421) b!2517781))

(assert (= (and d!717515 (not c!401421)) b!2517775))

(assert (= (and b!2517775 c!401424) b!2517780))

(assert (= (and b!2517775 (not c!401424)) b!2517784))

(assert (= (and b!2517784 c!401422) b!2517776))

(assert (= (and b!2517784 (not c!401422)) b!2517782))

(assert (= (and b!2517782 c!401425) b!2517777))

(assert (= (and b!2517782 (not c!401425)) b!2517778))

(assert (= (and b!2517778 c!401423) b!2517783))

(assert (= (and b!2517778 (not c!401423)) b!2517779))

(assert (= (or b!2517783 b!2517779) bm!156654))

(assert (= (or b!2517777 bm!156654) bm!156653))

(assert (= (or b!2517776 b!2517783) bm!156656))

(assert (= (or b!2517776 bm!156653) bm!156655))

(declare-fun m!2873753 () Bool)

(assert (=> d!717515 m!2873753))

(assert (=> d!717515 m!2873677))

(declare-fun m!2873755 () Bool)

(assert (=> b!2517778 m!2873755))

(declare-fun m!2873757 () Bool)

(assert (=> bm!156655 m!2873757))

(declare-fun m!2873759 () Bool)

(assert (=> bm!156656 m!2873759))

(assert (=> b!2517686 d!717515))

(declare-fun b!2517840 () Bool)

(declare-fun res!1063991 () Bool)

(declare-fun e!1594888 () Bool)

(assert (=> b!2517840 (=> res!1063991 e!1594888)))

(declare-fun isEmpty!16921 (List!29564) Bool)

(declare-fun tail!4024 (List!29564) List!29564)

(assert (=> b!2517840 (= res!1063991 (not (isEmpty!16921 (tail!4024 Nil!29464))))))

(declare-fun d!717517 () Bool)

(declare-fun e!1594890 () Bool)

(assert (=> d!717517 e!1594890))

(declare-fun c!401439 () Bool)

(assert (=> d!717517 (= c!401439 ((_ is EmptyExpr!7499) lt!899102))))

(declare-fun lt!899125 () Bool)

(declare-fun e!1594885 () Bool)

(assert (=> d!717517 (= lt!899125 e!1594885)))

(declare-fun c!401438 () Bool)

(assert (=> d!717517 (= c!401438 (isEmpty!16921 Nil!29464))))

(assert (=> d!717517 (validRegex!3125 lt!899102)))

(assert (=> d!717517 (= (matchR!3486 lt!899102 Nil!29464) lt!899125)))

(declare-fun b!2517841 () Bool)

(declare-fun e!1594884 () Bool)

(declare-fun head!5748 (List!29564) C!15156)

(assert (=> b!2517841 (= e!1594884 (= (head!5748 Nil!29464) (c!401377 lt!899102)))))

(declare-fun b!2517842 () Bool)

(declare-fun res!1063986 () Bool)

(assert (=> b!2517842 (=> (not res!1063986) (not e!1594884))))

(declare-fun call!156673 () Bool)

(assert (=> b!2517842 (= res!1063986 (not call!156673))))

(declare-fun b!2517843 () Bool)

(declare-fun res!1063989 () Bool)

(declare-fun e!1594886 () Bool)

(assert (=> b!2517843 (=> res!1063989 e!1594886)))

(assert (=> b!2517843 (= res!1063989 e!1594884)))

(declare-fun res!1063987 () Bool)

(assert (=> b!2517843 (=> (not res!1063987) (not e!1594884))))

(assert (=> b!2517843 (= res!1063987 lt!899125)))

(declare-fun b!2517844 () Bool)

(declare-fun res!1063993 () Bool)

(assert (=> b!2517844 (=> res!1063993 e!1594886)))

(assert (=> b!2517844 (= res!1063993 (not ((_ is ElementMatch!7499) lt!899102)))))

(declare-fun e!1594889 () Bool)

(assert (=> b!2517844 (= e!1594889 e!1594886)))

(declare-fun b!2517845 () Bool)

(assert (=> b!2517845 (= e!1594885 (matchR!3486 (derivativeStep!2068 lt!899102 (head!5748 Nil!29464)) (tail!4024 Nil!29464)))))

(declare-fun b!2517846 () Bool)

(declare-fun e!1594887 () Bool)

(assert (=> b!2517846 (= e!1594887 e!1594888)))

(declare-fun res!1063990 () Bool)

(assert (=> b!2517846 (=> res!1063990 e!1594888)))

(assert (=> b!2517846 (= res!1063990 call!156673)))

(declare-fun b!2517847 () Bool)

(assert (=> b!2517847 (= e!1594890 e!1594889)))

(declare-fun c!401440 () Bool)

(assert (=> b!2517847 (= c!401440 ((_ is EmptyLang!7499) lt!899102))))

(declare-fun b!2517848 () Bool)

(assert (=> b!2517848 (= e!1594890 (= lt!899125 call!156673))))

(declare-fun b!2517849 () Bool)

(assert (=> b!2517849 (= e!1594889 (not lt!899125))))

(declare-fun b!2517850 () Bool)

(assert (=> b!2517850 (= e!1594886 e!1594887)))

(declare-fun res!1063992 () Bool)

(assert (=> b!2517850 (=> (not res!1063992) (not e!1594887))))

(assert (=> b!2517850 (= res!1063992 (not lt!899125))))

(declare-fun b!2517851 () Bool)

(assert (=> b!2517851 (= e!1594885 (nullable!2416 lt!899102))))

(declare-fun bm!156668 () Bool)

(assert (=> bm!156668 (= call!156673 (isEmpty!16921 Nil!29464))))

(declare-fun b!2517852 () Bool)

(assert (=> b!2517852 (= e!1594888 (not (= (head!5748 Nil!29464) (c!401377 lt!899102))))))

(declare-fun b!2517853 () Bool)

(declare-fun res!1063988 () Bool)

(assert (=> b!2517853 (=> (not res!1063988) (not e!1594884))))

(assert (=> b!2517853 (= res!1063988 (isEmpty!16921 (tail!4024 Nil!29464)))))

(assert (= (and d!717517 c!401438) b!2517851))

(assert (= (and d!717517 (not c!401438)) b!2517845))

(assert (= (and d!717517 c!401439) b!2517848))

(assert (= (and d!717517 (not c!401439)) b!2517847))

(assert (= (and b!2517847 c!401440) b!2517849))

(assert (= (and b!2517847 (not c!401440)) b!2517844))

(assert (= (and b!2517844 (not res!1063993)) b!2517843))

(assert (= (and b!2517843 res!1063987) b!2517842))

(assert (= (and b!2517842 res!1063986) b!2517853))

(assert (= (and b!2517853 res!1063988) b!2517841))

(assert (= (and b!2517843 (not res!1063989)) b!2517850))

(assert (= (and b!2517850 res!1063992) b!2517846))

(assert (= (and b!2517846 (not res!1063990)) b!2517840))

(assert (= (and b!2517840 (not res!1063991)) b!2517852))

(assert (= (or b!2517848 b!2517842 b!2517846) bm!156668))

(declare-fun m!2873767 () Bool)

(assert (=> b!2517853 m!2873767))

(assert (=> b!2517853 m!2873767))

(declare-fun m!2873769 () Bool)

(assert (=> b!2517853 m!2873769))

(assert (=> b!2517851 m!2873679))

(declare-fun m!2873771 () Bool)

(assert (=> b!2517845 m!2873771))

(assert (=> b!2517845 m!2873771))

(declare-fun m!2873773 () Bool)

(assert (=> b!2517845 m!2873773))

(assert (=> b!2517845 m!2873767))

(assert (=> b!2517845 m!2873773))

(assert (=> b!2517845 m!2873767))

(declare-fun m!2873775 () Bool)

(assert (=> b!2517845 m!2873775))

(assert (=> b!2517840 m!2873767))

(assert (=> b!2517840 m!2873767))

(assert (=> b!2517840 m!2873769))

(assert (=> b!2517841 m!2873771))

(declare-fun m!2873777 () Bool)

(assert (=> d!717517 m!2873777))

(declare-fun m!2873779 () Bool)

(assert (=> d!717517 m!2873779))

(assert (=> b!2517852 m!2873771))

(assert (=> bm!156668 m!2873777))

(assert (=> b!2517687 d!717517))

(declare-fun b!2517882 () Bool)

(declare-fun res!1064015 () Bool)

(declare-fun e!1594909 () Bool)

(assert (=> b!2517882 (=> res!1064015 e!1594909)))

(assert (=> b!2517882 (= res!1064015 (not (isEmpty!16921 (tail!4024 tl!4068))))))

(declare-fun d!717521 () Bool)

(declare-fun e!1594911 () Bool)

(assert (=> d!717521 e!1594911))

(declare-fun c!401448 () Bool)

(assert (=> d!717521 (= c!401448 ((_ is EmptyExpr!7499) lt!899103))))

(declare-fun lt!899128 () Bool)

(declare-fun e!1594906 () Bool)

(assert (=> d!717521 (= lt!899128 e!1594906)))

(declare-fun c!401447 () Bool)

(assert (=> d!717521 (= c!401447 (isEmpty!16921 tl!4068))))

(assert (=> d!717521 (validRegex!3125 lt!899103)))

(assert (=> d!717521 (= (matchR!3486 lt!899103 tl!4068) lt!899128)))

(declare-fun b!2517883 () Bool)

(declare-fun e!1594905 () Bool)

(assert (=> b!2517883 (= e!1594905 (= (head!5748 tl!4068) (c!401377 lt!899103)))))

(declare-fun b!2517884 () Bool)

(declare-fun res!1064010 () Bool)

(assert (=> b!2517884 (=> (not res!1064010) (not e!1594905))))

(declare-fun call!156674 () Bool)

(assert (=> b!2517884 (= res!1064010 (not call!156674))))

(declare-fun b!2517885 () Bool)

(declare-fun res!1064013 () Bool)

(declare-fun e!1594907 () Bool)

(assert (=> b!2517885 (=> res!1064013 e!1594907)))

(assert (=> b!2517885 (= res!1064013 e!1594905)))

(declare-fun res!1064011 () Bool)

(assert (=> b!2517885 (=> (not res!1064011) (not e!1594905))))

(assert (=> b!2517885 (= res!1064011 lt!899128)))

(declare-fun b!2517886 () Bool)

(declare-fun res!1064017 () Bool)

(assert (=> b!2517886 (=> res!1064017 e!1594907)))

(assert (=> b!2517886 (= res!1064017 (not ((_ is ElementMatch!7499) lt!899103)))))

(declare-fun e!1594910 () Bool)

(assert (=> b!2517886 (= e!1594910 e!1594907)))

(declare-fun b!2517887 () Bool)

(assert (=> b!2517887 (= e!1594906 (matchR!3486 (derivativeStep!2068 lt!899103 (head!5748 tl!4068)) (tail!4024 tl!4068)))))

(declare-fun b!2517888 () Bool)

(declare-fun e!1594908 () Bool)

(assert (=> b!2517888 (= e!1594908 e!1594909)))

(declare-fun res!1064014 () Bool)

(assert (=> b!2517888 (=> res!1064014 e!1594909)))

(assert (=> b!2517888 (= res!1064014 call!156674)))

(declare-fun b!2517889 () Bool)

(assert (=> b!2517889 (= e!1594911 e!1594910)))

(declare-fun c!401449 () Bool)

(assert (=> b!2517889 (= c!401449 ((_ is EmptyLang!7499) lt!899103))))

(declare-fun b!2517890 () Bool)

(assert (=> b!2517890 (= e!1594911 (= lt!899128 call!156674))))

(declare-fun b!2517891 () Bool)

(assert (=> b!2517891 (= e!1594910 (not lt!899128))))

(declare-fun b!2517892 () Bool)

(assert (=> b!2517892 (= e!1594907 e!1594908)))

(declare-fun res!1064016 () Bool)

(assert (=> b!2517892 (=> (not res!1064016) (not e!1594908))))

(assert (=> b!2517892 (= res!1064016 (not lt!899128))))

(declare-fun b!2517893 () Bool)

(assert (=> b!2517893 (= e!1594906 (nullable!2416 lt!899103))))

(declare-fun bm!156669 () Bool)

(assert (=> bm!156669 (= call!156674 (isEmpty!16921 tl!4068))))

(declare-fun b!2517894 () Bool)

(assert (=> b!2517894 (= e!1594909 (not (= (head!5748 tl!4068) (c!401377 lt!899103))))))

(declare-fun b!2517895 () Bool)

(declare-fun res!1064012 () Bool)

(assert (=> b!2517895 (=> (not res!1064012) (not e!1594905))))

(assert (=> b!2517895 (= res!1064012 (isEmpty!16921 (tail!4024 tl!4068)))))

(assert (= (and d!717521 c!401447) b!2517893))

(assert (= (and d!717521 (not c!401447)) b!2517887))

(assert (= (and d!717521 c!401448) b!2517890))

(assert (= (and d!717521 (not c!401448)) b!2517889))

(assert (= (and b!2517889 c!401449) b!2517891))

(assert (= (and b!2517889 (not c!401449)) b!2517886))

(assert (= (and b!2517886 (not res!1064017)) b!2517885))

(assert (= (and b!2517885 res!1064011) b!2517884))

(assert (= (and b!2517884 res!1064010) b!2517895))

(assert (= (and b!2517895 res!1064012) b!2517883))

(assert (= (and b!2517885 (not res!1064013)) b!2517892))

(assert (= (and b!2517892 res!1064016) b!2517888))

(assert (= (and b!2517888 (not res!1064014)) b!2517882))

(assert (= (and b!2517882 (not res!1064015)) b!2517894))

(assert (= (or b!2517890 b!2517884 b!2517888) bm!156669))

(declare-fun m!2873781 () Bool)

(assert (=> b!2517895 m!2873781))

(assert (=> b!2517895 m!2873781))

(declare-fun m!2873783 () Bool)

(assert (=> b!2517895 m!2873783))

(declare-fun m!2873785 () Bool)

(assert (=> b!2517893 m!2873785))

(declare-fun m!2873787 () Bool)

(assert (=> b!2517887 m!2873787))

(assert (=> b!2517887 m!2873787))

(declare-fun m!2873789 () Bool)

(assert (=> b!2517887 m!2873789))

(assert (=> b!2517887 m!2873781))

(assert (=> b!2517887 m!2873789))

(assert (=> b!2517887 m!2873781))

(declare-fun m!2873791 () Bool)

(assert (=> b!2517887 m!2873791))

(assert (=> b!2517882 m!2873781))

(assert (=> b!2517882 m!2873781))

(assert (=> b!2517882 m!2873783))

(assert (=> b!2517883 m!2873787))

(declare-fun m!2873793 () Bool)

(assert (=> d!717521 m!2873793))

(assert (=> d!717521 m!2873739))

(assert (=> b!2517894 m!2873787))

(assert (=> bm!156669 m!2873793))

(assert (=> b!2517687 d!717521))

(declare-fun d!717523 () Bool)

(assert (=> d!717523 (= (matchR!3486 lt!899103 tl!4068) (matchR!3486 (derivative!194 lt!899103 tl!4068) Nil!29464))))

(declare-fun lt!899132 () Unit!43223)

(declare-fun choose!14924 (Regex!7499 List!29564) Unit!43223)

(assert (=> d!717523 (= lt!899132 (choose!14924 lt!899103 tl!4068))))

(assert (=> d!717523 (validRegex!3125 lt!899103)))

(assert (=> d!717523 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!132 lt!899103 tl!4068) lt!899132)))

(declare-fun bs!468924 () Bool)

(assert (= bs!468924 d!717523))

(declare-fun m!2873795 () Bool)

(assert (=> bs!468924 m!2873795))

(assert (=> bs!468924 m!2873667))

(assert (=> bs!468924 m!2873739))

(assert (=> bs!468924 m!2873681))

(assert (=> bs!468924 m!2873681))

(declare-fun m!2873799 () Bool)

(assert (=> bs!468924 m!2873799))

(assert (=> b!2517687 d!717523))

(declare-fun bm!156680 () Bool)

(declare-fun call!156685 () Bool)

(declare-fun c!401460 () Bool)

(assert (=> bm!156680 (= call!156685 (validRegex!3125 (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340))))))

(declare-fun b!2517977 () Bool)

(declare-fun e!1594951 () Bool)

(declare-fun call!156687 () Bool)

(assert (=> b!2517977 (= e!1594951 call!156687)))

(declare-fun b!2517978 () Bool)

(declare-fun e!1594956 () Bool)

(declare-fun e!1594953 () Bool)

(assert (=> b!2517978 (= e!1594956 e!1594953)))

(declare-fun res!1064046 () Bool)

(assert (=> b!2517978 (= res!1064046 (not (nullable!2416 (reg!7828 r!27340))))))

(assert (=> b!2517978 (=> (not res!1064046) (not e!1594953))))

(declare-fun b!2517979 () Bool)

(declare-fun e!1594954 () Bool)

(assert (=> b!2517979 (= e!1594954 e!1594956)))

(declare-fun c!401461 () Bool)

(assert (=> b!2517979 (= c!401461 ((_ is Star!7499) r!27340))))

(declare-fun b!2517980 () Bool)

(declare-fun call!156686 () Bool)

(assert (=> b!2517980 (= e!1594953 call!156686)))

(declare-fun b!2517981 () Bool)

(declare-fun res!1064047 () Bool)

(declare-fun e!1594955 () Bool)

(assert (=> b!2517981 (=> (not res!1064047) (not e!1594955))))

(assert (=> b!2517981 (= res!1064047 call!156687)))

(declare-fun e!1594950 () Bool)

(assert (=> b!2517981 (= e!1594950 e!1594955)))

(declare-fun b!2517982 () Bool)

(assert (=> b!2517982 (= e!1594955 call!156685)))

(declare-fun bm!156681 () Bool)

(assert (=> bm!156681 (= call!156686 (validRegex!3125 (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340)))))))

(declare-fun b!2517984 () Bool)

(declare-fun res!1064044 () Bool)

(declare-fun e!1594952 () Bool)

(assert (=> b!2517984 (=> res!1064044 e!1594952)))

(assert (=> b!2517984 (= res!1064044 (not ((_ is Concat!12195) r!27340)))))

(assert (=> b!2517984 (= e!1594950 e!1594952)))

(declare-fun b!2517985 () Bool)

(assert (=> b!2517985 (= e!1594956 e!1594950)))

(assert (=> b!2517985 (= c!401460 ((_ is Union!7499) r!27340))))

(declare-fun bm!156682 () Bool)

(assert (=> bm!156682 (= call!156687 call!156686)))

(declare-fun b!2517983 () Bool)

(assert (=> b!2517983 (= e!1594952 e!1594951)))

(declare-fun res!1064045 () Bool)

(assert (=> b!2517983 (=> (not res!1064045) (not e!1594951))))

(assert (=> b!2517983 (= res!1064045 call!156685)))

(declare-fun d!717525 () Bool)

(declare-fun res!1064048 () Bool)

(assert (=> d!717525 (=> res!1064048 e!1594954)))

(assert (=> d!717525 (= res!1064048 ((_ is ElementMatch!7499) r!27340))))

(assert (=> d!717525 (= (validRegex!3125 r!27340) e!1594954)))

(assert (= (and d!717525 (not res!1064048)) b!2517979))

(assert (= (and b!2517979 c!401461) b!2517978))

(assert (= (and b!2517979 (not c!401461)) b!2517985))

(assert (= (and b!2517978 res!1064046) b!2517980))

(assert (= (and b!2517985 c!401460) b!2517981))

(assert (= (and b!2517985 (not c!401460)) b!2517984))

(assert (= (and b!2517981 res!1064047) b!2517982))

(assert (= (and b!2517984 (not res!1064044)) b!2517983))

(assert (= (and b!2517983 res!1064045) b!2517977))

(assert (= (or b!2517981 b!2517977) bm!156682))

(assert (= (or b!2517982 b!2517983) bm!156680))

(assert (= (or b!2517980 bm!156682) bm!156681))

(declare-fun m!2873831 () Bool)

(assert (=> bm!156680 m!2873831))

(declare-fun m!2873833 () Bool)

(assert (=> b!2517978 m!2873833))

(declare-fun m!2873835 () Bool)

(assert (=> bm!156681 m!2873835))

(assert (=> start!245476 d!717525))

(declare-fun e!1594959 () Bool)

(assert (=> b!2517680 (= tp!804775 e!1594959)))

(declare-fun b!2517996 () Bool)

(assert (=> b!2517996 (= e!1594959 tp_is_empty!12853)))

(declare-fun b!2517998 () Bool)

(declare-fun tp!804828 () Bool)

(assert (=> b!2517998 (= e!1594959 tp!804828)))

(declare-fun b!2517997 () Bool)

(declare-fun tp!804830 () Bool)

(declare-fun tp!804827 () Bool)

(assert (=> b!2517997 (= e!1594959 (and tp!804830 tp!804827))))

(declare-fun b!2517999 () Bool)

(declare-fun tp!804831 () Bool)

(declare-fun tp!804829 () Bool)

(assert (=> b!2517999 (= e!1594959 (and tp!804831 tp!804829))))

(assert (= (and b!2517680 ((_ is ElementMatch!7499) (reg!7828 r!27340))) b!2517996))

(assert (= (and b!2517680 ((_ is Concat!12195) (reg!7828 r!27340))) b!2517997))

(assert (= (and b!2517680 ((_ is Star!7499) (reg!7828 r!27340))) b!2517998))

(assert (= (and b!2517680 ((_ is Union!7499) (reg!7828 r!27340))) b!2517999))

(declare-fun b!2518004 () Bool)

(declare-fun e!1594962 () Bool)

(declare-fun tp!804834 () Bool)

(assert (=> b!2518004 (= e!1594962 (and tp_is_empty!12853 tp!804834))))

(assert (=> b!2517688 (= tp!804776 e!1594962)))

(assert (= (and b!2517688 ((_ is Cons!29464) (t!211263 tl!4068))) b!2518004))

(declare-fun e!1594963 () Bool)

(assert (=> b!2517684 (= tp!804773 e!1594963)))

(declare-fun b!2518005 () Bool)

(assert (=> b!2518005 (= e!1594963 tp_is_empty!12853)))

(declare-fun b!2518007 () Bool)

(declare-fun tp!804836 () Bool)

(assert (=> b!2518007 (= e!1594963 tp!804836)))

(declare-fun b!2518006 () Bool)

(declare-fun tp!804838 () Bool)

(declare-fun tp!804835 () Bool)

(assert (=> b!2518006 (= e!1594963 (and tp!804838 tp!804835))))

(declare-fun b!2518008 () Bool)

(declare-fun tp!804839 () Bool)

(declare-fun tp!804837 () Bool)

(assert (=> b!2518008 (= e!1594963 (and tp!804839 tp!804837))))

(assert (= (and b!2517684 ((_ is ElementMatch!7499) (regOne!15510 r!27340))) b!2518005))

(assert (= (and b!2517684 ((_ is Concat!12195) (regOne!15510 r!27340))) b!2518006))

(assert (= (and b!2517684 ((_ is Star!7499) (regOne!15510 r!27340))) b!2518007))

(assert (= (and b!2517684 ((_ is Union!7499) (regOne!15510 r!27340))) b!2518008))

(declare-fun e!1594964 () Bool)

(assert (=> b!2517684 (= tp!804774 e!1594964)))

(declare-fun b!2518009 () Bool)

(assert (=> b!2518009 (= e!1594964 tp_is_empty!12853)))

(declare-fun b!2518011 () Bool)

(declare-fun tp!804841 () Bool)

(assert (=> b!2518011 (= e!1594964 tp!804841)))

(declare-fun b!2518010 () Bool)

(declare-fun tp!804843 () Bool)

(declare-fun tp!804840 () Bool)

(assert (=> b!2518010 (= e!1594964 (and tp!804843 tp!804840))))

(declare-fun b!2518012 () Bool)

(declare-fun tp!804844 () Bool)

(declare-fun tp!804842 () Bool)

(assert (=> b!2518012 (= e!1594964 (and tp!804844 tp!804842))))

(assert (= (and b!2517684 ((_ is ElementMatch!7499) (regTwo!15510 r!27340))) b!2518009))

(assert (= (and b!2517684 ((_ is Concat!12195) (regTwo!15510 r!27340))) b!2518010))

(assert (= (and b!2517684 ((_ is Star!7499) (regTwo!15510 r!27340))) b!2518011))

(assert (= (and b!2517684 ((_ is Union!7499) (regTwo!15510 r!27340))) b!2518012))

(declare-fun e!1594965 () Bool)

(assert (=> b!2517683 (= tp!804777 e!1594965)))

(declare-fun b!2518013 () Bool)

(assert (=> b!2518013 (= e!1594965 tp_is_empty!12853)))

(declare-fun b!2518015 () Bool)

(declare-fun tp!804846 () Bool)

(assert (=> b!2518015 (= e!1594965 tp!804846)))

(declare-fun b!2518014 () Bool)

(declare-fun tp!804848 () Bool)

(declare-fun tp!804845 () Bool)

(assert (=> b!2518014 (= e!1594965 (and tp!804848 tp!804845))))

(declare-fun b!2518016 () Bool)

(declare-fun tp!804849 () Bool)

(declare-fun tp!804847 () Bool)

(assert (=> b!2518016 (= e!1594965 (and tp!804849 tp!804847))))

(assert (= (and b!2517683 ((_ is ElementMatch!7499) (regOne!15511 r!27340))) b!2518013))

(assert (= (and b!2517683 ((_ is Concat!12195) (regOne!15511 r!27340))) b!2518014))

(assert (= (and b!2517683 ((_ is Star!7499) (regOne!15511 r!27340))) b!2518015))

(assert (= (and b!2517683 ((_ is Union!7499) (regOne!15511 r!27340))) b!2518016))

(declare-fun e!1594966 () Bool)

(assert (=> b!2517683 (= tp!804778 e!1594966)))

(declare-fun b!2518017 () Bool)

(assert (=> b!2518017 (= e!1594966 tp_is_empty!12853)))

(declare-fun b!2518019 () Bool)

(declare-fun tp!804851 () Bool)

(assert (=> b!2518019 (= e!1594966 tp!804851)))

(declare-fun b!2518018 () Bool)

(declare-fun tp!804853 () Bool)

(declare-fun tp!804850 () Bool)

(assert (=> b!2518018 (= e!1594966 (and tp!804853 tp!804850))))

(declare-fun b!2518020 () Bool)

(declare-fun tp!804854 () Bool)

(declare-fun tp!804852 () Bool)

(assert (=> b!2518020 (= e!1594966 (and tp!804854 tp!804852))))

(assert (= (and b!2517683 ((_ is ElementMatch!7499) (regTwo!15511 r!27340))) b!2518017))

(assert (= (and b!2517683 ((_ is Concat!12195) (regTwo!15511 r!27340))) b!2518018))

(assert (= (and b!2517683 ((_ is Star!7499) (regTwo!15511 r!27340))) b!2518019))

(assert (= (and b!2517683 ((_ is Union!7499) (regTwo!15511 r!27340))) b!2518020))

(check-sat (not b!2518007) (not b!2518006) (not d!717505) (not d!717509) (not bm!156656) (not b!2517882) (not bm!156669) (not d!717497) (not b!2517852) (not b!2518015) (not b!2518010) (not b!2517978) (not b!2517853) (not b!2517773) (not b!2518020) (not b!2517845) (not d!717521) (not b!2518018) (not b!2517893) (not bm!156647) (not d!717493) (not b!2517701) (not b!2518019) (not b!2518008) (not b!2518004) (not bm!156681) (not b!2517756) (not d!717511) (not bm!156648) (not b!2517895) (not b!2518012) (not b!2517894) (not b!2517840) (not b!2518016) (not b!2517778) (not b!2518011) (not b!2517998) tp_is_empty!12853 (not b!2517999) (not b!2517841) (not b!2518014) (not d!717517) (not d!717515) (not b!2517997) (not bm!156655) (not b!2517887) (not bm!156680) (not bm!156668) (not b!2517883) (not d!717523) (not b!2517851))
(check-sat)
(get-model)

(declare-fun d!717531 () Bool)

(assert (=> d!717531 (= (nullable!2416 lt!899103) (nullableFct!658 lt!899103))))

(declare-fun bs!468926 () Bool)

(assert (= bs!468926 d!717531))

(declare-fun m!2873837 () Bool)

(assert (=> bs!468926 m!2873837))

(assert (=> b!2517893 d!717531))

(declare-fun b!2518021 () Bool)

(declare-fun e!1594967 () Regex!7499)

(declare-fun e!1594968 () Regex!7499)

(assert (=> b!2518021 (= e!1594967 e!1594968)))

(declare-fun c!401465 () Bool)

(assert (=> b!2518021 (= c!401465 ((_ is ElementMatch!7499) (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340)))))))

(declare-fun b!2518022 () Bool)

(declare-fun e!1594971 () Regex!7499)

(declare-fun call!156688 () Regex!7499)

(declare-fun call!156691 () Regex!7499)

(assert (=> b!2518022 (= e!1594971 (Union!7499 call!156688 call!156691))))

(declare-fun b!2518023 () Bool)

(declare-fun call!156690 () Regex!7499)

(declare-fun e!1594969 () Regex!7499)

(assert (=> b!2518023 (= e!1594969 (Concat!12195 call!156690 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340)))))))

(declare-fun d!717533 () Bool)

(declare-fun lt!899137 () Regex!7499)

(assert (=> d!717533 (validRegex!3125 lt!899137)))

(assert (=> d!717533 (= lt!899137 e!1594967)))

(declare-fun c!401462 () Bool)

(assert (=> d!717533 (= c!401462 (or ((_ is EmptyExpr!7499) (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340)))) ((_ is EmptyLang!7499) (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340))))))))

(assert (=> d!717533 (validRegex!3125 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340))))))

(assert (=> d!717533 (= (derivativeStep!2068 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340))) c!14016) lt!899137)))

(declare-fun b!2518024 () Bool)

(declare-fun c!401464 () Bool)

(assert (=> b!2518024 (= c!401464 (nullable!2416 (regOne!15510 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340))))))))

(declare-fun e!1594970 () Regex!7499)

(assert (=> b!2518024 (= e!1594969 e!1594970)))

(declare-fun bm!156683 () Bool)

(assert (=> bm!156683 (= call!156690 call!156688)))

(declare-fun call!156689 () Regex!7499)

(declare-fun b!2518025 () Bool)

(assert (=> b!2518025 (= e!1594970 (Union!7499 (Concat!12195 call!156689 (regTwo!15510 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340))))) EmptyLang!7499))))

(declare-fun b!2518026 () Bool)

(assert (=> b!2518026 (= e!1594968 (ite (= c!14016 (c!401377 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340))))) EmptyExpr!7499 EmptyLang!7499))))

(declare-fun bm!156684 () Bool)

(assert (=> bm!156684 (= call!156689 call!156690)))

(declare-fun b!2518027 () Bool)

(assert (=> b!2518027 (= e!1594967 EmptyLang!7499)))

(declare-fun b!2518028 () Bool)

(assert (=> b!2518028 (= e!1594971 e!1594969)))

(declare-fun c!401466 () Bool)

(assert (=> b!2518028 (= c!401466 ((_ is Star!7499) (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340)))))))

(declare-fun c!401463 () Bool)

(declare-fun bm!156685 () Bool)

(assert (=> bm!156685 (= call!156688 (derivativeStep!2068 (ite c!401463 (regOne!15511 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340)))) (ite c!401466 (reg!7828 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340)))) (regOne!15510 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340)))))) c!14016))))

(declare-fun bm!156686 () Bool)

(assert (=> bm!156686 (= call!156691 (derivativeStep!2068 (ite c!401463 (regTwo!15511 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340)))) (regTwo!15510 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340))))) c!14016))))

(declare-fun b!2518029 () Bool)

(assert (=> b!2518029 (= e!1594970 (Union!7499 (Concat!12195 call!156689 (regTwo!15510 (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340))))) call!156691))))

(declare-fun b!2518030 () Bool)

(assert (=> b!2518030 (= c!401463 ((_ is Union!7499) (ite c!401411 (regTwo!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340)))))))

(assert (=> b!2518030 (= e!1594968 e!1594971)))

(assert (= (and d!717533 c!401462) b!2518027))

(assert (= (and d!717533 (not c!401462)) b!2518021))

(assert (= (and b!2518021 c!401465) b!2518026))

(assert (= (and b!2518021 (not c!401465)) b!2518030))

(assert (= (and b!2518030 c!401463) b!2518022))

(assert (= (and b!2518030 (not c!401463)) b!2518028))

(assert (= (and b!2518028 c!401466) b!2518023))

(assert (= (and b!2518028 (not c!401466)) b!2518024))

(assert (= (and b!2518024 c!401464) b!2518029))

(assert (= (and b!2518024 (not c!401464)) b!2518025))

(assert (= (or b!2518029 b!2518025) bm!156684))

(assert (= (or b!2518023 bm!156684) bm!156683))

(assert (= (or b!2518022 b!2518029) bm!156686))

(assert (= (or b!2518022 bm!156683) bm!156685))

(declare-fun m!2873839 () Bool)

(assert (=> d!717533 m!2873839))

(declare-fun m!2873841 () Bool)

(assert (=> d!717533 m!2873841))

(declare-fun m!2873843 () Bool)

(assert (=> b!2518024 m!2873843))

(declare-fun m!2873845 () Bool)

(assert (=> bm!156685 m!2873845))

(declare-fun m!2873847 () Bool)

(assert (=> bm!156686 m!2873847))

(assert (=> bm!156648 d!717533))

(declare-fun c!401467 () Bool)

(declare-fun bm!156687 () Bool)

(declare-fun call!156692 () Bool)

(assert (=> bm!156687 (= call!156692 (validRegex!3125 (ite c!401467 (regTwo!15511 (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340))) (regOne!15510 (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340))))))))

(declare-fun b!2518031 () Bool)

(declare-fun e!1594973 () Bool)

(declare-fun call!156694 () Bool)

(assert (=> b!2518031 (= e!1594973 call!156694)))

(declare-fun b!2518032 () Bool)

(declare-fun e!1594978 () Bool)

(declare-fun e!1594975 () Bool)

(assert (=> b!2518032 (= e!1594978 e!1594975)))

(declare-fun res!1064051 () Bool)

(assert (=> b!2518032 (= res!1064051 (not (nullable!2416 (reg!7828 (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340))))))))

(assert (=> b!2518032 (=> (not res!1064051) (not e!1594975))))

(declare-fun b!2518033 () Bool)

(declare-fun e!1594976 () Bool)

(assert (=> b!2518033 (= e!1594976 e!1594978)))

(declare-fun c!401468 () Bool)

(assert (=> b!2518033 (= c!401468 ((_ is Star!7499) (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340))))))

(declare-fun b!2518034 () Bool)

(declare-fun call!156693 () Bool)

(assert (=> b!2518034 (= e!1594975 call!156693)))

(declare-fun b!2518035 () Bool)

(declare-fun res!1064052 () Bool)

(declare-fun e!1594977 () Bool)

(assert (=> b!2518035 (=> (not res!1064052) (not e!1594977))))

(assert (=> b!2518035 (= res!1064052 call!156694)))

(declare-fun e!1594972 () Bool)

(assert (=> b!2518035 (= e!1594972 e!1594977)))

(declare-fun b!2518036 () Bool)

(assert (=> b!2518036 (= e!1594977 call!156692)))

(declare-fun bm!156688 () Bool)

(assert (=> bm!156688 (= call!156693 (validRegex!3125 (ite c!401468 (reg!7828 (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340))) (ite c!401467 (regOne!15511 (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340))) (regTwo!15510 (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340)))))))))

(declare-fun b!2518038 () Bool)

(declare-fun res!1064049 () Bool)

(declare-fun e!1594974 () Bool)

(assert (=> b!2518038 (=> res!1064049 e!1594974)))

(assert (=> b!2518038 (= res!1064049 (not ((_ is Concat!12195) (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340)))))))

(assert (=> b!2518038 (= e!1594972 e!1594974)))

(declare-fun b!2518039 () Bool)

(assert (=> b!2518039 (= e!1594978 e!1594972)))

(assert (=> b!2518039 (= c!401467 ((_ is Union!7499) (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340))))))

(declare-fun bm!156689 () Bool)

(assert (=> bm!156689 (= call!156694 call!156693)))

(declare-fun b!2518037 () Bool)

(assert (=> b!2518037 (= e!1594974 e!1594973)))

(declare-fun res!1064050 () Bool)

(assert (=> b!2518037 (=> (not res!1064050) (not e!1594973))))

(assert (=> b!2518037 (= res!1064050 call!156692)))

(declare-fun d!717535 () Bool)

(declare-fun res!1064053 () Bool)

(assert (=> d!717535 (=> res!1064053 e!1594976)))

(assert (=> d!717535 (= res!1064053 ((_ is ElementMatch!7499) (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340))))))

(assert (=> d!717535 (= (validRegex!3125 (ite c!401460 (regTwo!15511 r!27340) (regOne!15510 r!27340))) e!1594976)))

(assert (= (and d!717535 (not res!1064053)) b!2518033))

(assert (= (and b!2518033 c!401468) b!2518032))

(assert (= (and b!2518033 (not c!401468)) b!2518039))

(assert (= (and b!2518032 res!1064051) b!2518034))

(assert (= (and b!2518039 c!401467) b!2518035))

(assert (= (and b!2518039 (not c!401467)) b!2518038))

(assert (= (and b!2518035 res!1064052) b!2518036))

(assert (= (and b!2518038 (not res!1064049)) b!2518037))

(assert (= (and b!2518037 res!1064050) b!2518031))

(assert (= (or b!2518035 b!2518031) bm!156689))

(assert (= (or b!2518036 b!2518037) bm!156687))

(assert (= (or b!2518034 bm!156689) bm!156688))

(declare-fun m!2873849 () Bool)

(assert (=> bm!156687 m!2873849))

(declare-fun m!2873851 () Bool)

(assert (=> b!2518032 m!2873851))

(declare-fun m!2873853 () Bool)

(assert (=> bm!156688 m!2873853))

(assert (=> bm!156680 d!717535))

(declare-fun d!717537 () Bool)

(assert (=> d!717537 (= (isEmpty!16921 tl!4068) ((_ is Nil!29464) tl!4068))))

(assert (=> bm!156669 d!717537))

(declare-fun d!717539 () Bool)

(assert (not d!717539))

(assert (=> b!2517845 d!717539))

(declare-fun d!717541 () Bool)

(assert (not d!717541))

(assert (=> b!2517845 d!717541))

(declare-fun d!717543 () Bool)

(assert (not d!717543))

(assert (=> b!2517845 d!717543))

(declare-fun d!717545 () Bool)

(assert (not d!717545))

(assert (=> b!2517845 d!717545))

(declare-fun bm!156690 () Bool)

(declare-fun call!156695 () Bool)

(declare-fun c!401469 () Bool)

(assert (=> bm!156690 (= call!156695 (validRegex!3125 (ite c!401469 (regTwo!15511 lt!899113) (regOne!15510 lt!899113))))))

(declare-fun b!2518040 () Bool)

(declare-fun e!1594980 () Bool)

(declare-fun call!156697 () Bool)

(assert (=> b!2518040 (= e!1594980 call!156697)))

(declare-fun b!2518041 () Bool)

(declare-fun e!1594990 () Bool)

(declare-fun e!1594985 () Bool)

(assert (=> b!2518041 (= e!1594990 e!1594985)))

(declare-fun res!1064056 () Bool)

(assert (=> b!2518041 (= res!1064056 (not (nullable!2416 (reg!7828 lt!899113))))))

(assert (=> b!2518041 (=> (not res!1064056) (not e!1594985))))

(declare-fun b!2518042 () Bool)

(declare-fun e!1594987 () Bool)

(assert (=> b!2518042 (= e!1594987 e!1594990)))

(declare-fun c!401470 () Bool)

(assert (=> b!2518042 (= c!401470 ((_ is Star!7499) lt!899113))))

(declare-fun b!2518043 () Bool)

(declare-fun call!156696 () Bool)

(assert (=> b!2518043 (= e!1594985 call!156696)))

(declare-fun b!2518044 () Bool)

(declare-fun res!1064057 () Bool)

(declare-fun e!1594989 () Bool)

(assert (=> b!2518044 (=> (not res!1064057) (not e!1594989))))

(assert (=> b!2518044 (= res!1064057 call!156697)))

(declare-fun e!1594979 () Bool)

(assert (=> b!2518044 (= e!1594979 e!1594989)))

(declare-fun b!2518045 () Bool)

(assert (=> b!2518045 (= e!1594989 call!156695)))

(declare-fun bm!156691 () Bool)

(assert (=> bm!156691 (= call!156696 (validRegex!3125 (ite c!401470 (reg!7828 lt!899113) (ite c!401469 (regOne!15511 lt!899113) (regTwo!15510 lt!899113)))))))

(declare-fun b!2518050 () Bool)

(declare-fun res!1064054 () Bool)

(declare-fun e!1594981 () Bool)

(assert (=> b!2518050 (=> res!1064054 e!1594981)))

(assert (=> b!2518050 (= res!1064054 (not ((_ is Concat!12195) lt!899113)))))

(assert (=> b!2518050 (= e!1594979 e!1594981)))

(declare-fun b!2518052 () Bool)

(assert (=> b!2518052 (= e!1594990 e!1594979)))

(assert (=> b!2518052 (= c!401469 ((_ is Union!7499) lt!899113))))

(declare-fun bm!156692 () Bool)

(assert (=> bm!156692 (= call!156697 call!156696)))

(declare-fun b!2518048 () Bool)

(assert (=> b!2518048 (= e!1594981 e!1594980)))

(declare-fun res!1064055 () Bool)

(assert (=> b!2518048 (=> (not res!1064055) (not e!1594980))))

(assert (=> b!2518048 (= res!1064055 call!156695)))

(declare-fun d!717549 () Bool)

(declare-fun res!1064059 () Bool)

(assert (=> d!717549 (=> res!1064059 e!1594987)))

(assert (=> d!717549 (= res!1064059 ((_ is ElementMatch!7499) lt!899113))))

(assert (=> d!717549 (= (validRegex!3125 lt!899113) e!1594987)))

(assert (= (and d!717549 (not res!1064059)) b!2518042))

(assert (= (and b!2518042 c!401470) b!2518041))

(assert (= (and b!2518042 (not c!401470)) b!2518052))

(assert (= (and b!2518041 res!1064056) b!2518043))

(assert (= (and b!2518052 c!401469) b!2518044))

(assert (= (and b!2518052 (not c!401469)) b!2518050))

(assert (= (and b!2518044 res!1064057) b!2518045))

(assert (= (and b!2518050 (not res!1064054)) b!2518048))

(assert (= (and b!2518048 res!1064055) b!2518040))

(assert (= (or b!2518044 b!2518040) bm!156692))

(assert (= (or b!2518045 b!2518048) bm!156690))

(assert (= (or b!2518043 bm!156692) bm!156691))

(declare-fun m!2873855 () Bool)

(assert (=> bm!156690 m!2873855))

(declare-fun m!2873857 () Bool)

(assert (=> b!2518041 m!2873857))

(declare-fun m!2873861 () Bool)

(assert (=> bm!156691 m!2873861))

(assert (=> d!717497 d!717549))

(declare-fun bm!156696 () Bool)

(declare-fun call!156701 () Bool)

(declare-fun c!401473 () Bool)

(assert (=> bm!156696 (= call!156701 (validRegex!3125 (ite c!401473 (regTwo!15511 lt!899105) (regOne!15510 lt!899105))))))

(declare-fun b!2518058 () Bool)

(declare-fun e!1594994 () Bool)

(declare-fun call!156703 () Bool)

(assert (=> b!2518058 (= e!1594994 call!156703)))

(declare-fun b!2518059 () Bool)

(declare-fun e!1594999 () Bool)

(declare-fun e!1594996 () Bool)

(assert (=> b!2518059 (= e!1594999 e!1594996)))

(declare-fun res!1064066 () Bool)

(assert (=> b!2518059 (= res!1064066 (not (nullable!2416 (reg!7828 lt!899105))))))

(assert (=> b!2518059 (=> (not res!1064066) (not e!1594996))))

(declare-fun b!2518060 () Bool)

(declare-fun e!1594997 () Bool)

(assert (=> b!2518060 (= e!1594997 e!1594999)))

(declare-fun c!401474 () Bool)

(assert (=> b!2518060 (= c!401474 ((_ is Star!7499) lt!899105))))

(declare-fun b!2518061 () Bool)

(declare-fun call!156702 () Bool)

(assert (=> b!2518061 (= e!1594996 call!156702)))

(declare-fun b!2518062 () Bool)

(declare-fun res!1064067 () Bool)

(declare-fun e!1594998 () Bool)

(assert (=> b!2518062 (=> (not res!1064067) (not e!1594998))))

(assert (=> b!2518062 (= res!1064067 call!156703)))

(declare-fun e!1594993 () Bool)

(assert (=> b!2518062 (= e!1594993 e!1594998)))

(declare-fun b!2518063 () Bool)

(assert (=> b!2518063 (= e!1594998 call!156701)))

(declare-fun bm!156697 () Bool)

(assert (=> bm!156697 (= call!156702 (validRegex!3125 (ite c!401474 (reg!7828 lt!899105) (ite c!401473 (regOne!15511 lt!899105) (regTwo!15510 lt!899105)))))))

(declare-fun b!2518065 () Bool)

(declare-fun res!1064064 () Bool)

(declare-fun e!1594995 () Bool)

(assert (=> b!2518065 (=> res!1064064 e!1594995)))

(assert (=> b!2518065 (= res!1064064 (not ((_ is Concat!12195) lt!899105)))))

(assert (=> b!2518065 (= e!1594993 e!1594995)))

(declare-fun b!2518066 () Bool)

(assert (=> b!2518066 (= e!1594999 e!1594993)))

(assert (=> b!2518066 (= c!401473 ((_ is Union!7499) lt!899105))))

(declare-fun bm!156698 () Bool)

(assert (=> bm!156698 (= call!156703 call!156702)))

(declare-fun b!2518064 () Bool)

(assert (=> b!2518064 (= e!1594995 e!1594994)))

(declare-fun res!1064065 () Bool)

(assert (=> b!2518064 (=> (not res!1064065) (not e!1594994))))

(assert (=> b!2518064 (= res!1064065 call!156701)))

(declare-fun d!717551 () Bool)

(declare-fun res!1064068 () Bool)

(assert (=> d!717551 (=> res!1064068 e!1594997)))

(assert (=> d!717551 (= res!1064068 ((_ is ElementMatch!7499) lt!899105))))

(assert (=> d!717551 (= (validRegex!3125 lt!899105) e!1594997)))

(assert (= (and d!717551 (not res!1064068)) b!2518060))

(assert (= (and b!2518060 c!401474) b!2518059))

(assert (= (and b!2518060 (not c!401474)) b!2518066))

(assert (= (and b!2518059 res!1064066) b!2518061))

(assert (= (and b!2518066 c!401473) b!2518062))

(assert (= (and b!2518066 (not c!401473)) b!2518065))

(assert (= (and b!2518062 res!1064067) b!2518063))

(assert (= (and b!2518065 (not res!1064064)) b!2518064))

(assert (= (and b!2518064 res!1064065) b!2518058))

(assert (= (or b!2518062 b!2518058) bm!156698))

(assert (= (or b!2518063 b!2518064) bm!156696))

(assert (= (or b!2518061 bm!156698) bm!156697))

(declare-fun m!2873867 () Bool)

(assert (=> bm!156696 m!2873867))

(declare-fun m!2873869 () Bool)

(assert (=> b!2518059 m!2873869))

(declare-fun m!2873871 () Bool)

(assert (=> bm!156697 m!2873871))

(assert (=> d!717497 d!717551))

(declare-fun d!717555 () Bool)

(declare-fun lt!899138 () Regex!7499)

(assert (=> d!717555 (validRegex!3125 lt!899138)))

(declare-fun e!1595000 () Regex!7499)

(assert (=> d!717555 (= lt!899138 e!1595000)))

(declare-fun c!401475 () Bool)

(assert (=> d!717555 (= c!401475 ((_ is Cons!29464) (t!211263 tl!4068)))))

(assert (=> d!717555 (validRegex!3125 (derivativeStep!2068 lt!899103 (h!34884 tl!4068)))))

(assert (=> d!717555 (= (derivative!194 (derivativeStep!2068 lt!899103 (h!34884 tl!4068)) (t!211263 tl!4068)) lt!899138)))

(declare-fun b!2518067 () Bool)

(assert (=> b!2518067 (= e!1595000 (derivative!194 (derivativeStep!2068 (derivativeStep!2068 lt!899103 (h!34884 tl!4068)) (h!34884 (t!211263 tl!4068))) (t!211263 (t!211263 tl!4068))))))

(declare-fun b!2518068 () Bool)

(assert (=> b!2518068 (= e!1595000 (derivativeStep!2068 lt!899103 (h!34884 tl!4068)))))

(assert (= (and d!717555 c!401475) b!2518067))

(assert (= (and d!717555 (not c!401475)) b!2518068))

(declare-fun m!2873873 () Bool)

(assert (=> d!717555 m!2873873))

(assert (=> d!717555 m!2873743))

(declare-fun m!2873875 () Bool)

(assert (=> d!717555 m!2873875))

(assert (=> b!2518067 m!2873743))

(declare-fun m!2873877 () Bool)

(assert (=> b!2518067 m!2873877))

(assert (=> b!2518067 m!2873877))

(declare-fun m!2873879 () Bool)

(assert (=> b!2518067 m!2873879))

(assert (=> b!2517773 d!717555))

(declare-fun b!2518069 () Bool)

(declare-fun e!1595001 () Regex!7499)

(declare-fun e!1595002 () Regex!7499)

(assert (=> b!2518069 (= e!1595001 e!1595002)))

(declare-fun c!401479 () Bool)

(assert (=> b!2518069 (= c!401479 ((_ is ElementMatch!7499) lt!899103))))

(declare-fun b!2518070 () Bool)

(declare-fun e!1595005 () Regex!7499)

(declare-fun call!156704 () Regex!7499)

(declare-fun call!156707 () Regex!7499)

(assert (=> b!2518070 (= e!1595005 (Union!7499 call!156704 call!156707))))

(declare-fun b!2518071 () Bool)

(declare-fun e!1595003 () Regex!7499)

(declare-fun call!156706 () Regex!7499)

(assert (=> b!2518071 (= e!1595003 (Concat!12195 call!156706 lt!899103))))

(declare-fun d!717557 () Bool)

(declare-fun lt!899139 () Regex!7499)

(assert (=> d!717557 (validRegex!3125 lt!899139)))

(assert (=> d!717557 (= lt!899139 e!1595001)))

(declare-fun c!401476 () Bool)

(assert (=> d!717557 (= c!401476 (or ((_ is EmptyExpr!7499) lt!899103) ((_ is EmptyLang!7499) lt!899103)))))

(assert (=> d!717557 (validRegex!3125 lt!899103)))

(assert (=> d!717557 (= (derivativeStep!2068 lt!899103 (h!34884 tl!4068)) lt!899139)))

(declare-fun b!2518072 () Bool)

(declare-fun c!401478 () Bool)

(assert (=> b!2518072 (= c!401478 (nullable!2416 (regOne!15510 lt!899103)))))

(declare-fun e!1595004 () Regex!7499)

(assert (=> b!2518072 (= e!1595003 e!1595004)))

(declare-fun bm!156699 () Bool)

(assert (=> bm!156699 (= call!156706 call!156704)))

(declare-fun b!2518073 () Bool)

(declare-fun call!156705 () Regex!7499)

(assert (=> b!2518073 (= e!1595004 (Union!7499 (Concat!12195 call!156705 (regTwo!15510 lt!899103)) EmptyLang!7499))))

(declare-fun b!2518074 () Bool)

(assert (=> b!2518074 (= e!1595002 (ite (= (h!34884 tl!4068) (c!401377 lt!899103)) EmptyExpr!7499 EmptyLang!7499))))

(declare-fun bm!156700 () Bool)

(assert (=> bm!156700 (= call!156705 call!156706)))

(declare-fun b!2518075 () Bool)

(assert (=> b!2518075 (= e!1595001 EmptyLang!7499)))

(declare-fun b!2518076 () Bool)

(assert (=> b!2518076 (= e!1595005 e!1595003)))

(declare-fun c!401480 () Bool)

(assert (=> b!2518076 (= c!401480 ((_ is Star!7499) lt!899103))))

(declare-fun c!401477 () Bool)

(declare-fun bm!156701 () Bool)

(assert (=> bm!156701 (= call!156704 (derivativeStep!2068 (ite c!401477 (regOne!15511 lt!899103) (ite c!401480 (reg!7828 lt!899103) (regOne!15510 lt!899103))) (h!34884 tl!4068)))))

(declare-fun bm!156702 () Bool)

(assert (=> bm!156702 (= call!156707 (derivativeStep!2068 (ite c!401477 (regTwo!15511 lt!899103) (regTwo!15510 lt!899103)) (h!34884 tl!4068)))))

(declare-fun b!2518077 () Bool)

(assert (=> b!2518077 (= e!1595004 (Union!7499 (Concat!12195 call!156705 (regTwo!15510 lt!899103)) call!156707))))

(declare-fun b!2518078 () Bool)

(assert (=> b!2518078 (= c!401477 ((_ is Union!7499) lt!899103))))

(assert (=> b!2518078 (= e!1595002 e!1595005)))

(assert (= (and d!717557 c!401476) b!2518075))

(assert (= (and d!717557 (not c!401476)) b!2518069))

(assert (= (and b!2518069 c!401479) b!2518074))

(assert (= (and b!2518069 (not c!401479)) b!2518078))

(assert (= (and b!2518078 c!401477) b!2518070))

(assert (= (and b!2518078 (not c!401477)) b!2518076))

(assert (= (and b!2518076 c!401480) b!2518071))

(assert (= (and b!2518076 (not c!401480)) b!2518072))

(assert (= (and b!2518072 c!401478) b!2518077))

(assert (= (and b!2518072 (not c!401478)) b!2518073))

(assert (= (or b!2518077 b!2518073) bm!156700))

(assert (= (or b!2518071 bm!156700) bm!156699))

(assert (= (or b!2518070 b!2518077) bm!156702))

(assert (= (or b!2518070 bm!156699) bm!156701))

(declare-fun m!2873881 () Bool)

(assert (=> d!717557 m!2873881))

(assert (=> d!717557 m!2873739))

(declare-fun m!2873883 () Bool)

(assert (=> b!2518072 m!2873883))

(declare-fun m!2873885 () Bool)

(assert (=> bm!156701 m!2873885))

(declare-fun m!2873887 () Bool)

(assert (=> bm!156702 m!2873887))

(assert (=> b!2517773 d!717557))

(assert (=> b!2517841 d!717543))

(declare-fun d!717559 () Bool)

(assert (=> d!717559 (= (nullable!2416 (regOne!15510 r!27340)) (nullableFct!658 (regOne!15510 r!27340)))))

(declare-fun bs!468927 () Bool)

(assert (= bs!468927 d!717559))

(declare-fun m!2873889 () Bool)

(assert (=> bs!468927 m!2873889))

(assert (=> b!2517778 d!717559))

(declare-fun bm!156703 () Bool)

(declare-fun call!156708 () Bool)

(declare-fun c!401483 () Bool)

(assert (=> bm!156703 (= call!156708 (validRegex!3125 (ite c!401483 (regTwo!15511 lt!899122) (regOne!15510 lt!899122))))))

(declare-fun b!2518091 () Bool)

(declare-fun e!1595015 () Bool)

(declare-fun call!156710 () Bool)

(assert (=> b!2518091 (= e!1595015 call!156710)))

(declare-fun b!2518092 () Bool)

(declare-fun e!1595022 () Bool)

(declare-fun e!1595019 () Bool)

(assert (=> b!2518092 (= e!1595022 e!1595019)))

(declare-fun res!1064079 () Bool)

(assert (=> b!2518092 (= res!1064079 (not (nullable!2416 (reg!7828 lt!899122))))))

(assert (=> b!2518092 (=> (not res!1064079) (not e!1595019))))

(declare-fun b!2518093 () Bool)

(declare-fun e!1595020 () Bool)

(assert (=> b!2518093 (= e!1595020 e!1595022)))

(declare-fun c!401484 () Bool)

(assert (=> b!2518093 (= c!401484 ((_ is Star!7499) lt!899122))))

(declare-fun b!2518094 () Bool)

(declare-fun call!156709 () Bool)

(assert (=> b!2518094 (= e!1595019 call!156709)))

(declare-fun b!2518095 () Bool)

(declare-fun res!1064080 () Bool)

(declare-fun e!1595021 () Bool)

(assert (=> b!2518095 (=> (not res!1064080) (not e!1595021))))

(assert (=> b!2518095 (= res!1064080 call!156710)))

(declare-fun e!1595014 () Bool)

(assert (=> b!2518095 (= e!1595014 e!1595021)))

(declare-fun b!2518096 () Bool)

(assert (=> b!2518096 (= e!1595021 call!156708)))

(declare-fun bm!156704 () Bool)

(assert (=> bm!156704 (= call!156709 (validRegex!3125 (ite c!401484 (reg!7828 lt!899122) (ite c!401483 (regOne!15511 lt!899122) (regTwo!15510 lt!899122)))))))

(declare-fun b!2518098 () Bool)

(declare-fun res!1064077 () Bool)

(declare-fun e!1595018 () Bool)

(assert (=> b!2518098 (=> res!1064077 e!1595018)))

(assert (=> b!2518098 (= res!1064077 (not ((_ is Concat!12195) lt!899122)))))

(assert (=> b!2518098 (= e!1595014 e!1595018)))

(declare-fun b!2518099 () Bool)

(assert (=> b!2518099 (= e!1595022 e!1595014)))

(assert (=> b!2518099 (= c!401483 ((_ is Union!7499) lt!899122))))

(declare-fun bm!156705 () Bool)

(assert (=> bm!156705 (= call!156710 call!156709)))

(declare-fun b!2518097 () Bool)

(assert (=> b!2518097 (= e!1595018 e!1595015)))

(declare-fun res!1064078 () Bool)

(assert (=> b!2518097 (=> (not res!1064078) (not e!1595015))))

(assert (=> b!2518097 (= res!1064078 call!156708)))

(declare-fun d!717561 () Bool)

(declare-fun res!1064081 () Bool)

(assert (=> d!717561 (=> res!1064081 e!1595020)))

(assert (=> d!717561 (= res!1064081 ((_ is ElementMatch!7499) lt!899122))))

(assert (=> d!717561 (= (validRegex!3125 lt!899122) e!1595020)))

(assert (= (and d!717561 (not res!1064081)) b!2518093))

(assert (= (and b!2518093 c!401484) b!2518092))

(assert (= (and b!2518093 (not c!401484)) b!2518099))

(assert (= (and b!2518092 res!1064079) b!2518094))

(assert (= (and b!2518099 c!401483) b!2518095))

(assert (= (and b!2518099 (not c!401483)) b!2518098))

(assert (= (and b!2518095 res!1064080) b!2518096))

(assert (= (and b!2518098 (not res!1064077)) b!2518097))

(assert (= (and b!2518097 res!1064078) b!2518091))

(assert (= (or b!2518095 b!2518091) bm!156705))

(assert (= (or b!2518096 b!2518097) bm!156703))

(assert (= (or b!2518094 bm!156705) bm!156704))

(declare-fun m!2873891 () Bool)

(assert (=> bm!156703 m!2873891))

(declare-fun m!2873893 () Bool)

(assert (=> b!2518092 m!2873893))

(declare-fun m!2873895 () Bool)

(assert (=> bm!156704 m!2873895))

(assert (=> d!717515 d!717561))

(assert (=> d!717515 d!717525))

(declare-fun d!717563 () Bool)

(declare-fun lt!899140 () Regex!7499)

(assert (=> d!717563 (validRegex!3125 lt!899140)))

(declare-fun e!1595025 () Regex!7499)

(assert (=> d!717563 (= lt!899140 e!1595025)))

(declare-fun c!401485 () Bool)

(assert (=> d!717563 (= c!401485 ((_ is Cons!29464) (t!211263 tl!4068)))))

(assert (=> d!717563 (validRegex!3125 (derivativeStep!2068 lt!899105 (h!34884 tl!4068)))))

(assert (=> d!717563 (= (derivative!194 (derivativeStep!2068 lt!899105 (h!34884 tl!4068)) (t!211263 tl!4068)) lt!899140)))

(declare-fun b!2518102 () Bool)

(assert (=> b!2518102 (= e!1595025 (derivative!194 (derivativeStep!2068 (derivativeStep!2068 lt!899105 (h!34884 tl!4068)) (h!34884 (t!211263 tl!4068))) (t!211263 (t!211263 tl!4068))))))

(declare-fun b!2518103 () Bool)

(assert (=> b!2518103 (= e!1595025 (derivativeStep!2068 lt!899105 (h!34884 tl!4068)))))

(assert (= (and d!717563 c!401485) b!2518102))

(assert (= (and d!717563 (not c!401485)) b!2518103))

(declare-fun m!2873897 () Bool)

(assert (=> d!717563 m!2873897))

(assert (=> d!717563 m!2873711))

(declare-fun m!2873899 () Bool)

(assert (=> d!717563 m!2873899))

(assert (=> b!2518102 m!2873711))

(declare-fun m!2873901 () Bool)

(assert (=> b!2518102 m!2873901))

(assert (=> b!2518102 m!2873901))

(declare-fun m!2873903 () Bool)

(assert (=> b!2518102 m!2873903))

(assert (=> b!2517701 d!717563))

(declare-fun b!2518104 () Bool)

(declare-fun e!1595026 () Regex!7499)

(declare-fun e!1595027 () Regex!7499)

(assert (=> b!2518104 (= e!1595026 e!1595027)))

(declare-fun c!401489 () Bool)

(assert (=> b!2518104 (= c!401489 ((_ is ElementMatch!7499) lt!899105))))

(declare-fun b!2518105 () Bool)

(declare-fun e!1595030 () Regex!7499)

(declare-fun call!156715 () Regex!7499)

(declare-fun call!156718 () Regex!7499)

(assert (=> b!2518105 (= e!1595030 (Union!7499 call!156715 call!156718))))

(declare-fun b!2518106 () Bool)

(declare-fun e!1595028 () Regex!7499)

(declare-fun call!156717 () Regex!7499)

(assert (=> b!2518106 (= e!1595028 (Concat!12195 call!156717 lt!899105))))

(declare-fun d!717565 () Bool)

(declare-fun lt!899141 () Regex!7499)

(assert (=> d!717565 (validRegex!3125 lt!899141)))

(assert (=> d!717565 (= lt!899141 e!1595026)))

(declare-fun c!401486 () Bool)

(assert (=> d!717565 (= c!401486 (or ((_ is EmptyExpr!7499) lt!899105) ((_ is EmptyLang!7499) lt!899105)))))

(assert (=> d!717565 (validRegex!3125 lt!899105)))

(assert (=> d!717565 (= (derivativeStep!2068 lt!899105 (h!34884 tl!4068)) lt!899141)))

(declare-fun b!2518107 () Bool)

(declare-fun c!401488 () Bool)

(assert (=> b!2518107 (= c!401488 (nullable!2416 (regOne!15510 lt!899105)))))

(declare-fun e!1595029 () Regex!7499)

(assert (=> b!2518107 (= e!1595028 e!1595029)))

(declare-fun bm!156710 () Bool)

(assert (=> bm!156710 (= call!156717 call!156715)))

(declare-fun b!2518108 () Bool)

(declare-fun call!156716 () Regex!7499)

(assert (=> b!2518108 (= e!1595029 (Union!7499 (Concat!12195 call!156716 (regTwo!15510 lt!899105)) EmptyLang!7499))))

(declare-fun b!2518109 () Bool)

(assert (=> b!2518109 (= e!1595027 (ite (= (h!34884 tl!4068) (c!401377 lt!899105)) EmptyExpr!7499 EmptyLang!7499))))

(declare-fun bm!156711 () Bool)

(assert (=> bm!156711 (= call!156716 call!156717)))

(declare-fun b!2518110 () Bool)

(assert (=> b!2518110 (= e!1595026 EmptyLang!7499)))

(declare-fun b!2518111 () Bool)

(assert (=> b!2518111 (= e!1595030 e!1595028)))

(declare-fun c!401490 () Bool)

(assert (=> b!2518111 (= c!401490 ((_ is Star!7499) lt!899105))))

(declare-fun bm!156712 () Bool)

(declare-fun c!401487 () Bool)

(assert (=> bm!156712 (= call!156715 (derivativeStep!2068 (ite c!401487 (regOne!15511 lt!899105) (ite c!401490 (reg!7828 lt!899105) (regOne!15510 lt!899105))) (h!34884 tl!4068)))))

(declare-fun bm!156713 () Bool)

(assert (=> bm!156713 (= call!156718 (derivativeStep!2068 (ite c!401487 (regTwo!15511 lt!899105) (regTwo!15510 lt!899105)) (h!34884 tl!4068)))))

(declare-fun b!2518112 () Bool)

(assert (=> b!2518112 (= e!1595029 (Union!7499 (Concat!12195 call!156716 (regTwo!15510 lt!899105)) call!156718))))

(declare-fun b!2518113 () Bool)

(assert (=> b!2518113 (= c!401487 ((_ is Union!7499) lt!899105))))

(assert (=> b!2518113 (= e!1595027 e!1595030)))

(assert (= (and d!717565 c!401486) b!2518110))

(assert (= (and d!717565 (not c!401486)) b!2518104))

(assert (= (and b!2518104 c!401489) b!2518109))

(assert (= (and b!2518104 (not c!401489)) b!2518113))

(assert (= (and b!2518113 c!401487) b!2518105))

(assert (= (and b!2518113 (not c!401487)) b!2518111))

(assert (= (and b!2518111 c!401490) b!2518106))

(assert (= (and b!2518111 (not c!401490)) b!2518107))

(assert (= (and b!2518107 c!401488) b!2518112))

(assert (= (and b!2518107 (not c!401488)) b!2518108))

(assert (= (or b!2518112 b!2518108) bm!156711))

(assert (= (or b!2518106 bm!156711) bm!156710))

(assert (= (or b!2518105 b!2518112) bm!156713))

(assert (= (or b!2518105 bm!156710) bm!156712))

(declare-fun m!2873905 () Bool)

(assert (=> d!717565 m!2873905))

(assert (=> d!717565 m!2873709))

(declare-fun m!2873907 () Bool)

(assert (=> b!2518107 m!2873907))

(declare-fun m!2873909 () Bool)

(assert (=> bm!156712 m!2873909))

(declare-fun m!2873911 () Bool)

(assert (=> bm!156713 m!2873911))

(assert (=> b!2517701 d!717565))

(declare-fun b!2518114 () Bool)

(declare-fun e!1595031 () Regex!7499)

(declare-fun e!1595032 () Regex!7499)

(assert (=> b!2518114 (= e!1595031 e!1595032)))

(declare-fun c!401494 () Bool)

(assert (=> b!2518114 (= c!401494 ((_ is ElementMatch!7499) (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340))))))))

(declare-fun b!2518115 () Bool)

(declare-fun e!1595035 () Regex!7499)

(declare-fun call!156719 () Regex!7499)

(declare-fun call!156722 () Regex!7499)

(assert (=> b!2518115 (= e!1595035 (Union!7499 call!156719 call!156722))))

(declare-fun b!2518116 () Bool)

(declare-fun call!156721 () Regex!7499)

(declare-fun e!1595033 () Regex!7499)

(assert (=> b!2518116 (= e!1595033 (Concat!12195 call!156721 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340))))))))

(declare-fun d!717567 () Bool)

(declare-fun lt!899142 () Regex!7499)

(assert (=> d!717567 (validRegex!3125 lt!899142)))

(assert (=> d!717567 (= lt!899142 e!1595031)))

(declare-fun c!401491 () Bool)

(assert (=> d!717567 (= c!401491 (or ((_ is EmptyExpr!7499) (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340))))) ((_ is EmptyLang!7499) (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340)))))))))

(assert (=> d!717567 (validRegex!3125 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340)))))))

(assert (=> d!717567 (= (derivativeStep!2068 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340)))) c!14016) lt!899142)))

(declare-fun b!2518117 () Bool)

(declare-fun c!401493 () Bool)

(assert (=> b!2518117 (= c!401493 (nullable!2416 (regOne!15510 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340)))))))))

(declare-fun e!1595034 () Regex!7499)

(assert (=> b!2518117 (= e!1595033 e!1595034)))

(declare-fun bm!156714 () Bool)

(assert (=> bm!156714 (= call!156721 call!156719)))

(declare-fun b!2518118 () Bool)

(declare-fun call!156720 () Regex!7499)

(assert (=> b!2518118 (= e!1595034 (Union!7499 (Concat!12195 call!156720 (regTwo!15510 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340)))))) EmptyLang!7499))))

(declare-fun b!2518119 () Bool)

(assert (=> b!2518119 (= e!1595032 (ite (= c!14016 (c!401377 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340)))))) EmptyExpr!7499 EmptyLang!7499))))

(declare-fun bm!156715 () Bool)

(assert (=> bm!156715 (= call!156720 call!156721)))

(declare-fun b!2518120 () Bool)

(assert (=> b!2518120 (= e!1595031 EmptyLang!7499)))

(declare-fun b!2518121 () Bool)

(assert (=> b!2518121 (= e!1595035 e!1595033)))

(declare-fun c!401495 () Bool)

(assert (=> b!2518121 (= c!401495 ((_ is Star!7499) (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340))))))))

(declare-fun c!401492 () Bool)

(declare-fun bm!156716 () Bool)

(assert (=> bm!156716 (= call!156719 (derivativeStep!2068 (ite c!401492 (regOne!15511 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340))))) (ite c!401495 (reg!7828 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340))))) (regOne!15510 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340))))))) c!14016))))

(declare-fun bm!156717 () Bool)

(assert (=> bm!156717 (= call!156722 (derivativeStep!2068 (ite c!401492 (regTwo!15511 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340))))) (regTwo!15510 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340)))))) c!14016))))

(declare-fun b!2518122 () Bool)

(assert (=> b!2518122 (= e!1595034 (Union!7499 (Concat!12195 call!156720 (regTwo!15510 (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340)))))) call!156722))))

(declare-fun b!2518123 () Bool)

(assert (=> b!2518123 (= c!401492 ((_ is Union!7499) (ite c!401411 (regOne!15511 (reg!7828 r!27340)) (ite c!401414 (reg!7828 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340))))))))

(assert (=> b!2518123 (= e!1595032 e!1595035)))

(assert (= (and d!717567 c!401491) b!2518120))

(assert (= (and d!717567 (not c!401491)) b!2518114))

(assert (= (and b!2518114 c!401494) b!2518119))

(assert (= (and b!2518114 (not c!401494)) b!2518123))

(assert (= (and b!2518123 c!401492) b!2518115))

(assert (= (and b!2518123 (not c!401492)) b!2518121))

(assert (= (and b!2518121 c!401495) b!2518116))

(assert (= (and b!2518121 (not c!401495)) b!2518117))

(assert (= (and b!2518117 c!401493) b!2518122))

(assert (= (and b!2518117 (not c!401493)) b!2518118))

(assert (= (or b!2518122 b!2518118) bm!156715))

(assert (= (or b!2518116 bm!156715) bm!156714))

(assert (= (or b!2518115 b!2518122) bm!156717))

(assert (= (or b!2518115 bm!156714) bm!156716))

(declare-fun m!2873913 () Bool)

(assert (=> d!717567 m!2873913))

(declare-fun m!2873915 () Bool)

(assert (=> d!717567 m!2873915))

(declare-fun m!2873917 () Bool)

(assert (=> b!2518117 m!2873917))

(declare-fun m!2873919 () Bool)

(assert (=> bm!156716 m!2873919))

(declare-fun m!2873921 () Bool)

(assert (=> bm!156717 m!2873921))

(assert (=> bm!156647 d!717567))

(declare-fun b!2518131 () Bool)

(declare-fun e!1595042 () Regex!7499)

(declare-fun e!1595043 () Regex!7499)

(assert (=> b!2518131 (= e!1595042 e!1595043)))

(declare-fun c!401500 () Bool)

(assert (=> b!2518131 (= c!401500 ((_ is ElementMatch!7499) (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340))))))

(declare-fun b!2518132 () Bool)

(declare-fun e!1595046 () Regex!7499)

(declare-fun call!156725 () Regex!7499)

(declare-fun call!156728 () Regex!7499)

(assert (=> b!2518132 (= e!1595046 (Union!7499 call!156725 call!156728))))

(declare-fun e!1595044 () Regex!7499)

(declare-fun b!2518133 () Bool)

(declare-fun call!156727 () Regex!7499)

(assert (=> b!2518133 (= e!1595044 (Concat!12195 call!156727 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340))))))

(declare-fun d!717569 () Bool)

(declare-fun lt!899143 () Regex!7499)

(assert (=> d!717569 (validRegex!3125 lt!899143)))

(assert (=> d!717569 (= lt!899143 e!1595042)))

(declare-fun c!401497 () Bool)

(assert (=> d!717569 (= c!401497 (or ((_ is EmptyExpr!7499) (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340))) ((_ is EmptyLang!7499) (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340)))))))

(assert (=> d!717569 (validRegex!3125 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340)))))

(assert (=> d!717569 (= (derivativeStep!2068 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340)) c!14016) lt!899143)))

(declare-fun b!2518134 () Bool)

(declare-fun c!401499 () Bool)

(assert (=> b!2518134 (= c!401499 (nullable!2416 (regOne!15510 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340)))))))

(declare-fun e!1595045 () Regex!7499)

(assert (=> b!2518134 (= e!1595044 e!1595045)))

(declare-fun bm!156720 () Bool)

(assert (=> bm!156720 (= call!156727 call!156725)))

(declare-fun b!2518135 () Bool)

(declare-fun call!156726 () Regex!7499)

(assert (=> b!2518135 (= e!1595045 (Union!7499 (Concat!12195 call!156726 (regTwo!15510 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340)))) EmptyLang!7499))))

(declare-fun b!2518136 () Bool)

(assert (=> b!2518136 (= e!1595043 (ite (= c!14016 (c!401377 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340)))) EmptyExpr!7499 EmptyLang!7499))))

(declare-fun bm!156721 () Bool)

(assert (=> bm!156721 (= call!156726 call!156727)))

(declare-fun b!2518137 () Bool)

(assert (=> b!2518137 (= e!1595042 EmptyLang!7499)))

(declare-fun b!2518138 () Bool)

(assert (=> b!2518138 (= e!1595046 e!1595044)))

(declare-fun c!401501 () Bool)

(assert (=> b!2518138 (= c!401501 ((_ is Star!7499) (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340))))))

(declare-fun bm!156722 () Bool)

(declare-fun c!401498 () Bool)

(assert (=> bm!156722 (= call!156725 (derivativeStep!2068 (ite c!401498 (regOne!15511 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340))) (ite c!401501 (reg!7828 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340))) (regOne!15510 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340))))) c!14016))))

(declare-fun bm!156723 () Bool)

(assert (=> bm!156723 (= call!156728 (derivativeStep!2068 (ite c!401498 (regTwo!15511 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340))) (regTwo!15510 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340)))) c!14016))))

(declare-fun b!2518139 () Bool)

(assert (=> b!2518139 (= e!1595045 (Union!7499 (Concat!12195 call!156726 (regTwo!15510 (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340)))) call!156728))))

(declare-fun b!2518140 () Bool)

(assert (=> b!2518140 (= c!401498 ((_ is Union!7499) (ite c!401422 (regTwo!15511 r!27340) (regTwo!15510 r!27340))))))

(assert (=> b!2518140 (= e!1595043 e!1595046)))

(assert (= (and d!717569 c!401497) b!2518137))

(assert (= (and d!717569 (not c!401497)) b!2518131))

(assert (= (and b!2518131 c!401500) b!2518136))

(assert (= (and b!2518131 (not c!401500)) b!2518140))

(assert (= (and b!2518140 c!401498) b!2518132))

(assert (= (and b!2518140 (not c!401498)) b!2518138))

(assert (= (and b!2518138 c!401501) b!2518133))

(assert (= (and b!2518138 (not c!401501)) b!2518134))

(assert (= (and b!2518134 c!401499) b!2518139))

(assert (= (and b!2518134 (not c!401499)) b!2518135))

(assert (= (or b!2518139 b!2518135) bm!156721))

(assert (= (or b!2518133 bm!156721) bm!156720))

(assert (= (or b!2518132 b!2518139) bm!156723))

(assert (= (or b!2518132 bm!156720) bm!156722))

(declare-fun m!2873927 () Bool)

(assert (=> d!717569 m!2873927))

(declare-fun m!2873931 () Bool)

(assert (=> d!717569 m!2873931))

(declare-fun m!2873933 () Bool)

(assert (=> b!2518134 m!2873933))

(declare-fun m!2873937 () Bool)

(assert (=> bm!156722 m!2873937))

(declare-fun m!2873939 () Bool)

(assert (=> bm!156723 m!2873939))

(assert (=> bm!156656 d!717569))

(declare-fun b!2518212 () Bool)

(declare-fun e!1595096 () Bool)

(declare-fun e!1595100 () Bool)

(assert (=> b!2518212 (= e!1595096 e!1595100)))

(declare-fun res!1064118 () Bool)

(declare-fun call!156753 () Bool)

(assert (=> b!2518212 (= res!1064118 call!156753)))

(assert (=> b!2518212 (=> res!1064118 e!1595100)))

(declare-fun b!2518213 () Bool)

(declare-fun e!1595095 () Bool)

(declare-fun e!1595099 () Bool)

(assert (=> b!2518213 (= e!1595095 e!1595099)))

(declare-fun res!1064117 () Bool)

(assert (=> b!2518213 (=> res!1064117 e!1595099)))

(assert (=> b!2518213 (= res!1064117 ((_ is Star!7499) (derivative!194 lt!899105 tl!4068)))))

(declare-fun c!401525 () Bool)

(declare-fun call!156754 () Bool)

(declare-fun bm!156748 () Bool)

(assert (=> bm!156748 (= call!156754 (nullable!2416 (ite c!401525 (regTwo!15511 (derivative!194 lt!899105 tl!4068)) (regOne!15510 (derivative!194 lt!899105 tl!4068)))))))

(declare-fun d!717575 () Bool)

(declare-fun res!1064115 () Bool)

(declare-fun e!1595097 () Bool)

(assert (=> d!717575 (=> res!1064115 e!1595097)))

(assert (=> d!717575 (= res!1064115 ((_ is EmptyExpr!7499) (derivative!194 lt!899105 tl!4068)))))

(assert (=> d!717575 (= (nullableFct!658 (derivative!194 lt!899105 tl!4068)) e!1595097)))

(declare-fun b!2518214 () Bool)

(assert (=> b!2518214 (= e!1595097 e!1595095)))

(declare-fun res!1064116 () Bool)

(assert (=> b!2518214 (=> (not res!1064116) (not e!1595095))))

(assert (=> b!2518214 (= res!1064116 (and (not ((_ is EmptyLang!7499) (derivative!194 lt!899105 tl!4068))) (not ((_ is ElementMatch!7499) (derivative!194 lt!899105 tl!4068)))))))

(declare-fun b!2518215 () Bool)

(declare-fun e!1595098 () Bool)

(assert (=> b!2518215 (= e!1595098 call!156753)))

(declare-fun bm!156749 () Bool)

(assert (=> bm!156749 (= call!156753 (nullable!2416 (ite c!401525 (regOne!15511 (derivative!194 lt!899105 tl!4068)) (regTwo!15510 (derivative!194 lt!899105 tl!4068)))))))

(declare-fun b!2518216 () Bool)

(assert (=> b!2518216 (= e!1595099 e!1595096)))

(assert (=> b!2518216 (= c!401525 ((_ is Union!7499) (derivative!194 lt!899105 tl!4068)))))

(declare-fun b!2518217 () Bool)

(assert (=> b!2518217 (= e!1595100 call!156754)))

(declare-fun b!2518218 () Bool)

(assert (=> b!2518218 (= e!1595096 e!1595098)))

(declare-fun res!1064114 () Bool)

(assert (=> b!2518218 (= res!1064114 call!156754)))

(assert (=> b!2518218 (=> (not res!1064114) (not e!1595098))))

(assert (= (and d!717575 (not res!1064115)) b!2518214))

(assert (= (and b!2518214 res!1064116) b!2518213))

(assert (= (and b!2518213 (not res!1064117)) b!2518216))

(assert (= (and b!2518216 c!401525) b!2518212))

(assert (= (and b!2518216 (not c!401525)) b!2518218))

(assert (= (and b!2518212 (not res!1064118)) b!2518217))

(assert (= (and b!2518218 res!1064114) b!2518215))

(assert (= (or b!2518217 b!2518218) bm!156748))

(assert (= (or b!2518212 b!2518215) bm!156749))

(declare-fun m!2873989 () Bool)

(assert (=> bm!156748 m!2873989))

(declare-fun m!2873991 () Bool)

(assert (=> bm!156749 m!2873991))

(assert (=> d!717493 d!717575))

(declare-fun d!717599 () Bool)

(assert (=> d!717599 (= (head!5748 tl!4068) (h!34884 tl!4068))))

(assert (=> b!2517894 d!717599))

(declare-fun b!2518229 () Bool)

(declare-fun res!1064124 () Bool)

(declare-fun e!1595110 () Bool)

(assert (=> b!2518229 (=> res!1064124 e!1595110)))

(assert (=> b!2518229 (= res!1064124 (not (isEmpty!16921 (tail!4024 Nil!29464))))))

(declare-fun d!717603 () Bool)

(declare-fun e!1595112 () Bool)

(assert (=> d!717603 e!1595112))

(declare-fun c!401532 () Bool)

(assert (=> d!717603 (= c!401532 ((_ is EmptyExpr!7499) (derivative!194 lt!899103 tl!4068)))))

(declare-fun lt!899149 () Bool)

(declare-fun e!1595107 () Bool)

(assert (=> d!717603 (= lt!899149 e!1595107)))

(declare-fun c!401531 () Bool)

(assert (=> d!717603 (= c!401531 (isEmpty!16921 Nil!29464))))

(assert (=> d!717603 (validRegex!3125 (derivative!194 lt!899103 tl!4068))))

(assert (=> d!717603 (= (matchR!3486 (derivative!194 lt!899103 tl!4068) Nil!29464) lt!899149)))

(declare-fun b!2518230 () Bool)

(declare-fun e!1595106 () Bool)

(assert (=> b!2518230 (= e!1595106 (= (head!5748 Nil!29464) (c!401377 (derivative!194 lt!899103 tl!4068))))))

(declare-fun b!2518231 () Bool)

(declare-fun res!1064119 () Bool)

(assert (=> b!2518231 (=> (not res!1064119) (not e!1595106))))

(declare-fun call!156759 () Bool)

(assert (=> b!2518231 (= res!1064119 (not call!156759))))

(declare-fun b!2518232 () Bool)

(declare-fun res!1064122 () Bool)

(declare-fun e!1595108 () Bool)

(assert (=> b!2518232 (=> res!1064122 e!1595108)))

(assert (=> b!2518232 (= res!1064122 e!1595106)))

(declare-fun res!1064120 () Bool)

(assert (=> b!2518232 (=> (not res!1064120) (not e!1595106))))

(assert (=> b!2518232 (= res!1064120 lt!899149)))

(declare-fun b!2518233 () Bool)

(declare-fun res!1064126 () Bool)

(assert (=> b!2518233 (=> res!1064126 e!1595108)))

(assert (=> b!2518233 (= res!1064126 (not ((_ is ElementMatch!7499) (derivative!194 lt!899103 tl!4068))))))

(declare-fun e!1595111 () Bool)

(assert (=> b!2518233 (= e!1595111 e!1595108)))

(declare-fun b!2518234 () Bool)

(assert (=> b!2518234 (= e!1595107 (matchR!3486 (derivativeStep!2068 (derivative!194 lt!899103 tl!4068) (head!5748 Nil!29464)) (tail!4024 Nil!29464)))))

(declare-fun b!2518235 () Bool)

(declare-fun e!1595109 () Bool)

(assert (=> b!2518235 (= e!1595109 e!1595110)))

(declare-fun res!1064123 () Bool)

(assert (=> b!2518235 (=> res!1064123 e!1595110)))

(assert (=> b!2518235 (= res!1064123 call!156759)))

(declare-fun b!2518236 () Bool)

(assert (=> b!2518236 (= e!1595112 e!1595111)))

(declare-fun c!401533 () Bool)

(assert (=> b!2518236 (= c!401533 ((_ is EmptyLang!7499) (derivative!194 lt!899103 tl!4068)))))

(declare-fun b!2518237 () Bool)

(assert (=> b!2518237 (= e!1595112 (= lt!899149 call!156759))))

(declare-fun b!2518238 () Bool)

(assert (=> b!2518238 (= e!1595111 (not lt!899149))))

(declare-fun b!2518239 () Bool)

(assert (=> b!2518239 (= e!1595108 e!1595109)))

(declare-fun res!1064125 () Bool)

(assert (=> b!2518239 (=> (not res!1064125) (not e!1595109))))

(assert (=> b!2518239 (= res!1064125 (not lt!899149))))

(declare-fun b!2518240 () Bool)

(assert (=> b!2518240 (= e!1595107 (nullable!2416 (derivative!194 lt!899103 tl!4068)))))

(declare-fun bm!156754 () Bool)

(assert (=> bm!156754 (= call!156759 (isEmpty!16921 Nil!29464))))

(declare-fun b!2518241 () Bool)

(assert (=> b!2518241 (= e!1595110 (not (= (head!5748 Nil!29464) (c!401377 (derivative!194 lt!899103 tl!4068)))))))

(declare-fun b!2518242 () Bool)

(declare-fun res!1064121 () Bool)

(assert (=> b!2518242 (=> (not res!1064121) (not e!1595106))))

(assert (=> b!2518242 (= res!1064121 (isEmpty!16921 (tail!4024 Nil!29464)))))

(assert (= (and d!717603 c!401531) b!2518240))

(assert (= (and d!717603 (not c!401531)) b!2518234))

(assert (= (and d!717603 c!401532) b!2518237))

(assert (= (and d!717603 (not c!401532)) b!2518236))

(assert (= (and b!2518236 c!401533) b!2518238))

(assert (= (and b!2518236 (not c!401533)) b!2518233))

(assert (= (and b!2518233 (not res!1064126)) b!2518232))

(assert (= (and b!2518232 res!1064120) b!2518231))

(assert (= (and b!2518231 res!1064119) b!2518242))

(assert (= (and b!2518242 res!1064121) b!2518230))

(assert (= (and b!2518232 (not res!1064122)) b!2518239))

(assert (= (and b!2518239 res!1064125) b!2518235))

(assert (= (and b!2518235 (not res!1064123)) b!2518229))

(assert (= (and b!2518229 (not res!1064124)) b!2518241))

(assert (= (or b!2518237 b!2518231 b!2518235) bm!156754))

(assert (=> b!2518242 m!2873767))

(assert (=> b!2518242 m!2873767))

(assert (=> b!2518242 m!2873769))

(assert (=> b!2518240 m!2873681))

(declare-fun m!2874007 () Bool)

(assert (=> b!2518240 m!2874007))

(assert (=> b!2518234 m!2873771))

(assert (=> b!2518234 m!2873681))

(assert (=> b!2518234 m!2873771))

(declare-fun m!2874009 () Bool)

(assert (=> b!2518234 m!2874009))

(assert (=> b!2518234 m!2873767))

(assert (=> b!2518234 m!2874009))

(assert (=> b!2518234 m!2873767))

(declare-fun m!2874011 () Bool)

(assert (=> b!2518234 m!2874011))

(assert (=> b!2518229 m!2873767))

(assert (=> b!2518229 m!2873767))

(assert (=> b!2518229 m!2873769))

(assert (=> b!2518230 m!2873771))

(assert (=> d!717603 m!2873777))

(assert (=> d!717603 m!2873681))

(declare-fun m!2874013 () Bool)

(assert (=> d!717603 m!2874013))

(assert (=> b!2518241 m!2873771))

(assert (=> bm!156754 m!2873777))

(assert (=> d!717523 d!717603))

(declare-fun bm!156758 () Bool)

(declare-fun call!156763 () Bool)

(declare-fun c!401536 () Bool)

(assert (=> bm!156758 (= call!156763 (validRegex!3125 (ite c!401536 (regTwo!15511 lt!899103) (regOne!15510 lt!899103))))))

(declare-fun b!2518252 () Bool)

(declare-fun e!1595121 () Bool)

(declare-fun call!156765 () Bool)

(assert (=> b!2518252 (= e!1595121 call!156765)))

(declare-fun b!2518253 () Bool)

(declare-fun e!1595126 () Bool)

(declare-fun e!1595123 () Bool)

(assert (=> b!2518253 (= e!1595126 e!1595123)))

(declare-fun res!1064134 () Bool)

(assert (=> b!2518253 (= res!1064134 (not (nullable!2416 (reg!7828 lt!899103))))))

(assert (=> b!2518253 (=> (not res!1064134) (not e!1595123))))

(declare-fun b!2518254 () Bool)

(declare-fun e!1595124 () Bool)

(assert (=> b!2518254 (= e!1595124 e!1595126)))

(declare-fun c!401537 () Bool)

(assert (=> b!2518254 (= c!401537 ((_ is Star!7499) lt!899103))))

(declare-fun b!2518255 () Bool)

(declare-fun call!156764 () Bool)

(assert (=> b!2518255 (= e!1595123 call!156764)))

(declare-fun b!2518256 () Bool)

(declare-fun res!1064135 () Bool)

(declare-fun e!1595125 () Bool)

(assert (=> b!2518256 (=> (not res!1064135) (not e!1595125))))

(assert (=> b!2518256 (= res!1064135 call!156765)))

(declare-fun e!1595120 () Bool)

(assert (=> b!2518256 (= e!1595120 e!1595125)))

(declare-fun b!2518257 () Bool)

(assert (=> b!2518257 (= e!1595125 call!156763)))

(declare-fun bm!156759 () Bool)

(assert (=> bm!156759 (= call!156764 (validRegex!3125 (ite c!401537 (reg!7828 lt!899103) (ite c!401536 (regOne!15511 lt!899103) (regTwo!15510 lt!899103)))))))

(declare-fun b!2518259 () Bool)

(declare-fun res!1064132 () Bool)

(declare-fun e!1595122 () Bool)

(assert (=> b!2518259 (=> res!1064132 e!1595122)))

(assert (=> b!2518259 (= res!1064132 (not ((_ is Concat!12195) lt!899103)))))

(assert (=> b!2518259 (= e!1595120 e!1595122)))

(declare-fun b!2518260 () Bool)

(assert (=> b!2518260 (= e!1595126 e!1595120)))

(assert (=> b!2518260 (= c!401536 ((_ is Union!7499) lt!899103))))

(declare-fun bm!156760 () Bool)

(assert (=> bm!156760 (= call!156765 call!156764)))

(declare-fun b!2518258 () Bool)

(assert (=> b!2518258 (= e!1595122 e!1595121)))

(declare-fun res!1064133 () Bool)

(assert (=> b!2518258 (=> (not res!1064133) (not e!1595121))))

(assert (=> b!2518258 (= res!1064133 call!156763)))

(declare-fun d!717611 () Bool)

(declare-fun res!1064136 () Bool)

(assert (=> d!717611 (=> res!1064136 e!1595124)))

(assert (=> d!717611 (= res!1064136 ((_ is ElementMatch!7499) lt!899103))))

(assert (=> d!717611 (= (validRegex!3125 lt!899103) e!1595124)))

(assert (= (and d!717611 (not res!1064136)) b!2518254))

(assert (= (and b!2518254 c!401537) b!2518253))

(assert (= (and b!2518254 (not c!401537)) b!2518260))

(assert (= (and b!2518253 res!1064134) b!2518255))

(assert (= (and b!2518260 c!401536) b!2518256))

(assert (= (and b!2518260 (not c!401536)) b!2518259))

(assert (= (and b!2518256 res!1064135) b!2518257))

(assert (= (and b!2518259 (not res!1064132)) b!2518258))

(assert (= (and b!2518258 res!1064133) b!2518252))

(assert (= (or b!2518256 b!2518252) bm!156760))

(assert (= (or b!2518257 b!2518258) bm!156758))

(assert (= (or b!2518255 bm!156760) bm!156759))

(declare-fun m!2874021 () Bool)

(assert (=> bm!156758 m!2874021))

(declare-fun m!2874023 () Bool)

(assert (=> b!2518253 m!2874023))

(declare-fun m!2874025 () Bool)

(assert (=> bm!156759 m!2874025))

(assert (=> d!717523 d!717611))

(assert (=> d!717523 d!717521))

(assert (=> d!717523 d!717511))

(declare-fun d!717615 () Bool)

(assert (=> d!717615 (= (matchR!3486 lt!899103 tl!4068) (matchR!3486 (derivative!194 lt!899103 tl!4068) Nil!29464))))

(assert (=> d!717615 true))

(declare-fun _$108!290 () Unit!43223)

(assert (=> d!717615 (= (choose!14924 lt!899103 tl!4068) _$108!290)))

(declare-fun bs!468931 () Bool)

(assert (= bs!468931 d!717615))

(assert (=> bs!468931 m!2873667))

(assert (=> bs!468931 m!2873681))

(assert (=> bs!468931 m!2873681))

(assert (=> bs!468931 m!2873799))

(assert (=> d!717523 d!717615))

(declare-fun b!2518284 () Bool)

(declare-fun e!1595141 () Regex!7499)

(declare-fun e!1595142 () Regex!7499)

(assert (=> b!2518284 (= e!1595141 e!1595142)))

(declare-fun c!401546 () Bool)

(assert (=> b!2518284 (= c!401546 ((_ is ElementMatch!7499) (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340)))))))

(declare-fun b!2518285 () Bool)

(declare-fun e!1595145 () Regex!7499)

(declare-fun call!156770 () Regex!7499)

(declare-fun call!156773 () Regex!7499)

(assert (=> b!2518285 (= e!1595145 (Union!7499 call!156770 call!156773))))

(declare-fun b!2518286 () Bool)

(declare-fun e!1595143 () Regex!7499)

(declare-fun call!156772 () Regex!7499)

(assert (=> b!2518286 (= e!1595143 (Concat!12195 call!156772 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340)))))))

(declare-fun d!717623 () Bool)

(declare-fun lt!899151 () Regex!7499)

(assert (=> d!717623 (validRegex!3125 lt!899151)))

(assert (=> d!717623 (= lt!899151 e!1595141)))

(declare-fun c!401543 () Bool)

(assert (=> d!717623 (= c!401543 (or ((_ is EmptyExpr!7499) (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340)))) ((_ is EmptyLang!7499) (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340))))))))

(assert (=> d!717623 (validRegex!3125 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340))))))

(assert (=> d!717623 (= (derivativeStep!2068 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340))) c!14016) lt!899151)))

(declare-fun b!2518287 () Bool)

(declare-fun c!401545 () Bool)

(assert (=> b!2518287 (= c!401545 (nullable!2416 (regOne!15510 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340))))))))

(declare-fun e!1595144 () Regex!7499)

(assert (=> b!2518287 (= e!1595143 e!1595144)))

(declare-fun bm!156765 () Bool)

(assert (=> bm!156765 (= call!156772 call!156770)))

(declare-fun call!156771 () Regex!7499)

(declare-fun b!2518288 () Bool)

(assert (=> b!2518288 (= e!1595144 (Union!7499 (Concat!12195 call!156771 (regTwo!15510 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340))))) EmptyLang!7499))))

(declare-fun b!2518289 () Bool)

(assert (=> b!2518289 (= e!1595142 (ite (= c!14016 (c!401377 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340))))) EmptyExpr!7499 EmptyLang!7499))))

(declare-fun bm!156766 () Bool)

(assert (=> bm!156766 (= call!156771 call!156772)))

(declare-fun b!2518290 () Bool)

(assert (=> b!2518290 (= e!1595141 EmptyLang!7499)))

(declare-fun b!2518291 () Bool)

(assert (=> b!2518291 (= e!1595145 e!1595143)))

(declare-fun c!401547 () Bool)

(assert (=> b!2518291 (= c!401547 ((_ is Star!7499) (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340)))))))

(declare-fun c!401544 () Bool)

(declare-fun bm!156767 () Bool)

(assert (=> bm!156767 (= call!156770 (derivativeStep!2068 (ite c!401544 (regOne!15511 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340)))) (ite c!401547 (reg!7828 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340)))) (regOne!15510 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340)))))) c!14016))))

(declare-fun bm!156768 () Bool)

(assert (=> bm!156768 (= call!156773 (derivativeStep!2068 (ite c!401544 (regTwo!15511 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340)))) (regTwo!15510 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340))))) c!14016))))

(declare-fun b!2518292 () Bool)

(assert (=> b!2518292 (= e!1595144 (Union!7499 (Concat!12195 call!156771 (regTwo!15510 (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340))))) call!156773))))

(declare-fun b!2518293 () Bool)

(assert (=> b!2518293 (= c!401544 ((_ is Union!7499) (ite c!401422 (regOne!15511 r!27340) (ite c!401425 (reg!7828 r!27340) (regOne!15510 r!27340)))))))

(assert (=> b!2518293 (= e!1595142 e!1595145)))

(assert (= (and d!717623 c!401543) b!2518290))

(assert (= (and d!717623 (not c!401543)) b!2518284))

(assert (= (and b!2518284 c!401546) b!2518289))

(assert (= (and b!2518284 (not c!401546)) b!2518293))

(assert (= (and b!2518293 c!401544) b!2518285))

(assert (= (and b!2518293 (not c!401544)) b!2518291))

(assert (= (and b!2518291 c!401547) b!2518286))

(assert (= (and b!2518291 (not c!401547)) b!2518287))

(assert (= (and b!2518287 c!401545) b!2518292))

(assert (= (and b!2518287 (not c!401545)) b!2518288))

(assert (= (or b!2518292 b!2518288) bm!156766))

(assert (= (or b!2518286 bm!156766) bm!156765))

(assert (= (or b!2518285 b!2518292) bm!156768))

(assert (= (or b!2518285 bm!156765) bm!156767))

(declare-fun m!2874043 () Bool)

(assert (=> d!717623 m!2874043))

(declare-fun m!2874045 () Bool)

(assert (=> d!717623 m!2874045))

(declare-fun m!2874047 () Bool)

(assert (=> b!2518287 m!2874047))

(declare-fun m!2874049 () Bool)

(assert (=> bm!156767 m!2874049))

(declare-fun m!2874051 () Bool)

(assert (=> bm!156768 m!2874051))

(assert (=> bm!156655 d!717623))

(declare-fun d!717625 () Bool)

(assert (=> d!717625 (= (nullable!2416 (reg!7828 r!27340)) (nullableFct!658 (reg!7828 r!27340)))))

(declare-fun bs!468932 () Bool)

(assert (= bs!468932 d!717625))

(declare-fun m!2874053 () Bool)

(assert (=> bs!468932 m!2874053))

(assert (=> b!2517978 d!717625))

(declare-fun d!717627 () Bool)

(assert (=> d!717627 (= (isEmpty!16921 (tail!4024 tl!4068)) ((_ is Nil!29464) (tail!4024 tl!4068)))))

(assert (=> b!2517895 d!717627))

(declare-fun d!717629 () Bool)

(assert (=> d!717629 (= (tail!4024 tl!4068) (t!211263 tl!4068))))

(assert (=> b!2517895 d!717629))

(assert (=> d!717521 d!717537))

(assert (=> d!717521 d!717611))

(assert (=> b!2517882 d!717627))

(assert (=> b!2517882 d!717629))

(declare-fun d!717633 () Bool)

(assert (not d!717633))

(assert (=> b!2517853 d!717633))

(assert (=> b!2517853 d!717545))

(assert (=> b!2517883 d!717599))

(declare-fun bm!156772 () Bool)

(declare-fun call!156777 () Bool)

(declare-fun c!401550 () Bool)

(assert (=> bm!156772 (= call!156777 (validRegex!3125 (ite c!401550 (regTwo!15511 lt!899119) (regOne!15510 lt!899119))))))

(declare-fun b!2518303 () Bool)

(declare-fun e!1595154 () Bool)

(declare-fun call!156779 () Bool)

(assert (=> b!2518303 (= e!1595154 call!156779)))

(declare-fun b!2518304 () Bool)

(declare-fun e!1595159 () Bool)

(declare-fun e!1595156 () Bool)

(assert (=> b!2518304 (= e!1595159 e!1595156)))

(declare-fun res!1064157 () Bool)

(assert (=> b!2518304 (= res!1064157 (not (nullable!2416 (reg!7828 lt!899119))))))

(assert (=> b!2518304 (=> (not res!1064157) (not e!1595156))))

(declare-fun b!2518305 () Bool)

(declare-fun e!1595157 () Bool)

(assert (=> b!2518305 (= e!1595157 e!1595159)))

(declare-fun c!401551 () Bool)

(assert (=> b!2518305 (= c!401551 ((_ is Star!7499) lt!899119))))

(declare-fun b!2518306 () Bool)

(declare-fun call!156778 () Bool)

(assert (=> b!2518306 (= e!1595156 call!156778)))

(declare-fun b!2518307 () Bool)

(declare-fun res!1064158 () Bool)

(declare-fun e!1595158 () Bool)

(assert (=> b!2518307 (=> (not res!1064158) (not e!1595158))))

(assert (=> b!2518307 (= res!1064158 call!156779)))

(declare-fun e!1595153 () Bool)

(assert (=> b!2518307 (= e!1595153 e!1595158)))

(declare-fun b!2518308 () Bool)

(assert (=> b!2518308 (= e!1595158 call!156777)))

(declare-fun bm!156773 () Bool)

(assert (=> bm!156773 (= call!156778 (validRegex!3125 (ite c!401551 (reg!7828 lt!899119) (ite c!401550 (regOne!15511 lt!899119) (regTwo!15510 lt!899119)))))))

(declare-fun b!2518310 () Bool)

(declare-fun res!1064155 () Bool)

(declare-fun e!1595155 () Bool)

(assert (=> b!2518310 (=> res!1064155 e!1595155)))

(assert (=> b!2518310 (= res!1064155 (not ((_ is Concat!12195) lt!899119)))))

(assert (=> b!2518310 (= e!1595153 e!1595155)))

(declare-fun b!2518311 () Bool)

(assert (=> b!2518311 (= e!1595159 e!1595153)))

(assert (=> b!2518311 (= c!401550 ((_ is Union!7499) lt!899119))))

(declare-fun bm!156774 () Bool)

(assert (=> bm!156774 (= call!156779 call!156778)))

(declare-fun b!2518309 () Bool)

(assert (=> b!2518309 (= e!1595155 e!1595154)))

(declare-fun res!1064156 () Bool)

(assert (=> b!2518309 (=> (not res!1064156) (not e!1595154))))

(assert (=> b!2518309 (= res!1064156 call!156777)))

(declare-fun d!717635 () Bool)

(declare-fun res!1064159 () Bool)

(assert (=> d!717635 (=> res!1064159 e!1595157)))

(assert (=> d!717635 (= res!1064159 ((_ is ElementMatch!7499) lt!899119))))

(assert (=> d!717635 (= (validRegex!3125 lt!899119) e!1595157)))

(assert (= (and d!717635 (not res!1064159)) b!2518305))

(assert (= (and b!2518305 c!401551) b!2518304))

(assert (= (and b!2518305 (not c!401551)) b!2518311))

(assert (= (and b!2518304 res!1064157) b!2518306))

(assert (= (and b!2518311 c!401550) b!2518307))

(assert (= (and b!2518311 (not c!401550)) b!2518310))

(assert (= (and b!2518307 res!1064158) b!2518308))

(assert (= (and b!2518310 (not res!1064155)) b!2518309))

(assert (= (and b!2518309 res!1064156) b!2518303))

(assert (= (or b!2518307 b!2518303) bm!156774))

(assert (= (or b!2518308 b!2518309) bm!156772))

(assert (= (or b!2518306 bm!156774) bm!156773))

(declare-fun m!2874061 () Bool)

(assert (=> bm!156772 m!2874061))

(declare-fun m!2874063 () Bool)

(assert (=> b!2518304 m!2874063))

(declare-fun m!2874065 () Bool)

(assert (=> bm!156773 m!2874065))

(assert (=> d!717505 d!717635))

(declare-fun bm!156778 () Bool)

(declare-fun call!156783 () Bool)

(declare-fun c!401554 () Bool)

(assert (=> bm!156778 (= call!156783 (validRegex!3125 (ite c!401554 (regTwo!15511 (reg!7828 r!27340)) (regOne!15510 (reg!7828 r!27340)))))))

(declare-fun b!2518321 () Bool)

(declare-fun e!1595168 () Bool)

(declare-fun call!156785 () Bool)

(assert (=> b!2518321 (= e!1595168 call!156785)))

(declare-fun b!2518322 () Bool)

(declare-fun e!1595173 () Bool)

(declare-fun e!1595170 () Bool)

(assert (=> b!2518322 (= e!1595173 e!1595170)))

(declare-fun res!1064167 () Bool)

(assert (=> b!2518322 (= res!1064167 (not (nullable!2416 (reg!7828 (reg!7828 r!27340)))))))

(assert (=> b!2518322 (=> (not res!1064167) (not e!1595170))))

(declare-fun b!2518323 () Bool)

(declare-fun e!1595171 () Bool)

(assert (=> b!2518323 (= e!1595171 e!1595173)))

(declare-fun c!401555 () Bool)

(assert (=> b!2518323 (= c!401555 ((_ is Star!7499) (reg!7828 r!27340)))))

(declare-fun b!2518324 () Bool)

(declare-fun call!156784 () Bool)

(assert (=> b!2518324 (= e!1595170 call!156784)))

(declare-fun b!2518325 () Bool)

(declare-fun res!1064168 () Bool)

(declare-fun e!1595172 () Bool)

(assert (=> b!2518325 (=> (not res!1064168) (not e!1595172))))

(assert (=> b!2518325 (= res!1064168 call!156785)))

(declare-fun e!1595167 () Bool)

(assert (=> b!2518325 (= e!1595167 e!1595172)))

(declare-fun b!2518326 () Bool)

(assert (=> b!2518326 (= e!1595172 call!156783)))

(declare-fun bm!156779 () Bool)

(assert (=> bm!156779 (= call!156784 (validRegex!3125 (ite c!401555 (reg!7828 (reg!7828 r!27340)) (ite c!401554 (regOne!15511 (reg!7828 r!27340)) (regTwo!15510 (reg!7828 r!27340))))))))

(declare-fun b!2518328 () Bool)

(declare-fun res!1064165 () Bool)

(declare-fun e!1595169 () Bool)

(assert (=> b!2518328 (=> res!1064165 e!1595169)))

(assert (=> b!2518328 (= res!1064165 (not ((_ is Concat!12195) (reg!7828 r!27340))))))

(assert (=> b!2518328 (= e!1595167 e!1595169)))

(declare-fun b!2518329 () Bool)

(assert (=> b!2518329 (= e!1595173 e!1595167)))

(assert (=> b!2518329 (= c!401554 ((_ is Union!7499) (reg!7828 r!27340)))))

(declare-fun bm!156780 () Bool)

(assert (=> bm!156780 (= call!156785 call!156784)))

(declare-fun b!2518327 () Bool)

(assert (=> b!2518327 (= e!1595169 e!1595168)))

(declare-fun res!1064166 () Bool)

(assert (=> b!2518327 (=> (not res!1064166) (not e!1595168))))

(assert (=> b!2518327 (= res!1064166 call!156783)))

(declare-fun d!717639 () Bool)

(declare-fun res!1064169 () Bool)

(assert (=> d!717639 (=> res!1064169 e!1595171)))

(assert (=> d!717639 (= res!1064169 ((_ is ElementMatch!7499) (reg!7828 r!27340)))))

(assert (=> d!717639 (= (validRegex!3125 (reg!7828 r!27340)) e!1595171)))

(assert (= (and d!717639 (not res!1064169)) b!2518323))

(assert (= (and b!2518323 c!401555) b!2518322))

(assert (= (and b!2518323 (not c!401555)) b!2518329))

(assert (= (and b!2518322 res!1064167) b!2518324))

(assert (= (and b!2518329 c!401554) b!2518325))

(assert (= (and b!2518329 (not c!401554)) b!2518328))

(assert (= (and b!2518325 res!1064168) b!2518326))

(assert (= (and b!2518328 (not res!1064165)) b!2518327))

(assert (= (and b!2518327 res!1064166) b!2518321))

(assert (= (or b!2518325 b!2518321) bm!156780))

(assert (= (or b!2518326 b!2518327) bm!156778))

(assert (= (or b!2518324 bm!156780) bm!156779))

(declare-fun m!2874073 () Bool)

(assert (=> bm!156778 m!2874073))

(declare-fun m!2874075 () Bool)

(assert (=> b!2518322 m!2874075))

(declare-fun m!2874077 () Bool)

(assert (=> bm!156779 m!2874077))

(assert (=> d!717505 d!717639))

(declare-fun d!717645 () Bool)

(assert (=> d!717645 (= (isEmpty!16921 Nil!29464) true)))

(assert (=> bm!156668 d!717645))

(declare-fun c!401557 () Bool)

(declare-fun call!156786 () Bool)

(declare-fun bm!156781 () Bool)

(assert (=> bm!156781 (= call!156786 (validRegex!3125 (ite c!401557 (regTwo!15511 (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340)))) (regOne!15510 (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340)))))))))

(declare-fun b!2518332 () Bool)

(declare-fun e!1595176 () Bool)

(declare-fun call!156788 () Bool)

(assert (=> b!2518332 (= e!1595176 call!156788)))

(declare-fun b!2518333 () Bool)

(declare-fun e!1595181 () Bool)

(declare-fun e!1595178 () Bool)

(assert (=> b!2518333 (= e!1595181 e!1595178)))

(declare-fun res!1064172 () Bool)

(assert (=> b!2518333 (= res!1064172 (not (nullable!2416 (reg!7828 (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340)))))))))

(assert (=> b!2518333 (=> (not res!1064172) (not e!1595178))))

(declare-fun b!2518334 () Bool)

(declare-fun e!1595179 () Bool)

(assert (=> b!2518334 (= e!1595179 e!1595181)))

(declare-fun c!401558 () Bool)

(assert (=> b!2518334 (= c!401558 ((_ is Star!7499) (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340)))))))

(declare-fun b!2518335 () Bool)

(declare-fun call!156787 () Bool)

(assert (=> b!2518335 (= e!1595178 call!156787)))

(declare-fun b!2518336 () Bool)

(declare-fun res!1064173 () Bool)

(declare-fun e!1595180 () Bool)

(assert (=> b!2518336 (=> (not res!1064173) (not e!1595180))))

(assert (=> b!2518336 (= res!1064173 call!156788)))

(declare-fun e!1595175 () Bool)

(assert (=> b!2518336 (= e!1595175 e!1595180)))

(declare-fun b!2518337 () Bool)

(assert (=> b!2518337 (= e!1595180 call!156786)))

(declare-fun bm!156782 () Bool)

(assert (=> bm!156782 (= call!156787 (validRegex!3125 (ite c!401558 (reg!7828 (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340)))) (ite c!401557 (regOne!15511 (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340)))) (regTwo!15510 (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340))))))))))

(declare-fun b!2518339 () Bool)

(declare-fun res!1064170 () Bool)

(declare-fun e!1595177 () Bool)

(assert (=> b!2518339 (=> res!1064170 e!1595177)))

(assert (=> b!2518339 (= res!1064170 (not ((_ is Concat!12195) (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340))))))))

(assert (=> b!2518339 (= e!1595175 e!1595177)))

(declare-fun b!2518340 () Bool)

(assert (=> b!2518340 (= e!1595181 e!1595175)))

(assert (=> b!2518340 (= c!401557 ((_ is Union!7499) (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340)))))))

(declare-fun bm!156783 () Bool)

(assert (=> bm!156783 (= call!156788 call!156787)))

(declare-fun b!2518338 () Bool)

(assert (=> b!2518338 (= e!1595177 e!1595176)))

(declare-fun res!1064171 () Bool)

(assert (=> b!2518338 (=> (not res!1064171) (not e!1595176))))

(assert (=> b!2518338 (= res!1064171 call!156786)))

(declare-fun d!717649 () Bool)

(declare-fun res!1064174 () Bool)

(assert (=> d!717649 (=> res!1064174 e!1595179)))

(assert (=> d!717649 (= res!1064174 ((_ is ElementMatch!7499) (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340)))))))

(assert (=> d!717649 (= (validRegex!3125 (ite c!401461 (reg!7828 r!27340) (ite c!401460 (regOne!15511 r!27340) (regTwo!15510 r!27340)))) e!1595179)))

(assert (= (and d!717649 (not res!1064174)) b!2518334))

(assert (= (and b!2518334 c!401558) b!2518333))

(assert (= (and b!2518334 (not c!401558)) b!2518340))

(assert (= (and b!2518333 res!1064172) b!2518335))

(assert (= (and b!2518340 c!401557) b!2518336))

(assert (= (and b!2518340 (not c!401557)) b!2518339))

(assert (= (and b!2518336 res!1064173) b!2518337))

(assert (= (and b!2518339 (not res!1064170)) b!2518338))

(assert (= (and b!2518338 res!1064171) b!2518332))

(assert (= (or b!2518336 b!2518332) bm!156783))

(assert (= (or b!2518337 b!2518338) bm!156781))

(assert (= (or b!2518335 bm!156783) bm!156782))

(declare-fun m!2874087 () Bool)

(assert (=> bm!156781 m!2874087))

(declare-fun m!2874089 () Bool)

(assert (=> b!2518333 m!2874089))

(declare-fun m!2874091 () Bool)

(assert (=> bm!156782 m!2874091))

(assert (=> bm!156681 d!717649))

(assert (=> b!2517851 d!717509))

(declare-fun b!2518351 () Bool)

(declare-fun e!1595188 () Bool)

(declare-fun e!1595192 () Bool)

(assert (=> b!2518351 (= e!1595188 e!1595192)))

(declare-fun res!1064179 () Bool)

(declare-fun call!156793 () Bool)

(assert (=> b!2518351 (= res!1064179 call!156793)))

(assert (=> b!2518351 (=> res!1064179 e!1595192)))

(declare-fun b!2518352 () Bool)

(declare-fun e!1595187 () Bool)

(declare-fun e!1595191 () Bool)

(assert (=> b!2518352 (= e!1595187 e!1595191)))

(declare-fun res!1064178 () Bool)

(assert (=> b!2518352 (=> res!1064178 e!1595191)))

(assert (=> b!2518352 (= res!1064178 ((_ is Star!7499) lt!899102))))

(declare-fun bm!156788 () Bool)

(declare-fun call!156794 () Bool)

(declare-fun c!401564 () Bool)

(assert (=> bm!156788 (= call!156794 (nullable!2416 (ite c!401564 (regTwo!15511 lt!899102) (regOne!15510 lt!899102))))))

(declare-fun d!717653 () Bool)

(declare-fun res!1064176 () Bool)

(declare-fun e!1595189 () Bool)

(assert (=> d!717653 (=> res!1064176 e!1595189)))

(assert (=> d!717653 (= res!1064176 ((_ is EmptyExpr!7499) lt!899102))))

(assert (=> d!717653 (= (nullableFct!658 lt!899102) e!1595189)))

(declare-fun b!2518353 () Bool)

(assert (=> b!2518353 (= e!1595189 e!1595187)))

(declare-fun res!1064177 () Bool)

(assert (=> b!2518353 (=> (not res!1064177) (not e!1595187))))

(assert (=> b!2518353 (= res!1064177 (and (not ((_ is EmptyLang!7499) lt!899102)) (not ((_ is ElementMatch!7499) lt!899102))))))

(declare-fun b!2518354 () Bool)

(declare-fun e!1595190 () Bool)

(assert (=> b!2518354 (= e!1595190 call!156793)))

(declare-fun bm!156789 () Bool)

(assert (=> bm!156789 (= call!156793 (nullable!2416 (ite c!401564 (regOne!15511 lt!899102) (regTwo!15510 lt!899102))))))

(declare-fun b!2518355 () Bool)

(assert (=> b!2518355 (= e!1595191 e!1595188)))

(assert (=> b!2518355 (= c!401564 ((_ is Union!7499) lt!899102))))

(declare-fun b!2518356 () Bool)

(assert (=> b!2518356 (= e!1595192 call!156794)))

(declare-fun b!2518357 () Bool)

(assert (=> b!2518357 (= e!1595188 e!1595190)))

(declare-fun res!1064175 () Bool)

(assert (=> b!2518357 (= res!1064175 call!156794)))

(assert (=> b!2518357 (=> (not res!1064175) (not e!1595190))))

(assert (= (and d!717653 (not res!1064176)) b!2518353))

(assert (= (and b!2518353 res!1064177) b!2518352))

(assert (= (and b!2518352 (not res!1064178)) b!2518355))

(assert (= (and b!2518355 c!401564) b!2518351))

(assert (= (and b!2518355 (not c!401564)) b!2518357))

(assert (= (and b!2518351 (not res!1064179)) b!2518356))

(assert (= (and b!2518357 res!1064175) b!2518354))

(assert (= (or b!2518356 b!2518357) bm!156788))

(assert (= (or b!2518351 b!2518354) bm!156789))

(declare-fun m!2874103 () Bool)

(assert (=> bm!156788 m!2874103))

(declare-fun m!2874105 () Bool)

(assert (=> bm!156789 m!2874105))

(assert (=> d!717509 d!717653))

(assert (=> b!2517852 d!717543))

(declare-fun b!2518368 () Bool)

(declare-fun res!1064185 () Bool)

(declare-fun e!1595202 () Bool)

(assert (=> b!2518368 (=> res!1064185 e!1595202)))

(assert (=> b!2518368 (= res!1064185 (not (isEmpty!16921 (tail!4024 (tail!4024 tl!4068)))))))

(declare-fun d!717659 () Bool)

(declare-fun e!1595204 () Bool)

(assert (=> d!717659 e!1595204))

(declare-fun c!401571 () Bool)

(assert (=> d!717659 (= c!401571 ((_ is EmptyExpr!7499) (derivativeStep!2068 lt!899103 (head!5748 tl!4068))))))

(declare-fun lt!899155 () Bool)

(declare-fun e!1595199 () Bool)

(assert (=> d!717659 (= lt!899155 e!1595199)))

(declare-fun c!401570 () Bool)

(assert (=> d!717659 (= c!401570 (isEmpty!16921 (tail!4024 tl!4068)))))

(assert (=> d!717659 (validRegex!3125 (derivativeStep!2068 lt!899103 (head!5748 tl!4068)))))

(assert (=> d!717659 (= (matchR!3486 (derivativeStep!2068 lt!899103 (head!5748 tl!4068)) (tail!4024 tl!4068)) lt!899155)))

(declare-fun b!2518369 () Bool)

(declare-fun e!1595198 () Bool)

(assert (=> b!2518369 (= e!1595198 (= (head!5748 (tail!4024 tl!4068)) (c!401377 (derivativeStep!2068 lt!899103 (head!5748 tl!4068)))))))

(declare-fun b!2518370 () Bool)

(declare-fun res!1064180 () Bool)

(assert (=> b!2518370 (=> (not res!1064180) (not e!1595198))))

(declare-fun call!156799 () Bool)

(assert (=> b!2518370 (= res!1064180 (not call!156799))))

(declare-fun b!2518371 () Bool)

(declare-fun res!1064183 () Bool)

(declare-fun e!1595200 () Bool)

(assert (=> b!2518371 (=> res!1064183 e!1595200)))

(assert (=> b!2518371 (= res!1064183 e!1595198)))

(declare-fun res!1064181 () Bool)

(assert (=> b!2518371 (=> (not res!1064181) (not e!1595198))))

(assert (=> b!2518371 (= res!1064181 lt!899155)))

(declare-fun b!2518372 () Bool)

(declare-fun res!1064187 () Bool)

(assert (=> b!2518372 (=> res!1064187 e!1595200)))

(assert (=> b!2518372 (= res!1064187 (not ((_ is ElementMatch!7499) (derivativeStep!2068 lt!899103 (head!5748 tl!4068)))))))

(declare-fun e!1595203 () Bool)

(assert (=> b!2518372 (= e!1595203 e!1595200)))

(declare-fun b!2518373 () Bool)

(assert (=> b!2518373 (= e!1595199 (matchR!3486 (derivativeStep!2068 (derivativeStep!2068 lt!899103 (head!5748 tl!4068)) (head!5748 (tail!4024 tl!4068))) (tail!4024 (tail!4024 tl!4068))))))

(declare-fun b!2518374 () Bool)

(declare-fun e!1595201 () Bool)

(assert (=> b!2518374 (= e!1595201 e!1595202)))

(declare-fun res!1064184 () Bool)

(assert (=> b!2518374 (=> res!1064184 e!1595202)))

(assert (=> b!2518374 (= res!1064184 call!156799)))

(declare-fun b!2518375 () Bool)

(assert (=> b!2518375 (= e!1595204 e!1595203)))

(declare-fun c!401572 () Bool)

(assert (=> b!2518375 (= c!401572 ((_ is EmptyLang!7499) (derivativeStep!2068 lt!899103 (head!5748 tl!4068))))))

(declare-fun b!2518376 () Bool)

(assert (=> b!2518376 (= e!1595204 (= lt!899155 call!156799))))

(declare-fun b!2518377 () Bool)

(assert (=> b!2518377 (= e!1595203 (not lt!899155))))

(declare-fun b!2518378 () Bool)

(assert (=> b!2518378 (= e!1595200 e!1595201)))

(declare-fun res!1064186 () Bool)

(assert (=> b!2518378 (=> (not res!1064186) (not e!1595201))))

(assert (=> b!2518378 (= res!1064186 (not lt!899155))))

(declare-fun b!2518379 () Bool)

(assert (=> b!2518379 (= e!1595199 (nullable!2416 (derivativeStep!2068 lt!899103 (head!5748 tl!4068))))))

(declare-fun bm!156794 () Bool)

(assert (=> bm!156794 (= call!156799 (isEmpty!16921 (tail!4024 tl!4068)))))

(declare-fun b!2518380 () Bool)

(assert (=> b!2518380 (= e!1595202 (not (= (head!5748 (tail!4024 tl!4068)) (c!401377 (derivativeStep!2068 lt!899103 (head!5748 tl!4068))))))))

(declare-fun b!2518381 () Bool)

(declare-fun res!1064182 () Bool)

(assert (=> b!2518381 (=> (not res!1064182) (not e!1595198))))

(assert (=> b!2518381 (= res!1064182 (isEmpty!16921 (tail!4024 (tail!4024 tl!4068))))))

(assert (= (and d!717659 c!401570) b!2518379))

(assert (= (and d!717659 (not c!401570)) b!2518373))

(assert (= (and d!717659 c!401571) b!2518376))

(assert (= (and d!717659 (not c!401571)) b!2518375))

(assert (= (and b!2518375 c!401572) b!2518377))

(assert (= (and b!2518375 (not c!401572)) b!2518372))

(assert (= (and b!2518372 (not res!1064187)) b!2518371))

(assert (= (and b!2518371 res!1064181) b!2518370))

(assert (= (and b!2518370 res!1064180) b!2518381))

(assert (= (and b!2518381 res!1064182) b!2518369))

(assert (= (and b!2518371 (not res!1064183)) b!2518378))

(assert (= (and b!2518378 res!1064186) b!2518374))

(assert (= (and b!2518374 (not res!1064184)) b!2518368))

(assert (= (and b!2518368 (not res!1064185)) b!2518380))

(assert (= (or b!2518376 b!2518370 b!2518374) bm!156794))

(assert (=> b!2518381 m!2873781))

(declare-fun m!2874117 () Bool)

(assert (=> b!2518381 m!2874117))

(assert (=> b!2518381 m!2874117))

(declare-fun m!2874119 () Bool)

(assert (=> b!2518381 m!2874119))

(assert (=> b!2518379 m!2873789))

(declare-fun m!2874121 () Bool)

(assert (=> b!2518379 m!2874121))

(assert (=> b!2518373 m!2873781))

(declare-fun m!2874123 () Bool)

(assert (=> b!2518373 m!2874123))

(assert (=> b!2518373 m!2873789))

(assert (=> b!2518373 m!2874123))

(declare-fun m!2874125 () Bool)

(assert (=> b!2518373 m!2874125))

(assert (=> b!2518373 m!2873781))

(assert (=> b!2518373 m!2874117))

(assert (=> b!2518373 m!2874125))

(assert (=> b!2518373 m!2874117))

(declare-fun m!2874127 () Bool)

(assert (=> b!2518373 m!2874127))

(assert (=> b!2518368 m!2873781))

(assert (=> b!2518368 m!2874117))

(assert (=> b!2518368 m!2874117))

(assert (=> b!2518368 m!2874119))

(assert (=> b!2518369 m!2873781))

(assert (=> b!2518369 m!2874123))

(assert (=> d!717659 m!2873781))

(assert (=> d!717659 m!2873783))

(assert (=> d!717659 m!2873789))

(declare-fun m!2874129 () Bool)

(assert (=> d!717659 m!2874129))

(assert (=> b!2518380 m!2873781))

(assert (=> b!2518380 m!2874123))

(assert (=> bm!156794 m!2873781))

(assert (=> bm!156794 m!2873783))

(assert (=> b!2517887 d!717659))

(declare-fun b!2518382 () Bool)

(declare-fun e!1595207 () Regex!7499)

(declare-fun e!1595208 () Regex!7499)

(assert (=> b!2518382 (= e!1595207 e!1595208)))

(declare-fun c!401578 () Bool)

(assert (=> b!2518382 (= c!401578 ((_ is ElementMatch!7499) lt!899103))))

(declare-fun b!2518383 () Bool)

(declare-fun e!1595214 () Regex!7499)

(declare-fun call!156800 () Regex!7499)

(declare-fun call!156806 () Regex!7499)

(assert (=> b!2518383 (= e!1595214 (Union!7499 call!156800 call!156806))))

(declare-fun b!2518385 () Bool)

(declare-fun e!1595210 () Regex!7499)

(declare-fun call!156804 () Regex!7499)

(assert (=> b!2518385 (= e!1595210 (Concat!12195 call!156804 lt!899103))))

(declare-fun d!717663 () Bool)

(declare-fun lt!899156 () Regex!7499)

(assert (=> d!717663 (validRegex!3125 lt!899156)))

(assert (=> d!717663 (= lt!899156 e!1595207)))

(declare-fun c!401574 () Bool)

(assert (=> d!717663 (= c!401574 (or ((_ is EmptyExpr!7499) lt!899103) ((_ is EmptyLang!7499) lt!899103)))))

(assert (=> d!717663 (validRegex!3125 lt!899103)))

(assert (=> d!717663 (= (derivativeStep!2068 lt!899103 (head!5748 tl!4068)) lt!899156)))

(declare-fun b!2518387 () Bool)

(declare-fun c!401576 () Bool)

(assert (=> b!2518387 (= c!401576 (nullable!2416 (regOne!15510 lt!899103)))))

(declare-fun e!1595212 () Regex!7499)

(assert (=> b!2518387 (= e!1595210 e!1595212)))

(declare-fun bm!156795 () Bool)

(assert (=> bm!156795 (= call!156804 call!156800)))

(declare-fun b!2518390 () Bool)

(declare-fun call!156802 () Regex!7499)

(assert (=> b!2518390 (= e!1595212 (Union!7499 (Concat!12195 call!156802 (regTwo!15510 lt!899103)) EmptyLang!7499))))

(declare-fun b!2518392 () Bool)

(assert (=> b!2518392 (= e!1595208 (ite (= (head!5748 tl!4068) (c!401377 lt!899103)) EmptyExpr!7499 EmptyLang!7499))))

(declare-fun bm!156797 () Bool)

(assert (=> bm!156797 (= call!156802 call!156804)))

(declare-fun b!2518394 () Bool)

(assert (=> b!2518394 (= e!1595207 EmptyLang!7499)))

(declare-fun b!2518395 () Bool)

(assert (=> b!2518395 (= e!1595214 e!1595210)))

(declare-fun c!401579 () Bool)

(assert (=> b!2518395 (= c!401579 ((_ is Star!7499) lt!899103))))

(declare-fun c!401575 () Bool)

(declare-fun bm!156799 () Bool)

(assert (=> bm!156799 (= call!156800 (derivativeStep!2068 (ite c!401575 (regOne!15511 lt!899103) (ite c!401579 (reg!7828 lt!899103) (regOne!15510 lt!899103))) (head!5748 tl!4068)))))

(declare-fun bm!156801 () Bool)

(assert (=> bm!156801 (= call!156806 (derivativeStep!2068 (ite c!401575 (regTwo!15511 lt!899103) (regTwo!15510 lt!899103)) (head!5748 tl!4068)))))

(declare-fun b!2518398 () Bool)

(assert (=> b!2518398 (= e!1595212 (Union!7499 (Concat!12195 call!156802 (regTwo!15510 lt!899103)) call!156806))))

(declare-fun b!2518400 () Bool)

(assert (=> b!2518400 (= c!401575 ((_ is Union!7499) lt!899103))))

(assert (=> b!2518400 (= e!1595208 e!1595214)))

(assert (= (and d!717663 c!401574) b!2518394))

(assert (= (and d!717663 (not c!401574)) b!2518382))

(assert (= (and b!2518382 c!401578) b!2518392))

(assert (= (and b!2518382 (not c!401578)) b!2518400))

(assert (= (and b!2518400 c!401575) b!2518383))

(assert (= (and b!2518400 (not c!401575)) b!2518395))

(assert (= (and b!2518395 c!401579) b!2518385))

(assert (= (and b!2518395 (not c!401579)) b!2518387))

(assert (= (and b!2518387 c!401576) b!2518398))

(assert (= (and b!2518387 (not c!401576)) b!2518390))

(assert (= (or b!2518398 b!2518390) bm!156797))

(assert (= (or b!2518385 bm!156797) bm!156795))

(assert (= (or b!2518383 b!2518398) bm!156801))

(assert (= (or b!2518383 bm!156795) bm!156799))

(declare-fun m!2874135 () Bool)

(assert (=> d!717663 m!2874135))

(assert (=> d!717663 m!2873739))

(assert (=> b!2518387 m!2873883))

(assert (=> bm!156799 m!2873787))

(declare-fun m!2874139 () Bool)

(assert (=> bm!156799 m!2874139))

(assert (=> bm!156801 m!2873787))

(declare-fun m!2874141 () Bool)

(assert (=> bm!156801 m!2874141))

(assert (=> b!2517887 d!717663))

(assert (=> b!2517887 d!717599))

(assert (=> b!2517887 d!717629))

(assert (=> b!2517840 d!717633))

(assert (=> b!2517840 d!717545))

(assert (=> d!717517 d!717645))

(declare-fun bm!156805 () Bool)

(declare-fun call!156810 () Bool)

(declare-fun c!401582 () Bool)

(assert (=> bm!156805 (= call!156810 (validRegex!3125 (ite c!401582 (regTwo!15511 lt!899102) (regOne!15510 lt!899102))))))

(declare-fun b!2518410 () Bool)

(declare-fun e!1595225 () Bool)

(declare-fun call!156812 () Bool)

(assert (=> b!2518410 (= e!1595225 call!156812)))

(declare-fun b!2518411 () Bool)

(declare-fun e!1595230 () Bool)

(declare-fun e!1595227 () Bool)

(assert (=> b!2518411 (= e!1595230 e!1595227)))

(declare-fun res!1064200 () Bool)

(assert (=> b!2518411 (= res!1064200 (not (nullable!2416 (reg!7828 lt!899102))))))

(assert (=> b!2518411 (=> (not res!1064200) (not e!1595227))))

(declare-fun b!2518412 () Bool)

(declare-fun e!1595228 () Bool)

(assert (=> b!2518412 (= e!1595228 e!1595230)))

(declare-fun c!401583 () Bool)

(assert (=> b!2518412 (= c!401583 ((_ is Star!7499) lt!899102))))

(declare-fun b!2518413 () Bool)

(declare-fun call!156811 () Bool)

(assert (=> b!2518413 (= e!1595227 call!156811)))

(declare-fun b!2518414 () Bool)

(declare-fun res!1064201 () Bool)

(declare-fun e!1595229 () Bool)

(assert (=> b!2518414 (=> (not res!1064201) (not e!1595229))))

(assert (=> b!2518414 (= res!1064201 call!156812)))

(declare-fun e!1595224 () Bool)

(assert (=> b!2518414 (= e!1595224 e!1595229)))

(declare-fun b!2518415 () Bool)

(assert (=> b!2518415 (= e!1595229 call!156810)))

(declare-fun bm!156806 () Bool)

(assert (=> bm!156806 (= call!156811 (validRegex!3125 (ite c!401583 (reg!7828 lt!899102) (ite c!401582 (regOne!15511 lt!899102) (regTwo!15510 lt!899102)))))))

(declare-fun b!2518417 () Bool)

(declare-fun res!1064198 () Bool)

(declare-fun e!1595226 () Bool)

(assert (=> b!2518417 (=> res!1064198 e!1595226)))

(assert (=> b!2518417 (= res!1064198 (not ((_ is Concat!12195) lt!899102)))))

(assert (=> b!2518417 (= e!1595224 e!1595226)))

(declare-fun b!2518418 () Bool)

(assert (=> b!2518418 (= e!1595230 e!1595224)))

(assert (=> b!2518418 (= c!401582 ((_ is Union!7499) lt!899102))))

(declare-fun bm!156807 () Bool)

(assert (=> bm!156807 (= call!156812 call!156811)))

(declare-fun b!2518416 () Bool)

(assert (=> b!2518416 (= e!1595226 e!1595225)))

(declare-fun res!1064199 () Bool)

(assert (=> b!2518416 (=> (not res!1064199) (not e!1595225))))

(assert (=> b!2518416 (= res!1064199 call!156810)))

(declare-fun d!717669 () Bool)

(declare-fun res!1064202 () Bool)

(assert (=> d!717669 (=> res!1064202 e!1595228)))

(assert (=> d!717669 (= res!1064202 ((_ is ElementMatch!7499) lt!899102))))

(assert (=> d!717669 (= (validRegex!3125 lt!899102) e!1595228)))

(assert (= (and d!717669 (not res!1064202)) b!2518412))

(assert (= (and b!2518412 c!401583) b!2518411))

(assert (= (and b!2518412 (not c!401583)) b!2518418))

(assert (= (and b!2518411 res!1064200) b!2518413))

(assert (= (and b!2518418 c!401582) b!2518414))

(assert (= (and b!2518418 (not c!401582)) b!2518417))

(assert (= (and b!2518414 res!1064201) b!2518415))

(assert (= (and b!2518417 (not res!1064198)) b!2518416))

(assert (= (and b!2518416 res!1064199) b!2518410))

(assert (= (or b!2518414 b!2518410) bm!156807))

(assert (= (or b!2518415 b!2518416) bm!156805))

(assert (= (or b!2518413 bm!156807) bm!156806))

(declare-fun m!2874145 () Bool)

(assert (=> bm!156805 m!2874145))

(declare-fun m!2874147 () Bool)

(assert (=> b!2518411 m!2874147))

(declare-fun m!2874151 () Bool)

(assert (=> bm!156806 m!2874151))

(assert (=> d!717517 d!717669))

(declare-fun d!717671 () Bool)

(assert (=> d!717671 (= (nullable!2416 (regOne!15510 (reg!7828 r!27340))) (nullableFct!658 (regOne!15510 (reg!7828 r!27340))))))

(declare-fun bs!468935 () Bool)

(assert (= bs!468935 d!717671))

(declare-fun m!2874155 () Bool)

(assert (=> bs!468935 m!2874155))

(assert (=> b!2517756 d!717671))

(declare-fun bm!156811 () Bool)

(declare-fun call!156816 () Bool)

(declare-fun c!401586 () Bool)

(assert (=> bm!156811 (= call!156816 (validRegex!3125 (ite c!401586 (regTwo!15511 lt!899121) (regOne!15510 lt!899121))))))

(declare-fun b!2518428 () Bool)

(declare-fun e!1595239 () Bool)

(declare-fun call!156818 () Bool)

(assert (=> b!2518428 (= e!1595239 call!156818)))

(declare-fun b!2518429 () Bool)

(declare-fun e!1595244 () Bool)

(declare-fun e!1595241 () Bool)

(assert (=> b!2518429 (= e!1595244 e!1595241)))

(declare-fun res!1064210 () Bool)

(assert (=> b!2518429 (= res!1064210 (not (nullable!2416 (reg!7828 lt!899121))))))

(assert (=> b!2518429 (=> (not res!1064210) (not e!1595241))))

(declare-fun b!2518430 () Bool)

(declare-fun e!1595242 () Bool)

(assert (=> b!2518430 (= e!1595242 e!1595244)))

(declare-fun c!401587 () Bool)

(assert (=> b!2518430 (= c!401587 ((_ is Star!7499) lt!899121))))

(declare-fun b!2518431 () Bool)

(declare-fun call!156817 () Bool)

(assert (=> b!2518431 (= e!1595241 call!156817)))

(declare-fun b!2518432 () Bool)

(declare-fun res!1064211 () Bool)

(declare-fun e!1595243 () Bool)

(assert (=> b!2518432 (=> (not res!1064211) (not e!1595243))))

(assert (=> b!2518432 (= res!1064211 call!156818)))

(declare-fun e!1595238 () Bool)

(assert (=> b!2518432 (= e!1595238 e!1595243)))

(declare-fun b!2518433 () Bool)

(assert (=> b!2518433 (= e!1595243 call!156816)))

(declare-fun bm!156812 () Bool)

(assert (=> bm!156812 (= call!156817 (validRegex!3125 (ite c!401587 (reg!7828 lt!899121) (ite c!401586 (regOne!15511 lt!899121) (regTwo!15510 lt!899121)))))))

(declare-fun b!2518435 () Bool)

(declare-fun res!1064208 () Bool)

(declare-fun e!1595240 () Bool)

(assert (=> b!2518435 (=> res!1064208 e!1595240)))

(assert (=> b!2518435 (= res!1064208 (not ((_ is Concat!12195) lt!899121)))))

(assert (=> b!2518435 (= e!1595238 e!1595240)))

(declare-fun b!2518436 () Bool)

(assert (=> b!2518436 (= e!1595244 e!1595238)))

(assert (=> b!2518436 (= c!401586 ((_ is Union!7499) lt!899121))))

(declare-fun bm!156813 () Bool)

(assert (=> bm!156813 (= call!156818 call!156817)))

(declare-fun b!2518434 () Bool)

(assert (=> b!2518434 (= e!1595240 e!1595239)))

(declare-fun res!1064209 () Bool)

(assert (=> b!2518434 (=> (not res!1064209) (not e!1595239))))

(assert (=> b!2518434 (= res!1064209 call!156816)))

(declare-fun d!717675 () Bool)

(declare-fun res!1064212 () Bool)

(assert (=> d!717675 (=> res!1064212 e!1595242)))

(assert (=> d!717675 (= res!1064212 ((_ is ElementMatch!7499) lt!899121))))

(assert (=> d!717675 (= (validRegex!3125 lt!899121) e!1595242)))

(assert (= (and d!717675 (not res!1064212)) b!2518430))

(assert (= (and b!2518430 c!401587) b!2518429))

(assert (= (and b!2518430 (not c!401587)) b!2518436))

(assert (= (and b!2518429 res!1064210) b!2518431))

(assert (= (and b!2518436 c!401586) b!2518432))

(assert (= (and b!2518436 (not c!401586)) b!2518435))

(assert (= (and b!2518432 res!1064211) b!2518433))

(assert (= (and b!2518435 (not res!1064208)) b!2518434))

(assert (= (and b!2518434 res!1064209) b!2518428))

(assert (= (or b!2518432 b!2518428) bm!156813))

(assert (= (or b!2518433 b!2518434) bm!156811))

(assert (= (or b!2518431 bm!156813) bm!156812))

(declare-fun m!2874159 () Bool)

(assert (=> bm!156811 m!2874159))

(declare-fun m!2874161 () Bool)

(assert (=> b!2518429 m!2874161))

(declare-fun m!2874164 () Bool)

(assert (=> bm!156812 m!2874164))

(assert (=> d!717511 d!717675))

(assert (=> d!717511 d!717611))

(declare-fun e!1595245 () Bool)

(assert (=> b!2517997 (= tp!804830 e!1595245)))

(declare-fun b!2518437 () Bool)

(assert (=> b!2518437 (= e!1595245 tp_is_empty!12853)))

(declare-fun b!2518439 () Bool)

(declare-fun tp!804856 () Bool)

(assert (=> b!2518439 (= e!1595245 tp!804856)))

(declare-fun b!2518438 () Bool)

(declare-fun tp!804858 () Bool)

(declare-fun tp!804855 () Bool)

(assert (=> b!2518438 (= e!1595245 (and tp!804858 tp!804855))))

(declare-fun b!2518440 () Bool)

(declare-fun tp!804859 () Bool)

(declare-fun tp!804857 () Bool)

(assert (=> b!2518440 (= e!1595245 (and tp!804859 tp!804857))))

(assert (= (and b!2517997 ((_ is ElementMatch!7499) (regOne!15510 (reg!7828 r!27340)))) b!2518437))

(assert (= (and b!2517997 ((_ is Concat!12195) (regOne!15510 (reg!7828 r!27340)))) b!2518438))

(assert (= (and b!2517997 ((_ is Star!7499) (regOne!15510 (reg!7828 r!27340)))) b!2518439))

(assert (= (and b!2517997 ((_ is Union!7499) (regOne!15510 (reg!7828 r!27340)))) b!2518440))

(declare-fun e!1595246 () Bool)

(assert (=> b!2517997 (= tp!804827 e!1595246)))

(declare-fun b!2518441 () Bool)

(assert (=> b!2518441 (= e!1595246 tp_is_empty!12853)))

(declare-fun b!2518443 () Bool)

(declare-fun tp!804861 () Bool)

(assert (=> b!2518443 (= e!1595246 tp!804861)))

(declare-fun b!2518442 () Bool)

(declare-fun tp!804863 () Bool)

(declare-fun tp!804860 () Bool)

(assert (=> b!2518442 (= e!1595246 (and tp!804863 tp!804860))))

(declare-fun b!2518444 () Bool)

(declare-fun tp!804864 () Bool)

(declare-fun tp!804862 () Bool)

(assert (=> b!2518444 (= e!1595246 (and tp!804864 tp!804862))))

(assert (= (and b!2517997 ((_ is ElementMatch!7499) (regTwo!15510 (reg!7828 r!27340)))) b!2518441))

(assert (= (and b!2517997 ((_ is Concat!12195) (regTwo!15510 (reg!7828 r!27340)))) b!2518442))

(assert (= (and b!2517997 ((_ is Star!7499) (regTwo!15510 (reg!7828 r!27340)))) b!2518443))

(assert (= (and b!2517997 ((_ is Union!7499) (regTwo!15510 (reg!7828 r!27340)))) b!2518444))

(declare-fun e!1595254 () Bool)

(assert (=> b!2518018 (= tp!804853 e!1595254)))

(declare-fun b!2518459 () Bool)

(assert (=> b!2518459 (= e!1595254 tp_is_empty!12853)))

(declare-fun b!2518461 () Bool)

(declare-fun tp!804866 () Bool)

(assert (=> b!2518461 (= e!1595254 tp!804866)))

(declare-fun b!2518460 () Bool)

(declare-fun tp!804868 () Bool)

(declare-fun tp!804865 () Bool)

(assert (=> b!2518460 (= e!1595254 (and tp!804868 tp!804865))))

(declare-fun b!2518462 () Bool)

(declare-fun tp!804869 () Bool)

(declare-fun tp!804867 () Bool)

(assert (=> b!2518462 (= e!1595254 (and tp!804869 tp!804867))))

(assert (= (and b!2518018 ((_ is ElementMatch!7499) (regOne!15510 (regTwo!15511 r!27340)))) b!2518459))

(assert (= (and b!2518018 ((_ is Concat!12195) (regOne!15510 (regTwo!15511 r!27340)))) b!2518460))

(assert (= (and b!2518018 ((_ is Star!7499) (regOne!15510 (regTwo!15511 r!27340)))) b!2518461))

(assert (= (and b!2518018 ((_ is Union!7499) (regOne!15510 (regTwo!15511 r!27340)))) b!2518462))

(declare-fun e!1595255 () Bool)

(assert (=> b!2518018 (= tp!804850 e!1595255)))

(declare-fun b!2518463 () Bool)

(assert (=> b!2518463 (= e!1595255 tp_is_empty!12853)))

(declare-fun b!2518465 () Bool)

(declare-fun tp!804871 () Bool)

(assert (=> b!2518465 (= e!1595255 tp!804871)))

(declare-fun b!2518464 () Bool)

(declare-fun tp!804873 () Bool)

(declare-fun tp!804870 () Bool)

(assert (=> b!2518464 (= e!1595255 (and tp!804873 tp!804870))))

(declare-fun b!2518466 () Bool)

(declare-fun tp!804874 () Bool)

(declare-fun tp!804872 () Bool)

(assert (=> b!2518466 (= e!1595255 (and tp!804874 tp!804872))))

(assert (= (and b!2518018 ((_ is ElementMatch!7499) (regTwo!15510 (regTwo!15511 r!27340)))) b!2518463))

(assert (= (and b!2518018 ((_ is Concat!12195) (regTwo!15510 (regTwo!15511 r!27340)))) b!2518464))

(assert (= (and b!2518018 ((_ is Star!7499) (regTwo!15510 (regTwo!15511 r!27340)))) b!2518465))

(assert (= (and b!2518018 ((_ is Union!7499) (regTwo!15510 (regTwo!15511 r!27340)))) b!2518466))

(declare-fun e!1595256 () Bool)

(assert (=> b!2517998 (= tp!804828 e!1595256)))

(declare-fun b!2518467 () Bool)

(assert (=> b!2518467 (= e!1595256 tp_is_empty!12853)))

(declare-fun b!2518469 () Bool)

(declare-fun tp!804876 () Bool)

(assert (=> b!2518469 (= e!1595256 tp!804876)))

(declare-fun b!2518468 () Bool)

(declare-fun tp!804878 () Bool)

(declare-fun tp!804875 () Bool)

(assert (=> b!2518468 (= e!1595256 (and tp!804878 tp!804875))))

(declare-fun b!2518470 () Bool)

(declare-fun tp!804879 () Bool)

(declare-fun tp!804877 () Bool)

(assert (=> b!2518470 (= e!1595256 (and tp!804879 tp!804877))))

(assert (= (and b!2517998 ((_ is ElementMatch!7499) (reg!7828 (reg!7828 r!27340)))) b!2518467))

(assert (= (and b!2517998 ((_ is Concat!12195) (reg!7828 (reg!7828 r!27340)))) b!2518468))

(assert (= (and b!2517998 ((_ is Star!7499) (reg!7828 (reg!7828 r!27340)))) b!2518469))

(assert (= (and b!2517998 ((_ is Union!7499) (reg!7828 (reg!7828 r!27340)))) b!2518470))

(declare-fun e!1595257 () Bool)

(assert (=> b!2518008 (= tp!804839 e!1595257)))

(declare-fun b!2518471 () Bool)

(assert (=> b!2518471 (= e!1595257 tp_is_empty!12853)))

(declare-fun b!2518473 () Bool)

(declare-fun tp!804881 () Bool)

(assert (=> b!2518473 (= e!1595257 tp!804881)))

(declare-fun b!2518472 () Bool)

(declare-fun tp!804883 () Bool)

(declare-fun tp!804880 () Bool)

(assert (=> b!2518472 (= e!1595257 (and tp!804883 tp!804880))))

(declare-fun b!2518474 () Bool)

(declare-fun tp!804884 () Bool)

(declare-fun tp!804882 () Bool)

(assert (=> b!2518474 (= e!1595257 (and tp!804884 tp!804882))))

(assert (= (and b!2518008 ((_ is ElementMatch!7499) (regOne!15511 (regOne!15510 r!27340)))) b!2518471))

(assert (= (and b!2518008 ((_ is Concat!12195) (regOne!15511 (regOne!15510 r!27340)))) b!2518472))

(assert (= (and b!2518008 ((_ is Star!7499) (regOne!15511 (regOne!15510 r!27340)))) b!2518473))

(assert (= (and b!2518008 ((_ is Union!7499) (regOne!15511 (regOne!15510 r!27340)))) b!2518474))

(declare-fun e!1595258 () Bool)

(assert (=> b!2518008 (= tp!804837 e!1595258)))

(declare-fun b!2518475 () Bool)

(assert (=> b!2518475 (= e!1595258 tp_is_empty!12853)))

(declare-fun b!2518477 () Bool)

(declare-fun tp!804886 () Bool)

(assert (=> b!2518477 (= e!1595258 tp!804886)))

(declare-fun b!2518476 () Bool)

(declare-fun tp!804888 () Bool)

(declare-fun tp!804885 () Bool)

(assert (=> b!2518476 (= e!1595258 (and tp!804888 tp!804885))))

(declare-fun b!2518478 () Bool)

(declare-fun tp!804889 () Bool)

(declare-fun tp!804887 () Bool)

(assert (=> b!2518478 (= e!1595258 (and tp!804889 tp!804887))))

(assert (= (and b!2518008 ((_ is ElementMatch!7499) (regTwo!15511 (regOne!15510 r!27340)))) b!2518475))

(assert (= (and b!2518008 ((_ is Concat!12195) (regTwo!15511 (regOne!15510 r!27340)))) b!2518476))

(assert (= (and b!2518008 ((_ is Star!7499) (regTwo!15511 (regOne!15510 r!27340)))) b!2518477))

(assert (= (and b!2518008 ((_ is Union!7499) (regTwo!15511 (regOne!15510 r!27340)))) b!2518478))

(declare-fun e!1595259 () Bool)

(assert (=> b!2518007 (= tp!804836 e!1595259)))

(declare-fun b!2518479 () Bool)

(assert (=> b!2518479 (= e!1595259 tp_is_empty!12853)))

(declare-fun b!2518481 () Bool)

(declare-fun tp!804891 () Bool)

(assert (=> b!2518481 (= e!1595259 tp!804891)))

(declare-fun b!2518480 () Bool)

(declare-fun tp!804893 () Bool)

(declare-fun tp!804890 () Bool)

(assert (=> b!2518480 (= e!1595259 (and tp!804893 tp!804890))))

(declare-fun b!2518482 () Bool)

(declare-fun tp!804894 () Bool)

(declare-fun tp!804892 () Bool)

(assert (=> b!2518482 (= e!1595259 (and tp!804894 tp!804892))))

(assert (= (and b!2518007 ((_ is ElementMatch!7499) (reg!7828 (regOne!15510 r!27340)))) b!2518479))

(assert (= (and b!2518007 ((_ is Concat!12195) (reg!7828 (regOne!15510 r!27340)))) b!2518480))

(assert (= (and b!2518007 ((_ is Star!7499) (reg!7828 (regOne!15510 r!27340)))) b!2518481))

(assert (= (and b!2518007 ((_ is Union!7499) (reg!7828 (regOne!15510 r!27340)))) b!2518482))

(declare-fun e!1595260 () Bool)

(assert (=> b!2518012 (= tp!804844 e!1595260)))

(declare-fun b!2518483 () Bool)

(assert (=> b!2518483 (= e!1595260 tp_is_empty!12853)))

(declare-fun b!2518485 () Bool)

(declare-fun tp!804896 () Bool)

(assert (=> b!2518485 (= e!1595260 tp!804896)))

(declare-fun b!2518484 () Bool)

(declare-fun tp!804898 () Bool)

(declare-fun tp!804895 () Bool)

(assert (=> b!2518484 (= e!1595260 (and tp!804898 tp!804895))))

(declare-fun b!2518486 () Bool)

(declare-fun tp!804899 () Bool)

(declare-fun tp!804897 () Bool)

(assert (=> b!2518486 (= e!1595260 (and tp!804899 tp!804897))))

(assert (= (and b!2518012 ((_ is ElementMatch!7499) (regOne!15511 (regTwo!15510 r!27340)))) b!2518483))

(assert (= (and b!2518012 ((_ is Concat!12195) (regOne!15511 (regTwo!15510 r!27340)))) b!2518484))

(assert (= (and b!2518012 ((_ is Star!7499) (regOne!15511 (regTwo!15510 r!27340)))) b!2518485))

(assert (= (and b!2518012 ((_ is Union!7499) (regOne!15511 (regTwo!15510 r!27340)))) b!2518486))

(declare-fun e!1595261 () Bool)

(assert (=> b!2518012 (= tp!804842 e!1595261)))

(declare-fun b!2518487 () Bool)

(assert (=> b!2518487 (= e!1595261 tp_is_empty!12853)))

(declare-fun b!2518489 () Bool)

(declare-fun tp!804901 () Bool)

(assert (=> b!2518489 (= e!1595261 tp!804901)))

(declare-fun b!2518488 () Bool)

(declare-fun tp!804903 () Bool)

(declare-fun tp!804900 () Bool)

(assert (=> b!2518488 (= e!1595261 (and tp!804903 tp!804900))))

(declare-fun b!2518490 () Bool)

(declare-fun tp!804904 () Bool)

(declare-fun tp!804902 () Bool)

(assert (=> b!2518490 (= e!1595261 (and tp!804904 tp!804902))))

(assert (= (and b!2518012 ((_ is ElementMatch!7499) (regTwo!15511 (regTwo!15510 r!27340)))) b!2518487))

(assert (= (and b!2518012 ((_ is Concat!12195) (regTwo!15511 (regTwo!15510 r!27340)))) b!2518488))

(assert (= (and b!2518012 ((_ is Star!7499) (regTwo!15511 (regTwo!15510 r!27340)))) b!2518489))

(assert (= (and b!2518012 ((_ is Union!7499) (regTwo!15511 (regTwo!15510 r!27340)))) b!2518490))

(declare-fun b!2518501 () Bool)

(declare-fun e!1595267 () Bool)

(declare-fun tp!804905 () Bool)

(assert (=> b!2518501 (= e!1595267 (and tp_is_empty!12853 tp!804905))))

(assert (=> b!2518004 (= tp!804834 e!1595267)))

(assert (= (and b!2518004 ((_ is Cons!29464) (t!211263 (t!211263 tl!4068)))) b!2518501))

(declare-fun e!1595268 () Bool)

(assert (=> b!2518019 (= tp!804851 e!1595268)))

(declare-fun b!2518502 () Bool)

(assert (=> b!2518502 (= e!1595268 tp_is_empty!12853)))

(declare-fun b!2518504 () Bool)

(declare-fun tp!804907 () Bool)

(assert (=> b!2518504 (= e!1595268 tp!804907)))

(declare-fun b!2518503 () Bool)

(declare-fun tp!804909 () Bool)

(declare-fun tp!804906 () Bool)

(assert (=> b!2518503 (= e!1595268 (and tp!804909 tp!804906))))

(declare-fun b!2518505 () Bool)

(declare-fun tp!804910 () Bool)

(declare-fun tp!804908 () Bool)

(assert (=> b!2518505 (= e!1595268 (and tp!804910 tp!804908))))

(assert (= (and b!2518019 ((_ is ElementMatch!7499) (reg!7828 (regTwo!15511 r!27340)))) b!2518502))

(assert (= (and b!2518019 ((_ is Concat!12195) (reg!7828 (regTwo!15511 r!27340)))) b!2518503))

(assert (= (and b!2518019 ((_ is Star!7499) (reg!7828 (regTwo!15511 r!27340)))) b!2518504))

(assert (= (and b!2518019 ((_ is Union!7499) (reg!7828 (regTwo!15511 r!27340)))) b!2518505))

(declare-fun e!1595269 () Bool)

(assert (=> b!2518010 (= tp!804843 e!1595269)))

(declare-fun b!2518506 () Bool)

(assert (=> b!2518506 (= e!1595269 tp_is_empty!12853)))

(declare-fun b!2518508 () Bool)

(declare-fun tp!804912 () Bool)

(assert (=> b!2518508 (= e!1595269 tp!804912)))

(declare-fun b!2518507 () Bool)

(declare-fun tp!804914 () Bool)

(declare-fun tp!804911 () Bool)

(assert (=> b!2518507 (= e!1595269 (and tp!804914 tp!804911))))

(declare-fun b!2518509 () Bool)

(declare-fun tp!804915 () Bool)

(declare-fun tp!804913 () Bool)

(assert (=> b!2518509 (= e!1595269 (and tp!804915 tp!804913))))

(assert (= (and b!2518010 ((_ is ElementMatch!7499) (regOne!15510 (regTwo!15510 r!27340)))) b!2518506))

(assert (= (and b!2518010 ((_ is Concat!12195) (regOne!15510 (regTwo!15510 r!27340)))) b!2518507))

(assert (= (and b!2518010 ((_ is Star!7499) (regOne!15510 (regTwo!15510 r!27340)))) b!2518508))

(assert (= (and b!2518010 ((_ is Union!7499) (regOne!15510 (regTwo!15510 r!27340)))) b!2518509))

(declare-fun e!1595270 () Bool)

(assert (=> b!2518010 (= tp!804840 e!1595270)))

(declare-fun b!2518510 () Bool)

(assert (=> b!2518510 (= e!1595270 tp_is_empty!12853)))

(declare-fun b!2518512 () Bool)

(declare-fun tp!804917 () Bool)

(assert (=> b!2518512 (= e!1595270 tp!804917)))

(declare-fun b!2518511 () Bool)

(declare-fun tp!804919 () Bool)

(declare-fun tp!804916 () Bool)

(assert (=> b!2518511 (= e!1595270 (and tp!804919 tp!804916))))

(declare-fun b!2518513 () Bool)

(declare-fun tp!804920 () Bool)

(declare-fun tp!804918 () Bool)

(assert (=> b!2518513 (= e!1595270 (and tp!804920 tp!804918))))

(assert (= (and b!2518010 ((_ is ElementMatch!7499) (regTwo!15510 (regTwo!15510 r!27340)))) b!2518510))

(assert (= (and b!2518010 ((_ is Concat!12195) (regTwo!15510 (regTwo!15510 r!27340)))) b!2518511))

(assert (= (and b!2518010 ((_ is Star!7499) (regTwo!15510 (regTwo!15510 r!27340)))) b!2518512))

(assert (= (and b!2518010 ((_ is Union!7499) (regTwo!15510 (regTwo!15510 r!27340)))) b!2518513))

(declare-fun e!1595271 () Bool)

(assert (=> b!2517999 (= tp!804831 e!1595271)))

(declare-fun b!2518514 () Bool)

(assert (=> b!2518514 (= e!1595271 tp_is_empty!12853)))

(declare-fun b!2518516 () Bool)

(declare-fun tp!804922 () Bool)

(assert (=> b!2518516 (= e!1595271 tp!804922)))

(declare-fun b!2518515 () Bool)

(declare-fun tp!804924 () Bool)

(declare-fun tp!804921 () Bool)

(assert (=> b!2518515 (= e!1595271 (and tp!804924 tp!804921))))

(declare-fun b!2518517 () Bool)

(declare-fun tp!804925 () Bool)

(declare-fun tp!804923 () Bool)

(assert (=> b!2518517 (= e!1595271 (and tp!804925 tp!804923))))

(assert (= (and b!2517999 ((_ is ElementMatch!7499) (regOne!15511 (reg!7828 r!27340)))) b!2518514))

(assert (= (and b!2517999 ((_ is Concat!12195) (regOne!15511 (reg!7828 r!27340)))) b!2518515))

(assert (= (and b!2517999 ((_ is Star!7499) (regOne!15511 (reg!7828 r!27340)))) b!2518516))

(assert (= (and b!2517999 ((_ is Union!7499) (regOne!15511 (reg!7828 r!27340)))) b!2518517))

(declare-fun e!1595272 () Bool)

(assert (=> b!2517999 (= tp!804829 e!1595272)))

(declare-fun b!2518518 () Bool)

(assert (=> b!2518518 (= e!1595272 tp_is_empty!12853)))

(declare-fun b!2518520 () Bool)

(declare-fun tp!804927 () Bool)

(assert (=> b!2518520 (= e!1595272 tp!804927)))

(declare-fun b!2518519 () Bool)

(declare-fun tp!804929 () Bool)

(declare-fun tp!804926 () Bool)

(assert (=> b!2518519 (= e!1595272 (and tp!804929 tp!804926))))

(declare-fun b!2518521 () Bool)

(declare-fun tp!804930 () Bool)

(declare-fun tp!804928 () Bool)

(assert (=> b!2518521 (= e!1595272 (and tp!804930 tp!804928))))

(assert (= (and b!2517999 ((_ is ElementMatch!7499) (regTwo!15511 (reg!7828 r!27340)))) b!2518518))

(assert (= (and b!2517999 ((_ is Concat!12195) (regTwo!15511 (reg!7828 r!27340)))) b!2518519))

(assert (= (and b!2517999 ((_ is Star!7499) (regTwo!15511 (reg!7828 r!27340)))) b!2518520))

(assert (= (and b!2517999 ((_ is Union!7499) (regTwo!15511 (reg!7828 r!27340)))) b!2518521))

(declare-fun e!1595274 () Bool)

(assert (=> b!2518014 (= tp!804848 e!1595274)))

(declare-fun b!2518526 () Bool)

(assert (=> b!2518526 (= e!1595274 tp_is_empty!12853)))

(declare-fun b!2518528 () Bool)

(declare-fun tp!804937 () Bool)

(assert (=> b!2518528 (= e!1595274 tp!804937)))

(declare-fun b!2518527 () Bool)

(declare-fun tp!804939 () Bool)

(declare-fun tp!804936 () Bool)

(assert (=> b!2518527 (= e!1595274 (and tp!804939 tp!804936))))

(declare-fun b!2518529 () Bool)

(declare-fun tp!804940 () Bool)

(declare-fun tp!804938 () Bool)

(assert (=> b!2518529 (= e!1595274 (and tp!804940 tp!804938))))

(assert (= (and b!2518014 ((_ is ElementMatch!7499) (regOne!15510 (regOne!15511 r!27340)))) b!2518526))

(assert (= (and b!2518014 ((_ is Concat!12195) (regOne!15510 (regOne!15511 r!27340)))) b!2518527))

(assert (= (and b!2518014 ((_ is Star!7499) (regOne!15510 (regOne!15511 r!27340)))) b!2518528))

(assert (= (and b!2518014 ((_ is Union!7499) (regOne!15510 (regOne!15511 r!27340)))) b!2518529))

(declare-fun e!1595276 () Bool)

(assert (=> b!2518014 (= tp!804845 e!1595276)))

(declare-fun b!2518534 () Bool)

(assert (=> b!2518534 (= e!1595276 tp_is_empty!12853)))

(declare-fun b!2518536 () Bool)

(declare-fun tp!804947 () Bool)

(assert (=> b!2518536 (= e!1595276 tp!804947)))

(declare-fun b!2518535 () Bool)

(declare-fun tp!804949 () Bool)

(declare-fun tp!804946 () Bool)

(assert (=> b!2518535 (= e!1595276 (and tp!804949 tp!804946))))

(declare-fun b!2518537 () Bool)

(declare-fun tp!804950 () Bool)

(declare-fun tp!804948 () Bool)

(assert (=> b!2518537 (= e!1595276 (and tp!804950 tp!804948))))

(assert (= (and b!2518014 ((_ is ElementMatch!7499) (regTwo!15510 (regOne!15511 r!27340)))) b!2518534))

(assert (= (and b!2518014 ((_ is Concat!12195) (regTwo!15510 (regOne!15511 r!27340)))) b!2518535))

(assert (= (and b!2518014 ((_ is Star!7499) (regTwo!15510 (regOne!15511 r!27340)))) b!2518536))

(assert (= (and b!2518014 ((_ is Union!7499) (regTwo!15510 (regOne!15511 r!27340)))) b!2518537))

(declare-fun e!1595278 () Bool)

(assert (=> b!2518011 (= tp!804841 e!1595278)))

(declare-fun b!2518542 () Bool)

(assert (=> b!2518542 (= e!1595278 tp_is_empty!12853)))

(declare-fun b!2518544 () Bool)

(declare-fun tp!804957 () Bool)

(assert (=> b!2518544 (= e!1595278 tp!804957)))

(declare-fun b!2518543 () Bool)

(declare-fun tp!804959 () Bool)

(declare-fun tp!804956 () Bool)

(assert (=> b!2518543 (= e!1595278 (and tp!804959 tp!804956))))

(declare-fun b!2518545 () Bool)

(declare-fun tp!804960 () Bool)

(declare-fun tp!804958 () Bool)

(assert (=> b!2518545 (= e!1595278 (and tp!804960 tp!804958))))

(assert (= (and b!2518011 ((_ is ElementMatch!7499) (reg!7828 (regTwo!15510 r!27340)))) b!2518542))

(assert (= (and b!2518011 ((_ is Concat!12195) (reg!7828 (regTwo!15510 r!27340)))) b!2518543))

(assert (= (and b!2518011 ((_ is Star!7499) (reg!7828 (regTwo!15510 r!27340)))) b!2518544))

(assert (= (and b!2518011 ((_ is Union!7499) (reg!7828 (regTwo!15510 r!27340)))) b!2518545))

(declare-fun e!1595279 () Bool)

(assert (=> b!2518016 (= tp!804849 e!1595279)))

(declare-fun b!2518546 () Bool)

(assert (=> b!2518546 (= e!1595279 tp_is_empty!12853)))

(declare-fun b!2518548 () Bool)

(declare-fun tp!804962 () Bool)

(assert (=> b!2518548 (= e!1595279 tp!804962)))

(declare-fun b!2518547 () Bool)

(declare-fun tp!804964 () Bool)

(declare-fun tp!804961 () Bool)

(assert (=> b!2518547 (= e!1595279 (and tp!804964 tp!804961))))

(declare-fun b!2518549 () Bool)

(declare-fun tp!804965 () Bool)

(declare-fun tp!804963 () Bool)

(assert (=> b!2518549 (= e!1595279 (and tp!804965 tp!804963))))

(assert (= (and b!2518016 ((_ is ElementMatch!7499) (regOne!15511 (regOne!15511 r!27340)))) b!2518546))

(assert (= (and b!2518016 ((_ is Concat!12195) (regOne!15511 (regOne!15511 r!27340)))) b!2518547))

(assert (= (and b!2518016 ((_ is Star!7499) (regOne!15511 (regOne!15511 r!27340)))) b!2518548))

(assert (= (and b!2518016 ((_ is Union!7499) (regOne!15511 (regOne!15511 r!27340)))) b!2518549))

(declare-fun e!1595281 () Bool)

(assert (=> b!2518016 (= tp!804847 e!1595281)))

(declare-fun b!2518554 () Bool)

(assert (=> b!2518554 (= e!1595281 tp_is_empty!12853)))

(declare-fun b!2518556 () Bool)

(declare-fun tp!804972 () Bool)

(assert (=> b!2518556 (= e!1595281 tp!804972)))

(declare-fun b!2518555 () Bool)

(declare-fun tp!804974 () Bool)

(declare-fun tp!804971 () Bool)

(assert (=> b!2518555 (= e!1595281 (and tp!804974 tp!804971))))

(declare-fun b!2518557 () Bool)

(declare-fun tp!804975 () Bool)

(declare-fun tp!804973 () Bool)

(assert (=> b!2518557 (= e!1595281 (and tp!804975 tp!804973))))

(assert (= (and b!2518016 ((_ is ElementMatch!7499) (regTwo!15511 (regOne!15511 r!27340)))) b!2518554))

(assert (= (and b!2518016 ((_ is Concat!12195) (regTwo!15511 (regOne!15511 r!27340)))) b!2518555))

(assert (= (and b!2518016 ((_ is Star!7499) (regTwo!15511 (regOne!15511 r!27340)))) b!2518556))

(assert (= (and b!2518016 ((_ is Union!7499) (regTwo!15511 (regOne!15511 r!27340)))) b!2518557))

(declare-fun e!1595283 () Bool)

(assert (=> b!2518015 (= tp!804846 e!1595283)))

(declare-fun b!2518562 () Bool)

(assert (=> b!2518562 (= e!1595283 tp_is_empty!12853)))

(declare-fun b!2518564 () Bool)

(declare-fun tp!804982 () Bool)

(assert (=> b!2518564 (= e!1595283 tp!804982)))

(declare-fun b!2518563 () Bool)

(declare-fun tp!804984 () Bool)

(declare-fun tp!804981 () Bool)

(assert (=> b!2518563 (= e!1595283 (and tp!804984 tp!804981))))

(declare-fun b!2518565 () Bool)

(declare-fun tp!804985 () Bool)

(declare-fun tp!804983 () Bool)

(assert (=> b!2518565 (= e!1595283 (and tp!804985 tp!804983))))

(assert (= (and b!2518015 ((_ is ElementMatch!7499) (reg!7828 (regOne!15511 r!27340)))) b!2518562))

(assert (= (and b!2518015 ((_ is Concat!12195) (reg!7828 (regOne!15511 r!27340)))) b!2518563))

(assert (= (and b!2518015 ((_ is Star!7499) (reg!7828 (regOne!15511 r!27340)))) b!2518564))

(assert (= (and b!2518015 ((_ is Union!7499) (reg!7828 (regOne!15511 r!27340)))) b!2518565))

(declare-fun e!1595285 () Bool)

(assert (=> b!2518006 (= tp!804838 e!1595285)))

(declare-fun b!2518570 () Bool)

(assert (=> b!2518570 (= e!1595285 tp_is_empty!12853)))

(declare-fun b!2518572 () Bool)

(declare-fun tp!804992 () Bool)

(assert (=> b!2518572 (= e!1595285 tp!804992)))

(declare-fun b!2518571 () Bool)

(declare-fun tp!804994 () Bool)

(declare-fun tp!804991 () Bool)

(assert (=> b!2518571 (= e!1595285 (and tp!804994 tp!804991))))

(declare-fun b!2518573 () Bool)

(declare-fun tp!804995 () Bool)

(declare-fun tp!804993 () Bool)

(assert (=> b!2518573 (= e!1595285 (and tp!804995 tp!804993))))

(assert (= (and b!2518006 ((_ is ElementMatch!7499) (regOne!15510 (regOne!15510 r!27340)))) b!2518570))

(assert (= (and b!2518006 ((_ is Concat!12195) (regOne!15510 (regOne!15510 r!27340)))) b!2518571))

(assert (= (and b!2518006 ((_ is Star!7499) (regOne!15510 (regOne!15510 r!27340)))) b!2518572))

(assert (= (and b!2518006 ((_ is Union!7499) (regOne!15510 (regOne!15510 r!27340)))) b!2518573))

(declare-fun e!1595287 () Bool)

(assert (=> b!2518006 (= tp!804835 e!1595287)))

(declare-fun b!2518578 () Bool)

(assert (=> b!2518578 (= e!1595287 tp_is_empty!12853)))

(declare-fun b!2518580 () Bool)

(declare-fun tp!805002 () Bool)

(assert (=> b!2518580 (= e!1595287 tp!805002)))

(declare-fun b!2518579 () Bool)

(declare-fun tp!805004 () Bool)

(declare-fun tp!805001 () Bool)

(assert (=> b!2518579 (= e!1595287 (and tp!805004 tp!805001))))

(declare-fun b!2518581 () Bool)

(declare-fun tp!805005 () Bool)

(declare-fun tp!805003 () Bool)

(assert (=> b!2518581 (= e!1595287 (and tp!805005 tp!805003))))

(assert (= (and b!2518006 ((_ is ElementMatch!7499) (regTwo!15510 (regOne!15510 r!27340)))) b!2518578))

(assert (= (and b!2518006 ((_ is Concat!12195) (regTwo!15510 (regOne!15510 r!27340)))) b!2518579))

(assert (= (and b!2518006 ((_ is Star!7499) (regTwo!15510 (regOne!15510 r!27340)))) b!2518580))

(assert (= (and b!2518006 ((_ is Union!7499) (regTwo!15510 (regOne!15510 r!27340)))) b!2518581))

(declare-fun e!1595289 () Bool)

(assert (=> b!2518020 (= tp!804854 e!1595289)))

(declare-fun b!2518586 () Bool)

(assert (=> b!2518586 (= e!1595289 tp_is_empty!12853)))

(declare-fun b!2518588 () Bool)

(declare-fun tp!805012 () Bool)

(assert (=> b!2518588 (= e!1595289 tp!805012)))

(declare-fun b!2518587 () Bool)

(declare-fun tp!805014 () Bool)

(declare-fun tp!805011 () Bool)

(assert (=> b!2518587 (= e!1595289 (and tp!805014 tp!805011))))

(declare-fun b!2518589 () Bool)

(declare-fun tp!805015 () Bool)

(declare-fun tp!805013 () Bool)

(assert (=> b!2518589 (= e!1595289 (and tp!805015 tp!805013))))

(assert (= (and b!2518020 ((_ is ElementMatch!7499) (regOne!15511 (regTwo!15511 r!27340)))) b!2518586))

(assert (= (and b!2518020 ((_ is Concat!12195) (regOne!15511 (regTwo!15511 r!27340)))) b!2518587))

(assert (= (and b!2518020 ((_ is Star!7499) (regOne!15511 (regTwo!15511 r!27340)))) b!2518588))

(assert (= (and b!2518020 ((_ is Union!7499) (regOne!15511 (regTwo!15511 r!27340)))) b!2518589))

(declare-fun e!1595291 () Bool)

(assert (=> b!2518020 (= tp!804852 e!1595291)))

(declare-fun b!2518594 () Bool)

(assert (=> b!2518594 (= e!1595291 tp_is_empty!12853)))

(declare-fun b!2518596 () Bool)

(declare-fun tp!805022 () Bool)

(assert (=> b!2518596 (= e!1595291 tp!805022)))

(declare-fun b!2518595 () Bool)

(declare-fun tp!805024 () Bool)

(declare-fun tp!805021 () Bool)

(assert (=> b!2518595 (= e!1595291 (and tp!805024 tp!805021))))

(declare-fun b!2518597 () Bool)

(declare-fun tp!805025 () Bool)

(declare-fun tp!805023 () Bool)

(assert (=> b!2518597 (= e!1595291 (and tp!805025 tp!805023))))

(assert (= (and b!2518020 ((_ is ElementMatch!7499) (regTwo!15511 (regTwo!15511 r!27340)))) b!2518594))

(assert (= (and b!2518020 ((_ is Concat!12195) (regTwo!15511 (regTwo!15511 r!27340)))) b!2518595))

(assert (= (and b!2518020 ((_ is Star!7499) (regTwo!15511 (regTwo!15511 r!27340)))) b!2518596))

(assert (= (and b!2518020 ((_ is Union!7499) (regTwo!15511 (regTwo!15511 r!27340)))) b!2518597))

(check-sat (not d!717557) (not d!717563) (not b!2518529) (not bm!156782) (not bm!156794) (not b!2518474) (not bm!156788) (not bm!156811) (not b!2518489) (not b!2518512) (not d!717559) (not b!2518380) (not b!2518304) (not b!2518536) (not bm!156781) (not b!2518571) (not b!2518528) (not b!2518472) (not bm!156704) (not b!2518287) (not b!2518229) (not b!2518517) (not b!2518469) (not bm!156778) (not bm!156691) (not b!2518072) (not b!2518556) (not b!2518067) (not bm!156717) (not b!2518519) (not bm!156806) (not d!717615) (not b!2518503) (not b!2518508) (not b!2518588) (not b!2518521) (not b!2518595) (not b!2518234) (not b!2518573) (not bm!156723) (not bm!156768) (not bm!156702) (not b!2518486) (not bm!156789) (not bm!156759) (not b!2518597) (not b!2518484) (not b!2518041) (not b!2518102) (not b!2518504) (not bm!156686) (not bm!156716) (not d!717565) (not b!2518572) (not b!2518429) (not b!2518563) (not bm!156812) (not bm!156690) (not bm!156801) (not b!2518438) (not d!717567) (not bm!156758) (not bm!156713) (not b!2518032) (not bm!156687) (not b!2518253) (not b!2518589) (not b!2518478) (not b!2518381) (not b!2518379) (not b!2518465) (not d!717603) (not d!717659) (not bm!156685) (not bm!156712) (not bm!156754) (not d!717671) (not b!2518581) (not b!2518460) (not d!717623) (not b!2518520) (not bm!156701) (not b!2518476) (not b!2518242) (not b!2518511) (not b!2518439) (not b!2518411) (not b!2518488) (not b!2518564) (not b!2518107) (not d!717569) (not b!2518545) (not b!2518444) (not bm!156799) (not b!2518443) (not b!2518369) (not bm!156722) (not b!2518587) (not b!2518547) (not b!2518543) (not bm!156773) (not b!2518464) (not b!2518092) (not b!2518544) (not b!2518230) (not b!2518333) (not d!717555) (not b!2518501) (not b!2518555) (not b!2518477) tp_is_empty!12853 (not b!2518507) (not bm!156696) (not b!2518580) (not bm!156767) (not b!2518470) (not b!2518481) (not b!2518537) (not b!2518548) (not b!2518535) (not b!2518505) (not b!2518515) (not b!2518462) (not d!717625) (not bm!156779) (not b!2518322) (not d!717533) (not b!2518024) (not bm!156748) (not b!2518509) (not b!2518241) (not b!2518442) (not b!2518527) (not b!2518117) (not d!717531) (not bm!156688) (not bm!156703) (not b!2518373) (not b!2518485) (not b!2518513) (not b!2518240) (not bm!156749) (not d!717663) (not b!2518490) (not b!2518059) (not bm!156772) (not b!2518557) (not bm!156697) (not b!2518579) (not b!2518480) (not b!2518516) (not b!2518482) (not b!2518596) (not b!2518565) (not b!2518468) (not b!2518466) (not bm!156805) (not b!2518473) (not b!2518134) (not b!2518461) (not b!2518387) (not b!2518549) (not b!2518368) (not b!2518440))
(check-sat)
