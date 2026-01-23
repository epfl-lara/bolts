; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13778 () Bool)

(assert start!13778)

(declare-fun b!132662 () Bool)

(declare-fun e!76704 () Bool)

(declare-fun e!76700 () Bool)

(assert (=> b!132662 (= e!76704 e!76700)))

(declare-fun res!61829 () Bool)

(assert (=> b!132662 (=> res!61829 e!76700)))

(declare-datatypes ((B!777 0))(
  ( (B!778 (val!874 Int)) )
))
(declare-datatypes ((List!2192 0))(
  ( (Nil!2186) (Cons!2186 (h!7583 B!777) (t!22778 List!2192)) )
))
(declare-fun lt!40138 () List!2192)

(declare-fun lt!40136 () List!2192)

(declare-fun subseq!53 (List!2192 List!2192) Bool)

(assert (=> b!132662 (= res!61829 (not (subseq!53 lt!40138 lt!40136)))))

(declare-fun lt!40140 () List!2192)

(declare-fun newList!20 () List!2192)

(declare-fun ++!462 (List!2192 List!2192) List!2192)

(assert (=> b!132662 (= lt!40136 (++!462 lt!40140 (t!22778 newList!20)))))

(declare-fun b!132663 () Bool)

(declare-fun e!76697 () Bool)

(declare-fun baseList!9 () List!2192)

(declare-fun contains!366 (List!2192 B!777) Bool)

(assert (=> b!132663 (= e!76697 (not (contains!366 baseList!9 (h!7583 newList!20))))))

(declare-fun b!132664 () Bool)

(declare-fun res!61835 () Bool)

(declare-fun e!76694 () Bool)

(assert (=> b!132664 (=> (not res!61835) (not e!76694))))

(get-info :version)

(assert (=> b!132664 (= res!61835 ((_ is Cons!2186) newList!20))))

(declare-fun b!132665 () Bool)

(declare-fun e!76702 () Bool)

(declare-fun e!76698 () Bool)

(assert (=> b!132665 (= e!76702 e!76698)))

(declare-fun res!61825 () Bool)

(assert (=> b!132665 (=> (not res!61825) (not e!76698))))

(declare-fun lt!40141 () List!2192)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!299 (List!2192) (InoxSet B!777))

(assert (=> b!132665 (= res!61825 (= (content!299 lt!40141) (content!299 lt!40138)))))

(assert (=> b!132665 (= lt!40141 (++!462 lt!40140 (t!22778 newList!20)))))

(declare-fun res!61836 () Bool)

(assert (=> start!13778 (=> (not res!61836) (not e!76694))))

(declare-fun noDuplicate!82 (List!2192) Bool)

(assert (=> start!13778 (= res!61836 (noDuplicate!82 baseList!9))))

(assert (=> start!13778 e!76694))

(declare-fun e!76703 () Bool)

(assert (=> start!13778 e!76703))

(declare-fun e!76699 () Bool)

(assert (=> start!13778 e!76699))

(declare-fun b!132666 () Bool)

(declare-fun res!61834 () Bool)

(assert (=> b!132666 (=> (not res!61834) (not e!76694))))

(assert (=> b!132666 (= res!61834 (not (contains!366 baseList!9 (h!7583 newList!20))))))

(declare-fun b!132667 () Bool)

(declare-fun e!76696 () Bool)

(declare-fun lt!40134 () List!2192)

(assert (=> b!132667 (= e!76696 (subseq!53 lt!40138 lt!40134))))

(declare-fun b!132668 () Bool)

(declare-fun e!76701 () Bool)

(assert (=> b!132668 (= e!76701 e!76696)))

(declare-fun res!61828 () Bool)

(assert (=> b!132668 (=> (not res!61828) (not e!76696))))

(declare-fun lt!40135 () (InoxSet B!777))

(assert (=> b!132668 (= res!61828 (= (content!299 lt!40134) lt!40135))))

(assert (=> b!132668 (= lt!40134 (++!462 baseList!9 newList!20))))

(declare-fun e!76695 () Bool)

(assert (=> b!132668 e!76695))

(declare-fun res!61837 () Bool)

(assert (=> b!132668 (=> (not res!61837) (not e!76695))))

(declare-fun isPrefix!181 (List!2192 List!2192) Bool)

(assert (=> b!132668 (= res!61837 (isPrefix!181 baseList!9 lt!40138))))

(declare-datatypes ((Unit!1752 0))(
  ( (Unit!1753) )
))
(declare-fun lt!40139 () Unit!1752)

(declare-fun lemmaRemoveLastConcatenatedPrefixStillPrefix!6 (List!2192 B!777 List!2192) Unit!1752)

(assert (=> b!132668 (= lt!40139 (lemmaRemoveLastConcatenatedPrefixStillPrefix!6 baseList!9 (h!7583 newList!20) lt!40138))))

(declare-fun b!132669 () Bool)

(declare-fun tp_is_empty!1421 () Bool)

(declare-fun tp!70483 () Bool)

(assert (=> b!132669 (= e!76703 (and tp_is_empty!1421 tp!70483))))

(declare-fun b!132670 () Bool)

(assert (=> b!132670 (= e!76698 (isPrefix!181 lt!40140 lt!40138))))

(declare-fun b!132671 () Bool)

(declare-fun e!76705 () Bool)

(assert (=> b!132671 (= e!76694 (not e!76705))))

(declare-fun res!61832 () Bool)

(assert (=> b!132671 (=> res!61832 e!76705)))

(declare-fun lt!40137 () Bool)

(assert (=> b!132671 (= res!61832 lt!40137)))

(assert (=> b!132671 e!76702))

(declare-fun res!61833 () Bool)

(assert (=> b!132671 (=> (not res!61833) (not e!76702))))

(assert (=> b!132671 (= res!61833 (not lt!40137))))

(assert (=> b!132671 (= lt!40137 (not (noDuplicate!82 lt!40138)))))

(declare-fun concatWithoutDuplicates!38 (List!2192 List!2192) List!2192)

(assert (=> b!132671 (= lt!40138 (concatWithoutDuplicates!38 lt!40140 (t!22778 newList!20)))))

(assert (=> b!132671 (noDuplicate!82 lt!40140)))

(declare-fun lt!40133 () Unit!1752)

(declare-fun lemmaAppendNewElementElementPreserves!22 (List!2192 B!777) Unit!1752)

(assert (=> b!132671 (= lt!40133 (lemmaAppendNewElementElementPreserves!22 baseList!9 (h!7583 newList!20)))))

(assert (=> b!132671 (isPrefix!181 baseList!9 lt!40140)))

(declare-fun lt!40129 () List!2192)

(assert (=> b!132671 (= lt!40140 (++!462 baseList!9 lt!40129))))

(declare-fun lt!40132 () Unit!1752)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!104 (List!2192 List!2192) Unit!1752)

(assert (=> b!132671 (= lt!40132 (lemmaConcatTwoListThenFirstIsPrefix!104 baseList!9 lt!40129))))

(assert (=> b!132671 (= lt!40129 (Cons!2186 (h!7583 newList!20) Nil!2186))))

(declare-fun b!132672 () Bool)

(declare-fun res!61827 () Bool)

(assert (=> b!132672 (=> (not res!61827) (not e!76694))))

(assert (=> b!132672 (= res!61827 e!76697)))

(declare-fun res!61831 () Bool)

(assert (=> b!132672 (=> res!61831 e!76697)))

(assert (=> b!132672 (= res!61831 (not ((_ is Cons!2186) newList!20)))))

(declare-fun b!132673 () Bool)

(assert (=> b!132673 (= e!76695 (= (content!299 lt!40136) lt!40135))))

(declare-fun b!132674 () Bool)

(declare-fun tp!70484 () Bool)

(assert (=> b!132674 (= e!76699 (and tp_is_empty!1421 tp!70484))))

(declare-fun b!132675 () Bool)

(declare-fun res!61826 () Bool)

(assert (=> b!132675 (=> res!61826 e!76701)))

(assert (=> b!132675 (= res!61826 (not (isPrefix!181 lt!40140 lt!40138)))))

(declare-fun b!132676 () Bool)

(declare-fun res!61830 () Bool)

(assert (=> b!132676 (=> (not res!61830) (not e!76698))))

(assert (=> b!132676 (= res!61830 (subseq!53 lt!40138 lt!40141))))

(declare-fun b!132677 () Bool)

(assert (=> b!132677 (= e!76700 e!76701)))

(declare-fun res!61824 () Bool)

(assert (=> b!132677 (=> res!61824 e!76701)))

(declare-fun lt!40142 () List!2192)

(assert (=> b!132677 (= res!61824 (not (subseq!53 lt!40138 lt!40142)))))

(assert (=> b!132677 (= lt!40136 lt!40142)))

(assert (=> b!132677 (= lt!40142 (++!462 baseList!9 (++!462 lt!40129 (t!22778 newList!20))))))

(declare-fun lt!40130 () Unit!1752)

(declare-fun lemmaConcatAssociativity!142 (List!2192 List!2192 List!2192) Unit!1752)

(assert (=> b!132677 (= lt!40130 (lemmaConcatAssociativity!142 baseList!9 lt!40129 (t!22778 newList!20)))))

(declare-fun b!132678 () Bool)

(assert (=> b!132678 (= e!76705 e!76704)))

(declare-fun res!61838 () Bool)

(assert (=> b!132678 (=> res!61838 e!76704)))

(declare-fun lt!40131 () (InoxSet B!777))

(assert (=> b!132678 (= res!61838 (not (= lt!40131 lt!40135)))))

(assert (=> b!132678 (= lt!40135 (content!299 lt!40138))))

(assert (=> b!132678 (= lt!40131 (content!299 (++!462 lt!40140 newList!20)))))

(assert (= (and start!13778 res!61836) b!132672))

(assert (= (and b!132672 (not res!61831)) b!132663))

(assert (= (and b!132672 res!61827) b!132664))

(assert (= (and b!132664 res!61835) b!132666))

(assert (= (and b!132666 res!61834) b!132671))

(assert (= (and b!132671 res!61833) b!132665))

(assert (= (and b!132665 res!61825) b!132676))

(assert (= (and b!132676 res!61830) b!132670))

(assert (= (and b!132671 (not res!61832)) b!132678))

(assert (= (and b!132678 (not res!61838)) b!132662))

(assert (= (and b!132662 (not res!61829)) b!132677))

(assert (= (and b!132677 (not res!61824)) b!132675))

(assert (= (and b!132675 (not res!61826)) b!132668))

(assert (= (and b!132668 res!61837) b!132673))

(assert (= (and b!132668 res!61828) b!132667))

(assert (= (and start!13778 ((_ is Cons!2186) baseList!9)) b!132669))

(assert (= (and start!13778 ((_ is Cons!2186) newList!20)) b!132674))

(declare-fun m!117527 () Bool)

(assert (=> b!132663 m!117527))

(declare-fun m!117529 () Bool)

(assert (=> b!132665 m!117529))

(declare-fun m!117531 () Bool)

(assert (=> b!132665 m!117531))

(declare-fun m!117533 () Bool)

(assert (=> b!132665 m!117533))

(declare-fun m!117535 () Bool)

(assert (=> b!132670 m!117535))

(assert (=> b!132666 m!117527))

(declare-fun m!117537 () Bool)

(assert (=> b!132676 m!117537))

(declare-fun m!117539 () Bool)

(assert (=> b!132662 m!117539))

(assert (=> b!132662 m!117533))

(declare-fun m!117541 () Bool)

(assert (=> b!132667 m!117541))

(declare-fun m!117543 () Bool)

(assert (=> b!132677 m!117543))

(declare-fun m!117545 () Bool)

(assert (=> b!132677 m!117545))

(assert (=> b!132677 m!117545))

(declare-fun m!117547 () Bool)

(assert (=> b!132677 m!117547))

(declare-fun m!117549 () Bool)

(assert (=> b!132677 m!117549))

(declare-fun m!117551 () Bool)

(assert (=> b!132668 m!117551))

(declare-fun m!117553 () Bool)

(assert (=> b!132668 m!117553))

(declare-fun m!117555 () Bool)

(assert (=> b!132668 m!117555))

(declare-fun m!117557 () Bool)

(assert (=> b!132668 m!117557))

(assert (=> b!132675 m!117535))

(declare-fun m!117559 () Bool)

(assert (=> start!13778 m!117559))

(declare-fun m!117561 () Bool)

(assert (=> b!132673 m!117561))

(declare-fun m!117563 () Bool)

(assert (=> b!132671 m!117563))

(declare-fun m!117565 () Bool)

(assert (=> b!132671 m!117565))

(declare-fun m!117567 () Bool)

(assert (=> b!132671 m!117567))

(declare-fun m!117569 () Bool)

(assert (=> b!132671 m!117569))

(declare-fun m!117571 () Bool)

(assert (=> b!132671 m!117571))

(declare-fun m!117573 () Bool)

(assert (=> b!132671 m!117573))

(declare-fun m!117575 () Bool)

(assert (=> b!132671 m!117575))

(assert (=> b!132678 m!117531))

(declare-fun m!117577 () Bool)

(assert (=> b!132678 m!117577))

(assert (=> b!132678 m!117577))

(declare-fun m!117579 () Bool)

(assert (=> b!132678 m!117579))

(check-sat (not b!132666) (not b!132677) (not b!132668) (not b!132665) (not b!132675) (not b!132670) (not b!132669) (not b!132671) (not b!132667) (not b!132673) (not b!132678) (not b!132674) (not b!132676) (not b!132662) (not start!13778) (not b!132663) tp_is_empty!1421)
(check-sat)
(get-model)

(declare-fun d!31526 () Bool)

(declare-fun res!61848 () Bool)

(declare-fun e!76714 () Bool)

(assert (=> d!31526 (=> res!61848 e!76714)))

(assert (=> d!31526 (= res!61848 ((_ is Nil!2186) lt!40138))))

(assert (=> d!31526 (= (subseq!53 lt!40138 lt!40141) e!76714)))

(declare-fun b!132688 () Bool)

(declare-fun e!76717 () Bool)

(declare-fun e!76715 () Bool)

(assert (=> b!132688 (= e!76717 e!76715)))

(declare-fun res!61849 () Bool)

(assert (=> b!132688 (=> res!61849 e!76715)))

(declare-fun e!76716 () Bool)

(assert (=> b!132688 (= res!61849 e!76716)))

(declare-fun res!61850 () Bool)

(assert (=> b!132688 (=> (not res!61850) (not e!76716))))

(assert (=> b!132688 (= res!61850 (= (h!7583 lt!40138) (h!7583 lt!40141)))))

(declare-fun b!132687 () Bool)

(assert (=> b!132687 (= e!76714 e!76717)))

(declare-fun res!61847 () Bool)

(assert (=> b!132687 (=> (not res!61847) (not e!76717))))

(assert (=> b!132687 (= res!61847 ((_ is Cons!2186) lt!40141))))

(declare-fun b!132690 () Bool)

(assert (=> b!132690 (= e!76715 (subseq!53 lt!40138 (t!22778 lt!40141)))))

(declare-fun b!132689 () Bool)

(assert (=> b!132689 (= e!76716 (subseq!53 (t!22778 lt!40138) (t!22778 lt!40141)))))

(assert (= (and d!31526 (not res!61848)) b!132687))

(assert (= (and b!132687 res!61847) b!132688))

(assert (= (and b!132688 res!61850) b!132689))

(assert (= (and b!132688 (not res!61849)) b!132690))

(declare-fun m!117581 () Bool)

(assert (=> b!132690 m!117581))

(declare-fun m!117583 () Bool)

(assert (=> b!132689 m!117583))

(assert (=> b!132676 d!31526))

(declare-fun d!31528 () Bool)

(declare-fun c!28515 () Bool)

(assert (=> d!31528 (= c!28515 ((_ is Nil!2186) lt!40141))))

(declare-fun e!76720 () (InoxSet B!777))

(assert (=> d!31528 (= (content!299 lt!40141) e!76720)))

(declare-fun b!132695 () Bool)

(assert (=> b!132695 (= e!76720 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132696 () Bool)

(assert (=> b!132696 (= e!76720 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40141) true) (content!299 (t!22778 lt!40141))))))

(assert (= (and d!31528 c!28515) b!132695))

(assert (= (and d!31528 (not c!28515)) b!132696))

(declare-fun m!117585 () Bool)

(assert (=> b!132696 m!117585))

(declare-fun m!117587 () Bool)

(assert (=> b!132696 m!117587))

(assert (=> b!132665 d!31528))

(declare-fun d!31532 () Bool)

(declare-fun c!28516 () Bool)

(assert (=> d!31532 (= c!28516 ((_ is Nil!2186) lt!40138))))

(declare-fun e!76721 () (InoxSet B!777))

(assert (=> d!31532 (= (content!299 lt!40138) e!76721)))

(declare-fun b!132697 () Bool)

(assert (=> b!132697 (= e!76721 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132698 () Bool)

(assert (=> b!132698 (= e!76721 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40138) true) (content!299 (t!22778 lt!40138))))))

(assert (= (and d!31532 c!28516) b!132697))

(assert (= (and d!31532 (not c!28516)) b!132698))

(declare-fun m!117589 () Bool)

(assert (=> b!132698 m!117589))

(declare-fun m!117591 () Bool)

(assert (=> b!132698 m!117591))

(assert (=> b!132665 d!31532))

(declare-fun b!132716 () Bool)

(declare-fun e!76732 () Bool)

(declare-fun lt!40150 () List!2192)

(assert (=> b!132716 (= e!76732 (or (not (= (t!22778 newList!20) Nil!2186)) (= lt!40150 lt!40140)))))

(declare-fun b!132713 () Bool)

(declare-fun e!76733 () List!2192)

(assert (=> b!132713 (= e!76733 (t!22778 newList!20))))

(declare-fun d!31534 () Bool)

(assert (=> d!31534 e!76732))

(declare-fun res!61862 () Bool)

(assert (=> d!31534 (=> (not res!61862) (not e!76732))))

(assert (=> d!31534 (= res!61862 (= (content!299 lt!40150) ((_ map or) (content!299 lt!40140) (content!299 (t!22778 newList!20)))))))

(assert (=> d!31534 (= lt!40150 e!76733)))

(declare-fun c!28519 () Bool)

(assert (=> d!31534 (= c!28519 ((_ is Nil!2186) lt!40140))))

(assert (=> d!31534 (= (++!462 lt!40140 (t!22778 newList!20)) lt!40150)))

(declare-fun b!132714 () Bool)

(assert (=> b!132714 (= e!76733 (Cons!2186 (h!7583 lt!40140) (++!462 (t!22778 lt!40140) (t!22778 newList!20))))))

(declare-fun b!132715 () Bool)

(declare-fun res!61861 () Bool)

(assert (=> b!132715 (=> (not res!61861) (not e!76732))))

(declare-fun size!1989 (List!2192) Int)

(assert (=> b!132715 (= res!61861 (= (size!1989 lt!40150) (+ (size!1989 lt!40140) (size!1989 (t!22778 newList!20)))))))

(assert (= (and d!31534 c!28519) b!132713))

(assert (= (and d!31534 (not c!28519)) b!132714))

(assert (= (and d!31534 res!61862) b!132715))

(assert (= (and b!132715 res!61861) b!132716))

(declare-fun m!117599 () Bool)

(assert (=> d!31534 m!117599))

(declare-fun m!117601 () Bool)

(assert (=> d!31534 m!117601))

(declare-fun m!117603 () Bool)

(assert (=> d!31534 m!117603))

(declare-fun m!117605 () Bool)

(assert (=> b!132714 m!117605))

(declare-fun m!117607 () Bool)

(assert (=> b!132715 m!117607))

(declare-fun m!117609 () Bool)

(assert (=> b!132715 m!117609))

(declare-fun m!117611 () Bool)

(assert (=> b!132715 m!117611))

(assert (=> b!132665 d!31534))

(declare-fun d!31538 () Bool)

(declare-fun res!61872 () Bool)

(declare-fun e!76740 () Bool)

(assert (=> d!31538 (=> res!61872 e!76740)))

(assert (=> d!31538 (= res!61872 ((_ is Nil!2186) lt!40138))))

(assert (=> d!31538 (= (subseq!53 lt!40138 lt!40134) e!76740)))

(declare-fun b!132726 () Bool)

(declare-fun e!76743 () Bool)

(declare-fun e!76741 () Bool)

(assert (=> b!132726 (= e!76743 e!76741)))

(declare-fun res!61873 () Bool)

(assert (=> b!132726 (=> res!61873 e!76741)))

(declare-fun e!76742 () Bool)

(assert (=> b!132726 (= res!61873 e!76742)))

(declare-fun res!61874 () Bool)

(assert (=> b!132726 (=> (not res!61874) (not e!76742))))

(assert (=> b!132726 (= res!61874 (= (h!7583 lt!40138) (h!7583 lt!40134)))))

(declare-fun b!132725 () Bool)

(assert (=> b!132725 (= e!76740 e!76743)))

(declare-fun res!61871 () Bool)

(assert (=> b!132725 (=> (not res!61871) (not e!76743))))

(assert (=> b!132725 (= res!61871 ((_ is Cons!2186) lt!40134))))

(declare-fun b!132728 () Bool)

(assert (=> b!132728 (= e!76741 (subseq!53 lt!40138 (t!22778 lt!40134)))))

(declare-fun b!132727 () Bool)

(assert (=> b!132727 (= e!76742 (subseq!53 (t!22778 lt!40138) (t!22778 lt!40134)))))

(assert (= (and d!31538 (not res!61872)) b!132725))

