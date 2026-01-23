; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549998 () Bool)

(assert start!549998)

(declare-fun b!5198645 () Bool)

(assert (=> b!5198645 true))

(assert (=> b!5198645 true))

(declare-fun lambda!260300 () Int)

(declare-fun lambda!260299 () Int)

(assert (=> b!5198645 (not (= lambda!260300 lambda!260299))))

(assert (=> b!5198645 true))

(assert (=> b!5198645 true))

(declare-fun b!5198627 () Bool)

(assert (=> b!5198627 true))

(declare-fun b!5198622 () Bool)

(declare-fun e!3237425 () Bool)

(declare-fun e!3237413 () Bool)

(assert (=> b!5198622 (= e!3237425 e!3237413)))

(declare-fun res!2208485 () Bool)

(assert (=> b!5198622 (=> res!2208485 e!3237413)))

(declare-fun lt!2139992 () Int)

(declare-fun lt!2139977 () Int)

(assert (=> b!5198622 (= res!2208485 (>= lt!2139992 lt!2139977))))

(declare-datatypes ((C!29812 0))(
  ( (C!29813 (val!24608 Int)) )
))
(declare-datatypes ((Regex!14771 0))(
  ( (ElementMatch!14771 (c!895996 C!29812)) (Concat!23616 (regOne!30054 Regex!14771) (regTwo!30054 Regex!14771)) (EmptyExpr!14771) (Star!14771 (reg!15100 Regex!14771)) (EmptyLang!14771) (Union!14771 (regOne!30055 Regex!14771) (regTwo!30055 Regex!14771)) )
))
(declare-datatypes ((List!60612 0))(
  ( (Nil!60488) (Cons!60488 (h!66936 Regex!14771) (t!373765 List!60612)) )
))
(declare-datatypes ((Context!8310 0))(
  ( (Context!8311 (exprs!4655 List!60612)) )
))
(declare-fun lt!2140003 () Context!8310)

(declare-datatypes ((List!60613 0))(
  ( (Nil!60489) (Cons!60489 (h!66937 Context!8310) (t!373766 List!60613)) )
))
(declare-fun zipperDepth!6 (List!60613) Int)

(assert (=> b!5198622 (= lt!2139977 (zipperDepth!6 (Cons!60489 lt!2140003 Nil!60489)))))

(declare-fun lt!2139989 () List!60613)

(assert (=> b!5198622 (= lt!2139992 (zipperDepth!6 lt!2139989))))

(declare-fun lt!2140007 () Context!8310)

(assert (=> b!5198622 (= lt!2139989 (Cons!60489 lt!2140007 Nil!60489))))

(declare-fun b!5198623 () Bool)

(declare-fun e!3237422 () Bool)

(assert (=> b!5198623 (= e!3237413 e!3237422)))

(declare-fun res!2208498 () Bool)

(assert (=> b!5198623 (=> res!2208498 e!3237422)))

(declare-fun lt!2140000 () List!60613)

(assert (=> b!5198623 (= res!2208498 (>= (zipperDepth!6 lt!2140000) lt!2139977))))

(declare-fun lt!2139976 () Context!8310)

(assert (=> b!5198623 (= lt!2140000 (Cons!60489 lt!2139976 Nil!60489))))

(declare-fun e!3237418 () Bool)

(declare-fun tp!1458252 () Bool)

(declare-fun setNonEmpty!32938 () Bool)

(declare-fun setRes!32938 () Bool)

(declare-fun setElem!32938 () Context!8310)

(declare-fun inv!80174 (Context!8310) Bool)

(assert (=> setNonEmpty!32938 (= setRes!32938 (and tp!1458252 (inv!80174 setElem!32938) e!3237418))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8310))

(declare-fun setRest!32938 () (InoxSet Context!8310))

(assert (=> setNonEmpty!32938 (= z!1189 ((_ map or) (store ((as const (Array Context!8310 Bool)) false) setElem!32938 true) setRest!32938))))

(declare-fun b!5198624 () Bool)

(declare-fun e!3237420 () Bool)

(assert (=> b!5198624 (= e!3237420 e!3237425)))

(declare-fun res!2208491 () Bool)

(assert (=> b!5198624 (=> res!2208491 e!3237425)))

(declare-fun lt!2140006 () Int)

(declare-fun lt!2139999 () Int)

(assert (=> b!5198624 (= res!2208491 (>= lt!2140006 lt!2139999))))

(declare-fun contextDepth!6 (Context!8310) Int)

(assert (=> b!5198624 (= lt!2139999 (contextDepth!6 lt!2140003))))

