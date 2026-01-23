; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740182 () Bool)

(assert start!740182)

(declare-fun b!7773661 () Bool)

(declare-fun res!3098648 () Bool)

(declare-fun e!4605655 () Bool)

(assert (=> b!7773661 (=> (not res!3098648) (not e!4605655))))

(declare-datatypes ((C!41868 0))(
  ( (C!41869 (val!31374 Int)) )
))
(declare-datatypes ((Regex!20771 0))(
  ( (ElementMatch!20771 (c!1432706 C!41868)) (Concat!29616 (regOne!42054 Regex!20771) (regTwo!42054 Regex!20771)) (EmptyExpr!20771) (Star!20771 (reg!21100 Regex!20771)) (EmptyLang!20771) (Union!20771 (regOne!42055 Regex!20771) (regTwo!42055 Regex!20771)) )
))
(declare-fun lt!2671684 () Regex!20771)

(declare-datatypes ((List!73610 0))(
  ( (Nil!73486) (Cons!73486 (h!79934 C!41868) (t!388345 List!73610)) )
))
(declare-fun s!14292 () List!73610)

(declare-fun matchR!10231 (Regex!20771 List!73610) Bool)

(declare-fun derivativeStep!6114 (Regex!20771 C!41868) Regex!20771)

(assert (=> b!7773661 (= res!3098648 (matchR!10231 (derivativeStep!6114 lt!2671684 (h!79934 s!14292)) (t!388345 s!14292)))))

(declare-fun b!7773662 () Bool)

(declare-fun res!3098650 () Bool)

(assert (=> b!7773662 (=> (not res!3098650) (not e!4605655))))

(declare-fun r1!6279 () Regex!20771)

(declare-fun nullable!9161 (Regex!20771) Bool)

(assert (=> b!7773662 (= res!3098650 (nullable!9161 r1!6279))))

(declare-fun b!7773663 () Bool)

(declare-fun e!4605656 () Bool)

(declare-fun tp_is_empty!51897 () Bool)

(assert (=> b!7773663 (= e!4605656 tp_is_empty!51897)))

(declare-fun b!7773664 () Bool)

(declare-fun e!4605659 () Bool)

(declare-fun tp!2284049 () Bool)

(assert (=> b!7773664 (= e!4605659 (and tp_is_empty!51897 tp!2284049))))

(declare-fun b!7773665 () Bool)

(declare-fun tp!2284045 () Bool)

(declare-fun tp!2284055 () Bool)

(assert (=> b!7773665 (= e!4605656 (and tp!2284045 tp!2284055))))

(declare-fun res!3098647 () Bool)

(declare-fun e!4605657 () Bool)

(assert (=> start!740182 (=> (not res!3098647) (not e!4605657))))

(declare-fun validRegex!11185 (Regex!20771) Bool)

(assert (=> start!740182 (= res!3098647 (validRegex!11185 r1!6279))))

(assert (=> start!740182 e!4605657))

(assert (=> start!740182 e!4605656))

(declare-fun e!4605658 () Bool)

(assert (=> start!740182 e!4605658))

(assert (=> start!740182 e!4605659))

(declare-fun b!7773666 () Bool)

(declare-fun tp!2284054 () Bool)

(assert (=> b!7773666 (= e!4605656 tp!2284054)))

(declare-fun b!7773667 () Bool)

(declare-fun tp!2284051 () Bool)

(assert (=> b!7773667 (= e!4605658 tp!2284051)))

(declare-fun b!7773668 () Bool)

(declare-fun tp!2284047 () Bool)

(declare-fun tp!2284046 () Bool)

(assert (=> b!7773668 (= e!4605658 (and tp!2284047 tp!2284046))))

(declare-fun b!7773669 () Bool)

(assert (=> b!7773669 (= e!4605658 tp_is_empty!51897)))

(declare-fun b!7773670 () Bool)

(declare-fun res!3098645 () Bool)

(assert (=> b!7773670 (=> (not res!3098645) (not e!4605655))))

(get-info :version)

(assert (=> b!7773670 (= res!3098645 ((_ is Cons!73486) s!14292))))

(declare-fun b!7773671 () Bool)

(assert (=> b!7773671 (= e!4605655 (not (validRegex!11185 lt!2671684)))))

(declare-fun b!7773672 () Bool)

(assert (=> b!7773672 (= e!4605657 e!4605655)))

(declare-fun res!3098646 () Bool)

(assert (=> b!7773672 (=> (not res!3098646) (not e!4605655))))

(assert (=> b!7773672 (= res!3098646 (matchR!10231 lt!2671684 s!14292))))

(declare-fun r2!6217 () Regex!20771)

(assert (=> b!7773672 (= lt!2671684 (Concat!29616 r1!6279 r2!6217))))

(declare-fun b!7773673 () Bool)

(declare-fun res!3098649 () Bool)

(assert (=> b!7773673 (=> (not res!3098649) (not e!4605657))))

(assert (=> b!7773673 (= res!3098649 (validRegex!11185 r2!6217))))

(declare-fun b!7773674 () Bool)

(declare-fun tp!2284048 () Bool)

(declare-fun tp!2284053 () Bool)

(assert (=> b!7773674 (= e!4605658 (and tp!2284048 tp!2284053))))

(declare-fun b!7773675 () Bool)

(declare-fun tp!2284050 () Bool)

(declare-fun tp!2284052 () Bool)

(assert (=> b!7773675 (= e!4605656 (and tp!2284050 tp!2284052))))

(assert (= (and start!740182 res!3098647) b!7773673))

(assert (= (and b!7773673 res!3098649) b!7773672))

(assert (= (and b!7773672 res!3098646) b!7773670))

(assert (= (and b!7773670 res!3098645) b!7773661))

(assert (= (and b!7773661 res!3098648) b!7773662))

(assert (= (and b!7773662 res!3098650) b!7773671))

(assert (= (and start!740182 ((_ is ElementMatch!20771) r1!6279)) b!7773663))

(assert (= (and start!740182 ((_ is Concat!29616) r1!6279)) b!7773675))

(assert (= (and start!740182 ((_ is Star!20771) r1!6279)) b!7773666))

(assert (= (and start!740182 ((_ is Union!20771) r1!6279)) b!7773665))

(assert (= (and start!740182 ((_ is ElementMatch!20771) r2!6217)) b!7773669))

(assert (= (and start!740182 ((_ is Concat!29616) r2!6217)) b!7773668))

(assert (= (and start!740182 ((_ is Star!20771) r2!6217)) b!7773667))

(assert (= (and start!740182 ((_ is Union!20771) r2!6217)) b!7773674))

(assert (= (and start!740182 ((_ is Cons!73486) s!14292)) b!7773664))

(declare-fun m!8225932 () Bool)

(assert (=> b!7773662 m!8225932))

(declare-fun m!8225934 () Bool)

(assert (=> start!740182 m!8225934))

(declare-fun m!8225936 () Bool)

(assert (=> b!7773661 m!8225936))

(assert (=> b!7773661 m!8225936))

(declare-fun m!8225938 () Bool)

(assert (=> b!7773661 m!8225938))

(declare-fun m!8225940 () Bool)

(assert (=> b!7773673 m!8225940))

(declare-fun m!8225942 () Bool)

