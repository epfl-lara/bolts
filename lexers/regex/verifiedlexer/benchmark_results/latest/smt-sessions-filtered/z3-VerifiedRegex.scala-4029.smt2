; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217830 () Bool)

(assert start!217830)

(declare-fun b!2234865 () Bool)

(declare-fun b_free!64809 () Bool)

(declare-fun b_next!65513 () Bool)

(assert (=> b!2234865 (= b_free!64809 (not b_next!65513))))

(declare-fun tp!701974 () Bool)

(declare-fun b_and!174797 () Bool)

(assert (=> b!2234865 (= tp!701974 b_and!174797)))

(declare-fun b!2234874 () Bool)

(declare-fun b_free!64811 () Bool)

(declare-fun b_next!65515 () Bool)

(assert (=> b!2234874 (= b_free!64811 (not b_next!65515))))

(declare-fun tp!701975 () Bool)

(declare-fun b_and!174799 () Bool)

(assert (=> b!2234874 (= tp!701975 b_and!174799)))

(declare-fun b!2234864 () Bool)

(declare-fun res!956423 () Bool)

(declare-fun e!1428339 () Bool)

(assert (=> b!2234864 (=> (not res!956423) (not e!1428339))))

(declare-datatypes ((C!13044 0))(
  ( (C!13045 (val!7570 Int)) )
))
(declare-fun a!1010 () C!13044)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6449 0))(
  ( (ElementMatch!6449 (c!356261 C!13044)) (Concat!10787 (regOne!13410 Regex!6449) (regTwo!13410 Regex!6449)) (EmptyExpr!6449) (Star!6449 (reg!6778 Regex!6449)) (EmptyLang!6449) (Union!6449 (regOne!13411 Regex!6449) (regTwo!13411 Regex!6449)) )
))
(declare-datatypes ((List!26373 0))(
  ( (Nil!26279) (Cons!26279 (h!31680 Regex!6449) (t!199793 List!26373)) )
))
(declare-datatypes ((Context!3994 0))(
  ( (Context!3995 (exprs!2497 List!26373)) )
))
(declare-fun res!14291 () (InoxSet Context!3994))

(declare-fun ctx!56 () Context!3994)

(declare-fun r!4773 () Regex!6449)

(declare-fun derivationStepZipperDown!61 (Regex!6449 Context!3994 C!13044) (InoxSet Context!3994))

(assert (=> b!2234864 (= res!956423 (= res!14291 (derivationStepZipperDown!61 r!4773 ctx!56 a!1010)))))

(declare-fun mapIsEmpty!14516 () Bool)

(declare-fun mapRes!14516 () Bool)

(assert (=> mapIsEmpty!14516 mapRes!14516))

(declare-fun e!1428331 () Bool)

(declare-fun e!1428332 () Bool)

(assert (=> b!2234865 (= e!1428331 (and e!1428332 tp!701974))))

(declare-fun b!2234866 () Bool)

(declare-fun e!1428334 () Bool)

(declare-fun tp!701985 () Bool)

(declare-fun tp!701983 () Bool)

(assert (=> b!2234866 (= e!1428334 (and tp!701985 tp!701983))))

(declare-fun b!2234867 () Bool)

(declare-fun tp!701984 () Bool)

(declare-fun tp!701979 () Bool)

(assert (=> b!2234867 (= e!1428334 (and tp!701984 tp!701979))))

(declare-fun mapNonEmpty!14516 () Bool)

(declare-fun tp!701977 () Bool)

(declare-fun tp!701986 () Bool)

(assert (=> mapNonEmpty!14516 (= mapRes!14516 (and tp!701977 tp!701986))))

(declare-datatypes ((tuple3!3970 0))(
  ( (tuple3!3971 (_1!15286 Regex!6449) (_2!15286 Context!3994) (_3!2455 C!13044)) )
))
(declare-datatypes ((tuple2!25662 0))(
  ( (tuple2!25663 (_1!15287 tuple3!3970) (_2!15287 (InoxSet Context!3994))) )
))
(declare-datatypes ((List!26374 0))(
  ( (Nil!26280) (Cons!26280 (h!31681 tuple2!25662) (t!199794 List!26374)) )
))
(declare-fun mapValue!14516 () List!26374)

(declare-fun mapRest!14516 () (Array (_ BitVec 32) List!26374))

(declare-datatypes ((array!10718 0))(
  ( (array!10719 (arr!4761 (Array (_ BitVec 32) (_ BitVec 64))) (size!20542 (_ BitVec 32))) )
))
(declare-datatypes ((array!10720 0))(
  ( (array!10721 (arr!4762 (Array (_ BitVec 32) List!26374)) (size!20543 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6174 0))(
  ( (LongMapFixedSize!6175 (defaultEntry!3452 Int) (mask!7665 (_ BitVec 32)) (extraKeys!3335 (_ BitVec 32)) (zeroValue!3345 List!26374) (minValue!3345 List!26374) (_size!6221 (_ BitVec 32)) (_keys!3384 array!10718) (_values!3367 array!10720) (_vacant!3148 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12165 0))(
  ( (Cell!12166 (v!29883 LongMapFixedSize!6174)) )
))
(declare-datatypes ((MutLongMap!3087 0))(
  ( (LongMap!3087 (underlying!6375 Cell!12165)) (MutLongMapExt!3086 (__x!17487 Int)) )
))
(declare-datatypes ((Cell!12167 0))(
  ( (Cell!12168 (v!29884 MutLongMap!3087)) )
))
(declare-datatypes ((Hashable!2997 0))(
  ( (HashableExt!2996 (__x!17488 Int)) )
))
(declare-datatypes ((MutableMap!2997 0))(
  ( (MutableMapExt!2996 (__x!17489 Int)) (HashMap!2997 (underlying!6376 Cell!12167) (hashF!4920 Hashable!2997) (_size!6222 (_ BitVec 32)) (defaultValue!3159 Int)) )
))
(declare-datatypes ((CacheDown!2040 0))(
  ( (CacheDown!2041 (cache!3378 MutableMap!2997)) )
))
(declare-fun thiss!28822 () CacheDown!2040)

(declare-fun mapKey!14516 () (_ BitVec 32))

(assert (=> mapNonEmpty!14516 (= (arr!4762 (_values!3367 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822))))))) (store mapRest!14516 mapKey!14516 mapValue!14516))))

(declare-fun b!2234868 () Bool)

(declare-fun e!1428338 () Bool)

(assert (=> b!2234868 (= e!1428338 e!1428331)))

(declare-fun b!2234869 () Bool)

(declare-fun e!1428330 () Bool)

(declare-fun lt!831375 () MutLongMap!3087)

(get-info :version)

(assert (=> b!2234869 (= e!1428332 (and e!1428330 ((_ is LongMap!3087) lt!831375)))))

(assert (=> b!2234869 (= lt!831375 (v!29884 (underlying!6376 (cache!3378 thiss!28822))))))

(declare-fun b!2234871 () Bool)

(declare-fun e!1428337 () Bool)

(declare-fun tp!701976 () Bool)

(assert (=> b!2234871 (= e!1428337 (and tp!701976 mapRes!14516))))

(declare-fun condMapEmpty!14516 () Bool)

(declare-fun mapDefault!14516 () List!26374)

(assert (=> b!2234871 (= condMapEmpty!14516 (= (arr!4762 (_values!3367 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822))))))) ((as const (Array (_ BitVec 32) List!26374)) mapDefault!14516)))))

