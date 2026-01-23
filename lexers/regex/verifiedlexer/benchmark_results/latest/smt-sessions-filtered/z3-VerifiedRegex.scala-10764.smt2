; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550102 () Bool)

(assert start!550102)

(declare-fun b!5199752 () Bool)

(assert (=> b!5199752 true))

(assert (=> b!5199752 true))

(declare-fun lambda!260428 () Int)

(declare-fun lambda!260427 () Int)

(assert (=> b!5199752 (not (= lambda!260428 lambda!260427))))

(assert (=> b!5199752 true))

(assert (=> b!5199752 true))

(declare-fun b!5199756 () Bool)

(assert (=> b!5199756 true))

(declare-fun b!5199732 () Bool)

(declare-fun res!2208976 () Bool)

(declare-fun e!3238005 () Bool)

(assert (=> b!5199732 (=> res!2208976 e!3238005)))

(declare-datatypes ((C!29820 0))(
  ( (C!29821 (val!24612 Int)) )
))
(declare-datatypes ((Regex!14775 0))(
  ( (ElementMatch!14775 (c!896226 C!29820)) (Concat!23620 (regOne!30062 Regex!14775) (regTwo!30062 Regex!14775)) (EmptyExpr!14775) (Star!14775 (reg!15104 Regex!14775)) (EmptyLang!14775) (Union!14775 (regOne!30063 Regex!14775) (regTwo!30063 Regex!14775)) )
))
(declare-datatypes ((List!60624 0))(
  ( (Nil!60500) (Cons!60500 (h!66948 Regex!14775) (t!373777 List!60624)) )
))
(declare-datatypes ((Context!8318 0))(
  ( (Context!8319 (exprs!4659 List!60624)) )
))
(declare-datatypes ((List!60625 0))(
  ( (Nil!60501) (Cons!60501 (h!66949 Context!8318) (t!373778 List!60625)) )
))
(declare-fun zl!343 () List!60625)

(declare-fun isEmpty!32414 (List!60624) Bool)

(assert (=> b!5199732 (= res!2208976 (not (isEmpty!32414 (t!373777 (exprs!4659 (h!66949 zl!343))))))))

(declare-fun b!5199733 () Bool)

(declare-fun res!2208992 () Bool)

(declare-fun e!3238010 () Bool)

(assert (=> b!5199733 (=> res!2208992 e!3238010)))

(declare-fun r!7292 () Regex!14775)

(declare-fun generalisedConcat!444 (List!60624) Regex!14775)

(assert (=> b!5199733 (= res!2208992 (not (= r!7292 (generalisedConcat!444 (exprs!4659 (h!66949 zl!343))))))))

(declare-fun b!5199734 () Bool)

(declare-fun e!3238004 () Bool)

(declare-fun e!3238007 () Bool)

(assert (=> b!5199734 (= e!3238004 e!3238007)))

(declare-fun res!2208977 () Bool)

(assert (=> b!5199734 (=> (not res!2208977) (not e!3238007))))

(declare-fun lt!2140375 () Regex!14775)

(assert (=> b!5199734 (= res!2208977 (= r!7292 lt!2140375))))

(declare-fun unfocusZipper!517 (List!60625) Regex!14775)

(assert (=> b!5199734 (= lt!2140375 (unfocusZipper!517 zl!343))))

(declare-fun b!5199735 () Bool)

(declare-fun e!3238002 () Bool)

(declare-fun tp_is_empty!38803 () Bool)

(assert (=> b!5199735 (= e!3238002 tp_is_empty!38803)))

(declare-fun setIsEmpty!32956 () Bool)

(declare-fun setRes!32956 () Bool)

(assert (=> setIsEmpty!32956 setRes!32956))

(declare-fun b!5199736 () Bool)

(declare-fun res!2208988 () Bool)

(declare-fun e!3238012 () Bool)

(assert (=> b!5199736 (=> res!2208988 e!3238012)))

(declare-fun lt!2140368 () List!60624)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2140365 () (InoxSet Context!8318))

(declare-fun lt!2140379 () (InoxSet Context!8318))

(assert (=> b!5199736 (= res!2208988 (or (not (= lt!2140379 lt!2140365)) (not (= lt!2140375 r!7292)) (not (= (exprs!4659 (h!66949 zl!343)) lt!2140368))))))

(declare-fun b!5199737 () Bool)

(declare-fun res!2208987 () Bool)

(assert (=> b!5199737 (=> res!2208987 e!3238010)))