(assert (=> b!7773671 m!8225942))

(declare-fun m!8225944 () Bool)

(assert (=> b!7773672 m!8225944))

(check-sat (not b!7773661) (not b!7773664) tp_is_empty!51897 (not b!7773662) (not b!7773672) (not b!7773671) (not b!7773665) (not b!7773668) (not b!7773673) (not b!7773667) (not start!740182) (not b!7773674) (not b!7773675) (not b!7773666))
(check-sat)
(get-model)

(declare-fun b!7773694 () Bool)

(declare-fun e!4605680 () Bool)

(declare-fun e!4605679 () Bool)

(assert (=> b!7773694 (= e!4605680 e!4605679)))

(declare-fun c!1432711 () Bool)

(assert (=> b!7773694 (= c!1432711 ((_ is Star!20771) r1!6279))))

(declare-fun b!7773695 () Bool)

(declare-fun e!4605675 () Bool)

(assert (=> b!7773695 (= e!4605679 e!4605675)))

(declare-fun res!3098662 () Bool)

(assert (=> b!7773695 (= res!3098662 (not (nullable!9161 (reg!21100 r1!6279))))))

(assert (=> b!7773695 (=> (not res!3098662) (not e!4605675))))

(declare-fun b!7773696 () Bool)

(declare-fun e!4605677 () Bool)

(declare-fun call!720515 () Bool)

(assert (=> b!7773696 (= e!4605677 call!720515)))

(declare-fun b!7773697 () Bool)

(declare-fun res!3098664 () Bool)

(declare-fun e!4605678 () Bool)

(assert (=> b!7773697 (=> (not res!3098664) (not e!4605678))))

(declare-fun call!720517 () Bool)

(assert (=> b!7773697 (= res!3098664 call!720517)))

(declare-fun e!4605674 () Bool)

(assert (=> b!7773697 (= e!4605674 e!4605678)))

(declare-fun b!7773698 () Bool)

(assert (=> b!7773698 (= e!4605678 call!720515)))

(declare-fun b!7773699 () Bool)

(declare-fun e!4605676 () Bool)

(assert (=> b!7773699 (= e!4605676 e!4605677)))

(declare-fun res!3098663 () Bool)

(assert (=> b!7773699 (=> (not res!3098663) (not e!4605677))))

(assert (=> b!7773699 (= res!3098663 call!720517)))

(declare-fun bm!720510 () Bool)

(declare-fun c!1432712 () Bool)

(assert (=> bm!720510 (= call!720515 (validRegex!11185 (ite c!1432712 (regTwo!42055 r1!6279) (regTwo!42054 r1!6279))))))

(declare-fun b!7773700 () Bool)

(assert (=> b!7773700 (= e!4605679 e!4605674)))

(assert (=> b!7773700 (= c!1432712 ((_ is Union!20771) r1!6279))))

(declare-fun bm!720512 () Bool)

(declare-fun call!720516 () Bool)

(assert (=> bm!720512 (= call!720516 (validRegex!11185 (ite c!1432711 (reg!21100 r1!6279) (ite c!1432712 (regOne!42055 r1!6279) (regOne!42054 r1!6279)))))))

(declare-fun b!7773701 () Bool)

(declare-fun res!3098665 () Bool)

(assert (=> b!7773701 (=> res!3098665 e!4605676)))

(assert (=> b!7773701 (= res!3098665 (not ((_ is Concat!29616) r1!6279)))))

(assert (=> b!7773701 (= e!4605674 e!4605676)))

(declare-fun b!7773702 () Bool)

(assert (=> b!7773702 (= e!4605675 call!720516)))

(declare-fun d!2344681 () Bool)

(declare-fun res!3098661 () Bool)

(assert (=> d!2344681 (=> res!3098661 e!4605680)))

(assert (=> d!2344681 (= res!3098661 ((_ is ElementMatch!20771) r1!6279))))

(assert (=> d!2344681 (= (validRegex!11185 r1!6279) e!4605680)))

(declare-fun bm!720511 () Bool)

(assert (=> bm!720511 (= call!720517 call!720516)))

(assert (= (and d!2344681 (not res!3098661)) b!7773694))

(assert (= (and b!7773694 c!1432711) b!7773695))

(assert (= (and b!7773694 (not c!1432711)) b!7773700))

(assert (= (and b!7773695 res!3098662) b!7773702))

(assert (= (and b!7773700 c!1432712) b!7773697))

(assert (= (and b!7773700 (not c!1432712)) b!7773701))

(assert (= (and b!7773697 res!3098664) b!7773698))

(assert (= (and b!7773701 (not res!3098665)) b!7773699))

(assert (= (and b!7773699 res!3098663) b!7773696))

(assert (= (or b!7773697 b!7773699) bm!720511))

(assert (= (or b!7773698 b!7773696) bm!720510))

(assert (= (or b!7773702 bm!720511) bm!720512))

(declare-fun m!8225946 () Bool)

(assert (=> b!7773695 m!8225946))

(declare-fun m!8225948 () Bool)

(assert (=> bm!720510 m!8225948))

(declare-fun m!8225950 () Bool)

(assert (=> bm!720512 m!8225950))

(assert (=> start!740182 d!2344681))

(declare-fun b!7773716 () Bool)

(declare-fun e!4605697 () Bool)

(declare-fun e!4605696 () Bool)

(assert (=> b!7773716 (= e!4605697 e!4605696)))

(declare-fun c!1432717 () Bool)

(assert (=> b!7773716 (= c!1432717 ((_ is Star!20771) lt!2671684))))

(declare-fun b!7773717 () Bool)

(declare-fun e!4605692 () Bool)

(assert (=> b!7773717 (= e!4605696 e!4605692)))

(declare-fun res!3098673 () Bool)

(assert (=> b!7773717 (= res!3098673 (not (nullable!9161 (reg!21100 lt!2671684))))))

(assert (=> b!7773717 (=> (not res!3098673) (not e!4605692))))

(declare-fun b!7773718 () Bool)

(declare-fun e!4605694 () Bool)

(declare-fun call!720518 () Bool)

(assert (=> b!7773718 (= e!4605694 call!720518)))

(declare-fun b!7773720 () Bool)

(declare-fun res!3098675 () Bool)

(declare-fun e!4605695 () Bool)

(assert (=> b!7773720 (=> (not res!3098675) (not e!4605695))))

(declare-fun call!720520 () Bool)

(assert (=> b!7773720 (= res!3098675 call!720520)))

(declare-fun e!4605691 () Bool)

(assert (=> b!7773720 (= e!4605691 e!4605695)))

(declare-fun b!7773721 () Bool)

(assert (=> b!7773721 (= e!4605695 call!720518)))

(declare-fun b!7773722 () Bool)

(declare-fun e!4605693 () Bool)

(assert (=> b!7773722 (= e!4605693 e!4605694)))

(declare-fun res!3098674 () Bool)

(assert (=> b!7773722 (=> (not res!3098674) (not e!4605694))))

(assert (=> b!7773722 (= res!3098674 call!720520)))

(declare-fun bm!720513 () Bool)

(declare-fun c!1432718 () Bool)

(assert (=> bm!720513 (= call!720518 (validRegex!11185 (ite c!1432718 (regTwo!42055 lt!2671684) (regTwo!42054 lt!2671684))))))