(assert (=> b!5198624 (= lt!2140006 (contextDepth!6 lt!2140007))))

(declare-fun b!5198625 () Bool)

(declare-fun res!2208511 () Bool)

(declare-fun e!3237424 () Bool)

(assert (=> b!5198625 (=> res!2208511 e!3237424)))

(declare-fun lt!2139979 () (InoxSet Context!8310))

(declare-fun lt!2139975 () (InoxSet Context!8310))

(declare-fun lt!2139984 () (InoxSet Context!8310))

(declare-fun lt!2140005 () (InoxSet Context!8310))

(declare-fun lt!2140009 () (InoxSet Context!8310))

(assert (=> b!5198625 (= res!2208511 (or (not (= lt!2139975 ((_ map or) lt!2140009 lt!2139979))) (not (= lt!2139975 lt!2140005)) (not (= lt!2139975 lt!2139984))))))

(declare-fun b!5198626 () Bool)

(declare-fun e!3237416 () Bool)

(declare-fun tp_is_empty!38795 () Bool)

(declare-fun tp!1458246 () Bool)

(assert (=> b!5198626 (= e!3237416 (and tp_is_empty!38795 tp!1458246))))

(declare-fun e!3237412 () Bool)

(declare-fun e!3237414 () Bool)

(assert (=> b!5198627 (= e!3237412 e!3237414)))

(declare-fun res!2208495 () Bool)

(assert (=> b!5198627 (=> res!2208495 e!3237414)))

(declare-fun lt!2140010 () (InoxSet Context!8310))

(assert (=> b!5198627 (= res!2208495 (not (= lt!2139984 lt!2140010)))))

(declare-fun lambda!260301 () Int)

(declare-datatypes ((List!60614 0))(
  ( (Nil!60490) (Cons!60490 (h!66938 C!29812) (t!373767 List!60614)) )
))
(declare-fun s!2326 () List!60614)

(declare-fun zl!343 () List!60613)

(declare-fun flatMap!502 ((InoxSet Context!8310) Int) (InoxSet Context!8310))

(declare-fun derivationStepZipperUp!143 (Context!8310 C!29812) (InoxSet Context!8310))

(assert (=> b!5198627 (= (flatMap!502 z!1189 lambda!260301) (derivationStepZipperUp!143 (h!66937 zl!343) (h!66938 s!2326)))))

(declare-datatypes ((Unit!152376 0))(
  ( (Unit!152377) )
))
(declare-fun lt!2139986 () Unit!152376)

(declare-fun lemmaFlatMapOnSingletonSet!34 ((InoxSet Context!8310) Context!8310 Int) Unit!152376)

(assert (=> b!5198627 (= lt!2139986 (lemmaFlatMapOnSingletonSet!34 z!1189 (h!66937 zl!343) lambda!260301))))

(declare-fun b!5198628 () Bool)

(declare-fun e!3237408 () Bool)

(declare-fun e!3237415 () Bool)

(assert (=> b!5198628 (= e!3237408 e!3237415)))

(declare-fun res!2208487 () Bool)

(assert (=> b!5198628 (=> res!2208487 e!3237415)))

(assert (=> b!5198628 (= res!2208487 (not (= lt!2139984 lt!2140005)))))

(declare-fun lt!2140008 () (InoxSet Context!8310))

(assert (=> b!5198628 (= lt!2140005 ((_ map or) lt!2140009 lt!2140008))))

(declare-fun b!5198629 () Bool)

(declare-fun e!3237407 () Bool)

(declare-fun tp!1458249 () Bool)

(declare-fun tp!1458251 () Bool)

(assert (=> b!5198629 (= e!3237407 (and tp!1458249 tp!1458251))))

(declare-fun res!2208497 () Bool)

(declare-fun e!3237421 () Bool)

(assert (=> start!549998 (=> (not res!2208497) (not e!3237421))))

(declare-fun r!7292 () Regex!14771)

(declare-fun validRegex!6507 (Regex!14771) Bool)

(assert (=> start!549998 (= res!2208497 (validRegex!6507 r!7292))))

(assert (=> start!549998 e!3237421))

(assert (=> start!549998 e!3237407))

(declare-fun condSetEmpty!32938 () Bool)

(assert (=> start!549998 (= condSetEmpty!32938 (= z!1189 ((as const (Array Context!8310 Bool)) false)))))

(assert (=> start!549998 setRes!32938))

(declare-fun e!3237410 () Bool)

(assert (=> start!549998 e!3237410))

(assert (=> start!549998 e!3237416))