(get-info :version)

(assert (=> b!5199737 (= res!2208987 (or ((_ is EmptyExpr!14775) r!7292) ((_ is EmptyLang!14775) r!7292) ((_ is ElementMatch!14775) r!7292) ((_ is Union!14775) r!7292) (not ((_ is Concat!23620) r!7292))))))

(declare-fun b!5199738 () Bool)

(declare-fun e!3238001 () Bool)

(declare-fun tp!1458484 () Bool)

(assert (=> b!5199738 (= e!3238001 (and tp_is_empty!38803 tp!1458484))))

(declare-fun b!5199739 () Bool)

(declare-fun e!3238003 () Bool)

(declare-fun tp!1458489 () Bool)

(assert (=> b!5199739 (= e!3238003 tp!1458489)))

(declare-fun b!5199740 () Bool)

(declare-fun res!2208990 () Bool)

(assert (=> b!5199740 (=> res!2208990 e!3238010)))

(declare-fun isEmpty!32415 (List!60625) Bool)

(assert (=> b!5199740 (= res!2208990 (not (isEmpty!32415 (t!373778 zl!343))))))

(declare-fun res!2208989 () Bool)

(assert (=> start!550102 (=> (not res!2208989) (not e!3238004))))

(declare-fun validRegex!6511 (Regex!14775) Bool)

(assert (=> start!550102 (= res!2208989 (validRegex!6511 r!7292))))

(assert (=> start!550102 e!3238004))

(assert (=> start!550102 e!3238002))

(declare-fun condSetEmpty!32956 () Bool)

(declare-fun z!1189 () (InoxSet Context!8318))

(assert (=> start!550102 (= condSetEmpty!32956 (= z!1189 ((as const (Array Context!8318 Bool)) false)))))

(assert (=> start!550102 setRes!32956))

(declare-fun e!3238013 () Bool)

(assert (=> start!550102 e!3238013))

(assert (=> start!550102 e!3238001))

(declare-fun b!5199741 () Bool)

(declare-fun tp!1458480 () Bool)

(declare-fun tp!1458483 () Bool)

(assert (=> b!5199741 (= e!3238002 (and tp!1458480 tp!1458483))))

(declare-fun b!5199742 () Bool)

(declare-fun tp!1458486 () Bool)

(declare-fun tp!1458488 () Bool)

(assert (=> b!5199742 (= e!3238002 (and tp!1458486 tp!1458488))))

(declare-fun b!5199743 () Bool)

(declare-fun res!2208984 () Bool)

(assert (=> b!5199743 (=> res!2208984 e!3238010)))

(declare-fun generalisedUnion!704 (List!60624) Regex!14775)

(declare-fun unfocusZipperList!217 (List!60625) List!60624)

(assert (=> b!5199743 (= res!2208984 (not (= r!7292 (generalisedUnion!704 (unfocusZipperList!217 zl!343)))))))

(declare-fun b!5199744 () Bool)

(declare-fun e!3238011 () Bool)

(declare-fun tp!1458487 () Bool)

(assert (=> b!5199744 (= e!3238011 tp!1458487)))

(declare-fun b!5199745 () Bool)

(declare-fun res!2208985 () Bool)

(declare-fun e!3238009 () Bool)

(assert (=> b!5199745 (=> res!2208985 e!3238009)))

(assert (=> b!5199745 (= res!2208985 (not (validRegex!6511 (Concat!23620 (regOne!30062 r!7292) (regTwo!30062 r!7292)))))))

(declare-fun b!5199746 () Bool)

(declare-fun e!3238008 () Bool)

(assert (=> b!5199746 (= e!3238005 e!3238008)))

(declare-fun res!2208978 () Bool)

(assert (=> b!5199746 (=> res!2208978 e!3238008)))

(declare-fun lt!2140362 () (InoxSet Context!8318))

(declare-fun lt!2140366 () (InoxSet Context!8318))

(assert (=> b!5199746 (= res!2208978 (not (= lt!2140362 lt!2140366)))))

(declare-datatypes ((List!60626 0))(
  ( (Nil!60502) (Cons!60502 (h!66950 C!29820) (t!373779 List!60626)) )
))
(declare-fun s!2326 () List!60626)

(declare-fun lt!2140381 () Context!8318)

(declare-fun derivationStepZipperDown!224 (Regex!14775 Context!8318 C!29820) (InoxSet Context!8318))

