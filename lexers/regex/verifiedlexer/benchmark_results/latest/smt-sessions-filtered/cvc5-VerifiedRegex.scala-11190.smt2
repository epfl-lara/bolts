; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!583670 () Bool)

(assert start!583670)

(declare-fun b!5633798 () Bool)

(assert (=> b!5633798 true))

(assert (=> b!5633798 true))

(declare-fun lambda!302826 () Int)

(declare-fun lambda!302825 () Int)

(assert (=> b!5633798 (not (= lambda!302826 lambda!302825))))

(assert (=> b!5633798 true))

(assert (=> b!5633798 true))

(declare-fun b!5633806 () Bool)

(assert (=> b!5633806 true))

(declare-fun b!5633777 () Bool)

(declare-fun res!2385573 () Bool)

(declare-fun e!3472152 () Bool)

(assert (=> b!5633777 (=> (not res!2385573) (not e!3472152))))

(declare-datatypes ((C!31522 0))(
  ( (C!31523 (val!25463 Int)) )
))
(declare-datatypes ((Regex!15626 0))(
  ( (ElementMatch!15626 (c!989546 C!31522)) (Concat!24471 (regOne!31764 Regex!15626) (regTwo!31764 Regex!15626)) (EmptyExpr!15626) (Star!15626 (reg!15955 Regex!15626)) (EmptyLang!15626) (Union!15626 (regOne!31765 Regex!15626) (regTwo!31765 Regex!15626)) )
))
(declare-fun r!7292 () Regex!15626)

(declare-datatypes ((List!63177 0))(
  ( (Nil!63053) (Cons!63053 (h!69501 Regex!15626) (t!376473 List!63177)) )
))
(declare-datatypes ((Context!10020 0))(
  ( (Context!10021 (exprs!5510 List!63177)) )
))
(declare-datatypes ((List!63178 0))(
  ( (Nil!63054) (Cons!63054 (h!69502 Context!10020) (t!376474 List!63178)) )
))
(declare-fun zl!343 () List!63178)

(declare-fun unfocusZipper!1368 (List!63178) Regex!15626)

(assert (=> b!5633777 (= res!2385573 (= r!7292 (unfocusZipper!1368 zl!343)))))

(declare-fun b!5633778 () Bool)

(declare-fun res!2385568 () Bool)

(declare-fun e!3472151 () Bool)

(assert (=> b!5633778 (=> res!2385568 e!3472151)))

(assert (=> b!5633778 (= res!2385568 (or (is-EmptyExpr!15626 r!7292) (is-EmptyLang!15626 r!7292) (is-ElementMatch!15626 r!7292) (is-Union!15626 r!7292) (not (is-Concat!24471 r!7292))))))

(declare-fun b!5633779 () Bool)

(declare-fun e!3472162 () Bool)

(declare-fun lt!2262914 () (Set Context!10020))

(declare-datatypes ((List!63179 0))(
  ( (Nil!63055) (Cons!63055 (h!69503 C!31522) (t!376475 List!63179)) )
))
(declare-fun s!2326 () List!63179)

(declare-fun matchZipper!1764 ((Set Context!10020) List!63179) Bool)

(assert (=> b!5633779 (= e!3472162 (not (matchZipper!1764 lt!2262914 (t!376475 s!2326))))))

(declare-fun setElem!37645 () Context!10020)

(declare-fun setNonEmpty!37645 () Bool)

(declare-fun tp!1559270 () Bool)

(declare-fun setRes!37645 () Bool)

(declare-fun e!3472157 () Bool)

(declare-fun inv!82313 (Context!10020) Bool)

(assert (=> setNonEmpty!37645 (= setRes!37645 (and tp!1559270 (inv!82313 setElem!37645) e!3472157))))

(declare-fun z!1189 () (Set Context!10020))

(declare-fun setRest!37645 () (Set Context!10020))

(assert (=> setNonEmpty!37645 (= z!1189 (set.union (set.insert setElem!37645 (as set.empty (Set Context!10020))) setRest!37645))))

(declare-fun b!5633780 () Bool)

(declare-fun tp!1559269 () Bool)

(assert (=> b!5633780 (= e!3472157 tp!1559269)))

(declare-fun b!5633781 () Bool)

(declare-fun e!3472163 () Bool)

(declare-fun tp!1559271 () Bool)

(assert (=> b!5633781 (= e!3472163 tp!1559271)))

(declare-fun b!5633782 () Bool)

(declare-datatypes ((Unit!156036 0))(
  ( (Unit!156037) )
))
(declare-fun e!3472156 () Unit!156036)

(declare-fun Unit!156038 () Unit!156036)

(assert (=> b!5633782 (= e!3472156 Unit!156038)))

(declare-fun lt!2262928 () Unit!156036)

(declare-fun lt!2262926 () (Set Context!10020))

(declare-fun lt!2262899 () (Set Context!10020))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!651 ((Set Context!10020) (Set Context!10020) List!63179) Unit!156036)

(assert (=> b!5633782 (= lt!2262928 (lemmaZipperConcatMatchesSameAsBothZippers!651 lt!2262926 lt!2262899 (t!376475 s!2326)))))

(declare-fun res!2385567 () Bool)

(assert (=> b!5633782 (= res!2385567 (matchZipper!1764 lt!2262926 (t!376475 s!2326)))))

(declare-fun e!3472149 () Bool)

(assert (=> b!5633782 (=> res!2385567 e!3472149)))

(assert (=> b!5633782 (= (matchZipper!1764 (set.union lt!2262926 lt!2262899) (t!376475 s!2326)) e!3472149)))

(declare-fun b!5633783 () Bool)

(declare-fun tp!1559272 () Bool)

(declare-fun tp!1559274 () Bool)

(assert (=> b!5633783 (= e!3472163 (and tp!1559272 tp!1559274))))

(declare-fun b!5633784 () Bool)

(declare-fun e!3472147 () Bool)

(declare-fun lt!2262927 () (Set Context!10020))

(declare-fun derivationStepZipper!1713 ((Set Context!10020) C!31522) (Set Context!10020))

(assert (=> b!5633784 (= e!3472147 (not (matchZipper!1764 (derivationStepZipper!1713 lt!2262927 (h!69503 s!2326)) (t!376475 s!2326))))))

(declare-fun b!5633785 () Bool)

(declare-fun e!3472159 () Bool)

(declare-fun e!3472150 () Bool)

(assert (=> b!5633785 (= e!3472159 e!3472150)))

(declare-fun res!2385566 () Bool)

(assert (=> b!5633785 (=> res!2385566 e!3472150)))

(declare-fun lt!2262920 () (Set Context!10020))

(assert (=> b!5633785 (= res!2385566 (not (= lt!2262926 lt!2262920)))))

(declare-fun lt!2262918 () (Set Context!10020))

(assert (=> b!5633785 (= lt!2262920 (set.union lt!2262918 lt!2262914))))

(declare-fun lt!2262923 () Context!10020)

(declare-fun derivationStepZipperDown!968 (Regex!15626 Context!10020 C!31522) (Set Context!10020))

(assert (=> b!5633785 (= lt!2262914 (derivationStepZipperDown!968 (regTwo!31764 (regOne!31764 r!7292)) lt!2262923 (h!69503 s!2326)))))

(declare-fun lt!2262907 () Context!10020)

(assert (=> b!5633785 (= lt!2262918 (derivationStepZipperDown!968 (regOne!31764 (regOne!31764 r!7292)) lt!2262907 (h!69503 s!2326)))))

(declare-fun lt!2262915 () List!63177)

(assert (=> b!5633785 (= lt!2262907 (Context!10021 lt!2262915))))

(assert (=> b!5633785 (= lt!2262915 (Cons!63053 (regTwo!31764 (regOne!31764 r!7292)) (t!376473 (exprs!5510 (h!69502 zl!343)))))))

(declare-fun b!5633786 () Bool)

(declare-fun tp_is_empty!40505 () Bool)

(assert (=> b!5633786 (= e!3472163 tp_is_empty!40505)))

(declare-fun b!5633787 () Bool)

(declare-fun e!3472160 () Bool)

(declare-fun tp!1559268 () Bool)

(assert (=> b!5633787 (= e!3472160 tp!1559268)))

(declare-fun b!5633788 () Bool)

(assert (=> b!5633788 (= e!3472152 (not e!3472151))))

(declare-fun res!2385586 () Bool)

(assert (=> b!5633788 (=> res!2385586 e!3472151)))

(assert (=> b!5633788 (= res!2385586 (not (is-Cons!63054 zl!343)))))

(declare-fun lt!2262917 () Bool)

(declare-fun matchRSpec!2729 (Regex!15626 List!63179) Bool)

(assert (=> b!5633788 (= lt!2262917 (matchRSpec!2729 r!7292 s!2326))))

(declare-fun matchR!7811 (Regex!15626 List!63179) Bool)

(assert (=> b!5633788 (= lt!2262917 (matchR!7811 r!7292 s!2326))))

(declare-fun lt!2262919 () Unit!156036)

(declare-fun mainMatchTheorem!2729 (Regex!15626 List!63179) Unit!156036)

(assert (=> b!5633788 (= lt!2262919 (mainMatchTheorem!2729 r!7292 s!2326))))

(declare-fun res!2385580 () Bool)

(assert (=> start!583670 (=> (not res!2385580) (not e!3472152))))

(declare-fun validRegex!7362 (Regex!15626) Bool)

(assert (=> start!583670 (= res!2385580 (validRegex!7362 r!7292))))

(assert (=> start!583670 e!3472152))

(assert (=> start!583670 e!3472163))

(declare-fun condSetEmpty!37645 () Bool)

(assert (=> start!583670 (= condSetEmpty!37645 (= z!1189 (as set.empty (Set Context!10020))))))

(assert (=> start!583670 setRes!37645))

(declare-fun e!3472154 () Bool)

(assert (=> start!583670 e!3472154))

(declare-fun e!3472165 () Bool)

(assert (=> start!583670 e!3472165))

(declare-fun b!5633789 () Bool)

(declare-fun res!2385565 () Bool)

(assert (=> b!5633789 (=> res!2385565 e!3472151)))

(declare-fun isEmpty!34895 (List!63178) Bool)

(assert (=> b!5633789 (= res!2385565 (not (isEmpty!34895 (t!376474 zl!343))))))

(declare-fun b!5633790 () Bool)

(declare-fun e!3472148 () Bool)

(assert (=> b!5633790 (= e!3472150 e!3472148)))

(declare-fun res!2385579 () Bool)

(assert (=> b!5633790 (=> res!2385579 e!3472148)))

(assert (=> b!5633790 (= res!2385579 e!3472162)))

(declare-fun res!2385575 () Bool)

(assert (=> b!5633790 (=> (not res!2385575) (not e!3472162))))

(declare-fun lt!2262909 () Bool)

(declare-fun lt!2262901 () Bool)

(assert (=> b!5633790 (= res!2385575 (not (= lt!2262909 lt!2262901)))))

(assert (=> b!5633790 (= lt!2262909 (matchZipper!1764 lt!2262926 (t!376475 s!2326)))))

(declare-fun e!3472161 () Bool)

(assert (=> b!5633790 (= (matchZipper!1764 lt!2262920 (t!376475 s!2326)) e!3472161)))

(declare-fun res!2385569 () Bool)

(assert (=> b!5633790 (=> res!2385569 e!3472161)))

(assert (=> b!5633790 (= res!2385569 lt!2262901)))

(assert (=> b!5633790 (= lt!2262901 (matchZipper!1764 lt!2262918 (t!376475 s!2326)))))

(declare-fun lt!2262900 () Unit!156036)

(assert (=> b!5633790 (= lt!2262900 (lemmaZipperConcatMatchesSameAsBothZippers!651 lt!2262918 lt!2262914 (t!376475 s!2326)))))

(declare-fun b!5633791 () Bool)

(declare-fun res!2385582 () Bool)

(assert (=> b!5633791 (=> res!2385582 e!3472151)))

(assert (=> b!5633791 (= res!2385582 (not (is-Cons!63053 (exprs!5510 (h!69502 zl!343)))))))

(declare-fun b!5633792 () Bool)

(assert (=> b!5633792 (= e!3472161 (matchZipper!1764 lt!2262914 (t!376475 s!2326)))))

(declare-fun b!5633793 () Bool)

(declare-fun e!3472164 () Bool)

(declare-fun e!3472153 () Bool)

(assert (=> b!5633793 (= e!3472164 e!3472153)))

(declare-fun res!2385578 () Bool)

(assert (=> b!5633793 (=> res!2385578 e!3472153)))

(assert (=> b!5633793 (= res!2385578 e!3472147)))

(declare-fun res!2385563 () Bool)

(assert (=> b!5633793 (=> (not res!2385563) (not e!3472147))))

(declare-fun lt!2262911 () (Set Context!10020))

(assert (=> b!5633793 (= res!2385563 (not (= lt!2262909 (matchZipper!1764 lt!2262911 (t!376475 s!2326)))))))

(declare-fun lt!2262906 () (Set Context!10020))

(declare-fun e!3472155 () Bool)

(assert (=> b!5633793 (= (matchZipper!1764 lt!2262906 (t!376475 s!2326)) e!3472155)))

(declare-fun res!2385585 () Bool)

(assert (=> b!5633793 (=> res!2385585 e!3472155)))

(assert (=> b!5633793 (= res!2385585 lt!2262901)))

(declare-fun lt!2262904 () Unit!156036)

(declare-fun lt!2262913 () (Set Context!10020))

(assert (=> b!5633793 (= lt!2262904 (lemmaZipperConcatMatchesSameAsBothZippers!651 lt!2262918 lt!2262913 (t!376475 s!2326)))))

(declare-fun lambda!302827 () Int)

(declare-fun flatMap!1239 ((Set Context!10020) Int) (Set Context!10020))

(declare-fun derivationStepZipperUp!894 (Context!10020 C!31522) (Set Context!10020))

(assert (=> b!5633793 (= (flatMap!1239 lt!2262927 lambda!302827) (derivationStepZipperUp!894 lt!2262907 (h!69503 s!2326)))))

(declare-fun lt!2262903 () Unit!156036)

(declare-fun lemmaFlatMapOnSingletonSet!771 ((Set Context!10020) Context!10020 Int) Unit!156036)

(assert (=> b!5633793 (= lt!2262903 (lemmaFlatMapOnSingletonSet!771 lt!2262927 lt!2262907 lambda!302827))))

(declare-fun b!5633794 () Bool)

(declare-fun res!2385576 () Bool)

(assert (=> b!5633794 (=> (not res!2385576) (not e!3472152))))

(declare-fun toList!9410 ((Set Context!10020)) List!63178)

(assert (=> b!5633794 (= res!2385576 (= (toList!9410 z!1189) zl!343))))

(declare-fun b!5633795 () Bool)

(assert (=> b!5633795 (= e!3472155 (matchZipper!1764 lt!2262913 (t!376475 s!2326)))))

(declare-fun b!5633796 () Bool)

(declare-fun tp!1559275 () Bool)

(assert (=> b!5633796 (= e!3472165 (and tp_is_empty!40505 tp!1559275))))

(declare-fun b!5633797 () Bool)

(declare-fun res!2385583 () Bool)

(assert (=> b!5633797 (=> res!2385583 e!3472151)))

(declare-fun generalisedUnion!1489 (List!63177) Regex!15626)

(declare-fun unfocusZipperList!1054 (List!63178) List!63177)

(assert (=> b!5633797 (= res!2385583 (not (= r!7292 (generalisedUnion!1489 (unfocusZipperList!1054 zl!343)))))))

(declare-fun e!3472158 () Bool)

(assert (=> b!5633798 (= e!3472151 e!3472158)))

(declare-fun res!2385570 () Bool)

(assert (=> b!5633798 (=> res!2385570 e!3472158)))

(declare-fun lt!2262908 () Bool)

(assert (=> b!5633798 (= res!2385570 (or (not (= lt!2262917 lt!2262908)) (is-Nil!63055 s!2326)))))

(declare-fun Exists!2726 (Int) Bool)

(assert (=> b!5633798 (= (Exists!2726 lambda!302825) (Exists!2726 lambda!302826))))

(declare-fun lt!2262925 () Unit!156036)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1355 (Regex!15626 Regex!15626 List!63179) Unit!156036)

(assert (=> b!5633798 (= lt!2262925 (lemmaExistCutMatchRandMatchRSpecEquivalent!1355 (regOne!31764 r!7292) (regTwo!31764 r!7292) s!2326))))

(assert (=> b!5633798 (= lt!2262908 (Exists!2726 lambda!302825))))

(declare-datatypes ((tuple2!65446 0))(
  ( (tuple2!65447 (_1!36026 List!63179) (_2!36026 List!63179)) )
))
(declare-datatypes ((Option!15635 0))(
  ( (None!15634) (Some!15634 (v!51679 tuple2!65446)) )
))
(declare-fun isDefined!12338 (Option!15635) Bool)

(declare-fun findConcatSeparation!2049 (Regex!15626 Regex!15626 List!63179 List!63179 List!63179) Option!15635)

(assert (=> b!5633798 (= lt!2262908 (isDefined!12338 (findConcatSeparation!2049 (regOne!31764 r!7292) (regTwo!31764 r!7292) Nil!63055 s!2326 s!2326)))))

(declare-fun lt!2262910 () Unit!156036)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1813 (Regex!15626 Regex!15626 List!63179) Unit!156036)

(assert (=> b!5633798 (= lt!2262910 (lemmaFindConcatSeparationEquivalentToExists!1813 (regOne!31764 r!7292) (regTwo!31764 r!7292) s!2326))))

(declare-fun b!5633799 () Bool)

(declare-fun Unit!156039 () Unit!156036)

(assert (=> b!5633799 (= e!3472156 Unit!156039)))

(declare-fun b!5633800 () Bool)

(declare-fun res!2385577 () Bool)

(assert (=> b!5633800 (=> res!2385577 e!3472153)))

(declare-fun lt!2262924 () Context!10020)

(declare-fun contextDepthTotal!211 (Context!10020) Int)

(assert (=> b!5633800 (= res!2385577 (>= (contextDepthTotal!211 lt!2262924) (contextDepthTotal!211 (h!69502 zl!343))))))

(declare-fun b!5633801 () Bool)

(declare-fun res!2385564 () Bool)

(assert (=> b!5633801 (=> res!2385564 e!3472158)))

(declare-fun isEmpty!34896 (List!63177) Bool)

(assert (=> b!5633801 (= res!2385564 (isEmpty!34896 (t!376473 (exprs!5510 (h!69502 zl!343)))))))

(declare-fun b!5633802 () Bool)

(assert (=> b!5633802 (= e!3472149 (matchZipper!1764 lt!2262899 (t!376475 s!2326)))))

(declare-fun b!5633803 () Bool)

(declare-fun res!2385574 () Bool)

(assert (=> b!5633803 (=> res!2385574 e!3472151)))

(declare-fun generalisedConcat!1241 (List!63177) Regex!15626)

(assert (=> b!5633803 (= res!2385574 (not (= r!7292 (generalisedConcat!1241 (exprs!5510 (h!69502 zl!343))))))))

(declare-fun b!5633804 () Bool)

(declare-fun zipperDepthTotal!235 (List!63178) Int)

(assert (=> b!5633804 (= e!3472153 (< (zipperDepthTotal!235 (Cons!63054 lt!2262924 Nil!63054)) (zipperDepthTotal!235 zl!343)))))

(declare-fun b!5633805 () Bool)

(assert (=> b!5633805 (= e!3472148 e!3472164)))

(declare-fun res!2385572 () Bool)

(assert (=> b!5633805 (=> res!2385572 e!3472164)))

(assert (=> b!5633805 (= res!2385572 (not (= lt!2262911 lt!2262906)))))

(assert (=> b!5633805 (= lt!2262906 (set.union lt!2262918 lt!2262913))))

(assert (=> b!5633805 (= lt!2262913 (derivationStepZipperUp!894 lt!2262907 (h!69503 s!2326)))))

(declare-fun lt!2262921 () (Set Context!10020))

(assert (=> b!5633805 (= (flatMap!1239 lt!2262921 lambda!302827) (derivationStepZipperUp!894 lt!2262924 (h!69503 s!2326)))))

(declare-fun lt!2262922 () Unit!156036)

(assert (=> b!5633805 (= lt!2262922 (lemmaFlatMapOnSingletonSet!771 lt!2262921 lt!2262924 lambda!302827))))

(declare-fun lt!2262916 () (Set Context!10020))

(assert (=> b!5633805 (= lt!2262916 (derivationStepZipperUp!894 lt!2262924 (h!69503 s!2326)))))

(assert (=> b!5633805 (= lt!2262911 (derivationStepZipper!1713 lt!2262921 (h!69503 s!2326)))))

