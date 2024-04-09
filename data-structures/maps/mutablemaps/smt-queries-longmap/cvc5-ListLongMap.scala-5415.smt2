; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72302 () Bool)

(assert start!72302)

(declare-fun b!837248 () Bool)

(declare-fun e!467301 () Bool)

(assert (=> b!837248 (= e!467301 false)))

(declare-fun lt!380499 () Bool)

(declare-datatypes ((array!46916 0))(
  ( (array!46917 (arr!22485 (Array (_ BitVec 32) (_ BitVec 64))) (size!22926 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46916)

(declare-datatypes ((List!16079 0))(
  ( (Nil!16076) (Cons!16075 (h!17206 (_ BitVec 64)) (t!22458 List!16079)) )
))
(declare-fun arrayNoDuplicates!0 (array!46916 (_ BitVec 32) List!16079) Bool)

(assert (=> b!837248 (= lt!380499 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16076))))

(declare-fun b!837249 () Bool)

(declare-fun e!467297 () Bool)

(declare-fun e!467299 () Bool)

(declare-fun mapRes!24587 () Bool)

(assert (=> b!837249 (= e!467297 (and e!467299 mapRes!24587))))

(declare-fun condMapEmpty!24587 () Bool)

(declare-datatypes ((V!25481 0))(
  ( (V!25482 (val!7710 Int)) )
))
(declare-datatypes ((ValueCell!7223 0))(
  ( (ValueCellFull!7223 (v!10131 V!25481)) (EmptyCell!7223) )
))
(declare-datatypes ((array!46918 0))(
  ( (array!46919 (arr!22486 (Array (_ BitVec 32) ValueCell!7223)) (size!22927 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46918)

(declare-fun mapDefault!24587 () ValueCell!7223)

