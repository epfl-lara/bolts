; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95386 () Bool)

(assert start!95386)

(declare-fun mapIsEmpty!40873 () Bool)

(declare-fun mapRes!40873 () Bool)

(assert (=> mapIsEmpty!40873 mapRes!40873))

(declare-fun b!1077113 () Bool)

(declare-fun e!615869 () Bool)

(declare-fun e!615872 () Bool)

(assert (=> b!1077113 (= e!615869 (and e!615872 mapRes!40873))))

(declare-fun condMapEmpty!40873 () Bool)

(declare-datatypes ((V!39917 0))(
  ( (V!39918 (val!13103 Int)) )
))
(declare-datatypes ((ValueCell!12337 0))(
  ( (ValueCellFull!12337 (v!15723 V!39917)) (EmptyCell!12337) )
))
(declare-datatypes ((array!69098 0))(
  ( (array!69099 (arr!33226 (Array (_ BitVec 32) ValueCell!12337)) (size!33763 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69098)

(declare-fun mapDefault!40873 () ValueCell!12337)

