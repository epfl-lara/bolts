; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550190 () Bool)

(assert start!550190)

(declare-fun b!5201029 () Bool)

(assert (=> b!5201029 true))

(assert (=> b!5201029 true))

(declare-fun lambda!260577 () Int)

(declare-fun lambda!260576 () Int)

(assert (=> b!5201029 (not (= lambda!260577 lambda!260576))))

(assert (=> b!5201029 true))

(assert (=> b!5201029 true))

(declare-fun b!5201019 () Bool)

(declare-fun res!2209654 () Bool)

(declare-fun e!3238662 () Bool)

(assert (=> b!5201019 (=> (not res!2209654) (not e!3238662))))

(declare-datatypes ((C!29836 0))(
  ( (C!29837 (val!24620 Int)) )
))
(declare-datatypes ((Regex!14783 0))(
  ( (ElementMatch!14783 (c!896398 C!29836)) (Concat!23628 (regOne!30078 Regex!14783) (regTwo!30078 Regex!14783)) (EmptyExpr!14783) (Star!14783 (reg!15112 Regex!14783)) (EmptyLang!14783) (Union!14783 (regOne!30079 Regex!14783) (regTwo!30079 Regex!14783)) )
))
(declare-fun r!7292 () Regex!14783)

(declare-datatypes ((List!60648 0))(
  ( (Nil!60524) (Cons!60524 (h!66972 Regex!14783) (t!373801 List!60648)) )
))
(declare-datatypes ((Context!8334 0))(
  ( (Context!8335 (exprs!4667 List!60648)) )
))
(declare-datatypes ((List!60649 0))(
  ( (Nil!60525) (Cons!60525 (h!66973 Context!8334) (t!373802 List!60649)) )
))
(declare-fun zl!343 () List!60649)

(declare-fun unfocusZipper!525 (List!60649) Regex!14783)

(assert (=> b!5201019 (= res!2209654 (= r!7292 (unfocusZipper!525 zl!343)))))

(declare-fun b!5201020 () Bool)

(declare-fun res!2209650 () Bool)

(assert (=> b!5201020 (=> (not res!2209650) (not e!3238662))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8334))

(declare-fun toList!8567 ((InoxSet Context!8334)) List!60649)

(assert (=> b!5201020 (= res!2209650 (= (toList!8567 z!1189) zl!343))))

(declare-fun b!5201021 () Bool)

(declare-fun e!3238658 () Bool)

(declare-fun tp_is_empty!38819 () Bool)

(declare-fun tp!1458836 () Bool)

(assert (=> b!5201021 (= e!3238658 (and tp_is_empty!38819 tp!1458836))))

(declare-fun b!5201022 () Bool)

(declare-fun e!3238661 () Bool)

(assert (=> b!5201022 (= e!3238662 (not e!3238661))))

(declare-fun res!2209651 () Bool)

(assert (=> b!5201022 (=> res!2209651 e!3238661)))

(get-info :version)

(assert (=> b!5201022 (= res!2209651 (not ((_ is Cons!60525) zl!343)))))

(declare-fun lt!2140883 () Bool)

(declare-datatypes ((List!60650 0))(
  ( (Nil!60526) (Cons!60526 (h!66974 C!29836) (t!373803 List!60650)) )
))
(declare-fun s!2326 () List!60650)

(declare-fun matchRSpec!1886 (Regex!14783 List!60650) Bool)

(assert (=> b!5201022 (= lt!2140883 (matchRSpec!1886 r!7292 s!2326))))

(declare-fun matchR!6968 (Regex!14783 List!60650) Bool)

(assert (=> b!5201022 (= lt!2140883 (matchR!6968 r!7292 s!2326))))

(declare-datatypes ((Unit!152400 0))(
  ( (Unit!152401) )
))
(declare-fun lt!2140887 () Unit!152400)

(declare-fun mainMatchTheorem!1886 (Regex!14783 List!60650) Unit!152400)

(assert (=> b!5201022 (= lt!2140887 (mainMatchTheorem!1886 r!7292 s!2326))))

(declare-fun b!5201023 () Bool)

(declare-fun e!3238657 () Bool)

(declare-fun tp!1458843 () Bool)

(assert (=> b!5201023 (= e!3238657 tp!1458843)))

(declare-fun b!5201024 () Bool)

