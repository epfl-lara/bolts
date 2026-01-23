; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!688372 () Bool)

(assert start!688372)

(declare-fun b!7078959 () Bool)

(assert (=> b!7078959 true))

(declare-fun b!7078964 () Bool)

(assert (=> b!7078964 true))

(declare-fun b!7078961 () Bool)

(assert (=> b!7078961 true))

(declare-fun bs!1881786 () Bool)

(declare-fun b!7078960 () Bool)

(assert (= bs!1881786 (and b!7078960 b!7078959)))

(declare-fun lambda!427339 () Int)

(declare-fun lambda!427343 () Int)

(declare-datatypes ((C!35628 0))(
  ( (C!35629 (val!27516 Int)) )
))
(declare-datatypes ((List!68563 0))(
  ( (Nil!68439) (Cons!68439 (h!74887 C!35628) (t!382348 List!68563)) )
))
(declare-fun s!7408 () List!68563)

(declare-fun lt!2551004 () List!68563)

(assert (=> bs!1881786 (= (= lt!2551004 s!7408) (= lambda!427343 lambda!427339))))

(assert (=> b!7078960 true))

(declare-fun b!7078952 () Bool)

(declare-fun res!2891548 () Bool)

(declare-fun e!4255860 () Bool)

(assert (=> b!7078952 (=> res!2891548 e!4255860)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17679 0))(
  ( (ElementMatch!17679 (c!1321048 C!35628)) (Concat!26524 (regOne!35870 Regex!17679) (regTwo!35870 Regex!17679)) (EmptyExpr!17679) (Star!17679 (reg!18008 Regex!17679)) (EmptyLang!17679) (Union!17679 (regOne!35871 Regex!17679) (regTwo!35871 Regex!17679)) )
))
(declare-datatypes ((List!68564 0))(
  ( (Nil!68440) (Cons!68440 (h!74888 Regex!17679) (t!382349 List!68564)) )
))
(declare-datatypes ((Context!13350 0))(
  ( (Context!13351 (exprs!7175 List!68564)) )
))
(declare-fun lt!2550995 () (InoxSet Context!13350))

(declare-datatypes ((tuple2!68316 0))(
  ( (tuple2!68317 (_1!37461 List!68563) (_2!37461 List!68563)) )
))
(declare-fun lt!2551010 () tuple2!68316)

(declare-fun matchZipper!3219 ((InoxSet Context!13350) List!68563) Bool)

(assert (=> b!7078952 (= res!2891548 (not (matchZipper!3219 lt!2550995 (_2!37461 lt!2551010))))))

(declare-fun b!7078953 () Bool)

(declare-fun e!4255854 () Bool)

(declare-fun e!4255857 () Bool)

(assert (=> b!7078953 (= e!4255854 e!4255857)))

(declare-fun res!2891547 () Bool)

(assert (=> b!7078953 (=> res!2891547 e!4255857)))

(declare-fun lt!2550997 () (InoxSet Context!13350))

(assert (=> b!7078953 (= res!2891547 (not (matchZipper!3219 lt!2550997 lt!2551004)))))

(assert (=> b!7078953 (= lt!2551004 (Cons!68439 (h!74887 s!7408) (_1!37461 lt!2551010)))))

(declare-fun b!7078954 () Bool)

(assert (=> b!7078954 (= e!4255860 e!4255854)))

(declare-fun res!2891550 () Bool)

(assert (=> b!7078954 (=> res!2891550 e!4255854)))

(declare-fun lt!2550990 () (InoxSet Context!13350))

(declare-fun lt!2550988 () (InoxSet Context!13350))

(declare-fun lt!2551001 () (InoxSet Context!13350))

(assert (=> b!7078954 (= res!2891550 (or (not (= lt!2550990 lt!2550988)) (not (= lt!2550990 lt!2551001))))))

(declare-fun lt!2550996 () Context!13350)

(declare-fun lambda!427342 () Int)

(declare-fun flatMap!2605 ((InoxSet Context!13350) Int) (InoxSet Context!13350))

