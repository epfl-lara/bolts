; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78002 () Bool)

(assert start!78002)

(declare-fun b_free!16517 () Bool)

(declare-fun b_next!16517 () Bool)

(assert (=> start!78002 (= b_free!16517 (not b_next!16517))))

(declare-fun tp!57819 () Bool)

(declare-fun b_and!27105 () Bool)

(assert (=> start!78002 (= tp!57819 b_and!27105)))

(declare-fun b!910166 () Bool)

(declare-fun e!510339 () Bool)

(declare-fun e!510337 () Bool)

(declare-fun mapRes!30121 () Bool)

(assert (=> b!910166 (= e!510339 (and e!510337 mapRes!30121))))

(declare-fun condMapEmpty!30121 () Bool)

(declare-datatypes ((V!30211 0))(
  ( (V!30212 (val!9518 Int)) )
))
(declare-datatypes ((ValueCell!8986 0))(
  ( (ValueCellFull!8986 (v!12026 V!30211)) (EmptyCell!8986) )
))
(declare-datatypes ((array!53884 0))(
  ( (array!53885 (arr!25895 (Array (_ BitVec 32) ValueCell!8986)) (size!26355 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53884)

(declare-fun mapDefault!30121 () ValueCell!8986)

