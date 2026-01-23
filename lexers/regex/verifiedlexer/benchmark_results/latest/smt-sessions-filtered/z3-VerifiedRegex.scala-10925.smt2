; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565374 () Bool)

(assert start!565374)

(declare-fun b!5375002 () Bool)

(assert (=> b!5375002 true))

(assert (=> b!5375002 true))

(declare-fun lambda!277687 () Int)

(declare-fun lambda!277686 () Int)

(assert (=> b!5375002 (not (= lambda!277687 lambda!277686))))

(assert (=> b!5375002 true))

(assert (=> b!5375002 true))

(declare-fun b!5374975 () Bool)

(assert (=> b!5374975 true))

(declare-fun bs!1244354 () Bool)

(declare-fun b!5374996 () Bool)

(assert (= bs!1244354 (and b!5374996 b!5375002)))

(declare-fun lambda!277689 () Int)

(declare-datatypes ((C!30464 0))(
  ( (C!30465 (val!24934 Int)) )
))
(declare-datatypes ((Regex!15097 0))(
  ( (ElementMatch!15097 (c!936583 C!30464)) (Concat!23942 (regOne!30706 Regex!15097) (regTwo!30706 Regex!15097)) (EmptyExpr!15097) (Star!15097 (reg!15426 Regex!15097)) (EmptyLang!15097) (Union!15097 (regOne!30707 Regex!15097) (regTwo!30707 Regex!15097)) )
))
(declare-fun r!7292 () Regex!15097)

(declare-fun lt!2189037 () Regex!15097)

(assert (=> bs!1244354 (= (= lt!2189037 (regOne!30706 r!7292)) (= lambda!277689 lambda!277686))))

(assert (=> bs!1244354 (not (= lambda!277689 lambda!277687))))

(assert (=> b!5374996 true))

(assert (=> b!5374996 true))

(assert (=> b!5374996 true))

(declare-fun lambda!277690 () Int)

(assert (=> bs!1244354 (not (= lambda!277690 lambda!277686))))

(assert (=> bs!1244354 (= (= lt!2189037 (regOne!30706 r!7292)) (= lambda!277690 lambda!277687))))

(assert (=> b!5374996 (not (= lambda!277690 lambda!277689))))

(assert (=> b!5374996 true))

(assert (=> b!5374996 true))

(assert (=> b!5374996 true))

(declare-fun bs!1244355 () Bool)

(declare-fun b!5374973 () Bool)

(assert (= bs!1244355 (and b!5374973 b!5375002)))

(declare-datatypes ((List!61590 0))(
  ( (Nil!61466) (Cons!61466 (h!67914 C!30464) (t!374813 List!61590)) )
))
(declare-fun s!2326 () List!61590)

(declare-datatypes ((tuple2!64592 0))(
  ( (tuple2!64593 (_1!35599 List!61590) (_2!35599 List!61590)) )
))
(declare-fun lt!2189026 () tuple2!64592)

(declare-fun lambda!277691 () Int)

(assert (=> bs!1244355 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277691 lambda!277686))))

(assert (=> bs!1244355 (not (= lambda!277691 lambda!277687))))

(declare-fun bs!1244356 () Bool)

(assert (= bs!1244356 (and b!5374973 b!5374996)))

(assert (=> bs!1244356 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277691 lambda!277689))))

(assert (=> bs!1244356 (not (= lambda!277691 lambda!277690))))

(assert (=> b!5374973 true))

(assert (=> b!5374973 true))

(assert (=> b!5374973 true))

(declare-fun lambda!277692 () Int)

(assert (=> b!5374973 (not (= lambda!277692 lambda!277691))))

(assert (=> bs!1244356 (not (= lambda!277692 lambda!277689))))

(assert (=> bs!1244355 (not (= lambda!277692 lambda!277687))))

(assert (=> bs!1244355 (not (= lambda!277692 lambda!277686))))

(assert (=> bs!1244356 (not (= lambda!277692 lambda!277690))))

(assert (=> b!5374973 true))

(assert (=> b!5374973 true))

(assert (=> b!5374973 true))

(declare-fun lambda!277693 () Int)

(assert (=> b!5374973 (not (= lambda!277693 lambda!277691))))

(assert (=> bs!1244356 (not (= lambda!277693 lambda!277689))))

(assert (=> bs!1244355 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277693 lambda!277687))))

(assert (=> bs!1244355 (not (= lambda!277693 lambda!277686))))

(assert (=> b!5374973 (not (= lambda!277693 lambda!277692))))

(assert (=> bs!1244356 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277693 lambda!277690))))

(assert (=> b!5374973 true))

(assert (=> b!5374973 true))

(assert (=> b!5374973 true))

(declare-fun b!5374967 () Bool)

(declare-fun e!3334809 () Bool)

(declare-fun lt!2189044 () Bool)

(declare-fun lt!2189022 () Bool)

(assert (=> b!5374967 (= e!3334809 (or (not lt!2189044) lt!2189022))))

(declare-fun b!5374968 () Bool)

(declare-fun e!3334814 () Bool)

(declare-fun tp_is_empty!39447 () Bool)

(assert (=> b!5374968 (= e!3334814 tp_is_empty!39447)))

(declare-fun b!5374969 () Bool)

(declare-fun e!3334805 () Bool)

(declare-fun tp!1490628 () Bool)

(assert (=> b!5374969 (= e!3334805 (and tp_is_empty!39447 tp!1490628))))

(declare-fun b!5374970 () Bool)

(declare-fun e!3334807 () Bool)

(declare-fun e!3334808 () Bool)

(assert (=> b!5374970 (= e!3334807 e!3334808)))

(declare-fun res!2281760 () Bool)

(assert (=> b!5374970 (=> res!2281760 e!3334808)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61591 0))(
  ( (Nil!61467) (Cons!61467 (h!67915 Regex!15097) (t!374814 List!61591)) )
))
(declare-datatypes ((Context!8962 0))(
  ( (Context!8963 (exprs!4981 List!61591)) )
))
(declare-fun lt!2189032 () (InoxSet Context!8962))

(declare-fun lt!2189035 () (InoxSet Context!8962))

(assert (=> b!5374970 (= res!2281760 (not (= lt!2189032 lt!2189035)))))

(declare-fun lt!2189018 () Context!8962)

(declare-fun derivationStepZipperDown!545 (Regex!15097 Context!8962 C!30464) (InoxSet Context!8962))

(assert (=> b!5374970 (= lt!2189035 (derivationStepZipperDown!545 (reg!15426 (regOne!30706 r!7292)) lt!2189018 (h!67914 s!2326)))))

(declare-fun lt!2189030 () List!61591)

(assert (=> b!5374970 (= lt!2189018 (Context!8963 lt!2189030))))

(declare-datatypes ((List!61592 0))(
  ( (Nil!61468) (Cons!61468 (h!67916 Context!8962) (t!374815 List!61592)) )
))
(declare-fun zl!343 () List!61592)

(assert (=> b!5374970 (= lt!2189030 (Cons!61467 lt!2189037 (t!374814 (exprs!4981 (h!67916 zl!343)))))))

(assert (=> b!5374970 (= lt!2189037 (Star!15097 (reg!15426 (regOne!30706 r!7292))))))

(declare-fun b!5374971 () Bool)

(declare-fun tp!1490626 () Bool)

(declare-fun tp!1490621 () Bool)

(assert (=> b!5374971 (= e!3334814 (and tp!1490626 tp!1490621))))

(declare-fun res!2281769 () Bool)

(declare-fun e!3334821 () Bool)

(assert (=> start!565374 (=> (not res!2281769) (not e!3334821))))

(declare-fun validRegex!6833 (Regex!15097) Bool)

(assert (=> start!565374 (= res!2281769 (validRegex!6833 r!7292))))

(assert (=> start!565374 e!3334821))

(assert (=> start!565374 e!3334814))

(declare-fun condSetEmpty!34853 () Bool)

(declare-fun z!1189 () (InoxSet Context!8962))

(assert (=> start!565374 (= condSetEmpty!34853 (= z!1189 ((as const (Array Context!8962 Bool)) false)))))

(declare-fun setRes!34853 () Bool)

(assert (=> start!565374 setRes!34853))

(declare-fun e!3334806 () Bool)

(assert (=> start!565374 e!3334806))

(assert (=> start!565374 e!3334805))

(declare-fun b!5374972 () Bool)

(declare-fun res!2281758 () Bool)

(declare-fun e!3334818 () Bool)

(assert (=> b!5374972 (=> res!2281758 e!3334818)))

(declare-fun matchR!7282 (Regex!15097 List!61590) Bool)

(assert (=> b!5374972 (= res!2281758 (not (matchR!7282 lt!2189037 (_1!35599 lt!2189026))))))

(declare-fun e!3334815 () Bool)

(assert (=> b!5374973 (= e!3334818 e!3334815)))

(declare-fun res!2281751 () Bool)

(assert (=> b!5374973 (=> res!2281751 e!3334815)))

(assert (=> b!5374973 (= res!2281751 (not (validRegex!6833 (reg!15426 (regOne!30706 r!7292)))))))

(declare-fun Exists!2278 (Int) Bool)

(assert (=> b!5374973 (= (Exists!2278 lambda!277691) (Exists!2278 lambda!277693))))

(declare-datatypes ((Unit!153906 0))(
  ( (Unit!153907) )
))
(declare-fun lt!2189013 () Unit!153906)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!932 (Regex!15097 Regex!15097 List!61590) Unit!153906)

(assert (=> b!5374973 (= lt!2189013 (lemmaExistCutMatchRandMatchRSpecEquivalent!932 (reg!15426 (regOne!30706 r!7292)) lt!2189037 (_1!35599 lt!2189026)))))

(assert (=> b!5374973 (= (Exists!2278 lambda!277691) (Exists!2278 lambda!277692))))

(declare-fun lt!2189050 () Unit!153906)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!362 (Regex!15097 List!61590) Unit!153906)

(assert (=> b!5374973 (= lt!2189050 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!362 (reg!15426 (regOne!30706 r!7292)) (_1!35599 lt!2189026)))))

(declare-datatypes ((Option!15208 0))(
  ( (None!15207) (Some!15207 (v!51236 tuple2!64592)) )
))
(declare-fun isDefined!11911 (Option!15208) Bool)

(declare-fun findConcatSeparation!1622 (Regex!15097 Regex!15097 List!61590 List!61590 List!61590) Option!15208)

(assert (=> b!5374973 (= (isDefined!11911 (findConcatSeparation!1622 (reg!15426 (regOne!30706 r!7292)) lt!2189037 Nil!61466 (_1!35599 lt!2189026) (_1!35599 lt!2189026))) (Exists!2278 lambda!277691))))

(declare-fun lt!2189029 () Unit!153906)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1386 (Regex!15097 Regex!15097 List!61590) Unit!153906)

(assert (=> b!5374973 (= lt!2189029 (lemmaFindConcatSeparationEquivalentToExists!1386 (reg!15426 (regOne!30706 r!7292)) lt!2189037 (_1!35599 lt!2189026)))))

(declare-fun matchRSpec!2200 (Regex!15097 List!61590) Bool)

(assert (=> b!5374973 (matchRSpec!2200 lt!2189037 (_1!35599 lt!2189026))))

(declare-fun lt!2189021 () Unit!153906)

(declare-fun mainMatchTheorem!2200 (Regex!15097 List!61590) Unit!153906)

(assert (=> b!5374973 (= lt!2189021 (mainMatchTheorem!2200 lt!2189037 (_1!35599 lt!2189026)))))

(declare-fun b!5374974 () Bool)

(declare-fun tp!1490623 () Bool)

(declare-fun tp!1490627 () Bool)

(assert (=> b!5374974 (= e!3334814 (and tp!1490623 tp!1490627))))

(declare-fun e!3334811 () Bool)

(assert (=> b!5374975 (= e!3334811 e!3334807)))

(declare-fun res!2281772 () Bool)

(assert (=> b!5374975 (=> res!2281772 e!3334807)))

(get-info :version)

(assert (=> b!5374975 (= res!2281772 (or (and ((_ is ElementMatch!15097) (regOne!30706 r!7292)) (= (c!936583 (regOne!30706 r!7292)) (h!67914 s!2326))) ((_ is Union!15097) (regOne!30706 r!7292))))))

(declare-fun lt!2189023 () Unit!153906)

(declare-fun e!3334819 () Unit!153906)

(assert (=> b!5374975 (= lt!2189023 e!3334819)))

(declare-fun c!936582 () Bool)

(declare-fun nullable!5266 (Regex!15097) Bool)

(assert (=> b!5374975 (= c!936582 (nullable!5266 (h!67915 (exprs!4981 (h!67916 zl!343)))))))

(declare-fun lambda!277688 () Int)

(declare-fun flatMap!824 ((InoxSet Context!8962) Int) (InoxSet Context!8962))

(declare-fun derivationStepZipperUp!469 (Context!8962 C!30464) (InoxSet Context!8962))

(assert (=> b!5374975 (= (flatMap!824 z!1189 lambda!277688) (derivationStepZipperUp!469 (h!67916 zl!343) (h!67914 s!2326)))))

(declare-fun lt!2189039 () Unit!153906)

(declare-fun lemmaFlatMapOnSingletonSet!356 ((InoxSet Context!8962) Context!8962 Int) Unit!153906)

(assert (=> b!5374975 (= lt!2189039 (lemmaFlatMapOnSingletonSet!356 z!1189 (h!67916 zl!343) lambda!277688))))

(declare-fun lt!2189031 () (InoxSet Context!8962))

(declare-fun lt!2189011 () Context!8962)

(assert (=> b!5374975 (= lt!2189031 (derivationStepZipperUp!469 lt!2189011 (h!67914 s!2326)))))

(assert (=> b!5374975 (= lt!2189032 (derivationStepZipperDown!545 (h!67915 (exprs!4981 (h!67916 zl!343))) lt!2189011 (h!67914 s!2326)))))

(assert (=> b!5374975 (= lt!2189011 (Context!8963 (t!374814 (exprs!4981 (h!67916 zl!343)))))))

(declare-fun lt!2189048 () (InoxSet Context!8962))

(assert (=> b!5374975 (= lt!2189048 (derivationStepZipperUp!469 (Context!8963 (Cons!61467 (h!67915 (exprs!4981 (h!67916 zl!343))) (t!374814 (exprs!4981 (h!67916 zl!343))))) (h!67914 s!2326)))))

(declare-fun b!5374976 () Bool)

(declare-fun e!3334810 () Bool)

(assert (=> b!5374976 (= e!3334821 e!3334810)))

(declare-fun res!2281766 () Bool)

(assert (=> b!5374976 (=> (not res!2281766) (not e!3334810))))

(declare-fun lt!2189042 () Regex!15097)

(assert (=> b!5374976 (= res!2281766 (= r!7292 lt!2189042))))

(declare-fun unfocusZipper!839 (List!61592) Regex!15097)

(assert (=> b!5374976 (= lt!2189042 (unfocusZipper!839 zl!343))))

(declare-fun b!5374977 () Bool)

(declare-fun e!3334804 () Bool)

(declare-fun matchZipper!1341 ((InoxSet Context!8962) List!61590) Bool)

(assert (=> b!5374977 (= e!3334804 (matchZipper!1341 lt!2189031 (t!374813 s!2326)))))

(declare-fun b!5374978 () Bool)

(declare-fun Unit!153908 () Unit!153906)

(assert (=> b!5374978 (= e!3334819 Unit!153908)))

(declare-fun b!5374979 () Bool)

(declare-fun e!3334813 () Bool)

(declare-fun e!3334803 () Bool)

(assert (=> b!5374979 (= e!3334813 e!3334803)))

(declare-fun res!2281777 () Bool)

(assert (=> b!5374979 (=> res!2281777 e!3334803)))

(declare-fun lt!2189046 () Context!8962)

(declare-fun lt!2189036 () Regex!15097)

(assert (=> b!5374979 (= res!2281777 (not (= (unfocusZipper!839 (Cons!61468 lt!2189046 Nil!61468)) lt!2189036)))))

(declare-fun lt!2189027 () Regex!15097)

(assert (=> b!5374979 (= lt!2189036 (Concat!23942 (reg!15426 (regOne!30706 r!7292)) lt!2189027))))

(declare-fun b!5374980 () Bool)

(declare-fun res!2281764 () Bool)

(declare-fun e!3334824 () Bool)

(assert (=> b!5374980 (=> res!2281764 e!3334824)))

(assert (=> b!5374980 (= res!2281764 (not ((_ is Cons!61467) (exprs!4981 (h!67916 zl!343)))))))

(declare-fun setIsEmpty!34853 () Bool)

(assert (=> setIsEmpty!34853 setRes!34853))

(declare-fun b!5374981 () Bool)

(declare-fun e!3334817 () Bool)

(declare-fun e!3334822 () Bool)

(assert (=> b!5374981 (= e!3334817 e!3334822)))

(declare-fun res!2281776 () Bool)

(assert (=> b!5374981 (=> res!2281776 e!3334822)))

(assert (=> b!5374981 (= res!2281776 (not lt!2189044))))

(assert (=> b!5374981 e!3334809))

(declare-fun res!2281768 () Bool)

(assert (=> b!5374981 (=> (not res!2281768) (not e!3334809))))

(assert (=> b!5374981 (= res!2281768 (= (matchR!7282 lt!2189036 s!2326) (matchRSpec!2200 lt!2189036 s!2326)))))

(declare-fun lt!2189033 () Unit!153906)

(assert (=> b!5374981 (= lt!2189033 (mainMatchTheorem!2200 lt!2189036 s!2326))))

(declare-fun b!5374982 () Bool)

(declare-fun e!3334812 () Bool)

(assert (=> b!5374982 (= e!3334812 e!3334813)))

(declare-fun res!2281771 () Bool)

(assert (=> b!5374982 (=> res!2281771 e!3334813)))

(assert (=> b!5374982 (= res!2281771 (not (= r!7292 lt!2189027)))))

(assert (=> b!5374982 (= lt!2189027 (Concat!23942 lt!2189037 (regTwo!30706 r!7292)))))

(declare-fun b!5374983 () Bool)

(declare-fun e!3334820 () Bool)

(assert (=> b!5374983 (= e!3334820 (nullable!5266 (regOne!30706 (regOne!30706 r!7292))))))

(declare-fun b!5374984 () Bool)

(declare-fun res!2281763 () Bool)

(assert (=> b!5374984 (=> res!2281763 e!3334824)))

(declare-fun isEmpty!33450 (List!61592) Bool)

(assert (=> b!5374984 (= res!2281763 (not (isEmpty!33450 (t!374815 zl!343))))))

(declare-fun b!5374985 () Bool)

(declare-fun e!3334823 () Bool)

(declare-fun tp!1490622 () Bool)

(assert (=> b!5374985 (= e!3334823 tp!1490622)))

(declare-fun b!5374986 () Bool)

(assert (=> b!5374986 (= e!3334808 e!3334812)))

(declare-fun res!2281762 () Bool)

(assert (=> b!5374986 (=> res!2281762 e!3334812)))

(declare-fun lt!2189020 () (InoxSet Context!8962))

(assert (=> b!5374986 (= res!2281762 (not (= lt!2189020 lt!2189035)))))

(declare-fun lt!2189024 () (InoxSet Context!8962))

(assert (=> b!5374986 (= (flatMap!824 lt!2189024 lambda!277688) (derivationStepZipperUp!469 lt!2189046 (h!67914 s!2326)))))

(declare-fun lt!2189038 () Unit!153906)

(assert (=> b!5374986 (= lt!2189038 (lemmaFlatMapOnSingletonSet!356 lt!2189024 lt!2189046 lambda!277688))))

(declare-fun lt!2189045 () (InoxSet Context!8962))

(assert (=> b!5374986 (= lt!2189045 (derivationStepZipperUp!469 lt!2189046 (h!67914 s!2326)))))

(declare-fun derivationStepZipper!1336 ((InoxSet Context!8962) C!30464) (InoxSet Context!8962))

(assert (=> b!5374986 (= lt!2189020 (derivationStepZipper!1336 lt!2189024 (h!67914 s!2326)))))

(assert (=> b!5374986 (= lt!2189024 (store ((as const (Array Context!8962 Bool)) false) lt!2189046 true))))

(assert (=> b!5374986 (= lt!2189046 (Context!8963 (Cons!61467 (reg!15426 (regOne!30706 r!7292)) lt!2189030)))))

(declare-fun b!5374987 () Bool)

(declare-fun res!2281761 () Bool)

(assert (=> b!5374987 (=> (not res!2281761) (not e!3334821))))

(declare-fun toList!8881 ((InoxSet Context!8962)) List!61592)

(assert (=> b!5374987 (= res!2281761 (= (toList!8881 z!1189) zl!343))))

(declare-fun b!5374988 () Bool)

(declare-fun tp!1490629 () Bool)

(assert (=> b!5374988 (= e!3334814 tp!1490629)))

(declare-fun b!5374989 () Bool)

(declare-fun res!2281753 () Bool)

(assert (=> b!5374989 (=> res!2281753 e!3334812)))

(assert (=> b!5374989 (= res!2281753 (not (= (matchZipper!1341 lt!2189024 s!2326) (matchZipper!1341 lt!2189020 (t!374813 s!2326)))))))

(declare-fun b!5374990 () Bool)

(declare-fun tp!1490624 () Bool)

(declare-fun inv!80989 (Context!8962) Bool)

(assert (=> b!5374990 (= e!3334806 (and (inv!80989 (h!67916 zl!343)) e!3334823 tp!1490624))))

(declare-fun b!5374991 () Bool)

(declare-fun res!2281754 () Bool)

(assert (=> b!5374991 (=> res!2281754 e!3334818)))

(declare-fun isEmpty!33451 (List!61590) Bool)

(assert (=> b!5374991 (= res!2281754 (isEmpty!33451 (_1!35599 lt!2189026)))))

(declare-fun b!5374992 () Bool)

(declare-fun res!2281781 () Bool)

(assert (=> b!5374992 (=> res!2281781 e!3334807)))

(assert (=> b!5374992 (= res!2281781 e!3334820)))

(declare-fun res!2281779 () Bool)

(assert (=> b!5374992 (=> (not res!2281779) (not e!3334820))))

(assert (=> b!5374992 (= res!2281779 ((_ is Concat!23942) (regOne!30706 r!7292)))))

(declare-fun b!5374993 () Bool)

(assert (=> b!5374993 (= e!3334803 e!3334817)))

(declare-fun res!2281765 () Bool)

(assert (=> b!5374993 (=> res!2281765 e!3334817)))

(declare-fun lt!2189047 () Context!8962)

(assert (=> b!5374993 (= res!2281765 (not (= (unfocusZipper!839 (Cons!61468 lt!2189047 Nil!61468)) (reg!15426 (regOne!30706 r!7292)))))))

(declare-fun lt!2189040 () (InoxSet Context!8962))

(assert (=> b!5374993 (= (flatMap!824 lt!2189040 lambda!277688) (derivationStepZipperUp!469 lt!2189018 (h!67914 s!2326)))))

(declare-fun lt!2189010 () Unit!153906)

(assert (=> b!5374993 (= lt!2189010 (lemmaFlatMapOnSingletonSet!356 lt!2189040 lt!2189018 lambda!277688))))

(declare-fun lt!2189025 () (InoxSet Context!8962))

(assert (=> b!5374993 (= (flatMap!824 lt!2189025 lambda!277688) (derivationStepZipperUp!469 lt!2189047 (h!67914 s!2326)))))

(declare-fun lt!2189019 () Unit!153906)

(assert (=> b!5374993 (= lt!2189019 (lemmaFlatMapOnSingletonSet!356 lt!2189025 lt!2189047 lambda!277688))))

(declare-fun lt!2189043 () (InoxSet Context!8962))

(assert (=> b!5374993 (= lt!2189043 (derivationStepZipperUp!469 lt!2189018 (h!67914 s!2326)))))

(declare-fun lt!2189014 () (InoxSet Context!8962))

(assert (=> b!5374993 (= lt!2189014 (derivationStepZipperUp!469 lt!2189047 (h!67914 s!2326)))))

(assert (=> b!5374993 (= lt!2189040 (store ((as const (Array Context!8962 Bool)) false) lt!2189018 true))))

(assert (=> b!5374993 (= lt!2189025 (store ((as const (Array Context!8962 Bool)) false) lt!2189047 true))))

(assert (=> b!5374993 (= lt!2189047 (Context!8963 (Cons!61467 (reg!15426 (regOne!30706 r!7292)) Nil!61467)))))

(declare-fun b!5374994 () Bool)

(declare-fun res!2281752 () Bool)

(assert (=> b!5374994 (=> res!2281752 e!3334807)))

(assert (=> b!5374994 (= res!2281752 (or ((_ is Concat!23942) (regOne!30706 r!7292)) (not ((_ is Star!15097) (regOne!30706 r!7292)))))))

(declare-fun b!5374995 () Bool)

(declare-fun res!2281767 () Bool)

(assert (=> b!5374995 (=> res!2281767 e!3334811)))

(declare-fun isEmpty!33452 (List!61591) Bool)

(assert (=> b!5374995 (= res!2281767 (isEmpty!33452 (t!374814 (exprs!4981 (h!67916 zl!343)))))))

(assert (=> b!5374996 (= e!3334822 e!3334818)))

(declare-fun res!2281780 () Bool)

(assert (=> b!5374996 (=> res!2281780 e!3334818)))

(declare-fun ++!13400 (List!61590 List!61590) List!61590)

(assert (=> b!5374996 (= res!2281780 (not (= (++!13400 (_1!35599 lt!2189026) (_2!35599 lt!2189026)) s!2326)))))

(declare-fun lt!2189028 () Option!15208)

(declare-fun get!21154 (Option!15208) tuple2!64592)

(assert (=> b!5374996 (= lt!2189026 (get!21154 lt!2189028))))

(assert (=> b!5374996 (= (Exists!2278 lambda!277689) (Exists!2278 lambda!277690))))

(declare-fun lt!2189049 () Unit!153906)

(assert (=> b!5374996 (= lt!2189049 (lemmaExistCutMatchRandMatchRSpecEquivalent!932 lt!2189037 (regTwo!30706 r!7292) s!2326))))

(assert (=> b!5374996 (= (isDefined!11911 lt!2189028) (Exists!2278 lambda!277689))))

(assert (=> b!5374996 (= lt!2189028 (findConcatSeparation!1622 lt!2189037 (regTwo!30706 r!7292) Nil!61466 s!2326 s!2326))))

(declare-fun lt!2189017 () Unit!153906)

(assert (=> b!5374996 (= lt!2189017 (lemmaFindConcatSeparationEquivalentToExists!1386 lt!2189037 (regTwo!30706 r!7292) s!2326))))

(declare-fun b!5374997 () Bool)

(declare-fun res!2281770 () Bool)

(assert (=> b!5374997 (=> res!2281770 e!3334824)))

(declare-fun generalisedConcat!766 (List!61591) Regex!15097)

(assert (=> b!5374997 (= res!2281770 (not (= r!7292 (generalisedConcat!766 (exprs!4981 (h!67916 zl!343))))))))

(declare-fun b!5374998 () Bool)

(assert (=> b!5374998 (= e!3334810 (not e!3334824))))

(declare-fun res!2281774 () Bool)

(assert (=> b!5374998 (=> res!2281774 e!3334824)))

(assert (=> b!5374998 (= res!2281774 (not ((_ is Cons!61468) zl!343)))))

(assert (=> b!5374998 (= lt!2189044 lt!2189022)))

(assert (=> b!5374998 (= lt!2189022 (matchRSpec!2200 r!7292 s!2326))))

(assert (=> b!5374998 (= lt!2189044 (matchR!7282 r!7292 s!2326))))

(declare-fun lt!2189016 () Unit!153906)

(assert (=> b!5374998 (= lt!2189016 (mainMatchTheorem!2200 r!7292 s!2326))))

(declare-fun b!5374999 () Bool)

(declare-fun Unit!153909 () Unit!153906)

(assert (=> b!5374999 (= e!3334819 Unit!153909)))

(declare-fun lt!2189015 () Unit!153906)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!334 ((InoxSet Context!8962) (InoxSet Context!8962) List!61590) Unit!153906)

(assert (=> b!5374999 (= lt!2189015 (lemmaZipperConcatMatchesSameAsBothZippers!334 lt!2189032 lt!2189031 (t!374813 s!2326)))))

(declare-fun res!2281755 () Bool)

(assert (=> b!5374999 (= res!2281755 (matchZipper!1341 lt!2189032 (t!374813 s!2326)))))

(assert (=> b!5374999 (=> res!2281755 e!3334804)))

(assert (=> b!5374999 (= (matchZipper!1341 ((_ map or) lt!2189032 lt!2189031) (t!374813 s!2326)) e!3334804)))

(declare-fun b!5375000 () Bool)

(declare-fun res!2281773 () Bool)

(assert (=> b!5375000 (=> res!2281773 e!3334818)))

(assert (=> b!5375000 (= res!2281773 (not (matchR!7282 (regTwo!30706 r!7292) (_2!35599 lt!2189026))))))

(declare-fun b!5375001 () Bool)

(declare-fun res!2281778 () Bool)

(assert (=> b!5375001 (=> res!2281778 e!3334812)))

(assert (=> b!5375001 (= res!2281778 (not (= lt!2189042 r!7292)))))

(declare-fun setElem!34853 () Context!8962)

(declare-fun tp!1490625 () Bool)

(declare-fun setNonEmpty!34853 () Bool)

(declare-fun e!3334816 () Bool)

(assert (=> setNonEmpty!34853 (= setRes!34853 (and tp!1490625 (inv!80989 setElem!34853) e!3334816))))

(declare-fun setRest!34853 () (InoxSet Context!8962))

(assert (=> setNonEmpty!34853 (= z!1189 ((_ map or) (store ((as const (Array Context!8962 Bool)) false) setElem!34853 true) setRest!34853))))

(assert (=> b!5375002 (= e!3334824 e!3334811)))

(declare-fun res!2281756 () Bool)

(assert (=> b!5375002 (=> res!2281756 e!3334811)))

(declare-fun lt!2189012 () Bool)

(assert (=> b!5375002 (= res!2281756 (or (not (= lt!2189044 lt!2189012)) ((_ is Nil!61466) s!2326)))))

(assert (=> b!5375002 (= (Exists!2278 lambda!277686) (Exists!2278 lambda!277687))))

(declare-fun lt!2189034 () Unit!153906)

(assert (=> b!5375002 (= lt!2189034 (lemmaExistCutMatchRandMatchRSpecEquivalent!932 (regOne!30706 r!7292) (regTwo!30706 r!7292) s!2326))))

(assert (=> b!5375002 (= lt!2189012 (Exists!2278 lambda!277686))))

(assert (=> b!5375002 (= lt!2189012 (isDefined!11911 (findConcatSeparation!1622 (regOne!30706 r!7292) (regTwo!30706 r!7292) Nil!61466 s!2326 s!2326)))))

(declare-fun lt!2189041 () Unit!153906)

(assert (=> b!5375002 (= lt!2189041 (lemmaFindConcatSeparationEquivalentToExists!1386 (regOne!30706 r!7292) (regTwo!30706 r!7292) s!2326))))

(declare-fun b!5375003 () Bool)

(declare-fun res!2281759 () Bool)

(assert (=> b!5375003 (=> res!2281759 e!3334817)))

(assert (=> b!5375003 (= res!2281759 (not (= (unfocusZipper!839 (Cons!61468 lt!2189018 Nil!61468)) lt!2189027)))))

(declare-fun b!5375004 () Bool)

(declare-fun res!2281775 () Bool)

(assert (=> b!5375004 (=> res!2281775 e!3334824)))

(assert (=> b!5375004 (= res!2281775 (or ((_ is EmptyExpr!15097) r!7292) ((_ is EmptyLang!15097) r!7292) ((_ is ElementMatch!15097) r!7292) ((_ is Union!15097) r!7292) (not ((_ is Concat!23942) r!7292))))))

(declare-fun b!5375005 () Bool)

(declare-fun res!2281757 () Bool)

(assert (=> b!5375005 (=> res!2281757 e!3334824)))

(declare-fun generalisedUnion!1026 (List!61591) Regex!15097)

(declare-fun unfocusZipperList!539 (List!61592) List!61591)

(assert (=> b!5375005 (= res!2281757 (not (= r!7292 (generalisedUnion!1026 (unfocusZipperList!539 zl!343)))))))

(declare-fun b!5375006 () Bool)

(declare-fun tp!1490620 () Bool)

(assert (=> b!5375006 (= e!3334816 tp!1490620)))

(declare-fun b!5375007 () Bool)

(assert (=> b!5375007 (= e!3334815 (validRegex!6833 lt!2189037))))

(assert (= (and start!565374 res!2281769) b!5374987))

(assert (= (and b!5374987 res!2281761) b!5374976))

(assert (= (and b!5374976 res!2281766) b!5374998))

(assert (= (and b!5374998 (not res!2281774)) b!5374984))

(assert (= (and b!5374984 (not res!2281763)) b!5374997))

(assert (= (and b!5374997 (not res!2281770)) b!5374980))

