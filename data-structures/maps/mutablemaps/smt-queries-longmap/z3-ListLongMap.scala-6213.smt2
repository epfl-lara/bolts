; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79442 () Bool)

(assert start!79442)

(declare-fun b_free!17601 () Bool)

(declare-fun b_next!17601 () Bool)

(assert (=> start!79442 (= b_free!17601 (not b_next!17601))))

(declare-fun tp!61247 () Bool)

(declare-fun b_and!28779 () Bool)

(assert (=> start!79442 (= tp!61247 b_and!28779)))

(declare-fun b!933156 () Bool)

(declare-fun e!524025 () Bool)

(assert (=> b!933156 (= e!524025 (not true))))

(declare-datatypes ((array!56178 0))(
  ( (array!56179 (arr!27029 (Array (_ BitVec 32) (_ BitVec 64))) (size!27489 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56178)

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((List!19159 0))(
  ( (Nil!19156) (Cons!19155 (h!20301 (_ BitVec 64)) (t!27312 List!19159)) )
))
(declare-fun arrayNoDuplicates!0 (array!56178 (_ BitVec 32) List!19159) Bool)

(assert (=> b!933156 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19156)))

(declare-datatypes ((Unit!31484 0))(
  ( (Unit!31485) )
))
(declare-fun lt!420283 () Unit!31484)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56178 (_ BitVec 32) (_ BitVec 32)) Unit!31484)

