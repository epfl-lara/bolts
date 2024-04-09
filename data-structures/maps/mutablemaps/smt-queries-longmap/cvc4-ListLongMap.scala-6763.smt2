; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84906 () Bool)

(assert start!84906)

(declare-fun mapNonEmpty!37107 () Bool)

(declare-fun mapRes!37107 () Bool)

(declare-fun tp!70179 () Bool)

(declare-fun e!559421 () Bool)

(assert (=> mapNonEmpty!37107 (= mapRes!37107 (and tp!70179 e!559421))))

(declare-datatypes ((V!36125 0))(
  ( (V!36126 (val!11729 Int)) )
))
(declare-datatypes ((ValueCell!11197 0))(
  ( (ValueCellFull!11197 (v!14306 V!36125)) (EmptyCell!11197) )
))
(declare-fun mapRest!37107 () (Array (_ BitVec 32) ValueCell!11197))

(declare-fun mapValue!37107 () ValueCell!11197)

(declare-datatypes ((array!62669 0))(
  ( (array!62670 (arr!30175 (Array (_ BitVec 32) ValueCell!11197)) (size!30655 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62669)

(declare-fun mapKey!37107 () (_ BitVec 32))

(assert (=> mapNonEmpty!37107 (= (arr!30175 _values!1551) (store mapRest!37107 mapKey!37107 mapValue!37107))))

(declare-fun b!991731 () Bool)

(declare-fun e!559419 () Bool)

(declare-fun tp_is_empty!23357 () Bool)

(assert (=> b!991731 (= e!559419 tp_is_empty!23357)))

(declare-fun mapIsEmpty!37107 () Bool)

(assert (=> mapIsEmpty!37107 mapRes!37107))

(declare-fun b!991732 () Bool)

(declare-fun e!559417 () Bool)

(assert (=> b!991732 (= e!559417 (and e!559419 mapRes!37107))))

(declare-fun condMapEmpty!37107 () Bool)

(declare-fun mapDefault!37107 () ValueCell!11197)