(declare-fun b!5198630 () Bool)

(declare-fun e!3237409 () Bool)

(declare-fun matchZipper!1023 ((InoxSet Context!8310) List!60614) Bool)

(assert (=> b!5198630 (= e!3237409 (matchZipper!1023 lt!2140008 (t!373767 s!2326)))))

(declare-fun b!5198631 () Bool)

(declare-fun res!2208507 () Bool)

(declare-fun e!3237423 () Bool)

(assert (=> b!5198631 (=> res!2208507 e!3237423)))

(declare-fun generalisedUnion!700 (List!60612) Regex!14771)

(declare-fun unfocusZipperList!213 (List!60613) List!60612)

(assert (=> b!5198631 (= res!2208507 (not (= r!7292 (generalisedUnion!700 (unfocusZipperList!213 zl!343)))))))

(declare-fun b!5198632 () Bool)

(declare-fun e!3237405 () Bool)

(assert (=> b!5198632 (= e!3237405 true)))

(declare-fun lt!2139982 () Bool)

(declare-fun matchR!6956 (Regex!14771 List!60614) Bool)

(assert (=> b!5198632 (= (matchR!6956 (regTwo!30054 r!7292) s!2326) lt!2139982)))

(declare-fun lt!2139988 () (InoxSet Context!8310))

(declare-fun lt!2140004 () Unit!152376)

(declare-fun theoremZipperRegexEquiv!251 ((InoxSet Context!8310) List!60613 Regex!14771 List!60614) Unit!152376)

(assert (=> b!5198632 (= lt!2140004 (theoremZipperRegexEquiv!251 lt!2139988 lt!2140000 (regTwo!30054 r!7292) s!2326))))

(declare-fun b!5198633 () Bool)

(declare-fun e!3237406 () Bool)

(assert (=> b!5198633 (= e!3237422 e!3237406)))

(declare-fun res!2208506 () Bool)

(assert (=> b!5198633 (=> res!2208506 e!3237406)))

(declare-fun lt!2139981 () Regex!14771)

(declare-fun regexDepth!151 (Regex!14771) Int)

(assert (=> b!5198633 (= res!2208506 (not (= (regexDepth!151 r!7292) (regexDepth!151 lt!2139981))))))

(assert (=> b!5198633 (= lt!2139981 (Concat!23616 (regOne!30054 r!7292) (regTwo!30054 r!7292)))))

(declare-fun b!5198634 () Bool)

(assert (=> b!5198634 (= e!3237407 tp_is_empty!38795)))

(declare-fun b!5198635 () Bool)

(declare-fun e!3237417 () Bool)

(assert (=> b!5198635 (= e!3237424 e!3237417)))

(declare-fun res!2208501 () Bool)

(assert (=> b!5198635 (=> res!2208501 e!3237417)))

(declare-fun lt!2139994 () Bool)

(declare-fun lt!2139987 () (InoxSet Context!8310))

(declare-fun derivationStepZipper!1051 ((InoxSet Context!8310) C!29812) (InoxSet Context!8310))

(assert (=> b!5198635 (= res!2208501 (not (= lt!2139994 (matchZipper!1023 (derivationStepZipper!1051 lt!2139987 (h!66938 s!2326)) (t!373767 s!2326)))))))

(assert (=> b!5198635 (= lt!2139994 (matchZipper!1023 lt!2139987 s!2326))))

(declare-fun b!5198636 () Bool)

(declare-fun res!2208490 () Bool)

(assert (=> b!5198636 (=> (not res!2208490) (not e!3237421))))

(declare-fun toList!8555 ((InoxSet Context!8310)) List!60613)

(assert (=> b!5198636 (= res!2208490 (= (toList!8555 z!1189) zl!343))))

(declare-fun b!5198637 () Bool)

(assert (=> b!5198637 (= e!3237406 e!3237405)))

(declare-fun res!2208509 () Bool)

(assert (=> b!5198637 (=> res!2208509 e!3237405)))

(assert (=> b!5198637 (= res!2208509 (not (validRegex!6507 (regTwo!30054 r!7292))))))

(assert (=> b!5198637 (= (matchR!6956 lt!2139981 s!2326) lt!2139994)))

(declare-fun lt!2139993 () Unit!152376)

(assert (=> b!5198637 (= lt!2139993 (theoremZipperRegexEquiv!251 lt!2139987 lt!2139989 lt!2139981 s!2326))))

(declare-fun b!5198638 () Bool)

(declare-fun res!2208505 () Bool)

