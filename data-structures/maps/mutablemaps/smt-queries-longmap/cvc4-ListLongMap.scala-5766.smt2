; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74530 () Bool)

(assert start!74530)

(declare-fun b_free!15191 () Bool)

(declare-fun b_next!15191 () Bool)

(assert (=> start!74530 (= b_free!15191 (not b_next!15191))))

(declare-fun tp!53256 () Bool)

(declare-fun b_and!25085 () Bool)

(assert (=> start!74530 (= tp!53256 b_and!25085)))

(declare-fun b!877337 () Bool)

(declare-fun res!596108 () Bool)

(declare-fun e!488415 () Bool)

(assert (=> b!877337 (=> (not res!596108) (not e!488415))))

(declare-datatypes ((array!50980 0))(
  ( (array!50981 (arr!24512 (Array (_ BitVec 32) (_ BitVec 64))) (size!24953 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50980)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50980 (_ BitVec 32)) Bool)

(assert (=> b!877337 (= res!596108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!877338 () Bool)

(declare-fun res!596103 () Bool)

(assert (=> b!877338 (=> (not res!596103) (not e!488415))))

(declare-datatypes ((List!17485 0))(
  ( (Nil!17482) (Cons!17481 (h!18612 (_ BitVec 64)) (t!24582 List!17485)) )
))
(declare-fun arrayNoDuplicates!0 (array!50980 (_ BitVec 32) List!17485) Bool)

(assert (=> b!877338 (= res!596103 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17482))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun b!877339 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!877339 (= e!488415 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612) (or (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!1053) (size!24953 _keys!868)))))))

(declare-datatypes ((V!28293 0))(
  ( (V!28294 (val!8765 Int)) )
))
(declare-fun v!557 () V!28293)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11604 0))(
  ( (tuple2!11605 (_1!5812 (_ BitVec 64)) (_2!5812 V!28293)) )
))
(declare-datatypes ((List!17486 0))(
  ( (Nil!17483) (Cons!17482 (h!18613 tuple2!11604) (t!24583 List!17486)) )
))
(declare-datatypes ((ListLongMap!10387 0))(
  ( (ListLongMap!10388 (toList!5209 List!17486)) )
))
(declare-fun lt!397028 () ListLongMap!10387)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8278 0))(
  ( (ValueCellFull!8278 (v!11201 V!28293)) (EmptyCell!8278) )
))
(declare-datatypes ((array!50982 0))(
  ( (array!50983 (arr!24513 (Array (_ BitVec 32) ValueCell!8278)) (size!24954 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50982)

(declare-fun minValue!654 () V!28293)

(declare-fun zeroValue!654 () V!28293)

(declare-fun getCurrentListMapNoExtraKeys!3171 (array!50980 array!50982 (_ BitVec 32) (_ BitVec 32) V!28293 V!28293 (_ BitVec 32) Int) ListLongMap!10387)

(assert (=> b!877339 (= lt!397028 (getCurrentListMapNoExtraKeys!3171 _keys!868 (array!50983 (store (arr!24513 _values!688) i!612 (ValueCellFull!8278 v!557)) (size!24954 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397027 () ListLongMap!10387)

(assert (=> b!877339 (= lt!397027 (getCurrentListMapNoExtraKeys!3171 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27768 () Bool)

(declare-fun mapRes!27768 () Bool)

(declare-fun tp!53255 () Bool)

(declare-fun e!488416 () Bool)

(assert (=> mapNonEmpty!27768 (= mapRes!27768 (and tp!53255 e!488416))))

(declare-fun mapRest!27768 () (Array (_ BitVec 32) ValueCell!8278))

(declare-fun mapKey!27768 () (_ BitVec 32))

(declare-fun mapValue!27768 () ValueCell!8278)

(assert (=> mapNonEmpty!27768 (= (arr!24513 _values!688) (store mapRest!27768 mapKey!27768 mapValue!27768))))

(declare-fun b!877340 () Bool)

(declare-fun res!596104 () Bool)

(assert (=> b!877340 (=> (not res!596104) (not e!488415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877340 (= res!596104 (validMask!0 mask!1196))))

(declare-fun b!877341 () Bool)

(declare-fun res!596105 () Bool)

(assert (=> b!877341 (=> (not res!596105) (not e!488415))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!877341 (= res!596105 (and (= (select (arr!24512 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!596102 () Bool)

(assert (=> start!74530 (=> (not res!596102) (not e!488415))))

(assert (=> start!74530 (= res!596102 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24953 _keys!868))))))

(assert (=> start!74530 e!488415))

(declare-fun tp_is_empty!17435 () Bool)

(assert (=> start!74530 tp_is_empty!17435))

(assert (=> start!74530 true))

(assert (=> start!74530 tp!53256))

(declare-fun array_inv!19308 (array!50980) Bool)

(assert (=> start!74530 (array_inv!19308 _keys!868)))

(declare-fun e!488418 () Bool)

(declare-fun array_inv!19309 (array!50982) Bool)

(assert (=> start!74530 (and (array_inv!19309 _values!688) e!488418)))

(declare-fun b!877342 () Bool)

(declare-fun res!596109 () Bool)

(assert (=> b!877342 (=> (not res!596109) (not e!488415))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877342 (= res!596109 (validKeyInArray!0 k!854))))

(declare-fun b!877343 () Bool)

(declare-fun res!596106 () Bool)

(assert (=> b!877343 (=> (not res!596106) (not e!488415))))

(assert (=> b!877343 (= res!596106 (and (= (size!24954 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24953 _keys!868) (size!24954 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877344 () Bool)

(assert (=> b!877344 (= e!488416 tp_is_empty!17435)))

(declare-fun b!877345 () Bool)

(declare-fun res!596107 () Bool)

(assert (=> b!877345 (=> (not res!596107) (not e!488415))))

(assert (=> b!877345 (= res!596107 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24953 _keys!868))))))

(declare-fun mapIsEmpty!27768 () Bool)

(assert (=> mapIsEmpty!27768 mapRes!27768))

(declare-fun b!877346 () Bool)

(declare-fun e!488414 () Bool)

(assert (=> b!877346 (= e!488414 tp_is_empty!17435)))

(declare-fun b!877347 () Bool)

(assert (=> b!877347 (= e!488418 (and e!488414 mapRes!27768))))

(declare-fun condMapEmpty!27768 () Bool)

(declare-fun mapDefault!27768 () ValueCell!8278)

