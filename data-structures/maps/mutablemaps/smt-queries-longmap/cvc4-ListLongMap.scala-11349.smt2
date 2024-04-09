; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132034 () Bool)

(assert start!132034)

(declare-fun b_free!31715 () Bool)

(declare-fun b_next!31715 () Bool)

(assert (=> start!132034 (= b_free!31715 (not b_next!31715))))

(declare-fun tp!111398 () Bool)

(declare-fun b_and!51135 () Bool)

(assert (=> start!132034 (= tp!111398 b_and!51135)))

(declare-fun b!1546474 () Bool)

(declare-fun e!860828 () Bool)

(declare-fun tp_is_empty!37991 () Bool)

(assert (=> b!1546474 (= e!860828 tp_is_empty!37991)))

(declare-fun b!1546475 () Bool)

(declare-fun res!1060329 () Bool)

(declare-fun e!860832 () Bool)

(assert (=> b!1546475 (=> (not res!1060329) (not e!860832))))

(declare-datatypes ((array!103149 0))(
  ( (array!103150 (arr!49772 (Array (_ BitVec 32) (_ BitVec 64))) (size!50323 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103149)

(declare-datatypes ((List!36182 0))(
  ( (Nil!36179) (Cons!36178 (h!37624 (_ BitVec 64)) (t!50883 List!36182)) )
))
(declare-fun arrayNoDuplicates!0 (array!103149 (_ BitVec 32) List!36182) Bool)

(assert (=> b!1546475 (= res!1060329 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36179))))

(declare-fun b!1546476 () Bool)

(declare-fun e!860835 () Bool)

(assert (=> b!1546476 (= e!860835 tp_is_empty!37991)))

(declare-fun mapNonEmpty!58690 () Bool)

(declare-fun mapRes!58690 () Bool)

(declare-fun tp!111397 () Bool)

(assert (=> mapNonEmpty!58690 (= mapRes!58690 (and tp!111397 e!860828))))

(declare-datatypes ((V!59097 0))(
  ( (V!59098 (val!19073 Int)) )
))
(declare-datatypes ((ValueCell!18085 0))(
  ( (ValueCellFull!18085 (v!21871 V!59097)) (EmptyCell!18085) )
))
(declare-fun mapValue!58690 () ValueCell!18085)

(declare-fun mapKey!58690 () (_ BitVec 32))

(declare-datatypes ((array!103151 0))(
  ( (array!103152 (arr!49773 (Array (_ BitVec 32) ValueCell!18085)) (size!50324 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103151)

(declare-fun mapRest!58690 () (Array (_ BitVec 32) ValueCell!18085))

(assert (=> mapNonEmpty!58690 (= (arr!49773 _values!470) (store mapRest!58690 mapKey!58690 mapValue!58690))))

(declare-fun b!1546477 () Bool)

(declare-fun e!860834 () Bool)

(assert (=> b!1546477 (= e!860834 (and e!860835 mapRes!58690))))

(declare-fun condMapEmpty!58690 () Bool)

(declare-fun mapDefault!58690 () ValueCell!18085)