(declare-fun b!7773723 () Bool)

(assert (=> b!7773723 (= e!4605696 e!4605691)))

(assert (=> b!7773723 (= c!1432718 ((_ is Union!20771) lt!2671684))))

(declare-fun call!720519 () Bool)

(declare-fun bm!720515 () Bool)

(assert (=> bm!720515 (= call!720519 (validRegex!11185 (ite c!1432717 (reg!21100 lt!2671684) (ite c!1432718 (regOne!42055 lt!2671684) (regOne!42054 lt!2671684)))))))

(declare-fun b!7773724 () Bool)

(declare-fun res!3098676 () Bool)

(assert (=> b!7773724 (=> res!3098676 e!4605693)))

(assert (=> b!7773724 (= res!3098676 (not ((_ is Concat!29616) lt!2671684)))))

(assert (=> b!7773724 (= e!4605691 e!4605693)))

(declare-fun b!7773725 () Bool)

(assert (=> b!7773725 (= e!4605692 call!720519)))

(declare-fun d!2344685 () Bool)

(declare-fun res!3098670 () Bool)

(assert (=> d!2344685 (=> res!3098670 e!4605697)))

(assert (=> d!2344685 (= res!3098670 ((_ is ElementMatch!20771) lt!2671684))))

(assert (=> d!2344685 (= (validRegex!11185 lt!2671684) e!4605697)))

(declare-fun bm!720514 () Bool)

(assert (=> bm!720514 (= call!720520 call!720519)))

(assert (= (and d!2344685 (not res!3098670)) b!7773716))

(assert (= (and b!7773716 c!1432717) b!7773717))

(assert (= (and b!7773716 (not c!1432717)) b!7773723))

(assert (= (and b!7773717 res!3098673) b!7773725))

(assert (= (and b!7773723 c!1432718) b!7773720))

(assert (= (and b!7773723 (not c!1432718)) b!7773724))

(assert (= (and b!7773720 res!3098675) b!7773721))

(assert (= (and b!7773724 (not res!3098676)) b!7773722))

(assert (= (and b!7773722 res!3098674) b!7773718))

(assert (= (or b!7773720 b!7773722) bm!720514))

(assert (= (or b!7773721 b!7773718) bm!720513))

(assert (= (or b!7773725 bm!720514) bm!720515))

(declare-fun m!8225952 () Bool)

(assert (=> b!7773717 m!8225952))

(declare-fun m!8225954 () Bool)

(assert (=> bm!720513 m!8225954))

(declare-fun m!8225956 () Bool)

(assert (=> bm!720515 m!8225956))

(assert (=> b!7773671 d!2344685))

(declare-fun b!7773767 () Bool)

(declare-fun e!4605729 () Bool)

(declare-fun head!15895 (List!73610) C!41868)

(declare-fun tail!15436 (List!73610) List!73610)

(assert (=> b!7773767 (= e!4605729 (matchR!10231 (derivativeStep!6114 lt!2671684 (head!15895 s!14292)) (tail!15436 s!14292)))))

(declare-fun b!7773768 () Bool)

(declare-fun res!3098706 () Bool)

(declare-fun e!4605728 () Bool)

(assert (=> b!7773768 (=> res!3098706 e!4605728)))

(declare-fun isEmpty!42160 (List!73610) Bool)

(assert (=> b!7773768 (= res!3098706 (not (isEmpty!42160 (tail!15436 s!14292))))))

(declare-fun b!7773769 () Bool)

(declare-fun e!4605726 () Bool)

(declare-fun lt!2671687 () Bool)

(assert (=> b!7773769 (= e!4605726 (not lt!2671687))))

(declare-fun b!7773770 () Bool)

(declare-fun e!4605725 () Bool)

(assert (=> b!7773770 (= e!4605725 e!4605726)))

(declare-fun c!1432727 () Bool)

(assert (=> b!7773770 (= c!1432727 ((_ is EmptyLang!20771) lt!2671684))))

(declare-fun b!7773771 () Bool)

(assert (=> b!7773771 (= e!4605729 (nullable!9161 lt!2671684))))

(declare-fun bm!720527 () Bool)

(declare-fun call!720532 () Bool)

(assert (=> bm!720527 (= call!720532 (isEmpty!42160 s!14292))))

(declare-fun d!2344687 () Bool)

(assert (=> d!2344687 e!4605725))

(declare-fun c!1432728 () Bool)

(assert (=> d!2344687 (= c!1432728 ((_ is EmptyExpr!20771) lt!2671684))))

(assert (=> d!2344687 (= lt!2671687 e!4605729)))

(declare-fun c!1432729 () Bool)

(assert (=> d!2344687 (= c!1432729 (isEmpty!42160 s!14292))))

(assert (=> d!2344687 (validRegex!11185 lt!2671684)))

(assert (=> d!2344687 (= (matchR!10231 lt!2671684 s!14292) lt!2671687)))

(declare-fun b!7773772 () Bool)

(declare-fun res!3098702 () Bool)

(declare-fun e!4605724 () Bool)

(assert (=> b!7773772 (=> (not res!3098702) (not e!4605724))))

(assert (=> b!7773772 (= res!3098702 (not call!720532))))

(declare-fun b!7773773 () Bool)

(assert (=> b!7773773 (= e!4605724 (= (head!15895 s!14292) (c!1432706 lt!2671684)))))

(declare-fun b!7773774 () Bool)

(declare-fun res!3098704 () Bool)

(assert (=> b!7773774 (=> (not res!3098704) (not e!4605724))))

(assert (=> b!7773774 (= res!3098704 (isEmpty!42160 (tail!15436 s!14292)))))

(declare-fun b!7773775 () Bool)

(declare-fun e!4605723 () Bool)

(declare-fun e!4605727 () Bool)

(assert (=> b!7773775 (= e!4605723 e!4605727)))

(declare-fun res!3098705 () Bool)

(assert (=> b!7773775 (=> (not res!3098705) (not e!4605727))))

(assert (=> b!7773775 (= res!3098705 (not lt!2671687))))

(declare-fun b!7773776 () Bool)

(assert (=> b!7773776 (= e!4605725 (= lt!2671687 call!720532))))

(declare-fun b!7773777 () Bool)

(declare-fun res!3098707 () Bool)

(assert (=> b!7773777 (=> res!3098707 e!4605723)))

(assert (=> b!7773777 (= res!3098707 (not ((_ is ElementMatch!20771) lt!2671684)))))

(assert (=> b!7773777 (= e!4605726 e!4605723)))

(declare-fun b!7773778 () Bool)

(declare-fun res!3098703 () Bool)

(assert (=> b!7773778 (=> res!3098703 e!4605723)))

(assert (=> b!7773778 (= res!3098703 e!4605724)))

(declare-fun res!3098708 () Bool)

(assert (=> b!7773778 (=> (not res!3098708) (not e!4605724))))

(assert (=> b!7773778 (= res!3098708 lt!2671687)))

(declare-fun b!7773779 () Bool)

(assert (=> b!7773779 (= e!4605728 (not (= (head!15895 s!14292) (c!1432706 lt!2671684))))))

(declare-fun b!7773780 () Bool)

