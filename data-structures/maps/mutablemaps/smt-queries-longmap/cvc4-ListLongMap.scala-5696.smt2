; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73992 () Bool)

(assert start!73992)

(declare-fun b_free!14879 () Bool)

(declare-fun b_next!14879 () Bool)

(assert (=> start!73992 (= b_free!14879 (not b_next!14879))))

(declare-fun tp!52141 () Bool)

(declare-fun b_and!24649 () Bool)

(assert (=> start!73992 (= tp!52141 b_and!24649)))

(declare-fun b!869325 () Bool)

(declare-fun res!590897 () Bool)

(declare-fun e!484157 () Bool)

(assert (=> b!869325 (=> (not res!590897) (not e!484157))))

(declare-datatypes ((array!50162 0))(
  ( (array!50163 (arr!24108 (Array (_ BitVec 32) (_ BitVec 64))) (size!24549 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50162)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50162 (_ BitVec 32)) Bool)

(assert (=> b!869325 (= res!590897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27122 () Bool)

(declare-fun mapRes!27122 () Bool)

(assert (=> mapIsEmpty!27122 mapRes!27122))

(declare-fun b!869326 () Bool)

(declare-fun e!484161 () Bool)

(declare-fun e!484158 () Bool)

(assert (=> b!869326 (= e!484161 (and e!484158 mapRes!27122))))

(declare-fun condMapEmpty!27122 () Bool)

(declare-datatypes ((V!27733 0))(
  ( (V!27734 (val!8555 Int)) )
))
(declare-datatypes ((ValueCell!8068 0))(
  ( (ValueCellFull!8068 (v!10976 V!27733)) (EmptyCell!8068) )
))
(declare-datatypes ((array!50164 0))(
  ( (array!50165 (arr!24109 (Array (_ BitVec 32) ValueCell!8068)) (size!24550 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50164)

(declare-fun mapDefault!27122 () ValueCell!8068)