(declare-fun derivationStepZipperUp!2263 (Context!13350 C!35628) (InoxSet Context!13350))

(assert (=> b!7078954 (= (flatMap!2605 lt!2550997 lambda!427342) (derivationStepZipperUp!2263 lt!2550996 (h!74887 s!7408)))))

(declare-datatypes ((Unit!162069 0))(
  ( (Unit!162070) )
))
(declare-fun lt!2550987 () Unit!162069)

(declare-fun lemmaFlatMapOnSingletonSet!2114 ((InoxSet Context!13350) Context!13350 Int) Unit!162069)

(assert (=> b!7078954 (= lt!2550987 (lemmaFlatMapOnSingletonSet!2114 lt!2550997 lt!2550996 lambda!427342))))

(assert (=> b!7078954 (= lt!2550988 (derivationStepZipperUp!2263 lt!2550996 (h!74887 s!7408)))))

(declare-fun derivationStepZipper!3129 ((InoxSet Context!13350) C!35628) (InoxSet Context!13350))

(assert (=> b!7078954 (= lt!2550990 (derivationStepZipper!3129 lt!2550997 (h!74887 s!7408)))))

(assert (=> b!7078954 (= lt!2550997 (store ((as const (Array Context!13350 Bool)) false) lt!2550996 true))))

(declare-fun b!7078955 () Bool)

(declare-fun e!4255853 () Bool)

(declare-fun tp!1943229 () Bool)

(assert (=> b!7078955 (= e!4255853 tp!1943229)))

(declare-fun b!7078956 () Bool)

(declare-fun res!2891558 () Bool)

(declare-fun e!4255859 () Bool)

(assert (=> b!7078956 (=> res!2891558 e!4255859)))

(declare-fun isEmpty!39952 (List!68564) Bool)

(assert (=> b!7078956 (= res!2891558 (isEmpty!39952 (exprs!7175 lt!2550996)))))

(declare-fun setRes!50443 () Bool)

(declare-fun tp!1943231 () Bool)

(declare-fun setNonEmpty!50443 () Bool)

(declare-fun setElem!50443 () Context!13350)

(declare-fun inv!87056 (Context!13350) Bool)

(assert (=> setNonEmpty!50443 (= setRes!50443 (and tp!1943231 (inv!87056 setElem!50443) e!4255853))))

(declare-fun z1!570 () (InoxSet Context!13350))

(declare-fun setRest!50443 () (InoxSet Context!13350))

(assert (=> setNonEmpty!50443 (= z1!570 ((_ map or) (store ((as const (Array Context!13350 Bool)) false) setElem!50443 true) setRest!50443))))

(declare-fun b!7078957 () Bool)

(declare-fun e!4255861 () Bool)

(declare-fun tp!1943230 () Bool)

(assert (=> b!7078957 (= e!4255861 tp!1943230)))

(declare-fun b!7078958 () Bool)

(declare-fun e!4255855 () Bool)

(assert (=> b!7078958 (= e!4255855 e!4255860)))

(declare-fun res!2891555 () Bool)

(assert (=> b!7078958 (=> res!2891555 e!4255860)))

(assert (=> b!7078958 (= res!2891555 (not (matchZipper!3219 lt!2551001 (_1!37461 lt!2551010))))))

(declare-datatypes ((Option!16990 0))(
  ( (None!16989) (Some!16989 (v!53283 tuple2!68316)) )
))
(declare-fun lt!2550991 () Option!16990)

(declare-fun get!23980 (Option!16990) tuple2!68316)

(assert (=> b!7078958 (= lt!2551010 (get!23980 lt!2550991))))

(declare-fun isDefined!13691 (Option!16990) Bool)

(assert (=> b!7078958 (isDefined!13691 lt!2550991)))

(declare-fun findConcatSeparationZippers!506 ((InoxSet Context!13350) (InoxSet Context!13350) List!68563 List!68563 List!68563) Option!16990)

(assert (=> b!7078958 (= lt!2550991 (findConcatSeparationZippers!506 lt!2551001 lt!2550995 Nil!68439 (t!382348 s!7408) (t!382348 s!7408)))))