(assert (=> b!5198638 (=> res!2208505 e!3237423)))

(get-info :version)

(assert (=> b!5198638 (= res!2208505 (not ((_ is Cons!60488) (exprs!4655 (h!66937 zl!343)))))))

(declare-fun b!5198639 () Bool)

(declare-fun res!2208488 () Bool)

(assert (=> b!5198639 (=> res!2208488 e!3237405)))

(declare-fun unfocusZipper!513 (List!60613) Regex!14771)

(assert (=> b!5198639 (= res!2208488 (not (= (regTwo!30054 r!7292) (unfocusZipper!513 lt!2140000))))))

(declare-fun setIsEmpty!32938 () Bool)

(assert (=> setIsEmpty!32938 setRes!32938))

(declare-fun b!5198640 () Bool)

(declare-fun tp!1458248 () Bool)

(assert (=> b!5198640 (= e!3237407 tp!1458248)))

(declare-fun b!5198641 () Bool)

(declare-fun res!2208486 () Bool)

(declare-fun e!3237419 () Bool)

(assert (=> b!5198641 (=> res!2208486 e!3237419)))

(declare-fun isEmpty!32402 (List!60612) Bool)

(assert (=> b!5198641 (= res!2208486 (not (isEmpty!32402 (t!373765 (exprs!4655 (h!66937 zl!343))))))))

(declare-fun b!5198642 () Bool)

(declare-fun tp!1458250 () Bool)

(assert (=> b!5198642 (= e!3237418 tp!1458250)))

(declare-fun tp!1458245 () Bool)

(declare-fun b!5198643 () Bool)

(declare-fun e!3237411 () Bool)

(assert (=> b!5198643 (= e!3237410 (and (inv!80174 (h!66937 zl!343)) e!3237411 tp!1458245))))

(declare-fun b!5198644 () Bool)

(assert (=> b!5198644 (= e!3237419 e!3237412)))

(declare-fun res!2208502 () Bool)

(assert (=> b!5198644 (=> res!2208502 e!3237412)))

(declare-fun lt!2139983 () (InoxSet Context!8310))

(assert (=> b!5198644 (= res!2208502 (not (= lt!2139983 lt!2140010)))))

(declare-fun lt!2139978 () Context!8310)

(declare-fun derivationStepZipperDown!220 (Regex!14771 Context!8310 C!29812) (InoxSet Context!8310))

(assert (=> b!5198644 (= lt!2140010 (derivationStepZipperDown!220 r!7292 lt!2139978 (h!66938 s!2326)))))

(assert (=> b!5198644 (= lt!2139978 (Context!8311 Nil!60488))))

(assert (=> b!5198644 (= lt!2139983 (derivationStepZipperUp!143 lt!2140003 (h!66938 s!2326)))))

(assert (=> b!5198644 (= lt!2140003 (Context!8311 (Cons!60488 r!7292 Nil!60488)))))

(assert (=> b!5198644 (= lt!2139984 (derivationStepZipper!1051 z!1189 (h!66938 s!2326)))))

(assert (=> b!5198645 (= e!3237423 e!3237419)))

(declare-fun res!2208493 () Bool)

(assert (=> b!5198645 (=> res!2208493 e!3237419)))

(declare-fun lt!2139985 () Bool)

(declare-fun lt!2139980 () Bool)

(assert (=> b!5198645 (= res!2208493 (or (not (= lt!2139980 lt!2139985)) ((_ is Nil!60490) s!2326)))))

(declare-fun Exists!1952 (Int) Bool)

(assert (=> b!5198645 (= (Exists!1952 lambda!260299) (Exists!1952 lambda!260300))))

(declare-fun lt!2139974 () Unit!152376)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!606 (Regex!14771 Regex!14771 List!60614) Unit!152376)

(assert (=> b!5198645 (= lt!2139974 (lemmaExistCutMatchRandMatchRSpecEquivalent!606 (regOne!30054 r!7292) (regTwo!30054 r!7292) s!2326))))

(assert (=> b!5198645 (= lt!2139985 (Exists!1952 lambda!260299))))

(declare-datatypes ((tuple2!63940 0))(
  ( (tuple2!63941 (_1!35273 List!60614) (_2!35273 List!60614)) )
))
(declare-datatypes ((Option!14882 0))(
  ( (None!14881) (Some!14881 (v!50910 tuple2!63940)) )
))
(declare-fun isDefined!11585 (Option!14882) Bool)

(declare-fun findConcatSeparation!1296 (Regex!14771 Regex!14771 List!60614 List!60614 List!60614) Option!14882)

