; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74022 () Bool)

(assert start!74022)

(declare-fun b_free!14909 () Bool)

(declare-fun b_next!14909 () Bool)

(assert (=> start!74022 (= b_free!14909 (not b_next!14909))))

(declare-fun tp!52232 () Bool)

(declare-fun b_and!24679 () Bool)

(assert (=> start!74022 (= tp!52232 b_and!24679)))

(declare-fun b!869865 () Bool)

(declare-fun res!591303 () Bool)

(declare-fun e!484427 () Bool)

(assert (=> b!869865 (=> (not res!591303) (not e!484427))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869865 (= res!591303 (validMask!0 mask!1196))))

(declare-fun b!869866 () Bool)

(declare-fun res!591300 () Bool)

(assert (=> b!869866 (=> (not res!591300) (not e!484427))))

(declare-datatypes ((array!50222 0))(
  ( (array!50223 (arr!24138 (Array (_ BitVec 32) (_ BitVec 64))) (size!24579 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50222)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50222 (_ BitVec 32)) Bool)

(assert (=> b!869866 (= res!591300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27167 () Bool)

(declare-fun mapRes!27167 () Bool)

(declare-fun tp!52231 () Bool)

(declare-fun e!484431 () Bool)

(assert (=> mapNonEmpty!27167 (= mapRes!27167 (and tp!52231 e!484431))))

(declare-datatypes ((V!27773 0))(
  ( (V!27774 (val!8570 Int)) )
))
(declare-datatypes ((ValueCell!8083 0))(
  ( (ValueCellFull!8083 (v!10991 V!27773)) (EmptyCell!8083) )
))
(declare-fun mapRest!27167 () (Array (_ BitVec 32) ValueCell!8083))

(declare-datatypes ((array!50224 0))(
  ( (array!50225 (arr!24139 (Array (_ BitVec 32) ValueCell!8083)) (size!24580 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50224)

(declare-fun mapKey!27167 () (_ BitVec 32))

(declare-fun mapValue!27167 () ValueCell!8083)

(assert (=> mapNonEmpty!27167 (= (arr!24139 _values!688) (store mapRest!27167 mapKey!27167 mapValue!27167))))

(declare-fun b!869867 () Bool)

(declare-fun res!591299 () Bool)

(assert (=> b!869867 (=> (not res!591299) (not e!484427))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!869867 (= res!591299 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24579 _keys!868))))))

(declare-fun b!869868 () Bool)

(declare-fun res!591298 () Bool)

(assert (=> b!869868 (=> (not res!591298) (not e!484427))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!869868 (= res!591298 (and (= (size!24580 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24579 _keys!868) (size!24580 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!591304 () Bool)

(assert (=> start!74022 (=> (not res!591304) (not e!484427))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74022 (= res!591304 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24579 _keys!868))))))

(assert (=> start!74022 e!484427))

(declare-fun tp_is_empty!17045 () Bool)

(assert (=> start!74022 tp_is_empty!17045))

(assert (=> start!74022 true))

(assert (=> start!74022 tp!52232))

(declare-fun array_inv!19038 (array!50222) Bool)

(assert (=> start!74022 (array_inv!19038 _keys!868)))

(declare-fun e!484430 () Bool)

(declare-fun array_inv!19039 (array!50224) Bool)

(assert (=> start!74022 (and (array_inv!19039 _values!688) e!484430)))

(declare-fun b!869869 () Bool)

(declare-fun res!591302 () Bool)

(assert (=> b!869869 (=> (not res!591302) (not e!484427))))

(declare-datatypes ((List!17242 0))(
  ( (Nil!17239) (Cons!17238 (h!18369 (_ BitVec 64)) (t!24287 List!17242)) )
))
(declare-fun arrayNoDuplicates!0 (array!50222 (_ BitVec 32) List!17242) Bool)

(assert (=> b!869869 (= res!591302 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17239))))

(declare-fun b!869870 () Bool)

(declare-fun e!484428 () Bool)

(assert (=> b!869870 (= e!484428 tp_is_empty!17045)))

(declare-fun b!869871 () Bool)

(assert (=> b!869871 (= e!484430 (and e!484428 mapRes!27167))))

(declare-fun condMapEmpty!27167 () Bool)

(declare-fun mapDefault!27167 () ValueCell!8083)