(declare-fun ct2!306 () Context!13350)

(assert (=> b!7078958 (= lt!2550995 (store ((as const (Array Context!13350 Bool)) false) ct2!306 true))))

(declare-fun lt!2550984 () Unit!162069)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!494 ((InoxSet Context!13350) Context!13350 List!68563) Unit!162069)

(assert (=> b!7078958 (= lt!2550984 (lemmaConcatZipperMatchesStringThenFindConcatDefined!494 lt!2551001 ct2!306 (t!382348 s!7408)))))

(declare-fun lt!2550982 () (InoxSet Context!13350))

(declare-fun appendTo!800 ((InoxSet Context!13350) Context!13350) (InoxSet Context!13350))

(assert (=> b!7078958 (= lt!2550982 (appendTo!800 lt!2551001 ct2!306))))

(declare-fun lt!2551008 () Context!13350)

(declare-fun derivationStepZipperDown!2313 (Regex!17679 Context!13350 C!35628) (InoxSet Context!13350))

(assert (=> b!7078958 (= lt!2551001 (derivationStepZipperDown!2313 (h!74888 (exprs!7175 lt!2550996)) lt!2551008 (h!74887 s!7408)))))

(declare-fun lambda!427341 () Int)

(declare-fun lt!2550989 () List!68564)

(declare-fun lt!2551009 () Unit!162069)

(declare-fun lemmaConcatPreservesForall!990 (List!68564 List!68564 Int) Unit!162069)

(assert (=> b!7078958 (= lt!2551009 (lemmaConcatPreservesForall!990 lt!2550989 (exprs!7175 ct2!306) lambda!427341))))

(declare-fun lt!2551003 () Unit!162069)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!146 (Context!13350 Regex!17679 C!35628 Context!13350) Unit!162069)

(assert (=> b!7078958 (= lt!2551003 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!146 lt!2551008 (h!74888 (exprs!7175 lt!2550996)) (h!74887 s!7408) ct2!306))))

(declare-fun e!4255863 () Bool)

(declare-fun e!4255858 () Bool)

(assert (=> b!7078959 (= e!4255863 (not e!4255858))))

(declare-fun res!2891562 () Bool)

(assert (=> b!7078959 (=> res!2891562 e!4255858)))

(declare-fun lt!2550992 () (InoxSet Context!13350))

(assert (=> b!7078959 (= res!2891562 (not (matchZipper!3219 lt!2550992 s!7408)))))

(declare-fun lt!2550981 () Context!13350)

(assert (=> b!7078959 (= lt!2550992 (store ((as const (Array Context!13350 Bool)) false) lt!2550981 true))))

(declare-fun lt!2550986 () (InoxSet Context!13350))

(declare-fun getWitness!1801 ((InoxSet Context!13350) Int) Context!13350)

(assert (=> b!7078959 (= lt!2550981 (getWitness!1801 lt!2550986 lambda!427339))))

(declare-datatypes ((List!68565 0))(
  ( (Nil!68441) (Cons!68441 (h!74889 Context!13350) (t!382350 List!68565)) )
))
(declare-fun lt!2550985 () List!68565)

(declare-fun exists!3753 (List!68565 Int) Bool)

(assert (=> b!7078959 (exists!3753 lt!2550985 lambda!427339)))

(declare-fun lt!2551011 () Unit!162069)

(declare-fun lemmaZipperMatchesExistsMatchingContext!600 (List!68565 List!68563) Unit!162069)

(assert (=> b!7078959 (= lt!2551011 (lemmaZipperMatchesExistsMatchingContext!600 lt!2550985 s!7408))))

(declare-fun toList!11020 ((InoxSet Context!13350)) List!68565)

(assert (=> b!7078959 (= lt!2550985 (toList!11020 lt!2550986))))

(declare-fun res!2891561 () Bool)

(assert (=> start!688372 (=> (not res!2891561) (not e!4255863))))

(assert (=> start!688372 (= res!2891561 (matchZipper!3219 lt!2550986 s!7408))))

