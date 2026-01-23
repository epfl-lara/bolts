; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!677702 () Bool)

(assert start!677702)

(declare-fun b!7023163 () Bool)

(assert (=> b!7023163 true))

(declare-fun bs!1868038 () Bool)

(declare-fun b!7023159 () Bool)

(assert (= bs!1868038 (and b!7023159 b!7023163)))

(declare-fun lambda!412155 () Int)

(declare-fun lambda!412154 () Int)

(assert (=> bs!1868038 (not (= lambda!412155 lambda!412154))))

(declare-fun b!7023151 () Bool)

(declare-fun res!2867029 () Bool)

(declare-fun e!4221871 () Bool)

(assert (=> b!7023151 (=> (not res!2867029) (not e!4221871))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35108 0))(
  ( (C!35109 (val!27256 Int)) )
))
(declare-datatypes ((Regex!17419 0))(
  ( (ElementMatch!17419 (c!1305292 C!35108)) (Concat!26264 (regOne!35350 Regex!17419) (regTwo!35350 Regex!17419)) (EmptyExpr!17419) (Star!17419 (reg!17748 Regex!17419)) (EmptyLang!17419) (Union!17419 (regOne!35351 Regex!17419) (regTwo!35351 Regex!17419)) )
))
(declare-datatypes ((List!67788 0))(
  ( (Nil!67664) (Cons!67664 (h!74112 Regex!17419) (t!381543 List!67788)) )
))
(declare-datatypes ((Context!12830 0))(
  ( (Context!12831 (exprs!6915 List!67788)) )
))
(declare-fun lt!2513006 () (InoxSet Context!12830))

(declare-fun nullableZipper!2548 ((InoxSet Context!12830)) Bool)

(assert (=> b!7023151 (= res!2867029 (nullableZipper!2548 lt!2513006))))

(declare-fun b!7023153 () Bool)

(declare-fun res!2867031 () Bool)

(declare-fun e!4221872 () Bool)

(assert (=> b!7023153 (=> res!2867031 e!4221872)))

(declare-fun lt!2513002 () (InoxSet Context!12830))

(declare-datatypes ((List!67789 0))(
  ( (Nil!67665) (Cons!67665 (h!74113 C!35108) (t!381544 List!67789)) )
))
(declare-fun matchZipper!2959 ((InoxSet Context!12830) List!67789) Bool)

(assert (=> b!7023153 (= res!2867031 (not (matchZipper!2959 lt!2513002 Nil!67665)))))

(declare-fun b!7023154 () Bool)

(declare-fun e!4221874 () Bool)

(declare-fun tp!1934797 () Bool)

(assert (=> b!7023154 (= e!4221874 tp!1934797)))

(declare-fun b!7023155 () Bool)

(declare-fun e!4221875 () Bool)

(declare-fun tp!1934796 () Bool)

(assert (=> b!7023155 (= e!4221875 tp!1934796)))

(declare-fun b!7023156 () Bool)

(declare-fun e!4221876 () Bool)

(assert (=> b!7023156 (= e!4221871 e!4221876)))

(declare-fun res!2867025 () Bool)

(assert (=> b!7023156 (=> (not res!2867025) (not e!4221876))))

(declare-fun lt!2513003 () Context!12830)

(declare-fun nullableContext!79 (Context!12830) Bool)

(assert (=> b!7023156 (= res!2867025 (nullableContext!79 lt!2513003))))

(declare-fun lambda!412152 () Int)

(declare-fun getWitness!1399 ((InoxSet Context!12830) Int) Context!12830)

(assert (=> b!7023156 (= lt!2513003 (getWitness!1399 lt!2513006 lambda!412152))))

(declare-fun setIsEmpty!48848 () Bool)

(declare-fun setRes!48848 () Bool)

(assert (=> setIsEmpty!48848 setRes!48848))

(declare-fun b!7023157 () Bool)

(declare-fun e!4221870 () Bool)

(declare-fun tp_is_empty!44063 () Bool)

(declare-fun tp!1934795 () Bool)

(assert (=> b!7023157 (= e!4221870 (and tp_is_empty!44063 tp!1934795))))

(declare-fun b!7023158 () Bool)

(declare-fun res!2867033 () Bool)

(assert (=> b!7023158 (=> (not res!2867033) (not e!4221871))))

(declare-fun exists!3318 ((InoxSet Context!12830) Int) Bool)

(assert (=> b!7023158 (= res!2867033 (exists!3318 lt!2513006 lambda!412152))))

