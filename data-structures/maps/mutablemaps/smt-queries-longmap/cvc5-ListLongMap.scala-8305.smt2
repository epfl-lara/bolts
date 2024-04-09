; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101214 () Bool)

(assert start!101214)

(declare-fun b_free!26101 () Bool)

(declare-fun b_next!26101 () Bool)

(assert (=> start!101214 (= b_free!26101 (not b_next!26101))))

(declare-fun tp!91325 () Bool)

(declare-fun b_and!43329 () Bool)

(assert (=> start!101214 (= tp!91325 b_and!43329)))

(declare-fun b!1214420 () Bool)

(declare-fun e!689689 () Bool)

(declare-fun tp_is_empty!30805 () Bool)

(assert (=> b!1214420 (= e!689689 tp_is_empty!30805)))

(declare-fun mapIsEmpty!48082 () Bool)

(declare-fun mapRes!48082 () Bool)

(assert (=> mapIsEmpty!48082 mapRes!48082))

(declare-fun b!1214421 () Bool)

(declare-fun e!689691 () Bool)

(assert (=> b!1214421 (= e!689691 tp_is_empty!30805)))

(declare-fun b!1214422 () Bool)

(declare-fun e!689688 () Bool)

(assert (=> b!1214422 (= e!689688 (and e!689691 mapRes!48082))))

(declare-fun condMapEmpty!48082 () Bool)

(declare-datatypes ((V!46201 0))(
  ( (V!46202 (val!15459 Int)) )
))
(declare-datatypes ((ValueCell!14693 0))(
  ( (ValueCellFull!14693 (v!18113 V!46201)) (EmptyCell!14693) )
))
(declare-datatypes ((array!78370 0))(
  ( (array!78371 (arr!37816 (Array (_ BitVec 32) ValueCell!14693)) (size!38353 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78370)

(declare-fun mapDefault!48082 () ValueCell!14693)