(assert (= (and b!5374980 (not res!2281764)) b!5375005))

(assert (= (and b!5375005 (not res!2281757)) b!5375004))

(assert (= (and b!5375004 (not res!2281775)) b!5375002))

(assert (= (and b!5375002 (not res!2281756)) b!5374995))

(assert (= (and b!5374995 (not res!2281767)) b!5374975))

(assert (= (and b!5374975 c!936582) b!5374999))

(assert (= (and b!5374975 (not c!936582)) b!5374978))

(assert (= (and b!5374999 (not res!2281755)) b!5374977))

(assert (= (and b!5374975 (not res!2281772)) b!5374992))

(assert (= (and b!5374992 res!2281779) b!5374983))

(assert (= (and b!5374992 (not res!2281781)) b!5374994))

(assert (= (and b!5374994 (not res!2281752)) b!5374970))

(assert (= (and b!5374970 (not res!2281760)) b!5374986))

(assert (= (and b!5374986 (not res!2281762)) b!5374989))

(assert (= (and b!5374989 (not res!2281753)) b!5375001))

(assert (= (and b!5375001 (not res!2281778)) b!5374982))

(assert (= (and b!5374982 (not res!2281771)) b!5374979))

(assert (= (and b!5374979 (not res!2281777)) b!5374993))

(assert (= (and b!5374993 (not res!2281765)) b!5375003))

(assert (= (and b!5375003 (not res!2281759)) b!5374981))

(assert (= (and b!5374981 res!2281768) b!5374967))

(assert (= (and b!5374981 (not res!2281776)) b!5374996))

(assert (= (and b!5374996 (not res!2281780)) b!5374972))

(assert (= (and b!5374972 (not res!2281758)) b!5375000))

(assert (= (and b!5375000 (not res!2281773)) b!5374991))

(assert (= (and b!5374991 (not res!2281754)) b!5374973))

(assert (= (and b!5374973 (not res!2281751)) b!5375007))

(assert (= (and start!565374 ((_ is ElementMatch!15097) r!7292)) b!5374968))

(assert (= (and start!565374 ((_ is Concat!23942) r!7292)) b!5374974))

(assert (= (and start!565374 ((_ is Star!15097) r!7292)) b!5374988))

(assert (= (and start!565374 ((_ is Union!15097) r!7292)) b!5374971))

(assert (= (and start!565374 condSetEmpty!34853) setIsEmpty!34853))

(assert (= (and start!565374 (not condSetEmpty!34853)) setNonEmpty!34853))

(assert (= setNonEmpty!34853 b!5375006))

(assert (= b!5374990 b!5374985))

(assert (= (and start!565374 ((_ is Cons!61468) zl!343)) b!5374990))

(assert (= (and start!565374 ((_ is Cons!61466) s!2326)) b!5374969))

(declare-fun m!6401660 () Bool)

(assert (=> b!5374977 m!6401660))

(declare-fun m!6401662 () Bool)

(assert (=> b!5374998 m!6401662))

(declare-fun m!6401664 () Bool)

(assert (=> b!5374998 m!6401664))

(declare-fun m!6401666 () Bool)

(assert (=> b!5374998 m!6401666))

(declare-fun m!6401668 () Bool)

(assert (=> b!5375002 m!6401668))

(declare-fun m!6401670 () Bool)

(assert (=> b!5375002 m!6401670))

(declare-fun m!6401672 () Bool)

(assert (=> b!5375002 m!6401672))

(declare-fun m!6401674 () Bool)

(assert (=> b!5375002 m!6401674))

(assert (=> b!5375002 m!6401668))

(declare-fun m!6401676 () Bool)

(assert (=> b!5375002 m!6401676))

(declare-fun m!6401678 () Bool)

(assert (=> b!5375002 m!6401678))

(assert (=> b!5375002 m!6401674))

(declare-fun m!6401680 () Bool)

(assert (=> b!5374997 m!6401680))

(declare-fun m!6401682 () Bool)

(assert (=> b!5374986 m!6401682))

(declare-fun m!6401684 () Bool)

(assert (=> b!5374986 m!6401684))

(declare-fun m!6401686 () Bool)

(assert (=> b!5374986 m!6401686))

(declare-fun m!6401688 () Bool)

(assert (=> b!5374986 m!6401688))

(declare-fun m!6401690 () Bool)

(assert (=> b!5374986 m!6401690))

(declare-fun m!6401692 () Bool)

(assert (=> b!5374993 m!6401692))

(declare-fun m!6401694 () Bool)

(assert (=> b!5374993 m!6401694))

(declare-fun m!6401696 () Bool)

(assert (=> b!5374993 m!6401696))

(declare-fun m!6401698 () Bool)

(assert (=> b!5374993 m!6401698))

(declare-fun m!6401700 () Bool)

(assert (=> b!5374993 m!6401700))

(declare-fun m!6401702 () Bool)

(assert (=> b!5374993 m!6401702))

(declare-fun m!6401704 () Bool)

(assert (=> b!5374993 m!6401704))

(declare-fun m!6401706 () Bool)

(assert (=> b!5374993 m!6401706))

(declare-fun m!6401708 () Bool)

(assert (=> b!5374993 m!6401708))

(declare-fun m!6401710 () Bool)

(assert (=> b!5374995 m!6401710))

(declare-fun m!6401712 () Bool)

(assert (=> b!5374983 m!6401712))

(declare-fun m!6401714 () Bool)

(assert (=> b!5374976 m!6401714))

(declare-fun m!6401716 () Bool)

(assert (=> b!5374970 m!6401716))

(declare-fun m!6401718 () Bool)

(assert (=> b!5375003 m!6401718))

(declare-fun m!6401720 () Bool)

(assert (=> b!5374996 m!6401720))

(declare-fun m!6401722 () Bool)

(assert (=> b!5374996 m!6401722))

(declare-fun m!6401724 () Bool)

(assert (=> b!5374996 m!6401724))

(declare-fun m!6401726 () Bool)

(assert (=> b!5374996 m!6401726))

(declare-fun m!6401728 () Bool)

(assert (=> b!5374996 m!6401728))

(assert (=> b!5374996 m!6401728))

(declare-fun m!6401730 () Bool)

(assert (=> b!5374996 m!6401730))

(declare-fun m!6401732 () Bool)

(assert (=> b!5374996 m!6401732))

(declare-fun m!6401734 () Bool)

(assert (=> b!5374996 m!6401734))

(declare-fun m!6401736 () Bool)

(assert (=> start!565374 m!6401736))

(declare-fun m!6401738 () Bool)

(assert (=> setNonEmpty!34853 m!6401738))

(declare-fun m!6401740 () Bool)

(assert (=> b!5374990 m!6401740))

(declare-fun m!6401742 () Bool)

(assert (=> b!5374975 m!6401742))

(declare-fun m!6401744 () Bool)

(assert (=> b!5374975 m!6401744))

(declare-fun m!6401746 () Bool)

(assert (=> b!5374975 m!6401746))

(declare-fun m!6401748 () Bool)

(assert (=> b!5374975 m!6401748))

(declare-fun m!6401750 () Bool)

(assert (=> b!5374975 m!6401750))

(declare-fun m!6401752 () Bool)

(assert (=> b!5374975 m!6401752))

(declare-fun m!6401754 () Bool)

(assert (=> b!5374975 m!6401754))

(declare-fun m!6401756 () Bool)

(assert (=> b!5374972 m!6401756))

(declare-fun m!6401758 () Bool)

(assert (=> b!5375007 m!6401758))

(declare-fun m!6401760 () Bool)

(assert (=> b!5374981 m!6401760))

(declare-fun m!6401762 () Bool)

(assert (=> b!5374981 m!6401762))

(declare-fun m!6401764 () Bool)

(assert (=> b!5374981 m!6401764))

(declare-fun m!6401766 () Bool)

(assert (=> b!5374987 m!6401766))

(declare-fun m!6401768 () Bool)

(assert (=> b!5374973 m!6401768))

(declare-fun m!6401770 () Bool)

(assert (=> b!5374973 m!6401770))

(declare-fun m!6401772 () Bool)

(assert (=> b!5374973 m!6401772))

(declare-fun m!6401774 () Bool)

(assert (=> b!5374973 m!6401774))

(declare-fun m!6401776 () Bool)

(assert (=> b!5374973 m!6401776))

(assert (=> b!5374973 m!6401770))

(declare-fun m!6401778 () Bool)

(assert (=> b!5374973 m!6401778))

(declare-fun m!6401780 () Bool)

(assert (=> b!5374973 m!6401780))

(declare-fun m!6401782 () Bool)

(assert (=> b!5374973 m!6401782))

(declare-fun m!6401784 () Bool)

(assert (=> b!5374973 m!6401784))

(assert (=> b!5374973 m!6401774))

(declare-fun m!6401786 () Bool)

(assert (=> b!5374973 m!6401786))

(assert (=> b!5374973 m!6401770))

(declare-fun m!6401788 () Bool)

(assert (=> b!5374973 m!6401788))

(declare-fun m!6401790 () Bool)

(assert (=> b!5374999 m!6401790))

(declare-fun m!6401792 () Bool)

(assert (=> b!5374999 m!6401792))

(declare-fun m!6401794 () Bool)

(assert (=> b!5374999 m!6401794))

(declare-fun m!6401796 () Bool)

(assert (=> b!5375000 m!6401796))

(declare-fun m!6401798 () Bool)

(assert (=> b!5375005 m!6401798))

(assert (=> b!5375005 m!6401798))

(declare-fun m!6401800 () Bool)

(assert (=> b!5375005 m!6401800))

(declare-fun m!6401802 () Bool)

(assert (=> b!5374991 m!6401802))

(declare-fun m!6401804 () Bool)

(assert (=> b!5374989 m!6401804))

(declare-fun m!6401806 () Bool)

(assert (=> b!5374989 m!6401806))

(declare-fun m!6401808 () Bool)

(assert (=> b!5374984 m!6401808))

(declare-fun m!6401810 () Bool)

(assert (=> b!5374979 m!6401810))

(check-sat (not b!5374989) (not b!5375007) (not b!5375002) (not b!5374984) (not b!5374986) (not b!5374972) (not b!5374973) (not setNonEmpty!34853) (not b!5374991) (not b!5374996) (not b!5375006) (not b!5374975) (not b!5375000) (not b!5374998) (not b!5374995) (not b!5374969) (not b!5374971) (not b!5374977) (not b!5374983) (not b!5374979) (not b!5374997) (not b!5374974) (not b!5374970) (not start!565374) (not b!5374985) (not b!5374988) (not b!5374999) (not b!5375003) tp_is_empty!39447 (not b!5374981) (not b!5374976) (not b!5374987) (not b!5374990) (not b!5374993) (not b!5375005))
(check-sat)
(get-model)

(declare-fun d!1720676 () Bool)

(declare-fun nullableFct!1557 (Regex!15097) Bool)

(assert (=> d!1720676 (= (nullable!5266 (regOne!30706 (regOne!30706 r!7292))) (nullableFct!1557 (regOne!30706 (regOne!30706 r!7292))))))

(declare-fun bs!1244358 () Bool)

(assert (= bs!1244358 d!1720676))

(declare-fun m!6401840 () Bool)

(assert (=> bs!1244358 m!6401840))

(assert (=> b!5374983 d!1720676))

(declare-fun d!1720678 () Bool)

(assert (=> d!1720678 (= (isEmpty!33450 (t!374815 zl!343)) ((_ is Nil!61468) (t!374815 zl!343)))))

(assert (=> b!5374984 d!1720678))

(declare-fun b!5375128 () Bool)

(declare-fun e!3334899 () Option!15208)

(assert (=> b!5375128 (= e!3334899 None!15207)))

(declare-fun b!5375130 () Bool)

(declare-fun e!3334898 () Bool)

(declare-fun lt!2189069 () Option!15208)

(assert (=> b!5375130 (= e!3334898 (not (isDefined!11911 lt!2189069)))))

(declare-fun b!5375131 () Bool)

(declare-fun res!2281824 () Bool)

(declare-fun e!3334897 () Bool)

(assert (=> b!5375131 (=> (not res!2281824) (not e!3334897))))

(assert (=> b!5375131 (= res!2281824 (matchR!7282 (regOne!30706 r!7292) (_1!35599 (get!21154 lt!2189069))))))

(declare-fun b!5375132 () Bool)

(declare-fun e!3334900 () Option!15208)

(assert (=> b!5375132 (= e!3334900 e!3334899)))

(declare-fun c!936622 () Bool)

(assert (=> b!5375132 (= c!936622 ((_ is Nil!61466) s!2326))))

(declare-fun b!5375133 () Bool)

(declare-fun res!2281821 () Bool)

(assert (=> b!5375133 (=> (not res!2281821) (not e!3334897))))

(assert (=> b!5375133 (= res!2281821 (matchR!7282 (regTwo!30706 r!7292) (_2!35599 (get!21154 lt!2189069))))))

(declare-fun b!5375134 () Bool)

(declare-fun e!3334896 () Bool)

(assert (=> b!5375134 (= e!3334896 (matchR!7282 (regTwo!30706 r!7292) s!2326))))

(declare-fun b!5375129 () Bool)

(assert (=> b!5375129 (= e!3334900 (Some!15207 (tuple2!64593 Nil!61466 s!2326)))))

(declare-fun d!1720680 () Bool)

(assert (=> d!1720680 e!3334898))

(declare-fun res!2281820 () Bool)

(assert (=> d!1720680 (=> res!2281820 e!3334898)))

(assert (=> d!1720680 (= res!2281820 e!3334897)))

(declare-fun res!2281823 () Bool)

(assert (=> d!1720680 (=> (not res!2281823) (not e!3334897))))

(assert (=> d!1720680 (= res!2281823 (isDefined!11911 lt!2189069))))

(assert (=> d!1720680 (= lt!2189069 e!3334900)))

(declare-fun c!936621 () Bool)

(assert (=> d!1720680 (= c!936621 e!3334896)))

(declare-fun res!2281822 () Bool)

(assert (=> d!1720680 (=> (not res!2281822) (not e!3334896))))

(assert (=> d!1720680 (= res!2281822 (matchR!7282 (regOne!30706 r!7292) Nil!61466))))

(assert (=> d!1720680 (validRegex!6833 (regOne!30706 r!7292))))

(assert (=> d!1720680 (= (findConcatSeparation!1622 (regOne!30706 r!7292) (regTwo!30706 r!7292) Nil!61466 s!2326 s!2326) lt!2189069)))

(declare-fun b!5375135 () Bool)

(declare-fun lt!2189070 () Unit!153906)

(declare-fun lt!2189071 () Unit!153906)

(assert (=> b!5375135 (= lt!2189070 lt!2189071)))

