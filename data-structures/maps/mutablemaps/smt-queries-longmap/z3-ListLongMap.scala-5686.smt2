; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73930 () Bool)

(assert start!73930)

(declare-fun b_free!14817 () Bool)

(declare-fun b_next!14817 () Bool)

(assert (=> start!73930 (= b_free!14817 (not b_next!14817))))

(declare-fun tp!51955 () Bool)

(declare-fun b_and!24587 () Bool)

(assert (=> start!73930 (= tp!51955 b_and!24587)))

(declare-fun b!868209 () Bool)

(declare-fun res!590062 () Bool)

(declare-fun e!483598 () Bool)

(assert (=> b!868209 (=> (not res!590062) (not e!483598))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50042 0))(
  ( (array!50043 (arr!24048 (Array (_ BitVec 32) (_ BitVec 64))) (size!24489 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50042)

(declare-datatypes ((V!27651 0))(
  ( (V!27652 (val!8524 Int)) )
))
(declare-datatypes ((ValueCell!8037 0))(
  ( (ValueCellFull!8037 (v!10945 V!27651)) (EmptyCell!8037) )
))
(declare-datatypes ((array!50044 0))(
  ( (array!50045 (arr!24049 (Array (_ BitVec 32) ValueCell!8037)) (size!24490 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50044)

(assert (=> b!868209 (= res!590062 (and (= (size!24490 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24489 _keys!868) (size!24490 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!868210 () Bool)

(declare-fun e!483601 () Bool)

(declare-fun tp_is_empty!16953 () Bool)

(assert (=> b!868210 (= e!483601 tp_is_empty!16953)))

(declare-fun mapIsEmpty!27029 () Bool)

(declare-fun mapRes!27029 () Bool)

(assert (=> mapIsEmpty!27029 mapRes!27029))

(declare-fun b!868211 () Bool)

(declare-fun res!590058 () Bool)

(assert (=> b!868211 (=> (not res!590058) (not e!483598))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!868211 (= res!590058 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24489 _keys!868))))))

(declare-fun b!868212 () Bool)

(declare-fun res!590059 () Bool)

(assert (=> b!868212 (=> (not res!590059) (not e!483598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50042 (_ BitVec 32)) Bool)

(assert (=> b!868212 (= res!590059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868213 () Bool)

(declare-fun e!483602 () Bool)

(assert (=> b!868213 (= e!483598 e!483602)))

(declare-fun res!590064 () Bool)

(assert (=> b!868213 (=> (not res!590064) (not e!483602))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!868213 (= res!590064 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394388 () array!50044)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11314 0))(
  ( (tuple2!11315 (_1!5667 (_ BitVec 64)) (_2!5667 V!27651)) )
))
(declare-datatypes ((List!17174 0))(
  ( (Nil!17171) (Cons!17170 (h!18301 tuple2!11314) (t!24219 List!17174)) )
))
(declare-datatypes ((ListLongMap!10097 0))(
  ( (ListLongMap!10098 (toList!5064 List!17174)) )
))
(declare-fun lt!394389 () ListLongMap!10097)

(declare-fun minValue!654 () V!27651)

(declare-fun zeroValue!654 () V!27651)

(declare-fun getCurrentListMapNoExtraKeys!3028 (array!50042 array!50044 (_ BitVec 32) (_ BitVec 32) V!27651 V!27651 (_ BitVec 32) Int) ListLongMap!10097)

(assert (=> b!868213 (= lt!394389 (getCurrentListMapNoExtraKeys!3028 _keys!868 lt!394388 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27651)

(assert (=> b!868213 (= lt!394388 (array!50045 (store (arr!24049 _values!688) i!612 (ValueCellFull!8037 v!557)) (size!24490 _values!688)))))

(declare-fun lt!394387 () ListLongMap!10097)

(assert (=> b!868213 (= lt!394387 (getCurrentListMapNoExtraKeys!3028 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27029 () Bool)

(declare-fun tp!51956 () Bool)

(declare-fun e!483599 () Bool)

(assert (=> mapNonEmpty!27029 (= mapRes!27029 (and tp!51956 e!483599))))

(declare-fun mapRest!27029 () (Array (_ BitVec 32) ValueCell!8037))

(declare-fun mapValue!27029 () ValueCell!8037)

(declare-fun mapKey!27029 () (_ BitVec 32))

(assert (=> mapNonEmpty!27029 (= (arr!24049 _values!688) (store mapRest!27029 mapKey!27029 mapValue!27029))))

(declare-fun b!868214 () Bool)

(declare-fun res!590056 () Bool)

(assert (=> b!868214 (=> (not res!590056) (not e!483598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868214 (= res!590056 (validMask!0 mask!1196))))

(declare-fun b!868215 () Bool)

(declare-fun e!483603 () Bool)

(assert (=> b!868215 (= e!483603 (and e!483601 mapRes!27029))))

(declare-fun condMapEmpty!27029 () Bool)

(declare-fun mapDefault!27029 () ValueCell!8037)

(assert (=> b!868215 (= condMapEmpty!27029 (= (arr!24049 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8037)) mapDefault!27029)))))

(declare-fun b!868216 () Bool)

(assert (=> b!868216 (= e!483599 tp_is_empty!16953)))

(declare-fun res!590060 () Bool)

(assert (=> start!73930 (=> (not res!590060) (not e!483598))))

(assert (=> start!73930 (= res!590060 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24489 _keys!868))))))

(assert (=> start!73930 e!483598))

(assert (=> start!73930 tp_is_empty!16953))

(assert (=> start!73930 true))

(assert (=> start!73930 tp!51955))

(declare-fun array_inv!18976 (array!50042) Bool)

(assert (=> start!73930 (array_inv!18976 _keys!868)))

(declare-fun array_inv!18977 (array!50044) Bool)

(assert (=> start!73930 (and (array_inv!18977 _values!688) e!483603)))

(declare-fun b!868217 () Bool)

(declare-fun res!590063 () Bool)

(assert (=> b!868217 (=> (not res!590063) (not e!483598))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!868217 (= res!590063 (and (= (select (arr!24048 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!868218 () Bool)

(assert (=> b!868218 (= e!483602 (not true))))

(declare-fun +!2354 (ListLongMap!10097 tuple2!11314) ListLongMap!10097)

(assert (=> b!868218 (= (getCurrentListMapNoExtraKeys!3028 _keys!868 lt!394388 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2354 (getCurrentListMapNoExtraKeys!3028 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11315 k0!854 v!557)))))

(declare-datatypes ((Unit!29758 0))(
  ( (Unit!29759) )
))
(declare-fun lt!394386 () Unit!29758)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!585 (array!50042 array!50044 (_ BitVec 32) (_ BitVec 32) V!27651 V!27651 (_ BitVec 32) (_ BitVec 64) V!27651 (_ BitVec 32) Int) Unit!29758)

(assert (=> b!868218 (= lt!394386 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!585 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!868219 () Bool)

(declare-fun res!590061 () Bool)

(assert (=> b!868219 (=> (not res!590061) (not e!483598))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868219 (= res!590061 (validKeyInArray!0 k0!854))))

(declare-fun b!868220 () Bool)

(declare-fun res!590057 () Bool)

(assert (=> b!868220 (=> (not res!590057) (not e!483598))))

(declare-datatypes ((List!17175 0))(
  ( (Nil!17172) (Cons!17171 (h!18302 (_ BitVec 64)) (t!24220 List!17175)) )
))
(declare-fun arrayNoDuplicates!0 (array!50042 (_ BitVec 32) List!17175) Bool)

(assert (=> b!868220 (= res!590057 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17172))))

(assert (= (and start!73930 res!590060) b!868214))

(assert (= (and b!868214 res!590056) b!868209))

(assert (= (and b!868209 res!590062) b!868212))

(assert (= (and b!868212 res!590059) b!868220))

(assert (= (and b!868220 res!590057) b!868211))

(assert (= (and b!868211 res!590058) b!868219))

(assert (= (and b!868219 res!590061) b!868217))

(assert (= (and b!868217 res!590063) b!868213))

(assert (= (and b!868213 res!590064) b!868218))

(assert (= (and b!868215 condMapEmpty!27029) mapIsEmpty!27029))

(assert (= (and b!868215 (not condMapEmpty!27029)) mapNonEmpty!27029))

(get-info :version)

(assert (= (and mapNonEmpty!27029 ((_ is ValueCellFull!8037) mapValue!27029)) b!868216))

(assert (= (and b!868215 ((_ is ValueCellFull!8037) mapDefault!27029)) b!868210))

(assert (= start!73930 b!868215))

(declare-fun m!810031 () Bool)

(assert (=> start!73930 m!810031))

(declare-fun m!810033 () Bool)

(assert (=> start!73930 m!810033))

(declare-fun m!810035 () Bool)

(assert (=> b!868212 m!810035))

(declare-fun m!810037 () Bool)

(assert (=> mapNonEmpty!27029 m!810037))

(declare-fun m!810039 () Bool)

(assert (=> b!868218 m!810039))

(declare-fun m!810041 () Bool)

(assert (=> b!868218 m!810041))

(assert (=> b!868218 m!810041))

(declare-fun m!810043 () Bool)

(assert (=> b!868218 m!810043))

(declare-fun m!810045 () Bool)

(assert (=> b!868218 m!810045))

(declare-fun m!810047 () Bool)

(assert (=> b!868213 m!810047))

(declare-fun m!810049 () Bool)

(assert (=> b!868213 m!810049))

(declare-fun m!810051 () Bool)

(assert (=> b!868213 m!810051))

(declare-fun m!810053 () Bool)

(assert (=> b!868217 m!810053))

(declare-fun m!810055 () Bool)

(assert (=> b!868219 m!810055))

(declare-fun m!810057 () Bool)

(assert (=> b!868220 m!810057))

(declare-fun m!810059 () Bool)

(assert (=> b!868214 m!810059))

(check-sat (not b!868214) (not b!868212) (not b!868218) (not start!73930) b_and!24587 (not b!868213) (not b_next!14817) (not mapNonEmpty!27029) (not b!868219) tp_is_empty!16953 (not b!868220))
(check-sat b_and!24587 (not b_next!14817))
