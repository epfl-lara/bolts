; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241540 () Bool)

(assert start!241540)

(declare-fun b!2476525 () Bool)

(declare-fun b_free!71921 () Bool)

(declare-fun b_next!72625 () Bool)

(assert (=> b!2476525 (= b_free!71921 (not b_next!72625))))

(declare-fun tp!792178 () Bool)

(declare-fun b_and!188145 () Bool)

(assert (=> b!2476525 (= tp!792178 b_and!188145)))

(declare-fun b!2476519 () Bool)

(declare-fun b_free!71923 () Bool)

(declare-fun b_next!72627 () Bool)

(assert (=> b!2476519 (= b_free!71923 (not b_next!72627))))

(declare-fun tp!792180 () Bool)

(declare-fun b_and!188147 () Bool)

(assert (=> b!2476519 (= tp!792180 b_and!188147)))

(declare-fun res!1048443 () Bool)

(declare-fun e!1571318 () Bool)

(assert (=> start!241540 (=> (not res!1048443) (not e!1571318))))

(declare-datatypes ((array!11495 0))(
  ( (array!11496 (arr!5122 (Array (_ BitVec 32) (_ BitVec 64))) (size!22541 (_ BitVec 32))) )
))
(declare-datatypes ((K!5250 0))(
  ( (K!5251 (val!8675 Int)) )
))
(declare-datatypes ((V!5452 0))(
  ( (V!5453 (val!8676 Int)) )
))
(declare-datatypes ((tuple2!28334 0))(
  ( (tuple2!28335 (_1!16708 K!5250) (_2!16708 V!5452)) )
))
(declare-datatypes ((List!29035 0))(
  ( (Nil!28935) (Cons!28935 (h!34336 tuple2!28334) (t!210670 List!29035)) )
))
(declare-datatypes ((array!11497 0))(
  ( (array!11498 (arr!5123 (Array (_ BitVec 32) List!29035)) (size!22542 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6532 0))(
  ( (LongMapFixedSize!6533 (defaultEntry!3640 Int) (mask!8388 (_ BitVec 32)) (extraKeys!3514 (_ BitVec 32)) (zeroValue!3524 List!29035) (minValue!3524 List!29035) (_size!6579 (_ BitVec 32)) (_keys!3563 array!11495) (_values!3546 array!11497) (_vacant!3327 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12881 0))(
  ( (Cell!12882 (v!31196 LongMapFixedSize!6532)) )
))
(declare-datatypes ((MutLongMap!3266 0))(
  ( (LongMap!3266 (underlying!6739 Cell!12881)) (MutLongMapExt!3265 (__x!18704 Int)) )
))
(declare-datatypes ((Cell!12883 0))(
  ( (Cell!12884 (v!31197 MutLongMap!3266)) )
))
(declare-datatypes ((Hashable!3176 0))(
  ( (HashableExt!3175 (__x!18705 Int)) )
))
(declare-datatypes ((MutableMap!3176 0))(
  ( (MutableMapExt!3175 (__x!18706 Int)) (HashMap!3176 (underlying!6740 Cell!12883) (hashF!5107 Hashable!3176) (_size!6580 (_ BitVec 32)) (defaultValue!3338 Int)) )
))
(declare-fun thiss!47892 () MutableMap!3176)

(declare-fun valid!2467 (MutableMap!3176) Bool)

(assert (=> start!241540 (= res!1048443 (valid!2467 thiss!47892))))

(assert (=> start!241540 e!1571318))

(declare-fun e!1571320 () Bool)

(assert (=> start!241540 e!1571320))

(declare-fun tp_is_empty!12029 () Bool)

(assert (=> start!241540 tp_is_empty!12029))

(declare-fun b!2476514 () Bool)

(declare-fun e!1571322 () Bool)

(declare-fun e!1571321 () Bool)

(assert (=> b!2476514 (= e!1571322 e!1571321)))

(declare-fun c!394111 () Bool)

(declare-datatypes ((tuple2!28336 0))(
  ( (tuple2!28337 (_1!16709 Bool) (_2!16709 MutableMap!3176)) )
))
(declare-fun lt!884375 () tuple2!28336)

(assert (=> b!2476514 (= c!394111 (_1!16709 lt!884375))))

(declare-datatypes ((ListMap!937 0))(
  ( (ListMap!938 (toList!1445 List!29035)) )
))
(declare-fun call!151618 () ListMap!937)

(declare-fun bm!151613 () Bool)

(declare-fun abstractMap!118 (MutableMap!3176) ListMap!937)

(assert (=> bm!151613 (= call!151618 (abstractMap!118 (ite c!394111 thiss!47892 (_2!16709 lt!884375))))))

(declare-fun call!151620 () ListMap!937)

(declare-fun bm!151614 () Bool)

(assert (=> bm!151614 (= call!151620 (abstractMap!118 (ite c!394111 (_2!16709 lt!884375) thiss!47892)))))

(declare-fun b!2476515 () Bool)

(declare-fun call!151619 () Bool)

(assert (=> b!2476515 (= e!1571321 (not call!151619))))

(declare-fun b!2476516 () Bool)

(declare-fun res!1048445 () Bool)

(assert (=> b!2476516 (=> (not res!1048445) (not e!1571318))))

(get-info :version)

(assert (=> b!2476516 (= res!1048445 (not ((_ is MutableMapExt!3175) thiss!47892)))))

(declare-fun bm!151615 () Bool)

(declare-fun e!1571324 () ListMap!937)

(declare-fun eq!59 (ListMap!937 ListMap!937) Bool)

(assert (=> bm!151615 (= call!151619 (eq!59 (ite c!394111 call!151620 call!151618) e!1571324))))

(declare-fun c!394110 () Bool)

(assert (=> bm!151615 (= c!394110 c!394111)))

(declare-fun b!2476517 () Bool)

(declare-fun e!1571327 () Bool)

(declare-fun e!1571319 () Bool)

(declare-fun lt!884374 () MutLongMap!3266)

(assert (=> b!2476517 (= e!1571327 (and e!1571319 ((_ is LongMap!3266) lt!884374)))))

(assert (=> b!2476517 (= lt!884374 (v!31197 (underlying!6740 thiss!47892)))))

(declare-fun b!2476518 () Bool)

(declare-fun key!7256 () K!5250)

(declare-fun -!111 (ListMap!937 K!5250) ListMap!937)

(assert (=> b!2476518 (= e!1571324 (-!111 call!151618 key!7256))))

(assert (=> b!2476519 (= e!1571320 (and e!1571327 tp!792180))))

(declare-fun b!2476520 () Bool)

(assert (=> b!2476520 (= e!1571318 e!1571322)))

(declare-fun res!1048444 () Bool)

(assert (=> b!2476520 (=> res!1048444 e!1571322)))

(assert (=> b!2476520 (= res!1048444 (not (valid!2467 (_2!16709 lt!884375))))))

(declare-fun remove!77 (MutableMap!3176 K!5250) tuple2!28336)

(assert (=> b!2476520 (= lt!884375 (remove!77 thiss!47892 key!7256))))

(declare-fun b!2476521 () Bool)

(declare-fun e!1571323 () Bool)

(declare-fun tp!792182 () Bool)

(declare-fun mapRes!15216 () Bool)

(assert (=> b!2476521 (= e!1571323 (and tp!792182 mapRes!15216))))

(declare-fun condMapEmpty!15216 () Bool)

(declare-fun mapDefault!15216 () List!29035)

(assert (=> b!2476521 (= condMapEmpty!15216 (= (arr!5123 (_values!3546 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))))) ((as const (Array (_ BitVec 32) List!29035)) mapDefault!15216)))))

(declare-fun b!2476522 () Bool)

(declare-fun e!1571326 () Bool)

(declare-fun e!1571325 () Bool)

(assert (=> b!2476522 (= e!1571326 e!1571325)))

(declare-fun b!2476523 () Bool)

(assert (=> b!2476523 (= e!1571321 (not call!151619))))

(declare-fun b!2476524 () Bool)

(assert (=> b!2476524 (= e!1571324 call!151620)))

(declare-fun tp!792181 () Bool)

(declare-fun tp!792177 () Bool)

(declare-fun array_inv!3673 (array!11495) Bool)

(declare-fun array_inv!3674 (array!11497) Bool)

(assert (=> b!2476525 (= e!1571325 (and tp!792178 tp!792177 tp!792181 (array_inv!3673 (_keys!3563 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))))) (array_inv!3674 (_values!3546 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))))) e!1571323))))

(declare-fun b!2476526 () Bool)

(assert (=> b!2476526 (= e!1571319 e!1571326)))

(declare-fun mapNonEmpty!15216 () Bool)

(declare-fun tp!792179 () Bool)

(declare-fun tp!792176 () Bool)

(assert (=> mapNonEmpty!15216 (= mapRes!15216 (and tp!792179 tp!792176))))

(declare-fun mapRest!15216 () (Array (_ BitVec 32) List!29035))

(declare-fun mapKey!15216 () (_ BitVec 32))

(declare-fun mapValue!15216 () List!29035)

(assert (=> mapNonEmpty!15216 (= (arr!5123 (_values!3546 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))))) (store mapRest!15216 mapKey!15216 mapValue!15216))))

(declare-fun mapIsEmpty!15216 () Bool)

(assert (=> mapIsEmpty!15216 mapRes!15216))

(assert (= (and start!241540 res!1048443) b!2476516))

(assert (= (and b!2476516 res!1048445) b!2476520))

(assert (= (and b!2476520 (not res!1048444)) b!2476514))

(assert (= (and b!2476514 c!394111) b!2476523))

(assert (= (and b!2476514 (not c!394111)) b!2476515))

(assert (= (or b!2476523 b!2476515) bm!151614))

(assert (= (or b!2476523 b!2476515) bm!151613))

(assert (= (or b!2476523 b!2476515) bm!151615))

(assert (= (and bm!151615 c!394110) b!2476518))

(assert (= (and bm!151615 (not c!394110)) b!2476524))

(assert (= (and b!2476521 condMapEmpty!15216) mapIsEmpty!15216))

(assert (= (and b!2476521 (not condMapEmpty!15216)) mapNonEmpty!15216))

(assert (= b!2476525 b!2476521))

(assert (= b!2476522 b!2476525))

(assert (= b!2476526 b!2476522))

(assert (= (and b!2476517 ((_ is LongMap!3266) (v!31197 (underlying!6740 thiss!47892)))) b!2476526))

(assert (= b!2476519 b!2476517))

(assert (= (and start!241540 ((_ is HashMap!3176) thiss!47892)) b!2476519))

(declare-fun m!2844413 () Bool)

(assert (=> bm!151613 m!2844413))

(declare-fun m!2844415 () Bool)

(assert (=> bm!151614 m!2844415))

(declare-fun m!2844417 () Bool)

(assert (=> b!2476518 m!2844417))

(declare-fun m!2844419 () Bool)

(assert (=> mapNonEmpty!15216 m!2844419))

(declare-fun m!2844421 () Bool)

(assert (=> bm!151615 m!2844421))

(declare-fun m!2844423 () Bool)

(assert (=> start!241540 m!2844423))

(declare-fun m!2844425 () Bool)

(assert (=> b!2476525 m!2844425))

(declare-fun m!2844427 () Bool)

(assert (=> b!2476525 m!2844427))

(declare-fun m!2844429 () Bool)

(assert (=> b!2476520 m!2844429))

(declare-fun m!2844431 () Bool)

(assert (=> b!2476520 m!2844431))

(check-sat (not b_next!72627) (not b_next!72625) tp_is_empty!12029 (not bm!151615) (not b!2476525) (not bm!151613) (not b!2476521) b_and!188145 (not b!2476518) (not mapNonEmpty!15216) (not bm!151614) b_and!188147 (not start!241540) (not b!2476520))
(check-sat b_and!188147 b_and!188145 (not b_next!72627) (not b_next!72625))
(get-model)

(declare-fun c!394114 () Bool)

(declare-fun d!712266 () Bool)

(assert (=> d!712266 (= c!394114 ((_ is MutableMapExt!3175) (ite c!394111 thiss!47892 (_2!16709 lt!884375))))))

(declare-fun e!1571330 () ListMap!937)

(assert (=> d!712266 (= (abstractMap!118 (ite c!394111 thiss!47892 (_2!16709 lt!884375))) e!1571330)))

(declare-fun b!2476531 () Bool)

(declare-fun abstractMap!119 (MutableMap!3176) ListMap!937)

(assert (=> b!2476531 (= e!1571330 (abstractMap!119 (ite c!394111 thiss!47892 (_2!16709 lt!884375))))))

(declare-fun b!2476532 () Bool)

(declare-fun abstractMap!120 (MutableMap!3176) ListMap!937)

(assert (=> b!2476532 (= e!1571330 (abstractMap!120 (ite c!394111 thiss!47892 (_2!16709 lt!884375))))))

(assert (= (and d!712266 c!394114) b!2476531))

(assert (= (and d!712266 (not c!394114)) b!2476532))

(declare-fun m!2844433 () Bool)

(assert (=> b!2476531 m!2844433))

(declare-fun m!2844435 () Bool)

(assert (=> b!2476532 m!2844435))

(assert (=> bm!151613 d!712266))

(declare-fun d!712268 () Bool)

(declare-fun c!394115 () Bool)

(assert (=> d!712268 (= c!394115 ((_ is MutableMapExt!3175) (ite c!394111 (_2!16709 lt!884375) thiss!47892)))))

(declare-fun e!1571331 () ListMap!937)

(assert (=> d!712268 (= (abstractMap!118 (ite c!394111 (_2!16709 lt!884375) thiss!47892)) e!1571331)))

(declare-fun b!2476533 () Bool)

(assert (=> b!2476533 (= e!1571331 (abstractMap!119 (ite c!394111 (_2!16709 lt!884375) thiss!47892)))))

(declare-fun b!2476534 () Bool)

(assert (=> b!2476534 (= e!1571331 (abstractMap!120 (ite c!394111 (_2!16709 lt!884375) thiss!47892)))))

(assert (= (and d!712268 c!394115) b!2476533))

(assert (= (and d!712268 (not c!394115)) b!2476534))

(declare-fun m!2844437 () Bool)

(assert (=> b!2476533 m!2844437))

(declare-fun m!2844439 () Bool)

(assert (=> b!2476534 m!2844439))

(assert (=> bm!151614 d!712268))

(declare-fun d!712270 () Bool)

(declare-fun e!1571334 () Bool)

(assert (=> d!712270 e!1571334))

(declare-fun res!1048448 () Bool)

(assert (=> d!712270 (=> (not res!1048448) (not e!1571334))))

(declare-fun lt!884378 () ListMap!937)

(declare-fun contains!4937 (ListMap!937 K!5250) Bool)

(assert (=> d!712270 (= res!1048448 (not (contains!4937 lt!884378 key!7256)))))

(declare-fun removePresrvNoDuplicatedKeys!21 (List!29035 K!5250) List!29035)

(assert (=> d!712270 (= lt!884378 (ListMap!938 (removePresrvNoDuplicatedKeys!21 (toList!1445 call!151618) key!7256)))))

(assert (=> d!712270 (= (-!111 call!151618 key!7256) lt!884378)))

(declare-fun b!2476537 () Bool)

(declare-datatypes ((List!29036 0))(
  ( (Nil!28936) (Cons!28936 (h!34337 K!5250) (t!210671 List!29036)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3971 (List!29036) (InoxSet K!5250))

(declare-fun keys!9215 (ListMap!937) List!29036)

(assert (=> b!2476537 (= e!1571334 (= ((_ map and) (content!3971 (keys!9215 call!151618)) ((_ map not) (store ((as const (Array K!5250 Bool)) false) key!7256 true))) (content!3971 (keys!9215 lt!884378))))))

(assert (= (and d!712270 res!1048448) b!2476537))

(declare-fun m!2844441 () Bool)

(assert (=> d!712270 m!2844441))

(declare-fun m!2844443 () Bool)

(assert (=> d!712270 m!2844443))

(declare-fun m!2844445 () Bool)

(assert (=> b!2476537 m!2844445))

(declare-fun m!2844447 () Bool)

(assert (=> b!2476537 m!2844447))

(declare-fun m!2844449 () Bool)

(assert (=> b!2476537 m!2844449))

(declare-fun m!2844451 () Bool)

(assert (=> b!2476537 m!2844451))

(declare-fun m!2844453 () Bool)

(assert (=> b!2476537 m!2844453))

(assert (=> b!2476537 m!2844451))

(assert (=> b!2476537 m!2844445))

(assert (=> b!2476518 d!712270))

(declare-fun d!712272 () Bool)

(assert (=> d!712272 (= (array_inv!3673 (_keys!3563 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))))) (bvsge (size!22541 (_keys!3563 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))))) #b00000000000000000000000000000000))))

(assert (=> b!2476525 d!712272))

(declare-fun d!712274 () Bool)

(assert (=> d!712274 (= (array_inv!3674 (_values!3546 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))))) (bvsge (size!22542 (_values!3546 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))))) #b00000000000000000000000000000000))))

(assert (=> b!2476525 d!712274))

(declare-fun d!712276 () Bool)

(declare-fun c!394118 () Bool)

(assert (=> d!712276 (= c!394118 ((_ is MutableMapExt!3175) (_2!16709 lt!884375)))))

(declare-fun e!1571337 () Bool)

(assert (=> d!712276 (= (valid!2467 (_2!16709 lt!884375)) e!1571337)))

(declare-fun b!2476542 () Bool)

(declare-fun valid!2468 (MutableMap!3176) Bool)

(assert (=> b!2476542 (= e!1571337 (valid!2468 (_2!16709 lt!884375)))))

(declare-fun b!2476543 () Bool)

(declare-fun valid!2469 (MutableMap!3176) Bool)

(assert (=> b!2476543 (= e!1571337 (valid!2469 (_2!16709 lt!884375)))))

(assert (= (and d!712276 c!394118) b!2476542))

(assert (= (and d!712276 (not c!394118)) b!2476543))

(declare-fun m!2844455 () Bool)

(assert (=> b!2476542 m!2844455))

(declare-fun m!2844457 () Bool)

(assert (=> b!2476543 m!2844457))

(assert (=> b!2476520 d!712276))

(declare-fun b!2476566 () Bool)

(declare-fun call!151641 () ListMap!937)

(declare-fun call!151643 () ListMap!937)

(assert (=> b!2476566 (eq!59 call!151641 call!151643)))

(declare-datatypes ((Unit!42301 0))(
  ( (Unit!42302) )
))
(declare-fun lt!884462 () Unit!42301)

(declare-fun lt!884460 () Unit!42301)

(assert (=> b!2476566 (= lt!884462 lt!884460)))

(declare-fun lt!884445 () (_ BitVec 64))

(declare-datatypes ((tuple2!28338 0))(
  ( (tuple2!28339 (_1!16710 (_ BitVec 64)) (_2!16710 List!29035)) )
))
(declare-datatypes ((List!29037 0))(
  ( (Nil!28937) (Cons!28937 (h!34338 tuple2!28338) (t!210672 List!29037)) )
))
(declare-datatypes ((ListLongMap!383 0))(
  ( (ListLongMap!384 (toList!1446 List!29037)) )
))
(declare-fun lt!884447 () ListLongMap!383)

(declare-fun lt!884457 () List!29035)

(declare-fun call!151640 () ListMap!937)

(declare-fun extractMap!135 (List!29037) ListMap!937)

(declare-fun +!64 (ListLongMap!383 tuple2!28338) ListLongMap!383)

(assert (=> b!2476566 (eq!59 (extractMap!135 (toList!1446 (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457)))) (-!111 call!151640 key!7256))))

(declare-datatypes ((tuple2!28340 0))(
  ( (tuple2!28341 (_1!16711 Unit!42301) (_2!16711 MutableMap!3176)) )
))
(declare-fun lt!884455 () tuple2!28340)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!21 (ListLongMap!383 (_ BitVec 64) List!29035 K!5250 Hashable!3176) Unit!42301)

(assert (=> b!2476566 (= lt!884460 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!21 lt!884447 lt!884445 lt!884457 key!7256 (hashF!5107 (_2!16711 lt!884455))))))

(declare-fun lt!884443 () Unit!42301)

(declare-fun Unit!42303 () Unit!42301)

(assert (=> b!2476566 (= lt!884443 Unit!42303)))

(declare-fun lt!884446 () ListMap!937)

(assert (=> b!2476566 (contains!4937 lt!884446 key!7256)))

(declare-fun lt!884459 () Unit!42301)

(declare-fun Unit!42304 () Unit!42301)

(assert (=> b!2476566 (= lt!884459 Unit!42304)))

(declare-fun call!151639 () Bool)

(assert (=> b!2476566 call!151639))

(declare-fun lt!884451 () Unit!42301)

(declare-fun Unit!42305 () Unit!42301)

(assert (=> b!2476566 (= lt!884451 Unit!42305)))

(declare-fun allKeysSameHashInMap!125 (ListLongMap!383 Hashable!3176) Bool)

(declare-fun map!6014 (MutLongMap!3266) ListLongMap!383)

(assert (=> b!2476566 (allKeysSameHashInMap!125 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455)))) (hashF!5107 (_2!16711 lt!884455)))))

(declare-fun lt!884467 () Unit!42301)

(declare-fun Unit!42306 () Unit!42301)

(assert (=> b!2476566 (= lt!884467 Unit!42306)))

(declare-fun lambda!93401 () Int)

(declare-fun forall!5922 (List!29037 Int) Bool)

(assert (=> b!2476566 (forall!5922 (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455))))) lambda!93401)))

(declare-fun lt!884466 () Unit!42301)

(declare-fun lt!884461 () Unit!42301)

(assert (=> b!2476566 (= lt!884466 lt!884461)))

(declare-fun e!1571350 () Bool)

(assert (=> b!2476566 e!1571350))

(declare-fun res!1048456 () Bool)

(assert (=> b!2476566 (=> (not res!1048456) (not e!1571350))))

(declare-fun lt!884442 () ListLongMap!383)

(assert (=> b!2476566 (= res!1048456 (forall!5922 (toList!1446 lt!884442) lambda!93401))))