(assert (=> b!5198645 (= lt!2139985 (isDefined!11585 (findConcatSeparation!1296 (regOne!30054 r!7292) (regTwo!30054 r!7292) Nil!60490 s!2326 s!2326)))))

(declare-fun lt!2139990 () Unit!152376)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1060 (Regex!14771 Regex!14771 List!60614) Unit!152376)

(assert (=> b!5198645 (= lt!2139990 (lemmaFindConcatSeparationEquivalentToExists!1060 (regOne!30054 r!7292) (regTwo!30054 r!7292) s!2326))))

(declare-fun b!5198646 () Bool)

(declare-fun res!2208504 () Bool)

(assert (=> b!5198646 (=> res!2208504 e!3237423)))

(declare-fun isEmpty!32403 (List!60613) Bool)

(assert (=> b!5198646 (= res!2208504 (not (isEmpty!32403 (t!373766 zl!343))))))

(declare-fun b!5198647 () Bool)

(declare-fun tp!1458253 () Bool)

(assert (=> b!5198647 (= e!3237411 tp!1458253)))

(declare-fun b!5198648 () Bool)

(declare-fun res!2208500 () Bool)

(assert (=> b!5198648 (=> res!2208500 e!3237405)))

(assert (=> b!5198648 (= res!2208500 (not (= (toList!8555 lt!2139988) lt!2140000)))))

(declare-fun b!5198649 () Bool)

(declare-fun res!2208503 () Bool)

(assert (=> b!5198649 (=> res!2208503 e!3237413)))

(assert (=> b!5198649 (= res!2208503 (>= (contextDepth!6 lt!2139976) lt!2139999))))

(declare-fun b!5198650 () Bool)

(declare-fun tp!1458244 () Bool)

(declare-fun tp!1458247 () Bool)

(assert (=> b!5198650 (= e!3237407 (and tp!1458244 tp!1458247))))

(declare-fun b!5198651 () Bool)

(declare-fun res!2208512 () Bool)

(assert (=> b!5198651 (=> (not res!2208512) (not e!3237421))))

(assert (=> b!5198651 (= res!2208512 (= r!7292 (unfocusZipper!513 zl!343)))))

(declare-fun b!5198652 () Bool)

(assert (=> b!5198652 (= e!3237421 (not e!3237423))))

(declare-fun res!2208510 () Bool)

(assert (=> b!5198652 (=> res!2208510 e!3237423)))

(assert (=> b!5198652 (= res!2208510 (not ((_ is Cons!60489) zl!343)))))

(declare-fun matchRSpec!1874 (Regex!14771 List!60614) Bool)

(assert (=> b!5198652 (= lt!2139980 (matchRSpec!1874 r!7292 s!2326))))

(assert (=> b!5198652 (= lt!2139980 (matchR!6956 r!7292 s!2326))))

(declare-fun lt!2140011 () Unit!152376)

(declare-fun mainMatchTheorem!1874 (Regex!14771 List!60614) Unit!152376)

(assert (=> b!5198652 (= lt!2140011 (mainMatchTheorem!1874 r!7292 s!2326))))

(declare-fun b!5198653 () Bool)

(assert (=> b!5198653 (= e!3237417 e!3237420)))

(declare-fun res!2208499 () Bool)

(assert (=> b!5198653 (=> res!2208499 e!3237420)))

(assert (=> b!5198653 (= res!2208499 (not (= lt!2139982 (matchZipper!1023 (derivationStepZipper!1051 lt!2139988 (h!66938 s!2326)) (t!373767 s!2326)))))))

(assert (=> b!5198653 (= lt!2139982 (matchZipper!1023 lt!2139988 s!2326))))

(declare-fun b!5198654 () Bool)

(assert (=> b!5198654 (= e!3237414 e!3237408)))

(declare-fun res!2208508 () Bool)

(assert (=> b!5198654 (=> res!2208508 e!3237408)))

(declare-fun nullable!4942 (Regex!14771) Bool)

(assert (=> b!5198654 (= res!2208508 (not (nullable!4942 (regOne!30054 r!7292))))))

(assert (=> b!5198654 (= lt!2140008 (derivationStepZipperDown!220 (regTwo!30054 r!7292) lt!2139978 (h!66938 s!2326)))))

(assert (=> b!5198654 (= lt!2140009 (derivationStepZipperDown!220 (regOne!30054 r!7292) lt!2139976 (h!66938 s!2326)))))

(assert (=> b!5198654 (= (flatMap!502 lt!2139988 lambda!260301) (derivationStepZipperUp!143 lt!2139976 (h!66938 s!2326)))))