(assert (=> b!5199746 (= lt!2140366 (derivationStepZipperDown!224 r!7292 lt!2140381 (h!66950 s!2326)))))

(assert (=> b!5199746 (= lt!2140381 (Context!8319 Nil!60500))))

(declare-fun lt!2140358 () Context!8318)

(declare-fun derivationStepZipperUp!147 (Context!8318 C!29820) (InoxSet Context!8318))

(assert (=> b!5199746 (= lt!2140362 (derivationStepZipperUp!147 lt!2140358 (h!66950 s!2326)))))

(assert (=> b!5199746 (= lt!2140358 (Context!8319 lt!2140368))))

(assert (=> b!5199746 (= lt!2140368 (Cons!60500 r!7292 Nil!60500))))

(declare-fun derivationStepZipper!1055 ((InoxSet Context!8318) C!29820) (InoxSet Context!8318))

(assert (=> b!5199746 (= lt!2140379 (derivationStepZipper!1055 z!1189 (h!66950 s!2326)))))

(declare-fun b!5199747 () Bool)

(declare-fun res!2208983 () Bool)

(assert (=> b!5199747 (=> res!2208983 e!3238009)))

(declare-fun lt!2140374 () (InoxSet Context!8318))

(declare-fun lt!2140380 () List!60625)

(declare-fun toList!8559 ((InoxSet Context!8318)) List!60625)

(assert (=> b!5199747 (= res!2208983 (not (= (toList!8559 lt!2140374) lt!2140380)))))

(declare-fun b!5199748 () Bool)

(declare-fun tp!1458485 () Bool)

(assert (=> b!5199748 (= e!3238002 tp!1458485)))

(declare-fun b!5199749 () Bool)

(assert (=> b!5199749 (= e!3238012 e!3238009)))

(declare-fun res!2208980 () Bool)

(assert (=> b!5199749 (=> res!2208980 e!3238009)))

(declare-fun zipperDepth!8 (List!60625) Int)

(assert (=> b!5199749 (= res!2208980 (>= (zipperDepth!8 lt!2140380) (zipperDepth!8 (Cons!60501 lt!2140358 Nil!60501))))))

(declare-fun lt!2140369 () Context!8318)

(assert (=> b!5199749 (= lt!2140380 (Cons!60501 lt!2140369 Nil!60501))))

(declare-fun b!5199750 () Bool)

(assert (=> b!5199750 (= e!3238009 true)))

(declare-fun lt!2140364 () Regex!14775)

(assert (=> b!5199750 (= lt!2140364 (unfocusZipper!517 lt!2140380))))

(declare-fun tp!1458482 () Bool)

(declare-fun setElem!32956 () Context!8318)

(declare-fun setNonEmpty!32956 () Bool)

(declare-fun inv!80184 (Context!8318) Bool)

(assert (=> setNonEmpty!32956 (= setRes!32956 (and tp!1458482 (inv!80184 setElem!32956) e!3238011))))

(declare-fun setRest!32956 () (InoxSet Context!8318))

(assert (=> setNonEmpty!32956 (= z!1189 ((_ map or) (store ((as const (Array Context!8318 Bool)) false) setElem!32956 true) setRest!32956))))

(declare-fun b!5199751 () Bool)

(declare-fun e!3238006 () Bool)

(assert (=> b!5199751 (= e!3238006 e!3238012)))

(declare-fun res!2208981 () Bool)

(assert (=> b!5199751 (=> res!2208981 e!3238012)))

(declare-fun nullable!4946 (Regex!14775) Bool)

(assert (=> b!5199751 (= res!2208981 (nullable!4946 (regOne!30062 r!7292)))))

(declare-fun lt!2140367 () (InoxSet Context!8318))

(assert (=> b!5199751 (= lt!2140367 (derivationStepZipperDown!224 (regTwo!30062 r!7292) lt!2140381 (h!66950 s!2326)))))

(declare-fun lt!2140356 () Context!8318)

(assert (=> b!5199751 (= lt!2140365 (derivationStepZipperDown!224 (regOne!30062 r!7292) lt!2140356 (h!66950 s!2326)))))

(declare-fun lambda!260429 () Int)

(declare-fun lt!2140359 () (InoxSet Context!8318))

(declare-fun flatMap!506 ((InoxSet Context!8318) Int) (InoxSet Context!8318))

(assert (=> b!5199751 (= (flatMap!506 lt!2140359 lambda!260429) (derivationStepZipperUp!147 lt!2140356 (h!66950 s!2326)))))

