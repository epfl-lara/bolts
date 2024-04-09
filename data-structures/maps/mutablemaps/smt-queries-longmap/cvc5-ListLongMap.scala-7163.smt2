; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91320 () Bool)

(assert start!91320)

(declare-fun b!1041095 () Bool)

(declare-fun b_free!21031 () Bool)

(declare-fun b_next!21031 () Bool)

(assert (=> b!1041095 (= b_free!21031 (not b_next!21031))))

(declare-fun tp!74301 () Bool)

(declare-fun b_and!33581 () Bool)

(assert (=> b!1041095 (= tp!74301 b_and!33581)))

(declare-fun b!1041093 () Bool)

(declare-fun e!589576 () Bool)

(declare-datatypes ((V!37875 0))(
  ( (V!37876 (val!12426 Int)) )
))
(declare-datatypes ((ValueCell!11672 0))(
  ( (ValueCellFull!11672 (v!15015 V!37875)) (EmptyCell!11672) )
))
(declare-datatypes ((array!65630 0))(
  ( (array!65631 (arr!31573 (Array (_ BitVec 32) (_ BitVec 64))) (size!32106 (_ BitVec 32))) )
))
(declare-datatypes ((array!65632 0))(
  ( (array!65633 (arr!31574 (Array (_ BitVec 32) ValueCell!11672)) (size!32107 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5938 0))(
  ( (LongMapFixedSize!5939 (defaultEntry!6351 Int) (mask!30364 (_ BitVec 32)) (extraKeys!6079 (_ BitVec 32)) (zeroValue!6185 V!37875) (minValue!6185 V!37875) (_size!3024 (_ BitVec 32)) (_keys!11579 array!65630) (_values!6374 array!65632) (_vacant!3024 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5938)

(assert (=> b!1041093 (= e!589576 (or (not (= (size!32107 (_values!6374 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30364 thiss!1427)))) (= (size!32106 (_keys!11579 thiss!1427)) (size!32107 (_values!6374 thiss!1427)))))))

(declare-fun mapNonEmpty!38717 () Bool)

(declare-fun mapRes!38717 () Bool)

(declare-fun tp!74302 () Bool)

(declare-fun e!589574 () Bool)

(assert (=> mapNonEmpty!38717 (= mapRes!38717 (and tp!74302 e!589574))))

(declare-fun mapKey!38717 () (_ BitVec 32))

(declare-fun mapValue!38717 () ValueCell!11672)

(declare-fun mapRest!38717 () (Array (_ BitVec 32) ValueCell!11672))

(assert (=> mapNonEmpty!38717 (= (arr!31574 (_values!6374 thiss!1427)) (store mapRest!38717 mapKey!38717 mapValue!38717))))

(declare-fun e!589581 () Bool)

(declare-fun tp_is_empty!24751 () Bool)

(declare-fun e!589575 () Bool)

(declare-fun array_inv!24239 (array!65630) Bool)

(declare-fun array_inv!24240 (array!65632) Bool)

(assert (=> b!1041095 (= e!589575 (and tp!74301 tp_is_empty!24751 (array_inv!24239 (_keys!11579 thiss!1427)) (array_inv!24240 (_values!6374 thiss!1427)) e!589581))))

(declare-fun b!1041096 () Bool)

(declare-fun e!589578 () Bool)

(assert (=> b!1041096 (= e!589581 (and e!589578 mapRes!38717))))

(declare-fun condMapEmpty!38717 () Bool)

(declare-fun mapDefault!38717 () ValueCell!11672)

