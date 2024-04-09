; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73402 () Bool)

(assert start!73402)

(declare-fun b_free!14289 () Bool)

(declare-fun b_next!14289 () Bool)

(assert (=> start!73402 (= b_free!14289 (not b_next!14289))))

(declare-fun tp!50372 () Bool)

(declare-fun b_and!23663 () Bool)

(assert (=> start!73402 (= tp!50372 b_and!23663)))

(declare-fun b!856176 () Bool)

(declare-fun e!477290 () Bool)

(declare-fun tp_is_empty!16425 () Bool)

(assert (=> b!856176 (= e!477290 tp_is_empty!16425)))

(declare-fun b!856177 () Bool)

(declare-fun res!581629 () Bool)

(declare-fun e!477293 () Bool)

(assert (=> b!856177 (=> (not res!581629) (not e!477293))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856177 (= res!581629 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!26237 () Bool)

(declare-fun mapRes!26237 () Bool)

(assert (=> mapIsEmpty!26237 mapRes!26237))

(declare-fun b!856178 () Bool)

(declare-fun e!477291 () Bool)

(assert (=> b!856178 (= e!477293 e!477291)))

(declare-fun res!581624 () Bool)

(assert (=> b!856178 (=> (not res!581624) (not e!477291))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856178 (= res!581624 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26947 0))(
  ( (V!26948 (val!8260 Int)) )
))
(declare-datatypes ((tuple2!10878 0))(
  ( (tuple2!10879 (_1!5449 (_ BitVec 64)) (_2!5449 V!26947)) )
))
(declare-datatypes ((List!16752 0))(
  ( (Nil!16749) (Cons!16748 (h!17879 tuple2!10878) (t!23401 List!16752)) )
))
(declare-datatypes ((ListLongMap!9661 0))(
  ( (ListLongMap!9662 (toList!4846 List!16752)) )
))
(declare-fun lt!385865 () ListLongMap!9661)

(declare-datatypes ((array!49020 0))(
  ( (array!49021 (arr!23537 (Array (_ BitVec 32) (_ BitVec 64))) (size!23978 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49020)

(declare-fun minValue!654 () V!26947)

(declare-fun zeroValue!654 () V!26947)

(declare-datatypes ((ValueCell!7773 0))(
  ( (ValueCellFull!7773 (v!10681 V!26947)) (EmptyCell!7773) )
))
(declare-datatypes ((array!49022 0))(
  ( (array!49023 (arr!23538 (Array (_ BitVec 32) ValueCell!7773)) (size!23979 (_ BitVec 32))) )
))
(declare-fun lt!385863 () array!49022)

(declare-fun getCurrentListMapNoExtraKeys!2828 (array!49020 array!49022 (_ BitVec 32) (_ BitVec 32) V!26947 V!26947 (_ BitVec 32) Int) ListLongMap!9661)

(assert (=> b!856178 (= lt!385865 (getCurrentListMapNoExtraKeys!2828 _keys!868 lt!385863 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26947)

(declare-fun _values!688 () array!49022)

(assert (=> b!856178 (= lt!385863 (array!49023 (store (arr!23538 _values!688) i!612 (ValueCellFull!7773 v!557)) (size!23979 _values!688)))))

(declare-fun lt!385864 () ListLongMap!9661)

(assert (=> b!856178 (= lt!385864 (getCurrentListMapNoExtraKeys!2828 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856179 () Bool)

(declare-fun res!581626 () Bool)

(assert (=> b!856179 (=> (not res!581626) (not e!477293))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856179 (= res!581626 (validKeyInArray!0 k0!854))))

(declare-fun res!581630 () Bool)

(assert (=> start!73402 (=> (not res!581630) (not e!477293))))

(assert (=> start!73402 (= res!581630 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23978 _keys!868))))))

(assert (=> start!73402 e!477293))

(assert (=> start!73402 tp_is_empty!16425))

(assert (=> start!73402 true))

(assert (=> start!73402 tp!50372))

(declare-fun array_inv!18630 (array!49020) Bool)

(assert (=> start!73402 (array_inv!18630 _keys!868)))

(declare-fun e!477289 () Bool)

(declare-fun array_inv!18631 (array!49022) Bool)

(assert (=> start!73402 (and (array_inv!18631 _values!688) e!477289)))

(declare-fun b!856180 () Bool)

(declare-fun res!581628 () Bool)

(assert (=> b!856180 (=> (not res!581628) (not e!477293))))

(declare-datatypes ((List!16753 0))(
  ( (Nil!16750) (Cons!16749 (h!17880 (_ BitVec 64)) (t!23402 List!16753)) )
))
(declare-fun arrayNoDuplicates!0 (array!49020 (_ BitVec 32) List!16753) Bool)

(assert (=> b!856180 (= res!581628 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16750))))

(declare-fun b!856181 () Bool)

(declare-fun res!581625 () Bool)

(assert (=> b!856181 (=> (not res!581625) (not e!477293))))

(assert (=> b!856181 (= res!581625 (and (= (size!23979 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23978 _keys!868) (size!23979 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856182 () Bool)

(declare-fun res!581627 () Bool)

(assert (=> b!856182 (=> (not res!581627) (not e!477293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49020 (_ BitVec 32)) Bool)

(assert (=> b!856182 (= res!581627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26237 () Bool)

(declare-fun tp!50371 () Bool)

(declare-fun e!477294 () Bool)

(assert (=> mapNonEmpty!26237 (= mapRes!26237 (and tp!50371 e!477294))))

(declare-fun mapKey!26237 () (_ BitVec 32))

(declare-fun mapRest!26237 () (Array (_ BitVec 32) ValueCell!7773))

(declare-fun mapValue!26237 () ValueCell!7773)

(assert (=> mapNonEmpty!26237 (= (arr!23538 _values!688) (store mapRest!26237 mapKey!26237 mapValue!26237))))

(declare-fun b!856183 () Bool)

(declare-fun res!581631 () Bool)

(assert (=> b!856183 (=> (not res!581631) (not e!477293))))

(assert (=> b!856183 (= res!581631 (and (= (select (arr!23537 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!856184 () Bool)

(assert (=> b!856184 (= e!477289 (and e!477290 mapRes!26237))))

(declare-fun condMapEmpty!26237 () Bool)

(declare-fun mapDefault!26237 () ValueCell!7773)

(assert (=> b!856184 (= condMapEmpty!26237 (= (arr!23538 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7773)) mapDefault!26237)))))

(declare-fun b!856185 () Bool)

(declare-fun res!581623 () Bool)

(assert (=> b!856185 (=> (not res!581623) (not e!477293))))

(assert (=> b!856185 (= res!581623 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23978 _keys!868))))))

(declare-fun b!856186 () Bool)

(assert (=> b!856186 (= e!477291 (not true))))

(declare-fun +!2156 (ListLongMap!9661 tuple2!10878) ListLongMap!9661)

(assert (=> b!856186 (= (getCurrentListMapNoExtraKeys!2828 _keys!868 lt!385863 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2156 (getCurrentListMapNoExtraKeys!2828 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10879 k0!854 v!557)))))

(declare-datatypes ((Unit!29154 0))(
  ( (Unit!29155) )
))
(declare-fun lt!385866 () Unit!29154)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!416 (array!49020 array!49022 (_ BitVec 32) (_ BitVec 32) V!26947 V!26947 (_ BitVec 32) (_ BitVec 64) V!26947 (_ BitVec 32) Int) Unit!29154)

(assert (=> b!856186 (= lt!385866 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!416 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856187 () Bool)

(assert (=> b!856187 (= e!477294 tp_is_empty!16425)))

(assert (= (and start!73402 res!581630) b!856177))

(assert (= (and b!856177 res!581629) b!856181))

(assert (= (and b!856181 res!581625) b!856182))

(assert (= (and b!856182 res!581627) b!856180))

(assert (= (and b!856180 res!581628) b!856185))

(assert (= (and b!856185 res!581623) b!856179))

(assert (= (and b!856179 res!581626) b!856183))

(assert (= (and b!856183 res!581631) b!856178))

(assert (= (and b!856178 res!581624) b!856186))

(assert (= (and b!856184 condMapEmpty!26237) mapIsEmpty!26237))

(assert (= (and b!856184 (not condMapEmpty!26237)) mapNonEmpty!26237))

(get-info :version)

(assert (= (and mapNonEmpty!26237 ((_ is ValueCellFull!7773) mapValue!26237)) b!856187))

(assert (= (and b!856184 ((_ is ValueCellFull!7773) mapDefault!26237)) b!856176))

(assert (= start!73402 b!856184))

(declare-fun m!797245 () Bool)

(assert (=> b!856186 m!797245))

(declare-fun m!797247 () Bool)

(assert (=> b!856186 m!797247))

(assert (=> b!856186 m!797247))

(declare-fun m!797249 () Bool)

(assert (=> b!856186 m!797249))

(declare-fun m!797251 () Bool)

(assert (=> b!856186 m!797251))

(declare-fun m!797253 () Bool)

(assert (=> b!856180 m!797253))

(declare-fun m!797255 () Bool)

(assert (=> start!73402 m!797255))

(declare-fun m!797257 () Bool)

(assert (=> start!73402 m!797257))

(declare-fun m!797259 () Bool)

(assert (=> b!856178 m!797259))

(declare-fun m!797261 () Bool)

(assert (=> b!856178 m!797261))

(declare-fun m!797263 () Bool)

(assert (=> b!856178 m!797263))

(declare-fun m!797265 () Bool)

(assert (=> b!856179 m!797265))

(declare-fun m!797267 () Bool)

(assert (=> b!856183 m!797267))

(declare-fun m!797269 () Bool)

(assert (=> mapNonEmpty!26237 m!797269))

(declare-fun m!797271 () Bool)

(assert (=> b!856182 m!797271))

(declare-fun m!797273 () Bool)

(assert (=> b!856177 m!797273))

(check-sat (not b!856186) (not b_next!14289) (not b!856179) (not b!856177) (not b!856182) (not start!73402) (not mapNonEmpty!26237) (not b!856178) b_and!23663 tp_is_empty!16425 (not b!856180))
(check-sat b_and!23663 (not b_next!14289))