(declare-fun e!3238663 () Bool)

(declare-fun tp!1458841 () Bool)

(assert (=> b!5201024 (= e!3238663 tp!1458841)))

(declare-fun b!5201025 () Bool)

(declare-fun res!2209655 () Bool)

(declare-fun e!3238660 () Bool)

(assert (=> b!5201025 (=> res!2209655 e!3238660)))

(declare-fun isEmpty!32433 (List!60648) Bool)

(assert (=> b!5201025 (= res!2209655 (isEmpty!32433 (t!373801 (exprs!4667 (h!66973 zl!343)))))))

(declare-fun b!5201026 () Bool)

(declare-fun res!2209649 () Bool)

(assert (=> b!5201026 (=> res!2209649 e!3238661)))

(declare-fun isEmpty!32434 (List!60649) Bool)

(assert (=> b!5201026 (= res!2209649 (not (isEmpty!32434 (t!373802 zl!343))))))

(declare-fun b!5201027 () Bool)

(declare-fun res!2209657 () Bool)

(assert (=> b!5201027 (=> res!2209657 e!3238661)))

(assert (=> b!5201027 (= res!2209657 (not ((_ is Cons!60524) (exprs!4667 (h!66973 zl!343)))))))

(declare-fun b!5201028 () Bool)

(declare-fun tp!1458839 () Bool)

(declare-fun e!3238656 () Bool)

(declare-fun inv!80204 (Context!8334) Bool)

(assert (=> b!5201028 (= e!3238656 (and (inv!80204 (h!66973 zl!343)) e!3238657 tp!1458839))))

(assert (=> b!5201029 (= e!3238661 e!3238660)))

(declare-fun res!2209648 () Bool)

(assert (=> b!5201029 (=> res!2209648 e!3238660)))

(declare-fun lt!2140888 () Bool)

(assert (=> b!5201029 (= res!2209648 (or (not (= lt!2140883 lt!2140888)) ((_ is Nil!60526) s!2326)))))

(declare-fun Exists!1964 (Int) Bool)

(assert (=> b!5201029 (= (Exists!1964 lambda!260576) (Exists!1964 lambda!260577))))

(declare-fun lt!2140886 () Unit!152400)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!618 (Regex!14783 Regex!14783 List!60650) Unit!152400)

(assert (=> b!5201029 (= lt!2140886 (lemmaExistCutMatchRandMatchRSpecEquivalent!618 (regOne!30078 r!7292) (regTwo!30078 r!7292) s!2326))))

(assert (=> b!5201029 (= lt!2140888 (Exists!1964 lambda!260576))))

(declare-datatypes ((tuple2!63964 0))(
  ( (tuple2!63965 (_1!35285 List!60650) (_2!35285 List!60650)) )
))
(declare-datatypes ((Option!14894 0))(
  ( (None!14893) (Some!14893 (v!50922 tuple2!63964)) )
))
(declare-fun isDefined!11597 (Option!14894) Bool)

(declare-fun findConcatSeparation!1308 (Regex!14783 Regex!14783 List!60650 List!60650 List!60650) Option!14894)

(assert (=> b!5201029 (= lt!2140888 (isDefined!11597 (findConcatSeparation!1308 (regOne!30078 r!7292) (regTwo!30078 r!7292) Nil!60526 s!2326 s!2326)))))

(declare-fun lt!2140884 () Unit!152400)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1072 (Regex!14783 Regex!14783 List!60650) Unit!152400)

(assert (=> b!5201029 (= lt!2140884 (lemmaFindConcatSeparationEquivalentToExists!1072 (regOne!30078 r!7292) (regTwo!30078 r!7292) s!2326))))

(declare-fun setIsEmpty!32986 () Bool)

(declare-fun setRes!32986 () Bool)

(assert (=> setIsEmpty!32986 setRes!32986))

(declare-fun b!5201030 () Bool)

(declare-fun res!2209653 () Bool)

(assert (=> b!5201030 (=> res!2209653 e!3238661)))

(declare-fun generalisedUnion!712 (List!60648) Regex!14783)

(declare-fun unfocusZipperList!225 (List!60649) List!60648)

(assert (=> b!5201030 (= res!2209653 (not (= r!7292 (generalisedUnion!712 (unfocusZipperList!225 zl!343)))))))

