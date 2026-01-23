; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699864 () Bool)

(assert start!699864)

(declare-fun b!7193700 () Bool)

(assert (=> b!7193700 true))

(declare-fun b!7193691 () Bool)

(declare-datatypes ((Unit!163383 0))(
  ( (Unit!163384) )
))
(declare-fun e!4319841 () Unit!163383)

(declare-fun Unit!163385 () Unit!163383)

(assert (=> b!7193691 (= e!4319841 Unit!163385)))

(declare-fun b!7193692 () Bool)

(declare-fun e!4319843 () Bool)

(assert (=> b!7193692 (= e!4319843 false)))

(declare-fun b!7193693 () Bool)

(declare-fun e!4319840 () Bool)

(declare-fun tp_is_empty!46295 () Bool)

(declare-fun tp!1999612 () Bool)

(assert (=> b!7193693 (= e!4319840 (and tp_is_empty!46295 tp!1999612))))

(declare-fun b!7193694 () Bool)

(declare-fun res!2928647 () Bool)

(declare-fun e!4319837 () Bool)

(assert (=> b!7193694 (=> (not res!2928647) (not e!4319837))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37008 0))(
  ( (C!37009 (val!28452 Int)) )
))
(declare-datatypes ((Regex!18367 0))(
  ( (ElementMatch!18367 (c!1338941 C!37008)) (Concat!27212 (regOne!37246 Regex!18367) (regTwo!37246 Regex!18367)) (EmptyExpr!18367) (Star!18367 (reg!18696 Regex!18367)) (EmptyLang!18367) (Union!18367 (regOne!37247 Regex!18367) (regTwo!37247 Regex!18367)) )
))
(declare-datatypes ((List!69829 0))(
  ( (Nil!69705) (Cons!69705 (h!76153 Regex!18367) (t!383854 List!69829)) )
))
(declare-datatypes ((Context!14638 0))(
  ( (Context!14639 (exprs!7819 List!69829)) )
))
(declare-fun z!3530 () (InoxSet Context!14638))

(declare-fun focus!442 (Regex!18367) (InoxSet Context!14638))

(assert (=> b!7193694 (= res!2928647 (not (= z!3530 (focus!442 EmptyExpr!18367))))))

(declare-fun b!7193695 () Bool)

(declare-fun e!4319842 () Bool)

(declare-fun tp!1999610 () Bool)

(assert (=> b!7193695 (= e!4319842 tp!1999610)))

(declare-fun e!4319838 () Bool)

(declare-fun tp!1999611 () Bool)

(declare-fun setNonEmpty!53283 () Bool)

(declare-fun setElem!53283 () Context!14638)

(declare-fun setRes!53283 () Bool)

(declare-fun inv!88939 (Context!14638) Bool)

(assert (=> setNonEmpty!53283 (= setRes!53283 (and tp!1999611 (inv!88939 setElem!53283) e!4319838))))

(declare-fun setRest!53283 () (InoxSet Context!14638))

(assert (=> setNonEmpty!53283 (= z!3530 ((_ map or) (store ((as const (Array Context!14638 Bool)) false) setElem!53283 true) setRest!53283))))

(declare-fun res!2928646 () Bool)

(assert (=> start!699864 (=> (not res!2928646) (not e!4319837))))

(declare-datatypes ((List!69830 0))(
  ( (Nil!69706) (Cons!69706 (h!76154 Context!14638) (t!383855 List!69830)) )
))
(declare-fun unfocusZipper!2627 (List!69830) Regex!18367)

(declare-fun toList!11310 ((InoxSet Context!14638)) List!69830)

(assert (=> start!699864 (= res!2928646 (= (unfocusZipper!2627 (toList!11310 z!3530)) EmptyExpr!18367))))

(assert (=> start!699864 e!4319837))

(declare-fun condSetEmpty!53283 () Bool)

(assert (=> start!699864 (= condSetEmpty!53283 (= z!3530 ((as const (Array Context!14638 Bool)) false)))))

(assert (=> start!699864 setRes!53283))

(assert (=> start!699864 e!4319840))

