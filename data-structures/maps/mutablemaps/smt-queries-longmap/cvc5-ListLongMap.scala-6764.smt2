; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84908 () Bool)

(assert start!84908)

(declare-fun b!991753 () Bool)

(declare-fun e!559434 () Bool)

(declare-fun tp_is_empty!23359 () Bool)

(assert (=> b!991753 (= e!559434 tp_is_empty!23359)))

(declare-fun mapNonEmpty!37110 () Bool)

(declare-fun mapRes!37110 () Bool)

(declare-fun tp!70182 () Bool)

(assert (=> mapNonEmpty!37110 (= mapRes!37110 (and tp!70182 e!559434))))

(declare-datatypes ((V!36129 0))(
  ( (V!36130 (val!11730 Int)) )
))
(declare-datatypes ((ValueCell!11198 0))(
  ( (ValueCellFull!11198 (v!14307 V!36129)) (EmptyCell!11198) )
))
(declare-fun mapRest!37110 () (Array (_ BitVec 32) ValueCell!11198))

(declare-fun mapKey!37110 () (_ BitVec 32))

(declare-datatypes ((array!62671 0))(
  ( (array!62672 (arr!30176 (Array (_ BitVec 32) ValueCell!11198)) (size!30656 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62671)

(declare-fun mapValue!37110 () ValueCell!11198)

(assert (=> mapNonEmpty!37110 (= (arr!30176 _values!1551) (store mapRest!37110 mapKey!37110 mapValue!37110))))

(declare-fun b!991754 () Bool)

(declare-fun e!559433 () Bool)

(declare-fun e!559432 () Bool)

(assert (=> b!991754 (= e!559433 (and e!559432 mapRes!37110))))

(declare-fun condMapEmpty!37110 () Bool)

(declare-fun mapDefault!37110 () ValueCell!11198)