(declare-fun res!2209658 () Bool)

(assert (=> start!550190 (=> (not res!2209658) (not e!3238662))))

(declare-fun validRegex!6519 (Regex!14783) Bool)

(assert (=> start!550190 (= res!2209658 (validRegex!6519 r!7292))))

(assert (=> start!550190 e!3238662))

(assert (=> start!550190 e!3238663))

(declare-fun condSetEmpty!32986 () Bool)

(assert (=> start!550190 (= condSetEmpty!32986 (= z!1189 ((as const (Array Context!8334 Bool)) false)))))

(assert (=> start!550190 setRes!32986))

(assert (=> start!550190 e!3238656))

(assert (=> start!550190 e!3238658))

(declare-fun b!5201031 () Bool)

(assert (=> b!5201031 (= e!3238663 tp_is_empty!38819)))

(declare-fun b!5201032 () Bool)

(declare-fun tp!1458838 () Bool)

(declare-fun tp!1458842 () Bool)

(assert (=> b!5201032 (= e!3238663 (and tp!1458838 tp!1458842))))

(declare-fun b!5201033 () Bool)

(declare-fun res!2209652 () Bool)

(assert (=> b!5201033 (=> res!2209652 e!3238661)))

(assert (=> b!5201033 (= res!2209652 (or ((_ is EmptyExpr!14783) r!7292) ((_ is EmptyLang!14783) r!7292) ((_ is ElementMatch!14783) r!7292) ((_ is Union!14783) r!7292) (not ((_ is Concat!23628) r!7292))))))

(declare-fun b!5201034 () Bool)

(declare-fun e!3238659 () Bool)

(declare-fun tp!1458845 () Bool)

(assert (=> b!5201034 (= e!3238659 tp!1458845)))

(declare-fun setNonEmpty!32986 () Bool)

(declare-fun setElem!32986 () Context!8334)

(declare-fun tp!1458840 () Bool)

(assert (=> setNonEmpty!32986 (= setRes!32986 (and tp!1458840 (inv!80204 setElem!32986) e!3238659))))

(declare-fun setRest!32986 () (InoxSet Context!8334))

(assert (=> setNonEmpty!32986 (= z!1189 ((_ map or) (store ((as const (Array Context!8334 Bool)) false) setElem!32986 true) setRest!32986))))

(declare-fun b!5201035 () Bool)

(declare-fun res!2209656 () Bool)

(assert (=> b!5201035 (=> res!2209656 e!3238661)))

(declare-fun generalisedConcat!452 (List!60648) Regex!14783)

(assert (=> b!5201035 (= res!2209656 (not (= r!7292 (generalisedConcat!452 (exprs!4667 (h!66973 zl!343))))))))

(declare-fun b!5201036 () Bool)

(assert (=> b!5201036 (= e!3238660 true)))

(declare-fun lt!2140891 () (InoxSet Context!8334))

(declare-fun lt!2140889 () Context!8334)

(declare-fun derivationStepZipperUp!155 (Context!8334 C!29836) (InoxSet Context!8334))

(assert (=> b!5201036 (= lt!2140891 (derivationStepZipperUp!155 lt!2140889 (h!66974 s!2326)))))

(declare-fun lt!2140885 () (InoxSet Context!8334))

(declare-fun derivationStepZipperDown!231 (Regex!14783 Context!8334 C!29836) (InoxSet Context!8334))

(assert (=> b!5201036 (= lt!2140885 (derivationStepZipperDown!231 (h!66972 (exprs!4667 (h!66973 zl!343))) lt!2140889 (h!66974 s!2326)))))

(assert (=> b!5201036 (= lt!2140889 (Context!8335 (t!373801 (exprs!4667 (h!66973 zl!343)))))))

(declare-fun lt!2140890 () (InoxSet Context!8334))

(assert (=> b!5201036 (= lt!2140890 (derivationStepZipperUp!155 (Context!8335 (Cons!60524 (h!66972 (exprs!4667 (h!66973 zl!343))) (t!373801 (exprs!4667 (h!66973 zl!343))))) (h!66974 s!2326)))))

(declare-fun b!5201037 () Bool)

(declare-fun tp!1458844 () Bool)

(declare-fun tp!1458837 () Bool)

(assert (=> b!5201037 (= e!3238663 (and tp!1458844 tp!1458837))))

