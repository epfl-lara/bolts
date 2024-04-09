; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78108 () Bool)

(assert start!78108)

(declare-fun b_free!16607 () Bool)

(declare-fun b_next!16607 () Bool)

(assert (=> start!78108 (= b_free!16607 (not b_next!16607))))

(declare-fun tp!58093 () Bool)

(declare-fun b_and!27197 () Bool)

(assert (=> start!78108 (= tp!58093 b_and!27197)))

(declare-fun b!911238 () Bool)

(declare-fun res!614918 () Bool)

(declare-fun e!511084 () Bool)

(assert (=> b!911238 (=> (not res!614918) (not e!511084))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54056 0))(
  ( (array!54057 (arr!25980 (Array (_ BitVec 32) (_ BitVec 64))) (size!26440 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54056)

(declare-datatypes ((V!30331 0))(
  ( (V!30332 (val!9563 Int)) )
))
(declare-datatypes ((ValueCell!9031 0))(
  ( (ValueCellFull!9031 (v!12072 V!30331)) (EmptyCell!9031) )
))
(declare-datatypes ((array!54058 0))(
  ( (array!54059 (arr!25981 (Array (_ BitVec 32) ValueCell!9031)) (size!26441 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54058)

(assert (=> b!911238 (= res!614918 (and (= (size!26441 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26440 _keys!1386) (size!26441 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911239 () Bool)

(declare-fun e!511085 () Bool)

(declare-fun e!511086 () Bool)

(declare-fun mapRes!30259 () Bool)

(assert (=> b!911239 (= e!511085 (and e!511086 mapRes!30259))))

(declare-fun condMapEmpty!30259 () Bool)

(declare-fun mapDefault!30259 () ValueCell!9031)