(declare-fun b!2234872 () Bool)

(declare-fun e!1428333 () Bool)

(declare-fun tp!701981 () Bool)

(assert (=> b!2234872 (= e!1428333 tp!701981)))

(declare-fun setIsEmpty!20302 () Bool)

(declare-fun setRes!20302 () Bool)

(assert (=> setIsEmpty!20302 setRes!20302))

(declare-fun b!2234873 () Bool)

(declare-fun valid!2332 (MutableMap!2997) Bool)

(assert (=> b!2234873 (= e!1428339 (not (valid!2332 (cache!3378 thiss!28822))))))

(declare-fun tp!701978 () Bool)

(declare-fun tp!701972 () Bool)

(declare-fun e!1428335 () Bool)

(declare-fun array_inv!3415 (array!10718) Bool)

(declare-fun array_inv!3416 (array!10720) Bool)

(assert (=> b!2234874 (= e!1428335 (and tp!701975 tp!701978 tp!701972 (array_inv!3415 (_keys!3384 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822))))))) (array_inv!3416 (_values!3367 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822))))))) e!1428337))))

(declare-fun b!2234875 () Bool)

(declare-fun e!1428340 () Bool)

(assert (=> b!2234875 (= e!1428330 e!1428340)))

(declare-fun b!2234876 () Bool)

(declare-fun tp_is_empty!10123 () Bool)

(assert (=> b!2234876 (= e!1428334 tp_is_empty!10123)))

(declare-fun b!2234877 () Bool)

(declare-fun res!956422 () Bool)

(assert (=> b!2234877 (=> (not res!956422) (not e!1428339))))

(declare-fun validRegex!2414 (Regex!6449) Bool)

(assert (=> b!2234877 (= res!956422 (validRegex!2414 r!4773))))

(declare-fun b!2234878 () Bool)

(assert (=> b!2234878 (= e!1428340 e!1428335)))

(declare-fun res!956424 () Bool)

(assert (=> start!217830 (=> (not res!956424) (not e!1428339))))

(declare-fun validCacheMapDown!301 (MutableMap!2997) Bool)

(assert (=> start!217830 (= res!956424 (validCacheMapDown!301 (cache!3378 thiss!28822)))))

(assert (=> start!217830 e!1428339))

(assert (=> start!217830 tp_is_empty!10123))

(declare-fun condSetEmpty!20302 () Bool)

(assert (=> start!217830 (= condSetEmpty!20302 (= res!14291 ((as const (Array Context!3994 Bool)) false)))))

(assert (=> start!217830 setRes!20302))

(declare-fun inv!35694 (Context!3994) Bool)

(assert (=> start!217830 (and (inv!35694 ctx!56) e!1428333)))

(assert (=> start!217830 e!1428334))

(declare-fun inv!35695 (CacheDown!2040) Bool)

(assert (=> start!217830 (and (inv!35695 thiss!28822) e!1428338)))

(declare-fun b!2234870 () Bool)

(declare-fun tp!701973 () Bool)

(assert (=> b!2234870 (= e!1428334 tp!701973)))

(declare-fun b!2234879 () Bool)

(declare-fun e!1428341 () Bool)

(declare-fun tp!701980 () Bool)

(assert (=> b!2234879 (= e!1428341 tp!701980)))

(declare-fun setElem!20302 () Context!3994)

(declare-fun setNonEmpty!20302 () Bool)

(declare-fun tp!701982 () Bool)

(assert (=> setNonEmpty!20302 (= setRes!20302 (and tp!701982 (inv!35694 setElem!20302) e!1428341))))

(declare-fun setRest!20302 () (InoxSet Context!3994))

(assert (=> setNonEmpty!20302 (= res!14291 ((_ map or) (store ((as const (Array Context!3994 Bool)) false) setElem!20302 true) setRest!20302))))

(declare-fun b!2234880 () Bool)

(declare-fun res!956421 () Bool)

(assert (=> b!2234880 (=> (not res!956421) (not e!1428339))))

(assert (=> b!2234880 (= res!956421 ((_ is HashMap!2997) (cache!3378 thiss!28822)))))

(assert (= (and start!217830 res!956424) b!2234877))

(assert (= (and b!2234877 res!956422) b!2234864))

(assert (= (and b!2234864 res!956423) b!2234880))

(assert (= (and b!2234880 res!956421) b!2234873))

(assert (= (and start!217830 condSetEmpty!20302) setIsEmpty!20302))

(assert (= (and start!217830 (not condSetEmpty!20302)) setNonEmpty!20302))

(assert (= setNonEmpty!20302 b!2234879))

(assert (= start!217830 b!2234872))

(assert (= (and start!217830 ((_ is ElementMatch!6449) r!4773)) b!2234876))

(assert (= (and start!217830 ((_ is Concat!10787) r!4773)) b!2234866))

(assert (= (and start!217830 ((_ is Star!6449) r!4773)) b!2234870))

(assert (= (and start!217830 ((_ is Union!6449) r!4773)) b!2234867))

(assert (= (and b!2234871 condMapEmpty!14516) mapIsEmpty!14516))

(assert (= (and b!2234871 (not condMapEmpty!14516)) mapNonEmpty!14516))

(assert (= b!2234874 b!2234871))

(assert (= b!2234878 b!2234874))

(assert (= b!2234875 b!2234878))

(assert (= (and b!2234869 ((_ is LongMap!3087) (v!29884 (underlying!6376 (cache!3378 thiss!28822))))) b!2234875))

(assert (= b!2234865 b!2234869))

(assert (= (and b!2234868 ((_ is HashMap!2997) (cache!3378 thiss!28822))) b!2234865))

(assert (= start!217830 b!2234868))

(declare-fun m!2669452 () Bool)

(assert (=> b!2234873 m!2669452))

(declare-fun m!2669454 () Bool)

(assert (=> mapNonEmpty!14516 m!2669454))

(declare-fun m!2669456 () Bool)

(assert (=> b!2234874 m!2669456))

(declare-fun m!2669458 () Bool)

(assert (=> b!2234874 m!2669458))

(declare-fun m!2669460 () Bool)

(assert (=> setNonEmpty!20302 m!2669460))

(declare-fun m!2669462 () Bool)

(assert (=> start!217830 m!2669462))

(declare-fun m!2669464 () Bool)

(assert (=> start!217830 m!2669464))

(declare-fun m!2669466 () Bool)

(assert (=> start!217830 m!2669466))

(declare-fun m!2669468 () Bool)

(assert (=> b!2234864 m!2669468))

(declare-fun m!2669470 () Bool)

(assert (=> b!2234877 m!2669470))

(check-sat (not b!2234877) (not b!2234866) tp_is_empty!10123 (not b_next!65515) (not setNonEmpty!20302) (not b!2234872) (not b!2234873) (not b!2234867) (not start!217830) (not b!2234871) (not b!2234874) (not b_next!65513) (not b!2234864) b_and!174797 (not b!2234879) b_and!174799 (not b!2234870) (not mapNonEmpty!14516))
(check-sat b_and!174799 b_and!174797 (not b_next!65513) (not b_next!65515))
(get-model)

(declare-fun bm!134609 () Bool)

(declare-fun call!134615 () (InoxSet Context!3994))

(declare-fun call!134614 () (InoxSet Context!3994))

(assert (=> bm!134609 (= call!134615 call!134614)))

