; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89574 () Bool)

(assert start!89574)

(declare-fun b!1026955 () Bool)

(declare-fun b_free!20537 () Bool)

(declare-fun b_next!20537 () Bool)

(assert (=> b!1026955 (= b_free!20537 (not b_next!20537))))

(declare-fun tp!72658 () Bool)

(declare-fun b_and!32801 () Bool)

(assert (=> b!1026955 (= tp!72658 b_and!32801)))

(declare-fun mapIsEmpty!37814 () Bool)

(declare-fun mapRes!37814 () Bool)

(assert (=> mapIsEmpty!37814 mapRes!37814))

(declare-fun b!1026947 () Bool)

(declare-fun res!687500 () Bool)

(declare-fun e!579505 () Bool)

(assert (=> b!1026947 (=> res!687500 e!579505)))

(declare-datatypes ((V!37215 0))(
  ( (V!37216 (val!12179 Int)) )
))
(declare-datatypes ((ValueCell!11425 0))(
  ( (ValueCellFull!11425 (v!14749 V!37215)) (EmptyCell!11425) )
))
(declare-datatypes ((array!64548 0))(
  ( (array!64549 (arr!31079 (Array (_ BitVec 32) (_ BitVec 64))) (size!31593 (_ BitVec 32))) )
))
(declare-datatypes ((array!64550 0))(
  ( (array!64551 (arr!31080 (Array (_ BitVec 32) ValueCell!11425)) (size!31594 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5444 0))(
  ( (LongMapFixedSize!5445 (defaultEntry!6074 Int) (mask!29775 (_ BitVec 32)) (extraKeys!5806 (_ BitVec 32)) (zeroValue!5910 V!37215) (minValue!5910 V!37215) (_size!2777 (_ BitVec 32)) (_keys!11218 array!64548) (_values!6097 array!64550) (_vacant!2777 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5444)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64548 (_ BitVec 32)) Bool)

(assert (=> b!1026947 (= res!687500 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11218 thiss!1427) (mask!29775 thiss!1427))))))

(declare-fun b!1026948 () Bool)

(assert (=> b!1026948 (= e!579505 true)))

(declare-fun lt!451927 () Bool)

(declare-datatypes ((List!21902 0))(
  ( (Nil!21899) (Cons!21898 (h!23096 (_ BitVec 64)) (t!30971 List!21902)) )
))
(declare-fun arrayNoDuplicates!0 (array!64548 (_ BitVec 32) List!21902) Bool)

(assert (=> b!1026948 (= lt!451927 (arrayNoDuplicates!0 (_keys!11218 thiss!1427) #b00000000000000000000000000000000 Nil!21899))))

(declare-fun mapNonEmpty!37814 () Bool)

(declare-fun tp!72657 () Bool)

(declare-fun e!579510 () Bool)

(assert (=> mapNonEmpty!37814 (= mapRes!37814 (and tp!72657 e!579510))))

(declare-fun mapKey!37814 () (_ BitVec 32))

(declare-fun mapRest!37814 () (Array (_ BitVec 32) ValueCell!11425))

(declare-fun mapValue!37814 () ValueCell!11425)

(assert (=> mapNonEmpty!37814 (= (arr!31080 (_values!6097 thiss!1427)) (store mapRest!37814 mapKey!37814 mapValue!37814))))

(declare-fun b!1026949 () Bool)

(declare-fun res!687497 () Bool)

(assert (=> b!1026949 (=> res!687497 e!579505)))

(assert (=> b!1026949 (= res!687497 (or (not (= (size!31594 (_values!6097 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29775 thiss!1427)))) (not (= (size!31593 (_keys!11218 thiss!1427)) (size!31594 (_values!6097 thiss!1427)))) (bvslt (mask!29775 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5806 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5806 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1026950 () Bool)

(declare-fun e!579511 () Bool)

(declare-fun e!579512 () Bool)

(assert (=> b!1026950 (= e!579511 (and e!579512 mapRes!37814))))

(declare-fun condMapEmpty!37814 () Bool)

(declare-fun mapDefault!37814 () ValueCell!11425)

