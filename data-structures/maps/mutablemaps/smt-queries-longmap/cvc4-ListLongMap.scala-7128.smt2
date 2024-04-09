; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90498 () Bool)

(assert start!90498)

(declare-fun b!1035043 () Bool)

(declare-fun b_free!20825 () Bool)

(declare-fun b_next!20825 () Bool)

(assert (=> b!1035043 (= b_free!20825 (not b_next!20825))))

(declare-fun tp!73593 () Bool)

(declare-fun b_and!33343 () Bool)

(assert (=> b!1035043 (= tp!73593 b_and!33343)))

(declare-fun b!1035042 () Bool)

(declare-fun res!691252 () Bool)

(declare-fun e!585236 () Bool)

(assert (=> b!1035042 (=> (not res!691252) (not e!585236))))

(declare-datatypes ((V!37599 0))(
  ( (V!37600 (val!12323 Int)) )
))
(declare-datatypes ((ValueCell!11569 0))(
  ( (ValueCellFull!11569 (v!14904 V!37599)) (EmptyCell!11569) )
))
(declare-datatypes ((array!65162 0))(
  ( (array!65163 (arr!31367 (Array (_ BitVec 32) (_ BitVec 64))) (size!31894 (_ BitVec 32))) )
))
(declare-datatypes ((array!65164 0))(
  ( (array!65165 (arr!31368 (Array (_ BitVec 32) ValueCell!11569)) (size!31895 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5732 0))(
  ( (LongMapFixedSize!5733 (defaultEntry!6244 Int) (mask!30113 (_ BitVec 32)) (extraKeys!5974 (_ BitVec 32)) (zeroValue!6078 V!37599) (minValue!6080 V!37599) (_size!2921 (_ BitVec 32)) (_keys!11426 array!65162) (_values!6267 array!65164) (_vacant!2921 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5732)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035042 (= res!691252 (validMask!0 (mask!30113 thiss!1427)))))

(declare-fun mapIsEmpty!38317 () Bool)

(declare-fun mapRes!38317 () Bool)

(assert (=> mapIsEmpty!38317 mapRes!38317))

(declare-fun res!691254 () Bool)

(assert (=> start!90498 (=> (not res!691254) (not e!585236))))

(declare-fun valid!2114 (LongMapFixedSize!5732) Bool)

(assert (=> start!90498 (= res!691254 (valid!2114 thiss!1427))))

(assert (=> start!90498 e!585236))

(declare-fun e!585238 () Bool)

(assert (=> start!90498 e!585238))

(assert (=> start!90498 true))

(declare-fun e!585233 () Bool)

(declare-fun tp_is_empty!24545 () Bool)

(declare-fun array_inv!24097 (array!65162) Bool)

(declare-fun array_inv!24098 (array!65164) Bool)

(assert (=> b!1035043 (= e!585238 (and tp!73593 tp_is_empty!24545 (array_inv!24097 (_keys!11426 thiss!1427)) (array_inv!24098 (_values!6267 thiss!1427)) e!585233))))

(declare-fun b!1035044 () Bool)

(declare-fun res!691253 () Bool)

(assert (=> b!1035044 (=> (not res!691253) (not e!585236))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035044 (= res!691253 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1035045 () Bool)

(declare-fun e!585237 () Bool)

(assert (=> b!1035045 (= e!585233 (and e!585237 mapRes!38317))))

(declare-fun condMapEmpty!38317 () Bool)

(declare-fun mapDefault!38317 () ValueCell!11569)