(declare-fun b!7193696 () Bool)

(declare-fun e!4319836 () Bool)

(declare-datatypes ((List!69831 0))(
  ( (Nil!69707) (Cons!69707 (h!76155 C!37008) (t!383856 List!69831)) )
))
(declare-fun s!7967 () List!69831)

(declare-fun matchZipper!3365 ((InoxSet Context!14638) List!69831) Bool)

(assert (=> b!7193696 (= e!4319836 (not (not (matchZipper!3365 z!3530 s!7967))))))

(declare-fun lt!2571377 () (InoxSet Context!14638))

(declare-fun lt!2571379 () List!69831)

(assert (=> b!7193696 (not (matchZipper!3365 lt!2571377 lt!2571379))))

(declare-fun lt!2571376 () Unit!163383)

(declare-fun lemmaEmptyZipperMatchesNothing!124 ((InoxSet Context!14638) List!69831) Unit!163383)

(assert (=> b!7193696 (= lt!2571376 (lemmaEmptyZipperMatchesNothing!124 lt!2571377 lt!2571379))))

(declare-fun tail!14084 (List!69831) List!69831)

(assert (=> b!7193696 (= lt!2571379 (tail!14084 s!7967))))

(declare-fun lt!2571378 () Unit!163383)

(assert (=> b!7193696 (= lt!2571378 e!4319841)))

(declare-fun c!1338940 () Bool)

(assert (=> b!7193696 (= c!1338940 (not (= lt!2571377 ((as const (Array Context!14638 Bool)) false))))))

(declare-fun b!7193697 () Bool)

(declare-fun res!2928649 () Bool)

(declare-fun e!4319839 () Bool)

(assert (=> b!7193697 (=> (not res!2928649) (not e!4319839))))

(declare-fun isEmpty!40234 (List!69831) Bool)

(assert (=> b!7193697 (= res!2928649 (not (isEmpty!40234 s!7967)))))

(declare-fun b!7193698 () Bool)

(assert (=> b!7193698 (= e!4319837 e!4319839)))

(declare-fun res!2928645 () Bool)

(assert (=> b!7193698 (=> (not res!2928645) (not e!4319839))))

(declare-fun lt!2571375 () Context!14638)

(assert (=> b!7193698 (= res!2928645 (= z!3530 (store ((as const (Array Context!14638 Bool)) false) lt!2571375 true)))))

(assert (=> b!7193698 (= lt!2571375 (Context!14639 Nil!69705))))

(declare-fun b!7193699 () Bool)

(assert (=> b!7193699 (= e!4319839 e!4319836)))

(declare-fun res!2928650 () Bool)

(assert (=> b!7193699 (=> (not res!2928650) (not e!4319836))))

(declare-fun lt!2571380 () C!37008)

(declare-fun derivationStepZipperUp!2337 (Context!14638 C!37008) (InoxSet Context!14638))

(assert (=> b!7193699 (= res!2928650 (= (derivationStepZipperUp!2337 lt!2571375 lt!2571380) ((as const (Array Context!14638 Bool)) false)))))

(declare-fun derivationStepZipper!3232 ((InoxSet Context!14638) C!37008) (InoxSet Context!14638))

(assert (=> b!7193699 (= lt!2571377 (derivationStepZipper!3232 z!3530 lt!2571380))))

(declare-fun head!14696 (List!69831) C!37008)

(assert (=> b!7193699 (= lt!2571380 (head!14696 s!7967))))

(declare-fun Unit!163386 () Unit!163383)

(assert (=> b!7193700 (= e!4319841 Unit!163386)))

(declare-fun empty!3015 () Context!14638)

(assert (=> b!7193700 (and (inv!88939 empty!3015) e!4319842)))

(assert (=> b!7193700 true))

(declare-fun lambda!437957 () Int)

(declare-fun res!2928648 () Bool)

(declare-fun flatMapPost!74 ((InoxSet Context!14638) Int Context!14638) Context!14638)

(declare-fun head!14697 (List!69830) Context!14638)

