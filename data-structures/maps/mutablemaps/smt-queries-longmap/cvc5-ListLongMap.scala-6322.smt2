; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81324 () Bool)

(assert start!81324)

(declare-fun b!950756 () Bool)

(declare-fun b_free!18253 () Bool)

(declare-fun b_next!18253 () Bool)

(assert (=> b!950756 (= b_free!18253 (not b_next!18253))))

(declare-fun tp!63363 () Bool)

(declare-fun b_and!29735 () Bool)

(assert (=> b!950756 (= tp!63363 b_and!29735)))

(declare-fun b!950752 () Bool)

(declare-fun res!637415 () Bool)

(declare-fun e!535356 () Bool)

(assert (=> b!950752 (=> (not res!637415) (not e!535356))))

(declare-datatypes ((V!32647 0))(
  ( (V!32648 (val!10431 Int)) )
))
(declare-datatypes ((ValueCell!9899 0))(
  ( (ValueCellFull!9899 (v!12976 V!32647)) (EmptyCell!9899) )
))
(declare-datatypes ((array!57566 0))(
  ( (array!57567 (arr!27677 (Array (_ BitVec 32) ValueCell!9899)) (size!28156 (_ BitVec 32))) )
))
(declare-datatypes ((array!57568 0))(
  ( (array!57569 (arr!27678 (Array (_ BitVec 32) (_ BitVec 64))) (size!28157 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4948 0))(
  ( (LongMapFixedSize!4949 (defaultEntry!5791 Int) (mask!27596 (_ BitVec 32)) (extraKeys!5523 (_ BitVec 32)) (zeroValue!5627 V!32647) (minValue!5627 V!32647) (_size!2529 (_ BitVec 32)) (_keys!10728 array!57568) (_values!5814 array!57566) (_vacant!2529 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4948)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13650 0))(
  ( (tuple2!13651 (_1!6835 (_ BitVec 64)) (_2!6835 V!32647)) )
))
(declare-datatypes ((List!19475 0))(
  ( (Nil!19472) (Cons!19471 (h!20632 tuple2!13650) (t!27826 List!19475)) )
))
(declare-datatypes ((ListLongMap!12361 0))(
  ( (ListLongMap!12362 (toList!6196 List!19475)) )
))
(declare-fun contains!5240 (ListLongMap!12361 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3381 (array!57568 array!57566 (_ BitVec 32) (_ BitVec 32) V!32647 V!32647 (_ BitVec 32) Int) ListLongMap!12361)

(assert (=> b!950752 (= res!637415 (contains!5240 (getCurrentListMap!3381 (_keys!10728 thiss!1141) (_values!5814 thiss!1141) (mask!27596 thiss!1141) (extraKeys!5523 thiss!1141) (zeroValue!5627 thiss!1141) (minValue!5627 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5791 thiss!1141)) key!756))))

(declare-fun mapNonEmpty!33060 () Bool)

(declare-fun mapRes!33060 () Bool)

(declare-fun tp!63362 () Bool)

(declare-fun e!535355 () Bool)

(assert (=> mapNonEmpty!33060 (= mapRes!33060 (and tp!63362 e!535355))))

(declare-fun mapKey!33060 () (_ BitVec 32))

(declare-fun mapRest!33060 () (Array (_ BitVec 32) ValueCell!9899))

(declare-fun mapValue!33060 () ValueCell!9899)

(assert (=> mapNonEmpty!33060 (= (arr!27677 (_values!5814 thiss!1141)) (store mapRest!33060 mapKey!33060 mapValue!33060))))

(declare-fun b!950753 () Bool)

(declare-fun res!637412 () Bool)

(assert (=> b!950753 (=> (not res!637412) (not e!535356))))

(assert (=> b!950753 (= res!637412 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!950754 () Bool)

(declare-fun e!535357 () Bool)

(declare-fun e!535351 () Bool)

(assert (=> b!950754 (= e!535357 (and e!535351 mapRes!33060))))

(declare-fun condMapEmpty!33060 () Bool)

(declare-fun mapDefault!33060 () ValueCell!9899)