(assert (=> b!2476566 (= lt!884442 (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!35 (ListLongMap!383 (_ BitVec 64) List!29035 Hashable!3176) Unit!42301)

(assert (=> b!2476566 (= lt!884461 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!35 lt!884447 lt!884445 lt!884457 (hashF!5107 (_2!16711 lt!884455))))))

(declare-fun lt!884448 () Unit!42301)

(declare-fun lt!884456 () Unit!42301)

(assert (=> b!2476566 (= lt!884448 lt!884456)))

(declare-fun lt!884453 () List!29035)

(declare-fun allKeysSameHash!39 (List!29035 (_ BitVec 64) Hashable!3176) Bool)

(declare-fun removePairForKey!35 (List!29035 K!5250) List!29035)

(assert (=> b!2476566 (allKeysSameHash!39 (removePairForKey!35 lt!884453 key!7256) lt!884445 (hashF!5107 (_2!16711 lt!884455)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!35 (List!29035 K!5250 (_ BitVec 64) Hashable!3176) Unit!42301)

(assert (=> b!2476566 (= lt!884456 (lemmaRemovePairForKeyPreservesHash!35 lt!884453 key!7256 lt!884445 (hashF!5107 (_2!16711 lt!884455))))))

(declare-fun lt!884464 () Unit!42301)

(declare-fun lt!884463 () Unit!42301)

(assert (=> b!2476566 (= lt!884464 lt!884463)))

(assert (=> b!2476566 (allKeysSameHash!39 lt!884453 lt!884445 (hashF!5107 (_2!16711 lt!884455)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!35 (List!29037 (_ BitVec 64) List!29035 Hashable!3176) Unit!42301)

(assert (=> b!2476566 (= lt!884463 (lemmaInLongMapAllKeySameHashThenForTuple!35 (toList!1446 lt!884447) lt!884445 lt!884453 (hashF!5107 (_2!16711 lt!884455))))))

(declare-fun e!1571351 () Unit!42301)

(declare-fun Unit!42307 () Unit!42301)

(assert (=> b!2476566 (= e!1571351 Unit!42307)))

(declare-fun d!712278 () Bool)

(declare-fun e!1571354 () Bool)

(assert (=> d!712278 e!1571354))

(declare-fun res!1048455 () Bool)

(assert (=> d!712278 (=> (not res!1048455) (not e!1571354))))

(declare-fun lt!884458 () tuple2!28336)

(assert (=> d!712278 (= res!1048455 ((_ is HashMap!3176) (_2!16709 lt!884458)))))

(declare-fun e!1571352 () tuple2!28336)

(assert (=> d!712278 (= lt!884458 e!1571352)))

(declare-fun c!394129 () Bool)

(declare-fun lt!884440 () Bool)

(assert (=> d!712278 (= c!394129 (not lt!884440))))

(declare-fun contains!4938 (MutableMap!3176 K!5250) Bool)

(assert (=> d!712278 (= lt!884440 (contains!4938 thiss!47892 key!7256))))

(assert (=> d!712278 (valid!2469 thiss!47892)))

(assert (=> d!712278 (= (remove!77 thiss!47892 key!7256) lt!884458)))

(declare-fun b!2476567 () Bool)

(declare-fun e!1571353 () Bool)

(declare-fun call!151637 () Bool)

(assert (=> b!2476567 (= e!1571353 call!151637)))

(declare-fun call!151644 () ListMap!937)

(declare-fun c!394127 () Bool)

(declare-fun bm!151632 () Bool)

(declare-fun map!6015 (MutableMap!3176) ListMap!937)

(assert (=> bm!151632 (= call!151644 (map!6015 (ite c!394127 (_2!16709 lt!884458) thiss!47892)))))

(declare-fun bm!151633 () Bool)

(declare-fun lt!884444 () ListLongMap!383)

(assert (=> bm!151633 (= call!151640 (extractMap!135 (ite c!394129 (toList!1446 lt!884444) (toList!1446 lt!884447))))))

(declare-fun b!2476568 () Bool)

(declare-fun e!1571355 () ListMap!937)

(assert (=> b!2476568 (= e!1571355 call!151644)))

(declare-fun bm!151634 () Bool)

(declare-fun call!151642 () ListMap!937)

(assert (=> bm!151634 (= call!151637 (eq!59 (ite c!394127 call!151644 call!151642) e!1571355))))

(declare-fun c!394130 () Bool)

(assert (=> bm!151634 (= c!394130 c!394127)))

(declare-fun b!2476569 () Bool)

(assert (=> b!2476569 (= e!1571353 call!151637)))

(declare-fun bm!151635 () Bool)

(assert (=> bm!151635 (= call!151642 (map!6015 (ite c!394127 thiss!47892 (_2!16709 lt!884458))))))

(declare-fun b!2476570 () Bool)

(declare-datatypes ((tuple2!28342 0))(
  ( (tuple2!28343 (_1!16712 Bool) (_2!16712 MutLongMap!3266)) )
))
(declare-fun lt!884465 () tuple2!28342)

(assert (=> b!2476570 (= e!1571352 (tuple2!28337 (_1!16712 lt!884465) (_2!16711 lt!884455)))))

(declare-fun hash!604 (Hashable!3176 K!5250) (_ BitVec 64))

(assert (=> b!2476570 (= lt!884445 (hash!604 (hashF!5107 thiss!47892) key!7256))))

(declare-fun apply!6828 (MutLongMap!3266 (_ BitVec 64)) List!29035)

(assert (=> b!2476570 (= lt!884453 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884445))))

(declare-fun call!151638 () ListLongMap!383)

(declare-fun lt!884454 () Unit!42301)

(declare-fun forallContained!804 (List!29037 Int tuple2!28338) Unit!42301)

(assert (=> b!2476570 (= lt!884454 (forallContained!804 (toList!1446 call!151638) lambda!93401 (tuple2!28339 lt!884445 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884445))))))

(assert (=> b!2476570 (= lt!884446 (map!6015 thiss!47892))))

(assert (=> b!2476570 (= lt!884447 call!151638)))

(assert (=> b!2476570 (= lt!884457 (removePairForKey!35 lt!884453 key!7256))))

(declare-fun update!150 (MutLongMap!3266 (_ BitVec 64) List!29035) tuple2!28342)

(assert (=> b!2476570 (= lt!884465 (update!150 (v!31197 (underlying!6740 thiss!47892)) lt!884445 lt!884457))))

(declare-fun Unit!42308 () Unit!42301)

(declare-fun Unit!42309 () Unit!42301)

(assert (=> b!2476570 (= lt!884455 (ite (and (_1!16712 lt!884465) lt!884440) (tuple2!28341 Unit!42308 (HashMap!3176 (Cell!12884 (_2!16712 lt!884465)) (hashF!5107 thiss!47892) (bvsub (_size!6580 thiss!47892) #b00000000000000000000000000000001) (defaultValue!3338 thiss!47892))) (tuple2!28341 Unit!42309 (HashMap!3176 (Cell!12884 (_2!16712 lt!884465)) (hashF!5107 thiss!47892) (_size!6580 thiss!47892) (defaultValue!3338 thiss!47892)))))))

(declare-fun lt!884468 () Unit!42301)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!35 (List!29035 K!5250) Unit!42301)

(assert (=> b!2476570 (= lt!884468 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!35 lt!884453 key!7256))))

(declare-fun noDuplicateKeys!43 (List!29035) Bool)

(assert (=> b!2476570 (noDuplicateKeys!43 (removePairForKey!35 lt!884453 key!7256))))

(declare-fun lt!884449 () Unit!42301)

(assert (=> b!2476570 (= lt!884449 lt!884468)))

(declare-fun c!394128 () Bool)

(assert (=> b!2476570 (= c!394128 (_1!16712 lt!884465))))

(declare-fun lt!884452 () Unit!42301)

(assert (=> b!2476570 (= lt!884452 e!1571351)))

(declare-fun b!2476571 () Bool)

(assert (=> b!2476571 (= e!1571350 (allKeysSameHashInMap!125 lt!884442 (hashF!5107 (_2!16711 lt!884455))))))

(declare-fun b!2476572 () Bool)

(declare-fun res!1048457 () Bool)

(assert (=> b!2476572 (=> (not res!1048457) (not e!1571354))))

(assert (=> b!2476572 (= res!1048457 (valid!2469 (_2!16709 lt!884458)))))

(declare-fun b!2476573 () Bool)

(assert (=> b!2476573 (= e!1571355 (-!111 call!151642 key!7256))))

(declare-fun bm!151636 () Bool)

(assert (=> bm!151636 (= call!151639 (valid!2469 (_2!16711 lt!884455)))))

(declare-fun bm!151637 () Bool)

(assert (=> bm!151637 (= call!151638 (map!6014 (v!31197 (underlying!6740 thiss!47892))))))

(declare-fun bm!151638 () Bool)

(assert (=> bm!151638 (= call!151641 (map!6015 (_2!16711 lt!884455)))))

(declare-fun bm!151639 () Bool)

(assert (=> bm!151639 (= call!151643 (-!111 (ite c!394129 call!151640 lt!884446) key!7256))))

(declare-fun b!2476574 () Bool)

(assert (=> b!2476574 (= e!1571352 (tuple2!28337 true thiss!47892))))

(assert (=> b!2476574 (= lt!884444 call!151638)))

(declare-fun lt!884441 () Unit!42301)

(declare-fun lemmaRemoveNotContainedDoesNotChange!21 (ListLongMap!383 K!5250 Hashable!3176) Unit!42301)

(assert (=> b!2476574 (= lt!884441 (lemmaRemoveNotContainedDoesNotChange!21 lt!884444 key!7256 (hashF!5107 thiss!47892)))))

(assert (=> b!2476574 (= call!151640 call!151643)))

(declare-fun lt!884450 () Unit!42301)

(assert (=> b!2476574 (= lt!884450 lt!884441)))

(declare-fun b!2476575 () Bool)

(assert (=> b!2476575 (= e!1571354 e!1571353)))

(assert (=> b!2476575 (= c!394127 (_1!16709 lt!884458))))

(declare-fun b!2476576 () Bool)

(assert (=> b!2476576 (= call!151641 lt!884446)))

(declare-fun lt!884439 () Unit!42301)

(declare-fun Unit!42310 () Unit!42301)

(assert (=> b!2476576 (= lt!884439 Unit!42310)))

(assert (=> b!2476576 call!151639))

(declare-fun Unit!42311 () Unit!42301)

(assert (=> b!2476576 (= e!1571351 Unit!42311)))

(assert (= (and d!712278 c!394129) b!2476574))

(assert (= (and d!712278 (not c!394129)) b!2476570))

(assert (= (and b!2476570 c!394128) b!2476566))

(assert (= (and b!2476570 (not c!394128)) b!2476576))

(assert (= (and b!2476566 res!1048456) b!2476571))

(assert (= (or b!2476566 b!2476576) bm!151638))

(assert (= (or b!2476566 b!2476576) bm!151636))

(assert (= (or b!2476574 b!2476570) bm!151637))

(assert (= (or b!2476574 b!2476566) bm!151633))

(assert (= (or b!2476574 b!2476566) bm!151639))

(assert (= (and d!712278 res!1048455) b!2476572))

(assert (= (and b!2476572 res!1048457) b!2476575))

(assert (= (and b!2476575 c!394127) b!2476567))

(assert (= (and b!2476575 (not c!394127)) b!2476569))

(assert (= (or b!2476567 b!2476569) bm!151632))

(assert (= (or b!2476567 b!2476569) bm!151635))

(assert (= (or b!2476567 b!2476569) bm!151634))

(assert (= (and bm!151634 c!394130) b!2476573))

(assert (= (and bm!151634 (not c!394130)) b!2476568))

(declare-fun m!2844459 () Bool)

(assert (=> bm!151634 m!2844459))

(declare-fun m!2844461 () Bool)

(assert (=> b!2476571 m!2844461))

(declare-fun m!2844463 () Bool)

(assert (=> bm!151635 m!2844463))

(declare-fun m!2844465 () Bool)

(assert (=> bm!151632 m!2844465))

(declare-fun m!2844467 () Bool)

(assert (=> bm!151636 m!2844467))

(declare-fun m!2844469 () Bool)

(assert (=> b!2476574 m!2844469))

(declare-fun m!2844471 () Bool)

(assert (=> bm!151639 m!2844471))

(declare-fun m!2844473 () Bool)

(assert (=> b!2476566 m!2844473))

(declare-fun m!2844475 () Bool)

(assert (=> b!2476566 m!2844475))

(declare-fun m!2844477 () Bool)

(assert (=> b!2476566 m!2844477))

(declare-fun m!2844479 () Bool)

(assert (=> b!2476566 m!2844479))

(declare-fun m!2844481 () Bool)

(assert (=> b!2476566 m!2844481))

(declare-fun m!2844483 () Bool)

(assert (=> b!2476566 m!2844483))

(declare-fun m!2844485 () Bool)

(assert (=> b!2476566 m!2844485))

(declare-fun m!2844487 () Bool)

(assert (=> b!2476566 m!2844487))

(declare-fun m!2844489 () Bool)

(assert (=> b!2476566 m!2844489))

(declare-fun m!2844491 () Bool)

(assert (=> b!2476566 m!2844491))

(assert (=> b!2476566 m!2844475))

(declare-fun m!2844493 () Bool)

(assert (=> b!2476566 m!2844493))

(assert (=> b!2476566 m!2844487))

(declare-fun m!2844495 () Bool)

(assert (=> b!2476566 m!2844495))

(declare-fun m!2844497 () Bool)

(assert (=> b!2476566 m!2844497))

(declare-fun m!2844499 () Bool)

(assert (=> b!2476566 m!2844499))

(assert (=> b!2476566 m!2844485))

(assert (=> b!2476566 m!2844479))

(declare-fun m!2844501 () Bool)

(assert (=> b!2476566 m!2844501))

(declare-fun m!2844503 () Bool)

(assert (=> b!2476566 m!2844503))

(declare-fun m!2844505 () Bool)

(assert (=> b!2476566 m!2844505))

(declare-fun m!2844507 () Bool)

(assert (=> bm!151633 m!2844507))

(declare-fun m!2844509 () Bool)

(assert (=> d!712278 m!2844509))

(declare-fun m!2844511 () Bool)

(assert (=> d!712278 m!2844511))

(declare-fun m!2844513 () Bool)

(assert (=> bm!151637 m!2844513))

(declare-fun m!2844515 () Bool)

(assert (=> b!2476572 m!2844515))

(declare-fun m!2844517 () Bool)

(assert (=> b!2476570 m!2844517))

(assert (=> b!2476570 m!2844475))

(declare-fun m!2844519 () Bool)

(assert (=> b!2476570 m!2844519))

(declare-fun m!2844521 () Bool)

(assert (=> b!2476570 m!2844521))

(declare-fun m!2844523 () Bool)

(assert (=> b!2476570 m!2844523))

(assert (=> b!2476570 m!2844475))

(declare-fun m!2844525 () Bool)

(assert (=> b!2476570 m!2844525))

(declare-fun m!2844527 () Bool)

(assert (=> b!2476570 m!2844527))

(declare-fun m!2844529 () Bool)

(assert (=> b!2476570 m!2844529))

(declare-fun m!2844531 () Bool)

(assert (=> b!2476573 m!2844531))

(declare-fun m!2844533 () Bool)

(assert (=> bm!151638 m!2844533))

(assert (=> b!2476520 d!712278))

(declare-fun d!712280 () Bool)

(declare-fun c!394131 () Bool)

(assert (=> d!712280 (= c!394131 ((_ is MutableMapExt!3175) thiss!47892))))

(declare-fun e!1571356 () Bool)

(assert (=> d!712280 (= (valid!2467 thiss!47892) e!1571356)))

(declare-fun b!2476577 () Bool)

(assert (=> b!2476577 (= e!1571356 (valid!2468 thiss!47892))))

(declare-fun b!2476578 () Bool)

(assert (=> b!2476578 (= e!1571356 (valid!2469 thiss!47892))))

(assert (= (and d!712280 c!394131) b!2476577))

(assert (= (and d!712280 (not c!394131)) b!2476578))

(declare-fun m!2844535 () Bool)

(assert (=> b!2476577 m!2844535))

(assert (=> b!2476578 m!2844511))

(assert (=> start!241540 d!712280))

(declare-fun d!712282 () Bool)

(declare-fun content!3972 (List!29035) (InoxSet tuple2!28334))

(assert (=> d!712282 (= (eq!59 (ite c!394111 call!151620 call!151618) e!1571324) (= (content!3972 (toList!1445 (ite c!394111 call!151620 call!151618))) (content!3972 (toList!1445 e!1571324))))))

(declare-fun bs!467035 () Bool)

(assert (= bs!467035 d!712282))

(declare-fun m!2844537 () Bool)

(assert (=> bs!467035 m!2844537))

(declare-fun m!2844539 () Bool)

(assert (=> bs!467035 m!2844539))

(assert (=> bm!151615 d!712282))

(declare-fun condMapEmpty!15219 () Bool)

(declare-fun mapDefault!15219 () List!29035)

(assert (=> mapNonEmpty!15216 (= condMapEmpty!15219 (= mapRest!15216 ((as const (Array (_ BitVec 32) List!29035)) mapDefault!15219)))))

(declare-fun e!1571362 () Bool)

(declare-fun mapRes!15219 () Bool)

(assert (=> mapNonEmpty!15216 (= tp!792179 (and e!1571362 mapRes!15219))))

(declare-fun mapNonEmpty!15219 () Bool)

(declare-fun tp!792189 () Bool)

(declare-fun e!1571361 () Bool)

(assert (=> mapNonEmpty!15219 (= mapRes!15219 (and tp!792189 e!1571361))))

(declare-fun mapValue!15219 () List!29035)

(declare-fun mapKey!15219 () (_ BitVec 32))

(declare-fun mapRest!15219 () (Array (_ BitVec 32) List!29035))

(assert (=> mapNonEmpty!15219 (= mapRest!15216 (store mapRest!15219 mapKey!15219 mapValue!15219))))

(declare-fun tp_is_empty!12031 () Bool)

(declare-fun tp!792190 () Bool)

(declare-fun b!2476585 () Bool)

(assert (=> b!2476585 (= e!1571361 (and tp_is_empty!12029 tp_is_empty!12031 tp!792190))))

(declare-fun mapIsEmpty!15219 () Bool)

(assert (=> mapIsEmpty!15219 mapRes!15219))

(declare-fun tp!792191 () Bool)

(declare-fun b!2476586 () Bool)

(assert (=> b!2476586 (= e!1571362 (and tp_is_empty!12029 tp_is_empty!12031 tp!792191))))

(assert (= (and mapNonEmpty!15216 condMapEmpty!15219) mapIsEmpty!15219))

(assert (= (and mapNonEmpty!15216 (not condMapEmpty!15219)) mapNonEmpty!15219))

(assert (= (and mapNonEmpty!15219 ((_ is Cons!28935) mapValue!15219)) b!2476585))

(assert (= (and mapNonEmpty!15216 ((_ is Cons!28935) mapDefault!15219)) b!2476586))

(declare-fun m!2844541 () Bool)

(assert (=> mapNonEmpty!15219 m!2844541))

(declare-fun b!2476591 () Bool)

(declare-fun tp!792194 () Bool)

(declare-fun e!1571365 () Bool)

(assert (=> b!2476591 (= e!1571365 (and tp_is_empty!12029 tp_is_empty!12031 tp!792194))))

(assert (=> mapNonEmpty!15216 (= tp!792176 e!1571365)))

(assert (= (and mapNonEmpty!15216 ((_ is Cons!28935) mapValue!15216)) b!2476591))

(declare-fun tp!792195 () Bool)

(declare-fun e!1571366 () Bool)

(declare-fun b!2476592 () Bool)

(assert (=> b!2476592 (= e!1571366 (and tp_is_empty!12029 tp_is_empty!12031 tp!792195))))

(assert (=> b!2476525 (= tp!792177 e!1571366)))

(assert (= (and b!2476525 ((_ is Cons!28935) (zeroValue!3524 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892))))))) b!2476592))

(declare-fun b!2476593 () Bool)

(declare-fun e!1571367 () Bool)

(declare-fun tp!792196 () Bool)

(assert (=> b!2476593 (= e!1571367 (and tp_is_empty!12029 tp_is_empty!12031 tp!792196))))

(assert (=> b!2476525 (= tp!792181 e!1571367)))

(assert (= (and b!2476525 ((_ is Cons!28935) (minValue!3524 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892))))))) b!2476593))

(declare-fun e!1571368 () Bool)

(declare-fun b!2476594 () Bool)

(declare-fun tp!792197 () Bool)

(assert (=> b!2476594 (= e!1571368 (and tp_is_empty!12029 tp_is_empty!12031 tp!792197))))

(assert (=> b!2476521 (= tp!792182 e!1571368)))

(assert (= (and b!2476521 ((_ is Cons!28935) mapDefault!15216)) b!2476594))

(check-sat (not d!712270) b_and!188145 (not b!2476570) (not b!2476572) (not b!2476586) (not b_next!72627) (not mapNonEmpty!15219) (not b_next!72625) (not d!712278) (not b!2476574) (not b!2476566) tp_is_empty!12029 (not b!2476594) (not bm!151637) tp_is_empty!12031 (not b!2476537) (not bm!151639) (not bm!151633) (not b!2476542) (not b!2476571) (not bm!151638) (not b!2476532) (not bm!151632) (not b!2476585) (not bm!151636) (not d!712282) (not b!2476533) (not b!2476577) (not b!2476534) (not b!2476578) (not bm!151634) b_and!188147 (not b!2476592) (not bm!151635) (not b!2476591) (not b!2476573) (not b!2476593) (not b!2476531) (not b!2476543))
(check-sat b_and!188147 b_and!188145 (not b_next!72627) (not b_next!72625))
(get-model)

(declare-fun d!712284 () Bool)

(declare-fun choose!14606 (MutableMap!3176) ListMap!937)

(assert (=> d!712284 (= (abstractMap!119 (ite c!394111 thiss!47892 (_2!16709 lt!884375))) (choose!14606 (ite c!394111 thiss!47892 (_2!16709 lt!884375))))))

(declare-fun bs!467036 () Bool)

(assert (= bs!467036 d!712284))

(declare-fun m!2844543 () Bool)

(assert (=> bs!467036 m!2844543))

(assert (=> b!2476531 d!712284))

(declare-fun bs!467037 () Bool)

(declare-fun d!712286 () Bool)

(assert (= bs!467037 (and d!712286 b!2476570)))

(declare-fun lambda!93404 () Int)

(assert (=> bs!467037 (= lambda!93404 lambda!93401)))

(declare-fun lt!884471 () ListMap!937)

(declare-fun invariantList!400 (List!29035) Bool)

(assert (=> d!712286 (invariantList!400 (toList!1445 lt!884471))))

(declare-fun e!1571371 () ListMap!937)

(assert (=> d!712286 (= lt!884471 e!1571371)))

(declare-fun c!394134 () Bool)

(assert (=> d!712286 (= c!394134 ((_ is Cons!28937) (ite c!394129 (toList!1446 lt!884444) (toList!1446 lt!884447))))))

(assert (=> d!712286 (forall!5922 (ite c!394129 (toList!1446 lt!884444) (toList!1446 lt!884447)) lambda!93404)))

(assert (=> d!712286 (= (extractMap!135 (ite c!394129 (toList!1446 lt!884444) (toList!1446 lt!884447))) lt!884471)))

(declare-fun b!2476599 () Bool)

(declare-fun addToMapMapFromBucket!13 (List!29035 ListMap!937) ListMap!937)

(assert (=> b!2476599 (= e!1571371 (addToMapMapFromBucket!13 (_2!16710 (h!34338 (ite c!394129 (toList!1446 lt!884444) (toList!1446 lt!884447)))) (extractMap!135 (t!210672 (ite c!394129 (toList!1446 lt!884444) (toList!1446 lt!884447))))))))

(declare-fun b!2476600 () Bool)

(assert (=> b!2476600 (= e!1571371 (ListMap!938 Nil!28935))))

(assert (= (and d!712286 c!394134) b!2476599))

(assert (= (and d!712286 (not c!394134)) b!2476600))

(declare-fun m!2844545 () Bool)

(assert (=> d!712286 m!2844545))

(declare-fun m!2844547 () Bool)

(assert (=> d!712286 m!2844547))

(declare-fun m!2844549 () Bool)

(assert (=> b!2476599 m!2844549))

(assert (=> b!2476599 m!2844549))

(declare-fun m!2844551 () Bool)

(assert (=> b!2476599 m!2844551))

(assert (=> bm!151633 d!712286))

(declare-fun d!712288 () Bool)

(assert (=> d!712288 (= (abstractMap!120 (ite c!394111 thiss!47892 (_2!16709 lt!884375))) (map!6015 (ite c!394111 thiss!47892 (_2!16709 lt!884375))))))

(declare-fun bs!467038 () Bool)

(assert (= bs!467038 d!712288))

(declare-fun m!2844553 () Bool)

(assert (=> bs!467038 m!2844553))

(assert (=> b!2476532 d!712288))

(declare-fun d!712290 () Bool)

(assert (=> d!712290 (= (eq!59 call!151641 call!151643) (= (content!3972 (toList!1445 call!151641)) (content!3972 (toList!1445 call!151643))))))

(declare-fun bs!467039 () Bool)

(assert (= bs!467039 d!712290))

(declare-fun m!2844555 () Bool)

(assert (=> bs!467039 m!2844555))

(declare-fun m!2844557 () Bool)

(assert (=> bs!467039 m!2844557))

(assert (=> b!2476566 d!712290))

(declare-fun d!712292 () Bool)

(declare-fun map!6016 (LongMapFixedSize!6532) ListLongMap!383)

(assert (=> d!712292 (= (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455)))) (map!6016 (v!31196 (underlying!6739 (v!31197 (underlying!6740 (_2!16711 lt!884455)))))))))

