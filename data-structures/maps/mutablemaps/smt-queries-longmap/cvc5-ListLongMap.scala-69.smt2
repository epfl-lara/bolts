; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!946 () Bool)

(assert start!946)

(declare-fun b_free!319 () Bool)

(declare-fun b_next!319 () Bool)

(assert (=> start!946 (= b_free!319 (not b_next!319))))

(declare-fun tp!1189 () Bool)

(declare-fun b_and!467 () Bool)

(assert (=> start!946 (= tp!1189 b_and!467)))

(declare-fun b!8005 () Bool)

(declare-fun res!7729 () Bool)

(declare-fun e!4536 () Bool)

(assert (=> b!8005 (=> (not res!7729) (not e!4536))))

(declare-datatypes ((array!719 0))(
  ( (array!720 (arr!347 (Array (_ BitVec 32) (_ BitVec 64))) (size!409 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!719)

(declare-datatypes ((List!238 0))(
  ( (Nil!235) (Cons!234 (h!800 (_ BitVec 64)) (t!2375 List!238)) )
))
(declare-fun arrayNoDuplicates!0 (array!719 (_ BitVec 32) List!238) Bool)

(assert (=> b!8005 (= res!7729 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!235))))

(declare-fun b!8006 () Bool)

(declare-fun e!4534 () Bool)

(declare-fun e!4533 () Bool)

(declare-fun mapRes!569 () Bool)

(assert (=> b!8006 (= e!4534 (and e!4533 mapRes!569))))

(declare-fun condMapEmpty!569 () Bool)

(declare-datatypes ((V!707 0))(
  ( (V!708 (val!204 Int)) )
))
(declare-datatypes ((ValueCell!182 0))(
  ( (ValueCellFull!182 (v!1296 V!707)) (EmptyCell!182) )
))
(declare-datatypes ((array!721 0))(
  ( (array!722 (arr!348 (Array (_ BitVec 32) ValueCell!182)) (size!410 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!721)

(declare-fun mapDefault!569 () ValueCell!182)