(declare-fun lt!2140002 () Unit!152376)

(assert (=> b!5198654 (= lt!2140002 (lemmaFlatMapOnSingletonSet!34 lt!2139988 lt!2139976 lambda!260301))))

(assert (=> b!5198654 (= (flatMap!502 lt!2139987 lambda!260301) (derivationStepZipperUp!143 lt!2140007 (h!66938 s!2326)))))

(declare-fun lt!2139995 () Unit!152376)

(assert (=> b!5198654 (= lt!2139995 (lemmaFlatMapOnSingletonSet!34 lt!2139987 lt!2140007 lambda!260301))))

(assert (=> b!5198654 (= lt!2139979 (derivationStepZipperUp!143 lt!2139976 (h!66938 s!2326)))))

(assert (=> b!5198654 (= lt!2139975 (derivationStepZipperUp!143 lt!2140007 (h!66938 s!2326)))))

(assert (=> b!5198654 (= lt!2139988 (store ((as const (Array Context!8310 Bool)) false) lt!2139976 true))))

(declare-fun lt!2139991 () List!60612)

(assert (=> b!5198654 (= lt!2139976 (Context!8311 lt!2139991))))

(assert (=> b!5198654 (= lt!2139987 (store ((as const (Array Context!8310 Bool)) false) lt!2140007 true))))

(assert (=> b!5198654 (= lt!2140007 (Context!8311 (Cons!60488 (regOne!30054 r!7292) lt!2139991)))))

(assert (=> b!5198654 (= lt!2139991 (Cons!60488 (regTwo!30054 r!7292) Nil!60488))))

(declare-fun b!5198655 () Bool)

(declare-fun res!2208494 () Bool)

(assert (=> b!5198655 (=> res!2208494 e!3237423)))

(declare-fun generalisedConcat!440 (List!60612) Regex!14771)

(assert (=> b!5198655 (= res!2208494 (not (= r!7292 (generalisedConcat!440 (exprs!4655 (h!66937 zl!343))))))))

(declare-fun b!5198656 () Bool)

(declare-fun res!2208496 () Bool)

(assert (=> b!5198656 (=> res!2208496 e!3237423)))

(assert (=> b!5198656 (= res!2208496 (or ((_ is EmptyExpr!14771) r!7292) ((_ is EmptyLang!14771) r!7292) ((_ is ElementMatch!14771) r!7292) ((_ is Union!14771) r!7292) (not ((_ is Concat!23616) r!7292))))))

(declare-fun b!5198657 () Bool)

(assert (=> b!5198657 (= e!3237415 e!3237424)))

(declare-fun res!2208492 () Bool)

(assert (=> b!5198657 (=> res!2208492 e!3237424)))

(declare-fun lt!2140001 () Bool)

(assert (=> b!5198657 (= res!2208492 (not (= lt!2140001 (matchZipper!1023 lt!2139984 (t!373767 s!2326)))))))

(declare-fun lt!2139998 () Bool)

(assert (=> b!5198657 (= lt!2139998 lt!2140001)))

(assert (=> b!5198657 (= lt!2140001 e!3237409)))

(declare-fun res!2208489 () Bool)

(assert (=> b!5198657 (=> res!2208489 e!3237409)))

(declare-fun lt!2139996 () Bool)

(assert (=> b!5198657 (= res!2208489 lt!2139996)))

(assert (=> b!5198657 (= lt!2139998 (matchZipper!1023 lt!2140005 (t!373767 s!2326)))))

(assert (=> b!5198657 (= lt!2139996 (matchZipper!1023 lt!2140009 (t!373767 s!2326)))))

(declare-fun lt!2139997 () Unit!152376)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!20 ((InoxSet Context!8310) (InoxSet Context!8310) List!60614) Unit!152376)

(assert (=> b!5198657 (= lt!2139997 (lemmaZipperConcatMatchesSameAsBothZippers!20 lt!2140009 lt!2140008 (t!373767 s!2326)))))

(assert (= (and start!549998 res!2208497) b!5198636))

(assert (= (and b!5198636 res!2208490) b!5198651))

(assert (= (and b!5198651 res!2208512) b!5198652))

(assert (= (and b!5198652 (not res!2208510)) b!5198646))

(assert (= (and b!5198646 (not res!2208504)) b!5198655))

(assert (= (and b!5198655 (not res!2208494)) b!5198638))

(assert (= (and b!5198638 (not res!2208505)) b!5198631))

(assert (= (and b!5198631 (not res!2208507)) b!5198656))

