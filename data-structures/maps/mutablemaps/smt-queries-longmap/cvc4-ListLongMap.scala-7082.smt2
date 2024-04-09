; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89586 () Bool)

(assert start!89586)

(declare-fun b!1027128 () Bool)

(declare-fun b_free!20549 () Bool)

(declare-fun b_next!20549 () Bool)

(assert (=> b!1027128 (= b_free!20549 (not b_next!20549))))

(declare-fun tp!72694 () Bool)

(declare-fun b_and!32813 () Bool)

(assert (=> b!1027128 (= tp!72694 b_and!32813)))

(declare-fun b!1027127 () Bool)

(declare-fun e!579653 () Bool)

(assert (=> b!1027127 (= e!579653 true)))

(declare-fun lt!452054 () Bool)

(declare-datatypes ((V!37231 0))(
  ( (V!37232 (val!12185 Int)) )
))
(declare-datatypes ((ValueCell!11431 0))(
  ( (ValueCellFull!11431 (v!14755 V!37231)) (EmptyCell!11431) )
))
(declare-datatypes ((array!64572 0))(
  ( (array!64573 (arr!31091 (Array (_ BitVec 32) (_ BitVec 64))) (size!31605 (_ BitVec 32))) )
))
(declare-datatypes ((array!64574 0))(
  ( (array!64575 (arr!31092 (Array (_ BitVec 32) ValueCell!11431)) (size!31606 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5456 0))(
  ( (LongMapFixedSize!5457 (defaultEntry!6080 Int) (mask!29785 (_ BitVec 32)) (extraKeys!5812 (_ BitVec 32)) (zeroValue!5916 V!37231) (minValue!5916 V!37231) (_size!2783 (_ BitVec 32)) (_keys!11224 array!64572) (_values!6103 array!64574) (_vacant!2783 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5456)

(declare-datatypes ((List!21908 0))(
  ( (Nil!21905) (Cons!21904 (h!23102 (_ BitVec 64)) (t!30977 List!21908)) )
))
(declare-fun arrayNoDuplicates!0 (array!64572 (_ BitVec 32) List!21908) Bool)

(assert (=> b!1027127 (= lt!452054 (arrayNoDuplicates!0 (_keys!11224 thiss!1427) #b00000000000000000000000000000000 Nil!21905))))

(declare-fun e!579651 () Bool)

(declare-fun e!579656 () Bool)

(declare-fun tp_is_empty!24269 () Bool)

(declare-fun array_inv!23925 (array!64572) Bool)

(declare-fun array_inv!23926 (array!64574) Bool)

(assert (=> b!1027128 (= e!579651 (and tp!72694 tp_is_empty!24269 (array_inv!23925 (_keys!11224 thiss!1427)) (array_inv!23926 (_values!6103 thiss!1427)) e!579656))))

(declare-fun res!687608 () Bool)

(declare-fun e!579649 () Bool)

(assert (=> start!89586 (=> (not res!687608) (not e!579649))))

(declare-fun valid!2023 (LongMapFixedSize!5456) Bool)

(assert (=> start!89586 (= res!687608 (valid!2023 thiss!1427))))

(assert (=> start!89586 e!579649))

(assert (=> start!89586 e!579651))

(assert (=> start!89586 true))

(declare-fun b!1027129 () Bool)

(declare-fun e!579655 () Bool)

(assert (=> b!1027129 (= e!579655 tp_is_empty!24269)))

(declare-fun mapIsEmpty!37832 () Bool)

(declare-fun mapRes!37832 () Bool)

(assert (=> mapIsEmpty!37832 mapRes!37832))

(declare-fun b!1027130 () Bool)

(declare-fun res!687607 () Bool)

(assert (=> b!1027130 (=> res!687607 e!579653)))

(assert (=> b!1027130 (= res!687607 (or (not (= (size!31606 (_values!6103 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29785 thiss!1427)))) (not (= (size!31605 (_keys!11224 thiss!1427)) (size!31606 (_values!6103 thiss!1427)))) (bvslt (mask!29785 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5812 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5812 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1027131 () Bool)

(declare-fun e!579654 () Bool)

(assert (=> b!1027131 (= e!579656 (and e!579654 mapRes!37832))))

(declare-fun condMapEmpty!37832 () Bool)

(declare-fun mapDefault!37832 () ValueCell!11431)