(declare-fun b!2234903 () Bool)

(declare-fun c!356273 () Bool)

(assert (=> b!2234903 (= c!356273 ((_ is Star!6449) r!4773))))

(declare-fun e!1428358 () (InoxSet Context!3994))

(declare-fun e!1428354 () (InoxSet Context!3994))

(assert (=> b!2234903 (= e!1428358 e!1428354)))

(declare-fun bm!134610 () Bool)

(declare-fun call!134619 () (InoxSet Context!3994))

(assert (=> bm!134610 (= call!134614 call!134619)))

(declare-fun b!2234904 () Bool)

(declare-fun e!1428357 () Bool)

(declare-fun nullable!1779 (Regex!6449) Bool)

(assert (=> b!2234904 (= e!1428357 (nullable!1779 (regOne!13410 r!4773)))))

(declare-fun b!2234905 () Bool)

(assert (=> b!2234905 (= e!1428358 call!134615)))

(declare-fun call!134616 () List!26373)

(declare-fun c!356272 () Bool)

(declare-fun c!356275 () Bool)

(declare-fun bm!134611 () Bool)

(declare-fun c!356276 () Bool)

(assert (=> bm!134611 (= call!134619 (derivationStepZipperDown!61 (ite c!356275 (regTwo!13411 r!4773) (ite c!356272 (regTwo!13410 r!4773) (ite c!356276 (regOne!13410 r!4773) (reg!6778 r!4773)))) (ite (or c!356275 c!356272) ctx!56 (Context!3995 call!134616)) a!1010))))

(declare-fun bm!134612 () Bool)

(declare-fun call!134617 () List!26373)

(assert (=> bm!134612 (= call!134616 call!134617)))

(declare-fun b!2234906 () Bool)

(assert (=> b!2234906 (= e!1428354 call!134615)))

(declare-fun call!134618 () (InoxSet Context!3994))

(declare-fun bm!134613 () Bool)

(assert (=> bm!134613 (= call!134618 (derivationStepZipperDown!61 (ite c!356275 (regOne!13411 r!4773) (regOne!13410 r!4773)) (ite c!356275 ctx!56 (Context!3995 call!134617)) a!1010))))

(declare-fun d!665356 () Bool)

(declare-fun c!356274 () Bool)

(assert (=> d!665356 (= c!356274 (and ((_ is ElementMatch!6449) r!4773) (= (c!356261 r!4773) a!1010)))))

(declare-fun e!1428359 () (InoxSet Context!3994))

(assert (=> d!665356 (= (derivationStepZipperDown!61 r!4773 ctx!56 a!1010) e!1428359)))

(declare-fun b!2234907 () Bool)

(assert (=> b!2234907 (= e!1428359 (store ((as const (Array Context!3994 Bool)) false) ctx!56 true))))

(declare-fun b!2234908 () Bool)

(declare-fun e!1428355 () (InoxSet Context!3994))

(assert (=> b!2234908 (= e!1428355 ((_ map or) call!134618 call!134614))))

(declare-fun b!2234909 () Bool)

(assert (=> b!2234909 (= c!356272 e!1428357)))

(declare-fun res!956427 () Bool)

(assert (=> b!2234909 (=> (not res!956427) (not e!1428357))))

(assert (=> b!2234909 (= res!956427 ((_ is Concat!10787) r!4773))))

(declare-fun e!1428356 () (InoxSet Context!3994))

(assert (=> b!2234909 (= e!1428356 e!1428355)))

(declare-fun b!2234910 () Bool)

(assert (=> b!2234910 (= e!1428356 ((_ map or) call!134618 call!134619))))

(declare-fun b!2234911 () Bool)

(assert (=> b!2234911 (= e!1428354 ((as const (Array Context!3994 Bool)) false))))

(declare-fun b!2234912 () Bool)

(assert (=> b!2234912 (= e!1428355 e!1428358)))

(assert (=> b!2234912 (= c!356276 ((_ is Concat!10787) r!4773))))

(declare-fun b!2234913 () Bool)

(assert (=> b!2234913 (= e!1428359 e!1428356)))

(assert (=> b!2234913 (= c!356275 ((_ is Union!6449) r!4773))))

(declare-fun bm!134614 () Bool)

(declare-fun $colon$colon!528 (List!26373 Regex!6449) List!26373)

(assert (=> bm!134614 (= call!134617 ($colon$colon!528 (exprs!2497 ctx!56) (ite (or c!356272 c!356276) (regTwo!13410 r!4773) r!4773)))))

(assert (= (and d!665356 c!356274) b!2234907))

(assert (= (and d!665356 (not c!356274)) b!2234913))

(assert (= (and b!2234913 c!356275) b!2234910))

(assert (= (and b!2234913 (not c!356275)) b!2234909))

(assert (= (and b!2234909 res!956427) b!2234904))

(assert (= (and b!2234909 c!356272) b!2234908))

(assert (= (and b!2234909 (not c!356272)) b!2234912))

(assert (= (and b!2234912 c!356276) b!2234905))

(assert (= (and b!2234912 (not c!356276)) b!2234903))

(assert (= (and b!2234903 c!356273) b!2234906))

(assert (= (and b!2234903 (not c!356273)) b!2234911))

(assert (= (or b!2234905 b!2234906) bm!134612))

(assert (= (or b!2234905 b!2234906) bm!134609))

(assert (= (or b!2234908 bm!134609) bm!134610))

(assert (= (or b!2234908 bm!134612) bm!134614))

(assert (= (or b!2234910 bm!134610) bm!134611))

(assert (= (or b!2234910 b!2234908) bm!134613))

(declare-fun m!2669472 () Bool)

(assert (=> b!2234907 m!2669472))

(declare-fun m!2669474 () Bool)

(assert (=> bm!134614 m!2669474))

(declare-fun m!2669476 () Bool)

(assert (=> bm!134611 m!2669476))

(declare-fun m!2669478 () Bool)

(assert (=> bm!134613 m!2669478))

(declare-fun m!2669480 () Bool)

(assert (=> b!2234904 m!2669480))

(assert (=> b!2234864 d!665356))

(declare-fun b!2234932 () Bool)

(declare-fun e!1428379 () Bool)

(declare-fun call!134626 () Bool)

(assert (=> b!2234932 (= e!1428379 call!134626)))

(declare-fun b!2234933 () Bool)

(declare-fun e!1428375 () Bool)

(assert (=> b!2234933 (= e!1428375 call!134626)))

(declare-fun b!2234934 () Bool)

(declare-fun res!956439 () Bool)

(assert (=> b!2234934 (=> (not res!956439) (not e!1428375))))

(declare-fun call!134627 () Bool)

(assert (=> b!2234934 (= res!956439 call!134627)))

(declare-fun e!1428376 () Bool)

(assert (=> b!2234934 (= e!1428376 e!1428375)))

(declare-fun b!2234935 () Bool)

(declare-fun e!1428374 () Bool)

(declare-fun e!1428377 () Bool)

(assert (=> b!2234935 (= e!1428374 e!1428377)))

(declare-fun c!356281 () Bool)

(assert (=> b!2234935 (= c!356281 ((_ is Star!6449) r!4773))))

(declare-fun b!2234936 () Bool)

(declare-fun e!1428378 () Bool)

(assert (=> b!2234936 (= e!1428377 e!1428378)))

(declare-fun res!956442 () Bool)