(assert (=> b!5375135 (= (++!13400 (++!13400 Nil!61466 (Cons!61466 (h!67914 s!2326) Nil!61466)) (t!374813 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1800 (List!61590 C!30464 List!61590 List!61590) Unit!153906)

(assert (=> b!5375135 (= lt!2189071 (lemmaMoveElementToOtherListKeepsConcatEq!1800 Nil!61466 (h!67914 s!2326) (t!374813 s!2326) s!2326))))

(assert (=> b!5375135 (= e!3334899 (findConcatSeparation!1622 (regOne!30706 r!7292) (regTwo!30706 r!7292) (++!13400 Nil!61466 (Cons!61466 (h!67914 s!2326) Nil!61466)) (t!374813 s!2326) s!2326))))

(declare-fun b!5375136 () Bool)

(assert (=> b!5375136 (= e!3334897 (= (++!13400 (_1!35599 (get!21154 lt!2189069)) (_2!35599 (get!21154 lt!2189069))) s!2326))))

(assert (= (and d!1720680 res!2281822) b!5375134))

(assert (= (and d!1720680 c!936621) b!5375129))

(assert (= (and d!1720680 (not c!936621)) b!5375132))

(assert (= (and b!5375132 c!936622) b!5375128))

(assert (= (and b!5375132 (not c!936622)) b!5375135))

(assert (= (and d!1720680 res!2281823) b!5375131))

(assert (= (and b!5375131 res!2281824) b!5375133))

(assert (= (and b!5375133 res!2281821) b!5375136))

(assert (= (and d!1720680 (not res!2281820)) b!5375130))

(declare-fun m!6401880 () Bool)

(assert (=> b!5375134 m!6401880))

(declare-fun m!6401882 () Bool)

(assert (=> b!5375131 m!6401882))

(declare-fun m!6401884 () Bool)

(assert (=> b!5375131 m!6401884))

(assert (=> b!5375136 m!6401882))

(declare-fun m!6401886 () Bool)

(assert (=> b!5375136 m!6401886))

(declare-fun m!6401888 () Bool)

(assert (=> b!5375130 m!6401888))

(declare-fun m!6401890 () Bool)

(assert (=> b!5375135 m!6401890))

(assert (=> b!5375135 m!6401890))

(declare-fun m!6401892 () Bool)

(assert (=> b!5375135 m!6401892))

(declare-fun m!6401894 () Bool)

(assert (=> b!5375135 m!6401894))

(assert (=> b!5375135 m!6401890))

(declare-fun m!6401896 () Bool)

(assert (=> b!5375135 m!6401896))

(assert (=> d!1720680 m!6401888))

(declare-fun m!6401898 () Bool)

(assert (=> d!1720680 m!6401898))

(declare-fun m!6401900 () Bool)

(assert (=> d!1720680 m!6401900))

(assert (=> b!5375133 m!6401882))

(declare-fun m!6401902 () Bool)

(assert (=> b!5375133 m!6401902))

(assert (=> b!5375002 d!1720680))

(declare-fun d!1720696 () Bool)

(declare-fun choose!40372 (Int) Bool)

(assert (=> d!1720696 (= (Exists!2278 lambda!277686) (choose!40372 lambda!277686))))

(declare-fun bs!1244363 () Bool)

(assert (= bs!1244363 d!1720696))

(declare-fun m!6401908 () Bool)

(assert (=> bs!1244363 m!6401908))

(assert (=> b!5375002 d!1720696))

(declare-fun bs!1244364 () Bool)

(declare-fun d!1720698 () Bool)

(assert (= bs!1244364 (and d!1720698 b!5374973)))

(declare-fun lambda!277702 () Int)

(assert (=> bs!1244364 (= (and (= s!2326 (_1!35599 lt!2189026)) (= (regOne!30706 r!7292) (reg!15426 (regOne!30706 r!7292))) (= (regTwo!30706 r!7292) lt!2189037)) (= lambda!277702 lambda!277691))))

(declare-fun bs!1244365 () Bool)

(assert (= bs!1244365 (and d!1720698 b!5374996)))

(assert (=> bs!1244365 (= (= (regOne!30706 r!7292) lt!2189037) (= lambda!277702 lambda!277689))))

(declare-fun bs!1244366 () Bool)

(assert (= bs!1244366 (and d!1720698 b!5375002)))

(assert (=> bs!1244366 (not (= lambda!277702 lambda!277687))))

(assert (=> bs!1244364 (not (= lambda!277702 lambda!277693))))

(assert (=> bs!1244366 (= lambda!277702 lambda!277686)))

(assert (=> bs!1244364 (not (= lambda!277702 lambda!277692))))

(assert (=> bs!1244365 (not (= lambda!277702 lambda!277690))))

(assert (=> d!1720698 true))

(assert (=> d!1720698 true))

(assert (=> d!1720698 true))

(assert (=> d!1720698 (= (isDefined!11911 (findConcatSeparation!1622 (regOne!30706 r!7292) (regTwo!30706 r!7292) Nil!61466 s!2326 s!2326)) (Exists!2278 lambda!277702))))

(declare-fun lt!2189077 () Unit!153906)

(declare-fun choose!40373 (Regex!15097 Regex!15097 List!61590) Unit!153906)

(assert (=> d!1720698 (= lt!2189077 (choose!40373 (regOne!30706 r!7292) (regTwo!30706 r!7292) s!2326))))

(assert (=> d!1720698 (validRegex!6833 (regOne!30706 r!7292))))

(assert (=> d!1720698 (= (lemmaFindConcatSeparationEquivalentToExists!1386 (regOne!30706 r!7292) (regTwo!30706 r!7292) s!2326) lt!2189077)))

(declare-fun bs!1244367 () Bool)

(assert (= bs!1244367 d!1720698))

(assert (=> bs!1244367 m!6401668))

(assert (=> bs!1244367 m!6401670))

(declare-fun m!6401912 () Bool)

(assert (=> bs!1244367 m!6401912))

(assert (=> bs!1244367 m!6401668))

(declare-fun m!6401914 () Bool)

(assert (=> bs!1244367 m!6401914))

(assert (=> bs!1244367 m!6401900))

(assert (=> b!5375002 d!1720698))

(declare-fun d!1720702 () Bool)

(assert (=> d!1720702 (= (Exists!2278 lambda!277687) (choose!40372 lambda!277687))))

(declare-fun bs!1244368 () Bool)

(assert (= bs!1244368 d!1720702))

(declare-fun m!6401916 () Bool)

(assert (=> bs!1244368 m!6401916))

(assert (=> b!5375002 d!1720702))

(declare-fun bs!1244371 () Bool)

(declare-fun d!1720704 () Bool)

(assert (= bs!1244371 (and d!1720704 d!1720698)))

(declare-fun lambda!277707 () Int)

(assert (=> bs!1244371 (= lambda!277707 lambda!277702)))

(declare-fun bs!1244372 () Bool)

(assert (= bs!1244372 (and d!1720704 b!5374973)))

(assert (=> bs!1244372 (= (and (= s!2326 (_1!35599 lt!2189026)) (= (regOne!30706 r!7292) (reg!15426 (regOne!30706 r!7292))) (= (regTwo!30706 r!7292) lt!2189037)) (= lambda!277707 lambda!277691))))

(declare-fun bs!1244373 () Bool)

(assert (= bs!1244373 (and d!1720704 b!5374996)))

(assert (=> bs!1244373 (= (= (regOne!30706 r!7292) lt!2189037) (= lambda!277707 lambda!277689))))

(declare-fun bs!1244374 () Bool)

(assert (= bs!1244374 (and d!1720704 b!5375002)))

(assert (=> bs!1244374 (not (= lambda!277707 lambda!277687))))

(assert (=> bs!1244372 (not (= lambda!277707 lambda!277693))))

(assert (=> bs!1244374 (= lambda!277707 lambda!277686)))

(assert (=> bs!1244372 (not (= lambda!277707 lambda!277692))))

(assert (=> bs!1244373 (not (= lambda!277707 lambda!277690))))

(assert (=> d!1720704 true))

(assert (=> d!1720704 true))

(assert (=> d!1720704 true))

(declare-fun lambda!277708 () Int)

(assert (=> bs!1244371 (not (= lambda!277708 lambda!277702))))

(assert (=> bs!1244372 (not (= lambda!277708 lambda!277691))))

(declare-fun bs!1244375 () Bool)

(assert (= bs!1244375 d!1720704))

(assert (=> bs!1244375 (not (= lambda!277708 lambda!277707))))

(assert (=> bs!1244373 (not (= lambda!277708 lambda!277689))))

(assert (=> bs!1244374 (= lambda!277708 lambda!277687)))

(assert (=> bs!1244372 (= (and (= s!2326 (_1!35599 lt!2189026)) (= (regOne!30706 r!7292) (reg!15426 (regOne!30706 r!7292))) (= (regTwo!30706 r!7292) lt!2189037)) (= lambda!277708 lambda!277693))))

(assert (=> bs!1244374 (not (= lambda!277708 lambda!277686))))

(assert (=> bs!1244372 (not (= lambda!277708 lambda!277692))))

(assert (=> bs!1244373 (= (= (regOne!30706 r!7292) lt!2189037) (= lambda!277708 lambda!277690))))

(assert (=> d!1720704 true))

(assert (=> d!1720704 true))

(assert (=> d!1720704 true))

(assert (=> d!1720704 (= (Exists!2278 lambda!277707) (Exists!2278 lambda!277708))))

(declare-fun lt!2189083 () Unit!153906)

(declare-fun choose!40374 (Regex!15097 Regex!15097 List!61590) Unit!153906)

(assert (=> d!1720704 (= lt!2189083 (choose!40374 (regOne!30706 r!7292) (regTwo!30706 r!7292) s!2326))))

(assert (=> d!1720704 (validRegex!6833 (regOne!30706 r!7292))))

(assert (=> d!1720704 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!932 (regOne!30706 r!7292) (regTwo!30706 r!7292) s!2326) lt!2189083)))

(declare-fun m!6401952 () Bool)

(assert (=> bs!1244375 m!6401952))

(declare-fun m!6401954 () Bool)

(assert (=> bs!1244375 m!6401954))

(declare-fun m!6401956 () Bool)

(assert (=> bs!1244375 m!6401956))

(assert (=> bs!1244375 m!6401900))

(assert (=> b!5375002 d!1720704))

(declare-fun d!1720718 () Bool)

(declare-fun isEmpty!33453 (Option!15208) Bool)

(assert (=> d!1720718 (= (isDefined!11911 (findConcatSeparation!1622 (regOne!30706 r!7292) (regTwo!30706 r!7292) Nil!61466 s!2326 s!2326)) (not (isEmpty!33453 (findConcatSeparation!1622 (regOne!30706 r!7292) (regTwo!30706 r!7292) Nil!61466 s!2326 s!2326))))))

(declare-fun bs!1244376 () Bool)

(assert (= bs!1244376 d!1720718))

(assert (=> bs!1244376 m!6401668))

(declare-fun m!6401958 () Bool)

(assert (=> bs!1244376 m!6401958))

(assert (=> b!5375002 d!1720718))

(declare-fun d!1720720 () Bool)

(declare-fun lt!2189086 () Regex!15097)

(assert (=> d!1720720 (validRegex!6833 lt!2189086)))

(assert (=> d!1720720 (= lt!2189086 (generalisedUnion!1026 (unfocusZipperList!539 (Cons!61468 lt!2189018 Nil!61468))))))

(assert (=> d!1720720 (= (unfocusZipper!839 (Cons!61468 lt!2189018 Nil!61468)) lt!2189086)))

(declare-fun bs!1244377 () Bool)

(assert (= bs!1244377 d!1720720))

(declare-fun m!6401960 () Bool)

(assert (=> bs!1244377 m!6401960))

(declare-fun m!6401962 () Bool)

(assert (=> bs!1244377 m!6401962))

(assert (=> bs!1244377 m!6401962))

(declare-fun m!6401964 () Bool)

(assert (=> bs!1244377 m!6401964))

(assert (=> b!5375003 d!1720720))

(declare-fun d!1720722 () Bool)

(declare-fun lambda!277711 () Int)

(declare-fun forall!14499 (List!61591 Int) Bool)

(assert (=> d!1720722 (= (inv!80989 setElem!34853) (forall!14499 (exprs!4981 setElem!34853) lambda!277711))))

(declare-fun bs!1244378 () Bool)

(assert (= bs!1244378 d!1720722))

(declare-fun m!6401966 () Bool)

(assert (=> bs!1244378 m!6401966))

(assert (=> setNonEmpty!34853 d!1720722))

(declare-fun b!5375254 () Bool)

(declare-fun e!3334967 () Bool)

(declare-fun head!11530 (List!61590) C!30464)

(assert (=> b!5375254 (= e!3334967 (= (head!11530 s!2326) (c!936583 lt!2189036)))))

(declare-fun bm!384854 () Bool)

(declare-fun call!384859 () Bool)

(assert (=> bm!384854 (= call!384859 (isEmpty!33451 s!2326))))

(declare-fun b!5375255 () Bool)

(declare-fun e!3334964 () Bool)

(declare-fun derivativeStep!4226 (Regex!15097 C!30464) Regex!15097)

(declare-fun tail!10627 (List!61590) List!61590)

(assert (=> b!5375255 (= e!3334964 (matchR!7282 (derivativeStep!4226 lt!2189036 (head!11530 s!2326)) (tail!10627 s!2326)))))

(declare-fun d!1720724 () Bool)

(declare-fun e!3334968 () Bool)

(assert (=> d!1720724 e!3334968))

(declare-fun c!936657 () Bool)

(assert (=> d!1720724 (= c!936657 ((_ is EmptyExpr!15097) lt!2189036))))

(declare-fun lt!2189098 () Bool)

(assert (=> d!1720724 (= lt!2189098 e!3334964)))

(declare-fun c!936656 () Bool)

(assert (=> d!1720724 (= c!936656 (isEmpty!33451 s!2326))))

(assert (=> d!1720724 (validRegex!6833 lt!2189036)))

(assert (=> d!1720724 (= (matchR!7282 lt!2189036 s!2326) lt!2189098)))

(declare-fun b!5375256 () Bool)

(declare-fun e!3334965 () Bool)

(assert (=> b!5375256 (= e!3334965 (not (= (head!11530 s!2326) (c!936583 lt!2189036))))))

(declare-fun b!5375257 () Bool)

(declare-fun e!3334963 () Bool)

(assert (=> b!5375257 (= e!3334968 e!3334963)))

(declare-fun c!936655 () Bool)

(assert (=> b!5375257 (= c!936655 ((_ is EmptyLang!15097) lt!2189036))))

(declare-fun b!5375258 () Bool)

(assert (=> b!5375258 (= e!3334964 (nullable!5266 lt!2189036))))

(declare-fun b!5375259 () Bool)

(declare-fun e!3334969 () Bool)

(assert (=> b!5375259 (= e!3334969 e!3334965)))

(declare-fun res!2281879 () Bool)

(assert (=> b!5375259 (=> res!2281879 e!3334965)))

(assert (=> b!5375259 (= res!2281879 call!384859)))

(declare-fun b!5375260 () Bool)

(assert (=> b!5375260 (= e!3334968 (= lt!2189098 call!384859))))

(declare-fun b!5375261 () Bool)

(assert (=> b!5375261 (= e!3334963 (not lt!2189098))))

(declare-fun b!5375262 () Bool)

(declare-fun res!2281885 () Bool)

(declare-fun e!3334966 () Bool)

(assert (=> b!5375262 (=> res!2281885 e!3334966)))

(assert (=> b!5375262 (= res!2281885 (not ((_ is ElementMatch!15097) lt!2189036)))))

(assert (=> b!5375262 (= e!3334963 e!3334966)))

(declare-fun b!5375263 () Bool)

(declare-fun res!2281878 () Bool)

(assert (=> b!5375263 (=> (not res!2281878) (not e!3334967))))

(assert (=> b!5375263 (= res!2281878 (not call!384859))))

(declare-fun b!5375264 () Bool)

(declare-fun res!2281884 () Bool)

(assert (=> b!5375264 (=> res!2281884 e!3334965)))

(assert (=> b!5375264 (= res!2281884 (not (isEmpty!33451 (tail!10627 s!2326))))))

(declare-fun b!5375265 () Bool)

(declare-fun res!2281883 () Bool)

(assert (=> b!5375265 (=> res!2281883 e!3334966)))

(assert (=> b!5375265 (= res!2281883 e!3334967)))

(declare-fun res!2281882 () Bool)

(assert (=> b!5375265 (=> (not res!2281882) (not e!3334967))))

(assert (=> b!5375265 (= res!2281882 lt!2189098)))

(declare-fun b!5375266 () Bool)

(declare-fun res!2281881 () Bool)

(assert (=> b!5375266 (=> (not res!2281881) (not e!3334967))))

(assert (=> b!5375266 (= res!2281881 (isEmpty!33451 (tail!10627 s!2326)))))

(declare-fun b!5375267 () Bool)

(assert (=> b!5375267 (= e!3334966 e!3334969)))

(declare-fun res!2281880 () Bool)

(assert (=> b!5375267 (=> (not res!2281880) (not e!3334969))))

(assert (=> b!5375267 (= res!2281880 (not lt!2189098))))

(assert (= (and d!1720724 c!936656) b!5375258))

(assert (= (and d!1720724 (not c!936656)) b!5375255))

(assert (= (and d!1720724 c!936657) b!5375260))

(assert (= (and d!1720724 (not c!936657)) b!5375257))

(assert (= (and b!5375257 c!936655) b!5375261))

(assert (= (and b!5375257 (not c!936655)) b!5375262))

(assert (= (and b!5375262 (not res!2281885)) b!5375265))

(assert (= (and b!5375265 res!2281882) b!5375263))

(assert (= (and b!5375263 res!2281878) b!5375266))

(assert (= (and b!5375266 res!2281881) b!5375254))

(assert (= (and b!5375265 (not res!2281883)) b!5375267))

(assert (= (and b!5375267 res!2281880) b!5375259))

(assert (= (and b!5375259 (not res!2281879)) b!5375264))

(assert (= (and b!5375264 (not res!2281884)) b!5375256))

(assert (= (or b!5375260 b!5375259 b!5375263) bm!384854))

(declare-fun m!6401994 () Bool)

(assert (=> b!5375255 m!6401994))

(assert (=> b!5375255 m!6401994))

(declare-fun m!6401996 () Bool)

(assert (=> b!5375255 m!6401996))

(declare-fun m!6401998 () Bool)

(assert (=> b!5375255 m!6401998))

(assert (=> b!5375255 m!6401996))

(assert (=> b!5375255 m!6401998))

(declare-fun m!6402000 () Bool)

(assert (=> b!5375255 m!6402000))

(declare-fun m!6402002 () Bool)

(assert (=> d!1720724 m!6402002))

(declare-fun m!6402004 () Bool)

(assert (=> d!1720724 m!6402004))

(assert (=> b!5375264 m!6401998))

(assert (=> b!5375264 m!6401998))

(declare-fun m!6402006 () Bool)

(assert (=> b!5375264 m!6402006))

(assert (=> b!5375266 m!6401998))

(assert (=> b!5375266 m!6401998))

(assert (=> b!5375266 m!6402006))

(assert (=> b!5375256 m!6401994))

(declare-fun m!6402008 () Bool)

(assert (=> b!5375258 m!6402008))

(assert (=> bm!384854 m!6402002))

(assert (=> b!5375254 m!6401994))

(assert (=> b!5374981 d!1720724))

(declare-fun bs!1244385 () Bool)

(declare-fun b!5375313 () Bool)

(assert (= bs!1244385 (and b!5375313 d!1720698)))

(declare-fun lambda!277723 () Int)

(assert (=> bs!1244385 (not (= lambda!277723 lambda!277702))))

(declare-fun bs!1244386 () Bool)

(assert (= bs!1244386 (and b!5375313 d!1720704)))

(assert (=> bs!1244386 (not (= lambda!277723 lambda!277707))))

(declare-fun bs!1244387 () Bool)

(assert (= bs!1244387 (and b!5375313 b!5374996)))

(assert (=> bs!1244387 (not (= lambda!277723 lambda!277689))))

(declare-fun bs!1244388 () Bool)

(assert (= bs!1244388 (and b!5375313 b!5375002)))

(assert (=> bs!1244388 (not (= lambda!277723 lambda!277687))))

(declare-fun bs!1244389 () Bool)

(assert (= bs!1244389 (and b!5375313 b!5374973)))

(assert (=> bs!1244389 (not (= lambda!277723 lambda!277693))))

(assert (=> bs!1244388 (not (= lambda!277723 lambda!277686))))

(assert (=> bs!1244389 (= (and (= s!2326 (_1!35599 lt!2189026)) (= (reg!15426 lt!2189036) (reg!15426 (regOne!30706 r!7292))) (= lt!2189036 lt!2189037)) (= lambda!277723 lambda!277692))))

(assert (=> bs!1244387 (not (= lambda!277723 lambda!277690))))

(assert (=> bs!1244389 (not (= lambda!277723 lambda!277691))))

(assert (=> bs!1244386 (not (= lambda!277723 lambda!277708))))

(assert (=> b!5375313 true))

(assert (=> b!5375313 true))

(declare-fun bs!1244394 () Bool)

(declare-fun b!5375318 () Bool)

(assert (= bs!1244394 (and b!5375318 d!1720698)))

(declare-fun lambda!277725 () Int)

(assert (=> bs!1244394 (not (= lambda!277725 lambda!277702))))

(declare-fun bs!1244395 () Bool)

(assert (= bs!1244395 (and b!5375318 b!5375313)))

(assert (=> bs!1244395 (not (= lambda!277725 lambda!277723))))

(declare-fun bs!1244396 () Bool)

(assert (= bs!1244396 (and b!5375318 d!1720704)))

(assert (=> bs!1244396 (not (= lambda!277725 lambda!277707))))

(declare-fun bs!1244397 () Bool)

(assert (= bs!1244397 (and b!5375318 b!5374996)))

(assert (=> bs!1244397 (not (= lambda!277725 lambda!277689))))

(declare-fun bs!1244398 () Bool)

(assert (= bs!1244398 (and b!5375318 b!5375002)))

(assert (=> bs!1244398 (= (and (= (regOne!30706 lt!2189036) (regOne!30706 r!7292)) (= (regTwo!30706 lt!2189036) (regTwo!30706 r!7292))) (= lambda!277725 lambda!277687))))

(declare-fun bs!1244399 () Bool)

(assert (= bs!1244399 (and b!5375318 b!5374973)))

(assert (=> bs!1244399 (= (and (= s!2326 (_1!35599 lt!2189026)) (= (regOne!30706 lt!2189036) (reg!15426 (regOne!30706 r!7292))) (= (regTwo!30706 lt!2189036) lt!2189037)) (= lambda!277725 lambda!277693))))

(assert (=> bs!1244398 (not (= lambda!277725 lambda!277686))))

(assert (=> bs!1244399 (not (= lambda!277725 lambda!277692))))

(assert (=> bs!1244397 (= (and (= (regOne!30706 lt!2189036) lt!2189037) (= (regTwo!30706 lt!2189036) (regTwo!30706 r!7292))) (= lambda!277725 lambda!277690))))

(assert (=> bs!1244399 (not (= lambda!277725 lambda!277691))))

(assert (=> bs!1244396 (= (and (= (regOne!30706 lt!2189036) (regOne!30706 r!7292)) (= (regTwo!30706 lt!2189036) (regTwo!30706 r!7292))) (= lambda!277725 lambda!277708))))

(assert (=> b!5375318 true))

(assert (=> b!5375318 true))

(declare-fun b!5375312 () Bool)

(declare-fun e!3334997 () Bool)

(declare-fun e!3334995 () Bool)

(assert (=> b!5375312 (= e!3334997 e!3334995)))

(declare-fun c!936669 () Bool)

(assert (=> b!5375312 (= c!936669 ((_ is Star!15097) lt!2189036))))

(declare-fun e!3334994 () Bool)

(declare-fun call!384865 () Bool)

(assert (=> b!5375313 (= e!3334994 call!384865)))

(declare-fun b!5375314 () Bool)

(declare-fun e!3335000 () Bool)

(assert (=> b!5375314 (= e!3334997 e!3335000)))

(declare-fun res!2281914 () Bool)

(assert (=> b!5375314 (= res!2281914 (matchRSpec!2200 (regOne!30707 lt!2189036) s!2326))))

(assert (=> b!5375314 (=> res!2281914 e!3335000)))

(declare-fun b!5375315 () Bool)

(declare-fun e!3334998 () Bool)

(assert (=> b!5375315 (= e!3334998 (= s!2326 (Cons!61466 (c!936583 lt!2189036) Nil!61466)))))

(declare-fun bm!384859 () Bool)

(declare-fun call!384864 () Bool)

(assert (=> bm!384859 (= call!384864 (isEmpty!33451 s!2326))))

(declare-fun bm!384860 () Bool)

(assert (=> bm!384860 (= call!384865 (Exists!2278 (ite c!936669 lambda!277723 lambda!277725)))))

(declare-fun b!5375316 () Bool)

(assert (=> b!5375316 (= e!3335000 (matchRSpec!2200 (regTwo!30707 lt!2189036) s!2326))))

(declare-fun b!5375317 () Bool)

(declare-fun c!936667 () Bool)

(assert (=> b!5375317 (= c!936667 ((_ is Union!15097) lt!2189036))))

(assert (=> b!5375317 (= e!3334998 e!3334997)))

(assert (=> b!5375318 (= e!3334995 call!384865)))

(declare-fun d!1720732 () Bool)

(declare-fun c!936668 () Bool)

(assert (=> d!1720732 (= c!936668 ((_ is EmptyExpr!15097) lt!2189036))))

(declare-fun e!3334996 () Bool)

(assert (=> d!1720732 (= (matchRSpec!2200 lt!2189036 s!2326) e!3334996)))

(declare-fun b!5375319 () Bool)

(declare-fun e!3334999 () Bool)

(assert (=> b!5375319 (= e!3334996 e!3334999)))

(declare-fun res!2281916 () Bool)

(assert (=> b!5375319 (= res!2281916 (not ((_ is EmptyLang!15097) lt!2189036)))))

(assert (=> b!5375319 (=> (not res!2281916) (not e!3334999))))

(declare-fun b!5375320 () Bool)

(declare-fun c!936666 () Bool)

(assert (=> b!5375320 (= c!936666 ((_ is ElementMatch!15097) lt!2189036))))

(assert (=> b!5375320 (= e!3334999 e!3334998)))

(declare-fun b!5375321 () Bool)

(assert (=> b!5375321 (= e!3334996 call!384864)))

(declare-fun b!5375322 () Bool)

(declare-fun res!2281915 () Bool)

(assert (=> b!5375322 (=> res!2281915 e!3334994)))

(assert (=> b!5375322 (= res!2281915 call!384864)))

(assert (=> b!5375322 (= e!3334995 e!3334994)))

(assert (= (and d!1720732 c!936668) b!5375321))

(assert (= (and d!1720732 (not c!936668)) b!5375319))

(assert (= (and b!5375319 res!2281916) b!5375320))

(assert (= (and b!5375320 c!936666) b!5375315))

(assert (= (and b!5375320 (not c!936666)) b!5375317))

(assert (= (and b!5375317 c!936667) b!5375314))

(assert (= (and b!5375317 (not c!936667)) b!5375312))

(assert (= (and b!5375314 (not res!2281914)) b!5375316))

(assert (= (and b!5375312 c!936669) b!5375322))

(assert (= (and b!5375312 (not c!936669)) b!5375318))

(assert (= (and b!5375322 (not res!2281915)) b!5375313))

(assert (= (or b!5375313 b!5375318) bm!384860))

(assert (= (or b!5375321 b!5375322) bm!384859))

(declare-fun m!6402022 () Bool)

(assert (=> b!5375314 m!6402022))

(assert (=> bm!384859 m!6402002))

(declare-fun m!6402024 () Bool)

(assert (=> bm!384860 m!6402024))

(declare-fun m!6402026 () Bool)

(assert (=> b!5375316 m!6402026))

(assert (=> b!5374981 d!1720732))

(declare-fun d!1720738 () Bool)

(assert (=> d!1720738 (= (matchR!7282 lt!2189036 s!2326) (matchRSpec!2200 lt!2189036 s!2326))))

(declare-fun lt!2189110 () Unit!153906)

(declare-fun choose!40376 (Regex!15097 List!61590) Unit!153906)

(assert (=> d!1720738 (= lt!2189110 (choose!40376 lt!2189036 s!2326))))

(assert (=> d!1720738 (validRegex!6833 lt!2189036)))

(assert (=> d!1720738 (= (mainMatchTheorem!2200 lt!2189036 s!2326) lt!2189110)))

(declare-fun bs!1244401 () Bool)

(assert (= bs!1244401 d!1720738))

(assert (=> bs!1244401 m!6401760))

(assert (=> bs!1244401 m!6401762))

(declare-fun m!6402058 () Bool)

(assert (=> bs!1244401 m!6402058))

(assert (=> bs!1244401 m!6402004))

(assert (=> b!5374981 d!1720738))

(declare-fun e!3335012 () Bool)

(declare-fun d!1720748 () Bool)

(assert (=> d!1720748 (= (matchZipper!1341 ((_ map or) lt!2189032 lt!2189031) (t!374813 s!2326)) e!3335012)))

(declare-fun res!2281923 () Bool)

(assert (=> d!1720748 (=> res!2281923 e!3335012)))

(assert (=> d!1720748 (= res!2281923 (matchZipper!1341 lt!2189032 (t!374813 s!2326)))))

(declare-fun lt!2189114 () Unit!153906)

(declare-fun choose!40377 ((InoxSet Context!8962) (InoxSet Context!8962) List!61590) Unit!153906)

(assert (=> d!1720748 (= lt!2189114 (choose!40377 lt!2189032 lt!2189031 (t!374813 s!2326)))))

(assert (=> d!1720748 (= (lemmaZipperConcatMatchesSameAsBothZippers!334 lt!2189032 lt!2189031 (t!374813 s!2326)) lt!2189114)))

(declare-fun b!5375339 () Bool)

(assert (=> b!5375339 (= e!3335012 (matchZipper!1341 lt!2189031 (t!374813 s!2326)))))

(assert (= (and d!1720748 (not res!2281923)) b!5375339))

(assert (=> d!1720748 m!6401794))

(assert (=> d!1720748 m!6401792))

(declare-fun m!6402074 () Bool)

(assert (=> d!1720748 m!6402074))

(assert (=> b!5375339 m!6401660))

(assert (=> b!5374999 d!1720748))

(declare-fun d!1720758 () Bool)

(declare-fun c!936679 () Bool)

(assert (=> d!1720758 (= c!936679 (isEmpty!33451 (t!374813 s!2326)))))

(declare-fun e!3335015 () Bool)

(assert (=> d!1720758 (= (matchZipper!1341 lt!2189032 (t!374813 s!2326)) e!3335015)))

(declare-fun b!5375346 () Bool)

(declare-fun nullableZipper!1406 ((InoxSet Context!8962)) Bool)

(assert (=> b!5375346 (= e!3335015 (nullableZipper!1406 lt!2189032))))

(declare-fun b!5375347 () Bool)

(assert (=> b!5375347 (= e!3335015 (matchZipper!1341 (derivationStepZipper!1336 lt!2189032 (head!11530 (t!374813 s!2326))) (tail!10627 (t!374813 s!2326))))))

(assert (= (and d!1720758 c!936679) b!5375346))

(assert (= (and d!1720758 (not c!936679)) b!5375347))

(declare-fun m!6402078 () Bool)

(assert (=> d!1720758 m!6402078))

(declare-fun m!6402080 () Bool)

(assert (=> b!5375346 m!6402080))

(declare-fun m!6402082 () Bool)

(assert (=> b!5375347 m!6402082))

(assert (=> b!5375347 m!6402082))

(declare-fun m!6402084 () Bool)

(assert (=> b!5375347 m!6402084))

(declare-fun m!6402086 () Bool)

(assert (=> b!5375347 m!6402086))

(assert (=> b!5375347 m!6402084))

(assert (=> b!5375347 m!6402086))

(declare-fun m!6402088 () Bool)

(assert (=> b!5375347 m!6402088))

(assert (=> b!5374999 d!1720758))

(declare-fun d!1720762 () Bool)

(declare-fun c!936680 () Bool)

(assert (=> d!1720762 (= c!936680 (isEmpty!33451 (t!374813 s!2326)))))

(declare-fun e!3335016 () Bool)

(assert (=> d!1720762 (= (matchZipper!1341 ((_ map or) lt!2189032 lt!2189031) (t!374813 s!2326)) e!3335016)))

(declare-fun b!5375348 () Bool)

(assert (=> b!5375348 (= e!3335016 (nullableZipper!1406 ((_ map or) lt!2189032 lt!2189031)))))

(declare-fun b!5375349 () Bool)

(assert (=> b!5375349 (= e!3335016 (matchZipper!1341 (derivationStepZipper!1336 ((_ map or) lt!2189032 lt!2189031) (head!11530 (t!374813 s!2326))) (tail!10627 (t!374813 s!2326))))))

(assert (= (and d!1720762 c!936680) b!5375348))

(assert (= (and d!1720762 (not c!936680)) b!5375349))

(assert (=> d!1720762 m!6402078))

(declare-fun m!6402090 () Bool)

(assert (=> b!5375348 m!6402090))

(assert (=> b!5375349 m!6402082))

(assert (=> b!5375349 m!6402082))

(declare-fun m!6402092 () Bool)

(assert (=> b!5375349 m!6402092))

(assert (=> b!5375349 m!6402086))

(assert (=> b!5375349 m!6402092))

(assert (=> b!5375349 m!6402086))

(declare-fun m!6402094 () Bool)

(assert (=> b!5375349 m!6402094))

(assert (=> b!5374999 d!1720762))

(declare-fun d!1720764 () Bool)

(declare-fun lt!2189115 () Regex!15097)

(assert (=> d!1720764 (validRegex!6833 lt!2189115)))

(assert (=> d!1720764 (= lt!2189115 (generalisedUnion!1026 (unfocusZipperList!539 (Cons!61468 lt!2189046 Nil!61468))))))

(assert (=> d!1720764 (= (unfocusZipper!839 (Cons!61468 lt!2189046 Nil!61468)) lt!2189115)))

(declare-fun bs!1244409 () Bool)

(assert (= bs!1244409 d!1720764))

(declare-fun m!6402096 () Bool)

(assert (=> bs!1244409 m!6402096))

(declare-fun m!6402098 () Bool)

(assert (=> bs!1244409 m!6402098))

(assert (=> bs!1244409 m!6402098))

(declare-fun m!6402100 () Bool)

(assert (=> bs!1244409 m!6402100))

(assert (=> b!5374979 d!1720764))

(declare-fun b!5375350 () Bool)

(declare-fun e!3335021 () Bool)

(assert (=> b!5375350 (= e!3335021 (= (head!11530 (_2!35599 lt!2189026)) (c!936583 (regTwo!30706 r!7292))))))

(declare-fun bm!384862 () Bool)

(declare-fun call!384867 () Bool)

(assert (=> bm!384862 (= call!384867 (isEmpty!33451 (_2!35599 lt!2189026)))))

(declare-fun b!5375351 () Bool)

(declare-fun e!3335018 () Bool)

(assert (=> b!5375351 (= e!3335018 (matchR!7282 (derivativeStep!4226 (regTwo!30706 r!7292) (head!11530 (_2!35599 lt!2189026))) (tail!10627 (_2!35599 lt!2189026))))))

(declare-fun d!1720766 () Bool)

(declare-fun e!3335022 () Bool)

(assert (=> d!1720766 e!3335022))

(declare-fun c!936683 () Bool)

(assert (=> d!1720766 (= c!936683 ((_ is EmptyExpr!15097) (regTwo!30706 r!7292)))))

(declare-fun lt!2189116 () Bool)

(assert (=> d!1720766 (= lt!2189116 e!3335018)))

(declare-fun c!936682 () Bool)

(assert (=> d!1720766 (= c!936682 (isEmpty!33451 (_2!35599 lt!2189026)))))

(assert (=> d!1720766 (validRegex!6833 (regTwo!30706 r!7292))))

(assert (=> d!1720766 (= (matchR!7282 (regTwo!30706 r!7292) (_2!35599 lt!2189026)) lt!2189116)))

(declare-fun b!5375352 () Bool)

(declare-fun e!3335019 () Bool)

(assert (=> b!5375352 (= e!3335019 (not (= (head!11530 (_2!35599 lt!2189026)) (c!936583 (regTwo!30706 r!7292)))))))

(declare-fun b!5375353 () Bool)

(declare-fun e!3335017 () Bool)

(assert (=> b!5375353 (= e!3335022 e!3335017)))

(declare-fun c!936681 () Bool)

(assert (=> b!5375353 (= c!936681 ((_ is EmptyLang!15097) (regTwo!30706 r!7292)))))

(declare-fun b!5375354 () Bool)

(assert (=> b!5375354 (= e!3335018 (nullable!5266 (regTwo!30706 r!7292)))))

(declare-fun b!5375355 () Bool)

(declare-fun e!3335023 () Bool)

(assert (=> b!5375355 (= e!3335023 e!3335019)))

(declare-fun res!2281925 () Bool)

(assert (=> b!5375355 (=> res!2281925 e!3335019)))

(assert (=> b!5375355 (= res!2281925 call!384867)))

(declare-fun b!5375356 () Bool)

(assert (=> b!5375356 (= e!3335022 (= lt!2189116 call!384867))))

(declare-fun b!5375357 () Bool)

(assert (=> b!5375357 (= e!3335017 (not lt!2189116))))

(declare-fun b!5375358 () Bool)

(declare-fun res!2281931 () Bool)

(declare-fun e!3335020 () Bool)

(assert (=> b!5375358 (=> res!2281931 e!3335020)))

(assert (=> b!5375358 (= res!2281931 (not ((_ is ElementMatch!15097) (regTwo!30706 r!7292))))))

(assert (=> b!5375358 (= e!3335017 e!3335020)))

(declare-fun b!5375359 () Bool)

(declare-fun res!2281924 () Bool)

(assert (=> b!5375359 (=> (not res!2281924) (not e!3335021))))

(assert (=> b!5375359 (= res!2281924 (not call!384867))))

(declare-fun b!5375360 () Bool)

(declare-fun res!2281930 () Bool)

(assert (=> b!5375360 (=> res!2281930 e!3335019)))

(assert (=> b!5375360 (= res!2281930 (not (isEmpty!33451 (tail!10627 (_2!35599 lt!2189026)))))))

(declare-fun b!5375361 () Bool)

(declare-fun res!2281929 () Bool)

(assert (=> b!5375361 (=> res!2281929 e!3335020)))

(assert (=> b!5375361 (= res!2281929 e!3335021)))

(declare-fun res!2281928 () Bool)

(assert (=> b!5375361 (=> (not res!2281928) (not e!3335021))))

(assert (=> b!5375361 (= res!2281928 lt!2189116)))

(declare-fun b!5375362 () Bool)

(declare-fun res!2281927 () Bool)

(assert (=> b!5375362 (=> (not res!2281927) (not e!3335021))))

(assert (=> b!5375362 (= res!2281927 (isEmpty!33451 (tail!10627 (_2!35599 lt!2189026))))))

(declare-fun b!5375363 () Bool)

(assert (=> b!5375363 (= e!3335020 e!3335023)))

(declare-fun res!2281926 () Bool)

(assert (=> b!5375363 (=> (not res!2281926) (not e!3335023))))

(assert (=> b!5375363 (= res!2281926 (not lt!2189116))))

(assert (= (and d!1720766 c!936682) b!5375354))

(assert (= (and d!1720766 (not c!936682)) b!5375351))

(assert (= (and d!1720766 c!936683) b!5375356))

(assert (= (and d!1720766 (not c!936683)) b!5375353))

(assert (= (and b!5375353 c!936681) b!5375357))

(assert (= (and b!5375353 (not c!936681)) b!5375358))

(assert (= (and b!5375358 (not res!2281931)) b!5375361))

(assert (= (and b!5375361 res!2281928) b!5375359))

(assert (= (and b!5375359 res!2281924) b!5375362))

(assert (= (and b!5375362 res!2281927) b!5375350))

(assert (= (and b!5375361 (not res!2281929)) b!5375363))

(assert (= (and b!5375363 res!2281926) b!5375355))

(assert (= (and b!5375355 (not res!2281925)) b!5375360))

(assert (= (and b!5375360 (not res!2281930)) b!5375352))

(assert (= (or b!5375356 b!5375355 b!5375359) bm!384862))

(declare-fun m!6402102 () Bool)

(assert (=> b!5375351 m!6402102))

(assert (=> b!5375351 m!6402102))

(declare-fun m!6402104 () Bool)

(assert (=> b!5375351 m!6402104))

(declare-fun m!6402106 () Bool)

(assert (=> b!5375351 m!6402106))

(assert (=> b!5375351 m!6402104))

(assert (=> b!5375351 m!6402106))

(declare-fun m!6402108 () Bool)

(assert (=> b!5375351 m!6402108))

(declare-fun m!6402110 () Bool)

(assert (=> d!1720766 m!6402110))

(declare-fun m!6402112 () Bool)

(assert (=> d!1720766 m!6402112))

(assert (=> b!5375360 m!6402106))

(assert (=> b!5375360 m!6402106))

(declare-fun m!6402114 () Bool)

(assert (=> b!5375360 m!6402114))

(assert (=> b!5375362 m!6402106))

(assert (=> b!5375362 m!6402106))

(assert (=> b!5375362 m!6402114))

(assert (=> b!5375352 m!6402102))

(declare-fun m!6402116 () Bool)

(assert (=> b!5375354 m!6402116))

(assert (=> bm!384862 m!6402110))

(assert (=> b!5375350 m!6402102))

(assert (=> b!5375000 d!1720766))

(declare-fun bs!1244410 () Bool)

(declare-fun b!5375365 () Bool)

(assert (= bs!1244410 (and b!5375365 d!1720698)))

(declare-fun lambda!277733 () Int)

(assert (=> bs!1244410 (not (= lambda!277733 lambda!277702))))

(declare-fun bs!1244411 () Bool)

(assert (= bs!1244411 (and b!5375365 b!5375313)))

(assert (=> bs!1244411 (= (and (= (reg!15426 r!7292) (reg!15426 lt!2189036)) (= r!7292 lt!2189036)) (= lambda!277733 lambda!277723))))

(declare-fun bs!1244412 () Bool)

(assert (= bs!1244412 (and b!5375365 d!1720704)))

(assert (=> bs!1244412 (not (= lambda!277733 lambda!277707))))

(declare-fun bs!1244413 () Bool)

(assert (= bs!1244413 (and b!5375365 b!5374996)))

(assert (=> bs!1244413 (not (= lambda!277733 lambda!277689))))

(declare-fun bs!1244414 () Bool)

(assert (= bs!1244414 (and b!5375365 b!5375002)))

(assert (=> bs!1244414 (not (= lambda!277733 lambda!277687))))

(declare-fun bs!1244415 () Bool)

(assert (= bs!1244415 (and b!5375365 b!5374973)))

(assert (=> bs!1244415 (not (= lambda!277733 lambda!277693))))

(assert (=> bs!1244414 (not (= lambda!277733 lambda!277686))))

(declare-fun bs!1244416 () Bool)

(assert (= bs!1244416 (and b!5375365 b!5375318)))

(assert (=> bs!1244416 (not (= lambda!277733 lambda!277725))))

(assert (=> bs!1244415 (= (and (= s!2326 (_1!35599 lt!2189026)) (= (reg!15426 r!7292) (reg!15426 (regOne!30706 r!7292))) (= r!7292 lt!2189037)) (= lambda!277733 lambda!277692))))

(assert (=> bs!1244413 (not (= lambda!277733 lambda!277690))))

(assert (=> bs!1244415 (not (= lambda!277733 lambda!277691))))

(assert (=> bs!1244412 (not (= lambda!277733 lambda!277708))))

(assert (=> b!5375365 true))

(assert (=> b!5375365 true))

(declare-fun bs!1244417 () Bool)

(declare-fun b!5375370 () Bool)

(assert (= bs!1244417 (and b!5375370 d!1720698)))

(declare-fun lambda!277734 () Int)

(assert (=> bs!1244417 (not (= lambda!277734 lambda!277702))))

(declare-fun bs!1244418 () Bool)

(assert (= bs!1244418 (and b!5375370 b!5375313)))

(assert (=> bs!1244418 (not (= lambda!277734 lambda!277723))))

(declare-fun bs!1244419 () Bool)

(assert (= bs!1244419 (and b!5375370 d!1720704)))

(assert (=> bs!1244419 (not (= lambda!277734 lambda!277707))))

(declare-fun bs!1244420 () Bool)

(assert (= bs!1244420 (and b!5375370 b!5374996)))

(assert (=> bs!1244420 (not (= lambda!277734 lambda!277689))))

(declare-fun bs!1244421 () Bool)

(assert (= bs!1244421 (and b!5375370 b!5375002)))

(assert (=> bs!1244421 (= lambda!277734 lambda!277687)))

(declare-fun bs!1244422 () Bool)

(assert (= bs!1244422 (and b!5375370 b!5374973)))

(assert (=> bs!1244422 (= (and (= s!2326 (_1!35599 lt!2189026)) (= (regOne!30706 r!7292) (reg!15426 (regOne!30706 r!7292))) (= (regTwo!30706 r!7292) lt!2189037)) (= lambda!277734 lambda!277693))))

(assert (=> bs!1244421 (not (= lambda!277734 lambda!277686))))

(declare-fun bs!1244423 () Bool)

(assert (= bs!1244423 (and b!5375370 b!5375318)))

(assert (=> bs!1244423 (= (and (= (regOne!30706 r!7292) (regOne!30706 lt!2189036)) (= (regTwo!30706 r!7292) (regTwo!30706 lt!2189036))) (= lambda!277734 lambda!277725))))

(assert (=> bs!1244422 (not (= lambda!277734 lambda!277692))))

(assert (=> bs!1244420 (= (= (regOne!30706 r!7292) lt!2189037) (= lambda!277734 lambda!277690))))

(assert (=> bs!1244422 (not (= lambda!277734 lambda!277691))))

(declare-fun bs!1244424 () Bool)

(assert (= bs!1244424 (and b!5375370 b!5375365)))

(assert (=> bs!1244424 (not (= lambda!277734 lambda!277733))))

(assert (=> bs!1244419 (= lambda!277734 lambda!277708)))

(assert (=> b!5375370 true))

(assert (=> b!5375370 true))

(declare-fun b!5375364 () Bool)

(declare-fun e!3335027 () Bool)

(declare-fun e!3335025 () Bool)

(assert (=> b!5375364 (= e!3335027 e!3335025)))

(declare-fun c!936687 () Bool)

(assert (=> b!5375364 (= c!936687 ((_ is Star!15097) r!7292))))

(declare-fun e!3335024 () Bool)

(declare-fun call!384869 () Bool)

(assert (=> b!5375365 (= e!3335024 call!384869)))

(declare-fun b!5375366 () Bool)

(declare-fun e!3335030 () Bool)

(assert (=> b!5375366 (= e!3335027 e!3335030)))

(declare-fun res!2281932 () Bool)

(assert (=> b!5375366 (= res!2281932 (matchRSpec!2200 (regOne!30707 r!7292) s!2326))))

(assert (=> b!5375366 (=> res!2281932 e!3335030)))

(declare-fun b!5375367 () Bool)

(declare-fun e!3335028 () Bool)

(assert (=> b!5375367 (= e!3335028 (= s!2326 (Cons!61466 (c!936583 r!7292) Nil!61466)))))

(declare-fun bm!384863 () Bool)

(declare-fun call!384868 () Bool)

(assert (=> bm!384863 (= call!384868 (isEmpty!33451 s!2326))))

(declare-fun bm!384864 () Bool)

(assert (=> bm!384864 (= call!384869 (Exists!2278 (ite c!936687 lambda!277733 lambda!277734)))))

(declare-fun b!5375368 () Bool)

(assert (=> b!5375368 (= e!3335030 (matchRSpec!2200 (regTwo!30707 r!7292) s!2326))))

(declare-fun b!5375369 () Bool)

(declare-fun c!936685 () Bool)

(assert (=> b!5375369 (= c!936685 ((_ is Union!15097) r!7292))))

(assert (=> b!5375369 (= e!3335028 e!3335027)))

(assert (=> b!5375370 (= e!3335025 call!384869)))

(declare-fun d!1720768 () Bool)

(declare-fun c!936686 () Bool)

(assert (=> d!1720768 (= c!936686 ((_ is EmptyExpr!15097) r!7292))))

(declare-fun e!3335026 () Bool)

(assert (=> d!1720768 (= (matchRSpec!2200 r!7292 s!2326) e!3335026)))

(declare-fun b!5375371 () Bool)

(declare-fun e!3335029 () Bool)

(assert (=> b!5375371 (= e!3335026 e!3335029)))

(declare-fun res!2281934 () Bool)

(assert (=> b!5375371 (= res!2281934 (not ((_ is EmptyLang!15097) r!7292)))))

(assert (=> b!5375371 (=> (not res!2281934) (not e!3335029))))

(declare-fun b!5375372 () Bool)

(declare-fun c!936684 () Bool)

(assert (=> b!5375372 (= c!936684 ((_ is ElementMatch!15097) r!7292))))

(assert (=> b!5375372 (= e!3335029 e!3335028)))

(declare-fun b!5375373 () Bool)

(assert (=> b!5375373 (= e!3335026 call!384868)))

(declare-fun b!5375374 () Bool)

(declare-fun res!2281933 () Bool)

(assert (=> b!5375374 (=> res!2281933 e!3335024)))

(assert (=> b!5375374 (= res!2281933 call!384868)))

(assert (=> b!5375374 (= e!3335025 e!3335024)))

(assert (= (and d!1720768 c!936686) b!5375373))

(assert (= (and d!1720768 (not c!936686)) b!5375371))

(assert (= (and b!5375371 res!2281934) b!5375372))

(assert (= (and b!5375372 c!936684) b!5375367))

(assert (= (and b!5375372 (not c!936684)) b!5375369))

(assert (= (and b!5375369 c!936685) b!5375366))

(assert (= (and b!5375369 (not c!936685)) b!5375364))

(assert (= (and b!5375366 (not res!2281932)) b!5375368))

(assert (= (and b!5375364 c!936687) b!5375374))

(assert (= (and b!5375364 (not c!936687)) b!5375370))

(assert (= (and b!5375374 (not res!2281933)) b!5375365))

(assert (= (or b!5375365 b!5375370) bm!384864))

(assert (= (or b!5375373 b!5375374) bm!384863))

(declare-fun m!6402118 () Bool)

(assert (=> b!5375366 m!6402118))

(assert (=> bm!384863 m!6402002))

(declare-fun m!6402120 () Bool)

(assert (=> bm!384864 m!6402120))

(declare-fun m!6402122 () Bool)

(assert (=> b!5375368 m!6402122))

(assert (=> b!5374998 d!1720768))

(declare-fun b!5375403 () Bool)

(declare-fun e!3335049 () Bool)

(assert (=> b!5375403 (= e!3335049 (= (head!11530 s!2326) (c!936583 r!7292)))))

(declare-fun bm!384867 () Bool)

(declare-fun call!384872 () Bool)

(assert (=> bm!384867 (= call!384872 (isEmpty!33451 s!2326))))

(declare-fun b!5375404 () Bool)

(declare-fun e!3335046 () Bool)

(assert (=> b!5375404 (= e!3335046 (matchR!7282 (derivativeStep!4226 r!7292 (head!11530 s!2326)) (tail!10627 s!2326)))))

(declare-fun d!1720770 () Bool)

(declare-fun e!3335050 () Bool)

(assert (=> d!1720770 e!3335050))

(declare-fun c!936696 () Bool)

(assert (=> d!1720770 (= c!936696 ((_ is EmptyExpr!15097) r!7292))))

(declare-fun lt!2189119 () Bool)

(assert (=> d!1720770 (= lt!2189119 e!3335046)))

(declare-fun c!936695 () Bool)

(assert (=> d!1720770 (= c!936695 (isEmpty!33451 s!2326))))

(assert (=> d!1720770 (validRegex!6833 r!7292)))

(assert (=> d!1720770 (= (matchR!7282 r!7292 s!2326) lt!2189119)))

(declare-fun b!5375405 () Bool)

(declare-fun e!3335047 () Bool)

(assert (=> b!5375405 (= e!3335047 (not (= (head!11530 s!2326) (c!936583 r!7292))))))

(declare-fun b!5375406 () Bool)

(declare-fun e!3335045 () Bool)

(assert (=> b!5375406 (= e!3335050 e!3335045)))

(declare-fun c!936694 () Bool)

(assert (=> b!5375406 (= c!936694 ((_ is EmptyLang!15097) r!7292))))

(declare-fun b!5375407 () Bool)

(assert (=> b!5375407 (= e!3335046 (nullable!5266 r!7292))))

(declare-fun b!5375408 () Bool)

(declare-fun e!3335051 () Bool)

(assert (=> b!5375408 (= e!3335051 e!3335047)))

(declare-fun res!2281952 () Bool)

(assert (=> b!5375408 (=> res!2281952 e!3335047)))

(assert (=> b!5375408 (= res!2281952 call!384872)))

(declare-fun b!5375409 () Bool)

(assert (=> b!5375409 (= e!3335050 (= lt!2189119 call!384872))))

(declare-fun b!5375410 () Bool)

(assert (=> b!5375410 (= e!3335045 (not lt!2189119))))

(declare-fun b!5375411 () Bool)

(declare-fun res!2281958 () Bool)

(declare-fun e!3335048 () Bool)

(assert (=> b!5375411 (=> res!2281958 e!3335048)))

(assert (=> b!5375411 (= res!2281958 (not ((_ is ElementMatch!15097) r!7292)))))

(assert (=> b!5375411 (= e!3335045 e!3335048)))

(declare-fun b!5375412 () Bool)

(declare-fun res!2281951 () Bool)

(assert (=> b!5375412 (=> (not res!2281951) (not e!3335049))))

(assert (=> b!5375412 (= res!2281951 (not call!384872))))

(declare-fun b!5375413 () Bool)

(declare-fun res!2281957 () Bool)

(assert (=> b!5375413 (=> res!2281957 e!3335047)))

(assert (=> b!5375413 (= res!2281957 (not (isEmpty!33451 (tail!10627 s!2326))))))

(declare-fun b!5375414 () Bool)

(declare-fun res!2281956 () Bool)

(assert (=> b!5375414 (=> res!2281956 e!3335048)))

(assert (=> b!5375414 (= res!2281956 e!3335049)))

(declare-fun res!2281955 () Bool)

(assert (=> b!5375414 (=> (not res!2281955) (not e!3335049))))

(assert (=> b!5375414 (= res!2281955 lt!2189119)))

(declare-fun b!5375415 () Bool)

(declare-fun res!2281954 () Bool)

(assert (=> b!5375415 (=> (not res!2281954) (not e!3335049))))

(assert (=> b!5375415 (= res!2281954 (isEmpty!33451 (tail!10627 s!2326)))))

(declare-fun b!5375416 () Bool)

(assert (=> b!5375416 (= e!3335048 e!3335051)))

(declare-fun res!2281953 () Bool)

(assert (=> b!5375416 (=> (not res!2281953) (not e!3335051))))

(assert (=> b!5375416 (= res!2281953 (not lt!2189119))))

(assert (= (and d!1720770 c!936695) b!5375407))

(assert (= (and d!1720770 (not c!936695)) b!5375404))

(assert (= (and d!1720770 c!936696) b!5375409))

(assert (= (and d!1720770 (not c!936696)) b!5375406))

(assert (= (and b!5375406 c!936694) b!5375410))

(assert (= (and b!5375406 (not c!936694)) b!5375411))

(assert (= (and b!5375411 (not res!2281958)) b!5375414))

(assert (= (and b!5375414 res!2281955) b!5375412))

(assert (= (and b!5375412 res!2281951) b!5375415))

(assert (= (and b!5375415 res!2281954) b!5375403))

(assert (= (and b!5375414 (not res!2281956)) b!5375416))

(assert (= (and b!5375416 res!2281953) b!5375408))

(assert (= (and b!5375408 (not res!2281952)) b!5375413))

(assert (= (and b!5375413 (not res!2281957)) b!5375405))

(assert (= (or b!5375409 b!5375408 b!5375412) bm!384867))

(assert (=> b!5375404 m!6401994))

(assert (=> b!5375404 m!6401994))

(declare-fun m!6402124 () Bool)

(assert (=> b!5375404 m!6402124))

(assert (=> b!5375404 m!6401998))

(assert (=> b!5375404 m!6402124))

(assert (=> b!5375404 m!6401998))

(declare-fun m!6402126 () Bool)

(assert (=> b!5375404 m!6402126))

(assert (=> d!1720770 m!6402002))

(assert (=> d!1720770 m!6401736))

(assert (=> b!5375413 m!6401998))

(assert (=> b!5375413 m!6401998))

(assert (=> b!5375413 m!6402006))

(assert (=> b!5375415 m!6401998))

(assert (=> b!5375415 m!6401998))

(assert (=> b!5375415 m!6402006))

(assert (=> b!5375405 m!6401994))

(declare-fun m!6402132 () Bool)

(assert (=> b!5375407 m!6402132))

(assert (=> bm!384867 m!6402002))

(assert (=> b!5375403 m!6401994))

(assert (=> b!5374998 d!1720770))

(declare-fun d!1720772 () Bool)

(assert (=> d!1720772 (= (matchR!7282 r!7292 s!2326) (matchRSpec!2200 r!7292 s!2326))))

(declare-fun lt!2189121 () Unit!153906)

(assert (=> d!1720772 (= lt!2189121 (choose!40376 r!7292 s!2326))))

(assert (=> d!1720772 (validRegex!6833 r!7292)))

(assert (=> d!1720772 (= (mainMatchTheorem!2200 r!7292 s!2326) lt!2189121)))

(declare-fun bs!1244425 () Bool)

(assert (= bs!1244425 d!1720772))

(assert (=> bs!1244425 m!6401664))

(assert (=> bs!1244425 m!6401662))

(declare-fun m!6402140 () Bool)

(assert (=> bs!1244425 m!6402140))

(assert (=> bs!1244425 m!6401736))

(assert (=> b!5374998 d!1720772))

(declare-fun d!1720776 () Bool)

(declare-fun lt!2189122 () Regex!15097)

(assert (=> d!1720776 (validRegex!6833 lt!2189122)))

(assert (=> d!1720776 (= lt!2189122 (generalisedUnion!1026 (unfocusZipperList!539 zl!343)))))

(assert (=> d!1720776 (= (unfocusZipper!839 zl!343) lt!2189122)))

(declare-fun bs!1244426 () Bool)

(assert (= bs!1244426 d!1720776))

(declare-fun m!6402142 () Bool)

(assert (=> bs!1244426 m!6402142))

(assert (=> bs!1244426 m!6401798))

(assert (=> bs!1244426 m!6401798))

(assert (=> bs!1244426 m!6401800))

(assert (=> b!5374976 d!1720776))

(declare-fun bs!1244427 () Bool)

(declare-fun d!1720778 () Bool)

(assert (= bs!1244427 (and d!1720778 d!1720722)))

(declare-fun lambda!277739 () Int)

(assert (=> bs!1244427 (= lambda!277739 lambda!277711)))

(declare-fun b!5375479 () Bool)

(declare-fun e!3335088 () Bool)

(assert (=> b!5375479 (= e!3335088 (isEmpty!33452 (t!374814 (exprs!4981 (h!67916 zl!343)))))))

(declare-fun b!5375480 () Bool)

(declare-fun e!3335091 () Regex!15097)

(assert (=> b!5375480 (= e!3335091 (h!67915 (exprs!4981 (h!67916 zl!343))))))

(declare-fun e!3335092 () Bool)

(assert (=> d!1720778 e!3335092))

(declare-fun res!2281983 () Bool)

(assert (=> d!1720778 (=> (not res!2281983) (not e!3335092))))

(declare-fun lt!2189125 () Regex!15097)

(assert (=> d!1720778 (= res!2281983 (validRegex!6833 lt!2189125))))

(assert (=> d!1720778 (= lt!2189125 e!3335091)))

(declare-fun c!936718 () Bool)

(assert (=> d!1720778 (= c!936718 e!3335088)))

(declare-fun res!2281984 () Bool)

(assert (=> d!1720778 (=> (not res!2281984) (not e!3335088))))

(assert (=> d!1720778 (= res!2281984 ((_ is Cons!61467) (exprs!4981 (h!67916 zl!343))))))

(assert (=> d!1720778 (forall!14499 (exprs!4981 (h!67916 zl!343)) lambda!277739)))

(assert (=> d!1720778 (= (generalisedConcat!766 (exprs!4981 (h!67916 zl!343))) lt!2189125)))

(declare-fun b!5375481 () Bool)

(declare-fun e!3335087 () Bool)

(declare-fun isConcat!463 (Regex!15097) Bool)

(assert (=> b!5375481 (= e!3335087 (isConcat!463 lt!2189125))))

(declare-fun b!5375482 () Bool)

(declare-fun e!3335090 () Regex!15097)

(assert (=> b!5375482 (= e!3335090 EmptyExpr!15097)))

(declare-fun b!5375483 () Bool)

(assert (=> b!5375483 (= e!3335090 (Concat!23942 (h!67915 (exprs!4981 (h!67916 zl!343))) (generalisedConcat!766 (t!374814 (exprs!4981 (h!67916 zl!343))))))))

(declare-fun b!5375484 () Bool)

(declare-fun e!3335089 () Bool)

(declare-fun isEmptyExpr!940 (Regex!15097) Bool)

(assert (=> b!5375484 (= e!3335089 (isEmptyExpr!940 lt!2189125))))

(declare-fun b!5375485 () Bool)

(assert (=> b!5375485 (= e!3335092 e!3335089)))

(declare-fun c!936716 () Bool)

(assert (=> b!5375485 (= c!936716 (isEmpty!33452 (exprs!4981 (h!67916 zl!343))))))

(declare-fun b!5375486 () Bool)

(declare-fun head!11531 (List!61591) Regex!15097)

(assert (=> b!5375486 (= e!3335087 (= lt!2189125 (head!11531 (exprs!4981 (h!67916 zl!343)))))))

(declare-fun b!5375487 () Bool)

(assert (=> b!5375487 (= e!3335089 e!3335087)))

(declare-fun c!936717 () Bool)

(declare-fun tail!10628 (List!61591) List!61591)

(assert (=> b!5375487 (= c!936717 (isEmpty!33452 (tail!10628 (exprs!4981 (h!67916 zl!343)))))))

(declare-fun b!5375488 () Bool)

(assert (=> b!5375488 (= e!3335091 e!3335090)))

(declare-fun c!936719 () Bool)

(assert (=> b!5375488 (= c!936719 ((_ is Cons!61467) (exprs!4981 (h!67916 zl!343))))))

(assert (= (and d!1720778 res!2281984) b!5375479))

(assert (= (and d!1720778 c!936718) b!5375480))

(assert (= (and d!1720778 (not c!936718)) b!5375488))

(assert (= (and b!5375488 c!936719) b!5375483))

(assert (= (and b!5375488 (not c!936719)) b!5375482))

(assert (= (and d!1720778 res!2281983) b!5375485))

(assert (= (and b!5375485 c!936716) b!5375484))

(assert (= (and b!5375485 (not c!936716)) b!5375487))

(assert (= (and b!5375487 c!936717) b!5375486))

(assert (= (and b!5375487 (not c!936717)) b!5375481))

(assert (=> b!5375479 m!6401710))

(declare-fun m!6402144 () Bool)

(assert (=> b!5375483 m!6402144))

(declare-fun m!6402146 () Bool)

(assert (=> b!5375486 m!6402146))

(declare-fun m!6402148 () Bool)

(assert (=> b!5375484 m!6402148))

(declare-fun m!6402150 () Bool)

(assert (=> d!1720778 m!6402150))

(declare-fun m!6402152 () Bool)

(assert (=> d!1720778 m!6402152))

(declare-fun m!6402154 () Bool)

(assert (=> b!5375485 m!6402154))

(declare-fun m!6402156 () Bool)

(assert (=> b!5375487 m!6402156))

(assert (=> b!5375487 m!6402156))

(declare-fun m!6402158 () Bool)

(assert (=> b!5375487 m!6402158))

(declare-fun m!6402160 () Bool)

(assert (=> b!5375481 m!6402160))

(assert (=> b!5374997 d!1720778))

(declare-fun d!1720780 () Bool)

(declare-fun c!936720 () Bool)

(assert (=> d!1720780 (= c!936720 (isEmpty!33451 (t!374813 s!2326)))))

(declare-fun e!3335095 () Bool)

(assert (=> d!1720780 (= (matchZipper!1341 lt!2189031 (t!374813 s!2326)) e!3335095)))

(declare-fun b!5375493 () Bool)

(assert (=> b!5375493 (= e!3335095 (nullableZipper!1406 lt!2189031))))

(declare-fun b!5375494 () Bool)

(assert (=> b!5375494 (= e!3335095 (matchZipper!1341 (derivationStepZipper!1336 lt!2189031 (head!11530 (t!374813 s!2326))) (tail!10627 (t!374813 s!2326))))))

(assert (= (and d!1720780 c!936720) b!5375493))

(assert (= (and d!1720780 (not c!936720)) b!5375494))

(assert (=> d!1720780 m!6402078))

(declare-fun m!6402162 () Bool)

(assert (=> b!5375493 m!6402162))

(assert (=> b!5375494 m!6402082))

(assert (=> b!5375494 m!6402082))

(declare-fun m!6402164 () Bool)

(assert (=> b!5375494 m!6402164))

(assert (=> b!5375494 m!6402086))

(assert (=> b!5375494 m!6402164))

(assert (=> b!5375494 m!6402086))

(declare-fun m!6402166 () Bool)

(assert (=> b!5375494 m!6402166))

(assert (=> b!5374977 d!1720780))

(declare-fun d!1720782 () Bool)

(assert (=> d!1720782 (= (isEmpty!33452 (t!374814 (exprs!4981 (h!67916 zl!343)))) ((_ is Nil!61467) (t!374814 (exprs!4981 (h!67916 zl!343)))))))

(assert (=> b!5374995 d!1720782))

(declare-fun d!1720784 () Bool)

(declare-fun choose!40382 ((InoxSet Context!8962) Int) (InoxSet Context!8962))

(assert (=> d!1720784 (= (flatMap!824 z!1189 lambda!277688) (choose!40382 z!1189 lambda!277688))))

(declare-fun bs!1244428 () Bool)

(assert (= bs!1244428 d!1720784))

(declare-fun m!6402168 () Bool)

(assert (=> bs!1244428 m!6402168))

(assert (=> b!5374975 d!1720784))

(declare-fun d!1720786 () Bool)

(assert (=> d!1720786 (= (nullable!5266 (h!67915 (exprs!4981 (h!67916 zl!343)))) (nullableFct!1557 (h!67915 (exprs!4981 (h!67916 zl!343)))))))

(declare-fun bs!1244429 () Bool)

(assert (= bs!1244429 d!1720786))

(declare-fun m!6402170 () Bool)

(assert (=> bs!1244429 m!6402170))

(assert (=> b!5374975 d!1720786))

(declare-fun d!1720788 () Bool)

(declare-fun c!936730 () Bool)

(declare-fun e!3335111 () Bool)

(assert (=> d!1720788 (= c!936730 e!3335111)))

(declare-fun res!2281994 () Bool)

(assert (=> d!1720788 (=> (not res!2281994) (not e!3335111))))

(assert (=> d!1720788 (= res!2281994 ((_ is Cons!61467) (exprs!4981 (Context!8963 (Cons!61467 (h!67915 (exprs!4981 (h!67916 zl!343))) (t!374814 (exprs!4981 (h!67916 zl!343))))))))))

(declare-fun e!3335110 () (InoxSet Context!8962))

(assert (=> d!1720788 (= (derivationStepZipperUp!469 (Context!8963 (Cons!61467 (h!67915 (exprs!4981 (h!67916 zl!343))) (t!374814 (exprs!4981 (h!67916 zl!343))))) (h!67914 s!2326)) e!3335110)))

(declare-fun bm!384877 () Bool)

(declare-fun call!384882 () (InoxSet Context!8962))

(assert (=> bm!384877 (= call!384882 (derivationStepZipperDown!545 (h!67915 (exprs!4981 (Context!8963 (Cons!61467 (h!67915 (exprs!4981 (h!67916 zl!343))) (t!374814 (exprs!4981 (h!67916 zl!343))))))) (Context!8963 (t!374814 (exprs!4981 (Context!8963 (Cons!61467 (h!67915 (exprs!4981 (h!67916 zl!343))) (t!374814 (exprs!4981 (h!67916 zl!343)))))))) (h!67914 s!2326)))))

(declare-fun b!5375516 () Bool)

(assert (=> b!5375516 (= e!3335111 (nullable!5266 (h!67915 (exprs!4981 (Context!8963 (Cons!61467 (h!67915 (exprs!4981 (h!67916 zl!343))) (t!374814 (exprs!4981 (h!67916 zl!343)))))))))))

(declare-fun b!5375517 () Bool)

(declare-fun e!3335109 () (InoxSet Context!8962))

(assert (=> b!5375517 (= e!3335110 e!3335109)))

(declare-fun c!936729 () Bool)

(assert (=> b!5375517 (= c!936729 ((_ is Cons!61467) (exprs!4981 (Context!8963 (Cons!61467 (h!67915 (exprs!4981 (h!67916 zl!343))) (t!374814 (exprs!4981 (h!67916 zl!343))))))))))

(declare-fun b!5375518 () Bool)

(assert (=> b!5375518 (= e!3335109 call!384882)))

(declare-fun b!5375519 () Bool)

(assert (=> b!5375519 (= e!3335109 ((as const (Array Context!8962 Bool)) false))))

(declare-fun b!5375520 () Bool)

(assert (=> b!5375520 (= e!3335110 ((_ map or) call!384882 (derivationStepZipperUp!469 (Context!8963 (t!374814 (exprs!4981 (Context!8963 (Cons!61467 (h!67915 (exprs!4981 (h!67916 zl!343))) (t!374814 (exprs!4981 (h!67916 zl!343)))))))) (h!67914 s!2326))))))

(assert (= (and d!1720788 res!2281994) b!5375516))

(assert (= (and d!1720788 c!936730) b!5375520))

(assert (= (and d!1720788 (not c!936730)) b!5375517))

(assert (= (and b!5375517 c!936729) b!5375518))

(assert (= (and b!5375517 (not c!936729)) b!5375519))

(assert (= (or b!5375520 b!5375518) bm!384877))

(declare-fun m!6402172 () Bool)

(assert (=> bm!384877 m!6402172))

(declare-fun m!6402174 () Bool)

(assert (=> b!5375516 m!6402174))

(declare-fun m!6402176 () Bool)

(assert (=> b!5375520 m!6402176))

(assert (=> b!5374975 d!1720788))

(declare-fun b!5375564 () Bool)

(declare-fun e!3335138 () (InoxSet Context!8962))

(assert (=> b!5375564 (= e!3335138 (store ((as const (Array Context!8962 Bool)) false) lt!2189011 true))))

(declare-fun c!936751 () Bool)

(declare-fun call!384902 () (InoxSet Context!8962))

(declare-fun c!936750 () Bool)

(declare-fun call!384900 () List!61591)

(declare-fun c!936753 () Bool)

(declare-fun bm!384894 () Bool)

(assert (=> bm!384894 (= call!384902 (derivationStepZipperDown!545 (ite c!936751 (regTwo!30707 (h!67915 (exprs!4981 (h!67916 zl!343)))) (ite c!936750 (regTwo!30706 (h!67915 (exprs!4981 (h!67916 zl!343)))) (ite c!936753 (regOne!30706 (h!67915 (exprs!4981 (h!67916 zl!343)))) (reg!15426 (h!67915 (exprs!4981 (h!67916 zl!343))))))) (ite (or c!936751 c!936750) lt!2189011 (Context!8963 call!384900)) (h!67914 s!2326)))))

(declare-fun b!5375565 () Bool)

(declare-fun e!3335141 () (InoxSet Context!8962))

(declare-fun call!384901 () (InoxSet Context!8962))

(assert (=> b!5375565 (= e!3335141 ((_ map or) call!384901 call!384902))))

(declare-fun b!5375566 () Bool)

(declare-fun e!3335137 () (InoxSet Context!8962))

(declare-fun call!384899 () (InoxSet Context!8962))

(assert (=> b!5375566 (= e!3335137 ((_ map or) call!384901 call!384899))))

(declare-fun b!5375567 () Bool)

(declare-fun e!3335140 () (InoxSet Context!8962))

(declare-fun call!384903 () (InoxSet Context!8962))

(assert (=> b!5375567 (= e!3335140 call!384903)))

(declare-fun b!5375568 () Bool)

(declare-fun e!3335139 () Bool)

(assert (=> b!5375568 (= e!3335139 (nullable!5266 (regOne!30706 (h!67915 (exprs!4981 (h!67916 zl!343))))))))

(declare-fun bm!384895 () Bool)

(declare-fun call!384904 () List!61591)

(assert (=> bm!384895 (= call!384900 call!384904)))

(declare-fun b!5375569 () Bool)

(declare-fun c!936749 () Bool)

(assert (=> b!5375569 (= c!936749 ((_ is Star!15097) (h!67915 (exprs!4981 (h!67916 zl!343)))))))

(declare-fun e!3335142 () (InoxSet Context!8962))

(assert (=> b!5375569 (= e!3335142 e!3335140)))

(declare-fun bm!384896 () Bool)

(declare-fun $colon$colon!1456 (List!61591 Regex!15097) List!61591)

(assert (=> bm!384896 (= call!384904 ($colon$colon!1456 (exprs!4981 lt!2189011) (ite (or c!936750 c!936753) (regTwo!30706 (h!67915 (exprs!4981 (h!67916 zl!343)))) (h!67915 (exprs!4981 (h!67916 zl!343))))))))

(declare-fun d!1720790 () Bool)

(declare-fun c!936752 () Bool)

(assert (=> d!1720790 (= c!936752 (and ((_ is ElementMatch!15097) (h!67915 (exprs!4981 (h!67916 zl!343)))) (= (c!936583 (h!67915 (exprs!4981 (h!67916 zl!343)))) (h!67914 s!2326))))))

(assert (=> d!1720790 (= (derivationStepZipperDown!545 (h!67915 (exprs!4981 (h!67916 zl!343))) lt!2189011 (h!67914 s!2326)) e!3335138)))

(declare-fun b!5375570 () Bool)

(assert (=> b!5375570 (= e!3335138 e!3335141)))

(assert (=> b!5375570 (= c!936751 ((_ is Union!15097) (h!67915 (exprs!4981 (h!67916 zl!343)))))))

(declare-fun bm!384897 () Bool)

(assert (=> bm!384897 (= call!384899 call!384902)))

(declare-fun bm!384898 () Bool)

(assert (=> bm!384898 (= call!384903 call!384899)))

(declare-fun b!5375571 () Bool)

(assert (=> b!5375571 (= e!3335137 e!3335142)))

(assert (=> b!5375571 (= c!936753 ((_ is Concat!23942) (h!67915 (exprs!4981 (h!67916 zl!343)))))))

(declare-fun b!5375572 () Bool)

(assert (=> b!5375572 (= e!3335140 ((as const (Array Context!8962 Bool)) false))))

(declare-fun bm!384899 () Bool)

(assert (=> bm!384899 (= call!384901 (derivationStepZipperDown!545 (ite c!936751 (regOne!30707 (h!67915 (exprs!4981 (h!67916 zl!343)))) (regOne!30706 (h!67915 (exprs!4981 (h!67916 zl!343))))) (ite c!936751 lt!2189011 (Context!8963 call!384904)) (h!67914 s!2326)))))

(declare-fun b!5375573 () Bool)

(assert (=> b!5375573 (= e!3335142 call!384903)))

(declare-fun b!5375574 () Bool)

(assert (=> b!5375574 (= c!936750 e!3335139)))

(declare-fun res!2282002 () Bool)

(assert (=> b!5375574 (=> (not res!2282002) (not e!3335139))))

(assert (=> b!5375574 (= res!2282002 ((_ is Concat!23942) (h!67915 (exprs!4981 (h!67916 zl!343)))))))

(assert (=> b!5375574 (= e!3335141 e!3335137)))

(assert (= (and d!1720790 c!936752) b!5375564))

(assert (= (and d!1720790 (not c!936752)) b!5375570))

(assert (= (and b!5375570 c!936751) b!5375565))

(assert (= (and b!5375570 (not c!936751)) b!5375574))

(assert (= (and b!5375574 res!2282002) b!5375568))

(assert (= (and b!5375574 c!936750) b!5375566))

(assert (= (and b!5375574 (not c!936750)) b!5375571))

(assert (= (and b!5375571 c!936753) b!5375573))

(assert (= (and b!5375571 (not c!936753)) b!5375569))

(assert (= (and b!5375569 c!936749) b!5375567))

(assert (= (and b!5375569 (not c!936749)) b!5375572))

(assert (= (or b!5375573 b!5375567) bm!384895))

(assert (= (or b!5375573 b!5375567) bm!384898))

(assert (= (or b!5375566 bm!384895) bm!384896))

(assert (= (or b!5375566 bm!384898) bm!384897))

(assert (= (or b!5375565 bm!384897) bm!384894))

(assert (= (or b!5375565 b!5375566) bm!384899))

(declare-fun m!6402216 () Bool)

(assert (=> b!5375568 m!6402216))

(declare-fun m!6402218 () Bool)

(assert (=> bm!384896 m!6402218))

(declare-fun m!6402220 () Bool)

(assert (=> bm!384899 m!6402220))

(declare-fun m!6402222 () Bool)

(assert (=> b!5375564 m!6402222))

(declare-fun m!6402224 () Bool)

(assert (=> bm!384894 m!6402224))

(assert (=> b!5374975 d!1720790))

(declare-fun d!1720810 () Bool)

(declare-fun dynLambda!24267 (Int Context!8962) (InoxSet Context!8962))

(assert (=> d!1720810 (= (flatMap!824 z!1189 lambda!277688) (dynLambda!24267 lambda!277688 (h!67916 zl!343)))))

(declare-fun lt!2189136 () Unit!153906)

(declare-fun choose!40383 ((InoxSet Context!8962) Context!8962 Int) Unit!153906)

(assert (=> d!1720810 (= lt!2189136 (choose!40383 z!1189 (h!67916 zl!343) lambda!277688))))

(assert (=> d!1720810 (= z!1189 (store ((as const (Array Context!8962 Bool)) false) (h!67916 zl!343) true))))

(assert (=> d!1720810 (= (lemmaFlatMapOnSingletonSet!356 z!1189 (h!67916 zl!343) lambda!277688) lt!2189136)))

(declare-fun b_lambda!205973 () Bool)

(assert (=> (not b_lambda!205973) (not d!1720810)))

(declare-fun bs!1244465 () Bool)

(assert (= bs!1244465 d!1720810))

(assert (=> bs!1244465 m!6401752))

(declare-fun m!6402238 () Bool)

(assert (=> bs!1244465 m!6402238))

(declare-fun m!6402240 () Bool)

(assert (=> bs!1244465 m!6402240))

(declare-fun m!6402242 () Bool)

(assert (=> bs!1244465 m!6402242))

(assert (=> b!5374975 d!1720810))

(declare-fun d!1720820 () Bool)

(declare-fun c!936755 () Bool)

(declare-fun e!3335145 () Bool)

(assert (=> d!1720820 (= c!936755 e!3335145)))

(declare-fun res!2282003 () Bool)

(assert (=> d!1720820 (=> (not res!2282003) (not e!3335145))))

(assert (=> d!1720820 (= res!2282003 ((_ is Cons!61467) (exprs!4981 (h!67916 zl!343))))))

(declare-fun e!3335144 () (InoxSet Context!8962))

(assert (=> d!1720820 (= (derivationStepZipperUp!469 (h!67916 zl!343) (h!67914 s!2326)) e!3335144)))

(declare-fun bm!384900 () Bool)

(declare-fun call!384905 () (InoxSet Context!8962))

(assert (=> bm!384900 (= call!384905 (derivationStepZipperDown!545 (h!67915 (exprs!4981 (h!67916 zl!343))) (Context!8963 (t!374814 (exprs!4981 (h!67916 zl!343)))) (h!67914 s!2326)))))

(declare-fun b!5375575 () Bool)

(assert (=> b!5375575 (= e!3335145 (nullable!5266 (h!67915 (exprs!4981 (h!67916 zl!343)))))))

(declare-fun b!5375576 () Bool)

(declare-fun e!3335143 () (InoxSet Context!8962))

(assert (=> b!5375576 (= e!3335144 e!3335143)))

(declare-fun c!936754 () Bool)

(assert (=> b!5375576 (= c!936754 ((_ is Cons!61467) (exprs!4981 (h!67916 zl!343))))))

(declare-fun b!5375577 () Bool)

(assert (=> b!5375577 (= e!3335143 call!384905)))

(declare-fun b!5375578 () Bool)

(assert (=> b!5375578 (= e!3335143 ((as const (Array Context!8962 Bool)) false))))

(declare-fun b!5375579 () Bool)

(assert (=> b!5375579 (= e!3335144 ((_ map or) call!384905 (derivationStepZipperUp!469 (Context!8963 (t!374814 (exprs!4981 (h!67916 zl!343)))) (h!67914 s!2326))))))

(assert (= (and d!1720820 res!2282003) b!5375575))

(assert (= (and d!1720820 c!936755) b!5375579))

(assert (= (and d!1720820 (not c!936755)) b!5375576))

(assert (= (and b!5375576 c!936754) b!5375577))

(assert (= (and b!5375576 (not c!936754)) b!5375578))

(assert (= (or b!5375579 b!5375577) bm!384900))

(declare-fun m!6402244 () Bool)

(assert (=> bm!384900 m!6402244))

(assert (=> b!5375575 m!6401748))

(declare-fun m!6402246 () Bool)

(assert (=> b!5375579 m!6402246))

(assert (=> b!5374975 d!1720820))

(declare-fun d!1720822 () Bool)

(declare-fun c!936757 () Bool)

(declare-fun e!3335148 () Bool)

(assert (=> d!1720822 (= c!936757 e!3335148)))

(declare-fun res!2282004 () Bool)

(assert (=> d!1720822 (=> (not res!2282004) (not e!3335148))))

(assert (=> d!1720822 (= res!2282004 ((_ is Cons!61467) (exprs!4981 lt!2189011)))))

(declare-fun e!3335147 () (InoxSet Context!8962))

(assert (=> d!1720822 (= (derivationStepZipperUp!469 lt!2189011 (h!67914 s!2326)) e!3335147)))

(declare-fun bm!384901 () Bool)

(declare-fun call!384906 () (InoxSet Context!8962))

(assert (=> bm!384901 (= call!384906 (derivationStepZipperDown!545 (h!67915 (exprs!4981 lt!2189011)) (Context!8963 (t!374814 (exprs!4981 lt!2189011))) (h!67914 s!2326)))))

(declare-fun b!5375580 () Bool)

(assert (=> b!5375580 (= e!3335148 (nullable!5266 (h!67915 (exprs!4981 lt!2189011))))))

(declare-fun b!5375581 () Bool)

(declare-fun e!3335146 () (InoxSet Context!8962))

(assert (=> b!5375581 (= e!3335147 e!3335146)))

(declare-fun c!936756 () Bool)

(assert (=> b!5375581 (= c!936756 ((_ is Cons!61467) (exprs!4981 lt!2189011)))))

(declare-fun b!5375582 () Bool)

(assert (=> b!5375582 (= e!3335146 call!384906)))

(declare-fun b!5375583 () Bool)

(assert (=> b!5375583 (= e!3335146 ((as const (Array Context!8962 Bool)) false))))

(declare-fun b!5375584 () Bool)

(assert (=> b!5375584 (= e!3335147 ((_ map or) call!384906 (derivationStepZipperUp!469 (Context!8963 (t!374814 (exprs!4981 lt!2189011))) (h!67914 s!2326))))))

(assert (= (and d!1720822 res!2282004) b!5375580))

(assert (= (and d!1720822 c!936757) b!5375584))

(assert (= (and d!1720822 (not c!936757)) b!5375581))

(assert (= (and b!5375581 c!936756) b!5375582))

(assert (= (and b!5375581 (not c!936756)) b!5375583))

(assert (= (or b!5375584 b!5375582) bm!384901))

(declare-fun m!6402248 () Bool)

(assert (=> bm!384901 m!6402248))

(declare-fun m!6402250 () Bool)

(assert (=> b!5375580 m!6402250))

(declare-fun m!6402252 () Bool)

(assert (=> b!5375584 m!6402252))

(assert (=> b!5374975 d!1720822))

(declare-fun bs!1244476 () Bool)

(declare-fun d!1720824 () Bool)

(assert (= bs!1244476 (and d!1720824 d!1720698)))

(declare-fun lambda!277747 () Int)

(assert (=> bs!1244476 (= (= lt!2189037 (regOne!30706 r!7292)) (= lambda!277747 lambda!277702))))

(declare-fun bs!1244477 () Bool)

(assert (= bs!1244477 (and d!1720824 b!5375313)))

(assert (=> bs!1244477 (not (= lambda!277747 lambda!277723))))

(declare-fun bs!1244478 () Bool)

(assert (= bs!1244478 (and d!1720824 d!1720704)))

(assert (=> bs!1244478 (= (= lt!2189037 (regOne!30706 r!7292)) (= lambda!277747 lambda!277707))))

(declare-fun bs!1244479 () Bool)

(assert (= bs!1244479 (and d!1720824 b!5374996)))

(assert (=> bs!1244479 (= lambda!277747 lambda!277689)))

(declare-fun bs!1244480 () Bool)

(assert (= bs!1244480 (and d!1720824 b!5375002)))

(assert (=> bs!1244480 (not (= lambda!277747 lambda!277687))))

(declare-fun bs!1244481 () Bool)

(assert (= bs!1244481 (and d!1720824 b!5375370)))

(assert (=> bs!1244481 (not (= lambda!277747 lambda!277734))))

(declare-fun bs!1244482 () Bool)

(assert (= bs!1244482 (and d!1720824 b!5374973)))

(assert (=> bs!1244482 (not (= lambda!277747 lambda!277693))))

(assert (=> bs!1244480 (= (= lt!2189037 (regOne!30706 r!7292)) (= lambda!277747 lambda!277686))))

(declare-fun bs!1244483 () Bool)

(assert (= bs!1244483 (and d!1720824 b!5375318)))

(assert (=> bs!1244483 (not (= lambda!277747 lambda!277725))))

(assert (=> bs!1244482 (not (= lambda!277747 lambda!277692))))

(assert (=> bs!1244479 (not (= lambda!277747 lambda!277690))))

(assert (=> bs!1244482 (= (and (= s!2326 (_1!35599 lt!2189026)) (= lt!2189037 (reg!15426 (regOne!30706 r!7292))) (= (regTwo!30706 r!7292) lt!2189037)) (= lambda!277747 lambda!277691))))

(declare-fun bs!1244484 () Bool)

(assert (= bs!1244484 (and d!1720824 b!5375365)))

(assert (=> bs!1244484 (not (= lambda!277747 lambda!277733))))

(assert (=> bs!1244478 (not (= lambda!277747 lambda!277708))))

(assert (=> d!1720824 true))

(assert (=> d!1720824 true))

(assert (=> d!1720824 true))

(declare-fun lambda!277748 () Int)

(assert (=> bs!1244477 (not (= lambda!277748 lambda!277723))))

(assert (=> bs!1244478 (not (= lambda!277748 lambda!277707))))

(assert (=> bs!1244479 (not (= lambda!277748 lambda!277689))))

(assert (=> bs!1244480 (= (= lt!2189037 (regOne!30706 r!7292)) (= lambda!277748 lambda!277687))))

(assert (=> bs!1244481 (= (= lt!2189037 (regOne!30706 r!7292)) (= lambda!277748 lambda!277734))))

(assert (=> bs!1244482 (= (and (= s!2326 (_1!35599 lt!2189026)) (= lt!2189037 (reg!15426 (regOne!30706 r!7292))) (= (regTwo!30706 r!7292) lt!2189037)) (= lambda!277748 lambda!277693))))

(assert (=> bs!1244480 (not (= lambda!277748 lambda!277686))))

(assert (=> bs!1244483 (= (and (= lt!2189037 (regOne!30706 lt!2189036)) (= (regTwo!30706 r!7292) (regTwo!30706 lt!2189036))) (= lambda!277748 lambda!277725))))

(assert (=> bs!1244482 (not (= lambda!277748 lambda!277692))))

(assert (=> bs!1244479 (= lambda!277748 lambda!277690)))

(declare-fun bs!1244487 () Bool)

(assert (= bs!1244487 d!1720824))

(assert (=> bs!1244487 (not (= lambda!277748 lambda!277747))))

(assert (=> bs!1244476 (not (= lambda!277748 lambda!277702))))

(assert (=> bs!1244482 (not (= lambda!277748 lambda!277691))))

(assert (=> bs!1244484 (not (= lambda!277748 lambda!277733))))

(assert (=> bs!1244478 (= (= lt!2189037 (regOne!30706 r!7292)) (= lambda!277748 lambda!277708))))

(assert (=> d!1720824 true))

(assert (=> d!1720824 true))

(assert (=> d!1720824 true))

(assert (=> d!1720824 (= (Exists!2278 lambda!277747) (Exists!2278 lambda!277748))))

(declare-fun lt!2189137 () Unit!153906)

(assert (=> d!1720824 (= lt!2189137 (choose!40374 lt!2189037 (regTwo!30706 r!7292) s!2326))))

(assert (=> d!1720824 (validRegex!6833 lt!2189037)))

(assert (=> d!1720824 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!932 lt!2189037 (regTwo!30706 r!7292) s!2326) lt!2189137)))

