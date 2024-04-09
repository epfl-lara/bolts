; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84822 () Bool)

(assert start!84822)

(declare-fun mapNonEmpty!37032 () Bool)

(declare-fun mapRes!37032 () Bool)

(declare-fun tp!70104 () Bool)

(declare-fun e!559025 () Bool)

(assert (=> mapNonEmpty!37032 (= mapRes!37032 (and tp!70104 e!559025))))

(declare-fun mapKey!37032 () (_ BitVec 32))

(declare-datatypes ((V!36073 0))(
  ( (V!36074 (val!11709 Int)) )
))
(declare-datatypes ((ValueCell!11177 0))(
  ( (ValueCellFull!11177 (v!14285 V!36073)) (EmptyCell!11177) )
))
(declare-fun mapValue!37032 () ValueCell!11177)

(declare-fun mapRest!37032 () (Array (_ BitVec 32) ValueCell!11177))

(declare-datatypes ((array!62585 0))(
  ( (array!62586 (arr!30138 (Array (_ BitVec 32) ValueCell!11177)) (size!30618 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62585)

(assert (=> mapNonEmpty!37032 (= (arr!30138 _values!1551) (store mapRest!37032 mapKey!37032 mapValue!37032))))

(declare-fun b!991259 () Bool)

(declare-fun e!559024 () Bool)

(declare-fun e!559023 () Bool)

(assert (=> b!991259 (= e!559024 (and e!559023 mapRes!37032))))

(declare-fun condMapEmpty!37032 () Bool)

(declare-fun mapDefault!37032 () ValueCell!11177)

