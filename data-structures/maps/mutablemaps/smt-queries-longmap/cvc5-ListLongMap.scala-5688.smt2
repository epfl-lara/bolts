; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73940 () Bool)

(assert start!73940)

(declare-fun b_free!14827 () Bool)

(declare-fun b_next!14827 () Bool)

(assert (=> start!73940 (= b_free!14827 (not b_next!14827))))

(declare-fun tp!51986 () Bool)

(declare-fun b_and!24597 () Bool)

(assert (=> start!73940 (= tp!51986 b_and!24597)))

(declare-fun b!868389 () Bool)

(declare-fun res!590194 () Bool)

(declare-fun e!483691 () Bool)

(assert (=> b!868389 (=> (not res!590194) (not e!483691))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868389 (= res!590194 (validMask!0 mask!1196))))

(declare-fun b!868390 () Bool)

(declare-fun e!483689 () Bool)

(declare-fun e!483693 () Bool)

(declare-fun mapRes!27044 () Bool)

(assert (=> b!868390 (= e!483689 (and e!483693 mapRes!27044))))

(declare-fun condMapEmpty!27044 () Bool)

(declare-datatypes ((V!27665 0))(
  ( (V!27666 (val!8529 Int)) )
))
(declare-datatypes ((ValueCell!8042 0))(
  ( (ValueCellFull!8042 (v!10950 V!27665)) (EmptyCell!8042) )
))
(declare-datatypes ((array!50062 0))(
  ( (array!50063 (arr!24058 (Array (_ BitVec 32) ValueCell!8042)) (size!24499 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50062)

(declare-fun mapDefault!27044 () ValueCell!8042)

