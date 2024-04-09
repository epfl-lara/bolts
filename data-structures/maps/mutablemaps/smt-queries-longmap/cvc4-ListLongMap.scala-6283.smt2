; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80408 () Bool)

(assert start!80408)

(declare-fun b!943876 () Bool)

(declare-fun b_free!18023 () Bool)

(declare-fun b_next!18023 () Bool)

(assert (=> b!943876 (= b_free!18023 (not b_next!18023))))

(declare-fun tp!62580 () Bool)

(declare-fun b_and!29459 () Bool)

(assert (=> b!943876 (= tp!62580 b_and!29459)))

(declare-fun b!943875 () Bool)

(declare-fun res!634211 () Bool)

(declare-fun e!530768 () Bool)

(assert (=> b!943875 (=> (not res!634211) (not e!530768))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!943875 (= res!634211 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32622 () Bool)

(declare-fun mapRes!32622 () Bool)

(assert (=> mapIsEmpty!32622 mapRes!32622))

(declare-fun e!530766 () Bool)

(declare-fun tp_is_empty!20531 () Bool)

(declare-datatypes ((V!32339 0))(
  ( (V!32340 (val!10316 Int)) )
))
(declare-datatypes ((ValueCell!9784 0))(
  ( (ValueCellFull!9784 (v!12848 V!32339)) (EmptyCell!9784) )
))
(declare-datatypes ((array!57052 0))(
  ( (array!57053 (arr!27447 (Array (_ BitVec 32) ValueCell!9784)) (size!27914 (_ BitVec 32))) )
))
(declare-datatypes ((array!57054 0))(
  ( (array!57055 (arr!27448 (Array (_ BitVec 32) (_ BitVec 64))) (size!27915 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4718 0))(
  ( (LongMapFixedSize!4719 (defaultEntry!5654 Int) (mask!27287 (_ BitVec 32)) (extraKeys!5386 (_ BitVec 32)) (zeroValue!5490 V!32339) (minValue!5490 V!32339) (_size!2414 (_ BitVec 32)) (_keys!10528 array!57054) (_values!5677 array!57052) (_vacant!2414 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4718)

(declare-fun e!530771 () Bool)

(declare-fun array_inv!21274 (array!57054) Bool)

(declare-fun array_inv!21275 (array!57052) Bool)

(assert (=> b!943876 (= e!530766 (and tp!62580 tp_is_empty!20531 (array_inv!21274 (_keys!10528 thiss!1141)) (array_inv!21275 (_values!5677 thiss!1141)) e!530771))))

(declare-fun b!943877 () Bool)

(declare-fun e!530770 () Bool)

(assert (=> b!943877 (= e!530768 (not e!530770))))

(declare-fun res!634216 () Bool)

(assert (=> b!943877 (=> res!634216 e!530770)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943877 (= res!634216 (not (validMask!0 (mask!27287 thiss!1141))))))

(declare-fun lt!425449 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57054 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!943877 (= lt!425449 (arrayScanForKey!0 (_keys!10528 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!943877 (arrayContainsKey!0 (_keys!10528 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31831 0))(
  ( (Unit!31832) )
))
(declare-fun lt!425448 () Unit!31831)

(declare-fun lemmaKeyInListMapIsInArray!299 (array!57054 array!57052 (_ BitVec 32) (_ BitVec 32) V!32339 V!32339 (_ BitVec 64) Int) Unit!31831)

(assert (=> b!943877 (= lt!425448 (lemmaKeyInListMapIsInArray!299 (_keys!10528 thiss!1141) (_values!5677 thiss!1141) (mask!27287 thiss!1141) (extraKeys!5386 thiss!1141) (zeroValue!5490 thiss!1141) (minValue!5490 thiss!1141) key!756 (defaultEntry!5654 thiss!1141)))))

(declare-fun b!943878 () Bool)

(declare-fun res!634215 () Bool)

(assert (=> b!943878 (=> (not res!634215) (not e!530768))))

(declare-datatypes ((tuple2!13558 0))(
  ( (tuple2!13559 (_1!6789 (_ BitVec 64)) (_2!6789 V!32339)) )
))
(declare-datatypes ((List!19393 0))(
  ( (Nil!19390) (Cons!19389 (h!20540 tuple2!13558) (t!27718 List!19393)) )
))
(declare-datatypes ((ListLongMap!12269 0))(
  ( (ListLongMap!12270 (toList!6150 List!19393)) )
))
(declare-fun contains!5173 (ListLongMap!12269 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3338 (array!57054 array!57052 (_ BitVec 32) (_ BitVec 32) V!32339 V!32339 (_ BitVec 32) Int) ListLongMap!12269)

(assert (=> b!943878 (= res!634215 (contains!5173 (getCurrentListMap!3338 (_keys!10528 thiss!1141) (_values!5677 thiss!1141) (mask!27287 thiss!1141) (extraKeys!5386 thiss!1141) (zeroValue!5490 thiss!1141) (minValue!5490 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5654 thiss!1141)) key!756))))

(declare-fun b!943879 () Bool)

(assert (=> b!943879 (= e!530770 true)))

(declare-fun lt!425450 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57054 (_ BitVec 32)) Bool)

(assert (=> b!943879 (= lt!425450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10528 thiss!1141) (mask!27287 thiss!1141)))))

(declare-fun b!943880 () Bool)

(declare-fun e!530772 () Bool)

(assert (=> b!943880 (= e!530772 tp_is_empty!20531)))

(declare-fun mapNonEmpty!32622 () Bool)

(declare-fun tp!62579 () Bool)

(assert (=> mapNonEmpty!32622 (= mapRes!32622 (and tp!62579 e!530772))))

(declare-fun mapKey!32622 () (_ BitVec 32))

(declare-fun mapValue!32622 () ValueCell!9784)

(declare-fun mapRest!32622 () (Array (_ BitVec 32) ValueCell!9784))

(assert (=> mapNonEmpty!32622 (= (arr!27447 (_values!5677 thiss!1141)) (store mapRest!32622 mapKey!32622 mapValue!32622))))

(declare-fun b!943881 () Bool)

(declare-fun e!530769 () Bool)

(assert (=> b!943881 (= e!530771 (and e!530769 mapRes!32622))))

(declare-fun condMapEmpty!32622 () Bool)

(declare-fun mapDefault!32622 () ValueCell!9784)

