; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73450 () Bool)

(assert start!73450)

(declare-fun b_free!14337 () Bool)

(declare-fun b_next!14337 () Bool)

(assert (=> start!73450 (= b_free!14337 (not b_next!14337))))

(declare-fun tp!50516 () Bool)

(declare-fun b_and!23711 () Bool)

(assert (=> start!73450 (= tp!50516 b_and!23711)))

(declare-fun b!857040 () Bool)

(declare-fun e!477721 () Bool)

(declare-fun e!477725 () Bool)

(declare-fun mapRes!26309 () Bool)

(assert (=> b!857040 (= e!477721 (and e!477725 mapRes!26309))))

(declare-fun condMapEmpty!26309 () Bool)

(declare-datatypes ((V!27011 0))(
  ( (V!27012 (val!8284 Int)) )
))
(declare-datatypes ((ValueCell!7797 0))(
  ( (ValueCellFull!7797 (v!10705 V!27011)) (EmptyCell!7797) )
))
(declare-datatypes ((array!49112 0))(
  ( (array!49113 (arr!23583 (Array (_ BitVec 32) ValueCell!7797)) (size!24024 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49112)

(declare-fun mapDefault!26309 () ValueCell!7797)

(assert (=> b!857040 (= condMapEmpty!26309 (= (arr!23583 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7797)) mapDefault!26309)))))

(declare-fun mapIsEmpty!26309 () Bool)

(assert (=> mapIsEmpty!26309 mapRes!26309))

(declare-fun b!857041 () Bool)

(declare-fun res!582271 () Bool)

(declare-fun e!477723 () Bool)

(assert (=> b!857041 (=> (not res!582271) (not e!477723))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49114 0))(
  ( (array!49115 (arr!23584 (Array (_ BitVec 32) (_ BitVec 64))) (size!24025 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49114)

(assert (=> b!857041 (= res!582271 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24025 _keys!868))))))

(declare-fun mapNonEmpty!26309 () Bool)

(declare-fun tp!50515 () Bool)

(declare-fun e!477722 () Bool)

(assert (=> mapNonEmpty!26309 (= mapRes!26309 (and tp!50515 e!477722))))

(declare-fun mapValue!26309 () ValueCell!7797)

(declare-fun mapKey!26309 () (_ BitVec 32))

(declare-fun mapRest!26309 () (Array (_ BitVec 32) ValueCell!7797))

(assert (=> mapNonEmpty!26309 (= (arr!23583 _values!688) (store mapRest!26309 mapKey!26309 mapValue!26309))))

(declare-fun b!857042 () Bool)

(declare-fun res!582276 () Bool)

(assert (=> b!857042 (=> (not res!582276) (not e!477723))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49114 (_ BitVec 32)) Bool)

(assert (=> b!857042 (= res!582276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857043 () Bool)

(declare-fun res!582278 () Bool)

(assert (=> b!857043 (=> (not res!582278) (not e!477723))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857043 (= res!582278 (validMask!0 mask!1196))))

(declare-fun b!857044 () Bool)

(declare-fun res!582274 () Bool)

(assert (=> b!857044 (=> (not res!582274) (not e!477723))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!857044 (= res!582274 (and (= (select (arr!23584 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!582279 () Bool)

(assert (=> start!73450 (=> (not res!582279) (not e!477723))))

(assert (=> start!73450 (= res!582279 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24025 _keys!868))))))

(assert (=> start!73450 e!477723))

(declare-fun tp_is_empty!16473 () Bool)

(assert (=> start!73450 tp_is_empty!16473))

(assert (=> start!73450 true))

(assert (=> start!73450 tp!50516))

(declare-fun array_inv!18666 (array!49114) Bool)

(assert (=> start!73450 (array_inv!18666 _keys!868)))

(declare-fun array_inv!18667 (array!49112) Bool)

(assert (=> start!73450 (and (array_inv!18667 _values!688) e!477721)))

(declare-fun b!857045 () Bool)

(assert (=> b!857045 (= e!477722 tp_is_empty!16473)))

(declare-fun b!857046 () Bool)

(declare-fun res!582272 () Bool)

(assert (=> b!857046 (=> (not res!582272) (not e!477723))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857046 (= res!582272 (validKeyInArray!0 k0!854))))

(declare-fun b!857047 () Bool)

(declare-fun res!582277 () Bool)

(assert (=> b!857047 (=> (not res!582277) (not e!477723))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!857047 (= res!582277 (and (= (size!24024 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24025 _keys!868) (size!24024 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857048 () Bool)

(declare-fun e!477726 () Bool)

(assert (=> b!857048 (= e!477726 (not true))))

(declare-fun v!557 () V!27011)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!386153 () array!49112)

(declare-fun minValue!654 () V!27011)

(declare-fun zeroValue!654 () V!27011)

(declare-datatypes ((tuple2!10914 0))(
  ( (tuple2!10915 (_1!5467 (_ BitVec 64)) (_2!5467 V!27011)) )
))
(declare-datatypes ((List!16785 0))(
  ( (Nil!16782) (Cons!16781 (h!17912 tuple2!10914) (t!23434 List!16785)) )
))
(declare-datatypes ((ListLongMap!9697 0))(
  ( (ListLongMap!9698 (toList!4864 List!16785)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2846 (array!49114 array!49112 (_ BitVec 32) (_ BitVec 32) V!27011 V!27011 (_ BitVec 32) Int) ListLongMap!9697)

(declare-fun +!2172 (ListLongMap!9697 tuple2!10914) ListLongMap!9697)

(assert (=> b!857048 (= (getCurrentListMapNoExtraKeys!2846 _keys!868 lt!386153 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2172 (getCurrentListMapNoExtraKeys!2846 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10915 k0!854 v!557)))))

(declare-datatypes ((Unit!29186 0))(
  ( (Unit!29187) )
))
(declare-fun lt!386151 () Unit!29186)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!432 (array!49114 array!49112 (_ BitVec 32) (_ BitVec 32) V!27011 V!27011 (_ BitVec 32) (_ BitVec 64) V!27011 (_ BitVec 32) Int) Unit!29186)

(assert (=> b!857048 (= lt!386151 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!432 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857049 () Bool)

(assert (=> b!857049 (= e!477725 tp_is_empty!16473)))

(declare-fun b!857050 () Bool)

(declare-fun res!582275 () Bool)

(assert (=> b!857050 (=> (not res!582275) (not e!477723))))

(declare-datatypes ((List!16786 0))(
  ( (Nil!16783) (Cons!16782 (h!17913 (_ BitVec 64)) (t!23435 List!16786)) )
))
(declare-fun arrayNoDuplicates!0 (array!49114 (_ BitVec 32) List!16786) Bool)

(assert (=> b!857050 (= res!582275 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16783))))

(declare-fun b!857051 () Bool)

(assert (=> b!857051 (= e!477723 e!477726)))

(declare-fun res!582273 () Bool)

(assert (=> b!857051 (=> (not res!582273) (not e!477726))))

(assert (=> b!857051 (= res!582273 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386154 () ListLongMap!9697)

(assert (=> b!857051 (= lt!386154 (getCurrentListMapNoExtraKeys!2846 _keys!868 lt!386153 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!857051 (= lt!386153 (array!49113 (store (arr!23583 _values!688) i!612 (ValueCellFull!7797 v!557)) (size!24024 _values!688)))))

(declare-fun lt!386152 () ListLongMap!9697)

(assert (=> b!857051 (= lt!386152 (getCurrentListMapNoExtraKeys!2846 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73450 res!582279) b!857043))

(assert (= (and b!857043 res!582278) b!857047))

(assert (= (and b!857047 res!582277) b!857042))

(assert (= (and b!857042 res!582276) b!857050))

(assert (= (and b!857050 res!582275) b!857041))

(assert (= (and b!857041 res!582271) b!857046))

(assert (= (and b!857046 res!582272) b!857044))

(assert (= (and b!857044 res!582274) b!857051))

(assert (= (and b!857051 res!582273) b!857048))

(assert (= (and b!857040 condMapEmpty!26309) mapIsEmpty!26309))

(assert (= (and b!857040 (not condMapEmpty!26309)) mapNonEmpty!26309))

(get-info :version)

(assert (= (and mapNonEmpty!26309 ((_ is ValueCellFull!7797) mapValue!26309)) b!857045))

(assert (= (and b!857040 ((_ is ValueCellFull!7797) mapDefault!26309)) b!857049))

(assert (= start!73450 b!857040))

(declare-fun m!797965 () Bool)

(assert (=> b!857042 m!797965))

(declare-fun m!797967 () Bool)

(assert (=> start!73450 m!797967))

(declare-fun m!797969 () Bool)

(assert (=> start!73450 m!797969))

(declare-fun m!797971 () Bool)

(assert (=> b!857048 m!797971))

(declare-fun m!797973 () Bool)

(assert (=> b!857048 m!797973))

(assert (=> b!857048 m!797973))

(declare-fun m!797975 () Bool)

(assert (=> b!857048 m!797975))

(declare-fun m!797977 () Bool)

(assert (=> b!857048 m!797977))

(declare-fun m!797979 () Bool)

(assert (=> b!857046 m!797979))

(declare-fun m!797981 () Bool)

(assert (=> b!857051 m!797981))

(declare-fun m!797983 () Bool)

(assert (=> b!857051 m!797983))

(declare-fun m!797985 () Bool)

(assert (=> b!857051 m!797985))

(declare-fun m!797987 () Bool)

(assert (=> mapNonEmpty!26309 m!797987))

(declare-fun m!797989 () Bool)

(assert (=> b!857044 m!797989))

(declare-fun m!797991 () Bool)

(assert (=> b!857043 m!797991))

(declare-fun m!797993 () Bool)

(assert (=> b!857050 m!797993))

(check-sat (not mapNonEmpty!26309) tp_is_empty!16473 (not b!857046) (not b!857051) (not b!857043) (not b!857048) (not b!857042) (not b!857050) (not b_next!14337) (not start!73450) b_and!23711)
(check-sat b_and!23711 (not b_next!14337))