(assert (=> start!688372 (= lt!2550986 (appendTo!800 z1!570 ct2!306))))

(assert (=> start!688372 e!4255863))

(declare-fun condSetEmpty!50443 () Bool)

(assert (=> start!688372 (= condSetEmpty!50443 (= z1!570 ((as const (Array Context!13350 Bool)) false)))))

(assert (=> start!688372 setRes!50443))

(assert (=> start!688372 (and (inv!87056 ct2!306) e!4255861)))

(declare-fun e!4255852 () Bool)

(assert (=> start!688372 e!4255852))

(assert (=> b!7078960 (= e!4255857 true)))

(declare-fun lt!2551002 () Bool)

(assert (=> b!7078960 (= lt!2551002 (matchZipper!3219 z1!570 lt!2551004))))

(declare-fun lt!2550979 () List!68565)

(declare-fun content!13855 (List!68565) (InoxSet Context!13350))

(assert (=> b!7078960 (matchZipper!3219 (content!13855 lt!2550979) lt!2551004)))

(declare-fun lt!2551000 () Unit!162069)

(declare-fun lemmaExistsMatchingContextThenMatchingString!64 (List!68565 List!68563) Unit!162069)

(assert (=> b!7078960 (= lt!2551000 (lemmaExistsMatchingContextThenMatchingString!64 lt!2550979 lt!2551004))))

(assert (=> b!7078960 (= lt!2550979 (toList!11020 z1!570))))

(declare-fun exists!3754 ((InoxSet Context!13350) Int) Bool)

(assert (=> b!7078960 (exists!3754 z1!570 lambda!427343)))

(declare-fun lt!2551012 () Unit!162069)

(declare-fun lemmaContainsThenExists!171 ((InoxSet Context!13350) Context!13350 Int) Unit!162069)

(assert (=> b!7078960 (= lt!2551012 (lemmaContainsThenExists!171 z1!570 lt!2550996 lambda!427343))))

(assert (=> b!7078960 (isDefined!13691 (findConcatSeparationZippers!506 lt!2550997 lt!2550995 Nil!68439 s!7408 s!7408))))

(declare-fun lt!2550980 () Unit!162069)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!92 ((InoxSet Context!13350) (InoxSet Context!13350) List!68563 List!68563 List!68563 List!68563 List!68563) Unit!162069)

(assert (=> b!7078960 (= lt!2550980 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!92 lt!2550997 lt!2550995 lt!2551004 (_2!37461 lt!2551010) s!7408 Nil!68439 s!7408))))

(declare-fun e!4255856 () Bool)

(assert (=> b!7078961 (= e!4255856 e!4255859)))

(declare-fun res!2891557 () Bool)

(assert (=> b!7078961 (=> res!2891557 e!4255859)))

(declare-fun lt!2551006 () (InoxSet Context!13350))

(declare-fun lt!2551005 () (InoxSet Context!13350))

(assert (=> b!7078961 (= res!2891557 (not (= (derivationStepZipper!3129 lt!2551005 (h!74887 s!7408)) lt!2551006)))))

(declare-fun lt!2551007 () Context!13350)

(assert (=> b!7078961 (= (flatMap!2605 lt!2551005 lambda!427342) (derivationStepZipperUp!2263 lt!2551007 (h!74887 s!7408)))))

(declare-fun lt!2550983 () Unit!162069)

(assert (=> b!7078961 (= lt!2550983 (lemmaFlatMapOnSingletonSet!2114 lt!2551005 lt!2551007 lambda!427342))))

(assert (=> b!7078961 (= lt!2551006 (derivationStepZipperUp!2263 lt!2551007 (h!74887 s!7408)))))

(declare-fun lt!2550993 () Unit!162069)

(assert (=> b!7078961 (= lt!2550993 (lemmaConcatPreservesForall!990 (exprs!7175 lt!2550996) (exprs!7175 ct2!306) lambda!427341))))

(declare-fun b!7078962 () Bool)

(declare-fun e!4255862 () Bool)

(assert (=> b!7078962 (= e!4255859 e!4255862)))

(declare-fun res!2891549 () Bool)

