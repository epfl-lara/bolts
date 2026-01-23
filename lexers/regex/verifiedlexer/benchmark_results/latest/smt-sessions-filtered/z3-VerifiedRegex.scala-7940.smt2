; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413188 () Bool)

(assert start!413188)

(declare-fun b!4302526 () Bool)

(declare-fun b_free!128203 () Bool)

(declare-fun b_next!128907 () Bool)

(assert (=> b!4302526 (= b_free!128203 (not b_next!128907))))

(declare-fun tp!1322105 () Bool)

(declare-fun b_and!339589 () Bool)

(assert (=> b!4302526 (= tp!1322105 b_and!339589)))

(declare-fun b!4302529 () Bool)

(declare-fun b_free!128205 () Bool)

(declare-fun b_next!128909 () Bool)

(assert (=> b!4302529 (= b_free!128205 (not b_next!128909))))

(declare-fun tp!1322104 () Bool)

(declare-fun b_and!339591 () Bool)

(assert (=> b!4302529 (= tp!1322104 b_and!339591)))

(declare-fun b!4302515 () Bool)

(declare-fun e!2674767 () Bool)

(declare-datatypes ((K!9149 0))(
  ( (K!9150 (val!15577 Int)) )
))
(declare-datatypes ((V!9351 0))(
  ( (V!9352 (val!15578 Int)) )
))
(declare-datatypes ((tuple2!46086 0))(
  ( (tuple2!46087 (_1!26322 K!9149) (_2!26322 V!9351)) )
))
(declare-datatypes ((List!48132 0))(
  ( (Nil!48008) (Cons!48008 (h!53429 tuple2!46086) (t!354903 List!48132)) )
))
(declare-fun lt!1524109 () List!48132)

(declare-fun noDuplicateKeys!166 (List!48132) Bool)

(assert (=> b!4302515 (= e!2674767 (noDuplicateKeys!166 lt!1524109))))

(declare-fun b!4302516 () Bool)

(declare-fun e!2674777 () Bool)

(declare-fun e!2674771 () Bool)

(assert (=> b!4302516 (= e!2674777 e!2674771)))

(declare-fun res!1763357 () Bool)

(assert (=> b!4302516 (=> res!1763357 e!2674771)))

(declare-fun lt!1524097 () List!48132)

(declare-fun lt!1524108 () List!48132)

(declare-fun key!2048 () K!9149)

(declare-fun removePairForKey!160 (List!48132 K!9149) List!48132)

(assert (=> b!4302516 (= res!1763357 (not (= lt!1524108 (removePairForKey!160 lt!1524097 key!2048))))))

(declare-fun lambda!132125 () Int)

(declare-datatypes ((tuple2!46088 0))(
  ( (tuple2!46089 (_1!26323 (_ BitVec 64)) (_2!26323 List!48132)) )
))
(declare-fun lt!1524101 () tuple2!46088)

(declare-datatypes ((Unit!66991 0))(
  ( (Unit!66992) )
))
(declare-fun lt!1524096 () Unit!66991)

(declare-datatypes ((List!48133 0))(
  ( (Nil!48009) (Cons!48009 (h!53430 tuple2!46088) (t!354904 List!48133)) )
))
(declare-datatypes ((ListLongMap!855 0))(
  ( (ListLongMap!856 (toList!2247 List!48133)) )
))
(declare-fun lt!1524110 () ListLongMap!855)

(declare-fun forallContained!1477 (List!48133 Int tuple2!46088) Unit!66991)

(assert (=> b!4302516 (= lt!1524096 (forallContained!1477 (toList!2247 lt!1524110) lambda!132125 lt!1524101))))

(declare-fun contains!9926 (List!48133 tuple2!46088) Bool)

(assert (=> b!4302516 (contains!9926 (toList!2247 lt!1524110) lt!1524101)))

(declare-fun lt!1524105 () (_ BitVec 64))