(assert (= (and b!5198656 (not res!2208496)) b!5198645))

(assert (= (and b!5198645 (not res!2208493)) b!5198641))

(assert (= (and b!5198641 (not res!2208486)) b!5198644))

(assert (= (and b!5198644 (not res!2208502)) b!5198627))

(assert (= (and b!5198627 (not res!2208495)) b!5198654))

(assert (= (and b!5198654 (not res!2208508)) b!5198628))

(assert (= (and b!5198628 (not res!2208487)) b!5198657))

(assert (= (and b!5198657 (not res!2208489)) b!5198630))

(assert (= (and b!5198657 (not res!2208492)) b!5198625))

(assert (= (and b!5198625 (not res!2208511)) b!5198635))

(assert (= (and b!5198635 (not res!2208501)) b!5198653))

(assert (= (and b!5198653 (not res!2208499)) b!5198624))

(assert (= (and b!5198624 (not res!2208491)) b!5198622))

(assert (= (and b!5198622 (not res!2208485)) b!5198649))

(assert (= (and b!5198649 (not res!2208503)) b!5198623))

(assert (= (and b!5198623 (not res!2208498)) b!5198633))

(assert (= (and b!5198633 (not res!2208506)) b!5198637))

(assert (= (and b!5198637 (not res!2208509)) b!5198648))

(assert (= (and b!5198648 (not res!2208500)) b!5198639))

(assert (= (and b!5198639 (not res!2208488)) b!5198632))

(assert (= (and start!549998 ((_ is ElementMatch!14771) r!7292)) b!5198634))

(assert (= (and start!549998 ((_ is Concat!23616) r!7292)) b!5198629))

(assert (= (and start!549998 ((_ is Star!14771) r!7292)) b!5198640))

(assert (= (and start!549998 ((_ is Union!14771) r!7292)) b!5198650))

(assert (= (and start!549998 condSetEmpty!32938) setIsEmpty!32938))

(assert (= (and start!549998 (not condSetEmpty!32938)) setNonEmpty!32938))

(assert (= setNonEmpty!32938 b!5198642))

(assert (= b!5198643 b!5198647))

(assert (= (and start!549998 ((_ is Cons!60489) zl!343)) b!5198643))

(assert (= (and start!549998 ((_ is Cons!60490) s!2326)) b!5198626))

(declare-fun m!6251898 () Bool)

(assert (=> b!5198632 m!6251898))

(declare-fun m!6251900 () Bool)

(assert (=> b!5198632 m!6251900))

(declare-fun m!6251902 () Bool)

(assert (=> b!5198635 m!6251902))

(assert (=> b!5198635 m!6251902))

(declare-fun m!6251904 () Bool)

(assert (=> b!5198635 m!6251904))

(declare-fun m!6251906 () Bool)

(assert (=> b!5198635 m!6251906))

(declare-fun m!6251908 () Bool)

(assert (=> b!5198643 m!6251908))

(declare-fun m!6251910 () Bool)

(assert (=> b!5198648 m!6251910))

(declare-fun m!6251912 () Bool)

(assert (=> b!5198655 m!6251912))

(declare-fun m!6251914 () Bool)

(assert (=> b!5198646 m!6251914))

(declare-fun m!6251916 () Bool)

(assert (=> start!549998 m!6251916))

(declare-fun m!6251918 () Bool)

(assert (=> b!5198653 m!6251918))

(assert (=> b!5198653 m!6251918))

(declare-fun m!6251920 () Bool)

(assert (=> b!5198653 m!6251920))

(declare-fun m!6251922 () Bool)

(assert (=> b!5198653 m!6251922))

(declare-fun m!6251924 () Bool)

(assert (=> b!5198627 m!6251924))

(declare-fun m!6251926 () Bool)

(assert (=> b!5198627 m!6251926))

(declare-fun m!6251928 () Bool)

(assert (=> b!5198627 m!6251928))

(declare-fun m!6251930 () Bool)

(assert (=> b!5198623 m!6251930))

(declare-fun m!6251932 () Bool)

(assert (=> setNonEmpty!32938 m!6251932))

(declare-fun m!6251934 () Bool)

(assert (=> b!5198649 m!6251934))

(declare-fun m!6251936 () Bool)

(assert (=> b!5198624 m!6251936))

(declare-fun m!6251938 () Bool)

(assert (=> b!5198624 m!6251938))

(declare-fun m!6251940 () Bool)

(assert (=> b!5198645 m!6251940))

(declare-fun m!6251942 () Bool)

