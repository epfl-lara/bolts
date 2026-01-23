; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595044 () Bool)

(assert start!595044)

(declare-fun b!5807146 () Bool)

(assert (=> b!5807146 true))

(assert (=> b!5807146 true))

(declare-fun lambda!316986 () Int)

(declare-fun lambda!316985 () Int)

(assert (=> b!5807146 (not (= lambda!316986 lambda!316985))))

(assert (=> b!5807146 true))

(assert (=> b!5807146 true))

(declare-fun lambda!316987 () Int)

(assert (=> b!5807146 (not (= lambda!316987 lambda!316985))))

(assert (=> b!5807146 (not (= lambda!316987 lambda!316986))))

(assert (=> b!5807146 true))

(assert (=> b!5807146 true))

(declare-fun b!5807148 () Bool)

(assert (=> b!5807148 true))

(declare-fun b!5807129 () Bool)

(declare-fun res!2448838 () Bool)

(declare-fun e!3564827 () Bool)

(assert (=> b!5807129 (=> res!2448838 e!3564827)))

(declare-datatypes ((C!31912 0))(
  ( (C!31913 (val!25658 Int)) )
))
(declare-datatypes ((Regex!15821 0))(
  ( (ElementMatch!15821 (c!1028807 C!31912)) (Concat!24666 (regOne!32154 Regex!15821) (regTwo!32154 Regex!15821)) (EmptyExpr!15821) (Star!15821 (reg!16150 Regex!15821)) (EmptyLang!15821) (Union!15821 (regOne!32155 Regex!15821) (regTwo!32155 Regex!15821)) )
))
(declare-datatypes ((List!63762 0))(
  ( (Nil!63638) (Cons!63638 (h!70086 Regex!15821) (t!377115 List!63762)) )
))
(declare-datatypes ((Context!10410 0))(
  ( (Context!10411 (exprs!5705 List!63762)) )
))
(declare-datatypes ((List!63763 0))(
  ( (Nil!63639) (Cons!63639 (h!70087 Context!10410) (t!377116 List!63763)) )
))
(declare-fun zl!343 () List!63763)

(declare-fun isEmpty!35551 (List!63763) Bool)

(assert (=> b!5807129 (= res!2448838 (not (isEmpty!35551 (t!377116 zl!343))))))

(declare-fun b!5807130 () Bool)

(declare-fun res!2448842 () Bool)

(assert (=> b!5807130 (=> res!2448842 e!3564827)))

(declare-fun r!7292 () Regex!15821)

(declare-fun generalisedConcat!1436 (List!63762) Regex!15821)

(assert (=> b!5807130 (= res!2448842 (not (= r!7292 (generalisedConcat!1436 (exprs!5705 (h!70087 zl!343))))))))

(declare-fun b!5807131 () Bool)

(declare-fun res!2448841 () Bool)

(assert (=> b!5807131 (=> res!2448841 e!3564827)))

(declare-fun generalisedUnion!1684 (List!63762) Regex!15821)

(declare-fun unfocusZipperList!1249 (List!63763) List!63762)

(assert (=> b!5807131 (= res!2448841 (not (= r!7292 (generalisedUnion!1684 (unfocusZipperList!1249 zl!343)))))))

(declare-fun b!5807132 () Bool)

(declare-fun e!3564837 () Bool)

(declare-fun e!3564832 () Bool)

(assert (=> b!5807132 (= e!3564837 e!3564832)))

(declare-fun res!2448836 () Bool)

(assert (=> b!5807132 (=> res!2448836 e!3564832)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2299113 () (InoxSet Context!10410))

(declare-fun lt!2299119 () (InoxSet Context!10410))

(declare-datatypes ((List!63764 0))(
  ( (Nil!63640) (Cons!63640 (h!70088 C!31912) (t!377117 List!63764)) )
))
(declare-fun s!2326 () List!63764)

(declare-fun derivationStepZipper!1890 ((InoxSet Context!10410) C!31912) (InoxSet Context!10410))

(assert (=> b!5807132 (= res!2448836 (not (= lt!2299119 (derivationStepZipper!1890 lt!2299113 (h!70088 s!2326)))))))

(declare-fun lambda!316988 () Int)

(declare-fun lt!2299120 () Context!10410)

(declare-fun flatMap!1428 ((InoxSet Context!10410) Int) (InoxSet Context!10410))

(declare-fun derivationStepZipperUp!1085 (Context!10410 C!31912) (InoxSet Context!10410))

(assert (=> b!5807132 (= (flatMap!1428 lt!2299113 lambda!316988) (derivationStepZipperUp!1085 lt!2299120 (h!70088 s!2326)))))

(declare-datatypes ((Unit!156902 0))(
  ( (Unit!156903) )
))
(declare-fun lt!2299109 () Unit!156902)

(declare-fun lemmaFlatMapOnSingletonSet!960 ((InoxSet Context!10410) Context!10410 Int) Unit!156902)

(assert (=> b!5807132 (= lt!2299109 (lemmaFlatMapOnSingletonSet!960 lt!2299113 lt!2299120 lambda!316988))))

(declare-fun lt!2299108 () Context!10410)

(declare-fun lt!2299124 () (InoxSet Context!10410))

(assert (=> b!5807132 (= (flatMap!1428 lt!2299124 lambda!316988) (derivationStepZipperUp!1085 lt!2299108 (h!70088 s!2326)))))

(declare-fun lt!2299112 () Unit!156902)

(assert (=> b!5807132 (= lt!2299112 (lemmaFlatMapOnSingletonSet!960 lt!2299124 lt!2299108 lambda!316988))))

(declare-fun lt!2299117 () (InoxSet Context!10410))

(assert (=> b!5807132 (= lt!2299117 (derivationStepZipperUp!1085 lt!2299120 (h!70088 s!2326)))))

(declare-fun lt!2299110 () (InoxSet Context!10410))

(assert (=> b!5807132 (= lt!2299110 (derivationStepZipperUp!1085 lt!2299108 (h!70088 s!2326)))))

(assert (=> b!5807132 (= lt!2299113 (store ((as const (Array Context!10410 Bool)) false) lt!2299120 true))))

(assert (=> b!5807132 (= lt!2299124 (store ((as const (Array Context!10410 Bool)) false) lt!2299108 true))))

(assert (=> b!5807132 (= lt!2299108 (Context!10411 (Cons!63638 (reg!16150 r!7292) Nil!63638)))))

(declare-fun b!5807133 () Bool)

(declare-fun e!3564835 () Bool)

(declare-fun e!3564834 () Bool)

(assert (=> b!5807133 (= e!3564835 e!3564834)))

(declare-fun res!2448832 () Bool)

(assert (=> b!5807133 (=> (not res!2448832) (not e!3564834))))

(declare-fun lt!2299118 () Regex!15821)

(assert (=> b!5807133 (= res!2448832 (= r!7292 lt!2299118))))

(declare-fun unfocusZipper!1563 (List!63763) Regex!15821)

(assert (=> b!5807133 (= lt!2299118 (unfocusZipper!1563 zl!343))))

(declare-fun b!5807134 () Bool)

(declare-fun res!2448846 () Bool)

(declare-fun e!3564821 () Bool)

(assert (=> b!5807134 (=> res!2448846 e!3564821)))

(assert (=> b!5807134 (= res!2448846 (or (not (= lt!2299118 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5807135 () Bool)

(declare-fun e!3564825 () Bool)

(declare-fun e!3564819 () Bool)

(assert (=> b!5807135 (= e!3564825 e!3564819)))

(declare-fun res!2448835 () Bool)

(assert (=> b!5807135 (=> res!2448835 e!3564819)))

(declare-fun lt!2299127 () (InoxSet Context!10410))

(declare-fun lt!2299135 () (InoxSet Context!10410))

(assert (=> b!5807135 (= res!2448835 (not (= lt!2299127 lt!2299135)))))

(declare-fun derivationStepZipperDown!1159 (Regex!15821 Context!10410 C!31912) (InoxSet Context!10410))

(assert (=> b!5807135 (= lt!2299135 (derivationStepZipperDown!1159 r!7292 (Context!10411 Nil!63638) (h!70088 s!2326)))))

(assert (=> b!5807135 (= lt!2299127 (derivationStepZipperUp!1085 (Context!10411 (Cons!63638 r!7292 Nil!63638)) (h!70088 s!2326)))))

(declare-fun z!1189 () (InoxSet Context!10410))

(assert (=> b!5807135 (= lt!2299119 (derivationStepZipper!1890 z!1189 (h!70088 s!2326)))))

(declare-fun b!5807136 () Bool)

(declare-fun e!3564829 () Bool)

(declare-fun e!3564833 () Bool)

(assert (=> b!5807136 (= e!3564829 e!3564833)))

(declare-fun res!2448833 () Bool)

(assert (=> b!5807136 (=> res!2448833 e!3564833)))

(declare-fun lt!2299114 () Bool)

(assert (=> b!5807136 (= res!2448833 (not lt!2299114))))

(declare-fun b!5807137 () Bool)

(declare-fun e!3564822 () Bool)

(declare-fun tp!1602968 () Bool)

(assert (=> b!5807137 (= e!3564822 tp!1602968)))

(declare-fun b!5807138 () Bool)

(declare-fun res!2448843 () Bool)

(assert (=> b!5807138 (=> res!2448843 e!3564821)))

(declare-fun lt!2299131 () (InoxSet Context!10410))

(declare-fun matchZipper!1949 ((InoxSet Context!10410) List!63764) Bool)

(assert (=> b!5807138 (= res!2448843 (not (= (matchZipper!1949 lt!2299131 s!2326) (matchZipper!1949 (derivationStepZipper!1890 lt!2299131 (h!70088 s!2326)) (t!377117 s!2326)))))))

(declare-fun b!5807139 () Bool)

(declare-fun e!3564831 () Bool)

(declare-fun lt!2299134 () Bool)

(declare-fun Exists!2921 (Int) Bool)

(assert (=> b!5807139 (= e!3564831 (= lt!2299134 (Exists!2921 lambda!316985)))))

(declare-fun b!5807140 () Bool)

(declare-fun tp!1602967 () Bool)

(declare-fun tp!1602963 () Bool)

(assert (=> b!5807140 (= e!3564822 (and tp!1602967 tp!1602963))))

(declare-fun b!5807141 () Bool)

(assert (=> b!5807141 (= e!3564834 (not e!3564827))))

(declare-fun res!2448834 () Bool)

(assert (=> b!5807141 (=> res!2448834 e!3564827)))

(get-info :version)

(assert (=> b!5807141 (= res!2448834 (not ((_ is Cons!63639) zl!343)))))

(declare-fun lt!2299122 () Bool)

(declare-fun matchRSpec!2924 (Regex!15821 List!63764) Bool)

(assert (=> b!5807141 (= lt!2299122 (matchRSpec!2924 r!7292 s!2326))))

(declare-fun matchR!8006 (Regex!15821 List!63764) Bool)

(assert (=> b!5807141 (= lt!2299122 (matchR!8006 r!7292 s!2326))))

(declare-fun lt!2299130 () Unit!156902)

(declare-fun mainMatchTheorem!2924 (Regex!15821 List!63764) Unit!156902)

(assert (=> b!5807141 (= lt!2299130 (mainMatchTheorem!2924 r!7292 s!2326))))

(declare-fun b!5807142 () Bool)

(declare-fun e!3564828 () Bool)

(assert (=> b!5807142 (= e!3564832 e!3564828)))

(declare-fun res!2448826 () Bool)

(assert (=> b!5807142 (=> res!2448826 e!3564828)))

(assert (=> b!5807142 (= res!2448826 (not lt!2299114))))

(assert (=> b!5807142 e!3564829))

(declare-fun res!2448824 () Bool)

(assert (=> b!5807142 (=> (not res!2448824) (not e!3564829))))

(declare-fun lt!2299132 () Regex!15821)

(assert (=> b!5807142 (= res!2448824 (= lt!2299114 (matchRSpec!2924 lt!2299132 s!2326)))))

(assert (=> b!5807142 (= lt!2299114 (matchR!8006 lt!2299132 s!2326))))

(declare-fun lt!2299136 () Unit!156902)

(assert (=> b!5807142 (= lt!2299136 (mainMatchTheorem!2924 lt!2299132 s!2326))))

(declare-fun res!2448830 () Bool)

(assert (=> start!595044 (=> (not res!2448830) (not e!3564835))))

(declare-fun validRegex!7557 (Regex!15821) Bool)

(assert (=> start!595044 (= res!2448830 (validRegex!7557 r!7292))))

(assert (=> start!595044 e!3564835))

(assert (=> start!595044 e!3564822))

(declare-fun condSetEmpty!39086 () Bool)

(assert (=> start!595044 (= condSetEmpty!39086 (= z!1189 ((as const (Array Context!10410 Bool)) false)))))

(declare-fun setRes!39086 () Bool)

(assert (=> start!595044 setRes!39086))

(declare-fun e!3564818 () Bool)

(assert (=> start!595044 e!3564818))

(declare-fun e!3564823 () Bool)

(assert (=> start!595044 e!3564823))

(declare-fun b!5807143 () Bool)

(declare-fun res!2448829 () Bool)

(assert (=> b!5807143 (=> res!2448829 e!3564827)))

(assert (=> b!5807143 (= res!2448829 (not ((_ is Cons!63638) (exprs!5705 (h!70087 zl!343)))))))

(declare-fun b!5807144 () Bool)

(assert (=> b!5807144 (= e!3564833 e!3564831)))

(declare-fun res!2448828 () Bool)

(assert (=> b!5807144 (=> (not res!2448828) (not e!3564831))))

(assert (=> b!5807144 (= res!2448828 (= (Exists!2921 lambda!316985) (Exists!2921 lambda!316986)))))

(declare-fun b!5807145 () Bool)

(assert (=> b!5807145 (= e!3564821 e!3564837)))

(declare-fun res!2448825 () Bool)

(assert (=> b!5807145 (=> res!2448825 e!3564837)))

(declare-fun lt!2299121 () Context!10410)

(assert (=> b!5807145 (= res!2448825 (not (= (unfocusZipper!1563 (Cons!63639 lt!2299121 Nil!63639)) lt!2299132)))))

(assert (=> b!5807145 (= lt!2299132 (Concat!24666 (reg!16150 r!7292) r!7292))))

(assert (=> b!5807146 (= e!3564827 e!3564825)))

(declare-fun res!2448839 () Bool)

(assert (=> b!5807146 (=> res!2448839 e!3564825)))

(declare-fun e!3564836 () Bool)

(assert (=> b!5807146 (= res!2448839 (not (= lt!2299122 e!3564836)))))

(declare-fun res!2448831 () Bool)

(assert (=> b!5807146 (=> res!2448831 e!3564836)))

(declare-fun isEmpty!35552 (List!63764) Bool)

(assert (=> b!5807146 (= res!2448831 (isEmpty!35552 s!2326))))

(assert (=> b!5807146 (= (Exists!2921 lambda!316985) (Exists!2921 lambda!316987))))

(declare-fun lt!2299126 () Unit!156902)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1550 (Regex!15821 Regex!15821 List!63764) Unit!156902)

(assert (=> b!5807146 (= lt!2299126 (lemmaExistCutMatchRandMatchRSpecEquivalent!1550 (reg!16150 r!7292) r!7292 s!2326))))

(assert (=> b!5807146 (= (Exists!2921 lambda!316985) (Exists!2921 lambda!316986))))

(declare-fun lt!2299129 () Unit!156902)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!602 (Regex!15821 List!63764) Unit!156902)

(assert (=> b!5807146 (= lt!2299129 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!602 (reg!16150 r!7292) s!2326))))

(assert (=> b!5807146 (= lt!2299134 (Exists!2921 lambda!316985))))

(declare-datatypes ((tuple2!65836 0))(
  ( (tuple2!65837 (_1!36221 List!63764) (_2!36221 List!63764)) )
))
(declare-datatypes ((Option!15830 0))(
  ( (None!15829) (Some!15829 (v!51893 tuple2!65836)) )
))
(declare-fun lt!2299128 () Option!15830)

(declare-fun isDefined!12533 (Option!15830) Bool)

(assert (=> b!5807146 (= lt!2299134 (isDefined!12533 lt!2299128))))

(declare-fun findConcatSeparation!2244 (Regex!15821 Regex!15821 List!63764 List!63764 List!63764) Option!15830)

(assert (=> b!5807146 (= lt!2299128 (findConcatSeparation!2244 (reg!16150 r!7292) r!7292 Nil!63640 s!2326 s!2326))))

(declare-fun lt!2299123 () Unit!156902)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2008 (Regex!15821 Regex!15821 List!63764) Unit!156902)

(assert (=> b!5807146 (= lt!2299123 (lemmaFindConcatSeparationEquivalentToExists!2008 (reg!16150 r!7292) r!7292 s!2326))))

(declare-fun tp!1602965 () Bool)

(declare-fun e!3564830 () Bool)

(declare-fun b!5807147 () Bool)

(declare-fun inv!82799 (Context!10410) Bool)

(assert (=> b!5807147 (= e!3564818 (and (inv!82799 (h!70087 zl!343)) e!3564830 tp!1602965))))

(declare-fun e!3564826 () Bool)

(assert (=> b!5807148 (= e!3564819 e!3564826)))

(declare-fun res!2448837 () Bool)

(assert (=> b!5807148 (=> res!2448837 e!3564826)))

(assert (=> b!5807148 (= res!2448837 (not (= lt!2299119 lt!2299135)))))

(assert (=> b!5807148 (= (flatMap!1428 z!1189 lambda!316988) (derivationStepZipperUp!1085 (h!70087 zl!343) (h!70088 s!2326)))))

(declare-fun lt!2299125 () Unit!156902)

(assert (=> b!5807148 (= lt!2299125 (lemmaFlatMapOnSingletonSet!960 z!1189 (h!70087 zl!343) lambda!316988))))

(declare-fun b!5807149 () Bool)

(declare-fun tp!1602971 () Bool)

(declare-fun tp!1602969 () Bool)

(assert (=> b!5807149 (= e!3564822 (and tp!1602971 tp!1602969))))

(declare-fun b!5807150 () Bool)

(declare-fun tp!1602970 () Bool)

(assert (=> b!5807150 (= e!3564830 tp!1602970)))

(declare-fun b!5807151 () Bool)

(declare-fun res!2448827 () Bool)

(assert (=> b!5807151 (=> res!2448827 e!3564832)))

(assert (=> b!5807151 (= res!2448827 (not (= (unfocusZipper!1563 (Cons!63639 lt!2299108 Nil!63639)) (reg!16150 r!7292))))))

(declare-fun b!5807152 () Bool)

(declare-fun res!2448847 () Bool)

(assert (=> b!5807152 (=> res!2448847 e!3564825)))

(assert (=> b!5807152 (= res!2448847 ((_ is Nil!63640) s!2326))))

(declare-fun setIsEmpty!39086 () Bool)

(assert (=> setIsEmpty!39086 setRes!39086))

(declare-fun b!5807153 () Bool)

(declare-fun e!3564820 () Bool)

(assert (=> b!5807153 (= e!3564828 e!3564820)))

(declare-fun res!2448845 () Bool)

(assert (=> b!5807153 (=> res!2448845 e!3564820)))

(declare-fun lt!2299116 () tuple2!65836)

(declare-fun ++!14033 (List!63764 List!63764) List!63764)

(assert (=> b!5807153 (= res!2448845 (not (= s!2326 (++!14033 (_1!36221 lt!2299116) (_2!36221 lt!2299116)))))))

(declare-fun get!21969 (Option!15830) tuple2!65836)

(assert (=> b!5807153 (= lt!2299116 (get!21969 lt!2299128))))

(declare-fun b!5807154 () Bool)

(declare-fun tp_is_empty!40895 () Bool)

(declare-fun tp!1602964 () Bool)

(assert (=> b!5807154 (= e!3564823 (and tp_is_empty!40895 tp!1602964))))

(declare-fun b!5807155 () Bool)

(assert (=> b!5807155 (= e!3564822 tp_is_empty!40895)))

(declare-fun b!5807156 () Bool)

(declare-fun e!3564824 () Bool)

(declare-fun tp!1602966 () Bool)

(assert (=> b!5807156 (= e!3564824 tp!1602966)))

(declare-fun b!5807157 () Bool)

(declare-fun res!2448840 () Bool)

(assert (=> b!5807157 (=> res!2448840 e!3564827)))

(assert (=> b!5807157 (= res!2448840 (or ((_ is EmptyExpr!15821) r!7292) ((_ is EmptyLang!15821) r!7292) ((_ is ElementMatch!15821) r!7292) ((_ is Union!15821) r!7292) ((_ is Concat!24666) r!7292)))))

(declare-fun b!5807158 () Bool)

(assert (=> b!5807158 (= e!3564826 e!3564821)))

(declare-fun res!2448844 () Bool)

(assert (=> b!5807158 (=> res!2448844 e!3564821)))

(assert (=> b!5807158 (= res!2448844 (not (= lt!2299119 (derivationStepZipperDown!1159 (reg!16150 r!7292) lt!2299120 (h!70088 s!2326)))))))

(declare-fun lt!2299115 () List!63762)

(assert (=> b!5807158 (= lt!2299120 (Context!10411 lt!2299115))))

(assert (=> b!5807158 (= (flatMap!1428 lt!2299131 lambda!316988) (derivationStepZipperUp!1085 lt!2299121 (h!70088 s!2326)))))

(declare-fun lt!2299133 () Unit!156902)

(assert (=> b!5807158 (= lt!2299133 (lemmaFlatMapOnSingletonSet!960 lt!2299131 lt!2299121 lambda!316988))))

(declare-fun lt!2299111 () (InoxSet Context!10410))

(assert (=> b!5807158 (= lt!2299111 (derivationStepZipperUp!1085 lt!2299121 (h!70088 s!2326)))))

(assert (=> b!5807158 (= lt!2299131 (store ((as const (Array Context!10410 Bool)) false) lt!2299121 true))))

(assert (=> b!5807158 (= lt!2299121 (Context!10411 (Cons!63638 (reg!16150 r!7292) lt!2299115)))))

(assert (=> b!5807158 (= lt!2299115 (Cons!63638 r!7292 Nil!63638))))

(declare-fun b!5807159 () Bool)

(assert (=> b!5807159 (= e!3564820 (matchR!8006 (reg!16150 r!7292) (_1!36221 lt!2299116)))))

(declare-fun b!5807160 () Bool)

(assert (=> b!5807160 (= e!3564836 lt!2299134)))

(declare-fun b!5807161 () Bool)

(declare-fun res!2448823 () Bool)

(assert (=> b!5807161 (=> res!2448823 e!3564832)))

(assert (=> b!5807161 (= res!2448823 (not (= (unfocusZipper!1563 (Cons!63639 lt!2299120 Nil!63639)) r!7292)))))

(declare-fun tp!1602972 () Bool)

(declare-fun setNonEmpty!39086 () Bool)

(declare-fun setElem!39086 () Context!10410)

(assert (=> setNonEmpty!39086 (= setRes!39086 (and tp!1602972 (inv!82799 setElem!39086) e!3564824))))

(declare-fun setRest!39086 () (InoxSet Context!10410))

(assert (=> setNonEmpty!39086 (= z!1189 ((_ map or) (store ((as const (Array Context!10410 Bool)) false) setElem!39086 true) setRest!39086))))

(declare-fun b!5807162 () Bool)

(declare-fun res!2448848 () Bool)

(assert (=> b!5807162 (=> (not res!2448848) (not e!3564835))))

(declare-fun toList!9605 ((InoxSet Context!10410)) List!63763)

(assert (=> b!5807162 (= res!2448848 (= (toList!9605 z!1189) zl!343))))

(assert (= (and start!595044 res!2448830) b!5807162))

(assert (= (and b!5807162 res!2448848) b!5807133))

(assert (= (and b!5807133 res!2448832) b!5807141))

(assert (= (and b!5807141 (not res!2448834)) b!5807129))

(assert (= (and b!5807129 (not res!2448838)) b!5807130))

(assert (= (and b!5807130 (not res!2448842)) b!5807143))

(assert (= (and b!5807143 (not res!2448829)) b!5807131))

(assert (= (and b!5807131 (not res!2448841)) b!5807157))

(assert (= (and b!5807157 (not res!2448840)) b!5807146))

(assert (= (and b!5807146 (not res!2448831)) b!5807160))

(assert (= (and b!5807146 (not res!2448839)) b!5807152))

(assert (= (and b!5807152 (not res!2448847)) b!5807135))

(assert (= (and b!5807135 (not res!2448835)) b!5807148))

(assert (= (and b!5807148 (not res!2448837)) b!5807158))

(assert (= (and b!5807158 (not res!2448844)) b!5807138))

(assert (= (and b!5807138 (not res!2448843)) b!5807134))

(assert (= (and b!5807134 (not res!2448846)) b!5807145))

(assert (= (and b!5807145 (not res!2448825)) b!5807132))

(assert (= (and b!5807132 (not res!2448836)) b!5807151))

(assert (= (and b!5807151 (not res!2448827)) b!5807161))

(assert (= (and b!5807161 (not res!2448823)) b!5807142))

(assert (= (and b!5807142 res!2448824) b!5807136))

(assert (= (and b!5807136 (not res!2448833)) b!5807144))

(assert (= (and b!5807144 res!2448828) b!5807139))

(assert (= (and b!5807142 (not res!2448826)) b!5807153))

(assert (= (and b!5807153 (not res!2448845)) b!5807159))

(assert (= (and start!595044 ((_ is ElementMatch!15821) r!7292)) b!5807155))

(assert (= (and start!595044 ((_ is Concat!24666) r!7292)) b!5807140))

(assert (= (and start!595044 ((_ is Star!15821) r!7292)) b!5807137))

(assert (= (and start!595044 ((_ is Union!15821) r!7292)) b!5807149))

(assert (= (and start!595044 condSetEmpty!39086) setIsEmpty!39086))

(assert (= (and start!595044 (not condSetEmpty!39086)) setNonEmpty!39086))

(assert (= setNonEmpty!39086 b!5807156))

(assert (= b!5807147 b!5807150))

(assert (= (and start!595044 ((_ is Cons!63639) zl!343)) b!5807147))

(assert (= (and start!595044 ((_ is Cons!63640) s!2326)) b!5807154))

(declare-fun m!6746278 () Bool)

(assert (=> b!5807129 m!6746278))

(declare-fun m!6746280 () Bool)

(assert (=> b!5807158 m!6746280))

(declare-fun m!6746282 () Bool)

(assert (=> b!5807158 m!6746282))

(declare-fun m!6746284 () Bool)

(assert (=> b!5807158 m!6746284))

(declare-fun m!6746286 () Bool)

(assert (=> b!5807158 m!6746286))

(declare-fun m!6746288 () Bool)

(assert (=> b!5807158 m!6746288))

(declare-fun m!6746290 () Bool)

(assert (=> start!595044 m!6746290))

(declare-fun m!6746292 () Bool)

(assert (=> b!5807133 m!6746292))

(declare-fun m!6746294 () Bool)

(assert (=> b!5807142 m!6746294))

(declare-fun m!6746296 () Bool)

(assert (=> b!5807142 m!6746296))

(declare-fun m!6746298 () Bool)

(assert (=> b!5807142 m!6746298))

(declare-fun m!6746300 () Bool)

(assert (=> b!5807161 m!6746300))

(declare-fun m!6746302 () Bool)

(assert (=> b!5807159 m!6746302))

(declare-fun m!6746304 () Bool)

(assert (=> setNonEmpty!39086 m!6746304))

(declare-fun m!6746306 () Bool)

(assert (=> b!5807145 m!6746306))

(declare-fun m!6746308 () Bool)

(assert (=> b!5807141 m!6746308))

(declare-fun m!6746310 () Bool)

(assert (=> b!5807141 m!6746310))

(declare-fun m!6746312 () Bool)

(assert (=> b!5807141 m!6746312))

(declare-fun m!6746314 () Bool)

(assert (=> b!5807162 m!6746314))

(declare-fun m!6746316 () Bool)

(assert (=> b!5807151 m!6746316))

(declare-fun m!6746318 () Bool)

(assert (=> b!5807135 m!6746318))

(declare-fun m!6746320 () Bool)

(assert (=> b!5807135 m!6746320))

(declare-fun m!6746322 () Bool)

(assert (=> b!5807135 m!6746322))

(declare-fun m!6746324 () Bool)

(assert (=> b!5807153 m!6746324))

(declare-fun m!6746326 () Bool)

(assert (=> b!5807153 m!6746326))

(declare-fun m!6746328 () Bool)

(assert (=> b!5807131 m!6746328))

(assert (=> b!5807131 m!6746328))

(declare-fun m!6746330 () Bool)

(assert (=> b!5807131 m!6746330))

(declare-fun m!6746332 () Bool)

(assert (=> b!5807148 m!6746332))

(declare-fun m!6746334 () Bool)

(assert (=> b!5807148 m!6746334))

(declare-fun m!6746336 () Bool)

(assert (=> b!5807148 m!6746336))

(declare-fun m!6746338 () Bool)

(assert (=> b!5807139 m!6746338))

(assert (=> b!5807144 m!6746338))

(declare-fun m!6746340 () Bool)

(assert (=> b!5807144 m!6746340))

(declare-fun m!6746342 () Bool)

(assert (=> b!5807138 m!6746342))

(declare-fun m!6746344 () Bool)

(assert (=> b!5807138 m!6746344))

(assert (=> b!5807138 m!6746344))

(declare-fun m!6746346 () Bool)

(assert (=> b!5807138 m!6746346))

(declare-fun m!6746348 () Bool)

(assert (=> b!5807147 m!6746348))

(declare-fun m!6746350 () Bool)

(assert (=> b!5807146 m!6746350))

(declare-fun m!6746352 () Bool)

(assert (=> b!5807146 m!6746352))

(declare-fun m!6746354 () Bool)

(assert (=> b!5807146 m!6746354))

(declare-fun m!6746356 () Bool)

(assert (=> b!5807146 m!6746356))

(assert (=> b!5807146 m!6746338))

(assert (=> b!5807146 m!6746338))

(assert (=> b!5807146 m!6746338))

(declare-fun m!6746358 () Bool)

(assert (=> b!5807146 m!6746358))

(declare-fun m!6746360 () Bool)

(assert (=> b!5807146 m!6746360))

(assert (=> b!5807146 m!6746340))

(declare-fun m!6746362 () Bool)

(assert (=> b!5807146 m!6746362))

(declare-fun m!6746364 () Bool)

(assert (=> b!5807130 m!6746364))

(declare-fun m!6746366 () Bool)

(assert (=> b!5807132 m!6746366))

(declare-fun m!6746368 () Bool)

(assert (=> b!5807132 m!6746368))

(declare-fun m!6746370 () Bool)

(assert (=> b!5807132 m!6746370))

(declare-fun m!6746372 () Bool)

(assert (=> b!5807132 m!6746372))

(declare-fun m!6746374 () Bool)

(assert (=> b!5807132 m!6746374))

(declare-fun m!6746376 () Bool)

(assert (=> b!5807132 m!6746376))

(declare-fun m!6746378 () Bool)

(assert (=> b!5807132 m!6746378))

(declare-fun m!6746380 () Bool)

(assert (=> b!5807132 m!6746380))

(declare-fun m!6746382 () Bool)

(assert (=> b!5807132 m!6746382))

(check-sat (not b!5807144) (not b!5807132) (not b!5807139) (not b!5807147) tp_is_empty!40895 (not b!5807131) (not b!5807129) (not b!5807138) (not b!5807135) (not b!5807142) (not b!5807145) (not b!5807149) (not start!595044) (not b!5807133) (not b!5807154) (not b!5807161) (not b!5807151) (not b!5807130) (not b!5807140) (not b!5807150) (not setNonEmpty!39086) (not b!5807137) (not b!5807141) (not b!5807153) (not b!5807159) (not b!5807158) (not b!5807156) (not b!5807162) (not b!5807148) (not b!5807146))
(check-sat)
(get-model)

(declare-fun d!1829010 () Bool)

(declare-fun lambda!316991 () Int)

(declare-fun forall!14928 (List!63762 Int) Bool)

(assert (=> d!1829010 (= (inv!82799 (h!70087 zl!343)) (forall!14928 (exprs!5705 (h!70087 zl!343)) lambda!316991))))

(declare-fun bs!1371076 () Bool)

(assert (= bs!1371076 d!1829010))

(declare-fun m!6746384 () Bool)

(assert (=> bs!1371076 m!6746384))

(assert (=> b!5807147 d!1829010))

(declare-fun d!1829012 () Bool)

(declare-fun choose!44075 (Int) Bool)

(assert (=> d!1829012 (= (Exists!2921 lambda!316986) (choose!44075 lambda!316986))))

(declare-fun bs!1371077 () Bool)

(assert (= bs!1371077 d!1829012))

(declare-fun m!6746386 () Bool)

(assert (=> bs!1371077 m!6746386))

(assert (=> b!5807146 d!1829012))

(declare-fun bs!1371078 () Bool)

(declare-fun d!1829014 () Bool)

(assert (= bs!1371078 (and d!1829014 b!5807146)))

(declare-fun lambda!316996 () Int)

(assert (=> bs!1371078 (= lambda!316996 lambda!316985)))

(assert (=> bs!1371078 (not (= lambda!316996 lambda!316986))))

(assert (=> bs!1371078 (not (= lambda!316996 lambda!316987))))

(assert (=> d!1829014 true))

(assert (=> d!1829014 true))

(assert (=> d!1829014 true))

(declare-fun lambda!316997 () Int)

(assert (=> bs!1371078 (not (= lambda!316997 lambda!316985))))

(assert (=> bs!1371078 (not (= lambda!316997 lambda!316986))))

(assert (=> bs!1371078 (= lambda!316997 lambda!316987)))

(declare-fun bs!1371079 () Bool)

(assert (= bs!1371079 d!1829014))

(assert (=> bs!1371079 (not (= lambda!316997 lambda!316996))))

(assert (=> d!1829014 true))

(assert (=> d!1829014 true))

(assert (=> d!1829014 true))

(assert (=> d!1829014 (= (Exists!2921 lambda!316996) (Exists!2921 lambda!316997))))

(declare-fun lt!2299139 () Unit!156902)

(declare-fun choose!44076 (Regex!15821 Regex!15821 List!63764) Unit!156902)

(assert (=> d!1829014 (= lt!2299139 (choose!44076 (reg!16150 r!7292) r!7292 s!2326))))

(assert (=> d!1829014 (validRegex!7557 (reg!16150 r!7292))))

(assert (=> d!1829014 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1550 (reg!16150 r!7292) r!7292 s!2326) lt!2299139)))