(declare-fun bs!467040 () Bool)

(assert (= bs!467040 d!712292))

(declare-fun m!2844559 () Bool)

(assert (=> bs!467040 m!2844559))

(assert (=> b!2476566 d!712292))

(declare-fun d!712294 () Bool)

(assert (=> d!712294 true))

(assert (=> d!712294 true))

(declare-fun lambda!93407 () Int)

(declare-fun forall!5923 (List!29035 Int) Bool)

(assert (=> d!712294 (= (allKeysSameHash!39 lt!884453 lt!884445 (hashF!5107 (_2!16711 lt!884455))) (forall!5923 lt!884453 lambda!93407))))

(declare-fun bs!467041 () Bool)

(assert (= bs!467041 d!712294))

(declare-fun m!2844561 () Bool)

(assert (=> bs!467041 m!2844561))

(assert (=> b!2476566 d!712294))

(declare-fun bs!467042 () Bool)

(declare-fun d!712296 () Bool)

(assert (= bs!467042 (and d!712296 b!2476570)))

(declare-fun lambda!93410 () Int)

(assert (=> bs!467042 (not (= lambda!93410 lambda!93401))))

(declare-fun bs!467043 () Bool)

(assert (= bs!467043 (and d!712296 d!712286)))

(assert (=> bs!467043 (not (= lambda!93410 lambda!93404))))

(assert (=> d!712296 true))

(assert (=> d!712296 (allKeysSameHash!39 lt!884453 lt!884445 (hashF!5107 (_2!16711 lt!884455)))))

(declare-fun lt!884474 () Unit!42301)

(declare-fun choose!14607 (List!29037 (_ BitVec 64) List!29035 Hashable!3176) Unit!42301)

(assert (=> d!712296 (= lt!884474 (choose!14607 (toList!1446 lt!884447) lt!884445 lt!884453 (hashF!5107 (_2!16711 lt!884455))))))

(assert (=> d!712296 (forall!5922 (toList!1446 lt!884447) lambda!93410)))

(assert (=> d!712296 (= (lemmaInLongMapAllKeySameHashThenForTuple!35 (toList!1446 lt!884447) lt!884445 lt!884453 (hashF!5107 (_2!16711 lt!884455))) lt!884474)))

(declare-fun bs!467044 () Bool)

(assert (= bs!467044 d!712296))

(assert (=> bs!467044 m!2844491))

(declare-fun m!2844563 () Bool)

(assert (=> bs!467044 m!2844563))

(declare-fun m!2844565 () Bool)

(assert (=> bs!467044 m!2844565))

(assert (=> b!2476566 d!712296))

(declare-fun bs!467045 () Bool)

(declare-fun d!712298 () Bool)

(assert (= bs!467045 (and d!712298 b!2476570)))

(declare-fun lambda!93413 () Int)

(assert (=> bs!467045 (= lambda!93413 lambda!93401)))

(declare-fun bs!467046 () Bool)

(assert (= bs!467046 (and d!712298 d!712286)))

(assert (=> bs!467046 (= lambda!93413 lambda!93404)))

(declare-fun bs!467047 () Bool)

(assert (= bs!467047 (and d!712298 d!712296)))

(assert (=> bs!467047 (not (= lambda!93413 lambda!93410))))

(assert (=> d!712298 (eq!59 (extractMap!135 (toList!1446 (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457)))) (-!111 (extractMap!135 (toList!1446 lt!884447)) key!7256))))

(declare-fun lt!884477 () Unit!42301)

(declare-fun choose!14608 (ListLongMap!383 (_ BitVec 64) List!29035 K!5250 Hashable!3176) Unit!42301)

(assert (=> d!712298 (= lt!884477 (choose!14608 lt!884447 lt!884445 lt!884457 key!7256 (hashF!5107 (_2!16711 lt!884455))))))

(assert (=> d!712298 (forall!5922 (toList!1446 lt!884447) lambda!93413)))

(assert (=> d!712298 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!21 lt!884447 lt!884445 lt!884457 key!7256 (hashF!5107 (_2!16711 lt!884455))) lt!884477)))

(declare-fun bs!467048 () Bool)

(assert (= bs!467048 d!712298))

(declare-fun m!2844567 () Bool)

(assert (=> bs!467048 m!2844567))

(declare-fun m!2844569 () Bool)

(assert (=> bs!467048 m!2844569))

(declare-fun m!2844571 () Bool)

(assert (=> bs!467048 m!2844571))

(assert (=> bs!467048 m!2844567))

(assert (=> bs!467048 m!2844485))

(declare-fun m!2844573 () Bool)

(assert (=> bs!467048 m!2844573))

(assert (=> bs!467048 m!2844481))

(assert (=> bs!467048 m!2844485))

(assert (=> bs!467048 m!2844569))

(declare-fun m!2844575 () Bool)

(assert (=> bs!467048 m!2844575))

(assert (=> b!2476566 d!712298))

(declare-fun bs!467049 () Bool)

(declare-fun d!712300 () Bool)

(assert (= bs!467049 (and d!712300 b!2476570)))

(declare-fun lambda!93416 () Int)

(assert (=> bs!467049 (not (= lambda!93416 lambda!93401))))

(declare-fun bs!467050 () Bool)

(assert (= bs!467050 (and d!712300 d!712286)))

(assert (=> bs!467050 (not (= lambda!93416 lambda!93404))))

(declare-fun bs!467051 () Bool)

(assert (= bs!467051 (and d!712300 d!712296)))

(assert (=> bs!467051 (= lambda!93416 lambda!93410)))

(declare-fun bs!467052 () Bool)

(assert (= bs!467052 (and d!712300 d!712298)))

(assert (=> bs!467052 (not (= lambda!93416 lambda!93413))))

(assert (=> d!712300 true))

(assert (=> d!712300 (= (allKeysSameHashInMap!125 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455)))) (hashF!5107 (_2!16711 lt!884455))) (forall!5922 (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455))))) lambda!93416))))

(declare-fun bs!467053 () Bool)

(assert (= bs!467053 d!712300))

(declare-fun m!2844577 () Bool)

(assert (=> bs!467053 m!2844577))

(assert (=> b!2476566 d!712300))

(declare-fun d!712302 () Bool)

(assert (=> d!712302 (= (eq!59 (extractMap!135 (toList!1446 (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457)))) (-!111 call!151640 key!7256)) (= (content!3972 (toList!1445 (extractMap!135 (toList!1446 (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457)))))) (content!3972 (toList!1445 (-!111 call!151640 key!7256)))))))

(declare-fun bs!467054 () Bool)

(assert (= bs!467054 d!712302))

(declare-fun m!2844579 () Bool)

(assert (=> bs!467054 m!2844579))

(declare-fun m!2844581 () Bool)

(assert (=> bs!467054 m!2844581))

(assert (=> b!2476566 d!712302))

(declare-fun bs!467055 () Bool)

(declare-fun d!712304 () Bool)

(assert (= bs!467055 (and d!712304 b!2476570)))

(declare-fun lambda!93421 () Int)

(assert (=> bs!467055 (= lambda!93421 lambda!93401)))

(declare-fun bs!467056 () Bool)

(assert (= bs!467056 (and d!712304 d!712298)))

(assert (=> bs!467056 (= lambda!93421 lambda!93413)))

(declare-fun bs!467057 () Bool)

(assert (= bs!467057 (and d!712304 d!712296)))

(assert (=> bs!467057 (not (= lambda!93421 lambda!93410))))

(declare-fun bs!467058 () Bool)

(assert (= bs!467058 (and d!712304 d!712300)))

(assert (=> bs!467058 (not (= lambda!93421 lambda!93416))))

(declare-fun bs!467059 () Bool)

(assert (= bs!467059 (and d!712304 d!712286)))

(assert (=> bs!467059 (= lambda!93421 lambda!93404)))

(declare-fun e!1571374 () Bool)

(assert (=> d!712304 e!1571374))

(declare-fun res!1048460 () Bool)

(assert (=> d!712304 (=> (not res!1048460) (not e!1571374))))

(declare-fun lt!884483 () ListLongMap!383)

(assert (=> d!712304 (= res!1048460 (forall!5922 (toList!1446 lt!884483) lambda!93421))))

(assert (=> d!712304 (= lt!884483 (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457)))))

(declare-fun lt!884482 () Unit!42301)

(declare-fun choose!14609 (ListLongMap!383 (_ BitVec 64) List!29035 Hashable!3176) Unit!42301)

(assert (=> d!712304 (= lt!884482 (choose!14609 lt!884447 lt!884445 lt!884457 (hashF!5107 (_2!16711 lt!884455))))))

(assert (=> d!712304 (forall!5922 (toList!1446 lt!884447) lambda!93421)))

(assert (=> d!712304 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!35 lt!884447 lt!884445 lt!884457 (hashF!5107 (_2!16711 lt!884455))) lt!884482)))

(declare-fun b!2476609 () Bool)

(assert (=> b!2476609 (= e!1571374 (allKeysSameHashInMap!125 lt!884483 (hashF!5107 (_2!16711 lt!884455))))))

(assert (= (and d!712304 res!1048460) b!2476609))

(declare-fun m!2844583 () Bool)

(assert (=> d!712304 m!2844583))

(assert (=> d!712304 m!2844481))

(declare-fun m!2844585 () Bool)

(assert (=> d!712304 m!2844585))

(declare-fun m!2844587 () Bool)

(assert (=> d!712304 m!2844587))

(declare-fun m!2844589 () Bool)

(assert (=> b!2476609 m!2844589))

(assert (=> b!2476566 d!712304))

(declare-fun b!2476620 () Bool)

(declare-fun e!1571380 () List!29035)

(assert (=> b!2476620 (= e!1571380 (Cons!28935 (h!34336 lt!884453) (removePairForKey!35 (t!210670 lt!884453) key!7256)))))

(declare-fun b!2476619 () Bool)

(declare-fun e!1571379 () List!29035)

(assert (=> b!2476619 (= e!1571379 e!1571380)))

(declare-fun c!394139 () Bool)

(assert (=> b!2476619 (= c!394139 ((_ is Cons!28935) lt!884453))))

(declare-fun b!2476621 () Bool)

(assert (=> b!2476621 (= e!1571380 Nil!28935)))

(declare-fun d!712306 () Bool)

(declare-fun lt!884486 () List!29035)

(declare-fun containsKey!110 (List!29035 K!5250) Bool)

(assert (=> d!712306 (not (containsKey!110 lt!884486 key!7256))))

(assert (=> d!712306 (= lt!884486 e!1571379)))

(declare-fun c!394140 () Bool)

(assert (=> d!712306 (= c!394140 (and ((_ is Cons!28935) lt!884453) (= (_1!16708 (h!34336 lt!884453)) key!7256)))))

(assert (=> d!712306 (noDuplicateKeys!43 lt!884453)))

(assert (=> d!712306 (= (removePairForKey!35 lt!884453 key!7256) lt!884486)))

(declare-fun b!2476618 () Bool)

(assert (=> b!2476618 (= e!1571379 (t!210670 lt!884453))))

(assert (= (and d!712306 c!394140) b!2476618))

(assert (= (and d!712306 (not c!394140)) b!2476619))

(assert (= (and b!2476619 c!394139) b!2476620))

(assert (= (and b!2476619 (not c!394139)) b!2476621))

(declare-fun m!2844591 () Bool)

(assert (=> b!2476620 m!2844591))

(declare-fun m!2844593 () Bool)

(assert (=> d!712306 m!2844593))

(declare-fun m!2844595 () Bool)

(assert (=> d!712306 m!2844595))

(assert (=> b!2476566 d!712306))

(declare-fun bs!467060 () Bool)

(declare-fun d!712308 () Bool)

(assert (= bs!467060 (and d!712308 b!2476570)))

(declare-fun lambda!93422 () Int)

(assert (=> bs!467060 (= lambda!93422 lambda!93401)))

(declare-fun bs!467061 () Bool)

(assert (= bs!467061 (and d!712308 d!712298)))

(assert (=> bs!467061 (= lambda!93422 lambda!93413)))

(declare-fun bs!467062 () Bool)

(assert (= bs!467062 (and d!712308 d!712296)))

(assert (=> bs!467062 (not (= lambda!93422 lambda!93410))))

(declare-fun bs!467063 () Bool)

(assert (= bs!467063 (and d!712308 d!712304)))

(assert (=> bs!467063 (= lambda!93422 lambda!93421)))

(declare-fun bs!467064 () Bool)

(assert (= bs!467064 (and d!712308 d!712300)))

(assert (=> bs!467064 (not (= lambda!93422 lambda!93416))))

(declare-fun bs!467065 () Bool)

(assert (= bs!467065 (and d!712308 d!712286)))

(assert (=> bs!467065 (= lambda!93422 lambda!93404)))

(declare-fun lt!884487 () ListMap!937)

(assert (=> d!712308 (invariantList!400 (toList!1445 lt!884487))))

(declare-fun e!1571381 () ListMap!937)

(assert (=> d!712308 (= lt!884487 e!1571381)))

(declare-fun c!394141 () Bool)

(assert (=> d!712308 (= c!394141 ((_ is Cons!28937) (toList!1446 (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457)))))))

(assert (=> d!712308 (forall!5922 (toList!1446 (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457))) lambda!93422)))

(assert (=> d!712308 (= (extractMap!135 (toList!1446 (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457)))) lt!884487)))

(declare-fun b!2476622 () Bool)

(assert (=> b!2476622 (= e!1571381 (addToMapMapFromBucket!13 (_2!16710 (h!34338 (toList!1446 (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457))))) (extractMap!135 (t!210672 (toList!1446 (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457)))))))))

(declare-fun b!2476623 () Bool)

(assert (=> b!2476623 (= e!1571381 (ListMap!938 Nil!28935))))

(assert (= (and d!712308 c!394141) b!2476622))

(assert (= (and d!712308 (not c!394141)) b!2476623))

(declare-fun m!2844597 () Bool)

(assert (=> d!712308 m!2844597))

(declare-fun m!2844599 () Bool)

(assert (=> d!712308 m!2844599))

(declare-fun m!2844601 () Bool)

(assert (=> b!2476622 m!2844601))

(assert (=> b!2476622 m!2844601))

(declare-fun m!2844603 () Bool)

(assert (=> b!2476622 m!2844603))

(assert (=> b!2476566 d!712308))

(declare-fun d!712310 () Bool)

(declare-fun e!1571384 () Bool)

(assert (=> d!712310 e!1571384))

(declare-fun res!1048466 () Bool)

(assert (=> d!712310 (=> (not res!1048466) (not e!1571384))))

(declare-fun lt!884499 () ListLongMap!383)

(declare-fun contains!4939 (ListLongMap!383 (_ BitVec 64)) Bool)

(assert (=> d!712310 (= res!1048466 (contains!4939 lt!884499 (_1!16710 (tuple2!28339 lt!884445 lt!884457))))))

(declare-fun lt!884497 () List!29037)

(assert (=> d!712310 (= lt!884499 (ListLongMap!384 lt!884497))))

(declare-fun lt!884498 () Unit!42301)

(declare-fun lt!884496 () Unit!42301)

(assert (=> d!712310 (= lt!884498 lt!884496)))

(declare-datatypes ((Option!5717 0))(
  ( (None!5716) (Some!5716 (v!31202 List!29035)) )
))
(declare-fun getValueByKey!120 (List!29037 (_ BitVec 64)) Option!5717)

(assert (=> d!712310 (= (getValueByKey!120 lt!884497 (_1!16710 (tuple2!28339 lt!884445 lt!884457))) (Some!5716 (_2!16710 (tuple2!28339 lt!884445 lt!884457))))))

(declare-fun lemmaContainsTupThenGetReturnValue!15 (List!29037 (_ BitVec 64) List!29035) Unit!42301)

(assert (=> d!712310 (= lt!884496 (lemmaContainsTupThenGetReturnValue!15 lt!884497 (_1!16710 (tuple2!28339 lt!884445 lt!884457)) (_2!16710 (tuple2!28339 lt!884445 lt!884457))))))

(declare-fun insertStrictlySorted!9 (List!29037 (_ BitVec 64) List!29035) List!29037)

(assert (=> d!712310 (= lt!884497 (insertStrictlySorted!9 (toList!1446 lt!884447) (_1!16710 (tuple2!28339 lt!884445 lt!884457)) (_2!16710 (tuple2!28339 lt!884445 lt!884457))))))

(assert (=> d!712310 (= (+!64 lt!884447 (tuple2!28339 lt!884445 lt!884457)) lt!884499)))

(declare-fun b!2476628 () Bool)

(declare-fun res!1048465 () Bool)

(assert (=> b!2476628 (=> (not res!1048465) (not e!1571384))))

(assert (=> b!2476628 (= res!1048465 (= (getValueByKey!120 (toList!1446 lt!884499) (_1!16710 (tuple2!28339 lt!884445 lt!884457))) (Some!5716 (_2!16710 (tuple2!28339 lt!884445 lt!884457)))))))

(declare-fun b!2476629 () Bool)

(declare-fun contains!4940 (List!29037 tuple2!28338) Bool)

(assert (=> b!2476629 (= e!1571384 (contains!4940 (toList!1446 lt!884499) (tuple2!28339 lt!884445 lt!884457)))))

(assert (= (and d!712310 res!1048466) b!2476628))

(assert (= (and b!2476628 res!1048465) b!2476629))

(declare-fun m!2844605 () Bool)

(assert (=> d!712310 m!2844605))

(declare-fun m!2844607 () Bool)

(assert (=> d!712310 m!2844607))

(declare-fun m!2844609 () Bool)

(assert (=> d!712310 m!2844609))

(declare-fun m!2844611 () Bool)

(assert (=> d!712310 m!2844611))

(declare-fun m!2844613 () Bool)

(assert (=> b!2476628 m!2844613))

(declare-fun m!2844615 () Bool)

(assert (=> b!2476629 m!2844615))

(assert (=> b!2476566 d!712310))

(declare-fun bs!467066 () Bool)

(declare-fun d!712312 () Bool)

(assert (= bs!467066 (and d!712312 d!712294)))

(declare-fun lambda!93423 () Int)

(assert (=> bs!467066 (= lambda!93423 lambda!93407)))

(assert (=> d!712312 true))

(assert (=> d!712312 true))

(assert (=> d!712312 (= (allKeysSameHash!39 (removePairForKey!35 lt!884453 key!7256) lt!884445 (hashF!5107 (_2!16711 lt!884455))) (forall!5923 (removePairForKey!35 lt!884453 key!7256) lambda!93423))))

(declare-fun bs!467067 () Bool)

(assert (= bs!467067 d!712312))

(assert (=> bs!467067 m!2844475))

(declare-fun m!2844617 () Bool)

(assert (=> bs!467067 m!2844617))

(assert (=> b!2476566 d!712312))

(declare-fun d!712314 () Bool)

(declare-fun e!1571385 () Bool)

(assert (=> d!712314 e!1571385))

(declare-fun res!1048467 () Bool)

(assert (=> d!712314 (=> (not res!1048467) (not e!1571385))))

(declare-fun lt!884500 () ListMap!937)

(assert (=> d!712314 (= res!1048467 (not (contains!4937 lt!884500 key!7256)))))

(assert (=> d!712314 (= lt!884500 (ListMap!938 (removePresrvNoDuplicatedKeys!21 (toList!1445 call!151640) key!7256)))))

(assert (=> d!712314 (= (-!111 call!151640 key!7256) lt!884500)))

(declare-fun b!2476630 () Bool)

(assert (=> b!2476630 (= e!1571385 (= ((_ map and) (content!3971 (keys!9215 call!151640)) ((_ map not) (store ((as const (Array K!5250 Bool)) false) key!7256 true))) (content!3971 (keys!9215 lt!884500))))))

(assert (= (and d!712314 res!1048467) b!2476630))

(declare-fun m!2844619 () Bool)

(assert (=> d!712314 m!2844619))

(declare-fun m!2844621 () Bool)

(assert (=> d!712314 m!2844621))

(declare-fun m!2844623 () Bool)

(assert (=> b!2476630 m!2844623))

(declare-fun m!2844625 () Bool)

(assert (=> b!2476630 m!2844625))

(assert (=> b!2476630 m!2844449))

(declare-fun m!2844627 () Bool)

(assert (=> b!2476630 m!2844627))

(declare-fun m!2844629 () Bool)

(assert (=> b!2476630 m!2844629))

(assert (=> b!2476630 m!2844627))

(assert (=> b!2476630 m!2844623))

(assert (=> b!2476566 d!712314))

(declare-fun d!712316 () Bool)

(declare-fun res!1048472 () Bool)

(declare-fun e!1571390 () Bool)

(assert (=> d!712316 (=> res!1048472 e!1571390)))

(assert (=> d!712316 (= res!1048472 ((_ is Nil!28937) (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455)))))))))