(declare-fun m!6402288 () Bool)

(assert (=> bs!1244487 m!6402288))

(declare-fun m!6402290 () Bool)

(assert (=> bs!1244487 m!6402290))

(declare-fun m!6402292 () Bool)

(assert (=> bs!1244487 m!6402292))

(assert (=> bs!1244487 m!6401758))

(assert (=> b!5374996 d!1720824))

(declare-fun bs!1244494 () Bool)

(declare-fun d!1720836 () Bool)

(assert (= bs!1244494 (and d!1720836 b!5375313)))

(declare-fun lambda!277750 () Int)

(assert (=> bs!1244494 (not (= lambda!277750 lambda!277723))))

(declare-fun bs!1244496 () Bool)

(assert (= bs!1244496 (and d!1720836 d!1720704)))

(assert (=> bs!1244496 (= (= lt!2189037 (regOne!30706 r!7292)) (= lambda!277750 lambda!277707))))

(declare-fun bs!1244498 () Bool)

(assert (= bs!1244498 (and d!1720836 b!5375002)))

(assert (=> bs!1244498 (not (= lambda!277750 lambda!277687))))

(declare-fun bs!1244499 () Bool)

(assert (= bs!1244499 (and d!1720836 b!5375370)))

(assert (=> bs!1244499 (not (= lambda!277750 lambda!277734))))

