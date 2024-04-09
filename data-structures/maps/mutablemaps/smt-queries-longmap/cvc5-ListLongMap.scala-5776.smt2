; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74586 () Bool)

(assert start!74586)

(declare-fun b_free!15247 () Bool)

(declare-fun b_next!15247 () Bool)

(assert (=> start!74586 (= b_free!15247 (not b_next!15247))))

(declare-fun tp!53424 () Bool)

(declare-fun b_and!25141 () Bool)

(assert (=> start!74586 (= tp!53424 b_and!25141)))

(declare-fun b!878261 () Bool)

(declare-fun res!596778 () Bool)

(declare-fun e!488835 () Bool)

(assert (=> b!878261 (=> (not res!596778) (not e!488835))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51088 0))(
  ( (array!51089 (arr!24566 (Array (_ BitVec 32) (_ BitVec 64))) (size!25007 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51088)

(assert (=> b!878261 (= res!596778 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25007 _keys!868))))))

(declare-fun b!878262 () Bool)

(declare-fun res!596775 () Bool)

(assert (=> b!878262 (=> (not res!596775) (not e!488835))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878262 (= res!596775 (validMask!0 mask!1196))))

(declare-fun b!878263 () Bool)

(declare-fun e!488834 () Bool)

(declare-fun e!488837 () Bool)

(declare-fun mapRes!27852 () Bool)

(assert (=> b!878263 (= e!488834 (and e!488837 mapRes!27852))))

(declare-fun condMapEmpty!27852 () Bool)

(declare-datatypes ((V!28369 0))(
  ( (V!28370 (val!8793 Int)) )
))
(declare-datatypes ((ValueCell!8306 0))(
  ( (ValueCellFull!8306 (v!11229 V!28369)) (EmptyCell!8306) )
))
(declare-datatypes ((array!51090 0))(
  ( (array!51091 (arr!24567 (Array (_ BitVec 32) ValueCell!8306)) (size!25008 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51090)

(declare-fun mapDefault!27852 () ValueCell!8306)