(assert (=> b!7193700 (= res!2928648 (= (flatMapPost!74 z!3530 lambda!437957 (head!14697 (toList!11310 lt!2571377))) empty!3015))))

(assert (=> b!7193700 (=> (not res!2928648) (not e!4319843))))

(assert (=> b!7193700 e!4319843))

(declare-fun setIsEmpty!53283 () Bool)

(assert (=> setIsEmpty!53283 setRes!53283))

(declare-fun b!7193701 () Bool)

(declare-fun tp!1999613 () Bool)

(assert (=> b!7193701 (= e!4319838 tp!1999613)))

(assert (= (and start!699864 res!2928646) b!7193694))

(assert (= (and b!7193694 res!2928647) b!7193698))

(assert (= (and b!7193698 res!2928645) b!7193697))

(assert (= (and b!7193697 res!2928649) b!7193699))

(assert (= (and b!7193699 res!2928650) b!7193696))

(assert (= (and b!7193696 c!1338940) b!7193700))

(assert (= (and b!7193696 (not c!1338940)) b!7193691))

(assert (= b!7193700 b!7193695))

(assert (= (and b!7193700 res!2928648) b!7193692))

(assert (= (and start!699864 condSetEmpty!53283) setIsEmpty!53283))

(assert (= (and start!699864 (not condSetEmpty!53283)) setNonEmpty!53283))

(assert (= setNonEmpty!53283 b!7193701))

(get-info :version)

(assert (= (and start!699864 ((_ is Cons!69707) s!7967)) b!7193693))

(declare-fun m!7888298 () Bool)

(assert (=> start!699864 m!7888298))

(assert (=> start!699864 m!7888298))

(declare-fun m!7888300 () Bool)

(assert (=> start!699864 m!7888300))

(declare-fun m!7888302 () Bool)

(assert (=> setNonEmpty!53283 m!7888302))

(declare-fun m!7888304 () Bool)

(assert (=> b!7193696 m!7888304))

(declare-fun m!7888306 () Bool)

(assert (=> b!7193696 m!7888306))

(declare-fun m!7888308 () Bool)

(assert (=> b!7193696 m!7888308))

(declare-fun m!7888310 () Bool)

(assert (=> b!7193696 m!7888310))

(declare-fun m!7888312 () Bool)

(assert (=> b!7193697 m!7888312))

(declare-fun m!7888314 () Bool)

(assert (=> b!7193698 m!7888314))

(declare-fun m!7888316 () Bool)

(assert (=> b!7193699 m!7888316))

(declare-fun m!7888318 () Bool)

(assert (=> b!7193699 m!7888318))

(declare-fun m!7888320 () Bool)

(assert (=> b!7193699 m!7888320))

(declare-fun m!7888322 () Bool)

(assert (=> b!7193700 m!7888322))

(declare-fun m!7888324 () Bool)

(assert (=> b!7193700 m!7888324))

(assert (=> b!7193700 m!7888324))

(declare-fun m!7888326 () Bool)

(assert (=> b!7193700 m!7888326))

(assert (=> b!7193700 m!7888326))

(declare-fun m!7888328 () Bool)

(assert (=> b!7193700 m!7888328))

(declare-fun m!7888330 () Bool)

(assert (=> b!7193694 m!7888330))

(check-sat (not b!7193699) (not setNonEmpty!53283) (not b!7193701) (not b!7193697) (not start!699864) (not b!7193693) (not b!7193694) (not b!7193696) tp_is_empty!46295 (not b!7193700) (not b!7193695))
(check-sat)
(get-model)

(declare-fun d!2240986 () Bool)

(declare-fun e!4319846 () Bool)

(assert (=> d!2240986 e!4319846))

(declare-fun res!2928654 () Bool)

(assert (=> d!2240986 (=> (not res!2928654) (not e!4319846))))

(declare-fun validRegex!9479 (Regex!18367) Bool)

(assert (=> d!2240986 (= res!2928654 (validRegex!9479 EmptyExpr!18367))))

