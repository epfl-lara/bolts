; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80508 () Bool)

(assert start!80508)

(declare-fun b!945136 () Bool)

(declare-fun b_free!18095 () Bool)

(declare-fun b_next!18095 () Bool)

(assert (=> b!945136 (= b_free!18095 (not b_next!18095))))

(declare-fun tp!62800 () Bool)

(declare-fun b_and!29533 () Bool)

(assert (=> b!945136 (= tp!62800 b_and!29533)))

(declare-fun mapIsEmpty!32734 () Bool)

(declare-fun mapRes!32734 () Bool)

(assert (=> mapIsEmpty!32734 mapRes!32734))

(declare-fun b!945133 () Bool)

(declare-fun e!531606 () Bool)

(declare-datatypes ((V!32435 0))(
  ( (V!32436 (val!10352 Int)) )
))
(declare-datatypes ((ValueCell!9820 0))(
  ( (ValueCellFull!9820 (v!12885 V!32435)) (EmptyCell!9820) )
))
(declare-datatypes ((array!57198 0))(
  ( (array!57199 (arr!27519 (Array (_ BitVec 32) ValueCell!9820)) (size!27987 (_ BitVec 32))) )
))
(declare-datatypes ((array!57200 0))(
  ( (array!57201 (arr!27520 (Array (_ BitVec 32) (_ BitVec 64))) (size!27988 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4790 0))(
  ( (LongMapFixedSize!4791 (defaultEntry!5691 Int) (mask!27349 (_ BitVec 32)) (extraKeys!5423 (_ BitVec 32)) (zeroValue!5527 V!32435) (minValue!5527 V!32435) (_size!2450 (_ BitVec 32)) (_keys!10566 array!57200) (_values!5714 array!57198) (_vacant!2450 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4790)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13606 0))(
  ( (tuple2!13607 (_1!6813 (_ BitVec 64)) (_2!6813 V!32435)) )
))
(declare-datatypes ((List!19418 0))(
  ( (Nil!19415) (Cons!19414 (h!20565 tuple2!13606) (t!27745 List!19418)) )
))
(declare-datatypes ((ListLongMap!12317 0))(
  ( (ListLongMap!12318 (toList!6174 List!19418)) )
))
(declare-fun contains!5198 (ListLongMap!12317 (_ BitVec 64)) Bool)

(declare-fun map!13038 (LongMapFixedSize!4790) ListLongMap!12317)

(assert (=> b!945133 (= e!531606 (not (= (not (= (bvand (extraKeys!5423 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (contains!5198 (map!13038 thiss!1141) key!756))))))

(declare-fun b!945134 () Bool)

(declare-fun e!531609 () Bool)

(declare-fun tp_is_empty!20603 () Bool)

(assert (=> b!945134 (= e!531609 tp_is_empty!20603)))

(declare-fun b!945135 () Bool)

(declare-fun res!634929 () Bool)

(assert (=> b!945135 (=> (not res!634929) (not e!531606))))

(assert (=> b!945135 (= res!634929 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!531611 () Bool)

(declare-fun e!531607 () Bool)

(declare-fun array_inv!21324 (array!57200) Bool)

(declare-fun array_inv!21325 (array!57198) Bool)

(assert (=> b!945136 (= e!531607 (and tp!62800 tp_is_empty!20603 (array_inv!21324 (_keys!10566 thiss!1141)) (array_inv!21325 (_values!5714 thiss!1141)) e!531611))))

(declare-fun res!634930 () Bool)

(assert (=> start!80508 (=> (not res!634930) (not e!531606))))

(declare-fun valid!1806 (LongMapFixedSize!4790) Bool)

(assert (=> start!80508 (= res!634930 (valid!1806 thiss!1141))))

(assert (=> start!80508 e!531606))

(assert (=> start!80508 e!531607))

(assert (=> start!80508 true))

(declare-fun mapNonEmpty!32734 () Bool)

(declare-fun tp!62799 () Bool)

(assert (=> mapNonEmpty!32734 (= mapRes!32734 (and tp!62799 e!531609))))

(declare-fun mapValue!32734 () ValueCell!9820)

(declare-fun mapKey!32734 () (_ BitVec 32))

(declare-fun mapRest!32734 () (Array (_ BitVec 32) ValueCell!9820))

(assert (=> mapNonEmpty!32734 (= (arr!27519 (_values!5714 thiss!1141)) (store mapRest!32734 mapKey!32734 mapValue!32734))))

(declare-fun b!945137 () Bool)

(declare-fun e!531610 () Bool)

(assert (=> b!945137 (= e!531611 (and e!531610 mapRes!32734))))

(declare-fun condMapEmpty!32734 () Bool)

(declare-fun mapDefault!32734 () ValueCell!9820)