(declare-datatypes ((Unit!152384 0))(
  ( (Unit!152385) )
))
(declare-fun lt!2140372 () Unit!152384)

(declare-fun lemmaFlatMapOnSingletonSet!38 ((InoxSet Context!8318) Context!8318 Int) Unit!152384)

(assert (=> b!5199751 (= lt!2140372 (lemmaFlatMapOnSingletonSet!38 lt!2140359 lt!2140356 lambda!260429))))

(assert (=> b!5199751 (= (flatMap!506 lt!2140374 lambda!260429) (derivationStepZipperUp!147 lt!2140369 (h!66950 s!2326)))))

(declare-fun lt!2140360 () Unit!152384)

(assert (=> b!5199751 (= lt!2140360 (lemmaFlatMapOnSingletonSet!38 lt!2140374 lt!2140369 lambda!260429))))

(declare-fun lt!2140377 () (InoxSet Context!8318))

(assert (=> b!5199751 (= lt!2140377 (derivationStepZipperUp!147 lt!2140356 (h!66950 s!2326)))))

(declare-fun lt!2140363 () (InoxSet Context!8318))

(assert (=> b!5199751 (= lt!2140363 (derivationStepZipperUp!147 lt!2140369 (h!66950 s!2326)))))

(assert (=> b!5199751 (= lt!2140359 (store ((as const (Array Context!8318 Bool)) false) lt!2140356 true))))

(declare-fun lt!2140361 () List!60624)

(assert (=> b!5199751 (= lt!2140356 (Context!8319 lt!2140361))))

(assert (=> b!5199751 (= lt!2140374 (store ((as const (Array Context!8318 Bool)) false) lt!2140369 true))))

(assert (=> b!5199751 (= lt!2140369 (Context!8319 (Cons!60500 (regOne!30062 r!7292) lt!2140361)))))

(assert (=> b!5199751 (= lt!2140361 (Cons!60500 (regTwo!30062 r!7292) Nil!60500))))

(assert (=> b!5199752 (= e!3238010 e!3238005)))

(declare-fun res!2208986 () Bool)

(assert (=> b!5199752 (=> res!2208986 e!3238005)))

(declare-fun lt!2140376 () Bool)

(declare-fun lt!2140373 () Bool)

(assert (=> b!5199752 (= res!2208986 (or (not (= lt!2140376 lt!2140373)) ((_ is Nil!60502) s!2326)))))

(declare-fun Exists!1956 (Int) Bool)

(assert (=> b!5199752 (= (Exists!1956 lambda!260427) (Exists!1956 lambda!260428))))

(declare-fun lt!2140357 () Unit!152384)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!610 (Regex!14775 Regex!14775 List!60626) Unit!152384)

(assert (=> b!5199752 (= lt!2140357 (lemmaExistCutMatchRandMatchRSpecEquivalent!610 (regOne!30062 r!7292) (regTwo!30062 r!7292) s!2326))))

(assert (=> b!5199752 (= lt!2140373 (Exists!1956 lambda!260427))))

(declare-datatypes ((tuple2!63948 0))(
  ( (tuple2!63949 (_1!35277 List!60626) (_2!35277 List!60626)) )
))
(declare-datatypes ((Option!14886 0))(
  ( (None!14885) (Some!14885 (v!50914 tuple2!63948)) )
))
(declare-fun isDefined!11589 (Option!14886) Bool)

(declare-fun findConcatSeparation!1300 (Regex!14775 Regex!14775 List!60626 List!60626 List!60626) Option!14886)

(assert (=> b!5199752 (= lt!2140373 (isDefined!11589 (findConcatSeparation!1300 (regOne!30062 r!7292) (regTwo!30062 r!7292) Nil!60502 s!2326 s!2326)))))

(declare-fun lt!2140370 () Unit!152384)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1064 (Regex!14775 Regex!14775 List!60626) Unit!152384)

(assert (=> b!5199752 (= lt!2140370 (lemmaFindConcatSeparationEquivalentToExists!1064 (regOne!30062 r!7292) (regTwo!30062 r!7292) s!2326))))

(declare-fun b!5199753 () Bool)

(declare-fun res!2208975 () Bool)

(assert (=> b!5199753 (=> res!2208975 e!3238010)))

(assert (=> b!5199753 (= res!2208975 (not ((_ is Cons!60500) (exprs!4659 (h!66949 zl!343)))))))

