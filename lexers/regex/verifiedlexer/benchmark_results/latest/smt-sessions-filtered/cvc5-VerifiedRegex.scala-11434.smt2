; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!616308 () Bool)

(assert start!616308)

(declare-fun b!6174146 () Bool)

(assert (=> b!6174146 true))

(assert (=> b!6174146 true))

(declare-fun lambda!337027 () Int)

(declare-fun lambda!337026 () Int)

(assert (=> b!6174146 (not (= lambda!337027 lambda!337026))))

(assert (=> b!6174146 true))

(assert (=> b!6174146 true))

(declare-fun b!6174141 () Bool)

(assert (=> b!6174141 true))

(declare-fun b!6174111 () Bool)

(declare-fun res!2555506 () Bool)

(declare-fun e!3760916 () Bool)

(assert (=> b!6174111 (=> res!2555506 e!3760916)))

(declare-datatypes ((C!32498 0))(
  ( (C!32499 (val!25951 Int)) )
))
(declare-datatypes ((Regex!16114 0))(
  ( (ElementMatch!16114 (c!1112765 C!32498)) (Concat!24959 (regOne!32740 Regex!16114) (regTwo!32740 Regex!16114)) (EmptyExpr!16114) (Star!16114 (reg!16443 Regex!16114)) (EmptyLang!16114) (Union!16114 (regOne!32741 Regex!16114) (regTwo!32741 Regex!16114)) )
))
(declare-fun r!7292 () Regex!16114)

(declare-datatypes ((List!64641 0))(
  ( (Nil!64517) (Cons!64517 (h!70965 Regex!16114) (t!378145 List!64641)) )
))
(declare-datatypes ((Context!10996 0))(
  ( (Context!10997 (exprs!5998 List!64641)) )
))
(declare-datatypes ((List!64642 0))(
  ( (Nil!64518) (Cons!64518 (h!70966 Context!10996) (t!378146 List!64642)) )
))
(declare-fun zl!343 () List!64642)

(declare-fun generalisedConcat!1711 (List!64641) Regex!16114)

(assert (=> b!6174111 (= res!2555506 (not (= r!7292 (generalisedConcat!1711 (exprs!5998 (h!70966 zl!343))))))))

(declare-fun b!6174112 () Bool)

(declare-fun e!3760917 () Bool)

(declare-fun e!3760918 () Bool)

(assert (=> b!6174112 (= e!3760917 e!3760918)))

(declare-fun res!2555507 () Bool)

(assert (=> b!6174112 (=> res!2555507 e!3760918)))

(declare-datatypes ((List!64643 0))(
  ( (Nil!64519) (Cons!64519 (h!70967 C!32498) (t!378147 List!64643)) )
))
(declare-fun s!2326 () List!64643)

(declare-fun z!1189 () (Set Context!10996))

(declare-fun e!3760920 () Bool)

(declare-fun matchZipper!2126 ((Set Context!10996) List!64643) Bool)

(assert (=> b!6174112 (= res!2555507 (not (= (matchZipper!2126 z!1189 s!2326) e!3760920)))))

(declare-fun res!2555516 () Bool)

(assert (=> b!6174112 (=> res!2555516 e!3760920)))

(declare-fun lt!2337810 () Bool)

(assert (=> b!6174112 (= res!2555516 lt!2337810)))

(declare-fun lt!2337800 () (Set Context!10996))

(assert (=> b!6174112 (= lt!2337810 (matchZipper!2126 lt!2337800 s!2326))))

(declare-datatypes ((Unit!157691 0))(
  ( (Unit!157692) )
))
(declare-fun lt!2337797 () Unit!157691)

(declare-fun e!3760908 () Unit!157691)

(assert (=> b!6174112 (= lt!2337797 e!3760908)))

(declare-fun c!1112764 () Bool)

(declare-fun nullable!6107 (Regex!16114) Bool)

(assert (=> b!6174112 (= c!1112764 (nullable!6107 (regTwo!32741 (regOne!32740 r!7292))))))

(declare-fun lt!2337794 () (Set Context!10996))

(declare-fun lt!2337815 () Context!10996)

(declare-fun lambda!337028 () Int)

(declare-fun flatMap!1619 ((Set Context!10996) Int) (Set Context!10996))

(declare-fun derivationStepZipperUp!1288 (Context!10996 C!32498) (Set Context!10996))

(assert (=> b!6174112 (= (flatMap!1619 lt!2337794 lambda!337028) (derivationStepZipperUp!1288 lt!2337815 (h!70967 s!2326)))))

(declare-fun lt!2337781 () Unit!157691)

(declare-fun lemmaFlatMapOnSingletonSet!1145 ((Set Context!10996) Context!10996 Int) Unit!157691)

(assert (=> b!6174112 (= lt!2337781 (lemmaFlatMapOnSingletonSet!1145 lt!2337794 lt!2337815 lambda!337028))))

(declare-fun lt!2337805 () (Set Context!10996))

(assert (=> b!6174112 (= lt!2337805 (derivationStepZipperUp!1288 lt!2337815 (h!70967 s!2326)))))

(declare-fun lt!2337793 () Unit!157691)

(declare-fun e!3760904 () Unit!157691)

(assert (=> b!6174112 (= lt!2337793 e!3760904)))

(declare-fun c!1112762 () Bool)

(assert (=> b!6174112 (= c!1112762 (nullable!6107 (regOne!32741 (regOne!32740 r!7292))))))

(declare-fun lt!2337792 () Context!10996)

(assert (=> b!6174112 (= (flatMap!1619 lt!2337800 lambda!337028) (derivationStepZipperUp!1288 lt!2337792 (h!70967 s!2326)))))

(declare-fun lt!2337806 () Unit!157691)

(assert (=> b!6174112 (= lt!2337806 (lemmaFlatMapOnSingletonSet!1145 lt!2337800 lt!2337792 lambda!337028))))

(declare-fun lt!2337787 () (Set Context!10996))

(assert (=> b!6174112 (= lt!2337787 (derivationStepZipperUp!1288 lt!2337792 (h!70967 s!2326)))))

(assert (=> b!6174112 (= lt!2337794 (set.insert lt!2337815 (as set.empty (Set Context!10996))))))

(assert (=> b!6174112 (= lt!2337815 (Context!10997 (Cons!64517 (regTwo!32741 (regOne!32740 r!7292)) (t!378145 (exprs!5998 (h!70966 zl!343))))))))

(assert (=> b!6174112 (= lt!2337800 (set.insert lt!2337792 (as set.empty (Set Context!10996))))))

(declare-fun lt!2337804 () List!64641)

(assert (=> b!6174112 (= lt!2337792 (Context!10997 lt!2337804))))

(assert (=> b!6174112 (= lt!2337804 (Cons!64517 (regOne!32741 (regOne!32740 r!7292)) (t!378145 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6174113 () Bool)

(declare-fun e!3760922 () Bool)

(declare-fun e!3760914 () Bool)

(assert (=> b!6174113 (= e!3760922 e!3760914)))

(declare-fun res!2555518 () Bool)

(assert (=> b!6174113 (=> res!2555518 e!3760914)))

(declare-fun lt!2337795 () (Set Context!10996))

(declare-fun lt!2337785 () (Set Context!10996))

(assert (=> b!6174113 (= res!2555518 (not (= lt!2337795 lt!2337785)))))

(declare-fun lt!2337788 () (Set Context!10996))

(declare-fun lt!2337814 () (Set Context!10996))

(assert (=> b!6174113 (= lt!2337785 (set.union lt!2337788 lt!2337814))))

(declare-fun lt!2337799 () Context!10996)

(declare-fun derivationStepZipperDown!1362 (Regex!16114 Context!10996 C!32498) (Set Context!10996))

(assert (=> b!6174113 (= lt!2337814 (derivationStepZipperDown!1362 (regTwo!32741 (regOne!32740 r!7292)) lt!2337799 (h!70967 s!2326)))))

(assert (=> b!6174113 (= lt!2337788 (derivationStepZipperDown!1362 (regOne!32741 (regOne!32740 r!7292)) lt!2337799 (h!70967 s!2326)))))

(declare-fun b!6174114 () Bool)

(declare-fun e!3760925 () Bool)

(declare-fun tp!1723783 () Bool)

(declare-fun tp!1723788 () Bool)

(assert (=> b!6174114 (= e!3760925 (and tp!1723783 tp!1723788))))

(declare-fun b!6174115 () Bool)

(declare-fun e!3760910 () Bool)

(declare-fun e!3760912 () Bool)

(assert (=> b!6174115 (= e!3760910 e!3760912)))

(declare-fun res!2555499 () Bool)

(assert (=> b!6174115 (=> (not res!2555499) (not e!3760912))))

(declare-fun lt!2337782 () Regex!16114)

(assert (=> b!6174115 (= res!2555499 (= r!7292 lt!2337782))))

(declare-fun unfocusZipper!1856 (List!64642) Regex!16114)

(assert (=> b!6174115 (= lt!2337782 (unfocusZipper!1856 zl!343))))

(declare-fun setIsEmpty!41861 () Bool)

(declare-fun setRes!41861 () Bool)

(assert (=> setIsEmpty!41861 setRes!41861))

(declare-fun b!6174116 () Bool)

(declare-fun res!2555503 () Bool)

(assert (=> b!6174116 (=> res!2555503 e!3760918)))

(assert (=> b!6174116 (= res!2555503 (or (not (= lt!2337782 r!7292)) (not (= (exprs!5998 (h!70966 zl!343)) (Cons!64517 (regOne!32740 r!7292) (t!378145 (exprs!5998 (h!70966 zl!343))))))))))

(declare-fun b!6174118 () Bool)

(declare-fun res!2555505 () Bool)

(assert (=> b!6174118 (=> res!2555505 e!3760916)))

(assert (=> b!6174118 (= res!2555505 (or (is-EmptyExpr!16114 r!7292) (is-EmptyLang!16114 r!7292) (is-ElementMatch!16114 r!7292) (is-Union!16114 r!7292) (not (is-Concat!24959 r!7292))))))

(declare-fun b!6174119 () Bool)

(declare-fun Unit!157693 () Unit!157691)

(assert (=> b!6174119 (= e!3760904 Unit!157693)))

(declare-fun lt!2337783 () Unit!157691)

(declare-fun lt!2337798 () (Set Context!10996))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!945 ((Set Context!10996) (Set Context!10996) List!64643) Unit!157691)

(assert (=> b!6174119 (= lt!2337783 (lemmaZipperConcatMatchesSameAsBothZippers!945 lt!2337788 lt!2337798 (t!378147 s!2326)))))

(declare-fun res!2555498 () Bool)

(declare-fun lt!2337789 () Bool)

(assert (=> b!6174119 (= res!2555498 lt!2337789)))

(declare-fun e!3760907 () Bool)

(assert (=> b!6174119 (=> res!2555498 e!3760907)))

(assert (=> b!6174119 (= (matchZipper!2126 (set.union lt!2337788 lt!2337798) (t!378147 s!2326)) e!3760907)))

(declare-fun b!6174120 () Bool)

(assert (=> b!6174120 (= e!3760907 (matchZipper!2126 lt!2337798 (t!378147 s!2326)))))

(declare-fun setElem!41861 () Context!10996)

(declare-fun setNonEmpty!41861 () Bool)

(declare-fun tp!1723784 () Bool)

(declare-fun e!3760919 () Bool)

(declare-fun inv!83533 (Context!10996) Bool)

(assert (=> setNonEmpty!41861 (= setRes!41861 (and tp!1723784 (inv!83533 setElem!41861) e!3760919))))

(declare-fun setRest!41861 () (Set Context!10996))

(assert (=> setNonEmpty!41861 (= z!1189 (set.union (set.insert setElem!41861 (as set.empty (Set Context!10996))) setRest!41861))))

(declare-fun b!6174121 () Bool)

(declare-fun tp_is_empty!41481 () Bool)

(assert (=> b!6174121 (= e!3760925 tp_is_empty!41481)))

(declare-fun b!6174122 () Bool)

(declare-fun res!2555497 () Bool)

(assert (=> b!6174122 (=> res!2555497 e!3760916)))

(declare-fun isEmpty!36494 (List!64642) Bool)

(assert (=> b!6174122 (= res!2555497 (not (isEmpty!36494 (t!378146 zl!343))))))

(declare-fun b!6174123 () Bool)

(declare-fun Unit!157694 () Unit!157691)

(assert (=> b!6174123 (= e!3760908 Unit!157694)))

(declare-fun b!6174124 () Bool)

(declare-fun res!2555512 () Bool)

(assert (=> b!6174124 (=> res!2555512 e!3760916)))

(assert (=> b!6174124 (= res!2555512 (not (is-Cons!64517 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6174125 () Bool)

(assert (=> b!6174125 (= e!3760920 (matchZipper!2126 lt!2337794 s!2326))))

(declare-fun b!6174126 () Bool)

(declare-fun Unit!157695 () Unit!157691)

(assert (=> b!6174126 (= e!3760908 Unit!157695)))

(declare-fun lt!2337809 () Unit!157691)

(assert (=> b!6174126 (= lt!2337809 (lemmaZipperConcatMatchesSameAsBothZippers!945 lt!2337814 lt!2337798 (t!378147 s!2326)))))

(declare-fun res!2555501 () Bool)

(assert (=> b!6174126 (= res!2555501 (matchZipper!2126 lt!2337814 (t!378147 s!2326)))))

(declare-fun e!3760911 () Bool)

(assert (=> b!6174126 (=> res!2555501 e!3760911)))

(assert (=> b!6174126 (= (matchZipper!2126 (set.union lt!2337814 lt!2337798) (t!378147 s!2326)) e!3760911)))

(declare-fun b!6174127 () Bool)

(declare-fun e!3760923 () Bool)

(assert (=> b!6174127 (= e!3760923 (inv!83533 lt!2337815))))

(declare-fun lt!2337803 () Regex!16114)

(declare-fun matchR!8297 (Regex!16114 List!64643) Bool)

(assert (=> b!6174127 (= (matchR!8297 lt!2337803 s!2326) lt!2337810)))

(declare-fun lt!2337786 () Unit!157691)

(declare-fun lt!2337802 () List!64642)

(declare-fun theoremZipperRegexEquiv!726 ((Set Context!10996) List!64642 Regex!16114 List!64643) Unit!157691)

(assert (=> b!6174127 (= lt!2337786 (theoremZipperRegexEquiv!726 lt!2337800 lt!2337802 lt!2337803 s!2326))))

(assert (=> b!6174127 (= lt!2337803 (generalisedConcat!1711 lt!2337804))))

(declare-fun b!6174128 () Bool)

(declare-fun e!3760906 () Bool)

(assert (=> b!6174128 (= e!3760906 (matchZipper!2126 lt!2337814 (t!378147 s!2326)))))

(declare-fun b!6174129 () Bool)

(declare-fun e!3760915 () Bool)

(assert (=> b!6174129 (= e!3760915 (not (matchZipper!2126 lt!2337814 (t!378147 s!2326))))))

(declare-fun b!6174130 () Bool)

(declare-fun Unit!157696 () Unit!157691)

(assert (=> b!6174130 (= e!3760904 Unit!157696)))

(declare-fun b!6174131 () Bool)

(declare-fun res!2555509 () Bool)

(assert (=> b!6174131 (=> res!2555509 e!3760923)))

(declare-fun lt!2337811 () Int)

(declare-fun zipperDepthTotal!297 (List!64642) Int)

(assert (=> b!6174131 (= res!2555509 (>= (zipperDepthTotal!297 (Cons!64518 lt!2337815 Nil!64518)) lt!2337811))))

(declare-fun e!3760905 () Bool)

(declare-fun tp!1723786 () Bool)

(declare-fun e!3760909 () Bool)

(declare-fun b!6174132 () Bool)

(assert (=> b!6174132 (= e!3760905 (and (inv!83533 (h!70966 zl!343)) e!3760909 tp!1723786))))

(declare-fun b!6174133 () Bool)

(assert (=> b!6174133 (= e!3760912 (not e!3760916))))

(declare-fun res!2555519 () Bool)

(assert (=> b!6174133 (=> res!2555519 e!3760916)))

(assert (=> b!6174133 (= res!2555519 (not (is-Cons!64518 zl!343)))))

(declare-fun lt!2337808 () Bool)

(declare-fun matchRSpec!3215 (Regex!16114 List!64643) Bool)

(assert (=> b!6174133 (= lt!2337808 (matchRSpec!3215 r!7292 s!2326))))

(assert (=> b!6174133 (= lt!2337808 (matchR!8297 r!7292 s!2326))))

(declare-fun lt!2337796 () Unit!157691)

(declare-fun mainMatchTheorem!3215 (Regex!16114 List!64643) Unit!157691)

(assert (=> b!6174133 (= lt!2337796 (mainMatchTheorem!3215 r!7292 s!2326))))

(declare-fun b!6174134 () Bool)

(declare-fun tp!1723787 () Bool)

(declare-fun tp!1723781 () Bool)

(assert (=> b!6174134 (= e!3760925 (and tp!1723787 tp!1723781))))

(declare-fun b!6174135 () Bool)

(declare-fun tp!1723779 () Bool)

(assert (=> b!6174135 (= e!3760925 tp!1723779)))

(declare-fun b!6174136 () Bool)

(declare-fun res!2555515 () Bool)

(assert (=> b!6174136 (=> (not res!2555515) (not e!3760910))))

(declare-fun toList!9898 ((Set Context!10996)) List!64642)

(assert (=> b!6174136 (= res!2555515 (= (toList!9898 z!1189) zl!343))))

(declare-fun b!6174137 () Bool)

(declare-fun e!3760924 () Bool)

(assert (=> b!6174137 (= e!3760924 (matchZipper!2126 lt!2337798 (t!378147 s!2326)))))

(declare-fun b!6174138 () Bool)

(declare-fun tp!1723785 () Bool)

(assert (=> b!6174138 (= e!3760909 tp!1723785)))

(declare-fun b!6174139 () Bool)

(declare-fun res!2555513 () Bool)

(declare-fun e!3760926 () Bool)

(assert (=> b!6174139 (=> res!2555513 e!3760926)))

(declare-fun isEmpty!36495 (List!64641) Bool)

(assert (=> b!6174139 (= res!2555513 (isEmpty!36495 (t!378145 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6174140 () Bool)

(declare-fun tp!1723780 () Bool)

(assert (=> b!6174140 (= e!3760919 tp!1723780)))

(assert (=> b!6174141 (= e!3760926 e!3760922)))

(declare-fun res!2555517 () Bool)

(assert (=> b!6174141 (=> res!2555517 e!3760922)))

(assert (=> b!6174141 (= res!2555517 (or (and (is-ElementMatch!16114 (regOne!32740 r!7292)) (= (c!1112765 (regOne!32740 r!7292)) (h!70967 s!2326))) (not (is-Union!16114 (regOne!32740 r!7292)))))))

(declare-fun lt!2337817 () Unit!157691)

(declare-fun e!3760913 () Unit!157691)

(assert (=> b!6174141 (= lt!2337817 e!3760913)))

(declare-fun c!1112763 () Bool)

(assert (=> b!6174141 (= c!1112763 (nullable!6107 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(assert (=> b!6174141 (= (flatMap!1619 z!1189 lambda!337028) (derivationStepZipperUp!1288 (h!70966 zl!343) (h!70967 s!2326)))))

(declare-fun lt!2337784 () Unit!157691)

(assert (=> b!6174141 (= lt!2337784 (lemmaFlatMapOnSingletonSet!1145 z!1189 (h!70966 zl!343) lambda!337028))))

(assert (=> b!6174141 (= lt!2337798 (derivationStepZipperUp!1288 lt!2337799 (h!70967 s!2326)))))

(assert (=> b!6174141 (= lt!2337795 (derivationStepZipperDown!1362 (h!70965 (exprs!5998 (h!70966 zl!343))) lt!2337799 (h!70967 s!2326)))))

(assert (=> b!6174141 (= lt!2337799 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun lt!2337807 () (Set Context!10996))

(assert (=> b!6174141 (= lt!2337807 (derivationStepZipperUp!1288 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))) (h!70967 s!2326)))))

(declare-fun b!6174142 () Bool)

(assert (=> b!6174142 (= e!3760918 e!3760923)))

(declare-fun res!2555508 () Bool)

(assert (=> b!6174142 (=> res!2555508 e!3760923)))

(declare-fun lt!2337816 () Int)

(assert (=> b!6174142 (= res!2555508 (>= lt!2337816 lt!2337811))))

(assert (=> b!6174142 (= lt!2337811 (zipperDepthTotal!297 zl!343))))

(assert (=> b!6174142 (= lt!2337816 (zipperDepthTotal!297 lt!2337802))))

(assert (=> b!6174142 (= lt!2337802 (Cons!64518 lt!2337792 Nil!64518))))

(declare-fun b!6174143 () Bool)

(declare-fun e!3760921 () Bool)

(declare-fun tp!1723782 () Bool)

(assert (=> b!6174143 (= e!3760921 (and tp_is_empty!41481 tp!1723782))))

(declare-fun b!6174144 () Bool)

(declare-fun Unit!157697 () Unit!157691)

(assert (=> b!6174144 (= e!3760913 Unit!157697)))

(declare-fun lt!2337801 () Unit!157691)

(assert (=> b!6174144 (= lt!2337801 (lemmaZipperConcatMatchesSameAsBothZippers!945 lt!2337795 lt!2337798 (t!378147 s!2326)))))

(declare-fun res!2555496 () Bool)

(assert (=> b!6174144 (= res!2555496 (matchZipper!2126 lt!2337795 (t!378147 s!2326)))))

(assert (=> b!6174144 (=> res!2555496 e!3760924)))

(assert (=> b!6174144 (= (matchZipper!2126 (set.union lt!2337795 lt!2337798) (t!378147 s!2326)) e!3760924)))

(declare-fun res!2555504 () Bool)

(assert (=> start!616308 (=> (not res!2555504) (not e!3760910))))

(declare-fun validRegex!7850 (Regex!16114) Bool)

(assert (=> start!616308 (= res!2555504 (validRegex!7850 r!7292))))

(assert (=> start!616308 e!3760910))

(assert (=> start!616308 e!3760925))

(declare-fun condSetEmpty!41861 () Bool)

(assert (=> start!616308 (= condSetEmpty!41861 (= z!1189 (as set.empty (Set Context!10996))))))

(assert (=> start!616308 setRes!41861))

(assert (=> start!616308 e!3760905))

(assert (=> start!616308 e!3760921))

(declare-fun b!6174117 () Bool)

(declare-fun res!2555502 () Bool)

(assert (=> b!6174117 (=> res!2555502 e!3760916)))

(declare-fun generalisedUnion!1958 (List!64641) Regex!16114)

(declare-fun unfocusZipperList!1535 (List!64642) List!64641)

(assert (=> b!6174117 (= res!2555502 (not (= r!7292 (generalisedUnion!1958 (unfocusZipperList!1535 zl!343)))))))

(declare-fun b!6174145 () Bool)

(declare-fun Unit!157698 () Unit!157691)

(assert (=> b!6174145 (= e!3760913 Unit!157698)))

(assert (=> b!6174146 (= e!3760916 e!3760926)))

(declare-fun res!2555510 () Bool)

(assert (=> b!6174146 (=> res!2555510 e!3760926)))

(declare-fun lt!2337812 () Bool)

(assert (=> b!6174146 (= res!2555510 (or (not (= lt!2337808 lt!2337812)) (is-Nil!64519 s!2326)))))

(declare-fun Exists!3184 (Int) Bool)

(assert (=> b!6174146 (= (Exists!3184 lambda!337026) (Exists!3184 lambda!337027))))

(declare-fun lt!2337791 () Unit!157691)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1721 (Regex!16114 Regex!16114 List!64643) Unit!157691)

(assert (=> b!6174146 (= lt!2337791 (lemmaExistCutMatchRandMatchRSpecEquivalent!1721 (regOne!32740 r!7292) (regTwo!32740 r!7292) s!2326))))

(assert (=> b!6174146 (= lt!2337812 (Exists!3184 lambda!337026))))

(declare-datatypes ((tuple2!66186 0))(
  ( (tuple2!66187 (_1!36396 List!64643) (_2!36396 List!64643)) )
))
(declare-datatypes ((Option!16005 0))(
  ( (None!16004) (Some!16004 (v!52145 tuple2!66186)) )
))
(declare-fun isDefined!12708 (Option!16005) Bool)

(declare-fun findConcatSeparation!2419 (Regex!16114 Regex!16114 List!64643 List!64643 List!64643) Option!16005)

(assert (=> b!6174146 (= lt!2337812 (isDefined!12708 (findConcatSeparation!2419 (regOne!32740 r!7292) (regTwo!32740 r!7292) Nil!64519 s!2326 s!2326)))))

(declare-fun lt!2337790 () Unit!157691)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2183 (Regex!16114 Regex!16114 List!64643) Unit!157691)

(assert (=> b!6174146 (= lt!2337790 (lemmaFindConcatSeparationEquivalentToExists!2183 (regOne!32740 r!7292) (regTwo!32740 r!7292) s!2326))))

(declare-fun b!6174147 () Bool)

(assert (=> b!6174147 (= e!3760911 (matchZipper!2126 lt!2337798 (t!378147 s!2326)))))

(declare-fun b!6174148 () Bool)

(assert (=> b!6174148 (= e!3760914 e!3760917)))

(declare-fun res!2555514 () Bool)

(assert (=> b!6174148 (=> res!2555514 e!3760917)))

(assert (=> b!6174148 (= res!2555514 e!3760915)))

(declare-fun res!2555500 () Bool)

(assert (=> b!6174148 (=> (not res!2555500) (not e!3760915))))

(assert (=> b!6174148 (= res!2555500 (not (= (matchZipper!2126 lt!2337795 (t!378147 s!2326)) lt!2337789)))))

(assert (=> b!6174148 (= (matchZipper!2126 lt!2337785 (t!378147 s!2326)) e!3760906)))

(declare-fun res!2555511 () Bool)

(assert (=> b!6174148 (=> res!2555511 e!3760906)))

(assert (=> b!6174148 (= res!2555511 lt!2337789)))

(assert (=> b!6174148 (= lt!2337789 (matchZipper!2126 lt!2337788 (t!378147 s!2326)))))

(declare-fun lt!2337813 () Unit!157691)

(assert (=> b!6174148 (= lt!2337813 (lemmaZipperConcatMatchesSameAsBothZippers!945 lt!2337788 lt!2337814 (t!378147 s!2326)))))

(assert (= (and start!616308 res!2555504) b!6174136))

(assert (= (and b!6174136 res!2555515) b!6174115))

(assert (= (and b!6174115 res!2555499) b!6174133))

(assert (= (and b!6174133 (not res!2555519)) b!6174122))

(assert (= (and b!6174122 (not res!2555497)) b!6174111))

(assert (= (and b!6174111 (not res!2555506)) b!6174124))

(assert (= (and b!6174124 (not res!2555512)) b!6174117))

(assert (= (and b!6174117 (not res!2555502)) b!6174118))

(assert (= (and b!6174118 (not res!2555505)) b!6174146))

(assert (= (and b!6174146 (not res!2555510)) b!6174139))

(assert (= (and b!6174139 (not res!2555513)) b!6174141))

(assert (= (and b!6174141 c!1112763) b!6174144))

(assert (= (and b!6174141 (not c!1112763)) b!6174145))

(assert (= (and b!6174144 (not res!2555496)) b!6174137))

(assert (= (and b!6174141 (not res!2555517)) b!6174113))

(assert (= (and b!6174113 (not res!2555518)) b!6174148))

(assert (= (and b!6174148 (not res!2555511)) b!6174128))

(assert (= (and b!6174148 res!2555500) b!6174129))

(assert (= (and b!6174148 (not res!2555514)) b!6174112))

(assert (= (and b!6174112 c!1112762) b!6174119))

(assert (= (and b!6174112 (not c!1112762)) b!6174130))

(assert (= (and b!6174119 (not res!2555498)) b!6174120))

(assert (= (and b!6174112 c!1112764) b!6174126))

(assert (= (and b!6174112 (not c!1112764)) b!6174123))

(assert (= (and b!6174126 (not res!2555501)) b!6174147))

(assert (= (and b!6174112 (not res!2555516)) b!6174125))

(assert (= (and b!6174112 (not res!2555507)) b!6174116))

(assert (= (and b!6174116 (not res!2555503)) b!6174142))

(assert (= (and b!6174142 (not res!2555508)) b!6174131))

(assert (= (and b!6174131 (not res!2555509)) b!6174127))

(assert (= (and start!616308 (is-ElementMatch!16114 r!7292)) b!6174121))

(assert (= (and start!616308 (is-Concat!24959 r!7292)) b!6174134))

(assert (= (and start!616308 (is-Star!16114 r!7292)) b!6174135))

(assert (= (and start!616308 (is-Union!16114 r!7292)) b!6174114))

(assert (= (and start!616308 condSetEmpty!41861) setIsEmpty!41861))

(assert (= (and start!616308 (not condSetEmpty!41861)) setNonEmpty!41861))

(assert (= setNonEmpty!41861 b!6174140))

(assert (= b!6174132 b!6174138))

(assert (= (and start!616308 (is-Cons!64518 zl!343)) b!6174132))

(assert (= (and start!616308 (is-Cons!64519 s!2326)) b!6174143))

(declare-fun m!7010386 () Bool)

(assert (=> b!6174131 m!7010386))

(declare-fun m!7010388 () Bool)

(assert (=> b!6174122 m!7010388))

(declare-fun m!7010390 () Bool)

(assert (=> b!6174137 m!7010390))

(declare-fun m!7010392 () Bool)

(assert (=> b!6174139 m!7010392))

(declare-fun m!7010394 () Bool)

(assert (=> b!6174125 m!7010394))

(declare-fun m!7010396 () Bool)

(assert (=> b!6174126 m!7010396))

(declare-fun m!7010398 () Bool)

(assert (=> b!6174126 m!7010398))

(declare-fun m!7010400 () Bool)

(assert (=> b!6174126 m!7010400))

(declare-fun m!7010402 () Bool)

(assert (=> setNonEmpty!41861 m!7010402))

(declare-fun m!7010404 () Bool)

(assert (=> b!6174141 m!7010404))

(declare-fun m!7010406 () Bool)

(assert (=> b!6174141 m!7010406))

(declare-fun m!7010408 () Bool)

(assert (=> b!6174141 m!7010408))

(declare-fun m!7010410 () Bool)

(assert (=> b!6174141 m!7010410))

(declare-fun m!7010412 () Bool)

(assert (=> b!6174141 m!7010412))

(declare-fun m!7010414 () Bool)

(assert (=> b!6174141 m!7010414))

(declare-fun m!7010416 () Bool)

(assert (=> b!6174141 m!7010416))

(declare-fun m!7010418 () Bool)

(assert (=> b!6174146 m!7010418))

(declare-fun m!7010420 () Bool)

(assert (=> b!6174146 m!7010420))

(declare-fun m!7010422 () Bool)

(assert (=> b!6174146 m!7010422))

(declare-fun m!7010424 () Bool)

(assert (=> b!6174146 m!7010424))

(declare-fun m!7010426 () Bool)

(assert (=> b!6174146 m!7010426))

(assert (=> b!6174146 m!7010426))

(assert (=> b!6174146 m!7010418))

(declare-fun m!7010428 () Bool)

(assert (=> b!6174146 m!7010428))

(declare-fun m!7010430 () Bool)

(assert (=> b!6174136 m!7010430))

(declare-fun m!7010432 () Bool)

(assert (=> b!6174127 m!7010432))

(declare-fun m!7010434 () Bool)

(assert (=> b!6174127 m!7010434))

(declare-fun m!7010436 () Bool)

(assert (=> b!6174127 m!7010436))

(declare-fun m!7010438 () Bool)

(assert (=> b!6174127 m!7010438))

(declare-fun m!7010440 () Bool)

(assert (=> b!6174133 m!7010440))

(declare-fun m!7010442 () Bool)

(assert (=> b!6174133 m!7010442))

(declare-fun m!7010444 () Bool)

(assert (=> b!6174133 m!7010444))

(declare-fun m!7010446 () Bool)

(assert (=> b!6174112 m!7010446))

(declare-fun m!7010448 () Bool)

(assert (=> b!6174112 m!7010448))

(declare-fun m!7010450 () Bool)

(assert (=> b!6174112 m!7010450))

(declare-fun m!7010452 () Bool)

(assert (=> b!6174112 m!7010452))

(declare-fun m!7010454 () Bool)

(assert (=> b!6174112 m!7010454))

(declare-fun m!7010456 () Bool)

(assert (=> b!6174112 m!7010456))

(declare-fun m!7010458 () Bool)

(assert (=> b!6174112 m!7010458))

(declare-fun m!7010460 () Bool)

(assert (=> b!6174112 m!7010460))

(declare-fun m!7010462 () Bool)

(assert (=> b!6174112 m!7010462))

(declare-fun m!7010464 () Bool)

(assert (=> b!6174112 m!7010464))

(declare-fun m!7010466 () Bool)

(assert (=> b!6174112 m!7010466))

(declare-fun m!7010468 () Bool)

(assert (=> b!6174112 m!7010468))

(declare-fun m!7010470 () Bool)

(assert (=> b!6174115 m!7010470))

(declare-fun m!7010472 () Bool)

(assert (=> b!6174119 m!7010472))

(declare-fun m!7010474 () Bool)

(assert (=> b!6174119 m!7010474))

(assert (=> b!6174129 m!7010398))

(declare-fun m!7010476 () Bool)

(assert (=> b!6174148 m!7010476))

(declare-fun m!7010478 () Bool)

(assert (=> b!6174148 m!7010478))

(declare-fun m!7010480 () Bool)

(assert (=> b!6174148 m!7010480))

(declare-fun m!7010482 () Bool)

(assert (=> b!6174148 m!7010482))

(declare-fun m!7010484 () Bool)

(assert (=> b!6174142 m!7010484))

(declare-fun m!7010486 () Bool)

(assert (=> b!6174142 m!7010486))

(declare-fun m!7010488 () Bool)

(assert (=> b!6174132 m!7010488))

(assert (=> b!6174128 m!7010398))

(assert (=> b!6174147 m!7010390))

(declare-fun m!7010490 () Bool)

(assert (=> b!6174117 m!7010490))

(assert (=> b!6174117 m!7010490))

(declare-fun m!7010492 () Bool)

(assert (=> b!6174117 m!7010492))

(declare-fun m!7010494 () Bool)

(assert (=> start!616308 m!7010494))

(assert (=> b!6174120 m!7010390))

(declare-fun m!7010496 () Bool)

(assert (=> b!6174144 m!7010496))

(assert (=> b!6174144 m!7010476))

(declare-fun m!7010498 () Bool)

(assert (=> b!6174144 m!7010498))

(declare-fun m!7010500 () Bool)

(assert (=> b!6174113 m!7010500))

(declare-fun m!7010502 () Bool)

(assert (=> b!6174113 m!7010502))

(declare-fun m!7010504 () Bool)

(assert (=> b!6174111 m!7010504))

(push 1)

(assert (not b!6174134))

(assert (not b!6174127))

(assert (not b!6174119))

(assert (not b!6174132))

(assert (not b!6174143))

(assert (not b!6174115))

(assert (not b!6174114))

(assert (not b!6174125))

(assert (not b!6174135))

(assert (not b!6174137))

(assert (not b!6174142))

(assert (not b!6174136))

(assert (not b!6174131))

(assert (not b!6174129))

(assert (not b!6174141))

(assert (not setNonEmpty!41861))

(assert (not b!6174148))

(assert (not b!6174133))

(assert (not b!6174113))

(assert (not b!6174117))

(assert (not b!6174147))

(assert (not b!6174140))

(assert tp_is_empty!41481)

(assert (not b!6174139))

(assert (not start!616308))

(assert (not b!6174146))

(assert (not b!6174138))

(assert (not b!6174122))

(assert (not b!6174111))

(assert (not b!6174112))

(assert (not b!6174128))

(assert (not b!6174144))

(assert (not b!6174126))

(assert (not b!6174120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1935241 () Bool)

(declare-fun c!1112785 () Bool)

(declare-fun isEmpty!36498 (List!64643) Bool)

(assert (=> d!1935241 (= c!1112785 (isEmpty!36498 s!2326))))

(declare-fun e!3761004 () Bool)

(assert (=> d!1935241 (= (matchZipper!2126 lt!2337794 s!2326) e!3761004)))

(declare-fun b!6174291 () Bool)

(declare-fun nullableZipper!1893 ((Set Context!10996)) Bool)

(assert (=> b!6174291 (= e!3761004 (nullableZipper!1893 lt!2337794))))

(declare-fun b!6174292 () Bool)

(declare-fun derivationStepZipper!2085 ((Set Context!10996) C!32498) (Set Context!10996))

(declare-fun head!12745 (List!64643) C!32498)

(declare-fun tail!11830 (List!64643) List!64643)

(assert (=> b!6174292 (= e!3761004 (matchZipper!2126 (derivationStepZipper!2085 lt!2337794 (head!12745 s!2326)) (tail!11830 s!2326)))))

(assert (= (and d!1935241 c!1112785) b!6174291))

(assert (= (and d!1935241 (not c!1112785)) b!6174292))

(declare-fun m!7010626 () Bool)

(assert (=> d!1935241 m!7010626))

(declare-fun m!7010628 () Bool)

(assert (=> b!6174291 m!7010628))

(declare-fun m!7010630 () Bool)

(assert (=> b!6174292 m!7010630))

(assert (=> b!6174292 m!7010630))

(declare-fun m!7010632 () Bool)

(assert (=> b!6174292 m!7010632))

(declare-fun m!7010634 () Bool)

(assert (=> b!6174292 m!7010634))

(assert (=> b!6174292 m!7010632))

(assert (=> b!6174292 m!7010634))

(declare-fun m!7010636 () Bool)

(assert (=> b!6174292 m!7010636))

(assert (=> b!6174125 d!1935241))

(declare-fun b!6174311 () Bool)

(declare-fun res!2555614 () Bool)

(declare-fun e!3761015 () Bool)

(assert (=> b!6174311 (=> (not res!2555614) (not e!3761015))))

(declare-fun lt!2337935 () Option!16005)

(declare-fun get!22271 (Option!16005) tuple2!66186)

(assert (=> b!6174311 (= res!2555614 (matchR!8297 (regOne!32740 r!7292) (_1!36396 (get!22271 lt!2337935))))))

(declare-fun b!6174312 () Bool)

(declare-fun e!3761019 () Option!16005)

(assert (=> b!6174312 (= e!3761019 (Some!16004 (tuple2!66187 Nil!64519 s!2326)))))

(declare-fun b!6174313 () Bool)

(declare-fun lt!2337937 () Unit!157691)

(declare-fun lt!2337936 () Unit!157691)

(assert (=> b!6174313 (= lt!2337937 lt!2337936)))

(declare-fun ++!14198 (List!64643 List!64643) List!64643)

(assert (=> b!6174313 (= (++!14198 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519)) (t!378147 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2293 (List!64643 C!32498 List!64643 List!64643) Unit!157691)

(assert (=> b!6174313 (= lt!2337936 (lemmaMoveElementToOtherListKeepsConcatEq!2293 Nil!64519 (h!70967 s!2326) (t!378147 s!2326) s!2326))))

(declare-fun e!3761016 () Option!16005)

(assert (=> b!6174313 (= e!3761016 (findConcatSeparation!2419 (regOne!32740 r!7292) (regTwo!32740 r!7292) (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519)) (t!378147 s!2326) s!2326))))

(declare-fun b!6174314 () Bool)

(assert (=> b!6174314 (= e!3761019 e!3761016)))

(declare-fun c!1112791 () Bool)

(assert (=> b!6174314 (= c!1112791 (is-Nil!64519 s!2326))))

(declare-fun b!6174315 () Bool)

(declare-fun res!2555616 () Bool)

(assert (=> b!6174315 (=> (not res!2555616) (not e!3761015))))

(assert (=> b!6174315 (= res!2555616 (matchR!8297 (regTwo!32740 r!7292) (_2!36396 (get!22271 lt!2337935))))))

(declare-fun d!1935243 () Bool)

(declare-fun e!3761018 () Bool)

(assert (=> d!1935243 e!3761018))

(declare-fun res!2555618 () Bool)

(assert (=> d!1935243 (=> res!2555618 e!3761018)))

(assert (=> d!1935243 (= res!2555618 e!3761015)))

(declare-fun res!2555615 () Bool)

(assert (=> d!1935243 (=> (not res!2555615) (not e!3761015))))

(assert (=> d!1935243 (= res!2555615 (isDefined!12708 lt!2337935))))

(assert (=> d!1935243 (= lt!2337935 e!3761019)))

(declare-fun c!1112790 () Bool)

(declare-fun e!3761017 () Bool)

(assert (=> d!1935243 (= c!1112790 e!3761017)))

(declare-fun res!2555617 () Bool)

(assert (=> d!1935243 (=> (not res!2555617) (not e!3761017))))

(assert (=> d!1935243 (= res!2555617 (matchR!8297 (regOne!32740 r!7292) Nil!64519))))

(assert (=> d!1935243 (validRegex!7850 (regOne!32740 r!7292))))

(assert (=> d!1935243 (= (findConcatSeparation!2419 (regOne!32740 r!7292) (regTwo!32740 r!7292) Nil!64519 s!2326 s!2326) lt!2337935)))

(declare-fun b!6174316 () Bool)

(assert (=> b!6174316 (= e!3761015 (= (++!14198 (_1!36396 (get!22271 lt!2337935)) (_2!36396 (get!22271 lt!2337935))) s!2326))))

(declare-fun b!6174317 () Bool)

(assert (=> b!6174317 (= e!3761016 None!16004)))

(declare-fun b!6174318 () Bool)

(assert (=> b!6174318 (= e!3761017 (matchR!8297 (regTwo!32740 r!7292) s!2326))))

(declare-fun b!6174319 () Bool)

(assert (=> b!6174319 (= e!3761018 (not (isDefined!12708 lt!2337935)))))

(assert (= (and d!1935243 res!2555617) b!6174318))

(assert (= (and d!1935243 c!1112790) b!6174312))

(assert (= (and d!1935243 (not c!1112790)) b!6174314))

(assert (= (and b!6174314 c!1112791) b!6174317))

(assert (= (and b!6174314 (not c!1112791)) b!6174313))

(assert (= (and d!1935243 res!2555615) b!6174311))

(assert (= (and b!6174311 res!2555614) b!6174315))

(assert (= (and b!6174315 res!2555616) b!6174316))

(assert (= (and d!1935243 (not res!2555618)) b!6174319))

(declare-fun m!7010638 () Bool)

(assert (=> b!6174313 m!7010638))

(assert (=> b!6174313 m!7010638))

(declare-fun m!7010640 () Bool)

(assert (=> b!6174313 m!7010640))

(declare-fun m!7010642 () Bool)

(assert (=> b!6174313 m!7010642))

(assert (=> b!6174313 m!7010638))

(declare-fun m!7010644 () Bool)

(assert (=> b!6174313 m!7010644))

(declare-fun m!7010646 () Bool)

(assert (=> b!6174316 m!7010646))

(declare-fun m!7010648 () Bool)

(assert (=> b!6174316 m!7010648))

(declare-fun m!7010650 () Bool)

(assert (=> b!6174319 m!7010650))

(assert (=> d!1935243 m!7010650))

(declare-fun m!7010652 () Bool)

(assert (=> d!1935243 m!7010652))

(declare-fun m!7010654 () Bool)

(assert (=> d!1935243 m!7010654))

(declare-fun m!7010656 () Bool)

(assert (=> b!6174318 m!7010656))

(assert (=> b!6174315 m!7010646))

(declare-fun m!7010658 () Bool)

(assert (=> b!6174315 m!7010658))

(assert (=> b!6174311 m!7010646))

(declare-fun m!7010660 () Bool)

(assert (=> b!6174311 m!7010660))

(assert (=> b!6174146 d!1935243))

(declare-fun d!1935245 () Bool)

(declare-fun choose!45881 (Int) Bool)

(assert (=> d!1935245 (= (Exists!3184 lambda!337026) (choose!45881 lambda!337026))))

(declare-fun bs!1531076 () Bool)

(assert (= bs!1531076 d!1935245))

(declare-fun m!7010662 () Bool)

(assert (=> bs!1531076 m!7010662))

(assert (=> b!6174146 d!1935245))

(declare-fun d!1935247 () Bool)

(assert (=> d!1935247 (= (Exists!3184 lambda!337027) (choose!45881 lambda!337027))))

(declare-fun bs!1531077 () Bool)

(assert (= bs!1531077 d!1935247))

(declare-fun m!7010664 () Bool)

(assert (=> bs!1531077 m!7010664))

(assert (=> b!6174146 d!1935247))

(declare-fun bs!1531078 () Bool)

(declare-fun d!1935249 () Bool)

(assert (= bs!1531078 (and d!1935249 b!6174146)))

(declare-fun lambda!337046 () Int)

(assert (=> bs!1531078 (= lambda!337046 lambda!337026)))

(assert (=> bs!1531078 (not (= lambda!337046 lambda!337027))))

(assert (=> d!1935249 true))

(assert (=> d!1935249 true))

(assert (=> d!1935249 true))

(assert (=> d!1935249 (= (isDefined!12708 (findConcatSeparation!2419 (regOne!32740 r!7292) (regTwo!32740 r!7292) Nil!64519 s!2326 s!2326)) (Exists!3184 lambda!337046))))

(declare-fun lt!2337940 () Unit!157691)

(declare-fun choose!45882 (Regex!16114 Regex!16114 List!64643) Unit!157691)

(assert (=> d!1935249 (= lt!2337940 (choose!45882 (regOne!32740 r!7292) (regTwo!32740 r!7292) s!2326))))

(assert (=> d!1935249 (validRegex!7850 (regOne!32740 r!7292))))

(assert (=> d!1935249 (= (lemmaFindConcatSeparationEquivalentToExists!2183 (regOne!32740 r!7292) (regTwo!32740 r!7292) s!2326) lt!2337940)))

(declare-fun bs!1531079 () Bool)

(assert (= bs!1531079 d!1935249))

(declare-fun m!7010666 () Bool)

(assert (=> bs!1531079 m!7010666))

(assert (=> bs!1531079 m!7010418))

(declare-fun m!7010668 () Bool)

(assert (=> bs!1531079 m!7010668))

(assert (=> bs!1531079 m!7010418))

(assert (=> bs!1531079 m!7010420))

(assert (=> bs!1531079 m!7010654))

(assert (=> b!6174146 d!1935249))

(declare-fun bs!1531080 () Bool)

(declare-fun d!1935251 () Bool)

(assert (= bs!1531080 (and d!1935251 b!6174146)))

(declare-fun lambda!337051 () Int)

(assert (=> bs!1531080 (= lambda!337051 lambda!337026)))

(assert (=> bs!1531080 (not (= lambda!337051 lambda!337027))))

(declare-fun bs!1531081 () Bool)

(assert (= bs!1531081 (and d!1935251 d!1935249)))

(assert (=> bs!1531081 (= lambda!337051 lambda!337046)))

(assert (=> d!1935251 true))

(assert (=> d!1935251 true))

(assert (=> d!1935251 true))

(declare-fun lambda!337052 () Int)

(assert (=> bs!1531080 (not (= lambda!337052 lambda!337026))))

(assert (=> bs!1531080 (= lambda!337052 lambda!337027)))

(assert (=> bs!1531081 (not (= lambda!337052 lambda!337046))))

(declare-fun bs!1531082 () Bool)

(assert (= bs!1531082 d!1935251))

(assert (=> bs!1531082 (not (= lambda!337052 lambda!337051))))

(assert (=> d!1935251 true))

(assert (=> d!1935251 true))

(assert (=> d!1935251 true))

(assert (=> d!1935251 (= (Exists!3184 lambda!337051) (Exists!3184 lambda!337052))))

(declare-fun lt!2337943 () Unit!157691)

(declare-fun choose!45883 (Regex!16114 Regex!16114 List!64643) Unit!157691)

(assert (=> d!1935251 (= lt!2337943 (choose!45883 (regOne!32740 r!7292) (regTwo!32740 r!7292) s!2326))))

(assert (=> d!1935251 (validRegex!7850 (regOne!32740 r!7292))))

(assert (=> d!1935251 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1721 (regOne!32740 r!7292) (regTwo!32740 r!7292) s!2326) lt!2337943)))

(declare-fun m!7010670 () Bool)

(assert (=> bs!1531082 m!7010670))

(declare-fun m!7010672 () Bool)

(assert (=> bs!1531082 m!7010672))

(declare-fun m!7010674 () Bool)

(assert (=> bs!1531082 m!7010674))

(assert (=> bs!1531082 m!7010654))

(assert (=> b!6174146 d!1935251))

(declare-fun d!1935253 () Bool)

(declare-fun isEmpty!36499 (Option!16005) Bool)

(assert (=> d!1935253 (= (isDefined!12708 (findConcatSeparation!2419 (regOne!32740 r!7292) (regTwo!32740 r!7292) Nil!64519 s!2326 s!2326)) (not (isEmpty!36499 (findConcatSeparation!2419 (regOne!32740 r!7292) (regTwo!32740 r!7292) Nil!64519 s!2326 s!2326))))))

(declare-fun bs!1531083 () Bool)

(assert (= bs!1531083 d!1935253))

(assert (=> bs!1531083 m!7010418))

(declare-fun m!7010676 () Bool)

(assert (=> bs!1531083 m!7010676))

(assert (=> b!6174146 d!1935253))

(declare-fun d!1935255 () Bool)

(declare-fun lt!2337946 () Int)

(assert (=> d!1935255 (>= lt!2337946 0)))

(declare-fun e!3761028 () Int)

(assert (=> d!1935255 (= lt!2337946 e!3761028)))

(declare-fun c!1112794 () Bool)

(assert (=> d!1935255 (= c!1112794 (is-Cons!64518 zl!343))))

(assert (=> d!1935255 (= (zipperDepthTotal!297 zl!343) lt!2337946)))

(declare-fun b!6174336 () Bool)

(declare-fun contextDepthTotal!271 (Context!10996) Int)

(assert (=> b!6174336 (= e!3761028 (+ (contextDepthTotal!271 (h!70966 zl!343)) (zipperDepthTotal!297 (t!378146 zl!343))))))

(declare-fun b!6174337 () Bool)

(assert (=> b!6174337 (= e!3761028 0)))

(assert (= (and d!1935255 c!1112794) b!6174336))

(assert (= (and d!1935255 (not c!1112794)) b!6174337))

(declare-fun m!7010678 () Bool)

(assert (=> b!6174336 m!7010678))

(declare-fun m!7010680 () Bool)

(assert (=> b!6174336 m!7010680))

(assert (=> b!6174142 d!1935255))

(declare-fun d!1935257 () Bool)

(declare-fun lt!2337947 () Int)

(assert (=> d!1935257 (>= lt!2337947 0)))

(declare-fun e!3761029 () Int)

(assert (=> d!1935257 (= lt!2337947 e!3761029)))

(declare-fun c!1112795 () Bool)

(assert (=> d!1935257 (= c!1112795 (is-Cons!64518 lt!2337802))))

(assert (=> d!1935257 (= (zipperDepthTotal!297 lt!2337802) lt!2337947)))

(declare-fun b!6174338 () Bool)

(assert (=> b!6174338 (= e!3761029 (+ (contextDepthTotal!271 (h!70966 lt!2337802)) (zipperDepthTotal!297 (t!378146 lt!2337802))))))

(declare-fun b!6174339 () Bool)

(assert (=> b!6174339 (= e!3761029 0)))

(assert (= (and d!1935257 c!1112795) b!6174338))

(assert (= (and d!1935257 (not c!1112795)) b!6174339))

(declare-fun m!7010682 () Bool)

(assert (=> b!6174338 m!7010682))

(declare-fun m!7010684 () Bool)

(assert (=> b!6174338 m!7010684))

(assert (=> b!6174142 d!1935257))

(declare-fun d!1935259 () Bool)

(declare-fun e!3761032 () Bool)

(assert (=> d!1935259 (= (matchZipper!2126 (set.union lt!2337795 lt!2337798) (t!378147 s!2326)) e!3761032)))

(declare-fun res!2555633 () Bool)

(assert (=> d!1935259 (=> res!2555633 e!3761032)))

(assert (=> d!1935259 (= res!2555633 (matchZipper!2126 lt!2337795 (t!378147 s!2326)))))

(declare-fun lt!2337950 () Unit!157691)

(declare-fun choose!45884 ((Set Context!10996) (Set Context!10996) List!64643) Unit!157691)

(assert (=> d!1935259 (= lt!2337950 (choose!45884 lt!2337795 lt!2337798 (t!378147 s!2326)))))

(assert (=> d!1935259 (= (lemmaZipperConcatMatchesSameAsBothZippers!945 lt!2337795 lt!2337798 (t!378147 s!2326)) lt!2337950)))

(declare-fun b!6174342 () Bool)

(assert (=> b!6174342 (= e!3761032 (matchZipper!2126 lt!2337798 (t!378147 s!2326)))))

(assert (= (and d!1935259 (not res!2555633)) b!6174342))

(assert (=> d!1935259 m!7010498))

(assert (=> d!1935259 m!7010476))

(declare-fun m!7010686 () Bool)

(assert (=> d!1935259 m!7010686))

(assert (=> b!6174342 m!7010390))

(assert (=> b!6174144 d!1935259))

(declare-fun d!1935261 () Bool)

(declare-fun c!1112796 () Bool)

(assert (=> d!1935261 (= c!1112796 (isEmpty!36498 (t!378147 s!2326)))))

(declare-fun e!3761033 () Bool)

(assert (=> d!1935261 (= (matchZipper!2126 lt!2337795 (t!378147 s!2326)) e!3761033)))

(declare-fun b!6174343 () Bool)

(assert (=> b!6174343 (= e!3761033 (nullableZipper!1893 lt!2337795))))

(declare-fun b!6174344 () Bool)

(assert (=> b!6174344 (= e!3761033 (matchZipper!2126 (derivationStepZipper!2085 lt!2337795 (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))))))

(assert (= (and d!1935261 c!1112796) b!6174343))

(assert (= (and d!1935261 (not c!1112796)) b!6174344))

(declare-fun m!7010688 () Bool)

(assert (=> d!1935261 m!7010688))

(declare-fun m!7010690 () Bool)

(assert (=> b!6174343 m!7010690))

(declare-fun m!7010692 () Bool)

(assert (=> b!6174344 m!7010692))

(assert (=> b!6174344 m!7010692))

(declare-fun m!7010694 () Bool)

(assert (=> b!6174344 m!7010694))

(declare-fun m!7010696 () Bool)

(assert (=> b!6174344 m!7010696))

(assert (=> b!6174344 m!7010694))

(assert (=> b!6174344 m!7010696))

(declare-fun m!7010698 () Bool)

(assert (=> b!6174344 m!7010698))

(assert (=> b!6174144 d!1935261))

(declare-fun d!1935263 () Bool)

(declare-fun c!1112797 () Bool)

(assert (=> d!1935263 (= c!1112797 (isEmpty!36498 (t!378147 s!2326)))))

(declare-fun e!3761034 () Bool)

(assert (=> d!1935263 (= (matchZipper!2126 (set.union lt!2337795 lt!2337798) (t!378147 s!2326)) e!3761034)))

(declare-fun b!6174345 () Bool)

(assert (=> b!6174345 (= e!3761034 (nullableZipper!1893 (set.union lt!2337795 lt!2337798)))))

(declare-fun b!6174346 () Bool)

(assert (=> b!6174346 (= e!3761034 (matchZipper!2126 (derivationStepZipper!2085 (set.union lt!2337795 lt!2337798) (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))))))

(assert (= (and d!1935263 c!1112797) b!6174345))

(assert (= (and d!1935263 (not c!1112797)) b!6174346))

(assert (=> d!1935263 m!7010688))

(declare-fun m!7010700 () Bool)

(assert (=> b!6174345 m!7010700))

(assert (=> b!6174346 m!7010692))

(assert (=> b!6174346 m!7010692))

(declare-fun m!7010702 () Bool)

(assert (=> b!6174346 m!7010702))

(assert (=> b!6174346 m!7010696))

(assert (=> b!6174346 m!7010702))

(assert (=> b!6174346 m!7010696))

(declare-fun m!7010704 () Bool)

(assert (=> b!6174346 m!7010704))

(assert (=> b!6174144 d!1935263))

(declare-fun d!1935265 () Bool)

(assert (=> d!1935265 (= (isEmpty!36494 (t!378146 zl!343)) (is-Nil!64518 (t!378146 zl!343)))))

(assert (=> b!6174122 d!1935265))

(declare-fun d!1935267 () Bool)

(assert (=> d!1935267 (= (isEmpty!36495 (t!378145 (exprs!5998 (h!70966 zl!343)))) (is-Nil!64517 (t!378145 (exprs!5998 (h!70966 zl!343)))))))

(assert (=> b!6174139 d!1935267))

(declare-fun d!1935269 () Bool)

(declare-fun e!3761035 () Bool)

(assert (=> d!1935269 (= (matchZipper!2126 (set.union lt!2337788 lt!2337798) (t!378147 s!2326)) e!3761035)))

(declare-fun res!2555634 () Bool)

(assert (=> d!1935269 (=> res!2555634 e!3761035)))

(assert (=> d!1935269 (= res!2555634 (matchZipper!2126 lt!2337788 (t!378147 s!2326)))))

(declare-fun lt!2337951 () Unit!157691)

(assert (=> d!1935269 (= lt!2337951 (choose!45884 lt!2337788 lt!2337798 (t!378147 s!2326)))))

(assert (=> d!1935269 (= (lemmaZipperConcatMatchesSameAsBothZippers!945 lt!2337788 lt!2337798 (t!378147 s!2326)) lt!2337951)))

(declare-fun b!6174347 () Bool)

(assert (=> b!6174347 (= e!3761035 (matchZipper!2126 lt!2337798 (t!378147 s!2326)))))

(assert (= (and d!1935269 (not res!2555634)) b!6174347))

(assert (=> d!1935269 m!7010474))

(assert (=> d!1935269 m!7010480))

(declare-fun m!7010706 () Bool)

(assert (=> d!1935269 m!7010706))

(assert (=> b!6174347 m!7010390))

(assert (=> b!6174119 d!1935269))

(declare-fun d!1935271 () Bool)

(declare-fun c!1112798 () Bool)

(assert (=> d!1935271 (= c!1112798 (isEmpty!36498 (t!378147 s!2326)))))

(declare-fun e!3761036 () Bool)

(assert (=> d!1935271 (= (matchZipper!2126 (set.union lt!2337788 lt!2337798) (t!378147 s!2326)) e!3761036)))

(declare-fun b!6174348 () Bool)

(assert (=> b!6174348 (= e!3761036 (nullableZipper!1893 (set.union lt!2337788 lt!2337798)))))

(declare-fun b!6174349 () Bool)

(assert (=> b!6174349 (= e!3761036 (matchZipper!2126 (derivationStepZipper!2085 (set.union lt!2337788 lt!2337798) (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))))))

(assert (= (and d!1935271 c!1112798) b!6174348))

(assert (= (and d!1935271 (not c!1112798)) b!6174349))

(assert (=> d!1935271 m!7010688))

(declare-fun m!7010708 () Bool)

(assert (=> b!6174348 m!7010708))

(assert (=> b!6174349 m!7010692))

(assert (=> b!6174349 m!7010692))

(declare-fun m!7010710 () Bool)

(assert (=> b!6174349 m!7010710))

(assert (=> b!6174349 m!7010696))

(assert (=> b!6174349 m!7010710))

(assert (=> b!6174349 m!7010696))

(declare-fun m!7010712 () Bool)

(assert (=> b!6174349 m!7010712))

(assert (=> b!6174119 d!1935271))

(declare-fun d!1935273 () Bool)

(declare-fun dynLambda!25442 (Int Context!10996) (Set Context!10996))

(assert (=> d!1935273 (= (flatMap!1619 z!1189 lambda!337028) (dynLambda!25442 lambda!337028 (h!70966 zl!343)))))

(declare-fun lt!2337954 () Unit!157691)

(declare-fun choose!45885 ((Set Context!10996) Context!10996 Int) Unit!157691)

(assert (=> d!1935273 (= lt!2337954 (choose!45885 z!1189 (h!70966 zl!343) lambda!337028))))

(assert (=> d!1935273 (= z!1189 (set.insert (h!70966 zl!343) (as set.empty (Set Context!10996))))))

(assert (=> d!1935273 (= (lemmaFlatMapOnSingletonSet!1145 z!1189 (h!70966 zl!343) lambda!337028) lt!2337954)))

(declare-fun b_lambda!234997 () Bool)

(assert (=> (not b_lambda!234997) (not d!1935273)))

(declare-fun bs!1531084 () Bool)

(assert (= bs!1531084 d!1935273))

(assert (=> bs!1531084 m!7010416))

(declare-fun m!7010714 () Bool)

(assert (=> bs!1531084 m!7010714))

(declare-fun m!7010716 () Bool)

(assert (=> bs!1531084 m!7010716))

(declare-fun m!7010718 () Bool)

(assert (=> bs!1531084 m!7010718))

(assert (=> b!6174141 d!1935273))

(declare-fun d!1935275 () Bool)

(declare-fun nullableFct!2069 (Regex!16114) Bool)

(assert (=> d!1935275 (= (nullable!6107 (h!70965 (exprs!5998 (h!70966 zl!343)))) (nullableFct!2069 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun bs!1531085 () Bool)

(assert (= bs!1531085 d!1935275))

(declare-fun m!7010720 () Bool)

(assert (=> bs!1531085 m!7010720))

(assert (=> b!6174141 d!1935275))

(declare-fun b!6174361 () Bool)

(declare-fun e!3761044 () (Set Context!10996))

(declare-fun e!3761043 () (Set Context!10996))

(assert (=> b!6174361 (= e!3761044 e!3761043)))

(declare-fun c!1112804 () Bool)

(assert (=> b!6174361 (= c!1112804 (is-Cons!64517 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))))))

(declare-fun b!6174362 () Bool)

(declare-fun call!515159 () (Set Context!10996))

(assert (=> b!6174362 (= e!3761043 call!515159)))

(declare-fun bm!515154 () Bool)

(assert (=> bm!515154 (= call!515159 (derivationStepZipperDown!1362 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))) (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (h!70967 s!2326)))))

(declare-fun b!6174363 () Bool)

(declare-fun e!3761045 () Bool)

(assert (=> b!6174363 (= e!3761045 (nullable!6107 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))))))

(declare-fun b!6174364 () Bool)

(assert (=> b!6174364 (= e!3761043 (as set.empty (Set Context!10996)))))

(declare-fun b!6174360 () Bool)

(assert (=> b!6174360 (= e!3761044 (set.union call!515159 (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (h!70967 s!2326))))))

(declare-fun d!1935277 () Bool)

(declare-fun c!1112803 () Bool)

(assert (=> d!1935277 (= c!1112803 e!3761045)))

(declare-fun res!2555637 () Bool)

(assert (=> d!1935277 (=> (not res!2555637) (not e!3761045))))

(assert (=> d!1935277 (= res!2555637 (is-Cons!64517 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))))))

(assert (=> d!1935277 (= (derivationStepZipperUp!1288 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))) (h!70967 s!2326)) e!3761044)))

(assert (= (and d!1935277 res!2555637) b!6174363))

(assert (= (and d!1935277 c!1112803) b!6174360))

(assert (= (and d!1935277 (not c!1112803)) b!6174361))

(assert (= (and b!6174361 c!1112804) b!6174362))

(assert (= (and b!6174361 (not c!1112804)) b!6174364))

(assert (= (or b!6174360 b!6174362) bm!515154))

(declare-fun m!7010722 () Bool)

(assert (=> bm!515154 m!7010722))

(declare-fun m!7010724 () Bool)

(assert (=> b!6174363 m!7010724))

(declare-fun m!7010726 () Bool)

(assert (=> b!6174360 m!7010726))

(assert (=> b!6174141 d!1935277))

(declare-fun b!6174366 () Bool)

(declare-fun e!3761047 () (Set Context!10996))

(declare-fun e!3761046 () (Set Context!10996))

(assert (=> b!6174366 (= e!3761047 e!3761046)))

(declare-fun c!1112806 () Bool)

(assert (=> b!6174366 (= c!1112806 (is-Cons!64517 (exprs!5998 (h!70966 zl!343))))))

(declare-fun b!6174367 () Bool)

(declare-fun call!515160 () (Set Context!10996))

(assert (=> b!6174367 (= e!3761046 call!515160)))

(declare-fun bm!515155 () Bool)

(assert (=> bm!515155 (= call!515160 (derivationStepZipperDown!1362 (h!70965 (exprs!5998 (h!70966 zl!343))) (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))) (h!70967 s!2326)))))

(declare-fun b!6174368 () Bool)

(declare-fun e!3761048 () Bool)

(assert (=> b!6174368 (= e!3761048 (nullable!6107 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6174369 () Bool)

(assert (=> b!6174369 (= e!3761046 (as set.empty (Set Context!10996)))))

(declare-fun b!6174365 () Bool)

(assert (=> b!6174365 (= e!3761047 (set.union call!515160 (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))) (h!70967 s!2326))))))

(declare-fun d!1935279 () Bool)

(declare-fun c!1112805 () Bool)

(assert (=> d!1935279 (= c!1112805 e!3761048)))

(declare-fun res!2555638 () Bool)

(assert (=> d!1935279 (=> (not res!2555638) (not e!3761048))))

(assert (=> d!1935279 (= res!2555638 (is-Cons!64517 (exprs!5998 (h!70966 zl!343))))))

(assert (=> d!1935279 (= (derivationStepZipperUp!1288 (h!70966 zl!343) (h!70967 s!2326)) e!3761047)))

(assert (= (and d!1935279 res!2555638) b!6174368))

(assert (= (and d!1935279 c!1112805) b!6174365))

(assert (= (and d!1935279 (not c!1112805)) b!6174366))

(assert (= (and b!6174366 c!1112806) b!6174367))

(assert (= (and b!6174366 (not c!1112806)) b!6174369))

(assert (= (or b!6174365 b!6174367) bm!515155))

(declare-fun m!7010728 () Bool)

(assert (=> bm!515155 m!7010728))

(assert (=> b!6174368 m!7010412))

(declare-fun m!7010730 () Bool)

(assert (=> b!6174365 m!7010730))

(assert (=> b!6174141 d!1935279))

(declare-fun b!6174371 () Bool)

(declare-fun e!3761050 () (Set Context!10996))

(declare-fun e!3761049 () (Set Context!10996))

(assert (=> b!6174371 (= e!3761050 e!3761049)))

(declare-fun c!1112808 () Bool)

(assert (=> b!6174371 (= c!1112808 (is-Cons!64517 (exprs!5998 lt!2337799)))))

(declare-fun b!6174372 () Bool)

(declare-fun call!515161 () (Set Context!10996))

(assert (=> b!6174372 (= e!3761049 call!515161)))

(declare-fun bm!515156 () Bool)

(assert (=> bm!515156 (= call!515161 (derivationStepZipperDown!1362 (h!70965 (exprs!5998 lt!2337799)) (Context!10997 (t!378145 (exprs!5998 lt!2337799))) (h!70967 s!2326)))))

(declare-fun b!6174373 () Bool)

(declare-fun e!3761051 () Bool)

(assert (=> b!6174373 (= e!3761051 (nullable!6107 (h!70965 (exprs!5998 lt!2337799))))))

(declare-fun b!6174374 () Bool)

(assert (=> b!6174374 (= e!3761049 (as set.empty (Set Context!10996)))))

(declare-fun b!6174370 () Bool)

(assert (=> b!6174370 (= e!3761050 (set.union call!515161 (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 lt!2337799))) (h!70967 s!2326))))))

(declare-fun d!1935281 () Bool)

(declare-fun c!1112807 () Bool)

(assert (=> d!1935281 (= c!1112807 e!3761051)))

(declare-fun res!2555639 () Bool)

(assert (=> d!1935281 (=> (not res!2555639) (not e!3761051))))

(assert (=> d!1935281 (= res!2555639 (is-Cons!64517 (exprs!5998 lt!2337799)))))

(assert (=> d!1935281 (= (derivationStepZipperUp!1288 lt!2337799 (h!70967 s!2326)) e!3761050)))

(assert (= (and d!1935281 res!2555639) b!6174373))

(assert (= (and d!1935281 c!1112807) b!6174370))

(assert (= (and d!1935281 (not c!1112807)) b!6174371))

(assert (= (and b!6174371 c!1112808) b!6174372))

(assert (= (and b!6174371 (not c!1112808)) b!6174374))

(assert (= (or b!6174370 b!6174372) bm!515156))

(declare-fun m!7010732 () Bool)

(assert (=> bm!515156 m!7010732))

(declare-fun m!7010734 () Bool)

(assert (=> b!6174373 m!7010734))

(declare-fun m!7010736 () Bool)

(assert (=> b!6174370 m!7010736))

(assert (=> b!6174141 d!1935281))

(declare-fun d!1935283 () Bool)

(declare-fun choose!45886 ((Set Context!10996) Int) (Set Context!10996))

(assert (=> d!1935283 (= (flatMap!1619 z!1189 lambda!337028) (choose!45886 z!1189 lambda!337028))))

(declare-fun bs!1531086 () Bool)

(assert (= bs!1531086 d!1935283))

(declare-fun m!7010738 () Bool)

(assert (=> bs!1531086 m!7010738))

(assert (=> b!6174141 d!1935283))

(declare-fun bm!515169 () Bool)

(declare-fun call!515178 () List!64641)

(declare-fun call!515175 () List!64641)

(assert (=> bm!515169 (= call!515178 call!515175)))

(declare-fun b!6174397 () Bool)

(declare-fun e!3761065 () (Set Context!10996))

(assert (=> b!6174397 (= e!3761065 (set.insert lt!2337799 (as set.empty (Set Context!10996))))))

(declare-fun b!6174399 () Bool)

(declare-fun e!3761066 () Bool)

(assert (=> b!6174399 (= e!3761066 (nullable!6107 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343))))))))

(declare-fun b!6174400 () Bool)

(declare-fun e!3761068 () (Set Context!10996))

(declare-fun call!515179 () (Set Context!10996))

(assert (=> b!6174400 (= e!3761068 call!515179)))

(declare-fun b!6174401 () Bool)

(declare-fun e!3761064 () (Set Context!10996))

(declare-fun e!3761067 () (Set Context!10996))

(assert (=> b!6174401 (= e!3761064 e!3761067)))

(declare-fun c!1112822 () Bool)

(assert (=> b!6174401 (= c!1112822 (is-Concat!24959 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun bm!515170 () Bool)

(declare-fun c!1112819 () Bool)

(declare-fun $colon$colon!1989 (List!64641 Regex!16114) List!64641)

(assert (=> bm!515170 (= call!515175 ($colon$colon!1989 (exprs!5998 lt!2337799) (ite (or c!1112819 c!1112822) (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (h!70965 (exprs!5998 (h!70966 zl!343))))))))

(declare-fun b!6174402 () Bool)

(assert (=> b!6174402 (= e!3761067 call!515179)))

(declare-fun b!6174403 () Bool)

(declare-fun e!3761069 () (Set Context!10996))

(declare-fun call!515176 () (Set Context!10996))

(declare-fun call!515174 () (Set Context!10996))

(assert (=> b!6174403 (= e!3761069 (set.union call!515176 call!515174))))

(declare-fun b!6174404 () Bool)

(assert (=> b!6174404 (= e!3761065 e!3761069)))

(declare-fun c!1112823 () Bool)

(assert (=> b!6174404 (= c!1112823 (is-Union!16114 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6174405 () Bool)

(declare-fun call!515177 () (Set Context!10996))

(assert (=> b!6174405 (= e!3761064 (set.union call!515176 call!515177))))

(declare-fun bm!515171 () Bool)

(assert (=> bm!515171 (= call!515174 (derivationStepZipperDown!1362 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343))))))) (ite (or c!1112823 c!1112819) lt!2337799 (Context!10997 call!515178)) (h!70967 s!2326)))))

(declare-fun b!6174406 () Bool)

(declare-fun c!1112820 () Bool)

(assert (=> b!6174406 (= c!1112820 (is-Star!16114 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(assert (=> b!6174406 (= e!3761067 e!3761068)))

(declare-fun bm!515172 () Bool)

(assert (=> bm!515172 (= call!515177 call!515174)))

(declare-fun bm!515173 () Bool)

(assert (=> bm!515173 (= call!515179 call!515177)))

(declare-fun b!6174398 () Bool)

(assert (=> b!6174398 (= c!1112819 e!3761066)))

(declare-fun res!2555642 () Bool)

(assert (=> b!6174398 (=> (not res!2555642) (not e!3761066))))

(assert (=> b!6174398 (= res!2555642 (is-Concat!24959 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(assert (=> b!6174398 (= e!3761069 e!3761064)))

(declare-fun d!1935285 () Bool)

(declare-fun c!1112821 () Bool)

(assert (=> d!1935285 (= c!1112821 (and (is-ElementMatch!16114 (h!70965 (exprs!5998 (h!70966 zl!343)))) (= (c!1112765 (h!70965 (exprs!5998 (h!70966 zl!343)))) (h!70967 s!2326))))))

(assert (=> d!1935285 (= (derivationStepZipperDown!1362 (h!70965 (exprs!5998 (h!70966 zl!343))) lt!2337799 (h!70967 s!2326)) e!3761065)))

(declare-fun bm!515174 () Bool)

(assert (=> bm!515174 (= call!515176 (derivationStepZipperDown!1362 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343))))) (ite c!1112823 lt!2337799 (Context!10997 call!515175)) (h!70967 s!2326)))))

(declare-fun b!6174407 () Bool)

(assert (=> b!6174407 (= e!3761068 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935285 c!1112821) b!6174397))

(assert (= (and d!1935285 (not c!1112821)) b!6174404))

(assert (= (and b!6174404 c!1112823) b!6174403))

(assert (= (and b!6174404 (not c!1112823)) b!6174398))

(assert (= (and b!6174398 res!2555642) b!6174399))

(assert (= (and b!6174398 c!1112819) b!6174405))

(assert (= (and b!6174398 (not c!1112819)) b!6174401))

(assert (= (and b!6174401 c!1112822) b!6174402))

(assert (= (and b!6174401 (not c!1112822)) b!6174406))

(assert (= (and b!6174406 c!1112820) b!6174400))

(assert (= (and b!6174406 (not c!1112820)) b!6174407))

(assert (= (or b!6174402 b!6174400) bm!515169))

(assert (= (or b!6174402 b!6174400) bm!515173))

(assert (= (or b!6174405 bm!515169) bm!515170))

(assert (= (or b!6174405 bm!515173) bm!515172))

(assert (= (or b!6174403 bm!515172) bm!515171))

(assert (= (or b!6174403 b!6174405) bm!515174))

(declare-fun m!7010740 () Bool)

(assert (=> b!6174397 m!7010740))

(declare-fun m!7010742 () Bool)

(assert (=> b!6174399 m!7010742))

(declare-fun m!7010744 () Bool)

(assert (=> bm!515171 m!7010744))

(declare-fun m!7010746 () Bool)

(assert (=> bm!515170 m!7010746))

(declare-fun m!7010748 () Bool)

(assert (=> bm!515174 m!7010748))

(assert (=> b!6174141 d!1935285))

(declare-fun d!1935287 () Bool)

(declare-fun lambda!337055 () Int)

(declare-fun forall!15233 (List!64641 Int) Bool)

(assert (=> d!1935287 (= (inv!83533 setElem!41861) (forall!15233 (exprs!5998 setElem!41861) lambda!337055))))

(declare-fun bs!1531087 () Bool)

(assert (= bs!1531087 d!1935287))

(declare-fun m!7010750 () Bool)

(assert (=> bs!1531087 m!7010750))

(assert (=> setNonEmpty!41861 d!1935287))

(declare-fun d!1935289 () Bool)

(declare-fun c!1112824 () Bool)

(assert (=> d!1935289 (= c!1112824 (isEmpty!36498 (t!378147 s!2326)))))

(declare-fun e!3761070 () Bool)

(assert (=> d!1935289 (= (matchZipper!2126 lt!2337798 (t!378147 s!2326)) e!3761070)))

(declare-fun b!6174408 () Bool)

(assert (=> b!6174408 (= e!3761070 (nullableZipper!1893 lt!2337798))))

(declare-fun b!6174409 () Bool)

(assert (=> b!6174409 (= e!3761070 (matchZipper!2126 (derivationStepZipper!2085 lt!2337798 (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))))))

(assert (= (and d!1935289 c!1112824) b!6174408))

(assert (= (and d!1935289 (not c!1112824)) b!6174409))

(assert (=> d!1935289 m!7010688))

(declare-fun m!7010752 () Bool)

(assert (=> b!6174408 m!7010752))

(assert (=> b!6174409 m!7010692))

(assert (=> b!6174409 m!7010692))

(declare-fun m!7010754 () Bool)

(assert (=> b!6174409 m!7010754))

(assert (=> b!6174409 m!7010696))

(assert (=> b!6174409 m!7010754))

(assert (=> b!6174409 m!7010696))

(declare-fun m!7010756 () Bool)

(assert (=> b!6174409 m!7010756))

(assert (=> b!6174120 d!1935289))

(assert (=> b!6174137 d!1935289))

(declare-fun bs!1531088 () Bool)

(declare-fun d!1935291 () Bool)

(assert (= bs!1531088 (and d!1935291 d!1935287)))

(declare-fun lambda!337058 () Int)

(assert (=> bs!1531088 (= lambda!337058 lambda!337055)))

(declare-fun b!6174430 () Bool)

(declare-fun e!3761087 () Bool)

(assert (=> b!6174430 (= e!3761087 (isEmpty!36495 (t!378145 (unfocusZipperList!1535 zl!343))))))

(declare-fun b!6174431 () Bool)

(declare-fun e!3761085 () Bool)

(declare-fun lt!2337957 () Regex!16114)

(declare-fun isEmptyLang!1539 (Regex!16114) Bool)

(assert (=> b!6174431 (= e!3761085 (isEmptyLang!1539 lt!2337957))))

(declare-fun b!6174432 () Bool)

(declare-fun e!3761084 () Bool)

(declare-fun head!12746 (List!64641) Regex!16114)

(assert (=> b!6174432 (= e!3761084 (= lt!2337957 (head!12746 (unfocusZipperList!1535 zl!343))))))

(declare-fun b!6174433 () Bool)

(declare-fun e!3761086 () Bool)

(assert (=> b!6174433 (= e!3761086 e!3761085)))

(declare-fun c!1112834 () Bool)

(assert (=> b!6174433 (= c!1112834 (isEmpty!36495 (unfocusZipperList!1535 zl!343)))))

(declare-fun b!6174434 () Bool)

(declare-fun e!3761088 () Regex!16114)

(assert (=> b!6174434 (= e!3761088 (h!70965 (unfocusZipperList!1535 zl!343)))))

(declare-fun b!6174435 () Bool)

(declare-fun e!3761083 () Regex!16114)

(assert (=> b!6174435 (= e!3761088 e!3761083)))

(declare-fun c!1112835 () Bool)

(assert (=> b!6174435 (= c!1112835 (is-Cons!64517 (unfocusZipperList!1535 zl!343)))))

(declare-fun b!6174436 () Bool)

(assert (=> b!6174436 (= e!3761083 EmptyLang!16114)))

(declare-fun b!6174437 () Bool)

(assert (=> b!6174437 (= e!3761085 e!3761084)))

(declare-fun c!1112833 () Bool)

(declare-fun tail!11831 (List!64641) List!64641)

(assert (=> b!6174437 (= c!1112833 (isEmpty!36495 (tail!11831 (unfocusZipperList!1535 zl!343))))))

(assert (=> d!1935291 e!3761086))

(declare-fun res!2555647 () Bool)

(assert (=> d!1935291 (=> (not res!2555647) (not e!3761086))))

(assert (=> d!1935291 (= res!2555647 (validRegex!7850 lt!2337957))))

(assert (=> d!1935291 (= lt!2337957 e!3761088)))

(declare-fun c!1112836 () Bool)

(assert (=> d!1935291 (= c!1112836 e!3761087)))

(declare-fun res!2555648 () Bool)

(assert (=> d!1935291 (=> (not res!2555648) (not e!3761087))))

(assert (=> d!1935291 (= res!2555648 (is-Cons!64517 (unfocusZipperList!1535 zl!343)))))

(assert (=> d!1935291 (forall!15233 (unfocusZipperList!1535 zl!343) lambda!337058)))

(assert (=> d!1935291 (= (generalisedUnion!1958 (unfocusZipperList!1535 zl!343)) lt!2337957)))

(declare-fun b!6174438 () Bool)

(assert (=> b!6174438 (= e!3761083 (Union!16114 (h!70965 (unfocusZipperList!1535 zl!343)) (generalisedUnion!1958 (t!378145 (unfocusZipperList!1535 zl!343)))))))

(declare-fun b!6174439 () Bool)

(declare-fun isUnion!969 (Regex!16114) Bool)

(assert (=> b!6174439 (= e!3761084 (isUnion!969 lt!2337957))))

(assert (= (and d!1935291 res!2555648) b!6174430))

(assert (= (and d!1935291 c!1112836) b!6174434))

(assert (= (and d!1935291 (not c!1112836)) b!6174435))

(assert (= (and b!6174435 c!1112835) b!6174438))

(assert (= (and b!6174435 (not c!1112835)) b!6174436))

(assert (= (and d!1935291 res!2555647) b!6174433))

(assert (= (and b!6174433 c!1112834) b!6174431))

(assert (= (and b!6174433 (not c!1112834)) b!6174437))

(assert (= (and b!6174437 c!1112833) b!6174432))

(assert (= (and b!6174437 (not c!1112833)) b!6174439))

(declare-fun m!7010758 () Bool)

(assert (=> b!6174430 m!7010758))

(declare-fun m!7010760 () Bool)

(assert (=> b!6174438 m!7010760))

(declare-fun m!7010762 () Bool)

(assert (=> d!1935291 m!7010762))

(assert (=> d!1935291 m!7010490))

(declare-fun m!7010764 () Bool)

(assert (=> d!1935291 m!7010764))

(assert (=> b!6174432 m!7010490))

(declare-fun m!7010766 () Bool)

(assert (=> b!6174432 m!7010766))

(declare-fun m!7010768 () Bool)

(assert (=> b!6174439 m!7010768))

(assert (=> b!6174433 m!7010490))

(declare-fun m!7010770 () Bool)

(assert (=> b!6174433 m!7010770))

(declare-fun m!7010772 () Bool)

(assert (=> b!6174431 m!7010772))

(assert (=> b!6174437 m!7010490))

(declare-fun m!7010774 () Bool)

(assert (=> b!6174437 m!7010774))

(assert (=> b!6174437 m!7010774))

(declare-fun m!7010776 () Bool)

(assert (=> b!6174437 m!7010776))

(assert (=> b!6174117 d!1935291))

(declare-fun bs!1531089 () Bool)

(declare-fun d!1935293 () Bool)

(assert (= bs!1531089 (and d!1935293 d!1935287)))

(declare-fun lambda!337061 () Int)

(assert (=> bs!1531089 (= lambda!337061 lambda!337055)))

(declare-fun bs!1531090 () Bool)

(assert (= bs!1531090 (and d!1935293 d!1935291)))

(assert (=> bs!1531090 (= lambda!337061 lambda!337058)))

(declare-fun lt!2337960 () List!64641)

(assert (=> d!1935293 (forall!15233 lt!2337960 lambda!337061)))

(declare-fun e!3761091 () List!64641)

(assert (=> d!1935293 (= lt!2337960 e!3761091)))

(declare-fun c!1112839 () Bool)

(assert (=> d!1935293 (= c!1112839 (is-Cons!64518 zl!343))))

(assert (=> d!1935293 (= (unfocusZipperList!1535 zl!343) lt!2337960)))

(declare-fun b!6174444 () Bool)

(assert (=> b!6174444 (= e!3761091 (Cons!64517 (generalisedConcat!1711 (exprs!5998 (h!70966 zl!343))) (unfocusZipperList!1535 (t!378146 zl!343))))))

(declare-fun b!6174445 () Bool)

(assert (=> b!6174445 (= e!3761091 Nil!64517)))

(assert (= (and d!1935293 c!1112839) b!6174444))

(assert (= (and d!1935293 (not c!1112839)) b!6174445))

(declare-fun m!7010778 () Bool)

(assert (=> d!1935293 m!7010778))

(assert (=> b!6174444 m!7010504))

(declare-fun m!7010780 () Bool)

(assert (=> b!6174444 m!7010780))

(assert (=> b!6174117 d!1935293))

(declare-fun b!6174464 () Bool)

(declare-fun res!2555660 () Bool)

(declare-fun e!3761110 () Bool)

(assert (=> b!6174464 (=> res!2555660 e!3761110)))

(assert (=> b!6174464 (= res!2555660 (not (is-Concat!24959 r!7292)))))

(declare-fun e!3761111 () Bool)

(assert (=> b!6174464 (= e!3761111 e!3761110)))

(declare-fun c!1112844 () Bool)

(declare-fun c!1112845 () Bool)

(declare-fun call!515188 () Bool)

(declare-fun bm!515181 () Bool)

(assert (=> bm!515181 (= call!515188 (validRegex!7850 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292)))))))

(declare-fun b!6174465 () Bool)

(declare-fun e!3761112 () Bool)

(declare-fun e!3761106 () Bool)

(assert (=> b!6174465 (= e!3761112 e!3761106)))

(assert (=> b!6174465 (= c!1112844 (is-Star!16114 r!7292))))

(declare-fun b!6174466 () Bool)

(declare-fun e!3761107 () Bool)

(assert (=> b!6174466 (= e!3761110 e!3761107)))

(declare-fun res!2555663 () Bool)

(assert (=> b!6174466 (=> (not res!2555663) (not e!3761107))))

(declare-fun call!515187 () Bool)

(assert (=> b!6174466 (= res!2555663 call!515187)))

(declare-fun bm!515182 () Bool)

(declare-fun call!515186 () Bool)

(assert (=> bm!515182 (= call!515186 (validRegex!7850 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292))))))

(declare-fun b!6174467 () Bool)

(assert (=> b!6174467 (= e!3761106 e!3761111)))

(assert (=> b!6174467 (= c!1112845 (is-Union!16114 r!7292))))

(declare-fun b!6174468 () Bool)

(declare-fun res!2555661 () Bool)

(declare-fun e!3761108 () Bool)

(assert (=> b!6174468 (=> (not res!2555661) (not e!3761108))))

(assert (=> b!6174468 (= res!2555661 call!515187)))

(assert (=> b!6174468 (= e!3761111 e!3761108)))

(declare-fun b!6174469 () Bool)

(assert (=> b!6174469 (= e!3761108 call!515186)))

(declare-fun b!6174470 () Bool)

(assert (=> b!6174470 (= e!3761107 call!515186)))

(declare-fun d!1935295 () Bool)

(declare-fun res!2555662 () Bool)

(assert (=> d!1935295 (=> res!2555662 e!3761112)))

(assert (=> d!1935295 (= res!2555662 (is-ElementMatch!16114 r!7292))))

(assert (=> d!1935295 (= (validRegex!7850 r!7292) e!3761112)))

(declare-fun b!6174471 () Bool)

(declare-fun e!3761109 () Bool)

(assert (=> b!6174471 (= e!3761106 e!3761109)))

(declare-fun res!2555659 () Bool)

(assert (=> b!6174471 (= res!2555659 (not (nullable!6107 (reg!16443 r!7292))))))

(assert (=> b!6174471 (=> (not res!2555659) (not e!3761109))))

(declare-fun bm!515183 () Bool)

(assert (=> bm!515183 (= call!515187 call!515188)))

(declare-fun b!6174472 () Bool)

(assert (=> b!6174472 (= e!3761109 call!515188)))

(assert (= (and d!1935295 (not res!2555662)) b!6174465))

(assert (= (and b!6174465 c!1112844) b!6174471))

(assert (= (and b!6174465 (not c!1112844)) b!6174467))

(assert (= (and b!6174471 res!2555659) b!6174472))

(assert (= (and b!6174467 c!1112845) b!6174468))

(assert (= (and b!6174467 (not c!1112845)) b!6174464))

(assert (= (and b!6174468 res!2555661) b!6174469))

(assert (= (and b!6174464 (not res!2555660)) b!6174466))

(assert (= (and b!6174466 res!2555663) b!6174470))

(assert (= (or b!6174469 b!6174470) bm!515182))

(assert (= (or b!6174468 b!6174466) bm!515183))

(assert (= (or b!6174472 bm!515183) bm!515181))

(declare-fun m!7010782 () Bool)

(assert (=> bm!515181 m!7010782))

(declare-fun m!7010784 () Bool)

(assert (=> bm!515182 m!7010784))

(declare-fun m!7010786 () Bool)

(assert (=> b!6174471 m!7010786))

(assert (=> start!616308 d!1935295))

(declare-fun d!1935297 () Bool)

(declare-fun lt!2337963 () Regex!16114)

(assert (=> d!1935297 (validRegex!7850 lt!2337963)))

(assert (=> d!1935297 (= lt!2337963 (generalisedUnion!1958 (unfocusZipperList!1535 zl!343)))))

(assert (=> d!1935297 (= (unfocusZipper!1856 zl!343) lt!2337963)))

(declare-fun bs!1531091 () Bool)

(assert (= bs!1531091 d!1935297))

(declare-fun m!7010788 () Bool)

(assert (=> bs!1531091 m!7010788))

(assert (=> bs!1531091 m!7010490))

(assert (=> bs!1531091 m!7010490))

(assert (=> bs!1531091 m!7010492))

(assert (=> b!6174115 d!1935297))

(declare-fun d!1935299 () Bool)

(declare-fun e!3761115 () Bool)

(assert (=> d!1935299 e!3761115))

(declare-fun res!2555666 () Bool)

(assert (=> d!1935299 (=> (not res!2555666) (not e!3761115))))

(declare-fun lt!2337966 () List!64642)

(declare-fun noDuplicate!1958 (List!64642) Bool)

(assert (=> d!1935299 (= res!2555666 (noDuplicate!1958 lt!2337966))))

(declare-fun choose!45887 ((Set Context!10996)) List!64642)

(assert (=> d!1935299 (= lt!2337966 (choose!45887 z!1189))))

(assert (=> d!1935299 (= (toList!9898 z!1189) lt!2337966)))

(declare-fun b!6174475 () Bool)

(declare-fun content!12043 (List!64642) (Set Context!10996))

(assert (=> b!6174475 (= e!3761115 (= (content!12043 lt!2337966) z!1189))))

(assert (= (and d!1935299 res!2555666) b!6174475))

(declare-fun m!7010790 () Bool)

(assert (=> d!1935299 m!7010790))

(declare-fun m!7010792 () Bool)

(assert (=> d!1935299 m!7010792))

(declare-fun m!7010794 () Bool)

(assert (=> b!6174475 m!7010794))

(assert (=> b!6174136 d!1935299))

(declare-fun bs!1531092 () Bool)

(declare-fun d!1935301 () Bool)

(assert (= bs!1531092 (and d!1935301 d!1935287)))

(declare-fun lambda!337062 () Int)

(assert (=> bs!1531092 (= lambda!337062 lambda!337055)))

(declare-fun bs!1531093 () Bool)

(assert (= bs!1531093 (and d!1935301 d!1935291)))

(assert (=> bs!1531093 (= lambda!337062 lambda!337058)))

(declare-fun bs!1531094 () Bool)

(assert (= bs!1531094 (and d!1935301 d!1935293)))

(assert (=> bs!1531094 (= lambda!337062 lambda!337061)))

(assert (=> d!1935301 (= (inv!83533 (h!70966 zl!343)) (forall!15233 (exprs!5998 (h!70966 zl!343)) lambda!337062))))

(declare-fun bs!1531095 () Bool)

(assert (= bs!1531095 d!1935301))

(declare-fun m!7010796 () Bool)

(assert (=> bs!1531095 m!7010796))

(assert (=> b!6174132 d!1935301))

(declare-fun d!1935303 () Bool)

(declare-fun lt!2337967 () Int)

(assert (=> d!1935303 (>= lt!2337967 0)))

(declare-fun e!3761116 () Int)

(assert (=> d!1935303 (= lt!2337967 e!3761116)))

(declare-fun c!1112846 () Bool)

(assert (=> d!1935303 (= c!1112846 (is-Cons!64518 (Cons!64518 lt!2337815 Nil!64518)))))

(assert (=> d!1935303 (= (zipperDepthTotal!297 (Cons!64518 lt!2337815 Nil!64518)) lt!2337967)))

(declare-fun b!6174476 () Bool)

(assert (=> b!6174476 (= e!3761116 (+ (contextDepthTotal!271 (h!70966 (Cons!64518 lt!2337815 Nil!64518))) (zipperDepthTotal!297 (t!378146 (Cons!64518 lt!2337815 Nil!64518)))))))

(declare-fun b!6174477 () Bool)

(assert (=> b!6174477 (= e!3761116 0)))

(assert (= (and d!1935303 c!1112846) b!6174476))

(assert (= (and d!1935303 (not c!1112846)) b!6174477))

(declare-fun m!7010798 () Bool)

(assert (=> b!6174476 m!7010798))

(declare-fun m!7010800 () Bool)

(assert (=> b!6174476 m!7010800))

(assert (=> b!6174131 d!1935303))

(declare-fun d!1935305 () Bool)

(assert (=> d!1935305 (= (nullable!6107 (regTwo!32741 (regOne!32740 r!7292))) (nullableFct!2069 (regTwo!32741 (regOne!32740 r!7292))))))

(declare-fun bs!1531096 () Bool)

(assert (= bs!1531096 d!1935305))

(declare-fun m!7010802 () Bool)

(assert (=> bs!1531096 m!7010802))

(assert (=> b!6174112 d!1935305))

(declare-fun d!1935307 () Bool)

(assert (=> d!1935307 (= (flatMap!1619 lt!2337800 lambda!337028) (choose!45886 lt!2337800 lambda!337028))))

(declare-fun bs!1531097 () Bool)

(assert (= bs!1531097 d!1935307))

(declare-fun m!7010804 () Bool)

(assert (=> bs!1531097 m!7010804))

(assert (=> b!6174112 d!1935307))

(declare-fun d!1935309 () Bool)

(assert (=> d!1935309 (= (flatMap!1619 lt!2337794 lambda!337028) (choose!45886 lt!2337794 lambda!337028))))

(declare-fun bs!1531098 () Bool)

(assert (= bs!1531098 d!1935309))

(declare-fun m!7010806 () Bool)

(assert (=> bs!1531098 m!7010806))

(assert (=> b!6174112 d!1935309))

(declare-fun d!1935311 () Bool)

(assert (=> d!1935311 (= (flatMap!1619 lt!2337800 lambda!337028) (dynLambda!25442 lambda!337028 lt!2337792))))

(declare-fun lt!2337968 () Unit!157691)

(assert (=> d!1935311 (= lt!2337968 (choose!45885 lt!2337800 lt!2337792 lambda!337028))))

(assert (=> d!1935311 (= lt!2337800 (set.insert lt!2337792 (as set.empty (Set Context!10996))))))

(assert (=> d!1935311 (= (lemmaFlatMapOnSingletonSet!1145 lt!2337800 lt!2337792 lambda!337028) lt!2337968)))

(declare-fun b_lambda!234999 () Bool)

(assert (=> (not b_lambda!234999) (not d!1935311)))

(declare-fun bs!1531099 () Bool)

(assert (= bs!1531099 d!1935311))

(assert (=> bs!1531099 m!7010458))

(declare-fun m!7010808 () Bool)

(assert (=> bs!1531099 m!7010808))

(declare-fun m!7010810 () Bool)

(assert (=> bs!1531099 m!7010810))

(assert (=> bs!1531099 m!7010464))

(assert (=> b!6174112 d!1935311))

(declare-fun b!6174479 () Bool)

(declare-fun e!3761118 () (Set Context!10996))

(declare-fun e!3761117 () (Set Context!10996))

(assert (=> b!6174479 (= e!3761118 e!3761117)))

(declare-fun c!1112848 () Bool)

(assert (=> b!6174479 (= c!1112848 (is-Cons!64517 (exprs!5998 lt!2337792)))))

(declare-fun b!6174480 () Bool)

(declare-fun call!515189 () (Set Context!10996))

(assert (=> b!6174480 (= e!3761117 call!515189)))

(declare-fun bm!515184 () Bool)

(assert (=> bm!515184 (= call!515189 (derivationStepZipperDown!1362 (h!70965 (exprs!5998 lt!2337792)) (Context!10997 (t!378145 (exprs!5998 lt!2337792))) (h!70967 s!2326)))))

(declare-fun b!6174481 () Bool)

(declare-fun e!3761119 () Bool)

(assert (=> b!6174481 (= e!3761119 (nullable!6107 (h!70965 (exprs!5998 lt!2337792))))))

(declare-fun b!6174482 () Bool)

(assert (=> b!6174482 (= e!3761117 (as set.empty (Set Context!10996)))))

(declare-fun b!6174478 () Bool)

(assert (=> b!6174478 (= e!3761118 (set.union call!515189 (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 lt!2337792))) (h!70967 s!2326))))))

(declare-fun d!1935313 () Bool)

(declare-fun c!1112847 () Bool)

(assert (=> d!1935313 (= c!1112847 e!3761119)))

(declare-fun res!2555667 () Bool)

(assert (=> d!1935313 (=> (not res!2555667) (not e!3761119))))

(assert (=> d!1935313 (= res!2555667 (is-Cons!64517 (exprs!5998 lt!2337792)))))

(assert (=> d!1935313 (= (derivationStepZipperUp!1288 lt!2337792 (h!70967 s!2326)) e!3761118)))

(assert (= (and d!1935313 res!2555667) b!6174481))

(assert (= (and d!1935313 c!1112847) b!6174478))

(assert (= (and d!1935313 (not c!1112847)) b!6174479))

(assert (= (and b!6174479 c!1112848) b!6174480))

(assert (= (and b!6174479 (not c!1112848)) b!6174482))

(assert (= (or b!6174478 b!6174480) bm!515184))

(declare-fun m!7010812 () Bool)

(assert (=> bm!515184 m!7010812))

(declare-fun m!7010814 () Bool)

(assert (=> b!6174481 m!7010814))

(declare-fun m!7010816 () Bool)

(assert (=> b!6174478 m!7010816))

(assert (=> b!6174112 d!1935313))

(declare-fun d!1935315 () Bool)

(assert (=> d!1935315 (= (nullable!6107 (regOne!32741 (regOne!32740 r!7292))) (nullableFct!2069 (regOne!32741 (regOne!32740 r!7292))))))

(declare-fun bs!1531100 () Bool)

(assert (= bs!1531100 d!1935315))

(declare-fun m!7010818 () Bool)

(assert (=> bs!1531100 m!7010818))

(assert (=> b!6174112 d!1935315))

(declare-fun b!6174484 () Bool)

(declare-fun e!3761121 () (Set Context!10996))

(declare-fun e!3761120 () (Set Context!10996))

(assert (=> b!6174484 (= e!3761121 e!3761120)))

(declare-fun c!1112850 () Bool)

(assert (=> b!6174484 (= c!1112850 (is-Cons!64517 (exprs!5998 lt!2337815)))))

(declare-fun b!6174485 () Bool)

(declare-fun call!515190 () (Set Context!10996))

(assert (=> b!6174485 (= e!3761120 call!515190)))

(declare-fun bm!515185 () Bool)

(assert (=> bm!515185 (= call!515190 (derivationStepZipperDown!1362 (h!70965 (exprs!5998 lt!2337815)) (Context!10997 (t!378145 (exprs!5998 lt!2337815))) (h!70967 s!2326)))))

(declare-fun b!6174486 () Bool)

(declare-fun e!3761122 () Bool)

(assert (=> b!6174486 (= e!3761122 (nullable!6107 (h!70965 (exprs!5998 lt!2337815))))))

(declare-fun b!6174487 () Bool)

(assert (=> b!6174487 (= e!3761120 (as set.empty (Set Context!10996)))))

(declare-fun b!6174483 () Bool)

(assert (=> b!6174483 (= e!3761121 (set.union call!515190 (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 lt!2337815))) (h!70967 s!2326))))))

(declare-fun d!1935317 () Bool)

(declare-fun c!1112849 () Bool)

(assert (=> d!1935317 (= c!1112849 e!3761122)))

(declare-fun res!2555668 () Bool)

(assert (=> d!1935317 (=> (not res!2555668) (not e!3761122))))

(assert (=> d!1935317 (= res!2555668 (is-Cons!64517 (exprs!5998 lt!2337815)))))

(assert (=> d!1935317 (= (derivationStepZipperUp!1288 lt!2337815 (h!70967 s!2326)) e!3761121)))

(assert (= (and d!1935317 res!2555668) b!6174486))

(assert (= (and d!1935317 c!1112849) b!6174483))

(assert (= (and d!1935317 (not c!1112849)) b!6174484))

(assert (= (and b!6174484 c!1112850) b!6174485))

(assert (= (and b!6174484 (not c!1112850)) b!6174487))

(assert (= (or b!6174483 b!6174485) bm!515185))

(declare-fun m!7010820 () Bool)

(assert (=> bm!515185 m!7010820))

(declare-fun m!7010822 () Bool)

(assert (=> b!6174486 m!7010822))

(declare-fun m!7010824 () Bool)

(assert (=> b!6174483 m!7010824))

(assert (=> b!6174112 d!1935317))

(declare-fun d!1935319 () Bool)

(declare-fun c!1112851 () Bool)

(assert (=> d!1935319 (= c!1112851 (isEmpty!36498 s!2326))))

(declare-fun e!3761123 () Bool)

(assert (=> d!1935319 (= (matchZipper!2126 z!1189 s!2326) e!3761123)))

(declare-fun b!6174488 () Bool)

(assert (=> b!6174488 (= e!3761123 (nullableZipper!1893 z!1189))))

(declare-fun b!6174489 () Bool)

(assert (=> b!6174489 (= e!3761123 (matchZipper!2126 (derivationStepZipper!2085 z!1189 (head!12745 s!2326)) (tail!11830 s!2326)))))

(assert (= (and d!1935319 c!1112851) b!6174488))

(assert (= (and d!1935319 (not c!1112851)) b!6174489))

(assert (=> d!1935319 m!7010626))

(declare-fun m!7010826 () Bool)

(assert (=> b!6174488 m!7010826))

(assert (=> b!6174489 m!7010630))

(assert (=> b!6174489 m!7010630))

(declare-fun m!7010828 () Bool)

(assert (=> b!6174489 m!7010828))

(assert (=> b!6174489 m!7010634))

(assert (=> b!6174489 m!7010828))

(assert (=> b!6174489 m!7010634))

(declare-fun m!7010830 () Bool)

(assert (=> b!6174489 m!7010830))

(assert (=> b!6174112 d!1935319))

(declare-fun d!1935321 () Bool)

(assert (=> d!1935321 (= (flatMap!1619 lt!2337794 lambda!337028) (dynLambda!25442 lambda!337028 lt!2337815))))

(declare-fun lt!2337969 () Unit!157691)

(assert (=> d!1935321 (= lt!2337969 (choose!45885 lt!2337794 lt!2337815 lambda!337028))))

(assert (=> d!1935321 (= lt!2337794 (set.insert lt!2337815 (as set.empty (Set Context!10996))))))

(assert (=> d!1935321 (= (lemmaFlatMapOnSingletonSet!1145 lt!2337794 lt!2337815 lambda!337028) lt!2337969)))

(declare-fun b_lambda!235001 () Bool)

(assert (=> (not b_lambda!235001) (not d!1935321)))

(declare-fun bs!1531101 () Bool)

(assert (= bs!1531101 d!1935321))

(assert (=> bs!1531101 m!7010462))

(declare-fun m!7010832 () Bool)

(assert (=> bs!1531101 m!7010832))

(declare-fun m!7010834 () Bool)

(assert (=> bs!1531101 m!7010834))

(assert (=> bs!1531101 m!7010456))

(assert (=> b!6174112 d!1935321))

(declare-fun d!1935323 () Bool)

(declare-fun c!1112852 () Bool)

(assert (=> d!1935323 (= c!1112852 (isEmpty!36498 s!2326))))

(declare-fun e!3761124 () Bool)

(assert (=> d!1935323 (= (matchZipper!2126 lt!2337800 s!2326) e!3761124)))

(declare-fun b!6174490 () Bool)

(assert (=> b!6174490 (= e!3761124 (nullableZipper!1893 lt!2337800))))

(declare-fun b!6174491 () Bool)

(assert (=> b!6174491 (= e!3761124 (matchZipper!2126 (derivationStepZipper!2085 lt!2337800 (head!12745 s!2326)) (tail!11830 s!2326)))))

(assert (= (and d!1935323 c!1112852) b!6174490))

(assert (= (and d!1935323 (not c!1112852)) b!6174491))

(assert (=> d!1935323 m!7010626))

(declare-fun m!7010836 () Bool)

(assert (=> b!6174490 m!7010836))

(assert (=> b!6174491 m!7010630))

(assert (=> b!6174491 m!7010630))

(declare-fun m!7010838 () Bool)

(assert (=> b!6174491 m!7010838))

(assert (=> b!6174491 m!7010634))

(assert (=> b!6174491 m!7010838))

(assert (=> b!6174491 m!7010634))

(declare-fun m!7010840 () Bool)

(assert (=> b!6174491 m!7010840))

(assert (=> b!6174112 d!1935323))

(declare-fun bs!1531102 () Bool)

(declare-fun b!6174531 () Bool)

(assert (= bs!1531102 (and b!6174531 b!6174146)))

(declare-fun lambda!337067 () Int)

(assert (=> bs!1531102 (not (= lambda!337067 lambda!337026))))

(assert (=> bs!1531102 (not (= lambda!337067 lambda!337027))))

(declare-fun bs!1531103 () Bool)

(assert (= bs!1531103 (and b!6174531 d!1935249)))

(assert (=> bs!1531103 (not (= lambda!337067 lambda!337046))))

(declare-fun bs!1531104 () Bool)

(assert (= bs!1531104 (and b!6174531 d!1935251)))

(assert (=> bs!1531104 (not (= lambda!337067 lambda!337051))))

(assert (=> bs!1531104 (not (= lambda!337067 lambda!337052))))

(assert (=> b!6174531 true))

(assert (=> b!6174531 true))

(declare-fun bs!1531105 () Bool)

(declare-fun b!6174526 () Bool)

(assert (= bs!1531105 (and b!6174526 b!6174146)))

(declare-fun lambda!337068 () Int)

(assert (=> bs!1531105 (not (= lambda!337068 lambda!337026))))

(assert (=> bs!1531105 (= lambda!337068 lambda!337027)))

(declare-fun bs!1531106 () Bool)

(assert (= bs!1531106 (and b!6174526 d!1935249)))

(assert (=> bs!1531106 (not (= lambda!337068 lambda!337046))))

(declare-fun bs!1531107 () Bool)

(assert (= bs!1531107 (and b!6174526 d!1935251)))

(assert (=> bs!1531107 (not (= lambda!337068 lambda!337051))))

(assert (=> bs!1531107 (= lambda!337068 lambda!337052)))

(declare-fun bs!1531108 () Bool)

(assert (= bs!1531108 (and b!6174526 b!6174531)))

(assert (=> bs!1531108 (not (= lambda!337068 lambda!337067))))

(assert (=> b!6174526 true))

(assert (=> b!6174526 true))

(declare-fun b!6174524 () Bool)

(declare-fun e!3761146 () Bool)

(assert (=> b!6174524 (= e!3761146 (= s!2326 (Cons!64519 (c!1112765 r!7292) Nil!64519)))))

(declare-fun b!6174525 () Bool)

(declare-fun res!2555686 () Bool)

(declare-fun e!3761148 () Bool)

(assert (=> b!6174525 (=> res!2555686 e!3761148)))

(declare-fun call!515195 () Bool)

(assert (=> b!6174525 (= res!2555686 call!515195)))

(declare-fun e!3761144 () Bool)

(assert (=> b!6174525 (= e!3761144 e!3761148)))

(declare-fun call!515196 () Bool)

(assert (=> b!6174526 (= e!3761144 call!515196)))

(declare-fun b!6174527 () Bool)

(declare-fun c!1112863 () Bool)

(assert (=> b!6174527 (= c!1112863 (is-Union!16114 r!7292))))

(declare-fun e!3761147 () Bool)

(assert (=> b!6174527 (= e!3761146 e!3761147)))

(declare-fun c!1112861 () Bool)

(declare-fun bm!515190 () Bool)

(assert (=> bm!515190 (= call!515196 (Exists!3184 (ite c!1112861 lambda!337067 lambda!337068)))))

(declare-fun b!6174528 () Bool)

(declare-fun c!1112862 () Bool)

(assert (=> b!6174528 (= c!1112862 (is-ElementMatch!16114 r!7292))))

(declare-fun e!3761143 () Bool)

(assert (=> b!6174528 (= e!3761143 e!3761146)))

(declare-fun bm!515191 () Bool)

(assert (=> bm!515191 (= call!515195 (isEmpty!36498 s!2326))))

(declare-fun b!6174529 () Bool)

(declare-fun e!3761145 () Bool)

(assert (=> b!6174529 (= e!3761145 call!515195)))

(declare-fun b!6174530 () Bool)

(assert (=> b!6174530 (= e!3761147 e!3761144)))

(assert (=> b!6174530 (= c!1112861 (is-Star!16114 r!7292))))

(declare-fun d!1935325 () Bool)

(declare-fun c!1112864 () Bool)

(assert (=> d!1935325 (= c!1112864 (is-EmptyExpr!16114 r!7292))))

(assert (=> d!1935325 (= (matchRSpec!3215 r!7292 s!2326) e!3761145)))

(assert (=> b!6174531 (= e!3761148 call!515196)))

(declare-fun b!6174532 () Bool)

(declare-fun e!3761149 () Bool)

(assert (=> b!6174532 (= e!3761149 (matchRSpec!3215 (regTwo!32741 r!7292) s!2326))))

(declare-fun b!6174533 () Bool)

(assert (=> b!6174533 (= e!3761145 e!3761143)))

(declare-fun res!2555685 () Bool)

(assert (=> b!6174533 (= res!2555685 (not (is-EmptyLang!16114 r!7292)))))

(assert (=> b!6174533 (=> (not res!2555685) (not e!3761143))))

(declare-fun b!6174534 () Bool)

(assert (=> b!6174534 (= e!3761147 e!3761149)))

(declare-fun res!2555687 () Bool)

(assert (=> b!6174534 (= res!2555687 (matchRSpec!3215 (regOne!32741 r!7292) s!2326))))

(assert (=> b!6174534 (=> res!2555687 e!3761149)))

(assert (= (and d!1935325 c!1112864) b!6174529))

(assert (= (and d!1935325 (not c!1112864)) b!6174533))

(assert (= (and b!6174533 res!2555685) b!6174528))

(assert (= (and b!6174528 c!1112862) b!6174524))

(assert (= (and b!6174528 (not c!1112862)) b!6174527))

(assert (= (and b!6174527 c!1112863) b!6174534))

(assert (= (and b!6174527 (not c!1112863)) b!6174530))

(assert (= (and b!6174534 (not res!2555687)) b!6174532))

(assert (= (and b!6174530 c!1112861) b!6174525))

(assert (= (and b!6174530 (not c!1112861)) b!6174526))

(assert (= (and b!6174525 (not res!2555686)) b!6174531))

(assert (= (or b!6174531 b!6174526) bm!515190))

(assert (= (or b!6174529 b!6174525) bm!515191))

(declare-fun m!7010842 () Bool)

(assert (=> bm!515190 m!7010842))

(assert (=> bm!515191 m!7010626))

(declare-fun m!7010844 () Bool)

(assert (=> b!6174532 m!7010844))

(declare-fun m!7010846 () Bool)

(assert (=> b!6174534 m!7010846))

(assert (=> b!6174133 d!1935325))

(declare-fun b!6174563 () Bool)

(declare-fun e!3761168 () Bool)

(declare-fun lt!2337972 () Bool)

(assert (=> b!6174563 (= e!3761168 (not lt!2337972))))

(declare-fun b!6174564 () Bool)

(declare-fun e!3761164 () Bool)

(assert (=> b!6174564 (= e!3761164 (= (head!12745 s!2326) (c!1112765 r!7292)))))

(declare-fun b!6174565 () Bool)

(declare-fun res!2555711 () Bool)

(assert (=> b!6174565 (=> (not res!2555711) (not e!3761164))))

(assert (=> b!6174565 (= res!2555711 (isEmpty!36498 (tail!11830 s!2326)))))

(declare-fun b!6174566 () Bool)

(declare-fun e!3761169 () Bool)

(declare-fun derivativeStep!4831 (Regex!16114 C!32498) Regex!16114)

(assert (=> b!6174566 (= e!3761169 (matchR!8297 (derivativeStep!4831 r!7292 (head!12745 s!2326)) (tail!11830 s!2326)))))

(declare-fun b!6174567 () Bool)

(declare-fun e!3761170 () Bool)

(declare-fun e!3761165 () Bool)

(assert (=> b!6174567 (= e!3761170 e!3761165)))

(declare-fun res!2555707 () Bool)

(assert (=> b!6174567 (=> (not res!2555707) (not e!3761165))))

(assert (=> b!6174567 (= res!2555707 (not lt!2337972))))

(declare-fun b!6174568 () Bool)

(declare-fun res!2555704 () Bool)

(assert (=> b!6174568 (=> (not res!2555704) (not e!3761164))))

(declare-fun call!515199 () Bool)

(assert (=> b!6174568 (= res!2555704 (not call!515199))))

(declare-fun b!6174569 () Bool)

(declare-fun res!2555706 () Bool)

(assert (=> b!6174569 (=> res!2555706 e!3761170)))

(assert (=> b!6174569 (= res!2555706 e!3761164)))

(declare-fun res!2555710 () Bool)

(assert (=> b!6174569 (=> (not res!2555710) (not e!3761164))))

(assert (=> b!6174569 (= res!2555710 lt!2337972)))

(declare-fun d!1935327 () Bool)

(declare-fun e!3761167 () Bool)

(assert (=> d!1935327 e!3761167))

(declare-fun c!1112871 () Bool)

(assert (=> d!1935327 (= c!1112871 (is-EmptyExpr!16114 r!7292))))

(assert (=> d!1935327 (= lt!2337972 e!3761169)))

(declare-fun c!1112872 () Bool)

(assert (=> d!1935327 (= c!1112872 (isEmpty!36498 s!2326))))

(assert (=> d!1935327 (validRegex!7850 r!7292)))

(assert (=> d!1935327 (= (matchR!8297 r!7292 s!2326) lt!2337972)))

(declare-fun bm!515194 () Bool)

(assert (=> bm!515194 (= call!515199 (isEmpty!36498 s!2326))))

(declare-fun b!6174570 () Bool)

(declare-fun res!2555708 () Bool)

(assert (=> b!6174570 (=> res!2555708 e!3761170)))

(assert (=> b!6174570 (= res!2555708 (not (is-ElementMatch!16114 r!7292)))))

(assert (=> b!6174570 (= e!3761168 e!3761170)))

(declare-fun b!6174571 () Bool)

(assert (=> b!6174571 (= e!3761167 e!3761168)))

(declare-fun c!1112873 () Bool)

(assert (=> b!6174571 (= c!1112873 (is-EmptyLang!16114 r!7292))))

(declare-fun b!6174572 () Bool)

(assert (=> b!6174572 (= e!3761169 (nullable!6107 r!7292))))

(declare-fun b!6174573 () Bool)

(declare-fun e!3761166 () Bool)

(assert (=> b!6174573 (= e!3761165 e!3761166)))

(declare-fun res!2555709 () Bool)

(assert (=> b!6174573 (=> res!2555709 e!3761166)))

(assert (=> b!6174573 (= res!2555709 call!515199)))

(declare-fun b!6174574 () Bool)

(assert (=> b!6174574 (= e!3761166 (not (= (head!12745 s!2326) (c!1112765 r!7292))))))

(declare-fun b!6174575 () Bool)

(assert (=> b!6174575 (= e!3761167 (= lt!2337972 call!515199))))

(declare-fun b!6174576 () Bool)

(declare-fun res!2555705 () Bool)

(assert (=> b!6174576 (=> res!2555705 e!3761166)))

(assert (=> b!6174576 (= res!2555705 (not (isEmpty!36498 (tail!11830 s!2326))))))

(assert (= (and d!1935327 c!1112872) b!6174572))

(assert (= (and d!1935327 (not c!1112872)) b!6174566))

(assert (= (and d!1935327 c!1112871) b!6174575))

(assert (= (and d!1935327 (not c!1112871)) b!6174571))

(assert (= (and b!6174571 c!1112873) b!6174563))

(assert (= (and b!6174571 (not c!1112873)) b!6174570))

(assert (= (and b!6174570 (not res!2555708)) b!6174569))

(assert (= (and b!6174569 res!2555710) b!6174568))

(assert (= (and b!6174568 res!2555704) b!6174565))

(assert (= (and b!6174565 res!2555711) b!6174564))

(assert (= (and b!6174569 (not res!2555706)) b!6174567))

(assert (= (and b!6174567 res!2555707) b!6174573))

(assert (= (and b!6174573 (not res!2555709)) b!6174576))

(assert (= (and b!6174576 (not res!2555705)) b!6174574))

(assert (= (or b!6174575 b!6174568 b!6174573) bm!515194))

(declare-fun m!7010848 () Bool)

(assert (=> b!6174572 m!7010848))

(assert (=> b!6174566 m!7010630))

(assert (=> b!6174566 m!7010630))

(declare-fun m!7010850 () Bool)

(assert (=> b!6174566 m!7010850))

(assert (=> b!6174566 m!7010634))

(assert (=> b!6174566 m!7010850))

(assert (=> b!6174566 m!7010634))

(declare-fun m!7010852 () Bool)

(assert (=> b!6174566 m!7010852))

(assert (=> b!6174576 m!7010634))

(assert (=> b!6174576 m!7010634))

(declare-fun m!7010854 () Bool)

(assert (=> b!6174576 m!7010854))

(assert (=> b!6174574 m!7010630))

(assert (=> d!1935327 m!7010626))

(assert (=> d!1935327 m!7010494))

(assert (=> b!6174564 m!7010630))

(assert (=> bm!515194 m!7010626))

(assert (=> b!6174565 m!7010634))

(assert (=> b!6174565 m!7010634))

(assert (=> b!6174565 m!7010854))

(assert (=> b!6174133 d!1935327))

(declare-fun d!1935329 () Bool)

(assert (=> d!1935329 (= (matchR!8297 r!7292 s!2326) (matchRSpec!3215 r!7292 s!2326))))

(declare-fun lt!2337975 () Unit!157691)

(declare-fun choose!45888 (Regex!16114 List!64643) Unit!157691)

(assert (=> d!1935329 (= lt!2337975 (choose!45888 r!7292 s!2326))))

(assert (=> d!1935329 (validRegex!7850 r!7292)))

(assert (=> d!1935329 (= (mainMatchTheorem!3215 r!7292 s!2326) lt!2337975)))

(declare-fun bs!1531109 () Bool)

(assert (= bs!1531109 d!1935329))

(assert (=> bs!1531109 m!7010442))

(assert (=> bs!1531109 m!7010440))

(declare-fun m!7010856 () Bool)

(assert (=> bs!1531109 m!7010856))

(assert (=> bs!1531109 m!7010494))

(assert (=> b!6174133 d!1935329))

(declare-fun bm!515195 () Bool)

(declare-fun call!515204 () List!64641)

(declare-fun call!515201 () List!64641)

(assert (=> bm!515195 (= call!515204 call!515201)))

(declare-fun b!6174577 () Bool)

(declare-fun e!3761172 () (Set Context!10996))

(assert (=> b!6174577 (= e!3761172 (set.insert lt!2337799 (as set.empty (Set Context!10996))))))

(declare-fun b!6174579 () Bool)

(declare-fun e!3761173 () Bool)

(assert (=> b!6174579 (= e!3761173 (nullable!6107 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292)))))))

(declare-fun b!6174580 () Bool)

(declare-fun e!3761175 () (Set Context!10996))

(declare-fun call!515205 () (Set Context!10996))

(assert (=> b!6174580 (= e!3761175 call!515205)))

(declare-fun b!6174581 () Bool)

(declare-fun e!3761171 () (Set Context!10996))

(declare-fun e!3761174 () (Set Context!10996))

(assert (=> b!6174581 (= e!3761171 e!3761174)))

(declare-fun c!1112877 () Bool)

(assert (=> b!6174581 (= c!1112877 (is-Concat!24959 (regTwo!32741 (regOne!32740 r!7292))))))

(declare-fun c!1112874 () Bool)

(declare-fun bm!515196 () Bool)

(assert (=> bm!515196 (= call!515201 ($colon$colon!1989 (exprs!5998 lt!2337799) (ite (or c!1112874 c!1112877) (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (regTwo!32741 (regOne!32740 r!7292)))))))

(declare-fun b!6174582 () Bool)

(assert (=> b!6174582 (= e!3761174 call!515205)))

(declare-fun b!6174583 () Bool)

(declare-fun e!3761176 () (Set Context!10996))

(declare-fun call!515202 () (Set Context!10996))

(declare-fun call!515200 () (Set Context!10996))

(assert (=> b!6174583 (= e!3761176 (set.union call!515202 call!515200))))

(declare-fun b!6174584 () Bool)

(assert (=> b!6174584 (= e!3761172 e!3761176)))

(declare-fun c!1112878 () Bool)

(assert (=> b!6174584 (= c!1112878 (is-Union!16114 (regTwo!32741 (regOne!32740 r!7292))))))

(declare-fun b!6174585 () Bool)

(declare-fun call!515203 () (Set Context!10996))

(assert (=> b!6174585 (= e!3761171 (set.union call!515202 call!515203))))

(declare-fun bm!515197 () Bool)

(assert (=> bm!515197 (= call!515200 (derivationStepZipperDown!1362 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292)))))) (ite (or c!1112878 c!1112874) lt!2337799 (Context!10997 call!515204)) (h!70967 s!2326)))))

(declare-fun b!6174586 () Bool)

(declare-fun c!1112875 () Bool)

(assert (=> b!6174586 (= c!1112875 (is-Star!16114 (regTwo!32741 (regOne!32740 r!7292))))))

(assert (=> b!6174586 (= e!3761174 e!3761175)))

(declare-fun bm!515198 () Bool)

(assert (=> bm!515198 (= call!515203 call!515200)))

(declare-fun bm!515199 () Bool)

(assert (=> bm!515199 (= call!515205 call!515203)))

(declare-fun b!6174578 () Bool)

(assert (=> b!6174578 (= c!1112874 e!3761173)))

(declare-fun res!2555712 () Bool)

(assert (=> b!6174578 (=> (not res!2555712) (not e!3761173))))

(assert (=> b!6174578 (= res!2555712 (is-Concat!24959 (regTwo!32741 (regOne!32740 r!7292))))))

(assert (=> b!6174578 (= e!3761176 e!3761171)))

(declare-fun d!1935331 () Bool)

(declare-fun c!1112876 () Bool)

(assert (=> d!1935331 (= c!1112876 (and (is-ElementMatch!16114 (regTwo!32741 (regOne!32740 r!7292))) (= (c!1112765 (regTwo!32741 (regOne!32740 r!7292))) (h!70967 s!2326))))))

(assert (=> d!1935331 (= (derivationStepZipperDown!1362 (regTwo!32741 (regOne!32740 r!7292)) lt!2337799 (h!70967 s!2326)) e!3761172)))

(declare-fun bm!515200 () Bool)

(assert (=> bm!515200 (= call!515202 (derivationStepZipperDown!1362 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292)))) (ite c!1112878 lt!2337799 (Context!10997 call!515201)) (h!70967 s!2326)))))

(declare-fun b!6174587 () Bool)

(assert (=> b!6174587 (= e!3761175 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935331 c!1112876) b!6174577))

(assert (= (and d!1935331 (not c!1112876)) b!6174584))

(assert (= (and b!6174584 c!1112878) b!6174583))

(assert (= (and b!6174584 (not c!1112878)) b!6174578))

(assert (= (and b!6174578 res!2555712) b!6174579))

(assert (= (and b!6174578 c!1112874) b!6174585))

(assert (= (and b!6174578 (not c!1112874)) b!6174581))

(assert (= (and b!6174581 c!1112877) b!6174582))

(assert (= (and b!6174581 (not c!1112877)) b!6174586))

(assert (= (and b!6174586 c!1112875) b!6174580))

(assert (= (and b!6174586 (not c!1112875)) b!6174587))

(assert (= (or b!6174582 b!6174580) bm!515195))

(assert (= (or b!6174582 b!6174580) bm!515199))

(assert (= (or b!6174585 bm!515195) bm!515196))

(assert (= (or b!6174585 bm!515199) bm!515198))

(assert (= (or b!6174583 bm!515198) bm!515197))

(assert (= (or b!6174583 b!6174585) bm!515200))

(assert (=> b!6174577 m!7010740))

(declare-fun m!7010858 () Bool)

(assert (=> b!6174579 m!7010858))

(declare-fun m!7010860 () Bool)

(assert (=> bm!515197 m!7010860))

(declare-fun m!7010862 () Bool)

(assert (=> bm!515196 m!7010862))

(declare-fun m!7010864 () Bool)

(assert (=> bm!515200 m!7010864))

(assert (=> b!6174113 d!1935331))

(declare-fun bm!515201 () Bool)

(declare-fun call!515210 () List!64641)

(declare-fun call!515207 () List!64641)

(assert (=> bm!515201 (= call!515210 call!515207)))

(declare-fun b!6174588 () Bool)

(declare-fun e!3761178 () (Set Context!10996))

(assert (=> b!6174588 (= e!3761178 (set.insert lt!2337799 (as set.empty (Set Context!10996))))))

(declare-fun b!6174590 () Bool)

(declare-fun e!3761179 () Bool)

(assert (=> b!6174590 (= e!3761179 (nullable!6107 (regOne!32740 (regOne!32741 (regOne!32740 r!7292)))))))

(declare-fun b!6174591 () Bool)

(declare-fun e!3761181 () (Set Context!10996))

(declare-fun call!515211 () (Set Context!10996))

(assert (=> b!6174591 (= e!3761181 call!515211)))

(declare-fun b!6174592 () Bool)

(declare-fun e!3761177 () (Set Context!10996))

(declare-fun e!3761180 () (Set Context!10996))

(assert (=> b!6174592 (= e!3761177 e!3761180)))

(declare-fun c!1112882 () Bool)

(assert (=> b!6174592 (= c!1112882 (is-Concat!24959 (regOne!32741 (regOne!32740 r!7292))))))

(declare-fun bm!515202 () Bool)

(declare-fun c!1112879 () Bool)

(assert (=> bm!515202 (= call!515207 ($colon$colon!1989 (exprs!5998 lt!2337799) (ite (or c!1112879 c!1112882) (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (regOne!32741 (regOne!32740 r!7292)))))))

(declare-fun b!6174593 () Bool)

(assert (=> b!6174593 (= e!3761180 call!515211)))

(declare-fun b!6174594 () Bool)

(declare-fun e!3761182 () (Set Context!10996))

(declare-fun call!515208 () (Set Context!10996))

(declare-fun call!515206 () (Set Context!10996))

(assert (=> b!6174594 (= e!3761182 (set.union call!515208 call!515206))))

(declare-fun b!6174595 () Bool)

(assert (=> b!6174595 (= e!3761178 e!3761182)))

(declare-fun c!1112883 () Bool)

(assert (=> b!6174595 (= c!1112883 (is-Union!16114 (regOne!32741 (regOne!32740 r!7292))))))

(declare-fun b!6174596 () Bool)

(declare-fun call!515209 () (Set Context!10996))

(assert (=> b!6174596 (= e!3761177 (set.union call!515208 call!515209))))

(declare-fun bm!515203 () Bool)

(assert (=> bm!515203 (= call!515206 (derivationStepZipperDown!1362 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292)))))) (ite (or c!1112883 c!1112879) lt!2337799 (Context!10997 call!515210)) (h!70967 s!2326)))))

(declare-fun b!6174597 () Bool)

(declare-fun c!1112880 () Bool)

(assert (=> b!6174597 (= c!1112880 (is-Star!16114 (regOne!32741 (regOne!32740 r!7292))))))

(assert (=> b!6174597 (= e!3761180 e!3761181)))

(declare-fun bm!515204 () Bool)

(assert (=> bm!515204 (= call!515209 call!515206)))

(declare-fun bm!515205 () Bool)

(assert (=> bm!515205 (= call!515211 call!515209)))

(declare-fun b!6174589 () Bool)

(assert (=> b!6174589 (= c!1112879 e!3761179)))

(declare-fun res!2555713 () Bool)

(assert (=> b!6174589 (=> (not res!2555713) (not e!3761179))))

(assert (=> b!6174589 (= res!2555713 (is-Concat!24959 (regOne!32741 (regOne!32740 r!7292))))))

(assert (=> b!6174589 (= e!3761182 e!3761177)))

(declare-fun d!1935333 () Bool)

(declare-fun c!1112881 () Bool)

(assert (=> d!1935333 (= c!1112881 (and (is-ElementMatch!16114 (regOne!32741 (regOne!32740 r!7292))) (= (c!1112765 (regOne!32741 (regOne!32740 r!7292))) (h!70967 s!2326))))))

(assert (=> d!1935333 (= (derivationStepZipperDown!1362 (regOne!32741 (regOne!32740 r!7292)) lt!2337799 (h!70967 s!2326)) e!3761178)))

(declare-fun bm!515206 () Bool)

(assert (=> bm!515206 (= call!515208 (derivationStepZipperDown!1362 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292)))) (ite c!1112883 lt!2337799 (Context!10997 call!515207)) (h!70967 s!2326)))))

(declare-fun b!6174598 () Bool)

(assert (=> b!6174598 (= e!3761181 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935333 c!1112881) b!6174588))

(assert (= (and d!1935333 (not c!1112881)) b!6174595))

(assert (= (and b!6174595 c!1112883) b!6174594))

(assert (= (and b!6174595 (not c!1112883)) b!6174589))

(assert (= (and b!6174589 res!2555713) b!6174590))

(assert (= (and b!6174589 c!1112879) b!6174596))

(assert (= (and b!6174589 (not c!1112879)) b!6174592))

(assert (= (and b!6174592 c!1112882) b!6174593))

(assert (= (and b!6174592 (not c!1112882)) b!6174597))

(assert (= (and b!6174597 c!1112880) b!6174591))

(assert (= (and b!6174597 (not c!1112880)) b!6174598))

(assert (= (or b!6174593 b!6174591) bm!515201))

(assert (= (or b!6174593 b!6174591) bm!515205))

(assert (= (or b!6174596 bm!515201) bm!515202))

(assert (= (or b!6174596 bm!515205) bm!515204))

(assert (= (or b!6174594 bm!515204) bm!515203))

(assert (= (or b!6174594 b!6174596) bm!515206))

(assert (=> b!6174588 m!7010740))

(declare-fun m!7010866 () Bool)

(assert (=> b!6174590 m!7010866))

(declare-fun m!7010868 () Bool)

(assert (=> bm!515203 m!7010868))

(declare-fun m!7010870 () Bool)

(assert (=> bm!515202 m!7010870))

(declare-fun m!7010872 () Bool)

(assert (=> bm!515206 m!7010872))

(assert (=> b!6174113 d!1935333))

(declare-fun d!1935335 () Bool)

(declare-fun c!1112884 () Bool)

(assert (=> d!1935335 (= c!1112884 (isEmpty!36498 (t!378147 s!2326)))))

(declare-fun e!3761183 () Bool)

(assert (=> d!1935335 (= (matchZipper!2126 lt!2337814 (t!378147 s!2326)) e!3761183)))

(declare-fun b!6174599 () Bool)

(assert (=> b!6174599 (= e!3761183 (nullableZipper!1893 lt!2337814))))

(declare-fun b!6174600 () Bool)

(assert (=> b!6174600 (= e!3761183 (matchZipper!2126 (derivationStepZipper!2085 lt!2337814 (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))))))

(assert (= (and d!1935335 c!1112884) b!6174599))

(assert (= (and d!1935335 (not c!1112884)) b!6174600))

(assert (=> d!1935335 m!7010688))

(declare-fun m!7010874 () Bool)

(assert (=> b!6174599 m!7010874))

(assert (=> b!6174600 m!7010692))

(assert (=> b!6174600 m!7010692))

(declare-fun m!7010876 () Bool)

(assert (=> b!6174600 m!7010876))

(assert (=> b!6174600 m!7010696))

(assert (=> b!6174600 m!7010876))

(assert (=> b!6174600 m!7010696))

(declare-fun m!7010878 () Bool)

(assert (=> b!6174600 m!7010878))

(assert (=> b!6174129 d!1935335))

(declare-fun bs!1531110 () Bool)

(declare-fun d!1935337 () Bool)

(assert (= bs!1531110 (and d!1935337 d!1935287)))

(declare-fun lambda!337071 () Int)

(assert (=> bs!1531110 (= lambda!337071 lambda!337055)))

(declare-fun bs!1531111 () Bool)

(assert (= bs!1531111 (and d!1935337 d!1935291)))

(assert (=> bs!1531111 (= lambda!337071 lambda!337058)))

(declare-fun bs!1531112 () Bool)

(assert (= bs!1531112 (and d!1935337 d!1935293)))

(assert (=> bs!1531112 (= lambda!337071 lambda!337061)))

(declare-fun bs!1531113 () Bool)

(assert (= bs!1531113 (and d!1935337 d!1935301)))

(assert (=> bs!1531113 (= lambda!337071 lambda!337062)))

(declare-fun b!6174621 () Bool)

(declare-fun e!3761201 () Bool)

(declare-fun lt!2337978 () Regex!16114)

(assert (=> b!6174621 (= e!3761201 (= lt!2337978 (head!12746 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6174622 () Bool)

(declare-fun e!3761198 () Bool)

(declare-fun isEmptyExpr!1529 (Regex!16114) Bool)

(assert (=> b!6174622 (= e!3761198 (isEmptyExpr!1529 lt!2337978))))

(declare-fun b!6174623 () Bool)

(declare-fun e!3761200 () Regex!16114)

(declare-fun e!3761197 () Regex!16114)

(assert (=> b!6174623 (= e!3761200 e!3761197)))

(declare-fun c!1112896 () Bool)

(assert (=> b!6174623 (= c!1112896 (is-Cons!64517 (exprs!5998 (h!70966 zl!343))))))

(declare-fun e!3761199 () Bool)

(assert (=> d!1935337 e!3761199))

(declare-fun res!2555718 () Bool)

(assert (=> d!1935337 (=> (not res!2555718) (not e!3761199))))

(assert (=> d!1935337 (= res!2555718 (validRegex!7850 lt!2337978))))

(assert (=> d!1935337 (= lt!2337978 e!3761200)))

(declare-fun c!1112894 () Bool)

(declare-fun e!3761196 () Bool)

(assert (=> d!1935337 (= c!1112894 e!3761196)))

(declare-fun res!2555719 () Bool)

(assert (=> d!1935337 (=> (not res!2555719) (not e!3761196))))

(assert (=> d!1935337 (= res!2555719 (is-Cons!64517 (exprs!5998 (h!70966 zl!343))))))

(assert (=> d!1935337 (forall!15233 (exprs!5998 (h!70966 zl!343)) lambda!337071)))

(assert (=> d!1935337 (= (generalisedConcat!1711 (exprs!5998 (h!70966 zl!343))) lt!2337978)))

(declare-fun b!6174624 () Bool)

(assert (=> b!6174624 (= e!3761200 (h!70965 (exprs!5998 (h!70966 zl!343))))))

(declare-fun b!6174625 () Bool)

(assert (=> b!6174625 (= e!3761196 (isEmpty!36495 (t!378145 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6174626 () Bool)

(assert (=> b!6174626 (= e!3761197 EmptyExpr!16114)))

(declare-fun b!6174627 () Bool)

(declare-fun isConcat!1052 (Regex!16114) Bool)

(assert (=> b!6174627 (= e!3761201 (isConcat!1052 lt!2337978))))

(declare-fun b!6174628 () Bool)

(assert (=> b!6174628 (= e!3761197 (Concat!24959 (h!70965 (exprs!5998 (h!70966 zl!343))) (generalisedConcat!1711 (t!378145 (exprs!5998 (h!70966 zl!343))))))))

(declare-fun b!6174629 () Bool)

(assert (=> b!6174629 (= e!3761198 e!3761201)))

(declare-fun c!1112895 () Bool)

(assert (=> b!6174629 (= c!1112895 (isEmpty!36495 (tail!11831 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6174630 () Bool)

(assert (=> b!6174630 (= e!3761199 e!3761198)))

(declare-fun c!1112893 () Bool)

(assert (=> b!6174630 (= c!1112893 (isEmpty!36495 (exprs!5998 (h!70966 zl!343))))))

(assert (= (and d!1935337 res!2555719) b!6174625))

(assert (= (and d!1935337 c!1112894) b!6174624))

(assert (= (and d!1935337 (not c!1112894)) b!6174623))

(assert (= (and b!6174623 c!1112896) b!6174628))

(assert (= (and b!6174623 (not c!1112896)) b!6174626))

(assert (= (and d!1935337 res!2555718) b!6174630))

(assert (= (and b!6174630 c!1112893) b!6174622))

(assert (= (and b!6174630 (not c!1112893)) b!6174629))

(assert (= (and b!6174629 c!1112895) b!6174621))

(assert (= (and b!6174629 (not c!1112895)) b!6174627))

(declare-fun m!7010880 () Bool)

(assert (=> b!6174627 m!7010880))

(declare-fun m!7010882 () Bool)

(assert (=> d!1935337 m!7010882))

(declare-fun m!7010884 () Bool)

(assert (=> d!1935337 m!7010884))

(assert (=> b!6174625 m!7010392))

(declare-fun m!7010886 () Bool)

(assert (=> b!6174630 m!7010886))

(declare-fun m!7010888 () Bool)

(assert (=> b!6174621 m!7010888))

(declare-fun m!7010890 () Bool)

(assert (=> b!6174622 m!7010890))

(declare-fun m!7010892 () Bool)

(assert (=> b!6174628 m!7010892))

(declare-fun m!7010894 () Bool)

(assert (=> b!6174629 m!7010894))

(assert (=> b!6174629 m!7010894))

(declare-fun m!7010896 () Bool)

(assert (=> b!6174629 m!7010896))

(assert (=> b!6174111 d!1935337))

(assert (=> b!6174148 d!1935261))

(declare-fun d!1935339 () Bool)

(declare-fun c!1112897 () Bool)

(assert (=> d!1935339 (= c!1112897 (isEmpty!36498 (t!378147 s!2326)))))

(declare-fun e!3761202 () Bool)

(assert (=> d!1935339 (= (matchZipper!2126 lt!2337785 (t!378147 s!2326)) e!3761202)))

(declare-fun b!6174631 () Bool)

(assert (=> b!6174631 (= e!3761202 (nullableZipper!1893 lt!2337785))))

(declare-fun b!6174632 () Bool)

(assert (=> b!6174632 (= e!3761202 (matchZipper!2126 (derivationStepZipper!2085 lt!2337785 (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))))))

(assert (= (and d!1935339 c!1112897) b!6174631))

(assert (= (and d!1935339 (not c!1112897)) b!6174632))

(assert (=> d!1935339 m!7010688))

(declare-fun m!7010898 () Bool)

(assert (=> b!6174631 m!7010898))

(assert (=> b!6174632 m!7010692))

(assert (=> b!6174632 m!7010692))

(declare-fun m!7010900 () Bool)

(assert (=> b!6174632 m!7010900))

(assert (=> b!6174632 m!7010696))

(assert (=> b!6174632 m!7010900))

(assert (=> b!6174632 m!7010696))

(declare-fun m!7010902 () Bool)

(assert (=> b!6174632 m!7010902))

(assert (=> b!6174148 d!1935339))

(declare-fun d!1935341 () Bool)

(declare-fun c!1112898 () Bool)

(assert (=> d!1935341 (= c!1112898 (isEmpty!36498 (t!378147 s!2326)))))

(declare-fun e!3761203 () Bool)

(assert (=> d!1935341 (= (matchZipper!2126 lt!2337788 (t!378147 s!2326)) e!3761203)))

(declare-fun b!6174633 () Bool)

(assert (=> b!6174633 (= e!3761203 (nullableZipper!1893 lt!2337788))))

(declare-fun b!6174634 () Bool)

(assert (=> b!6174634 (= e!3761203 (matchZipper!2126 (derivationStepZipper!2085 lt!2337788 (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))))))

(assert (= (and d!1935341 c!1112898) b!6174633))

(assert (= (and d!1935341 (not c!1112898)) b!6174634))

(assert (=> d!1935341 m!7010688))

(declare-fun m!7010904 () Bool)

(assert (=> b!6174633 m!7010904))

(assert (=> b!6174634 m!7010692))

(assert (=> b!6174634 m!7010692))

(declare-fun m!7010906 () Bool)

(assert (=> b!6174634 m!7010906))

(assert (=> b!6174634 m!7010696))

(assert (=> b!6174634 m!7010906))

(assert (=> b!6174634 m!7010696))

(declare-fun m!7010908 () Bool)

(assert (=> b!6174634 m!7010908))

(assert (=> b!6174148 d!1935341))

(declare-fun e!3761204 () Bool)

(declare-fun d!1935343 () Bool)

(assert (=> d!1935343 (= (matchZipper!2126 (set.union lt!2337788 lt!2337814) (t!378147 s!2326)) e!3761204)))

(declare-fun res!2555720 () Bool)

(assert (=> d!1935343 (=> res!2555720 e!3761204)))

(assert (=> d!1935343 (= res!2555720 (matchZipper!2126 lt!2337788 (t!378147 s!2326)))))

(declare-fun lt!2337979 () Unit!157691)

(assert (=> d!1935343 (= lt!2337979 (choose!45884 lt!2337788 lt!2337814 (t!378147 s!2326)))))

(assert (=> d!1935343 (= (lemmaZipperConcatMatchesSameAsBothZippers!945 lt!2337788 lt!2337814 (t!378147 s!2326)) lt!2337979)))

(declare-fun b!6174635 () Bool)

(assert (=> b!6174635 (= e!3761204 (matchZipper!2126 lt!2337814 (t!378147 s!2326)))))

(assert (= (and d!1935343 (not res!2555720)) b!6174635))

(declare-fun m!7010910 () Bool)

(assert (=> d!1935343 m!7010910))

(assert (=> d!1935343 m!7010480))

(declare-fun m!7010912 () Bool)

(assert (=> d!1935343 m!7010912))

(assert (=> b!6174635 m!7010398))

(assert (=> b!6174148 d!1935343))

(assert (=> b!6174147 d!1935289))

(declare-fun e!3761205 () Bool)

(declare-fun d!1935345 () Bool)

(assert (=> d!1935345 (= (matchZipper!2126 (set.union lt!2337814 lt!2337798) (t!378147 s!2326)) e!3761205)))

(declare-fun res!2555721 () Bool)

(assert (=> d!1935345 (=> res!2555721 e!3761205)))

(assert (=> d!1935345 (= res!2555721 (matchZipper!2126 lt!2337814 (t!378147 s!2326)))))

(declare-fun lt!2337980 () Unit!157691)

(assert (=> d!1935345 (= lt!2337980 (choose!45884 lt!2337814 lt!2337798 (t!378147 s!2326)))))

(assert (=> d!1935345 (= (lemmaZipperConcatMatchesSameAsBothZippers!945 lt!2337814 lt!2337798 (t!378147 s!2326)) lt!2337980)))

(declare-fun b!6174636 () Bool)

(assert (=> b!6174636 (= e!3761205 (matchZipper!2126 lt!2337798 (t!378147 s!2326)))))

(assert (= (and d!1935345 (not res!2555721)) b!6174636))

(assert (=> d!1935345 m!7010400))

(assert (=> d!1935345 m!7010398))

(declare-fun m!7010914 () Bool)

(assert (=> d!1935345 m!7010914))

(assert (=> b!6174636 m!7010390))

(assert (=> b!6174126 d!1935345))

(assert (=> b!6174126 d!1935335))

(declare-fun d!1935347 () Bool)

(declare-fun c!1112899 () Bool)

(assert (=> d!1935347 (= c!1112899 (isEmpty!36498 (t!378147 s!2326)))))

(declare-fun e!3761206 () Bool)

(assert (=> d!1935347 (= (matchZipper!2126 (set.union lt!2337814 lt!2337798) (t!378147 s!2326)) e!3761206)))

(declare-fun b!6174637 () Bool)

(assert (=> b!6174637 (= e!3761206 (nullableZipper!1893 (set.union lt!2337814 lt!2337798)))))

(declare-fun b!6174638 () Bool)

(assert (=> b!6174638 (= e!3761206 (matchZipper!2126 (derivationStepZipper!2085 (set.union lt!2337814 lt!2337798) (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))))))

(assert (= (and d!1935347 c!1112899) b!6174637))

(assert (= (and d!1935347 (not c!1112899)) b!6174638))

(assert (=> d!1935347 m!7010688))

(declare-fun m!7010916 () Bool)

(assert (=> b!6174637 m!7010916))

(assert (=> b!6174638 m!7010692))

(assert (=> b!6174638 m!7010692))

(declare-fun m!7010918 () Bool)

(assert (=> b!6174638 m!7010918))

(assert (=> b!6174638 m!7010696))

(assert (=> b!6174638 m!7010918))

(assert (=> b!6174638 m!7010696))

(declare-fun m!7010920 () Bool)

(assert (=> b!6174638 m!7010920))

(assert (=> b!6174126 d!1935347))

(assert (=> b!6174128 d!1935335))

(declare-fun bs!1531114 () Bool)

(declare-fun d!1935349 () Bool)

(assert (= bs!1531114 (and d!1935349 d!1935337)))

(declare-fun lambda!337072 () Int)

(assert (=> bs!1531114 (= lambda!337072 lambda!337071)))

(declare-fun bs!1531115 () Bool)

(assert (= bs!1531115 (and d!1935349 d!1935291)))

(assert (=> bs!1531115 (= lambda!337072 lambda!337058)))

(declare-fun bs!1531116 () Bool)

(assert (= bs!1531116 (and d!1935349 d!1935293)))

(assert (=> bs!1531116 (= lambda!337072 lambda!337061)))

(declare-fun bs!1531117 () Bool)

(assert (= bs!1531117 (and d!1935349 d!1935287)))

(assert (=> bs!1531117 (= lambda!337072 lambda!337055)))

(declare-fun bs!1531118 () Bool)

(assert (= bs!1531118 (and d!1935349 d!1935301)))

(assert (=> bs!1531118 (= lambda!337072 lambda!337062)))

(assert (=> d!1935349 (= (inv!83533 lt!2337815) (forall!15233 (exprs!5998 lt!2337815) lambda!337072))))

(declare-fun bs!1531119 () Bool)

(assert (= bs!1531119 d!1935349))

(declare-fun m!7010922 () Bool)

(assert (=> bs!1531119 m!7010922))

(assert (=> b!6174127 d!1935349))

(declare-fun b!6174639 () Bool)

(declare-fun e!3761211 () Bool)

(declare-fun lt!2337981 () Bool)

(assert (=> b!6174639 (= e!3761211 (not lt!2337981))))

(declare-fun b!6174640 () Bool)

(declare-fun e!3761207 () Bool)

(assert (=> b!6174640 (= e!3761207 (= (head!12745 s!2326) (c!1112765 lt!2337803)))))

(declare-fun b!6174641 () Bool)

(declare-fun res!2555729 () Bool)

(assert (=> b!6174641 (=> (not res!2555729) (not e!3761207))))

(assert (=> b!6174641 (= res!2555729 (isEmpty!36498 (tail!11830 s!2326)))))

(declare-fun b!6174642 () Bool)

(declare-fun e!3761212 () Bool)

(assert (=> b!6174642 (= e!3761212 (matchR!8297 (derivativeStep!4831 lt!2337803 (head!12745 s!2326)) (tail!11830 s!2326)))))

(declare-fun b!6174643 () Bool)

(declare-fun e!3761213 () Bool)

(declare-fun e!3761208 () Bool)

(assert (=> b!6174643 (= e!3761213 e!3761208)))

(declare-fun res!2555725 () Bool)

(assert (=> b!6174643 (=> (not res!2555725) (not e!3761208))))

(assert (=> b!6174643 (= res!2555725 (not lt!2337981))))

(declare-fun b!6174644 () Bool)

(declare-fun res!2555722 () Bool)

(assert (=> b!6174644 (=> (not res!2555722) (not e!3761207))))

(declare-fun call!515212 () Bool)

(assert (=> b!6174644 (= res!2555722 (not call!515212))))

(declare-fun b!6174645 () Bool)

(declare-fun res!2555724 () Bool)

(assert (=> b!6174645 (=> res!2555724 e!3761213)))

(assert (=> b!6174645 (= res!2555724 e!3761207)))

(declare-fun res!2555728 () Bool)

(assert (=> b!6174645 (=> (not res!2555728) (not e!3761207))))

(assert (=> b!6174645 (= res!2555728 lt!2337981)))

(declare-fun d!1935351 () Bool)

(declare-fun e!3761210 () Bool)

(assert (=> d!1935351 e!3761210))

(declare-fun c!1112900 () Bool)

(assert (=> d!1935351 (= c!1112900 (is-EmptyExpr!16114 lt!2337803))))

(assert (=> d!1935351 (= lt!2337981 e!3761212)))

(declare-fun c!1112901 () Bool)

(assert (=> d!1935351 (= c!1112901 (isEmpty!36498 s!2326))))

(assert (=> d!1935351 (validRegex!7850 lt!2337803)))

(assert (=> d!1935351 (= (matchR!8297 lt!2337803 s!2326) lt!2337981)))

(declare-fun bm!515207 () Bool)

(assert (=> bm!515207 (= call!515212 (isEmpty!36498 s!2326))))

(declare-fun b!6174646 () Bool)

(declare-fun res!2555726 () Bool)

(assert (=> b!6174646 (=> res!2555726 e!3761213)))

(assert (=> b!6174646 (= res!2555726 (not (is-ElementMatch!16114 lt!2337803)))))

(assert (=> b!6174646 (= e!3761211 e!3761213)))

(declare-fun b!6174647 () Bool)

(assert (=> b!6174647 (= e!3761210 e!3761211)))

(declare-fun c!1112902 () Bool)

(assert (=> b!6174647 (= c!1112902 (is-EmptyLang!16114 lt!2337803))))

(declare-fun b!6174648 () Bool)

(assert (=> b!6174648 (= e!3761212 (nullable!6107 lt!2337803))))

(declare-fun b!6174649 () Bool)

(declare-fun e!3761209 () Bool)

(assert (=> b!6174649 (= e!3761208 e!3761209)))

(declare-fun res!2555727 () Bool)

(assert (=> b!6174649 (=> res!2555727 e!3761209)))

(assert (=> b!6174649 (= res!2555727 call!515212)))

(declare-fun b!6174650 () Bool)

(assert (=> b!6174650 (= e!3761209 (not (= (head!12745 s!2326) (c!1112765 lt!2337803))))))

(declare-fun b!6174651 () Bool)

(assert (=> b!6174651 (= e!3761210 (= lt!2337981 call!515212))))

(declare-fun b!6174652 () Bool)

(declare-fun res!2555723 () Bool)

(assert (=> b!6174652 (=> res!2555723 e!3761209)))

(assert (=> b!6174652 (= res!2555723 (not (isEmpty!36498 (tail!11830 s!2326))))))

(assert (= (and d!1935351 c!1112901) b!6174648))

(assert (= (and d!1935351 (not c!1112901)) b!6174642))

(assert (= (and d!1935351 c!1112900) b!6174651))

(assert (= (and d!1935351 (not c!1112900)) b!6174647))

(assert (= (and b!6174647 c!1112902) b!6174639))

(assert (= (and b!6174647 (not c!1112902)) b!6174646))

(assert (= (and b!6174646 (not res!2555726)) b!6174645))

(assert (= (and b!6174645 res!2555728) b!6174644))

(assert (= (and b!6174644 res!2555722) b!6174641))

(assert (= (and b!6174641 res!2555729) b!6174640))

(assert (= (and b!6174645 (not res!2555724)) b!6174643))

(assert (= (and b!6174643 res!2555725) b!6174649))

(assert (= (and b!6174649 (not res!2555727)) b!6174652))

(assert (= (and b!6174652 (not res!2555723)) b!6174650))

(assert (= (or b!6174651 b!6174644 b!6174649) bm!515207))

(declare-fun m!7010924 () Bool)

(assert (=> b!6174648 m!7010924))

(assert (=> b!6174642 m!7010630))

(assert (=> b!6174642 m!7010630))

(declare-fun m!7010926 () Bool)

(assert (=> b!6174642 m!7010926))

(assert (=> b!6174642 m!7010634))

(assert (=> b!6174642 m!7010926))

(assert (=> b!6174642 m!7010634))

(declare-fun m!7010928 () Bool)

(assert (=> b!6174642 m!7010928))

(assert (=> b!6174652 m!7010634))

(assert (=> b!6174652 m!7010634))

(assert (=> b!6174652 m!7010854))

(assert (=> b!6174650 m!7010630))

(assert (=> d!1935351 m!7010626))

(declare-fun m!7010930 () Bool)

(assert (=> d!1935351 m!7010930))

(assert (=> b!6174640 m!7010630))

(assert (=> bm!515207 m!7010626))

(assert (=> b!6174641 m!7010634))

(assert (=> b!6174641 m!7010634))

(assert (=> b!6174641 m!7010854))

(assert (=> b!6174127 d!1935351))

(declare-fun d!1935353 () Bool)

(assert (=> d!1935353 (= (matchR!8297 lt!2337803 s!2326) (matchZipper!2126 lt!2337800 s!2326))))

(declare-fun lt!2337984 () Unit!157691)

(declare-fun choose!45889 ((Set Context!10996) List!64642 Regex!16114 List!64643) Unit!157691)

(assert (=> d!1935353 (= lt!2337984 (choose!45889 lt!2337800 lt!2337802 lt!2337803 s!2326))))

(assert (=> d!1935353 (validRegex!7850 lt!2337803)))

(assert (=> d!1935353 (= (theoremZipperRegexEquiv!726 lt!2337800 lt!2337802 lt!2337803 s!2326) lt!2337984)))

(declare-fun bs!1531120 () Bool)

(assert (= bs!1531120 d!1935353))

(assert (=> bs!1531120 m!7010434))

(assert (=> bs!1531120 m!7010468))

(declare-fun m!7010932 () Bool)

(assert (=> bs!1531120 m!7010932))

(assert (=> bs!1531120 m!7010930))

(assert (=> b!6174127 d!1935353))

(declare-fun bs!1531121 () Bool)

(declare-fun d!1935355 () Bool)

(assert (= bs!1531121 (and d!1935355 d!1935337)))

(declare-fun lambda!337073 () Int)

(assert (=> bs!1531121 (= lambda!337073 lambda!337071)))

(declare-fun bs!1531122 () Bool)

(assert (= bs!1531122 (and d!1935355 d!1935291)))

(assert (=> bs!1531122 (= lambda!337073 lambda!337058)))

(declare-fun bs!1531123 () Bool)

(assert (= bs!1531123 (and d!1935355 d!1935293)))

(assert (=> bs!1531123 (= lambda!337073 lambda!337061)))

(declare-fun bs!1531124 () Bool)

(assert (= bs!1531124 (and d!1935355 d!1935287)))

(assert (=> bs!1531124 (= lambda!337073 lambda!337055)))

(declare-fun bs!1531125 () Bool)

(assert (= bs!1531125 (and d!1935355 d!1935301)))

(assert (=> bs!1531125 (= lambda!337073 lambda!337062)))

(declare-fun bs!1531126 () Bool)

(assert (= bs!1531126 (and d!1935355 d!1935349)))

(assert (=> bs!1531126 (= lambda!337073 lambda!337072)))

(declare-fun b!6174653 () Bool)

(declare-fun e!3761219 () Bool)

(declare-fun lt!2337985 () Regex!16114)

(assert (=> b!6174653 (= e!3761219 (= lt!2337985 (head!12746 lt!2337804)))))

(declare-fun b!6174654 () Bool)

(declare-fun e!3761216 () Bool)

(assert (=> b!6174654 (= e!3761216 (isEmptyExpr!1529 lt!2337985))))

(declare-fun b!6174655 () Bool)

(declare-fun e!3761218 () Regex!16114)

(declare-fun e!3761215 () Regex!16114)

(assert (=> b!6174655 (= e!3761218 e!3761215)))

(declare-fun c!1112906 () Bool)

(assert (=> b!6174655 (= c!1112906 (is-Cons!64517 lt!2337804))))

(declare-fun e!3761217 () Bool)

(assert (=> d!1935355 e!3761217))

(declare-fun res!2555730 () Bool)

(assert (=> d!1935355 (=> (not res!2555730) (not e!3761217))))

(assert (=> d!1935355 (= res!2555730 (validRegex!7850 lt!2337985))))

(assert (=> d!1935355 (= lt!2337985 e!3761218)))

(declare-fun c!1112904 () Bool)

(declare-fun e!3761214 () Bool)

(assert (=> d!1935355 (= c!1112904 e!3761214)))

(declare-fun res!2555731 () Bool)

(assert (=> d!1935355 (=> (not res!2555731) (not e!3761214))))

(assert (=> d!1935355 (= res!2555731 (is-Cons!64517 lt!2337804))))

(assert (=> d!1935355 (forall!15233 lt!2337804 lambda!337073)))

(assert (=> d!1935355 (= (generalisedConcat!1711 lt!2337804) lt!2337985)))

(declare-fun b!6174656 () Bool)

(assert (=> b!6174656 (= e!3761218 (h!70965 lt!2337804))))

(declare-fun b!6174657 () Bool)

(assert (=> b!6174657 (= e!3761214 (isEmpty!36495 (t!378145 lt!2337804)))))

(declare-fun b!6174658 () Bool)

(assert (=> b!6174658 (= e!3761215 EmptyExpr!16114)))

(declare-fun b!6174659 () Bool)

(assert (=> b!6174659 (= e!3761219 (isConcat!1052 lt!2337985))))

(declare-fun b!6174660 () Bool)

(assert (=> b!6174660 (= e!3761215 (Concat!24959 (h!70965 lt!2337804) (generalisedConcat!1711 (t!378145 lt!2337804))))))

(declare-fun b!6174661 () Bool)

(assert (=> b!6174661 (= e!3761216 e!3761219)))

(declare-fun c!1112905 () Bool)

(assert (=> b!6174661 (= c!1112905 (isEmpty!36495 (tail!11831 lt!2337804)))))

(declare-fun b!6174662 () Bool)

(assert (=> b!6174662 (= e!3761217 e!3761216)))

(declare-fun c!1112903 () Bool)

(assert (=> b!6174662 (= c!1112903 (isEmpty!36495 lt!2337804))))

(assert (= (and d!1935355 res!2555731) b!6174657))

(assert (= (and d!1935355 c!1112904) b!6174656))

(assert (= (and d!1935355 (not c!1112904)) b!6174655))

(assert (= (and b!6174655 c!1112906) b!6174660))

(assert (= (and b!6174655 (not c!1112906)) b!6174658))

(assert (= (and d!1935355 res!2555730) b!6174662))

(assert (= (and b!6174662 c!1112903) b!6174654))

(assert (= (and b!6174662 (not c!1112903)) b!6174661))

(assert (= (and b!6174661 c!1112905) b!6174653))

(assert (= (and b!6174661 (not c!1112905)) b!6174659))

(declare-fun m!7010934 () Bool)

(assert (=> b!6174659 m!7010934))

(declare-fun m!7010936 () Bool)

(assert (=> d!1935355 m!7010936))

(declare-fun m!7010938 () Bool)

(assert (=> d!1935355 m!7010938))

(declare-fun m!7010940 () Bool)

(assert (=> b!6174657 m!7010940))

(declare-fun m!7010942 () Bool)

(assert (=> b!6174662 m!7010942))

(declare-fun m!7010944 () Bool)

(assert (=> b!6174653 m!7010944))

(declare-fun m!7010946 () Bool)

(assert (=> b!6174654 m!7010946))

(declare-fun m!7010948 () Bool)

(assert (=> b!6174660 m!7010948))

(declare-fun m!7010950 () Bool)

(assert (=> b!6174661 m!7010950))

(assert (=> b!6174661 m!7010950))

(declare-fun m!7010952 () Bool)

(assert (=> b!6174661 m!7010952))

(assert (=> b!6174127 d!1935355))

(declare-fun b!6174667 () Bool)

(declare-fun e!3761222 () Bool)

(declare-fun tp!1723823 () Bool)

(declare-fun tp!1723824 () Bool)

(assert (=> b!6174667 (= e!3761222 (and tp!1723823 tp!1723824))))

(assert (=> b!6174140 (= tp!1723780 e!3761222)))

(assert (= (and b!6174140 (is-Cons!64517 (exprs!5998 setElem!41861))) b!6174667))

(declare-fun b!6174679 () Bool)

(declare-fun e!3761225 () Bool)

(declare-fun tp!1723839 () Bool)

(declare-fun tp!1723836 () Bool)

(assert (=> b!6174679 (= e!3761225 (and tp!1723839 tp!1723836))))

(declare-fun b!6174681 () Bool)

(declare-fun tp!1723835 () Bool)

(declare-fun tp!1723837 () Bool)

(assert (=> b!6174681 (= e!3761225 (and tp!1723835 tp!1723837))))

(declare-fun b!6174680 () Bool)

(declare-fun tp!1723838 () Bool)

(assert (=> b!6174680 (= e!3761225 tp!1723838)))

(declare-fun b!6174678 () Bool)

(assert (=> b!6174678 (= e!3761225 tp_is_empty!41481)))

(assert (=> b!6174134 (= tp!1723787 e!3761225)))

(assert (= (and b!6174134 (is-ElementMatch!16114 (regOne!32740 r!7292))) b!6174678))

(assert (= (and b!6174134 (is-Concat!24959 (regOne!32740 r!7292))) b!6174679))

(assert (= (and b!6174134 (is-Star!16114 (regOne!32740 r!7292))) b!6174680))

(assert (= (and b!6174134 (is-Union!16114 (regOne!32740 r!7292))) b!6174681))

(declare-fun b!6174683 () Bool)

(declare-fun e!3761226 () Bool)

(declare-fun tp!1723844 () Bool)

(declare-fun tp!1723841 () Bool)

(assert (=> b!6174683 (= e!3761226 (and tp!1723844 tp!1723841))))

(declare-fun b!6174685 () Bool)

(declare-fun tp!1723840 () Bool)

(declare-fun tp!1723842 () Bool)

(assert (=> b!6174685 (= e!3761226 (and tp!1723840 tp!1723842))))

(declare-fun b!6174684 () Bool)

(declare-fun tp!1723843 () Bool)

(assert (=> b!6174684 (= e!3761226 tp!1723843)))

(declare-fun b!6174682 () Bool)

(assert (=> b!6174682 (= e!3761226 tp_is_empty!41481)))

(assert (=> b!6174134 (= tp!1723781 e!3761226)))

(assert (= (and b!6174134 (is-ElementMatch!16114 (regTwo!32740 r!7292))) b!6174682))

(assert (= (and b!6174134 (is-Concat!24959 (regTwo!32740 r!7292))) b!6174683))

(assert (= (and b!6174134 (is-Star!16114 (regTwo!32740 r!7292))) b!6174684))

(assert (= (and b!6174134 (is-Union!16114 (regTwo!32740 r!7292))) b!6174685))

(declare-fun condSetEmpty!41867 () Bool)

(assert (=> setNonEmpty!41861 (= condSetEmpty!41867 (= setRest!41861 (as set.empty (Set Context!10996))))))

(declare-fun setRes!41867 () Bool)

(assert (=> setNonEmpty!41861 (= tp!1723784 setRes!41867)))

(declare-fun setIsEmpty!41867 () Bool)

(assert (=> setIsEmpty!41867 setRes!41867))

(declare-fun setElem!41867 () Context!10996)

(declare-fun setNonEmpty!41867 () Bool)

(declare-fun tp!1723849 () Bool)

(declare-fun e!3761229 () Bool)

(assert (=> setNonEmpty!41867 (= setRes!41867 (and tp!1723849 (inv!83533 setElem!41867) e!3761229))))

(declare-fun setRest!41867 () (Set Context!10996))

(assert (=> setNonEmpty!41867 (= setRest!41861 (set.union (set.insert setElem!41867 (as set.empty (Set Context!10996))) setRest!41867))))

(declare-fun b!6174690 () Bool)

(declare-fun tp!1723850 () Bool)

(assert (=> b!6174690 (= e!3761229 tp!1723850)))

(assert (= (and setNonEmpty!41861 condSetEmpty!41867) setIsEmpty!41867))

(assert (= (and setNonEmpty!41861 (not condSetEmpty!41867)) setNonEmpty!41867))

(assert (= setNonEmpty!41867 b!6174690))

(declare-fun m!7010954 () Bool)

(assert (=> setNonEmpty!41867 m!7010954))

(declare-fun b!6174692 () Bool)

(declare-fun e!3761230 () Bool)

(declare-fun tp!1723855 () Bool)

(declare-fun tp!1723852 () Bool)

(assert (=> b!6174692 (= e!3761230 (and tp!1723855 tp!1723852))))

(declare-fun b!6174694 () Bool)

(declare-fun tp!1723851 () Bool)

(declare-fun tp!1723853 () Bool)

(assert (=> b!6174694 (= e!3761230 (and tp!1723851 tp!1723853))))

(declare-fun b!6174693 () Bool)

(declare-fun tp!1723854 () Bool)

(assert (=> b!6174693 (= e!3761230 tp!1723854)))

(declare-fun b!6174691 () Bool)

(assert (=> b!6174691 (= e!3761230 tp_is_empty!41481)))

(assert (=> b!6174135 (= tp!1723779 e!3761230)))

(assert (= (and b!6174135 (is-ElementMatch!16114 (reg!16443 r!7292))) b!6174691))

(assert (= (and b!6174135 (is-Concat!24959 (reg!16443 r!7292))) b!6174692))

(assert (= (and b!6174135 (is-Star!16114 (reg!16443 r!7292))) b!6174693))

(assert (= (and b!6174135 (is-Union!16114 (reg!16443 r!7292))) b!6174694))

(declare-fun b!6174702 () Bool)

(declare-fun e!3761236 () Bool)

(declare-fun tp!1723860 () Bool)

(assert (=> b!6174702 (= e!3761236 tp!1723860)))

(declare-fun b!6174701 () Bool)

(declare-fun e!3761235 () Bool)

(declare-fun tp!1723861 () Bool)

(assert (=> b!6174701 (= e!3761235 (and (inv!83533 (h!70966 (t!378146 zl!343))) e!3761236 tp!1723861))))

(assert (=> b!6174132 (= tp!1723786 e!3761235)))

(assert (= b!6174701 b!6174702))

(assert (= (and b!6174132 (is-Cons!64518 (t!378146 zl!343))) b!6174701))

(declare-fun m!7010956 () Bool)

(assert (=> b!6174701 m!7010956))

(declare-fun b!6174704 () Bool)

(declare-fun e!3761237 () Bool)

(declare-fun tp!1723866 () Bool)

(declare-fun tp!1723863 () Bool)

(assert (=> b!6174704 (= e!3761237 (and tp!1723866 tp!1723863))))

(declare-fun b!6174706 () Bool)

(declare-fun tp!1723862 () Bool)

(declare-fun tp!1723864 () Bool)

(assert (=> b!6174706 (= e!3761237 (and tp!1723862 tp!1723864))))

(declare-fun b!6174705 () Bool)

(declare-fun tp!1723865 () Bool)

(assert (=> b!6174705 (= e!3761237 tp!1723865)))

(declare-fun b!6174703 () Bool)

(assert (=> b!6174703 (= e!3761237 tp_is_empty!41481)))

(assert (=> b!6174114 (= tp!1723783 e!3761237)))

(assert (= (and b!6174114 (is-ElementMatch!16114 (regOne!32741 r!7292))) b!6174703))

(assert (= (and b!6174114 (is-Concat!24959 (regOne!32741 r!7292))) b!6174704))

(assert (= (and b!6174114 (is-Star!16114 (regOne!32741 r!7292))) b!6174705))

(assert (= (and b!6174114 (is-Union!16114 (regOne!32741 r!7292))) b!6174706))

(declare-fun b!6174708 () Bool)

(declare-fun e!3761238 () Bool)

(declare-fun tp!1723871 () Bool)

(declare-fun tp!1723868 () Bool)

(assert (=> b!6174708 (= e!3761238 (and tp!1723871 tp!1723868))))

(declare-fun b!6174710 () Bool)

(declare-fun tp!1723867 () Bool)

(declare-fun tp!1723869 () Bool)

(assert (=> b!6174710 (= e!3761238 (and tp!1723867 tp!1723869))))

(declare-fun b!6174709 () Bool)

(declare-fun tp!1723870 () Bool)

(assert (=> b!6174709 (= e!3761238 tp!1723870)))

(declare-fun b!6174707 () Bool)

(assert (=> b!6174707 (= e!3761238 tp_is_empty!41481)))

(assert (=> b!6174114 (= tp!1723788 e!3761238)))

(assert (= (and b!6174114 (is-ElementMatch!16114 (regTwo!32741 r!7292))) b!6174707))

(assert (= (and b!6174114 (is-Concat!24959 (regTwo!32741 r!7292))) b!6174708))

(assert (= (and b!6174114 (is-Star!16114 (regTwo!32741 r!7292))) b!6174709))

(assert (= (and b!6174114 (is-Union!16114 (regTwo!32741 r!7292))) b!6174710))

(declare-fun b!6174715 () Bool)

(declare-fun e!3761241 () Bool)

(declare-fun tp!1723874 () Bool)

(assert (=> b!6174715 (= e!3761241 (and tp_is_empty!41481 tp!1723874))))

(assert (=> b!6174143 (= tp!1723782 e!3761241)))

(assert (= (and b!6174143 (is-Cons!64519 (t!378147 s!2326))) b!6174715))

(declare-fun b!6174716 () Bool)

(declare-fun e!3761242 () Bool)

(declare-fun tp!1723875 () Bool)

(declare-fun tp!1723876 () Bool)

(assert (=> b!6174716 (= e!3761242 (and tp!1723875 tp!1723876))))

(assert (=> b!6174138 (= tp!1723785 e!3761242)))

(assert (= (and b!6174138 (is-Cons!64517 (exprs!5998 (h!70966 zl!343)))) b!6174716))

(declare-fun b_lambda!235003 () Bool)

(assert (= b_lambda!234999 (or b!6174141 b_lambda!235003)))

(declare-fun bs!1531127 () Bool)

(declare-fun d!1935357 () Bool)

(assert (= bs!1531127 (and d!1935357 b!6174141)))

(assert (=> bs!1531127 (= (dynLambda!25442 lambda!337028 lt!2337792) (derivationStepZipperUp!1288 lt!2337792 (h!70967 s!2326)))))

(assert (=> bs!1531127 m!7010454))

(assert (=> d!1935311 d!1935357))

(declare-fun b_lambda!235005 () Bool)

(assert (= b_lambda!235001 (or b!6174141 b_lambda!235005)))

(declare-fun bs!1531128 () Bool)

(declare-fun d!1935359 () Bool)

(assert (= bs!1531128 (and d!1935359 b!6174141)))

(assert (=> bs!1531128 (= (dynLambda!25442 lambda!337028 lt!2337815) (derivationStepZipperUp!1288 lt!2337815 (h!70967 s!2326)))))

(assert (=> bs!1531128 m!7010452))

(assert (=> d!1935321 d!1935359))

(declare-fun b_lambda!235007 () Bool)

(assert (= b_lambda!234997 (or b!6174141 b_lambda!235007)))

(declare-fun bs!1531129 () Bool)

(declare-fun d!1935361 () Bool)

(assert (= bs!1531129 (and d!1935361 b!6174141)))

(assert (=> bs!1531129 (= (dynLambda!25442 lambda!337028 (h!70966 zl!343)) (derivationStepZipperUp!1288 (h!70966 zl!343) (h!70967 s!2326)))))

(assert (=> bs!1531129 m!7010406))

(assert (=> d!1935273 d!1935361))

(push 1)

(assert (not d!1935259))

(assert (not d!1935261))

(assert (not b!6174368))

(assert (not b!6174708))

(assert (not d!1935289))

(assert (not d!1935327))

(assert (not bm!515196))

(assert (not d!1935337))

(assert (not b!6174654))

(assert (not b!6174715))

(assert (not b!6174701))

(assert (not b!6174439))

(assert (not b!6174481))

(assert (not b!6174471))

(assert (not b!6174629))

(assert (not b!6174576))

(assert (not b!6174313))

(assert (not b!6174627))

(assert (not d!1935321))

(assert (not b!6174638))

(assert (not d!1935311))

(assert (not b!6174430))

(assert (not bm!515191))

(assert (not b!6174437))

(assert (not d!1935319))

(assert (not b!6174685))

(assert (not bs!1531129))

(assert (not d!1935297))

(assert (not b!6174628))

(assert (not b!6174574))

(assert (not d!1935287))

(assert (not b!6174637))

(assert (not bm!515185))

(assert (not b!6174579))

(assert (not b!6174640))

(assert (not b!6174704))

(assert (not b!6174702))

(assert (not b!6174360))

(assert (not bm!515203))

(assert (not d!1935247))

(assert (not b!6174652))

(assert (not d!1935347))

(assert (not b!6174566))

(assert (not bm!515174))

(assert (not d!1935273))

(assert (not bm!515155))

(assert (not bm!515190))

(assert (not b!6174635))

(assert (not b!6174683))

(assert (not b!6174625))

(assert (not b!6174692))

(assert (not b!6174348))

(assert (not d!1935301))

(assert (not b!6174291))

(assert (not b!6174444))

(assert (not b!6174488))

(assert (not bs!1531128))

(assert (not d!1935249))

(assert (not d!1935355))

(assert (not bm!515182))

(assert (not b!6174346))

(assert (not b!6174432))

(assert (not d!1935305))

(assert (not b!6174661))

(assert (not d!1935353))

(assert (not b!6174408))

(assert (not bm!515156))

(assert (not b!6174365))

(assert (not b_lambda!235005))

(assert tp_is_empty!41481)

(assert (not b!6174319))

(assert (not bm!515206))

(assert (not b!6174660))

(assert (not d!1935293))

(assert (not d!1935329))

(assert (not b!6174716))

(assert (not b!6174680))

(assert (not d!1935323))

(assert (not b!6174622))

(assert (not bm!515194))

(assert (not d!1935251))

(assert (not b!6174373))

(assert (not b!6174641))

(assert (not d!1935349))

(assert (not b!6174636))

(assert (not b!6174483))

(assert (not b!6174370))

(assert (not b!6174489))

(assert (not setNonEmpty!41867))

(assert (not b!6174632))

(assert (not b!6174693))

(assert (not d!1935253))

(assert (not b!6174710))

(assert (not b!6174342))

(assert (not b!6174438))

(assert (not b!6174363))

(assert (not bm!515197))

(assert (not b!6174532))

(assert (not b!6174590))

(assert (not b!6174648))

(assert (not b!6174478))

(assert (not bm!515207))

(assert (not bm!515184))

(assert (not b!6174349))

(assert (not b!6174315))

(assert (not b!6174475))

(assert (not bm!515181))

(assert (not b!6174564))

(assert (not b!6174316))

(assert (not b!6174433))

(assert (not b!6174344))

(assert (not bm!515170))

(assert (not b!6174491))

(assert (not d!1935335))

(assert (not b!6174631))

(assert (not d!1935263))

(assert (not d!1935345))

(assert (not b!6174534))

(assert (not b!6174705))

(assert (not d!1935299))

(assert (not d!1935275))

(assert (not b!6174336))

(assert (not bm!515154))

(assert (not d!1935283))

(assert (not b!6174572))

(assert (not b!6174706))

(assert (not b!6174650))

(assert (not d!1935271))

(assert (not b!6174667))

(assert (not d!1935351))

(assert (not b!6174486))

(assert (not d!1935309))

(assert (not bs!1531127))

(assert (not b!6174690))

(assert (not b!6174345))

(assert (not b!6174653))

(assert (not d!1935243))

(assert (not bm!515200))

(assert (not b!6174476))

(assert (not b!6174490))

(assert (not b!6174338))

(assert (not b!6174292))

(assert (not b!6174565))

(assert (not b!6174633))

(assert (not d!1935339))

(assert (not d!1935245))

(assert (not b!6174621))

(assert (not b!6174409))

(assert (not b!6174679))

(assert (not b!6174600))

(assert (not d!1935241))

(assert (not b!6174659))

(assert (not b!6174343))

(assert (not d!1935307))

(assert (not b!6174634))

(assert (not d!1935315))

(assert (not bm!515171))

(assert (not b!6174662))

(assert (not b!6174694))

(assert (not d!1935269))

(assert (not b_lambda!235007))

(assert (not b!6174318))

(assert (not b!6174642))

(assert (not d!1935341))

(assert (not d!1935343))

(assert (not bm!515202))

(assert (not b!6174684))

(assert (not b!6174709))

(assert (not b!6174599))

(assert (not b!6174630))

(assert (not b!6174681))

(assert (not b!6174311))

(assert (not b!6174399))

(assert (not b!6174347))

(assert (not b!6174657))

(assert (not d!1935291))

(assert (not b_lambda!235003))

(assert (not b!6174431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1531184 () Bool)

(declare-fun d!1935485 () Bool)

(assert (= bs!1531184 (and d!1935485 d!1935337)))

(declare-fun lambda!337104 () Int)

(assert (=> bs!1531184 (= lambda!337104 lambda!337071)))

(declare-fun bs!1531185 () Bool)

(assert (= bs!1531185 (and d!1935485 d!1935291)))

(assert (=> bs!1531185 (= lambda!337104 lambda!337058)))

(declare-fun bs!1531186 () Bool)

(assert (= bs!1531186 (and d!1935485 d!1935293)))

(assert (=> bs!1531186 (= lambda!337104 lambda!337061)))

(declare-fun bs!1531187 () Bool)

(assert (= bs!1531187 (and d!1935485 d!1935287)))

(assert (=> bs!1531187 (= lambda!337104 lambda!337055)))

(declare-fun bs!1531188 () Bool)

(assert (= bs!1531188 (and d!1935485 d!1935355)))

(assert (=> bs!1531188 (= lambda!337104 lambda!337073)))

(declare-fun bs!1531189 () Bool)

(assert (= bs!1531189 (and d!1935485 d!1935301)))

(assert (=> bs!1531189 (= lambda!337104 lambda!337062)))

(declare-fun bs!1531190 () Bool)

(assert (= bs!1531190 (and d!1935485 d!1935349)))

(assert (=> bs!1531190 (= lambda!337104 lambda!337072)))

(assert (=> d!1935485 (= (inv!83533 (h!70966 (t!378146 zl!343))) (forall!15233 (exprs!5998 (h!70966 (t!378146 zl!343))) lambda!337104))))

(declare-fun bs!1531191 () Bool)

(assert (= bs!1531191 d!1935485))

(declare-fun m!7011290 () Bool)

(assert (=> bs!1531191 m!7011290))

(assert (=> b!6174701 d!1935485))

(assert (=> b!6174342 d!1935289))

(declare-fun bm!515264 () Bool)

(declare-fun call!515273 () List!64641)

(declare-fun call!515270 () List!64641)

(assert (=> bm!515264 (= call!515273 call!515270)))

(declare-fun b!6175147 () Bool)

(declare-fun e!3761485 () (Set Context!10996))

(assert (=> b!6175147 (= e!3761485 (set.insert (Context!10997 (t!378145 (exprs!5998 lt!2337799))) (as set.empty (Set Context!10996))))))

(declare-fun b!6175149 () Bool)

(declare-fun e!3761486 () Bool)

(assert (=> b!6175149 (= e!3761486 (nullable!6107 (regOne!32740 (h!70965 (exprs!5998 lt!2337799)))))))

(declare-fun b!6175150 () Bool)

(declare-fun e!3761488 () (Set Context!10996))

(declare-fun call!515274 () (Set Context!10996))

(assert (=> b!6175150 (= e!3761488 call!515274)))

(declare-fun b!6175151 () Bool)

(declare-fun e!3761484 () (Set Context!10996))

(declare-fun e!3761487 () (Set Context!10996))

(assert (=> b!6175151 (= e!3761484 e!3761487)))

(declare-fun c!1113034 () Bool)

(assert (=> b!6175151 (= c!1113034 (is-Concat!24959 (h!70965 (exprs!5998 lt!2337799))))))

(declare-fun bm!515265 () Bool)

(declare-fun c!1113031 () Bool)

(assert (=> bm!515265 (= call!515270 ($colon$colon!1989 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337799)))) (ite (or c!1113031 c!1113034) (regTwo!32740 (h!70965 (exprs!5998 lt!2337799))) (h!70965 (exprs!5998 lt!2337799)))))))

(declare-fun b!6175152 () Bool)

(assert (=> b!6175152 (= e!3761487 call!515274)))

(declare-fun b!6175153 () Bool)

(declare-fun e!3761489 () (Set Context!10996))

(declare-fun call!515271 () (Set Context!10996))

(declare-fun call!515269 () (Set Context!10996))

(assert (=> b!6175153 (= e!3761489 (set.union call!515271 call!515269))))

(declare-fun b!6175154 () Bool)

(assert (=> b!6175154 (= e!3761485 e!3761489)))

(declare-fun c!1113035 () Bool)

(assert (=> b!6175154 (= c!1113035 (is-Union!16114 (h!70965 (exprs!5998 lt!2337799))))))

(declare-fun b!6175155 () Bool)

(declare-fun call!515272 () (Set Context!10996))

(assert (=> b!6175155 (= e!3761484 (set.union call!515271 call!515272))))

(declare-fun bm!515266 () Bool)

(assert (=> bm!515266 (= call!515269 (derivationStepZipperDown!1362 (ite c!1113035 (regTwo!32741 (h!70965 (exprs!5998 lt!2337799))) (ite c!1113031 (regTwo!32740 (h!70965 (exprs!5998 lt!2337799))) (ite c!1113034 (regOne!32740 (h!70965 (exprs!5998 lt!2337799))) (reg!16443 (h!70965 (exprs!5998 lt!2337799)))))) (ite (or c!1113035 c!1113031) (Context!10997 (t!378145 (exprs!5998 lt!2337799))) (Context!10997 call!515273)) (h!70967 s!2326)))))

(declare-fun b!6175156 () Bool)

(declare-fun c!1113032 () Bool)

(assert (=> b!6175156 (= c!1113032 (is-Star!16114 (h!70965 (exprs!5998 lt!2337799))))))

(assert (=> b!6175156 (= e!3761487 e!3761488)))

(declare-fun bm!515267 () Bool)

(assert (=> bm!515267 (= call!515272 call!515269)))

(declare-fun bm!515268 () Bool)

(assert (=> bm!515268 (= call!515274 call!515272)))

(declare-fun b!6175148 () Bool)

(assert (=> b!6175148 (= c!1113031 e!3761486)))

(declare-fun res!2555860 () Bool)

(assert (=> b!6175148 (=> (not res!2555860) (not e!3761486))))

(assert (=> b!6175148 (= res!2555860 (is-Concat!24959 (h!70965 (exprs!5998 lt!2337799))))))

(assert (=> b!6175148 (= e!3761489 e!3761484)))

(declare-fun d!1935487 () Bool)

(declare-fun c!1113033 () Bool)

(assert (=> d!1935487 (= c!1113033 (and (is-ElementMatch!16114 (h!70965 (exprs!5998 lt!2337799))) (= (c!1112765 (h!70965 (exprs!5998 lt!2337799))) (h!70967 s!2326))))))

(assert (=> d!1935487 (= (derivationStepZipperDown!1362 (h!70965 (exprs!5998 lt!2337799)) (Context!10997 (t!378145 (exprs!5998 lt!2337799))) (h!70967 s!2326)) e!3761485)))

(declare-fun bm!515269 () Bool)

(assert (=> bm!515269 (= call!515271 (derivationStepZipperDown!1362 (ite c!1113035 (regOne!32741 (h!70965 (exprs!5998 lt!2337799))) (regOne!32740 (h!70965 (exprs!5998 lt!2337799)))) (ite c!1113035 (Context!10997 (t!378145 (exprs!5998 lt!2337799))) (Context!10997 call!515270)) (h!70967 s!2326)))))

(declare-fun b!6175157 () Bool)

(assert (=> b!6175157 (= e!3761488 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935487 c!1113033) b!6175147))

(assert (= (and d!1935487 (not c!1113033)) b!6175154))

(assert (= (and b!6175154 c!1113035) b!6175153))

(assert (= (and b!6175154 (not c!1113035)) b!6175148))

(assert (= (and b!6175148 res!2555860) b!6175149))

(assert (= (and b!6175148 c!1113031) b!6175155))

(assert (= (and b!6175148 (not c!1113031)) b!6175151))

(assert (= (and b!6175151 c!1113034) b!6175152))

(assert (= (and b!6175151 (not c!1113034)) b!6175156))

(assert (= (and b!6175156 c!1113032) b!6175150))

(assert (= (and b!6175156 (not c!1113032)) b!6175157))

(assert (= (or b!6175152 b!6175150) bm!515264))

(assert (= (or b!6175152 b!6175150) bm!515268))

(assert (= (or b!6175155 bm!515264) bm!515265))

(assert (= (or b!6175155 bm!515268) bm!515267))

(assert (= (or b!6175153 bm!515267) bm!515266))

(assert (= (or b!6175153 b!6175155) bm!515269))

(declare-fun m!7011292 () Bool)

(assert (=> b!6175147 m!7011292))

(declare-fun m!7011294 () Bool)

(assert (=> b!6175149 m!7011294))

(declare-fun m!7011296 () Bool)

(assert (=> bm!515266 m!7011296))

(declare-fun m!7011298 () Bool)

(assert (=> bm!515265 m!7011298))

(declare-fun m!7011300 () Bool)

(assert (=> bm!515269 m!7011300))

(assert (=> bm!515156 d!1935487))

(declare-fun d!1935489 () Bool)

(assert (=> d!1935489 (= (isEmpty!36495 (tail!11831 (unfocusZipperList!1535 zl!343))) (is-Nil!64517 (tail!11831 (unfocusZipperList!1535 zl!343))))))

(assert (=> b!6174437 d!1935489))

(declare-fun d!1935491 () Bool)

(assert (=> d!1935491 (= (tail!11831 (unfocusZipperList!1535 zl!343)) (t!378145 (unfocusZipperList!1535 zl!343)))))

(assert (=> b!6174437 d!1935491))

(declare-fun d!1935493 () Bool)

(declare-fun res!2555865 () Bool)

(declare-fun e!3761494 () Bool)

(assert (=> d!1935493 (=> res!2555865 e!3761494)))

(assert (=> d!1935493 (= res!2555865 (is-Nil!64517 (exprs!5998 (h!70966 zl!343))))))

(assert (=> d!1935493 (= (forall!15233 (exprs!5998 (h!70966 zl!343)) lambda!337062) e!3761494)))

(declare-fun b!6175162 () Bool)

(declare-fun e!3761495 () Bool)

(assert (=> b!6175162 (= e!3761494 e!3761495)))

(declare-fun res!2555866 () Bool)

(assert (=> b!6175162 (=> (not res!2555866) (not e!3761495))))

(declare-fun dynLambda!25444 (Int Regex!16114) Bool)

(assert (=> b!6175162 (= res!2555866 (dynLambda!25444 lambda!337062 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6175163 () Bool)

(assert (=> b!6175163 (= e!3761495 (forall!15233 (t!378145 (exprs!5998 (h!70966 zl!343))) lambda!337062))))

(assert (= (and d!1935493 (not res!2555865)) b!6175162))

(assert (= (and b!6175162 res!2555866) b!6175163))

(declare-fun b_lambda!235021 () Bool)

(assert (=> (not b_lambda!235021) (not b!6175162)))

(declare-fun m!7011302 () Bool)

(assert (=> b!6175162 m!7011302))

(declare-fun m!7011304 () Bool)

(assert (=> b!6175163 m!7011304))

(assert (=> d!1935301 d!1935493))

(declare-fun d!1935495 () Bool)

(assert (=> d!1935495 (= (isEmpty!36495 (unfocusZipperList!1535 zl!343)) (is-Nil!64517 (unfocusZipperList!1535 zl!343)))))

(assert (=> b!6174433 d!1935495))

(declare-fun d!1935497 () Bool)

(declare-fun c!1113036 () Bool)

(assert (=> d!1935497 (= c!1113036 (isEmpty!36498 (tail!11830 s!2326)))))

(declare-fun e!3761496 () Bool)

(assert (=> d!1935497 (= (matchZipper!2126 (derivationStepZipper!2085 lt!2337794 (head!12745 s!2326)) (tail!11830 s!2326)) e!3761496)))

(declare-fun b!6175164 () Bool)

(assert (=> b!6175164 (= e!3761496 (nullableZipper!1893 (derivationStepZipper!2085 lt!2337794 (head!12745 s!2326))))))

(declare-fun b!6175165 () Bool)

(assert (=> b!6175165 (= e!3761496 (matchZipper!2126 (derivationStepZipper!2085 (derivationStepZipper!2085 lt!2337794 (head!12745 s!2326)) (head!12745 (tail!11830 s!2326))) (tail!11830 (tail!11830 s!2326))))))

(assert (= (and d!1935497 c!1113036) b!6175164))

(assert (= (and d!1935497 (not c!1113036)) b!6175165))

(assert (=> d!1935497 m!7010634))

(assert (=> d!1935497 m!7010854))

(assert (=> b!6175164 m!7010632))

(declare-fun m!7011306 () Bool)

(assert (=> b!6175164 m!7011306))

(assert (=> b!6175165 m!7010634))

(declare-fun m!7011308 () Bool)

(assert (=> b!6175165 m!7011308))

(assert (=> b!6175165 m!7010632))

(assert (=> b!6175165 m!7011308))

(declare-fun m!7011310 () Bool)

(assert (=> b!6175165 m!7011310))

(assert (=> b!6175165 m!7010634))

(declare-fun m!7011312 () Bool)

(assert (=> b!6175165 m!7011312))

(assert (=> b!6175165 m!7011310))

(assert (=> b!6175165 m!7011312))

(declare-fun m!7011314 () Bool)

(assert (=> b!6175165 m!7011314))

(assert (=> b!6174292 d!1935497))

(declare-fun bs!1531192 () Bool)

(declare-fun d!1935499 () Bool)

(assert (= bs!1531192 (and d!1935499 b!6174141)))

(declare-fun lambda!337107 () Int)

(assert (=> bs!1531192 (= (= (head!12745 s!2326) (h!70967 s!2326)) (= lambda!337107 lambda!337028))))

(assert (=> d!1935499 true))

(assert (=> d!1935499 (= (derivationStepZipper!2085 lt!2337794 (head!12745 s!2326)) (flatMap!1619 lt!2337794 lambda!337107))))

(declare-fun bs!1531193 () Bool)

(assert (= bs!1531193 d!1935499))

(declare-fun m!7011316 () Bool)

(assert (=> bs!1531193 m!7011316))

(assert (=> b!6174292 d!1935499))

(declare-fun d!1935501 () Bool)

(assert (=> d!1935501 (= (head!12745 s!2326) (h!70967 s!2326))))

(assert (=> b!6174292 d!1935501))

(declare-fun d!1935503 () Bool)

(assert (=> d!1935503 (= (tail!11830 s!2326) (t!378147 s!2326))))

(assert (=> b!6174292 d!1935503))

(assert (=> b!6174635 d!1935335))

(declare-fun d!1935505 () Bool)

(declare-fun c!1113039 () Bool)

(assert (=> d!1935505 (= c!1113039 (isEmpty!36498 (tail!11830 s!2326)))))

(declare-fun e!3761497 () Bool)

(assert (=> d!1935505 (= (matchZipper!2126 (derivationStepZipper!2085 lt!2337800 (head!12745 s!2326)) (tail!11830 s!2326)) e!3761497)))

(declare-fun b!6175168 () Bool)

(assert (=> b!6175168 (= e!3761497 (nullableZipper!1893 (derivationStepZipper!2085 lt!2337800 (head!12745 s!2326))))))

(declare-fun b!6175169 () Bool)

(assert (=> b!6175169 (= e!3761497 (matchZipper!2126 (derivationStepZipper!2085 (derivationStepZipper!2085 lt!2337800 (head!12745 s!2326)) (head!12745 (tail!11830 s!2326))) (tail!11830 (tail!11830 s!2326))))))

(assert (= (and d!1935505 c!1113039) b!6175168))

(assert (= (and d!1935505 (not c!1113039)) b!6175169))

(assert (=> d!1935505 m!7010634))

(assert (=> d!1935505 m!7010854))

(assert (=> b!6175168 m!7010838))

(declare-fun m!7011318 () Bool)

(assert (=> b!6175168 m!7011318))

(assert (=> b!6175169 m!7010634))

(assert (=> b!6175169 m!7011308))

(assert (=> b!6175169 m!7010838))

(assert (=> b!6175169 m!7011308))

(declare-fun m!7011320 () Bool)

(assert (=> b!6175169 m!7011320))

(assert (=> b!6175169 m!7010634))

(assert (=> b!6175169 m!7011312))

(assert (=> b!6175169 m!7011320))

(assert (=> b!6175169 m!7011312))

(declare-fun m!7011322 () Bool)

(assert (=> b!6175169 m!7011322))

(assert (=> b!6174491 d!1935505))

(declare-fun bs!1531194 () Bool)

(declare-fun d!1935507 () Bool)

(assert (= bs!1531194 (and d!1935507 b!6174141)))

(declare-fun lambda!337108 () Int)

(assert (=> bs!1531194 (= (= (head!12745 s!2326) (h!70967 s!2326)) (= lambda!337108 lambda!337028))))

(declare-fun bs!1531195 () Bool)

(assert (= bs!1531195 (and d!1935507 d!1935499)))

(assert (=> bs!1531195 (= lambda!337108 lambda!337107)))

(assert (=> d!1935507 true))

(assert (=> d!1935507 (= (derivationStepZipper!2085 lt!2337800 (head!12745 s!2326)) (flatMap!1619 lt!2337800 lambda!337108))))

(declare-fun bs!1531196 () Bool)

(assert (= bs!1531196 d!1935507))

(declare-fun m!7011324 () Bool)

(assert (=> bs!1531196 m!7011324))

(assert (=> b!6174491 d!1935507))

(assert (=> b!6174491 d!1935501))

(assert (=> b!6174491 d!1935503))

(declare-fun d!1935509 () Bool)

(declare-fun lambda!337111 () Int)

(declare-fun exists!2457 ((Set Context!10996) Int) Bool)

(assert (=> d!1935509 (= (nullableZipper!1893 (set.union lt!2337814 lt!2337798)) (exists!2457 (set.union lt!2337814 lt!2337798) lambda!337111))))

(declare-fun bs!1531197 () Bool)

(assert (= bs!1531197 d!1935509))

(declare-fun m!7011326 () Bool)

(assert (=> bs!1531197 m!7011326))

(assert (=> b!6174637 d!1935509))

(declare-fun d!1935511 () Bool)

(declare-fun c!1113042 () Bool)

(assert (=> d!1935511 (= c!1113042 (isEmpty!36498 (t!378147 s!2326)))))

(declare-fun e!3761498 () Bool)

(assert (=> d!1935511 (= (matchZipper!2126 (set.union lt!2337788 lt!2337814) (t!378147 s!2326)) e!3761498)))

(declare-fun b!6175170 () Bool)

(assert (=> b!6175170 (= e!3761498 (nullableZipper!1893 (set.union lt!2337788 lt!2337814)))))

(declare-fun b!6175171 () Bool)

(assert (=> b!6175171 (= e!3761498 (matchZipper!2126 (derivationStepZipper!2085 (set.union lt!2337788 lt!2337814) (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))))))

(assert (= (and d!1935511 c!1113042) b!6175170))

(assert (= (and d!1935511 (not c!1113042)) b!6175171))

(assert (=> d!1935511 m!7010688))

(declare-fun m!7011328 () Bool)

(assert (=> b!6175170 m!7011328))

(assert (=> b!6175171 m!7010692))

(assert (=> b!6175171 m!7010692))

(declare-fun m!7011330 () Bool)

(assert (=> b!6175171 m!7011330))

(assert (=> b!6175171 m!7010696))

(assert (=> b!6175171 m!7011330))

(assert (=> b!6175171 m!7010696))

(declare-fun m!7011332 () Bool)

(assert (=> b!6175171 m!7011332))

(assert (=> d!1935343 d!1935511))

(assert (=> d!1935343 d!1935341))

(declare-fun e!3761501 () Bool)

(declare-fun d!1935513 () Bool)

(assert (=> d!1935513 (= (matchZipper!2126 (set.union lt!2337788 lt!2337814) (t!378147 s!2326)) e!3761501)))

(declare-fun res!2555869 () Bool)

(assert (=> d!1935513 (=> res!2555869 e!3761501)))

(assert (=> d!1935513 (= res!2555869 (matchZipper!2126 lt!2337788 (t!378147 s!2326)))))

(assert (=> d!1935513 true))

(declare-fun _$48!1779 () Unit!157691)

(assert (=> d!1935513 (= (choose!45884 lt!2337788 lt!2337814 (t!378147 s!2326)) _$48!1779)))

(declare-fun b!6175174 () Bool)

(assert (=> b!6175174 (= e!3761501 (matchZipper!2126 lt!2337814 (t!378147 s!2326)))))

(assert (= (and d!1935513 (not res!2555869)) b!6175174))

(assert (=> d!1935513 m!7010910))

(assert (=> d!1935513 m!7010480))

(assert (=> b!6175174 m!7010398))

(assert (=> d!1935343 d!1935513))

(declare-fun d!1935515 () Bool)

(assert (=> d!1935515 (= (isEmpty!36498 s!2326) (is-Nil!64519 s!2326))))

(assert (=> bm!515194 d!1935515))

(declare-fun bs!1531198 () Bool)

(declare-fun d!1935517 () Bool)

(assert (= bs!1531198 (and d!1935517 d!1935509)))

(declare-fun lambda!337112 () Int)

(assert (=> bs!1531198 (= lambda!337112 lambda!337111)))

(assert (=> d!1935517 (= (nullableZipper!1893 lt!2337785) (exists!2457 lt!2337785 lambda!337112))))

(declare-fun bs!1531199 () Bool)

(assert (= bs!1531199 d!1935517))

(declare-fun m!7011334 () Bool)

(assert (=> bs!1531199 m!7011334))

(assert (=> b!6174631 d!1935517))

(declare-fun d!1935519 () Bool)

(declare-fun c!1113045 () Bool)

(assert (=> d!1935519 (= c!1113045 (is-Nil!64518 lt!2337966))))

(declare-fun e!3761504 () (Set Context!10996))

(assert (=> d!1935519 (= (content!12043 lt!2337966) e!3761504)))

(declare-fun b!6175179 () Bool)

(assert (=> b!6175179 (= e!3761504 (as set.empty (Set Context!10996)))))

(declare-fun b!6175180 () Bool)

(assert (=> b!6175180 (= e!3761504 (set.union (set.insert (h!70966 lt!2337966) (as set.empty (Set Context!10996))) (content!12043 (t!378146 lt!2337966))))))

(assert (= (and d!1935519 c!1113045) b!6175179))

(assert (= (and d!1935519 (not c!1113045)) b!6175180))

(declare-fun m!7011336 () Bool)

(assert (=> b!6175180 m!7011336))

(declare-fun m!7011338 () Bool)

(assert (=> b!6175180 m!7011338))

(assert (=> b!6174475 d!1935519))

(declare-fun d!1935521 () Bool)

(declare-fun lt!2338045 () Int)

(assert (=> d!1935521 (>= lt!2338045 0)))

(declare-fun e!3761507 () Int)

(assert (=> d!1935521 (= lt!2338045 e!3761507)))

(declare-fun c!1113049 () Bool)

(assert (=> d!1935521 (= c!1113049 (is-Cons!64517 (exprs!5998 (h!70966 (Cons!64518 lt!2337815 Nil!64518)))))))

(assert (=> d!1935521 (= (contextDepthTotal!271 (h!70966 (Cons!64518 lt!2337815 Nil!64518))) lt!2338045)))

(declare-fun b!6175185 () Bool)

(declare-fun regexDepthTotal!134 (Regex!16114) Int)

(assert (=> b!6175185 (= e!3761507 (+ (regexDepthTotal!134 (h!70965 (exprs!5998 (h!70966 (Cons!64518 lt!2337815 Nil!64518))))) (contextDepthTotal!271 (Context!10997 (t!378145 (exprs!5998 (h!70966 (Cons!64518 lt!2337815 Nil!64518))))))))))

(declare-fun b!6175186 () Bool)

(assert (=> b!6175186 (= e!3761507 1)))

(assert (= (and d!1935521 c!1113049) b!6175185))

(assert (= (and d!1935521 (not c!1113049)) b!6175186))

(declare-fun m!7011340 () Bool)

(assert (=> b!6175185 m!7011340))

(declare-fun m!7011342 () Bool)

(assert (=> b!6175185 m!7011342))

(assert (=> b!6174476 d!1935521))

(declare-fun d!1935523 () Bool)

(declare-fun lt!2338046 () Int)

(assert (=> d!1935523 (>= lt!2338046 0)))

(declare-fun e!3761508 () Int)

(assert (=> d!1935523 (= lt!2338046 e!3761508)))

(declare-fun c!1113050 () Bool)

(assert (=> d!1935523 (= c!1113050 (is-Cons!64518 (t!378146 (Cons!64518 lt!2337815 Nil!64518))))))

(assert (=> d!1935523 (= (zipperDepthTotal!297 (t!378146 (Cons!64518 lt!2337815 Nil!64518))) lt!2338046)))

(declare-fun b!6175187 () Bool)

(assert (=> b!6175187 (= e!3761508 (+ (contextDepthTotal!271 (h!70966 (t!378146 (Cons!64518 lt!2337815 Nil!64518)))) (zipperDepthTotal!297 (t!378146 (t!378146 (Cons!64518 lt!2337815 Nil!64518))))))))

(declare-fun b!6175188 () Bool)

(assert (=> b!6175188 (= e!3761508 0)))

(assert (= (and d!1935523 c!1113050) b!6175187))

(assert (= (and d!1935523 (not c!1113050)) b!6175188))

(declare-fun m!7011344 () Bool)

(assert (=> b!6175187 m!7011344))

(declare-fun m!7011346 () Bool)

(assert (=> b!6175187 m!7011346))

(assert (=> b!6174476 d!1935523))

(declare-fun d!1935525 () Bool)

(assert (=> d!1935525 true))

(declare-fun setRes!41873 () Bool)

(assert (=> d!1935525 setRes!41873))

(declare-fun condSetEmpty!41873 () Bool)

(declare-fun res!2555872 () (Set Context!10996))

(assert (=> d!1935525 (= condSetEmpty!41873 (= res!2555872 (as set.empty (Set Context!10996))))))

(assert (=> d!1935525 (= (choose!45886 lt!2337794 lambda!337028) res!2555872)))

(declare-fun setIsEmpty!41873 () Bool)

(assert (=> setIsEmpty!41873 setRes!41873))

(declare-fun tp!1723940 () Bool)

(declare-fun setElem!41873 () Context!10996)

(declare-fun setNonEmpty!41873 () Bool)

(declare-fun e!3761511 () Bool)

(assert (=> setNonEmpty!41873 (= setRes!41873 (and tp!1723940 (inv!83533 setElem!41873) e!3761511))))

(declare-fun setRest!41873 () (Set Context!10996))

(assert (=> setNonEmpty!41873 (= res!2555872 (set.union (set.insert setElem!41873 (as set.empty (Set Context!10996))) setRest!41873))))

(declare-fun b!6175191 () Bool)

(declare-fun tp!1723939 () Bool)

(assert (=> b!6175191 (= e!3761511 tp!1723939)))

(assert (= (and d!1935525 condSetEmpty!41873) setIsEmpty!41873))

(assert (= (and d!1935525 (not condSetEmpty!41873)) setNonEmpty!41873))

(assert (= setNonEmpty!41873 b!6175191))

(declare-fun m!7011348 () Bool)

(assert (=> setNonEmpty!41873 m!7011348))

(assert (=> d!1935309 d!1935525))

(declare-fun bs!1531200 () Bool)

(declare-fun d!1935527 () Bool)

(assert (= bs!1531200 (and d!1935527 d!1935509)))

(declare-fun lambda!337113 () Int)

(assert (=> bs!1531200 (= lambda!337113 lambda!337111)))

(declare-fun bs!1531201 () Bool)

(assert (= bs!1531201 (and d!1935527 d!1935517)))

(assert (=> bs!1531201 (= lambda!337113 lambda!337112)))

(assert (=> d!1935527 (= (nullableZipper!1893 (set.union lt!2337788 lt!2337798)) (exists!2457 (set.union lt!2337788 lt!2337798) lambda!337113))))

(declare-fun bs!1531202 () Bool)

(assert (= bs!1531202 d!1935527))

(declare-fun m!7011350 () Bool)

(assert (=> bs!1531202 m!7011350))

(assert (=> b!6174348 d!1935527))

(declare-fun bm!515270 () Bool)

(declare-fun call!515279 () List!64641)

(declare-fun call!515276 () List!64641)

(assert (=> bm!515270 (= call!515279 call!515276)))

(declare-fun e!3761513 () (Set Context!10996))

(declare-fun b!6175192 () Bool)

(assert (=> b!6175192 (= e!3761513 (set.insert (ite c!1112878 lt!2337799 (Context!10997 call!515201)) (as set.empty (Set Context!10996))))))

(declare-fun b!6175194 () Bool)

(declare-fun e!3761514 () Bool)

(assert (=> b!6175194 (= e!3761514 (nullable!6107 (regOne!32740 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292)))))))))

(declare-fun b!6175195 () Bool)

(declare-fun e!3761516 () (Set Context!10996))

(declare-fun call!515280 () (Set Context!10996))

(assert (=> b!6175195 (= e!3761516 call!515280)))

(declare-fun b!6175196 () Bool)

(declare-fun e!3761512 () (Set Context!10996))

(declare-fun e!3761515 () (Set Context!10996))

(assert (=> b!6175196 (= e!3761512 e!3761515)))

(declare-fun c!1113054 () Bool)

(assert (=> b!6175196 (= c!1113054 (is-Concat!24959 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))))))

(declare-fun c!1113051 () Bool)

(declare-fun bm!515271 () Bool)

(assert (=> bm!515271 (= call!515276 ($colon$colon!1989 (exprs!5998 (ite c!1112878 lt!2337799 (Context!10997 call!515201))) (ite (or c!1113051 c!1113054) (regTwo!32740 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))) (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292)))))))))

(declare-fun b!6175197 () Bool)

(assert (=> b!6175197 (= e!3761515 call!515280)))

(declare-fun b!6175198 () Bool)

(declare-fun e!3761517 () (Set Context!10996))

(declare-fun call!515277 () (Set Context!10996))

(declare-fun call!515275 () (Set Context!10996))

(assert (=> b!6175198 (= e!3761517 (set.union call!515277 call!515275))))

(declare-fun b!6175199 () Bool)

(assert (=> b!6175199 (= e!3761513 e!3761517)))

(declare-fun c!1113055 () Bool)

(assert (=> b!6175199 (= c!1113055 (is-Union!16114 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))))))

(declare-fun b!6175200 () Bool)

(declare-fun call!515278 () (Set Context!10996))

(assert (=> b!6175200 (= e!3761512 (set.union call!515277 call!515278))))

(declare-fun bm!515272 () Bool)

(assert (=> bm!515272 (= call!515275 (derivationStepZipperDown!1362 (ite c!1113055 (regTwo!32741 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))) (ite c!1113051 (regTwo!32740 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))) (ite c!1113054 (regOne!32740 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))) (reg!16443 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292)))))))) (ite (or c!1113055 c!1113051) (ite c!1112878 lt!2337799 (Context!10997 call!515201)) (Context!10997 call!515279)) (h!70967 s!2326)))))

(declare-fun b!6175201 () Bool)

(declare-fun c!1113052 () Bool)

(assert (=> b!6175201 (= c!1113052 (is-Star!16114 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))))))

(assert (=> b!6175201 (= e!3761515 e!3761516)))

(declare-fun bm!515273 () Bool)

(assert (=> bm!515273 (= call!515278 call!515275)))

(declare-fun bm!515274 () Bool)

(assert (=> bm!515274 (= call!515280 call!515278)))

(declare-fun b!6175193 () Bool)

(assert (=> b!6175193 (= c!1113051 e!3761514)))

(declare-fun res!2555873 () Bool)

(assert (=> b!6175193 (=> (not res!2555873) (not e!3761514))))

(assert (=> b!6175193 (= res!2555873 (is-Concat!24959 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))))))

(assert (=> b!6175193 (= e!3761517 e!3761512)))

(declare-fun c!1113053 () Bool)

(declare-fun d!1935529 () Bool)

(assert (=> d!1935529 (= c!1113053 (and (is-ElementMatch!16114 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))) (= (c!1112765 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))) (h!70967 s!2326))))))

(assert (=> d!1935529 (= (derivationStepZipperDown!1362 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292)))) (ite c!1112878 lt!2337799 (Context!10997 call!515201)) (h!70967 s!2326)) e!3761513)))

(declare-fun bm!515275 () Bool)

(assert (=> bm!515275 (= call!515277 (derivationStepZipperDown!1362 (ite c!1113055 (regOne!32741 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))) (regOne!32740 (ite c!1112878 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292)))))) (ite c!1113055 (ite c!1112878 lt!2337799 (Context!10997 call!515201)) (Context!10997 call!515276)) (h!70967 s!2326)))))

(declare-fun b!6175202 () Bool)

(assert (=> b!6175202 (= e!3761516 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935529 c!1113053) b!6175192))

(assert (= (and d!1935529 (not c!1113053)) b!6175199))

(assert (= (and b!6175199 c!1113055) b!6175198))

(assert (= (and b!6175199 (not c!1113055)) b!6175193))

(assert (= (and b!6175193 res!2555873) b!6175194))

(assert (= (and b!6175193 c!1113051) b!6175200))

(assert (= (and b!6175193 (not c!1113051)) b!6175196))

(assert (= (and b!6175196 c!1113054) b!6175197))

(assert (= (and b!6175196 (not c!1113054)) b!6175201))

(assert (= (and b!6175201 c!1113052) b!6175195))

(assert (= (and b!6175201 (not c!1113052)) b!6175202))

(assert (= (or b!6175197 b!6175195) bm!515270))

(assert (= (or b!6175197 b!6175195) bm!515274))

(assert (= (or b!6175200 bm!515270) bm!515271))

(assert (= (or b!6175200 bm!515274) bm!515273))

(assert (= (or b!6175198 bm!515273) bm!515272))

(assert (= (or b!6175198 b!6175200) bm!515275))

(declare-fun m!7011352 () Bool)

(assert (=> b!6175192 m!7011352))

(declare-fun m!7011354 () Bool)

(assert (=> b!6175194 m!7011354))

(declare-fun m!7011356 () Bool)

(assert (=> bm!515272 m!7011356))

(declare-fun m!7011358 () Bool)

(assert (=> bm!515271 m!7011358))

(declare-fun m!7011360 () Bool)

(assert (=> bm!515275 m!7011360))

(assert (=> bm!515200 d!1935529))

(assert (=> b!6174640 d!1935501))

(assert (=> bs!1531127 d!1935313))

(declare-fun bm!515276 () Bool)

(declare-fun call!515285 () List!64641)

(declare-fun call!515282 () List!64641)

(assert (=> bm!515276 (= call!515285 call!515282)))

(declare-fun e!3761519 () (Set Context!10996))

(declare-fun b!6175203 () Bool)

(assert (=> b!6175203 (= e!3761519 (set.insert (ite (or c!1112878 c!1112874) lt!2337799 (Context!10997 call!515204)) (as set.empty (Set Context!10996))))))

(declare-fun e!3761520 () Bool)

(declare-fun b!6175205 () Bool)

(assert (=> b!6175205 (= e!3761520 (nullable!6107 (regOne!32740 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292)))))))))))

(declare-fun b!6175206 () Bool)

(declare-fun e!3761522 () (Set Context!10996))

(declare-fun call!515286 () (Set Context!10996))

(assert (=> b!6175206 (= e!3761522 call!515286)))

(declare-fun b!6175207 () Bool)

(declare-fun e!3761518 () (Set Context!10996))

(declare-fun e!3761521 () (Set Context!10996))

(assert (=> b!6175207 (= e!3761518 e!3761521)))

(declare-fun c!1113059 () Bool)

(assert (=> b!6175207 (= c!1113059 (is-Concat!24959 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292))))))))))

(declare-fun bm!515277 () Bool)

(declare-fun c!1113056 () Bool)

(assert (=> bm!515277 (= call!515282 ($colon$colon!1989 (exprs!5998 (ite (or c!1112878 c!1112874) lt!2337799 (Context!10997 call!515204))) (ite (or c!1113056 c!1113059) (regTwo!32740 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292))))))) (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292)))))))))))

(declare-fun b!6175208 () Bool)

(assert (=> b!6175208 (= e!3761521 call!515286)))

(declare-fun b!6175209 () Bool)

(declare-fun e!3761523 () (Set Context!10996))

(declare-fun call!515283 () (Set Context!10996))

(declare-fun call!515281 () (Set Context!10996))

(assert (=> b!6175209 (= e!3761523 (set.union call!515283 call!515281))))

(declare-fun b!6175210 () Bool)

(assert (=> b!6175210 (= e!3761519 e!3761523)))

(declare-fun c!1113060 () Bool)

(assert (=> b!6175210 (= c!1113060 (is-Union!16114 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292))))))))))

(declare-fun b!6175211 () Bool)

(declare-fun call!515284 () (Set Context!10996))

(assert (=> b!6175211 (= e!3761518 (set.union call!515283 call!515284))))

(declare-fun bm!515278 () Bool)

(assert (=> bm!515278 (= call!515281 (derivationStepZipperDown!1362 (ite c!1113060 (regTwo!32741 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292))))))) (ite c!1113056 (regTwo!32740 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292))))))) (ite c!1113059 (regOne!32740 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292))))))) (reg!16443 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292)))))))))) (ite (or c!1113060 c!1113056) (ite (or c!1112878 c!1112874) lt!2337799 (Context!10997 call!515204)) (Context!10997 call!515285)) (h!70967 s!2326)))))

(declare-fun b!6175212 () Bool)

(declare-fun c!1113057 () Bool)

(assert (=> b!6175212 (= c!1113057 (is-Star!16114 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292))))))))))

(assert (=> b!6175212 (= e!3761521 e!3761522)))

(declare-fun bm!515279 () Bool)

(assert (=> bm!515279 (= call!515284 call!515281)))

(declare-fun bm!515280 () Bool)

(assert (=> bm!515280 (= call!515286 call!515284)))

(declare-fun b!6175204 () Bool)

(assert (=> b!6175204 (= c!1113056 e!3761520)))

(declare-fun res!2555874 () Bool)

(assert (=> b!6175204 (=> (not res!2555874) (not e!3761520))))

(assert (=> b!6175204 (= res!2555874 (is-Concat!24959 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292))))))))))

(assert (=> b!6175204 (= e!3761523 e!3761518)))

(declare-fun d!1935531 () Bool)

(declare-fun c!1113058 () Bool)

(assert (=> d!1935531 (= c!1113058 (and (is-ElementMatch!16114 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292))))))) (= (c!1112765 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292))))))) (h!70967 s!2326))))))

(assert (=> d!1935531 (= (derivationStepZipperDown!1362 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292)))))) (ite (or c!1112878 c!1112874) lt!2337799 (Context!10997 call!515204)) (h!70967 s!2326)) e!3761519)))

(declare-fun bm!515281 () Bool)

(assert (=> bm!515281 (= call!515283 (derivationStepZipperDown!1362 (ite c!1113060 (regOne!32741 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292))))))) (regOne!32740 (ite c!1112878 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112874 (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (ite c!1112877 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))) (reg!16443 (regTwo!32741 (regOne!32740 r!7292)))))))) (ite c!1113060 (ite (or c!1112878 c!1112874) lt!2337799 (Context!10997 call!515204)) (Context!10997 call!515282)) (h!70967 s!2326)))))

(declare-fun b!6175213 () Bool)

(assert (=> b!6175213 (= e!3761522 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935531 c!1113058) b!6175203))

(assert (= (and d!1935531 (not c!1113058)) b!6175210))

(assert (= (and b!6175210 c!1113060) b!6175209))

(assert (= (and b!6175210 (not c!1113060)) b!6175204))

(assert (= (and b!6175204 res!2555874) b!6175205))

(assert (= (and b!6175204 c!1113056) b!6175211))

(assert (= (and b!6175204 (not c!1113056)) b!6175207))

(assert (= (and b!6175207 c!1113059) b!6175208))

(assert (= (and b!6175207 (not c!1113059)) b!6175212))

(assert (= (and b!6175212 c!1113057) b!6175206))

(assert (= (and b!6175212 (not c!1113057)) b!6175213))

(assert (= (or b!6175208 b!6175206) bm!515276))

(assert (= (or b!6175208 b!6175206) bm!515280))

(assert (= (or b!6175211 bm!515276) bm!515277))

(assert (= (or b!6175211 bm!515280) bm!515279))

(assert (= (or b!6175209 bm!515279) bm!515278))

(assert (= (or b!6175209 b!6175211) bm!515281))

(declare-fun m!7011362 () Bool)

(assert (=> b!6175203 m!7011362))

(declare-fun m!7011364 () Bool)

(assert (=> b!6175205 m!7011364))

(declare-fun m!7011366 () Bool)

(assert (=> bm!515278 m!7011366))

(declare-fun m!7011368 () Bool)

(assert (=> bm!515277 m!7011368))

(declare-fun m!7011370 () Bool)

(assert (=> bm!515281 m!7011370))

(assert (=> bm!515197 d!1935531))

(assert (=> d!1935323 d!1935515))

(assert (=> b!6174444 d!1935337))

(declare-fun bs!1531203 () Bool)

(declare-fun d!1935533 () Bool)

(assert (= bs!1531203 (and d!1935533 d!1935337)))

(declare-fun lambda!337114 () Int)

(assert (=> bs!1531203 (= lambda!337114 lambda!337071)))

(declare-fun bs!1531204 () Bool)

(assert (= bs!1531204 (and d!1935533 d!1935291)))

(assert (=> bs!1531204 (= lambda!337114 lambda!337058)))

(declare-fun bs!1531205 () Bool)

(assert (= bs!1531205 (and d!1935533 d!1935293)))

(assert (=> bs!1531205 (= lambda!337114 lambda!337061)))

(declare-fun bs!1531206 () Bool)

(assert (= bs!1531206 (and d!1935533 d!1935355)))

(assert (=> bs!1531206 (= lambda!337114 lambda!337073)))

(declare-fun bs!1531207 () Bool)

(assert (= bs!1531207 (and d!1935533 d!1935485)))

(assert (=> bs!1531207 (= lambda!337114 lambda!337104)))

(declare-fun bs!1531208 () Bool)

(assert (= bs!1531208 (and d!1935533 d!1935287)))

(assert (=> bs!1531208 (= lambda!337114 lambda!337055)))

(declare-fun bs!1531209 () Bool)

(assert (= bs!1531209 (and d!1935533 d!1935301)))

(assert (=> bs!1531209 (= lambda!337114 lambda!337062)))

(declare-fun bs!1531210 () Bool)

(assert (= bs!1531210 (and d!1935533 d!1935349)))

(assert (=> bs!1531210 (= lambda!337114 lambda!337072)))

(declare-fun lt!2338047 () List!64641)

(assert (=> d!1935533 (forall!15233 lt!2338047 lambda!337114)))

(declare-fun e!3761524 () List!64641)

(assert (=> d!1935533 (= lt!2338047 e!3761524)))

(declare-fun c!1113061 () Bool)

(assert (=> d!1935533 (= c!1113061 (is-Cons!64518 (t!378146 zl!343)))))

(assert (=> d!1935533 (= (unfocusZipperList!1535 (t!378146 zl!343)) lt!2338047)))

(declare-fun b!6175214 () Bool)

(assert (=> b!6175214 (= e!3761524 (Cons!64517 (generalisedConcat!1711 (exprs!5998 (h!70966 (t!378146 zl!343)))) (unfocusZipperList!1535 (t!378146 (t!378146 zl!343)))))))

(declare-fun b!6175215 () Bool)

(assert (=> b!6175215 (= e!3761524 Nil!64517)))

(assert (= (and d!1935533 c!1113061) b!6175214))

(assert (= (and d!1935533 (not c!1113061)) b!6175215))

(declare-fun m!7011372 () Bool)

(assert (=> d!1935533 m!7011372))

(declare-fun m!7011374 () Bool)

(assert (=> b!6175214 m!7011374))

(declare-fun m!7011376 () Bool)

(assert (=> b!6175214 m!7011376))

(assert (=> b!6174444 d!1935533))

(assert (=> d!1935329 d!1935327))

(assert (=> d!1935329 d!1935325))

(declare-fun d!1935535 () Bool)

(assert (=> d!1935535 (= (matchR!8297 r!7292 s!2326) (matchRSpec!3215 r!7292 s!2326))))

(assert (=> d!1935535 true))

(declare-fun _$88!4746 () Unit!157691)

(assert (=> d!1935535 (= (choose!45888 r!7292 s!2326) _$88!4746)))

(declare-fun bs!1531211 () Bool)

(assert (= bs!1531211 d!1935535))

(assert (=> bs!1531211 m!7010442))

(assert (=> bs!1531211 m!7010440))

(assert (=> d!1935329 d!1935535))

(assert (=> d!1935329 d!1935295))

(declare-fun b!6175216 () Bool)

(declare-fun e!3761529 () Bool)

(declare-fun lt!2338048 () Bool)

(assert (=> b!6175216 (= e!3761529 (not lt!2338048))))

(declare-fun b!6175217 () Bool)

(declare-fun e!3761525 () Bool)

(assert (=> b!6175217 (= e!3761525 (= (head!12745 (tail!11830 s!2326)) (c!1112765 (derivativeStep!4831 r!7292 (head!12745 s!2326)))))))

(declare-fun b!6175218 () Bool)

(declare-fun res!2555882 () Bool)

(assert (=> b!6175218 (=> (not res!2555882) (not e!3761525))))

(assert (=> b!6175218 (= res!2555882 (isEmpty!36498 (tail!11830 (tail!11830 s!2326))))))

(declare-fun b!6175219 () Bool)

(declare-fun e!3761530 () Bool)

(assert (=> b!6175219 (= e!3761530 (matchR!8297 (derivativeStep!4831 (derivativeStep!4831 r!7292 (head!12745 s!2326)) (head!12745 (tail!11830 s!2326))) (tail!11830 (tail!11830 s!2326))))))

(declare-fun b!6175220 () Bool)

(declare-fun e!3761531 () Bool)

(declare-fun e!3761526 () Bool)

(assert (=> b!6175220 (= e!3761531 e!3761526)))

(declare-fun res!2555878 () Bool)

(assert (=> b!6175220 (=> (not res!2555878) (not e!3761526))))

(assert (=> b!6175220 (= res!2555878 (not lt!2338048))))

(declare-fun b!6175221 () Bool)

(declare-fun res!2555875 () Bool)

(assert (=> b!6175221 (=> (not res!2555875) (not e!3761525))))

(declare-fun call!515287 () Bool)

(assert (=> b!6175221 (= res!2555875 (not call!515287))))

(declare-fun b!6175222 () Bool)

(declare-fun res!2555877 () Bool)

(assert (=> b!6175222 (=> res!2555877 e!3761531)))

(assert (=> b!6175222 (= res!2555877 e!3761525)))

(declare-fun res!2555881 () Bool)

(assert (=> b!6175222 (=> (not res!2555881) (not e!3761525))))

(assert (=> b!6175222 (= res!2555881 lt!2338048)))

(declare-fun d!1935537 () Bool)

(declare-fun e!3761528 () Bool)

(assert (=> d!1935537 e!3761528))

(declare-fun c!1113062 () Bool)

(assert (=> d!1935537 (= c!1113062 (is-EmptyExpr!16114 (derivativeStep!4831 r!7292 (head!12745 s!2326))))))

(assert (=> d!1935537 (= lt!2338048 e!3761530)))

(declare-fun c!1113063 () Bool)

(assert (=> d!1935537 (= c!1113063 (isEmpty!36498 (tail!11830 s!2326)))))

(assert (=> d!1935537 (validRegex!7850 (derivativeStep!4831 r!7292 (head!12745 s!2326)))))

(assert (=> d!1935537 (= (matchR!8297 (derivativeStep!4831 r!7292 (head!12745 s!2326)) (tail!11830 s!2326)) lt!2338048)))

(declare-fun bm!515282 () Bool)

(assert (=> bm!515282 (= call!515287 (isEmpty!36498 (tail!11830 s!2326)))))

(declare-fun b!6175223 () Bool)

(declare-fun res!2555879 () Bool)

(assert (=> b!6175223 (=> res!2555879 e!3761531)))

(assert (=> b!6175223 (= res!2555879 (not (is-ElementMatch!16114 (derivativeStep!4831 r!7292 (head!12745 s!2326)))))))

(assert (=> b!6175223 (= e!3761529 e!3761531)))

(declare-fun b!6175224 () Bool)

(assert (=> b!6175224 (= e!3761528 e!3761529)))

(declare-fun c!1113064 () Bool)

(assert (=> b!6175224 (= c!1113064 (is-EmptyLang!16114 (derivativeStep!4831 r!7292 (head!12745 s!2326))))))

(declare-fun b!6175225 () Bool)

(assert (=> b!6175225 (= e!3761530 (nullable!6107 (derivativeStep!4831 r!7292 (head!12745 s!2326))))))

(declare-fun b!6175226 () Bool)

(declare-fun e!3761527 () Bool)

(assert (=> b!6175226 (= e!3761526 e!3761527)))

(declare-fun res!2555880 () Bool)

(assert (=> b!6175226 (=> res!2555880 e!3761527)))

(assert (=> b!6175226 (= res!2555880 call!515287)))

(declare-fun b!6175227 () Bool)

(assert (=> b!6175227 (= e!3761527 (not (= (head!12745 (tail!11830 s!2326)) (c!1112765 (derivativeStep!4831 r!7292 (head!12745 s!2326))))))))

(declare-fun b!6175228 () Bool)

(assert (=> b!6175228 (= e!3761528 (= lt!2338048 call!515287))))

(declare-fun b!6175229 () Bool)

(declare-fun res!2555876 () Bool)

(assert (=> b!6175229 (=> res!2555876 e!3761527)))

(assert (=> b!6175229 (= res!2555876 (not (isEmpty!36498 (tail!11830 (tail!11830 s!2326)))))))

(assert (= (and d!1935537 c!1113063) b!6175225))

(assert (= (and d!1935537 (not c!1113063)) b!6175219))

(assert (= (and d!1935537 c!1113062) b!6175228))

(assert (= (and d!1935537 (not c!1113062)) b!6175224))

(assert (= (and b!6175224 c!1113064) b!6175216))

(assert (= (and b!6175224 (not c!1113064)) b!6175223))

(assert (= (and b!6175223 (not res!2555879)) b!6175222))

(assert (= (and b!6175222 res!2555881) b!6175221))

(assert (= (and b!6175221 res!2555875) b!6175218))

(assert (= (and b!6175218 res!2555882) b!6175217))

(assert (= (and b!6175222 (not res!2555877)) b!6175220))

(assert (= (and b!6175220 res!2555878) b!6175226))

(assert (= (and b!6175226 (not res!2555880)) b!6175229))

(assert (= (and b!6175229 (not res!2555876)) b!6175227))

(assert (= (or b!6175228 b!6175221 b!6175226) bm!515282))

(assert (=> b!6175225 m!7010850))

(declare-fun m!7011378 () Bool)

(assert (=> b!6175225 m!7011378))

(assert (=> b!6175219 m!7010634))

(assert (=> b!6175219 m!7011308))

(assert (=> b!6175219 m!7010850))

(assert (=> b!6175219 m!7011308))

(declare-fun m!7011380 () Bool)

(assert (=> b!6175219 m!7011380))

(assert (=> b!6175219 m!7010634))

(assert (=> b!6175219 m!7011312))

(assert (=> b!6175219 m!7011380))

(assert (=> b!6175219 m!7011312))

(declare-fun m!7011382 () Bool)

(assert (=> b!6175219 m!7011382))

(assert (=> b!6175229 m!7010634))

(assert (=> b!6175229 m!7011312))

(assert (=> b!6175229 m!7011312))

(declare-fun m!7011384 () Bool)

(assert (=> b!6175229 m!7011384))

(assert (=> b!6175227 m!7010634))

(assert (=> b!6175227 m!7011308))

(assert (=> d!1935537 m!7010634))

(assert (=> d!1935537 m!7010854))

(assert (=> d!1935537 m!7010850))

(declare-fun m!7011386 () Bool)

(assert (=> d!1935537 m!7011386))

(assert (=> b!6175217 m!7010634))

(assert (=> b!6175217 m!7011308))

(assert (=> bm!515282 m!7010634))

(assert (=> bm!515282 m!7010854))

(assert (=> b!6175218 m!7010634))

(assert (=> b!6175218 m!7011312))

(assert (=> b!6175218 m!7011312))

(assert (=> b!6175218 m!7011384))

(assert (=> b!6174566 d!1935537))

(declare-fun b!6175250 () Bool)

(declare-fun e!3761546 () Regex!16114)

(declare-fun e!3761545 () Regex!16114)

(assert (=> b!6175250 (= e!3761546 e!3761545)))

(declare-fun c!1113079 () Bool)

(assert (=> b!6175250 (= c!1113079 (is-Star!16114 r!7292))))

(declare-fun bm!515291 () Bool)

(declare-fun call!515296 () Regex!16114)

(declare-fun call!515299 () Regex!16114)

(assert (=> bm!515291 (= call!515296 call!515299)))

(declare-fun b!6175251 () Bool)

(assert (=> b!6175251 (= e!3761545 (Concat!24959 call!515296 r!7292))))

(declare-fun bm!515292 () Bool)

(declare-fun c!1113077 () Bool)

(declare-fun c!1113076 () Bool)

(assert (=> bm!515292 (= call!515299 (derivativeStep!4831 (ite c!1113076 (regTwo!32741 r!7292) (ite c!1113079 (reg!16443 r!7292) (ite c!1113077 (regTwo!32740 r!7292) (regOne!32740 r!7292)))) (head!12745 s!2326)))))

(declare-fun b!6175252 () Bool)

(assert (=> b!6175252 (= c!1113077 (nullable!6107 (regOne!32740 r!7292)))))

(declare-fun e!3761543 () Regex!16114)

(assert (=> b!6175252 (= e!3761545 e!3761543)))

(declare-fun b!6175253 () Bool)

(declare-fun e!3761544 () Regex!16114)

(assert (=> b!6175253 (= e!3761544 (ite (= (head!12745 s!2326) (c!1112765 r!7292)) EmptyExpr!16114 EmptyLang!16114))))

(declare-fun b!6175254 () Bool)

(declare-fun call!515298 () Regex!16114)

(assert (=> b!6175254 (= e!3761543 (Union!16114 (Concat!24959 call!515298 (regTwo!32740 r!7292)) EmptyLang!16114))))

(declare-fun b!6175255 () Bool)

(assert (=> b!6175255 (= c!1113076 (is-Union!16114 r!7292))))

(assert (=> b!6175255 (= e!3761544 e!3761546)))

(declare-fun b!6175256 () Bool)

(declare-fun e!3761542 () Regex!16114)

(assert (=> b!6175256 (= e!3761542 EmptyLang!16114)))

(declare-fun call!515297 () Regex!16114)

(declare-fun bm!515293 () Bool)

(assert (=> bm!515293 (= call!515297 (derivativeStep!4831 (ite c!1113076 (regOne!32741 r!7292) (regOne!32740 r!7292)) (head!12745 s!2326)))))

(declare-fun b!6175257 () Bool)

(assert (=> b!6175257 (= e!3761542 e!3761544)))

(declare-fun c!1113078 () Bool)

(assert (=> b!6175257 (= c!1113078 (is-ElementMatch!16114 r!7292))))

(declare-fun b!6175258 () Bool)

(assert (=> b!6175258 (= e!3761543 (Union!16114 (Concat!24959 call!515297 (regTwo!32740 r!7292)) call!515298))))

(declare-fun d!1935539 () Bool)

(declare-fun lt!2338051 () Regex!16114)

(assert (=> d!1935539 (validRegex!7850 lt!2338051)))

(assert (=> d!1935539 (= lt!2338051 e!3761542)))

(declare-fun c!1113075 () Bool)

(assert (=> d!1935539 (= c!1113075 (or (is-EmptyExpr!16114 r!7292) (is-EmptyLang!16114 r!7292)))))

(assert (=> d!1935539 (validRegex!7850 r!7292)))

(assert (=> d!1935539 (= (derivativeStep!4831 r!7292 (head!12745 s!2326)) lt!2338051)))

(declare-fun b!6175259 () Bool)

(assert (=> b!6175259 (= e!3761546 (Union!16114 call!515297 call!515299))))

(declare-fun bm!515294 () Bool)

(assert (=> bm!515294 (= call!515298 call!515296)))

(assert (= (and d!1935539 c!1113075) b!6175256))

(assert (= (and d!1935539 (not c!1113075)) b!6175257))

(assert (= (and b!6175257 c!1113078) b!6175253))

(assert (= (and b!6175257 (not c!1113078)) b!6175255))

(assert (= (and b!6175255 c!1113076) b!6175259))

(assert (= (and b!6175255 (not c!1113076)) b!6175250))

(assert (= (and b!6175250 c!1113079) b!6175251))

(assert (= (and b!6175250 (not c!1113079)) b!6175252))

(assert (= (and b!6175252 c!1113077) b!6175258))

(assert (= (and b!6175252 (not c!1113077)) b!6175254))

(assert (= (or b!6175258 b!6175254) bm!515294))

(assert (= (or b!6175251 bm!515294) bm!515291))

(assert (= (or b!6175259 bm!515291) bm!515292))

(assert (= (or b!6175259 b!6175258) bm!515293))

(assert (=> bm!515292 m!7010630))

(declare-fun m!7011388 () Bool)

(assert (=> bm!515292 m!7011388))

(declare-fun m!7011390 () Bool)

(assert (=> b!6175252 m!7011390))

(assert (=> bm!515293 m!7010630))

(declare-fun m!7011392 () Bool)

(assert (=> bm!515293 m!7011392))

(declare-fun m!7011394 () Bool)

(assert (=> d!1935539 m!7011394))

(assert (=> d!1935539 m!7010494))

(assert (=> b!6174566 d!1935539))

(assert (=> b!6174566 d!1935501))

(assert (=> b!6174566 d!1935503))

(declare-fun d!1935541 () Bool)

(declare-fun c!1113080 () Bool)

(assert (=> d!1935541 (= c!1113080 (isEmpty!36498 (tail!11830 (t!378147 s!2326))))))

(declare-fun e!3761547 () Bool)

(assert (=> d!1935541 (= (matchZipper!2126 (derivationStepZipper!2085 lt!2337788 (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))) e!3761547)))

(declare-fun b!6175260 () Bool)

(assert (=> b!6175260 (= e!3761547 (nullableZipper!1893 (derivationStepZipper!2085 lt!2337788 (head!12745 (t!378147 s!2326)))))))

(declare-fun b!6175261 () Bool)

(assert (=> b!6175261 (= e!3761547 (matchZipper!2126 (derivationStepZipper!2085 (derivationStepZipper!2085 lt!2337788 (head!12745 (t!378147 s!2326))) (head!12745 (tail!11830 (t!378147 s!2326)))) (tail!11830 (tail!11830 (t!378147 s!2326)))))))

(assert (= (and d!1935541 c!1113080) b!6175260))

(assert (= (and d!1935541 (not c!1113080)) b!6175261))

(assert (=> d!1935541 m!7010696))

(declare-fun m!7011396 () Bool)

(assert (=> d!1935541 m!7011396))

(assert (=> b!6175260 m!7010906))

(declare-fun m!7011398 () Bool)

(assert (=> b!6175260 m!7011398))

(assert (=> b!6175261 m!7010696))

(declare-fun m!7011400 () Bool)

(assert (=> b!6175261 m!7011400))

(assert (=> b!6175261 m!7010906))

(assert (=> b!6175261 m!7011400))

(declare-fun m!7011402 () Bool)

(assert (=> b!6175261 m!7011402))

(assert (=> b!6175261 m!7010696))

(declare-fun m!7011404 () Bool)

(assert (=> b!6175261 m!7011404))

(assert (=> b!6175261 m!7011402))

(assert (=> b!6175261 m!7011404))

(declare-fun m!7011406 () Bool)

(assert (=> b!6175261 m!7011406))

(assert (=> b!6174634 d!1935541))

(declare-fun bs!1531212 () Bool)

(declare-fun d!1935543 () Bool)

(assert (= bs!1531212 (and d!1935543 b!6174141)))

(declare-fun lambda!337115 () Int)

(assert (=> bs!1531212 (= (= (head!12745 (t!378147 s!2326)) (h!70967 s!2326)) (= lambda!337115 lambda!337028))))

(declare-fun bs!1531213 () Bool)

(assert (= bs!1531213 (and d!1935543 d!1935499)))

(assert (=> bs!1531213 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337115 lambda!337107))))

(declare-fun bs!1531214 () Bool)

(assert (= bs!1531214 (and d!1935543 d!1935507)))

(assert (=> bs!1531214 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337115 lambda!337108))))

(assert (=> d!1935543 true))

(assert (=> d!1935543 (= (derivationStepZipper!2085 lt!2337788 (head!12745 (t!378147 s!2326))) (flatMap!1619 lt!2337788 lambda!337115))))

(declare-fun bs!1531215 () Bool)

(assert (= bs!1531215 d!1935543))

(declare-fun m!7011408 () Bool)

(assert (=> bs!1531215 m!7011408))

(assert (=> b!6174634 d!1935543))

(declare-fun d!1935545 () Bool)

(assert (=> d!1935545 (= (head!12745 (t!378147 s!2326)) (h!70967 (t!378147 s!2326)))))

(assert (=> b!6174634 d!1935545))

(declare-fun d!1935547 () Bool)

(assert (=> d!1935547 (= (tail!11830 (t!378147 s!2326)) (t!378147 (t!378147 s!2326)))))

(assert (=> b!6174634 d!1935547))

(declare-fun d!1935549 () Bool)

(declare-fun res!2555883 () Bool)

(declare-fun e!3761548 () Bool)

(assert (=> d!1935549 (=> res!2555883 e!3761548)))

(assert (=> d!1935549 (= res!2555883 (is-Nil!64517 lt!2337960))))

(assert (=> d!1935549 (= (forall!15233 lt!2337960 lambda!337061) e!3761548)))

(declare-fun b!6175262 () Bool)

(declare-fun e!3761549 () Bool)

(assert (=> b!6175262 (= e!3761548 e!3761549)))

(declare-fun res!2555884 () Bool)

(assert (=> b!6175262 (=> (not res!2555884) (not e!3761549))))

(assert (=> b!6175262 (= res!2555884 (dynLambda!25444 lambda!337061 (h!70965 lt!2337960)))))

(declare-fun b!6175263 () Bool)

(assert (=> b!6175263 (= e!3761549 (forall!15233 (t!378145 lt!2337960) lambda!337061))))

(assert (= (and d!1935549 (not res!2555883)) b!6175262))

(assert (= (and b!6175262 res!2555884) b!6175263))

(declare-fun b_lambda!235023 () Bool)

(assert (=> (not b_lambda!235023) (not b!6175262)))

(declare-fun m!7011410 () Bool)

(assert (=> b!6175262 m!7011410))

(declare-fun m!7011412 () Bool)

(assert (=> b!6175263 m!7011412))

(assert (=> d!1935293 d!1935549))

(declare-fun d!1935551 () Bool)

(assert (=> d!1935551 (= (isEmpty!36495 (tail!11831 (exprs!5998 (h!70966 zl!343)))) (is-Nil!64517 (tail!11831 (exprs!5998 (h!70966 zl!343)))))))

(assert (=> b!6174629 d!1935551))

(declare-fun d!1935553 () Bool)

(assert (=> d!1935553 (= (tail!11831 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))

(assert (=> b!6174629 d!1935553))

(declare-fun bs!1531216 () Bool)

(declare-fun d!1935555 () Bool)

(assert (= bs!1531216 (and d!1935555 d!1935509)))

(declare-fun lambda!337116 () Int)

(assert (=> bs!1531216 (= lambda!337116 lambda!337111)))

(declare-fun bs!1531217 () Bool)

(assert (= bs!1531217 (and d!1935555 d!1935517)))

(assert (=> bs!1531217 (= lambda!337116 lambda!337112)))

(declare-fun bs!1531218 () Bool)

(assert (= bs!1531218 (and d!1935555 d!1935527)))

(assert (=> bs!1531218 (= lambda!337116 lambda!337113)))

(assert (=> d!1935555 (= (nullableZipper!1893 lt!2337814) (exists!2457 lt!2337814 lambda!337116))))

(declare-fun bs!1531219 () Bool)

(assert (= bs!1531219 d!1935555))

(declare-fun m!7011414 () Bool)

(assert (=> bs!1531219 m!7011414))

(assert (=> b!6174599 d!1935555))

(declare-fun d!1935557 () Bool)

(assert (=> d!1935557 (= (isEmpty!36495 (tail!11831 lt!2337804)) (is-Nil!64517 (tail!11831 lt!2337804)))))

(assert (=> b!6174661 d!1935557))

(declare-fun d!1935559 () Bool)

(assert (=> d!1935559 (= (tail!11831 lt!2337804) (t!378145 lt!2337804))))

(assert (=> b!6174661 d!1935559))

(declare-fun bs!1531220 () Bool)

(declare-fun d!1935561 () Bool)

(assert (= bs!1531220 (and d!1935561 d!1935509)))

(declare-fun lambda!337117 () Int)

(assert (=> bs!1531220 (= lambda!337117 lambda!337111)))

(declare-fun bs!1531221 () Bool)

(assert (= bs!1531221 (and d!1935561 d!1935517)))

(assert (=> bs!1531221 (= lambda!337117 lambda!337112)))

(declare-fun bs!1531222 () Bool)

(assert (= bs!1531222 (and d!1935561 d!1935527)))

(assert (=> bs!1531222 (= lambda!337117 lambda!337113)))

(declare-fun bs!1531223 () Bool)

(assert (= bs!1531223 (and d!1935561 d!1935555)))

(assert (=> bs!1531223 (= lambda!337117 lambda!337116)))

(assert (=> d!1935561 (= (nullableZipper!1893 lt!2337798) (exists!2457 lt!2337798 lambda!337117))))

(declare-fun bs!1531224 () Bool)

(assert (= bs!1531224 d!1935561))

(declare-fun m!7011416 () Bool)

(assert (=> bs!1531224 m!7011416))

(assert (=> b!6174408 d!1935561))

(declare-fun d!1935563 () Bool)

(assert (=> d!1935563 (= (isEmpty!36495 (t!378145 lt!2337804)) (is-Nil!64517 (t!378145 lt!2337804)))))

(assert (=> b!6174657 d!1935563))

(declare-fun d!1935565 () Bool)

(assert (=> d!1935565 (= ($colon$colon!1989 (exprs!5998 lt!2337799) (ite (or c!1112819 c!1112822) (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (h!70965 (exprs!5998 (h!70966 zl!343))))) (Cons!64517 (ite (or c!1112819 c!1112822) (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (h!70965 (exprs!5998 (h!70966 zl!343)))) (exprs!5998 lt!2337799)))))

(assert (=> bm!515170 d!1935565))

(declare-fun d!1935567 () Bool)

(assert (=> d!1935567 (= (isDefined!12708 lt!2337935) (not (isEmpty!36499 lt!2337935)))))

(declare-fun bs!1531225 () Bool)

(assert (= bs!1531225 d!1935567))

(declare-fun m!7011418 () Bool)

(assert (=> bs!1531225 m!7011418))

(assert (=> b!6174319 d!1935567))

(declare-fun d!1935569 () Bool)

(assert (=> d!1935569 (= (isEmpty!36498 (tail!11830 s!2326)) (is-Nil!64519 (tail!11830 s!2326)))))

(assert (=> b!6174652 d!1935569))

(assert (=> b!6174652 d!1935503))

(declare-fun d!1935571 () Bool)

(declare-fun c!1113081 () Bool)

(assert (=> d!1935571 (= c!1113081 (isEmpty!36498 (tail!11830 (t!378147 s!2326))))))

(declare-fun e!3761550 () Bool)

(assert (=> d!1935571 (= (matchZipper!2126 (derivationStepZipper!2085 (set.union lt!2337795 lt!2337798) (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))) e!3761550)))

(declare-fun b!6175264 () Bool)

(assert (=> b!6175264 (= e!3761550 (nullableZipper!1893 (derivationStepZipper!2085 (set.union lt!2337795 lt!2337798) (head!12745 (t!378147 s!2326)))))))

(declare-fun b!6175265 () Bool)

(assert (=> b!6175265 (= e!3761550 (matchZipper!2126 (derivationStepZipper!2085 (derivationStepZipper!2085 (set.union lt!2337795 lt!2337798) (head!12745 (t!378147 s!2326))) (head!12745 (tail!11830 (t!378147 s!2326)))) (tail!11830 (tail!11830 (t!378147 s!2326)))))))

(assert (= (and d!1935571 c!1113081) b!6175264))

(assert (= (and d!1935571 (not c!1113081)) b!6175265))

(assert (=> d!1935571 m!7010696))

(assert (=> d!1935571 m!7011396))

(assert (=> b!6175264 m!7010702))

(declare-fun m!7011420 () Bool)

(assert (=> b!6175264 m!7011420))

(assert (=> b!6175265 m!7010696))

(assert (=> b!6175265 m!7011400))

(assert (=> b!6175265 m!7010702))

(assert (=> b!6175265 m!7011400))

(declare-fun m!7011422 () Bool)

(assert (=> b!6175265 m!7011422))

(assert (=> b!6175265 m!7010696))

(assert (=> b!6175265 m!7011404))

(assert (=> b!6175265 m!7011422))

(assert (=> b!6175265 m!7011404))

(declare-fun m!7011424 () Bool)

(assert (=> b!6175265 m!7011424))

(assert (=> b!6174346 d!1935571))

(declare-fun bs!1531226 () Bool)

(declare-fun d!1935573 () Bool)

(assert (= bs!1531226 (and d!1935573 b!6174141)))

(declare-fun lambda!337118 () Int)

(assert (=> bs!1531226 (= (= (head!12745 (t!378147 s!2326)) (h!70967 s!2326)) (= lambda!337118 lambda!337028))))

(declare-fun bs!1531227 () Bool)

(assert (= bs!1531227 (and d!1935573 d!1935499)))

(assert (=> bs!1531227 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337118 lambda!337107))))

(declare-fun bs!1531228 () Bool)

(assert (= bs!1531228 (and d!1935573 d!1935507)))

(assert (=> bs!1531228 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337118 lambda!337108))))

(declare-fun bs!1531229 () Bool)

(assert (= bs!1531229 (and d!1935573 d!1935543)))

(assert (=> bs!1531229 (= lambda!337118 lambda!337115)))

(assert (=> d!1935573 true))

(assert (=> d!1935573 (= (derivationStepZipper!2085 (set.union lt!2337795 lt!2337798) (head!12745 (t!378147 s!2326))) (flatMap!1619 (set.union lt!2337795 lt!2337798) lambda!337118))))

(declare-fun bs!1531230 () Bool)

(assert (= bs!1531230 d!1935573))

(declare-fun m!7011426 () Bool)

(assert (=> bs!1531230 m!7011426))

(assert (=> b!6174346 d!1935573))

(assert (=> b!6174346 d!1935545))

(assert (=> b!6174346 d!1935547))

(assert (=> d!1935273 d!1935283))

(declare-fun d!1935575 () Bool)

(assert (=> d!1935575 (= (flatMap!1619 z!1189 lambda!337028) (dynLambda!25442 lambda!337028 (h!70966 zl!343)))))

(assert (=> d!1935575 true))

(declare-fun _$13!3147 () Unit!157691)

(assert (=> d!1935575 (= (choose!45885 z!1189 (h!70966 zl!343) lambda!337028) _$13!3147)))

(declare-fun b_lambda!235025 () Bool)

(assert (=> (not b_lambda!235025) (not d!1935575)))

(declare-fun bs!1531231 () Bool)

(assert (= bs!1531231 d!1935575))

(assert (=> bs!1531231 m!7010416))

(assert (=> bs!1531231 m!7010714))

(assert (=> d!1935273 d!1935575))

(declare-fun b!6175266 () Bool)

(declare-fun e!3761555 () Bool)

(declare-fun lt!2338052 () Bool)

(assert (=> b!6175266 (= e!3761555 (not lt!2338052))))

(declare-fun b!6175267 () Bool)

(declare-fun e!3761551 () Bool)

(assert (=> b!6175267 (= e!3761551 (= (head!12745 (_2!36396 (get!22271 lt!2337935))) (c!1112765 (regTwo!32740 r!7292))))))

(declare-fun b!6175268 () Bool)

(declare-fun res!2555892 () Bool)

(assert (=> b!6175268 (=> (not res!2555892) (not e!3761551))))

(assert (=> b!6175268 (= res!2555892 (isEmpty!36498 (tail!11830 (_2!36396 (get!22271 lt!2337935)))))))

(declare-fun b!6175269 () Bool)

(declare-fun e!3761556 () Bool)

(assert (=> b!6175269 (= e!3761556 (matchR!8297 (derivativeStep!4831 (regTwo!32740 r!7292) (head!12745 (_2!36396 (get!22271 lt!2337935)))) (tail!11830 (_2!36396 (get!22271 lt!2337935)))))))

(declare-fun b!6175270 () Bool)

(declare-fun e!3761557 () Bool)

(declare-fun e!3761552 () Bool)

(assert (=> b!6175270 (= e!3761557 e!3761552)))

(declare-fun res!2555888 () Bool)

(assert (=> b!6175270 (=> (not res!2555888) (not e!3761552))))

(assert (=> b!6175270 (= res!2555888 (not lt!2338052))))

(declare-fun b!6175271 () Bool)

(declare-fun res!2555885 () Bool)

(assert (=> b!6175271 (=> (not res!2555885) (not e!3761551))))

(declare-fun call!515300 () Bool)

(assert (=> b!6175271 (= res!2555885 (not call!515300))))

(declare-fun b!6175272 () Bool)

(declare-fun res!2555887 () Bool)

(assert (=> b!6175272 (=> res!2555887 e!3761557)))

(assert (=> b!6175272 (= res!2555887 e!3761551)))

(declare-fun res!2555891 () Bool)

(assert (=> b!6175272 (=> (not res!2555891) (not e!3761551))))

(assert (=> b!6175272 (= res!2555891 lt!2338052)))

(declare-fun d!1935577 () Bool)

(declare-fun e!3761554 () Bool)

(assert (=> d!1935577 e!3761554))

(declare-fun c!1113082 () Bool)

(assert (=> d!1935577 (= c!1113082 (is-EmptyExpr!16114 (regTwo!32740 r!7292)))))

(assert (=> d!1935577 (= lt!2338052 e!3761556)))

(declare-fun c!1113083 () Bool)

(assert (=> d!1935577 (= c!1113083 (isEmpty!36498 (_2!36396 (get!22271 lt!2337935))))))

(assert (=> d!1935577 (validRegex!7850 (regTwo!32740 r!7292))))

(assert (=> d!1935577 (= (matchR!8297 (regTwo!32740 r!7292) (_2!36396 (get!22271 lt!2337935))) lt!2338052)))

(declare-fun bm!515295 () Bool)

(assert (=> bm!515295 (= call!515300 (isEmpty!36498 (_2!36396 (get!22271 lt!2337935))))))

(declare-fun b!6175273 () Bool)

(declare-fun res!2555889 () Bool)

(assert (=> b!6175273 (=> res!2555889 e!3761557)))

(assert (=> b!6175273 (= res!2555889 (not (is-ElementMatch!16114 (regTwo!32740 r!7292))))))

(assert (=> b!6175273 (= e!3761555 e!3761557)))

(declare-fun b!6175274 () Bool)

(assert (=> b!6175274 (= e!3761554 e!3761555)))

(declare-fun c!1113084 () Bool)

(assert (=> b!6175274 (= c!1113084 (is-EmptyLang!16114 (regTwo!32740 r!7292)))))

(declare-fun b!6175275 () Bool)

(assert (=> b!6175275 (= e!3761556 (nullable!6107 (regTwo!32740 r!7292)))))

(declare-fun b!6175276 () Bool)

(declare-fun e!3761553 () Bool)

(assert (=> b!6175276 (= e!3761552 e!3761553)))

(declare-fun res!2555890 () Bool)

(assert (=> b!6175276 (=> res!2555890 e!3761553)))

(assert (=> b!6175276 (= res!2555890 call!515300)))

(declare-fun b!6175277 () Bool)

(assert (=> b!6175277 (= e!3761553 (not (= (head!12745 (_2!36396 (get!22271 lt!2337935))) (c!1112765 (regTwo!32740 r!7292)))))))

(declare-fun b!6175278 () Bool)

(assert (=> b!6175278 (= e!3761554 (= lt!2338052 call!515300))))

(declare-fun b!6175279 () Bool)

(declare-fun res!2555886 () Bool)

(assert (=> b!6175279 (=> res!2555886 e!3761553)))

(assert (=> b!6175279 (= res!2555886 (not (isEmpty!36498 (tail!11830 (_2!36396 (get!22271 lt!2337935))))))))

(assert (= (and d!1935577 c!1113083) b!6175275))

(assert (= (and d!1935577 (not c!1113083)) b!6175269))

(assert (= (and d!1935577 c!1113082) b!6175278))

(assert (= (and d!1935577 (not c!1113082)) b!6175274))

(assert (= (and b!6175274 c!1113084) b!6175266))

(assert (= (and b!6175274 (not c!1113084)) b!6175273))

(assert (= (and b!6175273 (not res!2555889)) b!6175272))

(assert (= (and b!6175272 res!2555891) b!6175271))

(assert (= (and b!6175271 res!2555885) b!6175268))

(assert (= (and b!6175268 res!2555892) b!6175267))

(assert (= (and b!6175272 (not res!2555887)) b!6175270))

(assert (= (and b!6175270 res!2555888) b!6175276))

(assert (= (and b!6175276 (not res!2555890)) b!6175279))

(assert (= (and b!6175279 (not res!2555886)) b!6175277))

(assert (= (or b!6175278 b!6175271 b!6175276) bm!515295))

(declare-fun m!7011428 () Bool)

(assert (=> b!6175275 m!7011428))

(declare-fun m!7011430 () Bool)

(assert (=> b!6175269 m!7011430))

(assert (=> b!6175269 m!7011430))

(declare-fun m!7011432 () Bool)

(assert (=> b!6175269 m!7011432))

(declare-fun m!7011434 () Bool)

(assert (=> b!6175269 m!7011434))

(assert (=> b!6175269 m!7011432))

(assert (=> b!6175269 m!7011434))

(declare-fun m!7011436 () Bool)

(assert (=> b!6175269 m!7011436))

(assert (=> b!6175279 m!7011434))

(assert (=> b!6175279 m!7011434))

(declare-fun m!7011438 () Bool)

(assert (=> b!6175279 m!7011438))

(assert (=> b!6175277 m!7011430))

(declare-fun m!7011440 () Bool)

(assert (=> d!1935577 m!7011440))

(declare-fun m!7011442 () Bool)

(assert (=> d!1935577 m!7011442))

(assert (=> b!6175267 m!7011430))

(assert (=> bm!515295 m!7011440))

(assert (=> b!6175268 m!7011434))

(assert (=> b!6175268 m!7011434))

(assert (=> b!6175268 m!7011438))

(assert (=> b!6174315 d!1935577))

(declare-fun d!1935579 () Bool)

(assert (=> d!1935579 (= (get!22271 lt!2337935) (v!52145 lt!2337935))))

(assert (=> b!6174315 d!1935579))

(declare-fun d!1935581 () Bool)

(assert (=> d!1935581 (= (nullable!6107 lt!2337803) (nullableFct!2069 lt!2337803))))

(declare-fun bs!1531232 () Bool)

(assert (= bs!1531232 d!1935581))

(declare-fun m!7011444 () Bool)

(assert (=> bs!1531232 m!7011444))

(assert (=> b!6174648 d!1935581))

(declare-fun d!1935583 () Bool)

(assert (=> d!1935583 (= (nullable!6107 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292)))) (nullableFct!2069 (regOne!32740 (regTwo!32741 (regOne!32740 r!7292)))))))

(declare-fun bs!1531233 () Bool)

(assert (= bs!1531233 d!1935583))

(declare-fun m!7011446 () Bool)

(assert (=> bs!1531233 m!7011446))

(assert (=> b!6174579 d!1935583))

(declare-fun d!1935585 () Bool)

(assert (=> d!1935585 (= (isEmpty!36498 (t!378147 s!2326)) (is-Nil!64519 (t!378147 s!2326)))))

(assert (=> d!1935263 d!1935585))

(declare-fun d!1935587 () Bool)

(declare-fun res!2555893 () Bool)

(declare-fun e!3761558 () Bool)

(assert (=> d!1935587 (=> res!2555893 e!3761558)))

(assert (=> d!1935587 (= res!2555893 (is-Nil!64517 (exprs!5998 lt!2337815)))))

(assert (=> d!1935587 (= (forall!15233 (exprs!5998 lt!2337815) lambda!337072) e!3761558)))

(declare-fun b!6175280 () Bool)

(declare-fun e!3761559 () Bool)

(assert (=> b!6175280 (= e!3761558 e!3761559)))

(declare-fun res!2555894 () Bool)

(assert (=> b!6175280 (=> (not res!2555894) (not e!3761559))))

(assert (=> b!6175280 (= res!2555894 (dynLambda!25444 lambda!337072 (h!70965 (exprs!5998 lt!2337815))))))

(declare-fun b!6175281 () Bool)

(assert (=> b!6175281 (= e!3761559 (forall!15233 (t!378145 (exprs!5998 lt!2337815)) lambda!337072))))

(assert (= (and d!1935587 (not res!2555893)) b!6175280))

(assert (= (and b!6175280 res!2555894) b!6175281))

(declare-fun b_lambda!235027 () Bool)

(assert (=> (not b_lambda!235027) (not b!6175280)))

(declare-fun m!7011448 () Bool)

(assert (=> b!6175280 m!7011448))

(declare-fun m!7011450 () Bool)

(assert (=> b!6175281 m!7011450))

(assert (=> d!1935349 d!1935587))

(assert (=> d!1935241 d!1935515))

(assert (=> d!1935341 d!1935585))

(declare-fun d!1935589 () Bool)

(assert (=> d!1935589 (= (nullable!6107 (h!70965 (exprs!5998 lt!2337799))) (nullableFct!2069 (h!70965 (exprs!5998 lt!2337799))))))

(declare-fun bs!1531234 () Bool)

(assert (= bs!1531234 d!1935589))

(declare-fun m!7011452 () Bool)

(assert (=> bs!1531234 m!7011452))

(assert (=> b!6174373 d!1935589))

(declare-fun bs!1531235 () Bool)

(declare-fun d!1935591 () Bool)

(assert (= bs!1531235 (and d!1935591 d!1935337)))

(declare-fun lambda!337119 () Int)

(assert (=> bs!1531235 (= lambda!337119 lambda!337071)))

(declare-fun bs!1531236 () Bool)

(assert (= bs!1531236 (and d!1935591 d!1935291)))

(assert (=> bs!1531236 (= lambda!337119 lambda!337058)))

(declare-fun bs!1531237 () Bool)

(assert (= bs!1531237 (and d!1935591 d!1935293)))

(assert (=> bs!1531237 (= lambda!337119 lambda!337061)))

(declare-fun bs!1531238 () Bool)

(assert (= bs!1531238 (and d!1935591 d!1935533)))

(assert (=> bs!1531238 (= lambda!337119 lambda!337114)))

(declare-fun bs!1531239 () Bool)

(assert (= bs!1531239 (and d!1935591 d!1935355)))

(assert (=> bs!1531239 (= lambda!337119 lambda!337073)))

(declare-fun bs!1531240 () Bool)

(assert (= bs!1531240 (and d!1935591 d!1935485)))

(assert (=> bs!1531240 (= lambda!337119 lambda!337104)))

(declare-fun bs!1531241 () Bool)

(assert (= bs!1531241 (and d!1935591 d!1935287)))

(assert (=> bs!1531241 (= lambda!337119 lambda!337055)))

(declare-fun bs!1531242 () Bool)

(assert (= bs!1531242 (and d!1935591 d!1935301)))

(assert (=> bs!1531242 (= lambda!337119 lambda!337062)))

(declare-fun bs!1531243 () Bool)

(assert (= bs!1531243 (and d!1935591 d!1935349)))

(assert (=> bs!1531243 (= lambda!337119 lambda!337072)))

(declare-fun b!6175282 () Bool)

(declare-fun e!3761564 () Bool)

(assert (=> b!6175282 (= e!3761564 (isEmpty!36495 (t!378145 (t!378145 (unfocusZipperList!1535 zl!343)))))))

(declare-fun b!6175283 () Bool)

(declare-fun e!3761562 () Bool)

(declare-fun lt!2338053 () Regex!16114)

(assert (=> b!6175283 (= e!3761562 (isEmptyLang!1539 lt!2338053))))

(declare-fun b!6175284 () Bool)

(declare-fun e!3761561 () Bool)

(assert (=> b!6175284 (= e!3761561 (= lt!2338053 (head!12746 (t!378145 (unfocusZipperList!1535 zl!343)))))))

(declare-fun b!6175285 () Bool)

(declare-fun e!3761563 () Bool)

(assert (=> b!6175285 (= e!3761563 e!3761562)))

(declare-fun c!1113086 () Bool)

(assert (=> b!6175285 (= c!1113086 (isEmpty!36495 (t!378145 (unfocusZipperList!1535 zl!343))))))

(declare-fun b!6175286 () Bool)

(declare-fun e!3761565 () Regex!16114)

(assert (=> b!6175286 (= e!3761565 (h!70965 (t!378145 (unfocusZipperList!1535 zl!343))))))

(declare-fun b!6175287 () Bool)

(declare-fun e!3761560 () Regex!16114)

(assert (=> b!6175287 (= e!3761565 e!3761560)))

(declare-fun c!1113087 () Bool)

(assert (=> b!6175287 (= c!1113087 (is-Cons!64517 (t!378145 (unfocusZipperList!1535 zl!343))))))

(declare-fun b!6175288 () Bool)

(assert (=> b!6175288 (= e!3761560 EmptyLang!16114)))

(declare-fun b!6175289 () Bool)

(assert (=> b!6175289 (= e!3761562 e!3761561)))

(declare-fun c!1113085 () Bool)

(assert (=> b!6175289 (= c!1113085 (isEmpty!36495 (tail!11831 (t!378145 (unfocusZipperList!1535 zl!343)))))))

(assert (=> d!1935591 e!3761563))

(declare-fun res!2555895 () Bool)

(assert (=> d!1935591 (=> (not res!2555895) (not e!3761563))))

(assert (=> d!1935591 (= res!2555895 (validRegex!7850 lt!2338053))))

(assert (=> d!1935591 (= lt!2338053 e!3761565)))

(declare-fun c!1113088 () Bool)

(assert (=> d!1935591 (= c!1113088 e!3761564)))

(declare-fun res!2555896 () Bool)

(assert (=> d!1935591 (=> (not res!2555896) (not e!3761564))))

(assert (=> d!1935591 (= res!2555896 (is-Cons!64517 (t!378145 (unfocusZipperList!1535 zl!343))))))

(assert (=> d!1935591 (forall!15233 (t!378145 (unfocusZipperList!1535 zl!343)) lambda!337119)))

(assert (=> d!1935591 (= (generalisedUnion!1958 (t!378145 (unfocusZipperList!1535 zl!343))) lt!2338053)))

(declare-fun b!6175290 () Bool)

(assert (=> b!6175290 (= e!3761560 (Union!16114 (h!70965 (t!378145 (unfocusZipperList!1535 zl!343))) (generalisedUnion!1958 (t!378145 (t!378145 (unfocusZipperList!1535 zl!343))))))))

(declare-fun b!6175291 () Bool)

(assert (=> b!6175291 (= e!3761561 (isUnion!969 lt!2338053))))

(assert (= (and d!1935591 res!2555896) b!6175282))

(assert (= (and d!1935591 c!1113088) b!6175286))

(assert (= (and d!1935591 (not c!1113088)) b!6175287))

(assert (= (and b!6175287 c!1113087) b!6175290))

(assert (= (and b!6175287 (not c!1113087)) b!6175288))

(assert (= (and d!1935591 res!2555895) b!6175285))

(assert (= (and b!6175285 c!1113086) b!6175283))

(assert (= (and b!6175285 (not c!1113086)) b!6175289))

(assert (= (and b!6175289 c!1113085) b!6175284))

(assert (= (and b!6175289 (not c!1113085)) b!6175291))

(declare-fun m!7011454 () Bool)

(assert (=> b!6175282 m!7011454))

(declare-fun m!7011456 () Bool)

(assert (=> b!6175290 m!7011456))

(declare-fun m!7011458 () Bool)

(assert (=> d!1935591 m!7011458))

(declare-fun m!7011460 () Bool)

(assert (=> d!1935591 m!7011460))

(declare-fun m!7011462 () Bool)

(assert (=> b!6175284 m!7011462))

(declare-fun m!7011464 () Bool)

(assert (=> b!6175291 m!7011464))

(assert (=> b!6175285 m!7010758))

(declare-fun m!7011466 () Bool)

(assert (=> b!6175283 m!7011466))

(declare-fun m!7011468 () Bool)

(assert (=> b!6175289 m!7011468))

(assert (=> b!6175289 m!7011468))

(declare-fun m!7011470 () Bool)

(assert (=> b!6175289 m!7011470))

(assert (=> b!6174438 d!1935591))

(assert (=> b!6174625 d!1935267))

(assert (=> b!6174574 d!1935501))

(declare-fun d!1935593 () Bool)

(declare-fun lt!2338054 () Int)

(assert (=> d!1935593 (>= lt!2338054 0)))

(declare-fun e!3761566 () Int)

(assert (=> d!1935593 (= lt!2338054 e!3761566)))

(declare-fun c!1113089 () Bool)

(assert (=> d!1935593 (= c!1113089 (is-Cons!64517 (exprs!5998 (h!70966 lt!2337802))))))

(assert (=> d!1935593 (= (contextDepthTotal!271 (h!70966 lt!2337802)) lt!2338054)))

(declare-fun b!6175292 () Bool)

(assert (=> b!6175292 (= e!3761566 (+ (regexDepthTotal!134 (h!70965 (exprs!5998 (h!70966 lt!2337802)))) (contextDepthTotal!271 (Context!10997 (t!378145 (exprs!5998 (h!70966 lt!2337802)))))))))

(declare-fun b!6175293 () Bool)

(assert (=> b!6175293 (= e!3761566 1)))

(assert (= (and d!1935593 c!1113089) b!6175292))

(assert (= (and d!1935593 (not c!1113089)) b!6175293))

(declare-fun m!7011472 () Bool)

(assert (=> b!6175292 m!7011472))

(declare-fun m!7011474 () Bool)

(assert (=> b!6175292 m!7011474))

(assert (=> b!6174338 d!1935593))

(declare-fun d!1935595 () Bool)

(declare-fun lt!2338055 () Int)

(assert (=> d!1935595 (>= lt!2338055 0)))

(declare-fun e!3761567 () Int)

(assert (=> d!1935595 (= lt!2338055 e!3761567)))

(declare-fun c!1113090 () Bool)

(assert (=> d!1935595 (= c!1113090 (is-Cons!64518 (t!378146 lt!2337802)))))

(assert (=> d!1935595 (= (zipperDepthTotal!297 (t!378146 lt!2337802)) lt!2338055)))

(declare-fun b!6175294 () Bool)

(assert (=> b!6175294 (= e!3761567 (+ (contextDepthTotal!271 (h!70966 (t!378146 lt!2337802))) (zipperDepthTotal!297 (t!378146 (t!378146 lt!2337802)))))))

(declare-fun b!6175295 () Bool)

(assert (=> b!6175295 (= e!3761567 0)))

(assert (= (and d!1935595 c!1113090) b!6175294))

(assert (= (and d!1935595 (not c!1113090)) b!6175295))

(declare-fun m!7011476 () Bool)

(assert (=> b!6175294 m!7011476))

(declare-fun m!7011478 () Bool)

(assert (=> b!6175294 m!7011478))

(assert (=> b!6174338 d!1935595))

(declare-fun b!6175297 () Bool)

(declare-fun e!3761569 () (Set Context!10996))

(declare-fun e!3761568 () (Set Context!10996))

(assert (=> b!6175297 (= e!3761569 e!3761568)))

(declare-fun c!1113092 () Bool)

(assert (=> b!6175297 (= c!1113092 (is-Cons!64517 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337799))))))))

(declare-fun b!6175298 () Bool)

(declare-fun call!515301 () (Set Context!10996))

(assert (=> b!6175298 (= e!3761568 call!515301)))

(declare-fun bm!515296 () Bool)

(assert (=> bm!515296 (= call!515301 (derivationStepZipperDown!1362 (h!70965 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337799))))) (Context!10997 (t!378145 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337799)))))) (h!70967 s!2326)))))

(declare-fun b!6175299 () Bool)

(declare-fun e!3761570 () Bool)

(assert (=> b!6175299 (= e!3761570 (nullable!6107 (h!70965 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337799)))))))))

(declare-fun b!6175300 () Bool)

(assert (=> b!6175300 (= e!3761568 (as set.empty (Set Context!10996)))))

(declare-fun b!6175296 () Bool)

(assert (=> b!6175296 (= e!3761569 (set.union call!515301 (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337799)))))) (h!70967 s!2326))))))

(declare-fun d!1935597 () Bool)

(declare-fun c!1113091 () Bool)

(assert (=> d!1935597 (= c!1113091 e!3761570)))

(declare-fun res!2555897 () Bool)

(assert (=> d!1935597 (=> (not res!2555897) (not e!3761570))))

(assert (=> d!1935597 (= res!2555897 (is-Cons!64517 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337799))))))))

(assert (=> d!1935597 (= (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 lt!2337799))) (h!70967 s!2326)) e!3761569)))

(assert (= (and d!1935597 res!2555897) b!6175299))

(assert (= (and d!1935597 c!1113091) b!6175296))

(assert (= (and d!1935597 (not c!1113091)) b!6175297))

(assert (= (and b!6175297 c!1113092) b!6175298))

(assert (= (and b!6175297 (not c!1113092)) b!6175300))

(assert (= (or b!6175296 b!6175298) bm!515296))

(declare-fun m!7011480 () Bool)

(assert (=> bm!515296 m!7011480))

(declare-fun m!7011482 () Bool)

(assert (=> b!6175299 m!7011482))

(declare-fun m!7011484 () Bool)

(assert (=> b!6175296 m!7011484))

(assert (=> b!6174370 d!1935597))

(declare-fun d!1935599 () Bool)

(assert (=> d!1935599 (= (head!12746 (exprs!5998 (h!70966 zl!343))) (h!70965 (exprs!5998 (h!70966 zl!343))))))

(assert (=> b!6174621 d!1935599))

(declare-fun bs!1531244 () Bool)

(declare-fun b!6175308 () Bool)

(assert (= bs!1531244 (and b!6175308 b!6174146)))

(declare-fun lambda!337120 () Int)

(assert (=> bs!1531244 (not (= lambda!337120 lambda!337026))))

(assert (=> bs!1531244 (not (= lambda!337120 lambda!337027))))

(declare-fun bs!1531245 () Bool)

(assert (= bs!1531245 (and b!6175308 d!1935249)))

(assert (=> bs!1531245 (not (= lambda!337120 lambda!337046))))

(declare-fun bs!1531246 () Bool)

(assert (= bs!1531246 (and b!6175308 d!1935251)))

(assert (=> bs!1531246 (not (= lambda!337120 lambda!337051))))

(assert (=> bs!1531246 (not (= lambda!337120 lambda!337052))))

(declare-fun bs!1531247 () Bool)

(assert (= bs!1531247 (and b!6175308 b!6174526)))

(assert (=> bs!1531247 (not (= lambda!337120 lambda!337068))))

(declare-fun bs!1531248 () Bool)

(assert (= bs!1531248 (and b!6175308 b!6174531)))

(assert (=> bs!1531248 (= (and (= (reg!16443 (regTwo!32741 r!7292)) (reg!16443 r!7292)) (= (regTwo!32741 r!7292) r!7292)) (= lambda!337120 lambda!337067))))

(assert (=> b!6175308 true))

(assert (=> b!6175308 true))

(declare-fun bs!1531249 () Bool)

(declare-fun b!6175303 () Bool)

(assert (= bs!1531249 (and b!6175303 b!6174146)))

(declare-fun lambda!337121 () Int)

(assert (=> bs!1531249 (not (= lambda!337121 lambda!337026))))

(declare-fun bs!1531250 () Bool)

(assert (= bs!1531250 (and b!6175303 d!1935249)))

(assert (=> bs!1531250 (not (= lambda!337121 lambda!337046))))

(declare-fun bs!1531251 () Bool)

(assert (= bs!1531251 (and b!6175303 d!1935251)))

(assert (=> bs!1531251 (not (= lambda!337121 lambda!337051))))

(assert (=> bs!1531251 (= (and (= (regOne!32740 (regTwo!32741 r!7292)) (regOne!32740 r!7292)) (= (regTwo!32740 (regTwo!32741 r!7292)) (regTwo!32740 r!7292))) (= lambda!337121 lambda!337052))))

(declare-fun bs!1531252 () Bool)

(assert (= bs!1531252 (and b!6175303 b!6175308)))

(assert (=> bs!1531252 (not (= lambda!337121 lambda!337120))))

(assert (=> bs!1531249 (= (and (= (regOne!32740 (regTwo!32741 r!7292)) (regOne!32740 r!7292)) (= (regTwo!32740 (regTwo!32741 r!7292)) (regTwo!32740 r!7292))) (= lambda!337121 lambda!337027))))

(declare-fun bs!1531253 () Bool)

(assert (= bs!1531253 (and b!6175303 b!6174526)))

(assert (=> bs!1531253 (= (and (= (regOne!32740 (regTwo!32741 r!7292)) (regOne!32740 r!7292)) (= (regTwo!32740 (regTwo!32741 r!7292)) (regTwo!32740 r!7292))) (= lambda!337121 lambda!337068))))

(declare-fun bs!1531254 () Bool)

(assert (= bs!1531254 (and b!6175303 b!6174531)))

(assert (=> bs!1531254 (not (= lambda!337121 lambda!337067))))

(assert (=> b!6175303 true))

(assert (=> b!6175303 true))

(declare-fun b!6175301 () Bool)

(declare-fun e!3761574 () Bool)

(assert (=> b!6175301 (= e!3761574 (= s!2326 (Cons!64519 (c!1112765 (regTwo!32741 r!7292)) Nil!64519)))))

(declare-fun b!6175302 () Bool)

(declare-fun res!2555899 () Bool)

(declare-fun e!3761576 () Bool)

(assert (=> b!6175302 (=> res!2555899 e!3761576)))

(declare-fun call!515302 () Bool)

(assert (=> b!6175302 (= res!2555899 call!515302)))

(declare-fun e!3761572 () Bool)

(assert (=> b!6175302 (= e!3761572 e!3761576)))

(declare-fun call!515303 () Bool)

(assert (=> b!6175303 (= e!3761572 call!515303)))

(declare-fun b!6175304 () Bool)

(declare-fun c!1113095 () Bool)

(assert (=> b!6175304 (= c!1113095 (is-Union!16114 (regTwo!32741 r!7292)))))

(declare-fun e!3761575 () Bool)

(assert (=> b!6175304 (= e!3761574 e!3761575)))

(declare-fun c!1113093 () Bool)

(declare-fun bm!515297 () Bool)

(assert (=> bm!515297 (= call!515303 (Exists!3184 (ite c!1113093 lambda!337120 lambda!337121)))))

(declare-fun b!6175305 () Bool)

(declare-fun c!1113094 () Bool)

(assert (=> b!6175305 (= c!1113094 (is-ElementMatch!16114 (regTwo!32741 r!7292)))))

(declare-fun e!3761571 () Bool)

(assert (=> b!6175305 (= e!3761571 e!3761574)))

(declare-fun bm!515298 () Bool)

(assert (=> bm!515298 (= call!515302 (isEmpty!36498 s!2326))))

(declare-fun b!6175306 () Bool)

(declare-fun e!3761573 () Bool)

(assert (=> b!6175306 (= e!3761573 call!515302)))

(declare-fun b!6175307 () Bool)

(assert (=> b!6175307 (= e!3761575 e!3761572)))

(assert (=> b!6175307 (= c!1113093 (is-Star!16114 (regTwo!32741 r!7292)))))

(declare-fun d!1935601 () Bool)

(declare-fun c!1113096 () Bool)

(assert (=> d!1935601 (= c!1113096 (is-EmptyExpr!16114 (regTwo!32741 r!7292)))))

(assert (=> d!1935601 (= (matchRSpec!3215 (regTwo!32741 r!7292) s!2326) e!3761573)))

(assert (=> b!6175308 (= e!3761576 call!515303)))

(declare-fun b!6175309 () Bool)

(declare-fun e!3761577 () Bool)

(assert (=> b!6175309 (= e!3761577 (matchRSpec!3215 (regTwo!32741 (regTwo!32741 r!7292)) s!2326))))

(declare-fun b!6175310 () Bool)

(assert (=> b!6175310 (= e!3761573 e!3761571)))

(declare-fun res!2555898 () Bool)

(assert (=> b!6175310 (= res!2555898 (not (is-EmptyLang!16114 (regTwo!32741 r!7292))))))

(assert (=> b!6175310 (=> (not res!2555898) (not e!3761571))))

(declare-fun b!6175311 () Bool)

(assert (=> b!6175311 (= e!3761575 e!3761577)))

(declare-fun res!2555900 () Bool)

(assert (=> b!6175311 (= res!2555900 (matchRSpec!3215 (regOne!32741 (regTwo!32741 r!7292)) s!2326))))

(assert (=> b!6175311 (=> res!2555900 e!3761577)))

(assert (= (and d!1935601 c!1113096) b!6175306))

(assert (= (and d!1935601 (not c!1113096)) b!6175310))

(assert (= (and b!6175310 res!2555898) b!6175305))

(assert (= (and b!6175305 c!1113094) b!6175301))

(assert (= (and b!6175305 (not c!1113094)) b!6175304))

(assert (= (and b!6175304 c!1113095) b!6175311))

(assert (= (and b!6175304 (not c!1113095)) b!6175307))

(assert (= (and b!6175311 (not res!2555900)) b!6175309))

(assert (= (and b!6175307 c!1113093) b!6175302))

(assert (= (and b!6175307 (not c!1113093)) b!6175303))

(assert (= (and b!6175302 (not res!2555899)) b!6175308))

(assert (= (or b!6175308 b!6175303) bm!515297))

(assert (= (or b!6175306 b!6175302) bm!515298))

(declare-fun m!7011486 () Bool)

(assert (=> bm!515297 m!7011486))

(assert (=> bm!515298 m!7010626))

(declare-fun m!7011488 () Bool)

(assert (=> b!6175309 m!7011488))

(declare-fun m!7011490 () Bool)

(assert (=> b!6175311 m!7011490))

(assert (=> b!6174532 d!1935601))

(declare-fun d!1935603 () Bool)

(assert (=> d!1935603 (= (head!12746 lt!2337804) (h!70965 lt!2337804))))

(assert (=> b!6174653 d!1935603))

(assert (=> d!1935311 d!1935307))

(declare-fun d!1935605 () Bool)

(assert (=> d!1935605 (= (flatMap!1619 lt!2337800 lambda!337028) (dynLambda!25442 lambda!337028 lt!2337792))))

(assert (=> d!1935605 true))

(declare-fun _$13!3148 () Unit!157691)

(assert (=> d!1935605 (= (choose!45885 lt!2337800 lt!2337792 lambda!337028) _$13!3148)))

(declare-fun b_lambda!235029 () Bool)

(assert (=> (not b_lambda!235029) (not d!1935605)))

(declare-fun bs!1531255 () Bool)

(assert (= bs!1531255 d!1935605))

(assert (=> bs!1531255 m!7010458))

(assert (=> bs!1531255 m!7010808))

(assert (=> d!1935311 d!1935605))

(declare-fun b!6175312 () Bool)

(declare-fun res!2555902 () Bool)

(declare-fun e!3761582 () Bool)

(assert (=> b!6175312 (=> res!2555902 e!3761582)))

(assert (=> b!6175312 (= res!2555902 (not (is-Concat!24959 lt!2337978)))))

(declare-fun e!3761583 () Bool)

(assert (=> b!6175312 (= e!3761583 e!3761582)))

(declare-fun c!1113097 () Bool)

(declare-fun call!515306 () Bool)

(declare-fun c!1113098 () Bool)

(declare-fun bm!515299 () Bool)

(assert (=> bm!515299 (= call!515306 (validRegex!7850 (ite c!1113097 (reg!16443 lt!2337978) (ite c!1113098 (regOne!32741 lt!2337978) (regOne!32740 lt!2337978)))))))

(declare-fun b!6175313 () Bool)

(declare-fun e!3761584 () Bool)

(declare-fun e!3761578 () Bool)

(assert (=> b!6175313 (= e!3761584 e!3761578)))

(assert (=> b!6175313 (= c!1113097 (is-Star!16114 lt!2337978))))

(declare-fun b!6175314 () Bool)

(declare-fun e!3761579 () Bool)

(assert (=> b!6175314 (= e!3761582 e!3761579)))

(declare-fun res!2555905 () Bool)

(assert (=> b!6175314 (=> (not res!2555905) (not e!3761579))))

(declare-fun call!515305 () Bool)

(assert (=> b!6175314 (= res!2555905 call!515305)))

(declare-fun bm!515300 () Bool)

(declare-fun call!515304 () Bool)

(assert (=> bm!515300 (= call!515304 (validRegex!7850 (ite c!1113098 (regTwo!32741 lt!2337978) (regTwo!32740 lt!2337978))))))

(declare-fun b!6175315 () Bool)

(assert (=> b!6175315 (= e!3761578 e!3761583)))

(assert (=> b!6175315 (= c!1113098 (is-Union!16114 lt!2337978))))

(declare-fun b!6175316 () Bool)

(declare-fun res!2555903 () Bool)

(declare-fun e!3761580 () Bool)

(assert (=> b!6175316 (=> (not res!2555903) (not e!3761580))))

(assert (=> b!6175316 (= res!2555903 call!515305)))

(assert (=> b!6175316 (= e!3761583 e!3761580)))

(declare-fun b!6175317 () Bool)

(assert (=> b!6175317 (= e!3761580 call!515304)))

(declare-fun b!6175318 () Bool)

(assert (=> b!6175318 (= e!3761579 call!515304)))

(declare-fun d!1935607 () Bool)

(declare-fun res!2555904 () Bool)

(assert (=> d!1935607 (=> res!2555904 e!3761584)))

(assert (=> d!1935607 (= res!2555904 (is-ElementMatch!16114 lt!2337978))))

(assert (=> d!1935607 (= (validRegex!7850 lt!2337978) e!3761584)))

(declare-fun b!6175319 () Bool)

(declare-fun e!3761581 () Bool)

(assert (=> b!6175319 (= e!3761578 e!3761581)))

(declare-fun res!2555901 () Bool)

(assert (=> b!6175319 (= res!2555901 (not (nullable!6107 (reg!16443 lt!2337978))))))

(assert (=> b!6175319 (=> (not res!2555901) (not e!3761581))))

(declare-fun bm!515301 () Bool)

(assert (=> bm!515301 (= call!515305 call!515306)))

(declare-fun b!6175320 () Bool)

(assert (=> b!6175320 (= e!3761581 call!515306)))

(assert (= (and d!1935607 (not res!2555904)) b!6175313))

(assert (= (and b!6175313 c!1113097) b!6175319))

(assert (= (and b!6175313 (not c!1113097)) b!6175315))

(assert (= (and b!6175319 res!2555901) b!6175320))

(assert (= (and b!6175315 c!1113098) b!6175316))

(assert (= (and b!6175315 (not c!1113098)) b!6175312))

(assert (= (and b!6175316 res!2555903) b!6175317))

(assert (= (and b!6175312 (not res!2555902)) b!6175314))

(assert (= (and b!6175314 res!2555905) b!6175318))

(assert (= (or b!6175317 b!6175318) bm!515300))

(assert (= (or b!6175316 b!6175314) bm!515301))

(assert (= (or b!6175320 bm!515301) bm!515299))

(declare-fun m!7011492 () Bool)

(assert (=> bm!515299 m!7011492))

(declare-fun m!7011494 () Bool)

(assert (=> bm!515300 m!7011494))

(declare-fun m!7011496 () Bool)

(assert (=> b!6175319 m!7011496))

(assert (=> d!1935337 d!1935607))

(declare-fun d!1935609 () Bool)

(declare-fun res!2555906 () Bool)

(declare-fun e!3761585 () Bool)

(assert (=> d!1935609 (=> res!2555906 e!3761585)))

(assert (=> d!1935609 (= res!2555906 (is-Nil!64517 (exprs!5998 (h!70966 zl!343))))))

(assert (=> d!1935609 (= (forall!15233 (exprs!5998 (h!70966 zl!343)) lambda!337071) e!3761585)))

(declare-fun b!6175321 () Bool)

(declare-fun e!3761586 () Bool)

(assert (=> b!6175321 (= e!3761585 e!3761586)))

(declare-fun res!2555907 () Bool)

(assert (=> b!6175321 (=> (not res!2555907) (not e!3761586))))

(assert (=> b!6175321 (= res!2555907 (dynLambda!25444 lambda!337071 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6175322 () Bool)

(assert (=> b!6175322 (= e!3761586 (forall!15233 (t!378145 (exprs!5998 (h!70966 zl!343))) lambda!337071))))

(assert (= (and d!1935609 (not res!2555906)) b!6175321))

(assert (= (and b!6175321 res!2555907) b!6175322))

(declare-fun b_lambda!235031 () Bool)

(assert (=> (not b_lambda!235031) (not b!6175321)))

(declare-fun m!7011498 () Bool)

(assert (=> b!6175321 m!7011498))

(declare-fun m!7011500 () Bool)

(assert (=> b!6175322 m!7011500))

(assert (=> d!1935337 d!1935609))

(assert (=> bm!515191 d!1935515))

(declare-fun d!1935611 () Bool)

(assert (=> d!1935611 true))

(assert (=> d!1935611 true))

(declare-fun res!2555910 () Bool)

(assert (=> d!1935611 (= (choose!45881 lambda!337027) res!2555910)))

(assert (=> d!1935247 d!1935611))

(declare-fun b!6175323 () Bool)

(declare-fun e!3761591 () Bool)

(declare-fun lt!2338056 () Bool)

(assert (=> b!6175323 (= e!3761591 (not lt!2338056))))

(declare-fun b!6175324 () Bool)

(declare-fun e!3761587 () Bool)

(assert (=> b!6175324 (= e!3761587 (= (head!12745 (_1!36396 (get!22271 lt!2337935))) (c!1112765 (regOne!32740 r!7292))))))

(declare-fun b!6175325 () Bool)

(declare-fun res!2555918 () Bool)

(assert (=> b!6175325 (=> (not res!2555918) (not e!3761587))))

(assert (=> b!6175325 (= res!2555918 (isEmpty!36498 (tail!11830 (_1!36396 (get!22271 lt!2337935)))))))

(declare-fun b!6175326 () Bool)

(declare-fun e!3761592 () Bool)

(assert (=> b!6175326 (= e!3761592 (matchR!8297 (derivativeStep!4831 (regOne!32740 r!7292) (head!12745 (_1!36396 (get!22271 lt!2337935)))) (tail!11830 (_1!36396 (get!22271 lt!2337935)))))))

(declare-fun b!6175327 () Bool)

(declare-fun e!3761593 () Bool)

(declare-fun e!3761588 () Bool)

(assert (=> b!6175327 (= e!3761593 e!3761588)))

(declare-fun res!2555914 () Bool)

(assert (=> b!6175327 (=> (not res!2555914) (not e!3761588))))

(assert (=> b!6175327 (= res!2555914 (not lt!2338056))))

(declare-fun b!6175328 () Bool)

(declare-fun res!2555911 () Bool)

(assert (=> b!6175328 (=> (not res!2555911) (not e!3761587))))

(declare-fun call!515307 () Bool)

(assert (=> b!6175328 (= res!2555911 (not call!515307))))

(declare-fun b!6175329 () Bool)

(declare-fun res!2555913 () Bool)

(assert (=> b!6175329 (=> res!2555913 e!3761593)))

(assert (=> b!6175329 (= res!2555913 e!3761587)))

(declare-fun res!2555917 () Bool)

(assert (=> b!6175329 (=> (not res!2555917) (not e!3761587))))

(assert (=> b!6175329 (= res!2555917 lt!2338056)))

(declare-fun d!1935613 () Bool)

(declare-fun e!3761590 () Bool)

(assert (=> d!1935613 e!3761590))

(declare-fun c!1113099 () Bool)

(assert (=> d!1935613 (= c!1113099 (is-EmptyExpr!16114 (regOne!32740 r!7292)))))

(assert (=> d!1935613 (= lt!2338056 e!3761592)))

(declare-fun c!1113100 () Bool)

(assert (=> d!1935613 (= c!1113100 (isEmpty!36498 (_1!36396 (get!22271 lt!2337935))))))

(assert (=> d!1935613 (validRegex!7850 (regOne!32740 r!7292))))

(assert (=> d!1935613 (= (matchR!8297 (regOne!32740 r!7292) (_1!36396 (get!22271 lt!2337935))) lt!2338056)))

(declare-fun bm!515302 () Bool)

(assert (=> bm!515302 (= call!515307 (isEmpty!36498 (_1!36396 (get!22271 lt!2337935))))))

(declare-fun b!6175330 () Bool)

(declare-fun res!2555915 () Bool)

(assert (=> b!6175330 (=> res!2555915 e!3761593)))

(assert (=> b!6175330 (= res!2555915 (not (is-ElementMatch!16114 (regOne!32740 r!7292))))))

(assert (=> b!6175330 (= e!3761591 e!3761593)))

(declare-fun b!6175331 () Bool)

(assert (=> b!6175331 (= e!3761590 e!3761591)))

(declare-fun c!1113101 () Bool)

(assert (=> b!6175331 (= c!1113101 (is-EmptyLang!16114 (regOne!32740 r!7292)))))

(declare-fun b!6175332 () Bool)

(assert (=> b!6175332 (= e!3761592 (nullable!6107 (regOne!32740 r!7292)))))

(declare-fun b!6175333 () Bool)

(declare-fun e!3761589 () Bool)

(assert (=> b!6175333 (= e!3761588 e!3761589)))

(declare-fun res!2555916 () Bool)

(assert (=> b!6175333 (=> res!2555916 e!3761589)))

(assert (=> b!6175333 (= res!2555916 call!515307)))

(declare-fun b!6175334 () Bool)

(assert (=> b!6175334 (= e!3761589 (not (= (head!12745 (_1!36396 (get!22271 lt!2337935))) (c!1112765 (regOne!32740 r!7292)))))))

(declare-fun b!6175335 () Bool)

(assert (=> b!6175335 (= e!3761590 (= lt!2338056 call!515307))))

(declare-fun b!6175336 () Bool)

(declare-fun res!2555912 () Bool)

(assert (=> b!6175336 (=> res!2555912 e!3761589)))

(assert (=> b!6175336 (= res!2555912 (not (isEmpty!36498 (tail!11830 (_1!36396 (get!22271 lt!2337935))))))))

(assert (= (and d!1935613 c!1113100) b!6175332))

(assert (= (and d!1935613 (not c!1113100)) b!6175326))

(assert (= (and d!1935613 c!1113099) b!6175335))

(assert (= (and d!1935613 (not c!1113099)) b!6175331))

(assert (= (and b!6175331 c!1113101) b!6175323))

(assert (= (and b!6175331 (not c!1113101)) b!6175330))

(assert (= (and b!6175330 (not res!2555915)) b!6175329))

(assert (= (and b!6175329 res!2555917) b!6175328))

(assert (= (and b!6175328 res!2555911) b!6175325))

(assert (= (and b!6175325 res!2555918) b!6175324))

(assert (= (and b!6175329 (not res!2555913)) b!6175327))

(assert (= (and b!6175327 res!2555914) b!6175333))

(assert (= (and b!6175333 (not res!2555916)) b!6175336))

(assert (= (and b!6175336 (not res!2555912)) b!6175334))

(assert (= (or b!6175335 b!6175328 b!6175333) bm!515302))

(assert (=> b!6175332 m!7011390))

(declare-fun m!7011502 () Bool)

(assert (=> b!6175326 m!7011502))

(assert (=> b!6175326 m!7011502))

(declare-fun m!7011504 () Bool)

(assert (=> b!6175326 m!7011504))

(declare-fun m!7011506 () Bool)

(assert (=> b!6175326 m!7011506))

(assert (=> b!6175326 m!7011504))

(assert (=> b!6175326 m!7011506))

(declare-fun m!7011508 () Bool)

(assert (=> b!6175326 m!7011508))

(assert (=> b!6175336 m!7011506))

(assert (=> b!6175336 m!7011506))

(declare-fun m!7011510 () Bool)

(assert (=> b!6175336 m!7011510))

(assert (=> b!6175334 m!7011502))

(declare-fun m!7011512 () Bool)

(assert (=> d!1935613 m!7011512))

(assert (=> d!1935613 m!7010654))

(assert (=> b!6175324 m!7011502))

(assert (=> bm!515302 m!7011512))

(assert (=> b!6175325 m!7011506))

(assert (=> b!6175325 m!7011506))

(assert (=> b!6175325 m!7011510))

(assert (=> b!6174311 d!1935613))

(assert (=> b!6174311 d!1935579))

(declare-fun b!6175337 () Bool)

(declare-fun res!2555920 () Bool)

(declare-fun e!3761598 () Bool)

(assert (=> b!6175337 (=> res!2555920 e!3761598)))

(assert (=> b!6175337 (= res!2555920 (not (is-Concat!24959 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292)))))))

(declare-fun e!3761599 () Bool)

(assert (=> b!6175337 (= e!3761599 e!3761598)))

(declare-fun bm!515303 () Bool)

(declare-fun call!515310 () Bool)

(declare-fun c!1113103 () Bool)

(declare-fun c!1113102 () Bool)

(assert (=> bm!515303 (= call!515310 (validRegex!7850 (ite c!1113102 (reg!16443 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292))) (ite c!1113103 (regOne!32741 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292))) (regOne!32740 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292)))))))))

(declare-fun b!6175338 () Bool)

(declare-fun e!3761600 () Bool)

(declare-fun e!3761594 () Bool)

(assert (=> b!6175338 (= e!3761600 e!3761594)))

(assert (=> b!6175338 (= c!1113102 (is-Star!16114 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292))))))

(declare-fun b!6175339 () Bool)

(declare-fun e!3761595 () Bool)

(assert (=> b!6175339 (= e!3761598 e!3761595)))

(declare-fun res!2555923 () Bool)

(assert (=> b!6175339 (=> (not res!2555923) (not e!3761595))))

(declare-fun call!515309 () Bool)

(assert (=> b!6175339 (= res!2555923 call!515309)))

(declare-fun call!515308 () Bool)

(declare-fun bm!515304 () Bool)

(assert (=> bm!515304 (= call!515308 (validRegex!7850 (ite c!1113103 (regTwo!32741 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292))) (regTwo!32740 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292))))))))

(declare-fun b!6175340 () Bool)

(assert (=> b!6175340 (= e!3761594 e!3761599)))

(assert (=> b!6175340 (= c!1113103 (is-Union!16114 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292))))))

(declare-fun b!6175341 () Bool)

(declare-fun res!2555921 () Bool)

(declare-fun e!3761596 () Bool)

(assert (=> b!6175341 (=> (not res!2555921) (not e!3761596))))

(assert (=> b!6175341 (= res!2555921 call!515309)))

(assert (=> b!6175341 (= e!3761599 e!3761596)))

(declare-fun b!6175342 () Bool)

(assert (=> b!6175342 (= e!3761596 call!515308)))

(declare-fun b!6175343 () Bool)

(assert (=> b!6175343 (= e!3761595 call!515308)))

(declare-fun d!1935615 () Bool)

(declare-fun res!2555922 () Bool)

(assert (=> d!1935615 (=> res!2555922 e!3761600)))

(assert (=> d!1935615 (= res!2555922 (is-ElementMatch!16114 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292))))))

(assert (=> d!1935615 (= (validRegex!7850 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292))) e!3761600)))

(declare-fun b!6175344 () Bool)

(declare-fun e!3761597 () Bool)

(assert (=> b!6175344 (= e!3761594 e!3761597)))

(declare-fun res!2555919 () Bool)

(assert (=> b!6175344 (= res!2555919 (not (nullable!6107 (reg!16443 (ite c!1112845 (regTwo!32741 r!7292) (regTwo!32740 r!7292))))))))

(assert (=> b!6175344 (=> (not res!2555919) (not e!3761597))))

(declare-fun bm!515305 () Bool)

(assert (=> bm!515305 (= call!515309 call!515310)))

(declare-fun b!6175345 () Bool)

(assert (=> b!6175345 (= e!3761597 call!515310)))

(assert (= (and d!1935615 (not res!2555922)) b!6175338))

(assert (= (and b!6175338 c!1113102) b!6175344))

(assert (= (and b!6175338 (not c!1113102)) b!6175340))

(assert (= (and b!6175344 res!2555919) b!6175345))

(assert (= (and b!6175340 c!1113103) b!6175341))

(assert (= (and b!6175340 (not c!1113103)) b!6175337))

(assert (= (and b!6175341 res!2555921) b!6175342))

(assert (= (and b!6175337 (not res!2555920)) b!6175339))

(assert (= (and b!6175339 res!2555923) b!6175343))

(assert (= (or b!6175342 b!6175343) bm!515304))

(assert (= (or b!6175341 b!6175339) bm!515305))

(assert (= (or b!6175345 bm!515305) bm!515303))

(declare-fun m!7011514 () Bool)

(assert (=> bm!515303 m!7011514))

(declare-fun m!7011516 () Bool)

(assert (=> bm!515304 m!7011516))

(declare-fun m!7011518 () Bool)

(assert (=> b!6175344 m!7011518))

(assert (=> bm!515182 d!1935615))

(declare-fun d!1935617 () Bool)

(declare-fun c!1113104 () Bool)

(assert (=> d!1935617 (= c!1113104 (isEmpty!36498 (tail!11830 (t!378147 s!2326))))))

(declare-fun e!3761601 () Bool)

(assert (=> d!1935617 (= (matchZipper!2126 (derivationStepZipper!2085 (set.union lt!2337788 lt!2337798) (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))) e!3761601)))

(declare-fun b!6175346 () Bool)

(assert (=> b!6175346 (= e!3761601 (nullableZipper!1893 (derivationStepZipper!2085 (set.union lt!2337788 lt!2337798) (head!12745 (t!378147 s!2326)))))))

(declare-fun b!6175347 () Bool)

(assert (=> b!6175347 (= e!3761601 (matchZipper!2126 (derivationStepZipper!2085 (derivationStepZipper!2085 (set.union lt!2337788 lt!2337798) (head!12745 (t!378147 s!2326))) (head!12745 (tail!11830 (t!378147 s!2326)))) (tail!11830 (tail!11830 (t!378147 s!2326)))))))

(assert (= (and d!1935617 c!1113104) b!6175346))

(assert (= (and d!1935617 (not c!1113104)) b!6175347))

(assert (=> d!1935617 m!7010696))

(assert (=> d!1935617 m!7011396))

(assert (=> b!6175346 m!7010710))

(declare-fun m!7011520 () Bool)

(assert (=> b!6175346 m!7011520))

(assert (=> b!6175347 m!7010696))

(assert (=> b!6175347 m!7011400))

(assert (=> b!6175347 m!7010710))

(assert (=> b!6175347 m!7011400))

(declare-fun m!7011522 () Bool)

(assert (=> b!6175347 m!7011522))

(assert (=> b!6175347 m!7010696))

(assert (=> b!6175347 m!7011404))

(assert (=> b!6175347 m!7011522))

(assert (=> b!6175347 m!7011404))

(declare-fun m!7011524 () Bool)

(assert (=> b!6175347 m!7011524))

(assert (=> b!6174349 d!1935617))

(declare-fun bs!1531256 () Bool)

(declare-fun d!1935619 () Bool)

(assert (= bs!1531256 (and d!1935619 d!1935543)))

(declare-fun lambda!337122 () Int)

(assert (=> bs!1531256 (= lambda!337122 lambda!337115)))

(declare-fun bs!1531257 () Bool)

(assert (= bs!1531257 (and d!1935619 d!1935573)))

(assert (=> bs!1531257 (= lambda!337122 lambda!337118)))

(declare-fun bs!1531258 () Bool)

(assert (= bs!1531258 (and d!1935619 d!1935499)))

(assert (=> bs!1531258 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337122 lambda!337107))))

(declare-fun bs!1531259 () Bool)

(assert (= bs!1531259 (and d!1935619 b!6174141)))

(assert (=> bs!1531259 (= (= (head!12745 (t!378147 s!2326)) (h!70967 s!2326)) (= lambda!337122 lambda!337028))))

(declare-fun bs!1531260 () Bool)

(assert (= bs!1531260 (and d!1935619 d!1935507)))

(assert (=> bs!1531260 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337122 lambda!337108))))

(assert (=> d!1935619 true))

(assert (=> d!1935619 (= (derivationStepZipper!2085 (set.union lt!2337788 lt!2337798) (head!12745 (t!378147 s!2326))) (flatMap!1619 (set.union lt!2337788 lt!2337798) lambda!337122))))

(declare-fun bs!1531261 () Bool)

(assert (= bs!1531261 d!1935619))

(declare-fun m!7011526 () Bool)

(assert (=> bs!1531261 m!7011526))

(assert (=> b!6174349 d!1935619))

(assert (=> b!6174349 d!1935545))

(assert (=> b!6174349 d!1935547))

(declare-fun bm!515306 () Bool)

(declare-fun call!515315 () List!64641)

(declare-fun call!515312 () List!64641)

(assert (=> bm!515306 (= call!515315 call!515312)))

(declare-fun e!3761603 () (Set Context!10996))

(declare-fun b!6175348 () Bool)

(assert (=> b!6175348 (= e!3761603 (set.insert (ite c!1112823 lt!2337799 (Context!10997 call!515175)) (as set.empty (Set Context!10996))))))

(declare-fun b!6175350 () Bool)

(declare-fun e!3761604 () Bool)

(assert (=> b!6175350 (= e!3761604 (nullable!6107 (regOne!32740 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343))))))))))

(declare-fun b!6175351 () Bool)

(declare-fun e!3761606 () (Set Context!10996))

(declare-fun call!515316 () (Set Context!10996))

(assert (=> b!6175351 (= e!3761606 call!515316)))

(declare-fun b!6175352 () Bool)

(declare-fun e!3761602 () (Set Context!10996))

(declare-fun e!3761605 () (Set Context!10996))

(assert (=> b!6175352 (= e!3761602 e!3761605)))

(declare-fun c!1113108 () Bool)

(assert (=> b!6175352 (= c!1113108 (is-Concat!24959 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))))))

(declare-fun c!1113105 () Bool)

(declare-fun bm!515307 () Bool)

(assert (=> bm!515307 (= call!515312 ($colon$colon!1989 (exprs!5998 (ite c!1112823 lt!2337799 (Context!10997 call!515175))) (ite (or c!1113105 c!1113108) (regTwo!32740 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))) (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343))))))))))

(declare-fun b!6175353 () Bool)

(assert (=> b!6175353 (= e!3761605 call!515316)))

(declare-fun b!6175354 () Bool)

(declare-fun e!3761607 () (Set Context!10996))

(declare-fun call!515313 () (Set Context!10996))

(declare-fun call!515311 () (Set Context!10996))

(assert (=> b!6175354 (= e!3761607 (set.union call!515313 call!515311))))

(declare-fun b!6175355 () Bool)

(assert (=> b!6175355 (= e!3761603 e!3761607)))

(declare-fun c!1113109 () Bool)

(assert (=> b!6175355 (= c!1113109 (is-Union!16114 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))))))

(declare-fun b!6175356 () Bool)

(declare-fun call!515314 () (Set Context!10996))

(assert (=> b!6175356 (= e!3761602 (set.union call!515313 call!515314))))

(declare-fun bm!515308 () Bool)

(assert (=> bm!515308 (= call!515311 (derivationStepZipperDown!1362 (ite c!1113109 (regTwo!32741 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))) (ite c!1113105 (regTwo!32740 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))) (ite c!1113108 (regOne!32740 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))) (reg!16443 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343))))))))) (ite (or c!1113109 c!1113105) (ite c!1112823 lt!2337799 (Context!10997 call!515175)) (Context!10997 call!515315)) (h!70967 s!2326)))))

(declare-fun b!6175357 () Bool)

(declare-fun c!1113106 () Bool)

(assert (=> b!6175357 (= c!1113106 (is-Star!16114 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))))))

(assert (=> b!6175357 (= e!3761605 e!3761606)))

(declare-fun bm!515309 () Bool)

(assert (=> bm!515309 (= call!515314 call!515311)))

(declare-fun bm!515310 () Bool)

(assert (=> bm!515310 (= call!515316 call!515314)))

(declare-fun b!6175349 () Bool)

(assert (=> b!6175349 (= c!1113105 e!3761604)))

(declare-fun res!2555924 () Bool)

(assert (=> b!6175349 (=> (not res!2555924) (not e!3761604))))

(assert (=> b!6175349 (= res!2555924 (is-Concat!24959 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))))))

(assert (=> b!6175349 (= e!3761607 e!3761602)))

(declare-fun d!1935621 () Bool)

(declare-fun c!1113107 () Bool)

(assert (=> d!1935621 (= c!1113107 (and (is-ElementMatch!16114 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))) (= (c!1112765 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))) (h!70967 s!2326))))))

(assert (=> d!1935621 (= (derivationStepZipperDown!1362 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343))))) (ite c!1112823 lt!2337799 (Context!10997 call!515175)) (h!70967 s!2326)) e!3761603)))

(declare-fun bm!515311 () Bool)

(assert (=> bm!515311 (= call!515313 (derivationStepZipperDown!1362 (ite c!1113109 (regOne!32741 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))) (regOne!32740 (ite c!1112823 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343))))))) (ite c!1113109 (ite c!1112823 lt!2337799 (Context!10997 call!515175)) (Context!10997 call!515312)) (h!70967 s!2326)))))

(declare-fun b!6175358 () Bool)

(assert (=> b!6175358 (= e!3761606 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935621 c!1113107) b!6175348))

(assert (= (and d!1935621 (not c!1113107)) b!6175355))

(assert (= (and b!6175355 c!1113109) b!6175354))

(assert (= (and b!6175355 (not c!1113109)) b!6175349))

(assert (= (and b!6175349 res!2555924) b!6175350))

(assert (= (and b!6175349 c!1113105) b!6175356))

(assert (= (and b!6175349 (not c!1113105)) b!6175352))

(assert (= (and b!6175352 c!1113108) b!6175353))

(assert (= (and b!6175352 (not c!1113108)) b!6175357))

(assert (= (and b!6175357 c!1113106) b!6175351))

(assert (= (and b!6175357 (not c!1113106)) b!6175358))

(assert (= (or b!6175353 b!6175351) bm!515306))

(assert (= (or b!6175353 b!6175351) bm!515310))

(assert (= (or b!6175356 bm!515306) bm!515307))

(assert (= (or b!6175356 bm!515310) bm!515309))

(assert (= (or b!6175354 bm!515309) bm!515308))

(assert (= (or b!6175354 b!6175356) bm!515311))

(declare-fun m!7011528 () Bool)

(assert (=> b!6175348 m!7011528))

(declare-fun m!7011530 () Bool)

(assert (=> b!6175350 m!7011530))

(declare-fun m!7011532 () Bool)

(assert (=> bm!515308 m!7011532))

(declare-fun m!7011534 () Bool)

(assert (=> bm!515307 m!7011534))

(declare-fun m!7011536 () Bool)

(assert (=> bm!515311 m!7011536))

(assert (=> bm!515174 d!1935621))

(assert (=> b!6174641 d!1935569))

(assert (=> b!6174641 d!1935503))

(declare-fun d!1935623 () Bool)

(declare-fun c!1113110 () Bool)

(assert (=> d!1935623 (= c!1113110 (isEmpty!36498 (tail!11830 (t!378147 s!2326))))))

(declare-fun e!3761608 () Bool)

(assert (=> d!1935623 (= (matchZipper!2126 (derivationStepZipper!2085 (set.union lt!2337814 lt!2337798) (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))) e!3761608)))

(declare-fun b!6175359 () Bool)

(assert (=> b!6175359 (= e!3761608 (nullableZipper!1893 (derivationStepZipper!2085 (set.union lt!2337814 lt!2337798) (head!12745 (t!378147 s!2326)))))))

(declare-fun b!6175360 () Bool)

(assert (=> b!6175360 (= e!3761608 (matchZipper!2126 (derivationStepZipper!2085 (derivationStepZipper!2085 (set.union lt!2337814 lt!2337798) (head!12745 (t!378147 s!2326))) (head!12745 (tail!11830 (t!378147 s!2326)))) (tail!11830 (tail!11830 (t!378147 s!2326)))))))

(assert (= (and d!1935623 c!1113110) b!6175359))

(assert (= (and d!1935623 (not c!1113110)) b!6175360))

(assert (=> d!1935623 m!7010696))

(assert (=> d!1935623 m!7011396))

(assert (=> b!6175359 m!7010918))

(declare-fun m!7011538 () Bool)

(assert (=> b!6175359 m!7011538))

(assert (=> b!6175360 m!7010696))

(assert (=> b!6175360 m!7011400))

(assert (=> b!6175360 m!7010918))

(assert (=> b!6175360 m!7011400))

(declare-fun m!7011540 () Bool)

(assert (=> b!6175360 m!7011540))

(assert (=> b!6175360 m!7010696))

(assert (=> b!6175360 m!7011404))

(assert (=> b!6175360 m!7011540))

(assert (=> b!6175360 m!7011404))

(declare-fun m!7011542 () Bool)

(assert (=> b!6175360 m!7011542))

(assert (=> b!6174638 d!1935623))

(declare-fun bs!1531262 () Bool)

(declare-fun d!1935625 () Bool)

(assert (= bs!1531262 (and d!1935625 d!1935619)))

(declare-fun lambda!337123 () Int)

(assert (=> bs!1531262 (= lambda!337123 lambda!337122)))

(declare-fun bs!1531263 () Bool)

(assert (= bs!1531263 (and d!1935625 d!1935543)))

(assert (=> bs!1531263 (= lambda!337123 lambda!337115)))

(declare-fun bs!1531264 () Bool)

(assert (= bs!1531264 (and d!1935625 d!1935573)))

(assert (=> bs!1531264 (= lambda!337123 lambda!337118)))

(declare-fun bs!1531265 () Bool)

(assert (= bs!1531265 (and d!1935625 d!1935499)))

(assert (=> bs!1531265 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337123 lambda!337107))))

(declare-fun bs!1531266 () Bool)

(assert (= bs!1531266 (and d!1935625 b!6174141)))

(assert (=> bs!1531266 (= (= (head!12745 (t!378147 s!2326)) (h!70967 s!2326)) (= lambda!337123 lambda!337028))))

(declare-fun bs!1531267 () Bool)

(assert (= bs!1531267 (and d!1935625 d!1935507)))

(assert (=> bs!1531267 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337123 lambda!337108))))

(assert (=> d!1935625 true))

(assert (=> d!1935625 (= (derivationStepZipper!2085 (set.union lt!2337814 lt!2337798) (head!12745 (t!378147 s!2326))) (flatMap!1619 (set.union lt!2337814 lt!2337798) lambda!337123))))

(declare-fun bs!1531268 () Bool)

(assert (= bs!1531268 d!1935625))

(declare-fun m!7011544 () Bool)

(assert (=> bs!1531268 m!7011544))

(assert (=> b!6174638 d!1935625))

(assert (=> b!6174638 d!1935545))

(assert (=> b!6174638 d!1935547))

(declare-fun d!1935627 () Bool)

(declare-fun c!1113111 () Bool)

(assert (=> d!1935627 (= c!1113111 (isEmpty!36498 (tail!11830 (t!378147 s!2326))))))

(declare-fun e!3761609 () Bool)

(assert (=> d!1935627 (= (matchZipper!2126 (derivationStepZipper!2085 lt!2337785 (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))) e!3761609)))

(declare-fun b!6175361 () Bool)

(assert (=> b!6175361 (= e!3761609 (nullableZipper!1893 (derivationStepZipper!2085 lt!2337785 (head!12745 (t!378147 s!2326)))))))

(declare-fun b!6175362 () Bool)

(assert (=> b!6175362 (= e!3761609 (matchZipper!2126 (derivationStepZipper!2085 (derivationStepZipper!2085 lt!2337785 (head!12745 (t!378147 s!2326))) (head!12745 (tail!11830 (t!378147 s!2326)))) (tail!11830 (tail!11830 (t!378147 s!2326)))))))

(assert (= (and d!1935627 c!1113111) b!6175361))

(assert (= (and d!1935627 (not c!1113111)) b!6175362))

(assert (=> d!1935627 m!7010696))

(assert (=> d!1935627 m!7011396))

(assert (=> b!6175361 m!7010900))

(declare-fun m!7011546 () Bool)

(assert (=> b!6175361 m!7011546))

(assert (=> b!6175362 m!7010696))

(assert (=> b!6175362 m!7011400))

(assert (=> b!6175362 m!7010900))

(assert (=> b!6175362 m!7011400))

(declare-fun m!7011548 () Bool)

(assert (=> b!6175362 m!7011548))

(assert (=> b!6175362 m!7010696))

(assert (=> b!6175362 m!7011404))

(assert (=> b!6175362 m!7011548))

(assert (=> b!6175362 m!7011404))

(declare-fun m!7011550 () Bool)

(assert (=> b!6175362 m!7011550))

(assert (=> b!6174632 d!1935627))

(declare-fun bs!1531269 () Bool)

(declare-fun d!1935629 () Bool)

(assert (= bs!1531269 (and d!1935629 d!1935619)))

(declare-fun lambda!337124 () Int)

(assert (=> bs!1531269 (= lambda!337124 lambda!337122)))

(declare-fun bs!1531270 () Bool)

(assert (= bs!1531270 (and d!1935629 d!1935543)))

(assert (=> bs!1531270 (= lambda!337124 lambda!337115)))

(declare-fun bs!1531271 () Bool)

(assert (= bs!1531271 (and d!1935629 d!1935573)))

(assert (=> bs!1531271 (= lambda!337124 lambda!337118)))

(declare-fun bs!1531272 () Bool)

(assert (= bs!1531272 (and d!1935629 d!1935625)))

(assert (=> bs!1531272 (= lambda!337124 lambda!337123)))

(declare-fun bs!1531273 () Bool)

(assert (= bs!1531273 (and d!1935629 d!1935499)))

(assert (=> bs!1531273 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337124 lambda!337107))))

(declare-fun bs!1531274 () Bool)

(assert (= bs!1531274 (and d!1935629 b!6174141)))

(assert (=> bs!1531274 (= (= (head!12745 (t!378147 s!2326)) (h!70967 s!2326)) (= lambda!337124 lambda!337028))))

(declare-fun bs!1531275 () Bool)

(assert (= bs!1531275 (and d!1935629 d!1935507)))

(assert (=> bs!1531275 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337124 lambda!337108))))

(assert (=> d!1935629 true))

(assert (=> d!1935629 (= (derivationStepZipper!2085 lt!2337785 (head!12745 (t!378147 s!2326))) (flatMap!1619 lt!2337785 lambda!337124))))

(declare-fun bs!1531276 () Bool)

(assert (= bs!1531276 d!1935629))

(declare-fun m!7011552 () Bool)

(assert (=> bs!1531276 m!7011552))

(assert (=> b!6174632 d!1935629))

(assert (=> b!6174632 d!1935545))

(assert (=> b!6174632 d!1935547))

(declare-fun bm!515312 () Bool)

(declare-fun call!515321 () List!64641)

(declare-fun call!515318 () List!64641)

(assert (=> bm!515312 (= call!515321 call!515318)))

(declare-fun b!6175363 () Bool)

(declare-fun e!3761611 () (Set Context!10996))

(assert (=> b!6175363 (= e!3761611 (set.insert (Context!10997 (t!378145 (exprs!5998 lt!2337792))) (as set.empty (Set Context!10996))))))

(declare-fun b!6175365 () Bool)

(declare-fun e!3761612 () Bool)

(assert (=> b!6175365 (= e!3761612 (nullable!6107 (regOne!32740 (h!70965 (exprs!5998 lt!2337792)))))))

(declare-fun b!6175366 () Bool)

(declare-fun e!3761614 () (Set Context!10996))

(declare-fun call!515322 () (Set Context!10996))

(assert (=> b!6175366 (= e!3761614 call!515322)))

(declare-fun b!6175367 () Bool)

(declare-fun e!3761610 () (Set Context!10996))

(declare-fun e!3761613 () (Set Context!10996))

(assert (=> b!6175367 (= e!3761610 e!3761613)))

(declare-fun c!1113115 () Bool)

(assert (=> b!6175367 (= c!1113115 (is-Concat!24959 (h!70965 (exprs!5998 lt!2337792))))))

(declare-fun bm!515313 () Bool)

(declare-fun c!1113112 () Bool)

(assert (=> bm!515313 (= call!515318 ($colon$colon!1989 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337792)))) (ite (or c!1113112 c!1113115) (regTwo!32740 (h!70965 (exprs!5998 lt!2337792))) (h!70965 (exprs!5998 lt!2337792)))))))

(declare-fun b!6175368 () Bool)

(assert (=> b!6175368 (= e!3761613 call!515322)))

(declare-fun b!6175369 () Bool)

(declare-fun e!3761615 () (Set Context!10996))

(declare-fun call!515319 () (Set Context!10996))

(declare-fun call!515317 () (Set Context!10996))

(assert (=> b!6175369 (= e!3761615 (set.union call!515319 call!515317))))

(declare-fun b!6175370 () Bool)

(assert (=> b!6175370 (= e!3761611 e!3761615)))

(declare-fun c!1113116 () Bool)

(assert (=> b!6175370 (= c!1113116 (is-Union!16114 (h!70965 (exprs!5998 lt!2337792))))))

(declare-fun b!6175371 () Bool)

(declare-fun call!515320 () (Set Context!10996))

(assert (=> b!6175371 (= e!3761610 (set.union call!515319 call!515320))))

(declare-fun bm!515314 () Bool)

(assert (=> bm!515314 (= call!515317 (derivationStepZipperDown!1362 (ite c!1113116 (regTwo!32741 (h!70965 (exprs!5998 lt!2337792))) (ite c!1113112 (regTwo!32740 (h!70965 (exprs!5998 lt!2337792))) (ite c!1113115 (regOne!32740 (h!70965 (exprs!5998 lt!2337792))) (reg!16443 (h!70965 (exprs!5998 lt!2337792)))))) (ite (or c!1113116 c!1113112) (Context!10997 (t!378145 (exprs!5998 lt!2337792))) (Context!10997 call!515321)) (h!70967 s!2326)))))

(declare-fun b!6175372 () Bool)

(declare-fun c!1113113 () Bool)

(assert (=> b!6175372 (= c!1113113 (is-Star!16114 (h!70965 (exprs!5998 lt!2337792))))))

(assert (=> b!6175372 (= e!3761613 e!3761614)))

(declare-fun bm!515315 () Bool)

(assert (=> bm!515315 (= call!515320 call!515317)))

(declare-fun bm!515316 () Bool)

(assert (=> bm!515316 (= call!515322 call!515320)))

(declare-fun b!6175364 () Bool)

(assert (=> b!6175364 (= c!1113112 e!3761612)))

(declare-fun res!2555925 () Bool)

(assert (=> b!6175364 (=> (not res!2555925) (not e!3761612))))

(assert (=> b!6175364 (= res!2555925 (is-Concat!24959 (h!70965 (exprs!5998 lt!2337792))))))

(assert (=> b!6175364 (= e!3761615 e!3761610)))

(declare-fun d!1935631 () Bool)

(declare-fun c!1113114 () Bool)

(assert (=> d!1935631 (= c!1113114 (and (is-ElementMatch!16114 (h!70965 (exprs!5998 lt!2337792))) (= (c!1112765 (h!70965 (exprs!5998 lt!2337792))) (h!70967 s!2326))))))

(assert (=> d!1935631 (= (derivationStepZipperDown!1362 (h!70965 (exprs!5998 lt!2337792)) (Context!10997 (t!378145 (exprs!5998 lt!2337792))) (h!70967 s!2326)) e!3761611)))

(declare-fun bm!515317 () Bool)

(assert (=> bm!515317 (= call!515319 (derivationStepZipperDown!1362 (ite c!1113116 (regOne!32741 (h!70965 (exprs!5998 lt!2337792))) (regOne!32740 (h!70965 (exprs!5998 lt!2337792)))) (ite c!1113116 (Context!10997 (t!378145 (exprs!5998 lt!2337792))) (Context!10997 call!515318)) (h!70967 s!2326)))))

(declare-fun b!6175373 () Bool)

(assert (=> b!6175373 (= e!3761614 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935631 c!1113114) b!6175363))

(assert (= (and d!1935631 (not c!1113114)) b!6175370))

(assert (= (and b!6175370 c!1113116) b!6175369))

(assert (= (and b!6175370 (not c!1113116)) b!6175364))

(assert (= (and b!6175364 res!2555925) b!6175365))

(assert (= (and b!6175364 c!1113112) b!6175371))

(assert (= (and b!6175364 (not c!1113112)) b!6175367))

(assert (= (and b!6175367 c!1113115) b!6175368))

(assert (= (and b!6175367 (not c!1113115)) b!6175372))

(assert (= (and b!6175372 c!1113113) b!6175366))

(assert (= (and b!6175372 (not c!1113113)) b!6175373))

(assert (= (or b!6175368 b!6175366) bm!515312))

(assert (= (or b!6175368 b!6175366) bm!515316))

(assert (= (or b!6175371 bm!515312) bm!515313))

(assert (= (or b!6175371 bm!515316) bm!515315))

(assert (= (or b!6175369 bm!515315) bm!515314))

(assert (= (or b!6175369 b!6175371) bm!515317))

(declare-fun m!7011554 () Bool)

(assert (=> b!6175363 m!7011554))

(declare-fun m!7011556 () Bool)

(assert (=> b!6175365 m!7011556))

(declare-fun m!7011558 () Bool)

(assert (=> bm!515314 m!7011558))

(declare-fun m!7011560 () Bool)

(assert (=> bm!515313 m!7011560))

(declare-fun m!7011562 () Bool)

(assert (=> bm!515317 m!7011562))

(assert (=> bm!515184 d!1935631))

(declare-fun d!1935633 () Bool)

(assert (=> d!1935633 (= (isEmpty!36495 (t!378145 (unfocusZipperList!1535 zl!343))) (is-Nil!64517 (t!378145 (unfocusZipperList!1535 zl!343))))))

(assert (=> b!6174430 d!1935633))

(assert (=> d!1935339 d!1935585))

(declare-fun d!1935635 () Bool)

(assert (=> d!1935635 true))

(declare-fun setRes!41874 () Bool)

(assert (=> d!1935635 setRes!41874))

(declare-fun condSetEmpty!41874 () Bool)

(declare-fun res!2555926 () (Set Context!10996))

(assert (=> d!1935635 (= condSetEmpty!41874 (= res!2555926 (as set.empty (Set Context!10996))))))

(assert (=> d!1935635 (= (choose!45886 z!1189 lambda!337028) res!2555926)))

(declare-fun setIsEmpty!41874 () Bool)

(assert (=> setIsEmpty!41874 setRes!41874))

(declare-fun setNonEmpty!41874 () Bool)

(declare-fun e!3761616 () Bool)

(declare-fun setElem!41874 () Context!10996)

(declare-fun tp!1723942 () Bool)

(assert (=> setNonEmpty!41874 (= setRes!41874 (and tp!1723942 (inv!83533 setElem!41874) e!3761616))))

(declare-fun setRest!41874 () (Set Context!10996))

(assert (=> setNonEmpty!41874 (= res!2555926 (set.union (set.insert setElem!41874 (as set.empty (Set Context!10996))) setRest!41874))))

(declare-fun b!6175374 () Bool)

(declare-fun tp!1723941 () Bool)

(assert (=> b!6175374 (= e!3761616 tp!1723941)))

(assert (= (and d!1935635 condSetEmpty!41874) setIsEmpty!41874))

(assert (= (and d!1935635 (not condSetEmpty!41874)) setNonEmpty!41874))

(assert (= setNonEmpty!41874 b!6175374))

(declare-fun m!7011564 () Bool)

(assert (=> setNonEmpty!41874 m!7011564))

(assert (=> d!1935283 d!1935635))

(declare-fun b!6175375 () Bool)

(declare-fun res!2555928 () Bool)

(declare-fun e!3761621 () Bool)

(assert (=> b!6175375 (=> res!2555928 e!3761621)))

(assert (=> b!6175375 (= res!2555928 (not (is-Concat!24959 lt!2337957)))))

(declare-fun e!3761622 () Bool)

(assert (=> b!6175375 (= e!3761622 e!3761621)))

(declare-fun call!515325 () Bool)

(declare-fun c!1113117 () Bool)

(declare-fun bm!515318 () Bool)

(declare-fun c!1113118 () Bool)

(assert (=> bm!515318 (= call!515325 (validRegex!7850 (ite c!1113117 (reg!16443 lt!2337957) (ite c!1113118 (regOne!32741 lt!2337957) (regOne!32740 lt!2337957)))))))

(declare-fun b!6175376 () Bool)

(declare-fun e!3761623 () Bool)

(declare-fun e!3761617 () Bool)

(assert (=> b!6175376 (= e!3761623 e!3761617)))

(assert (=> b!6175376 (= c!1113117 (is-Star!16114 lt!2337957))))

(declare-fun b!6175377 () Bool)

(declare-fun e!3761618 () Bool)

(assert (=> b!6175377 (= e!3761621 e!3761618)))

(declare-fun res!2555931 () Bool)

(assert (=> b!6175377 (=> (not res!2555931) (not e!3761618))))

(declare-fun call!515324 () Bool)

(assert (=> b!6175377 (= res!2555931 call!515324)))

(declare-fun bm!515319 () Bool)

(declare-fun call!515323 () Bool)

(assert (=> bm!515319 (= call!515323 (validRegex!7850 (ite c!1113118 (regTwo!32741 lt!2337957) (regTwo!32740 lt!2337957))))))

(declare-fun b!6175378 () Bool)

(assert (=> b!6175378 (= e!3761617 e!3761622)))

(assert (=> b!6175378 (= c!1113118 (is-Union!16114 lt!2337957))))

(declare-fun b!6175379 () Bool)

(declare-fun res!2555929 () Bool)

(declare-fun e!3761619 () Bool)

(assert (=> b!6175379 (=> (not res!2555929) (not e!3761619))))

(assert (=> b!6175379 (= res!2555929 call!515324)))

(assert (=> b!6175379 (= e!3761622 e!3761619)))

(declare-fun b!6175380 () Bool)

(assert (=> b!6175380 (= e!3761619 call!515323)))

(declare-fun b!6175381 () Bool)

(assert (=> b!6175381 (= e!3761618 call!515323)))

(declare-fun d!1935637 () Bool)

(declare-fun res!2555930 () Bool)

(assert (=> d!1935637 (=> res!2555930 e!3761623)))

(assert (=> d!1935637 (= res!2555930 (is-ElementMatch!16114 lt!2337957))))

(assert (=> d!1935637 (= (validRegex!7850 lt!2337957) e!3761623)))

(declare-fun b!6175382 () Bool)

(declare-fun e!3761620 () Bool)

(assert (=> b!6175382 (= e!3761617 e!3761620)))

(declare-fun res!2555927 () Bool)

(assert (=> b!6175382 (= res!2555927 (not (nullable!6107 (reg!16443 lt!2337957))))))

(assert (=> b!6175382 (=> (not res!2555927) (not e!3761620))))

(declare-fun bm!515320 () Bool)

(assert (=> bm!515320 (= call!515324 call!515325)))

(declare-fun b!6175383 () Bool)

(assert (=> b!6175383 (= e!3761620 call!515325)))

(assert (= (and d!1935637 (not res!2555930)) b!6175376))

(assert (= (and b!6175376 c!1113117) b!6175382))

(assert (= (and b!6175376 (not c!1113117)) b!6175378))

(assert (= (and b!6175382 res!2555927) b!6175383))

(assert (= (and b!6175378 c!1113118) b!6175379))

(assert (= (and b!6175378 (not c!1113118)) b!6175375))

(assert (= (and b!6175379 res!2555929) b!6175380))

(assert (= (and b!6175375 (not res!2555928)) b!6175377))

(assert (= (and b!6175377 res!2555931) b!6175381))

(assert (= (or b!6175380 b!6175381) bm!515319))

(assert (= (or b!6175379 b!6175377) bm!515320))

(assert (= (or b!6175383 bm!515320) bm!515318))

(declare-fun m!7011566 () Bool)

(assert (=> bm!515318 m!7011566))

(declare-fun m!7011568 () Bool)

(assert (=> bm!515319 m!7011568))

(declare-fun m!7011570 () Bool)

(assert (=> b!6175382 m!7011570))

(assert (=> d!1935291 d!1935637))

(declare-fun d!1935639 () Bool)

(declare-fun res!2555932 () Bool)

(declare-fun e!3761624 () Bool)

(assert (=> d!1935639 (=> res!2555932 e!3761624)))

(assert (=> d!1935639 (= res!2555932 (is-Nil!64517 (unfocusZipperList!1535 zl!343)))))

(assert (=> d!1935639 (= (forall!15233 (unfocusZipperList!1535 zl!343) lambda!337058) e!3761624)))

(declare-fun b!6175384 () Bool)

(declare-fun e!3761625 () Bool)

(assert (=> b!6175384 (= e!3761624 e!3761625)))

(declare-fun res!2555933 () Bool)

(assert (=> b!6175384 (=> (not res!2555933) (not e!3761625))))

(assert (=> b!6175384 (= res!2555933 (dynLambda!25444 lambda!337058 (h!70965 (unfocusZipperList!1535 zl!343))))))

(declare-fun b!6175385 () Bool)

(assert (=> b!6175385 (= e!3761625 (forall!15233 (t!378145 (unfocusZipperList!1535 zl!343)) lambda!337058))))

(assert (= (and d!1935639 (not res!2555932)) b!6175384))

(assert (= (and b!6175384 res!2555933) b!6175385))

(declare-fun b_lambda!235033 () Bool)

(assert (=> (not b_lambda!235033) (not b!6175384)))

(declare-fun m!7011572 () Bool)

(assert (=> b!6175384 m!7011572))

(declare-fun m!7011574 () Bool)

(assert (=> b!6175385 m!7011574))

(assert (=> d!1935291 d!1935639))

(declare-fun d!1935641 () Bool)

(declare-fun c!1113119 () Bool)

(assert (=> d!1935641 (= c!1113119 (isEmpty!36498 (tail!11830 (t!378147 s!2326))))))

(declare-fun e!3761626 () Bool)

(assert (=> d!1935641 (= (matchZipper!2126 (derivationStepZipper!2085 lt!2337814 (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))) e!3761626)))

(declare-fun b!6175386 () Bool)

(assert (=> b!6175386 (= e!3761626 (nullableZipper!1893 (derivationStepZipper!2085 lt!2337814 (head!12745 (t!378147 s!2326)))))))

(declare-fun b!6175387 () Bool)

(assert (=> b!6175387 (= e!3761626 (matchZipper!2126 (derivationStepZipper!2085 (derivationStepZipper!2085 lt!2337814 (head!12745 (t!378147 s!2326))) (head!12745 (tail!11830 (t!378147 s!2326)))) (tail!11830 (tail!11830 (t!378147 s!2326)))))))

(assert (= (and d!1935641 c!1113119) b!6175386))

(assert (= (and d!1935641 (not c!1113119)) b!6175387))

(assert (=> d!1935641 m!7010696))

(assert (=> d!1935641 m!7011396))

(assert (=> b!6175386 m!7010876))

(declare-fun m!7011576 () Bool)

(assert (=> b!6175386 m!7011576))

(assert (=> b!6175387 m!7010696))

(assert (=> b!6175387 m!7011400))

(assert (=> b!6175387 m!7010876))

(assert (=> b!6175387 m!7011400))

(declare-fun m!7011578 () Bool)

(assert (=> b!6175387 m!7011578))

(assert (=> b!6175387 m!7010696))

(assert (=> b!6175387 m!7011404))

(assert (=> b!6175387 m!7011578))

(assert (=> b!6175387 m!7011404))

(declare-fun m!7011580 () Bool)

(assert (=> b!6175387 m!7011580))

(assert (=> b!6174600 d!1935641))

(declare-fun bs!1531277 () Bool)

(declare-fun d!1935643 () Bool)

(assert (= bs!1531277 (and d!1935643 d!1935619)))

(declare-fun lambda!337125 () Int)

(assert (=> bs!1531277 (= lambda!337125 lambda!337122)))

(declare-fun bs!1531278 () Bool)

(assert (= bs!1531278 (and d!1935643 d!1935543)))

(assert (=> bs!1531278 (= lambda!337125 lambda!337115)))

(declare-fun bs!1531279 () Bool)

(assert (= bs!1531279 (and d!1935643 d!1935573)))

(assert (=> bs!1531279 (= lambda!337125 lambda!337118)))

(declare-fun bs!1531280 () Bool)

(assert (= bs!1531280 (and d!1935643 d!1935625)))

(assert (=> bs!1531280 (= lambda!337125 lambda!337123)))

(declare-fun bs!1531281 () Bool)

(assert (= bs!1531281 (and d!1935643 d!1935629)))

(assert (=> bs!1531281 (= lambda!337125 lambda!337124)))

(declare-fun bs!1531282 () Bool)

(assert (= bs!1531282 (and d!1935643 d!1935499)))

(assert (=> bs!1531282 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337125 lambda!337107))))

(declare-fun bs!1531283 () Bool)

(assert (= bs!1531283 (and d!1935643 b!6174141)))

(assert (=> bs!1531283 (= (= (head!12745 (t!378147 s!2326)) (h!70967 s!2326)) (= lambda!337125 lambda!337028))))

(declare-fun bs!1531284 () Bool)

(assert (= bs!1531284 (and d!1935643 d!1935507)))

(assert (=> bs!1531284 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337125 lambda!337108))))

(assert (=> d!1935643 true))

(assert (=> d!1935643 (= (derivationStepZipper!2085 lt!2337814 (head!12745 (t!378147 s!2326))) (flatMap!1619 lt!2337814 lambda!337125))))

(declare-fun bs!1531285 () Bool)

(assert (= bs!1531285 d!1935643))

(declare-fun m!7011582 () Bool)

(assert (=> bs!1531285 m!7011582))

(assert (=> b!6174600 d!1935643))

(assert (=> b!6174600 d!1935545))

(assert (=> b!6174600 d!1935547))

(declare-fun d!1935645 () Bool)

(assert (=> d!1935645 (= (isEmpty!36495 lt!2337804) (is-Nil!64517 lt!2337804))))

(assert (=> b!6174662 d!1935645))

(declare-fun d!1935647 () Bool)

(assert (=> d!1935647 true))

(assert (=> d!1935647 true))

(declare-fun res!2555934 () Bool)

(assert (=> d!1935647 (= (choose!45881 lambda!337026) res!2555934)))

(assert (=> d!1935245 d!1935647))

(assert (=> d!1935271 d!1935585))

(declare-fun bm!515321 () Bool)

(declare-fun call!515330 () List!64641)

(declare-fun call!515327 () List!64641)

(assert (=> bm!515321 (= call!515330 call!515327)))

(declare-fun b!6175388 () Bool)

(declare-fun e!3761628 () (Set Context!10996))

(assert (=> b!6175388 (= e!3761628 (set.insert (ite (or c!1112823 c!1112819) lt!2337799 (Context!10997 call!515178)) (as set.empty (Set Context!10996))))))

(declare-fun b!6175390 () Bool)

(declare-fun e!3761629 () Bool)

(assert (=> b!6175390 (= e!3761629 (nullable!6107 (regOne!32740 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343))))))))))))

(declare-fun b!6175391 () Bool)

(declare-fun e!3761631 () (Set Context!10996))

(declare-fun call!515331 () (Set Context!10996))

(assert (=> b!6175391 (= e!3761631 call!515331)))

(declare-fun b!6175392 () Bool)

(declare-fun e!3761627 () (Set Context!10996))

(declare-fun e!3761630 () (Set Context!10996))

(assert (=> b!6175392 (= e!3761627 e!3761630)))

(declare-fun c!1113123 () Bool)

(assert (=> b!6175392 (= c!1113123 (is-Concat!24959 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343)))))))))))

(declare-fun bm!515322 () Bool)

(declare-fun c!1113120 () Bool)

(assert (=> bm!515322 (= call!515327 ($colon$colon!1989 (exprs!5998 (ite (or c!1112823 c!1112819) lt!2337799 (Context!10997 call!515178))) (ite (or c!1113120 c!1113123) (regTwo!32740 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343)))))))) (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343))))))))))))

(declare-fun b!6175393 () Bool)

(assert (=> b!6175393 (= e!3761630 call!515331)))

(declare-fun b!6175394 () Bool)

(declare-fun e!3761632 () (Set Context!10996))

(declare-fun call!515328 () (Set Context!10996))

(declare-fun call!515326 () (Set Context!10996))

(assert (=> b!6175394 (= e!3761632 (set.union call!515328 call!515326))))

(declare-fun b!6175395 () Bool)

(assert (=> b!6175395 (= e!3761628 e!3761632)))

(declare-fun c!1113124 () Bool)

(assert (=> b!6175395 (= c!1113124 (is-Union!16114 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343)))))))))))

(declare-fun b!6175396 () Bool)

(declare-fun call!515329 () (Set Context!10996))

(assert (=> b!6175396 (= e!3761627 (set.union call!515328 call!515329))))

(declare-fun bm!515323 () Bool)

(assert (=> bm!515323 (= call!515326 (derivationStepZipperDown!1362 (ite c!1113124 (regTwo!32741 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343)))))))) (ite c!1113120 (regTwo!32740 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343)))))))) (ite c!1113123 (regOne!32740 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343)))))))) (reg!16443 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343))))))))))) (ite (or c!1113124 c!1113120) (ite (or c!1112823 c!1112819) lt!2337799 (Context!10997 call!515178)) (Context!10997 call!515330)) (h!70967 s!2326)))))

(declare-fun c!1113121 () Bool)

(declare-fun b!6175397 () Bool)

(assert (=> b!6175397 (= c!1113121 (is-Star!16114 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343)))))))))))

(assert (=> b!6175397 (= e!3761630 e!3761631)))

(declare-fun bm!515324 () Bool)

(assert (=> bm!515324 (= call!515329 call!515326)))

(declare-fun bm!515325 () Bool)

(assert (=> bm!515325 (= call!515331 call!515329)))

(declare-fun b!6175389 () Bool)

(assert (=> b!6175389 (= c!1113120 e!3761629)))

(declare-fun res!2555935 () Bool)

(assert (=> b!6175389 (=> (not res!2555935) (not e!3761629))))

(assert (=> b!6175389 (= res!2555935 (is-Concat!24959 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343)))))))))))

(assert (=> b!6175389 (= e!3761632 e!3761627)))

(declare-fun c!1113122 () Bool)

(declare-fun d!1935649 () Bool)

(assert (=> d!1935649 (= c!1113122 (and (is-ElementMatch!16114 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343)))))))) (= (c!1112765 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343)))))))) (h!70967 s!2326))))))

(assert (=> d!1935649 (= (derivationStepZipperDown!1362 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343))))))) (ite (or c!1112823 c!1112819) lt!2337799 (Context!10997 call!515178)) (h!70967 s!2326)) e!3761628)))

(declare-fun bm!515326 () Bool)

(assert (=> bm!515326 (= call!515328 (derivationStepZipperDown!1362 (ite c!1113124 (regOne!32741 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343)))))))) (regOne!32740 (ite c!1112823 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112819 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1112822 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343))))))))) (ite c!1113124 (ite (or c!1112823 c!1112819) lt!2337799 (Context!10997 call!515178)) (Context!10997 call!515327)) (h!70967 s!2326)))))

(declare-fun b!6175398 () Bool)

(assert (=> b!6175398 (= e!3761631 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935649 c!1113122) b!6175388))

(assert (= (and d!1935649 (not c!1113122)) b!6175395))

(assert (= (and b!6175395 c!1113124) b!6175394))

(assert (= (and b!6175395 (not c!1113124)) b!6175389))

(assert (= (and b!6175389 res!2555935) b!6175390))

(assert (= (and b!6175389 c!1113120) b!6175396))

(assert (= (and b!6175389 (not c!1113120)) b!6175392))

(assert (= (and b!6175392 c!1113123) b!6175393))

(assert (= (and b!6175392 (not c!1113123)) b!6175397))

(assert (= (and b!6175397 c!1113121) b!6175391))

(assert (= (and b!6175397 (not c!1113121)) b!6175398))

(assert (= (or b!6175393 b!6175391) bm!515321))

(assert (= (or b!6175393 b!6175391) bm!515325))

(assert (= (or b!6175396 bm!515321) bm!515322))

(assert (= (or b!6175396 bm!515325) bm!515324))

(assert (= (or b!6175394 bm!515324) bm!515323))

(assert (= (or b!6175394 b!6175396) bm!515326))

(declare-fun m!7011584 () Bool)

(assert (=> b!6175388 m!7011584))

(declare-fun m!7011586 () Bool)

(assert (=> b!6175390 m!7011586))

(declare-fun m!7011588 () Bool)

(assert (=> bm!515323 m!7011588))

(declare-fun m!7011590 () Bool)

(assert (=> bm!515322 m!7011590))

(declare-fun m!7011592 () Bool)

(assert (=> bm!515326 m!7011592))

(assert (=> bm!515171 d!1935649))

(assert (=> d!1935243 d!1935567))

(declare-fun b!6175399 () Bool)

(declare-fun e!3761637 () Bool)

(declare-fun lt!2338057 () Bool)

(assert (=> b!6175399 (= e!3761637 (not lt!2338057))))

(declare-fun b!6175400 () Bool)

(declare-fun e!3761633 () Bool)

(assert (=> b!6175400 (= e!3761633 (= (head!12745 Nil!64519) (c!1112765 (regOne!32740 r!7292))))))

(declare-fun b!6175401 () Bool)

(declare-fun res!2555943 () Bool)

(assert (=> b!6175401 (=> (not res!2555943) (not e!3761633))))

(assert (=> b!6175401 (= res!2555943 (isEmpty!36498 (tail!11830 Nil!64519)))))

(declare-fun b!6175402 () Bool)

(declare-fun e!3761638 () Bool)

(assert (=> b!6175402 (= e!3761638 (matchR!8297 (derivativeStep!4831 (regOne!32740 r!7292) (head!12745 Nil!64519)) (tail!11830 Nil!64519)))))

(declare-fun b!6175403 () Bool)

(declare-fun e!3761639 () Bool)

(declare-fun e!3761634 () Bool)

(assert (=> b!6175403 (= e!3761639 e!3761634)))

(declare-fun res!2555939 () Bool)

(assert (=> b!6175403 (=> (not res!2555939) (not e!3761634))))

(assert (=> b!6175403 (= res!2555939 (not lt!2338057))))

(declare-fun b!6175404 () Bool)

(declare-fun res!2555936 () Bool)

(assert (=> b!6175404 (=> (not res!2555936) (not e!3761633))))

(declare-fun call!515332 () Bool)

(assert (=> b!6175404 (= res!2555936 (not call!515332))))

(declare-fun b!6175405 () Bool)

(declare-fun res!2555938 () Bool)

(assert (=> b!6175405 (=> res!2555938 e!3761639)))

(assert (=> b!6175405 (= res!2555938 e!3761633)))

(declare-fun res!2555942 () Bool)

(assert (=> b!6175405 (=> (not res!2555942) (not e!3761633))))

(assert (=> b!6175405 (= res!2555942 lt!2338057)))

(declare-fun d!1935651 () Bool)

(declare-fun e!3761636 () Bool)

(assert (=> d!1935651 e!3761636))

(declare-fun c!1113125 () Bool)

(assert (=> d!1935651 (= c!1113125 (is-EmptyExpr!16114 (regOne!32740 r!7292)))))

(assert (=> d!1935651 (= lt!2338057 e!3761638)))

(declare-fun c!1113126 () Bool)

(assert (=> d!1935651 (= c!1113126 (isEmpty!36498 Nil!64519))))

(assert (=> d!1935651 (validRegex!7850 (regOne!32740 r!7292))))

(assert (=> d!1935651 (= (matchR!8297 (regOne!32740 r!7292) Nil!64519) lt!2338057)))

(declare-fun bm!515327 () Bool)

(assert (=> bm!515327 (= call!515332 (isEmpty!36498 Nil!64519))))

(declare-fun b!6175406 () Bool)

(declare-fun res!2555940 () Bool)

(assert (=> b!6175406 (=> res!2555940 e!3761639)))

(assert (=> b!6175406 (= res!2555940 (not (is-ElementMatch!16114 (regOne!32740 r!7292))))))

(assert (=> b!6175406 (= e!3761637 e!3761639)))

(declare-fun b!6175407 () Bool)

(assert (=> b!6175407 (= e!3761636 e!3761637)))

(declare-fun c!1113127 () Bool)

(assert (=> b!6175407 (= c!1113127 (is-EmptyLang!16114 (regOne!32740 r!7292)))))

(declare-fun b!6175408 () Bool)

(assert (=> b!6175408 (= e!3761638 (nullable!6107 (regOne!32740 r!7292)))))

(declare-fun b!6175409 () Bool)

(declare-fun e!3761635 () Bool)

(assert (=> b!6175409 (= e!3761634 e!3761635)))

(declare-fun res!2555941 () Bool)

(assert (=> b!6175409 (=> res!2555941 e!3761635)))

(assert (=> b!6175409 (= res!2555941 call!515332)))

(declare-fun b!6175410 () Bool)

(assert (=> b!6175410 (= e!3761635 (not (= (head!12745 Nil!64519) (c!1112765 (regOne!32740 r!7292)))))))

(declare-fun b!6175411 () Bool)

(assert (=> b!6175411 (= e!3761636 (= lt!2338057 call!515332))))

(declare-fun b!6175412 () Bool)

(declare-fun res!2555937 () Bool)

(assert (=> b!6175412 (=> res!2555937 e!3761635)))

(assert (=> b!6175412 (= res!2555937 (not (isEmpty!36498 (tail!11830 Nil!64519))))))

(assert (= (and d!1935651 c!1113126) b!6175408))

(assert (= (and d!1935651 (not c!1113126)) b!6175402))

(assert (= (and d!1935651 c!1113125) b!6175411))

(assert (= (and d!1935651 (not c!1113125)) b!6175407))

(assert (= (and b!6175407 c!1113127) b!6175399))

(assert (= (and b!6175407 (not c!1113127)) b!6175406))

(assert (= (and b!6175406 (not res!2555940)) b!6175405))

(assert (= (and b!6175405 res!2555942) b!6175404))

(assert (= (and b!6175404 res!2555936) b!6175401))

(assert (= (and b!6175401 res!2555943) b!6175400))

(assert (= (and b!6175405 (not res!2555938)) b!6175403))

(assert (= (and b!6175403 res!2555939) b!6175409))

(assert (= (and b!6175409 (not res!2555941)) b!6175412))

(assert (= (and b!6175412 (not res!2555937)) b!6175410))

(assert (= (or b!6175411 b!6175404 b!6175409) bm!515327))

(assert (=> b!6175408 m!7011390))

(declare-fun m!7011594 () Bool)

(assert (=> b!6175402 m!7011594))

(assert (=> b!6175402 m!7011594))

(declare-fun m!7011596 () Bool)

(assert (=> b!6175402 m!7011596))

(declare-fun m!7011598 () Bool)

(assert (=> b!6175402 m!7011598))

(assert (=> b!6175402 m!7011596))

(assert (=> b!6175402 m!7011598))

(declare-fun m!7011600 () Bool)

(assert (=> b!6175402 m!7011600))

(assert (=> b!6175412 m!7011598))

(assert (=> b!6175412 m!7011598))

(declare-fun m!7011602 () Bool)

(assert (=> b!6175412 m!7011602))

(assert (=> b!6175410 m!7011594))

(declare-fun m!7011604 () Bool)

(assert (=> d!1935651 m!7011604))

(assert (=> d!1935651 m!7010654))

(assert (=> b!6175400 m!7011594))

(assert (=> bm!515327 m!7011604))

(assert (=> b!6175401 m!7011598))

(assert (=> b!6175401 m!7011598))

(assert (=> b!6175401 m!7011602))

(assert (=> d!1935243 d!1935651))

(declare-fun b!6175413 () Bool)

(declare-fun res!2555945 () Bool)

(declare-fun e!3761644 () Bool)

(assert (=> b!6175413 (=> res!2555945 e!3761644)))

(assert (=> b!6175413 (= res!2555945 (not (is-Concat!24959 (regOne!32740 r!7292))))))

(declare-fun e!3761645 () Bool)

(assert (=> b!6175413 (= e!3761645 e!3761644)))

(declare-fun bm!515328 () Bool)

(declare-fun c!1113129 () Bool)

(declare-fun c!1113128 () Bool)

(declare-fun call!515335 () Bool)

(assert (=> bm!515328 (= call!515335 (validRegex!7850 (ite c!1113128 (reg!16443 (regOne!32740 r!7292)) (ite c!1113129 (regOne!32741 (regOne!32740 r!7292)) (regOne!32740 (regOne!32740 r!7292))))))))

(declare-fun b!6175414 () Bool)

(declare-fun e!3761646 () Bool)

(declare-fun e!3761640 () Bool)

(assert (=> b!6175414 (= e!3761646 e!3761640)))

(assert (=> b!6175414 (= c!1113128 (is-Star!16114 (regOne!32740 r!7292)))))

(declare-fun b!6175415 () Bool)

(declare-fun e!3761641 () Bool)

(assert (=> b!6175415 (= e!3761644 e!3761641)))

(declare-fun res!2555948 () Bool)

(assert (=> b!6175415 (=> (not res!2555948) (not e!3761641))))

(declare-fun call!515334 () Bool)

(assert (=> b!6175415 (= res!2555948 call!515334)))

(declare-fun bm!515329 () Bool)

(declare-fun call!515333 () Bool)

(assert (=> bm!515329 (= call!515333 (validRegex!7850 (ite c!1113129 (regTwo!32741 (regOne!32740 r!7292)) (regTwo!32740 (regOne!32740 r!7292)))))))

(declare-fun b!6175416 () Bool)

(assert (=> b!6175416 (= e!3761640 e!3761645)))

(assert (=> b!6175416 (= c!1113129 (is-Union!16114 (regOne!32740 r!7292)))))

(declare-fun b!6175417 () Bool)

(declare-fun res!2555946 () Bool)

(declare-fun e!3761642 () Bool)

(assert (=> b!6175417 (=> (not res!2555946) (not e!3761642))))

(assert (=> b!6175417 (= res!2555946 call!515334)))

(assert (=> b!6175417 (= e!3761645 e!3761642)))

(declare-fun b!6175418 () Bool)

(assert (=> b!6175418 (= e!3761642 call!515333)))

(declare-fun b!6175419 () Bool)

(assert (=> b!6175419 (= e!3761641 call!515333)))

(declare-fun d!1935653 () Bool)

(declare-fun res!2555947 () Bool)

(assert (=> d!1935653 (=> res!2555947 e!3761646)))

(assert (=> d!1935653 (= res!2555947 (is-ElementMatch!16114 (regOne!32740 r!7292)))))

(assert (=> d!1935653 (= (validRegex!7850 (regOne!32740 r!7292)) e!3761646)))

(declare-fun b!6175420 () Bool)

(declare-fun e!3761643 () Bool)

(assert (=> b!6175420 (= e!3761640 e!3761643)))

(declare-fun res!2555944 () Bool)

(assert (=> b!6175420 (= res!2555944 (not (nullable!6107 (reg!16443 (regOne!32740 r!7292)))))))

(assert (=> b!6175420 (=> (not res!2555944) (not e!3761643))))

(declare-fun bm!515330 () Bool)

(assert (=> bm!515330 (= call!515334 call!515335)))

(declare-fun b!6175421 () Bool)

(assert (=> b!6175421 (= e!3761643 call!515335)))

(assert (= (and d!1935653 (not res!2555947)) b!6175414))

(assert (= (and b!6175414 c!1113128) b!6175420))

(assert (= (and b!6175414 (not c!1113128)) b!6175416))

(assert (= (and b!6175420 res!2555944) b!6175421))

(assert (= (and b!6175416 c!1113129) b!6175417))

(assert (= (and b!6175416 (not c!1113129)) b!6175413))

(assert (= (and b!6175417 res!2555946) b!6175418))

(assert (= (and b!6175413 (not res!2555945)) b!6175415))

(assert (= (and b!6175415 res!2555948) b!6175419))

(assert (= (or b!6175418 b!6175419) bm!515329))

(assert (= (or b!6175417 b!6175415) bm!515330))

(assert (= (or b!6175421 bm!515330) bm!515328))

(declare-fun m!7011606 () Bool)

(assert (=> bm!515328 m!7011606))

(declare-fun m!7011608 () Bool)

(assert (=> bm!515329 m!7011608))

(declare-fun m!7011610 () Bool)

(assert (=> b!6175420 m!7011610))

(assert (=> d!1935243 d!1935653))

(assert (=> d!1935347 d!1935585))

(assert (=> b!6174347 d!1935289))

(assert (=> b!6174636 d!1935289))

(declare-fun bs!1531286 () Bool)

(declare-fun d!1935655 () Bool)

(assert (= bs!1531286 (and d!1935655 d!1935337)))

(declare-fun lambda!337126 () Int)

(assert (=> bs!1531286 (= lambda!337126 lambda!337071)))

(declare-fun bs!1531287 () Bool)

(assert (= bs!1531287 (and d!1935655 d!1935291)))

(assert (=> bs!1531287 (= lambda!337126 lambda!337058)))

(declare-fun bs!1531288 () Bool)

(assert (= bs!1531288 (and d!1935655 d!1935591)))

(assert (=> bs!1531288 (= lambda!337126 lambda!337119)))

(declare-fun bs!1531289 () Bool)

(assert (= bs!1531289 (and d!1935655 d!1935293)))

(assert (=> bs!1531289 (= lambda!337126 lambda!337061)))

(declare-fun bs!1531290 () Bool)

(assert (= bs!1531290 (and d!1935655 d!1935533)))

(assert (=> bs!1531290 (= lambda!337126 lambda!337114)))

(declare-fun bs!1531291 () Bool)

(assert (= bs!1531291 (and d!1935655 d!1935355)))

(assert (=> bs!1531291 (= lambda!337126 lambda!337073)))

(declare-fun bs!1531292 () Bool)

(assert (= bs!1531292 (and d!1935655 d!1935485)))

(assert (=> bs!1531292 (= lambda!337126 lambda!337104)))

(declare-fun bs!1531293 () Bool)

(assert (= bs!1531293 (and d!1935655 d!1935287)))

(assert (=> bs!1531293 (= lambda!337126 lambda!337055)))

(declare-fun bs!1531294 () Bool)

(assert (= bs!1531294 (and d!1935655 d!1935301)))

(assert (=> bs!1531294 (= lambda!337126 lambda!337062)))

(declare-fun bs!1531295 () Bool)

(assert (= bs!1531295 (and d!1935655 d!1935349)))

(assert (=> bs!1531295 (= lambda!337126 lambda!337072)))

(assert (=> d!1935655 (= (inv!83533 setElem!41867) (forall!15233 (exprs!5998 setElem!41867) lambda!337126))))

(declare-fun bs!1531296 () Bool)

(assert (= bs!1531296 d!1935655))

(declare-fun m!7011612 () Bool)

(assert (=> bs!1531296 m!7011612))

(assert (=> setNonEmpty!41867 d!1935655))

(declare-fun d!1935657 () Bool)

(assert (=> d!1935657 (= (isEmpty!36495 (exprs!5998 (h!70966 zl!343))) (is-Nil!64517 (exprs!5998 (h!70966 zl!343))))))

(assert (=> b!6174630 d!1935657))

(declare-fun bm!515331 () Bool)

(declare-fun call!515340 () List!64641)

(declare-fun call!515337 () List!64641)

(assert (=> bm!515331 (= call!515340 call!515337)))

(declare-fun b!6175422 () Bool)

(declare-fun e!3761648 () (Set Context!10996))

(assert (=> b!6175422 (= e!3761648 (set.insert (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))) (as set.empty (Set Context!10996))))))

(declare-fun b!6175424 () Bool)

(declare-fun e!3761649 () Bool)

(assert (=> b!6175424 (= e!3761649 (nullable!6107 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343))))))))

(declare-fun b!6175425 () Bool)

(declare-fun e!3761651 () (Set Context!10996))

(declare-fun call!515341 () (Set Context!10996))

(assert (=> b!6175425 (= e!3761651 call!515341)))

(declare-fun b!6175426 () Bool)

(declare-fun e!3761647 () (Set Context!10996))

(declare-fun e!3761650 () (Set Context!10996))

(assert (=> b!6175426 (= e!3761647 e!3761650)))

(declare-fun c!1113133 () Bool)

(assert (=> b!6175426 (= c!1113133 (is-Concat!24959 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun c!1113130 () Bool)

(declare-fun bm!515332 () Bool)

(assert (=> bm!515332 (= call!515337 ($colon$colon!1989 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343))))) (ite (or c!1113130 c!1113133) (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (h!70965 (exprs!5998 (h!70966 zl!343))))))))

(declare-fun b!6175427 () Bool)

(assert (=> b!6175427 (= e!3761650 call!515341)))

(declare-fun b!6175428 () Bool)

(declare-fun e!3761652 () (Set Context!10996))

(declare-fun call!515338 () (Set Context!10996))

(declare-fun call!515336 () (Set Context!10996))

(assert (=> b!6175428 (= e!3761652 (set.union call!515338 call!515336))))

(declare-fun b!6175429 () Bool)

(assert (=> b!6175429 (= e!3761648 e!3761652)))

(declare-fun c!1113134 () Bool)

(assert (=> b!6175429 (= c!1113134 (is-Union!16114 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6175430 () Bool)

(declare-fun call!515339 () (Set Context!10996))

(assert (=> b!6175430 (= e!3761647 (set.union call!515338 call!515339))))

(declare-fun bm!515333 () Bool)

(assert (=> bm!515333 (= call!515336 (derivationStepZipperDown!1362 (ite c!1113134 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1113130 (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (ite c!1113133 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))) (reg!16443 (h!70965 (exprs!5998 (h!70966 zl!343))))))) (ite (or c!1113134 c!1113130) (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))) (Context!10997 call!515340)) (h!70967 s!2326)))))

(declare-fun b!6175431 () Bool)

(declare-fun c!1113131 () Bool)

(assert (=> b!6175431 (= c!1113131 (is-Star!16114 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(assert (=> b!6175431 (= e!3761650 e!3761651)))

(declare-fun bm!515334 () Bool)

(assert (=> bm!515334 (= call!515339 call!515336)))

(declare-fun bm!515335 () Bool)

(assert (=> bm!515335 (= call!515341 call!515339)))

(declare-fun b!6175423 () Bool)

(assert (=> b!6175423 (= c!1113130 e!3761649)))

(declare-fun res!2555949 () Bool)

(assert (=> b!6175423 (=> (not res!2555949) (not e!3761649))))

(assert (=> b!6175423 (= res!2555949 (is-Concat!24959 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(assert (=> b!6175423 (= e!3761652 e!3761647)))

(declare-fun d!1935659 () Bool)

(declare-fun c!1113132 () Bool)

(assert (=> d!1935659 (= c!1113132 (and (is-ElementMatch!16114 (h!70965 (exprs!5998 (h!70966 zl!343)))) (= (c!1112765 (h!70965 (exprs!5998 (h!70966 zl!343)))) (h!70967 s!2326))))))

(assert (=> d!1935659 (= (derivationStepZipperDown!1362 (h!70965 (exprs!5998 (h!70966 zl!343))) (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))) (h!70967 s!2326)) e!3761648)))

(declare-fun bm!515336 () Bool)

(assert (=> bm!515336 (= call!515338 (derivationStepZipperDown!1362 (ite c!1113134 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343))))) (ite c!1113134 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))) (Context!10997 call!515337)) (h!70967 s!2326)))))

(declare-fun b!6175432 () Bool)

(assert (=> b!6175432 (= e!3761651 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935659 c!1113132) b!6175422))

(assert (= (and d!1935659 (not c!1113132)) b!6175429))

(assert (= (and b!6175429 c!1113134) b!6175428))

(assert (= (and b!6175429 (not c!1113134)) b!6175423))

(assert (= (and b!6175423 res!2555949) b!6175424))

(assert (= (and b!6175423 c!1113130) b!6175430))

(assert (= (and b!6175423 (not c!1113130)) b!6175426))

(assert (= (and b!6175426 c!1113133) b!6175427))

(assert (= (and b!6175426 (not c!1113133)) b!6175431))

(assert (= (and b!6175431 c!1113131) b!6175425))

(assert (= (and b!6175431 (not c!1113131)) b!6175432))

(assert (= (or b!6175427 b!6175425) bm!515331))

(assert (= (or b!6175427 b!6175425) bm!515335))

(assert (= (or b!6175430 bm!515331) bm!515332))

(assert (= (or b!6175430 bm!515335) bm!515334))

(assert (= (or b!6175428 bm!515334) bm!515333))

(assert (= (or b!6175428 b!6175430) bm!515336))

(declare-fun m!7011614 () Bool)

(assert (=> b!6175422 m!7011614))

(assert (=> b!6175424 m!7010742))

(declare-fun m!7011616 () Bool)

(assert (=> bm!515333 m!7011616))

(declare-fun m!7011618 () Bool)

(assert (=> bm!515332 m!7011618))

(declare-fun m!7011620 () Bool)

(assert (=> bm!515336 m!7011620))

(assert (=> bm!515155 d!1935659))

(declare-fun d!1935661 () Bool)

(assert (=> d!1935661 (= (isUnion!969 lt!2337957) (is-Union!16114 lt!2337957))))

(assert (=> b!6174439 d!1935661))

(declare-fun bm!515337 () Bool)

(declare-fun call!515346 () List!64641)

(declare-fun call!515343 () List!64641)

(assert (=> bm!515337 (= call!515346 call!515343)))

(declare-fun b!6175433 () Bool)

(declare-fun e!3761654 () (Set Context!10996))

(assert (=> b!6175433 (= e!3761654 (set.insert (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (as set.empty (Set Context!10996))))))

(declare-fun b!6175435 () Bool)

(declare-fun e!3761655 () Bool)

(assert (=> b!6175435 (= e!3761655 (nullable!6107 (regOne!32740 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))))))))

(declare-fun b!6175436 () Bool)

(declare-fun e!3761657 () (Set Context!10996))

(declare-fun call!515347 () (Set Context!10996))

(assert (=> b!6175436 (= e!3761657 call!515347)))

(declare-fun b!6175437 () Bool)

(declare-fun e!3761653 () (Set Context!10996))

(declare-fun e!3761656 () (Set Context!10996))

(assert (=> b!6175437 (= e!3761653 e!3761656)))

(declare-fun c!1113138 () Bool)

(assert (=> b!6175437 (= c!1113138 (is-Concat!24959 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))))))

(declare-fun bm!515338 () Bool)

(declare-fun c!1113135 () Bool)

(assert (=> bm!515338 (= call!515343 ($colon$colon!1989 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))))) (ite (or c!1113135 c!1113138) (regTwo!32740 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))))))))

(declare-fun b!6175438 () Bool)

(assert (=> b!6175438 (= e!3761656 call!515347)))

(declare-fun b!6175439 () Bool)

(declare-fun e!3761658 () (Set Context!10996))

(declare-fun call!515344 () (Set Context!10996))

(declare-fun call!515342 () (Set Context!10996))

(assert (=> b!6175439 (= e!3761658 (set.union call!515344 call!515342))))

(declare-fun b!6175440 () Bool)

(assert (=> b!6175440 (= e!3761654 e!3761658)))

(declare-fun c!1113139 () Bool)

(assert (=> b!6175440 (= c!1113139 (is-Union!16114 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))))))

(declare-fun b!6175441 () Bool)

(declare-fun call!515345 () (Set Context!10996))

(assert (=> b!6175441 (= e!3761653 (set.union call!515344 call!515345))))

(declare-fun bm!515339 () Bool)

(assert (=> bm!515339 (= call!515342 (derivationStepZipperDown!1362 (ite c!1113139 (regTwo!32741 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (ite c!1113135 (regTwo!32740 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (ite c!1113138 (regOne!32740 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (reg!16443 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))))))) (ite (or c!1113139 c!1113135) (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (Context!10997 call!515346)) (h!70967 s!2326)))))

(declare-fun b!6175442 () Bool)

(declare-fun c!1113136 () Bool)

(assert (=> b!6175442 (= c!1113136 (is-Star!16114 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))))))

(assert (=> b!6175442 (= e!3761656 e!3761657)))

(declare-fun bm!515340 () Bool)

(assert (=> bm!515340 (= call!515345 call!515342)))

(declare-fun bm!515341 () Bool)

(assert (=> bm!515341 (= call!515347 call!515345)))

(declare-fun b!6175434 () Bool)

(assert (=> b!6175434 (= c!1113135 e!3761655)))

(declare-fun res!2555950 () Bool)

(assert (=> b!6175434 (=> (not res!2555950) (not e!3761655))))

(assert (=> b!6175434 (= res!2555950 (is-Concat!24959 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))))))

(assert (=> b!6175434 (= e!3761658 e!3761653)))

(declare-fun d!1935663 () Bool)

(declare-fun c!1113137 () Bool)

(assert (=> d!1935663 (= c!1113137 (and (is-ElementMatch!16114 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (= (c!1112765 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (h!70967 s!2326))))))

(assert (=> d!1935663 (= (derivationStepZipperDown!1362 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))) (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (h!70967 s!2326)) e!3761654)))

(declare-fun bm!515342 () Bool)

(assert (=> bm!515342 (= call!515344 (derivationStepZipperDown!1362 (ite c!1113139 (regOne!32741 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (regOne!32740 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))))) (ite c!1113139 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (Context!10997 call!515343)) (h!70967 s!2326)))))

(declare-fun b!6175443 () Bool)

(assert (=> b!6175443 (= e!3761657 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935663 c!1113137) b!6175433))

(assert (= (and d!1935663 (not c!1113137)) b!6175440))

(assert (= (and b!6175440 c!1113139) b!6175439))

(assert (= (and b!6175440 (not c!1113139)) b!6175434))

(assert (= (and b!6175434 res!2555950) b!6175435))

(assert (= (and b!6175434 c!1113135) b!6175441))

(assert (= (and b!6175434 (not c!1113135)) b!6175437))

(assert (= (and b!6175437 c!1113138) b!6175438))

(assert (= (and b!6175437 (not c!1113138)) b!6175442))

(assert (= (and b!6175442 c!1113136) b!6175436))

(assert (= (and b!6175442 (not c!1113136)) b!6175443))

(assert (= (or b!6175438 b!6175436) bm!515337))

(assert (= (or b!6175438 b!6175436) bm!515341))

(assert (= (or b!6175441 bm!515337) bm!515338))

(assert (= (or b!6175441 bm!515341) bm!515340))

(assert (= (or b!6175439 bm!515340) bm!515339))

(assert (= (or b!6175439 b!6175441) bm!515342))

(declare-fun m!7011622 () Bool)

(assert (=> b!6175433 m!7011622))

(declare-fun m!7011624 () Bool)

(assert (=> b!6175435 m!7011624))

(declare-fun m!7011626 () Bool)

(assert (=> bm!515339 m!7011626))

(declare-fun m!7011628 () Bool)

(assert (=> bm!515338 m!7011628))

(declare-fun m!7011630 () Bool)

(assert (=> bm!515342 m!7011630))

(assert (=> bm!515154 d!1935663))

(declare-fun d!1935665 () Bool)

(declare-fun res!2555951 () Bool)

(declare-fun e!3761659 () Bool)

(assert (=> d!1935665 (=> res!2555951 e!3761659)))

(assert (=> d!1935665 (= res!2555951 (is-Nil!64517 (exprs!5998 setElem!41861)))))

(assert (=> d!1935665 (= (forall!15233 (exprs!5998 setElem!41861) lambda!337055) e!3761659)))

(declare-fun b!6175444 () Bool)

(declare-fun e!3761660 () Bool)

(assert (=> b!6175444 (= e!3761659 e!3761660)))

(declare-fun res!2555952 () Bool)

(assert (=> b!6175444 (=> (not res!2555952) (not e!3761660))))

(assert (=> b!6175444 (= res!2555952 (dynLambda!25444 lambda!337055 (h!70965 (exprs!5998 setElem!41861))))))

(declare-fun b!6175445 () Bool)

(assert (=> b!6175445 (= e!3761660 (forall!15233 (t!378145 (exprs!5998 setElem!41861)) lambda!337055))))

(assert (= (and d!1935665 (not res!2555951)) b!6175444))

(assert (= (and b!6175444 res!2555952) b!6175445))

(declare-fun b_lambda!235035 () Bool)

(assert (=> (not b_lambda!235035) (not b!6175444)))

(declare-fun m!7011632 () Bool)

(assert (=> b!6175444 m!7011632))

(declare-fun m!7011634 () Bool)

(assert (=> b!6175445 m!7011634))

(assert (=> d!1935287 d!1935665))

(assert (=> d!1935335 d!1935585))

(declare-fun d!1935667 () Bool)

(declare-fun c!1113140 () Bool)

(assert (=> d!1935667 (= c!1113140 (isEmpty!36498 (tail!11830 (t!378147 s!2326))))))

(declare-fun e!3761661 () Bool)

(assert (=> d!1935667 (= (matchZipper!2126 (derivationStepZipper!2085 lt!2337798 (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))) e!3761661)))

(declare-fun b!6175446 () Bool)

(assert (=> b!6175446 (= e!3761661 (nullableZipper!1893 (derivationStepZipper!2085 lt!2337798 (head!12745 (t!378147 s!2326)))))))

(declare-fun b!6175447 () Bool)

(assert (=> b!6175447 (= e!3761661 (matchZipper!2126 (derivationStepZipper!2085 (derivationStepZipper!2085 lt!2337798 (head!12745 (t!378147 s!2326))) (head!12745 (tail!11830 (t!378147 s!2326)))) (tail!11830 (tail!11830 (t!378147 s!2326)))))))

(assert (= (and d!1935667 c!1113140) b!6175446))

(assert (= (and d!1935667 (not c!1113140)) b!6175447))

(assert (=> d!1935667 m!7010696))

(assert (=> d!1935667 m!7011396))

(assert (=> b!6175446 m!7010754))

(declare-fun m!7011636 () Bool)

(assert (=> b!6175446 m!7011636))

(assert (=> b!6175447 m!7010696))

(assert (=> b!6175447 m!7011400))

(assert (=> b!6175447 m!7010754))

(assert (=> b!6175447 m!7011400))

(declare-fun m!7011638 () Bool)

(assert (=> b!6175447 m!7011638))

(assert (=> b!6175447 m!7010696))

(assert (=> b!6175447 m!7011404))

(assert (=> b!6175447 m!7011638))

(assert (=> b!6175447 m!7011404))

(declare-fun m!7011640 () Bool)

(assert (=> b!6175447 m!7011640))

(assert (=> b!6174409 d!1935667))

(declare-fun bs!1531297 () Bool)

(declare-fun d!1935669 () Bool)

(assert (= bs!1531297 (and d!1935669 d!1935619)))

(declare-fun lambda!337127 () Int)

(assert (=> bs!1531297 (= lambda!337127 lambda!337122)))

(declare-fun bs!1531298 () Bool)

(assert (= bs!1531298 (and d!1935669 d!1935643)))

(assert (=> bs!1531298 (= lambda!337127 lambda!337125)))

(declare-fun bs!1531299 () Bool)

(assert (= bs!1531299 (and d!1935669 d!1935543)))

(assert (=> bs!1531299 (= lambda!337127 lambda!337115)))

(declare-fun bs!1531300 () Bool)

(assert (= bs!1531300 (and d!1935669 d!1935573)))

(assert (=> bs!1531300 (= lambda!337127 lambda!337118)))

(declare-fun bs!1531301 () Bool)

(assert (= bs!1531301 (and d!1935669 d!1935625)))

(assert (=> bs!1531301 (= lambda!337127 lambda!337123)))

(declare-fun bs!1531302 () Bool)

(assert (= bs!1531302 (and d!1935669 d!1935629)))

(assert (=> bs!1531302 (= lambda!337127 lambda!337124)))

(declare-fun bs!1531303 () Bool)

(assert (= bs!1531303 (and d!1935669 d!1935499)))

(assert (=> bs!1531303 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337127 lambda!337107))))

(declare-fun bs!1531304 () Bool)

(assert (= bs!1531304 (and d!1935669 b!6174141)))

(assert (=> bs!1531304 (= (= (head!12745 (t!378147 s!2326)) (h!70967 s!2326)) (= lambda!337127 lambda!337028))))

(declare-fun bs!1531305 () Bool)

(assert (= bs!1531305 (and d!1935669 d!1935507)))

(assert (=> bs!1531305 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337127 lambda!337108))))

(assert (=> d!1935669 true))

(assert (=> d!1935669 (= (derivationStepZipper!2085 lt!2337798 (head!12745 (t!378147 s!2326))) (flatMap!1619 lt!2337798 lambda!337127))))

(declare-fun bs!1531306 () Bool)

(assert (= bs!1531306 d!1935669))

(declare-fun m!7011642 () Bool)

(assert (=> bs!1531306 m!7011642))

(assert (=> b!6174409 d!1935669))

(assert (=> b!6174409 d!1935545))

(assert (=> b!6174409 d!1935547))

(assert (=> d!1935249 d!1935243))

(declare-fun d!1935671 () Bool)

(assert (=> d!1935671 (= (Exists!3184 lambda!337046) (choose!45881 lambda!337046))))

(declare-fun bs!1531307 () Bool)

(assert (= bs!1531307 d!1935671))

(declare-fun m!7011644 () Bool)

(assert (=> bs!1531307 m!7011644))

(assert (=> d!1935249 d!1935671))

(assert (=> d!1935249 d!1935653))

(assert (=> d!1935249 d!1935253))

(declare-fun bs!1531308 () Bool)

(declare-fun d!1935673 () Bool)

(assert (= bs!1531308 (and d!1935673 b!6174146)))

(declare-fun lambda!337130 () Int)

(assert (=> bs!1531308 (= lambda!337130 lambda!337026)))

(declare-fun bs!1531309 () Bool)

(assert (= bs!1531309 (and d!1935673 d!1935249)))

(assert (=> bs!1531309 (= lambda!337130 lambda!337046)))

(declare-fun bs!1531310 () Bool)

(assert (= bs!1531310 (and d!1935673 b!6175303)))

(assert (=> bs!1531310 (not (= lambda!337130 lambda!337121))))

(declare-fun bs!1531311 () Bool)

(assert (= bs!1531311 (and d!1935673 d!1935251)))

(assert (=> bs!1531311 (= lambda!337130 lambda!337051)))

(assert (=> bs!1531311 (not (= lambda!337130 lambda!337052))))

(declare-fun bs!1531312 () Bool)

(assert (= bs!1531312 (and d!1935673 b!6175308)))

(assert (=> bs!1531312 (not (= lambda!337130 lambda!337120))))

(assert (=> bs!1531308 (not (= lambda!337130 lambda!337027))))

(declare-fun bs!1531313 () Bool)

(assert (= bs!1531313 (and d!1935673 b!6174526)))

(assert (=> bs!1531313 (not (= lambda!337130 lambda!337068))))

(declare-fun bs!1531314 () Bool)

(assert (= bs!1531314 (and d!1935673 b!6174531)))

(assert (=> bs!1531314 (not (= lambda!337130 lambda!337067))))

(assert (=> d!1935673 true))

(assert (=> d!1935673 true))

(assert (=> d!1935673 true))

(assert (=> d!1935673 (= (isDefined!12708 (findConcatSeparation!2419 (regOne!32740 r!7292) (regTwo!32740 r!7292) Nil!64519 s!2326 s!2326)) (Exists!3184 lambda!337130))))

(assert (=> d!1935673 true))

(declare-fun _$89!2308 () Unit!157691)

(assert (=> d!1935673 (= (choose!45882 (regOne!32740 r!7292) (regTwo!32740 r!7292) s!2326) _$89!2308)))

(declare-fun bs!1531315 () Bool)

(assert (= bs!1531315 d!1935673))

(assert (=> bs!1531315 m!7010418))

(assert (=> bs!1531315 m!7010418))

(assert (=> bs!1531315 m!7010420))

(declare-fun m!7011646 () Bool)

(assert (=> bs!1531315 m!7011646))

(assert (=> d!1935249 d!1935673))

(declare-fun b!6175463 () Bool)

(declare-fun e!3761668 () Bool)

(declare-fun lt!2338060 () List!64643)

(assert (=> b!6175463 (= e!3761668 (or (not (= (_2!36396 (get!22271 lt!2337935)) Nil!64519)) (= lt!2338060 (_1!36396 (get!22271 lt!2337935)))))))

(declare-fun b!6175460 () Bool)

(declare-fun e!3761669 () List!64643)

(assert (=> b!6175460 (= e!3761669 (_2!36396 (get!22271 lt!2337935)))))

(declare-fun d!1935675 () Bool)

(assert (=> d!1935675 e!3761668))

(declare-fun res!2555961 () Bool)

(assert (=> d!1935675 (=> (not res!2555961) (not e!3761668))))

(declare-fun content!12045 (List!64643) (Set C!32498))

(assert (=> d!1935675 (= res!2555961 (= (content!12045 lt!2338060) (set.union (content!12045 (_1!36396 (get!22271 lt!2337935))) (content!12045 (_2!36396 (get!22271 lt!2337935))))))))

(assert (=> d!1935675 (= lt!2338060 e!3761669)))

(declare-fun c!1113143 () Bool)

(assert (=> d!1935675 (= c!1113143 (is-Nil!64519 (_1!36396 (get!22271 lt!2337935))))))

(assert (=> d!1935675 (= (++!14198 (_1!36396 (get!22271 lt!2337935)) (_2!36396 (get!22271 lt!2337935))) lt!2338060)))

(declare-fun b!6175462 () Bool)

(declare-fun res!2555962 () Bool)

(assert (=> b!6175462 (=> (not res!2555962) (not e!3761668))))

(declare-fun size!40253 (List!64643) Int)

(assert (=> b!6175462 (= res!2555962 (= (size!40253 lt!2338060) (+ (size!40253 (_1!36396 (get!22271 lt!2337935))) (size!40253 (_2!36396 (get!22271 lt!2337935))))))))

(declare-fun b!6175461 () Bool)

(assert (=> b!6175461 (= e!3761669 (Cons!64519 (h!70967 (_1!36396 (get!22271 lt!2337935))) (++!14198 (t!378147 (_1!36396 (get!22271 lt!2337935))) (_2!36396 (get!22271 lt!2337935)))))))

(assert (= (and d!1935675 c!1113143) b!6175460))

(assert (= (and d!1935675 (not c!1113143)) b!6175461))

(assert (= (and d!1935675 res!2555961) b!6175462))

(assert (= (and b!6175462 res!2555962) b!6175463))

(declare-fun m!7011648 () Bool)

(assert (=> d!1935675 m!7011648))

(declare-fun m!7011650 () Bool)

(assert (=> d!1935675 m!7011650))

(declare-fun m!7011652 () Bool)

(assert (=> d!1935675 m!7011652))

(declare-fun m!7011654 () Bool)

(assert (=> b!6175462 m!7011654))

(declare-fun m!7011656 () Bool)

(assert (=> b!6175462 m!7011656))

(declare-fun m!7011658 () Bool)

(assert (=> b!6175462 m!7011658))

(declare-fun m!7011660 () Bool)

(assert (=> b!6175461 m!7011660))

(assert (=> b!6174316 d!1935675))

(assert (=> b!6174316 d!1935579))

(declare-fun d!1935677 () Bool)

(assert (=> d!1935677 (= (nullable!6107 (reg!16443 r!7292)) (nullableFct!2069 (reg!16443 r!7292)))))

(declare-fun bs!1531316 () Bool)

(assert (= bs!1531316 d!1935677))

(declare-fun m!7011662 () Bool)

(assert (=> bs!1531316 m!7011662))

(assert (=> b!6174471 d!1935677))

(declare-fun d!1935679 () Bool)

(assert (=> d!1935679 (= (isEmptyExpr!1529 lt!2337985) (is-EmptyExpr!16114 lt!2337985))))

(assert (=> b!6174654 d!1935679))

(declare-fun d!1935681 () Bool)

(declare-fun res!2555967 () Bool)

(declare-fun e!3761674 () Bool)

(assert (=> d!1935681 (=> res!2555967 e!3761674)))

(assert (=> d!1935681 (= res!2555967 (is-Nil!64518 lt!2337966))))

(assert (=> d!1935681 (= (noDuplicate!1958 lt!2337966) e!3761674)))

(declare-fun b!6175468 () Bool)

(declare-fun e!3761675 () Bool)

(assert (=> b!6175468 (= e!3761674 e!3761675)))

(declare-fun res!2555968 () Bool)

(assert (=> b!6175468 (=> (not res!2555968) (not e!3761675))))

(declare-fun contains!20069 (List!64642 Context!10996) Bool)

(assert (=> b!6175468 (= res!2555968 (not (contains!20069 (t!378146 lt!2337966) (h!70966 lt!2337966))))))

(declare-fun b!6175469 () Bool)

(assert (=> b!6175469 (= e!3761675 (noDuplicate!1958 (t!378146 lt!2337966)))))

(assert (= (and d!1935681 (not res!2555967)) b!6175468))

(assert (= (and b!6175468 res!2555968) b!6175469))

(declare-fun m!7011664 () Bool)

(assert (=> b!6175468 m!7011664))

(declare-fun m!7011666 () Bool)

(assert (=> b!6175469 m!7011666))

(assert (=> d!1935299 d!1935681))

(declare-fun d!1935683 () Bool)

(declare-fun e!3761684 () Bool)

(assert (=> d!1935683 e!3761684))

(declare-fun res!2555973 () Bool)

(assert (=> d!1935683 (=> (not res!2555973) (not e!3761684))))

(declare-fun res!2555974 () List!64642)

(assert (=> d!1935683 (= res!2555973 (noDuplicate!1958 res!2555974))))

(declare-fun e!3761683 () Bool)

(assert (=> d!1935683 e!3761683))

(assert (=> d!1935683 (= (choose!45887 z!1189) res!2555974)))

(declare-fun b!6175477 () Bool)

(declare-fun e!3761682 () Bool)

(declare-fun tp!1723947 () Bool)

(assert (=> b!6175477 (= e!3761682 tp!1723947)))

(declare-fun b!6175476 () Bool)

(declare-fun tp!1723948 () Bool)

(assert (=> b!6175476 (= e!3761683 (and (inv!83533 (h!70966 res!2555974)) e!3761682 tp!1723948))))

(declare-fun b!6175478 () Bool)

(assert (=> b!6175478 (= e!3761684 (= (content!12043 res!2555974) z!1189))))

(assert (= b!6175476 b!6175477))

(assert (= (and d!1935683 (is-Cons!64518 res!2555974)) b!6175476))

(assert (= (and d!1935683 res!2555973) b!6175478))

(declare-fun m!7011668 () Bool)

(assert (=> d!1935683 m!7011668))

(declare-fun m!7011670 () Bool)

(assert (=> b!6175476 m!7011670))

(declare-fun m!7011672 () Bool)

(assert (=> b!6175478 m!7011672))

(assert (=> d!1935299 d!1935683))

(assert (=> d!1935289 d!1935585))

(assert (=> d!1935269 d!1935271))

(assert (=> d!1935269 d!1935341))

(declare-fun d!1935685 () Bool)

(declare-fun e!3761685 () Bool)

(assert (=> d!1935685 (= (matchZipper!2126 (set.union lt!2337788 lt!2337798) (t!378147 s!2326)) e!3761685)))

(declare-fun res!2555975 () Bool)

(assert (=> d!1935685 (=> res!2555975 e!3761685)))

(assert (=> d!1935685 (= res!2555975 (matchZipper!2126 lt!2337788 (t!378147 s!2326)))))

(assert (=> d!1935685 true))

(declare-fun _$48!1780 () Unit!157691)

(assert (=> d!1935685 (= (choose!45884 lt!2337788 lt!2337798 (t!378147 s!2326)) _$48!1780)))

(declare-fun b!6175479 () Bool)

(assert (=> b!6175479 (= e!3761685 (matchZipper!2126 lt!2337798 (t!378147 s!2326)))))

(assert (= (and d!1935685 (not res!2555975)) b!6175479))

(assert (=> d!1935685 m!7010474))

(assert (=> d!1935685 m!7010480))

(assert (=> b!6175479 m!7010390))

(assert (=> d!1935269 d!1935685))

(declare-fun d!1935687 () Bool)

(assert (=> d!1935687 (= (nullable!6107 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343))))) (nullableFct!2069 (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343))))))))

(declare-fun bs!1531317 () Bool)

(assert (= bs!1531317 d!1935687))

(declare-fun m!7011674 () Bool)

(assert (=> bs!1531317 m!7011674))

(assert (=> b!6174399 d!1935687))

(assert (=> d!1935345 d!1935347))

(assert (=> d!1935345 d!1935335))

(declare-fun d!1935689 () Bool)

(declare-fun e!3761686 () Bool)

(assert (=> d!1935689 (= (matchZipper!2126 (set.union lt!2337814 lt!2337798) (t!378147 s!2326)) e!3761686)))

(declare-fun res!2555976 () Bool)

(assert (=> d!1935689 (=> res!2555976 e!3761686)))

(assert (=> d!1935689 (= res!2555976 (matchZipper!2126 lt!2337814 (t!378147 s!2326)))))

(assert (=> d!1935689 true))

(declare-fun _$48!1781 () Unit!157691)

(assert (=> d!1935689 (= (choose!45884 lt!2337814 lt!2337798 (t!378147 s!2326)) _$48!1781)))

(declare-fun b!6175480 () Bool)

(assert (=> b!6175480 (= e!3761686 (matchZipper!2126 lt!2337798 (t!378147 s!2326)))))

(assert (= (and d!1935689 (not res!2555976)) b!6175480))

(assert (=> d!1935689 m!7010400))

(assert (=> d!1935689 m!7010398))

(assert (=> b!6175480 m!7010390))

(assert (=> d!1935345 d!1935689))

(assert (=> bm!515207 d!1935515))

(declare-fun bm!515343 () Bool)

(declare-fun call!515352 () List!64641)

(declare-fun call!515349 () List!64641)

(assert (=> bm!515343 (= call!515352 call!515349)))

(declare-fun b!6175481 () Bool)

(declare-fun e!3761688 () (Set Context!10996))

(assert (=> b!6175481 (= e!3761688 (set.insert (Context!10997 (t!378145 (exprs!5998 lt!2337815))) (as set.empty (Set Context!10996))))))

(declare-fun b!6175483 () Bool)

(declare-fun e!3761689 () Bool)

(assert (=> b!6175483 (= e!3761689 (nullable!6107 (regOne!32740 (h!70965 (exprs!5998 lt!2337815)))))))

(declare-fun b!6175484 () Bool)

(declare-fun e!3761691 () (Set Context!10996))

(declare-fun call!515353 () (Set Context!10996))

(assert (=> b!6175484 (= e!3761691 call!515353)))

(declare-fun b!6175485 () Bool)

(declare-fun e!3761687 () (Set Context!10996))

(declare-fun e!3761690 () (Set Context!10996))

(assert (=> b!6175485 (= e!3761687 e!3761690)))

(declare-fun c!1113147 () Bool)

(assert (=> b!6175485 (= c!1113147 (is-Concat!24959 (h!70965 (exprs!5998 lt!2337815))))))

(declare-fun c!1113144 () Bool)

(declare-fun bm!515344 () Bool)

(assert (=> bm!515344 (= call!515349 ($colon$colon!1989 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337815)))) (ite (or c!1113144 c!1113147) (regTwo!32740 (h!70965 (exprs!5998 lt!2337815))) (h!70965 (exprs!5998 lt!2337815)))))))

(declare-fun b!6175486 () Bool)

(assert (=> b!6175486 (= e!3761690 call!515353)))

(declare-fun b!6175487 () Bool)

(declare-fun e!3761692 () (Set Context!10996))

(declare-fun call!515350 () (Set Context!10996))

(declare-fun call!515348 () (Set Context!10996))

(assert (=> b!6175487 (= e!3761692 (set.union call!515350 call!515348))))

(declare-fun b!6175488 () Bool)

(assert (=> b!6175488 (= e!3761688 e!3761692)))

(declare-fun c!1113148 () Bool)

(assert (=> b!6175488 (= c!1113148 (is-Union!16114 (h!70965 (exprs!5998 lt!2337815))))))

(declare-fun b!6175489 () Bool)

(declare-fun call!515351 () (Set Context!10996))

(assert (=> b!6175489 (= e!3761687 (set.union call!515350 call!515351))))

(declare-fun bm!515345 () Bool)

(assert (=> bm!515345 (= call!515348 (derivationStepZipperDown!1362 (ite c!1113148 (regTwo!32741 (h!70965 (exprs!5998 lt!2337815))) (ite c!1113144 (regTwo!32740 (h!70965 (exprs!5998 lt!2337815))) (ite c!1113147 (regOne!32740 (h!70965 (exprs!5998 lt!2337815))) (reg!16443 (h!70965 (exprs!5998 lt!2337815)))))) (ite (or c!1113148 c!1113144) (Context!10997 (t!378145 (exprs!5998 lt!2337815))) (Context!10997 call!515352)) (h!70967 s!2326)))))

(declare-fun b!6175490 () Bool)

(declare-fun c!1113145 () Bool)

(assert (=> b!6175490 (= c!1113145 (is-Star!16114 (h!70965 (exprs!5998 lt!2337815))))))

(assert (=> b!6175490 (= e!3761690 e!3761691)))

(declare-fun bm!515346 () Bool)

(assert (=> bm!515346 (= call!515351 call!515348)))

(declare-fun bm!515347 () Bool)

(assert (=> bm!515347 (= call!515353 call!515351)))

(declare-fun b!6175482 () Bool)

(assert (=> b!6175482 (= c!1113144 e!3761689)))

(declare-fun res!2555977 () Bool)

(assert (=> b!6175482 (=> (not res!2555977) (not e!3761689))))

(assert (=> b!6175482 (= res!2555977 (is-Concat!24959 (h!70965 (exprs!5998 lt!2337815))))))

(assert (=> b!6175482 (= e!3761692 e!3761687)))

(declare-fun d!1935691 () Bool)

(declare-fun c!1113146 () Bool)

(assert (=> d!1935691 (= c!1113146 (and (is-ElementMatch!16114 (h!70965 (exprs!5998 lt!2337815))) (= (c!1112765 (h!70965 (exprs!5998 lt!2337815))) (h!70967 s!2326))))))

(assert (=> d!1935691 (= (derivationStepZipperDown!1362 (h!70965 (exprs!5998 lt!2337815)) (Context!10997 (t!378145 (exprs!5998 lt!2337815))) (h!70967 s!2326)) e!3761688)))

(declare-fun bm!515348 () Bool)

(assert (=> bm!515348 (= call!515350 (derivationStepZipperDown!1362 (ite c!1113148 (regOne!32741 (h!70965 (exprs!5998 lt!2337815))) (regOne!32740 (h!70965 (exprs!5998 lt!2337815)))) (ite c!1113148 (Context!10997 (t!378145 (exprs!5998 lt!2337815))) (Context!10997 call!515349)) (h!70967 s!2326)))))

(declare-fun b!6175491 () Bool)

(assert (=> b!6175491 (= e!3761691 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935691 c!1113146) b!6175481))

(assert (= (and d!1935691 (not c!1113146)) b!6175488))

(assert (= (and b!6175488 c!1113148) b!6175487))

(assert (= (and b!6175488 (not c!1113148)) b!6175482))

(assert (= (and b!6175482 res!2555977) b!6175483))

(assert (= (and b!6175482 c!1113144) b!6175489))

(assert (= (and b!6175482 (not c!1113144)) b!6175485))

(assert (= (and b!6175485 c!1113147) b!6175486))

(assert (= (and b!6175485 (not c!1113147)) b!6175490))

(assert (= (and b!6175490 c!1113145) b!6175484))

(assert (= (and b!6175490 (not c!1113145)) b!6175491))

(assert (= (or b!6175486 b!6175484) bm!515343))

(assert (= (or b!6175486 b!6175484) bm!515347))

(assert (= (or b!6175489 bm!515343) bm!515344))

(assert (= (or b!6175489 bm!515347) bm!515346))

(assert (= (or b!6175487 bm!515346) bm!515345))

(assert (= (or b!6175487 b!6175489) bm!515348))

(declare-fun m!7011676 () Bool)

(assert (=> b!6175481 m!7011676))

(declare-fun m!7011678 () Bool)

(assert (=> b!6175483 m!7011678))

(declare-fun m!7011680 () Bool)

(assert (=> bm!515345 m!7011680))

(declare-fun m!7011682 () Bool)

(assert (=> bm!515344 m!7011682))

(declare-fun m!7011684 () Bool)

(assert (=> bm!515348 m!7011684))

(assert (=> bm!515185 d!1935691))

(declare-fun d!1935693 () Bool)

(assert (=> d!1935693 (= (isEmptyExpr!1529 lt!2337978) (is-EmptyExpr!16114 lt!2337978))))

(assert (=> b!6174622 d!1935693))

(declare-fun d!1935695 () Bool)

(assert (=> d!1935695 (= (nullable!6107 (h!70965 (exprs!5998 lt!2337792))) (nullableFct!2069 (h!70965 (exprs!5998 lt!2337792))))))

(declare-fun bs!1531318 () Bool)

(assert (= bs!1531318 d!1935695))

(declare-fun m!7011686 () Bool)

(assert (=> bs!1531318 m!7011686))

(assert (=> b!6174481 d!1935695))

(declare-fun d!1935697 () Bool)

(assert (=> d!1935697 (= (isEmptyLang!1539 lt!2337957) (is-EmptyLang!16114 lt!2337957))))

(assert (=> b!6174431 d!1935697))

(declare-fun b!6175492 () Bool)

(declare-fun res!2555979 () Bool)

(declare-fun e!3761697 () Bool)

(assert (=> b!6175492 (=> res!2555979 e!3761697)))

(assert (=> b!6175492 (= res!2555979 (not (is-Concat!24959 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292))))))))

(declare-fun e!3761698 () Bool)

(assert (=> b!6175492 (= e!3761698 e!3761697)))

(declare-fun c!1113150 () Bool)

(declare-fun bm!515349 () Bool)

(declare-fun call!515356 () Bool)

(declare-fun c!1113149 () Bool)

(assert (=> bm!515349 (= call!515356 (validRegex!7850 (ite c!1113149 (reg!16443 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292)))) (ite c!1113150 (regOne!32741 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292)))) (regOne!32740 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292))))))))))

(declare-fun b!6175493 () Bool)

(declare-fun e!3761699 () Bool)

(declare-fun e!3761693 () Bool)

(assert (=> b!6175493 (= e!3761699 e!3761693)))

(assert (=> b!6175493 (= c!1113149 (is-Star!16114 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292)))))))

(declare-fun b!6175494 () Bool)

(declare-fun e!3761694 () Bool)

(assert (=> b!6175494 (= e!3761697 e!3761694)))

(declare-fun res!2555982 () Bool)

(assert (=> b!6175494 (=> (not res!2555982) (not e!3761694))))

(declare-fun call!515355 () Bool)

(assert (=> b!6175494 (= res!2555982 call!515355)))

(declare-fun bm!515350 () Bool)

(declare-fun call!515354 () Bool)

(assert (=> bm!515350 (= call!515354 (validRegex!7850 (ite c!1113150 (regTwo!32741 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292)))) (regTwo!32740 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292)))))))))

(declare-fun b!6175495 () Bool)

(assert (=> b!6175495 (= e!3761693 e!3761698)))

(assert (=> b!6175495 (= c!1113150 (is-Union!16114 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292)))))))

(declare-fun b!6175496 () Bool)

(declare-fun res!2555980 () Bool)

(declare-fun e!3761695 () Bool)

(assert (=> b!6175496 (=> (not res!2555980) (not e!3761695))))

(assert (=> b!6175496 (= res!2555980 call!515355)))

(assert (=> b!6175496 (= e!3761698 e!3761695)))

(declare-fun b!6175497 () Bool)

(assert (=> b!6175497 (= e!3761695 call!515354)))

(declare-fun b!6175498 () Bool)

(assert (=> b!6175498 (= e!3761694 call!515354)))

(declare-fun d!1935699 () Bool)

(declare-fun res!2555981 () Bool)

(assert (=> d!1935699 (=> res!2555981 e!3761699)))

(assert (=> d!1935699 (= res!2555981 (is-ElementMatch!16114 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292)))))))

(assert (=> d!1935699 (= (validRegex!7850 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292)))) e!3761699)))

(declare-fun b!6175499 () Bool)

(declare-fun e!3761696 () Bool)

(assert (=> b!6175499 (= e!3761693 e!3761696)))

(declare-fun res!2555978 () Bool)

(assert (=> b!6175499 (= res!2555978 (not (nullable!6107 (reg!16443 (ite c!1112844 (reg!16443 r!7292) (ite c!1112845 (regOne!32741 r!7292) (regOne!32740 r!7292)))))))))

(assert (=> b!6175499 (=> (not res!2555978) (not e!3761696))))

(declare-fun bm!515351 () Bool)

(assert (=> bm!515351 (= call!515355 call!515356)))

(declare-fun b!6175500 () Bool)

(assert (=> b!6175500 (= e!3761696 call!515356)))

(assert (= (and d!1935699 (not res!2555981)) b!6175493))

(assert (= (and b!6175493 c!1113149) b!6175499))

(assert (= (and b!6175493 (not c!1113149)) b!6175495))

(assert (= (and b!6175499 res!2555978) b!6175500))

(assert (= (and b!6175495 c!1113150) b!6175496))

(assert (= (and b!6175495 (not c!1113150)) b!6175492))

(assert (= (and b!6175496 res!2555980) b!6175497))

(assert (= (and b!6175492 (not res!2555979)) b!6175494))

(assert (= (and b!6175494 res!2555982) b!6175498))

(assert (= (or b!6175497 b!6175498) bm!515350))

(assert (= (or b!6175496 b!6175494) bm!515351))

(assert (= (or b!6175500 bm!515351) bm!515349))

(declare-fun m!7011688 () Bool)

(assert (=> bm!515349 m!7011688))

(declare-fun m!7011690 () Bool)

(assert (=> bm!515350 m!7011690))

(declare-fun m!7011692 () Bool)

(assert (=> b!6175499 m!7011692))

(assert (=> bm!515181 d!1935699))

(assert (=> bs!1531129 d!1935279))

(assert (=> d!1935353 d!1935351))

(assert (=> d!1935353 d!1935323))

(declare-fun d!1935701 () Bool)

(assert (=> d!1935701 (= (matchR!8297 lt!2337803 s!2326) (matchZipper!2126 lt!2337800 s!2326))))

(assert (=> d!1935701 true))

(declare-fun _$44!1545 () Unit!157691)

(assert (=> d!1935701 (= (choose!45889 lt!2337800 lt!2337802 lt!2337803 s!2326) _$44!1545)))

(declare-fun bs!1531319 () Bool)

(assert (= bs!1531319 d!1935701))

(assert (=> bs!1531319 m!7010434))

(assert (=> bs!1531319 m!7010468))

(assert (=> d!1935353 d!1935701))

(declare-fun b!6175501 () Bool)

(declare-fun res!2555984 () Bool)

(declare-fun e!3761704 () Bool)

(assert (=> b!6175501 (=> res!2555984 e!3761704)))

(assert (=> b!6175501 (= res!2555984 (not (is-Concat!24959 lt!2337803)))))

(declare-fun e!3761705 () Bool)

(assert (=> b!6175501 (= e!3761705 e!3761704)))

(declare-fun call!515359 () Bool)

(declare-fun c!1113151 () Bool)

(declare-fun c!1113152 () Bool)

(declare-fun bm!515352 () Bool)

(assert (=> bm!515352 (= call!515359 (validRegex!7850 (ite c!1113151 (reg!16443 lt!2337803) (ite c!1113152 (regOne!32741 lt!2337803) (regOne!32740 lt!2337803)))))))

(declare-fun b!6175502 () Bool)

(declare-fun e!3761706 () Bool)

(declare-fun e!3761700 () Bool)

(assert (=> b!6175502 (= e!3761706 e!3761700)))

(assert (=> b!6175502 (= c!1113151 (is-Star!16114 lt!2337803))))

(declare-fun b!6175503 () Bool)

(declare-fun e!3761701 () Bool)

(assert (=> b!6175503 (= e!3761704 e!3761701)))

(declare-fun res!2555987 () Bool)

(assert (=> b!6175503 (=> (not res!2555987) (not e!3761701))))

(declare-fun call!515358 () Bool)

(assert (=> b!6175503 (= res!2555987 call!515358)))

(declare-fun bm!515353 () Bool)

(declare-fun call!515357 () Bool)

(assert (=> bm!515353 (= call!515357 (validRegex!7850 (ite c!1113152 (regTwo!32741 lt!2337803) (regTwo!32740 lt!2337803))))))

(declare-fun b!6175504 () Bool)

(assert (=> b!6175504 (= e!3761700 e!3761705)))

(assert (=> b!6175504 (= c!1113152 (is-Union!16114 lt!2337803))))

(declare-fun b!6175505 () Bool)

(declare-fun res!2555985 () Bool)

(declare-fun e!3761702 () Bool)

(assert (=> b!6175505 (=> (not res!2555985) (not e!3761702))))

(assert (=> b!6175505 (= res!2555985 call!515358)))

(assert (=> b!6175505 (= e!3761705 e!3761702)))

(declare-fun b!6175506 () Bool)

(assert (=> b!6175506 (= e!3761702 call!515357)))

(declare-fun b!6175507 () Bool)

(assert (=> b!6175507 (= e!3761701 call!515357)))

(declare-fun d!1935703 () Bool)

(declare-fun res!2555986 () Bool)

(assert (=> d!1935703 (=> res!2555986 e!3761706)))

(assert (=> d!1935703 (= res!2555986 (is-ElementMatch!16114 lt!2337803))))

(assert (=> d!1935703 (= (validRegex!7850 lt!2337803) e!3761706)))

(declare-fun b!6175508 () Bool)

(declare-fun e!3761703 () Bool)

(assert (=> b!6175508 (= e!3761700 e!3761703)))

(declare-fun res!2555983 () Bool)

(assert (=> b!6175508 (= res!2555983 (not (nullable!6107 (reg!16443 lt!2337803))))))

(assert (=> b!6175508 (=> (not res!2555983) (not e!3761703))))

(declare-fun bm!515354 () Bool)

(assert (=> bm!515354 (= call!515358 call!515359)))

(declare-fun b!6175509 () Bool)

(assert (=> b!6175509 (= e!3761703 call!515359)))

(assert (= (and d!1935703 (not res!2555986)) b!6175502))

(assert (= (and b!6175502 c!1113151) b!6175508))

(assert (= (and b!6175502 (not c!1113151)) b!6175504))

(assert (= (and b!6175508 res!2555983) b!6175509))

(assert (= (and b!6175504 c!1113152) b!6175505))

(assert (= (and b!6175504 (not c!1113152)) b!6175501))

(assert (= (and b!6175505 res!2555985) b!6175506))

(assert (= (and b!6175501 (not res!2555984)) b!6175503))

(assert (= (and b!6175503 res!2555987) b!6175507))

(assert (= (or b!6175506 b!6175507) bm!515353))

(assert (= (or b!6175505 b!6175503) bm!515354))

(assert (= (or b!6175509 bm!515354) bm!515352))

(declare-fun m!7011694 () Bool)

(assert (=> bm!515352 m!7011694))

(declare-fun m!7011696 () Bool)

(assert (=> bm!515353 m!7011696))

(declare-fun m!7011698 () Bool)

(assert (=> b!6175508 m!7011698))

(assert (=> d!1935353 d!1935703))

(declare-fun b!6175510 () Bool)

(declare-fun e!3761711 () Bool)

(declare-fun lt!2338061 () Bool)

(assert (=> b!6175510 (= e!3761711 (not lt!2338061))))

(declare-fun b!6175511 () Bool)

(declare-fun e!3761707 () Bool)

(assert (=> b!6175511 (= e!3761707 (= (head!12745 (tail!11830 s!2326)) (c!1112765 (derivativeStep!4831 lt!2337803 (head!12745 s!2326)))))))

(declare-fun b!6175512 () Bool)

(declare-fun res!2555995 () Bool)

(assert (=> b!6175512 (=> (not res!2555995) (not e!3761707))))

(assert (=> b!6175512 (= res!2555995 (isEmpty!36498 (tail!11830 (tail!11830 s!2326))))))

(declare-fun b!6175513 () Bool)

(declare-fun e!3761712 () Bool)

(assert (=> b!6175513 (= e!3761712 (matchR!8297 (derivativeStep!4831 (derivativeStep!4831 lt!2337803 (head!12745 s!2326)) (head!12745 (tail!11830 s!2326))) (tail!11830 (tail!11830 s!2326))))))

(declare-fun b!6175514 () Bool)

(declare-fun e!3761713 () Bool)

(declare-fun e!3761708 () Bool)

(assert (=> b!6175514 (= e!3761713 e!3761708)))

(declare-fun res!2555991 () Bool)

(assert (=> b!6175514 (=> (not res!2555991) (not e!3761708))))

(assert (=> b!6175514 (= res!2555991 (not lt!2338061))))

(declare-fun b!6175515 () Bool)

(declare-fun res!2555988 () Bool)

(assert (=> b!6175515 (=> (not res!2555988) (not e!3761707))))

(declare-fun call!515360 () Bool)

(assert (=> b!6175515 (= res!2555988 (not call!515360))))

(declare-fun b!6175516 () Bool)

(declare-fun res!2555990 () Bool)

(assert (=> b!6175516 (=> res!2555990 e!3761713)))

(assert (=> b!6175516 (= res!2555990 e!3761707)))

(declare-fun res!2555994 () Bool)

(assert (=> b!6175516 (=> (not res!2555994) (not e!3761707))))

(assert (=> b!6175516 (= res!2555994 lt!2338061)))

(declare-fun d!1935705 () Bool)

(declare-fun e!3761710 () Bool)

(assert (=> d!1935705 e!3761710))

(declare-fun c!1113153 () Bool)

(assert (=> d!1935705 (= c!1113153 (is-EmptyExpr!16114 (derivativeStep!4831 lt!2337803 (head!12745 s!2326))))))

(assert (=> d!1935705 (= lt!2338061 e!3761712)))

(declare-fun c!1113154 () Bool)

(assert (=> d!1935705 (= c!1113154 (isEmpty!36498 (tail!11830 s!2326)))))

(assert (=> d!1935705 (validRegex!7850 (derivativeStep!4831 lt!2337803 (head!12745 s!2326)))))

(assert (=> d!1935705 (= (matchR!8297 (derivativeStep!4831 lt!2337803 (head!12745 s!2326)) (tail!11830 s!2326)) lt!2338061)))

(declare-fun bm!515355 () Bool)

(assert (=> bm!515355 (= call!515360 (isEmpty!36498 (tail!11830 s!2326)))))

(declare-fun b!6175517 () Bool)

(declare-fun res!2555992 () Bool)

(assert (=> b!6175517 (=> res!2555992 e!3761713)))

(assert (=> b!6175517 (= res!2555992 (not (is-ElementMatch!16114 (derivativeStep!4831 lt!2337803 (head!12745 s!2326)))))))

(assert (=> b!6175517 (= e!3761711 e!3761713)))

(declare-fun b!6175518 () Bool)

(assert (=> b!6175518 (= e!3761710 e!3761711)))

(declare-fun c!1113155 () Bool)

(assert (=> b!6175518 (= c!1113155 (is-EmptyLang!16114 (derivativeStep!4831 lt!2337803 (head!12745 s!2326))))))

(declare-fun b!6175519 () Bool)

(assert (=> b!6175519 (= e!3761712 (nullable!6107 (derivativeStep!4831 lt!2337803 (head!12745 s!2326))))))

(declare-fun b!6175520 () Bool)

(declare-fun e!3761709 () Bool)

(assert (=> b!6175520 (= e!3761708 e!3761709)))

(declare-fun res!2555993 () Bool)

(assert (=> b!6175520 (=> res!2555993 e!3761709)))

(assert (=> b!6175520 (= res!2555993 call!515360)))

(declare-fun b!6175521 () Bool)

(assert (=> b!6175521 (= e!3761709 (not (= (head!12745 (tail!11830 s!2326)) (c!1112765 (derivativeStep!4831 lt!2337803 (head!12745 s!2326))))))))

(declare-fun b!6175522 () Bool)

(assert (=> b!6175522 (= e!3761710 (= lt!2338061 call!515360))))

(declare-fun b!6175523 () Bool)

(declare-fun res!2555989 () Bool)

(assert (=> b!6175523 (=> res!2555989 e!3761709)))

(assert (=> b!6175523 (= res!2555989 (not (isEmpty!36498 (tail!11830 (tail!11830 s!2326)))))))

(assert (= (and d!1935705 c!1113154) b!6175519))

(assert (= (and d!1935705 (not c!1113154)) b!6175513))

(assert (= (and d!1935705 c!1113153) b!6175522))

(assert (= (and d!1935705 (not c!1113153)) b!6175518))

(assert (= (and b!6175518 c!1113155) b!6175510))

(assert (= (and b!6175518 (not c!1113155)) b!6175517))

(assert (= (and b!6175517 (not res!2555992)) b!6175516))

(assert (= (and b!6175516 res!2555994) b!6175515))

(assert (= (and b!6175515 res!2555988) b!6175512))

(assert (= (and b!6175512 res!2555995) b!6175511))

(assert (= (and b!6175516 (not res!2555990)) b!6175514))

(assert (= (and b!6175514 res!2555991) b!6175520))

(assert (= (and b!6175520 (not res!2555993)) b!6175523))

(assert (= (and b!6175523 (not res!2555989)) b!6175521))

(assert (= (or b!6175522 b!6175515 b!6175520) bm!515355))

(assert (=> b!6175519 m!7010926))

(declare-fun m!7011700 () Bool)

(assert (=> b!6175519 m!7011700))

(assert (=> b!6175513 m!7010634))

(assert (=> b!6175513 m!7011308))

(assert (=> b!6175513 m!7010926))

(assert (=> b!6175513 m!7011308))

(declare-fun m!7011702 () Bool)

(assert (=> b!6175513 m!7011702))

(assert (=> b!6175513 m!7010634))

(assert (=> b!6175513 m!7011312))

(assert (=> b!6175513 m!7011702))

(assert (=> b!6175513 m!7011312))

(declare-fun m!7011704 () Bool)

(assert (=> b!6175513 m!7011704))

(assert (=> b!6175523 m!7010634))

(assert (=> b!6175523 m!7011312))

(assert (=> b!6175523 m!7011312))

(assert (=> b!6175523 m!7011384))

(assert (=> b!6175521 m!7010634))

(assert (=> b!6175521 m!7011308))

(assert (=> d!1935705 m!7010634))

(assert (=> d!1935705 m!7010854))

(assert (=> d!1935705 m!7010926))

(declare-fun m!7011706 () Bool)

(assert (=> d!1935705 m!7011706))

(assert (=> b!6175511 m!7010634))

(assert (=> b!6175511 m!7011308))

(assert (=> bm!515355 m!7010634))

(assert (=> bm!515355 m!7010854))

(assert (=> b!6175512 m!7010634))

(assert (=> b!6175512 m!7011312))

(assert (=> b!6175512 m!7011312))

(assert (=> b!6175512 m!7011384))

(assert (=> b!6174642 d!1935705))

(declare-fun b!6175524 () Bool)

(declare-fun e!3761718 () Regex!16114)

(declare-fun e!3761717 () Regex!16114)

(assert (=> b!6175524 (= e!3761718 e!3761717)))

(declare-fun c!1113160 () Bool)

(assert (=> b!6175524 (= c!1113160 (is-Star!16114 lt!2337803))))

(declare-fun bm!515356 () Bool)

(declare-fun call!515361 () Regex!16114)

(declare-fun call!515364 () Regex!16114)

(assert (=> bm!515356 (= call!515361 call!515364)))

(declare-fun b!6175525 () Bool)

(assert (=> b!6175525 (= e!3761717 (Concat!24959 call!515361 lt!2337803))))

(declare-fun c!1113157 () Bool)

(declare-fun bm!515357 () Bool)

(declare-fun c!1113158 () Bool)

(assert (=> bm!515357 (= call!515364 (derivativeStep!4831 (ite c!1113157 (regTwo!32741 lt!2337803) (ite c!1113160 (reg!16443 lt!2337803) (ite c!1113158 (regTwo!32740 lt!2337803) (regOne!32740 lt!2337803)))) (head!12745 s!2326)))))

(declare-fun b!6175526 () Bool)

(assert (=> b!6175526 (= c!1113158 (nullable!6107 (regOne!32740 lt!2337803)))))

(declare-fun e!3761715 () Regex!16114)

(assert (=> b!6175526 (= e!3761717 e!3761715)))

(declare-fun b!6175527 () Bool)

(declare-fun e!3761716 () Regex!16114)

(assert (=> b!6175527 (= e!3761716 (ite (= (head!12745 s!2326) (c!1112765 lt!2337803)) EmptyExpr!16114 EmptyLang!16114))))

(declare-fun b!6175528 () Bool)

(declare-fun call!515363 () Regex!16114)

(assert (=> b!6175528 (= e!3761715 (Union!16114 (Concat!24959 call!515363 (regTwo!32740 lt!2337803)) EmptyLang!16114))))

(declare-fun b!6175529 () Bool)

(assert (=> b!6175529 (= c!1113157 (is-Union!16114 lt!2337803))))

(assert (=> b!6175529 (= e!3761716 e!3761718)))

(declare-fun b!6175530 () Bool)

(declare-fun e!3761714 () Regex!16114)

(assert (=> b!6175530 (= e!3761714 EmptyLang!16114)))

(declare-fun call!515362 () Regex!16114)

(declare-fun bm!515358 () Bool)

(assert (=> bm!515358 (= call!515362 (derivativeStep!4831 (ite c!1113157 (regOne!32741 lt!2337803) (regOne!32740 lt!2337803)) (head!12745 s!2326)))))

(declare-fun b!6175531 () Bool)

(assert (=> b!6175531 (= e!3761714 e!3761716)))

(declare-fun c!1113159 () Bool)

(assert (=> b!6175531 (= c!1113159 (is-ElementMatch!16114 lt!2337803))))

(declare-fun b!6175532 () Bool)

(assert (=> b!6175532 (= e!3761715 (Union!16114 (Concat!24959 call!515362 (regTwo!32740 lt!2337803)) call!515363))))

(declare-fun d!1935707 () Bool)

(declare-fun lt!2338062 () Regex!16114)

(assert (=> d!1935707 (validRegex!7850 lt!2338062)))

(assert (=> d!1935707 (= lt!2338062 e!3761714)))

(declare-fun c!1113156 () Bool)

(assert (=> d!1935707 (= c!1113156 (or (is-EmptyExpr!16114 lt!2337803) (is-EmptyLang!16114 lt!2337803)))))

(assert (=> d!1935707 (validRegex!7850 lt!2337803)))

(assert (=> d!1935707 (= (derivativeStep!4831 lt!2337803 (head!12745 s!2326)) lt!2338062)))

(declare-fun b!6175533 () Bool)

(assert (=> b!6175533 (= e!3761718 (Union!16114 call!515362 call!515364))))

(declare-fun bm!515359 () Bool)

(assert (=> bm!515359 (= call!515363 call!515361)))

(assert (= (and d!1935707 c!1113156) b!6175530))

(assert (= (and d!1935707 (not c!1113156)) b!6175531))

(assert (= (and b!6175531 c!1113159) b!6175527))

(assert (= (and b!6175531 (not c!1113159)) b!6175529))

(assert (= (and b!6175529 c!1113157) b!6175533))

(assert (= (and b!6175529 (not c!1113157)) b!6175524))

(assert (= (and b!6175524 c!1113160) b!6175525))

(assert (= (and b!6175524 (not c!1113160)) b!6175526))

(assert (= (and b!6175526 c!1113158) b!6175532))

(assert (= (and b!6175526 (not c!1113158)) b!6175528))

(assert (= (or b!6175532 b!6175528) bm!515359))

(assert (= (or b!6175525 bm!515359) bm!515356))

(assert (= (or b!6175533 bm!515356) bm!515357))

(assert (= (or b!6175533 b!6175532) bm!515358))

(assert (=> bm!515357 m!7010630))

(declare-fun m!7011708 () Bool)

(assert (=> bm!515357 m!7011708))

(declare-fun m!7011710 () Bool)

(assert (=> b!6175526 m!7011710))

(assert (=> bm!515358 m!7010630))

(declare-fun m!7011712 () Bool)

(assert (=> bm!515358 m!7011712))

(declare-fun m!7011714 () Bool)

(assert (=> d!1935707 m!7011714))

(assert (=> d!1935707 m!7010930))

(assert (=> b!6174642 d!1935707))

(assert (=> b!6174642 d!1935501))

(assert (=> b!6174642 d!1935503))

(declare-fun bs!1531320 () Bool)

(declare-fun d!1935709 () Bool)

(assert (= bs!1531320 (and d!1935709 d!1935509)))

(declare-fun lambda!337131 () Int)

(assert (=> bs!1531320 (= lambda!337131 lambda!337111)))

(declare-fun bs!1531321 () Bool)

(assert (= bs!1531321 (and d!1935709 d!1935517)))

(assert (=> bs!1531321 (= lambda!337131 lambda!337112)))

(declare-fun bs!1531322 () Bool)

(assert (= bs!1531322 (and d!1935709 d!1935527)))

(assert (=> bs!1531322 (= lambda!337131 lambda!337113)))

(declare-fun bs!1531323 () Bool)

(assert (= bs!1531323 (and d!1935709 d!1935555)))

(assert (=> bs!1531323 (= lambda!337131 lambda!337116)))

(declare-fun bs!1531324 () Bool)

(assert (= bs!1531324 (and d!1935709 d!1935561)))

(assert (=> bs!1531324 (= lambda!337131 lambda!337117)))

(assert (=> d!1935709 (= (nullableZipper!1893 z!1189) (exists!2457 z!1189 lambda!337131))))

(declare-fun bs!1531325 () Bool)

(assert (= bs!1531325 d!1935709))

(declare-fun m!7011716 () Bool)

(assert (=> bs!1531325 m!7011716))

(assert (=> b!6174488 d!1935709))

(declare-fun d!1935711 () Bool)

(assert (=> d!1935711 (= (Exists!3184 lambda!337051) (choose!45881 lambda!337051))))

(declare-fun bs!1531326 () Bool)

(assert (= bs!1531326 d!1935711))

(declare-fun m!7011718 () Bool)

(assert (=> bs!1531326 m!7011718))

(assert (=> d!1935251 d!1935711))

(declare-fun d!1935713 () Bool)

(assert (=> d!1935713 (= (Exists!3184 lambda!337052) (choose!45881 lambda!337052))))

(declare-fun bs!1531327 () Bool)

(assert (= bs!1531327 d!1935713))

(declare-fun m!7011720 () Bool)

(assert (=> bs!1531327 m!7011720))

(assert (=> d!1935251 d!1935713))

(declare-fun bs!1531328 () Bool)

(declare-fun d!1935715 () Bool)

(assert (= bs!1531328 (and d!1935715 b!6174146)))

(declare-fun lambda!337136 () Int)

(assert (=> bs!1531328 (= lambda!337136 lambda!337026)))

(declare-fun bs!1531329 () Bool)

(assert (= bs!1531329 (and d!1935715 d!1935249)))

(assert (=> bs!1531329 (= lambda!337136 lambda!337046)))

(declare-fun bs!1531330 () Bool)

(assert (= bs!1531330 (and d!1935715 d!1935673)))

(assert (=> bs!1531330 (= lambda!337136 lambda!337130)))

(declare-fun bs!1531331 () Bool)

(assert (= bs!1531331 (and d!1935715 b!6175303)))

(assert (=> bs!1531331 (not (= lambda!337136 lambda!337121))))

(declare-fun bs!1531332 () Bool)

(assert (= bs!1531332 (and d!1935715 d!1935251)))

(assert (=> bs!1531332 (= lambda!337136 lambda!337051)))

(assert (=> bs!1531332 (not (= lambda!337136 lambda!337052))))

(declare-fun bs!1531333 () Bool)

(assert (= bs!1531333 (and d!1935715 b!6175308)))

(assert (=> bs!1531333 (not (= lambda!337136 lambda!337120))))

(assert (=> bs!1531328 (not (= lambda!337136 lambda!337027))))

(declare-fun bs!1531334 () Bool)

(assert (= bs!1531334 (and d!1935715 b!6174526)))

(assert (=> bs!1531334 (not (= lambda!337136 lambda!337068))))

(declare-fun bs!1531335 () Bool)

(assert (= bs!1531335 (and d!1935715 b!6174531)))

(assert (=> bs!1531335 (not (= lambda!337136 lambda!337067))))

(assert (=> d!1935715 true))

(assert (=> d!1935715 true))

(assert (=> d!1935715 true))

(declare-fun lambda!337137 () Int)

(assert (=> bs!1531328 (not (= lambda!337137 lambda!337026))))

(assert (=> bs!1531329 (not (= lambda!337137 lambda!337046))))

(assert (=> bs!1531331 (= (and (= (regOne!32740 r!7292) (regOne!32740 (regTwo!32741 r!7292))) (= (regTwo!32740 r!7292) (regTwo!32740 (regTwo!32741 r!7292)))) (= lambda!337137 lambda!337121))))

(assert (=> bs!1531332 (not (= lambda!337137 lambda!337051))))

(assert (=> bs!1531332 (= lambda!337137 lambda!337052)))

(assert (=> bs!1531333 (not (= lambda!337137 lambda!337120))))

(assert (=> bs!1531328 (= lambda!337137 lambda!337027)))

(assert (=> bs!1531330 (not (= lambda!337137 lambda!337130))))

(declare-fun bs!1531336 () Bool)

(assert (= bs!1531336 d!1935715))

(assert (=> bs!1531336 (not (= lambda!337137 lambda!337136))))

(assert (=> bs!1531334 (= lambda!337137 lambda!337068)))

(assert (=> bs!1531335 (not (= lambda!337137 lambda!337067))))

(assert (=> d!1935715 true))

(assert (=> d!1935715 true))

(assert (=> d!1935715 true))

(assert (=> d!1935715 (= (Exists!3184 lambda!337136) (Exists!3184 lambda!337137))))

(assert (=> d!1935715 true))

(declare-fun _$90!1932 () Unit!157691)

(assert (=> d!1935715 (= (choose!45883 (regOne!32740 r!7292) (regTwo!32740 r!7292) s!2326) _$90!1932)))

(declare-fun m!7011722 () Bool)

(assert (=> bs!1531336 m!7011722))

(declare-fun m!7011724 () Bool)

(assert (=> bs!1531336 m!7011724))

(assert (=> d!1935251 d!1935715))

(assert (=> d!1935251 d!1935653))

(declare-fun b!6175543 () Bool)

(declare-fun e!3761724 () (Set Context!10996))

(declare-fun e!3761723 () (Set Context!10996))

(assert (=> b!6175543 (= e!3761724 e!3761723)))

(declare-fun c!1113162 () Bool)

(assert (=> b!6175543 (= c!1113162 (is-Cons!64517 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337792))))))))

(declare-fun b!6175544 () Bool)

(declare-fun call!515365 () (Set Context!10996))

(assert (=> b!6175544 (= e!3761723 call!515365)))

(declare-fun bm!515360 () Bool)

(assert (=> bm!515360 (= call!515365 (derivationStepZipperDown!1362 (h!70965 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337792))))) (Context!10997 (t!378145 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337792)))))) (h!70967 s!2326)))))

(declare-fun b!6175545 () Bool)

(declare-fun e!3761725 () Bool)

(assert (=> b!6175545 (= e!3761725 (nullable!6107 (h!70965 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337792)))))))))

(declare-fun b!6175546 () Bool)

(assert (=> b!6175546 (= e!3761723 (as set.empty (Set Context!10996)))))

(declare-fun b!6175542 () Bool)

(assert (=> b!6175542 (= e!3761724 (set.union call!515365 (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337792)))))) (h!70967 s!2326))))))

(declare-fun d!1935717 () Bool)

(declare-fun c!1113161 () Bool)

(assert (=> d!1935717 (= c!1113161 e!3761725)))

(declare-fun res!2556004 () Bool)

(assert (=> d!1935717 (=> (not res!2556004) (not e!3761725))))

(assert (=> d!1935717 (= res!2556004 (is-Cons!64517 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337792))))))))

(assert (=> d!1935717 (= (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 lt!2337792))) (h!70967 s!2326)) e!3761724)))

(assert (= (and d!1935717 res!2556004) b!6175545))

(assert (= (and d!1935717 c!1113161) b!6175542))

(assert (= (and d!1935717 (not c!1113161)) b!6175543))

(assert (= (and b!6175543 c!1113162) b!6175544))

(assert (= (and b!6175543 (not c!1113162)) b!6175546))

(assert (= (or b!6175542 b!6175544) bm!515360))

(declare-fun m!7011726 () Bool)

(assert (=> bm!515360 m!7011726))

(declare-fun m!7011728 () Bool)

(assert (=> b!6175545 m!7011728))

(declare-fun m!7011730 () Bool)

(assert (=> b!6175542 m!7011730))

(assert (=> b!6174478 d!1935717))

(declare-fun d!1935719 () Bool)

(assert (=> d!1935719 (= (isConcat!1052 lt!2337985) (is-Concat!24959 lt!2337985))))

(assert (=> b!6174659 d!1935719))

(declare-fun d!1935721 () Bool)

(assert (=> d!1935721 (= ($colon$colon!1989 (exprs!5998 lt!2337799) (ite (or c!1112879 c!1112882) (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (regOne!32741 (regOne!32740 r!7292)))) (Cons!64517 (ite (or c!1112879 c!1112882) (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (regOne!32741 (regOne!32740 r!7292))) (exprs!5998 lt!2337799)))))

(assert (=> bm!515202 d!1935721))

(declare-fun bs!1531337 () Bool)

(declare-fun d!1935723 () Bool)

(assert (= bs!1531337 (and d!1935723 d!1935509)))

(declare-fun lambda!337138 () Int)

(assert (=> bs!1531337 (= lambda!337138 lambda!337111)))

(declare-fun bs!1531338 () Bool)

(assert (= bs!1531338 (and d!1935723 d!1935517)))

(assert (=> bs!1531338 (= lambda!337138 lambda!337112)))

(declare-fun bs!1531339 () Bool)

(assert (= bs!1531339 (and d!1935723 d!1935527)))

(assert (=> bs!1531339 (= lambda!337138 lambda!337113)))

(declare-fun bs!1531340 () Bool)

(assert (= bs!1531340 (and d!1935723 d!1935555)))

(assert (=> bs!1531340 (= lambda!337138 lambda!337116)))

(declare-fun bs!1531341 () Bool)

(assert (= bs!1531341 (and d!1935723 d!1935561)))

(assert (=> bs!1531341 (= lambda!337138 lambda!337117)))

(declare-fun bs!1531342 () Bool)

(assert (= bs!1531342 (and d!1935723 d!1935709)))

(assert (=> bs!1531342 (= lambda!337138 lambda!337131)))

(assert (=> d!1935723 (= (nullableZipper!1893 lt!2337795) (exists!2457 lt!2337795 lambda!337138))))

(declare-fun bs!1531343 () Bool)

(assert (= bs!1531343 d!1935723))

(declare-fun m!7011732 () Bool)

(assert (=> bs!1531343 m!7011732))

(assert (=> b!6174343 d!1935723))

(declare-fun d!1935725 () Bool)

(declare-fun lt!2338063 () Int)

(assert (=> d!1935725 (>= lt!2338063 0)))

(declare-fun e!3761726 () Int)

(assert (=> d!1935725 (= lt!2338063 e!3761726)))

(declare-fun c!1113163 () Bool)

(assert (=> d!1935725 (= c!1113163 (is-Cons!64517 (exprs!5998 (h!70966 zl!343))))))

(assert (=> d!1935725 (= (contextDepthTotal!271 (h!70966 zl!343)) lt!2338063)))

(declare-fun b!6175547 () Bool)

(assert (=> b!6175547 (= e!3761726 (+ (regexDepthTotal!134 (h!70965 (exprs!5998 (h!70966 zl!343)))) (contextDepthTotal!271 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))))))))

(declare-fun b!6175548 () Bool)

(assert (=> b!6175548 (= e!3761726 1)))

(assert (= (and d!1935725 c!1113163) b!6175547))

(assert (= (and d!1935725 (not c!1113163)) b!6175548))

(declare-fun m!7011734 () Bool)

(assert (=> b!6175547 m!7011734))

(declare-fun m!7011736 () Bool)

(assert (=> b!6175547 m!7011736))

(assert (=> b!6174336 d!1935725))

(declare-fun d!1935727 () Bool)

(declare-fun lt!2338064 () Int)

(assert (=> d!1935727 (>= lt!2338064 0)))

(declare-fun e!3761727 () Int)

(assert (=> d!1935727 (= lt!2338064 e!3761727)))

(declare-fun c!1113164 () Bool)

(assert (=> d!1935727 (= c!1113164 (is-Cons!64518 (t!378146 zl!343)))))

(assert (=> d!1935727 (= (zipperDepthTotal!297 (t!378146 zl!343)) lt!2338064)))

(declare-fun b!6175549 () Bool)

(assert (=> b!6175549 (= e!3761727 (+ (contextDepthTotal!271 (h!70966 (t!378146 zl!343))) (zipperDepthTotal!297 (t!378146 (t!378146 zl!343)))))))

(declare-fun b!6175550 () Bool)

(assert (=> b!6175550 (= e!3761727 0)))

(assert (= (and d!1935727 c!1113164) b!6175549))

(assert (= (and d!1935727 (not c!1113164)) b!6175550))

(declare-fun m!7011738 () Bool)

(assert (=> b!6175549 m!7011738))

(declare-fun m!7011740 () Bool)

(assert (=> b!6175549 m!7011740))

(assert (=> b!6174336 d!1935727))

(assert (=> b!6174564 d!1935501))

(declare-fun b!6175565 () Bool)

(declare-fun e!3761740 () Bool)

(declare-fun call!515371 () Bool)

(assert (=> b!6175565 (= e!3761740 call!515371)))

(declare-fun bm!515365 () Bool)

(declare-fun call!515370 () Bool)

(declare-fun c!1113167 () Bool)

(assert (=> bm!515365 (= call!515370 (nullable!6107 (ite c!1113167 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))))))

(declare-fun b!6175566 () Bool)

(declare-fun e!3761741 () Bool)

(assert (=> b!6175566 (= e!3761741 e!3761740)))

(declare-fun res!2556018 () Bool)

(assert (=> b!6175566 (= res!2556018 call!515370)))

(assert (=> b!6175566 (=> (not res!2556018) (not e!3761740))))

(declare-fun b!6175567 () Bool)

(declare-fun e!3761744 () Bool)

(declare-fun e!3761745 () Bool)

(assert (=> b!6175567 (= e!3761744 e!3761745)))

(declare-fun res!2556019 () Bool)

(assert (=> b!6175567 (=> (not res!2556019) (not e!3761745))))

(assert (=> b!6175567 (= res!2556019 (and (not (is-EmptyLang!16114 (regOne!32741 (regOne!32740 r!7292)))) (not (is-ElementMatch!16114 (regOne!32741 (regOne!32740 r!7292))))))))

(declare-fun b!6175568 () Bool)

(declare-fun e!3761742 () Bool)

(assert (=> b!6175568 (= e!3761742 e!3761741)))

(assert (=> b!6175568 (= c!1113167 (is-Union!16114 (regOne!32741 (regOne!32740 r!7292))))))

(declare-fun b!6175569 () Bool)

(assert (=> b!6175569 (= e!3761745 e!3761742)))

(declare-fun res!2556017 () Bool)

(assert (=> b!6175569 (=> res!2556017 e!3761742)))

(assert (=> b!6175569 (= res!2556017 (is-Star!16114 (regOne!32741 (regOne!32740 r!7292))))))

(declare-fun b!6175570 () Bool)

(declare-fun e!3761743 () Bool)

(assert (=> b!6175570 (= e!3761743 call!515371)))

(declare-fun d!1935729 () Bool)

(declare-fun res!2556015 () Bool)

(assert (=> d!1935729 (=> res!2556015 e!3761744)))

(assert (=> d!1935729 (= res!2556015 (is-EmptyExpr!16114 (regOne!32741 (regOne!32740 r!7292))))))

(assert (=> d!1935729 (= (nullableFct!2069 (regOne!32741 (regOne!32740 r!7292))) e!3761744)))

(declare-fun bm!515366 () Bool)

(assert (=> bm!515366 (= call!515371 (nullable!6107 (ite c!1113167 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))))))))

(declare-fun b!6175571 () Bool)

(assert (=> b!6175571 (= e!3761741 e!3761743)))

(declare-fun res!2556016 () Bool)

(assert (=> b!6175571 (= res!2556016 call!515370)))

(assert (=> b!6175571 (=> res!2556016 e!3761743)))

(assert (= (and d!1935729 (not res!2556015)) b!6175567))

(assert (= (and b!6175567 res!2556019) b!6175569))

(assert (= (and b!6175569 (not res!2556017)) b!6175568))

(assert (= (and b!6175568 c!1113167) b!6175571))

(assert (= (and b!6175568 (not c!1113167)) b!6175566))

(assert (= (and b!6175571 (not res!2556016)) b!6175570))

(assert (= (and b!6175566 res!2556018) b!6175565))

(assert (= (or b!6175570 b!6175565) bm!515366))

(assert (= (or b!6175571 b!6175566) bm!515365))

(declare-fun m!7011742 () Bool)

(assert (=> bm!515365 m!7011742))

(declare-fun m!7011744 () Bool)

(assert (=> bm!515366 m!7011744))

(assert (=> d!1935315 d!1935729))

(declare-fun d!1935731 () Bool)

(assert (=> d!1935731 (= (isEmpty!36499 (findConcatSeparation!2419 (regOne!32740 r!7292) (regTwo!32740 r!7292) Nil!64519 s!2326 s!2326)) (not (is-Some!16004 (findConcatSeparation!2419 (regOne!32740 r!7292) (regTwo!32740 r!7292) Nil!64519 s!2326 s!2326))))))

(assert (=> d!1935253 d!1935731))

(declare-fun d!1935733 () Bool)

(assert (=> d!1935733 (= (isConcat!1052 lt!2337978) (is-Concat!24959 lt!2337978))))

(assert (=> b!6174627 d!1935733))

(declare-fun d!1935735 () Bool)

(assert (=> d!1935735 (= (nullable!6107 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (nullableFct!2069 (h!70965 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))))))

(declare-fun bs!1531344 () Bool)

(assert (= bs!1531344 d!1935735))

(declare-fun m!7011746 () Bool)

(assert (=> bs!1531344 m!7011746))

(assert (=> b!6174363 d!1935735))

(assert (=> b!6174368 d!1935275))

(declare-fun d!1935737 () Bool)

(assert (=> d!1935737 (= (nullable!6107 (h!70965 (exprs!5998 lt!2337815))) (nullableFct!2069 (h!70965 (exprs!5998 lt!2337815))))))

(declare-fun bs!1531345 () Bool)

(assert (= bs!1531345 d!1935737))

(declare-fun m!7011748 () Bool)

(assert (=> bs!1531345 m!7011748))

(assert (=> b!6174486 d!1935737))

(declare-fun b!6175573 () Bool)

(declare-fun e!3761747 () (Set Context!10996))

(declare-fun e!3761746 () (Set Context!10996))

(assert (=> b!6175573 (= e!3761747 e!3761746)))

(declare-fun c!1113169 () Bool)

(assert (=> b!6175573 (= c!1113169 (is-Cons!64517 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))))))))

(declare-fun b!6175574 () Bool)

(declare-fun call!515372 () (Set Context!10996))

(assert (=> b!6175574 (= e!3761746 call!515372)))

(declare-fun bm!515367 () Bool)

(assert (=> bm!515367 (= call!515372 (derivationStepZipperDown!1362 (h!70965 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))))) (Context!10997 (t!378145 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))))))) (h!70967 s!2326)))))

(declare-fun b!6175575 () Bool)

(declare-fun e!3761748 () Bool)

(assert (=> b!6175575 (= e!3761748 (nullable!6107 (h!70965 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))))))))))

(declare-fun b!6175576 () Bool)

(assert (=> b!6175576 (= e!3761746 (as set.empty (Set Context!10996)))))

(declare-fun b!6175572 () Bool)

(assert (=> b!6175572 (= e!3761747 (set.union call!515372 (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343))))))))))) (h!70967 s!2326))))))

(declare-fun d!1935739 () Bool)

(declare-fun c!1113168 () Bool)

(assert (=> d!1935739 (= c!1113168 e!3761748)))

(declare-fun res!2556020 () Bool)

(assert (=> d!1935739 (=> (not res!2556020) (not e!3761748))))

(assert (=> d!1935739 (= res!2556020 (is-Cons!64517 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))))))))

(assert (=> d!1935739 (= (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (Cons!64517 (h!70965 (exprs!5998 (h!70966 zl!343))) (t!378145 (exprs!5998 (h!70966 zl!343)))))))) (h!70967 s!2326)) e!3761747)))

(assert (= (and d!1935739 res!2556020) b!6175575))

(assert (= (and d!1935739 c!1113168) b!6175572))

(assert (= (and d!1935739 (not c!1113168)) b!6175573))

(assert (= (and b!6175573 c!1113169) b!6175574))

(assert (= (and b!6175573 (not c!1113169)) b!6175576))

(assert (= (or b!6175572 b!6175574) bm!515367))

(declare-fun m!7011750 () Bool)

(assert (=> bm!515367 m!7011750))

(declare-fun m!7011752 () Bool)

(assert (=> b!6175575 m!7011752))

(declare-fun m!7011754 () Bool)

(assert (=> b!6175572 m!7011754))

(assert (=> b!6174360 d!1935739))

(declare-fun b!6175577 () Bool)

(declare-fun e!3761749 () Bool)

(declare-fun call!515374 () Bool)

(assert (=> b!6175577 (= e!3761749 call!515374)))

(declare-fun bm!515368 () Bool)

(declare-fun call!515373 () Bool)

(declare-fun c!1113170 () Bool)

(assert (=> bm!515368 (= call!515373 (nullable!6107 (ite c!1113170 (regOne!32741 (regTwo!32741 (regOne!32740 r!7292))) (regOne!32740 (regTwo!32741 (regOne!32740 r!7292))))))))

(declare-fun b!6175578 () Bool)

(declare-fun e!3761750 () Bool)

(assert (=> b!6175578 (= e!3761750 e!3761749)))

(declare-fun res!2556024 () Bool)

(assert (=> b!6175578 (= res!2556024 call!515373)))

(assert (=> b!6175578 (=> (not res!2556024) (not e!3761749))))

(declare-fun b!6175579 () Bool)

(declare-fun e!3761753 () Bool)

(declare-fun e!3761754 () Bool)

(assert (=> b!6175579 (= e!3761753 e!3761754)))

(declare-fun res!2556025 () Bool)

(assert (=> b!6175579 (=> (not res!2556025) (not e!3761754))))

(assert (=> b!6175579 (= res!2556025 (and (not (is-EmptyLang!16114 (regTwo!32741 (regOne!32740 r!7292)))) (not (is-ElementMatch!16114 (regTwo!32741 (regOne!32740 r!7292))))))))

(declare-fun b!6175580 () Bool)

(declare-fun e!3761751 () Bool)

(assert (=> b!6175580 (= e!3761751 e!3761750)))

(assert (=> b!6175580 (= c!1113170 (is-Union!16114 (regTwo!32741 (regOne!32740 r!7292))))))

(declare-fun b!6175581 () Bool)

(assert (=> b!6175581 (= e!3761754 e!3761751)))

(declare-fun res!2556023 () Bool)

(assert (=> b!6175581 (=> res!2556023 e!3761751)))

(assert (=> b!6175581 (= res!2556023 (is-Star!16114 (regTwo!32741 (regOne!32740 r!7292))))))

(declare-fun b!6175582 () Bool)

(declare-fun e!3761752 () Bool)

(assert (=> b!6175582 (= e!3761752 call!515374)))

(declare-fun d!1935741 () Bool)

(declare-fun res!2556021 () Bool)

(assert (=> d!1935741 (=> res!2556021 e!3761753)))

(assert (=> d!1935741 (= res!2556021 (is-EmptyExpr!16114 (regTwo!32741 (regOne!32740 r!7292))))))

(assert (=> d!1935741 (= (nullableFct!2069 (regTwo!32741 (regOne!32740 r!7292))) e!3761753)))

(declare-fun bm!515369 () Bool)

(assert (=> bm!515369 (= call!515374 (nullable!6107 (ite c!1113170 (regTwo!32741 (regTwo!32741 (regOne!32740 r!7292))) (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))))))))

(declare-fun b!6175583 () Bool)

(assert (=> b!6175583 (= e!3761750 e!3761752)))

(declare-fun res!2556022 () Bool)

(assert (=> b!6175583 (= res!2556022 call!515373)))

(assert (=> b!6175583 (=> res!2556022 e!3761752)))

(assert (= (and d!1935741 (not res!2556021)) b!6175579))

(assert (= (and b!6175579 res!2556025) b!6175581))

(assert (= (and b!6175581 (not res!2556023)) b!6175580))

(assert (= (and b!6175580 c!1113170) b!6175583))

(assert (= (and b!6175580 (not c!1113170)) b!6175578))

(assert (= (and b!6175583 (not res!2556022)) b!6175582))

(assert (= (and b!6175578 res!2556024) b!6175577))

(assert (= (or b!6175582 b!6175577) bm!515369))

(assert (= (or b!6175583 b!6175578) bm!515368))

(declare-fun m!7011756 () Bool)

(assert (=> bm!515368 m!7011756))

(declare-fun m!7011758 () Bool)

(assert (=> bm!515369 m!7011758))

(assert (=> d!1935305 d!1935741))

(declare-fun b!6175585 () Bool)

(declare-fun e!3761756 () (Set Context!10996))

(declare-fun e!3761755 () (Set Context!10996))

(assert (=> b!6175585 (= e!3761756 e!3761755)))

(declare-fun c!1113172 () Bool)

(assert (=> b!6175585 (= c!1113172 (is-Cons!64517 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))))))))

(declare-fun b!6175586 () Bool)

(declare-fun call!515375 () (Set Context!10996))

(assert (=> b!6175586 (= e!3761755 call!515375)))

(declare-fun bm!515370 () Bool)

(assert (=> bm!515370 (= call!515375 (derivationStepZipperDown!1362 (h!70965 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))))) (Context!10997 (t!378145 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343))))))) (h!70967 s!2326)))))

(declare-fun b!6175587 () Bool)

(declare-fun e!3761757 () Bool)

(assert (=> b!6175587 (= e!3761757 (nullable!6107 (h!70965 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343))))))))))

(declare-fun b!6175588 () Bool)

(assert (=> b!6175588 (= e!3761755 (as set.empty (Set Context!10996)))))

(declare-fun b!6175584 () Bool)

(assert (=> b!6175584 (= e!3761756 (set.union call!515375 (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343))))))) (h!70967 s!2326))))))

(declare-fun d!1935743 () Bool)

(declare-fun c!1113171 () Bool)

(assert (=> d!1935743 (= c!1113171 e!3761757)))

(declare-fun res!2556026 () Bool)

(assert (=> d!1935743 (=> (not res!2556026) (not e!3761757))))

(assert (=> d!1935743 (= res!2556026 (is-Cons!64517 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))))))))

(assert (=> d!1935743 (= (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 (h!70966 zl!343)))) (h!70967 s!2326)) e!3761756)))

(assert (= (and d!1935743 res!2556026) b!6175587))

(assert (= (and d!1935743 c!1113171) b!6175584))

(assert (= (and d!1935743 (not c!1113171)) b!6175585))

(assert (= (and b!6175585 c!1113172) b!6175586))

(assert (= (and b!6175585 (not c!1113172)) b!6175588))

(assert (= (or b!6175584 b!6175586) bm!515370))

(declare-fun m!7011760 () Bool)

(assert (=> bm!515370 m!7011760))

(declare-fun m!7011762 () Bool)

(assert (=> b!6175587 m!7011762))

(declare-fun m!7011764 () Bool)

(assert (=> b!6175584 m!7011764))

(assert (=> b!6174365 d!1935743))

(declare-fun bs!1531346 () Bool)

(declare-fun b!6175596 () Bool)

(assert (= bs!1531346 (and b!6175596 b!6174146)))

(declare-fun lambda!337139 () Int)

(assert (=> bs!1531346 (not (= lambda!337139 lambda!337026))))

(declare-fun bs!1531347 () Bool)

(assert (= bs!1531347 (and b!6175596 d!1935249)))

(assert (=> bs!1531347 (not (= lambda!337139 lambda!337046))))

(declare-fun bs!1531348 () Bool)

(assert (= bs!1531348 (and b!6175596 b!6175303)))

(assert (=> bs!1531348 (not (= lambda!337139 lambda!337121))))

(declare-fun bs!1531349 () Bool)

(assert (= bs!1531349 (and b!6175596 d!1935251)))

(assert (=> bs!1531349 (not (= lambda!337139 lambda!337052))))

(declare-fun bs!1531350 () Bool)

(assert (= bs!1531350 (and b!6175596 b!6175308)))

(assert (=> bs!1531350 (= (and (= (reg!16443 (regOne!32741 r!7292)) (reg!16443 (regTwo!32741 r!7292))) (= (regOne!32741 r!7292) (regTwo!32741 r!7292))) (= lambda!337139 lambda!337120))))

(assert (=> bs!1531346 (not (= lambda!337139 lambda!337027))))

(declare-fun bs!1531351 () Bool)

(assert (= bs!1531351 (and b!6175596 d!1935673)))

(assert (=> bs!1531351 (not (= lambda!337139 lambda!337130))))

(declare-fun bs!1531352 () Bool)

(assert (= bs!1531352 (and b!6175596 d!1935715)))

(assert (=> bs!1531352 (not (= lambda!337139 lambda!337136))))

(assert (=> bs!1531349 (not (= lambda!337139 lambda!337051))))

(assert (=> bs!1531352 (not (= lambda!337139 lambda!337137))))

(declare-fun bs!1531353 () Bool)

(assert (= bs!1531353 (and b!6175596 b!6174526)))

(assert (=> bs!1531353 (not (= lambda!337139 lambda!337068))))

(declare-fun bs!1531354 () Bool)

(assert (= bs!1531354 (and b!6175596 b!6174531)))

(assert (=> bs!1531354 (= (and (= (reg!16443 (regOne!32741 r!7292)) (reg!16443 r!7292)) (= (regOne!32741 r!7292) r!7292)) (= lambda!337139 lambda!337067))))

(assert (=> b!6175596 true))

(assert (=> b!6175596 true))

(declare-fun bs!1531355 () Bool)

(declare-fun b!6175591 () Bool)

(assert (= bs!1531355 (and b!6175591 b!6174146)))

(declare-fun lambda!337140 () Int)

(assert (=> bs!1531355 (not (= lambda!337140 lambda!337026))))

(declare-fun bs!1531356 () Bool)

(assert (= bs!1531356 (and b!6175591 d!1935249)))

(assert (=> bs!1531356 (not (= lambda!337140 lambda!337046))))

(declare-fun bs!1531357 () Bool)

(assert (= bs!1531357 (and b!6175591 b!6175303)))

(assert (=> bs!1531357 (= (and (= (regOne!32740 (regOne!32741 r!7292)) (regOne!32740 (regTwo!32741 r!7292))) (= (regTwo!32740 (regOne!32741 r!7292)) (regTwo!32740 (regTwo!32741 r!7292)))) (= lambda!337140 lambda!337121))))

(declare-fun bs!1531358 () Bool)

(assert (= bs!1531358 (and b!6175591 b!6175596)))

(assert (=> bs!1531358 (not (= lambda!337140 lambda!337139))))

(declare-fun bs!1531359 () Bool)

(assert (= bs!1531359 (and b!6175591 d!1935251)))

(assert (=> bs!1531359 (= (and (= (regOne!32740 (regOne!32741 r!7292)) (regOne!32740 r!7292)) (= (regTwo!32740 (regOne!32741 r!7292)) (regTwo!32740 r!7292))) (= lambda!337140 lambda!337052))))

(declare-fun bs!1531360 () Bool)

(assert (= bs!1531360 (and b!6175591 b!6175308)))

(assert (=> bs!1531360 (not (= lambda!337140 lambda!337120))))

(assert (=> bs!1531355 (= (and (= (regOne!32740 (regOne!32741 r!7292)) (regOne!32740 r!7292)) (= (regTwo!32740 (regOne!32741 r!7292)) (regTwo!32740 r!7292))) (= lambda!337140 lambda!337027))))

(declare-fun bs!1531361 () Bool)

(assert (= bs!1531361 (and b!6175591 d!1935673)))

(assert (=> bs!1531361 (not (= lambda!337140 lambda!337130))))

(declare-fun bs!1531362 () Bool)

(assert (= bs!1531362 (and b!6175591 d!1935715)))

(assert (=> bs!1531362 (not (= lambda!337140 lambda!337136))))

(assert (=> bs!1531359 (not (= lambda!337140 lambda!337051))))

(assert (=> bs!1531362 (= (and (= (regOne!32740 (regOne!32741 r!7292)) (regOne!32740 r!7292)) (= (regTwo!32740 (regOne!32741 r!7292)) (regTwo!32740 r!7292))) (= lambda!337140 lambda!337137))))

(declare-fun bs!1531363 () Bool)

(assert (= bs!1531363 (and b!6175591 b!6174526)))

(assert (=> bs!1531363 (= (and (= (regOne!32740 (regOne!32741 r!7292)) (regOne!32740 r!7292)) (= (regTwo!32740 (regOne!32741 r!7292)) (regTwo!32740 r!7292))) (= lambda!337140 lambda!337068))))

(declare-fun bs!1531364 () Bool)

(assert (= bs!1531364 (and b!6175591 b!6174531)))

(assert (=> bs!1531364 (not (= lambda!337140 lambda!337067))))

(assert (=> b!6175591 true))

(assert (=> b!6175591 true))

(declare-fun b!6175589 () Bool)

(declare-fun e!3761761 () Bool)

(assert (=> b!6175589 (= e!3761761 (= s!2326 (Cons!64519 (c!1112765 (regOne!32741 r!7292)) Nil!64519)))))

(declare-fun b!6175590 () Bool)

(declare-fun res!2556028 () Bool)

(declare-fun e!3761763 () Bool)

(assert (=> b!6175590 (=> res!2556028 e!3761763)))

(declare-fun call!515376 () Bool)

(assert (=> b!6175590 (= res!2556028 call!515376)))

(declare-fun e!3761759 () Bool)

(assert (=> b!6175590 (= e!3761759 e!3761763)))

(declare-fun call!515377 () Bool)

(assert (=> b!6175591 (= e!3761759 call!515377)))

(declare-fun b!6175592 () Bool)

(declare-fun c!1113175 () Bool)

(assert (=> b!6175592 (= c!1113175 (is-Union!16114 (regOne!32741 r!7292)))))

(declare-fun e!3761762 () Bool)

(assert (=> b!6175592 (= e!3761761 e!3761762)))

(declare-fun bm!515371 () Bool)

(declare-fun c!1113173 () Bool)

(assert (=> bm!515371 (= call!515377 (Exists!3184 (ite c!1113173 lambda!337139 lambda!337140)))))

(declare-fun b!6175593 () Bool)

(declare-fun c!1113174 () Bool)

(assert (=> b!6175593 (= c!1113174 (is-ElementMatch!16114 (regOne!32741 r!7292)))))

(declare-fun e!3761758 () Bool)

(assert (=> b!6175593 (= e!3761758 e!3761761)))

(declare-fun bm!515372 () Bool)

(assert (=> bm!515372 (= call!515376 (isEmpty!36498 s!2326))))

(declare-fun b!6175594 () Bool)

(declare-fun e!3761760 () Bool)

(assert (=> b!6175594 (= e!3761760 call!515376)))

(declare-fun b!6175595 () Bool)

(assert (=> b!6175595 (= e!3761762 e!3761759)))

(assert (=> b!6175595 (= c!1113173 (is-Star!16114 (regOne!32741 r!7292)))))

(declare-fun d!1935745 () Bool)

(declare-fun c!1113176 () Bool)

(assert (=> d!1935745 (= c!1113176 (is-EmptyExpr!16114 (regOne!32741 r!7292)))))

(assert (=> d!1935745 (= (matchRSpec!3215 (regOne!32741 r!7292) s!2326) e!3761760)))

(assert (=> b!6175596 (= e!3761763 call!515377)))

(declare-fun b!6175597 () Bool)

(declare-fun e!3761764 () Bool)

(assert (=> b!6175597 (= e!3761764 (matchRSpec!3215 (regTwo!32741 (regOne!32741 r!7292)) s!2326))))

(declare-fun b!6175598 () Bool)

(assert (=> b!6175598 (= e!3761760 e!3761758)))

(declare-fun res!2556027 () Bool)

(assert (=> b!6175598 (= res!2556027 (not (is-EmptyLang!16114 (regOne!32741 r!7292))))))

(assert (=> b!6175598 (=> (not res!2556027) (not e!3761758))))

(declare-fun b!6175599 () Bool)

(assert (=> b!6175599 (= e!3761762 e!3761764)))

(declare-fun res!2556029 () Bool)

(assert (=> b!6175599 (= res!2556029 (matchRSpec!3215 (regOne!32741 (regOne!32741 r!7292)) s!2326))))

(assert (=> b!6175599 (=> res!2556029 e!3761764)))

(assert (= (and d!1935745 c!1113176) b!6175594))

(assert (= (and d!1935745 (not c!1113176)) b!6175598))

(assert (= (and b!6175598 res!2556027) b!6175593))

(assert (= (and b!6175593 c!1113174) b!6175589))

(assert (= (and b!6175593 (not c!1113174)) b!6175592))

(assert (= (and b!6175592 c!1113175) b!6175599))

(assert (= (and b!6175592 (not c!1113175)) b!6175595))

(assert (= (and b!6175599 (not res!2556029)) b!6175597))

(assert (= (and b!6175595 c!1113173) b!6175590))

(assert (= (and b!6175595 (not c!1113173)) b!6175591))

(assert (= (and b!6175590 (not res!2556028)) b!6175596))

(assert (= (or b!6175596 b!6175591) bm!515371))

(assert (= (or b!6175594 b!6175590) bm!515372))

(declare-fun m!7011766 () Bool)

(assert (=> bm!515371 m!7011766))

(assert (=> bm!515372 m!7010626))

(declare-fun m!7011768 () Bool)

(assert (=> b!6175597 m!7011768))

(declare-fun m!7011770 () Bool)

(assert (=> b!6175599 m!7011770))

(assert (=> b!6174534 d!1935745))

(assert (=> b!6174650 d!1935501))

(declare-fun b!6175600 () Bool)

(declare-fun e!3761765 () Bool)

(declare-fun call!515379 () Bool)

(assert (=> b!6175600 (= e!3761765 call!515379)))

(declare-fun bm!515373 () Bool)

(declare-fun call!515378 () Bool)

(declare-fun c!1113177 () Bool)

(assert (=> bm!515373 (= call!515378 (nullable!6107 (ite c!1113177 (regOne!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regOne!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))))))

(declare-fun b!6175601 () Bool)

(declare-fun e!3761766 () Bool)

(assert (=> b!6175601 (= e!3761766 e!3761765)))

(declare-fun res!2556033 () Bool)

(assert (=> b!6175601 (= res!2556033 call!515378)))

(assert (=> b!6175601 (=> (not res!2556033) (not e!3761765))))

(declare-fun b!6175602 () Bool)

(declare-fun e!3761769 () Bool)

(declare-fun e!3761770 () Bool)

(assert (=> b!6175602 (= e!3761769 e!3761770)))

(declare-fun res!2556034 () Bool)

(assert (=> b!6175602 (=> (not res!2556034) (not e!3761770))))

(assert (=> b!6175602 (= res!2556034 (and (not (is-EmptyLang!16114 (h!70965 (exprs!5998 (h!70966 zl!343))))) (not (is-ElementMatch!16114 (h!70965 (exprs!5998 (h!70966 zl!343)))))))))

(declare-fun b!6175603 () Bool)

(declare-fun e!3761767 () Bool)

(assert (=> b!6175603 (= e!3761767 e!3761766)))

(assert (=> b!6175603 (= c!1113177 (is-Union!16114 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6175604 () Bool)

(assert (=> b!6175604 (= e!3761770 e!3761767)))

(declare-fun res!2556032 () Bool)

(assert (=> b!6175604 (=> res!2556032 e!3761767)))

(assert (=> b!6175604 (= res!2556032 (is-Star!16114 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6175605 () Bool)

(declare-fun e!3761768 () Bool)

(assert (=> b!6175605 (= e!3761768 call!515379)))

(declare-fun d!1935747 () Bool)

(declare-fun res!2556030 () Bool)

(assert (=> d!1935747 (=> res!2556030 e!3761769)))

(assert (=> d!1935747 (= res!2556030 (is-EmptyExpr!16114 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(assert (=> d!1935747 (= (nullableFct!2069 (h!70965 (exprs!5998 (h!70966 zl!343)))) e!3761769)))

(declare-fun bm!515374 () Bool)

(assert (=> bm!515374 (= call!515379 (nullable!6107 (ite c!1113177 (regTwo!32741 (h!70965 (exprs!5998 (h!70966 zl!343)))) (regTwo!32740 (h!70965 (exprs!5998 (h!70966 zl!343)))))))))

(declare-fun b!6175606 () Bool)

(assert (=> b!6175606 (= e!3761766 e!3761768)))

(declare-fun res!2556031 () Bool)

(assert (=> b!6175606 (= res!2556031 call!515378)))

(assert (=> b!6175606 (=> res!2556031 e!3761768)))

(assert (= (and d!1935747 (not res!2556030)) b!6175602))

(assert (= (and b!6175602 res!2556034) b!6175604))

(assert (= (and b!6175604 (not res!2556032)) b!6175603))

(assert (= (and b!6175603 c!1113177) b!6175606))

(assert (= (and b!6175603 (not c!1113177)) b!6175601))

(assert (= (and b!6175606 (not res!2556031)) b!6175605))

(assert (= (and b!6175601 res!2556033) b!6175600))

(assert (= (or b!6175605 b!6175600) bm!515374))

(assert (= (or b!6175606 b!6175601) bm!515373))

(declare-fun m!7011772 () Bool)

(assert (=> bm!515373 m!7011772))

(declare-fun m!7011774 () Bool)

(assert (=> bm!515374 m!7011774))

(assert (=> d!1935275 d!1935747))

(declare-fun b!6175610 () Bool)

(declare-fun e!3761771 () Bool)

(declare-fun lt!2338065 () List!64643)

(assert (=> b!6175610 (= e!3761771 (or (not (= (t!378147 s!2326) Nil!64519)) (= lt!2338065 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519)))))))

(declare-fun b!6175607 () Bool)

(declare-fun e!3761772 () List!64643)

(assert (=> b!6175607 (= e!3761772 (t!378147 s!2326))))

(declare-fun d!1935749 () Bool)

(assert (=> d!1935749 e!3761771))

(declare-fun res!2556035 () Bool)

(assert (=> d!1935749 (=> (not res!2556035) (not e!3761771))))

(assert (=> d!1935749 (= res!2556035 (= (content!12045 lt!2338065) (set.union (content!12045 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519))) (content!12045 (t!378147 s!2326)))))))

(assert (=> d!1935749 (= lt!2338065 e!3761772)))

(declare-fun c!1113178 () Bool)

(assert (=> d!1935749 (= c!1113178 (is-Nil!64519 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519))))))

(assert (=> d!1935749 (= (++!14198 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519)) (t!378147 s!2326)) lt!2338065)))

(declare-fun b!6175609 () Bool)

(declare-fun res!2556036 () Bool)

(assert (=> b!6175609 (=> (not res!2556036) (not e!3761771))))

(assert (=> b!6175609 (= res!2556036 (= (size!40253 lt!2338065) (+ (size!40253 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519))) (size!40253 (t!378147 s!2326)))))))

(declare-fun b!6175608 () Bool)

(assert (=> b!6175608 (= e!3761772 (Cons!64519 (h!70967 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519))) (++!14198 (t!378147 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519))) (t!378147 s!2326))))))

(assert (= (and d!1935749 c!1113178) b!6175607))

(assert (= (and d!1935749 (not c!1113178)) b!6175608))

(assert (= (and d!1935749 res!2556035) b!6175609))

(assert (= (and b!6175609 res!2556036) b!6175610))

(declare-fun m!7011776 () Bool)

(assert (=> d!1935749 m!7011776))

(assert (=> d!1935749 m!7010638))

(declare-fun m!7011778 () Bool)

(assert (=> d!1935749 m!7011778))

(declare-fun m!7011780 () Bool)

(assert (=> d!1935749 m!7011780))

(declare-fun m!7011782 () Bool)

(assert (=> b!6175609 m!7011782))

(assert (=> b!6175609 m!7010638))

(declare-fun m!7011784 () Bool)

(assert (=> b!6175609 m!7011784))

(declare-fun m!7011786 () Bool)

(assert (=> b!6175609 m!7011786))

(declare-fun m!7011788 () Bool)

(assert (=> b!6175608 m!7011788))

(assert (=> b!6174313 d!1935749))

(declare-fun b!6175614 () Bool)

(declare-fun e!3761773 () Bool)

(declare-fun lt!2338066 () List!64643)

(assert (=> b!6175614 (= e!3761773 (or (not (= (Cons!64519 (h!70967 s!2326) Nil!64519) Nil!64519)) (= lt!2338066 Nil!64519)))))

(declare-fun b!6175611 () Bool)

(declare-fun e!3761774 () List!64643)

(assert (=> b!6175611 (= e!3761774 (Cons!64519 (h!70967 s!2326) Nil!64519))))

(declare-fun d!1935751 () Bool)

(assert (=> d!1935751 e!3761773))

(declare-fun res!2556037 () Bool)

(assert (=> d!1935751 (=> (not res!2556037) (not e!3761773))))

(assert (=> d!1935751 (= res!2556037 (= (content!12045 lt!2338066) (set.union (content!12045 Nil!64519) (content!12045 (Cons!64519 (h!70967 s!2326) Nil!64519)))))))

(assert (=> d!1935751 (= lt!2338066 e!3761774)))

(declare-fun c!1113179 () Bool)

(assert (=> d!1935751 (= c!1113179 (is-Nil!64519 Nil!64519))))

(assert (=> d!1935751 (= (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519)) lt!2338066)))

(declare-fun b!6175613 () Bool)

(declare-fun res!2556038 () Bool)

(assert (=> b!6175613 (=> (not res!2556038) (not e!3761773))))

(assert (=> b!6175613 (= res!2556038 (= (size!40253 lt!2338066) (+ (size!40253 Nil!64519) (size!40253 (Cons!64519 (h!70967 s!2326) Nil!64519)))))))

(declare-fun b!6175612 () Bool)

(assert (=> b!6175612 (= e!3761774 (Cons!64519 (h!70967 Nil!64519) (++!14198 (t!378147 Nil!64519) (Cons!64519 (h!70967 s!2326) Nil!64519))))))

(assert (= (and d!1935751 c!1113179) b!6175611))

(assert (= (and d!1935751 (not c!1113179)) b!6175612))

(assert (= (and d!1935751 res!2556037) b!6175613))

(assert (= (and b!6175613 res!2556038) b!6175614))

(declare-fun m!7011790 () Bool)

(assert (=> d!1935751 m!7011790))

(declare-fun m!7011792 () Bool)

(assert (=> d!1935751 m!7011792))

(declare-fun m!7011794 () Bool)

(assert (=> d!1935751 m!7011794))

(declare-fun m!7011796 () Bool)

(assert (=> b!6175613 m!7011796))

(declare-fun m!7011798 () Bool)

(assert (=> b!6175613 m!7011798))

(declare-fun m!7011800 () Bool)

(assert (=> b!6175613 m!7011800))

(declare-fun m!7011802 () Bool)

(assert (=> b!6175612 m!7011802))

(assert (=> b!6174313 d!1935751))

(declare-fun d!1935753 () Bool)

(assert (=> d!1935753 (= (++!14198 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519)) (t!378147 s!2326)) s!2326)))

(declare-fun lt!2338069 () Unit!157691)

(declare-fun choose!45899 (List!64643 C!32498 List!64643 List!64643) Unit!157691)

(assert (=> d!1935753 (= lt!2338069 (choose!45899 Nil!64519 (h!70967 s!2326) (t!378147 s!2326) s!2326))))

(assert (=> d!1935753 (= (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) (t!378147 s!2326))) s!2326)))

(assert (=> d!1935753 (= (lemmaMoveElementToOtherListKeepsConcatEq!2293 Nil!64519 (h!70967 s!2326) (t!378147 s!2326) s!2326) lt!2338069)))

(declare-fun bs!1531365 () Bool)

(assert (= bs!1531365 d!1935753))

(assert (=> bs!1531365 m!7010638))

(assert (=> bs!1531365 m!7010638))

(assert (=> bs!1531365 m!7010640))

(declare-fun m!7011804 () Bool)

(assert (=> bs!1531365 m!7011804))

(declare-fun m!7011806 () Bool)

(assert (=> bs!1531365 m!7011806))

(assert (=> b!6174313 d!1935753))

(declare-fun b!6175615 () Bool)

(declare-fun res!2556039 () Bool)

(declare-fun e!3761775 () Bool)

(assert (=> b!6175615 (=> (not res!2556039) (not e!3761775))))

(declare-fun lt!2338070 () Option!16005)

(assert (=> b!6175615 (= res!2556039 (matchR!8297 (regOne!32740 r!7292) (_1!36396 (get!22271 lt!2338070))))))

(declare-fun b!6175616 () Bool)

(declare-fun e!3761779 () Option!16005)

(assert (=> b!6175616 (= e!3761779 (Some!16004 (tuple2!66187 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519)) (t!378147 s!2326))))))

(declare-fun b!6175617 () Bool)

(declare-fun lt!2338072 () Unit!157691)

(declare-fun lt!2338071 () Unit!157691)

(assert (=> b!6175617 (= lt!2338072 lt!2338071)))

(assert (=> b!6175617 (= (++!14198 (++!14198 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519)) (Cons!64519 (h!70967 (t!378147 s!2326)) Nil!64519)) (t!378147 (t!378147 s!2326))) s!2326)))

(assert (=> b!6175617 (= lt!2338071 (lemmaMoveElementToOtherListKeepsConcatEq!2293 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519)) (h!70967 (t!378147 s!2326)) (t!378147 (t!378147 s!2326)) s!2326))))

(declare-fun e!3761776 () Option!16005)

(assert (=> b!6175617 (= e!3761776 (findConcatSeparation!2419 (regOne!32740 r!7292) (regTwo!32740 r!7292) (++!14198 (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519)) (Cons!64519 (h!70967 (t!378147 s!2326)) Nil!64519)) (t!378147 (t!378147 s!2326)) s!2326))))

(declare-fun b!6175618 () Bool)

(assert (=> b!6175618 (= e!3761779 e!3761776)))

(declare-fun c!1113181 () Bool)

(assert (=> b!6175618 (= c!1113181 (is-Nil!64519 (t!378147 s!2326)))))

(declare-fun b!6175619 () Bool)

(declare-fun res!2556041 () Bool)

(assert (=> b!6175619 (=> (not res!2556041) (not e!3761775))))

(assert (=> b!6175619 (= res!2556041 (matchR!8297 (regTwo!32740 r!7292) (_2!36396 (get!22271 lt!2338070))))))

(declare-fun d!1935755 () Bool)

(declare-fun e!3761778 () Bool)

(assert (=> d!1935755 e!3761778))

(declare-fun res!2556043 () Bool)

(assert (=> d!1935755 (=> res!2556043 e!3761778)))

(assert (=> d!1935755 (= res!2556043 e!3761775)))

(declare-fun res!2556040 () Bool)

(assert (=> d!1935755 (=> (not res!2556040) (not e!3761775))))

(assert (=> d!1935755 (= res!2556040 (isDefined!12708 lt!2338070))))

(assert (=> d!1935755 (= lt!2338070 e!3761779)))

(declare-fun c!1113180 () Bool)

(declare-fun e!3761777 () Bool)

(assert (=> d!1935755 (= c!1113180 e!3761777)))

(declare-fun res!2556042 () Bool)

(assert (=> d!1935755 (=> (not res!2556042) (not e!3761777))))

(assert (=> d!1935755 (= res!2556042 (matchR!8297 (regOne!32740 r!7292) (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519))))))

(assert (=> d!1935755 (validRegex!7850 (regOne!32740 r!7292))))

(assert (=> d!1935755 (= (findConcatSeparation!2419 (regOne!32740 r!7292) (regTwo!32740 r!7292) (++!14198 Nil!64519 (Cons!64519 (h!70967 s!2326) Nil!64519)) (t!378147 s!2326) s!2326) lt!2338070)))

(declare-fun b!6175620 () Bool)

(assert (=> b!6175620 (= e!3761775 (= (++!14198 (_1!36396 (get!22271 lt!2338070)) (_2!36396 (get!22271 lt!2338070))) s!2326))))

(declare-fun b!6175621 () Bool)

(assert (=> b!6175621 (= e!3761776 None!16004)))

(declare-fun b!6175622 () Bool)

(assert (=> b!6175622 (= e!3761777 (matchR!8297 (regTwo!32740 r!7292) (t!378147 s!2326)))))

(declare-fun b!6175623 () Bool)

(assert (=> b!6175623 (= e!3761778 (not (isDefined!12708 lt!2338070)))))

(assert (= (and d!1935755 res!2556042) b!6175622))

(assert (= (and d!1935755 c!1113180) b!6175616))

(assert (= (and d!1935755 (not c!1113180)) b!6175618))

(assert (= (and b!6175618 c!1113181) b!6175621))

(assert (= (and b!6175618 (not c!1113181)) b!6175617))

(assert (= (and d!1935755 res!2556040) b!6175615))

(assert (= (and b!6175615 res!2556039) b!6175619))

(assert (= (and b!6175619 res!2556041) b!6175620))

(assert (= (and d!1935755 (not res!2556043)) b!6175623))

(assert (=> b!6175617 m!7010638))

(declare-fun m!7011808 () Bool)

(assert (=> b!6175617 m!7011808))

(assert (=> b!6175617 m!7011808))

(declare-fun m!7011810 () Bool)

(assert (=> b!6175617 m!7011810))

(assert (=> b!6175617 m!7010638))

(declare-fun m!7011812 () Bool)

(assert (=> b!6175617 m!7011812))

(assert (=> b!6175617 m!7011808))

(declare-fun m!7011814 () Bool)

(assert (=> b!6175617 m!7011814))

(declare-fun m!7011816 () Bool)

(assert (=> b!6175620 m!7011816))

(declare-fun m!7011818 () Bool)

(assert (=> b!6175620 m!7011818))

(declare-fun m!7011820 () Bool)

(assert (=> b!6175623 m!7011820))

(assert (=> d!1935755 m!7011820))

(assert (=> d!1935755 m!7010638))

(declare-fun m!7011822 () Bool)

(assert (=> d!1935755 m!7011822))

(assert (=> d!1935755 m!7010654))

(declare-fun m!7011824 () Bool)

(assert (=> b!6175622 m!7011824))

(assert (=> b!6175619 m!7011816))

(declare-fun m!7011826 () Bool)

(assert (=> b!6175619 m!7011826))

(assert (=> b!6175615 m!7011816))

(declare-fun m!7011828 () Bool)

(assert (=> b!6175615 m!7011828))

(assert (=> b!6174313 d!1935755))

(assert (=> d!1935321 d!1935309))

(declare-fun d!1935757 () Bool)

(assert (=> d!1935757 (= (flatMap!1619 lt!2337794 lambda!337028) (dynLambda!25442 lambda!337028 lt!2337815))))

(assert (=> d!1935757 true))

(declare-fun _$13!3149 () Unit!157691)

(assert (=> d!1935757 (= (choose!45885 lt!2337794 lt!2337815 lambda!337028) _$13!3149)))

(declare-fun b_lambda!235037 () Bool)

(assert (=> (not b_lambda!235037) (not d!1935757)))

(declare-fun bs!1531366 () Bool)

(assert (= bs!1531366 d!1935757))

(assert (=> bs!1531366 m!7010462))

(assert (=> bs!1531366 m!7010832))

(assert (=> d!1935321 d!1935757))

(assert (=> b!6174576 d!1935569))

(assert (=> b!6174576 d!1935503))

(declare-fun d!1935759 () Bool)

(assert (=> d!1935759 (= (nullable!6107 r!7292) (nullableFct!2069 r!7292))))

(declare-fun bs!1531367 () Bool)

(assert (= bs!1531367 d!1935759))

(declare-fun m!7011830 () Bool)

(assert (=> bs!1531367 m!7011830))

(assert (=> b!6174572 d!1935759))

(declare-fun bs!1531368 () Bool)

(declare-fun d!1935761 () Bool)

(assert (= bs!1531368 (and d!1935761 d!1935509)))

(declare-fun lambda!337141 () Int)

(assert (=> bs!1531368 (= lambda!337141 lambda!337111)))

(declare-fun bs!1531369 () Bool)

(assert (= bs!1531369 (and d!1935761 d!1935517)))

(assert (=> bs!1531369 (= lambda!337141 lambda!337112)))

(declare-fun bs!1531370 () Bool)

(assert (= bs!1531370 (and d!1935761 d!1935555)))

(assert (=> bs!1531370 (= lambda!337141 lambda!337116)))

(declare-fun bs!1531371 () Bool)

(assert (= bs!1531371 (and d!1935761 d!1935561)))

(assert (=> bs!1531371 (= lambda!337141 lambda!337117)))

(declare-fun bs!1531372 () Bool)

(assert (= bs!1531372 (and d!1935761 d!1935709)))

(assert (=> bs!1531372 (= lambda!337141 lambda!337131)))

(declare-fun bs!1531373 () Bool)

(assert (= bs!1531373 (and d!1935761 d!1935723)))

(assert (=> bs!1531373 (= lambda!337141 lambda!337138)))

(declare-fun bs!1531374 () Bool)

(assert (= bs!1531374 (and d!1935761 d!1935527)))

(assert (=> bs!1531374 (= lambda!337141 lambda!337113)))

(assert (=> d!1935761 (= (nullableZipper!1893 lt!2337794) (exists!2457 lt!2337794 lambda!337141))))

(declare-fun bs!1531375 () Bool)

(assert (= bs!1531375 d!1935761))

(declare-fun m!7011832 () Bool)

(assert (=> bs!1531375 m!7011832))

(assert (=> b!6174291 d!1935761))

(declare-fun d!1935763 () Bool)

(assert (=> d!1935763 (= (head!12746 (unfocusZipperList!1535 zl!343)) (h!70965 (unfocusZipperList!1535 zl!343)))))

(assert (=> b!6174432 d!1935763))

(declare-fun b!6175625 () Bool)

(declare-fun e!3761781 () (Set Context!10996))

(declare-fun e!3761780 () (Set Context!10996))

(assert (=> b!6175625 (= e!3761781 e!3761780)))

(declare-fun c!1113183 () Bool)

(assert (=> b!6175625 (= c!1113183 (is-Cons!64517 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337815))))))))

(declare-fun b!6175626 () Bool)

(declare-fun call!515380 () (Set Context!10996))

(assert (=> b!6175626 (= e!3761780 call!515380)))

(declare-fun bm!515375 () Bool)

(assert (=> bm!515375 (= call!515380 (derivationStepZipperDown!1362 (h!70965 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337815))))) (Context!10997 (t!378145 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337815)))))) (h!70967 s!2326)))))

(declare-fun b!6175627 () Bool)

(declare-fun e!3761782 () Bool)

(assert (=> b!6175627 (= e!3761782 (nullable!6107 (h!70965 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337815)))))))))

(declare-fun b!6175628 () Bool)

(assert (=> b!6175628 (= e!3761780 (as set.empty (Set Context!10996)))))

(declare-fun b!6175624 () Bool)

(assert (=> b!6175624 (= e!3761781 (set.union call!515380 (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337815)))))) (h!70967 s!2326))))))

(declare-fun d!1935765 () Bool)

(declare-fun c!1113182 () Bool)

(assert (=> d!1935765 (= c!1113182 e!3761782)))

(declare-fun res!2556044 () Bool)

(assert (=> d!1935765 (=> (not res!2556044) (not e!3761782))))

(assert (=> d!1935765 (= res!2556044 (is-Cons!64517 (exprs!5998 (Context!10997 (t!378145 (exprs!5998 lt!2337815))))))))

(assert (=> d!1935765 (= (derivationStepZipperUp!1288 (Context!10997 (t!378145 (exprs!5998 lt!2337815))) (h!70967 s!2326)) e!3761781)))

(assert (= (and d!1935765 res!2556044) b!6175627))

(assert (= (and d!1935765 c!1113182) b!6175624))

(assert (= (and d!1935765 (not c!1113182)) b!6175625))

(assert (= (and b!6175625 c!1113183) b!6175626))

(assert (= (and b!6175625 (not c!1113183)) b!6175628))

(assert (= (or b!6175624 b!6175626) bm!515375))

(declare-fun m!7011834 () Bool)

(assert (=> bm!515375 m!7011834))

(declare-fun m!7011836 () Bool)

(assert (=> b!6175627 m!7011836))

(declare-fun m!7011838 () Bool)

(assert (=> b!6175624 m!7011838))

(assert (=> b!6174483 d!1935765))

(assert (=> d!1935327 d!1935515))

(assert (=> d!1935327 d!1935295))

(declare-fun d!1935767 () Bool)

(assert (=> d!1935767 (= (Exists!3184 (ite c!1112861 lambda!337067 lambda!337068)) (choose!45881 (ite c!1112861 lambda!337067 lambda!337068)))))

(declare-fun bs!1531376 () Bool)

(assert (= bs!1531376 d!1935767))

(declare-fun m!7011840 () Bool)

(assert (=> bs!1531376 m!7011840))

(assert (=> bm!515190 d!1935767))

(declare-fun bm!515376 () Bool)

(declare-fun call!515385 () List!64641)

(declare-fun call!515382 () List!64641)

(assert (=> bm!515376 (= call!515385 call!515382)))

(declare-fun b!6175629 () Bool)

(declare-fun e!3761784 () (Set Context!10996))

(assert (=> b!6175629 (= e!3761784 (set.insert (ite c!1112883 lt!2337799 (Context!10997 call!515207)) (as set.empty (Set Context!10996))))))

(declare-fun b!6175631 () Bool)

(declare-fun e!3761785 () Bool)

(assert (=> b!6175631 (= e!3761785 (nullable!6107 (regOne!32740 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292)))))))))

(declare-fun b!6175632 () Bool)

(declare-fun e!3761787 () (Set Context!10996))

(declare-fun call!515386 () (Set Context!10996))

(assert (=> b!6175632 (= e!3761787 call!515386)))

(declare-fun b!6175633 () Bool)

(declare-fun e!3761783 () (Set Context!10996))

(declare-fun e!3761786 () (Set Context!10996))

(assert (=> b!6175633 (= e!3761783 e!3761786)))

(declare-fun c!1113187 () Bool)

(assert (=> b!6175633 (= c!1113187 (is-Concat!24959 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))))))

(declare-fun bm!515377 () Bool)

(declare-fun c!1113184 () Bool)

(assert (=> bm!515377 (= call!515382 ($colon$colon!1989 (exprs!5998 (ite c!1112883 lt!2337799 (Context!10997 call!515207))) (ite (or c!1113184 c!1113187) (regTwo!32740 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))) (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292)))))))))

(declare-fun b!6175634 () Bool)

(assert (=> b!6175634 (= e!3761786 call!515386)))

(declare-fun b!6175635 () Bool)

(declare-fun e!3761788 () (Set Context!10996))

(declare-fun call!515383 () (Set Context!10996))

(declare-fun call!515381 () (Set Context!10996))

(assert (=> b!6175635 (= e!3761788 (set.union call!515383 call!515381))))

(declare-fun b!6175636 () Bool)

(assert (=> b!6175636 (= e!3761784 e!3761788)))

(declare-fun c!1113188 () Bool)

(assert (=> b!6175636 (= c!1113188 (is-Union!16114 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))))))

(declare-fun b!6175637 () Bool)

(declare-fun call!515384 () (Set Context!10996))

(assert (=> b!6175637 (= e!3761783 (set.union call!515383 call!515384))))

(declare-fun bm!515378 () Bool)

(assert (=> bm!515378 (= call!515381 (derivationStepZipperDown!1362 (ite c!1113188 (regTwo!32741 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))) (ite c!1113184 (regTwo!32740 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))) (ite c!1113187 (regOne!32740 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))) (reg!16443 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292)))))))) (ite (or c!1113188 c!1113184) (ite c!1112883 lt!2337799 (Context!10997 call!515207)) (Context!10997 call!515385)) (h!70967 s!2326)))))

(declare-fun b!6175638 () Bool)

(declare-fun c!1113185 () Bool)

(assert (=> b!6175638 (= c!1113185 (is-Star!16114 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))))))

(assert (=> b!6175638 (= e!3761786 e!3761787)))

(declare-fun bm!515379 () Bool)

(assert (=> bm!515379 (= call!515384 call!515381)))

(declare-fun bm!515380 () Bool)

(assert (=> bm!515380 (= call!515386 call!515384)))

(declare-fun b!6175630 () Bool)

(assert (=> b!6175630 (= c!1113184 e!3761785)))

(declare-fun res!2556045 () Bool)

(assert (=> b!6175630 (=> (not res!2556045) (not e!3761785))))

(assert (=> b!6175630 (= res!2556045 (is-Concat!24959 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))))))

(assert (=> b!6175630 (= e!3761788 e!3761783)))

(declare-fun c!1113186 () Bool)

(declare-fun d!1935769 () Bool)

(assert (=> d!1935769 (= c!1113186 (and (is-ElementMatch!16114 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))) (= (c!1112765 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))) (h!70967 s!2326))))))

(assert (=> d!1935769 (= (derivationStepZipperDown!1362 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292)))) (ite c!1112883 lt!2337799 (Context!10997 call!515207)) (h!70967 s!2326)) e!3761784)))

(declare-fun bm!515381 () Bool)

(assert (=> bm!515381 (= call!515383 (derivationStepZipperDown!1362 (ite c!1113188 (regOne!32741 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292))))) (regOne!32740 (ite c!1112883 (regOne!32741 (regOne!32741 (regOne!32740 r!7292))) (regOne!32740 (regOne!32741 (regOne!32740 r!7292)))))) (ite c!1113188 (ite c!1112883 lt!2337799 (Context!10997 call!515207)) (Context!10997 call!515382)) (h!70967 s!2326)))))

(declare-fun b!6175639 () Bool)

(assert (=> b!6175639 (= e!3761787 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935769 c!1113186) b!6175629))

(assert (= (and d!1935769 (not c!1113186)) b!6175636))

(assert (= (and b!6175636 c!1113188) b!6175635))

(assert (= (and b!6175636 (not c!1113188)) b!6175630))

(assert (= (and b!6175630 res!2556045) b!6175631))

(assert (= (and b!6175630 c!1113184) b!6175637))

(assert (= (and b!6175630 (not c!1113184)) b!6175633))

(assert (= (and b!6175633 c!1113187) b!6175634))

(assert (= (and b!6175633 (not c!1113187)) b!6175638))

(assert (= (and b!6175638 c!1113185) b!6175632))

(assert (= (and b!6175638 (not c!1113185)) b!6175639))

(assert (= (or b!6175634 b!6175632) bm!515376))

(assert (= (or b!6175634 b!6175632) bm!515380))

(assert (= (or b!6175637 bm!515376) bm!515377))

(assert (= (or b!6175637 bm!515380) bm!515379))

(assert (= (or b!6175635 bm!515379) bm!515378))

(assert (= (or b!6175635 b!6175637) bm!515381))

(declare-fun m!7011842 () Bool)

(assert (=> b!6175629 m!7011842))

(declare-fun m!7011844 () Bool)

(assert (=> b!6175631 m!7011844))

(declare-fun m!7011846 () Bool)

(assert (=> bm!515378 m!7011846))

(declare-fun m!7011848 () Bool)

(assert (=> bm!515377 m!7011848))

(declare-fun m!7011850 () Bool)

(assert (=> bm!515381 m!7011850))

(assert (=> bm!515206 d!1935769))

(declare-fun b!6175640 () Bool)

(declare-fun res!2556047 () Bool)

(declare-fun e!3761793 () Bool)

(assert (=> b!6175640 (=> res!2556047 e!3761793)))

(assert (=> b!6175640 (= res!2556047 (not (is-Concat!24959 lt!2337963)))))

(declare-fun e!3761794 () Bool)

(assert (=> b!6175640 (= e!3761794 e!3761793)))

(declare-fun c!1113190 () Bool)

(declare-fun c!1113189 () Bool)

(declare-fun call!515389 () Bool)

(declare-fun bm!515382 () Bool)

(assert (=> bm!515382 (= call!515389 (validRegex!7850 (ite c!1113189 (reg!16443 lt!2337963) (ite c!1113190 (regOne!32741 lt!2337963) (regOne!32740 lt!2337963)))))))

(declare-fun b!6175641 () Bool)

(declare-fun e!3761795 () Bool)

(declare-fun e!3761789 () Bool)

(assert (=> b!6175641 (= e!3761795 e!3761789)))

(assert (=> b!6175641 (= c!1113189 (is-Star!16114 lt!2337963))))

(declare-fun b!6175642 () Bool)

(declare-fun e!3761790 () Bool)

(assert (=> b!6175642 (= e!3761793 e!3761790)))

(declare-fun res!2556050 () Bool)

(assert (=> b!6175642 (=> (not res!2556050) (not e!3761790))))

(declare-fun call!515388 () Bool)

(assert (=> b!6175642 (= res!2556050 call!515388)))

(declare-fun bm!515383 () Bool)

(declare-fun call!515387 () Bool)

(assert (=> bm!515383 (= call!515387 (validRegex!7850 (ite c!1113190 (regTwo!32741 lt!2337963) (regTwo!32740 lt!2337963))))))

(declare-fun b!6175643 () Bool)

(assert (=> b!6175643 (= e!3761789 e!3761794)))

(assert (=> b!6175643 (= c!1113190 (is-Union!16114 lt!2337963))))

(declare-fun b!6175644 () Bool)

(declare-fun res!2556048 () Bool)

(declare-fun e!3761791 () Bool)

(assert (=> b!6175644 (=> (not res!2556048) (not e!3761791))))

(assert (=> b!6175644 (= res!2556048 call!515388)))

(assert (=> b!6175644 (= e!3761794 e!3761791)))

(declare-fun b!6175645 () Bool)

(assert (=> b!6175645 (= e!3761791 call!515387)))

(declare-fun b!6175646 () Bool)

(assert (=> b!6175646 (= e!3761790 call!515387)))

(declare-fun d!1935771 () Bool)

(declare-fun res!2556049 () Bool)

(assert (=> d!1935771 (=> res!2556049 e!3761795)))

(assert (=> d!1935771 (= res!2556049 (is-ElementMatch!16114 lt!2337963))))

(assert (=> d!1935771 (= (validRegex!7850 lt!2337963) e!3761795)))

(declare-fun b!6175647 () Bool)

(declare-fun e!3761792 () Bool)

(assert (=> b!6175647 (= e!3761789 e!3761792)))

(declare-fun res!2556046 () Bool)

(assert (=> b!6175647 (= res!2556046 (not (nullable!6107 (reg!16443 lt!2337963))))))

(assert (=> b!6175647 (=> (not res!2556046) (not e!3761792))))

(declare-fun bm!515384 () Bool)

(assert (=> bm!515384 (= call!515388 call!515389)))

(declare-fun b!6175648 () Bool)

(assert (=> b!6175648 (= e!3761792 call!515389)))

(assert (= (and d!1935771 (not res!2556049)) b!6175641))

(assert (= (and b!6175641 c!1113189) b!6175647))

(assert (= (and b!6175641 (not c!1113189)) b!6175643))

(assert (= (and b!6175647 res!2556046) b!6175648))

(assert (= (and b!6175643 c!1113190) b!6175644))

(assert (= (and b!6175643 (not c!1113190)) b!6175640))

(assert (= (and b!6175644 res!2556048) b!6175645))

(assert (= (and b!6175640 (not res!2556047)) b!6175642))

(assert (= (and b!6175642 res!2556050) b!6175646))

(assert (= (or b!6175645 b!6175646) bm!515383))

(assert (= (or b!6175644 b!6175642) bm!515384))

(assert (= (or b!6175648 bm!515384) bm!515382))

(declare-fun m!7011852 () Bool)

(assert (=> bm!515382 m!7011852))

(declare-fun m!7011854 () Bool)

(assert (=> bm!515383 m!7011854))

(declare-fun m!7011856 () Bool)

(assert (=> b!6175647 m!7011856))

(assert (=> d!1935297 d!1935771))

(assert (=> d!1935297 d!1935291))

(assert (=> d!1935297 d!1935293))

(declare-fun bm!515385 () Bool)

(declare-fun call!515394 () List!64641)

(declare-fun call!515391 () List!64641)

(assert (=> bm!515385 (= call!515394 call!515391)))

(declare-fun b!6175649 () Bool)

(declare-fun e!3761797 () (Set Context!10996))

(assert (=> b!6175649 (= e!3761797 (set.insert (ite (or c!1112883 c!1112879) lt!2337799 (Context!10997 call!515210)) (as set.empty (Set Context!10996))))))

(declare-fun b!6175651 () Bool)

(declare-fun e!3761798 () Bool)

(assert (=> b!6175651 (= e!3761798 (nullable!6107 (regOne!32740 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292)))))))))))

(declare-fun b!6175652 () Bool)

(declare-fun e!3761800 () (Set Context!10996))

(declare-fun call!515395 () (Set Context!10996))

(assert (=> b!6175652 (= e!3761800 call!515395)))

(declare-fun b!6175653 () Bool)

(declare-fun e!3761796 () (Set Context!10996))

(declare-fun e!3761799 () (Set Context!10996))

(assert (=> b!6175653 (= e!3761796 e!3761799)))

(declare-fun c!1113194 () Bool)

(assert (=> b!6175653 (= c!1113194 (is-Concat!24959 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292))))))))))

(declare-fun bm!515386 () Bool)

(declare-fun c!1113191 () Bool)

(assert (=> bm!515386 (= call!515391 ($colon$colon!1989 (exprs!5998 (ite (or c!1112883 c!1112879) lt!2337799 (Context!10997 call!515210))) (ite (or c!1113191 c!1113194) (regTwo!32740 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292))))))) (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292)))))))))))

(declare-fun b!6175654 () Bool)

(assert (=> b!6175654 (= e!3761799 call!515395)))

(declare-fun b!6175655 () Bool)

(declare-fun e!3761801 () (Set Context!10996))

(declare-fun call!515392 () (Set Context!10996))

(declare-fun call!515390 () (Set Context!10996))

(assert (=> b!6175655 (= e!3761801 (set.union call!515392 call!515390))))

(declare-fun b!6175656 () Bool)

(assert (=> b!6175656 (= e!3761797 e!3761801)))

(declare-fun c!1113195 () Bool)

(assert (=> b!6175656 (= c!1113195 (is-Union!16114 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292))))))))))

(declare-fun b!6175657 () Bool)

(declare-fun call!515393 () (Set Context!10996))

(assert (=> b!6175657 (= e!3761796 (set.union call!515392 call!515393))))

(declare-fun bm!515387 () Bool)

(assert (=> bm!515387 (= call!515390 (derivationStepZipperDown!1362 (ite c!1113195 (regTwo!32741 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292))))))) (ite c!1113191 (regTwo!32740 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292))))))) (ite c!1113194 (regOne!32740 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292))))))) (reg!16443 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292)))))))))) (ite (or c!1113195 c!1113191) (ite (or c!1112883 c!1112879) lt!2337799 (Context!10997 call!515210)) (Context!10997 call!515394)) (h!70967 s!2326)))))

(declare-fun c!1113192 () Bool)

(declare-fun b!6175658 () Bool)

(assert (=> b!6175658 (= c!1113192 (is-Star!16114 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292))))))))))

(assert (=> b!6175658 (= e!3761799 e!3761800)))

(declare-fun bm!515388 () Bool)

(assert (=> bm!515388 (= call!515393 call!515390)))

(declare-fun bm!515389 () Bool)

(assert (=> bm!515389 (= call!515395 call!515393)))

(declare-fun b!6175650 () Bool)

(assert (=> b!6175650 (= c!1113191 e!3761798)))

(declare-fun res!2556051 () Bool)

(assert (=> b!6175650 (=> (not res!2556051) (not e!3761798))))

(assert (=> b!6175650 (= res!2556051 (is-Concat!24959 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292))))))))))

(assert (=> b!6175650 (= e!3761801 e!3761796)))

(declare-fun d!1935773 () Bool)

(declare-fun c!1113193 () Bool)

(assert (=> d!1935773 (= c!1113193 (and (is-ElementMatch!16114 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292))))))) (= (c!1112765 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292))))))) (h!70967 s!2326))))))

(assert (=> d!1935773 (= (derivationStepZipperDown!1362 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292)))))) (ite (or c!1112883 c!1112879) lt!2337799 (Context!10997 call!515210)) (h!70967 s!2326)) e!3761797)))

(declare-fun bm!515390 () Bool)

(assert (=> bm!515390 (= call!515392 (derivationStepZipperDown!1362 (ite c!1113195 (regOne!32741 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292))))))) (regOne!32740 (ite c!1112883 (regTwo!32741 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112879 (regTwo!32740 (regOne!32741 (regOne!32740 r!7292))) (ite c!1112882 (regOne!32740 (regOne!32741 (regOne!32740 r!7292))) (reg!16443 (regOne!32741 (regOne!32740 r!7292)))))))) (ite c!1113195 (ite (or c!1112883 c!1112879) lt!2337799 (Context!10997 call!515210)) (Context!10997 call!515391)) (h!70967 s!2326)))))

(declare-fun b!6175659 () Bool)

(assert (=> b!6175659 (= e!3761800 (as set.empty (Set Context!10996)))))

(assert (= (and d!1935773 c!1113193) b!6175649))

(assert (= (and d!1935773 (not c!1113193)) b!6175656))

(assert (= (and b!6175656 c!1113195) b!6175655))

(assert (= (and b!6175656 (not c!1113195)) b!6175650))

(assert (= (and b!6175650 res!2556051) b!6175651))

(assert (= (and b!6175650 c!1113191) b!6175657))

(assert (= (and b!6175650 (not c!1113191)) b!6175653))

(assert (= (and b!6175653 c!1113194) b!6175654))

(assert (= (and b!6175653 (not c!1113194)) b!6175658))

(assert (= (and b!6175658 c!1113192) b!6175652))

(assert (= (and b!6175658 (not c!1113192)) b!6175659))

(assert (= (or b!6175654 b!6175652) bm!515385))

(assert (= (or b!6175654 b!6175652) bm!515389))

(assert (= (or b!6175657 bm!515385) bm!515386))

(assert (= (or b!6175657 bm!515389) bm!515388))

(assert (= (or b!6175655 bm!515388) bm!515387))

(assert (= (or b!6175655 b!6175657) bm!515390))

(declare-fun m!7011858 () Bool)

(assert (=> b!6175649 m!7011858))

(declare-fun m!7011860 () Bool)

(assert (=> b!6175651 m!7011860))

(declare-fun m!7011862 () Bool)

(assert (=> bm!515387 m!7011862))

(declare-fun m!7011864 () Bool)

(assert (=> bm!515386 m!7011864))

(declare-fun m!7011866 () Bool)

(assert (=> bm!515390 m!7011866))

(assert (=> bm!515203 d!1935773))

(assert (=> bs!1531128 d!1935317))

(assert (=> d!1935351 d!1935515))

(assert (=> d!1935351 d!1935703))

(declare-fun d!1935775 () Bool)

(declare-fun c!1113196 () Bool)

(assert (=> d!1935775 (= c!1113196 (isEmpty!36498 (tail!11830 s!2326)))))

(declare-fun e!3761802 () Bool)

(assert (=> d!1935775 (= (matchZipper!2126 (derivationStepZipper!2085 z!1189 (head!12745 s!2326)) (tail!11830 s!2326)) e!3761802)))

(declare-fun b!6175660 () Bool)

(assert (=> b!6175660 (= e!3761802 (nullableZipper!1893 (derivationStepZipper!2085 z!1189 (head!12745 s!2326))))))

(declare-fun b!6175661 () Bool)

(assert (=> b!6175661 (= e!3761802 (matchZipper!2126 (derivationStepZipper!2085 (derivationStepZipper!2085 z!1189 (head!12745 s!2326)) (head!12745 (tail!11830 s!2326))) (tail!11830 (tail!11830 s!2326))))))

(assert (= (and d!1935775 c!1113196) b!6175660))

(assert (= (and d!1935775 (not c!1113196)) b!6175661))

(assert (=> d!1935775 m!7010634))

(assert (=> d!1935775 m!7010854))

(assert (=> b!6175660 m!7010828))

(declare-fun m!7011868 () Bool)

(assert (=> b!6175660 m!7011868))

(assert (=> b!6175661 m!7010634))

(assert (=> b!6175661 m!7011308))

(assert (=> b!6175661 m!7010828))

(assert (=> b!6175661 m!7011308))

(declare-fun m!7011870 () Bool)

(assert (=> b!6175661 m!7011870))

(assert (=> b!6175661 m!7010634))

(assert (=> b!6175661 m!7011312))

(assert (=> b!6175661 m!7011870))

(assert (=> b!6175661 m!7011312))

(declare-fun m!7011872 () Bool)

(assert (=> b!6175661 m!7011872))

(assert (=> b!6174489 d!1935775))

(declare-fun bs!1531377 () Bool)

(declare-fun d!1935777 () Bool)

(assert (= bs!1531377 (and d!1935777 d!1935619)))

(declare-fun lambda!337142 () Int)

(assert (=> bs!1531377 (= (= (head!12745 s!2326) (head!12745 (t!378147 s!2326))) (= lambda!337142 lambda!337122))))

(declare-fun bs!1531378 () Bool)

(assert (= bs!1531378 (and d!1935777 d!1935643)))

(assert (=> bs!1531378 (= (= (head!12745 s!2326) (head!12745 (t!378147 s!2326))) (= lambda!337142 lambda!337125))))

(declare-fun bs!1531379 () Bool)

(assert (= bs!1531379 (and d!1935777 d!1935669)))

(assert (=> bs!1531379 (= (= (head!12745 s!2326) (head!12745 (t!378147 s!2326))) (= lambda!337142 lambda!337127))))

(declare-fun bs!1531380 () Bool)

(assert (= bs!1531380 (and d!1935777 d!1935543)))

(assert (=> bs!1531380 (= (= (head!12745 s!2326) (head!12745 (t!378147 s!2326))) (= lambda!337142 lambda!337115))))

(declare-fun bs!1531381 () Bool)

(assert (= bs!1531381 (and d!1935777 d!1935573)))

(assert (=> bs!1531381 (= (= (head!12745 s!2326) (head!12745 (t!378147 s!2326))) (= lambda!337142 lambda!337118))))

(declare-fun bs!1531382 () Bool)

(assert (= bs!1531382 (and d!1935777 d!1935625)))

(assert (=> bs!1531382 (= (= (head!12745 s!2326) (head!12745 (t!378147 s!2326))) (= lambda!337142 lambda!337123))))

(declare-fun bs!1531383 () Bool)

(assert (= bs!1531383 (and d!1935777 d!1935629)))

(assert (=> bs!1531383 (= (= (head!12745 s!2326) (head!12745 (t!378147 s!2326))) (= lambda!337142 lambda!337124))))

(declare-fun bs!1531384 () Bool)

(assert (= bs!1531384 (and d!1935777 d!1935499)))

(assert (=> bs!1531384 (= lambda!337142 lambda!337107)))

(declare-fun bs!1531385 () Bool)

(assert (= bs!1531385 (and d!1935777 b!6174141)))

(assert (=> bs!1531385 (= (= (head!12745 s!2326) (h!70967 s!2326)) (= lambda!337142 lambda!337028))))

(declare-fun bs!1531386 () Bool)

(assert (= bs!1531386 (and d!1935777 d!1935507)))

(assert (=> bs!1531386 (= lambda!337142 lambda!337108)))

(assert (=> d!1935777 true))

(assert (=> d!1935777 (= (derivationStepZipper!2085 z!1189 (head!12745 s!2326)) (flatMap!1619 z!1189 lambda!337142))))

(declare-fun bs!1531387 () Bool)

(assert (= bs!1531387 d!1935777))

(declare-fun m!7011874 () Bool)

(assert (=> bs!1531387 m!7011874))

(assert (=> b!6174489 d!1935777))

(assert (=> b!6174489 d!1935501))

(assert (=> b!6174489 d!1935503))

(declare-fun bs!1531388 () Bool)

(declare-fun d!1935779 () Bool)

(assert (= bs!1531388 (and d!1935779 d!1935761)))

(declare-fun lambda!337143 () Int)

(assert (=> bs!1531388 (= lambda!337143 lambda!337141)))

(declare-fun bs!1531389 () Bool)

(assert (= bs!1531389 (and d!1935779 d!1935509)))

(assert (=> bs!1531389 (= lambda!337143 lambda!337111)))

(declare-fun bs!1531390 () Bool)

(assert (= bs!1531390 (and d!1935779 d!1935517)))

(assert (=> bs!1531390 (= lambda!337143 lambda!337112)))

(declare-fun bs!1531391 () Bool)

(assert (= bs!1531391 (and d!1935779 d!1935555)))

(assert (=> bs!1531391 (= lambda!337143 lambda!337116)))

(declare-fun bs!1531392 () Bool)

(assert (= bs!1531392 (and d!1935779 d!1935561)))

(assert (=> bs!1531392 (= lambda!337143 lambda!337117)))

(declare-fun bs!1531393 () Bool)

(assert (= bs!1531393 (and d!1935779 d!1935709)))

(assert (=> bs!1531393 (= lambda!337143 lambda!337131)))

(declare-fun bs!1531394 () Bool)

(assert (= bs!1531394 (and d!1935779 d!1935723)))

(assert (=> bs!1531394 (= lambda!337143 lambda!337138)))

(declare-fun bs!1531395 () Bool)

(assert (= bs!1531395 (and d!1935779 d!1935527)))

(assert (=> bs!1531395 (= lambda!337143 lambda!337113)))

(assert (=> d!1935779 (= (nullableZipper!1893 lt!2337800) (exists!2457 lt!2337800 lambda!337143))))

(declare-fun bs!1531396 () Bool)

(assert (= bs!1531396 d!1935779))

(declare-fun m!7011876 () Bool)

(assert (=> bs!1531396 m!7011876))

(assert (=> b!6174490 d!1935779))

(declare-fun d!1935781 () Bool)

(declare-fun c!1113197 () Bool)

(assert (=> d!1935781 (= c!1113197 (isEmpty!36498 (tail!11830 (t!378147 s!2326))))))

(declare-fun e!3761803 () Bool)

(assert (=> d!1935781 (= (matchZipper!2126 (derivationStepZipper!2085 lt!2337795 (head!12745 (t!378147 s!2326))) (tail!11830 (t!378147 s!2326))) e!3761803)))

(declare-fun b!6175662 () Bool)

(assert (=> b!6175662 (= e!3761803 (nullableZipper!1893 (derivationStepZipper!2085 lt!2337795 (head!12745 (t!378147 s!2326)))))))

(declare-fun b!6175663 () Bool)

(assert (=> b!6175663 (= e!3761803 (matchZipper!2126 (derivationStepZipper!2085 (derivationStepZipper!2085 lt!2337795 (head!12745 (t!378147 s!2326))) (head!12745 (tail!11830 (t!378147 s!2326)))) (tail!11830 (tail!11830 (t!378147 s!2326)))))))

(assert (= (and d!1935781 c!1113197) b!6175662))

(assert (= (and d!1935781 (not c!1113197)) b!6175663))

(assert (=> d!1935781 m!7010696))

(assert (=> d!1935781 m!7011396))

(assert (=> b!6175662 m!7010694))

(declare-fun m!7011878 () Bool)

(assert (=> b!6175662 m!7011878))

(assert (=> b!6175663 m!7010696))

(assert (=> b!6175663 m!7011400))

(assert (=> b!6175663 m!7010694))

(assert (=> b!6175663 m!7011400))

(declare-fun m!7011880 () Bool)

(assert (=> b!6175663 m!7011880))

(assert (=> b!6175663 m!7010696))

(assert (=> b!6175663 m!7011404))

(assert (=> b!6175663 m!7011880))

(assert (=> b!6175663 m!7011404))

(declare-fun m!7011882 () Bool)

(assert (=> b!6175663 m!7011882))

(assert (=> b!6174344 d!1935781))

(declare-fun bs!1531397 () Bool)

(declare-fun d!1935783 () Bool)

(assert (= bs!1531397 (and d!1935783 d!1935619)))

(declare-fun lambda!337144 () Int)

(assert (=> bs!1531397 (= lambda!337144 lambda!337122)))

(declare-fun bs!1531398 () Bool)

(assert (= bs!1531398 (and d!1935783 d!1935643)))

(assert (=> bs!1531398 (= lambda!337144 lambda!337125)))

(declare-fun bs!1531399 () Bool)

(assert (= bs!1531399 (and d!1935783 d!1935669)))

(assert (=> bs!1531399 (= lambda!337144 lambda!337127)))

(declare-fun bs!1531400 () Bool)

(assert (= bs!1531400 (and d!1935783 d!1935777)))

(assert (=> bs!1531400 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337144 lambda!337142))))

(declare-fun bs!1531401 () Bool)

(assert (= bs!1531401 (and d!1935783 d!1935543)))

(assert (=> bs!1531401 (= lambda!337144 lambda!337115)))

(declare-fun bs!1531402 () Bool)

(assert (= bs!1531402 (and d!1935783 d!1935573)))

(assert (=> bs!1531402 (= lambda!337144 lambda!337118)))

(declare-fun bs!1531403 () Bool)

(assert (= bs!1531403 (and d!1935783 d!1935625)))

(assert (=> bs!1531403 (= lambda!337144 lambda!337123)))

(declare-fun bs!1531404 () Bool)

(assert (= bs!1531404 (and d!1935783 d!1935629)))

(assert (=> bs!1531404 (= lambda!337144 lambda!337124)))

(declare-fun bs!1531405 () Bool)

(assert (= bs!1531405 (and d!1935783 d!1935499)))

(assert (=> bs!1531405 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337144 lambda!337107))))

(declare-fun bs!1531406 () Bool)

(assert (= bs!1531406 (and d!1935783 b!6174141)))

(assert (=> bs!1531406 (= (= (head!12745 (t!378147 s!2326)) (h!70967 s!2326)) (= lambda!337144 lambda!337028))))

(declare-fun bs!1531407 () Bool)

(assert (= bs!1531407 (and d!1935783 d!1935507)))

(assert (=> bs!1531407 (= (= (head!12745 (t!378147 s!2326)) (head!12745 s!2326)) (= lambda!337144 lambda!337108))))

(assert (=> d!1935783 true))

(assert (=> d!1935783 (= (derivationStepZipper!2085 lt!2337795 (head!12745 (t!378147 s!2326))) (flatMap!1619 lt!2337795 lambda!337144))))

(declare-fun bs!1531408 () Bool)

(assert (= bs!1531408 d!1935783))

(declare-fun m!7011884 () Bool)

(assert (=> bs!1531408 m!7011884))

(assert (=> b!6174344 d!1935783))

(assert (=> b!6174344 d!1935545))

(assert (=> b!6174344 d!1935547))

(assert (=> d!1935319 d!1935515))

(assert (=> b!6174565 d!1935569))

(assert (=> b!6174565 d!1935503))

(declare-fun bs!1531409 () Bool)

(declare-fun d!1935785 () Bool)

(assert (= bs!1531409 (and d!1935785 d!1935337)))

(declare-fun lambda!337145 () Int)

(assert (=> bs!1531409 (= lambda!337145 lambda!337071)))

(declare-fun bs!1531410 () Bool)

(assert (= bs!1531410 (and d!1935785 d!1935291)))

(assert (=> bs!1531410 (= lambda!337145 lambda!337058)))

(declare-fun bs!1531411 () Bool)

(assert (= bs!1531411 (and d!1935785 d!1935655)))

(assert (=> bs!1531411 (= lambda!337145 lambda!337126)))

(declare-fun bs!1531412 () Bool)

(assert (= bs!1531412 (and d!1935785 d!1935591)))

(assert (=> bs!1531412 (= lambda!337145 lambda!337119)))

(declare-fun bs!1531413 () Bool)

(assert (= bs!1531413 (and d!1935785 d!1935293)))

(assert (=> bs!1531413 (= lambda!337145 lambda!337061)))

(declare-fun bs!1531414 () Bool)

(assert (= bs!1531414 (and d!1935785 d!1935533)))

(assert (=> bs!1531414 (= lambda!337145 lambda!337114)))

(declare-fun bs!1531415 () Bool)

(assert (= bs!1531415 (and d!1935785 d!1935355)))

(assert (=> bs!1531415 (= lambda!337145 lambda!337073)))

(declare-fun bs!1531416 () Bool)

(assert (= bs!1531416 (and d!1935785 d!1935485)))

(assert (=> bs!1531416 (= lambda!337145 lambda!337104)))

(declare-fun bs!1531417 () Bool)

(assert (= bs!1531417 (and d!1935785 d!1935287)))

(assert (=> bs!1531417 (= lambda!337145 lambda!337055)))

(declare-fun bs!1531418 () Bool)

(assert (= bs!1531418 (and d!1935785 d!1935301)))

(assert (=> bs!1531418 (= lambda!337145 lambda!337062)))

(declare-fun bs!1531419 () Bool)

(assert (= bs!1531419 (and d!1935785 d!1935349)))

(assert (=> bs!1531419 (= lambda!337145 lambda!337072)))

(declare-fun b!6175664 () Bool)

(declare-fun e!3761809 () Bool)

(declare-fun lt!2338073 () Regex!16114)

(assert (=> b!6175664 (= e!3761809 (= lt!2338073 (head!12746 (t!378145 (exprs!5998 (h!70966 zl!343))))))))

(declare-fun b!6175665 () Bool)

(declare-fun e!3761806 () Bool)

(assert (=> b!6175665 (= e!3761806 (isEmptyExpr!1529 lt!2338073))))

(declare-fun b!6175666 () Bool)

(declare-fun e!3761808 () Regex!16114)

(declare-fun e!3761805 () Regex!16114)

(assert (=> b!6175666 (= e!3761808 e!3761805)))

(declare-fun c!1113201 () Bool)

(assert (=> b!6175666 (= c!1113201 (is-Cons!64517 (t!378145 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun e!3761807 () Bool)

(assert (=> d!1935785 e!3761807))

(declare-fun res!2556052 () Bool)

(assert (=> d!1935785 (=> (not res!2556052) (not e!3761807))))

(assert (=> d!1935785 (= res!2556052 (validRegex!7850 lt!2338073))))

(assert (=> d!1935785 (= lt!2338073 e!3761808)))

(declare-fun c!1113199 () Bool)

(declare-fun e!3761804 () Bool)

(assert (=> d!1935785 (= c!1113199 e!3761804)))

(declare-fun res!2556053 () Bool)

(assert (=> d!1935785 (=> (not res!2556053) (not e!3761804))))

(assert (=> d!1935785 (= res!2556053 (is-Cons!64517 (t!378145 (exprs!5998 (h!70966 zl!343)))))))

(assert (=> d!1935785 (forall!15233 (t!378145 (exprs!5998 (h!70966 zl!343))) lambda!337145)))

(assert (=> d!1935785 (= (generalisedConcat!1711 (t!378145 (exprs!5998 (h!70966 zl!343)))) lt!2338073)))

(declare-fun b!6175667 () Bool)

(assert (=> b!6175667 (= e!3761808 (h!70965 (t!378145 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun b!6175668 () Bool)

(assert (=> b!6175668 (= e!3761804 (isEmpty!36495 (t!378145 (t!378145 (exprs!5998 (h!70966 zl!343))))))))

(declare-fun b!6175669 () Bool)

(assert (=> b!6175669 (= e!3761805 EmptyExpr!16114)))

(declare-fun b!6175670 () Bool)

(assert (=> b!6175670 (= e!3761809 (isConcat!1052 lt!2338073))))

(declare-fun b!6175671 () Bool)

(assert (=> b!6175671 (= e!3761805 (Concat!24959 (h!70965 (t!378145 (exprs!5998 (h!70966 zl!343)))) (generalisedConcat!1711 (t!378145 (t!378145 (exprs!5998 (h!70966 zl!343)))))))))

(declare-fun b!6175672 () Bool)

(assert (=> b!6175672 (= e!3761806 e!3761809)))

(declare-fun c!1113200 () Bool)

(assert (=> b!6175672 (= c!1113200 (isEmpty!36495 (tail!11831 (t!378145 (exprs!5998 (h!70966 zl!343))))))))

(declare-fun b!6175673 () Bool)

(assert (=> b!6175673 (= e!3761807 e!3761806)))

(declare-fun c!1113198 () Bool)

(assert (=> b!6175673 (= c!1113198 (isEmpty!36495 (t!378145 (exprs!5998 (h!70966 zl!343)))))))

(assert (= (and d!1935785 res!2556053) b!6175668))

(assert (= (and d!1935785 c!1113199) b!6175667))

(assert (= (and d!1935785 (not c!1113199)) b!6175666))

(assert (= (and b!6175666 c!1113201) b!6175671))

(assert (= (and b!6175666 (not c!1113201)) b!6175669))

(assert (= (and d!1935785 res!2556052) b!6175673))

(assert (= (and b!6175673 c!1113198) b!6175665))

(assert (= (and b!6175673 (not c!1113198)) b!6175672))

(assert (= (and b!6175672 c!1113200) b!6175664))

(assert (= (and b!6175672 (not c!1113200)) b!6175670))

(declare-fun m!7011886 () Bool)

(assert (=> b!6175670 m!7011886))

(declare-fun m!7011888 () Bool)

(assert (=> d!1935785 m!7011888))

(declare-fun m!7011890 () Bool)

(assert (=> d!1935785 m!7011890))

(declare-fun m!7011892 () Bool)

(assert (=> b!6175668 m!7011892))

(assert (=> b!6175673 m!7010392))

(declare-fun m!7011894 () Bool)

(assert (=> b!6175664 m!7011894))

(declare-fun m!7011896 () Bool)

(assert (=> b!6175665 m!7011896))

(declare-fun m!7011898 () Bool)

(assert (=> b!6175671 m!7011898))

(declare-fun m!7011900 () Bool)

(assert (=> b!6175672 m!7011900))

(assert (=> b!6175672 m!7011900))

(declare-fun m!7011902 () Bool)

(assert (=> b!6175672 m!7011902))

(assert (=> b!6174628 d!1935785))

(declare-fun d!1935787 () Bool)

(assert (=> d!1935787 true))

(declare-fun setRes!41875 () Bool)

(assert (=> d!1935787 setRes!41875))

(declare-fun condSetEmpty!41875 () Bool)

(declare-fun res!2556054 () (Set Context!10996))

(assert (=> d!1935787 (= condSetEmpty!41875 (= res!2556054 (as set.empty (Set Context!10996))))))

(assert (=> d!1935787 (= (choose!45886 lt!2337800 lambda!337028) res!2556054)))

(declare-fun setIsEmpty!41875 () Bool)

(assert (=> setIsEmpty!41875 setRes!41875))

(declare-fun tp!1723950 () Bool)

(declare-fun e!3761810 () Bool)

(declare-fun setElem!41875 () Context!10996)

(declare-fun setNonEmpty!41875 () Bool)

(assert (=> setNonEmpty!41875 (= setRes!41875 (and tp!1723950 (inv!83533 setElem!41875) e!3761810))))

(declare-fun setRest!41875 () (Set Context!10996))

(assert (=> setNonEmpty!41875 (= res!2556054 (set.union (set.insert setElem!41875 (as set.empty (Set Context!10996))) setRest!41875))))

(declare-fun b!6175674 () Bool)

(declare-fun tp!1723949 () Bool)

(assert (=> b!6175674 (= e!3761810 tp!1723949)))

(assert (= (and d!1935787 condSetEmpty!41875) setIsEmpty!41875))

(assert (= (and d!1935787 (not condSetEmpty!41875)) setNonEmpty!41875))

(assert (= setNonEmpty!41875 b!6175674))

(declare-fun m!7011904 () Bool)

(assert (=> setNonEmpty!41875 m!7011904))

(assert (=> d!1935307 d!1935787))

(declare-fun bs!1531420 () Bool)

(declare-fun d!1935789 () Bool)

(assert (= bs!1531420 (and d!1935789 d!1935337)))

(declare-fun lambda!337146 () Int)

(assert (=> bs!1531420 (= lambda!337146 lambda!337071)))

(declare-fun bs!1531421 () Bool)

(assert (= bs!1531421 (and d!1935789 d!1935291)))

(assert (=> bs!1531421 (= lambda!337146 lambda!337058)))

(declare-fun bs!1531422 () Bool)

(assert (= bs!1531422 (and d!1935789 d!1935655)))

(assert (=> bs!1531422 (= lambda!337146 lambda!337126)))

(declare-fun bs!1531423 () Bool)

(assert (= bs!1531423 (and d!1935789 d!1935591)))

(assert (=> bs!1531423 (= lambda!337146 lambda!337119)))

(declare-fun bs!1531424 () Bool)

(assert (= bs!1531424 (and d!1935789 d!1935293)))

(assert (=> bs!1531424 (= lambda!337146 lambda!337061)))

(declare-fun bs!1531425 () Bool)

(assert (= bs!1531425 (and d!1935789 d!1935533)))

(assert (=> bs!1531425 (= lambda!337146 lambda!337114)))

(declare-fun bs!1531426 () Bool)

(assert (= bs!1531426 (and d!1935789 d!1935355)))

(assert (=> bs!1531426 (= lambda!337146 lambda!337073)))

(declare-fun bs!1531427 () Bool)

(assert (= bs!1531427 (and d!1935789 d!1935485)))

(assert (=> bs!1531427 (= lambda!337146 lambda!337104)))

(declare-fun bs!1531428 () Bool)

(assert (= bs!1531428 (and d!1935789 d!1935287)))

(assert (=> bs!1531428 (= lambda!337146 lambda!337055)))

(declare-fun bs!1531429 () Bool)

(assert (= bs!1531429 (and d!1935789 d!1935785)))

(assert (=> bs!1531429 (= lambda!337146 lambda!337145)))

(declare-fun bs!1531430 () Bool)

(assert (= bs!1531430 (and d!1935789 d!1935301)))

(assert (=> bs!1531430 (= lambda!337146 lambda!337062)))

(declare-fun bs!1531431 () Bool)

(assert (= bs!1531431 (and d!1935789 d!1935349)))

(assert (=> bs!1531431 (= lambda!337146 lambda!337072)))

(declare-fun b!6175675 () Bool)

(declare-fun e!3761816 () Bool)

(declare-fun lt!2338074 () Regex!16114)

(assert (=> b!6175675 (= e!3761816 (= lt!2338074 (head!12746 (t!378145 lt!2337804))))))

(declare-fun b!6175676 () Bool)

(declare-fun e!3761813 () Bool)

(assert (=> b!6175676 (= e!3761813 (isEmptyExpr!1529 lt!2338074))))

(declare-fun b!6175677 () Bool)

(declare-fun e!3761815 () Regex!16114)

(declare-fun e!3761812 () Regex!16114)

(assert (=> b!6175677 (= e!3761815 e!3761812)))

(declare-fun c!1113205 () Bool)

(assert (=> b!6175677 (= c!1113205 (is-Cons!64517 (t!378145 lt!2337804)))))

(declare-fun e!3761814 () Bool)

(assert (=> d!1935789 e!3761814))

(declare-fun res!2556055 () Bool)

(assert (=> d!1935789 (=> (not res!2556055) (not e!3761814))))

(assert (=> d!1935789 (= res!2556055 (validRegex!7850 lt!2338074))))

(assert (=> d!1935789 (= lt!2338074 e!3761815)))

(declare-fun c!1113203 () Bool)

(declare-fun e!3761811 () Bool)

(assert (=> d!1935789 (= c!1113203 e!3761811)))

(declare-fun res!2556056 () Bool)

(assert (=> d!1935789 (=> (not res!2556056) (not e!3761811))))

(assert (=> d!1935789 (= res!2556056 (is-Cons!64517 (t!378145 lt!2337804)))))

(assert (=> d!1935789 (forall!15233 (t!378145 lt!2337804) lambda!337146)))

(assert (=> d!1935789 (= (generalisedConcat!1711 (t!378145 lt!2337804)) lt!2338074)))

(declare-fun b!6175678 () Bool)

(assert (=> b!6175678 (= e!3761815 (h!70965 (t!378145 lt!2337804)))))

(declare-fun b!6175679 () Bool)

(assert (=> b!6175679 (= e!3761811 (isEmpty!36495 (t!378145 (t!378145 lt!2337804))))))

(declare-fun b!6175680 () Bool)

(assert (=> b!6175680 (= e!3761812 EmptyExpr!16114)))

(declare-fun b!6175681 () Bool)

(assert (=> b!6175681 (= e!3761816 (isConcat!1052 lt!2338074))))

(declare-fun b!6175682 () Bool)

(assert (=> b!6175682 (= e!3761812 (Concat!24959 (h!70965 (t!378145 lt!2337804)) (generalisedConcat!1711 (t!378145 (t!378145 lt!2337804)))))))

(declare-fun b!6175683 () Bool)

(assert (=> b!6175683 (= e!3761813 e!3761816)))

(declare-fun c!1113204 () Bool)

(assert (=> b!6175683 (= c!1113204 (isEmpty!36495 (tail!11831 (t!378145 lt!2337804))))))

(declare-fun b!6175684 () Bool)

(assert (=> b!6175684 (= e!3761814 e!3761813)))

(declare-fun c!1113202 () Bool)

(assert (=> b!6175684 (= c!1113202 (isEmpty!36495 (t!378145 lt!2337804)))))

(assert (= (and d!1935789 res!2556056) b!6175679))

(assert (= (and d!1935789 c!1113203) b!6175678))

(assert (= (and d!1935789 (not c!1113203)) b!6175677))

(assert (= (and b!6175677 c!1113205) b!6175682))

(assert (= (and b!6175677 (not c!1113205)) b!6175680))

(assert (= (and d!1935789 res!2556055) b!6175684))

(assert (= (and b!6175684 c!1113202) b!6175676))

(assert (= (and b!6175684 (not c!1113202)) b!6175683))

(assert (= (and b!6175683 c!1113204) b!6175675))

(assert (= (and b!6175683 (not c!1113204)) b!6175681))

(declare-fun m!7011906 () Bool)

(assert (=> b!6175681 m!7011906))

(declare-fun m!7011908 () Bool)

(assert (=> d!1935789 m!7011908))

(declare-fun m!7011910 () Bool)

(assert (=> d!1935789 m!7011910))

(declare-fun m!7011912 () Bool)

(assert (=> b!6175679 m!7011912))

(assert (=> b!6175684 m!7010940))

(declare-fun m!7011914 () Bool)

(assert (=> b!6175675 m!7011914))

(declare-fun m!7011916 () Bool)

(assert (=> b!6175676 m!7011916))

(declare-fun m!7011918 () Bool)

(assert (=> b!6175682 m!7011918))

(declare-fun m!7011920 () Bool)

(assert (=> b!6175683 m!7011920))

(assert (=> b!6175683 m!7011920))

(declare-fun m!7011922 () Bool)

(assert (=> b!6175683 m!7011922))

(assert (=> b!6174660 d!1935789))

(declare-fun b!6175685 () Bool)

(declare-fun res!2556058 () Bool)

(declare-fun e!3761821 () Bool)

(assert (=> b!6175685 (=> res!2556058 e!3761821)))

(assert (=> b!6175685 (= res!2556058 (not (is-Concat!24959 lt!2337985)))))

(declare-fun e!3761822 () Bool)

(assert (=> b!6175685 (= e!3761822 e!3761821)))

(declare-fun call!515398 () Bool)

(declare-fun c!1113206 () Bool)

(declare-fun c!1113207 () Bool)

(declare-fun bm!515391 () Bool)

(assert (=> bm!515391 (= call!515398 (validRegex!7850 (ite c!1113206 (reg!16443 lt!2337985) (ite c!1113207 (regOne!32741 lt!2337985) (regOne!32740 lt!2337985)))))))

(declare-fun b!6175686 () Bool)

(declare-fun e!3761823 () Bool)

(declare-fun e!3761817 () Bool)

(assert (=> b!6175686 (= e!3761823 e!3761817)))

(assert (=> b!6175686 (= c!1113206 (is-Star!16114 lt!2337985))))

(declare-fun b!6175687 () Bool)

(declare-fun e!3761818 () Bool)

(assert (=> b!6175687 (= e!3761821 e!3761818)))

(declare-fun res!2556061 () Bool)

(assert (=> b!6175687 (=> (not res!2556061) (not e!3761818))))

(declare-fun call!515397 () Bool)

(assert (=> b!6175687 (= res!2556061 call!515397)))

(declare-fun bm!515392 () Bool)

(declare-fun call!515396 () Bool)

(assert (=> bm!515392 (= call!515396 (validRegex!7850 (ite c!1113207 (regTwo!32741 lt!2337985) (regTwo!32740 lt!2337985))))))

(declare-fun b!6175688 () Bool)

(assert (=> b!6175688 (= e!3761817 e!3761822)))

(assert (=> b!6175688 (= c!1113207 (is-Union!16114 lt!2337985))))

(declare-fun b!6175689 () Bool)

(declare-fun res!2556059 () Bool)

(declare-fun e!3761819 () Bool)

(assert (=> b!6175689 (=> (not res!2556059) (not e!3761819))))

(assert (=> b!6175689 (= res!2556059 call!515397)))

(assert (=> b!6175689 (= e!3761822 e!3761819)))

(declare-fun b!6175690 () Bool)

(assert (=> b!6175690 (= e!3761819 call!515396)))

(declare-fun b!6175691 () Bool)

(assert (=> b!6175691 (= e!3761818 call!515396)))

(declare-fun d!1935791 () Bool)

(declare-fun res!2556060 () Bool)

(assert (=> d!1935791 (=> res!2556060 e!3761823)))

(assert (=> d!1935791 (= res!2556060 (is-ElementMatch!16114 lt!2337985))))

(assert (=> d!1935791 (= (validRegex!7850 lt!2337985) e!3761823)))

(declare-fun b!6175692 () Bool)

(declare-fun e!3761820 () Bool)

(assert (=> b!6175692 (= e!3761817 e!3761820)))

(declare-fun res!2556057 () Bool)

(assert (=> b!6175692 (= res!2556057 (not (nullable!6107 (reg!16443 lt!2337985))))))

(assert (=> b!6175692 (=> (not res!2556057) (not e!3761820))))

(declare-fun bm!515393 () Bool)

(assert (=> bm!515393 (= call!515397 call!515398)))

(declare-fun b!6175693 () Bool)

(assert (=> b!6175693 (= e!3761820 call!515398)))

(assert (= (and d!1935791 (not res!2556060)) b!6175686))

(assert (= (and b!6175686 c!1113206) b!6175692))

(assert (= (and b!6175686 (not c!1113206)) b!6175688))

(assert (= (and b!6175692 res!2556057) b!6175693))

(assert (= (and b!6175688 c!1113207) b!6175689))

(assert (= (and b!6175688 (not c!1113207)) b!6175685))

(assert (= (and b!6175689 res!2556059) b!6175690))

(assert (= (and b!6175685 (not res!2556058)) b!6175687))

(assert (= (and b!6175687 res!2556061) b!6175691))

(assert (= (or b!6175690 b!6175691) bm!515392))

(assert (= (or b!6175689 b!6175687) bm!515393))

(assert (= (or b!6175693 bm!515393) bm!515391))

(declare-fun m!7011924 () Bool)

(assert (=> bm!515391 m!7011924))

(declare-fun m!7011926 () Bool)

(assert (=> bm!515392 m!7011926))

(declare-fun m!7011928 () Bool)

(assert (=> b!6175692 m!7011928))

(assert (=> d!1935355 d!1935791))

(declare-fun d!1935793 () Bool)

(declare-fun res!2556062 () Bool)

(declare-fun e!3761824 () Bool)

(assert (=> d!1935793 (=> res!2556062 e!3761824)))

(assert (=> d!1935793 (= res!2556062 (is-Nil!64517 lt!2337804))))

(assert (=> d!1935793 (= (forall!15233 lt!2337804 lambda!337073) e!3761824)))

(declare-fun b!6175694 () Bool)

(declare-fun e!3761825 () Bool)

(assert (=> b!6175694 (= e!3761824 e!3761825)))

(declare-fun res!2556063 () Bool)

(assert (=> b!6175694 (=> (not res!2556063) (not e!3761825))))

(assert (=> b!6175694 (= res!2556063 (dynLambda!25444 lambda!337073 (h!70965 lt!2337804)))))

(declare-fun b!6175695 () Bool)

(assert (=> b!6175695 (= e!3761825 (forall!15233 (t!378145 lt!2337804) lambda!337073))))

(assert (= (and d!1935793 (not res!2556062)) b!6175694))

(assert (= (and b!6175694 res!2556063) b!6175695))

(declare-fun b_lambda!235039 () Bool)

(assert (=> (not b_lambda!235039) (not b!6175694)))

(declare-fun m!7011930 () Bool)

(assert (=> b!6175694 m!7011930))

(declare-fun m!7011932 () Bool)

(assert (=> b!6175695 m!7011932))

(assert (=> d!1935355 d!1935793))

(declare-fun b!6175696 () Bool)

(declare-fun e!3761830 () Bool)

(declare-fun lt!2338075 () Bool)

(assert (=> b!6175696 (= e!3761830 (not lt!2338075))))

(declare-fun b!6175697 () Bool)

(declare-fun e!3761826 () Bool)

(assert (=> b!6175697 (= e!3761826 (= (head!12745 s!2326) (c!1112765 (regTwo!32740 r!7292))))))

(declare-fun b!6175698 () Bool)

(declare-fun res!2556071 () Bool)

(assert (=> b!6175698 (=> (not res!2556071) (not e!3761826))))

(assert (=> b!6175698 (= res!2556071 (isEmpty!36498 (tail!11830 s!2326)))))

(declare-fun b!6175699 () Bool)

(declare-fun e!3761831 () Bool)

(assert (=> b!6175699 (= e!3761831 (matchR!8297 (derivativeStep!4831 (regTwo!32740 r!7292) (head!12745 s!2326)) (tail!11830 s!2326)))))

(declare-fun b!6175700 () Bool)

(declare-fun e!3761832 () Bool)

(declare-fun e!3761827 () Bool)

(assert (=> b!6175700 (= e!3761832 e!3761827)))

(declare-fun res!2556067 () Bool)

(assert (=> b!6175700 (=> (not res!2556067) (not e!3761827))))

(assert (=> b!6175700 (= res!2556067 (not lt!2338075))))

(declare-fun b!6175701 () Bool)

(declare-fun res!2556064 () Bool)

(assert (=> b!6175701 (=> (not res!2556064) (not e!3761826))))

(declare-fun call!515399 () Bool)

(assert (=> b!6175701 (= res!2556064 (not call!515399))))

(declare-fun b!6175702 () Bool)

(declare-fun res!2556066 () Bool)

(assert (=> b!6175702 (=> res!2556066 e!3761832)))

(assert (=> b!6175702 (= res!2556066 e!3761826)))

(declare-fun res!2556070 () Bool)

(assert (=> b!6175702 (=> (not res!2556070) (not e!3761826))))

(assert (=> b!6175702 (= res!2556070 lt!2338075)))

(declare-fun d!1935795 () Bool)

(declare-fun e!3761829 () Bool)

(assert (=> d!1935795 e!3761829))

(declare-fun c!1113208 () Bool)

(assert (=> d!1935795 (= c!1113208 (is-EmptyExpr!16114 (regTwo!32740 r!7292)))))

(assert (=> d!1935795 (= lt!2338075 e!3761831)))

(declare-fun c!1113209 () Bool)

(assert (=> d!1935795 (= c!1113209 (isEmpty!36498 s!2326))))

(assert (=> d!1935795 (validRegex!7850 (regTwo!32740 r!7292))))

(assert (=> d!1935795 (= (matchR!8297 (regTwo!32740 r!7292) s!2326) lt!2338075)))

(declare-fun bm!515394 () Bool)

(assert (=> bm!515394 (= call!515399 (isEmpty!36498 s!2326))))

(declare-fun b!6175703 () Bool)

(declare-fun res!2556068 () Bool)

(assert (=> b!6175703 (=> res!2556068 e!3761832)))

(assert (=> b!6175703 (= res!2556068 (not (is-ElementMatch!16114 (regTwo!32740 r!7292))))))

(assert (=> b!6175703 (= e!3761830 e!3761832)))

(declare-fun b!6175704 () Bool)

(assert (=> b!6175704 (= e!3761829 e!3761830)))

(declare-fun c!1113210 () Bool)

(assert (=> b!6175704 (= c!1113210 (is-EmptyLang!16114 (regTwo!32740 r!7292)))))

(declare-fun b!6175705 () Bool)

(assert (=> b!6175705 (= e!3761831 (nullable!6107 (regTwo!32740 r!7292)))))

(declare-fun b!6175706 () Bool)

(declare-fun e!3761828 () Bool)

(assert (=> b!6175706 (= e!3761827 e!3761828)))

(declare-fun res!2556069 () Bool)

(assert (=> b!6175706 (=> res!2556069 e!3761828)))

(assert (=> b!6175706 (= res!2556069 call!515399)))

(declare-fun b!6175707 () Bool)

(assert (=> b!6175707 (= e!3761828 (not (= (head!12745 s!2326) (c!1112765 (regTwo!32740 r!7292)))))))

(declare-fun b!6175708 () Bool)

(assert (=> b!6175708 (= e!3761829 (= lt!2338075 call!515399))))

(declare-fun b!6175709 () Bool)

(declare-fun res!2556065 () Bool)

(assert (=> b!6175709 (=> res!2556065 e!3761828)))

(assert (=> b!6175709 (= res!2556065 (not (isEmpty!36498 (tail!11830 s!2326))))))

(assert (= (and d!1935795 c!1113209) b!6175705))

(assert (= (and d!1935795 (not c!1113209)) b!6175699))

(assert (= (and d!1935795 c!1113208) b!6175708))

(assert (= (and d!1935795 (not c!1113208)) b!6175704))

(assert (= (and b!6175704 c!1113210) b!6175696))

(assert (= (and b!6175704 (not c!1113210)) b!6175703))

(assert (= (and b!6175703 (not res!2556068)) b!6175702))

(assert (= (and b!6175702 res!2556070) b!6175701))

(assert (= (and b!6175701 res!2556064) b!6175698))

(assert (= (and b!6175698 res!2556071) b!6175697))

(assert (= (and b!6175702 (not res!2556066)) b!6175700))

(assert (= (and b!6175700 res!2556067) b!6175706))

(assert (= (and b!6175706 (not res!2556069)) b!6175709))

(assert (= (and b!6175709 (not res!2556065)) b!6175707))

(assert (= (or b!6175708 b!6175701 b!6175706) bm!515394))

(assert (=> b!6175705 m!7011428))

(assert (=> b!6175699 m!7010630))

(assert (=> b!6175699 m!7010630))

(declare-fun m!7011934 () Bool)

(assert (=> b!6175699 m!7011934))

(assert (=> b!6175699 m!7010634))

(assert (=> b!6175699 m!7011934))

(assert (=> b!6175699 m!7010634))

(declare-fun m!7011936 () Bool)

(assert (=> b!6175699 m!7011936))

(assert (=> b!6175709 m!7010634))

(assert (=> b!6175709 m!7010634))

(assert (=> b!6175709 m!7010854))

(assert (=> b!6175707 m!7010630))

(assert (=> d!1935795 m!7010626))

(assert (=> d!1935795 m!7011442))

(assert (=> b!6175697 m!7010630))

(assert (=> bm!515394 m!7010626))

(assert (=> b!6175698 m!7010634))

(assert (=> b!6175698 m!7010634))

(assert (=> b!6175698 m!7010854))

(assert (=> b!6174318 d!1935795))

(declare-fun d!1935797 () Bool)

(assert (=> d!1935797 (= (nullable!6107 (regOne!32740 (regOne!32741 (regOne!32740 r!7292)))) (nullableFct!2069 (regOne!32740 (regOne!32741 (regOne!32740 r!7292)))))))

(declare-fun bs!1531432 () Bool)

(assert (= bs!1531432 d!1935797))

(declare-fun m!7011938 () Bool)

(assert (=> bs!1531432 m!7011938))

(assert (=> b!6174590 d!1935797))

(declare-fun bs!1531433 () Bool)

(declare-fun d!1935799 () Bool)

(assert (= bs!1531433 (and d!1935799 d!1935779)))

(declare-fun lambda!337147 () Int)

(assert (=> bs!1531433 (= lambda!337147 lambda!337143)))

(declare-fun bs!1531434 () Bool)

(assert (= bs!1531434 (and d!1935799 d!1935761)))

(assert (=> bs!1531434 (= lambda!337147 lambda!337141)))

(declare-fun bs!1531435 () Bool)

(assert (= bs!1531435 (and d!1935799 d!1935509)))

(assert (=> bs!1531435 (= lambda!337147 lambda!337111)))

(declare-fun bs!1531436 () Bool)

(assert (= bs!1531436 (and d!1935799 d!1935517)))

(assert (=> bs!1531436 (= lambda!337147 lambda!337112)))

(declare-fun bs!1531437 () Bool)

(assert (= bs!1531437 (and d!1935799 d!1935555)))

(assert (=> bs!1531437 (= lambda!337147 lambda!337116)))

(declare-fun bs!1531438 () Bool)

(assert (= bs!1531438 (and d!1935799 d!1935561)))

(assert (=> bs!1531438 (= lambda!337147 lambda!337117)))

(declare-fun bs!1531439 () Bool)

(assert (= bs!1531439 (and d!1935799 d!1935709)))

(assert (=> bs!1531439 (= lambda!337147 lambda!337131)))

(declare-fun bs!1531440 () Bool)

(assert (= bs!1531440 (and d!1935799 d!1935723)))

(assert (=> bs!1531440 (= lambda!337147 lambda!337138)))

(declare-fun bs!1531441 () Bool)

(assert (= bs!1531441 (and d!1935799 d!1935527)))

(assert (=> bs!1531441 (= lambda!337147 lambda!337113)))

(assert (=> d!1935799 (= (nullableZipper!1893 (set.union lt!2337795 lt!2337798)) (exists!2457 (set.union lt!2337795 lt!2337798) lambda!337147))))

(declare-fun bs!1531442 () Bool)

(assert (= bs!1531442 d!1935799))

(declare-fun m!7011940 () Bool)

(assert (=> bs!1531442 m!7011940))

(assert (=> b!6174345 d!1935799))

(declare-fun d!1935801 () Bool)

(assert (=> d!1935801 (= ($colon$colon!1989 (exprs!5998 lt!2337799) (ite (or c!1112874 c!1112877) (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (regTwo!32741 (regOne!32740 r!7292)))) (Cons!64517 (ite (or c!1112874 c!1112877) (regTwo!32740 (regTwo!32741 (regOne!32740 r!7292))) (regTwo!32741 (regOne!32740 r!7292))) (exprs!5998 lt!2337799)))))

(assert (=> bm!515196 d!1935801))

(assert (=> d!1935259 d!1935263))

(assert (=> d!1935259 d!1935261))

(declare-fun d!1935803 () Bool)

(declare-fun e!3761833 () Bool)

(assert (=> d!1935803 (= (matchZipper!2126 (set.union lt!2337795 lt!2337798) (t!378147 s!2326)) e!3761833)))

(declare-fun res!2556072 () Bool)

(assert (=> d!1935803 (=> res!2556072 e!3761833)))

(assert (=> d!1935803 (= res!2556072 (matchZipper!2126 lt!2337795 (t!378147 s!2326)))))

(assert (=> d!1935803 true))

(declare-fun _$48!1782 () Unit!157691)

(assert (=> d!1935803 (= (choose!45884 lt!2337795 lt!2337798 (t!378147 s!2326)) _$48!1782)))

(declare-fun b!6175710 () Bool)

(assert (=> b!6175710 (= e!3761833 (matchZipper!2126 lt!2337798 (t!378147 s!2326)))))

(assert (= (and d!1935803 (not res!2556072)) b!6175710))

(assert (=> d!1935803 m!7010498))

(assert (=> d!1935803 m!7010476))

(assert (=> b!6175710 m!7010390))

(assert (=> d!1935259 d!1935803))

(assert (=> d!1935261 d!1935585))

(declare-fun bs!1531443 () Bool)

(declare-fun d!1935805 () Bool)

(assert (= bs!1531443 (and d!1935805 d!1935779)))

(declare-fun lambda!337148 () Int)

(assert (=> bs!1531443 (= lambda!337148 lambda!337143)))

(declare-fun bs!1531444 () Bool)

(assert (= bs!1531444 (and d!1935805 d!1935761)))

(assert (=> bs!1531444 (= lambda!337148 lambda!337141)))

(declare-fun bs!1531445 () Bool)

(assert (= bs!1531445 (and d!1935805 d!1935509)))

(assert (=> bs!1531445 (= lambda!337148 lambda!337111)))

(declare-fun bs!1531446 () Bool)

(assert (= bs!1531446 (and d!1935805 d!1935517)))

(assert (=> bs!1531446 (= lambda!337148 lambda!337112)))

(declare-fun bs!1531447 () Bool)

(assert (= bs!1531447 (and d!1935805 d!1935555)))

(assert (=> bs!1531447 (= lambda!337148 lambda!337116)))

(declare-fun bs!1531448 () Bool)

(assert (= bs!1531448 (and d!1935805 d!1935561)))

(assert (=> bs!1531448 (= lambda!337148 lambda!337117)))

(declare-fun bs!1531449 () Bool)

(assert (= bs!1531449 (and d!1935805 d!1935709)))

(assert (=> bs!1531449 (= lambda!337148 lambda!337131)))

(declare-fun bs!1531450 () Bool)

(assert (= bs!1531450 (and d!1935805 d!1935799)))

(assert (=> bs!1531450 (= lambda!337148 lambda!337147)))

(declare-fun bs!1531451 () Bool)

(assert (= bs!1531451 (and d!1935805 d!1935723)))

(assert (=> bs!1531451 (= lambda!337148 lambda!337138)))

(declare-fun bs!1531452 () Bool)

(assert (= bs!1531452 (and d!1935805 d!1935527)))

(assert (=> bs!1531452 (= lambda!337148 lambda!337113)))

(assert (=> d!1935805 (= (nullableZipper!1893 lt!2337788) (exists!2457 lt!2337788 lambda!337148))))

(declare-fun bs!1531453 () Bool)

(assert (= bs!1531453 d!1935805))

(declare-fun m!7011942 () Bool)

(assert (=> bs!1531453 m!7011942))

(assert (=> b!6174633 d!1935805))

(declare-fun b!6175712 () Bool)

(declare-fun e!3761835 () Bool)

(declare-fun tp!1723951 () Bool)

(assert (=> b!6175712 (= e!3761835 tp!1723951)))

(declare-fun tp!1723952 () Bool)

(declare-fun e!3761834 () Bool)

(declare-fun b!6175711 () Bool)

(assert (=> b!6175711 (= e!3761834 (and (inv!83533 (h!70966 (t!378146 (t!378146 zl!343)))) e!3761835 tp!1723952))))

(assert (=> b!6174701 (= tp!1723861 e!3761834)))

(assert (= b!6175711 b!6175712))

(assert (= (and b!6174701 (is-Cons!64518 (t!378146 (t!378146 zl!343)))) b!6175711))

(declare-fun m!7011944 () Bool)

(assert (=> b!6175711 m!7011944))

(declare-fun b!6175714 () Bool)

(declare-fun e!3761836 () Bool)

(declare-fun tp!1723957 () Bool)

(declare-fun tp!1723954 () Bool)

(assert (=> b!6175714 (= e!3761836 (and tp!1723957 tp!1723954))))

(declare-fun b!6175716 () Bool)

(declare-fun tp!1723953 () Bool)

(declare-fun tp!1723955 () Bool)

(assert (=> b!6175716 (= e!3761836 (and tp!1723953 tp!1723955))))

(declare-fun b!6175715 () Bool)

(declare-fun tp!1723956 () Bool)

(assert (=> b!6175715 (= e!3761836 tp!1723956)))

(declare-fun b!6175713 () Bool)

(assert (=> b!6175713 (= e!3761836 tp_is_empty!41481)))

(assert (=> b!6174709 (= tp!1723870 e!3761836)))

(assert (= (and b!6174709 (is-ElementMatch!16114 (reg!16443 (regTwo!32741 r!7292)))) b!6175713))

(assert (= (and b!6174709 (is-Concat!24959 (reg!16443 (regTwo!32741 r!7292)))) b!6175714))

(assert (= (and b!6174709 (is-Star!16114 (reg!16443 (regTwo!32741 r!7292)))) b!6175715))

(assert (= (and b!6174709 (is-Union!16114 (reg!16443 (regTwo!32741 r!7292)))) b!6175716))

(declare-fun b!6175717 () Bool)

(declare-fun e!3761837 () Bool)

(declare-fun tp!1723958 () Bool)

(declare-fun tp!1723959 () Bool)

(assert (=> b!6175717 (= e!3761837 (and tp!1723958 tp!1723959))))

(assert (=> b!6174702 (= tp!1723860 e!3761837)))

(assert (= (and b!6174702 (is-Cons!64517 (exprs!5998 (h!70966 (t!378146 zl!343))))) b!6175717))

(declare-fun b!6175719 () Bool)

(declare-fun e!3761838 () Bool)

(declare-fun tp!1723964 () Bool)

(declare-fun tp!1723961 () Bool)

(assert (=> b!6175719 (= e!3761838 (and tp!1723964 tp!1723961))))

(declare-fun b!6175721 () Bool)

(declare-fun tp!1723960 () Bool)

(declare-fun tp!1723962 () Bool)

(assert (=> b!6175721 (= e!3761838 (and tp!1723960 tp!1723962))))

(declare-fun b!6175720 () Bool)

(declare-fun tp!1723963 () Bool)

(assert (=> b!6175720 (= e!3761838 tp!1723963)))

(declare-fun b!6175718 () Bool)

(assert (=> b!6175718 (= e!3761838 tp_is_empty!41481)))

(assert (=> b!6174710 (= tp!1723867 e!3761838)))

(assert (= (and b!6174710 (is-ElementMatch!16114 (regOne!32741 (regTwo!32741 r!7292)))) b!6175718))

(assert (= (and b!6174710 (is-Concat!24959 (regOne!32741 (regTwo!32741 r!7292)))) b!6175719))

(assert (= (and b!6174710 (is-Star!16114 (regOne!32741 (regTwo!32741 r!7292)))) b!6175720))

(assert (= (and b!6174710 (is-Union!16114 (regOne!32741 (regTwo!32741 r!7292)))) b!6175721))

(declare-fun b!6175723 () Bool)

(declare-fun e!3761839 () Bool)

(declare-fun tp!1723969 () Bool)

(declare-fun tp!1723966 () Bool)

(assert (=> b!6175723 (= e!3761839 (and tp!1723969 tp!1723966))))

(declare-fun b!6175725 () Bool)

(declare-fun tp!1723965 () Bool)

(declare-fun tp!1723967 () Bool)

(assert (=> b!6175725 (= e!3761839 (and tp!1723965 tp!1723967))))

(declare-fun b!6175724 () Bool)

(declare-fun tp!1723968 () Bool)

(assert (=> b!6175724 (= e!3761839 tp!1723968)))

(declare-fun b!6175722 () Bool)

(assert (=> b!6175722 (= e!3761839 tp_is_empty!41481)))

(assert (=> b!6174710 (= tp!1723869 e!3761839)))

(assert (= (and b!6174710 (is-ElementMatch!16114 (regTwo!32741 (regTwo!32741 r!7292)))) b!6175722))

(assert (= (and b!6174710 (is-Concat!24959 (regTwo!32741 (regTwo!32741 r!7292)))) b!6175723))

(assert (= (and b!6174710 (is-Star!16114 (regTwo!32741 (regTwo!32741 r!7292)))) b!6175724))

(assert (= (and b!6174710 (is-Union!16114 (regTwo!32741 (regTwo!32741 r!7292)))) b!6175725))

(declare-fun b!6175727 () Bool)

(declare-fun e!3761840 () Bool)

(declare-fun tp!1723974 () Bool)

(declare-fun tp!1723971 () Bool)

(assert (=> b!6175727 (= e!3761840 (and tp!1723974 tp!1723971))))

(declare-fun b!6175729 () Bool)

(declare-fun tp!1723970 () Bool)

(declare-fun tp!1723972 () Bool)

(assert (=> b!6175729 (= e!3761840 (and tp!1723970 tp!1723972))))

(declare-fun b!6175728 () Bool)

(declare-fun tp!1723973 () Bool)

(assert (=> b!6175728 (= e!3761840 tp!1723973)))

(declare-fun b!6175726 () Bool)

(assert (=> b!6175726 (= e!3761840 tp_is_empty!41481)))

(assert (=> b!6174679 (= tp!1723839 e!3761840)))

(assert (= (and b!6174679 (is-ElementMatch!16114 (regOne!32740 (regOne!32740 r!7292)))) b!6175726))

(assert (= (and b!6174679 (is-Concat!24959 (regOne!32740 (regOne!32740 r!7292)))) b!6175727))

(assert (= (and b!6174679 (is-Star!16114 (regOne!32740 (regOne!32740 r!7292)))) b!6175728))

(assert (= (and b!6174679 (is-Union!16114 (regOne!32740 (regOne!32740 r!7292)))) b!6175729))

(declare-fun b!6175731 () Bool)

(declare-fun e!3761841 () Bool)

(declare-fun tp!1723979 () Bool)

(declare-fun tp!1723976 () Bool)

(assert (=> b!6175731 (= e!3761841 (and tp!1723979 tp!1723976))))

(declare-fun b!6175733 () Bool)

(declare-fun tp!1723975 () Bool)

(declare-fun tp!1723977 () Bool)

(assert (=> b!6175733 (= e!3761841 (and tp!1723975 tp!1723977))))

(declare-fun b!6175732 () Bool)

(declare-fun tp!1723978 () Bool)

(assert (=> b!6175732 (= e!3761841 tp!1723978)))

(declare-fun b!6175730 () Bool)

(assert (=> b!6175730 (= e!3761841 tp_is_empty!41481)))

(assert (=> b!6174679 (= tp!1723836 e!3761841)))

(assert (= (and b!6174679 (is-ElementMatch!16114 (regTwo!32740 (regOne!32740 r!7292)))) b!6175730))

(assert (= (and b!6174679 (is-Concat!24959 (regTwo!32740 (regOne!32740 r!7292)))) b!6175731))

(assert (= (and b!6174679 (is-Star!16114 (regTwo!32740 (regOne!32740 r!7292)))) b!6175732))

(assert (= (and b!6174679 (is-Union!16114 (regTwo!32740 (regOne!32740 r!7292)))) b!6175733))

(declare-fun b!6175735 () Bool)

(declare-fun e!3761842 () Bool)

(declare-fun tp!1723984 () Bool)

(declare-fun tp!1723981 () Bool)

(assert (=> b!6175735 (= e!3761842 (and tp!1723984 tp!1723981))))

(declare-fun b!6175737 () Bool)

(declare-fun tp!1723980 () Bool)

(declare-fun tp!1723982 () Bool)

(assert (=> b!6175737 (= e!3761842 (and tp!1723980 tp!1723982))))

(declare-fun b!6175736 () Bool)

(declare-fun tp!1723983 () Bool)

(assert (=> b!6175736 (= e!3761842 tp!1723983)))

(declare-fun b!6175734 () Bool)

(assert (=> b!6175734 (= e!3761842 tp_is_empty!41481)))

(assert (=> b!6174693 (= tp!1723854 e!3761842)))

(assert (= (and b!6174693 (is-ElementMatch!16114 (reg!16443 (reg!16443 r!7292)))) b!6175734))

(assert (= (and b!6174693 (is-Concat!24959 (reg!16443 (reg!16443 r!7292)))) b!6175735))

(assert (= (and b!6174693 (is-Star!16114 (reg!16443 (reg!16443 r!7292)))) b!6175736))

(assert (= (and b!6174693 (is-Union!16114 (reg!16443 (reg!16443 r!7292)))) b!6175737))

(declare-fun b!6175739 () Bool)

(declare-fun e!3761843 () Bool)

(declare-fun tp!1723989 () Bool)

(declare-fun tp!1723986 () Bool)

(assert (=> b!6175739 (= e!3761843 (and tp!1723989 tp!1723986))))

(declare-fun b!6175741 () Bool)

(declare-fun tp!1723985 () Bool)

(declare-fun tp!1723987 () Bool)

(assert (=> b!6175741 (= e!3761843 (and tp!1723985 tp!1723987))))

(declare-fun b!6175740 () Bool)

(declare-fun tp!1723988 () Bool)

(assert (=> b!6175740 (= e!3761843 tp!1723988)))

(declare-fun b!6175738 () Bool)

(assert (=> b!6175738 (= e!3761843 tp_is_empty!41481)))

(assert (=> b!6174694 (= tp!1723851 e!3761843)))

(assert (= (and b!6174694 (is-ElementMatch!16114 (regOne!32741 (reg!16443 r!7292)))) b!6175738))

(assert (= (and b!6174694 (is-Concat!24959 (regOne!32741 (reg!16443 r!7292)))) b!6175739))

(assert (= (and b!6174694 (is-Star!16114 (regOne!32741 (reg!16443 r!7292)))) b!6175740))

(assert (= (and b!6174694 (is-Union!16114 (regOne!32741 (reg!16443 r!7292)))) b!6175741))

(declare-fun b!6175743 () Bool)

(declare-fun e!3761844 () Bool)

(declare-fun tp!1723994 () Bool)

(declare-fun tp!1723991 () Bool)

(assert (=> b!6175743 (= e!3761844 (and tp!1723994 tp!1723991))))

(declare-fun b!6175745 () Bool)

(declare-fun tp!1723990 () Bool)

(declare-fun tp!1723992 () Bool)

(assert (=> b!6175745 (= e!3761844 (and tp!1723990 tp!1723992))))

(declare-fun b!6175744 () Bool)

(declare-fun tp!1723993 () Bool)

(assert (=> b!6175744 (= e!3761844 tp!1723993)))

(declare-fun b!6175742 () Bool)

(assert (=> b!6175742 (= e!3761844 tp_is_empty!41481)))

(assert (=> b!6174694 (= tp!1723853 e!3761844)))

(assert (= (and b!6174694 (is-ElementMatch!16114 (regTwo!32741 (reg!16443 r!7292)))) b!6175742))

(assert (= (and b!6174694 (is-Concat!24959 (regTwo!32741 (reg!16443 r!7292)))) b!6175743))

(assert (= (and b!6174694 (is-Star!16114 (regTwo!32741 (reg!16443 r!7292)))) b!6175744))

(assert (= (and b!6174694 (is-Union!16114 (regTwo!32741 (reg!16443 r!7292)))) b!6175745))

(declare-fun b!6175747 () Bool)

(declare-fun e!3761845 () Bool)

(declare-fun tp!1723999 () Bool)

(declare-fun tp!1723996 () Bool)

(assert (=> b!6175747 (= e!3761845 (and tp!1723999 tp!1723996))))

(declare-fun b!6175749 () Bool)

(declare-fun tp!1723995 () Bool)

(declare-fun tp!1723997 () Bool)

(assert (=> b!6175749 (= e!3761845 (and tp!1723995 tp!1723997))))

(declare-fun b!6175748 () Bool)

(declare-fun tp!1723998 () Bool)

(assert (=> b!6175748 (= e!3761845 tp!1723998)))

(declare-fun b!6175746 () Bool)

(assert (=> b!6175746 (= e!3761845 tp_is_empty!41481)))

(assert (=> b!6174716 (= tp!1723875 e!3761845)))

(assert (= (and b!6174716 (is-ElementMatch!16114 (h!70965 (exprs!5998 (h!70966 zl!343))))) b!6175746))

(assert (= (and b!6174716 (is-Concat!24959 (h!70965 (exprs!5998 (h!70966 zl!343))))) b!6175747))

(assert (= (and b!6174716 (is-Star!16114 (h!70965 (exprs!5998 (h!70966 zl!343))))) b!6175748))

(assert (= (and b!6174716 (is-Union!16114 (h!70965 (exprs!5998 (h!70966 zl!343))))) b!6175749))

(declare-fun b!6175750 () Bool)

(declare-fun e!3761846 () Bool)

(declare-fun tp!1724000 () Bool)

(declare-fun tp!1724001 () Bool)

(assert (=> b!6175750 (= e!3761846 (and tp!1724000 tp!1724001))))

(assert (=> b!6174716 (= tp!1723876 e!3761846)))

(assert (= (and b!6174716 (is-Cons!64517 (t!378145 (exprs!5998 (h!70966 zl!343))))) b!6175750))

(declare-fun b!6175752 () Bool)

(declare-fun e!3761847 () Bool)

(declare-fun tp!1724006 () Bool)

(declare-fun tp!1724003 () Bool)

(assert (=> b!6175752 (= e!3761847 (and tp!1724006 tp!1724003))))

(declare-fun b!6175754 () Bool)

(declare-fun tp!1724002 () Bool)

(declare-fun tp!1724004 () Bool)

(assert (=> b!6175754 (= e!3761847 (and tp!1724002 tp!1724004))))

(declare-fun b!6175753 () Bool)

(declare-fun tp!1724005 () Bool)

(assert (=> b!6175753 (= e!3761847 tp!1724005)))

(declare-fun b!6175751 () Bool)

(assert (=> b!6175751 (= e!3761847 tp_is_empty!41481)))

(assert (=> b!6174708 (= tp!1723871 e!3761847)))

(assert (= (and b!6174708 (is-ElementMatch!16114 (regOne!32740 (regTwo!32741 r!7292)))) b!6175751))

(assert (= (and b!6174708 (is-Concat!24959 (regOne!32740 (regTwo!32741 r!7292)))) b!6175752))

(assert (= (and b!6174708 (is-Star!16114 (regOne!32740 (regTwo!32741 r!7292)))) b!6175753))

(assert (= (and b!6174708 (is-Union!16114 (regOne!32740 (regTwo!32741 r!7292)))) b!6175754))

(declare-fun b!6175756 () Bool)

(declare-fun e!3761848 () Bool)

(declare-fun tp!1724011 () Bool)

(declare-fun tp!1724008 () Bool)

(assert (=> b!6175756 (= e!3761848 (and tp!1724011 tp!1724008))))

(declare-fun b!6175758 () Bool)

(declare-fun tp!1724007 () Bool)

(declare-fun tp!1724009 () Bool)

(assert (=> b!6175758 (= e!3761848 (and tp!1724007 tp!1724009))))

(declare-fun b!6175757 () Bool)

(declare-fun tp!1724010 () Bool)

(assert (=> b!6175757 (= e!3761848 tp!1724010)))

(declare-fun b!6175755 () Bool)

(assert (=> b!6175755 (= e!3761848 tp_is_empty!41481)))

(assert (=> b!6174708 (= tp!1723868 e!3761848)))

(assert (= (and b!6174708 (is-ElementMatch!16114 (regTwo!32740 (regTwo!32741 r!7292)))) b!6175755))

(assert (= (and b!6174708 (is-Concat!24959 (regTwo!32740 (regTwo!32741 r!7292)))) b!6175756))

(assert (= (and b!6174708 (is-Star!16114 (regTwo!32740 (regTwo!32741 r!7292)))) b!6175757))

(assert (= (and b!6174708 (is-Union!16114 (regTwo!32740 (regTwo!32741 r!7292)))) b!6175758))

(declare-fun b!6175759 () Bool)

(declare-fun e!3761849 () Bool)

(declare-fun tp!1724012 () Bool)

(assert (=> b!6175759 (= e!3761849 (and tp_is_empty!41481 tp!1724012))))

(assert (=> b!6174715 (= tp!1723874 e!3761849)))

(assert (= (and b!6174715 (is-Cons!64519 (t!378147 (t!378147 s!2326)))) b!6175759))

(declare-fun b!6175761 () Bool)

(declare-fun e!3761850 () Bool)

(declare-fun tp!1724017 () Bool)

(declare-fun tp!1724014 () Bool)

(assert (=> b!6175761 (= e!3761850 (and tp!1724017 tp!1724014))))

(declare-fun b!6175763 () Bool)

(declare-fun tp!1724013 () Bool)

(declare-fun tp!1724015 () Bool)

(assert (=> b!6175763 (= e!3761850 (and tp!1724013 tp!1724015))))

(declare-fun b!6175762 () Bool)

(declare-fun tp!1724016 () Bool)

(assert (=> b!6175762 (= e!3761850 tp!1724016)))

(declare-fun b!6175760 () Bool)

(assert (=> b!6175760 (= e!3761850 tp_is_empty!41481)))

(assert (=> b!6174692 (= tp!1723855 e!3761850)))

(assert (= (and b!6174692 (is-ElementMatch!16114 (regOne!32740 (reg!16443 r!7292)))) b!6175760))

(assert (= (and b!6174692 (is-Concat!24959 (regOne!32740 (reg!16443 r!7292)))) b!6175761))

(assert (= (and b!6174692 (is-Star!16114 (regOne!32740 (reg!16443 r!7292)))) b!6175762))

(assert (= (and b!6174692 (is-Union!16114 (regOne!32740 (reg!16443 r!7292)))) b!6175763))

(declare-fun b!6175765 () Bool)

(declare-fun e!3761851 () Bool)

(declare-fun tp!1724022 () Bool)

(declare-fun tp!1724019 () Bool)

(assert (=> b!6175765 (= e!3761851 (and tp!1724022 tp!1724019))))

(declare-fun b!6175767 () Bool)

(declare-fun tp!1724018 () Bool)

(declare-fun tp!1724020 () Bool)

(assert (=> b!6175767 (= e!3761851 (and tp!1724018 tp!1724020))))

(declare-fun b!6175766 () Bool)

(declare-fun tp!1724021 () Bool)

(assert (=> b!6175766 (= e!3761851 tp!1724021)))

(declare-fun b!6175764 () Bool)

(assert (=> b!6175764 (= e!3761851 tp_is_empty!41481)))

(assert (=> b!6174692 (= tp!1723852 e!3761851)))

(assert (= (and b!6174692 (is-ElementMatch!16114 (regTwo!32740 (reg!16443 r!7292)))) b!6175764))

(assert (= (and b!6174692 (is-Concat!24959 (regTwo!32740 (reg!16443 r!7292)))) b!6175765))

(assert (= (and b!6174692 (is-Star!16114 (regTwo!32740 (reg!16443 r!7292)))) b!6175766))

(assert (= (and b!6174692 (is-Union!16114 (regTwo!32740 (reg!16443 r!7292)))) b!6175767))

(declare-fun b!6175769 () Bool)

(declare-fun e!3761852 () Bool)

(declare-fun tp!1724027 () Bool)

(declare-fun tp!1724024 () Bool)

(assert (=> b!6175769 (= e!3761852 (and tp!1724027 tp!1724024))))

(declare-fun b!6175771 () Bool)

(declare-fun tp!1724023 () Bool)

(declare-fun tp!1724025 () Bool)

(assert (=> b!6175771 (= e!3761852 (and tp!1724023 tp!1724025))))

(declare-fun b!6175770 () Bool)

(declare-fun tp!1724026 () Bool)

(assert (=> b!6175770 (= e!3761852 tp!1724026)))

(declare-fun b!6175768 () Bool)

(assert (=> b!6175768 (= e!3761852 tp_is_empty!41481)))

(assert (=> b!6174684 (= tp!1723843 e!3761852)))

(assert (= (and b!6174684 (is-ElementMatch!16114 (reg!16443 (regTwo!32740 r!7292)))) b!6175768))

(assert (= (and b!6174684 (is-Concat!24959 (reg!16443 (regTwo!32740 r!7292)))) b!6175769))

(assert (= (and b!6174684 (is-Star!16114 (reg!16443 (regTwo!32740 r!7292)))) b!6175770))

(assert (= (and b!6174684 (is-Union!16114 (reg!16443 (regTwo!32740 r!7292)))) b!6175771))

(declare-fun b!6175773 () Bool)

(declare-fun e!3761853 () Bool)

(declare-fun tp!1724032 () Bool)

(declare-fun tp!1724029 () Bool)

(assert (=> b!6175773 (= e!3761853 (and tp!1724032 tp!1724029))))

(declare-fun b!6175775 () Bool)

(declare-fun tp!1724028 () Bool)

(declare-fun tp!1724030 () Bool)

(assert (=> b!6175775 (= e!3761853 (and tp!1724028 tp!1724030))))

(declare-fun b!6175774 () Bool)

(declare-fun tp!1724031 () Bool)

(assert (=> b!6175774 (= e!3761853 tp!1724031)))

(declare-fun b!6175772 () Bool)

(assert (=> b!6175772 (= e!3761853 tp_is_empty!41481)))

(assert (=> b!6174685 (= tp!1723840 e!3761853)))

(assert (= (and b!6174685 (is-ElementMatch!16114 (regOne!32741 (regTwo!32740 r!7292)))) b!6175772))

(assert (= (and b!6174685 (is-Concat!24959 (regOne!32741 (regTwo!32740 r!7292)))) b!6175773))

(assert (= (and b!6174685 (is-Star!16114 (regOne!32741 (regTwo!32740 r!7292)))) b!6175774))

(assert (= (and b!6174685 (is-Union!16114 (regOne!32741 (regTwo!32740 r!7292)))) b!6175775))

(declare-fun b!6175777 () Bool)

(declare-fun e!3761854 () Bool)

(declare-fun tp!1724037 () Bool)

(declare-fun tp!1724034 () Bool)

(assert (=> b!6175777 (= e!3761854 (and tp!1724037 tp!1724034))))

(declare-fun b!6175779 () Bool)

(declare-fun tp!1724033 () Bool)

(declare-fun tp!1724035 () Bool)

(assert (=> b!6175779 (= e!3761854 (and tp!1724033 tp!1724035))))

(declare-fun b!6175778 () Bool)

(declare-fun tp!1724036 () Bool)

(assert (=> b!6175778 (= e!3761854 tp!1724036)))

(declare-fun b!6175776 () Bool)

(assert (=> b!6175776 (= e!3761854 tp_is_empty!41481)))

(assert (=> b!6174685 (= tp!1723842 e!3761854)))

(assert (= (and b!6174685 (is-ElementMatch!16114 (regTwo!32741 (regTwo!32740 r!7292)))) b!6175776))

(assert (= (and b!6174685 (is-Concat!24959 (regTwo!32741 (regTwo!32740 r!7292)))) b!6175777))

(assert (= (and b!6174685 (is-Star!16114 (regTwo!32741 (regTwo!32740 r!7292)))) b!6175778))

(assert (= (and b!6174685 (is-Union!16114 (regTwo!32741 (regTwo!32740 r!7292)))) b!6175779))

(declare-fun b!6175781 () Bool)

(declare-fun e!3761855 () Bool)

(declare-fun tp!1724042 () Bool)

(declare-fun tp!1724039 () Bool)

(assert (=> b!6175781 (= e!3761855 (and tp!1724042 tp!1724039))))

(declare-fun b!6175783 () Bool)

(declare-fun tp!1724038 () Bool)

(declare-fun tp!1724040 () Bool)

(assert (=> b!6175783 (= e!3761855 (and tp!1724038 tp!1724040))))

(declare-fun b!6175782 () Bool)

(declare-fun tp!1724041 () Bool)

(assert (=> b!6175782 (= e!3761855 tp!1724041)))

(declare-fun b!6175780 () Bool)

(assert (=> b!6175780 (= e!3761855 tp_is_empty!41481)))

(assert (=> b!6174704 (= tp!1723866 e!3761855)))

(assert (= (and b!6174704 (is-ElementMatch!16114 (regOne!32740 (regOne!32741 r!7292)))) b!6175780))

(assert (= (and b!6174704 (is-Concat!24959 (regOne!32740 (regOne!32741 r!7292)))) b!6175781))

(assert (= (and b!6174704 (is-Star!16114 (regOne!32740 (regOne!32741 r!7292)))) b!6175782))

(assert (= (and b!6174704 (is-Union!16114 (regOne!32740 (regOne!32741 r!7292)))) b!6175783))

(declare-fun b!6175785 () Bool)

(declare-fun e!3761856 () Bool)

(declare-fun tp!1724047 () Bool)

(declare-fun tp!1724044 () Bool)

(assert (=> b!6175785 (= e!3761856 (and tp!1724047 tp!1724044))))

(declare-fun b!6175787 () Bool)

(declare-fun tp!1724043 () Bool)

(declare-fun tp!1724045 () Bool)

(assert (=> b!6175787 (= e!3761856 (and tp!1724043 tp!1724045))))

(declare-fun b!6175786 () Bool)

(declare-fun tp!1724046 () Bool)

(assert (=> b!6175786 (= e!3761856 tp!1724046)))

(declare-fun b!6175784 () Bool)

(assert (=> b!6175784 (= e!3761856 tp_is_empty!41481)))

(assert (=> b!6174704 (= tp!1723863 e!3761856)))

(assert (= (and b!6174704 (is-ElementMatch!16114 (regTwo!32740 (regOne!32741 r!7292)))) b!6175784))

(assert (= (and b!6174704 (is-Concat!24959 (regTwo!32740 (regOne!32741 r!7292)))) b!6175785))

(assert (= (and b!6174704 (is-Star!16114 (regTwo!32740 (regOne!32741 r!7292)))) b!6175786))

(assert (= (and b!6174704 (is-Union!16114 (regTwo!32740 (regOne!32741 r!7292)))) b!6175787))

(declare-fun b!6175789 () Bool)

(declare-fun e!3761857 () Bool)

(declare-fun tp!1724052 () Bool)

(declare-fun tp!1724049 () Bool)

(assert (=> b!6175789 (= e!3761857 (and tp!1724052 tp!1724049))))

(declare-fun b!6175791 () Bool)

(declare-fun tp!1724048 () Bool)

(declare-fun tp!1724050 () Bool)

(assert (=> b!6175791 (= e!3761857 (and tp!1724048 tp!1724050))))

(declare-fun b!6175790 () Bool)

(declare-fun tp!1724051 () Bool)

(assert (=> b!6175790 (= e!3761857 tp!1724051)))

(declare-fun b!6175788 () Bool)

(assert (=> b!6175788 (= e!3761857 tp_is_empty!41481)))

(assert (=> b!6174667 (= tp!1723823 e!3761857)))

(assert (= (and b!6174667 (is-ElementMatch!16114 (h!70965 (exprs!5998 setElem!41861)))) b!6175788))

(assert (= (and b!6174667 (is-Concat!24959 (h!70965 (exprs!5998 setElem!41861)))) b!6175789))

(assert (= (and b!6174667 (is-Star!16114 (h!70965 (exprs!5998 setElem!41861)))) b!6175790))

(assert (= (and b!6174667 (is-Union!16114 (h!70965 (exprs!5998 setElem!41861)))) b!6175791))

(declare-fun b!6175792 () Bool)

(declare-fun e!3761858 () Bool)

(declare-fun tp!1724053 () Bool)

(declare-fun tp!1724054 () Bool)

(assert (=> b!6175792 (= e!3761858 (and tp!1724053 tp!1724054))))

(assert (=> b!6174667 (= tp!1723824 e!3761858)))

(assert (= (and b!6174667 (is-Cons!64517 (t!378145 (exprs!5998 setElem!41861)))) b!6175792))

(declare-fun b!6175794 () Bool)

(declare-fun e!3761859 () Bool)

(declare-fun tp!1724059 () Bool)

(declare-fun tp!1724056 () Bool)

(assert (=> b!6175794 (= e!3761859 (and tp!1724059 tp!1724056))))

(declare-fun b!6175796 () Bool)

(declare-fun tp!1724055 () Bool)

(declare-fun tp!1724057 () Bool)

(assert (=> b!6175796 (= e!3761859 (and tp!1724055 tp!1724057))))

(declare-fun b!6175795 () Bool)

(declare-fun tp!1724058 () Bool)

(assert (=> b!6175795 (= e!3761859 tp!1724058)))

(declare-fun b!6175793 () Bool)

(assert (=> b!6175793 (= e!3761859 tp_is_empty!41481)))

(assert (=> b!6174705 (= tp!1723865 e!3761859)))

(assert (= (and b!6174705 (is-ElementMatch!16114 (reg!16443 (regOne!32741 r!7292)))) b!6175793))

(assert (= (and b!6174705 (is-Concat!24959 (reg!16443 (regOne!32741 r!7292)))) b!6175794))

(assert (= (and b!6174705 (is-Star!16114 (reg!16443 (regOne!32741 r!7292)))) b!6175795))

(assert (= (and b!6174705 (is-Union!16114 (reg!16443 (regOne!32741 r!7292)))) b!6175796))

(declare-fun b!6175798 () Bool)

(declare-fun e!3761860 () Bool)

(declare-fun tp!1724064 () Bool)

(declare-fun tp!1724061 () Bool)

(assert (=> b!6175798 (= e!3761860 (and tp!1724064 tp!1724061))))

(declare-fun b!6175800 () Bool)

(declare-fun tp!1724060 () Bool)

(declare-fun tp!1724062 () Bool)

(assert (=> b!6175800 (= e!3761860 (and tp!1724060 tp!1724062))))

(declare-fun b!6175799 () Bool)

(declare-fun tp!1724063 () Bool)

(assert (=> b!6175799 (= e!3761860 tp!1724063)))

(declare-fun b!6175797 () Bool)

(assert (=> b!6175797 (= e!3761860 tp_is_empty!41481)))

(assert (=> b!6174683 (= tp!1723844 e!3761860)))

(assert (= (and b!6174683 (is-ElementMatch!16114 (regOne!32740 (regTwo!32740 r!7292)))) b!6175797))

(assert (= (and b!6174683 (is-Concat!24959 (regOne!32740 (regTwo!32740 r!7292)))) b!6175798))

(assert (= (and b!6174683 (is-Star!16114 (regOne!32740 (regTwo!32740 r!7292)))) b!6175799))

(assert (= (and b!6174683 (is-Union!16114 (regOne!32740 (regTwo!32740 r!7292)))) b!6175800))

(declare-fun b!6175802 () Bool)

(declare-fun e!3761861 () Bool)

(declare-fun tp!1724069 () Bool)

(declare-fun tp!1724066 () Bool)

(assert (=> b!6175802 (= e!3761861 (and tp!1724069 tp!1724066))))

(declare-fun b!6175804 () Bool)

(declare-fun tp!1724065 () Bool)

(declare-fun tp!1724067 () Bool)

(assert (=> b!6175804 (= e!3761861 (and tp!1724065 tp!1724067))))

(declare-fun b!6175803 () Bool)

(declare-fun tp!1724068 () Bool)

(assert (=> b!6175803 (= e!3761861 tp!1724068)))

(declare-fun b!6175801 () Bool)

(assert (=> b!6175801 (= e!3761861 tp_is_empty!41481)))

(assert (=> b!6174683 (= tp!1723841 e!3761861)))

(assert (= (and b!6174683 (is-ElementMatch!16114 (regTwo!32740 (regTwo!32740 r!7292)))) b!6175801))

(assert (= (and b!6174683 (is-Concat!24959 (regTwo!32740 (regTwo!32740 r!7292)))) b!6175802))

(assert (= (and b!6174683 (is-Star!16114 (regTwo!32740 (regTwo!32740 r!7292)))) b!6175803))

(assert (= (and b!6174683 (is-Union!16114 (regTwo!32740 (regTwo!32740 r!7292)))) b!6175804))

(declare-fun b!6175806 () Bool)

(declare-fun e!3761862 () Bool)

(declare-fun tp!1724074 () Bool)

(declare-fun tp!1724071 () Bool)

(assert (=> b!6175806 (= e!3761862 (and tp!1724074 tp!1724071))))

(declare-fun b!6175808 () Bool)

(declare-fun tp!1724070 () Bool)

(declare-fun tp!1724072 () Bool)

(assert (=> b!6175808 (= e!3761862 (and tp!1724070 tp!1724072))))

(declare-fun b!6175807 () Bool)

(declare-fun tp!1724073 () Bool)

(assert (=> b!6175807 (= e!3761862 tp!1724073)))

(declare-fun b!6175805 () Bool)

(assert (=> b!6175805 (= e!3761862 tp_is_empty!41481)))

(assert (=> b!6174706 (= tp!1723862 e!3761862)))

(assert (= (and b!6174706 (is-ElementMatch!16114 (regOne!32741 (regOne!32741 r!7292)))) b!6175805))

(assert (= (and b!6174706 (is-Concat!24959 (regOne!32741 (regOne!32741 r!7292)))) b!6175806))

(assert (= (and b!6174706 (is-Star!16114 (regOne!32741 (regOne!32741 r!7292)))) b!6175807))

(assert (= (and b!6174706 (is-Union!16114 (regOne!32741 (regOne!32741 r!7292)))) b!6175808))

(declare-fun b!6175810 () Bool)

(declare-fun e!3761863 () Bool)

(declare-fun tp!1724079 () Bool)

(declare-fun tp!1724076 () Bool)

(assert (=> b!6175810 (= e!3761863 (and tp!1724079 tp!1724076))))

(declare-fun b!6175812 () Bool)

(declare-fun tp!1724075 () Bool)

(declare-fun tp!1724077 () Bool)

(assert (=> b!6175812 (= e!3761863 (and tp!1724075 tp!1724077))))

(declare-fun b!6175811 () Bool)

(declare-fun tp!1724078 () Bool)

(assert (=> b!6175811 (= e!3761863 tp!1724078)))

(declare-fun b!6175809 () Bool)

(assert (=> b!6175809 (= e!3761863 tp_is_empty!41481)))

(assert (=> b!6174706 (= tp!1723864 e!3761863)))

(assert (= (and b!6174706 (is-ElementMatch!16114 (regTwo!32741 (regOne!32741 r!7292)))) b!6175809))

(assert (= (and b!6174706 (is-Concat!24959 (regTwo!32741 (regOne!32741 r!7292)))) b!6175810))

(assert (= (and b!6174706 (is-Star!16114 (regTwo!32741 (regOne!32741 r!7292)))) b!6175811))

(assert (= (and b!6174706 (is-Union!16114 (regTwo!32741 (regOne!32741 r!7292)))) b!6175812))

(declare-fun condSetEmpty!41876 () Bool)

(assert (=> setNonEmpty!41867 (= condSetEmpty!41876 (= setRest!41867 (as set.empty (Set Context!10996))))))

(declare-fun setRes!41876 () Bool)

(assert (=> setNonEmpty!41867 (= tp!1723849 setRes!41876)))

(declare-fun setIsEmpty!41876 () Bool)

(assert (=> setIsEmpty!41876 setRes!41876))

(declare-fun tp!1724080 () Bool)

(declare-fun e!3761864 () Bool)

(declare-fun setElem!41876 () Context!10996)

(declare-fun setNonEmpty!41876 () Bool)

(assert (=> setNonEmpty!41876 (= setRes!41876 (and tp!1724080 (inv!83533 setElem!41876) e!3761864))))

(declare-fun setRest!41876 () (Set Context!10996))

(assert (=> setNonEmpty!41876 (= setRest!41867 (set.union (set.insert setElem!41876 (as set.empty (Set Context!10996))) setRest!41876))))

(declare-fun b!6175813 () Bool)

(declare-fun tp!1724081 () Bool)

(assert (=> b!6175813 (= e!3761864 tp!1724081)))

(assert (= (and setNonEmpty!41867 condSetEmpty!41876) setIsEmpty!41876))

(assert (= (and setNonEmpty!41867 (not condSetEmpty!41876)) setNonEmpty!41876))

(assert (= setNonEmpty!41876 b!6175813))

(declare-fun m!7011946 () Bool)

(assert (=> setNonEmpty!41876 m!7011946))

(declare-fun b!6175814 () Bool)

(declare-fun e!3761865 () Bool)

(declare-fun tp!1724082 () Bool)

(declare-fun tp!1724083 () Bool)

(assert (=> b!6175814 (= e!3761865 (and tp!1724082 tp!1724083))))

(assert (=> b!6174690 (= tp!1723850 e!3761865)))

(assert (= (and b!6174690 (is-Cons!64517 (exprs!5998 setElem!41867))) b!6175814))

(declare-fun b!6175816 () Bool)

(declare-fun e!3761866 () Bool)

(declare-fun tp!1724088 () Bool)

(declare-fun tp!1724085 () Bool)

(assert (=> b!6175816 (= e!3761866 (and tp!1724088 tp!1724085))))

(declare-fun b!6175818 () Bool)

(declare-fun tp!1724084 () Bool)

(declare-fun tp!1724086 () Bool)

(assert (=> b!6175818 (= e!3761866 (and tp!1724084 tp!1724086))))

(declare-fun b!6175817 () Bool)

(declare-fun tp!1724087 () Bool)

(assert (=> b!6175817 (= e!3761866 tp!1724087)))

(declare-fun b!6175815 () Bool)

(assert (=> b!6175815 (= e!3761866 tp_is_empty!41481)))

(assert (=> b!6174680 (= tp!1723838 e!3761866)))

(assert (= (and b!6174680 (is-ElementMatch!16114 (reg!16443 (regOne!32740 r!7292)))) b!6175815))

(assert (= (and b!6174680 (is-Concat!24959 (reg!16443 (regOne!32740 r!7292)))) b!6175816))

(assert (= (and b!6174680 (is-Star!16114 (reg!16443 (regOne!32740 r!7292)))) b!6175817))

(assert (= (and b!6174680 (is-Union!16114 (reg!16443 (regOne!32740 r!7292)))) b!6175818))

(declare-fun b!6175820 () Bool)

(declare-fun e!3761867 () Bool)

(declare-fun tp!1724093 () Bool)

(declare-fun tp!1724090 () Bool)

(assert (=> b!6175820 (= e!3761867 (and tp!1724093 tp!1724090))))

(declare-fun b!6175822 () Bool)

(declare-fun tp!1724089 () Bool)

(declare-fun tp!1724091 () Bool)

(assert (=> b!6175822 (= e!3761867 (and tp!1724089 tp!1724091))))

(declare-fun b!6175821 () Bool)

(declare-fun tp!1724092 () Bool)

(assert (=> b!6175821 (= e!3761867 tp!1724092)))

(declare-fun b!6175819 () Bool)

(assert (=> b!6175819 (= e!3761867 tp_is_empty!41481)))

(assert (=> b!6174681 (= tp!1723835 e!3761867)))

(assert (= (and b!6174681 (is-ElementMatch!16114 (regOne!32741 (regOne!32740 r!7292)))) b!6175819))

(assert (= (and b!6174681 (is-Concat!24959 (regOne!32741 (regOne!32740 r!7292)))) b!6175820))

(assert (= (and b!6174681 (is-Star!16114 (regOne!32741 (regOne!32740 r!7292)))) b!6175821))

(assert (= (and b!6174681 (is-Union!16114 (regOne!32741 (regOne!32740 r!7292)))) b!6175822))

(declare-fun b!6175824 () Bool)

(declare-fun e!3761868 () Bool)

(declare-fun tp!1724098 () Bool)

(declare-fun tp!1724095 () Bool)

(assert (=> b!6175824 (= e!3761868 (and tp!1724098 tp!1724095))))

(declare-fun b!6175826 () Bool)

(declare-fun tp!1724094 () Bool)

(declare-fun tp!1724096 () Bool)

(assert (=> b!6175826 (= e!3761868 (and tp!1724094 tp!1724096))))

(declare-fun b!6175825 () Bool)

(declare-fun tp!1724097 () Bool)

(assert (=> b!6175825 (= e!3761868 tp!1724097)))

(declare-fun b!6175823 () Bool)

(assert (=> b!6175823 (= e!3761868 tp_is_empty!41481)))

(assert (=> b!6174681 (= tp!1723837 e!3761868)))

(assert (= (and b!6174681 (is-ElementMatch!16114 (regTwo!32741 (regOne!32740 r!7292)))) b!6175823))

(assert (= (and b!6174681 (is-Concat!24959 (regTwo!32741 (regOne!32740 r!7292)))) b!6175824))

(assert (= (and b!6174681 (is-Star!16114 (regTwo!32741 (regOne!32740 r!7292)))) b!6175825))

(assert (= (and b!6174681 (is-Union!16114 (regTwo!32741 (regOne!32740 r!7292)))) b!6175826))

(declare-fun b_lambda!235041 () Bool)

(assert (= b_lambda!235031 (or d!1935337 b_lambda!235041)))

(declare-fun bs!1531454 () Bool)

(declare-fun d!1935807 () Bool)

(assert (= bs!1531454 (and d!1935807 d!1935337)))

(assert (=> bs!1531454 (= (dynLambda!25444 lambda!337071 (h!70965 (exprs!5998 (h!70966 zl!343)))) (validRegex!7850 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(declare-fun m!7011948 () Bool)

(assert (=> bs!1531454 m!7011948))

(assert (=> b!6175321 d!1935807))

(declare-fun b_lambda!235043 () Bool)

(assert (= b_lambda!235021 (or d!1935301 b_lambda!235043)))

(declare-fun bs!1531455 () Bool)

(declare-fun d!1935809 () Bool)

(assert (= bs!1531455 (and d!1935809 d!1935301)))

(assert (=> bs!1531455 (= (dynLambda!25444 lambda!337062 (h!70965 (exprs!5998 (h!70966 zl!343)))) (validRegex!7850 (h!70965 (exprs!5998 (h!70966 zl!343)))))))

(assert (=> bs!1531455 m!7011948))

(assert (=> b!6175162 d!1935809))

(declare-fun b_lambda!235045 () Bool)

(assert (= b_lambda!235033 (or d!1935291 b_lambda!235045)))

(declare-fun bs!1531456 () Bool)

(declare-fun d!1935811 () Bool)

(assert (= bs!1531456 (and d!1935811 d!1935291)))

(assert (=> bs!1531456 (= (dynLambda!25444 lambda!337058 (h!70965 (unfocusZipperList!1535 zl!343))) (validRegex!7850 (h!70965 (unfocusZipperList!1535 zl!343))))))

(declare-fun m!7011950 () Bool)

(assert (=> bs!1531456 m!7011950))

(assert (=> b!6175384 d!1935811))

(declare-fun b_lambda!235047 () Bool)

(assert (= b_lambda!235039 (or d!1935355 b_lambda!235047)))

(declare-fun bs!1531457 () Bool)

(declare-fun d!1935813 () Bool)

(assert (= bs!1531457 (and d!1935813 d!1935355)))

(assert (=> bs!1531457 (= (dynLambda!25444 lambda!337073 (h!70965 lt!2337804)) (validRegex!7850 (h!70965 lt!2337804)))))

(declare-fun m!7011952 () Bool)

(assert (=> bs!1531457 m!7011952))

(assert (=> b!6175694 d!1935813))

(declare-fun b_lambda!235049 () Bool)

(assert (= b_lambda!235023 (or d!1935293 b_lambda!235049)))

(declare-fun bs!1531458 () Bool)

(declare-fun d!1935815 () Bool)

(assert (= bs!1531458 (and d!1935815 d!1935293)))

(assert (=> bs!1531458 (= (dynLambda!25444 lambda!337061 (h!70965 lt!2337960)) (validRegex!7850 (h!70965 lt!2337960)))))

(declare-fun m!7011954 () Bool)

(assert (=> bs!1531458 m!7011954))

(assert (=> b!6175262 d!1935815))

(declare-fun b_lambda!235051 () Bool)

(assert (= b_lambda!235027 (or d!1935349 b_lambda!235051)))

(declare-fun bs!1531459 () Bool)

(declare-fun d!1935817 () Bool)

(assert (= bs!1531459 (and d!1935817 d!1935349)))

(assert (=> bs!1531459 (= (dynLambda!25444 lambda!337072 (h!70965 (exprs!5998 lt!2337815))) (validRegex!7850 (h!70965 (exprs!5998 lt!2337815))))))

(declare-fun m!7011956 () Bool)

(assert (=> bs!1531459 m!7011956))

(assert (=> b!6175280 d!1935817))

(declare-fun b_lambda!235053 () Bool)

(assert (= b_lambda!235037 (or b!6174141 b_lambda!235053)))

(assert (=> d!1935757 d!1935359))

(declare-fun b_lambda!235055 () Bool)

(assert (= b_lambda!235025 (or b!6174141 b_lambda!235055)))

(assert (=> d!1935575 d!1935361))

(declare-fun b_lambda!235057 () Bool)

(assert (= b_lambda!235029 (or b!6174141 b_lambda!235057)))

(assert (=> d!1935605 d!1935357))

(declare-fun b_lambda!235059 () Bool)

(assert (= b_lambda!235035 (or d!1935287 b_lambda!235059)))

(declare-fun bs!1531460 () Bool)

(declare-fun d!1935819 () Bool)

(assert (= bs!1531460 (and d!1935819 d!1935287)))

(assert (=> bs!1531460 (= (dynLambda!25444 lambda!337055 (h!70965 (exprs!5998 setElem!41861))) (validRegex!7850 (h!70965 (exprs!5998 setElem!41861))))))

(declare-fun m!7011958 () Bool)

(assert (=> bs!1531460 m!7011958))

(assert (=> b!6175444 d!1935819))

(push 1)

(assert (not d!1935687))

(assert (not b!6175787))

(assert (not b_lambda!235047))

(assert (not b!6175511))

(assert (not bm!515319))

(assert (not b!6175663))

(assert (not b!6175408))

(assert (not d!1935517))

(assert (not b!6175802))

(assert (not bm!515353))

(assert (not d!1935505))

(assert (not b!6175283))

(assert (not bm!515377))

(assert (not d!1935675))

(assert (not d!1935539))

(assert (not b!6175386))

(assert (not b!6175252))

(assert (not b!6175322))

(assert (not bm!515302))

(assert (not b!6175670))

(assert (not bm!515318))

(assert (not d!1935497))

(assert (not b!6175218))

(assert (not b!6175264))

(assert (not b!6175165))

(assert (not bm!515390))

(assert (not b_lambda!235053))

(assert (not b!6175575))

(assert (not b!6175664))

(assert (not b!6175584))

(assert (not b!6175281))

(assert (not b!6175695))

(assert (not b!6175362))

(assert (not b!6175545))

(assert (not b!6175547))

(assert (not bm!515394))

(assert (not d!1935571))

(assert (not d!1935613))

(assert (not bm!515333))

(assert (not bm!515378))

(assert (not b!6175807))

(assert (not d!1935715))

(assert (not b!6175682))

(assert (not b!6175790))

(assert (not d!1935573))

(assert (not d!1935567))

(assert (not d!1935485))

(assert (not b!6175710))

(assert (not bm!515386))

(assert (not bm!515272))

(assert (not b!6175382))

(assert (not b!6175229))

(assert (not b!6175462))

(assert (not b!6175814))

(assert (not b!6175741))

(assert (not b!6175756))

(assert (not d!1935707))

(assert (not b!6175260))

(assert (not bm!515265))

(assert (not b!6175609))

(assert (not b!6175665))

(assert (not d!1935709))

(assert (not b!6175613))

(assert (not b_lambda!235057))

(assert (not bm!515332))

(assert (not d!1935761))

(assert (not b!6175169))

(assert (not b!6175477))

(assert (not bm!515367))

(assert (not bs!1531457))

(assert (not b!6175803))

(assert (not b!6175747))

(assert (not bm!515314))

(assert (not d!1935705))

(assert (not b!6175822))

(assert (not d!1935673))

(assert (not b!6175627))

(assert (not d!1935577))

(assert (not b!6175623))

(assert (not b!6175615))

(assert (not bm!515313))

(assert (not b!6175332))

(assert (not d!1935541))

(assert (not bm!515269))

(assert (not d!1935581))

(assert (not b!6175810))

(assert (not bm!515350))

(assert (not bm!515328))

(assert (not b!6175402))

(assert (not b!6175572))

(assert (not b!6175723))

(assert (not d!1935797))

(assert (not b!6175468))

(assert (not b!6175732))

(assert (not b!6175719))

(assert (not b!6175800))

(assert (not b!6175812))

(assert (not b!6175187))

(assert (not bs!1531456))

(assert (not bm!515307))

(assert (not d!1935775))

(assert (not b!6175733))

(assert (not b!6175792))

(assert (not b!6175684))

(assert (not b!6175435))

(assert (not b!6175717))

(assert (not b!6175778))

(assert (not b!6175735))

(assert (not d!1935701))

(assert (not d!1935785))

(assert (not b!6175620))

(assert (not b!6175668))

(assert (not d!1935619))

(assert (not d!1935795))

(assert (not bm!515282))

(assert (not b!6175720))

(assert (not bm!515281))

(assert (not b!6175786))

(assert (not b!6175795))

(assert (not b!6175767))

(assert (not b!6175777))

(assert (not b!6175617))

(assert (not b!6175774))

(assert (not bm!515373))

(assert (not d!1935689))

(assert (not b!6175311))

(assert (not b!6175612))

(assert (not b!6175309))

(assert (not b!6175698))

(assert (not b!6175263))

(assert (not bm!515375))

(assert (not b!6175811))

(assert (not b!6175410))

(assert (not bm!515295))

(assert (not b!6175647))

(assert (not d!1935667))

(assert (not b!6175350))

(assert (not b!6175727))

(assert (not b!6175478))

(assert (not b!6175521))

(assert (not d!1935651))

(assert (not bm!515357))

(assert (not bm!515336))

(assert (not b!6175284))

(assert (not bm!515358))

(assert (not d!1935671))

(assert (not b!6175737))

(assert (not bm!515317))

(assert (not d!1935759))

(assert (not bm!515369))

(assert (not b_lambda!235055))

(assert (not b!6175420))

(assert (not b!6175773))

(assert (not bm!515339))

(assert (not bm!515297))

(assert (not b!6175624))

(assert (not d!1935789))

(assert (not b!6175725))

(assert (not b!6175279))

(assert (not d!1935589))

(assert (not b!6175344))

(assert (not bs!1531455))

(assert (not bm!515326))

(assert (not b!6175346))

(assert (not b!6175275))

(assert (not b!6175469))

(assert (not b!6175671))

(assert (not d!1935695))

(assert (not bm!515382))

(assert (not b!6175782))

(assert (not b!6175662))

(assert (not bm!515266))

(assert (not d!1935779))

(assert (not bm!515278))

(assert (not d!1935561))

(assert (not d!1935641))

(assert (not b!6175820))

(assert (not setNonEmpty!41875))

(assert (not b!6175759))

(assert (not b!6175789))

(assert (not b!6175265))

(assert (not bm!515277))

(assert (not b!6175745))

(assert (not b!6175783))

(assert (not b_lambda!235043))

(assert (not bm!515275))

(assert (not b!6175739))

(assert (not b!6175227))

(assert (not b!6175359))

(assert (not b!6175804))

(assert (not b!6175661))

(assert (not b!6175672))

(assert (not b_lambda!235005))

(assert tp_is_empty!41481)

(assert (not b!6175771))

(assert (not d!1935683))

(assert (not d!1935803))

(assert (not bm!515374))

(assert (not b!6175225))

(assert (not b!6175479))

(assert (not b!6175334))

(assert (not b!6175597))

(assert (not b!6175711))

(assert (not b!6175779))

(assert (not bm!515296))

(assert (not b!6175675))

(assert (not b!6175480))

(assert (not b!6175299))

(assert (not d!1935617))

(assert (not b!6175171))

(assert (not bm!515383))

(assert (not b!6175285))

(assert (not b!6175401))

(assert (not bs!1531458))

(assert (not d!1935537))

(assert (not b!6175699))

(assert (not b_lambda!235045))

(assert (not b!6175587))

(assert (not bm!515323))

(assert (not d!1935655))

(assert (not b!6175794))

(assert (not b!6175599))

(assert (not d!1935755))

(assert (not b!6175164))

(assert (not b!6175707))

(assert (not b!6175766))

(assert (not b!6175282))

(assert (not b!6175736))

(assert (not b!6175749))

(assert (not b!6175277))

(assert (not b!6175754))

(assert (not b!6175269))

(assert (not b!6175508))

(assert (not d!1935509))

(assert (not b!6175785))

(assert (not b!6175523))

(assert (not b!6175679))

(assert (not d!1935535))

(assert (not b!6175365))

(assert (not d!1935737))

(assert (not b!6175461))

(assert (not bm!515370))

(assert (not b!6175762))

(assert (not b!6175513))

(assert (not b!6175361))

(assert (not b!6175526))

(assert (not b!6175799))

(assert (not b!6175781))

(assert (not b!6175813))

(assert (not d!1935723))

(assert (not b!6175268))

(assert (not d!1935777))

(assert (not d!1935643))

(assert (not b!6175753))

(assert (not b!6175291))

(assert (not d!1935627))

(assert (not b!6175709))

(assert (not b!6175289))

(assert (not d!1935669))

(assert (not b!6175290))

(assert (not d!1935591))

(assert (not bm!515327))

(assert (not b!6175757))

(assert (not b!6175499))

(assert (not b!6175791))

(assert (not b!6175476))

(assert (not b!6175549))

(assert (not b_lambda!235059))

(assert (not b!6175261))

(assert (not bm!515293))

(assert (not b!6175660))

(assert (not b!6175748))

(assert (not b!6175387))

(assert (not d!1935605))

(assert (not d!1935507))

(assert (not d!1935735))

(assert (not b!6175180))

(assert (not b!6175761))

(assert (not bm!515381))

(assert (not b!6175519))

(assert (not b!6175205))

(assert (not b!6175326))

(assert (not b!6175608))

(assert (not d!1935711))

(assert (not bm!515387))

(assert (not setNonEmpty!41876))

(assert (not b!6175705))

(assert (not b!6175447))

(assert (not b!6175631))

(assert (not b!6175219))

(assert (not bm!515366))

(assert (not bm!515311))

(assert (not d!1935543))

(assert (not d!1935781))

(assert (not b!6175619))

(assert (not b!6175765))

(assert (not d!1935783))

(assert (not b!6175714))

(assert (not b!6175729))

(assert (not d!1935511))

(assert (not b!6175740))

(assert (not bs!1531454))

(assert (not b!6175163))

(assert (not b!6175194))

(assert (not b!6175217))

(assert (not b!6175674))

(assert (not b!6175750))

(assert (not d!1935713))

(assert (not b!6175769))

(assert (not bm!515303))

(assert (not b!6175743))

(assert (not b!6175512))

(assert (not b!6175446))

(assert (not b!6175214))

(assert (not b!6175821))

(assert (not b!6175325))

(assert (not bm!515342))

(assert (not b!6175817))

(assert (not b!6175731))

(assert (not d!1935583))

(assert (not b!6175721))

(assert (not b!6175542))

(assert (not setNonEmpty!41873))

(assert (not b!6175483))

(assert (not b!6175712))

(assert (not b!6175292))

(assert (not bm!515352))

(assert (not b!6175716))

(assert (not b!6175728))

(assert (not b!6175796))

(assert (not bm!515338))

(assert (not b!6175336))

(assert (not bm!515344))

(assert (not b!6175651))

(assert (not d!1935685))

(assert (not bm!515322))

(assert (not b!6175775))

(assert (not bm!515308))

(assert (not b!6175683))

(assert (not d!1935767))

(assert (not bm!515349))

(assert (not b!6175681))

(assert (not d!1935533))

(assert (not b!6175294))

(assert (not bm!515355))

(assert (not b!6175168))

(assert (not d!1935751))

(assert (not b!6175170))

(assert (not b!6175374))

(assert (not bm!515292))

(assert (not d!1935753))

(assert (not b!6175692))

(assert (not d!1935805))

(assert (not d!1935527))

(assert (not d!1935555))

(assert (not b!6175390))

(assert (not b!6175818))

(assert (not b!6175445))

(assert (not b!6175267))

(assert (not bm!515304))

(assert (not b!6175824))

(assert (not bm!515372))

(assert (not b!6175816))

(assert (not b!6175424))

(assert (not bm!515298))

(assert (not b!6175752))

(assert (not bm!515299))

(assert (not bm!515371))

(assert (not bm!515300))

(assert (not d!1935799))

(assert (not d!1935629))

(assert (not bm!515345))

(assert (not b!6175191))

(assert (not bm!515329))

(assert (not b!6175676))

(assert (not b_lambda!235007))

(assert (not b!6175758))

(assert (not bs!1531459))

(assert (not b!6175622))

(assert (not b_lambda!235049))

(assert (not d!1935513))

(assert (not bm!515365))

(assert (not b!6175763))

(assert (not b!6175826))

(assert (not b!6175724))

(assert (not b!6175174))

(assert (not b_lambda!235041))

(assert (not b!6175412))

(assert (not b!6175673))

(assert (not b!6175385))

(assert (not b_lambda!235051))

(assert (not b!6175715))

(assert (not setNonEmpty!41874))

(assert (not bm!515348))

(assert (not b!6175360))

(assert (not bm!515271))

(assert (not b!6175324))

(assert (not b!6175400))

(assert (not d!1935749))

(assert (not b!6175808))

(assert (not b!6175149))

(assert (not bm!515360))

(assert (not d!1935499))

(assert (not d!1935757))

(assert (not b!6175798))

(assert (not b!6175347))

(assert (not b!6175825))

(assert (not d!1935623))

(assert (not b!6175770))

(assert (not b!6175319))

(assert (not d!1935677))

(assert (not bm!515392))

(assert (not b!6175697))

(assert (not b!6175185))

(assert (not bm!515391))

(assert (not b!6175806))

(assert (not b!6175744))

(assert (not b!6175296))

(assert (not bs!1531460))

(assert (not bm!515368))

(assert (not d!1935625))

(assert (not b_lambda!235003))

(assert (not d!1935575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