(assert (=> d!712316 (= (forall!5922 (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455))))) lambda!93401) e!1571390)))

(declare-fun b!2476635 () Bool)

(declare-fun e!1571391 () Bool)

(assert (=> b!2476635 (= e!1571390 e!1571391)))

(declare-fun res!1048473 () Bool)

(assert (=> b!2476635 (=> (not res!1048473) (not e!1571391))))

(declare-fun dynLambda!12430 (Int tuple2!28338) Bool)

(assert (=> b!2476635 (= res!1048473 (dynLambda!12430 lambda!93401 (h!34338 (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455))))))))))

(declare-fun b!2476636 () Bool)

(assert (=> b!2476636 (= e!1571391 (forall!5922 (t!210672 (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455)))))) lambda!93401))))

(assert (= (and d!712316 (not res!1048472)) b!2476635))

(assert (= (and b!2476635 res!1048473) b!2476636))

(declare-fun b_lambda!75983 () Bool)

(assert (=> (not b_lambda!75983) (not b!2476635)))

(declare-fun m!2844631 () Bool)

(assert (=> b!2476635 m!2844631))

(declare-fun m!2844633 () Bool)

(assert (=> b!2476636 m!2844633))

(assert (=> b!2476566 d!712316))

(declare-fun d!712318 () Bool)

(declare-fun res!1048474 () Bool)

(declare-fun e!1571392 () Bool)

(assert (=> d!712318 (=> res!1048474 e!1571392)))

(assert (=> d!712318 (= res!1048474 ((_ is Nil!28937) (toList!1446 lt!884442)))))

(assert (=> d!712318 (= (forall!5922 (toList!1446 lt!884442) lambda!93401) e!1571392)))

(declare-fun b!2476637 () Bool)

(declare-fun e!1571393 () Bool)

(assert (=> b!2476637 (= e!1571392 e!1571393)))

(declare-fun res!1048475 () Bool)

(assert (=> b!2476637 (=> (not res!1048475) (not e!1571393))))

(assert (=> b!2476637 (= res!1048475 (dynLambda!12430 lambda!93401 (h!34338 (toList!1446 lt!884442))))))

(declare-fun b!2476638 () Bool)

(assert (=> b!2476638 (= e!1571393 (forall!5922 (t!210672 (toList!1446 lt!884442)) lambda!93401))))

(assert (= (and d!712318 (not res!1048474)) b!2476637))

(assert (= (and b!2476637 res!1048475) b!2476638))

(declare-fun b_lambda!75985 () Bool)

(assert (=> (not b_lambda!75985) (not b!2476637)))

(declare-fun m!2844635 () Bool)

(assert (=> b!2476637 m!2844635))

(declare-fun m!2844637 () Bool)

(assert (=> b!2476638 m!2844637))

(assert (=> b!2476566 d!712318))

(declare-fun b!2476657 () Bool)

(declare-fun e!1571410 () Bool)

(declare-fun contains!4941 (List!29036 K!5250) Bool)

(assert (=> b!2476657 (= e!1571410 (contains!4941 (keys!9215 lt!884446) key!7256))))

(declare-fun bm!151642 () Bool)

(declare-fun call!151647 () Bool)

(declare-fun e!1571406 () List!29036)

(assert (=> bm!151642 (= call!151647 (contains!4941 e!1571406 key!7256))))

(declare-fun c!394149 () Bool)

(declare-fun c!394150 () Bool)

(assert (=> bm!151642 (= c!394149 c!394150)))

(declare-fun b!2476658 () Bool)

(assert (=> b!2476658 (= e!1571406 (keys!9215 lt!884446))))

(declare-fun b!2476659 () Bool)

(assert (=> b!2476659 false))

(declare-fun lt!884518 () Unit!42301)

(declare-fun lt!884523 () Unit!42301)

(assert (=> b!2476659 (= lt!884518 lt!884523)))

(declare-fun containsKey!111 (List!29035 K!5250) Bool)

(assert (=> b!2476659 (containsKey!111 (toList!1445 lt!884446) key!7256)))

(declare-fun lemmaInGetKeysListThenContainsKey!13 (List!29035 K!5250) Unit!42301)

(assert (=> b!2476659 (= lt!884523 (lemmaInGetKeysListThenContainsKey!13 (toList!1445 lt!884446) key!7256))))

(declare-fun e!1571407 () Unit!42301)

(declare-fun Unit!42312 () Unit!42301)

(assert (=> b!2476659 (= e!1571407 Unit!42312)))

(declare-fun b!2476660 () Bool)

(declare-fun e!1571411 () Bool)

(assert (=> b!2476660 (= e!1571411 (not (contains!4941 (keys!9215 lt!884446) key!7256)))))

(declare-fun b!2476661 () Bool)

(declare-fun e!1571409 () Unit!42301)

(assert (=> b!2476661 (= e!1571409 e!1571407)))

(declare-fun c!394148 () Bool)

(assert (=> b!2476661 (= c!394148 call!151647)))

(declare-fun d!712320 () Bool)

(declare-fun e!1571408 () Bool)

(assert (=> d!712320 e!1571408))

(declare-fun res!1048484 () Bool)

(assert (=> d!712320 (=> res!1048484 e!1571408)))

(assert (=> d!712320 (= res!1048484 e!1571411)))

(declare-fun res!1048483 () Bool)

(assert (=> d!712320 (=> (not res!1048483) (not e!1571411))))

(declare-fun lt!884522 () Bool)

(assert (=> d!712320 (= res!1048483 (not lt!884522))))

(declare-fun lt!884517 () Bool)

(assert (=> d!712320 (= lt!884522 lt!884517)))

(declare-fun lt!884521 () Unit!42301)

(assert (=> d!712320 (= lt!884521 e!1571409)))

(assert (=> d!712320 (= c!394150 lt!884517)))

(assert (=> d!712320 (= lt!884517 (containsKey!111 (toList!1445 lt!884446) key!7256))))

(assert (=> d!712320 (= (contains!4937 lt!884446 key!7256) lt!884522)))

(declare-fun b!2476662 () Bool)

(declare-fun lt!884524 () Unit!42301)

(assert (=> b!2476662 (= e!1571409 lt!884524)))

(declare-fun lt!884519 () Unit!42301)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!77 (List!29035 K!5250) Unit!42301)

(assert (=> b!2476662 (= lt!884519 (lemmaContainsKeyImpliesGetValueByKeyDefined!77 (toList!1445 lt!884446) key!7256))))

(declare-datatypes ((Option!5718 0))(
  ( (None!5717) (Some!5717 (v!31203 V!5452)) )
))
(declare-fun isDefined!4539 (Option!5718) Bool)

(declare-fun getValueByKey!121 (List!29035 K!5250) Option!5718)

(assert (=> b!2476662 (isDefined!4539 (getValueByKey!121 (toList!1445 lt!884446) key!7256))))

(declare-fun lt!884520 () Unit!42301)

(assert (=> b!2476662 (= lt!884520 lt!884519)))

(declare-fun lemmaInListThenGetKeysListContains!13 (List!29035 K!5250) Unit!42301)

(assert (=> b!2476662 (= lt!884524 (lemmaInListThenGetKeysListContains!13 (toList!1445 lt!884446) key!7256))))

(assert (=> b!2476662 call!151647))

(declare-fun b!2476663 () Bool)

(declare-fun getKeysList!16 (List!29035) List!29036)

(assert (=> b!2476663 (= e!1571406 (getKeysList!16 (toList!1445 lt!884446)))))

(declare-fun b!2476664 () Bool)

(assert (=> b!2476664 (= e!1571408 e!1571410)))

(declare-fun res!1048482 () Bool)

(assert (=> b!2476664 (=> (not res!1048482) (not e!1571410))))

(assert (=> b!2476664 (= res!1048482 (isDefined!4539 (getValueByKey!121 (toList!1445 lt!884446) key!7256)))))

(declare-fun b!2476665 () Bool)

(declare-fun Unit!42313 () Unit!42301)

(assert (=> b!2476665 (= e!1571407 Unit!42313)))

(assert (= (and d!712320 c!394150) b!2476662))

(assert (= (and d!712320 (not c!394150)) b!2476661))

(assert (= (and b!2476661 c!394148) b!2476659))

(assert (= (and b!2476661 (not c!394148)) b!2476665))

(assert (= (or b!2476662 b!2476661) bm!151642))

(assert (= (and bm!151642 c!394149) b!2476663))

(assert (= (and bm!151642 (not c!394149)) b!2476658))

(assert (= (and d!712320 res!1048483) b!2476660))

(assert (= (and d!712320 (not res!1048484)) b!2476664))

(assert (= (and b!2476664 res!1048482) b!2476657))

(declare-fun m!2844639 () Bool)

(assert (=> bm!151642 m!2844639))

(declare-fun m!2844641 () Bool)

(assert (=> d!712320 m!2844641))

(declare-fun m!2844643 () Bool)

(assert (=> b!2476662 m!2844643))

(declare-fun m!2844645 () Bool)

(assert (=> b!2476662 m!2844645))

(assert (=> b!2476662 m!2844645))

(declare-fun m!2844647 () Bool)

(assert (=> b!2476662 m!2844647))

(declare-fun m!2844649 () Bool)

(assert (=> b!2476662 m!2844649))

(assert (=> b!2476659 m!2844641))

(declare-fun m!2844651 () Bool)

(assert (=> b!2476659 m!2844651))

(declare-fun m!2844653 () Bool)

(assert (=> b!2476660 m!2844653))

(assert (=> b!2476660 m!2844653))

(declare-fun m!2844655 () Bool)

(assert (=> b!2476660 m!2844655))

(assert (=> b!2476664 m!2844645))

(assert (=> b!2476664 m!2844645))

(assert (=> b!2476664 m!2844647))

(assert (=> b!2476658 m!2844653))

(assert (=> b!2476657 m!2844653))

(assert (=> b!2476657 m!2844653))

(assert (=> b!2476657 m!2844655))

(declare-fun m!2844657 () Bool)

(assert (=> b!2476663 m!2844657))

(assert (=> b!2476566 d!712320))

(declare-fun d!712322 () Bool)

(assert (=> d!712322 (allKeysSameHash!39 (removePairForKey!35 lt!884453 key!7256) lt!884445 (hashF!5107 (_2!16711 lt!884455)))))

(declare-fun lt!884527 () Unit!42301)

(declare-fun choose!14610 (List!29035 K!5250 (_ BitVec 64) Hashable!3176) Unit!42301)

(assert (=> d!712322 (= lt!884527 (choose!14610 lt!884453 key!7256 lt!884445 (hashF!5107 (_2!16711 lt!884455))))))

(assert (=> d!712322 (noDuplicateKeys!43 lt!884453)))

(assert (=> d!712322 (= (lemmaRemovePairForKeyPreservesHash!35 lt!884453 key!7256 lt!884445 (hashF!5107 (_2!16711 lt!884455))) lt!884527)))

(declare-fun bs!467068 () Bool)

(assert (= bs!467068 d!712322))

(assert (=> bs!467068 m!2844475))

(assert (=> bs!467068 m!2844475))

(assert (=> bs!467068 m!2844477))

(declare-fun m!2844659 () Bool)

(assert (=> bs!467068 m!2844659))

(assert (=> bs!467068 m!2844595))

(assert (=> b!2476566 d!712322))

(declare-fun d!712324 () Bool)

(declare-fun lt!884530 () ListMap!937)

(assert (=> d!712324 (invariantList!400 (toList!1445 lt!884530))))

(assert (=> d!712324 (= lt!884530 (extractMap!135 (toList!1446 (map!6014 (v!31197 (underlying!6740 (ite c!394127 (_2!16709 lt!884458) thiss!47892)))))))))

(assert (=> d!712324 (valid!2469 (ite c!394127 (_2!16709 lt!884458) thiss!47892))))

(assert (=> d!712324 (= (map!6015 (ite c!394127 (_2!16709 lt!884458) thiss!47892)) lt!884530)))

(declare-fun bs!467069 () Bool)

(assert (= bs!467069 d!712324))

(declare-fun m!2844661 () Bool)

(assert (=> bs!467069 m!2844661))

(declare-fun m!2844663 () Bool)

(assert (=> bs!467069 m!2844663))

(declare-fun m!2844665 () Bool)

(assert (=> bs!467069 m!2844665))

(declare-fun m!2844667 () Bool)

(assert (=> bs!467069 m!2844667))

(assert (=> bm!151632 d!712324))

(declare-fun bs!467070 () Bool)

(declare-fun b!2476693 () Bool)

(assert (= bs!467070 (and b!2476693 b!2476570)))

(declare-fun lambda!93426 () Int)

(assert (=> bs!467070 (= lambda!93426 lambda!93401)))

(declare-fun bs!467071 () Bool)

(assert (= bs!467071 (and b!2476693 d!712298)))

(assert (=> bs!467071 (= lambda!93426 lambda!93413)))

(declare-fun bs!467072 () Bool)

(assert (= bs!467072 (and b!2476693 d!712308)))

(assert (=> bs!467072 (= lambda!93426 lambda!93422)))

(declare-fun bs!467073 () Bool)

(assert (= bs!467073 (and b!2476693 d!712296)))

(assert (=> bs!467073 (not (= lambda!93426 lambda!93410))))

(declare-fun bs!467074 () Bool)

(assert (= bs!467074 (and b!2476693 d!712304)))

(assert (=> bs!467074 (= lambda!93426 lambda!93421)))

(declare-fun bs!467075 () Bool)

(assert (= bs!467075 (and b!2476693 d!712300)))

(assert (=> bs!467075 (not (= lambda!93426 lambda!93416))))

(declare-fun bs!467076 () Bool)

(assert (= bs!467076 (and b!2476693 d!712286)))

(assert (=> bs!467076 (= lambda!93426 lambda!93404)))

(declare-fun b!2476688 () Bool)

(declare-fun e!1571430 () Unit!42301)

(declare-fun lt!884586 () Unit!42301)

(assert (=> b!2476688 (= e!1571430 lt!884586)))

(declare-fun lt!884578 () ListLongMap!383)

(declare-fun call!151662 () ListLongMap!383)

(assert (=> b!2476688 (= lt!884578 call!151662)))

(declare-fun lemmaInGenericMapThenInLongMap!54 (ListLongMap!383 K!5250 Hashable!3176) Unit!42301)

(assert (=> b!2476688 (= lt!884586 (lemmaInGenericMapThenInLongMap!54 lt!884578 key!7256 (hashF!5107 thiss!47892)))))

(declare-fun res!1048493 () Bool)

(declare-fun call!151661 () Bool)

(assert (=> b!2476688 (= res!1048493 call!151661)))

(declare-fun e!1571427 () Bool)

(assert (=> b!2476688 (=> (not res!1048493) (not e!1571427))))

(assert (=> b!2476688 e!1571427))

(declare-fun bm!151655 () Bool)

(assert (=> bm!151655 (= call!151662 (map!6014 (v!31197 (underlying!6740 thiss!47892))))))

(declare-fun c!394159 () Bool)

(declare-fun bm!151656 () Bool)

(declare-fun call!151665 () (_ BitVec 64))

(declare-fun call!151663 () List!29035)

(declare-fun apply!6829 (ListLongMap!383 (_ BitVec 64)) List!29035)

(assert (=> bm!151656 (= call!151663 (apply!6829 (ite c!394159 lt!884578 call!151662) call!151665))))

(declare-fun b!2476689 () Bool)

(declare-fun e!1571431 () Bool)

(declare-fun call!151660 () Bool)

(assert (=> b!2476689 (= e!1571431 call!151660)))

(declare-fun b!2476690 () Bool)

(assert (=> b!2476690 (= e!1571427 call!151660)))

(declare-fun bm!151658 () Bool)

(assert (=> bm!151658 (= call!151661 (contains!4939 (ite c!394159 lt!884578 call!151662) call!151665))))

(declare-fun b!2476691 () Bool)

(declare-fun e!1571429 () Unit!42301)

(declare-fun Unit!42314 () Unit!42301)

(assert (=> b!2476691 (= e!1571429 Unit!42314)))

(declare-fun b!2476692 () Bool)

(assert (=> b!2476692 false))

(declare-fun lt!884584 () Unit!42301)

(declare-fun lt!884587 () Unit!42301)

(assert (=> b!2476692 (= lt!884584 lt!884587)))

(declare-fun lt!884589 () List!29037)

(declare-fun lt!884574 () (_ BitVec 64))

(declare-fun lt!884588 () List!29035)

(assert (=> b!2476692 (contains!4940 lt!884589 (tuple2!28339 lt!884574 lt!884588))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!55 (List!29037 (_ BitVec 64) List!29035) Unit!42301)

(assert (=> b!2476692 (= lt!884587 (lemmaGetValueByKeyImpliesContainsTuple!55 lt!884589 lt!884574 lt!884588))))

(assert (=> b!2476692 (= lt!884588 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884574))))

(assert (=> b!2476692 (= lt!884589 (toList!1446 (map!6014 (v!31197 (underlying!6740 thiss!47892)))))))

(declare-fun lt!884583 () Unit!42301)

(declare-fun lt!884571 () Unit!42301)

(assert (=> b!2476692 (= lt!884583 lt!884571)))

(declare-fun lt!884585 () List!29037)

(declare-fun isDefined!4540 (Option!5717) Bool)

(assert (=> b!2476692 (isDefined!4540 (getValueByKey!120 lt!884585 lt!884574))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!78 (List!29037 (_ BitVec 64)) Unit!42301)

(assert (=> b!2476692 (= lt!884571 (lemmaContainsKeyImpliesGetValueByKeyDefined!78 lt!884585 lt!884574))))

(assert (=> b!2476692 (= lt!884585 (toList!1446 (map!6014 (v!31197 (underlying!6740 thiss!47892)))))))

(declare-fun lt!884575 () Unit!42301)

(declare-fun lt!884590 () Unit!42301)

(assert (=> b!2476692 (= lt!884575 lt!884590)))

(declare-fun lt!884580 () List!29037)

(declare-fun containsKey!112 (List!29037 (_ BitVec 64)) Bool)

(assert (=> b!2476692 (containsKey!112 lt!884580 lt!884574)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!55 (List!29037 (_ BitVec 64)) Unit!42301)

(assert (=> b!2476692 (= lt!884590 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!55 lt!884580 lt!884574))))

(assert (=> b!2476692 (= lt!884580 (toList!1446 (map!6014 (v!31197 (underlying!6740 thiss!47892)))))))

(declare-fun Unit!42315 () Unit!42301)

(assert (=> b!2476692 (= e!1571429 Unit!42315)))

(declare-fun e!1571426 () Unit!42301)

(assert (=> b!2476693 (= e!1571426 (forallContained!804 (toList!1446 (map!6014 (v!31197 (underlying!6740 thiss!47892)))) lambda!93426 (tuple2!28339 lt!884574 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884574))))))

(declare-fun c!394161 () Bool)

(assert (=> b!2476693 (= c!394161 (not (contains!4940 (toList!1446 (map!6014 (v!31197 (underlying!6740 thiss!47892)))) (tuple2!28339 lt!884574 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884574)))))))

(declare-fun lt!884576 () Unit!42301)

(assert (=> b!2476693 (= lt!884576 e!1571429)))

(declare-fun b!2476694 () Bool)

(assert (=> b!2476694 false))

(declare-fun lt!884581 () Unit!42301)

(declare-fun lt!884579 () Unit!42301)

(assert (=> b!2476694 (= lt!884581 lt!884579)))

(declare-fun lt!884577 () ListLongMap!383)

(assert (=> b!2476694 (contains!4937 (extractMap!135 (toList!1446 lt!884577)) key!7256)))

(declare-fun lemmaInLongMapThenInGenericMap!54 (ListLongMap!383 K!5250 Hashable!3176) Unit!42301)

(assert (=> b!2476694 (= lt!884579 (lemmaInLongMapThenInGenericMap!54 lt!884577 key!7256 (hashF!5107 thiss!47892)))))

(assert (=> b!2476694 (= lt!884577 call!151662)))

(declare-fun e!1571428 () Unit!42301)

(declare-fun Unit!42316 () Unit!42301)

(assert (=> b!2476694 (= e!1571428 Unit!42316)))

(declare-fun b!2476695 () Bool)

(assert (=> b!2476695 (= e!1571430 e!1571428)))

(declare-fun res!1048491 () Bool)

(assert (=> b!2476695 (= res!1048491 call!151661)))

(assert (=> b!2476695 (=> (not res!1048491) (not e!1571431))))

(declare-fun c!394160 () Bool)

(assert (=> b!2476695 (= c!394160 e!1571431)))

(declare-fun b!2476696 () Bool)

(declare-fun e!1571432 () Bool)

(declare-datatypes ((Option!5719 0))(
  ( (None!5718) (Some!5718 (v!31204 tuple2!28334)) )
))
(declare-fun isDefined!4541 (Option!5719) Bool)

(declare-fun getPair!54 (List!29035 K!5250) Option!5719)

(assert (=> b!2476696 (= e!1571432 (isDefined!4541 (getPair!54 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884574) key!7256)))))

(declare-fun d!712326 () Bool)

(declare-fun lt!884572 () Bool)

(assert (=> d!712326 (= lt!884572 (contains!4937 (map!6015 thiss!47892) key!7256))))

(assert (=> d!712326 (= lt!884572 e!1571432)))

(declare-fun res!1048492 () Bool)

(assert (=> d!712326 (=> (not res!1048492) (not e!1571432))))

(declare-fun contains!4942 (MutLongMap!3266 (_ BitVec 64)) Bool)

(assert (=> d!712326 (= res!1048492 (contains!4942 (v!31197 (underlying!6740 thiss!47892)) lt!884574))))

(declare-fun lt!884582 () Unit!42301)

(assert (=> d!712326 (= lt!884582 e!1571430)))

(assert (=> d!712326 (= c!394159 (contains!4937 (extractMap!135 (toList!1446 (map!6014 (v!31197 (underlying!6740 thiss!47892))))) key!7256))))

(declare-fun lt!884573 () Unit!42301)

(assert (=> d!712326 (= lt!884573 e!1571426)))

(declare-fun c!394162 () Bool)

(assert (=> d!712326 (= c!394162 (contains!4942 (v!31197 (underlying!6740 thiss!47892)) lt!884574))))

(assert (=> d!712326 (= lt!884574 (hash!604 (hashF!5107 thiss!47892) key!7256))))

(assert (=> d!712326 (valid!2469 thiss!47892)))

(assert (=> d!712326 (= (contains!4938 thiss!47892 key!7256) lt!884572)))

(declare-fun bm!151657 () Bool)

(declare-fun call!151664 () Option!5719)

(assert (=> bm!151657 (= call!151664 (getPair!54 call!151663 key!7256))))

(declare-fun b!2476697 () Bool)

(declare-fun Unit!42317 () Unit!42301)

(assert (=> b!2476697 (= e!1571426 Unit!42317)))

(declare-fun bm!151659 () Bool)