(assert (=> b!2234936 (= res!956442 (not (nullable!1779 (reg!6778 r!4773))))))

(assert (=> b!2234936 (=> (not res!956442) (not e!1428378))))

(declare-fun b!2234937 () Bool)

(declare-fun res!956438 () Bool)

(declare-fun e!1428380 () Bool)

(assert (=> b!2234937 (=> res!956438 e!1428380)))

(assert (=> b!2234937 (= res!956438 (not ((_ is Concat!10787) r!4773)))))

(assert (=> b!2234937 (= e!1428376 e!1428380)))

(declare-fun bm!134621 () Bool)

(declare-fun call!134628 () Bool)

(assert (=> bm!134621 (= call!134626 call!134628)))

(declare-fun d!665358 () Bool)

(declare-fun res!956440 () Bool)

(assert (=> d!665358 (=> res!956440 e!1428374)))

(assert (=> d!665358 (= res!956440 ((_ is ElementMatch!6449) r!4773))))

(assert (=> d!665358 (= (validRegex!2414 r!4773) e!1428374)))

(declare-fun b!2234938 () Bool)

(assert (=> b!2234938 (= e!1428377 e!1428376)))

(declare-fun c!356282 () Bool)

(assert (=> b!2234938 (= c!356282 ((_ is Union!6449) r!4773))))

(declare-fun bm!134622 () Bool)

(assert (=> bm!134622 (= call!134627 (validRegex!2414 (ite c!356282 (regOne!13411 r!4773) (regOne!13410 r!4773))))))

(declare-fun b!2234939 () Bool)

(assert (=> b!2234939 (= e!1428380 e!1428379)))

(declare-fun res!956441 () Bool)

(assert (=> b!2234939 (=> (not res!956441) (not e!1428379))))

(assert (=> b!2234939 (= res!956441 call!134627)))

(declare-fun bm!134623 () Bool)

(assert (=> bm!134623 (= call!134628 (validRegex!2414 (ite c!356281 (reg!6778 r!4773) (ite c!356282 (regTwo!13411 r!4773) (regTwo!13410 r!4773)))))))

(declare-fun b!2234940 () Bool)

(assert (=> b!2234940 (= e!1428378 call!134628)))

(assert (= (and d!665358 (not res!956440)) b!2234935))

(assert (= (and b!2234935 c!356281) b!2234936))

(assert (= (and b!2234935 (not c!356281)) b!2234938))

(assert (= (and b!2234936 res!956442) b!2234940))

(assert (= (and b!2234938 c!356282) b!2234934))

(assert (= (and b!2234938 (not c!356282)) b!2234937))

(assert (= (and b!2234934 res!956439) b!2234933))

(assert (= (and b!2234937 (not res!956438)) b!2234939))

(assert (= (and b!2234939 res!956441) b!2234932))

(assert (= (or b!2234933 b!2234932) bm!134621))

(assert (= (or b!2234934 b!2234939) bm!134622))

(assert (= (or b!2234940 bm!134621) bm!134623))

(declare-fun m!2669482 () Bool)

(assert (=> b!2234936 m!2669482))

(declare-fun m!2669484 () Bool)

(assert (=> bm!134622 m!2669484))

(declare-fun m!2669486 () Bool)

(assert (=> bm!134623 m!2669486))

(assert (=> b!2234877 d!665358))

(declare-fun d!665360 () Bool)

(declare-fun res!956449 () Bool)

(declare-fun e!1428385 () Bool)

(assert (=> d!665360 (=> (not res!956449) (not e!1428385))))

(assert (=> d!665360 (= res!956449 (valid!2332 (cache!3378 thiss!28822)))))

(assert (=> d!665360 (= (validCacheMapDown!301 (cache!3378 thiss!28822)) e!1428385)))

(declare-fun b!2234947 () Bool)

(declare-fun res!956450 () Bool)

(assert (=> b!2234947 (=> (not res!956450) (not e!1428385))))

(declare-fun invariantList!368 (List!26374) Bool)

(declare-datatypes ((ListMap!819 0))(
  ( (ListMap!820 (toList!1341 List!26374)) )
))
(declare-fun map!5387 (MutableMap!2997) ListMap!819)

(assert (=> b!2234947 (= res!956450 (invariantList!368 (toList!1341 (map!5387 (cache!3378 thiss!28822)))))))

(declare-fun b!2234948 () Bool)

(declare-fun lambda!84426 () Int)

(declare-fun forall!5385 (List!26374 Int) Bool)

(assert (=> b!2234948 (= e!1428385 (forall!5385 (toList!1341 (map!5387 (cache!3378 thiss!28822))) lambda!84426))))

(assert (= (and d!665360 res!956449) b!2234947))

(assert (= (and b!2234947 res!956450) b!2234948))

(assert (=> d!665360 m!2669452))

(declare-fun m!2669489 () Bool)

(assert (=> b!2234947 m!2669489))

(declare-fun m!2669491 () Bool)

(assert (=> b!2234947 m!2669491))

(assert (=> b!2234948 m!2669489))

(declare-fun m!2669493 () Bool)

(assert (=> b!2234948 m!2669493))

(assert (=> start!217830 d!665360))

(declare-fun d!665362 () Bool)

(declare-fun lambda!84429 () Int)

(declare-fun forall!5386 (List!26373 Int) Bool)

(assert (=> d!665362 (= (inv!35694 ctx!56) (forall!5386 (exprs!2497 ctx!56) lambda!84429))))

(declare-fun bs!454176 () Bool)

(assert (= bs!454176 d!665362))

(declare-fun m!2669495 () Bool)

(assert (=> bs!454176 m!2669495))

(assert (=> start!217830 d!665362))

(declare-fun d!665364 () Bool)

(declare-fun res!956453 () Bool)

(declare-fun e!1428388 () Bool)

(assert (=> d!665364 (=> (not res!956453) (not e!1428388))))

(assert (=> d!665364 (= res!956453 ((_ is HashMap!2997) (cache!3378 thiss!28822)))))

(assert (=> d!665364 (= (inv!35695 thiss!28822) e!1428388)))

(declare-fun b!2234951 () Bool)

(assert (=> b!2234951 (= e!1428388 (validCacheMapDown!301 (cache!3378 thiss!28822)))))

(assert (= (and d!665364 res!956453) b!2234951))

(assert (=> b!2234951 m!2669462))

(assert (=> start!217830 d!665364))

(declare-fun bs!454177 () Bool)

(declare-fun d!665366 () Bool)

(assert (= bs!454177 (and d!665366 d!665362)))

(declare-fun lambda!84430 () Int)

(assert (=> bs!454177 (= lambda!84430 lambda!84429)))

(assert (=> d!665366 (= (inv!35694 setElem!20302) (forall!5386 (exprs!2497 setElem!20302) lambda!84430))))

(declare-fun bs!454178 () Bool)

(assert (= bs!454178 d!665366))

(declare-fun m!2669497 () Bool)

(assert (=> bs!454178 m!2669497))

(assert (=> setNonEmpty!20302 d!665366))

(declare-fun d!665368 () Bool)