(assert (= (and b!132725 res!61871) b!132726))

(assert (= (and b!132726 res!61874) b!132727))

(assert (= (and b!132726 (not res!61873)) b!132728))

(declare-fun m!117613 () Bool)

(assert (=> b!132728 m!117613))

(declare-fun m!117615 () Bool)

(assert (=> b!132727 m!117615))

(assert (=> b!132667 d!31538))

(declare-fun d!31540 () Bool)

(declare-fun res!61883 () Bool)

(declare-fun e!76751 () Bool)

(assert (=> d!31540 (=> res!61883 e!76751)))

(assert (=> d!31540 (= res!61883 ((_ is Nil!2186) baseList!9))))

(assert (=> d!31540 (= (noDuplicate!82 baseList!9) e!76751)))

(declare-fun b!132737 () Bool)

(declare-fun e!76752 () Bool)

(assert (=> b!132737 (= e!76751 e!76752)))

(declare-fun res!61884 () Bool)

(assert (=> b!132737 (=> (not res!61884) (not e!76752))))

(assert (=> b!132737 (= res!61884 (not (contains!366 (t!22778 baseList!9) (h!7583 baseList!9))))))

(declare-fun b!132738 () Bool)

(assert (=> b!132738 (= e!76752 (noDuplicate!82 (t!22778 baseList!9)))))

(assert (= (and d!31540 (not res!61883)) b!132737))

(assert (= (and b!132737 res!61884) b!132738))

(declare-fun m!117631 () Bool)

(assert (=> b!132737 m!117631))

(declare-fun m!117633 () Bool)

(assert (=> b!132738 m!117633))

(assert (=> start!13778 d!31540))

(declare-fun d!31544 () Bool)

(declare-fun res!61886 () Bool)

(declare-fun e!76755 () Bool)

(assert (=> d!31544 (=> res!61886 e!76755)))

(assert (=> d!31544 (= res!61886 ((_ is Nil!2186) lt!40138))))

(assert (=> d!31544 (= (subseq!53 lt!40138 lt!40142) e!76755)))

(declare-fun b!132744 () Bool)

(declare-fun e!76758 () Bool)

(declare-fun e!76756 () Bool)

(assert (=> b!132744 (= e!76758 e!76756)))

(declare-fun res!61887 () Bool)

(assert (=> b!132744 (=> res!61887 e!76756)))

(declare-fun e!76757 () Bool)

(assert (=> b!132744 (= res!61887 e!76757)))

(declare-fun res!61888 () Bool)

(assert (=> b!132744 (=> (not res!61888) (not e!76757))))

(assert (=> b!132744 (= res!61888 (= (h!7583 lt!40138) (h!7583 lt!40142)))))

(declare-fun b!132743 () Bool)

(assert (=> b!132743 (= e!76755 e!76758)))

(declare-fun res!61885 () Bool)

(assert (=> b!132743 (=> (not res!61885) (not e!76758))))

(assert (=> b!132743 (= res!61885 ((_ is Cons!2186) lt!40142))))

(declare-fun b!132746 () Bool)

(assert (=> b!132746 (= e!76756 (subseq!53 lt!40138 (t!22778 lt!40142)))))

(declare-fun b!132745 () Bool)

(assert (=> b!132745 (= e!76757 (subseq!53 (t!22778 lt!40138) (t!22778 lt!40142)))))

(assert (= (and d!31544 (not res!61886)) b!132743))

(assert (= (and b!132743 res!61885) b!132744))

(assert (= (and b!132744 res!61888) b!132745))

(assert (= (and b!132744 (not res!61887)) b!132746))

(declare-fun m!117635 () Bool)

(assert (=> b!132746 m!117635))

(declare-fun m!117637 () Bool)

(assert (=> b!132745 m!117637))

(assert (=> b!132677 d!31544))

(declare-fun lt!40152 () List!2192)

(declare-fun b!132750 () Bool)

(declare-fun e!76759 () Bool)

(assert (=> b!132750 (= e!76759 (or (not (= (++!462 lt!40129 (t!22778 newList!20)) Nil!2186)) (= lt!40152 baseList!9)))))

(declare-fun b!132747 () Bool)

(declare-fun e!76760 () List!2192)

(assert (=> b!132747 (= e!76760 (++!462 lt!40129 (t!22778 newList!20)))))

(declare-fun d!31546 () Bool)

(assert (=> d!31546 e!76759))

(declare-fun res!61890 () Bool)

(assert (=> d!31546 (=> (not res!61890) (not e!76759))))

(assert (=> d!31546 (= res!61890 (= (content!299 lt!40152) ((_ map or) (content!299 baseList!9) (content!299 (++!462 lt!40129 (t!22778 newList!20))))))))

(assert (=> d!31546 (= lt!40152 e!76760)))

(declare-fun c!28522 () Bool)

(assert (=> d!31546 (= c!28522 ((_ is Nil!2186) baseList!9))))

(assert (=> d!31546 (= (++!462 baseList!9 (++!462 lt!40129 (t!22778 newList!20))) lt!40152)))

(declare-fun b!132748 () Bool)

(assert (=> b!132748 (= e!76760 (Cons!2186 (h!7583 baseList!9) (++!462 (t!22778 baseList!9) (++!462 lt!40129 (t!22778 newList!20)))))))

(declare-fun b!132749 () Bool)

(declare-fun res!61889 () Bool)

(assert (=> b!132749 (=> (not res!61889) (not e!76759))))

(assert (=> b!132749 (= res!61889 (= (size!1989 lt!40152) (+ (size!1989 baseList!9) (size!1989 (++!462 lt!40129 (t!22778 newList!20))))))))

(assert (= (and d!31546 c!28522) b!132747))

(assert (= (and d!31546 (not c!28522)) b!132748))

(assert (= (and d!31546 res!61890) b!132749))

(assert (= (and b!132749 res!61889) b!132750))

(declare-fun m!117639 () Bool)

(assert (=> d!31546 m!117639))

(declare-fun m!117641 () Bool)

(assert (=> d!31546 m!117641))

(assert (=> d!31546 m!117545))

(declare-fun m!117643 () Bool)

(assert (=> d!31546 m!117643))

(assert (=> b!132748 m!117545))

(declare-fun m!117645 () Bool)

(assert (=> b!132748 m!117645))

(declare-fun m!117647 () Bool)

(assert (=> b!132749 m!117647))

(declare-fun m!117649 () Bool)

(assert (=> b!132749 m!117649))

(assert (=> b!132749 m!117545))

(declare-fun m!117651 () Bool)

(assert (=> b!132749 m!117651))

(assert (=> b!132677 d!31546))

(declare-fun b!132756 () Bool)

(declare-fun lt!40153 () List!2192)

(declare-fun e!76762 () Bool)

(assert (=> b!132756 (= e!76762 (or (not (= (t!22778 newList!20) Nil!2186)) (= lt!40153 lt!40129)))))

(declare-fun b!132753 () Bool)

(declare-fun e!76763 () List!2192)

(assert (=> b!132753 (= e!76763 (t!22778 newList!20))))

(declare-fun d!31548 () Bool)

(assert (=> d!31548 e!76762))

(declare-fun res!61892 () Bool)

(assert (=> d!31548 (=> (not res!61892) (not e!76762))))

(assert (=> d!31548 (= res!61892 (= (content!299 lt!40153) ((_ map or) (content!299 lt!40129) (content!299 (t!22778 newList!20)))))))

(assert (=> d!31548 (= lt!40153 e!76763)))

(declare-fun c!28524 () Bool)

(assert (=> d!31548 (= c!28524 ((_ is Nil!2186) lt!40129))))

(assert (=> d!31548 (= (++!462 lt!40129 (t!22778 newList!20)) lt!40153)))

(declare-fun b!132754 () Bool)

(assert (=> b!132754 (= e!76763 (Cons!2186 (h!7583 lt!40129) (++!462 (t!22778 lt!40129) (t!22778 newList!20))))))

(declare-fun b!132755 () Bool)

(declare-fun res!61891 () Bool)

(assert (=> b!132755 (=> (not res!61891) (not e!76762))))

(assert (=> b!132755 (= res!61891 (= (size!1989 lt!40153) (+ (size!1989 lt!40129) (size!1989 (t!22778 newList!20)))))))

(assert (= (and d!31548 c!28524) b!132753))

(assert (= (and d!31548 (not c!28524)) b!132754))

(assert (= (and d!31548 res!61892) b!132755))

(assert (= (and b!132755 res!61891) b!132756))

(declare-fun m!117659 () Bool)

(assert (=> d!31548 m!117659))

(declare-fun m!117663 () Bool)

(assert (=> d!31548 m!117663))

(assert (=> d!31548 m!117603))

(declare-fun m!117665 () Bool)

(assert (=> b!132754 m!117665))

(declare-fun m!117667 () Bool)

(assert (=> b!132755 m!117667))

(declare-fun m!117669 () Bool)

(assert (=> b!132755 m!117669))

(assert (=> b!132755 m!117611))

(assert (=> b!132677 d!31548))

(declare-fun d!31554 () Bool)

(assert (=> d!31554 (= (++!462 (++!462 baseList!9 lt!40129) (t!22778 newList!20)) (++!462 baseList!9 (++!462 lt!40129 (t!22778 newList!20))))))

(declare-fun lt!40156 () Unit!1752)

(declare-fun choose!1691 (List!2192 List!2192 List!2192) Unit!1752)

(assert (=> d!31554 (= lt!40156 (choose!1691 baseList!9 lt!40129 (t!22778 newList!20)))))

(assert (=> d!31554 (= (lemmaConcatAssociativity!142 baseList!9 lt!40129 (t!22778 newList!20)) lt!40156)))

(declare-fun bs!12660 () Bool)

(assert (= bs!12660 d!31554))

(assert (=> bs!12660 m!117545))

(assert (=> bs!12660 m!117547))

(assert (=> bs!12660 m!117545))

(assert (=> bs!12660 m!117575))

(declare-fun m!117671 () Bool)

(assert (=> bs!12660 m!117671))

(declare-fun m!117673 () Bool)

(assert (=> bs!12660 m!117673))

(assert (=> bs!12660 m!117575))

(assert (=> b!132677 d!31554))

(declare-fun d!31556 () Bool)

(declare-fun lt!40162 () Bool)

(assert (=> d!31556 (= lt!40162 (select (content!299 baseList!9) (h!7583 newList!20)))))

(declare-fun e!76775 () Bool)

(assert (=> d!31556 (= lt!40162 e!76775)))

(declare-fun res!61904 () Bool)

(assert (=> d!31556 (=> (not res!61904) (not e!76775))))

(assert (=> d!31556 (= res!61904 ((_ is Cons!2186) baseList!9))))

(assert (=> d!31556 (= (contains!366 baseList!9 (h!7583 newList!20)) lt!40162)))

(declare-fun b!132775 () Bool)

(declare-fun e!76776 () Bool)

(assert (=> b!132775 (= e!76775 e!76776)))

(declare-fun res!61903 () Bool)

(assert (=> b!132775 (=> res!61903 e!76776)))

(assert (=> b!132775 (= res!61903 (= (h!7583 baseList!9) (h!7583 newList!20)))))

(declare-fun b!132776 () Bool)

(assert (=> b!132776 (= e!76776 (contains!366 (t!22778 baseList!9) (h!7583 newList!20)))))

(assert (= (and d!31556 res!61904) b!132775))

(assert (= (and b!132775 (not res!61903)) b!132776))

(assert (=> d!31556 m!117641))

(declare-fun m!117687 () Bool)

(assert (=> d!31556 m!117687))

(declare-fun m!117689 () Bool)

(assert (=> b!132776 m!117689))

(assert (=> b!132666 d!31556))

(declare-fun d!31560 () Bool)

(declare-fun c!28529 () Bool)

(assert (=> d!31560 (= c!28529 ((_ is Nil!2186) lt!40134))))

(declare-fun e!76777 () (InoxSet B!777))

(assert (=> d!31560 (= (content!299 lt!40134) e!76777)))

(declare-fun b!132777 () Bool)

(assert (=> b!132777 (= e!76777 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132778 () Bool)

(assert (=> b!132778 (= e!76777 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40134) true) (content!299 (t!22778 lt!40134))))))

(assert (= (and d!31560 c!28529) b!132777))

(assert (= (and d!31560 (not c!28529)) b!132778))

(declare-fun m!117691 () Bool)

(assert (=> b!132778 m!117691))

(declare-fun m!117693 () Bool)

(assert (=> b!132778 m!117693))

(assert (=> b!132668 d!31560))

(declare-fun b!132782 () Bool)

(declare-fun lt!40163 () List!2192)

(declare-fun e!76778 () Bool)

(assert (=> b!132782 (= e!76778 (or (not (= newList!20 Nil!2186)) (= lt!40163 baseList!9)))))

(declare-fun b!132779 () Bool)

(declare-fun e!76779 () List!2192)

(assert (=> b!132779 (= e!76779 newList!20)))

(declare-fun d!31562 () Bool)

(assert (=> d!31562 e!76778))

(declare-fun res!61906 () Bool)

(assert (=> d!31562 (=> (not res!61906) (not e!76778))))

(assert (=> d!31562 (= res!61906 (= (content!299 lt!40163) ((_ map or) (content!299 baseList!9) (content!299 newList!20))))))

(assert (=> d!31562 (= lt!40163 e!76779)))

(declare-fun c!28530 () Bool)

(assert (=> d!31562 (= c!28530 ((_ is Nil!2186) baseList!9))))

(assert (=> d!31562 (= (++!462 baseList!9 newList!20) lt!40163)))

(declare-fun b!132780 () Bool)

(assert (=> b!132780 (= e!76779 (Cons!2186 (h!7583 baseList!9) (++!462 (t!22778 baseList!9) newList!20)))))

(declare-fun b!132781 () Bool)

(declare-fun res!61905 () Bool)

(assert (=> b!132781 (=> (not res!61905) (not e!76778))))

(assert (=> b!132781 (= res!61905 (= (size!1989 lt!40163) (+ (size!1989 baseList!9) (size!1989 newList!20))))))

(assert (= (and d!31562 c!28530) b!132779))

(assert (= (and d!31562 (not c!28530)) b!132780))

(assert (= (and d!31562 res!61906) b!132781))

(assert (= (and b!132781 res!61905) b!132782))

(declare-fun m!117695 () Bool)

(assert (=> d!31562 m!117695))

(assert (=> d!31562 m!117641))

(declare-fun m!117697 () Bool)

(assert (=> d!31562 m!117697))

(declare-fun m!117699 () Bool)

(assert (=> b!132780 m!117699))

(declare-fun m!117701 () Bool)

(assert (=> b!132781 m!117701))

(assert (=> b!132781 m!117649))

(declare-fun m!117703 () Bool)

(assert (=> b!132781 m!117703))

(assert (=> b!132668 d!31562))

(declare-fun b!132804 () Bool)

(declare-fun e!76794 () Bool)

(declare-fun e!76795 () Bool)

(assert (=> b!132804 (= e!76794 e!76795)))

(declare-fun res!61930 () Bool)

(assert (=> b!132804 (=> (not res!61930) (not e!76795))))

(assert (=> b!132804 (= res!61930 (not ((_ is Nil!2186) lt!40138)))))

(declare-fun b!132805 () Bool)

(declare-fun res!61929 () Bool)

(assert (=> b!132805 (=> (not res!61929) (not e!76795))))

(declare-fun head!528 (List!2192) B!777)

(assert (=> b!132805 (= res!61929 (= (head!528 baseList!9) (head!528 lt!40138)))))

(declare-fun b!132807 () Bool)

(declare-fun e!76793 () Bool)

(assert (=> b!132807 (= e!76793 (>= (size!1989 lt!40138) (size!1989 baseList!9)))))

(declare-fun d!31564 () Bool)

(assert (=> d!31564 e!76793))

(declare-fun res!61928 () Bool)

(assert (=> d!31564 (=> res!61928 e!76793)))

(declare-fun lt!40169 () Bool)

(assert (=> d!31564 (= res!61928 (not lt!40169))))

(assert (=> d!31564 (= lt!40169 e!76794)))

(declare-fun res!61931 () Bool)

(assert (=> d!31564 (=> res!61931 e!76794)))

(assert (=> d!31564 (= res!61931 ((_ is Nil!2186) baseList!9))))

(assert (=> d!31564 (= (isPrefix!181 baseList!9 lt!40138) lt!40169)))

(declare-fun b!132806 () Bool)

(declare-fun tail!274 (List!2192) List!2192)

(assert (=> b!132806 (= e!76795 (isPrefix!181 (tail!274 baseList!9) (tail!274 lt!40138)))))

(assert (= (and d!31564 (not res!61931)) b!132804))

(assert (= (and b!132804 res!61930) b!132805))

(assert (= (and b!132805 res!61929) b!132806))

(assert (= (and d!31564 (not res!61928)) b!132807))

(declare-fun m!117721 () Bool)

(assert (=> b!132805 m!117721))

(declare-fun m!117723 () Bool)

(assert (=> b!132805 m!117723))

(declare-fun m!117725 () Bool)

(assert (=> b!132807 m!117725))

(assert (=> b!132807 m!117649))

(declare-fun m!117727 () Bool)

(assert (=> b!132806 m!117727))

(declare-fun m!117729 () Bool)

(assert (=> b!132806 m!117729))

(assert (=> b!132806 m!117727))

(assert (=> b!132806 m!117729))

(declare-fun m!117731 () Bool)

(assert (=> b!132806 m!117731))

(assert (=> b!132668 d!31564))

(declare-fun d!31570 () Bool)

(assert (=> d!31570 (isPrefix!181 baseList!9 lt!40138)))

(declare-fun lt!40176 () Unit!1752)

(declare-fun choose!1692 (List!2192 B!777 List!2192) Unit!1752)

(assert (=> d!31570 (= lt!40176 (choose!1692 baseList!9 (h!7583 newList!20) lt!40138))))

(assert (=> d!31570 (isPrefix!181 (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186)) lt!40138)))

(assert (=> d!31570 (= (lemmaRemoveLastConcatenatedPrefixStillPrefix!6 baseList!9 (h!7583 newList!20) lt!40138) lt!40176)))

(declare-fun bs!12662 () Bool)

(assert (= bs!12662 d!31570))

(assert (=> bs!12662 m!117555))

(declare-fun m!117749 () Bool)

(assert (=> bs!12662 m!117749))

(declare-fun m!117751 () Bool)

(assert (=> bs!12662 m!117751))

(assert (=> bs!12662 m!117751))

(declare-fun m!117753 () Bool)

(assert (=> bs!12662 m!117753))

(assert (=> b!132668 d!31570))

(assert (=> b!132678 d!31532))

(declare-fun d!31578 () Bool)

(declare-fun c!28531 () Bool)

(assert (=> d!31578 (= c!28531 ((_ is Nil!2186) (++!462 lt!40140 newList!20)))))

(declare-fun e!76803 () (InoxSet B!777))

(assert (=> d!31578 (= (content!299 (++!462 lt!40140 newList!20)) e!76803)))

(declare-fun b!132816 () Bool)

(assert (=> b!132816 (= e!76803 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132817 () Bool)

(assert (=> b!132817 (= e!76803 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 (++!462 lt!40140 newList!20)) true) (content!299 (t!22778 (++!462 lt!40140 newList!20)))))))

(assert (= (and d!31578 c!28531) b!132816))

(assert (= (and d!31578 (not c!28531)) b!132817))

(declare-fun m!117755 () Bool)

(assert (=> b!132817 m!117755))

(declare-fun m!117757 () Bool)

(assert (=> b!132817 m!117757))

(assert (=> b!132678 d!31578))

(declare-fun lt!40177 () List!2192)

(declare-fun e!76804 () Bool)

(declare-fun b!132821 () Bool)

(assert (=> b!132821 (= e!76804 (or (not (= newList!20 Nil!2186)) (= lt!40177 lt!40140)))))

(declare-fun b!132818 () Bool)

(declare-fun e!76805 () List!2192)

(assert (=> b!132818 (= e!76805 newList!20)))

(declare-fun d!31580 () Bool)

(assert (=> d!31580 e!76804))

(declare-fun res!61941 () Bool)

(assert (=> d!31580 (=> (not res!61941) (not e!76804))))

(assert (=> d!31580 (= res!61941 (= (content!299 lt!40177) ((_ map or) (content!299 lt!40140) (content!299 newList!20))))))

(assert (=> d!31580 (= lt!40177 e!76805)))

(declare-fun c!28532 () Bool)

(assert (=> d!31580 (= c!28532 ((_ is Nil!2186) lt!40140))))

(assert (=> d!31580 (= (++!462 lt!40140 newList!20) lt!40177)))

(declare-fun b!132819 () Bool)

(assert (=> b!132819 (= e!76805 (Cons!2186 (h!7583 lt!40140) (++!462 (t!22778 lt!40140) newList!20)))))

(declare-fun b!132820 () Bool)

(declare-fun res!61940 () Bool)

(assert (=> b!132820 (=> (not res!61940) (not e!76804))))

(assert (=> b!132820 (= res!61940 (= (size!1989 lt!40177) (+ (size!1989 lt!40140) (size!1989 newList!20))))))

(assert (= (and d!31580 c!28532) b!132818))

(assert (= (and d!31580 (not c!28532)) b!132819))

(assert (= (and d!31580 res!61941) b!132820))

(assert (= (and b!132820 res!61940) b!132821))

(declare-fun m!117759 () Bool)

(assert (=> d!31580 m!117759))