(assert (=> b!7773780 (= e!4605727 e!4605728)))

(declare-fun res!3098709 () Bool)

(assert (=> b!7773780 (=> res!3098709 e!4605728)))

(assert (=> b!7773780 (= res!3098709 call!720532)))

(assert (= (and d!2344687 c!1432729) b!7773771))

(assert (= (and d!2344687 (not c!1432729)) b!7773767))

(assert (= (and d!2344687 c!1432728) b!7773776))

(assert (= (and d!2344687 (not c!1432728)) b!7773770))

(assert (= (and b!7773770 c!1432727) b!7773769))

(assert (= (and b!7773770 (not c!1432727)) b!7773777))

(assert (= (and b!7773777 (not res!3098707)) b!7773778))

(assert (= (and b!7773778 res!3098708) b!7773772))

(assert (= (and b!7773772 res!3098702) b!7773774))

(assert (= (and b!7773774 res!3098704) b!7773773))

(assert (= (and b!7773778 (not res!3098703)) b!7773775))

(assert (= (and b!7773775 res!3098705) b!7773780))

(assert (= (and b!7773780 (not res!3098709)) b!7773768))

(assert (= (and b!7773768 (not res!3098706)) b!7773779))

(assert (= (or b!7773776 b!7773772 b!7773780) bm!720527))

(declare-fun m!8225964 () Bool)

(assert (=> bm!720527 m!8225964))

(declare-fun m!8225966 () Bool)

(assert (=> b!7773773 m!8225966))

(declare-fun m!8225968 () Bool)

(assert (=> b!7773774 m!8225968))

(assert (=> b!7773774 m!8225968))

(declare-fun m!8225970 () Bool)

(assert (=> b!7773774 m!8225970))

(assert (=> b!7773779 m!8225966))

(assert (=> b!7773767 m!8225966))

(assert (=> b!7773767 m!8225966))

(declare-fun m!8225972 () Bool)

(assert (=> b!7773767 m!8225972))

(assert (=> b!7773767 m!8225968))

(assert (=> b!7773767 m!8225972))

(assert (=> b!7773767 m!8225968))

(declare-fun m!8225974 () Bool)

(assert (=> b!7773767 m!8225974))

(assert (=> b!7773768 m!8225968))

(assert (=> b!7773768 m!8225968))

(assert (=> b!7773768 m!8225970))

(assert (=> d!2344687 m!8225964))

(assert (=> d!2344687 m!8225942))

(declare-fun m!8225976 () Bool)

(assert (=> b!7773771 m!8225976))

(assert (=> b!7773672 d!2344687))

(declare-fun b!7773781 () Bool)

(declare-fun e!4605736 () Bool)

(assert (=> b!7773781 (= e!4605736 (matchR!10231 (derivativeStep!6114 (derivativeStep!6114 lt!2671684 (h!79934 s!14292)) (head!15895 (t!388345 s!14292))) (tail!15436 (t!388345 s!14292))))))

(declare-fun b!7773782 () Bool)

(declare-fun res!3098714 () Bool)

(declare-fun e!4605735 () Bool)

(assert (=> b!7773782 (=> res!3098714 e!4605735)))

(assert (=> b!7773782 (= res!3098714 (not (isEmpty!42160 (tail!15436 (t!388345 s!14292)))))))

(declare-fun b!7773783 () Bool)

(declare-fun e!4605733 () Bool)

(declare-fun lt!2671688 () Bool)

(assert (=> b!7773783 (= e!4605733 (not lt!2671688))))

(declare-fun b!7773784 () Bool)

(declare-fun e!4605732 () Bool)

(assert (=> b!7773784 (= e!4605732 e!4605733)))

(declare-fun c!1432730 () Bool)

(assert (=> b!7773784 (= c!1432730 ((_ is EmptyLang!20771) (derivativeStep!6114 lt!2671684 (h!79934 s!14292))))))

(declare-fun b!7773785 () Bool)

(assert (=> b!7773785 (= e!4605736 (nullable!9161 (derivativeStep!6114 lt!2671684 (h!79934 s!14292))))))

(declare-fun bm!720528 () Bool)

(declare-fun call!720533 () Bool)

(assert (=> bm!720528 (= call!720533 (isEmpty!42160 (t!388345 s!14292)))))

(declare-fun d!2344691 () Bool)

(assert (=> d!2344691 e!4605732))

(declare-fun c!1432731 () Bool)

(assert (=> d!2344691 (= c!1432731 ((_ is EmptyExpr!20771) (derivativeStep!6114 lt!2671684 (h!79934 s!14292))))))

(assert (=> d!2344691 (= lt!2671688 e!4605736)))

(declare-fun c!1432732 () Bool)

(assert (=> d!2344691 (= c!1432732 (isEmpty!42160 (t!388345 s!14292)))))

(assert (=> d!2344691 (validRegex!11185 (derivativeStep!6114 lt!2671684 (h!79934 s!14292)))))

(assert (=> d!2344691 (= (matchR!10231 (derivativeStep!6114 lt!2671684 (h!79934 s!14292)) (t!388345 s!14292)) lt!2671688)))

(declare-fun b!7773786 () Bool)

(declare-fun res!3098710 () Bool)

(declare-fun e!4605731 () Bool)

(assert (=> b!7773786 (=> (not res!3098710) (not e!4605731))))

(assert (=> b!7773786 (= res!3098710 (not call!720533))))

(declare-fun b!7773787 () Bool)

(assert (=> b!7773787 (= e!4605731 (= (head!15895 (t!388345 s!14292)) (c!1432706 (derivativeStep!6114 lt!2671684 (h!79934 s!14292)))))))

(declare-fun b!7773788 () Bool)

(declare-fun res!3098712 () Bool)

(assert (=> b!7773788 (=> (not res!3098712) (not e!4605731))))

(assert (=> b!7773788 (= res!3098712 (isEmpty!42160 (tail!15436 (t!388345 s!14292))))))

(declare-fun b!7773789 () Bool)

(declare-fun e!4605730 () Bool)

(declare-fun e!4605734 () Bool)

(assert (=> b!7773789 (= e!4605730 e!4605734)))

(declare-fun res!3098713 () Bool)

(assert (=> b!7773789 (=> (not res!3098713) (not e!4605734))))

(assert (=> b!7773789 (= res!3098713 (not lt!2671688))))

(declare-fun b!7773790 () Bool)

(assert (=> b!7773790 (= e!4605732 (= lt!2671688 call!720533))))

(declare-fun b!7773791 () Bool)

(declare-fun res!3098715 () Bool)

(assert (=> b!7773791 (=> res!3098715 e!4605730)))

(assert (=> b!7773791 (= res!3098715 (not ((_ is ElementMatch!20771) (derivativeStep!6114 lt!2671684 (h!79934 s!14292)))))))

(assert (=> b!7773791 (= e!4605733 e!4605730)))

(declare-fun b!7773792 () Bool)

(declare-fun res!3098711 () Bool)

(assert (=> b!7773792 (=> res!3098711 e!4605730)))

(assert (=> b!7773792 (= res!3098711 e!4605731)))

(declare-fun res!3098716 () Bool)

(assert (=> b!7773792 (=> (not res!3098716) (not e!4605731))))

(assert (=> b!7773792 (= res!3098716 lt!2671688)))

