; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89280 () Bool)

(assert start!89280)

(declare-fun b!1023254 () Bool)

(declare-fun b_free!20285 () Bool)

(declare-fun b_next!20285 () Bool)

(assert (=> b!1023254 (= b_free!20285 (not b_next!20285))))

(declare-fun tp!71890 () Bool)

(declare-fun b_and!32525 () Bool)

(assert (=> b!1023254 (= tp!71890 b_and!32525)))

(declare-fun mapIsEmpty!37425 () Bool)

(declare-fun mapRes!37425 () Bool)

(assert (=> mapIsEmpty!37425 mapRes!37425))

(declare-fun mapNonEmpty!37425 () Bool)

(declare-fun tp!71891 () Bool)

(declare-fun e!576610 () Bool)

(assert (=> mapNonEmpty!37425 (= mapRes!37425 (and tp!71891 e!576610))))

(declare-datatypes ((V!36879 0))(
  ( (V!36880 (val!12053 Int)) )
))
(declare-datatypes ((ValueCell!11299 0))(
  ( (ValueCellFull!11299 (v!14623 V!36879)) (EmptyCell!11299) )
))
(declare-fun mapValue!37425 () ValueCell!11299)

(declare-fun mapRest!37425 () (Array (_ BitVec 32) ValueCell!11299))

(declare-fun mapKey!37425 () (_ BitVec 32))

(declare-datatypes ((array!64038 0))(
  ( (array!64039 (arr!30827 (Array (_ BitVec 32) (_ BitVec 64))) (size!31339 (_ BitVec 32))) )
))
(declare-datatypes ((array!64040 0))(
  ( (array!64041 (arr!30828 (Array (_ BitVec 32) ValueCell!11299)) (size!31340 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5192 0))(
  ( (LongMapFixedSize!5193 (defaultEntry!5948 Int) (mask!29560 (_ BitVec 32)) (extraKeys!5680 (_ BitVec 32)) (zeroValue!5784 V!36879) (minValue!5784 V!36879) (_size!2651 (_ BitVec 32)) (_keys!11090 array!64038) (_values!5971 array!64040) (_vacant!2651 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5192)

(assert (=> mapNonEmpty!37425 (= (arr!30828 (_values!5971 thiss!1427)) (store mapRest!37425 mapKey!37425 mapValue!37425))))

(declare-fun b!1023249 () Bool)

(declare-fun tp_is_empty!24005 () Bool)

(assert (=> b!1023249 (= e!576610 tp_is_empty!24005)))

(declare-fun b!1023250 () Bool)

(declare-fun e!576608 () Bool)

(declare-fun e!576611 () Bool)

(assert (=> b!1023250 (= e!576608 (and e!576611 mapRes!37425))))

(declare-fun condMapEmpty!37425 () Bool)

(declare-fun mapDefault!37425 () ValueCell!11299)