(assert (=> d!31580 m!117601))

(assert (=> d!31580 m!117697))

(declare-fun m!117761 () Bool)

(assert (=> b!132819 m!117761))

(declare-fun m!117763 () Bool)

(assert (=> b!132820 m!117763))

(assert (=> b!132820 m!117609))

(assert (=> b!132820 m!117703))

(assert (=> b!132678 d!31580))

(declare-fun d!31582 () Bool)

(declare-fun res!61942 () Bool)

(declare-fun e!76806 () Bool)

(assert (=> d!31582 (=> res!61942 e!76806)))

(assert (=> d!31582 (= res!61942 ((_ is Nil!2186) lt!40140))))

(assert (=> d!31582 (= (noDuplicate!82 lt!40140) e!76806)))

(declare-fun b!132822 () Bool)

(declare-fun e!76807 () Bool)

(assert (=> b!132822 (= e!76806 e!76807)))

(declare-fun res!61943 () Bool)

(assert (=> b!132822 (=> (not res!61943) (not e!76807))))

(assert (=> b!132822 (= res!61943 (not (contains!366 (t!22778 lt!40140) (h!7583 lt!40140))))))

(declare-fun b!132823 () Bool)

(assert (=> b!132823 (= e!76807 (noDuplicate!82 (t!22778 lt!40140)))))

(assert (= (and d!31582 (not res!61942)) b!132822))

(assert (= (and b!132822 res!61943) b!132823))

(declare-fun m!117765 () Bool)

(assert (=> b!132822 m!117765))

(declare-fun m!117767 () Bool)

(assert (=> b!132823 m!117767))

(assert (=> b!132671 d!31582))

(declare-fun d!31584 () Bool)

(assert (=> d!31584 (isPrefix!181 baseList!9 (++!462 baseList!9 lt!40129))))

(declare-fun lt!40184 () Unit!1752)

(declare-fun choose!1693 (List!2192 List!2192) Unit!1752)

(assert (=> d!31584 (= lt!40184 (choose!1693 baseList!9 lt!40129))))

(assert (=> d!31584 (= (lemmaConcatTwoListThenFirstIsPrefix!104 baseList!9 lt!40129) lt!40184)))

(declare-fun bs!12664 () Bool)

(assert (= bs!12664 d!31584))

(assert (=> bs!12664 m!117575))

(assert (=> bs!12664 m!117575))

(declare-fun m!117785 () Bool)

(assert (=> bs!12664 m!117785))

(declare-fun m!117787 () Bool)

(assert (=> bs!12664 m!117787))

(assert (=> b!132671 d!31584))

(declare-fun d!31590 () Bool)

(declare-fun e!76839 () Bool)

(assert (=> d!31590 e!76839))

(declare-fun res!61979 () Bool)

(assert (=> d!31590 (=> (not res!61979) (not e!76839))))

(declare-fun lt!40190 () List!2192)

(assert (=> d!31590 (= res!61979 (noDuplicate!82 lt!40190))))

(declare-fun choose!1695 (List!2192 List!2192) List!2192)

(assert (=> d!31590 (= lt!40190 (choose!1695 lt!40140 (t!22778 newList!20)))))

(assert (=> d!31590 (noDuplicate!82 lt!40140)))

(assert (=> d!31590 (= (concatWithoutDuplicates!38 lt!40140 (t!22778 newList!20)) lt!40190)))

(declare-fun b!132868 () Bool)

(declare-fun res!61980 () Bool)

(assert (=> b!132868 (=> (not res!61980) (not e!76839))))

(assert (=> b!132868 (= res!61980 (= (content!299 (++!462 lt!40140 (t!22778 newList!20))) (content!299 lt!40190)))))

(declare-fun b!132869 () Bool)

(declare-fun res!61978 () Bool)

(assert (=> b!132869 (=> (not res!61978) (not e!76839))))

(assert (=> b!132869 (= res!61978 (subseq!53 lt!40190 (++!462 lt!40140 (t!22778 newList!20))))))

(declare-fun b!132870 () Bool)

(assert (=> b!132870 (= e!76839 (isPrefix!181 lt!40140 lt!40190))))

(assert (= (and d!31590 res!61979) b!132868))

(assert (= (and b!132868 res!61980) b!132869))

(assert (= (and b!132869 res!61978) b!132870))

(declare-fun m!117831 () Bool)

(assert (=> d!31590 m!117831))

(declare-fun m!117833 () Bool)

(assert (=> d!31590 m!117833))

(assert (=> d!31590 m!117573))

(assert (=> b!132868 m!117533))

(assert (=> b!132868 m!117533))

(declare-fun m!117835 () Bool)

(assert (=> b!132868 m!117835))

(declare-fun m!117837 () Bool)

(assert (=> b!132868 m!117837))

(assert (=> b!132869 m!117533))

(assert (=> b!132869 m!117533))

(declare-fun m!117839 () Bool)

(assert (=> b!132869 m!117839))

(declare-fun m!117841 () Bool)

(assert (=> b!132870 m!117841))

(assert (=> b!132671 d!31590))

(declare-fun d!31606 () Bool)

(declare-fun res!61981 () Bool)

(declare-fun e!76840 () Bool)

(assert (=> d!31606 (=> res!61981 e!76840)))

(assert (=> d!31606 (= res!61981 ((_ is Nil!2186) lt!40138))))

(assert (=> d!31606 (= (noDuplicate!82 lt!40138) e!76840)))

(declare-fun b!132871 () Bool)

(declare-fun e!76841 () Bool)

(assert (=> b!132871 (= e!76840 e!76841)))

(declare-fun res!61982 () Bool)

(assert (=> b!132871 (=> (not res!61982) (not e!76841))))

(assert (=> b!132871 (= res!61982 (not (contains!366 (t!22778 lt!40138) (h!7583 lt!40138))))))

(declare-fun b!132872 () Bool)

(assert (=> b!132872 (= e!76841 (noDuplicate!82 (t!22778 lt!40138)))))

(assert (= (and d!31606 (not res!61981)) b!132871))

(assert (= (and b!132871 res!61982) b!132872))

(declare-fun m!117843 () Bool)

(assert (=> b!132871 m!117843))

(declare-fun m!117845 () Bool)

(assert (=> b!132872 m!117845))

(assert (=> b!132671 d!31606))

(declare-fun d!31608 () Bool)

(assert (=> d!31608 (noDuplicate!82 (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186)))))

(declare-fun lt!40198 () Unit!1752)

(declare-fun choose!1696 (List!2192 B!777) Unit!1752)

(assert (=> d!31608 (= lt!40198 (choose!1696 baseList!9 (h!7583 newList!20)))))

(assert (=> d!31608 (noDuplicate!82 baseList!9)))

(assert (=> d!31608 (= (lemmaAppendNewElementElementPreserves!22 baseList!9 (h!7583 newList!20)) lt!40198)))

(declare-fun bs!12666 () Bool)

(assert (= bs!12666 d!31608))

(assert (=> bs!12666 m!117751))

(assert (=> bs!12666 m!117751))

(declare-fun m!117875 () Bool)

(assert (=> bs!12666 m!117875))

(declare-fun m!117877 () Bool)

(assert (=> bs!12666 m!117877))

(assert (=> bs!12666 m!117559))

(assert (=> b!132671 d!31608))

(declare-fun b!132894 () Bool)

(declare-fun lt!40199 () List!2192)

(declare-fun e!76855 () Bool)

(assert (=> b!132894 (= e!76855 (or (not (= lt!40129 Nil!2186)) (= lt!40199 baseList!9)))))

(declare-fun b!132891 () Bool)

(declare-fun e!76856 () List!2192)

(assert (=> b!132891 (= e!76856 lt!40129)))

(declare-fun d!31624 () Bool)

(assert (=> d!31624 e!76855))

(declare-fun res!61996 () Bool)

(assert (=> d!31624 (=> (not res!61996) (not e!76855))))

(assert (=> d!31624 (= res!61996 (= (content!299 lt!40199) ((_ map or) (content!299 baseList!9) (content!299 lt!40129))))))

(assert (=> d!31624 (= lt!40199 e!76856)))

(declare-fun c!28541 () Bool)

(assert (=> d!31624 (= c!28541 ((_ is Nil!2186) baseList!9))))

(assert (=> d!31624 (= (++!462 baseList!9 lt!40129) lt!40199)))

(declare-fun b!132892 () Bool)

(assert (=> b!132892 (= e!76856 (Cons!2186 (h!7583 baseList!9) (++!462 (t!22778 baseList!9) lt!40129)))))

(declare-fun b!132893 () Bool)

(declare-fun res!61995 () Bool)

(assert (=> b!132893 (=> (not res!61995) (not e!76855))))

(assert (=> b!132893 (= res!61995 (= (size!1989 lt!40199) (+ (size!1989 baseList!9) (size!1989 lt!40129))))))

(assert (= (and d!31624 c!28541) b!132891))

(assert (= (and d!31624 (not c!28541)) b!132892))

(assert (= (and d!31624 res!61996) b!132893))

(assert (= (and b!132893 res!61995) b!132894))

(declare-fun m!117879 () Bool)

(assert (=> d!31624 m!117879))

(assert (=> d!31624 m!117641))

(assert (=> d!31624 m!117663))

(declare-fun m!117881 () Bool)

(assert (=> b!132892 m!117881))

(declare-fun m!117883 () Bool)

(assert (=> b!132893 m!117883))

(assert (=> b!132893 m!117649))

(assert (=> b!132893 m!117669))

(assert (=> b!132671 d!31624))

(declare-fun b!132895 () Bool)

(declare-fun e!76858 () Bool)

(declare-fun e!76859 () Bool)

(assert (=> b!132895 (= e!76858 e!76859)))

(declare-fun res!61999 () Bool)

(assert (=> b!132895 (=> (not res!61999) (not e!76859))))

(assert (=> b!132895 (= res!61999 (not ((_ is Nil!2186) lt!40140)))))

(declare-fun b!132896 () Bool)

(declare-fun res!61998 () Bool)

(assert (=> b!132896 (=> (not res!61998) (not e!76859))))

(assert (=> b!132896 (= res!61998 (= (head!528 baseList!9) (head!528 lt!40140)))))

(declare-fun b!132898 () Bool)

(declare-fun e!76857 () Bool)

(assert (=> b!132898 (= e!76857 (>= (size!1989 lt!40140) (size!1989 baseList!9)))))

(declare-fun d!31626 () Bool)

(assert (=> d!31626 e!76857))

(declare-fun res!61997 () Bool)

(assert (=> d!31626 (=> res!61997 e!76857)))

(declare-fun lt!40200 () Bool)

(assert (=> d!31626 (= res!61997 (not lt!40200))))

(assert (=> d!31626 (= lt!40200 e!76858)))

(declare-fun res!62000 () Bool)

(assert (=> d!31626 (=> res!62000 e!76858)))

(assert (=> d!31626 (= res!62000 ((_ is Nil!2186) baseList!9))))

(assert (=> d!31626 (= (isPrefix!181 baseList!9 lt!40140) lt!40200)))

(declare-fun b!132897 () Bool)

(assert (=> b!132897 (= e!76859 (isPrefix!181 (tail!274 baseList!9) (tail!274 lt!40140)))))

(assert (= (and d!31626 (not res!62000)) b!132895))

(assert (= (and b!132895 res!61999) b!132896))

(assert (= (and b!132896 res!61998) b!132897))

(assert (= (and d!31626 (not res!61997)) b!132898))

(assert (=> b!132896 m!117721))

(declare-fun m!117885 () Bool)

(assert (=> b!132896 m!117885))

(assert (=> b!132898 m!117609))

(assert (=> b!132898 m!117649))

(assert (=> b!132897 m!117727))

(declare-fun m!117887 () Bool)

(assert (=> b!132897 m!117887))

(assert (=> b!132897 m!117727))

(assert (=> b!132897 m!117887))

(declare-fun m!117889 () Bool)

(assert (=> b!132897 m!117889))

(assert (=> b!132671 d!31626))

(declare-fun b!132899 () Bool)

(declare-fun e!76861 () Bool)

(declare-fun e!76862 () Bool)

(assert (=> b!132899 (= e!76861 e!76862)))

(declare-fun res!62003 () Bool)

(assert (=> b!132899 (=> (not res!62003) (not e!76862))))

(assert (=> b!132899 (= res!62003 (not ((_ is Nil!2186) lt!40138)))))

(declare-fun b!132900 () Bool)

(declare-fun res!62002 () Bool)

(assert (=> b!132900 (=> (not res!62002) (not e!76862))))

(assert (=> b!132900 (= res!62002 (= (head!528 lt!40140) (head!528 lt!40138)))))

(declare-fun b!132902 () Bool)

(declare-fun e!76860 () Bool)

(assert (=> b!132902 (= e!76860 (>= (size!1989 lt!40138) (size!1989 lt!40140)))))

(declare-fun d!31628 () Bool)

(assert (=> d!31628 e!76860))

(declare-fun res!62001 () Bool)

(assert (=> d!31628 (=> res!62001 e!76860)))

(declare-fun lt!40201 () Bool)

(assert (=> d!31628 (= res!62001 (not lt!40201))))

(assert (=> d!31628 (= lt!40201 e!76861)))

(declare-fun res!62004 () Bool)

(assert (=> d!31628 (=> res!62004 e!76861)))

(assert (=> d!31628 (= res!62004 ((_ is Nil!2186) lt!40140))))

(assert (=> d!31628 (= (isPrefix!181 lt!40140 lt!40138) lt!40201)))

(declare-fun b!132901 () Bool)

(assert (=> b!132901 (= e!76862 (isPrefix!181 (tail!274 lt!40140) (tail!274 lt!40138)))))

(assert (= (and d!31628 (not res!62004)) b!132899))

(assert (= (and b!132899 res!62003) b!132900))

(assert (= (and b!132900 res!62002) b!132901))

(assert (= (and d!31628 (not res!62001)) b!132902))

(assert (=> b!132900 m!117885))

(assert (=> b!132900 m!117723))

(assert (=> b!132902 m!117725))

(assert (=> b!132902 m!117609))

(assert (=> b!132901 m!117887))

(assert (=> b!132901 m!117729))

(assert (=> b!132901 m!117887))

(assert (=> b!132901 m!117729))

(declare-fun m!117891 () Bool)

(assert (=> b!132901 m!117891))

(assert (=> b!132670 d!31628))

(assert (=> b!132663 d!31556))

(declare-fun d!31630 () Bool)

(declare-fun c!28542 () Bool)

(assert (=> d!31630 (= c!28542 ((_ is Nil!2186) lt!40136))))

(declare-fun e!76863 () (InoxSet B!777))

(assert (=> d!31630 (= (content!299 lt!40136) e!76863)))

(declare-fun b!132903 () Bool)

(assert (=> b!132903 (= e!76863 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132904 () Bool)

(assert (=> b!132904 (= e!76863 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40136) true) (content!299 (t!22778 lt!40136))))))

(assert (= (and d!31630 c!28542) b!132903))

(assert (= (and d!31630 (not c!28542)) b!132904))

(declare-fun m!117893 () Bool)

(assert (=> b!132904 m!117893))

(declare-fun m!117895 () Bool)

(assert (=> b!132904 m!117895))

(assert (=> b!132673 d!31630))

(declare-fun d!31632 () Bool)

(declare-fun res!62006 () Bool)

(declare-fun e!76864 () Bool)

(assert (=> d!31632 (=> res!62006 e!76864)))

(assert (=> d!31632 (= res!62006 ((_ is Nil!2186) lt!40138))))

(assert (=> d!31632 (= (subseq!53 lt!40138 lt!40136) e!76864)))

(declare-fun b!132906 () Bool)

(declare-fun e!76867 () Bool)

(declare-fun e!76865 () Bool)

(assert (=> b!132906 (= e!76867 e!76865)))

(declare-fun res!62007 () Bool)

(assert (=> b!132906 (=> res!62007 e!76865)))

(declare-fun e!76866 () Bool)

(assert (=> b!132906 (= res!62007 e!76866)))

(declare-fun res!62008 () Bool)

(assert (=> b!132906 (=> (not res!62008) (not e!76866))))

(assert (=> b!132906 (= res!62008 (= (h!7583 lt!40138) (h!7583 lt!40136)))))

(declare-fun b!132905 () Bool)

(assert (=> b!132905 (= e!76864 e!76867)))

(declare-fun res!62005 () Bool)

(assert (=> b!132905 (=> (not res!62005) (not e!76867))))

(assert (=> b!132905 (= res!62005 ((_ is Cons!2186) lt!40136))))

(declare-fun b!132908 () Bool)

(assert (=> b!132908 (= e!76865 (subseq!53 lt!40138 (t!22778 lt!40136)))))

(declare-fun b!132907 () Bool)

(assert (=> b!132907 (= e!76866 (subseq!53 (t!22778 lt!40138) (t!22778 lt!40136)))))

(assert (= (and d!31632 (not res!62006)) b!132905))

(assert (= (and b!132905 res!62005) b!132906))

(assert (= (and b!132906 res!62008) b!132907))

(assert (= (and b!132906 (not res!62007)) b!132908))

(declare-fun m!117901 () Bool)

(assert (=> b!132908 m!117901))

(declare-fun m!117903 () Bool)

(assert (=> b!132907 m!117903))

(assert (=> b!132662 d!31632))

(assert (=> b!132662 d!31534))

(assert (=> b!132675 d!31628))

(declare-fun b!132919 () Bool)

(declare-fun e!76874 () Bool)

(declare-fun tp!70491 () Bool)

(assert (=> b!132919 (= e!76874 (and tp_is_empty!1421 tp!70491))))

(assert (=> b!132669 (= tp!70483 e!76874)))

(assert (= (and b!132669 ((_ is Cons!2186) (t!22778 baseList!9))) b!132919))

(declare-fun b!132920 () Bool)

(declare-fun e!76875 () Bool)

(declare-fun tp!70492 () Bool)

(assert (=> b!132920 (= e!76875 (and tp_is_empty!1421 tp!70492))))

(assert (=> b!132674 (= tp!70484 e!76875)))

(assert (= (and b!132674 ((_ is Cons!2186) (t!22778 newList!20))) b!132920))

(check-sat (not b!132780) (not b!132823) (not b!132755) (not b!132738) (not b!132907) (not d!31570) (not b!132904) (not d!31584) (not b!132870) (not b!132690) (not b!132715) (not b!132746) (not b!132897) (not b!132901) (not b!132819) (not b!132778) (not b!132745) (not b!132872) (not b!132749) (not b!132902) (not b!132868) (not b!132822) (not d!31554) (not b!132727) (not b!132892) (not d!31548) (not d!31590) (not b!132900) (not b!132893) (not d!31534) (not b!132817) (not b!132920) (not b!132820) (not d!31562) (not d!31608) (not b!132781) (not b!132737) (not b!132898) (not b!132754) (not b!132689) (not d!31546) (not b!132805) (not b!132869) (not b!132696) (not d!31580) (not b!132714) (not b!132871) (not d!31556) (not d!31624) (not b!132748) (not b!132776) (not b!132807) tp_is_empty!1421 (not b!132908) (not b!132728) (not b!132896) (not b!132698) (not b!132806) (not b!132919))
(check-sat)
(get-model)

(declare-fun d!31634 () Bool)

(declare-fun c!28543 () Bool)

(assert (=> d!31634 (= c!28543 ((_ is Nil!2186) (t!22778 (++!462 lt!40140 newList!20))))))

(declare-fun e!76876 () (InoxSet B!777))

(assert (=> d!31634 (= (content!299 (t!22778 (++!462 lt!40140 newList!20))) e!76876)))

(declare-fun b!132921 () Bool)

(assert (=> b!132921 (= e!76876 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132922 () Bool)

(assert (=> b!132922 (= e!76876 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 (t!22778 (++!462 lt!40140 newList!20))) true) (content!299 (t!22778 (t!22778 (++!462 lt!40140 newList!20))))))))

(assert (= (and d!31634 c!28543) b!132921))

(assert (= (and d!31634 (not c!28543)) b!132922))

(declare-fun m!117905 () Bool)

(assert (=> b!132922 m!117905))

(declare-fun m!117907 () Bool)

(assert (=> b!132922 m!117907))

(assert (=> b!132817 d!31634))

(declare-fun d!31636 () Bool)

(declare-fun res!62010 () Bool)

(declare-fun e!76877 () Bool)

(assert (=> d!31636 (=> res!62010 e!76877)))

(assert (=> d!31636 (= res!62010 ((_ is Nil!2186) lt!40138))))

(assert (=> d!31636 (= (subseq!53 lt!40138 (t!22778 lt!40141)) e!76877)))

(declare-fun b!132924 () Bool)

(declare-fun e!76880 () Bool)

(declare-fun e!76878 () Bool)

(assert (=> b!132924 (= e!76880 e!76878)))

(declare-fun res!62011 () Bool)

(assert (=> b!132924 (=> res!62011 e!76878)))

(declare-fun e!76879 () Bool)

(assert (=> b!132924 (= res!62011 e!76879)))

(declare-fun res!62012 () Bool)

(assert (=> b!132924 (=> (not res!62012) (not e!76879))))

(assert (=> b!132924 (= res!62012 (= (h!7583 lt!40138) (h!7583 (t!22778 lt!40141))))))

(declare-fun b!132923 () Bool)

(assert (=> b!132923 (= e!76877 e!76880)))

(declare-fun res!62009 () Bool)

(assert (=> b!132923 (=> (not res!62009) (not e!76880))))