(assert (=> bm!151659 (= call!151660 (isDefined!4541 call!151664))))

(declare-fun b!2476698 () Bool)

(declare-fun Unit!42318 () Unit!42301)

(assert (=> b!2476698 (= e!1571428 Unit!42318)))

(declare-fun bm!151660 () Bool)

(assert (=> bm!151660 (= call!151665 (hash!604 (hashF!5107 thiss!47892) key!7256))))

(assert (= (and d!712326 c!394162) b!2476693))

(assert (= (and d!712326 (not c!394162)) b!2476697))

(assert (= (and b!2476693 c!394161) b!2476692))

(assert (= (and b!2476693 (not c!394161)) b!2476691))

(assert (= (and d!712326 c!394159) b!2476688))

(assert (= (and d!712326 (not c!394159)) b!2476695))

(assert (= (and b!2476688 res!1048493) b!2476690))

(assert (= (and b!2476695 res!1048491) b!2476689))

(assert (= (and b!2476695 c!394160) b!2476694))

(assert (= (and b!2476695 (not c!394160)) b!2476698))

(assert (= (or b!2476688 b!2476690 b!2476695 b!2476689) bm!151660))

(assert (= (or b!2476688 b!2476695 b!2476689 b!2476694) bm!151655))

(assert (= (or b!2476690 b!2476689) bm!151656))

(assert (= (or b!2476688 b!2476695) bm!151658))

(assert (= (or b!2476690 b!2476689) bm!151657))

(assert (= (or b!2476690 b!2476689) bm!151659))

(assert (= (and d!712326 res!1048492) b!2476696))

(declare-fun m!2844669 () Bool)

(assert (=> b!2476694 m!2844669))

(assert (=> b!2476694 m!2844669))

(declare-fun m!2844671 () Bool)

(assert (=> b!2476694 m!2844671))

(declare-fun m!2844673 () Bool)

(assert (=> b!2476694 m!2844673))

(declare-fun m!2844675 () Bool)

(assert (=> b!2476696 m!2844675))

(assert (=> b!2476696 m!2844675))

(declare-fun m!2844677 () Bool)

(assert (=> b!2476696 m!2844677))

(assert (=> b!2476696 m!2844677))

(declare-fun m!2844679 () Bool)

(assert (=> b!2476696 m!2844679))

(assert (=> b!2476692 m!2844513))

(declare-fun m!2844681 () Bool)

(assert (=> b!2476692 m!2844681))

(assert (=> b!2476692 m!2844675))

(assert (=> b!2476692 m!2844681))

(declare-fun m!2844683 () Bool)

(assert (=> b!2476692 m!2844683))

(declare-fun m!2844685 () Bool)

(assert (=> b!2476692 m!2844685))

(declare-fun m!2844687 () Bool)

(assert (=> b!2476692 m!2844687))

(declare-fun m!2844689 () Bool)

(assert (=> b!2476692 m!2844689))

(declare-fun m!2844691 () Bool)

(assert (=> b!2476692 m!2844691))

(declare-fun m!2844693 () Bool)

(assert (=> b!2476692 m!2844693))

(assert (=> bm!151660 m!2844521))

(declare-fun m!2844695 () Bool)

(assert (=> bm!151656 m!2844695))

(declare-fun m!2844697 () Bool)

(assert (=> bm!151658 m!2844697))

(assert (=> bm!151655 m!2844513))

(declare-fun m!2844699 () Bool)

(assert (=> bm!151657 m!2844699))

(assert (=> d!712326 m!2844513))

(assert (=> d!712326 m!2844511))

(declare-fun m!2844701 () Bool)

(assert (=> d!712326 m!2844701))

(assert (=> d!712326 m!2844521))

(assert (=> d!712326 m!2844529))

(assert (=> d!712326 m!2844701))

(declare-fun m!2844703 () Bool)

(assert (=> d!712326 m!2844703))

(declare-fun m!2844705 () Bool)

(assert (=> d!712326 m!2844705))

(assert (=> d!712326 m!2844529))

(declare-fun m!2844707 () Bool)

(assert (=> d!712326 m!2844707))

(declare-fun m!2844709 () Bool)

(assert (=> b!2476688 m!2844709))

(declare-fun m!2844711 () Bool)

(assert (=> bm!151659 m!2844711))

(assert (=> b!2476693 m!2844513))

(assert (=> b!2476693 m!2844675))

(declare-fun m!2844713 () Bool)

(assert (=> b!2476693 m!2844713))

(declare-fun m!2844715 () Bool)

(assert (=> b!2476693 m!2844715))

(assert (=> d!712278 d!712326))

(declare-fun bs!467077 () Bool)

(declare-fun b!2476703 () Bool)

(assert (= bs!467077 (and b!2476703 b!2476570)))

(declare-fun lambda!93429 () Int)

(assert (=> bs!467077 (= lambda!93429 lambda!93401)))

(declare-fun bs!467078 () Bool)

(assert (= bs!467078 (and b!2476703 d!712298)))

(assert (=> bs!467078 (= lambda!93429 lambda!93413)))

(declare-fun bs!467079 () Bool)

(assert (= bs!467079 (and b!2476703 d!712308)))

(assert (=> bs!467079 (= lambda!93429 lambda!93422)))

(declare-fun bs!467080 () Bool)

(assert (= bs!467080 (and b!2476703 d!712296)))

(assert (=> bs!467080 (not (= lambda!93429 lambda!93410))))

(declare-fun bs!467081 () Bool)

(assert (= bs!467081 (and b!2476703 b!2476693)))

(assert (=> bs!467081 (= lambda!93429 lambda!93426)))

(declare-fun bs!467082 () Bool)

(assert (= bs!467082 (and b!2476703 d!712304)))

(assert (=> bs!467082 (= lambda!93429 lambda!93421)))

(declare-fun bs!467083 () Bool)

(assert (= bs!467083 (and b!2476703 d!712300)))

(assert (=> bs!467083 (not (= lambda!93429 lambda!93416))))

(declare-fun bs!467084 () Bool)

(assert (= bs!467084 (and b!2476703 d!712286)))

(assert (=> bs!467084 (= lambda!93429 lambda!93404)))

(declare-fun d!712328 () Bool)

(declare-fun res!1048498 () Bool)

(declare-fun e!1571435 () Bool)

(assert (=> d!712328 (=> (not res!1048498) (not e!1571435))))

(declare-fun valid!2470 (MutLongMap!3266) Bool)

(assert (=> d!712328 (= res!1048498 (valid!2470 (v!31197 (underlying!6740 thiss!47892))))))

(assert (=> d!712328 (= (valid!2469 thiss!47892) e!1571435)))

(declare-fun res!1048499 () Bool)

(assert (=> b!2476703 (=> (not res!1048499) (not e!1571435))))

(assert (=> b!2476703 (= res!1048499 (forall!5922 (toList!1446 (map!6014 (v!31197 (underlying!6740 thiss!47892)))) lambda!93429))))

(declare-fun b!2476704 () Bool)

(assert (=> b!2476704 (= e!1571435 (allKeysSameHashInMap!125 (map!6014 (v!31197 (underlying!6740 thiss!47892))) (hashF!5107 thiss!47892)))))

(assert (= (and d!712328 res!1048498) b!2476703))

(assert (= (and b!2476703 res!1048499) b!2476704))

(declare-fun m!2844717 () Bool)

(assert (=> d!712328 m!2844717))

(assert (=> b!2476703 m!2844513))

(declare-fun m!2844719 () Bool)

(assert (=> b!2476703 m!2844719))

(assert (=> b!2476704 m!2844513))

(assert (=> b!2476704 m!2844513))

(declare-fun m!2844721 () Bool)

(assert (=> b!2476704 m!2844721))

(assert (=> d!712278 d!712328))

(declare-fun d!712330 () Bool)

(declare-fun c!394165 () Bool)

(assert (=> d!712330 (= c!394165 ((_ is Nil!28935) (toList!1445 (ite c!394111 call!151620 call!151618))))))

(declare-fun e!1571438 () (InoxSet tuple2!28334))

(assert (=> d!712330 (= (content!3972 (toList!1445 (ite c!394111 call!151620 call!151618))) e!1571438)))

(declare-fun b!2476709 () Bool)

(assert (=> b!2476709 (= e!1571438 ((as const (Array tuple2!28334 Bool)) false))))

(declare-fun b!2476710 () Bool)

(assert (=> b!2476710 (= e!1571438 ((_ map or) (store ((as const (Array tuple2!28334 Bool)) false) (h!34336 (toList!1445 (ite c!394111 call!151620 call!151618))) true) (content!3972 (t!210670 (toList!1445 (ite c!394111 call!151620 call!151618))))))))

(assert (= (and d!712330 c!394165) b!2476709))

(assert (= (and d!712330 (not c!394165)) b!2476710))

(declare-fun m!2844723 () Bool)

(assert (=> b!2476710 m!2844723))

(declare-fun m!2844725 () Bool)

(assert (=> b!2476710 m!2844725))

(assert (=> d!712282 d!712330))

(declare-fun d!712332 () Bool)

(declare-fun c!394166 () Bool)

(assert (=> d!712332 (= c!394166 ((_ is Nil!28935) (toList!1445 e!1571324)))))

(declare-fun e!1571439 () (InoxSet tuple2!28334))

(assert (=> d!712332 (= (content!3972 (toList!1445 e!1571324)) e!1571439)))

(declare-fun b!2476711 () Bool)

(assert (=> b!2476711 (= e!1571439 ((as const (Array tuple2!28334 Bool)) false))))

(declare-fun b!2476712 () Bool)

(assert (=> b!2476712 (= e!1571439 ((_ map or) (store ((as const (Array tuple2!28334 Bool)) false) (h!34336 (toList!1445 e!1571324)) true) (content!3972 (t!210670 (toList!1445 e!1571324)))))))

(assert (= (and d!712332 c!394166) b!2476711))

(assert (= (and d!712332 (not c!394166)) b!2476712))

(declare-fun m!2844727 () Bool)

(assert (=> b!2476712 m!2844727))

(declare-fun m!2844729 () Bool)

(assert (=> b!2476712 m!2844729))

(assert (=> d!712282 d!712332))

(declare-fun b!2476713 () Bool)

(declare-fun e!1571444 () Bool)

(assert (=> b!2476713 (= e!1571444 (contains!4941 (keys!9215 lt!884378) key!7256))))

(declare-fun bm!151661 () Bool)

(declare-fun call!151666 () Bool)

(declare-fun e!1571440 () List!29036)

(assert (=> bm!151661 (= call!151666 (contains!4941 e!1571440 key!7256))))

(declare-fun c!394168 () Bool)

(declare-fun c!394169 () Bool)

(assert (=> bm!151661 (= c!394168 c!394169)))

(declare-fun b!2476714 () Bool)

(assert (=> b!2476714 (= e!1571440 (keys!9215 lt!884378))))

(declare-fun b!2476715 () Bool)

(assert (=> b!2476715 false))

(declare-fun lt!884592 () Unit!42301)

(declare-fun lt!884597 () Unit!42301)

(assert (=> b!2476715 (= lt!884592 lt!884597)))

(assert (=> b!2476715 (containsKey!111 (toList!1445 lt!884378) key!7256)))

(assert (=> b!2476715 (= lt!884597 (lemmaInGetKeysListThenContainsKey!13 (toList!1445 lt!884378) key!7256))))

(declare-fun e!1571441 () Unit!42301)

(declare-fun Unit!42319 () Unit!42301)

(assert (=> b!2476715 (= e!1571441 Unit!42319)))

(declare-fun b!2476716 () Bool)

(declare-fun e!1571445 () Bool)

(assert (=> b!2476716 (= e!1571445 (not (contains!4941 (keys!9215 lt!884378) key!7256)))))

(declare-fun b!2476717 () Bool)

(declare-fun e!1571443 () Unit!42301)

(assert (=> b!2476717 (= e!1571443 e!1571441)))

(declare-fun c!394167 () Bool)

(assert (=> b!2476717 (= c!394167 call!151666)))

(declare-fun d!712334 () Bool)

(declare-fun e!1571442 () Bool)

(assert (=> d!712334 e!1571442))

(declare-fun res!1048502 () Bool)

(assert (=> d!712334 (=> res!1048502 e!1571442)))

(assert (=> d!712334 (= res!1048502 e!1571445)))

(declare-fun res!1048501 () Bool)

(assert (=> d!712334 (=> (not res!1048501) (not e!1571445))))

(declare-fun lt!884596 () Bool)

(assert (=> d!712334 (= res!1048501 (not lt!884596))))

(declare-fun lt!884591 () Bool)

(assert (=> d!712334 (= lt!884596 lt!884591)))

(declare-fun lt!884595 () Unit!42301)

(assert (=> d!712334 (= lt!884595 e!1571443)))

(assert (=> d!712334 (= c!394169 lt!884591)))

(assert (=> d!712334 (= lt!884591 (containsKey!111 (toList!1445 lt!884378) key!7256))))

(assert (=> d!712334 (= (contains!4937 lt!884378 key!7256) lt!884596)))

(declare-fun b!2476718 () Bool)

(declare-fun lt!884598 () Unit!42301)

(assert (=> b!2476718 (= e!1571443 lt!884598)))

(declare-fun lt!884593 () Unit!42301)

(assert (=> b!2476718 (= lt!884593 (lemmaContainsKeyImpliesGetValueByKeyDefined!77 (toList!1445 lt!884378) key!7256))))

(assert (=> b!2476718 (isDefined!4539 (getValueByKey!121 (toList!1445 lt!884378) key!7256))))

(declare-fun lt!884594 () Unit!42301)

(assert (=> b!2476718 (= lt!884594 lt!884593)))

(assert (=> b!2476718 (= lt!884598 (lemmaInListThenGetKeysListContains!13 (toList!1445 lt!884378) key!7256))))

(assert (=> b!2476718 call!151666))

(declare-fun b!2476719 () Bool)

(assert (=> b!2476719 (= e!1571440 (getKeysList!16 (toList!1445 lt!884378)))))

(declare-fun b!2476720 () Bool)

(assert (=> b!2476720 (= e!1571442 e!1571444)))

(declare-fun res!1048500 () Bool)

(assert (=> b!2476720 (=> (not res!1048500) (not e!1571444))))

(assert (=> b!2476720 (= res!1048500 (isDefined!4539 (getValueByKey!121 (toList!1445 lt!884378) key!7256)))))

(declare-fun b!2476721 () Bool)

(declare-fun Unit!42320 () Unit!42301)

(assert (=> b!2476721 (= e!1571441 Unit!42320)))

(assert (= (and d!712334 c!394169) b!2476718))

(assert (= (and d!712334 (not c!394169)) b!2476717))

(assert (= (and b!2476717 c!394167) b!2476715))

(assert (= (and b!2476717 (not c!394167)) b!2476721))

(assert (= (or b!2476718 b!2476717) bm!151661))

(assert (= (and bm!151661 c!394168) b!2476719))

(assert (= (and bm!151661 (not c!394168)) b!2476714))

(assert (= (and d!712334 res!1048501) b!2476716))

(assert (= (and d!712334 (not res!1048502)) b!2476720))

(assert (= (and b!2476720 res!1048500) b!2476713))

(declare-fun m!2844731 () Bool)

(assert (=> bm!151661 m!2844731))

(declare-fun m!2844733 () Bool)

(assert (=> d!712334 m!2844733))

(declare-fun m!2844735 () Bool)

(assert (=> b!2476718 m!2844735))

(declare-fun m!2844737 () Bool)

(assert (=> b!2476718 m!2844737))

(assert (=> b!2476718 m!2844737))

(declare-fun m!2844739 () Bool)

(assert (=> b!2476718 m!2844739))

(declare-fun m!2844741 () Bool)

(assert (=> b!2476718 m!2844741))

(assert (=> b!2476715 m!2844733))

(declare-fun m!2844743 () Bool)

(assert (=> b!2476715 m!2844743))

(assert (=> b!2476716 m!2844451))

(assert (=> b!2476716 m!2844451))

(declare-fun m!2844745 () Bool)

(assert (=> b!2476716 m!2844745))

(assert (=> b!2476720 m!2844737))

(assert (=> b!2476720 m!2844737))

(assert (=> b!2476720 m!2844739))

(assert (=> b!2476714 m!2844451))

(assert (=> b!2476713 m!2844451))

(assert (=> b!2476713 m!2844451))

(assert (=> b!2476713 m!2844745))

(declare-fun m!2844747 () Bool)

(assert (=> b!2476719 m!2844747))

(assert (=> d!712270 d!712334))

(declare-fun b!2476760 () Bool)

(declare-fun e!1571471 () List!29035)

(assert (=> b!2476760 (= e!1571471 (t!210670 (toList!1445 call!151618)))))

(declare-fun b!2476761 () Bool)

(declare-fun e!1571466 () Bool)

(declare-fun call!151683 () (InoxSet tuple2!28334))

(declare-fun call!151682 () (InoxSet tuple2!28334))

(assert (=> b!2476761 (= e!1571466 (= call!151683 call!151682))))

(declare-fun b!2476762 () Bool)

(declare-fun e!1571467 () Unit!42301)

(declare-fun Unit!42321 () Unit!42301)

(assert (=> b!2476762 (= e!1571467 Unit!42321)))

(declare-fun b!2476763 () Bool)

(declare-fun get!8914 (Option!5718) V!5452)

(assert (=> b!2476763 (= e!1571466 (= call!151682 ((_ map and) call!151683 ((_ map not) (store ((as const (Array tuple2!28334 Bool)) false) (tuple2!28335 key!7256 (get!8914 (getValueByKey!121 (toList!1445 call!151618) key!7256))) true)))))))

(assert (=> b!2476763 (containsKey!111 (toList!1445 call!151618) key!7256)))

(declare-fun lt!884643 () Unit!42301)

(assert (=> b!2476763 (= lt!884643 (lemmaContainsKeyImpliesGetValueByKeyDefined!77 (toList!1445 call!151618) key!7256))))

(assert (=> b!2476763 (isDefined!4539 (getValueByKey!121 (toList!1445 call!151618) key!7256))))

(declare-fun lt!884651 () Unit!42301)

(assert (=> b!2476763 (= lt!884651 lt!884643)))

(declare-fun call!151681 () (InoxSet tuple2!28334))

(declare-fun b!2476764 () Bool)

(declare-fun call!151684 () (InoxSet tuple2!28334))

(assert (=> b!2476764 (= call!151681 ((_ map and) call!151684 ((_ map not) (store ((as const (Array tuple2!28334 Bool)) false) (tuple2!28335 key!7256 (get!8914 (getValueByKey!121 (toList!1445 call!151618) key!7256))) true))))))

(declare-fun lt!884652 () Unit!42301)

(declare-fun e!1571474 () Unit!42301)

(assert (=> b!2476764 (= lt!884652 e!1571474)))

(declare-fun c!394192 () Bool)

(declare-fun contains!4943 (List!29035 tuple2!28334) Bool)

(assert (=> b!2476764 (= c!394192 (contains!4943 (t!210670 (toList!1445 call!151618)) (tuple2!28335 key!7256 (get!8914 (getValueByKey!121 (toList!1445 call!151618) key!7256)))))))

(declare-fun e!1571468 () Unit!42301)

(declare-fun Unit!42322 () Unit!42301)

(assert (=> b!2476764 (= e!1571468 Unit!42322)))

(declare-fun b!2476765 () Bool)

(declare-fun e!1571470 () List!29035)

(assert (=> b!2476765 (= e!1571470 (t!210670 (toList!1445 call!151618)))))

(declare-fun c!394190 () Bool)

(declare-fun call!151680 () Bool)

(assert (=> b!2476765 (= c!394190 call!151680)))

(declare-fun lt!884646 () Unit!42301)

(assert (=> b!2476765 (= lt!884646 e!1571468)))

(declare-fun b!2476766 () Bool)

(declare-fun Unit!42323 () Unit!42301)

(assert (=> b!2476766 (= e!1571467 Unit!42323)))

(declare-fun lt!884645 () Unit!42301)

(assert (=> b!2476766 (= lt!884645 (lemmaInGetKeysListThenContainsKey!13 (t!210670 (toList!1445 call!151618)) (_1!16708 (h!34336 (toList!1445 call!151618)))))))

(assert (=> b!2476766 call!151680))

(declare-fun lt!884648 () Unit!42301)

(assert (=> b!2476766 (= lt!884648 lt!884645)))

(assert (=> b!2476766 false))

(declare-fun b!2476767 () Bool)

(declare-fun e!1571473 () Unit!42301)

(declare-fun Unit!42324 () Unit!42301)

(assert (=> b!2476767 (= e!1571473 Unit!42324)))

(declare-fun lt!884639 () List!29035)

(assert (=> b!2476767 (= lt!884639 (removePresrvNoDuplicatedKeys!21 (t!210670 (toList!1445 call!151618)) key!7256))))

(declare-fun lt!884642 () Unit!42301)

(assert (=> b!2476767 (= lt!884642 (lemmaInListThenGetKeysListContains!13 lt!884639 (_1!16708 (h!34336 (toList!1445 call!151618)))))))

(assert (=> b!2476767 (contains!4941 (getKeysList!16 lt!884639) (_1!16708 (h!34336 (toList!1445 call!151618))))))

(declare-fun lt!884640 () Unit!42301)

(assert (=> b!2476767 (= lt!884640 lt!884642)))

(assert (=> b!2476767 false))

(declare-fun b!2476768 () Bool)

(declare-fun lt!884649 () Unit!42301)

(assert (=> b!2476768 (= lt!884649 e!1571473)))

(declare-fun c!394186 () Bool)

(declare-fun call!151679 () Bool)

(assert (=> b!2476768 (= c!394186 call!151679)))

(declare-fun lt!884644 () Unit!42301)

(assert (=> b!2476768 (= lt!884644 e!1571467)))

(declare-fun c!394189 () Bool)

(assert (=> b!2476768 (= c!394189 (contains!4941 (getKeysList!16 (t!210670 (toList!1445 call!151618))) (_1!16708 (h!34336 (toList!1445 call!151618)))))))

(declare-fun lt!884638 () List!29035)

(declare-fun $colon$colon!538 (List!29035 tuple2!28334) List!29035)

(assert (=> b!2476768 (= lt!884638 ($colon$colon!538 (removePresrvNoDuplicatedKeys!21 (t!210670 (toList!1445 call!151618)) key!7256) (h!34336 (toList!1445 call!151618))))))

(declare-fun e!1571472 () List!29035)

(assert (=> b!2476768 (= e!1571472 lt!884638)))

(declare-fun b!2476769 () Bool)

(declare-fun e!1571469 () Bool)

(assert (=> b!2476769 (= e!1571469 e!1571466)))

(declare-fun c!394187 () Bool)

(assert (=> b!2476769 (= c!394187 (containsKey!111 (toList!1445 call!151618) key!7256))))

(declare-fun b!2476770 () Bool)

(declare-fun Unit!42325 () Unit!42301)

