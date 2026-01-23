; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!631034 () Bool)

(assert start!631034)

(declare-fun b!6369809 () Bool)

(assert (=> b!6369809 true))

(assert (=> b!6369809 true))

(declare-fun lambda!351014 () Int)

(declare-fun lambda!351013 () Int)

(assert (=> b!6369809 (not (= lambda!351014 lambda!351013))))

(assert (=> b!6369809 true))

(assert (=> b!6369809 true))

(declare-fun b!6369815 () Bool)

(assert (=> b!6369815 true))

(declare-fun b!6369798 () Bool)

(declare-fun res!2620500 () Bool)

(declare-fun e!3867362 () Bool)

(assert (=> b!6369798 (=> res!2620500 e!3867362)))

(declare-datatypes ((C!32828 0))(
  ( (C!32829 (val!26116 Int)) )
))
(declare-datatypes ((Regex!16279 0))(
  ( (ElementMatch!16279 (c!1159930 C!32828)) (Concat!25124 (regOne!33070 Regex!16279) (regTwo!33070 Regex!16279)) (EmptyExpr!16279) (Star!16279 (reg!16608 Regex!16279)) (EmptyLang!16279) (Union!16279 (regOne!33071 Regex!16279) (regTwo!33071 Regex!16279)) )
))
(declare-datatypes ((List!65136 0))(
  ( (Nil!65012) (Cons!65012 (h!71460 Regex!16279) (t!378736 List!65136)) )
))
(declare-datatypes ((Context!11326 0))(
  ( (Context!11327 (exprs!6163 List!65136)) )
))
(declare-datatypes ((List!65137 0))(
  ( (Nil!65013) (Cons!65013 (h!71461 Context!11326) (t!378737 List!65137)) )
))
(declare-fun zl!343 () List!65137)

(declare-fun isEmpty!37125 (List!65137) Bool)

(assert (=> b!6369798 (= res!2620500 (not (isEmpty!37125 (t!378737 zl!343))))))

(declare-fun b!6369799 () Bool)

(declare-fun e!3867358 () Bool)

(declare-fun tp!1773549 () Bool)

(assert (=> b!6369799 (= e!3867358 tp!1773549)))

(declare-fun b!6369800 () Bool)

(declare-fun e!3867363 () Bool)

(declare-fun tp!1773550 () Bool)

(declare-fun tp!1773542 () Bool)

(assert (=> b!6369800 (= e!3867363 (and tp!1773550 tp!1773542))))

(declare-fun b!6369801 () Bool)

(declare-fun res!2620510 () Bool)

(declare-fun e!3867364 () Bool)

(assert (=> b!6369801 (=> res!2620510 e!3867364)))

(declare-datatypes ((List!65138 0))(
  ( (Nil!65014) (Cons!65014 (h!71462 C!32828) (t!378738 List!65138)) )
))
(declare-fun s!2326 () List!65138)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2367998 () (InoxSet Context!11326))

(declare-fun lt!2367990 () (InoxSet Context!11326))

(declare-fun matchZipper!2291 ((InoxSet Context!11326) List!65138) Bool)

(assert (=> b!6369801 (= res!2620510 (not (= (matchZipper!2291 lt!2367990 s!2326) (matchZipper!2291 lt!2367998 (t!378738 s!2326)))))))

(declare-fun b!6369802 () Bool)

(declare-fun res!2620494 () Bool)

(declare-fun e!3867370 () Bool)

(assert (=> b!6369802 (=> res!2620494 e!3867370)))

(declare-fun r!7292 () Regex!16279)

(declare-fun lt!2367980 () Regex!16279)

(declare-fun lt!2367992 () Context!11326)

(declare-fun unfocusZipper!2021 (List!65137) Regex!16279)

(assert (=> b!6369802 (= res!2620494 (not (= (unfocusZipper!2021 (Cons!65013 lt!2367992 Nil!65013)) (Concat!25124 (reg!16608 (regOne!33070 r!7292)) lt!2367980))))))

(declare-fun b!6369803 () Bool)

(declare-fun e!3867357 () Bool)

(declare-fun lt!2367984 () (InoxSet Context!11326))

(assert (=> b!6369803 (= e!3867357 (matchZipper!2291 lt!2367984 (t!378738 s!2326)))))

(declare-fun b!6369804 () Bool)

(declare-fun tp_is_empty!41811 () Bool)

(assert (=> b!6369804 (= e!3867363 tp_is_empty!41811)))

(declare-fun b!6369805 () Bool)

(declare-fun lt!2367991 () Context!11326)

(declare-fun inv!83944 (Context!11326) Bool)

(assert (=> b!6369805 (= e!3867370 (inv!83944 lt!2367991))))

(declare-fun b!6369806 () Bool)

(declare-fun res!2620498 () Bool)

(declare-fun e!3867367 () Bool)

(assert (=> b!6369806 (=> res!2620498 e!3867367)))

(get-info :version)

(assert (=> b!6369806 (= res!2620498 (or ((_ is Concat!25124) (regOne!33070 r!7292)) (not ((_ is Star!16279) (regOne!33070 r!7292)))))))

(declare-fun setElem!43424 () Context!11326)

(declare-fun setNonEmpty!43424 () Bool)

(declare-fun tp!1773547 () Bool)

(declare-fun setRes!43424 () Bool)

(assert (=> setNonEmpty!43424 (= setRes!43424 (and tp!1773547 (inv!83944 setElem!43424) e!3867358))))

(declare-fun z!1189 () (InoxSet Context!11326))

(declare-fun setRest!43424 () (InoxSet Context!11326))

(assert (=> setNonEmpty!43424 (= z!1189 ((_ map or) (store ((as const (Array Context!11326 Bool)) false) setElem!43424 true) setRest!43424))))

(declare-fun b!6369807 () Bool)

(declare-datatypes ((Unit!158447 0))(
  ( (Unit!158448) )
))
(declare-fun e!3867361 () Unit!158447)

(declare-fun Unit!158449 () Unit!158447)

(assert (=> b!6369807 (= e!3867361 Unit!158449)))

(declare-fun lt!2367982 () (InoxSet Context!11326))

(declare-fun lt!2367994 () Unit!158447)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1110 ((InoxSet Context!11326) (InoxSet Context!11326) List!65138) Unit!158447)

(assert (=> b!6369807 (= lt!2367994 (lemmaZipperConcatMatchesSameAsBothZippers!1110 lt!2367982 lt!2367984 (t!378738 s!2326)))))

(declare-fun res!2620502 () Bool)

(assert (=> b!6369807 (= res!2620502 (matchZipper!2291 lt!2367982 (t!378738 s!2326)))))

(assert (=> b!6369807 (=> res!2620502 e!3867357)))

(assert (=> b!6369807 (= (matchZipper!2291 ((_ map or) lt!2367982 lt!2367984) (t!378738 s!2326)) e!3867357)))

(declare-fun b!6369808 () Bool)

(declare-fun tp!1773548 () Bool)

(assert (=> b!6369808 (= e!3867363 tp!1773548)))

(declare-fun e!3867369 () Bool)

(assert (=> b!6369809 (= e!3867362 e!3867369)))

(declare-fun res!2620509 () Bool)

(assert (=> b!6369809 (=> res!2620509 e!3867369)))

(declare-fun lt!2367996 () Bool)

(declare-fun lt!2367985 () Bool)

(assert (=> b!6369809 (= res!2620509 (or (not (= lt!2367985 lt!2367996)) ((_ is Nil!65014) s!2326)))))

(declare-fun Exists!3349 (Int) Bool)

(assert (=> b!6369809 (= (Exists!3349 lambda!351013) (Exists!3349 lambda!351014))))

(declare-fun lt!2367977 () Unit!158447)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1886 (Regex!16279 Regex!16279 List!65138) Unit!158447)

(assert (=> b!6369809 (= lt!2367977 (lemmaExistCutMatchRandMatchRSpecEquivalent!1886 (regOne!33070 r!7292) (regTwo!33070 r!7292) s!2326))))

(assert (=> b!6369809 (= lt!2367996 (Exists!3349 lambda!351013))))

(declare-datatypes ((tuple2!66516 0))(
  ( (tuple2!66517 (_1!36561 List!65138) (_2!36561 List!65138)) )
))
(declare-datatypes ((Option!16170 0))(
  ( (None!16169) (Some!16169 (v!52338 tuple2!66516)) )
))
(declare-fun isDefined!12873 (Option!16170) Bool)

(declare-fun findConcatSeparation!2584 (Regex!16279 Regex!16279 List!65138 List!65138 List!65138) Option!16170)

(assert (=> b!6369809 (= lt!2367996 (isDefined!12873 (findConcatSeparation!2584 (regOne!33070 r!7292) (regTwo!33070 r!7292) Nil!65014 s!2326 s!2326)))))

(declare-fun lt!2367997 () Unit!158447)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2348 (Regex!16279 Regex!16279 List!65138) Unit!158447)

(assert (=> b!6369809 (= lt!2367997 (lemmaFindConcatSeparationEquivalentToExists!2348 (regOne!33070 r!7292) (regTwo!33070 r!7292) s!2326))))

(declare-fun b!6369810 () Bool)

(declare-fun res!2620506 () Bool)

(assert (=> b!6369810 (=> res!2620506 e!3867362)))

(assert (=> b!6369810 (= res!2620506 (not ((_ is Cons!65012) (exprs!6163 (h!71461 zl!343)))))))

(declare-fun b!6369811 () Bool)

(declare-fun res!2620495 () Bool)

(assert (=> b!6369811 (=> res!2620495 e!3867362)))

(declare-fun generalisedUnion!2123 (List!65136) Regex!16279)

(declare-fun unfocusZipperList!1700 (List!65137) List!65136)

(assert (=> b!6369811 (= res!2620495 (not (= r!7292 (generalisedUnion!2123 (unfocusZipperList!1700 zl!343)))))))

(declare-fun b!6369812 () Bool)

(declare-fun tp!1773543 () Bool)

(declare-fun tp!1773544 () Bool)

(assert (=> b!6369812 (= e!3867363 (and tp!1773543 tp!1773544))))

(declare-fun b!6369813 () Bool)

(assert (=> b!6369813 (= e!3867364 e!3867370)))

(declare-fun res!2620503 () Bool)

(assert (=> b!6369813 (=> res!2620503 e!3867370)))

(assert (=> b!6369813 (= res!2620503 (not (= r!7292 lt!2367980)))))

(declare-fun lt!2367987 () Regex!16279)

(assert (=> b!6369813 (= lt!2367980 (Concat!25124 lt!2367987 (regTwo!33070 r!7292)))))

(declare-fun b!6369814 () Bool)

(declare-fun res!2620505 () Bool)

(assert (=> b!6369814 (=> res!2620505 e!3867364)))

(declare-fun lt!2367989 () Regex!16279)

(assert (=> b!6369814 (= res!2620505 (not (= lt!2367989 r!7292)))))

(assert (=> b!6369815 (= e!3867369 e!3867367)))

(declare-fun res!2620489 () Bool)

(assert (=> b!6369815 (=> res!2620489 e!3867367)))

(assert (=> b!6369815 (= res!2620489 (or (and ((_ is ElementMatch!16279) (regOne!33070 r!7292)) (= (c!1159930 (regOne!33070 r!7292)) (h!71462 s!2326))) ((_ is Union!16279) (regOne!33070 r!7292))))))

(declare-fun lt!2367979 () Unit!158447)

(assert (=> b!6369815 (= lt!2367979 e!3867361)))

(declare-fun c!1159929 () Bool)

(declare-fun nullable!6272 (Regex!16279) Bool)

(assert (=> b!6369815 (= c!1159929 (nullable!6272 (h!71460 (exprs!6163 (h!71461 zl!343)))))))

(declare-fun lambda!351015 () Int)

(declare-fun flatMap!1784 ((InoxSet Context!11326) Int) (InoxSet Context!11326))

(declare-fun derivationStepZipperUp!1453 (Context!11326 C!32828) (InoxSet Context!11326))

(assert (=> b!6369815 (= (flatMap!1784 z!1189 lambda!351015) (derivationStepZipperUp!1453 (h!71461 zl!343) (h!71462 s!2326)))))

(declare-fun lt!2367976 () Unit!158447)

(declare-fun lemmaFlatMapOnSingletonSet!1310 ((InoxSet Context!11326) Context!11326 Int) Unit!158447)

(assert (=> b!6369815 (= lt!2367976 (lemmaFlatMapOnSingletonSet!1310 z!1189 (h!71461 zl!343) lambda!351015))))

(declare-fun lt!2367993 () Context!11326)

(assert (=> b!6369815 (= lt!2367984 (derivationStepZipperUp!1453 lt!2367993 (h!71462 s!2326)))))

(declare-fun derivationStepZipperDown!1527 (Regex!16279 Context!11326 C!32828) (InoxSet Context!11326))

(assert (=> b!6369815 (= lt!2367982 (derivationStepZipperDown!1527 (h!71460 (exprs!6163 (h!71461 zl!343))) lt!2367993 (h!71462 s!2326)))))

(assert (=> b!6369815 (= lt!2367993 (Context!11327 (t!378736 (exprs!6163 (h!71461 zl!343)))))))

(declare-fun lt!2367988 () (InoxSet Context!11326))

(assert (=> b!6369815 (= lt!2367988 (derivationStepZipperUp!1453 (Context!11327 (Cons!65012 (h!71460 (exprs!6163 (h!71461 zl!343))) (t!378736 (exprs!6163 (h!71461 zl!343))))) (h!71462 s!2326)))))

(declare-fun setIsEmpty!43424 () Bool)

(assert (=> setIsEmpty!43424 setRes!43424))

(declare-fun b!6369816 () Bool)

(declare-fun e!3867372 () Bool)

(assert (=> b!6369816 (= e!3867367 e!3867372)))

(declare-fun res!2620499 () Bool)

(assert (=> b!6369816 (=> res!2620499 e!3867372)))

(declare-fun lt!2367995 () (InoxSet Context!11326))

(assert (=> b!6369816 (= res!2620499 (not (= lt!2367982 lt!2367995)))))

(assert (=> b!6369816 (= lt!2367995 (derivationStepZipperDown!1527 (reg!16608 (regOne!33070 r!7292)) lt!2367991 (h!71462 s!2326)))))

(declare-fun lt!2367981 () List!65136)

(assert (=> b!6369816 (= lt!2367991 (Context!11327 lt!2367981))))

(assert (=> b!6369816 (= lt!2367981 (Cons!65012 lt!2367987 (t!378736 (exprs!6163 (h!71461 zl!343)))))))

(assert (=> b!6369816 (= lt!2367987 (Star!16279 (reg!16608 (regOne!33070 r!7292))))))

(declare-fun b!6369817 () Bool)

(assert (=> b!6369817 (= e!3867372 e!3867364)))

(declare-fun res!2620492 () Bool)

(assert (=> b!6369817 (=> res!2620492 e!3867364)))

(assert (=> b!6369817 (= res!2620492 (not (= lt!2367998 lt!2367995)))))

(assert (=> b!6369817 (= (flatMap!1784 lt!2367990 lambda!351015) (derivationStepZipperUp!1453 lt!2367992 (h!71462 s!2326)))))

(declare-fun lt!2367986 () Unit!158447)

(assert (=> b!6369817 (= lt!2367986 (lemmaFlatMapOnSingletonSet!1310 lt!2367990 lt!2367992 lambda!351015))))

(declare-fun lt!2367983 () (InoxSet Context!11326))

(assert (=> b!6369817 (= lt!2367983 (derivationStepZipperUp!1453 lt!2367992 (h!71462 s!2326)))))

(declare-fun derivationStepZipper!2245 ((InoxSet Context!11326) C!32828) (InoxSet Context!11326))

(assert (=> b!6369817 (= lt!2367998 (derivationStepZipper!2245 lt!2367990 (h!71462 s!2326)))))

(assert (=> b!6369817 (= lt!2367990 (store ((as const (Array Context!11326 Bool)) false) lt!2367992 true))))

(assert (=> b!6369817 (= lt!2367992 (Context!11327 (Cons!65012 (reg!16608 (regOne!33070 r!7292)) lt!2367981)))))

(declare-fun b!6369818 () Bool)

(declare-fun e!3867371 () Bool)

(declare-fun tp!1773541 () Bool)

(declare-fun e!3867359 () Bool)

(assert (=> b!6369818 (= e!3867371 (and (inv!83944 (h!71461 zl!343)) e!3867359 tp!1773541))))

(declare-fun b!6369819 () Bool)

(declare-fun res!2620496 () Bool)

(assert (=> b!6369819 (=> res!2620496 e!3867367)))

(declare-fun e!3867365 () Bool)

(assert (=> b!6369819 (= res!2620496 e!3867365)))

(declare-fun res!2620507 () Bool)