(declare-fun b!7773793 () Bool)

(assert (=> b!7773793 (= e!4605735 (not (= (head!15895 (t!388345 s!14292)) (c!1432706 (derivativeStep!6114 lt!2671684 (h!79934 s!14292))))))))

(declare-fun b!7773794 () Bool)

(assert (=> b!7773794 (= e!4605734 e!4605735)))

(declare-fun res!3098717 () Bool)

(assert (=> b!7773794 (=> res!3098717 e!4605735)))

(assert (=> b!7773794 (= res!3098717 call!720533)))

(assert (= (and d!2344691 c!1432732) b!7773785))

(assert (= (and d!2344691 (not c!1432732)) b!7773781))

(assert (= (and d!2344691 c!1432731) b!7773790))

(assert (= (and d!2344691 (not c!1432731)) b!7773784))

(assert (= (and b!7773784 c!1432730) b!7773783))

(assert (= (and b!7773784 (not c!1432730)) b!7773791))

(assert (= (and b!7773791 (not res!3098715)) b!7773792))

(assert (= (and b!7773792 res!3098716) b!7773786))

(assert (= (and b!7773786 res!3098710) b!7773788))

(assert (= (and b!7773788 res!3098712) b!7773787))

(assert (= (and b!7773792 (not res!3098711)) b!7773789))

(assert (= (and b!7773789 res!3098713) b!7773794))

(assert (= (and b!7773794 (not res!3098717)) b!7773782))

(assert (= (and b!7773782 (not res!3098714)) b!7773793))

(assert (= (or b!7773790 b!7773786 b!7773794) bm!720528))

(declare-fun m!8225978 () Bool)

(assert (=> bm!720528 m!8225978))

(declare-fun m!8225980 () Bool)

(assert (=> b!7773787 m!8225980))

(declare-fun m!8225982 () Bool)

(assert (=> b!7773788 m!8225982))

(assert (=> b!7773788 m!8225982))

(declare-fun m!8225984 () Bool)

(assert (=> b!7773788 m!8225984))

(assert (=> b!7773793 m!8225980))

(assert (=> b!7773781 m!8225980))

(assert (=> b!7773781 m!8225936))

(assert (=> b!7773781 m!8225980))

(declare-fun m!8225986 () Bool)

(assert (=> b!7773781 m!8225986))

(assert (=> b!7773781 m!8225982))

(assert (=> b!7773781 m!8225986))

(assert (=> b!7773781 m!8225982))

(declare-fun m!8225988 () Bool)

(assert (=> b!7773781 m!8225988))

(assert (=> b!7773782 m!8225982))

(assert (=> b!7773782 m!8225982))

(assert (=> b!7773782 m!8225984))

(assert (=> d!2344691 m!8225978))

(assert (=> d!2344691 m!8225936))

(declare-fun m!8225990 () Bool)

(assert (=> d!2344691 m!8225990))

(assert (=> b!7773785 m!8225936))

(declare-fun m!8225992 () Bool)

(assert (=> b!7773785 m!8225992))

(assert (=> b!7773661 d!2344691))

(declare-fun b!7773843 () Bool)

(declare-fun c!1432751 () Bool)

(assert (=> b!7773843 (= c!1432751 ((_ is Union!20771) lt!2671684))))

(declare-fun e!4605763 () Regex!20771)

(declare-fun e!4605761 () Regex!20771)

(assert (=> b!7773843 (= e!4605763 e!4605761)))

(declare-fun b!7773844 () Bool)

(declare-fun call!720542 () Regex!20771)

(declare-fun call!720543 () Regex!20771)

(assert (=> b!7773844 (= e!4605761 (Union!20771 call!720542 call!720543))))

(declare-fun b!7773845 () Bool)

(declare-fun e!4605764 () Regex!20771)

(declare-fun call!720544 () Regex!20771)

(assert (=> b!7773845 (= e!4605764 (Union!20771 (Concat!29616 call!720542 (regTwo!42054 lt!2671684)) call!720544))))

(declare-fun b!7773846 () Bool)

(declare-fun e!4605762 () Regex!20771)

(assert (=> b!7773846 (= e!4605761 e!4605762)))

(declare-fun c!1432750 () Bool)

(assert (=> b!7773846 (= c!1432750 ((_ is Star!20771) lt!2671684))))

(declare-fun b!7773847 () Bool)

(assert (=> b!7773847 (= e!4605763 (ite (= (h!79934 s!14292) (c!1432706 lt!2671684)) EmptyExpr!20771 EmptyLang!20771))))

(declare-fun b!7773848 () Bool)

(declare-fun e!4605765 () Regex!20771)

(assert (=> b!7773848 (= e!4605765 EmptyLang!20771)))

(declare-fun bm!720537 () Bool)

(declare-fun call!720545 () Regex!20771)

(assert (=> bm!720537 (= call!720544 call!720545)))

(declare-fun bm!720538 () Bool)

(declare-fun c!1432752 () Bool)

(assert (=> bm!720538 (= call!720543 (derivativeStep!6114 (ite c!1432751 (regTwo!42055 lt!2671684) (ite c!1432750 (reg!21100 lt!2671684) (ite c!1432752 (regTwo!42054 lt!2671684) (regOne!42054 lt!2671684)))) (h!79934 s!14292)))))

(declare-fun b!7773849 () Bool)

(assert (=> b!7773849 (= e!4605764 (Union!20771 (Concat!29616 call!720544 (regTwo!42054 lt!2671684)) EmptyLang!20771))))

(declare-fun bm!720539 () Bool)

(assert (=> bm!720539 (= call!720542 (derivativeStep!6114 (ite c!1432751 (regOne!42055 lt!2671684) (regOne!42054 lt!2671684)) (h!79934 s!14292)))))

(declare-fun d!2344693 () Bool)

(declare-fun lt!2671693 () Regex!20771)

(assert (=> d!2344693 (validRegex!11185 lt!2671693)))

(assert (=> d!2344693 (= lt!2671693 e!4605765)))

(declare-fun c!1432753 () Bool)

(assert (=> d!2344693 (= c!1432753 (or ((_ is EmptyExpr!20771) lt!2671684) ((_ is EmptyLang!20771) lt!2671684)))))

(assert (=> d!2344693 (validRegex!11185 lt!2671684)))

(assert (=> d!2344693 (= (derivativeStep!6114 lt!2671684 (h!79934 s!14292)) lt!2671693)))

(declare-fun b!7773850 () Bool)

(assert (=> b!7773850 (= c!1432752 (nullable!9161 (regOne!42054 lt!2671684)))))

(assert (=> b!7773850 (= e!4605762 e!4605764)))

(declare-fun bm!720540 () Bool)

(assert (=> bm!720540 (= call!720545 call!720543)))

(declare-fun b!7773851 () Bool)

(assert (=> b!7773851 (= e!4605762 (Concat!29616 call!720545 lt!2671684))))

(declare-fun b!7773852 () Bool)

(assert (=> b!7773852 (= e!4605765 e!4605763)))

(declare-fun c!1432749 () Bool)

(assert (=> b!7773852 (= c!1432749 ((_ is ElementMatch!20771) lt!2671684))))

(assert (= (and d!2344693 c!1432753) b!7773848))

