; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82398 () Bool)

(assert start!82398)

(declare-fun b_free!18637 () Bool)

(declare-fun b_next!18637 () Bool)

(assert (=> start!82398 (= b_free!18637 (not b_next!18637))))

(declare-fun tp!64881 () Bool)

(declare-fun b_and!30143 () Bool)

(assert (=> start!82398 (= tp!64881 b_and!30143)))

(declare-fun b!960272 () Bool)

(declare-fun e!541341 () Bool)

(declare-fun e!541340 () Bool)

(declare-fun mapRes!34003 () Bool)

(assert (=> b!960272 (= e!541341 (and e!541340 mapRes!34003))))

(declare-fun condMapEmpty!34003 () Bool)

(declare-datatypes ((V!33449 0))(
  ( (V!33450 (val!10725 Int)) )
))
(declare-datatypes ((ValueCell!10193 0))(
  ( (ValueCellFull!10193 (v!13282 V!33449)) (EmptyCell!10193) )
))
(declare-datatypes ((array!58801 0))(
  ( (array!58802 (arr!28270 (Array (_ BitVec 32) ValueCell!10193)) (size!28750 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58801)

(declare-fun mapDefault!34003 () ValueCell!10193)