(assert (=> b!6369819 (=> (not res!2620507) (not e!3867365))))

(assert (=> b!6369819 (= res!2620507 ((_ is Concat!25124) (regOne!33070 r!7292)))))

(declare-fun b!6369820 () Bool)

(declare-fun e!3867360 () Bool)

(declare-fun tp!1773545 () Bool)

(assert (=> b!6369820 (= e!3867360 (and tp_is_empty!41811 tp!1773545))))

(declare-fun b!6369821 () Bool)

(declare-fun e!3867366 () Bool)

(declare-fun e!3867368 () Bool)

(assert (=> b!6369821 (= e!3867366 e!3867368)))

(declare-fun res!2620508 () Bool)

(assert (=> b!6369821 (=> (not res!2620508) (not e!3867368))))

(assert (=> b!6369821 (= res!2620508 (= r!7292 lt!2367989))))

(assert (=> b!6369821 (= lt!2367989 (unfocusZipper!2021 zl!343))))

(declare-fun res!2620493 () Bool)

(assert (=> start!631034 (=> (not res!2620493) (not e!3867366))))

(declare-fun validRegex!8015 (Regex!16279) Bool)

(assert (=> start!631034 (= res!2620493 (validRegex!8015 r!7292))))

(assert (=> start!631034 e!3867366))

(assert (=> start!631034 e!3867363))

(declare-fun condSetEmpty!43424 () Bool)

(assert (=> start!631034 (= condSetEmpty!43424 (= z!1189 ((as const (Array Context!11326 Bool)) false)))))

(assert (=> start!631034 setRes!43424))

(assert (=> start!631034 e!3867371))

(assert (=> start!631034 e!3867360))

(declare-fun b!6369822 () Bool)

(declare-fun res!2620497 () Bool)

(assert (=> b!6369822 (=> res!2620497 e!3867362)))

(assert (=> b!6369822 (= res!2620497 (or ((_ is EmptyExpr!16279) r!7292) ((_ is EmptyLang!16279) r!7292) ((_ is ElementMatch!16279) r!7292) ((_ is Union!16279) r!7292) (not ((_ is Concat!25124) r!7292))))))

(declare-fun b!6369823 () Bool)

(declare-fun res!2620490 () Bool)

(assert (=> b!6369823 (=> res!2620490 e!3867369)))

(declare-fun isEmpty!37126 (List!65136) Bool)

(assert (=> b!6369823 (= res!2620490 (isEmpty!37126 (t!378736 (exprs!6163 (h!71461 zl!343)))))))

(declare-fun b!6369824 () Bool)

(declare-fun tp!1773546 () Bool)

(assert (=> b!6369824 (= e!3867359 tp!1773546)))

(declare-fun b!6369825 () Bool)

(declare-fun res!2620504 () Bool)

(assert (=> b!6369825 (=> (not res!2620504) (not e!3867366))))

(declare-fun toList!10063 ((InoxSet Context!11326)) List!65137)

(assert (=> b!6369825 (= res!2620504 (= (toList!10063 z!1189) zl!343))))

(declare-fun b!6369826 () Bool)

(declare-fun Unit!158450 () Unit!158447)

(assert (=> b!6369826 (= e!3867361 Unit!158450)))

(declare-fun b!6369827 () Bool)

(assert (=> b!6369827 (= e!3867368 (not e!3867362))))

(declare-fun res!2620491 () Bool)

(assert (=> b!6369827 (=> res!2620491 e!3867362)))

(assert (=> b!6369827 (= res!2620491 (not ((_ is Cons!65013) zl!343)))))

(declare-fun matchRSpec!3380 (Regex!16279 List!65138) Bool)

(assert (=> b!6369827 (= lt!2367985 (matchRSpec!3380 r!7292 s!2326))))

(declare-fun matchR!8462 (Regex!16279 List!65138) Bool)

(assert (=> b!6369827 (= lt!2367985 (matchR!8462 r!7292 s!2326))))

(declare-fun lt!2367978 () Unit!158447)

(declare-fun mainMatchTheorem!3380 (Regex!16279 List!65138) Unit!158447)

(assert (=> b!6369827 (= lt!2367978 (mainMatchTheorem!3380 r!7292 s!2326))))

(declare-fun b!6369828 () Bool)

(assert (=> b!6369828 (= e!3867365 (nullable!6272 (regOne!33070 (regOne!33070 r!7292))))))

(declare-fun b!6369829 () Bool)

(declare-fun res!2620501 () Bool)

(assert (=> b!6369829 (=> res!2620501 e!3867362)))

(declare-fun generalisedConcat!1876 (List!65136) Regex!16279)

(assert (=> b!6369829 (= res!2620501 (not (= r!7292 (generalisedConcat!1876 (exprs!6163 (h!71461 zl!343))))))))

(assert (= (and start!631034 res!2620493) b!6369825))

(assert (= (and b!6369825 res!2620504) b!6369821))

(assert (= (and b!6369821 res!2620508) b!6369827))

(assert (= (and b!6369827 (not res!2620491)) b!6369798))

(assert (= (and b!6369798 (not res!2620500)) b!6369829))

(assert (= (and b!6369829 (not res!2620501)) b!6369810))

(assert (= (and b!6369810 (not res!2620506)) b!6369811))

(assert (= (and b!6369811 (not res!2620495)) b!6369822))

(assert (= (and b!6369822 (not res!2620497)) b!6369809))

(assert (= (and b!6369809 (not res!2620509)) b!6369823))

(assert (= (and b!6369823 (not res!2620490)) b!6369815))

(assert (= (and b!6369815 c!1159929) b!6369807))

(assert (= (and b!6369815 (not c!1159929)) b!6369826))

(assert (= (and b!6369807 (not res!2620502)) b!6369803))

(assert (= (and b!6369815 (not res!2620489)) b!6369819))

(assert (= (and b!6369819 res!2620507) b!6369828))

(assert (= (and b!6369819 (not res!2620496)) b!6369806))

(assert (= (and b!6369806 (not res!2620498)) b!6369816))

(assert (= (and b!6369816 (not res!2620499)) b!6369817))

(assert (= (and b!6369817 (not res!2620492)) b!6369801))

(assert (= (and b!6369801 (not res!2620510)) b!6369814))

(assert (= (and b!6369814 (not res!2620505)) b!6369813))

(assert (= (and b!6369813 (not res!2620503)) b!6369802))

(assert (= (and b!6369802 (not res!2620494)) b!6369805))

(assert (= (and start!631034 ((_ is ElementMatch!16279) r!7292)) b!6369804))

(assert (= (and start!631034 ((_ is Concat!25124) r!7292)) b!6369800))

(assert (= (and start!631034 ((_ is Star!16279) r!7292)) b!6369808))

(assert (= (and start!631034 ((_ is Union!16279) r!7292)) b!6369812))

(assert (= (and start!631034 condSetEmpty!43424) setIsEmpty!43424))

(assert (= (and start!631034 (not condSetEmpty!43424)) setNonEmpty!43424))

(assert (= setNonEmpty!43424 b!6369799))

(assert (= b!6369818 b!6369824))

(assert (= (and start!631034 ((_ is Cons!65013) zl!343)) b!6369818))

(assert (= (and start!631034 ((_ is Cons!65014) s!2326)) b!6369820))

(declare-fun m!7172938 () Bool)

(assert (=> b!6369821 m!7172938))

(declare-fun m!7172940 () Bool)

(assert (=> b!6369807 m!7172940))

(declare-fun m!7172942 () Bool)

(assert (=> b!6369807 m!7172942))

(declare-fun m!7172944 () Bool)

(assert (=> b!6369807 m!7172944))

(declare-fun m!7172946 () Bool)

(assert (=> start!631034 m!7172946))

(declare-fun m!7172948 () Bool)

(assert (=> b!6369816 m!7172948))

(declare-fun m!7172950 () Bool)

(assert (=> b!6369815 m!7172950))

(declare-fun m!7172952 () Bool)

(assert (=> b!6369815 m!7172952))

(declare-fun m!7172954 () Bool)

(assert (=> b!6369815 m!7172954))

(declare-fun m!7172956 () Bool)

(assert (=> b!6369815 m!7172956))

(declare-fun m!7172958 () Bool)

(assert (=> b!6369815 m!7172958))

(declare-fun m!7172960 () Bool)

(assert (=> b!6369815 m!7172960))

(declare-fun m!7172962 () Bool)

(assert (=> b!6369815 m!7172962))

(declare-fun m!7172964 () Bool)

(assert (=> b!6369828 m!7172964))

(declare-fun m!7172966 () Bool)

(assert (=> b!6369803 m!7172966))

(declare-fun m!7172968 () Bool)

(assert (=> b!6369798 m!7172968))

(declare-fun m!7172970 () Bool)

(assert (=> b!6369818 m!7172970))

(declare-fun m!7172972 () Bool)

(assert (=> b!6369805 m!7172972))

(declare-fun m!7172974 () Bool)

(assert (=> setNonEmpty!43424 m!7172974))

(declare-fun m!7172976 () Bool)

(assert (=> b!6369823 m!7172976))

(declare-fun m!7172978 () Bool)

(assert (=> b!6369811 m!7172978))

(assert (=> b!6369811 m!7172978))

(declare-fun m!7172980 () Bool)

(assert (=> b!6369811 m!7172980))

(declare-fun m!7172982 () Bool)

(assert (=> b!6369817 m!7172982))

(declare-fun m!7172984 () Bool)

(assert (=> b!6369817 m!7172984))

(declare-fun m!7172986 () Bool)

(assert (=> b!6369817 m!7172986))

(declare-fun m!7172988 () Bool)

(assert (=> b!6369817 m!7172988))

(declare-fun m!7172990 () Bool)

(assert (=> b!6369817 m!7172990))

(declare-fun m!7172992 () Bool)

(assert (=> b!6369827 m!7172992))

(declare-fun m!7172994 () Bool)

(assert (=> b!6369827 m!7172994))

(declare-fun m!7172996 () Bool)

(assert (=> b!6369827 m!7172996))

(declare-fun m!7172998 () Bool)

(assert (=> b!6369809 m!7172998))

(declare-fun m!7173000 () Bool)

(assert (=> b!6369809 m!7173000))

(declare-fun m!7173002 () Bool)

(assert (=> b!6369809 m!7173002))

(declare-fun m!7173004 () Bool)

(assert (=> b!6369809 m!7173004))

(declare-fun m!7173006 () Bool)

(assert (=> b!6369809 m!7173006))

(assert (=> b!6369809 m!7172998))

(assert (=> b!6369809 m!7173000))

(declare-fun m!7173008 () Bool)

(assert (=> b!6369809 m!7173008))

(declare-fun m!7173010 () Bool)

(assert (=> b!6369829 m!7173010))

(declare-fun m!7173012 () Bool)

(assert (=> b!6369801 m!7173012))

(declare-fun m!7173014 () Bool)

(assert (=> b!6369801 m!7173014))

(declare-fun m!7173016 () Bool)

(assert (=> b!6369825 m!7173016))

(declare-fun m!7173018 () Bool)

(assert (=> b!6369802 m!7173018))

(check-sat (not b!6369824) (not b!6369802) (not b!6369803) (not b!6369815) (not b!6369828) (not setNonEmpty!43424) (not start!631034) (not b!6369817) (not b!6369807) (not b!6369827) (not b!6369811) (not b!6369829) (not b!6369816) (not b!6369808) (not b!6369798) (not b!6369809) (not b!6369820) (not b!6369818) (not b!6369805) (not b!6369825) (not b!6369801) (not b!6369823) (not b!6369821) (not b!6369812) tp_is_empty!41811 (not b!6369799) (not b!6369800))
(check-sat)
(get-model)

(declare-fun d!1997993 () Bool)

(declare-fun lambda!351032 () Int)

(declare-fun forall!15457 (List!65136 Int) Bool)

(assert (=> d!1997993 (= (inv!83944 (h!71461 zl!343)) (forall!15457 (exprs!6163 (h!71461 zl!343)) lambda!351032))))

(declare-fun bs!1595540 () Bool)

(assert (= bs!1595540 d!1997993))

(declare-fun m!7173112 () Bool)

(assert (=> bs!1595540 m!7173112))

(assert (=> b!6369818 d!1997993))

(declare-fun bs!1595543 () Bool)

(declare-fun d!1997995 () Bool)

(assert (= bs!1595543 (and d!1997995 d!1997993)))

(declare-fun lambda!351039 () Int)

(assert (=> bs!1595543 (= lambda!351039 lambda!351032)))

(declare-fun b!6370006 () Bool)

(declare-fun e!3867474 () Bool)

(declare-fun lt!2368029 () Regex!16279)

(declare-fun isConcat!1204 (Regex!16279) Bool)

(assert (=> b!6370006 (= e!3867474 (isConcat!1204 lt!2368029))))

(declare-fun e!3867476 () Bool)

(assert (=> d!1997995 e!3867476))

(declare-fun res!2620567 () Bool)

(assert (=> d!1997995 (=> (not res!2620567) (not e!3867476))))

(assert (=> d!1997995 (= res!2620567 (validRegex!8015 lt!2368029))))

(declare-fun e!3867475 () Regex!16279)

(assert (=> d!1997995 (= lt!2368029 e!3867475)))

(declare-fun c!1159991 () Bool)

(declare-fun e!3867477 () Bool)

(assert (=> d!1997995 (= c!1159991 e!3867477)))

(declare-fun res!2620568 () Bool)

(assert (=> d!1997995 (=> (not res!2620568) (not e!3867477))))

(assert (=> d!1997995 (= res!2620568 ((_ is Cons!65012) (exprs!6163 (h!71461 zl!343))))))

(assert (=> d!1997995 (forall!15457 (exprs!6163 (h!71461 zl!343)) lambda!351039)))

(assert (=> d!1997995 (= (generalisedConcat!1876 (exprs!6163 (h!71461 zl!343))) lt!2368029)))

(declare-fun b!6370007 () Bool)

(declare-fun e!3867473 () Bool)

(assert (=> b!6370007 (= e!3867476 e!3867473)))

(declare-fun c!1159992 () Bool)

(assert (=> b!6370007 (= c!1159992 (isEmpty!37126 (exprs!6163 (h!71461 zl!343))))))

(declare-fun b!6370008 () Bool)

(assert (=> b!6370008 (= e!3867475 (h!71460 (exprs!6163 (h!71461 zl!343))))))

(declare-fun b!6370009 () Bool)

(declare-fun e!3867478 () Regex!16279)

(assert (=> b!6370009 (= e!3867475 e!3867478)))

(declare-fun c!1159990 () Bool)

(assert (=> b!6370009 (= c!1159990 ((_ is Cons!65012) (exprs!6163 (h!71461 zl!343))))))

(declare-fun b!6370010 () Bool)

(assert (=> b!6370010 (= e!3867477 (isEmpty!37126 (t!378736 (exprs!6163 (h!71461 zl!343)))))))

(declare-fun b!6370011 () Bool)

(assert (=> b!6370011 (= e!3867473 e!3867474)))

(declare-fun c!1159989 () Bool)

(declare-fun tail!12135 (List!65136) List!65136)

(assert (=> b!6370011 (= c!1159989 (isEmpty!37126 (tail!12135 (exprs!6163 (h!71461 zl!343)))))))

(declare-fun b!6370012 () Bool)

(assert (=> b!6370012 (= e!3867478 EmptyExpr!16279)))

(declare-fun b!6370013 () Bool)

(declare-fun isEmptyExpr!1681 (Regex!16279) Bool)

(assert (=> b!6370013 (= e!3867473 (isEmptyExpr!1681 lt!2368029))))

(declare-fun b!6370014 () Bool)

(assert (=> b!6370014 (= e!3867478 (Concat!25124 (h!71460 (exprs!6163 (h!71461 zl!343))) (generalisedConcat!1876 (t!378736 (exprs!6163 (h!71461 zl!343))))))))

(declare-fun b!6370015 () Bool)

(declare-fun head!13050 (List!65136) Regex!16279)

(assert (=> b!6370015 (= e!3867474 (= lt!2368029 (head!13050 (exprs!6163 (h!71461 zl!343)))))))

(assert (= (and d!1997995 res!2620568) b!6370010))

(assert (= (and d!1997995 c!1159991) b!6370008))

(assert (= (and d!1997995 (not c!1159991)) b!6370009))

(assert (= (and b!6370009 c!1159990) b!6370014))

(assert (= (and b!6370009 (not c!1159990)) b!6370012))

(assert (= (and d!1997995 res!2620567) b!6370007))

(assert (= (and b!6370007 c!1159992) b!6370013))

(assert (= (and b!6370007 (not c!1159992)) b!6370011))

(assert (= (and b!6370011 c!1159989) b!6370015))

(assert (= (and b!6370011 (not c!1159989)) b!6370006))

(declare-fun m!7173140 () Bool)

(assert (=> b!6370013 m!7173140))