(assert (=> d!665368 (= (array_inv!3415 (_keys!3384 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822))))))) (bvsge (size!20542 (_keys!3384 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2234874 d!665368))

(declare-fun d!665370 () Bool)

(assert (=> d!665370 (= (array_inv!3416 (_values!3367 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822))))))) (bvsge (size!20543 (_values!3367 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2234874 d!665370))

(declare-fun d!665372 () Bool)

(declare-fun res!956458 () Bool)

(declare-fun e!1428391 () Bool)

(assert (=> d!665372 (=> (not res!956458) (not e!1428391))))

(declare-fun valid!2333 (MutLongMap!3087) Bool)

(assert (=> d!665372 (= res!956458 (valid!2333 (v!29884 (underlying!6376 (cache!3378 thiss!28822)))))))

(assert (=> d!665372 (= (valid!2332 (cache!3378 thiss!28822)) e!1428391)))

(declare-fun b!2234956 () Bool)

(declare-fun res!956459 () Bool)

(assert (=> b!2234956 (=> (not res!956459) (not e!1428391))))

(declare-fun lambda!84433 () Int)

(declare-datatypes ((tuple2!25664 0))(
  ( (tuple2!25665 (_1!15288 (_ BitVec 64)) (_2!15288 List!26374)) )
))
(declare-datatypes ((List!26375 0))(
  ( (Nil!26281) (Cons!26281 (h!31682 tuple2!25664) (t!199795 List!26375)) )
))
(declare-fun forall!5387 (List!26375 Int) Bool)

(declare-datatypes ((ListLongMap!317 0))(
  ( (ListLongMap!318 (toList!1342 List!26375)) )
))
(declare-fun map!5388 (MutLongMap!3087) ListLongMap!317)

(assert (=> b!2234956 (= res!956459 (forall!5387 (toList!1342 (map!5388 (v!29884 (underlying!6376 (cache!3378 thiss!28822))))) lambda!84433))))

(declare-fun b!2234957 () Bool)

(declare-fun allKeysSameHashInMap!105 (ListLongMap!317 Hashable!2997) Bool)

(assert (=> b!2234957 (= e!1428391 (allKeysSameHashInMap!105 (map!5388 (v!29884 (underlying!6376 (cache!3378 thiss!28822)))) (hashF!4920 (cache!3378 thiss!28822))))))

(assert (= (and d!665372 res!956458) b!2234956))

(assert (= (and b!2234956 res!956459) b!2234957))

(declare-fun m!2669499 () Bool)

(assert (=> d!665372 m!2669499))

(declare-fun m!2669501 () Bool)

(assert (=> b!2234956 m!2669501))

(declare-fun m!2669503 () Bool)

(assert (=> b!2234956 m!2669503))

(assert (=> b!2234957 m!2669501))

(assert (=> b!2234957 m!2669501))

(declare-fun m!2669505 () Bool)

(assert (=> b!2234957 m!2669505))

(assert (=> b!2234873 d!665372))

(declare-fun b!2234962 () Bool)

(declare-fun e!1428394 () Bool)

(declare-fun tp!701991 () Bool)

(declare-fun tp!701992 () Bool)

(assert (=> b!2234962 (= e!1428394 (and tp!701991 tp!701992))))

(assert (=> b!2234872 (= tp!701981 e!1428394)))

(assert (= (and b!2234872 ((_ is Cons!26279) (exprs!2497 ctx!56))) b!2234962))

(declare-fun b!2234977 () Bool)

(declare-fun e!1428407 () Bool)

(declare-fun tp!702020 () Bool)

(assert (=> b!2234977 (= e!1428407 tp!702020)))

(declare-fun e!1428410 () Bool)

(declare-fun tp!702022 () Bool)

(declare-fun e!1428408 () Bool)

(declare-fun setRes!20308 () Bool)

(declare-fun tp!702017 () Bool)

(declare-fun mapDefault!14519 () List!26374)

(declare-fun b!2234978 () Bool)

(assert (=> b!2234978 (= e!1428408 (and tp!702017 (inv!35694 (_2!15286 (_1!15287 (h!31681 mapDefault!14519)))) e!1428410 tp_is_empty!10123 setRes!20308 tp!702022))))

(declare-fun condSetEmpty!20308 () Bool)

(assert (=> b!2234978 (= condSetEmpty!20308 (= (_2!15287 (h!31681 mapDefault!14519)) ((as const (Array Context!3994 Bool)) false)))))

(declare-fun condMapEmpty!14519 () Bool)

(assert (=> mapNonEmpty!14516 (= condMapEmpty!14519 (= mapRest!14516 ((as const (Array (_ BitVec 32) List!26374)) mapDefault!14519)))))

(declare-fun mapRes!14519 () Bool)

(assert (=> mapNonEmpty!14516 (= tp!701977 (and e!1428408 mapRes!14519))))

(declare-fun setIsEmpty!20307 () Bool)

(declare-fun setRes!20307 () Bool)

(assert (=> setIsEmpty!20307 setRes!20307))

(declare-fun setNonEmpty!20307 () Bool)

(declare-fun tp!702023 () Bool)

(declare-fun setElem!20308 () Context!3994)

(assert (=> setNonEmpty!20307 (= setRes!20308 (and tp!702023 (inv!35694 setElem!20308) e!1428407))))

(declare-fun setRest!20307 () (InoxSet Context!3994))

(assert (=> setNonEmpty!20307 (= (_2!15287 (h!31681 mapDefault!14519)) ((_ map or) (store ((as const (Array Context!3994 Bool)) false) setElem!20308 true) setRest!20307))))

(declare-fun mapIsEmpty!14519 () Bool)

(assert (=> mapIsEmpty!14519 mapRes!14519))

(declare-fun b!2234979 () Bool)

(declare-fun tp!702025 () Bool)

(assert (=> b!2234979 (= e!1428410 tp!702025)))

(declare-fun setIsEmpty!20308 () Bool)

(assert (=> setIsEmpty!20308 setRes!20308))

(declare-fun tp!702015 () Bool)

(declare-fun mapValue!14519 () List!26374)

(declare-fun e!1428409 () Bool)

(declare-fun e!1428411 () Bool)

(declare-fun b!2234980 () Bool)

(declare-fun tp!702019 () Bool)

(assert (=> b!2234980 (= e!1428411 (and tp!702015 (inv!35694 (_2!15286 (_1!15287 (h!31681 mapValue!14519)))) e!1428409 tp_is_empty!10123 setRes!20307 tp!702019))))

(declare-fun condSetEmpty!20307 () Bool)

(assert (=> b!2234980 (= condSetEmpty!20307 (= (_2!15287 (h!31681 mapValue!14519)) ((as const (Array Context!3994 Bool)) false)))))

(declare-fun b!2234981 () Bool)

(declare-fun e!1428412 () Bool)

(declare-fun tp!702021 () Bool)

(assert (=> b!2234981 (= e!1428412 tp!702021)))

(declare-fun mapNonEmpty!14519 () Bool)

(declare-fun tp!702016 () Bool)

(assert (=> mapNonEmpty!14519 (= mapRes!14519 (and tp!702016 e!1428411))))

(declare-fun mapRest!14519 () (Array (_ BitVec 32) List!26374))

(declare-fun mapKey!14519 () (_ BitVec 32))

(assert (=> mapNonEmpty!14519 (= mapRest!14516 (store mapRest!14519 mapKey!14519 mapValue!14519))))

(declare-fun setNonEmpty!20308 () Bool)

(declare-fun tp!702018 () Bool)

(declare-fun setElem!20307 () Context!3994)

(assert (=> setNonEmpty!20308 (= setRes!20307 (and tp!702018 (inv!35694 setElem!20307) e!1428412))))

(declare-fun setRest!20308 () (InoxSet Context!3994))

(assert (=> setNonEmpty!20308 (= (_2!15287 (h!31681 mapValue!14519)) ((_ map or) (store ((as const (Array Context!3994 Bool)) false) setElem!20307 true) setRest!20308))))

(declare-fun b!2234982 () Bool)

(declare-fun tp!702024 () Bool)

(assert (=> b!2234982 (= e!1428409 tp!702024)))

(assert (= (and mapNonEmpty!14516 condMapEmpty!14519) mapIsEmpty!14519))

(assert (= (and mapNonEmpty!14516 (not condMapEmpty!14519)) mapNonEmpty!14519))

(assert (= b!2234980 b!2234982))

(assert (= (and b!2234980 condSetEmpty!20307) setIsEmpty!20307))

(assert (= (and b!2234980 (not condSetEmpty!20307)) setNonEmpty!20308))

(assert (= setNonEmpty!20308 b!2234981))

(assert (= (and mapNonEmpty!14519 ((_ is Cons!26280) mapValue!14519)) b!2234980))

(assert (= b!2234978 b!2234979))

(assert (= (and b!2234978 condSetEmpty!20308) setIsEmpty!20308))

(assert (= (and b!2234978 (not condSetEmpty!20308)) setNonEmpty!20307))

(assert (= setNonEmpty!20307 b!2234977))

(assert (= (and mapNonEmpty!14516 ((_ is Cons!26280) mapDefault!14519)) b!2234978))

(declare-fun m!2669507 () Bool)

(assert (=> b!2234978 m!2669507))

(declare-fun m!2669509 () Bool)

(assert (=> setNonEmpty!20307 m!2669509))

(declare-fun m!2669511 () Bool)

(assert (=> setNonEmpty!20308 m!2669511))

(declare-fun m!2669513 () Bool)

(assert (=> mapNonEmpty!14519 m!2669513))

(declare-fun m!2669515 () Bool)

(assert (=> b!2234980 m!2669515))

(declare-fun b!2234991 () Bool)

(declare-fun e!1428420 () Bool)

(declare-fun tp!702037 () Bool)

(assert (=> b!2234991 (= e!1428420 tp!702037)))

(declare-fun e!1428421 () Bool)

(assert (=> mapNonEmpty!14516 (= tp!701986 e!1428421)))

(declare-fun setRes!20311 () Bool)

(declare-fun setElem!20311 () Context!3994)

(declare-fun setNonEmpty!20311 () Bool)

(declare-fun tp!702038 () Bool)

(assert (=> setNonEmpty!20311 (= setRes!20311 (and tp!702038 (inv!35694 setElem!20311) e!1428420))))

(declare-fun setRest!20311 () (InoxSet Context!3994))

(assert (=> setNonEmpty!20311 (= (_2!15287 (h!31681 mapValue!14516)) ((_ map or) (store ((as const (Array Context!3994 Bool)) false) setElem!20311 true) setRest!20311))))

(declare-fun setIsEmpty!20311 () Bool)

(assert (=> setIsEmpty!20311 setRes!20311))

(declare-fun b!2234992 () Bool)

(declare-fun e!1428419 () Bool)

(declare-fun tp!702040 () Bool)

(assert (=> b!2234992 (= e!1428419 tp!702040)))

(declare-fun tp!702036 () Bool)

(declare-fun b!2234993 () Bool)

(declare-fun tp!702039 () Bool)

(assert (=> b!2234993 (= e!1428421 (and tp!702036 (inv!35694 (_2!15286 (_1!15287 (h!31681 mapValue!14516)))) e!1428419 tp_is_empty!10123 setRes!20311 tp!702039))))

(declare-fun condSetEmpty!20311 () Bool)

(assert (=> b!2234993 (= condSetEmpty!20311 (= (_2!15287 (h!31681 mapValue!14516)) ((as const (Array Context!3994 Bool)) false)))))

(assert (= b!2234993 b!2234992))

(assert (= (and b!2234993 condSetEmpty!20311) setIsEmpty!20311))

(assert (= (and b!2234993 (not condSetEmpty!20311)) setNonEmpty!20311))

(assert (= setNonEmpty!20311 b!2234991))

(assert (= (and mapNonEmpty!14516 ((_ is Cons!26280) mapValue!14516)) b!2234993))

(declare-fun m!2669517 () Bool)

(assert (=> setNonEmpty!20311 m!2669517))

(declare-fun m!2669519 () Bool)

(assert (=> b!2234993 m!2669519))

(declare-fun b!2235007 () Bool)

(declare-fun e!1428424 () Bool)

(declare-fun tp!702053 () Bool)

(declare-fun tp!702051 () Bool)

(assert (=> b!2235007 (= e!1428424 (and tp!702053 tp!702051))))

(assert (=> b!2234866 (= tp!701985 e!1428424)))

(declare-fun b!2235004 () Bool)

(assert (=> b!2235004 (= e!1428424 tp_is_empty!10123)))

(declare-fun b!2235006 () Bool)

(declare-fun tp!702052 () Bool)

(assert (=> b!2235006 (= e!1428424 tp!702052)))

(declare-fun b!2235005 () Bool)

(declare-fun tp!702054 () Bool)

(declare-fun tp!702055 () Bool)

(assert (=> b!2235005 (= e!1428424 (and tp!702054 tp!702055))))

(assert (= (and b!2234866 ((_ is ElementMatch!6449) (regOne!13410 r!4773))) b!2235004))

(assert (= (and b!2234866 ((_ is Concat!10787) (regOne!13410 r!4773))) b!2235005))

(assert (= (and b!2234866 ((_ is Star!6449) (regOne!13410 r!4773))) b!2235006))

(assert (= (and b!2234866 ((_ is Union!6449) (regOne!13410 r!4773))) b!2235007))

(declare-fun b!2235011 () Bool)

(declare-fun e!1428425 () Bool)

(declare-fun tp!702058 () Bool)

(declare-fun tp!702056 () Bool)

(assert (=> b!2235011 (= e!1428425 (and tp!702058 tp!702056))))

(assert (=> b!2234866 (= tp!701983 e!1428425)))

(declare-fun b!2235008 () Bool)

(assert (=> b!2235008 (= e!1428425 tp_is_empty!10123)))

(declare-fun b!2235010 () Bool)

(declare-fun tp!702057 () Bool)

(assert (=> b!2235010 (= e!1428425 tp!702057)))

(declare-fun b!2235009 () Bool)

(declare-fun tp!702059 () Bool)

(declare-fun tp!702060 () Bool)

(assert (=> b!2235009 (= e!1428425 (and tp!702059 tp!702060))))

(assert (= (and b!2234866 ((_ is ElementMatch!6449) (regTwo!13410 r!4773))) b!2235008))

(assert (= (and b!2234866 ((_ is Concat!10787) (regTwo!13410 r!4773))) b!2235009))

(assert (= (and b!2234866 ((_ is Star!6449) (regTwo!13410 r!4773))) b!2235010))

(assert (= (and b!2234866 ((_ is Union!6449) (regTwo!13410 r!4773))) b!2235011))

(declare-fun condSetEmpty!20314 () Bool)

(assert (=> setNonEmpty!20302 (= condSetEmpty!20314 (= setRest!20302 ((as const (Array Context!3994 Bool)) false)))))

(declare-fun setRes!20314 () Bool)

(assert (=> setNonEmpty!20302 (= tp!701982 setRes!20314)))

(declare-fun setIsEmpty!20314 () Bool)

(assert (=> setIsEmpty!20314 setRes!20314))

(declare-fun tp!702066 () Bool)

(declare-fun e!1428428 () Bool)

(declare-fun setNonEmpty!20314 () Bool)

(declare-fun setElem!20314 () Context!3994)

(assert (=> setNonEmpty!20314 (= setRes!20314 (and tp!702066 (inv!35694 setElem!20314) e!1428428))))

(declare-fun setRest!20314 () (InoxSet Context!3994))

(assert (=> setNonEmpty!20314 (= setRest!20302 ((_ map or) (store ((as const (Array Context!3994 Bool)) false) setElem!20314 true) setRest!20314))))

(declare-fun b!2235016 () Bool)

(declare-fun tp!702065 () Bool)

(assert (=> b!2235016 (= e!1428428 tp!702065)))

(assert (= (and setNonEmpty!20302 condSetEmpty!20314) setIsEmpty!20314))

(assert (= (and setNonEmpty!20302 (not condSetEmpty!20314)) setNonEmpty!20314))

(assert (= setNonEmpty!20314 b!2235016))

(declare-fun m!2669521 () Bool)

(assert (=> setNonEmpty!20314 m!2669521))

(declare-fun b!2235020 () Bool)

(declare-fun e!1428429 () Bool)

(declare-fun tp!702069 () Bool)

(declare-fun tp!702067 () Bool)

(assert (=> b!2235020 (= e!1428429 (and tp!702069 tp!702067))))

(assert (=> b!2234867 (= tp!701984 e!1428429)))

(declare-fun b!2235017 () Bool)

(assert (=> b!2235017 (= e!1428429 tp_is_empty!10123)))

(declare-fun b!2235019 () Bool)

(declare-fun tp!702068 () Bool)

(assert (=> b!2235019 (= e!1428429 tp!702068)))

(declare-fun b!2235018 () Bool)

(declare-fun tp!702070 () Bool)

(declare-fun tp!702071 () Bool)

(assert (=> b!2235018 (= e!1428429 (and tp!702070 tp!702071))))

(assert (= (and b!2234867 ((_ is ElementMatch!6449) (regOne!13411 r!4773))) b!2235017))

(assert (= (and b!2234867 ((_ is Concat!10787) (regOne!13411 r!4773))) b!2235018))

(assert (= (and b!2234867 ((_ is Star!6449) (regOne!13411 r!4773))) b!2235019))

(assert (= (and b!2234867 ((_ is Union!6449) (regOne!13411 r!4773))) b!2235020))

(declare-fun b!2235024 () Bool)

(declare-fun e!1428430 () Bool)

(declare-fun tp!702074 () Bool)

(declare-fun tp!702072 () Bool)

(assert (=> b!2235024 (= e!1428430 (and tp!702074 tp!702072))))

(assert (=> b!2234867 (= tp!701979 e!1428430)))

(declare-fun b!2235021 () Bool)

(assert (=> b!2235021 (= e!1428430 tp_is_empty!10123)))

(declare-fun b!2235023 () Bool)

(declare-fun tp!702073 () Bool)

(assert (=> b!2235023 (= e!1428430 tp!702073)))

(declare-fun b!2235022 () Bool)

(declare-fun tp!702075 () Bool)

(declare-fun tp!702076 () Bool)

(assert (=> b!2235022 (= e!1428430 (and tp!702075 tp!702076))))

(assert (= (and b!2234867 ((_ is ElementMatch!6449) (regTwo!13411 r!4773))) b!2235021))

(assert (= (and b!2234867 ((_ is Concat!10787) (regTwo!13411 r!4773))) b!2235022))

(assert (= (and b!2234867 ((_ is Star!6449) (regTwo!13411 r!4773))) b!2235023))

(assert (= (and b!2234867 ((_ is Union!6449) (regTwo!13411 r!4773))) b!2235024))

(declare-fun b!2235025 () Bool)

(declare-fun e!1428432 () Bool)

(declare-fun tp!702078 () Bool)

(assert (=> b!2235025 (= e!1428432 tp!702078)))

(declare-fun e!1428433 () Bool)

(assert (=> b!2234871 (= tp!701976 e!1428433)))

(declare-fun setRes!20315 () Bool)

(declare-fun tp!702079 () Bool)

(declare-fun setNonEmpty!20315 () Bool)

(declare-fun setElem!20315 () Context!3994)

(assert (=> setNonEmpty!20315 (= setRes!20315 (and tp!702079 (inv!35694 setElem!20315) e!1428432))))

(declare-fun setRest!20315 () (InoxSet Context!3994))

(assert (=> setNonEmpty!20315 (= (_2!15287 (h!31681 mapDefault!14516)) ((_ map or) (store ((as const (Array Context!3994 Bool)) false) setElem!20315 true) setRest!20315))))

(declare-fun setIsEmpty!20315 () Bool)

(assert (=> setIsEmpty!20315 setRes!20315))

(declare-fun b!2235026 () Bool)

(declare-fun e!1428431 () Bool)

(declare-fun tp!702081 () Bool)

(assert (=> b!2235026 (= e!1428431 tp!702081)))

(declare-fun b!2235027 () Bool)

(declare-fun tp!702077 () Bool)

(declare-fun tp!702080 () Bool)

(assert (=> b!2235027 (= e!1428433 (and tp!702077 (inv!35694 (_2!15286 (_1!15287 (h!31681 mapDefault!14516)))) e!1428431 tp_is_empty!10123 setRes!20315 tp!702080))))

(declare-fun condSetEmpty!20315 () Bool)

(assert (=> b!2235027 (= condSetEmpty!20315 (= (_2!15287 (h!31681 mapDefault!14516)) ((as const (Array Context!3994 Bool)) false)))))

(assert (= b!2235027 b!2235026))

(assert (= (and b!2235027 condSetEmpty!20315) setIsEmpty!20315))

(assert (= (and b!2235027 (not condSetEmpty!20315)) setNonEmpty!20315))

(assert (= setNonEmpty!20315 b!2235025))

(assert (= (and b!2234871 ((_ is Cons!26280) mapDefault!14516)) b!2235027))

(declare-fun m!2669523 () Bool)

(assert (=> setNonEmpty!20315 m!2669523))

(declare-fun m!2669525 () Bool)

(assert (=> b!2235027 m!2669525))

(declare-fun b!2235028 () Bool)

(declare-fun e!1428434 () Bool)

(declare-fun tp!702082 () Bool)

(declare-fun tp!702083 () Bool)

(assert (=> b!2235028 (= e!1428434 (and tp!702082 tp!702083))))

(assert (=> b!2234879 (= tp!701980 e!1428434)))

(assert (= (and b!2234879 ((_ is Cons!26279) (exprs!2497 setElem!20302))) b!2235028))

(declare-fun b!2235032 () Bool)

(declare-fun e!1428435 () Bool)

(declare-fun tp!702086 () Bool)

(declare-fun tp!702084 () Bool)

(assert (=> b!2235032 (= e!1428435 (and tp!702086 tp!702084))))

(assert (=> b!2234870 (= tp!701973 e!1428435)))

(declare-fun b!2235029 () Bool)

(assert (=> b!2235029 (= e!1428435 tp_is_empty!10123)))

(declare-fun b!2235031 () Bool)

(declare-fun tp!702085 () Bool)

(assert (=> b!2235031 (= e!1428435 tp!702085)))

(declare-fun b!2235030 () Bool)

(declare-fun tp!702087 () Bool)

(declare-fun tp!702088 () Bool)

(assert (=> b!2235030 (= e!1428435 (and tp!702087 tp!702088))))

(assert (= (and b!2234870 ((_ is ElementMatch!6449) (reg!6778 r!4773))) b!2235029))

(assert (= (and b!2234870 ((_ is Concat!10787) (reg!6778 r!4773))) b!2235030))

(assert (= (and b!2234870 ((_ is Star!6449) (reg!6778 r!4773))) b!2235031))

(assert (= (and b!2234870 ((_ is Union!6449) (reg!6778 r!4773))) b!2235032))

(declare-fun b!2235033 () Bool)

(declare-fun e!1428437 () Bool)

(declare-fun tp!702090 () Bool)

(assert (=> b!2235033 (= e!1428437 tp!702090)))

(declare-fun e!1428438 () Bool)

(assert (=> b!2234874 (= tp!701978 e!1428438)))

(declare-fun setNonEmpty!20316 () Bool)

(declare-fun setElem!20316 () Context!3994)

(declare-fun tp!702091 () Bool)

(declare-fun setRes!20316 () Bool)

(assert (=> setNonEmpty!20316 (= setRes!20316 (and tp!702091 (inv!35694 setElem!20316) e!1428437))))

(declare-fun setRest!20316 () (InoxSet Context!3994))

(assert (=> setNonEmpty!20316 (= (_2!15287 (h!31681 (zeroValue!3345 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3994 Bool)) false) setElem!20316 true) setRest!20316))))

