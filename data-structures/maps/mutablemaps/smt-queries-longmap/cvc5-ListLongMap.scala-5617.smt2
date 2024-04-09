; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73514 () Bool)

(assert start!73514)

(declare-fun b_free!14401 () Bool)

(declare-fun b_next!14401 () Bool)

(assert (=> start!73514 (= b_free!14401 (not b_next!14401))))

(declare-fun tp!50708 () Bool)

(declare-fun b_and!23799 () Bool)

(assert (=> start!73514 (= tp!50708 b_and!23799)))

(declare-fun b!858263 () Bool)

(declare-fun e!478349 () Bool)

(declare-fun tp_is_empty!16537 () Bool)

(assert (=> b!858263 (= e!478349 tp_is_empty!16537)))

(declare-fun b!858264 () Bool)

(declare-fun e!478348 () Bool)

(declare-fun e!478344 () Bool)

(assert (=> b!858264 (= e!478348 e!478344)))

(declare-fun res!583184 () Bool)

(assert (=> b!858264 (=> (not res!583184) (not e!478344))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!858264 (= res!583184 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27097 0))(
  ( (V!27098 (val!8316 Int)) )
))
(declare-datatypes ((ValueCell!7829 0))(
  ( (ValueCellFull!7829 (v!10737 V!27097)) (EmptyCell!7829) )
))
(declare-datatypes ((array!49234 0))(
  ( (array!49235 (arr!23644 (Array (_ BitVec 32) ValueCell!7829)) (size!24085 (_ BitVec 32))) )
))
(declare-fun lt!386650 () array!49234)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49236 0))(
  ( (array!49237 (arr!23645 (Array (_ BitVec 32) (_ BitVec 64))) (size!24086 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49236)

(declare-fun minValue!654 () V!27097)

(declare-fun zeroValue!654 () V!27097)

(declare-datatypes ((tuple2!10960 0))(
  ( (tuple2!10961 (_1!5490 (_ BitVec 64)) (_2!5490 V!27097)) )
))
(declare-datatypes ((List!16832 0))(
  ( (Nil!16829) (Cons!16828 (h!17959 tuple2!10960) (t!23507 List!16832)) )
))
(declare-datatypes ((ListLongMap!9743 0))(
  ( (ListLongMap!9744 (toList!4887 List!16832)) )
))
(declare-fun lt!386654 () ListLongMap!9743)

(declare-fun getCurrentListMapNoExtraKeys!2869 (array!49236 array!49234 (_ BitVec 32) (_ BitVec 32) V!27097 V!27097 (_ BitVec 32) Int) ListLongMap!9743)

(assert (=> b!858264 (= lt!386654 (getCurrentListMapNoExtraKeys!2869 _keys!868 lt!386650 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27097)

(declare-fun _values!688 () array!49234)

(assert (=> b!858264 (= lt!386650 (array!49235 (store (arr!23644 _values!688) i!612 (ValueCellFull!7829 v!557)) (size!24085 _values!688)))))

(declare-fun lt!386651 () ListLongMap!9743)

(assert (=> b!858264 (= lt!386651 (getCurrentListMapNoExtraKeys!2869 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!858265 () Bool)

(declare-fun e!478347 () Bool)

(assert (=> b!858265 (= e!478347 tp_is_empty!16537)))

(declare-fun b!858266 () Bool)

(declare-fun e!478350 () Bool)

(assert (=> b!858266 (= e!478344 (not e!478350))))

(declare-fun res!583182 () Bool)

(assert (=> b!858266 (=> res!583182 e!478350)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858266 (= res!583182 (not (validKeyInArray!0 (select (arr!23645 _keys!868) from!1053))))))

(declare-fun lt!386653 () ListLongMap!9743)

(declare-fun lt!386652 () ListLongMap!9743)

(assert (=> b!858266 (= lt!386653 lt!386652)))

(declare-fun lt!386649 () ListLongMap!9743)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2192 (ListLongMap!9743 tuple2!10960) ListLongMap!9743)

(assert (=> b!858266 (= lt!386652 (+!2192 lt!386649 (tuple2!10961 k!854 v!557)))))

(assert (=> b!858266 (= lt!386653 (getCurrentListMapNoExtraKeys!2869 _keys!868 lt!386650 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!858266 (= lt!386649 (getCurrentListMapNoExtraKeys!2869 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29226 0))(
  ( (Unit!29227) )
))
(declare-fun lt!386655 () Unit!29226)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!452 (array!49236 array!49234 (_ BitVec 32) (_ BitVec 32) V!27097 V!27097 (_ BitVec 32) (_ BitVec 64) V!27097 (_ BitVec 32) Int) Unit!29226)

(assert (=> b!858266 (= lt!386655 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!452 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!858267 () Bool)

(declare-fun res!583191 () Bool)

(assert (=> b!858267 (=> (not res!583191) (not e!478348))))

(assert (=> b!858267 (= res!583191 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24086 _keys!868))))))

(declare-fun b!858268 () Bool)

(declare-fun res!583185 () Bool)

(assert (=> b!858268 (=> (not res!583185) (not e!478348))))

(assert (=> b!858268 (= res!583185 (and (= (size!24085 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24086 _keys!868) (size!24085 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!583186 () Bool)

(assert (=> start!73514 (=> (not res!583186) (not e!478348))))

(assert (=> start!73514 (= res!583186 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24086 _keys!868))))))

(assert (=> start!73514 e!478348))

(assert (=> start!73514 tp_is_empty!16537))

(assert (=> start!73514 true))

(assert (=> start!73514 tp!50708))

(declare-fun array_inv!18704 (array!49236) Bool)

(assert (=> start!73514 (array_inv!18704 _keys!868)))

(declare-fun e!478345 () Bool)

(declare-fun array_inv!18705 (array!49234) Bool)

(assert (=> start!73514 (and (array_inv!18705 _values!688) e!478345)))

(declare-fun mapIsEmpty!26405 () Bool)

(declare-fun mapRes!26405 () Bool)

(assert (=> mapIsEmpty!26405 mapRes!26405))

(declare-fun b!858269 () Bool)

(declare-fun res!583183 () Bool)

(assert (=> b!858269 (=> (not res!583183) (not e!478348))))

(assert (=> b!858269 (= res!583183 (validKeyInArray!0 k!854))))

(declare-fun b!858270 () Bool)

(declare-fun res!583187 () Bool)

(assert (=> b!858270 (=> (not res!583187) (not e!478348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49236 (_ BitVec 32)) Bool)

(assert (=> b!858270 (= res!583187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!858271 () Bool)

(declare-fun res!583188 () Bool)

(assert (=> b!858271 (=> (not res!583188) (not e!478348))))

(declare-datatypes ((List!16833 0))(
  ( (Nil!16830) (Cons!16829 (h!17960 (_ BitVec 64)) (t!23508 List!16833)) )
))
(declare-fun arrayNoDuplicates!0 (array!49236 (_ BitVec 32) List!16833) Bool)

(assert (=> b!858271 (= res!583188 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16830))))

(declare-fun mapNonEmpty!26405 () Bool)

(declare-fun tp!50707 () Bool)

(assert (=> mapNonEmpty!26405 (= mapRes!26405 (and tp!50707 e!478347))))

(declare-fun mapKey!26405 () (_ BitVec 32))

(declare-fun mapValue!26405 () ValueCell!7829)

(declare-fun mapRest!26405 () (Array (_ BitVec 32) ValueCell!7829))

(assert (=> mapNonEmpty!26405 (= (arr!23644 _values!688) (store mapRest!26405 mapKey!26405 mapValue!26405))))

(declare-fun b!858272 () Bool)

(declare-fun res!583189 () Bool)

(assert (=> b!858272 (=> (not res!583189) (not e!478348))))

(assert (=> b!858272 (= res!583189 (and (= (select (arr!23645 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!858273 () Bool)

(assert (=> b!858273 (= e!478350 true)))

(declare-fun get!12466 (ValueCell!7829 V!27097) V!27097)

(declare-fun dynLambda!1082 (Int (_ BitVec 64)) V!27097)

(assert (=> b!858273 (= lt!386654 (+!2192 lt!386652 (tuple2!10961 (select (arr!23645 _keys!868) from!1053) (get!12466 (select (arr!23644 _values!688) from!1053) (dynLambda!1082 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858274 () Bool)

(declare-fun res!583190 () Bool)

(assert (=> b!858274 (=> (not res!583190) (not e!478348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858274 (= res!583190 (validMask!0 mask!1196))))

(declare-fun b!858275 () Bool)

(assert (=> b!858275 (= e!478345 (and e!478349 mapRes!26405))))

(declare-fun condMapEmpty!26405 () Bool)

(declare-fun mapDefault!26405 () ValueCell!7829)