(assert (=> b!132923 (= res!62009 ((_ is Cons!2186) (t!22778 lt!40141)))))

(declare-fun b!132926 () Bool)

(assert (=> b!132926 (= e!76878 (subseq!53 lt!40138 (t!22778 (t!22778 lt!40141))))))

(declare-fun b!132925 () Bool)

(assert (=> b!132925 (= e!76879 (subseq!53 (t!22778 lt!40138) (t!22778 (t!22778 lt!40141))))))

(assert (= (and d!31636 (not res!62010)) b!132923))

(assert (= (and b!132923 res!62009) b!132924))

(assert (= (and b!132924 res!62012) b!132925))

(assert (= (and b!132924 (not res!62011)) b!132926))

(declare-fun m!117909 () Bool)

(assert (=> b!132926 m!117909))

(declare-fun m!117911 () Bool)

(assert (=> b!132925 m!117911))

(assert (=> b!132690 d!31636))

(declare-fun d!31638 () Bool)

(declare-fun res!62014 () Bool)

(declare-fun e!76881 () Bool)

(assert (=> d!31638 (=> res!62014 e!76881)))

(assert (=> d!31638 (= res!62014 ((_ is Nil!2186) lt!40138))))

(assert (=> d!31638 (= (subseq!53 lt!40138 (t!22778 lt!40136)) e!76881)))

(declare-fun b!132928 () Bool)

(declare-fun e!76884 () Bool)

(declare-fun e!76882 () Bool)

(assert (=> b!132928 (= e!76884 e!76882)))

(declare-fun res!62015 () Bool)

(assert (=> b!132928 (=> res!62015 e!76882)))

(declare-fun e!76883 () Bool)

(assert (=> b!132928 (= res!62015 e!76883)))

(declare-fun res!62016 () Bool)

(assert (=> b!132928 (=> (not res!62016) (not e!76883))))

(assert (=> b!132928 (= res!62016 (= (h!7583 lt!40138) (h!7583 (t!22778 lt!40136))))))

(declare-fun b!132927 () Bool)

(assert (=> b!132927 (= e!76881 e!76884)))

(declare-fun res!62013 () Bool)

(assert (=> b!132927 (=> (not res!62013) (not e!76884))))

(assert (=> b!132927 (= res!62013 ((_ is Cons!2186) (t!22778 lt!40136)))))

(declare-fun b!132930 () Bool)

(assert (=> b!132930 (= e!76882 (subseq!53 lt!40138 (t!22778 (t!22778 lt!40136))))))

(declare-fun b!132929 () Bool)

(assert (=> b!132929 (= e!76883 (subseq!53 (t!22778 lt!40138) (t!22778 (t!22778 lt!40136))))))

(assert (= (and d!31638 (not res!62014)) b!132927))

(assert (= (and b!132927 res!62013) b!132928))

(assert (= (and b!132928 res!62016) b!132929))

(assert (= (and b!132928 (not res!62015)) b!132930))

(declare-fun m!117913 () Bool)

(assert (=> b!132930 m!117913))

(declare-fun m!117915 () Bool)

(assert (=> b!132929 m!117915))

(assert (=> b!132908 d!31638))

(declare-fun d!31640 () Bool)

(declare-fun res!62017 () Bool)

(declare-fun e!76885 () Bool)

(assert (=> d!31640 (=> res!62017 e!76885)))

(assert (=> d!31640 (= res!62017 ((_ is Nil!2186) lt!40190))))

(assert (=> d!31640 (= (noDuplicate!82 lt!40190) e!76885)))

(declare-fun b!132931 () Bool)

(declare-fun e!76886 () Bool)

(assert (=> b!132931 (= e!76885 e!76886)))

(declare-fun res!62018 () Bool)

(assert (=> b!132931 (=> (not res!62018) (not e!76886))))

(assert (=> b!132931 (= res!62018 (not (contains!366 (t!22778 lt!40190) (h!7583 lt!40190))))))

(declare-fun b!132932 () Bool)

(assert (=> b!132932 (= e!76886 (noDuplicate!82 (t!22778 lt!40190)))))

(assert (= (and d!31640 (not res!62017)) b!132931))

(assert (= (and b!132931 res!62018) b!132932))

(declare-fun m!117917 () Bool)

(assert (=> b!132931 m!117917))

(declare-fun m!117919 () Bool)

(assert (=> b!132932 m!117919))

(assert (=> d!31590 d!31640))

(declare-fun b!132943 () Bool)

(declare-fun res!62030 () Bool)

(declare-fun e!76892 () Bool)

(assert (=> b!132943 (=> (not res!62030) (not e!76892))))

(declare-fun res!62029 () List!2192)

(assert (=> b!132943 (= res!62030 (subseq!53 res!62029 (++!462 lt!40140 (t!22778 newList!20))))))

(declare-fun b!132941 () Bool)

(declare-fun e!76891 () Bool)

(declare-fun tp!70495 () Bool)

(assert (=> b!132941 (= e!76891 (and tp_is_empty!1421 tp!70495))))

(declare-fun d!31642 () Bool)

(assert (=> d!31642 e!76892))

(declare-fun res!62028 () Bool)

(assert (=> d!31642 (=> (not res!62028) (not e!76892))))

(assert (=> d!31642 (= res!62028 (noDuplicate!82 res!62029))))

(assert (=> d!31642 e!76891))

(assert (=> d!31642 (= (choose!1695 lt!40140 (t!22778 newList!20)) res!62029)))

(declare-fun b!132942 () Bool)

(declare-fun res!62027 () Bool)

(assert (=> b!132942 (=> (not res!62027) (not e!76892))))

(assert (=> b!132942 (= res!62027 (= (content!299 (++!462 lt!40140 (t!22778 newList!20))) (content!299 res!62029)))))

(declare-fun b!132944 () Bool)

(assert (=> b!132944 (= e!76892 (isPrefix!181 lt!40140 res!62029))))

(assert (= (and d!31642 ((_ is Cons!2186) res!62029)) b!132941))

(assert (= (and d!31642 res!62028) b!132942))

(assert (= (and b!132942 res!62027) b!132943))

(assert (= (and b!132943 res!62030) b!132944))

(assert (=> b!132943 m!117533))

(assert (=> b!132943 m!117533))

(declare-fun m!117921 () Bool)

(assert (=> b!132943 m!117921))

(declare-fun m!117923 () Bool)

(assert (=> d!31642 m!117923))

(assert (=> b!132942 m!117533))

(assert (=> b!132942 m!117533))

(assert (=> b!132942 m!117835))

(declare-fun m!117925 () Bool)

(assert (=> b!132942 m!117925))

(declare-fun m!117927 () Bool)

(assert (=> b!132944 m!117927))

(assert (=> d!31590 d!31642))

(assert (=> d!31590 d!31582))

(declare-fun d!31644 () Bool)

(declare-fun lt!40205 () Bool)

(assert (=> d!31644 (= lt!40205 (select (content!299 (t!22778 baseList!9)) (h!7583 baseList!9)))))

(declare-fun e!76893 () Bool)

(assert (=> d!31644 (= lt!40205 e!76893)))

(declare-fun res!62032 () Bool)

(assert (=> d!31644 (=> (not res!62032) (not e!76893))))

(assert (=> d!31644 (= res!62032 ((_ is Cons!2186) (t!22778 baseList!9)))))

(assert (=> d!31644 (= (contains!366 (t!22778 baseList!9) (h!7583 baseList!9)) lt!40205)))

(declare-fun b!132945 () Bool)

(declare-fun e!76894 () Bool)

(assert (=> b!132945 (= e!76893 e!76894)))

(declare-fun res!62031 () Bool)

(assert (=> b!132945 (=> res!62031 e!76894)))

(assert (=> b!132945 (= res!62031 (= (h!7583 (t!22778 baseList!9)) (h!7583 baseList!9)))))

(declare-fun b!132946 () Bool)

(assert (=> b!132946 (= e!76894 (contains!366 (t!22778 (t!22778 baseList!9)) (h!7583 baseList!9)))))

(assert (= (and d!31644 res!62032) b!132945))

(assert (= (and b!132945 (not res!62031)) b!132946))

(declare-fun m!117929 () Bool)

(assert (=> d!31644 m!117929))

(declare-fun m!117931 () Bool)

(assert (=> d!31644 m!117931))

(declare-fun m!117933 () Bool)

(assert (=> b!132946 m!117933))

(assert (=> b!132737 d!31644))

(declare-fun d!31646 () Bool)

(declare-fun c!28544 () Bool)

(assert (=> d!31646 (= c!28544 ((_ is Nil!2186) lt!40199))))

(declare-fun e!76895 () (InoxSet B!777))

(assert (=> d!31646 (= (content!299 lt!40199) e!76895)))

(declare-fun b!132947 () Bool)

(assert (=> b!132947 (= e!76895 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132948 () Bool)

(assert (=> b!132948 (= e!76895 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40199) true) (content!299 (t!22778 lt!40199))))))

(assert (= (and d!31646 c!28544) b!132947))

(assert (= (and d!31646 (not c!28544)) b!132948))

(declare-fun m!117935 () Bool)

(assert (=> b!132948 m!117935))

(declare-fun m!117937 () Bool)

(assert (=> b!132948 m!117937))

(assert (=> d!31624 d!31646))

(declare-fun d!31648 () Bool)

(declare-fun c!28545 () Bool)

(assert (=> d!31648 (= c!28545 ((_ is Nil!2186) baseList!9))))

(declare-fun e!76896 () (InoxSet B!777))

(assert (=> d!31648 (= (content!299 baseList!9) e!76896)))

(declare-fun b!132949 () Bool)

(assert (=> b!132949 (= e!76896 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132950 () Bool)

(assert (=> b!132950 (= e!76896 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 baseList!9) true) (content!299 (t!22778 baseList!9))))))

(assert (= (and d!31648 c!28545) b!132949))

(assert (= (and d!31648 (not c!28545)) b!132950))

(declare-fun m!117939 () Bool)

(assert (=> b!132950 m!117939))

(assert (=> b!132950 m!117929))

(assert (=> d!31624 d!31648))

(declare-fun d!31650 () Bool)

(declare-fun c!28546 () Bool)

(assert (=> d!31650 (= c!28546 ((_ is Nil!2186) lt!40129))))

(declare-fun e!76897 () (InoxSet B!777))

(assert (=> d!31650 (= (content!299 lt!40129) e!76897)))

(declare-fun b!132951 () Bool)

(assert (=> b!132951 (= e!76897 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132952 () Bool)

(assert (=> b!132952 (= e!76897 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40129) true) (content!299 (t!22778 lt!40129))))))

(assert (= (and d!31650 c!28546) b!132951))

(assert (= (and d!31650 (not c!28546)) b!132952))

(declare-fun m!117941 () Bool)

(assert (=> b!132952 m!117941))

(declare-fun m!117943 () Bool)

(assert (=> b!132952 m!117943))

(assert (=> d!31624 d!31650))

(declare-fun d!31652 () Bool)

(declare-fun c!28547 () Bool)

(assert (=> d!31652 (= c!28547 ((_ is Nil!2186) (t!22778 lt!40141)))))

(declare-fun e!76898 () (InoxSet B!777))

(assert (=> d!31652 (= (content!299 (t!22778 lt!40141)) e!76898)))

(declare-fun b!132953 () Bool)

(assert (=> b!132953 (= e!76898 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132954 () Bool)

(assert (=> b!132954 (= e!76898 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 (t!22778 lt!40141)) true) (content!299 (t!22778 (t!22778 lt!40141)))))))

(assert (= (and d!31652 c!28547) b!132953))

(assert (= (and d!31652 (not c!28547)) b!132954))

(declare-fun m!117945 () Bool)

(assert (=> b!132954 m!117945))

(declare-fun m!117947 () Bool)

(assert (=> b!132954 m!117947))

(assert (=> b!132696 d!31652))

(declare-fun d!31654 () Bool)

(declare-fun c!28548 () Bool)

(assert (=> d!31654 (= c!28548 ((_ is Nil!2186) (t!22778 lt!40136)))))

(declare-fun e!76899 () (InoxSet B!777))

(assert (=> d!31654 (= (content!299 (t!22778 lt!40136)) e!76899)))

(declare-fun b!132955 () Bool)

(assert (=> b!132955 (= e!76899 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132956 () Bool)

(assert (=> b!132956 (= e!76899 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 (t!22778 lt!40136)) true) (content!299 (t!22778 (t!22778 lt!40136)))))))

(assert (= (and d!31654 c!28548) b!132955))

(assert (= (and d!31654 (not c!28548)) b!132956))

(declare-fun m!117949 () Bool)

(assert (=> b!132956 m!117949))

(declare-fun m!117951 () Bool)

(assert (=> b!132956 m!117951))

(assert (=> b!132904 d!31654))

(declare-fun d!31656 () Bool)

(declare-fun c!28549 () Bool)

(assert (=> d!31656 (= c!28549 ((_ is Nil!2186) lt!40177))))

(declare-fun e!76900 () (InoxSet B!777))

(assert (=> d!31656 (= (content!299 lt!40177) e!76900)))

(declare-fun b!132957 () Bool)

(assert (=> b!132957 (= e!76900 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132958 () Bool)

(assert (=> b!132958 (= e!76900 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40177) true) (content!299 (t!22778 lt!40177))))))

(assert (= (and d!31656 c!28549) b!132957))

(assert (= (and d!31656 (not c!28549)) b!132958))

(declare-fun m!117953 () Bool)

(assert (=> b!132958 m!117953))

(declare-fun m!117955 () Bool)

(assert (=> b!132958 m!117955))

(assert (=> d!31580 d!31656))

(declare-fun d!31658 () Bool)

(declare-fun c!28550 () Bool)

(assert (=> d!31658 (= c!28550 ((_ is Nil!2186) lt!40140))))

(declare-fun e!76901 () (InoxSet B!777))

(assert (=> d!31658 (= (content!299 lt!40140) e!76901)))

(declare-fun b!132959 () Bool)

(assert (=> b!132959 (= e!76901 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132960 () Bool)

(assert (=> b!132960 (= e!76901 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40140) true) (content!299 (t!22778 lt!40140))))))

(assert (= (and d!31658 c!28550) b!132959))

(assert (= (and d!31658 (not c!28550)) b!132960))

(declare-fun m!117957 () Bool)

(assert (=> b!132960 m!117957))

(declare-fun m!117959 () Bool)

(assert (=> b!132960 m!117959))

(assert (=> d!31580 d!31658))

(declare-fun d!31660 () Bool)

(declare-fun c!28551 () Bool)

(assert (=> d!31660 (= c!28551 ((_ is Nil!2186) newList!20))))

(declare-fun e!76902 () (InoxSet B!777))

(assert (=> d!31660 (= (content!299 newList!20) e!76902)))

(declare-fun b!132961 () Bool)

(assert (=> b!132961 (= e!76902 ((as const (Array B!777 Bool)) false))))

(declare-fun b!132962 () Bool)

(assert (=> b!132962 (= e!76902 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 newList!20) true) (content!299 (t!22778 newList!20))))))

(assert (= (and d!31660 c!28551) b!132961))

(assert (= (and d!31660 (not c!28551)) b!132962))

(declare-fun m!117961 () Bool)

(assert (=> b!132962 m!117961))

(assert (=> b!132962 m!117603))

(assert (=> d!31580 d!31660))

(declare-fun b!132966 () Bool)

(declare-fun lt!40206 () List!2192)

(declare-fun e!76903 () Bool)

(assert (=> b!132966 (= e!76903 (or (not (= (++!462 lt!40129 (t!22778 newList!20)) Nil!2186)) (= lt!40206 (t!22778 baseList!9))))))

(declare-fun b!132963 () Bool)

(declare-fun e!76904 () List!2192)

(assert (=> b!132963 (= e!76904 (++!462 lt!40129 (t!22778 newList!20)))))

(declare-fun d!31662 () Bool)

(assert (=> d!31662 e!76903))

(declare-fun res!62034 () Bool)

(assert (=> d!31662 (=> (not res!62034) (not e!76903))))

(assert (=> d!31662 (= res!62034 (= (content!299 lt!40206) ((_ map or) (content!299 (t!22778 baseList!9)) (content!299 (++!462 lt!40129 (t!22778 newList!20))))))))

(assert (=> d!31662 (= lt!40206 e!76904)))

(declare-fun c!28552 () Bool)

(assert (=> d!31662 (= c!28552 ((_ is Nil!2186) (t!22778 baseList!9)))))

(assert (=> d!31662 (= (++!462 (t!22778 baseList!9) (++!462 lt!40129 (t!22778 newList!20))) lt!40206)))

(declare-fun b!132964 () Bool)

(assert (=> b!132964 (= e!76904 (Cons!2186 (h!7583 (t!22778 baseList!9)) (++!462 (t!22778 (t!22778 baseList!9)) (++!462 lt!40129 (t!22778 newList!20)))))))

(declare-fun b!132965 () Bool)

(declare-fun res!62033 () Bool)

(assert (=> b!132965 (=> (not res!62033) (not e!76903))))

(assert (=> b!132965 (= res!62033 (= (size!1989 lt!40206) (+ (size!1989 (t!22778 baseList!9)) (size!1989 (++!462 lt!40129 (t!22778 newList!20))))))))

(assert (= (and d!31662 c!28552) b!132963))

(assert (= (and d!31662 (not c!28552)) b!132964))

(assert (= (and d!31662 res!62034) b!132965))

(assert (= (and b!132965 res!62033) b!132966))

(declare-fun m!117963 () Bool)

(assert (=> d!31662 m!117963))

(assert (=> d!31662 m!117929))

(assert (=> d!31662 m!117545))

(assert (=> d!31662 m!117643))

(assert (=> b!132964 m!117545))

(declare-fun m!117965 () Bool)

(assert (=> b!132964 m!117965))

(declare-fun m!117967 () Bool)

(assert (=> b!132965 m!117967))

(declare-fun m!117969 () Bool)

(assert (=> b!132965 m!117969))

(assert (=> b!132965 m!117545))

(assert (=> b!132965 m!117651))

(assert (=> b!132748 d!31662))

(declare-fun lt!40207 () List!2192)

(declare-fun e!76905 () Bool)

(declare-fun b!132970 () Bool)

(assert (=> b!132970 (= e!76905 (or (not (= newList!20 Nil!2186)) (= lt!40207 (t!22778 baseList!9))))))

(declare-fun b!132967 () Bool)

(declare-fun e!76906 () List!2192)

(assert (=> b!132967 (= e!76906 newList!20)))

(declare-fun d!31664 () Bool)

(assert (=> d!31664 e!76905))

(declare-fun res!62036 () Bool)

(assert (=> d!31664 (=> (not res!62036) (not e!76905))))

(assert (=> d!31664 (= res!62036 (= (content!299 lt!40207) ((_ map or) (content!299 (t!22778 baseList!9)) (content!299 newList!20))))))

(assert (=> d!31664 (= lt!40207 e!76906)))

(declare-fun c!28553 () Bool)

(assert (=> d!31664 (= c!28553 ((_ is Nil!2186) (t!22778 baseList!9)))))

(assert (=> d!31664 (= (++!462 (t!22778 baseList!9) newList!20) lt!40207)))

(declare-fun b!132968 () Bool)

(assert (=> b!132968 (= e!76906 (Cons!2186 (h!7583 (t!22778 baseList!9)) (++!462 (t!22778 (t!22778 baseList!9)) newList!20)))))

(declare-fun b!132969 () Bool)

(declare-fun res!62035 () Bool)

(assert (=> b!132969 (=> (not res!62035) (not e!76905))))

(assert (=> b!132969 (= res!62035 (= (size!1989 lt!40207) (+ (size!1989 (t!22778 baseList!9)) (size!1989 newList!20))))))

(assert (= (and d!31664 c!28553) b!132967))

(assert (= (and d!31664 (not c!28553)) b!132968))

(assert (= (and d!31664 res!62036) b!132969))

(assert (= (and b!132969 res!62035) b!132970))

(declare-fun m!117971 () Bool)

(assert (=> d!31664 m!117971))

(assert (=> d!31664 m!117929))

(assert (=> d!31664 m!117697))

(declare-fun m!117973 () Bool)

(assert (=> b!132968 m!117973))

(declare-fun m!117975 () Bool)

(assert (=> b!132969 m!117975))

(assert (=> b!132969 m!117969))

(assert (=> b!132969 m!117703))

(assert (=> b!132780 d!31664))

(declare-fun d!31666 () Bool)

(declare-fun lt!40210 () Int)

(assert (=> d!31666 (>= lt!40210 0)))

(declare-fun e!76909 () Int)

(assert (=> d!31666 (= lt!40210 e!76909)))

(declare-fun c!28556 () Bool)

(assert (=> d!31666 (= c!28556 ((_ is Nil!2186) lt!40150))))

(assert (=> d!31666 (= (size!1989 lt!40150) lt!40210)))

(declare-fun b!132975 () Bool)

(assert (=> b!132975 (= e!76909 0)))

(declare-fun b!132976 () Bool)

(assert (=> b!132976 (= e!76909 (+ 1 (size!1989 (t!22778 lt!40150))))))

(assert (= (and d!31666 c!28556) b!132975))

(assert (= (and d!31666 (not c!28556)) b!132976))

(declare-fun m!117977 () Bool)

(assert (=> b!132976 m!117977))

(assert (=> b!132715 d!31666))

(declare-fun d!31668 () Bool)

(declare-fun lt!40211 () Int)

(assert (=> d!31668 (>= lt!40211 0)))

(declare-fun e!76910 () Int)