(declare-fun setIsEmpty!20316 () Bool)

(assert (=> setIsEmpty!20316 setRes!20316))

(declare-fun b!2235034 () Bool)

(declare-fun e!1428436 () Bool)

(declare-fun tp!702093 () Bool)

(assert (=> b!2235034 (= e!1428436 tp!702093)))

(declare-fun tp!702089 () Bool)

(declare-fun b!2235035 () Bool)

(declare-fun tp!702092 () Bool)

(assert (=> b!2235035 (= e!1428438 (and tp!702089 (inv!35694 (_2!15286 (_1!15287 (h!31681 (zeroValue!3345 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822)))))))))) e!1428436 tp_is_empty!10123 setRes!20316 tp!702092))))

(declare-fun condSetEmpty!20316 () Bool)

(assert (=> b!2235035 (= condSetEmpty!20316 (= (_2!15287 (h!31681 (zeroValue!3345 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822)))))))) ((as const (Array Context!3994 Bool)) false)))))

(assert (= b!2235035 b!2235034))

(assert (= (and b!2235035 condSetEmpty!20316) setIsEmpty!20316))

(assert (= (and b!2235035 (not condSetEmpty!20316)) setNonEmpty!20316))

(assert (= setNonEmpty!20316 b!2235033))

(assert (= (and b!2234874 ((_ is Cons!26280) (zeroValue!3345 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822)))))))) b!2235035))

