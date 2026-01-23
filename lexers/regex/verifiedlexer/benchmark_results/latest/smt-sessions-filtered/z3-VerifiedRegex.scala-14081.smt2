; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742170 () Bool)

(assert start!742170)

(declare-fun b!7831394 () Bool)

(declare-fun res!3115000 () Bool)

(declare-fun e!4631478 () Bool)

(assert (=> b!7831394 (=> (not res!3115000) (not e!4631478))))

(declare-datatypes ((C!42240 0))(
  ( (C!42241 (val!31560 Int)) )
))
(declare-datatypes ((Regex!20957 0))(
  ( (ElementMatch!20957 (c!1440558 C!42240)) (Concat!29802 (regOne!42426 Regex!20957) (regTwo!42426 Regex!20957)) (EmptyExpr!20957) (Star!20957 (reg!21286 Regex!20957)) (EmptyLang!20957) (Union!20957 (regOne!42427 Regex!20957) (regTwo!42427 Regex!20957)) )
))
(declare-fun r2!6199 () Regex!20957)

(declare-fun validRegex!11371 (Regex!20957) Bool)

(assert (=> b!7831394 (= res!3115000 (validRegex!11371 r2!6199))))

(declare-fun b!7831395 () Bool)

(declare-fun e!4631480 () Bool)

(declare-fun tp!2315782 () Bool)

(assert (=> b!7831395 (= e!4631480 tp!2315782)))

(declare-fun b!7831397 () Bool)

(declare-fun e!4631473 () Bool)

(declare-datatypes ((List!73794 0))(
  ( (Nil!73670) (Cons!73670 (h!80118 C!42240) (t!388529 List!73794)) )
))
(declare-fun s2Rec!453 () List!73794)

(declare-fun matchR!10413 (Regex!20957 List!73794) Bool)

(assert (=> b!7831397 (= e!4631473 (not (matchR!10413 r2!6199 s2Rec!453)))))

(declare-fun b!7831398 () Bool)

(declare-fun e!4631475 () Bool)

(declare-fun tp_is_empty!52269 () Bool)

(declare-fun tp!2315780 () Bool)

(assert (=> b!7831398 (= e!4631475 (and tp_is_empty!52269 tp!2315780))))

(declare-fun b!7831399 () Bool)

(declare-fun res!3115004 () Bool)

(assert (=> b!7831399 (=> (not res!3115004) (not e!4631478))))

(declare-fun s1!4101 () List!73794)

(declare-fun s2!3721 () List!73794)

(declare-fun s!14274 () List!73794)

(declare-fun ++!17991 (List!73794 List!73794) List!73794)

(assert (=> b!7831399 (= res!3115004 (= (++!17991 s1!4101 s2!3721) s!14274))))

(declare-fun b!7831400 () Bool)

(declare-fun tp!2315781 () Bool)

(declare-fun tp!2315793 () Bool)

(assert (=> b!7831400 (= e!4631480 (and tp!2315781 tp!2315793))))

(declare-fun e!4631477 () Bool)

(declare-fun b!7831401 () Bool)

(declare-fun r1!6261 () Regex!20957)

(declare-fun s1Rec!453 () List!73794)

(declare-datatypes ((tuple2!69984 0))(
  ( (tuple2!69985 (_1!38295 List!73794) (_2!38295 List!73794)) )
))
(declare-datatypes ((Option!17786 0))(
  ( (None!17785) (Some!17785 (v!54920 tuple2!69984)) )
))
(declare-fun findConcatSeparation!3816 (Regex!20957 Regex!20957 List!73794 List!73794 List!73794) Option!17786)

(assert (=> b!7831401 (= e!4631477 (not (= (findConcatSeparation!3816 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274) (Some!17785 (tuple2!69985 s1Rec!453 s2Rec!453)))))))

(declare-fun b!7831402 () Bool)

(declare-fun res!3115010 () Bool)

(assert (=> b!7831402 (=> (not res!3115010) (not e!4631478))))

(assert (=> b!7831402 (= res!3115010 e!4631473)))

(declare-fun res!3115009 () Bool)

(assert (=> b!7831402 (=> res!3115009 e!4631473)))

(assert (=> b!7831402 (= res!3115009 (not (matchR!10413 r1!6261 s1Rec!453)))))

(declare-fun b!7831403 () Bool)

(declare-fun e!4631481 () Bool)

(declare-fun tp!2315789 () Bool)

(declare-fun tp!2315790 () Bool)

