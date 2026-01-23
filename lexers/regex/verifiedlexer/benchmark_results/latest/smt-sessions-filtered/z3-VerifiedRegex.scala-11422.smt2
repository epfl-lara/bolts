; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!614042 () Bool)

(assert start!614042)

(declare-fun b!6147159 () Bool)

(assert (=> b!6147159 true))

(assert (=> b!6147159 true))

(declare-fun lambda!335176 () Int)

(declare-fun lambda!335175 () Int)

(assert (=> b!6147159 (not (= lambda!335176 lambda!335175))))

(assert (=> b!6147159 true))

(assert (=> b!6147159 true))

(declare-fun b!6147154 () Bool)

(assert (=> b!6147154 true))

(declare-fun e!3745905 () Bool)

(declare-fun tp!1717237 () Bool)

(declare-fun setNonEmpty!41606 () Bool)

(declare-datatypes ((C!32452 0))(
  ( (C!32453 (val!25928 Int)) )
))
(declare-datatypes ((Regex!16091 0))(
  ( (ElementMatch!16091 (c!1106101 C!32452)) (Concat!24936 (regOne!32694 Regex!16091) (regTwo!32694 Regex!16091)) (EmptyExpr!16091) (Star!16091 (reg!16420 Regex!16091)) (EmptyLang!16091) (Union!16091 (regOne!32695 Regex!16091) (regTwo!32695 Regex!16091)) )
))
(declare-datatypes ((List!64572 0))(
  ( (Nil!64448) (Cons!64448 (h!70896 Regex!16091) (t!378057 List!64572)) )
))
(declare-datatypes ((Context!10950 0))(
  ( (Context!10951 (exprs!5975 List!64572)) )
))
(declare-fun setElem!41606 () Context!10950)

(declare-fun setRes!41606 () Bool)

(declare-fun inv!83474 (Context!10950) Bool)

(assert (=> setNonEmpty!41606 (= setRes!41606 (and tp!1717237 (inv!83474 setElem!41606) e!3745905))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10950))

(declare-fun setRest!41606 () (InoxSet Context!10950))

(assert (=> setNonEmpty!41606 (= z!1189 ((_ map or) (store ((as const (Array Context!10950 Bool)) false) setElem!41606 true) setRest!41606))))

(declare-fun b!6147146 () Bool)

(declare-fun e!3745918 () Bool)

(declare-fun lt!2333943 () (InoxSet Context!10950))

(declare-datatypes ((List!64573 0))(
  ( (Nil!64449) (Cons!64449 (h!70897 C!32452) (t!378058 List!64573)) )
))
(declare-fun s!2326 () List!64573)

(declare-fun matchZipper!2103 ((InoxSet Context!10950) List!64573) Bool)

(assert (=> b!6147146 (= e!3745918 (matchZipper!2103 lt!2333943 (t!378058 s!2326)))))

(declare-fun b!6147147 () Bool)

(declare-fun e!3745917 () Bool)

(declare-fun e!3745903 () Bool)

(assert (=> b!6147147 (= e!3745917 e!3745903)))

(declare-fun res!2546572 () Bool)

(assert (=> b!6147147 (=> res!2546572 e!3745903)))

(declare-fun e!3745915 () Bool)

(assert (=> b!6147147 (= res!2546572 e!3745915)))

(declare-fun res!2546584 () Bool)

(assert (=> b!6147147 (=> (not res!2546584) (not e!3745915))))

(declare-fun lt!2333935 () Bool)

(declare-fun lt!2333949 () (InoxSet Context!10950))

(assert (=> b!6147147 (= res!2546584 (not (= (matchZipper!2103 lt!2333949 (t!378058 s!2326)) lt!2333935)))))

(declare-fun lt!2333952 () (InoxSet Context!10950))

(assert (=> b!6147147 (= (matchZipper!2103 lt!2333952 (t!378058 s!2326)) e!3745918)))

(declare-fun res!2546580 () Bool)

(assert (=> b!6147147 (=> res!2546580 e!3745918)))

(assert (=> b!6147147 (= res!2546580 lt!2333935)))

(declare-fun lt!2333954 () (InoxSet Context!10950))

(assert (=> b!6147147 (= lt!2333935 (matchZipper!2103 lt!2333954 (t!378058 s!2326)))))

(declare-datatypes ((Unit!157525 0))(
  ( (Unit!157526) )
))
(declare-fun lt!2333950 () Unit!157525)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!922 ((InoxSet Context!10950) (InoxSet Context!10950) List!64573) Unit!157525)

(assert (=> b!6147147 (= lt!2333950 (lemmaZipperConcatMatchesSameAsBothZippers!922 lt!2333954 lt!2333943 (t!378058 s!2326)))))

(declare-fun setIsEmpty!41606 () Bool)

(assert (=> setIsEmpty!41606 setRes!41606))

(declare-fun b!6147148 () Bool)

(declare-fun e!3745907 () Unit!157525)

(declare-fun Unit!157527 () Unit!157525)

(assert (=> b!6147148 (= e!3745907 Unit!157527)))

(declare-fun b!6147149 () Bool)

(declare-fun res!2546583 () Bool)

(declare-fun e!3745909 () Bool)

(assert (=> b!6147149 (=> res!2546583 e!3745909)))

(declare-fun r!7292 () Regex!16091)

(get-info :version)

(assert (=> b!6147149 (= res!2546583 (or ((_ is EmptyExpr!16091) r!7292) ((_ is EmptyLang!16091) r!7292) ((_ is ElementMatch!16091) r!7292) ((_ is Union!16091) r!7292) (not ((_ is Concat!24936) r!7292))))))

(declare-fun b!6147150 () Bool)

(declare-fun res!2546578 () Bool)

(declare-fun e!3745910 () Bool)

(assert (=> b!6147150 (=> (not res!2546578) (not e!3745910))))

(declare-datatypes ((List!64574 0))(
  ( (Nil!64450) (Cons!64450 (h!70898 Context!10950) (t!378059 List!64574)) )
))
(declare-fun zl!343 () List!64574)

(declare-fun toList!9875 ((InoxSet Context!10950)) List!64574)

(assert (=> b!6147150 (= res!2546578 (= (toList!9875 z!1189) zl!343))))

(declare-fun b!6147151 () Bool)

(declare-fun res!2546574 () Bool)

(assert (=> b!6147151 (=> res!2546574 e!3745909)))

(assert (=> b!6147151 (= res!2546574 (not ((_ is Cons!64448) (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6147152 () Bool)

(declare-fun res!2546575 () Bool)

(assert (=> b!6147152 (=> (not res!2546575) (not e!3745910))))

(declare-fun unfocusZipper!1833 (List!64574) Regex!16091)

(assert (=> b!6147152 (= res!2546575 (= r!7292 (unfocusZipper!1833 zl!343)))))

(declare-fun b!6147153 () Bool)

(declare-fun e!3745908 () Bool)

(declare-fun lt!2333942 () (InoxSet Context!10950))

(assert (=> b!6147153 (= e!3745908 (matchZipper!2103 lt!2333942 (t!378058 s!2326)))))

(declare-fun e!3745912 () Bool)

(declare-fun e!3745913 () Bool)

(assert (=> b!6147154 (= e!3745912 e!3745913)))

(declare-fun res!2546586 () Bool)

(assert (=> b!6147154 (=> res!2546586 e!3745913)))

(assert (=> b!6147154 (= res!2546586 (or (and ((_ is ElementMatch!16091) (regOne!32694 r!7292)) (= (c!1106101 (regOne!32694 r!7292)) (h!70897 s!2326))) (not ((_ is Union!16091) (regOne!32694 r!7292)))))))

(declare-fun lt!2333956 () Unit!157525)

(declare-fun e!3745914 () Unit!157525)

(assert (=> b!6147154 (= lt!2333956 e!3745914)))

(declare-fun c!1106099 () Bool)

(declare-fun nullable!6084 (Regex!16091) Bool)

(assert (=> b!6147154 (= c!1106099 (nullable!6084 (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun lambda!335177 () Int)

(declare-fun flatMap!1596 ((InoxSet Context!10950) Int) (InoxSet Context!10950))

(declare-fun derivationStepZipperUp!1265 (Context!10950 C!32452) (InoxSet Context!10950))

(assert (=> b!6147154 (= (flatMap!1596 z!1189 lambda!335177) (derivationStepZipperUp!1265 (h!70898 zl!343) (h!70897 s!2326)))))

(declare-fun lt!2333940 () Unit!157525)

(declare-fun lemmaFlatMapOnSingletonSet!1122 ((InoxSet Context!10950) Context!10950 Int) Unit!157525)

(assert (=> b!6147154 (= lt!2333940 (lemmaFlatMapOnSingletonSet!1122 z!1189 (h!70898 zl!343) lambda!335177))))

(declare-fun lt!2333933 () Context!10950)

(assert (=> b!6147154 (= lt!2333942 (derivationStepZipperUp!1265 lt!2333933 (h!70897 s!2326)))))

(declare-fun derivationStepZipperDown!1339 (Regex!16091 Context!10950 C!32452) (InoxSet Context!10950))

(assert (=> b!6147154 (= lt!2333949 (derivationStepZipperDown!1339 (h!70896 (exprs!5975 (h!70898 zl!343))) lt!2333933 (h!70897 s!2326)))))

(assert (=> b!6147154 (= lt!2333933 (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun lt!2333951 () (InoxSet Context!10950))

(assert (=> b!6147154 (= lt!2333951 (derivationStepZipperUp!1265 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))) (h!70897 s!2326)))))

(declare-fun b!6147155 () Bool)

(declare-fun e!3745911 () Bool)

(declare-fun tp_is_empty!41435 () Bool)

(assert (=> b!6147155 (= e!3745911 tp_is_empty!41435)))

(declare-fun b!6147156 () Bool)

(declare-fun res!2546587 () Bool)

(assert (=> b!6147156 (=> res!2546587 e!3745909)))

(declare-fun generalisedUnion!1935 (List!64572) Regex!16091)

(declare-fun unfocusZipperList!1512 (List!64574) List!64572)

(assert (=> b!6147156 (= res!2546587 (not (= r!7292 (generalisedUnion!1935 (unfocusZipperList!1512 zl!343)))))))

(declare-fun b!6147157 () Bool)

(declare-fun Unit!157528 () Unit!157525)

(assert (=> b!6147157 (= e!3745907 Unit!157528)))

(declare-fun lt!2333936 () Unit!157525)

(assert (=> b!6147157 (= lt!2333936 (lemmaZipperConcatMatchesSameAsBothZippers!922 lt!2333954 lt!2333942 (t!378058 s!2326)))))

(declare-fun res!2546585 () Bool)

(assert (=> b!6147157 (= res!2546585 lt!2333935)))

(declare-fun e!3745916 () Bool)

(assert (=> b!6147157 (=> res!2546585 e!3745916)))

(assert (=> b!6147157 (= (matchZipper!2103 ((_ map or) lt!2333954 lt!2333942) (t!378058 s!2326)) e!3745916)))

(declare-fun b!6147158 () Bool)

(assert (=> b!6147158 (= e!3745916 (matchZipper!2103 lt!2333942 (t!378058 s!2326)))))

(assert (=> b!6147159 (= e!3745909 e!3745912)))

(declare-fun res!2546582 () Bool)

(assert (=> b!6147159 (=> res!2546582 e!3745912)))

(declare-fun lt!2333953 () Bool)

(declare-fun lt!2333941 () Bool)

(assert (=> b!6147159 (= res!2546582 (or (not (= lt!2333941 lt!2333953)) ((_ is Nil!64449) s!2326)))))

(declare-fun Exists!3161 (Int) Bool)

(assert (=> b!6147159 (= (Exists!3161 lambda!335175) (Exists!3161 lambda!335176))))

(declare-fun lt!2333947 () Unit!157525)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1698 (Regex!16091 Regex!16091 List!64573) Unit!157525)

(assert (=> b!6147159 (= lt!2333947 (lemmaExistCutMatchRandMatchRSpecEquivalent!1698 (regOne!32694 r!7292) (regTwo!32694 r!7292) s!2326))))

(assert (=> b!6147159 (= lt!2333953 (Exists!3161 lambda!335175))))

(declare-datatypes ((tuple2!66140 0))(
  ( (tuple2!66141 (_1!36373 List!64573) (_2!36373 List!64573)) )
))
(declare-datatypes ((Option!15982 0))(
  ( (None!15981) (Some!15981 (v!52120 tuple2!66140)) )
))
(declare-fun isDefined!12685 (Option!15982) Bool)

(declare-fun findConcatSeparation!2396 (Regex!16091 Regex!16091 List!64573 List!64573 List!64573) Option!15982)

(assert (=> b!6147159 (= lt!2333953 (isDefined!12685 (findConcatSeparation!2396 (regOne!32694 r!7292) (regTwo!32694 r!7292) Nil!64449 s!2326 s!2326)))))

(declare-fun lt!2333938 () Unit!157525)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2160 (Regex!16091 Regex!16091 List!64573) Unit!157525)

(assert (=> b!6147159 (= lt!2333938 (lemmaFindConcatSeparationEquivalentToExists!2160 (regOne!32694 r!7292) (regTwo!32694 r!7292) s!2326))))

(declare-fun b!6147160 () Bool)

(declare-fun e!3745919 () Bool)

(declare-fun tp!1717234 () Bool)

(assert (=> b!6147160 (= e!3745919 (and tp_is_empty!41435 tp!1717234))))

(declare-fun b!6147161 () Bool)

(declare-fun Unit!157529 () Unit!157525)

(assert (=> b!6147161 (= e!3745914 Unit!157529)))

(declare-fun lt!2333932 () Unit!157525)

(assert (=> b!6147161 (= lt!2333932 (lemmaZipperConcatMatchesSameAsBothZippers!922 lt!2333949 lt!2333942 (t!378058 s!2326)))))

(declare-fun res!2546589 () Bool)

(assert (=> b!6147161 (= res!2546589 (matchZipper!2103 lt!2333949 (t!378058 s!2326)))))

(assert (=> b!6147161 (=> res!2546589 e!3745908)))

(assert (=> b!6147161 (= (matchZipper!2103 ((_ map or) lt!2333949 lt!2333942) (t!378058 s!2326)) e!3745908)))

(declare-fun b!6147162 () Bool)

(assert (=> b!6147162 (= e!3745910 (not e!3745909))))

(declare-fun res!2546581 () Bool)

(assert (=> b!6147162 (=> res!2546581 e!3745909)))

(assert (=> b!6147162 (= res!2546581 (not ((_ is Cons!64450) zl!343)))))

(declare-fun matchRSpec!3192 (Regex!16091 List!64573) Bool)

(assert (=> b!6147162 (= lt!2333941 (matchRSpec!3192 r!7292 s!2326))))

(declare-fun matchR!8274 (Regex!16091 List!64573) Bool)

(assert (=> b!6147162 (= lt!2333941 (matchR!8274 r!7292 s!2326))))

(declare-fun lt!2333934 () Unit!157525)

(declare-fun mainMatchTheorem!3192 (Regex!16091 List!64573) Unit!157525)

(assert (=> b!6147162 (= lt!2333934 (mainMatchTheorem!3192 r!7292 s!2326))))

(declare-fun tp!1717233 () Bool)

(declare-fun e!3745906 () Bool)

(declare-fun e!3745904 () Bool)

(declare-fun b!6147163 () Bool)

(assert (=> b!6147163 (= e!3745904 (and (inv!83474 (h!70898 zl!343)) e!3745906 tp!1717233))))

(declare-fun b!6147164 () Bool)

(declare-fun tp!1717235 () Bool)

(declare-fun tp!1717236 () Bool)

(assert (=> b!6147164 (= e!3745911 (and tp!1717235 tp!1717236))))

(declare-fun b!6147165 () Bool)

(declare-fun tp!1717230 () Bool)

(declare-fun tp!1717232 () Bool)

(assert (=> b!6147165 (= e!3745911 (and tp!1717230 tp!1717232))))

(declare-fun b!6147166 () Bool)

(declare-fun lt!2333955 () Context!10950)

(assert (=> b!6147166 (= e!3745903 (inv!83474 lt!2333955))))

(declare-fun lt!2333945 () (InoxSet Context!10950))

(assert (=> b!6147166 (= lt!2333945 (derivationStepZipperUp!1265 lt!2333955 (h!70897 s!2326)))))

(declare-fun lt!2333937 () Unit!157525)

(assert (=> b!6147166 (= lt!2333937 e!3745907)))

(declare-fun c!1106100 () Bool)

(assert (=> b!6147166 (= c!1106100 (nullable!6084 (regOne!32695 (regOne!32694 r!7292))))))

(declare-fun lt!2333948 () Context!10950)

(declare-fun lt!2333946 () (InoxSet Context!10950))

(assert (=> b!6147166 (= (flatMap!1596 lt!2333946 lambda!335177) (derivationStepZipperUp!1265 lt!2333948 (h!70897 s!2326)))))

(declare-fun lt!2333939 () Unit!157525)

(assert (=> b!6147166 (= lt!2333939 (lemmaFlatMapOnSingletonSet!1122 lt!2333946 lt!2333948 lambda!335177))))

(declare-fun lt!2333944 () (InoxSet Context!10950))

(assert (=> b!6147166 (= lt!2333944 (derivationStepZipperUp!1265 lt!2333948 (h!70897 s!2326)))))

(assert (=> b!6147166 (= lt!2333955 (Context!10951 (Cons!64448 (regTwo!32695 (regOne!32694 r!7292)) (t!378057 (exprs!5975 (h!70898 zl!343))))))))

(assert (=> b!6147166 (= lt!2333946 (store ((as const (Array Context!10950 Bool)) false) lt!2333948 true))))

(assert (=> b!6147166 (= lt!2333948 (Context!10951 (Cons!64448 (regOne!32695 (regOne!32694 r!7292)) (t!378057 (exprs!5975 (h!70898 zl!343))))))))

(declare-fun b!6147167 () Bool)

(declare-fun res!2546573 () Bool)

(assert (=> b!6147167 (=> res!2546573 e!3745912)))

(declare-fun isEmpty!36404 (List!64572) Bool)

(assert (=> b!6147167 (= res!2546573 (isEmpty!36404 (t!378057 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6147168 () Bool)

(declare-fun Unit!157530 () Unit!157525)

(assert (=> b!6147168 (= e!3745914 Unit!157530)))

(declare-fun b!6147169 () Bool)

(declare-fun res!2546588 () Bool)

(assert (=> b!6147169 (=> res!2546588 e!3745909)))

(declare-fun isEmpty!36405 (List!64574) Bool)

(assert (=> b!6147169 (= res!2546588 (not (isEmpty!36405 (t!378059 zl!343))))))

(declare-fun b!6147170 () Bool)

(declare-fun tp!1717229 () Bool)

(assert (=> b!6147170 (= e!3745906 tp!1717229)))

(declare-fun b!6147171 () Bool)

(assert (=> b!6147171 (= e!3745913 e!3745917)))

(declare-fun res!2546579 () Bool)

(assert (=> b!6147171 (=> res!2546579 e!3745917)))

(assert (=> b!6147171 (= res!2546579 (not (= lt!2333949 lt!2333952)))))

(assert (=> b!6147171 (= lt!2333952 ((_ map or) lt!2333954 lt!2333943))))

(assert (=> b!6147171 (= lt!2333943 (derivationStepZipperDown!1339 (regTwo!32695 (regOne!32694 r!7292)) lt!2333933 (h!70897 s!2326)))))

(assert (=> b!6147171 (= lt!2333954 (derivationStepZipperDown!1339 (regOne!32695 (regOne!32694 r!7292)) lt!2333933 (h!70897 s!2326)))))

(declare-fun b!6147172 () Bool)

(assert (=> b!6147172 (= e!3745915 (not (matchZipper!2103 lt!2333943 (t!378058 s!2326))))))

(declare-fun b!6147173 () Bool)

(declare-fun res!2546577 () Bool)

(assert (=> b!6147173 (=> res!2546577 e!3745909)))

(declare-fun generalisedConcat!1688 (List!64572) Regex!16091)

(assert (=> b!6147173 (= res!2546577 (not (= r!7292 (generalisedConcat!1688 (exprs!5975 (h!70898 zl!343))))))))

(declare-fun res!2546576 () Bool)

(assert (=> start!614042 (=> (not res!2546576) (not e!3745910))))

(declare-fun validRegex!7827 (Regex!16091) Bool)

(assert (=> start!614042 (= res!2546576 (validRegex!7827 r!7292))))

(assert (=> start!614042 e!3745910))

(assert (=> start!614042 e!3745911))

(declare-fun condSetEmpty!41606 () Bool)

(assert (=> start!614042 (= condSetEmpty!41606 (= z!1189 ((as const (Array Context!10950 Bool)) false)))))

(assert (=> start!614042 setRes!41606))

(assert (=> start!614042 e!3745904))

(assert (=> start!614042 e!3745919))

(declare-fun b!6147174 () Bool)

(declare-fun tp!1717231 () Bool)

(assert (=> b!6147174 (= e!3745911 tp!1717231)))

(declare-fun b!6147175 () Bool)

(declare-fun tp!1717238 () Bool)

(assert (=> b!6147175 (= e!3745905 tp!1717238)))

(assert (= (and start!614042 res!2546576) b!6147150))

(assert (= (and b!6147150 res!2546578) b!6147152))

(assert (= (and b!6147152 res!2546575) b!6147162))

(assert (= (and b!6147162 (not res!2546581)) b!6147169))

(assert (= (and b!6147169 (not res!2546588)) b!6147173))

(assert (= (and b!6147173 (not res!2546577)) b!6147151))

(assert (= (and b!6147151 (not res!2546574)) b!6147156))

(assert (= (and b!6147156 (not res!2546587)) b!6147149))

(assert (= (and b!6147149 (not res!2546583)) b!6147159))

(assert (= (and b!6147159 (not res!2546582)) b!6147167))

(assert (= (and b!6147167 (not res!2546573)) b!6147154))

(assert (= (and b!6147154 c!1106099) b!6147161))

(assert (= (and b!6147154 (not c!1106099)) b!6147168))

(assert (= (and b!6147161 (not res!2546589)) b!6147153))

(assert (= (and b!6147154 (not res!2546586)) b!6147171))

(assert (= (and b!6147171 (not res!2546579)) b!6147147))

(assert (= (and b!6147147 (not res!2546580)) b!6147146))

(assert (= (and b!6147147 res!2546584) b!6147172))

(assert (= (and b!6147147 (not res!2546572)) b!6147166))

(assert (= (and b!6147166 c!1106100) b!6147157))

(assert (= (and b!6147166 (not c!1106100)) b!6147148))

(assert (= (and b!6147157 (not res!2546585)) b!6147158))

(assert (= (and start!614042 ((_ is ElementMatch!16091) r!7292)) b!6147155))

(assert (= (and start!614042 ((_ is Concat!24936) r!7292)) b!6147164))

(assert (= (and start!614042 ((_ is Star!16091) r!7292)) b!6147174))

(assert (= (and start!614042 ((_ is Union!16091) r!7292)) b!6147165))

(assert (= (and start!614042 condSetEmpty!41606) setIsEmpty!41606))

(assert (= (and start!614042 (not condSetEmpty!41606)) setNonEmpty!41606))

(assert (= setNonEmpty!41606 b!6147175))

(assert (= b!6147163 b!6147170))

(assert (= (and start!614042 ((_ is Cons!64450) zl!343)) b!6147163))

(assert (= (and start!614042 ((_ is Cons!64449) s!2326)) b!6147160))

(declare-fun m!6987394 () Bool)

(assert (=> b!6147153 m!6987394))

(declare-fun m!6987396 () Bool)

(assert (=> b!6147167 m!6987396))

(declare-fun m!6987398 () Bool)

(assert (=> b!6147162 m!6987398))

(declare-fun m!6987400 () Bool)

(assert (=> b!6147162 m!6987400))

(declare-fun m!6987402 () Bool)

(assert (=> b!6147162 m!6987402))

(declare-fun m!6987404 () Bool)

(assert (=> b!6147163 m!6987404))

(declare-fun m!6987406 () Bool)

(assert (=> start!614042 m!6987406))

(declare-fun m!6987408 () Bool)

(assert (=> b!6147146 m!6987408))

(declare-fun m!6987410 () Bool)

(assert (=> b!6147171 m!6987410))

(declare-fun m!6987412 () Bool)

(assert (=> b!6147171 m!6987412))

(declare-fun m!6987414 () Bool)

(assert (=> b!6147157 m!6987414))

(declare-fun m!6987416 () Bool)

(assert (=> b!6147157 m!6987416))

(assert (=> b!6147172 m!6987408))

(declare-fun m!6987418 () Bool)

(assert (=> b!6147169 m!6987418))

(declare-fun m!6987420 () Bool)

(assert (=> b!6147156 m!6987420))

(assert (=> b!6147156 m!6987420))

(declare-fun m!6987422 () Bool)

(assert (=> b!6147156 m!6987422))

(declare-fun m!6987424 () Bool)

(assert (=> b!6147159 m!6987424))

(declare-fun m!6987426 () Bool)

(assert (=> b!6147159 m!6987426))

(declare-fun m!6987428 () Bool)

(assert (=> b!6147159 m!6987428))

(declare-fun m!6987430 () Bool)

(assert (=> b!6147159 m!6987430))

(declare-fun m!6987432 () Bool)

(assert (=> b!6147159 m!6987432))

(assert (=> b!6147159 m!6987424))

(assert (=> b!6147159 m!6987426))

(declare-fun m!6987434 () Bool)

(assert (=> b!6147159 m!6987434))

(declare-fun m!6987436 () Bool)

(assert (=> b!6147150 m!6987436))

(assert (=> b!6147158 m!6987394))

(declare-fun m!6987438 () Bool)

(assert (=> setNonEmpty!41606 m!6987438))

(declare-fun m!6987440 () Bool)

(assert (=> b!6147161 m!6987440))

(declare-fun m!6987442 () Bool)

(assert (=> b!6147161 m!6987442))

(declare-fun m!6987444 () Bool)

(assert (=> b!6147161 m!6987444))

(declare-fun m!6987446 () Bool)

(assert (=> b!6147152 m!6987446))

(declare-fun m!6987448 () Bool)

(assert (=> b!6147166 m!6987448))

(declare-fun m!6987450 () Bool)

(assert (=> b!6147166 m!6987450))

(declare-fun m!6987452 () Bool)

(assert (=> b!6147166 m!6987452))

(declare-fun m!6987454 () Bool)

(assert (=> b!6147166 m!6987454))

(declare-fun m!6987456 () Bool)

(assert (=> b!6147166 m!6987456))

(declare-fun m!6987458 () Bool)

(assert (=> b!6147166 m!6987458))

(declare-fun m!6987460 () Bool)

(assert (=> b!6147166 m!6987460))

(assert (=> b!6147147 m!6987442))

(declare-fun m!6987462 () Bool)

(assert (=> b!6147147 m!6987462))

(declare-fun m!6987464 () Bool)

(assert (=> b!6147147 m!6987464))

(declare-fun m!6987466 () Bool)

(assert (=> b!6147147 m!6987466))

(declare-fun m!6987468 () Bool)

(assert (=> b!6147173 m!6987468))

(declare-fun m!6987470 () Bool)

(assert (=> b!6147154 m!6987470))

(declare-fun m!6987472 () Bool)

(assert (=> b!6147154 m!6987472))

(declare-fun m!6987474 () Bool)

(assert (=> b!6147154 m!6987474))

(declare-fun m!6987476 () Bool)

(assert (=> b!6147154 m!6987476))

(declare-fun m!6987478 () Bool)

(assert (=> b!6147154 m!6987478))

(declare-fun m!6987480 () Bool)

(assert (=> b!6147154 m!6987480))

(declare-fun m!6987482 () Bool)

(assert (=> b!6147154 m!6987482))

(check-sat (not b!6147156) (not b!6147162) (not b!6147170) (not b!6147167) (not b!6147152) (not b!6147150) (not b!6147174) (not b!6147158) (not b!6147172) (not b!6147159) (not b!6147169) (not b!6147165) (not b!6147164) (not b!6147173) (not b!6147166) (not b!6147147) (not b!6147154) (not b!6147153) (not setNonEmpty!41606) (not b!6147171) tp_is_empty!41435 (not b!6147161) (not b!6147157) (not b!6147175) (not b!6147146) (not b!6147160) (not start!614042) (not b!6147163))
(check-sat)
(get-model)

(declare-fun b!6147380 () Bool)

(declare-fun e!3746034 () Bool)

(declare-fun lt!2333997 () Option!15982)

(assert (=> b!6147380 (= e!3746034 (not (isDefined!12685 lt!2333997)))))

(declare-fun b!6147381 () Bool)

(declare-fun e!3746038 () Bool)

(assert (=> b!6147381 (= e!3746038 (matchR!8274 (regTwo!32694 r!7292) s!2326))))

(declare-fun b!6147383 () Bool)

(declare-fun e!3746036 () Option!15982)

(declare-fun e!3746037 () Option!15982)

(assert (=> b!6147383 (= e!3746036 e!3746037)))

(declare-fun c!1106170 () Bool)

(assert (=> b!6147383 (= c!1106170 ((_ is Nil!64449) s!2326))))

(declare-fun b!6147384 () Bool)

(declare-fun e!3746035 () Bool)

(declare-fun ++!14176 (List!64573 List!64573) List!64573)

(declare-fun get!22237 (Option!15982) tuple2!66140)

(assert (=> b!6147384 (= e!3746035 (= (++!14176 (_1!36373 (get!22237 lt!2333997)) (_2!36373 (get!22237 lt!2333997))) s!2326))))

(declare-fun b!6147385 () Bool)

(declare-fun lt!2333996 () Unit!157525)

(declare-fun lt!2333995 () Unit!157525)

(assert (=> b!6147385 (= lt!2333996 lt!2333995)))

(assert (=> b!6147385 (= (++!14176 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449)) (t!378058 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2271 (List!64573 C!32452 List!64573 List!64573) Unit!157525)

(assert (=> b!6147385 (= lt!2333995 (lemmaMoveElementToOtherListKeepsConcatEq!2271 Nil!64449 (h!70897 s!2326) (t!378058 s!2326) s!2326))))

(assert (=> b!6147385 (= e!3746037 (findConcatSeparation!2396 (regOne!32694 r!7292) (regTwo!32694 r!7292) (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449)) (t!378058 s!2326) s!2326))))

(declare-fun b!6147386 () Bool)

(declare-fun res!2546653 () Bool)

(assert (=> b!6147386 (=> (not res!2546653) (not e!3746035))))

(assert (=> b!6147386 (= res!2546653 (matchR!8274 (regOne!32694 r!7292) (_1!36373 (get!22237 lt!2333997))))))

(declare-fun b!6147387 () Bool)

(assert (=> b!6147387 (= e!3746037 None!15981)))

(declare-fun b!6147388 () Bool)

(declare-fun res!2546656 () Bool)

(assert (=> b!6147388 (=> (not res!2546656) (not e!3746035))))

(assert (=> b!6147388 (= res!2546656 (matchR!8274 (regTwo!32694 r!7292) (_2!36373 (get!22237 lt!2333997))))))

(declare-fun d!1926045 () Bool)

(assert (=> d!1926045 e!3746034))

(declare-fun res!2546654 () Bool)

(assert (=> d!1926045 (=> res!2546654 e!3746034)))

(assert (=> d!1926045 (= res!2546654 e!3746035)))

(declare-fun res!2546655 () Bool)

(assert (=> d!1926045 (=> (not res!2546655) (not e!3746035))))

(assert (=> d!1926045 (= res!2546655 (isDefined!12685 lt!2333997))))

(assert (=> d!1926045 (= lt!2333997 e!3746036)))

(declare-fun c!1106171 () Bool)

(assert (=> d!1926045 (= c!1106171 e!3746038)))

(declare-fun res!2546652 () Bool)

(assert (=> d!1926045 (=> (not res!2546652) (not e!3746038))))

(assert (=> d!1926045 (= res!2546652 (matchR!8274 (regOne!32694 r!7292) Nil!64449))))

(assert (=> d!1926045 (validRegex!7827 (regOne!32694 r!7292))))

(assert (=> d!1926045 (= (findConcatSeparation!2396 (regOne!32694 r!7292) (regTwo!32694 r!7292) Nil!64449 s!2326 s!2326) lt!2333997)))

(declare-fun b!6147382 () Bool)

(assert (=> b!6147382 (= e!3746036 (Some!15981 (tuple2!66141 Nil!64449 s!2326)))))

(assert (= (and d!1926045 res!2546652) b!6147381))

(assert (= (and d!1926045 c!1106171) b!6147382))

(assert (= (and d!1926045 (not c!1106171)) b!6147383))

(assert (= (and b!6147383 c!1106170) b!6147387))

(assert (= (and b!6147383 (not c!1106170)) b!6147385))

(assert (= (and d!1926045 res!2546655) b!6147386))

(assert (= (and b!6147386 res!2546653) b!6147388))

(assert (= (and b!6147388 res!2546656) b!6147384))

(assert (= (and d!1926045 (not res!2546654)) b!6147380))

(declare-fun m!6987670 () Bool)

(assert (=> b!6147381 m!6987670))

(declare-fun m!6987672 () Bool)

(assert (=> b!6147384 m!6987672))

(declare-fun m!6987674 () Bool)

(assert (=> b!6147384 m!6987674))

(declare-fun m!6987676 () Bool)

(assert (=> d!1926045 m!6987676))

(declare-fun m!6987678 () Bool)

(assert (=> d!1926045 m!6987678))

(declare-fun m!6987680 () Bool)

(assert (=> d!1926045 m!6987680))

(declare-fun m!6987682 () Bool)

(assert (=> b!6147385 m!6987682))

(assert (=> b!6147385 m!6987682))

(declare-fun m!6987684 () Bool)

(assert (=> b!6147385 m!6987684))

(declare-fun m!6987686 () Bool)

(assert (=> b!6147385 m!6987686))

(assert (=> b!6147385 m!6987682))

(declare-fun m!6987688 () Bool)

(assert (=> b!6147385 m!6987688))

(assert (=> b!6147380 m!6987676))

(assert (=> b!6147388 m!6987672))

(declare-fun m!6987690 () Bool)

(assert (=> b!6147388 m!6987690))

(assert (=> b!6147386 m!6987672))

(declare-fun m!6987692 () Bool)

(assert (=> b!6147386 m!6987692))

(assert (=> b!6147159 d!1926045))

(declare-fun d!1926063 () Bool)

(declare-fun choose!45690 (Int) Bool)

(assert (=> d!1926063 (= (Exists!3161 lambda!335175) (choose!45690 lambda!335175))))

(declare-fun bs!1524069 () Bool)

(assert (= bs!1524069 d!1926063))

(declare-fun m!6987698 () Bool)

(assert (=> bs!1524069 m!6987698))

(assert (=> b!6147159 d!1926063))

(declare-fun d!1926067 () Bool)

(assert (=> d!1926067 (= (Exists!3161 lambda!335176) (choose!45690 lambda!335176))))

(declare-fun bs!1524070 () Bool)

(assert (= bs!1524070 d!1926067))

(declare-fun m!6987700 () Bool)

(assert (=> bs!1524070 m!6987700))

(assert (=> b!6147159 d!1926067))

(declare-fun bs!1524075 () Bool)

(declare-fun d!1926069 () Bool)

(assert (= bs!1524075 (and d!1926069 b!6147159)))

(declare-fun lambda!335205 () Int)

(assert (=> bs!1524075 (= lambda!335205 lambda!335175)))

(assert (=> bs!1524075 (not (= lambda!335205 lambda!335176))))

(assert (=> d!1926069 true))

(assert (=> d!1926069 true))

(assert (=> d!1926069 true))

(assert (=> d!1926069 (= (isDefined!12685 (findConcatSeparation!2396 (regOne!32694 r!7292) (regTwo!32694 r!7292) Nil!64449 s!2326 s!2326)) (Exists!3161 lambda!335205))))

(declare-fun lt!2334003 () Unit!157525)

(declare-fun choose!45691 (Regex!16091 Regex!16091 List!64573) Unit!157525)

(assert (=> d!1926069 (= lt!2334003 (choose!45691 (regOne!32694 r!7292) (regTwo!32694 r!7292) s!2326))))

(assert (=> d!1926069 (validRegex!7827 (regOne!32694 r!7292))))

(assert (=> d!1926069 (= (lemmaFindConcatSeparationEquivalentToExists!2160 (regOne!32694 r!7292) (regTwo!32694 r!7292) s!2326) lt!2334003)))

(declare-fun bs!1524079 () Bool)

(assert (= bs!1524079 d!1926069))

(declare-fun m!6987702 () Bool)

(assert (=> bs!1524079 m!6987702))

(assert (=> bs!1524079 m!6987426))

(assert (=> bs!1524079 m!6987426))

(assert (=> bs!1524079 m!6987428))

(assert (=> bs!1524079 m!6987680))

(declare-fun m!6987712 () Bool)

(assert (=> bs!1524079 m!6987712))

(assert (=> b!6147159 d!1926069))

(declare-fun bs!1524081 () Bool)

(declare-fun d!1926073 () Bool)

(assert (= bs!1524081 (and d!1926073 b!6147159)))

(declare-fun lambda!335211 () Int)

(assert (=> bs!1524081 (= lambda!335211 lambda!335175)))

(assert (=> bs!1524081 (not (= lambda!335211 lambda!335176))))

(declare-fun bs!1524082 () Bool)

(assert (= bs!1524082 (and d!1926073 d!1926069)))

(assert (=> bs!1524082 (= lambda!335211 lambda!335205)))

(assert (=> d!1926073 true))

(assert (=> d!1926073 true))

(assert (=> d!1926073 true))

(declare-fun lambda!335212 () Int)

(assert (=> bs!1524081 (not (= lambda!335212 lambda!335175))))

(assert (=> bs!1524081 (= lambda!335212 lambda!335176)))

(assert (=> bs!1524082 (not (= lambda!335212 lambda!335205))))

(declare-fun bs!1524083 () Bool)

(assert (= bs!1524083 d!1926073))

(assert (=> bs!1524083 (not (= lambda!335212 lambda!335211))))

(assert (=> d!1926073 true))

(assert (=> d!1926073 true))

(assert (=> d!1926073 true))

(assert (=> d!1926073 (= (Exists!3161 lambda!335211) (Exists!3161 lambda!335212))))

(declare-fun lt!2334013 () Unit!157525)

(declare-fun choose!45692 (Regex!16091 Regex!16091 List!64573) Unit!157525)

(assert (=> d!1926073 (= lt!2334013 (choose!45692 (regOne!32694 r!7292) (regTwo!32694 r!7292) s!2326))))

(assert (=> d!1926073 (validRegex!7827 (regOne!32694 r!7292))))

(assert (=> d!1926073 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1698 (regOne!32694 r!7292) (regTwo!32694 r!7292) s!2326) lt!2334013)))

(declare-fun m!6987744 () Bool)

(assert (=> bs!1524083 m!6987744))

(declare-fun m!6987746 () Bool)

(assert (=> bs!1524083 m!6987746))

(declare-fun m!6987748 () Bool)

(assert (=> bs!1524083 m!6987748))

(assert (=> bs!1524083 m!6987680))

(assert (=> b!6147159 d!1926073))

(declare-fun d!1926085 () Bool)

(declare-fun isEmpty!36407 (Option!15982) Bool)

(assert (=> d!1926085 (= (isDefined!12685 (findConcatSeparation!2396 (regOne!32694 r!7292) (regTwo!32694 r!7292) Nil!64449 s!2326 s!2326)) (not (isEmpty!36407 (findConcatSeparation!2396 (regOne!32694 r!7292) (regTwo!32694 r!7292) Nil!64449 s!2326 s!2326))))))

(declare-fun bs!1524084 () Bool)

(assert (= bs!1524084 d!1926085))

(assert (=> bs!1524084 m!6987426))

(declare-fun m!6987750 () Bool)

(assert (=> bs!1524084 m!6987750))

(assert (=> b!6147159 d!1926085))

(declare-fun d!1926087 () Bool)

(declare-fun c!1106216 () Bool)

(declare-fun isEmpty!36408 (List!64573) Bool)

(assert (=> d!1926087 (= c!1106216 (isEmpty!36408 (t!378058 s!2326)))))

(declare-fun e!3746131 () Bool)

(assert (=> d!1926087 (= (matchZipper!2103 lt!2333942 (t!378058 s!2326)) e!3746131)))

(declare-fun b!6147549 () Bool)

(declare-fun nullableZipper!1872 ((InoxSet Context!10950)) Bool)

(assert (=> b!6147549 (= e!3746131 (nullableZipper!1872 lt!2333942))))

(declare-fun b!6147550 () Bool)

(declare-fun derivationStepZipper!2064 ((InoxSet Context!10950) C!32452) (InoxSet Context!10950))

(declare-fun head!12702 (List!64573) C!32452)

(declare-fun tail!11787 (List!64573) List!64573)

(assert (=> b!6147550 (= e!3746131 (matchZipper!2103 (derivationStepZipper!2064 lt!2333942 (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))))))

(assert (= (and d!1926087 c!1106216) b!6147549))

(assert (= (and d!1926087 (not c!1106216)) b!6147550))

(declare-fun m!6987770 () Bool)

(assert (=> d!1926087 m!6987770))

(declare-fun m!6987772 () Bool)

(assert (=> b!6147549 m!6987772))

(declare-fun m!6987774 () Bool)

(assert (=> b!6147550 m!6987774))

(assert (=> b!6147550 m!6987774))

(declare-fun m!6987776 () Bool)

(assert (=> b!6147550 m!6987776))

(declare-fun m!6987778 () Bool)

(assert (=> b!6147550 m!6987778))

(assert (=> b!6147550 m!6987776))

(assert (=> b!6147550 m!6987778))

(declare-fun m!6987780 () Bool)

(assert (=> b!6147550 m!6987780))

(assert (=> b!6147158 d!1926087))

(declare-fun d!1926091 () Bool)

(assert (=> d!1926091 (= (isEmpty!36405 (t!378059 zl!343)) ((_ is Nil!64450) (t!378059 zl!343)))))

(assert (=> b!6147169 d!1926091))

(declare-fun d!1926093 () Bool)

(declare-fun c!1106219 () Bool)

(assert (=> d!1926093 (= c!1106219 (isEmpty!36408 (t!378058 s!2326)))))

(declare-fun e!3746139 () Bool)

(assert (=> d!1926093 (= (matchZipper!2103 lt!2333949 (t!378058 s!2326)) e!3746139)))

(declare-fun b!6147560 () Bool)

(assert (=> b!6147560 (= e!3746139 (nullableZipper!1872 lt!2333949))))

(declare-fun b!6147561 () Bool)

(assert (=> b!6147561 (= e!3746139 (matchZipper!2103 (derivationStepZipper!2064 lt!2333949 (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))))))

(assert (= (and d!1926093 c!1106219) b!6147560))

(assert (= (and d!1926093 (not c!1106219)) b!6147561))

(assert (=> d!1926093 m!6987770))

(declare-fun m!6987786 () Bool)

(assert (=> b!6147560 m!6987786))

(assert (=> b!6147561 m!6987774))

(assert (=> b!6147561 m!6987774))

(declare-fun m!6987790 () Bool)

(assert (=> b!6147561 m!6987790))

(assert (=> b!6147561 m!6987778))

(assert (=> b!6147561 m!6987790))

(assert (=> b!6147561 m!6987778))

(declare-fun m!6987792 () Bool)

(assert (=> b!6147561 m!6987792))

(assert (=> b!6147147 d!1926093))

(declare-fun d!1926095 () Bool)

(declare-fun c!1106220 () Bool)

(assert (=> d!1926095 (= c!1106220 (isEmpty!36408 (t!378058 s!2326)))))

(declare-fun e!3746140 () Bool)

(assert (=> d!1926095 (= (matchZipper!2103 lt!2333952 (t!378058 s!2326)) e!3746140)))

(declare-fun b!6147564 () Bool)

(assert (=> b!6147564 (= e!3746140 (nullableZipper!1872 lt!2333952))))

(declare-fun b!6147565 () Bool)

(assert (=> b!6147565 (= e!3746140 (matchZipper!2103 (derivationStepZipper!2064 lt!2333952 (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))))))

(assert (= (and d!1926095 c!1106220) b!6147564))

(assert (= (and d!1926095 (not c!1106220)) b!6147565))

(assert (=> d!1926095 m!6987770))

(declare-fun m!6987794 () Bool)

(assert (=> b!6147564 m!6987794))

(assert (=> b!6147565 m!6987774))

(assert (=> b!6147565 m!6987774))

(declare-fun m!6987796 () Bool)

(assert (=> b!6147565 m!6987796))

(assert (=> b!6147565 m!6987778))

(assert (=> b!6147565 m!6987796))

(assert (=> b!6147565 m!6987778))

(declare-fun m!6987798 () Bool)

(assert (=> b!6147565 m!6987798))

(assert (=> b!6147147 d!1926095))

(declare-fun d!1926097 () Bool)

(declare-fun c!1106221 () Bool)

(assert (=> d!1926097 (= c!1106221 (isEmpty!36408 (t!378058 s!2326)))))

(declare-fun e!3746143 () Bool)

(assert (=> d!1926097 (= (matchZipper!2103 lt!2333954 (t!378058 s!2326)) e!3746143)))

(declare-fun b!6147568 () Bool)

(assert (=> b!6147568 (= e!3746143 (nullableZipper!1872 lt!2333954))))

(declare-fun b!6147569 () Bool)

(assert (=> b!6147569 (= e!3746143 (matchZipper!2103 (derivationStepZipper!2064 lt!2333954 (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))))))

(assert (= (and d!1926097 c!1106221) b!6147568))

(assert (= (and d!1926097 (not c!1106221)) b!6147569))

(assert (=> d!1926097 m!6987770))

(declare-fun m!6987800 () Bool)

(assert (=> b!6147568 m!6987800))

(assert (=> b!6147569 m!6987774))

(assert (=> b!6147569 m!6987774))

(declare-fun m!6987802 () Bool)

(assert (=> b!6147569 m!6987802))

(assert (=> b!6147569 m!6987778))

(assert (=> b!6147569 m!6987802))

(assert (=> b!6147569 m!6987778))

(declare-fun m!6987804 () Bool)

(assert (=> b!6147569 m!6987804))

(assert (=> b!6147147 d!1926097))

(declare-fun e!3746167 () Bool)

(declare-fun d!1926099 () Bool)

(assert (=> d!1926099 (= (matchZipper!2103 ((_ map or) lt!2333954 lt!2333943) (t!378058 s!2326)) e!3746167)))

(declare-fun res!2546736 () Bool)

(assert (=> d!1926099 (=> res!2546736 e!3746167)))

(assert (=> d!1926099 (= res!2546736 (matchZipper!2103 lt!2333954 (t!378058 s!2326)))))

(declare-fun lt!2334019 () Unit!157525)

(declare-fun choose!45695 ((InoxSet Context!10950) (InoxSet Context!10950) List!64573) Unit!157525)

(assert (=> d!1926099 (= lt!2334019 (choose!45695 lt!2333954 lt!2333943 (t!378058 s!2326)))))

(assert (=> d!1926099 (= (lemmaZipperConcatMatchesSameAsBothZippers!922 lt!2333954 lt!2333943 (t!378058 s!2326)) lt!2334019)))

(declare-fun b!6147622 () Bool)

(assert (=> b!6147622 (= e!3746167 (matchZipper!2103 lt!2333943 (t!378058 s!2326)))))

(assert (= (and d!1926099 (not res!2546736)) b!6147622))

(declare-fun m!6987810 () Bool)

(assert (=> d!1926099 m!6987810))

(assert (=> d!1926099 m!6987464))

(declare-fun m!6987812 () Bool)

(assert (=> d!1926099 m!6987812))

(assert (=> b!6147622 m!6987408))

(assert (=> b!6147147 d!1926099))

(declare-fun e!3746168 () Bool)

(declare-fun d!1926105 () Bool)

(assert (=> d!1926105 (= (matchZipper!2103 ((_ map or) lt!2333954 lt!2333942) (t!378058 s!2326)) e!3746168)))

(declare-fun res!2546737 () Bool)

(assert (=> d!1926105 (=> res!2546737 e!3746168)))

(assert (=> d!1926105 (= res!2546737 (matchZipper!2103 lt!2333954 (t!378058 s!2326)))))

(declare-fun lt!2334020 () Unit!157525)

(assert (=> d!1926105 (= lt!2334020 (choose!45695 lt!2333954 lt!2333942 (t!378058 s!2326)))))

(assert (=> d!1926105 (= (lemmaZipperConcatMatchesSameAsBothZippers!922 lt!2333954 lt!2333942 (t!378058 s!2326)) lt!2334020)))

(declare-fun b!6147623 () Bool)

(assert (=> b!6147623 (= e!3746168 (matchZipper!2103 lt!2333942 (t!378058 s!2326)))))

(assert (= (and d!1926105 (not res!2546737)) b!6147623))

(assert (=> d!1926105 m!6987416))

(assert (=> d!1926105 m!6987464))

(declare-fun m!6987814 () Bool)

(assert (=> d!1926105 m!6987814))

(assert (=> b!6147623 m!6987394))

(assert (=> b!6147157 d!1926105))

(declare-fun d!1926107 () Bool)

(declare-fun c!1106222 () Bool)

(assert (=> d!1926107 (= c!1106222 (isEmpty!36408 (t!378058 s!2326)))))

(declare-fun e!3746169 () Bool)

(assert (=> d!1926107 (= (matchZipper!2103 ((_ map or) lt!2333954 lt!2333942) (t!378058 s!2326)) e!3746169)))

(declare-fun b!6147624 () Bool)

(assert (=> b!6147624 (= e!3746169 (nullableZipper!1872 ((_ map or) lt!2333954 lt!2333942)))))

(declare-fun b!6147625 () Bool)

(assert (=> b!6147625 (= e!3746169 (matchZipper!2103 (derivationStepZipper!2064 ((_ map or) lt!2333954 lt!2333942) (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))))))

(assert (= (and d!1926107 c!1106222) b!6147624))

(assert (= (and d!1926107 (not c!1106222)) b!6147625))

(assert (=> d!1926107 m!6987770))

(declare-fun m!6987816 () Bool)

(assert (=> b!6147624 m!6987816))

(assert (=> b!6147625 m!6987774))

(assert (=> b!6147625 m!6987774))

(declare-fun m!6987818 () Bool)

(assert (=> b!6147625 m!6987818))

(assert (=> b!6147625 m!6987778))

(assert (=> b!6147625 m!6987818))

(assert (=> b!6147625 m!6987778))

(declare-fun m!6987820 () Bool)

(assert (=> b!6147625 m!6987820))

(assert (=> b!6147157 d!1926107))

(declare-fun d!1926109 () Bool)

(declare-fun c!1106223 () Bool)

(assert (=> d!1926109 (= c!1106223 (isEmpty!36408 (t!378058 s!2326)))))

(declare-fun e!3746170 () Bool)

(assert (=> d!1926109 (= (matchZipper!2103 lt!2333943 (t!378058 s!2326)) e!3746170)))

(declare-fun b!6147626 () Bool)

(assert (=> b!6147626 (= e!3746170 (nullableZipper!1872 lt!2333943))))

(declare-fun b!6147627 () Bool)

(assert (=> b!6147627 (= e!3746170 (matchZipper!2103 (derivationStepZipper!2064 lt!2333943 (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))))))

(assert (= (and d!1926109 c!1106223) b!6147626))

(assert (= (and d!1926109 (not c!1106223)) b!6147627))

(assert (=> d!1926109 m!6987770))

(declare-fun m!6987822 () Bool)

(assert (=> b!6147626 m!6987822))

(assert (=> b!6147627 m!6987774))

(assert (=> b!6147627 m!6987774))

(declare-fun m!6987824 () Bool)

(assert (=> b!6147627 m!6987824))

(assert (=> b!6147627 m!6987778))

(assert (=> b!6147627 m!6987824))

(assert (=> b!6147627 m!6987778))

(declare-fun m!6987826 () Bool)

(assert (=> b!6147627 m!6987826))

(assert (=> b!6147172 d!1926109))

(declare-fun d!1926111 () Bool)

(declare-fun e!3746173 () Bool)

(assert (=> d!1926111 e!3746173))

(declare-fun res!2546740 () Bool)

(assert (=> d!1926111 (=> (not res!2546740) (not e!3746173))))

(declare-fun lt!2334023 () List!64574)

(declare-fun noDuplicate!1938 (List!64574) Bool)

(assert (=> d!1926111 (= res!2546740 (noDuplicate!1938 lt!2334023))))

(declare-fun choose!45697 ((InoxSet Context!10950)) List!64574)

(assert (=> d!1926111 (= lt!2334023 (choose!45697 z!1189))))

(assert (=> d!1926111 (= (toList!9875 z!1189) lt!2334023)))

(declare-fun b!6147630 () Bool)

(declare-fun content!12004 (List!64574) (InoxSet Context!10950))

(assert (=> b!6147630 (= e!3746173 (= (content!12004 lt!2334023) z!1189))))

(assert (= (and d!1926111 res!2546740) b!6147630))

(declare-fun m!6987828 () Bool)

(assert (=> d!1926111 m!6987828))

(declare-fun m!6987830 () Bool)

(assert (=> d!1926111 m!6987830))

(declare-fun m!6987832 () Bool)

(assert (=> b!6147630 m!6987832))

(assert (=> b!6147150 d!1926111))

(declare-fun d!1926113 () Bool)

(declare-fun e!3746174 () Bool)

(assert (=> d!1926113 (= (matchZipper!2103 ((_ map or) lt!2333949 lt!2333942) (t!378058 s!2326)) e!3746174)))

(declare-fun res!2546741 () Bool)

(assert (=> d!1926113 (=> res!2546741 e!3746174)))

(assert (=> d!1926113 (= res!2546741 (matchZipper!2103 lt!2333949 (t!378058 s!2326)))))

(declare-fun lt!2334024 () Unit!157525)

(assert (=> d!1926113 (= lt!2334024 (choose!45695 lt!2333949 lt!2333942 (t!378058 s!2326)))))

(assert (=> d!1926113 (= (lemmaZipperConcatMatchesSameAsBothZippers!922 lt!2333949 lt!2333942 (t!378058 s!2326)) lt!2334024)))

(declare-fun b!6147631 () Bool)

(assert (=> b!6147631 (= e!3746174 (matchZipper!2103 lt!2333942 (t!378058 s!2326)))))

(assert (= (and d!1926113 (not res!2546741)) b!6147631))

(assert (=> d!1926113 m!6987444))

(assert (=> d!1926113 m!6987442))

(declare-fun m!6987834 () Bool)

(assert (=> d!1926113 m!6987834))

(assert (=> b!6147631 m!6987394))

(assert (=> b!6147161 d!1926113))

(assert (=> b!6147161 d!1926093))

(declare-fun d!1926115 () Bool)

(declare-fun c!1106224 () Bool)

(assert (=> d!1926115 (= c!1106224 (isEmpty!36408 (t!378058 s!2326)))))

(declare-fun e!3746175 () Bool)

(assert (=> d!1926115 (= (matchZipper!2103 ((_ map or) lt!2333949 lt!2333942) (t!378058 s!2326)) e!3746175)))

(declare-fun b!6147632 () Bool)

(assert (=> b!6147632 (= e!3746175 (nullableZipper!1872 ((_ map or) lt!2333949 lt!2333942)))))

(declare-fun b!6147633 () Bool)

(assert (=> b!6147633 (= e!3746175 (matchZipper!2103 (derivationStepZipper!2064 ((_ map or) lt!2333949 lt!2333942) (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))))))

(assert (= (and d!1926115 c!1106224) b!6147632))

(assert (= (and d!1926115 (not c!1106224)) b!6147633))

(assert (=> d!1926115 m!6987770))

(declare-fun m!6987836 () Bool)

(assert (=> b!6147632 m!6987836))

(assert (=> b!6147633 m!6987774))

(assert (=> b!6147633 m!6987774))

(declare-fun m!6987838 () Bool)

(assert (=> b!6147633 m!6987838))

(assert (=> b!6147633 m!6987778))

(assert (=> b!6147633 m!6987838))

(assert (=> b!6147633 m!6987778))

(declare-fun m!6987840 () Bool)

(assert (=> b!6147633 m!6987840))

(assert (=> b!6147161 d!1926115))

(declare-fun bm!511015 () Bool)

(declare-fun call!511021 () (InoxSet Context!10950))

(declare-fun call!511025 () (InoxSet Context!10950))

(assert (=> bm!511015 (= call!511021 call!511025)))

(declare-fun b!6147656 () Bool)

(declare-fun e!3746193 () (InoxSet Context!10950))

(declare-fun e!3746188 () (InoxSet Context!10950))

(assert (=> b!6147656 (= e!3746193 e!3746188)))

(declare-fun c!1106239 () Bool)

(assert (=> b!6147656 (= c!1106239 ((_ is Union!16091) (regTwo!32695 (regOne!32694 r!7292))))))

(declare-fun bm!511016 () Bool)

(declare-fun call!511020 () (InoxSet Context!10950))

(assert (=> bm!511016 (= call!511025 call!511020)))

(declare-fun bm!511017 () Bool)

(declare-fun call!511024 () List!64572)

(declare-fun call!511023 () List!64572)

(assert (=> bm!511017 (= call!511024 call!511023)))

(declare-fun b!6147657 () Bool)

(declare-fun e!3746189 () (InoxSet Context!10950))

(declare-fun e!3746191 () (InoxSet Context!10950))

(assert (=> b!6147657 (= e!3746189 e!3746191)))

(declare-fun c!1106235 () Bool)

(assert (=> b!6147657 (= c!1106235 ((_ is Concat!24936) (regTwo!32695 (regOne!32694 r!7292))))))

(declare-fun b!6147658 () Bool)

(assert (=> b!6147658 (= e!3746193 (store ((as const (Array Context!10950 Bool)) false) lt!2333933 true))))

(declare-fun call!511022 () (InoxSet Context!10950))

(declare-fun bm!511018 () Bool)

(assert (=> bm!511018 (= call!511022 (derivationStepZipperDown!1339 (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292)))) (ite c!1106239 lt!2333933 (Context!10951 call!511023)) (h!70897 s!2326)))))

(declare-fun b!6147660 () Bool)

(declare-fun e!3746192 () (InoxSet Context!10950))

(assert (=> b!6147660 (= e!3746192 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6147661 () Bool)

(assert (=> b!6147661 (= e!3746189 ((_ map or) call!511022 call!511025))))

(declare-fun b!6147662 () Bool)

(assert (=> b!6147662 (= e!3746188 ((_ map or) call!511022 call!511020))))

(declare-fun bm!511019 () Bool)

(declare-fun c!1106238 () Bool)

(declare-fun $colon$colon!1968 (List!64572 Regex!16091) List!64572)

(assert (=> bm!511019 (= call!511023 ($colon$colon!1968 (exprs!5975 lt!2333933) (ite (or c!1106238 c!1106235) (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (regTwo!32695 (regOne!32694 r!7292)))))))

(declare-fun b!6147663 () Bool)

(assert (=> b!6147663 (= e!3746191 call!511021)))

(declare-fun d!1926117 () Bool)

(declare-fun c!1106237 () Bool)

(assert (=> d!1926117 (= c!1106237 (and ((_ is ElementMatch!16091) (regTwo!32695 (regOne!32694 r!7292))) (= (c!1106101 (regTwo!32695 (regOne!32694 r!7292))) (h!70897 s!2326))))))

(assert (=> d!1926117 (= (derivationStepZipperDown!1339 (regTwo!32695 (regOne!32694 r!7292)) lt!2333933 (h!70897 s!2326)) e!3746193)))

(declare-fun b!6147659 () Bool)

(declare-fun c!1106236 () Bool)

(assert (=> b!6147659 (= c!1106236 ((_ is Star!16091) (regTwo!32695 (regOne!32694 r!7292))))))

(assert (=> b!6147659 (= e!3746191 e!3746192)))

(declare-fun b!6147664 () Bool)

(assert (=> b!6147664 (= e!3746192 call!511021)))

(declare-fun b!6147665 () Bool)

(declare-fun e!3746190 () Bool)

(assert (=> b!6147665 (= c!1106238 e!3746190)))

(declare-fun res!2546744 () Bool)

(assert (=> b!6147665 (=> (not res!2546744) (not e!3746190))))

(assert (=> b!6147665 (= res!2546744 ((_ is Concat!24936) (regTwo!32695 (regOne!32694 r!7292))))))

(assert (=> b!6147665 (= e!3746188 e!3746189)))

(declare-fun bm!511020 () Bool)

(assert (=> bm!511020 (= call!511020 (derivationStepZipperDown!1339 (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292)))))) (ite (or c!1106239 c!1106238) lt!2333933 (Context!10951 call!511024)) (h!70897 s!2326)))))

(declare-fun b!6147666 () Bool)

(assert (=> b!6147666 (= e!3746190 (nullable!6084 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292)))))))

(assert (= (and d!1926117 c!1106237) b!6147658))

(assert (= (and d!1926117 (not c!1106237)) b!6147656))

(assert (= (and b!6147656 c!1106239) b!6147662))

(assert (= (and b!6147656 (not c!1106239)) b!6147665))

(assert (= (and b!6147665 res!2546744) b!6147666))

(assert (= (and b!6147665 c!1106238) b!6147661))

(assert (= (and b!6147665 (not c!1106238)) b!6147657))

(assert (= (and b!6147657 c!1106235) b!6147663))

(assert (= (and b!6147657 (not c!1106235)) b!6147659))

(assert (= (and b!6147659 c!1106236) b!6147664))

(assert (= (and b!6147659 (not c!1106236)) b!6147660))

(assert (= (or b!6147663 b!6147664) bm!511017))

(assert (= (or b!6147663 b!6147664) bm!511015))

(assert (= (or b!6147661 bm!511017) bm!511019))

(assert (= (or b!6147661 bm!511015) bm!511016))

(assert (= (or b!6147662 bm!511016) bm!511020))

(assert (= (or b!6147662 b!6147661) bm!511018))

(declare-fun m!6987842 () Bool)

(assert (=> bm!511020 m!6987842))

(declare-fun m!6987844 () Bool)

(assert (=> bm!511019 m!6987844))

(declare-fun m!6987846 () Bool)

(assert (=> bm!511018 m!6987846))

(declare-fun m!6987848 () Bool)

(assert (=> b!6147658 m!6987848))

(declare-fun m!6987850 () Bool)

(assert (=> b!6147666 m!6987850))

(assert (=> b!6147171 d!1926117))

(declare-fun bm!511021 () Bool)

(declare-fun call!511027 () (InoxSet Context!10950))

(declare-fun call!511031 () (InoxSet Context!10950))

(assert (=> bm!511021 (= call!511027 call!511031)))

(declare-fun b!6147667 () Bool)

(declare-fun e!3746199 () (InoxSet Context!10950))

(declare-fun e!3746194 () (InoxSet Context!10950))

(assert (=> b!6147667 (= e!3746199 e!3746194)))

(declare-fun c!1106244 () Bool)

(assert (=> b!6147667 (= c!1106244 ((_ is Union!16091) (regOne!32695 (regOne!32694 r!7292))))))

(declare-fun bm!511022 () Bool)

(declare-fun call!511026 () (InoxSet Context!10950))

(assert (=> bm!511022 (= call!511031 call!511026)))

(declare-fun bm!511023 () Bool)

(declare-fun call!511030 () List!64572)

(declare-fun call!511029 () List!64572)

(assert (=> bm!511023 (= call!511030 call!511029)))

(declare-fun b!6147668 () Bool)

(declare-fun e!3746195 () (InoxSet Context!10950))

(declare-fun e!3746197 () (InoxSet Context!10950))

(assert (=> b!6147668 (= e!3746195 e!3746197)))

(declare-fun c!1106240 () Bool)

(assert (=> b!6147668 (= c!1106240 ((_ is Concat!24936) (regOne!32695 (regOne!32694 r!7292))))))

(declare-fun b!6147669 () Bool)

(assert (=> b!6147669 (= e!3746199 (store ((as const (Array Context!10950 Bool)) false) lt!2333933 true))))

(declare-fun bm!511024 () Bool)

(declare-fun call!511028 () (InoxSet Context!10950))

(assert (=> bm!511024 (= call!511028 (derivationStepZipperDown!1339 (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292)))) (ite c!1106244 lt!2333933 (Context!10951 call!511029)) (h!70897 s!2326)))))

(declare-fun b!6147671 () Bool)

(declare-fun e!3746198 () (InoxSet Context!10950))

(assert (=> b!6147671 (= e!3746198 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6147672 () Bool)

(assert (=> b!6147672 (= e!3746195 ((_ map or) call!511028 call!511031))))

(declare-fun b!6147673 () Bool)

(assert (=> b!6147673 (= e!3746194 ((_ map or) call!511028 call!511026))))

(declare-fun bm!511025 () Bool)

(declare-fun c!1106243 () Bool)

(assert (=> bm!511025 (= call!511029 ($colon$colon!1968 (exprs!5975 lt!2333933) (ite (or c!1106243 c!1106240) (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (regOne!32695 (regOne!32694 r!7292)))))))

(declare-fun b!6147674 () Bool)

(assert (=> b!6147674 (= e!3746197 call!511027)))

(declare-fun d!1926119 () Bool)

(declare-fun c!1106242 () Bool)

(assert (=> d!1926119 (= c!1106242 (and ((_ is ElementMatch!16091) (regOne!32695 (regOne!32694 r!7292))) (= (c!1106101 (regOne!32695 (regOne!32694 r!7292))) (h!70897 s!2326))))))

(assert (=> d!1926119 (= (derivationStepZipperDown!1339 (regOne!32695 (regOne!32694 r!7292)) lt!2333933 (h!70897 s!2326)) e!3746199)))

(declare-fun b!6147670 () Bool)

(declare-fun c!1106241 () Bool)

(assert (=> b!6147670 (= c!1106241 ((_ is Star!16091) (regOne!32695 (regOne!32694 r!7292))))))

(assert (=> b!6147670 (= e!3746197 e!3746198)))

(declare-fun b!6147675 () Bool)

(assert (=> b!6147675 (= e!3746198 call!511027)))

(declare-fun b!6147676 () Bool)

(declare-fun e!3746196 () Bool)

(assert (=> b!6147676 (= c!1106243 e!3746196)))

(declare-fun res!2546745 () Bool)

(assert (=> b!6147676 (=> (not res!2546745) (not e!3746196))))

(assert (=> b!6147676 (= res!2546745 ((_ is Concat!24936) (regOne!32695 (regOne!32694 r!7292))))))

(assert (=> b!6147676 (= e!3746194 e!3746195)))

(declare-fun bm!511026 () Bool)

(assert (=> bm!511026 (= call!511026 (derivationStepZipperDown!1339 (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292)))))) (ite (or c!1106244 c!1106243) lt!2333933 (Context!10951 call!511030)) (h!70897 s!2326)))))

(declare-fun b!6147677 () Bool)

(assert (=> b!6147677 (= e!3746196 (nullable!6084 (regOne!32694 (regOne!32695 (regOne!32694 r!7292)))))))

(assert (= (and d!1926119 c!1106242) b!6147669))

(assert (= (and d!1926119 (not c!1106242)) b!6147667))

(assert (= (and b!6147667 c!1106244) b!6147673))

(assert (= (and b!6147667 (not c!1106244)) b!6147676))

(assert (= (and b!6147676 res!2546745) b!6147677))

(assert (= (and b!6147676 c!1106243) b!6147672))

(assert (= (and b!6147676 (not c!1106243)) b!6147668))

(assert (= (and b!6147668 c!1106240) b!6147674))

(assert (= (and b!6147668 (not c!1106240)) b!6147670))

(assert (= (and b!6147670 c!1106241) b!6147675))

(assert (= (and b!6147670 (not c!1106241)) b!6147671))

(assert (= (or b!6147674 b!6147675) bm!511023))

(assert (= (or b!6147674 b!6147675) bm!511021))

(assert (= (or b!6147672 bm!511023) bm!511025))

(assert (= (or b!6147672 bm!511021) bm!511022))

(assert (= (or b!6147673 bm!511022) bm!511026))

(assert (= (or b!6147673 b!6147672) bm!511024))

(declare-fun m!6987852 () Bool)

(assert (=> bm!511026 m!6987852))

(declare-fun m!6987854 () Bool)

(assert (=> bm!511025 m!6987854))

(declare-fun m!6987856 () Bool)

(assert (=> bm!511024 m!6987856))

(assert (=> b!6147669 m!6987848))

(declare-fun m!6987858 () Bool)

(assert (=> b!6147677 m!6987858))

(assert (=> b!6147171 d!1926119))

(assert (=> b!6147153 d!1926087))

(declare-fun d!1926121 () Bool)

(declare-fun lt!2334027 () Regex!16091)

(assert (=> d!1926121 (validRegex!7827 lt!2334027)))

(assert (=> d!1926121 (= lt!2334027 (generalisedUnion!1935 (unfocusZipperList!1512 zl!343)))))

(assert (=> d!1926121 (= (unfocusZipper!1833 zl!343) lt!2334027)))

(declare-fun bs!1524092 () Bool)

(assert (= bs!1524092 d!1926121))

(declare-fun m!6987860 () Bool)

(assert (=> bs!1524092 m!6987860))

(assert (=> bs!1524092 m!6987420))

(assert (=> bs!1524092 m!6987420))

(assert (=> bs!1524092 m!6987422))

(assert (=> b!6147152 d!1926121))

(declare-fun d!1926123 () Bool)

(declare-fun lambda!335218 () Int)

(declare-fun forall!15212 (List!64572 Int) Bool)

(assert (=> d!1926123 (= (inv!83474 (h!70898 zl!343)) (forall!15212 (exprs!5975 (h!70898 zl!343)) lambda!335218))))

(declare-fun bs!1524093 () Bool)

(assert (= bs!1524093 d!1926123))

(declare-fun m!6987862 () Bool)

(assert (=> bs!1524093 m!6987862))

(assert (=> b!6147163 d!1926123))

(declare-fun b!6147696 () Bool)

(declare-fun e!3746214 () Bool)

(declare-fun e!3746219 () Bool)

(assert (=> b!6147696 (= e!3746214 e!3746219)))

(declare-fun res!2546759 () Bool)

(assert (=> b!6147696 (=> (not res!2546759) (not e!3746219))))

(declare-fun call!511039 () Bool)

(assert (=> b!6147696 (= res!2546759 call!511039)))

(declare-fun b!6147697 () Bool)

(declare-fun e!3746215 () Bool)

(declare-fun e!3746220 () Bool)

(assert (=> b!6147697 (= e!3746215 e!3746220)))

(declare-fun c!1106249 () Bool)

(assert (=> b!6147697 (= c!1106249 ((_ is Union!16091) r!7292))))

(declare-fun d!1926125 () Bool)

(declare-fun res!2546756 () Bool)

(declare-fun e!3746216 () Bool)

(assert (=> d!1926125 (=> res!2546756 e!3746216)))

(assert (=> d!1926125 (= res!2546756 ((_ is ElementMatch!16091) r!7292))))

(assert (=> d!1926125 (= (validRegex!7827 r!7292) e!3746216)))

(declare-fun b!6147698 () Bool)

(declare-fun e!3746218 () Bool)

(declare-fun call!511038 () Bool)

(assert (=> b!6147698 (= e!3746218 call!511038)))

(declare-fun b!6147699 () Bool)

(declare-fun e!3746217 () Bool)

(assert (=> b!6147699 (= e!3746215 e!3746217)))

(declare-fun res!2546758 () Bool)

(assert (=> b!6147699 (= res!2546758 (not (nullable!6084 (reg!16420 r!7292))))))

(assert (=> b!6147699 (=> (not res!2546758) (not e!3746217))))

(declare-fun c!1106250 () Bool)

(declare-fun bm!511033 () Bool)

(declare-fun call!511040 () Bool)

(assert (=> bm!511033 (= call!511040 (validRegex!7827 (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292)))))))

(declare-fun bm!511034 () Bool)

(assert (=> bm!511034 (= call!511038 (validRegex!7827 (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292))))))

(declare-fun bm!511035 () Bool)

(assert (=> bm!511035 (= call!511039 call!511040)))

(declare-fun b!6147700 () Bool)

(declare-fun res!2546760 () Bool)

(assert (=> b!6147700 (=> res!2546760 e!3746214)))

(assert (=> b!6147700 (= res!2546760 (not ((_ is Concat!24936) r!7292)))))

(assert (=> b!6147700 (= e!3746220 e!3746214)))

(declare-fun b!6147701 () Bool)

(assert (=> b!6147701 (= e!3746216 e!3746215)))

(assert (=> b!6147701 (= c!1106250 ((_ is Star!16091) r!7292))))

(declare-fun b!6147702 () Bool)

(declare-fun res!2546757 () Bool)

(assert (=> b!6147702 (=> (not res!2546757) (not e!3746218))))

(assert (=> b!6147702 (= res!2546757 call!511039)))

(assert (=> b!6147702 (= e!3746220 e!3746218)))

(declare-fun b!6147703 () Bool)

(assert (=> b!6147703 (= e!3746219 call!511038)))

(declare-fun b!6147704 () Bool)

(assert (=> b!6147704 (= e!3746217 call!511040)))

(assert (= (and d!1926125 (not res!2546756)) b!6147701))

(assert (= (and b!6147701 c!1106250) b!6147699))

(assert (= (and b!6147701 (not c!1106250)) b!6147697))

(assert (= (and b!6147699 res!2546758) b!6147704))

(assert (= (and b!6147697 c!1106249) b!6147702))

(assert (= (and b!6147697 (not c!1106249)) b!6147700))

(assert (= (and b!6147702 res!2546757) b!6147698))

(assert (= (and b!6147700 (not res!2546760)) b!6147696))

(assert (= (and b!6147696 res!2546759) b!6147703))

(assert (= (or b!6147698 b!6147703) bm!511034))

(assert (= (or b!6147702 b!6147696) bm!511035))

(assert (= (or b!6147704 bm!511035) bm!511033))

(declare-fun m!6987864 () Bool)

(assert (=> b!6147699 m!6987864))

(declare-fun m!6987866 () Bool)

(assert (=> bm!511033 m!6987866))

(declare-fun m!6987868 () Bool)

(assert (=> bm!511034 m!6987868))

(assert (=> start!614042 d!1926125))

(declare-fun bs!1524094 () Bool)

(declare-fun b!6147738 () Bool)

(assert (= bs!1524094 (and b!6147738 d!1926073)))

(declare-fun lambda!335223 () Int)

(assert (=> bs!1524094 (not (= lambda!335223 lambda!335211))))

(declare-fun bs!1524095 () Bool)

(assert (= bs!1524095 (and b!6147738 d!1926069)))

(assert (=> bs!1524095 (not (= lambda!335223 lambda!335205))))

(assert (=> bs!1524094 (not (= lambda!335223 lambda!335212))))

(declare-fun bs!1524096 () Bool)

(assert (= bs!1524096 (and b!6147738 b!6147159)))

(assert (=> bs!1524096 (not (= lambda!335223 lambda!335175))))

(assert (=> bs!1524096 (not (= lambda!335223 lambda!335176))))

(assert (=> b!6147738 true))

(assert (=> b!6147738 true))

(declare-fun bs!1524097 () Bool)

(declare-fun b!6147747 () Bool)

(assert (= bs!1524097 (and b!6147747 b!6147738)))

(declare-fun lambda!335224 () Int)

(assert (=> bs!1524097 (not (= lambda!335224 lambda!335223))))

(declare-fun bs!1524098 () Bool)

(assert (= bs!1524098 (and b!6147747 d!1926073)))

(assert (=> bs!1524098 (not (= lambda!335224 lambda!335211))))

(declare-fun bs!1524099 () Bool)

(assert (= bs!1524099 (and b!6147747 d!1926069)))

(assert (=> bs!1524099 (not (= lambda!335224 lambda!335205))))

(assert (=> bs!1524098 (= lambda!335224 lambda!335212)))

(declare-fun bs!1524100 () Bool)

(assert (= bs!1524100 (and b!6147747 b!6147159)))

(assert (=> bs!1524100 (not (= lambda!335224 lambda!335175))))

(assert (=> bs!1524100 (= lambda!335224 lambda!335176)))

(assert (=> b!6147747 true))

(assert (=> b!6147747 true))

(declare-fun b!6147737 () Bool)

(declare-fun e!3746239 () Bool)

(declare-fun e!3746245 () Bool)

(assert (=> b!6147737 (= e!3746239 e!3746245)))

(declare-fun c!1106261 () Bool)

(assert (=> b!6147737 (= c!1106261 ((_ is Star!16091) r!7292))))

(declare-fun e!3746241 () Bool)

(declare-fun call!511046 () Bool)

(assert (=> b!6147738 (= e!3746241 call!511046)))

(declare-fun b!6147739 () Bool)

(declare-fun e!3746242 () Bool)

(declare-fun e!3746243 () Bool)

(assert (=> b!6147739 (= e!3746242 e!3746243)))

(declare-fun res!2546778 () Bool)

(assert (=> b!6147739 (= res!2546778 (not ((_ is EmptyLang!16091) r!7292)))))

(assert (=> b!6147739 (=> (not res!2546778) (not e!3746243))))

(declare-fun b!6147740 () Bool)

(declare-fun call!511045 () Bool)

(assert (=> b!6147740 (= e!3746242 call!511045)))

(declare-fun b!6147741 () Bool)

(declare-fun c!1106260 () Bool)

(assert (=> b!6147741 (= c!1106260 ((_ is Union!16091) r!7292))))

(declare-fun e!3746244 () Bool)

(assert (=> b!6147741 (= e!3746244 e!3746239)))

(declare-fun b!6147742 () Bool)

(declare-fun res!2546779 () Bool)

(assert (=> b!6147742 (=> res!2546779 e!3746241)))

(assert (=> b!6147742 (= res!2546779 call!511045)))

(assert (=> b!6147742 (= e!3746245 e!3746241)))

(declare-fun bm!511040 () Bool)

(assert (=> bm!511040 (= call!511046 (Exists!3161 (ite c!1106261 lambda!335223 lambda!335224)))))

(declare-fun b!6147743 () Bool)

(declare-fun c!1106259 () Bool)

(assert (=> b!6147743 (= c!1106259 ((_ is ElementMatch!16091) r!7292))))

(assert (=> b!6147743 (= e!3746243 e!3746244)))

(declare-fun b!6147744 () Bool)

(assert (=> b!6147744 (= e!3746244 (= s!2326 (Cons!64449 (c!1106101 r!7292) Nil!64449)))))

(declare-fun b!6147745 () Bool)

(declare-fun e!3746240 () Bool)

(assert (=> b!6147745 (= e!3746239 e!3746240)))

(declare-fun res!2546777 () Bool)

(assert (=> b!6147745 (= res!2546777 (matchRSpec!3192 (regOne!32695 r!7292) s!2326))))

(assert (=> b!6147745 (=> res!2546777 e!3746240)))

(declare-fun d!1926127 () Bool)

(declare-fun c!1106262 () Bool)

(assert (=> d!1926127 (= c!1106262 ((_ is EmptyExpr!16091) r!7292))))

(assert (=> d!1926127 (= (matchRSpec!3192 r!7292 s!2326) e!3746242)))

(declare-fun b!6147746 () Bool)

(assert (=> b!6147746 (= e!3746240 (matchRSpec!3192 (regTwo!32695 r!7292) s!2326))))

(assert (=> b!6147747 (= e!3746245 call!511046)))

(declare-fun bm!511041 () Bool)

(assert (=> bm!511041 (= call!511045 (isEmpty!36408 s!2326))))

(assert (= (and d!1926127 c!1106262) b!6147740))

(assert (= (and d!1926127 (not c!1106262)) b!6147739))

(assert (= (and b!6147739 res!2546778) b!6147743))

(assert (= (and b!6147743 c!1106259) b!6147744))

(assert (= (and b!6147743 (not c!1106259)) b!6147741))

(assert (= (and b!6147741 c!1106260) b!6147745))

(assert (= (and b!6147741 (not c!1106260)) b!6147737))

(assert (= (and b!6147745 (not res!2546777)) b!6147746))

(assert (= (and b!6147737 c!1106261) b!6147742))

(assert (= (and b!6147737 (not c!1106261)) b!6147747))

(assert (= (and b!6147742 (not res!2546779)) b!6147738))

(assert (= (or b!6147738 b!6147747) bm!511040))

(assert (= (or b!6147740 b!6147742) bm!511041))

(declare-fun m!6987870 () Bool)

(assert (=> bm!511040 m!6987870))

(declare-fun m!6987872 () Bool)

(assert (=> b!6147745 m!6987872))

(declare-fun m!6987874 () Bool)

(assert (=> b!6147746 m!6987874))

(declare-fun m!6987876 () Bool)

(assert (=> bm!511041 m!6987876))

(assert (=> b!6147162 d!1926127))

(declare-fun b!6147776 () Bool)

(declare-fun e!3746263 () Bool)

(declare-fun lt!2334030 () Bool)

(assert (=> b!6147776 (= e!3746263 (not lt!2334030))))

(declare-fun b!6147777 () Bool)

(declare-fun res!2546797 () Bool)

(declare-fun e!3746266 () Bool)

(assert (=> b!6147777 (=> (not res!2546797) (not e!3746266))))

(declare-fun call!511049 () Bool)

(assert (=> b!6147777 (= res!2546797 (not call!511049))))

(declare-fun b!6147778 () Bool)

(declare-fun e!3746262 () Bool)

(declare-fun e!3746261 () Bool)

(assert (=> b!6147778 (= e!3746262 e!3746261)))

(declare-fun res!2546801 () Bool)

(assert (=> b!6147778 (=> res!2546801 e!3746261)))

(assert (=> b!6147778 (= res!2546801 call!511049)))

(declare-fun b!6147779 () Bool)

(declare-fun e!3746260 () Bool)

(assert (=> b!6147779 (= e!3746260 e!3746262)))

(declare-fun res!2546798 () Bool)

(assert (=> b!6147779 (=> (not res!2546798) (not e!3746262))))

(assert (=> b!6147779 (= res!2546798 (not lt!2334030))))

(declare-fun b!6147780 () Bool)

(declare-fun e!3746264 () Bool)

(assert (=> b!6147780 (= e!3746264 (= lt!2334030 call!511049))))

(declare-fun b!6147781 () Bool)

(declare-fun res!2546796 () Bool)

(assert (=> b!6147781 (=> (not res!2546796) (not e!3746266))))

(assert (=> b!6147781 (= res!2546796 (isEmpty!36408 (tail!11787 s!2326)))))

(declare-fun b!6147782 () Bool)

(declare-fun res!2546803 () Bool)

(assert (=> b!6147782 (=> res!2546803 e!3746260)))

(assert (=> b!6147782 (= res!2546803 (not ((_ is ElementMatch!16091) r!7292)))))

(assert (=> b!6147782 (= e!3746263 e!3746260)))

(declare-fun b!6147783 () Bool)

(assert (=> b!6147783 (= e!3746261 (not (= (head!12702 s!2326) (c!1106101 r!7292))))))

(declare-fun b!6147784 () Bool)

(assert (=> b!6147784 (= e!3746266 (= (head!12702 s!2326) (c!1106101 r!7292)))))

(declare-fun b!6147785 () Bool)

(declare-fun e!3746265 () Bool)

(assert (=> b!6147785 (= e!3746265 (nullable!6084 r!7292))))

(declare-fun b!6147786 () Bool)

(declare-fun res!2546799 () Bool)

(assert (=> b!6147786 (=> res!2546799 e!3746260)))

(assert (=> b!6147786 (= res!2546799 e!3746266)))

(declare-fun res!2546802 () Bool)

(assert (=> b!6147786 (=> (not res!2546802) (not e!3746266))))

(assert (=> b!6147786 (= res!2546802 lt!2334030)))

(declare-fun b!6147787 () Bool)

(assert (=> b!6147787 (= e!3746264 e!3746263)))

(declare-fun c!1106270 () Bool)

(assert (=> b!6147787 (= c!1106270 ((_ is EmptyLang!16091) r!7292))))

(declare-fun d!1926129 () Bool)

(assert (=> d!1926129 e!3746264))

(declare-fun c!1106269 () Bool)

(assert (=> d!1926129 (= c!1106269 ((_ is EmptyExpr!16091) r!7292))))

(assert (=> d!1926129 (= lt!2334030 e!3746265)))

(declare-fun c!1106271 () Bool)

(assert (=> d!1926129 (= c!1106271 (isEmpty!36408 s!2326))))

(assert (=> d!1926129 (validRegex!7827 r!7292)))

(assert (=> d!1926129 (= (matchR!8274 r!7292 s!2326) lt!2334030)))

(declare-fun bm!511044 () Bool)

(assert (=> bm!511044 (= call!511049 (isEmpty!36408 s!2326))))

(declare-fun b!6147788 () Bool)

(declare-fun res!2546800 () Bool)

(assert (=> b!6147788 (=> res!2546800 e!3746261)))

(assert (=> b!6147788 (= res!2546800 (not (isEmpty!36408 (tail!11787 s!2326))))))

(declare-fun b!6147789 () Bool)

(declare-fun derivativeStep!4811 (Regex!16091 C!32452) Regex!16091)

(assert (=> b!6147789 (= e!3746265 (matchR!8274 (derivativeStep!4811 r!7292 (head!12702 s!2326)) (tail!11787 s!2326)))))

(assert (= (and d!1926129 c!1106271) b!6147785))

(assert (= (and d!1926129 (not c!1106271)) b!6147789))

(assert (= (and d!1926129 c!1106269) b!6147780))

(assert (= (and d!1926129 (not c!1106269)) b!6147787))

(assert (= (and b!6147787 c!1106270) b!6147776))

(assert (= (and b!6147787 (not c!1106270)) b!6147782))

(assert (= (and b!6147782 (not res!2546803)) b!6147786))

(assert (= (and b!6147786 res!2546802) b!6147777))

(assert (= (and b!6147777 res!2546797) b!6147781))

(assert (= (and b!6147781 res!2546796) b!6147784))

(assert (= (and b!6147786 (not res!2546799)) b!6147779))

(assert (= (and b!6147779 res!2546798) b!6147778))

(assert (= (and b!6147778 (not res!2546801)) b!6147788))

(assert (= (and b!6147788 (not res!2546800)) b!6147783))

(assert (= (or b!6147780 b!6147777 b!6147778) bm!511044))

(declare-fun m!6987878 () Bool)

(assert (=> b!6147784 m!6987878))

(assert (=> b!6147789 m!6987878))

(assert (=> b!6147789 m!6987878))

(declare-fun m!6987880 () Bool)

(assert (=> b!6147789 m!6987880))

(declare-fun m!6987882 () Bool)

(assert (=> b!6147789 m!6987882))

(assert (=> b!6147789 m!6987880))

(assert (=> b!6147789 m!6987882))

(declare-fun m!6987884 () Bool)

(assert (=> b!6147789 m!6987884))

(assert (=> bm!511044 m!6987876))

(assert (=> b!6147783 m!6987878))

(declare-fun m!6987886 () Bool)

(assert (=> b!6147785 m!6987886))

(assert (=> b!6147781 m!6987882))

(assert (=> b!6147781 m!6987882))

(declare-fun m!6987888 () Bool)

(assert (=> b!6147781 m!6987888))

(assert (=> d!1926129 m!6987876))

(assert (=> d!1926129 m!6987406))

(assert (=> b!6147788 m!6987882))

(assert (=> b!6147788 m!6987882))

(assert (=> b!6147788 m!6987888))

(assert (=> b!6147162 d!1926129))

(declare-fun d!1926131 () Bool)

(assert (=> d!1926131 (= (matchR!8274 r!7292 s!2326) (matchRSpec!3192 r!7292 s!2326))))

(declare-fun lt!2334033 () Unit!157525)

(declare-fun choose!45699 (Regex!16091 List!64573) Unit!157525)

(assert (=> d!1926131 (= lt!2334033 (choose!45699 r!7292 s!2326))))

(assert (=> d!1926131 (validRegex!7827 r!7292)))

(assert (=> d!1926131 (= (mainMatchTheorem!3192 r!7292 s!2326) lt!2334033)))

(declare-fun bs!1524101 () Bool)

(assert (= bs!1524101 d!1926131))

(assert (=> bs!1524101 m!6987400))

(assert (=> bs!1524101 m!6987398))

(declare-fun m!6987890 () Bool)

(assert (=> bs!1524101 m!6987890))

(assert (=> bs!1524101 m!6987406))

(assert (=> b!6147162 d!1926131))

(declare-fun bs!1524102 () Bool)

(declare-fun d!1926133 () Bool)

(assert (= bs!1524102 (and d!1926133 d!1926123)))

(declare-fun lambda!335227 () Int)

(assert (=> bs!1524102 (= lambda!335227 lambda!335218)))

(declare-fun b!6147810 () Bool)

(declare-fun e!3746279 () Bool)

(declare-fun e!3746284 () Bool)

(assert (=> b!6147810 (= e!3746279 e!3746284)))

(declare-fun c!1106280 () Bool)

(assert (=> b!6147810 (= c!1106280 (isEmpty!36404 (exprs!5975 (h!70898 zl!343))))))

(assert (=> d!1926133 e!3746279))

(declare-fun res!2546809 () Bool)

(assert (=> d!1926133 (=> (not res!2546809) (not e!3746279))))

(declare-fun lt!2334036 () Regex!16091)

(assert (=> d!1926133 (= res!2546809 (validRegex!7827 lt!2334036))))

(declare-fun e!3746283 () Regex!16091)

(assert (=> d!1926133 (= lt!2334036 e!3746283)))

(declare-fun c!1106283 () Bool)

(declare-fun e!3746280 () Bool)

(assert (=> d!1926133 (= c!1106283 e!3746280)))

(declare-fun res!2546808 () Bool)

(assert (=> d!1926133 (=> (not res!2546808) (not e!3746280))))

(assert (=> d!1926133 (= res!2546808 ((_ is Cons!64448) (exprs!5975 (h!70898 zl!343))))))

(assert (=> d!1926133 (forall!15212 (exprs!5975 (h!70898 zl!343)) lambda!335227)))

(assert (=> d!1926133 (= (generalisedConcat!1688 (exprs!5975 (h!70898 zl!343))) lt!2334036)))

(declare-fun b!6147811 () Bool)

(declare-fun e!3746282 () Regex!16091)

(assert (=> b!6147811 (= e!3746282 (Concat!24936 (h!70896 (exprs!5975 (h!70898 zl!343))) (generalisedConcat!1688 (t!378057 (exprs!5975 (h!70898 zl!343))))))))

(declare-fun b!6147812 () Bool)

(declare-fun e!3746281 () Bool)

(declare-fun isConcat!1030 (Regex!16091) Bool)

(assert (=> b!6147812 (= e!3746281 (isConcat!1030 lt!2334036))))

(declare-fun b!6147813 () Bool)

(declare-fun head!12704 (List!64572) Regex!16091)

(assert (=> b!6147813 (= e!3746281 (= lt!2334036 (head!12704 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6147814 () Bool)

(assert (=> b!6147814 (= e!3746280 (isEmpty!36404 (t!378057 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6147815 () Bool)

(assert (=> b!6147815 (= e!3746283 (h!70896 (exprs!5975 (h!70898 zl!343))))))

(declare-fun b!6147816 () Bool)

(assert (=> b!6147816 (= e!3746283 e!3746282)))

(declare-fun c!1106282 () Bool)

(assert (=> b!6147816 (= c!1106282 ((_ is Cons!64448) (exprs!5975 (h!70898 zl!343))))))

(declare-fun b!6147817 () Bool)

(declare-fun isEmptyExpr!1507 (Regex!16091) Bool)

(assert (=> b!6147817 (= e!3746284 (isEmptyExpr!1507 lt!2334036))))

(declare-fun b!6147818 () Bool)

(assert (=> b!6147818 (= e!3746284 e!3746281)))

(declare-fun c!1106281 () Bool)

(declare-fun tail!11789 (List!64572) List!64572)

(assert (=> b!6147818 (= c!1106281 (isEmpty!36404 (tail!11789 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6147819 () Bool)

(assert (=> b!6147819 (= e!3746282 EmptyExpr!16091)))

(assert (= (and d!1926133 res!2546808) b!6147814))

(assert (= (and d!1926133 c!1106283) b!6147815))

(assert (= (and d!1926133 (not c!1106283)) b!6147816))

(assert (= (and b!6147816 c!1106282) b!6147811))

(assert (= (and b!6147816 (not c!1106282)) b!6147819))

(assert (= (and d!1926133 res!2546809) b!6147810))

(assert (= (and b!6147810 c!1106280) b!6147817))

(assert (= (and b!6147810 (not c!1106280)) b!6147818))

(assert (= (and b!6147818 c!1106281) b!6147813))

(assert (= (and b!6147818 (not c!1106281)) b!6147812))

(declare-fun m!6987892 () Bool)

(assert (=> b!6147818 m!6987892))

(assert (=> b!6147818 m!6987892))

(declare-fun m!6987894 () Bool)

(assert (=> b!6147818 m!6987894))

(assert (=> b!6147814 m!6987396))

(declare-fun m!6987896 () Bool)

(assert (=> b!6147811 m!6987896))

(declare-fun m!6987898 () Bool)

(assert (=> d!1926133 m!6987898))

(declare-fun m!6987900 () Bool)

(assert (=> d!1926133 m!6987900))

(declare-fun m!6987902 () Bool)

(assert (=> b!6147812 m!6987902))

(declare-fun m!6987904 () Bool)

(assert (=> b!6147810 m!6987904))

(declare-fun m!6987906 () Bool)

(assert (=> b!6147813 m!6987906))

(declare-fun m!6987908 () Bool)

(assert (=> b!6147817 m!6987908))

(assert (=> b!6147173 d!1926133))

(declare-fun bs!1524103 () Bool)

(declare-fun d!1926135 () Bool)

(assert (= bs!1524103 (and d!1926135 d!1926123)))

(declare-fun lambda!335230 () Int)

(assert (=> bs!1524103 (= lambda!335230 lambda!335218)))

(declare-fun bs!1524104 () Bool)

(assert (= bs!1524104 (and d!1926135 d!1926133)))

(assert (=> bs!1524104 (= lambda!335230 lambda!335227)))

(declare-fun b!6147840 () Bool)

(declare-fun e!3746302 () Regex!16091)

(assert (=> b!6147840 (= e!3746302 (Union!16091 (h!70896 (unfocusZipperList!1512 zl!343)) (generalisedUnion!1935 (t!378057 (unfocusZipperList!1512 zl!343)))))))

(declare-fun b!6147841 () Bool)

(declare-fun e!3746298 () Regex!16091)

(assert (=> b!6147841 (= e!3746298 (h!70896 (unfocusZipperList!1512 zl!343)))))

(declare-fun b!6147842 () Bool)

(assert (=> b!6147842 (= e!3746302 EmptyLang!16091)))

(declare-fun b!6147843 () Bool)

(declare-fun e!3746297 () Bool)

(declare-fun lt!2334039 () Regex!16091)

(declare-fun isUnion!948 (Regex!16091) Bool)

(assert (=> b!6147843 (= e!3746297 (isUnion!948 lt!2334039))))

(declare-fun b!6147844 () Bool)

(declare-fun e!3746299 () Bool)

(declare-fun e!3746301 () Bool)

(assert (=> b!6147844 (= e!3746299 e!3746301)))

(declare-fun c!1106295 () Bool)

(assert (=> b!6147844 (= c!1106295 (isEmpty!36404 (unfocusZipperList!1512 zl!343)))))

(declare-fun b!6147845 () Bool)

(declare-fun isEmptyLang!1518 (Regex!16091) Bool)

(assert (=> b!6147845 (= e!3746301 (isEmptyLang!1518 lt!2334039))))

(assert (=> d!1926135 e!3746299))

(declare-fun res!2546814 () Bool)

(assert (=> d!1926135 (=> (not res!2546814) (not e!3746299))))

(assert (=> d!1926135 (= res!2546814 (validRegex!7827 lt!2334039))))

(assert (=> d!1926135 (= lt!2334039 e!3746298)))

(declare-fun c!1106293 () Bool)

(declare-fun e!3746300 () Bool)

(assert (=> d!1926135 (= c!1106293 e!3746300)))

(declare-fun res!2546815 () Bool)

(assert (=> d!1926135 (=> (not res!2546815) (not e!3746300))))

(assert (=> d!1926135 (= res!2546815 ((_ is Cons!64448) (unfocusZipperList!1512 zl!343)))))

(assert (=> d!1926135 (forall!15212 (unfocusZipperList!1512 zl!343) lambda!335230)))

(assert (=> d!1926135 (= (generalisedUnion!1935 (unfocusZipperList!1512 zl!343)) lt!2334039)))

(declare-fun b!6147846 () Bool)

(assert (=> b!6147846 (= e!3746300 (isEmpty!36404 (t!378057 (unfocusZipperList!1512 zl!343))))))

(declare-fun b!6147847 () Bool)

(assert (=> b!6147847 (= e!3746301 e!3746297)))

(declare-fun c!1106294 () Bool)

(assert (=> b!6147847 (= c!1106294 (isEmpty!36404 (tail!11789 (unfocusZipperList!1512 zl!343))))))

(declare-fun b!6147848 () Bool)

(assert (=> b!6147848 (= e!3746297 (= lt!2334039 (head!12704 (unfocusZipperList!1512 zl!343))))))

(declare-fun b!6147849 () Bool)

(assert (=> b!6147849 (= e!3746298 e!3746302)))

(declare-fun c!1106292 () Bool)

(assert (=> b!6147849 (= c!1106292 ((_ is Cons!64448) (unfocusZipperList!1512 zl!343)))))

(assert (= (and d!1926135 res!2546815) b!6147846))

(assert (= (and d!1926135 c!1106293) b!6147841))

(assert (= (and d!1926135 (not c!1106293)) b!6147849))

(assert (= (and b!6147849 c!1106292) b!6147840))

(assert (= (and b!6147849 (not c!1106292)) b!6147842))

(assert (= (and d!1926135 res!2546814) b!6147844))

(assert (= (and b!6147844 c!1106295) b!6147845))

(assert (= (and b!6147844 (not c!1106295)) b!6147847))

(assert (= (and b!6147847 c!1106294) b!6147848))

(assert (= (and b!6147847 (not c!1106294)) b!6147843))

(assert (=> b!6147847 m!6987420))

(declare-fun m!6987910 () Bool)

(assert (=> b!6147847 m!6987910))

(assert (=> b!6147847 m!6987910))

(declare-fun m!6987912 () Bool)

(assert (=> b!6147847 m!6987912))

(declare-fun m!6987914 () Bool)

(assert (=> d!1926135 m!6987914))

(assert (=> d!1926135 m!6987420))

(declare-fun m!6987916 () Bool)

(assert (=> d!1926135 m!6987916))

(assert (=> b!6147848 m!6987420))

(declare-fun m!6987918 () Bool)

(assert (=> b!6147848 m!6987918))

(declare-fun m!6987920 () Bool)

(assert (=> b!6147846 m!6987920))

(declare-fun m!6987922 () Bool)

(assert (=> b!6147840 m!6987922))

(assert (=> b!6147844 m!6987420))

(declare-fun m!6987924 () Bool)

(assert (=> b!6147844 m!6987924))

(declare-fun m!6987926 () Bool)

(assert (=> b!6147845 m!6987926))

(declare-fun m!6987928 () Bool)

(assert (=> b!6147843 m!6987928))

(assert (=> b!6147156 d!1926135))

(declare-fun bs!1524105 () Bool)

(declare-fun d!1926137 () Bool)

(assert (= bs!1524105 (and d!1926137 d!1926123)))

(declare-fun lambda!335233 () Int)

(assert (=> bs!1524105 (= lambda!335233 lambda!335218)))

(declare-fun bs!1524106 () Bool)

(assert (= bs!1524106 (and d!1926137 d!1926133)))

(assert (=> bs!1524106 (= lambda!335233 lambda!335227)))

(declare-fun bs!1524107 () Bool)

(assert (= bs!1524107 (and d!1926137 d!1926135)))

(assert (=> bs!1524107 (= lambda!335233 lambda!335230)))

(declare-fun lt!2334042 () List!64572)

(assert (=> d!1926137 (forall!15212 lt!2334042 lambda!335233)))

(declare-fun e!3746305 () List!64572)

(assert (=> d!1926137 (= lt!2334042 e!3746305)))

(declare-fun c!1106298 () Bool)

(assert (=> d!1926137 (= c!1106298 ((_ is Cons!64450) zl!343))))

(assert (=> d!1926137 (= (unfocusZipperList!1512 zl!343) lt!2334042)))

(declare-fun b!6147854 () Bool)

(assert (=> b!6147854 (= e!3746305 (Cons!64448 (generalisedConcat!1688 (exprs!5975 (h!70898 zl!343))) (unfocusZipperList!1512 (t!378059 zl!343))))))

(declare-fun b!6147855 () Bool)

(assert (=> b!6147855 (= e!3746305 Nil!64448)))

(assert (= (and d!1926137 c!1106298) b!6147854))

(assert (= (and d!1926137 (not c!1106298)) b!6147855))

(declare-fun m!6987930 () Bool)

(assert (=> d!1926137 m!6987930))

(assert (=> b!6147854 m!6987468))

(declare-fun m!6987932 () Bool)

(assert (=> b!6147854 m!6987932))

(assert (=> b!6147156 d!1926137))

(declare-fun d!1926139 () Bool)

(assert (=> d!1926139 (= (isEmpty!36404 (t!378057 (exprs!5975 (h!70898 zl!343)))) ((_ is Nil!64448) (t!378057 (exprs!5975 (h!70898 zl!343)))))))

(assert (=> b!6147167 d!1926139))

(declare-fun b!6147866 () Bool)

(declare-fun e!3746312 () Bool)

(assert (=> b!6147866 (= e!3746312 (nullable!6084 (h!70896 (exprs!5975 lt!2333948))))))

(declare-fun e!3746313 () (InoxSet Context!10950))

(declare-fun call!511052 () (InoxSet Context!10950))

(declare-fun b!6147867 () Bool)

(assert (=> b!6147867 (= e!3746313 ((_ map or) call!511052 (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 lt!2333948))) (h!70897 s!2326))))))

(declare-fun b!6147868 () Bool)

(declare-fun e!3746314 () (InoxSet Context!10950))

(assert (=> b!6147868 (= e!3746314 call!511052)))

(declare-fun bm!511047 () Bool)

(assert (=> bm!511047 (= call!511052 (derivationStepZipperDown!1339 (h!70896 (exprs!5975 lt!2333948)) (Context!10951 (t!378057 (exprs!5975 lt!2333948))) (h!70897 s!2326)))))

(declare-fun b!6147869 () Bool)

(assert (=> b!6147869 (= e!3746314 ((as const (Array Context!10950 Bool)) false))))

(declare-fun d!1926141 () Bool)

(declare-fun c!1106304 () Bool)

(assert (=> d!1926141 (= c!1106304 e!3746312)))

(declare-fun res!2546818 () Bool)

(assert (=> d!1926141 (=> (not res!2546818) (not e!3746312))))

(assert (=> d!1926141 (= res!2546818 ((_ is Cons!64448) (exprs!5975 lt!2333948)))))

(assert (=> d!1926141 (= (derivationStepZipperUp!1265 lt!2333948 (h!70897 s!2326)) e!3746313)))

(declare-fun b!6147870 () Bool)

(assert (=> b!6147870 (= e!3746313 e!3746314)))

(declare-fun c!1106303 () Bool)

(assert (=> b!6147870 (= c!1106303 ((_ is Cons!64448) (exprs!5975 lt!2333948)))))

(assert (= (and d!1926141 res!2546818) b!6147866))

(assert (= (and d!1926141 c!1106304) b!6147867))

(assert (= (and d!1926141 (not c!1106304)) b!6147870))

(assert (= (and b!6147870 c!1106303) b!6147868))

(assert (= (and b!6147870 (not c!1106303)) b!6147869))

(assert (= (or b!6147867 b!6147868) bm!511047))

(declare-fun m!6987934 () Bool)

(assert (=> b!6147866 m!6987934))

(declare-fun m!6987936 () Bool)

(assert (=> b!6147867 m!6987936))

(declare-fun m!6987938 () Bool)

(assert (=> bm!511047 m!6987938))

(assert (=> b!6147166 d!1926141))

(declare-fun d!1926143 () Bool)

(declare-fun dynLambda!25402 (Int Context!10950) (InoxSet Context!10950))

(assert (=> d!1926143 (= (flatMap!1596 lt!2333946 lambda!335177) (dynLambda!25402 lambda!335177 lt!2333948))))

(declare-fun lt!2334045 () Unit!157525)

(declare-fun choose!45700 ((InoxSet Context!10950) Context!10950 Int) Unit!157525)

(assert (=> d!1926143 (= lt!2334045 (choose!45700 lt!2333946 lt!2333948 lambda!335177))))

(assert (=> d!1926143 (= lt!2333946 (store ((as const (Array Context!10950 Bool)) false) lt!2333948 true))))

(assert (=> d!1926143 (= (lemmaFlatMapOnSingletonSet!1122 lt!2333946 lt!2333948 lambda!335177) lt!2334045)))

(declare-fun b_lambda!233977 () Bool)

(assert (=> (not b_lambda!233977) (not d!1926143)))

(declare-fun bs!1524108 () Bool)

(assert (= bs!1524108 d!1926143))

(assert (=> bs!1524108 m!6987450))

(declare-fun m!6987940 () Bool)

(assert (=> bs!1524108 m!6987940))

(declare-fun m!6987942 () Bool)

(assert (=> bs!1524108 m!6987942))

(assert (=> bs!1524108 m!6987458))

(assert (=> b!6147166 d!1926143))

(declare-fun d!1926145 () Bool)

(declare-fun choose!45701 ((InoxSet Context!10950) Int) (InoxSet Context!10950))

(assert (=> d!1926145 (= (flatMap!1596 lt!2333946 lambda!335177) (choose!45701 lt!2333946 lambda!335177))))

(declare-fun bs!1524109 () Bool)

(assert (= bs!1524109 d!1926145))

(declare-fun m!6987944 () Bool)

(assert (=> bs!1524109 m!6987944))

(assert (=> b!6147166 d!1926145))

(declare-fun b!6147871 () Bool)

(declare-fun e!3746315 () Bool)

(assert (=> b!6147871 (= e!3746315 (nullable!6084 (h!70896 (exprs!5975 lt!2333955))))))

(declare-fun e!3746316 () (InoxSet Context!10950))

(declare-fun call!511053 () (InoxSet Context!10950))

(declare-fun b!6147872 () Bool)

(assert (=> b!6147872 (= e!3746316 ((_ map or) call!511053 (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 lt!2333955))) (h!70897 s!2326))))))

(declare-fun b!6147873 () Bool)

(declare-fun e!3746317 () (InoxSet Context!10950))

(assert (=> b!6147873 (= e!3746317 call!511053)))

(declare-fun bm!511048 () Bool)

(assert (=> bm!511048 (= call!511053 (derivationStepZipperDown!1339 (h!70896 (exprs!5975 lt!2333955)) (Context!10951 (t!378057 (exprs!5975 lt!2333955))) (h!70897 s!2326)))))

(declare-fun b!6147874 () Bool)

(assert (=> b!6147874 (= e!3746317 ((as const (Array Context!10950 Bool)) false))))

(declare-fun d!1926147 () Bool)

(declare-fun c!1106306 () Bool)

(assert (=> d!1926147 (= c!1106306 e!3746315)))

(declare-fun res!2546819 () Bool)

(assert (=> d!1926147 (=> (not res!2546819) (not e!3746315))))

(assert (=> d!1926147 (= res!2546819 ((_ is Cons!64448) (exprs!5975 lt!2333955)))))

(assert (=> d!1926147 (= (derivationStepZipperUp!1265 lt!2333955 (h!70897 s!2326)) e!3746316)))

(declare-fun b!6147875 () Bool)

(assert (=> b!6147875 (= e!3746316 e!3746317)))

(declare-fun c!1106305 () Bool)

(assert (=> b!6147875 (= c!1106305 ((_ is Cons!64448) (exprs!5975 lt!2333955)))))

(assert (= (and d!1926147 res!2546819) b!6147871))

(assert (= (and d!1926147 c!1106306) b!6147872))

(assert (= (and d!1926147 (not c!1106306)) b!6147875))

(assert (= (and b!6147875 c!1106305) b!6147873))

(assert (= (and b!6147875 (not c!1106305)) b!6147874))

(assert (= (or b!6147872 b!6147873) bm!511048))

(declare-fun m!6987946 () Bool)

(assert (=> b!6147871 m!6987946))

(declare-fun m!6987948 () Bool)

(assert (=> b!6147872 m!6987948))

(declare-fun m!6987950 () Bool)

(assert (=> bm!511048 m!6987950))

(assert (=> b!6147166 d!1926147))

(declare-fun d!1926149 () Bool)

(declare-fun nullableFct!2048 (Regex!16091) Bool)

(assert (=> d!1926149 (= (nullable!6084 (regOne!32695 (regOne!32694 r!7292))) (nullableFct!2048 (regOne!32695 (regOne!32694 r!7292))))))

(declare-fun bs!1524110 () Bool)

(assert (= bs!1524110 d!1926149))

(declare-fun m!6987952 () Bool)

(assert (=> bs!1524110 m!6987952))

(assert (=> b!6147166 d!1926149))

(declare-fun bs!1524111 () Bool)

(declare-fun d!1926151 () Bool)

(assert (= bs!1524111 (and d!1926151 d!1926123)))

(declare-fun lambda!335234 () Int)

(assert (=> bs!1524111 (= lambda!335234 lambda!335218)))

(declare-fun bs!1524112 () Bool)

(assert (= bs!1524112 (and d!1926151 d!1926133)))

(assert (=> bs!1524112 (= lambda!335234 lambda!335227)))

(declare-fun bs!1524113 () Bool)

(assert (= bs!1524113 (and d!1926151 d!1926135)))

(assert (=> bs!1524113 (= lambda!335234 lambda!335230)))

(declare-fun bs!1524114 () Bool)

(assert (= bs!1524114 (and d!1926151 d!1926137)))

(assert (=> bs!1524114 (= lambda!335234 lambda!335233)))

(assert (=> d!1926151 (= (inv!83474 lt!2333955) (forall!15212 (exprs!5975 lt!2333955) lambda!335234))))

(declare-fun bs!1524115 () Bool)

(assert (= bs!1524115 d!1926151))

(declare-fun m!6987954 () Bool)

(assert (=> bs!1524115 m!6987954))

(assert (=> b!6147166 d!1926151))

(assert (=> b!6147146 d!1926109))

(declare-fun bs!1524116 () Bool)

(declare-fun d!1926153 () Bool)

(assert (= bs!1524116 (and d!1926153 d!1926133)))

(declare-fun lambda!335235 () Int)

(assert (=> bs!1524116 (= lambda!335235 lambda!335227)))

(declare-fun bs!1524117 () Bool)

(assert (= bs!1524117 (and d!1926153 d!1926135)))

(assert (=> bs!1524117 (= lambda!335235 lambda!335230)))

(declare-fun bs!1524118 () Bool)

(assert (= bs!1524118 (and d!1926153 d!1926151)))

(assert (=> bs!1524118 (= lambda!335235 lambda!335234)))

(declare-fun bs!1524119 () Bool)

(assert (= bs!1524119 (and d!1926153 d!1926137)))

(assert (=> bs!1524119 (= lambda!335235 lambda!335233)))

(declare-fun bs!1524120 () Bool)

(assert (= bs!1524120 (and d!1926153 d!1926123)))

(assert (=> bs!1524120 (= lambda!335235 lambda!335218)))

(assert (=> d!1926153 (= (inv!83474 setElem!41606) (forall!15212 (exprs!5975 setElem!41606) lambda!335235))))

(declare-fun bs!1524121 () Bool)

(assert (= bs!1524121 d!1926153))

(declare-fun m!6987956 () Bool)

(assert (=> bs!1524121 m!6987956))

(assert (=> setNonEmpty!41606 d!1926153))

(declare-fun bm!511049 () Bool)

(declare-fun call!511055 () (InoxSet Context!10950))

(declare-fun call!511059 () (InoxSet Context!10950))

(assert (=> bm!511049 (= call!511055 call!511059)))

(declare-fun b!6147876 () Bool)

(declare-fun e!3746323 () (InoxSet Context!10950))

(declare-fun e!3746318 () (InoxSet Context!10950))

(assert (=> b!6147876 (= e!3746323 e!3746318)))

(declare-fun c!1106311 () Bool)

(assert (=> b!6147876 (= c!1106311 ((_ is Union!16091) (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun bm!511050 () Bool)

(declare-fun call!511054 () (InoxSet Context!10950))

(assert (=> bm!511050 (= call!511059 call!511054)))

(declare-fun bm!511051 () Bool)

(declare-fun call!511058 () List!64572)

(declare-fun call!511057 () List!64572)

(assert (=> bm!511051 (= call!511058 call!511057)))

(declare-fun b!6147877 () Bool)

(declare-fun e!3746319 () (InoxSet Context!10950))

(declare-fun e!3746321 () (InoxSet Context!10950))

(assert (=> b!6147877 (= e!3746319 e!3746321)))

(declare-fun c!1106307 () Bool)

(assert (=> b!6147877 (= c!1106307 ((_ is Concat!24936) (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6147878 () Bool)

(assert (=> b!6147878 (= e!3746323 (store ((as const (Array Context!10950 Bool)) false) lt!2333933 true))))

(declare-fun call!511056 () (InoxSet Context!10950))

(declare-fun bm!511052 () Bool)

(assert (=> bm!511052 (= call!511056 (derivationStepZipperDown!1339 (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343))))) (ite c!1106311 lt!2333933 (Context!10951 call!511057)) (h!70897 s!2326)))))

(declare-fun b!6147880 () Bool)

(declare-fun e!3746322 () (InoxSet Context!10950))

(assert (=> b!6147880 (= e!3746322 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6147881 () Bool)

(assert (=> b!6147881 (= e!3746319 ((_ map or) call!511056 call!511059))))

(declare-fun b!6147882 () Bool)

(assert (=> b!6147882 (= e!3746318 ((_ map or) call!511056 call!511054))))

(declare-fun bm!511053 () Bool)

(declare-fun c!1106310 () Bool)

(assert (=> bm!511053 (= call!511057 ($colon$colon!1968 (exprs!5975 lt!2333933) (ite (or c!1106310 c!1106307) (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (h!70896 (exprs!5975 (h!70898 zl!343))))))))

(declare-fun b!6147883 () Bool)

(assert (=> b!6147883 (= e!3746321 call!511055)))

(declare-fun d!1926155 () Bool)

(declare-fun c!1106309 () Bool)

(assert (=> d!1926155 (= c!1106309 (and ((_ is ElementMatch!16091) (h!70896 (exprs!5975 (h!70898 zl!343)))) (= (c!1106101 (h!70896 (exprs!5975 (h!70898 zl!343)))) (h!70897 s!2326))))))

(assert (=> d!1926155 (= (derivationStepZipperDown!1339 (h!70896 (exprs!5975 (h!70898 zl!343))) lt!2333933 (h!70897 s!2326)) e!3746323)))

(declare-fun b!6147879 () Bool)

(declare-fun c!1106308 () Bool)

(assert (=> b!6147879 (= c!1106308 ((_ is Star!16091) (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(assert (=> b!6147879 (= e!3746321 e!3746322)))

(declare-fun b!6147884 () Bool)

(assert (=> b!6147884 (= e!3746322 call!511055)))

(declare-fun b!6147885 () Bool)

(declare-fun e!3746320 () Bool)

(assert (=> b!6147885 (= c!1106310 e!3746320)))

(declare-fun res!2546820 () Bool)

(assert (=> b!6147885 (=> (not res!2546820) (not e!3746320))))

(assert (=> b!6147885 (= res!2546820 ((_ is Concat!24936) (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(assert (=> b!6147885 (= e!3746318 e!3746319)))

(declare-fun bm!511054 () Bool)

(assert (=> bm!511054 (= call!511054 (derivationStepZipperDown!1339 (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343))))))) (ite (or c!1106311 c!1106310) lt!2333933 (Context!10951 call!511058)) (h!70897 s!2326)))))

(declare-fun b!6147886 () Bool)

(assert (=> b!6147886 (= e!3746320 (nullable!6084 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343))))))))

(assert (= (and d!1926155 c!1106309) b!6147878))

(assert (= (and d!1926155 (not c!1106309)) b!6147876))

(assert (= (and b!6147876 c!1106311) b!6147882))

(assert (= (and b!6147876 (not c!1106311)) b!6147885))

(assert (= (and b!6147885 res!2546820) b!6147886))

(assert (= (and b!6147885 c!1106310) b!6147881))

(assert (= (and b!6147885 (not c!1106310)) b!6147877))

(assert (= (and b!6147877 c!1106307) b!6147883))

(assert (= (and b!6147877 (not c!1106307)) b!6147879))

(assert (= (and b!6147879 c!1106308) b!6147884))

(assert (= (and b!6147879 (not c!1106308)) b!6147880))

(assert (= (or b!6147883 b!6147884) bm!511051))

(assert (= (or b!6147883 b!6147884) bm!511049))

(assert (= (or b!6147881 bm!511051) bm!511053))

(assert (= (or b!6147881 bm!511049) bm!511050))

(assert (= (or b!6147882 bm!511050) bm!511054))

(assert (= (or b!6147882 b!6147881) bm!511052))

(declare-fun m!6987958 () Bool)

(assert (=> bm!511054 m!6987958))

(declare-fun m!6987960 () Bool)

(assert (=> bm!511053 m!6987960))

(declare-fun m!6987962 () Bool)

(assert (=> bm!511052 m!6987962))

(assert (=> b!6147878 m!6987848))

(declare-fun m!6987964 () Bool)

(assert (=> b!6147886 m!6987964))

(assert (=> b!6147154 d!1926155))

(declare-fun d!1926157 () Bool)

(assert (=> d!1926157 (= (nullable!6084 (h!70896 (exprs!5975 (h!70898 zl!343)))) (nullableFct!2048 (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun bs!1524122 () Bool)

(assert (= bs!1524122 d!1926157))

(declare-fun m!6987966 () Bool)

(assert (=> bs!1524122 m!6987966))

(assert (=> b!6147154 d!1926157))

(declare-fun b!6147887 () Bool)

(declare-fun e!3746324 () Bool)

(assert (=> b!6147887 (= e!3746324 (nullable!6084 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))))))

(declare-fun b!6147888 () Bool)

(declare-fun call!511060 () (InoxSet Context!10950))

(declare-fun e!3746325 () (InoxSet Context!10950))

(assert (=> b!6147888 (= e!3746325 ((_ map or) call!511060 (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (h!70897 s!2326))))))

(declare-fun b!6147889 () Bool)

(declare-fun e!3746326 () (InoxSet Context!10950))

(assert (=> b!6147889 (= e!3746326 call!511060)))

(declare-fun bm!511055 () Bool)

(assert (=> bm!511055 (= call!511060 (derivationStepZipperDown!1339 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))) (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (h!70897 s!2326)))))

(declare-fun b!6147890 () Bool)

(assert (=> b!6147890 (= e!3746326 ((as const (Array Context!10950 Bool)) false))))

(declare-fun d!1926159 () Bool)

(declare-fun c!1106313 () Bool)

(assert (=> d!1926159 (= c!1106313 e!3746324)))

(declare-fun res!2546821 () Bool)

(assert (=> d!1926159 (=> (not res!2546821) (not e!3746324))))

(assert (=> d!1926159 (= res!2546821 ((_ is Cons!64448) (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))))))

(assert (=> d!1926159 (= (derivationStepZipperUp!1265 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))) (h!70897 s!2326)) e!3746325)))

(declare-fun b!6147891 () Bool)

(assert (=> b!6147891 (= e!3746325 e!3746326)))

(declare-fun c!1106312 () Bool)

(assert (=> b!6147891 (= c!1106312 ((_ is Cons!64448) (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))))))

(assert (= (and d!1926159 res!2546821) b!6147887))

(assert (= (and d!1926159 c!1106313) b!6147888))

(assert (= (and d!1926159 (not c!1106313)) b!6147891))

(assert (= (and b!6147891 c!1106312) b!6147889))

(assert (= (and b!6147891 (not c!1106312)) b!6147890))

(assert (= (or b!6147888 b!6147889) bm!511055))

(declare-fun m!6987968 () Bool)

(assert (=> b!6147887 m!6987968))

(declare-fun m!6987970 () Bool)

(assert (=> b!6147888 m!6987970))

(declare-fun m!6987972 () Bool)

(assert (=> bm!511055 m!6987972))

(assert (=> b!6147154 d!1926159))

(declare-fun d!1926161 () Bool)

(assert (=> d!1926161 (= (flatMap!1596 z!1189 lambda!335177) (choose!45701 z!1189 lambda!335177))))

(declare-fun bs!1524123 () Bool)

(assert (= bs!1524123 d!1926161))

(declare-fun m!6987974 () Bool)

(assert (=> bs!1524123 m!6987974))

(assert (=> b!6147154 d!1926161))

(declare-fun b!6147892 () Bool)

(declare-fun e!3746327 () Bool)

(assert (=> b!6147892 (= e!3746327 (nullable!6084 (h!70896 (exprs!5975 lt!2333933))))))

(declare-fun call!511061 () (InoxSet Context!10950))

(declare-fun b!6147893 () Bool)

(declare-fun e!3746328 () (InoxSet Context!10950))

(assert (=> b!6147893 (= e!3746328 ((_ map or) call!511061 (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 lt!2333933))) (h!70897 s!2326))))))

(declare-fun b!6147894 () Bool)

(declare-fun e!3746329 () (InoxSet Context!10950))

(assert (=> b!6147894 (= e!3746329 call!511061)))

(declare-fun bm!511056 () Bool)

(assert (=> bm!511056 (= call!511061 (derivationStepZipperDown!1339 (h!70896 (exprs!5975 lt!2333933)) (Context!10951 (t!378057 (exprs!5975 lt!2333933))) (h!70897 s!2326)))))

(declare-fun b!6147895 () Bool)

(assert (=> b!6147895 (= e!3746329 ((as const (Array Context!10950 Bool)) false))))

(declare-fun d!1926163 () Bool)

(declare-fun c!1106315 () Bool)

(assert (=> d!1926163 (= c!1106315 e!3746327)))

(declare-fun res!2546822 () Bool)

(assert (=> d!1926163 (=> (not res!2546822) (not e!3746327))))

(assert (=> d!1926163 (= res!2546822 ((_ is Cons!64448) (exprs!5975 lt!2333933)))))

(assert (=> d!1926163 (= (derivationStepZipperUp!1265 lt!2333933 (h!70897 s!2326)) e!3746328)))

(declare-fun b!6147896 () Bool)

(assert (=> b!6147896 (= e!3746328 e!3746329)))

(declare-fun c!1106314 () Bool)

(assert (=> b!6147896 (= c!1106314 ((_ is Cons!64448) (exprs!5975 lt!2333933)))))

(assert (= (and d!1926163 res!2546822) b!6147892))

(assert (= (and d!1926163 c!1106315) b!6147893))

(assert (= (and d!1926163 (not c!1106315)) b!6147896))

(assert (= (and b!6147896 c!1106314) b!6147894))

(assert (= (and b!6147896 (not c!1106314)) b!6147895))

(assert (= (or b!6147893 b!6147894) bm!511056))

(declare-fun m!6987976 () Bool)

(assert (=> b!6147892 m!6987976))

(declare-fun m!6987978 () Bool)

(assert (=> b!6147893 m!6987978))

(declare-fun m!6987980 () Bool)

(assert (=> bm!511056 m!6987980))

(assert (=> b!6147154 d!1926163))

(declare-fun d!1926165 () Bool)

(assert (=> d!1926165 (= (flatMap!1596 z!1189 lambda!335177) (dynLambda!25402 lambda!335177 (h!70898 zl!343)))))

(declare-fun lt!2334046 () Unit!157525)

(assert (=> d!1926165 (= lt!2334046 (choose!45700 z!1189 (h!70898 zl!343) lambda!335177))))

(assert (=> d!1926165 (= z!1189 (store ((as const (Array Context!10950 Bool)) false) (h!70898 zl!343) true))))

(assert (=> d!1926165 (= (lemmaFlatMapOnSingletonSet!1122 z!1189 (h!70898 zl!343) lambda!335177) lt!2334046)))

(declare-fun b_lambda!233979 () Bool)

(assert (=> (not b_lambda!233979) (not d!1926165)))

(declare-fun bs!1524124 () Bool)

(assert (= bs!1524124 d!1926165))

(assert (=> bs!1524124 m!6987482))

(declare-fun m!6987982 () Bool)

(assert (=> bs!1524124 m!6987982))

(declare-fun m!6987984 () Bool)

(assert (=> bs!1524124 m!6987984))

(declare-fun m!6987986 () Bool)

(assert (=> bs!1524124 m!6987986))

(assert (=> b!6147154 d!1926165))

(declare-fun b!6147897 () Bool)

(declare-fun e!3746330 () Bool)

(assert (=> b!6147897 (= e!3746330 (nullable!6084 (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun call!511062 () (InoxSet Context!10950))

(declare-fun e!3746331 () (InoxSet Context!10950))

(declare-fun b!6147898 () Bool)

(assert (=> b!6147898 (= e!3746331 ((_ map or) call!511062 (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343)))) (h!70897 s!2326))))))

(declare-fun b!6147899 () Bool)

(declare-fun e!3746332 () (InoxSet Context!10950))

(assert (=> b!6147899 (= e!3746332 call!511062)))

(declare-fun bm!511057 () Bool)

(assert (=> bm!511057 (= call!511062 (derivationStepZipperDown!1339 (h!70896 (exprs!5975 (h!70898 zl!343))) (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343)))) (h!70897 s!2326)))))

(declare-fun b!6147900 () Bool)

(assert (=> b!6147900 (= e!3746332 ((as const (Array Context!10950 Bool)) false))))

(declare-fun d!1926167 () Bool)

(declare-fun c!1106317 () Bool)

(assert (=> d!1926167 (= c!1106317 e!3746330)))

(declare-fun res!2546823 () Bool)

(assert (=> d!1926167 (=> (not res!2546823) (not e!3746330))))

(assert (=> d!1926167 (= res!2546823 ((_ is Cons!64448) (exprs!5975 (h!70898 zl!343))))))

(assert (=> d!1926167 (= (derivationStepZipperUp!1265 (h!70898 zl!343) (h!70897 s!2326)) e!3746331)))

(declare-fun b!6147901 () Bool)

(assert (=> b!6147901 (= e!3746331 e!3746332)))

(declare-fun c!1106316 () Bool)

(assert (=> b!6147901 (= c!1106316 ((_ is Cons!64448) (exprs!5975 (h!70898 zl!343))))))

(assert (= (and d!1926167 res!2546823) b!6147897))

(assert (= (and d!1926167 c!1106317) b!6147898))

(assert (= (and d!1926167 (not c!1106317)) b!6147901))

(assert (= (and b!6147901 c!1106316) b!6147899))

(assert (= (and b!6147901 (not c!1106316)) b!6147900))

(assert (= (or b!6147898 b!6147899) bm!511057))

(assert (=> b!6147897 m!6987476))

(declare-fun m!6987988 () Bool)

(assert (=> b!6147898 m!6987988))

(declare-fun m!6987990 () Bool)

(assert (=> bm!511057 m!6987990))

(assert (=> b!6147154 d!1926167))

(declare-fun b!6147913 () Bool)

(declare-fun e!3746335 () Bool)

(declare-fun tp!1717311 () Bool)

(declare-fun tp!1717308 () Bool)

(assert (=> b!6147913 (= e!3746335 (and tp!1717311 tp!1717308))))

(declare-fun b!6147914 () Bool)

(declare-fun tp!1717310 () Bool)

(assert (=> b!6147914 (= e!3746335 tp!1717310)))

(assert (=> b!6147164 (= tp!1717235 e!3746335)))

(declare-fun b!6147915 () Bool)

(declare-fun tp!1717307 () Bool)

(declare-fun tp!1717309 () Bool)

(assert (=> b!6147915 (= e!3746335 (and tp!1717307 tp!1717309))))

(declare-fun b!6147912 () Bool)

(assert (=> b!6147912 (= e!3746335 tp_is_empty!41435)))

(assert (= (and b!6147164 ((_ is ElementMatch!16091) (regOne!32694 r!7292))) b!6147912))

(assert (= (and b!6147164 ((_ is Concat!24936) (regOne!32694 r!7292))) b!6147913))

(assert (= (and b!6147164 ((_ is Star!16091) (regOne!32694 r!7292))) b!6147914))

(assert (= (and b!6147164 ((_ is Union!16091) (regOne!32694 r!7292))) b!6147915))

(declare-fun b!6147917 () Bool)

(declare-fun e!3746336 () Bool)

(declare-fun tp!1717316 () Bool)

(declare-fun tp!1717313 () Bool)

(assert (=> b!6147917 (= e!3746336 (and tp!1717316 tp!1717313))))

(declare-fun b!6147918 () Bool)

(declare-fun tp!1717315 () Bool)

(assert (=> b!6147918 (= e!3746336 tp!1717315)))

(assert (=> b!6147164 (= tp!1717236 e!3746336)))

(declare-fun b!6147919 () Bool)

(declare-fun tp!1717312 () Bool)

(declare-fun tp!1717314 () Bool)

(assert (=> b!6147919 (= e!3746336 (and tp!1717312 tp!1717314))))

(declare-fun b!6147916 () Bool)

(assert (=> b!6147916 (= e!3746336 tp_is_empty!41435)))

(assert (= (and b!6147164 ((_ is ElementMatch!16091) (regTwo!32694 r!7292))) b!6147916))

(assert (= (and b!6147164 ((_ is Concat!24936) (regTwo!32694 r!7292))) b!6147917))

(assert (= (and b!6147164 ((_ is Star!16091) (regTwo!32694 r!7292))) b!6147918))

(assert (= (and b!6147164 ((_ is Union!16091) (regTwo!32694 r!7292))) b!6147919))

(declare-fun b!6147924 () Bool)

(declare-fun e!3746339 () Bool)

(declare-fun tp!1717321 () Bool)

(declare-fun tp!1717322 () Bool)

(assert (=> b!6147924 (= e!3746339 (and tp!1717321 tp!1717322))))

(assert (=> b!6147175 (= tp!1717238 e!3746339)))

(assert (= (and b!6147175 ((_ is Cons!64448) (exprs!5975 setElem!41606))) b!6147924))

(declare-fun b!6147926 () Bool)

(declare-fun e!3746340 () Bool)

(declare-fun tp!1717327 () Bool)

(declare-fun tp!1717324 () Bool)

(assert (=> b!6147926 (= e!3746340 (and tp!1717327 tp!1717324))))

(declare-fun b!6147927 () Bool)

(declare-fun tp!1717326 () Bool)

(assert (=> b!6147927 (= e!3746340 tp!1717326)))

(assert (=> b!6147174 (= tp!1717231 e!3746340)))

(declare-fun b!6147928 () Bool)

(declare-fun tp!1717323 () Bool)

(declare-fun tp!1717325 () Bool)

(assert (=> b!6147928 (= e!3746340 (and tp!1717323 tp!1717325))))

(declare-fun b!6147925 () Bool)

(assert (=> b!6147925 (= e!3746340 tp_is_empty!41435)))

(assert (= (and b!6147174 ((_ is ElementMatch!16091) (reg!16420 r!7292))) b!6147925))

(assert (= (and b!6147174 ((_ is Concat!24936) (reg!16420 r!7292))) b!6147926))

(assert (= (and b!6147174 ((_ is Star!16091) (reg!16420 r!7292))) b!6147927))

(assert (= (and b!6147174 ((_ is Union!16091) (reg!16420 r!7292))) b!6147928))

(declare-fun b!6147936 () Bool)

(declare-fun e!3746346 () Bool)

(declare-fun tp!1717332 () Bool)

(assert (=> b!6147936 (= e!3746346 tp!1717332)))

(declare-fun tp!1717333 () Bool)

(declare-fun e!3746345 () Bool)

(declare-fun b!6147935 () Bool)

(assert (=> b!6147935 (= e!3746345 (and (inv!83474 (h!70898 (t!378059 zl!343))) e!3746346 tp!1717333))))

(assert (=> b!6147163 (= tp!1717233 e!3746345)))

(assert (= b!6147935 b!6147936))

(assert (= (and b!6147163 ((_ is Cons!64450) (t!378059 zl!343))) b!6147935))

(declare-fun m!6987992 () Bool)

(assert (=> b!6147935 m!6987992))

(declare-fun condSetEmpty!41612 () Bool)

(assert (=> setNonEmpty!41606 (= condSetEmpty!41612 (= setRest!41606 ((as const (Array Context!10950 Bool)) false)))))

(declare-fun setRes!41612 () Bool)

(assert (=> setNonEmpty!41606 (= tp!1717237 setRes!41612)))

(declare-fun setIsEmpty!41612 () Bool)

(assert (=> setIsEmpty!41612 setRes!41612))

(declare-fun tp!1717339 () Bool)

(declare-fun setElem!41612 () Context!10950)

(declare-fun setNonEmpty!41612 () Bool)

(declare-fun e!3746349 () Bool)

(assert (=> setNonEmpty!41612 (= setRes!41612 (and tp!1717339 (inv!83474 setElem!41612) e!3746349))))

(declare-fun setRest!41612 () (InoxSet Context!10950))

(assert (=> setNonEmpty!41612 (= setRest!41606 ((_ map or) (store ((as const (Array Context!10950 Bool)) false) setElem!41612 true) setRest!41612))))

(declare-fun b!6147941 () Bool)

(declare-fun tp!1717338 () Bool)

(assert (=> b!6147941 (= e!3746349 tp!1717338)))

(assert (= (and setNonEmpty!41606 condSetEmpty!41612) setIsEmpty!41612))

(assert (= (and setNonEmpty!41606 (not condSetEmpty!41612)) setNonEmpty!41612))

(assert (= setNonEmpty!41612 b!6147941))

(declare-fun m!6987994 () Bool)

(assert (=> setNonEmpty!41612 m!6987994))

(declare-fun b!6147946 () Bool)

(declare-fun e!3746352 () Bool)

(declare-fun tp!1717342 () Bool)

(assert (=> b!6147946 (= e!3746352 (and tp_is_empty!41435 tp!1717342))))

(assert (=> b!6147160 (= tp!1717234 e!3746352)))

(assert (= (and b!6147160 ((_ is Cons!64449) (t!378058 s!2326))) b!6147946))

(declare-fun b!6147947 () Bool)

(declare-fun e!3746353 () Bool)

(declare-fun tp!1717343 () Bool)

(declare-fun tp!1717344 () Bool)

(assert (=> b!6147947 (= e!3746353 (and tp!1717343 tp!1717344))))

(assert (=> b!6147170 (= tp!1717229 e!3746353)))

(assert (= (and b!6147170 ((_ is Cons!64448) (exprs!5975 (h!70898 zl!343)))) b!6147947))

(declare-fun b!6147949 () Bool)

(declare-fun e!3746354 () Bool)

(declare-fun tp!1717349 () Bool)

(declare-fun tp!1717346 () Bool)

(assert (=> b!6147949 (= e!3746354 (and tp!1717349 tp!1717346))))

(declare-fun b!6147950 () Bool)

(declare-fun tp!1717348 () Bool)

(assert (=> b!6147950 (= e!3746354 tp!1717348)))

(assert (=> b!6147165 (= tp!1717230 e!3746354)))

(declare-fun b!6147951 () Bool)

(declare-fun tp!1717345 () Bool)

(declare-fun tp!1717347 () Bool)

(assert (=> b!6147951 (= e!3746354 (and tp!1717345 tp!1717347))))

(declare-fun b!6147948 () Bool)

(assert (=> b!6147948 (= e!3746354 tp_is_empty!41435)))

(assert (= (and b!6147165 ((_ is ElementMatch!16091) (regOne!32695 r!7292))) b!6147948))

(assert (= (and b!6147165 ((_ is Concat!24936) (regOne!32695 r!7292))) b!6147949))

(assert (= (and b!6147165 ((_ is Star!16091) (regOne!32695 r!7292))) b!6147950))

(assert (= (and b!6147165 ((_ is Union!16091) (regOne!32695 r!7292))) b!6147951))

(declare-fun b!6147953 () Bool)

(declare-fun e!3746355 () Bool)

(declare-fun tp!1717354 () Bool)

(declare-fun tp!1717351 () Bool)

(assert (=> b!6147953 (= e!3746355 (and tp!1717354 tp!1717351))))

(declare-fun b!6147954 () Bool)

(declare-fun tp!1717353 () Bool)

(assert (=> b!6147954 (= e!3746355 tp!1717353)))

(assert (=> b!6147165 (= tp!1717232 e!3746355)))

(declare-fun b!6147955 () Bool)

(declare-fun tp!1717350 () Bool)

(declare-fun tp!1717352 () Bool)

(assert (=> b!6147955 (= e!3746355 (and tp!1717350 tp!1717352))))

(declare-fun b!6147952 () Bool)

(assert (=> b!6147952 (= e!3746355 tp_is_empty!41435)))

(assert (= (and b!6147165 ((_ is ElementMatch!16091) (regTwo!32695 r!7292))) b!6147952))

(assert (= (and b!6147165 ((_ is Concat!24936) (regTwo!32695 r!7292))) b!6147953))

(assert (= (and b!6147165 ((_ is Star!16091) (regTwo!32695 r!7292))) b!6147954))

(assert (= (and b!6147165 ((_ is Union!16091) (regTwo!32695 r!7292))) b!6147955))

(declare-fun b_lambda!233981 () Bool)

(assert (= b_lambda!233979 (or b!6147154 b_lambda!233981)))

(declare-fun bs!1524125 () Bool)

(declare-fun d!1926169 () Bool)

(assert (= bs!1524125 (and d!1926169 b!6147154)))

(assert (=> bs!1524125 (= (dynLambda!25402 lambda!335177 (h!70898 zl!343)) (derivationStepZipperUp!1265 (h!70898 zl!343) (h!70897 s!2326)))))

(assert (=> bs!1524125 m!6987472))

(assert (=> d!1926165 d!1926169))

(declare-fun b_lambda!233983 () Bool)

(assert (= b_lambda!233977 (or b!6147154 b_lambda!233983)))

(declare-fun bs!1524126 () Bool)

(declare-fun d!1926171 () Bool)

(assert (= bs!1524126 (and d!1926171 b!6147154)))

(assert (=> bs!1524126 (= (dynLambda!25402 lambda!335177 lt!2333948) (derivationStepZipperUp!1265 lt!2333948 (h!70897 s!2326)))))

(assert (=> bs!1524126 m!6987460))

(assert (=> d!1926143 d!1926171))

(check-sat (not b!6147784) (not b!6147789) (not b!6147380) (not d!1926149) (not d!1926085) (not d!1926069) (not bm!511033) (not b!6147897) (not b!6147385) (not b!6147560) (not bm!511044) (not b!6147954) (not b!6147892) (not d!1926129) (not b!6147953) (not b!6147846) (not bm!511054) (not d!1926131) (not b!6147848) (not bm!511040) (not d!1926161) (not b!6147924) (not bm!511048) (not bs!1524126) (not b!6147941) (not b!6147871) (not b!6147893) (not b!6147917) (not d!1926157) (not d!1926099) (not b!6147549) (not b!6147568) (not b!6147946) (not bm!511047) (not setNonEmpty!41612) (not b_lambda!233981) (not b!6147888) (not b!6147887) (not bm!511020) (not b!6147847) (not b!6147561) (not b!6147699) (not b!6147622) (not b!6147677) (not b!6147632) (not bs!1524125) (not b!6147955) (not b!6147866) (not d!1926109) (not b!6147950) (not b!6147569) (not b!6147627) (not b!6147928) (not bm!511055) (not b!6147840) (not b!6147381) (not b!6147623) (not b!6147788) (not b!6147915) (not b!6147814) (not b!6147844) (not bm!511025) (not b!6147811) (not b!6147947) (not b!6147898) (not d!1926153) (not bm!511024) (not d!1926105) (not b!6147550) (not b!6147951) (not b!6147812) (not bm!511026) (not d!1926151) (not bm!511052) (not bm!511019) (not bm!511034) tp_is_empty!41435 (not b!6147626) (not bm!511057) (not d!1926113) (not bm!511018) (not d!1926097) (not b!6147854) (not b!6147914) (not b!6147818) (not b!6147817) (not b!6147926) (not b!6147745) (not d!1926137) (not b!6147783) (not d!1926107) (not b!6147625) (not d!1926165) (not d!1926133) (not d!1926115) (not d!1926143) (not b!6147631) (not b!6147913) (not bm!511053) (not b!6147872) (not b!6147867) (not b!6147565) (not b!6147810) (not b!6147564) (not b!6147845) (not b!6147781) (not b_lambda!233983) (not b!6147386) (not d!1926121) (not b!6147949) (not b!6147918) (not b!6147630) (not d!1926145) (not d!1926063) (not d!1926095) (not b!6147785) (not bm!511041) (not b!6147746) (not bm!511056) (not d!1926087) (not b!6147935) (not d!1926123) (not b!6147886) (not b!6147384) (not d!1926093) (not b!6147666) (not b!6147936) (not b!6147813) (not d!1926111) (not d!1926135) (not d!1926045) (not b!6147919) (not d!1926067) (not d!1926073) (not b!6147388) (not b!6147927) (not b!6147843) (not b!6147624) (not b!6147633))
(check-sat)
(get-model)

(declare-fun bm!511113 () Bool)

(declare-fun call!511119 () (InoxSet Context!10950))

(declare-fun call!511123 () (InoxSet Context!10950))

(assert (=> bm!511113 (= call!511119 call!511123)))

(declare-fun b!6148179 () Bool)

(declare-fun e!3746490 () (InoxSet Context!10950))

(declare-fun e!3746485 () (InoxSet Context!10950))

(assert (=> b!6148179 (= e!3746490 e!3746485)))

(declare-fun c!1106401 () Bool)

(assert (=> b!6148179 (= c!1106401 ((_ is Union!16091) (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun bm!511114 () Bool)

(declare-fun call!511118 () (InoxSet Context!10950))

(assert (=> bm!511114 (= call!511123 call!511118)))

(declare-fun bm!511115 () Bool)

(declare-fun call!511122 () List!64572)

(declare-fun call!511121 () List!64572)

(assert (=> bm!511115 (= call!511122 call!511121)))

(declare-fun b!6148180 () Bool)

(declare-fun e!3746486 () (InoxSet Context!10950))

(declare-fun e!3746488 () (InoxSet Context!10950))

(assert (=> b!6148180 (= e!3746486 e!3746488)))

(declare-fun c!1106397 () Bool)

(assert (=> b!6148180 (= c!1106397 ((_ is Concat!24936) (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6148181 () Bool)

(assert (=> b!6148181 (= e!3746490 (store ((as const (Array Context!10950 Bool)) false) (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343)))) true))))

(declare-fun call!511120 () (InoxSet Context!10950))

(declare-fun bm!511116 () Bool)

(assert (=> bm!511116 (= call!511120 (derivationStepZipperDown!1339 (ite c!1106401 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343))))) (ite c!1106401 (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343)))) (Context!10951 call!511121)) (h!70897 s!2326)))))

(declare-fun b!6148183 () Bool)

(declare-fun e!3746489 () (InoxSet Context!10950))

(assert (=> b!6148183 (= e!3746489 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6148184 () Bool)

(assert (=> b!6148184 (= e!3746486 ((_ map or) call!511120 call!511123))))

(declare-fun b!6148185 () Bool)

(assert (=> b!6148185 (= e!3746485 ((_ map or) call!511120 call!511118))))

(declare-fun bm!511117 () Bool)

(declare-fun c!1106400 () Bool)

(assert (=> bm!511117 (= call!511121 ($colon$colon!1968 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343))))) (ite (or c!1106400 c!1106397) (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (h!70896 (exprs!5975 (h!70898 zl!343))))))))

(declare-fun b!6148186 () Bool)

(assert (=> b!6148186 (= e!3746488 call!511119)))

(declare-fun d!1926305 () Bool)

(declare-fun c!1106399 () Bool)

(assert (=> d!1926305 (= c!1106399 (and ((_ is ElementMatch!16091) (h!70896 (exprs!5975 (h!70898 zl!343)))) (= (c!1106101 (h!70896 (exprs!5975 (h!70898 zl!343)))) (h!70897 s!2326))))))

(assert (=> d!1926305 (= (derivationStepZipperDown!1339 (h!70896 (exprs!5975 (h!70898 zl!343))) (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343)))) (h!70897 s!2326)) e!3746490)))

(declare-fun b!6148182 () Bool)

(declare-fun c!1106398 () Bool)

(assert (=> b!6148182 (= c!1106398 ((_ is Star!16091) (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(assert (=> b!6148182 (= e!3746488 e!3746489)))

(declare-fun b!6148187 () Bool)

(assert (=> b!6148187 (= e!3746489 call!511119)))

(declare-fun b!6148188 () Bool)

(declare-fun e!3746487 () Bool)

(assert (=> b!6148188 (= c!1106400 e!3746487)))

(declare-fun res!2546898 () Bool)

(assert (=> b!6148188 (=> (not res!2546898) (not e!3746487))))

(assert (=> b!6148188 (= res!2546898 ((_ is Concat!24936) (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(assert (=> b!6148188 (= e!3746485 e!3746486)))

(declare-fun bm!511118 () Bool)

(assert (=> bm!511118 (= call!511118 (derivationStepZipperDown!1339 (ite c!1106401 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106400 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106397 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343))))))) (ite (or c!1106401 c!1106400) (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343)))) (Context!10951 call!511122)) (h!70897 s!2326)))))

(declare-fun b!6148189 () Bool)

(assert (=> b!6148189 (= e!3746487 (nullable!6084 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343))))))))

(assert (= (and d!1926305 c!1106399) b!6148181))

(assert (= (and d!1926305 (not c!1106399)) b!6148179))

(assert (= (and b!6148179 c!1106401) b!6148185))

(assert (= (and b!6148179 (not c!1106401)) b!6148188))

(assert (= (and b!6148188 res!2546898) b!6148189))

(assert (= (and b!6148188 c!1106400) b!6148184))

(assert (= (and b!6148188 (not c!1106400)) b!6148180))

(assert (= (and b!6148180 c!1106397) b!6148186))

(assert (= (and b!6148180 (not c!1106397)) b!6148182))

(assert (= (and b!6148182 c!1106398) b!6148187))

(assert (= (and b!6148182 (not c!1106398)) b!6148183))

(assert (= (or b!6148186 b!6148187) bm!511115))

(assert (= (or b!6148186 b!6148187) bm!511113))

(assert (= (or b!6148184 bm!511115) bm!511117))

(assert (= (or b!6148184 bm!511113) bm!511114))

(assert (= (or b!6148185 bm!511114) bm!511118))

(assert (= (or b!6148185 b!6148184) bm!511116))

(declare-fun m!6988240 () Bool)

(assert (=> bm!511118 m!6988240))

(declare-fun m!6988242 () Bool)

(assert (=> bm!511117 m!6988242))

(declare-fun m!6988244 () Bool)

(assert (=> bm!511116 m!6988244))

(declare-fun m!6988246 () Bool)

(assert (=> b!6148181 m!6988246))

(assert (=> b!6148189 m!6987964))

(assert (=> bm!511057 d!1926305))

(declare-fun d!1926309 () Bool)

(assert (=> d!1926309 (= (isEmpty!36408 (t!378058 s!2326)) ((_ is Nil!64449) (t!378058 s!2326)))))

(assert (=> d!1926109 d!1926309))

(assert (=> bs!1524126 d!1926141))

(declare-fun b!6148211 () Bool)

(declare-fun e!3746503 () Bool)

(declare-fun e!3746508 () Bool)

(assert (=> b!6148211 (= e!3746503 e!3746508)))

(declare-fun res!2546905 () Bool)

(assert (=> b!6148211 (=> (not res!2546905) (not e!3746508))))

(declare-fun call!511131 () Bool)

(assert (=> b!6148211 (= res!2546905 call!511131)))

(declare-fun b!6148212 () Bool)

(declare-fun e!3746504 () Bool)

(declare-fun e!3746509 () Bool)

(assert (=> b!6148212 (= e!3746504 e!3746509)))

(declare-fun c!1106411 () Bool)

(assert (=> b!6148212 (= c!1106411 ((_ is Union!16091) lt!2334036))))

(declare-fun d!1926313 () Bool)

(declare-fun res!2546902 () Bool)

(declare-fun e!3746505 () Bool)

(assert (=> d!1926313 (=> res!2546902 e!3746505)))

(assert (=> d!1926313 (= res!2546902 ((_ is ElementMatch!16091) lt!2334036))))

(assert (=> d!1926313 (= (validRegex!7827 lt!2334036) e!3746505)))

(declare-fun b!6148213 () Bool)

(declare-fun e!3746507 () Bool)

(declare-fun call!511130 () Bool)

(assert (=> b!6148213 (= e!3746507 call!511130)))

(declare-fun b!6148214 () Bool)

(declare-fun e!3746506 () Bool)

(assert (=> b!6148214 (= e!3746504 e!3746506)))

(declare-fun res!2546904 () Bool)

(assert (=> b!6148214 (= res!2546904 (not (nullable!6084 (reg!16420 lt!2334036))))))

(assert (=> b!6148214 (=> (not res!2546904) (not e!3746506))))

(declare-fun call!511132 () Bool)

(declare-fun bm!511125 () Bool)

(declare-fun c!1106412 () Bool)

(assert (=> bm!511125 (= call!511132 (validRegex!7827 (ite c!1106412 (reg!16420 lt!2334036) (ite c!1106411 (regOne!32695 lt!2334036) (regOne!32694 lt!2334036)))))))

(declare-fun bm!511126 () Bool)

(assert (=> bm!511126 (= call!511130 (validRegex!7827 (ite c!1106411 (regTwo!32695 lt!2334036) (regTwo!32694 lt!2334036))))))

(declare-fun bm!511127 () Bool)

(assert (=> bm!511127 (= call!511131 call!511132)))

(declare-fun b!6148215 () Bool)

(declare-fun res!2546906 () Bool)

(assert (=> b!6148215 (=> res!2546906 e!3746503)))

(assert (=> b!6148215 (= res!2546906 (not ((_ is Concat!24936) lt!2334036)))))

(assert (=> b!6148215 (= e!3746509 e!3746503)))

(declare-fun b!6148216 () Bool)

(assert (=> b!6148216 (= e!3746505 e!3746504)))

(assert (=> b!6148216 (= c!1106412 ((_ is Star!16091) lt!2334036))))

(declare-fun b!6148217 () Bool)

(declare-fun res!2546903 () Bool)

(assert (=> b!6148217 (=> (not res!2546903) (not e!3746507))))

(assert (=> b!6148217 (= res!2546903 call!511131)))

(assert (=> b!6148217 (= e!3746509 e!3746507)))

(declare-fun b!6148218 () Bool)

(assert (=> b!6148218 (= e!3746508 call!511130)))

(declare-fun b!6148219 () Bool)

(assert (=> b!6148219 (= e!3746506 call!511132)))

(assert (= (and d!1926313 (not res!2546902)) b!6148216))

(assert (= (and b!6148216 c!1106412) b!6148214))

(assert (= (and b!6148216 (not c!1106412)) b!6148212))

(assert (= (and b!6148214 res!2546904) b!6148219))

(assert (= (and b!6148212 c!1106411) b!6148217))

(assert (= (and b!6148212 (not c!1106411)) b!6148215))

(assert (= (and b!6148217 res!2546903) b!6148213))

(assert (= (and b!6148215 (not res!2546906)) b!6148211))

(assert (= (and b!6148211 res!2546905) b!6148218))

(assert (= (or b!6148213 b!6148218) bm!511126))

(assert (= (or b!6148217 b!6148211) bm!511127))

(assert (= (or b!6148219 bm!511127) bm!511125))

(declare-fun m!6988266 () Bool)

(assert (=> b!6148214 m!6988266))

(declare-fun m!6988268 () Bool)

(assert (=> bm!511125 m!6988268))

(declare-fun m!6988270 () Bool)

(assert (=> bm!511126 m!6988270))

(assert (=> d!1926133 d!1926313))

(declare-fun d!1926315 () Bool)

(declare-fun res!2546914 () Bool)

(declare-fun e!3746521 () Bool)

(assert (=> d!1926315 (=> res!2546914 e!3746521)))

(assert (=> d!1926315 (= res!2546914 ((_ is Nil!64448) (exprs!5975 (h!70898 zl!343))))))

(assert (=> d!1926315 (= (forall!15212 (exprs!5975 (h!70898 zl!343)) lambda!335227) e!3746521)))

(declare-fun b!6148235 () Bool)

(declare-fun e!3746522 () Bool)

(assert (=> b!6148235 (= e!3746521 e!3746522)))

(declare-fun res!2546915 () Bool)

(assert (=> b!6148235 (=> (not res!2546915) (not e!3746522))))

(declare-fun dynLambda!25403 (Int Regex!16091) Bool)

(assert (=> b!6148235 (= res!2546915 (dynLambda!25403 lambda!335227 (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6148236 () Bool)

(assert (=> b!6148236 (= e!3746522 (forall!15212 (t!378057 (exprs!5975 (h!70898 zl!343))) lambda!335227))))

(assert (= (and d!1926315 (not res!2546914)) b!6148235))

(assert (= (and b!6148235 res!2546915) b!6148236))

(declare-fun b_lambda!233991 () Bool)

(assert (=> (not b_lambda!233991) (not b!6148235)))

(declare-fun m!6988284 () Bool)

(assert (=> b!6148235 m!6988284))

(declare-fun m!6988286 () Bool)

(assert (=> b!6148236 m!6988286))

(assert (=> d!1926133 d!1926315))

(declare-fun bm!511130 () Bool)

(declare-fun call!511136 () (InoxSet Context!10950))

(declare-fun call!511140 () (InoxSet Context!10950))

(assert (=> bm!511130 (= call!511136 call!511140)))

(declare-fun b!6148237 () Bool)

(declare-fun e!3746528 () (InoxSet Context!10950))

(declare-fun e!3746523 () (InoxSet Context!10950))

(assert (=> b!6148237 (= e!3746528 e!3746523)))

(declare-fun c!1106421 () Bool)

(assert (=> b!6148237 (= c!1106421 ((_ is Union!16091) (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292))))))))))

(declare-fun bm!511131 () Bool)

(declare-fun call!511135 () (InoxSet Context!10950))

(assert (=> bm!511131 (= call!511140 call!511135)))

(declare-fun bm!511132 () Bool)

(declare-fun call!511139 () List!64572)

(declare-fun call!511138 () List!64572)

(assert (=> bm!511132 (= call!511139 call!511138)))

(declare-fun b!6148238 () Bool)

(declare-fun e!3746524 () (InoxSet Context!10950))

(declare-fun e!3746526 () (InoxSet Context!10950))

(assert (=> b!6148238 (= e!3746524 e!3746526)))

(declare-fun c!1106417 () Bool)

(assert (=> b!6148238 (= c!1106417 ((_ is Concat!24936) (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292))))))))))

(declare-fun b!6148239 () Bool)

(assert (=> b!6148239 (= e!3746528 (store ((as const (Array Context!10950 Bool)) false) (ite (or c!1106239 c!1106238) lt!2333933 (Context!10951 call!511024)) true))))

(declare-fun bm!511133 () Bool)

(declare-fun call!511137 () (InoxSet Context!10950))

(assert (=> bm!511133 (= call!511137 (derivationStepZipperDown!1339 (ite c!1106421 (regOne!32695 (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292))))))) (regOne!32694 (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292)))))))) (ite c!1106421 (ite (or c!1106239 c!1106238) lt!2333933 (Context!10951 call!511024)) (Context!10951 call!511138)) (h!70897 s!2326)))))

(declare-fun b!6148241 () Bool)

(declare-fun e!3746527 () (InoxSet Context!10950))

(assert (=> b!6148241 (= e!3746527 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6148242 () Bool)

(assert (=> b!6148242 (= e!3746524 ((_ map or) call!511137 call!511140))))

(declare-fun b!6148243 () Bool)

(assert (=> b!6148243 (= e!3746523 ((_ map or) call!511137 call!511135))))

(declare-fun c!1106420 () Bool)

(declare-fun bm!511134 () Bool)

(assert (=> bm!511134 (= call!511138 ($colon$colon!1968 (exprs!5975 (ite (or c!1106239 c!1106238) lt!2333933 (Context!10951 call!511024))) (ite (or c!1106420 c!1106417) (regTwo!32694 (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292))))))) (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292)))))))))))

(declare-fun b!6148244 () Bool)

(assert (=> b!6148244 (= e!3746526 call!511136)))

(declare-fun d!1926321 () Bool)

(declare-fun c!1106419 () Bool)

(assert (=> d!1926321 (= c!1106419 (and ((_ is ElementMatch!16091) (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292))))))) (= (c!1106101 (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292))))))) (h!70897 s!2326))))))

(assert (=> d!1926321 (= (derivationStepZipperDown!1339 (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292)))))) (ite (or c!1106239 c!1106238) lt!2333933 (Context!10951 call!511024)) (h!70897 s!2326)) e!3746528)))

(declare-fun b!6148240 () Bool)

(declare-fun c!1106418 () Bool)

(assert (=> b!6148240 (= c!1106418 ((_ is Star!16091) (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292))))))))))

(assert (=> b!6148240 (= e!3746526 e!3746527)))

(declare-fun b!6148245 () Bool)

(assert (=> b!6148245 (= e!3746527 call!511136)))

(declare-fun b!6148246 () Bool)

(declare-fun e!3746525 () Bool)

(assert (=> b!6148246 (= c!1106420 e!3746525)))

(declare-fun res!2546916 () Bool)

(assert (=> b!6148246 (=> (not res!2546916) (not e!3746525))))

(assert (=> b!6148246 (= res!2546916 ((_ is Concat!24936) (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292))))))))))

(assert (=> b!6148246 (= e!3746523 e!3746524)))

(declare-fun bm!511135 () Bool)

(assert (=> bm!511135 (= call!511135 (derivationStepZipperDown!1339 (ite c!1106421 (regTwo!32695 (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292))))))) (ite c!1106420 (regTwo!32694 (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292))))))) (ite c!1106417 (regOne!32694 (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292))))))) (reg!16420 (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292)))))))))) (ite (or c!1106421 c!1106420) (ite (or c!1106239 c!1106238) lt!2333933 (Context!10951 call!511024)) (Context!10951 call!511139)) (h!70897 s!2326)))))

(declare-fun b!6148247 () Bool)

(assert (=> b!6148247 (= e!3746525 (nullable!6084 (regOne!32694 (ite c!1106239 (regTwo!32695 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106238 (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (ite c!1106235 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))) (reg!16420 (regTwo!32695 (regOne!32694 r!7292)))))))))))

(assert (= (and d!1926321 c!1106419) b!6148239))

(assert (= (and d!1926321 (not c!1106419)) b!6148237))

(assert (= (and b!6148237 c!1106421) b!6148243))

(assert (= (and b!6148237 (not c!1106421)) b!6148246))

(assert (= (and b!6148246 res!2546916) b!6148247))

(assert (= (and b!6148246 c!1106420) b!6148242))

(assert (= (and b!6148246 (not c!1106420)) b!6148238))

(assert (= (and b!6148238 c!1106417) b!6148244))

(assert (= (and b!6148238 (not c!1106417)) b!6148240))

(assert (= (and b!6148240 c!1106418) b!6148245))

(assert (= (and b!6148240 (not c!1106418)) b!6148241))

(assert (= (or b!6148244 b!6148245) bm!511132))

(assert (= (or b!6148244 b!6148245) bm!511130))

(assert (= (or b!6148242 bm!511132) bm!511134))

(assert (= (or b!6148242 bm!511130) bm!511131))

(assert (= (or b!6148243 bm!511131) bm!511135))

(assert (= (or b!6148243 b!6148242) bm!511133))

(declare-fun m!6988288 () Bool)

(assert (=> bm!511135 m!6988288))

(declare-fun m!6988290 () Bool)

(assert (=> bm!511134 m!6988290))

(declare-fun m!6988292 () Bool)

(assert (=> bm!511133 m!6988292))

(declare-fun m!6988294 () Bool)

(assert (=> b!6148239 m!6988294))

(declare-fun m!6988296 () Bool)

(assert (=> b!6148247 m!6988296))

(assert (=> bm!511020 d!1926321))

(declare-fun bs!1524250 () Bool)

(declare-fun b!6148249 () Bool)

(assert (= bs!1524250 (and b!6148249 b!6147747)))

(declare-fun lambda!335266 () Int)

(assert (=> bs!1524250 (not (= lambda!335266 lambda!335224))))

(declare-fun bs!1524251 () Bool)

(assert (= bs!1524251 (and b!6148249 b!6147738)))

(assert (=> bs!1524251 (= (and (= (reg!16420 (regOne!32695 r!7292)) (reg!16420 r!7292)) (= (regOne!32695 r!7292) r!7292)) (= lambda!335266 lambda!335223))))

(declare-fun bs!1524252 () Bool)

(assert (= bs!1524252 (and b!6148249 d!1926073)))

(assert (=> bs!1524252 (not (= lambda!335266 lambda!335211))))

(declare-fun bs!1524253 () Bool)

(assert (= bs!1524253 (and b!6148249 d!1926069)))

(assert (=> bs!1524253 (not (= lambda!335266 lambda!335205))))

(assert (=> bs!1524252 (not (= lambda!335266 lambda!335212))))

(declare-fun bs!1524254 () Bool)

(assert (= bs!1524254 (and b!6148249 b!6147159)))

(assert (=> bs!1524254 (not (= lambda!335266 lambda!335175))))

(assert (=> bs!1524254 (not (= lambda!335266 lambda!335176))))

(assert (=> b!6148249 true))

(assert (=> b!6148249 true))

(declare-fun bs!1524255 () Bool)

(declare-fun b!6148258 () Bool)

(assert (= bs!1524255 (and b!6148258 b!6147747)))

(declare-fun lambda!335267 () Int)

(assert (=> bs!1524255 (= (and (= (regOne!32694 (regOne!32695 r!7292)) (regOne!32694 r!7292)) (= (regTwo!32694 (regOne!32695 r!7292)) (regTwo!32694 r!7292))) (= lambda!335267 lambda!335224))))

(declare-fun bs!1524256 () Bool)

(assert (= bs!1524256 (and b!6148258 b!6147738)))

(assert (=> bs!1524256 (not (= lambda!335267 lambda!335223))))

(declare-fun bs!1524257 () Bool)

(assert (= bs!1524257 (and b!6148258 d!1926073)))

(assert (=> bs!1524257 (not (= lambda!335267 lambda!335211))))

(declare-fun bs!1524258 () Bool)

(assert (= bs!1524258 (and b!6148258 d!1926069)))

(assert (=> bs!1524258 (not (= lambda!335267 lambda!335205))))

(assert (=> bs!1524257 (= (and (= (regOne!32694 (regOne!32695 r!7292)) (regOne!32694 r!7292)) (= (regTwo!32694 (regOne!32695 r!7292)) (regTwo!32694 r!7292))) (= lambda!335267 lambda!335212))))

(declare-fun bs!1524261 () Bool)

(assert (= bs!1524261 (and b!6148258 b!6148249)))

(assert (=> bs!1524261 (not (= lambda!335267 lambda!335266))))

(declare-fun bs!1524264 () Bool)

(assert (= bs!1524264 (and b!6148258 b!6147159)))

(assert (=> bs!1524264 (not (= lambda!335267 lambda!335175))))

(assert (=> bs!1524264 (= (and (= (regOne!32694 (regOne!32695 r!7292)) (regOne!32694 r!7292)) (= (regTwo!32694 (regOne!32695 r!7292)) (regTwo!32694 r!7292))) (= lambda!335267 lambda!335176))))

(assert (=> b!6148258 true))

(assert (=> b!6148258 true))

(declare-fun b!6148248 () Bool)

(declare-fun e!3746529 () Bool)

(declare-fun e!3746535 () Bool)

(assert (=> b!6148248 (= e!3746529 e!3746535)))

(declare-fun c!1106424 () Bool)

(assert (=> b!6148248 (= c!1106424 ((_ is Star!16091) (regOne!32695 r!7292)))))

(declare-fun e!3746531 () Bool)

(declare-fun call!511142 () Bool)

(assert (=> b!6148249 (= e!3746531 call!511142)))

(declare-fun b!6148250 () Bool)

(declare-fun e!3746532 () Bool)

(declare-fun e!3746533 () Bool)

(assert (=> b!6148250 (= e!3746532 e!3746533)))

(declare-fun res!2546918 () Bool)

(assert (=> b!6148250 (= res!2546918 (not ((_ is EmptyLang!16091) (regOne!32695 r!7292))))))

(assert (=> b!6148250 (=> (not res!2546918) (not e!3746533))))

(declare-fun b!6148251 () Bool)

(declare-fun call!511141 () Bool)

(assert (=> b!6148251 (= e!3746532 call!511141)))

(declare-fun b!6148252 () Bool)

(declare-fun c!1106423 () Bool)

(assert (=> b!6148252 (= c!1106423 ((_ is Union!16091) (regOne!32695 r!7292)))))

(declare-fun e!3746534 () Bool)

(assert (=> b!6148252 (= e!3746534 e!3746529)))

(declare-fun b!6148253 () Bool)

(declare-fun res!2546919 () Bool)

(assert (=> b!6148253 (=> res!2546919 e!3746531)))

(assert (=> b!6148253 (= res!2546919 call!511141)))

(assert (=> b!6148253 (= e!3746535 e!3746531)))

(declare-fun bm!511136 () Bool)

(assert (=> bm!511136 (= call!511142 (Exists!3161 (ite c!1106424 lambda!335266 lambda!335267)))))

(declare-fun b!6148254 () Bool)

(declare-fun c!1106422 () Bool)

(assert (=> b!6148254 (= c!1106422 ((_ is ElementMatch!16091) (regOne!32695 r!7292)))))

(assert (=> b!6148254 (= e!3746533 e!3746534)))

(declare-fun b!6148255 () Bool)

(assert (=> b!6148255 (= e!3746534 (= s!2326 (Cons!64449 (c!1106101 (regOne!32695 r!7292)) Nil!64449)))))

(declare-fun b!6148256 () Bool)

(declare-fun e!3746530 () Bool)

(assert (=> b!6148256 (= e!3746529 e!3746530)))

(declare-fun res!2546917 () Bool)

(assert (=> b!6148256 (= res!2546917 (matchRSpec!3192 (regOne!32695 (regOne!32695 r!7292)) s!2326))))

(assert (=> b!6148256 (=> res!2546917 e!3746530)))

(declare-fun d!1926323 () Bool)

(declare-fun c!1106425 () Bool)

(assert (=> d!1926323 (= c!1106425 ((_ is EmptyExpr!16091) (regOne!32695 r!7292)))))

(assert (=> d!1926323 (= (matchRSpec!3192 (regOne!32695 r!7292) s!2326) e!3746532)))

(declare-fun b!6148257 () Bool)

(assert (=> b!6148257 (= e!3746530 (matchRSpec!3192 (regTwo!32695 (regOne!32695 r!7292)) s!2326))))

(assert (=> b!6148258 (= e!3746535 call!511142)))

(declare-fun bm!511137 () Bool)

(assert (=> bm!511137 (= call!511141 (isEmpty!36408 s!2326))))

(assert (= (and d!1926323 c!1106425) b!6148251))

(assert (= (and d!1926323 (not c!1106425)) b!6148250))

(assert (= (and b!6148250 res!2546918) b!6148254))

(assert (= (and b!6148254 c!1106422) b!6148255))

(assert (= (and b!6148254 (not c!1106422)) b!6148252))

(assert (= (and b!6148252 c!1106423) b!6148256))

(assert (= (and b!6148252 (not c!1106423)) b!6148248))

(assert (= (and b!6148256 (not res!2546917)) b!6148257))

(assert (= (and b!6148248 c!1106424) b!6148253))

(assert (= (and b!6148248 (not c!1106424)) b!6148258))

(assert (= (and b!6148253 (not res!2546919)) b!6148249))

(assert (= (or b!6148249 b!6148258) bm!511136))

(assert (= (or b!6148251 b!6148253) bm!511137))

(declare-fun m!6988324 () Bool)

(assert (=> bm!511136 m!6988324))

(declare-fun m!6988326 () Bool)

(assert (=> b!6148256 m!6988326))

(declare-fun m!6988328 () Bool)

(assert (=> b!6148257 m!6988328))

(assert (=> bm!511137 m!6987876))

(assert (=> b!6147745 d!1926323))

(declare-fun bm!511139 () Bool)

(declare-fun call!511145 () (InoxSet Context!10950))

(declare-fun call!511149 () (InoxSet Context!10950))

(assert (=> bm!511139 (= call!511145 call!511149)))

(declare-fun b!6148276 () Bool)

(declare-fun e!3746550 () (InoxSet Context!10950))

(declare-fun e!3746545 () (InoxSet Context!10950))

(assert (=> b!6148276 (= e!3746550 e!3746545)))

(declare-fun c!1106434 () Bool)

(assert (=> b!6148276 (= c!1106434 ((_ is Union!16091) (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))))))

(declare-fun bm!511140 () Bool)

(declare-fun call!511144 () (InoxSet Context!10950))

(assert (=> bm!511140 (= call!511149 call!511144)))

(declare-fun bm!511141 () Bool)

(declare-fun call!511148 () List!64572)

(declare-fun call!511147 () List!64572)

(assert (=> bm!511141 (= call!511148 call!511147)))

(declare-fun b!6148277 () Bool)

(declare-fun e!3746546 () (InoxSet Context!10950))

(declare-fun e!3746548 () (InoxSet Context!10950))

(assert (=> b!6148277 (= e!3746546 e!3746548)))

(declare-fun c!1106430 () Bool)

(assert (=> b!6148277 (= c!1106430 ((_ is Concat!24936) (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))))))

(declare-fun b!6148278 () Bool)

(assert (=> b!6148278 (= e!3746550 (store ((as const (Array Context!10950 Bool)) false) (ite c!1106244 lt!2333933 (Context!10951 call!511029)) true))))

(declare-fun call!511146 () (InoxSet Context!10950))

(declare-fun bm!511142 () Bool)

(assert (=> bm!511142 (= call!511146 (derivationStepZipperDown!1339 (ite c!1106434 (regOne!32695 (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))) (regOne!32694 (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292)))))) (ite c!1106434 (ite c!1106244 lt!2333933 (Context!10951 call!511029)) (Context!10951 call!511147)) (h!70897 s!2326)))))

(declare-fun b!6148280 () Bool)

(declare-fun e!3746549 () (InoxSet Context!10950))

(assert (=> b!6148280 (= e!3746549 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6148281 () Bool)

(assert (=> b!6148281 (= e!3746546 ((_ map or) call!511146 call!511149))))

(declare-fun b!6148282 () Bool)

(assert (=> b!6148282 (= e!3746545 ((_ map or) call!511146 call!511144))))

(declare-fun bm!511143 () Bool)

(declare-fun c!1106433 () Bool)

(assert (=> bm!511143 (= call!511147 ($colon$colon!1968 (exprs!5975 (ite c!1106244 lt!2333933 (Context!10951 call!511029))) (ite (or c!1106433 c!1106430) (regTwo!32694 (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))) (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292)))))))))

(declare-fun b!6148283 () Bool)

(assert (=> b!6148283 (= e!3746548 call!511145)))

(declare-fun d!1926333 () Bool)

(declare-fun c!1106432 () Bool)

(assert (=> d!1926333 (= c!1106432 (and ((_ is ElementMatch!16091) (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))) (= (c!1106101 (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))) (h!70897 s!2326))))))

(assert (=> d!1926333 (= (derivationStepZipperDown!1339 (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292)))) (ite c!1106244 lt!2333933 (Context!10951 call!511029)) (h!70897 s!2326)) e!3746550)))

(declare-fun b!6148279 () Bool)

(declare-fun c!1106431 () Bool)

(assert (=> b!6148279 (= c!1106431 ((_ is Star!16091) (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))))))

(assert (=> b!6148279 (= e!3746548 e!3746549)))

(declare-fun b!6148284 () Bool)

(assert (=> b!6148284 (= e!3746549 call!511145)))

(declare-fun b!6148285 () Bool)

(declare-fun e!3746547 () Bool)

(assert (=> b!6148285 (= c!1106433 e!3746547)))

(declare-fun res!2546929 () Bool)

(assert (=> b!6148285 (=> (not res!2546929) (not e!3746547))))

(assert (=> b!6148285 (= res!2546929 ((_ is Concat!24936) (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))))))

(assert (=> b!6148285 (= e!3746545 e!3746546)))

(declare-fun bm!511144 () Bool)

(assert (=> bm!511144 (= call!511144 (derivationStepZipperDown!1339 (ite c!1106434 (regTwo!32695 (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))) (ite c!1106433 (regTwo!32694 (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))) (ite c!1106430 (regOne!32694 (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))) (reg!16420 (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292)))))))) (ite (or c!1106434 c!1106433) (ite c!1106244 lt!2333933 (Context!10951 call!511029)) (Context!10951 call!511148)) (h!70897 s!2326)))))

(declare-fun b!6148286 () Bool)

(assert (=> b!6148286 (= e!3746547 (nullable!6084 (regOne!32694 (ite c!1106244 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292)))))))))

(assert (= (and d!1926333 c!1106432) b!6148278))

(assert (= (and d!1926333 (not c!1106432)) b!6148276))

(assert (= (and b!6148276 c!1106434) b!6148282))

(assert (= (and b!6148276 (not c!1106434)) b!6148285))

(assert (= (and b!6148285 res!2546929) b!6148286))

(assert (= (and b!6148285 c!1106433) b!6148281))

(assert (= (and b!6148285 (not c!1106433)) b!6148277))

(assert (= (and b!6148277 c!1106430) b!6148283))

(assert (= (and b!6148277 (not c!1106430)) b!6148279))

(assert (= (and b!6148279 c!1106431) b!6148284))

(assert (= (and b!6148279 (not c!1106431)) b!6148280))

(assert (= (or b!6148283 b!6148284) bm!511141))

(assert (= (or b!6148283 b!6148284) bm!511139))

(assert (= (or b!6148281 bm!511141) bm!511143))

(assert (= (or b!6148281 bm!511139) bm!511140))

(assert (= (or b!6148282 bm!511140) bm!511144))

(assert (= (or b!6148282 b!6148281) bm!511142))

(declare-fun m!6988342 () Bool)

(assert (=> bm!511144 m!6988342))

(declare-fun m!6988344 () Bool)

(assert (=> bm!511143 m!6988344))

(declare-fun m!6988346 () Bool)

(assert (=> bm!511142 m!6988346))

(declare-fun m!6988348 () Bool)

(assert (=> b!6148278 m!6988348))

(declare-fun m!6988350 () Bool)

(assert (=> b!6148286 m!6988350))

(assert (=> bm!511024 d!1926333))

(declare-fun d!1926343 () Bool)

(assert (=> d!1926343 (= ($colon$colon!1968 (exprs!5975 lt!2333933) (ite (or c!1106238 c!1106235) (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (regTwo!32695 (regOne!32694 r!7292)))) (Cons!64448 (ite (or c!1106238 c!1106235) (regTwo!32694 (regTwo!32695 (regOne!32694 r!7292))) (regTwo!32695 (regOne!32694 r!7292))) (exprs!5975 lt!2333933)))))

(assert (=> bm!511019 d!1926343))

(declare-fun b!6148343 () Bool)

(declare-fun e!3746587 () Bool)

(declare-fun e!3746591 () Bool)

(assert (=> b!6148343 (= e!3746587 e!3746591)))

(declare-fun res!2546958 () Bool)

(assert (=> b!6148343 (=> res!2546958 e!3746591)))

(assert (=> b!6148343 (= res!2546958 ((_ is Star!16091) (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6148344 () Bool)

(declare-fun e!3746589 () Bool)

(assert (=> b!6148344 (= e!3746589 e!3746587)))

(declare-fun res!2546955 () Bool)

(assert (=> b!6148344 (=> (not res!2546955) (not e!3746587))))

(assert (=> b!6148344 (= res!2546955 (and (not ((_ is EmptyLang!16091) (h!70896 (exprs!5975 (h!70898 zl!343))))) (not ((_ is ElementMatch!16091) (h!70896 (exprs!5975 (h!70898 zl!343)))))))))

(declare-fun bm!511162 () Bool)

(declare-fun call!511167 () Bool)

(declare-fun c!1106451 () Bool)

(assert (=> bm!511162 (= call!511167 (nullable!6084 (ite c!1106451 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))))))

(declare-fun d!1926347 () Bool)

(declare-fun res!2546954 () Bool)

(assert (=> d!1926347 (=> res!2546954 e!3746589)))

(assert (=> d!1926347 (= res!2546954 ((_ is EmptyExpr!16091) (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(assert (=> d!1926347 (= (nullableFct!2048 (h!70896 (exprs!5975 (h!70898 zl!343)))) e!3746589)))

(declare-fun b!6148345 () Bool)

(declare-fun e!3746592 () Bool)

(declare-fun call!511168 () Bool)

(assert (=> b!6148345 (= e!3746592 call!511168)))

(declare-fun b!6148346 () Bool)

(declare-fun e!3746588 () Bool)

(assert (=> b!6148346 (= e!3746591 e!3746588)))

(assert (=> b!6148346 (= c!1106451 ((_ is Union!16091) (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun bm!511163 () Bool)

(assert (=> bm!511163 (= call!511168 (nullable!6084 (ite c!1106451 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))))))

(declare-fun b!6148347 () Bool)

(declare-fun e!3746590 () Bool)

(assert (=> b!6148347 (= e!3746588 e!3746590)))

(declare-fun res!2546956 () Bool)

(assert (=> b!6148347 (= res!2546956 call!511167)))

(assert (=> b!6148347 (=> (not res!2546956) (not e!3746590))))

(declare-fun b!6148348 () Bool)

(assert (=> b!6148348 (= e!3746588 e!3746592)))

(declare-fun res!2546957 () Bool)

(assert (=> b!6148348 (= res!2546957 call!511167)))

(assert (=> b!6148348 (=> res!2546957 e!3746592)))

(declare-fun b!6148349 () Bool)

(assert (=> b!6148349 (= e!3746590 call!511168)))

(assert (= (and d!1926347 (not res!2546954)) b!6148344))

(assert (= (and b!6148344 res!2546955) b!6148343))

(assert (= (and b!6148343 (not res!2546958)) b!6148346))

(assert (= (and b!6148346 c!1106451) b!6148348))

(assert (= (and b!6148346 (not c!1106451)) b!6148347))

(assert (= (and b!6148348 (not res!2546957)) b!6148345))

(assert (= (and b!6148347 res!2546956) b!6148349))

(assert (= (or b!6148345 b!6148349) bm!511163))

(assert (= (or b!6148348 b!6148347) bm!511162))

(declare-fun m!6988390 () Bool)

(assert (=> bm!511162 m!6988390))

(declare-fun m!6988392 () Bool)

(assert (=> bm!511163 m!6988392))

(assert (=> d!1926157 d!1926347))

(declare-fun d!1926359 () Bool)

(assert (=> d!1926359 (= (head!12704 (unfocusZipperList!1512 zl!343)) (h!70896 (unfocusZipperList!1512 zl!343)))))

(assert (=> b!6147848 d!1926359))

(declare-fun bm!511164 () Bool)

(declare-fun call!511170 () (InoxSet Context!10950))

(declare-fun call!511174 () (InoxSet Context!10950))

(assert (=> bm!511164 (= call!511170 call!511174)))

(declare-fun b!6148350 () Bool)

(declare-fun e!3746598 () (InoxSet Context!10950))

(declare-fun e!3746593 () (InoxSet Context!10950))

(assert (=> b!6148350 (= e!3746598 e!3746593)))

(declare-fun c!1106456 () Bool)

(assert (=> b!6148350 (= c!1106456 ((_ is Union!16091) (h!70896 (exprs!5975 lt!2333955))))))

(declare-fun bm!511165 () Bool)

(declare-fun call!511169 () (InoxSet Context!10950))

(assert (=> bm!511165 (= call!511174 call!511169)))

(declare-fun bm!511166 () Bool)

(declare-fun call!511173 () List!64572)

(declare-fun call!511172 () List!64572)

(assert (=> bm!511166 (= call!511173 call!511172)))

(declare-fun b!6148351 () Bool)

(declare-fun e!3746594 () (InoxSet Context!10950))

(declare-fun e!3746596 () (InoxSet Context!10950))

(assert (=> b!6148351 (= e!3746594 e!3746596)))

(declare-fun c!1106452 () Bool)

(assert (=> b!6148351 (= c!1106452 ((_ is Concat!24936) (h!70896 (exprs!5975 lt!2333955))))))

(declare-fun b!6148352 () Bool)

(assert (=> b!6148352 (= e!3746598 (store ((as const (Array Context!10950 Bool)) false) (Context!10951 (t!378057 (exprs!5975 lt!2333955))) true))))

(declare-fun call!511171 () (InoxSet Context!10950))

(declare-fun bm!511167 () Bool)

(assert (=> bm!511167 (= call!511171 (derivationStepZipperDown!1339 (ite c!1106456 (regOne!32695 (h!70896 (exprs!5975 lt!2333955))) (regOne!32694 (h!70896 (exprs!5975 lt!2333955)))) (ite c!1106456 (Context!10951 (t!378057 (exprs!5975 lt!2333955))) (Context!10951 call!511172)) (h!70897 s!2326)))))

(declare-fun b!6148354 () Bool)

(declare-fun e!3746597 () (InoxSet Context!10950))

(assert (=> b!6148354 (= e!3746597 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6148355 () Bool)

(assert (=> b!6148355 (= e!3746594 ((_ map or) call!511171 call!511174))))

(declare-fun b!6148356 () Bool)

(assert (=> b!6148356 (= e!3746593 ((_ map or) call!511171 call!511169))))

(declare-fun bm!511168 () Bool)

(declare-fun c!1106455 () Bool)

(assert (=> bm!511168 (= call!511172 ($colon$colon!1968 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333955)))) (ite (or c!1106455 c!1106452) (regTwo!32694 (h!70896 (exprs!5975 lt!2333955))) (h!70896 (exprs!5975 lt!2333955)))))))

(declare-fun b!6148357 () Bool)

(assert (=> b!6148357 (= e!3746596 call!511170)))

(declare-fun d!1926361 () Bool)

(declare-fun c!1106454 () Bool)

(assert (=> d!1926361 (= c!1106454 (and ((_ is ElementMatch!16091) (h!70896 (exprs!5975 lt!2333955))) (= (c!1106101 (h!70896 (exprs!5975 lt!2333955))) (h!70897 s!2326))))))

(assert (=> d!1926361 (= (derivationStepZipperDown!1339 (h!70896 (exprs!5975 lt!2333955)) (Context!10951 (t!378057 (exprs!5975 lt!2333955))) (h!70897 s!2326)) e!3746598)))

(declare-fun b!6148353 () Bool)

(declare-fun c!1106453 () Bool)

(assert (=> b!6148353 (= c!1106453 ((_ is Star!16091) (h!70896 (exprs!5975 lt!2333955))))))

(assert (=> b!6148353 (= e!3746596 e!3746597)))

(declare-fun b!6148358 () Bool)

(assert (=> b!6148358 (= e!3746597 call!511170)))

(declare-fun b!6148359 () Bool)

(declare-fun e!3746595 () Bool)

(assert (=> b!6148359 (= c!1106455 e!3746595)))

(declare-fun res!2546959 () Bool)

(assert (=> b!6148359 (=> (not res!2546959) (not e!3746595))))

(assert (=> b!6148359 (= res!2546959 ((_ is Concat!24936) (h!70896 (exprs!5975 lt!2333955))))))

(assert (=> b!6148359 (= e!3746593 e!3746594)))

(declare-fun bm!511169 () Bool)

(assert (=> bm!511169 (= call!511169 (derivationStepZipperDown!1339 (ite c!1106456 (regTwo!32695 (h!70896 (exprs!5975 lt!2333955))) (ite c!1106455 (regTwo!32694 (h!70896 (exprs!5975 lt!2333955))) (ite c!1106452 (regOne!32694 (h!70896 (exprs!5975 lt!2333955))) (reg!16420 (h!70896 (exprs!5975 lt!2333955)))))) (ite (or c!1106456 c!1106455) (Context!10951 (t!378057 (exprs!5975 lt!2333955))) (Context!10951 call!511173)) (h!70897 s!2326)))))

(declare-fun b!6148360 () Bool)

(assert (=> b!6148360 (= e!3746595 (nullable!6084 (regOne!32694 (h!70896 (exprs!5975 lt!2333955)))))))

(assert (= (and d!1926361 c!1106454) b!6148352))

(assert (= (and d!1926361 (not c!1106454)) b!6148350))

(assert (= (and b!6148350 c!1106456) b!6148356))

(assert (= (and b!6148350 (not c!1106456)) b!6148359))

(assert (= (and b!6148359 res!2546959) b!6148360))

(assert (= (and b!6148359 c!1106455) b!6148355))

(assert (= (and b!6148359 (not c!1106455)) b!6148351))

(assert (= (and b!6148351 c!1106452) b!6148357))

(assert (= (and b!6148351 (not c!1106452)) b!6148353))

(assert (= (and b!6148353 c!1106453) b!6148358))

(assert (= (and b!6148353 (not c!1106453)) b!6148354))

(assert (= (or b!6148357 b!6148358) bm!511166))

(assert (= (or b!6148357 b!6148358) bm!511164))

(assert (= (or b!6148355 bm!511166) bm!511168))

(assert (= (or b!6148355 bm!511164) bm!511165))

(assert (= (or b!6148356 bm!511165) bm!511169))

(assert (= (or b!6148356 b!6148355) bm!511167))

(declare-fun m!6988394 () Bool)

(assert (=> bm!511169 m!6988394))

(declare-fun m!6988396 () Bool)

(assert (=> bm!511168 m!6988396))

(declare-fun m!6988398 () Bool)

(assert (=> bm!511167 m!6988398))

(declare-fun m!6988400 () Bool)

(assert (=> b!6148352 m!6988400))

(declare-fun m!6988402 () Bool)

(assert (=> b!6148360 m!6988402))

(assert (=> bm!511048 d!1926361))

(declare-fun bs!1524274 () Bool)

(declare-fun d!1926363 () Bool)

(assert (= bs!1524274 (and d!1926363 d!1926133)))

(declare-fun lambda!335270 () Int)

(assert (=> bs!1524274 (= lambda!335270 lambda!335227)))

(declare-fun bs!1524275 () Bool)

(assert (= bs!1524275 (and d!1926363 d!1926153)))

(assert (=> bs!1524275 (= lambda!335270 lambda!335235)))

(declare-fun bs!1524276 () Bool)

(assert (= bs!1524276 (and d!1926363 d!1926135)))

(assert (=> bs!1524276 (= lambda!335270 lambda!335230)))

(declare-fun bs!1524277 () Bool)

(assert (= bs!1524277 (and d!1926363 d!1926151)))

(assert (=> bs!1524277 (= lambda!335270 lambda!335234)))

(declare-fun bs!1524278 () Bool)

(assert (= bs!1524278 (and d!1926363 d!1926137)))

(assert (=> bs!1524278 (= lambda!335270 lambda!335233)))

(declare-fun bs!1524279 () Bool)

(assert (= bs!1524279 (and d!1926363 d!1926123)))

(assert (=> bs!1524279 (= lambda!335270 lambda!335218)))

(declare-fun b!6148375 () Bool)

(declare-fun e!3746611 () Bool)

(declare-fun e!3746616 () Bool)

(assert (=> b!6148375 (= e!3746611 e!3746616)))

(declare-fun c!1106459 () Bool)

(assert (=> b!6148375 (= c!1106459 (isEmpty!36404 (t!378057 (exprs!5975 (h!70898 zl!343)))))))

(assert (=> d!1926363 e!3746611))

(declare-fun res!2546971 () Bool)

(assert (=> d!1926363 (=> (not res!2546971) (not e!3746611))))

(declare-fun lt!2334060 () Regex!16091)

(assert (=> d!1926363 (= res!2546971 (validRegex!7827 lt!2334060))))

(declare-fun e!3746615 () Regex!16091)

(assert (=> d!1926363 (= lt!2334060 e!3746615)))

(declare-fun c!1106462 () Bool)

(declare-fun e!3746612 () Bool)

(assert (=> d!1926363 (= c!1106462 e!3746612)))

(declare-fun res!2546970 () Bool)

(assert (=> d!1926363 (=> (not res!2546970) (not e!3746612))))

(assert (=> d!1926363 (= res!2546970 ((_ is Cons!64448) (t!378057 (exprs!5975 (h!70898 zl!343)))))))

(assert (=> d!1926363 (forall!15212 (t!378057 (exprs!5975 (h!70898 zl!343))) lambda!335270)))

(assert (=> d!1926363 (= (generalisedConcat!1688 (t!378057 (exprs!5975 (h!70898 zl!343)))) lt!2334060)))

(declare-fun b!6148376 () Bool)

(declare-fun e!3746614 () Regex!16091)

(assert (=> b!6148376 (= e!3746614 (Concat!24936 (h!70896 (t!378057 (exprs!5975 (h!70898 zl!343)))) (generalisedConcat!1688 (t!378057 (t!378057 (exprs!5975 (h!70898 zl!343)))))))))

(declare-fun b!6148377 () Bool)

(declare-fun e!3746613 () Bool)

(assert (=> b!6148377 (= e!3746613 (isConcat!1030 lt!2334060))))

(declare-fun b!6148378 () Bool)

(assert (=> b!6148378 (= e!3746613 (= lt!2334060 (head!12704 (t!378057 (exprs!5975 (h!70898 zl!343))))))))

(declare-fun b!6148379 () Bool)

(assert (=> b!6148379 (= e!3746612 (isEmpty!36404 (t!378057 (t!378057 (exprs!5975 (h!70898 zl!343))))))))

(declare-fun b!6148380 () Bool)

(assert (=> b!6148380 (= e!3746615 (h!70896 (t!378057 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6148381 () Bool)

(assert (=> b!6148381 (= e!3746615 e!3746614)))

(declare-fun c!1106461 () Bool)

(assert (=> b!6148381 (= c!1106461 ((_ is Cons!64448) (t!378057 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6148382 () Bool)

(assert (=> b!6148382 (= e!3746616 (isEmptyExpr!1507 lt!2334060))))

(declare-fun b!6148383 () Bool)

(assert (=> b!6148383 (= e!3746616 e!3746613)))

(declare-fun c!1106460 () Bool)

(assert (=> b!6148383 (= c!1106460 (isEmpty!36404 (tail!11789 (t!378057 (exprs!5975 (h!70898 zl!343))))))))

(declare-fun b!6148384 () Bool)

(assert (=> b!6148384 (= e!3746614 EmptyExpr!16091)))

(assert (= (and d!1926363 res!2546970) b!6148379))

(assert (= (and d!1926363 c!1106462) b!6148380))

(assert (= (and d!1926363 (not c!1106462)) b!6148381))

(assert (= (and b!6148381 c!1106461) b!6148376))

(assert (= (and b!6148381 (not c!1106461)) b!6148384))

(assert (= (and d!1926363 res!2546971) b!6148375))

(assert (= (and b!6148375 c!1106459) b!6148382))

(assert (= (and b!6148375 (not c!1106459)) b!6148383))

(assert (= (and b!6148383 c!1106460) b!6148378))

(assert (= (and b!6148383 (not c!1106460)) b!6148377))

(declare-fun m!6988404 () Bool)

(assert (=> b!6148383 m!6988404))

(assert (=> b!6148383 m!6988404))

(declare-fun m!6988406 () Bool)

(assert (=> b!6148383 m!6988406))

(declare-fun m!6988408 () Bool)

(assert (=> b!6148379 m!6988408))

(declare-fun m!6988410 () Bool)

(assert (=> b!6148376 m!6988410))

(declare-fun m!6988412 () Bool)

(assert (=> d!1926363 m!6988412))

(declare-fun m!6988414 () Bool)

(assert (=> d!1926363 m!6988414))

(declare-fun m!6988416 () Bool)

(assert (=> b!6148377 m!6988416))

(assert (=> b!6148375 m!6987396))

(declare-fun m!6988418 () Bool)

(assert (=> b!6148378 m!6988418))

(declare-fun m!6988420 () Bool)

(assert (=> b!6148382 m!6988420))

(assert (=> b!6147811 d!1926363))

(assert (=> d!1926107 d!1926309))

(declare-fun d!1926365 () Bool)

(declare-fun c!1106463 () Bool)

(assert (=> d!1926365 (= c!1106463 (isEmpty!36408 (tail!11787 (t!378058 s!2326))))))

(declare-fun e!3746617 () Bool)

(assert (=> d!1926365 (= (matchZipper!2103 (derivationStepZipper!2064 lt!2333949 (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))) e!3746617)))

(declare-fun b!6148385 () Bool)

(assert (=> b!6148385 (= e!3746617 (nullableZipper!1872 (derivationStepZipper!2064 lt!2333949 (head!12702 (t!378058 s!2326)))))))

(declare-fun b!6148386 () Bool)

(assert (=> b!6148386 (= e!3746617 (matchZipper!2103 (derivationStepZipper!2064 (derivationStepZipper!2064 lt!2333949 (head!12702 (t!378058 s!2326))) (head!12702 (tail!11787 (t!378058 s!2326)))) (tail!11787 (tail!11787 (t!378058 s!2326)))))))

(assert (= (and d!1926365 c!1106463) b!6148385))

(assert (= (and d!1926365 (not c!1106463)) b!6148386))

(assert (=> d!1926365 m!6987778))

(declare-fun m!6988422 () Bool)

(assert (=> d!1926365 m!6988422))

(assert (=> b!6148385 m!6987790))

(declare-fun m!6988424 () Bool)

(assert (=> b!6148385 m!6988424))

(assert (=> b!6148386 m!6987778))

(declare-fun m!6988426 () Bool)

(assert (=> b!6148386 m!6988426))

(assert (=> b!6148386 m!6987790))

(assert (=> b!6148386 m!6988426))

(declare-fun m!6988428 () Bool)

(assert (=> b!6148386 m!6988428))

(assert (=> b!6148386 m!6987778))

(declare-fun m!6988430 () Bool)

(assert (=> b!6148386 m!6988430))

(assert (=> b!6148386 m!6988428))

(assert (=> b!6148386 m!6988430))

(declare-fun m!6988432 () Bool)

(assert (=> b!6148386 m!6988432))

(assert (=> b!6147561 d!1926365))

(declare-fun bs!1524280 () Bool)

(declare-fun d!1926367 () Bool)

(assert (= bs!1524280 (and d!1926367 b!6147154)))

(declare-fun lambda!335273 () Int)

(assert (=> bs!1524280 (= (= (head!12702 (t!378058 s!2326)) (h!70897 s!2326)) (= lambda!335273 lambda!335177))))

(assert (=> d!1926367 true))

(assert (=> d!1926367 (= (derivationStepZipper!2064 lt!2333949 (head!12702 (t!378058 s!2326))) (flatMap!1596 lt!2333949 lambda!335273))))

(declare-fun bs!1524281 () Bool)

(assert (= bs!1524281 d!1926367))

(declare-fun m!6988454 () Bool)

(assert (=> bs!1524281 m!6988454))

(assert (=> b!6147561 d!1926367))

(declare-fun d!1926377 () Bool)

(assert (=> d!1926377 (= (head!12702 (t!378058 s!2326)) (h!70897 (t!378058 s!2326)))))

(assert (=> b!6147561 d!1926377))

(declare-fun d!1926379 () Bool)

(assert (=> d!1926379 (= (tail!11787 (t!378058 s!2326)) (t!378058 (t!378058 s!2326)))))

(assert (=> b!6147561 d!1926379))

(declare-fun d!1926381 () Bool)

(assert (=> d!1926381 (= (head!12702 s!2326) (h!70897 s!2326))))

(assert (=> b!6147783 d!1926381))

(assert (=> d!1926131 d!1926129))

(assert (=> d!1926131 d!1926127))

(declare-fun d!1926385 () Bool)

(assert (=> d!1926385 (= (matchR!8274 r!7292 s!2326) (matchRSpec!3192 r!7292 s!2326))))

(assert (=> d!1926385 true))

(declare-fun _$88!4689 () Unit!157525)

(assert (=> d!1926385 (= (choose!45699 r!7292 s!2326) _$88!4689)))

(declare-fun bs!1524298 () Bool)

(assert (= bs!1524298 d!1926385))

(assert (=> bs!1524298 m!6987400))

(assert (=> bs!1524298 m!6987398))

(assert (=> d!1926131 d!1926385))

(assert (=> d!1926131 d!1926125))

(declare-fun d!1926397 () Bool)

(declare-fun c!1106477 () Bool)

(assert (=> d!1926397 (= c!1106477 (isEmpty!36408 (tail!11787 (t!378058 s!2326))))))

(declare-fun e!3746641 () Bool)

(assert (=> d!1926397 (= (matchZipper!2103 (derivationStepZipper!2064 ((_ map or) lt!2333954 lt!2333942) (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))) e!3746641)))

(declare-fun b!6148423 () Bool)

(assert (=> b!6148423 (= e!3746641 (nullableZipper!1872 (derivationStepZipper!2064 ((_ map or) lt!2333954 lt!2333942) (head!12702 (t!378058 s!2326)))))))

(declare-fun b!6148424 () Bool)

(assert (=> b!6148424 (= e!3746641 (matchZipper!2103 (derivationStepZipper!2064 (derivationStepZipper!2064 ((_ map or) lt!2333954 lt!2333942) (head!12702 (t!378058 s!2326))) (head!12702 (tail!11787 (t!378058 s!2326)))) (tail!11787 (tail!11787 (t!378058 s!2326)))))))

(assert (= (and d!1926397 c!1106477) b!6148423))

(assert (= (and d!1926397 (not c!1106477)) b!6148424))

(assert (=> d!1926397 m!6987778))

(assert (=> d!1926397 m!6988422))

(assert (=> b!6148423 m!6987818))

(declare-fun m!6988468 () Bool)

(assert (=> b!6148423 m!6988468))

(assert (=> b!6148424 m!6987778))

(assert (=> b!6148424 m!6988426))

(assert (=> b!6148424 m!6987818))

(assert (=> b!6148424 m!6988426))

(declare-fun m!6988470 () Bool)

(assert (=> b!6148424 m!6988470))

(assert (=> b!6148424 m!6987778))

(assert (=> b!6148424 m!6988430))

(assert (=> b!6148424 m!6988470))

(assert (=> b!6148424 m!6988430))

(declare-fun m!6988472 () Bool)

(assert (=> b!6148424 m!6988472))

(assert (=> b!6147625 d!1926397))

(declare-fun bs!1524299 () Bool)

(declare-fun d!1926399 () Bool)

(assert (= bs!1524299 (and d!1926399 b!6147154)))

(declare-fun lambda!335276 () Int)

(assert (=> bs!1524299 (= (= (head!12702 (t!378058 s!2326)) (h!70897 s!2326)) (= lambda!335276 lambda!335177))))

(declare-fun bs!1524300 () Bool)

(assert (= bs!1524300 (and d!1926399 d!1926367)))

(assert (=> bs!1524300 (= lambda!335276 lambda!335273)))

(assert (=> d!1926399 true))

(assert (=> d!1926399 (= (derivationStepZipper!2064 ((_ map or) lt!2333954 lt!2333942) (head!12702 (t!378058 s!2326))) (flatMap!1596 ((_ map or) lt!2333954 lt!2333942) lambda!335276))))

(declare-fun bs!1524301 () Bool)

(assert (= bs!1524301 d!1926399))

(declare-fun m!6988484 () Bool)

(assert (=> bs!1524301 m!6988484))

(assert (=> b!6147625 d!1926399))

(assert (=> b!6147625 d!1926377))

(assert (=> b!6147625 d!1926379))

(declare-fun d!1926403 () Bool)

(declare-fun lambda!335279 () Int)

(declare-fun exists!2437 ((InoxSet Context!10950) Int) Bool)

(assert (=> d!1926403 (= (nullableZipper!1872 ((_ map or) lt!2333949 lt!2333942)) (exists!2437 ((_ map or) lt!2333949 lt!2333942) lambda!335279))))

(declare-fun bs!1524303 () Bool)

(assert (= bs!1524303 d!1926403))

(declare-fun m!6988496 () Bool)

(assert (=> bs!1524303 m!6988496))

(assert (=> b!6147632 d!1926403))

(assert (=> b!6147623 d!1926087))

(assert (=> d!1926093 d!1926309))

(declare-fun d!1926421 () Bool)

(assert (=> d!1926421 (= (isEmpty!36404 (unfocusZipperList!1512 zl!343)) ((_ is Nil!64448) (unfocusZipperList!1512 zl!343)))))

(assert (=> b!6147844 d!1926421))

(declare-fun bm!511192 () Bool)

(declare-fun call!511198 () (InoxSet Context!10950))

(declare-fun call!511202 () (InoxSet Context!10950))

(assert (=> bm!511192 (= call!511198 call!511202)))

(declare-fun b!6148452 () Bool)

(declare-fun e!3746662 () (InoxSet Context!10950))

(declare-fun e!3746657 () (InoxSet Context!10950))

(assert (=> b!6148452 (= e!3746662 e!3746657)))

(declare-fun c!1106492 () Bool)

(assert (=> b!6148452 (= c!1106492 ((_ is Union!16091) (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292))))))))))

(declare-fun bm!511193 () Bool)

(declare-fun call!511197 () (InoxSet Context!10950))

(assert (=> bm!511193 (= call!511202 call!511197)))

(declare-fun bm!511194 () Bool)

(declare-fun call!511201 () List!64572)

(declare-fun call!511200 () List!64572)

(assert (=> bm!511194 (= call!511201 call!511200)))

(declare-fun b!6148453 () Bool)

(declare-fun e!3746658 () (InoxSet Context!10950))

(declare-fun e!3746660 () (InoxSet Context!10950))

(assert (=> b!6148453 (= e!3746658 e!3746660)))

(declare-fun c!1106488 () Bool)

(assert (=> b!6148453 (= c!1106488 ((_ is Concat!24936) (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292))))))))))

(declare-fun b!6148454 () Bool)

(assert (=> b!6148454 (= e!3746662 (store ((as const (Array Context!10950 Bool)) false) (ite (or c!1106244 c!1106243) lt!2333933 (Context!10951 call!511030)) true))))

(declare-fun bm!511195 () Bool)

(declare-fun call!511199 () (InoxSet Context!10950))

(assert (=> bm!511195 (= call!511199 (derivationStepZipperDown!1339 (ite c!1106492 (regOne!32695 (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292))))))) (regOne!32694 (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292)))))))) (ite c!1106492 (ite (or c!1106244 c!1106243) lt!2333933 (Context!10951 call!511030)) (Context!10951 call!511200)) (h!70897 s!2326)))))

(declare-fun b!6148456 () Bool)

(declare-fun e!3746661 () (InoxSet Context!10950))

(assert (=> b!6148456 (= e!3746661 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6148457 () Bool)

(assert (=> b!6148457 (= e!3746658 ((_ map or) call!511199 call!511202))))

(declare-fun b!6148458 () Bool)

(assert (=> b!6148458 (= e!3746657 ((_ map or) call!511199 call!511197))))

(declare-fun bm!511196 () Bool)

(declare-fun c!1106491 () Bool)

(assert (=> bm!511196 (= call!511200 ($colon$colon!1968 (exprs!5975 (ite (or c!1106244 c!1106243) lt!2333933 (Context!10951 call!511030))) (ite (or c!1106491 c!1106488) (regTwo!32694 (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292))))))) (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292)))))))))))

(declare-fun b!6148459 () Bool)

(assert (=> b!6148459 (= e!3746660 call!511198)))

(declare-fun c!1106490 () Bool)

(declare-fun d!1926423 () Bool)

(assert (=> d!1926423 (= c!1106490 (and ((_ is ElementMatch!16091) (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292))))))) (= (c!1106101 (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292))))))) (h!70897 s!2326))))))

(assert (=> d!1926423 (= (derivationStepZipperDown!1339 (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292)))))) (ite (or c!1106244 c!1106243) lt!2333933 (Context!10951 call!511030)) (h!70897 s!2326)) e!3746662)))

(declare-fun c!1106489 () Bool)

(declare-fun b!6148455 () Bool)

(assert (=> b!6148455 (= c!1106489 ((_ is Star!16091) (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292))))))))))

(assert (=> b!6148455 (= e!3746660 e!3746661)))

(declare-fun b!6148460 () Bool)

(assert (=> b!6148460 (= e!3746661 call!511198)))

(declare-fun b!6148461 () Bool)

(declare-fun e!3746659 () Bool)

(assert (=> b!6148461 (= c!1106491 e!3746659)))

(declare-fun res!2546995 () Bool)

(assert (=> b!6148461 (=> (not res!2546995) (not e!3746659))))

(assert (=> b!6148461 (= res!2546995 ((_ is Concat!24936) (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292))))))))))

(assert (=> b!6148461 (= e!3746657 e!3746658)))

(declare-fun bm!511197 () Bool)

(assert (=> bm!511197 (= call!511197 (derivationStepZipperDown!1339 (ite c!1106492 (regTwo!32695 (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292))))))) (ite c!1106491 (regTwo!32694 (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292))))))) (ite c!1106488 (regOne!32694 (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292))))))) (reg!16420 (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292)))))))))) (ite (or c!1106492 c!1106491) (ite (or c!1106244 c!1106243) lt!2333933 (Context!10951 call!511030)) (Context!10951 call!511201)) (h!70897 s!2326)))))

(declare-fun b!6148462 () Bool)

(assert (=> b!6148462 (= e!3746659 (nullable!6084 (regOne!32694 (ite c!1106244 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106243 (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (ite c!1106240 (regOne!32694 (regOne!32695 (regOne!32694 r!7292))) (reg!16420 (regOne!32695 (regOne!32694 r!7292)))))))))))

(assert (= (and d!1926423 c!1106490) b!6148454))

(assert (= (and d!1926423 (not c!1106490)) b!6148452))

(assert (= (and b!6148452 c!1106492) b!6148458))

(assert (= (and b!6148452 (not c!1106492)) b!6148461))

(assert (= (and b!6148461 res!2546995) b!6148462))

(assert (= (and b!6148461 c!1106491) b!6148457))

(assert (= (and b!6148461 (not c!1106491)) b!6148453))

(assert (= (and b!6148453 c!1106488) b!6148459))

(assert (= (and b!6148453 (not c!1106488)) b!6148455))

(assert (= (and b!6148455 c!1106489) b!6148460))

(assert (= (and b!6148455 (not c!1106489)) b!6148456))

(assert (= (or b!6148459 b!6148460) bm!511194))

(assert (= (or b!6148459 b!6148460) bm!511192))

(assert (= (or b!6148457 bm!511194) bm!511196))

(assert (= (or b!6148457 bm!511192) bm!511193))

(assert (= (or b!6148458 bm!511193) bm!511197))

(assert (= (or b!6148458 b!6148457) bm!511195))

(declare-fun m!6988508 () Bool)

(assert (=> bm!511197 m!6988508))

(declare-fun m!6988510 () Bool)

(assert (=> bm!511196 m!6988510))

(declare-fun m!6988512 () Bool)

(assert (=> bm!511195 m!6988512))

(declare-fun m!6988514 () Bool)

(assert (=> b!6148454 m!6988514))

(declare-fun m!6988516 () Bool)

(assert (=> b!6148462 m!6988516))

(assert (=> bm!511026 d!1926423))

(declare-fun bm!511201 () Bool)

(declare-fun call!511207 () (InoxSet Context!10950))

(declare-fun call!511211 () (InoxSet Context!10950))

(assert (=> bm!511201 (= call!511207 call!511211)))

(declare-fun b!6148472 () Bool)

(declare-fun e!3746675 () (InoxSet Context!10950))

(declare-fun e!3746670 () (InoxSet Context!10950))

(assert (=> b!6148472 (= e!3746675 e!3746670)))

(declare-fun c!1106499 () Bool)

(assert (=> b!6148472 (= c!1106499 ((_ is Union!16091) (h!70896 (exprs!5975 lt!2333933))))))

(declare-fun bm!511202 () Bool)

(declare-fun call!511206 () (InoxSet Context!10950))

(assert (=> bm!511202 (= call!511211 call!511206)))

(declare-fun bm!511203 () Bool)

(declare-fun call!511210 () List!64572)

(declare-fun call!511209 () List!64572)

(assert (=> bm!511203 (= call!511210 call!511209)))

(declare-fun b!6148473 () Bool)

(declare-fun e!3746671 () (InoxSet Context!10950))

(declare-fun e!3746673 () (InoxSet Context!10950))

(assert (=> b!6148473 (= e!3746671 e!3746673)))

(declare-fun c!1106495 () Bool)

(assert (=> b!6148473 (= c!1106495 ((_ is Concat!24936) (h!70896 (exprs!5975 lt!2333933))))))

(declare-fun b!6148474 () Bool)

(assert (=> b!6148474 (= e!3746675 (store ((as const (Array Context!10950 Bool)) false) (Context!10951 (t!378057 (exprs!5975 lt!2333933))) true))))

(declare-fun call!511208 () (InoxSet Context!10950))

(declare-fun bm!511204 () Bool)

(assert (=> bm!511204 (= call!511208 (derivationStepZipperDown!1339 (ite c!1106499 (regOne!32695 (h!70896 (exprs!5975 lt!2333933))) (regOne!32694 (h!70896 (exprs!5975 lt!2333933)))) (ite c!1106499 (Context!10951 (t!378057 (exprs!5975 lt!2333933))) (Context!10951 call!511209)) (h!70897 s!2326)))))

(declare-fun b!6148476 () Bool)

(declare-fun e!3746674 () (InoxSet Context!10950))

(assert (=> b!6148476 (= e!3746674 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6148477 () Bool)

(assert (=> b!6148477 (= e!3746671 ((_ map or) call!511208 call!511211))))

(declare-fun b!6148478 () Bool)

(assert (=> b!6148478 (= e!3746670 ((_ map or) call!511208 call!511206))))

(declare-fun c!1106498 () Bool)

(declare-fun bm!511205 () Bool)

(assert (=> bm!511205 (= call!511209 ($colon$colon!1968 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333933)))) (ite (or c!1106498 c!1106495) (regTwo!32694 (h!70896 (exprs!5975 lt!2333933))) (h!70896 (exprs!5975 lt!2333933)))))))

(declare-fun b!6148479 () Bool)

(assert (=> b!6148479 (= e!3746673 call!511207)))

(declare-fun d!1926427 () Bool)

(declare-fun c!1106497 () Bool)

(assert (=> d!1926427 (= c!1106497 (and ((_ is ElementMatch!16091) (h!70896 (exprs!5975 lt!2333933))) (= (c!1106101 (h!70896 (exprs!5975 lt!2333933))) (h!70897 s!2326))))))

(assert (=> d!1926427 (= (derivationStepZipperDown!1339 (h!70896 (exprs!5975 lt!2333933)) (Context!10951 (t!378057 (exprs!5975 lt!2333933))) (h!70897 s!2326)) e!3746675)))

(declare-fun b!6148475 () Bool)

(declare-fun c!1106496 () Bool)

(assert (=> b!6148475 (= c!1106496 ((_ is Star!16091) (h!70896 (exprs!5975 lt!2333933))))))

(assert (=> b!6148475 (= e!3746673 e!3746674)))

(declare-fun b!6148480 () Bool)

(assert (=> b!6148480 (= e!3746674 call!511207)))

(declare-fun b!6148481 () Bool)

(declare-fun e!3746672 () Bool)

(assert (=> b!6148481 (= c!1106498 e!3746672)))

(declare-fun res!2547001 () Bool)

(assert (=> b!6148481 (=> (not res!2547001) (not e!3746672))))

(assert (=> b!6148481 (= res!2547001 ((_ is Concat!24936) (h!70896 (exprs!5975 lt!2333933))))))

(assert (=> b!6148481 (= e!3746670 e!3746671)))

(declare-fun bm!511206 () Bool)

(assert (=> bm!511206 (= call!511206 (derivationStepZipperDown!1339 (ite c!1106499 (regTwo!32695 (h!70896 (exprs!5975 lt!2333933))) (ite c!1106498 (regTwo!32694 (h!70896 (exprs!5975 lt!2333933))) (ite c!1106495 (regOne!32694 (h!70896 (exprs!5975 lt!2333933))) (reg!16420 (h!70896 (exprs!5975 lt!2333933)))))) (ite (or c!1106499 c!1106498) (Context!10951 (t!378057 (exprs!5975 lt!2333933))) (Context!10951 call!511210)) (h!70897 s!2326)))))

(declare-fun b!6148482 () Bool)

(assert (=> b!6148482 (= e!3746672 (nullable!6084 (regOne!32694 (h!70896 (exprs!5975 lt!2333933)))))))

(assert (= (and d!1926427 c!1106497) b!6148474))

(assert (= (and d!1926427 (not c!1106497)) b!6148472))

(assert (= (and b!6148472 c!1106499) b!6148478))

(assert (= (and b!6148472 (not c!1106499)) b!6148481))

(assert (= (and b!6148481 res!2547001) b!6148482))

(assert (= (and b!6148481 c!1106498) b!6148477))

(assert (= (and b!6148481 (not c!1106498)) b!6148473))

(assert (= (and b!6148473 c!1106495) b!6148479))

(assert (= (and b!6148473 (not c!1106495)) b!6148475))

(assert (= (and b!6148475 c!1106496) b!6148480))

(assert (= (and b!6148475 (not c!1106496)) b!6148476))

(assert (= (or b!6148479 b!6148480) bm!511203))

(assert (= (or b!6148479 b!6148480) bm!511201))

(assert (= (or b!6148477 bm!511203) bm!511205))

(assert (= (or b!6148477 bm!511201) bm!511202))

(assert (= (or b!6148478 bm!511202) bm!511206))

(assert (= (or b!6148478 b!6148477) bm!511204))

(declare-fun m!6988528 () Bool)

(assert (=> bm!511206 m!6988528))

(declare-fun m!6988530 () Bool)

(assert (=> bm!511205 m!6988530))

(declare-fun m!6988532 () Bool)

(assert (=> bm!511204 m!6988532))

(declare-fun m!6988534 () Bool)

(assert (=> b!6148474 m!6988534))

(declare-fun m!6988536 () Bool)

(assert (=> b!6148482 m!6988536))

(assert (=> bm!511056 d!1926427))

(declare-fun d!1926433 () Bool)

(assert (=> d!1926433 true))

(assert (=> d!1926433 true))

(declare-fun res!2547011 () Bool)

(assert (=> d!1926433 (= (choose!45690 lambda!335176) res!2547011)))

(assert (=> d!1926067 d!1926433))

(declare-fun d!1926441 () Bool)

(assert (=> d!1926441 (= (nullable!6084 (reg!16420 r!7292)) (nullableFct!2048 (reg!16420 r!7292)))))

(declare-fun bs!1524311 () Bool)

(assert (= bs!1524311 d!1926441))

(declare-fun m!6988548 () Bool)

(assert (=> bs!1524311 m!6988548))

(assert (=> b!6147699 d!1926441))

(declare-fun d!1926443 () Bool)

(assert (=> d!1926443 (= ($colon$colon!1968 (exprs!5975 lt!2333933) (ite (or c!1106243 c!1106240) (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (regOne!32695 (regOne!32694 r!7292)))) (Cons!64448 (ite (or c!1106243 c!1106240) (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))) (regOne!32695 (regOne!32694 r!7292))) (exprs!5975 lt!2333933)))))

(assert (=> bm!511025 d!1926443))

(declare-fun d!1926445 () Bool)

(assert (=> d!1926445 (= (nullable!6084 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292)))) (nullableFct!2048 (regOne!32694 (regTwo!32695 (regOne!32694 r!7292)))))))

(declare-fun bs!1524312 () Bool)

(assert (= bs!1524312 d!1926445))

(declare-fun m!6988550 () Bool)

(assert (=> bs!1524312 m!6988550))

(assert (=> b!6147666 d!1926445))

(declare-fun d!1926447 () Bool)

(assert (=> d!1926447 (= (nullable!6084 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (nullableFct!2048 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))))))

(declare-fun bs!1524313 () Bool)

(assert (= bs!1524313 d!1926447))

(declare-fun m!6988552 () Bool)

(assert (=> bs!1524313 m!6988552))

(assert (=> b!6147887 d!1926447))

(declare-fun bs!1524314 () Bool)

(declare-fun d!1926449 () Bool)

(assert (= bs!1524314 (and d!1926449 d!1926133)))

(declare-fun lambda!335281 () Int)

(assert (=> bs!1524314 (= lambda!335281 lambda!335227)))

(declare-fun bs!1524315 () Bool)

(assert (= bs!1524315 (and d!1926449 d!1926363)))

(assert (=> bs!1524315 (= lambda!335281 lambda!335270)))

(declare-fun bs!1524316 () Bool)

(assert (= bs!1524316 (and d!1926449 d!1926153)))

(assert (=> bs!1524316 (= lambda!335281 lambda!335235)))

(declare-fun bs!1524317 () Bool)

(assert (= bs!1524317 (and d!1926449 d!1926135)))

(assert (=> bs!1524317 (= lambda!335281 lambda!335230)))

(declare-fun bs!1524318 () Bool)

(assert (= bs!1524318 (and d!1926449 d!1926151)))

(assert (=> bs!1524318 (= lambda!335281 lambda!335234)))

(declare-fun bs!1524319 () Bool)

(assert (= bs!1524319 (and d!1926449 d!1926137)))

(assert (=> bs!1524319 (= lambda!335281 lambda!335233)))

(declare-fun bs!1524320 () Bool)

(assert (= bs!1524320 (and d!1926449 d!1926123)))

(assert (=> bs!1524320 (= lambda!335281 lambda!335218)))

(declare-fun b!6148494 () Bool)

(declare-fun e!3746690 () Regex!16091)

(assert (=> b!6148494 (= e!3746690 (Union!16091 (h!70896 (t!378057 (unfocusZipperList!1512 zl!343))) (generalisedUnion!1935 (t!378057 (t!378057 (unfocusZipperList!1512 zl!343))))))))

(declare-fun b!6148495 () Bool)

(declare-fun e!3746686 () Regex!16091)

(assert (=> b!6148495 (= e!3746686 (h!70896 (t!378057 (unfocusZipperList!1512 zl!343))))))

(declare-fun b!6148496 () Bool)

(assert (=> b!6148496 (= e!3746690 EmptyLang!16091)))

(declare-fun b!6148497 () Bool)

(declare-fun e!3746685 () Bool)

(declare-fun lt!2334062 () Regex!16091)

(assert (=> b!6148497 (= e!3746685 (isUnion!948 lt!2334062))))

(declare-fun b!6148498 () Bool)

(declare-fun e!3746687 () Bool)

(declare-fun e!3746689 () Bool)

(assert (=> b!6148498 (= e!3746687 e!3746689)))

(declare-fun c!1106505 () Bool)

(assert (=> b!6148498 (= c!1106505 (isEmpty!36404 (t!378057 (unfocusZipperList!1512 zl!343))))))

(declare-fun b!6148499 () Bool)

(assert (=> b!6148499 (= e!3746689 (isEmptyLang!1518 lt!2334062))))

(assert (=> d!1926449 e!3746687))

(declare-fun res!2547012 () Bool)

(assert (=> d!1926449 (=> (not res!2547012) (not e!3746687))))

(assert (=> d!1926449 (= res!2547012 (validRegex!7827 lt!2334062))))

(assert (=> d!1926449 (= lt!2334062 e!3746686)))

(declare-fun c!1106503 () Bool)

(declare-fun e!3746688 () Bool)

(assert (=> d!1926449 (= c!1106503 e!3746688)))

(declare-fun res!2547013 () Bool)

(assert (=> d!1926449 (=> (not res!2547013) (not e!3746688))))

(assert (=> d!1926449 (= res!2547013 ((_ is Cons!64448) (t!378057 (unfocusZipperList!1512 zl!343))))))

(assert (=> d!1926449 (forall!15212 (t!378057 (unfocusZipperList!1512 zl!343)) lambda!335281)))

(assert (=> d!1926449 (= (generalisedUnion!1935 (t!378057 (unfocusZipperList!1512 zl!343))) lt!2334062)))

(declare-fun b!6148500 () Bool)

(assert (=> b!6148500 (= e!3746688 (isEmpty!36404 (t!378057 (t!378057 (unfocusZipperList!1512 zl!343)))))))

(declare-fun b!6148501 () Bool)

(assert (=> b!6148501 (= e!3746689 e!3746685)))

(declare-fun c!1106504 () Bool)

(assert (=> b!6148501 (= c!1106504 (isEmpty!36404 (tail!11789 (t!378057 (unfocusZipperList!1512 zl!343)))))))

(declare-fun b!6148502 () Bool)

(assert (=> b!6148502 (= e!3746685 (= lt!2334062 (head!12704 (t!378057 (unfocusZipperList!1512 zl!343)))))))

(declare-fun b!6148503 () Bool)

(assert (=> b!6148503 (= e!3746686 e!3746690)))

(declare-fun c!1106502 () Bool)

(assert (=> b!6148503 (= c!1106502 ((_ is Cons!64448) (t!378057 (unfocusZipperList!1512 zl!343))))))

(assert (= (and d!1926449 res!2547013) b!6148500))

(assert (= (and d!1926449 c!1106503) b!6148495))

(assert (= (and d!1926449 (not c!1106503)) b!6148503))

(assert (= (and b!6148503 c!1106502) b!6148494))

(assert (= (and b!6148503 (not c!1106502)) b!6148496))

(assert (= (and d!1926449 res!2547012) b!6148498))

(assert (= (and b!6148498 c!1106505) b!6148499))

(assert (= (and b!6148498 (not c!1106505)) b!6148501))

(assert (= (and b!6148501 c!1106504) b!6148502))

(assert (= (and b!6148501 (not c!1106504)) b!6148497))

(declare-fun m!6988554 () Bool)

(assert (=> b!6148501 m!6988554))

(assert (=> b!6148501 m!6988554))

(declare-fun m!6988556 () Bool)

(assert (=> b!6148501 m!6988556))

(declare-fun m!6988558 () Bool)

(assert (=> d!1926449 m!6988558))

(declare-fun m!6988560 () Bool)

(assert (=> d!1926449 m!6988560))

(declare-fun m!6988562 () Bool)

(assert (=> b!6148502 m!6988562))

(declare-fun m!6988564 () Bool)

(assert (=> b!6148500 m!6988564))

(declare-fun m!6988566 () Bool)

(assert (=> b!6148494 m!6988566))

(assert (=> b!6148498 m!6987920))

(declare-fun m!6988568 () Bool)

(assert (=> b!6148499 m!6988568))

(declare-fun m!6988570 () Bool)

(assert (=> b!6148497 m!6988570))

(assert (=> b!6147840 d!1926449))

(declare-fun bs!1524321 () Bool)

(declare-fun d!1926451 () Bool)

(assert (= bs!1524321 (and d!1926451 d!1926403)))

(declare-fun lambda!335282 () Int)

(assert (=> bs!1524321 (= lambda!335282 lambda!335279)))

(assert (=> d!1926451 (= (nullableZipper!1872 lt!2333954) (exists!2437 lt!2333954 lambda!335282))))

(declare-fun bs!1524322 () Bool)

(assert (= bs!1524322 d!1926451))

(declare-fun m!6988576 () Bool)

(assert (=> bs!1524322 m!6988576))

(assert (=> b!6147568 d!1926451))

(declare-fun d!1926455 () Bool)

(assert (=> d!1926455 (= (nullable!6084 (h!70896 (exprs!5975 lt!2333948))) (nullableFct!2048 (h!70896 (exprs!5975 lt!2333948))))))

(declare-fun bs!1524323 () Bool)

(assert (= bs!1524323 d!1926455))

(declare-fun m!6988578 () Bool)

(assert (=> bs!1524323 m!6988578))

(assert (=> b!6147866 d!1926455))

(assert (=> d!1926105 d!1926107))

(assert (=> d!1926105 d!1926097))

(declare-fun e!3746713 () Bool)

(declare-fun d!1926457 () Bool)

(assert (=> d!1926457 (= (matchZipper!2103 ((_ map or) lt!2333954 lt!2333942) (t!378058 s!2326)) e!3746713)))

(declare-fun res!2547031 () Bool)

(assert (=> d!1926457 (=> res!2547031 e!3746713)))

(assert (=> d!1926457 (= res!2547031 (matchZipper!2103 lt!2333954 (t!378058 s!2326)))))

(assert (=> d!1926457 true))

(declare-fun _$48!1679 () Unit!157525)

(assert (=> d!1926457 (= (choose!45695 lt!2333954 lt!2333942 (t!378058 s!2326)) _$48!1679)))

(declare-fun b!6148530 () Bool)

(assert (=> b!6148530 (= e!3746713 (matchZipper!2103 lt!2333942 (t!378058 s!2326)))))

(assert (= (and d!1926457 (not res!2547031)) b!6148530))

(assert (=> d!1926457 m!6987416))

(assert (=> d!1926457 m!6987464))

(assert (=> b!6148530 m!6987394))

(assert (=> d!1926105 d!1926457))

(declare-fun b!6148553 () Bool)

(declare-fun e!3746726 () List!64573)

(assert (=> b!6148553 (= e!3746726 (Cons!64449 (h!70897 (_1!36373 (get!22237 lt!2333997))) (++!14176 (t!378058 (_1!36373 (get!22237 lt!2333997))) (_2!36373 (get!22237 lt!2333997)))))))

(declare-fun b!6148554 () Bool)

(declare-fun res!2547043 () Bool)

(declare-fun e!3746725 () Bool)

(assert (=> b!6148554 (=> (not res!2547043) (not e!3746725))))

(declare-fun lt!2334073 () List!64573)

(declare-fun size!40232 (List!64573) Int)

(assert (=> b!6148554 (= res!2547043 (= (size!40232 lt!2334073) (+ (size!40232 (_1!36373 (get!22237 lt!2333997))) (size!40232 (_2!36373 (get!22237 lt!2333997))))))))

(declare-fun b!6148552 () Bool)

(assert (=> b!6148552 (= e!3746726 (_2!36373 (get!22237 lt!2333997)))))

(declare-fun b!6148555 () Bool)

(assert (=> b!6148555 (= e!3746725 (or (not (= (_2!36373 (get!22237 lt!2333997)) Nil!64449)) (= lt!2334073 (_1!36373 (get!22237 lt!2333997)))))))

(declare-fun d!1926465 () Bool)

(assert (=> d!1926465 e!3746725))

(declare-fun res!2547044 () Bool)

(assert (=> d!1926465 (=> (not res!2547044) (not e!3746725))))

(declare-fun content!12005 (List!64573) (InoxSet C!32452))

(assert (=> d!1926465 (= res!2547044 (= (content!12005 lt!2334073) ((_ map or) (content!12005 (_1!36373 (get!22237 lt!2333997))) (content!12005 (_2!36373 (get!22237 lt!2333997))))))))

(assert (=> d!1926465 (= lt!2334073 e!3746726)))

(declare-fun c!1106514 () Bool)

(assert (=> d!1926465 (= c!1106514 ((_ is Nil!64449) (_1!36373 (get!22237 lt!2333997))))))

(assert (=> d!1926465 (= (++!14176 (_1!36373 (get!22237 lt!2333997)) (_2!36373 (get!22237 lt!2333997))) lt!2334073)))

(assert (= (and d!1926465 c!1106514) b!6148552))

(assert (= (and d!1926465 (not c!1106514)) b!6148553))

(assert (= (and d!1926465 res!2547044) b!6148554))

(assert (= (and b!6148554 res!2547043) b!6148555))

(declare-fun m!6988624 () Bool)

(assert (=> b!6148553 m!6988624))

(declare-fun m!6988626 () Bool)

(assert (=> b!6148554 m!6988626))

(declare-fun m!6988630 () Bool)

(assert (=> b!6148554 m!6988630))

(declare-fun m!6988632 () Bool)

(assert (=> b!6148554 m!6988632))

(declare-fun m!6988636 () Bool)

(assert (=> d!1926465 m!6988636))

(declare-fun m!6988640 () Bool)

(assert (=> d!1926465 m!6988640))

(declare-fun m!6988642 () Bool)

(assert (=> d!1926465 m!6988642))

(assert (=> b!6147384 d!1926465))

(declare-fun d!1926471 () Bool)

(assert (=> d!1926471 (= (get!22237 lt!2333997) (v!52120 lt!2333997))))

(assert (=> b!6147384 d!1926471))

(assert (=> d!1926143 d!1926145))

(declare-fun d!1926475 () Bool)

(assert (=> d!1926475 (= (flatMap!1596 lt!2333946 lambda!335177) (dynLambda!25402 lambda!335177 lt!2333948))))

(assert (=> d!1926475 true))

(declare-fun _$13!3058 () Unit!157525)

(assert (=> d!1926475 (= (choose!45700 lt!2333946 lt!2333948 lambda!335177) _$13!3058)))

(declare-fun b_lambda!234003 () Bool)

(assert (=> (not b_lambda!234003) (not d!1926475)))

(declare-fun bs!1524325 () Bool)

(assert (= bs!1524325 d!1926475))

(assert (=> bs!1524325 m!6987450))

(assert (=> bs!1524325 m!6987940))

(assert (=> d!1926143 d!1926475))

(declare-fun bs!1524326 () Bool)

(declare-fun b!6148568 () Bool)

(assert (= bs!1524326 (and b!6148568 b!6147747)))

(declare-fun lambda!335283 () Int)

(assert (=> bs!1524326 (not (= lambda!335283 lambda!335224))))

(declare-fun bs!1524327 () Bool)

(assert (= bs!1524327 (and b!6148568 b!6147738)))

(assert (=> bs!1524327 (= (and (= (reg!16420 (regTwo!32695 r!7292)) (reg!16420 r!7292)) (= (regTwo!32695 r!7292) r!7292)) (= lambda!335283 lambda!335223))))

(declare-fun bs!1524328 () Bool)

(assert (= bs!1524328 (and b!6148568 d!1926073)))

(assert (=> bs!1524328 (not (= lambda!335283 lambda!335211))))

(declare-fun bs!1524329 () Bool)

(assert (= bs!1524329 (and b!6148568 d!1926069)))

(assert (=> bs!1524329 (not (= lambda!335283 lambda!335205))))

(assert (=> bs!1524328 (not (= lambda!335283 lambda!335212))))

(declare-fun bs!1524330 () Bool)

(assert (= bs!1524330 (and b!6148568 b!6148249)))

(assert (=> bs!1524330 (= (and (= (reg!16420 (regTwo!32695 r!7292)) (reg!16420 (regOne!32695 r!7292))) (= (regTwo!32695 r!7292) (regOne!32695 r!7292))) (= lambda!335283 lambda!335266))))

(declare-fun bs!1524331 () Bool)

(assert (= bs!1524331 (and b!6148568 b!6148258)))

(assert (=> bs!1524331 (not (= lambda!335283 lambda!335267))))

(declare-fun bs!1524332 () Bool)

(assert (= bs!1524332 (and b!6148568 b!6147159)))

(assert (=> bs!1524332 (not (= lambda!335283 lambda!335175))))

(assert (=> bs!1524332 (not (= lambda!335283 lambda!335176))))

(assert (=> b!6148568 true))

(assert (=> b!6148568 true))

(declare-fun bs!1524334 () Bool)

(declare-fun b!6148577 () Bool)

(assert (= bs!1524334 (and b!6148577 b!6147747)))

(declare-fun lambda!335284 () Int)

(assert (=> bs!1524334 (= (and (= (regOne!32694 (regTwo!32695 r!7292)) (regOne!32694 r!7292)) (= (regTwo!32694 (regTwo!32695 r!7292)) (regTwo!32694 r!7292))) (= lambda!335284 lambda!335224))))

(declare-fun bs!1524335 () Bool)

(assert (= bs!1524335 (and b!6148577 b!6147738)))

(assert (=> bs!1524335 (not (= lambda!335284 lambda!335223))))

(declare-fun bs!1524336 () Bool)

(assert (= bs!1524336 (and b!6148577 d!1926073)))

(assert (=> bs!1524336 (not (= lambda!335284 lambda!335211))))

(declare-fun bs!1524337 () Bool)

(assert (= bs!1524337 (and b!6148577 d!1926069)))

(assert (=> bs!1524337 (not (= lambda!335284 lambda!335205))))

(assert (=> bs!1524336 (= (and (= (regOne!32694 (regTwo!32695 r!7292)) (regOne!32694 r!7292)) (= (regTwo!32694 (regTwo!32695 r!7292)) (regTwo!32694 r!7292))) (= lambda!335284 lambda!335212))))

(declare-fun bs!1524338 () Bool)

(assert (= bs!1524338 (and b!6148577 b!6148249)))

(assert (=> bs!1524338 (not (= lambda!335284 lambda!335266))))

(declare-fun bs!1524339 () Bool)

(assert (= bs!1524339 (and b!6148577 b!6148568)))

(assert (=> bs!1524339 (not (= lambda!335284 lambda!335283))))

(declare-fun bs!1524340 () Bool)

(assert (= bs!1524340 (and b!6148577 b!6148258)))

(assert (=> bs!1524340 (= (and (= (regOne!32694 (regTwo!32695 r!7292)) (regOne!32694 (regOne!32695 r!7292))) (= (regTwo!32694 (regTwo!32695 r!7292)) (regTwo!32694 (regOne!32695 r!7292)))) (= lambda!335284 lambda!335267))))

(declare-fun bs!1524341 () Bool)

(assert (= bs!1524341 (and b!6148577 b!6147159)))

(assert (=> bs!1524341 (not (= lambda!335284 lambda!335175))))

(assert (=> bs!1524341 (= (and (= (regOne!32694 (regTwo!32695 r!7292)) (regOne!32694 r!7292)) (= (regTwo!32694 (regTwo!32695 r!7292)) (regTwo!32694 r!7292))) (= lambda!335284 lambda!335176))))

(assert (=> b!6148577 true))

(assert (=> b!6148577 true))

(declare-fun b!6148567 () Bool)

(declare-fun e!3746736 () Bool)

(declare-fun e!3746742 () Bool)

(assert (=> b!6148567 (= e!3746736 e!3746742)))

(declare-fun c!1106519 () Bool)

(assert (=> b!6148567 (= c!1106519 ((_ is Star!16091) (regTwo!32695 r!7292)))))

(declare-fun e!3746738 () Bool)

(declare-fun call!511220 () Bool)

(assert (=> b!6148568 (= e!3746738 call!511220)))

(declare-fun b!6148569 () Bool)

(declare-fun e!3746739 () Bool)

(declare-fun e!3746740 () Bool)

(assert (=> b!6148569 (= e!3746739 e!3746740)))

(declare-fun res!2547053 () Bool)

(assert (=> b!6148569 (= res!2547053 (not ((_ is EmptyLang!16091) (regTwo!32695 r!7292))))))

(assert (=> b!6148569 (=> (not res!2547053) (not e!3746740))))

(declare-fun b!6148570 () Bool)

(declare-fun call!511219 () Bool)

(assert (=> b!6148570 (= e!3746739 call!511219)))

(declare-fun b!6148571 () Bool)

(declare-fun c!1106518 () Bool)

(assert (=> b!6148571 (= c!1106518 ((_ is Union!16091) (regTwo!32695 r!7292)))))

(declare-fun e!3746741 () Bool)

(assert (=> b!6148571 (= e!3746741 e!3746736)))

(declare-fun b!6148572 () Bool)

(declare-fun res!2547054 () Bool)

(assert (=> b!6148572 (=> res!2547054 e!3746738)))

(assert (=> b!6148572 (= res!2547054 call!511219)))

(assert (=> b!6148572 (= e!3746742 e!3746738)))

(declare-fun bm!511214 () Bool)

(assert (=> bm!511214 (= call!511220 (Exists!3161 (ite c!1106519 lambda!335283 lambda!335284)))))

(declare-fun b!6148573 () Bool)

(declare-fun c!1106517 () Bool)

(assert (=> b!6148573 (= c!1106517 ((_ is ElementMatch!16091) (regTwo!32695 r!7292)))))

(assert (=> b!6148573 (= e!3746740 e!3746741)))

(declare-fun b!6148574 () Bool)

(assert (=> b!6148574 (= e!3746741 (= s!2326 (Cons!64449 (c!1106101 (regTwo!32695 r!7292)) Nil!64449)))))

(declare-fun b!6148575 () Bool)

(declare-fun e!3746737 () Bool)

(assert (=> b!6148575 (= e!3746736 e!3746737)))

(declare-fun res!2547052 () Bool)

(assert (=> b!6148575 (= res!2547052 (matchRSpec!3192 (regOne!32695 (regTwo!32695 r!7292)) s!2326))))

(assert (=> b!6148575 (=> res!2547052 e!3746737)))

(declare-fun d!1926481 () Bool)

(declare-fun c!1106520 () Bool)

(assert (=> d!1926481 (= c!1106520 ((_ is EmptyExpr!16091) (regTwo!32695 r!7292)))))

(assert (=> d!1926481 (= (matchRSpec!3192 (regTwo!32695 r!7292) s!2326) e!3746739)))

(declare-fun b!6148576 () Bool)

(assert (=> b!6148576 (= e!3746737 (matchRSpec!3192 (regTwo!32695 (regTwo!32695 r!7292)) s!2326))))

(assert (=> b!6148577 (= e!3746742 call!511220)))

(declare-fun bm!511215 () Bool)

(assert (=> bm!511215 (= call!511219 (isEmpty!36408 s!2326))))

(assert (= (and d!1926481 c!1106520) b!6148570))

(assert (= (and d!1926481 (not c!1106520)) b!6148569))

(assert (= (and b!6148569 res!2547053) b!6148573))

(assert (= (and b!6148573 c!1106517) b!6148574))

(assert (= (and b!6148573 (not c!1106517)) b!6148571))

(assert (= (and b!6148571 c!1106518) b!6148575))

(assert (= (and b!6148571 (not c!1106518)) b!6148567))

(assert (= (and b!6148575 (not res!2547052)) b!6148576))

(assert (= (and b!6148567 c!1106519) b!6148572))

(assert (= (and b!6148567 (not c!1106519)) b!6148577))

(assert (= (and b!6148572 (not res!2547054)) b!6148568))

(assert (= (or b!6148568 b!6148577) bm!511214))

(assert (= (or b!6148570 b!6148572) bm!511215))

(declare-fun m!6988682 () Bool)

(assert (=> bm!511214 m!6988682))

(declare-fun m!6988684 () Bool)

(assert (=> b!6148575 m!6988684))

(declare-fun m!6988686 () Bool)

(assert (=> b!6148576 m!6988686))

(assert (=> bm!511215 m!6987876))

(assert (=> b!6147746 d!1926481))

(declare-fun b!6148598 () Bool)

(declare-fun e!3746759 () Bool)

(declare-fun lt!2334074 () Bool)

(assert (=> b!6148598 (= e!3746759 (not lt!2334074))))

(declare-fun b!6148599 () Bool)

(declare-fun res!2547063 () Bool)

(declare-fun e!3746762 () Bool)

(assert (=> b!6148599 (=> (not res!2547063) (not e!3746762))))

(declare-fun call!511230 () Bool)

(assert (=> b!6148599 (= res!2547063 (not call!511230))))

(declare-fun b!6148600 () Bool)

(declare-fun e!3746758 () Bool)

(declare-fun e!3746757 () Bool)

(assert (=> b!6148600 (= e!3746758 e!3746757)))

(declare-fun res!2547067 () Bool)

(assert (=> b!6148600 (=> res!2547067 e!3746757)))

(assert (=> b!6148600 (= res!2547067 call!511230)))

(declare-fun b!6148601 () Bool)

(declare-fun e!3746756 () Bool)

(assert (=> b!6148601 (= e!3746756 e!3746758)))

(declare-fun res!2547064 () Bool)

(assert (=> b!6148601 (=> (not res!2547064) (not e!3746758))))

(assert (=> b!6148601 (= res!2547064 (not lt!2334074))))

(declare-fun b!6148602 () Bool)

(declare-fun e!3746760 () Bool)

(assert (=> b!6148602 (= e!3746760 (= lt!2334074 call!511230))))

(declare-fun b!6148603 () Bool)

(declare-fun res!2547062 () Bool)

(assert (=> b!6148603 (=> (not res!2547062) (not e!3746762))))

(assert (=> b!6148603 (= res!2547062 (isEmpty!36408 (tail!11787 (_2!36373 (get!22237 lt!2333997)))))))

(declare-fun b!6148604 () Bool)

(declare-fun res!2547069 () Bool)

(assert (=> b!6148604 (=> res!2547069 e!3746756)))

(assert (=> b!6148604 (= res!2547069 (not ((_ is ElementMatch!16091) (regTwo!32694 r!7292))))))

(assert (=> b!6148604 (= e!3746759 e!3746756)))

(declare-fun b!6148605 () Bool)

(assert (=> b!6148605 (= e!3746757 (not (= (head!12702 (_2!36373 (get!22237 lt!2333997))) (c!1106101 (regTwo!32694 r!7292)))))))

(declare-fun b!6148606 () Bool)

(assert (=> b!6148606 (= e!3746762 (= (head!12702 (_2!36373 (get!22237 lt!2333997))) (c!1106101 (regTwo!32694 r!7292))))))

(declare-fun b!6148607 () Bool)

(declare-fun e!3746761 () Bool)

(assert (=> b!6148607 (= e!3746761 (nullable!6084 (regTwo!32694 r!7292)))))

(declare-fun b!6148608 () Bool)

(declare-fun res!2547065 () Bool)

(assert (=> b!6148608 (=> res!2547065 e!3746756)))

(assert (=> b!6148608 (= res!2547065 e!3746762)))

(declare-fun res!2547068 () Bool)

(assert (=> b!6148608 (=> (not res!2547068) (not e!3746762))))

(assert (=> b!6148608 (= res!2547068 lt!2334074)))

(declare-fun b!6148609 () Bool)

(assert (=> b!6148609 (= e!3746760 e!3746759)))

(declare-fun c!1106529 () Bool)

(assert (=> b!6148609 (= c!1106529 ((_ is EmptyLang!16091) (regTwo!32694 r!7292)))))

(declare-fun d!1926493 () Bool)

(assert (=> d!1926493 e!3746760))

(declare-fun c!1106528 () Bool)

(assert (=> d!1926493 (= c!1106528 ((_ is EmptyExpr!16091) (regTwo!32694 r!7292)))))

(assert (=> d!1926493 (= lt!2334074 e!3746761)))

(declare-fun c!1106530 () Bool)

(assert (=> d!1926493 (= c!1106530 (isEmpty!36408 (_2!36373 (get!22237 lt!2333997))))))

(assert (=> d!1926493 (validRegex!7827 (regTwo!32694 r!7292))))

(assert (=> d!1926493 (= (matchR!8274 (regTwo!32694 r!7292) (_2!36373 (get!22237 lt!2333997))) lt!2334074)))

(declare-fun bm!511225 () Bool)

(assert (=> bm!511225 (= call!511230 (isEmpty!36408 (_2!36373 (get!22237 lt!2333997))))))

(declare-fun b!6148610 () Bool)

(declare-fun res!2547066 () Bool)

(assert (=> b!6148610 (=> res!2547066 e!3746757)))

(assert (=> b!6148610 (= res!2547066 (not (isEmpty!36408 (tail!11787 (_2!36373 (get!22237 lt!2333997))))))))

(declare-fun b!6148611 () Bool)

(assert (=> b!6148611 (= e!3746761 (matchR!8274 (derivativeStep!4811 (regTwo!32694 r!7292) (head!12702 (_2!36373 (get!22237 lt!2333997)))) (tail!11787 (_2!36373 (get!22237 lt!2333997)))))))

(assert (= (and d!1926493 c!1106530) b!6148607))

(assert (= (and d!1926493 (not c!1106530)) b!6148611))

(assert (= (and d!1926493 c!1106528) b!6148602))

(assert (= (and d!1926493 (not c!1106528)) b!6148609))

(assert (= (and b!6148609 c!1106529) b!6148598))

(assert (= (and b!6148609 (not c!1106529)) b!6148604))

(assert (= (and b!6148604 (not res!2547069)) b!6148608))

(assert (= (and b!6148608 res!2547068) b!6148599))

(assert (= (and b!6148599 res!2547063) b!6148603))

(assert (= (and b!6148603 res!2547062) b!6148606))

(assert (= (and b!6148608 (not res!2547065)) b!6148601))

(assert (= (and b!6148601 res!2547064) b!6148600))

(assert (= (and b!6148600 (not res!2547067)) b!6148610))

(assert (= (and b!6148610 (not res!2547066)) b!6148605))

(assert (= (or b!6148602 b!6148599 b!6148600) bm!511225))

(declare-fun m!6988694 () Bool)

(assert (=> b!6148606 m!6988694))

(assert (=> b!6148611 m!6988694))

(assert (=> b!6148611 m!6988694))

(declare-fun m!6988696 () Bool)

(assert (=> b!6148611 m!6988696))

(declare-fun m!6988698 () Bool)

(assert (=> b!6148611 m!6988698))

(assert (=> b!6148611 m!6988696))

(assert (=> b!6148611 m!6988698))

(declare-fun m!6988702 () Bool)

(assert (=> b!6148611 m!6988702))

(declare-fun m!6988704 () Bool)

(assert (=> bm!511225 m!6988704))

(assert (=> b!6148605 m!6988694))

(declare-fun m!6988706 () Bool)

(assert (=> b!6148607 m!6988706))

(assert (=> b!6148603 m!6988698))

(assert (=> b!6148603 m!6988698))

(declare-fun m!6988708 () Bool)

(assert (=> b!6148603 m!6988708))

(assert (=> d!1926493 m!6988704))

(declare-fun m!6988710 () Bool)

(assert (=> d!1926493 m!6988710))

(assert (=> b!6148610 m!6988698))

(assert (=> b!6148610 m!6988698))

(assert (=> b!6148610 m!6988708))

(assert (=> b!6147388 d!1926493))

(assert (=> b!6147388 d!1926471))

(declare-fun d!1926497 () Bool)

(assert (=> d!1926497 (= (isEmpty!36408 s!2326) ((_ is Nil!64449) s!2326))))

(assert (=> bm!511044 d!1926497))

(assert (=> b!6147897 d!1926157))

(declare-fun b!6148612 () Bool)

(declare-fun e!3746763 () Bool)

(declare-fun e!3746769 () Bool)

(assert (=> b!6148612 (= e!3746763 e!3746769)))

(declare-fun res!2547073 () Bool)

(assert (=> b!6148612 (=> (not res!2547073) (not e!3746769))))

(declare-fun call!511232 () Bool)

(assert (=> b!6148612 (= res!2547073 call!511232)))

(declare-fun b!6148614 () Bool)

(declare-fun e!3746764 () Bool)

(declare-fun e!3746770 () Bool)

(assert (=> b!6148614 (= e!3746764 e!3746770)))

(declare-fun c!1106531 () Bool)

(assert (=> b!6148614 (= c!1106531 ((_ is Union!16091) lt!2334039))))

(declare-fun d!1926499 () Bool)

(declare-fun res!2547070 () Bool)

(declare-fun e!3746765 () Bool)

(assert (=> d!1926499 (=> res!2547070 e!3746765)))

(assert (=> d!1926499 (= res!2547070 ((_ is ElementMatch!16091) lt!2334039))))

(assert (=> d!1926499 (= (validRegex!7827 lt!2334039) e!3746765)))

(declare-fun b!6148616 () Bool)

(declare-fun e!3746768 () Bool)

(declare-fun call!511231 () Bool)

(assert (=> b!6148616 (= e!3746768 call!511231)))

(declare-fun b!6148618 () Bool)

(declare-fun e!3746766 () Bool)

(assert (=> b!6148618 (= e!3746764 e!3746766)))

(declare-fun res!2547072 () Bool)

(assert (=> b!6148618 (= res!2547072 (not (nullable!6084 (reg!16420 lt!2334039))))))

(assert (=> b!6148618 (=> (not res!2547072) (not e!3746766))))

(declare-fun c!1106532 () Bool)

(declare-fun bm!511226 () Bool)

(declare-fun call!511233 () Bool)

(assert (=> bm!511226 (= call!511233 (validRegex!7827 (ite c!1106532 (reg!16420 lt!2334039) (ite c!1106531 (regOne!32695 lt!2334039) (regOne!32694 lt!2334039)))))))

(declare-fun bm!511227 () Bool)

(assert (=> bm!511227 (= call!511231 (validRegex!7827 (ite c!1106531 (regTwo!32695 lt!2334039) (regTwo!32694 lt!2334039))))))

(declare-fun bm!511228 () Bool)

(assert (=> bm!511228 (= call!511232 call!511233)))

(declare-fun b!6148620 () Bool)

(declare-fun res!2547074 () Bool)

(assert (=> b!6148620 (=> res!2547074 e!3746763)))

(assert (=> b!6148620 (= res!2547074 (not ((_ is Concat!24936) lt!2334039)))))

(assert (=> b!6148620 (= e!3746770 e!3746763)))

(declare-fun b!6148621 () Bool)

(assert (=> b!6148621 (= e!3746765 e!3746764)))

(assert (=> b!6148621 (= c!1106532 ((_ is Star!16091) lt!2334039))))

(declare-fun b!6148622 () Bool)

(declare-fun res!2547071 () Bool)

(assert (=> b!6148622 (=> (not res!2547071) (not e!3746768))))

(assert (=> b!6148622 (= res!2547071 call!511232)))

(assert (=> b!6148622 (= e!3746770 e!3746768)))

(declare-fun b!6148623 () Bool)

(assert (=> b!6148623 (= e!3746769 call!511231)))

(declare-fun b!6148624 () Bool)

(assert (=> b!6148624 (= e!3746766 call!511233)))

(assert (= (and d!1926499 (not res!2547070)) b!6148621))

(assert (= (and b!6148621 c!1106532) b!6148618))

(assert (= (and b!6148621 (not c!1106532)) b!6148614))

(assert (= (and b!6148618 res!2547072) b!6148624))

(assert (= (and b!6148614 c!1106531) b!6148622))

(assert (= (and b!6148614 (not c!1106531)) b!6148620))

(assert (= (and b!6148622 res!2547071) b!6148616))

(assert (= (and b!6148620 (not res!2547074)) b!6148612))

(assert (= (and b!6148612 res!2547073) b!6148623))

(assert (= (or b!6148616 b!6148623) bm!511227))

(assert (= (or b!6148622 b!6148612) bm!511228))

(assert (= (or b!6148624 bm!511228) bm!511226))

(declare-fun m!6988712 () Bool)

(assert (=> b!6148618 m!6988712))

(declare-fun m!6988714 () Bool)

(assert (=> bm!511226 m!6988714))

(declare-fun m!6988716 () Bool)

(assert (=> bm!511227 m!6988716))

(assert (=> d!1926135 d!1926499))

(declare-fun d!1926501 () Bool)

(declare-fun res!2547075 () Bool)

(declare-fun e!3746774 () Bool)

(assert (=> d!1926501 (=> res!2547075 e!3746774)))

(assert (=> d!1926501 (= res!2547075 ((_ is Nil!64448) (unfocusZipperList!1512 zl!343)))))

(assert (=> d!1926501 (= (forall!15212 (unfocusZipperList!1512 zl!343) lambda!335230) e!3746774)))

(declare-fun b!6148637 () Bool)

(declare-fun e!3746775 () Bool)

(assert (=> b!6148637 (= e!3746774 e!3746775)))

(declare-fun res!2547076 () Bool)

(assert (=> b!6148637 (=> (not res!2547076) (not e!3746775))))

(assert (=> b!6148637 (= res!2547076 (dynLambda!25403 lambda!335230 (h!70896 (unfocusZipperList!1512 zl!343))))))

(declare-fun b!6148638 () Bool)

(assert (=> b!6148638 (= e!3746775 (forall!15212 (t!378057 (unfocusZipperList!1512 zl!343)) lambda!335230))))

(assert (= (and d!1926501 (not res!2547075)) b!6148637))

(assert (= (and b!6148637 res!2547076) b!6148638))

(declare-fun b_lambda!234005 () Bool)

(assert (=> (not b_lambda!234005) (not b!6148637)))

(declare-fun m!6988718 () Bool)

(assert (=> b!6148637 m!6988718))

(declare-fun m!6988720 () Bool)

(assert (=> b!6148638 m!6988720))

(assert (=> d!1926135 d!1926501))

(assert (=> bs!1524125 d!1926167))

(declare-fun d!1926503 () Bool)

(assert (=> d!1926503 (= (isDefined!12685 lt!2333997) (not (isEmpty!36407 lt!2333997)))))

(declare-fun bs!1524350 () Bool)

(assert (= bs!1524350 d!1926503))

(declare-fun m!6988722 () Bool)

(assert (=> bs!1524350 m!6988722))

(assert (=> b!6147380 d!1926503))

(assert (=> b!6147622 d!1926109))

(declare-fun d!1926505 () Bool)

(assert (=> d!1926505 (= (Exists!3161 (ite c!1106261 lambda!335223 lambda!335224)) (choose!45690 (ite c!1106261 lambda!335223 lambda!335224)))))

(declare-fun bs!1524351 () Bool)

(assert (= bs!1524351 d!1926505))

(declare-fun m!6988724 () Bool)

(assert (=> bs!1524351 m!6988724))

(assert (=> bm!511040 d!1926505))

(declare-fun bm!511229 () Bool)

(declare-fun call!511235 () (InoxSet Context!10950))

(declare-fun call!511239 () (InoxSet Context!10950))

(assert (=> bm!511229 (= call!511235 call!511239)))

(declare-fun b!6148652 () Bool)

(declare-fun e!3746785 () (InoxSet Context!10950))

(declare-fun e!3746780 () (InoxSet Context!10950))

(assert (=> b!6148652 (= e!3746785 e!3746780)))

(declare-fun c!1106537 () Bool)

(assert (=> b!6148652 (= c!1106537 ((_ is Union!16091) (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))))))

(declare-fun bm!511230 () Bool)

(declare-fun call!511234 () (InoxSet Context!10950))

(assert (=> bm!511230 (= call!511239 call!511234)))

(declare-fun bm!511231 () Bool)

(declare-fun call!511238 () List!64572)

(declare-fun call!511237 () List!64572)

(assert (=> bm!511231 (= call!511238 call!511237)))

(declare-fun b!6148653 () Bool)

(declare-fun e!3746781 () (InoxSet Context!10950))

(declare-fun e!3746783 () (InoxSet Context!10950))

(assert (=> b!6148653 (= e!3746781 e!3746783)))

(declare-fun c!1106533 () Bool)

(assert (=> b!6148653 (= c!1106533 ((_ is Concat!24936) (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))))))

(declare-fun b!6148654 () Bool)

(assert (=> b!6148654 (= e!3746785 (store ((as const (Array Context!10950 Bool)) false) (ite c!1106311 lt!2333933 (Context!10951 call!511057)) true))))

(declare-fun call!511236 () (InoxSet Context!10950))

(declare-fun bm!511232 () Bool)

(assert (=> bm!511232 (= call!511236 (derivationStepZipperDown!1339 (ite c!1106537 (regOne!32695 (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))) (regOne!32694 (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343))))))) (ite c!1106537 (ite c!1106311 lt!2333933 (Context!10951 call!511057)) (Context!10951 call!511237)) (h!70897 s!2326)))))

(declare-fun b!6148656 () Bool)

(declare-fun e!3746784 () (InoxSet Context!10950))

(assert (=> b!6148656 (= e!3746784 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6148657 () Bool)

(assert (=> b!6148657 (= e!3746781 ((_ map or) call!511236 call!511239))))

(declare-fun b!6148658 () Bool)

(assert (=> b!6148658 (= e!3746780 ((_ map or) call!511236 call!511234))))

(declare-fun c!1106536 () Bool)

(declare-fun bm!511233 () Bool)

(assert (=> bm!511233 (= call!511237 ($colon$colon!1968 (exprs!5975 (ite c!1106311 lt!2333933 (Context!10951 call!511057))) (ite (or c!1106536 c!1106533) (regTwo!32694 (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))) (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343))))))))))

(declare-fun b!6148659 () Bool)

(assert (=> b!6148659 (= e!3746783 call!511235)))

(declare-fun c!1106535 () Bool)

(declare-fun d!1926507 () Bool)

(assert (=> d!1926507 (= c!1106535 (and ((_ is ElementMatch!16091) (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))) (= (c!1106101 (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))) (h!70897 s!2326))))))

(assert (=> d!1926507 (= (derivationStepZipperDown!1339 (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343))))) (ite c!1106311 lt!2333933 (Context!10951 call!511057)) (h!70897 s!2326)) e!3746785)))

(declare-fun b!6148655 () Bool)

(declare-fun c!1106534 () Bool)

(assert (=> b!6148655 (= c!1106534 ((_ is Star!16091) (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))))))

(assert (=> b!6148655 (= e!3746783 e!3746784)))

(declare-fun b!6148660 () Bool)

(assert (=> b!6148660 (= e!3746784 call!511235)))

(declare-fun b!6148661 () Bool)

(declare-fun e!3746782 () Bool)

(assert (=> b!6148661 (= c!1106536 e!3746782)))

(declare-fun res!2547077 () Bool)

(assert (=> b!6148661 (=> (not res!2547077) (not e!3746782))))

(assert (=> b!6148661 (= res!2547077 ((_ is Concat!24936) (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))))))

(assert (=> b!6148661 (= e!3746780 e!3746781)))

(declare-fun bm!511234 () Bool)

(assert (=> bm!511234 (= call!511234 (derivationStepZipperDown!1339 (ite c!1106537 (regTwo!32695 (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))) (ite c!1106536 (regTwo!32694 (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))) (ite c!1106533 (regOne!32694 (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))))) (reg!16420 (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343))))))))) (ite (or c!1106537 c!1106536) (ite c!1106311 lt!2333933 (Context!10951 call!511057)) (Context!10951 call!511238)) (h!70897 s!2326)))))

(declare-fun b!6148662 () Bool)

(assert (=> b!6148662 (= e!3746782 (nullable!6084 (regOne!32694 (ite c!1106311 (regOne!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343))))))))))

(assert (= (and d!1926507 c!1106535) b!6148654))

(assert (= (and d!1926507 (not c!1106535)) b!6148652))

(assert (= (and b!6148652 c!1106537) b!6148658))

(assert (= (and b!6148652 (not c!1106537)) b!6148661))

(assert (= (and b!6148661 res!2547077) b!6148662))

(assert (= (and b!6148661 c!1106536) b!6148657))

(assert (= (and b!6148661 (not c!1106536)) b!6148653))

(assert (= (and b!6148653 c!1106533) b!6148659))

(assert (= (and b!6148653 (not c!1106533)) b!6148655))

(assert (= (and b!6148655 c!1106534) b!6148660))

(assert (= (and b!6148655 (not c!1106534)) b!6148656))

(assert (= (or b!6148659 b!6148660) bm!511231))

(assert (= (or b!6148659 b!6148660) bm!511229))

(assert (= (or b!6148657 bm!511231) bm!511233))

(assert (= (or b!6148657 bm!511229) bm!511230))

(assert (= (or b!6148658 bm!511230) bm!511234))

(assert (= (or b!6148658 b!6148657) bm!511232))

(declare-fun m!6988726 () Bool)

(assert (=> bm!511234 m!6988726))

(declare-fun m!6988730 () Bool)

(assert (=> bm!511233 m!6988730))

(declare-fun m!6988732 () Bool)

(assert (=> bm!511232 m!6988732))

(declare-fun m!6988734 () Bool)

(assert (=> b!6148654 m!6988734))

(declare-fun m!6988736 () Bool)

(assert (=> b!6148662 m!6988736))

(assert (=> bm!511052 d!1926507))

(declare-fun d!1926509 () Bool)

(assert (=> d!1926509 true))

(declare-fun setRes!41620 () Bool)

(assert (=> d!1926509 setRes!41620))

(declare-fun condSetEmpty!41620 () Bool)

(declare-fun res!2547080 () (InoxSet Context!10950))

(assert (=> d!1926509 (= condSetEmpty!41620 (= res!2547080 ((as const (Array Context!10950 Bool)) false)))))

(assert (=> d!1926509 (= (choose!45701 lt!2333946 lambda!335177) res!2547080)))

(declare-fun setIsEmpty!41620 () Bool)

(assert (=> setIsEmpty!41620 setRes!41620))

(declare-fun setElem!41620 () Context!10950)

(declare-fun e!3746807 () Bool)

(declare-fun tp!1717481 () Bool)

(declare-fun setNonEmpty!41620 () Bool)

(assert (=> setNonEmpty!41620 (= setRes!41620 (and tp!1717481 (inv!83474 setElem!41620) e!3746807))))

(declare-fun setRest!41620 () (InoxSet Context!10950))

(assert (=> setNonEmpty!41620 (= res!2547080 ((_ map or) (store ((as const (Array Context!10950 Bool)) false) setElem!41620 true) setRest!41620))))

(declare-fun b!6148720 () Bool)

(declare-fun tp!1717482 () Bool)

(assert (=> b!6148720 (= e!3746807 tp!1717482)))

(assert (= (and d!1926509 condSetEmpty!41620) setIsEmpty!41620))

(assert (= (and d!1926509 (not condSetEmpty!41620)) setNonEmpty!41620))

(assert (= setNonEmpty!41620 b!6148720))

(declare-fun m!6988740 () Bool)

(assert (=> setNonEmpty!41620 m!6988740))

(assert (=> d!1926145 d!1926509))

(declare-fun d!1926511 () Bool)

(assert (=> d!1926511 (= (isConcat!1030 lt!2334036) ((_ is Concat!24936) lt!2334036))))

(assert (=> b!6147812 d!1926511))

(declare-fun d!1926513 () Bool)

(assert (=> d!1926513 true))

(declare-fun setRes!41621 () Bool)

(assert (=> d!1926513 setRes!41621))

(declare-fun condSetEmpty!41621 () Bool)

(declare-fun res!2547081 () (InoxSet Context!10950))

(assert (=> d!1926513 (= condSetEmpty!41621 (= res!2547081 ((as const (Array Context!10950 Bool)) false)))))

(assert (=> d!1926513 (= (choose!45701 z!1189 lambda!335177) res!2547081)))

(declare-fun setIsEmpty!41621 () Bool)

(assert (=> setIsEmpty!41621 setRes!41621))

(declare-fun tp!1717513 () Bool)

(declare-fun setElem!41621 () Context!10950)

(declare-fun e!3746814 () Bool)

(declare-fun setNonEmpty!41621 () Bool)

(assert (=> setNonEmpty!41621 (= setRes!41621 (and tp!1717513 (inv!83474 setElem!41621) e!3746814))))

(declare-fun setRest!41621 () (InoxSet Context!10950))

(assert (=> setNonEmpty!41621 (= res!2547081 ((_ map or) (store ((as const (Array Context!10950 Bool)) false) setElem!41621 true) setRest!41621))))

(declare-fun b!6148745 () Bool)

(declare-fun tp!1717514 () Bool)

(assert (=> b!6148745 (= e!3746814 tp!1717514)))

(assert (= (and d!1926513 condSetEmpty!41621) setIsEmpty!41621))

(assert (= (and d!1926513 (not condSetEmpty!41621)) setNonEmpty!41621))

(assert (= setNonEmpty!41621 b!6148745))

(declare-fun m!6988742 () Bool)

(assert (=> setNonEmpty!41621 m!6988742))

(assert (=> d!1926161 d!1926513))

(declare-fun d!1926515 () Bool)

(declare-fun res!2547082 () Bool)

(declare-fun e!3746816 () Bool)

(assert (=> d!1926515 (=> res!2547082 e!3746816)))

(assert (=> d!1926515 (= res!2547082 ((_ is Nil!64448) lt!2334042))))

(assert (=> d!1926515 (= (forall!15212 lt!2334042 lambda!335233) e!3746816)))

(declare-fun b!6148750 () Bool)

(declare-fun e!3746817 () Bool)

(assert (=> b!6148750 (= e!3746816 e!3746817)))

(declare-fun res!2547083 () Bool)

(assert (=> b!6148750 (=> (not res!2547083) (not e!3746817))))

(assert (=> b!6148750 (= res!2547083 (dynLambda!25403 lambda!335233 (h!70896 lt!2334042)))))

(declare-fun b!6148751 () Bool)

(assert (=> b!6148751 (= e!3746817 (forall!15212 (t!378057 lt!2334042) lambda!335233))))

(assert (= (and d!1926515 (not res!2547082)) b!6148750))

(assert (= (and b!6148750 res!2547083) b!6148751))

(declare-fun b_lambda!234007 () Bool)

(assert (=> (not b_lambda!234007) (not b!6148750)))

(declare-fun m!6988744 () Bool)

(assert (=> b!6148750 m!6988744))

(declare-fun m!6988746 () Bool)

(assert (=> b!6148751 m!6988746))

(assert (=> d!1926137 d!1926515))

(assert (=> b!6147854 d!1926133))

(declare-fun bs!1524352 () Bool)

(declare-fun d!1926517 () Bool)

(assert (= bs!1524352 (and d!1926517 d!1926449)))

(declare-fun lambda!335286 () Int)

(assert (=> bs!1524352 (= lambda!335286 lambda!335281)))

(declare-fun bs!1524354 () Bool)

(assert (= bs!1524354 (and d!1926517 d!1926133)))

(assert (=> bs!1524354 (= lambda!335286 lambda!335227)))

(declare-fun bs!1524355 () Bool)

(assert (= bs!1524355 (and d!1926517 d!1926363)))

(assert (=> bs!1524355 (= lambda!335286 lambda!335270)))

(declare-fun bs!1524357 () Bool)

(assert (= bs!1524357 (and d!1926517 d!1926153)))

(assert (=> bs!1524357 (= lambda!335286 lambda!335235)))

(declare-fun bs!1524359 () Bool)

(assert (= bs!1524359 (and d!1926517 d!1926135)))

(assert (=> bs!1524359 (= lambda!335286 lambda!335230)))

(declare-fun bs!1524360 () Bool)

(assert (= bs!1524360 (and d!1926517 d!1926151)))

(assert (=> bs!1524360 (= lambda!335286 lambda!335234)))

(declare-fun bs!1524362 () Bool)

(assert (= bs!1524362 (and d!1926517 d!1926137)))

(assert (=> bs!1524362 (= lambda!335286 lambda!335233)))

(declare-fun bs!1524364 () Bool)

(assert (= bs!1524364 (and d!1926517 d!1926123)))

(assert (=> bs!1524364 (= lambda!335286 lambda!335218)))

(declare-fun lt!2334075 () List!64572)

(assert (=> d!1926517 (forall!15212 lt!2334075 lambda!335286)))

(declare-fun e!3746819 () List!64572)

(assert (=> d!1926517 (= lt!2334075 e!3746819)))

(declare-fun c!1106538 () Bool)

(assert (=> d!1926517 (= c!1106538 ((_ is Cons!64450) (t!378059 zl!343)))))

(assert (=> d!1926517 (= (unfocusZipperList!1512 (t!378059 zl!343)) lt!2334075)))

(declare-fun b!6148756 () Bool)

(assert (=> b!6148756 (= e!3746819 (Cons!64448 (generalisedConcat!1688 (exprs!5975 (h!70898 (t!378059 zl!343)))) (unfocusZipperList!1512 (t!378059 (t!378059 zl!343)))))))

(declare-fun b!6148757 () Bool)

(assert (=> b!6148757 (= e!3746819 Nil!64448)))

(assert (= (and d!1926517 c!1106538) b!6148756))

(assert (= (and d!1926517 (not c!1106538)) b!6148757))

(declare-fun m!6988758 () Bool)

(assert (=> d!1926517 m!6988758))

(declare-fun m!6988760 () Bool)

(assert (=> b!6148756 m!6988760))

(declare-fun m!6988762 () Bool)

(assert (=> b!6148756 m!6988762))

(assert (=> b!6147854 d!1926517))

(assert (=> b!6147784 d!1926381))

(assert (=> d!1926069 d!1926045))

(declare-fun d!1926531 () Bool)

(assert (=> d!1926531 (= (Exists!3161 lambda!335205) (choose!45690 lambda!335205))))

(declare-fun bs!1524366 () Bool)

(assert (= bs!1524366 d!1926531))

(declare-fun m!6988764 () Bool)

(assert (=> bs!1524366 m!6988764))

(assert (=> d!1926069 d!1926531))

(declare-fun b!6148758 () Bool)

(declare-fun e!3746820 () Bool)

(declare-fun e!3746825 () Bool)

(assert (=> b!6148758 (= e!3746820 e!3746825)))

(declare-fun res!2547087 () Bool)

(assert (=> b!6148758 (=> (not res!2547087) (not e!3746825))))

(declare-fun call!511241 () Bool)

(assert (=> b!6148758 (= res!2547087 call!511241)))

(declare-fun b!6148759 () Bool)

(declare-fun e!3746821 () Bool)

(declare-fun e!3746826 () Bool)

(assert (=> b!6148759 (= e!3746821 e!3746826)))

(declare-fun c!1106539 () Bool)

(assert (=> b!6148759 (= c!1106539 ((_ is Union!16091) (regOne!32694 r!7292)))))

(declare-fun d!1926533 () Bool)

(declare-fun res!2547084 () Bool)

(declare-fun e!3746822 () Bool)

(assert (=> d!1926533 (=> res!2547084 e!3746822)))

(assert (=> d!1926533 (= res!2547084 ((_ is ElementMatch!16091) (regOne!32694 r!7292)))))

(assert (=> d!1926533 (= (validRegex!7827 (regOne!32694 r!7292)) e!3746822)))

(declare-fun b!6148760 () Bool)

(declare-fun e!3746824 () Bool)

(declare-fun call!511240 () Bool)

(assert (=> b!6148760 (= e!3746824 call!511240)))

(declare-fun b!6148761 () Bool)

(declare-fun e!3746823 () Bool)

(assert (=> b!6148761 (= e!3746821 e!3746823)))

(declare-fun res!2547086 () Bool)

(assert (=> b!6148761 (= res!2547086 (not (nullable!6084 (reg!16420 (regOne!32694 r!7292)))))))

(assert (=> b!6148761 (=> (not res!2547086) (not e!3746823))))

(declare-fun bm!511235 () Bool)

(declare-fun c!1106540 () Bool)

(declare-fun call!511242 () Bool)

(assert (=> bm!511235 (= call!511242 (validRegex!7827 (ite c!1106540 (reg!16420 (regOne!32694 r!7292)) (ite c!1106539 (regOne!32695 (regOne!32694 r!7292)) (regOne!32694 (regOne!32694 r!7292))))))))

(declare-fun bm!511236 () Bool)

(assert (=> bm!511236 (= call!511240 (validRegex!7827 (ite c!1106539 (regTwo!32695 (regOne!32694 r!7292)) (regTwo!32694 (regOne!32694 r!7292)))))))

(declare-fun bm!511237 () Bool)

(assert (=> bm!511237 (= call!511241 call!511242)))

(declare-fun b!6148762 () Bool)

(declare-fun res!2547088 () Bool)

(assert (=> b!6148762 (=> res!2547088 e!3746820)))

(assert (=> b!6148762 (= res!2547088 (not ((_ is Concat!24936) (regOne!32694 r!7292))))))

(assert (=> b!6148762 (= e!3746826 e!3746820)))

(declare-fun b!6148763 () Bool)

(assert (=> b!6148763 (= e!3746822 e!3746821)))

(assert (=> b!6148763 (= c!1106540 ((_ is Star!16091) (regOne!32694 r!7292)))))

(declare-fun b!6148764 () Bool)

(declare-fun res!2547085 () Bool)

(assert (=> b!6148764 (=> (not res!2547085) (not e!3746824))))

(assert (=> b!6148764 (= res!2547085 call!511241)))

(assert (=> b!6148764 (= e!3746826 e!3746824)))

(declare-fun b!6148765 () Bool)

(assert (=> b!6148765 (= e!3746825 call!511240)))

(declare-fun b!6148766 () Bool)

(assert (=> b!6148766 (= e!3746823 call!511242)))

(assert (= (and d!1926533 (not res!2547084)) b!6148763))

(assert (= (and b!6148763 c!1106540) b!6148761))

(assert (= (and b!6148763 (not c!1106540)) b!6148759))

(assert (= (and b!6148761 res!2547086) b!6148766))

(assert (= (and b!6148759 c!1106539) b!6148764))

(assert (= (and b!6148759 (not c!1106539)) b!6148762))

(assert (= (and b!6148764 res!2547085) b!6148760))

(assert (= (and b!6148762 (not res!2547088)) b!6148758))

(assert (= (and b!6148758 res!2547087) b!6148765))

(assert (= (or b!6148760 b!6148765) bm!511236))

(assert (= (or b!6148764 b!6148758) bm!511237))

(assert (= (or b!6148766 bm!511237) bm!511235))

(declare-fun m!6988766 () Bool)

(assert (=> b!6148761 m!6988766))

(declare-fun m!6988768 () Bool)

(assert (=> bm!511235 m!6988768))

(declare-fun m!6988770 () Bool)

(assert (=> bm!511236 m!6988770))

(assert (=> d!1926069 d!1926533))

(assert (=> d!1926069 d!1926085))

(declare-fun bs!1524367 () Bool)

(declare-fun d!1926535 () Bool)

(assert (= bs!1524367 (and d!1926535 b!6147747)))

(declare-fun lambda!335289 () Int)

(assert (=> bs!1524367 (not (= lambda!335289 lambda!335224))))

(declare-fun bs!1524368 () Bool)

(assert (= bs!1524368 (and d!1926535 b!6147738)))

(assert (=> bs!1524368 (not (= lambda!335289 lambda!335223))))

(declare-fun bs!1524369 () Bool)

(assert (= bs!1524369 (and d!1926535 d!1926073)))

(assert (=> bs!1524369 (= lambda!335289 lambda!335211)))

(declare-fun bs!1524370 () Bool)

(assert (= bs!1524370 (and d!1926535 d!1926069)))

(assert (=> bs!1524370 (= lambda!335289 lambda!335205)))

(assert (=> bs!1524369 (not (= lambda!335289 lambda!335212))))

(declare-fun bs!1524371 () Bool)

(assert (= bs!1524371 (and d!1926535 b!6148577)))

(assert (=> bs!1524371 (not (= lambda!335289 lambda!335284))))

(declare-fun bs!1524372 () Bool)

(assert (= bs!1524372 (and d!1926535 b!6148249)))

(assert (=> bs!1524372 (not (= lambda!335289 lambda!335266))))

(declare-fun bs!1524373 () Bool)

(assert (= bs!1524373 (and d!1926535 b!6148568)))

(assert (=> bs!1524373 (not (= lambda!335289 lambda!335283))))

(declare-fun bs!1524374 () Bool)

(assert (= bs!1524374 (and d!1926535 b!6148258)))

(assert (=> bs!1524374 (not (= lambda!335289 lambda!335267))))

(declare-fun bs!1524375 () Bool)

(assert (= bs!1524375 (and d!1926535 b!6147159)))

(assert (=> bs!1524375 (= lambda!335289 lambda!335175)))

(assert (=> bs!1524375 (not (= lambda!335289 lambda!335176))))

(assert (=> d!1926535 true))

(assert (=> d!1926535 true))

(assert (=> d!1926535 true))

(assert (=> d!1926535 (= (isDefined!12685 (findConcatSeparation!2396 (regOne!32694 r!7292) (regTwo!32694 r!7292) Nil!64449 s!2326 s!2326)) (Exists!3161 lambda!335289))))

(assert (=> d!1926535 true))

(declare-fun _$89!2254 () Unit!157525)

(assert (=> d!1926535 (= (choose!45691 (regOne!32694 r!7292) (regTwo!32694 r!7292) s!2326) _$89!2254)))

(declare-fun bs!1524376 () Bool)

(assert (= bs!1524376 d!1926535))

(assert (=> bs!1524376 m!6987426))

(assert (=> bs!1524376 m!6987426))

(assert (=> bs!1524376 m!6987428))

(declare-fun m!6988772 () Bool)

(assert (=> bs!1524376 m!6988772))

(assert (=> d!1926069 d!1926535))

(declare-fun b!6148771 () Bool)

(declare-fun e!3746829 () Bool)

(assert (=> b!6148771 (= e!3746829 (nullable!6084 (h!70896 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333948)))))))))

(declare-fun call!511243 () (InoxSet Context!10950))

(declare-fun b!6148772 () Bool)

(declare-fun e!3746830 () (InoxSet Context!10950))

(assert (=> b!6148772 (= e!3746830 ((_ map or) call!511243 (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333948)))))) (h!70897 s!2326))))))

(declare-fun b!6148773 () Bool)

(declare-fun e!3746831 () (InoxSet Context!10950))

(assert (=> b!6148773 (= e!3746831 call!511243)))

(declare-fun bm!511238 () Bool)

(assert (=> bm!511238 (= call!511243 (derivationStepZipperDown!1339 (h!70896 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333948))))) (Context!10951 (t!378057 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333948)))))) (h!70897 s!2326)))))

(declare-fun b!6148774 () Bool)

(assert (=> b!6148774 (= e!3746831 ((as const (Array Context!10950 Bool)) false))))

(declare-fun d!1926537 () Bool)

(declare-fun c!1106542 () Bool)

(assert (=> d!1926537 (= c!1106542 e!3746829)))

(declare-fun res!2547093 () Bool)

(assert (=> d!1926537 (=> (not res!2547093) (not e!3746829))))

(assert (=> d!1926537 (= res!2547093 ((_ is Cons!64448) (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333948))))))))

(assert (=> d!1926537 (= (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 lt!2333948))) (h!70897 s!2326)) e!3746830)))

(declare-fun b!6148775 () Bool)

(assert (=> b!6148775 (= e!3746830 e!3746831)))

(declare-fun c!1106541 () Bool)

(assert (=> b!6148775 (= c!1106541 ((_ is Cons!64448) (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333948))))))))

(assert (= (and d!1926537 res!2547093) b!6148771))

(assert (= (and d!1926537 c!1106542) b!6148772))

(assert (= (and d!1926537 (not c!1106542)) b!6148775))

(assert (= (and b!6148775 c!1106541) b!6148773))

(assert (= (and b!6148775 (not c!1106541)) b!6148774))

(assert (= (or b!6148772 b!6148773) bm!511238))

(declare-fun m!6988774 () Bool)

(assert (=> b!6148771 m!6988774))

(declare-fun m!6988776 () Bool)

(assert (=> b!6148772 m!6988776))

(declare-fun m!6988778 () Bool)

(assert (=> bm!511238 m!6988778))

(assert (=> b!6147867 d!1926537))

(declare-fun d!1926539 () Bool)

(declare-fun c!1106543 () Bool)

(assert (=> d!1926539 (= c!1106543 (isEmpty!36408 (tail!11787 (t!378058 s!2326))))))

(declare-fun e!3746832 () Bool)

(assert (=> d!1926539 (= (matchZipper!2103 (derivationStepZipper!2064 ((_ map or) lt!2333949 lt!2333942) (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))) e!3746832)))

(declare-fun b!6148776 () Bool)

(assert (=> b!6148776 (= e!3746832 (nullableZipper!1872 (derivationStepZipper!2064 ((_ map or) lt!2333949 lt!2333942) (head!12702 (t!378058 s!2326)))))))

(declare-fun b!6148777 () Bool)

(assert (=> b!6148777 (= e!3746832 (matchZipper!2103 (derivationStepZipper!2064 (derivationStepZipper!2064 ((_ map or) lt!2333949 lt!2333942) (head!12702 (t!378058 s!2326))) (head!12702 (tail!11787 (t!378058 s!2326)))) (tail!11787 (tail!11787 (t!378058 s!2326)))))))

(assert (= (and d!1926539 c!1106543) b!6148776))

(assert (= (and d!1926539 (not c!1106543)) b!6148777))

(assert (=> d!1926539 m!6987778))

(assert (=> d!1926539 m!6988422))

(assert (=> b!6148776 m!6987838))

(declare-fun m!6988780 () Bool)

(assert (=> b!6148776 m!6988780))

(assert (=> b!6148777 m!6987778))

(assert (=> b!6148777 m!6988426))

(assert (=> b!6148777 m!6987838))

(assert (=> b!6148777 m!6988426))

(declare-fun m!6988782 () Bool)

(assert (=> b!6148777 m!6988782))

(assert (=> b!6148777 m!6987778))

(assert (=> b!6148777 m!6988430))

(assert (=> b!6148777 m!6988782))

(assert (=> b!6148777 m!6988430))

(declare-fun m!6988784 () Bool)

(assert (=> b!6148777 m!6988784))

(assert (=> b!6147633 d!1926539))

(declare-fun bs!1524377 () Bool)

(declare-fun d!1926541 () Bool)

(assert (= bs!1524377 (and d!1926541 b!6147154)))

(declare-fun lambda!335290 () Int)

(assert (=> bs!1524377 (= (= (head!12702 (t!378058 s!2326)) (h!70897 s!2326)) (= lambda!335290 lambda!335177))))

(declare-fun bs!1524378 () Bool)

(assert (= bs!1524378 (and d!1926541 d!1926367)))

(assert (=> bs!1524378 (= lambda!335290 lambda!335273)))

(declare-fun bs!1524379 () Bool)

(assert (= bs!1524379 (and d!1926541 d!1926399)))

(assert (=> bs!1524379 (= lambda!335290 lambda!335276)))

(assert (=> d!1926541 true))

(assert (=> d!1926541 (= (derivationStepZipper!2064 ((_ map or) lt!2333949 lt!2333942) (head!12702 (t!378058 s!2326))) (flatMap!1596 ((_ map or) lt!2333949 lt!2333942) lambda!335290))))

(declare-fun bs!1524380 () Bool)

(assert (= bs!1524380 d!1926541))

(declare-fun m!6988786 () Bool)

(assert (=> bs!1524380 m!6988786))

(assert (=> b!6147633 d!1926541))

(assert (=> b!6147633 d!1926377))

(assert (=> b!6147633 d!1926379))

(declare-fun d!1926543 () Bool)

(assert (=> d!1926543 (= (isEmptyLang!1518 lt!2334039) ((_ is EmptyLang!16091) lt!2334039))))

(assert (=> b!6147845 d!1926543))

(declare-fun d!1926545 () Bool)

(assert (=> d!1926545 (= (nullable!6084 (h!70896 (exprs!5975 lt!2333933))) (nullableFct!2048 (h!70896 (exprs!5975 lt!2333933))))))

(declare-fun bs!1524381 () Bool)

(assert (= bs!1524381 d!1926545))

(declare-fun m!6988788 () Bool)

(assert (=> bs!1524381 m!6988788))

(assert (=> b!6147892 d!1926545))

(declare-fun d!1926547 () Bool)

(declare-fun res!2547094 () Bool)

(declare-fun e!3746833 () Bool)

(assert (=> d!1926547 (=> res!2547094 e!3746833)))

(assert (=> d!1926547 (= res!2547094 ((_ is Nil!64448) (exprs!5975 lt!2333955)))))

(assert (=> d!1926547 (= (forall!15212 (exprs!5975 lt!2333955) lambda!335234) e!3746833)))

(declare-fun b!6148778 () Bool)

(declare-fun e!3746834 () Bool)

(assert (=> b!6148778 (= e!3746833 e!3746834)))

(declare-fun res!2547095 () Bool)

(assert (=> b!6148778 (=> (not res!2547095) (not e!3746834))))

(assert (=> b!6148778 (= res!2547095 (dynLambda!25403 lambda!335234 (h!70896 (exprs!5975 lt!2333955))))))

(declare-fun b!6148779 () Bool)

(assert (=> b!6148779 (= e!3746834 (forall!15212 (t!378057 (exprs!5975 lt!2333955)) lambda!335234))))

(assert (= (and d!1926547 (not res!2547094)) b!6148778))

(assert (= (and b!6148778 res!2547095) b!6148779))

(declare-fun b_lambda!234025 () Bool)

(assert (=> (not b_lambda!234025) (not b!6148778)))

(declare-fun m!6988790 () Bool)

(assert (=> b!6148778 m!6988790))

(declare-fun m!6988792 () Bool)

(assert (=> b!6148779 m!6988792))

(assert (=> d!1926151 d!1926547))

(declare-fun d!1926549 () Bool)

(declare-fun res!2547096 () Bool)

(declare-fun e!3746835 () Bool)

(assert (=> d!1926549 (=> res!2547096 e!3746835)))

(assert (=> d!1926549 (= res!2547096 ((_ is Nil!64448) (exprs!5975 (h!70898 zl!343))))))

(assert (=> d!1926549 (= (forall!15212 (exprs!5975 (h!70898 zl!343)) lambda!335218) e!3746835)))

(declare-fun b!6148780 () Bool)

(declare-fun e!3746836 () Bool)

(assert (=> b!6148780 (= e!3746835 e!3746836)))

(declare-fun res!2547097 () Bool)

(assert (=> b!6148780 (=> (not res!2547097) (not e!3746836))))

(assert (=> b!6148780 (= res!2547097 (dynLambda!25403 lambda!335218 (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun b!6148781 () Bool)

(assert (=> b!6148781 (= e!3746836 (forall!15212 (t!378057 (exprs!5975 (h!70898 zl!343))) lambda!335218))))

(assert (= (and d!1926549 (not res!2547096)) b!6148780))

(assert (= (and b!6148780 res!2547097) b!6148781))

(declare-fun b_lambda!234027 () Bool)

(assert (=> (not b_lambda!234027) (not b!6148780)))

(declare-fun m!6988794 () Bool)

(assert (=> b!6148780 m!6988794))

(declare-fun m!6988796 () Bool)

(assert (=> b!6148781 m!6988796))

(assert (=> d!1926123 d!1926549))

(declare-fun d!1926551 () Bool)

(assert (=> d!1926551 (= (nullable!6084 (regOne!32694 (regOne!32695 (regOne!32694 r!7292)))) (nullableFct!2048 (regOne!32694 (regOne!32695 (regOne!32694 r!7292)))))))

(declare-fun bs!1524382 () Bool)

(assert (= bs!1524382 d!1926551))

(declare-fun m!6988798 () Bool)

(assert (=> bs!1524382 m!6988798))

(assert (=> b!6147677 d!1926551))

(declare-fun d!1926553 () Bool)

(assert (=> d!1926553 (= (nullable!6084 (h!70896 (exprs!5975 lt!2333955))) (nullableFct!2048 (h!70896 (exprs!5975 lt!2333955))))))

(declare-fun bs!1524383 () Bool)

(assert (= bs!1524383 d!1926553))

(declare-fun m!6988800 () Bool)

(assert (=> bs!1524383 m!6988800))

(assert (=> b!6147871 d!1926553))

(declare-fun bs!1524384 () Bool)

(declare-fun d!1926555 () Bool)

(assert (= bs!1524384 (and d!1926555 d!1926403)))

(declare-fun lambda!335291 () Int)

(assert (=> bs!1524384 (= lambda!335291 lambda!335279)))

(declare-fun bs!1524385 () Bool)

(assert (= bs!1524385 (and d!1926555 d!1926451)))

(assert (=> bs!1524385 (= lambda!335291 lambda!335282)))

(assert (=> d!1926555 (= (nullableZipper!1872 lt!2333942) (exists!2437 lt!2333942 lambda!335291))))

(declare-fun bs!1524386 () Bool)

(assert (= bs!1524386 d!1926555))

(declare-fun m!6988802 () Bool)

(assert (=> bs!1524386 m!6988802))

(assert (=> b!6147549 d!1926555))

(declare-fun b!6148782 () Bool)

(declare-fun e!3746837 () Bool)

(declare-fun e!3746841 () Bool)

(assert (=> b!6148782 (= e!3746837 e!3746841)))

(declare-fun res!2547102 () Bool)

(assert (=> b!6148782 (=> res!2547102 e!3746841)))

(assert (=> b!6148782 (= res!2547102 ((_ is Star!16091) (regOne!32695 (regOne!32694 r!7292))))))

(declare-fun b!6148783 () Bool)

(declare-fun e!3746839 () Bool)

(assert (=> b!6148783 (= e!3746839 e!3746837)))

(declare-fun res!2547099 () Bool)

(assert (=> b!6148783 (=> (not res!2547099) (not e!3746837))))

(assert (=> b!6148783 (= res!2547099 (and (not ((_ is EmptyLang!16091) (regOne!32695 (regOne!32694 r!7292)))) (not ((_ is ElementMatch!16091) (regOne!32695 (regOne!32694 r!7292))))))))

(declare-fun bm!511239 () Bool)

(declare-fun call!511244 () Bool)

(declare-fun c!1106544 () Bool)

(assert (=> bm!511239 (= call!511244 (nullable!6084 (ite c!1106544 (regOne!32695 (regOne!32695 (regOne!32694 r!7292))) (regOne!32694 (regOne!32695 (regOne!32694 r!7292))))))))

(declare-fun d!1926557 () Bool)

(declare-fun res!2547098 () Bool)

(assert (=> d!1926557 (=> res!2547098 e!3746839)))

(assert (=> d!1926557 (= res!2547098 ((_ is EmptyExpr!16091) (regOne!32695 (regOne!32694 r!7292))))))

(assert (=> d!1926557 (= (nullableFct!2048 (regOne!32695 (regOne!32694 r!7292))) e!3746839)))

(declare-fun b!6148784 () Bool)

(declare-fun e!3746842 () Bool)

(declare-fun call!511245 () Bool)

(assert (=> b!6148784 (= e!3746842 call!511245)))

(declare-fun b!6148785 () Bool)

(declare-fun e!3746838 () Bool)

(assert (=> b!6148785 (= e!3746841 e!3746838)))

(assert (=> b!6148785 (= c!1106544 ((_ is Union!16091) (regOne!32695 (regOne!32694 r!7292))))))

(declare-fun bm!511240 () Bool)

(assert (=> bm!511240 (= call!511245 (nullable!6084 (ite c!1106544 (regTwo!32695 (regOne!32695 (regOne!32694 r!7292))) (regTwo!32694 (regOne!32695 (regOne!32694 r!7292))))))))

(declare-fun b!6148786 () Bool)

(declare-fun e!3746840 () Bool)

(assert (=> b!6148786 (= e!3746838 e!3746840)))

(declare-fun res!2547100 () Bool)

(assert (=> b!6148786 (= res!2547100 call!511244)))

(assert (=> b!6148786 (=> (not res!2547100) (not e!3746840))))

(declare-fun b!6148787 () Bool)

(assert (=> b!6148787 (= e!3746838 e!3746842)))

(declare-fun res!2547101 () Bool)

(assert (=> b!6148787 (= res!2547101 call!511244)))

(assert (=> b!6148787 (=> res!2547101 e!3746842)))

(declare-fun b!6148788 () Bool)

(assert (=> b!6148788 (= e!3746840 call!511245)))

(assert (= (and d!1926557 (not res!2547098)) b!6148783))

(assert (= (and b!6148783 res!2547099) b!6148782))

(assert (= (and b!6148782 (not res!2547102)) b!6148785))

(assert (= (and b!6148785 c!1106544) b!6148787))

(assert (= (and b!6148785 (not c!1106544)) b!6148786))

(assert (= (and b!6148787 (not res!2547101)) b!6148784))

(assert (= (and b!6148786 res!2547100) b!6148788))

(assert (= (or b!6148784 b!6148788) bm!511240))

(assert (= (or b!6148787 b!6148786) bm!511239))

(declare-fun m!6988804 () Bool)

(assert (=> bm!511239 m!6988804))

(declare-fun m!6988806 () Bool)

(assert (=> bm!511240 m!6988806))

(assert (=> d!1926149 d!1926557))

(declare-fun bm!511241 () Bool)

(declare-fun call!511247 () (InoxSet Context!10950))

(declare-fun call!511251 () (InoxSet Context!10950))

(assert (=> bm!511241 (= call!511247 call!511251)))

(declare-fun b!6148789 () Bool)

(declare-fun e!3746848 () (InoxSet Context!10950))

(declare-fun e!3746843 () (InoxSet Context!10950))

(assert (=> b!6148789 (= e!3746848 e!3746843)))

(declare-fun c!1106549 () Bool)

(assert (=> b!6148789 (= c!1106549 ((_ is Union!16091) (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343)))))))))))

(declare-fun bm!511242 () Bool)

(declare-fun call!511246 () (InoxSet Context!10950))

(assert (=> bm!511242 (= call!511251 call!511246)))

(declare-fun bm!511243 () Bool)

(declare-fun call!511250 () List!64572)

(declare-fun call!511249 () List!64572)

(assert (=> bm!511243 (= call!511250 call!511249)))

(declare-fun b!6148790 () Bool)

(declare-fun e!3746844 () (InoxSet Context!10950))

(declare-fun e!3746846 () (InoxSet Context!10950))

(assert (=> b!6148790 (= e!3746844 e!3746846)))

(declare-fun c!1106545 () Bool)

(assert (=> b!6148790 (= c!1106545 ((_ is Concat!24936) (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343)))))))))))

(declare-fun b!6148791 () Bool)

(assert (=> b!6148791 (= e!3746848 (store ((as const (Array Context!10950 Bool)) false) (ite (or c!1106311 c!1106310) lt!2333933 (Context!10951 call!511058)) true))))

(declare-fun call!511248 () (InoxSet Context!10950))

(declare-fun bm!511244 () Bool)

(assert (=> bm!511244 (= call!511248 (derivationStepZipperDown!1339 (ite c!1106549 (regOne!32695 (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343)))))))) (regOne!32694 (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343))))))))) (ite c!1106549 (ite (or c!1106311 c!1106310) lt!2333933 (Context!10951 call!511058)) (Context!10951 call!511249)) (h!70897 s!2326)))))

(declare-fun b!6148793 () Bool)

(declare-fun e!3746847 () (InoxSet Context!10950))

(assert (=> b!6148793 (= e!3746847 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6148794 () Bool)

(assert (=> b!6148794 (= e!3746844 ((_ map or) call!511248 call!511251))))

(declare-fun b!6148795 () Bool)

(assert (=> b!6148795 (= e!3746843 ((_ map or) call!511248 call!511246))))

(declare-fun c!1106548 () Bool)

(declare-fun bm!511245 () Bool)

(assert (=> bm!511245 (= call!511249 ($colon$colon!1968 (exprs!5975 (ite (or c!1106311 c!1106310) lt!2333933 (Context!10951 call!511058))) (ite (or c!1106548 c!1106545) (regTwo!32694 (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343)))))))) (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343))))))))))))

(declare-fun b!6148796 () Bool)

(assert (=> b!6148796 (= e!3746846 call!511247)))

(declare-fun d!1926559 () Bool)

(declare-fun c!1106547 () Bool)

(assert (=> d!1926559 (= c!1106547 (and ((_ is ElementMatch!16091) (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343)))))))) (= (c!1106101 (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343)))))))) (h!70897 s!2326))))))

(assert (=> d!1926559 (= (derivationStepZipperDown!1339 (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343))))))) (ite (or c!1106311 c!1106310) lt!2333933 (Context!10951 call!511058)) (h!70897 s!2326)) e!3746848)))

(declare-fun b!6148792 () Bool)

(declare-fun c!1106546 () Bool)

(assert (=> b!6148792 (= c!1106546 ((_ is Star!16091) (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343)))))))))))

(assert (=> b!6148792 (= e!3746846 e!3746847)))

(declare-fun b!6148797 () Bool)

(assert (=> b!6148797 (= e!3746847 call!511247)))

(declare-fun b!6148798 () Bool)

(declare-fun e!3746845 () Bool)

(assert (=> b!6148798 (= c!1106548 e!3746845)))

(declare-fun res!2547103 () Bool)

(assert (=> b!6148798 (=> (not res!2547103) (not e!3746845))))

(assert (=> b!6148798 (= res!2547103 ((_ is Concat!24936) (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343)))))))))))

(assert (=> b!6148798 (= e!3746843 e!3746844)))

(declare-fun bm!511246 () Bool)

(assert (=> bm!511246 (= call!511246 (derivationStepZipperDown!1339 (ite c!1106549 (regTwo!32695 (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343)))))))) (ite c!1106548 (regTwo!32694 (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343)))))))) (ite c!1106545 (regOne!32694 (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343)))))))) (reg!16420 (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343))))))))))) (ite (or c!1106549 c!1106548) (ite (or c!1106311 c!1106310) lt!2333933 (Context!10951 call!511058)) (Context!10951 call!511250)) (h!70897 s!2326)))))

(declare-fun b!6148799 () Bool)

(assert (=> b!6148799 (= e!3746845 (nullable!6084 (regOne!32694 (ite c!1106311 (regTwo!32695 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106310 (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (ite c!1106307 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (reg!16420 (h!70896 (exprs!5975 (h!70898 zl!343))))))))))))

(assert (= (and d!1926559 c!1106547) b!6148791))

(assert (= (and d!1926559 (not c!1106547)) b!6148789))

(assert (= (and b!6148789 c!1106549) b!6148795))

(assert (= (and b!6148789 (not c!1106549)) b!6148798))

(assert (= (and b!6148798 res!2547103) b!6148799))

(assert (= (and b!6148798 c!1106548) b!6148794))

(assert (= (and b!6148798 (not c!1106548)) b!6148790))

(assert (= (and b!6148790 c!1106545) b!6148796))

(assert (= (and b!6148790 (not c!1106545)) b!6148792))

(assert (= (and b!6148792 c!1106546) b!6148797))

(assert (= (and b!6148792 (not c!1106546)) b!6148793))

(assert (= (or b!6148796 b!6148797) bm!511243))

(assert (= (or b!6148796 b!6148797) bm!511241))

(assert (= (or b!6148794 bm!511243) bm!511245))

(assert (= (or b!6148794 bm!511241) bm!511242))

(assert (= (or b!6148795 bm!511242) bm!511246))

(assert (= (or b!6148795 b!6148794) bm!511244))

(declare-fun m!6988808 () Bool)

(assert (=> bm!511246 m!6988808))

(declare-fun m!6988810 () Bool)

(assert (=> bm!511245 m!6988810))

(declare-fun m!6988812 () Bool)

(assert (=> bm!511244 m!6988812))

(declare-fun m!6988814 () Bool)

(assert (=> b!6148791 m!6988814))

(declare-fun m!6988816 () Bool)

(assert (=> b!6148799 m!6988816))

(assert (=> bm!511054 d!1926559))

(declare-fun bs!1524387 () Bool)

(declare-fun d!1926561 () Bool)

(assert (= bs!1524387 (and d!1926561 d!1926403)))

(declare-fun lambda!335292 () Int)

(assert (=> bs!1524387 (= lambda!335292 lambda!335279)))

(declare-fun bs!1524388 () Bool)

(assert (= bs!1524388 (and d!1926561 d!1926451)))

(assert (=> bs!1524388 (= lambda!335292 lambda!335282)))

(declare-fun bs!1524389 () Bool)

(assert (= bs!1524389 (and d!1926561 d!1926555)))

(assert (=> bs!1524389 (= lambda!335292 lambda!335291)))

(assert (=> d!1926561 (= (nullableZipper!1872 lt!2333952) (exists!2437 lt!2333952 lambda!335292))))

(declare-fun bs!1524390 () Bool)

(assert (= bs!1524390 d!1926561))

(declare-fun m!6988818 () Bool)

(assert (=> bs!1524390 m!6988818))

(assert (=> b!6147564 d!1926561))

(declare-fun b!6148800 () Bool)

(declare-fun e!3746849 () Bool)

(assert (=> b!6148800 (= e!3746849 (nullable!6084 (h!70896 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))))))))))

(declare-fun b!6148801 () Bool)

(declare-fun e!3746850 () (InoxSet Context!10950))

(declare-fun call!511252 () (InoxSet Context!10950))

(assert (=> b!6148801 (= e!3746850 ((_ map or) call!511252 (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))))))) (h!70897 s!2326))))))

(declare-fun b!6148802 () Bool)

(declare-fun e!3746851 () (InoxSet Context!10950))

(assert (=> b!6148802 (= e!3746851 call!511252)))

(declare-fun bm!511247 () Bool)

(assert (=> bm!511247 (= call!511252 (derivationStepZipperDown!1339 (h!70896 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))))) (Context!10951 (t!378057 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))))))) (h!70897 s!2326)))))

(declare-fun b!6148803 () Bool)

(assert (=> b!6148803 (= e!3746851 ((as const (Array Context!10950 Bool)) false))))

(declare-fun d!1926563 () Bool)

(declare-fun c!1106551 () Bool)

(assert (=> d!1926563 (= c!1106551 e!3746849)))

(declare-fun res!2547104 () Bool)

(assert (=> d!1926563 (=> (not res!2547104) (not e!3746849))))

(assert (=> d!1926563 (= res!2547104 ((_ is Cons!64448) (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))))))))

(assert (=> d!1926563 (= (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (h!70897 s!2326)) e!3746850)))

(declare-fun b!6148804 () Bool)

(assert (=> b!6148804 (= e!3746850 e!3746851)))

(declare-fun c!1106550 () Bool)

(assert (=> b!6148804 (= c!1106550 ((_ is Cons!64448) (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))))))))

(assert (= (and d!1926563 res!2547104) b!6148800))

(assert (= (and d!1926563 c!1106551) b!6148801))

(assert (= (and d!1926563 (not c!1106551)) b!6148804))

(assert (= (and b!6148804 c!1106550) b!6148802))

(assert (= (and b!6148804 (not c!1106550)) b!6148803))

(assert (= (or b!6148801 b!6148802) bm!511247))

(declare-fun m!6988820 () Bool)

(assert (=> b!6148800 m!6988820))

(declare-fun m!6988822 () Bool)

(assert (=> b!6148801 m!6988822))

(declare-fun m!6988824 () Bool)

(assert (=> bm!511247 m!6988824))

(assert (=> b!6147888 d!1926563))

(declare-fun b!6148805 () Bool)

(declare-fun e!3746852 () Bool)

(declare-fun e!3746857 () Bool)

(assert (=> b!6148805 (= e!3746852 e!3746857)))

(declare-fun res!2547108 () Bool)

(assert (=> b!6148805 (=> (not res!2547108) (not e!3746857))))

(declare-fun call!511254 () Bool)

(assert (=> b!6148805 (= res!2547108 call!511254)))

(declare-fun b!6148806 () Bool)

(declare-fun e!3746853 () Bool)

(declare-fun e!3746858 () Bool)

(assert (=> b!6148806 (= e!3746853 e!3746858)))

(declare-fun c!1106552 () Bool)

(assert (=> b!6148806 (= c!1106552 ((_ is Union!16091) (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292)))))))

(declare-fun d!1926565 () Bool)

(declare-fun res!2547105 () Bool)

(declare-fun e!3746854 () Bool)

(assert (=> d!1926565 (=> res!2547105 e!3746854)))

(assert (=> d!1926565 (= res!2547105 ((_ is ElementMatch!16091) (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292)))))))

(assert (=> d!1926565 (= (validRegex!7827 (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292)))) e!3746854)))

(declare-fun b!6148807 () Bool)

(declare-fun e!3746856 () Bool)

(declare-fun call!511253 () Bool)

(assert (=> b!6148807 (= e!3746856 call!511253)))

(declare-fun b!6148808 () Bool)

(declare-fun e!3746855 () Bool)

(assert (=> b!6148808 (= e!3746853 e!3746855)))

(declare-fun res!2547107 () Bool)

(assert (=> b!6148808 (= res!2547107 (not (nullable!6084 (reg!16420 (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292)))))))))

(assert (=> b!6148808 (=> (not res!2547107) (not e!3746855))))

(declare-fun bm!511248 () Bool)

(declare-fun call!511255 () Bool)

(declare-fun c!1106553 () Bool)

(assert (=> bm!511248 (= call!511255 (validRegex!7827 (ite c!1106553 (reg!16420 (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292)))) (ite c!1106552 (regOne!32695 (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292)))) (regOne!32694 (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292))))))))))

(declare-fun bm!511249 () Bool)

(assert (=> bm!511249 (= call!511253 (validRegex!7827 (ite c!1106552 (regTwo!32695 (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292)))) (regTwo!32694 (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292)))))))))

(declare-fun bm!511250 () Bool)

(assert (=> bm!511250 (= call!511254 call!511255)))

(declare-fun b!6148809 () Bool)

(declare-fun res!2547109 () Bool)

(assert (=> b!6148809 (=> res!2547109 e!3746852)))

(assert (=> b!6148809 (= res!2547109 (not ((_ is Concat!24936) (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292))))))))

(assert (=> b!6148809 (= e!3746858 e!3746852)))

(declare-fun b!6148810 () Bool)

(assert (=> b!6148810 (= e!3746854 e!3746853)))

(assert (=> b!6148810 (= c!1106553 ((_ is Star!16091) (ite c!1106250 (reg!16420 r!7292) (ite c!1106249 (regOne!32695 r!7292) (regOne!32694 r!7292)))))))

(declare-fun b!6148811 () Bool)

(declare-fun res!2547106 () Bool)

(assert (=> b!6148811 (=> (not res!2547106) (not e!3746856))))

(assert (=> b!6148811 (= res!2547106 call!511254)))

(assert (=> b!6148811 (= e!3746858 e!3746856)))

(declare-fun b!6148812 () Bool)

(assert (=> b!6148812 (= e!3746857 call!511253)))

(declare-fun b!6148813 () Bool)

(assert (=> b!6148813 (= e!3746855 call!511255)))

(assert (= (and d!1926565 (not res!2547105)) b!6148810))

(assert (= (and b!6148810 c!1106553) b!6148808))

(assert (= (and b!6148810 (not c!1106553)) b!6148806))

(assert (= (and b!6148808 res!2547107) b!6148813))

(assert (= (and b!6148806 c!1106552) b!6148811))

(assert (= (and b!6148806 (not c!1106552)) b!6148809))

(assert (= (and b!6148811 res!2547106) b!6148807))

(assert (= (and b!6148809 (not res!2547109)) b!6148805))

(assert (= (and b!6148805 res!2547108) b!6148812))

(assert (= (or b!6148807 b!6148812) bm!511249))

(assert (= (or b!6148811 b!6148805) bm!511250))

(assert (= (or b!6148813 bm!511250) bm!511248))

(declare-fun m!6988826 () Bool)

(assert (=> b!6148808 m!6988826))

(declare-fun m!6988828 () Bool)

(assert (=> bm!511248 m!6988828))

(declare-fun m!6988830 () Bool)

(assert (=> bm!511249 m!6988830))

(assert (=> bm!511033 d!1926565))

(declare-fun d!1926567 () Bool)

(declare-fun c!1106554 () Bool)

(assert (=> d!1926567 (= c!1106554 (isEmpty!36408 (tail!11787 (t!378058 s!2326))))))

(declare-fun e!3746859 () Bool)

(assert (=> d!1926567 (= (matchZipper!2103 (derivationStepZipper!2064 lt!2333954 (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))) e!3746859)))

(declare-fun b!6148814 () Bool)

(assert (=> b!6148814 (= e!3746859 (nullableZipper!1872 (derivationStepZipper!2064 lt!2333954 (head!12702 (t!378058 s!2326)))))))

(declare-fun b!6148815 () Bool)

(assert (=> b!6148815 (= e!3746859 (matchZipper!2103 (derivationStepZipper!2064 (derivationStepZipper!2064 lt!2333954 (head!12702 (t!378058 s!2326))) (head!12702 (tail!11787 (t!378058 s!2326)))) (tail!11787 (tail!11787 (t!378058 s!2326)))))))

(assert (= (and d!1926567 c!1106554) b!6148814))

(assert (= (and d!1926567 (not c!1106554)) b!6148815))

(assert (=> d!1926567 m!6987778))

(assert (=> d!1926567 m!6988422))

(assert (=> b!6148814 m!6987802))

(declare-fun m!6988832 () Bool)

(assert (=> b!6148814 m!6988832))

(assert (=> b!6148815 m!6987778))

(assert (=> b!6148815 m!6988426))

(assert (=> b!6148815 m!6987802))

(assert (=> b!6148815 m!6988426))

(declare-fun m!6988834 () Bool)

(assert (=> b!6148815 m!6988834))

(assert (=> b!6148815 m!6987778))

(assert (=> b!6148815 m!6988430))

(assert (=> b!6148815 m!6988834))

(assert (=> b!6148815 m!6988430))

(declare-fun m!6988836 () Bool)

(assert (=> b!6148815 m!6988836))

(assert (=> b!6147569 d!1926567))

(declare-fun bs!1524391 () Bool)

(declare-fun d!1926569 () Bool)

(assert (= bs!1524391 (and d!1926569 b!6147154)))

(declare-fun lambda!335293 () Int)

(assert (=> bs!1524391 (= (= (head!12702 (t!378058 s!2326)) (h!70897 s!2326)) (= lambda!335293 lambda!335177))))

(declare-fun bs!1524392 () Bool)

(assert (= bs!1524392 (and d!1926569 d!1926367)))

(assert (=> bs!1524392 (= lambda!335293 lambda!335273)))

(declare-fun bs!1524393 () Bool)

(assert (= bs!1524393 (and d!1926569 d!1926399)))

(assert (=> bs!1524393 (= lambda!335293 lambda!335276)))

(declare-fun bs!1524394 () Bool)

(assert (= bs!1524394 (and d!1926569 d!1926541)))

(assert (=> bs!1524394 (= lambda!335293 lambda!335290)))

(assert (=> d!1926569 true))

(assert (=> d!1926569 (= (derivationStepZipper!2064 lt!2333954 (head!12702 (t!378058 s!2326))) (flatMap!1596 lt!2333954 lambda!335293))))

(declare-fun bs!1524395 () Bool)

(assert (= bs!1524395 d!1926569))

(declare-fun m!6988838 () Bool)

(assert (=> bs!1524395 m!6988838))

(assert (=> b!6147569 d!1926569))

(assert (=> b!6147569 d!1926377))

(assert (=> b!6147569 d!1926379))

(assert (=> d!1926115 d!1926309))

(assert (=> d!1926045 d!1926503))

(declare-fun b!6148816 () Bool)

(declare-fun e!3746863 () Bool)

(declare-fun lt!2334076 () Bool)

(assert (=> b!6148816 (= e!3746863 (not lt!2334076))))

(declare-fun b!6148817 () Bool)

(declare-fun res!2547111 () Bool)

(declare-fun e!3746866 () Bool)

(assert (=> b!6148817 (=> (not res!2547111) (not e!3746866))))

(declare-fun call!511256 () Bool)

(assert (=> b!6148817 (= res!2547111 (not call!511256))))

(declare-fun b!6148818 () Bool)

(declare-fun e!3746862 () Bool)

(declare-fun e!3746861 () Bool)

(assert (=> b!6148818 (= e!3746862 e!3746861)))

(declare-fun res!2547115 () Bool)

(assert (=> b!6148818 (=> res!2547115 e!3746861)))

(assert (=> b!6148818 (= res!2547115 call!511256)))

(declare-fun b!6148819 () Bool)

(declare-fun e!3746860 () Bool)

(assert (=> b!6148819 (= e!3746860 e!3746862)))

(declare-fun res!2547112 () Bool)

(assert (=> b!6148819 (=> (not res!2547112) (not e!3746862))))

(assert (=> b!6148819 (= res!2547112 (not lt!2334076))))

(declare-fun b!6148820 () Bool)

(declare-fun e!3746864 () Bool)

(assert (=> b!6148820 (= e!3746864 (= lt!2334076 call!511256))))

(declare-fun b!6148821 () Bool)

(declare-fun res!2547110 () Bool)

(assert (=> b!6148821 (=> (not res!2547110) (not e!3746866))))

(assert (=> b!6148821 (= res!2547110 (isEmpty!36408 (tail!11787 Nil!64449)))))

(declare-fun b!6148822 () Bool)

(declare-fun res!2547117 () Bool)

(assert (=> b!6148822 (=> res!2547117 e!3746860)))

(assert (=> b!6148822 (= res!2547117 (not ((_ is ElementMatch!16091) (regOne!32694 r!7292))))))

(assert (=> b!6148822 (= e!3746863 e!3746860)))

(declare-fun b!6148823 () Bool)

(assert (=> b!6148823 (= e!3746861 (not (= (head!12702 Nil!64449) (c!1106101 (regOne!32694 r!7292)))))))

(declare-fun b!6148824 () Bool)

(assert (=> b!6148824 (= e!3746866 (= (head!12702 Nil!64449) (c!1106101 (regOne!32694 r!7292))))))

(declare-fun b!6148825 () Bool)

(declare-fun e!3746865 () Bool)

(assert (=> b!6148825 (= e!3746865 (nullable!6084 (regOne!32694 r!7292)))))

(declare-fun b!6148826 () Bool)

(declare-fun res!2547113 () Bool)

(assert (=> b!6148826 (=> res!2547113 e!3746860)))

(assert (=> b!6148826 (= res!2547113 e!3746866)))

(declare-fun res!2547116 () Bool)

(assert (=> b!6148826 (=> (not res!2547116) (not e!3746866))))

(assert (=> b!6148826 (= res!2547116 lt!2334076)))

(declare-fun b!6148827 () Bool)

(assert (=> b!6148827 (= e!3746864 e!3746863)))

(declare-fun c!1106556 () Bool)

(assert (=> b!6148827 (= c!1106556 ((_ is EmptyLang!16091) (regOne!32694 r!7292)))))

(declare-fun d!1926571 () Bool)

(assert (=> d!1926571 e!3746864))

(declare-fun c!1106555 () Bool)

(assert (=> d!1926571 (= c!1106555 ((_ is EmptyExpr!16091) (regOne!32694 r!7292)))))

(assert (=> d!1926571 (= lt!2334076 e!3746865)))

(declare-fun c!1106557 () Bool)

(assert (=> d!1926571 (= c!1106557 (isEmpty!36408 Nil!64449))))

(assert (=> d!1926571 (validRegex!7827 (regOne!32694 r!7292))))

(assert (=> d!1926571 (= (matchR!8274 (regOne!32694 r!7292) Nil!64449) lt!2334076)))

(declare-fun bm!511251 () Bool)

(assert (=> bm!511251 (= call!511256 (isEmpty!36408 Nil!64449))))

(declare-fun b!6148828 () Bool)

(declare-fun res!2547114 () Bool)

(assert (=> b!6148828 (=> res!2547114 e!3746861)))

(assert (=> b!6148828 (= res!2547114 (not (isEmpty!36408 (tail!11787 Nil!64449))))))

(declare-fun b!6148829 () Bool)

(assert (=> b!6148829 (= e!3746865 (matchR!8274 (derivativeStep!4811 (regOne!32694 r!7292) (head!12702 Nil!64449)) (tail!11787 Nil!64449)))))

(assert (= (and d!1926571 c!1106557) b!6148825))

(assert (= (and d!1926571 (not c!1106557)) b!6148829))

(assert (= (and d!1926571 c!1106555) b!6148820))

(assert (= (and d!1926571 (not c!1106555)) b!6148827))

(assert (= (and b!6148827 c!1106556) b!6148816))

(assert (= (and b!6148827 (not c!1106556)) b!6148822))

(assert (= (and b!6148822 (not res!2547117)) b!6148826))

(assert (= (and b!6148826 res!2547116) b!6148817))

(assert (= (and b!6148817 res!2547111) b!6148821))

(assert (= (and b!6148821 res!2547110) b!6148824))

(assert (= (and b!6148826 (not res!2547113)) b!6148819))

(assert (= (and b!6148819 res!2547112) b!6148818))

(assert (= (and b!6148818 (not res!2547115)) b!6148828))

(assert (= (and b!6148828 (not res!2547114)) b!6148823))

(assert (= (or b!6148820 b!6148817 b!6148818) bm!511251))

(declare-fun m!6988840 () Bool)

(assert (=> b!6148824 m!6988840))

(assert (=> b!6148829 m!6988840))

(assert (=> b!6148829 m!6988840))

(declare-fun m!6988842 () Bool)

(assert (=> b!6148829 m!6988842))

(declare-fun m!6988844 () Bool)

(assert (=> b!6148829 m!6988844))

(assert (=> b!6148829 m!6988842))

(assert (=> b!6148829 m!6988844))

(declare-fun m!6988846 () Bool)

(assert (=> b!6148829 m!6988846))

(declare-fun m!6988848 () Bool)

(assert (=> bm!511251 m!6988848))

(assert (=> b!6148823 m!6988840))

(declare-fun m!6988850 () Bool)

(assert (=> b!6148825 m!6988850))

(assert (=> b!6148821 m!6988844))

(assert (=> b!6148821 m!6988844))

(declare-fun m!6988852 () Bool)

(assert (=> b!6148821 m!6988852))

(assert (=> d!1926571 m!6988848))

(assert (=> d!1926571 m!6987680))

(assert (=> b!6148828 m!6988844))

(assert (=> b!6148828 m!6988844))

(assert (=> b!6148828 m!6988852))

(assert (=> d!1926045 d!1926571))

(assert (=> d!1926045 d!1926533))

(assert (=> d!1926129 d!1926497))

(assert (=> d!1926129 d!1926125))

(declare-fun d!1926573 () Bool)

(assert (=> d!1926573 (= (nullable!6084 r!7292) (nullableFct!2048 r!7292))))

(declare-fun bs!1524396 () Bool)

(assert (= bs!1524396 d!1926573))

(declare-fun m!6988854 () Bool)

(assert (=> bs!1524396 m!6988854))

(assert (=> b!6147785 d!1926573))

(declare-fun d!1926575 () Bool)

(assert (=> d!1926575 (= (isEmptyExpr!1507 lt!2334036) ((_ is EmptyExpr!16091) lt!2334036))))

(assert (=> b!6147817 d!1926575))

(declare-fun bs!1524397 () Bool)

(declare-fun d!1926577 () Bool)

(assert (= bs!1524397 (and d!1926577 d!1926449)))

(declare-fun lambda!335294 () Int)

(assert (=> bs!1524397 (= lambda!335294 lambda!335281)))

(declare-fun bs!1524398 () Bool)

(assert (= bs!1524398 (and d!1926577 d!1926133)))

(assert (=> bs!1524398 (= lambda!335294 lambda!335227)))

(declare-fun bs!1524399 () Bool)

(assert (= bs!1524399 (and d!1926577 d!1926363)))

(assert (=> bs!1524399 (= lambda!335294 lambda!335270)))

(declare-fun bs!1524400 () Bool)

(assert (= bs!1524400 (and d!1926577 d!1926517)))

(assert (=> bs!1524400 (= lambda!335294 lambda!335286)))

(declare-fun bs!1524401 () Bool)

(assert (= bs!1524401 (and d!1926577 d!1926153)))

(assert (=> bs!1524401 (= lambda!335294 lambda!335235)))

(declare-fun bs!1524402 () Bool)

(assert (= bs!1524402 (and d!1926577 d!1926135)))

(assert (=> bs!1524402 (= lambda!335294 lambda!335230)))

(declare-fun bs!1524403 () Bool)

(assert (= bs!1524403 (and d!1926577 d!1926151)))

(assert (=> bs!1524403 (= lambda!335294 lambda!335234)))

(declare-fun bs!1524404 () Bool)

(assert (= bs!1524404 (and d!1926577 d!1926137)))

(assert (=> bs!1524404 (= lambda!335294 lambda!335233)))

(declare-fun bs!1524405 () Bool)

(assert (= bs!1524405 (and d!1926577 d!1926123)))

(assert (=> bs!1524405 (= lambda!335294 lambda!335218)))

(assert (=> d!1926577 (= (inv!83474 (h!70898 (t!378059 zl!343))) (forall!15212 (exprs!5975 (h!70898 (t!378059 zl!343))) lambda!335294))))

(declare-fun bs!1524406 () Bool)

(assert (= bs!1524406 d!1926577))

(declare-fun m!6988856 () Bool)

(assert (=> bs!1524406 m!6988856))

(assert (=> b!6147935 d!1926577))

(declare-fun b!6148831 () Bool)

(declare-fun e!3746868 () List!64573)

(assert (=> b!6148831 (= e!3746868 (Cons!64449 (h!70897 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449))) (++!14176 (t!378058 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449))) (t!378058 s!2326))))))

(declare-fun b!6148832 () Bool)

(declare-fun res!2547118 () Bool)

(declare-fun e!3746867 () Bool)

(assert (=> b!6148832 (=> (not res!2547118) (not e!3746867))))

(declare-fun lt!2334077 () List!64573)

(assert (=> b!6148832 (= res!2547118 (= (size!40232 lt!2334077) (+ (size!40232 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449))) (size!40232 (t!378058 s!2326)))))))

(declare-fun b!6148830 () Bool)

(assert (=> b!6148830 (= e!3746868 (t!378058 s!2326))))

(declare-fun b!6148833 () Bool)

(assert (=> b!6148833 (= e!3746867 (or (not (= (t!378058 s!2326) Nil!64449)) (= lt!2334077 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449)))))))

(declare-fun d!1926579 () Bool)

(assert (=> d!1926579 e!3746867))

(declare-fun res!2547119 () Bool)

(assert (=> d!1926579 (=> (not res!2547119) (not e!3746867))))

(assert (=> d!1926579 (= res!2547119 (= (content!12005 lt!2334077) ((_ map or) (content!12005 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449))) (content!12005 (t!378058 s!2326)))))))

(assert (=> d!1926579 (= lt!2334077 e!3746868)))

(declare-fun c!1106558 () Bool)

(assert (=> d!1926579 (= c!1106558 ((_ is Nil!64449) (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449))))))

(assert (=> d!1926579 (= (++!14176 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449)) (t!378058 s!2326)) lt!2334077)))

(assert (= (and d!1926579 c!1106558) b!6148830))

(assert (= (and d!1926579 (not c!1106558)) b!6148831))

(assert (= (and d!1926579 res!2547119) b!6148832))

(assert (= (and b!6148832 res!2547118) b!6148833))

(declare-fun m!6988858 () Bool)

(assert (=> b!6148831 m!6988858))

(declare-fun m!6988860 () Bool)

(assert (=> b!6148832 m!6988860))

(assert (=> b!6148832 m!6987682))

(declare-fun m!6988862 () Bool)

(assert (=> b!6148832 m!6988862))

(declare-fun m!6988864 () Bool)

(assert (=> b!6148832 m!6988864))

(declare-fun m!6988866 () Bool)

(assert (=> d!1926579 m!6988866))

(assert (=> d!1926579 m!6987682))

(declare-fun m!6988868 () Bool)

(assert (=> d!1926579 m!6988868))

(declare-fun m!6988870 () Bool)

(assert (=> d!1926579 m!6988870))

(assert (=> b!6147385 d!1926579))

(declare-fun b!6148835 () Bool)

(declare-fun e!3746870 () List!64573)

(assert (=> b!6148835 (= e!3746870 (Cons!64449 (h!70897 Nil!64449) (++!14176 (t!378058 Nil!64449) (Cons!64449 (h!70897 s!2326) Nil!64449))))))

(declare-fun b!6148836 () Bool)

(declare-fun res!2547120 () Bool)

(declare-fun e!3746869 () Bool)

(assert (=> b!6148836 (=> (not res!2547120) (not e!3746869))))

(declare-fun lt!2334078 () List!64573)

(assert (=> b!6148836 (= res!2547120 (= (size!40232 lt!2334078) (+ (size!40232 Nil!64449) (size!40232 (Cons!64449 (h!70897 s!2326) Nil!64449)))))))

(declare-fun b!6148834 () Bool)

(assert (=> b!6148834 (= e!3746870 (Cons!64449 (h!70897 s!2326) Nil!64449))))

(declare-fun b!6148837 () Bool)

(assert (=> b!6148837 (= e!3746869 (or (not (= (Cons!64449 (h!70897 s!2326) Nil!64449) Nil!64449)) (= lt!2334078 Nil!64449)))))

(declare-fun d!1926581 () Bool)

(assert (=> d!1926581 e!3746869))

(declare-fun res!2547121 () Bool)

(assert (=> d!1926581 (=> (not res!2547121) (not e!3746869))))

(assert (=> d!1926581 (= res!2547121 (= (content!12005 lt!2334078) ((_ map or) (content!12005 Nil!64449) (content!12005 (Cons!64449 (h!70897 s!2326) Nil!64449)))))))

(assert (=> d!1926581 (= lt!2334078 e!3746870)))

(declare-fun c!1106559 () Bool)

(assert (=> d!1926581 (= c!1106559 ((_ is Nil!64449) Nil!64449))))

(assert (=> d!1926581 (= (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449)) lt!2334078)))

(assert (= (and d!1926581 c!1106559) b!6148834))

(assert (= (and d!1926581 (not c!1106559)) b!6148835))

(assert (= (and d!1926581 res!2547121) b!6148836))

(assert (= (and b!6148836 res!2547120) b!6148837))

(declare-fun m!6988872 () Bool)

(assert (=> b!6148835 m!6988872))

(declare-fun m!6988874 () Bool)

(assert (=> b!6148836 m!6988874))

(declare-fun m!6988876 () Bool)

(assert (=> b!6148836 m!6988876))

(declare-fun m!6988878 () Bool)

(assert (=> b!6148836 m!6988878))

(declare-fun m!6988880 () Bool)

(assert (=> d!1926581 m!6988880))

(declare-fun m!6988882 () Bool)

(assert (=> d!1926581 m!6988882))

(declare-fun m!6988884 () Bool)

(assert (=> d!1926581 m!6988884))

(assert (=> b!6147385 d!1926581))

(declare-fun d!1926583 () Bool)

(assert (=> d!1926583 (= (++!14176 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449)) (t!378058 s!2326)) s!2326)))

(declare-fun lt!2334081 () Unit!157525)

(declare-fun choose!45702 (List!64573 C!32452 List!64573 List!64573) Unit!157525)

(assert (=> d!1926583 (= lt!2334081 (choose!45702 Nil!64449 (h!70897 s!2326) (t!378058 s!2326) s!2326))))

(assert (=> d!1926583 (= (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) (t!378058 s!2326))) s!2326)))

(assert (=> d!1926583 (= (lemmaMoveElementToOtherListKeepsConcatEq!2271 Nil!64449 (h!70897 s!2326) (t!378058 s!2326) s!2326) lt!2334081)))

(declare-fun bs!1524407 () Bool)

(assert (= bs!1524407 d!1926583))

(assert (=> bs!1524407 m!6987682))

(assert (=> bs!1524407 m!6987682))

(assert (=> bs!1524407 m!6987684))

(declare-fun m!6988886 () Bool)

(assert (=> bs!1524407 m!6988886))

(declare-fun m!6988888 () Bool)

(assert (=> bs!1524407 m!6988888))

(assert (=> b!6147385 d!1926583))

(declare-fun b!6148838 () Bool)

(declare-fun e!3746871 () Bool)

(declare-fun lt!2334084 () Option!15982)

(assert (=> b!6148838 (= e!3746871 (not (isDefined!12685 lt!2334084)))))

(declare-fun b!6148839 () Bool)

(declare-fun e!3746875 () Bool)

(assert (=> b!6148839 (= e!3746875 (matchR!8274 (regTwo!32694 r!7292) (t!378058 s!2326)))))

(declare-fun b!6148841 () Bool)

(declare-fun e!3746873 () Option!15982)

(declare-fun e!3746874 () Option!15982)

(assert (=> b!6148841 (= e!3746873 e!3746874)))

(declare-fun c!1106560 () Bool)

(assert (=> b!6148841 (= c!1106560 ((_ is Nil!64449) (t!378058 s!2326)))))

(declare-fun b!6148842 () Bool)

(declare-fun e!3746872 () Bool)

(assert (=> b!6148842 (= e!3746872 (= (++!14176 (_1!36373 (get!22237 lt!2334084)) (_2!36373 (get!22237 lt!2334084))) s!2326))))

(declare-fun b!6148843 () Bool)

(declare-fun lt!2334083 () Unit!157525)

(declare-fun lt!2334082 () Unit!157525)

(assert (=> b!6148843 (= lt!2334083 lt!2334082)))

(assert (=> b!6148843 (= (++!14176 (++!14176 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449)) (Cons!64449 (h!70897 (t!378058 s!2326)) Nil!64449)) (t!378058 (t!378058 s!2326))) s!2326)))

(assert (=> b!6148843 (= lt!2334082 (lemmaMoveElementToOtherListKeepsConcatEq!2271 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449)) (h!70897 (t!378058 s!2326)) (t!378058 (t!378058 s!2326)) s!2326))))

(assert (=> b!6148843 (= e!3746874 (findConcatSeparation!2396 (regOne!32694 r!7292) (regTwo!32694 r!7292) (++!14176 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449)) (Cons!64449 (h!70897 (t!378058 s!2326)) Nil!64449)) (t!378058 (t!378058 s!2326)) s!2326))))

(declare-fun b!6148844 () Bool)

(declare-fun res!2547123 () Bool)

(assert (=> b!6148844 (=> (not res!2547123) (not e!3746872))))

(assert (=> b!6148844 (= res!2547123 (matchR!8274 (regOne!32694 r!7292) (_1!36373 (get!22237 lt!2334084))))))

(declare-fun b!6148845 () Bool)

(assert (=> b!6148845 (= e!3746874 None!15981)))

(declare-fun b!6148846 () Bool)

(declare-fun res!2547126 () Bool)

(assert (=> b!6148846 (=> (not res!2547126) (not e!3746872))))

(assert (=> b!6148846 (= res!2547126 (matchR!8274 (regTwo!32694 r!7292) (_2!36373 (get!22237 lt!2334084))))))

(declare-fun d!1926585 () Bool)

(assert (=> d!1926585 e!3746871))

(declare-fun res!2547124 () Bool)

(assert (=> d!1926585 (=> res!2547124 e!3746871)))

(assert (=> d!1926585 (= res!2547124 e!3746872)))

(declare-fun res!2547125 () Bool)

(assert (=> d!1926585 (=> (not res!2547125) (not e!3746872))))

(assert (=> d!1926585 (= res!2547125 (isDefined!12685 lt!2334084))))

(assert (=> d!1926585 (= lt!2334084 e!3746873)))

(declare-fun c!1106561 () Bool)

(assert (=> d!1926585 (= c!1106561 e!3746875)))

(declare-fun res!2547122 () Bool)

(assert (=> d!1926585 (=> (not res!2547122) (not e!3746875))))

(assert (=> d!1926585 (= res!2547122 (matchR!8274 (regOne!32694 r!7292) (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449))))))

(assert (=> d!1926585 (validRegex!7827 (regOne!32694 r!7292))))

(assert (=> d!1926585 (= (findConcatSeparation!2396 (regOne!32694 r!7292) (regTwo!32694 r!7292) (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449)) (t!378058 s!2326) s!2326) lt!2334084)))

(declare-fun b!6148840 () Bool)

(assert (=> b!6148840 (= e!3746873 (Some!15981 (tuple2!66141 (++!14176 Nil!64449 (Cons!64449 (h!70897 s!2326) Nil!64449)) (t!378058 s!2326))))))

(assert (= (and d!1926585 res!2547122) b!6148839))

(assert (= (and d!1926585 c!1106561) b!6148840))

(assert (= (and d!1926585 (not c!1106561)) b!6148841))

(assert (= (and b!6148841 c!1106560) b!6148845))

(assert (= (and b!6148841 (not c!1106560)) b!6148843))

(assert (= (and d!1926585 res!2547125) b!6148844))

(assert (= (and b!6148844 res!2547123) b!6148846))

(assert (= (and b!6148846 res!2547126) b!6148842))

(assert (= (and d!1926585 (not res!2547124)) b!6148838))

(declare-fun m!6988890 () Bool)

(assert (=> b!6148839 m!6988890))

(declare-fun m!6988892 () Bool)

(assert (=> b!6148842 m!6988892))

(declare-fun m!6988894 () Bool)

(assert (=> b!6148842 m!6988894))

(declare-fun m!6988896 () Bool)

(assert (=> d!1926585 m!6988896))

(assert (=> d!1926585 m!6987682))

(declare-fun m!6988898 () Bool)

(assert (=> d!1926585 m!6988898))

(assert (=> d!1926585 m!6987680))

(assert (=> b!6148843 m!6987682))

(declare-fun m!6988900 () Bool)

(assert (=> b!6148843 m!6988900))

(assert (=> b!6148843 m!6988900))

(declare-fun m!6988902 () Bool)

(assert (=> b!6148843 m!6988902))

(assert (=> b!6148843 m!6987682))

(declare-fun m!6988904 () Bool)

(assert (=> b!6148843 m!6988904))

(assert (=> b!6148843 m!6988900))

(declare-fun m!6988906 () Bool)

(assert (=> b!6148843 m!6988906))

(assert (=> b!6148838 m!6988896))

(assert (=> b!6148846 m!6988892))

(declare-fun m!6988908 () Bool)

(assert (=> b!6148846 m!6988908))

(assert (=> b!6148844 m!6988892))

(declare-fun m!6988910 () Bool)

(assert (=> b!6148844 m!6988910))

(assert (=> b!6147385 d!1926585))

(assert (=> d!1926113 d!1926115))

(assert (=> d!1926113 d!1926093))

(declare-fun e!3746876 () Bool)

(declare-fun d!1926587 () Bool)

(assert (=> d!1926587 (= (matchZipper!2103 ((_ map or) lt!2333949 lt!2333942) (t!378058 s!2326)) e!3746876)))

(declare-fun res!2547127 () Bool)

(assert (=> d!1926587 (=> res!2547127 e!3746876)))

(assert (=> d!1926587 (= res!2547127 (matchZipper!2103 lt!2333949 (t!378058 s!2326)))))

(assert (=> d!1926587 true))

(declare-fun _$48!1680 () Unit!157525)

(assert (=> d!1926587 (= (choose!45695 lt!2333949 lt!2333942 (t!378058 s!2326)) _$48!1680)))

(declare-fun b!6148847 () Bool)

(assert (=> b!6148847 (= e!3746876 (matchZipper!2103 lt!2333942 (t!378058 s!2326)))))

(assert (= (and d!1926587 (not res!2547127)) b!6148847))

(assert (=> d!1926587 m!6987444))

(assert (=> d!1926587 m!6987442))

(assert (=> b!6148847 m!6987394))

(assert (=> d!1926113 d!1926587))

(declare-fun d!1926589 () Bool)

(assert (=> d!1926589 (= ($colon$colon!1968 (exprs!5975 lt!2333933) (ite (or c!1106310 c!1106307) (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (h!70896 (exprs!5975 (h!70898 zl!343))))) (Cons!64448 (ite (or c!1106310 c!1106307) (regTwo!32694 (h!70896 (exprs!5975 (h!70898 zl!343)))) (h!70896 (exprs!5975 (h!70898 zl!343)))) (exprs!5975 lt!2333933)))))

(assert (=> bm!511053 d!1926589))

(assert (=> d!1926097 d!1926309))

(assert (=> b!6147631 d!1926087))

(assert (=> d!1926165 d!1926161))

(declare-fun d!1926591 () Bool)

(assert (=> d!1926591 (= (flatMap!1596 z!1189 lambda!335177) (dynLambda!25402 lambda!335177 (h!70898 zl!343)))))

(assert (=> d!1926591 true))

(declare-fun _$13!3059 () Unit!157525)

(assert (=> d!1926591 (= (choose!45700 z!1189 (h!70898 zl!343) lambda!335177) _$13!3059)))

(declare-fun b_lambda!234029 () Bool)

(assert (=> (not b_lambda!234029) (not d!1926591)))

(declare-fun bs!1524408 () Bool)

(assert (= bs!1524408 d!1926591))

(assert (=> bs!1524408 m!6987482))

(assert (=> bs!1524408 m!6987982))

(assert (=> d!1926165 d!1926591))

(declare-fun d!1926593 () Bool)

(assert (=> d!1926593 (= (isEmpty!36408 (tail!11787 s!2326)) ((_ is Nil!64449) (tail!11787 s!2326)))))

(assert (=> b!6147788 d!1926593))

(declare-fun d!1926595 () Bool)

(assert (=> d!1926595 (= (tail!11787 s!2326) (t!378058 s!2326))))

(assert (=> b!6147788 d!1926595))

(declare-fun b!6148848 () Bool)

(declare-fun e!3746877 () Bool)

(assert (=> b!6148848 (= e!3746877 (nullable!6084 (h!70896 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343))))))))))

(declare-fun e!3746878 () (InoxSet Context!10950))

(declare-fun b!6148849 () Bool)

(declare-fun call!511257 () (InoxSet Context!10950))

(assert (=> b!6148849 (= e!3746878 ((_ map or) call!511257 (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343))))))) (h!70897 s!2326))))))

(declare-fun b!6148850 () Bool)

(declare-fun e!3746879 () (InoxSet Context!10950))

(assert (=> b!6148850 (= e!3746879 call!511257)))

(declare-fun bm!511252 () Bool)

(assert (=> bm!511252 (= call!511257 (derivationStepZipperDown!1339 (h!70896 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343)))))) (Context!10951 (t!378057 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343))))))) (h!70897 s!2326)))))

(declare-fun b!6148851 () Bool)

(assert (=> b!6148851 (= e!3746879 ((as const (Array Context!10950 Bool)) false))))

(declare-fun d!1926597 () Bool)

(declare-fun c!1106563 () Bool)

(assert (=> d!1926597 (= c!1106563 e!3746877)))

(declare-fun res!2547128 () Bool)

(assert (=> d!1926597 (=> (not res!2547128) (not e!3746877))))

(assert (=> d!1926597 (= res!2547128 ((_ is Cons!64448) (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343)))))))))

(assert (=> d!1926597 (= (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343)))) (h!70897 s!2326)) e!3746878)))

(declare-fun b!6148852 () Bool)

(assert (=> b!6148852 (= e!3746878 e!3746879)))

(declare-fun c!1106562 () Bool)

(assert (=> b!6148852 (= c!1106562 ((_ is Cons!64448) (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (h!70898 zl!343)))))))))

(assert (= (and d!1926597 res!2547128) b!6148848))

(assert (= (and d!1926597 c!1106563) b!6148849))

(assert (= (and d!1926597 (not c!1106563)) b!6148852))

(assert (= (and b!6148852 c!1106562) b!6148850))

(assert (= (and b!6148852 (not c!1106562)) b!6148851))

(assert (= (or b!6148849 b!6148850) bm!511252))

(declare-fun m!6988912 () Bool)

(assert (=> b!6148848 m!6988912))

(declare-fun m!6988914 () Bool)

(assert (=> b!6148849 m!6988914))

(declare-fun m!6988916 () Bool)

(assert (=> bm!511252 m!6988916))

(assert (=> b!6147898 d!1926597))

(declare-fun b!6148853 () Bool)

(declare-fun e!3746883 () Bool)

(declare-fun lt!2334085 () Bool)

(assert (=> b!6148853 (= e!3746883 (not lt!2334085))))

(declare-fun b!6148854 () Bool)

(declare-fun res!2547130 () Bool)

(declare-fun e!3746886 () Bool)

(assert (=> b!6148854 (=> (not res!2547130) (not e!3746886))))

(declare-fun call!511258 () Bool)

(assert (=> b!6148854 (= res!2547130 (not call!511258))))

(declare-fun b!6148855 () Bool)

(declare-fun e!3746882 () Bool)

(declare-fun e!3746881 () Bool)

(assert (=> b!6148855 (= e!3746882 e!3746881)))

(declare-fun res!2547134 () Bool)

(assert (=> b!6148855 (=> res!2547134 e!3746881)))

(assert (=> b!6148855 (= res!2547134 call!511258)))

(declare-fun b!6148856 () Bool)

(declare-fun e!3746880 () Bool)

(assert (=> b!6148856 (= e!3746880 e!3746882)))

(declare-fun res!2547131 () Bool)

(assert (=> b!6148856 (=> (not res!2547131) (not e!3746882))))

(assert (=> b!6148856 (= res!2547131 (not lt!2334085))))

(declare-fun b!6148857 () Bool)

(declare-fun e!3746884 () Bool)

(assert (=> b!6148857 (= e!3746884 (= lt!2334085 call!511258))))

(declare-fun b!6148858 () Bool)

(declare-fun res!2547129 () Bool)

(assert (=> b!6148858 (=> (not res!2547129) (not e!3746886))))

(assert (=> b!6148858 (= res!2547129 (isEmpty!36408 (tail!11787 s!2326)))))

(declare-fun b!6148859 () Bool)

(declare-fun res!2547136 () Bool)

(assert (=> b!6148859 (=> res!2547136 e!3746880)))

(assert (=> b!6148859 (= res!2547136 (not ((_ is ElementMatch!16091) (regTwo!32694 r!7292))))))

(assert (=> b!6148859 (= e!3746883 e!3746880)))

(declare-fun b!6148860 () Bool)

(assert (=> b!6148860 (= e!3746881 (not (= (head!12702 s!2326) (c!1106101 (regTwo!32694 r!7292)))))))

(declare-fun b!6148861 () Bool)

(assert (=> b!6148861 (= e!3746886 (= (head!12702 s!2326) (c!1106101 (regTwo!32694 r!7292))))))

(declare-fun b!6148862 () Bool)

(declare-fun e!3746885 () Bool)

(assert (=> b!6148862 (= e!3746885 (nullable!6084 (regTwo!32694 r!7292)))))

(declare-fun b!6148863 () Bool)

(declare-fun res!2547132 () Bool)

(assert (=> b!6148863 (=> res!2547132 e!3746880)))

(assert (=> b!6148863 (= res!2547132 e!3746886)))

(declare-fun res!2547135 () Bool)

(assert (=> b!6148863 (=> (not res!2547135) (not e!3746886))))

(assert (=> b!6148863 (= res!2547135 lt!2334085)))

(declare-fun b!6148864 () Bool)

(assert (=> b!6148864 (= e!3746884 e!3746883)))

(declare-fun c!1106565 () Bool)

(assert (=> b!6148864 (= c!1106565 ((_ is EmptyLang!16091) (regTwo!32694 r!7292)))))

(declare-fun d!1926599 () Bool)

(assert (=> d!1926599 e!3746884))

(declare-fun c!1106564 () Bool)

(assert (=> d!1926599 (= c!1106564 ((_ is EmptyExpr!16091) (regTwo!32694 r!7292)))))

(assert (=> d!1926599 (= lt!2334085 e!3746885)))

(declare-fun c!1106566 () Bool)

(assert (=> d!1926599 (= c!1106566 (isEmpty!36408 s!2326))))

(assert (=> d!1926599 (validRegex!7827 (regTwo!32694 r!7292))))

(assert (=> d!1926599 (= (matchR!8274 (regTwo!32694 r!7292) s!2326) lt!2334085)))

(declare-fun bm!511253 () Bool)

(assert (=> bm!511253 (= call!511258 (isEmpty!36408 s!2326))))

(declare-fun b!6148865 () Bool)

(declare-fun res!2547133 () Bool)

(assert (=> b!6148865 (=> res!2547133 e!3746881)))

(assert (=> b!6148865 (= res!2547133 (not (isEmpty!36408 (tail!11787 s!2326))))))

(declare-fun b!6148866 () Bool)

(assert (=> b!6148866 (= e!3746885 (matchR!8274 (derivativeStep!4811 (regTwo!32694 r!7292) (head!12702 s!2326)) (tail!11787 s!2326)))))

(assert (= (and d!1926599 c!1106566) b!6148862))

(assert (= (and d!1926599 (not c!1106566)) b!6148866))

(assert (= (and d!1926599 c!1106564) b!6148857))

(assert (= (and d!1926599 (not c!1106564)) b!6148864))

(assert (= (and b!6148864 c!1106565) b!6148853))

(assert (= (and b!6148864 (not c!1106565)) b!6148859))

(assert (= (and b!6148859 (not res!2547136)) b!6148863))

(assert (= (and b!6148863 res!2547135) b!6148854))

(assert (= (and b!6148854 res!2547130) b!6148858))

(assert (= (and b!6148858 res!2547129) b!6148861))

(assert (= (and b!6148863 (not res!2547132)) b!6148856))

(assert (= (and b!6148856 res!2547131) b!6148855))

(assert (= (and b!6148855 (not res!2547134)) b!6148865))

(assert (= (and b!6148865 (not res!2547133)) b!6148860))

(assert (= (or b!6148857 b!6148854 b!6148855) bm!511253))

(assert (=> b!6148861 m!6987878))

(assert (=> b!6148866 m!6987878))

(assert (=> b!6148866 m!6987878))

(declare-fun m!6988918 () Bool)

(assert (=> b!6148866 m!6988918))

(assert (=> b!6148866 m!6987882))

(assert (=> b!6148866 m!6988918))

(assert (=> b!6148866 m!6987882))

(declare-fun m!6988920 () Bool)

(assert (=> b!6148866 m!6988920))

(assert (=> bm!511253 m!6987876))

(assert (=> b!6148860 m!6987878))

(assert (=> b!6148862 m!6988706))

(assert (=> b!6148858 m!6987882))

(assert (=> b!6148858 m!6987882))

(assert (=> b!6148858 m!6987888))

(assert (=> d!1926599 m!6987876))

(assert (=> d!1926599 m!6988710))

(assert (=> b!6148865 m!6987882))

(assert (=> b!6148865 m!6987882))

(assert (=> b!6148865 m!6987888))

(assert (=> b!6147381 d!1926599))

(assert (=> b!6147781 d!1926593))

(assert (=> b!6147781 d!1926595))

(declare-fun d!1926601 () Bool)

(assert (=> d!1926601 (= (head!12704 (exprs!5975 (h!70898 zl!343))) (h!70896 (exprs!5975 (h!70898 zl!343))))))

(assert (=> b!6147813 d!1926601))

(declare-fun bs!1524409 () Bool)

(declare-fun d!1926603 () Bool)

(assert (= bs!1524409 (and d!1926603 d!1926133)))

(declare-fun lambda!335295 () Int)

(assert (=> bs!1524409 (= lambda!335295 lambda!335227)))

(declare-fun bs!1524410 () Bool)

(assert (= bs!1524410 (and d!1926603 d!1926363)))

(assert (=> bs!1524410 (= lambda!335295 lambda!335270)))

(declare-fun bs!1524411 () Bool)

(assert (= bs!1524411 (and d!1926603 d!1926517)))

(assert (=> bs!1524411 (= lambda!335295 lambda!335286)))

(declare-fun bs!1524412 () Bool)

(assert (= bs!1524412 (and d!1926603 d!1926153)))

(assert (=> bs!1524412 (= lambda!335295 lambda!335235)))

(declare-fun bs!1524413 () Bool)

(assert (= bs!1524413 (and d!1926603 d!1926135)))

(assert (=> bs!1524413 (= lambda!335295 lambda!335230)))

(declare-fun bs!1524414 () Bool)

(assert (= bs!1524414 (and d!1926603 d!1926151)))

(assert (=> bs!1524414 (= lambda!335295 lambda!335234)))

(declare-fun bs!1524415 () Bool)

(assert (= bs!1524415 (and d!1926603 d!1926137)))

(assert (=> bs!1524415 (= lambda!335295 lambda!335233)))

(declare-fun bs!1524416 () Bool)

(assert (= bs!1524416 (and d!1926603 d!1926123)))

(assert (=> bs!1524416 (= lambda!335295 lambda!335218)))

(declare-fun bs!1524417 () Bool)

(assert (= bs!1524417 (and d!1926603 d!1926449)))

(assert (=> bs!1524417 (= lambda!335295 lambda!335281)))

(declare-fun bs!1524418 () Bool)

(assert (= bs!1524418 (and d!1926603 d!1926577)))

(assert (=> bs!1524418 (= lambda!335295 lambda!335294)))

(assert (=> d!1926603 (= (inv!83474 setElem!41612) (forall!15212 (exprs!5975 setElem!41612) lambda!335295))))

(declare-fun bs!1524419 () Bool)

(assert (= bs!1524419 d!1926603))

(declare-fun m!6988922 () Bool)

(assert (=> bs!1524419 m!6988922))

(assert (=> setNonEmpty!41612 d!1926603))

(declare-fun bs!1524420 () Bool)

(declare-fun d!1926605 () Bool)

(assert (= bs!1524420 (and d!1926605 d!1926403)))

(declare-fun lambda!335296 () Int)

(assert (=> bs!1524420 (= lambda!335296 lambda!335279)))

(declare-fun bs!1524421 () Bool)

(assert (= bs!1524421 (and d!1926605 d!1926451)))

(assert (=> bs!1524421 (= lambda!335296 lambda!335282)))

(declare-fun bs!1524422 () Bool)

(assert (= bs!1524422 (and d!1926605 d!1926555)))

(assert (=> bs!1524422 (= lambda!335296 lambda!335291)))

(declare-fun bs!1524423 () Bool)

(assert (= bs!1524423 (and d!1926605 d!1926561)))

(assert (=> bs!1524423 (= lambda!335296 lambda!335292)))

(assert (=> d!1926605 (= (nullableZipper!1872 lt!2333943) (exists!2437 lt!2333943 lambda!335296))))

(declare-fun bs!1524424 () Bool)

(assert (= bs!1524424 d!1926605))

(declare-fun m!6988924 () Bool)

(assert (=> bs!1524424 m!6988924))

(assert (=> b!6147626 d!1926605))

(declare-fun d!1926607 () Bool)

(assert (=> d!1926607 (= (isEmpty!36404 (t!378057 (unfocusZipperList!1512 zl!343))) ((_ is Nil!64448) (t!378057 (unfocusZipperList!1512 zl!343))))))

(assert (=> b!6147846 d!1926607))

(declare-fun b!6148867 () Bool)

(declare-fun e!3746887 () Bool)

(assert (=> b!6148867 (= e!3746887 (nullable!6084 (h!70896 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333933)))))))))

(declare-fun b!6148868 () Bool)

(declare-fun call!511259 () (InoxSet Context!10950))

(declare-fun e!3746888 () (InoxSet Context!10950))

(assert (=> b!6148868 (= e!3746888 ((_ map or) call!511259 (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333933)))))) (h!70897 s!2326))))))

(declare-fun b!6148869 () Bool)

(declare-fun e!3746889 () (InoxSet Context!10950))

(assert (=> b!6148869 (= e!3746889 call!511259)))

(declare-fun bm!511254 () Bool)

(assert (=> bm!511254 (= call!511259 (derivationStepZipperDown!1339 (h!70896 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333933))))) (Context!10951 (t!378057 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333933)))))) (h!70897 s!2326)))))

(declare-fun b!6148870 () Bool)

(assert (=> b!6148870 (= e!3746889 ((as const (Array Context!10950 Bool)) false))))

(declare-fun d!1926609 () Bool)

(declare-fun c!1106568 () Bool)

(assert (=> d!1926609 (= c!1106568 e!3746887)))

(declare-fun res!2547137 () Bool)

(assert (=> d!1926609 (=> (not res!2547137) (not e!3746887))))

(assert (=> d!1926609 (= res!2547137 ((_ is Cons!64448) (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333933))))))))

(assert (=> d!1926609 (= (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 lt!2333933))) (h!70897 s!2326)) e!3746888)))

(declare-fun b!6148871 () Bool)

(assert (=> b!6148871 (= e!3746888 e!3746889)))

(declare-fun c!1106567 () Bool)

(assert (=> b!6148871 (= c!1106567 ((_ is Cons!64448) (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333933))))))))

(assert (= (and d!1926609 res!2547137) b!6148867))

(assert (= (and d!1926609 c!1106568) b!6148868))

(assert (= (and d!1926609 (not c!1106568)) b!6148871))

(assert (= (and b!6148871 c!1106567) b!6148869))

(assert (= (and b!6148871 (not c!1106567)) b!6148870))

(assert (= (or b!6148868 b!6148869) bm!511254))

(declare-fun m!6988926 () Bool)

(assert (=> b!6148867 m!6988926))

(declare-fun m!6988928 () Bool)

(assert (=> b!6148868 m!6988928))

(declare-fun m!6988930 () Bool)

(assert (=> bm!511254 m!6988930))

(assert (=> b!6147893 d!1926609))

(declare-fun b!6148872 () Bool)

(declare-fun e!3746890 () Bool)

(assert (=> b!6148872 (= e!3746890 (nullable!6084 (h!70896 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333955)))))))))

(declare-fun e!3746891 () (InoxSet Context!10950))

(declare-fun call!511260 () (InoxSet Context!10950))

(declare-fun b!6148873 () Bool)

(assert (=> b!6148873 (= e!3746891 ((_ map or) call!511260 (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333955)))))) (h!70897 s!2326))))))

(declare-fun b!6148874 () Bool)

(declare-fun e!3746892 () (InoxSet Context!10950))

(assert (=> b!6148874 (= e!3746892 call!511260)))

(declare-fun bm!511255 () Bool)

(assert (=> bm!511255 (= call!511260 (derivationStepZipperDown!1339 (h!70896 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333955))))) (Context!10951 (t!378057 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333955)))))) (h!70897 s!2326)))))

(declare-fun b!6148875 () Bool)

(assert (=> b!6148875 (= e!3746892 ((as const (Array Context!10950 Bool)) false))))

(declare-fun d!1926611 () Bool)

(declare-fun c!1106570 () Bool)

(assert (=> d!1926611 (= c!1106570 e!3746890)))

(declare-fun res!2547138 () Bool)

(assert (=> d!1926611 (=> (not res!2547138) (not e!3746890))))

(assert (=> d!1926611 (= res!2547138 ((_ is Cons!64448) (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333955))))))))

(assert (=> d!1926611 (= (derivationStepZipperUp!1265 (Context!10951 (t!378057 (exprs!5975 lt!2333955))) (h!70897 s!2326)) e!3746891)))

(declare-fun b!6148876 () Bool)

(assert (=> b!6148876 (= e!3746891 e!3746892)))

(declare-fun c!1106569 () Bool)

(assert (=> b!6148876 (= c!1106569 ((_ is Cons!64448) (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333955))))))))

(assert (= (and d!1926611 res!2547138) b!6148872))

(assert (= (and d!1926611 c!1106570) b!6148873))

(assert (= (and d!1926611 (not c!1106570)) b!6148876))

(assert (= (and b!6148876 c!1106569) b!6148874))

(assert (= (and b!6148876 (not c!1106569)) b!6148875))

(assert (= (or b!6148873 b!6148874) bm!511255))

(declare-fun m!6988932 () Bool)

(assert (=> b!6148872 m!6988932))

(declare-fun m!6988934 () Bool)

(assert (=> b!6148873 m!6988934))

(declare-fun m!6988936 () Bool)

(assert (=> bm!511255 m!6988936))

(assert (=> b!6147872 d!1926611))

(declare-fun d!1926613 () Bool)

(declare-fun c!1106573 () Bool)

(assert (=> d!1926613 (= c!1106573 ((_ is Nil!64450) lt!2334023))))

(declare-fun e!3746895 () (InoxSet Context!10950))

(assert (=> d!1926613 (= (content!12004 lt!2334023) e!3746895)))

(declare-fun b!6148881 () Bool)

(assert (=> b!6148881 (= e!3746895 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6148882 () Bool)

(assert (=> b!6148882 (= e!3746895 ((_ map or) (store ((as const (Array Context!10950 Bool)) false) (h!70898 lt!2334023) true) (content!12004 (t!378059 lt!2334023))))))

(assert (= (and d!1926613 c!1106573) b!6148881))

(assert (= (and d!1926613 (not c!1106573)) b!6148882))

(declare-fun m!6988938 () Bool)

(assert (=> b!6148882 m!6988938))

(declare-fun m!6988940 () Bool)

(assert (=> b!6148882 m!6988940))

(assert (=> b!6147630 d!1926613))

(declare-fun d!1926615 () Bool)

(assert (=> d!1926615 (= (nullable!6084 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343))))) (nullableFct!2048 (regOne!32694 (h!70896 (exprs!5975 (h!70898 zl!343))))))))

(declare-fun bs!1524425 () Bool)

(assert (= bs!1524425 d!1926615))

(declare-fun m!6988942 () Bool)

(assert (=> bs!1524425 m!6988942))

(assert (=> b!6147886 d!1926615))

(declare-fun d!1926617 () Bool)

(declare-fun c!1106574 () Bool)

(assert (=> d!1926617 (= c!1106574 (isEmpty!36408 (tail!11787 (t!378058 s!2326))))))

(declare-fun e!3746896 () Bool)

(assert (=> d!1926617 (= (matchZipper!2103 (derivationStepZipper!2064 lt!2333942 (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))) e!3746896)))

(declare-fun b!6148883 () Bool)

(assert (=> b!6148883 (= e!3746896 (nullableZipper!1872 (derivationStepZipper!2064 lt!2333942 (head!12702 (t!378058 s!2326)))))))

(declare-fun b!6148884 () Bool)

(assert (=> b!6148884 (= e!3746896 (matchZipper!2103 (derivationStepZipper!2064 (derivationStepZipper!2064 lt!2333942 (head!12702 (t!378058 s!2326))) (head!12702 (tail!11787 (t!378058 s!2326)))) (tail!11787 (tail!11787 (t!378058 s!2326)))))))

(assert (= (and d!1926617 c!1106574) b!6148883))

(assert (= (and d!1926617 (not c!1106574)) b!6148884))

(assert (=> d!1926617 m!6987778))

(assert (=> d!1926617 m!6988422))

(assert (=> b!6148883 m!6987776))

(declare-fun m!6988944 () Bool)

(assert (=> b!6148883 m!6988944))

(assert (=> b!6148884 m!6987778))

(assert (=> b!6148884 m!6988426))

(assert (=> b!6148884 m!6987776))

(assert (=> b!6148884 m!6988426))

(declare-fun m!6988946 () Bool)

(assert (=> b!6148884 m!6988946))

(assert (=> b!6148884 m!6987778))

(assert (=> b!6148884 m!6988430))

(assert (=> b!6148884 m!6988946))

(assert (=> b!6148884 m!6988430))

(declare-fun m!6988948 () Bool)

(assert (=> b!6148884 m!6988948))

(assert (=> b!6147550 d!1926617))

(declare-fun bs!1524426 () Bool)

(declare-fun d!1926619 () Bool)

(assert (= bs!1524426 (and d!1926619 d!1926569)))

(declare-fun lambda!335297 () Int)

(assert (=> bs!1524426 (= lambda!335297 lambda!335293)))

(declare-fun bs!1524427 () Bool)

(assert (= bs!1524427 (and d!1926619 b!6147154)))

(assert (=> bs!1524427 (= (= (head!12702 (t!378058 s!2326)) (h!70897 s!2326)) (= lambda!335297 lambda!335177))))

(declare-fun bs!1524428 () Bool)

(assert (= bs!1524428 (and d!1926619 d!1926541)))

(assert (=> bs!1524428 (= lambda!335297 lambda!335290)))

(declare-fun bs!1524429 () Bool)

(assert (= bs!1524429 (and d!1926619 d!1926367)))

(assert (=> bs!1524429 (= lambda!335297 lambda!335273)))

(declare-fun bs!1524430 () Bool)

(assert (= bs!1524430 (and d!1926619 d!1926399)))

(assert (=> bs!1524430 (= lambda!335297 lambda!335276)))

(assert (=> d!1926619 true))

(assert (=> d!1926619 (= (derivationStepZipper!2064 lt!2333942 (head!12702 (t!378058 s!2326))) (flatMap!1596 lt!2333942 lambda!335297))))

(declare-fun bs!1524431 () Bool)

(assert (= bs!1524431 d!1926619))

(declare-fun m!6988950 () Bool)

(assert (=> bs!1524431 m!6988950))

(assert (=> b!6147550 d!1926619))

(assert (=> b!6147550 d!1926377))

(assert (=> b!6147550 d!1926379))

(declare-fun d!1926621 () Bool)

(declare-fun c!1106575 () Bool)

(assert (=> d!1926621 (= c!1106575 (isEmpty!36408 (t!378058 s!2326)))))

(declare-fun e!3746897 () Bool)

(assert (=> d!1926621 (= (matchZipper!2103 ((_ map or) lt!2333954 lt!2333943) (t!378058 s!2326)) e!3746897)))

(declare-fun b!6148885 () Bool)

(assert (=> b!6148885 (= e!3746897 (nullableZipper!1872 ((_ map or) lt!2333954 lt!2333943)))))

(declare-fun b!6148886 () Bool)

(assert (=> b!6148886 (= e!3746897 (matchZipper!2103 (derivationStepZipper!2064 ((_ map or) lt!2333954 lt!2333943) (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))))))

(assert (= (and d!1926621 c!1106575) b!6148885))

(assert (= (and d!1926621 (not c!1106575)) b!6148886))

(assert (=> d!1926621 m!6987770))

(declare-fun m!6988952 () Bool)

(assert (=> b!6148885 m!6988952))

(assert (=> b!6148886 m!6987774))

(assert (=> b!6148886 m!6987774))

(declare-fun m!6988954 () Bool)

(assert (=> b!6148886 m!6988954))

(assert (=> b!6148886 m!6987778))

(assert (=> b!6148886 m!6988954))

(assert (=> b!6148886 m!6987778))

(declare-fun m!6988956 () Bool)

(assert (=> b!6148886 m!6988956))

(assert (=> d!1926099 d!1926621))

(assert (=> d!1926099 d!1926097))

(declare-fun d!1926623 () Bool)

(declare-fun e!3746898 () Bool)

(assert (=> d!1926623 (= (matchZipper!2103 ((_ map or) lt!2333954 lt!2333943) (t!378058 s!2326)) e!3746898)))

(declare-fun res!2547139 () Bool)

(assert (=> d!1926623 (=> res!2547139 e!3746898)))

(assert (=> d!1926623 (= res!2547139 (matchZipper!2103 lt!2333954 (t!378058 s!2326)))))

(assert (=> d!1926623 true))

(declare-fun _$48!1681 () Unit!157525)

(assert (=> d!1926623 (= (choose!45695 lt!2333954 lt!2333943 (t!378058 s!2326)) _$48!1681)))

(declare-fun b!6148887 () Bool)

(assert (=> b!6148887 (= e!3746898 (matchZipper!2103 lt!2333943 (t!378058 s!2326)))))

(assert (= (and d!1926623 (not res!2547139)) b!6148887))

(assert (=> d!1926623 m!6987810))

(assert (=> d!1926623 m!6987464))

(assert (=> b!6148887 m!6987408))

(assert (=> d!1926099 d!1926623))

(assert (=> d!1926095 d!1926309))

(declare-fun b!6148888 () Bool)

(declare-fun e!3746899 () Bool)

(declare-fun e!3746904 () Bool)

(assert (=> b!6148888 (= e!3746899 e!3746904)))

(declare-fun res!2547143 () Bool)

(assert (=> b!6148888 (=> (not res!2547143) (not e!3746904))))

(declare-fun call!511262 () Bool)

(assert (=> b!6148888 (= res!2547143 call!511262)))

(declare-fun b!6148889 () Bool)

(declare-fun e!3746900 () Bool)

(declare-fun e!3746905 () Bool)

(assert (=> b!6148889 (= e!3746900 e!3746905)))

(declare-fun c!1106576 () Bool)

(assert (=> b!6148889 (= c!1106576 ((_ is Union!16091) (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292))))))

(declare-fun d!1926625 () Bool)

(declare-fun res!2547140 () Bool)

(declare-fun e!3746901 () Bool)

(assert (=> d!1926625 (=> res!2547140 e!3746901)))

(assert (=> d!1926625 (= res!2547140 ((_ is ElementMatch!16091) (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292))))))

(assert (=> d!1926625 (= (validRegex!7827 (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292))) e!3746901)))

(declare-fun b!6148890 () Bool)

(declare-fun e!3746903 () Bool)

(declare-fun call!511261 () Bool)

(assert (=> b!6148890 (= e!3746903 call!511261)))

(declare-fun b!6148891 () Bool)

(declare-fun e!3746902 () Bool)

(assert (=> b!6148891 (= e!3746900 e!3746902)))

(declare-fun res!2547142 () Bool)

(assert (=> b!6148891 (= res!2547142 (not (nullable!6084 (reg!16420 (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292))))))))

(assert (=> b!6148891 (=> (not res!2547142) (not e!3746902))))

(declare-fun call!511263 () Bool)

(declare-fun c!1106577 () Bool)

(declare-fun bm!511256 () Bool)

(assert (=> bm!511256 (= call!511263 (validRegex!7827 (ite c!1106577 (reg!16420 (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292))) (ite c!1106576 (regOne!32695 (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292))) (regOne!32694 (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292)))))))))

(declare-fun bm!511257 () Bool)

(assert (=> bm!511257 (= call!511261 (validRegex!7827 (ite c!1106576 (regTwo!32695 (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292))) (regTwo!32694 (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292))))))))

(declare-fun bm!511258 () Bool)

(assert (=> bm!511258 (= call!511262 call!511263)))

(declare-fun b!6148892 () Bool)

(declare-fun res!2547144 () Bool)

(assert (=> b!6148892 (=> res!2547144 e!3746899)))

(assert (=> b!6148892 (= res!2547144 (not ((_ is Concat!24936) (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292)))))))

(assert (=> b!6148892 (= e!3746905 e!3746899)))

(declare-fun b!6148893 () Bool)

(assert (=> b!6148893 (= e!3746901 e!3746900)))

(assert (=> b!6148893 (= c!1106577 ((_ is Star!16091) (ite c!1106249 (regTwo!32695 r!7292) (regTwo!32694 r!7292))))))

(declare-fun b!6148894 () Bool)

(declare-fun res!2547141 () Bool)

(assert (=> b!6148894 (=> (not res!2547141) (not e!3746903))))

(assert (=> b!6148894 (= res!2547141 call!511262)))

(assert (=> b!6148894 (= e!3746905 e!3746903)))

(declare-fun b!6148895 () Bool)

(assert (=> b!6148895 (= e!3746904 call!511261)))

(declare-fun b!6148896 () Bool)

(assert (=> b!6148896 (= e!3746902 call!511263)))

(assert (= (and d!1926625 (not res!2547140)) b!6148893))

(assert (= (and b!6148893 c!1106577) b!6148891))

(assert (= (and b!6148893 (not c!1106577)) b!6148889))

(assert (= (and b!6148891 res!2547142) b!6148896))

(assert (= (and b!6148889 c!1106576) b!6148894))

(assert (= (and b!6148889 (not c!1106576)) b!6148892))

(assert (= (and b!6148894 res!2547141) b!6148890))

(assert (= (and b!6148892 (not res!2547144)) b!6148888))

(assert (= (and b!6148888 res!2547143) b!6148895))

(assert (= (or b!6148890 b!6148895) bm!511257))

(assert (= (or b!6148894 b!6148888) bm!511258))

(assert (= (or b!6148896 bm!511258) bm!511256))

(declare-fun m!6988958 () Bool)

(assert (=> b!6148891 m!6988958))

(declare-fun m!6988960 () Bool)

(assert (=> bm!511256 m!6988960))

(declare-fun m!6988962 () Bool)

(assert (=> bm!511257 m!6988962))

(assert (=> bm!511034 d!1926625))

(declare-fun d!1926627 () Bool)

(assert (=> d!1926627 true))

(assert (=> d!1926627 true))

(declare-fun res!2547145 () Bool)

(assert (=> d!1926627 (= (choose!45690 lambda!335175) res!2547145)))

(assert (=> d!1926063 d!1926627))

(assert (=> d!1926087 d!1926309))

(declare-fun d!1926629 () Bool)

(declare-fun c!1106578 () Bool)

(assert (=> d!1926629 (= c!1106578 (isEmpty!36408 (tail!11787 (t!378058 s!2326))))))

(declare-fun e!3746906 () Bool)

(assert (=> d!1926629 (= (matchZipper!2103 (derivationStepZipper!2064 lt!2333952 (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))) e!3746906)))

(declare-fun b!6148897 () Bool)

(assert (=> b!6148897 (= e!3746906 (nullableZipper!1872 (derivationStepZipper!2064 lt!2333952 (head!12702 (t!378058 s!2326)))))))

(declare-fun b!6148898 () Bool)

(assert (=> b!6148898 (= e!3746906 (matchZipper!2103 (derivationStepZipper!2064 (derivationStepZipper!2064 lt!2333952 (head!12702 (t!378058 s!2326))) (head!12702 (tail!11787 (t!378058 s!2326)))) (tail!11787 (tail!11787 (t!378058 s!2326)))))))

(assert (= (and d!1926629 c!1106578) b!6148897))

(assert (= (and d!1926629 (not c!1106578)) b!6148898))

(assert (=> d!1926629 m!6987778))

(assert (=> d!1926629 m!6988422))

(assert (=> b!6148897 m!6987796))

(declare-fun m!6988964 () Bool)

(assert (=> b!6148897 m!6988964))

(assert (=> b!6148898 m!6987778))

(assert (=> b!6148898 m!6988426))

(assert (=> b!6148898 m!6987796))

(assert (=> b!6148898 m!6988426))

(declare-fun m!6988966 () Bool)

(assert (=> b!6148898 m!6988966))

(assert (=> b!6148898 m!6987778))

(assert (=> b!6148898 m!6988430))

(assert (=> b!6148898 m!6988966))

(assert (=> b!6148898 m!6988430))

(declare-fun m!6988968 () Bool)

(assert (=> b!6148898 m!6988968))

(assert (=> b!6147565 d!1926629))

(declare-fun bs!1524432 () Bool)

(declare-fun d!1926631 () Bool)

(assert (= bs!1524432 (and d!1926631 d!1926619)))

(declare-fun lambda!335298 () Int)

(assert (=> bs!1524432 (= lambda!335298 lambda!335297)))

(declare-fun bs!1524433 () Bool)

(assert (= bs!1524433 (and d!1926631 d!1926569)))

(assert (=> bs!1524433 (= lambda!335298 lambda!335293)))

(declare-fun bs!1524434 () Bool)

(assert (= bs!1524434 (and d!1926631 b!6147154)))

(assert (=> bs!1524434 (= (= (head!12702 (t!378058 s!2326)) (h!70897 s!2326)) (= lambda!335298 lambda!335177))))

(declare-fun bs!1524435 () Bool)

(assert (= bs!1524435 (and d!1926631 d!1926541)))

(assert (=> bs!1524435 (= lambda!335298 lambda!335290)))

(declare-fun bs!1524436 () Bool)

(assert (= bs!1524436 (and d!1926631 d!1926367)))

(assert (=> bs!1524436 (= lambda!335298 lambda!335273)))

(declare-fun bs!1524437 () Bool)

(assert (= bs!1524437 (and d!1926631 d!1926399)))

(assert (=> bs!1524437 (= lambda!335298 lambda!335276)))

(assert (=> d!1926631 true))

(assert (=> d!1926631 (= (derivationStepZipper!2064 lt!2333952 (head!12702 (t!378058 s!2326))) (flatMap!1596 lt!2333952 lambda!335298))))

(declare-fun bs!1524438 () Bool)

(assert (= bs!1524438 d!1926631))

(declare-fun m!6988970 () Bool)

(assert (=> bs!1524438 m!6988970))

(assert (=> b!6147565 d!1926631))

(assert (=> b!6147565 d!1926377))

(assert (=> b!6147565 d!1926379))

(declare-fun d!1926633 () Bool)

(assert (=> d!1926633 (= (isEmpty!36407 (findConcatSeparation!2396 (regOne!32694 r!7292) (regTwo!32694 r!7292) Nil!64449 s!2326 s!2326)) (not ((_ is Some!15981) (findConcatSeparation!2396 (regOne!32694 r!7292) (regTwo!32694 r!7292) Nil!64449 s!2326 s!2326))))))

(assert (=> d!1926085 d!1926633))

(declare-fun d!1926635 () Bool)

(assert (=> d!1926635 (= (Exists!3161 lambda!335211) (choose!45690 lambda!335211))))

(declare-fun bs!1524439 () Bool)

(assert (= bs!1524439 d!1926635))

(declare-fun m!6988972 () Bool)

(assert (=> bs!1524439 m!6988972))

(assert (=> d!1926073 d!1926635))

(declare-fun d!1926637 () Bool)

(assert (=> d!1926637 (= (Exists!3161 lambda!335212) (choose!45690 lambda!335212))))

(declare-fun bs!1524440 () Bool)

(assert (= bs!1524440 d!1926637))

(declare-fun m!6988974 () Bool)

(assert (=> bs!1524440 m!6988974))

(assert (=> d!1926073 d!1926637))

(declare-fun bs!1524441 () Bool)

(declare-fun d!1926639 () Bool)

(assert (= bs!1524441 (and d!1926639 b!6147747)))

(declare-fun lambda!335303 () Int)

(assert (=> bs!1524441 (not (= lambda!335303 lambda!335224))))

(declare-fun bs!1524442 () Bool)

(assert (= bs!1524442 (and d!1926639 b!6147738)))

(assert (=> bs!1524442 (not (= lambda!335303 lambda!335223))))

(declare-fun bs!1524443 () Bool)

(assert (= bs!1524443 (and d!1926639 d!1926073)))

(assert (=> bs!1524443 (= lambda!335303 lambda!335211)))

(declare-fun bs!1524444 () Bool)

(assert (= bs!1524444 (and d!1926639 d!1926069)))

(assert (=> bs!1524444 (= lambda!335303 lambda!335205)))

(assert (=> bs!1524443 (not (= lambda!335303 lambda!335212))))

(declare-fun bs!1524445 () Bool)

(assert (= bs!1524445 (and d!1926639 b!6148577)))

(assert (=> bs!1524445 (not (= lambda!335303 lambda!335284))))

(declare-fun bs!1524446 () Bool)

(assert (= bs!1524446 (and d!1926639 d!1926535)))

(assert (=> bs!1524446 (= lambda!335303 lambda!335289)))

(declare-fun bs!1524447 () Bool)

(assert (= bs!1524447 (and d!1926639 b!6148249)))

(assert (=> bs!1524447 (not (= lambda!335303 lambda!335266))))

(declare-fun bs!1524448 () Bool)

(assert (= bs!1524448 (and d!1926639 b!6148568)))

(assert (=> bs!1524448 (not (= lambda!335303 lambda!335283))))

(declare-fun bs!1524449 () Bool)

(assert (= bs!1524449 (and d!1926639 b!6148258)))

(assert (=> bs!1524449 (not (= lambda!335303 lambda!335267))))

(declare-fun bs!1524450 () Bool)

(assert (= bs!1524450 (and d!1926639 b!6147159)))

(assert (=> bs!1524450 (= lambda!335303 lambda!335175)))

(assert (=> bs!1524450 (not (= lambda!335303 lambda!335176))))

(assert (=> d!1926639 true))

(assert (=> d!1926639 true))

(assert (=> d!1926639 true))

(declare-fun lambda!335304 () Int)

(assert (=> bs!1524441 (= lambda!335304 lambda!335224)))

(assert (=> bs!1524442 (not (= lambda!335304 lambda!335223))))

(assert (=> bs!1524443 (not (= lambda!335304 lambda!335211))))

(assert (=> bs!1524444 (not (= lambda!335304 lambda!335205))))

(assert (=> bs!1524443 (= lambda!335304 lambda!335212)))

(assert (=> bs!1524445 (= (and (= (regOne!32694 r!7292) (regOne!32694 (regTwo!32695 r!7292))) (= (regTwo!32694 r!7292) (regTwo!32694 (regTwo!32695 r!7292)))) (= lambda!335304 lambda!335284))))

(declare-fun bs!1524451 () Bool)

(assert (= bs!1524451 d!1926639))

(assert (=> bs!1524451 (not (= lambda!335304 lambda!335303))))

(assert (=> bs!1524446 (not (= lambda!335304 lambda!335289))))

(assert (=> bs!1524447 (not (= lambda!335304 lambda!335266))))

(assert (=> bs!1524448 (not (= lambda!335304 lambda!335283))))

(assert (=> bs!1524449 (= (and (= (regOne!32694 r!7292) (regOne!32694 (regOne!32695 r!7292))) (= (regTwo!32694 r!7292) (regTwo!32694 (regOne!32695 r!7292)))) (= lambda!335304 lambda!335267))))

(assert (=> bs!1524450 (not (= lambda!335304 lambda!335175))))

(assert (=> bs!1524450 (= lambda!335304 lambda!335176)))

(assert (=> d!1926639 true))

(assert (=> d!1926639 true))

(assert (=> d!1926639 true))

(assert (=> d!1926639 (= (Exists!3161 lambda!335303) (Exists!3161 lambda!335304))))

(assert (=> d!1926639 true))

(declare-fun _$90!1878 () Unit!157525)

(assert (=> d!1926639 (= (choose!45692 (regOne!32694 r!7292) (regTwo!32694 r!7292) s!2326) _$90!1878)))

(declare-fun m!6988976 () Bool)

(assert (=> bs!1524451 m!6988976))

(declare-fun m!6988978 () Bool)

(assert (=> bs!1524451 m!6988978))

(assert (=> d!1926073 d!1926639))

(assert (=> d!1926073 d!1926533))

(declare-fun b!6148907 () Bool)

(declare-fun e!3746914 () Bool)

(declare-fun lt!2334086 () Bool)

(assert (=> b!6148907 (= e!3746914 (not lt!2334086))))

(declare-fun b!6148908 () Bool)

(declare-fun res!2547155 () Bool)

(declare-fun e!3746917 () Bool)

(assert (=> b!6148908 (=> (not res!2547155) (not e!3746917))))

(declare-fun call!511264 () Bool)

(assert (=> b!6148908 (= res!2547155 (not call!511264))))

(declare-fun b!6148909 () Bool)

(declare-fun e!3746913 () Bool)

(declare-fun e!3746912 () Bool)

(assert (=> b!6148909 (= e!3746913 e!3746912)))

(declare-fun res!2547159 () Bool)

(assert (=> b!6148909 (=> res!2547159 e!3746912)))

(assert (=> b!6148909 (= res!2547159 call!511264)))

(declare-fun b!6148910 () Bool)

(declare-fun e!3746911 () Bool)

(assert (=> b!6148910 (= e!3746911 e!3746913)))

(declare-fun res!2547156 () Bool)

(assert (=> b!6148910 (=> (not res!2547156) (not e!3746913))))

(assert (=> b!6148910 (= res!2547156 (not lt!2334086))))

(declare-fun b!6148911 () Bool)

(declare-fun e!3746915 () Bool)

(assert (=> b!6148911 (= e!3746915 (= lt!2334086 call!511264))))

(declare-fun b!6148912 () Bool)

(declare-fun res!2547154 () Bool)

(assert (=> b!6148912 (=> (not res!2547154) (not e!3746917))))

(assert (=> b!6148912 (= res!2547154 (isEmpty!36408 (tail!11787 (_1!36373 (get!22237 lt!2333997)))))))

(declare-fun b!6148913 () Bool)

(declare-fun res!2547161 () Bool)

(assert (=> b!6148913 (=> res!2547161 e!3746911)))

(assert (=> b!6148913 (= res!2547161 (not ((_ is ElementMatch!16091) (regOne!32694 r!7292))))))

(assert (=> b!6148913 (= e!3746914 e!3746911)))

(declare-fun b!6148914 () Bool)

(assert (=> b!6148914 (= e!3746912 (not (= (head!12702 (_1!36373 (get!22237 lt!2333997))) (c!1106101 (regOne!32694 r!7292)))))))

(declare-fun b!6148915 () Bool)

(assert (=> b!6148915 (= e!3746917 (= (head!12702 (_1!36373 (get!22237 lt!2333997))) (c!1106101 (regOne!32694 r!7292))))))

(declare-fun b!6148916 () Bool)

(declare-fun e!3746916 () Bool)

(assert (=> b!6148916 (= e!3746916 (nullable!6084 (regOne!32694 r!7292)))))

(declare-fun b!6148917 () Bool)

(declare-fun res!2547157 () Bool)

(assert (=> b!6148917 (=> res!2547157 e!3746911)))

(assert (=> b!6148917 (= res!2547157 e!3746917)))

(declare-fun res!2547160 () Bool)

(assert (=> b!6148917 (=> (not res!2547160) (not e!3746917))))

(assert (=> b!6148917 (= res!2547160 lt!2334086)))

(declare-fun b!6148918 () Bool)

(assert (=> b!6148918 (= e!3746915 e!3746914)))

(declare-fun c!1106580 () Bool)

(assert (=> b!6148918 (= c!1106580 ((_ is EmptyLang!16091) (regOne!32694 r!7292)))))

(declare-fun d!1926641 () Bool)

(assert (=> d!1926641 e!3746915))

(declare-fun c!1106579 () Bool)

(assert (=> d!1926641 (= c!1106579 ((_ is EmptyExpr!16091) (regOne!32694 r!7292)))))

(assert (=> d!1926641 (= lt!2334086 e!3746916)))

(declare-fun c!1106581 () Bool)

(assert (=> d!1926641 (= c!1106581 (isEmpty!36408 (_1!36373 (get!22237 lt!2333997))))))

(assert (=> d!1926641 (validRegex!7827 (regOne!32694 r!7292))))

(assert (=> d!1926641 (= (matchR!8274 (regOne!32694 r!7292) (_1!36373 (get!22237 lt!2333997))) lt!2334086)))

(declare-fun bm!511259 () Bool)

(assert (=> bm!511259 (= call!511264 (isEmpty!36408 (_1!36373 (get!22237 lt!2333997))))))

(declare-fun b!6148919 () Bool)

(declare-fun res!2547158 () Bool)

(assert (=> b!6148919 (=> res!2547158 e!3746912)))

(assert (=> b!6148919 (= res!2547158 (not (isEmpty!36408 (tail!11787 (_1!36373 (get!22237 lt!2333997))))))))

(declare-fun b!6148920 () Bool)

(assert (=> b!6148920 (= e!3746916 (matchR!8274 (derivativeStep!4811 (regOne!32694 r!7292) (head!12702 (_1!36373 (get!22237 lt!2333997)))) (tail!11787 (_1!36373 (get!22237 lt!2333997)))))))

(assert (= (and d!1926641 c!1106581) b!6148916))

(assert (= (and d!1926641 (not c!1106581)) b!6148920))

(assert (= (and d!1926641 c!1106579) b!6148911))

(assert (= (and d!1926641 (not c!1106579)) b!6148918))

(assert (= (and b!6148918 c!1106580) b!6148907))

(assert (= (and b!6148918 (not c!1106580)) b!6148913))

(assert (= (and b!6148913 (not res!2547161)) b!6148917))

(assert (= (and b!6148917 res!2547160) b!6148908))

(assert (= (and b!6148908 res!2547155) b!6148912))

(assert (= (and b!6148912 res!2547154) b!6148915))

(assert (= (and b!6148917 (not res!2547157)) b!6148910))

(assert (= (and b!6148910 res!2547156) b!6148909))

(assert (= (and b!6148909 (not res!2547159)) b!6148919))

(assert (= (and b!6148919 (not res!2547158)) b!6148914))

(assert (= (or b!6148911 b!6148908 b!6148909) bm!511259))

(declare-fun m!6988980 () Bool)

(assert (=> b!6148915 m!6988980))

(assert (=> b!6148920 m!6988980))

(assert (=> b!6148920 m!6988980))

(declare-fun m!6988982 () Bool)

(assert (=> b!6148920 m!6988982))

(declare-fun m!6988984 () Bool)

(assert (=> b!6148920 m!6988984))

(assert (=> b!6148920 m!6988982))

(assert (=> b!6148920 m!6988984))

(declare-fun m!6988986 () Bool)

(assert (=> b!6148920 m!6988986))

(declare-fun m!6988988 () Bool)

(assert (=> bm!511259 m!6988988))

(assert (=> b!6148914 m!6988980))

(assert (=> b!6148916 m!6988850))

(assert (=> b!6148912 m!6988984))

(assert (=> b!6148912 m!6988984))

(declare-fun m!6988990 () Bool)

(assert (=> b!6148912 m!6988990))

(assert (=> d!1926641 m!6988988))

(assert (=> d!1926641 m!6987680))

(assert (=> b!6148919 m!6988984))

(assert (=> b!6148919 m!6988984))

(assert (=> b!6148919 m!6988990))

(assert (=> b!6147386 d!1926641))

(assert (=> b!6147386 d!1926471))

(declare-fun bm!511260 () Bool)

(declare-fun call!511266 () (InoxSet Context!10950))

(declare-fun call!511270 () (InoxSet Context!10950))

(assert (=> bm!511260 (= call!511266 call!511270)))

(declare-fun b!6148921 () Bool)

(declare-fun e!3746923 () (InoxSet Context!10950))

(declare-fun e!3746918 () (InoxSet Context!10950))

(assert (=> b!6148921 (= e!3746923 e!3746918)))

(declare-fun c!1106586 () Bool)

(assert (=> b!6148921 (= c!1106586 ((_ is Union!16091) (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))))))))

(declare-fun bm!511261 () Bool)

(declare-fun call!511265 () (InoxSet Context!10950))

(assert (=> bm!511261 (= call!511270 call!511265)))

(declare-fun bm!511262 () Bool)

(declare-fun call!511269 () List!64572)

(declare-fun call!511268 () List!64572)

(assert (=> bm!511262 (= call!511269 call!511268)))

(declare-fun b!6148922 () Bool)

(declare-fun e!3746919 () (InoxSet Context!10950))

(declare-fun e!3746921 () (InoxSet Context!10950))

(assert (=> b!6148922 (= e!3746919 e!3746921)))

(declare-fun c!1106582 () Bool)

(assert (=> b!6148922 (= c!1106582 ((_ is Concat!24936) (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))))))))

(declare-fun b!6148923 () Bool)

(assert (=> b!6148923 (= e!3746923 (store ((as const (Array Context!10950 Bool)) false) (ite c!1106239 lt!2333933 (Context!10951 call!511023)) true))))

(declare-fun bm!511263 () Bool)

(declare-fun call!511267 () (InoxSet Context!10950))

(assert (=> bm!511263 (= call!511267 (derivationStepZipperDown!1339 (ite c!1106586 (regOne!32695 (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))))) (regOne!32694 (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292)))))) (ite c!1106586 (ite c!1106239 lt!2333933 (Context!10951 call!511023)) (Context!10951 call!511268)) (h!70897 s!2326)))))

(declare-fun b!6148925 () Bool)

(declare-fun e!3746922 () (InoxSet Context!10950))

(assert (=> b!6148925 (= e!3746922 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6148926 () Bool)

(assert (=> b!6148926 (= e!3746919 ((_ map or) call!511267 call!511270))))

(declare-fun b!6148927 () Bool)

(assert (=> b!6148927 (= e!3746918 ((_ map or) call!511267 call!511265))))

(declare-fun c!1106585 () Bool)

(declare-fun bm!511264 () Bool)

(assert (=> bm!511264 (= call!511268 ($colon$colon!1968 (exprs!5975 (ite c!1106239 lt!2333933 (Context!10951 call!511023))) (ite (or c!1106585 c!1106582) (regTwo!32694 (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))))) (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292)))))))))

(declare-fun b!6148928 () Bool)

(assert (=> b!6148928 (= e!3746921 call!511266)))

(declare-fun d!1926643 () Bool)

(declare-fun c!1106584 () Bool)

(assert (=> d!1926643 (= c!1106584 (and ((_ is ElementMatch!16091) (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))))) (= (c!1106101 (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))))) (h!70897 s!2326))))))

(assert (=> d!1926643 (= (derivationStepZipperDown!1339 (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292)))) (ite c!1106239 lt!2333933 (Context!10951 call!511023)) (h!70897 s!2326)) e!3746923)))

(declare-fun b!6148924 () Bool)

(declare-fun c!1106583 () Bool)

(assert (=> b!6148924 (= c!1106583 ((_ is Star!16091) (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))))))))

(assert (=> b!6148924 (= e!3746921 e!3746922)))

(declare-fun b!6148929 () Bool)

(assert (=> b!6148929 (= e!3746922 call!511266)))

(declare-fun b!6148930 () Bool)

(declare-fun e!3746920 () Bool)

(assert (=> b!6148930 (= c!1106585 e!3746920)))

(declare-fun res!2547162 () Bool)

(assert (=> b!6148930 (=> (not res!2547162) (not e!3746920))))

(assert (=> b!6148930 (= res!2547162 ((_ is Concat!24936) (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))))))))

(assert (=> b!6148930 (= e!3746918 e!3746919)))

(declare-fun bm!511265 () Bool)

(assert (=> bm!511265 (= call!511265 (derivationStepZipperDown!1339 (ite c!1106586 (regTwo!32695 (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))))) (ite c!1106585 (regTwo!32694 (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))))) (ite c!1106582 (regOne!32694 (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292))))) (reg!16420 (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292)))))))) (ite (or c!1106586 c!1106585) (ite c!1106239 lt!2333933 (Context!10951 call!511023)) (Context!10951 call!511269)) (h!70897 s!2326)))))

(declare-fun b!6148931 () Bool)

(assert (=> b!6148931 (= e!3746920 (nullable!6084 (regOne!32694 (ite c!1106239 (regOne!32695 (regTwo!32695 (regOne!32694 r!7292))) (regOne!32694 (regTwo!32695 (regOne!32694 r!7292)))))))))

(assert (= (and d!1926643 c!1106584) b!6148923))

(assert (= (and d!1926643 (not c!1106584)) b!6148921))

(assert (= (and b!6148921 c!1106586) b!6148927))

(assert (= (and b!6148921 (not c!1106586)) b!6148930))

(assert (= (and b!6148930 res!2547162) b!6148931))

(assert (= (and b!6148930 c!1106585) b!6148926))

(assert (= (and b!6148930 (not c!1106585)) b!6148922))

(assert (= (and b!6148922 c!1106582) b!6148928))

(assert (= (and b!6148922 (not c!1106582)) b!6148924))

(assert (= (and b!6148924 c!1106583) b!6148929))

(assert (= (and b!6148924 (not c!1106583)) b!6148925))

(assert (= (or b!6148928 b!6148929) bm!511262))

(assert (= (or b!6148928 b!6148929) bm!511260))

(assert (= (or b!6148926 bm!511262) bm!511264))

(assert (= (or b!6148926 bm!511260) bm!511261))

(assert (= (or b!6148927 bm!511261) bm!511265))

(assert (= (or b!6148927 b!6148926) bm!511263))

(declare-fun m!6988992 () Bool)

(assert (=> bm!511265 m!6988992))

(declare-fun m!6988994 () Bool)

(assert (=> bm!511264 m!6988994))

(declare-fun m!6988996 () Bool)

(assert (=> bm!511263 m!6988996))

(declare-fun m!6988998 () Bool)

(assert (=> b!6148923 m!6988998))

(declare-fun m!6989000 () Bool)

(assert (=> b!6148931 m!6989000))

(assert (=> bm!511018 d!1926643))

(declare-fun d!1926645 () Bool)

(assert (=> d!1926645 (= (isEmpty!36404 (tail!11789 (exprs!5975 (h!70898 zl!343)))) ((_ is Nil!64448) (tail!11789 (exprs!5975 (h!70898 zl!343)))))))

(assert (=> b!6147818 d!1926645))

(declare-fun d!1926647 () Bool)

(assert (=> d!1926647 (= (tail!11789 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))

(assert (=> b!6147818 d!1926647))

(declare-fun d!1926649 () Bool)

(declare-fun res!2547163 () Bool)

(declare-fun e!3746924 () Bool)

(assert (=> d!1926649 (=> res!2547163 e!3746924)))

(assert (=> d!1926649 (= res!2547163 ((_ is Nil!64448) (exprs!5975 setElem!41606)))))

(assert (=> d!1926649 (= (forall!15212 (exprs!5975 setElem!41606) lambda!335235) e!3746924)))

(declare-fun b!6148932 () Bool)

(declare-fun e!3746925 () Bool)

(assert (=> b!6148932 (= e!3746924 e!3746925)))

(declare-fun res!2547164 () Bool)

(assert (=> b!6148932 (=> (not res!2547164) (not e!3746925))))

(assert (=> b!6148932 (= res!2547164 (dynLambda!25403 lambda!335235 (h!70896 (exprs!5975 setElem!41606))))))

(declare-fun b!6148933 () Bool)

(assert (=> b!6148933 (= e!3746925 (forall!15212 (t!378057 (exprs!5975 setElem!41606)) lambda!335235))))

(assert (= (and d!1926649 (not res!2547163)) b!6148932))

(assert (= (and b!6148932 res!2547164) b!6148933))

(declare-fun b_lambda!234031 () Bool)

(assert (=> (not b_lambda!234031) (not b!6148932)))

(declare-fun m!6989002 () Bool)

(assert (=> b!6148932 m!6989002))

(declare-fun m!6989004 () Bool)

(assert (=> b!6148933 m!6989004))

(assert (=> d!1926153 d!1926649))

(declare-fun b!6148934 () Bool)

(declare-fun e!3746929 () Bool)

(declare-fun lt!2334087 () Bool)

(assert (=> b!6148934 (= e!3746929 (not lt!2334087))))

(declare-fun b!6148935 () Bool)

(declare-fun res!2547166 () Bool)

(declare-fun e!3746932 () Bool)

(assert (=> b!6148935 (=> (not res!2547166) (not e!3746932))))

(declare-fun call!511271 () Bool)

(assert (=> b!6148935 (= res!2547166 (not call!511271))))

(declare-fun b!6148936 () Bool)

(declare-fun e!3746928 () Bool)

(declare-fun e!3746927 () Bool)

(assert (=> b!6148936 (= e!3746928 e!3746927)))

(declare-fun res!2547170 () Bool)

(assert (=> b!6148936 (=> res!2547170 e!3746927)))

(assert (=> b!6148936 (= res!2547170 call!511271)))

(declare-fun b!6148937 () Bool)

(declare-fun e!3746926 () Bool)

(assert (=> b!6148937 (= e!3746926 e!3746928)))

(declare-fun res!2547167 () Bool)

(assert (=> b!6148937 (=> (not res!2547167) (not e!3746928))))

(assert (=> b!6148937 (= res!2547167 (not lt!2334087))))

(declare-fun b!6148938 () Bool)

(declare-fun e!3746930 () Bool)

(assert (=> b!6148938 (= e!3746930 (= lt!2334087 call!511271))))

(declare-fun b!6148939 () Bool)

(declare-fun res!2547165 () Bool)

(assert (=> b!6148939 (=> (not res!2547165) (not e!3746932))))

(assert (=> b!6148939 (= res!2547165 (isEmpty!36408 (tail!11787 (tail!11787 s!2326))))))

(declare-fun b!6148940 () Bool)

(declare-fun res!2547172 () Bool)

(assert (=> b!6148940 (=> res!2547172 e!3746926)))

(assert (=> b!6148940 (= res!2547172 (not ((_ is ElementMatch!16091) (derivativeStep!4811 r!7292 (head!12702 s!2326)))))))

(assert (=> b!6148940 (= e!3746929 e!3746926)))

(declare-fun b!6148941 () Bool)

(assert (=> b!6148941 (= e!3746927 (not (= (head!12702 (tail!11787 s!2326)) (c!1106101 (derivativeStep!4811 r!7292 (head!12702 s!2326))))))))

(declare-fun b!6148942 () Bool)

(assert (=> b!6148942 (= e!3746932 (= (head!12702 (tail!11787 s!2326)) (c!1106101 (derivativeStep!4811 r!7292 (head!12702 s!2326)))))))

(declare-fun b!6148943 () Bool)

(declare-fun e!3746931 () Bool)

(assert (=> b!6148943 (= e!3746931 (nullable!6084 (derivativeStep!4811 r!7292 (head!12702 s!2326))))))

(declare-fun b!6148944 () Bool)

(declare-fun res!2547168 () Bool)

(assert (=> b!6148944 (=> res!2547168 e!3746926)))

(assert (=> b!6148944 (= res!2547168 e!3746932)))

(declare-fun res!2547171 () Bool)

(assert (=> b!6148944 (=> (not res!2547171) (not e!3746932))))

(assert (=> b!6148944 (= res!2547171 lt!2334087)))

(declare-fun b!6148945 () Bool)

(assert (=> b!6148945 (= e!3746930 e!3746929)))

(declare-fun c!1106588 () Bool)

(assert (=> b!6148945 (= c!1106588 ((_ is EmptyLang!16091) (derivativeStep!4811 r!7292 (head!12702 s!2326))))))

(declare-fun d!1926651 () Bool)

(assert (=> d!1926651 e!3746930))

(declare-fun c!1106587 () Bool)

(assert (=> d!1926651 (= c!1106587 ((_ is EmptyExpr!16091) (derivativeStep!4811 r!7292 (head!12702 s!2326))))))

(assert (=> d!1926651 (= lt!2334087 e!3746931)))

(declare-fun c!1106589 () Bool)

(assert (=> d!1926651 (= c!1106589 (isEmpty!36408 (tail!11787 s!2326)))))

(assert (=> d!1926651 (validRegex!7827 (derivativeStep!4811 r!7292 (head!12702 s!2326)))))

(assert (=> d!1926651 (= (matchR!8274 (derivativeStep!4811 r!7292 (head!12702 s!2326)) (tail!11787 s!2326)) lt!2334087)))

(declare-fun bm!511266 () Bool)

(assert (=> bm!511266 (= call!511271 (isEmpty!36408 (tail!11787 s!2326)))))

(declare-fun b!6148946 () Bool)

(declare-fun res!2547169 () Bool)

(assert (=> b!6148946 (=> res!2547169 e!3746927)))

(assert (=> b!6148946 (= res!2547169 (not (isEmpty!36408 (tail!11787 (tail!11787 s!2326)))))))

(declare-fun b!6148947 () Bool)

(assert (=> b!6148947 (= e!3746931 (matchR!8274 (derivativeStep!4811 (derivativeStep!4811 r!7292 (head!12702 s!2326)) (head!12702 (tail!11787 s!2326))) (tail!11787 (tail!11787 s!2326))))))

(assert (= (and d!1926651 c!1106589) b!6148943))

(assert (= (and d!1926651 (not c!1106589)) b!6148947))

(assert (= (and d!1926651 c!1106587) b!6148938))

(assert (= (and d!1926651 (not c!1106587)) b!6148945))

(assert (= (and b!6148945 c!1106588) b!6148934))

(assert (= (and b!6148945 (not c!1106588)) b!6148940))

(assert (= (and b!6148940 (not res!2547172)) b!6148944))

(assert (= (and b!6148944 res!2547171) b!6148935))

(assert (= (and b!6148935 res!2547166) b!6148939))

(assert (= (and b!6148939 res!2547165) b!6148942))

(assert (= (and b!6148944 (not res!2547168)) b!6148937))

(assert (= (and b!6148937 res!2547167) b!6148936))

(assert (= (and b!6148936 (not res!2547170)) b!6148946))

(assert (= (and b!6148946 (not res!2547169)) b!6148941))

(assert (= (or b!6148938 b!6148935 b!6148936) bm!511266))

(assert (=> b!6148942 m!6987882))

(declare-fun m!6989006 () Bool)

(assert (=> b!6148942 m!6989006))

(assert (=> b!6148947 m!6987882))

(assert (=> b!6148947 m!6989006))

(assert (=> b!6148947 m!6987880))

(assert (=> b!6148947 m!6989006))

(declare-fun m!6989008 () Bool)

(assert (=> b!6148947 m!6989008))

(assert (=> b!6148947 m!6987882))

(declare-fun m!6989010 () Bool)

(assert (=> b!6148947 m!6989010))

(assert (=> b!6148947 m!6989008))

(assert (=> b!6148947 m!6989010))

(declare-fun m!6989012 () Bool)

(assert (=> b!6148947 m!6989012))

(assert (=> bm!511266 m!6987882))

(assert (=> bm!511266 m!6987888))

(assert (=> b!6148941 m!6987882))

(assert (=> b!6148941 m!6989006))

(assert (=> b!6148943 m!6987880))

(declare-fun m!6989014 () Bool)

(assert (=> b!6148943 m!6989014))

(assert (=> b!6148939 m!6987882))

(assert (=> b!6148939 m!6989010))

(assert (=> b!6148939 m!6989010))

(declare-fun m!6989016 () Bool)

(assert (=> b!6148939 m!6989016))

(assert (=> d!1926651 m!6987882))

(assert (=> d!1926651 m!6987888))

(assert (=> d!1926651 m!6987880))

(declare-fun m!6989018 () Bool)

(assert (=> d!1926651 m!6989018))

(assert (=> b!6148946 m!6987882))

(assert (=> b!6148946 m!6989010))

(assert (=> b!6148946 m!6989010))

(assert (=> b!6148946 m!6989016))

(assert (=> b!6147789 d!1926651))

(declare-fun b!6148968 () Bool)

(declare-fun e!3746947 () Regex!16091)

(declare-fun call!511281 () Regex!16091)

(declare-fun call!511280 () Regex!16091)

(assert (=> b!6148968 (= e!3746947 (Union!16091 call!511281 call!511280))))

(declare-fun bm!511275 () Bool)

(declare-fun call!511283 () Regex!16091)

(declare-fun call!511282 () Regex!16091)

(assert (=> bm!511275 (= call!511283 call!511282)))

(declare-fun b!6148970 () Bool)

(declare-fun c!1106602 () Bool)

(assert (=> b!6148970 (= c!1106602 (nullable!6084 (regOne!32694 r!7292)))))

(declare-fun e!3746944 () Regex!16091)

(declare-fun e!3746945 () Regex!16091)

(assert (=> b!6148970 (= e!3746944 e!3746945)))

(declare-fun bm!511276 () Bool)

(declare-fun c!1106604 () Bool)

(declare-fun c!1106603 () Bool)

(assert (=> bm!511276 (= call!511281 (derivativeStep!4811 (ite c!1106603 (regOne!32695 r!7292) (ite c!1106604 (reg!16420 r!7292) (ite c!1106602 (regTwo!32694 r!7292) (regOne!32694 r!7292)))) (head!12702 s!2326)))))

(declare-fun b!6148971 () Bool)

(assert (=> b!6148971 (= e!3746947 e!3746944)))

(assert (=> b!6148971 (= c!1106604 ((_ is Star!16091) r!7292))))

(declare-fun b!6148972 () Bool)

(assert (=> b!6148972 (= e!3746945 (Union!16091 (Concat!24936 call!511280 (regTwo!32694 r!7292)) call!511283))))

(declare-fun b!6148973 () Bool)

(assert (=> b!6148973 (= c!1106603 ((_ is Union!16091) r!7292))))

(declare-fun e!3746943 () Regex!16091)

(assert (=> b!6148973 (= e!3746943 e!3746947)))

(declare-fun bm!511277 () Bool)

(assert (=> bm!511277 (= call!511280 (derivativeStep!4811 (ite c!1106603 (regTwo!32695 r!7292) (regOne!32694 r!7292)) (head!12702 s!2326)))))

(declare-fun b!6148974 () Bool)

(declare-fun e!3746946 () Regex!16091)

(assert (=> b!6148974 (= e!3746946 EmptyLang!16091)))

(declare-fun b!6148975 () Bool)

(assert (=> b!6148975 (= e!3746943 (ite (= (head!12702 s!2326) (c!1106101 r!7292)) EmptyExpr!16091 EmptyLang!16091))))

(declare-fun b!6148976 () Bool)

(assert (=> b!6148976 (= e!3746944 (Concat!24936 call!511282 r!7292))))

(declare-fun bm!511278 () Bool)

(assert (=> bm!511278 (= call!511282 call!511281)))

(declare-fun b!6148977 () Bool)

(assert (=> b!6148977 (= e!3746946 e!3746943)))

(declare-fun c!1106600 () Bool)

(assert (=> b!6148977 (= c!1106600 ((_ is ElementMatch!16091) r!7292))))

(declare-fun b!6148969 () Bool)

(assert (=> b!6148969 (= e!3746945 (Union!16091 (Concat!24936 call!511283 (regTwo!32694 r!7292)) EmptyLang!16091))))

(declare-fun d!1926653 () Bool)

(declare-fun lt!2334090 () Regex!16091)

(assert (=> d!1926653 (validRegex!7827 lt!2334090)))

(assert (=> d!1926653 (= lt!2334090 e!3746946)))

(declare-fun c!1106601 () Bool)

(assert (=> d!1926653 (= c!1106601 (or ((_ is EmptyExpr!16091) r!7292) ((_ is EmptyLang!16091) r!7292)))))

(assert (=> d!1926653 (validRegex!7827 r!7292)))

(assert (=> d!1926653 (= (derivativeStep!4811 r!7292 (head!12702 s!2326)) lt!2334090)))

(assert (= (and d!1926653 c!1106601) b!6148974))

(assert (= (and d!1926653 (not c!1106601)) b!6148977))

(assert (= (and b!6148977 c!1106600) b!6148975))

(assert (= (and b!6148977 (not c!1106600)) b!6148973))

(assert (= (and b!6148973 c!1106603) b!6148968))

(assert (= (and b!6148973 (not c!1106603)) b!6148971))

(assert (= (and b!6148971 c!1106604) b!6148976))

(assert (= (and b!6148971 (not c!1106604)) b!6148970))

(assert (= (and b!6148970 c!1106602) b!6148972))

(assert (= (and b!6148970 (not c!1106602)) b!6148969))

(assert (= (or b!6148972 b!6148969) bm!511275))

(assert (= (or b!6148976 bm!511275) bm!511278))

(assert (= (or b!6148968 b!6148972) bm!511277))

(assert (= (or b!6148968 bm!511278) bm!511276))

(assert (=> b!6148970 m!6988850))

(assert (=> bm!511276 m!6987878))

(declare-fun m!6989020 () Bool)

(assert (=> bm!511276 m!6989020))

(assert (=> bm!511277 m!6987878))

(declare-fun m!6989022 () Bool)

(assert (=> bm!511277 m!6989022))

(declare-fun m!6989024 () Bool)

(assert (=> d!1926653 m!6989024))

(assert (=> d!1926653 m!6987406))

(assert (=> b!6147789 d!1926653))

(assert (=> b!6147789 d!1926381))

(assert (=> b!6147789 d!1926595))

(assert (=> bm!511041 d!1926497))

(declare-fun b!6148978 () Bool)

(declare-fun e!3746948 () Bool)

(declare-fun e!3746953 () Bool)

(assert (=> b!6148978 (= e!3746948 e!3746953)))

(declare-fun res!2547176 () Bool)

(assert (=> b!6148978 (=> (not res!2547176) (not e!3746953))))

(declare-fun call!511285 () Bool)

(assert (=> b!6148978 (= res!2547176 call!511285)))

(declare-fun b!6148979 () Bool)

(declare-fun e!3746949 () Bool)

(declare-fun e!3746954 () Bool)

(assert (=> b!6148979 (= e!3746949 e!3746954)))

(declare-fun c!1106605 () Bool)

(assert (=> b!6148979 (= c!1106605 ((_ is Union!16091) lt!2334027))))

(declare-fun d!1926655 () Bool)

(declare-fun res!2547173 () Bool)

(declare-fun e!3746950 () Bool)

(assert (=> d!1926655 (=> res!2547173 e!3746950)))

(assert (=> d!1926655 (= res!2547173 ((_ is ElementMatch!16091) lt!2334027))))

(assert (=> d!1926655 (= (validRegex!7827 lt!2334027) e!3746950)))

(declare-fun b!6148980 () Bool)

(declare-fun e!3746952 () Bool)

(declare-fun call!511284 () Bool)

(assert (=> b!6148980 (= e!3746952 call!511284)))

(declare-fun b!6148981 () Bool)

(declare-fun e!3746951 () Bool)

(assert (=> b!6148981 (= e!3746949 e!3746951)))

(declare-fun res!2547175 () Bool)

(assert (=> b!6148981 (= res!2547175 (not (nullable!6084 (reg!16420 lt!2334027))))))

(assert (=> b!6148981 (=> (not res!2547175) (not e!3746951))))

(declare-fun bm!511279 () Bool)

(declare-fun c!1106606 () Bool)

(declare-fun call!511286 () Bool)

(assert (=> bm!511279 (= call!511286 (validRegex!7827 (ite c!1106606 (reg!16420 lt!2334027) (ite c!1106605 (regOne!32695 lt!2334027) (regOne!32694 lt!2334027)))))))

(declare-fun bm!511280 () Bool)

(assert (=> bm!511280 (= call!511284 (validRegex!7827 (ite c!1106605 (regTwo!32695 lt!2334027) (regTwo!32694 lt!2334027))))))

(declare-fun bm!511281 () Bool)

(assert (=> bm!511281 (= call!511285 call!511286)))

(declare-fun b!6148982 () Bool)

(declare-fun res!2547177 () Bool)

(assert (=> b!6148982 (=> res!2547177 e!3746948)))

(assert (=> b!6148982 (= res!2547177 (not ((_ is Concat!24936) lt!2334027)))))

(assert (=> b!6148982 (= e!3746954 e!3746948)))

(declare-fun b!6148983 () Bool)

(assert (=> b!6148983 (= e!3746950 e!3746949)))

(assert (=> b!6148983 (= c!1106606 ((_ is Star!16091) lt!2334027))))

(declare-fun b!6148984 () Bool)

(declare-fun res!2547174 () Bool)

(assert (=> b!6148984 (=> (not res!2547174) (not e!3746952))))

(assert (=> b!6148984 (= res!2547174 call!511285)))

(assert (=> b!6148984 (= e!3746954 e!3746952)))

(declare-fun b!6148985 () Bool)

(assert (=> b!6148985 (= e!3746953 call!511284)))

(declare-fun b!6148986 () Bool)

(assert (=> b!6148986 (= e!3746951 call!511286)))

(assert (= (and d!1926655 (not res!2547173)) b!6148983))

(assert (= (and b!6148983 c!1106606) b!6148981))

(assert (= (and b!6148983 (not c!1106606)) b!6148979))

(assert (= (and b!6148981 res!2547175) b!6148986))

(assert (= (and b!6148979 c!1106605) b!6148984))

(assert (= (and b!6148979 (not c!1106605)) b!6148982))

(assert (= (and b!6148984 res!2547174) b!6148980))

(assert (= (and b!6148982 (not res!2547177)) b!6148978))

(assert (= (and b!6148978 res!2547176) b!6148985))

(assert (= (or b!6148980 b!6148985) bm!511280))

(assert (= (or b!6148984 b!6148978) bm!511281))

(assert (= (or b!6148986 bm!511281) bm!511279))

(declare-fun m!6989026 () Bool)

(assert (=> b!6148981 m!6989026))

(declare-fun m!6989028 () Bool)

(assert (=> bm!511279 m!6989028))

(declare-fun m!6989030 () Bool)

(assert (=> bm!511280 m!6989030))

(assert (=> d!1926121 d!1926655))

(assert (=> d!1926121 d!1926135))

(assert (=> d!1926121 d!1926137))

(declare-fun d!1926657 () Bool)

(assert (=> d!1926657 (= (isEmpty!36404 (exprs!5975 (h!70898 zl!343))) ((_ is Nil!64448) (exprs!5975 (h!70898 zl!343))))))

(assert (=> b!6147810 d!1926657))

(declare-fun bs!1524452 () Bool)

(declare-fun d!1926659 () Bool)

(assert (= bs!1524452 (and d!1926659 d!1926403)))

(declare-fun lambda!335305 () Int)

(assert (=> bs!1524452 (= lambda!335305 lambda!335279)))

(declare-fun bs!1524453 () Bool)

(assert (= bs!1524453 (and d!1926659 d!1926561)))

(assert (=> bs!1524453 (= lambda!335305 lambda!335292)))

(declare-fun bs!1524454 () Bool)

(assert (= bs!1524454 (and d!1926659 d!1926605)))

(assert (=> bs!1524454 (= lambda!335305 lambda!335296)))

(declare-fun bs!1524455 () Bool)

(assert (= bs!1524455 (and d!1926659 d!1926451)))

(assert (=> bs!1524455 (= lambda!335305 lambda!335282)))

(declare-fun bs!1524456 () Bool)

(assert (= bs!1524456 (and d!1926659 d!1926555)))

(assert (=> bs!1524456 (= lambda!335305 lambda!335291)))

(assert (=> d!1926659 (= (nullableZipper!1872 lt!2333949) (exists!2437 lt!2333949 lambda!335305))))

(declare-fun bs!1524457 () Bool)

(assert (= bs!1524457 d!1926659))

(declare-fun m!6989032 () Bool)

(assert (=> bs!1524457 m!6989032))

(assert (=> b!6147560 d!1926659))

(declare-fun bs!1524458 () Bool)

(declare-fun d!1926661 () Bool)

(assert (= bs!1524458 (and d!1926661 d!1926403)))

(declare-fun lambda!335306 () Int)

(assert (=> bs!1524458 (= lambda!335306 lambda!335279)))

(declare-fun bs!1524459 () Bool)

(assert (= bs!1524459 (and d!1926661 d!1926561)))

(assert (=> bs!1524459 (= lambda!335306 lambda!335292)))

(declare-fun bs!1524460 () Bool)

(assert (= bs!1524460 (and d!1926661 d!1926605)))

(assert (=> bs!1524460 (= lambda!335306 lambda!335296)))

(declare-fun bs!1524461 () Bool)

(assert (= bs!1524461 (and d!1926661 d!1926451)))

(assert (=> bs!1524461 (= lambda!335306 lambda!335282)))

(declare-fun bs!1524462 () Bool)

(assert (= bs!1524462 (and d!1926661 d!1926659)))

(assert (=> bs!1524462 (= lambda!335306 lambda!335305)))

(declare-fun bs!1524463 () Bool)

(assert (= bs!1524463 (and d!1926661 d!1926555)))

(assert (=> bs!1524463 (= lambda!335306 lambda!335291)))

(assert (=> d!1926661 (= (nullableZipper!1872 ((_ map or) lt!2333954 lt!2333942)) (exists!2437 ((_ map or) lt!2333954 lt!2333942) lambda!335306))))

(declare-fun bs!1524464 () Bool)

(assert (= bs!1524464 d!1926661))

(declare-fun m!6989034 () Bool)

(assert (=> bs!1524464 m!6989034))

(assert (=> b!6147624 d!1926661))

(assert (=> b!6147814 d!1926139))

(declare-fun d!1926663 () Bool)

(declare-fun res!2547182 () Bool)

(declare-fun e!3746959 () Bool)

(assert (=> d!1926663 (=> res!2547182 e!3746959)))

(assert (=> d!1926663 (= res!2547182 ((_ is Nil!64450) lt!2334023))))

(assert (=> d!1926663 (= (noDuplicate!1938 lt!2334023) e!3746959)))

(declare-fun b!6148991 () Bool)

(declare-fun e!3746960 () Bool)

(assert (=> b!6148991 (= e!3746959 e!3746960)))

(declare-fun res!2547183 () Bool)

(assert (=> b!6148991 (=> (not res!2547183) (not e!3746960))))

(declare-fun contains!20050 (List!64574 Context!10950) Bool)

(assert (=> b!6148991 (= res!2547183 (not (contains!20050 (t!378059 lt!2334023) (h!70898 lt!2334023))))))

(declare-fun b!6148992 () Bool)

(assert (=> b!6148992 (= e!3746960 (noDuplicate!1938 (t!378059 lt!2334023)))))

(assert (= (and d!1926663 (not res!2547182)) b!6148991))

(assert (= (and b!6148991 res!2547183) b!6148992))

(declare-fun m!6989036 () Bool)

(assert (=> b!6148991 m!6989036))

(declare-fun m!6989038 () Bool)

(assert (=> b!6148992 m!6989038))

(assert (=> d!1926111 d!1926663))

(declare-fun d!1926665 () Bool)

(declare-fun e!3746968 () Bool)

(assert (=> d!1926665 e!3746968))

(declare-fun res!2547188 () Bool)

(assert (=> d!1926665 (=> (not res!2547188) (not e!3746968))))

(declare-fun res!2547189 () List!64574)

(assert (=> d!1926665 (= res!2547188 (noDuplicate!1938 res!2547189))))

(declare-fun e!3746967 () Bool)

(assert (=> d!1926665 e!3746967))

(assert (=> d!1926665 (= (choose!45697 z!1189) res!2547189)))

(declare-fun b!6149000 () Bool)

(declare-fun e!3746969 () Bool)

(declare-fun tp!1717529 () Bool)

(assert (=> b!6149000 (= e!3746969 tp!1717529)))

(declare-fun tp!1717530 () Bool)

(declare-fun b!6148999 () Bool)

(assert (=> b!6148999 (= e!3746967 (and (inv!83474 (h!70898 res!2547189)) e!3746969 tp!1717530))))

(declare-fun b!6149001 () Bool)

(assert (=> b!6149001 (= e!3746968 (= (content!12004 res!2547189) z!1189))))

(assert (= b!6148999 b!6149000))

(assert (= (and d!1926665 ((_ is Cons!64450) res!2547189)) b!6148999))

(assert (= (and d!1926665 res!2547188) b!6149001))

(declare-fun m!6989040 () Bool)

(assert (=> d!1926665 m!6989040))

(declare-fun m!6989042 () Bool)

(assert (=> b!6148999 m!6989042))

(declare-fun m!6989044 () Bool)

(assert (=> b!6149001 m!6989044))

(assert (=> d!1926111 d!1926665))

(declare-fun bm!511282 () Bool)

(declare-fun call!511288 () (InoxSet Context!10950))

(declare-fun call!511292 () (InoxSet Context!10950))

(assert (=> bm!511282 (= call!511288 call!511292)))

(declare-fun b!6149002 () Bool)

(declare-fun e!3746975 () (InoxSet Context!10950))

(declare-fun e!3746970 () (InoxSet Context!10950))

(assert (=> b!6149002 (= e!3746975 e!3746970)))

(declare-fun c!1106611 () Bool)

(assert (=> b!6149002 (= c!1106611 ((_ is Union!16091) (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))))))

(declare-fun bm!511283 () Bool)

(declare-fun call!511287 () (InoxSet Context!10950))

(assert (=> bm!511283 (= call!511292 call!511287)))

(declare-fun bm!511284 () Bool)

(declare-fun call!511291 () List!64572)

(declare-fun call!511290 () List!64572)

(assert (=> bm!511284 (= call!511291 call!511290)))

(declare-fun b!6149003 () Bool)

(declare-fun e!3746971 () (InoxSet Context!10950))

(declare-fun e!3746973 () (InoxSet Context!10950))

(assert (=> b!6149003 (= e!3746971 e!3746973)))

(declare-fun c!1106607 () Bool)

(assert (=> b!6149003 (= c!1106607 ((_ is Concat!24936) (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))))))

(declare-fun b!6149004 () Bool)

(assert (=> b!6149004 (= e!3746975 (store ((as const (Array Context!10950 Bool)) false) (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) true))))

(declare-fun bm!511285 () Bool)

(declare-fun call!511289 () (InoxSet Context!10950))

(assert (=> bm!511285 (= call!511289 (derivationStepZipperDown!1339 (ite c!1106611 (regOne!32695 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (regOne!32694 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))))) (ite c!1106611 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (Context!10951 call!511290)) (h!70897 s!2326)))))

(declare-fun b!6149006 () Bool)

(declare-fun e!3746974 () (InoxSet Context!10950))

(assert (=> b!6149006 (= e!3746974 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6149007 () Bool)

(assert (=> b!6149007 (= e!3746971 ((_ map or) call!511289 call!511292))))

(declare-fun b!6149008 () Bool)

(assert (=> b!6149008 (= e!3746970 ((_ map or) call!511289 call!511287))))

(declare-fun c!1106610 () Bool)

(declare-fun bm!511286 () Bool)

(assert (=> bm!511286 (= call!511290 ($colon$colon!1968 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))))) (ite (or c!1106610 c!1106607) (regTwo!32694 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))))))))

(declare-fun b!6149009 () Bool)

(assert (=> b!6149009 (= e!3746973 call!511288)))

(declare-fun d!1926667 () Bool)

(declare-fun c!1106609 () Bool)

(assert (=> d!1926667 (= c!1106609 (and ((_ is ElementMatch!16091) (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (= (c!1106101 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (h!70897 s!2326))))))

(assert (=> d!1926667 (= (derivationStepZipperDown!1339 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))) (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (h!70897 s!2326)) e!3746975)))

(declare-fun b!6149005 () Bool)

(declare-fun c!1106608 () Bool)

(assert (=> b!6149005 (= c!1106608 ((_ is Star!16091) (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))))))

(assert (=> b!6149005 (= e!3746973 e!3746974)))

(declare-fun b!6149010 () Bool)

(assert (=> b!6149010 (= e!3746974 call!511288)))

(declare-fun b!6149011 () Bool)

(declare-fun e!3746972 () Bool)

(assert (=> b!6149011 (= c!1106610 e!3746972)))

(declare-fun res!2547190 () Bool)

(assert (=> b!6149011 (=> (not res!2547190) (not e!3746972))))

(assert (=> b!6149011 (= res!2547190 ((_ is Concat!24936) (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))))))

(assert (=> b!6149011 (= e!3746970 e!3746971)))

(declare-fun bm!511287 () Bool)

(assert (=> bm!511287 (= call!511287 (derivationStepZipperDown!1339 (ite c!1106611 (regTwo!32695 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (ite c!1106610 (regTwo!32694 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (ite c!1106607 (regOne!32694 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (reg!16420 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))))))) (ite (or c!1106611 c!1106610) (Context!10951 (t!378057 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343)))))))) (Context!10951 call!511291)) (h!70897 s!2326)))))

(declare-fun b!6149012 () Bool)

(assert (=> b!6149012 (= e!3746972 (nullable!6084 (regOne!32694 (h!70896 (exprs!5975 (Context!10951 (Cons!64448 (h!70896 (exprs!5975 (h!70898 zl!343))) (t!378057 (exprs!5975 (h!70898 zl!343))))))))))))

(assert (= (and d!1926667 c!1106609) b!6149004))

(assert (= (and d!1926667 (not c!1106609)) b!6149002))

(assert (= (and b!6149002 c!1106611) b!6149008))

(assert (= (and b!6149002 (not c!1106611)) b!6149011))

(assert (= (and b!6149011 res!2547190) b!6149012))

(assert (= (and b!6149011 c!1106610) b!6149007))

(assert (= (and b!6149011 (not c!1106610)) b!6149003))

(assert (= (and b!6149003 c!1106607) b!6149009))

(assert (= (and b!6149003 (not c!1106607)) b!6149005))

(assert (= (and b!6149005 c!1106608) b!6149010))

(assert (= (and b!6149005 (not c!1106608)) b!6149006))

(assert (= (or b!6149009 b!6149010) bm!511284))

(assert (= (or b!6149009 b!6149010) bm!511282))

(assert (= (or b!6149007 bm!511284) bm!511286))

(assert (= (or b!6149007 bm!511282) bm!511283))

(assert (= (or b!6149008 bm!511283) bm!511287))

(assert (= (or b!6149008 b!6149007) bm!511285))

(declare-fun m!6989046 () Bool)

(assert (=> bm!511287 m!6989046))

(declare-fun m!6989048 () Bool)

(assert (=> bm!511286 m!6989048))

(declare-fun m!6989050 () Bool)

(assert (=> bm!511285 m!6989050))

(declare-fun m!6989052 () Bool)

(assert (=> b!6149004 m!6989052))

(declare-fun m!6989054 () Bool)

(assert (=> b!6149012 m!6989054))

(assert (=> bm!511055 d!1926667))

(declare-fun d!1926669 () Bool)

(assert (=> d!1926669 (= (isUnion!948 lt!2334039) ((_ is Union!16091) lt!2334039))))

(assert (=> b!6147843 d!1926669))

(declare-fun d!1926671 () Bool)

(declare-fun c!1106612 () Bool)

(assert (=> d!1926671 (= c!1106612 (isEmpty!36408 (tail!11787 (t!378058 s!2326))))))

(declare-fun e!3746976 () Bool)

(assert (=> d!1926671 (= (matchZipper!2103 (derivationStepZipper!2064 lt!2333943 (head!12702 (t!378058 s!2326))) (tail!11787 (t!378058 s!2326))) e!3746976)))

(declare-fun b!6149013 () Bool)

(assert (=> b!6149013 (= e!3746976 (nullableZipper!1872 (derivationStepZipper!2064 lt!2333943 (head!12702 (t!378058 s!2326)))))))

(declare-fun b!6149014 () Bool)

(assert (=> b!6149014 (= e!3746976 (matchZipper!2103 (derivationStepZipper!2064 (derivationStepZipper!2064 lt!2333943 (head!12702 (t!378058 s!2326))) (head!12702 (tail!11787 (t!378058 s!2326)))) (tail!11787 (tail!11787 (t!378058 s!2326)))))))

(assert (= (and d!1926671 c!1106612) b!6149013))

(assert (= (and d!1926671 (not c!1106612)) b!6149014))

(assert (=> d!1926671 m!6987778))

(assert (=> d!1926671 m!6988422))

(assert (=> b!6149013 m!6987824))

(declare-fun m!6989056 () Bool)

(assert (=> b!6149013 m!6989056))

(assert (=> b!6149014 m!6987778))

(assert (=> b!6149014 m!6988426))

(assert (=> b!6149014 m!6987824))

(assert (=> b!6149014 m!6988426))

(declare-fun m!6989058 () Bool)

(assert (=> b!6149014 m!6989058))

(assert (=> b!6149014 m!6987778))

(assert (=> b!6149014 m!6988430))

(assert (=> b!6149014 m!6989058))

(assert (=> b!6149014 m!6988430))

(declare-fun m!6989060 () Bool)

(assert (=> b!6149014 m!6989060))

(assert (=> b!6147627 d!1926671))

(declare-fun bs!1524465 () Bool)

(declare-fun d!1926673 () Bool)

(assert (= bs!1524465 (and d!1926673 d!1926619)))

(declare-fun lambda!335307 () Int)

(assert (=> bs!1524465 (= lambda!335307 lambda!335297)))

(declare-fun bs!1524466 () Bool)

(assert (= bs!1524466 (and d!1926673 d!1926569)))

(assert (=> bs!1524466 (= lambda!335307 lambda!335293)))

(declare-fun bs!1524467 () Bool)

(assert (= bs!1524467 (and d!1926673 b!6147154)))

(assert (=> bs!1524467 (= (= (head!12702 (t!378058 s!2326)) (h!70897 s!2326)) (= lambda!335307 lambda!335177))))

(declare-fun bs!1524468 () Bool)

(assert (= bs!1524468 (and d!1926673 d!1926541)))

(assert (=> bs!1524468 (= lambda!335307 lambda!335290)))

(declare-fun bs!1524469 () Bool)

(assert (= bs!1524469 (and d!1926673 d!1926367)))

(assert (=> bs!1524469 (= lambda!335307 lambda!335273)))

(declare-fun bs!1524470 () Bool)

(assert (= bs!1524470 (and d!1926673 d!1926631)))

(assert (=> bs!1524470 (= lambda!335307 lambda!335298)))

(declare-fun bs!1524471 () Bool)

(assert (= bs!1524471 (and d!1926673 d!1926399)))

(assert (=> bs!1524471 (= lambda!335307 lambda!335276)))

(assert (=> d!1926673 true))

(assert (=> d!1926673 (= (derivationStepZipper!2064 lt!2333943 (head!12702 (t!378058 s!2326))) (flatMap!1596 lt!2333943 lambda!335307))))

(declare-fun bs!1524472 () Bool)

(assert (= bs!1524472 d!1926673))

(declare-fun m!6989062 () Bool)

(assert (=> bs!1524472 m!6989062))

(assert (=> b!6147627 d!1926673))

(assert (=> b!6147627 d!1926377))

(assert (=> b!6147627 d!1926379))

(declare-fun bm!511288 () Bool)

(declare-fun call!511294 () (InoxSet Context!10950))

(declare-fun call!511298 () (InoxSet Context!10950))

(assert (=> bm!511288 (= call!511294 call!511298)))

(declare-fun b!6149015 () Bool)

(declare-fun e!3746982 () (InoxSet Context!10950))

(declare-fun e!3746977 () (InoxSet Context!10950))

(assert (=> b!6149015 (= e!3746982 e!3746977)))

(declare-fun c!1106617 () Bool)

(assert (=> b!6149015 (= c!1106617 ((_ is Union!16091) (h!70896 (exprs!5975 lt!2333948))))))

(declare-fun bm!511289 () Bool)

(declare-fun call!511293 () (InoxSet Context!10950))

(assert (=> bm!511289 (= call!511298 call!511293)))

(declare-fun bm!511290 () Bool)

(declare-fun call!511297 () List!64572)

(declare-fun call!511296 () List!64572)

(assert (=> bm!511290 (= call!511297 call!511296)))

(declare-fun b!6149016 () Bool)

(declare-fun e!3746978 () (InoxSet Context!10950))

(declare-fun e!3746980 () (InoxSet Context!10950))

(assert (=> b!6149016 (= e!3746978 e!3746980)))

(declare-fun c!1106613 () Bool)

(assert (=> b!6149016 (= c!1106613 ((_ is Concat!24936) (h!70896 (exprs!5975 lt!2333948))))))

(declare-fun b!6149017 () Bool)

(assert (=> b!6149017 (= e!3746982 (store ((as const (Array Context!10950 Bool)) false) (Context!10951 (t!378057 (exprs!5975 lt!2333948))) true))))

(declare-fun call!511295 () (InoxSet Context!10950))

(declare-fun bm!511291 () Bool)

(assert (=> bm!511291 (= call!511295 (derivationStepZipperDown!1339 (ite c!1106617 (regOne!32695 (h!70896 (exprs!5975 lt!2333948))) (regOne!32694 (h!70896 (exprs!5975 lt!2333948)))) (ite c!1106617 (Context!10951 (t!378057 (exprs!5975 lt!2333948))) (Context!10951 call!511296)) (h!70897 s!2326)))))

(declare-fun b!6149019 () Bool)

(declare-fun e!3746981 () (InoxSet Context!10950))

(assert (=> b!6149019 (= e!3746981 ((as const (Array Context!10950 Bool)) false))))

(declare-fun b!6149020 () Bool)

(assert (=> b!6149020 (= e!3746978 ((_ map or) call!511295 call!511298))))

(declare-fun b!6149021 () Bool)

(assert (=> b!6149021 (= e!3746977 ((_ map or) call!511295 call!511293))))

(declare-fun bm!511292 () Bool)

(declare-fun c!1106616 () Bool)

(assert (=> bm!511292 (= call!511296 ($colon$colon!1968 (exprs!5975 (Context!10951 (t!378057 (exprs!5975 lt!2333948)))) (ite (or c!1106616 c!1106613) (regTwo!32694 (h!70896 (exprs!5975 lt!2333948))) (h!70896 (exprs!5975 lt!2333948)))))))

(declare-fun b!6149022 () Bool)

(assert (=> b!6149022 (= e!3746980 call!511294)))

(declare-fun d!1926675 () Bool)

(declare-fun c!1106615 () Bool)

(assert (=> d!1926675 (= c!1106615 (and ((_ is ElementMatch!16091) (h!70896 (exprs!5975 lt!2333948))) (= (c!1106101 (h!70896 (exprs!5975 lt!2333948))) (h!70897 s!2326))))))

(assert (=> d!1926675 (= (derivationStepZipperDown!1339 (h!70896 (exprs!5975 lt!2333948)) (Context!10951 (t!378057 (exprs!5975 lt!2333948))) (h!70897 s!2326)) e!3746982)))

(declare-fun b!6149018 () Bool)

(declare-fun c!1106614 () Bool)

(assert (=> b!6149018 (= c!1106614 ((_ is Star!16091) (h!70896 (exprs!5975 lt!2333948))))))

(assert (=> b!6149018 (= e!3746980 e!3746981)))

(declare-fun b!6149023 () Bool)

(assert (=> b!6149023 (= e!3746981 call!511294)))

(declare-fun b!6149024 () Bool)

(declare-fun e!3746979 () Bool)

(assert (=> b!6149024 (= c!1106616 e!3746979)))

(declare-fun res!2547191 () Bool)

(assert (=> b!6149024 (=> (not res!2547191) (not e!3746979))))

(assert (=> b!6149024 (= res!2547191 ((_ is Concat!24936) (h!70896 (exprs!5975 lt!2333948))))))

(assert (=> b!6149024 (= e!3746977 e!3746978)))

(declare-fun bm!511293 () Bool)

(assert (=> bm!511293 (= call!511293 (derivationStepZipperDown!1339 (ite c!1106617 (regTwo!32695 (h!70896 (exprs!5975 lt!2333948))) (ite c!1106616 (regTwo!32694 (h!70896 (exprs!5975 lt!2333948))) (ite c!1106613 (regOne!32694 (h!70896 (exprs!5975 lt!2333948))) (reg!16420 (h!70896 (exprs!5975 lt!2333948)))))) (ite (or c!1106617 c!1106616) (Context!10951 (t!378057 (exprs!5975 lt!2333948))) (Context!10951 call!511297)) (h!70897 s!2326)))))

(declare-fun b!6149025 () Bool)

(assert (=> b!6149025 (= e!3746979 (nullable!6084 (regOne!32694 (h!70896 (exprs!5975 lt!2333948)))))))

(assert (= (and d!1926675 c!1106615) b!6149017))

(assert (= (and d!1926675 (not c!1106615)) b!6149015))

(assert (= (and b!6149015 c!1106617) b!6149021))

(assert (= (and b!6149015 (not c!1106617)) b!6149024))

(assert (= (and b!6149024 res!2547191) b!6149025))

(assert (= (and b!6149024 c!1106616) b!6149020))

(assert (= (and b!6149024 (not c!1106616)) b!6149016))

(assert (= (and b!6149016 c!1106613) b!6149022))

(assert (= (and b!6149016 (not c!1106613)) b!6149018))

(assert (= (and b!6149018 c!1106614) b!6149023))

(assert (= (and b!6149018 (not c!1106614)) b!6149019))

(assert (= (or b!6149022 b!6149023) bm!511290))

(assert (= (or b!6149022 b!6149023) bm!511288))

(assert (= (or b!6149020 bm!511290) bm!511292))

(assert (= (or b!6149020 bm!511288) bm!511289))

(assert (= (or b!6149021 bm!511289) bm!511293))

(assert (= (or b!6149021 b!6149020) bm!511291))

(declare-fun m!6989064 () Bool)

(assert (=> bm!511293 m!6989064))

(declare-fun m!6989066 () Bool)

(assert (=> bm!511292 m!6989066))

(declare-fun m!6989068 () Bool)

(assert (=> bm!511291 m!6989068))

(declare-fun m!6989070 () Bool)

(assert (=> b!6149017 m!6989070))

(declare-fun m!6989072 () Bool)

(assert (=> b!6149025 m!6989072))

(assert (=> bm!511047 d!1926675))

(declare-fun d!1926677 () Bool)

(assert (=> d!1926677 (= (isEmpty!36404 (tail!11789 (unfocusZipperList!1512 zl!343))) ((_ is Nil!64448) (tail!11789 (unfocusZipperList!1512 zl!343))))))

(assert (=> b!6147847 d!1926677))

(declare-fun d!1926679 () Bool)

(assert (=> d!1926679 (= (tail!11789 (unfocusZipperList!1512 zl!343)) (t!378057 (unfocusZipperList!1512 zl!343)))))

(assert (=> b!6147847 d!1926679))

(declare-fun b!6149027 () Bool)

(declare-fun e!3746983 () Bool)

(declare-fun tp!1717535 () Bool)

(declare-fun tp!1717532 () Bool)

(assert (=> b!6149027 (= e!3746983 (and tp!1717535 tp!1717532))))

(declare-fun b!6149028 () Bool)

(declare-fun tp!1717534 () Bool)

(assert (=> b!6149028 (= e!3746983 tp!1717534)))

(assert (=> b!6147949 (= tp!1717349 e!3746983)))

(declare-fun b!6149029 () Bool)

(declare-fun tp!1717531 () Bool)

(declare-fun tp!1717533 () Bool)

(assert (=> b!6149029 (= e!3746983 (and tp!1717531 tp!1717533))))

(declare-fun b!6149026 () Bool)

(assert (=> b!6149026 (= e!3746983 tp_is_empty!41435)))

(assert (= (and b!6147949 ((_ is ElementMatch!16091) (regOne!32694 (regOne!32695 r!7292)))) b!6149026))

(assert (= (and b!6147949 ((_ is Concat!24936) (regOne!32694 (regOne!32695 r!7292)))) b!6149027))

(assert (= (and b!6147949 ((_ is Star!16091) (regOne!32694 (regOne!32695 r!7292)))) b!6149028))

(assert (= (and b!6147949 ((_ is Union!16091) (regOne!32694 (regOne!32695 r!7292)))) b!6149029))

(declare-fun b!6149031 () Bool)

(declare-fun e!3746984 () Bool)

(declare-fun tp!1717540 () Bool)

(declare-fun tp!1717537 () Bool)

(assert (=> b!6149031 (= e!3746984 (and tp!1717540 tp!1717537))))

(declare-fun b!6149032 () Bool)

(declare-fun tp!1717539 () Bool)

(assert (=> b!6149032 (= e!3746984 tp!1717539)))

(assert (=> b!6147949 (= tp!1717346 e!3746984)))

(declare-fun b!6149033 () Bool)

(declare-fun tp!1717536 () Bool)

(declare-fun tp!1717538 () Bool)

(assert (=> b!6149033 (= e!3746984 (and tp!1717536 tp!1717538))))

(declare-fun b!6149030 () Bool)

(assert (=> b!6149030 (= e!3746984 tp_is_empty!41435)))

(assert (= (and b!6147949 ((_ is ElementMatch!16091) (regTwo!32694 (regOne!32695 r!7292)))) b!6149030))

(assert (= (and b!6147949 ((_ is Concat!24936) (regTwo!32694 (regOne!32695 r!7292)))) b!6149031))

(assert (= (and b!6147949 ((_ is Star!16091) (regTwo!32694 (regOne!32695 r!7292)))) b!6149032))

(assert (= (and b!6147949 ((_ is Union!16091) (regTwo!32694 (regOne!32695 r!7292)))) b!6149033))

(declare-fun b!6149035 () Bool)

(declare-fun e!3746985 () Bool)

(declare-fun tp!1717545 () Bool)

(declare-fun tp!1717542 () Bool)

(assert (=> b!6149035 (= e!3746985 (and tp!1717545 tp!1717542))))

(declare-fun b!6149036 () Bool)

(declare-fun tp!1717544 () Bool)

(assert (=> b!6149036 (= e!3746985 tp!1717544)))

(assert (=> b!6147915 (= tp!1717307 e!3746985)))

(declare-fun b!6149037 () Bool)

(declare-fun tp!1717541 () Bool)

(declare-fun tp!1717543 () Bool)

(assert (=> b!6149037 (= e!3746985 (and tp!1717541 tp!1717543))))

(declare-fun b!6149034 () Bool)

(assert (=> b!6149034 (= e!3746985 tp_is_empty!41435)))

(assert (= (and b!6147915 ((_ is ElementMatch!16091) (regOne!32695 (regOne!32694 r!7292)))) b!6149034))

(assert (= (and b!6147915 ((_ is Concat!24936) (regOne!32695 (regOne!32694 r!7292)))) b!6149035))

(assert (= (and b!6147915 ((_ is Star!16091) (regOne!32695 (regOne!32694 r!7292)))) b!6149036))

(assert (= (and b!6147915 ((_ is Union!16091) (regOne!32695 (regOne!32694 r!7292)))) b!6149037))

(declare-fun b!6149039 () Bool)

(declare-fun e!3746986 () Bool)

(declare-fun tp!1717550 () Bool)

(declare-fun tp!1717547 () Bool)

(assert (=> b!6149039 (= e!3746986 (and tp!1717550 tp!1717547))))

(declare-fun b!6149040 () Bool)

(declare-fun tp!1717549 () Bool)

(assert (=> b!6149040 (= e!3746986 tp!1717549)))

(assert (=> b!6147915 (= tp!1717309 e!3746986)))

(declare-fun b!6149041 () Bool)

(declare-fun tp!1717546 () Bool)

(declare-fun tp!1717548 () Bool)

(assert (=> b!6149041 (= e!3746986 (and tp!1717546 tp!1717548))))

(declare-fun b!6149038 () Bool)

(assert (=> b!6149038 (= e!3746986 tp_is_empty!41435)))

(assert (= (and b!6147915 ((_ is ElementMatch!16091) (regTwo!32695 (regOne!32694 r!7292)))) b!6149038))

(assert (= (and b!6147915 ((_ is Concat!24936) (regTwo!32695 (regOne!32694 r!7292)))) b!6149039))

(assert (= (and b!6147915 ((_ is Star!16091) (regTwo!32695 (regOne!32694 r!7292)))) b!6149040))

(assert (= (and b!6147915 ((_ is Union!16091) (regTwo!32695 (regOne!32694 r!7292)))) b!6149041))

(declare-fun b!6149043 () Bool)

(declare-fun e!3746987 () Bool)

(declare-fun tp!1717555 () Bool)

(declare-fun tp!1717552 () Bool)

(assert (=> b!6149043 (= e!3746987 (and tp!1717555 tp!1717552))))

(declare-fun b!6149044 () Bool)

(declare-fun tp!1717554 () Bool)

(assert (=> b!6149044 (= e!3746987 tp!1717554)))

(assert (=> b!6147950 (= tp!1717348 e!3746987)))

(declare-fun b!6149045 () Bool)

(declare-fun tp!1717551 () Bool)

(declare-fun tp!1717553 () Bool)

(assert (=> b!6149045 (= e!3746987 (and tp!1717551 tp!1717553))))

(declare-fun b!6149042 () Bool)

(assert (=> b!6149042 (= e!3746987 tp_is_empty!41435)))

(assert (= (and b!6147950 ((_ is ElementMatch!16091) (reg!16420 (regOne!32695 r!7292)))) b!6149042))

(assert (= (and b!6147950 ((_ is Concat!24936) (reg!16420 (regOne!32695 r!7292)))) b!6149043))

(assert (= (and b!6147950 ((_ is Star!16091) (reg!16420 (regOne!32695 r!7292)))) b!6149044))

(assert (= (and b!6147950 ((_ is Union!16091) (reg!16420 (regOne!32695 r!7292)))) b!6149045))

(declare-fun b!6149047 () Bool)

(declare-fun e!3746988 () Bool)

(declare-fun tp!1717560 () Bool)

(declare-fun tp!1717557 () Bool)

(assert (=> b!6149047 (= e!3746988 (and tp!1717560 tp!1717557))))

(declare-fun b!6149048 () Bool)

(declare-fun tp!1717559 () Bool)

(assert (=> b!6149048 (= e!3746988 tp!1717559)))

(assert (=> b!6147951 (= tp!1717345 e!3746988)))

(declare-fun b!6149049 () Bool)

(declare-fun tp!1717556 () Bool)

(declare-fun tp!1717558 () Bool)

(assert (=> b!6149049 (= e!3746988 (and tp!1717556 tp!1717558))))

(declare-fun b!6149046 () Bool)

(assert (=> b!6149046 (= e!3746988 tp_is_empty!41435)))

(assert (= (and b!6147951 ((_ is ElementMatch!16091) (regOne!32695 (regOne!32695 r!7292)))) b!6149046))

(assert (= (and b!6147951 ((_ is Concat!24936) (regOne!32695 (regOne!32695 r!7292)))) b!6149047))

(assert (= (and b!6147951 ((_ is Star!16091) (regOne!32695 (regOne!32695 r!7292)))) b!6149048))

(assert (= (and b!6147951 ((_ is Union!16091) (regOne!32695 (regOne!32695 r!7292)))) b!6149049))

(declare-fun b!6149051 () Bool)

(declare-fun e!3746989 () Bool)

(declare-fun tp!1717565 () Bool)

(declare-fun tp!1717562 () Bool)

(assert (=> b!6149051 (= e!3746989 (and tp!1717565 tp!1717562))))

(declare-fun b!6149052 () Bool)

(declare-fun tp!1717564 () Bool)

(assert (=> b!6149052 (= e!3746989 tp!1717564)))

(assert (=> b!6147951 (= tp!1717347 e!3746989)))

(declare-fun b!6149053 () Bool)

(declare-fun tp!1717561 () Bool)

(declare-fun tp!1717563 () Bool)

(assert (=> b!6149053 (= e!3746989 (and tp!1717561 tp!1717563))))

(declare-fun b!6149050 () Bool)

(assert (=> b!6149050 (= e!3746989 tp_is_empty!41435)))

(assert (= (and b!6147951 ((_ is ElementMatch!16091) (regTwo!32695 (regOne!32695 r!7292)))) b!6149050))

(assert (= (and b!6147951 ((_ is Concat!24936) (regTwo!32695 (regOne!32695 r!7292)))) b!6149051))

(assert (= (and b!6147951 ((_ is Star!16091) (regTwo!32695 (regOne!32695 r!7292)))) b!6149052))

(assert (= (and b!6147951 ((_ is Union!16091) (regTwo!32695 (regOne!32695 r!7292)))) b!6149053))

(declare-fun b!6149055 () Bool)

(declare-fun e!3746990 () Bool)

(declare-fun tp!1717570 () Bool)

(declare-fun tp!1717567 () Bool)

(assert (=> b!6149055 (= e!3746990 (and tp!1717570 tp!1717567))))

(declare-fun b!6149056 () Bool)

(declare-fun tp!1717569 () Bool)

(assert (=> b!6149056 (= e!3746990 tp!1717569)))

(assert (=> b!6147928 (= tp!1717323 e!3746990)))

(declare-fun b!6149057 () Bool)

(declare-fun tp!1717566 () Bool)

(declare-fun tp!1717568 () Bool)

(assert (=> b!6149057 (= e!3746990 (and tp!1717566 tp!1717568))))

(declare-fun b!6149054 () Bool)

(assert (=> b!6149054 (= e!3746990 tp_is_empty!41435)))

(assert (= (and b!6147928 ((_ is ElementMatch!16091) (regOne!32695 (reg!16420 r!7292)))) b!6149054))

(assert (= (and b!6147928 ((_ is Concat!24936) (regOne!32695 (reg!16420 r!7292)))) b!6149055))

(assert (= (and b!6147928 ((_ is Star!16091) (regOne!32695 (reg!16420 r!7292)))) b!6149056))

(assert (= (and b!6147928 ((_ is Union!16091) (regOne!32695 (reg!16420 r!7292)))) b!6149057))

(declare-fun b!6149059 () Bool)

(declare-fun e!3746991 () Bool)

(declare-fun tp!1717575 () Bool)

(declare-fun tp!1717572 () Bool)

(assert (=> b!6149059 (= e!3746991 (and tp!1717575 tp!1717572))))

(declare-fun b!6149060 () Bool)

(declare-fun tp!1717574 () Bool)

(assert (=> b!6149060 (= e!3746991 tp!1717574)))

(assert (=> b!6147928 (= tp!1717325 e!3746991)))

(declare-fun b!6149061 () Bool)

(declare-fun tp!1717571 () Bool)

(declare-fun tp!1717573 () Bool)

(assert (=> b!6149061 (= e!3746991 (and tp!1717571 tp!1717573))))

(declare-fun b!6149058 () Bool)

(assert (=> b!6149058 (= e!3746991 tp_is_empty!41435)))

(assert (= (and b!6147928 ((_ is ElementMatch!16091) (regTwo!32695 (reg!16420 r!7292)))) b!6149058))

(assert (= (and b!6147928 ((_ is Concat!24936) (regTwo!32695 (reg!16420 r!7292)))) b!6149059))

(assert (= (and b!6147928 ((_ is Star!16091) (regTwo!32695 (reg!16420 r!7292)))) b!6149060))

(assert (= (and b!6147928 ((_ is Union!16091) (regTwo!32695 (reg!16420 r!7292)))) b!6149061))

(declare-fun b!6149063 () Bool)

(declare-fun e!3746993 () Bool)

(declare-fun tp!1717576 () Bool)

(assert (=> b!6149063 (= e!3746993 tp!1717576)))

(declare-fun tp!1717577 () Bool)

(declare-fun e!3746992 () Bool)

(declare-fun b!6149062 () Bool)

(assert (=> b!6149062 (= e!3746992 (and (inv!83474 (h!70898 (t!378059 (t!378059 zl!343)))) e!3746993 tp!1717577))))

(assert (=> b!6147935 (= tp!1717333 e!3746992)))

(assert (= b!6149062 b!6149063))

(assert (= (and b!6147935 ((_ is Cons!64450) (t!378059 (t!378059 zl!343)))) b!6149062))

(declare-fun m!6989074 () Bool)

(assert (=> b!6149062 m!6989074))

(declare-fun b!6149064 () Bool)

(declare-fun e!3746994 () Bool)

(declare-fun tp!1717578 () Bool)

(declare-fun tp!1717579 () Bool)

(assert (=> b!6149064 (= e!3746994 (and tp!1717578 tp!1717579))))

(assert (=> b!6147936 (= tp!1717332 e!3746994)))

(assert (= (and b!6147936 ((_ is Cons!64448) (exprs!5975 (h!70898 (t!378059 zl!343))))) b!6149064))

(declare-fun b!6149066 () Bool)

(declare-fun e!3746995 () Bool)

(declare-fun tp!1717584 () Bool)

(declare-fun tp!1717581 () Bool)

(assert (=> b!6149066 (= e!3746995 (and tp!1717584 tp!1717581))))

(declare-fun b!6149067 () Bool)

(declare-fun tp!1717583 () Bool)

(assert (=> b!6149067 (= e!3746995 tp!1717583)))

(assert (=> b!6147913 (= tp!1717311 e!3746995)))

(declare-fun b!6149068 () Bool)

(declare-fun tp!1717580 () Bool)

(declare-fun tp!1717582 () Bool)

(assert (=> b!6149068 (= e!3746995 (and tp!1717580 tp!1717582))))

(declare-fun b!6149065 () Bool)

(assert (=> b!6149065 (= e!3746995 tp_is_empty!41435)))

(assert (= (and b!6147913 ((_ is ElementMatch!16091) (regOne!32694 (regOne!32694 r!7292)))) b!6149065))

(assert (= (and b!6147913 ((_ is Concat!24936) (regOne!32694 (regOne!32694 r!7292)))) b!6149066))

(assert (= (and b!6147913 ((_ is Star!16091) (regOne!32694 (regOne!32694 r!7292)))) b!6149067))

(assert (= (and b!6147913 ((_ is Union!16091) (regOne!32694 (regOne!32694 r!7292)))) b!6149068))

(declare-fun b!6149070 () Bool)

(declare-fun e!3746996 () Bool)

(declare-fun tp!1717589 () Bool)

(declare-fun tp!1717586 () Bool)

(assert (=> b!6149070 (= e!3746996 (and tp!1717589 tp!1717586))))

(declare-fun b!6149071 () Bool)

(declare-fun tp!1717588 () Bool)

(assert (=> b!6149071 (= e!3746996 tp!1717588)))

(assert (=> b!6147913 (= tp!1717308 e!3746996)))

(declare-fun b!6149072 () Bool)

(declare-fun tp!1717585 () Bool)

(declare-fun tp!1717587 () Bool)

(assert (=> b!6149072 (= e!3746996 (and tp!1717585 tp!1717587))))

(declare-fun b!6149069 () Bool)

(assert (=> b!6149069 (= e!3746996 tp_is_empty!41435)))

(assert (= (and b!6147913 ((_ is ElementMatch!16091) (regTwo!32694 (regOne!32694 r!7292)))) b!6149069))

(assert (= (and b!6147913 ((_ is Concat!24936) (regTwo!32694 (regOne!32694 r!7292)))) b!6149070))

(assert (= (and b!6147913 ((_ is Star!16091) (regTwo!32694 (regOne!32694 r!7292)))) b!6149071))

(assert (= (and b!6147913 ((_ is Union!16091) (regTwo!32694 (regOne!32694 r!7292)))) b!6149072))

(declare-fun b!6149074 () Bool)

(declare-fun e!3746997 () Bool)

(declare-fun tp!1717594 () Bool)

(declare-fun tp!1717591 () Bool)

(assert (=> b!6149074 (= e!3746997 (and tp!1717594 tp!1717591))))

(declare-fun b!6149075 () Bool)

(declare-fun tp!1717593 () Bool)

(assert (=> b!6149075 (= e!3746997 tp!1717593)))

(assert (=> b!6147914 (= tp!1717310 e!3746997)))

(declare-fun b!6149076 () Bool)

(declare-fun tp!1717590 () Bool)

(declare-fun tp!1717592 () Bool)

(assert (=> b!6149076 (= e!3746997 (and tp!1717590 tp!1717592))))

(declare-fun b!6149073 () Bool)

(assert (=> b!6149073 (= e!3746997 tp_is_empty!41435)))

(assert (= (and b!6147914 ((_ is ElementMatch!16091) (reg!16420 (regOne!32694 r!7292)))) b!6149073))

(assert (= (and b!6147914 ((_ is Concat!24936) (reg!16420 (regOne!32694 r!7292)))) b!6149074))

(assert (= (and b!6147914 ((_ is Star!16091) (reg!16420 (regOne!32694 r!7292)))) b!6149075))

(assert (= (and b!6147914 ((_ is Union!16091) (reg!16420 (regOne!32694 r!7292)))) b!6149076))

(declare-fun b!6149078 () Bool)

(declare-fun e!3746998 () Bool)

(declare-fun tp!1717599 () Bool)

(declare-fun tp!1717596 () Bool)

(assert (=> b!6149078 (= e!3746998 (and tp!1717599 tp!1717596))))

(declare-fun b!6149079 () Bool)

(declare-fun tp!1717598 () Bool)

(assert (=> b!6149079 (= e!3746998 tp!1717598)))

(assert (=> b!6147953 (= tp!1717354 e!3746998)))

(declare-fun b!6149080 () Bool)

(declare-fun tp!1717595 () Bool)

(declare-fun tp!1717597 () Bool)

(assert (=> b!6149080 (= e!3746998 (and tp!1717595 tp!1717597))))

(declare-fun b!6149077 () Bool)

(assert (=> b!6149077 (= e!3746998 tp_is_empty!41435)))

(assert (= (and b!6147953 ((_ is ElementMatch!16091) (regOne!32694 (regTwo!32695 r!7292)))) b!6149077))

(assert (= (and b!6147953 ((_ is Concat!24936) (regOne!32694 (regTwo!32695 r!7292)))) b!6149078))

(assert (= (and b!6147953 ((_ is Star!16091) (regOne!32694 (regTwo!32695 r!7292)))) b!6149079))

(assert (= (and b!6147953 ((_ is Union!16091) (regOne!32694 (regTwo!32695 r!7292)))) b!6149080))

(declare-fun b!6149082 () Bool)

(declare-fun e!3746999 () Bool)

(declare-fun tp!1717604 () Bool)

(declare-fun tp!1717601 () Bool)

(assert (=> b!6149082 (= e!3746999 (and tp!1717604 tp!1717601))))

(declare-fun b!6149083 () Bool)

(declare-fun tp!1717603 () Bool)

(assert (=> b!6149083 (= e!3746999 tp!1717603)))

(assert (=> b!6147953 (= tp!1717351 e!3746999)))

(declare-fun b!6149084 () Bool)

(declare-fun tp!1717600 () Bool)

(declare-fun tp!1717602 () Bool)

(assert (=> b!6149084 (= e!3746999 (and tp!1717600 tp!1717602))))

(declare-fun b!6149081 () Bool)

(assert (=> b!6149081 (= e!3746999 tp_is_empty!41435)))

(assert (= (and b!6147953 ((_ is ElementMatch!16091) (regTwo!32694 (regTwo!32695 r!7292)))) b!6149081))

(assert (= (and b!6147953 ((_ is Concat!24936) (regTwo!32694 (regTwo!32695 r!7292)))) b!6149082))

(assert (= (and b!6147953 ((_ is Star!16091) (regTwo!32694 (regTwo!32695 r!7292)))) b!6149083))

(assert (= (and b!6147953 ((_ is Union!16091) (regTwo!32694 (regTwo!32695 r!7292)))) b!6149084))

(declare-fun b!6149086 () Bool)

(declare-fun e!3747000 () Bool)

(declare-fun tp!1717609 () Bool)

(declare-fun tp!1717606 () Bool)

(assert (=> b!6149086 (= e!3747000 (and tp!1717609 tp!1717606))))

(declare-fun b!6149087 () Bool)

(declare-fun tp!1717608 () Bool)

(assert (=> b!6149087 (= e!3747000 tp!1717608)))

(assert (=> b!6147955 (= tp!1717350 e!3747000)))

(declare-fun b!6149088 () Bool)

(declare-fun tp!1717605 () Bool)

(declare-fun tp!1717607 () Bool)

(assert (=> b!6149088 (= e!3747000 (and tp!1717605 tp!1717607))))

(declare-fun b!6149085 () Bool)

(assert (=> b!6149085 (= e!3747000 tp_is_empty!41435)))

(assert (= (and b!6147955 ((_ is ElementMatch!16091) (regOne!32695 (regTwo!32695 r!7292)))) b!6149085))

(assert (= (and b!6147955 ((_ is Concat!24936) (regOne!32695 (regTwo!32695 r!7292)))) b!6149086))

(assert (= (and b!6147955 ((_ is Star!16091) (regOne!32695 (regTwo!32695 r!7292)))) b!6149087))

(assert (= (and b!6147955 ((_ is Union!16091) (regOne!32695 (regTwo!32695 r!7292)))) b!6149088))

(declare-fun b!6149090 () Bool)

(declare-fun e!3747001 () Bool)

(declare-fun tp!1717614 () Bool)

(declare-fun tp!1717611 () Bool)

(assert (=> b!6149090 (= e!3747001 (and tp!1717614 tp!1717611))))

(declare-fun b!6149091 () Bool)

(declare-fun tp!1717613 () Bool)

(assert (=> b!6149091 (= e!3747001 tp!1717613)))

(assert (=> b!6147955 (= tp!1717352 e!3747001)))

(declare-fun b!6149092 () Bool)

(declare-fun tp!1717610 () Bool)

(declare-fun tp!1717612 () Bool)

(assert (=> b!6149092 (= e!3747001 (and tp!1717610 tp!1717612))))

(declare-fun b!6149089 () Bool)

(assert (=> b!6149089 (= e!3747001 tp_is_empty!41435)))

(assert (= (and b!6147955 ((_ is ElementMatch!16091) (regTwo!32695 (regTwo!32695 r!7292)))) b!6149089))

(assert (= (and b!6147955 ((_ is Concat!24936) (regTwo!32695 (regTwo!32695 r!7292)))) b!6149090))

(assert (= (and b!6147955 ((_ is Star!16091) (regTwo!32695 (regTwo!32695 r!7292)))) b!6149091))

(assert (= (and b!6147955 ((_ is Union!16091) (regTwo!32695 (regTwo!32695 r!7292)))) b!6149092))

(declare-fun b!6149094 () Bool)

(declare-fun e!3747002 () Bool)

(declare-fun tp!1717619 () Bool)

(declare-fun tp!1717616 () Bool)

(assert (=> b!6149094 (= e!3747002 (and tp!1717619 tp!1717616))))

(declare-fun b!6149095 () Bool)

(declare-fun tp!1717618 () Bool)

(assert (=> b!6149095 (= e!3747002 tp!1717618)))

(assert (=> b!6147954 (= tp!1717353 e!3747002)))

(declare-fun b!6149096 () Bool)

(declare-fun tp!1717615 () Bool)

(declare-fun tp!1717617 () Bool)

(assert (=> b!6149096 (= e!3747002 (and tp!1717615 tp!1717617))))

(declare-fun b!6149093 () Bool)

(assert (=> b!6149093 (= e!3747002 tp_is_empty!41435)))

(assert (= (and b!6147954 ((_ is ElementMatch!16091) (reg!16420 (regTwo!32695 r!7292)))) b!6149093))

(assert (= (and b!6147954 ((_ is Concat!24936) (reg!16420 (regTwo!32695 r!7292)))) b!6149094))

(assert (= (and b!6147954 ((_ is Star!16091) (reg!16420 (regTwo!32695 r!7292)))) b!6149095))

(assert (= (and b!6147954 ((_ is Union!16091) (reg!16420 (regTwo!32695 r!7292)))) b!6149096))

(declare-fun b!6149098 () Bool)

(declare-fun e!3747003 () Bool)

(declare-fun tp!1717624 () Bool)

(declare-fun tp!1717621 () Bool)

(assert (=> b!6149098 (= e!3747003 (and tp!1717624 tp!1717621))))

(declare-fun b!6149099 () Bool)

(declare-fun tp!1717623 () Bool)

(assert (=> b!6149099 (= e!3747003 tp!1717623)))

(assert (=> b!6147947 (= tp!1717343 e!3747003)))

(declare-fun b!6149100 () Bool)

(declare-fun tp!1717620 () Bool)

(declare-fun tp!1717622 () Bool)

(assert (=> b!6149100 (= e!3747003 (and tp!1717620 tp!1717622))))

(declare-fun b!6149097 () Bool)

(assert (=> b!6149097 (= e!3747003 tp_is_empty!41435)))

(assert (= (and b!6147947 ((_ is ElementMatch!16091) (h!70896 (exprs!5975 (h!70898 zl!343))))) b!6149097))

(assert (= (and b!6147947 ((_ is Concat!24936) (h!70896 (exprs!5975 (h!70898 zl!343))))) b!6149098))

(assert (= (and b!6147947 ((_ is Star!16091) (h!70896 (exprs!5975 (h!70898 zl!343))))) b!6149099))

(assert (= (and b!6147947 ((_ is Union!16091) (h!70896 (exprs!5975 (h!70898 zl!343))))) b!6149100))

(declare-fun b!6149101 () Bool)

(declare-fun e!3747004 () Bool)

(declare-fun tp!1717625 () Bool)

(declare-fun tp!1717626 () Bool)

(assert (=> b!6149101 (= e!3747004 (and tp!1717625 tp!1717626))))

(assert (=> b!6147947 (= tp!1717344 e!3747004)))

(assert (= (and b!6147947 ((_ is Cons!64448) (t!378057 (exprs!5975 (h!70898 zl!343))))) b!6149101))

(declare-fun condSetEmpty!41622 () Bool)

(assert (=> setNonEmpty!41612 (= condSetEmpty!41622 (= setRest!41612 ((as const (Array Context!10950 Bool)) false)))))

(declare-fun setRes!41622 () Bool)

(assert (=> setNonEmpty!41612 (= tp!1717339 setRes!41622)))

(declare-fun setIsEmpty!41622 () Bool)

(assert (=> setIsEmpty!41622 setRes!41622))

(declare-fun setElem!41622 () Context!10950)

(declare-fun setNonEmpty!41622 () Bool)

(declare-fun e!3747005 () Bool)

(declare-fun tp!1717628 () Bool)

(assert (=> setNonEmpty!41622 (= setRes!41622 (and tp!1717628 (inv!83474 setElem!41622) e!3747005))))

(declare-fun setRest!41622 () (InoxSet Context!10950))

(assert (=> setNonEmpty!41622 (= setRest!41612 ((_ map or) (store ((as const (Array Context!10950 Bool)) false) setElem!41622 true) setRest!41622))))

(declare-fun b!6149102 () Bool)

(declare-fun tp!1717627 () Bool)

(assert (=> b!6149102 (= e!3747005 tp!1717627)))

(assert (= (and setNonEmpty!41612 condSetEmpty!41622) setIsEmpty!41622))

(assert (= (and setNonEmpty!41612 (not condSetEmpty!41622)) setNonEmpty!41622))

(assert (= setNonEmpty!41622 b!6149102))

(declare-fun m!6989076 () Bool)

(assert (=> setNonEmpty!41622 m!6989076))

(declare-fun b!6149104 () Bool)

(declare-fun e!3747006 () Bool)

(declare-fun tp!1717633 () Bool)

(declare-fun tp!1717630 () Bool)

(assert (=> b!6149104 (= e!3747006 (and tp!1717633 tp!1717630))))

(declare-fun b!6149105 () Bool)

(declare-fun tp!1717632 () Bool)

(assert (=> b!6149105 (= e!3747006 tp!1717632)))

(assert (=> b!6147927 (= tp!1717326 e!3747006)))

(declare-fun b!6149106 () Bool)

(declare-fun tp!1717629 () Bool)

(declare-fun tp!1717631 () Bool)

(assert (=> b!6149106 (= e!3747006 (and tp!1717629 tp!1717631))))

(declare-fun b!6149103 () Bool)

(assert (=> b!6149103 (= e!3747006 tp_is_empty!41435)))

(assert (= (and b!6147927 ((_ is ElementMatch!16091) (reg!16420 (reg!16420 r!7292)))) b!6149103))

(assert (= (and b!6147927 ((_ is Concat!24936) (reg!16420 (reg!16420 r!7292)))) b!6149104))

(assert (= (and b!6147927 ((_ is Star!16091) (reg!16420 (reg!16420 r!7292)))) b!6149105))

(assert (= (and b!6147927 ((_ is Union!16091) (reg!16420 (reg!16420 r!7292)))) b!6149106))

(declare-fun b!6149107 () Bool)

(declare-fun e!3747007 () Bool)

(declare-fun tp!1717634 () Bool)

(declare-fun tp!1717635 () Bool)

(assert (=> b!6149107 (= e!3747007 (and tp!1717634 tp!1717635))))

(assert (=> b!6147941 (= tp!1717338 e!3747007)))

(assert (= (and b!6147941 ((_ is Cons!64448) (exprs!5975 setElem!41612))) b!6149107))

(declare-fun b!6149109 () Bool)

(declare-fun e!3747008 () Bool)

(declare-fun tp!1717640 () Bool)

(declare-fun tp!1717637 () Bool)

(assert (=> b!6149109 (= e!3747008 (and tp!1717640 tp!1717637))))

(declare-fun b!6149110 () Bool)

(declare-fun tp!1717639 () Bool)

(assert (=> b!6149110 (= e!3747008 tp!1717639)))

(assert (=> b!6147926 (= tp!1717327 e!3747008)))

(declare-fun b!6149111 () Bool)

(declare-fun tp!1717636 () Bool)

(declare-fun tp!1717638 () Bool)

(assert (=> b!6149111 (= e!3747008 (and tp!1717636 tp!1717638))))

(declare-fun b!6149108 () Bool)

(assert (=> b!6149108 (= e!3747008 tp_is_empty!41435)))

(assert (= (and b!6147926 ((_ is ElementMatch!16091) (regOne!32694 (reg!16420 r!7292)))) b!6149108))

(assert (= (and b!6147926 ((_ is Concat!24936) (regOne!32694 (reg!16420 r!7292)))) b!6149109))

(assert (= (and b!6147926 ((_ is Star!16091) (regOne!32694 (reg!16420 r!7292)))) b!6149110))

(assert (= (and b!6147926 ((_ is Union!16091) (regOne!32694 (reg!16420 r!7292)))) b!6149111))

(declare-fun b!6149113 () Bool)

(declare-fun e!3747009 () Bool)

(declare-fun tp!1717645 () Bool)

(declare-fun tp!1717642 () Bool)

(assert (=> b!6149113 (= e!3747009 (and tp!1717645 tp!1717642))))

(declare-fun b!6149114 () Bool)

(declare-fun tp!1717644 () Bool)

(assert (=> b!6149114 (= e!3747009 tp!1717644)))

(assert (=> b!6147926 (= tp!1717324 e!3747009)))

(declare-fun b!6149115 () Bool)

(declare-fun tp!1717641 () Bool)

(declare-fun tp!1717643 () Bool)

(assert (=> b!6149115 (= e!3747009 (and tp!1717641 tp!1717643))))

(declare-fun b!6149112 () Bool)

(assert (=> b!6149112 (= e!3747009 tp_is_empty!41435)))

(assert (= (and b!6147926 ((_ is ElementMatch!16091) (regTwo!32694 (reg!16420 r!7292)))) b!6149112))

(assert (= (and b!6147926 ((_ is Concat!24936) (regTwo!32694 (reg!16420 r!7292)))) b!6149113))

(assert (= (and b!6147926 ((_ is Star!16091) (regTwo!32694 (reg!16420 r!7292)))) b!6149114))

(assert (= (and b!6147926 ((_ is Union!16091) (regTwo!32694 (reg!16420 r!7292)))) b!6149115))

(declare-fun b!6149117 () Bool)

(declare-fun e!3747010 () Bool)

(declare-fun tp!1717650 () Bool)

(declare-fun tp!1717647 () Bool)

(assert (=> b!6149117 (= e!3747010 (and tp!1717650 tp!1717647))))

(declare-fun b!6149118 () Bool)

(declare-fun tp!1717649 () Bool)

(assert (=> b!6149118 (= e!3747010 tp!1717649)))

(assert (=> b!6147924 (= tp!1717321 e!3747010)))

(declare-fun b!6149119 () Bool)

(declare-fun tp!1717646 () Bool)

(declare-fun tp!1717648 () Bool)

(assert (=> b!6149119 (= e!3747010 (and tp!1717646 tp!1717648))))

(declare-fun b!6149116 () Bool)

(assert (=> b!6149116 (= e!3747010 tp_is_empty!41435)))

(assert (= (and b!6147924 ((_ is ElementMatch!16091) (h!70896 (exprs!5975 setElem!41606)))) b!6149116))

(assert (= (and b!6147924 ((_ is Concat!24936) (h!70896 (exprs!5975 setElem!41606)))) b!6149117))

(assert (= (and b!6147924 ((_ is Star!16091) (h!70896 (exprs!5975 setElem!41606)))) b!6149118))

(assert (= (and b!6147924 ((_ is Union!16091) (h!70896 (exprs!5975 setElem!41606)))) b!6149119))

(declare-fun b!6149120 () Bool)

(declare-fun e!3747011 () Bool)

(declare-fun tp!1717651 () Bool)

(declare-fun tp!1717652 () Bool)

(assert (=> b!6149120 (= e!3747011 (and tp!1717651 tp!1717652))))

(assert (=> b!6147924 (= tp!1717322 e!3747011)))

(assert (= (and b!6147924 ((_ is Cons!64448) (t!378057 (exprs!5975 setElem!41606)))) b!6149120))

(declare-fun b!6149122 () Bool)

(declare-fun e!3747012 () Bool)

(declare-fun tp!1717657 () Bool)

(declare-fun tp!1717654 () Bool)

(assert (=> b!6149122 (= e!3747012 (and tp!1717657 tp!1717654))))

(declare-fun b!6149123 () Bool)

(declare-fun tp!1717656 () Bool)

(assert (=> b!6149123 (= e!3747012 tp!1717656)))

(assert (=> b!6147918 (= tp!1717315 e!3747012)))

(declare-fun b!6149124 () Bool)

(declare-fun tp!1717653 () Bool)

(declare-fun tp!1717655 () Bool)

(assert (=> b!6149124 (= e!3747012 (and tp!1717653 tp!1717655))))

(declare-fun b!6149121 () Bool)

(assert (=> b!6149121 (= e!3747012 tp_is_empty!41435)))

(assert (= (and b!6147918 ((_ is ElementMatch!16091) (reg!16420 (regTwo!32694 r!7292)))) b!6149121))

(assert (= (and b!6147918 ((_ is Concat!24936) (reg!16420 (regTwo!32694 r!7292)))) b!6149122))

(assert (= (and b!6147918 ((_ is Star!16091) (reg!16420 (regTwo!32694 r!7292)))) b!6149123))

(assert (= (and b!6147918 ((_ is Union!16091) (reg!16420 (regTwo!32694 r!7292)))) b!6149124))

(declare-fun b!6149126 () Bool)

(declare-fun e!3747013 () Bool)

(declare-fun tp!1717662 () Bool)

(declare-fun tp!1717659 () Bool)

(assert (=> b!6149126 (= e!3747013 (and tp!1717662 tp!1717659))))

(declare-fun b!6149127 () Bool)

(declare-fun tp!1717661 () Bool)

(assert (=> b!6149127 (= e!3747013 tp!1717661)))

(assert (=> b!6147917 (= tp!1717316 e!3747013)))

(declare-fun b!6149128 () Bool)

(declare-fun tp!1717658 () Bool)

(declare-fun tp!1717660 () Bool)

(assert (=> b!6149128 (= e!3747013 (and tp!1717658 tp!1717660))))

(declare-fun b!6149125 () Bool)

(assert (=> b!6149125 (= e!3747013 tp_is_empty!41435)))

(assert (= (and b!6147917 ((_ is ElementMatch!16091) (regOne!32694 (regTwo!32694 r!7292)))) b!6149125))

(assert (= (and b!6147917 ((_ is Concat!24936) (regOne!32694 (regTwo!32694 r!7292)))) b!6149126))

(assert (= (and b!6147917 ((_ is Star!16091) (regOne!32694 (regTwo!32694 r!7292)))) b!6149127))

(assert (= (and b!6147917 ((_ is Union!16091) (regOne!32694 (regTwo!32694 r!7292)))) b!6149128))

(declare-fun b!6149130 () Bool)

(declare-fun e!3747014 () Bool)

(declare-fun tp!1717667 () Bool)

(declare-fun tp!1717664 () Bool)

(assert (=> b!6149130 (= e!3747014 (and tp!1717667 tp!1717664))))

(declare-fun b!6149131 () Bool)

(declare-fun tp!1717666 () Bool)

(assert (=> b!6149131 (= e!3747014 tp!1717666)))

(assert (=> b!6147917 (= tp!1717313 e!3747014)))

(declare-fun b!6149132 () Bool)

(declare-fun tp!1717663 () Bool)

(declare-fun tp!1717665 () Bool)

(assert (=> b!6149132 (= e!3747014 (and tp!1717663 tp!1717665))))

(declare-fun b!6149129 () Bool)

(assert (=> b!6149129 (= e!3747014 tp_is_empty!41435)))

(assert (= (and b!6147917 ((_ is ElementMatch!16091) (regTwo!32694 (regTwo!32694 r!7292)))) b!6149129))

(assert (= (and b!6147917 ((_ is Concat!24936) (regTwo!32694 (regTwo!32694 r!7292)))) b!6149130))

(assert (= (and b!6147917 ((_ is Star!16091) (regTwo!32694 (regTwo!32694 r!7292)))) b!6149131))

(assert (= (and b!6147917 ((_ is Union!16091) (regTwo!32694 (regTwo!32694 r!7292)))) b!6149132))

(declare-fun b!6149133 () Bool)

(declare-fun e!3747015 () Bool)

(declare-fun tp!1717668 () Bool)

(assert (=> b!6149133 (= e!3747015 (and tp_is_empty!41435 tp!1717668))))

(assert (=> b!6147946 (= tp!1717342 e!3747015)))

(assert (= (and b!6147946 ((_ is Cons!64449) (t!378058 (t!378058 s!2326)))) b!6149133))

(declare-fun b!6149135 () Bool)

(declare-fun e!3747016 () Bool)

(declare-fun tp!1717673 () Bool)

(declare-fun tp!1717670 () Bool)

(assert (=> b!6149135 (= e!3747016 (and tp!1717673 tp!1717670))))

(declare-fun b!6149136 () Bool)

(declare-fun tp!1717672 () Bool)

(assert (=> b!6149136 (= e!3747016 tp!1717672)))

(assert (=> b!6147919 (= tp!1717312 e!3747016)))

(declare-fun b!6149137 () Bool)

(declare-fun tp!1717669 () Bool)

(declare-fun tp!1717671 () Bool)

(assert (=> b!6149137 (= e!3747016 (and tp!1717669 tp!1717671))))

(declare-fun b!6149134 () Bool)

(assert (=> b!6149134 (= e!3747016 tp_is_empty!41435)))

(assert (= (and b!6147919 ((_ is ElementMatch!16091) (regOne!32695 (regTwo!32694 r!7292)))) b!6149134))

(assert (= (and b!6147919 ((_ is Concat!24936) (regOne!32695 (regTwo!32694 r!7292)))) b!6149135))

(assert (= (and b!6147919 ((_ is Star!16091) (regOne!32695 (regTwo!32694 r!7292)))) b!6149136))

(assert (= (and b!6147919 ((_ is Union!16091) (regOne!32695 (regTwo!32694 r!7292)))) b!6149137))

(declare-fun b!6149139 () Bool)

(declare-fun e!3747017 () Bool)

(declare-fun tp!1717678 () Bool)

(declare-fun tp!1717675 () Bool)

(assert (=> b!6149139 (= e!3747017 (and tp!1717678 tp!1717675))))

(declare-fun b!6149140 () Bool)

(declare-fun tp!1717677 () Bool)

(assert (=> b!6149140 (= e!3747017 tp!1717677)))

(assert (=> b!6147919 (= tp!1717314 e!3747017)))

(declare-fun b!6149141 () Bool)

(declare-fun tp!1717674 () Bool)

(declare-fun tp!1717676 () Bool)

(assert (=> b!6149141 (= e!3747017 (and tp!1717674 tp!1717676))))

(declare-fun b!6149138 () Bool)

(assert (=> b!6149138 (= e!3747017 tp_is_empty!41435)))

(assert (= (and b!6147919 ((_ is ElementMatch!16091) (regTwo!32695 (regTwo!32694 r!7292)))) b!6149138))

(assert (= (and b!6147919 ((_ is Concat!24936) (regTwo!32695 (regTwo!32694 r!7292)))) b!6149139))

(assert (= (and b!6147919 ((_ is Star!16091) (regTwo!32695 (regTwo!32694 r!7292)))) b!6149140))

(assert (= (and b!6147919 ((_ is Union!16091) (regTwo!32695 (regTwo!32694 r!7292)))) b!6149141))

(declare-fun b_lambda!234033 () Bool)

(assert (= b_lambda!234005 (or d!1926135 b_lambda!234033)))

(declare-fun bs!1524473 () Bool)

(declare-fun d!1926681 () Bool)

(assert (= bs!1524473 (and d!1926681 d!1926135)))

(assert (=> bs!1524473 (= (dynLambda!25403 lambda!335230 (h!70896 (unfocusZipperList!1512 zl!343))) (validRegex!7827 (h!70896 (unfocusZipperList!1512 zl!343))))))

(declare-fun m!6989078 () Bool)

(assert (=> bs!1524473 m!6989078))

(assert (=> b!6148637 d!1926681))

(declare-fun b_lambda!234035 () Bool)

(assert (= b_lambda!233991 (or d!1926133 b_lambda!234035)))

(declare-fun bs!1524474 () Bool)

(declare-fun d!1926683 () Bool)

(assert (= bs!1524474 (and d!1926683 d!1926133)))

(assert (=> bs!1524474 (= (dynLambda!25403 lambda!335227 (h!70896 (exprs!5975 (h!70898 zl!343)))) (validRegex!7827 (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(declare-fun m!6989080 () Bool)

(assert (=> bs!1524474 m!6989080))

(assert (=> b!6148235 d!1926683))

(declare-fun b_lambda!234037 () Bool)

(assert (= b_lambda!234029 (or b!6147154 b_lambda!234037)))

(assert (=> d!1926591 d!1926169))

(declare-fun b_lambda!234039 () Bool)

(assert (= b_lambda!234025 (or d!1926151 b_lambda!234039)))

(declare-fun bs!1524475 () Bool)

(declare-fun d!1926685 () Bool)

(assert (= bs!1524475 (and d!1926685 d!1926151)))

(assert (=> bs!1524475 (= (dynLambda!25403 lambda!335234 (h!70896 (exprs!5975 lt!2333955))) (validRegex!7827 (h!70896 (exprs!5975 lt!2333955))))))

(declare-fun m!6989082 () Bool)

(assert (=> bs!1524475 m!6989082))

(assert (=> b!6148778 d!1926685))

(declare-fun b_lambda!234041 () Bool)

(assert (= b_lambda!234027 (or d!1926123 b_lambda!234041)))

(declare-fun bs!1524476 () Bool)

(declare-fun d!1926687 () Bool)

(assert (= bs!1524476 (and d!1926687 d!1926123)))

(assert (=> bs!1524476 (= (dynLambda!25403 lambda!335218 (h!70896 (exprs!5975 (h!70898 zl!343)))) (validRegex!7827 (h!70896 (exprs!5975 (h!70898 zl!343)))))))

(assert (=> bs!1524476 m!6989080))

(assert (=> b!6148780 d!1926687))

(declare-fun b_lambda!234043 () Bool)

(assert (= b_lambda!234003 (or b!6147154 b_lambda!234043)))

(assert (=> d!1926475 d!1926171))

(declare-fun b_lambda!234045 () Bool)

(assert (= b_lambda!234031 (or d!1926153 b_lambda!234045)))

(declare-fun bs!1524477 () Bool)

(declare-fun d!1926689 () Bool)

(assert (= bs!1524477 (and d!1926689 d!1926153)))

(assert (=> bs!1524477 (= (dynLambda!25403 lambda!335235 (h!70896 (exprs!5975 setElem!41606))) (validRegex!7827 (h!70896 (exprs!5975 setElem!41606))))))

(declare-fun m!6989084 () Bool)

(assert (=> bs!1524477 m!6989084))

(assert (=> b!6148932 d!1926689))

(declare-fun b_lambda!234047 () Bool)

(assert (= b_lambda!234007 (or d!1926137 b_lambda!234047)))

(declare-fun bs!1524478 () Bool)

(declare-fun d!1926691 () Bool)

(assert (= bs!1524478 (and d!1926691 d!1926137)))

(assert (=> bs!1524478 (= (dynLambda!25403 lambda!335233 (h!70896 lt!2334042)) (validRegex!7827 (h!70896 lt!2334042)))))

(declare-fun m!6989086 () Bool)

(assert (=> bs!1524478 m!6989086))

(assert (=> b!6148750 d!1926691))

(check-sat (not b!6149114) (not b!6149087) (not bm!511133) (not d!1926659) (not bm!511136) (not b!6148257) (not d!1926385) (not b!6149044) (not d!1926551) (not b!6148947) (not b!6148920) (not b!6149083) (not b!6148607) (not bm!511116) (not bm!511126) (not bm!511244) (not b!6149107) (not bm!511204) (not b!6149080) (not b!6149051) (not d!1926447) (not b!6148606) (not b!6148842) (not b!6148286) (not b_lambda!234039) (not b!6149031) (not b!6149062) (not b!6149100) (not bm!511238) (not b!6149035) (not b!6148800) (not d!1926445) (not d!1926579) (not b!6148772) (not b!6149043) (not b!6148501) (not d!1926581) (not b!6148423) (not b!6149092) (not b!6148931) (not b!6149056) (not bm!511293) (not b!6149071) (not b!6148981) (not b!6149141) (not d!1926569) (not d!1926403) (not d!1926591) (not d!1926639) (not b!6148462) (not b!6148771) (not b!6148603) (not b!6149127) (not b!6148256) (not b!6148897) (not b!6149099) (not b!6149123) (not b!6149039) (not d!1926397) (not d!1926635) (not b!6148610) (not bm!511279) (not b!6149091) (not bm!511233) (not b!6148424) (not b!6149101) (not b!6148745) (not b!6149064) (not bm!511197) (not bm!511247) (not b!6148494) (not b!6148847) (not b!6148386) (not d!1926493) (not d!1926363) (not bm!511248) (not b!6148638) (not b!6149118) (not b!6148554) (not b!6149000) (not bm!511286) (not d!1926671) (not b_lambda!233981) (not bm!511196) (not b!6149079) (not bm!511287) (not d!1926505) (not b!6149048) (not b!6148808) (not d!1926567) (not b!6148499) (not b!6148605) (not b!6149053) (not b!6149126) (not b!6148914) (not b!6149094) (not d!1926653) (not d!1926451) (not bm!511206) (not bs!1524477) (not b!6148776) (not b!6148839) (not b!6148861) (not b!6149124) (not b!6149045) (not b!6148943) (not bm!511239) (not d!1926475) (not b!6148933) (not setNonEmpty!41621) (not b!6149132) (not d!1926617) (not b!6148720) (not b!6149025) (not d!1926585) (not bm!511291) (not bm!511252) (not b!6148799) (not b!6149128) (not b!6148236) (not d!1926583) (not b!6148867) (not b!6149028) (not setNonEmpty!41620) (not setNonEmpty!41622) (not b!6148992) (not b!6148385) (not b!6149109) (not bm!511280) (not d!1926455) (not bm!511143) (not b!6148825) (not b!6148916) (not d!1926545) (not b!6148360) (not d!1926457) (not bm!511169) (not b!6149102) (not b!6149082) (not b!6149105) (not b!6149136) (not b!6149032) (not b!6148821) (not bm!511227) (not b_lambda!234045) (not bm!511276) (not bm!511117) (not b!6149068) (not bm!511163) (not b!6149139) (not b!6148751) (not b!6148860) (not bm!511253) (not b!6148377) (not b!6148942) (not b!6148883) (not bm!511144) (not b!6148868) (not d!1926629) (not d!1926619) (not b!6148884) (not b!6148919) (not b!6149037) (not d!1926637) (not b!6148915) (not d!1926605) (not b!6149131) (not d!1926561) (not b!6149090) (not b!6149061) (not b!6148886) (not b!6148662) (not d!1926553) (not b!6148882) (not d!1926571) (not b!6148941) (not b!6148898) (not bm!511137) (not b!6148912) tp_is_empty!41435 (not bm!511142) (not bm!511168) (not b!6148866) (not bm!511236) (not b!6149133) (not b!6149040) (not d!1926465) (not b!6149088) (not d!1926641) (not b!6148887) (not b!6148831) (not b!6149066) (not bm!511215) (not b!6149075) (not b!6148843) (not d!1926615) (not d!1926541) (not bm!511240) (not b!6148576) (not b!6148828) (not b!6149106) (not b!6148814) (not bm!511135) (not b!6149057) (not bm!511285) (not bm!511277) (not bm!511263) (not b!6149076) (not b!6149027) (not b!6149110) (not bm!511167) (not d!1926517) (not b!6149113) (not bm!511234) (not d!1926539) (not b!6149117) (not b!6149115) (not b!6149095) (not d!1926441) (not b!6149001) (not d!1926449) (not b!6148815) (not d!1926573) (not bm!511265) (not b!6148824) (not b_lambda!234035) (not bm!511134) (not b!6148383) (not b!6148379) (not b!6148247) (not b!6149096) (not bm!511254) (not b!6148801) (not bm!511266) (not b!6149067) (not bm!511264) (not b_lambda!234041) (not b!6149140) (not b!6148375) (not bs!1524478) (not b!6149135) (not b!6148611) (not bm!511245) (not b!6148823) (not b_lambda!233983) (not b!6148970) (not b!6149070) (not bm!511255) (not b!6149052) (not b!6148939) (not b!6149029) (not b!6149104) (not bm!511251) (not b!6148382) (not d!1926399) (not bm!511249) (not bm!511235) (not d!1926587) (not b!6148500) (not b!6149036) (not b!6149014) (not d!1926503) (not b!6148777) (not d!1926603) (not b!6148497) (not bm!511246) (not b!6148482) (not bs!1524476) (not bm!511259) (not b!6149049) (not bm!511162) (not b!6149086) (not bm!511232) (not b!6148779) (not b!6148761) (not b!6149063) (not bm!511226) (not b!6148829) (not d!1926623) (not b!6148756) (not bm!511195) (not b!6148862) (not b!6149084) (not bm!511225) (not bm!511257) (not bm!511256) (not b!6149078) (not b!6149012) (not b!6148189) (not b!6148865) (not d!1926535) (not d!1926621) (not b!6149047) (not bm!511292) (not b!6148999) (not d!1926555) (not b!6149122) (not d!1926673) (not b!6149111) (not b!6148991) (not b!6148848) (not b!6148849) (not b!6148835) (not b!6149013) (not b!6148530) (not b!6149074) (not bm!511118) (not b!6148214) (not b!6149137) (not b_lambda!234033) (not b!6149033) (not b!6149059) (not b!6149098) (not b_lambda!234043) (not d!1926665) (not b_lambda!234037) (not b!6149060) (not bm!511205) (not b!6148575) (not d!1926631) (not b!6149055) (not bs!1524473) (not b!6148618) (not bs!1524475) (not d!1926365) (not b!6149041) (not b!6148553) (not b!6148885) (not d!1926661) (not bm!511214) (not b_lambda!234047) (not bs!1524474) (not d!1926651) (not b!6148836) (not d!1926599) (not d!1926367) (not b!6148838) (not b!6148872) (not b!6148378) (not bm!511125) (not b!6148858) (not b!6149119) (not b!6148498) (not b!6148844) (not b!6148873) (not b!6148832) (not d!1926577) (not b!6148891) (not b!6148846) (not b!6148946) (not b!6149130) (not b!6148502) (not b!6149120) (not b!6148376) (not d!1926531) (not b!6149072) (not b!6148781))
(check-sat)
