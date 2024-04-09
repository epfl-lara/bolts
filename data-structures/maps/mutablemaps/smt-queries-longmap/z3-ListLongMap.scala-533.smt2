; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13440 () Bool)

(assert start!13440)

(declare-fun b!123098 () Bool)

(declare-fun b_free!2789 () Bool)

(declare-fun b_next!2789 () Bool)

(assert (=> b!123098 (= b_free!2789 (not b_next!2789))))

(declare-fun tp!10754 () Bool)

(declare-fun b_and!7565 () Bool)

(assert (=> b!123098 (= tp!10754 b_and!7565)))

(declare-fun b!123089 () Bool)

(declare-fun b_free!2791 () Bool)

(declare-fun b_next!2791 () Bool)

(assert (=> b!123089 (= b_free!2791 (not b_next!2791))))

(declare-fun tp!10756 () Bool)

(declare-fun b_and!7567 () Bool)

(assert (=> b!123089 (= tp!10756 b_and!7567)))

(declare-fun res!59817 () Bool)

(declare-fun e!80394 () Bool)

(assert (=> start!13440 (=> (not res!59817) (not e!80394))))

(declare-datatypes ((V!3395 0))(
  ( (V!3396 (val!1450 Int)) )
))
(declare-datatypes ((array!4632 0))(
  ( (array!4633 (arr!2194 (Array (_ BitVec 32) (_ BitVec 64))) (size!2456 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1062 0))(
  ( (ValueCellFull!1062 (v!3076 V!3395)) (EmptyCell!1062) )
))
(declare-datatypes ((array!4634 0))(
  ( (array!4635 (arr!2195 (Array (_ BitVec 32) ValueCell!1062)) (size!2457 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1032 0))(
  ( (LongMapFixedSize!1033 (defaultEntry!2749 Int) (mask!6983 (_ BitVec 32)) (extraKeys!2534 (_ BitVec 32)) (zeroValue!2614 V!3395) (minValue!2614 V!3395) (_size!565 (_ BitVec 32)) (_keys!4476 array!4632) (_values!2732 array!4634) (_vacant!565 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!824 0))(
  ( (Cell!825 (v!3077 LongMapFixedSize!1032)) )
))
(declare-datatypes ((LongMap!824 0))(
  ( (LongMap!825 (underlying!423 Cell!824)) )
))
(declare-fun thiss!992 () LongMap!824)

(declare-fun valid!486 (LongMap!824) Bool)

(assert (=> start!13440 (= res!59817 (valid!486 thiss!992))))

(assert (=> start!13440 e!80394))

(declare-fun e!80399 () Bool)

(assert (=> start!13440 e!80399))

(assert (=> start!13440 true))

(declare-fun e!80401 () Bool)

(assert (=> start!13440 e!80401))

(declare-fun b!123088 () Bool)

(declare-fun e!80402 () Bool)

(assert (=> b!123088 (= e!80399 e!80402)))

(declare-fun e!80398 () Bool)

(declare-fun tp_is_empty!2811 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1032)

(declare-fun array_inv!1339 (array!4632) Bool)

(declare-fun array_inv!1340 (array!4634) Bool)

(assert (=> b!123089 (= e!80401 (and tp!10756 tp_is_empty!2811 (array_inv!1339 (_keys!4476 newMap!16)) (array_inv!1340 (_values!2732 newMap!16)) e!80398))))

(declare-fun b!123090 () Bool)

(declare-fun res!59819 () Bool)

(assert (=> b!123090 (=> (not res!59819) (not e!80394))))

(assert (=> b!123090 (= res!59819 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6983 newMap!16)) (_size!565 (v!3077 (underlying!423 thiss!992)))))))

(declare-fun b!123091 () Bool)

(declare-fun e!80392 () Bool)

(assert (=> b!123091 (= e!80392 tp_is_empty!2811)))

(declare-fun b!123092 () Bool)

(declare-fun res!59818 () Bool)

(assert (=> b!123092 (=> (not res!59818) (not e!80394))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!123092 (= res!59818 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2456 (_keys!4476 (v!3077 (underlying!423 thiss!992)))))))))