(declare-fun tp!1458481 () Bool)

(declare-fun b!5199754 () Bool)

(assert (=> b!5199754 (= e!3238013 (and (inv!80184 (h!66949 zl!343)) e!3238003 tp!1458481))))

(declare-fun b!5199755 () Bool)

(declare-fun res!2208982 () Bool)

(assert (=> b!5199755 (=> (not res!2208982) (not e!3238004))))

(assert (=> b!5199755 (= res!2208982 (= (toList!8559 z!1189) zl!343))))

(assert (=> b!5199756 (= e!3238008 e!3238006)))

(declare-fun res!2208991 () Bool)

(assert (=> b!5199756 (=> res!2208991 e!3238006)))

(assert (=> b!5199756 (= res!2208991 (not (= lt!2140379 lt!2140366)))))

(assert (=> b!5199756 (= (flatMap!506 z!1189 lambda!260429) (derivationStepZipperUp!147 (h!66949 zl!343) (h!66950 s!2326)))))

(declare-fun lt!2140371 () Unit!152384)

(assert (=> b!5199756 (= lt!2140371 (lemmaFlatMapOnSingletonSet!38 z!1189 (h!66949 zl!343) lambda!260429))))

(declare-fun b!5199757 () Bool)

(assert (=> b!5199757 (= e!3238007 (not e!3238010))))

(declare-fun res!2208979 () Bool)

(assert (=> b!5199757 (=> res!2208979 e!3238010)))

(assert (=> b!5199757 (= res!2208979 (not ((_ is Cons!60501) zl!343)))))

(declare-fun matchRSpec!1878 (Regex!14775 List!60626) Bool)

(assert (=> b!5199757 (= lt!2140376 (matchRSpec!1878 r!7292 s!2326))))

(declare-fun matchR!6960 (Regex!14775 List!60626) Bool)

(assert (=> b!5199757 (= lt!2140376 (matchR!6960 r!7292 s!2326))))

(declare-fun lt!2140378 () Unit!152384)

(declare-fun mainMatchTheorem!1878 (Regex!14775 List!60626) Unit!152384)

(assert (=> b!5199757 (= lt!2140378 (mainMatchTheorem!1878 r!7292 s!2326))))

(assert (= (and start!550102 res!2208989) b!5199755))

(assert (= (and b!5199755 res!2208982) b!5199734))

(assert (= (and b!5199734 res!2208977) b!5199757))

(assert (= (and b!5199757 (not res!2208979)) b!5199740))

(assert (= (and b!5199740 (not res!2208990)) b!5199733))

(assert (= (and b!5199733 (not res!2208992)) b!5199753))

(assert (= (and b!5199753 (not res!2208975)) b!5199743))

(assert (= (and b!5199743 (not res!2208984)) b!5199737))

(assert (= (and b!5199737 (not res!2208987)) b!5199752))

(assert (= (and b!5199752 (not res!2208986)) b!5199732))

(assert (= (and b!5199732 (not res!2208976)) b!5199746))

(assert (= (and b!5199746 (not res!2208978)) b!5199756))

(assert (= (and b!5199756 (not res!2208991)) b!5199751))

(assert (= (and b!5199751 (not res!2208981)) b!5199736))

(assert (= (and b!5199736 (not res!2208988)) b!5199749))

(assert (= (and b!5199749 (not res!2208980)) b!5199745))

(assert (= (and b!5199745 (not res!2208985)) b!5199747))

(assert (= (and b!5199747 (not res!2208983)) b!5199750))

(assert (= (and start!550102 ((_ is ElementMatch!14775) r!7292)) b!5199735))

(assert (= (and start!550102 ((_ is Concat!23620) r!7292)) b!5199742))

(assert (= (and start!550102 ((_ is Star!14775) r!7292)) b!5199748))

(assert (= (and start!550102 ((_ is Union!14775) r!7292)) b!5199741))

(assert (= (and start!550102 condSetEmpty!32956) setIsEmpty!32956))

(assert (= (and start!550102 (not condSetEmpty!32956)) setNonEmpty!32956))

(assert (= setNonEmpty!32956 b!5199744))

(assert (= b!5199754 b!5199739))

(assert (= (and start!550102 ((_ is Cons!60501) zl!343)) b!5199754))

(assert (= (and start!550102 ((_ is Cons!60502) s!2326)) b!5199738))

(declare-fun m!6252660 () Bool)

(assert (=> b!5199755 m!6252660))

