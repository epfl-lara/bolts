; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72966 () Bool)

(assert start!72966)

(declare-fun b_free!13853 () Bool)

(declare-fun b_next!13853 () Bool)

(assert (=> start!72966 (= b_free!13853 (not b_next!13853))))

(declare-fun tp!49063 () Bool)

(declare-fun b_and!22957 () Bool)

(assert (=> start!72966 (= tp!49063 b_and!22957)))

(declare-fun b!846808 () Bool)

(declare-fun e!472601 () Bool)

(declare-fun e!472603 () Bool)

(declare-fun mapRes!25583 () Bool)

(assert (=> b!846808 (= e!472601 (and e!472603 mapRes!25583))))

(declare-fun condMapEmpty!25583 () Bool)

(declare-datatypes ((V!26365 0))(
  ( (V!26366 (val!8042 Int)) )
))
(declare-datatypes ((ValueCell!7555 0))(
  ( (ValueCellFull!7555 (v!10463 V!26365)) (EmptyCell!7555) )
))
(declare-datatypes ((array!48176 0))(
  ( (array!48177 (arr!23115 (Array (_ BitVec 32) ValueCell!7555)) (size!23556 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48176)

(declare-fun mapDefault!25583 () ValueCell!7555)