(declare-fun e!4221869 () Bool)

(declare-fun e!4221873 () Bool)

(assert (=> b!7023159 (= e!4221869 (not e!4221873))))

(declare-fun res!2867022 () Bool)

(assert (=> b!7023159 (=> res!2867022 e!4221873)))

(declare-fun lt!2513010 () Context!12830)

(assert (=> b!7023159 (= res!2867022 (not (nullableContext!79 lt!2513010)))))

(declare-fun lt!2513009 () List!67788)

(declare-fun ct2!306 () Context!12830)

(declare-datatypes ((Unit!161504 0))(
  ( (Unit!161505) )
))
(declare-fun lt!2513012 () Unit!161504)

(declare-fun lemmaContentSubsetPreservesForall!346 (List!67788 List!67788 Int) Unit!161504)

(assert (=> b!7023159 (= lt!2513012 (lemmaContentSubsetPreservesForall!346 lt!2513009 (exprs!6915 ct2!306) lambda!412155))))

(declare-fun lt!2513007 () Unit!161504)

(assert (=> b!7023159 (= lt!2513007 (lemmaContentSubsetPreservesForall!346 lt!2513009 (exprs!6915 lt!2513010) lambda!412155))))

(declare-fun subseq!695 (List!67788 List!67788) Bool)

(assert (=> b!7023159 (subseq!695 (exprs!6915 ct2!306) lt!2513009)))

(declare-fun lt!2513005 () Unit!161504)

(declare-fun lemmaConcatThenSecondSubseqOfTot!16 (List!67788 List!67788) Unit!161504)

(assert (=> b!7023159 (= lt!2513005 (lemmaConcatThenSecondSubseqOfTot!16 (exprs!6915 lt!2513010) (exprs!6915 ct2!306)))))

(assert (=> b!7023159 (subseq!695 (exprs!6915 lt!2513010) lt!2513009)))

(declare-fun lt!2513008 () Unit!161504)

(declare-fun lemmaConcatThenFirstSubseqOfTot!16 (List!67788 List!67788) Unit!161504)

(assert (=> b!7023159 (= lt!2513008 (lemmaConcatThenFirstSubseqOfTot!16 (exprs!6915 lt!2513010) (exprs!6915 ct2!306)))))

(declare-fun b!7023160 () Bool)

(declare-fun res!2867026 () Bool)

(assert (=> b!7023160 (=> res!2867026 e!4221872)))

(declare-fun isPrefix!5838 (List!67789 List!67789) Bool)

(assert (=> b!7023160 (= res!2867026 (not (isPrefix!5838 Nil!67665 Nil!67665)))))

(declare-fun b!7023152 () Bool)

(declare-fun res!2867028 () Bool)

(assert (=> b!7023152 (=> (not res!2867028) (not e!4221871))))

(declare-fun s!7408 () List!67789)

(get-info :version)

(assert (=> b!7023152 (= res!2867028 (not ((_ is Cons!67665) s!7408)))))

(declare-fun res!2867024 () Bool)

(assert (=> start!677702 (=> (not res!2867024) (not e!4221871))))

(assert (=> start!677702 (= res!2867024 (matchZipper!2959 lt!2513006 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12830))

(declare-fun appendTo!540 ((InoxSet Context!12830) Context!12830) (InoxSet Context!12830))

(assert (=> start!677702 (= lt!2513006 (appendTo!540 z1!570 ct2!306))))

(assert (=> start!677702 e!4221871))

(declare-fun condSetEmpty!48848 () Bool)

(assert (=> start!677702 (= condSetEmpty!48848 (= z1!570 ((as const (Array Context!12830 Bool)) false)))))

(assert (=> start!677702 setRes!48848))

(declare-fun inv!86406 (Context!12830) Bool)

(assert (=> start!677702 (and (inv!86406 ct2!306) e!4221875)))

(assert (=> start!677702 e!4221870))

(declare-fun b!7023161 () Bool)

(declare-fun res!2867030 () Bool)

(assert (=> b!7023161 (=> res!2867030 e!4221873)))

(assert (=> b!7023161 (= res!2867030 (not (nullableContext!79 ct2!306)))))

(declare-fun b!7023162 () Bool)

(declare-fun ++!15457 (List!67789 List!67789) List!67789)

(assert (=> b!7023162 (= e!4221872 (= (++!15457 Nil!67665 s!7408) s!7408))))

(declare-datatypes ((tuple2!68048 0))(
  ( (tuple2!68049 (_1!37327 List!67789) (_2!37327 List!67789)) )
))
(declare-datatypes ((Option!16856 0))(
  ( (None!16855) (Some!16855 (v!53133 tuple2!68048)) )
))
(declare-fun isDefined!13557 (Option!16856) Bool)

(declare-fun findConcatSeparationZippers!372 ((InoxSet Context!12830) (InoxSet Context!12830) List!67789 List!67789 List!67789) Option!16856)

(assert (=> b!7023162 (isDefined!13557 (findConcatSeparationZippers!372 z1!570 lt!2513002 Nil!67665 Nil!67665 Nil!67665))))

(declare-fun lt!2513001 () Unit!161504)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!44 ((InoxSet Context!12830) (InoxSet Context!12830) List!67789 List!67789 List!67789 List!67789 List!67789) Unit!161504)

(assert (=> b!7023162 (= lt!2513001 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!44 z1!570 lt!2513002 Nil!67665 Nil!67665 Nil!67665 Nil!67665 Nil!67665))))