(declare-fun bs!1244501 () Bool)

(assert (= bs!1244501 (and d!1720836 b!5374973)))

(assert (=> bs!1244501 (not (= lambda!277750 lambda!277693))))

(assert (=> bs!1244498 (= (= lt!2189037 (regOne!30706 r!7292)) (= lambda!277750 lambda!277686))))

(declare-fun bs!1244503 () Bool)

(assert (= bs!1244503 (and d!1720836 b!5375318)))

(assert (=> bs!1244503 (not (= lambda!277750 lambda!277725))))

(assert (=> bs!1244501 (not (= lambda!277750 lambda!277692))))

(declare-fun bs!1244504 () Bool)

(assert (= bs!1244504 (and d!1720836 b!5374996)))

(assert (=> bs!1244504 (not (= lambda!277750 lambda!277690))))

(declare-fun bs!1244505 () Bool)

(assert (= bs!1244505 (and d!1720836 d!1720824)))

(assert (=> bs!1244505 (= lambda!277750 lambda!277747)))

(declare-fun bs!1244506 () Bool)

(assert (= bs!1244506 (and d!1720836 d!1720698)))

(assert (=> bs!1244506 (= (= lt!2189037 (regOne!30706 r!7292)) (= lambda!277750 lambda!277702))))

(assert (=> bs!1244501 (= (and (= s!2326 (_1!35599 lt!2189026)) (= lt!2189037 (reg!15426 (regOne!30706 r!7292))) (= (regTwo!30706 r!7292) lt!2189037)) (= lambda!277750 lambda!277691))))

(declare-fun bs!1244507 () Bool)

(assert (= bs!1244507 (and d!1720836 b!5375365)))

(assert (=> bs!1244507 (not (= lambda!277750 lambda!277733))))

(assert (=> bs!1244496 (not (= lambda!277750 lambda!277708))))

(assert (=> bs!1244504 (= lambda!277750 lambda!277689)))

(assert (=> bs!1244505 (not (= lambda!277750 lambda!277748))))

(assert (=> d!1720836 true))

(assert (=> d!1720836 true))

(assert (=> d!1720836 true))

(assert (=> d!1720836 (= (isDefined!11911 (findConcatSeparation!1622 lt!2189037 (regTwo!30706 r!7292) Nil!61466 s!2326 s!2326)) (Exists!2278 lambda!277750))))

(declare-fun lt!2189142 () Unit!153906)

(assert (=> d!1720836 (= lt!2189142 (choose!40373 lt!2189037 (regTwo!30706 r!7292) s!2326))))

(assert (=> d!1720836 (validRegex!6833 lt!2189037)))

(assert (=> d!1720836 (= (lemmaFindConcatSeparationEquivalentToExists!1386 lt!2189037 (regTwo!30706 r!7292) s!2326) lt!2189142)))

(declare-fun bs!1244509 () Bool)

(assert (= bs!1244509 d!1720836))

(assert (=> bs!1244509 m!6401720))

(declare-fun m!6402294 () Bool)

(assert (=> bs!1244509 m!6402294))

(declare-fun m!6402296 () Bool)

(assert (=> bs!1244509 m!6402296))

(assert (=> bs!1244509 m!6401720))

(declare-fun m!6402298 () Bool)

(assert (=> bs!1244509 m!6402298))

(assert (=> bs!1244509 m!6401758))

(assert (=> b!5374996 d!1720836))

(declare-fun d!1720838 () Bool)

(assert (=> d!1720838 (= (isDefined!11911 lt!2189028) (not (isEmpty!33453 lt!2189028)))))

(declare-fun bs!1244510 () Bool)

(assert (= bs!1244510 d!1720838))

(declare-fun m!6402300 () Bool)

(assert (=> bs!1244510 m!6402300))

(assert (=> b!5374996 d!1720838))

(declare-fun d!1720840 () Bool)

(assert (=> d!1720840 (= (get!21154 lt!2189028) (v!51236 lt!2189028))))

(assert (=> b!5374996 d!1720840))

(declare-fun d!1720842 () Bool)

(declare-fun e!3335166 () Bool)

(assert (=> d!1720842 e!3335166))

(declare-fun res!2282019 () Bool)

(assert (=> d!1720842 (=> (not res!2282019) (not e!3335166))))

(declare-fun lt!2189145 () List!61590)

(declare-fun content!10987 (List!61590) (InoxSet C!30464))

(assert (=> d!1720842 (= res!2282019 (= (content!10987 lt!2189145) ((_ map or) (content!10987 (_1!35599 lt!2189026)) (content!10987 (_2!35599 lt!2189026)))))))

(declare-fun e!3335165 () List!61590)

(assert (=> d!1720842 (= lt!2189145 e!3335165)))

(declare-fun c!936764 () Bool)

(assert (=> d!1720842 (= c!936764 ((_ is Nil!61466) (_1!35599 lt!2189026)))))

(assert (=> d!1720842 (= (++!13400 (_1!35599 lt!2189026) (_2!35599 lt!2189026)) lt!2189145)))

(declare-fun b!5375612 () Bool)

(assert (=> b!5375612 (= e!3335165 (Cons!61466 (h!67914 (_1!35599 lt!2189026)) (++!13400 (t!374813 (_1!35599 lt!2189026)) (_2!35599 lt!2189026))))))

(declare-fun b!5375613 () Bool)

(declare-fun res!2282020 () Bool)

(assert (=> b!5375613 (=> (not res!2282020) (not e!3335166))))

(declare-fun size!39797 (List!61590) Int)

(assert (=> b!5375613 (= res!2282020 (= (size!39797 lt!2189145) (+ (size!39797 (_1!35599 lt!2189026)) (size!39797 (_2!35599 lt!2189026)))))))

(declare-fun b!5375614 () Bool)

(assert (=> b!5375614 (= e!3335166 (or (not (= (_2!35599 lt!2189026) Nil!61466)) (= lt!2189145 (_1!35599 lt!2189026))))))

(declare-fun b!5375611 () Bool)

(assert (=> b!5375611 (= e!3335165 (_2!35599 lt!2189026))))

(assert (= (and d!1720842 c!936764) b!5375611))

(assert (= (and d!1720842 (not c!936764)) b!5375612))

(assert (= (and d!1720842 res!2282019) b!5375613))

(assert (= (and b!5375613 res!2282020) b!5375614))

(declare-fun m!6402308 () Bool)

(assert (=> d!1720842 m!6402308))

(declare-fun m!6402310 () Bool)

(assert (=> d!1720842 m!6402310))

(declare-fun m!6402312 () Bool)

(assert (=> d!1720842 m!6402312))

(declare-fun m!6402314 () Bool)

(assert (=> b!5375612 m!6402314))

(declare-fun m!6402316 () Bool)

(assert (=> b!5375613 m!6402316))

(declare-fun m!6402318 () Bool)

(assert (=> b!5375613 m!6402318))

(declare-fun m!6402320 () Bool)

(assert (=> b!5375613 m!6402320))

(assert (=> b!5374996 d!1720842))

(declare-fun d!1720846 () Bool)

(assert (=> d!1720846 (= (Exists!2278 lambda!277690) (choose!40372 lambda!277690))))

(declare-fun bs!1244511 () Bool)

(assert (= bs!1244511 d!1720846))

(declare-fun m!6402322 () Bool)

(assert (=> bs!1244511 m!6402322))

(assert (=> b!5374996 d!1720846))

(declare-fun b!5375615 () Bool)

(declare-fun e!3335170 () Option!15208)

(assert (=> b!5375615 (= e!3335170 None!15207)))

(declare-fun b!5375617 () Bool)

(declare-fun e!3335169 () Bool)

(declare-fun lt!2189146 () Option!15208)

(assert (=> b!5375617 (= e!3335169 (not (isDefined!11911 lt!2189146)))))

(declare-fun b!5375618 () Bool)

(declare-fun res!2282025 () Bool)

(declare-fun e!3335168 () Bool)

(assert (=> b!5375618 (=> (not res!2282025) (not e!3335168))))

(assert (=> b!5375618 (= res!2282025 (matchR!7282 lt!2189037 (_1!35599 (get!21154 lt!2189146))))))

(declare-fun b!5375619 () Bool)

(declare-fun e!3335171 () Option!15208)

(assert (=> b!5375619 (= e!3335171 e!3335170)))

(declare-fun c!936766 () Bool)

(assert (=> b!5375619 (= c!936766 ((_ is Nil!61466) s!2326))))

(declare-fun b!5375620 () Bool)

(declare-fun res!2282022 () Bool)

(assert (=> b!5375620 (=> (not res!2282022) (not e!3335168))))

(assert (=> b!5375620 (= res!2282022 (matchR!7282 (regTwo!30706 r!7292) (_2!35599 (get!21154 lt!2189146))))))

(declare-fun b!5375621 () Bool)

(declare-fun e!3335167 () Bool)

(assert (=> b!5375621 (= e!3335167 (matchR!7282 (regTwo!30706 r!7292) s!2326))))

(declare-fun b!5375616 () Bool)

(assert (=> b!5375616 (= e!3335171 (Some!15207 (tuple2!64593 Nil!61466 s!2326)))))

(declare-fun d!1720848 () Bool)

(assert (=> d!1720848 e!3335169))

(declare-fun res!2282021 () Bool)

(assert (=> d!1720848 (=> res!2282021 e!3335169)))

(assert (=> d!1720848 (= res!2282021 e!3335168)))

(declare-fun res!2282024 () Bool)

(assert (=> d!1720848 (=> (not res!2282024) (not e!3335168))))

(assert (=> d!1720848 (= res!2282024 (isDefined!11911 lt!2189146))))

(assert (=> d!1720848 (= lt!2189146 e!3335171)))

(declare-fun c!936765 () Bool)

(assert (=> d!1720848 (= c!936765 e!3335167)))

(declare-fun res!2282023 () Bool)

(assert (=> d!1720848 (=> (not res!2282023) (not e!3335167))))

(assert (=> d!1720848 (= res!2282023 (matchR!7282 lt!2189037 Nil!61466))))

(assert (=> d!1720848 (validRegex!6833 lt!2189037)))

(assert (=> d!1720848 (= (findConcatSeparation!1622 lt!2189037 (regTwo!30706 r!7292) Nil!61466 s!2326 s!2326) lt!2189146)))

(declare-fun b!5375622 () Bool)

(declare-fun lt!2189147 () Unit!153906)

(declare-fun lt!2189148 () Unit!153906)

(assert (=> b!5375622 (= lt!2189147 lt!2189148)))

(assert (=> b!5375622 (= (++!13400 (++!13400 Nil!61466 (Cons!61466 (h!67914 s!2326) Nil!61466)) (t!374813 s!2326)) s!2326)))

(assert (=> b!5375622 (= lt!2189148 (lemmaMoveElementToOtherListKeepsConcatEq!1800 Nil!61466 (h!67914 s!2326) (t!374813 s!2326) s!2326))))

(assert (=> b!5375622 (= e!3335170 (findConcatSeparation!1622 lt!2189037 (regTwo!30706 r!7292) (++!13400 Nil!61466 (Cons!61466 (h!67914 s!2326) Nil!61466)) (t!374813 s!2326) s!2326))))

(declare-fun b!5375623 () Bool)

(assert (=> b!5375623 (= e!3335168 (= (++!13400 (_1!35599 (get!21154 lt!2189146)) (_2!35599 (get!21154 lt!2189146))) s!2326))))

(assert (= (and d!1720848 res!2282023) b!5375621))

(assert (= (and d!1720848 c!936765) b!5375616))

(assert (= (and d!1720848 (not c!936765)) b!5375619))

(assert (= (and b!5375619 c!936766) b!5375615))

(assert (= (and b!5375619 (not c!936766)) b!5375622))

(assert (= (and d!1720848 res!2282024) b!5375618))

(assert (= (and b!5375618 res!2282025) b!5375620))

(assert (= (and b!5375620 res!2282022) b!5375623))

(assert (= (and d!1720848 (not res!2282021)) b!5375617))

(assert (=> b!5375621 m!6401880))

(declare-fun m!6402324 () Bool)

(assert (=> b!5375618 m!6402324))

(declare-fun m!6402326 () Bool)

(assert (=> b!5375618 m!6402326))

(assert (=> b!5375623 m!6402324))

(declare-fun m!6402328 () Bool)

(assert (=> b!5375623 m!6402328))

(declare-fun m!6402330 () Bool)

(assert (=> b!5375617 m!6402330))

(assert (=> b!5375622 m!6401890))

(assert (=> b!5375622 m!6401890))

(assert (=> b!5375622 m!6401892))

(assert (=> b!5375622 m!6401894))

(assert (=> b!5375622 m!6401890))

(declare-fun m!6402332 () Bool)

(assert (=> b!5375622 m!6402332))

(assert (=> d!1720848 m!6402330))

(declare-fun m!6402334 () Bool)

(assert (=> d!1720848 m!6402334))

(assert (=> d!1720848 m!6401758))

(assert (=> b!5375620 m!6402324))

(declare-fun m!6402336 () Bool)

(assert (=> b!5375620 m!6402336))

(assert (=> b!5374996 d!1720848))

(declare-fun d!1720850 () Bool)

(assert (=> d!1720850 (= (Exists!2278 lambda!277689) (choose!40372 lambda!277689))))

(declare-fun bs!1244512 () Bool)

(assert (= bs!1244512 d!1720850))

(declare-fun m!6402338 () Bool)

(assert (=> bs!1244512 m!6402338))

(assert (=> b!5374996 d!1720850))

(declare-fun b!5375624 () Bool)

(declare-fun e!3335176 () Bool)

(assert (=> b!5375624 (= e!3335176 (= (head!11530 (_1!35599 lt!2189026)) (c!936583 lt!2189037)))))

(declare-fun bm!384905 () Bool)

(declare-fun call!384910 () Bool)

(assert (=> bm!384905 (= call!384910 (isEmpty!33451 (_1!35599 lt!2189026)))))

(declare-fun b!5375625 () Bool)

(declare-fun e!3335173 () Bool)

(assert (=> b!5375625 (= e!3335173 (matchR!7282 (derivativeStep!4226 lt!2189037 (head!11530 (_1!35599 lt!2189026))) (tail!10627 (_1!35599 lt!2189026))))))

(declare-fun d!1720852 () Bool)

(declare-fun e!3335177 () Bool)

(assert (=> d!1720852 e!3335177))

(declare-fun c!936769 () Bool)

(assert (=> d!1720852 (= c!936769 ((_ is EmptyExpr!15097) lt!2189037))))

(declare-fun lt!2189151 () Bool)

(assert (=> d!1720852 (= lt!2189151 e!3335173)))

(declare-fun c!936768 () Bool)

(assert (=> d!1720852 (= c!936768 (isEmpty!33451 (_1!35599 lt!2189026)))))

(assert (=> d!1720852 (validRegex!6833 lt!2189037)))

(assert (=> d!1720852 (= (matchR!7282 lt!2189037 (_1!35599 lt!2189026)) lt!2189151)))

(declare-fun b!5375626 () Bool)

(declare-fun e!3335174 () Bool)

(assert (=> b!5375626 (= e!3335174 (not (= (head!11530 (_1!35599 lt!2189026)) (c!936583 lt!2189037))))))

(declare-fun b!5375627 () Bool)

(declare-fun e!3335172 () Bool)

(assert (=> b!5375627 (= e!3335177 e!3335172)))

(declare-fun c!936767 () Bool)

(assert (=> b!5375627 (= c!936767 ((_ is EmptyLang!15097) lt!2189037))))

(declare-fun b!5375628 () Bool)

(assert (=> b!5375628 (= e!3335173 (nullable!5266 lt!2189037))))

(declare-fun b!5375629 () Bool)

(declare-fun e!3335178 () Bool)

(assert (=> b!5375629 (= e!3335178 e!3335174)))

(declare-fun res!2282027 () Bool)

(assert (=> b!5375629 (=> res!2282027 e!3335174)))

(assert (=> b!5375629 (= res!2282027 call!384910)))

(declare-fun b!5375630 () Bool)

(assert (=> b!5375630 (= e!3335177 (= lt!2189151 call!384910))))

(declare-fun b!5375631 () Bool)

(assert (=> b!5375631 (= e!3335172 (not lt!2189151))))

(declare-fun b!5375632 () Bool)

(declare-fun res!2282033 () Bool)

(declare-fun e!3335175 () Bool)

(assert (=> b!5375632 (=> res!2282033 e!3335175)))

(assert (=> b!5375632 (= res!2282033 (not ((_ is ElementMatch!15097) lt!2189037)))))

(assert (=> b!5375632 (= e!3335172 e!3335175)))

(declare-fun b!5375633 () Bool)

(declare-fun res!2282026 () Bool)

(assert (=> b!5375633 (=> (not res!2282026) (not e!3335176))))

(assert (=> b!5375633 (= res!2282026 (not call!384910))))

(declare-fun b!5375634 () Bool)

(declare-fun res!2282032 () Bool)

(assert (=> b!5375634 (=> res!2282032 e!3335174)))

(assert (=> b!5375634 (= res!2282032 (not (isEmpty!33451 (tail!10627 (_1!35599 lt!2189026)))))))

(declare-fun b!5375635 () Bool)

(declare-fun res!2282031 () Bool)

(assert (=> b!5375635 (=> res!2282031 e!3335175)))

(assert (=> b!5375635 (= res!2282031 e!3335176)))

(declare-fun res!2282030 () Bool)

(assert (=> b!5375635 (=> (not res!2282030) (not e!3335176))))

(assert (=> b!5375635 (= res!2282030 lt!2189151)))

(declare-fun b!5375636 () Bool)

(declare-fun res!2282029 () Bool)

(assert (=> b!5375636 (=> (not res!2282029) (not e!3335176))))

(assert (=> b!5375636 (= res!2282029 (isEmpty!33451 (tail!10627 (_1!35599 lt!2189026))))))

(declare-fun b!5375637 () Bool)

(assert (=> b!5375637 (= e!3335175 e!3335178)))

(declare-fun res!2282028 () Bool)

(assert (=> b!5375637 (=> (not res!2282028) (not e!3335178))))

(assert (=> b!5375637 (= res!2282028 (not lt!2189151))))

(assert (= (and d!1720852 c!936768) b!5375628))

(assert (= (and d!1720852 (not c!936768)) b!5375625))

(assert (= (and d!1720852 c!936769) b!5375630))

(assert (= (and d!1720852 (not c!936769)) b!5375627))

(assert (= (and b!5375627 c!936767) b!5375631))

(assert (= (and b!5375627 (not c!936767)) b!5375632))

(assert (= (and b!5375632 (not res!2282033)) b!5375635))

(assert (= (and b!5375635 res!2282030) b!5375633))

(assert (= (and b!5375633 res!2282026) b!5375636))

(assert (= (and b!5375636 res!2282029) b!5375624))

(assert (= (and b!5375635 (not res!2282031)) b!5375637))

(assert (= (and b!5375637 res!2282028) b!5375629))

(assert (= (and b!5375629 (not res!2282027)) b!5375634))

(assert (= (and b!5375634 (not res!2282032)) b!5375626))

(assert (= (or b!5375630 b!5375629 b!5375633) bm!384905))

(declare-fun m!6402340 () Bool)

(assert (=> b!5375625 m!6402340))

(assert (=> b!5375625 m!6402340))

(declare-fun m!6402342 () Bool)

(assert (=> b!5375625 m!6402342))

(declare-fun m!6402344 () Bool)

(assert (=> b!5375625 m!6402344))

(assert (=> b!5375625 m!6402342))

(assert (=> b!5375625 m!6402344))

(declare-fun m!6402346 () Bool)

(assert (=> b!5375625 m!6402346))

(assert (=> d!1720852 m!6401802))

(assert (=> d!1720852 m!6401758))

(assert (=> b!5375634 m!6402344))

(assert (=> b!5375634 m!6402344))

(declare-fun m!6402348 () Bool)

(assert (=> b!5375634 m!6402348))

(assert (=> b!5375636 m!6402344))

(assert (=> b!5375636 m!6402344))

(assert (=> b!5375636 m!6402348))

(assert (=> b!5375626 m!6402340))

(declare-fun m!6402350 () Bool)

(assert (=> b!5375628 m!6402350))

(assert (=> bm!384905 m!6401802))

(assert (=> b!5375624 m!6402340))

(assert (=> b!5374972 d!1720852))

(declare-fun d!1720854 () Bool)

(declare-fun c!936771 () Bool)

(declare-fun e!3335183 () Bool)

(assert (=> d!1720854 (= c!936771 e!3335183)))

(declare-fun res!2282038 () Bool)

(assert (=> d!1720854 (=> (not res!2282038) (not e!3335183))))

(assert (=> d!1720854 (= res!2282038 ((_ is Cons!61467) (exprs!4981 lt!2189018)))))

(declare-fun e!3335182 () (InoxSet Context!8962))

(assert (=> d!1720854 (= (derivationStepZipperUp!469 lt!2189018 (h!67914 s!2326)) e!3335182)))

(declare-fun bm!384906 () Bool)

(declare-fun call!384911 () (InoxSet Context!8962))

(assert (=> bm!384906 (= call!384911 (derivationStepZipperDown!545 (h!67915 (exprs!4981 lt!2189018)) (Context!8963 (t!374814 (exprs!4981 lt!2189018))) (h!67914 s!2326)))))

(declare-fun b!5375642 () Bool)

(assert (=> b!5375642 (= e!3335183 (nullable!5266 (h!67915 (exprs!4981 lt!2189018))))))

(declare-fun b!5375643 () Bool)

(declare-fun e!3335181 () (InoxSet Context!8962))

(assert (=> b!5375643 (= e!3335182 e!3335181)))

(declare-fun c!936770 () Bool)

(assert (=> b!5375643 (= c!936770 ((_ is Cons!61467) (exprs!4981 lt!2189018)))))

(declare-fun b!5375644 () Bool)

(assert (=> b!5375644 (= e!3335181 call!384911)))

(declare-fun b!5375645 () Bool)

(assert (=> b!5375645 (= e!3335181 ((as const (Array Context!8962 Bool)) false))))

(declare-fun b!5375646 () Bool)

(assert (=> b!5375646 (= e!3335182 ((_ map or) call!384911 (derivationStepZipperUp!469 (Context!8963 (t!374814 (exprs!4981 lt!2189018))) (h!67914 s!2326))))))

(assert (= (and d!1720854 res!2282038) b!5375642))

(assert (= (and d!1720854 c!936771) b!5375646))

(assert (= (and d!1720854 (not c!936771)) b!5375643))

(assert (= (and b!5375643 c!936770) b!5375644))

(assert (= (and b!5375643 (not c!936770)) b!5375645))

(assert (= (or b!5375646 b!5375644) bm!384906))

(declare-fun m!6402352 () Bool)

(assert (=> bm!384906 m!6402352))

(declare-fun m!6402354 () Bool)

(assert (=> b!5375642 m!6402354))

(declare-fun m!6402356 () Bool)

(assert (=> b!5375646 m!6402356))

(assert (=> b!5374993 d!1720854))

(declare-fun d!1720856 () Bool)

(assert (=> d!1720856 (= (flatMap!824 lt!2189025 lambda!277688) (choose!40382 lt!2189025 lambda!277688))))

(declare-fun bs!1244513 () Bool)

(assert (= bs!1244513 d!1720856))

(declare-fun m!6402358 () Bool)

(assert (=> bs!1244513 m!6402358))

(assert (=> b!5374993 d!1720856))

(declare-fun d!1720858 () Bool)

(assert (=> d!1720858 (= (flatMap!824 lt!2189025 lambda!277688) (dynLambda!24267 lambda!277688 lt!2189047))))

(declare-fun lt!2189152 () Unit!153906)

(assert (=> d!1720858 (= lt!2189152 (choose!40383 lt!2189025 lt!2189047 lambda!277688))))

(assert (=> d!1720858 (= lt!2189025 (store ((as const (Array Context!8962 Bool)) false) lt!2189047 true))))

(assert (=> d!1720858 (= (lemmaFlatMapOnSingletonSet!356 lt!2189025 lt!2189047 lambda!277688) lt!2189152)))

(declare-fun b_lambda!205975 () Bool)

(assert (=> (not b_lambda!205975) (not d!1720858)))

(declare-fun bs!1244514 () Bool)

(assert (= bs!1244514 d!1720858))

(assert (=> bs!1244514 m!6401704))

(declare-fun m!6402360 () Bool)

(assert (=> bs!1244514 m!6402360))

(declare-fun m!6402362 () Bool)

(assert (=> bs!1244514 m!6402362))

(assert (=> bs!1244514 m!6401700))

(assert (=> b!5374993 d!1720858))

(declare-fun d!1720860 () Bool)

(assert (=> d!1720860 (= (flatMap!824 lt!2189040 lambda!277688) (dynLambda!24267 lambda!277688 lt!2189018))))

(declare-fun lt!2189153 () Unit!153906)

(assert (=> d!1720860 (= lt!2189153 (choose!40383 lt!2189040 lt!2189018 lambda!277688))))

(assert (=> d!1720860 (= lt!2189040 (store ((as const (Array Context!8962 Bool)) false) lt!2189018 true))))

(assert (=> d!1720860 (= (lemmaFlatMapOnSingletonSet!356 lt!2189040 lt!2189018 lambda!277688) lt!2189153)))

(declare-fun b_lambda!205977 () Bool)

(assert (=> (not b_lambda!205977) (not d!1720860)))

(declare-fun bs!1244515 () Bool)

(assert (= bs!1244515 d!1720860))

(assert (=> bs!1244515 m!6401698))

(declare-fun m!6402364 () Bool)

(assert (=> bs!1244515 m!6402364))

(declare-fun m!6402366 () Bool)

(assert (=> bs!1244515 m!6402366))

(assert (=> bs!1244515 m!6401696))

(assert (=> b!5374993 d!1720860))

(declare-fun d!1720862 () Bool)

(assert (=> d!1720862 (= (flatMap!824 lt!2189040 lambda!277688) (choose!40382 lt!2189040 lambda!277688))))

(declare-fun bs!1244516 () Bool)

(assert (= bs!1244516 d!1720862))

(declare-fun m!6402368 () Bool)

