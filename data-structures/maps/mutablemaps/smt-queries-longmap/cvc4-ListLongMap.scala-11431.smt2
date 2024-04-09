; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133382 () Bool)

(assert start!133382)

(declare-fun mapIsEmpty!59070 () Bool)

(declare-fun mapRes!59070 () Bool)

(assert (=> mapIsEmpty!59070 mapRes!59070))

(declare-fun b!1559125 () Bool)

(declare-fun e!868728 () Bool)

(declare-fun e!868724 () Bool)

(assert (=> b!1559125 (= e!868728 (and e!868724 mapRes!59070))))

(declare-fun condMapEmpty!59070 () Bool)

(declare-datatypes ((V!59501 0))(
  ( (V!59502 (val!19319 Int)) )
))
(declare-datatypes ((ValueCell!18205 0))(
  ( (ValueCellFull!18205 (v!22067 V!59501)) (EmptyCell!18205) )
))
(declare-datatypes ((array!103621 0))(
  ( (array!103622 (arr!50002 (Array (_ BitVec 32) ValueCell!18205)) (size!50553 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103621)

(declare-fun mapDefault!59070 () ValueCell!18205)

