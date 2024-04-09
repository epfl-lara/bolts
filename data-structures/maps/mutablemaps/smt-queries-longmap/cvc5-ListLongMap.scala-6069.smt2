; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78550 () Bool)

(assert start!78550)

(declare-fun b!915240 () Bool)

(declare-fun e!513682 () Bool)

(declare-fun e!513681 () Bool)

(declare-fun mapRes!30621 () Bool)

(assert (=> b!915240 (= e!513682 (and e!513681 mapRes!30621))))

(declare-fun condMapEmpty!30621 () Bool)

(declare-datatypes ((V!30623 0))(
  ( (V!30624 (val!9672 Int)) )
))
(declare-datatypes ((ValueCell!9140 0))(
  ( (ValueCellFull!9140 (v!12190 V!30623)) (EmptyCell!9140) )
))
(declare-datatypes ((array!54494 0))(
  ( (array!54495 (arr!26188 (Array (_ BitVec 32) ValueCell!9140)) (size!26648 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54494)

(declare-fun mapDefault!30621 () ValueCell!9140)