(assert (= (and d!2344693 (not c!1432753)) b!7773852))

(assert (= (and b!7773852 c!1432749) b!7773847))

(assert (= (and b!7773852 (not c!1432749)) b!7773843))

(assert (= (and b!7773843 c!1432751) b!7773844))

(assert (= (and b!7773843 (not c!1432751)) b!7773846))

(assert (= (and b!7773846 c!1432750) b!7773851))

(assert (= (and b!7773846 (not c!1432750)) b!7773850))

(assert (= (and b!7773850 c!1432752) b!7773845))

(assert (= (and b!7773850 (not c!1432752)) b!7773849))

(assert (= (or b!7773845 b!7773849) bm!720537))

(assert (= (or b!7773851 bm!720537) bm!720540))

(assert (= (or b!7773844 bm!720540) bm!720538))

(assert (= (or b!7773844 b!7773845) bm!720539))

(declare-fun m!8225994 () Bool)

(assert (=> bm!720538 m!8225994))

(declare-fun m!8225996 () Bool)

(assert (=> bm!720539 m!8225996))

(declare-fun m!8225998 () Bool)

(assert (=> d!2344693 m!8225998))

(assert (=> d!2344693 m!8225942))

(declare-fun m!8226000 () Bool)

(assert (=> b!7773850 m!8226000))

(assert (=> b!7773661 d!2344693))

(declare-fun d!2344695 () Bool)

(declare-fun nullableFct!3587 (Regex!20771) Bool)

(assert (=> d!2344695 (= (nullable!9161 r1!6279) (nullableFct!3587 r1!6279))))

(declare-fun bs!1966138 () Bool)

(assert (= bs!1966138 d!2344695))

(declare-fun m!8226002 () Bool)

(assert (=> bs!1966138 m!8226002))

(assert (=> b!7773662 d!2344695))

(declare-fun b!7773853 () Bool)

(declare-fun e!4605772 () Bool)

(declare-fun e!4605771 () Bool)

(assert (=> b!7773853 (= e!4605772 e!4605771)))

(declare-fun c!1432754 () Bool)

(assert (=> b!7773853 (= c!1432754 ((_ is Star!20771) r2!6217))))

(declare-fun b!7773854 () Bool)

(declare-fun e!4605767 () Bool)

(assert (=> b!7773854 (= e!4605771 e!4605767)))

(declare-fun res!3098735 () Bool)

(assert (=> b!7773854 (= res!3098735 (not (nullable!9161 (reg!21100 r2!6217))))))

(assert (=> b!7773854 (=> (not res!3098735) (not e!4605767))))

(declare-fun b!7773855 () Bool)

(declare-fun e!4605769 () Bool)

(declare-fun call!720546 () Bool)

(assert (=> b!7773855 (= e!4605769 call!720546)))

(declare-fun b!7773856 () Bool)

(declare-fun res!3098737 () Bool)

(declare-fun e!4605770 () Bool)

(assert (=> b!7773856 (=> (not res!3098737) (not e!4605770))))

(declare-fun call!720548 () Bool)

(assert (=> b!7773856 (= res!3098737 call!720548)))

(declare-fun e!4605766 () Bool)

(assert (=> b!7773856 (= e!4605766 e!4605770)))

(declare-fun b!7773857 () Bool)

(assert (=> b!7773857 (= e!4605770 call!720546)))

(declare-fun b!7773858 () Bool)

(declare-fun e!4605768 () Bool)

(assert (=> b!7773858 (= e!4605768 e!4605769)))

(declare-fun res!3098736 () Bool)

(assert (=> b!7773858 (=> (not res!3098736) (not e!4605769))))

(assert (=> b!7773858 (= res!3098736 call!720548)))

(declare-fun bm!720541 () Bool)

(declare-fun c!1432755 () Bool)

(assert (=> bm!720541 (= call!720546 (validRegex!11185 (ite c!1432755 (regTwo!42055 r2!6217) (regTwo!42054 r2!6217))))))

(declare-fun b!7773859 () Bool)

(assert (=> b!7773859 (= e!4605771 e!4605766)))

(assert (=> b!7773859 (= c!1432755 ((_ is Union!20771) r2!6217))))

(declare-fun bm!720543 () Bool)

(declare-fun call!720547 () Bool)

(assert (=> bm!720543 (= call!720547 (validRegex!11185 (ite c!1432754 (reg!21100 r2!6217) (ite c!1432755 (regOne!42055 r2!6217) (regOne!42054 r2!6217)))))))

(declare-fun b!7773860 () Bool)

(declare-fun res!3098738 () Bool)

(assert (=> b!7773860 (=> res!3098738 e!4605768)))

(assert (=> b!7773860 (= res!3098738 (not ((_ is Concat!29616) r2!6217)))))

(assert (=> b!7773860 (= e!4605766 e!4605768)))

(declare-fun b!7773861 () Bool)

(assert (=> b!7773861 (= e!4605767 call!720547)))

(declare-fun d!2344697 () Bool)

(declare-fun res!3098734 () Bool)

(assert (=> d!2344697 (=> res!3098734 e!4605772)))

(assert (=> d!2344697 (= res!3098734 ((_ is ElementMatch!20771) r2!6217))))

(assert (=> d!2344697 (= (validRegex!11185 r2!6217) e!4605772)))

(declare-fun bm!720542 () Bool)

(assert (=> bm!720542 (= call!720548 call!720547)))

(assert (= (and d!2344697 (not res!3098734)) b!7773853))

(assert (= (and b!7773853 c!1432754) b!7773854))

(assert (= (and b!7773853 (not c!1432754)) b!7773859))

(assert (= (and b!7773854 res!3098735) b!7773861))

(assert (= (and b!7773859 c!1432755) b!7773856))

(assert (= (and b!7773859 (not c!1432755)) b!7773860))

(assert (= (and b!7773856 res!3098737) b!7773857))

(assert (= (and b!7773860 (not res!3098738)) b!7773858))

(assert (= (and b!7773858 res!3098736) b!7773855))

(assert (= (or b!7773856 b!7773858) bm!720542))

(assert (= (or b!7773857 b!7773855) bm!720541))

(assert (= (or b!7773861 bm!720542) bm!720543))

(declare-fun m!8226004 () Bool)

(assert (=> b!7773854 m!8226004))

(declare-fun m!8226006 () Bool)

(assert (=> bm!720541 m!8226006))

(declare-fun m!8226008 () Bool)

(assert (=> bm!720543 m!8226008))

(assert (=> b!7773673 d!2344697))

(declare-fun b!7773873 () Bool)

(declare-fun e!4605775 () Bool)

(declare-fun tp!2284067 () Bool)

(declare-fun tp!2284070 () Bool)

(assert (=> b!7773873 (= e!4605775 (and tp!2284067 tp!2284070))))

(assert (=> b!7773666 (= tp!2284054 e!4605775)))

(declare-fun b!7773872 () Bool)

(assert (=> b!7773872 (= e!4605775 tp_is_empty!51897)))

(declare-fun b!7773875 () Bool)

(declare-fun tp!2284068 () Bool)

(declare-fun tp!2284069 () Bool)

(assert (=> b!7773875 (= e!4605775 (and tp!2284068 tp!2284069))))

