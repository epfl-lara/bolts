; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!587140 () Bool)

(assert start!587140)

(declare-fun b!5693947 () Bool)

(assert (=> b!5693947 true))

(assert (=> b!5693947 true))

(declare-fun lambda!306808 () Int)

(declare-fun lambda!306807 () Int)

(assert (=> b!5693947 (not (= lambda!306808 lambda!306807))))

(assert (=> b!5693947 true))

(assert (=> b!5693947 true))

(declare-fun b!5693914 () Bool)

(assert (=> b!5693914 true))

(declare-fun bs!1327418 () Bool)

(declare-fun b!5693927 () Bool)

(assert (= bs!1327418 (and b!5693927 b!5693947)))

(declare-datatypes ((C!31644 0))(
  ( (C!31645 (val!25524 Int)) )
))
(declare-datatypes ((Regex!15687 0))(
  ( (ElementMatch!15687 (c!1002439 C!31644)) (Concat!24532 (regOne!31886 Regex!15687) (regTwo!31886 Regex!15687)) (EmptyExpr!15687) (Star!15687 (reg!16016 Regex!15687)) (EmptyLang!15687) (Union!15687 (regOne!31887 Regex!15687) (regTwo!31887 Regex!15687)) )
))
(declare-fun r!7292 () Regex!15687)

(declare-fun lambda!306810 () Int)

(declare-fun lt!2271972 () Regex!15687)

(assert (=> bs!1327418 (= (= lt!2271972 (regOne!31886 r!7292)) (= lambda!306810 lambda!306807))))

(assert (=> bs!1327418 (not (= lambda!306810 lambda!306808))))

(assert (=> b!5693927 true))

(assert (=> b!5693927 true))

(assert (=> b!5693927 true))

(declare-fun lambda!306811 () Int)

(assert (=> bs!1327418 (not (= lambda!306811 lambda!306807))))

(assert (=> bs!1327418 (= (= lt!2271972 (regOne!31886 r!7292)) (= lambda!306811 lambda!306808))))

(assert (=> b!5693927 (not (= lambda!306811 lambda!306810))))

(assert (=> b!5693927 true))

(assert (=> b!5693927 true))

(assert (=> b!5693927 true))

(declare-fun e!3503193 () Bool)

(declare-fun e!3503195 () Bool)

(assert (=> b!5693914 (= e!3503193 e!3503195)))

(declare-fun res!2404552 () Bool)

(assert (=> b!5693914 (=> res!2404552 e!3503195)))

(declare-datatypes ((List!63360 0))(
  ( (Nil!63236) (Cons!63236 (h!69684 C!31644) (t!376678 List!63360)) )
))
(declare-fun s!2326 () List!63360)

(get-info :version)

(assert (=> b!5693914 (= res!2404552 (or (and ((_ is ElementMatch!15687) (regOne!31886 r!7292)) (= (c!1002439 (regOne!31886 r!7292)) (h!69684 s!2326))) ((_ is Union!15687) (regOne!31886 r!7292))))))

(declare-datatypes ((Unit!156280 0))(
  ( (Unit!156281) )
))
(declare-fun lt!2271978 () Unit!156280)

(declare-fun e!3503205 () Unit!156280)

(assert (=> b!5693914 (= lt!2271978 e!3503205)))

(declare-fun c!1002438 () Bool)

(declare-datatypes ((List!63361 0))(
  ( (Nil!63237) (Cons!63237 (h!69685 Regex!15687) (t!376679 List!63361)) )
))
(declare-datatypes ((Context!10142 0))(
  ( (Context!10143 (exprs!5571 List!63361)) )
))
(declare-datatypes ((List!63362 0))(
  ( (Nil!63238) (Cons!63238 (h!69686 Context!10142) (t!376680 List!63362)) )
))
(declare-fun zl!343 () List!63362)

(declare-fun nullable!5719 (Regex!15687) Bool)

