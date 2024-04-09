; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133684 () Bool)

(assert start!133684)

(declare-fun b!1562597 () Bool)

(declare-fun e!870803 () Bool)

(declare-fun e!870805 () Bool)

(declare-fun mapRes!59478 () Bool)

(assert (=> b!1562597 (= e!870803 (and e!870805 mapRes!59478))))

(declare-fun condMapEmpty!59478 () Bool)

(declare-datatypes ((V!59853 0))(
  ( (V!59854 (val!19451 Int)) )
))
(declare-datatypes ((ValueCell!18337 0))(
  ( (ValueCellFull!18337 (v!22200 V!59853)) (EmptyCell!18337) )
))
(declare-datatypes ((array!104135 0))(
  ( (array!104136 (arr!50255 (Array (_ BitVec 32) ValueCell!18337)) (size!50806 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104135)

(declare-fun mapDefault!59478 () ValueCell!18337)

