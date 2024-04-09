; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133530 () Bool)

(assert start!133530)

(declare-fun b!1560521 () Bool)

(declare-fun e!869640 () Bool)

(declare-fun tp_is_empty!38581 () Bool)

(assert (=> b!1560521 (= e!869640 tp_is_empty!38581)))

(declare-fun b!1560522 () Bool)

(declare-fun e!869639 () Bool)

(declare-fun mapRes!59247 () Bool)

(assert (=> b!1560522 (= e!869639 (and e!869640 mapRes!59247))))

(declare-fun condMapEmpty!59247 () Bool)

(declare-datatypes ((V!59649 0))(
  ( (V!59650 (val!19374 Int)) )
))
(declare-datatypes ((ValueCell!18260 0))(
  ( (ValueCellFull!18260 (v!22123 V!59649)) (EmptyCell!18260) )
))
(declare-datatypes ((array!103837 0))(
  ( (array!103838 (arr!50106 (Array (_ BitVec 32) ValueCell!18260)) (size!50657 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103837)

(declare-fun mapDefault!59247 () ValueCell!18260)