(assert (=> d!2240986 (= (focus!442 EmptyExpr!18367) (store ((as const (Array Context!14638 Bool)) false) (Context!14639 (Cons!69705 EmptyExpr!18367 Nil!69705)) true))))

(declare-fun b!7193706 () Bool)

(assert (=> b!7193706 (= e!4319846 (= (unfocusZipper!2627 (toList!11310 (store ((as const (Array Context!14638 Bool)) false) (Context!14639 (Cons!69705 EmptyExpr!18367 Nil!69705)) true))) EmptyExpr!18367))))

(assert (= (and d!2240986 res!2928654) b!7193706))

(declare-fun m!7888334 () Bool)

(assert (=> d!2240986 m!7888334))

(declare-fun m!7888336 () Bool)

(assert (=> d!2240986 m!7888336))

(assert (=> b!7193706 m!7888336))

(assert (=> b!7193706 m!7888336))

(declare-fun m!7888338 () Bool)

(assert (=> b!7193706 m!7888338))

(assert (=> b!7193706 m!7888338))

(declare-fun m!7888340 () Bool)

(assert (=> b!7193706 m!7888340))

(assert (=> b!7193694 d!2240986))

(declare-fun d!2240992 () Bool)

(declare-fun lambda!437966 () Int)

(declare-fun forall!17195 (List!69829 Int) Bool)

(assert (=> d!2240992 (= (inv!88939 empty!3015) (forall!17195 (exprs!7819 empty!3015) lambda!437966))))

(declare-fun bs!1900378 () Bool)

(assert (= bs!1900378 d!2240992))

(declare-fun m!7888344 () Bool)

(assert (=> bs!1900378 m!7888344))

(assert (=> b!7193700 d!2240992))

(declare-fun d!2240994 () Bool)

(assert (=> d!2240994 true))

(assert (=> d!2240994 true))

(declare-fun lambda!437969 () Int)

(declare-fun order!28715 () Int)

(declare-fun order!28717 () Int)

(declare-fun dynLambda!28393 (Int Int) Int)

(declare-fun dynLambda!28394 (Int Int) Int)

(assert (=> d!2240994 (< (dynLambda!28393 order!28715 lambda!437957) (dynLambda!28394 order!28717 lambda!437969))))

(declare-fun flatMap!2677 ((InoxSet Context!14638) Int) (InoxSet Context!14638))

(declare-fun exists!4089 ((InoxSet Context!14638) Int) Bool)

(assert (=> d!2240994 (= (select (flatMap!2677 z!3530 lambda!437957) (head!14697 (toList!11310 lt!2571377))) (exists!4089 z!3530 lambda!437969))))

(declare-fun lt!2571389 () Context!14638)

(declare-fun choose!55417 ((InoxSet Context!14638) Int Context!14638) Context!14638)

(assert (=> d!2240994 (= lt!2571389 (choose!55417 z!3530 lambda!437957 (head!14697 (toList!11310 lt!2571377))))))

(assert (=> d!2240994 (= (flatMapPost!74 z!3530 lambda!437957 (head!14697 (toList!11310 lt!2571377))) lt!2571389)))

(declare-fun bs!1900379 () Bool)

(assert (= bs!1900379 d!2240994))

(declare-fun m!7888358 () Bool)

(assert (=> bs!1900379 m!7888358))

(assert (=> bs!1900379 m!7888326))

(declare-fun m!7888360 () Bool)

(assert (=> bs!1900379 m!7888360))

(declare-fun m!7888362 () Bool)

(assert (=> bs!1900379 m!7888362))

(assert (=> bs!1900379 m!7888326))

(declare-fun m!7888364 () Bool)

(assert (=> bs!1900379 m!7888364))

(assert (=> b!7193700 d!2240994))

(declare-fun d!2241002 () Bool)

(assert (=> d!2241002 (= (head!14697 (toList!11310 lt!2571377)) (h!76154 (toList!11310 lt!2571377)))))

(assert (=> b!7193700 d!2241002))

(declare-fun d!2241004 () Bool)

(declare-fun e!4319855 () Bool)

(assert (=> d!2241004 e!4319855))