(assert (=> b!4302516 (= lt!1524101 (tuple2!46089 lt!1524105 lt!1524097))))

(declare-fun lt!1524111 () Unit!66991)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!121 (List!48133 (_ BitVec 64) List!48132) Unit!66991)

(assert (=> b!4302516 (= lt!1524111 (lemmaGetValueByKeyImpliesContainsTuple!121 (toList!2247 lt!1524110) lt!1524105 lt!1524097))))

(declare-fun apply!10906 (ListLongMap!855 (_ BitVec 64)) List!48132)

(assert (=> b!4302516 (= lt!1524097 (apply!10906 lt!1524110 lt!1524105))))

(declare-fun b!4302517 () Bool)

(declare-fun e!2674768 () Bool)

(declare-fun e!2674778 () Bool)

(declare-datatypes ((array!16368 0))(
  ( (array!16369 (arr!7307 (Array (_ BitVec 32) (_ BitVec 64))) (size!35346 (_ BitVec 32))) )
))
(declare-datatypes ((array!16370 0))(
  ( (array!16371 (arr!7308 (Array (_ BitVec 32) List!48132)) (size!35347 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9122 0))(
  ( (LongMapFixedSize!9123 (defaultEntry!4946 Int) (mask!13070 (_ BitVec 32)) (extraKeys!4810 (_ BitVec 32)) (zeroValue!4820 List!48132) (minValue!4820 List!48132) (_size!9165 (_ BitVec 32)) (_keys!4861 array!16368) (_values!4842 array!16370) (_vacant!4622 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18053 0))(
  ( (Cell!18054 (v!42010 LongMapFixedSize!9122)) )
))
(declare-datatypes ((MutLongMap!4561 0))(
  ( (LongMap!4561 (underlying!9351 Cell!18053)) (MutLongMapExt!4560 (__x!29708 Int)) )
))
(declare-fun lt!1524106 () MutLongMap!4561)

(get-info :version)

(assert (=> b!4302517 (= e!2674768 (and e!2674778 ((_ is LongMap!4561) lt!1524106)))))

(declare-datatypes ((Hashable!4477 0))(
  ( (HashableExt!4476 (__x!29709 Int)) )
))
(declare-datatypes ((Cell!18055 0))(
  ( (Cell!18056 (v!42011 MutLongMap!4561)) )
))
(declare-datatypes ((MutableMap!4467 0))(
  ( (MutableMapExt!4466 (__x!29710 Int)) (HashMap!4467 (underlying!9352 Cell!18055) (hashF!6515 Hashable!4477) (_size!9166 (_ BitVec 32)) (defaultValue!4638 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4467)

(assert (=> b!4302517 (= lt!1524106 (v!42011 (underlying!9352 thiss!42308)))))

(declare-fun b!4302519 () Bool)

(declare-fun e!2674773 () Bool)

(declare-fun e!2674774 () Bool)

(assert (=> b!4302519 (= e!2674773 e!2674774)))

(declare-fun b!4302520 () Bool)

(declare-fun e!2674765 () Bool)

(declare-fun tp!1322101 () Bool)

(declare-fun mapRes!20458 () Bool)

(assert (=> b!4302520 (= e!2674765 (and tp!1322101 mapRes!20458))))

(declare-fun condMapEmpty!20458 () Bool)

(declare-fun mapDefault!20458 () List!48132)

(assert (=> b!4302520 (= condMapEmpty!20458 (= (arr!7308 (_values!4842 (v!42010 (underlying!9351 (v!42011 (underlying!9352 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48132)) mapDefault!20458)))))

(declare-fun b!4302521 () Bool)

(declare-fun res!1763360 () Bool)

(assert (=> b!4302521 (=> res!1763360 e!2674777)))

(declare-fun contains!9927 (ListLongMap!855 (_ BitVec 64)) Bool)

(assert (=> b!4302521 (= res!1763360 (not (contains!9927 lt!1524110 lt!1524105)))))

(declare-fun mapNonEmpty!20458 () Bool)

(declare-fun tp!1322103 () Bool)

(declare-fun tp!1322100 () Bool)

(assert (=> mapNonEmpty!20458 (= mapRes!20458 (and tp!1322103 tp!1322100))))

(declare-fun mapKey!20458 () (_ BitVec 32))

(declare-fun mapValue!20458 () List!48132)

(declare-fun mapRest!20458 () (Array (_ BitVec 32) List!48132))

(assert (=> mapNonEmpty!20458 (= (arr!7308 (_values!4842 (v!42010 (underlying!9351 (v!42011 (underlying!9352 thiss!42308)))))) (store mapRest!20458 mapKey!20458 mapValue!20458))))

(declare-fun b!4302522 () Bool)

(declare-fun e!2674766 () Bool)

(declare-fun e!2674770 () Bool)

(assert (=> b!4302522 (= e!2674766 e!2674770)))

(declare-fun res!1763359 () Bool)

(assert (=> b!4302522 (=> (not res!1763359) (not e!2674770))))

(declare-datatypes ((tuple2!46090 0))(
  ( (tuple2!46091 (_1!26324 Bool) (_2!26324 MutLongMap!4561)) )
))
(declare-fun update!358 (MutLongMap!4561 (_ BitVec 64) List!48132) tuple2!46090)

(assert (=> b!4302522 (= res!1763359 (_1!26324 (update!358 (v!42011 (underlying!9352 thiss!42308)) lt!1524105 lt!1524109)))))

(declare-fun v!9179 () V!9351)

(assert (=> b!4302522 (= lt!1524109 (Cons!48008 (tuple2!46087 key!2048 v!9179) lt!1524108))))

(declare-fun lt!1524107 () List!48132)

(assert (=> b!4302522 (= lt!1524108 (removePairForKey!160 lt!1524107 key!2048))))

(declare-fun apply!10907 (MutLongMap!4561 (_ BitVec 64)) List!48132)

(assert (=> b!4302522 (= lt!1524107 (apply!10907 (v!42011 (underlying!9352 thiss!42308)) lt!1524105))))

(declare-fun hash!866 (Hashable!4477 K!9149) (_ BitVec 64))

(assert (=> b!4302522 (= lt!1524105 (hash!866 (hashF!6515 thiss!42308) key!2048))))

(declare-fun b!4302523 () Bool)

(declare-fun res!1763361 () Bool)

(declare-fun e!2674775 () Bool)

(assert (=> b!4302523 (=> (not res!1763361) (not e!2674775))))

(declare-fun valid!3545 (MutableMap!4467) Bool)

(assert (=> b!4302523 (= res!1763361 (valid!3545 thiss!42308))))

(declare-fun b!4302524 () Bool)

(assert (=> b!4302524 (= e!2674775 e!2674766)))

(declare-fun res!1763367 () Bool)

(assert (=> b!4302524 (=> (not res!1763367) (not e!2674766))))

(declare-fun contains!9928 (MutableMap!4467 K!9149) Bool)

(assert (=> b!4302524 (= res!1763367 (contains!9928 thiss!42308 key!2048))))

(declare-fun map!9971 (MutLongMap!4561) ListLongMap!855)

(assert (=> b!4302524 (= lt!1524110 (map!9971 (v!42011 (underlying!9352 thiss!42308))))))

(declare-datatypes ((ListMap!1533 0))(
  ( (ListMap!1534 (toList!2248 List!48132)) )
))
(declare-fun lt!1524100 () ListMap!1533)

(declare-fun map!9972 (MutableMap!4467) ListMap!1533)

(assert (=> b!4302524 (= lt!1524100 (map!9972 thiss!42308))))

(declare-fun b!4302525 () Bool)

(declare-fun res!1763366 () Bool)

(assert (=> b!4302525 (=> res!1763366 e!2674777)))

(declare-fun allKeysSameHashInMap!285 (ListLongMap!855 Hashable!4477) Bool)

(assert (=> b!4302525 (= res!1763366 (not (allKeysSameHashInMap!285 lt!1524110 (hashF!6515 thiss!42308))))))

(declare-fun tp!1322102 () Bool)

(declare-fun tp!1322099 () Bool)

(declare-fun array_inv!5241 (array!16368) Bool)

(declare-fun array_inv!5242 (array!16370) Bool)

(assert (=> b!4302526 (= e!2674774 (and tp!1322105 tp!1322102 tp!1322099 (array_inv!5241 (_keys!4861 (v!42010 (underlying!9351 (v!42011 (underlying!9352 thiss!42308)))))) (array_inv!5242 (_values!4842 (v!42010 (underlying!9351 (v!42011 (underlying!9352 thiss!42308)))))) e!2674765))))

(declare-fun b!4302527 () Bool)

(declare-fun res!1763364 () Bool)

(assert (=> b!4302527 (=> res!1763364 e!2674777)))

(declare-fun contains!9929 (ListMap!1533 K!9149) Bool)

(declare-fun extractMap!281 (List!48133) ListMap!1533)

(assert (=> b!4302527 (= res!1763364 (not (contains!9929 (extractMap!281 (toList!2247 lt!1524110)) key!2048)))))

(declare-fun b!4302528 () Bool)

(assert (=> b!4302528 (= e!2674778 e!2674773)))

(declare-fun b!4302518 () Bool)

(assert (=> b!4302518 (= e!2674770 (not e!2674777))))

(declare-fun res!1763365 () Bool)

(assert (=> b!4302518 (=> res!1763365 e!2674777)))

(declare-fun forall!8658 (List!48133 Int) Bool)

(assert (=> b!4302518 (= res!1763365 (not (forall!8658 (toList!2247 lt!1524110) lambda!132125)))))

(declare-fun e!2674772 () Bool)

(assert (=> b!4302518 e!2674772))

(declare-fun res!1763363 () Bool)

(assert (=> b!4302518 (=> (not res!1763363) (not e!2674772))))

(declare-fun lt!1524103 () ListLongMap!855)

(assert (=> b!4302518 (= res!1763363 (forall!8658 (toList!2247 lt!1524103) lambda!132125))))

(declare-fun +!189 (ListLongMap!855 tuple2!46088) ListLongMap!855)

(assert (=> b!4302518 (= lt!1524103 (+!189 lt!1524110 (tuple2!46089 lt!1524105 lt!1524109)))))

(declare-fun lt!1524104 () Unit!66991)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!107 (ListLongMap!855 (_ BitVec 64) List!48132 Hashable!4477) Unit!66991)

(assert (=> b!4302518 (= lt!1524104 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!107 lt!1524110 lt!1524105 lt!1524109 (hashF!6515 thiss!42308)))))

(assert (=> b!4302518 e!2674767))

(declare-fun res!1763369 () Bool)

(assert (=> b!4302518 (=> (not res!1763369) (not e!2674767))))

(assert (=> b!4302518 (= res!1763369 (noDuplicateKeys!166 lt!1524108))))

(declare-fun lt!1524099 () Unit!66991)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!139 (List!48132 K!9149) Unit!66991)

(assert (=> b!4302518 (= lt!1524099 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!139 lt!1524107 key!2048))))

(declare-fun allKeysSameHash!136 (List!48132 (_ BitVec 64) Hashable!4477) Bool)

(assert (=> b!4302518 (allKeysSameHash!136 lt!1524108 lt!1524105 (hashF!6515 thiss!42308))))

(declare-fun lt!1524098 () Unit!66991)

(declare-fun lemmaRemovePairForKeyPreservesHash!122 (List!48132 K!9149 (_ BitVec 64) Hashable!4477) Unit!66991)

(assert (=> b!4302518 (= lt!1524098 (lemmaRemovePairForKeyPreservesHash!122 lt!1524107 key!2048 lt!1524105 (hashF!6515 thiss!42308)))))

(assert (=> b!4302518 (allKeysSameHash!136 lt!1524107 lt!1524105 (hashF!6515 thiss!42308))))

(declare-fun lt!1524102 () Unit!66991)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!127 (List!48133 (_ BitVec 64) List!48132 Hashable!4477) Unit!66991)

(assert (=> b!4302518 (= lt!1524102 (lemmaInLongMapAllKeySameHashThenForTuple!127 (toList!2247 lt!1524110) lt!1524105 lt!1524107 (hashF!6515 thiss!42308)))))

(declare-fun res!1763358 () Bool)

(assert (=> start!413188 (=> (not res!1763358) (not e!2674775))))

(assert (=> start!413188 (= res!1763358 ((_ is HashMap!4467) thiss!42308))))

(assert (=> start!413188 e!2674775))

(declare-fun e!2674769 () Bool)

(assert (=> start!413188 e!2674769))

(declare-fun tp_is_empty!23383 () Bool)

(assert (=> start!413188 tp_is_empty!23383))

(declare-fun tp_is_empty!23385 () Bool)

(assert (=> start!413188 tp_is_empty!23385))

(declare-fun mapIsEmpty!20458 () Bool)

(assert (=> mapIsEmpty!20458 mapRes!20458))

(assert (=> b!4302529 (= e!2674769 (and e!2674768 tp!1322104))))

(declare-fun b!4302530 () Bool)

(declare-fun res!1763368 () Bool)

(assert (=> b!4302530 (=> (not res!1763368) (not e!2674767))))

(declare-fun containsKey!253 (List!48132 K!9149) Bool)

(assert (=> b!4302530 (= res!1763368 (not (containsKey!253 lt!1524108 key!2048)))))

(declare-fun b!4302531 () Bool)

(assert (=> b!4302531 (= e!2674772 (allKeysSameHashInMap!285 lt!1524103 (hashF!6515 thiss!42308)))))

(declare-fun b!4302532 () Bool)

(assert (=> b!4302532 (= e!2674771 (forall!8658 (toList!2247 lt!1524110) lambda!132125))))

(declare-fun b!4302533 () Bool)

(declare-fun res!1763362 () Bool)

(assert (=> b!4302533 (=> res!1763362 e!2674777)))

(assert (=> b!4302533 (= res!1763362 (not (allKeysSameHash!136 lt!1524109 lt!1524105 (hashF!6515 thiss!42308))))))

(assert (= (and start!413188 res!1763358) b!4302523))

(assert (= (and b!4302523 res!1763361) b!4302524))

(assert (= (and b!4302524 res!1763367) b!4302522))

(assert (= (and b!4302522 res!1763359) b!4302518))

(assert (= (and b!4302518 res!1763369) b!4302530))

(assert (= (and b!4302530 res!1763368) b!4302515))

(assert (= (and b!4302518 res!1763363) b!4302531))

(assert (= (and b!4302518 (not res!1763365)) b!4302525))

(assert (= (and b!4302525 (not res!1763366)) b!4302533))

(assert (= (and b!4302533 (not res!1763362)) b!4302527))

(assert (= (and b!4302527 (not res!1763364)) b!4302521))

(assert (= (and b!4302521 (not res!1763360)) b!4302516))

(assert (= (and b!4302516 (not res!1763357)) b!4302532))

(assert (= (and b!4302520 condMapEmpty!20458) mapIsEmpty!20458))

(assert (= (and b!4302520 (not condMapEmpty!20458)) mapNonEmpty!20458))

(assert (= b!4302526 b!4302520))

(assert (= b!4302519 b!4302526))

(assert (= b!4302528 b!4302519))

(assert (= (and b!4302517 ((_ is LongMap!4561) (v!42011 (underlying!9352 thiss!42308)))) b!4302528))

(assert (= b!4302529 b!4302517))

(assert (= (and start!413188 ((_ is HashMap!4467) thiss!42308)) b!4302529))

(declare-fun m!4894603 () Bool)

(assert (=> b!4302525 m!4894603))

(declare-fun m!4894605 () Bool)

(assert (=> b!4302524 m!4894605))

(declare-fun m!4894607 () Bool)

(assert (=> b!4302524 m!4894607))

(declare-fun m!4894609 () Bool)

(assert (=> b!4302524 m!4894609))

(declare-fun m!4894611 () Bool)

(assert (=> b!4302515 m!4894611))

(declare-fun m!4894613 () Bool)

(assert (=> b!4302522 m!4894613))

(declare-fun m!4894615 () Bool)

(assert (=> b!4302522 m!4894615))

(declare-fun m!4894617 () Bool)

(assert (=> b!4302522 m!4894617))

(declare-fun m!4894619 () Bool)

(assert (=> b!4302522 m!4894619))

(declare-fun m!4894621 () Bool)

(assert (=> b!4302533 m!4894621))

(declare-fun m!4894623 () Bool)

(assert (=> b!4302532 m!4894623))

(declare-fun m!4894625 () Bool)

(assert (=> b!4302518 m!4894625))

(declare-fun m!4894627 () Bool)

(assert (=> b!4302518 m!4894627))

(declare-fun m!4894629 () Bool)

(assert (=> b!4302518 m!4894629))

(declare-fun m!4894631 () Bool)

(assert (=> b!4302518 m!4894631))

(declare-fun m!4894633 () Bool)

(assert (=> b!4302518 m!4894633))

(declare-fun m!4894635 () Bool)

(assert (=> b!4302518 m!4894635))

(assert (=> b!4302518 m!4894623))

(declare-fun m!4894637 () Bool)

(assert (=> b!4302518 m!4894637))

(declare-fun m!4894639 () Bool)

(assert (=> b!4302518 m!4894639))

(declare-fun m!4894641 () Bool)

(assert (=> b!4302518 m!4894641))

(declare-fun m!4894643 () Bool)

(assert (=> mapNonEmpty!20458 m!4894643))

(declare-fun m!4894645 () Bool)

(assert (=> b!4302527 m!4894645))

(assert (=> b!4302527 m!4894645))

(declare-fun m!4894647 () Bool)

(assert (=> b!4302527 m!4894647))

(declare-fun m!4894649 () Bool)

(assert (=> b!4302531 m!4894649))

(declare-fun m!4894651 () Bool)

(assert (=> b!4302526 m!4894651))

(declare-fun m!4894653 () Bool)

(assert (=> b!4302526 m!4894653))

(declare-fun m!4894655 () Bool)

(assert (=> b!4302516 m!4894655))

(declare-fun m!4894657 () Bool)

(assert (=> b!4302516 m!4894657))

(declare-fun m!4894659 () Bool)

(assert (=> b!4302516 m!4894659))

(declare-fun m!4894661 () Bool)

(assert (=> b!4302516 m!4894661))

(declare-fun m!4894663 () Bool)

(assert (=> b!4302516 m!4894663))

(declare-fun m!4894665 () Bool)

(assert (=> b!4302521 m!4894665))

(declare-fun m!4894667 () Bool)

(assert (=> b!4302523 m!4894667))

(declare-fun m!4894669 () Bool)

(assert (=> b!4302530 m!4894669))

(check-sat (not b!4302515) (not b!4302521) (not b!4302523) (not b!4302532) (not mapNonEmpty!20458) (not b!4302520) b_and!339589 (not b_next!128909) (not b!4302526) (not b!4302527) tp_is_empty!23383 (not b!4302522) (not b!4302516) (not b_next!128907) (not b!4302531) (not b!4302524) (not b!4302530) (not b!4302518) b_and!339591 (not b!4302525) tp_is_empty!23385 (not b!4302533))
(check-sat b_and!339589 b_and!339591 (not b_next!128909) (not b_next!128907))
