; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91812 () Bool)

(assert start!91812)

(declare-fun b!1044307 () Bool)

(declare-fun b_free!21119 () Bool)

(declare-fun b_next!21119 () Bool)

(assert (=> b!1044307 (= b_free!21119 (not b_next!21119))))

(declare-fun tp!74605 () Bool)

(declare-fun b_and!33711 () Bool)

(assert (=> b!1044307 (= tp!74605 b_and!33711)))

(declare-fun mapNonEmpty!38888 () Bool)

(declare-fun mapRes!38888 () Bool)

(declare-fun tp!74604 () Bool)

(declare-fun e!591874 () Bool)

(assert (=> mapNonEmpty!38888 (= mapRes!38888 (and tp!74604 e!591874))))

(declare-fun mapKey!38888 () (_ BitVec 32))

(declare-datatypes ((V!37991 0))(
  ( (V!37992 (val!12470 Int)) )
))
(declare-datatypes ((ValueCell!11716 0))(
  ( (ValueCellFull!11716 (v!15063 V!37991)) (EmptyCell!11716) )
))
(declare-fun mapValue!38888 () ValueCell!11716)

(declare-datatypes ((array!65830 0))(
  ( (array!65831 (arr!31661 (Array (_ BitVec 32) (_ BitVec 64))) (size!32197 (_ BitVec 32))) )
))
(declare-datatypes ((array!65832 0))(
  ( (array!65833 (arr!31662 (Array (_ BitVec 32) ValueCell!11716)) (size!32198 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6026 0))(
  ( (LongMapFixedSize!6027 (defaultEntry!6401 Int) (mask!30503 (_ BitVec 32)) (extraKeys!6129 (_ BitVec 32)) (zeroValue!6235 V!37991) (minValue!6235 V!37991) (_size!3068 (_ BitVec 32)) (_keys!11662 array!65830) (_values!6424 array!65832) (_vacant!3068 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6026)

(declare-fun mapRest!38888 () (Array (_ BitVec 32) ValueCell!11716))

(assert (=> mapNonEmpty!38888 (= (arr!31662 (_values!6424 thiss!1427)) (store mapRest!38888 mapKey!38888 mapValue!38888))))

(declare-fun e!591879 () Bool)

(declare-fun e!591875 () Bool)

(declare-fun tp_is_empty!24839 () Bool)

(declare-fun array_inv!24303 (array!65830) Bool)

(declare-fun array_inv!24304 (array!65832) Bool)

(assert (=> b!1044307 (= e!591875 (and tp!74605 tp_is_empty!24839 (array_inv!24303 (_keys!11662 thiss!1427)) (array_inv!24304 (_values!6424 thiss!1427)) e!591879))))

(declare-fun b!1044308 () Bool)

(declare-fun e!591881 () Bool)

(assert (=> b!1044308 (= e!591879 (and e!591881 mapRes!38888))))

(declare-fun condMapEmpty!38888 () Bool)

(declare-fun mapDefault!38888 () ValueCell!11716)