(assert (=> d!31668 (= lt!40211 e!76910)))

(declare-fun c!28557 () Bool)

(assert (=> d!31668 (= c!28557 ((_ is Nil!2186) lt!40140))))

(assert (=> d!31668 (= (size!1989 lt!40140) lt!40211)))

(declare-fun b!132977 () Bool)

(assert (=> b!132977 (= e!76910 0)))

(declare-fun b!132978 () Bool)

(assert (=> b!132978 (= e!76910 (+ 1 (size!1989 (t!22778 lt!40140))))))

(assert (= (and d!31668 c!28557) b!132977))

(assert (= (and d!31668 (not c!28557)) b!132978))

(declare-fun m!117979 () Bool)

(assert (=> b!132978 m!117979))

(assert (=> b!132715 d!31668))

(declare-fun d!31670 () Bool)

(declare-fun lt!40212 () Int)

(assert (=> d!31670 (>= lt!40212 0)))

(declare-fun e!76911 () Int)

(assert (=> d!31670 (= lt!40212 e!76911)))

(declare-fun c!28558 () Bool)

(assert (=> d!31670 (= c!28558 ((_ is Nil!2186) (t!22778 newList!20)))))

(assert (=> d!31670 (= (size!1989 (t!22778 newList!20)) lt!40212)))

(declare-fun b!132979 () Bool)

(assert (=> b!132979 (= e!76911 0)))

(declare-fun b!132980 () Bool)

(assert (=> b!132980 (= e!76911 (+ 1 (size!1989 (t!22778 (t!22778 newList!20)))))))

(assert (= (and d!31670 c!28558) b!132979))

(assert (= (and d!31670 (not c!28558)) b!132980))

(declare-fun m!117981 () Bool)

(assert (=> b!132980 m!117981))

(assert (=> b!132715 d!31670))

(declare-fun d!31672 () Bool)

(assert (=> d!31672 (= (head!528 baseList!9) (h!7583 baseList!9))))

(assert (=> b!132805 d!31672))

(declare-fun d!31674 () Bool)

(assert (=> d!31674 (= (head!528 lt!40138) (h!7583 lt!40138))))

(assert (=> b!132805 d!31674))

(declare-fun d!31676 () Bool)

(assert (=> d!31676 (= (head!528 lt!40140) (h!7583 lt!40140))))

(assert (=> b!132900 d!31676))

(assert (=> b!132900 d!31674))

(declare-fun b!132981 () Bool)

(declare-fun e!76913 () Bool)

(declare-fun e!76914 () Bool)

(assert (=> b!132981 (= e!76913 e!76914)))

(declare-fun res!62039 () Bool)

(assert (=> b!132981 (=> (not res!62039) (not e!76914))))

(assert (=> b!132981 (= res!62039 (not ((_ is Nil!2186) (tail!274 lt!40140))))))

(declare-fun b!132982 () Bool)

(declare-fun res!62038 () Bool)

(assert (=> b!132982 (=> (not res!62038) (not e!76914))))

(assert (=> b!132982 (= res!62038 (= (head!528 (tail!274 baseList!9)) (head!528 (tail!274 lt!40140))))))

(declare-fun b!132984 () Bool)

(declare-fun e!76912 () Bool)

(assert (=> b!132984 (= e!76912 (>= (size!1989 (tail!274 lt!40140)) (size!1989 (tail!274 baseList!9))))))

(declare-fun d!31678 () Bool)

(assert (=> d!31678 e!76912))

(declare-fun res!62037 () Bool)

(assert (=> d!31678 (=> res!62037 e!76912)))

(declare-fun lt!40213 () Bool)

(assert (=> d!31678 (= res!62037 (not lt!40213))))

(assert (=> d!31678 (= lt!40213 e!76913)))

(declare-fun res!62040 () Bool)

(assert (=> d!31678 (=> res!62040 e!76913)))

(assert (=> d!31678 (= res!62040 ((_ is Nil!2186) (tail!274 baseList!9)))))

(assert (=> d!31678 (= (isPrefix!181 (tail!274 baseList!9) (tail!274 lt!40140)) lt!40213)))

(declare-fun b!132983 () Bool)

(assert (=> b!132983 (= e!76914 (isPrefix!181 (tail!274 (tail!274 baseList!9)) (tail!274 (tail!274 lt!40140))))))

(assert (= (and d!31678 (not res!62040)) b!132981))

(assert (= (and b!132981 res!62039) b!132982))

(assert (= (and b!132982 res!62038) b!132983))

(assert (= (and d!31678 (not res!62037)) b!132984))

(assert (=> b!132982 m!117727))

(declare-fun m!117983 () Bool)

(assert (=> b!132982 m!117983))

(assert (=> b!132982 m!117887))

(declare-fun m!117985 () Bool)

(assert (=> b!132982 m!117985))

(assert (=> b!132984 m!117887))

(declare-fun m!117987 () Bool)

(assert (=> b!132984 m!117987))

(assert (=> b!132984 m!117727))

(declare-fun m!117989 () Bool)

(assert (=> b!132984 m!117989))

(assert (=> b!132983 m!117727))

(declare-fun m!117991 () Bool)

(assert (=> b!132983 m!117991))

(assert (=> b!132983 m!117887))

(declare-fun m!117993 () Bool)

(assert (=> b!132983 m!117993))

(assert (=> b!132983 m!117991))

(assert (=> b!132983 m!117993))

(declare-fun m!117995 () Bool)

(assert (=> b!132983 m!117995))

(assert (=> b!132897 d!31678))

(declare-fun d!31680 () Bool)

(assert (=> d!31680 (= (tail!274 baseList!9) (t!22778 baseList!9))))

(assert (=> b!132897 d!31680))

(declare-fun d!31682 () Bool)

(assert (=> d!31682 (= (tail!274 lt!40140) (t!22778 lt!40140))))

(assert (=> b!132897 d!31682))

(declare-fun d!31684 () Bool)

(declare-fun lt!40214 () Int)

(assert (=> d!31684 (>= lt!40214 0)))

(declare-fun e!76915 () Int)

(assert (=> d!31684 (= lt!40214 e!76915)))

(declare-fun c!28559 () Bool)

(assert (=> d!31684 (= c!28559 ((_ is Nil!2186) lt!40138))))

(assert (=> d!31684 (= (size!1989 lt!40138) lt!40214)))

(declare-fun b!132985 () Bool)

(assert (=> b!132985 (= e!76915 0)))

(declare-fun b!132986 () Bool)

(assert (=> b!132986 (= e!76915 (+ 1 (size!1989 (t!22778 lt!40138))))))

(assert (= (and d!31684 c!28559) b!132985))

(assert (= (and d!31684 (not c!28559)) b!132986))

(declare-fun m!117997 () Bool)

(assert (=> b!132986 m!117997))

(assert (=> b!132902 d!31684))

(assert (=> b!132902 d!31668))

(declare-fun d!31686 () Bool)

(declare-fun res!62042 () Bool)

(declare-fun e!76916 () Bool)

(assert (=> d!31686 (=> res!62042 e!76916)))

(assert (=> d!31686 (= res!62042 ((_ is Nil!2186) (t!22778 lt!40138)))))

(assert (=> d!31686 (= (subseq!53 (t!22778 lt!40138) (t!22778 lt!40142)) e!76916)))

(declare-fun b!132988 () Bool)

(declare-fun e!76919 () Bool)

(declare-fun e!76917 () Bool)

(assert (=> b!132988 (= e!76919 e!76917)))

(declare-fun res!62043 () Bool)

(assert (=> b!132988 (=> res!62043 e!76917)))

(declare-fun e!76918 () Bool)

(assert (=> b!132988 (= res!62043 e!76918)))

(declare-fun res!62044 () Bool)

(assert (=> b!132988 (=> (not res!62044) (not e!76918))))

(assert (=> b!132988 (= res!62044 (= (h!7583 (t!22778 lt!40138)) (h!7583 (t!22778 lt!40142))))))

(declare-fun b!132987 () Bool)

(assert (=> b!132987 (= e!76916 e!76919)))

(declare-fun res!62041 () Bool)

(assert (=> b!132987 (=> (not res!62041) (not e!76919))))

(assert (=> b!132987 (= res!62041 ((_ is Cons!2186) (t!22778 lt!40142)))))

(declare-fun b!132990 () Bool)

(assert (=> b!132990 (= e!76917 (subseq!53 (t!22778 lt!40138) (t!22778 (t!22778 lt!40142))))))

(declare-fun b!132989 () Bool)

(assert (=> b!132989 (= e!76918 (subseq!53 (t!22778 (t!22778 lt!40138)) (t!22778 (t!22778 lt!40142))))))

(assert (= (and d!31686 (not res!62042)) b!132987))

(assert (= (and b!132987 res!62041) b!132988))

(assert (= (and b!132988 res!62044) b!132989))

(assert (= (and b!132988 (not res!62043)) b!132990))

(declare-fun m!117999 () Bool)

(assert (=> b!132990 m!117999))

(declare-fun m!118001 () Bool)

(assert (=> b!132989 m!118001))

(assert (=> b!132745 d!31686))

(declare-fun b!132994 () Bool)

(declare-fun e!76920 () Bool)

(declare-fun lt!40215 () List!2192)

(assert (=> b!132994 (= e!76920 (or (not (= lt!40129 Nil!2186)) (= lt!40215 (t!22778 baseList!9))))))

(declare-fun b!132991 () Bool)

(declare-fun e!76921 () List!2192)

(assert (=> b!132991 (= e!76921 lt!40129)))

(declare-fun d!31688 () Bool)

(assert (=> d!31688 e!76920))

(declare-fun res!62046 () Bool)

(assert (=> d!31688 (=> (not res!62046) (not e!76920))))

(assert (=> d!31688 (= res!62046 (= (content!299 lt!40215) ((_ map or) (content!299 (t!22778 baseList!9)) (content!299 lt!40129))))))

(assert (=> d!31688 (= lt!40215 e!76921)))

(declare-fun c!28560 () Bool)

(assert (=> d!31688 (= c!28560 ((_ is Nil!2186) (t!22778 baseList!9)))))

(assert (=> d!31688 (= (++!462 (t!22778 baseList!9) lt!40129) lt!40215)))

(declare-fun b!132992 () Bool)

(assert (=> b!132992 (= e!76921 (Cons!2186 (h!7583 (t!22778 baseList!9)) (++!462 (t!22778 (t!22778 baseList!9)) lt!40129)))))

(declare-fun b!132993 () Bool)

(declare-fun res!62045 () Bool)

(assert (=> b!132993 (=> (not res!62045) (not e!76920))))

(assert (=> b!132993 (= res!62045 (= (size!1989 lt!40215) (+ (size!1989 (t!22778 baseList!9)) (size!1989 lt!40129))))))

(assert (= (and d!31688 c!28560) b!132991))

(assert (= (and d!31688 (not c!28560)) b!132992))

(assert (= (and d!31688 res!62046) b!132993))

(assert (= (and b!132993 res!62045) b!132994))

(declare-fun m!118003 () Bool)

(assert (=> d!31688 m!118003))

(assert (=> d!31688 m!117929))

(assert (=> d!31688 m!117663))

(declare-fun m!118005 () Bool)

(assert (=> b!132992 m!118005))

(declare-fun m!118007 () Bool)

(assert (=> b!132993 m!118007))

(assert (=> b!132993 m!117969))

(assert (=> b!132993 m!117669))

(assert (=> b!132892 d!31688))

(declare-fun d!31690 () Bool)

(declare-fun lt!40216 () Bool)

(assert (=> d!31690 (= lt!40216 (select (content!299 (t!22778 lt!40138)) (h!7583 lt!40138)))))

(declare-fun e!76922 () Bool)

(assert (=> d!31690 (= lt!40216 e!76922)))

(declare-fun res!62048 () Bool)

(assert (=> d!31690 (=> (not res!62048) (not e!76922))))

(assert (=> d!31690 (= res!62048 ((_ is Cons!2186) (t!22778 lt!40138)))))

(assert (=> d!31690 (= (contains!366 (t!22778 lt!40138) (h!7583 lt!40138)) lt!40216)))

(declare-fun b!132995 () Bool)

(declare-fun e!76923 () Bool)

(assert (=> b!132995 (= e!76922 e!76923)))

(declare-fun res!62047 () Bool)

(assert (=> b!132995 (=> res!62047 e!76923)))

(assert (=> b!132995 (= res!62047 (= (h!7583 (t!22778 lt!40138)) (h!7583 lt!40138)))))

(declare-fun b!132996 () Bool)

(assert (=> b!132996 (= e!76923 (contains!366 (t!22778 (t!22778 lt!40138)) (h!7583 lt!40138)))))

(assert (= (and d!31690 res!62048) b!132995))

(assert (= (and b!132995 (not res!62047)) b!132996))

(assert (=> d!31690 m!117591))

(declare-fun m!118009 () Bool)

(assert (=> d!31690 m!118009))

(declare-fun m!118011 () Bool)

(assert (=> b!132996 m!118011))

(assert (=> b!132871 d!31690))

(assert (=> b!132807 d!31684))

(declare-fun d!31692 () Bool)

(declare-fun lt!40217 () Int)

(assert (=> d!31692 (>= lt!40217 0)))

(declare-fun e!76924 () Int)

(assert (=> d!31692 (= lt!40217 e!76924)))

(declare-fun c!28561 () Bool)

(assert (=> d!31692 (= c!28561 ((_ is Nil!2186) baseList!9))))

(assert (=> d!31692 (= (size!1989 baseList!9) lt!40217)))

(declare-fun b!132997 () Bool)

(assert (=> b!132997 (= e!76924 0)))

(declare-fun b!132998 () Bool)

(assert (=> b!132998 (= e!76924 (+ 1 (size!1989 (t!22778 baseList!9))))))

(assert (= (and d!31692 c!28561) b!132997))

(assert (= (and d!31692 (not c!28561)) b!132998))

(assert (=> b!132998 m!117969))

(assert (=> b!132807 d!31692))

(declare-fun d!31694 () Bool)

(declare-fun c!28562 () Bool)

(assert (=> d!31694 (= c!28562 ((_ is Nil!2186) (++!462 lt!40140 (t!22778 newList!20))))))

(declare-fun e!76925 () (InoxSet B!777))

(assert (=> d!31694 (= (content!299 (++!462 lt!40140 (t!22778 newList!20))) e!76925)))

(declare-fun b!132999 () Bool)

(assert (=> b!132999 (= e!76925 ((as const (Array B!777 Bool)) false))))

(declare-fun b!133000 () Bool)

(assert (=> b!133000 (= e!76925 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 (++!462 lt!40140 (t!22778 newList!20))) true) (content!299 (t!22778 (++!462 lt!40140 (t!22778 newList!20))))))))

(assert (= (and d!31694 c!28562) b!132999))

(assert (= (and d!31694 (not c!28562)) b!133000))

(declare-fun m!118013 () Bool)

(assert (=> b!133000 m!118013))

(declare-fun m!118015 () Bool)

(assert (=> b!133000 m!118015))

(assert (=> b!132868 d!31694))

(assert (=> b!132868 d!31534))

(declare-fun d!31696 () Bool)

(declare-fun c!28563 () Bool)

(assert (=> d!31696 (= c!28563 ((_ is Nil!2186) lt!40190))))

(declare-fun e!76926 () (InoxSet B!777))

(assert (=> d!31696 (= (content!299 lt!40190) e!76926)))

(declare-fun b!133001 () Bool)

(assert (=> b!133001 (= e!76926 ((as const (Array B!777 Bool)) false))))

(declare-fun b!133002 () Bool)

(assert (=> b!133002 (= e!76926 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40190) true) (content!299 (t!22778 lt!40190))))))

(assert (= (and d!31696 c!28563) b!133001))

(assert (= (and d!31696 (not c!28563)) b!133002))

(declare-fun m!118017 () Bool)

(assert (=> b!133002 m!118017))

(declare-fun m!118019 () Bool)

(assert (=> b!133002 m!118019))

(assert (=> b!132868 d!31696))

(declare-fun d!31698 () Bool)

(declare-fun lt!40218 () Bool)

(assert (=> d!31698 (= lt!40218 (select (content!299 (t!22778 lt!40140)) (h!7583 lt!40140)))))

(declare-fun e!76927 () Bool)

(assert (=> d!31698 (= lt!40218 e!76927)))

(declare-fun res!62050 () Bool)

(assert (=> d!31698 (=> (not res!62050) (not e!76927))))

(assert (=> d!31698 (= res!62050 ((_ is Cons!2186) (t!22778 lt!40140)))))

(assert (=> d!31698 (= (contains!366 (t!22778 lt!40140) (h!7583 lt!40140)) lt!40218)))

(declare-fun b!133003 () Bool)

(declare-fun e!76928 () Bool)

(assert (=> b!133003 (= e!76927 e!76928)))

(declare-fun res!62049 () Bool)

(assert (=> b!133003 (=> res!62049 e!76928)))

(assert (=> b!133003 (= res!62049 (= (h!7583 (t!22778 lt!40140)) (h!7583 lt!40140)))))

(declare-fun b!133004 () Bool)

(assert (=> b!133004 (= e!76928 (contains!366 (t!22778 (t!22778 lt!40140)) (h!7583 lt!40140)))))

(assert (= (and d!31698 res!62050) b!133003))

(assert (= (and b!133003 (not res!62049)) b!133004))

(assert (=> d!31698 m!117959))

(declare-fun m!118021 () Bool)

(assert (=> d!31698 m!118021))

(declare-fun m!118023 () Bool)

(assert (=> b!133004 m!118023))

(assert (=> b!132822 d!31698))

(declare-fun d!31700 () Bool)

(declare-fun res!62052 () Bool)

(declare-fun e!76929 () Bool)

(assert (=> d!31700 (=> res!62052 e!76929)))

(assert (=> d!31700 (= res!62052 ((_ is Nil!2186) (t!22778 lt!40138)))))

(assert (=> d!31700 (= (subseq!53 (t!22778 lt!40138) (t!22778 lt!40134)) e!76929)))

(declare-fun b!133006 () Bool)

(declare-fun e!76932 () Bool)

(declare-fun e!76930 () Bool)

(assert (=> b!133006 (= e!76932 e!76930)))

(declare-fun res!62053 () Bool)

(assert (=> b!133006 (=> res!62053 e!76930)))

(declare-fun e!76931 () Bool)

(assert (=> b!133006 (= res!62053 e!76931)))

(declare-fun res!62054 () Bool)

(assert (=> b!133006 (=> (not res!62054) (not e!76931))))

(assert (=> b!133006 (= res!62054 (= (h!7583 (t!22778 lt!40138)) (h!7583 (t!22778 lt!40134))))))

(declare-fun b!133005 () Bool)

(assert (=> b!133005 (= e!76929 e!76932)))

(declare-fun res!62051 () Bool)

(assert (=> b!133005 (=> (not res!62051) (not e!76932))))

(assert (=> b!133005 (= res!62051 ((_ is Cons!2186) (t!22778 lt!40134)))))

(declare-fun b!133008 () Bool)

(assert (=> b!133008 (= e!76930 (subseq!53 (t!22778 lt!40138) (t!22778 (t!22778 lt!40134))))))

(declare-fun b!133007 () Bool)

(assert (=> b!133007 (= e!76931 (subseq!53 (t!22778 (t!22778 lt!40138)) (t!22778 (t!22778 lt!40134))))))

(assert (= (and d!31700 (not res!62052)) b!133005))

(assert (= (and b!133005 res!62051) b!133006))

(assert (= (and b!133006 res!62054) b!133007))

(assert (= (and b!133006 (not res!62053)) b!133008))

(declare-fun m!118025 () Bool)

(assert (=> b!133008 m!118025))

(declare-fun m!118027 () Bool)

(assert (=> b!133007 m!118027))

(assert (=> b!132727 d!31700))

(declare-fun d!31702 () Bool)

(declare-fun c!28564 () Bool)

(assert (=> d!31702 (= c!28564 ((_ is Nil!2186) (t!22778 lt!40138)))))

(declare-fun e!76933 () (InoxSet B!777))

(assert (=> d!31702 (= (content!299 (t!22778 lt!40138)) e!76933)))

(declare-fun b!133009 () Bool)

(assert (=> b!133009 (= e!76933 ((as const (Array B!777 Bool)) false))))

(declare-fun b!133010 () Bool)

(assert (=> b!133010 (= e!76933 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 (t!22778 lt!40138)) true) (content!299 (t!22778 (t!22778 lt!40138)))))))

(assert (= (and d!31702 c!28564) b!133009))

(assert (= (and d!31702 (not c!28564)) b!133010))

(declare-fun m!118029 () Bool)

(assert (=> b!133010 m!118029))

(declare-fun m!118031 () Bool)

(assert (=> b!133010 m!118031))

(assert (=> b!132698 d!31702))

(declare-fun b!133011 () Bool)

(declare-fun e!76935 () Bool)

(declare-fun e!76936 () Bool)

(assert (=> b!133011 (= e!76935 e!76936)))

(declare-fun res!62057 () Bool)

(assert (=> b!133011 (=> (not res!62057) (not e!76936))))

(assert (=> b!133011 (= res!62057 (not ((_ is Nil!2186) lt!40190)))))

(declare-fun b!133012 () Bool)

(declare-fun res!62056 () Bool)

(assert (=> b!133012 (=> (not res!62056) (not e!76936))))

(assert (=> b!133012 (= res!62056 (= (head!528 lt!40140) (head!528 lt!40190)))))

(declare-fun b!133014 () Bool)

(declare-fun e!76934 () Bool)

