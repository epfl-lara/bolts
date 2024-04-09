; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90428 () Bool)

(assert start!90428)

(declare-fun b!1034612 () Bool)

(declare-fun b_free!20803 () Bool)

(declare-fun b_next!20803 () Bool)

(assert (=> b!1034612 (= b_free!20803 (not b_next!20803))))

(declare-fun tp!73515 () Bool)

(declare-fun b_and!33321 () Bool)

(assert (=> b!1034612 (= tp!73515 b_and!33321)))

(declare-fun res!691052 () Bool)

(declare-fun e!584917 () Bool)

(assert (=> start!90428 (=> (not res!691052) (not e!584917))))

(declare-datatypes ((V!37571 0))(
  ( (V!37572 (val!12312 Int)) )
))
(declare-datatypes ((ValueCell!11558 0))(
  ( (ValueCellFull!11558 (v!14893 V!37571)) (EmptyCell!11558) )
))
(declare-datatypes ((array!65112 0))(
  ( (array!65113 (arr!31345 (Array (_ BitVec 32) (_ BitVec 64))) (size!31869 (_ BitVec 32))) )
))
(declare-datatypes ((array!65114 0))(
  ( (array!65115 (arr!31346 (Array (_ BitVec 32) ValueCell!11558)) (size!31870 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5710 0))(
  ( (LongMapFixedSize!5711 (defaultEntry!6233 Int) (mask!30090 (_ BitVec 32)) (extraKeys!5963 (_ BitVec 32)) (zeroValue!6067 V!37571) (minValue!6069 V!37571) (_size!2910 (_ BitVec 32)) (_keys!11412 array!65112) (_values!6256 array!65114) (_vacant!2910 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5710)

(declare-fun valid!2106 (LongMapFixedSize!5710) Bool)

(assert (=> start!90428 (= res!691052 (valid!2106 thiss!1427))))

(assert (=> start!90428 e!584917))

(declare-fun e!584913 () Bool)

(assert (=> start!90428 e!584913))

(assert (=> start!90428 true))

(declare-fun b!1034608 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1034608 (= e!584917 (not (validMask!0 (mask!30090 thiss!1427))))))

(declare-fun b!1034609 () Bool)

(declare-fun res!691053 () Bool)

(assert (=> b!1034609 (=> (not res!691053) (not e!584917))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1034609 (= res!691053 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034610 () Bool)

(declare-fun e!584912 () Bool)

(declare-fun tp_is_empty!24523 () Bool)

(assert (=> b!1034610 (= e!584912 tp_is_empty!24523)))

(declare-fun mapNonEmpty!38272 () Bool)

(declare-fun mapRes!38272 () Bool)

(declare-fun tp!73514 () Bool)

(declare-fun e!584916 () Bool)

(assert (=> mapNonEmpty!38272 (= mapRes!38272 (and tp!73514 e!584916))))

(declare-fun mapRest!38272 () (Array (_ BitVec 32) ValueCell!11558))

(declare-fun mapKey!38272 () (_ BitVec 32))

(declare-fun mapValue!38272 () ValueCell!11558)

(assert (=> mapNonEmpty!38272 (= (arr!31346 (_values!6256 thiss!1427)) (store mapRest!38272 mapKey!38272 mapValue!38272))))

(declare-fun b!1034611 () Bool)

(assert (=> b!1034611 (= e!584916 tp_is_empty!24523)))

(declare-fun e!584914 () Bool)

(declare-fun array_inv!24083 (array!65112) Bool)

(declare-fun array_inv!24084 (array!65114) Bool)

(assert (=> b!1034612 (= e!584913 (and tp!73515 tp_is_empty!24523 (array_inv!24083 (_keys!11412 thiss!1427)) (array_inv!24084 (_values!6256 thiss!1427)) e!584914))))

(declare-fun b!1034613 () Bool)

(assert (=> b!1034613 (= e!584914 (and e!584912 mapRes!38272))))

(declare-fun condMapEmpty!38272 () Bool)

(declare-fun mapDefault!38272 () ValueCell!11558)

