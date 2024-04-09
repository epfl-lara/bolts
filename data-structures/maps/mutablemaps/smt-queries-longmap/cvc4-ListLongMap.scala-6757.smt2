; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84826 () Bool)

(assert start!84826)

(declare-fun mapIsEmpty!37038 () Bool)

(declare-fun mapRes!37038 () Bool)

(assert (=> mapIsEmpty!37038 mapRes!37038))

(declare-fun mapNonEmpty!37038 () Bool)

(declare-fun tp!70110 () Bool)

(declare-fun e!559053 () Bool)

(assert (=> mapNonEmpty!37038 (= mapRes!37038 (and tp!70110 e!559053))))

(declare-datatypes ((V!36077 0))(
  ( (V!36078 (val!11711 Int)) )
))
(declare-datatypes ((ValueCell!11179 0))(
  ( (ValueCellFull!11179 (v!14287 V!36077)) (EmptyCell!11179) )
))
(declare-fun mapRest!37038 () (Array (_ BitVec 32) ValueCell!11179))

(declare-fun mapKey!37038 () (_ BitVec 32))

(declare-fun mapValue!37038 () ValueCell!11179)

(declare-datatypes ((array!62591 0))(
  ( (array!62592 (arr!30141 (Array (_ BitVec 32) ValueCell!11179)) (size!30621 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62591)

(assert (=> mapNonEmpty!37038 (= (arr!30141 _values!1551) (store mapRest!37038 mapKey!37038 mapValue!37038))))

(declare-fun b!991283 () Bool)

(declare-fun e!559055 () Bool)

(declare-fun e!559052 () Bool)

(assert (=> b!991283 (= e!559055 (and e!559052 mapRes!37038))))

(declare-fun condMapEmpty!37038 () Bool)

(declare-fun mapDefault!37038 () ValueCell!11179)

