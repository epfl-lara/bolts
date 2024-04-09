; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74010 () Bool)

(assert start!74010)

(declare-fun b_free!14897 () Bool)

(declare-fun b_next!14897 () Bool)

(assert (=> start!74010 (= b_free!14897 (not b_next!14897))))

(declare-fun tp!52196 () Bool)

(declare-fun b_and!24667 () Bool)

(assert (=> start!74010 (= tp!52196 b_and!24667)))

(declare-fun b!869649 () Bool)

(declare-fun e!484319 () Bool)

(declare-fun tp_is_empty!17033 () Bool)

(assert (=> b!869649 (= e!484319 tp_is_empty!17033)))

(declare-fun b!869650 () Bool)

(declare-fun res!591140 () Bool)

(declare-fun e!484322 () Bool)

(assert (=> b!869650 (=> (not res!591140) (not e!484322))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50198 0))(
  ( (array!50199 (arr!24126 (Array (_ BitVec 32) (_ BitVec 64))) (size!24567 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50198)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!869650 (= res!591140 (and (= (select (arr!24126 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27149 () Bool)

(declare-fun mapRes!27149 () Bool)

(assert (=> mapIsEmpty!27149 mapRes!27149))

(declare-fun res!591144 () Bool)

(assert (=> start!74010 (=> (not res!591144) (not e!484322))))

(assert (=> start!74010 (= res!591144 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24567 _keys!868))))))

(assert (=> start!74010 e!484322))

(assert (=> start!74010 tp_is_empty!17033))

(assert (=> start!74010 true))

(assert (=> start!74010 tp!52196))

(declare-fun array_inv!19026 (array!50198) Bool)

(assert (=> start!74010 (array_inv!19026 _keys!868)))

(declare-datatypes ((V!27757 0))(
  ( (V!27758 (val!8564 Int)) )
))
(declare-datatypes ((ValueCell!8077 0))(
  ( (ValueCellFull!8077 (v!10985 V!27757)) (EmptyCell!8077) )
))
(declare-datatypes ((array!50200 0))(
  ( (array!50201 (arr!24127 (Array (_ BitVec 32) ValueCell!8077)) (size!24568 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50200)

(declare-fun e!484321 () Bool)

(declare-fun array_inv!19027 (array!50200) Bool)

(assert (=> start!74010 (and (array_inv!19027 _values!688) e!484321)))

(declare-fun mapNonEmpty!27149 () Bool)

(declare-fun tp!52195 () Bool)

(assert (=> mapNonEmpty!27149 (= mapRes!27149 (and tp!52195 e!484319))))

(declare-fun mapKey!27149 () (_ BitVec 32))

(declare-fun mapRest!27149 () (Array (_ BitVec 32) ValueCell!8077))

(declare-fun mapValue!27149 () ValueCell!8077)

(assert (=> mapNonEmpty!27149 (= (arr!24127 _values!688) (store mapRest!27149 mapKey!27149 mapValue!27149))))

(declare-fun b!869651 () Bool)

(declare-fun res!591136 () Bool)

(assert (=> b!869651 (=> (not res!591136) (not e!484322))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!869651 (= res!591136 (and (= (size!24568 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24567 _keys!868) (size!24568 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869652 () Bool)

(declare-fun res!591137 () Bool)

(assert (=> b!869652 (=> (not res!591137) (not e!484322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869652 (= res!591137 (validKeyInArray!0 k!854))))

(declare-fun b!869653 () Bool)

(declare-fun res!591138 () Bool)

(assert (=> b!869653 (=> (not res!591138) (not e!484322))))

(assert (=> b!869653 (= res!591138 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24567 _keys!868))))))

(declare-fun b!869654 () Bool)

(declare-fun e!484323 () Bool)

(assert (=> b!869654 (= e!484322 e!484323)))

(declare-fun res!591143 () Bool)

(assert (=> b!869654 (=> (not res!591143) (not e!484323))))

(assert (=> b!869654 (= res!591143 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394869 () array!50200)

(declare-datatypes ((tuple2!11374 0))(
  ( (tuple2!11375 (_1!5697 (_ BitVec 64)) (_2!5697 V!27757)) )
))
(declare-datatypes ((List!17231 0))(
  ( (Nil!17228) (Cons!17227 (h!18358 tuple2!11374) (t!24276 List!17231)) )
))
(declare-datatypes ((ListLongMap!10157 0))(
  ( (ListLongMap!10158 (toList!5094 List!17231)) )
))
(declare-fun lt!394866 () ListLongMap!10157)

(declare-fun minValue!654 () V!27757)

(declare-fun zeroValue!654 () V!27757)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3058 (array!50198 array!50200 (_ BitVec 32) (_ BitVec 32) V!27757 V!27757 (_ BitVec 32) Int) ListLongMap!10157)

(assert (=> b!869654 (= lt!394866 (getCurrentListMapNoExtraKeys!3058 _keys!868 lt!394869 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27757)

(assert (=> b!869654 (= lt!394869 (array!50201 (store (arr!24127 _values!688) i!612 (ValueCellFull!8077 v!557)) (size!24568 _values!688)))))

(declare-fun lt!394868 () ListLongMap!10157)

(assert (=> b!869654 (= lt!394868 (getCurrentListMapNoExtraKeys!3058 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869655 () Bool)

(declare-fun res!591139 () Bool)

(assert (=> b!869655 (=> (not res!591139) (not e!484322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869655 (= res!591139 (validMask!0 mask!1196))))

(declare-fun b!869656 () Bool)

(declare-fun e!484320 () Bool)

(assert (=> b!869656 (= e!484321 (and e!484320 mapRes!27149))))

(declare-fun condMapEmpty!27149 () Bool)

(declare-fun mapDefault!27149 () ValueCell!8077)

