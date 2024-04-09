; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74058 () Bool)

(assert start!74058)

(declare-fun b_free!14945 () Bool)

(declare-fun b_next!14945 () Bool)

(assert (=> start!74058 (= b_free!14945 (not b_next!14945))))

(declare-fun tp!52340 () Bool)

(declare-fun b_and!24715 () Bool)

(assert (=> start!74058 (= tp!52340 b_and!24715)))

(declare-fun b!870513 () Bool)

(declare-fun res!591788 () Bool)

(declare-fun e!484751 () Bool)

(assert (=> b!870513 (=> (not res!591788) (not e!484751))))

(declare-datatypes ((array!50294 0))(
  ( (array!50295 (arr!24174 (Array (_ BitVec 32) (_ BitVec 64))) (size!24615 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50294)

(declare-datatypes ((List!17265 0))(
  ( (Nil!17262) (Cons!17261 (h!18392 (_ BitVec 64)) (t!24310 List!17265)) )
))
(declare-fun arrayNoDuplicates!0 (array!50294 (_ BitVec 32) List!17265) Bool)

(assert (=> b!870513 (= res!591788 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17262))))

(declare-fun mapIsEmpty!27221 () Bool)

(declare-fun mapRes!27221 () Bool)

(assert (=> mapIsEmpty!27221 mapRes!27221))

(declare-fun b!870514 () Bool)

(declare-fun res!591785 () Bool)

(assert (=> b!870514 (=> (not res!591785) (not e!484751))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870514 (= res!591785 (validMask!0 mask!1196))))

(declare-fun b!870515 () Bool)

(declare-fun e!484754 () Bool)

(declare-fun e!484753 () Bool)

(assert (=> b!870515 (= e!484754 (and e!484753 mapRes!27221))))

(declare-fun condMapEmpty!27221 () Bool)

(declare-datatypes ((V!27821 0))(
  ( (V!27822 (val!8588 Int)) )
))
(declare-datatypes ((ValueCell!8101 0))(
  ( (ValueCellFull!8101 (v!11009 V!27821)) (EmptyCell!8101) )
))
(declare-datatypes ((array!50296 0))(
  ( (array!50297 (arr!24175 (Array (_ BitVec 32) ValueCell!8101)) (size!24616 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50296)

(declare-fun mapDefault!27221 () ValueCell!8101)

