; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208488 () Bool)

(assert start!208488)

(declare-fun b!2149448 () Bool)

(declare-fun b_free!63469 () Bool)

(declare-fun b_next!64173 () Bool)

(assert (=> b!2149448 (= b_free!63469 (not b_next!64173))))

(declare-fun tp!667513 () Bool)

(declare-fun b_and!173073 () Bool)

(assert (=> b!2149448 (= tp!667513 b_and!173073)))

(declare-fun b!2149452 () Bool)

(declare-fun b_free!63471 () Bool)

(declare-fun b_next!64175 () Bool)

(assert (=> b!2149452 (= b_free!63471 (not b_next!64175))))

(declare-fun tp!667510 () Bool)

(declare-fun b_and!173075 () Bool)

(assert (=> b!2149452 (= tp!667510 b_and!173075)))

(declare-fun b!2149438 () Bool)

(assert (=> b!2149438 true))

(declare-fun e!1374359 () Bool)

(declare-fun e!1374360 () Bool)

(assert (=> b!2149438 (= e!1374359 e!1374360)))

(declare-fun res!927061 () Bool)

(assert (=> b!2149438 (=> res!927061 e!1374360)))

(declare-fun from!952 () Int)

(assert (=> b!2149438 (= res!927061 (< from!952 0))))