(assert (=> b!933156 (= lt!420283 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((V!31777 0))(
  ( (V!31778 (val!10105 Int)) )
))
(declare-datatypes ((tuple2!13352 0))(
  ( (tuple2!13353 (_1!6686 (_ BitVec 64)) (_2!6686 V!31777)) )
))
(declare-datatypes ((List!19160 0))(
  ( (Nil!19157) (Cons!19156 (h!20302 tuple2!13352) (t!27313 List!19160)) )
))
(declare-datatypes ((ListLongMap!12063 0))(
  ( (ListLongMap!12064 (toList!6047 List!19160)) )
))
(declare-fun lt!420278 () ListLongMap!12063)

(declare-fun lt!420280 () tuple2!13352)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5046 (ListLongMap!12063 (_ BitVec 64)) Bool)

(declare-fun +!2748 (ListLongMap!12063 tuple2!13352) ListLongMap!12063)

(assert (=> b!933156 (contains!5046 (+!2748 lt!420278 lt!420280) k0!1099)))

(declare-fun lt!420282 () Unit!31484)

(declare-fun lt!420279 () V!31777)

(declare-fun lt!420277 () (_ BitVec 64))

(declare-fun addStillContains!504 (ListLongMap!12063 (_ BitVec 64) V!31777 (_ BitVec 64)) Unit!31484)

(assert (=> b!933156 (= lt!420282 (addStillContains!504 lt!420278 lt!420277 lt!420279 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9573 0))(
  ( (ValueCellFull!9573 (v!12624 V!31777)) (EmptyCell!9573) )
))
(declare-datatypes ((array!56180 0))(
  ( (array!56181 (arr!27030 (Array (_ BitVec 32) ValueCell!9573)) (size!27490 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56180)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31777)

(declare-fun minValue!1173 () V!31777)

(declare-fun getCurrentListMap!3239 (array!56178 array!56180 (_ BitVec 32) (_ BitVec 32) V!31777 V!31777 (_ BitVec 32) Int) ListLongMap!12063)

(assert (=> b!933156 (= (getCurrentListMap!3239 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2748 (getCurrentListMap!3239 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420280))))

(assert (=> b!933156 (= lt!420280 (tuple2!13353 lt!420277 lt!420279))))

(declare-fun get!14230 (ValueCell!9573 V!31777) V!31777)

(declare-fun dynLambda!1587 (Int (_ BitVec 64)) V!31777)

(assert (=> b!933156 (= lt!420279 (get!14230 (select (arr!27030 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1587 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420281 () Unit!31484)

(declare-fun lemmaListMapRecursiveValidKeyArray!183 (array!56178 array!56180 (_ BitVec 32) (_ BitVec 32) V!31777 V!31777 (_ BitVec 32) Int) Unit!31484)

(assert (=> b!933156 (= lt!420281 (lemmaListMapRecursiveValidKeyArray!183 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!933157 () Bool)

(declare-fun e!524022 () Bool)

(assert (=> b!933157 (= e!524022 e!524025)))

(declare-fun res!628628 () Bool)

(assert (=> b!933157 (=> (not res!628628) (not e!524025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933157 (= res!628628 (validKeyInArray!0 lt!420277))))

(assert (=> b!933157 (= lt!420277 (select (arr!27029 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!628636 () Bool)

(declare-fun e!524027 () Bool)

(assert (=> start!79442 (=> (not res!628636) (not e!524027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79442 (= res!628636 (validMask!0 mask!1881))))

(assert (=> start!79442 e!524027))

(assert (=> start!79442 true))

(declare-fun tp_is_empty!20109 () Bool)

(assert (=> start!79442 tp_is_empty!20109))

(declare-fun e!524024 () Bool)

(declare-fun array_inv!21000 (array!56180) Bool)

(assert (=> start!79442 (and (array_inv!21000 _values!1231) e!524024)))

(assert (=> start!79442 tp!61247))

(declare-fun array_inv!21001 (array!56178) Bool)

(assert (=> start!79442 (array_inv!21001 _keys!1487)))

(declare-fun b!933158 () Bool)

(declare-fun e!524021 () Bool)

(assert (=> b!933158 (= e!524021 tp_is_empty!20109)))

(declare-fun mapNonEmpty!31923 () Bool)

(declare-fun mapRes!31923 () Bool)

(declare-fun tp!61248 () Bool)

(assert (=> mapNonEmpty!31923 (= mapRes!31923 (and tp!61248 e!524021))))

(declare-fun mapRest!31923 () (Array (_ BitVec 32) ValueCell!9573))

(declare-fun mapKey!31923 () (_ BitVec 32))

(declare-fun mapValue!31923 () ValueCell!9573)

(assert (=> mapNonEmpty!31923 (= (arr!27030 _values!1231) (store mapRest!31923 mapKey!31923 mapValue!31923))))

(declare-fun b!933159 () Bool)

(declare-fun res!628631 () Bool)

(assert (=> b!933159 (=> (not res!628631) (not e!524027))))

(assert (=> b!933159 (= res!628631 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19156))))

(declare-fun b!933160 () Bool)

(declare-fun res!628635 () Bool)

(assert (=> b!933160 (=> (not res!628635) (not e!524027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56178 (_ BitVec 32)) Bool)

(assert (=> b!933160 (= res!628635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!933161 () Bool)

(declare-fun e!524026 () Bool)

(assert (=> b!933161 (= e!524024 (and e!524026 mapRes!31923))))

(declare-fun condMapEmpty!31923 () Bool)

(declare-fun mapDefault!31923 () ValueCell!9573)

(assert (=> b!933161 (= condMapEmpty!31923 (= (arr!27030 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9573)) mapDefault!31923)))))

(declare-fun mapIsEmpty!31923 () Bool)

(assert (=> mapIsEmpty!31923 mapRes!31923))

(declare-fun b!933162 () Bool)

(declare-fun res!628632 () Bool)

(assert (=> b!933162 (=> (not res!628632) (not e!524027))))

(assert (=> b!933162 (= res!628632 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27489 _keys!1487))))))

(declare-fun b!933163 () Bool)

(assert (=> b!933163 (= e!524027 e!524022)))

(declare-fun res!628637 () Bool)

(assert (=> b!933163 (=> (not res!628637) (not e!524022))))

(assert (=> b!933163 (= res!628637 (contains!5046 lt!420278 k0!1099))))

(assert (=> b!933163 (= lt!420278 (getCurrentListMap!3239 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933164 () Bool)

(declare-fun res!628634 () Bool)

(assert (=> b!933164 (=> (not res!628634) (not e!524027))))

(assert (=> b!933164 (= res!628634 (and (= (size!27490 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27489 _keys!1487) (size!27490 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!933165 () Bool)

(declare-fun res!628633 () Bool)

(assert (=> b!933165 (=> (not res!628633) (not e!524022))))

(assert (=> b!933165 (= res!628633 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!933166 () Bool)

(declare-fun res!628629 () Bool)

(assert (=> b!933166 (=> (not res!628629) (not e!524022))))

(assert (=> b!933166 (= res!628629 (validKeyInArray!0 k0!1099))))

(declare-fun b!933167 () Bool)

(assert (=> b!933167 (= e!524026 tp_is_empty!20109)))

(declare-fun b!933168 () Bool)

(declare-fun res!628630 () Bool)

(assert (=> b!933168 (=> (not res!628630) (not e!524022))))

(declare-fun v!791 () V!31777)

(declare-fun apply!830 (ListLongMap!12063 (_ BitVec 64)) V!31777)

(assert (=> b!933168 (= res!628630 (= (apply!830 lt!420278 k0!1099) v!791))))

(assert (= (and start!79442 res!628636) b!933164))

(assert (= (and b!933164 res!628634) b!933160))

(assert (= (and b!933160 res!628635) b!933159))

(assert (= (and b!933159 res!628631) b!933162))

(assert (= (and b!933162 res!628632) b!933163))

(assert (= (and b!933163 res!628637) b!933168))

(assert (= (and b!933168 res!628630) b!933165))

(assert (= (and b!933165 res!628633) b!933166))

(assert (= (and b!933166 res!628629) b!933157))

(assert (= (and b!933157 res!628628) b!933156))

(assert (= (and b!933161 condMapEmpty!31923) mapIsEmpty!31923))

(assert (= (and b!933161 (not condMapEmpty!31923)) mapNonEmpty!31923))

(get-info :version)

(assert (= (and mapNonEmpty!31923 ((_ is ValueCellFull!9573) mapValue!31923)) b!933158))

(assert (= (and b!933161 ((_ is ValueCellFull!9573) mapDefault!31923)) b!933167))

(assert (= start!79442 b!933161))

(declare-fun b_lambda!13965 () Bool)

(assert (=> (not b_lambda!13965) (not b!933156)))

(declare-fun t!27311 () Bool)

(declare-fun tb!6003 () Bool)

(assert (=> (and start!79442 (= defaultEntry!1235 defaultEntry!1235) t!27311) tb!6003))

(declare-fun result!11823 () Bool)

(assert (=> tb!6003 (= result!11823 tp_is_empty!20109)))

(assert (=> b!933156 t!27311))

(declare-fun b_and!28781 () Bool)

(assert (= b_and!28779 (and (=> t!27311 result!11823) b_and!28781)))

(declare-fun m!867371 () Bool)

(assert (=> b!933157 m!867371))

(declare-fun m!867373 () Bool)

(assert (=> b!933157 m!867373))

(declare-fun m!867375 () Bool)

(assert (=> b!933156 m!867375))

(declare-fun m!867377 () Bool)

(assert (=> b!933156 m!867377))

(declare-fun m!867379 () Bool)

(assert (=> b!933156 m!867379))

(declare-fun m!867381 () Bool)

(assert (=> b!933156 m!867381))

(assert (=> b!933156 m!867377))

(declare-fun m!867383 () Bool)

(assert (=> b!933156 m!867383))

(assert (=> b!933156 m!867375))

(assert (=> b!933156 m!867381))

(declare-fun m!867385 () Bool)

(assert (=> b!933156 m!867385))

(declare-fun m!867387 () Bool)

(assert (=> b!933156 m!867387))

(declare-fun m!867389 () Bool)

(assert (=> b!933156 m!867389))

(declare-fun m!867391 () Bool)

(assert (=> b!933156 m!867391))

(declare-fun m!867393 () Bool)

(assert (=> b!933156 m!867393))

(declare-fun m!867395 () Bool)

(assert (=> b!933156 m!867395))

(assert (=> b!933156 m!867389))

(declare-fun m!867397 () Bool)

(assert (=> b!933156 m!867397))

(declare-fun m!867399 () Bool)

(assert (=> b!933168 m!867399))

(declare-fun m!867401 () Bool)

(assert (=> mapNonEmpty!31923 m!867401))

(declare-fun m!867403 () Bool)

(assert (=> b!933160 m!867403))

(declare-fun m!867405 () Bool)

(assert (=> b!933159 m!867405))

(declare-fun m!867407 () Bool)

(assert (=> b!933166 m!867407))

(declare-fun m!867409 () Bool)

(assert (=> start!79442 m!867409))

(declare-fun m!867411 () Bool)

(assert (=> start!79442 m!867411))

(declare-fun m!867413 () Bool)

(assert (=> start!79442 m!867413))

(declare-fun m!867415 () Bool)

(assert (=> b!933163 m!867415))

(declare-fun m!867417 () Bool)

(assert (=> b!933163 m!867417))

(check-sat b_and!28781 tp_is_empty!20109 (not b!933156) (not b!933163) (not b!933168) (not b!933160) (not mapNonEmpty!31923) (not b!933166) (not start!79442) (not b_lambda!13965) (not b_next!17601) (not b!933157) (not b!933159))
(check-sat b_and!28781 (not b_next!17601))
