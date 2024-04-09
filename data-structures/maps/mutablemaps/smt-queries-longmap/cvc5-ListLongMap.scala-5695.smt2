; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73982 () Bool)

(assert start!73982)

(declare-fun b_free!14869 () Bool)

(declare-fun b_next!14869 () Bool)

(assert (=> start!73982 (= b_free!14869 (not b_next!14869))))

(declare-fun tp!52111 () Bool)

(declare-fun b_and!24639 () Bool)

(assert (=> start!73982 (= tp!52111 b_and!24639)))

(declare-fun mapNonEmpty!27107 () Bool)

(declare-fun mapRes!27107 () Bool)

(declare-fun tp!52112 () Bool)

(declare-fun e!484066 () Bool)

(assert (=> mapNonEmpty!27107 (= mapRes!27107 (and tp!52112 e!484066))))

(declare-datatypes ((V!27721 0))(
  ( (V!27722 (val!8550 Int)) )
))
(declare-datatypes ((ValueCell!8063 0))(
  ( (ValueCellFull!8063 (v!10971 V!27721)) (EmptyCell!8063) )
))
(declare-fun mapValue!27107 () ValueCell!8063)

(declare-fun mapKey!27107 () (_ BitVec 32))

(declare-fun mapRest!27107 () (Array (_ BitVec 32) ValueCell!8063))

(declare-datatypes ((array!50142 0))(
  ( (array!50143 (arr!24098 (Array (_ BitVec 32) ValueCell!8063)) (size!24539 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50142)

(assert (=> mapNonEmpty!27107 (= (arr!24098 _values!688) (store mapRest!27107 mapKey!27107 mapValue!27107))))

(declare-fun b!869145 () Bool)

(declare-fun res!590765 () Bool)

(declare-fun e!484067 () Bool)

(assert (=> b!869145 (=> (not res!590765) (not e!484067))))

(declare-datatypes ((array!50144 0))(
  ( (array!50145 (arr!24099 (Array (_ BitVec 32) (_ BitVec 64))) (size!24540 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50144)

(declare-datatypes ((List!17211 0))(
  ( (Nil!17208) (Cons!17207 (h!18338 (_ BitVec 64)) (t!24256 List!17211)) )
))
(declare-fun arrayNoDuplicates!0 (array!50144 (_ BitVec 32) List!17211) Bool)

(assert (=> b!869145 (= res!590765 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17208))))

(declare-fun b!869146 () Bool)

(declare-fun res!590763 () Bool)

(assert (=> b!869146 (=> (not res!590763) (not e!484067))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!869146 (= res!590763 (and (= (size!24539 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24540 _keys!868) (size!24539 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869147 () Bool)

(declare-fun res!590764 () Bool)

(assert (=> b!869147 (=> (not res!590764) (not e!484067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50144 (_ BitVec 32)) Bool)

(assert (=> b!869147 (= res!590764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27107 () Bool)

(assert (=> mapIsEmpty!27107 mapRes!27107))

(declare-fun b!869149 () Bool)

(declare-fun res!590762 () Bool)

(assert (=> b!869149 (=> (not res!590762) (not e!484067))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!869149 (= res!590762 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24540 _keys!868))))))

(declare-fun b!869150 () Bool)

(declare-fun e!484071 () Bool)

(declare-fun e!484069 () Bool)

(assert (=> b!869150 (= e!484071 (and e!484069 mapRes!27107))))

(declare-fun condMapEmpty!27107 () Bool)

(declare-fun mapDefault!27107 () ValueCell!8063)

