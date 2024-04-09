; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81054 () Bool)

(assert start!81054)

(declare-fun b!948691 () Bool)

(declare-fun b_free!18209 () Bool)

(declare-fun b_next!18209 () Bool)

(assert (=> b!948691 (= b_free!18209 (not b_next!18209))))

(declare-fun tp!63207 () Bool)

(declare-fun b_and!29665 () Bool)

(assert (=> b!948691 (= tp!63207 b_and!29665)))

(declare-fun mapNonEmpty!32970 () Bool)

(declare-fun mapRes!32970 () Bool)

(declare-fun tp!63206 () Bool)

(declare-fun e!534095 () Bool)

(assert (=> mapNonEmpty!32970 (= mapRes!32970 (and tp!63206 e!534095))))

(declare-datatypes ((V!32587 0))(
  ( (V!32588 (val!10409 Int)) )
))
(declare-datatypes ((ValueCell!9877 0))(
  ( (ValueCellFull!9877 (v!12947 V!32587)) (EmptyCell!9877) )
))
(declare-fun mapValue!32970 () ValueCell!9877)

(declare-fun mapRest!32970 () (Array (_ BitVec 32) ValueCell!9877))

(declare-datatypes ((array!57464 0))(
  ( (array!57465 (arr!27633 (Array (_ BitVec 32) ValueCell!9877)) (size!28109 (_ BitVec 32))) )
))
(declare-datatypes ((array!57466 0))(
  ( (array!57467 (arr!27634 (Array (_ BitVec 32) (_ BitVec 64))) (size!28110 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4904 0))(
  ( (LongMapFixedSize!4905 (defaultEntry!5756 Int) (mask!27517 (_ BitVec 32)) (extraKeys!5488 (_ BitVec 32)) (zeroValue!5592 V!32587) (minValue!5592 V!32587) (_size!2507 (_ BitVec 32)) (_keys!10675 array!57466) (_values!5779 array!57464) (_vacant!2507 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4904)

(declare-fun mapKey!32970 () (_ BitVec 32))

(assert (=> mapNonEmpty!32970 (= (arr!27633 (_values!5779 thiss!1141)) (store mapRest!32970 mapKey!32970 mapValue!32970))))

(declare-fun b!948686 () Bool)

(declare-fun res!636490 () Bool)

(declare-fun e!534097 () Bool)

(assert (=> b!948686 (=> (not res!636490) (not e!534097))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13626 0))(
  ( (tuple2!13627 (_1!6823 (_ BitVec 64)) (_2!6823 V!32587)) )
))
(declare-datatypes ((List!19452 0))(
  ( (Nil!19449) (Cons!19448 (h!20606 tuple2!13626) (t!27789 List!19452)) )
))
(declare-datatypes ((ListLongMap!12337 0))(
  ( (ListLongMap!12338 (toList!6184 List!19452)) )
))
(declare-fun contains!5221 (ListLongMap!12337 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3369 (array!57466 array!57464 (_ BitVec 32) (_ BitVec 32) V!32587 V!32587 (_ BitVec 32) Int) ListLongMap!12337)

(assert (=> b!948686 (= res!636490 (contains!5221 (getCurrentListMap!3369 (_keys!10675 thiss!1141) (_values!5779 thiss!1141) (mask!27517 thiss!1141) (extraKeys!5488 thiss!1141) (zeroValue!5592 thiss!1141) (minValue!5592 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5756 thiss!1141)) key!756))))

(declare-fun b!948687 () Bool)

(declare-fun res!636489 () Bool)

(assert (=> b!948687 (=> (not res!636489) (not e!534097))))

(assert (=> b!948687 (= res!636489 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!948689 () Bool)

(declare-fun e!534099 () Bool)

(declare-fun tp_is_empty!20717 () Bool)

(assert (=> b!948689 (= e!534099 tp_is_empty!20717)))

(declare-fun b!948690 () Bool)

(assert (=> b!948690 (= e!534097 (and (= (size!28109 (_values!5779 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27517 thiss!1141))) (= (size!28110 (_keys!10675 thiss!1141)) (size!28109 (_values!5779 thiss!1141))) (bvslt (mask!27517 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun e!534100 () Bool)

(declare-fun e!534098 () Bool)

(declare-fun array_inv!21396 (array!57466) Bool)

(declare-fun array_inv!21397 (array!57464) Bool)

(assert (=> b!948691 (= e!534100 (and tp!63207 tp_is_empty!20717 (array_inv!21396 (_keys!10675 thiss!1141)) (array_inv!21397 (_values!5779 thiss!1141)) e!534098))))

(declare-fun b!948692 () Bool)

(assert (=> b!948692 (= e!534098 (and e!534099 mapRes!32970))))

(declare-fun condMapEmpty!32970 () Bool)

(declare-fun mapDefault!32970 () ValueCell!9877)

