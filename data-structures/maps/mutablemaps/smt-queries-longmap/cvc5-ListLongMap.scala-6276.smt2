; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80306 () Bool)

(assert start!80306)

(declare-fun b!942854 () Bool)

(declare-fun b_free!17977 () Bool)

(declare-fun b_next!17977 () Bool)

(assert (=> b!942854 (= b_free!17977 (not b_next!17977))))

(declare-fun tp!62437 () Bool)

(declare-fun b_and!29407 () Bool)

(assert (=> b!942854 (= tp!62437 b_and!29407)))

(declare-fun mapNonEmpty!32549 () Bool)

(declare-fun mapRes!32549 () Bool)

(declare-fun tp!62438 () Bool)

(declare-fun e!530151 () Bool)

(assert (=> mapNonEmpty!32549 (= mapRes!32549 (and tp!62438 e!530151))))

(declare-fun mapKey!32549 () (_ BitVec 32))

(declare-datatypes ((V!32279 0))(
  ( (V!32280 (val!10293 Int)) )
))
(declare-datatypes ((ValueCell!9761 0))(
  ( (ValueCellFull!9761 (v!12824 V!32279)) (EmptyCell!9761) )
))
(declare-fun mapValue!32549 () ValueCell!9761)

(declare-fun mapRest!32549 () (Array (_ BitVec 32) ValueCell!9761))

(declare-datatypes ((array!56958 0))(
  ( (array!56959 (arr!27401 (Array (_ BitVec 32) ValueCell!9761)) (size!27867 (_ BitVec 32))) )
))
(declare-datatypes ((array!56960 0))(
  ( (array!56961 (arr!27402 (Array (_ BitVec 32) (_ BitVec 64))) (size!27868 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4672 0))(
  ( (LongMapFixedSize!4673 (defaultEntry!5627 Int) (mask!27240 (_ BitVec 32)) (extraKeys!5359 (_ BitVec 32)) (zeroValue!5463 V!32279) (minValue!5463 V!32279) (_size!2391 (_ BitVec 32)) (_keys!10497 array!56960) (_values!5650 array!56958) (_vacant!2391 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4672)

(assert (=> mapNonEmpty!32549 (= (arr!27401 (_values!5650 thiss!1141)) (store mapRest!32549 mapKey!32549 mapValue!32549))))

(declare-fun b!942853 () Bool)

(declare-fun tp_is_empty!20485 () Bool)

(assert (=> b!942853 (= e!530151 tp_is_empty!20485)))

(declare-fun e!530153 () Bool)

(declare-fun e!530155 () Bool)

(declare-fun array_inv!21240 (array!56960) Bool)

(declare-fun array_inv!21241 (array!56958) Bool)

(assert (=> b!942854 (= e!530155 (and tp!62437 tp_is_empty!20485 (array_inv!21240 (_keys!10497 thiss!1141)) (array_inv!21241 (_values!5650 thiss!1141)) e!530153))))

(declare-fun b!942855 () Bool)

(declare-fun res!633663 () Bool)

(declare-fun e!530154 () Bool)

(assert (=> b!942855 (=> (not res!633663) (not e!530154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56960 (_ BitVec 32)) Bool)

(assert (=> b!942855 (= res!633663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10497 thiss!1141) (mask!27240 thiss!1141)))))

(declare-fun b!942856 () Bool)

(declare-fun res!633666 () Bool)

(assert (=> b!942856 (=> (not res!633666) (not e!530154))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!942856 (= res!633666 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!942858 () Bool)

(declare-fun res!633664 () Bool)

(assert (=> b!942858 (=> (not res!633664) (not e!530154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942858 (= res!633664 (validMask!0 (mask!27240 thiss!1141)))))

(declare-fun mapIsEmpty!32549 () Bool)

(assert (=> mapIsEmpty!32549 mapRes!32549))

(declare-fun b!942859 () Bool)

(declare-fun res!633661 () Bool)

(assert (=> b!942859 (=> (not res!633661) (not e!530154))))

(declare-datatypes ((tuple2!13528 0))(
  ( (tuple2!13529 (_1!6774 (_ BitVec 64)) (_2!6774 V!32279)) )
))
(declare-datatypes ((List!19365 0))(
  ( (Nil!19362) (Cons!19361 (h!20511 tuple2!13528) (t!27688 List!19365)) )
))
(declare-datatypes ((ListLongMap!12239 0))(
  ( (ListLongMap!12240 (toList!6135 List!19365)) )
))
(declare-fun contains!5156 (ListLongMap!12239 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3323 (array!56960 array!56958 (_ BitVec 32) (_ BitVec 32) V!32279 V!32279 (_ BitVec 32) Int) ListLongMap!12239)

(assert (=> b!942859 (= res!633661 (contains!5156 (getCurrentListMap!3323 (_keys!10497 thiss!1141) (_values!5650 thiss!1141) (mask!27240 thiss!1141) (extraKeys!5359 thiss!1141) (zeroValue!5463 thiss!1141) (minValue!5463 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5627 thiss!1141)) key!756))))

(declare-fun b!942860 () Bool)

(declare-fun e!530152 () Bool)

(assert (=> b!942860 (= e!530153 (and e!530152 mapRes!32549))))

(declare-fun condMapEmpty!32549 () Bool)

(declare-fun mapDefault!32549 () ValueCell!9761)