(assert (=> b!5633805 (= lt!2262927 (set.insert lt!2262907 (as set.empty (Set Context!10020))))))

(assert (=> b!5633805 (= lt!2262921 (set.insert lt!2262924 (as set.empty (Set Context!10020))))))

(assert (=> b!5633805 (= lt!2262924 (Context!10021 (Cons!63053 (regOne!31764 (regOne!31764 r!7292)) lt!2262915)))))

(assert (=> b!5633806 (= e!3472158 e!3472159)))

(declare-fun res!2385581 () Bool)

(assert (=> b!5633806 (=> res!2385581 e!3472159)))

(assert (=> b!5633806 (= res!2385581 (or (and (is-ElementMatch!15626 (regOne!31764 r!7292)) (= (c!989546 (regOne!31764 r!7292)) (h!69503 s!2326))) (is-Union!15626 (regOne!31764 r!7292)) (not (is-Concat!24471 (regOne!31764 r!7292)))))))

(declare-fun lt!2262902 () Unit!156036)

(assert (=> b!5633806 (= lt!2262902 e!3472156)))

(declare-fun c!989545 () Bool)

(declare-fun nullable!5658 (Regex!15626) Bool)

(assert (=> b!5633806 (= c!989545 (nullable!5658 (h!69501 (exprs!5510 (h!69502 zl!343)))))))

(assert (=> b!5633806 (= (flatMap!1239 z!1189 lambda!302827) (derivationStepZipperUp!894 (h!69502 zl!343) (h!69503 s!2326)))))

(declare-fun lt!2262912 () Unit!156036)

(assert (=> b!5633806 (= lt!2262912 (lemmaFlatMapOnSingletonSet!771 z!1189 (h!69502 zl!343) lambda!302827))))

(assert (=> b!5633806 (= lt!2262899 (derivationStepZipperUp!894 lt!2262923 (h!69503 s!2326)))))

(assert (=> b!5633806 (= lt!2262926 (derivationStepZipperDown!968 (h!69501 (exprs!5510 (h!69502 zl!343))) lt!2262923 (h!69503 s!2326)))))

(assert (=> b!5633806 (= lt!2262923 (Context!10021 (t!376473 (exprs!5510 (h!69502 zl!343)))))))

(declare-fun lt!2262905 () (Set Context!10020))

(assert (=> b!5633806 (= lt!2262905 (derivationStepZipperUp!894 (Context!10021 (Cons!63053 (h!69501 (exprs!5510 (h!69502 zl!343))) (t!376473 (exprs!5510 (h!69502 zl!343))))) (h!69503 s!2326)))))

(declare-fun setIsEmpty!37645 () Bool)

(assert (=> setIsEmpty!37645 setRes!37645))

(declare-fun b!5633807 () Bool)

(declare-fun tp!1559273 () Bool)

(declare-fun tp!1559276 () Bool)

(assert (=> b!5633807 (= e!3472163 (and tp!1559273 tp!1559276))))

(declare-fun b!5633808 () Bool)

(declare-fun res!2385584 () Bool)

(assert (=> b!5633808 (=> res!2385584 e!3472153)))

(assert (=> b!5633808 (= res!2385584 (not (= (exprs!5510 (h!69502 zl!343)) (Cons!63053 (Concat!24471 (regOne!31764 (regOne!31764 r!7292)) (regTwo!31764 (regOne!31764 r!7292))) (t!376473 (exprs!5510 (h!69502 zl!343)))))))))

(declare-fun b!5633809 () Bool)

(declare-fun res!2385571 () Bool)

(assert (=> b!5633809 (=> res!2385571 e!3472159)))

(assert (=> b!5633809 (= res!2385571 (not (nullable!5658 (regOne!31764 (regOne!31764 r!7292)))))))

(declare-fun b!5633810 () Bool)

(declare-fun tp!1559277 () Bool)

(assert (=> b!5633810 (= e!3472154 (and (inv!82313 (h!69502 zl!343)) e!3472160 tp!1559277))))

(assert (= (and start!583670 res!2385580) b!5633794))

(assert (= (and b!5633794 res!2385576) b!5633777))

(assert (= (and b!5633777 res!2385573) b!5633788))

(assert (= (and b!5633788 (not res!2385586)) b!5633789))

(assert (= (and b!5633789 (not res!2385565)) b!5633803))

(assert (= (and b!5633803 (not res!2385574)) b!5633791))

(assert (= (and b!5633791 (not res!2385582)) b!5633797))

(assert (= (and b!5633797 (not res!2385583)) b!5633778))

(assert (= (and b!5633778 (not res!2385568)) b!5633798))

(assert (= (and b!5633798 (not res!2385570)) b!5633801))

(assert (= (and b!5633801 (not res!2385564)) b!5633806))

(assert (= (and b!5633806 c!989545) b!5633782))

(assert (= (and b!5633806 (not c!989545)) b!5633799))

(assert (= (and b!5633782 (not res!2385567)) b!5633802))

(assert (= (and b!5633806 (not res!2385581)) b!5633809))

(assert (= (and b!5633809 (not res!2385571)) b!5633785))

(assert (= (and b!5633785 (not res!2385566)) b!5633790))

(assert (= (and b!5633790 (not res!2385569)) b!5633792))

(assert (= (and b!5633790 res!2385575) b!5633779))

(assert (= (and b!5633790 (not res!2385579)) b!5633805))

(assert (= (and b!5633805 (not res!2385572)) b!5633793))

(assert (= (and b!5633793 (not res!2385585)) b!5633795))

(assert (= (and b!5633793 res!2385563) b!5633784))

(assert (= (and b!5633793 (not res!2385578)) b!5633808))

(assert (= (and b!5633808 (not res!2385584)) b!5633800))

(assert (= (and b!5633800 (not res!2385577)) b!5633804))

(assert (= (and start!583670 (is-ElementMatch!15626 r!7292)) b!5633786))

(assert (= (and start!583670 (is-Concat!24471 r!7292)) b!5633783))

(assert (= (and start!583670 (is-Star!15626 r!7292)) b!5633781))

(assert (= (and start!583670 (is-Union!15626 r!7292)) b!5633807))

(assert (= (and start!583670 condSetEmpty!37645) setIsEmpty!37645))

(assert (= (and start!583670 (not condSetEmpty!37645)) setNonEmpty!37645))

(assert (= setNonEmpty!37645 b!5633780))

(assert (= b!5633810 b!5633787))

(assert (= (and start!583670 (is-Cons!63054 zl!343)) b!5633810))

(assert (= (and start!583670 (is-Cons!63055 s!2326)) b!5633796))

(declare-fun m!6604588 () Bool)

(assert (=> b!5633789 m!6604588))

(declare-fun m!6604590 () Bool)

(assert (=> b!5633785 m!6604590))

(declare-fun m!6604592 () Bool)

(assert (=> b!5633785 m!6604592))

(declare-fun m!6604594 () Bool)

(assert (=> b!5633804 m!6604594))

(declare-fun m!6604596 () Bool)

(assert (=> b!5633804 m!6604596))

(declare-fun m!6604598 () Bool)

(assert (=> b!5633793 m!6604598))

(declare-fun m!6604600 () Bool)

(assert (=> b!5633793 m!6604600))

(declare-fun m!6604602 () Bool)

(assert (=> b!5633793 m!6604602))

(declare-fun m!6604604 () Bool)

(assert (=> b!5633793 m!6604604))

(declare-fun m!6604606 () Bool)

(assert (=> b!5633793 m!6604606))

(declare-fun m!6604608 () Bool)

(assert (=> b!5633793 m!6604608))

(declare-fun m!6604610 () Bool)

(assert (=> b!5633809 m!6604610))

(declare-fun m!6604612 () Bool)

(assert (=> b!5633802 m!6604612))

(declare-fun m!6604614 () Bool)

(assert (=> b!5633792 m!6604614))

(declare-fun m!6604616 () Bool)

(assert (=> b!5633810 m!6604616))

(declare-fun m!6604618 () Bool)

(assert (=> b!5633782 m!6604618))

(declare-fun m!6604620 () Bool)

(assert (=> b!5633782 m!6604620))

(declare-fun m!6604622 () Bool)

(assert (=> b!5633782 m!6604622))

(declare-fun m!6604624 () Bool)

(assert (=> b!5633805 m!6604624))

(declare-fun m!6604626 () Bool)

(assert (=> b!5633805 m!6604626))

(declare-fun m!6604628 () Bool)

(assert (=> b!5633805 m!6604628))

(declare-fun m!6604630 () Bool)

(assert (=> b!5633805 m!6604630))

(declare-fun m!6604632 () Bool)

(assert (=> b!5633805 m!6604632))

(assert (=> b!5633805 m!6604598))

(declare-fun m!6604634 () Bool)

(assert (=> b!5633805 m!6604634))

(declare-fun m!6604636 () Bool)

(assert (=> b!5633803 m!6604636))

(assert (=> b!5633779 m!6604614))

(declare-fun m!6604638 () Bool)

(assert (=> start!583670 m!6604638))

(declare-fun m!6604640 () Bool)

(assert (=> b!5633806 m!6604640))

(declare-fun m!6604642 () Bool)

(assert (=> b!5633806 m!6604642))

(declare-fun m!6604644 () Bool)

(assert (=> b!5633806 m!6604644))

(declare-fun m!6604646 () Bool)

(assert (=> b!5633806 m!6604646))

(declare-fun m!6604648 () Bool)

(assert (=> b!5633806 m!6604648))

(declare-fun m!6604650 () Bool)

(assert (=> b!5633806 m!6604650))

(declare-fun m!6604652 () Bool)

(assert (=> b!5633806 m!6604652))

(declare-fun m!6604654 () Bool)

(assert (=> setNonEmpty!37645 m!6604654))

(declare-fun m!6604656 () Bool)

(assert (=> b!5633777 m!6604656))

(declare-fun m!6604658 () Bool)

(assert (=> b!5633797 m!6604658))

(assert (=> b!5633797 m!6604658))

(declare-fun m!6604660 () Bool)

(assert (=> b!5633797 m!6604660))

(declare-fun m!6604662 () Bool)

(assert (=> b!5633801 m!6604662))

(declare-fun m!6604664 () Bool)

(assert (=> b!5633784 m!6604664))

(assert (=> b!5633784 m!6604664))

(declare-fun m!6604666 () Bool)

(assert (=> b!5633784 m!6604666))

(declare-fun m!6604668 () Bool)

(assert (=> b!5633795 m!6604668))

(declare-fun m!6604670 () Bool)

(assert (=> b!5633788 m!6604670))

(declare-fun m!6604672 () Bool)

(assert (=> b!5633788 m!6604672))

(declare-fun m!6604674 () Bool)

(assert (=> b!5633788 m!6604674))

(assert (=> b!5633790 m!6604620))

(declare-fun m!6604676 () Bool)

(assert (=> b!5633790 m!6604676))

(declare-fun m!6604678 () Bool)

(assert (=> b!5633790 m!6604678))

(declare-fun m!6604680 () Bool)

(assert (=> b!5633790 m!6604680))

(declare-fun m!6604682 () Bool)

(assert (=> b!5633794 m!6604682))

(declare-fun m!6604684 () Bool)

(assert (=> b!5633798 m!6604684))

(declare-fun m!6604686 () Bool)

(assert (=> b!5633798 m!6604686))

(declare-fun m!6604688 () Bool)

(assert (=> b!5633798 m!6604688))

(declare-fun m!6604690 () Bool)

(assert (=> b!5633798 m!6604690))

(assert (=> b!5633798 m!6604686))

(declare-fun m!6604692 () Bool)

(assert (=> b!5633798 m!6604692))

(assert (=> b!5633798 m!6604684))

(declare-fun m!6604694 () Bool)

(assert (=> b!5633798 m!6604694))

(declare-fun m!6604696 () Bool)

(assert (=> b!5633800 m!6604696))

(declare-fun m!6604698 () Bool)

(assert (=> b!5633800 m!6604698))

(push 1)

(assert (not b!5633806))

(assert (not b!5633801))

(assert (not b!5633802))

(assert (not b!5633792))

(assert (not b!5633777))

(assert (not b!5633781))

(assert (not b!5633794))

(assert (not b!5633784))

(assert (not b!5633800))

(assert (not b!5633804))

(assert (not b!5633810))

(assert (not b!5633790))

(assert (not b!5633780))

(assert (not b!5633793))

(assert (not b!5633798))

(assert (not b!5633779))

(assert (not b!5633788))

(assert (not b!5633787))

(assert (not b!5633785))

(assert (not b!5633783))

(assert (not b!5633782))

(assert (not b!5633803))

(assert (not start!583670))

(assert (not b!5633797))

(assert (not b!5633809))

(assert (not b!5633795))

(assert (not setNonEmpty!37645))

(assert tp_is_empty!40505)

(assert (not b!5633805))

(assert (not b!5633796))

(assert (not b!5633789))

(assert (not b!5633807))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5633955 () Bool)

(declare-fun e!3472242 () Option!15635)

(assert (=> b!5633955 (= e!3472242 None!15634)))

(declare-fun b!5633956 () Bool)

(declare-fun e!3472239 () Option!15635)

(assert (=> b!5633956 (= e!3472239 e!3472242)))

(declare-fun c!989562 () Bool)

(assert (=> b!5633956 (= c!989562 (is-Nil!63055 s!2326))))

(declare-fun b!5633957 () Bool)

(assert (=> b!5633957 (= e!3472239 (Some!15634 (tuple2!65447 Nil!63055 s!2326)))))

(declare-fun d!1779577 () Bool)

(declare-fun e!3472240 () Bool)

(assert (=> d!1779577 e!3472240))

(declare-fun res!2385683 () Bool)

(assert (=> d!1779577 (=> res!2385683 e!3472240)))

(declare-fun e!3472241 () Bool)

(assert (=> d!1779577 (= res!2385683 e!3472241)))

(declare-fun res!2385681 () Bool)

(assert (=> d!1779577 (=> (not res!2385681) (not e!3472241))))

(declare-fun lt!2263026 () Option!15635)

(assert (=> d!1779577 (= res!2385681 (isDefined!12338 lt!2263026))))

(assert (=> d!1779577 (= lt!2263026 e!3472239)))

(declare-fun c!989563 () Bool)

(declare-fun e!3472243 () Bool)

(assert (=> d!1779577 (= c!989563 e!3472243)))

(declare-fun res!2385682 () Bool)

(assert (=> d!1779577 (=> (not res!2385682) (not e!3472243))))

(assert (=> d!1779577 (= res!2385682 (matchR!7811 (regOne!31764 r!7292) Nil!63055))))

(assert (=> d!1779577 (validRegex!7362 (regOne!31764 r!7292))))

(assert (=> d!1779577 (= (findConcatSeparation!2049 (regOne!31764 r!7292) (regTwo!31764 r!7292) Nil!63055 s!2326 s!2326) lt!2263026)))

(declare-fun b!5633958 () Bool)

(declare-fun ++!13842 (List!63179 List!63179) List!63179)

(declare-fun get!21723 (Option!15635) tuple2!65446)

(assert (=> b!5633958 (= e!3472241 (= (++!13842 (_1!36026 (get!21723 lt!2263026)) (_2!36026 (get!21723 lt!2263026))) s!2326))))

(declare-fun b!5633959 () Bool)

(declare-fun lt!2263025 () Unit!156036)

(declare-fun lt!2263027 () Unit!156036)

(assert (=> b!5633959 (= lt!2263025 lt!2263027)))