(declare-fun setElem!48848 () Context!12830)

(declare-fun tp!1934794 () Bool)

(declare-fun setNonEmpty!48848 () Bool)

(assert (=> setNonEmpty!48848 (= setRes!48848 (and tp!1934794 (inv!86406 setElem!48848) e!4221874))))

(declare-fun setRest!48848 () (InoxSet Context!12830))

(assert (=> setNonEmpty!48848 (= z1!570 ((_ map or) (store ((as const (Array Context!12830 Bool)) false) setElem!48848 true) setRest!48848))))

(assert (=> b!7023163 (= e!4221876 e!4221869)))

(declare-fun res!2867023 () Bool)

(assert (=> b!7023163 (=> (not res!2867023) (not e!4221869))))

(assert (=> b!7023163 (= res!2867023 (= (Context!12831 lt!2513009) lt!2513003))))

(declare-fun ++!15458 (List!67788 List!67788) List!67788)

(assert (=> b!7023163 (= lt!2513009 (++!15458 (exprs!6915 lt!2513010) (exprs!6915 ct2!306)))))

(declare-fun lt!2513011 () Unit!161504)

(declare-fun lemmaConcatPreservesForall!746 (List!67788 List!67788 Int) Unit!161504)

(assert (=> b!7023163 (= lt!2513011 (lemmaConcatPreservesForall!746 (exprs!6915 lt!2513010) (exprs!6915 ct2!306) lambda!412154))))

(declare-fun lambda!412153 () Int)

(declare-fun mapPost2!266 ((InoxSet Context!12830) Int Context!12830) Context!12830)

(assert (=> b!7023163 (= lt!2513010 (mapPost2!266 z1!570 lambda!412153 lt!2513003))))

(declare-fun b!7023164 () Bool)

(declare-fun res!2867027 () Bool)

(assert (=> b!7023164 (=> res!2867027 e!4221872)))

(assert (=> b!7023164 (= res!2867027 (not (= (++!15457 Nil!67665 Nil!67665) Nil!67665)))))

(declare-fun b!7023165 () Bool)

(assert (=> b!7023165 (= e!4221873 e!4221872)))

(declare-fun res!2867032 () Bool)

(assert (=> b!7023165 (=> res!2867032 e!4221872)))

(assert (=> b!7023165 (= res!2867032 (not (matchZipper!2959 z1!570 Nil!67665)))))

(assert (=> b!7023165 (exists!3318 lt!2513002 lambda!412152)))

(declare-fun lt!2513004 () Unit!161504)

(declare-fun lemmaContainsThenExists!117 ((InoxSet Context!12830) Context!12830 Int) Unit!161504)

(assert (=> b!7023165 (= lt!2513004 (lemmaContainsThenExists!117 lt!2513002 ct2!306 lambda!412152))))

(assert (=> b!7023165 (= lt!2513002 (store ((as const (Array Context!12830 Bool)) false) ct2!306 true))))

(assert (=> b!7023165 (exists!3318 z1!570 lambda!412152)))

(declare-fun lt!2513013 () Unit!161504)

(assert (=> b!7023165 (= lt!2513013 (lemmaContainsThenExists!117 z1!570 lt!2513010 lambda!412152))))

(assert (= (and start!677702 res!2867024) b!7023152))

(assert (= (and b!7023152 res!2867028) b!7023151))

(assert (= (and b!7023151 res!2867029) b!7023158))

