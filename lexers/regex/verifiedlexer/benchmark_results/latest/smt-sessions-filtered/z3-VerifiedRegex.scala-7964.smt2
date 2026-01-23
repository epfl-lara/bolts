; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413648 () Bool)

(assert start!413648)

(declare-fun b!4305797 () Bool)

(declare-fun b_free!128395 () Bool)

(declare-fun b_next!129099 () Bool)

(assert (=> b!4305797 (= b_free!128395 (not b_next!129099))))

(declare-fun tp!1323246 () Bool)

(declare-fun b_and!339795 () Bool)

(assert (=> b!4305797 (= tp!1323246 b_and!339795)))

(declare-fun b!4305788 () Bool)

(declare-fun b_free!128397 () Bool)

(declare-fun b_next!129101 () Bool)

(assert (=> b!4305788 (= b_free!128397 (not b_next!129101))))

(declare-fun tp!1323245 () Bool)

(declare-fun b_and!339797 () Bool)

(assert (=> b!4305788 (= tp!1323245 b_and!339797)))

(declare-fun b!4305782 () Bool)

(declare-fun e!2677293 () Bool)

(declare-fun e!2677296 () Bool)

(assert (=> b!4305782 (= e!2677293 e!2677296)))

(declare-fun res!1764808 () Bool)

(assert (=> b!4305782 (=> (not res!1764808) (not e!2677296))))

(declare-datatypes ((K!9269 0))(
  ( (K!9270 (val!15673 Int)) )
))
(declare-datatypes ((V!9471 0))(
  ( (V!9472 (val!15674 Int)) )
))
(declare-datatypes ((tuple2!46320 0))(
  ( (tuple2!46321 (_1!26439 K!9269) (_2!26439 V!9471)) )
))
(declare-datatypes ((List!48221 0))(
  ( (Nil!48097) (Cons!48097 (h!53524 tuple2!46320) (t!355006 List!48221)) )
))
(declare-fun lt!1526813 () List!48221)

(declare-fun lt!1526816 () (_ BitVec 64))

