; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77594 () Bool)

(assert start!77594)

(declare-fun b_free!16151 () Bool)

(declare-fun b_next!16151 () Bool)

(assert (=> start!77594 (= b_free!16151 (not b_next!16151))))

(declare-fun tp!56716 () Bool)

(declare-fun b_and!26535 () Bool)

(assert (=> start!77594 (= tp!56716 b_and!26535)))

(declare-fun b!903610 () Bool)

(declare-fun e!506345 () Bool)

(declare-fun e!506346 () Bool)

(declare-fun mapRes!29566 () Bool)

(assert (=> b!903610 (= e!506345 (and e!506346 mapRes!29566))))

(declare-fun condMapEmpty!29566 () Bool)

(declare-datatypes ((V!29723 0))(
  ( (V!29724 (val!9335 Int)) )
))
(declare-datatypes ((ValueCell!8803 0))(
  ( (ValueCellFull!8803 (v!11840 V!29723)) (EmptyCell!8803) )
))
(declare-datatypes ((array!53174 0))(
  ( (array!53175 (arr!25542 (Array (_ BitVec 32) ValueCell!8803)) (size!26002 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53174)

(declare-fun mapDefault!29566 () ValueCell!8803)