(assert (=> b!133014 (= e!76934 (>= (size!1989 lt!40190) (size!1989 lt!40140)))))

(declare-fun d!31704 () Bool)

(assert (=> d!31704 e!76934))

(declare-fun res!62055 () Bool)

(assert (=> d!31704 (=> res!62055 e!76934)))

(declare-fun lt!40219 () Bool)

(assert (=> d!31704 (= res!62055 (not lt!40219))))

(assert (=> d!31704 (= lt!40219 e!76935)))

(declare-fun res!62058 () Bool)

(assert (=> d!31704 (=> res!62058 e!76935)))

(assert (=> d!31704 (= res!62058 ((_ is Nil!2186) lt!40140))))

(assert (=> d!31704 (= (isPrefix!181 lt!40140 lt!40190) lt!40219)))

(declare-fun b!133013 () Bool)

(assert (=> b!133013 (= e!76936 (isPrefix!181 (tail!274 lt!40140) (tail!274 lt!40190)))))

(assert (= (and d!31704 (not res!62058)) b!133011))

(assert (= (and b!133011 res!62057) b!133012))

(assert (= (and b!133012 res!62056) b!133013))

(assert (= (and d!31704 (not res!62055)) b!133014))

(assert (=> b!133012 m!117885))

(declare-fun m!118033 () Bool)

(assert (=> b!133012 m!118033))

(declare-fun m!118035 () Bool)

(assert (=> b!133014 m!118035))

(assert (=> b!133014 m!117609))

(assert (=> b!133013 m!117887))

(declare-fun m!118037 () Bool)

(assert (=> b!133013 m!118037))

(assert (=> b!133013 m!117887))

(assert (=> b!133013 m!118037))

(declare-fun m!118039 () Bool)

(assert (=> b!133013 m!118039))

(assert (=> b!132870 d!31704))

(declare-fun lt!40220 () List!2192)

(declare-fun e!76937 () Bool)

(declare-fun b!133018 () Bool)

(assert (=> b!133018 (= e!76937 (or (not (= newList!20 Nil!2186)) (= lt!40220 (t!22778 lt!40140))))))

(declare-fun b!133015 () Bool)

(declare-fun e!76938 () List!2192)

(assert (=> b!133015 (= e!76938 newList!20)))

(declare-fun d!31706 () Bool)

(assert (=> d!31706 e!76937))

(declare-fun res!62060 () Bool)

(assert (=> d!31706 (=> (not res!62060) (not e!76937))))

(assert (=> d!31706 (= res!62060 (= (content!299 lt!40220) ((_ map or) (content!299 (t!22778 lt!40140)) (content!299 newList!20))))))

(assert (=> d!31706 (= lt!40220 e!76938)))

(declare-fun c!28565 () Bool)

(assert (=> d!31706 (= c!28565 ((_ is Nil!2186) (t!22778 lt!40140)))))

(assert (=> d!31706 (= (++!462 (t!22778 lt!40140) newList!20) lt!40220)))

(declare-fun b!133016 () Bool)

(assert (=> b!133016 (= e!76938 (Cons!2186 (h!7583 (t!22778 lt!40140)) (++!462 (t!22778 (t!22778 lt!40140)) newList!20)))))

(declare-fun b!133017 () Bool)

(declare-fun res!62059 () Bool)

(assert (=> b!133017 (=> (not res!62059) (not e!76937))))

(assert (=> b!133017 (= res!62059 (= (size!1989 lt!40220) (+ (size!1989 (t!22778 lt!40140)) (size!1989 newList!20))))))

(assert (= (and d!31706 c!28565) b!133015))

(assert (= (and d!31706 (not c!28565)) b!133016))

(assert (= (and d!31706 res!62060) b!133017))

(assert (= (and b!133017 res!62059) b!133018))

(declare-fun m!118041 () Bool)

(assert (=> d!31706 m!118041))

(assert (=> d!31706 m!117959))

(assert (=> d!31706 m!117697))

(declare-fun m!118043 () Bool)

(assert (=> b!133016 m!118043))

(declare-fun m!118045 () Bool)

(assert (=> b!133017 m!118045))

(assert (=> b!133017 m!117979))

(assert (=> b!133017 m!117703))

(assert (=> b!132819 d!31706))

(declare-fun d!31708 () Bool)

(declare-fun lt!40221 () Int)

(assert (=> d!31708 (>= lt!40221 0)))

(declare-fun e!76939 () Int)

(assert (=> d!31708 (= lt!40221 e!76939)))

(declare-fun c!28566 () Bool)

(assert (=> d!31708 (= c!28566 ((_ is Nil!2186) lt!40153))))

(assert (=> d!31708 (= (size!1989 lt!40153) lt!40221)))

(declare-fun b!133019 () Bool)

(assert (=> b!133019 (= e!76939 0)))

(declare-fun b!133020 () Bool)

(assert (=> b!133020 (= e!76939 (+ 1 (size!1989 (t!22778 lt!40153))))))

(assert (= (and d!31708 c!28566) b!133019))

(assert (= (and d!31708 (not c!28566)) b!133020))

(declare-fun m!118047 () Bool)

(assert (=> b!133020 m!118047))

(assert (=> b!132755 d!31708))

(declare-fun d!31710 () Bool)

(declare-fun lt!40222 () Int)

(assert (=> d!31710 (>= lt!40222 0)))

(declare-fun e!76940 () Int)

(assert (=> d!31710 (= lt!40222 e!76940)))

(declare-fun c!28567 () Bool)

(assert (=> d!31710 (= c!28567 ((_ is Nil!2186) lt!40129))))

(assert (=> d!31710 (= (size!1989 lt!40129) lt!40222)))

(declare-fun b!133021 () Bool)

(assert (=> b!133021 (= e!76940 0)))

(declare-fun b!133022 () Bool)

(assert (=> b!133022 (= e!76940 (+ 1 (size!1989 (t!22778 lt!40129))))))

(assert (= (and d!31710 c!28567) b!133021))

(assert (= (and d!31710 (not c!28567)) b!133022))

(declare-fun m!118049 () Bool)

(assert (=> b!133022 m!118049))

(assert (=> b!132755 d!31710))

(assert (=> b!132755 d!31670))

(declare-fun d!31712 () Bool)

(declare-fun c!28568 () Bool)

(assert (=> d!31712 (= c!28568 ((_ is Nil!2186) lt!40150))))

(declare-fun e!76941 () (InoxSet B!777))

(assert (=> d!31712 (= (content!299 lt!40150) e!76941)))

(declare-fun b!133023 () Bool)

(assert (=> b!133023 (= e!76941 ((as const (Array B!777 Bool)) false))))

(declare-fun b!133024 () Bool)

(assert (=> b!133024 (= e!76941 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40150) true) (content!299 (t!22778 lt!40150))))))

(assert (= (and d!31712 c!28568) b!133023))

(assert (= (and d!31712 (not c!28568)) b!133024))

(declare-fun m!118051 () Bool)

(assert (=> b!133024 m!118051))

(declare-fun m!118053 () Bool)

(assert (=> b!133024 m!118053))

(assert (=> d!31534 d!31712))

(assert (=> d!31534 d!31658))

(declare-fun d!31714 () Bool)

(declare-fun c!28569 () Bool)

(assert (=> d!31714 (= c!28569 ((_ is Nil!2186) (t!22778 newList!20)))))

(declare-fun e!76942 () (InoxSet B!777))

(assert (=> d!31714 (= (content!299 (t!22778 newList!20)) e!76942)))

(declare-fun b!133025 () Bool)

(assert (=> b!133025 (= e!76942 ((as const (Array B!777 Bool)) false))))

(declare-fun b!133026 () Bool)

(assert (=> b!133026 (= e!76942 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 (t!22778 newList!20)) true) (content!299 (t!22778 (t!22778 newList!20)))))))

(assert (= (and d!31714 c!28569) b!133025))

(assert (= (and d!31714 (not c!28569)) b!133026))

(declare-fun m!118055 () Bool)

(assert (=> b!133026 m!118055))

(declare-fun m!118057 () Bool)

(assert (=> b!133026 m!118057))

(assert (=> d!31534 d!31714))

(declare-fun d!31716 () Bool)

(declare-fun res!62062 () Bool)

(declare-fun e!76943 () Bool)

(assert (=> d!31716 (=> res!62062 e!76943)))

(assert (=> d!31716 (= res!62062 ((_ is Nil!2186) (t!22778 lt!40138)))))

(assert (=> d!31716 (= (subseq!53 (t!22778 lt!40138) (t!22778 lt!40136)) e!76943)))

(declare-fun b!133028 () Bool)

(declare-fun e!76946 () Bool)

(declare-fun e!76944 () Bool)

(assert (=> b!133028 (= e!76946 e!76944)))

(declare-fun res!62063 () Bool)

(assert (=> b!133028 (=> res!62063 e!76944)))

(declare-fun e!76945 () Bool)

(assert (=> b!133028 (= res!62063 e!76945)))

(declare-fun res!62064 () Bool)

(assert (=> b!133028 (=> (not res!62064) (not e!76945))))

(assert (=> b!133028 (= res!62064 (= (h!7583 (t!22778 lt!40138)) (h!7583 (t!22778 lt!40136))))))

(declare-fun b!133027 () Bool)

(assert (=> b!133027 (= e!76943 e!76946)))

(declare-fun res!62061 () Bool)

(assert (=> b!133027 (=> (not res!62061) (not e!76946))))

(assert (=> b!133027 (= res!62061 ((_ is Cons!2186) (t!22778 lt!40136)))))

(declare-fun b!133030 () Bool)

(assert (=> b!133030 (= e!76944 (subseq!53 (t!22778 lt!40138) (t!22778 (t!22778 lt!40136))))))

(declare-fun b!133029 () Bool)

(assert (=> b!133029 (= e!76945 (subseq!53 (t!22778 (t!22778 lt!40138)) (t!22778 (t!22778 lt!40136))))))

(assert (= (and d!31716 (not res!62062)) b!133027))

(assert (= (and b!133027 res!62061) b!133028))

(assert (= (and b!133028 res!62064) b!133029))

(assert (= (and b!133028 (not res!62063)) b!133030))

(assert (=> b!133030 m!117915))

(declare-fun m!118059 () Bool)

(assert (=> b!133029 m!118059))

(assert (=> b!132907 d!31716))

(assert (=> d!31554 d!31546))

(assert (=> d!31554 d!31548))

(declare-fun b!133034 () Bool)

(declare-fun lt!40223 () List!2192)

(declare-fun e!76947 () Bool)

(assert (=> b!133034 (= e!76947 (or (not (= (t!22778 newList!20) Nil!2186)) (= lt!40223 (++!462 baseList!9 lt!40129))))))

(declare-fun b!133031 () Bool)

(declare-fun e!76948 () List!2192)

(assert (=> b!133031 (= e!76948 (t!22778 newList!20))))

(declare-fun d!31718 () Bool)

(assert (=> d!31718 e!76947))

(declare-fun res!62066 () Bool)

(assert (=> d!31718 (=> (not res!62066) (not e!76947))))

(assert (=> d!31718 (= res!62066 (= (content!299 lt!40223) ((_ map or) (content!299 (++!462 baseList!9 lt!40129)) (content!299 (t!22778 newList!20)))))))

(assert (=> d!31718 (= lt!40223 e!76948)))

(declare-fun c!28570 () Bool)

(assert (=> d!31718 (= c!28570 ((_ is Nil!2186) (++!462 baseList!9 lt!40129)))))

(assert (=> d!31718 (= (++!462 (++!462 baseList!9 lt!40129) (t!22778 newList!20)) lt!40223)))

(declare-fun b!133032 () Bool)

(assert (=> b!133032 (= e!76948 (Cons!2186 (h!7583 (++!462 baseList!9 lt!40129)) (++!462 (t!22778 (++!462 baseList!9 lt!40129)) (t!22778 newList!20))))))

(declare-fun b!133033 () Bool)

(declare-fun res!62065 () Bool)

(assert (=> b!133033 (=> (not res!62065) (not e!76947))))

(assert (=> b!133033 (= res!62065 (= (size!1989 lt!40223) (+ (size!1989 (++!462 baseList!9 lt!40129)) (size!1989 (t!22778 newList!20)))))))

(assert (= (and d!31718 c!28570) b!133031))

(assert (= (and d!31718 (not c!28570)) b!133032))

(assert (= (and d!31718 res!62066) b!133033))

(assert (= (and b!133033 res!62065) b!133034))

(declare-fun m!118061 () Bool)

(assert (=> d!31718 m!118061))

(assert (=> d!31718 m!117575))

(declare-fun m!118063 () Bool)

(assert (=> d!31718 m!118063))

(assert (=> d!31718 m!117603))

(declare-fun m!118065 () Bool)

(assert (=> b!133032 m!118065))

(declare-fun m!118067 () Bool)

(assert (=> b!133033 m!118067))

(assert (=> b!133033 m!117575))

(declare-fun m!118069 () Bool)

(assert (=> b!133033 m!118069))

(assert (=> b!133033 m!117611))

(assert (=> d!31554 d!31718))

(assert (=> d!31554 d!31624))

(declare-fun d!31720 () Bool)

(assert (=> d!31720 (= (++!462 (++!462 baseList!9 lt!40129) (t!22778 newList!20)) (++!462 baseList!9 (++!462 lt!40129 (t!22778 newList!20))))))

(assert (=> d!31720 true))

(declare-fun _$52!555 () Unit!1752)

(assert (=> d!31720 (= (choose!1691 baseList!9 lt!40129 (t!22778 newList!20)) _$52!555)))

(declare-fun bs!12668 () Bool)

(assert (= bs!12668 d!31720))

(assert (=> bs!12668 m!117575))

(assert (=> bs!12668 m!117575))

(assert (=> bs!12668 m!117671))

(assert (=> bs!12668 m!117545))

(assert (=> bs!12668 m!117545))

(assert (=> bs!12668 m!117547))

(assert (=> d!31554 d!31720))

(declare-fun d!31722 () Bool)

(declare-fun res!62068 () Bool)

(declare-fun e!76949 () Bool)

(assert (=> d!31722 (=> res!62068 e!76949)))

(assert (=> d!31722 (= res!62068 ((_ is Nil!2186) (t!22778 lt!40138)))))

(assert (=> d!31722 (= (subseq!53 (t!22778 lt!40138) (t!22778 lt!40141)) e!76949)))

(declare-fun b!133036 () Bool)

(declare-fun e!76952 () Bool)

(declare-fun e!76950 () Bool)

(assert (=> b!133036 (= e!76952 e!76950)))

(declare-fun res!62069 () Bool)

(assert (=> b!133036 (=> res!62069 e!76950)))

(declare-fun e!76951 () Bool)

(assert (=> b!133036 (= res!62069 e!76951)))

(declare-fun res!62070 () Bool)

(assert (=> b!133036 (=> (not res!62070) (not e!76951))))

(assert (=> b!133036 (= res!62070 (= (h!7583 (t!22778 lt!40138)) (h!7583 (t!22778 lt!40141))))))

(declare-fun b!133035 () Bool)

(assert (=> b!133035 (= e!76949 e!76952)))

(declare-fun res!62067 () Bool)

(assert (=> b!133035 (=> (not res!62067) (not e!76952))))

(assert (=> b!133035 (= res!62067 ((_ is Cons!2186) (t!22778 lt!40141)))))

(declare-fun b!133038 () Bool)

(assert (=> b!133038 (= e!76950 (subseq!53 (t!22778 lt!40138) (t!22778 (t!22778 lt!40141))))))

(declare-fun b!133037 () Bool)

(assert (=> b!133037 (= e!76951 (subseq!53 (t!22778 (t!22778 lt!40138)) (t!22778 (t!22778 lt!40141))))))

(assert (= (and d!31722 (not res!62068)) b!133035))

(assert (= (and b!133035 res!62067) b!133036))

(assert (= (and b!133036 res!62070) b!133037))

(assert (= (and b!133036 (not res!62069)) b!133038))

(assert (=> b!133038 m!117911))

(declare-fun m!118071 () Bool)

(assert (=> b!133037 m!118071))

(assert (=> b!132689 d!31722))

(declare-fun d!31724 () Bool)

(declare-fun lt!40224 () Bool)

(assert (=> d!31724 (= lt!40224 (select (content!299 (t!22778 baseList!9)) (h!7583 newList!20)))))

(declare-fun e!76953 () Bool)

(assert (=> d!31724 (= lt!40224 e!76953)))

(declare-fun res!62072 () Bool)

(assert (=> d!31724 (=> (not res!62072) (not e!76953))))

(assert (=> d!31724 (= res!62072 ((_ is Cons!2186) (t!22778 baseList!9)))))

(assert (=> d!31724 (= (contains!366 (t!22778 baseList!9) (h!7583 newList!20)) lt!40224)))

(declare-fun b!133039 () Bool)

(declare-fun e!76954 () Bool)

(assert (=> b!133039 (= e!76953 e!76954)))

(declare-fun res!62071 () Bool)

(assert (=> b!133039 (=> res!62071 e!76954)))

(assert (=> b!133039 (= res!62071 (= (h!7583 (t!22778 baseList!9)) (h!7583 newList!20)))))

(declare-fun b!133040 () Bool)

(assert (=> b!133040 (= e!76954 (contains!366 (t!22778 (t!22778 baseList!9)) (h!7583 newList!20)))))

(assert (= (and d!31724 res!62072) b!133039))

(assert (= (and b!133039 (not res!62071)) b!133040))

(assert (=> d!31724 m!117929))

(declare-fun m!118073 () Bool)

(assert (=> d!31724 m!118073))

(declare-fun m!118075 () Bool)

(assert (=> b!133040 m!118075))

(assert (=> b!132776 d!31724))

(declare-fun d!31726 () Bool)

(declare-fun res!62073 () Bool)

(declare-fun e!76955 () Bool)

(assert (=> d!31726 (=> res!62073 e!76955)))

(assert (=> d!31726 (= res!62073 ((_ is Nil!2186) (t!22778 baseList!9)))))

(assert (=> d!31726 (= (noDuplicate!82 (t!22778 baseList!9)) e!76955)))

(declare-fun b!133041 () Bool)

(declare-fun e!76956 () Bool)

(assert (=> b!133041 (= e!76955 e!76956)))

(declare-fun res!62074 () Bool)

(assert (=> b!133041 (=> (not res!62074) (not e!76956))))

(assert (=> b!133041 (= res!62074 (not (contains!366 (t!22778 (t!22778 baseList!9)) (h!7583 (t!22778 baseList!9)))))))

(declare-fun b!133042 () Bool)

(assert (=> b!133042 (= e!76956 (noDuplicate!82 (t!22778 (t!22778 baseList!9))))))

(assert (= (and d!31726 (not res!62073)) b!133041))

(assert (= (and b!133041 res!62074) b!133042))

(declare-fun m!118077 () Bool)

(assert (=> b!133041 m!118077))

(declare-fun m!118079 () Bool)

(assert (=> b!133042 m!118079))

(assert (=> b!132738 d!31726))

(declare-fun lt!40225 () List!2192)

(declare-fun e!76957 () Bool)

(declare-fun b!133046 () Bool)

(assert (=> b!133046 (= e!76957 (or (not (= (t!22778 newList!20) Nil!2186)) (= lt!40225 (t!22778 lt!40140))))))

(declare-fun b!133043 () Bool)

(declare-fun e!76958 () List!2192)

(assert (=> b!133043 (= e!76958 (t!22778 newList!20))))

(declare-fun d!31728 () Bool)

(assert (=> d!31728 e!76957))

(declare-fun res!62076 () Bool)

(assert (=> d!31728 (=> (not res!62076) (not e!76957))))

(assert (=> d!31728 (= res!62076 (= (content!299 lt!40225) ((_ map or) (content!299 (t!22778 lt!40140)) (content!299 (t!22778 newList!20)))))))

(assert (=> d!31728 (= lt!40225 e!76958)))

(declare-fun c!28571 () Bool)

(assert (=> d!31728 (= c!28571 ((_ is Nil!2186) (t!22778 lt!40140)))))

(assert (=> d!31728 (= (++!462 (t!22778 lt!40140) (t!22778 newList!20)) lt!40225)))

(declare-fun b!133044 () Bool)

(assert (=> b!133044 (= e!76958 (Cons!2186 (h!7583 (t!22778 lt!40140)) (++!462 (t!22778 (t!22778 lt!40140)) (t!22778 newList!20))))))

(declare-fun b!133045 () Bool)

(declare-fun res!62075 () Bool)

(assert (=> b!133045 (=> (not res!62075) (not e!76957))))

(assert (=> b!133045 (= res!62075 (= (size!1989 lt!40225) (+ (size!1989 (t!22778 lt!40140)) (size!1989 (t!22778 newList!20)))))))

(assert (= (and d!31728 c!28571) b!133043))

(assert (= (and d!31728 (not c!28571)) b!133044))

(assert (= (and d!31728 res!62076) b!133045))

(assert (= (and b!133045 res!62075) b!133046))

(declare-fun m!118081 () Bool)

(assert (=> d!31728 m!118081))

(assert (=> d!31728 m!117959))

(assert (=> d!31728 m!117603))

(declare-fun m!118083 () Bool)

(assert (=> b!133044 m!118083))

(declare-fun m!118085 () Bool)

(assert (=> b!133045 m!118085))

(assert (=> b!133045 m!117979))

(assert (=> b!133045 m!117611))

(assert (=> b!132714 d!31728))

(declare-fun d!31730 () Bool)