(declare-fun mapIsEmpty!4389 () Bool)

(declare-fun mapRes!4390 () Bool)

(assert (=> mapIsEmpty!4389 mapRes!4390))

(declare-fun b!123093 () Bool)

(declare-fun e!80393 () Bool)

(assert (=> b!123093 (= e!80393 tp_is_empty!2811)))

(declare-fun mapIsEmpty!4390 () Bool)

(declare-fun mapRes!4389 () Bool)

(assert (=> mapIsEmpty!4390 mapRes!4389))

(declare-fun b!123094 () Bool)

(declare-fun e!80395 () Bool)

(assert (=> b!123094 (= e!80395 tp_is_empty!2811)))

(declare-fun b!123095 () Bool)

(declare-fun e!80396 () Bool)

(assert (=> b!123095 (= e!80396 (and e!80393 mapRes!4389))))

(declare-fun condMapEmpty!4390 () Bool)

(declare-fun mapDefault!4390 () ValueCell!1062)

(assert (=> b!123095 (= condMapEmpty!4390 (= (arr!2195 (_values!2732 (v!3077 (underlying!423 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1062)) mapDefault!4390)))))

(declare-fun mapNonEmpty!4389 () Bool)

(declare-fun tp!10753 () Bool)

(assert (=> mapNonEmpty!4389 (= mapRes!4389 (and tp!10753 e!80392))))

(declare-fun mapRest!4389 () (Array (_ BitVec 32) ValueCell!1062))

(declare-fun mapKey!4389 () (_ BitVec 32))

(declare-fun mapValue!4390 () ValueCell!1062)

(assert (=> mapNonEmpty!4389 (= (arr!2195 (_values!2732 (v!3077 (underlying!423 thiss!992)))) (store mapRest!4389 mapKey!4389 mapValue!4390))))

(declare-fun b!123096 () Bool)

(assert (=> b!123096 (= e!80398 (and e!80395 mapRes!4390))))

(declare-fun condMapEmpty!4389 () Bool)

(declare-fun mapDefault!4389 () ValueCell!1062)

(assert (=> b!123096 (= condMapEmpty!4389 (= (arr!2195 (_values!2732 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1062)) mapDefault!4389)))))

(declare-fun b!123097 () Bool)

(declare-fun res!59820 () Bool)

(assert (=> b!123097 (=> (not res!59820) (not e!80394))))

(declare-fun valid!487 (LongMapFixedSize!1032) Bool)

(assert (=> b!123097 (= res!59820 (valid!487 newMap!16))))

(declare-fun e!80397 () Bool)

(assert (=> b!123098 (= e!80397 (and tp!10754 tp_is_empty!2811 (array_inv!1339 (_keys!4476 (v!3077 (underlying!423 thiss!992)))) (array_inv!1340 (_values!2732 (v!3077 (underlying!423 thiss!992)))) e!80396))))

(declare-fun b!123099 () Bool)

(assert (=> b!123099 (= e!80402 e!80397)))

(declare-fun b!123100 () Bool)

(declare-fun e!80391 () Bool)

(assert (=> b!123100 (= e!80391 tp_is_empty!2811)))

(declare-fun b!123101 () Bool)

(assert (=> b!123101 (= e!80394 false)))

(declare-datatypes ((tuple2!2542 0))(
  ( (tuple2!2543 (_1!1281 (_ BitVec 64)) (_2!1281 V!3395)) )
))
(declare-datatypes ((List!1707 0))(
  ( (Nil!1704) (Cons!1703 (h!2304 tuple2!2542) (t!6018 List!1707)) )
))
(declare-datatypes ((ListLongMap!1667 0))(
  ( (ListLongMap!1668 (toList!849 List!1707)) )
))
(declare-fun lt!63438 () ListLongMap!1667)

(declare-fun map!1365 (LongMapFixedSize!1032) ListLongMap!1667)

(assert (=> b!123101 (= lt!63438 (map!1365 newMap!16))))

