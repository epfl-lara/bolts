; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11112 () Bool)

(assert start!11112)

(declare-fun b!90474 () Bool)

(declare-fun b_free!2293 () Bool)

(declare-fun b_next!2293 () Bool)

(assert (=> b!90474 (= b_free!2293 (not b_next!2293))))

(declare-fun tp!9129 () Bool)

(declare-fun b_and!5437 () Bool)

(assert (=> b!90474 (= tp!9129 b_and!5437)))

(declare-fun b!90463 () Bool)

(declare-fun b_free!2295 () Bool)

(declare-fun b_next!2295 () Bool)

(assert (=> b!90463 (= b_free!2295 (not b_next!2295))))

(declare-fun tp!9128 () Bool)

(declare-fun b_and!5439 () Bool)

(assert (=> b!90463 (= tp!9128 b_and!5439)))

(declare-fun mapNonEmpty!3507 () Bool)

(declare-fun mapRes!3507 () Bool)

(declare-fun tp!9127 () Bool)

(declare-fun e!58919 () Bool)

(assert (=> mapNonEmpty!3507 (= mapRes!3507 (and tp!9127 e!58919))))

(declare-datatypes ((V!3065 0))(
  ( (V!3066 (val!1326 Int)) )
))
(declare-datatypes ((array!4092 0))(
  ( (array!4093 (arr!1946 (Array (_ BitVec 32) (_ BitVec 64))) (size!2193 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!938 0))(
  ( (ValueCellFull!938 (v!2699 V!3065)) (EmptyCell!938) )
))
(declare-datatypes ((array!4094 0))(
  ( (array!4095 (arr!1947 (Array (_ BitVec 32) ValueCell!938)) (size!2194 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!784 0))(
  ( (LongMapFixedSize!785 (defaultEntry!2393 Int) (mask!6447 (_ BitVec 32)) (extraKeys!2224 (_ BitVec 32)) (zeroValue!2281 V!3065) (minValue!2281 V!3065) (_size!441 (_ BitVec 32)) (_keys!4073 array!4092) (_values!2376 array!4094) (_vacant!441 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!588 0))(
  ( (Cell!589 (v!2700 LongMapFixedSize!784)) )
))
(declare-datatypes ((LongMap!588 0))(
  ( (LongMap!589 (underlying!305 Cell!588)) )
))
(declare-fun thiss!992 () LongMap!588)

(declare-fun mapValue!3507 () ValueCell!938)

(declare-fun mapKey!3508 () (_ BitVec 32))

(declare-fun mapRest!3508 () (Array (_ BitVec 32) ValueCell!938))

(assert (=> mapNonEmpty!3507 (= (arr!1947 (_values!2376 (v!2700 (underlying!305 thiss!992)))) (store mapRest!3508 mapKey!3508 mapValue!3507))))

(declare-fun b!90460 () Bool)

(declare-fun e!58926 () Bool)

(declare-fun e!58932 () Bool)

(assert (=> b!90460 (= e!58926 e!58932)))

(declare-fun mapNonEmpty!3508 () Bool)

(declare-fun mapRes!3508 () Bool)

(declare-fun tp!9130 () Bool)

(declare-fun e!58924 () Bool)

(assert (=> mapNonEmpty!3508 (= mapRes!3508 (and tp!9130 e!58924))))

(declare-fun mapRest!3507 () (Array (_ BitVec 32) ValueCell!938))

(declare-fun mapValue!3508 () ValueCell!938)

(declare-fun newMap!16 () LongMapFixedSize!784)

(declare-fun mapKey!3507 () (_ BitVec 32))

(assert (=> mapNonEmpty!3508 (= (arr!1947 (_values!2376 newMap!16)) (store mapRest!3507 mapKey!3507 mapValue!3508))))

(declare-fun b!90461 () Bool)

(declare-fun e!58931 () Bool)

(declare-fun e!58927 () Bool)

(assert (=> b!90461 (= e!58931 e!58927)))

(declare-fun res!46152 () Bool)

(assert (=> b!90461 (=> (not res!46152) (not e!58927))))

(declare-datatypes ((tuple2!2262 0))(
  ( (tuple2!2263 (_1!1141 Bool) (_2!1141 LongMapFixedSize!784)) )
))
(declare-fun lt!43710 () tuple2!2262)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!90461 (= res!46152 (and (_1!1141 lt!43710) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2706 0))(
  ( (Unit!2707) )
))
(declare-fun lt!43699 () Unit!2706)

(declare-fun e!58920 () Unit!2706)

(assert (=> b!90461 (= lt!43699 e!58920)))

(declare-fun c!15052 () Bool)

(declare-datatypes ((tuple2!2264 0))(
  ( (tuple2!2265 (_1!1142 (_ BitVec 64)) (_2!1142 V!3065)) )
))
(declare-datatypes ((List!1569 0))(
  ( (Nil!1566) (Cons!1565 (h!2157 tuple2!2264) (t!5367 List!1569)) )
))
(declare-datatypes ((ListLongMap!1503 0))(
  ( (ListLongMap!1504 (toList!767 List!1569)) )
))
(declare-fun lt!43703 () ListLongMap!1503)

(declare-fun contains!776 (ListLongMap!1503 (_ BitVec 64)) Bool)

(assert (=> b!90461 (= c!15052 (contains!776 lt!43703 (select (arr!1946 (_keys!4073 (v!2700 (underlying!305 thiss!992)))) from!355)))))

(declare-fun lt!43712 () V!3065)

(declare-fun update!128 (LongMapFixedSize!784 (_ BitVec 64) V!3065) tuple2!2262)

(assert (=> b!90461 (= lt!43710 (update!128 newMap!16 (select (arr!1946 (_keys!4073 (v!2700 (underlying!305 thiss!992)))) from!355) lt!43712))))

(declare-fun b!90462 () Bool)

(declare-fun e!58922 () Bool)

(assert (=> b!90462 (= e!58922 e!58926)))

(declare-fun res!46154 () Bool)

(declare-fun e!58928 () Bool)

(assert (=> start!11112 (=> (not res!46154) (not e!58928))))

(declare-fun valid!345 (LongMap!588) Bool)

(assert (=> start!11112 (= res!46154 (valid!345 thiss!992))))

(assert (=> start!11112 e!58928))

(assert (=> start!11112 e!58922))

(assert (=> start!11112 true))

(declare-fun e!58935 () Bool)

(assert (=> start!11112 e!58935))

(declare-fun tp_is_empty!2563 () Bool)

(declare-fun e!58929 () Bool)

(declare-fun array_inv!1167 (array!4092) Bool)

(declare-fun array_inv!1168 (array!4094) Bool)

(assert (=> b!90463 (= e!58935 (and tp!9128 tp_is_empty!2563 (array_inv!1167 (_keys!4073 newMap!16)) (array_inv!1168 (_values!2376 newMap!16)) e!58929))))

(declare-fun mapIsEmpty!3507 () Bool)

(assert (=> mapIsEmpty!3507 mapRes!3508))

(declare-fun b!90464 () Bool)

(assert (=> b!90464 (= e!58927 (not true))))

(declare-fun lt!43718 () ListLongMap!1503)

(declare-fun map!1211 (LongMapFixedSize!784) ListLongMap!1503)

(assert (=> b!90464 (= lt!43718 (map!1211 (_2!1141 lt!43710)))))

(declare-fun lt!43706 () ListLongMap!1503)

(declare-fun getCurrentListMap!449 (array!4092 array!4094 (_ BitVec 32) (_ BitVec 32) V!3065 V!3065 (_ BitVec 32) Int) ListLongMap!1503)

(assert (=> b!90464 (= lt!43706 (getCurrentListMap!449 (_keys!4073 (v!2700 (underlying!305 thiss!992))) (_values!2376 (v!2700 (underlying!305 thiss!992))) (mask!6447 (v!2700 (underlying!305 thiss!992))) (extraKeys!2224 (v!2700 (underlying!305 thiss!992))) (zeroValue!2281 (v!2700 (underlying!305 thiss!992))) (minValue!2281 (v!2700 (underlying!305 thiss!992))) from!355 (defaultEntry!2393 (v!2700 (underlying!305 thiss!992)))))))

(declare-fun lt!43708 () ListLongMap!1503)

(declare-fun lt!43714 () ListLongMap!1503)

(declare-fun lt!43715 () tuple2!2264)

(declare-fun lt!43707 () tuple2!2264)

(declare-fun +!124 (ListLongMap!1503 tuple2!2264) ListLongMap!1503)

(assert (=> b!90464 (= (+!124 lt!43714 lt!43715) (+!124 (+!124 lt!43708 lt!43715) lt!43707))))

(assert (=> b!90464 (= lt!43715 (tuple2!2265 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2281 (v!2700 (underlying!305 thiss!992)))))))

(declare-fun lt!43711 () Unit!2706)

(declare-fun addCommutativeForDiffKeys!43 (ListLongMap!1503 (_ BitVec 64) V!3065 (_ BitVec 64) V!3065) Unit!2706)

(assert (=> b!90464 (= lt!43711 (addCommutativeForDiffKeys!43 lt!43708 (select (arr!1946 (_keys!4073 (v!2700 (underlying!305 thiss!992)))) from!355) lt!43712 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2281 (v!2700 (underlying!305 thiss!992)))))))

(declare-fun lt!43700 () ListLongMap!1503)

(assert (=> b!90464 (= lt!43700 lt!43714)))

(assert (=> b!90464 (= lt!43714 (+!124 lt!43708 lt!43707))))

(declare-fun lt!43713 () ListLongMap!1503)

(declare-fun lt!43716 () tuple2!2264)

(assert (=> b!90464 (= lt!43700 (+!124 lt!43713 lt!43716))))

(declare-fun lt!43709 () ListLongMap!1503)

(assert (=> b!90464 (= lt!43708 (+!124 lt!43709 lt!43716))))

(assert (=> b!90464 (= lt!43716 (tuple2!2265 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2281 (v!2700 (underlying!305 thiss!992)))))))

(assert (=> b!90464 (= lt!43713 (+!124 lt!43709 lt!43707))))

(assert (=> b!90464 (= lt!43707 (tuple2!2265 (select (arr!1946 (_keys!4073 (v!2700 (underlying!305 thiss!992)))) from!355) lt!43712))))

(declare-fun lt!43705 () Unit!2706)

(assert (=> b!90464 (= lt!43705 (addCommutativeForDiffKeys!43 lt!43709 (select (arr!1946 (_keys!4073 (v!2700 (underlying!305 thiss!992)))) from!355) lt!43712 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2281 (v!2700 (underlying!305 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!88 (array!4092 array!4094 (_ BitVec 32) (_ BitVec 32) V!3065 V!3065 (_ BitVec 32) Int) ListLongMap!1503)

(assert (=> b!90464 (= lt!43709 (getCurrentListMapNoExtraKeys!88 (_keys!4073 (v!2700 (underlying!305 thiss!992))) (_values!2376 (v!2700 (underlying!305 thiss!992))) (mask!6447 (v!2700 (underlying!305 thiss!992))) (extraKeys!2224 (v!2700 (underlying!305 thiss!992))) (zeroValue!2281 (v!2700 (underlying!305 thiss!992))) (minValue!2281 (v!2700 (underlying!305 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2393 (v!2700 (underlying!305 thiss!992)))))))

(declare-fun b!90465 () Bool)

(declare-fun e!58921 () Bool)

(assert (=> b!90465 (= e!58929 (and e!58921 mapRes!3508))))

(declare-fun condMapEmpty!3508 () Bool)

(declare-fun mapDefault!3507 () ValueCell!938)