(assert (=> b!7831403 (= e!4631481 (and tp!2315789 tp!2315790))))

(declare-fun b!7831404 () Bool)

(declare-fun e!4631474 () Bool)

(declare-fun tp!2315785 () Bool)

(assert (=> b!7831404 (= e!4631474 (and tp_is_empty!52269 tp!2315785))))

(declare-fun b!7831405 () Bool)

(declare-fun tp!2315788 () Bool)

(declare-fun tp!2315784 () Bool)

(assert (=> b!7831405 (= e!4631480 (and tp!2315788 tp!2315784))))

(declare-fun b!7831406 () Bool)

(declare-fun e!4631476 () Bool)

(declare-fun tp!2315783 () Bool)

(assert (=> b!7831406 (= e!4631476 (and tp_is_empty!52269 tp!2315783))))

(declare-fun b!7831396 () Bool)

(declare-fun res!3115003 () Bool)

(assert (=> b!7831396 (=> (not res!3115003) (not e!4631478))))

(declare-fun isPrefix!6307 (List!73794 List!73794) Bool)

(assert (=> b!7831396 (= res!3115003 (isPrefix!6307 s1Rec!453 s1!4101))))

(declare-fun res!3115007 () Bool)

(assert (=> start!742170 (=> (not res!3115007) (not e!4631478))))

(assert (=> start!742170 (= res!3115007 (validRegex!11371 r1!6261))))

(assert (=> start!742170 e!4631478))

(assert (=> start!742170 e!4631481))

(assert (=> start!742170 e!4631476))

(assert (=> start!742170 e!4631475))

(assert (=> start!742170 e!4631474))

(declare-fun e!4631479 () Bool)

(assert (=> start!742170 e!4631479))

(assert (=> start!742170 e!4631480))

(declare-fun e!4631472 () Bool)

(assert (=> start!742170 e!4631472))

(declare-fun b!7831407 () Bool)

(declare-fun res!3115006 () Bool)

(assert (=> b!7831407 (=> (not res!3115006) (not e!4631478))))