(declare-fun lt!63439 () ListLongMap!1667)

(declare-fun getCurrentListMap!522 (array!4632 array!4634 (_ BitVec 32) (_ BitVec 32) V!3395 V!3395 (_ BitVec 32) Int) ListLongMap!1667)

(assert (=> b!123101 (= lt!63439 (getCurrentListMap!522 (_keys!4476 (v!3077 (underlying!423 thiss!992))) (_values!2732 (v!3077 (underlying!423 thiss!992))) (mask!6983 (v!3077 (underlying!423 thiss!992))) (extraKeys!2534 (v!3077 (underlying!423 thiss!992))) (zeroValue!2614 (v!3077 (underlying!423 thiss!992))) (minValue!2614 (v!3077 (underlying!423 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2749 (v!3077 (underlying!423 thiss!992)))))))

(declare-fun mapNonEmpty!4390 () Bool)

(declare-fun tp!10755 () Bool)

(assert (=> mapNonEmpty!4390 (= mapRes!4390 (and tp!10755 e!80391))))

(declare-fun mapRest!4390 () (Array (_ BitVec 32) ValueCell!1062))

(declare-fun mapValue!4389 () ValueCell!1062)

(declare-fun mapKey!4390 () (_ BitVec 32))

(assert (=> mapNonEmpty!4390 (= (arr!2195 (_values!2732 newMap!16)) (store mapRest!4390 mapKey!4390 mapValue!4389))))

(assert (= (and start!13440 res!59817) b!123092))

(assert (= (and b!123092 res!59818) b!123097))

(assert (= (and b!123097 res!59820) b!123090))

(assert (= (and b!123090 res!59819) b!123101))

(assert (= (and b!123095 condMapEmpty!4390) mapIsEmpty!4390))

(assert (= (and b!123095 (not condMapEmpty!4390)) mapNonEmpty!4389))

(get-info :version)

(assert (= (and mapNonEmpty!4389 ((_ is ValueCellFull!1062) mapValue!4390)) b!123091))

(assert (= (and b!123095 ((_ is ValueCellFull!1062) mapDefault!4390)) b!123093))

(assert (= b!123098 b!123095))

(assert (= b!123099 b!123098))

(assert (= b!123088 b!123099))

(assert (= start!13440 b!123088))

(assert (= (and b!123096 condMapEmpty!4389) mapIsEmpty!4389))

(assert (= (and b!123096 (not condMapEmpty!4389)) mapNonEmpty!4390))

(assert (= (and mapNonEmpty!4390 ((_ is ValueCellFull!1062) mapValue!4389)) b!123100))

(assert (= (and b!123096 ((_ is ValueCellFull!1062) mapDefault!4389)) b!123094))

(assert (= b!123089 b!123096))

(assert (= start!13440 b!123089))

(declare-fun m!143267 () Bool)

(assert (=> b!123098 m!143267))

(declare-fun m!143269 () Bool)

(assert (=> b!123098 m!143269))

(declare-fun m!143271 () Bool)

(assert (=> mapNonEmpty!4390 m!143271))

(declare-fun m!143273 () Bool)

(assert (=> start!13440 m!143273))

(declare-fun m!143275 () Bool)

(assert (=> b!123089 m!143275))

(declare-fun m!143277 () Bool)

(assert (=> b!123089 m!143277))

(declare-fun m!143279 () Bool)

(assert (=> b!123097 m!143279))

(declare-fun m!143281 () Bool)

(assert (=> b!123101 m!143281))

(declare-fun m!143283 () Bool)

(assert (=> b!123101 m!143283))

(declare-fun m!143285 () Bool)

(assert (=> mapNonEmpty!4389 m!143285))

(check-sat (not mapNonEmpty!4390) (not b!123101) (not b_next!2791) (not b!123089) (not b!123098) (not start!13440) (not mapNonEmpty!4389) (not b!123097) (not b_next!2789) b_and!7565 tp_is_empty!2811 b_and!7567)
(check-sat b_and!7565 b_and!7567 (not b_next!2789) (not b_next!2791))