(declare-fun b!7773874 () Bool)

(declare-fun tp!2284066 () Bool)

(assert (=> b!7773874 (= e!4605775 tp!2284066)))

(assert (= (and b!7773666 ((_ is ElementMatch!20771) (reg!21100 r1!6279))) b!7773872))

(assert (= (and b!7773666 ((_ is Concat!29616) (reg!21100 r1!6279))) b!7773873))

(assert (= (and b!7773666 ((_ is Star!20771) (reg!21100 r1!6279))) b!7773874))

(assert (= (and b!7773666 ((_ is Union!20771) (reg!21100 r1!6279))) b!7773875))

(declare-fun b!7773877 () Bool)

(declare-fun e!4605776 () Bool)

(declare-fun tp!2284072 () Bool)

(declare-fun tp!2284075 () Bool)

(assert (=> b!7773877 (= e!4605776 (and tp!2284072 tp!2284075))))

(assert (=> b!7773675 (= tp!2284050 e!4605776)))

(declare-fun b!7773876 () Bool)

(assert (=> b!7773876 (= e!4605776 tp_is_empty!51897)))

(declare-fun b!7773879 () Bool)

(declare-fun tp!2284073 () Bool)

(declare-fun tp!2284074 () Bool)

(assert (=> b!7773879 (= e!4605776 (and tp!2284073 tp!2284074))))

(declare-fun b!7773878 () Bool)

(declare-fun tp!2284071 () Bool)

(assert (=> b!7773878 (= e!4605776 tp!2284071)))

(assert (= (and b!7773675 ((_ is ElementMatch!20771) (regOne!42054 r1!6279))) b!7773876))

(assert (= (and b!7773675 ((_ is Concat!29616) (regOne!42054 r1!6279))) b!7773877))

(assert (= (and b!7773675 ((_ is Star!20771) (regOne!42054 r1!6279))) b!7773878))

(assert (= (and b!7773675 ((_ is Union!20771) (regOne!42054 r1!6279))) b!7773879))

(declare-fun b!7773881 () Bool)

(declare-fun e!4605777 () Bool)

(declare-fun tp!2284077 () Bool)

(declare-fun tp!2284080 () Bool)

(assert (=> b!7773881 (= e!4605777 (and tp!2284077 tp!2284080))))

(assert (=> b!7773675 (= tp!2284052 e!4605777)))

(declare-fun b!7773880 () Bool)

(assert (=> b!7773880 (= e!4605777 tp_is_empty!51897)))

(declare-fun b!7773883 () Bool)

(declare-fun tp!2284078 () Bool)

(declare-fun tp!2284079 () Bool)

(assert (=> b!7773883 (= e!4605777 (and tp!2284078 tp!2284079))))

(declare-fun b!7773882 () Bool)

(declare-fun tp!2284076 () Bool)

(assert (=> b!7773882 (= e!4605777 tp!2284076)))

(assert (= (and b!7773675 ((_ is ElementMatch!20771) (regTwo!42054 r1!6279))) b!7773880))

(assert (= (and b!7773675 ((_ is Concat!29616) (regTwo!42054 r1!6279))) b!7773881))

(assert (= (and b!7773675 ((_ is Star!20771) (regTwo!42054 r1!6279))) b!7773882))

(assert (= (and b!7773675 ((_ is Union!20771) (regTwo!42054 r1!6279))) b!7773883))

(declare-fun b!7773885 () Bool)

(declare-fun e!4605778 () Bool)

(declare-fun tp!2284082 () Bool)

(declare-fun tp!2284085 () Bool)

(assert (=> b!7773885 (= e!4605778 (and tp!2284082 tp!2284085))))

(assert (=> b!7773665 (= tp!2284045 e!4605778)))

(declare-fun b!7773884 () Bool)

(assert (=> b!7773884 (= e!4605778 tp_is_empty!51897)))

(declare-fun b!7773887 () Bool)

(declare-fun tp!2284083 () Bool)

(declare-fun tp!2284084 () Bool)

(assert (=> b!7773887 (= e!4605778 (and tp!2284083 tp!2284084))))

(declare-fun b!7773886 () Bool)

(declare-fun tp!2284081 () Bool)

(assert (=> b!7773886 (= e!4605778 tp!2284081)))

(assert (= (and b!7773665 ((_ is ElementMatch!20771) (regOne!42055 r1!6279))) b!7773884))

(assert (= (and b!7773665 ((_ is Concat!29616) (regOne!42055 r1!6279))) b!7773885))

(assert (= (and b!7773665 ((_ is Star!20771) (regOne!42055 r1!6279))) b!7773886))

(assert (= (and b!7773665 ((_ is Union!20771) (regOne!42055 r1!6279))) b!7773887))

(declare-fun b!7773889 () Bool)

(declare-fun e!4605779 () Bool)

(declare-fun tp!2284087 () Bool)

(declare-fun tp!2284090 () Bool)

(assert (=> b!7773889 (= e!4605779 (and tp!2284087 tp!2284090))))

(assert (=> b!7773665 (= tp!2284055 e!4605779)))

(declare-fun b!7773888 () Bool)

(assert (=> b!7773888 (= e!4605779 tp_is_empty!51897)))

(declare-fun b!7773891 () Bool)

(declare-fun tp!2284088 () Bool)

(declare-fun tp!2284089 () Bool)

(assert (=> b!7773891 (= e!4605779 (and tp!2284088 tp!2284089))))

(declare-fun b!7773890 () Bool)

(declare-fun tp!2284086 () Bool)

(assert (=> b!7773890 (= e!4605779 tp!2284086)))

(assert (= (and b!7773665 ((_ is ElementMatch!20771) (regTwo!42055 r1!6279))) b!7773888))

(assert (= (and b!7773665 ((_ is Concat!29616) (regTwo!42055 r1!6279))) b!7773889))

(assert (= (and b!7773665 ((_ is Star!20771) (regTwo!42055 r1!6279))) b!7773890))

(assert (= (and b!7773665 ((_ is Union!20771) (regTwo!42055 r1!6279))) b!7773891))

(declare-fun b!7773893 () Bool)

(declare-fun e!4605780 () Bool)

(declare-fun tp!2284092 () Bool)

(declare-fun tp!2284095 () Bool)

(assert (=> b!7773893 (= e!4605780 (and tp!2284092 tp!2284095))))

(assert (=> b!7773674 (= tp!2284048 e!4605780)))

(declare-fun b!7773892 () Bool)

(assert (=> b!7773892 (= e!4605780 tp_is_empty!51897)))

(declare-fun b!7773895 () Bool)

(declare-fun tp!2284093 () Bool)

(declare-fun tp!2284094 () Bool)

(assert (=> b!7773895 (= e!4605780 (and tp!2284093 tp!2284094))))

(declare-fun b!7773894 () Bool)

(declare-fun tp!2284091 () Bool)

(assert (=> b!7773894 (= e!4605780 tp!2284091)))

(assert (= (and b!7773674 ((_ is ElementMatch!20771) (regOne!42055 r2!6217))) b!7773892))

(assert (= (and b!7773674 ((_ is Concat!29616) (regOne!42055 r2!6217))) b!7773893))

(assert (= (and b!7773674 ((_ is Star!20771) (regOne!42055 r2!6217))) b!7773894))