(declare-fun lt!40226 () Int)

(assert (=> d!31730 (>= lt!40226 0)))

(declare-fun e!76959 () Int)

(assert (=> d!31730 (= lt!40226 e!76959)))

(declare-fun c!28572 () Bool)

(assert (=> d!31730 (= c!28572 ((_ is Nil!2186) lt!40152))))

(assert (=> d!31730 (= (size!1989 lt!40152) lt!40226)))

(declare-fun b!133047 () Bool)

(assert (=> b!133047 (= e!76959 0)))

(declare-fun b!133048 () Bool)

(assert (=> b!133048 (= e!76959 (+ 1 (size!1989 (t!22778 lt!40152))))))

(assert (= (and d!31730 c!28572) b!133047))

(assert (= (and d!31730 (not c!28572)) b!133048))

(declare-fun m!118087 () Bool)

(assert (=> b!133048 m!118087))

(assert (=> b!132749 d!31730))

(assert (=> b!132749 d!31692))

(declare-fun d!31732 () Bool)

(declare-fun lt!40227 () Int)

(assert (=> d!31732 (>= lt!40227 0)))

(declare-fun e!76960 () Int)

(assert (=> d!31732 (= lt!40227 e!76960)))

(declare-fun c!28573 () Bool)

(assert (=> d!31732 (= c!28573 ((_ is Nil!2186) (++!462 lt!40129 (t!22778 newList!20))))))

(assert (=> d!31732 (= (size!1989 (++!462 lt!40129 (t!22778 newList!20))) lt!40227)))

(declare-fun b!133049 () Bool)

(assert (=> b!133049 (= e!76960 0)))

(declare-fun b!133050 () Bool)

(assert (=> b!133050 (= e!76960 (+ 1 (size!1989 (t!22778 (++!462 lt!40129 (t!22778 newList!20))))))))

(assert (= (and d!31732 c!28573) b!133049))

(assert (= (and d!31732 (not c!28573)) b!133050))

(declare-fun m!118089 () Bool)

(assert (=> b!133050 m!118089))

(assert (=> b!132749 d!31732))

(declare-fun d!31734 () Bool)

(declare-fun c!28574 () Bool)

(assert (=> d!31734 (= c!28574 ((_ is Nil!2186) lt!40153))))

(declare-fun e!76961 () (InoxSet B!777))

(assert (=> d!31734 (= (content!299 lt!40153) e!76961)))

(declare-fun b!133051 () Bool)

(assert (=> b!133051 (= e!76961 ((as const (Array B!777 Bool)) false))))

(declare-fun b!133052 () Bool)

(assert (=> b!133052 (= e!76961 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40153) true) (content!299 (t!22778 lt!40153))))))

(assert (= (and d!31734 c!28574) b!133051))

(assert (= (and d!31734 (not c!28574)) b!133052))

(declare-fun m!118091 () Bool)

(assert (=> b!133052 m!118091))

(declare-fun m!118093 () Bool)

(assert (=> b!133052 m!118093))

(assert (=> d!31548 d!31734))

(assert (=> d!31548 d!31650))

(assert (=> d!31548 d!31714))

(declare-fun d!31736 () Bool)

(declare-fun lt!40228 () Int)

(assert (=> d!31736 (>= lt!40228 0)))

(declare-fun e!76962 () Int)

(assert (=> d!31736 (= lt!40228 e!76962)))

(declare-fun c!28575 () Bool)

(assert (=> d!31736 (= c!28575 ((_ is Nil!2186) lt!40163))))

(assert (=> d!31736 (= (size!1989 lt!40163) lt!40228)))

(declare-fun b!133053 () Bool)

(assert (=> b!133053 (= e!76962 0)))

(declare-fun b!133054 () Bool)

(assert (=> b!133054 (= e!76962 (+ 1 (size!1989 (t!22778 lt!40163))))))

(assert (= (and d!31736 c!28575) b!133053))

(assert (= (and d!31736 (not c!28575)) b!133054))

(declare-fun m!118095 () Bool)

(assert (=> b!133054 m!118095))

(assert (=> b!132781 d!31736))

(assert (=> b!132781 d!31692))

(declare-fun d!31738 () Bool)

(declare-fun lt!40229 () Int)

(assert (=> d!31738 (>= lt!40229 0)))

(declare-fun e!76963 () Int)

(assert (=> d!31738 (= lt!40229 e!76963)))

(declare-fun c!28576 () Bool)

(assert (=> d!31738 (= c!28576 ((_ is Nil!2186) newList!20))))

(assert (=> d!31738 (= (size!1989 newList!20) lt!40229)))

(declare-fun b!133055 () Bool)

(assert (=> b!133055 (= e!76963 0)))

(declare-fun b!133056 () Bool)

(assert (=> b!133056 (= e!76963 (+ 1 (size!1989 (t!22778 newList!20))))))

(assert (= (and d!31738 c!28576) b!133055))

(assert (= (and d!31738 (not c!28576)) b!133056))

(assert (=> b!133056 m!117611))

(assert (=> b!132781 d!31738))

(assert (=> d!31556 d!31648))

(declare-fun b!133057 () Bool)

(declare-fun e!76965 () Bool)

(declare-fun e!76966 () Bool)

(assert (=> b!133057 (= e!76965 e!76966)))

(declare-fun res!62079 () Bool)

(assert (=> b!133057 (=> (not res!62079) (not e!76966))))

(assert (=> b!133057 (= res!62079 (not ((_ is Nil!2186) (tail!274 lt!40138))))))

(declare-fun b!133058 () Bool)

(declare-fun res!62078 () Bool)

(assert (=> b!133058 (=> (not res!62078) (not e!76966))))

(assert (=> b!133058 (= res!62078 (= (head!528 (tail!274 lt!40140)) (head!528 (tail!274 lt!40138))))))

(declare-fun b!133060 () Bool)

(declare-fun e!76964 () Bool)

(assert (=> b!133060 (= e!76964 (>= (size!1989 (tail!274 lt!40138)) (size!1989 (tail!274 lt!40140))))))

(declare-fun d!31740 () Bool)

(assert (=> d!31740 e!76964))

(declare-fun res!62077 () Bool)

(assert (=> d!31740 (=> res!62077 e!76964)))

(declare-fun lt!40230 () Bool)

(assert (=> d!31740 (= res!62077 (not lt!40230))))

(assert (=> d!31740 (= lt!40230 e!76965)))

(declare-fun res!62080 () Bool)

(assert (=> d!31740 (=> res!62080 e!76965)))

(assert (=> d!31740 (= res!62080 ((_ is Nil!2186) (tail!274 lt!40140)))))

(assert (=> d!31740 (= (isPrefix!181 (tail!274 lt!40140) (tail!274 lt!40138)) lt!40230)))

(declare-fun b!133059 () Bool)

(assert (=> b!133059 (= e!76966 (isPrefix!181 (tail!274 (tail!274 lt!40140)) (tail!274 (tail!274 lt!40138))))))

(assert (= (and d!31740 (not res!62080)) b!133057))

(assert (= (and b!133057 res!62079) b!133058))

(assert (= (and b!133058 res!62078) b!133059))

(assert (= (and d!31740 (not res!62077)) b!133060))

(assert (=> b!133058 m!117887))

(assert (=> b!133058 m!117985))

(assert (=> b!133058 m!117729))

(declare-fun m!118097 () Bool)

(assert (=> b!133058 m!118097))

(assert (=> b!133060 m!117729))

(declare-fun m!118099 () Bool)

(assert (=> b!133060 m!118099))

(assert (=> b!133060 m!117887))

(assert (=> b!133060 m!117987))

(assert (=> b!133059 m!117887))

(assert (=> b!133059 m!117993))

(assert (=> b!133059 m!117729))

(declare-fun m!118101 () Bool)

(assert (=> b!133059 m!118101))

(assert (=> b!133059 m!117993))

(assert (=> b!133059 m!118101))

(declare-fun m!118103 () Bool)

(assert (=> b!133059 m!118103))

(assert (=> b!132901 d!31740))

(assert (=> b!132901 d!31682))

(declare-fun d!31742 () Bool)

(assert (=> d!31742 (= (tail!274 lt!40138) (t!22778 lt!40138))))

(assert (=> b!132901 d!31742))

(assert (=> b!132896 d!31672))

(assert (=> b!132896 d!31676))

(declare-fun b!133061 () Bool)

(declare-fun e!76968 () Bool)

(declare-fun e!76969 () Bool)

(assert (=> b!133061 (= e!76968 e!76969)))

(declare-fun res!62083 () Bool)

(assert (=> b!133061 (=> (not res!62083) (not e!76969))))

(assert (=> b!133061 (= res!62083 (not ((_ is Nil!2186) (tail!274 lt!40138))))))

(declare-fun b!133062 () Bool)

(declare-fun res!62082 () Bool)

(assert (=> b!133062 (=> (not res!62082) (not e!76969))))

(assert (=> b!133062 (= res!62082 (= (head!528 (tail!274 baseList!9)) (head!528 (tail!274 lt!40138))))))

(declare-fun b!133064 () Bool)

(declare-fun e!76967 () Bool)

(assert (=> b!133064 (= e!76967 (>= (size!1989 (tail!274 lt!40138)) (size!1989 (tail!274 baseList!9))))))

(declare-fun d!31744 () Bool)

(assert (=> d!31744 e!76967))

(declare-fun res!62081 () Bool)

(assert (=> d!31744 (=> res!62081 e!76967)))

(declare-fun lt!40231 () Bool)

(assert (=> d!31744 (= res!62081 (not lt!40231))))

(assert (=> d!31744 (= lt!40231 e!76968)))

(declare-fun res!62084 () Bool)

(assert (=> d!31744 (=> res!62084 e!76968)))

(assert (=> d!31744 (= res!62084 ((_ is Nil!2186) (tail!274 baseList!9)))))

(assert (=> d!31744 (= (isPrefix!181 (tail!274 baseList!9) (tail!274 lt!40138)) lt!40231)))

(declare-fun b!133063 () Bool)

(assert (=> b!133063 (= e!76969 (isPrefix!181 (tail!274 (tail!274 baseList!9)) (tail!274 (tail!274 lt!40138))))))

(assert (= (and d!31744 (not res!62084)) b!133061))

(assert (= (and b!133061 res!62083) b!133062))

(assert (= (and b!133062 res!62082) b!133063))

(assert (= (and d!31744 (not res!62081)) b!133064))

(assert (=> b!133062 m!117727))

(assert (=> b!133062 m!117983))

(assert (=> b!133062 m!117729))

(assert (=> b!133062 m!118097))

(assert (=> b!133064 m!117729))

(assert (=> b!133064 m!118099))

(assert (=> b!133064 m!117727))

(assert (=> b!133064 m!117989))

(assert (=> b!133063 m!117727))

(assert (=> b!133063 m!117991))

(assert (=> b!133063 m!117729))

(assert (=> b!133063 m!118101))

(assert (=> b!133063 m!117991))

(assert (=> b!133063 m!118101))

(declare-fun m!118105 () Bool)

(assert (=> b!133063 m!118105))

(assert (=> b!132806 d!31744))

(assert (=> b!132806 d!31680))

(assert (=> b!132806 d!31742))

(declare-fun d!31746 () Bool)

(declare-fun res!62085 () Bool)

(declare-fun e!76970 () Bool)

(assert (=> d!31746 (=> res!62085 e!76970)))

(assert (=> d!31746 (= res!62085 ((_ is Nil!2186) (t!22778 lt!40138)))))

(assert (=> d!31746 (= (noDuplicate!82 (t!22778 lt!40138)) e!76970)))

(declare-fun b!133065 () Bool)

(declare-fun e!76971 () Bool)

(assert (=> b!133065 (= e!76970 e!76971)))

(declare-fun res!62086 () Bool)

(assert (=> b!133065 (=> (not res!62086) (not e!76971))))

(assert (=> b!133065 (= res!62086 (not (contains!366 (t!22778 (t!22778 lt!40138)) (h!7583 (t!22778 lt!40138)))))))

(declare-fun b!133066 () Bool)

(assert (=> b!133066 (= e!76971 (noDuplicate!82 (t!22778 (t!22778 lt!40138))))))

(assert (= (and d!31746 (not res!62085)) b!133065))

(assert (= (and b!133065 res!62086) b!133066))

(declare-fun m!118107 () Bool)

(assert (=> b!133065 m!118107))

(declare-fun m!118109 () Bool)

(assert (=> b!133066 m!118109))

(assert (=> b!132872 d!31746))

(declare-fun d!31748 () Bool)

(declare-fun lt!40232 () Int)

(assert (=> d!31748 (>= lt!40232 0)))

(declare-fun e!76972 () Int)

(assert (=> d!31748 (= lt!40232 e!76972)))

(declare-fun c!28577 () Bool)

(assert (=> d!31748 (= c!28577 ((_ is Nil!2186) lt!40199))))

(assert (=> d!31748 (= (size!1989 lt!40199) lt!40232)))

(declare-fun b!133067 () Bool)

(assert (=> b!133067 (= e!76972 0)))

(declare-fun b!133068 () Bool)

(assert (=> b!133068 (= e!76972 (+ 1 (size!1989 (t!22778 lt!40199))))))

(assert (= (and d!31748 c!28577) b!133067))

(assert (= (and d!31748 (not c!28577)) b!133068))

(declare-fun m!118111 () Bool)

(assert (=> b!133068 m!118111))

(assert (=> b!132893 d!31748))

(assert (=> b!132893 d!31692))

(assert (=> b!132893 d!31710))

(assert (=> b!132898 d!31668))

(assert (=> b!132898 d!31692))

(declare-fun d!31750 () Bool)

(declare-fun res!62088 () Bool)

(declare-fun e!76973 () Bool)

(assert (=> d!31750 (=> res!62088 e!76973)))

(assert (=> d!31750 (= res!62088 ((_ is Nil!2186) lt!40190))))

(assert (=> d!31750 (= (subseq!53 lt!40190 (++!462 lt!40140 (t!22778 newList!20))) e!76973)))

(declare-fun b!133070 () Bool)

(declare-fun e!76976 () Bool)

(declare-fun e!76974 () Bool)

(assert (=> b!133070 (= e!76976 e!76974)))

(declare-fun res!62089 () Bool)

(assert (=> b!133070 (=> res!62089 e!76974)))

(declare-fun e!76975 () Bool)

(assert (=> b!133070 (= res!62089 e!76975)))

(declare-fun res!62090 () Bool)

(assert (=> b!133070 (=> (not res!62090) (not e!76975))))

(assert (=> b!133070 (= res!62090 (= (h!7583 lt!40190) (h!7583 (++!462 lt!40140 (t!22778 newList!20)))))))

(declare-fun b!133069 () Bool)

(assert (=> b!133069 (= e!76973 e!76976)))

(declare-fun res!62087 () Bool)

(assert (=> b!133069 (=> (not res!62087) (not e!76976))))

(assert (=> b!133069 (= res!62087 ((_ is Cons!2186) (++!462 lt!40140 (t!22778 newList!20))))))

(declare-fun b!133072 () Bool)

(assert (=> b!133072 (= e!76974 (subseq!53 lt!40190 (t!22778 (++!462 lt!40140 (t!22778 newList!20)))))))

(declare-fun b!133071 () Bool)

(assert (=> b!133071 (= e!76975 (subseq!53 (t!22778 lt!40190) (t!22778 (++!462 lt!40140 (t!22778 newList!20)))))))

(assert (= (and d!31750 (not res!62088)) b!133069))

(assert (= (and b!133069 res!62087) b!133070))

(assert (= (and b!133070 res!62090) b!133071))

(assert (= (and b!133070 (not res!62089)) b!133072))

(declare-fun m!118113 () Bool)

(assert (=> b!133072 m!118113))

(declare-fun m!118115 () Bool)

(assert (=> b!133071 m!118115))

(assert (=> b!132869 d!31750))

(assert (=> b!132869 d!31534))

(declare-fun d!31752 () Bool)

(declare-fun res!62092 () Bool)

(declare-fun e!76977 () Bool)

(assert (=> d!31752 (=> res!62092 e!76977)))

(assert (=> d!31752 (= res!62092 ((_ is Nil!2186) lt!40138))))

(assert (=> d!31752 (= (subseq!53 lt!40138 (t!22778 lt!40142)) e!76977)))

(declare-fun b!133074 () Bool)

(declare-fun e!76980 () Bool)

(declare-fun e!76978 () Bool)

(assert (=> b!133074 (= e!76980 e!76978)))

(declare-fun res!62093 () Bool)

(assert (=> b!133074 (=> res!62093 e!76978)))

(declare-fun e!76979 () Bool)

(assert (=> b!133074 (= res!62093 e!76979)))

(declare-fun res!62094 () Bool)

(assert (=> b!133074 (=> (not res!62094) (not e!76979))))

(assert (=> b!133074 (= res!62094 (= (h!7583 lt!40138) (h!7583 (t!22778 lt!40142))))))

(declare-fun b!133073 () Bool)

(assert (=> b!133073 (= e!76977 e!76980)))

(declare-fun res!62091 () Bool)

(assert (=> b!133073 (=> (not res!62091) (not e!76980))))

(assert (=> b!133073 (= res!62091 ((_ is Cons!2186) (t!22778 lt!40142)))))

(declare-fun b!133076 () Bool)

(assert (=> b!133076 (= e!76978 (subseq!53 lt!40138 (t!22778 (t!22778 lt!40142))))))

(declare-fun b!133075 () Bool)

(assert (=> b!133075 (= e!76979 (subseq!53 (t!22778 lt!40138) (t!22778 (t!22778 lt!40142))))))

(assert (= (and d!31752 (not res!62092)) b!133073))

(assert (= (and b!133073 res!62091) b!133074))

(assert (= (and b!133074 res!62094) b!133075))

(assert (= (and b!133074 (not res!62093)) b!133076))

(declare-fun m!118117 () Bool)

(assert (=> b!133076 m!118117))

(assert (=> b!133075 m!117999))

(assert (=> b!132746 d!31752))

(declare-fun d!31754 () Bool)

(declare-fun lt!40233 () Int)

(assert (=> d!31754 (>= lt!40233 0)))

(declare-fun e!76981 () Int)

(assert (=> d!31754 (= lt!40233 e!76981)))

(declare-fun c!28578 () Bool)

(assert (=> d!31754 (= c!28578 ((_ is Nil!2186) lt!40177))))

(assert (=> d!31754 (= (size!1989 lt!40177) lt!40233)))

(declare-fun b!133077 () Bool)

(assert (=> b!133077 (= e!76981 0)))

(declare-fun b!133078 () Bool)

(assert (=> b!133078 (= e!76981 (+ 1 (size!1989 (t!22778 lt!40177))))))

(assert (= (and d!31754 c!28578) b!133077))

(assert (= (and d!31754 (not c!28578)) b!133078))

(declare-fun m!118119 () Bool)

(assert (=> b!133078 m!118119))

(assert (=> b!132820 d!31754))

(assert (=> b!132820 d!31668))

(assert (=> b!132820 d!31738))

(declare-fun d!31756 () Bool)

(declare-fun res!62095 () Bool)

(declare-fun e!76982 () Bool)

(assert (=> d!31756 (=> res!62095 e!76982)))

(assert (=> d!31756 (= res!62095 ((_ is Nil!2186) (t!22778 lt!40140)))))

(assert (=> d!31756 (= (noDuplicate!82 (t!22778 lt!40140)) e!76982)))

(declare-fun b!133079 () Bool)

(declare-fun e!76983 () Bool)

(assert (=> b!133079 (= e!76982 e!76983)))

(declare-fun res!62096 () Bool)

(assert (=> b!133079 (=> (not res!62096) (not e!76983))))

(assert (=> b!133079 (= res!62096 (not (contains!366 (t!22778 (t!22778 lt!40140)) (h!7583 (t!22778 lt!40140)))))))

(declare-fun b!133080 () Bool)

(assert (=> b!133080 (= e!76983 (noDuplicate!82 (t!22778 (t!22778 lt!40140))))))

(assert (= (and d!31756 (not res!62095)) b!133079))

(assert (= (and b!133079 res!62096) b!133080))

(declare-fun m!118121 () Bool)

(assert (=> b!133079 m!118121))

(declare-fun m!118123 () Bool)

(assert (=> b!133080 m!118123))

(assert (=> b!132823 d!31756))

(declare-fun d!31758 () Bool)

(declare-fun c!28579 () Bool)

(assert (=> d!31758 (= c!28579 ((_ is Nil!2186) (t!22778 lt!40134)))))

(declare-fun e!76984 () (InoxSet B!777))

(assert (=> d!31758 (= (content!299 (t!22778 lt!40134)) e!76984)))

(declare-fun b!133081 () Bool)

(assert (=> b!133081 (= e!76984 ((as const (Array B!777 Bool)) false))))

(declare-fun b!133082 () Bool)

(assert (=> b!133082 (= e!76984 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 (t!22778 lt!40134)) true) (content!299 (t!22778 (t!22778 lt!40134)))))))

(assert (= (and d!31758 c!28579) b!133081))

(assert (= (and d!31758 (not c!28579)) b!133082))

(declare-fun m!118125 () Bool)

(assert (=> b!133082 m!118125))

(declare-fun m!118127 () Bool)

(assert (=> b!133082 m!118127))

(assert (=> b!132778 d!31758))

(declare-fun b!133086 () Bool)

(declare-fun e!76985 () Bool)

(declare-fun lt!40234 () List!2192)