(declare-fun m!7173142 () Bool)

(assert (=> b!6370007 m!7173142))

(declare-fun m!7173144 () Bool)

(assert (=> d!1997995 m!7173144))

(declare-fun m!7173146 () Bool)

(assert (=> d!1997995 m!7173146))

(declare-fun m!7173148 () Bool)

(assert (=> b!6370015 m!7173148))

(declare-fun m!7173150 () Bool)

(assert (=> b!6370006 m!7173150))

(declare-fun m!7173152 () Bool)

(assert (=> b!6370014 m!7173152))

(declare-fun m!7173154 () Bool)

(assert (=> b!6370011 m!7173154))

(assert (=> b!6370011 m!7173154))

(declare-fun m!7173156 () Bool)

(assert (=> b!6370011 m!7173156))

(assert (=> b!6370010 m!7172976))

(assert (=> b!6369829 d!1997995))

(declare-fun b!6370076 () Bool)

(declare-fun e!3867518 () Option!16170)

(declare-fun e!3867517 () Option!16170)

(assert (=> b!6370076 (= e!3867518 e!3867517)))

(declare-fun c!1160012 () Bool)

(assert (=> b!6370076 (= c!1160012 ((_ is Nil!65014) s!2326))))

(declare-fun b!6370077 () Bool)

(declare-fun e!3867521 () Bool)

(declare-fun lt!2368043 () Option!16170)

(assert (=> b!6370077 (= e!3867521 (not (isDefined!12873 lt!2368043)))))

(declare-fun b!6370079 () Bool)

(declare-fun res!2620594 () Bool)

(declare-fun e!3867520 () Bool)

(assert (=> b!6370079 (=> (not res!2620594) (not e!3867520))))

(declare-fun get!22503 (Option!16170) tuple2!66516)

(assert (=> b!6370079 (= res!2620594 (matchR!8462 (regOne!33070 r!7292) (_1!36561 (get!22503 lt!2368043))))))

(declare-fun b!6370080 () Bool)

(assert (=> b!6370080 (= e!3867517 None!16169)))

(declare-fun b!6370081 () Bool)

(declare-fun res!2620597 () Bool)

(assert (=> b!6370081 (=> (not res!2620597) (not e!3867520))))

(assert (=> b!6370081 (= res!2620597 (matchR!8462 (regTwo!33070 r!7292) (_2!36561 (get!22503 lt!2368043))))))

(declare-fun b!6370082 () Bool)

(declare-fun ++!14348 (List!65138 List!65138) List!65138)

(assert (=> b!6370082 (= e!3867520 (= (++!14348 (_1!36561 (get!22503 lt!2368043)) (_2!36561 (get!22503 lt!2368043))) s!2326))))

(declare-fun b!6370078 () Bool)

(assert (=> b!6370078 (= e!3867518 (Some!16169 (tuple2!66517 Nil!65014 s!2326)))))

(declare-fun d!1998003 () Bool)

(assert (=> d!1998003 e!3867521))

(declare-fun res!2620596 () Bool)

(assert (=> d!1998003 (=> res!2620596 e!3867521)))

(assert (=> d!1998003 (= res!2620596 e!3867520)))

(declare-fun res!2620595 () Bool)

(assert (=> d!1998003 (=> (not res!2620595) (not e!3867520))))

(assert (=> d!1998003 (= res!2620595 (isDefined!12873 lt!2368043))))

(assert (=> d!1998003 (= lt!2368043 e!3867518)))

(declare-fun c!1160011 () Bool)

(declare-fun e!3867519 () Bool)

(assert (=> d!1998003 (= c!1160011 e!3867519)))

(declare-fun res!2620593 () Bool)

(assert (=> d!1998003 (=> (not res!2620593) (not e!3867519))))

(assert (=> d!1998003 (= res!2620593 (matchR!8462 (regOne!33070 r!7292) Nil!65014))))

(assert (=> d!1998003 (validRegex!8015 (regOne!33070 r!7292))))

(assert (=> d!1998003 (= (findConcatSeparation!2584 (regOne!33070 r!7292) (regTwo!33070 r!7292) Nil!65014 s!2326 s!2326) lt!2368043)))

(declare-fun b!6370083 () Bool)

(assert (=> b!6370083 (= e!3867519 (matchR!8462 (regTwo!33070 r!7292) s!2326))))

(declare-fun b!6370084 () Bool)

(declare-fun lt!2368042 () Unit!158447)

(declare-fun lt!2368044 () Unit!158447)

(assert (=> b!6370084 (= lt!2368042 lt!2368044)))

