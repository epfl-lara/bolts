; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74698 () Bool)

(assert start!74698)

(declare-fun b_free!15319 () Bool)

(declare-fun b_next!15319 () Bool)

(assert (=> start!74698 (= b_free!15319 (not b_next!15319))))

(declare-fun tp!53645 () Bool)

(declare-fun b_and!25275 () Bool)

(assert (=> start!74698 (= tp!53645 b_and!25275)))

(declare-fun b!879896 () Bool)

(declare-fun res!597896 () Bool)

(declare-fun e!489695 () Bool)

(assert (=> b!879896 (=> (not res!597896) (not e!489695))))

(declare-datatypes ((array!51236 0))(
  ( (array!51237 (arr!24638 (Array (_ BitVec 32) (_ BitVec 64))) (size!25079 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51236)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51236 (_ BitVec 32)) Bool)

(assert (=> b!879896 (= res!597896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27966 () Bool)

(declare-fun mapRes!27966 () Bool)

(declare-fun tp!53646 () Bool)

(declare-fun e!489698 () Bool)

(assert (=> mapNonEmpty!27966 (= mapRes!27966 (and tp!53646 e!489698))))

(declare-datatypes ((V!28465 0))(
  ( (V!28466 (val!8829 Int)) )
))
(declare-datatypes ((ValueCell!8342 0))(
  ( (ValueCellFull!8342 (v!11273 V!28465)) (EmptyCell!8342) )
))
(declare-fun mapValue!27966 () ValueCell!8342)

(declare-fun mapRest!27966 () (Array (_ BitVec 32) ValueCell!8342))

(declare-fun mapKey!27966 () (_ BitVec 32))

(declare-datatypes ((array!51238 0))(
  ( (array!51239 (arr!24639 (Array (_ BitVec 32) ValueCell!8342)) (size!25080 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51238)

(assert (=> mapNonEmpty!27966 (= (arr!24639 _values!688) (store mapRest!27966 mapKey!27966 mapValue!27966))))

(declare-fun mapIsEmpty!27966 () Bool)

(assert (=> mapIsEmpty!27966 mapRes!27966))

(declare-fun b!879897 () Bool)

(declare-fun res!597895 () Bool)

(assert (=> b!879897 (=> (not res!597895) (not e!489695))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!879897 (= res!597895 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25079 _keys!868))))))

(declare-fun b!879898 () Bool)

(declare-fun e!489697 () Bool)

(declare-fun e!489696 () Bool)

(assert (=> b!879898 (= e!489697 (not e!489696))))

(declare-fun res!597900 () Bool)

(assert (=> b!879898 (=> res!597900 e!489696)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879898 (= res!597900 (not (validKeyInArray!0 (select (arr!24638 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11704 0))(
  ( (tuple2!11705 (_1!5862 (_ BitVec 64)) (_2!5862 V!28465)) )
))
(declare-datatypes ((List!17578 0))(
  ( (Nil!17575) (Cons!17574 (h!18705 tuple2!11704) (t!24707 List!17578)) )
))
(declare-datatypes ((ListLongMap!10487 0))(
  ( (ListLongMap!10488 (toList!5259 List!17578)) )
))
(declare-fun lt!397858 () ListLongMap!10487)

(declare-fun lt!397859 () ListLongMap!10487)

(assert (=> b!879898 (= lt!397858 lt!397859)))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!397860 () ListLongMap!10487)

(declare-fun v!557 () V!28465)

(declare-fun +!2465 (ListLongMap!10487 tuple2!11704) ListLongMap!10487)

(assert (=> b!879898 (= lt!397859 (+!2465 lt!397860 (tuple2!11705 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!397861 () array!51238)

(declare-fun minValue!654 () V!28465)

(declare-fun zeroValue!654 () V!28465)

(declare-fun getCurrentListMapNoExtraKeys!3219 (array!51236 array!51238 (_ BitVec 32) (_ BitVec 32) V!28465 V!28465 (_ BitVec 32) Int) ListLongMap!10487)

(assert (=> b!879898 (= lt!397858 (getCurrentListMapNoExtraKeys!3219 _keys!868 lt!397861 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879898 (= lt!397860 (getCurrentListMapNoExtraKeys!3219 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30006 0))(
  ( (Unit!30007) )
))
(declare-fun lt!397862 () Unit!30006)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!695 (array!51236 array!51238 (_ BitVec 32) (_ BitVec 32) V!28465 V!28465 (_ BitVec 32) (_ BitVec 64) V!28465 (_ BitVec 32) Int) Unit!30006)

(assert (=> b!879898 (= lt!397862 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!695 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!879899 () Bool)

(declare-fun tp_is_empty!17563 () Bool)

(assert (=> b!879899 (= e!489698 tp_is_empty!17563)))

(declare-fun b!879900 () Bool)

(declare-fun res!597901 () Bool)

(assert (=> b!879900 (=> (not res!597901) (not e!489695))))

(assert (=> b!879900 (= res!597901 (and (= (size!25080 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25079 _keys!868) (size!25080 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!879901 () Bool)

(declare-fun res!597903 () Bool)

(assert (=> b!879901 (=> (not res!597903) (not e!489695))))

(assert (=> b!879901 (= res!597903 (validKeyInArray!0 k!854))))

(declare-fun b!879902 () Bool)

(declare-fun res!597902 () Bool)

(assert (=> b!879902 (=> (not res!597902) (not e!489695))))

(declare-datatypes ((List!17579 0))(
  ( (Nil!17576) (Cons!17575 (h!18706 (_ BitVec 64)) (t!24708 List!17579)) )
))
(declare-fun arrayNoDuplicates!0 (array!51236 (_ BitVec 32) List!17579) Bool)

(assert (=> b!879902 (= res!597902 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17576))))

(declare-fun b!879903 () Bool)

(assert (=> b!879903 (= e!489695 e!489697)))

(declare-fun res!597899 () Bool)

(assert (=> b!879903 (=> (not res!597899) (not e!489697))))

(assert (=> b!879903 (= res!597899 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397864 () ListLongMap!10487)

(assert (=> b!879903 (= lt!397864 (getCurrentListMapNoExtraKeys!3219 _keys!868 lt!397861 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!879903 (= lt!397861 (array!51239 (store (arr!24639 _values!688) i!612 (ValueCellFull!8342 v!557)) (size!25080 _values!688)))))

(declare-fun lt!397863 () ListLongMap!10487)

(assert (=> b!879903 (= lt!397863 (getCurrentListMapNoExtraKeys!3219 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!597897 () Bool)

(assert (=> start!74698 (=> (not res!597897) (not e!489695))))

(assert (=> start!74698 (= res!597897 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25079 _keys!868))))))

(assert (=> start!74698 e!489695))

(assert (=> start!74698 tp_is_empty!17563))

(assert (=> start!74698 true))

(assert (=> start!74698 tp!53645))

(declare-fun array_inv!19396 (array!51236) Bool)

(assert (=> start!74698 (array_inv!19396 _keys!868)))

(declare-fun e!489699 () Bool)

(declare-fun array_inv!19397 (array!51238) Bool)

(assert (=> start!74698 (and (array_inv!19397 _values!688) e!489699)))

(declare-fun b!879904 () Bool)

(assert (=> b!879904 (= e!489696 true)))

(declare-fun get!12969 (ValueCell!8342 V!28465) V!28465)

(declare-fun dynLambda!1234 (Int (_ BitVec 64)) V!28465)

(assert (=> b!879904 (= lt!397864 (+!2465 lt!397859 (tuple2!11705 (select (arr!24638 _keys!868) from!1053) (get!12969 (select (arr!24639 _values!688) from!1053) (dynLambda!1234 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879905 () Bool)

(declare-fun e!489701 () Bool)

(assert (=> b!879905 (= e!489701 tp_is_empty!17563)))

(declare-fun b!879906 () Bool)

(declare-fun res!597904 () Bool)

(assert (=> b!879906 (=> (not res!597904) (not e!489695))))

(assert (=> b!879906 (= res!597904 (and (= (select (arr!24638 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!879907 () Bool)

(assert (=> b!879907 (= e!489699 (and e!489701 mapRes!27966))))

(declare-fun condMapEmpty!27966 () Bool)

(declare-fun mapDefault!27966 () ValueCell!8342)

