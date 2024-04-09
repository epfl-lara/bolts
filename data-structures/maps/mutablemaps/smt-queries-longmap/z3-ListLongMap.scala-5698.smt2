; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74002 () Bool)

(assert start!74002)

(declare-fun b_free!14889 () Bool)

(declare-fun b_next!14889 () Bool)

(assert (=> start!74002 (= b_free!14889 (not b_next!14889))))

(declare-fun tp!52172 () Bool)

(declare-fun b_and!24659 () Bool)

(assert (=> start!74002 (= tp!52172 b_and!24659)))

(declare-fun b!869505 () Bool)

(declare-fun res!591030 () Bool)

(declare-fun e!484250 () Bool)

(assert (=> b!869505 (=> (not res!591030) (not e!484250))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!50182 0))(
  ( (array!50183 (arr!24118 (Array (_ BitVec 32) (_ BitVec 64))) (size!24559 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50182)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!869505 (= res!591030 (and (= (select (arr!24118 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!869506 () Bool)

(declare-fun e!484249 () Bool)

(declare-fun e!484247 () Bool)

(declare-fun mapRes!27137 () Bool)

(assert (=> b!869506 (= e!484249 (and e!484247 mapRes!27137))))

(declare-fun condMapEmpty!27137 () Bool)

(declare-datatypes ((V!27747 0))(
  ( (V!27748 (val!8560 Int)) )
))
(declare-datatypes ((ValueCell!8073 0))(
  ( (ValueCellFull!8073 (v!10981 V!27747)) (EmptyCell!8073) )
))
(declare-datatypes ((array!50184 0))(
  ( (array!50185 (arr!24119 (Array (_ BitVec 32) ValueCell!8073)) (size!24560 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50184)

(declare-fun mapDefault!27137 () ValueCell!8073)

(assert (=> b!869506 (= condMapEmpty!27137 (= (arr!24119 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8073)) mapDefault!27137)))))

(declare-fun b!869507 () Bool)

(declare-fun res!591032 () Bool)

(assert (=> b!869507 (=> (not res!591032) (not e!484250))))

(assert (=> b!869507 (= res!591032 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24559 _keys!868))))))

(declare-fun b!869508 () Bool)

(declare-fun e!484246 () Bool)

(assert (=> b!869508 (= e!484250 e!484246)))

(declare-fun res!591031 () Bool)

(assert (=> b!869508 (=> (not res!591031) (not e!484246))))

(assert (=> b!869508 (= res!591031 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!394819 () array!50184)

(declare-fun minValue!654 () V!27747)

(declare-fun zeroValue!654 () V!27747)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11366 0))(
  ( (tuple2!11367 (_1!5693 (_ BitVec 64)) (_2!5693 V!27747)) )
))
(declare-datatypes ((List!17224 0))(
  ( (Nil!17221) (Cons!17220 (h!18351 tuple2!11366) (t!24269 List!17224)) )
))
(declare-datatypes ((ListLongMap!10149 0))(
  ( (ListLongMap!10150 (toList!5090 List!17224)) )
))
(declare-fun lt!394821 () ListLongMap!10149)

(declare-fun getCurrentListMapNoExtraKeys!3054 (array!50182 array!50184 (_ BitVec 32) (_ BitVec 32) V!27747 V!27747 (_ BitVec 32) Int) ListLongMap!10149)

(assert (=> b!869508 (= lt!394821 (getCurrentListMapNoExtraKeys!3054 _keys!868 lt!394819 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27747)

(assert (=> b!869508 (= lt!394819 (array!50185 (store (arr!24119 _values!688) i!612 (ValueCellFull!8073 v!557)) (size!24560 _values!688)))))

(declare-fun lt!394818 () ListLongMap!10149)

(assert (=> b!869508 (= lt!394818 (getCurrentListMapNoExtraKeys!3054 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27137 () Bool)

(declare-fun tp!52171 () Bool)

(declare-fun e!484251 () Bool)

(assert (=> mapNonEmpty!27137 (= mapRes!27137 (and tp!52171 e!484251))))

(declare-fun mapRest!27137 () (Array (_ BitVec 32) ValueCell!8073))

(declare-fun mapValue!27137 () ValueCell!8073)

(declare-fun mapKey!27137 () (_ BitVec 32))

(assert (=> mapNonEmpty!27137 (= (arr!24119 _values!688) (store mapRest!27137 mapKey!27137 mapValue!27137))))

(declare-fun b!869509 () Bool)

(declare-fun res!591034 () Bool)

(assert (=> b!869509 (=> (not res!591034) (not e!484250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50182 (_ BitVec 32)) Bool)

(assert (=> b!869509 (= res!591034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!591035 () Bool)

(assert (=> start!74002 (=> (not res!591035) (not e!484250))))

(assert (=> start!74002 (= res!591035 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24559 _keys!868))))))

(assert (=> start!74002 e!484250))

(declare-fun tp_is_empty!17025 () Bool)

(assert (=> start!74002 tp_is_empty!17025))

(assert (=> start!74002 true))

(assert (=> start!74002 tp!52172))

(declare-fun array_inv!19022 (array!50182) Bool)

(assert (=> start!74002 (array_inv!19022 _keys!868)))

(declare-fun array_inv!19023 (array!50184) Bool)

(assert (=> start!74002 (and (array_inv!19023 _values!688) e!484249)))

(declare-fun b!869510 () Bool)

(assert (=> b!869510 (= e!484247 tp_is_empty!17025)))

(declare-fun b!869511 () Bool)

(declare-fun res!591036 () Bool)

(assert (=> b!869511 (=> (not res!591036) (not e!484250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869511 (= res!591036 (validMask!0 mask!1196))))

(declare-fun b!869512 () Bool)

(assert (=> b!869512 (= e!484246 (not true))))

(declare-fun +!2376 (ListLongMap!10149 tuple2!11366) ListLongMap!10149)

(assert (=> b!869512 (= (getCurrentListMapNoExtraKeys!3054 _keys!868 lt!394819 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2376 (getCurrentListMapNoExtraKeys!3054 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11367 k0!854 v!557)))))

(declare-datatypes ((Unit!29802 0))(
  ( (Unit!29803) )
))
(declare-fun lt!394820 () Unit!29802)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!607 (array!50182 array!50184 (_ BitVec 32) (_ BitVec 32) V!27747 V!27747 (_ BitVec 32) (_ BitVec 64) V!27747 (_ BitVec 32) Int) Unit!29802)

(assert (=> b!869512 (= lt!394820 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!607 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869513 () Bool)

(declare-fun res!591028 () Bool)

(assert (=> b!869513 (=> (not res!591028) (not e!484250))))

(declare-datatypes ((List!17225 0))(
  ( (Nil!17222) (Cons!17221 (h!18352 (_ BitVec 64)) (t!24270 List!17225)) )
))
(declare-fun arrayNoDuplicates!0 (array!50182 (_ BitVec 32) List!17225) Bool)

(assert (=> b!869513 (= res!591028 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17222))))

(declare-fun b!869514 () Bool)

(declare-fun res!591033 () Bool)

(assert (=> b!869514 (=> (not res!591033) (not e!484250))))

(assert (=> b!869514 (= res!591033 (and (= (size!24560 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24559 _keys!868) (size!24560 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869515 () Bool)

(declare-fun res!591029 () Bool)

(assert (=> b!869515 (=> (not res!591029) (not e!484250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869515 (= res!591029 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!27137 () Bool)

(assert (=> mapIsEmpty!27137 mapRes!27137))

(declare-fun b!869516 () Bool)

(assert (=> b!869516 (= e!484251 tp_is_empty!17025)))

(assert (= (and start!74002 res!591035) b!869511))

(assert (= (and b!869511 res!591036) b!869514))

(assert (= (and b!869514 res!591033) b!869509))

(assert (= (and b!869509 res!591034) b!869513))

(assert (= (and b!869513 res!591028) b!869507))

(assert (= (and b!869507 res!591032) b!869515))

(assert (= (and b!869515 res!591029) b!869505))

(assert (= (and b!869505 res!591030) b!869508))

(assert (= (and b!869508 res!591031) b!869512))

(assert (= (and b!869506 condMapEmpty!27137) mapIsEmpty!27137))

(assert (= (and b!869506 (not condMapEmpty!27137)) mapNonEmpty!27137))

(get-info :version)

(assert (= (and mapNonEmpty!27137 ((_ is ValueCellFull!8073) mapValue!27137)) b!869516))

(assert (= (and b!869506 ((_ is ValueCellFull!8073) mapDefault!27137)) b!869510))

(assert (= start!74002 b!869506))

(declare-fun m!811111 () Bool)

(assert (=> b!869511 m!811111))

(declare-fun m!811113 () Bool)

(assert (=> b!869512 m!811113))

(declare-fun m!811115 () Bool)

(assert (=> b!869512 m!811115))

(assert (=> b!869512 m!811115))

(declare-fun m!811117 () Bool)

(assert (=> b!869512 m!811117))

(declare-fun m!811119 () Bool)

(assert (=> b!869512 m!811119))

(declare-fun m!811121 () Bool)

(assert (=> start!74002 m!811121))

(declare-fun m!811123 () Bool)

(assert (=> start!74002 m!811123))

(declare-fun m!811125 () Bool)

(assert (=> b!869515 m!811125))

(declare-fun m!811127 () Bool)

(assert (=> b!869508 m!811127))

(declare-fun m!811129 () Bool)

(assert (=> b!869508 m!811129))

(declare-fun m!811131 () Bool)

(assert (=> b!869508 m!811131))

(declare-fun m!811133 () Bool)

(assert (=> b!869513 m!811133))

(declare-fun m!811135 () Bool)

(assert (=> mapNonEmpty!27137 m!811135))

(declare-fun m!811137 () Bool)

(assert (=> b!869505 m!811137))

(declare-fun m!811139 () Bool)

(assert (=> b!869509 m!811139))

(check-sat (not b!869509) tp_is_empty!17025 (not b!869512) b_and!24659 (not b!869515) (not b_next!14889) (not b!869511) (not mapNonEmpty!27137) (not b!869513) (not b!869508) (not start!74002))
(check-sat b_and!24659 (not b_next!14889))
