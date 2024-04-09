; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79664 () Bool)

(assert start!79664)

(declare-fun b_free!17685 () Bool)

(declare-fun b_next!17685 () Bool)

(assert (=> start!79664 (= b_free!17685 (not b_next!17685))))

(declare-fun tp!61512 () Bool)

(declare-fun b_and!28979 () Bool)

(assert (=> start!79664 (= tp!61512 b_and!28979)))

(declare-fun b!935951 () Bool)

(declare-fun res!630362 () Bool)

(declare-fun e!525577 () Bool)

(assert (=> b!935951 (=> (not res!630362) (not e!525577))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!935951 (= res!630362 (validKeyInArray!0 k0!1099))))

(declare-fun b!935952 () Bool)

(declare-fun e!525572 () Bool)

(declare-fun tp_is_empty!20193 () Bool)

(assert (=> b!935952 (= e!525572 tp_is_empty!20193)))

(declare-fun b!935953 () Bool)

(declare-fun res!630364 () Bool)

(declare-fun e!525573 () Bool)

(assert (=> b!935953 (=> (not res!630364) (not e!525573))))

(declare-datatypes ((array!56350 0))(
  ( (array!56351 (arr!27111 (Array (_ BitVec 32) (_ BitVec 64))) (size!27571 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56350)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31889 0))(
  ( (V!31890 (val!10147 Int)) )
))
(declare-datatypes ((ValueCell!9615 0))(
  ( (ValueCellFull!9615 (v!12672 V!31889)) (EmptyCell!9615) )
))
(declare-datatypes ((array!56352 0))(
  ( (array!56353 (arr!27112 (Array (_ BitVec 32) ValueCell!9615)) (size!27572 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56352)

(assert (=> b!935953 (= res!630364 (and (= (size!27572 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27571 _keys!1487) (size!27572 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!935954 () Bool)

(declare-fun e!525575 () Bool)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!935954 (= e!525575 (not (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27572 _values!1231))))))

(declare-fun lt!421947 () (_ BitVec 64))

(assert (=> b!935954 (not (= lt!421947 k0!1099))))

(declare-datatypes ((Unit!31570 0))(
  ( (Unit!31571) )
))
(declare-fun lt!421951 () Unit!31570)

(declare-datatypes ((List!19232 0))(
  ( (Nil!19229) (Cons!19228 (h!20374 (_ BitVec 64)) (t!27469 List!19232)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56350 (_ BitVec 64) (_ BitVec 32) List!19232) Unit!31570)

(assert (=> b!935954 (= lt!421951 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19229))))

(declare-fun e!525571 () Bool)

(assert (=> b!935954 e!525571))

(declare-fun c!97277 () Bool)

(assert (=> b!935954 (= c!97277 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!421948 () Unit!31570)

(declare-fun zeroValue!1173 () V!31889)

(declare-fun minValue!1173 () V!31889)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!294 (array!56350 array!56352 (_ BitVec 32) (_ BitVec 32) V!31889 V!31889 (_ BitVec 64) (_ BitVec 32) Int) Unit!31570)

(assert (=> b!935954 (= lt!421948 (lemmaListMapContainsThenArrayContainsFrom!294 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56350 (_ BitVec 32) List!19232) Bool)

(assert (=> b!935954 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19229)))

(declare-fun lt!421950 () Unit!31570)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56350 (_ BitVec 32) (_ BitVec 32)) Unit!31570)

(assert (=> b!935954 (= lt!421950 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13424 0))(
  ( (tuple2!13425 (_1!6722 (_ BitVec 64)) (_2!6722 V!31889)) )
))
(declare-datatypes ((List!19233 0))(
  ( (Nil!19230) (Cons!19229 (h!20375 tuple2!13424) (t!27470 List!19233)) )
))
(declare-datatypes ((ListLongMap!12135 0))(
  ( (ListLongMap!12136 (toList!6083 List!19233)) )
))
(declare-fun lt!421954 () ListLongMap!12135)

(declare-fun lt!421953 () tuple2!13424)

(declare-fun contains!5095 (ListLongMap!12135 (_ BitVec 64)) Bool)

(declare-fun +!2781 (ListLongMap!12135 tuple2!13424) ListLongMap!12135)

(assert (=> b!935954 (contains!5095 (+!2781 lt!421954 lt!421953) k0!1099)))

(declare-fun lt!421952 () Unit!31570)

(declare-fun lt!421949 () V!31889)

(declare-fun addStillContains!537 (ListLongMap!12135 (_ BitVec 64) V!31889 (_ BitVec 64)) Unit!31570)

(assert (=> b!935954 (= lt!421952 (addStillContains!537 lt!421954 lt!421947 lt!421949 k0!1099))))

(declare-fun getCurrentListMap!3274 (array!56350 array!56352 (_ BitVec 32) (_ BitVec 32) V!31889 V!31889 (_ BitVec 32) Int) ListLongMap!12135)

(assert (=> b!935954 (= (getCurrentListMap!3274 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2781 (getCurrentListMap!3274 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421953))))

(assert (=> b!935954 (= lt!421953 (tuple2!13425 lt!421947 lt!421949))))

(declare-fun get!14303 (ValueCell!9615 V!31889) V!31889)

(declare-fun dynLambda!1620 (Int (_ BitVec 64)) V!31889)

(assert (=> b!935954 (= lt!421949 (get!14303 (select (arr!27112 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1620 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421946 () Unit!31570)

(declare-fun lemmaListMapRecursiveValidKeyArray!216 (array!56350 array!56352 (_ BitVec 32) (_ BitVec 32) V!31889 V!31889 (_ BitVec 32) Int) Unit!31570)

(assert (=> b!935954 (= lt!421946 (lemmaListMapRecursiveValidKeyArray!216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!935955 () Bool)

(declare-fun res!630368 () Bool)

(assert (=> b!935955 (=> (not res!630368) (not e!525577))))

(assert (=> b!935955 (= res!630368 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!935956 () Bool)

(declare-fun res!630363 () Bool)

(assert (=> b!935956 (=> (not res!630363) (not e!525573))))

(assert (=> b!935956 (= res!630363 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27571 _keys!1487))))))

(declare-fun b!935957 () Bool)

(declare-fun e!525578 () Bool)

(assert (=> b!935957 (= e!525578 tp_is_empty!20193)))

(declare-fun b!935958 () Bool)

(declare-fun res!630359 () Bool)

(assert (=> b!935958 (=> (not res!630359) (not e!525573))))

(assert (=> b!935958 (= res!630359 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19229))))

(declare-fun b!935959 () Bool)

(declare-fun arrayContainsKey!0 (array!56350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!935959 (= e!525571 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun mapNonEmpty!32061 () Bool)

(declare-fun mapRes!32061 () Bool)

(declare-fun tp!61511 () Bool)

(assert (=> mapNonEmpty!32061 (= mapRes!32061 (and tp!61511 e!525578))))

(declare-fun mapRest!32061 () (Array (_ BitVec 32) ValueCell!9615))

(declare-fun mapValue!32061 () ValueCell!9615)

(declare-fun mapKey!32061 () (_ BitVec 32))

(assert (=> mapNonEmpty!32061 (= (arr!27112 _values!1231) (store mapRest!32061 mapKey!32061 mapValue!32061))))

(declare-fun b!935960 () Bool)

(declare-fun e!525576 () Bool)

(assert (=> b!935960 (= e!525576 (and e!525572 mapRes!32061))))

(declare-fun condMapEmpty!32061 () Bool)

(declare-fun mapDefault!32061 () ValueCell!9615)

(assert (=> b!935960 (= condMapEmpty!32061 (= (arr!27112 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9615)) mapDefault!32061)))))

(declare-fun b!935961 () Bool)

(assert (=> b!935961 (= e!525571 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!935963 () Bool)

(assert (=> b!935963 (= e!525573 e!525577)))

(declare-fun res!630361 () Bool)

(assert (=> b!935963 (=> (not res!630361) (not e!525577))))

(assert (=> b!935963 (= res!630361 (contains!5095 lt!421954 k0!1099))))

(assert (=> b!935963 (= lt!421954 (getCurrentListMap!3274 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!935964 () Bool)

(declare-fun res!630365 () Bool)

(assert (=> b!935964 (=> (not res!630365) (not e!525577))))

(declare-fun v!791 () V!31889)

(declare-fun apply!861 (ListLongMap!12135 (_ BitVec 64)) V!31889)

(assert (=> b!935964 (= res!630365 (= (apply!861 lt!421954 k0!1099) v!791))))

(declare-fun b!935965 () Bool)

(declare-fun res!630360 () Bool)

(assert (=> b!935965 (=> (not res!630360) (not e!525573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56350 (_ BitVec 32)) Bool)

(assert (=> b!935965 (= res!630360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!32061 () Bool)

(assert (=> mapIsEmpty!32061 mapRes!32061))

(declare-fun b!935962 () Bool)

(assert (=> b!935962 (= e!525577 e!525575)))

(declare-fun res!630367 () Bool)

(assert (=> b!935962 (=> (not res!630367) (not e!525575))))

(assert (=> b!935962 (= res!630367 (validKeyInArray!0 lt!421947))))

(assert (=> b!935962 (= lt!421947 (select (arr!27111 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!630366 () Bool)

(assert (=> start!79664 (=> (not res!630366) (not e!525573))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79664 (= res!630366 (validMask!0 mask!1881))))

(assert (=> start!79664 e!525573))

(assert (=> start!79664 true))

(assert (=> start!79664 tp_is_empty!20193))

(declare-fun array_inv!21052 (array!56352) Bool)

(assert (=> start!79664 (and (array_inv!21052 _values!1231) e!525576)))

(assert (=> start!79664 tp!61512))

(declare-fun array_inv!21053 (array!56350) Bool)

(assert (=> start!79664 (array_inv!21053 _keys!1487)))

(assert (= (and start!79664 res!630366) b!935953))

(assert (= (and b!935953 res!630364) b!935965))

(assert (= (and b!935965 res!630360) b!935958))

(assert (= (and b!935958 res!630359) b!935956))

(assert (= (and b!935956 res!630363) b!935963))

(assert (= (and b!935963 res!630361) b!935964))

(assert (= (and b!935964 res!630365) b!935955))

(assert (= (and b!935955 res!630368) b!935951))

(assert (= (and b!935951 res!630362) b!935962))

(assert (= (and b!935962 res!630367) b!935954))

(assert (= (and b!935954 c!97277) b!935959))

(assert (= (and b!935954 (not c!97277)) b!935961))

(assert (= (and b!935960 condMapEmpty!32061) mapIsEmpty!32061))

(assert (= (and b!935960 (not condMapEmpty!32061)) mapNonEmpty!32061))

(get-info :version)

(assert (= (and mapNonEmpty!32061 ((_ is ValueCellFull!9615) mapValue!32061)) b!935957))

(assert (= (and b!935960 ((_ is ValueCellFull!9615) mapDefault!32061)) b!935952))

(assert (= start!79664 b!935960))

(declare-fun b_lambda!14121 () Bool)

(assert (=> (not b_lambda!14121) (not b!935954)))

(declare-fun t!27468 () Bool)

(declare-fun tb!6087 () Bool)

(assert (=> (and start!79664 (= defaultEntry!1235 defaultEntry!1235) t!27468) tb!6087))

(declare-fun result!11999 () Bool)

(assert (=> tb!6087 (= result!11999 tp_is_empty!20193)))

(assert (=> b!935954 t!27468))

(declare-fun b_and!28981 () Bool)

(assert (= b_and!28979 (and (=> t!27468 result!11999) b_and!28981)))

(declare-fun m!870611 () Bool)

(assert (=> b!935963 m!870611))

(declare-fun m!870613 () Bool)

(assert (=> b!935963 m!870613))

(declare-fun m!870615 () Bool)

(assert (=> start!79664 m!870615))

(declare-fun m!870617 () Bool)

(assert (=> start!79664 m!870617))

(declare-fun m!870619 () Bool)

(assert (=> start!79664 m!870619))

(declare-fun m!870621 () Bool)

(assert (=> b!935951 m!870621))

(declare-fun m!870623 () Bool)

(assert (=> b!935958 m!870623))

(declare-fun m!870625 () Bool)

(assert (=> b!935964 m!870625))

(declare-fun m!870627 () Bool)

(assert (=> b!935954 m!870627))

(assert (=> b!935954 m!870627))

(declare-fun m!870629 () Bool)

(assert (=> b!935954 m!870629))

(declare-fun m!870631 () Bool)

(assert (=> b!935954 m!870631))

(declare-fun m!870633 () Bool)

(assert (=> b!935954 m!870633))

(declare-fun m!870635 () Bool)

(assert (=> b!935954 m!870635))

(declare-fun m!870637 () Bool)

(assert (=> b!935954 m!870637))

(assert (=> b!935954 m!870635))

(assert (=> b!935954 m!870637))

(declare-fun m!870639 () Bool)

(assert (=> b!935954 m!870639))

(declare-fun m!870641 () Bool)

(assert (=> b!935954 m!870641))

(declare-fun m!870643 () Bool)

(assert (=> b!935954 m!870643))

(declare-fun m!870645 () Bool)

(assert (=> b!935954 m!870645))

(declare-fun m!870647 () Bool)

(assert (=> b!935954 m!870647))

(declare-fun m!870649 () Bool)

(assert (=> b!935954 m!870649))

(declare-fun m!870651 () Bool)

(assert (=> b!935954 m!870651))

(assert (=> b!935954 m!870647))

(declare-fun m!870653 () Bool)

(assert (=> b!935954 m!870653))

(declare-fun m!870655 () Bool)

(assert (=> b!935965 m!870655))

(declare-fun m!870657 () Bool)

(assert (=> b!935959 m!870657))

(declare-fun m!870659 () Bool)

(assert (=> mapNonEmpty!32061 m!870659))

(declare-fun m!870661 () Bool)

(assert (=> b!935962 m!870661))

(declare-fun m!870663 () Bool)

(assert (=> b!935962 m!870663))

(check-sat (not mapNonEmpty!32061) (not start!79664) tp_is_empty!20193 (not b!935962) (not b!935963) b_and!28981 (not b!935964) (not b_next!17685) (not b!935951) (not b!935954) (not b_lambda!14121) (not b!935965) (not b!935959) (not b!935958))
(check-sat b_and!28981 (not b_next!17685))