(declare-fun m!6746388 () Bool)

(assert (=> bs!1371079 m!6746388))

(declare-fun m!6746390 () Bool)

(assert (=> bs!1371079 m!6746390))

(declare-fun m!6746392 () Bool)

(assert (=> bs!1371079 m!6746392))

(declare-fun m!6746394 () Bool)

(assert (=> bs!1371079 m!6746394))

(assert (=> b!5807146 d!1829014))

(declare-fun bs!1371080 () Bool)

(declare-fun d!1829016 () Bool)

(assert (= bs!1371080 (and d!1829016 d!1829014)))

(declare-fun lambda!317002 () Int)

(assert (=> bs!1371080 (not (= lambda!317002 lambda!316997))))

(declare-fun bs!1371081 () Bool)

(assert (= bs!1371081 (and d!1829016 b!5807146)))

(assert (=> bs!1371081 (not (= lambda!317002 lambda!316987))))

(assert (=> bs!1371081 (= (= (Star!15821 (reg!16150 r!7292)) r!7292) (= lambda!317002 lambda!316985))))

(assert (=> bs!1371081 (not (= lambda!317002 lambda!316986))))

(assert (=> bs!1371080 (= (= (Star!15821 (reg!16150 r!7292)) r!7292) (= lambda!317002 lambda!316996))))

(assert (=> d!1829016 true))

(assert (=> d!1829016 true))

(declare-fun lambda!317003 () Int)

(assert (=> bs!1371080 (not (= lambda!317003 lambda!316997))))

(assert (=> bs!1371081 (not (= lambda!317003 lambda!316987))))

(assert (=> bs!1371081 (not (= lambda!317003 lambda!316985))))

(declare-fun bs!1371082 () Bool)

(assert (= bs!1371082 d!1829016))

(assert (=> bs!1371082 (not (= lambda!317003 lambda!317002))))

(assert (=> bs!1371081 (= (= (Star!15821 (reg!16150 r!7292)) r!7292) (= lambda!317003 lambda!316986))))

(assert (=> bs!1371080 (not (= lambda!317003 lambda!316996))))

(assert (=> d!1829016 true))

(assert (=> d!1829016 true))

(assert (=> d!1829016 (= (Exists!2921 lambda!317002) (Exists!2921 lambda!317003))))

(declare-fun lt!2299142 () Unit!156902)

(declare-fun choose!44077 (Regex!15821 List!63764) Unit!156902)

(assert (=> d!1829016 (= lt!2299142 (choose!44077 (reg!16150 r!7292) s!2326))))

(assert (=> d!1829016 (validRegex!7557 (reg!16150 r!7292))))

(assert (=> d!1829016 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!602 (reg!16150 r!7292) s!2326) lt!2299142)))

(declare-fun m!6746396 () Bool)

(assert (=> bs!1371082 m!6746396))

(declare-fun m!6746398 () Bool)

(assert (=> bs!1371082 m!6746398))

(declare-fun m!6746400 () Bool)

(assert (=> bs!1371082 m!6746400))

(assert (=> bs!1371082 m!6746394))

(assert (=> b!5807146 d!1829016))

(declare-fun d!1829018 () Bool)

(declare-fun isEmpty!35553 (Option!15830) Bool)

(assert (=> d!1829018 (= (isDefined!12533 lt!2299128) (not (isEmpty!35553 lt!2299128)))))

(declare-fun bs!1371083 () Bool)

(assert (= bs!1371083 d!1829018))

(declare-fun m!6746402 () Bool)

(assert (=> bs!1371083 m!6746402))

(assert (=> b!5807146 d!1829018))

(declare-fun d!1829020 () Bool)

(assert (=> d!1829020 (= (isEmpty!35552 s!2326) ((_ is Nil!63640) s!2326))))

(assert (=> b!5807146 d!1829020))

(declare-fun d!1829022 () Bool)

(assert (=> d!1829022 (= (Exists!2921 lambda!316985) (choose!44075 lambda!316985))))

(declare-fun bs!1371084 () Bool)

(assert (= bs!1371084 d!1829022))

(declare-fun m!6746404 () Bool)

(assert (=> bs!1371084 m!6746404))

(assert (=> b!5807146 d!1829022))

(declare-fun d!1829024 () Bool)

(assert (=> d!1829024 (= (Exists!2921 lambda!316987) (choose!44075 lambda!316987))))

(declare-fun bs!1371085 () Bool)

(assert (= bs!1371085 d!1829024))

(declare-fun m!6746406 () Bool)

(assert (=> bs!1371085 m!6746406))

(assert (=> b!5807146 d!1829024))

(declare-fun b!5807205 () Bool)

(declare-fun e!3564857 () Option!15830)

(assert (=> b!5807205 (= e!3564857 None!15829)))

(declare-fun b!5807206 () Bool)

(declare-fun e!3564856 () Bool)

(assert (=> b!5807206 (= e!3564856 (matchR!8006 r!7292 s!2326))))

(declare-fun b!5807207 () Bool)

(declare-fun res!2448881 () Bool)

(declare-fun e!3564859 () Bool)

(assert (=> b!5807207 (=> (not res!2448881) (not e!3564859))))

(declare-fun lt!2299151 () Option!15830)

(assert (=> b!5807207 (= res!2448881 (matchR!8006 r!7292 (_2!36221 (get!21969 lt!2299151))))))

(declare-fun b!5807208 () Bool)

(declare-fun e!3564860 () Option!15830)

(assert (=> b!5807208 (= e!3564860 (Some!15829 (tuple2!65837 Nil!63640 s!2326)))))

(declare-fun b!5807209 () Bool)

(declare-fun res!2448877 () Bool)

(assert (=> b!5807209 (=> (not res!2448877) (not e!3564859))))

(assert (=> b!5807209 (= res!2448877 (matchR!8006 (reg!16150 r!7292) (_1!36221 (get!21969 lt!2299151))))))

(declare-fun b!5807210 () Bool)

(assert (=> b!5807210 (= e!3564860 e!3564857)))

(declare-fun c!1028812 () Bool)

(assert (=> b!5807210 (= c!1028812 ((_ is Nil!63640) s!2326))))

(declare-fun b!5807211 () Bool)

(declare-fun e!3564858 () Bool)

(assert (=> b!5807211 (= e!3564858 (not (isDefined!12533 lt!2299151)))))

(declare-fun d!1829026 () Bool)

(assert (=> d!1829026 e!3564858))

(declare-fun res!2448879 () Bool)

(assert (=> d!1829026 (=> res!2448879 e!3564858)))

(assert (=> d!1829026 (= res!2448879 e!3564859)))

(declare-fun res!2448878 () Bool)

(assert (=> d!1829026 (=> (not res!2448878) (not e!3564859))))

(assert (=> d!1829026 (= res!2448878 (isDefined!12533 lt!2299151))))

(assert (=> d!1829026 (= lt!2299151 e!3564860)))

(declare-fun c!1028813 () Bool)

(assert (=> d!1829026 (= c!1028813 e!3564856)))

(declare-fun res!2448880 () Bool)

(assert (=> d!1829026 (=> (not res!2448880) (not e!3564856))))

(assert (=> d!1829026 (= res!2448880 (matchR!8006 (reg!16150 r!7292) Nil!63640))))

(assert (=> d!1829026 (validRegex!7557 (reg!16150 r!7292))))

(assert (=> d!1829026 (= (findConcatSeparation!2244 (reg!16150 r!7292) r!7292 Nil!63640 s!2326 s!2326) lt!2299151)))

(declare-fun b!5807212 () Bool)

(declare-fun lt!2299150 () Unit!156902)

(declare-fun lt!2299149 () Unit!156902)

(assert (=> b!5807212 (= lt!2299150 lt!2299149)))

