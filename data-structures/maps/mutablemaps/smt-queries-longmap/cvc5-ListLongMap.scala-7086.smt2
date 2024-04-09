; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89606 () Bool)

(assert start!89606)

(declare-fun b!1027421 () Bool)

(declare-fun b_free!20569 () Bool)

(declare-fun b_next!20569 () Bool)

(assert (=> b!1027421 (= b_free!20569 (not b_next!20569))))

(declare-fun tp!72753 () Bool)

(declare-fun b_and!32833 () Bool)

(assert (=> b!1027421 (= tp!72753 b_and!32833)))

(declare-fun mapNonEmpty!37862 () Bool)

(declare-fun mapRes!37862 () Bool)

(declare-fun tp!72754 () Bool)

(declare-fun e!579890 () Bool)

(assert (=> mapNonEmpty!37862 (= mapRes!37862 (and tp!72754 e!579890))))

(declare-fun mapKey!37862 () (_ BitVec 32))

(declare-datatypes ((V!37259 0))(
  ( (V!37260 (val!12195 Int)) )
))
(declare-datatypes ((ValueCell!11441 0))(
  ( (ValueCellFull!11441 (v!14765 V!37259)) (EmptyCell!11441) )
))
(declare-fun mapRest!37862 () (Array (_ BitVec 32) ValueCell!11441))

(declare-fun mapValue!37862 () ValueCell!11441)

(declare-datatypes ((array!64612 0))(
  ( (array!64613 (arr!31111 (Array (_ BitVec 32) (_ BitVec 64))) (size!31625 (_ BitVec 32))) )
))
(declare-datatypes ((array!64614 0))(
  ( (array!64615 (arr!31112 (Array (_ BitVec 32) ValueCell!11441)) (size!31626 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5476 0))(
  ( (LongMapFixedSize!5477 (defaultEntry!6090 Int) (mask!29803 (_ BitVec 32)) (extraKeys!5822 (_ BitVec 32)) (zeroValue!5926 V!37259) (minValue!5926 V!37259) (_size!2793 (_ BitVec 32)) (_keys!11234 array!64612) (_values!6113 array!64614) (_vacant!2793 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5476)

(assert (=> mapNonEmpty!37862 (= (arr!31112 (_values!6113 thiss!1427)) (store mapRest!37862 mapKey!37862 mapValue!37862))))

(declare-fun res!687778 () Bool)

(declare-fun e!579889 () Bool)

(assert (=> start!89606 (=> (not res!687778) (not e!579889))))

(declare-fun valid!2028 (LongMapFixedSize!5476) Bool)

(assert (=> start!89606 (= res!687778 (valid!2028 thiss!1427))))

(assert (=> start!89606 e!579889))

(declare-fun e!579893 () Bool)

(assert (=> start!89606 e!579893))

(assert (=> start!89606 true))

(declare-fun e!579887 () Bool)

(declare-fun tp_is_empty!24289 () Bool)

(declare-fun array_inv!23935 (array!64612) Bool)

(declare-fun array_inv!23936 (array!64614) Bool)

(assert (=> b!1027421 (= e!579893 (and tp!72753 tp_is_empty!24289 (array_inv!23935 (_keys!11234 thiss!1427)) (array_inv!23936 (_values!6113 thiss!1427)) e!579887))))

(declare-fun b!1027422 () Bool)

(declare-fun e!579888 () Bool)

(assert (=> b!1027422 (= e!579889 e!579888)))

(declare-fun res!687779 () Bool)

(assert (=> b!1027422 (=> (not res!687779) (not e!579888))))

(declare-datatypes ((SeekEntryResult!9660 0))(
  ( (MissingZero!9660 (index!41010 (_ BitVec 32))) (Found!9660 (index!41011 (_ BitVec 32))) (Intermediate!9660 (undefined!10472 Bool) (index!41012 (_ BitVec 32)) (x!91415 (_ BitVec 32))) (Undefined!9660) (MissingVacant!9660 (index!41013 (_ BitVec 32))) )
))
(declare-fun lt!452267 () SeekEntryResult!9660)

(assert (=> b!1027422 (= res!687779 (is-Found!9660 lt!452267))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64612 (_ BitVec 32)) SeekEntryResult!9660)

(assert (=> b!1027422 (= lt!452267 (seekEntry!0 key!909 (_keys!11234 thiss!1427) (mask!29803 thiss!1427)))))

(declare-fun b!1027423 () Bool)

(declare-fun e!579891 () Bool)

(assert (=> b!1027423 (= e!579887 (and e!579891 mapRes!37862))))

(declare-fun condMapEmpty!37862 () Bool)

(declare-fun mapDefault!37862 () ValueCell!11441)

