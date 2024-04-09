; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!914 () Bool)

(assert start!914)

(declare-fun b_free!287 () Bool)

(declare-fun b_next!287 () Bool)

(assert (=> start!914 (= b_free!287 (not b_next!287))))

(declare-fun tp!1093 () Bool)

(declare-fun b_and!435 () Bool)

(assert (=> start!914 (= tp!1093 b_and!435)))

(declare-fun b!7659 () Bool)

(declare-fun e!4292 () Bool)

(declare-fun e!4289 () Bool)

(declare-fun mapRes!521 () Bool)

(assert (=> b!7659 (= e!4292 (and e!4289 mapRes!521))))

(declare-fun condMapEmpty!521 () Bool)

(declare-datatypes ((V!663 0))(
  ( (V!664 (val!188 Int)) )
))
(declare-datatypes ((ValueCell!166 0))(
  ( (ValueCellFull!166 (v!1280 V!663)) (EmptyCell!166) )
))
(declare-datatypes ((array!663 0))(
  ( (array!664 (arr!319 (Array (_ BitVec 32) ValueCell!166)) (size!381 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!663)

(declare-fun mapDefault!521 () ValueCell!166)