(assert (= (and b!7023158 res!2867033) b!7023156))

(assert (= (and b!7023156 res!2867025) b!7023163))

(assert (= (and b!7023163 res!2867023) b!7023159))

(assert (= (and b!7023159 (not res!2867022)) b!7023161))

(assert (= (and b!7023161 (not res!2867030)) b!7023165))

(assert (= (and b!7023165 (not res!2867032)) b!7023153))

(assert (= (and b!7023153 (not res!2867031)) b!7023164))

(assert (= (and b!7023164 (not res!2867027)) b!7023160))

(assert (= (and b!7023160 (not res!2867026)) b!7023162))

(assert (= (and start!677702 condSetEmpty!48848) setIsEmpty!48848))

(assert (= (and start!677702 (not condSetEmpty!48848)) setNonEmpty!48848))

(assert (= setNonEmpty!48848 b!7023154))

(assert (= start!677702 b!7023155))

(assert (= (and start!677702 ((_ is Cons!67665) s!7408)) b!7023157))

(declare-fun m!7725454 () Bool)

(assert (=> b!7023159 m!7725454))

(declare-fun m!7725456 () Bool)

(assert (=> b!7023159 m!7725456))

(declare-fun m!7725458 () Bool)

(assert (=> b!7023159 m!7725458))

(declare-fun m!7725460 () Bool)

(assert (=> b!7023159 m!7725460))

(declare-fun m!7725462 () Bool)

(assert (=> b!7023159 m!7725462))

(declare-fun m!7725464 () Bool)

(assert (=> b!7023159 m!7725464))

(declare-fun m!7725466 () Bool)

(assert (=> b!7023159 m!7725466))

(declare-fun m!7725468 () Bool)

(assert (=> b!7023162 m!7725468))

(declare-fun m!7725470 () Bool)

(assert (=> b!7023162 m!7725470))

(assert (=> b!7023162 m!7725470))

(declare-fun m!7725472 () Bool)

(assert (=> b!7023162 m!7725472))

(declare-fun m!7725474 () Bool)

(assert (=> b!7023162 m!7725474))

(declare-fun m!7725476 () Bool)

(assert (=> start!677702 m!7725476))

(declare-fun m!7725478 () Bool)

(assert (=> start!677702 m!7725478))

(declare-fun m!7725480 () Bool)

(assert (=> start!677702 m!7725480))

(declare-fun m!7725482 () Bool)

(assert (=> b!7023160 m!7725482))

(declare-fun m!7725484 () Bool)

(assert (=> setNonEmpty!48848 m!7725484))

(declare-fun m!7725486 () Bool)

(assert (=> b!7023163 m!7725486))

(declare-fun m!7725488 () Bool)

(assert (=> b!7023163 m!7725488))

(declare-fun m!7725490 () Bool)

(assert (=> b!7023163 m!7725490))

(declare-fun m!7725492 () Bool)

(assert (=> b!7023161 m!7725492))

(declare-fun m!7725494 () Bool)

(assert (=> b!7023151 m!7725494))

(declare-fun m!7725496 () Bool)

(assert (=> b!7023158 m!7725496))

(declare-fun m!7725498 () Bool)

(assert (=> b!7023164 m!7725498))

(declare-fun m!7725500 () Bool)

(assert (=> b!7023165 m!7725500))

(declare-fun m!7725502 () Bool)

(assert (=> b!7023165 m!7725502))

(declare-fun m!7725504 () Bool)

(assert (=> b!7023165 m!7725504))

(declare-fun m!7725506 () Bool)

(assert (=> b!7023165 m!7725506))

(declare-fun m!7725508 () Bool)

(assert (=> b!7023165 m!7725508))

(declare-fun m!7725510 () Bool)

(assert (=> b!7023165 m!7725510))

(declare-fun m!7725512 () Bool)

(assert (=> b!7023153 m!7725512))

(declare-fun m!7725514 () Bool)

(assert (=> b!7023156 m!7725514))

(declare-fun m!7725516 () Bool)

(assert (=> b!7023156 m!7725516))

(check-sat (not b!7023159) (not b!7023165) (not b!7023157) tp_is_empty!44063 (not b!7023163) (not b!7023154) (not b!7023151) (not b!7023164) (not b!7023156) (not b!7023161) (not b!7023162) (not setNonEmpty!48848) (not b!7023158) (not b!7023160) (not b!7023153) (not b!7023155) (not start!677702))
(check-sat)