(assert (= (and b!7773674 ((_ is Union!20771) (regOne!42055 r2!6217))) b!7773895))

(declare-fun b!7773897 () Bool)

(declare-fun e!4605781 () Bool)

(declare-fun tp!2284097 () Bool)

(declare-fun tp!2284100 () Bool)

(assert (=> b!7773897 (= e!4605781 (and tp!2284097 tp!2284100))))

(assert (=> b!7773674 (= tp!2284053 e!4605781)))

(declare-fun b!7773896 () Bool)

(assert (=> b!7773896 (= e!4605781 tp_is_empty!51897)))

(declare-fun b!7773899 () Bool)

(declare-fun tp!2284098 () Bool)

(declare-fun tp!2284099 () Bool)

(assert (=> b!7773899 (= e!4605781 (and tp!2284098 tp!2284099))))

(declare-fun b!7773898 () Bool)

(declare-fun tp!2284096 () Bool)

(assert (=> b!7773898 (= e!4605781 tp!2284096)))

(assert (= (and b!7773674 ((_ is ElementMatch!20771) (regTwo!42055 r2!6217))) b!7773896))

(assert (= (and b!7773674 ((_ is Concat!29616) (regTwo!42055 r2!6217))) b!7773897))

(assert (= (and b!7773674 ((_ is Star!20771) (regTwo!42055 r2!6217))) b!7773898))

(assert (= (and b!7773674 ((_ is Union!20771) (regTwo!42055 r2!6217))) b!7773899))

(declare-fun b!7773904 () Bool)

(declare-fun e!4605784 () Bool)

(declare-fun tp!2284103 () Bool)

(assert (=> b!7773904 (= e!4605784 (and tp_is_empty!51897 tp!2284103))))

(assert (=> b!7773664 (= tp!2284049 e!4605784)))

(assert (= (and b!7773664 ((_ is Cons!73486) (t!388345 s!14292))) b!7773904))

(declare-fun b!7773906 () Bool)

(declare-fun e!4605785 () Bool)

(declare-fun tp!2284105 () Bool)

(declare-fun tp!2284108 () Bool)

(assert (=> b!7773906 (= e!4605785 (and tp!2284105 tp!2284108))))

(assert (=> b!7773667 (= tp!2284051 e!4605785)))

(declare-fun b!7773905 () Bool)

(assert (=> b!7773905 (= e!4605785 tp_is_empty!51897)))

(declare-fun b!7773908 () Bool)

(declare-fun tp!2284106 () Bool)

(declare-fun tp!2284107 () Bool)

(assert (=> b!7773908 (= e!4605785 (and tp!2284106 tp!2284107))))

(declare-fun b!7773907 () Bool)

(declare-fun tp!2284104 () Bool)

(assert (=> b!7773907 (= e!4605785 tp!2284104)))

(assert (= (and b!7773667 ((_ is ElementMatch!20771) (reg!21100 r2!6217))) b!7773905))

(assert (= (and b!7773667 ((_ is Concat!29616) (reg!21100 r2!6217))) b!7773906))

(assert (= (and b!7773667 ((_ is Star!20771) (reg!21100 r2!6217))) b!7773907))

(assert (= (and b!7773667 ((_ is Union!20771) (reg!21100 r2!6217))) b!7773908))

(declare-fun b!7773910 () Bool)

(declare-fun e!4605786 () Bool)

(declare-fun tp!2284110 () Bool)

(declare-fun tp!2284113 () Bool)

(assert (=> b!7773910 (= e!4605786 (and tp!2284110 tp!2284113))))

(assert (=> b!7773668 (= tp!2284047 e!4605786)))

(declare-fun b!7773909 () Bool)

(assert (=> b!7773909 (= e!4605786 tp_is_empty!51897)))

(declare-fun b!7773912 () Bool)

(declare-fun tp!2284111 () Bool)

(declare-fun tp!2284112 () Bool)

(assert (=> b!7773912 (= e!4605786 (and tp!2284111 tp!2284112))))

(declare-fun b!7773911 () Bool)

(declare-fun tp!2284109 () Bool)

(assert (=> b!7773911 (= e!4605786 tp!2284109)))

(assert (= (and b!7773668 ((_ is ElementMatch!20771) (regOne!42054 r2!6217))) b!7773909))

(assert (= (and b!7773668 ((_ is Concat!29616) (regOne!42054 r2!6217))) b!7773910))

(assert (= (and b!7773668 ((_ is Star!20771) (regOne!42054 r2!6217))) b!7773911))

(assert (= (and b!7773668 ((_ is Union!20771) (regOne!42054 r2!6217))) b!7773912))

(declare-fun b!7773914 () Bool)

(declare-fun e!4605787 () Bool)

(declare-fun tp!2284115 () Bool)

(declare-fun tp!2284118 () Bool)

(assert (=> b!7773914 (= e!4605787 (and tp!2284115 tp!2284118))))

(assert (=> b!7773668 (= tp!2284046 e!4605787)))

(declare-fun b!7773913 () Bool)

(assert (=> b!7773913 (= e!4605787 tp_is_empty!51897)))

(declare-fun b!7773916 () Bool)

(declare-fun tp!2284116 () Bool)

(declare-fun tp!2284117 () Bool)

(assert (=> b!7773916 (= e!4605787 (and tp!2284116 tp!2284117))))

(declare-fun b!7773915 () Bool)

(declare-fun tp!2284114 () Bool)

(assert (=> b!7773915 (= e!4605787 tp!2284114)))

(assert (= (and b!7773668 ((_ is ElementMatch!20771) (regTwo!42054 r2!6217))) b!7773913))

(assert (= (and b!7773668 ((_ is Concat!29616) (regTwo!42054 r2!6217))) b!7773914))

(assert (= (and b!7773668 ((_ is Star!20771) (regTwo!42054 r2!6217))) b!7773915))

(assert (= (and b!7773668 ((_ is Union!20771) (regTwo!42054 r2!6217))) b!7773916))

(check-sat (not b!7773915) (not b!7773904) (not b!7773787) (not b!7773897) (not b!7773916) (not b!7773906) (not b!7773899) (not b!7773717) (not b!7773879) (not bm!720541) (not b!7773887) (not b!7773907) tp_is_empty!51897 (not b!7773773) (not b!7773889) (not bm!720515) (not b!7773785) (not b!7773779) (not b!7773873) (not b!7773908) (not bm!720528) (not bm!720543) (not d!2344693) (not b!7773771) (not b!7773878) (not d!2344687) (not bm!720513) (not b!7773788) (not b!7773881) (not b!7773894) (not bm!720510) (not bm!720527) (not b!7773895) (not b!7773877) (not b!7773886) (not b!7773874) (not b!7773695) (not b!7773890) (not b!7773912) (not b!7773875) (not bm!720539) (not b!7773914) (not b!7773911) (not b!7773850) (not b!7773781) (not b!7773768) (not bm!720538) (not b!7773882) (not b!7773893) (not b!7773767) (not b!7773910) (not b!7773883) (not b!7773885) (not b!7773793) (not b!7773898) (not b!7773891) (not d!2344691) (not bm!720512) (not b!7773854) (not b!7773774) (not b!7773782) (not d!2344695))
(check-sat)
