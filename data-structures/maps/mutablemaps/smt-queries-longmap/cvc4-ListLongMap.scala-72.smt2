; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!990 () Bool)

(assert start!990)

(declare-fun b_free!341 () Bool)

(declare-fun b_next!341 () Bool)

(assert (=> start!990 (= b_free!341 (not b_next!341))))

(declare-fun tp!1259 () Bool)

(declare-fun b_and!491 () Bool)

(assert (=> start!990 (= tp!1259 b_and!491)))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun lt!1778 () (_ BitVec 32))

(declare-fun e!4847 () Bool)

(declare-datatypes ((array!761 0))(
  ( (array!762 (arr!367 (Array (_ BitVec 32) (_ BitVec 64))) (size!429 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!761)

(declare-fun b!8528 () Bool)

(assert (=> b!8528 (= e!4847 (or (not (= (size!429 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))) (bvsgt #b00000000000000000000000000000000 (size!429 _keys!1806)) (and (bvsge lt!1778 #b00000000000000000000000000000000) (bvsle lt!1778 (size!429 _keys!1806)))))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!761 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8528 (= lt!1778 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!8529 () Bool)

(declare-fun e!4853 () Bool)

(declare-fun e!4848 () Bool)

(declare-fun mapRes!605 () Bool)

(assert (=> b!8529 (= e!4853 (and e!4848 mapRes!605))))

(declare-fun condMapEmpty!605 () Bool)

(declare-datatypes ((V!735 0))(
  ( (V!736 (val!215 Int)) )
))
(declare-datatypes ((ValueCell!193 0))(
  ( (ValueCellFull!193 (v!1308 V!735)) (EmptyCell!193) )
))
(declare-datatypes ((array!763 0))(
  ( (array!764 (arr!368 (Array (_ BitVec 32) ValueCell!193)) (size!430 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!763)

(declare-fun mapDefault!605 () ValueCell!193)

