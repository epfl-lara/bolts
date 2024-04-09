; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4090 () Bool)

(assert start!4090)

(declare-fun b_free!997 () Bool)

(declare-fun b_next!997 () Bool)

(assert (=> start!4090 (= b_free!997 (not b_next!997))))

(declare-fun tp!4410 () Bool)

(declare-fun b_and!1809 () Bool)

(assert (=> start!4090 (= tp!4410 b_and!1809)))

(declare-fun b!30374 () Bool)

(declare-fun e!19506 () Bool)

(declare-fun e!19503 () Bool)

(declare-fun mapRes!1555 () Bool)

(assert (=> b!30374 (= e!19506 (and e!19503 mapRes!1555))))

(declare-fun condMapEmpty!1555 () Bool)

(declare-datatypes ((V!1627 0))(
  ( (V!1628 (val!702 Int)) )
))
(declare-datatypes ((ValueCell!476 0))(
  ( (ValueCellFull!476 (v!1791 V!1627)) (EmptyCell!476) )
))
(declare-datatypes ((array!1919 0))(
  ( (array!1920 (arr!913 (Array (_ BitVec 32) ValueCell!476)) (size!1014 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1919)

(declare-fun mapDefault!1555 () ValueCell!476)

