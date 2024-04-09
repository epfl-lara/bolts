; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90738 () Bool)

(assert start!90738)

(declare-fun b!1037176 () Bool)

(declare-fun b_free!20891 () Bool)

(declare-fun b_next!20891 () Bool)

(assert (=> b!1037176 (= b_free!20891 (not b_next!20891))))

(declare-fun tp!73816 () Bool)

(declare-fun b_and!33441 () Bool)

(assert (=> b!1037176 (= tp!73816 b_and!33441)))

(declare-fun b!1037174 () Bool)

(declare-fun e!586702 () Bool)

(declare-datatypes ((V!37687 0))(
  ( (V!37688 (val!12356 Int)) )
))
(declare-datatypes ((ValueCell!11602 0))(
  ( (ValueCellFull!11602 (v!14940 V!37687)) (EmptyCell!11602) )
))
(declare-datatypes ((array!65308 0))(
  ( (array!65309 (arr!31433 (Array (_ BitVec 32) (_ BitVec 64))) (size!31964 (_ BitVec 32))) )
))
(declare-datatypes ((array!65310 0))(
  ( (array!65311 (arr!31434 (Array (_ BitVec 32) ValueCell!11602)) (size!31965 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5798 0))(
  ( (LongMapFixedSize!5799 (defaultEntry!6281 Int) (mask!30190 (_ BitVec 32)) (extraKeys!6009 (_ BitVec 32)) (zeroValue!6115 V!37687) (minValue!6115 V!37687) (_size!2954 (_ BitVec 32)) (_keys!11473 array!65308) (_values!6304 array!65310) (_vacant!2954 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5798)

(assert (=> b!1037174 (= e!586702 (not (bvslt (size!31964 (_keys!11473 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-datatypes ((SeekEntryResult!9747 0))(
  ( (MissingZero!9747 (index!41358 (_ BitVec 32))) (Found!9747 (index!41359 (_ BitVec 32))) (Intermediate!9747 (undefined!10559 Bool) (index!41360 (_ BitVec 32)) (x!92509 (_ BitVec 32))) (Undefined!9747) (MissingVacant!9747 (index!41361 (_ BitVec 32))) )
))
(declare-fun lt!457408 () SeekEntryResult!9747)

(declare-fun arrayCountValidKeys!0 (array!65308 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037174 (= (arrayCountValidKeys!0 (array!65309 (store (arr!31433 (_keys!11473 thiss!1427)) (index!41359 lt!457408) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31964 (_keys!11473 thiss!1427))) #b00000000000000000000000000000000 (size!31964 (_keys!11473 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11473 thiss!1427) #b00000000000000000000000000000000 (size!31964 (_keys!11473 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33926 0))(
  ( (Unit!33927) )
))
(declare-fun lt!457409 () Unit!33926)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65308 (_ BitVec 32) (_ BitVec 64)) Unit!33926)

(assert (=> b!1037174 (= lt!457409 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11473 thiss!1427) (index!41359 lt!457408) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38442 () Bool)

(declare-fun mapRes!38442 () Bool)

(declare-fun tp!73817 () Bool)

(declare-fun e!586698 () Bool)

(assert (=> mapNonEmpty!38442 (= mapRes!38442 (and tp!73817 e!586698))))

(declare-fun mapValue!38442 () ValueCell!11602)

(declare-fun mapKey!38442 () (_ BitVec 32))

(declare-fun mapRest!38442 () (Array (_ BitVec 32) ValueCell!11602))

(assert (=> mapNonEmpty!38442 (= (arr!31434 (_values!6304 thiss!1427)) (store mapRest!38442 mapKey!38442 mapValue!38442))))

(declare-fun b!1037175 () Bool)

(declare-fun e!586704 () Bool)

(assert (=> b!1037175 (= e!586704 e!586702)))

(declare-fun res!692157 () Bool)

(assert (=> b!1037175 (=> (not res!692157) (not e!586702))))

(assert (=> b!1037175 (= res!692157 (is-Found!9747 lt!457408))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65308 (_ BitVec 32)) SeekEntryResult!9747)

(assert (=> b!1037175 (= lt!457408 (seekEntry!0 key!909 (_keys!11473 thiss!1427) (mask!30190 thiss!1427)))))

(declare-fun tp_is_empty!24611 () Bool)

(declare-fun e!586701 () Bool)

(declare-fun e!586699 () Bool)

(declare-fun array_inv!24145 (array!65308) Bool)

(declare-fun array_inv!24146 (array!65310) Bool)

(assert (=> b!1037176 (= e!586699 (and tp!73816 tp_is_empty!24611 (array_inv!24145 (_keys!11473 thiss!1427)) (array_inv!24146 (_values!6304 thiss!1427)) e!586701))))

(declare-fun b!1037178 () Bool)

(declare-fun e!586700 () Bool)

(assert (=> b!1037178 (= e!586700 tp_is_empty!24611)))

(declare-fun mapIsEmpty!38442 () Bool)

(assert (=> mapIsEmpty!38442 mapRes!38442))

(declare-fun b!1037179 () Bool)

(declare-fun res!692156 () Bool)

(assert (=> b!1037179 (=> (not res!692156) (not e!586704))))

(assert (=> b!1037179 (= res!692156 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1037180 () Bool)

(assert (=> b!1037180 (= e!586701 (and e!586700 mapRes!38442))))

(declare-fun condMapEmpty!38442 () Bool)

(declare-fun mapDefault!38442 () ValueCell!11602)

