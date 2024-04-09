; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3470 () Bool)

(assert start!3470)

(declare-fun b!22809 () Bool)

(declare-fun b_free!751 () Bool)

(declare-fun b_next!751 () Bool)

(assert (=> b!22809 (= b_free!751 (not b_next!751))))

(declare-fun tp!3497 () Bool)

(declare-fun b_and!1471 () Bool)

(assert (=> b!22809 (= tp!3497 b_and!1471)))

(declare-fun b!22798 () Bool)

(declare-fun e!14823 () Bool)

(declare-datatypes ((V!1179 0))(
  ( (V!1180 (val!534 Int)) )
))
(declare-datatypes ((ValueCell!308 0))(
  ( (ValueCellFull!308 (v!1594 V!1179)) (EmptyCell!308) )
))
(declare-datatypes ((array!1257 0))(
  ( (array!1258 (arr!595 (Array (_ BitVec 32) ValueCell!308)) (size!691 (_ BitVec 32))) )
))
(declare-datatypes ((array!1259 0))(
  ( (array!1260 (arr!596 (Array (_ BitVec 32) (_ BitVec 64))) (size!692 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!202 0))(
  ( (LongMapFixedSize!203 (defaultEntry!1738 Int) (mask!4722 (_ BitVec 32)) (extraKeys!1637 (_ BitVec 32)) (zeroValue!1662 V!1179) (minValue!1662 V!1179) (_size!145 (_ BitVec 32)) (_keys!3160 array!1259) (_values!1725 array!1257) (_vacant!145 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!202 0))(
  ( (Cell!203 (v!1595 LongMapFixedSize!202)) )
))
(declare-datatypes ((LongMap!202 0))(
  ( (LongMap!203 (underlying!112 Cell!202)) )
))
(declare-fun thiss!938 () LongMap!202)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!22798 (= e!14823 (not (validMask!0 (mask!4722 (v!1595 (underlying!112 thiss!938))))))))

(declare-fun b!22799 () Bool)

(declare-datatypes ((tuple2!922 0))(
  ( (tuple2!923 (_1!468 Bool) (_2!468 Cell!202)) )
))
(declare-fun e!14812 () tuple2!922)

(declare-datatypes ((tuple2!924 0))(
  ( (tuple2!925 (_1!469 Bool) (_2!469 LongMapFixedSize!202)) )
))
(declare-fun lt!7908 () tuple2!924)

(assert (=> b!22799 (= e!14812 (tuple2!923 (_1!469 lt!7908) (Cell!203 (_2!469 lt!7908))))))

(declare-fun call!1736 () tuple2!924)

(assert (=> b!22799 (= lt!7908 call!1736)))

(declare-fun b!22800 () Bool)

(declare-fun e!14817 () Bool)

(declare-fun tp_is_empty!1015 () Bool)

(assert (=> b!22800 (= e!14817 tp_is_empty!1015)))

(declare-fun b!22801 () Bool)

(declare-fun lt!7906 () LongMapFixedSize!202)

(assert (=> b!22801 (= e!14812 (tuple2!923 true (Cell!203 lt!7906)))))

(declare-fun b!22802 () Bool)

(declare-fun c!2851 () Bool)

(declare-fun lt!7905 () Bool)

(assert (=> b!22802 (= c!2851 (and (not (= (bvand (extraKeys!1637 (v!1595 (underlying!112 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!7905))))

(declare-fun e!14814 () tuple2!922)

(assert (=> b!22802 (= e!14814 e!14812)))

(declare-fun b!22803 () Bool)

(declare-fun e!14813 () tuple2!922)

(assert (=> b!22803 (= e!14813 e!14814)))

(declare-fun c!2853 () Bool)

(assert (=> b!22803 (= c!2853 (and (not lt!7905) (= (bvand (extraKeys!1637 (v!1595 (underlying!112 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!1732 () Bool)

(declare-fun call!1735 () tuple2!924)

(declare-fun lt!7909 () tuple2!924)

(declare-fun c!2852 () Bool)

(declare-fun update!31 (LongMapFixedSize!202 (_ BitVec 64) V!1179) tuple2!924)

(assert (=> bm!1732 (= call!1735 (update!31 (ite c!2852 (_2!469 lt!7909) lt!7906) (ite c!2852 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2853 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2852 (minValue!1662 (v!1595 (underlying!112 thiss!938))) (ite c!2853 (zeroValue!1662 (v!1595 (underlying!112 thiss!938))) (minValue!1662 (v!1595 (underlying!112 thiss!938)))))))))

(declare-fun b!22804 () Bool)

(declare-fun e!14815 () Bool)

(declare-fun e!14818 () Bool)

(declare-fun mapRes!1010 () Bool)

(assert (=> b!22804 (= e!14815 (and e!14818 mapRes!1010))))

(declare-fun condMapEmpty!1010 () Bool)

(declare-fun mapDefault!1010 () ValueCell!308)

