; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80474 () Bool)

(assert start!80474)

(declare-fun b!944914 () Bool)

(declare-fun b_free!18089 () Bool)

(declare-fun b_next!18089 () Bool)

(assert (=> b!944914 (= b_free!18089 (not b_next!18089))))

(declare-fun tp!62777 () Bool)

(declare-fun b_and!29525 () Bool)

(assert (=> b!944914 (= tp!62777 b_and!29525)))

(declare-fun tp_is_empty!20597 () Bool)

(declare-fun e!531454 () Bool)

(declare-fun e!531456 () Bool)

(declare-datatypes ((V!32427 0))(
  ( (V!32428 (val!10349 Int)) )
))
(declare-datatypes ((ValueCell!9817 0))(
  ( (ValueCellFull!9817 (v!12881 V!32427)) (EmptyCell!9817) )
))
(declare-datatypes ((array!57184 0))(
  ( (array!57185 (arr!27513 (Array (_ BitVec 32) ValueCell!9817)) (size!27980 (_ BitVec 32))) )
))
(declare-datatypes ((array!57186 0))(
  ( (array!57187 (arr!27514 (Array (_ BitVec 32) (_ BitVec 64))) (size!27981 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4784 0))(
  ( (LongMapFixedSize!4785 (defaultEntry!5687 Int) (mask!27342 (_ BitVec 32)) (extraKeys!5419 (_ BitVec 32)) (zeroValue!5523 V!32427) (minValue!5523 V!32427) (_size!2447 (_ BitVec 32)) (_keys!10561 array!57186) (_values!5710 array!57184) (_vacant!2447 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4784)

(declare-fun array_inv!21320 (array!57186) Bool)

(declare-fun array_inv!21321 (array!57184) Bool)

(assert (=> b!944914 (= e!531454 (and tp!62777 tp_is_empty!20597 (array_inv!21320 (_keys!10561 thiss!1141)) (array_inv!21321 (_values!5710 thiss!1141)) e!531456))))

(declare-fun b!944915 () Bool)

(declare-fun e!531451 () Bool)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13602 0))(
  ( (tuple2!13603 (_1!6811 (_ BitVec 64)) (_2!6811 V!32427)) )
))
(declare-datatypes ((List!19415 0))(
  ( (Nil!19412) (Cons!19411 (h!20562 tuple2!13602) (t!27740 List!19415)) )
))
(declare-datatypes ((ListLongMap!12313 0))(
  ( (ListLongMap!12314 (toList!6172 List!19415)) )
))
(declare-fun contains!5195 (ListLongMap!12313 (_ BitVec 64)) Bool)

(declare-fun map!13034 (LongMapFixedSize!4784) ListLongMap!12313)

(assert (=> b!944915 (= e!531451 (not (= (not (= (bvand (extraKeys!5419 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (contains!5195 (map!13034 thiss!1141) key!756))))))

(declare-fun b!944916 () Bool)

(declare-fun res!634836 () Bool)

(assert (=> b!944916 (=> (not res!634836) (not e!531451))))

(assert (=> b!944916 (= res!634836 (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!32721 () Bool)

(declare-fun mapRes!32721 () Bool)

(assert (=> mapIsEmpty!32721 mapRes!32721))

(declare-fun b!944917 () Bool)

(declare-fun e!531455 () Bool)

(assert (=> b!944917 (= e!531456 (and e!531455 mapRes!32721))))

(declare-fun condMapEmpty!32721 () Bool)

(declare-fun mapDefault!32721 () ValueCell!9817)

