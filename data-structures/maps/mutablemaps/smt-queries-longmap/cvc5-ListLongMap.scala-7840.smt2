; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97820 () Bool)

(assert start!97820)

(declare-fun b_free!23485 () Bool)

(declare-fun b_next!23485 () Bool)

(assert (=> start!97820 (= b_free!23485 (not b_next!23485))))

(declare-fun tp!83160 () Bool)

(declare-fun b_and!37781 () Bool)

(assert (=> start!97820 (= tp!83160 b_and!37781)))

(declare-fun b!1118574 () Bool)

(declare-fun e!637155 () Bool)

(declare-fun tp_is_empty!28015 () Bool)

(assert (=> b!1118574 (= e!637155 tp_is_empty!28015)))

(declare-fun b!1118575 () Bool)

(declare-fun e!637157 () Bool)

(declare-fun mapRes!43840 () Bool)

(assert (=> b!1118575 (= e!637157 (and e!637155 mapRes!43840))))

(declare-fun condMapEmpty!43840 () Bool)

(declare-datatypes ((V!42481 0))(
  ( (V!42482 (val!14064 Int)) )
))
(declare-datatypes ((ValueCell!13298 0))(
  ( (ValueCellFull!13298 (v!16698 V!42481)) (EmptyCell!13298) )
))
(declare-datatypes ((array!72860 0))(
  ( (array!72861 (arr!35079 (Array (_ BitVec 32) ValueCell!13298)) (size!35616 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72860)

(declare-fun mapDefault!43840 () ValueCell!13298)