(declare-fun res!2928664 () Bool)

(assert (=> d!2241004 (=> (not res!2928664) (not e!4319855))))

(declare-fun lt!2571392 () List!69830)

(declare-fun noDuplicate!2898 (List!69830) Bool)

(assert (=> d!2241004 (= res!2928664 (noDuplicate!2898 lt!2571392))))

(declare-fun choose!55418 ((InoxSet Context!14638)) List!69830)

(assert (=> d!2241004 (= lt!2571392 (choose!55418 lt!2571377))))

(assert (=> d!2241004 (= (toList!11310 lt!2571377) lt!2571392)))

(declare-fun b!7193725 () Bool)

(declare-fun content!14327 (List!69830) (InoxSet Context!14638))

(assert (=> b!7193725 (= e!4319855 (= (content!14327 lt!2571392) lt!2571377))))

(assert (= (and d!2241004 res!2928664) b!7193725))

(declare-fun m!7888374 () Bool)

(assert (=> d!2241004 m!7888374))

(declare-fun m!7888376 () Bool)

(assert (=> d!2241004 m!7888376))

(declare-fun m!7888378 () Bool)

(assert (=> b!7193725 m!7888378))

(assert (=> b!7193700 d!2241004))

(declare-fun b!7193746 () Bool)

(declare-fun e!4319869 () (InoxSet Context!14638))

(declare-fun call!655983 () (InoxSet Context!14638))

(assert (=> b!7193746 (= e!4319869 call!655983)))

(declare-fun d!2241008 () Bool)

(declare-fun c!1338951 () Bool)

(declare-fun e!4319868 () Bool)

(assert (=> d!2241008 (= c!1338951 e!4319868)))

(declare-fun res!2928669 () Bool)

(assert (=> d!2241008 (=> (not res!2928669) (not e!4319868))))

(assert (=> d!2241008 (= res!2928669 ((_ is Cons!69705) (exprs!7819 lt!2571375)))))

(declare-fun e!4319870 () (InoxSet Context!14638))

(assert (=> d!2241008 (= (derivationStepZipperUp!2337 lt!2571375 lt!2571380) e!4319870)))

(declare-fun b!7193747 () Bool)

(assert (=> b!7193747 (= e!4319869 ((as const (Array Context!14638 Bool)) false))))

(declare-fun b!7193748 () Bool)

(declare-fun nullable!7787 (Regex!18367) Bool)

(assert (=> b!7193748 (= e!4319868 (nullable!7787 (h!76153 (exprs!7819 lt!2571375))))))

(declare-fun bm!655978 () Bool)

(declare-fun derivationStepZipperDown!2518 (Regex!18367 Context!14638 C!37008) (InoxSet Context!14638))

(assert (=> bm!655978 (= call!655983 (derivationStepZipperDown!2518 (h!76153 (exprs!7819 lt!2571375)) (Context!14639 (t!383854 (exprs!7819 lt!2571375))) lt!2571380))))

(declare-fun b!7193749 () Bool)

(assert (=> b!7193749 (= e!4319870 ((_ map or) call!655983 (derivationStepZipperUp!2337 (Context!14639 (t!383854 (exprs!7819 lt!2571375))) lt!2571380)))))

(declare-fun b!7193750 () Bool)

(assert (=> b!7193750 (= e!4319870 e!4319869)))

(declare-fun c!1338950 () Bool)

(assert (=> b!7193750 (= c!1338950 ((_ is Cons!69705) (exprs!7819 lt!2571375)))))

(assert (= (and d!2241008 res!2928669) b!7193748))

(assert (= (and d!2241008 c!1338951) b!7193749))

(assert (= (and d!2241008 (not c!1338951)) b!7193750))

(assert (= (and b!7193750 c!1338950) b!7193746))

(assert (= (and b!7193750 (not c!1338950)) b!7193747))

(assert (= (or b!7193749 b!7193746) bm!655978))

(declare-fun m!7888380 () Bool)

(assert (=> b!7193748 m!7888380))

(declare-fun m!7888382 () Bool)

(assert (=> bm!655978 m!7888382))