(declare-fun m!6252662 () Bool)

(assert (=> b!5199746 m!6252662))

(declare-fun m!6252664 () Bool)

(assert (=> b!5199746 m!6252664))

(declare-fun m!6252666 () Bool)

(assert (=> b!5199746 m!6252666))

(declare-fun m!6252668 () Bool)

(assert (=> b!5199733 m!6252668))

(declare-fun m!6252670 () Bool)

(assert (=> b!5199750 m!6252670))

(declare-fun m!6252672 () Bool)

(assert (=> b!5199734 m!6252672))

(declare-fun m!6252674 () Bool)

(assert (=> b!5199732 m!6252674))

(declare-fun m!6252676 () Bool)

(assert (=> b!5199754 m!6252676))

(declare-fun m!6252678 () Bool)

(assert (=> b!5199749 m!6252678))

(declare-fun m!6252680 () Bool)

(assert (=> b!5199749 m!6252680))

(declare-fun m!6252682 () Bool)

(assert (=> b!5199756 m!6252682))

(declare-fun m!6252684 () Bool)

(assert (=> b!5199756 m!6252684))

(declare-fun m!6252686 () Bool)

(assert (=> b!5199756 m!6252686))

(declare-fun m!6252688 () Bool)

(assert (=> b!5199751 m!6252688))

(declare-fun m!6252690 () Bool)

(assert (=> b!5199751 m!6252690))

(declare-fun m!6252692 () Bool)

(assert (=> b!5199751 m!6252692))

(declare-fun m!6252694 () Bool)

(assert (=> b!5199751 m!6252694))

(declare-fun m!6252696 () Bool)

(assert (=> b!5199751 m!6252696))

(declare-fun m!6252698 () Bool)

(assert (=> b!5199751 m!6252698))

(declare-fun m!6252700 () Bool)

(assert (=> b!5199751 m!6252700))

(declare-fun m!6252702 () Bool)

(assert (=> b!5199751 m!6252702))

(declare-fun m!6252704 () Bool)

(assert (=> b!5199751 m!6252704))

(declare-fun m!6252706 () Bool)

(assert (=> b!5199751 m!6252706))

(declare-fun m!6252708 () Bool)

(assert (=> b!5199751 m!6252708))

(declare-fun m!6252710 () Bool)

(assert (=> setNonEmpty!32956 m!6252710))

(declare-fun m!6252712 () Bool)

(assert (=> b!5199745 m!6252712))

(declare-fun m!6252714 () Bool)

(assert (=> b!5199757 m!6252714))

(declare-fun m!6252716 () Bool)

(assert (=> b!5199757 m!6252716))

(declare-fun m!6252718 () Bool)

(assert (=> b!5199757 m!6252718))

(declare-fun m!6252720 () Bool)

(assert (=> b!5199740 m!6252720))

(declare-fun m!6252722 () Bool)

(assert (=> b!5199747 m!6252722))

(declare-fun m!6252724 () Bool)

(assert (=> b!5199752 m!6252724))

(declare-fun m!6252726 () Bool)

(assert (=> b!5199752 m!6252726))

(declare-fun m!6252728 () Bool)

(assert (=> b!5199752 m!6252728))

(declare-fun m!6252730 () Bool)

(assert (=> b!5199752 m!6252730))

(assert (=> b!5199752 m!6252726))

(declare-fun m!6252732 () Bool)

(assert (=> b!5199752 m!6252732))

(assert (=> b!5199752 m!6252728))

(declare-fun m!6252734 () Bool)

(assert (=> b!5199752 m!6252734))

(declare-fun m!6252736 () Bool)

(assert (=> start!550102 m!6252736))

(declare-fun m!6252738 () Bool)

(assert (=> b!5199743 m!6252738))

(assert (=> b!5199743 m!6252738))

(declare-fun m!6252740 () Bool)

(assert (=> b!5199743 m!6252740))

(check-sat (not b!5199748) (not b!5199756) (not b!5199757) (not b!5199745) (not b!5199742) (not b!5199751) (not setNonEmpty!32956) (not b!5199743) (not b!5199752) (not b!5199738) tp_is_empty!38803 (not b!5199755) (not b!5199754) (not b!5199747) (not b!5199740) (not b!5199749) (not b!5199746) (not b!5199739) (not b!5199732) (not b!5199734) (not start!550102) (not b!5199744) (not b!5199750) (not b!5199741) (not b!5199733))
(check-sat)