(assert (=> b!5693914 (= c!1002438 (nullable!5719 (h!69685 (exprs!5571 (h!69686 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10142))

(declare-fun lambda!306809 () Int)

(declare-fun flatMap!1300 ((InoxSet Context!10142) Int) (InoxSet Context!10142))

(declare-fun derivationStepZipperUp!955 (Context!10142 C!31644) (InoxSet Context!10142))

(assert (=> b!5693914 (= (flatMap!1300 z!1189 lambda!306809) (derivationStepZipperUp!955 (h!69686 zl!343) (h!69684 s!2326)))))

(declare-fun lt!2271977 () Unit!156280)

(declare-fun lemmaFlatMapOnSingletonSet!832 ((InoxSet Context!10142) Context!10142 Int) Unit!156280)

(assert (=> b!5693914 (= lt!2271977 (lemmaFlatMapOnSingletonSet!832 z!1189 (h!69686 zl!343) lambda!306809))))

(declare-fun lt!2271966 () (InoxSet Context!10142))

(declare-fun lt!2271951 () Context!10142)

(assert (=> b!5693914 (= lt!2271966 (derivationStepZipperUp!955 lt!2271951 (h!69684 s!2326)))))

(declare-fun lt!2271949 () (InoxSet Context!10142))

(declare-fun derivationStepZipperDown!1029 (Regex!15687 Context!10142 C!31644) (InoxSet Context!10142))

(assert (=> b!5693914 (= lt!2271949 (derivationStepZipperDown!1029 (h!69685 (exprs!5571 (h!69686 zl!343))) lt!2271951 (h!69684 s!2326)))))

(assert (=> b!5693914 (= lt!2271951 (Context!10143 (t!376679 (exprs!5571 (h!69686 zl!343)))))))

(declare-fun lt!2271958 () (InoxSet Context!10142))

(assert (=> b!5693914 (= lt!2271958 (derivationStepZipperUp!955 (Context!10143 (Cons!63237 (h!69685 (exprs!5571 (h!69686 zl!343))) (t!376679 (exprs!5571 (h!69686 zl!343))))) (h!69684 s!2326)))))

(declare-fun b!5693915 () Bool)

(declare-fun res!2404550 () Bool)

(declare-fun e!3503201 () Bool)

(assert (=> b!5693915 (=> res!2404550 e!3503201)))

(assert (=> b!5693915 (= res!2404550 (or ((_ is EmptyExpr!15687) r!7292) ((_ is EmptyLang!15687) r!7292) ((_ is ElementMatch!15687) r!7292) ((_ is Union!15687) r!7292) (not ((_ is Concat!24532) r!7292))))))

(declare-fun b!5693916 () Bool)

(declare-fun e!3503198 () Bool)

(declare-fun e!3503212 () Bool)

(assert (=> b!5693916 (= e!3503198 e!3503212)))

(declare-fun res!2404549 () Bool)

(assert (=> b!5693916 (=> res!2404549 e!3503212)))

(declare-fun lt!2271945 () Context!10142)

(declare-fun lt!2271965 () Regex!15687)

(declare-fun unfocusZipper!1429 (List!63362) Regex!15687)

(assert (=> b!5693916 (= res!2404549 (not (= (unfocusZipper!1429 (Cons!63238 lt!2271945 Nil!63238)) lt!2271965)))))

(declare-fun lt!2271975 () Regex!15687)

(assert (=> b!5693916 (= lt!2271965 (Concat!24532 (reg!16016 (regOne!31886 r!7292)) lt!2271975))))

(declare-fun b!5693917 () Bool)

(declare-fun res!2404547 () Bool)

(assert (=> b!5693917 (=> res!2404547 e!3503195)))

(declare-fun e!3503211 () Bool)

(assert (=> b!5693917 (= res!2404547 e!3503211)))

(declare-fun res!2404546 () Bool)

(assert (=> b!5693917 (=> (not res!2404546) (not e!3503211))))

(assert (=> b!5693917 (= res!2404546 ((_ is Concat!24532) (regOne!31886 r!7292)))))

(declare-fun b!5693918 () Bool)

(declare-fun e!3503203 () Bool)

(assert (=> b!5693918 (= e!3503212 e!3503203)))

(declare-fun res!2404535 () Bool)

(assert (=> b!5693918 (=> res!2404535 e!3503203)))

(declare-fun lt!2271963 () Context!10142)

(assert (=> b!5693918 (= res!2404535 (not (= (unfocusZipper!1429 (Cons!63238 lt!2271963 Nil!63238)) (reg!16016 (regOne!31886 r!7292)))))))

(declare-fun lt!2271964 () Context!10142)

(declare-fun lt!2271950 () (InoxSet Context!10142))

(assert (=> b!5693918 (= (flatMap!1300 lt!2271950 lambda!306809) (derivationStepZipperUp!955 lt!2271964 (h!69684 s!2326)))))

(declare-fun lt!2271944 () Unit!156280)

(assert (=> b!5693918 (= lt!2271944 (lemmaFlatMapOnSingletonSet!832 lt!2271950 lt!2271964 lambda!306809))))

(declare-fun lt!2271976 () (InoxSet Context!10142))

(assert (=> b!5693918 (= (flatMap!1300 lt!2271976 lambda!306809) (derivationStepZipperUp!955 lt!2271963 (h!69684 s!2326)))))

(declare-fun lt!2271974 () Unit!156280)

(assert (=> b!5693918 (= lt!2271974 (lemmaFlatMapOnSingletonSet!832 lt!2271976 lt!2271963 lambda!306809))))

(declare-fun lt!2271954 () (InoxSet Context!10142))

(assert (=> b!5693918 (= lt!2271954 (derivationStepZipperUp!955 lt!2271964 (h!69684 s!2326)))))

(declare-fun lt!2271957 () (InoxSet Context!10142))

(assert (=> b!5693918 (= lt!2271957 (derivationStepZipperUp!955 lt!2271963 (h!69684 s!2326)))))

(assert (=> b!5693918 (= lt!2271950 (store ((as const (Array Context!10142 Bool)) false) lt!2271964 true))))

(assert (=> b!5693918 (= lt!2271976 (store ((as const (Array Context!10142 Bool)) false) lt!2271963 true))))

(assert (=> b!5693918 (= lt!2271963 (Context!10143 (Cons!63237 (reg!16016 (regOne!31886 r!7292)) Nil!63237)))))

(declare-fun b!5693919 () Bool)

(declare-fun Unit!156282 () Unit!156280)

(assert (=> b!5693919 (= e!3503205 Unit!156282)))

(declare-fun b!5693920 () Bool)

(declare-fun e!3503200 () Bool)

(declare-fun matchZipper!1825 ((InoxSet Context!10142) List!63360) Bool)

(assert (=> b!5693920 (= e!3503200 (matchZipper!1825 lt!2271966 (t!376678 s!2326)))))

(declare-fun b!5693921 () Bool)

(declare-fun e!3503204 () Bool)

(declare-fun tp!1579768 () Bool)

(assert (=> b!5693921 (= e!3503204 tp!1579768)))

(declare-fun b!5693923 () Bool)

(declare-fun res!2404531 () Bool)

(assert (=> b!5693923 (=> res!2404531 e!3503201)))

(assert (=> b!5693923 (= res!2404531 (not ((_ is Cons!63237) (exprs!5571 (h!69686 zl!343)))))))

(declare-fun b!5693924 () Bool)

(declare-fun res!2404551 () Bool)

(assert (=> b!5693924 (=> res!2404551 e!3503203)))

(assert (=> b!5693924 (= res!2404551 (not (= (unfocusZipper!1429 (Cons!63238 lt!2271964 Nil!63238)) lt!2271975)))))

(declare-fun b!5693925 () Bool)

(declare-fun e!3503207 () Bool)

(declare-fun tp_is_empty!40627 () Bool)

(declare-fun tp!1579766 () Bool)

(assert (=> b!5693925 (= e!3503207 (and tp_is_empty!40627 tp!1579766))))

(declare-fun e!3503199 () Bool)

(declare-fun e!3503210 () Bool)

(declare-fun b!5693926 () Bool)

(declare-fun tp!1579765 () Bool)

(declare-fun inv!82464 (Context!10142) Bool)

(assert (=> b!5693926 (= e!3503199 (and (inv!82464 (h!69686 zl!343)) e!3503210 tp!1579765))))

(declare-fun e!3503209 () Bool)

(declare-datatypes ((tuple2!65568 0))(
  ( (tuple2!65569 (_1!36087 List!63360) (_2!36087 List!63360)) )
))
(declare-fun lt!2271947 () tuple2!65568)

(declare-fun ++!13879 (List!63360 List!63360) List!63360)

(assert (=> b!5693927 (= e!3503209 (= (++!13879 (_1!36087 lt!2271947) (_2!36087 lt!2271947)) s!2326))))

(declare-datatypes ((Option!15696 0))(
  ( (None!15695) (Some!15695 (v!51748 tuple2!65568)) )
))
(declare-fun lt!2271967 () Option!15696)

(declare-fun get!21790 (Option!15696) tuple2!65568)

(assert (=> b!5693927 (= lt!2271947 (get!21790 lt!2271967))))

(declare-fun Exists!2787 (Int) Bool)

(assert (=> b!5693927 (= (Exists!2787 lambda!306810) (Exists!2787 lambda!306811))))

(declare-fun lt!2271946 () Unit!156280)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1416 (Regex!15687 Regex!15687 List!63360) Unit!156280)

(assert (=> b!5693927 (= lt!2271946 (lemmaExistCutMatchRandMatchRSpecEquivalent!1416 lt!2271972 (regTwo!31886 r!7292) s!2326))))

(declare-fun isDefined!12399 (Option!15696) Bool)

(assert (=> b!5693927 (= (isDefined!12399 lt!2271967) (Exists!2787 lambda!306810))))

(declare-fun findConcatSeparation!2110 (Regex!15687 Regex!15687 List!63360 List!63360 List!63360) Option!15696)

(assert (=> b!5693927 (= lt!2271967 (findConcatSeparation!2110 lt!2271972 (regTwo!31886 r!7292) Nil!63236 s!2326 s!2326))))

(declare-fun lt!2271953 () Unit!156280)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1874 (Regex!15687 Regex!15687 List!63360) Unit!156280)

(assert (=> b!5693927 (= lt!2271953 (lemmaFindConcatSeparationEquivalentToExists!1874 lt!2271972 (regTwo!31886 r!7292) s!2326))))

(declare-fun b!5693928 () Bool)

(declare-fun res!2404545 () Bool)

(assert (=> b!5693928 (=> res!2404545 e!3503201)))

(declare-fun generalisedConcat!1302 (List!63361) Regex!15687)

(assert (=> b!5693928 (= res!2404545 (not (= r!7292 (generalisedConcat!1302 (exprs!5571 (h!69686 zl!343))))))))

(declare-fun b!5693929 () Bool)

(assert (=> b!5693929 (= e!3503204 tp_is_empty!40627)))

(declare-fun b!5693930 () Bool)

(declare-fun res!2404533 () Bool)

(assert (=> b!5693930 (=> res!2404533 e!3503193)))

(declare-fun isEmpty!35089 (List!63361) Bool)

(assert (=> b!5693930 (= res!2404533 (isEmpty!35089 (t!376679 (exprs!5571 (h!69686 zl!343)))))))

(declare-fun b!5693931 () Bool)

(declare-fun Unit!156283 () Unit!156280)

(assert (=> b!5693931 (= e!3503205 Unit!156283)))

(declare-fun lt!2271980 () Unit!156280)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!712 ((InoxSet Context!10142) (InoxSet Context!10142) List!63360) Unit!156280)

(assert (=> b!5693931 (= lt!2271980 (lemmaZipperConcatMatchesSameAsBothZippers!712 lt!2271949 lt!2271966 (t!376678 s!2326)))))

(declare-fun res!2404530 () Bool)

(assert (=> b!5693931 (= res!2404530 (matchZipper!1825 lt!2271949 (t!376678 s!2326)))))

(assert (=> b!5693931 (=> res!2404530 e!3503200)))

(assert (=> b!5693931 (= (matchZipper!1825 ((_ map or) lt!2271949 lt!2271966) (t!376678 s!2326)) e!3503200)))

(declare-fun b!5693932 () Bool)

(declare-fun e!3503194 () Bool)

(assert (=> b!5693932 (= e!3503194 e!3503198)))

(declare-fun res!2404536 () Bool)

(assert (=> b!5693932 (=> res!2404536 e!3503198)))

(assert (=> b!5693932 (= res!2404536 (not (= r!7292 lt!2271975)))))

(assert (=> b!5693932 (= lt!2271975 (Concat!24532 lt!2271972 (regTwo!31886 r!7292)))))

(declare-fun b!5693933 () Bool)

(assert (=> b!5693933 (= e!3503211 (nullable!5719 (regOne!31886 (regOne!31886 r!7292))))))

(declare-fun b!5693934 () Bool)

(declare-fun e!3503208 () Bool)

(assert (=> b!5693934 (= e!3503208 e!3503194)))

(declare-fun res!2404542 () Bool)

(assert (=> b!5693934 (=> res!2404542 e!3503194)))

(declare-fun lt!2271960 () (InoxSet Context!10142))

(declare-fun lt!2271961 () (InoxSet Context!10142))

(assert (=> b!5693934 (= res!2404542 (not (= lt!2271960 lt!2271961)))))

(declare-fun lt!2271973 () (InoxSet Context!10142))

(assert (=> b!5693934 (= (flatMap!1300 lt!2271973 lambda!306809) (derivationStepZipperUp!955 lt!2271945 (h!69684 s!2326)))))

(declare-fun lt!2271948 () Unit!156280)

(assert (=> b!5693934 (= lt!2271948 (lemmaFlatMapOnSingletonSet!832 lt!2271973 lt!2271945 lambda!306809))))

(declare-fun lt!2271959 () (InoxSet Context!10142))

(assert (=> b!5693934 (= lt!2271959 (derivationStepZipperUp!955 lt!2271945 (h!69684 s!2326)))))

(declare-fun derivationStepZipper!1770 ((InoxSet Context!10142) C!31644) (InoxSet Context!10142))

(assert (=> b!5693934 (= lt!2271960 (derivationStepZipper!1770 lt!2271973 (h!69684 s!2326)))))

(assert (=> b!5693934 (= lt!2271973 (store ((as const (Array Context!10142 Bool)) false) lt!2271945 true))))

(declare-fun lt!2271956 () List!63361)

(assert (=> b!5693934 (= lt!2271945 (Context!10143 (Cons!63237 (reg!16016 (regOne!31886 r!7292)) lt!2271956)))))

(declare-fun b!5693935 () Bool)

(declare-fun tp!1579770 () Bool)

(declare-fun tp!1579767 () Bool)

(assert (=> b!5693935 (= e!3503204 (and tp!1579770 tp!1579767))))

(declare-fun b!5693936 () Bool)

(declare-fun res!2404529 () Bool)

(assert (=> b!5693936 (=> res!2404529 e!3503195)))

(assert (=> b!5693936 (= res!2404529 (or ((_ is Concat!24532) (regOne!31886 r!7292)) (not ((_ is Star!15687) (regOne!31886 r!7292)))))))

(declare-fun b!5693922 () Bool)

(declare-fun e!3503197 () Bool)

(declare-fun lt!2271971 () Bool)

(declare-fun lt!2271955 () Bool)

(assert (=> b!5693922 (= e!3503197 (or (not lt!2271971) lt!2271955))))

(declare-fun res!2404539 () Bool)

(declare-fun e!3503206 () Bool)

(assert (=> start!587140 (=> (not res!2404539) (not e!3503206))))

(declare-fun validRegex!7423 (Regex!15687) Bool)

(assert (=> start!587140 (= res!2404539 (validRegex!7423 r!7292))))

(assert (=> start!587140 e!3503206))

(assert (=> start!587140 e!3503204))

(declare-fun condSetEmpty!38115 () Bool)

(assert (=> start!587140 (= condSetEmpty!38115 (= z!1189 ((as const (Array Context!10142 Bool)) false)))))

(declare-fun setRes!38115 () Bool)

(assert (=> start!587140 setRes!38115))

(assert (=> start!587140 e!3503199))

(assert (=> start!587140 e!3503207))

(declare-fun b!5693937 () Bool)

(assert (=> b!5693937 (= e!3503203 e!3503209)))

(declare-fun res!2404548 () Bool)

(assert (=> b!5693937 (=> res!2404548 e!3503209)))

(assert (=> b!5693937 (= res!2404548 (not lt!2271971))))

(assert (=> b!5693937 e!3503197))

(declare-fun res!2404537 () Bool)

(assert (=> b!5693937 (=> (not res!2404537) (not e!3503197))))

(declare-fun matchR!7872 (Regex!15687 List!63360) Bool)

(declare-fun matchRSpec!2790 (Regex!15687 List!63360) Bool)

(assert (=> b!5693937 (= res!2404537 (= (matchR!7872 lt!2271965 s!2326) (matchRSpec!2790 lt!2271965 s!2326)))))

(declare-fun lt!2271968 () Unit!156280)

(declare-fun mainMatchTheorem!2790 (Regex!15687 List!63360) Unit!156280)

(assert (=> b!5693937 (= lt!2271968 (mainMatchTheorem!2790 lt!2271965 s!2326))))

(declare-fun b!5693938 () Bool)

(declare-fun e!3503202 () Bool)

(assert (=> b!5693938 (= e!3503206 e!3503202)))

(declare-fun res!2404540 () Bool)

(assert (=> b!5693938 (=> (not res!2404540) (not e!3503202))))

(declare-fun lt!2271952 () Regex!15687)

(assert (=> b!5693938 (= res!2404540 (= r!7292 lt!2271952))))

(assert (=> b!5693938 (= lt!2271952 (unfocusZipper!1429 zl!343))))

(declare-fun b!5693939 () Bool)

(declare-fun res!2404544 () Bool)

(assert (=> b!5693939 (=> res!2404544 e!3503194)))

(assert (=> b!5693939 (= res!2404544 (not (= (matchZipper!1825 lt!2271973 s!2326) (matchZipper!1825 lt!2271960 (t!376678 s!2326)))))))

(declare-fun b!5693940 () Bool)

(declare-fun tp!1579771 () Bool)

(assert (=> b!5693940 (= e!3503210 tp!1579771)))

(declare-fun b!5693941 () Bool)

(declare-fun res!2404543 () Bool)

(assert (=> b!5693941 (=> res!2404543 e!3503201)))

(declare-fun isEmpty!35090 (List!63362) Bool)

(assert (=> b!5693941 (= res!2404543 (not (isEmpty!35090 (t!376680 zl!343))))))

(declare-fun b!5693942 () Bool)

(declare-fun res!2404528 () Bool)

(assert (=> b!5693942 (=> res!2404528 e!3503194)))

(assert (=> b!5693942 (= res!2404528 (not (= lt!2271952 r!7292)))))

(declare-fun tp!1579772 () Bool)

(declare-fun setNonEmpty!38115 () Bool)

(declare-fun e!3503196 () Bool)

(declare-fun setElem!38115 () Context!10142)

(assert (=> setNonEmpty!38115 (= setRes!38115 (and tp!1579772 (inv!82464 setElem!38115) e!3503196))))

(declare-fun setRest!38115 () (InoxSet Context!10142))

(assert (=> setNonEmpty!38115 (= z!1189 ((_ map or) (store ((as const (Array Context!10142 Bool)) false) setElem!38115 true) setRest!38115))))

(declare-fun b!5693943 () Bool)

(declare-fun tp!1579773 () Bool)

(declare-fun tp!1579774 () Bool)

(assert (=> b!5693943 (= e!3503204 (and tp!1579773 tp!1579774))))

(declare-fun b!5693944 () Bool)

(declare-fun res!2404541 () Bool)

(assert (=> b!5693944 (=> res!2404541 e!3503201)))

(declare-fun generalisedUnion!1550 (List!63361) Regex!15687)

(declare-fun unfocusZipperList!1115 (List!63362) List!63361)

(assert (=> b!5693944 (= res!2404541 (not (= r!7292 (generalisedUnion!1550 (unfocusZipperList!1115 zl!343)))))))

(declare-fun setIsEmpty!38115 () Bool)

(assert (=> setIsEmpty!38115 setRes!38115))

(declare-fun b!5693945 () Bool)

(assert (=> b!5693945 (= e!3503202 (not e!3503201))))

(declare-fun res!2404534 () Bool)

(assert (=> b!5693945 (=> res!2404534 e!3503201)))

(assert (=> b!5693945 (= res!2404534 (not ((_ is Cons!63238) zl!343)))))

(assert (=> b!5693945 (= lt!2271971 lt!2271955)))

(assert (=> b!5693945 (= lt!2271955 (matchRSpec!2790 r!7292 s!2326))))

(assert (=> b!5693945 (= lt!2271971 (matchR!7872 r!7292 s!2326))))

(declare-fun lt!2271962 () Unit!156280)

(assert (=> b!5693945 (= lt!2271962 (mainMatchTheorem!2790 r!7292 s!2326))))

(declare-fun b!5693946 () Bool)

(declare-fun tp!1579769 () Bool)

(assert (=> b!5693946 (= e!3503196 tp!1579769)))

(assert (=> b!5693947 (= e!3503201 e!3503193)))

(declare-fun res!2404553 () Bool)

(assert (=> b!5693947 (=> res!2404553 e!3503193)))

(declare-fun lt!2271979 () Bool)

(assert (=> b!5693947 (= res!2404553 (or (not (= lt!2271971 lt!2271979)) ((_ is Nil!63236) s!2326)))))

(assert (=> b!5693947 (= (Exists!2787 lambda!306807) (Exists!2787 lambda!306808))))

(declare-fun lt!2271969 () Unit!156280)

(assert (=> b!5693947 (= lt!2271969 (lemmaExistCutMatchRandMatchRSpecEquivalent!1416 (regOne!31886 r!7292) (regTwo!31886 r!7292) s!2326))))

(assert (=> b!5693947 (= lt!2271979 (Exists!2787 lambda!306807))))

(assert (=> b!5693947 (= lt!2271979 (isDefined!12399 (findConcatSeparation!2110 (regOne!31886 r!7292) (regTwo!31886 r!7292) Nil!63236 s!2326 s!2326)))))

(declare-fun lt!2271970 () Unit!156280)

(assert (=> b!5693947 (= lt!2271970 (lemmaFindConcatSeparationEquivalentToExists!1874 (regOne!31886 r!7292) (regTwo!31886 r!7292) s!2326))))

(declare-fun b!5693948 () Bool)

(assert (=> b!5693948 (= e!3503195 e!3503208)))

(declare-fun res!2404538 () Bool)

(assert (=> b!5693948 (=> res!2404538 e!3503208)))

(assert (=> b!5693948 (= res!2404538 (not (= lt!2271949 lt!2271961)))))

(assert (=> b!5693948 (= lt!2271961 (derivationStepZipperDown!1029 (reg!16016 (regOne!31886 r!7292)) lt!2271964 (h!69684 s!2326)))))

(assert (=> b!5693948 (= lt!2271964 (Context!10143 lt!2271956))))

(assert (=> b!5693948 (= lt!2271956 (Cons!63237 lt!2271972 (t!376679 (exprs!5571 (h!69686 zl!343)))))))

(assert (=> b!5693948 (= lt!2271972 (Star!15687 (reg!16016 (regOne!31886 r!7292))))))

(declare-fun b!5693949 () Bool)

(declare-fun res!2404532 () Bool)

(assert (=> b!5693949 (=> (not res!2404532) (not e!3503206))))

(declare-fun toList!9471 ((InoxSet Context!10142)) List!63362)

(assert (=> b!5693949 (= res!2404532 (= (toList!9471 z!1189) zl!343))))

(assert (= (and start!587140 res!2404539) b!5693949))

(assert (= (and b!5693949 res!2404532) b!5693938))

(assert (= (and b!5693938 res!2404540) b!5693945))

(assert (= (and b!5693945 (not res!2404534)) b!5693941))

(assert (= (and b!5693941 (not res!2404543)) b!5693928))

(assert (= (and b!5693928 (not res!2404545)) b!5693923))

(assert (= (and b!5693923 (not res!2404531)) b!5693944))

(assert (= (and b!5693944 (not res!2404541)) b!5693915))

(assert (= (and b!5693915 (not res!2404550)) b!5693947))

(assert (= (and b!5693947 (not res!2404553)) b!5693930))

(assert (= (and b!5693930 (not res!2404533)) b!5693914))

(assert (= (and b!5693914 c!1002438) b!5693931))

(assert (= (and b!5693914 (not c!1002438)) b!5693919))

(assert (= (and b!5693931 (not res!2404530)) b!5693920))

(assert (= (and b!5693914 (not res!2404552)) b!5693917))

(assert (= (and b!5693917 res!2404546) b!5693933))

(assert (= (and b!5693917 (not res!2404547)) b!5693936))

(assert (= (and b!5693936 (not res!2404529)) b!5693948))

(assert (= (and b!5693948 (not res!2404538)) b!5693934))

(assert (= (and b!5693934 (not res!2404542)) b!5693939))

(assert (= (and b!5693939 (not res!2404544)) b!5693942))

(assert (= (and b!5693942 (not res!2404528)) b!5693932))

(assert (= (and b!5693932 (not res!2404536)) b!5693916))

(assert (= (and b!5693916 (not res!2404549)) b!5693918))

(assert (= (and b!5693918 (not res!2404535)) b!5693924))

(assert (= (and b!5693924 (not res!2404551)) b!5693937))

(assert (= (and b!5693937 res!2404537) b!5693922))

(assert (= (and b!5693937 (not res!2404548)) b!5693927))

(assert (= (and start!587140 ((_ is ElementMatch!15687) r!7292)) b!5693929))

(assert (= (and start!587140 ((_ is Concat!24532) r!7292)) b!5693943))

(assert (= (and start!587140 ((_ is Star!15687) r!7292)) b!5693921))

(assert (= (and start!587140 ((_ is Union!15687) r!7292)) b!5693935))

(assert (= (and start!587140 condSetEmpty!38115) setIsEmpty!38115))

(assert (= (and start!587140 (not condSetEmpty!38115)) setNonEmpty!38115))

(assert (= setNonEmpty!38115 b!5693946))

(assert (= b!5693926 b!5693940))

(assert (= (and start!587140 ((_ is Cons!63238) zl!343)) b!5693926))

(assert (= (and start!587140 ((_ is Cons!63236) s!2326)) b!5693925))

(declare-fun m!6650312 () Bool)

(assert (=> b!5693931 m!6650312))

(declare-fun m!6650314 () Bool)

(assert (=> b!5693931 m!6650314))

(declare-fun m!6650316 () Bool)

(assert (=> b!5693931 m!6650316))

(declare-fun m!6650318 () Bool)

(assert (=> b!5693920 m!6650318))

(declare-fun m!6650320 () Bool)

(assert (=> b!5693939 m!6650320))

(declare-fun m!6650322 () Bool)

(assert (=> b!5693939 m!6650322))

(declare-fun m!6650324 () Bool)

(assert (=> b!5693924 m!6650324))

(declare-fun m!6650326 () Bool)

(assert (=> b!5693949 m!6650326))

(declare-fun m!6650328 () Bool)

(assert (=> b!5693930 m!6650328))

(declare-fun m!6650330 () Bool)

(assert (=> b!5693926 m!6650330))

(declare-fun m!6650332 () Bool)

(assert (=> b!5693934 m!6650332))

(declare-fun m!6650334 () Bool)

(assert (=> b!5693934 m!6650334))

(declare-fun m!6650336 () Bool)

(assert (=> b!5693934 m!6650336))

(declare-fun m!6650338 () Bool)

(assert (=> b!5693934 m!6650338))

(declare-fun m!6650340 () Bool)

(assert (=> b!5693934 m!6650340))

(declare-fun m!6650342 () Bool)

(assert (=> b!5693948 m!6650342))

(declare-fun m!6650344 () Bool)

(assert (=> b!5693928 m!6650344))

(declare-fun m!6650346 () Bool)

(assert (=> b!5693937 m!6650346))

(declare-fun m!6650348 () Bool)

(assert (=> b!5693937 m!6650348))

(declare-fun m!6650350 () Bool)

(assert (=> b!5693937 m!6650350))

(declare-fun m!6650352 () Bool)

(assert (=> b!5693914 m!6650352))

(declare-fun m!6650354 () Bool)

(assert (=> b!5693914 m!6650354))

(declare-fun m!6650356 () Bool)

(assert (=> b!5693914 m!6650356))

(declare-fun m!6650358 () Bool)

(assert (=> b!5693914 m!6650358))

(declare-fun m!6650360 () Bool)

(assert (=> b!5693914 m!6650360))

(declare-fun m!6650362 () Bool)

(assert (=> b!5693914 m!6650362))

(declare-fun m!6650364 () Bool)

(assert (=> b!5693914 m!6650364))

(declare-fun m!6650366 () Bool)

(assert (=> b!5693916 m!6650366))

(declare-fun m!6650368 () Bool)

(assert (=> b!5693918 m!6650368))

(declare-fun m!6650370 () Bool)

(assert (=> b!5693918 m!6650370))

(declare-fun m!6650372 () Bool)

(assert (=> b!5693918 m!6650372))

(declare-fun m!6650374 () Bool)

(assert (=> b!5693918 m!6650374))

(declare-fun m!6650376 () Bool)

(assert (=> b!5693918 m!6650376))

(declare-fun m!6650378 () Bool)

(assert (=> b!5693918 m!6650378))

(declare-fun m!6650380 () Bool)

(assert (=> b!5693918 m!6650380))

(declare-fun m!6650382 () Bool)

(assert (=> b!5693918 m!6650382))

(declare-fun m!6650384 () Bool)

(assert (=> b!5693918 m!6650384))

(declare-fun m!6650386 () Bool)

(assert (=> b!5693938 m!6650386))

(declare-fun m!6650388 () Bool)

(assert (=> setNonEmpty!38115 m!6650388))

(declare-fun m!6650390 () Bool)

(assert (=> b!5693941 m!6650390))

(declare-fun m!6650392 () Bool)

(assert (=> b!5693933 m!6650392))

(declare-fun m!6650394 () Bool)

(assert (=> b!5693927 m!6650394))

(declare-fun m!6650396 () Bool)

(assert (=> b!5693927 m!6650396))

(declare-fun m!6650398 () Bool)

(assert (=> b!5693927 m!6650398))

(declare-fun m!6650400 () Bool)

(assert (=> b!5693927 m!6650400))

(assert (=> b!5693927 m!6650400))

(declare-fun m!6650402 () Bool)

(assert (=> b!5693927 m!6650402))

(declare-fun m!6650404 () Bool)

(assert (=> b!5693927 m!6650404))

(declare-fun m!6650406 () Bool)

(assert (=> b!5693927 m!6650406))

(declare-fun m!6650408 () Bool)

(assert (=> b!5693927 m!6650408))

(declare-fun m!6650410 () Bool)

(assert (=> b!5693947 m!6650410))

(declare-fun m!6650412 () Bool)

(assert (=> b!5693947 m!6650412))

(declare-fun m!6650414 () Bool)

(assert (=> b!5693947 m!6650414))

(declare-fun m!6650416 () Bool)

(assert (=> b!5693947 m!6650416))

(assert (=> b!5693947 m!6650414))

(declare-fun m!6650418 () Bool)

(assert (=> b!5693947 m!6650418))

(assert (=> b!5693947 m!6650410))

(declare-fun m!6650420 () Bool)

(assert (=> b!5693947 m!6650420))

(declare-fun m!6650422 () Bool)

(assert (=> start!587140 m!6650422))

(declare-fun m!6650424 () Bool)

(assert (=> b!5693945 m!6650424))

(declare-fun m!6650426 () Bool)

(assert (=> b!5693945 m!6650426))

(declare-fun m!6650428 () Bool)

(assert (=> b!5693945 m!6650428))

(declare-fun m!6650430 () Bool)

(assert (=> b!5693944 m!6650430))

(assert (=> b!5693944 m!6650430))

(declare-fun m!6650432 () Bool)

(assert (=> b!5693944 m!6650432))

(check-sat (not b!5693928) (not b!5693920) (not b!5693938) (not b!5693934) (not b!5693933) (not b!5693935) (not b!5693927) (not b!5693914) (not b!5693916) (not b!5693924) (not b!5693947) (not start!587140) (not b!5693921) (not b!5693939) (not b!5693949) (not b!5693941) tp_is_empty!40627 (not setNonEmpty!38115) (not b!5693930) (not b!5693926) (not b!5693943) (not b!5693944) (not b!5693948) (not b!5693937) (not b!5693946) (not b!5693931) (not b!5693925) (not b!5693918) (not b!5693940) (not b!5693945))
(check-sat)
(get-model)

(declare-fun b!5694309 () Bool)

(declare-fun e!3503420 () (InoxSet Context!10142))

(declare-fun call!433370 () (InoxSet Context!10142))

(assert (=> b!5694309 (= e!3503420 call!433370)))

(declare-fun d!1796977 () Bool)

(declare-fun c!1002554 () Bool)

(assert (=> d!1796977 (= c!1002554 (and ((_ is ElementMatch!15687) (reg!16016 (regOne!31886 r!7292))) (= (c!1002439 (reg!16016 (regOne!31886 r!7292))) (h!69684 s!2326))))))

(declare-fun e!3503419 () (InoxSet Context!10142))

(assert (=> d!1796977 (= (derivationStepZipperDown!1029 (reg!16016 (regOne!31886 r!7292)) lt!2271964 (h!69684 s!2326)) e!3503419)))

(declare-fun b!5694310 () Bool)

(declare-fun c!1002552 () Bool)

(declare-fun e!3503417 () Bool)

(assert (=> b!5694310 (= c!1002552 e!3503417)))

(declare-fun res!2404689 () Bool)

(assert (=> b!5694310 (=> (not res!2404689) (not e!3503417))))

(assert (=> b!5694310 (= res!2404689 ((_ is Concat!24532) (reg!16016 (regOne!31886 r!7292))))))

(declare-fun e!3503422 () (InoxSet Context!10142))

(declare-fun e!3503421 () (InoxSet Context!10142))

(assert (=> b!5694310 (= e!3503422 e!3503421)))

(declare-fun b!5694311 () Bool)

(assert (=> b!5694311 (= e!3503419 e!3503422)))

(declare-fun c!1002551 () Bool)

(assert (=> b!5694311 (= c!1002551 ((_ is Union!15687) (reg!16016 (regOne!31886 r!7292))))))

(declare-fun bm!433362 () Bool)

(declare-fun c!1002550 () Bool)

(declare-fun call!433371 () List!63361)

(declare-fun $colon$colon!1712 (List!63361 Regex!15687) List!63361)

(assert (=> bm!433362 (= call!433371 ($colon$colon!1712 (exprs!5571 lt!2271964) (ite (or c!1002552 c!1002550) (regTwo!31886 (reg!16016 (regOne!31886 r!7292))) (reg!16016 (regOne!31886 r!7292)))))))

(declare-fun b!5694312 () Bool)

(assert (=> b!5694312 (= e!3503419 (store ((as const (Array Context!10142 Bool)) false) lt!2271964 true))))

(declare-fun bm!433363 () Bool)

(declare-fun call!433369 () (InoxSet Context!10142))

(declare-fun call!433367 () (InoxSet Context!10142))

(assert (=> bm!433363 (= call!433369 call!433367)))

(declare-fun b!5694313 () Bool)

(assert (=> b!5694313 (= e!3503417 (nullable!5719 (regOne!31886 (reg!16016 (regOne!31886 r!7292)))))))

(declare-fun b!5694314 () Bool)

(declare-fun c!1002553 () Bool)

(assert (=> b!5694314 (= c!1002553 ((_ is Star!15687) (reg!16016 (regOne!31886 r!7292))))))

(declare-fun e!3503418 () (InoxSet Context!10142))

(assert (=> b!5694314 (= e!3503420 e!3503418)))

(declare-fun b!5694315 () Bool)

(declare-fun call!433368 () (InoxSet Context!10142))

(assert (=> b!5694315 (= e!3503421 ((_ map or) call!433368 call!433369))))

(declare-fun bm!433364 () Bool)

(declare-fun call!433372 () List!63361)

(assert (=> bm!433364 (= call!433372 call!433371)))

(declare-fun bm!433365 () Bool)

(assert (=> bm!433365 (= call!433367 (derivationStepZipperDown!1029 (ite c!1002551 (regTwo!31887 (reg!16016 (regOne!31886 r!7292))) (ite c!1002552 (regTwo!31886 (reg!16016 (regOne!31886 r!7292))) (ite c!1002550 (regOne!31886 (reg!16016 (regOne!31886 r!7292))) (reg!16016 (reg!16016 (regOne!31886 r!7292)))))) (ite (or c!1002551 c!1002552) lt!2271964 (Context!10143 call!433372)) (h!69684 s!2326)))))

(declare-fun b!5694316 () Bool)

(assert (=> b!5694316 (= e!3503422 ((_ map or) call!433368 call!433367))))

(declare-fun b!5694317 () Bool)

(assert (=> b!5694317 (= e!3503418 call!433370)))

(declare-fun bm!433366 () Bool)

(assert (=> bm!433366 (= call!433370 call!433369)))

(declare-fun bm!433367 () Bool)

(assert (=> bm!433367 (= call!433368 (derivationStepZipperDown!1029 (ite c!1002551 (regOne!31887 (reg!16016 (regOne!31886 r!7292))) (regOne!31886 (reg!16016 (regOne!31886 r!7292)))) (ite c!1002551 lt!2271964 (Context!10143 call!433371)) (h!69684 s!2326)))))

(declare-fun b!5694318 () Bool)

(assert (=> b!5694318 (= e!3503418 ((as const (Array Context!10142 Bool)) false))))

(declare-fun b!5694319 () Bool)

(assert (=> b!5694319 (= e!3503421 e!3503420)))

(assert (=> b!5694319 (= c!1002550 ((_ is Concat!24532) (reg!16016 (regOne!31886 r!7292))))))

(assert (= (and d!1796977 c!1002554) b!5694312))

(assert (= (and d!1796977 (not c!1002554)) b!5694311))

(assert (= (and b!5694311 c!1002551) b!5694316))

(assert (= (and b!5694311 (not c!1002551)) b!5694310))

(assert (= (and b!5694310 res!2404689) b!5694313))

(assert (= (and b!5694310 c!1002552) b!5694315))

(assert (= (and b!5694310 (not c!1002552)) b!5694319))

(assert (= (and b!5694319 c!1002550) b!5694309))

(assert (= (and b!5694319 (not c!1002550)) b!5694314))

(assert (= (and b!5694314 c!1002553) b!5694317))

(assert (= (and b!5694314 (not c!1002553)) b!5694318))

(assert (= (or b!5694309 b!5694317) bm!433364))

(assert (= (or b!5694309 b!5694317) bm!433366))

(assert (= (or b!5694315 bm!433364) bm!433362))

(assert (= (or b!5694315 bm!433366) bm!433363))

(assert (= (or b!5694316 bm!433363) bm!433365))

(assert (= (or b!5694316 b!5694315) bm!433367))

(assert (=> b!5694312 m!6650384))

(declare-fun m!6650696 () Bool)

(assert (=> bm!433362 m!6650696))

(declare-fun m!6650698 () Bool)

(assert (=> b!5694313 m!6650698))

(declare-fun m!6650700 () Bool)

(assert (=> bm!433365 m!6650700))

(declare-fun m!6650702 () Bool)

(assert (=> bm!433367 m!6650702))

(assert (=> b!5693948 d!1796977))

(declare-fun d!1797001 () Bool)

(declare-fun c!1002574 () Bool)

(declare-fun isEmpty!35093 (List!63360) Bool)

(assert (=> d!1797001 (= c!1002574 (isEmpty!35093 s!2326))))

(declare-fun e!3503455 () Bool)

(assert (=> d!1797001 (= (matchZipper!1825 lt!2271973 s!2326) e!3503455)))

(declare-fun b!5694384 () Bool)

(declare-fun nullableZipper!1645 ((InoxSet Context!10142)) Bool)

(assert (=> b!5694384 (= e!3503455 (nullableZipper!1645 lt!2271973))))

(declare-fun b!5694385 () Bool)

(declare-fun head!12070 (List!63360) C!31644)

(declare-fun tail!11165 (List!63360) List!63360)

(assert (=> b!5694385 (= e!3503455 (matchZipper!1825 (derivationStepZipper!1770 lt!2271973 (head!12070 s!2326)) (tail!11165 s!2326)))))

(assert (= (and d!1797001 c!1002574) b!5694384))

(assert (= (and d!1797001 (not c!1002574)) b!5694385))

(declare-fun m!6650770 () Bool)

(assert (=> d!1797001 m!6650770))

(declare-fun m!6650772 () Bool)

(assert (=> b!5694384 m!6650772))

(declare-fun m!6650774 () Bool)

(assert (=> b!5694385 m!6650774))

(assert (=> b!5694385 m!6650774))

(declare-fun m!6650776 () Bool)

(assert (=> b!5694385 m!6650776))

(declare-fun m!6650778 () Bool)

(assert (=> b!5694385 m!6650778))

(assert (=> b!5694385 m!6650776))

(assert (=> b!5694385 m!6650778))

(declare-fun m!6650780 () Bool)

(assert (=> b!5694385 m!6650780))

(assert (=> b!5693939 d!1797001))

(declare-fun d!1797027 () Bool)

(declare-fun c!1002575 () Bool)

(assert (=> d!1797027 (= c!1002575 (isEmpty!35093 (t!376678 s!2326)))))

(declare-fun e!3503459 () Bool)

(assert (=> d!1797027 (= (matchZipper!1825 lt!2271960 (t!376678 s!2326)) e!3503459)))

(declare-fun b!5694394 () Bool)

(assert (=> b!5694394 (= e!3503459 (nullableZipper!1645 lt!2271960))))

(declare-fun b!5694395 () Bool)

(assert (=> b!5694395 (= e!3503459 (matchZipper!1825 (derivationStepZipper!1770 lt!2271960 (head!12070 (t!376678 s!2326))) (tail!11165 (t!376678 s!2326))))))

(assert (= (and d!1797027 c!1002575) b!5694394))

(assert (= (and d!1797027 (not c!1002575)) b!5694395))

(declare-fun m!6650784 () Bool)

(assert (=> d!1797027 m!6650784))

(declare-fun m!6650786 () Bool)

(assert (=> b!5694394 m!6650786))

(declare-fun m!6650788 () Bool)

(assert (=> b!5694395 m!6650788))

(assert (=> b!5694395 m!6650788))

(declare-fun m!6650790 () Bool)

(assert (=> b!5694395 m!6650790))

(declare-fun m!6650792 () Bool)

(assert (=> b!5694395 m!6650792))

(assert (=> b!5694395 m!6650790))

(assert (=> b!5694395 m!6650792))

(declare-fun m!6650794 () Bool)

(assert (=> b!5694395 m!6650794))

(assert (=> b!5693939 d!1797027))

(declare-fun d!1797029 () Bool)

(assert (=> d!1797029 (= (isEmpty!35089 (t!376679 (exprs!5571 (h!69686 zl!343)))) ((_ is Nil!63237) (t!376679 (exprs!5571 (h!69686 zl!343)))))))

(assert (=> b!5693930 d!1797029))

(declare-fun b!5694438 () Bool)

(declare-fun e!3503482 () Option!15696)

(declare-fun e!3503481 () Option!15696)

(assert (=> b!5694438 (= e!3503482 e!3503481)))

(declare-fun c!1002581 () Bool)

(assert (=> b!5694438 (= c!1002581 ((_ is Nil!63236) s!2326))))

(declare-fun b!5694439 () Bool)

(assert (=> b!5694439 (= e!3503482 (Some!15695 (tuple2!65569 Nil!63236 s!2326)))))

(declare-fun b!5694440 () Bool)

(declare-fun e!3503483 () Bool)

(declare-fun lt!2272047 () Option!15696)

(assert (=> b!5694440 (= e!3503483 (not (isDefined!12399 lt!2272047)))))

(declare-fun b!5694441 () Bool)

(declare-fun e!3503485 () Bool)

(assert (=> b!5694441 (= e!3503485 (= (++!13879 (_1!36087 (get!21790 lt!2272047)) (_2!36087 (get!21790 lt!2272047))) s!2326))))

(declare-fun d!1797031 () Bool)

(assert (=> d!1797031 e!3503483))

(declare-fun res!2404705 () Bool)

(assert (=> d!1797031 (=> res!2404705 e!3503483)))

(assert (=> d!1797031 (= res!2404705 e!3503485)))

(declare-fun res!2404707 () Bool)

(assert (=> d!1797031 (=> (not res!2404707) (not e!3503485))))

(assert (=> d!1797031 (= res!2404707 (isDefined!12399 lt!2272047))))

(assert (=> d!1797031 (= lt!2272047 e!3503482)))

(declare-fun c!1002580 () Bool)

(declare-fun e!3503484 () Bool)

(assert (=> d!1797031 (= c!1002580 e!3503484)))

(declare-fun res!2404708 () Bool)

(assert (=> d!1797031 (=> (not res!2404708) (not e!3503484))))

(assert (=> d!1797031 (= res!2404708 (matchR!7872 (regOne!31886 r!7292) Nil!63236))))

(assert (=> d!1797031 (validRegex!7423 (regOne!31886 r!7292))))

(assert (=> d!1797031 (= (findConcatSeparation!2110 (regOne!31886 r!7292) (regTwo!31886 r!7292) Nil!63236 s!2326 s!2326) lt!2272047)))

(declare-fun b!5694442 () Bool)

(assert (=> b!5694442 (= e!3503484 (matchR!7872 (regTwo!31886 r!7292) s!2326))))

(declare-fun b!5694443 () Bool)

(declare-fun lt!2272045 () Unit!156280)

(declare-fun lt!2272046 () Unit!156280)

(assert (=> b!5694443 (= lt!2272045 lt!2272046)))

(assert (=> b!5694443 (= (++!13879 (++!13879 Nil!63236 (Cons!63236 (h!69684 s!2326) Nil!63236)) (t!376678 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2048 (List!63360 C!31644 List!63360 List!63360) Unit!156280)

(assert (=> b!5694443 (= lt!2272046 (lemmaMoveElementToOtherListKeepsConcatEq!2048 Nil!63236 (h!69684 s!2326) (t!376678 s!2326) s!2326))))

(assert (=> b!5694443 (= e!3503481 (findConcatSeparation!2110 (regOne!31886 r!7292) (regTwo!31886 r!7292) (++!13879 Nil!63236 (Cons!63236 (h!69684 s!2326) Nil!63236)) (t!376678 s!2326) s!2326))))

(declare-fun b!5694444 () Bool)

(declare-fun res!2404706 () Bool)

(assert (=> b!5694444 (=> (not res!2404706) (not e!3503485))))

(assert (=> b!5694444 (= res!2404706 (matchR!7872 (regOne!31886 r!7292) (_1!36087 (get!21790 lt!2272047))))))

(declare-fun b!5694445 () Bool)

(assert (=> b!5694445 (= e!3503481 None!15695)))

(declare-fun b!5694446 () Bool)

(declare-fun res!2404704 () Bool)

(assert (=> b!5694446 (=> (not res!2404704) (not e!3503485))))

(assert (=> b!5694446 (= res!2404704 (matchR!7872 (regTwo!31886 r!7292) (_2!36087 (get!21790 lt!2272047))))))

(assert (= (and d!1797031 res!2404708) b!5694442))

(assert (= (and d!1797031 c!1002580) b!5694439))

(assert (= (and d!1797031 (not c!1002580)) b!5694438))

(assert (= (and b!5694438 c!1002581) b!5694445))

(assert (= (and b!5694438 (not c!1002581)) b!5694443))

(assert (= (and d!1797031 res!2404707) b!5694444))

(assert (= (and b!5694444 res!2404706) b!5694446))

(assert (= (and b!5694446 res!2404704) b!5694441))

(assert (= (and d!1797031 (not res!2404705)) b!5694440))

(declare-fun m!6650796 () Bool)

(assert (=> b!5694443 m!6650796))

(assert (=> b!5694443 m!6650796))

(declare-fun m!6650798 () Bool)

(assert (=> b!5694443 m!6650798))

(declare-fun m!6650800 () Bool)

(assert (=> b!5694443 m!6650800))

(assert (=> b!5694443 m!6650796))

(declare-fun m!6650802 () Bool)

(assert (=> b!5694443 m!6650802))

(declare-fun m!6650804 () Bool)

(assert (=> b!5694442 m!6650804))

(declare-fun m!6650806 () Bool)

(assert (=> d!1797031 m!6650806))

(declare-fun m!6650808 () Bool)

(assert (=> d!1797031 m!6650808))

(declare-fun m!6650810 () Bool)

(assert (=> d!1797031 m!6650810))

(declare-fun m!6650812 () Bool)

(assert (=> b!5694446 m!6650812))

(declare-fun m!6650814 () Bool)

(assert (=> b!5694446 m!6650814))

(assert (=> b!5694444 m!6650812))

(declare-fun m!6650816 () Bool)

(assert (=> b!5694444 m!6650816))

(assert (=> b!5694440 m!6650806))

(assert (=> b!5694441 m!6650812))

(declare-fun m!6650818 () Bool)

(assert (=> b!5694441 m!6650818))

(assert (=> b!5693947 d!1797031))

(declare-fun d!1797041 () Bool)

(declare-fun choose!43046 (Int) Bool)

(assert (=> d!1797041 (= (Exists!2787 lambda!306807) (choose!43046 lambda!306807))))

(declare-fun bs!1327507 () Bool)

(assert (= bs!1327507 d!1797041))

(declare-fun m!6650820 () Bool)

(assert (=> bs!1327507 m!6650820))

(assert (=> b!5693947 d!1797041))

(declare-fun d!1797043 () Bool)

(assert (=> d!1797043 (= (Exists!2787 lambda!306808) (choose!43046 lambda!306808))))

(declare-fun bs!1327508 () Bool)

(assert (= bs!1327508 d!1797043))

(declare-fun m!6650822 () Bool)

(assert (=> bs!1327508 m!6650822))

(assert (=> b!5693947 d!1797043))

(declare-fun bs!1327509 () Bool)

(declare-fun d!1797045 () Bool)

(assert (= bs!1327509 (and d!1797045 b!5693947)))

(declare-fun lambda!306850 () Int)

(assert (=> bs!1327509 (= lambda!306850 lambda!306807)))

(assert (=> bs!1327509 (not (= lambda!306850 lambda!306808))))

(declare-fun bs!1327510 () Bool)

(assert (= bs!1327510 (and d!1797045 b!5693927)))

(assert (=> bs!1327510 (= (= (regOne!31886 r!7292) lt!2271972) (= lambda!306850 lambda!306810))))

(assert (=> bs!1327510 (not (= lambda!306850 lambda!306811))))

(assert (=> d!1797045 true))

(assert (=> d!1797045 true))

(assert (=> d!1797045 true))

(assert (=> d!1797045 (= (isDefined!12399 (findConcatSeparation!2110 (regOne!31886 r!7292) (regTwo!31886 r!7292) Nil!63236 s!2326 s!2326)) (Exists!2787 lambda!306850))))

(declare-fun lt!2272050 () Unit!156280)

(declare-fun choose!43047 (Regex!15687 Regex!15687 List!63360) Unit!156280)

(assert (=> d!1797045 (= lt!2272050 (choose!43047 (regOne!31886 r!7292) (regTwo!31886 r!7292) s!2326))))

(assert (=> d!1797045 (validRegex!7423 (regOne!31886 r!7292))))

(assert (=> d!1797045 (= (lemmaFindConcatSeparationEquivalentToExists!1874 (regOne!31886 r!7292) (regTwo!31886 r!7292) s!2326) lt!2272050)))

(declare-fun bs!1327511 () Bool)

(assert (= bs!1327511 d!1797045))

(declare-fun m!6650824 () Bool)

(assert (=> bs!1327511 m!6650824))

(declare-fun m!6650826 () Bool)

(assert (=> bs!1327511 m!6650826))

(assert (=> bs!1327511 m!6650410))

(assert (=> bs!1327511 m!6650412))

(assert (=> bs!1327511 m!6650810))

(assert (=> bs!1327511 m!6650410))

(assert (=> b!5693947 d!1797045))

(declare-fun bs!1327512 () Bool)

(declare-fun d!1797047 () Bool)

(assert (= bs!1327512 (and d!1797047 b!5693947)))

(declare-fun lambda!306855 () Int)

(assert (=> bs!1327512 (= lambda!306855 lambda!306807)))

(declare-fun bs!1327513 () Bool)

(assert (= bs!1327513 (and d!1797047 d!1797045)))

(assert (=> bs!1327513 (= lambda!306855 lambda!306850)))

(assert (=> bs!1327512 (not (= lambda!306855 lambda!306808))))

(declare-fun bs!1327514 () Bool)

(assert (= bs!1327514 (and d!1797047 b!5693927)))

(assert (=> bs!1327514 (= (= (regOne!31886 r!7292) lt!2271972) (= lambda!306855 lambda!306810))))

(assert (=> bs!1327514 (not (= lambda!306855 lambda!306811))))

(assert (=> d!1797047 true))

(assert (=> d!1797047 true))

(assert (=> d!1797047 true))

(declare-fun lambda!306856 () Int)

(assert (=> bs!1327512 (not (= lambda!306856 lambda!306807))))

(assert (=> bs!1327513 (not (= lambda!306856 lambda!306850))))

(assert (=> bs!1327512 (= lambda!306856 lambda!306808)))

(declare-fun bs!1327515 () Bool)

(assert (= bs!1327515 d!1797047))

(assert (=> bs!1327515 (not (= lambda!306856 lambda!306855))))

(assert (=> bs!1327514 (not (= lambda!306856 lambda!306810))))

(assert (=> bs!1327514 (= (= (regOne!31886 r!7292) lt!2271972) (= lambda!306856 lambda!306811))))

(assert (=> d!1797047 true))

(assert (=> d!1797047 true))

(assert (=> d!1797047 true))

(assert (=> d!1797047 (= (Exists!2787 lambda!306855) (Exists!2787 lambda!306856))))

(declare-fun lt!2272053 () Unit!156280)

(declare-fun choose!43048 (Regex!15687 Regex!15687 List!63360) Unit!156280)

(assert (=> d!1797047 (= lt!2272053 (choose!43048 (regOne!31886 r!7292) (regTwo!31886 r!7292) s!2326))))

(assert (=> d!1797047 (validRegex!7423 (regOne!31886 r!7292))))

(assert (=> d!1797047 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1416 (regOne!31886 r!7292) (regTwo!31886 r!7292) s!2326) lt!2272053)))

(declare-fun m!6650828 () Bool)

(assert (=> bs!1327515 m!6650828))

(declare-fun m!6650830 () Bool)

(assert (=> bs!1327515 m!6650830))

(declare-fun m!6650832 () Bool)

(assert (=> bs!1327515 m!6650832))

(assert (=> bs!1327515 m!6650810))

(assert (=> b!5693947 d!1797047))

(declare-fun d!1797049 () Bool)

(declare-fun isEmpty!35094 (Option!15696) Bool)

(assert (=> d!1797049 (= (isDefined!12399 (findConcatSeparation!2110 (regOne!31886 r!7292) (regTwo!31886 r!7292) Nil!63236 s!2326 s!2326)) (not (isEmpty!35094 (findConcatSeparation!2110 (regOne!31886 r!7292) (regTwo!31886 r!7292) Nil!63236 s!2326 s!2326))))))

(declare-fun bs!1327516 () Bool)

(assert (= bs!1327516 d!1797049))

(assert (=> bs!1327516 m!6650410))

(declare-fun m!6650834 () Bool)

(assert (=> bs!1327516 m!6650834))

(assert (=> b!5693947 d!1797049))

(declare-fun d!1797051 () Bool)

(declare-fun lt!2272056 () Regex!15687)

(assert (=> d!1797051 (validRegex!7423 lt!2272056)))

(assert (=> d!1797051 (= lt!2272056 (generalisedUnion!1550 (unfocusZipperList!1115 zl!343)))))

(assert (=> d!1797051 (= (unfocusZipper!1429 zl!343) lt!2272056)))

(declare-fun bs!1327517 () Bool)

(assert (= bs!1327517 d!1797051))

(declare-fun m!6650836 () Bool)

(assert (=> bs!1327517 m!6650836))

(assert (=> bs!1327517 m!6650430))

(assert (=> bs!1327517 m!6650430))

(assert (=> bs!1327517 m!6650432))

(assert (=> b!5693938 d!1797051))

(declare-fun d!1797053 () Bool)

(declare-fun c!1002582 () Bool)

(assert (=> d!1797053 (= c!1002582 (isEmpty!35093 (t!376678 s!2326)))))

(declare-fun e!3503492 () Bool)

(assert (=> d!1797053 (= (matchZipper!1825 lt!2271966 (t!376678 s!2326)) e!3503492)))

(declare-fun b!5694459 () Bool)

(assert (=> b!5694459 (= e!3503492 (nullableZipper!1645 lt!2271966))))

(declare-fun b!5694460 () Bool)

(assert (=> b!5694460 (= e!3503492 (matchZipper!1825 (derivationStepZipper!1770 lt!2271966 (head!12070 (t!376678 s!2326))) (tail!11165 (t!376678 s!2326))))))

(assert (= (and d!1797053 c!1002582) b!5694459))

(assert (= (and d!1797053 (not c!1002582)) b!5694460))

(assert (=> d!1797053 m!6650784))

(declare-fun m!6650838 () Bool)

(assert (=> b!5694459 m!6650838))

(assert (=> b!5694460 m!6650788))

(assert (=> b!5694460 m!6650788))

(declare-fun m!6650840 () Bool)

(assert (=> b!5694460 m!6650840))

(assert (=> b!5694460 m!6650792))

(assert (=> b!5694460 m!6650840))

(assert (=> b!5694460 m!6650792))

(declare-fun m!6650842 () Bool)

(assert (=> b!5694460 m!6650842))

(assert (=> b!5693920 d!1797053))

(declare-fun d!1797055 () Bool)

(declare-fun e!3503495 () Bool)

(assert (=> d!1797055 (= (matchZipper!1825 ((_ map or) lt!2271949 lt!2271966) (t!376678 s!2326)) e!3503495)))

(declare-fun res!2404723 () Bool)

(assert (=> d!1797055 (=> res!2404723 e!3503495)))

(assert (=> d!1797055 (= res!2404723 (matchZipper!1825 lt!2271949 (t!376678 s!2326)))))

(declare-fun lt!2272059 () Unit!156280)

(declare-fun choose!43049 ((InoxSet Context!10142) (InoxSet Context!10142) List!63360) Unit!156280)

(assert (=> d!1797055 (= lt!2272059 (choose!43049 lt!2271949 lt!2271966 (t!376678 s!2326)))))

(assert (=> d!1797055 (= (lemmaZipperConcatMatchesSameAsBothZippers!712 lt!2271949 lt!2271966 (t!376678 s!2326)) lt!2272059)))

(declare-fun b!5694463 () Bool)

(assert (=> b!5694463 (= e!3503495 (matchZipper!1825 lt!2271966 (t!376678 s!2326)))))

(assert (= (and d!1797055 (not res!2404723)) b!5694463))

(assert (=> d!1797055 m!6650316))

(assert (=> d!1797055 m!6650314))

(declare-fun m!6650844 () Bool)

(assert (=> d!1797055 m!6650844))

(assert (=> b!5694463 m!6650318))

(assert (=> b!5693931 d!1797055))

(declare-fun d!1797057 () Bool)

(declare-fun c!1002583 () Bool)

(assert (=> d!1797057 (= c!1002583 (isEmpty!35093 (t!376678 s!2326)))))

(declare-fun e!3503496 () Bool)

(assert (=> d!1797057 (= (matchZipper!1825 lt!2271949 (t!376678 s!2326)) e!3503496)))

(declare-fun b!5694464 () Bool)

(assert (=> b!5694464 (= e!3503496 (nullableZipper!1645 lt!2271949))))

(declare-fun b!5694465 () Bool)

(assert (=> b!5694465 (= e!3503496 (matchZipper!1825 (derivationStepZipper!1770 lt!2271949 (head!12070 (t!376678 s!2326))) (tail!11165 (t!376678 s!2326))))))

(assert (= (and d!1797057 c!1002583) b!5694464))

(assert (= (and d!1797057 (not c!1002583)) b!5694465))

(assert (=> d!1797057 m!6650784))

(declare-fun m!6650846 () Bool)

(assert (=> b!5694464 m!6650846))

(assert (=> b!5694465 m!6650788))

(assert (=> b!5694465 m!6650788))

(declare-fun m!6650848 () Bool)

(assert (=> b!5694465 m!6650848))

(assert (=> b!5694465 m!6650792))

(assert (=> b!5694465 m!6650848))

(assert (=> b!5694465 m!6650792))

(declare-fun m!6650850 () Bool)

(assert (=> b!5694465 m!6650850))

(assert (=> b!5693931 d!1797057))

(declare-fun d!1797059 () Bool)

(declare-fun c!1002584 () Bool)

(assert (=> d!1797059 (= c!1002584 (isEmpty!35093 (t!376678 s!2326)))))

(declare-fun e!3503497 () Bool)

(assert (=> d!1797059 (= (matchZipper!1825 ((_ map or) lt!2271949 lt!2271966) (t!376678 s!2326)) e!3503497)))

(declare-fun b!5694466 () Bool)

(assert (=> b!5694466 (= e!3503497 (nullableZipper!1645 ((_ map or) lt!2271949 lt!2271966)))))

(declare-fun b!5694467 () Bool)

(assert (=> b!5694467 (= e!3503497 (matchZipper!1825 (derivationStepZipper!1770 ((_ map or) lt!2271949 lt!2271966) (head!12070 (t!376678 s!2326))) (tail!11165 (t!376678 s!2326))))))

(assert (= (and d!1797059 c!1002584) b!5694466))

(assert (= (and d!1797059 (not c!1002584)) b!5694467))

(assert (=> d!1797059 m!6650784))

(declare-fun m!6650852 () Bool)

(assert (=> b!5694466 m!6650852))

(assert (=> b!5694467 m!6650788))

(assert (=> b!5694467 m!6650788))

(declare-fun m!6650854 () Bool)

(assert (=> b!5694467 m!6650854))

(assert (=> b!5694467 m!6650792))

(assert (=> b!5694467 m!6650854))

(assert (=> b!5694467 m!6650792))

(declare-fun m!6650856 () Bool)

(assert (=> b!5694467 m!6650856))

(assert (=> b!5693931 d!1797059))

(declare-fun b!5694496 () Bool)

(declare-fun e!3503514 () Bool)

(declare-fun lt!2272062 () Bool)

(assert (=> b!5694496 (= e!3503514 (not lt!2272062))))

(declare-fun d!1797061 () Bool)

(declare-fun e!3503517 () Bool)

(assert (=> d!1797061 e!3503517))

(declare-fun c!1002591 () Bool)

(assert (=> d!1797061 (= c!1002591 ((_ is EmptyExpr!15687) lt!2271965))))

(declare-fun e!3503513 () Bool)

(assert (=> d!1797061 (= lt!2272062 e!3503513)))

(declare-fun c!1002593 () Bool)

(assert (=> d!1797061 (= c!1002593 (isEmpty!35093 s!2326))))

(assert (=> d!1797061 (validRegex!7423 lt!2271965)))

(assert (=> d!1797061 (= (matchR!7872 lt!2271965 s!2326) lt!2272062)))

(declare-fun bm!433379 () Bool)

(declare-fun call!433384 () Bool)

(assert (=> bm!433379 (= call!433384 (isEmpty!35093 s!2326))))

(declare-fun b!5694497 () Bool)

(declare-fun e!3503512 () Bool)

(assert (=> b!5694497 (= e!3503512 (not (= (head!12070 s!2326) (c!1002439 lt!2271965))))))

(declare-fun b!5694498 () Bool)

(declare-fun e!3503515 () Bool)

(declare-fun e!3503516 () Bool)

(assert (=> b!5694498 (= e!3503515 e!3503516)))

(declare-fun res!2404740 () Bool)

(assert (=> b!5694498 (=> (not res!2404740) (not e!3503516))))

(assert (=> b!5694498 (= res!2404740 (not lt!2272062))))

(declare-fun b!5694499 () Bool)

(declare-fun res!2404742 () Bool)

(assert (=> b!5694499 (=> res!2404742 e!3503515)))

(assert (=> b!5694499 (= res!2404742 (not ((_ is ElementMatch!15687) lt!2271965)))))

(assert (=> b!5694499 (= e!3503514 e!3503515)))

(declare-fun b!5694500 () Bool)

(assert (=> b!5694500 (= e!3503517 e!3503514)))

(declare-fun c!1002592 () Bool)

(assert (=> b!5694500 (= c!1002592 ((_ is EmptyLang!15687) lt!2271965))))

(declare-fun b!5694501 () Bool)

(declare-fun res!2404744 () Bool)

(assert (=> b!5694501 (=> res!2404744 e!3503515)))

(declare-fun e!3503518 () Bool)

(assert (=> b!5694501 (= res!2404744 e!3503518)))

(declare-fun res!2404743 () Bool)

(assert (=> b!5694501 (=> (not res!2404743) (not e!3503518))))

(assert (=> b!5694501 (= res!2404743 lt!2272062)))

(declare-fun b!5694502 () Bool)

(assert (=> b!5694502 (= e!3503516 e!3503512)))

(declare-fun res!2404746 () Bool)

(assert (=> b!5694502 (=> res!2404746 e!3503512)))

(assert (=> b!5694502 (= res!2404746 call!433384)))

(declare-fun b!5694503 () Bool)

(declare-fun derivativeStep!4498 (Regex!15687 C!31644) Regex!15687)

(assert (=> b!5694503 (= e!3503513 (matchR!7872 (derivativeStep!4498 lt!2271965 (head!12070 s!2326)) (tail!11165 s!2326)))))

(declare-fun b!5694504 () Bool)

(declare-fun res!2404741 () Bool)

(assert (=> b!5694504 (=> (not res!2404741) (not e!3503518))))

(assert (=> b!5694504 (= res!2404741 (isEmpty!35093 (tail!11165 s!2326)))))

(declare-fun b!5694505 () Bool)

(assert (=> b!5694505 (= e!3503517 (= lt!2272062 call!433384))))

(declare-fun b!5694506 () Bool)

(declare-fun res!2404745 () Bool)

(assert (=> b!5694506 (=> res!2404745 e!3503512)))

(assert (=> b!5694506 (= res!2404745 (not (isEmpty!35093 (tail!11165 s!2326))))))

(declare-fun b!5694507 () Bool)

(assert (=> b!5694507 (= e!3503518 (= (head!12070 s!2326) (c!1002439 lt!2271965)))))

(declare-fun b!5694508 () Bool)

(assert (=> b!5694508 (= e!3503513 (nullable!5719 lt!2271965))))

(declare-fun b!5694509 () Bool)

(declare-fun res!2404747 () Bool)

(assert (=> b!5694509 (=> (not res!2404747) (not e!3503518))))

(assert (=> b!5694509 (= res!2404747 (not call!433384))))

(assert (= (and d!1797061 c!1002593) b!5694508))

(assert (= (and d!1797061 (not c!1002593)) b!5694503))

(assert (= (and d!1797061 c!1002591) b!5694505))

(assert (= (and d!1797061 (not c!1002591)) b!5694500))

(assert (= (and b!5694500 c!1002592) b!5694496))

(assert (= (and b!5694500 (not c!1002592)) b!5694499))

(assert (= (and b!5694499 (not res!2404742)) b!5694501))

(assert (= (and b!5694501 res!2404743) b!5694509))

(assert (= (and b!5694509 res!2404747) b!5694504))

(assert (= (and b!5694504 res!2404741) b!5694507))

(assert (= (and b!5694501 (not res!2404744)) b!5694498))

(assert (= (and b!5694498 res!2404740) b!5694502))

(assert (= (and b!5694502 (not res!2404746)) b!5694506))

(assert (= (and b!5694506 (not res!2404745)) b!5694497))

(assert (= (or b!5694505 b!5694509 b!5694502) bm!433379))

(assert (=> b!5694506 m!6650778))

(assert (=> b!5694506 m!6650778))

(declare-fun m!6650858 () Bool)

(assert (=> b!5694506 m!6650858))

(assert (=> b!5694507 m!6650774))

(assert (=> b!5694503 m!6650774))

(assert (=> b!5694503 m!6650774))

(declare-fun m!6650860 () Bool)

(assert (=> b!5694503 m!6650860))

(assert (=> b!5694503 m!6650778))

(assert (=> b!5694503 m!6650860))

(assert (=> b!5694503 m!6650778))

(declare-fun m!6650862 () Bool)

(assert (=> b!5694503 m!6650862))

(assert (=> bm!433379 m!6650770))

(assert (=> b!5694504 m!6650778))

(assert (=> b!5694504 m!6650778))

(assert (=> b!5694504 m!6650858))

(assert (=> d!1797061 m!6650770))

(declare-fun m!6650864 () Bool)

(assert (=> d!1797061 m!6650864))

(assert (=> b!5694497 m!6650774))

(declare-fun m!6650866 () Bool)

(assert (=> b!5694508 m!6650866))

(assert (=> b!5693937 d!1797061))

(declare-fun bs!1327518 () Bool)

(declare-fun b!5694549 () Bool)

(assert (= bs!1327518 (and b!5694549 d!1797047)))

(declare-fun lambda!306861 () Int)

(assert (=> bs!1327518 (not (= lambda!306861 lambda!306856))))

(declare-fun bs!1327519 () Bool)

(assert (= bs!1327519 (and b!5694549 b!5693947)))

(assert (=> bs!1327519 (not (= lambda!306861 lambda!306807))))

(declare-fun bs!1327520 () Bool)

(assert (= bs!1327520 (and b!5694549 d!1797045)))

(assert (=> bs!1327520 (not (= lambda!306861 lambda!306850))))

(assert (=> bs!1327519 (not (= lambda!306861 lambda!306808))))

(assert (=> bs!1327518 (not (= lambda!306861 lambda!306855))))

(declare-fun bs!1327521 () Bool)

(assert (= bs!1327521 (and b!5694549 b!5693927)))

(assert (=> bs!1327521 (not (= lambda!306861 lambda!306810))))

(assert (=> bs!1327521 (not (= lambda!306861 lambda!306811))))

(assert (=> b!5694549 true))

(assert (=> b!5694549 true))

(declare-fun bs!1327522 () Bool)

(declare-fun b!5694547 () Bool)

(assert (= bs!1327522 (and b!5694547 d!1797047)))

(declare-fun lambda!306862 () Int)

(assert (=> bs!1327522 (= (and (= (regOne!31886 lt!2271965) (regOne!31886 r!7292)) (= (regTwo!31886 lt!2271965) (regTwo!31886 r!7292))) (= lambda!306862 lambda!306856))))

(declare-fun bs!1327523 () Bool)

(assert (= bs!1327523 (and b!5694547 b!5693947)))

(assert (=> bs!1327523 (not (= lambda!306862 lambda!306807))))

(declare-fun bs!1327524 () Bool)

(assert (= bs!1327524 (and b!5694547 b!5694549)))

(assert (=> bs!1327524 (not (= lambda!306862 lambda!306861))))

(declare-fun bs!1327525 () Bool)

(assert (= bs!1327525 (and b!5694547 d!1797045)))

(assert (=> bs!1327525 (not (= lambda!306862 lambda!306850))))

(assert (=> bs!1327523 (= (and (= (regOne!31886 lt!2271965) (regOne!31886 r!7292)) (= (regTwo!31886 lt!2271965) (regTwo!31886 r!7292))) (= lambda!306862 lambda!306808))))

(assert (=> bs!1327522 (not (= lambda!306862 lambda!306855))))

(declare-fun bs!1327526 () Bool)

(assert (= bs!1327526 (and b!5694547 b!5693927)))

(assert (=> bs!1327526 (not (= lambda!306862 lambda!306810))))

(assert (=> bs!1327526 (= (and (= (regOne!31886 lt!2271965) lt!2271972) (= (regTwo!31886 lt!2271965) (regTwo!31886 r!7292))) (= lambda!306862 lambda!306811))))

(assert (=> b!5694547 true))

(assert (=> b!5694547 true))

(declare-fun d!1797063 () Bool)

(declare-fun c!1002603 () Bool)

(assert (=> d!1797063 (= c!1002603 ((_ is EmptyExpr!15687) lt!2271965))))

(declare-fun e!3503537 () Bool)

(assert (=> d!1797063 (= (matchRSpec!2790 lt!2271965 s!2326) e!3503537)))

(declare-fun b!5694542 () Bool)

(declare-fun e!3503540 () Bool)

(declare-fun e!3503538 () Bool)

(assert (=> b!5694542 (= e!3503540 e!3503538)))

(declare-fun res!2404765 () Bool)

(assert (=> b!5694542 (= res!2404765 (matchRSpec!2790 (regOne!31887 lt!2271965) s!2326))))

(assert (=> b!5694542 (=> res!2404765 e!3503538)))

(declare-fun b!5694543 () Bool)

(declare-fun c!1002602 () Bool)

(assert (=> b!5694543 (= c!1002602 ((_ is Union!15687) lt!2271965))))

(declare-fun e!3503541 () Bool)

(assert (=> b!5694543 (= e!3503541 e!3503540)))

(declare-fun b!5694544 () Bool)

(declare-fun res!2404766 () Bool)

(declare-fun e!3503543 () Bool)

(assert (=> b!5694544 (=> res!2404766 e!3503543)))

(declare-fun call!433390 () Bool)

(assert (=> b!5694544 (= res!2404766 call!433390)))

(declare-fun e!3503539 () Bool)

(assert (=> b!5694544 (= e!3503539 e!3503543)))

(declare-fun b!5694545 () Bool)

(assert (=> b!5694545 (= e!3503537 call!433390)))

(declare-fun b!5694546 () Bool)

(assert (=> b!5694546 (= e!3503538 (matchRSpec!2790 (regTwo!31887 lt!2271965) s!2326))))

(declare-fun call!433389 () Bool)

(assert (=> b!5694547 (= e!3503539 call!433389)))

(declare-fun bm!433384 () Bool)

(assert (=> bm!433384 (= call!433390 (isEmpty!35093 s!2326))))

(declare-fun b!5694548 () Bool)

(assert (=> b!5694548 (= e!3503541 (= s!2326 (Cons!63236 (c!1002439 lt!2271965) Nil!63236)))))

(assert (=> b!5694549 (= e!3503543 call!433389)))

(declare-fun b!5694550 () Bool)

(assert (=> b!5694550 (= e!3503540 e!3503539)))

(declare-fun c!1002604 () Bool)

(assert (=> b!5694550 (= c!1002604 ((_ is Star!15687) lt!2271965))))

(declare-fun b!5694551 () Bool)

(declare-fun c!1002605 () Bool)

(assert (=> b!5694551 (= c!1002605 ((_ is ElementMatch!15687) lt!2271965))))

(declare-fun e!3503542 () Bool)

(assert (=> b!5694551 (= e!3503542 e!3503541)))

(declare-fun b!5694552 () Bool)

(assert (=> b!5694552 (= e!3503537 e!3503542)))

(declare-fun res!2404764 () Bool)

(assert (=> b!5694552 (= res!2404764 (not ((_ is EmptyLang!15687) lt!2271965)))))

(assert (=> b!5694552 (=> (not res!2404764) (not e!3503542))))

(declare-fun bm!433385 () Bool)

(assert (=> bm!433385 (= call!433389 (Exists!2787 (ite c!1002604 lambda!306861 lambda!306862)))))

(assert (= (and d!1797063 c!1002603) b!5694545))

(assert (= (and d!1797063 (not c!1002603)) b!5694552))

(assert (= (and b!5694552 res!2404764) b!5694551))

(assert (= (and b!5694551 c!1002605) b!5694548))

(assert (= (and b!5694551 (not c!1002605)) b!5694543))

(assert (= (and b!5694543 c!1002602) b!5694542))

(assert (= (and b!5694543 (not c!1002602)) b!5694550))

(assert (= (and b!5694542 (not res!2404765)) b!5694546))

(assert (= (and b!5694550 c!1002604) b!5694544))

(assert (= (and b!5694550 (not c!1002604)) b!5694547))

(assert (= (and b!5694544 (not res!2404766)) b!5694549))

(assert (= (or b!5694549 b!5694547) bm!433385))

(assert (= (or b!5694545 b!5694544) bm!433384))

(declare-fun m!6650868 () Bool)

(assert (=> b!5694542 m!6650868))

(declare-fun m!6650870 () Bool)

(assert (=> b!5694546 m!6650870))

(assert (=> bm!433384 m!6650770))

(declare-fun m!6650872 () Bool)

(assert (=> bm!433385 m!6650872))

(assert (=> b!5693937 d!1797063))

(declare-fun d!1797065 () Bool)

(assert (=> d!1797065 (= (matchR!7872 lt!2271965 s!2326) (matchRSpec!2790 lt!2271965 s!2326))))

(declare-fun lt!2272065 () Unit!156280)

(declare-fun choose!43050 (Regex!15687 List!63360) Unit!156280)

(assert (=> d!1797065 (= lt!2272065 (choose!43050 lt!2271965 s!2326))))

(assert (=> d!1797065 (validRegex!7423 lt!2271965)))

(assert (=> d!1797065 (= (mainMatchTheorem!2790 lt!2271965 s!2326) lt!2272065)))

(declare-fun bs!1327527 () Bool)

(assert (= bs!1327527 d!1797065))

(assert (=> bs!1327527 m!6650346))

(assert (=> bs!1327527 m!6650348))

(declare-fun m!6650874 () Bool)

(assert (=> bs!1327527 m!6650874))

(assert (=> bs!1327527 m!6650864))

(assert (=> b!5693937 d!1797065))

(declare-fun bs!1327528 () Bool)

(declare-fun b!5694560 () Bool)

(assert (= bs!1327528 (and b!5694560 d!1797047)))

(declare-fun lambda!306863 () Int)

(assert (=> bs!1327528 (not (= lambda!306863 lambda!306856))))

(declare-fun bs!1327529 () Bool)

(assert (= bs!1327529 (and b!5694560 b!5693947)))

(assert (=> bs!1327529 (not (= lambda!306863 lambda!306807))))

(declare-fun bs!1327530 () Bool)

(assert (= bs!1327530 (and b!5694560 b!5694549)))

(assert (=> bs!1327530 (= (and (= (reg!16016 r!7292) (reg!16016 lt!2271965)) (= r!7292 lt!2271965)) (= lambda!306863 lambda!306861))))

(declare-fun bs!1327531 () Bool)

(assert (= bs!1327531 (and b!5694560 b!5694547)))

(assert (=> bs!1327531 (not (= lambda!306863 lambda!306862))))

(declare-fun bs!1327532 () Bool)

(assert (= bs!1327532 (and b!5694560 d!1797045)))

(assert (=> bs!1327532 (not (= lambda!306863 lambda!306850))))

(assert (=> bs!1327529 (not (= lambda!306863 lambda!306808))))

(assert (=> bs!1327528 (not (= lambda!306863 lambda!306855))))

(declare-fun bs!1327533 () Bool)

(assert (= bs!1327533 (and b!5694560 b!5693927)))

(assert (=> bs!1327533 (not (= lambda!306863 lambda!306810))))

(assert (=> bs!1327533 (not (= lambda!306863 lambda!306811))))

(assert (=> b!5694560 true))

(assert (=> b!5694560 true))

(declare-fun bs!1327534 () Bool)

(declare-fun b!5694558 () Bool)

(assert (= bs!1327534 (and b!5694558 d!1797047)))

(declare-fun lambda!306864 () Int)

(assert (=> bs!1327534 (= lambda!306864 lambda!306856)))

(declare-fun bs!1327535 () Bool)

(assert (= bs!1327535 (and b!5694558 b!5693947)))

(assert (=> bs!1327535 (not (= lambda!306864 lambda!306807))))

(declare-fun bs!1327536 () Bool)

(assert (= bs!1327536 (and b!5694558 b!5694549)))

(assert (=> bs!1327536 (not (= lambda!306864 lambda!306861))))

(declare-fun bs!1327537 () Bool)

(assert (= bs!1327537 (and b!5694558 b!5694547)))

(assert (=> bs!1327537 (= (and (= (regOne!31886 r!7292) (regOne!31886 lt!2271965)) (= (regTwo!31886 r!7292) (regTwo!31886 lt!2271965))) (= lambda!306864 lambda!306862))))

(declare-fun bs!1327538 () Bool)

(assert (= bs!1327538 (and b!5694558 b!5694560)))

(assert (=> bs!1327538 (not (= lambda!306864 lambda!306863))))

(declare-fun bs!1327539 () Bool)

(assert (= bs!1327539 (and b!5694558 d!1797045)))

(assert (=> bs!1327539 (not (= lambda!306864 lambda!306850))))

(assert (=> bs!1327535 (= lambda!306864 lambda!306808)))

(assert (=> bs!1327534 (not (= lambda!306864 lambda!306855))))

(declare-fun bs!1327540 () Bool)

(assert (= bs!1327540 (and b!5694558 b!5693927)))

(assert (=> bs!1327540 (not (= lambda!306864 lambda!306810))))

(assert (=> bs!1327540 (= (= (regOne!31886 r!7292) lt!2271972) (= lambda!306864 lambda!306811))))

(assert (=> b!5694558 true))

(assert (=> b!5694558 true))

(declare-fun d!1797067 () Bool)

(declare-fun c!1002607 () Bool)

(assert (=> d!1797067 (= c!1002607 ((_ is EmptyExpr!15687) r!7292))))

(declare-fun e!3503544 () Bool)

(assert (=> d!1797067 (= (matchRSpec!2790 r!7292 s!2326) e!3503544)))

(declare-fun b!5694553 () Bool)

(declare-fun e!3503547 () Bool)

(declare-fun e!3503545 () Bool)

(assert (=> b!5694553 (= e!3503547 e!3503545)))

(declare-fun res!2404768 () Bool)

(assert (=> b!5694553 (= res!2404768 (matchRSpec!2790 (regOne!31887 r!7292) s!2326))))

(assert (=> b!5694553 (=> res!2404768 e!3503545)))

(declare-fun b!5694554 () Bool)

(declare-fun c!1002606 () Bool)

(assert (=> b!5694554 (= c!1002606 ((_ is Union!15687) r!7292))))

(declare-fun e!3503548 () Bool)

(assert (=> b!5694554 (= e!3503548 e!3503547)))

(declare-fun b!5694555 () Bool)

(declare-fun res!2404769 () Bool)

(declare-fun e!3503550 () Bool)

(assert (=> b!5694555 (=> res!2404769 e!3503550)))

(declare-fun call!433392 () Bool)

(assert (=> b!5694555 (= res!2404769 call!433392)))

(declare-fun e!3503546 () Bool)

(assert (=> b!5694555 (= e!3503546 e!3503550)))

(declare-fun b!5694556 () Bool)

(assert (=> b!5694556 (= e!3503544 call!433392)))

(declare-fun b!5694557 () Bool)

(assert (=> b!5694557 (= e!3503545 (matchRSpec!2790 (regTwo!31887 r!7292) s!2326))))

(declare-fun call!433391 () Bool)

(assert (=> b!5694558 (= e!3503546 call!433391)))

(declare-fun bm!433386 () Bool)

(assert (=> bm!433386 (= call!433392 (isEmpty!35093 s!2326))))

(declare-fun b!5694559 () Bool)

(assert (=> b!5694559 (= e!3503548 (= s!2326 (Cons!63236 (c!1002439 r!7292) Nil!63236)))))

(assert (=> b!5694560 (= e!3503550 call!433391)))

(declare-fun b!5694561 () Bool)

(assert (=> b!5694561 (= e!3503547 e!3503546)))

(declare-fun c!1002608 () Bool)

(assert (=> b!5694561 (= c!1002608 ((_ is Star!15687) r!7292))))

(declare-fun b!5694562 () Bool)

(declare-fun c!1002609 () Bool)

(assert (=> b!5694562 (= c!1002609 ((_ is ElementMatch!15687) r!7292))))

(declare-fun e!3503549 () Bool)

(assert (=> b!5694562 (= e!3503549 e!3503548)))

(declare-fun b!5694563 () Bool)

(assert (=> b!5694563 (= e!3503544 e!3503549)))

(declare-fun res!2404767 () Bool)

(assert (=> b!5694563 (= res!2404767 (not ((_ is EmptyLang!15687) r!7292)))))

(assert (=> b!5694563 (=> (not res!2404767) (not e!3503549))))

(declare-fun bm!433387 () Bool)

(assert (=> bm!433387 (= call!433391 (Exists!2787 (ite c!1002608 lambda!306863 lambda!306864)))))

(assert (= (and d!1797067 c!1002607) b!5694556))

(assert (= (and d!1797067 (not c!1002607)) b!5694563))

(assert (= (and b!5694563 res!2404767) b!5694562))

(assert (= (and b!5694562 c!1002609) b!5694559))

(assert (= (and b!5694562 (not c!1002609)) b!5694554))

(assert (= (and b!5694554 c!1002606) b!5694553))

(assert (= (and b!5694554 (not c!1002606)) b!5694561))

(assert (= (and b!5694553 (not res!2404768)) b!5694557))

(assert (= (and b!5694561 c!1002608) b!5694555))

(assert (= (and b!5694561 (not c!1002608)) b!5694558))

(assert (= (and b!5694555 (not res!2404769)) b!5694560))

(assert (= (or b!5694560 b!5694558) bm!433387))

(assert (= (or b!5694556 b!5694555) bm!433386))

(declare-fun m!6650876 () Bool)

(assert (=> b!5694553 m!6650876))

(declare-fun m!6650878 () Bool)

(assert (=> b!5694557 m!6650878))

(assert (=> bm!433386 m!6650770))

(declare-fun m!6650880 () Bool)

(assert (=> bm!433387 m!6650880))

(assert (=> b!5693945 d!1797067))

(declare-fun b!5694564 () Bool)

(declare-fun e!3503553 () Bool)

(declare-fun lt!2272066 () Bool)

(assert (=> b!5694564 (= e!3503553 (not lt!2272066))))

(declare-fun d!1797069 () Bool)

(declare-fun e!3503556 () Bool)

(assert (=> d!1797069 e!3503556))

(declare-fun c!1002610 () Bool)

(assert (=> d!1797069 (= c!1002610 ((_ is EmptyExpr!15687) r!7292))))

(declare-fun e!3503552 () Bool)

(assert (=> d!1797069 (= lt!2272066 e!3503552)))

(declare-fun c!1002612 () Bool)

(assert (=> d!1797069 (= c!1002612 (isEmpty!35093 s!2326))))

(assert (=> d!1797069 (validRegex!7423 r!7292)))

(assert (=> d!1797069 (= (matchR!7872 r!7292 s!2326) lt!2272066)))

(declare-fun bm!433388 () Bool)

(declare-fun call!433393 () Bool)

(assert (=> bm!433388 (= call!433393 (isEmpty!35093 s!2326))))

(declare-fun b!5694565 () Bool)

(declare-fun e!3503551 () Bool)

(assert (=> b!5694565 (= e!3503551 (not (= (head!12070 s!2326) (c!1002439 r!7292))))))

(declare-fun b!5694566 () Bool)

(declare-fun e!3503554 () Bool)

(declare-fun e!3503555 () Bool)

(assert (=> b!5694566 (= e!3503554 e!3503555)))

(declare-fun res!2404770 () Bool)

(assert (=> b!5694566 (=> (not res!2404770) (not e!3503555))))

(assert (=> b!5694566 (= res!2404770 (not lt!2272066))))

(declare-fun b!5694567 () Bool)

(declare-fun res!2404772 () Bool)

(assert (=> b!5694567 (=> res!2404772 e!3503554)))

(assert (=> b!5694567 (= res!2404772 (not ((_ is ElementMatch!15687) r!7292)))))

(assert (=> b!5694567 (= e!3503553 e!3503554)))

(declare-fun b!5694568 () Bool)

(assert (=> b!5694568 (= e!3503556 e!3503553)))

(declare-fun c!1002611 () Bool)

(assert (=> b!5694568 (= c!1002611 ((_ is EmptyLang!15687) r!7292))))

(declare-fun b!5694569 () Bool)

(declare-fun res!2404774 () Bool)

(assert (=> b!5694569 (=> res!2404774 e!3503554)))

(declare-fun e!3503557 () Bool)

(assert (=> b!5694569 (= res!2404774 e!3503557)))

(declare-fun res!2404773 () Bool)

(assert (=> b!5694569 (=> (not res!2404773) (not e!3503557))))

(assert (=> b!5694569 (= res!2404773 lt!2272066)))

(declare-fun b!5694570 () Bool)

(assert (=> b!5694570 (= e!3503555 e!3503551)))

(declare-fun res!2404776 () Bool)

(assert (=> b!5694570 (=> res!2404776 e!3503551)))

(assert (=> b!5694570 (= res!2404776 call!433393)))

(declare-fun b!5694571 () Bool)

(assert (=> b!5694571 (= e!3503552 (matchR!7872 (derivativeStep!4498 r!7292 (head!12070 s!2326)) (tail!11165 s!2326)))))

(declare-fun b!5694572 () Bool)

(declare-fun res!2404771 () Bool)

(assert (=> b!5694572 (=> (not res!2404771) (not e!3503557))))

(assert (=> b!5694572 (= res!2404771 (isEmpty!35093 (tail!11165 s!2326)))))

(declare-fun b!5694573 () Bool)

(assert (=> b!5694573 (= e!3503556 (= lt!2272066 call!433393))))

(declare-fun b!5694574 () Bool)

(declare-fun res!2404775 () Bool)

(assert (=> b!5694574 (=> res!2404775 e!3503551)))

(assert (=> b!5694574 (= res!2404775 (not (isEmpty!35093 (tail!11165 s!2326))))))

(declare-fun b!5694575 () Bool)

(assert (=> b!5694575 (= e!3503557 (= (head!12070 s!2326) (c!1002439 r!7292)))))

(declare-fun b!5694576 () Bool)

(assert (=> b!5694576 (= e!3503552 (nullable!5719 r!7292))))

(declare-fun b!5694577 () Bool)

(declare-fun res!2404777 () Bool)

(assert (=> b!5694577 (=> (not res!2404777) (not e!3503557))))

(assert (=> b!5694577 (= res!2404777 (not call!433393))))

(assert (= (and d!1797069 c!1002612) b!5694576))

(assert (= (and d!1797069 (not c!1002612)) b!5694571))

(assert (= (and d!1797069 c!1002610) b!5694573))

(assert (= (and d!1797069 (not c!1002610)) b!5694568))

(assert (= (and b!5694568 c!1002611) b!5694564))

(assert (= (and b!5694568 (not c!1002611)) b!5694567))

(assert (= (and b!5694567 (not res!2404772)) b!5694569))

(assert (= (and b!5694569 res!2404773) b!5694577))

(assert (= (and b!5694577 res!2404777) b!5694572))

(assert (= (and b!5694572 res!2404771) b!5694575))

(assert (= (and b!5694569 (not res!2404774)) b!5694566))

(assert (= (and b!5694566 res!2404770) b!5694570))

(assert (= (and b!5694570 (not res!2404776)) b!5694574))

(assert (= (and b!5694574 (not res!2404775)) b!5694565))

(assert (= (or b!5694573 b!5694577 b!5694570) bm!433388))

(assert (=> b!5694574 m!6650778))

(assert (=> b!5694574 m!6650778))

(assert (=> b!5694574 m!6650858))

(assert (=> b!5694575 m!6650774))

(assert (=> b!5694571 m!6650774))

(assert (=> b!5694571 m!6650774))

(declare-fun m!6650882 () Bool)

(assert (=> b!5694571 m!6650882))

(assert (=> b!5694571 m!6650778))

(assert (=> b!5694571 m!6650882))

(assert (=> b!5694571 m!6650778))

(declare-fun m!6650884 () Bool)

(assert (=> b!5694571 m!6650884))

(assert (=> bm!433388 m!6650770))

(assert (=> b!5694572 m!6650778))

(assert (=> b!5694572 m!6650778))

(assert (=> b!5694572 m!6650858))

(assert (=> d!1797069 m!6650770))

(assert (=> d!1797069 m!6650422))

(assert (=> b!5694565 m!6650774))

(declare-fun m!6650886 () Bool)

(assert (=> b!5694576 m!6650886))

(assert (=> b!5693945 d!1797069))

(declare-fun d!1797071 () Bool)

(assert (=> d!1797071 (= (matchR!7872 r!7292 s!2326) (matchRSpec!2790 r!7292 s!2326))))

(declare-fun lt!2272067 () Unit!156280)

(assert (=> d!1797071 (= lt!2272067 (choose!43050 r!7292 s!2326))))

(assert (=> d!1797071 (validRegex!7423 r!7292)))

(assert (=> d!1797071 (= (mainMatchTheorem!2790 r!7292 s!2326) lt!2272067)))

(declare-fun bs!1327541 () Bool)

(assert (= bs!1327541 d!1797071))

(assert (=> bs!1327541 m!6650426))

(assert (=> bs!1327541 m!6650424))

(declare-fun m!6650888 () Bool)

(assert (=> bs!1327541 m!6650888))

(assert (=> bs!1327541 m!6650422))

(assert (=> b!5693945 d!1797071))

(declare-fun b!5694596 () Bool)

(declare-fun e!3503576 () Bool)

(declare-fun e!3503578 () Bool)

(assert (=> b!5694596 (= e!3503576 e!3503578)))

(declare-fun c!1002618 () Bool)

(assert (=> b!5694596 (= c!1002618 ((_ is Star!15687) r!7292))))

(declare-fun b!5694597 () Bool)

(declare-fun res!2404792 () Bool)

(declare-fun e!3503577 () Bool)

(assert (=> b!5694597 (=> (not res!2404792) (not e!3503577))))

(declare-fun call!433401 () Bool)

(assert (=> b!5694597 (= res!2404792 call!433401)))

(declare-fun e!3503575 () Bool)

(assert (=> b!5694597 (= e!3503575 e!3503577)))

(declare-fun b!5694598 () Bool)

(declare-fun res!2404788 () Bool)

(declare-fun e!3503573 () Bool)

(assert (=> b!5694598 (=> res!2404788 e!3503573)))

(assert (=> b!5694598 (= res!2404788 (not ((_ is Concat!24532) r!7292)))))

(assert (=> b!5694598 (= e!3503575 e!3503573)))

(declare-fun b!5694599 () Bool)

(declare-fun e!3503572 () Bool)

(assert (=> b!5694599 (= e!3503578 e!3503572)))

(declare-fun res!2404789 () Bool)

(assert (=> b!5694599 (= res!2404789 (not (nullable!5719 (reg!16016 r!7292))))))

(assert (=> b!5694599 (=> (not res!2404789) (not e!3503572))))

(declare-fun d!1797073 () Bool)

(declare-fun res!2404791 () Bool)

(assert (=> d!1797073 (=> res!2404791 e!3503576)))

(assert (=> d!1797073 (= res!2404791 ((_ is ElementMatch!15687) r!7292))))

(assert (=> d!1797073 (= (validRegex!7423 r!7292) e!3503576)))

(declare-fun b!5694600 () Bool)

(declare-fun e!3503574 () Bool)

(assert (=> b!5694600 (= e!3503573 e!3503574)))

(declare-fun res!2404790 () Bool)

(assert (=> b!5694600 (=> (not res!2404790) (not e!3503574))))

(assert (=> b!5694600 (= res!2404790 call!433401)))

(declare-fun bm!433395 () Bool)

(declare-fun call!433400 () Bool)

(declare-fun call!433402 () Bool)

(assert (=> bm!433395 (= call!433400 call!433402)))

(declare-fun b!5694601 () Bool)

(assert (=> b!5694601 (= e!3503578 e!3503575)))

(declare-fun c!1002617 () Bool)

(assert (=> b!5694601 (= c!1002617 ((_ is Union!15687) r!7292))))

(declare-fun bm!433396 () Bool)

(assert (=> bm!433396 (= call!433401 (validRegex!7423 (ite c!1002617 (regOne!31887 r!7292) (regOne!31886 r!7292))))))

(declare-fun bm!433397 () Bool)

(assert (=> bm!433397 (= call!433402 (validRegex!7423 (ite c!1002618 (reg!16016 r!7292) (ite c!1002617 (regTwo!31887 r!7292) (regTwo!31886 r!7292)))))))

(declare-fun b!5694602 () Bool)

(assert (=> b!5694602 (= e!3503574 call!433400)))

(declare-fun b!5694603 () Bool)

(assert (=> b!5694603 (= e!3503577 call!433400)))

(declare-fun b!5694604 () Bool)

(assert (=> b!5694604 (= e!3503572 call!433402)))

(assert (= (and d!1797073 (not res!2404791)) b!5694596))

(assert (= (and b!5694596 c!1002618) b!5694599))

(assert (= (and b!5694596 (not c!1002618)) b!5694601))

(assert (= (and b!5694599 res!2404789) b!5694604))

(assert (= (and b!5694601 c!1002617) b!5694597))

(assert (= (and b!5694601 (not c!1002617)) b!5694598))

(assert (= (and b!5694597 res!2404792) b!5694603))

(assert (= (and b!5694598 (not res!2404788)) b!5694600))

(assert (= (and b!5694600 res!2404790) b!5694602))

(assert (= (or b!5694603 b!5694602) bm!433395))

(assert (= (or b!5694597 b!5694600) bm!433396))

(assert (= (or b!5694604 bm!433395) bm!433397))

(declare-fun m!6650890 () Bool)

(assert (=> b!5694599 m!6650890))

(declare-fun m!6650892 () Bool)

(assert (=> bm!433396 m!6650892))

(declare-fun m!6650894 () Bool)

(assert (=> bm!433397 m!6650894))

(assert (=> start!587140 d!1797073))

(declare-fun d!1797075 () Bool)

(declare-fun nullableFct!1791 (Regex!15687) Bool)

(assert (=> d!1797075 (= (nullable!5719 (regOne!31886 (regOne!31886 r!7292))) (nullableFct!1791 (regOne!31886 (regOne!31886 r!7292))))))

(declare-fun bs!1327542 () Bool)

(assert (= bs!1327542 d!1797075))

(declare-fun m!6650896 () Bool)

(assert (=> bs!1327542 m!6650896))

(assert (=> b!5693933 d!1797075))

(declare-fun d!1797077 () Bool)

(declare-fun choose!43051 ((InoxSet Context!10142) Int) (InoxSet Context!10142))

(assert (=> d!1797077 (= (flatMap!1300 lt!2271973 lambda!306809) (choose!43051 lt!2271973 lambda!306809))))

(declare-fun bs!1327543 () Bool)

(assert (= bs!1327543 d!1797077))

(declare-fun m!6650898 () Bool)

(assert (=> bs!1327543 m!6650898))

(assert (=> b!5693934 d!1797077))

(declare-fun b!5694615 () Bool)

(declare-fun e!3503585 () (InoxSet Context!10142))

(declare-fun e!3503586 () (InoxSet Context!10142))

(assert (=> b!5694615 (= e!3503585 e!3503586)))

(declare-fun c!1002623 () Bool)

(assert (=> b!5694615 (= c!1002623 ((_ is Cons!63237) (exprs!5571 lt!2271945)))))

(declare-fun b!5694616 () Bool)

(assert (=> b!5694616 (= e!3503586 ((as const (Array Context!10142 Bool)) false))))

(declare-fun b!5694617 () Bool)

(declare-fun call!433405 () (InoxSet Context!10142))

(assert (=> b!5694617 (= e!3503586 call!433405)))

(declare-fun d!1797079 () Bool)

(declare-fun c!1002624 () Bool)

(declare-fun e!3503587 () Bool)

(assert (=> d!1797079 (= c!1002624 e!3503587)))

(declare-fun res!2404795 () Bool)

(assert (=> d!1797079 (=> (not res!2404795) (not e!3503587))))

(assert (=> d!1797079 (= res!2404795 ((_ is Cons!63237) (exprs!5571 lt!2271945)))))

(assert (=> d!1797079 (= (derivationStepZipperUp!955 lt!2271945 (h!69684 s!2326)) e!3503585)))

(declare-fun bm!433400 () Bool)

(assert (=> bm!433400 (= call!433405 (derivationStepZipperDown!1029 (h!69685 (exprs!5571 lt!2271945)) (Context!10143 (t!376679 (exprs!5571 lt!2271945))) (h!69684 s!2326)))))

(declare-fun b!5694618 () Bool)

(assert (=> b!5694618 (= e!3503587 (nullable!5719 (h!69685 (exprs!5571 lt!2271945))))))

(declare-fun b!5694619 () Bool)

(assert (=> b!5694619 (= e!3503585 ((_ map or) call!433405 (derivationStepZipperUp!955 (Context!10143 (t!376679 (exprs!5571 lt!2271945))) (h!69684 s!2326))))))

(assert (= (and d!1797079 res!2404795) b!5694618))

(assert (= (and d!1797079 c!1002624) b!5694619))

(assert (= (and d!1797079 (not c!1002624)) b!5694615))

(assert (= (and b!5694615 c!1002623) b!5694617))

(assert (= (and b!5694615 (not c!1002623)) b!5694616))

(assert (= (or b!5694619 b!5694617) bm!433400))

(declare-fun m!6650900 () Bool)

(assert (=> bm!433400 m!6650900))

(declare-fun m!6650902 () Bool)

(assert (=> b!5694618 m!6650902))

(declare-fun m!6650904 () Bool)

(assert (=> b!5694619 m!6650904))

(assert (=> b!5693934 d!1797079))

(declare-fun d!1797081 () Bool)

(declare-fun dynLambda!24744 (Int Context!10142) (InoxSet Context!10142))

(assert (=> d!1797081 (= (flatMap!1300 lt!2271973 lambda!306809) (dynLambda!24744 lambda!306809 lt!2271945))))

(declare-fun lt!2272070 () Unit!156280)

(declare-fun choose!43052 ((InoxSet Context!10142) Context!10142 Int) Unit!156280)

(assert (=> d!1797081 (= lt!2272070 (choose!43052 lt!2271973 lt!2271945 lambda!306809))))

(assert (=> d!1797081 (= lt!2271973 (store ((as const (Array Context!10142 Bool)) false) lt!2271945 true))))

(assert (=> d!1797081 (= (lemmaFlatMapOnSingletonSet!832 lt!2271973 lt!2271945 lambda!306809) lt!2272070)))

(declare-fun b_lambda!215271 () Bool)

(assert (=> (not b_lambda!215271) (not d!1797081)))

(declare-fun bs!1327544 () Bool)

(assert (= bs!1327544 d!1797081))

(assert (=> bs!1327544 m!6650340))

(declare-fun m!6650906 () Bool)

(assert (=> bs!1327544 m!6650906))

(declare-fun m!6650908 () Bool)

(assert (=> bs!1327544 m!6650908))

(assert (=> bs!1327544 m!6650332))

(assert (=> b!5693934 d!1797081))

(declare-fun bs!1327545 () Bool)

(declare-fun d!1797083 () Bool)

(assert (= bs!1327545 (and d!1797083 b!5693914)))

(declare-fun lambda!306867 () Int)

(assert (=> bs!1327545 (= lambda!306867 lambda!306809)))

(assert (=> d!1797083 true))

(assert (=> d!1797083 (= (derivationStepZipper!1770 lt!2271973 (h!69684 s!2326)) (flatMap!1300 lt!2271973 lambda!306867))))

(declare-fun bs!1327546 () Bool)

(assert (= bs!1327546 d!1797083))

(declare-fun m!6650910 () Bool)

(assert (=> bs!1327546 m!6650910))

(assert (=> b!5693934 d!1797083))

(declare-fun b!5694642 () Bool)

(declare-fun e!3503604 () Regex!15687)

(assert (=> b!5694642 (= e!3503604 EmptyLang!15687)))

(declare-fun b!5694643 () Bool)

(declare-fun e!3503600 () Bool)

(declare-fun e!3503603 () Bool)

(assert (=> b!5694643 (= e!3503600 e!3503603)))

(declare-fun c!1002638 () Bool)

(assert (=> b!5694643 (= c!1002638 (isEmpty!35089 (unfocusZipperList!1115 zl!343)))))

(declare-fun b!5694644 () Bool)

(declare-fun e!3503602 () Bool)

(assert (=> b!5694644 (= e!3503602 (isEmpty!35089 (t!376679 (unfocusZipperList!1115 zl!343))))))

(declare-fun d!1797085 () Bool)

(assert (=> d!1797085 e!3503600))

(declare-fun res!2404801 () Bool)

(assert (=> d!1797085 (=> (not res!2404801) (not e!3503600))))

(declare-fun lt!2272073 () Regex!15687)

(assert (=> d!1797085 (= res!2404801 (validRegex!7423 lt!2272073))))

(declare-fun e!3503605 () Regex!15687)

(assert (=> d!1797085 (= lt!2272073 e!3503605)))

(declare-fun c!1002636 () Bool)

(assert (=> d!1797085 (= c!1002636 e!3503602)))

(declare-fun res!2404800 () Bool)

(assert (=> d!1797085 (=> (not res!2404800) (not e!3503602))))

(assert (=> d!1797085 (= res!2404800 ((_ is Cons!63237) (unfocusZipperList!1115 zl!343)))))

(declare-fun lambda!306870 () Int)

(declare-fun forall!14828 (List!63361 Int) Bool)

(assert (=> d!1797085 (forall!14828 (unfocusZipperList!1115 zl!343) lambda!306870)))

(assert (=> d!1797085 (= (generalisedUnion!1550 (unfocusZipperList!1115 zl!343)) lt!2272073)))

(declare-fun b!5694645 () Bool)

(assert (=> b!5694645 (= e!3503604 (Union!15687 (h!69685 (unfocusZipperList!1115 zl!343)) (generalisedUnion!1550 (t!376679 (unfocusZipperList!1115 zl!343)))))))

(declare-fun b!5694646 () Bool)

(declare-fun e!3503601 () Bool)

(assert (=> b!5694646 (= e!3503603 e!3503601)))

(declare-fun c!1002637 () Bool)

(declare-fun tail!11166 (List!63361) List!63361)

(assert (=> b!5694646 (= c!1002637 (isEmpty!35089 (tail!11166 (unfocusZipperList!1115 zl!343))))))

(declare-fun b!5694647 () Bool)

(declare-fun head!12071 (List!63361) Regex!15687)

(assert (=> b!5694647 (= e!3503601 (= lt!2272073 (head!12071 (unfocusZipperList!1115 zl!343))))))

(declare-fun b!5694648 () Bool)

(assert (=> b!5694648 (= e!3503605 (h!69685 (unfocusZipperList!1115 zl!343)))))

(declare-fun b!5694649 () Bool)

(declare-fun isUnion!644 (Regex!15687) Bool)

(assert (=> b!5694649 (= e!3503601 (isUnion!644 lt!2272073))))

(declare-fun b!5694650 () Bool)

(declare-fun isEmptyLang!1214 (Regex!15687) Bool)

(assert (=> b!5694650 (= e!3503603 (isEmptyLang!1214 lt!2272073))))

(declare-fun b!5694651 () Bool)

(assert (=> b!5694651 (= e!3503605 e!3503604)))

(declare-fun c!1002635 () Bool)

(assert (=> b!5694651 (= c!1002635 ((_ is Cons!63237) (unfocusZipperList!1115 zl!343)))))

(assert (= (and d!1797085 res!2404800) b!5694644))

(assert (= (and d!1797085 c!1002636) b!5694648))

(assert (= (and d!1797085 (not c!1002636)) b!5694651))

(assert (= (and b!5694651 c!1002635) b!5694645))

(assert (= (and b!5694651 (not c!1002635)) b!5694642))

(assert (= (and d!1797085 res!2404801) b!5694643))

(assert (= (and b!5694643 c!1002638) b!5694650))

(assert (= (and b!5694643 (not c!1002638)) b!5694646))

(assert (= (and b!5694646 c!1002637) b!5694647))

(assert (= (and b!5694646 (not c!1002637)) b!5694649))

(assert (=> b!5694643 m!6650430))

(declare-fun m!6650912 () Bool)

(assert (=> b!5694643 m!6650912))

(declare-fun m!6650914 () Bool)

(assert (=> b!5694649 m!6650914))

(declare-fun m!6650916 () Bool)

(assert (=> b!5694650 m!6650916))

(declare-fun m!6650918 () Bool)

(assert (=> b!5694644 m!6650918))

(declare-fun m!6650920 () Bool)

(assert (=> d!1797085 m!6650920))

(assert (=> d!1797085 m!6650430))

(declare-fun m!6650922 () Bool)

(assert (=> d!1797085 m!6650922))

(declare-fun m!6650924 () Bool)

(assert (=> b!5694645 m!6650924))

(assert (=> b!5694646 m!6650430))

(declare-fun m!6650926 () Bool)

(assert (=> b!5694646 m!6650926))

(assert (=> b!5694646 m!6650926))

(declare-fun m!6650928 () Bool)

(assert (=> b!5694646 m!6650928))

(assert (=> b!5694647 m!6650430))

(declare-fun m!6650930 () Bool)

(assert (=> b!5694647 m!6650930))

(assert (=> b!5693944 d!1797085))

(declare-fun bs!1327547 () Bool)

(declare-fun d!1797087 () Bool)

(assert (= bs!1327547 (and d!1797087 d!1797085)))

(declare-fun lambda!306873 () Int)

(assert (=> bs!1327547 (= lambda!306873 lambda!306870)))

(declare-fun lt!2272076 () List!63361)

(assert (=> d!1797087 (forall!14828 lt!2272076 lambda!306873)))

(declare-fun e!3503608 () List!63361)

(assert (=> d!1797087 (= lt!2272076 e!3503608)))

(declare-fun c!1002641 () Bool)

(assert (=> d!1797087 (= c!1002641 ((_ is Cons!63238) zl!343))))

(assert (=> d!1797087 (= (unfocusZipperList!1115 zl!343) lt!2272076)))

(declare-fun b!5694656 () Bool)

(assert (=> b!5694656 (= e!3503608 (Cons!63237 (generalisedConcat!1302 (exprs!5571 (h!69686 zl!343))) (unfocusZipperList!1115 (t!376680 zl!343))))))

(declare-fun b!5694657 () Bool)

(assert (=> b!5694657 (= e!3503608 Nil!63237)))

(assert (= (and d!1797087 c!1002641) b!5694656))

(assert (= (and d!1797087 (not c!1002641)) b!5694657))

(declare-fun m!6650932 () Bool)

(assert (=> d!1797087 m!6650932))

(assert (=> b!5694656 m!6650344))

(declare-fun m!6650934 () Bool)

(assert (=> b!5694656 m!6650934))

(assert (=> b!5693944 d!1797087))

(declare-fun d!1797089 () Bool)

(declare-fun lt!2272077 () Regex!15687)

(assert (=> d!1797089 (validRegex!7423 lt!2272077)))

(assert (=> d!1797089 (= lt!2272077 (generalisedUnion!1550 (unfocusZipperList!1115 (Cons!63238 lt!2271964 Nil!63238))))))

(assert (=> d!1797089 (= (unfocusZipper!1429 (Cons!63238 lt!2271964 Nil!63238)) lt!2272077)))

(declare-fun bs!1327548 () Bool)

(assert (= bs!1327548 d!1797089))

(declare-fun m!6650936 () Bool)

(assert (=> bs!1327548 m!6650936))

(declare-fun m!6650938 () Bool)

(assert (=> bs!1327548 m!6650938))

(assert (=> bs!1327548 m!6650938))

(declare-fun m!6650940 () Bool)

(assert (=> bs!1327548 m!6650940))

(assert (=> b!5693924 d!1797089))

(declare-fun d!1797091 () Bool)

(assert (=> d!1797091 (= (flatMap!1300 z!1189 lambda!306809) (choose!43051 z!1189 lambda!306809))))

(declare-fun bs!1327549 () Bool)

(assert (= bs!1327549 d!1797091))

(declare-fun m!6650942 () Bool)

(assert (=> bs!1327549 m!6650942))

(assert (=> b!5693914 d!1797091))

(declare-fun b!5694658 () Bool)

(declare-fun e!3503609 () (InoxSet Context!10142))

(declare-fun e!3503610 () (InoxSet Context!10142))

(assert (=> b!5694658 (= e!3503609 e!3503610)))

(declare-fun c!1002642 () Bool)

(assert (=> b!5694658 (= c!1002642 ((_ is Cons!63237) (exprs!5571 (h!69686 zl!343))))))

(declare-fun b!5694659 () Bool)

(assert (=> b!5694659 (= e!3503610 ((as const (Array Context!10142 Bool)) false))))

(declare-fun b!5694660 () Bool)

(declare-fun call!433406 () (InoxSet Context!10142))

(assert (=> b!5694660 (= e!3503610 call!433406)))

(declare-fun d!1797093 () Bool)

(declare-fun c!1002643 () Bool)

(declare-fun e!3503611 () Bool)

(assert (=> d!1797093 (= c!1002643 e!3503611)))

(declare-fun res!2404802 () Bool)

(assert (=> d!1797093 (=> (not res!2404802) (not e!3503611))))

(assert (=> d!1797093 (= res!2404802 ((_ is Cons!63237) (exprs!5571 (h!69686 zl!343))))))

(assert (=> d!1797093 (= (derivationStepZipperUp!955 (h!69686 zl!343) (h!69684 s!2326)) e!3503609)))

(declare-fun bm!433401 () Bool)

(assert (=> bm!433401 (= call!433406 (derivationStepZipperDown!1029 (h!69685 (exprs!5571 (h!69686 zl!343))) (Context!10143 (t!376679 (exprs!5571 (h!69686 zl!343)))) (h!69684 s!2326)))))

(declare-fun b!5694661 () Bool)

(assert (=> b!5694661 (= e!3503611 (nullable!5719 (h!69685 (exprs!5571 (h!69686 zl!343)))))))

(declare-fun b!5694662 () Bool)

(assert (=> b!5694662 (= e!3503609 ((_ map or) call!433406 (derivationStepZipperUp!955 (Context!10143 (t!376679 (exprs!5571 (h!69686 zl!343)))) (h!69684 s!2326))))))

(assert (= (and d!1797093 res!2404802) b!5694661))

(assert (= (and d!1797093 c!1002643) b!5694662))

(assert (= (and d!1797093 (not c!1002643)) b!5694658))

(assert (= (and b!5694658 c!1002642) b!5694660))

(assert (= (and b!5694658 (not c!1002642)) b!5694659))

(assert (= (or b!5694662 b!5694660) bm!433401))

(declare-fun m!6650944 () Bool)

(assert (=> bm!433401 m!6650944))

(assert (=> b!5694661 m!6650356))

(declare-fun m!6650946 () Bool)

(assert (=> b!5694662 m!6650946))

(assert (=> b!5693914 d!1797093))

(declare-fun d!1797095 () Bool)

(assert (=> d!1797095 (= (nullable!5719 (h!69685 (exprs!5571 (h!69686 zl!343)))) (nullableFct!1791 (h!69685 (exprs!5571 (h!69686 zl!343)))))))

(declare-fun bs!1327550 () Bool)

(assert (= bs!1327550 d!1797095))

(declare-fun m!6650948 () Bool)

(assert (=> bs!1327550 m!6650948))

(assert (=> b!5693914 d!1797095))

(declare-fun d!1797097 () Bool)

(assert (=> d!1797097 (= (flatMap!1300 z!1189 lambda!306809) (dynLambda!24744 lambda!306809 (h!69686 zl!343)))))

(declare-fun lt!2272078 () Unit!156280)

(assert (=> d!1797097 (= lt!2272078 (choose!43052 z!1189 (h!69686 zl!343) lambda!306809))))

(assert (=> d!1797097 (= z!1189 (store ((as const (Array Context!10142 Bool)) false) (h!69686 zl!343) true))))

(assert (=> d!1797097 (= (lemmaFlatMapOnSingletonSet!832 z!1189 (h!69686 zl!343) lambda!306809) lt!2272078)))

(declare-fun b_lambda!215273 () Bool)

(assert (=> (not b_lambda!215273) (not d!1797097)))

(declare-fun bs!1327551 () Bool)

(assert (= bs!1327551 d!1797097))

(assert (=> bs!1327551 m!6650360))

(declare-fun m!6650950 () Bool)

(assert (=> bs!1327551 m!6650950))

(declare-fun m!6650952 () Bool)

(assert (=> bs!1327551 m!6650952))

(declare-fun m!6650954 () Bool)

(assert (=> bs!1327551 m!6650954))

(assert (=> b!5693914 d!1797097))

(declare-fun b!5694663 () Bool)

(declare-fun e!3503615 () (InoxSet Context!10142))

(declare-fun call!433410 () (InoxSet Context!10142))

(assert (=> b!5694663 (= e!3503615 call!433410)))

(declare-fun d!1797099 () Bool)

(declare-fun c!1002648 () Bool)

(assert (=> d!1797099 (= c!1002648 (and ((_ is ElementMatch!15687) (h!69685 (exprs!5571 (h!69686 zl!343)))) (= (c!1002439 (h!69685 (exprs!5571 (h!69686 zl!343)))) (h!69684 s!2326))))))

(declare-fun e!3503614 () (InoxSet Context!10142))

(assert (=> d!1797099 (= (derivationStepZipperDown!1029 (h!69685 (exprs!5571 (h!69686 zl!343))) lt!2271951 (h!69684 s!2326)) e!3503614)))

(declare-fun b!5694664 () Bool)

(declare-fun c!1002646 () Bool)

(declare-fun e!3503612 () Bool)

(assert (=> b!5694664 (= c!1002646 e!3503612)))

(declare-fun res!2404803 () Bool)

(assert (=> b!5694664 (=> (not res!2404803) (not e!3503612))))

(assert (=> b!5694664 (= res!2404803 ((_ is Concat!24532) (h!69685 (exprs!5571 (h!69686 zl!343)))))))

(declare-fun e!3503617 () (InoxSet Context!10142))

(declare-fun e!3503616 () (InoxSet Context!10142))

(assert (=> b!5694664 (= e!3503617 e!3503616)))

(declare-fun b!5694665 () Bool)

(assert (=> b!5694665 (= e!3503614 e!3503617)))

(declare-fun c!1002645 () Bool)

(assert (=> b!5694665 (= c!1002645 ((_ is Union!15687) (h!69685 (exprs!5571 (h!69686 zl!343)))))))

(declare-fun c!1002644 () Bool)

(declare-fun call!433411 () List!63361)

(declare-fun bm!433402 () Bool)

(assert (=> bm!433402 (= call!433411 ($colon$colon!1712 (exprs!5571 lt!2271951) (ite (or c!1002646 c!1002644) (regTwo!31886 (h!69685 (exprs!5571 (h!69686 zl!343)))) (h!69685 (exprs!5571 (h!69686 zl!343))))))))

(declare-fun b!5694666 () Bool)

(assert (=> b!5694666 (= e!3503614 (store ((as const (Array Context!10142 Bool)) false) lt!2271951 true))))

(declare-fun bm!433403 () Bool)

(declare-fun call!433409 () (InoxSet Context!10142))

(declare-fun call!433407 () (InoxSet Context!10142))

(assert (=> bm!433403 (= call!433409 call!433407)))

(declare-fun b!5694667 () Bool)

(assert (=> b!5694667 (= e!3503612 (nullable!5719 (regOne!31886 (h!69685 (exprs!5571 (h!69686 zl!343))))))))

(declare-fun b!5694668 () Bool)

(declare-fun c!1002647 () Bool)

(assert (=> b!5694668 (= c!1002647 ((_ is Star!15687) (h!69685 (exprs!5571 (h!69686 zl!343)))))))

(declare-fun e!3503613 () (InoxSet Context!10142))

(assert (=> b!5694668 (= e!3503615 e!3503613)))

(declare-fun b!5694669 () Bool)

(declare-fun call!433408 () (InoxSet Context!10142))

(assert (=> b!5694669 (= e!3503616 ((_ map or) call!433408 call!433409))))

(declare-fun bm!433404 () Bool)

(declare-fun call!433412 () List!63361)

(assert (=> bm!433404 (= call!433412 call!433411)))

(declare-fun bm!433405 () Bool)

(assert (=> bm!433405 (= call!433407 (derivationStepZipperDown!1029 (ite c!1002645 (regTwo!31887 (h!69685 (exprs!5571 (h!69686 zl!343)))) (ite c!1002646 (regTwo!31886 (h!69685 (exprs!5571 (h!69686 zl!343)))) (ite c!1002644 (regOne!31886 (h!69685 (exprs!5571 (h!69686 zl!343)))) (reg!16016 (h!69685 (exprs!5571 (h!69686 zl!343))))))) (ite (or c!1002645 c!1002646) lt!2271951 (Context!10143 call!433412)) (h!69684 s!2326)))))

(declare-fun b!5694670 () Bool)

(assert (=> b!5694670 (= e!3503617 ((_ map or) call!433408 call!433407))))

(declare-fun b!5694671 () Bool)

(assert (=> b!5694671 (= e!3503613 call!433410)))

(declare-fun bm!433406 () Bool)

(assert (=> bm!433406 (= call!433410 call!433409)))

(declare-fun bm!433407 () Bool)

(assert (=> bm!433407 (= call!433408 (derivationStepZipperDown!1029 (ite c!1002645 (regOne!31887 (h!69685 (exprs!5571 (h!69686 zl!343)))) (regOne!31886 (h!69685 (exprs!5571 (h!69686 zl!343))))) (ite c!1002645 lt!2271951 (Context!10143 call!433411)) (h!69684 s!2326)))))

(declare-fun b!5694672 () Bool)

(assert (=> b!5694672 (= e!3503613 ((as const (Array Context!10142 Bool)) false))))

(declare-fun b!5694673 () Bool)

(assert (=> b!5694673 (= e!3503616 e!3503615)))

(assert (=> b!5694673 (= c!1002644 ((_ is Concat!24532) (h!69685 (exprs!5571 (h!69686 zl!343)))))))

(assert (= (and d!1797099 c!1002648) b!5694666))

(assert (= (and d!1797099 (not c!1002648)) b!5694665))

(assert (= (and b!5694665 c!1002645) b!5694670))

(assert (= (and b!5694665 (not c!1002645)) b!5694664))

(assert (= (and b!5694664 res!2404803) b!5694667))

(assert (= (and b!5694664 c!1002646) b!5694669))

(assert (= (and b!5694664 (not c!1002646)) b!5694673))

(assert (= (and b!5694673 c!1002644) b!5694663))

(assert (= (and b!5694673 (not c!1002644)) b!5694668))

(assert (= (and b!5694668 c!1002647) b!5694671))

(assert (= (and b!5694668 (not c!1002647)) b!5694672))

(assert (= (or b!5694663 b!5694671) bm!433404))

(assert (= (or b!5694663 b!5694671) bm!433406))

(assert (= (or b!5694669 bm!433404) bm!433402))

(assert (= (or b!5694669 bm!433406) bm!433403))

(assert (= (or b!5694670 bm!433403) bm!433405))

(assert (= (or b!5694670 b!5694669) bm!433407))

(declare-fun m!6650956 () Bool)

(assert (=> b!5694666 m!6650956))

(declare-fun m!6650958 () Bool)

(assert (=> bm!433402 m!6650958))

(declare-fun m!6650960 () Bool)

(assert (=> b!5694667 m!6650960))

(declare-fun m!6650962 () Bool)

(assert (=> bm!433405 m!6650962))

(declare-fun m!6650964 () Bool)

(assert (=> bm!433407 m!6650964))

(assert (=> b!5693914 d!1797099))

(declare-fun b!5694674 () Bool)

(declare-fun e!3503618 () (InoxSet Context!10142))

(declare-fun e!3503619 () (InoxSet Context!10142))

(assert (=> b!5694674 (= e!3503618 e!3503619)))

(declare-fun c!1002649 () Bool)

(assert (=> b!5694674 (= c!1002649 ((_ is Cons!63237) (exprs!5571 (Context!10143 (Cons!63237 (h!69685 (exprs!5571 (h!69686 zl!343))) (t!376679 (exprs!5571 (h!69686 zl!343))))))))))

(declare-fun b!5694675 () Bool)

(assert (=> b!5694675 (= e!3503619 ((as const (Array Context!10142 Bool)) false))))

(declare-fun b!5694676 () Bool)

(declare-fun call!433413 () (InoxSet Context!10142))

(assert (=> b!5694676 (= e!3503619 call!433413)))

(declare-fun d!1797101 () Bool)

(declare-fun c!1002650 () Bool)

(declare-fun e!3503620 () Bool)

(assert (=> d!1797101 (= c!1002650 e!3503620)))

(declare-fun res!2404804 () Bool)

(assert (=> d!1797101 (=> (not res!2404804) (not e!3503620))))

(assert (=> d!1797101 (= res!2404804 ((_ is Cons!63237) (exprs!5571 (Context!10143 (Cons!63237 (h!69685 (exprs!5571 (h!69686 zl!343))) (t!376679 (exprs!5571 (h!69686 zl!343))))))))))

(assert (=> d!1797101 (= (derivationStepZipperUp!955 (Context!10143 (Cons!63237 (h!69685 (exprs!5571 (h!69686 zl!343))) (t!376679 (exprs!5571 (h!69686 zl!343))))) (h!69684 s!2326)) e!3503618)))

(declare-fun bm!433408 () Bool)

(assert (=> bm!433408 (= call!433413 (derivationStepZipperDown!1029 (h!69685 (exprs!5571 (Context!10143 (Cons!63237 (h!69685 (exprs!5571 (h!69686 zl!343))) (t!376679 (exprs!5571 (h!69686 zl!343))))))) (Context!10143 (t!376679 (exprs!5571 (Context!10143 (Cons!63237 (h!69685 (exprs!5571 (h!69686 zl!343))) (t!376679 (exprs!5571 (h!69686 zl!343)))))))) (h!69684 s!2326)))))

(declare-fun b!5694677 () Bool)

(assert (=> b!5694677 (= e!3503620 (nullable!5719 (h!69685 (exprs!5571 (Context!10143 (Cons!63237 (h!69685 (exprs!5571 (h!69686 zl!343))) (t!376679 (exprs!5571 (h!69686 zl!343)))))))))))

(declare-fun b!5694678 () Bool)

(assert (=> b!5694678 (= e!3503618 ((_ map or) call!433413 (derivationStepZipperUp!955 (Context!10143 (t!376679 (exprs!5571 (Context!10143 (Cons!63237 (h!69685 (exprs!5571 (h!69686 zl!343))) (t!376679 (exprs!5571 (h!69686 zl!343)))))))) (h!69684 s!2326))))))

(assert (= (and d!1797101 res!2404804) b!5694677))

(assert (= (and d!1797101 c!1002650) b!5694678))

(assert (= (and d!1797101 (not c!1002650)) b!5694674))

(assert (= (and b!5694674 c!1002649) b!5694676))

(assert (= (and b!5694674 (not c!1002649)) b!5694675))

(assert (= (or b!5694678 b!5694676) bm!433408))

(declare-fun m!6650966 () Bool)

(assert (=> bm!433408 m!6650966))

(declare-fun m!6650968 () Bool)

(assert (=> b!5694677 m!6650968))

(declare-fun m!6650970 () Bool)

(assert (=> b!5694678 m!6650970))

(assert (=> b!5693914 d!1797101))

(declare-fun b!5694679 () Bool)

(declare-fun e!3503621 () (InoxSet Context!10142))

(declare-fun e!3503622 () (InoxSet Context!10142))

(assert (=> b!5694679 (= e!3503621 e!3503622)))

(declare-fun c!1002651 () Bool)

(assert (=> b!5694679 (= c!1002651 ((_ is Cons!63237) (exprs!5571 lt!2271951)))))

(declare-fun b!5694680 () Bool)

(assert (=> b!5694680 (= e!3503622 ((as const (Array Context!10142 Bool)) false))))

(declare-fun b!5694681 () Bool)

(declare-fun call!433414 () (InoxSet Context!10142))

(assert (=> b!5694681 (= e!3503622 call!433414)))

(declare-fun d!1797103 () Bool)

(declare-fun c!1002652 () Bool)

(declare-fun e!3503623 () Bool)

(assert (=> d!1797103 (= c!1002652 e!3503623)))

(declare-fun res!2404805 () Bool)

(assert (=> d!1797103 (=> (not res!2404805) (not e!3503623))))

(assert (=> d!1797103 (= res!2404805 ((_ is Cons!63237) (exprs!5571 lt!2271951)))))

(assert (=> d!1797103 (= (derivationStepZipperUp!955 lt!2271951 (h!69684 s!2326)) e!3503621)))

(declare-fun bm!433409 () Bool)

(assert (=> bm!433409 (= call!433414 (derivationStepZipperDown!1029 (h!69685 (exprs!5571 lt!2271951)) (Context!10143 (t!376679 (exprs!5571 lt!2271951))) (h!69684 s!2326)))))

(declare-fun b!5694682 () Bool)

(assert (=> b!5694682 (= e!3503623 (nullable!5719 (h!69685 (exprs!5571 lt!2271951))))))

(declare-fun b!5694683 () Bool)

(assert (=> b!5694683 (= e!3503621 ((_ map or) call!433414 (derivationStepZipperUp!955 (Context!10143 (t!376679 (exprs!5571 lt!2271951))) (h!69684 s!2326))))))

(assert (= (and d!1797103 res!2404805) b!5694682))

(assert (= (and d!1797103 c!1002652) b!5694683))

(assert (= (and d!1797103 (not c!1002652)) b!5694679))

(assert (= (and b!5694679 c!1002651) b!5694681))

(assert (= (and b!5694679 (not c!1002651)) b!5694680))

(assert (= (or b!5694683 b!5694681) bm!433409))

(declare-fun m!6650972 () Bool)

(assert (=> bm!433409 m!6650972))

(declare-fun m!6650974 () Bool)

(assert (=> b!5694682 m!6650974))

(declare-fun m!6650976 () Bool)

(assert (=> b!5694683 m!6650976))

(assert (=> b!5693914 d!1797103))

(declare-fun bs!1327552 () Bool)

(declare-fun d!1797105 () Bool)

(assert (= bs!1327552 (and d!1797105 d!1797085)))

(declare-fun lambda!306876 () Int)

(assert (=> bs!1327552 (= lambda!306876 lambda!306870)))

(declare-fun bs!1327553 () Bool)

(assert (= bs!1327553 (and d!1797105 d!1797087)))

(assert (=> bs!1327553 (= lambda!306876 lambda!306873)))

(assert (=> d!1797105 (= (inv!82464 setElem!38115) (forall!14828 (exprs!5571 setElem!38115) lambda!306876))))

(declare-fun bs!1327554 () Bool)

(assert (= bs!1327554 d!1797105))

(declare-fun m!6650978 () Bool)

(assert (=> bs!1327554 m!6650978))

(assert (=> setNonEmpty!38115 d!1797105))

(declare-fun bs!1327555 () Bool)

(declare-fun d!1797107 () Bool)

(assert (= bs!1327555 (and d!1797107 d!1797085)))

(declare-fun lambda!306877 () Int)

(assert (=> bs!1327555 (= lambda!306877 lambda!306870)))

(declare-fun bs!1327556 () Bool)

(assert (= bs!1327556 (and d!1797107 d!1797087)))

(assert (=> bs!1327556 (= lambda!306877 lambda!306873)))

(declare-fun bs!1327557 () Bool)

(assert (= bs!1327557 (and d!1797107 d!1797105)))

(assert (=> bs!1327557 (= lambda!306877 lambda!306876)))

(assert (=> d!1797107 (= (inv!82464 (h!69686 zl!343)) (forall!14828 (exprs!5571 (h!69686 zl!343)) lambda!306877))))

(declare-fun bs!1327558 () Bool)

(assert (= bs!1327558 d!1797107))

(declare-fun m!6650980 () Bool)

(assert (=> bs!1327558 m!6650980))

(assert (=> b!5693926 d!1797107))

(declare-fun d!1797109 () Bool)

(declare-fun lt!2272079 () Regex!15687)

(assert (=> d!1797109 (validRegex!7423 lt!2272079)))

(assert (=> d!1797109 (= lt!2272079 (generalisedUnion!1550 (unfocusZipperList!1115 (Cons!63238 lt!2271945 Nil!63238))))))

(assert (=> d!1797109 (= (unfocusZipper!1429 (Cons!63238 lt!2271945 Nil!63238)) lt!2272079)))

(declare-fun bs!1327559 () Bool)

(assert (= bs!1327559 d!1797109))

(declare-fun m!6650982 () Bool)

(assert (=> bs!1327559 m!6650982))

(declare-fun m!6650984 () Bool)

(assert (=> bs!1327559 m!6650984))

(assert (=> bs!1327559 m!6650984))

(declare-fun m!6650986 () Bool)

(assert (=> bs!1327559 m!6650986))

(assert (=> b!5693916 d!1797109))

(declare-fun bs!1327560 () Bool)

(declare-fun d!1797111 () Bool)

(assert (= bs!1327560 (and d!1797111 d!1797047)))

(declare-fun lambda!306878 () Int)

(assert (=> bs!1327560 (not (= lambda!306878 lambda!306856))))

(declare-fun bs!1327561 () Bool)

(assert (= bs!1327561 (and d!1797111 b!5693947)))

(assert (=> bs!1327561 (= (= lt!2271972 (regOne!31886 r!7292)) (= lambda!306878 lambda!306807))))

(declare-fun bs!1327562 () Bool)

(assert (= bs!1327562 (and d!1797111 b!5694549)))

(assert (=> bs!1327562 (not (= lambda!306878 lambda!306861))))

(declare-fun bs!1327563 () Bool)

(assert (= bs!1327563 (and d!1797111 b!5694560)))

(assert (=> bs!1327563 (not (= lambda!306878 lambda!306863))))

(declare-fun bs!1327564 () Bool)

(assert (= bs!1327564 (and d!1797111 d!1797045)))

(assert (=> bs!1327564 (= (= lt!2271972 (regOne!31886 r!7292)) (= lambda!306878 lambda!306850))))

(assert (=> bs!1327561 (not (= lambda!306878 lambda!306808))))

(assert (=> bs!1327560 (= (= lt!2271972 (regOne!31886 r!7292)) (= lambda!306878 lambda!306855))))

(declare-fun bs!1327565 () Bool)

(assert (= bs!1327565 (and d!1797111 b!5693927)))

(assert (=> bs!1327565 (= lambda!306878 lambda!306810)))

(assert (=> bs!1327565 (not (= lambda!306878 lambda!306811))))

(declare-fun bs!1327566 () Bool)

(assert (= bs!1327566 (and d!1797111 b!5694547)))

(assert (=> bs!1327566 (not (= lambda!306878 lambda!306862))))

(declare-fun bs!1327567 () Bool)

(assert (= bs!1327567 (and d!1797111 b!5694558)))

(assert (=> bs!1327567 (not (= lambda!306878 lambda!306864))))

(assert (=> d!1797111 true))

(assert (=> d!1797111 true))

(assert (=> d!1797111 true))

(declare-fun lambda!306879 () Int)

(assert (=> bs!1327560 (= (= lt!2271972 (regOne!31886 r!7292)) (= lambda!306879 lambda!306856))))

(assert (=> bs!1327561 (not (= lambda!306879 lambda!306807))))

(declare-fun bs!1327568 () Bool)

(assert (= bs!1327568 d!1797111))

(assert (=> bs!1327568 (not (= lambda!306879 lambda!306878))))

(assert (=> bs!1327562 (not (= lambda!306879 lambda!306861))))

(assert (=> bs!1327563 (not (= lambda!306879 lambda!306863))))

(assert (=> bs!1327564 (not (= lambda!306879 lambda!306850))))

(assert (=> bs!1327561 (= (= lt!2271972 (regOne!31886 r!7292)) (= lambda!306879 lambda!306808))))

(assert (=> bs!1327560 (not (= lambda!306879 lambda!306855))))

(assert (=> bs!1327565 (not (= lambda!306879 lambda!306810))))

(assert (=> bs!1327565 (= lambda!306879 lambda!306811)))

(assert (=> bs!1327566 (= (and (= lt!2271972 (regOne!31886 lt!2271965)) (= (regTwo!31886 r!7292) (regTwo!31886 lt!2271965))) (= lambda!306879 lambda!306862))))

(assert (=> bs!1327567 (= (= lt!2271972 (regOne!31886 r!7292)) (= lambda!306879 lambda!306864))))

(assert (=> d!1797111 true))

(assert (=> d!1797111 true))

(assert (=> d!1797111 true))

(assert (=> d!1797111 (= (Exists!2787 lambda!306878) (Exists!2787 lambda!306879))))

(declare-fun lt!2272080 () Unit!156280)

(assert (=> d!1797111 (= lt!2272080 (choose!43048 lt!2271972 (regTwo!31886 r!7292) s!2326))))

(assert (=> d!1797111 (validRegex!7423 lt!2271972)))

(assert (=> d!1797111 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1416 lt!2271972 (regTwo!31886 r!7292) s!2326) lt!2272080)))

(declare-fun m!6650988 () Bool)

(assert (=> bs!1327568 m!6650988))

(declare-fun m!6650990 () Bool)

(assert (=> bs!1327568 m!6650990))

(declare-fun m!6650992 () Bool)

(assert (=> bs!1327568 m!6650992))

(declare-fun m!6650994 () Bool)

(assert (=> bs!1327568 m!6650994))

(assert (=> b!5693927 d!1797111))

(declare-fun d!1797113 () Bool)

(assert (=> d!1797113 (= (isDefined!12399 lt!2271967) (not (isEmpty!35094 lt!2271967)))))

(declare-fun bs!1327569 () Bool)

(assert (= bs!1327569 d!1797113))

(declare-fun m!6650996 () Bool)

(assert (=> bs!1327569 m!6650996))

(assert (=> b!5693927 d!1797113))

(declare-fun b!5694684 () Bool)

(declare-fun e!3503625 () Option!15696)

(declare-fun e!3503624 () Option!15696)

(assert (=> b!5694684 (= e!3503625 e!3503624)))

(declare-fun c!1002654 () Bool)

(assert (=> b!5694684 (= c!1002654 ((_ is Nil!63236) s!2326))))

(declare-fun b!5694685 () Bool)

(assert (=> b!5694685 (= e!3503625 (Some!15695 (tuple2!65569 Nil!63236 s!2326)))))

(declare-fun b!5694686 () Bool)

(declare-fun e!3503626 () Bool)

(declare-fun lt!2272083 () Option!15696)

(assert (=> b!5694686 (= e!3503626 (not (isDefined!12399 lt!2272083)))))

(declare-fun b!5694687 () Bool)

(declare-fun e!3503628 () Bool)

(assert (=> b!5694687 (= e!3503628 (= (++!13879 (_1!36087 (get!21790 lt!2272083)) (_2!36087 (get!21790 lt!2272083))) s!2326))))

(declare-fun d!1797115 () Bool)

(assert (=> d!1797115 e!3503626))

(declare-fun res!2404807 () Bool)

(assert (=> d!1797115 (=> res!2404807 e!3503626)))

(assert (=> d!1797115 (= res!2404807 e!3503628)))

(declare-fun res!2404809 () Bool)

(assert (=> d!1797115 (=> (not res!2404809) (not e!3503628))))

(assert (=> d!1797115 (= res!2404809 (isDefined!12399 lt!2272083))))

(assert (=> d!1797115 (= lt!2272083 e!3503625)))

(declare-fun c!1002653 () Bool)

(declare-fun e!3503627 () Bool)

(assert (=> d!1797115 (= c!1002653 e!3503627)))

(declare-fun res!2404810 () Bool)

(assert (=> d!1797115 (=> (not res!2404810) (not e!3503627))))

(assert (=> d!1797115 (= res!2404810 (matchR!7872 lt!2271972 Nil!63236))))

(assert (=> d!1797115 (validRegex!7423 lt!2271972)))

(assert (=> d!1797115 (= (findConcatSeparation!2110 lt!2271972 (regTwo!31886 r!7292) Nil!63236 s!2326 s!2326) lt!2272083)))

(declare-fun b!5694688 () Bool)

(assert (=> b!5694688 (= e!3503627 (matchR!7872 (regTwo!31886 r!7292) s!2326))))

(declare-fun b!5694689 () Bool)

(declare-fun lt!2272081 () Unit!156280)

(declare-fun lt!2272082 () Unit!156280)

(assert (=> b!5694689 (= lt!2272081 lt!2272082)))

(assert (=> b!5694689 (= (++!13879 (++!13879 Nil!63236 (Cons!63236 (h!69684 s!2326) Nil!63236)) (t!376678 s!2326)) s!2326)))

(assert (=> b!5694689 (= lt!2272082 (lemmaMoveElementToOtherListKeepsConcatEq!2048 Nil!63236 (h!69684 s!2326) (t!376678 s!2326) s!2326))))

(assert (=> b!5694689 (= e!3503624 (findConcatSeparation!2110 lt!2271972 (regTwo!31886 r!7292) (++!13879 Nil!63236 (Cons!63236 (h!69684 s!2326) Nil!63236)) (t!376678 s!2326) s!2326))))

(declare-fun b!5694690 () Bool)

(declare-fun res!2404808 () Bool)

(assert (=> b!5694690 (=> (not res!2404808) (not e!3503628))))

(assert (=> b!5694690 (= res!2404808 (matchR!7872 lt!2271972 (_1!36087 (get!21790 lt!2272083))))))

(declare-fun b!5694691 () Bool)

(assert (=> b!5694691 (= e!3503624 None!15695)))

(declare-fun b!5694692 () Bool)

(declare-fun res!2404806 () Bool)

(assert (=> b!5694692 (=> (not res!2404806) (not e!3503628))))

(assert (=> b!5694692 (= res!2404806 (matchR!7872 (regTwo!31886 r!7292) (_2!36087 (get!21790 lt!2272083))))))

(assert (= (and d!1797115 res!2404810) b!5694688))

(assert (= (and d!1797115 c!1002653) b!5694685))

(assert (= (and d!1797115 (not c!1002653)) b!5694684))

(assert (= (and b!5694684 c!1002654) b!5694691))

(assert (= (and b!5694684 (not c!1002654)) b!5694689))

(assert (= (and d!1797115 res!2404809) b!5694690))

(assert (= (and b!5694690 res!2404808) b!5694692))

(assert (= (and b!5694692 res!2404806) b!5694687))

(assert (= (and d!1797115 (not res!2404807)) b!5694686))

(assert (=> b!5694689 m!6650796))

(assert (=> b!5694689 m!6650796))

(assert (=> b!5694689 m!6650798))

(assert (=> b!5694689 m!6650800))

(assert (=> b!5694689 m!6650796))

(declare-fun m!6650998 () Bool)

(assert (=> b!5694689 m!6650998))

(assert (=> b!5694688 m!6650804))

(declare-fun m!6651000 () Bool)

(assert (=> d!1797115 m!6651000))

(declare-fun m!6651002 () Bool)

(assert (=> d!1797115 m!6651002))

(assert (=> d!1797115 m!6650994))

(declare-fun m!6651004 () Bool)

(assert (=> b!5694692 m!6651004))

(declare-fun m!6651006 () Bool)

(assert (=> b!5694692 m!6651006))

(assert (=> b!5694690 m!6651004))

(declare-fun m!6651008 () Bool)

(assert (=> b!5694690 m!6651008))

(assert (=> b!5694686 m!6651000))

(assert (=> b!5694687 m!6651004))

(declare-fun m!6651010 () Bool)

(assert (=> b!5694687 m!6651010))

(assert (=> b!5693927 d!1797115))

(declare-fun b!5694701 () Bool)

(declare-fun e!3503633 () List!63360)

(assert (=> b!5694701 (= e!3503633 (_2!36087 lt!2271947))))

(declare-fun d!1797117 () Bool)

(declare-fun e!3503634 () Bool)

(assert (=> d!1797117 e!3503634))

(declare-fun res!2404815 () Bool)

(assert (=> d!1797117 (=> (not res!2404815) (not e!3503634))))

(declare-fun lt!2272086 () List!63360)

(declare-fun content!11463 (List!63360) (InoxSet C!31644))

(assert (=> d!1797117 (= res!2404815 (= (content!11463 lt!2272086) ((_ map or) (content!11463 (_1!36087 lt!2271947)) (content!11463 (_2!36087 lt!2271947)))))))

(assert (=> d!1797117 (= lt!2272086 e!3503633)))

(declare-fun c!1002657 () Bool)

(assert (=> d!1797117 (= c!1002657 ((_ is Nil!63236) (_1!36087 lt!2271947)))))

(assert (=> d!1797117 (= (++!13879 (_1!36087 lt!2271947) (_2!36087 lt!2271947)) lt!2272086)))

(declare-fun b!5694704 () Bool)

(assert (=> b!5694704 (= e!3503634 (or (not (= (_2!36087 lt!2271947) Nil!63236)) (= lt!2272086 (_1!36087 lt!2271947))))))

(declare-fun b!5694703 () Bool)

(declare-fun res!2404816 () Bool)

(assert (=> b!5694703 (=> (not res!2404816) (not e!3503634))))

(declare-fun size!40005 (List!63360) Int)

(assert (=> b!5694703 (= res!2404816 (= (size!40005 lt!2272086) (+ (size!40005 (_1!36087 lt!2271947)) (size!40005 (_2!36087 lt!2271947)))))))

(declare-fun b!5694702 () Bool)

(assert (=> b!5694702 (= e!3503633 (Cons!63236 (h!69684 (_1!36087 lt!2271947)) (++!13879 (t!376678 (_1!36087 lt!2271947)) (_2!36087 lt!2271947))))))

(assert (= (and d!1797117 c!1002657) b!5694701))

(assert (= (and d!1797117 (not c!1002657)) b!5694702))

(assert (= (and d!1797117 res!2404815) b!5694703))

(assert (= (and b!5694703 res!2404816) b!5694704))

(declare-fun m!6651012 () Bool)

(assert (=> d!1797117 m!6651012))

(declare-fun m!6651014 () Bool)

(assert (=> d!1797117 m!6651014))

(declare-fun m!6651016 () Bool)

(assert (=> d!1797117 m!6651016))

(declare-fun m!6651018 () Bool)

(assert (=> b!5694703 m!6651018))

(declare-fun m!6651020 () Bool)

(assert (=> b!5694703 m!6651020))

(declare-fun m!6651022 () Bool)

(assert (=> b!5694703 m!6651022))

(declare-fun m!6651024 () Bool)

(assert (=> b!5694702 m!6651024))

(assert (=> b!5693927 d!1797117))

(declare-fun d!1797119 () Bool)

(assert (=> d!1797119 (= (Exists!2787 lambda!306811) (choose!43046 lambda!306811))))

(declare-fun bs!1327570 () Bool)

(assert (= bs!1327570 d!1797119))

(declare-fun m!6651026 () Bool)

(assert (=> bs!1327570 m!6651026))

(assert (=> b!5693927 d!1797119))

(declare-fun d!1797121 () Bool)

(assert (=> d!1797121 (= (Exists!2787 lambda!306810) (choose!43046 lambda!306810))))

(declare-fun bs!1327571 () Bool)

(assert (= bs!1327571 d!1797121))

(declare-fun m!6651028 () Bool)

(assert (=> bs!1327571 m!6651028))

(assert (=> b!5693927 d!1797121))

(declare-fun d!1797123 () Bool)

(assert (=> d!1797123 (= (get!21790 lt!2271967) (v!51748 lt!2271967))))

(assert (=> b!5693927 d!1797123))

(declare-fun bs!1327572 () Bool)

(declare-fun d!1797125 () Bool)

(assert (= bs!1327572 (and d!1797125 d!1797047)))

(declare-fun lambda!306880 () Int)

(assert (=> bs!1327572 (not (= lambda!306880 lambda!306856))))

(declare-fun bs!1327573 () Bool)

(assert (= bs!1327573 (and d!1797125 b!5693947)))

(assert (=> bs!1327573 (= (= lt!2271972 (regOne!31886 r!7292)) (= lambda!306880 lambda!306807))))

(declare-fun bs!1327574 () Bool)

(assert (= bs!1327574 (and d!1797125 d!1797111)))

(assert (=> bs!1327574 (= lambda!306880 lambda!306878)))

(declare-fun bs!1327575 () Bool)

(assert (= bs!1327575 (and d!1797125 b!5694549)))

(assert (=> bs!1327575 (not (= lambda!306880 lambda!306861))))

(assert (=> bs!1327574 (not (= lambda!306880 lambda!306879))))

(declare-fun bs!1327576 () Bool)

(assert (= bs!1327576 (and d!1797125 b!5694560)))

(assert (=> bs!1327576 (not (= lambda!306880 lambda!306863))))

(declare-fun bs!1327577 () Bool)

(assert (= bs!1327577 (and d!1797125 d!1797045)))

(assert (=> bs!1327577 (= (= lt!2271972 (regOne!31886 r!7292)) (= lambda!306880 lambda!306850))))

(assert (=> bs!1327573 (not (= lambda!306880 lambda!306808))))

(assert (=> bs!1327572 (= (= lt!2271972 (regOne!31886 r!7292)) (= lambda!306880 lambda!306855))))

(declare-fun bs!1327578 () Bool)

(assert (= bs!1327578 (and d!1797125 b!5693927)))

(assert (=> bs!1327578 (= lambda!306880 lambda!306810)))

(assert (=> bs!1327578 (not (= lambda!306880 lambda!306811))))

(declare-fun bs!1327579 () Bool)

(assert (= bs!1327579 (and d!1797125 b!5694547)))

(assert (=> bs!1327579 (not (= lambda!306880 lambda!306862))))

(declare-fun bs!1327580 () Bool)

(assert (= bs!1327580 (and d!1797125 b!5694558)))

(assert (=> bs!1327580 (not (= lambda!306880 lambda!306864))))

(assert (=> d!1797125 true))

(assert (=> d!1797125 true))

(assert (=> d!1797125 true))

(assert (=> d!1797125 (= (isDefined!12399 (findConcatSeparation!2110 lt!2271972 (regTwo!31886 r!7292) Nil!63236 s!2326 s!2326)) (Exists!2787 lambda!306880))))

(declare-fun lt!2272087 () Unit!156280)

(assert (=> d!1797125 (= lt!2272087 (choose!43047 lt!2271972 (regTwo!31886 r!7292) s!2326))))

(assert (=> d!1797125 (validRegex!7423 lt!2271972)))

(assert (=> d!1797125 (= (lemmaFindConcatSeparationEquivalentToExists!1874 lt!2271972 (regTwo!31886 r!7292) s!2326) lt!2272087)))

(declare-fun bs!1327581 () Bool)

(assert (= bs!1327581 d!1797125))

(declare-fun m!6651030 () Bool)

(assert (=> bs!1327581 m!6651030))

(declare-fun m!6651032 () Bool)

(assert (=> bs!1327581 m!6651032))

(assert (=> bs!1327581 m!6650406))

(declare-fun m!6651034 () Bool)

(assert (=> bs!1327581 m!6651034))

(assert (=> bs!1327581 m!6650994))

(assert (=> bs!1327581 m!6650406))

(assert (=> b!5693927 d!1797125))

(declare-fun d!1797127 () Bool)

(assert (=> d!1797127 (= (isEmpty!35090 (t!376680 zl!343)) ((_ is Nil!63238) (t!376680 zl!343)))))

(assert (=> b!5693941 d!1797127))

(declare-fun bs!1327582 () Bool)

(declare-fun d!1797129 () Bool)

(assert (= bs!1327582 (and d!1797129 d!1797085)))

(declare-fun lambda!306883 () Int)

(assert (=> bs!1327582 (= lambda!306883 lambda!306870)))

(declare-fun bs!1327583 () Bool)

(assert (= bs!1327583 (and d!1797129 d!1797087)))

(assert (=> bs!1327583 (= lambda!306883 lambda!306873)))

(declare-fun bs!1327584 () Bool)

(assert (= bs!1327584 (and d!1797129 d!1797105)))

(assert (=> bs!1327584 (= lambda!306883 lambda!306876)))

(declare-fun bs!1327585 () Bool)

(assert (= bs!1327585 (and d!1797129 d!1797107)))

(assert (=> bs!1327585 (= lambda!306883 lambda!306877)))

(declare-fun b!5694725 () Bool)

(declare-fun e!3503647 () Regex!15687)

(assert (=> b!5694725 (= e!3503647 EmptyExpr!15687)))

(declare-fun b!5694726 () Bool)

(declare-fun e!3503650 () Bool)

(declare-fun lt!2272090 () Regex!15687)

(declare-fun isEmptyExpr!1203 (Regex!15687) Bool)

(assert (=> b!5694726 (= e!3503650 (isEmptyExpr!1203 lt!2272090))))

(declare-fun b!5694727 () Bool)

(declare-fun e!3503651 () Bool)

(assert (=> b!5694727 (= e!3503651 (= lt!2272090 (head!12071 (exprs!5571 (h!69686 zl!343)))))))

(declare-fun b!5694728 () Bool)

(declare-fun isConcat!726 (Regex!15687) Bool)

(assert (=> b!5694728 (= e!3503651 (isConcat!726 lt!2272090))))

(declare-fun b!5694729 () Bool)

(declare-fun e!3503648 () Regex!15687)

(assert (=> b!5694729 (= e!3503648 (h!69685 (exprs!5571 (h!69686 zl!343))))))

(declare-fun b!5694730 () Bool)

(declare-fun e!3503649 () Bool)

(assert (=> b!5694730 (= e!3503649 e!3503650)))

(declare-fun c!1002666 () Bool)

(assert (=> b!5694730 (= c!1002666 (isEmpty!35089 (exprs!5571 (h!69686 zl!343))))))

(declare-fun b!5694731 () Bool)

(assert (=> b!5694731 (= e!3503647 (Concat!24532 (h!69685 (exprs!5571 (h!69686 zl!343))) (generalisedConcat!1302 (t!376679 (exprs!5571 (h!69686 zl!343))))))))

(declare-fun b!5694732 () Bool)

(assert (=> b!5694732 (= e!3503648 e!3503647)))

(declare-fun c!1002667 () Bool)

(assert (=> b!5694732 (= c!1002667 ((_ is Cons!63237) (exprs!5571 (h!69686 zl!343))))))

(assert (=> d!1797129 e!3503649))

(declare-fun res!2404821 () Bool)

(assert (=> d!1797129 (=> (not res!2404821) (not e!3503649))))

(assert (=> d!1797129 (= res!2404821 (validRegex!7423 lt!2272090))))

(assert (=> d!1797129 (= lt!2272090 e!3503648)))

(declare-fun c!1002668 () Bool)

(declare-fun e!3503652 () Bool)

(assert (=> d!1797129 (= c!1002668 e!3503652)))

(declare-fun res!2404822 () Bool)

(assert (=> d!1797129 (=> (not res!2404822) (not e!3503652))))

(assert (=> d!1797129 (= res!2404822 ((_ is Cons!63237) (exprs!5571 (h!69686 zl!343))))))

(assert (=> d!1797129 (forall!14828 (exprs!5571 (h!69686 zl!343)) lambda!306883)))

(assert (=> d!1797129 (= (generalisedConcat!1302 (exprs!5571 (h!69686 zl!343))) lt!2272090)))

(declare-fun b!5694733 () Bool)

(assert (=> b!5694733 (= e!3503652 (isEmpty!35089 (t!376679 (exprs!5571 (h!69686 zl!343)))))))

(declare-fun b!5694734 () Bool)

(assert (=> b!5694734 (= e!3503650 e!3503651)))

(declare-fun c!1002669 () Bool)

(assert (=> b!5694734 (= c!1002669 (isEmpty!35089 (tail!11166 (exprs!5571 (h!69686 zl!343)))))))

(assert (= (and d!1797129 res!2404822) b!5694733))

(assert (= (and d!1797129 c!1002668) b!5694729))

(assert (= (and d!1797129 (not c!1002668)) b!5694732))

(assert (= (and b!5694732 c!1002667) b!5694731))

(assert (= (and b!5694732 (not c!1002667)) b!5694725))

(assert (= (and d!1797129 res!2404821) b!5694730))

(assert (= (and b!5694730 c!1002666) b!5694726))

(assert (= (and b!5694730 (not c!1002666)) b!5694734))

(assert (= (and b!5694734 c!1002669) b!5694727))

(assert (= (and b!5694734 (not c!1002669)) b!5694728))

(declare-fun m!6651036 () Bool)

(assert (=> b!5694726 m!6651036))

(declare-fun m!6651038 () Bool)

(assert (=> b!5694730 m!6651038))

(declare-fun m!6651040 () Bool)

(assert (=> d!1797129 m!6651040))

(declare-fun m!6651042 () Bool)

(assert (=> d!1797129 m!6651042))

(declare-fun m!6651044 () Bool)

(assert (=> b!5694731 m!6651044))

(declare-fun m!6651046 () Bool)

(assert (=> b!5694727 m!6651046))

(declare-fun m!6651048 () Bool)

(assert (=> b!5694728 m!6651048))

(assert (=> b!5694733 m!6650328))

(declare-fun m!6651050 () Bool)

(assert (=> b!5694734 m!6651050))

(assert (=> b!5694734 m!6651050))

(declare-fun m!6651052 () Bool)

(assert (=> b!5694734 m!6651052))

(assert (=> b!5693928 d!1797129))

(declare-fun d!1797131 () Bool)

(declare-fun e!3503655 () Bool)

(assert (=> d!1797131 e!3503655))

(declare-fun res!2404825 () Bool)

(assert (=> d!1797131 (=> (not res!2404825) (not e!3503655))))

(declare-fun lt!2272093 () List!63362)

(declare-fun noDuplicate!1625 (List!63362) Bool)

(assert (=> d!1797131 (= res!2404825 (noDuplicate!1625 lt!2272093))))

(declare-fun choose!43053 ((InoxSet Context!10142)) List!63362)

(assert (=> d!1797131 (= lt!2272093 (choose!43053 z!1189))))

(assert (=> d!1797131 (= (toList!9471 z!1189) lt!2272093)))

(declare-fun b!5694737 () Bool)

(declare-fun content!11464 (List!63362) (InoxSet Context!10142))

(assert (=> b!5694737 (= e!3503655 (= (content!11464 lt!2272093) z!1189))))

(assert (= (and d!1797131 res!2404825) b!5694737))

(declare-fun m!6651054 () Bool)

(assert (=> d!1797131 m!6651054))

(declare-fun m!6651056 () Bool)

(assert (=> d!1797131 m!6651056))

(declare-fun m!6651058 () Bool)

(assert (=> b!5694737 m!6651058))

(assert (=> b!5693949 d!1797131))

(declare-fun d!1797133 () Bool)

(declare-fun lt!2272094 () Regex!15687)

(assert (=> d!1797133 (validRegex!7423 lt!2272094)))

(assert (=> d!1797133 (= lt!2272094 (generalisedUnion!1550 (unfocusZipperList!1115 (Cons!63238 lt!2271963 Nil!63238))))))

(assert (=> d!1797133 (= (unfocusZipper!1429 (Cons!63238 lt!2271963 Nil!63238)) lt!2272094)))

(declare-fun bs!1327586 () Bool)

(assert (= bs!1327586 d!1797133))

(declare-fun m!6651060 () Bool)

(assert (=> bs!1327586 m!6651060))

(declare-fun m!6651062 () Bool)

(assert (=> bs!1327586 m!6651062))

(assert (=> bs!1327586 m!6651062))

(declare-fun m!6651064 () Bool)

(assert (=> bs!1327586 m!6651064))

(assert (=> b!5693918 d!1797133))

(declare-fun b!5694738 () Bool)

(declare-fun e!3503656 () (InoxSet Context!10142))

(declare-fun e!3503657 () (InoxSet Context!10142))

(assert (=> b!5694738 (= e!3503656 e!3503657)))

(declare-fun c!1002670 () Bool)

(assert (=> b!5694738 (= c!1002670 ((_ is Cons!63237) (exprs!5571 lt!2271964)))))

(declare-fun b!5694739 () Bool)

(assert (=> b!5694739 (= e!3503657 ((as const (Array Context!10142 Bool)) false))))

(declare-fun b!5694740 () Bool)

(declare-fun call!433415 () (InoxSet Context!10142))

(assert (=> b!5694740 (= e!3503657 call!433415)))

(declare-fun d!1797135 () Bool)

(declare-fun c!1002671 () Bool)

(declare-fun e!3503658 () Bool)

(assert (=> d!1797135 (= c!1002671 e!3503658)))

(declare-fun res!2404826 () Bool)

(assert (=> d!1797135 (=> (not res!2404826) (not e!3503658))))

(assert (=> d!1797135 (= res!2404826 ((_ is Cons!63237) (exprs!5571 lt!2271964)))))

(assert (=> d!1797135 (= (derivationStepZipperUp!955 lt!2271964 (h!69684 s!2326)) e!3503656)))

(declare-fun bm!433410 () Bool)

(assert (=> bm!433410 (= call!433415 (derivationStepZipperDown!1029 (h!69685 (exprs!5571 lt!2271964)) (Context!10143 (t!376679 (exprs!5571 lt!2271964))) (h!69684 s!2326)))))

(declare-fun b!5694741 () Bool)

(assert (=> b!5694741 (= e!3503658 (nullable!5719 (h!69685 (exprs!5571 lt!2271964))))))

(declare-fun b!5694742 () Bool)

(assert (=> b!5694742 (= e!3503656 ((_ map or) call!433415 (derivationStepZipperUp!955 (Context!10143 (t!376679 (exprs!5571 lt!2271964))) (h!69684 s!2326))))))

(assert (= (and d!1797135 res!2404826) b!5694741))

(assert (= (and d!1797135 c!1002671) b!5694742))

(assert (= (and d!1797135 (not c!1002671)) b!5694738))

(assert (= (and b!5694738 c!1002670) b!5694740))

(assert (= (and b!5694738 (not c!1002670)) b!5694739))

(assert (= (or b!5694742 b!5694740) bm!433410))

(declare-fun m!6651066 () Bool)

(assert (=> bm!433410 m!6651066))

(declare-fun m!6651068 () Bool)

(assert (=> b!5694741 m!6651068))

(declare-fun m!6651070 () Bool)

(assert (=> b!5694742 m!6651070))

(assert (=> b!5693918 d!1797135))

(declare-fun b!5694743 () Bool)

(declare-fun e!3503659 () (InoxSet Context!10142))

(declare-fun e!3503660 () (InoxSet Context!10142))

(assert (=> b!5694743 (= e!3503659 e!3503660)))

(declare-fun c!1002672 () Bool)

(assert (=> b!5694743 (= c!1002672 ((_ is Cons!63237) (exprs!5571 lt!2271963)))))

(declare-fun b!5694744 () Bool)

(assert (=> b!5694744 (= e!3503660 ((as const (Array Context!10142 Bool)) false))))

(declare-fun b!5694745 () Bool)

(declare-fun call!433416 () (InoxSet Context!10142))

(assert (=> b!5694745 (= e!3503660 call!433416)))

(declare-fun d!1797137 () Bool)

(declare-fun c!1002673 () Bool)

(declare-fun e!3503661 () Bool)

(assert (=> d!1797137 (= c!1002673 e!3503661)))

(declare-fun res!2404827 () Bool)

(assert (=> d!1797137 (=> (not res!2404827) (not e!3503661))))

(assert (=> d!1797137 (= res!2404827 ((_ is Cons!63237) (exprs!5571 lt!2271963)))))

(assert (=> d!1797137 (= (derivationStepZipperUp!955 lt!2271963 (h!69684 s!2326)) e!3503659)))

(declare-fun bm!433411 () Bool)

(assert (=> bm!433411 (= call!433416 (derivationStepZipperDown!1029 (h!69685 (exprs!5571 lt!2271963)) (Context!10143 (t!376679 (exprs!5571 lt!2271963))) (h!69684 s!2326)))))

(declare-fun b!5694746 () Bool)

(assert (=> b!5694746 (= e!3503661 (nullable!5719 (h!69685 (exprs!5571 lt!2271963))))))

(declare-fun b!5694747 () Bool)

(assert (=> b!5694747 (= e!3503659 ((_ map or) call!433416 (derivationStepZipperUp!955 (Context!10143 (t!376679 (exprs!5571 lt!2271963))) (h!69684 s!2326))))))

(assert (= (and d!1797137 res!2404827) b!5694746))

(assert (= (and d!1797137 c!1002673) b!5694747))

(assert (= (and d!1797137 (not c!1002673)) b!5694743))

(assert (= (and b!5694743 c!1002672) b!5694745))

(assert (= (and b!5694743 (not c!1002672)) b!5694744))

(assert (= (or b!5694747 b!5694745) bm!433411))

(declare-fun m!6651072 () Bool)

(assert (=> bm!433411 m!6651072))

(declare-fun m!6651074 () Bool)

(assert (=> b!5694746 m!6651074))

(declare-fun m!6651076 () Bool)

(assert (=> b!5694747 m!6651076))

(assert (=> b!5693918 d!1797137))

(declare-fun d!1797139 () Bool)

(assert (=> d!1797139 (= (flatMap!1300 lt!2271976 lambda!306809) (choose!43051 lt!2271976 lambda!306809))))

(declare-fun bs!1327587 () Bool)

(assert (= bs!1327587 d!1797139))

(declare-fun m!6651078 () Bool)

(assert (=> bs!1327587 m!6651078))

(assert (=> b!5693918 d!1797139))

(declare-fun d!1797141 () Bool)

(assert (=> d!1797141 (= (flatMap!1300 lt!2271950 lambda!306809) (dynLambda!24744 lambda!306809 lt!2271964))))

(declare-fun lt!2272095 () Unit!156280)

(assert (=> d!1797141 (= lt!2272095 (choose!43052 lt!2271950 lt!2271964 lambda!306809))))

(assert (=> d!1797141 (= lt!2271950 (store ((as const (Array Context!10142 Bool)) false) lt!2271964 true))))

(assert (=> d!1797141 (= (lemmaFlatMapOnSingletonSet!832 lt!2271950 lt!2271964 lambda!306809) lt!2272095)))

(declare-fun b_lambda!215275 () Bool)

(assert (=> (not b_lambda!215275) (not d!1797141)))

(declare-fun bs!1327588 () Bool)

(assert (= bs!1327588 d!1797141))

(assert (=> bs!1327588 m!6650374))

(declare-fun m!6651080 () Bool)

(assert (=> bs!1327588 m!6651080))

(declare-fun m!6651082 () Bool)

(assert (=> bs!1327588 m!6651082))

(assert (=> bs!1327588 m!6650384))

(assert (=> b!5693918 d!1797141))

(declare-fun d!1797143 () Bool)

(assert (=> d!1797143 (= (flatMap!1300 lt!2271976 lambda!306809) (dynLambda!24744 lambda!306809 lt!2271963))))

(declare-fun lt!2272096 () Unit!156280)

(assert (=> d!1797143 (= lt!2272096 (choose!43052 lt!2271976 lt!2271963 lambda!306809))))

(assert (=> d!1797143 (= lt!2271976 (store ((as const (Array Context!10142 Bool)) false) lt!2271963 true))))

(assert (=> d!1797143 (= (lemmaFlatMapOnSingletonSet!832 lt!2271976 lt!2271963 lambda!306809) lt!2272096)))

(declare-fun b_lambda!215277 () Bool)

(assert (=> (not b_lambda!215277) (not d!1797143)))

(declare-fun bs!1327589 () Bool)

(assert (= bs!1327589 d!1797143))

(assert (=> bs!1327589 m!6650382))

(declare-fun m!6651084 () Bool)

(assert (=> bs!1327589 m!6651084))

(declare-fun m!6651086 () Bool)

(assert (=> bs!1327589 m!6651086))

(assert (=> bs!1327589 m!6650380))

(assert (=> b!5693918 d!1797143))

(declare-fun d!1797145 () Bool)

(assert (=> d!1797145 (= (flatMap!1300 lt!2271950 lambda!306809) (choose!43051 lt!2271950 lambda!306809))))

(declare-fun bs!1327590 () Bool)

(assert (= bs!1327590 d!1797145))

(declare-fun m!6651088 () Bool)

(assert (=> bs!1327590 m!6651088))

(assert (=> b!5693918 d!1797145))

(declare-fun e!3503664 () Bool)

(assert (=> b!5693935 (= tp!1579770 e!3503664)))

(declare-fun b!5694761 () Bool)

(declare-fun tp!1579844 () Bool)

(declare-fun tp!1579843 () Bool)

(assert (=> b!5694761 (= e!3503664 (and tp!1579844 tp!1579843))))

(declare-fun b!5694758 () Bool)

(assert (=> b!5694758 (= e!3503664 tp_is_empty!40627)))

(declare-fun b!5694759 () Bool)

(declare-fun tp!1579846 () Bool)

(declare-fun tp!1579847 () Bool)

(assert (=> b!5694759 (= e!3503664 (and tp!1579846 tp!1579847))))

(declare-fun b!5694760 () Bool)

(declare-fun tp!1579845 () Bool)

(assert (=> b!5694760 (= e!3503664 tp!1579845)))

(assert (= (and b!5693935 ((_ is ElementMatch!15687) (regOne!31887 r!7292))) b!5694758))

(assert (= (and b!5693935 ((_ is Concat!24532) (regOne!31887 r!7292))) b!5694759))

(assert (= (and b!5693935 ((_ is Star!15687) (regOne!31887 r!7292))) b!5694760))

(assert (= (and b!5693935 ((_ is Union!15687) (regOne!31887 r!7292))) b!5694761))

(declare-fun e!3503665 () Bool)

(assert (=> b!5693935 (= tp!1579767 e!3503665)))

(declare-fun b!5694765 () Bool)

(declare-fun tp!1579849 () Bool)

(declare-fun tp!1579848 () Bool)

(assert (=> b!5694765 (= e!3503665 (and tp!1579849 tp!1579848))))

(declare-fun b!5694762 () Bool)

(assert (=> b!5694762 (= e!3503665 tp_is_empty!40627)))

(declare-fun b!5694763 () Bool)

(declare-fun tp!1579851 () Bool)

(declare-fun tp!1579852 () Bool)

(assert (=> b!5694763 (= e!3503665 (and tp!1579851 tp!1579852))))

(declare-fun b!5694764 () Bool)

(declare-fun tp!1579850 () Bool)

(assert (=> b!5694764 (= e!3503665 tp!1579850)))

(assert (= (and b!5693935 ((_ is ElementMatch!15687) (regTwo!31887 r!7292))) b!5694762))

(assert (= (and b!5693935 ((_ is Concat!24532) (regTwo!31887 r!7292))) b!5694763))

(assert (= (and b!5693935 ((_ is Star!15687) (regTwo!31887 r!7292))) b!5694764))

(assert (= (and b!5693935 ((_ is Union!15687) (regTwo!31887 r!7292))) b!5694765))

(declare-fun e!3503666 () Bool)

(assert (=> b!5693943 (= tp!1579773 e!3503666)))

(declare-fun b!5694769 () Bool)

(declare-fun tp!1579854 () Bool)

(declare-fun tp!1579853 () Bool)

(assert (=> b!5694769 (= e!3503666 (and tp!1579854 tp!1579853))))

(declare-fun b!5694766 () Bool)

(assert (=> b!5694766 (= e!3503666 tp_is_empty!40627)))

(declare-fun b!5694767 () Bool)

(declare-fun tp!1579856 () Bool)

(declare-fun tp!1579857 () Bool)

(assert (=> b!5694767 (= e!3503666 (and tp!1579856 tp!1579857))))

(declare-fun b!5694768 () Bool)

(declare-fun tp!1579855 () Bool)

(assert (=> b!5694768 (= e!3503666 tp!1579855)))

(assert (= (and b!5693943 ((_ is ElementMatch!15687) (regOne!31886 r!7292))) b!5694766))

(assert (= (and b!5693943 ((_ is Concat!24532) (regOne!31886 r!7292))) b!5694767))

(assert (= (and b!5693943 ((_ is Star!15687) (regOne!31886 r!7292))) b!5694768))

(assert (= (and b!5693943 ((_ is Union!15687) (regOne!31886 r!7292))) b!5694769))

(declare-fun e!3503667 () Bool)

(assert (=> b!5693943 (= tp!1579774 e!3503667)))

(declare-fun b!5694773 () Bool)

(declare-fun tp!1579859 () Bool)

(declare-fun tp!1579858 () Bool)

(assert (=> b!5694773 (= e!3503667 (and tp!1579859 tp!1579858))))

(declare-fun b!5694770 () Bool)

(assert (=> b!5694770 (= e!3503667 tp_is_empty!40627)))

(declare-fun b!5694771 () Bool)

(declare-fun tp!1579861 () Bool)

(declare-fun tp!1579862 () Bool)

(assert (=> b!5694771 (= e!3503667 (and tp!1579861 tp!1579862))))

(declare-fun b!5694772 () Bool)

(declare-fun tp!1579860 () Bool)

(assert (=> b!5694772 (= e!3503667 tp!1579860)))

(assert (= (and b!5693943 ((_ is ElementMatch!15687) (regTwo!31886 r!7292))) b!5694770))

(assert (= (and b!5693943 ((_ is Concat!24532) (regTwo!31886 r!7292))) b!5694771))

(assert (= (and b!5693943 ((_ is Star!15687) (regTwo!31886 r!7292))) b!5694772))

(assert (= (and b!5693943 ((_ is Union!15687) (regTwo!31886 r!7292))) b!5694773))

(declare-fun b!5694778 () Bool)

(declare-fun e!3503670 () Bool)

(declare-fun tp!1579865 () Bool)

(assert (=> b!5694778 (= e!3503670 (and tp_is_empty!40627 tp!1579865))))

(assert (=> b!5693925 (= tp!1579766 e!3503670)))

(assert (= (and b!5693925 ((_ is Cons!63236) (t!376678 s!2326))) b!5694778))

(declare-fun condSetEmpty!38121 () Bool)

(assert (=> setNonEmpty!38115 (= condSetEmpty!38121 (= setRest!38115 ((as const (Array Context!10142 Bool)) false)))))

(declare-fun setRes!38121 () Bool)

(assert (=> setNonEmpty!38115 (= tp!1579772 setRes!38121)))

(declare-fun setIsEmpty!38121 () Bool)

(assert (=> setIsEmpty!38121 setRes!38121))

(declare-fun e!3503673 () Bool)

(declare-fun setElem!38121 () Context!10142)

(declare-fun tp!1579870 () Bool)

(declare-fun setNonEmpty!38121 () Bool)

(assert (=> setNonEmpty!38121 (= setRes!38121 (and tp!1579870 (inv!82464 setElem!38121) e!3503673))))

(declare-fun setRest!38121 () (InoxSet Context!10142))

(assert (=> setNonEmpty!38121 (= setRest!38115 ((_ map or) (store ((as const (Array Context!10142 Bool)) false) setElem!38121 true) setRest!38121))))

(declare-fun b!5694783 () Bool)

(declare-fun tp!1579871 () Bool)

(assert (=> b!5694783 (= e!3503673 tp!1579871)))

(assert (= (and setNonEmpty!38115 condSetEmpty!38121) setIsEmpty!38121))

(assert (= (and setNonEmpty!38115 (not condSetEmpty!38121)) setNonEmpty!38121))

(assert (= setNonEmpty!38121 b!5694783))

(declare-fun m!6651090 () Bool)

(assert (=> setNonEmpty!38121 m!6651090))

(declare-fun b!5694788 () Bool)

(declare-fun e!3503676 () Bool)

(declare-fun tp!1579876 () Bool)

(declare-fun tp!1579877 () Bool)

(assert (=> b!5694788 (= e!3503676 (and tp!1579876 tp!1579877))))

(assert (=> b!5693946 (= tp!1579769 e!3503676)))

(assert (= (and b!5693946 ((_ is Cons!63237) (exprs!5571 setElem!38115))) b!5694788))

(declare-fun b!5694796 () Bool)

(declare-fun e!3503682 () Bool)

(declare-fun tp!1579882 () Bool)

(assert (=> b!5694796 (= e!3503682 tp!1579882)))

(declare-fun b!5694795 () Bool)

(declare-fun e!3503681 () Bool)

(declare-fun tp!1579883 () Bool)

(assert (=> b!5694795 (= e!3503681 (and (inv!82464 (h!69686 (t!376680 zl!343))) e!3503682 tp!1579883))))

(assert (=> b!5693926 (= tp!1579765 e!3503681)))

(assert (= b!5694795 b!5694796))

(assert (= (and b!5693926 ((_ is Cons!63238) (t!376680 zl!343))) b!5694795))

(declare-fun m!6651092 () Bool)

(assert (=> b!5694795 m!6651092))

(declare-fun e!3503683 () Bool)

(assert (=> b!5693921 (= tp!1579768 e!3503683)))

(declare-fun b!5694800 () Bool)

(declare-fun tp!1579885 () Bool)

(declare-fun tp!1579884 () Bool)

(assert (=> b!5694800 (= e!3503683 (and tp!1579885 tp!1579884))))

(declare-fun b!5694797 () Bool)

(assert (=> b!5694797 (= e!3503683 tp_is_empty!40627)))

(declare-fun b!5694798 () Bool)

(declare-fun tp!1579887 () Bool)

(declare-fun tp!1579888 () Bool)

(assert (=> b!5694798 (= e!3503683 (and tp!1579887 tp!1579888))))

(declare-fun b!5694799 () Bool)

(declare-fun tp!1579886 () Bool)

(assert (=> b!5694799 (= e!3503683 tp!1579886)))

(assert (= (and b!5693921 ((_ is ElementMatch!15687) (reg!16016 r!7292))) b!5694797))

(assert (= (and b!5693921 ((_ is Concat!24532) (reg!16016 r!7292))) b!5694798))

(assert (= (and b!5693921 ((_ is Star!15687) (reg!16016 r!7292))) b!5694799))

(assert (= (and b!5693921 ((_ is Union!15687) (reg!16016 r!7292))) b!5694800))

(declare-fun b!5694801 () Bool)

(declare-fun e!3503684 () Bool)

(declare-fun tp!1579889 () Bool)

(declare-fun tp!1579890 () Bool)

(assert (=> b!5694801 (= e!3503684 (and tp!1579889 tp!1579890))))

(assert (=> b!5693940 (= tp!1579771 e!3503684)))

(assert (= (and b!5693940 ((_ is Cons!63237) (exprs!5571 (h!69686 zl!343)))) b!5694801))

(declare-fun b_lambda!215279 () Bool)

(assert (= b_lambda!215275 (or b!5693914 b_lambda!215279)))

(declare-fun bs!1327591 () Bool)

(declare-fun d!1797147 () Bool)

(assert (= bs!1327591 (and d!1797147 b!5693914)))

(assert (=> bs!1327591 (= (dynLambda!24744 lambda!306809 lt!2271964) (derivationStepZipperUp!955 lt!2271964 (h!69684 s!2326)))))

(assert (=> bs!1327591 m!6650376))

(assert (=> d!1797141 d!1797147))

(declare-fun b_lambda!215281 () Bool)

(assert (= b_lambda!215277 (or b!5693914 b_lambda!215281)))

(declare-fun bs!1327592 () Bool)

(declare-fun d!1797149 () Bool)

(assert (= bs!1327592 (and d!1797149 b!5693914)))

(assert (=> bs!1327592 (= (dynLambda!24744 lambda!306809 lt!2271963) (derivationStepZipperUp!955 lt!2271963 (h!69684 s!2326)))))

(assert (=> bs!1327592 m!6650370))

(assert (=> d!1797143 d!1797149))

(declare-fun b_lambda!215283 () Bool)

(assert (= b_lambda!215273 (or b!5693914 b_lambda!215283)))

(declare-fun bs!1327593 () Bool)

(declare-fun d!1797151 () Bool)

(assert (= bs!1327593 (and d!1797151 b!5693914)))

(assert (=> bs!1327593 (= (dynLambda!24744 lambda!306809 (h!69686 zl!343)) (derivationStepZipperUp!955 (h!69686 zl!343) (h!69684 s!2326)))))

(assert (=> bs!1327593 m!6650354))

(assert (=> d!1797097 d!1797151))

(declare-fun b_lambda!215285 () Bool)

(assert (= b_lambda!215271 (or b!5693914 b_lambda!215285)))

(declare-fun bs!1327594 () Bool)

(declare-fun d!1797153 () Bool)

(assert (= bs!1327594 (and d!1797153 b!5693914)))

(assert (=> bs!1327594 (= (dynLambda!24744 lambda!306809 lt!2271945) (derivationStepZipperUp!955 lt!2271945 (h!69684 s!2326)))))

(assert (=> bs!1327594 m!6650336))

(assert (=> d!1797081 d!1797153))

(check-sat (not b!5694677) (not b!5694553) (not b!5694737) (not b!5694619) (not d!1797095) (not bm!433367) (not b!5694686) (not d!1797141) (not b!5694692) (not bm!433397) (not b!5694788) (not d!1797027) (not d!1797117) (not b!5694649) (not d!1797043) (not b!5694763) (not b!5694443) (not b!5694741) (not b!5694765) (not b!5694769) (not b!5694760) (not b!5694441) (not b!5694667) (not d!1797115) (not b!5694800) (not b!5694599) (not b!5694645) (not bm!433409) (not bs!1327593) (not b!5694678) tp_is_empty!40627 (not b!5694572) (not b!5694731) (not b_lambda!215283) (not b_lambda!215281) (not b!5694702) (not d!1797121) (not d!1797065) (not b!5694764) (not bm!433384) (not d!1797139) (not d!1797077) (not bm!433365) (not d!1797113) (not b!5694767) (not b!5694778) (not d!1797059) (not b!5694795) (not b_lambda!215279) (not bm!433401) (not b!5694733) (not d!1797055) (not bm!433387) (not d!1797125) (not d!1797041) (not b!5694313) (not b!5694683) (not b!5694459) (not bm!433410) (not b!5694688) (not b!5694574) (not bm!433407) (not b!5694742) (not b!5694646) (not b!5694446) (not b!5694801) (not b!5694727) (not b!5694467) (not d!1797087) (not d!1797081) (not b!5694464) (not b!5694618) (not d!1797129) (not d!1797111) (not b!5694542) (not b!5694643) (not b!5694662) (not b!5694734) (not b!5694460) (not b!5694746) (not bm!433411) (not d!1797133) (not b!5694440) (not b!5694798) (not d!1797075) (not b!5694726) (not b!5694644) (not b!5694384) (not setNonEmpty!38121) (not bm!433388) (not b!5694546) (not bm!433400) (not b!5694503) (not b!5694759) (not bm!433405) (not b!5694504) (not b!5694799) (not d!1797053) (not d!1797051) (not d!1797089) (not bs!1327591) (not d!1797031) (not b!5694385) (not d!1797071) (not b!5694507) (not d!1797145) (not b!5694768) (not b!5694465) (not b!5694557) (not b!5694730) (not b!5694394) (not b!5694771) (not bm!433386) (not b!5694466) (not d!1797047) (not d!1797119) (not b!5694796) (not b!5694747) (not d!1797131) (not b!5694508) (not d!1797001) (not b!5694656) (not d!1797109) (not b!5694647) (not bm!433408) (not d!1797107) (not d!1797105) (not d!1797085) (not d!1797069) (not b!5694497) (not b!5694783) (not bm!433396) (not d!1797049) (not b!5694689) (not d!1797091) (not b!5694728) (not b!5694575) (not b!5694565) (not b!5694395) (not bs!1327594) (not d!1797083) (not b!5694576) (not d!1797143) (not b!5694650) (not b!5694687) (not bm!433402) (not b!5694571) (not b!5694772) (not b!5694773) (not b!5694506) (not b!5694761) (not bm!433362) (not bm!433385) (not b!5694690) (not b!5694661) (not bm!433379) (not d!1797057) (not b!5694682) (not d!1797097) (not b_lambda!215285) (not b!5694444) (not b!5694442) (not d!1797061) (not b!5694703) (not bs!1327592) (not d!1797045) (not b!5694463))
(check-sat)