(assert (=> b!2476770 (= e!1571474 Unit!42325)))

(declare-fun lt!884641 () V!5452)

(assert (=> b!2476770 (= lt!884641 (get!8914 (getValueByKey!121 (toList!1445 call!151618) key!7256)))))

(declare-fun lt!884637 () K!5250)

(assert (=> b!2476770 (= lt!884637 key!7256)))

(declare-fun lt!884650 () K!5250)

(assert (=> b!2476770 (= lt!884650 key!7256)))

(declare-fun lt!884647 () Unit!42301)

(declare-fun lemmaContainsTupleThenContainsKey!6 (List!29035 K!5250 V!5452) Unit!42301)

(assert (=> b!2476770 (= lt!884647 (lemmaContainsTupleThenContainsKey!6 (t!210670 (toList!1445 call!151618)) lt!884637 (get!8914 (getValueByKey!121 (toList!1445 call!151618) key!7256))))))

(assert (=> b!2476770 call!151679))

(declare-fun lt!884635 () Unit!42301)

(assert (=> b!2476770 (= lt!884635 lt!884647)))

(assert (=> b!2476770 false))

(declare-fun c!394191 () Bool)

(declare-fun bm!151674 () Bool)

(assert (=> bm!151674 (= call!151680 (containsKey!111 (ite c!394191 (toList!1445 call!151618) (t!210670 (toList!1445 call!151618))) (ite c!394191 key!7256 (_1!16708 (h!34336 (toList!1445 call!151618))))))))

(declare-fun b!2476771 () Bool)

(declare-fun Unit!42326 () Unit!42301)

(assert (=> b!2476771 (= e!1571474 Unit!42326)))

(declare-fun b!2476772 () Bool)

(declare-fun res!1048509 () Bool)

(assert (=> b!2476772 (=> (not res!1048509) (not e!1571469))))

(declare-fun lt!884636 () List!29035)

(assert (=> b!2476772 (= res!1048509 (= (content!3971 (getKeysList!16 lt!884636)) ((_ map and) (content!3971 (getKeysList!16 (toList!1445 call!151618))) ((_ map not) (store ((as const (Array K!5250 Bool)) false) key!7256 true)))))))

(declare-fun bm!151675 () Bool)

(assert (=> bm!151675 (= call!151683 (content!3972 (ite c!394187 (toList!1445 call!151618) lt!884636)))))

(declare-fun b!2476773 () Bool)

(assert (=> b!2476773 (= e!1571471 (removePresrvNoDuplicatedKeys!21 (t!210670 (toList!1445 call!151618)) key!7256))))

(declare-fun bm!151676 () Bool)

(assert (=> bm!151676 (= call!151679 (containsKey!111 e!1571471 (ite c!394191 lt!884637 (_1!16708 (h!34336 (toList!1445 call!151618))))))))

(declare-fun c!394188 () Bool)

(assert (=> bm!151676 (= c!394188 c!394191)))

(declare-fun bm!151677 () Bool)

(assert (=> bm!151677 (= call!151684 (content!3972 (ite c!394190 (toList!1445 call!151618) (t!210670 (toList!1445 call!151618)))))))

(declare-fun bm!151678 () Bool)

(assert (=> bm!151678 (= call!151682 (content!3972 (ite c!394187 lt!884636 (toList!1445 call!151618))))))

(declare-fun bm!151679 () Bool)

(assert (=> bm!151679 (= call!151681 (content!3972 (ite c!394190 (t!210670 (toList!1445 call!151618)) (toList!1445 call!151618))))))

(declare-fun d!712336 () Bool)

(assert (=> d!712336 e!1571469))

(declare-fun res!1048511 () Bool)

(assert (=> d!712336 (=> (not res!1048511) (not e!1571469))))

(assert (=> d!712336 (= res!1048511 (invariantList!400 lt!884636))))

(assert (=> d!712336 (= lt!884636 e!1571470)))

(assert (=> d!712336 (= c!394191 (and ((_ is Cons!28935) (toList!1445 call!151618)) (= (_1!16708 (h!34336 (toList!1445 call!151618))) key!7256)))))

(assert (=> d!712336 (invariantList!400 (toList!1445 call!151618))))

(assert (=> d!712336 (= (removePresrvNoDuplicatedKeys!21 (toList!1445 call!151618) key!7256) lt!884636)))

(declare-fun b!2476774 () Bool)

(assert (=> b!2476774 (= call!151684 call!151681)))

(declare-fun Unit!42327 () Unit!42301)

(assert (=> b!2476774 (= e!1571468 Unit!42327)))

(declare-fun b!2476775 () Bool)

(assert (=> b!2476775 (= e!1571472 Nil!28935)))

(declare-fun b!2476776 () Bool)

(assert (=> b!2476776 (= e!1571470 e!1571472)))

(declare-fun c!394193 () Bool)

(assert (=> b!2476776 (= c!394193 (and ((_ is Cons!28935) (toList!1445 call!151618)) (not (= (_1!16708 (h!34336 (toList!1445 call!151618))) key!7256))))))

(declare-fun b!2476777 () Bool)

(declare-fun res!1048510 () Bool)

(assert (=> b!2476777 (=> (not res!1048510) (not e!1571469))))

(assert (=> b!2476777 (= res!1048510 (not (containsKey!111 lt!884636 key!7256)))))

(declare-fun b!2476778 () Bool)

(declare-fun Unit!42328 () Unit!42301)

(assert (=> b!2476778 (= e!1571473 Unit!42328)))

(assert (= (and d!712336 c!394191) b!2476765))

(assert (= (and d!712336 (not c!394191)) b!2476776))

(assert (= (and b!2476765 c!394190) b!2476764))

(assert (= (and b!2476765 (not c!394190)) b!2476774))

(assert (= (and b!2476764 c!394192) b!2476770))

(assert (= (and b!2476764 (not c!394192)) b!2476771))

(assert (= (or b!2476764 b!2476774) bm!151679))

(assert (= (or b!2476764 b!2476774) bm!151677))

(assert (= (and b!2476776 c!394193) b!2476768))

(assert (= (and b!2476776 (not c!394193)) b!2476775))

(assert (= (and b!2476768 c!394189) b!2476766))

(assert (= (and b!2476768 (not c!394189)) b!2476762))

(assert (= (and b!2476768 c!394186) b!2476767))

(assert (= (and b!2476768 (not c!394186)) b!2476778))

(assert (= (or b!2476765 b!2476766) bm!151674))

(assert (= (or b!2476770 b!2476768) bm!151676))

(assert (= (and bm!151676 c!394188) b!2476760))

(assert (= (and bm!151676 (not c!394188)) b!2476773))

(assert (= (and d!712336 res!1048511) b!2476777))

(assert (= (and b!2476777 res!1048510) b!2476772))

(assert (= (and b!2476772 res!1048509) b!2476769))

(assert (= (and b!2476769 c!394187) b!2476763))

(assert (= (and b!2476769 (not c!394187)) b!2476761))

(assert (= (or b!2476763 b!2476761) bm!151678))

(assert (= (or b!2476763 b!2476761) bm!151675))

(declare-fun m!2844749 () Bool)

(assert (=> b!2476773 m!2844749))

(declare-fun m!2844751 () Bool)

(assert (=> b!2476764 m!2844751))

(assert (=> b!2476764 m!2844751))

(declare-fun m!2844753 () Bool)

(assert (=> b!2476764 m!2844753))

(declare-fun m!2844755 () Bool)

(assert (=> b!2476764 m!2844755))

(declare-fun m!2844757 () Bool)

(assert (=> b!2476764 m!2844757))

(declare-fun m!2844759 () Bool)

(assert (=> bm!151675 m!2844759))

(declare-fun m!2844761 () Bool)

(assert (=> b!2476766 m!2844761))

(declare-fun m!2844763 () Bool)

(assert (=> b!2476763 m!2844763))

(declare-fun m!2844765 () Bool)

(assert (=> b!2476763 m!2844765))

(assert (=> b!2476763 m!2844751))

(assert (=> b!2476763 m!2844753))

(assert (=> b!2476763 m!2844755))

(assert (=> b!2476763 m!2844751))

(assert (=> b!2476763 m!2844751))

(declare-fun m!2844767 () Bool)

(assert (=> b!2476763 m!2844767))

(assert (=> b!2476769 m!2844765))

(declare-fun m!2844769 () Bool)

(assert (=> bm!151679 m!2844769))

(declare-fun m!2844771 () Bool)

(assert (=> bm!151676 m!2844771))

(declare-fun m!2844773 () Bool)

(assert (=> b!2476777 m!2844773))

(assert (=> b!2476767 m!2844749))

(declare-fun m!2844775 () Bool)

(assert (=> b!2476767 m!2844775))

(declare-fun m!2844777 () Bool)

(assert (=> b!2476767 m!2844777))

(assert (=> b!2476767 m!2844777))

(declare-fun m!2844779 () Bool)

(assert (=> b!2476767 m!2844779))

(declare-fun m!2844781 () Bool)

(assert (=> bm!151677 m!2844781))

(declare-fun m!2844783 () Bool)

(assert (=> b!2476768 m!2844783))

(assert (=> b!2476768 m!2844783))

(declare-fun m!2844785 () Bool)

(assert (=> b!2476768 m!2844785))

(assert (=> b!2476768 m!2844749))

(assert (=> b!2476768 m!2844749))

(declare-fun m!2844787 () Bool)

(assert (=> b!2476768 m!2844787))

(declare-fun m!2844789 () Bool)

(assert (=> bm!151678 m!2844789))

(declare-fun m!2844791 () Bool)

(assert (=> d!712336 m!2844791))

(declare-fun m!2844793 () Bool)

(assert (=> d!712336 m!2844793))

(declare-fun m!2844795 () Bool)

(assert (=> bm!151674 m!2844795))

(assert (=> b!2476770 m!2844751))

(assert (=> b!2476770 m!2844751))

(assert (=> b!2476770 m!2844753))

(assert (=> b!2476770 m!2844753))

(declare-fun m!2844797 () Bool)

(assert (=> b!2476770 m!2844797))

(assert (=> b!2476772 m!2844449))

(declare-fun m!2844799 () Bool)

(assert (=> b!2476772 m!2844799))

(declare-fun m!2844801 () Bool)

(assert (=> b!2476772 m!2844801))

(declare-fun m!2844803 () Bool)

(assert (=> b!2476772 m!2844803))

(declare-fun m!2844805 () Bool)

(assert (=> b!2476772 m!2844805))

(assert (=> b!2476772 m!2844803))

(assert (=> b!2476772 m!2844799))

(assert (=> d!712270 d!712336))

(declare-fun bs!467085 () Bool)

(declare-fun d!712338 () Bool)

(assert (= bs!467085 (and d!712338 b!2476570)))

(declare-fun lambda!93432 () Int)

(assert (=> bs!467085 (= lambda!93432 lambda!93401)))

(declare-fun bs!467086 () Bool)

(assert (= bs!467086 (and d!712338 d!712298)))

(assert (=> bs!467086 (= lambda!93432 lambda!93413)))

(declare-fun bs!467087 () Bool)

(assert (= bs!467087 (and d!712338 d!712308)))

(assert (=> bs!467087 (= lambda!93432 lambda!93422)))

(declare-fun bs!467088 () Bool)

(assert (= bs!467088 (and d!712338 d!712296)))

(assert (=> bs!467088 (not (= lambda!93432 lambda!93410))))

(declare-fun bs!467089 () Bool)

(assert (= bs!467089 (and d!712338 b!2476693)))

(assert (=> bs!467089 (= lambda!93432 lambda!93426)))

(declare-fun bs!467090 () Bool)

(assert (= bs!467090 (and d!712338 d!712304)))

(assert (=> bs!467090 (= lambda!93432 lambda!93421)))

(declare-fun bs!467091 () Bool)

(assert (= bs!467091 (and d!712338 d!712300)))

(assert (=> bs!467091 (not (= lambda!93432 lambda!93416))))

(declare-fun bs!467092 () Bool)

(assert (= bs!467092 (and d!712338 d!712286)))

(assert (=> bs!467092 (= lambda!93432 lambda!93404)))

(declare-fun bs!467093 () Bool)

(assert (= bs!467093 (and d!712338 b!2476703)))

(assert (=> bs!467093 (= lambda!93432 lambda!93429)))

(assert (=> d!712338 (= (extractMap!135 (toList!1446 lt!884444)) (-!111 (extractMap!135 (toList!1446 lt!884444)) key!7256))))

(declare-fun lt!884655 () Unit!42301)

(declare-fun choose!14611 (ListLongMap!383 K!5250 Hashable!3176) Unit!42301)

(assert (=> d!712338 (= lt!884655 (choose!14611 lt!884444 key!7256 (hashF!5107 thiss!47892)))))

(assert (=> d!712338 (forall!5922 (toList!1446 lt!884444) lambda!93432)))

(assert (=> d!712338 (= (lemmaRemoveNotContainedDoesNotChange!21 lt!884444 key!7256 (hashF!5107 thiss!47892)) lt!884655)))

(declare-fun bs!467094 () Bool)

(assert (= bs!467094 d!712338))

(declare-fun m!2844807 () Bool)

(assert (=> bs!467094 m!2844807))

(assert (=> bs!467094 m!2844807))

(declare-fun m!2844809 () Bool)

(assert (=> bs!467094 m!2844809))

(declare-fun m!2844811 () Bool)

(assert (=> bs!467094 m!2844811))

(declare-fun m!2844813 () Bool)

(assert (=> bs!467094 m!2844813))

(assert (=> b!2476574 d!712338))

(assert (=> b!2476578 d!712328))

(declare-fun d!712340 () Bool)

(assert (=> d!712340 (= (abstractMap!120 (ite c!394111 (_2!16709 lt!884375) thiss!47892)) (map!6015 (ite c!394111 (_2!16709 lt!884375) thiss!47892)))))

(declare-fun bs!467095 () Bool)

(assert (= bs!467095 d!712340))

(declare-fun m!2844815 () Bool)

(assert (=> bs!467095 m!2844815))

(assert (=> b!2476534 d!712340))

(declare-fun d!712342 () Bool)

(assert (=> d!712342 (= (map!6014 (v!31197 (underlying!6740 thiss!47892))) (map!6016 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892))))))))

(declare-fun bs!467096 () Bool)

(assert (= bs!467096 d!712342))

(declare-fun m!2844817 () Bool)

(assert (=> bs!467096 m!2844817))

(assert (=> bm!151637 d!712342))

(declare-fun d!712344 () Bool)

(declare-fun lt!884656 () ListMap!937)

(assert (=> d!712344 (invariantList!400 (toList!1445 lt!884656))))

(assert (=> d!712344 (= lt!884656 (extractMap!135 (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455)))))))))

(assert (=> d!712344 (valid!2469 (_2!16711 lt!884455))))

(assert (=> d!712344 (= (map!6015 (_2!16711 lt!884455)) lt!884656)))

(declare-fun bs!467097 () Bool)

(assert (= bs!467097 d!712344))

(declare-fun m!2844819 () Bool)

(assert (=> bs!467097 m!2844819))

(assert (=> bs!467097 m!2844479))

(declare-fun m!2844821 () Bool)

(assert (=> bs!467097 m!2844821))

(assert (=> bs!467097 m!2844467))

(assert (=> bm!151638 d!712344))

(declare-fun d!712346 () Bool)

(declare-fun choose!14612 (MutableMap!3176) Bool)

(assert (=> d!712346 (= (valid!2468 thiss!47892) (choose!14612 thiss!47892))))

(declare-fun bs!467098 () Bool)

(assert (= bs!467098 d!712346))

(declare-fun m!2844823 () Bool)

(assert (=> bs!467098 m!2844823))

(assert (=> b!2476577 d!712346))

(declare-fun d!712348 () Bool)

(declare-fun c!394196 () Bool)

(assert (=> d!712348 (= c!394196 ((_ is Nil!28936) (keys!9215 call!151618)))))

(declare-fun e!1571477 () (InoxSet K!5250))

(assert (=> d!712348 (= (content!3971 (keys!9215 call!151618)) e!1571477)))

(declare-fun b!2476783 () Bool)

(assert (=> b!2476783 (= e!1571477 ((as const (Array K!5250 Bool)) false))))

(declare-fun b!2476784 () Bool)

(assert (=> b!2476784 (= e!1571477 ((_ map or) (store ((as const (Array K!5250 Bool)) false) (h!34337 (keys!9215 call!151618)) true) (content!3971 (t!210671 (keys!9215 call!151618)))))))

(assert (= (and d!712348 c!394196) b!2476783))

(assert (= (and d!712348 (not c!394196)) b!2476784))

(declare-fun m!2844825 () Bool)

(assert (=> b!2476784 m!2844825))

(declare-fun m!2844827 () Bool)

(assert (=> b!2476784 m!2844827))

(assert (=> b!2476537 d!712348))

(declare-fun b!2476792 () Bool)

(assert (=> b!2476792 true))

(declare-fun d!712350 () Bool)

(declare-fun e!1571480 () Bool)

(assert (=> d!712350 e!1571480))

(declare-fun res!1048519 () Bool)

(assert (=> d!712350 (=> (not res!1048519) (not e!1571480))))

(declare-fun lt!884659 () List!29036)

(declare-fun noDuplicate!322 (List!29036) Bool)

(assert (=> d!712350 (= res!1048519 (noDuplicate!322 lt!884659))))

(assert (=> d!712350 (= lt!884659 (getKeysList!16 (toList!1445 call!151618)))))

(assert (=> d!712350 (= (keys!9215 call!151618) lt!884659)))

(declare-fun b!2476791 () Bool)

(declare-fun res!1048518 () Bool)

(assert (=> b!2476791 (=> (not res!1048518) (not e!1571480))))

(declare-fun length!22 (List!29036) Int)

(declare-fun length!23 (List!29035) Int)

(assert (=> b!2476791 (= res!1048518 (= (length!22 lt!884659) (length!23 (toList!1445 call!151618))))))

(declare-fun res!1048520 () Bool)

(assert (=> b!2476792 (=> (not res!1048520) (not e!1571480))))

(declare-fun lambda!93437 () Int)

(declare-fun forall!5924 (List!29036 Int) Bool)

(assert (=> b!2476792 (= res!1048520 (forall!5924 lt!884659 lambda!93437))))

(declare-fun lambda!93438 () Int)

(declare-fun b!2476793 () Bool)

(declare-fun map!6017 (List!29035 Int) List!29036)

(assert (=> b!2476793 (= e!1571480 (= (content!3971 lt!884659) (content!3971 (map!6017 (toList!1445 call!151618) lambda!93438))))))

(assert (= (and d!712350 res!1048519) b!2476791))

(assert (= (and b!2476791 res!1048518) b!2476792))

(assert (= (and b!2476792 res!1048520) b!2476793))

(declare-fun m!2844829 () Bool)

(assert (=> d!712350 m!2844829))

(assert (=> d!712350 m!2844799))

(declare-fun m!2844831 () Bool)

(assert (=> b!2476791 m!2844831))

(declare-fun m!2844833 () Bool)

(assert (=> b!2476791 m!2844833))

(declare-fun m!2844835 () Bool)

(assert (=> b!2476792 m!2844835))

(declare-fun m!2844837 () Bool)

(assert (=> b!2476793 m!2844837))

(declare-fun m!2844839 () Bool)

(assert (=> b!2476793 m!2844839))

(assert (=> b!2476793 m!2844839))

(declare-fun m!2844841 () Bool)

(assert (=> b!2476793 m!2844841))

(assert (=> b!2476537 d!712350))

(declare-fun d!712352 () Bool)

(declare-fun c!394197 () Bool)

(assert (=> d!712352 (= c!394197 ((_ is Nil!28936) (keys!9215 lt!884378)))))

(declare-fun e!1571481 () (InoxSet K!5250))

(assert (=> d!712352 (= (content!3971 (keys!9215 lt!884378)) e!1571481)))

(declare-fun b!2476796 () Bool)

(assert (=> b!2476796 (= e!1571481 ((as const (Array K!5250 Bool)) false))))

(declare-fun b!2476797 () Bool)

(assert (=> b!2476797 (= e!1571481 ((_ map or) (store ((as const (Array K!5250 Bool)) false) (h!34337 (keys!9215 lt!884378)) true) (content!3971 (t!210671 (keys!9215 lt!884378)))))))

(assert (= (and d!712352 c!394197) b!2476796))

(assert (= (and d!712352 (not c!394197)) b!2476797))

(declare-fun m!2844843 () Bool)

(assert (=> b!2476797 m!2844843))

(declare-fun m!2844845 () Bool)

(assert (=> b!2476797 m!2844845))

(assert (=> b!2476537 d!712352))

(declare-fun bs!467099 () Bool)

(declare-fun b!2476799 () Bool)

(assert (= bs!467099 (and b!2476799 b!2476792)))

(declare-fun lambda!93439 () Int)

(assert (=> bs!467099 (= (= (toList!1445 lt!884378) (toList!1445 call!151618)) (= lambda!93439 lambda!93437))))

(assert (=> b!2476799 true))

(declare-fun bs!467100 () Bool)

(declare-fun b!2476800 () Bool)

(assert (= bs!467100 (and b!2476800 b!2476793)))

(declare-fun lambda!93440 () Int)

(assert (=> bs!467100 (= lambda!93440 lambda!93438)))

(declare-fun d!712354 () Bool)

(declare-fun e!1571482 () Bool)

(assert (=> d!712354 e!1571482))

(declare-fun res!1048522 () Bool)

(assert (=> d!712354 (=> (not res!1048522) (not e!1571482))))

(declare-fun lt!884660 () List!29036)

(assert (=> d!712354 (= res!1048522 (noDuplicate!322 lt!884660))))

(assert (=> d!712354 (= lt!884660 (getKeysList!16 (toList!1445 lt!884378)))))

(assert (=> d!712354 (= (keys!9215 lt!884378) lt!884660)))

(declare-fun b!2476798 () Bool)

(declare-fun res!1048521 () Bool)

(assert (=> b!2476798 (=> (not res!1048521) (not e!1571482))))

(assert (=> b!2476798 (= res!1048521 (= (length!22 lt!884660) (length!23 (toList!1445 lt!884378))))))

(declare-fun res!1048523 () Bool)

(assert (=> b!2476799 (=> (not res!1048523) (not e!1571482))))

(assert (=> b!2476799 (= res!1048523 (forall!5924 lt!884660 lambda!93439))))

(assert (=> b!2476800 (= e!1571482 (= (content!3971 lt!884660) (content!3971 (map!6017 (toList!1445 lt!884378) lambda!93440))))))

(assert (= (and d!712354 res!1048522) b!2476798))

(assert (= (and b!2476798 res!1048521) b!2476799))

(assert (= (and b!2476799 res!1048523) b!2476800))

(declare-fun m!2844847 () Bool)

(assert (=> d!712354 m!2844847))

(assert (=> d!712354 m!2844747))

(declare-fun m!2844849 () Bool)

(assert (=> b!2476798 m!2844849))