(assert (=> b!5633959 (= (++!13842 (++!13842 Nil!63055 (Cons!63055 (h!69503 s!2326) Nil!63055)) (t!376475 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2011 (List!63179 C!31522 List!63179 List!63179) Unit!156036)

(assert (=> b!5633959 (= lt!2263027 (lemmaMoveElementToOtherListKeepsConcatEq!2011 Nil!63055 (h!69503 s!2326) (t!376475 s!2326) s!2326))))

(assert (=> b!5633959 (= e!3472242 (findConcatSeparation!2049 (regOne!31764 r!7292) (regTwo!31764 r!7292) (++!13842 Nil!63055 (Cons!63055 (h!69503 s!2326) Nil!63055)) (t!376475 s!2326) s!2326))))

(declare-fun b!5633960 () Bool)

(assert (=> b!5633960 (= e!3472240 (not (isDefined!12338 lt!2263026)))))

(declare-fun b!5633961 () Bool)

(declare-fun res!2385684 () Bool)

(assert (=> b!5633961 (=> (not res!2385684) (not e!3472241))))

(assert (=> b!5633961 (= res!2385684 (matchR!7811 (regOne!31764 r!7292) (_1!36026 (get!21723 lt!2263026))))))

(declare-fun b!5633962 () Bool)

(declare-fun res!2385685 () Bool)

(assert (=> b!5633962 (=> (not res!2385685) (not e!3472241))))

(assert (=> b!5633962 (= res!2385685 (matchR!7811 (regTwo!31764 r!7292) (_2!36026 (get!21723 lt!2263026))))))

(declare-fun b!5633963 () Bool)

(assert (=> b!5633963 (= e!3472243 (matchR!7811 (regTwo!31764 r!7292) s!2326))))

(assert (= (and d!1779577 res!2385682) b!5633963))

(assert (= (and d!1779577 c!989563) b!5633957))

(assert (= (and d!1779577 (not c!989563)) b!5633956))

(assert (= (and b!5633956 c!989562) b!5633955))

(assert (= (and b!5633956 (not c!989562)) b!5633959))

(assert (= (and d!1779577 res!2385681) b!5633961))

(assert (= (and b!5633961 res!2385684) b!5633962))

(assert (= (and b!5633962 res!2385685) b!5633958))

(assert (= (and d!1779577 (not res!2385683)) b!5633960))

(declare-fun m!6604812 () Bool)

(assert (=> b!5633963 m!6604812))

(declare-fun m!6604814 () Bool)

(assert (=> b!5633962 m!6604814))

(declare-fun m!6604816 () Bool)

(assert (=> b!5633962 m!6604816))

(declare-fun m!6604818 () Bool)

(assert (=> b!5633959 m!6604818))

(assert (=> b!5633959 m!6604818))

(declare-fun m!6604820 () Bool)

(assert (=> b!5633959 m!6604820))

(declare-fun m!6604822 () Bool)

(assert (=> b!5633959 m!6604822))

(assert (=> b!5633959 m!6604818))

(declare-fun m!6604824 () Bool)

(assert (=> b!5633959 m!6604824))

(assert (=> b!5633961 m!6604814))

(declare-fun m!6604826 () Bool)

(assert (=> b!5633961 m!6604826))

(declare-fun m!6604828 () Bool)

(assert (=> d!1779577 m!6604828))

(declare-fun m!6604830 () Bool)

(assert (=> d!1779577 m!6604830))

(declare-fun m!6604832 () Bool)

(assert (=> d!1779577 m!6604832))

(assert (=> b!5633958 m!6604814))

(declare-fun m!6604834 () Bool)

(assert (=> b!5633958 m!6604834))

(assert (=> b!5633960 m!6604828))

(assert (=> b!5633798 d!1779577))

(declare-fun d!1779579 () Bool)

(declare-fun choose!42706 (Int) Bool)

(assert (=> d!1779579 (= (Exists!2726 lambda!302826) (choose!42706 lambda!302826))))

(declare-fun bs!1303812 () Bool)

(assert (= bs!1303812 d!1779579))

(declare-fun m!6604836 () Bool)

(assert (=> bs!1303812 m!6604836))

(assert (=> b!5633798 d!1779579))

(declare-fun bs!1303813 () Bool)

(declare-fun d!1779581 () Bool)

(assert (= bs!1303813 (and d!1779581 b!5633798)))

(declare-fun lambda!302847 () Int)

(assert (=> bs!1303813 (= lambda!302847 lambda!302825)))

(assert (=> bs!1303813 (not (= lambda!302847 lambda!302826))))

(assert (=> d!1779581 true))

(assert (=> d!1779581 true))

(assert (=> d!1779581 true))

(declare-fun lambda!302848 () Int)

(assert (=> bs!1303813 (not (= lambda!302848 lambda!302825))))

(assert (=> bs!1303813 (= lambda!302848 lambda!302826)))

(declare-fun bs!1303814 () Bool)

(assert (= bs!1303814 d!1779581))

(assert (=> bs!1303814 (not (= lambda!302848 lambda!302847))))

(assert (=> d!1779581 true))

(assert (=> d!1779581 true))

(assert (=> d!1779581 true))

(assert (=> d!1779581 (= (Exists!2726 lambda!302847) (Exists!2726 lambda!302848))))

(declare-fun lt!2263030 () Unit!156036)

(declare-fun choose!42707 (Regex!15626 Regex!15626 List!63179) Unit!156036)

(assert (=> d!1779581 (= lt!2263030 (choose!42707 (regOne!31764 r!7292) (regTwo!31764 r!7292) s!2326))))

(assert (=> d!1779581 (validRegex!7362 (regOne!31764 r!7292))))

(assert (=> d!1779581 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1355 (regOne!31764 r!7292) (regTwo!31764 r!7292) s!2326) lt!2263030)))

(declare-fun m!6604838 () Bool)

(assert (=> bs!1303814 m!6604838))

(declare-fun m!6604840 () Bool)

(assert (=> bs!1303814 m!6604840))

(declare-fun m!6604842 () Bool)

(assert (=> bs!1303814 m!6604842))

(assert (=> bs!1303814 m!6604832))

(assert (=> b!5633798 d!1779581))

(declare-fun d!1779583 () Bool)

(declare-fun isEmpty!34899 (Option!15635) Bool)

(assert (=> d!1779583 (= (isDefined!12338 (findConcatSeparation!2049 (regOne!31764 r!7292) (regTwo!31764 r!7292) Nil!63055 s!2326 s!2326)) (not (isEmpty!34899 (findConcatSeparation!2049 (regOne!31764 r!7292) (regTwo!31764 r!7292) Nil!63055 s!2326 s!2326))))))

(declare-fun bs!1303815 () Bool)

(assert (= bs!1303815 d!1779583))

(assert (=> bs!1303815 m!6604686))

(declare-fun m!6604844 () Bool)

(assert (=> bs!1303815 m!6604844))

(assert (=> b!5633798 d!1779583))

(declare-fun bs!1303816 () Bool)

(declare-fun d!1779585 () Bool)

(assert (= bs!1303816 (and d!1779585 b!5633798)))

(declare-fun lambda!302851 () Int)

(assert (=> bs!1303816 (= lambda!302851 lambda!302825)))

(assert (=> bs!1303816 (not (= lambda!302851 lambda!302826))))

(declare-fun bs!1303817 () Bool)

(assert (= bs!1303817 (and d!1779585 d!1779581)))

(assert (=> bs!1303817 (= lambda!302851 lambda!302847)))

(assert (=> bs!1303817 (not (= lambda!302851 lambda!302848))))

(assert (=> d!1779585 true))

(assert (=> d!1779585 true))

(assert (=> d!1779585 true))

(assert (=> d!1779585 (= (isDefined!12338 (findConcatSeparation!2049 (regOne!31764 r!7292) (regTwo!31764 r!7292) Nil!63055 s!2326 s!2326)) (Exists!2726 lambda!302851))))

(declare-fun lt!2263033 () Unit!156036)

(declare-fun choose!42708 (Regex!15626 Regex!15626 List!63179) Unit!156036)

(assert (=> d!1779585 (= lt!2263033 (choose!42708 (regOne!31764 r!7292) (regTwo!31764 r!7292) s!2326))))

(assert (=> d!1779585 (validRegex!7362 (regOne!31764 r!7292))))

(assert (=> d!1779585 (= (lemmaFindConcatSeparationEquivalentToExists!1813 (regOne!31764 r!7292) (regTwo!31764 r!7292) s!2326) lt!2263033)))

(declare-fun bs!1303818 () Bool)

(assert (= bs!1303818 d!1779585))

(assert (=> bs!1303818 m!6604686))

(assert (=> bs!1303818 m!6604688))

(declare-fun m!6604846 () Bool)

(assert (=> bs!1303818 m!6604846))

(declare-fun m!6604848 () Bool)

(assert (=> bs!1303818 m!6604848))

(assert (=> bs!1303818 m!6604686))

(assert (=> bs!1303818 m!6604832))

(assert (=> b!5633798 d!1779585))

(declare-fun d!1779587 () Bool)

(assert (=> d!1779587 (= (Exists!2726 lambda!302825) (choose!42706 lambda!302825))))

(declare-fun bs!1303819 () Bool)

(assert (= bs!1303819 d!1779587))

(declare-fun m!6604850 () Bool)

(assert (=> bs!1303819 m!6604850))

(assert (=> b!5633798 d!1779587))

(declare-fun b!5633996 () Bool)

(declare-fun e!3472262 () Bool)

(declare-fun lt!2263036 () Regex!15626)

(declare-fun isEmptyLang!1177 (Regex!15626) Bool)

(assert (=> b!5633996 (= e!3472262 (isEmptyLang!1177 lt!2263036))))

(declare-fun b!5633997 () Bool)

(declare-fun e!3472265 () Bool)

(assert (=> b!5633997 (= e!3472265 e!3472262)))

(declare-fun c!989574 () Bool)

(assert (=> b!5633997 (= c!989574 (isEmpty!34896 (unfocusZipperList!1054 zl!343)))))

(declare-fun b!5633998 () Bool)

(declare-fun e!3472267 () Regex!15626)

(assert (=> b!5633998 (= e!3472267 (h!69501 (unfocusZipperList!1054 zl!343)))))

(declare-fun b!5634000 () Bool)

(declare-fun e!3472263 () Regex!15626)

(assert (=> b!5634000 (= e!3472267 e!3472263)))

(declare-fun c!989572 () Bool)

(assert (=> b!5634000 (= c!989572 (is-Cons!63053 (unfocusZipperList!1054 zl!343)))))

(declare-fun b!5634001 () Bool)

(declare-fun e!3472264 () Bool)

(declare-fun head!11996 (List!63177) Regex!15626)

(assert (=> b!5634001 (= e!3472264 (= lt!2263036 (head!11996 (unfocusZipperList!1054 zl!343))))))

(declare-fun b!5634002 () Bool)

(assert (=> b!5634002 (= e!3472262 e!3472264)))

(declare-fun c!989575 () Bool)

(declare-fun tail!11091 (List!63177) List!63177)

(assert (=> b!5634002 (= c!989575 (isEmpty!34896 (tail!11091 (unfocusZipperList!1054 zl!343))))))

(declare-fun b!5634003 () Bool)

(assert (=> b!5634003 (= e!3472263 (Union!15626 (h!69501 (unfocusZipperList!1054 zl!343)) (generalisedUnion!1489 (t!376473 (unfocusZipperList!1054 zl!343)))))))

(declare-fun b!5634004 () Bool)

(declare-fun e!3472266 () Bool)

(assert (=> b!5634004 (= e!3472266 (isEmpty!34896 (t!376473 (unfocusZipperList!1054 zl!343))))))

(declare-fun b!5634005 () Bool)

(assert (=> b!5634005 (= e!3472263 EmptyLang!15626)))

(declare-fun b!5633999 () Bool)

(declare-fun isUnion!607 (Regex!15626) Bool)

(assert (=> b!5633999 (= e!3472264 (isUnion!607 lt!2263036))))

(declare-fun d!1779589 () Bool)

(assert (=> d!1779589 e!3472265))

(declare-fun res!2385703 () Bool)

(assert (=> d!1779589 (=> (not res!2385703) (not e!3472265))))

(assert (=> d!1779589 (= res!2385703 (validRegex!7362 lt!2263036))))

(assert (=> d!1779589 (= lt!2263036 e!3472267)))

(declare-fun c!989573 () Bool)

(assert (=> d!1779589 (= c!989573 e!3472266)))

(declare-fun res!2385702 () Bool)

(assert (=> d!1779589 (=> (not res!2385702) (not e!3472266))))

(assert (=> d!1779589 (= res!2385702 (is-Cons!63053 (unfocusZipperList!1054 zl!343)))))

(declare-fun lambda!302854 () Int)

(declare-fun forall!14780 (List!63177 Int) Bool)

(assert (=> d!1779589 (forall!14780 (unfocusZipperList!1054 zl!343) lambda!302854)))

(assert (=> d!1779589 (= (generalisedUnion!1489 (unfocusZipperList!1054 zl!343)) lt!2263036)))

(assert (= (and d!1779589 res!2385702) b!5634004))

(assert (= (and d!1779589 c!989573) b!5633998))

(assert (= (and d!1779589 (not c!989573)) b!5634000))

(assert (= (and b!5634000 c!989572) b!5634003))

(assert (= (and b!5634000 (not c!989572)) b!5634005))

(assert (= (and d!1779589 res!2385703) b!5633997))

(assert (= (and b!5633997 c!989574) b!5633996))

(assert (= (and b!5633997 (not c!989574)) b!5634002))

(assert (= (and b!5634002 c!989575) b!5634001))

(assert (= (and b!5634002 (not c!989575)) b!5633999))

(declare-fun m!6604852 () Bool)

(assert (=> b!5633999 m!6604852))

(declare-fun m!6604854 () Bool)

(assert (=> b!5634004 m!6604854))

(declare-fun m!6604856 () Bool)

(assert (=> b!5633996 m!6604856))

(declare-fun m!6604858 () Bool)

(assert (=> b!5634003 m!6604858))

(declare-fun m!6604860 () Bool)

(assert (=> d!1779589 m!6604860))

(assert (=> d!1779589 m!6604658))

(declare-fun m!6604862 () Bool)

(assert (=> d!1779589 m!6604862))

(assert (=> b!5634002 m!6604658))

(declare-fun m!6604864 () Bool)

(assert (=> b!5634002 m!6604864))

(assert (=> b!5634002 m!6604864))

(declare-fun m!6604866 () Bool)

(assert (=> b!5634002 m!6604866))

(assert (=> b!5633997 m!6604658))

(declare-fun m!6604868 () Bool)

(assert (=> b!5633997 m!6604868))

(assert (=> b!5634001 m!6604658))

(declare-fun m!6604870 () Bool)

(assert (=> b!5634001 m!6604870))

(assert (=> b!5633797 d!1779589))

(declare-fun bs!1303820 () Bool)

(declare-fun d!1779591 () Bool)

(assert (= bs!1303820 (and d!1779591 d!1779589)))

(declare-fun lambda!302857 () Int)

(assert (=> bs!1303820 (= lambda!302857 lambda!302854)))

(declare-fun lt!2263039 () List!63177)

(assert (=> d!1779591 (forall!14780 lt!2263039 lambda!302857)))

(declare-fun e!3472270 () List!63177)

(assert (=> d!1779591 (= lt!2263039 e!3472270)))

(declare-fun c!989578 () Bool)

(assert (=> d!1779591 (= c!989578 (is-Cons!63054 zl!343))))

(assert (=> d!1779591 (= (unfocusZipperList!1054 zl!343) lt!2263039)))

(declare-fun b!5634010 () Bool)

(assert (=> b!5634010 (= e!3472270 (Cons!63053 (generalisedConcat!1241 (exprs!5510 (h!69502 zl!343))) (unfocusZipperList!1054 (t!376474 zl!343))))))

(declare-fun b!5634011 () Bool)

(assert (=> b!5634011 (= e!3472270 Nil!63053)))

(assert (= (and d!1779591 c!989578) b!5634010))

(assert (= (and d!1779591 (not c!989578)) b!5634011))

(declare-fun m!6604872 () Bool)

(assert (=> d!1779591 m!6604872))

(assert (=> b!5634010 m!6604636))

(declare-fun m!6604874 () Bool)

(assert (=> b!5634010 m!6604874))

(assert (=> b!5633797 d!1779591))

(declare-fun d!1779593 () Bool)

(declare-fun lt!2263042 () Regex!15626)

(assert (=> d!1779593 (validRegex!7362 lt!2263042)))

(assert (=> d!1779593 (= lt!2263042 (generalisedUnion!1489 (unfocusZipperList!1054 zl!343)))))

(assert (=> d!1779593 (= (unfocusZipper!1368 zl!343) lt!2263042)))

(declare-fun bs!1303821 () Bool)

(assert (= bs!1303821 d!1779593))

(declare-fun m!6604876 () Bool)

(assert (=> bs!1303821 m!6604876))

(assert (=> bs!1303821 m!6604658))

(assert (=> bs!1303821 m!6604658))

(assert (=> bs!1303821 m!6604660))

(assert (=> b!5633777 d!1779593))

(declare-fun d!1779595 () Bool)

(declare-fun c!989581 () Bool)

(declare-fun isEmpty!34900 (List!63179) Bool)

(assert (=> d!1779595 (= c!989581 (isEmpty!34900 (t!376475 s!2326)))))

(declare-fun e!3472273 () Bool)

(assert (=> d!1779595 (= (matchZipper!1764 lt!2262913 (t!376475 s!2326)) e!3472273)))

(declare-fun b!5634016 () Bool)

(declare-fun nullableZipper!1608 ((Set Context!10020)) Bool)

(assert (=> b!5634016 (= e!3472273 (nullableZipper!1608 lt!2262913))))

(declare-fun b!5634017 () Bool)

(declare-fun head!11997 (List!63179) C!31522)

(declare-fun tail!11092 (List!63179) List!63179)

(assert (=> b!5634017 (= e!3472273 (matchZipper!1764 (derivationStepZipper!1713 lt!2262913 (head!11997 (t!376475 s!2326))) (tail!11092 (t!376475 s!2326))))))

(assert (= (and d!1779595 c!989581) b!5634016))

(assert (= (and d!1779595 (not c!989581)) b!5634017))

(declare-fun m!6604878 () Bool)

(assert (=> d!1779595 m!6604878))

(declare-fun m!6604880 () Bool)

(assert (=> b!5634016 m!6604880))

(declare-fun m!6604882 () Bool)

(assert (=> b!5634017 m!6604882))

(assert (=> b!5634017 m!6604882))

(declare-fun m!6604884 () Bool)

(assert (=> b!5634017 m!6604884))

(declare-fun m!6604886 () Bool)

(assert (=> b!5634017 m!6604886))

(assert (=> b!5634017 m!6604884))

(assert (=> b!5634017 m!6604886))

(declare-fun m!6604888 () Bool)

(assert (=> b!5634017 m!6604888))

(assert (=> b!5633795 d!1779595))

(declare-fun d!1779597 () Bool)

(declare-fun e!3472276 () Bool)

(assert (=> d!1779597 e!3472276))

(declare-fun res!2385706 () Bool)

(assert (=> d!1779597 (=> (not res!2385706) (not e!3472276))))

(declare-fun lt!2263045 () List!63178)

(declare-fun noDuplicate!1589 (List!63178) Bool)

(assert (=> d!1779597 (= res!2385706 (noDuplicate!1589 lt!2263045))))

(declare-fun choose!42709 ((Set Context!10020)) List!63178)

(assert (=> d!1779597 (= lt!2263045 (choose!42709 z!1189))))

(assert (=> d!1779597 (= (toList!9410 z!1189) lt!2263045)))

(declare-fun b!5634020 () Bool)

(declare-fun content!11404 (List!63178) (Set Context!10020))

(assert (=> b!5634020 (= e!3472276 (= (content!11404 lt!2263045) z!1189))))

(assert (= (and d!1779597 res!2385706) b!5634020))

(declare-fun m!6604890 () Bool)

(assert (=> d!1779597 m!6604890))

(declare-fun m!6604892 () Bool)

(assert (=> d!1779597 m!6604892))

(declare-fun m!6604894 () Bool)

(assert (=> b!5634020 m!6604894))

(assert (=> b!5633794 d!1779597))

(declare-fun d!1779599 () Bool)

(declare-fun lt!2263048 () Int)

(assert (=> d!1779599 (>= lt!2263048 0)))

(declare-fun e!3472279 () Int)

(assert (=> d!1779599 (= lt!2263048 e!3472279)))

(declare-fun c!989584 () Bool)

(assert (=> d!1779599 (= c!989584 (is-Cons!63054 (Cons!63054 lt!2262924 Nil!63054)))))

(assert (=> d!1779599 (= (zipperDepthTotal!235 (Cons!63054 lt!2262924 Nil!63054)) lt!2263048)))

(declare-fun b!5634025 () Bool)

(assert (=> b!5634025 (= e!3472279 (+ (contextDepthTotal!211 (h!69502 (Cons!63054 lt!2262924 Nil!63054))) (zipperDepthTotal!235 (t!376474 (Cons!63054 lt!2262924 Nil!63054)))))))

(declare-fun b!5634026 () Bool)

(assert (=> b!5634026 (= e!3472279 0)))

(assert (= (and d!1779599 c!989584) b!5634025))

(assert (= (and d!1779599 (not c!989584)) b!5634026))

(declare-fun m!6604896 () Bool)

(assert (=> b!5634025 m!6604896))

(declare-fun m!6604898 () Bool)

(assert (=> b!5634025 m!6604898))

(assert (=> b!5633804 d!1779599))

(declare-fun d!1779601 () Bool)

(declare-fun lt!2263049 () Int)

(assert (=> d!1779601 (>= lt!2263049 0)))

(declare-fun e!3472280 () Int)

(assert (=> d!1779601 (= lt!2263049 e!3472280)))

(declare-fun c!989585 () Bool)

(assert (=> d!1779601 (= c!989585 (is-Cons!63054 zl!343))))

(assert (=> d!1779601 (= (zipperDepthTotal!235 zl!343) lt!2263049)))

(declare-fun b!5634027 () Bool)

(assert (=> b!5634027 (= e!3472280 (+ (contextDepthTotal!211 (h!69502 zl!343)) (zipperDepthTotal!235 (t!376474 zl!343))))))

(declare-fun b!5634028 () Bool)

(assert (=> b!5634028 (= e!3472280 0)))

(assert (= (and d!1779601 c!989585) b!5634027))

(assert (= (and d!1779601 (not c!989585)) b!5634028))

(assert (=> b!5634027 m!6604698))

(declare-fun m!6604900 () Bool)

(assert (=> b!5634027 m!6604900))

(assert (=> b!5633804 d!1779601))

(declare-fun bs!1303822 () Bool)

(declare-fun d!1779603 () Bool)

(assert (= bs!1303822 (and d!1779603 d!1779589)))

(declare-fun lambda!302860 () Int)

(assert (=> bs!1303822 (= lambda!302860 lambda!302854)))

(declare-fun bs!1303823 () Bool)

(assert (= bs!1303823 (and d!1779603 d!1779591)))

(assert (=> bs!1303823 (= lambda!302860 lambda!302857)))

(declare-fun b!5634049 () Bool)

(declare-fun e!3472296 () Regex!15626)

(assert (=> b!5634049 (= e!3472296 (h!69501 (exprs!5510 (h!69502 zl!343))))))

(declare-fun b!5634050 () Bool)

(declare-fun e!3472293 () Regex!15626)

(assert (=> b!5634050 (= e!3472293 (Concat!24471 (h!69501 (exprs!5510 (h!69502 zl!343))) (generalisedConcat!1241 (t!376473 (exprs!5510 (h!69502 zl!343))))))))

(declare-fun b!5634052 () Bool)

(declare-fun e!3472297 () Bool)

(assert (=> b!5634052 (= e!3472297 (isEmpty!34896 (t!376473 (exprs!5510 (h!69502 zl!343)))))))

(declare-fun b!5634053 () Bool)

(assert (=> b!5634053 (= e!3472293 EmptyExpr!15626)))

(declare-fun b!5634054 () Bool)

(declare-fun e!3472294 () Bool)

(declare-fun lt!2263052 () Regex!15626)

(declare-fun isEmptyExpr!1167 (Regex!15626) Bool)

(assert (=> b!5634054 (= e!3472294 (isEmptyExpr!1167 lt!2263052))))

(declare-fun b!5634055 () Bool)

(declare-fun e!3472298 () Bool)

(assert (=> b!5634055 (= e!3472298 (= lt!2263052 (head!11996 (exprs!5510 (h!69502 zl!343)))))))

(declare-fun b!5634056 () Bool)

(assert (=> b!5634056 (= e!3472296 e!3472293)))

(declare-fun c!989595 () Bool)

(assert (=> b!5634056 (= c!989595 (is-Cons!63053 (exprs!5510 (h!69502 zl!343))))))

(declare-fun e!3472295 () Bool)

(assert (=> d!1779603 e!3472295))

(declare-fun res!2385712 () Bool)

(assert (=> d!1779603 (=> (not res!2385712) (not e!3472295))))

(assert (=> d!1779603 (= res!2385712 (validRegex!7362 lt!2263052))))

(assert (=> d!1779603 (= lt!2263052 e!3472296)))

(declare-fun c!989597 () Bool)

(assert (=> d!1779603 (= c!989597 e!3472297)))

(declare-fun res!2385711 () Bool)

(assert (=> d!1779603 (=> (not res!2385711) (not e!3472297))))

(assert (=> d!1779603 (= res!2385711 (is-Cons!63053 (exprs!5510 (h!69502 zl!343))))))

(assert (=> d!1779603 (forall!14780 (exprs!5510 (h!69502 zl!343)) lambda!302860)))

(assert (=> d!1779603 (= (generalisedConcat!1241 (exprs!5510 (h!69502 zl!343))) lt!2263052)))

(declare-fun b!5634051 () Bool)

(declare-fun isConcat!690 (Regex!15626) Bool)

(assert (=> b!5634051 (= e!3472298 (isConcat!690 lt!2263052))))

(declare-fun b!5634057 () Bool)

(assert (=> b!5634057 (= e!3472295 e!3472294)))

(declare-fun c!989594 () Bool)

(assert (=> b!5634057 (= c!989594 (isEmpty!34896 (exprs!5510 (h!69502 zl!343))))))

(declare-fun b!5634058 () Bool)

(assert (=> b!5634058 (= e!3472294 e!3472298)))

(declare-fun c!989596 () Bool)

(assert (=> b!5634058 (= c!989596 (isEmpty!34896 (tail!11091 (exprs!5510 (h!69502 zl!343)))))))

(assert (= (and d!1779603 res!2385711) b!5634052))

(assert (= (and d!1779603 c!989597) b!5634049))

(assert (= (and d!1779603 (not c!989597)) b!5634056))

(assert (= (and b!5634056 c!989595) b!5634050))

(assert (= (and b!5634056 (not c!989595)) b!5634053))

(assert (= (and d!1779603 res!2385712) b!5634057))

(assert (= (and b!5634057 c!989594) b!5634054))

(assert (= (and b!5634057 (not c!989594)) b!5634058))

(assert (= (and b!5634058 c!989596) b!5634055))

(assert (= (and b!5634058 (not c!989596)) b!5634051))

(declare-fun m!6604902 () Bool)

(assert (=> b!5634055 m!6604902))

(declare-fun m!6604904 () Bool)

(assert (=> b!5634054 m!6604904))

(declare-fun m!6604906 () Bool)

(assert (=> d!1779603 m!6604906))

(declare-fun m!6604908 () Bool)

(assert (=> d!1779603 m!6604908))

(declare-fun m!6604910 () Bool)

(assert (=> b!5634051 m!6604910))

(declare-fun m!6604912 () Bool)

(assert (=> b!5634057 m!6604912))

(assert (=> b!5634052 m!6604662))

(declare-fun m!6604914 () Bool)

(assert (=> b!5634058 m!6604914))

(assert (=> b!5634058 m!6604914))

(declare-fun m!6604916 () Bool)

(assert (=> b!5634058 m!6604916))

(declare-fun m!6604918 () Bool)

(assert (=> b!5634050 m!6604918))

(assert (=> b!5633803 d!1779603))

(declare-fun e!3472301 () Bool)

(declare-fun d!1779605 () Bool)

(assert (=> d!1779605 (= (matchZipper!1764 (set.union lt!2262926 lt!2262899) (t!376475 s!2326)) e!3472301)))

(declare-fun res!2385715 () Bool)

(assert (=> d!1779605 (=> res!2385715 e!3472301)))

(assert (=> d!1779605 (= res!2385715 (matchZipper!1764 lt!2262926 (t!376475 s!2326)))))

(declare-fun lt!2263055 () Unit!156036)

(declare-fun choose!42710 ((Set Context!10020) (Set Context!10020) List!63179) Unit!156036)

(assert (=> d!1779605 (= lt!2263055 (choose!42710 lt!2262926 lt!2262899 (t!376475 s!2326)))))

(assert (=> d!1779605 (= (lemmaZipperConcatMatchesSameAsBothZippers!651 lt!2262926 lt!2262899 (t!376475 s!2326)) lt!2263055)))

(declare-fun b!5634061 () Bool)

(assert (=> b!5634061 (= e!3472301 (matchZipper!1764 lt!2262899 (t!376475 s!2326)))))

(assert (= (and d!1779605 (not res!2385715)) b!5634061))

(assert (=> d!1779605 m!6604622))

(assert (=> d!1779605 m!6604620))

(declare-fun m!6604920 () Bool)

(assert (=> d!1779605 m!6604920))

(assert (=> b!5634061 m!6604612))

(assert (=> b!5633782 d!1779605))

(declare-fun d!1779607 () Bool)

(declare-fun c!989598 () Bool)

(assert (=> d!1779607 (= c!989598 (isEmpty!34900 (t!376475 s!2326)))))

(declare-fun e!3472302 () Bool)

(assert (=> d!1779607 (= (matchZipper!1764 lt!2262926 (t!376475 s!2326)) e!3472302)))

(declare-fun b!5634062 () Bool)

(assert (=> b!5634062 (= e!3472302 (nullableZipper!1608 lt!2262926))))

(declare-fun b!5634063 () Bool)

(assert (=> b!5634063 (= e!3472302 (matchZipper!1764 (derivationStepZipper!1713 lt!2262926 (head!11997 (t!376475 s!2326))) (tail!11092 (t!376475 s!2326))))))

(assert (= (and d!1779607 c!989598) b!5634062))

(assert (= (and d!1779607 (not c!989598)) b!5634063))

(assert (=> d!1779607 m!6604878))

(declare-fun m!6604922 () Bool)

(assert (=> b!5634062 m!6604922))

(assert (=> b!5634063 m!6604882))

(assert (=> b!5634063 m!6604882))

(declare-fun m!6604924 () Bool)

(assert (=> b!5634063 m!6604924))

(assert (=> b!5634063 m!6604886))

(assert (=> b!5634063 m!6604924))

(assert (=> b!5634063 m!6604886))

(declare-fun m!6604926 () Bool)

(assert (=> b!5634063 m!6604926))

(assert (=> b!5633782 d!1779607))

(declare-fun d!1779609 () Bool)

(declare-fun c!989599 () Bool)

(assert (=> d!1779609 (= c!989599 (isEmpty!34900 (t!376475 s!2326)))))

(declare-fun e!3472303 () Bool)

(assert (=> d!1779609 (= (matchZipper!1764 (set.union lt!2262926 lt!2262899) (t!376475 s!2326)) e!3472303)))

(declare-fun b!5634064 () Bool)

(assert (=> b!5634064 (= e!3472303 (nullableZipper!1608 (set.union lt!2262926 lt!2262899)))))

(declare-fun b!5634065 () Bool)

(assert (=> b!5634065 (= e!3472303 (matchZipper!1764 (derivationStepZipper!1713 (set.union lt!2262926 lt!2262899) (head!11997 (t!376475 s!2326))) (tail!11092 (t!376475 s!2326))))))

(assert (= (and d!1779609 c!989599) b!5634064))

(assert (= (and d!1779609 (not c!989599)) b!5634065))

(assert (=> d!1779609 m!6604878))

(declare-fun m!6604928 () Bool)

(assert (=> b!5634064 m!6604928))

(assert (=> b!5634065 m!6604882))

(assert (=> b!5634065 m!6604882))

(declare-fun m!6604930 () Bool)

(assert (=> b!5634065 m!6604930))

(assert (=> b!5634065 m!6604886))

(assert (=> b!5634065 m!6604930))

(assert (=> b!5634065 m!6604886))

(declare-fun m!6604932 () Bool)

(assert (=> b!5634065 m!6604932))

(assert (=> b!5633782 d!1779609))

(declare-fun d!1779611 () Bool)

(declare-fun c!989600 () Bool)

(assert (=> d!1779611 (= c!989600 (isEmpty!34900 (t!376475 s!2326)))))

(declare-fun e!3472304 () Bool)

(assert (=> d!1779611 (= (matchZipper!1764 lt!2262899 (t!376475 s!2326)) e!3472304)))

(declare-fun b!5634066 () Bool)

(assert (=> b!5634066 (= e!3472304 (nullableZipper!1608 lt!2262899))))

(declare-fun b!5634067 () Bool)

(assert (=> b!5634067 (= e!3472304 (matchZipper!1764 (derivationStepZipper!1713 lt!2262899 (head!11997 (t!376475 s!2326))) (tail!11092 (t!376475 s!2326))))))

(assert (= (and d!1779611 c!989600) b!5634066))

(assert (= (and d!1779611 (not c!989600)) b!5634067))

(assert (=> d!1779611 m!6604878))

(declare-fun m!6604934 () Bool)

(assert (=> b!5634066 m!6604934))

(assert (=> b!5634067 m!6604882))

(assert (=> b!5634067 m!6604882))

(declare-fun m!6604936 () Bool)

(assert (=> b!5634067 m!6604936))

(assert (=> b!5634067 m!6604886))

(assert (=> b!5634067 m!6604936))

(assert (=> b!5634067 m!6604886))

(declare-fun m!6604938 () Bool)

(assert (=> b!5634067 m!6604938))

(assert (=> b!5633802 d!1779611))

(declare-fun d!1779613 () Bool)

(assert (=> d!1779613 (= (isEmpty!34896 (t!376473 (exprs!5510 (h!69502 zl!343)))) (is-Nil!63053 (t!376473 (exprs!5510 (h!69502 zl!343)))))))

(assert (=> b!5633801 d!1779613))

(declare-fun bs!1303824 () Bool)

(declare-fun d!1779615 () Bool)

(assert (= bs!1303824 (and d!1779615 d!1779589)))

(declare-fun lambda!302863 () Int)

(assert (=> bs!1303824 (= lambda!302863 lambda!302854)))

(declare-fun bs!1303825 () Bool)

(assert (= bs!1303825 (and d!1779615 d!1779591)))

(assert (=> bs!1303825 (= lambda!302863 lambda!302857)))

(declare-fun bs!1303826 () Bool)

(assert (= bs!1303826 (and d!1779615 d!1779603)))

(assert (=> bs!1303826 (= lambda!302863 lambda!302860)))

(assert (=> d!1779615 (= (inv!82313 setElem!37645) (forall!14780 (exprs!5510 setElem!37645) lambda!302863))))

(declare-fun bs!1303827 () Bool)

(assert (= bs!1303827 d!1779615))

(declare-fun m!6604940 () Bool)

(assert (=> bs!1303827 m!6604940))

(assert (=> setNonEmpty!37645 d!1779615))

(declare-fun d!1779617 () Bool)

(declare-fun lt!2263058 () Int)

(assert (=> d!1779617 (>= lt!2263058 0)))

(declare-fun e!3472307 () Int)

(assert (=> d!1779617 (= lt!2263058 e!3472307)))

(declare-fun c!989604 () Bool)

(assert (=> d!1779617 (= c!989604 (is-Cons!63053 (exprs!5510 lt!2262924)))))

(assert (=> d!1779617 (= (contextDepthTotal!211 lt!2262924) lt!2263058)))

(declare-fun b!5634072 () Bool)

(declare-fun regexDepthTotal!90 (Regex!15626) Int)

(assert (=> b!5634072 (= e!3472307 (+ (regexDepthTotal!90 (h!69501 (exprs!5510 lt!2262924))) (contextDepthTotal!211 (Context!10021 (t!376473 (exprs!5510 lt!2262924))))))))

(declare-fun b!5634073 () Bool)

(assert (=> b!5634073 (= e!3472307 1)))

(assert (= (and d!1779617 c!989604) b!5634072))

(assert (= (and d!1779617 (not c!989604)) b!5634073))

(declare-fun m!6604942 () Bool)

(assert (=> b!5634072 m!6604942))

(declare-fun m!6604944 () Bool)

(assert (=> b!5634072 m!6604944))

(assert (=> b!5633800 d!1779617))

(declare-fun d!1779619 () Bool)

(declare-fun lt!2263059 () Int)

(assert (=> d!1779619 (>= lt!2263059 0)))

(declare-fun e!3472308 () Int)

(assert (=> d!1779619 (= lt!2263059 e!3472308)))

(declare-fun c!989605 () Bool)

(assert (=> d!1779619 (= c!989605 (is-Cons!63053 (exprs!5510 (h!69502 zl!343))))))

(assert (=> d!1779619 (= (contextDepthTotal!211 (h!69502 zl!343)) lt!2263059)))

(declare-fun b!5634074 () Bool)

(assert (=> b!5634074 (= e!3472308 (+ (regexDepthTotal!90 (h!69501 (exprs!5510 (h!69502 zl!343)))) (contextDepthTotal!211 (Context!10021 (t!376473 (exprs!5510 (h!69502 zl!343)))))))))

(declare-fun b!5634075 () Bool)

(assert (=> b!5634075 (= e!3472308 1)))

(assert (= (and d!1779619 c!989605) b!5634074))

(assert (= (and d!1779619 (not c!989605)) b!5634075))

(declare-fun m!6604946 () Bool)

(assert (=> b!5634074 m!6604946))

(declare-fun m!6604948 () Bool)

(assert (=> b!5634074 m!6604948))

(assert (=> b!5633800 d!1779619))

(declare-fun d!1779621 () Bool)

(declare-fun c!989606 () Bool)

(assert (=> d!1779621 (= c!989606 (isEmpty!34900 (t!376475 s!2326)))))

(declare-fun e!3472309 () Bool)

(assert (=> d!1779621 (= (matchZipper!1764 lt!2262914 (t!376475 s!2326)) e!3472309)))

(declare-fun b!5634076 () Bool)

(assert (=> b!5634076 (= e!3472309 (nullableZipper!1608 lt!2262914))))

(declare-fun b!5634077 () Bool)

(assert (=> b!5634077 (= e!3472309 (matchZipper!1764 (derivationStepZipper!1713 lt!2262914 (head!11997 (t!376475 s!2326))) (tail!11092 (t!376475 s!2326))))))

(assert (= (and d!1779621 c!989606) b!5634076))

(assert (= (and d!1779621 (not c!989606)) b!5634077))

(assert (=> d!1779621 m!6604878))

(declare-fun m!6604950 () Bool)

(assert (=> b!5634076 m!6604950))

(assert (=> b!5634077 m!6604882))

(assert (=> b!5634077 m!6604882))

(declare-fun m!6604952 () Bool)

(assert (=> b!5634077 m!6604952))

(assert (=> b!5634077 m!6604886))

(assert (=> b!5634077 m!6604952))

(assert (=> b!5634077 m!6604886))

(declare-fun m!6604954 () Bool)

(assert (=> b!5634077 m!6604954))

(assert (=> b!5633779 d!1779621))

(declare-fun bs!1303828 () Bool)

(declare-fun b!5634119 () Bool)

(assert (= bs!1303828 (and b!5634119 b!5633798)))

(declare-fun lambda!302868 () Int)

(assert (=> bs!1303828 (not (= lambda!302868 lambda!302825))))

(declare-fun bs!1303829 () Bool)

(assert (= bs!1303829 (and b!5634119 d!1779585)))

(assert (=> bs!1303829 (not (= lambda!302868 lambda!302851))))

(assert (=> bs!1303828 (not (= lambda!302868 lambda!302826))))

(declare-fun bs!1303830 () Bool)

(assert (= bs!1303830 (and b!5634119 d!1779581)))

(assert (=> bs!1303830 (not (= lambda!302868 lambda!302848))))

(assert (=> bs!1303830 (not (= lambda!302868 lambda!302847))))

(assert (=> b!5634119 true))

(assert (=> b!5634119 true))

(declare-fun bs!1303831 () Bool)

(declare-fun b!5634113 () Bool)

(assert (= bs!1303831 (and b!5634113 b!5633798)))

(declare-fun lambda!302869 () Int)

(assert (=> bs!1303831 (not (= lambda!302869 lambda!302825))))

(declare-fun bs!1303832 () Bool)

(assert (= bs!1303832 (and b!5634113 d!1779585)))

(assert (=> bs!1303832 (not (= lambda!302869 lambda!302851))))

(assert (=> bs!1303831 (= lambda!302869 lambda!302826)))

(declare-fun bs!1303833 () Bool)

(assert (= bs!1303833 (and b!5634113 b!5634119)))

(assert (=> bs!1303833 (not (= lambda!302869 lambda!302868))))

(declare-fun bs!1303834 () Bool)

(assert (= bs!1303834 (and b!5634113 d!1779581)))

(assert (=> bs!1303834 (= lambda!302869 lambda!302848)))

(assert (=> bs!1303834 (not (= lambda!302869 lambda!302847))))

(assert (=> b!5634113 true))

(assert (=> b!5634113 true))

(declare-fun b!5634110 () Bool)

(declare-fun e!3472328 () Bool)

(declare-fun e!3472332 () Bool)

(assert (=> b!5634110 (= e!3472328 e!3472332)))

(declare-fun res!2385733 () Bool)

(assert (=> b!5634110 (= res!2385733 (not (is-EmptyLang!15626 r!7292)))))

(assert (=> b!5634110 (=> (not res!2385733) (not e!3472332))))

(declare-fun call!424894 () Bool)

(declare-fun bm!424889 () Bool)

(declare-fun c!989616 () Bool)

(assert (=> bm!424889 (= call!424894 (Exists!2726 (ite c!989616 lambda!302868 lambda!302869)))))

(declare-fun b!5634111 () Bool)

(declare-fun e!3472333 () Bool)

(declare-fun e!3472330 () Bool)

(assert (=> b!5634111 (= e!3472333 e!3472330)))

(assert (=> b!5634111 (= c!989616 (is-Star!15626 r!7292))))

(declare-fun b!5634112 () Bool)

(declare-fun e!3472329 () Bool)

(assert (=> b!5634112 (= e!3472333 e!3472329)))

(declare-fun res!2385732 () Bool)

(assert (=> b!5634112 (= res!2385732 (matchRSpec!2729 (regOne!31765 r!7292) s!2326))))

(assert (=> b!5634112 (=> res!2385732 e!3472329)))

(declare-fun d!1779623 () Bool)

(declare-fun c!989615 () Bool)

(assert (=> d!1779623 (= c!989615 (is-EmptyExpr!15626 r!7292))))

(assert (=> d!1779623 (= (matchRSpec!2729 r!7292 s!2326) e!3472328)))

(assert (=> b!5634113 (= e!3472330 call!424894)))

(declare-fun bm!424890 () Bool)

(declare-fun call!424895 () Bool)

(assert (=> bm!424890 (= call!424895 (isEmpty!34900 s!2326))))

(declare-fun b!5634114 () Bool)

(declare-fun res!2385734 () Bool)

(declare-fun e!3472334 () Bool)

(assert (=> b!5634114 (=> res!2385734 e!3472334)))

(assert (=> b!5634114 (= res!2385734 call!424895)))

(assert (=> b!5634114 (= e!3472330 e!3472334)))

(declare-fun b!5634115 () Bool)

(declare-fun c!989617 () Bool)

(assert (=> b!5634115 (= c!989617 (is-ElementMatch!15626 r!7292))))

(declare-fun e!3472331 () Bool)

(assert (=> b!5634115 (= e!3472332 e!3472331)))

(declare-fun b!5634116 () Bool)

(declare-fun c!989618 () Bool)

(assert (=> b!5634116 (= c!989618 (is-Union!15626 r!7292))))

(assert (=> b!5634116 (= e!3472331 e!3472333)))

(declare-fun b!5634117 () Bool)

(assert (=> b!5634117 (= e!3472328 call!424895)))

(declare-fun b!5634118 () Bool)

(assert (=> b!5634118 (= e!3472331 (= s!2326 (Cons!63055 (c!989546 r!7292) Nil!63055)))))

(assert (=> b!5634119 (= e!3472334 call!424894)))

(declare-fun b!5634120 () Bool)

(assert (=> b!5634120 (= e!3472329 (matchRSpec!2729 (regTwo!31765 r!7292) s!2326))))

(assert (= (and d!1779623 c!989615) b!5634117))

(assert (= (and d!1779623 (not c!989615)) b!5634110))

(assert (= (and b!5634110 res!2385733) b!5634115))

(assert (= (and b!5634115 c!989617) b!5634118))

(assert (= (and b!5634115 (not c!989617)) b!5634116))

(assert (= (and b!5634116 c!989618) b!5634112))

(assert (= (and b!5634116 (not c!989618)) b!5634111))

(assert (= (and b!5634112 (not res!2385732)) b!5634120))

(assert (= (and b!5634111 c!989616) b!5634114))

(assert (= (and b!5634111 (not c!989616)) b!5634113))

(assert (= (and b!5634114 (not res!2385734)) b!5634119))

(assert (= (or b!5634119 b!5634113) bm!424889))

(assert (= (or b!5634117 b!5634114) bm!424890))

(declare-fun m!6604956 () Bool)

(assert (=> bm!424889 m!6604956))

(declare-fun m!6604958 () Bool)

(assert (=> b!5634112 m!6604958))

(declare-fun m!6604960 () Bool)

(assert (=> bm!424890 m!6604960))

(declare-fun m!6604962 () Bool)

(assert (=> b!5634120 m!6604962))

(assert (=> b!5633788 d!1779623))

(declare-fun b!5634171 () Bool)

(declare-fun res!2385754 () Bool)

(declare-fun e!3472365 () Bool)

(assert (=> b!5634171 (=> res!2385754 e!3472365)))

(assert (=> b!5634171 (= res!2385754 (not (is-ElementMatch!15626 r!7292)))))

(declare-fun e!3472363 () Bool)

(assert (=> b!5634171 (= e!3472363 e!3472365)))

(declare-fun b!5634172 () Bool)

(declare-fun e!3472366 () Bool)

(assert (=> b!5634172 (= e!3472366 (not (= (head!11997 s!2326) (c!989546 r!7292))))))

(declare-fun b!5634173 () Bool)

(declare-fun e!3472367 () Bool)

(declare-fun derivativeStep!4462 (Regex!15626 C!31522) Regex!15626)

(assert (=> b!5634173 (= e!3472367 (matchR!7811 (derivativeStep!4462 r!7292 (head!11997 s!2326)) (tail!11092 s!2326)))))

(declare-fun b!5634174 () Bool)

(declare-fun e!3472361 () Bool)

(assert (=> b!5634174 (= e!3472361 e!3472363)))

(declare-fun c!989636 () Bool)

(assert (=> b!5634174 (= c!989636 (is-EmptyLang!15626 r!7292))))

(declare-fun d!1779627 () Bool)

(assert (=> d!1779627 e!3472361))

(declare-fun c!989635 () Bool)

(assert (=> d!1779627 (= c!989635 (is-EmptyExpr!15626 r!7292))))

(declare-fun lt!2263062 () Bool)

(assert (=> d!1779627 (= lt!2263062 e!3472367)))

(declare-fun c!989637 () Bool)

(assert (=> d!1779627 (= c!989637 (isEmpty!34900 s!2326))))

(assert (=> d!1779627 (validRegex!7362 r!7292)))

(assert (=> d!1779627 (= (matchR!7811 r!7292 s!2326) lt!2263062)))

(declare-fun b!5634175 () Bool)

(declare-fun res!2385755 () Bool)

(assert (=> b!5634175 (=> res!2385755 e!3472366)))

(assert (=> b!5634175 (= res!2385755 (not (isEmpty!34900 (tail!11092 s!2326))))))

(declare-fun b!5634176 () Bool)

(declare-fun res!2385758 () Bool)

(declare-fun e!3472362 () Bool)

(assert (=> b!5634176 (=> (not res!2385758) (not e!3472362))))

(declare-fun call!424906 () Bool)

(assert (=> b!5634176 (= res!2385758 (not call!424906))))

(declare-fun b!5634177 () Bool)

(declare-fun e!3472364 () Bool)

(assert (=> b!5634177 (= e!3472365 e!3472364)))

(declare-fun res!2385760 () Bool)

(assert (=> b!5634177 (=> (not res!2385760) (not e!3472364))))

(assert (=> b!5634177 (= res!2385760 (not lt!2263062))))

(declare-fun b!5634178 () Bool)

(declare-fun res!2385753 () Bool)

(assert (=> b!5634178 (=> res!2385753 e!3472365)))

(assert (=> b!5634178 (= res!2385753 e!3472362)))

(declare-fun res!2385757 () Bool)

(assert (=> b!5634178 (=> (not res!2385757) (not e!3472362))))

(assert (=> b!5634178 (= res!2385757 lt!2263062)))

(declare-fun b!5634179 () Bool)

(assert (=> b!5634179 (= e!3472361 (= lt!2263062 call!424906))))

(declare-fun b!5634180 () Bool)

(assert (=> b!5634180 (= e!3472364 e!3472366)))

(declare-fun res!2385759 () Bool)

(assert (=> b!5634180 (=> res!2385759 e!3472366)))

(assert (=> b!5634180 (= res!2385759 call!424906)))

(declare-fun b!5634181 () Bool)

(assert (=> b!5634181 (= e!3472362 (= (head!11997 s!2326) (c!989546 r!7292)))))

(declare-fun b!5634182 () Bool)

(declare-fun res!2385756 () Bool)

(assert (=> b!5634182 (=> (not res!2385756) (not e!3472362))))

(assert (=> b!5634182 (= res!2385756 (isEmpty!34900 (tail!11092 s!2326)))))

(declare-fun b!5634183 () Bool)

(assert (=> b!5634183 (= e!3472363 (not lt!2263062))))

(declare-fun b!5634184 () Bool)

(assert (=> b!5634184 (= e!3472367 (nullable!5658 r!7292))))

(declare-fun bm!424901 () Bool)

(assert (=> bm!424901 (= call!424906 (isEmpty!34900 s!2326))))

(assert (= (and d!1779627 c!989637) b!5634184))

(assert (= (and d!1779627 (not c!989637)) b!5634173))

(assert (= (and d!1779627 c!989635) b!5634179))

(assert (= (and d!1779627 (not c!989635)) b!5634174))

(assert (= (and b!5634174 c!989636) b!5634183))

(assert (= (and b!5634174 (not c!989636)) b!5634171))

(assert (= (and b!5634171 (not res!2385754)) b!5634178))

(assert (= (and b!5634178 res!2385757) b!5634176))

(assert (= (and b!5634176 res!2385758) b!5634182))

(assert (= (and b!5634182 res!2385756) b!5634181))

(assert (= (and b!5634178 (not res!2385753)) b!5634177))

(assert (= (and b!5634177 res!2385760) b!5634180))

(assert (= (and b!5634180 (not res!2385759)) b!5634175))

(assert (= (and b!5634175 (not res!2385755)) b!5634172))

(assert (= (or b!5634179 b!5634176 b!5634180) bm!424901))

(declare-fun m!6604964 () Bool)

(assert (=> b!5634181 m!6604964))

(assert (=> b!5634172 m!6604964))

(declare-fun m!6604966 () Bool)

(assert (=> b!5634182 m!6604966))

(assert (=> b!5634182 m!6604966))

(declare-fun m!6604968 () Bool)

(assert (=> b!5634182 m!6604968))

(declare-fun m!6604970 () Bool)

(assert (=> b!5634184 m!6604970))

(assert (=> b!5634173 m!6604964))

(assert (=> b!5634173 m!6604964))

(declare-fun m!6604972 () Bool)

(assert (=> b!5634173 m!6604972))

(assert (=> b!5634173 m!6604966))

(assert (=> b!5634173 m!6604972))

(assert (=> b!5634173 m!6604966))

(declare-fun m!6604974 () Bool)

(assert (=> b!5634173 m!6604974))

(assert (=> bm!424901 m!6604960))

(assert (=> d!1779627 m!6604960))

(assert (=> d!1779627 m!6604638))

(assert (=> b!5634175 m!6604966))

(assert (=> b!5634175 m!6604966))

(assert (=> b!5634175 m!6604968))

(assert (=> b!5633788 d!1779627))

(declare-fun d!1779629 () Bool)

(assert (=> d!1779629 (= (matchR!7811 r!7292 s!2326) (matchRSpec!2729 r!7292 s!2326))))

(declare-fun lt!2263065 () Unit!156036)

(declare-fun choose!42711 (Regex!15626 List!63179) Unit!156036)

(assert (=> d!1779629 (= lt!2263065 (choose!42711 r!7292 s!2326))))

(assert (=> d!1779629 (validRegex!7362 r!7292)))

(assert (=> d!1779629 (= (mainMatchTheorem!2729 r!7292 s!2326) lt!2263065)))

(declare-fun bs!1303835 () Bool)

(assert (= bs!1303835 d!1779629))

(assert (=> bs!1303835 m!6604672))

(assert (=> bs!1303835 m!6604670))

(declare-fun m!6604976 () Bool)

(assert (=> bs!1303835 m!6604976))

(assert (=> bs!1303835 m!6604638))

(assert (=> b!5633788 d!1779629))

(declare-fun call!424935 () List!63177)

(declare-fun c!989661 () Bool)

(declare-fun c!989658 () Bool)

(declare-fun bm!424930 () Bool)

(declare-fun $colon$colon!1676 (List!63177 Regex!15626) List!63177)

(assert (=> bm!424930 (= call!424935 ($colon$colon!1676 (exprs!5510 lt!2262923) (ite (or c!989661 c!989658) (regTwo!31764 (regTwo!31764 (regOne!31764 r!7292))) (regTwo!31764 (regOne!31764 r!7292)))))))

(declare-fun b!5634229 () Bool)

(declare-fun e!3472393 () (Set Context!10020))

(declare-fun call!424939 () (Set Context!10020))

(assert (=> b!5634229 (= e!3472393 call!424939)))

(declare-fun b!5634230 () Bool)

(declare-fun e!3472395 () (Set Context!10020))

(assert (=> b!5634230 (= e!3472395 call!424939)))

(declare-fun b!5634231 () Bool)

(declare-fun c!989659 () Bool)

(assert (=> b!5634231 (= c!989659 (is-Star!15626 (regTwo!31764 (regOne!31764 r!7292))))))

(assert (=> b!5634231 (= e!3472393 e!3472395)))

(declare-fun bm!424931 () Bool)

(declare-fun call!424937 () (Set Context!10020))

(declare-fun c!989660 () Bool)

(assert (=> bm!424931 (= call!424937 (derivationStepZipperDown!968 (ite c!989660 (regTwo!31765 (regTwo!31764 (regOne!31764 r!7292))) (regOne!31764 (regTwo!31764 (regOne!31764 r!7292)))) (ite c!989660 lt!2262923 (Context!10021 call!424935)) (h!69503 s!2326)))))

(declare-fun b!5634232 () Bool)

(declare-fun e!3472394 () Bool)

(assert (=> b!5634232 (= c!989661 e!3472394)))

(declare-fun res!2385765 () Bool)

(assert (=> b!5634232 (=> (not res!2385765) (not e!3472394))))

(assert (=> b!5634232 (= res!2385765 (is-Concat!24471 (regTwo!31764 (regOne!31764 r!7292))))))

(declare-fun e!3472392 () (Set Context!10020))

(declare-fun e!3472397 () (Set Context!10020))

(assert (=> b!5634232 (= e!3472392 e!3472397)))

(declare-fun b!5634233 () Bool)

(assert (=> b!5634233 (= e!3472397 e!3472393)))

(assert (=> b!5634233 (= c!989658 (is-Concat!24471 (regTwo!31764 (regOne!31764 r!7292))))))

(declare-fun b!5634234 () Bool)

(declare-fun e!3472396 () (Set Context!10020))

(assert (=> b!5634234 (= e!3472396 e!3472392)))

(assert (=> b!5634234 (= c!989660 (is-Union!15626 (regTwo!31764 (regOne!31764 r!7292))))))

(declare-fun d!1779631 () Bool)

(declare-fun c!989662 () Bool)

(assert (=> d!1779631 (= c!989662 (and (is-ElementMatch!15626 (regTwo!31764 (regOne!31764 r!7292))) (= (c!989546 (regTwo!31764 (regOne!31764 r!7292))) (h!69503 s!2326))))))

(assert (=> d!1779631 (= (derivationStepZipperDown!968 (regTwo!31764 (regOne!31764 r!7292)) lt!2262923 (h!69503 s!2326)) e!3472396)))

(declare-fun call!424940 () List!63177)

(declare-fun bm!424932 () Bool)

(declare-fun call!424936 () (Set Context!10020))

(assert (=> bm!424932 (= call!424936 (derivationStepZipperDown!968 (ite c!989660 (regOne!31765 (regTwo!31764 (regOne!31764 r!7292))) (ite c!989661 (regTwo!31764 (regTwo!31764 (regOne!31764 r!7292))) (ite c!989658 (regOne!31764 (regTwo!31764 (regOne!31764 r!7292))) (reg!15955 (regTwo!31764 (regOne!31764 r!7292)))))) (ite (or c!989660 c!989661) lt!2262923 (Context!10021 call!424940)) (h!69503 s!2326)))))

(declare-fun b!5634235 () Bool)

(assert (=> b!5634235 (= e!3472394 (nullable!5658 (regOne!31764 (regTwo!31764 (regOne!31764 r!7292)))))))

(declare-fun bm!424933 () Bool)

(assert (=> bm!424933 (= call!424940 call!424935)))

(declare-fun b!5634236 () Bool)

(assert (=> b!5634236 (= e!3472395 (as set.empty (Set Context!10020)))))

(declare-fun bm!424934 () Bool)

(declare-fun call!424938 () (Set Context!10020))

(assert (=> bm!424934 (= call!424938 call!424936)))

(declare-fun b!5634237 () Bool)

(assert (=> b!5634237 (= e!3472396 (set.insert lt!2262923 (as set.empty (Set Context!10020))))))

(declare-fun b!5634238 () Bool)

(assert (=> b!5634238 (= e!3472392 (set.union call!424936 call!424937))))

(declare-fun bm!424935 () Bool)

(assert (=> bm!424935 (= call!424939 call!424938)))

(declare-fun b!5634239 () Bool)

(assert (=> b!5634239 (= e!3472397 (set.union call!424937 call!424938))))

(assert (= (and d!1779631 c!989662) b!5634237))

(assert (= (and d!1779631 (not c!989662)) b!5634234))

(assert (= (and b!5634234 c!989660) b!5634238))

(assert (= (and b!5634234 (not c!989660)) b!5634232))

(assert (= (and b!5634232 res!2385765) b!5634235))

(assert (= (and b!5634232 c!989661) b!5634239))

(assert (= (and b!5634232 (not c!989661)) b!5634233))

(assert (= (and b!5634233 c!989658) b!5634229))

(assert (= (and b!5634233 (not c!989658)) b!5634231))

(assert (= (and b!5634231 c!989659) b!5634230))

(assert (= (and b!5634231 (not c!989659)) b!5634236))

(assert (= (or b!5634229 b!5634230) bm!424933))

(assert (= (or b!5634229 b!5634230) bm!424935))

(assert (= (or b!5634239 bm!424933) bm!424930))

(assert (= (or b!5634239 bm!424935) bm!424934))

(assert (= (or b!5634238 b!5634239) bm!424931))

(assert (= (or b!5634238 bm!424934) bm!424932))

(declare-fun m!6604988 () Bool)

(assert (=> bm!424932 m!6604988))

(declare-fun m!6604990 () Bool)

(assert (=> bm!424930 m!6604990))

(declare-fun m!6604992 () Bool)

(assert (=> bm!424931 m!6604992))

(declare-fun m!6604994 () Bool)

(assert (=> b!5634237 m!6604994))

(declare-fun m!6604998 () Bool)

(assert (=> b!5634235 m!6604998))

(assert (=> b!5633785 d!1779631))

(declare-fun bm!424936 () Bool)

(declare-fun c!989666 () Bool)

(declare-fun c!989663 () Bool)

(declare-fun call!424941 () List!63177)

(assert (=> bm!424936 (= call!424941 ($colon$colon!1676 (exprs!5510 lt!2262907) (ite (or c!989666 c!989663) (regTwo!31764 (regOne!31764 (regOne!31764 r!7292))) (regOne!31764 (regOne!31764 r!7292)))))))

(declare-fun b!5634240 () Bool)

(declare-fun e!3472399 () (Set Context!10020))

(declare-fun call!424945 () (Set Context!10020))

(assert (=> b!5634240 (= e!3472399 call!424945)))

(declare-fun b!5634241 () Bool)

(declare-fun e!3472401 () (Set Context!10020))

(assert (=> b!5634241 (= e!3472401 call!424945)))

(declare-fun b!5634242 () Bool)

(declare-fun c!989664 () Bool)

(assert (=> b!5634242 (= c!989664 (is-Star!15626 (regOne!31764 (regOne!31764 r!7292))))))

(assert (=> b!5634242 (= e!3472399 e!3472401)))

(declare-fun c!989665 () Bool)

(declare-fun call!424943 () (Set Context!10020))

(declare-fun bm!424937 () Bool)

(assert (=> bm!424937 (= call!424943 (derivationStepZipperDown!968 (ite c!989665 (regTwo!31765 (regOne!31764 (regOne!31764 r!7292))) (regOne!31764 (regOne!31764 (regOne!31764 r!7292)))) (ite c!989665 lt!2262907 (Context!10021 call!424941)) (h!69503 s!2326)))))

(declare-fun b!5634243 () Bool)

(declare-fun e!3472400 () Bool)

(assert (=> b!5634243 (= c!989666 e!3472400)))

(declare-fun res!2385766 () Bool)

(assert (=> b!5634243 (=> (not res!2385766) (not e!3472400))))

(assert (=> b!5634243 (= res!2385766 (is-Concat!24471 (regOne!31764 (regOne!31764 r!7292))))))

(declare-fun e!3472398 () (Set Context!10020))

(declare-fun e!3472403 () (Set Context!10020))

(assert (=> b!5634243 (= e!3472398 e!3472403)))

(declare-fun b!5634244 () Bool)

(assert (=> b!5634244 (= e!3472403 e!3472399)))

(assert (=> b!5634244 (= c!989663 (is-Concat!24471 (regOne!31764 (regOne!31764 r!7292))))))

(declare-fun b!5634245 () Bool)

(declare-fun e!3472402 () (Set Context!10020))

(assert (=> b!5634245 (= e!3472402 e!3472398)))

(assert (=> b!5634245 (= c!989665 (is-Union!15626 (regOne!31764 (regOne!31764 r!7292))))))

(declare-fun d!1779635 () Bool)

(declare-fun c!989667 () Bool)

(assert (=> d!1779635 (= c!989667 (and (is-ElementMatch!15626 (regOne!31764 (regOne!31764 r!7292))) (= (c!989546 (regOne!31764 (regOne!31764 r!7292))) (h!69503 s!2326))))))

(assert (=> d!1779635 (= (derivationStepZipperDown!968 (regOne!31764 (regOne!31764 r!7292)) lt!2262907 (h!69503 s!2326)) e!3472402)))

(declare-fun call!424942 () (Set Context!10020))

(declare-fun bm!424938 () Bool)

(declare-fun call!424946 () List!63177)

(assert (=> bm!424938 (= call!424942 (derivationStepZipperDown!968 (ite c!989665 (regOne!31765 (regOne!31764 (regOne!31764 r!7292))) (ite c!989666 (regTwo!31764 (regOne!31764 (regOne!31764 r!7292))) (ite c!989663 (regOne!31764 (regOne!31764 (regOne!31764 r!7292))) (reg!15955 (regOne!31764 (regOne!31764 r!7292)))))) (ite (or c!989665 c!989666) lt!2262907 (Context!10021 call!424946)) (h!69503 s!2326)))))

(declare-fun b!5634246 () Bool)

(assert (=> b!5634246 (= e!3472400 (nullable!5658 (regOne!31764 (regOne!31764 (regOne!31764 r!7292)))))))

(declare-fun bm!424939 () Bool)

(assert (=> bm!424939 (= call!424946 call!424941)))

(declare-fun b!5634247 () Bool)

(assert (=> b!5634247 (= e!3472401 (as set.empty (Set Context!10020)))))

(declare-fun bm!424940 () Bool)

(declare-fun call!424944 () (Set Context!10020))

(assert (=> bm!424940 (= call!424944 call!424942)))

(declare-fun b!5634248 () Bool)

(assert (=> b!5634248 (= e!3472402 (set.insert lt!2262907 (as set.empty (Set Context!10020))))))

(declare-fun b!5634249 () Bool)

(assert (=> b!5634249 (= e!3472398 (set.union call!424942 call!424943))))

(declare-fun bm!424941 () Bool)

(assert (=> bm!424941 (= call!424945 call!424944)))

(declare-fun b!5634250 () Bool)

(assert (=> b!5634250 (= e!3472403 (set.union call!424943 call!424944))))

(assert (= (and d!1779635 c!989667) b!5634248))

(assert (= (and d!1779635 (not c!989667)) b!5634245))

(assert (= (and b!5634245 c!989665) b!5634249))

(assert (= (and b!5634245 (not c!989665)) b!5634243))

(assert (= (and b!5634243 res!2385766) b!5634246))

(assert (= (and b!5634243 c!989666) b!5634250))

(assert (= (and b!5634243 (not c!989666)) b!5634244))

(assert (= (and b!5634244 c!989663) b!5634240))

(assert (= (and b!5634244 (not c!989663)) b!5634242))

(assert (= (and b!5634242 c!989664) b!5634241))

(assert (= (and b!5634242 (not c!989664)) b!5634247))

(assert (= (or b!5634240 b!5634241) bm!424939))

(assert (= (or b!5634240 b!5634241) bm!424941))

(assert (= (or b!5634250 bm!424939) bm!424936))

(assert (= (or b!5634250 bm!424941) bm!424940))

(assert (= (or b!5634249 b!5634250) bm!424937))

(assert (= (or b!5634249 bm!424940) bm!424938))

(declare-fun m!6605006 () Bool)

(assert (=> bm!424938 m!6605006))

(declare-fun m!6605008 () Bool)

(assert (=> bm!424936 m!6605008))

(declare-fun m!6605010 () Bool)

(assert (=> bm!424937 m!6605010))

(assert (=> b!5634248 m!6604626))

(declare-fun m!6605012 () Bool)

(assert (=> b!5634246 m!6605012))

(assert (=> b!5633785 d!1779635))

(declare-fun d!1779639 () Bool)

(declare-fun dynLambda!24659 (Int Context!10020) (Set Context!10020))

(assert (=> d!1779639 (= (flatMap!1239 z!1189 lambda!302827) (dynLambda!24659 lambda!302827 (h!69502 zl!343)))))

(declare-fun lt!2263068 () Unit!156036)

(declare-fun choose!42712 ((Set Context!10020) Context!10020 Int) Unit!156036)

(assert (=> d!1779639 (= lt!2263068 (choose!42712 z!1189 (h!69502 zl!343) lambda!302827))))

(assert (=> d!1779639 (= z!1189 (set.insert (h!69502 zl!343) (as set.empty (Set Context!10020))))))

(assert (=> d!1779639 (= (lemmaFlatMapOnSingletonSet!771 z!1189 (h!69502 zl!343) lambda!302827) lt!2263068)))

(declare-fun b_lambda!213059 () Bool)

(assert (=> (not b_lambda!213059) (not d!1779639)))

(declare-fun bs!1303836 () Bool)

(assert (= bs!1303836 d!1779639))

(assert (=> bs!1303836 m!6604644))

(declare-fun m!6605014 () Bool)

(assert (=> bs!1303836 m!6605014))

(declare-fun m!6605016 () Bool)

(assert (=> bs!1303836 m!6605016))

(declare-fun m!6605018 () Bool)

(assert (=> bs!1303836 m!6605018))

(assert (=> b!5633806 d!1779639))

(declare-fun c!989671 () Bool)

(declare-fun c!989668 () Bool)

(declare-fun bm!424942 () Bool)

(declare-fun call!424947 () List!63177)

(assert (=> bm!424942 (= call!424947 ($colon$colon!1676 (exprs!5510 lt!2262923) (ite (or c!989671 c!989668) (regTwo!31764 (h!69501 (exprs!5510 (h!69502 zl!343)))) (h!69501 (exprs!5510 (h!69502 zl!343))))))))

(declare-fun b!5634251 () Bool)

(declare-fun e!3472405 () (Set Context!10020))

(declare-fun call!424951 () (Set Context!10020))

(assert (=> b!5634251 (= e!3472405 call!424951)))

(declare-fun b!5634252 () Bool)

(declare-fun e!3472407 () (Set Context!10020))

(assert (=> b!5634252 (= e!3472407 call!424951)))

(declare-fun b!5634253 () Bool)

(declare-fun c!989669 () Bool)

(assert (=> b!5634253 (= c!989669 (is-Star!15626 (h!69501 (exprs!5510 (h!69502 zl!343)))))))

(assert (=> b!5634253 (= e!3472405 e!3472407)))

(declare-fun bm!424943 () Bool)

(declare-fun call!424949 () (Set Context!10020))

(declare-fun c!989670 () Bool)

(assert (=> bm!424943 (= call!424949 (derivationStepZipperDown!968 (ite c!989670 (regTwo!31765 (h!69501 (exprs!5510 (h!69502 zl!343)))) (regOne!31764 (h!69501 (exprs!5510 (h!69502 zl!343))))) (ite c!989670 lt!2262923 (Context!10021 call!424947)) (h!69503 s!2326)))))

(declare-fun b!5634254 () Bool)

(declare-fun e!3472406 () Bool)

(assert (=> b!5634254 (= c!989671 e!3472406)))

(declare-fun res!2385767 () Bool)

(assert (=> b!5634254 (=> (not res!2385767) (not e!3472406))))

(assert (=> b!5634254 (= res!2385767 (is-Concat!24471 (h!69501 (exprs!5510 (h!69502 zl!343)))))))

(declare-fun e!3472404 () (Set Context!10020))

(declare-fun e!3472409 () (Set Context!10020))

(assert (=> b!5634254 (= e!3472404 e!3472409)))

(declare-fun b!5634255 () Bool)

(assert (=> b!5634255 (= e!3472409 e!3472405)))

(assert (=> b!5634255 (= c!989668 (is-Concat!24471 (h!69501 (exprs!5510 (h!69502 zl!343)))))))

(declare-fun b!5634256 () Bool)

(declare-fun e!3472408 () (Set Context!10020))

(assert (=> b!5634256 (= e!3472408 e!3472404)))

(assert (=> b!5634256 (= c!989670 (is-Union!15626 (h!69501 (exprs!5510 (h!69502 zl!343)))))))

(declare-fun d!1779641 () Bool)

(declare-fun c!989672 () Bool)

(assert (=> d!1779641 (= c!989672 (and (is-ElementMatch!15626 (h!69501 (exprs!5510 (h!69502 zl!343)))) (= (c!989546 (h!69501 (exprs!5510 (h!69502 zl!343)))) (h!69503 s!2326))))))

(assert (=> d!1779641 (= (derivationStepZipperDown!968 (h!69501 (exprs!5510 (h!69502 zl!343))) lt!2262923 (h!69503 s!2326)) e!3472408)))

(declare-fun call!424948 () (Set Context!10020))

(declare-fun call!424952 () List!63177)

(declare-fun bm!424944 () Bool)

(assert (=> bm!424944 (= call!424948 (derivationStepZipperDown!968 (ite c!989670 (regOne!31765 (h!69501 (exprs!5510 (h!69502 zl!343)))) (ite c!989671 (regTwo!31764 (h!69501 (exprs!5510 (h!69502 zl!343)))) (ite c!989668 (regOne!31764 (h!69501 (exprs!5510 (h!69502 zl!343)))) (reg!15955 (h!69501 (exprs!5510 (h!69502 zl!343))))))) (ite (or c!989670 c!989671) lt!2262923 (Context!10021 call!424952)) (h!69503 s!2326)))))

(declare-fun b!5634257 () Bool)

(assert (=> b!5634257 (= e!3472406 (nullable!5658 (regOne!31764 (h!69501 (exprs!5510 (h!69502 zl!343))))))))

(declare-fun bm!424945 () Bool)

(assert (=> bm!424945 (= call!424952 call!424947)))

(declare-fun b!5634258 () Bool)

(assert (=> b!5634258 (= e!3472407 (as set.empty (Set Context!10020)))))

(declare-fun bm!424946 () Bool)

(declare-fun call!424950 () (Set Context!10020))

(assert (=> bm!424946 (= call!424950 call!424948)))

(declare-fun b!5634259 () Bool)

(assert (=> b!5634259 (= e!3472408 (set.insert lt!2262923 (as set.empty (Set Context!10020))))))

(declare-fun b!5634260 () Bool)

(assert (=> b!5634260 (= e!3472404 (set.union call!424948 call!424949))))

(declare-fun bm!424947 () Bool)

(assert (=> bm!424947 (= call!424951 call!424950)))

(declare-fun b!5634261 () Bool)

(assert (=> b!5634261 (= e!3472409 (set.union call!424949 call!424950))))

(assert (= (and d!1779641 c!989672) b!5634259))

(assert (= (and d!1779641 (not c!989672)) b!5634256))

(assert (= (and b!5634256 c!989670) b!5634260))

(assert (= (and b!5634256 (not c!989670)) b!5634254))

(assert (= (and b!5634254 res!2385767) b!5634257))

(assert (= (and b!5634254 c!989671) b!5634261))

(assert (= (and b!5634254 (not c!989671)) b!5634255))

(assert (= (and b!5634255 c!989668) b!5634251))

(assert (= (and b!5634255 (not c!989668)) b!5634253))

(assert (= (and b!5634253 c!989669) b!5634252))

(assert (= (and b!5634253 (not c!989669)) b!5634258))

(assert (= (or b!5634251 b!5634252) bm!424945))

(assert (= (or b!5634251 b!5634252) bm!424947))

(assert (= (or b!5634261 bm!424945) bm!424942))

(assert (= (or b!5634261 bm!424947) bm!424946))

(assert (= (or b!5634260 b!5634261) bm!424943))

(assert (= (or b!5634260 bm!424946) bm!424944))

(declare-fun m!6605020 () Bool)

(assert (=> bm!424944 m!6605020))

(declare-fun m!6605022 () Bool)

(assert (=> bm!424942 m!6605022))

(declare-fun m!6605024 () Bool)

(assert (=> bm!424943 m!6605024))

(assert (=> b!5634259 m!6604994))

(declare-fun m!6605026 () Bool)

(assert (=> b!5634257 m!6605026))

(assert (=> b!5633806 d!1779641))

(declare-fun d!1779643 () Bool)

(declare-fun nullableFct!1755 (Regex!15626) Bool)

(assert (=> d!1779643 (= (nullable!5658 (h!69501 (exprs!5510 (h!69502 zl!343)))) (nullableFct!1755 (h!69501 (exprs!5510 (h!69502 zl!343)))))))

(declare-fun bs!1303837 () Bool)

(assert (= bs!1303837 d!1779643))

(declare-fun m!6605028 () Bool)

(assert (=> bs!1303837 m!6605028))

(assert (=> b!5633806 d!1779643))

(declare-fun e!3472421 () (Set Context!10020))

(declare-fun call!424955 () (Set Context!10020))

(declare-fun b!5634278 () Bool)

(assert (=> b!5634278 (= e!3472421 (set.union call!424955 (derivationStepZipperUp!894 (Context!10021 (t!376473 (exprs!5510 (Context!10021 (Cons!63053 (h!69501 (exprs!5510 (h!69502 zl!343))) (t!376473 (exprs!5510 (h!69502 zl!343)))))))) (h!69503 s!2326))))))

(declare-fun b!5634279 () Bool)

(declare-fun e!3472420 () (Set Context!10020))

(assert (=> b!5634279 (= e!3472421 e!3472420)))

(declare-fun c!989680 () Bool)

(assert (=> b!5634279 (= c!989680 (is-Cons!63053 (exprs!5510 (Context!10021 (Cons!63053 (h!69501 (exprs!5510 (h!69502 zl!343))) (t!376473 (exprs!5510 (h!69502 zl!343))))))))))

(declare-fun d!1779645 () Bool)

(declare-fun c!989681 () Bool)

(declare-fun e!3472419 () Bool)

(assert (=> d!1779645 (= c!989681 e!3472419)))

(declare-fun res!2385770 () Bool)

(assert (=> d!1779645 (=> (not res!2385770) (not e!3472419))))

(assert (=> d!1779645 (= res!2385770 (is-Cons!63053 (exprs!5510 (Context!10021 (Cons!63053 (h!69501 (exprs!5510 (h!69502 zl!343))) (t!376473 (exprs!5510 (h!69502 zl!343))))))))))

(assert (=> d!1779645 (= (derivationStepZipperUp!894 (Context!10021 (Cons!63053 (h!69501 (exprs!5510 (h!69502 zl!343))) (t!376473 (exprs!5510 (h!69502 zl!343))))) (h!69503 s!2326)) e!3472421)))

(declare-fun b!5634280 () Bool)

(assert (=> b!5634280 (= e!3472419 (nullable!5658 (h!69501 (exprs!5510 (Context!10021 (Cons!63053 (h!69501 (exprs!5510 (h!69502 zl!343))) (t!376473 (exprs!5510 (h!69502 zl!343)))))))))))

(declare-fun bm!424950 () Bool)

(assert (=> bm!424950 (= call!424955 (derivationStepZipperDown!968 (h!69501 (exprs!5510 (Context!10021 (Cons!63053 (h!69501 (exprs!5510 (h!69502 zl!343))) (t!376473 (exprs!5510 (h!69502 zl!343))))))) (Context!10021 (t!376473 (exprs!5510 (Context!10021 (Cons!63053 (h!69501 (exprs!5510 (h!69502 zl!343))) (t!376473 (exprs!5510 (h!69502 zl!343)))))))) (h!69503 s!2326)))))

(declare-fun b!5634281 () Bool)

(assert (=> b!5634281 (= e!3472420 (as set.empty (Set Context!10020)))))

(declare-fun b!5634282 () Bool)

(assert (=> b!5634282 (= e!3472420 call!424955)))

(assert (= (and d!1779645 res!2385770) b!5634280))

(assert (= (and d!1779645 c!989681) b!5634278))

(assert (= (and d!1779645 (not c!989681)) b!5634279))

(assert (= (and b!5634279 c!989680) b!5634282))

(assert (= (and b!5634279 (not c!989680)) b!5634281))

(assert (= (or b!5634278 b!5634282) bm!424950))

(declare-fun m!6605042 () Bool)

(assert (=> b!5634278 m!6605042))

(declare-fun m!6605046 () Bool)

(assert (=> b!5634280 m!6605046))

(declare-fun m!6605050 () Bool)

(assert (=> bm!424950 m!6605050))

(assert (=> b!5633806 d!1779645))

(declare-fun d!1779649 () Bool)

(declare-fun choose!42713 ((Set Context!10020) Int) (Set Context!10020))

(assert (=> d!1779649 (= (flatMap!1239 z!1189 lambda!302827) (choose!42713 z!1189 lambda!302827))))

(declare-fun bs!1303838 () Bool)

(assert (= bs!1303838 d!1779649))

(declare-fun m!6605054 () Bool)

(assert (=> bs!1303838 m!6605054))

(assert (=> b!5633806 d!1779649))

(declare-fun e!3472426 () (Set Context!10020))

(declare-fun b!5634287 () Bool)

(declare-fun call!424956 () (Set Context!10020))

(assert (=> b!5634287 (= e!3472426 (set.union call!424956 (derivationStepZipperUp!894 (Context!10021 (t!376473 (exprs!5510 lt!2262923))) (h!69503 s!2326))))))

(declare-fun b!5634288 () Bool)

(declare-fun e!3472425 () (Set Context!10020))

(assert (=> b!5634288 (= e!3472426 e!3472425)))

(declare-fun c!989684 () Bool)

(assert (=> b!5634288 (= c!989684 (is-Cons!63053 (exprs!5510 lt!2262923)))))

(declare-fun d!1779653 () Bool)

(declare-fun c!989685 () Bool)

(declare-fun e!3472424 () Bool)

(assert (=> d!1779653 (= c!989685 e!3472424)))

(declare-fun res!2385771 () Bool)

(assert (=> d!1779653 (=> (not res!2385771) (not e!3472424))))

(assert (=> d!1779653 (= res!2385771 (is-Cons!63053 (exprs!5510 lt!2262923)))))

(assert (=> d!1779653 (= (derivationStepZipperUp!894 lt!2262923 (h!69503 s!2326)) e!3472426)))

(declare-fun b!5634289 () Bool)

(assert (=> b!5634289 (= e!3472424 (nullable!5658 (h!69501 (exprs!5510 lt!2262923))))))

(declare-fun bm!424951 () Bool)

(assert (=> bm!424951 (= call!424956 (derivationStepZipperDown!968 (h!69501 (exprs!5510 lt!2262923)) (Context!10021 (t!376473 (exprs!5510 lt!2262923))) (h!69503 s!2326)))))

(declare-fun b!5634290 () Bool)

(assert (=> b!5634290 (= e!3472425 (as set.empty (Set Context!10020)))))

(declare-fun b!5634291 () Bool)

(assert (=> b!5634291 (= e!3472425 call!424956)))

(assert (= (and d!1779653 res!2385771) b!5634289))

(assert (= (and d!1779653 c!989685) b!5634287))

(assert (= (and d!1779653 (not c!989685)) b!5634288))

(assert (= (and b!5634288 c!989684) b!5634291))

(assert (= (and b!5634288 (not c!989684)) b!5634290))

(assert (= (or b!5634287 b!5634291) bm!424951))

(declare-fun m!6605062 () Bool)

(assert (=> b!5634287 m!6605062))

(declare-fun m!6605064 () Bool)

(assert (=> b!5634289 m!6605064))

(declare-fun m!6605066 () Bool)

(assert (=> bm!424951 m!6605066))

(assert (=> b!5633806 d!1779653))

(declare-fun e!3472429 () (Set Context!10020))

(declare-fun call!424957 () (Set Context!10020))

(declare-fun b!5634292 () Bool)

(assert (=> b!5634292 (= e!3472429 (set.union call!424957 (derivationStepZipperUp!894 (Context!10021 (t!376473 (exprs!5510 (h!69502 zl!343)))) (h!69503 s!2326))))))

(declare-fun b!5634293 () Bool)

(declare-fun e!3472428 () (Set Context!10020))

(assert (=> b!5634293 (= e!3472429 e!3472428)))

(declare-fun c!989686 () Bool)

(assert (=> b!5634293 (= c!989686 (is-Cons!63053 (exprs!5510 (h!69502 zl!343))))))

(declare-fun d!1779657 () Bool)

(declare-fun c!989687 () Bool)

(declare-fun e!3472427 () Bool)

(assert (=> d!1779657 (= c!989687 e!3472427)))

(declare-fun res!2385772 () Bool)

(assert (=> d!1779657 (=> (not res!2385772) (not e!3472427))))

(assert (=> d!1779657 (= res!2385772 (is-Cons!63053 (exprs!5510 (h!69502 zl!343))))))

(assert (=> d!1779657 (= (derivationStepZipperUp!894 (h!69502 zl!343) (h!69503 s!2326)) e!3472429)))

(declare-fun b!5634294 () Bool)

(assert (=> b!5634294 (= e!3472427 (nullable!5658 (h!69501 (exprs!5510 (h!69502 zl!343)))))))

(declare-fun bm!424952 () Bool)

(assert (=> bm!424952 (= call!424957 (derivationStepZipperDown!968 (h!69501 (exprs!5510 (h!69502 zl!343))) (Context!10021 (t!376473 (exprs!5510 (h!69502 zl!343)))) (h!69503 s!2326)))))

(declare-fun b!5634295 () Bool)

(assert (=> b!5634295 (= e!3472428 (as set.empty (Set Context!10020)))))

(declare-fun b!5634296 () Bool)

(assert (=> b!5634296 (= e!3472428 call!424957)))

(assert (= (and d!1779657 res!2385772) b!5634294))

(assert (= (and d!1779657 c!989687) b!5634292))

(assert (= (and d!1779657 (not c!989687)) b!5634293))

(assert (= (and b!5634293 c!989686) b!5634296))

(assert (= (and b!5634293 (not c!989686)) b!5634295))

(assert (= (or b!5634292 b!5634296) bm!424952))

(declare-fun m!6605068 () Bool)

(assert (=> b!5634292 m!6605068))

(assert (=> b!5634294 m!6604652))

(declare-fun m!6605070 () Bool)

(assert (=> bm!424952 m!6605070))

(assert (=> b!5633806 d!1779657))

(declare-fun bs!1303839 () Bool)

(declare-fun d!1779659 () Bool)

(assert (= bs!1303839 (and d!1779659 b!5633806)))

(declare-fun lambda!302872 () Int)

(assert (=> bs!1303839 (= lambda!302872 lambda!302827)))

(assert (=> d!1779659 true))

(assert (=> d!1779659 (= (derivationStepZipper!1713 lt!2262921 (h!69503 s!2326)) (flatMap!1239 lt!2262921 lambda!302872))))

(declare-fun bs!1303840 () Bool)

(assert (= bs!1303840 d!1779659))

(declare-fun m!6605072 () Bool)

(assert (=> bs!1303840 m!6605072))

(assert (=> b!5633805 d!1779659))

(declare-fun d!1779661 () Bool)

(assert (=> d!1779661 (= (flatMap!1239 lt!2262921 lambda!302827) (choose!42713 lt!2262921 lambda!302827))))

(declare-fun bs!1303841 () Bool)

(assert (= bs!1303841 d!1779661))

(declare-fun m!6605074 () Bool)

(assert (=> bs!1303841 m!6605074))

(assert (=> b!5633805 d!1779661))

(declare-fun d!1779663 () Bool)

(assert (=> d!1779663 (= (flatMap!1239 lt!2262921 lambda!302827) (dynLambda!24659 lambda!302827 lt!2262924))))

(declare-fun lt!2263069 () Unit!156036)

(assert (=> d!1779663 (= lt!2263069 (choose!42712 lt!2262921 lt!2262924 lambda!302827))))

(assert (=> d!1779663 (= lt!2262921 (set.insert lt!2262924 (as set.empty (Set Context!10020))))))

(assert (=> d!1779663 (= (lemmaFlatMapOnSingletonSet!771 lt!2262921 lt!2262924 lambda!302827) lt!2263069)))

(declare-fun b_lambda!213061 () Bool)

(assert (=> (not b_lambda!213061) (not d!1779663)))

(declare-fun bs!1303842 () Bool)

(assert (= bs!1303842 d!1779663))

(assert (=> bs!1303842 m!6604634))

(declare-fun m!6605076 () Bool)

(assert (=> bs!1303842 m!6605076))

(declare-fun m!6605078 () Bool)

(assert (=> bs!1303842 m!6605078))

(assert (=> bs!1303842 m!6604632))

(assert (=> b!5633805 d!1779663))

(declare-fun b!5634299 () Bool)

(declare-fun e!3472432 () (Set Context!10020))

(declare-fun call!424958 () (Set Context!10020))

(assert (=> b!5634299 (= e!3472432 (set.union call!424958 (derivationStepZipperUp!894 (Context!10021 (t!376473 (exprs!5510 lt!2262907))) (h!69503 s!2326))))))

(declare-fun b!5634300 () Bool)

(declare-fun e!3472431 () (Set Context!10020))

(assert (=> b!5634300 (= e!3472432 e!3472431)))

(declare-fun c!989690 () Bool)

(assert (=> b!5634300 (= c!989690 (is-Cons!63053 (exprs!5510 lt!2262907)))))

(declare-fun d!1779665 () Bool)

(declare-fun c!989691 () Bool)

(declare-fun e!3472430 () Bool)

(assert (=> d!1779665 (= c!989691 e!3472430)))

(declare-fun res!2385773 () Bool)

(assert (=> d!1779665 (=> (not res!2385773) (not e!3472430))))

(assert (=> d!1779665 (= res!2385773 (is-Cons!63053 (exprs!5510 lt!2262907)))))

(assert (=> d!1779665 (= (derivationStepZipperUp!894 lt!2262907 (h!69503 s!2326)) e!3472432)))

(declare-fun b!5634301 () Bool)

(assert (=> b!5634301 (= e!3472430 (nullable!5658 (h!69501 (exprs!5510 lt!2262907))))))

(declare-fun bm!424953 () Bool)

(assert (=> bm!424953 (= call!424958 (derivationStepZipperDown!968 (h!69501 (exprs!5510 lt!2262907)) (Context!10021 (t!376473 (exprs!5510 lt!2262907))) (h!69503 s!2326)))))

(declare-fun b!5634302 () Bool)

(assert (=> b!5634302 (= e!3472431 (as set.empty (Set Context!10020)))))

(declare-fun b!5634303 () Bool)

(assert (=> b!5634303 (= e!3472431 call!424958)))

(assert (= (and d!1779665 res!2385773) b!5634301))

(assert (= (and d!1779665 c!989691) b!5634299))

(assert (= (and d!1779665 (not c!989691)) b!5634300))

(assert (= (and b!5634300 c!989690) b!5634303))

(assert (= (and b!5634300 (not c!989690)) b!5634302))

(assert (= (or b!5634299 b!5634303) bm!424953))

(declare-fun m!6605080 () Bool)

(assert (=> b!5634299 m!6605080))

(declare-fun m!6605082 () Bool)

(assert (=> b!5634301 m!6605082))

(declare-fun m!6605084 () Bool)

(assert (=> bm!424953 m!6605084))

(assert (=> b!5633805 d!1779665))

(declare-fun e!3472435 () (Set Context!10020))

(declare-fun call!424959 () (Set Context!10020))

(declare-fun b!5634304 () Bool)

(assert (=> b!5634304 (= e!3472435 (set.union call!424959 (derivationStepZipperUp!894 (Context!10021 (t!376473 (exprs!5510 lt!2262924))) (h!69503 s!2326))))))

(declare-fun b!5634305 () Bool)

(declare-fun e!3472434 () (Set Context!10020))

(assert (=> b!5634305 (= e!3472435 e!3472434)))

(declare-fun c!989692 () Bool)

(assert (=> b!5634305 (= c!989692 (is-Cons!63053 (exprs!5510 lt!2262924)))))

(declare-fun d!1779667 () Bool)

(declare-fun c!989693 () Bool)

(declare-fun e!3472433 () Bool)

(assert (=> d!1779667 (= c!989693 e!3472433)))

(declare-fun res!2385774 () Bool)

(assert (=> d!1779667 (=> (not res!2385774) (not e!3472433))))

(assert (=> d!1779667 (= res!2385774 (is-Cons!63053 (exprs!5510 lt!2262924)))))

(assert (=> d!1779667 (= (derivationStepZipperUp!894 lt!2262924 (h!69503 s!2326)) e!3472435)))

(declare-fun b!5634306 () Bool)

(assert (=> b!5634306 (= e!3472433 (nullable!5658 (h!69501 (exprs!5510 lt!2262924))))))

(declare-fun bm!424954 () Bool)

(assert (=> bm!424954 (= call!424959 (derivationStepZipperDown!968 (h!69501 (exprs!5510 lt!2262924)) (Context!10021 (t!376473 (exprs!5510 lt!2262924))) (h!69503 s!2326)))))

(declare-fun b!5634307 () Bool)

(assert (=> b!5634307 (= e!3472434 (as set.empty (Set Context!10020)))))

(declare-fun b!5634308 () Bool)

(assert (=> b!5634308 (= e!3472434 call!424959)))

(assert (= (and d!1779667 res!2385774) b!5634306))

(assert (= (and d!1779667 c!989693) b!5634304))

(assert (= (and d!1779667 (not c!989693)) b!5634305))

(assert (= (and b!5634305 c!989692) b!5634308))

(assert (= (and b!5634305 (not c!989692)) b!5634307))

(assert (= (or b!5634304 b!5634308) bm!424954))

(declare-fun m!6605086 () Bool)

(assert (=> b!5634304 m!6605086))

(declare-fun m!6605088 () Bool)

(assert (=> b!5634306 m!6605088))

(declare-fun m!6605090 () Bool)

(assert (=> bm!424954 m!6605090))

(assert (=> b!5633805 d!1779667))

(declare-fun d!1779669 () Bool)

(declare-fun c!989694 () Bool)

(assert (=> d!1779669 (= c!989694 (isEmpty!34900 (t!376475 s!2326)))))

(declare-fun e!3472436 () Bool)

(assert (=> d!1779669 (= (matchZipper!1764 (derivationStepZipper!1713 lt!2262927 (h!69503 s!2326)) (t!376475 s!2326)) e!3472436)))

(declare-fun b!5634309 () Bool)

(assert (=> b!5634309 (= e!3472436 (nullableZipper!1608 (derivationStepZipper!1713 lt!2262927 (h!69503 s!2326))))))

(declare-fun b!5634310 () Bool)

(assert (=> b!5634310 (= e!3472436 (matchZipper!1764 (derivationStepZipper!1713 (derivationStepZipper!1713 lt!2262927 (h!69503 s!2326)) (head!11997 (t!376475 s!2326))) (tail!11092 (t!376475 s!2326))))))

(assert (= (and d!1779669 c!989694) b!5634309))

(assert (= (and d!1779669 (not c!989694)) b!5634310))

(assert (=> d!1779669 m!6604878))

(assert (=> b!5634309 m!6604664))

(declare-fun m!6605092 () Bool)

(assert (=> b!5634309 m!6605092))

(assert (=> b!5634310 m!6604882))

(assert (=> b!5634310 m!6604664))

(assert (=> b!5634310 m!6604882))

(declare-fun m!6605094 () Bool)

(assert (=> b!5634310 m!6605094))

(assert (=> b!5634310 m!6604886))

(assert (=> b!5634310 m!6605094))

(assert (=> b!5634310 m!6604886))

(declare-fun m!6605096 () Bool)

(assert (=> b!5634310 m!6605096))

(assert (=> b!5633784 d!1779669))

(declare-fun bs!1303843 () Bool)

(declare-fun d!1779671 () Bool)

(assert (= bs!1303843 (and d!1779671 b!5633806)))

(declare-fun lambda!302873 () Int)

(assert (=> bs!1303843 (= lambda!302873 lambda!302827)))

(declare-fun bs!1303844 () Bool)

(assert (= bs!1303844 (and d!1779671 d!1779659)))

(assert (=> bs!1303844 (= lambda!302873 lambda!302872)))

(assert (=> d!1779671 true))

(assert (=> d!1779671 (= (derivationStepZipper!1713 lt!2262927 (h!69503 s!2326)) (flatMap!1239 lt!2262927 lambda!302873))))

(declare-fun bs!1303845 () Bool)

(assert (= bs!1303845 d!1779671))

(declare-fun m!6605098 () Bool)

(assert (=> bs!1303845 m!6605098))

(assert (=> b!5633784 d!1779671))

(assert (=> b!5633793 d!1779665))

(declare-fun d!1779673 () Bool)

(declare-fun c!989695 () Bool)

(assert (=> d!1779673 (= c!989695 (isEmpty!34900 (t!376475 s!2326)))))

(declare-fun e!3472437 () Bool)

(assert (=> d!1779673 (= (matchZipper!1764 lt!2262911 (t!376475 s!2326)) e!3472437)))

(declare-fun b!5634311 () Bool)

(assert (=> b!5634311 (= e!3472437 (nullableZipper!1608 lt!2262911))))

(declare-fun b!5634312 () Bool)

(assert (=> b!5634312 (= e!3472437 (matchZipper!1764 (derivationStepZipper!1713 lt!2262911 (head!11997 (t!376475 s!2326))) (tail!11092 (t!376475 s!2326))))))

(assert (= (and d!1779673 c!989695) b!5634311))

(assert (= (and d!1779673 (not c!989695)) b!5634312))

(assert (=> d!1779673 m!6604878))

(declare-fun m!6605100 () Bool)

(assert (=> b!5634311 m!6605100))

(assert (=> b!5634312 m!6604882))

(assert (=> b!5634312 m!6604882))

(declare-fun m!6605102 () Bool)

(assert (=> b!5634312 m!6605102))

(assert (=> b!5634312 m!6604886))

(assert (=> b!5634312 m!6605102))

(assert (=> b!5634312 m!6604886))

(declare-fun m!6605104 () Bool)

(assert (=> b!5634312 m!6605104))

(assert (=> b!5633793 d!1779673))

(declare-fun d!1779675 () Bool)

(assert (=> d!1779675 (= (flatMap!1239 lt!2262927 lambda!302827) (dynLambda!24659 lambda!302827 lt!2262907))))

(declare-fun lt!2263070 () Unit!156036)

(assert (=> d!1779675 (= lt!2263070 (choose!42712 lt!2262927 lt!2262907 lambda!302827))))

(assert (=> d!1779675 (= lt!2262927 (set.insert lt!2262907 (as set.empty (Set Context!10020))))))

(assert (=> d!1779675 (= (lemmaFlatMapOnSingletonSet!771 lt!2262927 lt!2262907 lambda!302827) lt!2263070)))

(declare-fun b_lambda!213063 () Bool)

(assert (=> (not b_lambda!213063) (not d!1779675)))

(declare-fun bs!1303846 () Bool)

(assert (= bs!1303846 d!1779675))

(assert (=> bs!1303846 m!6604604))

(declare-fun m!6605106 () Bool)

(assert (=> bs!1303846 m!6605106))

(declare-fun m!6605108 () Bool)

(assert (=> bs!1303846 m!6605108))

(assert (=> bs!1303846 m!6604626))

(assert (=> b!5633793 d!1779675))

(declare-fun d!1779677 () Bool)

(declare-fun e!3472438 () Bool)

(assert (=> d!1779677 (= (matchZipper!1764 (set.union lt!2262918 lt!2262913) (t!376475 s!2326)) e!3472438)))

(declare-fun res!2385775 () Bool)

(assert (=> d!1779677 (=> res!2385775 e!3472438)))

(assert (=> d!1779677 (= res!2385775 (matchZipper!1764 lt!2262918 (t!376475 s!2326)))))

(declare-fun lt!2263071 () Unit!156036)

(assert (=> d!1779677 (= lt!2263071 (choose!42710 lt!2262918 lt!2262913 (t!376475 s!2326)))))

(assert (=> d!1779677 (= (lemmaZipperConcatMatchesSameAsBothZippers!651 lt!2262918 lt!2262913 (t!376475 s!2326)) lt!2263071)))

(declare-fun b!5634313 () Bool)

(assert (=> b!5634313 (= e!3472438 (matchZipper!1764 lt!2262913 (t!376475 s!2326)))))

(assert (= (and d!1779677 (not res!2385775)) b!5634313))

(declare-fun m!6605110 () Bool)

(assert (=> d!1779677 m!6605110))

(assert (=> d!1779677 m!6604678))

(declare-fun m!6605112 () Bool)

(assert (=> d!1779677 m!6605112))

(assert (=> b!5634313 m!6604668))

(assert (=> b!5633793 d!1779677))

(declare-fun d!1779679 () Bool)

(assert (=> d!1779679 (= (flatMap!1239 lt!2262927 lambda!302827) (choose!42713 lt!2262927 lambda!302827))))

(declare-fun bs!1303847 () Bool)

(assert (= bs!1303847 d!1779679))

(declare-fun m!6605114 () Bool)

(assert (=> bs!1303847 m!6605114))

(assert (=> b!5633793 d!1779679))

(declare-fun d!1779681 () Bool)

(declare-fun c!989696 () Bool)

(assert (=> d!1779681 (= c!989696 (isEmpty!34900 (t!376475 s!2326)))))

(declare-fun e!3472439 () Bool)

(assert (=> d!1779681 (= (matchZipper!1764 lt!2262906 (t!376475 s!2326)) e!3472439)))

(declare-fun b!5634314 () Bool)

(assert (=> b!5634314 (= e!3472439 (nullableZipper!1608 lt!2262906))))

(declare-fun b!5634315 () Bool)

(assert (=> b!5634315 (= e!3472439 (matchZipper!1764 (derivationStepZipper!1713 lt!2262906 (head!11997 (t!376475 s!2326))) (tail!11092 (t!376475 s!2326))))))

(assert (= (and d!1779681 c!989696) b!5634314))

(assert (= (and d!1779681 (not c!989696)) b!5634315))

(assert (=> d!1779681 m!6604878))

(declare-fun m!6605116 () Bool)

(assert (=> b!5634314 m!6605116))

(assert (=> b!5634315 m!6604882))

(assert (=> b!5634315 m!6604882))

(declare-fun m!6605118 () Bool)

(assert (=> b!5634315 m!6605118))

(assert (=> b!5634315 m!6604886))

(assert (=> b!5634315 m!6605118))

(assert (=> b!5634315 m!6604886))

(declare-fun m!6605120 () Bool)

(assert (=> b!5634315 m!6605120))

(assert (=> b!5633793 d!1779681))

(assert (=> b!5633792 d!1779621))

(declare-fun bs!1303848 () Bool)

(declare-fun d!1779683 () Bool)

(assert (= bs!1303848 (and d!1779683 d!1779589)))

(declare-fun lambda!302874 () Int)

(assert (=> bs!1303848 (= lambda!302874 lambda!302854)))

(declare-fun bs!1303849 () Bool)

(assert (= bs!1303849 (and d!1779683 d!1779591)))

(assert (=> bs!1303849 (= lambda!302874 lambda!302857)))

(declare-fun bs!1303850 () Bool)

(assert (= bs!1303850 (and d!1779683 d!1779603)))

(assert (=> bs!1303850 (= lambda!302874 lambda!302860)))

(declare-fun bs!1303851 () Bool)

(assert (= bs!1303851 (and d!1779683 d!1779615)))

(assert (=> bs!1303851 (= lambda!302874 lambda!302863)))

(assert (=> d!1779683 (= (inv!82313 (h!69502 zl!343)) (forall!14780 (exprs!5510 (h!69502 zl!343)) lambda!302874))))

(declare-fun bs!1303852 () Bool)

(assert (= bs!1303852 d!1779683))

(declare-fun m!6605122 () Bool)

(assert (=> bs!1303852 m!6605122))

(assert (=> b!5633810 d!1779683))

(assert (=> b!5633790 d!1779607))

(declare-fun d!1779685 () Bool)

(declare-fun c!989697 () Bool)

(assert (=> d!1779685 (= c!989697 (isEmpty!34900 (t!376475 s!2326)))))

(declare-fun e!3472442 () Bool)

(assert (=> d!1779685 (= (matchZipper!1764 lt!2262920 (t!376475 s!2326)) e!3472442)))

(declare-fun b!5634318 () Bool)

(assert (=> b!5634318 (= e!3472442 (nullableZipper!1608 lt!2262920))))

(declare-fun b!5634319 () Bool)

(assert (=> b!5634319 (= e!3472442 (matchZipper!1764 (derivationStepZipper!1713 lt!2262920 (head!11997 (t!376475 s!2326))) (tail!11092 (t!376475 s!2326))))))

(assert (= (and d!1779685 c!989697) b!5634318))

(assert (= (and d!1779685 (not c!989697)) b!5634319))

(assert (=> d!1779685 m!6604878))

(declare-fun m!6605124 () Bool)

(assert (=> b!5634318 m!6605124))

(assert (=> b!5634319 m!6604882))

(assert (=> b!5634319 m!6604882))

(declare-fun m!6605126 () Bool)

(assert (=> b!5634319 m!6605126))

(assert (=> b!5634319 m!6604886))

(assert (=> b!5634319 m!6605126))

(assert (=> b!5634319 m!6604886))

(declare-fun m!6605128 () Bool)

(assert (=> b!5634319 m!6605128))

(assert (=> b!5633790 d!1779685))

(declare-fun d!1779687 () Bool)

(declare-fun c!989698 () Bool)

(assert (=> d!1779687 (= c!989698 (isEmpty!34900 (t!376475 s!2326)))))

(declare-fun e!3472443 () Bool)

(assert (=> d!1779687 (= (matchZipper!1764 lt!2262918 (t!376475 s!2326)) e!3472443)))

(declare-fun b!5634320 () Bool)

(assert (=> b!5634320 (= e!3472443 (nullableZipper!1608 lt!2262918))))

(declare-fun b!5634321 () Bool)

(assert (=> b!5634321 (= e!3472443 (matchZipper!1764 (derivationStepZipper!1713 lt!2262918 (head!11997 (t!376475 s!2326))) (tail!11092 (t!376475 s!2326))))))

(assert (= (and d!1779687 c!989698) b!5634320))

(assert (= (and d!1779687 (not c!989698)) b!5634321))

(assert (=> d!1779687 m!6604878))

(declare-fun m!6605130 () Bool)

(assert (=> b!5634320 m!6605130))

(assert (=> b!5634321 m!6604882))

(assert (=> b!5634321 m!6604882))

(declare-fun m!6605132 () Bool)

(assert (=> b!5634321 m!6605132))

(assert (=> b!5634321 m!6604886))

(assert (=> b!5634321 m!6605132))

(assert (=> b!5634321 m!6604886))

(declare-fun m!6605134 () Bool)

(assert (=> b!5634321 m!6605134))

(assert (=> b!5633790 d!1779687))

(declare-fun e!3472444 () Bool)

(declare-fun d!1779689 () Bool)

(assert (=> d!1779689 (= (matchZipper!1764 (set.union lt!2262918 lt!2262914) (t!376475 s!2326)) e!3472444)))

(declare-fun res!2385778 () Bool)

(assert (=> d!1779689 (=> res!2385778 e!3472444)))

(assert (=> d!1779689 (= res!2385778 (matchZipper!1764 lt!2262918 (t!376475 s!2326)))))

(declare-fun lt!2263074 () Unit!156036)

(assert (=> d!1779689 (= lt!2263074 (choose!42710 lt!2262918 lt!2262914 (t!376475 s!2326)))))

(assert (=> d!1779689 (= (lemmaZipperConcatMatchesSameAsBothZippers!651 lt!2262918 lt!2262914 (t!376475 s!2326)) lt!2263074)))

(declare-fun b!5634322 () Bool)

(assert (=> b!5634322 (= e!3472444 (matchZipper!1764 lt!2262914 (t!376475 s!2326)))))

(assert (= (and d!1779689 (not res!2385778)) b!5634322))

(declare-fun m!6605136 () Bool)

(assert (=> d!1779689 m!6605136))

(assert (=> d!1779689 m!6604678))

(declare-fun m!6605138 () Bool)

(assert (=> d!1779689 m!6605138))

(assert (=> b!5634322 m!6604614))

(assert (=> b!5633790 d!1779689))

(declare-fun d!1779691 () Bool)

(assert (=> d!1779691 (= (isEmpty!34895 (t!376474 zl!343)) (is-Nil!63054 (t!376474 zl!343)))))

(assert (=> b!5633789 d!1779691))

(declare-fun bm!424961 () Bool)

(declare-fun call!424967 () Bool)

(declare-fun call!424968 () Bool)

(assert (=> bm!424961 (= call!424967 call!424968)))

(declare-fun bm!424962 () Bool)

(declare-fun c!989704 () Bool)

(declare-fun c!989703 () Bool)

(assert (=> bm!424962 (= call!424968 (validRegex!7362 (ite c!989703 (reg!15955 r!7292) (ite c!989704 (regTwo!31765 r!7292) (regTwo!31764 r!7292)))))))

(declare-fun b!5634342 () Bool)

(declare-fun e!3472464 () Bool)

(assert (=> b!5634342 (= e!3472464 call!424967)))

(declare-fun b!5634343 () Bool)

(declare-fun e!3472460 () Bool)

(assert (=> b!5634343 (= e!3472460 call!424968)))

(declare-fun b!5634344 () Bool)

(declare-fun res!2385790 () Bool)

(declare-fun e!3472463 () Bool)

(assert (=> b!5634344 (=> res!2385790 e!3472463)))

(assert (=> b!5634344 (= res!2385790 (not (is-Concat!24471 r!7292)))))

(declare-fun e!3472461 () Bool)

(assert (=> b!5634344 (= e!3472461 e!3472463)))

(declare-fun b!5634345 () Bool)

(declare-fun res!2385794 () Bool)

(declare-fun e!3472462 () Bool)

(assert (=> b!5634345 (=> (not res!2385794) (not e!3472462))))

(declare-fun call!424966 () Bool)

(assert (=> b!5634345 (= res!2385794 call!424966)))

(assert (=> b!5634345 (= e!3472461 e!3472462)))

(declare-fun b!5634346 () Bool)

(assert (=> b!5634346 (= e!3472462 call!424967)))

(declare-fun b!5634347 () Bool)

(declare-fun e!3472465 () Bool)

(assert (=> b!5634347 (= e!3472465 e!3472460)))

(declare-fun res!2385793 () Bool)

(assert (=> b!5634347 (= res!2385793 (not (nullable!5658 (reg!15955 r!7292))))))

(assert (=> b!5634347 (=> (not res!2385793) (not e!3472460))))

(declare-fun b!5634348 () Bool)

(declare-fun e!3472466 () Bool)

(assert (=> b!5634348 (= e!3472466 e!3472465)))

(assert (=> b!5634348 (= c!989703 (is-Star!15626 r!7292))))

(declare-fun d!1779693 () Bool)

(declare-fun res!2385792 () Bool)

(assert (=> d!1779693 (=> res!2385792 e!3472466)))

(assert (=> d!1779693 (= res!2385792 (is-ElementMatch!15626 r!7292))))

(assert (=> d!1779693 (= (validRegex!7362 r!7292) e!3472466)))

(declare-fun bm!424963 () Bool)

(assert (=> bm!424963 (= call!424966 (validRegex!7362 (ite c!989704 (regOne!31765 r!7292) (regOne!31764 r!7292))))))

(declare-fun b!5634349 () Bool)

(assert (=> b!5634349 (= e!3472465 e!3472461)))

(assert (=> b!5634349 (= c!989704 (is-Union!15626 r!7292))))

(declare-fun b!5634350 () Bool)

(assert (=> b!5634350 (= e!3472463 e!3472464)))

(declare-fun res!2385791 () Bool)

(assert (=> b!5634350 (=> (not res!2385791) (not e!3472464))))

(assert (=> b!5634350 (= res!2385791 call!424966)))

(assert (= (and d!1779693 (not res!2385792)) b!5634348))

(assert (= (and b!5634348 c!989703) b!5634347))

(assert (= (and b!5634348 (not c!989703)) b!5634349))

(assert (= (and b!5634347 res!2385793) b!5634343))

(assert (= (and b!5634349 c!989704) b!5634345))

(assert (= (and b!5634349 (not c!989704)) b!5634344))

(assert (= (and b!5634345 res!2385794) b!5634346))

(assert (= (and b!5634344 (not res!2385790)) b!5634350))

(assert (= (and b!5634350 res!2385791) b!5634342))

(assert (= (or b!5634346 b!5634342) bm!424961))

(assert (= (or b!5634345 b!5634350) bm!424963))

(assert (= (or b!5634343 bm!424961) bm!424962))

(declare-fun m!6605144 () Bool)

(assert (=> bm!424962 m!6605144))

(declare-fun m!6605146 () Bool)

(assert (=> b!5634347 m!6605146))

(declare-fun m!6605148 () Bool)

(assert (=> bm!424963 m!6605148))

(assert (=> start!583670 d!1779693))

(declare-fun d!1779697 () Bool)

(assert (=> d!1779697 (= (nullable!5658 (regOne!31764 (regOne!31764 r!7292))) (nullableFct!1755 (regOne!31764 (regOne!31764 r!7292))))))

(declare-fun bs!1303853 () Bool)

(assert (= bs!1303853 d!1779697))

(declare-fun m!6605150 () Bool)

(assert (=> bs!1303853 m!6605150))

(assert (=> b!5633809 d!1779697))

(declare-fun b!5634355 () Bool)

(declare-fun e!3472469 () Bool)

(declare-fun tp!1559312 () Bool)

(declare-fun tp!1559313 () Bool)

(assert (=> b!5634355 (= e!3472469 (and tp!1559312 tp!1559313))))

(assert (=> b!5633787 (= tp!1559268 e!3472469)))

(assert (= (and b!5633787 (is-Cons!63053 (exprs!5510 (h!69502 zl!343)))) b!5634355))

(declare-fun e!3472472 () Bool)

(assert (=> b!5633781 (= tp!1559271 e!3472472)))

(declare-fun b!5634367 () Bool)

(declare-fun tp!1559327 () Bool)

(declare-fun tp!1559328 () Bool)

(assert (=> b!5634367 (= e!3472472 (and tp!1559327 tp!1559328))))

(declare-fun b!5634368 () Bool)

(declare-fun tp!1559326 () Bool)

(assert (=> b!5634368 (= e!3472472 tp!1559326)))

(declare-fun b!5634366 () Bool)

(assert (=> b!5634366 (= e!3472472 tp_is_empty!40505)))

(declare-fun b!5634369 () Bool)

(declare-fun tp!1559324 () Bool)

(declare-fun tp!1559325 () Bool)

(assert (=> b!5634369 (= e!3472472 (and tp!1559324 tp!1559325))))

(assert (= (and b!5633781 (is-ElementMatch!15626 (reg!15955 r!7292))) b!5634366))

(assert (= (and b!5633781 (is-Concat!24471 (reg!15955 r!7292))) b!5634367))

(assert (= (and b!5633781 (is-Star!15626 (reg!15955 r!7292))) b!5634368))

(assert (= (and b!5633781 (is-Union!15626 (reg!15955 r!7292))) b!5634369))

(declare-fun e!3472473 () Bool)

(assert (=> b!5633807 (= tp!1559273 e!3472473)))

(declare-fun b!5634371 () Bool)

(declare-fun tp!1559332 () Bool)

(declare-fun tp!1559333 () Bool)

(assert (=> b!5634371 (= e!3472473 (and tp!1559332 tp!1559333))))

(declare-fun b!5634372 () Bool)

(declare-fun tp!1559331 () Bool)

(assert (=> b!5634372 (= e!3472473 tp!1559331)))

(declare-fun b!5634370 () Bool)

(assert (=> b!5634370 (= e!3472473 tp_is_empty!40505)))

(declare-fun b!5634373 () Bool)

(declare-fun tp!1559329 () Bool)

(declare-fun tp!1559330 () Bool)

(assert (=> b!5634373 (= e!3472473 (and tp!1559329 tp!1559330))))

(assert (= (and b!5633807 (is-ElementMatch!15626 (regOne!31765 r!7292))) b!5634370))

(assert (= (and b!5633807 (is-Concat!24471 (regOne!31765 r!7292))) b!5634371))

(assert (= (and b!5633807 (is-Star!15626 (regOne!31765 r!7292))) b!5634372))

(assert (= (and b!5633807 (is-Union!15626 (regOne!31765 r!7292))) b!5634373))

(declare-fun e!3472474 () Bool)

(assert (=> b!5633807 (= tp!1559276 e!3472474)))

(declare-fun b!5634375 () Bool)

(declare-fun tp!1559337 () Bool)

(declare-fun tp!1559338 () Bool)

(assert (=> b!5634375 (= e!3472474 (and tp!1559337 tp!1559338))))

(declare-fun b!5634376 () Bool)

(declare-fun tp!1559336 () Bool)

(assert (=> b!5634376 (= e!3472474 tp!1559336)))

(declare-fun b!5634374 () Bool)

(assert (=> b!5634374 (= e!3472474 tp_is_empty!40505)))

(declare-fun b!5634377 () Bool)

(declare-fun tp!1559334 () Bool)

(declare-fun tp!1559335 () Bool)

(assert (=> b!5634377 (= e!3472474 (and tp!1559334 tp!1559335))))

(assert (= (and b!5633807 (is-ElementMatch!15626 (regTwo!31765 r!7292))) b!5634374))

(assert (= (and b!5633807 (is-Concat!24471 (regTwo!31765 r!7292))) b!5634375))

(assert (= (and b!5633807 (is-Star!15626 (regTwo!31765 r!7292))) b!5634376))

(assert (= (and b!5633807 (is-Union!15626 (regTwo!31765 r!7292))) b!5634377))

(declare-fun b!5634378 () Bool)

(declare-fun e!3472475 () Bool)

(declare-fun tp!1559339 () Bool)

(declare-fun tp!1559340 () Bool)

(assert (=> b!5634378 (= e!3472475 (and tp!1559339 tp!1559340))))

(assert (=> b!5633780 (= tp!1559269 e!3472475)))

(assert (= (and b!5633780 (is-Cons!63053 (exprs!5510 setElem!37645))) b!5634378))

(declare-fun b!5634383 () Bool)

(declare-fun e!3472478 () Bool)

(declare-fun tp!1559343 () Bool)

(assert (=> b!5634383 (= e!3472478 (and tp_is_empty!40505 tp!1559343))))

(assert (=> b!5633796 (= tp!1559275 e!3472478)))

(assert (= (and b!5633796 (is-Cons!63055 (t!376475 s!2326))) b!5634383))

(declare-fun condSetEmpty!37651 () Bool)

(assert (=> setNonEmpty!37645 (= condSetEmpty!37651 (= setRest!37645 (as set.empty (Set Context!10020))))))

(declare-fun setRes!37651 () Bool)

(assert (=> setNonEmpty!37645 (= tp!1559270 setRes!37651)))

(declare-fun setIsEmpty!37651 () Bool)

(assert (=> setIsEmpty!37651 setRes!37651))

(declare-fun tp!1559349 () Bool)

(declare-fun e!3472481 () Bool)

(declare-fun setNonEmpty!37651 () Bool)

(declare-fun setElem!37651 () Context!10020)

(assert (=> setNonEmpty!37651 (= setRes!37651 (and tp!1559349 (inv!82313 setElem!37651) e!3472481))))

(declare-fun setRest!37651 () (Set Context!10020))

(assert (=> setNonEmpty!37651 (= setRest!37645 (set.union (set.insert setElem!37651 (as set.empty (Set Context!10020))) setRest!37651))))

(declare-fun b!5634388 () Bool)

(declare-fun tp!1559348 () Bool)

(assert (=> b!5634388 (= e!3472481 tp!1559348)))

(assert (= (and setNonEmpty!37645 condSetEmpty!37651) setIsEmpty!37651))

(assert (= (and setNonEmpty!37645 (not condSetEmpty!37651)) setNonEmpty!37651))

(assert (= setNonEmpty!37651 b!5634388))

(declare-fun m!6605152 () Bool)

(assert (=> setNonEmpty!37651 m!6605152))

(declare-fun b!5634396 () Bool)

(declare-fun e!3472487 () Bool)

(declare-fun tp!1559354 () Bool)

(assert (=> b!5634396 (= e!3472487 tp!1559354)))

(declare-fun e!3472486 () Bool)

(declare-fun b!5634395 () Bool)

(declare-fun tp!1559355 () Bool)

(assert (=> b!5634395 (= e!3472486 (and (inv!82313 (h!69502 (t!376474 zl!343))) e!3472487 tp!1559355))))

(assert (=> b!5633810 (= tp!1559277 e!3472486)))

(assert (= b!5634395 b!5634396))

(assert (= (and b!5633810 (is-Cons!63054 (t!376474 zl!343))) b!5634395))

(declare-fun m!6605154 () Bool)

(assert (=> b!5634395 m!6605154))

(declare-fun e!3472488 () Bool)

(assert (=> b!5633783 (= tp!1559272 e!3472488)))

(declare-fun b!5634398 () Bool)

(declare-fun tp!1559359 () Bool)

(declare-fun tp!1559360 () Bool)

(assert (=> b!5634398 (= e!3472488 (and tp!1559359 tp!1559360))))

(declare-fun b!5634399 () Bool)

(declare-fun tp!1559358 () Bool)

(assert (=> b!5634399 (= e!3472488 tp!1559358)))

(declare-fun b!5634397 () Bool)

(assert (=> b!5634397 (= e!3472488 tp_is_empty!40505)))

(declare-fun b!5634400 () Bool)

(declare-fun tp!1559356 () Bool)

(declare-fun tp!1559357 () Bool)

(assert (=> b!5634400 (= e!3472488 (and tp!1559356 tp!1559357))))

(assert (= (and b!5633783 (is-ElementMatch!15626 (regOne!31764 r!7292))) b!5634397))

(assert (= (and b!5633783 (is-Concat!24471 (regOne!31764 r!7292))) b!5634398))

(assert (= (and b!5633783 (is-Star!15626 (regOne!31764 r!7292))) b!5634399))

(assert (= (and b!5633783 (is-Union!15626 (regOne!31764 r!7292))) b!5634400))

(declare-fun e!3472489 () Bool)

(assert (=> b!5633783 (= tp!1559274 e!3472489)))

(declare-fun b!5634402 () Bool)

(declare-fun tp!1559364 () Bool)

(declare-fun tp!1559365 () Bool)

(assert (=> b!5634402 (= e!3472489 (and tp!1559364 tp!1559365))))

(declare-fun b!5634403 () Bool)

(declare-fun tp!1559363 () Bool)

(assert (=> b!5634403 (= e!3472489 tp!1559363)))

(declare-fun b!5634401 () Bool)

(assert (=> b!5634401 (= e!3472489 tp_is_empty!40505)))

(declare-fun b!5634404 () Bool)

(declare-fun tp!1559361 () Bool)

(declare-fun tp!1559362 () Bool)

(assert (=> b!5634404 (= e!3472489 (and tp!1559361 tp!1559362))))

(assert (= (and b!5633783 (is-ElementMatch!15626 (regTwo!31764 r!7292))) b!5634401))

(assert (= (and b!5633783 (is-Concat!24471 (regTwo!31764 r!7292))) b!5634402))

(assert (= (and b!5633783 (is-Star!15626 (regTwo!31764 r!7292))) b!5634403))

(assert (= (and b!5633783 (is-Union!15626 (regTwo!31764 r!7292))) b!5634404))

(declare-fun b_lambda!213065 () Bool)

(assert (= b_lambda!213059 (or b!5633806 b_lambda!213065)))

(declare-fun bs!1303854 () Bool)

(declare-fun d!1779699 () Bool)

(assert (= bs!1303854 (and d!1779699 b!5633806)))

(assert (=> bs!1303854 (= (dynLambda!24659 lambda!302827 (h!69502 zl!343)) (derivationStepZipperUp!894 (h!69502 zl!343) (h!69503 s!2326)))))

(assert (=> bs!1303854 m!6604646))

(assert (=> d!1779639 d!1779699))

(declare-fun b_lambda!213067 () Bool)

(assert (= b_lambda!213061 (or b!5633806 b_lambda!213067)))

(declare-fun bs!1303855 () Bool)

(declare-fun d!1779701 () Bool)

(assert (= bs!1303855 (and d!1779701 b!5633806)))

(assert (=> bs!1303855 (= (dynLambda!24659 lambda!302827 lt!2262924) (derivationStepZipperUp!894 lt!2262924 (h!69503 s!2326)))))

(assert (=> bs!1303855 m!6604630))

(assert (=> d!1779663 d!1779701))

(declare-fun b_lambda!213069 () Bool)

(assert (= b_lambda!213063 (or b!5633806 b_lambda!213069)))

(declare-fun bs!1303856 () Bool)

(declare-fun d!1779703 () Bool)

(assert (= bs!1303856 (and d!1779703 b!5633806)))

(assert (=> bs!1303856 (= (dynLambda!24659 lambda!302827 lt!2262907) (derivationStepZipperUp!894 lt!2262907 (h!69503 s!2326)))))

(assert (=> bs!1303856 m!6604598))

(assert (=> d!1779675 d!1779703))

(push 1)

(assert (not b!5634065))

(assert (not d!1779661))

(assert (not bm!424938))

(assert (not b!5634403))

(assert (not bm!424962))

(assert (not d!1779607))

(assert (not d!1779649))

(assert (not b!5634050))

(assert (not b!5634064))

(assert (not b!5634287))

(assert (not d!1779591))

(assert (not b!5634311))

(assert (not bm!424931))

(assert (not b!5634172))

(assert (not bs!1303855))

(assert (not setNonEmpty!37651))

(assert (not b!5634373))

(assert (not d!1779581))

(assert (not b!5634074))

(assert (not b!5633960))

(assert (not b!5634004))

(assert (not b!5634304))

(assert (not b!5634055))

(assert (not bm!424943))

(assert (not b!5633997))

(assert (not d!1779673))

(assert (not b!5634061))

(assert (not b!5634388))

(assert (not b!5634076))

(assert (not d!1779585))

(assert (not d!1779671))

(assert (not b!5634072))

(assert (not b!5634182))

(assert (not b!5633996))

(assert (not b!5634066))

(assert (not b!5634120))

(assert (not b!5634315))

(assert (not d!1779669))

(assert (not b!5634057))

(assert (not b!5634051))

(assert (not b!5634306))

(assert (not d!1779697))

(assert (not b!5634404))

(assert (not d!1779589))

(assert (not b!5634280))

(assert (not b!5634321))

(assert (not bm!424942))

(assert (not b_lambda!213065))

(assert (not b!5634383))

(assert (not b!5634375))

(assert (not b!5634025))

(assert (not b!5634062))

(assert (not b!5634399))

(assert (not b!5633962))

(assert (not d!1779595))

(assert (not bs!1303854))

(assert (not b!5634395))

(assert (not bm!424932))

(assert (not b!5634319))

(assert (not b!5634067))

(assert (not b!5634257))

(assert (not b!5634367))

(assert (not d!1779687))

(assert (not b!5634181))

(assert (not d!1779689))

(assert (not b!5634054))

(assert (not b!5634398))

(assert (not d!1779609))

(assert (not b!5633958))

(assert (not b!5634010))

(assert (not bm!424944))

(assert (not d!1779615))

(assert (not d!1779579))

(assert (not b!5634369))

(assert (not bm!424963))

(assert (not b!5634246))

(assert (not b!5634320))

(assert (not b!5634312))

(assert (not bm!424937))

(assert (not d!1779659))

(assert (not d!1779663))

(assert (not b!5634027))

(assert (not b!5634313))

(assert (not b!5634003))

(assert (not b!5633959))

(assert (not b!5634294))

(assert (not b!5634292))

(assert (not b_lambda!213069))

(assert (not b_lambda!213067))

(assert (not b!5634402))

(assert (not bm!424953))

(assert (not b!5634396))

(assert (not bm!424954))

(assert (not b!5633999))

(assert (not b!5634063))

(assert (not bm!424936))

(assert (not b!5634175))

(assert (not b!5634376))

(assert (not d!1779577))

(assert (not d!1779683))

(assert (not b!5634301))

(assert (not b!5633963))

(assert (not d!1779685))

(assert (not d!1779597))

(assert (not d!1779675))

(assert (not b!5634299))

(assert (not d!1779611))

(assert (not d!1779629))

(assert (not bm!424950))

(assert (not b!5634017))

(assert (not d!1779603))

(assert (not b!5634112))

(assert (not d!1779677))

(assert (not b!5634400))

(assert (not b!5634289))

(assert (not b!5634372))

(assert (not d!1779583))

(assert (not bm!424889))

(assert (not b!5634016))

(assert (not bm!424890))

(assert (not b!5634378))

(assert (not b!5634314))

(assert (not b!5634235))

(assert (not b!5634077))

(assert (not d!1779643))

(assert (not b!5634058))

(assert (not b!5634371))

(assert (not b!5634278))

(assert (not b!5634309))

(assert (not d!1779679))

(assert (not b!5634173))

(assert (not b!5634347))

(assert (not bm!424951))

(assert (not bm!424901))

(assert (not b!5634020))

(assert (not b!5634184))

(assert (not d!1779605))

(assert (not b!5634368))

(assert (not b!5634001))

(assert (not bm!424952))

(assert (not d!1779639))

(assert (not b!5634322))

(assert (not bs!1303856))

(assert (not b!5634355))

(assert (not b!5634318))

(assert (not d!1779593))

(assert (not b!5634310))

(assert (not bm!424930))

(assert tp_is_empty!40505)

(assert (not d!1779681))

(assert (not b!5634377))

(assert (not b!5634052))

(assert (not d!1779627))

(assert (not d!1779587))

(assert (not d!1779621))

(assert (not b!5634002))

(assert (not b!5633961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