(assert (=> b!133086 (= e!76985 (or (not (= (t!22778 newList!20) Nil!2186)) (= lt!40234 (t!22778 lt!40129))))))

(declare-fun b!133083 () Bool)

(declare-fun e!76986 () List!2192)

(assert (=> b!133083 (= e!76986 (t!22778 newList!20))))

(declare-fun d!31760 () Bool)

(assert (=> d!31760 e!76985))

(declare-fun res!62098 () Bool)

(assert (=> d!31760 (=> (not res!62098) (not e!76985))))

(assert (=> d!31760 (= res!62098 (= (content!299 lt!40234) ((_ map or) (content!299 (t!22778 lt!40129)) (content!299 (t!22778 newList!20)))))))

(assert (=> d!31760 (= lt!40234 e!76986)))

(declare-fun c!28580 () Bool)

(assert (=> d!31760 (= c!28580 ((_ is Nil!2186) (t!22778 lt!40129)))))

(assert (=> d!31760 (= (++!462 (t!22778 lt!40129) (t!22778 newList!20)) lt!40234)))

(declare-fun b!133084 () Bool)

(assert (=> b!133084 (= e!76986 (Cons!2186 (h!7583 (t!22778 lt!40129)) (++!462 (t!22778 (t!22778 lt!40129)) (t!22778 newList!20))))))

(declare-fun b!133085 () Bool)

(declare-fun res!62097 () Bool)

(assert (=> b!133085 (=> (not res!62097) (not e!76985))))

(assert (=> b!133085 (= res!62097 (= (size!1989 lt!40234) (+ (size!1989 (t!22778 lt!40129)) (size!1989 (t!22778 newList!20)))))))

(assert (= (and d!31760 c!28580) b!133083))

(assert (= (and d!31760 (not c!28580)) b!133084))

(assert (= (and d!31760 res!62098) b!133085))

(assert (= (and b!133085 res!62097) b!133086))

(declare-fun m!118129 () Bool)

(assert (=> d!31760 m!118129))

(assert (=> d!31760 m!117943))

(assert (=> d!31760 m!117603))

(declare-fun m!118131 () Bool)

(assert (=> b!133084 m!118131))

(declare-fun m!118133 () Bool)

(assert (=> b!133085 m!118133))

(assert (=> b!133085 m!118049))

(assert (=> b!133085 m!117611))

(assert (=> b!132754 d!31760))

(declare-fun d!31762 () Bool)

(declare-fun res!62100 () Bool)

(declare-fun e!76987 () Bool)

(assert (=> d!31762 (=> res!62100 e!76987)))

(assert (=> d!31762 (= res!62100 ((_ is Nil!2186) lt!40138))))

(assert (=> d!31762 (= (subseq!53 lt!40138 (t!22778 lt!40134)) e!76987)))

(declare-fun b!133088 () Bool)

(declare-fun e!76990 () Bool)

(declare-fun e!76988 () Bool)

(assert (=> b!133088 (= e!76990 e!76988)))

(declare-fun res!62101 () Bool)

(assert (=> b!133088 (=> res!62101 e!76988)))

(declare-fun e!76989 () Bool)

(assert (=> b!133088 (= res!62101 e!76989)))

(declare-fun res!62102 () Bool)

(assert (=> b!133088 (=> (not res!62102) (not e!76989))))

(assert (=> b!133088 (= res!62102 (= (h!7583 lt!40138) (h!7583 (t!22778 lt!40134))))))

(declare-fun b!133087 () Bool)

(assert (=> b!133087 (= e!76987 e!76990)))

(declare-fun res!62099 () Bool)

(assert (=> b!133087 (=> (not res!62099) (not e!76990))))

(assert (=> b!133087 (= res!62099 ((_ is Cons!2186) (t!22778 lt!40134)))))

(declare-fun b!133090 () Bool)

(assert (=> b!133090 (= e!76988 (subseq!53 lt!40138 (t!22778 (t!22778 lt!40134))))))

(declare-fun b!133089 () Bool)

(assert (=> b!133089 (= e!76989 (subseq!53 (t!22778 lt!40138) (t!22778 (t!22778 lt!40134))))))

(assert (= (and d!31762 (not res!62100)) b!133087))

(assert (= (and b!133087 res!62099) b!133088))

(assert (= (and b!133088 res!62102) b!133089))

(assert (= (and b!133088 (not res!62101)) b!133090))

(declare-fun m!118135 () Bool)

(assert (=> b!133090 m!118135))

(assert (=> b!133089 m!118025))

(assert (=> b!132728 d!31762))

(assert (=> d!31570 d!31564))

(declare-fun d!31764 () Bool)

(assert (=> d!31764 (isPrefix!181 baseList!9 lt!40138)))

(assert (=> d!31764 true))

(declare-fun _$56!317 () Unit!1752)

(assert (=> d!31764 (= (choose!1692 baseList!9 (h!7583 newList!20) lt!40138) _$56!317)))

(declare-fun bs!12669 () Bool)

(assert (= bs!12669 d!31764))

(assert (=> bs!12669 m!117555))

(assert (=> d!31570 d!31764))

(declare-fun b!133093 () Bool)

(declare-fun e!76994 () Bool)

(declare-fun e!76995 () Bool)

(assert (=> b!133093 (= e!76994 e!76995)))

(declare-fun res!62107 () Bool)

(assert (=> b!133093 (=> (not res!62107) (not e!76995))))

(assert (=> b!133093 (= res!62107 (not ((_ is Nil!2186) lt!40138)))))

(declare-fun b!133094 () Bool)

(declare-fun res!62106 () Bool)

(assert (=> b!133094 (=> (not res!62106) (not e!76995))))

(assert (=> b!133094 (= res!62106 (= (head!528 (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186))) (head!528 lt!40138)))))

(declare-fun b!133096 () Bool)

(declare-fun e!76993 () Bool)

(assert (=> b!133096 (= e!76993 (>= (size!1989 lt!40138) (size!1989 (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186)))))))

(declare-fun d!31768 () Bool)

(assert (=> d!31768 e!76993))

(declare-fun res!62105 () Bool)

(assert (=> d!31768 (=> res!62105 e!76993)))

(declare-fun lt!40236 () Bool)

(assert (=> d!31768 (= res!62105 (not lt!40236))))

(assert (=> d!31768 (= lt!40236 e!76994)))

(declare-fun res!62108 () Bool)

(assert (=> d!31768 (=> res!62108 e!76994)))

(assert (=> d!31768 (= res!62108 ((_ is Nil!2186) (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186))))))

(assert (=> d!31768 (= (isPrefix!181 (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186)) lt!40138) lt!40236)))

(declare-fun b!133095 () Bool)

(assert (=> b!133095 (= e!76995 (isPrefix!181 (tail!274 (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186))) (tail!274 lt!40138)))))

(assert (= (and d!31768 (not res!62108)) b!133093))

(assert (= (and b!133093 res!62107) b!133094))

(assert (= (and b!133094 res!62106) b!133095))

(assert (= (and d!31768 (not res!62105)) b!133096))

(assert (=> b!133094 m!117751))

(declare-fun m!118141 () Bool)

(assert (=> b!133094 m!118141))

(assert (=> b!133094 m!117723))

(assert (=> b!133096 m!117725))

(assert (=> b!133096 m!117751))

(declare-fun m!118143 () Bool)

(assert (=> b!133096 m!118143))

(assert (=> b!133095 m!117751))

(declare-fun m!118147 () Bool)

(assert (=> b!133095 m!118147))

(assert (=> b!133095 m!117729))

(assert (=> b!133095 m!118147))

(assert (=> b!133095 m!117729))

(declare-fun m!118151 () Bool)

(assert (=> b!133095 m!118151))

(assert (=> d!31570 d!31768))

(declare-fun e!77001 () Bool)

(declare-fun b!133106 () Bool)

(declare-fun lt!40237 () List!2192)

(assert (=> b!133106 (= e!77001 (or (not (= (Cons!2186 (h!7583 newList!20) Nil!2186) Nil!2186)) (= lt!40237 baseList!9)))))

(declare-fun b!133103 () Bool)

(declare-fun e!77002 () List!2192)

(assert (=> b!133103 (= e!77002 (Cons!2186 (h!7583 newList!20) Nil!2186))))

(declare-fun d!31774 () Bool)

(assert (=> d!31774 e!77001))

(declare-fun res!62114 () Bool)

(assert (=> d!31774 (=> (not res!62114) (not e!77001))))

(assert (=> d!31774 (= res!62114 (= (content!299 lt!40237) ((_ map or) (content!299 baseList!9) (content!299 (Cons!2186 (h!7583 newList!20) Nil!2186)))))))

(assert (=> d!31774 (= lt!40237 e!77002)))

(declare-fun c!28582 () Bool)

(assert (=> d!31774 (= c!28582 ((_ is Nil!2186) baseList!9))))

(assert (=> d!31774 (= (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186)) lt!40237)))

(declare-fun b!133104 () Bool)

(assert (=> b!133104 (= e!77002 (Cons!2186 (h!7583 baseList!9) (++!462 (t!22778 baseList!9) (Cons!2186 (h!7583 newList!20) Nil!2186))))))

(declare-fun b!133105 () Bool)

(declare-fun res!62113 () Bool)

(assert (=> b!133105 (=> (not res!62113) (not e!77001))))

(assert (=> b!133105 (= res!62113 (= (size!1989 lt!40237) (+ (size!1989 baseList!9) (size!1989 (Cons!2186 (h!7583 newList!20) Nil!2186)))))))

(assert (= (and d!31774 c!28582) b!133103))

(assert (= (and d!31774 (not c!28582)) b!133104))

(assert (= (and d!31774 res!62114) b!133105))

(assert (= (and b!133105 res!62113) b!133106))

(declare-fun m!118155 () Bool)

(assert (=> d!31774 m!118155))

(assert (=> d!31774 m!117641))

(declare-fun m!118159 () Bool)

(assert (=> d!31774 m!118159))

(declare-fun m!118161 () Bool)

(assert (=> b!133104 m!118161))

(declare-fun m!118163 () Bool)

(assert (=> b!133105 m!118163))

(assert (=> b!133105 m!117649))

(declare-fun m!118165 () Bool)

(assert (=> b!133105 m!118165))

(assert (=> d!31570 d!31774))

(declare-fun d!31778 () Bool)

(declare-fun c!28583 () Bool)

(assert (=> d!31778 (= c!28583 ((_ is Nil!2186) lt!40152))))

(declare-fun e!77005 () (InoxSet B!777))

(assert (=> d!31778 (= (content!299 lt!40152) e!77005)))

(declare-fun b!133109 () Bool)

(assert (=> b!133109 (= e!77005 ((as const (Array B!777 Bool)) false))))

(declare-fun b!133110 () Bool)

(assert (=> b!133110 (= e!77005 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40152) true) (content!299 (t!22778 lt!40152))))))

(assert (= (and d!31778 c!28583) b!133109))

(assert (= (and d!31778 (not c!28583)) b!133110))

(declare-fun m!118167 () Bool)

(assert (=> b!133110 m!118167))

(declare-fun m!118169 () Bool)

(assert (=> b!133110 m!118169))

(assert (=> d!31546 d!31778))

(assert (=> d!31546 d!31648))

(declare-fun d!31780 () Bool)

(declare-fun c!28584 () Bool)

(assert (=> d!31780 (= c!28584 ((_ is Nil!2186) (++!462 lt!40129 (t!22778 newList!20))))))

(declare-fun e!77006 () (InoxSet B!777))

(assert (=> d!31780 (= (content!299 (++!462 lt!40129 (t!22778 newList!20))) e!77006)))

(declare-fun b!133111 () Bool)

(assert (=> b!133111 (= e!77006 ((as const (Array B!777 Bool)) false))))

(declare-fun b!133112 () Bool)

(assert (=> b!133112 (= e!77006 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 (++!462 lt!40129 (t!22778 newList!20))) true) (content!299 (t!22778 (++!462 lt!40129 (t!22778 newList!20))))))))

(assert (= (and d!31780 c!28584) b!133111))

(assert (= (and d!31780 (not c!28584)) b!133112))

(declare-fun m!118175 () Bool)

(assert (=> b!133112 m!118175))

(declare-fun m!118177 () Bool)

(assert (=> b!133112 m!118177))

(assert (=> d!31546 d!31780))

(declare-fun d!31784 () Bool)

(declare-fun res!62121 () Bool)

(declare-fun e!77011 () Bool)

(assert (=> d!31784 (=> res!62121 e!77011)))

(assert (=> d!31784 (= res!62121 ((_ is Nil!2186) (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186))))))

(assert (=> d!31784 (= (noDuplicate!82 (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186))) e!77011)))

(declare-fun b!133117 () Bool)

(declare-fun e!77012 () Bool)

(assert (=> b!133117 (= e!77011 e!77012)))

(declare-fun res!62122 () Bool)

(assert (=> b!133117 (=> (not res!62122) (not e!77012))))

(assert (=> b!133117 (= res!62122 (not (contains!366 (t!22778 (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186))) (h!7583 (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186))))))))

(declare-fun b!133118 () Bool)

(assert (=> b!133118 (= e!77012 (noDuplicate!82 (t!22778 (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186)))))))

(assert (= (and d!31784 (not res!62121)) b!133117))

(assert (= (and b!133117 res!62122) b!133118))

(declare-fun m!118183 () Bool)

(assert (=> b!133117 m!118183))

(declare-fun m!118185 () Bool)

(assert (=> b!133118 m!118185))

(assert (=> d!31608 d!31784))

(assert (=> d!31608 d!31774))

(declare-fun d!31788 () Bool)

(assert (=> d!31788 (noDuplicate!82 (++!462 baseList!9 (Cons!2186 (h!7583 newList!20) Nil!2186)))))

(assert (=> d!31788 true))

(declare-fun _$70!83 () Unit!1752)

(assert (=> d!31788 (= (choose!1696 baseList!9 (h!7583 newList!20)) _$70!83)))

(declare-fun bs!12670 () Bool)

(assert (= bs!12670 d!31788))

(assert (=> bs!12670 m!117751))

(assert (=> bs!12670 m!117751))

(assert (=> bs!12670 m!117875))

(assert (=> d!31608 d!31788))

(assert (=> d!31608 d!31540))

(declare-fun b!133123 () Bool)

(declare-fun e!77016 () Bool)

(declare-fun e!77017 () Bool)

(assert (=> b!133123 (= e!77016 e!77017)))

(declare-fun res!62125 () Bool)

(assert (=> b!133123 (=> (not res!62125) (not e!77017))))

(assert (=> b!133123 (= res!62125 (not ((_ is Nil!2186) (++!462 baseList!9 lt!40129))))))

(declare-fun b!133124 () Bool)

(declare-fun res!62124 () Bool)

(assert (=> b!133124 (=> (not res!62124) (not e!77017))))

(assert (=> b!133124 (= res!62124 (= (head!528 baseList!9) (head!528 (++!462 baseList!9 lt!40129))))))

(declare-fun b!133126 () Bool)

(declare-fun e!77015 () Bool)

(assert (=> b!133126 (= e!77015 (>= (size!1989 (++!462 baseList!9 lt!40129)) (size!1989 baseList!9)))))

(declare-fun d!31794 () Bool)

(assert (=> d!31794 e!77015))

(declare-fun res!62123 () Bool)

(assert (=> d!31794 (=> res!62123 e!77015)))

(declare-fun lt!40239 () Bool)

(assert (=> d!31794 (= res!62123 (not lt!40239))))

(assert (=> d!31794 (= lt!40239 e!77016)))

(declare-fun res!62126 () Bool)

(assert (=> d!31794 (=> res!62126 e!77016)))

(assert (=> d!31794 (= res!62126 ((_ is Nil!2186) baseList!9))))

(assert (=> d!31794 (= (isPrefix!181 baseList!9 (++!462 baseList!9 lt!40129)) lt!40239)))

(declare-fun b!133125 () Bool)

(assert (=> b!133125 (= e!77017 (isPrefix!181 (tail!274 baseList!9) (tail!274 (++!462 baseList!9 lt!40129))))))

(assert (= (and d!31794 (not res!62126)) b!133123))

(assert (= (and b!133123 res!62125) b!133124))

(assert (= (and b!133124 res!62124) b!133125))

(assert (= (and d!31794 (not res!62123)) b!133126))

(assert (=> b!133124 m!117721))

(assert (=> b!133124 m!117575))

(declare-fun m!118195 () Bool)

(assert (=> b!133124 m!118195))

(assert (=> b!133126 m!117575))

(assert (=> b!133126 m!118069))

(assert (=> b!133126 m!117649))

(assert (=> b!133125 m!117727))

(assert (=> b!133125 m!117575))

(declare-fun m!118197 () Bool)

(assert (=> b!133125 m!118197))

(assert (=> b!133125 m!117727))

(assert (=> b!133125 m!118197))

(declare-fun m!118199 () Bool)

(assert (=> b!133125 m!118199))

(assert (=> d!31584 d!31794))

(assert (=> d!31584 d!31624))

(declare-fun d!31796 () Bool)

(assert (=> d!31796 (isPrefix!181 baseList!9 (++!462 baseList!9 lt!40129))))

(assert (=> d!31796 true))

(declare-fun _$46!734 () Unit!1752)

(assert (=> d!31796 (= (choose!1693 baseList!9 lt!40129) _$46!734)))

(declare-fun bs!12671 () Bool)

(assert (= bs!12671 d!31796))

(assert (=> bs!12671 m!117575))

(assert (=> bs!12671 m!117575))

(assert (=> bs!12671 m!117785))

(assert (=> d!31584 d!31796))

(declare-fun d!31798 () Bool)

(declare-fun c!28590 () Bool)

(assert (=> d!31798 (= c!28590 ((_ is Nil!2186) lt!40163))))

(declare-fun e!77021 () (InoxSet B!777))

(assert (=> d!31798 (= (content!299 lt!40163) e!77021)))

(declare-fun b!133133 () Bool)

(assert (=> b!133133 (= e!77021 ((as const (Array B!777 Bool)) false))))

(declare-fun b!133134 () Bool)

(assert (=> b!133134 (= e!77021 ((_ map or) (store ((as const (Array B!777 Bool)) false) (h!7583 lt!40163) true) (content!299 (t!22778 lt!40163))))))

(assert (= (and d!31798 c!28590) b!133133))

(assert (= (and d!31798 (not c!28590)) b!133134))

(declare-fun m!118203 () Bool)

(assert (=> b!133134 m!118203))

(declare-fun m!118205 () Bool)

(assert (=> b!133134 m!118205))

(assert (=> d!31562 d!31798))

(assert (=> d!31562 d!31648))

(assert (=> d!31562 d!31660))

(declare-fun b!133139 () Bool)

(declare-fun e!77024 () Bool)

(declare-fun tp!70496 () Bool)

(assert (=> b!133139 (= e!77024 (and tp_is_empty!1421 tp!70496))))

(assert (=> b!132919 (= tp!70491 e!77024)))

(assert (= (and b!132919 ((_ is Cons!2186) (t!22778 (t!22778 baseList!9)))) b!133139))

(declare-fun b!133140 () Bool)

(declare-fun e!77025 () Bool)

(declare-fun tp!70497 () Bool)

(assert (=> b!133140 (= e!77025 (and tp_is_empty!1421 tp!70497))))

(assert (=> b!132920 (= tp!70492 e!77025)))

(assert (= (and b!132920 ((_ is Cons!2186) (t!22778 (t!22778 newList!20)))) b!133140))

(check-sat (not b!132948) (not b!132956) (not d!31796) (not b!133071) (not b!133084) (not d!31688) (not b!133020) (not b!133125) (not b!132964) (not b!133054) (not b!132989) (not d!31690) (not b!132993) (not b!133016) (not d!31764) (not b!133012) (not b!133079) (not b!132976) (not b!132960) (not b!133094) (not b!132962) (not b!133030) (not b!133064) (not b!133062) (not b!133007) (not b!133008) (not b!133004) (not b!133059) (not b!133090) (not b!133002) (not b!132950) (not b!133066) (not b!133118) (not b!133017) (not b!133044) (not d!31698) (not b!133078) (not b!132944) (not b!132931) (not b!133089) (not b!133037) (not d!31706) (not b!132983) (not d!31718) (not b!132990) (not b!133110) (not b!133060) (not b!133096) (not b!132942) (not b!133063) (not b!133075) (not d!31788) (not b!133048) (not b!133013) (not b!133040) (not b!132922) (not b!132943) (not b!133033) (not b!133072) (not b!133032) (not d!31724) (not b!132926) (not b!133082) (not b!133014) (not b!133104) (not d!31774) (not b!132992) (not b!133105) (not b!132986) (not b!133010) (not b!133112) (not b!133095) (not b!133056) (not d!31642) (not b!133042) (not b!133068) (not b!133124) (not b!132969) (not b!133041) (not b!132954) (not d!31662) (not b!133126) (not b!133000) (not d!31644) (not b!132965) (not b!133085) (not b!133029) (not b!132978) (not b!133139) (not b!133140) (not b!133052) (not b!133045) (not b!132982) (not b!133134) (not b!133024) (not b!132929) tp_is_empty!1421 (not b!133065) (not b!132932) (not b!132980) (not b!132968) (not d!31760) (not b!132930) (not b!133117) (not b!133058) (not b!133076) (not b!133038) (not d!31664) (not b!132996) (not b!132946) (not b!132998) (not b!133050) (not d!31728) (not b!132958) (not b!133022) (not b!132984) (not b!132952) (not b!132925) (not d!31720) (not b!133026) (not b!133080) (not b!132941))
(check-sat)