(assert (=> b!7831407 (= res!3115006 (= (++!17991 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7831408 () Bool)

(declare-fun res!3115005 () Bool)

(assert (=> b!7831408 (=> (not res!3115005) (not e!4631477))))

(declare-fun lt!2676934 () Int)

(declare-fun size!42757 (List!73794) Int)

(assert (=> b!7831408 (= res!3115005 (= lt!2676934 (size!42757 s1!4101)))))

(declare-fun b!7831409 () Bool)

(declare-fun tp!2315787 () Bool)

(assert (=> b!7831409 (= e!4631481 tp!2315787)))

(declare-fun b!7831410 () Bool)

(declare-fun res!3115012 () Bool)

(assert (=> b!7831410 (=> (not res!3115012) (not e!4631478))))

(assert (=> b!7831410 (= res!3115012 (matchR!10413 r2!6199 s2!3721))))

(declare-fun b!7831411 () Bool)

(assert (=> b!7831411 (= e!4631481 tp_is_empty!52269)))

(declare-fun b!7831412 () Bool)

(assert (=> b!7831412 (= e!4631478 e!4631477)))

(declare-fun res!3115001 () Bool)

(assert (=> b!7831412 (=> (not res!3115001) (not e!4631477))))

(assert (=> b!7831412 (= res!3115001 (= lt!2676934 (size!42757 s!14274)))))

(assert (=> b!7831412 (= lt!2676934 (size!42757 s1Rec!453))))

(declare-fun b!7831413 () Bool)

(declare-fun res!3115002 () Bool)

(assert (=> b!7831413 (=> (not res!3115002) (not e!4631477))))

(assert (=> b!7831413 (= res!3115002 (and (= s1Rec!453 s1!4101) (= s2Rec!453 s2!3721)))))

(declare-fun b!7831414 () Bool)

(declare-fun res!3115008 () Bool)

(assert (=> b!7831414 (=> (not res!3115008) (not e!4631478))))

(get-info :version)

(assert (=> b!7831414 (= res!3115008 ((_ is Nil!73670) s2Rec!453))))

(declare-fun b!7831415 () Bool)

(declare-fun tp!2315779 () Bool)

(assert (=> b!7831415 (= e!4631472 (and tp_is_empty!52269 tp!2315779))))

(declare-fun b!7831416 () Bool)

(declare-fun res!3115011 () Bool)

(assert (=> b!7831416 (=> (not res!3115011) (not e!4631478))))

(assert (=> b!7831416 (= res!3115011 (matchR!10413 r1!6261 s1!4101))))

(declare-fun b!7831417 () Bool)

(declare-fun tp!2315786 () Bool)

(declare-fun tp!2315792 () Bool)

(assert (=> b!7831417 (= e!4631481 (and tp!2315786 tp!2315792))))

(declare-fun b!7831418 () Bool)

(declare-fun tp!2315791 () Bool)

(assert (=> b!7831418 (= e!4631479 (and tp_is_empty!52269 tp!2315791))))

(declare-fun b!7831419 () Bool)

(assert (=> b!7831419 (= e!4631480 tp_is_empty!52269)))

(assert (= (and start!742170 res!3115007) b!7831394))

(assert (= (and b!7831394 res!3115000) b!7831399))

(assert (= (and b!7831399 res!3115004) b!7831396))

(assert (= (and b!7831396 res!3115003) b!7831407))

(assert (= (and b!7831407 res!3115006) b!7831416))

(assert (= (and b!7831416 res!3115011) b!7831410))

(assert (= (and b!7831410 res!3115012) b!7831402))

(assert (= (and b!7831402 (not res!3115009)) b!7831397))

(assert (= (and b!7831402 res!3115010) b!7831414))

(assert (= (and b!7831414 res!3115008) b!7831412))

(assert (= (and b!7831412 res!3115001) b!7831408))

(assert (= (and b!7831408 res!3115005) b!7831413))

(assert (= (and b!7831413 res!3115002) b!7831401))

(assert (= (and start!742170 ((_ is ElementMatch!20957) r2!6199)) b!7831411))

(assert (= (and start!742170 ((_ is Concat!29802) r2!6199)) b!7831403))

(assert (= (and start!742170 ((_ is Star!20957) r2!6199)) b!7831409))

(assert (= (and start!742170 ((_ is Union!20957) r2!6199)) b!7831417))

(assert (= (and start!742170 ((_ is Cons!73670) s1!4101)) b!7831406))

(assert (= (and start!742170 ((_ is Cons!73670) s2!3721)) b!7831398))

(assert (= (and start!742170 ((_ is Cons!73670) s2Rec!453)) b!7831404))

(assert (= (and start!742170 ((_ is Cons!73670) s!14274)) b!7831418))

(assert (= (and start!742170 ((_ is ElementMatch!20957) r1!6261)) b!7831419))

(assert (= (and start!742170 ((_ is Concat!29802) r1!6261)) b!7831405))

(assert (= (and start!742170 ((_ is Star!20957) r1!6261)) b!7831395))

(assert (= (and start!742170 ((_ is Union!20957) r1!6261)) b!7831400))

(assert (= (and start!742170 ((_ is Cons!73670) s1Rec!453)) b!7831415))

(declare-fun m!8248672 () Bool)

(assert (=> b!7831401 m!8248672))

(declare-fun m!8248674 () Bool)

(assert (=> b!7831412 m!8248674))

(declare-fun m!8248676 () Bool)

(assert (=> b!7831412 m!8248676))

(declare-fun m!8248678 () Bool)

(assert (=> b!7831407 m!8248678))

(declare-fun m!8248680 () Bool)

(assert (=> start!742170 m!8248680))

(declare-fun m!8248682 () Bool)

(assert (=> b!7831394 m!8248682))

(declare-fun m!8248684 () Bool)

(assert (=> b!7831397 m!8248684))

(declare-fun m!8248686 () Bool)

(assert (=> b!7831410 m!8248686))

(declare-fun m!8248688 () Bool)

(assert (=> b!7831399 m!8248688))

(declare-fun m!8248690 () Bool)

(assert (=> b!7831396 m!8248690))

(declare-fun m!8248692 () Bool)

(assert (=> b!7831416 m!8248692))

(declare-fun m!8248694 () Bool)

(assert (=> b!7831408 m!8248694))

(declare-fun m!8248696 () Bool)

(assert (=> b!7831402 m!8248696))

(check-sat (not b!7831399) (not b!7831407) (not start!742170) (not b!7831417) (not b!7831398) (not b!7831405) (not b!7831401) (not b!7831416) (not b!7831410) (not b!7831409) (not b!7831400) (not b!7831396) (not b!7831395) (not b!7831397) (not b!7831403) tp_is_empty!52269 (not b!7831406) (not b!7831415) (not b!7831402) (not b!7831394) (not b!7831412) (not b!7831404) (not b!7831408) (not b!7831418))
(check-sat)
