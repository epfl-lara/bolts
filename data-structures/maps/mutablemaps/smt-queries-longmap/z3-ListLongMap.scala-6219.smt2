; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79510 () Bool)

(assert start!79510)

(declare-fun b_free!17637 () Bool)

(declare-fun b_next!17637 () Bool)

(assert (=> start!79510 (= b_free!17637 (not b_next!17637))))

(declare-fun tp!61359 () Bool)

(declare-fun b_and!28859 () Bool)

(assert (=> start!79510 (= tp!61359 b_and!28859)))

(declare-fun b!934127 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((array!56248 0))(
  ( (array!56249 (arr!27063 (Array (_ BitVec 32) (_ BitVec 64))) (size!27523 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56248)

(declare-fun e!524545 () Bool)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!56248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934127 (= e!524545 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun mapIsEmpty!31980 () Bool)

(declare-fun mapRes!31980 () Bool)

(assert (=> mapIsEmpty!31980 mapRes!31980))

(declare-fun b!934128 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!934128 (= e!524545 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!934129 () Bool)

(declare-fun res!629261 () Bool)

(declare-fun e!524552 () Bool)

(assert (=> b!934129 (=> (not res!629261) (not e!524552))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((V!31825 0))(
  ( (V!31826 (val!10123 Int)) )
))
(declare-datatypes ((ValueCell!9591 0))(
  ( (ValueCellFull!9591 (v!12643 V!31825)) (EmptyCell!9591) )
))
(declare-datatypes ((array!56250 0))(
  ( (array!56251 (arr!27064 (Array (_ BitVec 32) ValueCell!9591)) (size!27524 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56250)

(assert (=> b!934129 (= res!629261 (and (= (size!27524 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27523 _keys!1487) (size!27524 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934130 () Bool)

(declare-fun res!629252 () Bool)

(declare-fun e!524546 () Bool)

(assert (=> b!934130 (=> (not res!629252) (not e!524546))))

(declare-datatypes ((tuple2!13382 0))(
  ( (tuple2!13383 (_1!6701 (_ BitVec 64)) (_2!6701 V!31825)) )
))
(declare-datatypes ((List!19189 0))(
  ( (Nil!19186) (Cons!19185 (h!20331 tuple2!13382) (t!27378 List!19189)) )
))
(declare-datatypes ((ListLongMap!12093 0))(
  ( (ListLongMap!12094 (toList!6062 List!19189)) )
))
(declare-fun lt!420843 () ListLongMap!12093)

(declare-fun v!791 () V!31825)

(declare-fun apply!842 (ListLongMap!12093 (_ BitVec 64)) V!31825)

(assert (=> b!934130 (= res!629252 (= (apply!842 lt!420843 k0!1099) v!791))))

(declare-fun b!934132 () Bool)

(declare-fun res!629255 () Bool)

(assert (=> b!934132 (=> (not res!629255) (not e!524552))))

(declare-datatypes ((List!19190 0))(
  ( (Nil!19187) (Cons!19186 (h!20332 (_ BitVec 64)) (t!27379 List!19190)) )
))
(declare-fun arrayNoDuplicates!0 (array!56248 (_ BitVec 32) List!19190) Bool)

(assert (=> b!934132 (= res!629255 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19187))))

(declare-fun b!934133 () Bool)

(declare-fun e!524548 () Bool)

(declare-fun tp_is_empty!20145 () Bool)

(assert (=> b!934133 (= e!524548 tp_is_empty!20145)))

(declare-fun b!934134 () Bool)

(declare-fun e!524547 () Bool)

(assert (=> b!934134 (= e!524547 tp_is_empty!20145)))

(declare-fun b!934135 () Bool)

(declare-fun e!524551 () Bool)

(assert (=> b!934135 (= e!524551 (not true))))

(assert (=> b!934135 e!524545))

(declare-fun c!97064 () Bool)

(assert (=> b!934135 (= c!97064 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31515 0))(
  ( (Unit!31516) )
))
(declare-fun lt!420845 () Unit!31515)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31825)

(declare-fun minValue!1173 () V!31825)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!274 (array!56248 array!56250 (_ BitVec 32) (_ BitVec 32) V!31825 V!31825 (_ BitVec 64) (_ BitVec 32) Int) Unit!31515)

(assert (=> b!934135 (= lt!420845 (lemmaListMapContainsThenArrayContainsFrom!274 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!934135 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19187)))

(declare-fun lt!420847 () Unit!31515)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56248 (_ BitVec 32) (_ BitVec 32)) Unit!31515)

(assert (=> b!934135 (= lt!420847 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420844 () tuple2!13382)

(declare-fun contains!5063 (ListLongMap!12093 (_ BitVec 64)) Bool)

(declare-fun +!2761 (ListLongMap!12093 tuple2!13382) ListLongMap!12093)

(assert (=> b!934135 (contains!5063 (+!2761 lt!420843 lt!420844) k0!1099)))

(declare-fun lt!420841 () Unit!31515)

(declare-fun lt!420846 () V!31825)

(declare-fun lt!420848 () (_ BitVec 64))

(declare-fun addStillContains!517 (ListLongMap!12093 (_ BitVec 64) V!31825 (_ BitVec 64)) Unit!31515)

(assert (=> b!934135 (= lt!420841 (addStillContains!517 lt!420843 lt!420848 lt!420846 k0!1099))))

(declare-fun getCurrentListMap!3254 (array!56248 array!56250 (_ BitVec 32) (_ BitVec 32) V!31825 V!31825 (_ BitVec 32) Int) ListLongMap!12093)

(assert (=> b!934135 (= (getCurrentListMap!3254 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2761 (getCurrentListMap!3254 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420844))))

(assert (=> b!934135 (= lt!420844 (tuple2!13383 lt!420848 lt!420846))))

(declare-fun get!14258 (ValueCell!9591 V!31825) V!31825)

(declare-fun dynLambda!1600 (Int (_ BitVec 64)) V!31825)

(assert (=> b!934135 (= lt!420846 (get!14258 (select (arr!27064 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1600 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420842 () Unit!31515)

(declare-fun lemmaListMapRecursiveValidKeyArray!196 (array!56248 array!56250 (_ BitVec 32) (_ BitVec 32) V!31825 V!31825 (_ BitVec 32) Int) Unit!31515)

(assert (=> b!934135 (= lt!420842 (lemmaListMapRecursiveValidKeyArray!196 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934136 () Bool)

(declare-fun res!629259 () Bool)

(assert (=> b!934136 (=> (not res!629259) (not e!524552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56248 (_ BitVec 32)) Bool)

(assert (=> b!934136 (= res!629259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!934137 () Bool)

(assert (=> b!934137 (= e!524552 e!524546)))

(declare-fun res!629257 () Bool)

(assert (=> b!934137 (=> (not res!629257) (not e!524546))))

(assert (=> b!934137 (= res!629257 (contains!5063 lt!420843 k0!1099))))

(assert (=> b!934137 (= lt!420843 (getCurrentListMap!3254 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934138 () Bool)

(declare-fun e!524549 () Bool)

(assert (=> b!934138 (= e!524549 (and e!524548 mapRes!31980))))

(declare-fun condMapEmpty!31980 () Bool)

(declare-fun mapDefault!31980 () ValueCell!9591)

(assert (=> b!934138 (= condMapEmpty!31980 (= (arr!27064 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9591)) mapDefault!31980)))))

(declare-fun b!934139 () Bool)

(declare-fun res!629256 () Bool)

(assert (=> b!934139 (=> (not res!629256) (not e!524552))))

(assert (=> b!934139 (= res!629256 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27523 _keys!1487))))))

(declare-fun b!934140 () Bool)

(declare-fun res!629258 () Bool)

(assert (=> b!934140 (=> (not res!629258) (not e!524546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934140 (= res!629258 (validKeyInArray!0 k0!1099))))

(declare-fun mapNonEmpty!31980 () Bool)

(declare-fun tp!61358 () Bool)

(assert (=> mapNonEmpty!31980 (= mapRes!31980 (and tp!61358 e!524547))))

(declare-fun mapKey!31980 () (_ BitVec 32))

(declare-fun mapRest!31980 () (Array (_ BitVec 32) ValueCell!9591))

(declare-fun mapValue!31980 () ValueCell!9591)

(assert (=> mapNonEmpty!31980 (= (arr!27064 _values!1231) (store mapRest!31980 mapKey!31980 mapValue!31980))))

(declare-fun b!934141 () Bool)

(assert (=> b!934141 (= e!524546 e!524551)))

(declare-fun res!629260 () Bool)

(assert (=> b!934141 (=> (not res!629260) (not e!524551))))

(assert (=> b!934141 (= res!629260 (validKeyInArray!0 lt!420848))))

(assert (=> b!934141 (= lt!420848 (select (arr!27063 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!934131 () Bool)

(declare-fun res!629254 () Bool)

(assert (=> b!934131 (=> (not res!629254) (not e!524546))))

(assert (=> b!934131 (= res!629254 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!629253 () Bool)

(assert (=> start!79510 (=> (not res!629253) (not e!524552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79510 (= res!629253 (validMask!0 mask!1881))))

(assert (=> start!79510 e!524552))

(assert (=> start!79510 true))

(assert (=> start!79510 tp_is_empty!20145))

(declare-fun array_inv!21014 (array!56250) Bool)

(assert (=> start!79510 (and (array_inv!21014 _values!1231) e!524549)))

(assert (=> start!79510 tp!61359))

(declare-fun array_inv!21015 (array!56248) Bool)

(assert (=> start!79510 (array_inv!21015 _keys!1487)))

(assert (= (and start!79510 res!629253) b!934129))

(assert (= (and b!934129 res!629261) b!934136))

(assert (= (and b!934136 res!629259) b!934132))

(assert (= (and b!934132 res!629255) b!934139))

(assert (= (and b!934139 res!629256) b!934137))

(assert (= (and b!934137 res!629257) b!934130))

(assert (= (and b!934130 res!629252) b!934131))

(assert (= (and b!934131 res!629254) b!934140))

(assert (= (and b!934140 res!629258) b!934141))

(assert (= (and b!934141 res!629260) b!934135))

(assert (= (and b!934135 c!97064) b!934127))

(assert (= (and b!934135 (not c!97064)) b!934128))

(assert (= (and b!934138 condMapEmpty!31980) mapIsEmpty!31980))

(assert (= (and b!934138 (not condMapEmpty!31980)) mapNonEmpty!31980))

(get-info :version)

(assert (= (and mapNonEmpty!31980 ((_ is ValueCellFull!9591) mapValue!31980)) b!934134))

(assert (= (and b!934138 ((_ is ValueCellFull!9591) mapDefault!31980)) b!934133))

(assert (= start!79510 b!934138))

(declare-fun b_lambda!14019 () Bool)

(assert (=> (not b_lambda!14019) (not b!934135)))

(declare-fun t!27377 () Bool)

(declare-fun tb!6039 () Bool)

(assert (=> (and start!79510 (= defaultEntry!1235 defaultEntry!1235) t!27377) tb!6039))

(declare-fun result!11897 () Bool)

(assert (=> tb!6039 (= result!11897 tp_is_empty!20145)))

(assert (=> b!934135 t!27377))

(declare-fun b_and!28861 () Bool)

(assert (= b_and!28859 (and (=> t!27377 result!11897) b_and!28861)))

(declare-fun m!868511 () Bool)

(assert (=> b!934136 m!868511))

(declare-fun m!868513 () Bool)

(assert (=> b!934132 m!868513))

(declare-fun m!868515 () Bool)

(assert (=> b!934135 m!868515))

(declare-fun m!868517 () Bool)

(assert (=> b!934135 m!868517))

(declare-fun m!868519 () Bool)

(assert (=> b!934135 m!868519))

(declare-fun m!868521 () Bool)

(assert (=> b!934135 m!868521))

(declare-fun m!868523 () Bool)

(assert (=> b!934135 m!868523))

(assert (=> b!934135 m!868515))

(assert (=> b!934135 m!868523))

(declare-fun m!868525 () Bool)

(assert (=> b!934135 m!868525))

(declare-fun m!868527 () Bool)

(assert (=> b!934135 m!868527))

(declare-fun m!868529 () Bool)

(assert (=> b!934135 m!868529))

(declare-fun m!868531 () Bool)

(assert (=> b!934135 m!868531))

(declare-fun m!868533 () Bool)

(assert (=> b!934135 m!868533))

(assert (=> b!934135 m!868525))

(declare-fun m!868535 () Bool)

(assert (=> b!934135 m!868535))

(declare-fun m!868537 () Bool)

(assert (=> b!934135 m!868537))

(assert (=> b!934135 m!868535))

(declare-fun m!868539 () Bool)

(assert (=> b!934135 m!868539))

(declare-fun m!868541 () Bool)

(assert (=> mapNonEmpty!31980 m!868541))

(declare-fun m!868543 () Bool)

(assert (=> b!934141 m!868543))

(declare-fun m!868545 () Bool)

(assert (=> b!934141 m!868545))

(declare-fun m!868547 () Bool)

(assert (=> b!934140 m!868547))

(declare-fun m!868549 () Bool)

(assert (=> b!934127 m!868549))

(declare-fun m!868551 () Bool)

(assert (=> start!79510 m!868551))

(declare-fun m!868553 () Bool)

(assert (=> start!79510 m!868553))

(declare-fun m!868555 () Bool)

(assert (=> start!79510 m!868555))

(declare-fun m!868557 () Bool)

(assert (=> b!934130 m!868557))

(declare-fun m!868559 () Bool)

(assert (=> b!934137 m!868559))

(declare-fun m!868561 () Bool)

(assert (=> b!934137 m!868561))

(check-sat (not b!934135) b_and!28861 (not b!934141) (not b!934136) (not b!934137) (not b!934132) (not b_next!17637) tp_is_empty!20145 (not b!934140) (not b!934127) (not start!79510) (not mapNonEmpty!31980) (not b!934130) (not b_lambda!14019))
(check-sat b_and!28861 (not b_next!17637))
