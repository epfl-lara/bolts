; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74000 () Bool)

(assert start!74000)

(declare-fun b_free!14887 () Bool)

(declare-fun b_next!14887 () Bool)

(assert (=> start!74000 (= b_free!14887 (not b_next!14887))))

(declare-fun tp!52166 () Bool)

(declare-fun b_and!24657 () Bool)

(assert (=> start!74000 (= tp!52166 b_and!24657)))

(declare-fun b!869469 () Bool)

(declare-fun e!484229 () Bool)

(declare-fun tp_is_empty!17023 () Bool)

(assert (=> b!869469 (= e!484229 tp_is_empty!17023)))

(declare-fun b!869470 () Bool)

(declare-fun res!591007 () Bool)

(declare-fun e!484233 () Bool)

(assert (=> b!869470 (=> (not res!591007) (not e!484233))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50178 0))(
  ( (array!50179 (arr!24116 (Array (_ BitVec 32) (_ BitVec 64))) (size!24557 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50178)

(assert (=> b!869470 (= res!591007 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24557 _keys!868))))))

(declare-fun b!869471 () Bool)

(declare-fun res!591009 () Bool)

(assert (=> b!869471 (=> (not res!591009) (not e!484233))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869471 (= res!591009 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27134 () Bool)

(declare-fun mapRes!27134 () Bool)

(assert (=> mapIsEmpty!27134 mapRes!27134))

(declare-fun b!869472 () Bool)

(declare-fun e!484230 () Bool)

(declare-fun e!484232 () Bool)

(assert (=> b!869472 (= e!484230 (and e!484232 mapRes!27134))))

(declare-fun condMapEmpty!27134 () Bool)

(declare-datatypes ((V!27745 0))(
  ( (V!27746 (val!8559 Int)) )
))
(declare-datatypes ((ValueCell!8072 0))(
  ( (ValueCellFull!8072 (v!10980 V!27745)) (EmptyCell!8072) )
))
(declare-datatypes ((array!50180 0))(
  ( (array!50181 (arr!24117 (Array (_ BitVec 32) ValueCell!8072)) (size!24558 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50180)

(declare-fun mapDefault!27134 () ValueCell!8072)