(declare-datatypes ((array!16578 0))(
  ( (array!16579 (arr!7403 (Array (_ BitVec 32) (_ BitVec 64))) (size!35442 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4525 0))(
  ( (HashableExt!4524 (__x!29852 Int)) )
))
(declare-datatypes ((array!16580 0))(
  ( (array!16581 (arr!7404 (Array (_ BitVec 32) List!48221)) (size!35443 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9218 0))(
  ( (LongMapFixedSize!9219 (defaultEntry!4994 Int) (mask!13142 (_ BitVec 32)) (extraKeys!4858 (_ BitVec 32)) (zeroValue!4868 List!48221) (minValue!4868 List!48221) (_size!9261 (_ BitVec 32)) (_keys!4909 array!16578) (_values!4890 array!16580) (_vacant!4670 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18245 0))(
  ( (Cell!18246 (v!42154 LongMapFixedSize!9218)) )
))
(declare-datatypes ((MutLongMap!4609 0))(
  ( (LongMap!4609 (underlying!9447 Cell!18245)) (MutLongMapExt!4608 (__x!29853 Int)) )
))
(declare-datatypes ((Cell!18247 0))(
  ( (Cell!18248 (v!42155 MutLongMap!4609)) )
))
(declare-datatypes ((MutableMap!4515 0))(
  ( (MutableMapExt!4514 (__x!29854 Int)) (HashMap!4515 (underlying!9448 Cell!18247) (hashF!6599 Hashable!4525) (_size!9262 (_ BitVec 32)) (defaultValue!4686 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4515)

(declare-datatypes ((tuple2!46322 0))(
  ( (tuple2!46323 (_1!26440 Bool) (_2!26440 MutLongMap!4609)) )
))
(declare-fun update!390 (MutLongMap!4609 (_ BitVec 64) List!48221) tuple2!46322)

(assert (=> b!4305782 (= res!1764808 (_1!26440 (update!390 (v!42155 (underlying!9448 thiss!42308)) lt!1526816 lt!1526813)))))

(declare-fun lt!1526819 () List!48221)

(declare-fun v!9179 () V!9471)

(declare-fun key!2048 () K!9269)

(assert (=> b!4305782 (= lt!1526813 (Cons!48097 (tuple2!46321 key!2048 v!9179) lt!1526819))))

(declare-fun e!2677300 () List!48221)

(assert (=> b!4305782 (= lt!1526819 e!2677300)))

(declare-fun c!732079 () Bool)

(declare-fun contains!10033 (MutLongMap!4609 (_ BitVec 64)) Bool)

(assert (=> b!4305782 (= c!732079 (contains!10033 (v!42155 (underlying!9448 thiss!42308)) lt!1526816))))

(declare-fun hash!930 (Hashable!4525 K!9269) (_ BitVec 64))

(assert (=> b!4305782 (= lt!1526816 (hash!930 (hashF!6599 thiss!42308) key!2048))))

(declare-fun mapIsEmpty!20629 () Bool)

(declare-fun mapRes!20629 () Bool)

(assert (=> mapIsEmpty!20629 mapRes!20629))

(declare-fun b!4305783 () Bool)

(declare-fun e!2677301 () Bool)

(declare-fun e!2677294 () Bool)

(assert (=> b!4305783 (= e!2677301 e!2677294)))

(declare-fun b!4305785 () Bool)

(declare-fun e!2677298 () Bool)

(assert (=> b!4305785 (= e!2677298 false)))

(declare-fun b!4305786 () Bool)

(assert (=> b!4305786 (= e!2677296 e!2677298)))

(declare-fun res!1764803 () Bool)

(assert (=> b!4305786 (=> (not res!1764803) (not e!2677298))))

(declare-datatypes ((tuple2!46324 0))(
  ( (tuple2!46325 (_1!26441 (_ BitVec 64)) (_2!26441 List!48221)) )
))
(declare-datatypes ((List!48222 0))(
  ( (Nil!48098) (Cons!48098 (h!53525 tuple2!46324) (t!355007 List!48222)) )
))
(declare-datatypes ((ListLongMap!927 0))(
  ( (ListLongMap!928 (toList!2317 List!48222)) )
))
(declare-fun lt!1526815 () ListLongMap!927)

(declare-fun lambda!132452 () Int)

(declare-fun forall!8692 (List!48222 Int) Bool)

(assert (=> b!4305786 (= res!1764803 (forall!8692 (toList!2317 lt!1526815) lambda!132452))))

(declare-datatypes ((Unit!67106 0))(
  ( (Unit!67107) )
))
(declare-fun lt!1526811 () Unit!67106)

(declare-fun e!2677299 () Unit!67106)

(assert (=> b!4305786 (= lt!1526811 e!2677299)))

(declare-fun c!732080 () Bool)

(declare-fun isEmpty!28061 (List!48221) Bool)

(assert (=> b!4305786 (= c!732080 (not (isEmpty!28061 lt!1526819)))))

(declare-fun b!4305787 () Bool)

(assert (=> b!4305787 (= e!2677300 Nil!48097)))

(declare-fun e!2677291 () Bool)

(declare-fun e!2677297 () Bool)

(assert (=> b!4305788 (= e!2677291 (and e!2677297 tp!1323245))))

(declare-fun b!4305789 () Bool)

(declare-fun res!1764804 () Bool)

(declare-fun e!2677292 () Bool)

(assert (=> b!4305789 (=> (not res!1764804) (not e!2677292))))

(declare-fun valid!3595 (MutableMap!4515) Bool)

(assert (=> b!4305789 (= res!1764804 (valid!3595 thiss!42308))))

(declare-fun b!4305790 () Bool)

(declare-fun e!2677290 () Bool)

(declare-fun lt!1526812 () MutLongMap!4609)

(get-info :version)

(assert (=> b!4305790 (= e!2677297 (and e!2677290 ((_ is LongMap!4609) lt!1526812)))))

(assert (=> b!4305790 (= lt!1526812 (v!42155 (underlying!9448 thiss!42308)))))

(declare-fun b!4305791 () Bool)

(declare-fun Unit!67108 () Unit!67106)

(assert (=> b!4305791 (= e!2677299 Unit!67108)))

(declare-fun mapNonEmpty!20629 () Bool)

(declare-fun tp!1323243 () Bool)

(declare-fun tp!1323242 () Bool)

(assert (=> mapNonEmpty!20629 (= mapRes!20629 (and tp!1323243 tp!1323242))))

(declare-fun mapValue!20629 () List!48221)

(declare-fun mapRest!20629 () (Array (_ BitVec 32) List!48221))

(declare-fun mapKey!20629 () (_ BitVec 32))

(assert (=> mapNonEmpty!20629 (= (arr!7404 (_values!4890 (v!42154 (underlying!9447 (v!42155 (underlying!9448 thiss!42308)))))) (store mapRest!20629 mapKey!20629 mapValue!20629))))

(declare-fun b!4305792 () Bool)

(assert (=> b!4305792 (= e!2677292 e!2677293)))

(declare-fun res!1764806 () Bool)

(assert (=> b!4305792 (=> (not res!1764806) (not e!2677293))))

(declare-fun contains!10034 (MutableMap!4515 K!9269) Bool)

(assert (=> b!4305792 (= res!1764806 (not (contains!10034 thiss!42308 key!2048)))))

(declare-fun map!10071 (MutLongMap!4609) ListLongMap!927)

(assert (=> b!4305792 (= lt!1526815 (map!10071 (v!42155 (underlying!9448 thiss!42308))))))

(declare-datatypes ((ListMap!1601 0))(
  ( (ListMap!1602 (toList!2318 List!48221)) )
))
(declare-fun lt!1526814 () ListMap!1601)

(declare-fun map!10072 (MutableMap!4515) ListMap!1601)

(assert (=> b!4305792 (= lt!1526814 (map!10072 thiss!42308))))

(declare-fun b!4305793 () Bool)

(declare-fun e!2677302 () Bool)

(declare-fun tp!1323248 () Bool)

(assert (=> b!4305793 (= e!2677302 (and tp!1323248 mapRes!20629))))

(declare-fun condMapEmpty!20629 () Bool)

(declare-fun mapDefault!20629 () List!48221)

(assert (=> b!4305793 (= condMapEmpty!20629 (= (arr!7404 (_values!4890 (v!42154 (underlying!9447 (v!42155 (underlying!9448 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48221)) mapDefault!20629)))))

(declare-fun b!4305794 () Bool)

(declare-fun res!1764805 () Bool)

(assert (=> b!4305794 (=> (not res!1764805) (not e!2677298))))

(declare-fun noDuplicateKeys!188 (List!48221) Bool)

(assert (=> b!4305794 (= res!1764805 (noDuplicateKeys!188 lt!1526813))))

(declare-fun b!4305784 () Bool)

(declare-fun lt!1526817 () Unit!67106)

(assert (=> b!4305784 (= e!2677299 lt!1526817)))

(declare-fun lt!1526818 () Unit!67106)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!148 (List!48222 (_ BitVec 64) List!48221 Hashable!4525) Unit!67106)

(assert (=> b!4305784 (= lt!1526818 (lemmaInLongMapAllKeySameHashThenForTuple!148 (toList!2317 lt!1526815) lt!1526816 lt!1526819 (hashF!6599 thiss!42308)))))

(declare-fun allKeysSameHash!157 (List!48221 (_ BitVec 64) Hashable!4525) Bool)

(assert (=> b!4305784 (allKeysSameHash!157 lt!1526819 lt!1526816 (hashF!6599 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!142 (List!48221 K!9269 (_ BitVec 64) Hashable!4525) Unit!67106)

(assert (=> b!4305784 (= lt!1526817 (lemmaRemovePairForKeyPreservesHash!142 lt!1526819 key!2048 lt!1526816 (hashF!6599 thiss!42308)))))

(declare-fun removePairForKey!182 (List!48221 K!9269) List!48221)

(assert (=> b!4305784 (allKeysSameHash!157 (removePairForKey!182 lt!1526819 key!2048) lt!1526816 (hashF!6599 thiss!42308))))

(declare-fun res!1764807 () Bool)

(assert (=> start!413648 (=> (not res!1764807) (not e!2677292))))

(assert (=> start!413648 (= res!1764807 ((_ is HashMap!4515) thiss!42308))))

(assert (=> start!413648 e!2677292))

(assert (=> start!413648 e!2677291))

(declare-fun tp_is_empty!23557 () Bool)

(assert (=> start!413648 tp_is_empty!23557))

(declare-fun tp_is_empty!23559 () Bool)

(assert (=> start!413648 tp_is_empty!23559))

(declare-fun b!4305795 () Bool)

(assert (=> b!4305795 (= e!2677290 e!2677301)))

(declare-fun b!4305796 () Bool)

(declare-fun res!1764802 () Bool)

(assert (=> b!4305796 (=> (not res!1764802) (not e!2677298))))

(declare-fun allKeysSameHashInMap!307 (ListLongMap!927 Hashable!4525) Bool)

(assert (=> b!4305796 (= res!1764802 (allKeysSameHashInMap!307 lt!1526815 (hashF!6599 thiss!42308)))))

(declare-fun tp!1323247 () Bool)

(declare-fun tp!1323244 () Bool)

(declare-fun array_inv!5309 (array!16578) Bool)

(declare-fun array_inv!5310 (array!16580) Bool)

(assert (=> b!4305797 (= e!2677294 (and tp!1323246 tp!1323247 tp!1323244 (array_inv!5309 (_keys!4909 (v!42154 (underlying!9447 (v!42155 (underlying!9448 thiss!42308)))))) (array_inv!5310 (_values!4890 (v!42154 (underlying!9447 (v!42155 (underlying!9448 thiss!42308)))))) e!2677302))))

(declare-fun b!4305798 () Bool)

(declare-fun apply!10956 (MutLongMap!4609 (_ BitVec 64)) List!48221)

(assert (=> b!4305798 (= e!2677300 (apply!10956 (v!42155 (underlying!9448 thiss!42308)) lt!1526816))))

(assert (= (and start!413648 res!1764807) b!4305789))

(assert (= (and b!4305789 res!1764804) b!4305792))

(assert (= (and b!4305792 res!1764806) b!4305782))

(assert (= (and b!4305782 c!732079) b!4305798))

(assert (= (and b!4305782 (not c!732079)) b!4305787))

(assert (= (and b!4305782 res!1764808) b!4305786))

(assert (= (and b!4305786 c!732080) b!4305784))

(assert (= (and b!4305786 (not c!732080)) b!4305791))

(assert (= (and b!4305786 res!1764803) b!4305796))

(assert (= (and b!4305796 res!1764802) b!4305794))

(assert (= (and b!4305794 res!1764805) b!4305785))

(assert (= (and b!4305793 condMapEmpty!20629) mapIsEmpty!20629))

(assert (= (and b!4305793 (not condMapEmpty!20629)) mapNonEmpty!20629))

(assert (= b!4305797 b!4305793))

(assert (= b!4305783 b!4305797))

(assert (= b!4305795 b!4305783))

(assert (= (and b!4305790 ((_ is LongMap!4609) (v!42155 (underlying!9448 thiss!42308)))) b!4305795))

(assert (= b!4305788 b!4305790))

(assert (= (and start!413648 ((_ is HashMap!4515) thiss!42308)) b!4305788))

(declare-fun m!4898439 () Bool)

(assert (=> b!4305789 m!4898439))

(declare-fun m!4898441 () Bool)

(assert (=> b!4305786 m!4898441))

(declare-fun m!4898443 () Bool)

(assert (=> b!4305786 m!4898443))

(declare-fun m!4898445 () Bool)

(assert (=> b!4305797 m!4898445))

(declare-fun m!4898447 () Bool)

(assert (=> b!4305797 m!4898447))

(declare-fun m!4898449 () Bool)

(assert (=> b!4305796 m!4898449))

(declare-fun m!4898451 () Bool)

(assert (=> b!4305794 m!4898451))

(declare-fun m!4898453 () Bool)

(assert (=> b!4305798 m!4898453))

(declare-fun m!4898455 () Bool)

(assert (=> mapNonEmpty!20629 m!4898455))

(declare-fun m!4898457 () Bool)

(assert (=> b!4305784 m!4898457))

(declare-fun m!4898459 () Bool)

(assert (=> b!4305784 m!4898459))

(declare-fun m!4898461 () Bool)

(assert (=> b!4305784 m!4898461))

(assert (=> b!4305784 m!4898459))

(declare-fun m!4898463 () Bool)

(assert (=> b!4305784 m!4898463))

(declare-fun m!4898465 () Bool)

(assert (=> b!4305784 m!4898465))

(declare-fun m!4898467 () Bool)

(assert (=> b!4305792 m!4898467))

(declare-fun m!4898469 () Bool)

(assert (=> b!4305792 m!4898469))

(declare-fun m!4898471 () Bool)

(assert (=> b!4305792 m!4898471))

(declare-fun m!4898473 () Bool)

(assert (=> b!4305782 m!4898473))

(declare-fun m!4898475 () Bool)

(assert (=> b!4305782 m!4898475))

(declare-fun m!4898477 () Bool)

(assert (=> b!4305782 m!4898477))

(check-sat (not b!4305798) (not b!4305797) (not b_next!129101) (not b!4305794) (not b!4305792) tp_is_empty!23559 (not b!4305782) (not b!4305784) (not b!4305796) tp_is_empty!23557 (not b_next!129099) b_and!339795 (not b!4305793) (not b!4305789) b_and!339797 (not b!4305786) (not mapNonEmpty!20629))
(check-sat b_and!339795 b_and!339797 (not b_next!129101) (not b_next!129099))
