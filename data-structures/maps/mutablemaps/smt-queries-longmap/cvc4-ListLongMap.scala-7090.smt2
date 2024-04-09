; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89846 () Bool)

(assert start!89846)

(declare-fun b!1029129 () Bool)

(declare-fun b_free!20597 () Bool)

(declare-fun b_next!20597 () Bool)

(assert (=> b!1029129 (= b_free!20597 (not b_next!20597))))

(declare-fun tp!72852 () Bool)

(declare-fun b_and!32937 () Bool)

(assert (=> b!1029129 (= tp!72852 b_and!32937)))

(declare-fun b!1029128 () Bool)

(declare-fun e!581064 () Bool)

(declare-datatypes ((V!37295 0))(
  ( (V!37296 (val!12209 Int)) )
))
(declare-datatypes ((ValueCell!11455 0))(
  ( (ValueCellFull!11455 (v!14783 V!37295)) (EmptyCell!11455) )
))
(declare-datatypes ((Unit!33574 0))(
  ( (Unit!33575) )
))
(declare-datatypes ((array!64676 0))(
  ( (array!64677 (arr!31139 (Array (_ BitVec 32) (_ BitVec 64))) (size!31655 (_ BitVec 32))) )
))
(declare-datatypes ((array!64678 0))(
  ( (array!64679 (arr!31140 (Array (_ BitVec 32) ValueCell!11455)) (size!31656 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5504 0))(
  ( (LongMapFixedSize!5505 (defaultEntry!6116 Int) (mask!29863 (_ BitVec 32)) (extraKeys!5848 (_ BitVec 32)) (zeroValue!5952 V!37295) (minValue!5952 V!37295) (_size!2807 (_ BitVec 32)) (_keys!11274 array!64676) (_values!6139 array!64678) (_vacant!2807 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15652 0))(
  ( (tuple2!15653 (_1!7836 Unit!33574) (_2!7836 LongMapFixedSize!5504)) )
))
(declare-fun lt!453586 () tuple2!15652)

(assert (=> b!1029128 (= e!581064 (or (not (= (size!31656 (_values!6139 (_2!7836 lt!453586))) (bvadd #b00000000000000000000000000000001 (mask!29863 (_2!7836 lt!453586))))) (not (= (size!31655 (_keys!11274 (_2!7836 lt!453586))) (size!31656 (_values!6139 (_2!7836 lt!453586))))) (bvslt (mask!29863 (_2!7836 lt!453586)) #b00000000000000000000000000000000) (bvsge (extraKeys!5848 (_2!7836 lt!453586)) #b00000000000000000000000000000000)))))

(declare-fun tp_is_empty!24317 () Bool)

(declare-fun e!581060 () Bool)

(declare-fun thiss!1427 () LongMapFixedSize!5504)

(declare-fun e!581062 () Bool)

(declare-fun array_inv!23955 (array!64676) Bool)

(declare-fun array_inv!23956 (array!64678) Bool)

(assert (=> b!1029129 (= e!581062 (and tp!72852 tp_is_empty!24317 (array_inv!23955 (_keys!11274 thiss!1427)) (array_inv!23956 (_values!6139 thiss!1427)) e!581060))))

(declare-fun b!1029130 () Bool)

(declare-fun e!581063 () Bool)

(declare-fun mapRes!37918 () Bool)

(assert (=> b!1029130 (= e!581060 (and e!581063 mapRes!37918))))

(declare-fun condMapEmpty!37918 () Bool)

(declare-fun mapDefault!37918 () ValueCell!11455)

