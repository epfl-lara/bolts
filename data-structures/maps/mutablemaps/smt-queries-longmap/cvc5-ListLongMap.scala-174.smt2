; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3316 () Bool)

(assert start!3316)

(declare-fun b!20636 () Bool)

(declare-fun b_free!721 () Bool)

(declare-fun b_next!721 () Bool)

(assert (=> b!20636 (= b_free!721 (not b_next!721))))

(declare-fun tp!3393 () Bool)

(declare-fun b_and!1403 () Bool)

(assert (=> b!20636 (= tp!3393 b_and!1403)))

(declare-datatypes ((V!1139 0))(
  ( (V!1140 (val!519 Int)) )
))
(declare-datatypes ((array!1189 0))(
  ( (array!1190 (arr!565 (Array (_ BitVec 32) (_ BitVec 64))) (size!658 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!293 0))(
  ( (ValueCellFull!293 (v!1556 V!1139)) (EmptyCell!293) )
))
(declare-datatypes ((array!1191 0))(
  ( (array!1192 (arr!566 (Array (_ BitVec 32) ValueCell!293)) (size!659 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!172 0))(
  ( (LongMapFixedSize!173 (defaultEntry!1710 Int) (mask!4677 (_ BitVec 32)) (extraKeys!1615 (_ BitVec 32)) (zeroValue!1639 V!1139) (minValue!1639 V!1139) (_size!125 (_ BitVec 32)) (_keys!3133 array!1189) (_values!1701 array!1191) (_vacant!125 (_ BitVec 32))) )
))
(declare-fun lt!6166 () LongMapFixedSize!172)

(declare-fun c!2289 () Bool)

(declare-fun c!2288 () Bool)

(declare-datatypes ((tuple2!848 0))(
  ( (tuple2!849 (_1!427 Bool) (_2!427 LongMapFixedSize!172)) )
))
(declare-fun lt!6169 () tuple2!848)

(declare-fun bm!1110 () Bool)

(declare-datatypes ((Cell!172 0))(
  ( (Cell!173 (v!1557 LongMapFixedSize!172)) )
))
(declare-datatypes ((LongMap!172 0))(
  ( (LongMap!173 (underlying!97 Cell!172)) )
))
(declare-fun thiss!938 () LongMap!172)

(declare-fun call!1114 () tuple2!848)

(declare-fun update!19 (LongMapFixedSize!172 (_ BitVec 64) V!1139) tuple2!848)

(assert (=> bm!1110 (= call!1114 (update!19 (ite c!2288 (_2!427 lt!6169) lt!6166) (ite c!2288 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2289 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2288 (minValue!1639 (v!1557 (underlying!97 thiss!938))) (ite c!2289 (zeroValue!1639 (v!1557 (underlying!97 thiss!938))) (minValue!1639 (v!1557 (underlying!97 thiss!938)))))))))

(declare-fun b!20635 () Bool)

(declare-fun e!13481 () Bool)

(declare-fun tp_is_empty!985 () Bool)

(assert (=> b!20635 (= e!13481 tp_is_empty!985)))

(declare-fun e!13486 () Bool)

(declare-fun e!13477 () Bool)

(declare-fun array_inv!399 (array!1189) Bool)

(declare-fun array_inv!400 (array!1191) Bool)

(assert (=> b!20636 (= e!13477 (and tp!3393 tp_is_empty!985 (array_inv!399 (_keys!3133 (v!1557 (underlying!97 thiss!938)))) (array_inv!400 (_values!1701 (v!1557 (underlying!97 thiss!938)))) e!13486))))

(declare-fun mapNonEmpty!952 () Bool)

(declare-fun mapRes!952 () Bool)

(declare-fun tp!3394 () Bool)

(assert (=> mapNonEmpty!952 (= mapRes!952 (and tp!3394 e!13481))))

(declare-fun mapRest!952 () (Array (_ BitVec 32) ValueCell!293))

(declare-fun mapKey!952 () (_ BitVec 32))

(declare-fun mapValue!952 () ValueCell!293)

(assert (=> mapNonEmpty!952 (= (arr!566 (_values!1701 (v!1557 (underlying!97 thiss!938)))) (store mapRest!952 mapKey!952 mapValue!952))))

(declare-fun b!20637 () Bool)

(declare-datatypes ((tuple2!850 0))(
  ( (tuple2!851 (_1!428 Bool) (_2!428 Cell!172)) )
))
(declare-fun e!13487 () tuple2!850)

(assert (=> b!20637 (= e!13487 (tuple2!851 true (Cell!173 lt!6166)))))

(declare-fun b!20638 () Bool)

(declare-fun c!2290 () Bool)

(declare-fun lt!6165 () Bool)

(assert (=> b!20638 (= c!2290 (and (not (= (bvand (extraKeys!1615 (v!1557 (underlying!97 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!6165))))

(declare-fun e!13485 () tuple2!850)

(assert (=> b!20638 (= e!13485 e!13487)))

(declare-fun b!20639 () Bool)

(declare-fun e!13484 () Bool)

(assert (=> b!20639 (= e!13486 (and e!13484 mapRes!952))))

(declare-fun condMapEmpty!952 () Bool)

(declare-fun mapDefault!952 () ValueCell!293)