(declare-fun m!2669527 () Bool)

(assert (=> setNonEmpty!20316 m!2669527))

(declare-fun m!2669529 () Bool)

(assert (=> b!2235035 m!2669529))

(declare-fun b!2235036 () Bool)

(declare-fun e!1428440 () Bool)

(declare-fun tp!702095 () Bool)

(assert (=> b!2235036 (= e!1428440 tp!702095)))

(declare-fun e!1428441 () Bool)

(assert (=> b!2234874 (= tp!701972 e!1428441)))

(declare-fun setElem!20317 () Context!3994)

(declare-fun tp!702096 () Bool)

(declare-fun setRes!20317 () Bool)

(declare-fun setNonEmpty!20317 () Bool)

(assert (=> setNonEmpty!20317 (= setRes!20317 (and tp!702096 (inv!35694 setElem!20317) e!1428440))))

(declare-fun setRest!20317 () (InoxSet Context!3994))

(assert (=> setNonEmpty!20317 (= (_2!15287 (h!31681 (minValue!3345 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3994 Bool)) false) setElem!20317 true) setRest!20317))))

(declare-fun setIsEmpty!20317 () Bool)

(assert (=> setIsEmpty!20317 setRes!20317))

(declare-fun b!2235037 () Bool)

(declare-fun e!1428439 () Bool)

