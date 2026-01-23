; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741978 () Bool)

(assert start!741978)

(declare-fun b!7820409 () Bool)

(declare-fun e!4627038 () Bool)

(declare-fun tp!2307973 () Bool)

(declare-fun tp!2307986 () Bool)

(assert (=> b!7820409 (= e!4627038 (and tp!2307973 tp!2307986))))

(declare-fun b!7820410 () Bool)

(declare-fun e!4627035 () Bool)

(declare-fun tp_is_empty!52237 () Bool)

(declare-fun tp!2307984 () Bool)

(assert (=> b!7820410 (= e!4627035 (and tp_is_empty!52237 tp!2307984))))

(declare-fun b!7820411 () Bool)

(declare-fun e!4627042 () Bool)

(declare-datatypes ((C!42208 0))(
  ( (C!42209 (val!31544 Int)) )
))
(declare-datatypes ((Regex!20941 0))(
  ( (ElementMatch!20941 (c!1439314 C!42208)) (Concat!29786 (regOne!42394 Regex!20941) (regTwo!42394 Regex!20941)) (EmptyExpr!20941) (Star!20941 (reg!21270 Regex!20941)) (EmptyLang!20941) (Union!20941 (regOne!42395 Regex!20941) (regTwo!42395 Regex!20941)) )
))
(declare-fun r2!6199 () Regex!20941)

(declare-datatypes ((List!73778 0))(
  ( (Nil!73654) (Cons!73654 (h!80102 C!42208) (t!388513 List!73778)) )
))
(declare-fun s2Rec!453 () List!73778)

(declare-fun matchR!10397 (Regex!20941 List!73778) Bool)

(assert (=> b!7820411 (= e!4627042 (not (matchR!10397 r2!6199 s2Rec!453)))))

(declare-fun b!7820412 () Bool)

(declare-datatypes ((Unit!168664 0))(
  ( (Unit!168665) )
))
(declare-fun e!4627034 () Unit!168664)

(declare-fun Unit!168666 () Unit!168664)

(assert (=> b!7820412 (= e!4627034 Unit!168666)))

(declare-fun b!7820413 () Bool)

(declare-fun e!4627041 () Bool)

(declare-fun e!4627036 () Bool)

(assert (=> b!7820413 (= e!4627041 (not e!4627036))))

(declare-fun res!3112825 () Bool)

(assert (=> b!7820413 (=> res!3112825 e!4627036)))

(declare-fun s1!4101 () List!73778)

(declare-fun s!14274 () List!73778)

(declare-fun isPrefix!6291 (List!73778 List!73778) Bool)

(assert (=> b!7820413 (= res!3112825 (not (isPrefix!6291 s1!4101 s!14274)))))

(declare-fun lt!2676359 () Unit!168664)

(assert (=> b!7820413 (= lt!2676359 e!4627034)))

(declare-fun c!1439313 () Bool)

(declare-fun s1Rec!453 () List!73778)

(declare-fun size!42743 (List!73778) Int)

(assert (=> b!7820413 (= c!1439313 (= (size!42743 s1Rec!453) (size!42743 s1!4101)))))

(declare-fun lt!2676356 () List!73778)

(declare-fun lt!2676351 () List!73778)

(assert (=> b!7820413 (isPrefix!6291 lt!2676356 lt!2676351)))

(declare-fun lt!2676358 () Unit!168664)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3755 (List!73778 List!73778) Unit!168664)

(assert (=> b!7820413 (= lt!2676358 (lemmaConcatTwoListThenFirstIsPrefix!3755 lt!2676356 (t!388513 s2Rec!453)))))

(assert (=> b!7820413 (= lt!2676351 s!14274)))

(declare-fun ++!17975 (List!73778 List!73778) List!73778)

(assert (=> b!7820413 (= lt!2676351 (++!17975 lt!2676356 (t!388513 s2Rec!453)))))

(assert (=> b!7820413 (= lt!2676356 (++!17975 s1Rec!453 (Cons!73654 (h!80102 s2Rec!453) Nil!73654)))))

(declare-fun lt!2676360 () Unit!168664)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3428 (List!73778 C!42208 List!73778 List!73778) Unit!168664)

(assert (=> b!7820413 (= lt!2676360 (lemmaMoveElementToOtherListKeepsConcatEq!3428 s1Rec!453 (h!80102 s2Rec!453) (t!388513 s2Rec!453) s!14274))))

(declare-fun lt!2676357 () Unit!168664)

(declare-fun e!4627045 () Unit!168664)

(assert (=> b!7820413 (= lt!2676357 e!4627045)))