(assert (= (and start!550190 res!2209658) b!5201020))

(assert (= (and b!5201020 res!2209650) b!5201019))

(assert (= (and b!5201019 res!2209654) b!5201022))

(assert (= (and b!5201022 (not res!2209651)) b!5201026))

(assert (= (and b!5201026 (not res!2209649)) b!5201035))

(assert (= (and b!5201035 (not res!2209656)) b!5201027))

(assert (= (and b!5201027 (not res!2209657)) b!5201030))

(assert (= (and b!5201030 (not res!2209653)) b!5201033))

(assert (= (and b!5201033 (not res!2209652)) b!5201029))

(assert (= (and b!5201029 (not res!2209648)) b!5201025))

(assert (= (and b!5201025 (not res!2209655)) b!5201036))

(assert (= (and start!550190 ((_ is ElementMatch!14783) r!7292)) b!5201031))

(assert (= (and start!550190 ((_ is Concat!23628) r!7292)) b!5201037))

(assert (= (and start!550190 ((_ is Star!14783) r!7292)) b!5201024))

(assert (= (and start!550190 ((_ is Union!14783) r!7292)) b!5201032))

(assert (= (and start!550190 condSetEmpty!32986) setIsEmpty!32986))

(assert (= (and start!550190 (not condSetEmpty!32986)) setNonEmpty!32986))

(assert (= setNonEmpty!32986 b!5201034))

(assert (= b!5201028 b!5201023))

(assert (= (and start!550190 ((_ is Cons!60525) zl!343)) b!5201028))

(assert (= (and start!550190 ((_ is Cons!60526) s!2326)) b!5201021))

(declare-fun m!6253510 () Bool)

(assert (=> b!5201029 m!6253510))

(declare-fun m!6253512 () Bool)

(assert (=> b!5201029 m!6253512))

(declare-fun m!6253514 () Bool)

(assert (=> b!5201029 m!6253514))

(declare-fun m!6253516 () Bool)

(assert (=> b!5201029 m!6253516))

(assert (=> b!5201029 m!6253512))

(declare-fun m!6253518 () Bool)

(assert (=> b!5201029 m!6253518))

(assert (=> b!5201029 m!6253514))

(declare-fun m!6253520 () Bool)

(assert (=> b!5201029 m!6253520))

(declare-fun m!6253522 () Bool)

(assert (=> b!5201020 m!6253522))

(declare-fun m!6253524 () Bool)

(assert (=> b!5201026 m!6253524))

(declare-fun m!6253526 () Bool)

(assert (=> b!5201028 m!6253526))

(declare-fun m!6253528 () Bool)

(assert (=> b!5201025 m!6253528))

(declare-fun m!6253530 () Bool)

(assert (=> start!550190 m!6253530))

(declare-fun m!6253532 () Bool)

(assert (=> b!5201030 m!6253532))

(assert (=> b!5201030 m!6253532))

(declare-fun m!6253534 () Bool)

(assert (=> b!5201030 m!6253534))

(declare-fun m!6253536 () Bool)

(assert (=> b!5201035 m!6253536))

(declare-fun m!6253538 () Bool)

(assert (=> b!5201019 m!6253538))

(declare-fun m!6253540 () Bool)

(assert (=> b!5201036 m!6253540))

(declare-fun m!6253542 () Bool)

(assert (=> b!5201036 m!6253542))

(declare-fun m!6253544 () Bool)

(assert (=> b!5201036 m!6253544))

(declare-fun m!6253546 () Bool)

(assert (=> b!5201022 m!6253546))

(declare-fun m!6253548 () Bool)

(assert (=> b!5201022 m!6253548))

(declare-fun m!6253550 () Bool)

(assert (=> b!5201022 m!6253550))

(declare-fun m!6253552 () Bool)

(assert (=> setNonEmpty!32986 m!6253552))

(check-sat (not b!5201025) tp_is_empty!38819 (not b!5201032) (not start!550190) (not b!5201021) (not b!5201026) (not b!5201037) (not b!5201028) (not b!5201019) (not b!5201029) (not b!5201034) (not b!5201036) (not b!5201020) (not b!5201023) (not b!5201022) (not b!5201030) (not b!5201035) (not setNonEmpty!32986) (not b!5201024))
(check-sat)