(assert (=> bs!1244516 m!6402368))

(assert (=> b!5374993 d!1720862))

(declare-fun d!1720864 () Bool)

(declare-fun lt!2189154 () Regex!15097)

(assert (=> d!1720864 (validRegex!6833 lt!2189154)))

(assert (=> d!1720864 (= lt!2189154 (generalisedUnion!1026 (unfocusZipperList!539 (Cons!61468 lt!2189047 Nil!61468))))))

(assert (=> d!1720864 (= (unfocusZipper!839 (Cons!61468 lt!2189047 Nil!61468)) lt!2189154)))

(declare-fun bs!1244517 () Bool)

(assert (= bs!1244517 d!1720864))

(declare-fun m!6402370 () Bool)

(assert (=> bs!1244517 m!6402370))

(declare-fun m!6402372 () Bool)

(assert (=> bs!1244517 m!6402372))

(assert (=> bs!1244517 m!6402372))

(declare-fun m!6402374 () Bool)

(assert (=> bs!1244517 m!6402374))

(assert (=> b!5374993 d!1720864))

(declare-fun d!1720866 () Bool)

(declare-fun c!936773 () Bool)

(declare-fun e!3335188 () Bool)

(assert (=> d!1720866 (= c!936773 e!3335188)))

(declare-fun res!2282045 () Bool)

(assert (=> d!1720866 (=> (not res!2282045) (not e!3335188))))

(assert (=> d!1720866 (= res!2282045 ((_ is Cons!61467) (exprs!4981 lt!2189047)))))

(declare-fun e!3335187 () (InoxSet Context!8962))

(assert (=> d!1720866 (= (derivationStepZipperUp!469 lt!2189047 (h!67914 s!2326)) e!3335187)))

(declare-fun bm!384907 () Bool)

(declare-fun call!384912 () (InoxSet Context!8962))

(assert (=> bm!384907 (= call!384912 (derivationStepZipperDown!545 (h!67915 (exprs!4981 lt!2189047)) (Context!8963 (t!374814 (exprs!4981 lt!2189047))) (h!67914 s!2326)))))

(declare-fun b!5375653 () Bool)

(assert (=> b!5375653 (= e!3335188 (nullable!5266 (h!67915 (exprs!4981 lt!2189047))))))

(declare-fun b!5375654 () Bool)

(declare-fun e!3335186 () (InoxSet Context!8962))

(assert (=> b!5375654 (= e!3335187 e!3335186)))

(declare-fun c!936772 () Bool)

(assert (=> b!5375654 (= c!936772 ((_ is Cons!61467) (exprs!4981 lt!2189047)))))

(declare-fun b!5375655 () Bool)

(assert (=> b!5375655 (= e!3335186 call!384912)))

(declare-fun b!5375656 () Bool)

(assert (=> b!5375656 (= e!3335186 ((as const (Array Context!8962 Bool)) false))))

(declare-fun b!5375657 () Bool)

(assert (=> b!5375657 (= e!3335187 ((_ map or) call!384912 (derivationStepZipperUp!469 (Context!8963 (t!374814 (exprs!4981 lt!2189047))) (h!67914 s!2326))))))

(assert (= (and d!1720866 res!2282045) b!5375653))

(assert (= (and d!1720866 c!936773) b!5375657))

(assert (= (and d!1720866 (not c!936773)) b!5375654))

(assert (= (and b!5375654 c!936772) b!5375655))

(assert (= (and b!5375654 (not c!936772)) b!5375656))

(assert (= (or b!5375657 b!5375655) bm!384907))

(declare-fun m!6402376 () Bool)

(assert (=> bm!384907 m!6402376))

(declare-fun m!6402378 () Bool)

(assert (=> b!5375653 m!6402378))

(declare-fun m!6402380 () Bool)

(assert (=> b!5375657 m!6402380))

(assert (=> b!5374993 d!1720866))

(declare-fun d!1720868 () Bool)

(assert (=> d!1720868 (= (Exists!2278 lambda!277691) (choose!40372 lambda!277691))))

(declare-fun bs!1244518 () Bool)

(assert (= bs!1244518 d!1720868))

(declare-fun m!6402382 () Bool)

(assert (=> bs!1244518 m!6402382))

(assert (=> b!5374973 d!1720868))

(declare-fun bm!384914 () Bool)

(declare-fun c!936779 () Bool)

(declare-fun c!936778 () Bool)

(declare-fun call!384919 () Bool)

(assert (=> bm!384914 (= call!384919 (validRegex!6833 (ite c!936779 (reg!15426 (reg!15426 (regOne!30706 r!7292))) (ite c!936778 (regTwo!30707 (reg!15426 (regOne!30706 r!7292))) (regTwo!30706 (reg!15426 (regOne!30706 r!7292)))))))))

(declare-fun b!5375676 () Bool)

(declare-fun e!3335206 () Bool)

(declare-fun e!3335207 () Bool)

(assert (=> b!5375676 (= e!3335206 e!3335207)))

(assert (=> b!5375676 (= c!936779 ((_ is Star!15097) (reg!15426 (regOne!30706 r!7292))))))

(declare-fun b!5375677 () Bool)

(declare-fun e!3335203 () Bool)

(declare-fun e!3335205 () Bool)

(assert (=> b!5375677 (= e!3335203 e!3335205)))

(declare-fun res!2282057 () Bool)

(assert (=> b!5375677 (=> (not res!2282057) (not e!3335205))))

(declare-fun call!384921 () Bool)

(assert (=> b!5375677 (= res!2282057 call!384921)))

(declare-fun b!5375678 () Bool)

(declare-fun e!3335204 () Bool)

(assert (=> b!5375678 (= e!3335204 call!384919)))

(declare-fun b!5375679 () Bool)

(declare-fun res!2282058 () Bool)

(declare-fun e!3335209 () Bool)

(assert (=> b!5375679 (=> (not res!2282058) (not e!3335209))))

(assert (=> b!5375679 (= res!2282058 call!384921)))

(declare-fun e!3335208 () Bool)

(assert (=> b!5375679 (= e!3335208 e!3335209)))

(declare-fun b!5375680 () Bool)

(declare-fun call!384920 () Bool)

(assert (=> b!5375680 (= e!3335205 call!384920)))

(declare-fun b!5375681 () Bool)

(declare-fun res!2282056 () Bool)

(assert (=> b!5375681 (=> res!2282056 e!3335203)))

(assert (=> b!5375681 (= res!2282056 (not ((_ is Concat!23942) (reg!15426 (regOne!30706 r!7292)))))))

(assert (=> b!5375681 (= e!3335208 e!3335203)))

(declare-fun b!5375682 () Bool)

(assert (=> b!5375682 (= e!3335209 call!384920)))

(declare-fun b!5375683 () Bool)

(assert (=> b!5375683 (= e!3335207 e!3335204)))

(declare-fun res!2282059 () Bool)

(assert (=> b!5375683 (= res!2282059 (not (nullable!5266 (reg!15426 (reg!15426 (regOne!30706 r!7292))))))))

(assert (=> b!5375683 (=> (not res!2282059) (not e!3335204))))

(declare-fun bm!384916 () Bool)

(assert (=> bm!384916 (= call!384920 call!384919)))

(declare-fun b!5375684 () Bool)

(assert (=> b!5375684 (= e!3335207 e!3335208)))

(assert (=> b!5375684 (= c!936778 ((_ is Union!15097) (reg!15426 (regOne!30706 r!7292))))))

(declare-fun bm!384915 () Bool)

(assert (=> bm!384915 (= call!384921 (validRegex!6833 (ite c!936778 (regOne!30707 (reg!15426 (regOne!30706 r!7292))) (regOne!30706 (reg!15426 (regOne!30706 r!7292))))))))

(declare-fun d!1720870 () Bool)

(declare-fun res!2282060 () Bool)

(assert (=> d!1720870 (=> res!2282060 e!3335206)))

(assert (=> d!1720870 (= res!2282060 ((_ is ElementMatch!15097) (reg!15426 (regOne!30706 r!7292))))))

(assert (=> d!1720870 (= (validRegex!6833 (reg!15426 (regOne!30706 r!7292))) e!3335206)))

(assert (= (and d!1720870 (not res!2282060)) b!5375676))

(assert (= (and b!5375676 c!936779) b!5375683))

(assert (= (and b!5375676 (not c!936779)) b!5375684))

(assert (= (and b!5375683 res!2282059) b!5375678))

(assert (= (and b!5375684 c!936778) b!5375679))

(assert (= (and b!5375684 (not c!936778)) b!5375681))

(assert (= (and b!5375679 res!2282058) b!5375682))

(assert (= (and b!5375681 (not res!2282056)) b!5375677))

(assert (= (and b!5375677 res!2282057) b!5375680))

(assert (= (or b!5375682 b!5375680) bm!384916))

(assert (= (or b!5375679 b!5375677) bm!384915))

(assert (= (or b!5375678 bm!384916) bm!384914))

(declare-fun m!6402390 () Bool)

(assert (=> bm!384914 m!6402390))

(declare-fun m!6402392 () Bool)

(assert (=> b!5375683 m!6402392))

(declare-fun m!6402394 () Bool)

(assert (=> bm!384915 m!6402394))

(assert (=> b!5374973 d!1720870))

(declare-fun d!1720874 () Bool)

(assert (=> d!1720874 (= (matchR!7282 lt!2189037 (_1!35599 lt!2189026)) (matchRSpec!2200 lt!2189037 (_1!35599 lt!2189026)))))

(declare-fun lt!2189156 () Unit!153906)

(assert (=> d!1720874 (= lt!2189156 (choose!40376 lt!2189037 (_1!35599 lt!2189026)))))

(assert (=> d!1720874 (validRegex!6833 lt!2189037)))

(assert (=> d!1720874 (= (mainMatchTheorem!2200 lt!2189037 (_1!35599 lt!2189026)) lt!2189156)))

(declare-fun bs!1244531 () Bool)

(assert (= bs!1244531 d!1720874))

(assert (=> bs!1244531 m!6401756))

(assert (=> bs!1244531 m!6401780))

(declare-fun m!6402396 () Bool)

(assert (=> bs!1244531 m!6402396))

(assert (=> bs!1244531 m!6401758))

(assert (=> b!5374973 d!1720874))

(declare-fun bs!1244537 () Bool)

(declare-fun b!5375697 () Bool)

(assert (= bs!1244537 (and b!5375697 b!5375313)))

(declare-fun lambda!277759 () Int)

(assert (=> bs!1244537 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 lt!2189037) (reg!15426 lt!2189036)) (= lt!2189037 lt!2189036)) (= lambda!277759 lambda!277723))))

(declare-fun bs!1244538 () Bool)

(assert (= bs!1244538 (and b!5375697 d!1720704)))

(assert (=> bs!1244538 (not (= lambda!277759 lambda!277707))))

(declare-fun bs!1244540 () Bool)

(assert (= bs!1244540 (and b!5375697 b!5375002)))

(assert (=> bs!1244540 (not (= lambda!277759 lambda!277687))))

(declare-fun bs!1244542 () Bool)

(assert (= bs!1244542 (and b!5375697 b!5374973)))

(assert (=> bs!1244542 (not (= lambda!277759 lambda!277693))))

(assert (=> bs!1244540 (not (= lambda!277759 lambda!277686))))

(declare-fun bs!1244544 () Bool)

(assert (= bs!1244544 (and b!5375697 b!5375318)))

(assert (=> bs!1244544 (not (= lambda!277759 lambda!277725))))

(assert (=> bs!1244542 (= (= (reg!15426 lt!2189037) (reg!15426 (regOne!30706 r!7292))) (= lambda!277759 lambda!277692))))

(declare-fun bs!1244546 () Bool)

(assert (= bs!1244546 (and b!5375697 b!5374996)))

(assert (=> bs!1244546 (not (= lambda!277759 lambda!277690))))

(declare-fun bs!1244548 () Bool)

(assert (= bs!1244548 (and b!5375697 d!1720824)))

(assert (=> bs!1244548 (not (= lambda!277759 lambda!277747))))

(declare-fun bs!1244549 () Bool)

(assert (= bs!1244549 (and b!5375697 d!1720698)))

(assert (=> bs!1244549 (not (= lambda!277759 lambda!277702))))

(assert (=> bs!1244542 (not (= lambda!277759 lambda!277691))))

(declare-fun bs!1244551 () Bool)

(assert (= bs!1244551 (and b!5375697 b!5375365)))

(assert (=> bs!1244551 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 lt!2189037) (reg!15426 r!7292)) (= lt!2189037 r!7292)) (= lambda!277759 lambda!277733))))

(assert (=> bs!1244538 (not (= lambda!277759 lambda!277708))))

(assert (=> bs!1244546 (not (= lambda!277759 lambda!277689))))

(assert (=> bs!1244548 (not (= lambda!277759 lambda!277748))))

(declare-fun bs!1244553 () Bool)

(assert (= bs!1244553 (and b!5375697 d!1720836)))

(assert (=> bs!1244553 (not (= lambda!277759 lambda!277750))))

(declare-fun bs!1244554 () Bool)

(assert (= bs!1244554 (and b!5375697 b!5375370)))

(assert (=> bs!1244554 (not (= lambda!277759 lambda!277734))))

(assert (=> b!5375697 true))

(assert (=> b!5375697 true))

(declare-fun bs!1244559 () Bool)

(declare-fun b!5375702 () Bool)

(assert (= bs!1244559 (and b!5375702 b!5375313)))

(declare-fun lambda!277761 () Int)

(assert (=> bs!1244559 (not (= lambda!277761 lambda!277723))))

(declare-fun bs!1244560 () Bool)

(assert (= bs!1244560 (and b!5375702 d!1720704)))

(assert (=> bs!1244560 (not (= lambda!277761 lambda!277707))))

(declare-fun bs!1244562 () Bool)

(assert (= bs!1244562 (and b!5375702 b!5375002)))

(assert (=> bs!1244562 (= (and (= (_1!35599 lt!2189026) s!2326) (= (regOne!30706 lt!2189037) (regOne!30706 r!7292)) (= (regTwo!30706 lt!2189037) (regTwo!30706 r!7292))) (= lambda!277761 lambda!277687))))

(declare-fun bs!1244564 () Bool)

(assert (= bs!1244564 (and b!5375702 b!5374973)))

(assert (=> bs!1244564 (= (and (= (regOne!30706 lt!2189037) (reg!15426 (regOne!30706 r!7292))) (= (regTwo!30706 lt!2189037) lt!2189037)) (= lambda!277761 lambda!277693))))

(declare-fun bs!1244566 () Bool)

(assert (= bs!1244566 (and b!5375702 b!5375318)))

(assert (=> bs!1244566 (= (and (= (_1!35599 lt!2189026) s!2326) (= (regOne!30706 lt!2189037) (regOne!30706 lt!2189036)) (= (regTwo!30706 lt!2189037) (regTwo!30706 lt!2189036))) (= lambda!277761 lambda!277725))))

(assert (=> bs!1244564 (not (= lambda!277761 lambda!277692))))

(declare-fun bs!1244569 () Bool)

(assert (= bs!1244569 (and b!5375702 b!5374996)))

(assert (=> bs!1244569 (= (and (= (_1!35599 lt!2189026) s!2326) (= (regOne!30706 lt!2189037) lt!2189037) (= (regTwo!30706 lt!2189037) (regTwo!30706 r!7292))) (= lambda!277761 lambda!277690))))

(declare-fun bs!1244570 () Bool)

(assert (= bs!1244570 (and b!5375702 d!1720824)))

(assert (=> bs!1244570 (not (= lambda!277761 lambda!277747))))

(declare-fun bs!1244572 () Bool)

(assert (= bs!1244572 (and b!5375702 d!1720698)))

(assert (=> bs!1244572 (not (= lambda!277761 lambda!277702))))

(assert (=> bs!1244564 (not (= lambda!277761 lambda!277691))))

(declare-fun bs!1244574 () Bool)

(assert (= bs!1244574 (and b!5375702 b!5375365)))

(assert (=> bs!1244574 (not (= lambda!277761 lambda!277733))))

(assert (=> bs!1244560 (= (and (= (_1!35599 lt!2189026) s!2326) (= (regOne!30706 lt!2189037) (regOne!30706 r!7292)) (= (regTwo!30706 lt!2189037) (regTwo!30706 r!7292))) (= lambda!277761 lambda!277708))))

(assert (=> bs!1244569 (not (= lambda!277761 lambda!277689))))

(assert (=> bs!1244570 (= (and (= (_1!35599 lt!2189026) s!2326) (= (regOne!30706 lt!2189037) lt!2189037) (= (regTwo!30706 lt!2189037) (regTwo!30706 r!7292))) (= lambda!277761 lambda!277748))))

(declare-fun bs!1244577 () Bool)

(assert (= bs!1244577 (and b!5375702 d!1720836)))

(assert (=> bs!1244577 (not (= lambda!277761 lambda!277750))))

(declare-fun bs!1244578 () Bool)

(assert (= bs!1244578 (and b!5375702 b!5375370)))

(assert (=> bs!1244578 (= (and (= (_1!35599 lt!2189026) s!2326) (= (regOne!30706 lt!2189037) (regOne!30706 r!7292)) (= (regTwo!30706 lt!2189037) (regTwo!30706 r!7292))) (= lambda!277761 lambda!277734))))

(declare-fun bs!1244579 () Bool)

(assert (= bs!1244579 (and b!5375702 b!5375697)))

(assert (=> bs!1244579 (not (= lambda!277761 lambda!277759))))

(assert (=> bs!1244562 (not (= lambda!277761 lambda!277686))))

(assert (=> b!5375702 true))

(assert (=> b!5375702 true))

(declare-fun b!5375696 () Bool)

(declare-fun e!3335220 () Bool)

(declare-fun e!3335218 () Bool)

(assert (=> b!5375696 (= e!3335220 e!3335218)))

(declare-fun c!936787 () Bool)

(assert (=> b!5375696 (= c!936787 ((_ is Star!15097) lt!2189037))))

(declare-fun e!3335217 () Bool)

(declare-fun call!384925 () Bool)

(assert (=> b!5375697 (= e!3335217 call!384925)))

(declare-fun b!5375698 () Bool)

(declare-fun e!3335223 () Bool)

(assert (=> b!5375698 (= e!3335220 e!3335223)))

(declare-fun res!2282064 () Bool)

(assert (=> b!5375698 (= res!2282064 (matchRSpec!2200 (regOne!30707 lt!2189037) (_1!35599 lt!2189026)))))

(assert (=> b!5375698 (=> res!2282064 e!3335223)))

(declare-fun b!5375699 () Bool)

(declare-fun e!3335221 () Bool)

(assert (=> b!5375699 (= e!3335221 (= (_1!35599 lt!2189026) (Cons!61466 (c!936583 lt!2189037) Nil!61466)))))

(declare-fun bm!384919 () Bool)

(declare-fun call!384924 () Bool)

(assert (=> bm!384919 (= call!384924 (isEmpty!33451 (_1!35599 lt!2189026)))))

(declare-fun bm!384920 () Bool)

(assert (=> bm!384920 (= call!384925 (Exists!2278 (ite c!936787 lambda!277759 lambda!277761)))))

(declare-fun b!5375700 () Bool)

(assert (=> b!5375700 (= e!3335223 (matchRSpec!2200 (regTwo!30707 lt!2189037) (_1!35599 lt!2189026)))))

(declare-fun b!5375701 () Bool)

(declare-fun c!936785 () Bool)

(assert (=> b!5375701 (= c!936785 ((_ is Union!15097) lt!2189037))))

(assert (=> b!5375701 (= e!3335221 e!3335220)))

(assert (=> b!5375702 (= e!3335218 call!384925)))

(declare-fun d!1720876 () Bool)

(declare-fun c!936786 () Bool)

(assert (=> d!1720876 (= c!936786 ((_ is EmptyExpr!15097) lt!2189037))))

(declare-fun e!3335219 () Bool)

(assert (=> d!1720876 (= (matchRSpec!2200 lt!2189037 (_1!35599 lt!2189026)) e!3335219)))

(declare-fun b!5375703 () Bool)

(declare-fun e!3335222 () Bool)

(assert (=> b!5375703 (= e!3335219 e!3335222)))

(declare-fun res!2282066 () Bool)

(assert (=> b!5375703 (= res!2282066 (not ((_ is EmptyLang!15097) lt!2189037)))))

(assert (=> b!5375703 (=> (not res!2282066) (not e!3335222))))

(declare-fun b!5375704 () Bool)

(declare-fun c!936784 () Bool)

(assert (=> b!5375704 (= c!936784 ((_ is ElementMatch!15097) lt!2189037))))

(assert (=> b!5375704 (= e!3335222 e!3335221)))

(declare-fun b!5375705 () Bool)

(assert (=> b!5375705 (= e!3335219 call!384924)))

(declare-fun b!5375706 () Bool)

(declare-fun res!2282065 () Bool)

(assert (=> b!5375706 (=> res!2282065 e!3335217)))

(assert (=> b!5375706 (= res!2282065 call!384924)))

(assert (=> b!5375706 (= e!3335218 e!3335217)))

(assert (= (and d!1720876 c!936786) b!5375705))

(assert (= (and d!1720876 (not c!936786)) b!5375703))

(assert (= (and b!5375703 res!2282066) b!5375704))

(assert (= (and b!5375704 c!936784) b!5375699))

(assert (= (and b!5375704 (not c!936784)) b!5375701))

(assert (= (and b!5375701 c!936785) b!5375698))

(assert (= (and b!5375701 (not c!936785)) b!5375696))

(assert (= (and b!5375698 (not res!2282064)) b!5375700))

(assert (= (and b!5375696 c!936787) b!5375706))

(assert (= (and b!5375696 (not c!936787)) b!5375702))

(assert (= (and b!5375706 (not res!2282065)) b!5375697))

(assert (= (or b!5375697 b!5375702) bm!384920))

(assert (= (or b!5375705 b!5375706) bm!384919))

(declare-fun m!6402404 () Bool)

(assert (=> b!5375698 m!6402404))

(assert (=> bm!384919 m!6401802))

(declare-fun m!6402406 () Bool)

(assert (=> bm!384920 m!6402406))

(declare-fun m!6402408 () Bool)

(assert (=> b!5375700 m!6402408))

(assert (=> b!5374973 d!1720876))

(declare-fun b!5375721 () Bool)

(declare-fun e!3335234 () Option!15208)

(assert (=> b!5375721 (= e!3335234 None!15207)))

(declare-fun b!5375723 () Bool)

(declare-fun e!3335233 () Bool)

(declare-fun lt!2189158 () Option!15208)

(assert (=> b!5375723 (= e!3335233 (not (isDefined!11911 lt!2189158)))))

(declare-fun b!5375724 () Bool)

(declare-fun res!2282079 () Bool)

(declare-fun e!3335232 () Bool)

(assert (=> b!5375724 (=> (not res!2282079) (not e!3335232))))

(assert (=> b!5375724 (= res!2282079 (matchR!7282 (reg!15426 (regOne!30706 r!7292)) (_1!35599 (get!21154 lt!2189158))))))

(declare-fun b!5375725 () Bool)

(declare-fun e!3335235 () Option!15208)

(assert (=> b!5375725 (= e!3335235 e!3335234)))

(declare-fun c!936792 () Bool)

(assert (=> b!5375725 (= c!936792 ((_ is Nil!61466) (_1!35599 lt!2189026)))))

(declare-fun b!5375726 () Bool)

(declare-fun res!2282076 () Bool)

(assert (=> b!5375726 (=> (not res!2282076) (not e!3335232))))

(assert (=> b!5375726 (= res!2282076 (matchR!7282 lt!2189037 (_2!35599 (get!21154 lt!2189158))))))

(declare-fun b!5375727 () Bool)

(declare-fun e!3335231 () Bool)

(assert (=> b!5375727 (= e!3335231 (matchR!7282 lt!2189037 (_1!35599 lt!2189026)))))

(declare-fun b!5375722 () Bool)

(assert (=> b!5375722 (= e!3335235 (Some!15207 (tuple2!64593 Nil!61466 (_1!35599 lt!2189026))))))

(declare-fun d!1720880 () Bool)

(assert (=> d!1720880 e!3335233))

(declare-fun res!2282075 () Bool)

(assert (=> d!1720880 (=> res!2282075 e!3335233)))

(assert (=> d!1720880 (= res!2282075 e!3335232)))

(declare-fun res!2282078 () Bool)

(assert (=> d!1720880 (=> (not res!2282078) (not e!3335232))))

(assert (=> d!1720880 (= res!2282078 (isDefined!11911 lt!2189158))))

(assert (=> d!1720880 (= lt!2189158 e!3335235)))

(declare-fun c!936791 () Bool)

(assert (=> d!1720880 (= c!936791 e!3335231)))

(declare-fun res!2282077 () Bool)

(assert (=> d!1720880 (=> (not res!2282077) (not e!3335231))))

(assert (=> d!1720880 (= res!2282077 (matchR!7282 (reg!15426 (regOne!30706 r!7292)) Nil!61466))))

(assert (=> d!1720880 (validRegex!6833 (reg!15426 (regOne!30706 r!7292)))))

(assert (=> d!1720880 (= (findConcatSeparation!1622 (reg!15426 (regOne!30706 r!7292)) lt!2189037 Nil!61466 (_1!35599 lt!2189026) (_1!35599 lt!2189026)) lt!2189158)))

(declare-fun b!5375728 () Bool)

(declare-fun lt!2189159 () Unit!153906)

(declare-fun lt!2189160 () Unit!153906)

(assert (=> b!5375728 (= lt!2189159 lt!2189160)))

(assert (=> b!5375728 (= (++!13400 (++!13400 Nil!61466 (Cons!61466 (h!67914 (_1!35599 lt!2189026)) Nil!61466)) (t!374813 (_1!35599 lt!2189026))) (_1!35599 lt!2189026))))

(assert (=> b!5375728 (= lt!2189160 (lemmaMoveElementToOtherListKeepsConcatEq!1800 Nil!61466 (h!67914 (_1!35599 lt!2189026)) (t!374813 (_1!35599 lt!2189026)) (_1!35599 lt!2189026)))))

(assert (=> b!5375728 (= e!3335234 (findConcatSeparation!1622 (reg!15426 (regOne!30706 r!7292)) lt!2189037 (++!13400 Nil!61466 (Cons!61466 (h!67914 (_1!35599 lt!2189026)) Nil!61466)) (t!374813 (_1!35599 lt!2189026)) (_1!35599 lt!2189026)))))

(declare-fun b!5375729 () Bool)

(assert (=> b!5375729 (= e!3335232 (= (++!13400 (_1!35599 (get!21154 lt!2189158)) (_2!35599 (get!21154 lt!2189158))) (_1!35599 lt!2189026)))))

(assert (= (and d!1720880 res!2282077) b!5375727))

(assert (= (and d!1720880 c!936791) b!5375722))

(assert (= (and d!1720880 (not c!936791)) b!5375725))

(assert (= (and b!5375725 c!936792) b!5375721))

(assert (= (and b!5375725 (not c!936792)) b!5375728))

(assert (= (and d!1720880 res!2282078) b!5375724))

(assert (= (and b!5375724 res!2282079) b!5375726))

(assert (= (and b!5375726 res!2282076) b!5375729))

(assert (= (and d!1720880 (not res!2282075)) b!5375723))

(assert (=> b!5375727 m!6401756))

(declare-fun m!6402418 () Bool)

(assert (=> b!5375724 m!6402418))

(declare-fun m!6402420 () Bool)

(assert (=> b!5375724 m!6402420))

(assert (=> b!5375729 m!6402418))

(declare-fun m!6402422 () Bool)

(assert (=> b!5375729 m!6402422))

(declare-fun m!6402424 () Bool)

(assert (=> b!5375723 m!6402424))

(declare-fun m!6402426 () Bool)

(assert (=> b!5375728 m!6402426))

(assert (=> b!5375728 m!6402426))

(declare-fun m!6402428 () Bool)

(assert (=> b!5375728 m!6402428))

(declare-fun m!6402430 () Bool)

(assert (=> b!5375728 m!6402430))

(assert (=> b!5375728 m!6402426))

(declare-fun m!6402432 () Bool)

(assert (=> b!5375728 m!6402432))

(assert (=> d!1720880 m!6402424))

(declare-fun m!6402434 () Bool)

(assert (=> d!1720880 m!6402434))

(assert (=> d!1720880 m!6401784))

(assert (=> b!5375726 m!6402418))

(declare-fun m!6402436 () Bool)

(assert (=> b!5375726 m!6402436))

(assert (=> b!5374973 d!1720880))

(declare-fun d!1720886 () Bool)

(assert (=> d!1720886 (= (Exists!2278 lambda!277693) (choose!40372 lambda!277693))))

(declare-fun bs!1244581 () Bool)

(assert (= bs!1244581 d!1720886))

(declare-fun m!6402438 () Bool)

(assert (=> bs!1244581 m!6402438))

(assert (=> b!5374973 d!1720886))

(declare-fun d!1720888 () Bool)

(assert (=> d!1720888 (= (isDefined!11911 (findConcatSeparation!1622 (reg!15426 (regOne!30706 r!7292)) lt!2189037 Nil!61466 (_1!35599 lt!2189026) (_1!35599 lt!2189026))) (not (isEmpty!33453 (findConcatSeparation!1622 (reg!15426 (regOne!30706 r!7292)) lt!2189037 Nil!61466 (_1!35599 lt!2189026) (_1!35599 lt!2189026)))))))

(declare-fun bs!1244582 () Bool)

(assert (= bs!1244582 d!1720888))

(assert (=> bs!1244582 m!6401774))

(declare-fun m!6402440 () Bool)

(assert (=> bs!1244582 m!6402440))

(assert (=> b!5374973 d!1720888))

(declare-fun bs!1244583 () Bool)

(declare-fun d!1720890 () Bool)

(assert (= bs!1244583 (and d!1720890 b!5375313)))

(declare-fun lambda!277762 () Int)

(assert (=> bs!1244583 (not (= lambda!277762 lambda!277723))))

(declare-fun bs!1244584 () Bool)

(assert (= bs!1244584 (and d!1720890 d!1720704)))

(assert (=> bs!1244584 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277762 lambda!277707))))

(declare-fun bs!1244585 () Bool)

(assert (= bs!1244585 (and d!1720890 b!5375002)))

(assert (=> bs!1244585 (not (= lambda!277762 lambda!277687))))

(declare-fun bs!1244586 () Bool)

(assert (= bs!1244586 (and d!1720890 b!5375702)))

(assert (=> bs!1244586 (not (= lambda!277762 lambda!277761))))

(declare-fun bs!1244587 () Bool)

(assert (= bs!1244587 (and d!1720890 b!5374973)))

(assert (=> bs!1244587 (not (= lambda!277762 lambda!277693))))

(declare-fun bs!1244588 () Bool)

(assert (= bs!1244588 (and d!1720890 b!5375318)))

(assert (=> bs!1244588 (not (= lambda!277762 lambda!277725))))

(assert (=> bs!1244587 (not (= lambda!277762 lambda!277692))))

(declare-fun bs!1244589 () Bool)

(assert (= bs!1244589 (and d!1720890 b!5374996)))

(assert (=> bs!1244589 (not (= lambda!277762 lambda!277690))))

(declare-fun bs!1244590 () Bool)

(assert (= bs!1244590 (and d!1720890 d!1720824)))

(assert (=> bs!1244590 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277762 lambda!277747))))

(declare-fun bs!1244591 () Bool)

(assert (= bs!1244591 (and d!1720890 d!1720698)))

(assert (=> bs!1244591 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277762 lambda!277702))))

(assert (=> bs!1244587 (= lambda!277762 lambda!277691)))

(declare-fun bs!1244592 () Bool)

(assert (= bs!1244592 (and d!1720890 b!5375365)))

(assert (=> bs!1244592 (not (= lambda!277762 lambda!277733))))

(assert (=> bs!1244584 (not (= lambda!277762 lambda!277708))))

(assert (=> bs!1244589 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277762 lambda!277689))))

(assert (=> bs!1244590 (not (= lambda!277762 lambda!277748))))

(declare-fun bs!1244593 () Bool)

(assert (= bs!1244593 (and d!1720890 d!1720836)))

(assert (=> bs!1244593 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277762 lambda!277750))))

(declare-fun bs!1244594 () Bool)

(assert (= bs!1244594 (and d!1720890 b!5375370)))

(assert (=> bs!1244594 (not (= lambda!277762 lambda!277734))))

(declare-fun bs!1244595 () Bool)

(assert (= bs!1244595 (and d!1720890 b!5375697)))

(assert (=> bs!1244595 (not (= lambda!277762 lambda!277759))))

(assert (=> bs!1244585 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277762 lambda!277686))))

(assert (=> d!1720890 true))

(assert (=> d!1720890 true))

(assert (=> d!1720890 true))

(assert (=> d!1720890 (= (isDefined!11911 (findConcatSeparation!1622 (reg!15426 (regOne!30706 r!7292)) lt!2189037 Nil!61466 (_1!35599 lt!2189026) (_1!35599 lt!2189026))) (Exists!2278 lambda!277762))))