(declare-fun m!7888384 () Bool)

(assert (=> b!7193749 m!7888384))

(assert (=> b!7193699 d!2241008))

(declare-fun bs!1900380 () Bool)

(declare-fun d!2241012 () Bool)

(assert (= bs!1900380 (and d!2241012 b!7193700)))

(declare-fun lambda!437974 () Int)

(assert (=> bs!1900380 (= lambda!437974 lambda!437957)))

(assert (=> d!2241012 true))

(assert (=> d!2241012 (= (derivationStepZipper!3232 z!3530 lt!2571380) (flatMap!2677 z!3530 lambda!437974))))

(declare-fun bs!1900381 () Bool)

(assert (= bs!1900381 d!2241012))

(declare-fun m!7888392 () Bool)

(assert (=> bs!1900381 m!7888392))

(assert (=> b!7193699 d!2241012))

(declare-fun d!2241016 () Bool)

(assert (=> d!2241016 (= (head!14696 s!7967) (h!76155 s!7967))))

(assert (=> b!7193699 d!2241016))

(declare-fun d!2241020 () Bool)

(declare-fun c!1338960 () Bool)

(assert (=> d!2241020 (= c!1338960 (isEmpty!40234 s!7967))))

(declare-fun e!4319877 () Bool)

(assert (=> d!2241020 (= (matchZipper!3365 z!3530 s!7967) e!4319877)))

(declare-fun b!7193761 () Bool)

(declare-fun nullableZipper!2784 ((InoxSet Context!14638)) Bool)

(assert (=> b!7193761 (= e!4319877 (nullableZipper!2784 z!3530))))

(declare-fun b!7193762 () Bool)

(assert (=> b!7193762 (= e!4319877 (matchZipper!3365 (derivationStepZipper!3232 z!3530 (head!14696 s!7967)) (tail!14084 s!7967)))))

(assert (= (and d!2241020 c!1338960) b!7193761))

(assert (= (and d!2241020 (not c!1338960)) b!7193762))

(assert (=> d!2241020 m!7888312))

(declare-fun m!7888410 () Bool)

(assert (=> b!7193761 m!7888410))

(assert (=> b!7193762 m!7888320))

(assert (=> b!7193762 m!7888320))

(declare-fun m!7888412 () Bool)

(assert (=> b!7193762 m!7888412))

(assert (=> b!7193762 m!7888310))

(assert (=> b!7193762 m!7888412))

(assert (=> b!7193762 m!7888310))

(declare-fun m!7888414 () Bool)

(assert (=> b!7193762 m!7888414))

(assert (=> b!7193696 d!2241020))

(declare-fun d!2241030 () Bool)

(declare-fun c!1338961 () Bool)

(assert (=> d!2241030 (= c!1338961 (isEmpty!40234 lt!2571379))))

(declare-fun e!4319878 () Bool)

(assert (=> d!2241030 (= (matchZipper!3365 lt!2571377 lt!2571379) e!4319878)))

(declare-fun b!7193763 () Bool)

(assert (=> b!7193763 (= e!4319878 (nullableZipper!2784 lt!2571377))))

(declare-fun b!7193764 () Bool)

(assert (=> b!7193764 (= e!4319878 (matchZipper!3365 (derivationStepZipper!3232 lt!2571377 (head!14696 lt!2571379)) (tail!14084 lt!2571379)))))

(assert (= (and d!2241030 c!1338961) b!7193763))

(assert (= (and d!2241030 (not c!1338961)) b!7193764))

(declare-fun m!7888416 () Bool)

(assert (=> d!2241030 m!7888416))

(declare-fun m!7888418 () Bool)

(assert (=> b!7193763 m!7888418))

(declare-fun m!7888420 () Bool)

(assert (=> b!7193764 m!7888420))

(assert (=> b!7193764 m!7888420))

(declare-fun m!7888422 () Bool)

(assert (=> b!7193764 m!7888422))

(declare-fun m!7888424 () Bool)

(assert (=> b!7193764 m!7888424))

(assert (=> b!7193764 m!7888422))