(assert (=> b!6370084 (= (++!14348 (++!14348 Nil!65014 (Cons!65014 (h!71462 s!2326) Nil!65014)) (t!378738 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2443 (List!65138 C!32828 List!65138 List!65138) Unit!158447)

(assert (=> b!6370084 (= lt!2368044 (lemmaMoveElementToOtherListKeepsConcatEq!2443 Nil!65014 (h!71462 s!2326) (t!378738 s!2326) s!2326))))

(assert (=> b!6370084 (= e!3867517 (findConcatSeparation!2584 (regOne!33070 r!7292) (regTwo!33070 r!7292) (++!14348 Nil!65014 (Cons!65014 (h!71462 s!2326) Nil!65014)) (t!378738 s!2326) s!2326))))

(assert (= (and d!1998003 res!2620593) b!6370083))

(assert (= (and d!1998003 c!1160011) b!6370078))

(assert (= (and d!1998003 (not c!1160011)) b!6370076))

(assert (= (and b!6370076 c!1160012) b!6370080))

(assert (= (and b!6370076 (not c!1160012)) b!6370084))

(assert (= (and d!1998003 res!2620595) b!6370079))

(assert (= (and b!6370079 res!2620594) b!6370081))

(assert (= (and b!6370081 res!2620597) b!6370082))

(assert (= (and d!1998003 (not res!2620596)) b!6370077))

(declare-fun m!7173190 () Bool)

(assert (=> b!6370081 m!7173190))

(declare-fun m!7173192 () Bool)

(assert (=> b!6370081 m!7173192))

(declare-fun m!7173194 () Bool)

(assert (=> b!6370083 m!7173194))

(assert (=> b!6370079 m!7173190))

(declare-fun m!7173196 () Bool)

(assert (=> b!6370079 m!7173196))

(assert (=> b!6370082 m!7173190))

(declare-fun m!7173198 () Bool)

(assert (=> b!6370082 m!7173198))

(declare-fun m!7173200 () Bool)

(assert (=> d!1998003 m!7173200))

(declare-fun m!7173202 () Bool)

(assert (=> d!1998003 m!7173202))

(declare-fun m!7173204 () Bool)

(assert (=> d!1998003 m!7173204))

(assert (=> b!6370077 m!7173200))

(declare-fun m!7173206 () Bool)

(assert (=> b!6370084 m!7173206))

(assert (=> b!6370084 m!7173206))

(declare-fun m!7173208 () Bool)

(assert (=> b!6370084 m!7173208))

(declare-fun m!7173210 () Bool)

(assert (=> b!6370084 m!7173210))

(assert (=> b!6370084 m!7173206))

(declare-fun m!7173212 () Bool)

(assert (=> b!6370084 m!7173212))

(assert (=> b!6369809 d!1998003))

(declare-fun d!1998011 () Bool)

(declare-fun choose!47330 (Int) Bool)

(assert (=> d!1998011 (= (Exists!3349 lambda!351013) (choose!47330 lambda!351013))))

(declare-fun bs!1595546 () Bool)

(assert (= bs!1595546 d!1998011))

(declare-fun m!7173214 () Bool)

(assert (=> bs!1595546 m!7173214))

(assert (=> b!6369809 d!1998011))

(declare-fun bs!1595564 () Bool)

(declare-fun d!1998013 () Bool)

(assert (= bs!1595564 (and d!1998013 b!6369809)))

(declare-fun lambda!351050 () Int)

(assert (=> bs!1595564 (= lambda!351050 lambda!351013)))

(assert (=> bs!1595564 (not (= lambda!351050 lambda!351014))))

(assert (=> d!1998013 true))

(assert (=> d!1998013 true))

(assert (=> d!1998013 true))

(assert (=> d!1998013 (= (isDefined!12873 (findConcatSeparation!2584 (regOne!33070 r!7292) (regTwo!33070 r!7292) Nil!65014 s!2326 s!2326)) (Exists!3349 lambda!351050))))

(declare-fun lt!2368051 () Unit!158447)

(declare-fun choose!47331 (Regex!16279 Regex!16279 List!65138) Unit!158447)

(assert (=> d!1998013 (= lt!2368051 (choose!47331 (regOne!33070 r!7292) (regTwo!33070 r!7292) s!2326))))

(assert (=> d!1998013 (validRegex!8015 (regOne!33070 r!7292))))

(assert (=> d!1998013 (= (lemmaFindConcatSeparationEquivalentToExists!2348 (regOne!33070 r!7292) (regTwo!33070 r!7292) s!2326) lt!2368051)))

(declare-fun bs!1595565 () Bool)

(assert (= bs!1595565 d!1998013))

(declare-fun m!7173278 () Bool)

(assert (=> bs!1595565 m!7173278))

(assert (=> bs!1595565 m!7173000))

(declare-fun m!7173280 () Bool)

(assert (=> bs!1595565 m!7173280))

(assert (=> bs!1595565 m!7173204))

(assert (=> bs!1595565 m!7173000))

(assert (=> bs!1595565 m!7173002))

(assert (=> b!6369809 d!1998013))

(declare-fun bs!1595566 () Bool)

(declare-fun d!1998039 () Bool)

(assert (= bs!1595566 (and d!1998039 b!6369809)))

(declare-fun lambda!351059 () Int)

(assert (=> bs!1595566 (= lambda!351059 lambda!351013)))

(assert (=> bs!1595566 (not (= lambda!351059 lambda!351014))))

(declare-fun bs!1595567 () Bool)

(assert (= bs!1595567 (and d!1998039 d!1998013)))

(assert (=> bs!1595567 (= lambda!351059 lambda!351050)))

(assert (=> d!1998039 true))

(assert (=> d!1998039 true))

(assert (=> d!1998039 true))

(declare-fun lambda!351060 () Int)

(assert (=> bs!1595566 (not (= lambda!351060 lambda!351013))))

(assert (=> bs!1595566 (= lambda!351060 lambda!351014)))

(assert (=> bs!1595567 (not (= lambda!351060 lambda!351050))))

(declare-fun bs!1595568 () Bool)

(assert (= bs!1595568 d!1998039))

(assert (=> bs!1595568 (not (= lambda!351060 lambda!351059))))

(assert (=> d!1998039 true))

(assert (=> d!1998039 true))

(assert (=> d!1998039 true))

(assert (=> d!1998039 (= (Exists!3349 lambda!351059) (Exists!3349 lambda!351060))))

(declare-fun lt!2368054 () Unit!158447)

(declare-fun choose!47332 (Regex!16279 Regex!16279 List!65138) Unit!158447)

(assert (=> d!1998039 (= lt!2368054 (choose!47332 (regOne!33070 r!7292) (regTwo!33070 r!7292) s!2326))))

(assert (=> d!1998039 (validRegex!8015 (regOne!33070 r!7292))))

(assert (=> d!1998039 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1886 (regOne!33070 r!7292) (regTwo!33070 r!7292) s!2326) lt!2368054)))

(declare-fun m!7173282 () Bool)

(assert (=> bs!1595568 m!7173282))

(declare-fun m!7173284 () Bool)

(assert (=> bs!1595568 m!7173284))

(declare-fun m!7173286 () Bool)

(assert (=> bs!1595568 m!7173286))

(assert (=> bs!1595568 m!7173204))

(assert (=> b!6369809 d!1998039))

(declare-fun d!1998041 () Bool)

(assert (=> d!1998041 (= (Exists!3349 lambda!351014) (choose!47330 lambda!351014))))

(declare-fun bs!1595569 () Bool)

(assert (= bs!1595569 d!1998041))

(declare-fun m!7173288 () Bool)

(assert (=> bs!1595569 m!7173288))

(assert (=> b!6369809 d!1998041))

(declare-fun d!1998043 () Bool)

(declare-fun isEmpty!37129 (Option!16170) Bool)

(assert (=> d!1998043 (= (isDefined!12873 (findConcatSeparation!2584 (regOne!33070 r!7292) (regTwo!33070 r!7292) Nil!65014 s!2326 s!2326)) (not (isEmpty!37129 (findConcatSeparation!2584 (regOne!33070 r!7292) (regTwo!33070 r!7292) Nil!65014 s!2326 s!2326))))))

(declare-fun bs!1595570 () Bool)

(assert (= bs!1595570 d!1998043))

(assert (=> bs!1595570 m!7173000))

(declare-fun m!7173290 () Bool)

(assert (=> bs!1595570 m!7173290))

(assert (=> b!6369809 d!1998043))

(declare-fun bs!1595578 () Bool)

(declare-fun b!6370240 () Bool)

(assert (= bs!1595578 (and b!6370240 d!1998013)))

(declare-fun lambda!351067 () Int)

(assert (=> bs!1595578 (not (= lambda!351067 lambda!351050))))

(declare-fun bs!1595579 () Bool)

(assert (= bs!1595579 (and b!6370240 b!6369809)))

(assert (=> bs!1595579 (not (= lambda!351067 lambda!351013))))

(declare-fun bs!1595580 () Bool)

(assert (= bs!1595580 (and b!6370240 d!1998039)))

(assert (=> bs!1595580 (not (= lambda!351067 lambda!351059))))

(assert (=> bs!1595580 (not (= lambda!351067 lambda!351060))))

(assert (=> bs!1595579 (not (= lambda!351067 lambda!351014))))

(assert (=> b!6370240 true))

(assert (=> b!6370240 true))

(declare-fun bs!1595581 () Bool)

(declare-fun b!6370239 () Bool)

(assert (= bs!1595581 (and b!6370239 d!1998013)))

(declare-fun lambda!351068 () Int)

(assert (=> bs!1595581 (not (= lambda!351068 lambda!351050))))

(declare-fun bs!1595582 () Bool)

(assert (= bs!1595582 (and b!6370239 b!6369809)))

(assert (=> bs!1595582 (not (= lambda!351068 lambda!351013))))

(declare-fun bs!1595583 () Bool)

(assert (= bs!1595583 (and b!6370239 b!6370240)))

(assert (=> bs!1595583 (not (= lambda!351068 lambda!351067))))

(declare-fun bs!1595584 () Bool)

(assert (= bs!1595584 (and b!6370239 d!1998039)))

(assert (=> bs!1595584 (not (= lambda!351068 lambda!351059))))

(assert (=> bs!1595584 (= lambda!351068 lambda!351060)))

(assert (=> bs!1595582 (= lambda!351068 lambda!351014)))

(assert (=> b!6370239 true))

(assert (=> b!6370239 true))

(declare-fun bm!543941 () Bool)

(declare-fun c!1160056 () Bool)

(declare-fun call!543947 () Bool)

(assert (=> bm!543941 (= call!543947 (Exists!3349 (ite c!1160056 lambda!351067 lambda!351068)))))

(declare-fun b!6370236 () Bool)

(declare-fun e!3867609 () Bool)

(declare-fun e!3867606 () Bool)

(assert (=> b!6370236 (= e!3867609 e!3867606)))

(declare-fun res!2620667 () Bool)

(assert (=> b!6370236 (= res!2620667 (matchRSpec!3380 (regOne!33071 r!7292) s!2326))))

(assert (=> b!6370236 (=> res!2620667 e!3867606)))

(declare-fun b!6370237 () Bool)

(assert (=> b!6370237 (= e!3867606 (matchRSpec!3380 (regTwo!33071 r!7292) s!2326))))

(declare-fun b!6370238 () Bool)

(declare-fun e!3867611 () Bool)

(declare-fun e!3867608 () Bool)

(assert (=> b!6370238 (= e!3867611 e!3867608)))

(declare-fun res!2620666 () Bool)

(assert (=> b!6370238 (= res!2620666 (not ((_ is EmptyLang!16279) r!7292)))))

(assert (=> b!6370238 (=> (not res!2620666) (not e!3867608))))

(declare-fun e!3867607 () Bool)

(assert (=> b!6370239 (= e!3867607 call!543947)))

(declare-fun e!3867610 () Bool)

(assert (=> b!6370240 (= e!3867610 call!543947)))

(declare-fun b!6370241 () Bool)

(declare-fun e!3867605 () Bool)

(assert (=> b!6370241 (= e!3867605 (= s!2326 (Cons!65014 (c!1159930 r!7292) Nil!65014)))))

(declare-fun bm!543942 () Bool)

(declare-fun call!543946 () Bool)

(declare-fun isEmpty!37130 (List!65138) Bool)

(assert (=> bm!543942 (= call!543946 (isEmpty!37130 s!2326))))

(declare-fun d!1998045 () Bool)

(declare-fun c!1160057 () Bool)

(assert (=> d!1998045 (= c!1160057 ((_ is EmptyExpr!16279) r!7292))))

(assert (=> d!1998045 (= (matchRSpec!3380 r!7292 s!2326) e!3867611)))

(declare-fun b!6370242 () Bool)

(declare-fun res!2620665 () Bool)

(assert (=> b!6370242 (=> res!2620665 e!3867610)))

(assert (=> b!6370242 (= res!2620665 call!543946)))

(assert (=> b!6370242 (= e!3867607 e!3867610)))

(declare-fun b!6370243 () Bool)

(declare-fun c!1160058 () Bool)

(assert (=> b!6370243 (= c!1160058 ((_ is Union!16279) r!7292))))

(assert (=> b!6370243 (= e!3867605 e!3867609)))

(declare-fun b!6370244 () Bool)

(assert (=> b!6370244 (= e!3867609 e!3867607)))

(assert (=> b!6370244 (= c!1160056 ((_ is Star!16279) r!7292))))

(declare-fun b!6370245 () Bool)

(assert (=> b!6370245 (= e!3867611 call!543946)))

(declare-fun b!6370246 () Bool)

(declare-fun c!1160055 () Bool)

(assert (=> b!6370246 (= c!1160055 ((_ is ElementMatch!16279) r!7292))))

(assert (=> b!6370246 (= e!3867608 e!3867605)))

(assert (= (and d!1998045 c!1160057) b!6370245))

(assert (= (and d!1998045 (not c!1160057)) b!6370238))

(assert (= (and b!6370238 res!2620666) b!6370246))

(assert (= (and b!6370246 c!1160055) b!6370241))

(assert (= (and b!6370246 (not c!1160055)) b!6370243))

(assert (= (and b!6370243 c!1160058) b!6370236))

(assert (= (and b!6370243 (not c!1160058)) b!6370244))

(assert (= (and b!6370236 (not res!2620667)) b!6370237))

(assert (= (and b!6370244 c!1160056) b!6370242))

(assert (= (and b!6370244 (not c!1160056)) b!6370239))

(assert (= (and b!6370242 (not res!2620665)) b!6370240))

(assert (= (or b!6370240 b!6370239) bm!543941))

(assert (= (or b!6370245 b!6370242) bm!543942))

(declare-fun m!7173306 () Bool)

(assert (=> bm!543941 m!7173306))

(declare-fun m!7173308 () Bool)

(assert (=> b!6370236 m!7173308))

(declare-fun m!7173310 () Bool)

(assert (=> b!6370237 m!7173310))

(declare-fun m!7173312 () Bool)

(assert (=> bm!543942 m!7173312))

(assert (=> b!6369827 d!1998045))

(declare-fun b!6370343 () Bool)

(declare-fun e!3867662 () Bool)

(declare-fun head!13051 (List!65138) C!32828)

(assert (=> b!6370343 (= e!3867662 (not (= (head!13051 s!2326) (c!1159930 r!7292))))))

(declare-fun b!6370344 () Bool)

(declare-fun e!3867661 () Bool)

(declare-fun lt!2368063 () Bool)

(declare-fun call!543951 () Bool)

(assert (=> b!6370344 (= e!3867661 (= lt!2368063 call!543951))))

(declare-fun b!6370345 () Bool)

(declare-fun e!3867659 () Bool)

(declare-fun derivativeStep!4983 (Regex!16279 C!32828) Regex!16279)

(declare-fun tail!12136 (List!65138) List!65138)

(assert (=> b!6370345 (= e!3867659 (matchR!8462 (derivativeStep!4983 r!7292 (head!13051 s!2326)) (tail!12136 s!2326)))))

(declare-fun b!6370346 () Bool)

(declare-fun e!3867660 () Bool)

(assert (=> b!6370346 (= e!3867660 (= (head!13051 s!2326) (c!1159930 r!7292)))))

(declare-fun b!6370347 () Bool)

(declare-fun e!3867657 () Bool)

(assert (=> b!6370347 (= e!3867661 e!3867657)))

(declare-fun c!1160069 () Bool)

(assert (=> b!6370347 (= c!1160069 ((_ is EmptyLang!16279) r!7292))))

(declare-fun b!6370348 () Bool)

(assert (=> b!6370348 (= e!3867657 (not lt!2368063))))

(declare-fun b!6370349 () Bool)

(declare-fun res!2620694 () Bool)

(assert (=> b!6370349 (=> (not res!2620694) (not e!3867660))))

(assert (=> b!6370349 (= res!2620694 (not call!543951))))

(declare-fun b!6370350 () Bool)

(declare-fun res!2620695 () Bool)

(assert (=> b!6370350 (=> res!2620695 e!3867662)))

(assert (=> b!6370350 (= res!2620695 (not (isEmpty!37130 (tail!12136 s!2326))))))

(declare-fun b!6370351 () Bool)

(declare-fun res!2620697 () Bool)

(declare-fun e!3867656 () Bool)

(assert (=> b!6370351 (=> res!2620697 e!3867656)))

(assert (=> b!6370351 (= res!2620697 (not ((_ is ElementMatch!16279) r!7292)))))

(assert (=> b!6370351 (= e!3867657 e!3867656)))

(declare-fun b!6370352 () Bool)

(declare-fun e!3867658 () Bool)

(assert (=> b!6370352 (= e!3867656 e!3867658)))

(declare-fun res!2620698 () Bool)

(assert (=> b!6370352 (=> (not res!2620698) (not e!3867658))))

(assert (=> b!6370352 (= res!2620698 (not lt!2368063))))

(declare-fun b!6370353 () Bool)

(declare-fun res!2620692 () Bool)

(assert (=> b!6370353 (=> res!2620692 e!3867656)))

(assert (=> b!6370353 (= res!2620692 e!3867660)))

(declare-fun res!2620699 () Bool)

(assert (=> b!6370353 (=> (not res!2620699) (not e!3867660))))

(assert (=> b!6370353 (= res!2620699 lt!2368063)))

(declare-fun b!6370354 () Bool)

(assert (=> b!6370354 (= e!3867659 (nullable!6272 r!7292))))

(declare-fun b!6370355 () Bool)

(declare-fun res!2620696 () Bool)

(assert (=> b!6370355 (=> (not res!2620696) (not e!3867660))))

(assert (=> b!6370355 (= res!2620696 (isEmpty!37130 (tail!12136 s!2326)))))

(declare-fun b!6370356 () Bool)

(assert (=> b!6370356 (= e!3867658 e!3867662)))

(declare-fun res!2620693 () Bool)

(assert (=> b!6370356 (=> res!2620693 e!3867662)))

(assert (=> b!6370356 (= res!2620693 call!543951)))

(declare-fun bm!543946 () Bool)

(assert (=> bm!543946 (= call!543951 (isEmpty!37130 s!2326))))

(declare-fun d!1998051 () Bool)

(assert (=> d!1998051 e!3867661))

(declare-fun c!1160070 () Bool)

(assert (=> d!1998051 (= c!1160070 ((_ is EmptyExpr!16279) r!7292))))

(assert (=> d!1998051 (= lt!2368063 e!3867659)))

(declare-fun c!1160068 () Bool)

(assert (=> d!1998051 (= c!1160068 (isEmpty!37130 s!2326))))

(assert (=> d!1998051 (validRegex!8015 r!7292)))

(assert (=> d!1998051 (= (matchR!8462 r!7292 s!2326) lt!2368063)))

(assert (= (and d!1998051 c!1160068) b!6370354))

(assert (= (and d!1998051 (not c!1160068)) b!6370345))

(assert (= (and d!1998051 c!1160070) b!6370344))

(assert (= (and d!1998051 (not c!1160070)) b!6370347))

(assert (= (and b!6370347 c!1160069) b!6370348))

(assert (= (and b!6370347 (not c!1160069)) b!6370351))

(assert (= (and b!6370351 (not res!2620697)) b!6370353))

(assert (= (and b!6370353 res!2620699) b!6370349))

(assert (= (and b!6370349 res!2620694) b!6370355))

(assert (= (and b!6370355 res!2620696) b!6370346))

(assert (= (and b!6370353 (not res!2620692)) b!6370352))

(assert (= (and b!6370352 res!2620698) b!6370356))

(assert (= (and b!6370356 (not res!2620693)) b!6370350))

(assert (= (and b!6370350 (not res!2620695)) b!6370343))

(assert (= (or b!6370344 b!6370349 b!6370356) bm!543946))

(declare-fun m!7173322 () Bool)

(assert (=> b!6370354 m!7173322))

(declare-fun m!7173324 () Bool)

(assert (=> b!6370345 m!7173324))

(assert (=> b!6370345 m!7173324))

(declare-fun m!7173326 () Bool)

(assert (=> b!6370345 m!7173326))

(declare-fun m!7173328 () Bool)

(assert (=> b!6370345 m!7173328))

(assert (=> b!6370345 m!7173326))

(assert (=> b!6370345 m!7173328))

(declare-fun m!7173330 () Bool)

(assert (=> b!6370345 m!7173330))

(assert (=> b!6370350 m!7173328))

(assert (=> b!6370350 m!7173328))

(declare-fun m!7173332 () Bool)

(assert (=> b!6370350 m!7173332))

(assert (=> b!6370343 m!7173324))

(assert (=> bm!543946 m!7173312))

(assert (=> b!6370355 m!7173328))

(assert (=> b!6370355 m!7173328))

(assert (=> b!6370355 m!7173332))

(assert (=> b!6370346 m!7173324))

(assert (=> d!1998051 m!7173312))

(assert (=> d!1998051 m!7172946))

(assert (=> b!6369827 d!1998051))

(declare-fun d!1998061 () Bool)

(assert (=> d!1998061 (= (matchR!8462 r!7292 s!2326) (matchRSpec!3380 r!7292 s!2326))))

(declare-fun lt!2368066 () Unit!158447)

(declare-fun choose!47333 (Regex!16279 List!65138) Unit!158447)

(assert (=> d!1998061 (= lt!2368066 (choose!47333 r!7292 s!2326))))

(assert (=> d!1998061 (validRegex!8015 r!7292)))

(assert (=> d!1998061 (= (mainMatchTheorem!3380 r!7292 s!2326) lt!2368066)))

(declare-fun bs!1595589 () Bool)

(assert (= bs!1595589 d!1998061))

(assert (=> bs!1595589 m!7172994))

(assert (=> bs!1595589 m!7172992))

(declare-fun m!7173334 () Bool)

(assert (=> bs!1595589 m!7173334))

(assert (=> bs!1595589 m!7172946))

(assert (=> b!6369827 d!1998061))

(declare-fun d!1998063 () Bool)

(declare-fun e!3867665 () Bool)

(assert (=> d!1998063 (= (matchZipper!2291 ((_ map or) lt!2367982 lt!2367984) (t!378738 s!2326)) e!3867665)))

(declare-fun res!2620702 () Bool)

(assert (=> d!1998063 (=> res!2620702 e!3867665)))

(assert (=> d!1998063 (= res!2620702 (matchZipper!2291 lt!2367982 (t!378738 s!2326)))))

(declare-fun lt!2368069 () Unit!158447)

(declare-fun choose!47334 ((InoxSet Context!11326) (InoxSet Context!11326) List!65138) Unit!158447)

(assert (=> d!1998063 (= lt!2368069 (choose!47334 lt!2367982 lt!2367984 (t!378738 s!2326)))))

(assert (=> d!1998063 (= (lemmaZipperConcatMatchesSameAsBothZippers!1110 lt!2367982 lt!2367984 (t!378738 s!2326)) lt!2368069)))

(declare-fun b!6370359 () Bool)

(assert (=> b!6370359 (= e!3867665 (matchZipper!2291 lt!2367984 (t!378738 s!2326)))))

(assert (= (and d!1998063 (not res!2620702)) b!6370359))

(assert (=> d!1998063 m!7172944))

(assert (=> d!1998063 m!7172942))

(declare-fun m!7173336 () Bool)

(assert (=> d!1998063 m!7173336))

(assert (=> b!6370359 m!7172966))

(assert (=> b!6369807 d!1998063))

(declare-fun d!1998065 () Bool)

(declare-fun c!1160073 () Bool)

(assert (=> d!1998065 (= c!1160073 (isEmpty!37130 (t!378738 s!2326)))))

(declare-fun e!3867668 () Bool)

(assert (=> d!1998065 (= (matchZipper!2291 lt!2367982 (t!378738 s!2326)) e!3867668)))

(declare-fun b!6370364 () Bool)

(declare-fun nullableZipper!2045 ((InoxSet Context!11326)) Bool)

(assert (=> b!6370364 (= e!3867668 (nullableZipper!2045 lt!2367982))))

(declare-fun b!6370365 () Bool)

(assert (=> b!6370365 (= e!3867668 (matchZipper!2291 (derivationStepZipper!2245 lt!2367982 (head!13051 (t!378738 s!2326))) (tail!12136 (t!378738 s!2326))))))

(assert (= (and d!1998065 c!1160073) b!6370364))

(assert (= (and d!1998065 (not c!1160073)) b!6370365))

(declare-fun m!7173338 () Bool)

(assert (=> d!1998065 m!7173338))

(declare-fun m!7173340 () Bool)

(assert (=> b!6370364 m!7173340))

(declare-fun m!7173342 () Bool)

(assert (=> b!6370365 m!7173342))

(assert (=> b!6370365 m!7173342))

(declare-fun m!7173344 () Bool)

(assert (=> b!6370365 m!7173344))

(declare-fun m!7173346 () Bool)

(assert (=> b!6370365 m!7173346))

(assert (=> b!6370365 m!7173344))

(assert (=> b!6370365 m!7173346))

(declare-fun m!7173348 () Bool)

(assert (=> b!6370365 m!7173348))

(assert (=> b!6369807 d!1998065))

(declare-fun d!1998067 () Bool)

(declare-fun c!1160074 () Bool)

(assert (=> d!1998067 (= c!1160074 (isEmpty!37130 (t!378738 s!2326)))))

(declare-fun e!3867669 () Bool)

(assert (=> d!1998067 (= (matchZipper!2291 ((_ map or) lt!2367982 lt!2367984) (t!378738 s!2326)) e!3867669)))

(declare-fun b!6370366 () Bool)

(assert (=> b!6370366 (= e!3867669 (nullableZipper!2045 ((_ map or) lt!2367982 lt!2367984)))))

(declare-fun b!6370367 () Bool)

(assert (=> b!6370367 (= e!3867669 (matchZipper!2291 (derivationStepZipper!2245 ((_ map or) lt!2367982 lt!2367984) (head!13051 (t!378738 s!2326))) (tail!12136 (t!378738 s!2326))))))

(assert (= (and d!1998067 c!1160074) b!6370366))

(assert (= (and d!1998067 (not c!1160074)) b!6370367))

(assert (=> d!1998067 m!7173338))

(declare-fun m!7173350 () Bool)

(assert (=> b!6370366 m!7173350))

(assert (=> b!6370367 m!7173342))

(assert (=> b!6370367 m!7173342))

(declare-fun m!7173352 () Bool)

(assert (=> b!6370367 m!7173352))

(assert (=> b!6370367 m!7173346))

(assert (=> b!6370367 m!7173352))

(assert (=> b!6370367 m!7173346))

(declare-fun m!7173354 () Bool)

(assert (=> b!6370367 m!7173354))

(assert (=> b!6369807 d!1998067))

(declare-fun d!1998069 () Bool)

(declare-fun choose!47335 ((InoxSet Context!11326) Int) (InoxSet Context!11326))

(assert (=> d!1998069 (= (flatMap!1784 lt!2367990 lambda!351015) (choose!47335 lt!2367990 lambda!351015))))

(declare-fun bs!1595590 () Bool)

(assert (= bs!1595590 d!1998069))

(declare-fun m!7173356 () Bool)

(assert (=> bs!1595590 m!7173356))

(assert (=> b!6369817 d!1998069))

(declare-fun bm!543949 () Bool)

(declare-fun call!543954 () (InoxSet Context!11326))

(assert (=> bm!543949 (= call!543954 (derivationStepZipperDown!1527 (h!71460 (exprs!6163 lt!2367992)) (Context!11327 (t!378736 (exprs!6163 lt!2367992))) (h!71462 s!2326)))))

(declare-fun d!1998071 () Bool)

(declare-fun c!1160079 () Bool)

(declare-fun e!3867678 () Bool)

(assert (=> d!1998071 (= c!1160079 e!3867678)))

(declare-fun res!2620705 () Bool)

(assert (=> d!1998071 (=> (not res!2620705) (not e!3867678))))

(assert (=> d!1998071 (= res!2620705 ((_ is Cons!65012) (exprs!6163 lt!2367992)))))

(declare-fun e!3867676 () (InoxSet Context!11326))

(assert (=> d!1998071 (= (derivationStepZipperUp!1453 lt!2367992 (h!71462 s!2326)) e!3867676)))

(declare-fun b!6370378 () Bool)

(assert (=> b!6370378 (= e!3867678 (nullable!6272 (h!71460 (exprs!6163 lt!2367992))))))

(declare-fun b!6370379 () Bool)

(declare-fun e!3867677 () (InoxSet Context!11326))

(assert (=> b!6370379 (= e!3867677 ((as const (Array Context!11326 Bool)) false))))

(declare-fun b!6370380 () Bool)

(assert (=> b!6370380 (= e!3867677 call!543954)))

(declare-fun b!6370381 () Bool)

(assert (=> b!6370381 (= e!3867676 e!3867677)))

(declare-fun c!1160080 () Bool)

(assert (=> b!6370381 (= c!1160080 ((_ is Cons!65012) (exprs!6163 lt!2367992)))))

(declare-fun b!6370382 () Bool)

(assert (=> b!6370382 (= e!3867676 ((_ map or) call!543954 (derivationStepZipperUp!1453 (Context!11327 (t!378736 (exprs!6163 lt!2367992))) (h!71462 s!2326))))))

(assert (= (and d!1998071 res!2620705) b!6370378))

(assert (= (and d!1998071 c!1160079) b!6370382))

(assert (= (and d!1998071 (not c!1160079)) b!6370381))

(assert (= (and b!6370381 c!1160080) b!6370380))

(assert (= (and b!6370381 (not c!1160080)) b!6370379))

(assert (= (or b!6370382 b!6370380) bm!543949))

(declare-fun m!7173358 () Bool)

(assert (=> bm!543949 m!7173358))

(declare-fun m!7173360 () Bool)

(assert (=> b!6370378 m!7173360))

(declare-fun m!7173362 () Bool)

(assert (=> b!6370382 m!7173362))

(assert (=> b!6369817 d!1998071))

(declare-fun d!1998073 () Bool)

(declare-fun dynLambda!25793 (Int Context!11326) (InoxSet Context!11326))

(assert (=> d!1998073 (= (flatMap!1784 lt!2367990 lambda!351015) (dynLambda!25793 lambda!351015 lt!2367992))))

(declare-fun lt!2368072 () Unit!158447)

(declare-fun choose!47337 ((InoxSet Context!11326) Context!11326 Int) Unit!158447)

(assert (=> d!1998073 (= lt!2368072 (choose!47337 lt!2367990 lt!2367992 lambda!351015))))

(assert (=> d!1998073 (= lt!2367990 (store ((as const (Array Context!11326 Bool)) false) lt!2367992 true))))

(assert (=> d!1998073 (= (lemmaFlatMapOnSingletonSet!1310 lt!2367990 lt!2367992 lambda!351015) lt!2368072)))

(declare-fun b_lambda!242117 () Bool)

(assert (=> (not b_lambda!242117) (not d!1998073)))

(declare-fun bs!1595591 () Bool)

(assert (= bs!1595591 d!1998073))

(assert (=> bs!1595591 m!7172982))

(declare-fun m!7173364 () Bool)

(assert (=> bs!1595591 m!7173364))

(declare-fun m!7173366 () Bool)

(assert (=> bs!1595591 m!7173366))

(assert (=> bs!1595591 m!7172990))

(assert (=> b!6369817 d!1998073))

(declare-fun bs!1595592 () Bool)

(declare-fun d!1998075 () Bool)

(assert (= bs!1595592 (and d!1998075 b!6369815)))

(declare-fun lambda!351071 () Int)

(assert (=> bs!1595592 (= lambda!351071 lambda!351015)))

(assert (=> d!1998075 true))

(assert (=> d!1998075 (= (derivationStepZipper!2245 lt!2367990 (h!71462 s!2326)) (flatMap!1784 lt!2367990 lambda!351071))))

(declare-fun bs!1595593 () Bool)

(assert (= bs!1595593 d!1998075))

(declare-fun m!7173368 () Bool)

(assert (=> bs!1595593 m!7173368))

(assert (=> b!6369817 d!1998075))

(declare-fun d!1998077 () Bool)

(declare-fun nullableFct!2219 (Regex!16279) Bool)

(assert (=> d!1998077 (= (nullable!6272 (regOne!33070 (regOne!33070 r!7292))) (nullableFct!2219 (regOne!33070 (regOne!33070 r!7292))))))

(declare-fun bs!1595594 () Bool)

(assert (= bs!1595594 d!1998077))

(declare-fun m!7173370 () Bool)

(assert (=> bs!1595594 m!7173370))

(assert (=> b!6369828 d!1998077))

(declare-fun d!1998079 () Bool)

(assert (=> d!1998079 (= (isEmpty!37125 (t!378737 zl!343)) ((_ is Nil!65013) (t!378737 zl!343)))))

(assert (=> b!6369798 d!1998079))

(declare-fun bs!1595595 () Bool)

(declare-fun d!1998081 () Bool)

(assert (= bs!1595595 (and d!1998081 d!1997993)))

(declare-fun lambda!351072 () Int)

(assert (=> bs!1595595 (= lambda!351072 lambda!351032)))

(declare-fun bs!1595596 () Bool)

(assert (= bs!1595596 (and d!1998081 d!1997995)))

(assert (=> bs!1595596 (= lambda!351072 lambda!351039)))

(assert (=> d!1998081 (= (inv!83944 setElem!43424) (forall!15457 (exprs!6163 setElem!43424) lambda!351072))))

(declare-fun bs!1595597 () Bool)

(assert (= bs!1595597 d!1998081))

(declare-fun m!7173372 () Bool)

(assert (=> bs!1595597 m!7173372))

(assert (=> setNonEmpty!43424 d!1998081))

(declare-fun d!1998083 () Bool)

(declare-fun c!1160096 () Bool)

(assert (=> d!1998083 (= c!1160096 (and ((_ is ElementMatch!16279) (reg!16608 (regOne!33070 r!7292))) (= (c!1159930 (reg!16608 (regOne!33070 r!7292))) (h!71462 s!2326))))))

(declare-fun e!3867694 () (InoxSet Context!11326))

(assert (=> d!1998083 (= (derivationStepZipperDown!1527 (reg!16608 (regOne!33070 r!7292)) lt!2367991 (h!71462 s!2326)) e!3867694)))

(declare-fun b!6370407 () Bool)

(declare-fun e!3867693 () (InoxSet Context!11326))

(declare-fun call!543972 () (InoxSet Context!11326))

(assert (=> b!6370407 (= e!3867693 call!543972)))

(declare-fun b!6370408 () Bool)

(declare-fun e!3867692 () (InoxSet Context!11326))

(assert (=> b!6370408 (= e!3867694 e!3867692)))

(declare-fun c!1160097 () Bool)

(assert (=> b!6370408 (= c!1160097 ((_ is Union!16279) (reg!16608 (regOne!33070 r!7292))))))

(declare-fun b!6370409 () Bool)

(declare-fun e!3867691 () (InoxSet Context!11326))

(declare-fun call!543968 () (InoxSet Context!11326))

(declare-fun call!543967 () (InoxSet Context!11326))

(assert (=> b!6370409 (= e!3867691 ((_ map or) call!543968 call!543967))))

(declare-fun b!6370410 () Bool)

(declare-fun e!3867695 () (InoxSet Context!11326))

(assert (=> b!6370410 (= e!3867695 ((as const (Array Context!11326 Bool)) false))))

(declare-fun b!6370411 () Bool)

(declare-fun c!1160095 () Bool)

(declare-fun e!3867696 () Bool)

(assert (=> b!6370411 (= c!1160095 e!3867696)))

(declare-fun res!2620708 () Bool)

(assert (=> b!6370411 (=> (not res!2620708) (not e!3867696))))

(assert (=> b!6370411 (= res!2620708 ((_ is Concat!25124) (reg!16608 (regOne!33070 r!7292))))))

(assert (=> b!6370411 (= e!3867692 e!3867691)))

(declare-fun b!6370412 () Bool)

(assert (=> b!6370412 (= e!3867691 e!3867693)))

(declare-fun c!1160094 () Bool)

(assert (=> b!6370412 (= c!1160094 ((_ is Concat!25124) (reg!16608 (regOne!33070 r!7292))))))

(declare-fun b!6370413 () Bool)

(declare-fun call!543971 () (InoxSet Context!11326))

(assert (=> b!6370413 (= e!3867692 ((_ map or) call!543968 call!543971))))

(declare-fun bm!543962 () Bool)

(declare-fun call!543970 () List!65136)

(declare-fun $colon$colon!2140 (List!65136 Regex!16279) List!65136)

(assert (=> bm!543962 (= call!543970 ($colon$colon!2140 (exprs!6163 lt!2367991) (ite (or c!1160095 c!1160094) (regTwo!33070 (reg!16608 (regOne!33070 r!7292))) (reg!16608 (regOne!33070 r!7292)))))))

(declare-fun b!6370414 () Bool)

(declare-fun c!1160093 () Bool)

(assert (=> b!6370414 (= c!1160093 ((_ is Star!16279) (reg!16608 (regOne!33070 r!7292))))))

(assert (=> b!6370414 (= e!3867693 e!3867695)))

(declare-fun bm!543963 () Bool)

(assert (=> bm!543963 (= call!543968 (derivationStepZipperDown!1527 (ite c!1160097 (regOne!33071 (reg!16608 (regOne!33070 r!7292))) (regOne!33070 (reg!16608 (regOne!33070 r!7292)))) (ite c!1160097 lt!2367991 (Context!11327 call!543970)) (h!71462 s!2326)))))

(declare-fun b!6370415 () Bool)

(assert (=> b!6370415 (= e!3867696 (nullable!6272 (regOne!33070 (reg!16608 (regOne!33070 r!7292)))))))

(declare-fun b!6370416 () Bool)

(assert (=> b!6370416 (= e!3867695 call!543972)))

(declare-fun bm!543964 () Bool)

(assert (=> bm!543964 (= call!543972 call!543967)))

(declare-fun b!6370417 () Bool)

(assert (=> b!6370417 (= e!3867694 (store ((as const (Array Context!11326 Bool)) false) lt!2367991 true))))

(declare-fun bm!543965 () Bool)

(declare-fun call!543969 () List!65136)

(assert (=> bm!543965 (= call!543971 (derivationStepZipperDown!1527 (ite c!1160097 (regTwo!33071 (reg!16608 (regOne!33070 r!7292))) (ite c!1160095 (regTwo!33070 (reg!16608 (regOne!33070 r!7292))) (ite c!1160094 (regOne!33070 (reg!16608 (regOne!33070 r!7292))) (reg!16608 (reg!16608 (regOne!33070 r!7292)))))) (ite (or c!1160097 c!1160095) lt!2367991 (Context!11327 call!543969)) (h!71462 s!2326)))))

(declare-fun bm!543966 () Bool)

(assert (=> bm!543966 (= call!543969 call!543970)))

(declare-fun bm!543967 () Bool)

(assert (=> bm!543967 (= call!543967 call!543971)))

(assert (= (and d!1998083 c!1160096) b!6370417))

(assert (= (and d!1998083 (not c!1160096)) b!6370408))

(assert (= (and b!6370408 c!1160097) b!6370413))

(assert (= (and b!6370408 (not c!1160097)) b!6370411))

(assert (= (and b!6370411 res!2620708) b!6370415))

(assert (= (and b!6370411 c!1160095) b!6370409))

(assert (= (and b!6370411 (not c!1160095)) b!6370412))

(assert (= (and b!6370412 c!1160094) b!6370407))

(assert (= (and b!6370412 (not c!1160094)) b!6370414))

(assert (= (and b!6370414 c!1160093) b!6370416))

(assert (= (and b!6370414 (not c!1160093)) b!6370410))

(assert (= (or b!6370407 b!6370416) bm!543966))

(assert (= (or b!6370407 b!6370416) bm!543964))

(assert (= (or b!6370409 bm!543966) bm!543962))

(assert (= (or b!6370409 bm!543964) bm!543967))

(assert (= (or b!6370413 bm!543967) bm!543965))

(assert (= (or b!6370413 b!6370409) bm!543963))

(declare-fun m!7173374 () Bool)

(assert (=> bm!543965 m!7173374))

(declare-fun m!7173376 () Bool)

(assert (=> bm!543962 m!7173376))

(declare-fun m!7173378 () Bool)

(assert (=> b!6370415 m!7173378))

(declare-fun m!7173380 () Bool)

(assert (=> b!6370417 m!7173380))

(declare-fun m!7173382 () Bool)

(assert (=> bm!543963 m!7173382))

(assert (=> b!6369816 d!1998083))

(declare-fun bs!1595598 () Bool)

(declare-fun d!1998085 () Bool)

(assert (= bs!1595598 (and d!1998085 d!1997993)))

(declare-fun lambda!351073 () Int)

(assert (=> bs!1595598 (= lambda!351073 lambda!351032)))

(declare-fun bs!1595599 () Bool)

(assert (= bs!1595599 (and d!1998085 d!1997995)))

(assert (=> bs!1595599 (= lambda!351073 lambda!351039)))

(declare-fun bs!1595600 () Bool)

(assert (= bs!1595600 (and d!1998085 d!1998081)))

(assert (=> bs!1595600 (= lambda!351073 lambda!351072)))

(assert (=> d!1998085 (= (inv!83944 lt!2367991) (forall!15457 (exprs!6163 lt!2367991) lambda!351073))))

(declare-fun bs!1595601 () Bool)

(assert (= bs!1595601 d!1998085))

(declare-fun m!7173384 () Bool)

(assert (=> bs!1595601 m!7173384))

(assert (=> b!6369805 d!1998085))

(declare-fun d!1998087 () Bool)

(declare-fun c!1160101 () Bool)

(assert (=> d!1998087 (= c!1160101 (and ((_ is ElementMatch!16279) (h!71460 (exprs!6163 (h!71461 zl!343)))) (= (c!1159930 (h!71460 (exprs!6163 (h!71461 zl!343)))) (h!71462 s!2326))))))

(declare-fun e!3867700 () (InoxSet Context!11326))

(assert (=> d!1998087 (= (derivationStepZipperDown!1527 (h!71460 (exprs!6163 (h!71461 zl!343))) lt!2367993 (h!71462 s!2326)) e!3867700)))

(declare-fun b!6370418 () Bool)

(declare-fun e!3867699 () (InoxSet Context!11326))

(declare-fun call!543978 () (InoxSet Context!11326))

(assert (=> b!6370418 (= e!3867699 call!543978)))

(declare-fun b!6370419 () Bool)

(declare-fun e!3867698 () (InoxSet Context!11326))

(assert (=> b!6370419 (= e!3867700 e!3867698)))

(declare-fun c!1160102 () Bool)

(assert (=> b!6370419 (= c!1160102 ((_ is Union!16279) (h!71460 (exprs!6163 (h!71461 zl!343)))))))

(declare-fun b!6370420 () Bool)

(declare-fun e!3867697 () (InoxSet Context!11326))

(declare-fun call!543974 () (InoxSet Context!11326))

(declare-fun call!543973 () (InoxSet Context!11326))

(assert (=> b!6370420 (= e!3867697 ((_ map or) call!543974 call!543973))))

(declare-fun b!6370421 () Bool)

(declare-fun e!3867701 () (InoxSet Context!11326))

(assert (=> b!6370421 (= e!3867701 ((as const (Array Context!11326 Bool)) false))))

(declare-fun b!6370422 () Bool)

(declare-fun c!1160100 () Bool)

(declare-fun e!3867702 () Bool)

(assert (=> b!6370422 (= c!1160100 e!3867702)))

(declare-fun res!2620709 () Bool)

(assert (=> b!6370422 (=> (not res!2620709) (not e!3867702))))

(assert (=> b!6370422 (= res!2620709 ((_ is Concat!25124) (h!71460 (exprs!6163 (h!71461 zl!343)))))))

(assert (=> b!6370422 (= e!3867698 e!3867697)))

(declare-fun b!6370423 () Bool)

(assert (=> b!6370423 (= e!3867697 e!3867699)))

(declare-fun c!1160099 () Bool)

(assert (=> b!6370423 (= c!1160099 ((_ is Concat!25124) (h!71460 (exprs!6163 (h!71461 zl!343)))))))

(declare-fun b!6370424 () Bool)

(declare-fun call!543977 () (InoxSet Context!11326))

(assert (=> b!6370424 (= e!3867698 ((_ map or) call!543974 call!543977))))

(declare-fun call!543976 () List!65136)

(declare-fun bm!543968 () Bool)

(assert (=> bm!543968 (= call!543976 ($colon$colon!2140 (exprs!6163 lt!2367993) (ite (or c!1160100 c!1160099) (regTwo!33070 (h!71460 (exprs!6163 (h!71461 zl!343)))) (h!71460 (exprs!6163 (h!71461 zl!343))))))))

(declare-fun b!6370425 () Bool)

(declare-fun c!1160098 () Bool)

(assert (=> b!6370425 (= c!1160098 ((_ is Star!16279) (h!71460 (exprs!6163 (h!71461 zl!343)))))))

(assert (=> b!6370425 (= e!3867699 e!3867701)))

(declare-fun bm!543969 () Bool)

(assert (=> bm!543969 (= call!543974 (derivationStepZipperDown!1527 (ite c!1160102 (regOne!33071 (h!71460 (exprs!6163 (h!71461 zl!343)))) (regOne!33070 (h!71460 (exprs!6163 (h!71461 zl!343))))) (ite c!1160102 lt!2367993 (Context!11327 call!543976)) (h!71462 s!2326)))))

(declare-fun b!6370426 () Bool)

(assert (=> b!6370426 (= e!3867702 (nullable!6272 (regOne!33070 (h!71460 (exprs!6163 (h!71461 zl!343))))))))

(declare-fun b!6370427 () Bool)

(assert (=> b!6370427 (= e!3867701 call!543978)))

(declare-fun bm!543970 () Bool)

(assert (=> bm!543970 (= call!543978 call!543973)))

(declare-fun b!6370428 () Bool)

(assert (=> b!6370428 (= e!3867700 (store ((as const (Array Context!11326 Bool)) false) lt!2367993 true))))

(declare-fun call!543975 () List!65136)

(declare-fun bm!543971 () Bool)

(assert (=> bm!543971 (= call!543977 (derivationStepZipperDown!1527 (ite c!1160102 (regTwo!33071 (h!71460 (exprs!6163 (h!71461 zl!343)))) (ite c!1160100 (regTwo!33070 (h!71460 (exprs!6163 (h!71461 zl!343)))) (ite c!1160099 (regOne!33070 (h!71460 (exprs!6163 (h!71461 zl!343)))) (reg!16608 (h!71460 (exprs!6163 (h!71461 zl!343))))))) (ite (or c!1160102 c!1160100) lt!2367993 (Context!11327 call!543975)) (h!71462 s!2326)))))

(declare-fun bm!543972 () Bool)

(assert (=> bm!543972 (= call!543975 call!543976)))

(declare-fun bm!543973 () Bool)

(assert (=> bm!543973 (= call!543973 call!543977)))

(assert (= (and d!1998087 c!1160101) b!6370428))

(assert (= (and d!1998087 (not c!1160101)) b!6370419))

(assert (= (and b!6370419 c!1160102) b!6370424))

(assert (= (and b!6370419 (not c!1160102)) b!6370422))

(assert (= (and b!6370422 res!2620709) b!6370426))

(assert (= (and b!6370422 c!1160100) b!6370420))

(assert (= (and b!6370422 (not c!1160100)) b!6370423))

(assert (= (and b!6370423 c!1160099) b!6370418))

(assert (= (and b!6370423 (not c!1160099)) b!6370425))

(assert (= (and b!6370425 c!1160098) b!6370427))

(assert (= (and b!6370425 (not c!1160098)) b!6370421))

(assert (= (or b!6370418 b!6370427) bm!543972))

(assert (= (or b!6370418 b!6370427) bm!543970))

(assert (= (or b!6370420 bm!543972) bm!543968))

(assert (= (or b!6370420 bm!543970) bm!543973))

(assert (= (or b!6370424 bm!543973) bm!543971))

(assert (= (or b!6370424 b!6370420) bm!543969))

(declare-fun m!7173386 () Bool)

(assert (=> bm!543971 m!7173386))

(declare-fun m!7173388 () Bool)

(assert (=> bm!543968 m!7173388))

(declare-fun m!7173390 () Bool)

(assert (=> b!6370426 m!7173390))

(declare-fun m!7173392 () Bool)

(assert (=> b!6370428 m!7173392))

(declare-fun m!7173394 () Bool)

(assert (=> bm!543969 m!7173394))

(assert (=> b!6369815 d!1998087))

(declare-fun d!1998089 () Bool)

(assert (=> d!1998089 (= (nullable!6272 (h!71460 (exprs!6163 (h!71461 zl!343)))) (nullableFct!2219 (h!71460 (exprs!6163 (h!71461 zl!343)))))))

(declare-fun bs!1595602 () Bool)

(assert (= bs!1595602 d!1998089))

(declare-fun m!7173396 () Bool)

(assert (=> bs!1595602 m!7173396))

(assert (=> b!6369815 d!1998089))

(declare-fun bm!543974 () Bool)

(declare-fun call!543979 () (InoxSet Context!11326))

(assert (=> bm!543974 (= call!543979 (derivationStepZipperDown!1527 (h!71460 (exprs!6163 (Context!11327 (Cons!65012 (h!71460 (exprs!6163 (h!71461 zl!343))) (t!378736 (exprs!6163 (h!71461 zl!343))))))) (Context!11327 (t!378736 (exprs!6163 (Context!11327 (Cons!65012 (h!71460 (exprs!6163 (h!71461 zl!343))) (t!378736 (exprs!6163 (h!71461 zl!343)))))))) (h!71462 s!2326)))))

(declare-fun d!1998091 () Bool)

(declare-fun c!1160103 () Bool)

(declare-fun e!3867705 () Bool)

(assert (=> d!1998091 (= c!1160103 e!3867705)))

(declare-fun res!2620710 () Bool)

(assert (=> d!1998091 (=> (not res!2620710) (not e!3867705))))

(assert (=> d!1998091 (= res!2620710 ((_ is Cons!65012) (exprs!6163 (Context!11327 (Cons!65012 (h!71460 (exprs!6163 (h!71461 zl!343))) (t!378736 (exprs!6163 (h!71461 zl!343))))))))))

(declare-fun e!3867703 () (InoxSet Context!11326))

(assert (=> d!1998091 (= (derivationStepZipperUp!1453 (Context!11327 (Cons!65012 (h!71460 (exprs!6163 (h!71461 zl!343))) (t!378736 (exprs!6163 (h!71461 zl!343))))) (h!71462 s!2326)) e!3867703)))

(declare-fun b!6370429 () Bool)

(assert (=> b!6370429 (= e!3867705 (nullable!6272 (h!71460 (exprs!6163 (Context!11327 (Cons!65012 (h!71460 (exprs!6163 (h!71461 zl!343))) (t!378736 (exprs!6163 (h!71461 zl!343)))))))))))

(declare-fun b!6370430 () Bool)

(declare-fun e!3867704 () (InoxSet Context!11326))

(assert (=> b!6370430 (= e!3867704 ((as const (Array Context!11326 Bool)) false))))

(declare-fun b!6370431 () Bool)

(assert (=> b!6370431 (= e!3867704 call!543979)))

(declare-fun b!6370432 () Bool)

(assert (=> b!6370432 (= e!3867703 e!3867704)))

(declare-fun c!1160104 () Bool)

(assert (=> b!6370432 (= c!1160104 ((_ is Cons!65012) (exprs!6163 (Context!11327 (Cons!65012 (h!71460 (exprs!6163 (h!71461 zl!343))) (t!378736 (exprs!6163 (h!71461 zl!343))))))))))

(declare-fun b!6370433 () Bool)

(assert (=> b!6370433 (= e!3867703 ((_ map or) call!543979 (derivationStepZipperUp!1453 (Context!11327 (t!378736 (exprs!6163 (Context!11327 (Cons!65012 (h!71460 (exprs!6163 (h!71461 zl!343))) (t!378736 (exprs!6163 (h!71461 zl!343)))))))) (h!71462 s!2326))))))

(assert (= (and d!1998091 res!2620710) b!6370429))

(assert (= (and d!1998091 c!1160103) b!6370433))

(assert (= (and d!1998091 (not c!1160103)) b!6370432))

(assert (= (and b!6370432 c!1160104) b!6370431))

(assert (= (and b!6370432 (not c!1160104)) b!6370430))

(assert (= (or b!6370433 b!6370431) bm!543974))

(declare-fun m!7173398 () Bool)

(assert (=> bm!543974 m!7173398))

(declare-fun m!7173400 () Bool)

(assert (=> b!6370429 m!7173400))

(declare-fun m!7173402 () Bool)

(assert (=> b!6370433 m!7173402))

(assert (=> b!6369815 d!1998091))

(declare-fun d!1998093 () Bool)

(assert (=> d!1998093 (= (flatMap!1784 z!1189 lambda!351015) (choose!47335 z!1189 lambda!351015))))

(declare-fun bs!1595603 () Bool)

(assert (= bs!1595603 d!1998093))

(declare-fun m!7173404 () Bool)

(assert (=> bs!1595603 m!7173404))

(assert (=> b!6369815 d!1998093))

(declare-fun d!1998095 () Bool)

(assert (=> d!1998095 (= (flatMap!1784 z!1189 lambda!351015) (dynLambda!25793 lambda!351015 (h!71461 zl!343)))))

(declare-fun lt!2368073 () Unit!158447)

(assert (=> d!1998095 (= lt!2368073 (choose!47337 z!1189 (h!71461 zl!343) lambda!351015))))

(assert (=> d!1998095 (= z!1189 (store ((as const (Array Context!11326 Bool)) false) (h!71461 zl!343) true))))

(assert (=> d!1998095 (= (lemmaFlatMapOnSingletonSet!1310 z!1189 (h!71461 zl!343) lambda!351015) lt!2368073)))

(declare-fun b_lambda!242119 () Bool)

(assert (=> (not b_lambda!242119) (not d!1998095)))

(declare-fun bs!1595604 () Bool)

(assert (= bs!1595604 d!1998095))

(assert (=> bs!1595604 m!7172960))

(declare-fun m!7173406 () Bool)

(assert (=> bs!1595604 m!7173406))

(declare-fun m!7173408 () Bool)

(assert (=> bs!1595604 m!7173408))

(declare-fun m!7173410 () Bool)

(assert (=> bs!1595604 m!7173410))

(assert (=> b!6369815 d!1998095))

(declare-fun bm!543975 () Bool)

(declare-fun call!543980 () (InoxSet Context!11326))

(assert (=> bm!543975 (= call!543980 (derivationStepZipperDown!1527 (h!71460 (exprs!6163 (h!71461 zl!343))) (Context!11327 (t!378736 (exprs!6163 (h!71461 zl!343)))) (h!71462 s!2326)))))

(declare-fun d!1998097 () Bool)

(declare-fun c!1160105 () Bool)

(declare-fun e!3867708 () Bool)

(assert (=> d!1998097 (= c!1160105 e!3867708)))

(declare-fun res!2620711 () Bool)

(assert (=> d!1998097 (=> (not res!2620711) (not e!3867708))))

(assert (=> d!1998097 (= res!2620711 ((_ is Cons!65012) (exprs!6163 (h!71461 zl!343))))))

(declare-fun e!3867706 () (InoxSet Context!11326))

(assert (=> d!1998097 (= (derivationStepZipperUp!1453 (h!71461 zl!343) (h!71462 s!2326)) e!3867706)))

(declare-fun b!6370434 () Bool)

(assert (=> b!6370434 (= e!3867708 (nullable!6272 (h!71460 (exprs!6163 (h!71461 zl!343)))))))

(declare-fun b!6370435 () Bool)

(declare-fun e!3867707 () (InoxSet Context!11326))

(assert (=> b!6370435 (= e!3867707 ((as const (Array Context!11326 Bool)) false))))

(declare-fun b!6370436 () Bool)

(assert (=> b!6370436 (= e!3867707 call!543980)))

(declare-fun b!6370437 () Bool)

(assert (=> b!6370437 (= e!3867706 e!3867707)))

(declare-fun c!1160106 () Bool)

(assert (=> b!6370437 (= c!1160106 ((_ is Cons!65012) (exprs!6163 (h!71461 zl!343))))))

(declare-fun b!6370438 () Bool)

(assert (=> b!6370438 (= e!3867706 ((_ map or) call!543980 (derivationStepZipperUp!1453 (Context!11327 (t!378736 (exprs!6163 (h!71461 zl!343)))) (h!71462 s!2326))))))

(assert (= (and d!1998097 res!2620711) b!6370434))

(assert (= (and d!1998097 c!1160105) b!6370438))

(assert (= (and d!1998097 (not c!1160105)) b!6370437))

(assert (= (and b!6370437 c!1160106) b!6370436))

(assert (= (and b!6370437 (not c!1160106)) b!6370435))

(assert (= (or b!6370438 b!6370436) bm!543975))

(declare-fun m!7173412 () Bool)

(assert (=> bm!543975 m!7173412))

(assert (=> b!6370434 m!7172958))

(declare-fun m!7173414 () Bool)

(assert (=> b!6370438 m!7173414))

(assert (=> b!6369815 d!1998097))

(declare-fun bm!543976 () Bool)

(declare-fun call!543981 () (InoxSet Context!11326))

(assert (=> bm!543976 (= call!543981 (derivationStepZipperDown!1527 (h!71460 (exprs!6163 lt!2367993)) (Context!11327 (t!378736 (exprs!6163 lt!2367993))) (h!71462 s!2326)))))

(declare-fun d!1998099 () Bool)

(declare-fun c!1160107 () Bool)

(declare-fun e!3867711 () Bool)

(assert (=> d!1998099 (= c!1160107 e!3867711)))

(declare-fun res!2620712 () Bool)

(assert (=> d!1998099 (=> (not res!2620712) (not e!3867711))))

(assert (=> d!1998099 (= res!2620712 ((_ is Cons!65012) (exprs!6163 lt!2367993)))))

(declare-fun e!3867709 () (InoxSet Context!11326))

(assert (=> d!1998099 (= (derivationStepZipperUp!1453 lt!2367993 (h!71462 s!2326)) e!3867709)))

(declare-fun b!6370439 () Bool)

(assert (=> b!6370439 (= e!3867711 (nullable!6272 (h!71460 (exprs!6163 lt!2367993))))))

(declare-fun b!6370440 () Bool)

(declare-fun e!3867710 () (InoxSet Context!11326))

(assert (=> b!6370440 (= e!3867710 ((as const (Array Context!11326 Bool)) false))))

(declare-fun b!6370441 () Bool)

(assert (=> b!6370441 (= e!3867710 call!543981)))

(declare-fun b!6370442 () Bool)

(assert (=> b!6370442 (= e!3867709 e!3867710)))

(declare-fun c!1160108 () Bool)

(assert (=> b!6370442 (= c!1160108 ((_ is Cons!65012) (exprs!6163 lt!2367993)))))

(declare-fun b!6370443 () Bool)

(assert (=> b!6370443 (= e!3867709 ((_ map or) call!543981 (derivationStepZipperUp!1453 (Context!11327 (t!378736 (exprs!6163 lt!2367993))) (h!71462 s!2326))))))

(assert (= (and d!1998099 res!2620712) b!6370439))

(assert (= (and d!1998099 c!1160107) b!6370443))

(assert (= (and d!1998099 (not c!1160107)) b!6370442))

(assert (= (and b!6370442 c!1160108) b!6370441))

(assert (= (and b!6370442 (not c!1160108)) b!6370440))

(assert (= (or b!6370443 b!6370441) bm!543976))

(declare-fun m!7173416 () Bool)

(assert (=> bm!543976 m!7173416))

(declare-fun m!7173418 () Bool)

(assert (=> b!6370439 m!7173418))

(declare-fun m!7173420 () Bool)

(assert (=> b!6370443 m!7173420))

(assert (=> b!6369815 d!1998099))

(declare-fun d!1998101 () Bool)

(declare-fun e!3867714 () Bool)

(assert (=> d!1998101 e!3867714))

(declare-fun res!2620715 () Bool)

(assert (=> d!1998101 (=> (not res!2620715) (not e!3867714))))

(declare-fun lt!2368076 () List!65137)

(declare-fun noDuplicate!2109 (List!65137) Bool)

(assert (=> d!1998101 (= res!2620715 (noDuplicate!2109 lt!2368076))))

(declare-fun choose!47338 ((InoxSet Context!11326)) List!65137)

(assert (=> d!1998101 (= lt!2368076 (choose!47338 z!1189))))

(assert (=> d!1998101 (= (toList!10063 z!1189) lt!2368076)))

(declare-fun b!6370446 () Bool)

(declare-fun content!12290 (List!65137) (InoxSet Context!11326))

(assert (=> b!6370446 (= e!3867714 (= (content!12290 lt!2368076) z!1189))))

(assert (= (and d!1998101 res!2620715) b!6370446))

(declare-fun m!7173422 () Bool)

(assert (=> d!1998101 m!7173422))

(declare-fun m!7173424 () Bool)

(assert (=> d!1998101 m!7173424))

(declare-fun m!7173426 () Bool)

(assert (=> b!6370446 m!7173426))

(assert (=> b!6369825 d!1998101))

(declare-fun d!1998103 () Bool)

(assert (=> d!1998103 (= (isEmpty!37126 (t!378736 (exprs!6163 (h!71461 zl!343)))) ((_ is Nil!65012) (t!378736 (exprs!6163 (h!71461 zl!343)))))))

(assert (=> b!6369823 d!1998103))

(declare-fun call!543989 () Bool)

(declare-fun c!1160114 () Bool)

(declare-fun bm!543983 () Bool)

(declare-fun c!1160113 () Bool)

(assert (=> bm!543983 (= call!543989 (validRegex!8015 (ite c!1160114 (reg!16608 r!7292) (ite c!1160113 (regOne!33071 r!7292) (regOne!33070 r!7292)))))))

(declare-fun b!6370465 () Bool)

(declare-fun e!3867735 () Bool)

(declare-fun e!3867732 () Bool)

(assert (=> b!6370465 (= e!3867735 e!3867732)))

(declare-fun res!2620730 () Bool)

(assert (=> b!6370465 (= res!2620730 (not (nullable!6272 (reg!16608 r!7292))))))

(assert (=> b!6370465 (=> (not res!2620730) (not e!3867732))))

(declare-fun b!6370466 () Bool)

(declare-fun e!3867734 () Bool)

(declare-fun call!543990 () Bool)

(assert (=> b!6370466 (= e!3867734 call!543990)))

(declare-fun b!6370468 () Bool)

(declare-fun e!3867729 () Bool)

(declare-fun e!3867733 () Bool)

(assert (=> b!6370468 (= e!3867729 e!3867733)))

(declare-fun res!2620727 () Bool)

(assert (=> b!6370468 (=> (not res!2620727) (not e!3867733))))

(declare-fun call!543988 () Bool)

(assert (=> b!6370468 (= res!2620727 call!543988)))

(declare-fun b!6370469 () Bool)

(declare-fun e!3867731 () Bool)

(assert (=> b!6370469 (= e!3867735 e!3867731)))

(assert (=> b!6370469 (= c!1160113 ((_ is Union!16279) r!7292))))

(declare-fun bm!543984 () Bool)

(assert (=> bm!543984 (= call!543988 call!543989)))

(declare-fun b!6370470 () Bool)

(declare-fun e!3867730 () Bool)

(assert (=> b!6370470 (= e!3867730 e!3867735)))

(assert (=> b!6370470 (= c!1160114 ((_ is Star!16279) r!7292))))

(declare-fun b!6370471 () Bool)

(declare-fun res!2620728 () Bool)

(assert (=> b!6370471 (=> res!2620728 e!3867729)))

(assert (=> b!6370471 (= res!2620728 (not ((_ is Concat!25124) r!7292)))))

(assert (=> b!6370471 (= e!3867731 e!3867729)))

(declare-fun b!6370472 () Bool)

(assert (=> b!6370472 (= e!3867732 call!543989)))

(declare-fun bm!543985 () Bool)

(assert (=> bm!543985 (= call!543990 (validRegex!8015 (ite c!1160113 (regTwo!33071 r!7292) (regTwo!33070 r!7292))))))

(declare-fun b!6370473 () Bool)

(declare-fun res!2620729 () Bool)

(assert (=> b!6370473 (=> (not res!2620729) (not e!3867734))))

(assert (=> b!6370473 (= res!2620729 call!543988)))

(assert (=> b!6370473 (= e!3867731 e!3867734)))

(declare-fun b!6370467 () Bool)

(assert (=> b!6370467 (= e!3867733 call!543990)))

(declare-fun d!1998105 () Bool)

(declare-fun res!2620726 () Bool)

(assert (=> d!1998105 (=> res!2620726 e!3867730)))

(assert (=> d!1998105 (= res!2620726 ((_ is ElementMatch!16279) r!7292))))

(assert (=> d!1998105 (= (validRegex!8015 r!7292) e!3867730)))

(assert (= (and d!1998105 (not res!2620726)) b!6370470))

(assert (= (and b!6370470 c!1160114) b!6370465))

(assert (= (and b!6370470 (not c!1160114)) b!6370469))

(assert (= (and b!6370465 res!2620730) b!6370472))

(assert (= (and b!6370469 c!1160113) b!6370473))

(assert (= (and b!6370469 (not c!1160113)) b!6370471))

(assert (= (and b!6370473 res!2620729) b!6370466))

(assert (= (and b!6370471 (not res!2620728)) b!6370468))

(assert (= (and b!6370468 res!2620727) b!6370467))

(assert (= (or b!6370466 b!6370467) bm!543985))

(assert (= (or b!6370473 b!6370468) bm!543984))

(assert (= (or b!6370472 bm!543984) bm!543983))

(declare-fun m!7173428 () Bool)

(assert (=> bm!543983 m!7173428))

(declare-fun m!7173430 () Bool)

(assert (=> b!6370465 m!7173430))

(declare-fun m!7173432 () Bool)

(assert (=> bm!543985 m!7173432))

(assert (=> start!631034 d!1998105))

(declare-fun d!1998107 () Bool)

(declare-fun c!1160115 () Bool)

(assert (=> d!1998107 (= c!1160115 (isEmpty!37130 (t!378738 s!2326)))))

(declare-fun e!3867736 () Bool)

(assert (=> d!1998107 (= (matchZipper!2291 lt!2367984 (t!378738 s!2326)) e!3867736)))

(declare-fun b!6370474 () Bool)

(assert (=> b!6370474 (= e!3867736 (nullableZipper!2045 lt!2367984))))

(declare-fun b!6370475 () Bool)

(assert (=> b!6370475 (= e!3867736 (matchZipper!2291 (derivationStepZipper!2245 lt!2367984 (head!13051 (t!378738 s!2326))) (tail!12136 (t!378738 s!2326))))))

(assert (= (and d!1998107 c!1160115) b!6370474))

(assert (= (and d!1998107 (not c!1160115)) b!6370475))

(assert (=> d!1998107 m!7173338))

(declare-fun m!7173434 () Bool)

(assert (=> b!6370474 m!7173434))

(assert (=> b!6370475 m!7173342))

(assert (=> b!6370475 m!7173342))

(declare-fun m!7173436 () Bool)

(assert (=> b!6370475 m!7173436))

(assert (=> b!6370475 m!7173346))

(assert (=> b!6370475 m!7173436))

(assert (=> b!6370475 m!7173346))

(declare-fun m!7173438 () Bool)

(assert (=> b!6370475 m!7173438))

(assert (=> b!6369803 d!1998107))

(declare-fun d!1998109 () Bool)

(declare-fun c!1160116 () Bool)

(assert (=> d!1998109 (= c!1160116 (isEmpty!37130 s!2326))))

(declare-fun e!3867737 () Bool)

(assert (=> d!1998109 (= (matchZipper!2291 lt!2367990 s!2326) e!3867737)))

(declare-fun b!6370476 () Bool)

(assert (=> b!6370476 (= e!3867737 (nullableZipper!2045 lt!2367990))))

(declare-fun b!6370477 () Bool)

(assert (=> b!6370477 (= e!3867737 (matchZipper!2291 (derivationStepZipper!2245 lt!2367990 (head!13051 s!2326)) (tail!12136 s!2326)))))

(assert (= (and d!1998109 c!1160116) b!6370476))

(assert (= (and d!1998109 (not c!1160116)) b!6370477))

(assert (=> d!1998109 m!7173312))

(declare-fun m!7173440 () Bool)

(assert (=> b!6370476 m!7173440))

(assert (=> b!6370477 m!7173324))

(assert (=> b!6370477 m!7173324))

(declare-fun m!7173442 () Bool)

(assert (=> b!6370477 m!7173442))

(assert (=> b!6370477 m!7173328))

(assert (=> b!6370477 m!7173442))

(assert (=> b!6370477 m!7173328))

(declare-fun m!7173444 () Bool)

(assert (=> b!6370477 m!7173444))

(assert (=> b!6369801 d!1998109))

(declare-fun d!1998111 () Bool)

(declare-fun c!1160117 () Bool)

(assert (=> d!1998111 (= c!1160117 (isEmpty!37130 (t!378738 s!2326)))))

(declare-fun e!3867738 () Bool)

(assert (=> d!1998111 (= (matchZipper!2291 lt!2367998 (t!378738 s!2326)) e!3867738)))

(declare-fun b!6370478 () Bool)

(assert (=> b!6370478 (= e!3867738 (nullableZipper!2045 lt!2367998))))

(declare-fun b!6370479 () Bool)

(assert (=> b!6370479 (= e!3867738 (matchZipper!2291 (derivationStepZipper!2245 lt!2367998 (head!13051 (t!378738 s!2326))) (tail!12136 (t!378738 s!2326))))))

(assert (= (and d!1998111 c!1160117) b!6370478))

(assert (= (and d!1998111 (not c!1160117)) b!6370479))

(assert (=> d!1998111 m!7173338))

(declare-fun m!7173446 () Bool)

(assert (=> b!6370478 m!7173446))

(assert (=> b!6370479 m!7173342))

(assert (=> b!6370479 m!7173342))

(declare-fun m!7173448 () Bool)

(assert (=> b!6370479 m!7173448))

(assert (=> b!6370479 m!7173346))

(assert (=> b!6370479 m!7173448))

(assert (=> b!6370479 m!7173346))

(declare-fun m!7173450 () Bool)

(assert (=> b!6370479 m!7173450))

(assert (=> b!6369801 d!1998111))

(declare-fun bs!1595605 () Bool)

(declare-fun d!1998113 () Bool)

(assert (= bs!1595605 (and d!1998113 d!1997993)))

(declare-fun lambda!351076 () Int)

(assert (=> bs!1595605 (= lambda!351076 lambda!351032)))

(declare-fun bs!1595606 () Bool)

(assert (= bs!1595606 (and d!1998113 d!1997995)))

(assert (=> bs!1595606 (= lambda!351076 lambda!351039)))

(declare-fun bs!1595607 () Bool)

(assert (= bs!1595607 (and d!1998113 d!1998081)))

(assert (=> bs!1595607 (= lambda!351076 lambda!351072)))

(declare-fun bs!1595608 () Bool)

(assert (= bs!1595608 (and d!1998113 d!1998085)))

(assert (=> bs!1595608 (= lambda!351076 lambda!351073)))

(declare-fun b!6370500 () Bool)

(declare-fun e!3867752 () Regex!16279)

(assert (=> b!6370500 (= e!3867752 (h!71460 (unfocusZipperList!1700 zl!343)))))

(declare-fun b!6370501 () Bool)

(declare-fun e!3867755 () Regex!16279)

(assert (=> b!6370501 (= e!3867752 e!3867755)))

(declare-fun c!1160126 () Bool)

(assert (=> b!6370501 (= c!1160126 ((_ is Cons!65012) (unfocusZipperList!1700 zl!343)))))

(declare-fun b!6370502 () Bool)

(assert (=> b!6370502 (= e!3867755 EmptyLang!16279)))

(declare-fun b!6370503 () Bool)

(declare-fun e!3867751 () Bool)

(declare-fun lt!2368079 () Regex!16279)

(declare-fun isEmptyLang!1688 (Regex!16279) Bool)

(assert (=> b!6370503 (= e!3867751 (isEmptyLang!1688 lt!2368079))))

(declare-fun b!6370504 () Bool)

(declare-fun e!3867753 () Bool)

(assert (=> b!6370504 (= e!3867751 e!3867753)))

(declare-fun c!1160128 () Bool)

(assert (=> b!6370504 (= c!1160128 (isEmpty!37126 (tail!12135 (unfocusZipperList!1700 zl!343))))))

(declare-fun b!6370505 () Bool)

(declare-fun e!3867754 () Bool)

(assert (=> b!6370505 (= e!3867754 (isEmpty!37126 (t!378736 (unfocusZipperList!1700 zl!343))))))

(declare-fun b!6370506 () Bool)

(declare-fun e!3867756 () Bool)

(assert (=> b!6370506 (= e!3867756 e!3867751)))

(declare-fun c!1160129 () Bool)

(assert (=> b!6370506 (= c!1160129 (isEmpty!37126 (unfocusZipperList!1700 zl!343)))))

(declare-fun b!6370507 () Bool)

(assert (=> b!6370507 (= e!3867755 (Union!16279 (h!71460 (unfocusZipperList!1700 zl!343)) (generalisedUnion!2123 (t!378736 (unfocusZipperList!1700 zl!343)))))))

(declare-fun b!6370508 () Bool)

(assert (=> b!6370508 (= e!3867753 (= lt!2368079 (head!13050 (unfocusZipperList!1700 zl!343))))))

(declare-fun b!6370509 () Bool)

(declare-fun isUnion!1118 (Regex!16279) Bool)

(assert (=> b!6370509 (= e!3867753 (isUnion!1118 lt!2368079))))

(assert (=> d!1998113 e!3867756))

(declare-fun res!2620736 () Bool)

(assert (=> d!1998113 (=> (not res!2620736) (not e!3867756))))

(assert (=> d!1998113 (= res!2620736 (validRegex!8015 lt!2368079))))

(assert (=> d!1998113 (= lt!2368079 e!3867752)))

(declare-fun c!1160127 () Bool)

(assert (=> d!1998113 (= c!1160127 e!3867754)))

(declare-fun res!2620735 () Bool)

(assert (=> d!1998113 (=> (not res!2620735) (not e!3867754))))

(assert (=> d!1998113 (= res!2620735 ((_ is Cons!65012) (unfocusZipperList!1700 zl!343)))))

(assert (=> d!1998113 (forall!15457 (unfocusZipperList!1700 zl!343) lambda!351076)))

(assert (=> d!1998113 (= (generalisedUnion!2123 (unfocusZipperList!1700 zl!343)) lt!2368079)))

(assert (= (and d!1998113 res!2620735) b!6370505))

(assert (= (and d!1998113 c!1160127) b!6370500))

(assert (= (and d!1998113 (not c!1160127)) b!6370501))

(assert (= (and b!6370501 c!1160126) b!6370507))

(assert (= (and b!6370501 (not c!1160126)) b!6370502))

(assert (= (and d!1998113 res!2620736) b!6370506))

(assert (= (and b!6370506 c!1160129) b!6370503))

(assert (= (and b!6370506 (not c!1160129)) b!6370504))

(assert (= (and b!6370504 c!1160128) b!6370508))

(assert (= (and b!6370504 (not c!1160128)) b!6370509))

(declare-fun m!7173452 () Bool)

(assert (=> b!6370503 m!7173452))

(declare-fun m!7173454 () Bool)

(assert (=> d!1998113 m!7173454))

(assert (=> d!1998113 m!7172978))

(declare-fun m!7173456 () Bool)

(assert (=> d!1998113 m!7173456))

(declare-fun m!7173458 () Bool)

(assert (=> b!6370509 m!7173458))

(declare-fun m!7173460 () Bool)

(assert (=> b!6370507 m!7173460))

(assert (=> b!6370506 m!7172978))

(declare-fun m!7173462 () Bool)

(assert (=> b!6370506 m!7173462))

(assert (=> b!6370508 m!7172978))

(declare-fun m!7173464 () Bool)

(assert (=> b!6370508 m!7173464))

(assert (=> b!6370504 m!7172978))

(declare-fun m!7173466 () Bool)

(assert (=> b!6370504 m!7173466))

(assert (=> b!6370504 m!7173466))

(declare-fun m!7173468 () Bool)

(assert (=> b!6370504 m!7173468))

(declare-fun m!7173470 () Bool)

(assert (=> b!6370505 m!7173470))

(assert (=> b!6369811 d!1998113))

(declare-fun bs!1595609 () Bool)

(declare-fun d!1998115 () Bool)

(assert (= bs!1595609 (and d!1998115 d!1998113)))

(declare-fun lambda!351079 () Int)

(assert (=> bs!1595609 (= lambda!351079 lambda!351076)))

(declare-fun bs!1595610 () Bool)

(assert (= bs!1595610 (and d!1998115 d!1997993)))

(assert (=> bs!1595610 (= lambda!351079 lambda!351032)))

(declare-fun bs!1595611 () Bool)

(assert (= bs!1595611 (and d!1998115 d!1997995)))

(assert (=> bs!1595611 (= lambda!351079 lambda!351039)))

(declare-fun bs!1595612 () Bool)

(assert (= bs!1595612 (and d!1998115 d!1998085)))

(assert (=> bs!1595612 (= lambda!351079 lambda!351073)))

(declare-fun bs!1595613 () Bool)

(assert (= bs!1595613 (and d!1998115 d!1998081)))

(assert (=> bs!1595613 (= lambda!351079 lambda!351072)))

(declare-fun lt!2368082 () List!65136)

(assert (=> d!1998115 (forall!15457 lt!2368082 lambda!351079)))

(declare-fun e!3867759 () List!65136)

(assert (=> d!1998115 (= lt!2368082 e!3867759)))

(declare-fun c!1160132 () Bool)

(assert (=> d!1998115 (= c!1160132 ((_ is Cons!65013) zl!343))))

(assert (=> d!1998115 (= (unfocusZipperList!1700 zl!343) lt!2368082)))

(declare-fun b!6370514 () Bool)

(assert (=> b!6370514 (= e!3867759 (Cons!65012 (generalisedConcat!1876 (exprs!6163 (h!71461 zl!343))) (unfocusZipperList!1700 (t!378737 zl!343))))))

(declare-fun b!6370515 () Bool)

(assert (=> b!6370515 (= e!3867759 Nil!65012)))

(assert (= (and d!1998115 c!1160132) b!6370514))

(assert (= (and d!1998115 (not c!1160132)) b!6370515))

(declare-fun m!7173472 () Bool)

(assert (=> d!1998115 m!7173472))

(assert (=> b!6370514 m!7173010))

(declare-fun m!7173474 () Bool)

(assert (=> b!6370514 m!7173474))

(assert (=> b!6369811 d!1998115))

(declare-fun d!1998117 () Bool)

(declare-fun lt!2368085 () Regex!16279)

(assert (=> d!1998117 (validRegex!8015 lt!2368085)))

(assert (=> d!1998117 (= lt!2368085 (generalisedUnion!2123 (unfocusZipperList!1700 zl!343)))))

(assert (=> d!1998117 (= (unfocusZipper!2021 zl!343) lt!2368085)))

(declare-fun bs!1595614 () Bool)

(assert (= bs!1595614 d!1998117))

(declare-fun m!7173476 () Bool)

(assert (=> bs!1595614 m!7173476))

(assert (=> bs!1595614 m!7172978))

(assert (=> bs!1595614 m!7172978))

(assert (=> bs!1595614 m!7172980))

(assert (=> b!6369821 d!1998117))

(declare-fun d!1998119 () Bool)

(declare-fun lt!2368086 () Regex!16279)

(assert (=> d!1998119 (validRegex!8015 lt!2368086)))

(assert (=> d!1998119 (= lt!2368086 (generalisedUnion!2123 (unfocusZipperList!1700 (Cons!65013 lt!2367992 Nil!65013))))))

(assert (=> d!1998119 (= (unfocusZipper!2021 (Cons!65013 lt!2367992 Nil!65013)) lt!2368086)))

(declare-fun bs!1595615 () Bool)

(assert (= bs!1595615 d!1998119))

(declare-fun m!7173478 () Bool)

(assert (=> bs!1595615 m!7173478))

(declare-fun m!7173480 () Bool)

(assert (=> bs!1595615 m!7173480))

(assert (=> bs!1595615 m!7173480))

(declare-fun m!7173482 () Bool)

(assert (=> bs!1595615 m!7173482))

(assert (=> b!6369802 d!1998119))

(declare-fun b!6370529 () Bool)

(declare-fun e!3867762 () Bool)

(declare-fun tp!1773621 () Bool)

(declare-fun tp!1773619 () Bool)

(assert (=> b!6370529 (= e!3867762 (and tp!1773621 tp!1773619))))

(declare-fun b!6370527 () Bool)

(declare-fun tp!1773620 () Bool)

(declare-fun tp!1773622 () Bool)

(assert (=> b!6370527 (= e!3867762 (and tp!1773620 tp!1773622))))

(declare-fun b!6370526 () Bool)

(assert (=> b!6370526 (= e!3867762 tp_is_empty!41811)))

(assert (=> b!6369800 (= tp!1773550 e!3867762)))

(declare-fun b!6370528 () Bool)

(declare-fun tp!1773623 () Bool)

(assert (=> b!6370528 (= e!3867762 tp!1773623)))

(assert (= (and b!6369800 ((_ is ElementMatch!16279) (regOne!33070 r!7292))) b!6370526))

(assert (= (and b!6369800 ((_ is Concat!25124) (regOne!33070 r!7292))) b!6370527))

(assert (= (and b!6369800 ((_ is Star!16279) (regOne!33070 r!7292))) b!6370528))

(assert (= (and b!6369800 ((_ is Union!16279) (regOne!33070 r!7292))) b!6370529))

(declare-fun b!6370533 () Bool)

(declare-fun e!3867763 () Bool)

(declare-fun tp!1773626 () Bool)

(declare-fun tp!1773624 () Bool)

(assert (=> b!6370533 (= e!3867763 (and tp!1773626 tp!1773624))))

(declare-fun b!6370531 () Bool)

(declare-fun tp!1773625 () Bool)

(declare-fun tp!1773627 () Bool)

(assert (=> b!6370531 (= e!3867763 (and tp!1773625 tp!1773627))))

(declare-fun b!6370530 () Bool)

(assert (=> b!6370530 (= e!3867763 tp_is_empty!41811)))

(assert (=> b!6369800 (= tp!1773542 e!3867763)))

(declare-fun b!6370532 () Bool)

(declare-fun tp!1773628 () Bool)

(assert (=> b!6370532 (= e!3867763 tp!1773628)))

(assert (= (and b!6369800 ((_ is ElementMatch!16279) (regTwo!33070 r!7292))) b!6370530))

(assert (= (and b!6369800 ((_ is Concat!25124) (regTwo!33070 r!7292))) b!6370531))

(assert (= (and b!6369800 ((_ is Star!16279) (regTwo!33070 r!7292))) b!6370532))

(assert (= (and b!6369800 ((_ is Union!16279) (regTwo!33070 r!7292))) b!6370533))

(declare-fun b!6370538 () Bool)

(declare-fun e!3867766 () Bool)

(declare-fun tp!1773631 () Bool)

(assert (=> b!6370538 (= e!3867766 (and tp_is_empty!41811 tp!1773631))))

(assert (=> b!6369820 (= tp!1773545 e!3867766)))

(assert (= (and b!6369820 ((_ is Cons!65014) (t!378738 s!2326))) b!6370538))

(declare-fun b!6370542 () Bool)

(declare-fun e!3867767 () Bool)

(declare-fun tp!1773634 () Bool)

(declare-fun tp!1773632 () Bool)

(assert (=> b!6370542 (= e!3867767 (and tp!1773634 tp!1773632))))

(declare-fun b!6370540 () Bool)

(declare-fun tp!1773633 () Bool)

(declare-fun tp!1773635 () Bool)

(assert (=> b!6370540 (= e!3867767 (and tp!1773633 tp!1773635))))

(declare-fun b!6370539 () Bool)

(assert (=> b!6370539 (= e!3867767 tp_is_empty!41811)))

(assert (=> b!6369808 (= tp!1773548 e!3867767)))

(declare-fun b!6370541 () Bool)

(declare-fun tp!1773636 () Bool)

(assert (=> b!6370541 (= e!3867767 tp!1773636)))

(assert (= (and b!6369808 ((_ is ElementMatch!16279) (reg!16608 r!7292))) b!6370539))

(assert (= (and b!6369808 ((_ is Concat!25124) (reg!16608 r!7292))) b!6370540))

(assert (= (and b!6369808 ((_ is Star!16279) (reg!16608 r!7292))) b!6370541))

(assert (= (and b!6369808 ((_ is Union!16279) (reg!16608 r!7292))) b!6370542))

(declare-fun b!6370550 () Bool)

(declare-fun e!3867773 () Bool)

(declare-fun tp!1773641 () Bool)

(assert (=> b!6370550 (= e!3867773 tp!1773641)))

(declare-fun b!6370549 () Bool)

(declare-fun e!3867772 () Bool)

(declare-fun tp!1773642 () Bool)

(assert (=> b!6370549 (= e!3867772 (and (inv!83944 (h!71461 (t!378737 zl!343))) e!3867773 tp!1773642))))

(assert (=> b!6369818 (= tp!1773541 e!3867772)))

(assert (= b!6370549 b!6370550))

(assert (= (and b!6369818 ((_ is Cons!65013) (t!378737 zl!343))) b!6370549))

(declare-fun m!7173484 () Bool)

(assert (=> b!6370549 m!7173484))

(declare-fun b!6370555 () Bool)

(declare-fun e!3867776 () Bool)

(declare-fun tp!1773647 () Bool)

(declare-fun tp!1773648 () Bool)

(assert (=> b!6370555 (= e!3867776 (and tp!1773647 tp!1773648))))

(assert (=> b!6369799 (= tp!1773549 e!3867776)))

(assert (= (and b!6369799 ((_ is Cons!65012) (exprs!6163 setElem!43424))) b!6370555))

(declare-fun b!6370556 () Bool)

(declare-fun e!3867777 () Bool)

(declare-fun tp!1773649 () Bool)

(declare-fun tp!1773650 () Bool)

(assert (=> b!6370556 (= e!3867777 (and tp!1773649 tp!1773650))))

(assert (=> b!6369824 (= tp!1773546 e!3867777)))

(assert (= (and b!6369824 ((_ is Cons!65012) (exprs!6163 (h!71461 zl!343)))) b!6370556))

(declare-fun b!6370560 () Bool)

(declare-fun e!3867778 () Bool)

(declare-fun tp!1773653 () Bool)

(declare-fun tp!1773651 () Bool)

(assert (=> b!6370560 (= e!3867778 (and tp!1773653 tp!1773651))))

(declare-fun b!6370558 () Bool)

(declare-fun tp!1773652 () Bool)

(declare-fun tp!1773654 () Bool)

(assert (=> b!6370558 (= e!3867778 (and tp!1773652 tp!1773654))))

(declare-fun b!6370557 () Bool)

(assert (=> b!6370557 (= e!3867778 tp_is_empty!41811)))

(assert (=> b!6369812 (= tp!1773543 e!3867778)))

(declare-fun b!6370559 () Bool)

(declare-fun tp!1773655 () Bool)

(assert (=> b!6370559 (= e!3867778 tp!1773655)))

(assert (= (and b!6369812 ((_ is ElementMatch!16279) (regOne!33071 r!7292))) b!6370557))

(assert (= (and b!6369812 ((_ is Concat!25124) (regOne!33071 r!7292))) b!6370558))

(assert (= (and b!6369812 ((_ is Star!16279) (regOne!33071 r!7292))) b!6370559))

(assert (= (and b!6369812 ((_ is Union!16279) (regOne!33071 r!7292))) b!6370560))

(declare-fun b!6370564 () Bool)

(declare-fun e!3867779 () Bool)

(declare-fun tp!1773658 () Bool)

(declare-fun tp!1773656 () Bool)

(assert (=> b!6370564 (= e!3867779 (and tp!1773658 tp!1773656))))

(declare-fun b!6370562 () Bool)

(declare-fun tp!1773657 () Bool)

(declare-fun tp!1773659 () Bool)

(assert (=> b!6370562 (= e!3867779 (and tp!1773657 tp!1773659))))

(declare-fun b!6370561 () Bool)

(assert (=> b!6370561 (= e!3867779 tp_is_empty!41811)))

(assert (=> b!6369812 (= tp!1773544 e!3867779)))

(declare-fun b!6370563 () Bool)

(declare-fun tp!1773660 () Bool)

(assert (=> b!6370563 (= e!3867779 tp!1773660)))

(assert (= (and b!6369812 ((_ is ElementMatch!16279) (regTwo!33071 r!7292))) b!6370561))

(assert (= (and b!6369812 ((_ is Concat!25124) (regTwo!33071 r!7292))) b!6370562))

(assert (= (and b!6369812 ((_ is Star!16279) (regTwo!33071 r!7292))) b!6370563))

(assert (= (and b!6369812 ((_ is Union!16279) (regTwo!33071 r!7292))) b!6370564))

(declare-fun condSetEmpty!43430 () Bool)

(assert (=> setNonEmpty!43424 (= condSetEmpty!43430 (= setRest!43424 ((as const (Array Context!11326 Bool)) false)))))

(declare-fun setRes!43430 () Bool)

(assert (=> setNonEmpty!43424 (= tp!1773547 setRes!43430)))

(declare-fun setIsEmpty!43430 () Bool)

(assert (=> setIsEmpty!43430 setRes!43430))

(declare-fun e!3867782 () Bool)

(declare-fun setNonEmpty!43430 () Bool)

(declare-fun tp!1773665 () Bool)

(declare-fun setElem!43430 () Context!11326)

(assert (=> setNonEmpty!43430 (= setRes!43430 (and tp!1773665 (inv!83944 setElem!43430) e!3867782))))

(declare-fun setRest!43430 () (InoxSet Context!11326))

(assert (=> setNonEmpty!43430 (= setRest!43424 ((_ map or) (store ((as const (Array Context!11326 Bool)) false) setElem!43430 true) setRest!43430))))

(declare-fun b!6370569 () Bool)

(declare-fun tp!1773666 () Bool)

(assert (=> b!6370569 (= e!3867782 tp!1773666)))

(assert (= (and setNonEmpty!43424 condSetEmpty!43430) setIsEmpty!43430))

(assert (= (and setNonEmpty!43424 (not condSetEmpty!43430)) setNonEmpty!43430))

(assert (= setNonEmpty!43430 b!6370569))

(declare-fun m!7173486 () Bool)

(assert (=> setNonEmpty!43430 m!7173486))

(declare-fun b_lambda!242121 () Bool)

(assert (= b_lambda!242119 (or b!6369815 b_lambda!242121)))

(declare-fun bs!1595616 () Bool)

(declare-fun d!1998121 () Bool)

(assert (= bs!1595616 (and d!1998121 b!6369815)))

(assert (=> bs!1595616 (= (dynLambda!25793 lambda!351015 (h!71461 zl!343)) (derivationStepZipperUp!1453 (h!71461 zl!343) (h!71462 s!2326)))))

(assert (=> bs!1595616 m!7172954))

(assert (=> d!1998095 d!1998121))

(declare-fun b_lambda!242123 () Bool)

(assert (= b_lambda!242117 (or b!6369815 b_lambda!242123)))

(declare-fun bs!1595617 () Bool)

(declare-fun d!1998123 () Bool)

(assert (= bs!1595617 (and d!1998123 b!6369815)))

(assert (=> bs!1595617 (= (dynLambda!25793 lambda!351015 lt!2367992) (derivationStepZipperUp!1453 lt!2367992 (h!71462 s!2326)))))

(assert (=> bs!1595617 m!7172986))

(assert (=> d!1998073 d!1998123))

(check-sat (not b!6370479) (not d!1998117) (not bm!543962) (not b!6370555) (not d!1998073) (not b!6370533) (not b!6370011) (not d!1998085) (not b!6370343) (not setNonEmpty!43430) (not b!6370503) (not b!6370529) (not bm!543969) (not bs!1595616) (not d!1998063) (not b!6370084) (not b!6370434) (not b!6370474) (not d!1998077) (not b!6370366) (not d!1998013) (not b!6370528) (not b!6370367) (not b!6370531) (not b!6370465) (not b!6370382) (not b!6370359) (not d!1998039) (not d!1998003) (not d!1998081) (not b!6370014) (not b!6370509) (not bm!543974) (not b!6370507) (not bm!543949) (not b!6370010) (not b!6370527) (not b!6370569) (not b!6370433) (not d!1998093) (not d!1998051) (not b!6370563) (not b!6370508) (not b!6370558) (not b!6370538) (not bs!1595617) (not bm!543968) (not d!1998119) (not d!1998067) (not b!6370082) (not b!6370364) (not b!6370081) (not d!1998043) (not b!6370475) (not d!1998101) (not bm!543942) (not bm!543946) (not bm!543976) (not d!1998075) (not b!6370562) (not b!6370415) (not b!6370236) (not b!6370549) (not b!6370550) (not d!1998095) (not b!6370350) (not b!6370559) (not d!1997993) (not b!6370506) (not bm!543965) (not d!1998069) (not b!6370564) (not d!1997995) (not b!6370476) (not b!6370478) (not b_lambda!242121) (not b!6370426) (not bm!543985) (not b!6370505) (not bm!543963) (not b!6370007) (not b!6370365) (not b!6370560) (not bm!543975) (not b!6370556) (not b!6370346) (not d!1998109) (not b!6370077) (not b!6370438) (not b!6370477) (not b!6370354) (not bm!543971) (not b!6370439) (not b!6370083) (not d!1998061) (not d!1998111) (not b!6370345) (not b!6370355) (not d!1998113) (not d!1998011) (not d!1998115) (not b!6370429) (not b!6370443) (not b!6370541) (not d!1998107) (not b!6370013) (not b!6370079) (not b!6370446) (not d!1998065) (not b_lambda!242123) (not b!6370542) (not b!6370237) (not b!6370378) (not b!6370514) (not b!6370006) (not b!6370540) (not bm!543941) (not d!1998089) (not bm!543983) (not b!6370504) tp_is_empty!41811 (not b!6370015) (not b!6370532) (not d!1998041))
(check-sat)