(declare-fun lt!2189162 () Unit!153906)

(assert (=> d!1720890 (= lt!2189162 (choose!40373 (reg!15426 (regOne!30706 r!7292)) lt!2189037 (_1!35599 lt!2189026)))))

(assert (=> d!1720890 (validRegex!6833 (reg!15426 (regOne!30706 r!7292)))))

(assert (=> d!1720890 (= (lemmaFindConcatSeparationEquivalentToExists!1386 (reg!15426 (regOne!30706 r!7292)) lt!2189037 (_1!35599 lt!2189026)) lt!2189162)))

(declare-fun bs!1244597 () Bool)

(assert (= bs!1244597 d!1720890))

(assert (=> bs!1244597 m!6401774))

(assert (=> bs!1244597 m!6401786))

(declare-fun m!6402474 () Bool)

(assert (=> bs!1244597 m!6402474))

(assert (=> bs!1244597 m!6401774))

(declare-fun m!6402476 () Bool)

(assert (=> bs!1244597 m!6402476))

(assert (=> bs!1244597 m!6401784))

(assert (=> b!5374973 d!1720890))

(declare-fun bs!1244603 () Bool)

(declare-fun d!1720900 () Bool)

(assert (= bs!1244603 (and d!1720900 d!1720704)))

(declare-fun lambda!277764 () Int)

(assert (=> bs!1244603 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277764 lambda!277707))))

(declare-fun bs!1244604 () Bool)

(assert (= bs!1244604 (and d!1720900 b!5375002)))

(assert (=> bs!1244604 (not (= lambda!277764 lambda!277687))))

(declare-fun bs!1244605 () Bool)

(assert (= bs!1244605 (and d!1720900 b!5375702)))

(assert (=> bs!1244605 (not (= lambda!277764 lambda!277761))))

(declare-fun bs!1244606 () Bool)

(assert (= bs!1244606 (and d!1720900 b!5374973)))

(assert (=> bs!1244606 (not (= lambda!277764 lambda!277693))))

(declare-fun bs!1244607 () Bool)

(assert (= bs!1244607 (and d!1720900 b!5375318)))

(assert (=> bs!1244607 (not (= lambda!277764 lambda!277725))))

(assert (=> bs!1244606 (not (= lambda!277764 lambda!277692))))

(declare-fun bs!1244608 () Bool)

(assert (= bs!1244608 (and d!1720900 b!5374996)))

(assert (=> bs!1244608 (not (= lambda!277764 lambda!277690))))

(declare-fun bs!1244609 () Bool)

(assert (= bs!1244609 (and d!1720900 d!1720824)))

(assert (=> bs!1244609 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277764 lambda!277747))))

(declare-fun bs!1244610 () Bool)

(assert (= bs!1244610 (and d!1720900 d!1720698)))

(assert (=> bs!1244610 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277764 lambda!277702))))

(declare-fun bs!1244611 () Bool)

(assert (= bs!1244611 (and d!1720900 d!1720890)))

(assert (=> bs!1244611 (= lambda!277764 lambda!277762)))

(declare-fun bs!1244612 () Bool)

(assert (= bs!1244612 (and d!1720900 b!5375313)))

(assert (=> bs!1244612 (not (= lambda!277764 lambda!277723))))

(assert (=> bs!1244606 (= lambda!277764 lambda!277691)))

(declare-fun bs!1244613 () Bool)

(assert (= bs!1244613 (and d!1720900 b!5375365)))

(assert (=> bs!1244613 (not (= lambda!277764 lambda!277733))))

(assert (=> bs!1244603 (not (= lambda!277764 lambda!277708))))

(assert (=> bs!1244608 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277764 lambda!277689))))

(assert (=> bs!1244609 (not (= lambda!277764 lambda!277748))))

(declare-fun bs!1244614 () Bool)

(assert (= bs!1244614 (and d!1720900 d!1720836)))

(assert (=> bs!1244614 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277764 lambda!277750))))

(declare-fun bs!1244615 () Bool)

(assert (= bs!1244615 (and d!1720900 b!5375370)))

(assert (=> bs!1244615 (not (= lambda!277764 lambda!277734))))

(declare-fun bs!1244616 () Bool)

(assert (= bs!1244616 (and d!1720900 b!5375697)))

(assert (=> bs!1244616 (not (= lambda!277764 lambda!277759))))

(assert (=> bs!1244604 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277764 lambda!277686))))

(assert (=> d!1720900 true))

(assert (=> d!1720900 true))

(assert (=> d!1720900 true))

(declare-fun lambda!277765 () Int)

(assert (=> bs!1244603 (not (= lambda!277765 lambda!277707))))

(assert (=> bs!1244604 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277765 lambda!277687))))

(assert (=> bs!1244605 (= (and (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 lt!2189037)) (= lt!2189037 (regTwo!30706 lt!2189037))) (= lambda!277765 lambda!277761))))

(assert (=> bs!1244606 (= lambda!277765 lambda!277693)))

(assert (=> bs!1244607 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 lt!2189036)) (= lt!2189037 (regTwo!30706 lt!2189036))) (= lambda!277765 lambda!277725))))

(assert (=> bs!1244606 (not (= lambda!277765 lambda!277692))))

(assert (=> bs!1244608 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277765 lambda!277690))))

(assert (=> bs!1244609 (not (= lambda!277765 lambda!277747))))

(assert (=> bs!1244610 (not (= lambda!277765 lambda!277702))))

(assert (=> bs!1244611 (not (= lambda!277765 lambda!277762))))

(assert (=> bs!1244612 (not (= lambda!277765 lambda!277723))))

(assert (=> bs!1244606 (not (= lambda!277765 lambda!277691))))

(assert (=> bs!1244613 (not (= lambda!277765 lambda!277733))))

(declare-fun bs!1244617 () Bool)

(assert (= bs!1244617 d!1720900))

(assert (=> bs!1244617 (not (= lambda!277765 lambda!277764))))

(assert (=> bs!1244603 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277765 lambda!277708))))

(assert (=> bs!1244608 (not (= lambda!277765 lambda!277689))))

(assert (=> bs!1244609 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277765 lambda!277748))))

(assert (=> bs!1244614 (not (= lambda!277765 lambda!277750))))

(assert (=> bs!1244615 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= lt!2189037 (regTwo!30706 r!7292))) (= lambda!277765 lambda!277734))))

(assert (=> bs!1244616 (not (= lambda!277765 lambda!277759))))

(assert (=> bs!1244604 (not (= lambda!277765 lambda!277686))))

(assert (=> d!1720900 true))

(assert (=> d!1720900 true))

(assert (=> d!1720900 true))

(assert (=> d!1720900 (= (Exists!2278 lambda!277764) (Exists!2278 lambda!277765))))

(declare-fun lt!2189165 () Unit!153906)

(assert (=> d!1720900 (= lt!2189165 (choose!40374 (reg!15426 (regOne!30706 r!7292)) lt!2189037 (_1!35599 lt!2189026)))))

(assert (=> d!1720900 (validRegex!6833 (reg!15426 (regOne!30706 r!7292)))))

(assert (=> d!1720900 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!932 (reg!15426 (regOne!30706 r!7292)) lt!2189037 (_1!35599 lt!2189026)) lt!2189165)))

(declare-fun m!6402502 () Bool)

(assert (=> bs!1244617 m!6402502))

(declare-fun m!6402504 () Bool)

(assert (=> bs!1244617 m!6402504))

(declare-fun m!6402506 () Bool)

(assert (=> bs!1244617 m!6402506))

(assert (=> bs!1244617 m!6401784))

(assert (=> b!5374973 d!1720900))

(declare-fun d!1720910 () Bool)

(assert (=> d!1720910 (= (Exists!2278 lambda!277692) (choose!40372 lambda!277692))))

(declare-fun bs!1244618 () Bool)

(assert (= bs!1244618 d!1720910))

(declare-fun m!6402508 () Bool)

(assert (=> bs!1244618 m!6402508))

(assert (=> b!5374973 d!1720910))

(declare-fun bs!1244640 () Bool)

(declare-fun d!1720912 () Bool)

(assert (= bs!1244640 (and d!1720912 d!1720704)))

(declare-fun lambda!277774 () Int)

(assert (=> bs!1244640 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) (regTwo!30706 r!7292))) (= lambda!277774 lambda!277707))))

(declare-fun bs!1244642 () Bool)

(assert (= bs!1244642 (and d!1720912 b!5375002)))

(assert (=> bs!1244642 (not (= lambda!277774 lambda!277687))))

(declare-fun bs!1244644 () Bool)

(assert (= bs!1244644 (and d!1720912 b!5375702)))

(assert (=> bs!1244644 (not (= lambda!277774 lambda!277761))))

(declare-fun bs!1244646 () Bool)

(assert (= bs!1244646 (and d!1720912 b!5374973)))

(assert (=> bs!1244646 (not (= lambda!277774 lambda!277693))))

(declare-fun bs!1244647 () Bool)

(assert (= bs!1244647 (and d!1720912 b!5375318)))

(assert (=> bs!1244647 (not (= lambda!277774 lambda!277725))))

(assert (=> bs!1244646 (not (= lambda!277774 lambda!277692))))

(declare-fun bs!1244649 () Bool)

(assert (= bs!1244649 (and d!1720912 b!5374996)))

(assert (=> bs!1244649 (not (= lambda!277774 lambda!277690))))

(declare-fun bs!1244651 () Bool)

(assert (= bs!1244651 (and d!1720912 d!1720824)))

(assert (=> bs!1244651 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) (regTwo!30706 r!7292))) (= lambda!277774 lambda!277747))))

(declare-fun bs!1244653 () Bool)

(assert (= bs!1244653 (and d!1720912 d!1720900)))

(assert (=> bs!1244653 (not (= lambda!277774 lambda!277765))))

(declare-fun bs!1244655 () Bool)

(assert (= bs!1244655 (and d!1720912 d!1720698)))

(assert (=> bs!1244655 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) (regTwo!30706 r!7292))) (= lambda!277774 lambda!277702))))

(declare-fun bs!1244657 () Bool)

(assert (= bs!1244657 (and d!1720912 d!1720890)))

(assert (=> bs!1244657 (= (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) lt!2189037) (= lambda!277774 lambda!277762))))

(declare-fun bs!1244659 () Bool)

(assert (= bs!1244659 (and d!1720912 b!5375313)))

(assert (=> bs!1244659 (not (= lambda!277774 lambda!277723))))

(assert (=> bs!1244646 (= (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) lt!2189037) (= lambda!277774 lambda!277691))))

(declare-fun bs!1244661 () Bool)

(assert (= bs!1244661 (and d!1720912 b!5375365)))

(assert (=> bs!1244661 (not (= lambda!277774 lambda!277733))))

(assert (=> bs!1244653 (= (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) lt!2189037) (= lambda!277774 lambda!277764))))

(assert (=> bs!1244640 (not (= lambda!277774 lambda!277708))))

(assert (=> bs!1244649 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) (regTwo!30706 r!7292))) (= lambda!277774 lambda!277689))))

(assert (=> bs!1244651 (not (= lambda!277774 lambda!277748))))

(declare-fun bs!1244665 () Bool)

(assert (= bs!1244665 (and d!1720912 d!1720836)))

(assert (=> bs!1244665 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) lt!2189037) (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) (regTwo!30706 r!7292))) (= lambda!277774 lambda!277750))))

(declare-fun bs!1244667 () Bool)

(assert (= bs!1244667 (and d!1720912 b!5375370)))

(assert (=> bs!1244667 (not (= lambda!277774 lambda!277734))))

(declare-fun bs!1244668 () Bool)

(assert (= bs!1244668 (and d!1720912 b!5375697)))

(assert (=> bs!1244668 (not (= lambda!277774 lambda!277759))))

(assert (=> bs!1244642 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (regOne!30706 r!7292)) (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) (regTwo!30706 r!7292))) (= lambda!277774 lambda!277686))))

(assert (=> d!1720912 true))

(assert (=> d!1720912 true))

(declare-fun lambda!277777 () Int)

(assert (=> bs!1244640 (not (= lambda!277777 lambda!277707))))

(declare-fun bs!1244671 () Bool)

(assert (= bs!1244671 d!1720912))

(assert (=> bs!1244671 (not (= lambda!277777 lambda!277774))))

(assert (=> bs!1244642 (not (= lambda!277777 lambda!277687))))

(assert (=> bs!1244644 (not (= lambda!277777 lambda!277761))))

(assert (=> bs!1244646 (not (= lambda!277777 lambda!277693))))

(assert (=> bs!1244647 (not (= lambda!277777 lambda!277725))))

(assert (=> bs!1244646 (= (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) lt!2189037) (= lambda!277777 lambda!277692))))

(assert (=> bs!1244649 (not (= lambda!277777 lambda!277690))))

(assert (=> bs!1244651 (not (= lambda!277777 lambda!277747))))

(assert (=> bs!1244653 (not (= lambda!277777 lambda!277765))))

(assert (=> bs!1244655 (not (= lambda!277777 lambda!277702))))

(assert (=> bs!1244657 (not (= lambda!277777 lambda!277762))))

(assert (=> bs!1244659 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (reg!15426 lt!2189036)) (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) lt!2189036)) (= lambda!277777 lambda!277723))))

(assert (=> bs!1244646 (not (= lambda!277777 lambda!277691))))

(assert (=> bs!1244661 (= (and (= (_1!35599 lt!2189026) s!2326) (= (reg!15426 (regOne!30706 r!7292)) (reg!15426 r!7292)) (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) r!7292)) (= lambda!277777 lambda!277733))))

(assert (=> bs!1244653 (not (= lambda!277777 lambda!277764))))

(assert (=> bs!1244640 (not (= lambda!277777 lambda!277708))))

(assert (=> bs!1244649 (not (= lambda!277777 lambda!277689))))

(assert (=> bs!1244651 (not (= lambda!277777 lambda!277748))))

(assert (=> bs!1244665 (not (= lambda!277777 lambda!277750))))

(assert (=> bs!1244667 (not (= lambda!277777 lambda!277734))))

(assert (=> bs!1244668 (= (and (= (reg!15426 (regOne!30706 r!7292)) (reg!15426 lt!2189037)) (= (Star!15097 (reg!15426 (regOne!30706 r!7292))) lt!2189037)) (= lambda!277777 lambda!277759))))

(assert (=> bs!1244642 (not (= lambda!277777 lambda!277686))))

(assert (=> d!1720912 true))

(assert (=> d!1720912 true))

(assert (=> d!1720912 (= (Exists!2278 lambda!277774) (Exists!2278 lambda!277777))))

(declare-fun lt!2189177 () Unit!153906)

(declare-fun choose!40385 (Regex!15097 List!61590) Unit!153906)

(assert (=> d!1720912 (= lt!2189177 (choose!40385 (reg!15426 (regOne!30706 r!7292)) (_1!35599 lt!2189026)))))

(assert (=> d!1720912 (validRegex!6833 (reg!15426 (regOne!30706 r!7292)))))

(assert (=> d!1720912 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!362 (reg!15426 (regOne!30706 r!7292)) (_1!35599 lt!2189026)) lt!2189177)))

(declare-fun m!6402558 () Bool)

(assert (=> bs!1244671 m!6402558))

(declare-fun m!6402560 () Bool)

(assert (=> bs!1244671 m!6402560))

(declare-fun m!6402562 () Bool)

(assert (=> bs!1244671 m!6402562))

(assert (=> bs!1244671 m!6401784))

(assert (=> b!5374973 d!1720912))

(declare-fun d!1720928 () Bool)

(assert (=> d!1720928 (= (isEmpty!33451 (_1!35599 lt!2189026)) ((_ is Nil!61466) (_1!35599 lt!2189026)))))

(assert (=> b!5374991 d!1720928))

(declare-fun call!384938 () Bool)

(declare-fun bm!384933 () Bool)

(declare-fun c!936821 () Bool)

(declare-fun c!936820 () Bool)

(assert (=> bm!384933 (= call!384938 (validRegex!6833 (ite c!936821 (reg!15426 r!7292) (ite c!936820 (regTwo!30707 r!7292) (regTwo!30706 r!7292)))))))

(declare-fun b!5375837 () Bool)

(declare-fun e!3335295 () Bool)

(declare-fun e!3335296 () Bool)

(assert (=> b!5375837 (= e!3335295 e!3335296)))

(assert (=> b!5375837 (= c!936821 ((_ is Star!15097) r!7292))))

(declare-fun b!5375838 () Bool)

(declare-fun e!3335292 () Bool)

(declare-fun e!3335294 () Bool)

(assert (=> b!5375838 (= e!3335292 e!3335294)))

(declare-fun res!2282124 () Bool)

(assert (=> b!5375838 (=> (not res!2282124) (not e!3335294))))

(declare-fun call!384940 () Bool)

(assert (=> b!5375838 (= res!2282124 call!384940)))

(declare-fun b!5375839 () Bool)

(declare-fun e!3335293 () Bool)

(assert (=> b!5375839 (= e!3335293 call!384938)))

(declare-fun b!5375840 () Bool)

(declare-fun res!2282125 () Bool)

(declare-fun e!3335298 () Bool)

(assert (=> b!5375840 (=> (not res!2282125) (not e!3335298))))

(assert (=> b!5375840 (= res!2282125 call!384940)))

(declare-fun e!3335297 () Bool)

(assert (=> b!5375840 (= e!3335297 e!3335298)))

(declare-fun b!5375841 () Bool)

(declare-fun call!384939 () Bool)

(assert (=> b!5375841 (= e!3335294 call!384939)))

(declare-fun b!5375842 () Bool)

(declare-fun res!2282123 () Bool)

(assert (=> b!5375842 (=> res!2282123 e!3335292)))

(assert (=> b!5375842 (= res!2282123 (not ((_ is Concat!23942) r!7292)))))

(assert (=> b!5375842 (= e!3335297 e!3335292)))

(declare-fun b!5375843 () Bool)

(assert (=> b!5375843 (= e!3335298 call!384939)))

(declare-fun b!5375844 () Bool)

(assert (=> b!5375844 (= e!3335296 e!3335293)))

(declare-fun res!2282126 () Bool)

(assert (=> b!5375844 (= res!2282126 (not (nullable!5266 (reg!15426 r!7292))))))

(assert (=> b!5375844 (=> (not res!2282126) (not e!3335293))))

(declare-fun bm!384935 () Bool)

(assert (=> bm!384935 (= call!384939 call!384938)))

(declare-fun b!5375845 () Bool)

(assert (=> b!5375845 (= e!3335296 e!3335297)))

(assert (=> b!5375845 (= c!936820 ((_ is Union!15097) r!7292))))

(declare-fun bm!384934 () Bool)

(assert (=> bm!384934 (= call!384940 (validRegex!6833 (ite c!936820 (regOne!30707 r!7292) (regOne!30706 r!7292))))))

(declare-fun d!1720930 () Bool)

(declare-fun res!2282127 () Bool)

(assert (=> d!1720930 (=> res!2282127 e!3335295)))

(assert (=> d!1720930 (= res!2282127 ((_ is ElementMatch!15097) r!7292))))

(assert (=> d!1720930 (= (validRegex!6833 r!7292) e!3335295)))

(assert (= (and d!1720930 (not res!2282127)) b!5375837))

(assert (= (and b!5375837 c!936821) b!5375844))

(assert (= (and b!5375837 (not c!936821)) b!5375845))

(assert (= (and b!5375844 res!2282126) b!5375839))

(assert (= (and b!5375845 c!936820) b!5375840))

(assert (= (and b!5375845 (not c!936820)) b!5375842))

(assert (= (and b!5375840 res!2282125) b!5375843))

(assert (= (and b!5375842 (not res!2282123)) b!5375838))

(assert (= (and b!5375838 res!2282124) b!5375841))

(assert (= (or b!5375843 b!5375841) bm!384935))

(assert (= (or b!5375840 b!5375838) bm!384934))

(assert (= (or b!5375839 bm!384935) bm!384933))

(declare-fun m!6402566 () Bool)

(assert (=> bm!384933 m!6402566))

(declare-fun m!6402568 () Bool)

(assert (=> b!5375844 m!6402568))

(declare-fun m!6402570 () Bool)

(assert (=> bm!384934 m!6402570))

(assert (=> start!565374 d!1720930))

(declare-fun bs!1244673 () Bool)

(declare-fun d!1720932 () Bool)

(assert (= bs!1244673 (and d!1720932 d!1720722)))

(declare-fun lambda!277778 () Int)

(assert (=> bs!1244673 (= lambda!277778 lambda!277711)))

(declare-fun bs!1244674 () Bool)

(assert (= bs!1244674 (and d!1720932 d!1720778)))

(assert (=> bs!1244674 (= lambda!277778 lambda!277739)))

(assert (=> d!1720932 (= (inv!80989 (h!67916 zl!343)) (forall!14499 (exprs!4981 (h!67916 zl!343)) lambda!277778))))

(declare-fun bs!1244675 () Bool)

(assert (= bs!1244675 d!1720932))

(declare-fun m!6402572 () Bool)

(assert (=> bs!1244675 m!6402572))

(assert (=> b!5374990 d!1720932))

(declare-fun b!5375862 () Bool)

(declare-fun e!3335305 () (InoxSet Context!8962))

(assert (=> b!5375862 (= e!3335305 (store ((as const (Array Context!8962 Bool)) false) lt!2189018 true))))

(declare-fun call!384944 () (InoxSet Context!8962))

(declare-fun c!936826 () Bool)

(declare-fun bm!384936 () Bool)

(declare-fun c!936824 () Bool)

(declare-fun call!384942 () List!61591)

(declare-fun c!936823 () Bool)

(assert (=> bm!384936 (= call!384944 (derivationStepZipperDown!545 (ite c!936824 (regTwo!30707 (reg!15426 (regOne!30706 r!7292))) (ite c!936823 (regTwo!30706 (reg!15426 (regOne!30706 r!7292))) (ite c!936826 (regOne!30706 (reg!15426 (regOne!30706 r!7292))) (reg!15426 (reg!15426 (regOne!30706 r!7292)))))) (ite (or c!936824 c!936823) lt!2189018 (Context!8963 call!384942)) (h!67914 s!2326)))))

(declare-fun b!5375863 () Bool)

(declare-fun e!3335308 () (InoxSet Context!8962))

(declare-fun call!384943 () (InoxSet Context!8962))

(assert (=> b!5375863 (= e!3335308 ((_ map or) call!384943 call!384944))))

(declare-fun b!5375864 () Bool)

(declare-fun e!3335304 () (InoxSet Context!8962))

(declare-fun call!384941 () (InoxSet Context!8962))

(assert (=> b!5375864 (= e!3335304 ((_ map or) call!384943 call!384941))))

(declare-fun b!5375865 () Bool)

(declare-fun e!3335307 () (InoxSet Context!8962))

(declare-fun call!384945 () (InoxSet Context!8962))

(assert (=> b!5375865 (= e!3335307 call!384945)))

(declare-fun b!5375866 () Bool)

(declare-fun e!3335306 () Bool)

(assert (=> b!5375866 (= e!3335306 (nullable!5266 (regOne!30706 (reg!15426 (regOne!30706 r!7292)))))))

(declare-fun bm!384937 () Bool)

(declare-fun call!384946 () List!61591)

(assert (=> bm!384937 (= call!384942 call!384946)))

(declare-fun b!5375867 () Bool)

(declare-fun c!936822 () Bool)

(assert (=> b!5375867 (= c!936822 ((_ is Star!15097) (reg!15426 (regOne!30706 r!7292))))))

(declare-fun e!3335309 () (InoxSet Context!8962))

(assert (=> b!5375867 (= e!3335309 e!3335307)))

(declare-fun bm!384938 () Bool)

(assert (=> bm!384938 (= call!384946 ($colon$colon!1456 (exprs!4981 lt!2189018) (ite (or c!936823 c!936826) (regTwo!30706 (reg!15426 (regOne!30706 r!7292))) (reg!15426 (regOne!30706 r!7292)))))))

(declare-fun d!1720934 () Bool)

(declare-fun c!936825 () Bool)

(assert (=> d!1720934 (= c!936825 (and ((_ is ElementMatch!15097) (reg!15426 (regOne!30706 r!7292))) (= (c!936583 (reg!15426 (regOne!30706 r!7292))) (h!67914 s!2326))))))

(assert (=> d!1720934 (= (derivationStepZipperDown!545 (reg!15426 (regOne!30706 r!7292)) lt!2189018 (h!67914 s!2326)) e!3335305)))

(declare-fun b!5375868 () Bool)

(assert (=> b!5375868 (= e!3335305 e!3335308)))

(assert (=> b!5375868 (= c!936824 ((_ is Union!15097) (reg!15426 (regOne!30706 r!7292))))))

(declare-fun bm!384939 () Bool)

(assert (=> bm!384939 (= call!384941 call!384944)))

(declare-fun bm!384940 () Bool)

(assert (=> bm!384940 (= call!384945 call!384941)))

(declare-fun b!5375869 () Bool)

(assert (=> b!5375869 (= e!3335304 e!3335309)))

(assert (=> b!5375869 (= c!936826 ((_ is Concat!23942) (reg!15426 (regOne!30706 r!7292))))))

(declare-fun b!5375870 () Bool)

(assert (=> b!5375870 (= e!3335307 ((as const (Array Context!8962 Bool)) false))))

(declare-fun bm!384941 () Bool)

(assert (=> bm!384941 (= call!384943 (derivationStepZipperDown!545 (ite c!936824 (regOne!30707 (reg!15426 (regOne!30706 r!7292))) (regOne!30706 (reg!15426 (regOne!30706 r!7292)))) (ite c!936824 lt!2189018 (Context!8963 call!384946)) (h!67914 s!2326)))))

(declare-fun b!5375871 () Bool)

(assert (=> b!5375871 (= e!3335309 call!384945)))

(declare-fun b!5375872 () Bool)

(assert (=> b!5375872 (= c!936823 e!3335306)))

(declare-fun res!2282128 () Bool)

(assert (=> b!5375872 (=> (not res!2282128) (not e!3335306))))

(assert (=> b!5375872 (= res!2282128 ((_ is Concat!23942) (reg!15426 (regOne!30706 r!7292))))))

(assert (=> b!5375872 (= e!3335308 e!3335304)))

(assert (= (and d!1720934 c!936825) b!5375862))

(assert (= (and d!1720934 (not c!936825)) b!5375868))

(assert (= (and b!5375868 c!936824) b!5375863))

(assert (= (and b!5375868 (not c!936824)) b!5375872))

(assert (= (and b!5375872 res!2282128) b!5375866))

(assert (= (and b!5375872 c!936823) b!5375864))

(assert (= (and b!5375872 (not c!936823)) b!5375869))

(assert (= (and b!5375869 c!936826) b!5375871))

(assert (= (and b!5375869 (not c!936826)) b!5375867))

(assert (= (and b!5375867 c!936822) b!5375865))

(assert (= (and b!5375867 (not c!936822)) b!5375870))

(assert (= (or b!5375871 b!5375865) bm!384937))

(assert (= (or b!5375871 b!5375865) bm!384940))

(assert (= (or b!5375864 bm!384937) bm!384938))

(assert (= (or b!5375864 bm!384940) bm!384939))

(assert (= (or b!5375863 bm!384939) bm!384936))

(assert (= (or b!5375863 b!5375864) bm!384941))

(declare-fun m!6402574 () Bool)

(assert (=> b!5375866 m!6402574))

(declare-fun m!6402576 () Bool)

(assert (=> bm!384938 m!6402576))

(declare-fun m!6402578 () Bool)

(assert (=> bm!384941 m!6402578))

(assert (=> b!5375862 m!6401696))

(declare-fun m!6402580 () Bool)

(assert (=> bm!384936 m!6402580))

(assert (=> b!5374970 d!1720934))

(declare-fun d!1720936 () Bool)

(declare-fun c!936827 () Bool)

(assert (=> d!1720936 (= c!936827 (isEmpty!33451 s!2326))))

(declare-fun e!3335315 () Bool)

(assert (=> d!1720936 (= (matchZipper!1341 lt!2189024 s!2326) e!3335315)))

(declare-fun b!5375880 () Bool)

(assert (=> b!5375880 (= e!3335315 (nullableZipper!1406 lt!2189024))))

(declare-fun b!5375881 () Bool)

(assert (=> b!5375881 (= e!3335315 (matchZipper!1341 (derivationStepZipper!1336 lt!2189024 (head!11530 s!2326)) (tail!10627 s!2326)))))

(assert (= (and d!1720936 c!936827) b!5375880))

(assert (= (and d!1720936 (not c!936827)) b!5375881))

(assert (=> d!1720936 m!6402002))

(declare-fun m!6402584 () Bool)

(assert (=> b!5375880 m!6402584))

(assert (=> b!5375881 m!6401994))

(assert (=> b!5375881 m!6401994))

(declare-fun m!6402586 () Bool)

(assert (=> b!5375881 m!6402586))

(assert (=> b!5375881 m!6401998))

(assert (=> b!5375881 m!6402586))

(assert (=> b!5375881 m!6401998))

(declare-fun m!6402588 () Bool)

(assert (=> b!5375881 m!6402588))

(assert (=> b!5374989 d!1720936))

(declare-fun d!1720938 () Bool)

(declare-fun c!936828 () Bool)

(assert (=> d!1720938 (= c!936828 (isEmpty!33451 (t!374813 s!2326)))))

(declare-fun e!3335320 () Bool)

(assert (=> d!1720938 (= (matchZipper!1341 lt!2189020 (t!374813 s!2326)) e!3335320)))

(declare-fun b!5375888 () Bool)

(assert (=> b!5375888 (= e!3335320 (nullableZipper!1406 lt!2189020))))

(declare-fun b!5375889 () Bool)

(assert (=> b!5375889 (= e!3335320 (matchZipper!1341 (derivationStepZipper!1336 lt!2189020 (head!11530 (t!374813 s!2326))) (tail!10627 (t!374813 s!2326))))))

(assert (= (and d!1720938 c!936828) b!5375888))

(assert (= (and d!1720938 (not c!936828)) b!5375889))

(assert (=> d!1720938 m!6402078))

(declare-fun m!6402590 () Bool)

(assert (=> b!5375888 m!6402590))

(assert (=> b!5375889 m!6402082))

(assert (=> b!5375889 m!6402082))

(declare-fun m!6402592 () Bool)

(assert (=> b!5375889 m!6402592))

(assert (=> b!5375889 m!6402086))

(assert (=> b!5375889 m!6402592))

(assert (=> b!5375889 m!6402086))

(declare-fun m!6402594 () Bool)

(assert (=> b!5375889 m!6402594))

(assert (=> b!5374989 d!1720938))

(declare-fun d!1720940 () Bool)

(declare-fun e!3335330 () Bool)

(assert (=> d!1720940 e!3335330))

(declare-fun res!2282131 () Bool)

(assert (=> d!1720940 (=> (not res!2282131) (not e!3335330))))

(declare-fun lt!2189181 () List!61592)

(declare-fun noDuplicate!1360 (List!61592) Bool)

(assert (=> d!1720940 (= res!2282131 (noDuplicate!1360 lt!2189181))))

(declare-fun choose!40387 ((InoxSet Context!8962)) List!61592)

(assert (=> d!1720940 (= lt!2189181 (choose!40387 z!1189))))

(assert (=> d!1720940 (= (toList!8881 z!1189) lt!2189181)))

(declare-fun b!5375907 () Bool)

(declare-fun content!10988 (List!61592) (InoxSet Context!8962))

(assert (=> b!5375907 (= e!3335330 (= (content!10988 lt!2189181) z!1189))))

(assert (= (and d!1720940 res!2282131) b!5375907))

(declare-fun m!6402598 () Bool)

(assert (=> d!1720940 m!6402598))

(declare-fun m!6402600 () Bool)

(assert (=> d!1720940 m!6402600))

(declare-fun m!6402602 () Bool)

(assert (=> b!5375907 m!6402602))

(assert (=> b!5374987 d!1720940))

(declare-fun d!1720950 () Bool)

(assert (=> d!1720950 (= (flatMap!824 lt!2189024 lambda!277688) (choose!40382 lt!2189024 lambda!277688))))

(declare-fun bs!1244680 () Bool)

(assert (= bs!1244680 d!1720950))

(declare-fun m!6402604 () Bool)

(assert (=> bs!1244680 m!6402604))

(assert (=> b!5374986 d!1720950))

(declare-fun d!1720952 () Bool)

(declare-fun c!936830 () Bool)

(declare-fun e!3335333 () Bool)

(assert (=> d!1720952 (= c!936830 e!3335333)))

(declare-fun res!2282132 () Bool)

(assert (=> d!1720952 (=> (not res!2282132) (not e!3335333))))

(assert (=> d!1720952 (= res!2282132 ((_ is Cons!61467) (exprs!4981 lt!2189046)))))

(declare-fun e!3335332 () (InoxSet Context!8962))

(assert (=> d!1720952 (= (derivationStepZipperUp!469 lt!2189046 (h!67914 s!2326)) e!3335332)))

(declare-fun bm!384942 () Bool)

(declare-fun call!384947 () (InoxSet Context!8962))

