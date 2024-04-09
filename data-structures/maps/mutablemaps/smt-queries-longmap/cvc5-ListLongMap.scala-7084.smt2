; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89594 () Bool)

(assert start!89594)

(declare-fun b!1027252 () Bool)

(declare-fun b_free!20557 () Bool)

(declare-fun b_next!20557 () Bool)

(assert (=> b!1027252 (= b_free!20557 (not b_next!20557))))

(declare-fun tp!72718 () Bool)

(declare-fun b_and!32821 () Bool)

(assert (=> b!1027252 (= tp!72718 b_and!32821)))

(declare-fun b!1027247 () Bool)

(declare-fun res!687678 () Bool)

(declare-fun e!579745 () Bool)

(assert (=> b!1027247 (=> res!687678 e!579745)))

(declare-datatypes ((V!37243 0))(
  ( (V!37244 (val!12189 Int)) )
))
(declare-datatypes ((ValueCell!11435 0))(
  ( (ValueCellFull!11435 (v!14759 V!37243)) (EmptyCell!11435) )
))
(declare-datatypes ((array!64588 0))(
  ( (array!64589 (arr!31099 (Array (_ BitVec 32) (_ BitVec 64))) (size!31613 (_ BitVec 32))) )
))
(declare-datatypes ((array!64590 0))(
  ( (array!64591 (arr!31100 (Array (_ BitVec 32) ValueCell!11435)) (size!31614 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5464 0))(
  ( (LongMapFixedSize!5465 (defaultEntry!6084 Int) (mask!29793 (_ BitVec 32)) (extraKeys!5816 (_ BitVec 32)) (zeroValue!5920 V!37243) (minValue!5920 V!37243) (_size!2787 (_ BitVec 32)) (_keys!11228 array!64588) (_values!6107 array!64590) (_vacant!2787 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5464)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64588 (_ BitVec 32)) Bool)

(assert (=> b!1027247 (= res!687678 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11228 thiss!1427) (mask!29793 thiss!1427))))))

(declare-fun mapIsEmpty!37844 () Bool)

(declare-fun mapRes!37844 () Bool)

(assert (=> mapIsEmpty!37844 mapRes!37844))

(declare-fun mapNonEmpty!37844 () Bool)

(declare-fun tp!72717 () Bool)

(declare-fun e!579751 () Bool)

(assert (=> mapNonEmpty!37844 (= mapRes!37844 (and tp!72717 e!579751))))

(declare-fun mapValue!37844 () ValueCell!11435)

(declare-fun mapRest!37844 () (Array (_ BitVec 32) ValueCell!11435))

(declare-fun mapKey!37844 () (_ BitVec 32))

(assert (=> mapNonEmpty!37844 (= (arr!31100 (_values!6107 thiss!1427)) (store mapRest!37844 mapKey!37844 mapValue!37844))))

(declare-fun b!1027248 () Bool)

(declare-fun e!579748 () Bool)

(declare-fun e!579747 () Bool)

(assert (=> b!1027248 (= e!579748 (and e!579747 mapRes!37844))))

(declare-fun condMapEmpty!37844 () Bool)

(declare-fun mapDefault!37844 () ValueCell!11435)