(assert (=> b!5198645 m!6251942))

(declare-fun m!6251944 () Bool)

(assert (=> b!5198645 m!6251944))

(declare-fun m!6251946 () Bool)

(assert (=> b!5198645 m!6251946))

(assert (=> b!5198645 m!6251942))

(declare-fun m!6251948 () Bool)

(assert (=> b!5198645 m!6251948))

(assert (=> b!5198645 m!6251944))

(declare-fun m!6251950 () Bool)

(assert (=> b!5198645 m!6251950))

(declare-fun m!6251952 () Bool)

(assert (=> b!5198651 m!6251952))

(declare-fun m!6251954 () Bool)

(assert (=> b!5198631 m!6251954))

(assert (=> b!5198631 m!6251954))

(declare-fun m!6251956 () Bool)

(assert (=> b!5198631 m!6251956))

(declare-fun m!6251958 () Bool)

(assert (=> b!5198641 m!6251958))

(declare-fun m!6251960 () Bool)

(assert (=> b!5198630 m!6251960))

(declare-fun m!6251962 () Bool)

(assert (=> b!5198633 m!6251962))

(declare-fun m!6251964 () Bool)

(assert (=> b!5198633 m!6251964))

(declare-fun m!6251966 () Bool)

(assert (=> b!5198654 m!6251966))

(declare-fun m!6251968 () Bool)

(assert (=> b!5198654 m!6251968))

(declare-fun m!6251970 () Bool)

(assert (=> b!5198654 m!6251970))

(declare-fun m!6251972 () Bool)

(assert (=> b!5198654 m!6251972))

(declare-fun m!6251974 () Bool)

(assert (=> b!5198654 m!6251974))

(declare-fun m!6251976 () Bool)

(assert (=> b!5198654 m!6251976))

(declare-fun m!6251978 () Bool)

(assert (=> b!5198654 m!6251978))

(declare-fun m!6251980 () Bool)

(assert (=> b!5198654 m!6251980))

(declare-fun m!6251982 () Bool)

(assert (=> b!5198654 m!6251982))

(declare-fun m!6251984 () Bool)

(assert (=> b!5198654 m!6251984))

(declare-fun m!6251986 () Bool)

(assert (=> b!5198654 m!6251986))

(declare-fun m!6251988 () Bool)

(assert (=> b!5198622 m!6251988))

(declare-fun m!6251990 () Bool)

(assert (=> b!5198622 m!6251990))

(declare-fun m!6251992 () Bool)

(assert (=> b!5198657 m!6251992))

(declare-fun m!6251994 () Bool)

(assert (=> b!5198657 m!6251994))

(declare-fun m!6251996 () Bool)

(assert (=> b!5198657 m!6251996))

(declare-fun m!6251998 () Bool)

(assert (=> b!5198657 m!6251998))

(declare-fun m!6252000 () Bool)

(assert (=> b!5198639 m!6252000))

(declare-fun m!6252002 () Bool)

(assert (=> b!5198652 m!6252002))

(declare-fun m!6252004 () Bool)

(assert (=> b!5198652 m!6252004))

(declare-fun m!6252006 () Bool)

(assert (=> b!5198652 m!6252006))

(declare-fun m!6252008 () Bool)

(assert (=> b!5198636 m!6252008))

(declare-fun m!6252010 () Bool)

(assert (=> b!5198644 m!6252010))

(declare-fun m!6252012 () Bool)

(assert (=> b!5198644 m!6252012))

(declare-fun m!6252014 () Bool)

(assert (=> b!5198644 m!6252014))

(declare-fun m!6252016 () Bool)

(assert (=> b!5198637 m!6252016))

(declare-fun m!6252018 () Bool)

(assert (=> b!5198637 m!6252018))

(declare-fun m!6252020 () Bool)

(assert (=> b!5198637 m!6252020))

(check-sat (not b!5198655) (not b!5198641) (not b!5198646) (not b!5198635) (not b!5198643) (not b!5198637) (not b!5198653) (not b!5198631) (not b!5198622) (not b!5198649) tp_is_empty!38795 (not b!5198645) (not b!5198636) (not b!5198654) (not b!5198651) (not b!5198657) (not b!5198632) (not start!549998) (not b!5198630) (not b!5198644) (not b!5198633) (not b!5198629) (not setNonEmpty!32938) (not b!5198652) (not b!5198623) (not b!5198650) (not b!5198648) (not b!5198647) (not b!5198640) (not b!5198626) (not b!5198639) (not b!5198627) (not b!5198642) (not b!5198624))
(check-sat)