(declare-fun c!1439312 () Bool)

(assert (=> b!7820413 (= c!1439312 (= s1Rec!453 s1!4101))))

(declare-fun lt!2676353 () List!73778)

(assert (=> b!7820413 (isPrefix!6291 s1Rec!453 lt!2676353)))

(declare-fun lt!2676348 () Unit!168664)

(assert (=> b!7820413 (= lt!2676348 (lemmaConcatTwoListThenFirstIsPrefix!3755 s1Rec!453 s2Rec!453))))

(declare-fun lt!2676350 () List!73778)

(assert (=> b!7820413 (isPrefix!6291 s1!4101 lt!2676350)))

(declare-fun lt!2676354 () Unit!168664)

(declare-fun s2!3721 () List!73778)

(assert (=> b!7820413 (= lt!2676354 (lemmaConcatTwoListThenFirstIsPrefix!3755 s1!4101 s2!3721))))

(declare-fun b!7820414 () Bool)

(declare-fun tp!2307985 () Bool)

(assert (=> b!7820414 (= e!4627038 tp!2307985)))

(declare-fun b!7820415 () Bool)

(declare-fun res!3112822 () Bool)

(assert (=> b!7820415 (=> (not res!3112822) (not e!4627041))))

(declare-fun r1!6261 () Regex!20941)

(assert (=> b!7820415 (= res!3112822 (matchR!10397 r1!6261 s1!4101))))

(declare-fun b!7820416 () Bool)

(declare-fun Unit!168667 () Unit!168664)

(assert (=> b!7820416 (= e!4627045 Unit!168667)))

(declare-fun lt!2676355 () Unit!168664)

(declare-fun lemmaSamePrefixThenSameSuffix!2899 (List!73778 List!73778 List!73778 List!73778 List!73778) Unit!168664)