(declare-fun m!2844851 () Bool)

(assert (=> b!2476798 m!2844851))

(declare-fun m!2844853 () Bool)

(assert (=> b!2476799 m!2844853))

(declare-fun m!2844855 () Bool)

(assert (=> b!2476800 m!2844855))

(declare-fun m!2844857 () Bool)

(assert (=> b!2476800 m!2844857))

(assert (=> b!2476800 m!2844857))

(declare-fun m!2844859 () Bool)

(assert (=> b!2476800 m!2844859))

(assert (=> b!2476537 d!712354))

(declare-fun d!712356 () Bool)

(declare-fun e!1571483 () Bool)

(assert (=> d!712356 e!1571483))

(declare-fun res!1048524 () Bool)

(assert (=> d!712356 (=> (not res!1048524) (not e!1571483))))

(declare-fun lt!884661 () ListMap!937)

(assert (=> d!712356 (= res!1048524 (not (contains!4937 lt!884661 key!7256)))))

(assert (=> d!712356 (= lt!884661 (ListMap!938 (removePresrvNoDuplicatedKeys!21 (toList!1445 (ite c!394129 call!151640 lt!884446)) key!7256)))))

(assert (=> d!712356 (= (-!111 (ite c!394129 call!151640 lt!884446) key!7256) lt!884661)))

(declare-fun b!2476801 () Bool)

(assert (=> b!2476801 (= e!1571483 (= ((_ map and) (content!3971 (keys!9215 (ite c!394129 call!151640 lt!884446))) ((_ map not) (store ((as const (Array K!5250 Bool)) false) key!7256 true))) (content!3971 (keys!9215 lt!884661))))))

(assert (= (and d!712356 res!1048524) b!2476801))

(declare-fun m!2844861 () Bool)

(assert (=> d!712356 m!2844861))

(declare-fun m!2844863 () Bool)

(assert (=> d!712356 m!2844863))

(declare-fun m!2844865 () Bool)

(assert (=> b!2476801 m!2844865))

(declare-fun m!2844867 () Bool)

(assert (=> b!2476801 m!2844867))

(assert (=> b!2476801 m!2844449))

(declare-fun m!2844869 () Bool)

(assert (=> b!2476801 m!2844869))

(declare-fun m!2844871 () Bool)

(assert (=> b!2476801 m!2844871))

(assert (=> b!2476801 m!2844869))

(assert (=> b!2476801 m!2844865))

(assert (=> bm!151639 d!712356))

(declare-fun d!712358 () Bool)

(declare-fun e!1571484 () Bool)

(assert (=> d!712358 e!1571484))

(declare-fun res!1048525 () Bool)

(assert (=> d!712358 (=> (not res!1048525) (not e!1571484))))

(declare-fun lt!884662 () ListMap!937)

(assert (=> d!712358 (= res!1048525 (not (contains!4937 lt!884662 key!7256)))))

(assert (=> d!712358 (= lt!884662 (ListMap!938 (removePresrvNoDuplicatedKeys!21 (toList!1445 call!151642) key!7256)))))

(assert (=> d!712358 (= (-!111 call!151642 key!7256) lt!884662)))

(declare-fun b!2476802 () Bool)

(assert (=> b!2476802 (= e!1571484 (= ((_ map and) (content!3971 (keys!9215 call!151642)) ((_ map not) (store ((as const (Array K!5250 Bool)) false) key!7256 true))) (content!3971 (keys!9215 lt!884662))))))

(assert (= (and d!712358 res!1048525) b!2476802))

(declare-fun m!2844873 () Bool)

(assert (=> d!712358 m!2844873))

(declare-fun m!2844875 () Bool)

(assert (=> d!712358 m!2844875))

(declare-fun m!2844877 () Bool)

(assert (=> b!2476802 m!2844877))

(declare-fun m!2844879 () Bool)

(assert (=> b!2476802 m!2844879))

(assert (=> b!2476802 m!2844449))

(declare-fun m!2844881 () Bool)

(assert (=> b!2476802 m!2844881))

(declare-fun m!2844883 () Bool)

(assert (=> b!2476802 m!2844883))

(assert (=> b!2476802 m!2844881))

(assert (=> b!2476802 m!2844877))

(assert (=> b!2476573 d!712358))

(declare-fun bs!467101 () Bool)

(declare-fun b!2476803 () Bool)

(assert (= bs!467101 (and b!2476803 b!2476570)))

(declare-fun lambda!93441 () Int)

(assert (=> bs!467101 (= lambda!93441 lambda!93401)))

(declare-fun bs!467102 () Bool)

(assert (= bs!467102 (and b!2476803 d!712298)))

(assert (=> bs!467102 (= lambda!93441 lambda!93413)))

(declare-fun bs!467103 () Bool)

(assert (= bs!467103 (and b!2476803 d!712308)))

(assert (=> bs!467103 (= lambda!93441 lambda!93422)))

(declare-fun bs!467104 () Bool)

(assert (= bs!467104 (and b!2476803 d!712296)))

(assert (=> bs!467104 (not (= lambda!93441 lambda!93410))))

(declare-fun bs!467105 () Bool)

(assert (= bs!467105 (and b!2476803 d!712338)))

(assert (=> bs!467105 (= lambda!93441 lambda!93432)))

(declare-fun bs!467106 () Bool)

(assert (= bs!467106 (and b!2476803 b!2476693)))

(assert (=> bs!467106 (= lambda!93441 lambda!93426)))

(declare-fun bs!467107 () Bool)

(assert (= bs!467107 (and b!2476803 d!712304)))

(assert (=> bs!467107 (= lambda!93441 lambda!93421)))

(declare-fun bs!467108 () Bool)

(assert (= bs!467108 (and b!2476803 d!712300)))

(assert (=> bs!467108 (not (= lambda!93441 lambda!93416))))

(declare-fun bs!467109 () Bool)

(assert (= bs!467109 (and b!2476803 d!712286)))

(assert (=> bs!467109 (= lambda!93441 lambda!93404)))

(declare-fun bs!467110 () Bool)

(assert (= bs!467110 (and b!2476803 b!2476703)))

(assert (=> bs!467110 (= lambda!93441 lambda!93429)))

(declare-fun d!712360 () Bool)

(declare-fun res!1048526 () Bool)

(declare-fun e!1571485 () Bool)

(assert (=> d!712360 (=> (not res!1048526) (not e!1571485))))

(assert (=> d!712360 (= res!1048526 (valid!2470 (v!31197 (underlying!6740 (_2!16711 lt!884455)))))))

(assert (=> d!712360 (= (valid!2469 (_2!16711 lt!884455)) e!1571485)))

(declare-fun res!1048527 () Bool)

(assert (=> b!2476803 (=> (not res!1048527) (not e!1571485))))

(assert (=> b!2476803 (= res!1048527 (forall!5922 (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455))))) lambda!93441))))

(declare-fun b!2476804 () Bool)

(assert (=> b!2476804 (= e!1571485 (allKeysSameHashInMap!125 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455)))) (hashF!5107 (_2!16711 lt!884455))))))

(assert (= (and d!712360 res!1048526) b!2476803))

(assert (= (and b!2476803 res!1048527) b!2476804))

(declare-fun m!2844885 () Bool)

(assert (=> d!712360 m!2844885))

(assert (=> b!2476803 m!2844479))

(declare-fun m!2844887 () Bool)

(assert (=> b!2476803 m!2844887))

(assert (=> b!2476804 m!2844479))

(assert (=> b!2476804 m!2844479))

(assert (=> b!2476804 m!2844501))

(assert (=> bm!151636 d!712360))

(declare-fun bs!467111 () Bool)

(declare-fun b!2476805 () Bool)

(assert (= bs!467111 (and b!2476805 b!2476570)))

(declare-fun lambda!93442 () Int)

(assert (=> bs!467111 (= lambda!93442 lambda!93401)))

(declare-fun bs!467112 () Bool)

(assert (= bs!467112 (and b!2476805 d!712298)))

(assert (=> bs!467112 (= lambda!93442 lambda!93413)))

(declare-fun bs!467113 () Bool)

(assert (= bs!467113 (and b!2476805 d!712308)))

(assert (=> bs!467113 (= lambda!93442 lambda!93422)))

(declare-fun bs!467114 () Bool)

(assert (= bs!467114 (and b!2476805 b!2476803)))

(assert (=> bs!467114 (= lambda!93442 lambda!93441)))

(declare-fun bs!467115 () Bool)

(assert (= bs!467115 (and b!2476805 d!712296)))

(assert (=> bs!467115 (not (= lambda!93442 lambda!93410))))

(declare-fun bs!467116 () Bool)

(assert (= bs!467116 (and b!2476805 d!712338)))

(assert (=> bs!467116 (= lambda!93442 lambda!93432)))

(declare-fun bs!467117 () Bool)

(assert (= bs!467117 (and b!2476805 b!2476693)))

(assert (=> bs!467117 (= lambda!93442 lambda!93426)))

(declare-fun bs!467118 () Bool)

(assert (= bs!467118 (and b!2476805 d!712304)))

(assert (=> bs!467118 (= lambda!93442 lambda!93421)))

(declare-fun bs!467119 () Bool)

(assert (= bs!467119 (and b!2476805 d!712300)))

(assert (=> bs!467119 (not (= lambda!93442 lambda!93416))))

(declare-fun bs!467120 () Bool)

(assert (= bs!467120 (and b!2476805 d!712286)))

(assert (=> bs!467120 (= lambda!93442 lambda!93404)))

(declare-fun bs!467121 () Bool)

(assert (= bs!467121 (and b!2476805 b!2476703)))

(assert (=> bs!467121 (= lambda!93442 lambda!93429)))

(declare-fun d!712362 () Bool)

(declare-fun res!1048528 () Bool)

(declare-fun e!1571486 () Bool)

(assert (=> d!712362 (=> (not res!1048528) (not e!1571486))))

(assert (=> d!712362 (= res!1048528 (valid!2470 (v!31197 (underlying!6740 (_2!16709 lt!884375)))))))

(assert (=> d!712362 (= (valid!2469 (_2!16709 lt!884375)) e!1571486)))

(declare-fun res!1048529 () Bool)

(assert (=> b!2476805 (=> (not res!1048529) (not e!1571486))))

(assert (=> b!2476805 (= res!1048529 (forall!5922 (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16709 lt!884375))))) lambda!93442))))

(declare-fun b!2476806 () Bool)

(assert (=> b!2476806 (= e!1571486 (allKeysSameHashInMap!125 (map!6014 (v!31197 (underlying!6740 (_2!16709 lt!884375)))) (hashF!5107 (_2!16709 lt!884375))))))

(assert (= (and d!712362 res!1048528) b!2476805))

(assert (= (and b!2476805 res!1048529) b!2476806))

(declare-fun m!2844889 () Bool)

(assert (=> d!712362 m!2844889))

(declare-fun m!2844891 () Bool)

(assert (=> b!2476805 m!2844891))

(declare-fun m!2844893 () Bool)

(assert (=> b!2476805 m!2844893))

(assert (=> b!2476806 m!2844891))

(assert (=> b!2476806 m!2844891))

(declare-fun m!2844895 () Bool)

(assert (=> b!2476806 m!2844895))

(assert (=> b!2476543 d!712362))

(declare-fun d!712364 () Bool)

(assert (=> d!712364 (= (abstractMap!119 (ite c!394111 (_2!16709 lt!884375) thiss!47892)) (choose!14606 (ite c!394111 (_2!16709 lt!884375) thiss!47892)))))

(declare-fun bs!467122 () Bool)

(assert (= bs!467122 d!712364))

(declare-fun m!2844897 () Bool)

(assert (=> bs!467122 m!2844897))

(assert (=> b!2476533 d!712364))

(declare-fun d!712366 () Bool)

(assert (=> d!712366 (= (valid!2468 (_2!16709 lt!884375)) (choose!14612 (_2!16709 lt!884375)))))

(declare-fun bs!467123 () Bool)

(assert (= bs!467123 d!712366))

(declare-fun m!2844899 () Bool)

(assert (=> bs!467123 m!2844899))

(assert (=> b!2476542 d!712366))

(assert (=> b!2476570 d!712306))

(declare-fun d!712368 () Bool)

(assert (=> d!712368 (dynLambda!12430 lambda!93401 (tuple2!28339 lt!884445 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884445)))))

(declare-fun lt!884665 () Unit!42301)

(declare-fun choose!14613 (List!29037 Int tuple2!28338) Unit!42301)

(assert (=> d!712368 (= lt!884665 (choose!14613 (toList!1446 call!151638) lambda!93401 (tuple2!28339 lt!884445 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884445))))))

(declare-fun e!1571489 () Bool)

(assert (=> d!712368 e!1571489))

(declare-fun res!1048532 () Bool)

(assert (=> d!712368 (=> (not res!1048532) (not e!1571489))))

(assert (=> d!712368 (= res!1048532 (forall!5922 (toList!1446 call!151638) lambda!93401))))

(assert (=> d!712368 (= (forallContained!804 (toList!1446 call!151638) lambda!93401 (tuple2!28339 lt!884445 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884445))) lt!884665)))

(declare-fun b!2476809 () Bool)

(assert (=> b!2476809 (= e!1571489 (contains!4940 (toList!1446 call!151638) (tuple2!28339 lt!884445 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884445))))))

(assert (= (and d!712368 res!1048532) b!2476809))

(declare-fun b_lambda!75987 () Bool)

(assert (=> (not b_lambda!75987) (not d!712368)))

(declare-fun m!2844901 () Bool)

(assert (=> d!712368 m!2844901))

(declare-fun m!2844903 () Bool)

(assert (=> d!712368 m!2844903))

(declare-fun m!2844905 () Bool)

(assert (=> d!712368 m!2844905))

(declare-fun m!2844907 () Bool)

(assert (=> b!2476809 m!2844907))

(assert (=> b!2476570 d!712368))

(declare-fun d!712370 () Bool)

(assert (=> d!712370 (noDuplicateKeys!43 (removePairForKey!35 lt!884453 key!7256))))

(declare-fun lt!884668 () Unit!42301)

(declare-fun choose!14614 (List!29035 K!5250) Unit!42301)

(assert (=> d!712370 (= lt!884668 (choose!14614 lt!884453 key!7256))))

(assert (=> d!712370 (noDuplicateKeys!43 lt!884453)))

(assert (=> d!712370 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!35 lt!884453 key!7256) lt!884668)))

(declare-fun bs!467124 () Bool)

(assert (= bs!467124 d!712370))

(assert (=> bs!467124 m!2844475))

(assert (=> bs!467124 m!2844475))

(assert (=> bs!467124 m!2844519))

(declare-fun m!2844909 () Bool)

(assert (=> bs!467124 m!2844909))

(assert (=> bs!467124 m!2844595))

(assert (=> b!2476570 d!712370))

(declare-fun d!712372 () Bool)

(declare-fun lt!884669 () ListMap!937)

(assert (=> d!712372 (invariantList!400 (toList!1445 lt!884669))))

(assert (=> d!712372 (= lt!884669 (extractMap!135 (toList!1446 (map!6014 (v!31197 (underlying!6740 thiss!47892))))))))

(assert (=> d!712372 (valid!2469 thiss!47892)))

(assert (=> d!712372 (= (map!6015 thiss!47892) lt!884669)))

(declare-fun bs!467125 () Bool)

(assert (= bs!467125 d!712372))

(declare-fun m!2844911 () Bool)

(assert (=> bs!467125 m!2844911))

(assert (=> bs!467125 m!2844513))

(assert (=> bs!467125 m!2844701))

(assert (=> bs!467125 m!2844511))

(assert (=> b!2476570 d!712372))

(declare-fun d!712374 () Bool)

(declare-fun hash!609 (Hashable!3176 K!5250) (_ BitVec 64))

(assert (=> d!712374 (= (hash!604 (hashF!5107 thiss!47892) key!7256) (hash!609 (hashF!5107 thiss!47892) key!7256))))

(declare-fun bs!467126 () Bool)

(assert (= bs!467126 d!712374))

(declare-fun m!2844913 () Bool)

(assert (=> bs!467126 m!2844913))

(assert (=> b!2476570 d!712374))

(declare-fun b!2476828 () Bool)

(declare-fun e!1571502 () Bool)

(declare-fun e!1571501 () Bool)

(assert (=> b!2476828 (= e!1571502 e!1571501)))

(declare-fun res!1048541 () Bool)

(declare-fun call!151690 () ListLongMap!383)

(assert (=> b!2476828 (= res!1048541 (contains!4939 call!151690 lt!884445))))

(assert (=> b!2476828 (=> (not res!1048541) (not e!1571501))))

(declare-fun b!2476829 () Bool)

(declare-fun e!1571503 () Bool)

(assert (=> b!2476829 (= e!1571503 e!1571502)))

(declare-fun c!394204 () Bool)

(declare-fun lt!884679 () tuple2!28342)

(assert (=> b!2476829 (= c!394204 (_1!16712 lt!884679))))

(declare-fun bm!151684 () Bool)

(declare-fun call!151689 () ListLongMap!383)

(assert (=> bm!151684 (= call!151689 (map!6014 (v!31197 (underlying!6740 thiss!47892))))))

(declare-fun d!712376 () Bool)

(assert (=> d!712376 e!1571503))

(declare-fun res!1048540 () Bool)

(assert (=> d!712376 (=> (not res!1048540) (not e!1571503))))

(assert (=> d!712376 (= res!1048540 ((_ is LongMap!3266) (_2!16712 lt!884679)))))

(declare-fun e!1571504 () tuple2!28342)

(assert (=> d!712376 (= lt!884679 e!1571504)))

(declare-fun c!394205 () Bool)

(declare-fun lt!884680 () tuple2!28342)

(assert (=> d!712376 (= c!394205 (_1!16712 lt!884680))))

(declare-fun e!1571500 () tuple2!28342)

(assert (=> d!712376 (= lt!884680 e!1571500)))

(declare-fun c!394206 () Bool)

(declare-fun imbalanced!10 (MutLongMap!3266) Bool)

(assert (=> d!712376 (= c!394206 (imbalanced!10 (v!31197 (underlying!6740 thiss!47892))))))

(assert (=> d!712376 (valid!2470 (v!31197 (underlying!6740 thiss!47892)))))

(assert (=> d!712376 (= (update!150 (v!31197 (underlying!6740 thiss!47892)) lt!884445 lt!884457) lt!884679)))

(declare-fun b!2476830 () Bool)

(declare-fun res!1048539 () Bool)

(assert (=> b!2476830 (=> (not res!1048539) (not e!1571503))))

(assert (=> b!2476830 (= res!1048539 (valid!2470 (_2!16712 lt!884679)))))

(declare-fun bm!151685 () Bool)

(assert (=> bm!151685 (= call!151690 (map!6014 (_2!16712 lt!884679)))))

(declare-fun b!2476831 () Bool)

(assert (=> b!2476831 (= e!1571500 (tuple2!28343 true (v!31197 (underlying!6740 thiss!47892))))))

(declare-fun b!2476832 () Bool)

(assert (=> b!2476832 (= e!1571504 (tuple2!28343 false (_2!16712 lt!884680)))))

(declare-fun b!2476833 () Bool)

(declare-datatypes ((tuple2!28344 0))(
  ( (tuple2!28345 (_1!16713 Bool) (_2!16713 LongMapFixedSize!6532)) )
))
(declare-fun lt!884681 () tuple2!28344)

(assert (=> b!2476833 (= e!1571504 (tuple2!28343 (_1!16713 lt!884681) (LongMap!3266 (Cell!12882 (_2!16713 lt!884681)))))))

(declare-fun update!151 (LongMapFixedSize!6532 (_ BitVec 64) List!29035) tuple2!28344)

(assert (=> b!2476833 (= lt!884681 (update!151 (v!31196 (underlying!6739 (_2!16712 lt!884680))) lt!884445 lt!884457))))

(declare-fun b!2476834 () Bool)

(assert (=> b!2476834 (= e!1571502 (= call!151690 call!151689))))

(declare-fun b!2476835 () Bool)

(declare-fun lt!884678 () tuple2!28342)

(assert (=> b!2476835 (= e!1571500 (tuple2!28343 (_1!16712 lt!884678) (_2!16712 lt!884678)))))

(declare-fun repack!14 (MutLongMap!3266) tuple2!28342)

(assert (=> b!2476835 (= lt!884678 (repack!14 (v!31197 (underlying!6740 thiss!47892))))))

(declare-fun b!2476836 () Bool)

(assert (=> b!2476836 (= e!1571501 (= call!151690 (+!64 call!151689 (tuple2!28339 lt!884445 lt!884457))))))

(assert (= (and d!712376 c!394206) b!2476835))

(assert (= (and d!712376 (not c!394206)) b!2476831))

(assert (= (and d!712376 c!394205) b!2476833))

(assert (= (and d!712376 (not c!394205)) b!2476832))

(assert (= (and d!712376 res!1048540) b!2476830))

(assert (= (and b!2476830 res!1048539) b!2476829))

(assert (= (and b!2476829 c!394204) b!2476828))

(assert (= (and b!2476829 (not c!394204)) b!2476834))

(assert (= (and b!2476828 res!1048541) b!2476836))

(assert (= (or b!2476836 b!2476834) bm!151684))

(assert (= (or b!2476828 b!2476836 b!2476834) bm!151685))

(declare-fun m!2844915 () Bool)

(assert (=> b!2476830 m!2844915))

(declare-fun m!2844917 () Bool)

(assert (=> b!2476835 m!2844917))

(declare-fun m!2844919 () Bool)

(assert (=> bm!151685 m!2844919))

(assert (=> bm!151684 m!2844513))

(declare-fun m!2844921 () Bool)

(assert (=> b!2476828 m!2844921))

(declare-fun m!2844923 () Bool)

(assert (=> d!712376 m!2844923))

(assert (=> d!712376 m!2844717))

(declare-fun m!2844925 () Bool)

(assert (=> b!2476836 m!2844925))

(declare-fun m!2844927 () Bool)

(assert (=> b!2476833 m!2844927))

(assert (=> b!2476570 d!712376))

(declare-fun d!712378 () Bool)

(declare-fun e!1571507 () Bool)

(assert (=> d!712378 e!1571507))

(declare-fun c!394209 () Bool)

(assert (=> d!712378 (= c!394209 (contains!4942 (v!31197 (underlying!6740 thiss!47892)) lt!884445))))

(declare-fun lt!884684 () List!29035)

(declare-fun apply!6830 (LongMapFixedSize!6532 (_ BitVec 64)) List!29035)

(assert (=> d!712378 (= lt!884684 (apply!6830 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))) lt!884445))))

(assert (=> d!712378 (valid!2470 (v!31197 (underlying!6740 thiss!47892)))))

(assert (=> d!712378 (= (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884445) lt!884684)))

(declare-fun b!2476841 () Bool)

(declare-fun get!8915 (Option!5717) List!29035)