(assert (=> b!7078962 (=> res!2891549 e!4255862)))

(declare-fun nullable!7362 (Regex!17679) Bool)

(assert (=> b!7078962 (= res!2891549 (nullable!7362 (h!74888 (exprs!7175 lt!2550996))))))

(assert (=> b!7078962 (= lt!2551008 (Context!13351 lt!2550989))))

(declare-fun tail!13884 (List!68564) List!68564)

(assert (=> b!7078962 (= lt!2550989 (tail!13884 (exprs!7175 lt!2550996)))))

(declare-fun b!7078963 () Bool)

(assert (=> b!7078963 (= e!4255862 e!4255855)))

(declare-fun res!2891554 () Bool)

(assert (=> b!7078963 (=> res!2891554 e!4255855)))

(assert (=> b!7078963 (= res!2891554 (not (matchZipper!3219 lt!2550982 (t!382348 s!7408))))))

(declare-fun ++!15833 (List!68564 List!68564) List!68564)

(assert (=> b!7078963 (= lt!2550982 (derivationStepZipperDown!2313 (h!74888 (exprs!7175 lt!2550996)) (Context!13351 (++!15833 lt!2550989 (exprs!7175 ct2!306))) (h!74887 s!7408)))))

(declare-fun lt!2550994 () Unit!162069)

(assert (=> b!7078963 (= lt!2550994 (lemmaConcatPreservesForall!990 lt!2550989 (exprs!7175 ct2!306) lambda!427341))))

(declare-fun e!4255864 () Bool)

(assert (=> b!7078964 (= e!4255858 e!4255864)))

(declare-fun res!2891553 () Bool)

(assert (=> b!7078964 (=> res!2891553 e!4255864)))

(assert (=> b!7078964 (= res!2891553 (or (not (= lt!2551007 lt!2550981)) (not (select z1!570 lt!2550996))))))

(assert (=> b!7078964 (= lt!2551007 (Context!13351 (++!15833 (exprs!7175 lt!2550996) (exprs!7175 ct2!306))))))

(declare-fun lt!2550998 () Unit!162069)

(assert (=> b!7078964 (= lt!2550998 (lemmaConcatPreservesForall!990 (exprs!7175 lt!2550996) (exprs!7175 ct2!306) lambda!427341))))

(declare-fun lambda!427340 () Int)

(declare-fun mapPost2!508 ((InoxSet Context!13350) Int Context!13350) Context!13350)

(assert (=> b!7078964 (= lt!2550996 (mapPost2!508 z1!570 lambda!427340 lt!2550981))))

(declare-fun setIsEmpty!50443 () Bool)

(assert (=> setIsEmpty!50443 setRes!50443))

(declare-fun b!7078965 () Bool)

(declare-fun res!2891559 () Bool)

(assert (=> b!7078965 (=> res!2891559 e!4255859)))

(get-info :version)

(assert (=> b!7078965 (= res!2891559 (not ((_ is Cons!68440) (exprs!7175 lt!2550996))))))

(declare-fun b!7078966 () Bool)

(declare-fun res!2891551 () Bool)

(assert (=> b!7078966 (=> res!2891551 e!4255858)))

(assert (=> b!7078966 (= res!2891551 (not (select lt!2550986 lt!2550981)))))

(declare-fun b!7078967 () Bool)

(declare-fun res!2891556 () Bool)

(assert (=> b!7078967 (=> res!2891556 e!4255860)))

(declare-fun ++!15834 (List!68563 List!68563) List!68563)

(assert (=> b!7078967 (= res!2891556 (not (= (++!15834 (_1!37461 lt!2551010) (_2!37461 lt!2551010)) (t!382348 s!7408))))))

(declare-fun b!7078968 () Bool)

(declare-fun res!2891552 () Bool)

(assert (=> b!7078968 (=> (not res!2891552) (not e!4255863))))

(assert (=> b!7078968 (= res!2891552 ((_ is Cons!68439) s!7408))))

(declare-fun b!7078969 () Bool)

(assert (=> b!7078969 (= e!4255864 e!4255856)))