(assert (=> b!7820416 (= lt!2676355 (lemmaSamePrefixThenSameSuffix!2899 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7820416 false))

(declare-fun b!7820418 () Bool)

(declare-fun e!4627033 () Bool)

(declare-fun tp!2307982 () Bool)

(assert (=> b!7820418 (= e!4627033 (and tp_is_empty!52237 tp!2307982))))

(declare-fun b!7820419 () Bool)

(declare-fun res!3112821 () Bool)

(assert (=> b!7820419 (=> res!3112821 e!4627036)))

(assert (=> b!7820419 (= res!3112821 (not (isPrefix!6291 lt!2676356 s!14274)))))

(declare-fun b!7820420 () Bool)

(declare-fun e!4627043 () Bool)

(declare-fun tp!2307978 () Bool)

(assert (=> b!7820420 (= e!4627043 (and tp_is_empty!52237 tp!2307978))))

(declare-fun b!7820421 () Bool)

(declare-fun res!3112831 () Bool)

(assert (=> b!7820421 (=> (not res!3112831) (not e!4627041))))

(assert (=> b!7820421 (= res!3112831 (matchR!10397 r2!6199 s2!3721))))

(declare-fun b!7820422 () Bool)

(declare-fun e!4627044 () Bool)

(declare-fun tp!2307981 () Bool)

(assert (=> b!7820422 (= e!4627044 (and tp_is_empty!52237 tp!2307981))))

(declare-fun b!7820423 () Bool)

(assert (=> b!7820423 (= e!4627036 true)))

(declare-fun lt!2676352 () Int)

(assert (=> b!7820423 (= lt!2676352 (size!42743 lt!2676356))))

(declare-fun b!7820424 () Bool)

(declare-fun e!4627040 () Bool)

(declare-fun tp!2307976 () Bool)

(declare-fun tp!2307977 () Bool)

(assert (=> b!7820424 (= e!4627040 (and tp!2307976 tp!2307977))))

(declare-fun b!7820425 () Bool)

(assert (=> b!7820425 (= e!4627040 tp_is_empty!52237)))

(declare-fun b!7820426 () Bool)

(declare-fun res!3112828 () Bool)

(assert (=> b!7820426 (=> (not res!3112828) (not e!4627041))))

(assert (=> b!7820426 (= res!3112828 e!4627042)))

(declare-fun res!3112824 () Bool)

(assert (=> b!7820426 (=> res!3112824 e!4627042)))

(assert (=> b!7820426 (= res!3112824 (not (matchR!10397 r1!6261 s1Rec!453)))))

(declare-fun b!7820427 () Bool)

(declare-fun Unit!168668 () Unit!168664)

(assert (=> b!7820427 (= e!4627045 Unit!168668)))

(declare-fun b!7820428 () Bool)

(declare-fun tp!2307980 () Bool)

(assert (=> b!7820428 (= e!4627040 tp!2307980)))

(declare-fun b!7820429 () Bool)

(declare-fun tp!2307979 () Bool)

(declare-fun tp!2307987 () Bool)

(assert (=> b!7820429 (= e!4627040 (and tp!2307979 tp!2307987))))

(declare-fun b!7820430 () Bool)

(declare-fun res!3112829 () Bool)

(declare-fun e!4627032 () Bool)

(assert (=> b!7820430 (=> (not res!3112829) (not e!4627032))))

(assert (=> b!7820430 (= res!3112829 (isPrefix!6291 s1Rec!453 s1!4101))))

(declare-fun b!7820431 () Bool)

(assert (=> b!7820431 (= e!4627038 tp_is_empty!52237)))

(declare-fun b!7820432 () Bool)

(declare-fun res!3112832 () Bool)

(declare-fun e!4627039 () Bool)

(assert (=> b!7820432 (=> (not res!3112832) (not e!4627039))))

(declare-fun validRegex!11355 (Regex!20941) Bool)

(assert (=> b!7820432 (= res!3112832 (validRegex!11355 r2!6199))))

(declare-fun b!7820433 () Bool)

(declare-fun tp!2307974 () Bool)

(declare-fun tp!2307983 () Bool)

(assert (=> b!7820433 (= e!4627038 (and tp!2307974 tp!2307983))))

(declare-fun b!7820434 () Bool)

(declare-fun Unit!168669 () Unit!168664)

(assert (=> b!7820434 (= e!4627034 Unit!168669)))

(declare-fun lt!2676349 () Unit!168664)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1541 (List!73778 List!73778 List!73778) Unit!168664)

(assert (=> b!7820434 (= lt!2676349 (lemmaIsPrefixSameLengthThenSameList!1541 s1!4101 s1Rec!453 s!14274))))

(assert (=> b!7820434 false))

(declare-fun b!7820435 () Bool)

(declare-fun e!4627037 () Bool)

(declare-fun tp!2307975 () Bool)

(assert (=> b!7820435 (= e!4627037 (and tp_is_empty!52237 tp!2307975))))

(declare-fun res!3112830 () Bool)

(assert (=> start!741978 (=> (not res!3112830) (not e!4627039))))

(assert (=> start!741978 (= res!3112830 (validRegex!11355 r1!6261))))

(assert (=> start!741978 e!4627039))

(assert (=> start!741978 e!4627040))

(assert (=> start!741978 e!4627044))

(assert (=> start!741978 e!4627043))

(assert (=> start!741978 e!4627035))

(assert (=> start!741978 e!4627037))

(assert (=> start!741978 e!4627038))

(assert (=> start!741978 e!4627033))

(declare-fun b!7820417 () Bool)

(assert (=> b!7820417 (= e!4627039 e!4627032)))

(declare-fun res!3112827 () Bool)

(assert (=> b!7820417 (=> (not res!3112827) (not e!4627032))))

(assert (=> b!7820417 (= res!3112827 (= lt!2676350 s!14274))))

(assert (=> b!7820417 (= lt!2676350 (++!17975 s1!4101 s2!3721))))

(declare-fun b!7820436 () Bool)

(assert (=> b!7820436 (= e!4627032 e!4627041)))

(declare-fun res!3112823 () Bool)

(assert (=> b!7820436 (=> (not res!3112823) (not e!4627041))))

(assert (=> b!7820436 (= res!3112823 (= lt!2676353 s!14274))))

(assert (=> b!7820436 (= lt!2676353 (++!17975 s1Rec!453 s2Rec!453))))

(declare-fun b!7820437 () Bool)

(declare-fun res!3112826 () Bool)

(assert (=> b!7820437 (=> (not res!3112826) (not e!4627041))))

(get-info :version)

(assert (=> b!7820437 (= res!3112826 (not ((_ is Nil!73654) s2Rec!453)))))

(assert (= (and start!741978 res!3112830) b!7820432))

(assert (= (and b!7820432 res!3112832) b!7820417))

(assert (= (and b!7820417 res!3112827) b!7820430))

(assert (= (and b!7820430 res!3112829) b!7820436))

(assert (= (and b!7820436 res!3112823) b!7820415))

(assert (= (and b!7820415 res!3112822) b!7820421))

(assert (= (and b!7820421 res!3112831) b!7820426))

(assert (= (and b!7820426 (not res!3112824)) b!7820411))

(assert (= (and b!7820426 res!3112828) b!7820437))

(assert (= (and b!7820437 res!3112826) b!7820413))

(assert (= (and b!7820413 c!1439312) b!7820416))

(assert (= (and b!7820413 (not c!1439312)) b!7820427))

(assert (= (and b!7820413 c!1439313) b!7820434))

(assert (= (and b!7820413 (not c!1439313)) b!7820412))

(assert (= (and b!7820413 (not res!3112825)) b!7820419))

(assert (= (and b!7820419 (not res!3112821)) b!7820423))

(assert (= (and start!741978 ((_ is ElementMatch!20941) r2!6199)) b!7820425))

(assert (= (and start!741978 ((_ is Concat!29786) r2!6199)) b!7820424))

(assert (= (and start!741978 ((_ is Star!20941) r2!6199)) b!7820428))

(assert (= (and start!741978 ((_ is Union!20941) r2!6199)) b!7820429))

(assert (= (and start!741978 ((_ is Cons!73654) s1!4101)) b!7820422))

(assert (= (and start!741978 ((_ is Cons!73654) s2!3721)) b!7820420))

(assert (= (and start!741978 ((_ is Cons!73654) s2Rec!453)) b!7820410))

(assert (= (and start!741978 ((_ is Cons!73654) s!14274)) b!7820435))

(assert (= (and start!741978 ((_ is ElementMatch!20941) r1!6261)) b!7820431))

(assert (= (and start!741978 ((_ is Concat!29786) r1!6261)) b!7820409))

(assert (= (and start!741978 ((_ is Star!20941) r1!6261)) b!7820414))

(assert (= (and start!741978 ((_ is Union!20941) r1!6261)) b!7820433))

(assert (= (and start!741978 ((_ is Cons!73654) s1Rec!453)) b!7820418))

(declare-fun m!8244880 () Bool)

(assert (=> b!7820434 m!8244880))

(declare-fun m!8244882 () Bool)

(assert (=> b!7820413 m!8244882))

(declare-fun m!8244884 () Bool)

(assert (=> b!7820413 m!8244884))

(declare-fun m!8244886 () Bool)

(assert (=> b!7820413 m!8244886))

(declare-fun m!8244888 () Bool)

(assert (=> b!7820413 m!8244888))

(declare-fun m!8244890 () Bool)

(assert (=> b!7820413 m!8244890))

(declare-fun m!8244892 () Bool)

(assert (=> b!7820413 m!8244892))

(declare-fun m!8244894 () Bool)

(assert (=> b!7820413 m!8244894))

(declare-fun m!8244896 () Bool)

(assert (=> b!7820413 m!8244896))

(declare-fun m!8244898 () Bool)

(assert (=> b!7820413 m!8244898))

(declare-fun m!8244900 () Bool)

(assert (=> b!7820413 m!8244900))

(declare-fun m!8244902 () Bool)

(assert (=> b!7820413 m!8244902))

(declare-fun m!8244904 () Bool)

(assert (=> b!7820413 m!8244904))

(declare-fun m!8244906 () Bool)

(assert (=> b!7820430 m!8244906))

(declare-fun m!8244908 () Bool)

(assert (=> b!7820415 m!8244908))

(declare-fun m!8244910 () Bool)

(assert (=> b!7820411 m!8244910))

(declare-fun m!8244912 () Bool)

(assert (=> b!7820416 m!8244912))

(declare-fun m!8244914 () Bool)

(assert (=> b!7820436 m!8244914))

(declare-fun m!8244916 () Bool)

(assert (=> b!7820423 m!8244916))

(declare-fun m!8244918 () Bool)

(assert (=> start!741978 m!8244918))

(declare-fun m!8244920 () Bool)

(assert (=> b!7820426 m!8244920))

(declare-fun m!8244922 () Bool)

(assert (=> b!7820417 m!8244922))

(declare-fun m!8244924 () Bool)

(assert (=> b!7820432 m!8244924))

(declare-fun m!8244926 () Bool)

(assert (=> b!7820419 m!8244926))

(declare-fun m!8244928 () Bool)

(assert (=> b!7820421 m!8244928))

(check-sat (not b!7820429) (not b!7820436) (not b!7820423) (not b!7820424) (not start!741978) tp_is_empty!52237 (not b!7820430) (not b!7820416) (not b!7820432) (not b!7820417) (not b!7820434) (not b!7820421) (not b!7820422) (not b!7820409) (not b!7820428) (not b!7820435) (not b!7820414) (not b!7820419) (not b!7820426) (not b!7820418) (not b!7820420) (not b!7820410) (not b!7820413) (not b!7820415) (not b!7820433) (not b!7820411))
(check-sat)