(declare-fun tp!702098 () Bool)

(assert (=> b!2235037 (= e!1428439 tp!702098)))

(declare-fun tp!702097 () Bool)

(declare-fun b!2235038 () Bool)

(declare-fun tp!702094 () Bool)

(assert (=> b!2235038 (= e!1428441 (and tp!702094 (inv!35694 (_2!15286 (_1!15287 (h!31681 (minValue!3345 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822)))))))))) e!1428439 tp_is_empty!10123 setRes!20317 tp!702097))))

(declare-fun condSetEmpty!20317 () Bool)

(assert (=> b!2235038 (= condSetEmpty!20317 (= (_2!15287 (h!31681 (minValue!3345 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822)))))))) ((as const (Array Context!3994 Bool)) false)))))

(assert (= b!2235038 b!2235037))

(assert (= (and b!2235038 condSetEmpty!20317) setIsEmpty!20317))

(assert (= (and b!2235038 (not condSetEmpty!20317)) setNonEmpty!20317))

(assert (= setNonEmpty!20317 b!2235036))

(assert (= (and b!2234874 ((_ is Cons!26280) (minValue!3345 (v!29883 (underlying!6375 (v!29884 (underlying!6376 (cache!3378 thiss!28822)))))))) b!2235038))

(declare-fun m!2669531 () Bool)

(assert (=> setNonEmpty!20317 m!2669531))

(declare-fun m!2669533 () Bool)

(assert (=> b!2235038 m!2669533))

(check-sat (not b!2235024) (not setNonEmpty!20317) (not bm!134614) (not b!2235006) (not b!2235011) (not b!2235027) (not b!2235005) (not b!2235034) (not b!2235031) (not b!2234991) (not b_next!65513) (not setNonEmpty!20308) (not b!2234980) (not b!2234981) (not d!665372) (not d!665366) (not bm!134623) (not b!2235007) (not b!2234962) tp_is_empty!10123 (not b!2234947) (not b_next!65515) (not d!665360) (not b!2235033) (not b!2235019) (not b!2235037) (not setNonEmpty!20316) (not setNonEmpty!20311) (not b!2235016) (not b!2235036) (not b!2235009) (not b!2234957) (not b!2235026) (not b!2234993) (not b!2234948) (not b!2234904) (not b!2234992) (not b!2235038) b_and!174797 (not b!2235020) b_and!174799 (not b!2235028) (not b!2235010) (not bm!134613) (not b!2234951) (not mapNonEmpty!14519) (not b!2234956) (not b!2234978) (not b!2235035) (not b!2235022) (not setNonEmpty!20315) (not setNonEmpty!20314) (not b!2235018) (not d!665362) (not b!2235025) (not b!2234979) (not b!2234977) (not bm!134622) (not b!2235032) (not b!2235023) (not setNonEmpty!20307) (not bm!134611) (not b!2234982) (not b!2235030) (not b!2234936))
(check-sat b_and!174799 b_and!174797 (not b_next!65513) (not b_next!65515))
