; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104662 () Bool)

(assert start!104662)

(declare-fun b!1247477 () Bool)

(declare-fun e!707754 () Bool)

(declare-fun e!707756 () Bool)

(declare-fun mapRes!48787 () Bool)

(assert (=> b!1247477 (= e!707754 (and e!707756 mapRes!48787))))

(declare-fun condMapEmpty!48787 () Bool)

(declare-datatypes ((V!47171 0))(
  ( (V!47172 (val!15740 Int)) )
))
(declare-datatypes ((ValueCell!14914 0))(
  ( (ValueCellFull!14914 (v!18436 V!47171)) (EmptyCell!14914) )
))
(declare-datatypes ((array!80387 0))(
  ( (array!80388 (arr!38758 (Array (_ BitVec 32) ValueCell!14914)) (size!39295 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80387)

(declare-fun mapDefault!48787 () ValueCell!14914)