(assert (=> b!5807212 (= (++!14033 (++!14033 Nil!63640 (Cons!63640 (h!70088 s!2326) Nil!63640)) (t!377117 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2139 (List!63764 C!31912 List!63764 List!63764) Unit!156902)

(assert (=> b!5807212 (= lt!2299149 (lemmaMoveElementToOtherListKeepsConcatEq!2139 Nil!63640 (h!70088 s!2326) (t!377117 s!2326) s!2326))))

(assert (=> b!5807212 (= e!3564857 (findConcatSeparation!2244 (reg!16150 r!7292) r!7292 (++!14033 Nil!63640 (Cons!63640 (h!70088 s!2326) Nil!63640)) (t!377117 s!2326) s!2326))))

(declare-fun b!5807213 () Bool)

(assert (=> b!5807213 (= e!3564859 (= (++!14033 (_1!36221 (get!21969 lt!2299151)) (_2!36221 (get!21969 lt!2299151))) s!2326))))

(assert (= (and d!1829026 res!2448880) b!5807206))

(assert (= (and d!1829026 c!1028813) b!5807208))

(assert (= (and d!1829026 (not c!1028813)) b!5807210))

(assert (= (and b!5807210 c!1028812) b!5807205))

(assert (= (and b!5807210 (not c!1028812)) b!5807212))

(assert (= (and d!1829026 res!2448878) b!5807209))

(assert (= (and b!5807209 res!2448877) b!5807207))

(assert (= (and b!5807207 res!2448881) b!5807213))

(assert (= (and d!1829026 (not res!2448879)) b!5807211))

(assert (=> b!5807206 m!6746310))

(declare-fun m!6746408 () Bool)

(assert (=> b!5807213 m!6746408))

(declare-fun m!6746410 () Bool)

(assert (=> b!5807213 m!6746410))

(declare-fun m!6746412 () Bool)

(assert (=> b!5807212 m!6746412))

(assert (=> b!5807212 m!6746412))

(declare-fun m!6746414 () Bool)

(assert (=> b!5807212 m!6746414))

(declare-fun m!6746416 () Bool)

(assert (=> b!5807212 m!6746416))

(assert (=> b!5807212 m!6746412))

(declare-fun m!6746418 () Bool)

(assert (=> b!5807212 m!6746418))

(assert (=> b!5807207 m!6746408))

(declare-fun m!6746420 () Bool)

(assert (=> b!5807207 m!6746420))

(assert (=> b!5807209 m!6746408))

(declare-fun m!6746422 () Bool)

(assert (=> b!5807209 m!6746422))

(declare-fun m!6746424 () Bool)

(assert (=> d!1829026 m!6746424))

(declare-fun m!6746426 () Bool)

(assert (=> d!1829026 m!6746426))

(assert (=> d!1829026 m!6746394))

(assert (=> b!5807211 m!6746424))

(assert (=> b!5807146 d!1829026))

(declare-fun bs!1371088 () Bool)

(declare-fun d!1829028 () Bool)

(assert (= bs!1371088 (and d!1829028 d!1829014)))

(declare-fun lambda!317009 () Int)

(assert (=> bs!1371088 (not (= lambda!317009 lambda!316997))))

(declare-fun bs!1371089 () Bool)

(assert (= bs!1371089 (and d!1829028 b!5807146)))

(assert (=> bs!1371089 (not (= lambda!317009 lambda!316987))))

(assert (=> bs!1371089 (= lambda!317009 lambda!316985)))

(declare-fun bs!1371090 () Bool)

(assert (= bs!1371090 (and d!1829028 d!1829016)))

(assert (=> bs!1371090 (= (= r!7292 (Star!15821 (reg!16150 r!7292))) (= lambda!317009 lambda!317002))))

(assert (=> bs!1371090 (not (= lambda!317009 lambda!317003))))

(assert (=> bs!1371089 (not (= lambda!317009 lambda!316986))))

(assert (=> bs!1371088 (= lambda!317009 lambda!316996)))

(assert (=> d!1829028 true))

(assert (=> d!1829028 true))

(assert (=> d!1829028 true))

(assert (=> d!1829028 (= (isDefined!12533 (findConcatSeparation!2244 (reg!16150 r!7292) r!7292 Nil!63640 s!2326 s!2326)) (Exists!2921 lambda!317009))))

(declare-fun lt!2299156 () Unit!156902)

(declare-fun choose!44078 (Regex!15821 Regex!15821 List!63764) Unit!156902)

(assert (=> d!1829028 (= lt!2299156 (choose!44078 (reg!16150 r!7292) r!7292 s!2326))))

(assert (=> d!1829028 (validRegex!7557 (reg!16150 r!7292))))

(assert (=> d!1829028 (= (lemmaFindConcatSeparationEquivalentToExists!2008 (reg!16150 r!7292) r!7292 s!2326) lt!2299156)))

(declare-fun bs!1371091 () Bool)

(assert (= bs!1371091 d!1829028))

(assert (=> bs!1371091 m!6746394))

(assert (=> bs!1371091 m!6746358))

(declare-fun m!6746432 () Bool)

(assert (=> bs!1371091 m!6746432))

(assert (=> bs!1371091 m!6746358))

(declare-fun m!6746434 () Bool)

(assert (=> bs!1371091 m!6746434))

(declare-fun m!6746436 () Bool)

(assert (=> bs!1371091 m!6746436))

(assert (=> b!5807146 d!1829028))

(declare-fun call!453379 () List!63762)

(declare-fun c!1028834 () Bool)

(declare-fun bm!453370 () Bool)

(declare-fun call!453376 () (InoxSet Context!10410))

(assert (=> bm!453370 (= call!453376 (derivationStepZipperDown!1159 (ite c!1028834 (regOne!32155 (reg!16150 r!7292)) (regOne!32154 (reg!16150 r!7292))) (ite c!1028834 lt!2299120 (Context!10411 call!453379)) (h!70088 s!2326)))))

(declare-fun b!5807272 () Bool)

(declare-fun e!3564893 () (InoxSet Context!10410))

(declare-fun call!453378 () (InoxSet Context!10410))

(assert (=> b!5807272 (= e!3564893 call!453378)))

(declare-fun d!1829038 () Bool)

(declare-fun c!1028836 () Bool)

(assert (=> d!1829038 (= c!1028836 (and ((_ is ElementMatch!15821) (reg!16150 r!7292)) (= (c!1028807 (reg!16150 r!7292)) (h!70088 s!2326))))))

(declare-fun e!3564897 () (InoxSet Context!10410))

(assert (=> d!1829038 (= (derivationStepZipperDown!1159 (reg!16150 r!7292) lt!2299120 (h!70088 s!2326)) e!3564897)))

(declare-fun b!5807273 () Bool)

(declare-fun e!3564894 () (InoxSet Context!10410))

(assert (=> b!5807273 (= e!3564894 ((as const (Array Context!10410 Bool)) false))))

(declare-fun b!5807274 () Bool)

(declare-fun e!3564895 () (InoxSet Context!10410))

(assert (=> b!5807274 (= e!3564897 e!3564895)))

(assert (=> b!5807274 (= c!1028834 ((_ is Union!15821) (reg!16150 r!7292)))))

(declare-fun bm!453371 () Bool)

(declare-fun call!453377 () (InoxSet Context!10410))

(assert (=> bm!453371 (= call!453378 call!453377)))

(declare-fun b!5807275 () Bool)

(declare-fun c!1028832 () Bool)

(assert (=> b!5807275 (= c!1028832 ((_ is Star!15821) (reg!16150 r!7292)))))

(assert (=> b!5807275 (= e!3564893 e!3564894)))

(declare-fun b!5807276 () Bool)

(declare-fun e!3564898 () Bool)

(declare-fun nullable!5846 (Regex!15821) Bool)

(assert (=> b!5807276 (= e!3564898 (nullable!5846 (regOne!32154 (reg!16150 r!7292))))))

(declare-fun b!5807277 () Bool)

(assert (=> b!5807277 (= e!3564897 (store ((as const (Array Context!10410 Bool)) false) lt!2299120 true))))

(declare-fun bm!453372 () Bool)

(declare-fun c!1028835 () Bool)

(declare-fun c!1028833 () Bool)

(declare-fun $colon$colon!1801 (List!63762 Regex!15821) List!63762)

(assert (=> bm!453372 (= call!453379 ($colon$colon!1801 (exprs!5705 lt!2299120) (ite (or c!1028833 c!1028835) (regTwo!32154 (reg!16150 r!7292)) (reg!16150 r!7292))))))

(declare-fun bm!453373 () Bool)

(declare-fun call!453380 () List!63762)

(assert (=> bm!453373 (= call!453380 call!453379)))

(declare-fun b!5807278 () Bool)

(declare-fun e!3564896 () (InoxSet Context!10410))

(assert (=> b!5807278 (= e!3564896 ((_ map or) call!453376 call!453377))))

(declare-fun b!5807279 () Bool)

(assert (=> b!5807279 (= e!3564896 e!3564893)))

(assert (=> b!5807279 (= c!1028835 ((_ is Concat!24666) (reg!16150 r!7292)))))

(declare-fun b!5807280 () Bool)

(assert (=> b!5807280 (= e!3564894 call!453378)))

(declare-fun b!5807281 () Bool)

(declare-fun call!453375 () (InoxSet Context!10410))

(assert (=> b!5807281 (= e!3564895 ((_ map or) call!453376 call!453375))))

(declare-fun bm!453374 () Bool)

(assert (=> bm!453374 (= call!453375 (derivationStepZipperDown!1159 (ite c!1028834 (regTwo!32155 (reg!16150 r!7292)) (ite c!1028833 (regTwo!32154 (reg!16150 r!7292)) (ite c!1028835 (regOne!32154 (reg!16150 r!7292)) (reg!16150 (reg!16150 r!7292))))) (ite (or c!1028834 c!1028833) lt!2299120 (Context!10411 call!453380)) (h!70088 s!2326)))))

(declare-fun bm!453375 () Bool)

(assert (=> bm!453375 (= call!453377 call!453375)))

(declare-fun b!5807282 () Bool)

(assert (=> b!5807282 (= c!1028833 e!3564898)))

(declare-fun res!2448904 () Bool)

(assert (=> b!5807282 (=> (not res!2448904) (not e!3564898))))

(assert (=> b!5807282 (= res!2448904 ((_ is Concat!24666) (reg!16150 r!7292)))))

(assert (=> b!5807282 (= e!3564895 e!3564896)))

(assert (= (and d!1829038 c!1028836) b!5807277))

(assert (= (and d!1829038 (not c!1028836)) b!5807274))

(assert (= (and b!5807274 c!1028834) b!5807281))

(assert (= (and b!5807274 (not c!1028834)) b!5807282))

(assert (= (and b!5807282 res!2448904) b!5807276))

(assert (= (and b!5807282 c!1028833) b!5807278))

(assert (= (and b!5807282 (not c!1028833)) b!5807279))

(assert (= (and b!5807279 c!1028835) b!5807272))

(assert (= (and b!5807279 (not c!1028835)) b!5807275))

(assert (= (and b!5807275 c!1028832) b!5807280))

(assert (= (and b!5807275 (not c!1028832)) b!5807273))

(assert (= (or b!5807272 b!5807280) bm!453373))

(assert (= (or b!5807272 b!5807280) bm!453371))

(assert (= (or b!5807278 bm!453373) bm!453372))

(assert (= (or b!5807278 bm!453371) bm!453375))

(assert (= (or b!5807281 bm!453375) bm!453374))

(assert (= (or b!5807281 b!5807278) bm!453370))

(declare-fun m!6746438 () Bool)

(assert (=> bm!453374 m!6746438))

(assert (=> b!5807277 m!6746378))

(declare-fun m!6746440 () Bool)

(assert (=> b!5807276 m!6746440))

(declare-fun m!6746442 () Bool)

(assert (=> bm!453372 m!6746442))

(declare-fun m!6746444 () Bool)

(assert (=> bm!453370 m!6746444))

(assert (=> b!5807158 d!1829038))

(declare-fun d!1829040 () Bool)

(declare-fun choose!44079 ((InoxSet Context!10410) Int) (InoxSet Context!10410))

(assert (=> d!1829040 (= (flatMap!1428 lt!2299131 lambda!316988) (choose!44079 lt!2299131 lambda!316988))))

(declare-fun bs!1371092 () Bool)

(assert (= bs!1371092 d!1829040))

(declare-fun m!6746446 () Bool)

(assert (=> bs!1371092 m!6746446))

(assert (=> b!5807158 d!1829040))

(declare-fun b!5807304 () Bool)

(declare-fun e!3564912 () (InoxSet Context!10410))

(assert (=> b!5807304 (= e!3564912 ((as const (Array Context!10410 Bool)) false))))

(declare-fun e!3564913 () (InoxSet Context!10410))

(declare-fun b!5807305 () Bool)

(declare-fun call!453385 () (InoxSet Context!10410))

(assert (=> b!5807305 (= e!3564913 ((_ map or) call!453385 (derivationStepZipperUp!1085 (Context!10411 (t!377115 (exprs!5705 lt!2299121))) (h!70088 s!2326))))))

(declare-fun d!1829042 () Bool)

(declare-fun c!1028845 () Bool)

(declare-fun e!3564914 () Bool)

(assert (=> d!1829042 (= c!1028845 e!3564914)))

(declare-fun res!2448910 () Bool)

(assert (=> d!1829042 (=> (not res!2448910) (not e!3564914))))

(assert (=> d!1829042 (= res!2448910 ((_ is Cons!63638) (exprs!5705 lt!2299121)))))

(assert (=> d!1829042 (= (derivationStepZipperUp!1085 lt!2299121 (h!70088 s!2326)) e!3564913)))

(declare-fun bm!453380 () Bool)

(assert (=> bm!453380 (= call!453385 (derivationStepZipperDown!1159 (h!70086 (exprs!5705 lt!2299121)) (Context!10411 (t!377115 (exprs!5705 lt!2299121))) (h!70088 s!2326)))))

(declare-fun b!5807306 () Bool)

(assert (=> b!5807306 (= e!3564914 (nullable!5846 (h!70086 (exprs!5705 lt!2299121))))))

(declare-fun b!5807307 () Bool)

(assert (=> b!5807307 (= e!3564912 call!453385)))

(declare-fun b!5807308 () Bool)

(assert (=> b!5807308 (= e!3564913 e!3564912)))

(declare-fun c!1028846 () Bool)

(assert (=> b!5807308 (= c!1028846 ((_ is Cons!63638) (exprs!5705 lt!2299121)))))

(assert (= (and d!1829042 res!2448910) b!5807306))

(assert (= (and d!1829042 c!1028845) b!5807305))

(assert (= (and d!1829042 (not c!1028845)) b!5807308))

(assert (= (and b!5807308 c!1028846) b!5807307))

(assert (= (and b!5807308 (not c!1028846)) b!5807304))

(assert (= (or b!5807305 b!5807307) bm!453380))

(declare-fun m!6746454 () Bool)

(assert (=> b!5807305 m!6746454))

(declare-fun m!6746456 () Bool)

(assert (=> bm!453380 m!6746456))

(declare-fun m!6746458 () Bool)

(assert (=> b!5807306 m!6746458))

(assert (=> b!5807158 d!1829042))

(declare-fun d!1829046 () Bool)

(declare-fun dynLambda!24915 (Int Context!10410) (InoxSet Context!10410))

(assert (=> d!1829046 (= (flatMap!1428 lt!2299131 lambda!316988) (dynLambda!24915 lambda!316988 lt!2299121))))

(declare-fun lt!2299160 () Unit!156902)

(declare-fun choose!44080 ((InoxSet Context!10410) Context!10410 Int) Unit!156902)

(assert (=> d!1829046 (= lt!2299160 (choose!44080 lt!2299131 lt!2299121 lambda!316988))))

(assert (=> d!1829046 (= lt!2299131 (store ((as const (Array Context!10410 Bool)) false) lt!2299121 true))))

(assert (=> d!1829046 (= (lemmaFlatMapOnSingletonSet!960 lt!2299131 lt!2299121 lambda!316988) lt!2299160)))

(declare-fun b_lambda!218917 () Bool)

(assert (=> (not b_lambda!218917) (not d!1829046)))

(declare-fun bs!1371096 () Bool)

(assert (= bs!1371096 d!1829046))

(assert (=> bs!1371096 m!6746280))

(declare-fun m!6746460 () Bool)

(assert (=> bs!1371096 m!6746460))

(declare-fun m!6746462 () Bool)

(assert (=> bs!1371096 m!6746462))

(assert (=> bs!1371096 m!6746288))

(assert (=> b!5807158 d!1829046))

(declare-fun d!1829048 () Bool)

(assert (=> d!1829048 (= (flatMap!1428 z!1189 lambda!316988) (choose!44079 z!1189 lambda!316988))))

(declare-fun bs!1371097 () Bool)

(assert (= bs!1371097 d!1829048))

(declare-fun m!6746464 () Bool)

(assert (=> bs!1371097 m!6746464))

(assert (=> b!5807148 d!1829048))

(declare-fun b!5807309 () Bool)

(declare-fun e!3564915 () (InoxSet Context!10410))

(assert (=> b!5807309 (= e!3564915 ((as const (Array Context!10410 Bool)) false))))

(declare-fun e!3564916 () (InoxSet Context!10410))

(declare-fun b!5807310 () Bool)

(declare-fun call!453386 () (InoxSet Context!10410))

(assert (=> b!5807310 (= e!3564916 ((_ map or) call!453386 (derivationStepZipperUp!1085 (Context!10411 (t!377115 (exprs!5705 (h!70087 zl!343)))) (h!70088 s!2326))))))

(declare-fun d!1829050 () Bool)

(declare-fun c!1028847 () Bool)

(declare-fun e!3564917 () Bool)

(assert (=> d!1829050 (= c!1028847 e!3564917)))

(declare-fun res!2448911 () Bool)

(assert (=> d!1829050 (=> (not res!2448911) (not e!3564917))))

(assert (=> d!1829050 (= res!2448911 ((_ is Cons!63638) (exprs!5705 (h!70087 zl!343))))))

(assert (=> d!1829050 (= (derivationStepZipperUp!1085 (h!70087 zl!343) (h!70088 s!2326)) e!3564916)))

(declare-fun bm!453381 () Bool)

(assert (=> bm!453381 (= call!453386 (derivationStepZipperDown!1159 (h!70086 (exprs!5705 (h!70087 zl!343))) (Context!10411 (t!377115 (exprs!5705 (h!70087 zl!343)))) (h!70088 s!2326)))))

(declare-fun b!5807313 () Bool)

(assert (=> b!5807313 (= e!3564917 (nullable!5846 (h!70086 (exprs!5705 (h!70087 zl!343)))))))

(declare-fun b!5807314 () Bool)

(assert (=> b!5807314 (= e!3564915 call!453386)))

(declare-fun b!5807315 () Bool)

(assert (=> b!5807315 (= e!3564916 e!3564915)))

(declare-fun c!1028848 () Bool)

(assert (=> b!5807315 (= c!1028848 ((_ is Cons!63638) (exprs!5705 (h!70087 zl!343))))))

(assert (= (and d!1829050 res!2448911) b!5807313))

(assert (= (and d!1829050 c!1028847) b!5807310))

(assert (= (and d!1829050 (not c!1028847)) b!5807315))

(assert (= (and b!5807315 c!1028848) b!5807314))

(assert (= (and b!5807315 (not c!1028848)) b!5807309))

(assert (= (or b!5807310 b!5807314) bm!453381))

(declare-fun m!6746466 () Bool)

(assert (=> b!5807310 m!6746466))

(declare-fun m!6746468 () Bool)

(assert (=> bm!453381 m!6746468))

(declare-fun m!6746470 () Bool)

(assert (=> b!5807313 m!6746470))

(assert (=> b!5807148 d!1829050))

(declare-fun d!1829052 () Bool)

(assert (=> d!1829052 (= (flatMap!1428 z!1189 lambda!316988) (dynLambda!24915 lambda!316988 (h!70087 zl!343)))))

(declare-fun lt!2299163 () Unit!156902)

(assert (=> d!1829052 (= lt!2299163 (choose!44080 z!1189 (h!70087 zl!343) lambda!316988))))

(assert (=> d!1829052 (= z!1189 (store ((as const (Array Context!10410 Bool)) false) (h!70087 zl!343) true))))

(assert (=> d!1829052 (= (lemmaFlatMapOnSingletonSet!960 z!1189 (h!70087 zl!343) lambda!316988) lt!2299163)))

(declare-fun b_lambda!218919 () Bool)

(assert (=> (not b_lambda!218919) (not d!1829052)))

(declare-fun bs!1371098 () Bool)

(assert (= bs!1371098 d!1829052))

(assert (=> bs!1371098 m!6746332))

(declare-fun m!6746472 () Bool)

(assert (=> bs!1371098 m!6746472))

(declare-fun m!6746474 () Bool)

(assert (=> bs!1371098 m!6746474))

(declare-fun m!6746476 () Bool)

(assert (=> bs!1371098 m!6746476))

(assert (=> b!5807148 d!1829052))

(assert (=> b!5807144 d!1829022))

(assert (=> b!5807144 d!1829012))

(declare-fun d!1829054 () Bool)

(declare-fun lt!2299166 () Regex!15821)

(assert (=> d!1829054 (validRegex!7557 lt!2299166)))

(assert (=> d!1829054 (= lt!2299166 (generalisedUnion!1684 (unfocusZipperList!1249 zl!343)))))

(assert (=> d!1829054 (= (unfocusZipper!1563 zl!343) lt!2299166)))

(declare-fun bs!1371099 () Bool)

(assert (= bs!1371099 d!1829054))

(declare-fun m!6746478 () Bool)

(assert (=> bs!1371099 m!6746478))

(assert (=> bs!1371099 m!6746328))

(assert (=> bs!1371099 m!6746328))

(assert (=> bs!1371099 m!6746330))

(assert (=> b!5807133 d!1829054))

(declare-fun d!1829056 () Bool)

(declare-fun res!2448947 () Bool)

(declare-fun e!3564958 () Bool)

(assert (=> d!1829056 (=> res!2448947 e!3564958)))

(assert (=> d!1829056 (= res!2448947 ((_ is ElementMatch!15821) r!7292))))

(assert (=> d!1829056 (= (validRegex!7557 r!7292) e!3564958)))

(declare-fun b!5807374 () Bool)

(declare-fun e!3564959 () Bool)

(declare-fun e!3564955 () Bool)

(assert (=> b!5807374 (= e!3564959 e!3564955)))

(declare-fun c!1028863 () Bool)

(assert (=> b!5807374 (= c!1028863 ((_ is Union!15821) r!7292))))

(declare-fun bm!453391 () Bool)

(declare-fun call!453396 () Bool)

(declare-fun call!453398 () Bool)

(assert (=> bm!453391 (= call!453396 call!453398)))

(declare-fun b!5807375 () Bool)

(declare-fun e!3564953 () Bool)

(declare-fun e!3564954 () Bool)

(assert (=> b!5807375 (= e!3564953 e!3564954)))

(declare-fun res!2448950 () Bool)

(assert (=> b!5807375 (=> (not res!2448950) (not e!3564954))))

(assert (=> b!5807375 (= res!2448950 call!453396)))

(declare-fun bm!453392 () Bool)

(declare-fun c!1028862 () Bool)

(assert (=> bm!453392 (= call!453398 (validRegex!7557 (ite c!1028862 (reg!16150 r!7292) (ite c!1028863 (regOne!32155 r!7292) (regOne!32154 r!7292)))))))

(declare-fun b!5807376 () Bool)

(declare-fun e!3564956 () Bool)

(assert (=> b!5807376 (= e!3564956 call!453398)))

(declare-fun b!5807377 () Bool)

(assert (=> b!5807377 (= e!3564958 e!3564959)))

(assert (=> b!5807377 (= c!1028862 ((_ is Star!15821) r!7292))))

(declare-fun b!5807378 () Bool)

(declare-fun call!453397 () Bool)

(assert (=> b!5807378 (= e!3564954 call!453397)))

(declare-fun b!5807379 () Bool)

(assert (=> b!5807379 (= e!3564959 e!3564956)))

(declare-fun res!2448949 () Bool)

(assert (=> b!5807379 (= res!2448949 (not (nullable!5846 (reg!16150 r!7292))))))

(assert (=> b!5807379 (=> (not res!2448949) (not e!3564956))))

(declare-fun bm!453393 () Bool)

(assert (=> bm!453393 (= call!453397 (validRegex!7557 (ite c!1028863 (regTwo!32155 r!7292) (regTwo!32154 r!7292))))))

(declare-fun b!5807380 () Bool)

(declare-fun res!2448948 () Bool)

(assert (=> b!5807380 (=> res!2448948 e!3564953)))

(assert (=> b!5807380 (= res!2448948 (not ((_ is Concat!24666) r!7292)))))

(assert (=> b!5807380 (= e!3564955 e!3564953)))

(declare-fun b!5807381 () Bool)

(declare-fun res!2448946 () Bool)

(declare-fun e!3564957 () Bool)

(assert (=> b!5807381 (=> (not res!2448946) (not e!3564957))))

(assert (=> b!5807381 (= res!2448946 call!453396)))

(assert (=> b!5807381 (= e!3564955 e!3564957)))

(declare-fun b!5807382 () Bool)

(assert (=> b!5807382 (= e!3564957 call!453397)))

(assert (= (and d!1829056 (not res!2448947)) b!5807377))

(assert (= (and b!5807377 c!1028862) b!5807379))

(assert (= (and b!5807377 (not c!1028862)) b!5807374))

(assert (= (and b!5807379 res!2448949) b!5807376))

(assert (= (and b!5807374 c!1028863) b!5807381))

(assert (= (and b!5807374 (not c!1028863)) b!5807380))

(assert (= (and b!5807381 res!2448946) b!5807382))

(assert (= (and b!5807380 (not res!2448948)) b!5807375))

(assert (= (and b!5807375 res!2448950) b!5807378))

(assert (= (or b!5807382 b!5807378) bm!453393))

(assert (= (or b!5807381 b!5807375) bm!453391))

(assert (= (or b!5807376 bm!453391) bm!453392))

(declare-fun m!6746492 () Bool)

(assert (=> bm!453392 m!6746492))

(declare-fun m!6746494 () Bool)

(assert (=> b!5807379 m!6746494))

(declare-fun m!6746496 () Bool)

(assert (=> bm!453393 m!6746496))

(assert (=> start!595044 d!1829056))

(declare-fun b!5807407 () Bool)

(declare-fun res!2448958 () Bool)

(declare-fun e!3564973 () Bool)

(assert (=> b!5807407 (=> (not res!2448958) (not e!3564973))))

(declare-fun lt!2299173 () List!63764)

(declare-fun size!40105 (List!63764) Int)

(assert (=> b!5807407 (= res!2448958 (= (size!40105 lt!2299173) (+ (size!40105 (_1!36221 lt!2299116)) (size!40105 (_2!36221 lt!2299116)))))))

(declare-fun b!5807408 () Bool)

(assert (=> b!5807408 (= e!3564973 (or (not (= (_2!36221 lt!2299116) Nil!63640)) (= lt!2299173 (_1!36221 lt!2299116))))))

(declare-fun b!5807405 () Bool)

(declare-fun e!3564972 () List!63764)

(assert (=> b!5807405 (= e!3564972 (_2!36221 lt!2299116))))

(declare-fun d!1829060 () Bool)

(assert (=> d!1829060 e!3564973))

(declare-fun res!2448955 () Bool)

(assert (=> d!1829060 (=> (not res!2448955) (not e!3564973))))

(declare-fun content!11653 (List!63764) (InoxSet C!31912))

(assert (=> d!1829060 (= res!2448955 (= (content!11653 lt!2299173) ((_ map or) (content!11653 (_1!36221 lt!2299116)) (content!11653 (_2!36221 lt!2299116)))))))

(assert (=> d!1829060 (= lt!2299173 e!3564972)))

(declare-fun c!1028872 () Bool)

(assert (=> d!1829060 (= c!1028872 ((_ is Nil!63640) (_1!36221 lt!2299116)))))

(assert (=> d!1829060 (= (++!14033 (_1!36221 lt!2299116) (_2!36221 lt!2299116)) lt!2299173)))

(declare-fun b!5807406 () Bool)

(assert (=> b!5807406 (= e!3564972 (Cons!63640 (h!70088 (_1!36221 lt!2299116)) (++!14033 (t!377117 (_1!36221 lt!2299116)) (_2!36221 lt!2299116))))))

(assert (= (and d!1829060 c!1028872) b!5807405))

(assert (= (and d!1829060 (not c!1028872)) b!5807406))

(assert (= (and d!1829060 res!2448955) b!5807407))

(assert (= (and b!5807407 res!2448958) b!5807408))

(declare-fun m!6746500 () Bool)

(assert (=> b!5807407 m!6746500))

(declare-fun m!6746502 () Bool)

(assert (=> b!5807407 m!6746502))

(declare-fun m!6746504 () Bool)

(assert (=> b!5807407 m!6746504))

(declare-fun m!6746506 () Bool)

(assert (=> d!1829060 m!6746506))

(declare-fun m!6746508 () Bool)

(assert (=> d!1829060 m!6746508))

(declare-fun m!6746510 () Bool)

(assert (=> d!1829060 m!6746510))

(declare-fun m!6746512 () Bool)

(assert (=> b!5807406 m!6746512))

(assert (=> b!5807153 d!1829060))

(declare-fun d!1829064 () Bool)

(assert (=> d!1829064 (= (get!21969 lt!2299128) (v!51893 lt!2299128))))

(assert (=> b!5807153 d!1829064))

(declare-fun bm!453402 () Bool)

(declare-fun call!453408 () (InoxSet Context!10410))

(declare-fun c!1028879 () Bool)

(declare-fun call!453411 () List!63762)

(assert (=> bm!453402 (= call!453408 (derivationStepZipperDown!1159 (ite c!1028879 (regOne!32155 r!7292) (regOne!32154 r!7292)) (ite c!1028879 (Context!10411 Nil!63638) (Context!10411 call!453411)) (h!70088 s!2326)))))

(declare-fun b!5807417 () Bool)

(declare-fun e!3564978 () (InoxSet Context!10410))

(declare-fun call!453410 () (InoxSet Context!10410))

(assert (=> b!5807417 (= e!3564978 call!453410)))

(declare-fun d!1829066 () Bool)

(declare-fun c!1028881 () Bool)

(assert (=> d!1829066 (= c!1028881 (and ((_ is ElementMatch!15821) r!7292) (= (c!1028807 r!7292) (h!70088 s!2326))))))

(declare-fun e!3564982 () (InoxSet Context!10410))

(assert (=> d!1829066 (= (derivationStepZipperDown!1159 r!7292 (Context!10411 Nil!63638) (h!70088 s!2326)) e!3564982)))

(declare-fun b!5807418 () Bool)

(declare-fun e!3564979 () (InoxSet Context!10410))

(assert (=> b!5807418 (= e!3564979 ((as const (Array Context!10410 Bool)) false))))

(declare-fun b!5807419 () Bool)

(declare-fun e!3564980 () (InoxSet Context!10410))

(assert (=> b!5807419 (= e!3564982 e!3564980)))

(assert (=> b!5807419 (= c!1028879 ((_ is Union!15821) r!7292))))

(declare-fun bm!453403 () Bool)

(declare-fun call!453409 () (InoxSet Context!10410))

(assert (=> bm!453403 (= call!453410 call!453409)))

(declare-fun b!5807420 () Bool)

(declare-fun c!1028877 () Bool)

(assert (=> b!5807420 (= c!1028877 ((_ is Star!15821) r!7292))))

(assert (=> b!5807420 (= e!3564978 e!3564979)))

(declare-fun b!5807421 () Bool)

(declare-fun e!3564983 () Bool)

(assert (=> b!5807421 (= e!3564983 (nullable!5846 (regOne!32154 r!7292)))))

(declare-fun b!5807422 () Bool)

(assert (=> b!5807422 (= e!3564982 (store ((as const (Array Context!10410 Bool)) false) (Context!10411 Nil!63638) true))))

(declare-fun c!1028878 () Bool)

(declare-fun bm!453404 () Bool)

(declare-fun c!1028880 () Bool)

(assert (=> bm!453404 (= call!453411 ($colon$colon!1801 (exprs!5705 (Context!10411 Nil!63638)) (ite (or c!1028878 c!1028880) (regTwo!32154 r!7292) r!7292)))))

(declare-fun bm!453405 () Bool)

(declare-fun call!453412 () List!63762)

(assert (=> bm!453405 (= call!453412 call!453411)))

(declare-fun b!5807423 () Bool)

(declare-fun e!3564981 () (InoxSet Context!10410))

(assert (=> b!5807423 (= e!3564981 ((_ map or) call!453408 call!453409))))

(declare-fun b!5807424 () Bool)

(assert (=> b!5807424 (= e!3564981 e!3564978)))

(assert (=> b!5807424 (= c!1028880 ((_ is Concat!24666) r!7292))))

(declare-fun b!5807425 () Bool)

(assert (=> b!5807425 (= e!3564979 call!453410)))

(declare-fun b!5807426 () Bool)

(declare-fun call!453407 () (InoxSet Context!10410))

(assert (=> b!5807426 (= e!3564980 ((_ map or) call!453408 call!453407))))

(declare-fun bm!453406 () Bool)

(assert (=> bm!453406 (= call!453407 (derivationStepZipperDown!1159 (ite c!1028879 (regTwo!32155 r!7292) (ite c!1028878 (regTwo!32154 r!7292) (ite c!1028880 (regOne!32154 r!7292) (reg!16150 r!7292)))) (ite (or c!1028879 c!1028878) (Context!10411 Nil!63638) (Context!10411 call!453412)) (h!70088 s!2326)))))

(declare-fun bm!453407 () Bool)

(assert (=> bm!453407 (= call!453409 call!453407)))

(declare-fun b!5807427 () Bool)

(assert (=> b!5807427 (= c!1028878 e!3564983)))

(declare-fun res!2448959 () Bool)

(assert (=> b!5807427 (=> (not res!2448959) (not e!3564983))))

(assert (=> b!5807427 (= res!2448959 ((_ is Concat!24666) r!7292))))

(assert (=> b!5807427 (= e!3564980 e!3564981)))

(assert (= (and d!1829066 c!1028881) b!5807422))

(assert (= (and d!1829066 (not c!1028881)) b!5807419))

(assert (= (and b!5807419 c!1028879) b!5807426))

(assert (= (and b!5807419 (not c!1028879)) b!5807427))

(assert (= (and b!5807427 res!2448959) b!5807421))

(assert (= (and b!5807427 c!1028878) b!5807423))

(assert (= (and b!5807427 (not c!1028878)) b!5807424))

(assert (= (and b!5807424 c!1028880) b!5807417))

(assert (= (and b!5807424 (not c!1028880)) b!5807420))

(assert (= (and b!5807420 c!1028877) b!5807425))

(assert (= (and b!5807420 (not c!1028877)) b!5807418))

(assert (= (or b!5807417 b!5807425) bm!453405))

(assert (= (or b!5807417 b!5807425) bm!453403))

(assert (= (or b!5807423 bm!453405) bm!453404))

(assert (= (or b!5807423 bm!453403) bm!453407))

(assert (= (or b!5807426 bm!453407) bm!453406))

(assert (= (or b!5807426 b!5807423) bm!453402))

(declare-fun m!6746514 () Bool)

(assert (=> bm!453406 m!6746514))

(declare-fun m!6746516 () Bool)

(assert (=> b!5807422 m!6746516))

(declare-fun m!6746518 () Bool)

(assert (=> b!5807421 m!6746518))

(declare-fun m!6746520 () Bool)

(assert (=> bm!453404 m!6746520))

(declare-fun m!6746522 () Bool)

(assert (=> bm!453402 m!6746522))

(assert (=> b!5807135 d!1829066))

(declare-fun b!5807428 () Bool)

(declare-fun e!3564984 () (InoxSet Context!10410))

(assert (=> b!5807428 (= e!3564984 ((as const (Array Context!10410 Bool)) false))))

(declare-fun b!5807429 () Bool)

(declare-fun e!3564985 () (InoxSet Context!10410))

(declare-fun call!453417 () (InoxSet Context!10410))

(assert (=> b!5807429 (= e!3564985 ((_ map or) call!453417 (derivationStepZipperUp!1085 (Context!10411 (t!377115 (exprs!5705 (Context!10411 (Cons!63638 r!7292 Nil!63638))))) (h!70088 s!2326))))))

(declare-fun d!1829068 () Bool)

(declare-fun c!1028882 () Bool)

(declare-fun e!3564986 () Bool)

(assert (=> d!1829068 (= c!1028882 e!3564986)))

(declare-fun res!2448960 () Bool)

(assert (=> d!1829068 (=> (not res!2448960) (not e!3564986))))

(assert (=> d!1829068 (= res!2448960 ((_ is Cons!63638) (exprs!5705 (Context!10411 (Cons!63638 r!7292 Nil!63638)))))))

(assert (=> d!1829068 (= (derivationStepZipperUp!1085 (Context!10411 (Cons!63638 r!7292 Nil!63638)) (h!70088 s!2326)) e!3564985)))

(declare-fun bm!453412 () Bool)

(assert (=> bm!453412 (= call!453417 (derivationStepZipperDown!1159 (h!70086 (exprs!5705 (Context!10411 (Cons!63638 r!7292 Nil!63638)))) (Context!10411 (t!377115 (exprs!5705 (Context!10411 (Cons!63638 r!7292 Nil!63638))))) (h!70088 s!2326)))))

(declare-fun b!5807430 () Bool)

(assert (=> b!5807430 (= e!3564986 (nullable!5846 (h!70086 (exprs!5705 (Context!10411 (Cons!63638 r!7292 Nil!63638))))))))

(declare-fun b!5807431 () Bool)

(assert (=> b!5807431 (= e!3564984 call!453417)))

(declare-fun b!5807432 () Bool)

(assert (=> b!5807432 (= e!3564985 e!3564984)))

(declare-fun c!1028883 () Bool)

(assert (=> b!5807432 (= c!1028883 ((_ is Cons!63638) (exprs!5705 (Context!10411 (Cons!63638 r!7292 Nil!63638)))))))

(assert (= (and d!1829068 res!2448960) b!5807430))

(assert (= (and d!1829068 c!1028882) b!5807429))

(assert (= (and d!1829068 (not c!1028882)) b!5807432))

(assert (= (and b!5807432 c!1028883) b!5807431))

(assert (= (and b!5807432 (not c!1028883)) b!5807428))

(assert (= (or b!5807429 b!5807431) bm!453412))

(declare-fun m!6746524 () Bool)

(assert (=> b!5807429 m!6746524))

(declare-fun m!6746526 () Bool)

(assert (=> bm!453412 m!6746526))

(declare-fun m!6746528 () Bool)

(assert (=> b!5807430 m!6746528))

(assert (=> b!5807135 d!1829068))

(declare-fun bs!1371101 () Bool)

(declare-fun d!1829070 () Bool)

(assert (= bs!1371101 (and d!1829070 b!5807148)))

(declare-fun lambda!317018 () Int)

(assert (=> bs!1371101 (= lambda!317018 lambda!316988)))

(assert (=> d!1829070 true))

(assert (=> d!1829070 (= (derivationStepZipper!1890 z!1189 (h!70088 s!2326)) (flatMap!1428 z!1189 lambda!317018))))

(declare-fun bs!1371102 () Bool)

(assert (= bs!1371102 d!1829070))

(declare-fun m!6746530 () Bool)

(assert (=> bs!1371102 m!6746530))

(assert (=> b!5807135 d!1829070))

(declare-fun d!1829072 () Bool)

(declare-fun lt!2299174 () Regex!15821)

(assert (=> d!1829072 (validRegex!7557 lt!2299174)))

(assert (=> d!1829072 (= lt!2299174 (generalisedUnion!1684 (unfocusZipperList!1249 (Cons!63639 lt!2299121 Nil!63639))))))

(assert (=> d!1829072 (= (unfocusZipper!1563 (Cons!63639 lt!2299121 Nil!63639)) lt!2299174)))

(declare-fun bs!1371103 () Bool)

(assert (= bs!1371103 d!1829072))

(declare-fun m!6746532 () Bool)

(assert (=> bs!1371103 m!6746532))

(declare-fun m!6746534 () Bool)

(assert (=> bs!1371103 m!6746534))

(assert (=> bs!1371103 m!6746534))

(declare-fun m!6746536 () Bool)

(assert (=> bs!1371103 m!6746536))

(assert (=> b!5807145 d!1829072))

(declare-fun bs!1371105 () Bool)

(declare-fun d!1829074 () Bool)

(assert (= bs!1371105 (and d!1829074 d!1829010)))

(declare-fun lambda!317021 () Int)

(assert (=> bs!1371105 (= lambda!317021 lambda!316991)))

(declare-fun b!5807481 () Bool)

(declare-fun e!3565014 () Regex!15821)

(assert (=> b!5807481 (= e!3565014 (h!70086 (unfocusZipperList!1249 zl!343)))))

(declare-fun b!5807482 () Bool)

(declare-fun e!3565019 () Bool)

(declare-fun lt!2299177 () Regex!15821)

(declare-fun head!12253 (List!63762) Regex!15821)

(assert (=> b!5807482 (= e!3565019 (= lt!2299177 (head!12253 (unfocusZipperList!1249 zl!343))))))

(declare-fun b!5807483 () Bool)

(declare-fun e!3565018 () Regex!15821)

(assert (=> b!5807483 (= e!3565014 e!3565018)))

(declare-fun c!1028908 () Bool)

(assert (=> b!5807483 (= c!1028908 ((_ is Cons!63638) (unfocusZipperList!1249 zl!343)))))

(declare-fun b!5807484 () Bool)

(declare-fun e!3565015 () Bool)

(declare-fun isEmptyLang!1303 (Regex!15821) Bool)

(assert (=> b!5807484 (= e!3565015 (isEmptyLang!1303 lt!2299177))))

(declare-fun b!5807485 () Bool)

(assert (=> b!5807485 (= e!3565018 EmptyLang!15821)))

(declare-fun b!5807486 () Bool)

(declare-fun isUnion!733 (Regex!15821) Bool)

(assert (=> b!5807486 (= e!3565019 (isUnion!733 lt!2299177))))

(declare-fun e!3565017 () Bool)

(assert (=> d!1829074 e!3565017))

(declare-fun res!2448970 () Bool)

(assert (=> d!1829074 (=> (not res!2448970) (not e!3565017))))

(assert (=> d!1829074 (= res!2448970 (validRegex!7557 lt!2299177))))

(assert (=> d!1829074 (= lt!2299177 e!3565014)))

(declare-fun c!1028907 () Bool)

(declare-fun e!3565016 () Bool)

(assert (=> d!1829074 (= c!1028907 e!3565016)))

(declare-fun res!2448969 () Bool)

(assert (=> d!1829074 (=> (not res!2448969) (not e!3565016))))

(assert (=> d!1829074 (= res!2448969 ((_ is Cons!63638) (unfocusZipperList!1249 zl!343)))))

(assert (=> d!1829074 (forall!14928 (unfocusZipperList!1249 zl!343) lambda!317021)))

(assert (=> d!1829074 (= (generalisedUnion!1684 (unfocusZipperList!1249 zl!343)) lt!2299177)))

(declare-fun b!5807487 () Bool)

(declare-fun isEmpty!35554 (List!63762) Bool)

(assert (=> b!5807487 (= e!3565016 (isEmpty!35554 (t!377115 (unfocusZipperList!1249 zl!343))))))

(declare-fun b!5807488 () Bool)

(assert (=> b!5807488 (= e!3565018 (Union!15821 (h!70086 (unfocusZipperList!1249 zl!343)) (generalisedUnion!1684 (t!377115 (unfocusZipperList!1249 zl!343)))))))

(declare-fun b!5807489 () Bool)

(assert (=> b!5807489 (= e!3565017 e!3565015)))

(declare-fun c!1028906 () Bool)

(assert (=> b!5807489 (= c!1028906 (isEmpty!35554 (unfocusZipperList!1249 zl!343)))))

(declare-fun b!5807490 () Bool)

(assert (=> b!5807490 (= e!3565015 e!3565019)))

(declare-fun c!1028905 () Bool)

(declare-fun tail!11348 (List!63762) List!63762)

(assert (=> b!5807490 (= c!1028905 (isEmpty!35554 (tail!11348 (unfocusZipperList!1249 zl!343))))))

(assert (= (and d!1829074 res!2448969) b!5807487))

(assert (= (and d!1829074 c!1028907) b!5807481))

(assert (= (and d!1829074 (not c!1028907)) b!5807483))

(assert (= (and b!5807483 c!1028908) b!5807488))

(assert (= (and b!5807483 (not c!1028908)) b!5807485))

(assert (= (and d!1829074 res!2448970) b!5807489))

(assert (= (and b!5807489 c!1028906) b!5807484))

(assert (= (and b!5807489 (not c!1028906)) b!5807490))

(assert (= (and b!5807490 c!1028905) b!5807482))

(assert (= (and b!5807490 (not c!1028905)) b!5807486))

(declare-fun m!6746554 () Bool)

(assert (=> b!5807487 m!6746554))

(declare-fun m!6746556 () Bool)

(assert (=> d!1829074 m!6746556))

(assert (=> d!1829074 m!6746328))

(declare-fun m!6746558 () Bool)

(assert (=> d!1829074 m!6746558))

(declare-fun m!6746560 () Bool)

(assert (=> b!5807486 m!6746560))

(assert (=> b!5807490 m!6746328))

(declare-fun m!6746562 () Bool)

(assert (=> b!5807490 m!6746562))

(assert (=> b!5807490 m!6746562))

(declare-fun m!6746564 () Bool)

(assert (=> b!5807490 m!6746564))

(assert (=> b!5807482 m!6746328))

(declare-fun m!6746566 () Bool)

(assert (=> b!5807482 m!6746566))

(declare-fun m!6746568 () Bool)

(assert (=> b!5807488 m!6746568))

(declare-fun m!6746570 () Bool)

(assert (=> b!5807484 m!6746570))

(assert (=> b!5807489 m!6746328))

(declare-fun m!6746572 () Bool)

(assert (=> b!5807489 m!6746572))

(assert (=> b!5807131 d!1829074))

(declare-fun bs!1371107 () Bool)

(declare-fun d!1829082 () Bool)

(assert (= bs!1371107 (and d!1829082 d!1829010)))

(declare-fun lambda!317024 () Int)

(assert (=> bs!1371107 (= lambda!317024 lambda!316991)))

(declare-fun bs!1371108 () Bool)

(assert (= bs!1371108 (and d!1829082 d!1829074)))

(assert (=> bs!1371108 (= lambda!317024 lambda!317021)))

(declare-fun lt!2299183 () List!63762)

(assert (=> d!1829082 (forall!14928 lt!2299183 lambda!317024)))

(declare-fun e!3565031 () List!63762)

(assert (=> d!1829082 (= lt!2299183 e!3565031)))

(declare-fun c!1028918 () Bool)

(assert (=> d!1829082 (= c!1028918 ((_ is Cons!63639) zl!343))))

(assert (=> d!1829082 (= (unfocusZipperList!1249 zl!343) lt!2299183)))

(declare-fun b!5807511 () Bool)

(assert (=> b!5807511 (= e!3565031 (Cons!63638 (generalisedConcat!1436 (exprs!5705 (h!70087 zl!343))) (unfocusZipperList!1249 (t!377116 zl!343))))))

(declare-fun b!5807512 () Bool)

(assert (=> b!5807512 (= e!3565031 Nil!63638)))

(assert (= (and d!1829082 c!1028918) b!5807511))

(assert (= (and d!1829082 (not c!1028918)) b!5807512))

(declare-fun m!6746594 () Bool)

(assert (=> d!1829082 m!6746594))

(assert (=> b!5807511 m!6746364))

(declare-fun m!6746596 () Bool)

(assert (=> b!5807511 m!6746596))

(assert (=> b!5807131 d!1829082))

(declare-fun bs!1371109 () Bool)

(declare-fun d!1829090 () Bool)

(assert (= bs!1371109 (and d!1829090 d!1829010)))

(declare-fun lambda!317025 () Int)

(assert (=> bs!1371109 (= lambda!317025 lambda!316991)))

(declare-fun bs!1371110 () Bool)

(assert (= bs!1371110 (and d!1829090 d!1829074)))

(assert (=> bs!1371110 (= lambda!317025 lambda!317021)))

(declare-fun bs!1371111 () Bool)

(assert (= bs!1371111 (and d!1829090 d!1829082)))

(assert (=> bs!1371111 (= lambda!317025 lambda!317024)))

(assert (=> d!1829090 (= (inv!82799 setElem!39086) (forall!14928 (exprs!5705 setElem!39086) lambda!317025))))

(declare-fun bs!1371112 () Bool)

(assert (= bs!1371112 d!1829090))

(declare-fun m!6746598 () Bool)

(assert (=> bs!1371112 m!6746598))

(assert (=> setNonEmpty!39086 d!1829090))

(declare-fun bs!1371121 () Bool)

(declare-fun b!5807565 () Bool)

(assert (= bs!1371121 (and b!5807565 d!1829014)))

(declare-fun lambda!317039 () Int)

(assert (=> bs!1371121 (not (= lambda!317039 lambda!316997))))

(declare-fun bs!1371122 () Bool)

(assert (= bs!1371122 (and b!5807565 b!5807146)))

(assert (=> bs!1371122 (not (= lambda!317039 lambda!316987))))

(declare-fun bs!1371123 () Bool)

(assert (= bs!1371123 (and b!5807565 d!1829028)))

(assert (=> bs!1371123 (not (= lambda!317039 lambda!317009))))

(assert (=> bs!1371122 (not (= lambda!317039 lambda!316985))))

(declare-fun bs!1371124 () Bool)

(assert (= bs!1371124 (and b!5807565 d!1829016)))

(assert (=> bs!1371124 (not (= lambda!317039 lambda!317002))))

(assert (=> bs!1371124 (= (= r!7292 (Star!15821 (reg!16150 r!7292))) (= lambda!317039 lambda!317003))))

(assert (=> bs!1371122 (= lambda!317039 lambda!316986)))

(assert (=> bs!1371121 (not (= lambda!317039 lambda!316996))))

(assert (=> b!5807565 true))

(assert (=> b!5807565 true))

(declare-fun bs!1371125 () Bool)

(declare-fun b!5807569 () Bool)

(assert (= bs!1371125 (and b!5807569 d!1829014)))

(declare-fun lambda!317040 () Int)

(assert (=> bs!1371125 (= (and (= (regOne!32154 r!7292) (reg!16150 r!7292)) (= (regTwo!32154 r!7292) r!7292)) (= lambda!317040 lambda!316997))))

(declare-fun bs!1371126 () Bool)

(assert (= bs!1371126 (and b!5807569 b!5807146)))

(assert (=> bs!1371126 (= (and (= (regOne!32154 r!7292) (reg!16150 r!7292)) (= (regTwo!32154 r!7292) r!7292)) (= lambda!317040 lambda!316987))))

(declare-fun bs!1371127 () Bool)

(assert (= bs!1371127 (and b!5807569 d!1829028)))

(assert (=> bs!1371127 (not (= lambda!317040 lambda!317009))))

(assert (=> bs!1371126 (not (= lambda!317040 lambda!316985))))

(declare-fun bs!1371128 () Bool)

(assert (= bs!1371128 (and b!5807569 b!5807565)))

(assert (=> bs!1371128 (not (= lambda!317040 lambda!317039))))

(declare-fun bs!1371129 () Bool)

(assert (= bs!1371129 (and b!5807569 d!1829016)))

(assert (=> bs!1371129 (not (= lambda!317040 lambda!317002))))

(assert (=> bs!1371129 (not (= lambda!317040 lambda!317003))))

(assert (=> bs!1371126 (not (= lambda!317040 lambda!316986))))

(assert (=> bs!1371125 (not (= lambda!317040 lambda!316996))))

(assert (=> b!5807569 true))

(assert (=> b!5807569 true))

(declare-fun bm!453434 () Bool)

(declare-fun c!1028934 () Bool)

(declare-fun call!453439 () Bool)

(assert (=> bm!453434 (= call!453439 (Exists!2921 (ite c!1028934 lambda!317039 lambda!317040)))))

(declare-fun b!5807560 () Bool)

(declare-fun e!3565061 () Bool)

(assert (=> b!5807560 (= e!3565061 (matchRSpec!2924 (regTwo!32155 r!7292) s!2326))))

(declare-fun b!5807561 () Bool)

(declare-fun e!3565059 () Bool)

(assert (=> b!5807561 (= e!3565059 (= s!2326 (Cons!63640 (c!1028807 r!7292) Nil!63640)))))

(declare-fun b!5807562 () Bool)

(declare-fun c!1028931 () Bool)

(assert (=> b!5807562 (= c!1028931 ((_ is Union!15821) r!7292))))

(declare-fun e!3565058 () Bool)

(assert (=> b!5807562 (= e!3565059 e!3565058)))

(declare-fun b!5807563 () Bool)

(declare-fun res!2448999 () Bool)

(declare-fun e!3565062 () Bool)

(assert (=> b!5807563 (=> res!2448999 e!3565062)))

(declare-fun call!453440 () Bool)

(assert (=> b!5807563 (= res!2448999 call!453440)))

(declare-fun e!3565057 () Bool)

(assert (=> b!5807563 (= e!3565057 e!3565062)))

(declare-fun b!5807564 () Bool)

(declare-fun e!3565060 () Bool)

(assert (=> b!5807564 (= e!3565060 call!453440)))

(assert (=> b!5807565 (= e!3565062 call!453439)))

(declare-fun b!5807566 () Bool)

(assert (=> b!5807566 (= e!3565058 e!3565057)))

(assert (=> b!5807566 (= c!1028934 ((_ is Star!15821) r!7292))))

(declare-fun b!5807567 () Bool)

(declare-fun c!1028932 () Bool)

(assert (=> b!5807567 (= c!1028932 ((_ is ElementMatch!15821) r!7292))))

(declare-fun e!3565063 () Bool)

(assert (=> b!5807567 (= e!3565063 e!3565059)))

(declare-fun d!1829092 () Bool)

(declare-fun c!1028933 () Bool)

(assert (=> d!1829092 (= c!1028933 ((_ is EmptyExpr!15821) r!7292))))

(assert (=> d!1829092 (= (matchRSpec!2924 r!7292 s!2326) e!3565060)))

(declare-fun b!5807568 () Bool)

(assert (=> b!5807568 (= e!3565058 e!3565061)))

(declare-fun res!2448998 () Bool)

(assert (=> b!5807568 (= res!2448998 (matchRSpec!2924 (regOne!32155 r!7292) s!2326))))

(assert (=> b!5807568 (=> res!2448998 e!3565061)))

(assert (=> b!5807569 (= e!3565057 call!453439)))

(declare-fun bm!453435 () Bool)

(assert (=> bm!453435 (= call!453440 (isEmpty!35552 s!2326))))

(declare-fun b!5807570 () Bool)

(assert (=> b!5807570 (= e!3565060 e!3565063)))

(declare-fun res!2449000 () Bool)

(assert (=> b!5807570 (= res!2449000 (not ((_ is EmptyLang!15821) r!7292)))))

(assert (=> b!5807570 (=> (not res!2449000) (not e!3565063))))

(assert (= (and d!1829092 c!1028933) b!5807564))

(assert (= (and d!1829092 (not c!1028933)) b!5807570))

(assert (= (and b!5807570 res!2449000) b!5807567))

(assert (= (and b!5807567 c!1028932) b!5807561))

(assert (= (and b!5807567 (not c!1028932)) b!5807562))

(assert (= (and b!5807562 c!1028931) b!5807568))

(assert (= (and b!5807562 (not c!1028931)) b!5807566))

(assert (= (and b!5807568 (not res!2448998)) b!5807560))

(assert (= (and b!5807566 c!1028934) b!5807563))

(assert (= (and b!5807566 (not c!1028934)) b!5807569))

(assert (= (and b!5807563 (not res!2448999)) b!5807565))

(assert (= (or b!5807565 b!5807569) bm!453434))

(assert (= (or b!5807564 b!5807563) bm!453435))

(declare-fun m!6746624 () Bool)

(assert (=> bm!453434 m!6746624))

(declare-fun m!6746626 () Bool)

(assert (=> b!5807560 m!6746626))

(declare-fun m!6746628 () Bool)

(assert (=> b!5807568 m!6746628))

(assert (=> bm!453435 m!6746354))

(assert (=> b!5807141 d!1829092))

(declare-fun b!5807609 () Bool)

(declare-fun e!3565085 () Bool)

(declare-fun e!3565083 () Bool)

(assert (=> b!5807609 (= e!3565085 e!3565083)))

(declare-fun c!1028942 () Bool)

(assert (=> b!5807609 (= c!1028942 ((_ is EmptyLang!15821) r!7292))))

(declare-fun b!5807610 () Bool)

(declare-fun e!3565082 () Bool)

(declare-fun e!3565087 () Bool)

(assert (=> b!5807610 (= e!3565082 e!3565087)))

(declare-fun res!2449033 () Bool)

(assert (=> b!5807610 (=> (not res!2449033) (not e!3565087))))

(declare-fun lt!2299193 () Bool)

(assert (=> b!5807610 (= res!2449033 (not lt!2299193))))

(declare-fun d!1829104 () Bool)

(assert (=> d!1829104 e!3565085))

(declare-fun c!1028943 () Bool)

(assert (=> d!1829104 (= c!1028943 ((_ is EmptyExpr!15821) r!7292))))

(declare-fun e!3565086 () Bool)

(assert (=> d!1829104 (= lt!2299193 e!3565086)))

(declare-fun c!1028941 () Bool)

(assert (=> d!1829104 (= c!1028941 (isEmpty!35552 s!2326))))

(assert (=> d!1829104 (validRegex!7557 r!7292)))

(assert (=> d!1829104 (= (matchR!8006 r!7292 s!2326) lt!2299193)))

(declare-fun b!5807611 () Bool)

(assert (=> b!5807611 (= e!3565083 (not lt!2299193))))

(declare-fun b!5807612 () Bool)

(declare-fun e!3565088 () Bool)

(declare-fun head!12254 (List!63764) C!31912)

(assert (=> b!5807612 (= e!3565088 (not (= (head!12254 s!2326) (c!1028807 r!7292))))))

(declare-fun b!5807613 () Bool)

(declare-fun res!2449030 () Bool)

(assert (=> b!5807613 (=> res!2449030 e!3565082)))

(assert (=> b!5807613 (= res!2449030 (not ((_ is ElementMatch!15821) r!7292)))))

(assert (=> b!5807613 (= e!3565083 e!3565082)))

(declare-fun b!5807614 () Bool)

(declare-fun e!3565084 () Bool)

(assert (=> b!5807614 (= e!3565084 (= (head!12254 s!2326) (c!1028807 r!7292)))))

(declare-fun bm!453438 () Bool)

(declare-fun call!453443 () Bool)

(assert (=> bm!453438 (= call!453443 (isEmpty!35552 s!2326))))

(declare-fun b!5807615 () Bool)

(assert (=> b!5807615 (= e!3565086 (nullable!5846 r!7292))))

(declare-fun b!5807616 () Bool)

(assert (=> b!5807616 (= e!3565085 (= lt!2299193 call!453443))))

(declare-fun b!5807617 () Bool)

(declare-fun res!2449031 () Bool)

(assert (=> b!5807617 (=> res!2449031 e!3565088)))

(declare-fun tail!11349 (List!63764) List!63764)

(assert (=> b!5807617 (= res!2449031 (not (isEmpty!35552 (tail!11349 s!2326))))))

(declare-fun b!5807618 () Bool)

(declare-fun res!2449034 () Bool)

(assert (=> b!5807618 (=> (not res!2449034) (not e!3565084))))

(assert (=> b!5807618 (= res!2449034 (not call!453443))))

(declare-fun b!5807619 () Bool)

(declare-fun derivativeStep!4590 (Regex!15821 C!31912) Regex!15821)

(assert (=> b!5807619 (= e!3565086 (matchR!8006 (derivativeStep!4590 r!7292 (head!12254 s!2326)) (tail!11349 s!2326)))))

(declare-fun b!5807620 () Bool)

(assert (=> b!5807620 (= e!3565087 e!3565088)))

(declare-fun res!2449027 () Bool)

(assert (=> b!5807620 (=> res!2449027 e!3565088)))

(assert (=> b!5807620 (= res!2449027 call!453443)))

(declare-fun b!5807621 () Bool)

(declare-fun res!2449032 () Bool)

(assert (=> b!5807621 (=> res!2449032 e!3565082)))

(assert (=> b!5807621 (= res!2449032 e!3565084)))

(declare-fun res!2449028 () Bool)

(assert (=> b!5807621 (=> (not res!2449028) (not e!3565084))))

(assert (=> b!5807621 (= res!2449028 lt!2299193)))

(declare-fun b!5807622 () Bool)

(declare-fun res!2449029 () Bool)

(assert (=> b!5807622 (=> (not res!2449029) (not e!3565084))))

(assert (=> b!5807622 (= res!2449029 (isEmpty!35552 (tail!11349 s!2326)))))

(assert (= (and d!1829104 c!1028941) b!5807615))

(assert (= (and d!1829104 (not c!1028941)) b!5807619))

(assert (= (and d!1829104 c!1028943) b!5807616))

(assert (= (and d!1829104 (not c!1028943)) b!5807609))

(assert (= (and b!5807609 c!1028942) b!5807611))

(assert (= (and b!5807609 (not c!1028942)) b!5807613))

(assert (= (and b!5807613 (not res!2449030)) b!5807621))

(assert (= (and b!5807621 res!2449028) b!5807618))

(assert (= (and b!5807618 res!2449034) b!5807622))

(assert (= (and b!5807622 res!2449029) b!5807614))

(assert (= (and b!5807621 (not res!2449032)) b!5807610))

(assert (= (and b!5807610 res!2449033) b!5807620))

(assert (= (and b!5807620 (not res!2449027)) b!5807617))

(assert (= (and b!5807617 (not res!2449031)) b!5807612))

(assert (= (or b!5807616 b!5807620 b!5807618) bm!453438))

(assert (=> bm!453438 m!6746354))

(declare-fun m!6746642 () Bool)

(assert (=> b!5807612 m!6746642))

(declare-fun m!6746644 () Bool)

(assert (=> b!5807622 m!6746644))

(assert (=> b!5807622 m!6746644))

(declare-fun m!6746646 () Bool)

(assert (=> b!5807622 m!6746646))

(declare-fun m!6746648 () Bool)

(assert (=> b!5807615 m!6746648))

(assert (=> b!5807614 m!6746642))

(assert (=> b!5807619 m!6746642))

(assert (=> b!5807619 m!6746642))

(declare-fun m!6746650 () Bool)

(assert (=> b!5807619 m!6746650))

(assert (=> b!5807619 m!6746644))

(assert (=> b!5807619 m!6746650))

(assert (=> b!5807619 m!6746644))

(declare-fun m!6746652 () Bool)

(assert (=> b!5807619 m!6746652))

(assert (=> b!5807617 m!6746644))

(assert (=> b!5807617 m!6746644))

(assert (=> b!5807617 m!6746646))

(assert (=> d!1829104 m!6746354))

(assert (=> d!1829104 m!6746290))

(assert (=> b!5807141 d!1829104))

(declare-fun d!1829116 () Bool)

(assert (=> d!1829116 (= (matchR!8006 r!7292 s!2326) (matchRSpec!2924 r!7292 s!2326))))

(declare-fun lt!2299196 () Unit!156902)

(declare-fun choose!44087 (Regex!15821 List!63764) Unit!156902)

(assert (=> d!1829116 (= lt!2299196 (choose!44087 r!7292 s!2326))))

(assert (=> d!1829116 (validRegex!7557 r!7292)))

(assert (=> d!1829116 (= (mainMatchTheorem!2924 r!7292 s!2326) lt!2299196)))

(declare-fun bs!1371139 () Bool)

(assert (= bs!1371139 d!1829116))

(assert (=> bs!1371139 m!6746310))

(assert (=> bs!1371139 m!6746308))

(declare-fun m!6746656 () Bool)

(assert (=> bs!1371139 m!6746656))

(assert (=> bs!1371139 m!6746290))

(assert (=> b!5807141 d!1829116))

(declare-fun bs!1371140 () Bool)

(declare-fun d!1829120 () Bool)

(assert (= bs!1371140 (and d!1829120 d!1829010)))

(declare-fun lambda!317049 () Int)

(assert (=> bs!1371140 (= lambda!317049 lambda!316991)))

(declare-fun bs!1371141 () Bool)

(assert (= bs!1371141 (and d!1829120 d!1829074)))

(assert (=> bs!1371141 (= lambda!317049 lambda!317021)))

(declare-fun bs!1371142 () Bool)

(assert (= bs!1371142 (and d!1829120 d!1829082)))

(assert (=> bs!1371142 (= lambda!317049 lambda!317024)))

(declare-fun bs!1371143 () Bool)

(assert (= bs!1371143 (and d!1829120 d!1829090)))

(assert (=> bs!1371143 (= lambda!317049 lambda!317025)))

(declare-fun b!5807661 () Bool)

(declare-fun e!3565115 () Bool)

(assert (=> b!5807661 (= e!3565115 (isEmpty!35554 (t!377115 (exprs!5705 (h!70087 zl!343)))))))

(declare-fun b!5807662 () Bool)

(declare-fun e!3565111 () Regex!15821)

(assert (=> b!5807662 (= e!3565111 (Concat!24666 (h!70086 (exprs!5705 (h!70087 zl!343))) (generalisedConcat!1436 (t!377115 (exprs!5705 (h!70087 zl!343))))))))

(declare-fun b!5807663 () Bool)

(assert (=> b!5807663 (= e!3565111 EmptyExpr!15821)))

(declare-fun b!5807664 () Bool)

(declare-fun e!3565114 () Regex!15821)

(assert (=> b!5807664 (= e!3565114 (h!70086 (exprs!5705 (h!70087 zl!343))))))

(declare-fun b!5807665 () Bool)

(declare-fun e!3565112 () Bool)

(declare-fun lt!2299205 () Regex!15821)

(declare-fun isConcat!817 (Regex!15821) Bool)

(assert (=> b!5807665 (= e!3565112 (isConcat!817 lt!2299205))))

(declare-fun b!5807666 () Bool)

(declare-fun e!3565116 () Bool)

(assert (=> b!5807666 (= e!3565116 e!3565112)))

(declare-fun c!1028959 () Bool)

(assert (=> b!5807666 (= c!1028959 (isEmpty!35554 (tail!11348 (exprs!5705 (h!70087 zl!343)))))))

(declare-fun b!5807667 () Bool)

(assert (=> b!5807667 (= e!3565112 (= lt!2299205 (head!12253 (exprs!5705 (h!70087 zl!343)))))))

(declare-fun e!3565113 () Bool)

(assert (=> d!1829120 e!3565113))

(declare-fun res!2449050 () Bool)

(assert (=> d!1829120 (=> (not res!2449050) (not e!3565113))))

(assert (=> d!1829120 (= res!2449050 (validRegex!7557 lt!2299205))))

(assert (=> d!1829120 (= lt!2299205 e!3565114)))

(declare-fun c!1028956 () Bool)

(assert (=> d!1829120 (= c!1028956 e!3565115)))

(declare-fun res!2449049 () Bool)

(assert (=> d!1829120 (=> (not res!2449049) (not e!3565115))))

(assert (=> d!1829120 (= res!2449049 ((_ is Cons!63638) (exprs!5705 (h!70087 zl!343))))))

(assert (=> d!1829120 (forall!14928 (exprs!5705 (h!70087 zl!343)) lambda!317049)))

(assert (=> d!1829120 (= (generalisedConcat!1436 (exprs!5705 (h!70087 zl!343))) lt!2299205)))

(declare-fun b!5807668 () Bool)

(assert (=> b!5807668 (= e!3565114 e!3565111)))

(declare-fun c!1028958 () Bool)

(assert (=> b!5807668 (= c!1028958 ((_ is Cons!63638) (exprs!5705 (h!70087 zl!343))))))

(declare-fun b!5807669 () Bool)

(assert (=> b!5807669 (= e!3565113 e!3565116)))

(declare-fun c!1028957 () Bool)

(assert (=> b!5807669 (= c!1028957 (isEmpty!35554 (exprs!5705 (h!70087 zl!343))))))

(declare-fun b!5807670 () Bool)

(declare-fun isEmptyExpr!1294 (Regex!15821) Bool)

(assert (=> b!5807670 (= e!3565116 (isEmptyExpr!1294 lt!2299205))))

(assert (= (and d!1829120 res!2449049) b!5807661))

(assert (= (and d!1829120 c!1028956) b!5807664))

(assert (= (and d!1829120 (not c!1028956)) b!5807668))

(assert (= (and b!5807668 c!1028958) b!5807662))

(assert (= (and b!5807668 (not c!1028958)) b!5807663))

(assert (= (and d!1829120 res!2449050) b!5807669))

(assert (= (and b!5807669 c!1028957) b!5807670))

(assert (= (and b!5807669 (not c!1028957)) b!5807666))

(assert (= (and b!5807666 c!1028959) b!5807667))

(assert (= (and b!5807666 (not c!1028959)) b!5807665))

(declare-fun m!6746658 () Bool)

(assert (=> b!5807662 m!6746658))

(declare-fun m!6746660 () Bool)

(assert (=> b!5807665 m!6746660))

(declare-fun m!6746662 () Bool)

(assert (=> b!5807666 m!6746662))

(assert (=> b!5807666 m!6746662))

(declare-fun m!6746664 () Bool)

(assert (=> b!5807666 m!6746664))

(declare-fun m!6746666 () Bool)

(assert (=> b!5807667 m!6746666))

(declare-fun m!6746668 () Bool)

(assert (=> b!5807661 m!6746668))

(declare-fun m!6746670 () Bool)

(assert (=> d!1829120 m!6746670))

(declare-fun m!6746672 () Bool)

(assert (=> d!1829120 m!6746672))

(declare-fun m!6746674 () Bool)

(assert (=> b!5807669 m!6746674))

(declare-fun m!6746676 () Bool)

(assert (=> b!5807670 m!6746676))

(assert (=> b!5807130 d!1829120))

(declare-fun d!1829122 () Bool)

(declare-fun lt!2299206 () Regex!15821)

(assert (=> d!1829122 (validRegex!7557 lt!2299206)))

(assert (=> d!1829122 (= lt!2299206 (generalisedUnion!1684 (unfocusZipperList!1249 (Cons!63639 lt!2299120 Nil!63639))))))

(assert (=> d!1829122 (= (unfocusZipper!1563 (Cons!63639 lt!2299120 Nil!63639)) lt!2299206)))

(declare-fun bs!1371144 () Bool)

(assert (= bs!1371144 d!1829122))

(declare-fun m!6746678 () Bool)

(assert (=> bs!1371144 m!6746678))

(declare-fun m!6746680 () Bool)

(assert (=> bs!1371144 m!6746680))

(assert (=> bs!1371144 m!6746680))

(declare-fun m!6746682 () Bool)

(assert (=> bs!1371144 m!6746682))

(assert (=> b!5807161 d!1829122))

(declare-fun d!1829124 () Bool)

(assert (=> d!1829124 (= (flatMap!1428 lt!2299124 lambda!316988) (dynLambda!24915 lambda!316988 lt!2299108))))

(declare-fun lt!2299207 () Unit!156902)

(assert (=> d!1829124 (= lt!2299207 (choose!44080 lt!2299124 lt!2299108 lambda!316988))))

(assert (=> d!1829124 (= lt!2299124 (store ((as const (Array Context!10410 Bool)) false) lt!2299108 true))))

(assert (=> d!1829124 (= (lemmaFlatMapOnSingletonSet!960 lt!2299124 lt!2299108 lambda!316988) lt!2299207)))

(declare-fun b_lambda!218925 () Bool)

(assert (=> (not b_lambda!218925) (not d!1829124)))

(declare-fun bs!1371145 () Bool)

(assert (= bs!1371145 d!1829124))

(assert (=> bs!1371145 m!6746376))

(declare-fun m!6746684 () Bool)

(assert (=> bs!1371145 m!6746684))

(declare-fun m!6746686 () Bool)

(assert (=> bs!1371145 m!6746686))

(assert (=> bs!1371145 m!6746380))

(assert (=> b!5807132 d!1829124))

(declare-fun d!1829126 () Bool)

(assert (=> d!1829126 (= (flatMap!1428 lt!2299113 lambda!316988) (choose!44079 lt!2299113 lambda!316988))))

(declare-fun bs!1371146 () Bool)

(assert (= bs!1371146 d!1829126))

(declare-fun m!6746688 () Bool)

(assert (=> bs!1371146 m!6746688))

(assert (=> b!5807132 d!1829126))

(declare-fun d!1829128 () Bool)

(assert (=> d!1829128 (= (flatMap!1428 lt!2299124 lambda!316988) (choose!44079 lt!2299124 lambda!316988))))

(declare-fun bs!1371147 () Bool)

(assert (= bs!1371147 d!1829128))

(declare-fun m!6746690 () Bool)

(assert (=> bs!1371147 m!6746690))

(assert (=> b!5807132 d!1829128))

(declare-fun bs!1371148 () Bool)

(declare-fun d!1829130 () Bool)

(assert (= bs!1371148 (and d!1829130 b!5807148)))

(declare-fun lambda!317050 () Int)

(assert (=> bs!1371148 (= lambda!317050 lambda!316988)))

(declare-fun bs!1371149 () Bool)

(assert (= bs!1371149 (and d!1829130 d!1829070)))

(assert (=> bs!1371149 (= lambda!317050 lambda!317018)))

(assert (=> d!1829130 true))

(assert (=> d!1829130 (= (derivationStepZipper!1890 lt!2299113 (h!70088 s!2326)) (flatMap!1428 lt!2299113 lambda!317050))))

(declare-fun bs!1371150 () Bool)

(assert (= bs!1371150 d!1829130))

(declare-fun m!6746692 () Bool)

(assert (=> bs!1371150 m!6746692))

(assert (=> b!5807132 d!1829130))

(declare-fun d!1829132 () Bool)

(assert (=> d!1829132 (= (flatMap!1428 lt!2299113 lambda!316988) (dynLambda!24915 lambda!316988 lt!2299120))))

(declare-fun lt!2299210 () Unit!156902)

(assert (=> d!1829132 (= lt!2299210 (choose!44080 lt!2299113 lt!2299120 lambda!316988))))

(assert (=> d!1829132 (= lt!2299113 (store ((as const (Array Context!10410 Bool)) false) lt!2299120 true))))

(assert (=> d!1829132 (= (lemmaFlatMapOnSingletonSet!960 lt!2299113 lt!2299120 lambda!316988) lt!2299210)))

(declare-fun b_lambda!218927 () Bool)

(assert (=> (not b_lambda!218927) (not d!1829132)))

(declare-fun bs!1371151 () Bool)

(assert (= bs!1371151 d!1829132))

(assert (=> bs!1371151 m!6746366))

(declare-fun m!6746694 () Bool)

(assert (=> bs!1371151 m!6746694))

(declare-fun m!6746696 () Bool)

(assert (=> bs!1371151 m!6746696))

(assert (=> bs!1371151 m!6746378))

(assert (=> b!5807132 d!1829132))

(declare-fun b!5807680 () Bool)

(declare-fun e!3565122 () (InoxSet Context!10410))

(assert (=> b!5807680 (= e!3565122 ((as const (Array Context!10410 Bool)) false))))

(declare-fun e!3565123 () (InoxSet Context!10410))

(declare-fun call!453444 () (InoxSet Context!10410))

(declare-fun b!5807681 () Bool)

(assert (=> b!5807681 (= e!3565123 ((_ map or) call!453444 (derivationStepZipperUp!1085 (Context!10411 (t!377115 (exprs!5705 lt!2299120))) (h!70088 s!2326))))))

(declare-fun d!1829134 () Bool)

(declare-fun c!1028962 () Bool)

(declare-fun e!3565124 () Bool)

(assert (=> d!1829134 (= c!1028962 e!3565124)))

(declare-fun res!2449056 () Bool)

(assert (=> d!1829134 (=> (not res!2449056) (not e!3565124))))

(assert (=> d!1829134 (= res!2449056 ((_ is Cons!63638) (exprs!5705 lt!2299120)))))

(assert (=> d!1829134 (= (derivationStepZipperUp!1085 lt!2299120 (h!70088 s!2326)) e!3565123)))

(declare-fun bm!453439 () Bool)

(assert (=> bm!453439 (= call!453444 (derivationStepZipperDown!1159 (h!70086 (exprs!5705 lt!2299120)) (Context!10411 (t!377115 (exprs!5705 lt!2299120))) (h!70088 s!2326)))))

(declare-fun b!5807682 () Bool)

(assert (=> b!5807682 (= e!3565124 (nullable!5846 (h!70086 (exprs!5705 lt!2299120))))))

(declare-fun b!5807683 () Bool)

(assert (=> b!5807683 (= e!3565122 call!453444)))

(declare-fun b!5807684 () Bool)

(assert (=> b!5807684 (= e!3565123 e!3565122)))

(declare-fun c!1028963 () Bool)

(assert (=> b!5807684 (= c!1028963 ((_ is Cons!63638) (exprs!5705 lt!2299120)))))

(assert (= (and d!1829134 res!2449056) b!5807682))

(assert (= (and d!1829134 c!1028962) b!5807681))

(assert (= (and d!1829134 (not c!1028962)) b!5807684))

(assert (= (and b!5807684 c!1028963) b!5807683))

(assert (= (and b!5807684 (not c!1028963)) b!5807680))

(assert (= (or b!5807681 b!5807683) bm!453439))

(declare-fun m!6746698 () Bool)

(assert (=> b!5807681 m!6746698))

(declare-fun m!6746700 () Bool)

(assert (=> bm!453439 m!6746700))

(declare-fun m!6746702 () Bool)

(assert (=> b!5807682 m!6746702))

(assert (=> b!5807132 d!1829134))

(declare-fun b!5807685 () Bool)

(declare-fun e!3565125 () (InoxSet Context!10410))

(assert (=> b!5807685 (= e!3565125 ((as const (Array Context!10410 Bool)) false))))

(declare-fun e!3565126 () (InoxSet Context!10410))

(declare-fun b!5807686 () Bool)

(declare-fun call!453445 () (InoxSet Context!10410))

(assert (=> b!5807686 (= e!3565126 ((_ map or) call!453445 (derivationStepZipperUp!1085 (Context!10411 (t!377115 (exprs!5705 lt!2299108))) (h!70088 s!2326))))))

(declare-fun d!1829136 () Bool)

(declare-fun c!1028964 () Bool)

(declare-fun e!3565127 () Bool)

(assert (=> d!1829136 (= c!1028964 e!3565127)))

(declare-fun res!2449057 () Bool)

(assert (=> d!1829136 (=> (not res!2449057) (not e!3565127))))

(assert (=> d!1829136 (= res!2449057 ((_ is Cons!63638) (exprs!5705 lt!2299108)))))

(assert (=> d!1829136 (= (derivationStepZipperUp!1085 lt!2299108 (h!70088 s!2326)) e!3565126)))

(declare-fun bm!453440 () Bool)

(assert (=> bm!453440 (= call!453445 (derivationStepZipperDown!1159 (h!70086 (exprs!5705 lt!2299108)) (Context!10411 (t!377115 (exprs!5705 lt!2299108))) (h!70088 s!2326)))))

(declare-fun b!5807687 () Bool)

(assert (=> b!5807687 (= e!3565127 (nullable!5846 (h!70086 (exprs!5705 lt!2299108))))))

(declare-fun b!5807688 () Bool)

(assert (=> b!5807688 (= e!3565125 call!453445)))

(declare-fun b!5807689 () Bool)

(assert (=> b!5807689 (= e!3565126 e!3565125)))

(declare-fun c!1028965 () Bool)

(assert (=> b!5807689 (= c!1028965 ((_ is Cons!63638) (exprs!5705 lt!2299108)))))

(assert (= (and d!1829136 res!2449057) b!5807687))

(assert (= (and d!1829136 c!1028964) b!5807686))

(assert (= (and d!1829136 (not c!1028964)) b!5807689))

(assert (= (and b!5807689 c!1028965) b!5807688))

(assert (= (and b!5807689 (not c!1028965)) b!5807685))

(assert (= (or b!5807686 b!5807688) bm!453440))

(declare-fun m!6746710 () Bool)

(assert (=> b!5807686 m!6746710))

(declare-fun m!6746712 () Bool)

(assert (=> bm!453440 m!6746712))

(declare-fun m!6746716 () Bool)

(assert (=> b!5807687 m!6746716))

(assert (=> b!5807132 d!1829136))

(declare-fun d!1829138 () Bool)

(declare-fun e!3565130 () Bool)

(assert (=> d!1829138 e!3565130))

(declare-fun res!2449060 () Bool)

(assert (=> d!1829138 (=> (not res!2449060) (not e!3565130))))

(declare-fun lt!2299214 () List!63763)

(declare-fun noDuplicate!1715 (List!63763) Bool)

(assert (=> d!1829138 (= res!2449060 (noDuplicate!1715 lt!2299214))))

(declare-fun choose!44089 ((InoxSet Context!10410)) List!63763)

(assert (=> d!1829138 (= lt!2299214 (choose!44089 z!1189))))

(assert (=> d!1829138 (= (toList!9605 z!1189) lt!2299214)))

(declare-fun b!5807692 () Bool)

(declare-fun content!11654 (List!63763) (InoxSet Context!10410))

(assert (=> b!5807692 (= e!3565130 (= (content!11654 lt!2299214) z!1189))))

(assert (= (and d!1829138 res!2449060) b!5807692))

(declare-fun m!6746730 () Bool)

(assert (=> d!1829138 m!6746730))

(declare-fun m!6746732 () Bool)

(assert (=> d!1829138 m!6746732))

(declare-fun m!6746734 () Bool)

(assert (=> b!5807692 m!6746734))

(assert (=> b!5807162 d!1829138))

(declare-fun bs!1371152 () Bool)

(declare-fun b!5807698 () Bool)

(assert (= bs!1371152 (and b!5807698 d!1829014)))

(declare-fun lambda!317051 () Int)

(assert (=> bs!1371152 (not (= lambda!317051 lambda!316997))))

(declare-fun bs!1371153 () Bool)

(assert (= bs!1371153 (and b!5807698 b!5807146)))

(assert (=> bs!1371153 (not (= lambda!317051 lambda!316987))))

(declare-fun bs!1371154 () Bool)

(assert (= bs!1371154 (and b!5807698 d!1829028)))

(assert (=> bs!1371154 (not (= lambda!317051 lambda!317009))))

(assert (=> bs!1371153 (not (= lambda!317051 lambda!316985))))

(declare-fun bs!1371155 () Bool)

(assert (= bs!1371155 (and b!5807698 b!5807565)))

(assert (=> bs!1371155 (= (and (= (reg!16150 lt!2299132) (reg!16150 r!7292)) (= lt!2299132 r!7292)) (= lambda!317051 lambda!317039))))

(declare-fun bs!1371156 () Bool)

(assert (= bs!1371156 (and b!5807698 d!1829016)))

(assert (=> bs!1371156 (= (and (= (reg!16150 lt!2299132) (reg!16150 r!7292)) (= lt!2299132 (Star!15821 (reg!16150 r!7292)))) (= lambda!317051 lambda!317003))))

(declare-fun bs!1371157 () Bool)

(assert (= bs!1371157 (and b!5807698 b!5807569)))

(assert (=> bs!1371157 (not (= lambda!317051 lambda!317040))))

(assert (=> bs!1371156 (not (= lambda!317051 lambda!317002))))

(assert (=> bs!1371153 (= (and (= (reg!16150 lt!2299132) (reg!16150 r!7292)) (= lt!2299132 r!7292)) (= lambda!317051 lambda!316986))))

(assert (=> bs!1371152 (not (= lambda!317051 lambda!316996))))

(assert (=> b!5807698 true))

(assert (=> b!5807698 true))

(declare-fun bs!1371158 () Bool)

(declare-fun b!5807702 () Bool)

(assert (= bs!1371158 (and b!5807702 d!1829014)))

(declare-fun lambda!317052 () Int)

(assert (=> bs!1371158 (= (and (= (regOne!32154 lt!2299132) (reg!16150 r!7292)) (= (regTwo!32154 lt!2299132) r!7292)) (= lambda!317052 lambda!316997))))

(declare-fun bs!1371159 () Bool)

(assert (= bs!1371159 (and b!5807702 b!5807146)))

(assert (=> bs!1371159 (= (and (= (regOne!32154 lt!2299132) (reg!16150 r!7292)) (= (regTwo!32154 lt!2299132) r!7292)) (= lambda!317052 lambda!316987))))

(declare-fun bs!1371160 () Bool)

(assert (= bs!1371160 (and b!5807702 d!1829028)))

(assert (=> bs!1371160 (not (= lambda!317052 lambda!317009))))

(assert (=> bs!1371159 (not (= lambda!317052 lambda!316985))))

(declare-fun bs!1371161 () Bool)

(assert (= bs!1371161 (and b!5807702 b!5807565)))

(assert (=> bs!1371161 (not (= lambda!317052 lambda!317039))))

(declare-fun bs!1371162 () Bool)

(assert (= bs!1371162 (and b!5807702 b!5807698)))

(assert (=> bs!1371162 (not (= lambda!317052 lambda!317051))))

(declare-fun bs!1371163 () Bool)

(assert (= bs!1371163 (and b!5807702 d!1829016)))

(assert (=> bs!1371163 (not (= lambda!317052 lambda!317003))))

(declare-fun bs!1371164 () Bool)

(assert (= bs!1371164 (and b!5807702 b!5807569)))

(assert (=> bs!1371164 (= (and (= (regOne!32154 lt!2299132) (regOne!32154 r!7292)) (= (regTwo!32154 lt!2299132) (regTwo!32154 r!7292))) (= lambda!317052 lambda!317040))))

(assert (=> bs!1371163 (not (= lambda!317052 lambda!317002))))

(assert (=> bs!1371159 (not (= lambda!317052 lambda!316986))))

(assert (=> bs!1371158 (not (= lambda!317052 lambda!316996))))

(assert (=> b!5807702 true))

(assert (=> b!5807702 true))

(declare-fun call!453446 () Bool)

(declare-fun c!1028969 () Bool)

(declare-fun bm!453441 () Bool)

(assert (=> bm!453441 (= call!453446 (Exists!2921 (ite c!1028969 lambda!317051 lambda!317052)))))

(declare-fun b!5807693 () Bool)

(declare-fun e!3565135 () Bool)

(assert (=> b!5807693 (= e!3565135 (matchRSpec!2924 (regTwo!32155 lt!2299132) s!2326))))

(declare-fun b!5807694 () Bool)

(declare-fun e!3565133 () Bool)

(assert (=> b!5807694 (= e!3565133 (= s!2326 (Cons!63640 (c!1028807 lt!2299132) Nil!63640)))))

(declare-fun b!5807695 () Bool)

(declare-fun c!1028966 () Bool)

(assert (=> b!5807695 (= c!1028966 ((_ is Union!15821) lt!2299132))))

(declare-fun e!3565132 () Bool)

(assert (=> b!5807695 (= e!3565133 e!3565132)))

(declare-fun b!5807696 () Bool)

(declare-fun res!2449062 () Bool)

(declare-fun e!3565136 () Bool)

(assert (=> b!5807696 (=> res!2449062 e!3565136)))

(declare-fun call!453447 () Bool)

(assert (=> b!5807696 (= res!2449062 call!453447)))

(declare-fun e!3565131 () Bool)

(assert (=> b!5807696 (= e!3565131 e!3565136)))

(declare-fun b!5807697 () Bool)

(declare-fun e!3565134 () Bool)

(assert (=> b!5807697 (= e!3565134 call!453447)))

(assert (=> b!5807698 (= e!3565136 call!453446)))

(declare-fun b!5807699 () Bool)

(assert (=> b!5807699 (= e!3565132 e!3565131)))

(assert (=> b!5807699 (= c!1028969 ((_ is Star!15821) lt!2299132))))

(declare-fun b!5807700 () Bool)

(declare-fun c!1028967 () Bool)

(assert (=> b!5807700 (= c!1028967 ((_ is ElementMatch!15821) lt!2299132))))

(declare-fun e!3565137 () Bool)

(assert (=> b!5807700 (= e!3565137 e!3565133)))

(declare-fun d!1829142 () Bool)

(declare-fun c!1028968 () Bool)

(assert (=> d!1829142 (= c!1028968 ((_ is EmptyExpr!15821) lt!2299132))))

(assert (=> d!1829142 (= (matchRSpec!2924 lt!2299132 s!2326) e!3565134)))

(declare-fun b!5807701 () Bool)

(assert (=> b!5807701 (= e!3565132 e!3565135)))

(declare-fun res!2449061 () Bool)

(assert (=> b!5807701 (= res!2449061 (matchRSpec!2924 (regOne!32155 lt!2299132) s!2326))))

(assert (=> b!5807701 (=> res!2449061 e!3565135)))

(assert (=> b!5807702 (= e!3565131 call!453446)))

(declare-fun bm!453442 () Bool)

(assert (=> bm!453442 (= call!453447 (isEmpty!35552 s!2326))))

(declare-fun b!5807703 () Bool)

(assert (=> b!5807703 (= e!3565134 e!3565137)))

(declare-fun res!2449063 () Bool)

(assert (=> b!5807703 (= res!2449063 (not ((_ is EmptyLang!15821) lt!2299132)))))

(assert (=> b!5807703 (=> (not res!2449063) (not e!3565137))))

(assert (= (and d!1829142 c!1028968) b!5807697))

(assert (= (and d!1829142 (not c!1028968)) b!5807703))

(assert (= (and b!5807703 res!2449063) b!5807700))

(assert (= (and b!5807700 c!1028967) b!5807694))

(assert (= (and b!5807700 (not c!1028967)) b!5807695))

(assert (= (and b!5807695 c!1028966) b!5807701))

(assert (= (and b!5807695 (not c!1028966)) b!5807699))

(assert (= (and b!5807701 (not res!2449061)) b!5807693))

(assert (= (and b!5807699 c!1028969) b!5807696))

(assert (= (and b!5807699 (not c!1028969)) b!5807702))

(assert (= (and b!5807696 (not res!2449062)) b!5807698))

(assert (= (or b!5807698 b!5807702) bm!453441))

(assert (= (or b!5807697 b!5807696) bm!453442))

(declare-fun m!6746736 () Bool)

(assert (=> bm!453441 m!6746736))

(declare-fun m!6746738 () Bool)

(assert (=> b!5807693 m!6746738))

(declare-fun m!6746740 () Bool)

(assert (=> b!5807701 m!6746740))

(assert (=> bm!453442 m!6746354))

(assert (=> b!5807142 d!1829142))

(declare-fun b!5807708 () Bool)

(declare-fun e!3565143 () Bool)

(declare-fun e!3565141 () Bool)

(assert (=> b!5807708 (= e!3565143 e!3565141)))

(declare-fun c!1028971 () Bool)

(assert (=> b!5807708 (= c!1028971 ((_ is EmptyLang!15821) lt!2299132))))

(declare-fun b!5807709 () Bool)

(declare-fun e!3565140 () Bool)

(declare-fun e!3565145 () Bool)

(assert (=> b!5807709 (= e!3565140 e!3565145)))

(declare-fun res!2449074 () Bool)

(assert (=> b!5807709 (=> (not res!2449074) (not e!3565145))))

(declare-fun lt!2299217 () Bool)

(assert (=> b!5807709 (= res!2449074 (not lt!2299217))))

(declare-fun d!1829144 () Bool)

(assert (=> d!1829144 e!3565143))

(declare-fun c!1028972 () Bool)

(assert (=> d!1829144 (= c!1028972 ((_ is EmptyExpr!15821) lt!2299132))))

(declare-fun e!3565144 () Bool)

(assert (=> d!1829144 (= lt!2299217 e!3565144)))

(declare-fun c!1028970 () Bool)

(assert (=> d!1829144 (= c!1028970 (isEmpty!35552 s!2326))))

(assert (=> d!1829144 (validRegex!7557 lt!2299132)))

(assert (=> d!1829144 (= (matchR!8006 lt!2299132 s!2326) lt!2299217)))

(declare-fun b!5807710 () Bool)

(assert (=> b!5807710 (= e!3565141 (not lt!2299217))))

(declare-fun b!5807711 () Bool)

(declare-fun e!3565146 () Bool)

(assert (=> b!5807711 (= e!3565146 (not (= (head!12254 s!2326) (c!1028807 lt!2299132))))))

(declare-fun b!5807712 () Bool)

(declare-fun res!2449071 () Bool)

(assert (=> b!5807712 (=> res!2449071 e!3565140)))

(assert (=> b!5807712 (= res!2449071 (not ((_ is ElementMatch!15821) lt!2299132)))))

(assert (=> b!5807712 (= e!3565141 e!3565140)))

(declare-fun b!5807713 () Bool)

(declare-fun e!3565142 () Bool)

(assert (=> b!5807713 (= e!3565142 (= (head!12254 s!2326) (c!1028807 lt!2299132)))))

(declare-fun bm!453443 () Bool)

(declare-fun call!453448 () Bool)

(assert (=> bm!453443 (= call!453448 (isEmpty!35552 s!2326))))

(declare-fun b!5807714 () Bool)

(assert (=> b!5807714 (= e!3565144 (nullable!5846 lt!2299132))))

(declare-fun b!5807715 () Bool)

(assert (=> b!5807715 (= e!3565143 (= lt!2299217 call!453448))))

(declare-fun b!5807716 () Bool)

(declare-fun res!2449072 () Bool)

(assert (=> b!5807716 (=> res!2449072 e!3565146)))

(assert (=> b!5807716 (= res!2449072 (not (isEmpty!35552 (tail!11349 s!2326))))))

(declare-fun b!5807717 () Bool)

(declare-fun res!2449075 () Bool)

(assert (=> b!5807717 (=> (not res!2449075) (not e!3565142))))

(assert (=> b!5807717 (= res!2449075 (not call!453448))))

(declare-fun b!5807718 () Bool)

(assert (=> b!5807718 (= e!3565144 (matchR!8006 (derivativeStep!4590 lt!2299132 (head!12254 s!2326)) (tail!11349 s!2326)))))

(declare-fun b!5807719 () Bool)

(assert (=> b!5807719 (= e!3565145 e!3565146)))

(declare-fun res!2449068 () Bool)

(assert (=> b!5807719 (=> res!2449068 e!3565146)))

(assert (=> b!5807719 (= res!2449068 call!453448)))

(declare-fun b!5807720 () Bool)

(declare-fun res!2449073 () Bool)

(assert (=> b!5807720 (=> res!2449073 e!3565140)))

(assert (=> b!5807720 (= res!2449073 e!3565142)))

(declare-fun res!2449069 () Bool)

(assert (=> b!5807720 (=> (not res!2449069) (not e!3565142))))

(assert (=> b!5807720 (= res!2449069 lt!2299217)))

(declare-fun b!5807721 () Bool)

(declare-fun res!2449070 () Bool)

(assert (=> b!5807721 (=> (not res!2449070) (not e!3565142))))

(assert (=> b!5807721 (= res!2449070 (isEmpty!35552 (tail!11349 s!2326)))))

(assert (= (and d!1829144 c!1028970) b!5807714))

(assert (= (and d!1829144 (not c!1028970)) b!5807718))

(assert (= (and d!1829144 c!1028972) b!5807715))

(assert (= (and d!1829144 (not c!1028972)) b!5807708))

(assert (= (and b!5807708 c!1028971) b!5807710))

(assert (= (and b!5807708 (not c!1028971)) b!5807712))

(assert (= (and b!5807712 (not res!2449071)) b!5807720))

(assert (= (and b!5807720 res!2449069) b!5807717))

(assert (= (and b!5807717 res!2449075) b!5807721))

(assert (= (and b!5807721 res!2449070) b!5807713))

(assert (= (and b!5807720 (not res!2449073)) b!5807709))

(assert (= (and b!5807709 res!2449074) b!5807719))

(assert (= (and b!5807719 (not res!2449068)) b!5807716))

(assert (= (and b!5807716 (not res!2449072)) b!5807711))

(assert (= (or b!5807715 b!5807719 b!5807717) bm!453443))

(assert (=> bm!453443 m!6746354))

(assert (=> b!5807711 m!6746642))

(assert (=> b!5807721 m!6746644))

(assert (=> b!5807721 m!6746644))

(assert (=> b!5807721 m!6746646))

(declare-fun m!6746742 () Bool)

(assert (=> b!5807714 m!6746742))

(assert (=> b!5807713 m!6746642))

(assert (=> b!5807718 m!6746642))

(assert (=> b!5807718 m!6746642))

(declare-fun m!6746744 () Bool)

(assert (=> b!5807718 m!6746744))

(assert (=> b!5807718 m!6746644))

(assert (=> b!5807718 m!6746744))

(assert (=> b!5807718 m!6746644))

(declare-fun m!6746746 () Bool)

(assert (=> b!5807718 m!6746746))

(assert (=> b!5807716 m!6746644))

(assert (=> b!5807716 m!6746644))

(assert (=> b!5807716 m!6746646))

(assert (=> d!1829144 m!6746354))

(declare-fun m!6746748 () Bool)

(assert (=> d!1829144 m!6746748))

(assert (=> b!5807142 d!1829144))

(declare-fun d!1829146 () Bool)

(assert (=> d!1829146 (= (matchR!8006 lt!2299132 s!2326) (matchRSpec!2924 lt!2299132 s!2326))))

(declare-fun lt!2299219 () Unit!156902)

(assert (=> d!1829146 (= lt!2299219 (choose!44087 lt!2299132 s!2326))))

(assert (=> d!1829146 (validRegex!7557 lt!2299132)))

(assert (=> d!1829146 (= (mainMatchTheorem!2924 lt!2299132 s!2326) lt!2299219)))

(declare-fun bs!1371165 () Bool)

(assert (= bs!1371165 d!1829146))

(assert (=> bs!1371165 m!6746296))

(assert (=> bs!1371165 m!6746294))

(declare-fun m!6746750 () Bool)

(assert (=> bs!1371165 m!6746750))

(assert (=> bs!1371165 m!6746748))

(assert (=> b!5807142 d!1829146))

(assert (=> b!5807139 d!1829022))

(declare-fun b!5807722 () Bool)

(declare-fun e!3565150 () Bool)

(declare-fun e!3565148 () Bool)

(assert (=> b!5807722 (= e!3565150 e!3565148)))

(declare-fun c!1028974 () Bool)

(assert (=> b!5807722 (= c!1028974 ((_ is EmptyLang!15821) (reg!16150 r!7292)))))

(declare-fun b!5807723 () Bool)

(declare-fun e!3565147 () Bool)

(declare-fun e!3565152 () Bool)

(assert (=> b!5807723 (= e!3565147 e!3565152)))

(declare-fun res!2449082 () Bool)

(assert (=> b!5807723 (=> (not res!2449082) (not e!3565152))))

(declare-fun lt!2299220 () Bool)

(assert (=> b!5807723 (= res!2449082 (not lt!2299220))))

(declare-fun d!1829148 () Bool)

(assert (=> d!1829148 e!3565150))

(declare-fun c!1028975 () Bool)

(assert (=> d!1829148 (= c!1028975 ((_ is EmptyExpr!15821) (reg!16150 r!7292)))))

(declare-fun e!3565151 () Bool)

(assert (=> d!1829148 (= lt!2299220 e!3565151)))

(declare-fun c!1028973 () Bool)

(assert (=> d!1829148 (= c!1028973 (isEmpty!35552 (_1!36221 lt!2299116)))))

(assert (=> d!1829148 (validRegex!7557 (reg!16150 r!7292))))

(assert (=> d!1829148 (= (matchR!8006 (reg!16150 r!7292) (_1!36221 lt!2299116)) lt!2299220)))

(declare-fun b!5807724 () Bool)

(assert (=> b!5807724 (= e!3565148 (not lt!2299220))))

(declare-fun b!5807725 () Bool)

(declare-fun e!3565153 () Bool)

(assert (=> b!5807725 (= e!3565153 (not (= (head!12254 (_1!36221 lt!2299116)) (c!1028807 (reg!16150 r!7292)))))))

(declare-fun b!5807726 () Bool)

(declare-fun res!2449079 () Bool)

(assert (=> b!5807726 (=> res!2449079 e!3565147)))

(assert (=> b!5807726 (= res!2449079 (not ((_ is ElementMatch!15821) (reg!16150 r!7292))))))

(assert (=> b!5807726 (= e!3565148 e!3565147)))

(declare-fun b!5807727 () Bool)

(declare-fun e!3565149 () Bool)

(assert (=> b!5807727 (= e!3565149 (= (head!12254 (_1!36221 lt!2299116)) (c!1028807 (reg!16150 r!7292))))))

(declare-fun bm!453444 () Bool)

(declare-fun call!453449 () Bool)

(assert (=> bm!453444 (= call!453449 (isEmpty!35552 (_1!36221 lt!2299116)))))

(declare-fun b!5807728 () Bool)

(assert (=> b!5807728 (= e!3565151 (nullable!5846 (reg!16150 r!7292)))))

(declare-fun b!5807729 () Bool)

(assert (=> b!5807729 (= e!3565150 (= lt!2299220 call!453449))))

(declare-fun b!5807730 () Bool)

(declare-fun res!2449080 () Bool)

(assert (=> b!5807730 (=> res!2449080 e!3565153)))

(assert (=> b!5807730 (= res!2449080 (not (isEmpty!35552 (tail!11349 (_1!36221 lt!2299116)))))))

(declare-fun b!5807731 () Bool)

(declare-fun res!2449083 () Bool)

(assert (=> b!5807731 (=> (not res!2449083) (not e!3565149))))

(assert (=> b!5807731 (= res!2449083 (not call!453449))))

(declare-fun b!5807732 () Bool)

(assert (=> b!5807732 (= e!3565151 (matchR!8006 (derivativeStep!4590 (reg!16150 r!7292) (head!12254 (_1!36221 lt!2299116))) (tail!11349 (_1!36221 lt!2299116))))))

(declare-fun b!5807733 () Bool)

(assert (=> b!5807733 (= e!3565152 e!3565153)))

(declare-fun res!2449076 () Bool)

(assert (=> b!5807733 (=> res!2449076 e!3565153)))

(assert (=> b!5807733 (= res!2449076 call!453449)))

(declare-fun b!5807734 () Bool)

(declare-fun res!2449081 () Bool)

(assert (=> b!5807734 (=> res!2449081 e!3565147)))

(assert (=> b!5807734 (= res!2449081 e!3565149)))

(declare-fun res!2449077 () Bool)

(assert (=> b!5807734 (=> (not res!2449077) (not e!3565149))))

(assert (=> b!5807734 (= res!2449077 lt!2299220)))

(declare-fun b!5807735 () Bool)

(declare-fun res!2449078 () Bool)

(assert (=> b!5807735 (=> (not res!2449078) (not e!3565149))))

(assert (=> b!5807735 (= res!2449078 (isEmpty!35552 (tail!11349 (_1!36221 lt!2299116))))))

(assert (= (and d!1829148 c!1028973) b!5807728))

(assert (= (and d!1829148 (not c!1028973)) b!5807732))

(assert (= (and d!1829148 c!1028975) b!5807729))

(assert (= (and d!1829148 (not c!1028975)) b!5807722))

(assert (= (and b!5807722 c!1028974) b!5807724))

(assert (= (and b!5807722 (not c!1028974)) b!5807726))

(assert (= (and b!5807726 (not res!2449079)) b!5807734))

(assert (= (and b!5807734 res!2449077) b!5807731))

(assert (= (and b!5807731 res!2449083) b!5807735))

(assert (= (and b!5807735 res!2449078) b!5807727))

(assert (= (and b!5807734 (not res!2449081)) b!5807723))

(assert (= (and b!5807723 res!2449082) b!5807733))

(assert (= (and b!5807733 (not res!2449076)) b!5807730))

(assert (= (and b!5807730 (not res!2449080)) b!5807725))

(assert (= (or b!5807729 b!5807733 b!5807731) bm!453444))

(declare-fun m!6746752 () Bool)

(assert (=> bm!453444 m!6746752))

(declare-fun m!6746754 () Bool)

(assert (=> b!5807725 m!6746754))

(declare-fun m!6746756 () Bool)

(assert (=> b!5807735 m!6746756))

(assert (=> b!5807735 m!6746756))

(declare-fun m!6746758 () Bool)

(assert (=> b!5807735 m!6746758))

(assert (=> b!5807728 m!6746494))

(assert (=> b!5807727 m!6746754))

(assert (=> b!5807732 m!6746754))

(assert (=> b!5807732 m!6746754))

(declare-fun m!6746760 () Bool)

(assert (=> b!5807732 m!6746760))

(assert (=> b!5807732 m!6746756))

(assert (=> b!5807732 m!6746760))

(assert (=> b!5807732 m!6746756))

(declare-fun m!6746762 () Bool)

(assert (=> b!5807732 m!6746762))

(assert (=> b!5807730 m!6746756))

(assert (=> b!5807730 m!6746756))

(assert (=> b!5807730 m!6746758))

(assert (=> d!1829148 m!6746752))

(assert (=> d!1829148 m!6746394))

(assert (=> b!5807159 d!1829148))

(declare-fun d!1829150 () Bool)

(declare-fun c!1028982 () Bool)

(assert (=> d!1829150 (= c!1028982 (isEmpty!35552 s!2326))))

(declare-fun e!3565162 () Bool)

(assert (=> d!1829150 (= (matchZipper!1949 lt!2299131 s!2326) e!3565162)))

(declare-fun b!5807750 () Bool)

(declare-fun nullableZipper!1729 ((InoxSet Context!10410)) Bool)

(assert (=> b!5807750 (= e!3565162 (nullableZipper!1729 lt!2299131))))

(declare-fun b!5807751 () Bool)

(assert (=> b!5807751 (= e!3565162 (matchZipper!1949 (derivationStepZipper!1890 lt!2299131 (head!12254 s!2326)) (tail!11349 s!2326)))))

(assert (= (and d!1829150 c!1028982) b!5807750))

(assert (= (and d!1829150 (not c!1028982)) b!5807751))

(assert (=> d!1829150 m!6746354))

(declare-fun m!6746796 () Bool)

(assert (=> b!5807750 m!6746796))

(assert (=> b!5807751 m!6746642))

(assert (=> b!5807751 m!6746642))

(declare-fun m!6746798 () Bool)

(assert (=> b!5807751 m!6746798))

(assert (=> b!5807751 m!6746644))

(assert (=> b!5807751 m!6746798))

(assert (=> b!5807751 m!6746644))

(declare-fun m!6746800 () Bool)

(assert (=> b!5807751 m!6746800))

(assert (=> b!5807138 d!1829150))

(declare-fun d!1829168 () Bool)

(declare-fun c!1028983 () Bool)

(assert (=> d!1829168 (= c!1028983 (isEmpty!35552 (t!377117 s!2326)))))

(declare-fun e!3565163 () Bool)

(assert (=> d!1829168 (= (matchZipper!1949 (derivationStepZipper!1890 lt!2299131 (h!70088 s!2326)) (t!377117 s!2326)) e!3565163)))

(declare-fun b!5807752 () Bool)

(assert (=> b!5807752 (= e!3565163 (nullableZipper!1729 (derivationStepZipper!1890 lt!2299131 (h!70088 s!2326))))))

(declare-fun b!5807753 () Bool)

(assert (=> b!5807753 (= e!3565163 (matchZipper!1949 (derivationStepZipper!1890 (derivationStepZipper!1890 lt!2299131 (h!70088 s!2326)) (head!12254 (t!377117 s!2326))) (tail!11349 (t!377117 s!2326))))))

(assert (= (and d!1829168 c!1028983) b!5807752))

(assert (= (and d!1829168 (not c!1028983)) b!5807753))

(declare-fun m!6746802 () Bool)

(assert (=> d!1829168 m!6746802))

(assert (=> b!5807752 m!6746344))

(declare-fun m!6746804 () Bool)

(assert (=> b!5807752 m!6746804))

(declare-fun m!6746806 () Bool)

(assert (=> b!5807753 m!6746806))

(assert (=> b!5807753 m!6746344))

(assert (=> b!5807753 m!6746806))

(declare-fun m!6746808 () Bool)

(assert (=> b!5807753 m!6746808))

(declare-fun m!6746810 () Bool)

(assert (=> b!5807753 m!6746810))

(assert (=> b!5807753 m!6746808))

(assert (=> b!5807753 m!6746810))

(declare-fun m!6746812 () Bool)

(assert (=> b!5807753 m!6746812))

(assert (=> b!5807138 d!1829168))

(declare-fun bs!1371179 () Bool)

(declare-fun d!1829170 () Bool)

(assert (= bs!1371179 (and d!1829170 b!5807148)))

(declare-fun lambda!317057 () Int)

(assert (=> bs!1371179 (= lambda!317057 lambda!316988)))

(declare-fun bs!1371180 () Bool)

(assert (= bs!1371180 (and d!1829170 d!1829070)))

(assert (=> bs!1371180 (= lambda!317057 lambda!317018)))

(declare-fun bs!1371181 () Bool)

(assert (= bs!1371181 (and d!1829170 d!1829130)))

(assert (=> bs!1371181 (= lambda!317057 lambda!317050)))

(assert (=> d!1829170 true))

(assert (=> d!1829170 (= (derivationStepZipper!1890 lt!2299131 (h!70088 s!2326)) (flatMap!1428 lt!2299131 lambda!317057))))

(declare-fun bs!1371182 () Bool)

(assert (= bs!1371182 d!1829170))

(declare-fun m!6746814 () Bool)

(assert (=> bs!1371182 m!6746814))

(assert (=> b!5807138 d!1829170))

(declare-fun d!1829172 () Bool)

(declare-fun lt!2299223 () Regex!15821)

(assert (=> d!1829172 (validRegex!7557 lt!2299223)))

(assert (=> d!1829172 (= lt!2299223 (generalisedUnion!1684 (unfocusZipperList!1249 (Cons!63639 lt!2299108 Nil!63639))))))

(assert (=> d!1829172 (= (unfocusZipper!1563 (Cons!63639 lt!2299108 Nil!63639)) lt!2299223)))

(declare-fun bs!1371183 () Bool)

(assert (= bs!1371183 d!1829172))

(declare-fun m!6746816 () Bool)

(assert (=> bs!1371183 m!6746816))

(declare-fun m!6746818 () Bool)

(assert (=> bs!1371183 m!6746818))

(assert (=> bs!1371183 m!6746818))

(declare-fun m!6746820 () Bool)

(assert (=> bs!1371183 m!6746820))

(assert (=> b!5807151 d!1829172))

(declare-fun d!1829174 () Bool)

(assert (=> d!1829174 (= (isEmpty!35551 (t!377116 zl!343)) ((_ is Nil!63639) (t!377116 zl!343)))))

(assert (=> b!5807129 d!1829174))

(declare-fun b!5807779 () Bool)

(declare-fun e!3565183 () Bool)

(declare-fun tp!1602977 () Bool)

(assert (=> b!5807779 (= e!3565183 tp!1602977)))

(declare-fun e!3565182 () Bool)

(declare-fun b!5807778 () Bool)

(declare-fun tp!1602978 () Bool)

(assert (=> b!5807778 (= e!3565182 (and (inv!82799 (h!70087 (t!377116 zl!343))) e!3565183 tp!1602978))))

(assert (=> b!5807147 (= tp!1602965 e!3565182)))

(assert (= b!5807778 b!5807779))

(assert (= (and b!5807147 ((_ is Cons!63639) (t!377116 zl!343))) b!5807778))

(declare-fun m!6746822 () Bool)

(assert (=> b!5807778 m!6746822))

(declare-fun condSetEmpty!39089 () Bool)

(assert (=> setNonEmpty!39086 (= condSetEmpty!39089 (= setRest!39086 ((as const (Array Context!10410 Bool)) false)))))

(declare-fun setRes!39089 () Bool)

(assert (=> setNonEmpty!39086 (= tp!1602972 setRes!39089)))

(declare-fun setIsEmpty!39089 () Bool)

(assert (=> setIsEmpty!39089 setRes!39089))

(declare-fun tp!1602984 () Bool)

(declare-fun setNonEmpty!39089 () Bool)

(declare-fun e!3565186 () Bool)

(declare-fun setElem!39089 () Context!10410)

(assert (=> setNonEmpty!39089 (= setRes!39089 (and tp!1602984 (inv!82799 setElem!39089) e!3565186))))

(declare-fun setRest!39089 () (InoxSet Context!10410))

(assert (=> setNonEmpty!39089 (= setRest!39086 ((_ map or) (store ((as const (Array Context!10410 Bool)) false) setElem!39089 true) setRest!39089))))

(declare-fun b!5807784 () Bool)

(declare-fun tp!1602983 () Bool)

(assert (=> b!5807784 (= e!3565186 tp!1602983)))

(assert (= (and setNonEmpty!39086 condSetEmpty!39089) setIsEmpty!39089))

(assert (= (and setNonEmpty!39086 (not condSetEmpty!39089)) setNonEmpty!39089))

(assert (= setNonEmpty!39089 b!5807784))

(declare-fun m!6746824 () Bool)

(assert (=> setNonEmpty!39089 m!6746824))

(declare-fun b!5807789 () Bool)

(declare-fun e!3565189 () Bool)

(declare-fun tp!1602989 () Bool)

(declare-fun tp!1602990 () Bool)

(assert (=> b!5807789 (= e!3565189 (and tp!1602989 tp!1602990))))

(assert (=> b!5807156 (= tp!1602966 e!3565189)))

(assert (= (and b!5807156 ((_ is Cons!63638) (exprs!5705 setElem!39086))) b!5807789))

(declare-fun e!3565199 () Bool)

(assert (=> b!5807137 (= tp!1602968 e!3565199)))

(declare-fun b!5807811 () Bool)

(declare-fun tp!1603004 () Bool)

(assert (=> b!5807811 (= e!3565199 tp!1603004)))

(declare-fun b!5807810 () Bool)

(declare-fun tp!1603001 () Bool)

(declare-fun tp!1603002 () Bool)

(assert (=> b!5807810 (= e!3565199 (and tp!1603001 tp!1603002))))

(declare-fun b!5807809 () Bool)

(assert (=> b!5807809 (= e!3565199 tp_is_empty!40895)))

(declare-fun b!5807812 () Bool)

(declare-fun tp!1603005 () Bool)

(declare-fun tp!1603003 () Bool)

(assert (=> b!5807812 (= e!3565199 (and tp!1603005 tp!1603003))))

(assert (= (and b!5807137 ((_ is ElementMatch!15821) (reg!16150 r!7292))) b!5807809))

(assert (= (and b!5807137 ((_ is Concat!24666) (reg!16150 r!7292))) b!5807810))

(assert (= (and b!5807137 ((_ is Star!15821) (reg!16150 r!7292))) b!5807811))

(assert (= (and b!5807137 ((_ is Union!15821) (reg!16150 r!7292))) b!5807812))

(declare-fun b!5807817 () Bool)

(declare-fun e!3565202 () Bool)

(declare-fun tp!1603008 () Bool)

(assert (=> b!5807817 (= e!3565202 (and tp_is_empty!40895 tp!1603008))))

(assert (=> b!5807154 (= tp!1602964 e!3565202)))

(assert (= (and b!5807154 ((_ is Cons!63640) (t!377117 s!2326))) b!5807817))

(declare-fun e!3565203 () Bool)

(assert (=> b!5807149 (= tp!1602971 e!3565203)))

(declare-fun b!5807820 () Bool)

(declare-fun tp!1603012 () Bool)

(assert (=> b!5807820 (= e!3565203 tp!1603012)))

(declare-fun b!5807819 () Bool)

(declare-fun tp!1603009 () Bool)

(declare-fun tp!1603010 () Bool)

(assert (=> b!5807819 (= e!3565203 (and tp!1603009 tp!1603010))))

(declare-fun b!5807818 () Bool)

(assert (=> b!5807818 (= e!3565203 tp_is_empty!40895)))

(declare-fun b!5807821 () Bool)

(declare-fun tp!1603013 () Bool)

(declare-fun tp!1603011 () Bool)

(assert (=> b!5807821 (= e!3565203 (and tp!1603013 tp!1603011))))

(assert (= (and b!5807149 ((_ is ElementMatch!15821) (regOne!32155 r!7292))) b!5807818))

(assert (= (and b!5807149 ((_ is Concat!24666) (regOne!32155 r!7292))) b!5807819))

(assert (= (and b!5807149 ((_ is Star!15821) (regOne!32155 r!7292))) b!5807820))

(assert (= (and b!5807149 ((_ is Union!15821) (regOne!32155 r!7292))) b!5807821))

(declare-fun e!3565204 () Bool)

(assert (=> b!5807149 (= tp!1602969 e!3565204)))

(declare-fun b!5807824 () Bool)

(declare-fun tp!1603017 () Bool)

(assert (=> b!5807824 (= e!3565204 tp!1603017)))

(declare-fun b!5807823 () Bool)

(declare-fun tp!1603014 () Bool)

(declare-fun tp!1603015 () Bool)

(assert (=> b!5807823 (= e!3565204 (and tp!1603014 tp!1603015))))

(declare-fun b!5807822 () Bool)

(assert (=> b!5807822 (= e!3565204 tp_is_empty!40895)))

(declare-fun b!5807825 () Bool)

(declare-fun tp!1603018 () Bool)

(declare-fun tp!1603016 () Bool)

(assert (=> b!5807825 (= e!3565204 (and tp!1603018 tp!1603016))))

(assert (= (and b!5807149 ((_ is ElementMatch!15821) (regTwo!32155 r!7292))) b!5807822))

(assert (= (and b!5807149 ((_ is Concat!24666) (regTwo!32155 r!7292))) b!5807823))

(assert (= (and b!5807149 ((_ is Star!15821) (regTwo!32155 r!7292))) b!5807824))

(assert (= (and b!5807149 ((_ is Union!15821) (regTwo!32155 r!7292))) b!5807825))

(declare-fun e!3565205 () Bool)

(assert (=> b!5807140 (= tp!1602967 e!3565205)))

(declare-fun b!5807828 () Bool)

(declare-fun tp!1603022 () Bool)

(assert (=> b!5807828 (= e!3565205 tp!1603022)))

(declare-fun b!5807827 () Bool)

(declare-fun tp!1603019 () Bool)

(declare-fun tp!1603020 () Bool)

(assert (=> b!5807827 (= e!3565205 (and tp!1603019 tp!1603020))))

(declare-fun b!5807826 () Bool)

(assert (=> b!5807826 (= e!3565205 tp_is_empty!40895)))

(declare-fun b!5807829 () Bool)

(declare-fun tp!1603023 () Bool)

(declare-fun tp!1603021 () Bool)

(assert (=> b!5807829 (= e!3565205 (and tp!1603023 tp!1603021))))

(assert (= (and b!5807140 ((_ is ElementMatch!15821) (regOne!32154 r!7292))) b!5807826))

(assert (= (and b!5807140 ((_ is Concat!24666) (regOne!32154 r!7292))) b!5807827))

(assert (= (and b!5807140 ((_ is Star!15821) (regOne!32154 r!7292))) b!5807828))

(assert (= (and b!5807140 ((_ is Union!15821) (regOne!32154 r!7292))) b!5807829))

(declare-fun e!3565206 () Bool)

(assert (=> b!5807140 (= tp!1602963 e!3565206)))

(declare-fun b!5807832 () Bool)

(declare-fun tp!1603027 () Bool)

(assert (=> b!5807832 (= e!3565206 tp!1603027)))

(declare-fun b!5807831 () Bool)

(declare-fun tp!1603024 () Bool)

(declare-fun tp!1603025 () Bool)

(assert (=> b!5807831 (= e!3565206 (and tp!1603024 tp!1603025))))

(declare-fun b!5807830 () Bool)

(assert (=> b!5807830 (= e!3565206 tp_is_empty!40895)))

(declare-fun b!5807833 () Bool)

(declare-fun tp!1603028 () Bool)

(declare-fun tp!1603026 () Bool)

(assert (=> b!5807833 (= e!3565206 (and tp!1603028 tp!1603026))))

(assert (= (and b!5807140 ((_ is ElementMatch!15821) (regTwo!32154 r!7292))) b!5807830))

(assert (= (and b!5807140 ((_ is Concat!24666) (regTwo!32154 r!7292))) b!5807831))

(assert (= (and b!5807140 ((_ is Star!15821) (regTwo!32154 r!7292))) b!5807832))

(assert (= (and b!5807140 ((_ is Union!15821) (regTwo!32154 r!7292))) b!5807833))

(declare-fun b!5807834 () Bool)

(declare-fun e!3565207 () Bool)

(declare-fun tp!1603029 () Bool)

(declare-fun tp!1603030 () Bool)

(assert (=> b!5807834 (= e!3565207 (and tp!1603029 tp!1603030))))

(assert (=> b!5807150 (= tp!1602970 e!3565207)))

(assert (= (and b!5807150 ((_ is Cons!63638) (exprs!5705 (h!70087 zl!343)))) b!5807834))

(declare-fun b_lambda!218933 () Bool)

(assert (= b_lambda!218919 (or b!5807148 b_lambda!218933)))

(declare-fun bs!1371184 () Bool)

(declare-fun d!1829178 () Bool)

(assert (= bs!1371184 (and d!1829178 b!5807148)))

(assert (=> bs!1371184 (= (dynLambda!24915 lambda!316988 (h!70087 zl!343)) (derivationStepZipperUp!1085 (h!70087 zl!343) (h!70088 s!2326)))))

(assert (=> bs!1371184 m!6746334))

(assert (=> d!1829052 d!1829178))

(declare-fun b_lambda!218935 () Bool)

(assert (= b_lambda!218927 (or b!5807148 b_lambda!218935)))

(declare-fun bs!1371185 () Bool)

(declare-fun d!1829180 () Bool)

(assert (= bs!1371185 (and d!1829180 b!5807148)))

(assert (=> bs!1371185 (= (dynLambda!24915 lambda!316988 lt!2299120) (derivationStepZipperUp!1085 lt!2299120 (h!70088 s!2326)))))

(assert (=> bs!1371185 m!6746382))

(assert (=> d!1829132 d!1829180))

(declare-fun b_lambda!218937 () Bool)

(assert (= b_lambda!218917 (or b!5807148 b_lambda!218937)))

(declare-fun bs!1371186 () Bool)

(declare-fun d!1829182 () Bool)

(assert (= bs!1371186 (and d!1829182 b!5807148)))

(assert (=> bs!1371186 (= (dynLambda!24915 lambda!316988 lt!2299121) (derivationStepZipperUp!1085 lt!2299121 (h!70088 s!2326)))))

(assert (=> bs!1371186 m!6746284))

(assert (=> d!1829046 d!1829182))

(declare-fun b_lambda!218939 () Bool)

(assert (= b_lambda!218925 (or b!5807148 b_lambda!218939)))

(declare-fun bs!1371187 () Bool)

(declare-fun d!1829184 () Bool)

(assert (= bs!1371187 (and d!1829184 b!5807148)))

(assert (=> bs!1371187 (= (dynLambda!24915 lambda!316988 lt!2299108) (derivationStepZipperUp!1085 lt!2299108 (h!70088 s!2326)))))

(assert (=> bs!1371187 m!6746374))

(assert (=> d!1829124 d!1829184))

(check-sat (not b!5807429) (not bm!453402) (not setNonEmpty!39089) (not b!5807421) (not b!5807714) (not d!1829122) (not d!1829150) (not d!1829146) (not b!5807784) (not d!1829028) (not b!5807667) (not b!5807568) (not b!5807833) (not b!5807614) (not b!5807560) (not b_lambda!218933) (not bm!453372) (not bm!453442) (not b!5807211) (not b!5807276) (not b!5807310) (not b!5807306) (not b!5807831) (not b!5807615) (not b!5807430) (not b!5807484) (not b!5807670) (not d!1829018) (not b!5807718) (not d!1829026) (not b!5807779) (not d!1829024) (not b!5807753) (not b!5807821) (not b!5807725) (not b!5807407) (not b!5807828) (not d!1829138) (not d!1829126) (not d!1829060) (not d!1829072) (not d!1829082) (not bm!453439) (not b!5807212) (not b!5807819) (not b!5807488) (not b!5807687) (not b!5807810) (not bm!453435) (not d!1829148) (not b!5807379) (not d!1829104) (not b!5807511) (not b!5807662) (not b!5807669) (not bm!453392) (not b!5807732) (not b!5807693) (not d!1829054) (not d!1829046) (not b!5807778) (not d!1829090) (not d!1829172) (not d!1829014) (not b!5807820) (not b!5807665) (not b!5807701) (not d!1829132) (not b!5807482) (not b!5807832) (not bm!453393) (not d!1829016) (not b!5807489) (not b_lambda!218937) (not d!1829116) (not b!5807619) (not d!1829048) (not b!5807812) (not bm!453374) (not b!5807713) (not bs!1371185) (not b!5807728) (not b!5807681) (not b!5807811) (not bs!1371184) (not d!1829040) (not b!5807829) (not b!5807751) (not bm!453406) (not bm!453380) (not b!5807207) (not b!5807735) (not b!5807487) (not bm!453381) (not b!5807825) (not b!5807752) (not b!5807721) (not b!5807213) (not b_lambda!218939) (not d!1829012) (not b!5807686) (not d!1829120) (not b!5807617) (not b!5807789) (not d!1829052) (not bm!453440) (not d!1829128) tp_is_empty!40895 (not b!5807305) (not d!1829168) (not d!1829170) (not b_lambda!218935) (not b!5807490) (not b!5807313) (not bm!453412) (not b!5807622) (not b!5807682) (not bs!1371186) (not d!1829022) (not bm!453370) (not d!1829010) (not b!5807666) (not bs!1371187) (not bm!453443) (not d!1829124) (not bm!453434) (not bm!453404) (not bm!453444) (not b!5807661) (not b!5807750) (not b!5807730) (not b!5807406) (not bm!453438) (not b!5807827) (not b!5807692) (not b!5807206) (not b!5807716) (not b!5807834) (not bm!453441) (not b!5807711) (not b!5807209) (not d!1829144) (not d!1829074) (not b!5807824) (not b!5807817) (not d!1829130) (not b!5807486) (not b!5807612) (not b!5807727) (not d!1829070) (not b!5807823))
(check-sat)