(declare-fun res!2891560 () Bool)

(assert (=> b!7078969 (=> res!2891560 e!4255856)))

(assert (=> b!7078969 (= res!2891560 (not (= lt!2551005 lt!2550992)))))

(assert (=> b!7078969 (= lt!2551005 (store ((as const (Array Context!13350 Bool)) false) lt!2551007 true))))

(declare-fun lt!2550999 () Unit!162069)

(assert (=> b!7078969 (= lt!2550999 (lemmaConcatPreservesForall!990 (exprs!7175 lt!2550996) (exprs!7175 ct2!306) lambda!427341))))

(declare-fun b!7078970 () Bool)

(declare-fun tp_is_empty!44583 () Bool)

(declare-fun tp!1943232 () Bool)

(assert (=> b!7078970 (= e!4255852 (and tp_is_empty!44583 tp!1943232))))

(assert (= (and start!688372 res!2891561) b!7078968))

(assert (= (and b!7078968 res!2891552) b!7078959))

(assert (= (and b!7078959 (not res!2891562)) b!7078966))

(assert (= (and b!7078966 (not res!2891551)) b!7078964))

(assert (= (and b!7078964 (not res!2891553)) b!7078969))

(assert (= (and b!7078969 (not res!2891560)) b!7078961))

(assert (= (and b!7078961 (not res!2891557)) b!7078965))

(assert (= (and b!7078965 (not res!2891559)) b!7078956))

(assert (= (and b!7078956 (not res!2891558)) b!7078962))

(assert (= (and b!7078962 (not res!2891549)) b!7078963))

(assert (= (and b!7078963 (not res!2891554)) b!7078958))

(assert (= (and b!7078958 (not res!2891555)) b!7078952))

(assert (= (and b!7078952 (not res!2891548)) b!7078967))

(assert (= (and b!7078967 (not res!2891556)) b!7078954))

(assert (= (and b!7078954 (not res!2891550)) b!7078953))

(assert (= (and b!7078953 (not res!2891547)) b!7078960))

(assert (= (and start!688372 condSetEmpty!50443) setIsEmpty!50443))

(assert (= (and start!688372 (not condSetEmpty!50443)) setNonEmpty!50443))

(assert (= setNonEmpty!50443 b!7078955))

(assert (= start!688372 b!7078957))

(assert (= (and start!688372 ((_ is Cons!68439) s!7408)) b!7078970))

(declare-fun m!7808560 () Bool)

(assert (=> b!7078962 m!7808560))

(declare-fun m!7808562 () Bool)

(assert (=> b!7078962 m!7808562))

(declare-fun m!7808564 () Bool)

(assert (=> b!7078959 m!7808564))

(declare-fun m!7808566 () Bool)

(assert (=> b!7078959 m!7808566))

(declare-fun m!7808568 () Bool)

(assert (=> b!7078959 m!7808568))

(declare-fun m!7808570 () Bool)

(assert (=> b!7078959 m!7808570))

(declare-fun m!7808572 () Bool)

(assert (=> b!7078959 m!7808572))

(declare-fun m!7808574 () Bool)

(assert (=> b!7078959 m!7808574))

(declare-fun m!7808576 () Bool)

(assert (=> b!7078958 m!7808576))

(declare-fun m!7808578 () Bool)

(assert (=> b!7078958 m!7808578))

(declare-fun m!7808580 () Bool)

(assert (=> b!7078958 m!7808580))

(declare-fun m!7808582 () Bool)

(assert (=> b!7078958 m!7808582))

(declare-fun m!7808584 () Bool)

(assert (=> b!7078958 m!7808584))

(declare-fun m!7808586 () Bool)

(assert (=> b!7078958 m!7808586))

(declare-fun m!7808588 () Bool)

(assert (=> b!7078958 m!7808588))

(declare-fun m!7808590 () Bool)

(assert (=> b!7078958 m!7808590))

(declare-fun m!7808592 () Bool)

(assert (=> b!7078958 m!7808592))

(declare-fun m!7808594 () Bool)