(assert (=> b!7193764 m!7888424))

(declare-fun m!7888426 () Bool)

(assert (=> b!7193764 m!7888426))

(assert (=> b!7193696 d!2241030))

(declare-fun d!2241032 () Bool)

(assert (=> d!2241032 (not (matchZipper!3365 lt!2571377 lt!2571379))))

(declare-fun lt!2571399 () Unit!163383)

(declare-fun choose!55419 ((InoxSet Context!14638) List!69831) Unit!163383)

(assert (=> d!2241032 (= lt!2571399 (choose!55419 lt!2571377 lt!2571379))))

(assert (=> d!2241032 (= lt!2571377 ((as const (Array Context!14638 Bool)) false))))

(assert (=> d!2241032 (= (lemmaEmptyZipperMatchesNothing!124 lt!2571377 lt!2571379) lt!2571399)))

(declare-fun bs!1900387 () Bool)

(assert (= bs!1900387 d!2241032))

(assert (=> bs!1900387 m!7888306))

(declare-fun m!7888446 () Bool)

(assert (=> bs!1900387 m!7888446))

(assert (=> b!7193696 d!2241032))

(declare-fun d!2241038 () Bool)

(assert (=> d!2241038 (= (tail!14084 s!7967) (t!383856 s!7967))))

(assert (=> b!7193696 d!2241038))

(declare-fun bs!1900388 () Bool)

(declare-fun d!2241040 () Bool)

(assert (= bs!1900388 (and d!2241040 d!2240992)))

(declare-fun lambda!437977 () Int)

(assert (=> bs!1900388 (= lambda!437977 lambda!437966)))

(assert (=> d!2241040 (= (inv!88939 setElem!53283) (forall!17195 (exprs!7819 setElem!53283) lambda!437977))))

(declare-fun bs!1900389 () Bool)

(assert (= bs!1900389 d!2241040))

(declare-fun m!7888448 () Bool)

(assert (=> bs!1900389 m!7888448))

(assert (=> setNonEmpty!53283 d!2241040))

(declare-fun d!2241042 () Bool)

(declare-fun lt!2571404 () Regex!18367)

(assert (=> d!2241042 (validRegex!9479 lt!2571404)))

(declare-fun generalisedUnion!2782 (List!69829) Regex!18367)

(declare-fun unfocusZipperList!2338 (List!69830) List!69829)

(assert (=> d!2241042 (= lt!2571404 (generalisedUnion!2782 (unfocusZipperList!2338 (toList!11310 z!3530))))))

(assert (=> d!2241042 (= (unfocusZipper!2627 (toList!11310 z!3530)) lt!2571404)))

(declare-fun bs!1900390 () Bool)

(assert (= bs!1900390 d!2241042))

(declare-fun m!7888450 () Bool)

(assert (=> bs!1900390 m!7888450))

(assert (=> bs!1900390 m!7888298))

(declare-fun m!7888452 () Bool)

(assert (=> bs!1900390 m!7888452))

(assert (=> bs!1900390 m!7888452))

(declare-fun m!7888454 () Bool)

(assert (=> bs!1900390 m!7888454))

(assert (=> start!699864 d!2241042))

(declare-fun d!2241044 () Bool)

(declare-fun e!4319883 () Bool)

(assert (=> d!2241044 e!4319883))

(declare-fun res!2928672 () Bool)

(assert (=> d!2241044 (=> (not res!2928672) (not e!4319883))))

(declare-fun lt!2571405 () List!69830)

(assert (=> d!2241044 (= res!2928672 (noDuplicate!2898 lt!2571405))))

(assert (=> d!2241044 (= lt!2571405 (choose!55418 z!3530))))

(assert (=> d!2241044 (= (toList!11310 z!3530) lt!2571405)))

(declare-fun b!7193773 () Bool)

(assert (=> b!7193773 (= e!4319883 (= (content!14327 lt!2571405) z!3530))))

(assert (= (and d!2241044 res!2928672) b!7193773))

(declare-fun m!7888456 () Bool)

(assert (=> d!2241044 m!7888456))