(assert (=> b!2476841 (= e!1571507 (= lt!884684 (get!8915 (getValueByKey!120 (toList!1446 (map!6014 (v!31197 (underlying!6740 thiss!47892)))) lt!884445))))))

(declare-fun b!2476842 () Bool)

(declare-fun dynLambda!12431 (Int (_ BitVec 64)) List!29035)

(assert (=> b!2476842 (= e!1571507 (= lt!884684 (dynLambda!12431 (defaultEntry!3640 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892))))) lt!884445)))))

(assert (=> b!2476842 ((_ is LongMap!3266) (v!31197 (underlying!6740 thiss!47892)))))

(assert (= (and d!712378 c!394209) b!2476841))

(assert (= (and d!712378 (not c!394209)) b!2476842))

(declare-fun b_lambda!75989 () Bool)

(assert (=> (not b_lambda!75989) (not b!2476842)))

(declare-fun t!210674 () Bool)

(declare-fun tb!140353 () Bool)

(assert (=> (and b!2476525 (= (defaultEntry!3640 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892))))) (defaultEntry!3640 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))))) t!210674) tb!140353))

(assert (=> b!2476842 t!210674))

(declare-fun result!173240 () Bool)

(declare-fun b_and!188149 () Bool)

(assert (= b_and!188145 (and (=> t!210674 result!173240) b_and!188149)))

(declare-fun m!2844929 () Bool)

(assert (=> d!712378 m!2844929))

(declare-fun m!2844931 () Bool)

(assert (=> d!712378 m!2844931))

(assert (=> d!712378 m!2844717))

(assert (=> b!2476841 m!2844513))

(declare-fun m!2844933 () Bool)

(assert (=> b!2476841 m!2844933))

(assert (=> b!2476841 m!2844933))

(declare-fun m!2844935 () Bool)

(assert (=> b!2476841 m!2844935))

(declare-fun m!2844937 () Bool)

(assert (=> b!2476842 m!2844937))

(assert (=> b!2476570 d!712378))

(declare-fun d!712380 () Bool)

(declare-fun res!1048546 () Bool)

(declare-fun e!1571512 () Bool)

(assert (=> d!712380 (=> res!1048546 e!1571512)))

(assert (=> d!712380 (= res!1048546 (not ((_ is Cons!28935) (removePairForKey!35 lt!884453 key!7256))))))

(assert (=> d!712380 (= (noDuplicateKeys!43 (removePairForKey!35 lt!884453 key!7256)) e!1571512)))

(declare-fun b!2476847 () Bool)

(declare-fun e!1571513 () Bool)

(assert (=> b!2476847 (= e!1571512 e!1571513)))

(declare-fun res!1048547 () Bool)

(assert (=> b!2476847 (=> (not res!1048547) (not e!1571513))))

(assert (=> b!2476847 (= res!1048547 (not (containsKey!110 (t!210670 (removePairForKey!35 lt!884453 key!7256)) (_1!16708 (h!34336 (removePairForKey!35 lt!884453 key!7256))))))))

(declare-fun b!2476848 () Bool)

(assert (=> b!2476848 (= e!1571513 (noDuplicateKeys!43 (t!210670 (removePairForKey!35 lt!884453 key!7256))))))

(assert (= (and d!712380 (not res!1048546)) b!2476847))

(assert (= (and b!2476847 res!1048547) b!2476848))

(declare-fun m!2844939 () Bool)

(assert (=> b!2476847 m!2844939))

(declare-fun m!2844941 () Bool)

(assert (=> b!2476848 m!2844941))

(assert (=> b!2476570 d!712380))

(declare-fun bs!467127 () Bool)

(declare-fun d!712382 () Bool)

(assert (= bs!467127 (and d!712382 b!2476570)))

(declare-fun lambda!93443 () Int)

(assert (=> bs!467127 (not (= lambda!93443 lambda!93401))))

(declare-fun bs!467128 () Bool)

(assert (= bs!467128 (and d!712382 d!712298)))

(assert (=> bs!467128 (not (= lambda!93443 lambda!93413))))

(declare-fun bs!467129 () Bool)

(assert (= bs!467129 (and d!712382 d!712308)))

(assert (=> bs!467129 (not (= lambda!93443 lambda!93422))))

(declare-fun bs!467130 () Bool)

(assert (= bs!467130 (and d!712382 b!2476803)))

(assert (=> bs!467130 (not (= lambda!93443 lambda!93441))))

(declare-fun bs!467131 () Bool)

(assert (= bs!467131 (and d!712382 b!2476805)))

(assert (=> bs!467131 (not (= lambda!93443 lambda!93442))))

(declare-fun bs!467132 () Bool)

(assert (= bs!467132 (and d!712382 d!712296)))

(assert (=> bs!467132 (= lambda!93443 lambda!93410)))

(declare-fun bs!467133 () Bool)

(assert (= bs!467133 (and d!712382 d!712338)))

(assert (=> bs!467133 (not (= lambda!93443 lambda!93432))))

(declare-fun bs!467134 () Bool)

(assert (= bs!467134 (and d!712382 b!2476693)))

(assert (=> bs!467134 (not (= lambda!93443 lambda!93426))))

(declare-fun bs!467135 () Bool)

(assert (= bs!467135 (and d!712382 d!712304)))

(assert (=> bs!467135 (not (= lambda!93443 lambda!93421))))

(declare-fun bs!467136 () Bool)

(assert (= bs!467136 (and d!712382 d!712300)))

(assert (=> bs!467136 (= lambda!93443 lambda!93416)))

(declare-fun bs!467137 () Bool)

(assert (= bs!467137 (and d!712382 d!712286)))

(assert (=> bs!467137 (not (= lambda!93443 lambda!93404))))

(declare-fun bs!467138 () Bool)

(assert (= bs!467138 (and d!712382 b!2476703)))

(assert (=> bs!467138 (not (= lambda!93443 lambda!93429))))

(assert (=> d!712382 true))

(assert (=> d!712382 (= (allKeysSameHashInMap!125 lt!884442 (hashF!5107 (_2!16711 lt!884455))) (forall!5922 (toList!1446 lt!884442) lambda!93443))))

(declare-fun bs!467139 () Bool)

(assert (= bs!467139 d!712382))

(declare-fun m!2844943 () Bool)

(assert (=> bs!467139 m!2844943))

(assert (=> b!2476571 d!712382))

(declare-fun bs!467140 () Bool)

(declare-fun b!2476849 () Bool)

(assert (= bs!467140 (and b!2476849 d!712382)))

(declare-fun lambda!93444 () Int)

(assert (=> bs!467140 (not (= lambda!93444 lambda!93443))))

(declare-fun bs!467141 () Bool)

(assert (= bs!467141 (and b!2476849 b!2476570)))

(assert (=> bs!467141 (= lambda!93444 lambda!93401)))

(declare-fun bs!467142 () Bool)

(assert (= bs!467142 (and b!2476849 d!712298)))

(assert (=> bs!467142 (= lambda!93444 lambda!93413)))

(declare-fun bs!467143 () Bool)

(assert (= bs!467143 (and b!2476849 d!712308)))

(assert (=> bs!467143 (= lambda!93444 lambda!93422)))

(declare-fun bs!467144 () Bool)

(assert (= bs!467144 (and b!2476849 b!2476803)))

(assert (=> bs!467144 (= lambda!93444 lambda!93441)))

(declare-fun bs!467145 () Bool)

(assert (= bs!467145 (and b!2476849 b!2476805)))

(assert (=> bs!467145 (= lambda!93444 lambda!93442)))

(declare-fun bs!467146 () Bool)

(assert (= bs!467146 (and b!2476849 d!712296)))

(assert (=> bs!467146 (not (= lambda!93444 lambda!93410))))

(declare-fun bs!467147 () Bool)

(assert (= bs!467147 (and b!2476849 d!712338)))

(assert (=> bs!467147 (= lambda!93444 lambda!93432)))

(declare-fun bs!467148 () Bool)

(assert (= bs!467148 (and b!2476849 b!2476693)))

(assert (=> bs!467148 (= lambda!93444 lambda!93426)))

(declare-fun bs!467149 () Bool)

(assert (= bs!467149 (and b!2476849 d!712304)))

(assert (=> bs!467149 (= lambda!93444 lambda!93421)))

(declare-fun bs!467150 () Bool)

(assert (= bs!467150 (and b!2476849 d!712300)))

(assert (=> bs!467150 (not (= lambda!93444 lambda!93416))))

(declare-fun bs!467151 () Bool)

(assert (= bs!467151 (and b!2476849 d!712286)))

(assert (=> bs!467151 (= lambda!93444 lambda!93404)))

(declare-fun bs!467152 () Bool)

(assert (= bs!467152 (and b!2476849 b!2476703)))

(assert (=> bs!467152 (= lambda!93444 lambda!93429)))

(declare-fun d!712384 () Bool)

(declare-fun res!1048548 () Bool)

(declare-fun e!1571514 () Bool)

(assert (=> d!712384 (=> (not res!1048548) (not e!1571514))))

(assert (=> d!712384 (= res!1048548 (valid!2470 (v!31197 (underlying!6740 (_2!16709 lt!884458)))))))

(assert (=> d!712384 (= (valid!2469 (_2!16709 lt!884458)) e!1571514)))

(declare-fun res!1048549 () Bool)

(assert (=> b!2476849 (=> (not res!1048549) (not e!1571514))))

(assert (=> b!2476849 (= res!1048549 (forall!5922 (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16709 lt!884458))))) lambda!93444))))

(declare-fun b!2476850 () Bool)

(assert (=> b!2476850 (= e!1571514 (allKeysSameHashInMap!125 (map!6014 (v!31197 (underlying!6740 (_2!16709 lt!884458)))) (hashF!5107 (_2!16709 lt!884458))))))

(assert (= (and d!712384 res!1048548) b!2476849))

(assert (= (and b!2476849 res!1048549) b!2476850))

(declare-fun m!2844945 () Bool)

(assert (=> d!712384 m!2844945))

(declare-fun m!2844947 () Bool)

(assert (=> b!2476849 m!2844947))

(declare-fun m!2844949 () Bool)

(assert (=> b!2476849 m!2844949))

(assert (=> b!2476850 m!2844947))

(assert (=> b!2476850 m!2844947))

(declare-fun m!2844951 () Bool)

(assert (=> b!2476850 m!2844951))

(assert (=> b!2476572 d!712384))

(declare-fun d!712386 () Bool)

(assert (=> d!712386 (= (eq!59 (ite c!394127 call!151644 call!151642) e!1571355) (= (content!3972 (toList!1445 (ite c!394127 call!151644 call!151642))) (content!3972 (toList!1445 e!1571355))))))

(declare-fun bs!467153 () Bool)

(assert (= bs!467153 d!712386))

(declare-fun m!2844953 () Bool)

(assert (=> bs!467153 m!2844953))

(declare-fun m!2844955 () Bool)

(assert (=> bs!467153 m!2844955))

(assert (=> bm!151634 d!712386))

(declare-fun d!712388 () Bool)

(declare-fun lt!884685 () ListMap!937)

(assert (=> d!712388 (invariantList!400 (toList!1445 lt!884685))))

(assert (=> d!712388 (= lt!884685 (extractMap!135 (toList!1446 (map!6014 (v!31197 (underlying!6740 (ite c!394127 thiss!47892 (_2!16709 lt!884458))))))))))

(assert (=> d!712388 (valid!2469 (ite c!394127 thiss!47892 (_2!16709 lt!884458)))))

(assert (=> d!712388 (= (map!6015 (ite c!394127 thiss!47892 (_2!16709 lt!884458))) lt!884685)))

(declare-fun bs!467154 () Bool)

(assert (= bs!467154 d!712388))

(declare-fun m!2844957 () Bool)

(assert (=> bs!467154 m!2844957))

(declare-fun m!2844959 () Bool)

(assert (=> bs!467154 m!2844959))

(declare-fun m!2844961 () Bool)

(assert (=> bs!467154 m!2844961))

(declare-fun m!2844963 () Bool)

(assert (=> bs!467154 m!2844963))

(assert (=> bm!151635 d!712388))

(declare-fun b!2476851 () Bool)

(declare-fun e!1571515 () Bool)

(declare-fun tp!792198 () Bool)

(assert (=> b!2476851 (= e!1571515 (and tp_is_empty!12029 tp_is_empty!12031 tp!792198))))

(assert (=> b!2476591 (= tp!792194 e!1571515)))

(assert (= (and b!2476591 ((_ is Cons!28935) (t!210670 mapValue!15216))) b!2476851))

(declare-fun e!1571516 () Bool)

(declare-fun b!2476852 () Bool)

(declare-fun tp!792199 () Bool)

(assert (=> b!2476852 (= e!1571516 (and tp_is_empty!12029 tp_is_empty!12031 tp!792199))))

(assert (=> b!2476593 (= tp!792196 e!1571516)))

(assert (= (and b!2476593 ((_ is Cons!28935) (t!210670 (minValue!3524 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))))))) b!2476852))

(declare-fun b!2476860 () Bool)

(declare-fun e!1571522 () Bool)

(declare-fun lt!884688 () MutLongMap!3266)

(assert (=> b!2476860 (= e!1571522 ((_ is LongMap!3266) lt!884688))))

(assert (=> b!2476860 (= lt!884688 (v!31197 (underlying!6740 (_2!16709 (remove!77 thiss!47892 key!7256)))))))

(declare-fun b!2476859 () Bool)

(declare-fun e!1571521 () Bool)

(assert (=> b!2476859 (= e!1571521 e!1571522)))

(assert (=> d!712278 (= true e!1571521)))

(assert (= b!2476859 b!2476860))

(assert (= (and d!712278 ((_ is HashMap!3176) (_2!16709 (remove!77 thiss!47892 key!7256)))) b!2476859))

(declare-fun condMapEmpty!15220 () Bool)

(declare-fun mapDefault!15220 () List!29035)

(assert (=> mapNonEmpty!15219 (= condMapEmpty!15220 (= mapRest!15219 ((as const (Array (_ BitVec 32) List!29035)) mapDefault!15220)))))

(declare-fun e!1571524 () Bool)

(declare-fun mapRes!15220 () Bool)

(assert (=> mapNonEmpty!15219 (= tp!792189 (and e!1571524 mapRes!15220))))

(declare-fun mapNonEmpty!15220 () Bool)

(declare-fun tp!792200 () Bool)

(declare-fun e!1571523 () Bool)

(assert (=> mapNonEmpty!15220 (= mapRes!15220 (and tp!792200 e!1571523))))

(declare-fun mapKey!15220 () (_ BitVec 32))

(declare-fun mapRest!15220 () (Array (_ BitVec 32) List!29035))

(declare-fun mapValue!15220 () List!29035)

(assert (=> mapNonEmpty!15220 (= mapRest!15219 (store mapRest!15220 mapKey!15220 mapValue!15220))))

(declare-fun tp!792201 () Bool)

(declare-fun b!2476861 () Bool)

(assert (=> b!2476861 (= e!1571523 (and tp_is_empty!12029 tp_is_empty!12031 tp!792201))))

(declare-fun mapIsEmpty!15220 () Bool)

(assert (=> mapIsEmpty!15220 mapRes!15220))

(declare-fun b!2476862 () Bool)

(declare-fun tp!792202 () Bool)

(assert (=> b!2476862 (= e!1571524 (and tp_is_empty!12029 tp_is_empty!12031 tp!792202))))

(assert (= (and mapNonEmpty!15219 condMapEmpty!15220) mapIsEmpty!15220))

(assert (= (and mapNonEmpty!15219 (not condMapEmpty!15220)) mapNonEmpty!15220))

(assert (= (and mapNonEmpty!15220 ((_ is Cons!28935) mapValue!15220)) b!2476861))

(assert (= (and mapNonEmpty!15219 ((_ is Cons!28935) mapDefault!15220)) b!2476862))

(declare-fun m!2844965 () Bool)

(assert (=> mapNonEmpty!15220 m!2844965))

(declare-fun b!2476863 () Bool)

(declare-fun tp!792203 () Bool)

(declare-fun e!1571525 () Bool)

(assert (=> b!2476863 (= e!1571525 (and tp_is_empty!12029 tp_is_empty!12031 tp!792203))))

(assert (=> b!2476585 (= tp!792190 e!1571525)))

(assert (= (and b!2476585 ((_ is Cons!28935) (t!210670 mapValue!15219))) b!2476863))

(declare-fun tp!792204 () Bool)

(declare-fun b!2476864 () Bool)

(declare-fun e!1571526 () Bool)

(assert (=> b!2476864 (= e!1571526 (and tp_is_empty!12029 tp_is_empty!12031 tp!792204))))

(assert (=> b!2476592 (= tp!792195 e!1571526)))

(assert (= (and b!2476592 ((_ is Cons!28935) (t!210670 (zeroValue!3524 (v!31196 (underlying!6739 (v!31197 (underlying!6740 thiss!47892)))))))) b!2476864))

(declare-fun e!1571527 () Bool)

(declare-fun b!2476865 () Bool)

(declare-fun tp!792205 () Bool)

(assert (=> b!2476865 (= e!1571527 (and tp_is_empty!12029 tp_is_empty!12031 tp!792205))))

(assert (=> b!2476594 (= tp!792197 e!1571527)))

(assert (= (and b!2476594 ((_ is Cons!28935) (t!210670 mapDefault!15216))) b!2476865))

(declare-fun e!1571528 () Bool)

(declare-fun b!2476866 () Bool)

(declare-fun tp!792206 () Bool)

(assert (=> b!2476866 (= e!1571528 (and tp_is_empty!12029 tp_is_empty!12031 tp!792206))))

(assert (=> b!2476586 (= tp!792191 e!1571528)))

(assert (= (and b!2476586 ((_ is Cons!28935) (t!210670 mapDefault!15219))) b!2476866))

(declare-fun b_lambda!75991 () Bool)

(assert (= b_lambda!75985 (or b!2476570 b_lambda!75991)))

(declare-fun bs!467155 () Bool)

(declare-fun d!712390 () Bool)

(assert (= bs!467155 (and d!712390 b!2476570)))

(assert (=> bs!467155 (= (dynLambda!12430 lambda!93401 (h!34338 (toList!1446 lt!884442))) (noDuplicateKeys!43 (_2!16710 (h!34338 (toList!1446 lt!884442)))))))

(declare-fun m!2844967 () Bool)

(assert (=> bs!467155 m!2844967))

(assert (=> b!2476637 d!712390))

(declare-fun b_lambda!75993 () Bool)

(assert (= b_lambda!75989 (or (and b!2476525 b_free!71921) b_lambda!75993)))

(declare-fun b_lambda!75995 () Bool)

(assert (= b_lambda!75987 (or b!2476570 b_lambda!75995)))

(declare-fun bs!467156 () Bool)

(declare-fun d!712392 () Bool)

(assert (= bs!467156 (and d!712392 b!2476570)))

(assert (=> bs!467156 (= (dynLambda!12430 lambda!93401 (tuple2!28339 lt!884445 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884445))) (noDuplicateKeys!43 (_2!16710 (tuple2!28339 lt!884445 (apply!6828 (v!31197 (underlying!6740 thiss!47892)) lt!884445)))))))

(declare-fun m!2844969 () Bool)

(assert (=> bs!467156 m!2844969))

(assert (=> d!712368 d!712392))

(declare-fun b_lambda!75997 () Bool)

(assert (= b_lambda!75983 (or b!2476570 b_lambda!75997)))

(declare-fun bs!467157 () Bool)

(declare-fun d!712394 () Bool)

(assert (= bs!467157 (and d!712394 b!2476570)))

(assert (=> bs!467157 (= (dynLambda!12430 lambda!93401 (h!34338 (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455))))))) (noDuplicateKeys!43 (_2!16710 (h!34338 (toList!1446 (map!6014 (v!31197 (underlying!6740 (_2!16711 lt!884455)))))))))))

(declare-fun m!2844971 () Bool)

(assert (=> bs!467157 m!2844971))

(assert (=> b!2476635 d!712394))

(check-sat (not b!2476784) (not bm!151674) (not d!712368) (not d!712312) (not b!2476777) (not b!2476664) (not d!712342) (not b!2476657) (not b!2476801) (not d!712358) (not b_next!72627) (not b!2476658) (not d!712290) (not d!712386) (not b!2476770) (not d!712374) (not b!2476851) (not bs!467155) (not b!2476800) (not b!2476663) (not d!712296) (not d!712350) (not b!2476636) (not b!2476805) (not b!2476773) (not b!2476763) (not bm!151660) (not d!712298) (not d!712338) (not d!712360) (not bm!151655) (not d!712314) (not bm!151661) (not bs!467157) (not b_next!72625) (not d!712328) (not b!2476638) (not b!2476799) (not b!2476772) (not b!2476703) (not b!2476802) (not b!2476797) tp_is_empty!12029 (not b!2476704) (not d!712306) b_and!188149 (not b!2476696) tp_is_empty!12031 (not d!712284) (not b!2476850) (not b!2476809) (not b!2476769) (not b!2476712) (not b!2476710) (not b!2476863) (not b!2476764) (not d!712336) (not bm!151679) (not b_lambda!75995) (not d!712340) (not mapNonEmpty!15220) (not d!712372) (not b!2476713) (not d!712346) (not d!712304) (not d!712300) (not b!2476620) (not d!712324) (not bm!151656) (not d!712356) (not b!2476599) (not b!2476662) (not bm!151676) (not b!2476622) (not bm!151657) (not b!2476719) (not b!2476847) (not b_lambda!75993) (not bm!151659) (not b!2476694) (not b!2476806) (not b!2476861) (not d!712366) (not b!2476767) (not b!2476720) (not b!2476865) (not d!712344) (not d!712334) (not d!712378) (not b!2476849) (not bm!151642) (not b!2476864) (not d!712308) (not b!2476630) (not b!2476848) (not b!2476718) (not b!2476715) (not d!712388) (not b!2476792) (not b!2476791) (not b!2476793) (not b!2476862) (not b!2476835) (not d!712370) (not b!2476659) (not d!712292) (not b!2476803) (not b!2476766) (not d!712326) (not b!2476852) (not d!712302) (not b!2476693) (not b!2476714) (not b!2476716) (not d!712320) (not b!2476628) (not tb!140353) (not b!2476841) (not b!2476836) (not b!2476866) (not b!2476828) (not b!2476833) (not b!2476609) (not d!712322) (not b!2476830) (not d!712364) (not b!2476768) (not b!2476660) (not d!712288) (not bm!151678) (not b_lambda!75997) (not bs!467156) (not b_lambda!75991) (not bm!151675) (not b!2476798) (not d!712294) (not b!2476804) (not bm!151658) b_and!188147 (not b!2476692) (not bm!151677) (not d!712362) (not b!2476688) (not d!712376) (not d!712286) (not b!2476629) (not bm!151685) (not d!712382) (not d!712384) (not d!712310) (not d!712354) (not bm!151684))
(check-sat b_and!188147 b_and!188149 (not b_next!72627) (not b_next!72625))
