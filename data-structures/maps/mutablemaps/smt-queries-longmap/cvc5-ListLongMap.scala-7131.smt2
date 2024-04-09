; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90552 () Bool)

(assert start!90552)

(declare-fun b!1035347 () Bool)

(declare-fun b_free!20839 () Bool)

(declare-fun b_next!20839 () Bool)

(assert (=> b!1035347 (= b_free!20839 (not b_next!20839))))

(declare-fun tp!73645 () Bool)

(declare-fun b_and!33357 () Bool)

(assert (=> b!1035347 (= tp!73645 b_and!33357)))

(declare-fun b!1035346 () Bool)

(declare-fun e!585453 () Bool)

(declare-datatypes ((V!37619 0))(
  ( (V!37620 (val!12330 Int)) )
))
(declare-datatypes ((ValueCell!11576 0))(
  ( (ValueCellFull!11576 (v!14911 V!37619)) (EmptyCell!11576) )
))
(declare-datatypes ((array!65196 0))(
  ( (array!65197 (arr!31381 (Array (_ BitVec 32) (_ BitVec 64))) (size!31910 (_ BitVec 32))) )
))
(declare-datatypes ((array!65198 0))(
  ( (array!65199 (arr!31382 (Array (_ BitVec 32) ValueCell!11576)) (size!31911 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5746 0))(
  ( (LongMapFixedSize!5747 (defaultEntry!6251 Int) (mask!30131 (_ BitVec 32)) (extraKeys!5981 (_ BitVec 32)) (zeroValue!6085 V!37619) (minValue!6087 V!37619) (_size!2928 (_ BitVec 32)) (_keys!11435 array!65196) (_values!6274 array!65198) (_vacant!2928 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5746)

(assert (=> b!1035346 (= e!585453 (and (= (size!31911 (_values!6274 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30131 thiss!1427))) (= (size!31910 (_keys!11435 thiss!1427)) (size!31911 (_values!6274 thiss!1427))) (bvsge (mask!30131 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5981 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5981 thiss!1427) #b00000000000000000000000000000011) (bvslt (bvand (extraKeys!5981 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!585451 () Bool)

(declare-fun e!585454 () Bool)

(declare-fun tp_is_empty!24559 () Bool)

(declare-fun array_inv!24105 (array!65196) Bool)

(declare-fun array_inv!24106 (array!65198) Bool)

(assert (=> b!1035347 (= e!585451 (and tp!73645 tp_is_empty!24559 (array_inv!24105 (_keys!11435 thiss!1427)) (array_inv!24106 (_values!6274 thiss!1427)) e!585454))))

(declare-fun b!1035348 () Bool)

(declare-fun res!691396 () Bool)

(assert (=> b!1035348 (=> (not res!691396) (not e!585453))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035348 (= res!691396 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!38349 () Bool)

(declare-fun mapRes!38349 () Bool)

(declare-fun tp!73646 () Bool)

(declare-fun e!585452 () Bool)

(assert (=> mapNonEmpty!38349 (= mapRes!38349 (and tp!73646 e!585452))))

(declare-fun mapRest!38349 () (Array (_ BitVec 32) ValueCell!11576))

(declare-fun mapKey!38349 () (_ BitVec 32))

(declare-fun mapValue!38349 () ValueCell!11576)

(assert (=> mapNonEmpty!38349 (= (arr!31382 (_values!6274 thiss!1427)) (store mapRest!38349 mapKey!38349 mapValue!38349))))

(declare-fun res!691398 () Bool)

(assert (=> start!90552 (=> (not res!691398) (not e!585453))))

(declare-fun valid!2119 (LongMapFixedSize!5746) Bool)

(assert (=> start!90552 (= res!691398 (valid!2119 thiss!1427))))

(assert (=> start!90552 e!585453))

(assert (=> start!90552 e!585451))

(assert (=> start!90552 true))

(declare-fun b!1035349 () Bool)

(declare-fun e!585455 () Bool)

(assert (=> b!1035349 (= e!585454 (and e!585455 mapRes!38349))))

(declare-fun condMapEmpty!38349 () Bool)

(declare-fun mapDefault!38349 () ValueCell!11576)