(declare-datatypes ((C!11836 0))(
  ( (C!11837 (val!6904 Int)) )
))
(declare-datatypes ((Regex!5845 0))(
  ( (ElementMatch!5845 (c!341072 C!11836)) (Concat!10147 (regOne!12202 Regex!5845) (regTwo!12202 Regex!5845)) (EmptyExpr!5845) (Star!5845 (reg!6174 Regex!5845)) (EmptyLang!5845) (Union!5845 (regOne!12203 Regex!5845) (regTwo!12203 Regex!5845)) )
))
(declare-datatypes ((List!24696 0))(
  ( (Nil!24612) (Cons!24612 (h!30013 Regex!5845) (t!197238 List!24696)) )
))
(declare-datatypes ((Context!2830 0))(
  ( (Context!2831 (exprs!1915 List!24696)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3622 0))(
  ( (tuple3!3623 (_1!14507 (InoxSet Context!2830)) (_2!14507 Int) (_3!2281 Int)) )
))
(declare-fun lt!800264 () tuple3!3622)

(declare-datatypes ((List!24697 0))(
  ( (Nil!24613) (Cons!24613 (h!30014 C!11836) (t!197239 List!24697)) )
))
(declare-datatypes ((tuple2!24452 0))(
  ( (tuple2!24453 (_1!14508 tuple3!3622) (_2!14508 Int)) )
))
(declare-datatypes ((List!24698 0))(
  ( (Nil!24614) (Cons!24614 (h!30015 tuple2!24452) (t!197240 List!24698)) )
))
(declare-datatypes ((array!9709 0))(
  ( (array!9710 (arr!4336 (Array (_ BitVec 32) (_ BitVec 64))) (size!19275 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2784 0))(
  ( (HashableExt!2783 (__x!16786 Int)) )
))
(declare-datatypes ((array!9711 0))(
  ( (array!9712 (arr!4337 (Array (_ BitVec 32) List!24698)) (size!19276 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5740 0))(
  ( (LongMapFixedSize!5741 (defaultEntry!3235 Int) (mask!7108 (_ BitVec 32)) (extraKeys!3118 (_ BitVec 32)) (zeroValue!3128 List!24698) (minValue!3128 List!24698) (_size!5791 (_ BitVec 32)) (_keys!3167 array!9709) (_values!3150 array!9711) (_vacant!2931 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11305 0))(
  ( (Cell!11306 (v!29184 LongMapFixedSize!5740)) )
))
(declare-datatypes ((MutLongMap!2870 0))(
  ( (LongMap!2870 (underlying!5935 Cell!11305)) (MutLongMapExt!2869 (__x!16787 Int)) )
))
(declare-datatypes ((Cell!11307 0))(
  ( (Cell!11308 (v!29185 MutLongMap!2870)) )
))
(declare-datatypes ((MutableMap!2784 0))(
  ( (MutableMapExt!2783 (__x!16788 Int)) (HashMap!2784 (underlying!5936 Cell!11307) (hashF!4707 Hashable!2784) (_size!5792 (_ BitVec 32)) (defaultValue!2946 Int)) )
))
(declare-datatypes ((IArray!15967 0))(
  ( (IArray!15968 (innerList!8041 List!24697)) )
))
(declare-datatypes ((Conc!7981 0))(
  ( (Node!7981 (left!18898 Conc!7981) (right!19228 Conc!7981) (csize!16192 Int) (cheight!8192 Int)) (Leaf!11671 (xs!10923 IArray!15967) (csize!16193 Int)) (Empty!7981) )
))
(declare-datatypes ((BalanceConc!15724 0))(
  ( (BalanceConc!15725 (c!341073 Conc!7981)) )
))
(declare-datatypes ((CacheFurthestNullable!926 0))(
  ( (CacheFurthestNullable!927 (cache!3165 MutableMap!2784) (totalInput!3234 BalanceConc!15724)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!926)

(declare-fun localTotalInput!13 () BalanceConc!15724)

(declare-fun validCacheMapFurthestNullableBody!20 (tuple2!24452 BalanceConc!15724) Bool)

(declare-fun apply!6012 (MutableMap!2784 tuple3!3622) Int)

(assert (=> b!2149438 (validCacheMapFurthestNullableBody!20 (tuple2!24453 lt!800264 (apply!6012 (cache!3165 thiss!29110) lt!800264)) localTotalInput!13)))

(declare-fun lambda!80781 () Int)

(declare-datatypes ((Unit!37790 0))(
  ( (Unit!37791) )
))
(declare-fun lt!800263 () Unit!37790)

(declare-fun lemmaForallPairsThenForLookup!4 (MutableMap!2784 tuple3!3622 Int) Unit!37790)

(assert (=> b!2149438 (= lt!800263 (lemmaForallPairsThenForLookup!4 (cache!3165 thiss!29110) lt!800264 lambda!80781))))

(declare-fun mapNonEmpty!13601 () Bool)

(declare-fun mapRes!13601 () Bool)

(declare-fun tp!667508 () Bool)

(declare-fun tp!667517 () Bool)

(assert (=> mapNonEmpty!13601 (= mapRes!13601 (and tp!667508 tp!667517))))

(declare-fun mapKey!13601 () (_ BitVec 32))

(declare-fun mapRest!13601 () (Array (_ BitVec 32) List!24698))

(declare-fun mapValue!13601 () List!24698)

(assert (=> mapNonEmpty!13601 (= (arr!4337 (_values!3150 (v!29184 (underlying!5935 (v!29185 (underlying!5936 (cache!3165 thiss!29110))))))) (store mapRest!13601 mapKey!13601 mapValue!13601))))

(declare-fun b!2149439 () Bool)

(declare-fun e!1374357 () Bool)

(declare-fun tp!667507 () Bool)

(declare-fun inv!32414 (Conc!7981) Bool)

(assert (=> b!2149439 (= e!1374357 (and (inv!32414 (c!341073 (totalInput!3234 thiss!29110))) tp!667507))))

(declare-fun b!2149440 () Bool)

(declare-fun e!1374356 () Bool)

(assert (=> b!2149440 (= e!1374356 (not e!1374359))))

(declare-fun res!927064 () Bool)

(assert (=> b!2149440 (=> res!927064 e!1374359)))

(declare-fun contains!4203 (MutableMap!2784 tuple3!3622) Bool)

(assert (=> b!2149440 (= res!927064 (not (contains!4203 (cache!3165 thiss!29110) lt!800264)))))

(declare-fun z!514 () (InoxSet Context!2830))

(declare-fun lastNullablePos!91 () Int)

(assert (=> b!2149440 (= lt!800264 (tuple3!3623 z!514 from!952 lastNullablePos!91))))

(declare-fun validCacheMapFurthestNullable!141 (MutableMap!2784 BalanceConc!15724) Bool)

(assert (=> b!2149440 (validCacheMapFurthestNullable!141 (cache!3165 thiss!29110) localTotalInput!13)))

(declare-fun setIsEmpty!17074 () Bool)

(declare-fun setRes!17074 () Bool)

(assert (=> setIsEmpty!17074 setRes!17074))

(declare-fun b!2149441 () Bool)

(declare-fun res!927063 () Bool)

(assert (=> b!2149441 (=> (not res!927063) (not e!1374356))))

(declare-fun e!1374369 () Bool)

(assert (=> b!2149441 (= res!927063 e!1374369)))

(declare-fun res!927062 () Bool)

(assert (=> b!2149441 (=> res!927062 e!1374369)))

(declare-fun nullableZipper!184 ((InoxSet Context!2830)) Bool)

(assert (=> b!2149441 (= res!927062 (not (nullableZipper!184 z!514)))))

(declare-fun mapIsEmpty!13601 () Bool)

(assert (=> mapIsEmpty!13601 mapRes!13601))

(declare-fun setElem!17074 () Context!2830)

(declare-fun tp!667514 () Bool)

(declare-fun setNonEmpty!17074 () Bool)

(declare-fun e!1374365 () Bool)

(declare-fun inv!32415 (Context!2830) Bool)

(assert (=> setNonEmpty!17074 (= setRes!17074 (and tp!667514 (inv!32415 setElem!17074) e!1374365))))

(declare-fun setRest!17074 () (InoxSet Context!2830))

(assert (=> setNonEmpty!17074 (= z!514 ((_ map or) (store ((as const (Array Context!2830 Bool)) false) setElem!17074 true) setRest!17074))))

(declare-fun b!2149442 () Bool)

(declare-fun res!927066 () Bool)

(assert (=> b!2149442 (=> res!927066 e!1374360)))

(declare-fun size!19277 (BalanceConc!15724) Int)

(assert (=> b!2149442 (= res!927066 (> from!952 (size!19277 localTotalInput!13)))))

(declare-fun b!2149443 () Bool)

(declare-fun tp!667515 () Bool)

(assert (=> b!2149443 (= e!1374365 tp!667515)))

(declare-fun b!2149444 () Bool)

(assert (=> b!2149444 (= e!1374369 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun res!927060 () Bool)

(assert (=> start!208488 (=> (not res!927060) (not e!1374356))))

(assert (=> start!208488 (= res!927060 (and (= localTotalInput!13 (totalInput!3234 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208488 e!1374356))

(declare-fun condSetEmpty!17074 () Bool)

(assert (=> start!208488 (= condSetEmpty!17074 (= z!514 ((as const (Array Context!2830 Bool)) false)))))

(assert (=> start!208488 setRes!17074))

(assert (=> start!208488 true))

(declare-fun e!1374366 () Bool)

(declare-fun inv!32416 (CacheFurthestNullable!926) Bool)

(assert (=> start!208488 (and (inv!32416 thiss!29110) e!1374366)))

(declare-fun e!1374358 () Bool)

(declare-fun inv!32417 (BalanceConc!15724) Bool)

(assert (=> start!208488 (and (inv!32417 localTotalInput!13) e!1374358)))

(declare-fun b!2149445 () Bool)

(assert (=> b!2149445 (= e!1374360 (<= from!952 (size!19277 (totalInput!3234 thiss!29110))))))

(declare-fun b!2149446 () Bool)

(declare-fun e!1374363 () Bool)

(declare-fun e!1374367 () Bool)

(assert (=> b!2149446 (= e!1374363 e!1374367)))

(declare-fun b!2149447 () Bool)

(declare-fun res!927065 () Bool)

(assert (=> b!2149447 (=> (not res!927065) (not e!1374356))))

(assert (=> b!2149447 (= res!927065 (validCacheMapFurthestNullable!141 (cache!3165 thiss!29110) (totalInput!3234 thiss!29110)))))

(declare-fun tp!667509 () Bool)

(declare-fun e!1374364 () Bool)

(declare-fun e!1374368 () Bool)

(declare-fun tp!667516 () Bool)

(declare-fun array_inv!3110 (array!9709) Bool)

(declare-fun array_inv!3111 (array!9711) Bool)

(assert (=> b!2149448 (= e!1374368 (and tp!667513 tp!667516 tp!667509 (array_inv!3110 (_keys!3167 (v!29184 (underlying!5935 (v!29185 (underlying!5936 (cache!3165 thiss!29110))))))) (array_inv!3111 (_values!3150 (v!29184 (underlying!5935 (v!29185 (underlying!5936 (cache!3165 thiss!29110))))))) e!1374364))))

(declare-fun b!2149449 () Bool)

(declare-fun e!1374362 () Bool)

(declare-fun lt!800262 () MutLongMap!2870)

(get-info :version)

(assert (=> b!2149449 (= e!1374362 (and e!1374363 ((_ is LongMap!2870) lt!800262)))))

(assert (=> b!2149449 (= lt!800262 (v!29185 (underlying!5936 (cache!3165 thiss!29110))))))

(declare-fun e!1374361 () Bool)

(declare-fun b!2149450 () Bool)

(assert (=> b!2149450 (= e!1374366 (and e!1374361 (inv!32417 (totalInput!3234 thiss!29110)) e!1374357))))

(declare-fun b!2149451 () Bool)

(assert (=> b!2149451 (= e!1374367 e!1374368)))

(assert (=> b!2149452 (= e!1374361 (and e!1374362 tp!667510))))

(declare-fun b!2149453 () Bool)

(declare-fun tp!667512 () Bool)

(assert (=> b!2149453 (= e!1374364 (and tp!667512 mapRes!13601))))

(declare-fun condMapEmpty!13601 () Bool)

(declare-fun mapDefault!13601 () List!24698)

(assert (=> b!2149453 (= condMapEmpty!13601 (= (arr!4337 (_values!3150 (v!29184 (underlying!5935 (v!29185 (underlying!5936 (cache!3165 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24698)) mapDefault!13601)))))

(declare-fun b!2149454 () Bool)

(declare-fun tp!667511 () Bool)

(assert (=> b!2149454 (= e!1374358 (and (inv!32414 (c!341073 localTotalInput!13)) tp!667511))))

(assert (= (and start!208488 res!927060) b!2149441))

(assert (= (and b!2149441 (not res!927062)) b!2149444))

(assert (= (and b!2149441 res!927063) b!2149447))

(assert (= (and b!2149447 res!927065) b!2149440))

(assert (= (and b!2149440 (not res!927064)) b!2149438))

(assert (= (and b!2149438 (not res!927061)) b!2149442))

(assert (= (and b!2149442 (not res!927066)) b!2149445))

(assert (= (and start!208488 condSetEmpty!17074) setIsEmpty!17074))

(assert (= (and start!208488 (not condSetEmpty!17074)) setNonEmpty!17074))

(assert (= setNonEmpty!17074 b!2149443))

(assert (= (and b!2149453 condMapEmpty!13601) mapIsEmpty!13601))

(assert (= (and b!2149453 (not condMapEmpty!13601)) mapNonEmpty!13601))

(assert (= b!2149448 b!2149453))

(assert (= b!2149451 b!2149448))

(assert (= b!2149446 b!2149451))

(assert (= (and b!2149449 ((_ is LongMap!2870) (v!29185 (underlying!5936 (cache!3165 thiss!29110))))) b!2149446))

(assert (= b!2149452 b!2149449))

(assert (= (and b!2149450 ((_ is HashMap!2784) (cache!3165 thiss!29110))) b!2149452))

(assert (= b!2149450 b!2149439))

(assert (= start!208488 b!2149450))

(assert (= start!208488 b!2149454))

(declare-fun m!2592322 () Bool)

(assert (=> b!2149440 m!2592322))

(declare-fun m!2592324 () Bool)

(assert (=> b!2149440 m!2592324))

(declare-fun m!2592326 () Bool)

(assert (=> b!2149454 m!2592326))

(declare-fun m!2592328 () Bool)

(assert (=> b!2149450 m!2592328))

(declare-fun m!2592330 () Bool)

(assert (=> start!208488 m!2592330))

(declare-fun m!2592332 () Bool)

(assert (=> start!208488 m!2592332))

(declare-fun m!2592334 () Bool)

(assert (=> b!2149441 m!2592334))

(declare-fun m!2592336 () Bool)

(assert (=> b!2149448 m!2592336))

(declare-fun m!2592338 () Bool)

(assert (=> b!2149448 m!2592338))

(declare-fun m!2592340 () Bool)

(assert (=> b!2149442 m!2592340))

(declare-fun m!2592342 () Bool)

(assert (=> b!2149438 m!2592342))

(declare-fun m!2592344 () Bool)

(assert (=> b!2149438 m!2592344))

(declare-fun m!2592346 () Bool)

(assert (=> b!2149438 m!2592346))

(declare-fun m!2592348 () Bool)

(assert (=> setNonEmpty!17074 m!2592348))

(declare-fun m!2592350 () Bool)

(assert (=> b!2149439 m!2592350))

(declare-fun m!2592352 () Bool)

(assert (=> b!2149447 m!2592352))

(declare-fun m!2592354 () Bool)

(assert (=> b!2149445 m!2592354))

(declare-fun m!2592356 () Bool)

(assert (=> mapNonEmpty!13601 m!2592356))

(check-sat (not b!2149454) (not b_next!64173) (not mapNonEmpty!13601) (not b!2149442) (not setNonEmpty!17074) (not b!2149438) (not b!2149441) (not b!2149447) (not b!2149453) b_and!173073 (not b!2149440) (not b!2149439) (not b!2149443) (not b!2149450) (not b!2149445) (not b!2149448) (not b_next!64175) b_and!173075 (not start!208488))
(check-sat b_and!173075 b_and!173073 (not b_next!64173) (not b_next!64175))
