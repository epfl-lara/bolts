; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!460 () Bool)

(assert start!460)

(declare-fun res!4817 () Bool)

(declare-fun e!1083 () Bool)

(assert (=> start!460 (=> (not res!4817) (not e!1083))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!460 (= res!4817 (validMask!0 mask!2250))))

(assert (=> start!460 e!1083))

(assert (=> start!460 true))

(declare-datatypes ((V!263 0))(
  ( (V!264 (val!38 Int)) )
))
(declare-datatypes ((ValueCell!16 0))(
  ( (ValueCellFull!16 (v!1124 V!263)) (EmptyCell!16) )
))
(declare-datatypes ((array!57 0))(
  ( (array!58 (arr!27 (Array (_ BitVec 32) ValueCell!16)) (size!89 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!57)

(declare-fun e!1082 () Bool)

(declare-fun array_inv!15 (array!57) Bool)

(assert (=> start!460 (and (array_inv!15 _values!1492) e!1082)))

(declare-datatypes ((array!59 0))(
  ( (array!60 (arr!28 (Array (_ BitVec 32) (_ BitVec 64))) (size!90 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!59)

(declare-fun array_inv!16 (array!59) Bool)

(assert (=> start!460 (array_inv!16 _keys!1806)))

(declare-fun b!2729 () Bool)

(declare-fun e!1079 () Bool)

(declare-fun mapRes!38 () Bool)

(assert (=> b!2729 (= e!1082 (and e!1079 mapRes!38))))

(declare-fun condMapEmpty!38 () Bool)

(declare-fun mapDefault!38 () ValueCell!16)

