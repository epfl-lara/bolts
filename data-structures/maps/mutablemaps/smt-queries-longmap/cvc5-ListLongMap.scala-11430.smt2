; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133366 () Bool)

(assert start!133366)

(declare-fun b!1559041 () Bool)

(declare-fun e!868643 () Bool)

(declare-fun e!868645 () Bool)

(declare-fun mapRes!59052 () Bool)

(assert (=> b!1559041 (= e!868643 (and e!868645 mapRes!59052))))

(declare-fun condMapEmpty!59052 () Bool)

(declare-datatypes ((V!59489 0))(
  ( (V!59490 (val!19314 Int)) )
))
(declare-datatypes ((ValueCell!18200 0))(
  ( (ValueCellFull!18200 (v!22062 V!59489)) (EmptyCell!18200) )
))
(declare-datatypes ((array!103601 0))(
  ( (array!103602 (arr!49993 (Array (_ BitVec 32) ValueCell!18200)) (size!50544 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103601)

(declare-fun mapDefault!59052 () ValueCell!18200)