(assert (=> bm!384942 (= call!384947 (derivationStepZipperDown!545 (h!67915 (exprs!4981 lt!2189046)) (Context!8963 (t!374814 (exprs!4981 lt!2189046))) (h!67914 s!2326)))))

(declare-fun b!5375908 () Bool)

(assert (=> b!5375908 (= e!3335333 (nullable!5266 (h!67915 (exprs!4981 lt!2189046))))))

(declare-fun b!5375909 () Bool)

(declare-fun e!3335331 () (InoxSet Context!8962))

(assert (=> b!5375909 (= e!3335332 e!3335331)))

(declare-fun c!936829 () Bool)

(assert (=> b!5375909 (= c!936829 ((_ is Cons!61467) (exprs!4981 lt!2189046)))))

(declare-fun b!5375910 () Bool)

(assert (=> b!5375910 (= e!3335331 call!384947)))

(declare-fun b!5375911 () Bool)

(assert (=> b!5375911 (= e!3335331 ((as const (Array Context!8962 Bool)) false))))

(declare-fun b!5375912 () Bool)

(assert (=> b!5375912 (= e!3335332 ((_ map or) call!384947 (derivationStepZipperUp!469 (Context!8963 (t!374814 (exprs!4981 lt!2189046))) (h!67914 s!2326))))))

(assert (= (and d!1720952 res!2282132) b!5375908))

(assert (= (and d!1720952 c!936830) b!5375912))

(assert (= (and d!1720952 (not c!936830)) b!5375909))

(assert (= (and b!5375909 c!936829) b!5375910))

(assert (= (and b!5375909 (not c!936829)) b!5375911))

(assert (= (or b!5375912 b!5375910) bm!384942))

(declare-fun m!6402606 () Bool)

(assert (=> bm!384942 m!6402606))

(declare-fun m!6402608 () Bool)

(assert (=> b!5375908 m!6402608))

(declare-fun m!6402610 () Bool)

(assert (=> b!5375912 m!6402610))

(assert (=> b!5374986 d!1720952))

(declare-fun d!1720954 () Bool)

(assert (=> d!1720954 (= (flatMap!824 lt!2189024 lambda!277688) (dynLambda!24267 lambda!277688 lt!2189046))))

(declare-fun lt!2189182 () Unit!153906)

(assert (=> d!1720954 (= lt!2189182 (choose!40383 lt!2189024 lt!2189046 lambda!277688))))

(assert (=> d!1720954 (= lt!2189024 (store ((as const (Array Context!8962 Bool)) false) lt!2189046 true))))

(assert (=> d!1720954 (= (lemmaFlatMapOnSingletonSet!356 lt!2189024 lt!2189046 lambda!277688) lt!2189182)))

(declare-fun b_lambda!205987 () Bool)

(assert (=> (not b_lambda!205987) (not d!1720954)))

(declare-fun bs!1244681 () Bool)

(assert (= bs!1244681 d!1720954))

(assert (=> bs!1244681 m!6401688))

(declare-fun m!6402612 () Bool)

(assert (=> bs!1244681 m!6402612))

(declare-fun m!6402614 () Bool)

(assert (=> bs!1244681 m!6402614))

(assert (=> bs!1244681 m!6401682))

(assert (=> b!5374986 d!1720954))

(declare-fun bs!1244682 () Bool)

(declare-fun d!1720956 () Bool)

(assert (= bs!1244682 (and d!1720956 b!5374975)))

(declare-fun lambda!277781 () Int)

(assert (=> bs!1244682 (= lambda!277781 lambda!277688)))

(assert (=> d!1720956 true))

(assert (=> d!1720956 (= (derivationStepZipper!1336 lt!2189024 (h!67914 s!2326)) (flatMap!824 lt!2189024 lambda!277781))))

(declare-fun bs!1244683 () Bool)

(assert (= bs!1244683 d!1720956))

(declare-fun m!6402616 () Bool)

(assert (=> bs!1244683 m!6402616))

(assert (=> b!5374986 d!1720956))

(declare-fun c!936834 () Bool)

(declare-fun c!936833 () Bool)

(declare-fun bm!384943 () Bool)

(declare-fun call!384948 () Bool)

(assert (=> bm!384943 (= call!384948 (validRegex!6833 (ite c!936834 (reg!15426 lt!2189037) (ite c!936833 (regTwo!30707 lt!2189037) (regTwo!30706 lt!2189037)))))))

(declare-fun b!5375915 () Bool)

(declare-fun e!3335337 () Bool)

(declare-fun e!3335338 () Bool)

(assert (=> b!5375915 (= e!3335337 e!3335338)))

(assert (=> b!5375915 (= c!936834 ((_ is Star!15097) lt!2189037))))

(declare-fun b!5375916 () Bool)

(declare-fun e!3335334 () Bool)

(declare-fun e!3335336 () Bool)

(assert (=> b!5375916 (= e!3335334 e!3335336)))

(declare-fun res!2282134 () Bool)

(assert (=> b!5375916 (=> (not res!2282134) (not e!3335336))))

(declare-fun call!384950 () Bool)

(assert (=> b!5375916 (= res!2282134 call!384950)))

(declare-fun b!5375917 () Bool)

(declare-fun e!3335335 () Bool)

(assert (=> b!5375917 (= e!3335335 call!384948)))

(declare-fun b!5375918 () Bool)

(declare-fun res!2282135 () Bool)

(declare-fun e!3335340 () Bool)

(assert (=> b!5375918 (=> (not res!2282135) (not e!3335340))))

(assert (=> b!5375918 (= res!2282135 call!384950)))

(declare-fun e!3335339 () Bool)

(assert (=> b!5375918 (= e!3335339 e!3335340)))

(declare-fun b!5375919 () Bool)

(declare-fun call!384949 () Bool)

(assert (=> b!5375919 (= e!3335336 call!384949)))

(declare-fun b!5375920 () Bool)

(declare-fun res!2282133 () Bool)

(assert (=> b!5375920 (=> res!2282133 e!3335334)))

(assert (=> b!5375920 (= res!2282133 (not ((_ is Concat!23942) lt!2189037)))))

(assert (=> b!5375920 (= e!3335339 e!3335334)))

(declare-fun b!5375921 () Bool)

(assert (=> b!5375921 (= e!3335340 call!384949)))

(declare-fun b!5375922 () Bool)

(assert (=> b!5375922 (= e!3335338 e!3335335)))

(declare-fun res!2282136 () Bool)

(assert (=> b!5375922 (= res!2282136 (not (nullable!5266 (reg!15426 lt!2189037))))))

(assert (=> b!5375922 (=> (not res!2282136) (not e!3335335))))

(declare-fun bm!384945 () Bool)

(assert (=> bm!384945 (= call!384949 call!384948)))

(declare-fun b!5375923 () Bool)

(assert (=> b!5375923 (= e!3335338 e!3335339)))

(assert (=> b!5375923 (= c!936833 ((_ is Union!15097) lt!2189037))))

(declare-fun bm!384944 () Bool)

(assert (=> bm!384944 (= call!384950 (validRegex!6833 (ite c!936833 (regOne!30707 lt!2189037) (regOne!30706 lt!2189037))))))

(declare-fun d!1720958 () Bool)

(declare-fun res!2282137 () Bool)

(assert (=> d!1720958 (=> res!2282137 e!3335337)))

(assert (=> d!1720958 (= res!2282137 ((_ is ElementMatch!15097) lt!2189037))))

(assert (=> d!1720958 (= (validRegex!6833 lt!2189037) e!3335337)))

(assert (= (and d!1720958 (not res!2282137)) b!5375915))

(assert (= (and b!5375915 c!936834) b!5375922))

(assert (= (and b!5375915 (not c!936834)) b!5375923))

(assert (= (and b!5375922 res!2282136) b!5375917))

(assert (= (and b!5375923 c!936833) b!5375918))

(assert (= (and b!5375923 (not c!936833)) b!5375920))

(assert (= (and b!5375918 res!2282135) b!5375921))

(assert (= (and b!5375920 (not res!2282133)) b!5375916))

(assert (= (and b!5375916 res!2282134) b!5375919))

(assert (= (or b!5375921 b!5375919) bm!384945))

(assert (= (or b!5375918 b!5375916) bm!384944))

(assert (= (or b!5375917 bm!384945) bm!384943))

(declare-fun m!6402618 () Bool)

(assert (=> bm!384943 m!6402618))

(declare-fun m!6402620 () Bool)

(assert (=> b!5375922 m!6402620))

(declare-fun m!6402622 () Bool)

(assert (=> bm!384944 m!6402622))

(assert (=> b!5375007 d!1720958))

(declare-fun bs!1244684 () Bool)

(declare-fun d!1720960 () Bool)

(assert (= bs!1244684 (and d!1720960 d!1720722)))

(declare-fun lambda!277784 () Int)

(assert (=> bs!1244684 (= lambda!277784 lambda!277711)))

(declare-fun bs!1244685 () Bool)

(assert (= bs!1244685 (and d!1720960 d!1720778)))

(assert (=> bs!1244685 (= lambda!277784 lambda!277739)))

(declare-fun bs!1244686 () Bool)

(assert (= bs!1244686 (and d!1720960 d!1720932)))

(assert (=> bs!1244686 (= lambda!277784 lambda!277778)))

(declare-fun b!5375944 () Bool)

(declare-fun e!3335356 () Bool)

(declare-fun e!3335357 () Bool)

(assert (=> b!5375944 (= e!3335356 e!3335357)))

(declare-fun c!936845 () Bool)

(assert (=> b!5375944 (= c!936845 (isEmpty!33452 (tail!10628 (unfocusZipperList!539 zl!343))))))

(declare-fun b!5375945 () Bool)

(declare-fun e!3335353 () Regex!15097)

(assert (=> b!5375945 (= e!3335353 EmptyLang!15097)))

(declare-fun b!5375946 () Bool)

(declare-fun e!3335355 () Regex!15097)

(assert (=> b!5375946 (= e!3335355 (h!67915 (unfocusZipperList!539 zl!343)))))

(declare-fun b!5375947 () Bool)

(declare-fun e!3335354 () Bool)

(assert (=> b!5375947 (= e!3335354 (isEmpty!33452 (t!374814 (unfocusZipperList!539 zl!343))))))

(declare-fun b!5375948 () Bool)

(declare-fun e!3335358 () Bool)

(assert (=> b!5375948 (= e!3335358 e!3335356)))

(declare-fun c!936846 () Bool)

(assert (=> b!5375948 (= c!936846 (isEmpty!33452 (unfocusZipperList!539 zl!343)))))

(declare-fun b!5375949 () Bool)

(declare-fun lt!2189185 () Regex!15097)

(assert (=> b!5375949 (= e!3335357 (= lt!2189185 (head!11531 (unfocusZipperList!539 zl!343))))))

(declare-fun b!5375950 () Bool)

(declare-fun isUnion!381 (Regex!15097) Bool)

(assert (=> b!5375950 (= e!3335357 (isUnion!381 lt!2189185))))

(assert (=> d!1720960 e!3335358))

(declare-fun res!2282142 () Bool)

(assert (=> d!1720960 (=> (not res!2282142) (not e!3335358))))

(assert (=> d!1720960 (= res!2282142 (validRegex!6833 lt!2189185))))

(assert (=> d!1720960 (= lt!2189185 e!3335355)))

(declare-fun c!936843 () Bool)

(assert (=> d!1720960 (= c!936843 e!3335354)))

(declare-fun res!2282143 () Bool)

(assert (=> d!1720960 (=> (not res!2282143) (not e!3335354))))

(assert (=> d!1720960 (= res!2282143 ((_ is Cons!61467) (unfocusZipperList!539 zl!343)))))

(assert (=> d!1720960 (forall!14499 (unfocusZipperList!539 zl!343) lambda!277784)))

(assert (=> d!1720960 (= (generalisedUnion!1026 (unfocusZipperList!539 zl!343)) lt!2189185)))

(declare-fun b!5375951 () Bool)

(declare-fun isEmptyLang!949 (Regex!15097) Bool)

(assert (=> b!5375951 (= e!3335356 (isEmptyLang!949 lt!2189185))))

(declare-fun b!5375952 () Bool)

(assert (=> b!5375952 (= e!3335353 (Union!15097 (h!67915 (unfocusZipperList!539 zl!343)) (generalisedUnion!1026 (t!374814 (unfocusZipperList!539 zl!343)))))))

(declare-fun b!5375953 () Bool)

(assert (=> b!5375953 (= e!3335355 e!3335353)))

(declare-fun c!936844 () Bool)

(assert (=> b!5375953 (= c!936844 ((_ is Cons!61467) (unfocusZipperList!539 zl!343)))))

(assert (= (and d!1720960 res!2282143) b!5375947))

(assert (= (and d!1720960 c!936843) b!5375946))

(assert (= (and d!1720960 (not c!936843)) b!5375953))

(assert (= (and b!5375953 c!936844) b!5375952))

(assert (= (and b!5375953 (not c!936844)) b!5375945))

(assert (= (and d!1720960 res!2282142) b!5375948))

(assert (= (and b!5375948 c!936846) b!5375951))

(assert (= (and b!5375948 (not c!936846)) b!5375944))

(assert (= (and b!5375944 c!936845) b!5375949))

(assert (= (and b!5375944 (not c!936845)) b!5375950))

(declare-fun m!6402624 () Bool)

(assert (=> b!5375947 m!6402624))

(declare-fun m!6402626 () Bool)

(assert (=> b!5375951 m!6402626))

(assert (=> b!5375948 m!6401798))

(declare-fun m!6402628 () Bool)

(assert (=> b!5375948 m!6402628))

(declare-fun m!6402630 () Bool)

(assert (=> b!5375950 m!6402630))

(assert (=> b!5375949 m!6401798))

(declare-fun m!6402632 () Bool)

(assert (=> b!5375949 m!6402632))

(declare-fun m!6402634 () Bool)

(assert (=> d!1720960 m!6402634))

(assert (=> d!1720960 m!6401798))

(declare-fun m!6402636 () Bool)

(assert (=> d!1720960 m!6402636))

(declare-fun m!6402638 () Bool)

(assert (=> b!5375952 m!6402638))

(assert (=> b!5375944 m!6401798))

(declare-fun m!6402640 () Bool)

(assert (=> b!5375944 m!6402640))

(assert (=> b!5375944 m!6402640))

(declare-fun m!6402642 () Bool)

(assert (=> b!5375944 m!6402642))

(assert (=> b!5375005 d!1720960))

(declare-fun bs!1244687 () Bool)

(declare-fun d!1720962 () Bool)

(assert (= bs!1244687 (and d!1720962 d!1720722)))

(declare-fun lambda!277787 () Int)

(assert (=> bs!1244687 (= lambda!277787 lambda!277711)))

(declare-fun bs!1244688 () Bool)

(assert (= bs!1244688 (and d!1720962 d!1720778)))

(assert (=> bs!1244688 (= lambda!277787 lambda!277739)))

(declare-fun bs!1244689 () Bool)

(assert (= bs!1244689 (and d!1720962 d!1720932)))

(assert (=> bs!1244689 (= lambda!277787 lambda!277778)))

(declare-fun bs!1244690 () Bool)

(assert (= bs!1244690 (and d!1720962 d!1720960)))

(assert (=> bs!1244690 (= lambda!277787 lambda!277784)))

(declare-fun lt!2189188 () List!61591)

(assert (=> d!1720962 (forall!14499 lt!2189188 lambda!277787)))

(declare-fun e!3335361 () List!61591)

(assert (=> d!1720962 (= lt!2189188 e!3335361)))

(declare-fun c!936849 () Bool)

(assert (=> d!1720962 (= c!936849 ((_ is Cons!61468) zl!343))))

(assert (=> d!1720962 (= (unfocusZipperList!539 zl!343) lt!2189188)))

(declare-fun b!5375958 () Bool)

(assert (=> b!5375958 (= e!3335361 (Cons!61467 (generalisedConcat!766 (exprs!4981 (h!67916 zl!343))) (unfocusZipperList!539 (t!374815 zl!343))))))

(declare-fun b!5375959 () Bool)

(assert (=> b!5375959 (= e!3335361 Nil!61467)))

(assert (= (and d!1720962 c!936849) b!5375958))

(assert (= (and d!1720962 (not c!936849)) b!5375959))

(declare-fun m!6402644 () Bool)

(assert (=> d!1720962 m!6402644))

(assert (=> b!5375958 m!6401680))

(declare-fun m!6402646 () Bool)

(assert (=> b!5375958 m!6402646))

(assert (=> b!5375005 d!1720962))

(declare-fun b!5375970 () Bool)

(declare-fun e!3335364 () Bool)

(assert (=> b!5375970 (= e!3335364 tp_is_empty!39447)))

(declare-fun b!5375973 () Bool)

(declare-fun tp!1490701 () Bool)

(declare-fun tp!1490702 () Bool)

(assert (=> b!5375973 (= e!3335364 (and tp!1490701 tp!1490702))))

(assert (=> b!5374974 (= tp!1490623 e!3335364)))

(declare-fun b!5375971 () Bool)

(declare-fun tp!1490700 () Bool)

(declare-fun tp!1490699 () Bool)

(assert (=> b!5375971 (= e!3335364 (and tp!1490700 tp!1490699))))

(declare-fun b!5375972 () Bool)

(declare-fun tp!1490698 () Bool)

(assert (=> b!5375972 (= e!3335364 tp!1490698)))

(assert (= (and b!5374974 ((_ is ElementMatch!15097) (regOne!30706 r!7292))) b!5375970))

(assert (= (and b!5374974 ((_ is Concat!23942) (regOne!30706 r!7292))) b!5375971))

(assert (= (and b!5374974 ((_ is Star!15097) (regOne!30706 r!7292))) b!5375972))

(assert (= (and b!5374974 ((_ is Union!15097) (regOne!30706 r!7292))) b!5375973))

(declare-fun b!5375974 () Bool)

(declare-fun e!3335365 () Bool)

(assert (=> b!5375974 (= e!3335365 tp_is_empty!39447)))

(declare-fun b!5375977 () Bool)

(declare-fun tp!1490706 () Bool)

(declare-fun tp!1490707 () Bool)

(assert (=> b!5375977 (= e!3335365 (and tp!1490706 tp!1490707))))

(assert (=> b!5374974 (= tp!1490627 e!3335365)))

(declare-fun b!5375975 () Bool)

(declare-fun tp!1490705 () Bool)

(declare-fun tp!1490704 () Bool)

(assert (=> b!5375975 (= e!3335365 (and tp!1490705 tp!1490704))))

(declare-fun b!5375976 () Bool)

(declare-fun tp!1490703 () Bool)

(assert (=> b!5375976 (= e!3335365 tp!1490703)))

(assert (= (and b!5374974 ((_ is ElementMatch!15097) (regTwo!30706 r!7292))) b!5375974))

(assert (= (and b!5374974 ((_ is Concat!23942) (regTwo!30706 r!7292))) b!5375975))

(assert (= (and b!5374974 ((_ is Star!15097) (regTwo!30706 r!7292))) b!5375976))

(assert (= (and b!5374974 ((_ is Union!15097) (regTwo!30706 r!7292))) b!5375977))

(declare-fun b!5375982 () Bool)

(declare-fun e!3335368 () Bool)

(declare-fun tp!1490710 () Bool)

(assert (=> b!5375982 (= e!3335368 (and tp_is_empty!39447 tp!1490710))))

(assert (=> b!5374969 (= tp!1490628 e!3335368)))

(assert (= (and b!5374969 ((_ is Cons!61466) (t!374813 s!2326))) b!5375982))

(declare-fun b!5375983 () Bool)

(declare-fun e!3335369 () Bool)

(assert (=> b!5375983 (= e!3335369 tp_is_empty!39447)))

(declare-fun b!5375986 () Bool)

(declare-fun tp!1490714 () Bool)

(declare-fun tp!1490715 () Bool)

(assert (=> b!5375986 (= e!3335369 (and tp!1490714 tp!1490715))))

(assert (=> b!5374988 (= tp!1490629 e!3335369)))

(declare-fun b!5375984 () Bool)

(declare-fun tp!1490713 () Bool)

(declare-fun tp!1490712 () Bool)

(assert (=> b!5375984 (= e!3335369 (and tp!1490713 tp!1490712))))

(declare-fun b!5375985 () Bool)

(declare-fun tp!1490711 () Bool)

(assert (=> b!5375985 (= e!3335369 tp!1490711)))

(assert (= (and b!5374988 ((_ is ElementMatch!15097) (reg!15426 r!7292))) b!5375983))

(assert (= (and b!5374988 ((_ is Concat!23942) (reg!15426 r!7292))) b!5375984))

(assert (= (and b!5374988 ((_ is Star!15097) (reg!15426 r!7292))) b!5375985))

(assert (= (and b!5374988 ((_ is Union!15097) (reg!15426 r!7292))) b!5375986))

(declare-fun b!5375991 () Bool)

(declare-fun e!3335372 () Bool)

(declare-fun tp!1490720 () Bool)

(declare-fun tp!1490721 () Bool)

(assert (=> b!5375991 (= e!3335372 (and tp!1490720 tp!1490721))))

(assert (=> b!5375006 (= tp!1490620 e!3335372)))

(assert (= (and b!5375006 ((_ is Cons!61467) (exprs!4981 setElem!34853))) b!5375991))

(declare-fun condSetEmpty!34859 () Bool)

(assert (=> setNonEmpty!34853 (= condSetEmpty!34859 (= setRest!34853 ((as const (Array Context!8962 Bool)) false)))))

(declare-fun setRes!34859 () Bool)

(assert (=> setNonEmpty!34853 (= tp!1490625 setRes!34859)))

(declare-fun setIsEmpty!34859 () Bool)

(assert (=> setIsEmpty!34859 setRes!34859))

(declare-fun tp!1490726 () Bool)

(declare-fun e!3335375 () Bool)

(declare-fun setElem!34859 () Context!8962)

(declare-fun setNonEmpty!34859 () Bool)

(assert (=> setNonEmpty!34859 (= setRes!34859 (and tp!1490726 (inv!80989 setElem!34859) e!3335375))))

(declare-fun setRest!34859 () (InoxSet Context!8962))

(assert (=> setNonEmpty!34859 (= setRest!34853 ((_ map or) (store ((as const (Array Context!8962 Bool)) false) setElem!34859 true) setRest!34859))))

(declare-fun b!5375996 () Bool)

(declare-fun tp!1490727 () Bool)

(assert (=> b!5375996 (= e!3335375 tp!1490727)))

(assert (= (and setNonEmpty!34853 condSetEmpty!34859) setIsEmpty!34859))

(assert (= (and setNonEmpty!34853 (not condSetEmpty!34859)) setNonEmpty!34859))

(assert (= setNonEmpty!34859 b!5375996))

(declare-fun m!6402648 () Bool)

(assert (=> setNonEmpty!34859 m!6402648))

(declare-fun b!5375997 () Bool)

(declare-fun e!3335376 () Bool)

(assert (=> b!5375997 (= e!3335376 tp_is_empty!39447)))

(declare-fun b!5376000 () Bool)

(declare-fun tp!1490731 () Bool)

(declare-fun tp!1490732 () Bool)

(assert (=> b!5376000 (= e!3335376 (and tp!1490731 tp!1490732))))

(assert (=> b!5374971 (= tp!1490626 e!3335376)))

(declare-fun b!5375998 () Bool)

(declare-fun tp!1490730 () Bool)

(declare-fun tp!1490729 () Bool)

(assert (=> b!5375998 (= e!3335376 (and tp!1490730 tp!1490729))))

(declare-fun b!5375999 () Bool)

(declare-fun tp!1490728 () Bool)

(assert (=> b!5375999 (= e!3335376 tp!1490728)))

(assert (= (and b!5374971 ((_ is ElementMatch!15097) (regOne!30707 r!7292))) b!5375997))

(assert (= (and b!5374971 ((_ is Concat!23942) (regOne!30707 r!7292))) b!5375998))

(assert (= (and b!5374971 ((_ is Star!15097) (regOne!30707 r!7292))) b!5375999))

(assert (= (and b!5374971 ((_ is Union!15097) (regOne!30707 r!7292))) b!5376000))

(declare-fun b!5376001 () Bool)

(declare-fun e!3335377 () Bool)

(assert (=> b!5376001 (= e!3335377 tp_is_empty!39447)))

(declare-fun b!5376004 () Bool)

(declare-fun tp!1490736 () Bool)

(declare-fun tp!1490737 () Bool)

(assert (=> b!5376004 (= e!3335377 (and tp!1490736 tp!1490737))))

(assert (=> b!5374971 (= tp!1490621 e!3335377)))

(declare-fun b!5376002 () Bool)

(declare-fun tp!1490735 () Bool)

(declare-fun tp!1490734 () Bool)

(assert (=> b!5376002 (= e!3335377 (and tp!1490735 tp!1490734))))

(declare-fun b!5376003 () Bool)

(declare-fun tp!1490733 () Bool)

(assert (=> b!5376003 (= e!3335377 tp!1490733)))

(assert (= (and b!5374971 ((_ is ElementMatch!15097) (regTwo!30707 r!7292))) b!5376001))

(assert (= (and b!5374971 ((_ is Concat!23942) (regTwo!30707 r!7292))) b!5376002))

(assert (= (and b!5374971 ((_ is Star!15097) (regTwo!30707 r!7292))) b!5376003))

(assert (= (and b!5374971 ((_ is Union!15097) (regTwo!30707 r!7292))) b!5376004))

(declare-fun b!5376012 () Bool)

(declare-fun e!3335383 () Bool)

(declare-fun tp!1490742 () Bool)

(assert (=> b!5376012 (= e!3335383 tp!1490742)))

(declare-fun tp!1490743 () Bool)

(declare-fun e!3335382 () Bool)

(declare-fun b!5376011 () Bool)

(assert (=> b!5376011 (= e!3335382 (and (inv!80989 (h!67916 (t!374815 zl!343))) e!3335383 tp!1490743))))

(assert (=> b!5374990 (= tp!1490624 e!3335382)))

(assert (= b!5376011 b!5376012))

(assert (= (and b!5374990 ((_ is Cons!61468) (t!374815 zl!343))) b!5376011))

(declare-fun m!6402650 () Bool)

(assert (=> b!5376011 m!6402650))

(declare-fun b!5376013 () Bool)

(declare-fun e!3335384 () Bool)

(declare-fun tp!1490744 () Bool)

(declare-fun tp!1490745 () Bool)

(assert (=> b!5376013 (= e!3335384 (and tp!1490744 tp!1490745))))

(assert (=> b!5374985 (= tp!1490622 e!3335384)))

(assert (= (and b!5374985 ((_ is Cons!61467) (exprs!4981 (h!67916 zl!343)))) b!5376013))

(declare-fun b_lambda!205989 () Bool)

(assert (= b_lambda!205987 (or b!5374975 b_lambda!205989)))

(declare-fun bs!1244691 () Bool)

(declare-fun d!1720964 () Bool)

(assert (= bs!1244691 (and d!1720964 b!5374975)))

(assert (=> bs!1244691 (= (dynLambda!24267 lambda!277688 lt!2189046) (derivationStepZipperUp!469 lt!2189046 (h!67914 s!2326)))))

(assert (=> bs!1244691 m!6401684))

(assert (=> d!1720954 d!1720964))

(declare-fun b_lambda!205991 () Bool)

(assert (= b_lambda!205975 (or b!5374975 b_lambda!205991)))

(declare-fun bs!1244692 () Bool)

(declare-fun d!1720966 () Bool)

(assert (= bs!1244692 (and d!1720966 b!5374975)))

(assert (=> bs!1244692 (= (dynLambda!24267 lambda!277688 lt!2189047) (derivationStepZipperUp!469 lt!2189047 (h!67914 s!2326)))))

(assert (=> bs!1244692 m!6401702))

(assert (=> d!1720858 d!1720966))

(declare-fun b_lambda!205993 () Bool)

(assert (= b_lambda!205977 (or b!5374975 b_lambda!205993)))

(declare-fun bs!1244693 () Bool)

(declare-fun d!1720968 () Bool)

(assert (= bs!1244693 (and d!1720968 b!5374975)))

(assert (=> bs!1244693 (= (dynLambda!24267 lambda!277688 lt!2189018) (derivationStepZipperUp!469 lt!2189018 (h!67914 s!2326)))))

(assert (=> bs!1244693 m!6401706))

(assert (=> d!1720860 d!1720968))

(declare-fun b_lambda!205995 () Bool)

(assert (= b_lambda!205973 (or b!5374975 b_lambda!205995)))

(declare-fun bs!1244694 () Bool)

(declare-fun d!1720970 () Bool)

(assert (= bs!1244694 (and d!1720970 b!5374975)))

(assert (=> bs!1244694 (= (dynLambda!24267 lambda!277688 (h!67916 zl!343)) (derivationStepZipperUp!469 (h!67916 zl!343) (h!67914 s!2326)))))

(assert (=> bs!1244694 m!6401746))

(assert (=> d!1720810 d!1720970))

(check-sat (not b!5375729) (not setNonEmpty!34859) (not b!5375727) (not b!5375948) (not b!5375620) (not b!5375949) (not d!1720824) (not b!5375888) (not b!5375316) (not b!5375354) (not d!1720940) (not d!1720868) (not b!5375568) (not bs!1244693) (not b!5375985) (not b!5375634) (not b!5375728) (not b!5375575) (not bm!384862) (not b!5375982) (not b!5375405) (not b_lambda!205995) (not b!5375403) (not d!1720702) (not b!5375972) (not b!5376000) (not b!5375579) (not d!1720704) (not b!5375580) (not d!1720680) (not b!5375623) (not b!5375494) (not d!1720720) (not d!1720954) (not b!5375844) (not d!1720864) (not bm!384941) (not d!1720912) (not d!1720718) (not d!1720738) (not d!1720890) (not b!5375973) (not d!1720852) (not b!5375516) (not bs!1244694) (not d!1720888) (not bm!384919) (not d!1720770) (not b!5375360) (not bm!384938) (not bm!384943) (not b!5375131) (not d!1720886) (not d!1720762) (not b!5375977) (not b!5375950) (not b!5375483) (not b!5376013) (not b!5375951) (not bm!384942) (not bm!384877) (not b!5375485) (not b!5375952) (not b!5375912) (not b!5375368) (not d!1720766) (not b!5375484) (not bm!384860) (not bm!384864) (not b!5375971) (not bm!384920) (not b!5375636) (not d!1720778) (not bm!384933) (not d!1720842) (not b!5375642) (not b!5375998) (not bm!384915) (not d!1720910) (not b!5376011) (not d!1720856) (not bm!384905) (not d!1720846) (not b!5375339) (not bm!384900) (not b_lambda!205991) (not b!5375622) (not b!5375266) (not d!1720932) (not b!5376002) (not b!5375617) (not b!5375621) (not b!5375698) (not d!1720850) (not d!1720860) (not b!5375258) (not d!1720960) (not d!1720962) (not b!5375314) (not b!5375130) (not bm!384901) (not d!1720848) (not d!1720722) (not b!5375613) (not b!5375520) (not b!5375866) (not bm!384914) (not b!5376004) (not b!5375254) (not d!1720874) (not d!1720772) (not b!5375481) (not b!5375889) (not bm!384854) (not d!1720784) (not d!1720858) (not d!1720764) (not b!5375657) (not b!5375922) (not b!5375618) (not d!1720780) (not b!5375880) (not b!5375907) (not b!5375726) (not bm!384867) (not b!5375346) (not d!1720748) (not b!5375413) (not b!5375479) (not b!5375352) (not b!5375407) (not bm!384859) (not b!5375348) (not bm!384906) (not b!5375264) (not b!5375612) (not bm!384934) (not b!5375700) (not b!5375584) (not d!1720698) (not b!5376012) (not bm!384863) (not b!5375646) (not bm!384944) (not d!1720676) (not b!5376003) (not d!1720938) (not b!5375404) (not b!5375135) (not b!5375349) (not d!1720880) (not b!5375999) (not b_lambda!205989) (not b!5375944) (not b!5375486) (not b!5375415) (not b!5375626) (not b!5375724) (not d!1720696) (not b!5375653) (not d!1720950) (not b_lambda!205993) (not d!1720758) (not b!5375628) tp_is_empty!39447 (not d!1720862) (not b!5375625) (not b!5375493) (not b!5375991) (not b!5375255) (not b!5375881) (not d!1720936) (not b!5375362) (not b!5375136) (not b!5375347) (not bm!384907) (not bm!384936) (not d!1720900) (not b!5375133) (not b!5375366) (not b!5375986) (not b!5375487) (not b!5375256) (not d!1720956) (not d!1720836) (not b!5375984) (not bs!1244692) (not d!1720838) (not bm!384899) (not b!5375976) (not d!1720724) (not b!5375350) (not b!5375683) (not d!1720776) (not d!1720810) (not b!5375624) (not bm!384894) (not b!5375947) (not b!5375723) (not d!1720786) (not b!5375975) (not bs!1244691) (not b!5375351) (not b!5375908) (not b!5375958) (not bm!384896) (not b!5375134) (not b!5375996))
(check-sat)