(assert (=> b!7078958 m!7808594))

(declare-fun m!7808596 () Bool)

(assert (=> b!7078969 m!7808596))

(declare-fun m!7808598 () Bool)

(assert (=> b!7078969 m!7808598))

(declare-fun m!7808600 () Bool)

(assert (=> b!7078966 m!7808600))

(declare-fun m!7808602 () Bool)

(assert (=> b!7078967 m!7808602))

(declare-fun m!7808604 () Bool)

(assert (=> b!7078960 m!7808604))

(declare-fun m!7808606 () Bool)

(assert (=> b!7078960 m!7808606))

(declare-fun m!7808608 () Bool)

(assert (=> b!7078960 m!7808608))

(declare-fun m!7808610 () Bool)

(assert (=> b!7078960 m!7808610))

(declare-fun m!7808612 () Bool)

(assert (=> b!7078960 m!7808612))

(declare-fun m!7808614 () Bool)

(assert (=> b!7078960 m!7808614))

(assert (=> b!7078960 m!7808604))

(declare-fun m!7808616 () Bool)

(assert (=> b!7078960 m!7808616))

(assert (=> b!7078960 m!7808612))

(declare-fun m!7808618 () Bool)

(assert (=> b!7078960 m!7808618))

(declare-fun m!7808620 () Bool)

(assert (=> b!7078960 m!7808620))

(declare-fun m!7808622 () Bool)

(assert (=> b!7078960 m!7808622))

(declare-fun m!7808624 () Bool)

(assert (=> b!7078952 m!7808624))

(declare-fun m!7808626 () Bool)

(assert (=> b!7078963 m!7808626))

(declare-fun m!7808628 () Bool)

(assert (=> b!7078963 m!7808628))

(declare-fun m!7808630 () Bool)

(assert (=> b!7078963 m!7808630))

(assert (=> b!7078963 m!7808584))

(declare-fun m!7808632 () Bool)

(assert (=> b!7078961 m!7808632))

(declare-fun m!7808634 () Bool)

(assert (=> b!7078961 m!7808634))

(declare-fun m!7808636 () Bool)

(assert (=> b!7078961 m!7808636))

(assert (=> b!7078961 m!7808598))

(declare-fun m!7808638 () Bool)

(assert (=> b!7078961 m!7808638))

(declare-fun m!7808640 () Bool)

(assert (=> setNonEmpty!50443 m!7808640))

(declare-fun m!7808642 () Bool)

(assert (=> start!688372 m!7808642))

(declare-fun m!7808644 () Bool)

(assert (=> start!688372 m!7808644))

(declare-fun m!7808646 () Bool)

(assert (=> start!688372 m!7808646))

(declare-fun m!7808648 () Bool)

(assert (=> b!7078964 m!7808648))

(declare-fun m!7808650 () Bool)

(assert (=> b!7078964 m!7808650))

(assert (=> b!7078964 m!7808598))

(declare-fun m!7808652 () Bool)

(assert (=> b!7078964 m!7808652))

(declare-fun m!7808654 () Bool)

(assert (=> b!7078954 m!7808654))

(declare-fun m!7808656 () Bool)

(assert (=> b!7078954 m!7808656))

(declare-fun m!7808658 () Bool)

(assert (=> b!7078954 m!7808658))

(declare-fun m!7808660 () Bool)

(assert (=> b!7078954 m!7808660))

(declare-fun m!7808662 () Bool)

(assert (=> b!7078954 m!7808662))

(declare-fun m!7808664 () Bool)

(assert (=> b!7078956 m!7808664))

(declare-fun m!7808666 () Bool)

(assert (=> b!7078953 m!7808666))

(check-sat (not b!7078961) (not b!7078959) (not b!7078964) (not b!7078960) (not b!7078955) tp_is_empty!44583 (not b!7078953) (not setNonEmpty!50443) (not b!7078967) (not b!7078956) (not b!7078963) (not b!7078969) (not start!688372) (not b!7078970) (not b!7078958) (not b!7078957) (not b!7078962) (not b!7078954) (not b!7078952))
(check-sat)