(declare-fun m!7888460 () Bool)

(assert (=> d!2241044 m!7888460))

(declare-fun m!7888462 () Bool)

(assert (=> b!7193773 m!7888462))

(assert (=> start!699864 d!2241044))

(declare-fun d!2241048 () Bool)

(assert (=> d!2241048 (= (isEmpty!40234 s!7967) ((_ is Nil!69707) s!7967))))

(assert (=> b!7193697 d!2241048))

(declare-fun b!7193783 () Bool)

(declare-fun e!4319889 () Bool)

(declare-fun tp!1999624 () Bool)

(declare-fun tp!1999625 () Bool)

(assert (=> b!7193783 (= e!4319889 (and tp!1999624 tp!1999625))))

(assert (=> b!7193695 (= tp!1999610 e!4319889)))

(assert (= (and b!7193695 ((_ is Cons!69705) (exprs!7819 empty!3015))) b!7193783))

(declare-fun condSetEmpty!53289 () Bool)

(assert (=> setNonEmpty!53283 (= condSetEmpty!53289 (= setRest!53283 ((as const (Array Context!14638 Bool)) false)))))

(declare-fun setRes!53289 () Bool)

(assert (=> setNonEmpty!53283 (= tp!1999611 setRes!53289)))

(declare-fun setIsEmpty!53289 () Bool)

(assert (=> setIsEmpty!53289 setRes!53289))

(declare-fun tp!1999637 () Bool)

(declare-fun e!4319895 () Bool)

(declare-fun setNonEmpty!53289 () Bool)

(declare-fun setElem!53289 () Context!14638)

(assert (=> setNonEmpty!53289 (= setRes!53289 (and tp!1999637 (inv!88939 setElem!53289) e!4319895))))

(declare-fun setRest!53289 () (InoxSet Context!14638))

(assert (=> setNonEmpty!53289 (= setRest!53283 ((_ map or) (store ((as const (Array Context!14638 Bool)) false) setElem!53289 true) setRest!53289))))

(declare-fun b!7193793 () Bool)

(declare-fun tp!1999636 () Bool)

(assert (=> b!7193793 (= e!4319895 tp!1999636)))

(assert (= (and setNonEmpty!53283 condSetEmpty!53289) setIsEmpty!53289))

(assert (= (and setNonEmpty!53283 (not condSetEmpty!53289)) setNonEmpty!53289))

(assert (= setNonEmpty!53289 b!7193793))

(declare-fun m!7888466 () Bool)

(assert (=> setNonEmpty!53289 m!7888466))

(declare-fun b!7193804 () Bool)

(declare-fun e!4319902 () Bool)

(declare-fun tp!1999645 () Bool)

(assert (=> b!7193804 (= e!4319902 (and tp_is_empty!46295 tp!1999645))))

(assert (=> b!7193693 (= tp!1999612 e!4319902)))

(assert (= (and b!7193693 ((_ is Cons!69707) (t!383856 s!7967))) b!7193804))

(declare-fun b!7193805 () Bool)

(declare-fun e!4319903 () Bool)

(declare-fun tp!1999646 () Bool)

(declare-fun tp!1999647 () Bool)

(assert (=> b!7193805 (= e!4319903 (and tp!1999646 tp!1999647))))

(assert (=> b!7193701 (= tp!1999613 e!4319903)))

(assert (= (and b!7193701 ((_ is Cons!69705) (exprs!7819 setElem!53283))) b!7193805))

(check-sat (not b!7193748) (not d!2241040) (not setNonEmpty!53289) (not b!7193805) (not b!7193783) (not b!7193763) (not b!7193804) (not d!2241030) (not d!2240992) (not d!2241012) (not d!2240986) (not b!7193725) (not b!7193764) tp_is_empty!46295 (not d!2241020) (not d!2241042) (not d!2240994) (not b!7193762) (not bm!655978) (not b!7193793) (not b!7193706) (not b!7193761) (not b!7193749) (not d!2241032) (not d!2241044) (not b!7193773) (not d!2241004))
(check-sat)
