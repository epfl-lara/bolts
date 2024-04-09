; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89298 () Bool)

(assert start!89298)

(declare-fun b!1023491 () Bool)

(declare-fun b_free!20303 () Bool)

(declare-fun b_next!20303 () Bool)

(assert (=> b!1023491 (= b_free!20303 (not b_next!20303))))

(declare-fun tp!71945 () Bool)

(declare-fun b_and!32543 () Bool)

(assert (=> b!1023491 (= tp!71945 b_and!32543)))

(declare-datatypes ((V!36903 0))(
  ( (V!36904 (val!12062 Int)) )
))
(declare-datatypes ((ValueCell!11308 0))(
  ( (ValueCellFull!11308 (v!14632 V!36903)) (EmptyCell!11308) )
))
(declare-datatypes ((array!64074 0))(
  ( (array!64075 (arr!30845 (Array (_ BitVec 32) (_ BitVec 64))) (size!31357 (_ BitVec 32))) )
))
(declare-datatypes ((array!64076 0))(
  ( (array!64077 (arr!30846 (Array (_ BitVec 32) ValueCell!11308)) (size!31358 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5210 0))(
  ( (LongMapFixedSize!5211 (defaultEntry!5957 Int) (mask!29575 (_ BitVec 32)) (extraKeys!5689 (_ BitVec 32)) (zeroValue!5793 V!36903) (minValue!5793 V!36903) (_size!2660 (_ BitVec 32)) (_keys!11099 array!64074) (_values!5980 array!64076) (_vacant!2660 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5210)

(declare-fun e!576774 () Bool)

(declare-fun tp_is_empty!24023 () Bool)

(declare-fun e!576773 () Bool)

(declare-fun array_inv!23767 (array!64074) Bool)

(declare-fun array_inv!23768 (array!64076) Bool)

(assert (=> b!1023491 (= e!576774 (and tp!71945 tp_is_empty!24023 (array_inv!23767 (_keys!11099 thiss!1427)) (array_inv!23768 (_values!5980 thiss!1427)) e!576773))))

(declare-fun res!685545 () Bool)

(declare-fun e!576770 () Bool)

(assert (=> start!89298 (=> (not res!685545) (not e!576770))))

(declare-fun valid!1942 (LongMapFixedSize!5210) Bool)

(assert (=> start!89298 (= res!685545 (valid!1942 thiss!1427))))

(assert (=> start!89298 e!576770))

(assert (=> start!89298 e!576774))

(assert (=> start!89298 true))

(declare-fun b!1023492 () Bool)

(declare-fun res!685548 () Bool)

(assert (=> b!1023492 (=> (not res!685548) (not e!576770))))

(assert (=> b!1023492 (= res!685548 (and (= (size!31358 (_values!5980 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29575 thiss!1427))) (= (size!31357 (_keys!11099 thiss!1427)) (size!31358 (_values!5980 thiss!1427))) (bvsge (mask!29575 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5689 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5689 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5689 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5689 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5689 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5689 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5689 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!37452 () Bool)

(declare-fun mapRes!37452 () Bool)

(assert (=> mapIsEmpty!37452 mapRes!37452))

(declare-fun b!1023493 () Bool)

(declare-fun res!685546 () Bool)

(assert (=> b!1023493 (=> (not res!685546) (not e!576770))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023493 (= res!685546 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023494 () Bool)

(declare-fun res!685544 () Bool)

(assert (=> b!1023494 (=> (not res!685544) (not e!576770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64074 (_ BitVec 32)) Bool)

(assert (=> b!1023494 (= res!685544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11099 thiss!1427) (mask!29575 thiss!1427)))))

(declare-fun b!1023495 () Bool)

(declare-fun e!576772 () Bool)

(assert (=> b!1023495 (= e!576772 tp_is_empty!24023)))

(declare-fun b!1023496 () Bool)

(declare-fun e!576775 () Bool)

(assert (=> b!1023496 (= e!576775 tp_is_empty!24023)))

(declare-fun mapNonEmpty!37452 () Bool)

(declare-fun tp!71944 () Bool)

(assert (=> mapNonEmpty!37452 (= mapRes!37452 (and tp!71944 e!576772))))

(declare-fun mapKey!37452 () (_ BitVec 32))

(declare-fun mapRest!37452 () (Array (_ BitVec 32) ValueCell!11308))

(declare-fun mapValue!37452 () ValueCell!11308)

(assert (=> mapNonEmpty!37452 (= (arr!30846 (_values!5980 thiss!1427)) (store mapRest!37452 mapKey!37452 mapValue!37452))))

(declare-fun b!1023497 () Bool)

(assert (=> b!1023497 (= e!576773 (and e!576775 mapRes!37452))))

(declare-fun condMapEmpty!37452 () Bool)

(declare-fun mapDefault!37452 () ValueCell!11308)

