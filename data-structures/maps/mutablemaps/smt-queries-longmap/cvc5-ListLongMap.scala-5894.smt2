; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76150 () Bool)

(assert start!76150)

(declare-fun b!894219 () Bool)

(declare-fun b_free!15865 () Bool)

(declare-fun b_next!15865 () Bool)

(assert (=> b!894219 (= b_free!15865 (not b_next!15865))))

(declare-fun tp!55580 () Bool)

(declare-fun b_and!26169 () Bool)

(assert (=> b!894219 (= tp!55580 b_and!26169)))

(declare-fun mapIsEmpty!28860 () Bool)

(declare-fun mapRes!28860 () Bool)

(assert (=> mapIsEmpty!28860 mapRes!28860))

(declare-fun b!894216 () Bool)

(declare-fun res!605342 () Bool)

(declare-fun e!499486 () Bool)

(assert (=> b!894216 (=> (not res!605342) (not e!499486))))

(declare-fun key!785 () (_ BitVec 64))

(declare-datatypes ((array!52360 0))(
  ( (array!52361 (arr!25178 (Array (_ BitVec 32) (_ BitVec 64))) (size!25625 (_ BitVec 32))) )
))
(declare-datatypes ((V!29223 0))(
  ( (V!29224 (val!9147 Int)) )
))
(declare-datatypes ((ValueCell!8615 0))(
  ( (ValueCellFull!8615 (v!11631 V!29223)) (EmptyCell!8615) )
))
(declare-datatypes ((array!52362 0))(
  ( (array!52363 (arr!25179 (Array (_ BitVec 32) ValueCell!8615)) (size!25626 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4246 0))(
  ( (LongMapFixedSize!4247 (defaultEntry!5335 Int) (mask!25885 (_ BitVec 32)) (extraKeys!5031 (_ BitVec 32)) (zeroValue!5135 V!29223) (minValue!5135 V!29223) (_size!2178 (_ BitVec 32)) (_keys!10028 array!52360) (_values!5322 array!52362) (_vacant!2178 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4246)

(assert (=> b!894216 (= res!605342 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!5031 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (or (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!5031 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!894217 () Bool)

(declare-fun e!499487 () Bool)

(declare-fun tp_is_empty!18193 () Bool)

(assert (=> b!894217 (= e!499487 tp_is_empty!18193)))

(declare-fun b!894218 () Bool)

(declare-fun res!605341 () Bool)

(assert (=> b!894218 (=> (not res!605341) (not e!499486))))

(declare-fun contains!4378 (LongMapFixedSize!4246 (_ BitVec 64)) Bool)

(assert (=> b!894218 (= res!605341 (contains!4378 thiss!1181 key!785))))

(declare-fun e!499488 () Bool)

(declare-fun e!499485 () Bool)

(declare-fun array_inv!19750 (array!52360) Bool)

(declare-fun array_inv!19751 (array!52362) Bool)

(assert (=> b!894219 (= e!499488 (and tp!55580 tp_is_empty!18193 (array_inv!19750 (_keys!10028 thiss!1181)) (array_inv!19751 (_values!5322 thiss!1181)) e!499485))))

(declare-fun mapNonEmpty!28860 () Bool)

(declare-fun tp!55581 () Bool)

(assert (=> mapNonEmpty!28860 (= mapRes!28860 (and tp!55581 e!499487))))

(declare-fun mapRest!28860 () (Array (_ BitVec 32) ValueCell!8615))

(declare-fun mapValue!28860 () ValueCell!8615)

(declare-fun mapKey!28860 () (_ BitVec 32))

(assert (=> mapNonEmpty!28860 (= (arr!25179 (_values!5322 thiss!1181)) (store mapRest!28860 mapKey!28860 mapValue!28860))))

(declare-fun b!894221 () Bool)

(declare-fun dynLambda!1301 (Int (_ BitVec 64)) V!29223)

(declare-datatypes ((Option!458 0))(
  ( (Some!457 (v!11632 V!29223)) (None!456) )
))
(declare-fun get!13273 (Option!458) V!29223)

(declare-datatypes ((tuple2!12046 0))(
  ( (tuple2!12047 (_1!6033 (_ BitVec 64)) (_2!6033 V!29223)) )
))
(declare-datatypes ((List!17883 0))(
  ( (Nil!17880) (Cons!17879 (h!19012 tuple2!12046) (t!25226 List!17883)) )
))
(declare-fun getValueByKey!452 (List!17883 (_ BitVec 64)) Option!458)

(declare-datatypes ((ListLongMap!10757 0))(
  ( (ListLongMap!10758 (toList!5394 List!17883)) )
))
(declare-fun map!12223 (LongMapFixedSize!4246) ListLongMap!10757)

(assert (=> b!894221 (= e!499486 (not (= (dynLambda!1301 (defaultEntry!5335 thiss!1181) key!785) (get!13273 (getValueByKey!452 (toList!5394 (map!12223 thiss!1181)) key!785)))))))

(declare-fun b!894222 () Bool)

(declare-fun e!499490 () Bool)

(assert (=> b!894222 (= e!499490 tp_is_empty!18193)))

(declare-fun res!605340 () Bool)

(assert (=> start!76150 (=> (not res!605340) (not e!499486))))

(declare-fun valid!1631 (LongMapFixedSize!4246) Bool)

(assert (=> start!76150 (= res!605340 (valid!1631 thiss!1181))))

(assert (=> start!76150 e!499486))

(assert (=> start!76150 e!499488))

(assert (=> start!76150 true))

(declare-fun b!894220 () Bool)

(assert (=> b!894220 (= e!499485 (and e!499490 mapRes!28860))))

(declare-fun condMapEmpty!28860 () Bool)

(declare-fun mapDefault!28860 () ValueCell!8615)

