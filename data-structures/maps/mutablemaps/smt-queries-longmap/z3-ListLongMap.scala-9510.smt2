; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112872 () Bool)

(assert start!112872)

(declare-fun b_free!31065 () Bool)

(declare-fun b_next!31065 () Bool)

(assert (=> start!112872 (= b_free!31065 (not b_next!31065))))

(declare-fun tp!108846 () Bool)

(declare-fun b_and!50093 () Bool)

(assert (=> start!112872 (= tp!108846 b_and!50093)))

(declare-fun b!1338140 () Bool)

(declare-fun res!887995 () Bool)

(declare-fun e!761962 () Bool)

(assert (=> b!1338140 (=> (not res!887995) (not e!761962))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90785 0))(
  ( (array!90786 (arr!43850 (Array (_ BitVec 32) (_ BitVec 64))) (size!44401 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90785)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1338140 (= res!887995 (not (= (select (arr!43850 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1338141 () Bool)

(declare-fun e!761964 () Bool)

(declare-fun tp_is_empty!36975 () Bool)

(assert (=> b!1338141 (= e!761964 tp_is_empty!36975)))

(declare-fun b!1338142 () Bool)

(declare-fun res!887998 () Bool)

(assert (=> b!1338142 (=> (not res!887998) (not e!761962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1338142 (= res!887998 (not (validKeyInArray!0 (select (arr!43850 _keys!1590) from!1980))))))

(declare-fun b!1338143 () Bool)

(declare-fun res!887996 () Bool)

(assert (=> b!1338143 (=> (not res!887996) (not e!761962))))

(declare-datatypes ((V!54403 0))(
  ( (V!54404 (val!18562 Int)) )
))
(declare-datatypes ((ValueCell!17589 0))(
  ( (ValueCellFull!17589 (v!21205 V!54403)) (EmptyCell!17589) )
))
(declare-datatypes ((array!90787 0))(
  ( (array!90788 (arr!43851 (Array (_ BitVec 32) ValueCell!17589)) (size!44402 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90787)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54403)

(declare-fun zeroValue!1262 () V!54403)

(declare-datatypes ((tuple2!24094 0))(
  ( (tuple2!24095 (_1!12057 (_ BitVec 64)) (_2!12057 V!54403)) )
))
(declare-datatypes ((List!31260 0))(
  ( (Nil!31257) (Cons!31256 (h!32465 tuple2!24094) (t!45597 List!31260)) )
))
(declare-datatypes ((ListLongMap!21763 0))(
  ( (ListLongMap!21764 (toList!10897 List!31260)) )
))
(declare-fun contains!9004 (ListLongMap!21763 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5801 (array!90785 array!90787 (_ BitVec 32) (_ BitVec 32) V!54403 V!54403 (_ BitVec 32) Int) ListLongMap!21763)

(assert (=> b!1338143 (= res!887996 (contains!9004 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1338144 () Bool)

(assert (=> b!1338144 (= e!761962 (not (contains!9004 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) k0!1153)))))

(declare-fun b!1338145 () Bool)

(declare-fun res!887999 () Bool)

(assert (=> b!1338145 (=> (not res!887999) (not e!761962))))

(declare-datatypes ((List!31261 0))(
  ( (Nil!31258) (Cons!31257 (h!32466 (_ BitVec 64)) (t!45598 List!31261)) )
))
(declare-fun arrayNoDuplicates!0 (array!90785 (_ BitVec 32) List!31261) Bool)

(assert (=> b!1338145 (= res!887999 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31258))))

(declare-fun mapNonEmpty!57150 () Bool)

(declare-fun mapRes!57150 () Bool)

(declare-fun tp!108847 () Bool)

(assert (=> mapNonEmpty!57150 (= mapRes!57150 (and tp!108847 e!761964))))

(declare-fun mapValue!57150 () ValueCell!17589)

(declare-fun mapKey!57150 () (_ BitVec 32))

(declare-fun mapRest!57150 () (Array (_ BitVec 32) ValueCell!17589))

(assert (=> mapNonEmpty!57150 (= (arr!43851 _values!1320) (store mapRest!57150 mapKey!57150 mapValue!57150))))

(declare-fun res!887993 () Bool)

(assert (=> start!112872 (=> (not res!887993) (not e!761962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112872 (= res!887993 (validMask!0 mask!1998))))

(assert (=> start!112872 e!761962))

(declare-fun e!761963 () Bool)

(declare-fun array_inv!32995 (array!90787) Bool)

(assert (=> start!112872 (and (array_inv!32995 _values!1320) e!761963)))

(assert (=> start!112872 true))

(declare-fun array_inv!32996 (array!90785) Bool)

(assert (=> start!112872 (array_inv!32996 _keys!1590)))

(assert (=> start!112872 tp!108846))

(assert (=> start!112872 tp_is_empty!36975))

(declare-fun b!1338146 () Bool)

(declare-fun res!887994 () Bool)

(assert (=> b!1338146 (=> (not res!887994) (not e!761962))))

(assert (=> b!1338146 (= res!887994 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44401 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!57150 () Bool)

(assert (=> mapIsEmpty!57150 mapRes!57150))

(declare-fun b!1338147 () Bool)

(declare-fun e!761960 () Bool)

(assert (=> b!1338147 (= e!761960 tp_is_empty!36975)))

(declare-fun b!1338148 () Bool)

(declare-fun res!887997 () Bool)

(assert (=> b!1338148 (=> (not res!887997) (not e!761962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90785 (_ BitVec 32)) Bool)

(assert (=> b!1338148 (= res!887997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1338149 () Bool)

(declare-fun res!888000 () Bool)

(assert (=> b!1338149 (=> (not res!888000) (not e!761962))))

(assert (=> b!1338149 (= res!888000 (and (= (size!44402 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44401 _keys!1590) (size!44402 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1338150 () Bool)

(assert (=> b!1338150 (= e!761963 (and e!761960 mapRes!57150))))

(declare-fun condMapEmpty!57150 () Bool)

(declare-fun mapDefault!57150 () ValueCell!17589)

(assert (=> b!1338150 (= condMapEmpty!57150 (= (arr!43851 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17589)) mapDefault!57150)))))

(assert (= (and start!112872 res!887993) b!1338149))

(assert (= (and b!1338149 res!888000) b!1338148))

(assert (= (and b!1338148 res!887997) b!1338145))

(assert (= (and b!1338145 res!887999) b!1338146))

(assert (= (and b!1338146 res!887994) b!1338143))

(assert (= (and b!1338143 res!887996) b!1338140))

(assert (= (and b!1338140 res!887995) b!1338142))

(assert (= (and b!1338142 res!887998) b!1338144))

(assert (= (and b!1338150 condMapEmpty!57150) mapIsEmpty!57150))

(assert (= (and b!1338150 (not condMapEmpty!57150)) mapNonEmpty!57150))

(get-info :version)

(assert (= (and mapNonEmpty!57150 ((_ is ValueCellFull!17589) mapValue!57150)) b!1338141))

(assert (= (and b!1338150 ((_ is ValueCellFull!17589) mapDefault!57150)) b!1338147))

(assert (= start!112872 b!1338150))

(declare-fun m!1226311 () Bool)

(assert (=> b!1338140 m!1226311))

(declare-fun m!1226313 () Bool)

(assert (=> mapNonEmpty!57150 m!1226313))

(declare-fun m!1226315 () Bool)

(assert (=> b!1338145 m!1226315))

(declare-fun m!1226317 () Bool)

(assert (=> start!112872 m!1226317))

(declare-fun m!1226319 () Bool)

(assert (=> start!112872 m!1226319))

(declare-fun m!1226321 () Bool)

(assert (=> start!112872 m!1226321))

(declare-fun m!1226323 () Bool)

(assert (=> b!1338148 m!1226323))

(declare-fun m!1226325 () Bool)

(assert (=> b!1338143 m!1226325))

(assert (=> b!1338143 m!1226325))

(declare-fun m!1226327 () Bool)

(assert (=> b!1338143 m!1226327))

(declare-fun m!1226329 () Bool)

(assert (=> b!1338144 m!1226329))

(assert (=> b!1338144 m!1226329))

(declare-fun m!1226331 () Bool)

(assert (=> b!1338144 m!1226331))

(assert (=> b!1338142 m!1226311))

(assert (=> b!1338142 m!1226311))

(declare-fun m!1226333 () Bool)

(assert (=> b!1338142 m!1226333))

(check-sat (not mapNonEmpty!57150) tp_is_empty!36975 (not b_next!31065) (not b!1338144) (not start!112872) (not b!1338143) b_and!50093 (not b!1338148) (not b!1338142) (not b!1338145))
(check-sat b_and!50093 (not b_next!31065))
(get-model)

(declare-fun d!143833 () Bool)

(assert (=> d!143833 (= (validKeyInArray!0 (select (arr!43850 _keys!1590) from!1980)) (and (not (= (select (arr!43850 _keys!1590) from!1980) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43850 _keys!1590) from!1980) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1338142 d!143833))

(declare-fun d!143835 () Bool)

(declare-fun res!888031 () Bool)

(declare-fun e!761991 () Bool)

(assert (=> d!143835 (=> res!888031 e!761991)))

(assert (=> d!143835 (= res!888031 (bvsge #b00000000000000000000000000000000 (size!44401 _keys!1590)))))

(assert (=> d!143835 (= (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31258) e!761991)))

(declare-fun b!1338194 () Bool)

(declare-fun e!761989 () Bool)

(declare-fun call!64984 () Bool)

(assert (=> b!1338194 (= e!761989 call!64984)))

(declare-fun b!1338195 () Bool)

(assert (=> b!1338195 (= e!761989 call!64984)))

(declare-fun b!1338196 () Bool)

(declare-fun e!761988 () Bool)

(assert (=> b!1338196 (= e!761991 e!761988)))

(declare-fun res!888033 () Bool)

(assert (=> b!1338196 (=> (not res!888033) (not e!761988))))

(declare-fun e!761990 () Bool)

(assert (=> b!1338196 (= res!888033 (not e!761990))))

(declare-fun res!888032 () Bool)

(assert (=> b!1338196 (=> (not res!888032) (not e!761990))))

(assert (=> b!1338196 (= res!888032 (validKeyInArray!0 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1338197 () Bool)

(declare-fun contains!9006 (List!31261 (_ BitVec 64)) Bool)

(assert (=> b!1338197 (= e!761990 (contains!9006 Nil!31258 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun bm!64981 () Bool)

(declare-fun c!126150 () Bool)

(assert (=> bm!64981 (= call!64984 (arrayNoDuplicates!0 _keys!1590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126150 (Cons!31257 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) Nil!31258) Nil!31258)))))

(declare-fun b!1338198 () Bool)

(assert (=> b!1338198 (= e!761988 e!761989)))

(assert (=> b!1338198 (= c!126150 (validKeyInArray!0 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000)))))

(assert (= (and d!143835 (not res!888031)) b!1338196))

(assert (= (and b!1338196 res!888032) b!1338197))

(assert (= (and b!1338196 res!888033) b!1338198))

(assert (= (and b!1338198 c!126150) b!1338195))

(assert (= (and b!1338198 (not c!126150)) b!1338194))

(assert (= (or b!1338195 b!1338194) bm!64981))

(declare-fun m!1226359 () Bool)

(assert (=> b!1338196 m!1226359))

(assert (=> b!1338196 m!1226359))

(declare-fun m!1226361 () Bool)

(assert (=> b!1338196 m!1226361))

(assert (=> b!1338197 m!1226359))

(assert (=> b!1338197 m!1226359))

(declare-fun m!1226363 () Bool)

(assert (=> b!1338197 m!1226363))

(assert (=> bm!64981 m!1226359))

(declare-fun m!1226365 () Bool)

(assert (=> bm!64981 m!1226365))

(assert (=> b!1338198 m!1226359))

(assert (=> b!1338198 m!1226359))

(assert (=> b!1338198 m!1226361))

(assert (=> b!1338145 d!143835))

(declare-fun d!143837 () Bool)

(assert (=> d!143837 (= (validMask!0 mask!1998) (and (or (= mask!1998 #b00000000000000000000000000000111) (= mask!1998 #b00000000000000000000000000001111) (= mask!1998 #b00000000000000000000000000011111) (= mask!1998 #b00000000000000000000000000111111) (= mask!1998 #b00000000000000000000000001111111) (= mask!1998 #b00000000000000000000000011111111) (= mask!1998 #b00000000000000000000000111111111) (= mask!1998 #b00000000000000000000001111111111) (= mask!1998 #b00000000000000000000011111111111) (= mask!1998 #b00000000000000000000111111111111) (= mask!1998 #b00000000000000000001111111111111) (= mask!1998 #b00000000000000000011111111111111) (= mask!1998 #b00000000000000000111111111111111) (= mask!1998 #b00000000000000001111111111111111) (= mask!1998 #b00000000000000011111111111111111) (= mask!1998 #b00000000000000111111111111111111) (= mask!1998 #b00000000000001111111111111111111) (= mask!1998 #b00000000000011111111111111111111) (= mask!1998 #b00000000000111111111111111111111) (= mask!1998 #b00000000001111111111111111111111) (= mask!1998 #b00000000011111111111111111111111) (= mask!1998 #b00000000111111111111111111111111) (= mask!1998 #b00000001111111111111111111111111) (= mask!1998 #b00000011111111111111111111111111) (= mask!1998 #b00000111111111111111111111111111) (= mask!1998 #b00001111111111111111111111111111) (= mask!1998 #b00011111111111111111111111111111) (= mask!1998 #b00111111111111111111111111111111)) (bvsle mask!1998 #b00111111111111111111111111111111)))))

(assert (=> start!112872 d!143837))

(declare-fun d!143839 () Bool)

(assert (=> d!143839 (= (array_inv!32995 _values!1320) (bvsge (size!44402 _values!1320) #b00000000000000000000000000000000))))

(assert (=> start!112872 d!143839))

(declare-fun d!143841 () Bool)

(assert (=> d!143841 (= (array_inv!32996 _keys!1590) (bvsge (size!44401 _keys!1590) #b00000000000000000000000000000000))))

(assert (=> start!112872 d!143841))

(declare-fun d!143843 () Bool)

(declare-fun e!761997 () Bool)

(assert (=> d!143843 e!761997))

(declare-fun res!888036 () Bool)

(assert (=> d!143843 (=> res!888036 e!761997)))

(declare-fun lt!593463 () Bool)

(assert (=> d!143843 (= res!888036 (not lt!593463))))

(declare-fun lt!593461 () Bool)

(assert (=> d!143843 (= lt!593463 lt!593461)))

(declare-datatypes ((Unit!43899 0))(
  ( (Unit!43900) )
))
(declare-fun lt!593464 () Unit!43899)

(declare-fun e!761996 () Unit!43899)

(assert (=> d!143843 (= lt!593464 e!761996)))

(declare-fun c!126153 () Bool)

(assert (=> d!143843 (= c!126153 lt!593461)))

(declare-fun containsKey!739 (List!31260 (_ BitVec 64)) Bool)

(assert (=> d!143843 (= lt!593461 (containsKey!739 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(assert (=> d!143843 (= (contains!9004 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153) lt!593463)))

(declare-fun b!1338205 () Bool)

(declare-fun lt!593462 () Unit!43899)

(assert (=> b!1338205 (= e!761996 lt!593462)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!484 (List!31260 (_ BitVec 64)) Unit!43899)

(assert (=> b!1338205 (= lt!593462 (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-datatypes ((Option!772 0))(
  ( (Some!771 (v!21207 V!54403)) (None!770) )
))
(declare-fun isDefined!524 (Option!772) Bool)

(declare-fun getValueByKey!721 (List!31260 (_ BitVec 64)) Option!772)

(assert (=> b!1338205 (isDefined!524 (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-fun b!1338206 () Bool)

(declare-fun Unit!43901 () Unit!43899)

(assert (=> b!1338206 (= e!761996 Unit!43901)))

(declare-fun b!1338207 () Bool)

(assert (=> b!1338207 (= e!761997 (isDefined!524 (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153)))))

(assert (= (and d!143843 c!126153) b!1338205))

(assert (= (and d!143843 (not c!126153)) b!1338206))

(assert (= (and d!143843 (not res!888036)) b!1338207))

(declare-fun m!1226367 () Bool)

(assert (=> d!143843 m!1226367))

(declare-fun m!1226369 () Bool)

(assert (=> b!1338205 m!1226369))

(declare-fun m!1226371 () Bool)

(assert (=> b!1338205 m!1226371))

(assert (=> b!1338205 m!1226371))

(declare-fun m!1226373 () Bool)

(assert (=> b!1338205 m!1226373))

(assert (=> b!1338207 m!1226371))

(assert (=> b!1338207 m!1226371))

(assert (=> b!1338207 m!1226373))

(assert (=> b!1338143 d!143843))

(declare-fun bm!64996 () Bool)

(declare-fun call!64999 () ListLongMap!21763)

(declare-fun call!65001 () ListLongMap!21763)

(assert (=> bm!64996 (= call!64999 call!65001)))

(declare-fun b!1338250 () Bool)

(declare-fun e!762025 () Unit!43899)

(declare-fun lt!593518 () Unit!43899)

(assert (=> b!1338250 (= e!762025 lt!593518)))

(declare-fun lt!593521 () ListLongMap!21763)

(declare-fun getCurrentListMapNoExtraKeys!6448 (array!90785 array!90787 (_ BitVec 32) (_ BitVec 32) V!54403 V!54403 (_ BitVec 32) Int) ListLongMap!21763)

(assert (=> b!1338250 (= lt!593521 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593522 () (_ BitVec 64))

(assert (=> b!1338250 (= lt!593522 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593525 () (_ BitVec 64))

(assert (=> b!1338250 (= lt!593525 (select (arr!43850 _keys!1590) from!1980))))

(declare-fun lt!593528 () Unit!43899)

(declare-fun addStillContains!1197 (ListLongMap!21763 (_ BitVec 64) V!54403 (_ BitVec 64)) Unit!43899)

(assert (=> b!1338250 (= lt!593528 (addStillContains!1197 lt!593521 lt!593522 zeroValue!1262 lt!593525))))

(declare-fun +!4725 (ListLongMap!21763 tuple2!24094) ListLongMap!21763)

(assert (=> b!1338250 (contains!9004 (+!4725 lt!593521 (tuple2!24095 lt!593522 zeroValue!1262)) lt!593525)))

(declare-fun lt!593523 () Unit!43899)

(assert (=> b!1338250 (= lt!593523 lt!593528)))

(declare-fun lt!593510 () ListLongMap!21763)

(assert (=> b!1338250 (= lt!593510 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593527 () (_ BitVec 64))

(assert (=> b!1338250 (= lt!593527 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593514 () (_ BitVec 64))

(assert (=> b!1338250 (= lt!593514 (select (arr!43850 _keys!1590) from!1980))))

(declare-fun lt!593511 () Unit!43899)

(declare-fun addApplyDifferent!574 (ListLongMap!21763 (_ BitVec 64) V!54403 (_ BitVec 64)) Unit!43899)

(assert (=> b!1338250 (= lt!593511 (addApplyDifferent!574 lt!593510 lt!593527 minValue!1262 lt!593514))))

(declare-fun apply!1071 (ListLongMap!21763 (_ BitVec 64)) V!54403)

(assert (=> b!1338250 (= (apply!1071 (+!4725 lt!593510 (tuple2!24095 lt!593527 minValue!1262)) lt!593514) (apply!1071 lt!593510 lt!593514))))

(declare-fun lt!593526 () Unit!43899)

(assert (=> b!1338250 (= lt!593526 lt!593511)))

(declare-fun lt!593512 () ListLongMap!21763)

(assert (=> b!1338250 (= lt!593512 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593509 () (_ BitVec 64))

(assert (=> b!1338250 (= lt!593509 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593513 () (_ BitVec 64))

(assert (=> b!1338250 (= lt!593513 (select (arr!43850 _keys!1590) from!1980))))

(declare-fun lt!593519 () Unit!43899)

(assert (=> b!1338250 (= lt!593519 (addApplyDifferent!574 lt!593512 lt!593509 zeroValue!1262 lt!593513))))

(assert (=> b!1338250 (= (apply!1071 (+!4725 lt!593512 (tuple2!24095 lt!593509 zeroValue!1262)) lt!593513) (apply!1071 lt!593512 lt!593513))))

(declare-fun lt!593517 () Unit!43899)

(assert (=> b!1338250 (= lt!593517 lt!593519)))

(declare-fun lt!593529 () ListLongMap!21763)

(assert (=> b!1338250 (= lt!593529 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593516 () (_ BitVec 64))

(assert (=> b!1338250 (= lt!593516 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593515 () (_ BitVec 64))

(assert (=> b!1338250 (= lt!593515 (select (arr!43850 _keys!1590) from!1980))))

(assert (=> b!1338250 (= lt!593518 (addApplyDifferent!574 lt!593529 lt!593516 minValue!1262 lt!593515))))

(assert (=> b!1338250 (= (apply!1071 (+!4725 lt!593529 (tuple2!24095 lt!593516 minValue!1262)) lt!593515) (apply!1071 lt!593529 lt!593515))))

(declare-fun b!1338251 () Bool)

(declare-fun res!888055 () Bool)

(declare-fun e!762031 () Bool)

(assert (=> b!1338251 (=> (not res!888055) (not e!762031))))

(declare-fun e!762035 () Bool)

(assert (=> b!1338251 (= res!888055 e!762035)))

(declare-fun c!126168 () Bool)

(assert (=> b!1338251 (= c!126168 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1338252 () Bool)

(declare-fun Unit!43902 () Unit!43899)

(assert (=> b!1338252 (= e!762025 Unit!43902)))

(declare-fun b!1338254 () Bool)

(declare-fun call!65005 () Bool)

(assert (=> b!1338254 (= e!762035 (not call!65005))))

(declare-fun b!1338255 () Bool)

(declare-fun e!762034 () Bool)

(declare-fun e!762029 () Bool)

(assert (=> b!1338255 (= e!762034 e!762029)))

(declare-fun res!888063 () Bool)

(declare-fun call!65004 () Bool)

(assert (=> b!1338255 (= res!888063 call!65004)))

(assert (=> b!1338255 (=> (not res!888063) (not e!762029))))

(declare-fun bm!64997 () Bool)

(declare-fun call!65003 () ListLongMap!21763)

(assert (=> bm!64997 (= call!65003 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun b!1338256 () Bool)

(declare-fun e!762028 () ListLongMap!21763)

(assert (=> b!1338256 (= e!762028 call!64999)))

(declare-fun lt!593530 () ListLongMap!21763)

(declare-fun b!1338257 () Bool)

(declare-fun e!762024 () Bool)

(declare-fun get!22175 (ValueCell!17589 V!54403) V!54403)

(declare-fun dynLambda!3762 (Int (_ BitVec 64)) V!54403)

(assert (=> b!1338257 (= e!762024 (= (apply!1071 lt!593530 (select (arr!43850 _keys!1590) from!1980)) (get!22175 (select (arr!43851 _values!1320) from!1980) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1338257 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44402 _values!1320)))))

(assert (=> b!1338257 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44401 _keys!1590)))))

(declare-fun b!1338258 () Bool)

(assert (=> b!1338258 (= e!762034 (not call!65004))))

(declare-fun b!1338259 () Bool)

(declare-fun e!762030 () Bool)

(assert (=> b!1338259 (= e!762035 e!762030)))

(declare-fun res!888062 () Bool)

(assert (=> b!1338259 (= res!888062 call!65005)))

(assert (=> b!1338259 (=> (not res!888062) (not e!762030))))

(declare-fun bm!64998 () Bool)

(declare-fun call!65000 () ListLongMap!21763)

(declare-fun call!65002 () ListLongMap!21763)

(assert (=> bm!64998 (= call!65000 call!65002)))

(declare-fun bm!64999 () Bool)

(assert (=> bm!64999 (= call!65001 call!65003)))

(declare-fun b!1338260 () Bool)

(declare-fun e!762026 () ListLongMap!21763)

(declare-fun e!762027 () ListLongMap!21763)

(assert (=> b!1338260 (= e!762026 e!762027)))

(declare-fun c!126170 () Bool)

(assert (=> b!1338260 (= c!126170 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1338261 () Bool)

(declare-fun e!762033 () Bool)

(assert (=> b!1338261 (= e!762033 e!762024)))

(declare-fun res!888059 () Bool)

(assert (=> b!1338261 (=> (not res!888059) (not e!762024))))

(assert (=> b!1338261 (= res!888059 (contains!9004 lt!593530 (select (arr!43850 _keys!1590) from!1980)))))

(assert (=> b!1338261 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44401 _keys!1590)))))

(declare-fun d!143845 () Bool)

(assert (=> d!143845 e!762031))

(declare-fun res!888061 () Bool)

(assert (=> d!143845 (=> (not res!888061) (not e!762031))))

(assert (=> d!143845 (= res!888061 (or (bvsge from!1980 (size!44401 _keys!1590)) (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44401 _keys!1590)))))))

(declare-fun lt!593520 () ListLongMap!21763)

(assert (=> d!143845 (= lt!593530 lt!593520)))

(declare-fun lt!593524 () Unit!43899)

(assert (=> d!143845 (= lt!593524 e!762025)))

(declare-fun c!126166 () Bool)

(declare-fun e!762036 () Bool)

(assert (=> d!143845 (= c!126166 e!762036)))

(declare-fun res!888057 () Bool)

(assert (=> d!143845 (=> (not res!888057) (not e!762036))))

(assert (=> d!143845 (= res!888057 (bvslt from!1980 (size!44401 _keys!1590)))))

(assert (=> d!143845 (= lt!593520 e!762026)))

(declare-fun c!126167 () Bool)

(assert (=> d!143845 (= c!126167 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143845 (validMask!0 mask!1998)))

(assert (=> d!143845 (= (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) lt!593530)))

(declare-fun b!1338253 () Bool)

(assert (=> b!1338253 (= e!762029 (= (apply!1071 lt!593530 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1262))))

(declare-fun b!1338262 () Bool)

(assert (=> b!1338262 (= e!762027 call!65000)))

(declare-fun b!1338263 () Bool)

(assert (=> b!1338263 (= e!762030 (= (apply!1071 lt!593530 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1262))))

(declare-fun b!1338264 () Bool)

(assert (=> b!1338264 (= e!762026 (+!4725 call!65002 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(declare-fun bm!65000 () Bool)

(assert (=> bm!65000 (= call!65002 (+!4725 (ite c!126167 call!65003 (ite c!126170 call!65001 call!64999)) (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1338265 () Bool)

(declare-fun e!762032 () Bool)

(assert (=> b!1338265 (= e!762032 (validKeyInArray!0 (select (arr!43850 _keys!1590) from!1980)))))

(declare-fun b!1338266 () Bool)

(assert (=> b!1338266 (= e!762031 e!762034)))

(declare-fun c!126169 () Bool)

(assert (=> b!1338266 (= c!126169 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1338267 () Bool)

(declare-fun c!126171 () Bool)

(assert (=> b!1338267 (= c!126171 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1338267 (= e!762027 e!762028)))

(declare-fun b!1338268 () Bool)

(declare-fun res!888056 () Bool)

(assert (=> b!1338268 (=> (not res!888056) (not e!762031))))

(assert (=> b!1338268 (= res!888056 e!762033)))

(declare-fun res!888060 () Bool)

(assert (=> b!1338268 (=> res!888060 e!762033)))

(assert (=> b!1338268 (= res!888060 (not e!762032))))

(declare-fun res!888058 () Bool)

(assert (=> b!1338268 (=> (not res!888058) (not e!762032))))

(assert (=> b!1338268 (= res!888058 (bvslt from!1980 (size!44401 _keys!1590)))))

(declare-fun bm!65001 () Bool)

(assert (=> bm!65001 (= call!65005 (contains!9004 lt!593530 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1338269 () Bool)

(assert (=> b!1338269 (= e!762036 (validKeyInArray!0 (select (arr!43850 _keys!1590) from!1980)))))

(declare-fun b!1338270 () Bool)

(assert (=> b!1338270 (= e!762028 call!65000)))

(declare-fun bm!65002 () Bool)

(assert (=> bm!65002 (= call!65004 (contains!9004 lt!593530 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!143845 c!126167) b!1338264))

(assert (= (and d!143845 (not c!126167)) b!1338260))

(assert (= (and b!1338260 c!126170) b!1338262))

(assert (= (and b!1338260 (not c!126170)) b!1338267))

(assert (= (and b!1338267 c!126171) b!1338270))

(assert (= (and b!1338267 (not c!126171)) b!1338256))

(assert (= (or b!1338270 b!1338256) bm!64996))

(assert (= (or b!1338262 bm!64996) bm!64999))

(assert (= (or b!1338262 b!1338270) bm!64998))

(assert (= (or b!1338264 bm!64999) bm!64997))

(assert (= (or b!1338264 bm!64998) bm!65000))

(assert (= (and d!143845 res!888057) b!1338269))

(assert (= (and d!143845 c!126166) b!1338250))

(assert (= (and d!143845 (not c!126166)) b!1338252))

(assert (= (and d!143845 res!888061) b!1338268))

(assert (= (and b!1338268 res!888058) b!1338265))

(assert (= (and b!1338268 (not res!888060)) b!1338261))

(assert (= (and b!1338261 res!888059) b!1338257))

(assert (= (and b!1338268 res!888056) b!1338251))

(assert (= (and b!1338251 c!126168) b!1338259))

(assert (= (and b!1338251 (not c!126168)) b!1338254))

(assert (= (and b!1338259 res!888062) b!1338263))

(assert (= (or b!1338259 b!1338254) bm!65001))

(assert (= (and b!1338251 res!888055) b!1338266))

(assert (= (and b!1338266 c!126169) b!1338255))

(assert (= (and b!1338266 (not c!126169)) b!1338258))

(assert (= (and b!1338255 res!888063) b!1338253))

(assert (= (or b!1338255 b!1338258) bm!65002))

(declare-fun b_lambda!24285 () Bool)

(assert (=> (not b_lambda!24285) (not b!1338257)))

(declare-fun t!45601 () Bool)

(declare-fun tb!12143 () Bool)

(assert (=> (and start!112872 (= defaultEntry!1323 defaultEntry!1323) t!45601) tb!12143))

(declare-fun result!25357 () Bool)

(assert (=> tb!12143 (= result!25357 tp_is_empty!36975)))

(assert (=> b!1338257 t!45601))

(declare-fun b_and!50097 () Bool)

(assert (= b_and!50093 (and (=> t!45601 result!25357) b_and!50097)))

(declare-fun m!1226375 () Bool)

(assert (=> b!1338264 m!1226375))

(declare-fun m!1226377 () Bool)

(assert (=> b!1338250 m!1226377))

(declare-fun m!1226379 () Bool)

(assert (=> b!1338250 m!1226379))

(declare-fun m!1226381 () Bool)

(assert (=> b!1338250 m!1226381))

(declare-fun m!1226383 () Bool)

(assert (=> b!1338250 m!1226383))

(declare-fun m!1226385 () Bool)

(assert (=> b!1338250 m!1226385))

(declare-fun m!1226387 () Bool)

(assert (=> b!1338250 m!1226387))

(declare-fun m!1226389 () Bool)

(assert (=> b!1338250 m!1226389))

(declare-fun m!1226391 () Bool)

(assert (=> b!1338250 m!1226391))

(declare-fun m!1226393 () Bool)

(assert (=> b!1338250 m!1226393))

(declare-fun m!1226395 () Bool)

(assert (=> b!1338250 m!1226395))

(declare-fun m!1226397 () Bool)

(assert (=> b!1338250 m!1226397))

(declare-fun m!1226399 () Bool)

(assert (=> b!1338250 m!1226399))

(declare-fun m!1226401 () Bool)

(assert (=> b!1338250 m!1226401))

(assert (=> b!1338250 m!1226397))

(assert (=> b!1338250 m!1226391))

(assert (=> b!1338250 m!1226385))

(declare-fun m!1226403 () Bool)

(assert (=> b!1338250 m!1226403))

(assert (=> b!1338250 m!1226387))

(declare-fun m!1226405 () Bool)

(assert (=> b!1338250 m!1226405))

(declare-fun m!1226407 () Bool)

(assert (=> b!1338250 m!1226407))

(assert (=> b!1338250 m!1226311))

(assert (=> bm!64997 m!1226407))

(assert (=> d!143845 m!1226317))

(assert (=> b!1338257 m!1226311))

(declare-fun m!1226409 () Bool)

(assert (=> b!1338257 m!1226409))

(declare-fun m!1226411 () Bool)

(assert (=> b!1338257 m!1226411))

(assert (=> b!1338257 m!1226311))

(declare-fun m!1226413 () Bool)

(assert (=> b!1338257 m!1226413))

(assert (=> b!1338257 m!1226413))

(assert (=> b!1338257 m!1226411))

(declare-fun m!1226415 () Bool)

(assert (=> b!1338257 m!1226415))

(declare-fun m!1226417 () Bool)

(assert (=> bm!65002 m!1226417))

(assert (=> b!1338265 m!1226311))

(assert (=> b!1338265 m!1226311))

(assert (=> b!1338265 m!1226333))

(assert (=> b!1338261 m!1226311))

(assert (=> b!1338261 m!1226311))

(declare-fun m!1226419 () Bool)

(assert (=> b!1338261 m!1226419))

(declare-fun m!1226421 () Bool)

(assert (=> b!1338253 m!1226421))

(declare-fun m!1226423 () Bool)

(assert (=> b!1338263 m!1226423))

(assert (=> b!1338269 m!1226311))

(assert (=> b!1338269 m!1226311))

(assert (=> b!1338269 m!1226333))

(declare-fun m!1226425 () Bool)

(assert (=> bm!65001 m!1226425))

(declare-fun m!1226427 () Bool)

(assert (=> bm!65000 m!1226427))

(assert (=> b!1338143 d!143845))

(declare-fun d!143847 () Bool)

(declare-fun e!762038 () Bool)

(assert (=> d!143847 e!762038))

(declare-fun res!888064 () Bool)

(assert (=> d!143847 (=> res!888064 e!762038)))

(declare-fun lt!593533 () Bool)

(assert (=> d!143847 (= res!888064 (not lt!593533))))

(declare-fun lt!593531 () Bool)

(assert (=> d!143847 (= lt!593533 lt!593531)))

(declare-fun lt!593534 () Unit!43899)

(declare-fun e!762037 () Unit!43899)

(assert (=> d!143847 (= lt!593534 e!762037)))

(declare-fun c!126172 () Bool)

(assert (=> d!143847 (= c!126172 lt!593531)))

(assert (=> d!143847 (= lt!593531 (containsKey!739 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(assert (=> d!143847 (= (contains!9004 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) k0!1153) lt!593533)))

(declare-fun b!1338273 () Bool)

(declare-fun lt!593532 () Unit!43899)

(assert (=> b!1338273 (= e!762037 lt!593532)))

(assert (=> b!1338273 (= lt!593532 (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(assert (=> b!1338273 (isDefined!524 (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(declare-fun b!1338274 () Bool)

(declare-fun Unit!43903 () Unit!43899)

(assert (=> b!1338274 (= e!762037 Unit!43903)))

(declare-fun b!1338275 () Bool)

(assert (=> b!1338275 (= e!762038 (isDefined!524 (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153)))))

(assert (= (and d!143847 c!126172) b!1338273))

(assert (= (and d!143847 (not c!126172)) b!1338274))

(assert (= (and d!143847 (not res!888064)) b!1338275))

(declare-fun m!1226429 () Bool)

(assert (=> d!143847 m!1226429))

(declare-fun m!1226431 () Bool)

(assert (=> b!1338273 m!1226431))

(declare-fun m!1226433 () Bool)

(assert (=> b!1338273 m!1226433))

(assert (=> b!1338273 m!1226433))

(declare-fun m!1226435 () Bool)

(assert (=> b!1338273 m!1226435))

(assert (=> b!1338275 m!1226433))

(assert (=> b!1338275 m!1226433))

(assert (=> b!1338275 m!1226435))

(assert (=> b!1338144 d!143847))

(declare-fun bm!65003 () Bool)

(declare-fun call!65006 () ListLongMap!21763)

(declare-fun call!65008 () ListLongMap!21763)

(assert (=> bm!65003 (= call!65006 call!65008)))

(declare-fun b!1338276 () Bool)

(declare-fun e!762040 () Unit!43899)

(declare-fun lt!593544 () Unit!43899)

(assert (=> b!1338276 (= e!762040 lt!593544)))

(declare-fun lt!593547 () ListLongMap!21763)

(assert (=> b!1338276 (= lt!593547 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!593548 () (_ BitVec 64))

(assert (=> b!1338276 (= lt!593548 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593551 () (_ BitVec 64))

(assert (=> b!1338276 (= lt!593551 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(declare-fun lt!593554 () Unit!43899)

(assert (=> b!1338276 (= lt!593554 (addStillContains!1197 lt!593547 lt!593548 zeroValue!1262 lt!593551))))

(assert (=> b!1338276 (contains!9004 (+!4725 lt!593547 (tuple2!24095 lt!593548 zeroValue!1262)) lt!593551)))

(declare-fun lt!593549 () Unit!43899)

(assert (=> b!1338276 (= lt!593549 lt!593554)))

(declare-fun lt!593536 () ListLongMap!21763)

(assert (=> b!1338276 (= lt!593536 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!593553 () (_ BitVec 64))

(assert (=> b!1338276 (= lt!593553 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593540 () (_ BitVec 64))

(assert (=> b!1338276 (= lt!593540 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(declare-fun lt!593537 () Unit!43899)

(assert (=> b!1338276 (= lt!593537 (addApplyDifferent!574 lt!593536 lt!593553 minValue!1262 lt!593540))))

(assert (=> b!1338276 (= (apply!1071 (+!4725 lt!593536 (tuple2!24095 lt!593553 minValue!1262)) lt!593540) (apply!1071 lt!593536 lt!593540))))

(declare-fun lt!593552 () Unit!43899)

(assert (=> b!1338276 (= lt!593552 lt!593537)))

(declare-fun lt!593538 () ListLongMap!21763)

(assert (=> b!1338276 (= lt!593538 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!593535 () (_ BitVec 64))

(assert (=> b!1338276 (= lt!593535 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593539 () (_ BitVec 64))

(assert (=> b!1338276 (= lt!593539 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(declare-fun lt!593545 () Unit!43899)

(assert (=> b!1338276 (= lt!593545 (addApplyDifferent!574 lt!593538 lt!593535 zeroValue!1262 lt!593539))))

(assert (=> b!1338276 (= (apply!1071 (+!4725 lt!593538 (tuple2!24095 lt!593535 zeroValue!1262)) lt!593539) (apply!1071 lt!593538 lt!593539))))

(declare-fun lt!593543 () Unit!43899)

(assert (=> b!1338276 (= lt!593543 lt!593545)))

(declare-fun lt!593555 () ListLongMap!21763)

(assert (=> b!1338276 (= lt!593555 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!593542 () (_ BitVec 64))

(assert (=> b!1338276 (= lt!593542 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593541 () (_ BitVec 64))

(assert (=> b!1338276 (= lt!593541 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(assert (=> b!1338276 (= lt!593544 (addApplyDifferent!574 lt!593555 lt!593542 minValue!1262 lt!593541))))

(assert (=> b!1338276 (= (apply!1071 (+!4725 lt!593555 (tuple2!24095 lt!593542 minValue!1262)) lt!593541) (apply!1071 lt!593555 lt!593541))))

(declare-fun b!1338277 () Bool)

(declare-fun res!888065 () Bool)

(declare-fun e!762046 () Bool)

(assert (=> b!1338277 (=> (not res!888065) (not e!762046))))

(declare-fun e!762050 () Bool)

(assert (=> b!1338277 (= res!888065 e!762050)))

(declare-fun c!126175 () Bool)

(assert (=> b!1338277 (= c!126175 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1338278 () Bool)

(declare-fun Unit!43904 () Unit!43899)

(assert (=> b!1338278 (= e!762040 Unit!43904)))

(declare-fun b!1338280 () Bool)

(declare-fun call!65012 () Bool)

(assert (=> b!1338280 (= e!762050 (not call!65012))))

(declare-fun b!1338281 () Bool)

(declare-fun e!762049 () Bool)

(declare-fun e!762044 () Bool)

(assert (=> b!1338281 (= e!762049 e!762044)))

(declare-fun res!888073 () Bool)

(declare-fun call!65011 () Bool)

(assert (=> b!1338281 (= res!888073 call!65011)))

(assert (=> b!1338281 (=> (not res!888073) (not e!762044))))

(declare-fun call!65010 () ListLongMap!21763)

(declare-fun bm!65004 () Bool)

(assert (=> bm!65004 (= call!65010 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1338282 () Bool)

(declare-fun e!762043 () ListLongMap!21763)

(assert (=> b!1338282 (= e!762043 call!65006)))

(declare-fun b!1338283 () Bool)

(declare-fun e!762039 () Bool)

(declare-fun lt!593556 () ListLongMap!21763)

(assert (=> b!1338283 (= e!762039 (= (apply!1071 lt!593556 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (get!22175 (select (arr!43851 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1338283 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44402 _values!1320)))))

(assert (=> b!1338283 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44401 _keys!1590)))))

(declare-fun b!1338284 () Bool)

(assert (=> b!1338284 (= e!762049 (not call!65011))))

(declare-fun b!1338285 () Bool)

(declare-fun e!762045 () Bool)

(assert (=> b!1338285 (= e!762050 e!762045)))

(declare-fun res!888072 () Bool)

(assert (=> b!1338285 (= res!888072 call!65012)))

(assert (=> b!1338285 (=> (not res!888072) (not e!762045))))

(declare-fun bm!65005 () Bool)

(declare-fun call!65007 () ListLongMap!21763)

(declare-fun call!65009 () ListLongMap!21763)

(assert (=> bm!65005 (= call!65007 call!65009)))

(declare-fun bm!65006 () Bool)

(assert (=> bm!65006 (= call!65008 call!65010)))

(declare-fun b!1338286 () Bool)

(declare-fun e!762041 () ListLongMap!21763)

(declare-fun e!762042 () ListLongMap!21763)

(assert (=> b!1338286 (= e!762041 e!762042)))

(declare-fun c!126177 () Bool)

(assert (=> b!1338286 (= c!126177 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1338287 () Bool)

(declare-fun e!762048 () Bool)

(assert (=> b!1338287 (= e!762048 e!762039)))

(declare-fun res!888069 () Bool)

(assert (=> b!1338287 (=> (not res!888069) (not e!762039))))

(assert (=> b!1338287 (= res!888069 (contains!9004 lt!593556 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1338287 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44401 _keys!1590)))))

(declare-fun d!143849 () Bool)

(assert (=> d!143849 e!762046))

(declare-fun res!888071 () Bool)

(assert (=> d!143849 (=> (not res!888071) (not e!762046))))

(assert (=> d!143849 (= res!888071 (or (bvsge (bvadd #b00000000000000000000000000000001 from!1980) (size!44401 _keys!1590)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44401 _keys!1590)))))))

(declare-fun lt!593546 () ListLongMap!21763)

(assert (=> d!143849 (= lt!593556 lt!593546)))

(declare-fun lt!593550 () Unit!43899)

(assert (=> d!143849 (= lt!593550 e!762040)))

(declare-fun c!126173 () Bool)

(declare-fun e!762051 () Bool)

(assert (=> d!143849 (= c!126173 e!762051)))

(declare-fun res!888067 () Bool)

(assert (=> d!143849 (=> (not res!888067) (not e!762051))))

(assert (=> d!143849 (= res!888067 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44401 _keys!1590)))))

(assert (=> d!143849 (= lt!593546 e!762041)))

(declare-fun c!126174 () Bool)

(assert (=> d!143849 (= c!126174 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143849 (validMask!0 mask!1998)))

(assert (=> d!143849 (= (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) lt!593556)))

(declare-fun b!1338279 () Bool)

(assert (=> b!1338279 (= e!762044 (= (apply!1071 lt!593556 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1262))))

(declare-fun b!1338288 () Bool)

(assert (=> b!1338288 (= e!762042 call!65007)))

(declare-fun b!1338289 () Bool)

(assert (=> b!1338289 (= e!762045 (= (apply!1071 lt!593556 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1262))))

(declare-fun b!1338290 () Bool)

(assert (=> b!1338290 (= e!762041 (+!4725 call!65009 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(declare-fun bm!65007 () Bool)

(assert (=> bm!65007 (= call!65009 (+!4725 (ite c!126174 call!65010 (ite c!126177 call!65008 call!65006)) (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1338291 () Bool)

(declare-fun e!762047 () Bool)

(assert (=> b!1338291 (= e!762047 (validKeyInArray!0 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun b!1338292 () Bool)

(assert (=> b!1338292 (= e!762046 e!762049)))

(declare-fun c!126176 () Bool)

(assert (=> b!1338292 (= c!126176 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1338293 () Bool)

(declare-fun c!126178 () Bool)

(assert (=> b!1338293 (= c!126178 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1338293 (= e!762042 e!762043)))

(declare-fun b!1338294 () Bool)

(declare-fun res!888066 () Bool)

(assert (=> b!1338294 (=> (not res!888066) (not e!762046))))

(assert (=> b!1338294 (= res!888066 e!762048)))

(declare-fun res!888070 () Bool)

(assert (=> b!1338294 (=> res!888070 e!762048)))

(assert (=> b!1338294 (= res!888070 (not e!762047))))

(declare-fun res!888068 () Bool)

(assert (=> b!1338294 (=> (not res!888068) (not e!762047))))

(assert (=> b!1338294 (= res!888068 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44401 _keys!1590)))))

(declare-fun bm!65008 () Bool)

(assert (=> bm!65008 (= call!65012 (contains!9004 lt!593556 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1338295 () Bool)

(assert (=> b!1338295 (= e!762051 (validKeyInArray!0 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun b!1338296 () Bool)

(assert (=> b!1338296 (= e!762043 call!65007)))

(declare-fun bm!65009 () Bool)

(assert (=> bm!65009 (= call!65011 (contains!9004 lt!593556 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!143849 c!126174) b!1338290))

(assert (= (and d!143849 (not c!126174)) b!1338286))

(assert (= (and b!1338286 c!126177) b!1338288))

(assert (= (and b!1338286 (not c!126177)) b!1338293))

(assert (= (and b!1338293 c!126178) b!1338296))

(assert (= (and b!1338293 (not c!126178)) b!1338282))

(assert (= (or b!1338296 b!1338282) bm!65003))

(assert (= (or b!1338288 bm!65003) bm!65006))

(assert (= (or b!1338288 b!1338296) bm!65005))

(assert (= (or b!1338290 bm!65006) bm!65004))

(assert (= (or b!1338290 bm!65005) bm!65007))

(assert (= (and d!143849 res!888067) b!1338295))

(assert (= (and d!143849 c!126173) b!1338276))

(assert (= (and d!143849 (not c!126173)) b!1338278))

(assert (= (and d!143849 res!888071) b!1338294))

(assert (= (and b!1338294 res!888068) b!1338291))

(assert (= (and b!1338294 (not res!888070)) b!1338287))

(assert (= (and b!1338287 res!888069) b!1338283))

(assert (= (and b!1338294 res!888066) b!1338277))

(assert (= (and b!1338277 c!126175) b!1338285))

(assert (= (and b!1338277 (not c!126175)) b!1338280))

(assert (= (and b!1338285 res!888072) b!1338289))

(assert (= (or b!1338285 b!1338280) bm!65008))

(assert (= (and b!1338277 res!888065) b!1338292))

(assert (= (and b!1338292 c!126176) b!1338281))

(assert (= (and b!1338292 (not c!126176)) b!1338284))

(assert (= (and b!1338281 res!888073) b!1338279))

(assert (= (or b!1338281 b!1338284) bm!65009))

(declare-fun b_lambda!24287 () Bool)

(assert (=> (not b_lambda!24287) (not b!1338283)))

(assert (=> b!1338283 t!45601))

(declare-fun b_and!50099 () Bool)

(assert (= b_and!50097 (and (=> t!45601 result!25357) b_and!50099)))

(declare-fun m!1226437 () Bool)

(assert (=> b!1338290 m!1226437))

(declare-fun m!1226439 () Bool)

(assert (=> b!1338276 m!1226439))

(declare-fun m!1226441 () Bool)

(assert (=> b!1338276 m!1226441))

(declare-fun m!1226443 () Bool)

(assert (=> b!1338276 m!1226443))

(declare-fun m!1226445 () Bool)

(assert (=> b!1338276 m!1226445))

(declare-fun m!1226447 () Bool)

(assert (=> b!1338276 m!1226447))

(declare-fun m!1226449 () Bool)

(assert (=> b!1338276 m!1226449))

(declare-fun m!1226451 () Bool)

(assert (=> b!1338276 m!1226451))

(declare-fun m!1226453 () Bool)

(assert (=> b!1338276 m!1226453))

(declare-fun m!1226455 () Bool)

(assert (=> b!1338276 m!1226455))

(declare-fun m!1226457 () Bool)

(assert (=> b!1338276 m!1226457))

(declare-fun m!1226459 () Bool)

(assert (=> b!1338276 m!1226459))

(declare-fun m!1226461 () Bool)

(assert (=> b!1338276 m!1226461))

(declare-fun m!1226463 () Bool)

(assert (=> b!1338276 m!1226463))

(assert (=> b!1338276 m!1226459))

(assert (=> b!1338276 m!1226453))

(assert (=> b!1338276 m!1226447))

(declare-fun m!1226465 () Bool)

(assert (=> b!1338276 m!1226465))

(assert (=> b!1338276 m!1226449))

(declare-fun m!1226467 () Bool)

(assert (=> b!1338276 m!1226467))

(declare-fun m!1226469 () Bool)

(assert (=> b!1338276 m!1226469))

(declare-fun m!1226471 () Bool)

(assert (=> b!1338276 m!1226471))

(assert (=> bm!65004 m!1226469))

(assert (=> d!143849 m!1226317))

(assert (=> b!1338283 m!1226471))

(declare-fun m!1226473 () Bool)

(assert (=> b!1338283 m!1226473))

(assert (=> b!1338283 m!1226411))

(assert (=> b!1338283 m!1226471))

(declare-fun m!1226475 () Bool)

(assert (=> b!1338283 m!1226475))

(assert (=> b!1338283 m!1226475))

(assert (=> b!1338283 m!1226411))

(declare-fun m!1226477 () Bool)

(assert (=> b!1338283 m!1226477))

(declare-fun m!1226479 () Bool)

(assert (=> bm!65009 m!1226479))

(assert (=> b!1338291 m!1226471))

(assert (=> b!1338291 m!1226471))

(declare-fun m!1226481 () Bool)

(assert (=> b!1338291 m!1226481))

(assert (=> b!1338287 m!1226471))

(assert (=> b!1338287 m!1226471))

(declare-fun m!1226483 () Bool)

(assert (=> b!1338287 m!1226483))

(declare-fun m!1226485 () Bool)

(assert (=> b!1338279 m!1226485))

(declare-fun m!1226487 () Bool)

(assert (=> b!1338289 m!1226487))

(assert (=> b!1338295 m!1226471))

(assert (=> b!1338295 m!1226471))

(assert (=> b!1338295 m!1226481))

(declare-fun m!1226489 () Bool)

(assert (=> bm!65008 m!1226489))

(declare-fun m!1226491 () Bool)

(assert (=> bm!65007 m!1226491))

(assert (=> b!1338144 d!143849))

(declare-fun b!1338305 () Bool)

(declare-fun e!762060 () Bool)

(declare-fun e!762058 () Bool)

(assert (=> b!1338305 (= e!762060 e!762058)))

(declare-fun lt!593565 () (_ BitVec 64))

(assert (=> b!1338305 (= lt!593565 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000))))

(declare-fun lt!593564 () Unit!43899)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!90785 (_ BitVec 64) (_ BitVec 32)) Unit!43899)

(assert (=> b!1338305 (= lt!593564 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!593565 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!90785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1338305 (arrayContainsKey!0 _keys!1590 lt!593565 #b00000000000000000000000000000000)))

(declare-fun lt!593563 () Unit!43899)

(assert (=> b!1338305 (= lt!593563 lt!593564)))

(declare-fun res!888078 () Bool)

(declare-datatypes ((SeekEntryResult!10048 0))(
  ( (MissingZero!10048 (index!42562 (_ BitVec 32))) (Found!10048 (index!42563 (_ BitVec 32))) (Intermediate!10048 (undefined!10860 Bool) (index!42564 (_ BitVec 32)) (x!119537 (_ BitVec 32))) (Undefined!10048) (MissingVacant!10048 (index!42565 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!90785 (_ BitVec 32)) SeekEntryResult!10048)

(assert (=> b!1338305 (= res!888078 (= (seekEntryOrOpen!0 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) (Found!10048 #b00000000000000000000000000000000)))))

(assert (=> b!1338305 (=> (not res!888078) (not e!762058))))

(declare-fun b!1338306 () Bool)

(declare-fun call!65015 () Bool)

(assert (=> b!1338306 (= e!762060 call!65015)))

(declare-fun d!143851 () Bool)

(declare-fun res!888079 () Bool)

(declare-fun e!762059 () Bool)

(assert (=> d!143851 (=> res!888079 e!762059)))

(assert (=> d!143851 (= res!888079 (bvsge #b00000000000000000000000000000000 (size!44401 _keys!1590)))))

(assert (=> d!143851 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998) e!762059)))

(declare-fun b!1338307 () Bool)

(assert (=> b!1338307 (= e!762058 call!65015)))

(declare-fun bm!65012 () Bool)

(assert (=> bm!65012 (= call!65015 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(declare-fun b!1338308 () Bool)

(assert (=> b!1338308 (= e!762059 e!762060)))

(declare-fun c!126181 () Bool)

(assert (=> b!1338308 (= c!126181 (validKeyInArray!0 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000)))))

(assert (= (and d!143851 (not res!888079)) b!1338308))

(assert (= (and b!1338308 c!126181) b!1338305))

(assert (= (and b!1338308 (not c!126181)) b!1338306))

(assert (= (and b!1338305 res!888078) b!1338307))

(assert (= (or b!1338307 b!1338306) bm!65012))

(assert (=> b!1338305 m!1226359))

(declare-fun m!1226493 () Bool)

(assert (=> b!1338305 m!1226493))

(declare-fun m!1226495 () Bool)

(assert (=> b!1338305 m!1226495))

(assert (=> b!1338305 m!1226359))

(declare-fun m!1226497 () Bool)

(assert (=> b!1338305 m!1226497))

(declare-fun m!1226499 () Bool)

(assert (=> bm!65012 m!1226499))

(assert (=> b!1338308 m!1226359))

(assert (=> b!1338308 m!1226359))

(assert (=> b!1338308 m!1226361))

(assert (=> b!1338148 d!143851))

(declare-fun mapIsEmpty!57156 () Bool)

(declare-fun mapRes!57156 () Bool)

(assert (=> mapIsEmpty!57156 mapRes!57156))

(declare-fun condMapEmpty!57156 () Bool)

(declare-fun mapDefault!57156 () ValueCell!17589)

(assert (=> mapNonEmpty!57150 (= condMapEmpty!57156 (= mapRest!57150 ((as const (Array (_ BitVec 32) ValueCell!17589)) mapDefault!57156)))))

(declare-fun e!762066 () Bool)

(assert (=> mapNonEmpty!57150 (= tp!108847 (and e!762066 mapRes!57156))))

(declare-fun b!1338315 () Bool)

(declare-fun e!762065 () Bool)

(assert (=> b!1338315 (= e!762065 tp_is_empty!36975)))

(declare-fun b!1338316 () Bool)

(assert (=> b!1338316 (= e!762066 tp_is_empty!36975)))

(declare-fun mapNonEmpty!57156 () Bool)

(declare-fun tp!108856 () Bool)

(assert (=> mapNonEmpty!57156 (= mapRes!57156 (and tp!108856 e!762065))))

(declare-fun mapRest!57156 () (Array (_ BitVec 32) ValueCell!17589))

(declare-fun mapKey!57156 () (_ BitVec 32))

(declare-fun mapValue!57156 () ValueCell!17589)

(assert (=> mapNonEmpty!57156 (= mapRest!57150 (store mapRest!57156 mapKey!57156 mapValue!57156))))

(assert (= (and mapNonEmpty!57150 condMapEmpty!57156) mapIsEmpty!57156))

(assert (= (and mapNonEmpty!57150 (not condMapEmpty!57156)) mapNonEmpty!57156))

(assert (= (and mapNonEmpty!57156 ((_ is ValueCellFull!17589) mapValue!57156)) b!1338315))

(assert (= (and mapNonEmpty!57150 ((_ is ValueCellFull!17589) mapDefault!57156)) b!1338316))

(declare-fun m!1226501 () Bool)

(assert (=> mapNonEmpty!57156 m!1226501))

(declare-fun b_lambda!24289 () Bool)

(assert (= b_lambda!24287 (or (and start!112872 b_free!31065) b_lambda!24289)))

(declare-fun b_lambda!24291 () Bool)

(assert (= b_lambda!24285 (or (and start!112872 b_free!31065) b_lambda!24291)))

(check-sat (not bm!65001) (not bm!65000) (not b!1338289) (not d!143849) (not b!1338283) (not bm!65012) (not b!1338264) (not bm!64981) (not b!1338263) (not b!1338197) (not b!1338250) (not b!1338290) (not b!1338265) (not b!1338261) (not d!143843) (not b!1338305) (not b!1338253) (not b!1338276) (not b!1338275) (not b!1338279) (not bm!65002) tp_is_empty!36975 (not bm!65008) (not b!1338198) (not d!143845) (not d!143847) (not bm!64997) (not b!1338205) (not b!1338291) (not b!1338207) (not b_lambda!24291) (not mapNonEmpty!57156) (not b!1338308) (not b_lambda!24289) (not bm!65004) (not b!1338196) (not b_next!31065) (not bm!65009) (not b!1338287) (not b!1338269) (not b!1338273) b_and!50099 (not b!1338257) (not b!1338295) (not bm!65007))
(check-sat b_and!50099 (not b_next!31065))
(get-model)

(declare-fun d!143853 () Bool)

(declare-fun res!888080 () Bool)

(declare-fun e!762070 () Bool)

(assert (=> d!143853 (=> res!888080 e!762070)))

(assert (=> d!143853 (= res!888080 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44401 _keys!1590)))))

(assert (=> d!143853 (= (arrayNoDuplicates!0 _keys!1590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126150 (Cons!31257 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) Nil!31258) Nil!31258)) e!762070)))

(declare-fun b!1338317 () Bool)

(declare-fun e!762068 () Bool)

(declare-fun call!65016 () Bool)

(assert (=> b!1338317 (= e!762068 call!65016)))

(declare-fun b!1338318 () Bool)

(assert (=> b!1338318 (= e!762068 call!65016)))

(declare-fun b!1338319 () Bool)

(declare-fun e!762067 () Bool)

(assert (=> b!1338319 (= e!762070 e!762067)))

(declare-fun res!888082 () Bool)

(assert (=> b!1338319 (=> (not res!888082) (not e!762067))))

(declare-fun e!762069 () Bool)

(assert (=> b!1338319 (= res!888082 (not e!762069))))

(declare-fun res!888081 () Bool)

(assert (=> b!1338319 (=> (not res!888081) (not e!762069))))

(assert (=> b!1338319 (= res!888081 (validKeyInArray!0 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1338320 () Bool)

(assert (=> b!1338320 (= e!762069 (contains!9006 (ite c!126150 (Cons!31257 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) Nil!31258) Nil!31258) (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun c!126182 () Bool)

(declare-fun bm!65013 () Bool)

(assert (=> bm!65013 (= call!65016 (arrayNoDuplicates!0 _keys!1590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!126182 (Cons!31257 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!126150 (Cons!31257 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) Nil!31258) Nil!31258)) (ite c!126150 (Cons!31257 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) Nil!31258) Nil!31258))))))

(declare-fun b!1338321 () Bool)

(assert (=> b!1338321 (= e!762067 e!762068)))

(assert (=> b!1338321 (= c!126182 (validKeyInArray!0 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!143853 (not res!888080)) b!1338319))

(assert (= (and b!1338319 res!888081) b!1338320))

(assert (= (and b!1338319 res!888082) b!1338321))

(assert (= (and b!1338321 c!126182) b!1338318))

(assert (= (and b!1338321 (not c!126182)) b!1338317))

(assert (= (or b!1338318 b!1338317) bm!65013))

(declare-fun m!1226503 () Bool)

(assert (=> b!1338319 m!1226503))

(assert (=> b!1338319 m!1226503))

(declare-fun m!1226505 () Bool)

(assert (=> b!1338319 m!1226505))

(assert (=> b!1338320 m!1226503))

(assert (=> b!1338320 m!1226503))

(declare-fun m!1226507 () Bool)

(assert (=> b!1338320 m!1226507))

(assert (=> bm!65013 m!1226503))

(declare-fun m!1226509 () Bool)

(assert (=> bm!65013 m!1226509))

(assert (=> b!1338321 m!1226503))

(assert (=> b!1338321 m!1226503))

(assert (=> b!1338321 m!1226505))

(assert (=> bm!64981 d!143853))

(declare-fun d!143855 () Bool)

(declare-fun get!22176 (Option!772) V!54403)

(assert (=> d!143855 (= (apply!1071 lt!593530 (select (arr!43850 _keys!1590) from!1980)) (get!22176 (getValueByKey!721 (toList!10897 lt!593530) (select (arr!43850 _keys!1590) from!1980))))))

(declare-fun bs!38313 () Bool)

(assert (= bs!38313 d!143855))

(assert (=> bs!38313 m!1226311))

(declare-fun m!1226511 () Bool)

(assert (=> bs!38313 m!1226511))

(assert (=> bs!38313 m!1226511))

(declare-fun m!1226513 () Bool)

(assert (=> bs!38313 m!1226513))

(assert (=> b!1338257 d!143855))

(declare-fun d!143857 () Bool)

(declare-fun c!126185 () Bool)

(assert (=> d!143857 (= c!126185 ((_ is ValueCellFull!17589) (select (arr!43851 _values!1320) from!1980)))))

(declare-fun e!762073 () V!54403)

(assert (=> d!143857 (= (get!22175 (select (arr!43851 _values!1320) from!1980) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) e!762073)))

(declare-fun b!1338326 () Bool)

(declare-fun get!22177 (ValueCell!17589 V!54403) V!54403)

(assert (=> b!1338326 (= e!762073 (get!22177 (select (arr!43851 _values!1320) from!1980) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1338327 () Bool)

(declare-fun get!22178 (ValueCell!17589 V!54403) V!54403)

(assert (=> b!1338327 (= e!762073 (get!22178 (select (arr!43851 _values!1320) from!1980) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143857 c!126185) b!1338326))

(assert (= (and d!143857 (not c!126185)) b!1338327))

(assert (=> b!1338326 m!1226413))

(assert (=> b!1338326 m!1226411))

(declare-fun m!1226515 () Bool)

(assert (=> b!1338326 m!1226515))

(assert (=> b!1338327 m!1226413))

(assert (=> b!1338327 m!1226411))

(declare-fun m!1226517 () Bool)

(assert (=> b!1338327 m!1226517))

(assert (=> b!1338257 d!143857))

(declare-fun d!143859 () Bool)

(assert (=> d!143859 (= (apply!1071 (+!4725 lt!593555 (tuple2!24095 lt!593542 minValue!1262)) lt!593541) (get!22176 (getValueByKey!721 (toList!10897 (+!4725 lt!593555 (tuple2!24095 lt!593542 minValue!1262))) lt!593541)))))

(declare-fun bs!38314 () Bool)

(assert (= bs!38314 d!143859))

(declare-fun m!1226519 () Bool)

(assert (=> bs!38314 m!1226519))

(assert (=> bs!38314 m!1226519))

(declare-fun m!1226521 () Bool)

(assert (=> bs!38314 m!1226521))

(assert (=> b!1338276 d!143859))

(declare-fun d!143861 () Bool)

(assert (=> d!143861 (= (apply!1071 (+!4725 lt!593538 (tuple2!24095 lt!593535 zeroValue!1262)) lt!593539) (apply!1071 lt!593538 lt!593539))))

(declare-fun lt!593568 () Unit!43899)

(declare-fun choose!1977 (ListLongMap!21763 (_ BitVec 64) V!54403 (_ BitVec 64)) Unit!43899)

(assert (=> d!143861 (= lt!593568 (choose!1977 lt!593538 lt!593535 zeroValue!1262 lt!593539))))

(declare-fun e!762076 () Bool)

(assert (=> d!143861 e!762076))

(declare-fun res!888085 () Bool)

(assert (=> d!143861 (=> (not res!888085) (not e!762076))))

(assert (=> d!143861 (= res!888085 (contains!9004 lt!593538 lt!593539))))

(assert (=> d!143861 (= (addApplyDifferent!574 lt!593538 lt!593535 zeroValue!1262 lt!593539) lt!593568)))

(declare-fun b!1338331 () Bool)

(assert (=> b!1338331 (= e!762076 (not (= lt!593539 lt!593535)))))

(assert (= (and d!143861 res!888085) b!1338331))

(assert (=> d!143861 m!1226449))

(assert (=> d!143861 m!1226449))

(assert (=> d!143861 m!1226467))

(declare-fun m!1226523 () Bool)

(assert (=> d!143861 m!1226523))

(declare-fun m!1226525 () Bool)

(assert (=> d!143861 m!1226525))

(assert (=> d!143861 m!1226457))

(assert (=> b!1338276 d!143861))

(declare-fun d!143863 () Bool)

(assert (=> d!143863 (= (apply!1071 lt!593555 lt!593541) (get!22176 (getValueByKey!721 (toList!10897 lt!593555) lt!593541)))))

(declare-fun bs!38315 () Bool)

(assert (= bs!38315 d!143863))

(declare-fun m!1226527 () Bool)

(assert (=> bs!38315 m!1226527))

(assert (=> bs!38315 m!1226527))

(declare-fun m!1226529 () Bool)

(assert (=> bs!38315 m!1226529))

(assert (=> b!1338276 d!143863))

(declare-fun d!143865 () Bool)

(assert (=> d!143865 (= (apply!1071 (+!4725 lt!593538 (tuple2!24095 lt!593535 zeroValue!1262)) lt!593539) (get!22176 (getValueByKey!721 (toList!10897 (+!4725 lt!593538 (tuple2!24095 lt!593535 zeroValue!1262))) lt!593539)))))

(declare-fun bs!38316 () Bool)

(assert (= bs!38316 d!143865))

(declare-fun m!1226531 () Bool)

(assert (=> bs!38316 m!1226531))

(assert (=> bs!38316 m!1226531))

(declare-fun m!1226533 () Bool)

(assert (=> bs!38316 m!1226533))

(assert (=> b!1338276 d!143865))

(declare-fun d!143867 () Bool)

(declare-fun e!762079 () Bool)

(assert (=> d!143867 e!762079))

(declare-fun res!888091 () Bool)

(assert (=> d!143867 (=> (not res!888091) (not e!762079))))

(declare-fun lt!593578 () ListLongMap!21763)

(assert (=> d!143867 (= res!888091 (contains!9004 lt!593578 (_1!12057 (tuple2!24095 lt!593548 zeroValue!1262))))))

(declare-fun lt!593579 () List!31260)

(assert (=> d!143867 (= lt!593578 (ListLongMap!21764 lt!593579))))

(declare-fun lt!593577 () Unit!43899)

(declare-fun lt!593580 () Unit!43899)

(assert (=> d!143867 (= lt!593577 lt!593580)))

(assert (=> d!143867 (= (getValueByKey!721 lt!593579 (_1!12057 (tuple2!24095 lt!593548 zeroValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593548 zeroValue!1262))))))

(declare-fun lemmaContainsTupThenGetReturnValue!364 (List!31260 (_ BitVec 64) V!54403) Unit!43899)

(assert (=> d!143867 (= lt!593580 (lemmaContainsTupThenGetReturnValue!364 lt!593579 (_1!12057 (tuple2!24095 lt!593548 zeroValue!1262)) (_2!12057 (tuple2!24095 lt!593548 zeroValue!1262))))))

(declare-fun insertStrictlySorted!493 (List!31260 (_ BitVec 64) V!54403) List!31260)

(assert (=> d!143867 (= lt!593579 (insertStrictlySorted!493 (toList!10897 lt!593547) (_1!12057 (tuple2!24095 lt!593548 zeroValue!1262)) (_2!12057 (tuple2!24095 lt!593548 zeroValue!1262))))))

(assert (=> d!143867 (= (+!4725 lt!593547 (tuple2!24095 lt!593548 zeroValue!1262)) lt!593578)))

(declare-fun b!1338336 () Bool)

(declare-fun res!888090 () Bool)

(assert (=> b!1338336 (=> (not res!888090) (not e!762079))))

(assert (=> b!1338336 (= res!888090 (= (getValueByKey!721 (toList!10897 lt!593578) (_1!12057 (tuple2!24095 lt!593548 zeroValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593548 zeroValue!1262)))))))

(declare-fun b!1338337 () Bool)

(declare-fun contains!9007 (List!31260 tuple2!24094) Bool)

(assert (=> b!1338337 (= e!762079 (contains!9007 (toList!10897 lt!593578) (tuple2!24095 lt!593548 zeroValue!1262)))))

(assert (= (and d!143867 res!888091) b!1338336))

(assert (= (and b!1338336 res!888090) b!1338337))

(declare-fun m!1226535 () Bool)

(assert (=> d!143867 m!1226535))

(declare-fun m!1226537 () Bool)

(assert (=> d!143867 m!1226537))

(declare-fun m!1226539 () Bool)

(assert (=> d!143867 m!1226539))

(declare-fun m!1226541 () Bool)

(assert (=> d!143867 m!1226541))

(declare-fun m!1226543 () Bool)

(assert (=> b!1338336 m!1226543))

(declare-fun m!1226545 () Bool)

(assert (=> b!1338337 m!1226545))

(assert (=> b!1338276 d!143867))

(declare-fun d!143869 () Bool)

(assert (=> d!143869 (= (apply!1071 lt!593536 lt!593540) (get!22176 (getValueByKey!721 (toList!10897 lt!593536) lt!593540)))))

(declare-fun bs!38317 () Bool)

(assert (= bs!38317 d!143869))

(declare-fun m!1226547 () Bool)

(assert (=> bs!38317 m!1226547))

(assert (=> bs!38317 m!1226547))

(declare-fun m!1226549 () Bool)

(assert (=> bs!38317 m!1226549))

(assert (=> b!1338276 d!143869))

(declare-fun d!143871 () Bool)

(declare-fun e!762080 () Bool)

(assert (=> d!143871 e!762080))

(declare-fun res!888093 () Bool)

(assert (=> d!143871 (=> (not res!888093) (not e!762080))))

(declare-fun lt!593582 () ListLongMap!21763)

(assert (=> d!143871 (= res!888093 (contains!9004 lt!593582 (_1!12057 (tuple2!24095 lt!593535 zeroValue!1262))))))

(declare-fun lt!593583 () List!31260)

(assert (=> d!143871 (= lt!593582 (ListLongMap!21764 lt!593583))))

(declare-fun lt!593581 () Unit!43899)

(declare-fun lt!593584 () Unit!43899)

(assert (=> d!143871 (= lt!593581 lt!593584)))

(assert (=> d!143871 (= (getValueByKey!721 lt!593583 (_1!12057 (tuple2!24095 lt!593535 zeroValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593535 zeroValue!1262))))))

(assert (=> d!143871 (= lt!593584 (lemmaContainsTupThenGetReturnValue!364 lt!593583 (_1!12057 (tuple2!24095 lt!593535 zeroValue!1262)) (_2!12057 (tuple2!24095 lt!593535 zeroValue!1262))))))

(assert (=> d!143871 (= lt!593583 (insertStrictlySorted!493 (toList!10897 lt!593538) (_1!12057 (tuple2!24095 lt!593535 zeroValue!1262)) (_2!12057 (tuple2!24095 lt!593535 zeroValue!1262))))))

(assert (=> d!143871 (= (+!4725 lt!593538 (tuple2!24095 lt!593535 zeroValue!1262)) lt!593582)))

(declare-fun b!1338338 () Bool)

(declare-fun res!888092 () Bool)

(assert (=> b!1338338 (=> (not res!888092) (not e!762080))))

(assert (=> b!1338338 (= res!888092 (= (getValueByKey!721 (toList!10897 lt!593582) (_1!12057 (tuple2!24095 lt!593535 zeroValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593535 zeroValue!1262)))))))

(declare-fun b!1338339 () Bool)

(assert (=> b!1338339 (= e!762080 (contains!9007 (toList!10897 lt!593582) (tuple2!24095 lt!593535 zeroValue!1262)))))

(assert (= (and d!143871 res!888093) b!1338338))

(assert (= (and b!1338338 res!888092) b!1338339))

(declare-fun m!1226551 () Bool)

(assert (=> d!143871 m!1226551))

(declare-fun m!1226553 () Bool)

(assert (=> d!143871 m!1226553))

(declare-fun m!1226555 () Bool)

(assert (=> d!143871 m!1226555))

(declare-fun m!1226557 () Bool)

(assert (=> d!143871 m!1226557))

(declare-fun m!1226559 () Bool)

(assert (=> b!1338338 m!1226559))

(declare-fun m!1226561 () Bool)

(assert (=> b!1338339 m!1226561))

(assert (=> b!1338276 d!143871))

(declare-fun b!1338364 () Bool)

(declare-fun e!762101 () Bool)

(declare-fun lt!593604 () ListLongMap!21763)

(declare-fun isEmpty!1092 (ListLongMap!21763) Bool)

(assert (=> b!1338364 (= e!762101 (isEmpty!1092 lt!593604))))

(declare-fun b!1338365 () Bool)

(declare-fun res!888102 () Bool)

(declare-fun e!762095 () Bool)

(assert (=> b!1338365 (=> (not res!888102) (not e!762095))))

(assert (=> b!1338365 (= res!888102 (not (contains!9004 lt!593604 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1338366 () Bool)

(declare-fun e!762097 () ListLongMap!21763)

(declare-fun e!762100 () ListLongMap!21763)

(assert (=> b!1338366 (= e!762097 e!762100)))

(declare-fun c!126195 () Bool)

(assert (=> b!1338366 (= c!126195 (validKeyInArray!0 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun b!1338367 () Bool)

(declare-fun call!65019 () ListLongMap!21763)

(assert (=> b!1338367 (= e!762100 call!65019)))

(declare-fun b!1338368 () Bool)

(assert (=> b!1338368 (= e!762097 (ListLongMap!21764 Nil!31257))))

(declare-fun bm!65016 () Bool)

(assert (=> bm!65016 (= call!65019 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323))))

(declare-fun b!1338369 () Bool)

(declare-fun e!762099 () Bool)

(assert (=> b!1338369 (= e!762099 (validKeyInArray!0 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1338369 (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))

(declare-fun b!1338370 () Bool)

(assert (=> b!1338370 (= e!762101 (= lt!593604 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323)))))

(declare-fun b!1338371 () Bool)

(declare-fun e!762098 () Bool)

(assert (=> b!1338371 (= e!762095 e!762098)))

(declare-fun c!126196 () Bool)

(assert (=> b!1338371 (= c!126196 e!762099)))

(declare-fun res!888105 () Bool)

(assert (=> b!1338371 (=> (not res!888105) (not e!762099))))

(assert (=> b!1338371 (= res!888105 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44401 _keys!1590)))))

(declare-fun b!1338372 () Bool)

(assert (=> b!1338372 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44401 _keys!1590)))))

(assert (=> b!1338372 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44402 _values!1320)))))

(declare-fun e!762096 () Bool)

(assert (=> b!1338372 (= e!762096 (= (apply!1071 lt!593604 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (get!22175 (select (arr!43851 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1338373 () Bool)

(assert (=> b!1338373 (= e!762098 e!762096)))

(assert (=> b!1338373 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44401 _keys!1590)))))

(declare-fun res!888103 () Bool)

(assert (=> b!1338373 (= res!888103 (contains!9004 lt!593604 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1338373 (=> (not res!888103) (not e!762096))))

(declare-fun d!143873 () Bool)

(assert (=> d!143873 e!762095))

(declare-fun res!888104 () Bool)

(assert (=> d!143873 (=> (not res!888104) (not e!762095))))

(assert (=> d!143873 (= res!888104 (not (contains!9004 lt!593604 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!143873 (= lt!593604 e!762097)))

(declare-fun c!126194 () Bool)

(assert (=> d!143873 (= c!126194 (bvsge (bvadd #b00000000000000000000000000000001 from!1980) (size!44401 _keys!1590)))))

(assert (=> d!143873 (validMask!0 mask!1998)))

(assert (=> d!143873 (= (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) lt!593604)))

(declare-fun b!1338374 () Bool)

(declare-fun lt!593600 () Unit!43899)

(declare-fun lt!593601 () Unit!43899)

(assert (=> b!1338374 (= lt!593600 lt!593601)))

(declare-fun lt!593605 () (_ BitVec 64))

(declare-fun lt!593602 () ListLongMap!21763)

(declare-fun lt!593599 () V!54403)

(declare-fun lt!593603 () (_ BitVec 64))

(assert (=> b!1338374 (not (contains!9004 (+!4725 lt!593602 (tuple2!24095 lt!593603 lt!593599)) lt!593605))))

(declare-fun addStillNotContains!509 (ListLongMap!21763 (_ BitVec 64) V!54403 (_ BitVec 64)) Unit!43899)

(assert (=> b!1338374 (= lt!593601 (addStillNotContains!509 lt!593602 lt!593603 lt!593599 lt!593605))))

(assert (=> b!1338374 (= lt!593605 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1338374 (= lt!593599 (get!22175 (select (arr!43851 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1338374 (= lt!593603 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(assert (=> b!1338374 (= lt!593602 call!65019)))

(assert (=> b!1338374 (= e!762100 (+!4725 call!65019 (tuple2!24095 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22175 (select (arr!43851 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1338375 () Bool)

(assert (=> b!1338375 (= e!762098 e!762101)))

(declare-fun c!126197 () Bool)

(assert (=> b!1338375 (= c!126197 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44401 _keys!1590)))))

(assert (= (and d!143873 c!126194) b!1338368))

(assert (= (and d!143873 (not c!126194)) b!1338366))

(assert (= (and b!1338366 c!126195) b!1338374))

(assert (= (and b!1338366 (not c!126195)) b!1338367))

(assert (= (or b!1338374 b!1338367) bm!65016))

(assert (= (and d!143873 res!888104) b!1338365))

(assert (= (and b!1338365 res!888102) b!1338371))

(assert (= (and b!1338371 res!888105) b!1338369))

(assert (= (and b!1338371 c!126196) b!1338373))

(assert (= (and b!1338371 (not c!126196)) b!1338375))

(assert (= (and b!1338373 res!888103) b!1338372))

(assert (= (and b!1338375 c!126197) b!1338370))

(assert (= (and b!1338375 (not c!126197)) b!1338364))

(declare-fun b_lambda!24293 () Bool)

(assert (=> (not b_lambda!24293) (not b!1338372)))

(assert (=> b!1338372 t!45601))

(declare-fun b_and!50101 () Bool)

(assert (= b_and!50099 (and (=> t!45601 result!25357) b_and!50101)))

(declare-fun b_lambda!24295 () Bool)

(assert (=> (not b_lambda!24295) (not b!1338374)))

(assert (=> b!1338374 t!45601))

(declare-fun b_and!50103 () Bool)

(assert (= b_and!50101 (and (=> t!45601 result!25357) b_and!50103)))

(declare-fun m!1226563 () Bool)

(assert (=> b!1338365 m!1226563))

(declare-fun m!1226565 () Bool)

(assert (=> d!143873 m!1226565))

(assert (=> d!143873 m!1226317))

(declare-fun m!1226567 () Bool)

(assert (=> b!1338370 m!1226567))

(assert (=> b!1338373 m!1226471))

(assert (=> b!1338373 m!1226471))

(declare-fun m!1226569 () Bool)

(assert (=> b!1338373 m!1226569))

(assert (=> b!1338366 m!1226471))

(assert (=> b!1338366 m!1226471))

(assert (=> b!1338366 m!1226481))

(assert (=> b!1338369 m!1226471))

(assert (=> b!1338369 m!1226471))

(assert (=> b!1338369 m!1226481))

(declare-fun m!1226571 () Bool)

(assert (=> b!1338364 m!1226571))

(assert (=> b!1338372 m!1226475))

(assert (=> b!1338372 m!1226471))

(assert (=> b!1338372 m!1226471))

(declare-fun m!1226573 () Bool)

(assert (=> b!1338372 m!1226573))

(assert (=> b!1338372 m!1226475))

(assert (=> b!1338372 m!1226411))

(assert (=> b!1338372 m!1226477))

(assert (=> b!1338372 m!1226411))

(assert (=> bm!65016 m!1226567))

(assert (=> b!1338374 m!1226475))

(assert (=> b!1338374 m!1226471))

(declare-fun m!1226575 () Bool)

(assert (=> b!1338374 m!1226575))

(declare-fun m!1226577 () Bool)

(assert (=> b!1338374 m!1226577))

(declare-fun m!1226579 () Bool)

(assert (=> b!1338374 m!1226579))

(assert (=> b!1338374 m!1226575))

(declare-fun m!1226581 () Bool)

(assert (=> b!1338374 m!1226581))

(assert (=> b!1338374 m!1226475))

(assert (=> b!1338374 m!1226411))

(assert (=> b!1338374 m!1226477))

(assert (=> b!1338374 m!1226411))

(assert (=> b!1338276 d!143873))

(declare-fun d!143875 () Bool)

(assert (=> d!143875 (= (apply!1071 (+!4725 lt!593536 (tuple2!24095 lt!593553 minValue!1262)) lt!593540) (get!22176 (getValueByKey!721 (toList!10897 (+!4725 lt!593536 (tuple2!24095 lt!593553 minValue!1262))) lt!593540)))))

(declare-fun bs!38318 () Bool)

(assert (= bs!38318 d!143875))

(declare-fun m!1226583 () Bool)

(assert (=> bs!38318 m!1226583))

(assert (=> bs!38318 m!1226583))

(declare-fun m!1226585 () Bool)

(assert (=> bs!38318 m!1226585))

(assert (=> b!1338276 d!143875))

(declare-fun d!143877 () Bool)

(declare-fun e!762102 () Bool)

(assert (=> d!143877 e!762102))

(declare-fun res!888107 () Bool)

(assert (=> d!143877 (=> (not res!888107) (not e!762102))))

(declare-fun lt!593607 () ListLongMap!21763)

(assert (=> d!143877 (= res!888107 (contains!9004 lt!593607 (_1!12057 (tuple2!24095 lt!593542 minValue!1262))))))

(declare-fun lt!593608 () List!31260)

(assert (=> d!143877 (= lt!593607 (ListLongMap!21764 lt!593608))))

(declare-fun lt!593606 () Unit!43899)

(declare-fun lt!593609 () Unit!43899)

(assert (=> d!143877 (= lt!593606 lt!593609)))

(assert (=> d!143877 (= (getValueByKey!721 lt!593608 (_1!12057 (tuple2!24095 lt!593542 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593542 minValue!1262))))))

(assert (=> d!143877 (= lt!593609 (lemmaContainsTupThenGetReturnValue!364 lt!593608 (_1!12057 (tuple2!24095 lt!593542 minValue!1262)) (_2!12057 (tuple2!24095 lt!593542 minValue!1262))))))

(assert (=> d!143877 (= lt!593608 (insertStrictlySorted!493 (toList!10897 lt!593555) (_1!12057 (tuple2!24095 lt!593542 minValue!1262)) (_2!12057 (tuple2!24095 lt!593542 minValue!1262))))))

(assert (=> d!143877 (= (+!4725 lt!593555 (tuple2!24095 lt!593542 minValue!1262)) lt!593607)))

(declare-fun b!1338376 () Bool)

(declare-fun res!888106 () Bool)

(assert (=> b!1338376 (=> (not res!888106) (not e!762102))))

(assert (=> b!1338376 (= res!888106 (= (getValueByKey!721 (toList!10897 lt!593607) (_1!12057 (tuple2!24095 lt!593542 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593542 minValue!1262)))))))

(declare-fun b!1338377 () Bool)

(assert (=> b!1338377 (= e!762102 (contains!9007 (toList!10897 lt!593607) (tuple2!24095 lt!593542 minValue!1262)))))

(assert (= (and d!143877 res!888107) b!1338376))

(assert (= (and b!1338376 res!888106) b!1338377))

(declare-fun m!1226587 () Bool)

(assert (=> d!143877 m!1226587))

(declare-fun m!1226589 () Bool)

(assert (=> d!143877 m!1226589))

(declare-fun m!1226591 () Bool)

(assert (=> d!143877 m!1226591))

(declare-fun m!1226593 () Bool)

(assert (=> d!143877 m!1226593))

(declare-fun m!1226595 () Bool)

(assert (=> b!1338376 m!1226595))

(declare-fun m!1226597 () Bool)

(assert (=> b!1338377 m!1226597))

(assert (=> b!1338276 d!143877))

(declare-fun d!143879 () Bool)

(assert (=> d!143879 (= (apply!1071 (+!4725 lt!593536 (tuple2!24095 lt!593553 minValue!1262)) lt!593540) (apply!1071 lt!593536 lt!593540))))

(declare-fun lt!593610 () Unit!43899)

(assert (=> d!143879 (= lt!593610 (choose!1977 lt!593536 lt!593553 minValue!1262 lt!593540))))

(declare-fun e!762103 () Bool)

(assert (=> d!143879 e!762103))

(declare-fun res!888108 () Bool)

(assert (=> d!143879 (=> (not res!888108) (not e!762103))))

(assert (=> d!143879 (= res!888108 (contains!9004 lt!593536 lt!593540))))

(assert (=> d!143879 (= (addApplyDifferent!574 lt!593536 lt!593553 minValue!1262 lt!593540) lt!593610)))

(declare-fun b!1338378 () Bool)

(assert (=> b!1338378 (= e!762103 (not (= lt!593540 lt!593553)))))

(assert (= (and d!143879 res!888108) b!1338378))

(assert (=> d!143879 m!1226453))

(assert (=> d!143879 m!1226453))

(assert (=> d!143879 m!1226455))

(declare-fun m!1226599 () Bool)

(assert (=> d!143879 m!1226599))

(declare-fun m!1226601 () Bool)

(assert (=> d!143879 m!1226601))

(assert (=> d!143879 m!1226451))

(assert (=> b!1338276 d!143879))

(declare-fun d!143881 () Bool)

(assert (=> d!143881 (contains!9004 (+!4725 lt!593547 (tuple2!24095 lt!593548 zeroValue!1262)) lt!593551)))

(declare-fun lt!593613 () Unit!43899)

(declare-fun choose!1978 (ListLongMap!21763 (_ BitVec 64) V!54403 (_ BitVec 64)) Unit!43899)

(assert (=> d!143881 (= lt!593613 (choose!1978 lt!593547 lt!593548 zeroValue!1262 lt!593551))))

(assert (=> d!143881 (contains!9004 lt!593547 lt!593551)))

(assert (=> d!143881 (= (addStillContains!1197 lt!593547 lt!593548 zeroValue!1262 lt!593551) lt!593613)))

(declare-fun bs!38319 () Bool)

(assert (= bs!38319 d!143881))

(assert (=> bs!38319 m!1226447))

(assert (=> bs!38319 m!1226447))

(assert (=> bs!38319 m!1226465))

(declare-fun m!1226603 () Bool)

(assert (=> bs!38319 m!1226603))

(declare-fun m!1226605 () Bool)

(assert (=> bs!38319 m!1226605))

(assert (=> b!1338276 d!143881))

(declare-fun d!143883 () Bool)

(assert (=> d!143883 (= (apply!1071 (+!4725 lt!593555 (tuple2!24095 lt!593542 minValue!1262)) lt!593541) (apply!1071 lt!593555 lt!593541))))

(declare-fun lt!593614 () Unit!43899)

(assert (=> d!143883 (= lt!593614 (choose!1977 lt!593555 lt!593542 minValue!1262 lt!593541))))

(declare-fun e!762104 () Bool)

(assert (=> d!143883 e!762104))

(declare-fun res!888109 () Bool)

(assert (=> d!143883 (=> (not res!888109) (not e!762104))))

(assert (=> d!143883 (= res!888109 (contains!9004 lt!593555 lt!593541))))

(assert (=> d!143883 (= (addApplyDifferent!574 lt!593555 lt!593542 minValue!1262 lt!593541) lt!593614)))

(declare-fun b!1338380 () Bool)

(assert (=> b!1338380 (= e!762104 (not (= lt!593541 lt!593542)))))

(assert (= (and d!143883 res!888109) b!1338380))

(assert (=> d!143883 m!1226459))

(assert (=> d!143883 m!1226459))

(assert (=> d!143883 m!1226461))

(declare-fun m!1226607 () Bool)

(assert (=> d!143883 m!1226607))

(declare-fun m!1226609 () Bool)

(assert (=> d!143883 m!1226609))

(assert (=> d!143883 m!1226439))

(assert (=> b!1338276 d!143883))

(declare-fun d!143885 () Bool)

(declare-fun e!762105 () Bool)

(assert (=> d!143885 e!762105))

(declare-fun res!888111 () Bool)

(assert (=> d!143885 (=> (not res!888111) (not e!762105))))

(declare-fun lt!593616 () ListLongMap!21763)

(assert (=> d!143885 (= res!888111 (contains!9004 lt!593616 (_1!12057 (tuple2!24095 lt!593553 minValue!1262))))))

(declare-fun lt!593617 () List!31260)

(assert (=> d!143885 (= lt!593616 (ListLongMap!21764 lt!593617))))

(declare-fun lt!593615 () Unit!43899)

(declare-fun lt!593618 () Unit!43899)

(assert (=> d!143885 (= lt!593615 lt!593618)))

(assert (=> d!143885 (= (getValueByKey!721 lt!593617 (_1!12057 (tuple2!24095 lt!593553 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593553 minValue!1262))))))

(assert (=> d!143885 (= lt!593618 (lemmaContainsTupThenGetReturnValue!364 lt!593617 (_1!12057 (tuple2!24095 lt!593553 minValue!1262)) (_2!12057 (tuple2!24095 lt!593553 minValue!1262))))))

(assert (=> d!143885 (= lt!593617 (insertStrictlySorted!493 (toList!10897 lt!593536) (_1!12057 (tuple2!24095 lt!593553 minValue!1262)) (_2!12057 (tuple2!24095 lt!593553 minValue!1262))))))

(assert (=> d!143885 (= (+!4725 lt!593536 (tuple2!24095 lt!593553 minValue!1262)) lt!593616)))

(declare-fun b!1338381 () Bool)

(declare-fun res!888110 () Bool)

(assert (=> b!1338381 (=> (not res!888110) (not e!762105))))

(assert (=> b!1338381 (= res!888110 (= (getValueByKey!721 (toList!10897 lt!593616) (_1!12057 (tuple2!24095 lt!593553 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593553 minValue!1262)))))))

(declare-fun b!1338382 () Bool)

(assert (=> b!1338382 (= e!762105 (contains!9007 (toList!10897 lt!593616) (tuple2!24095 lt!593553 minValue!1262)))))

(assert (= (and d!143885 res!888111) b!1338381))

(assert (= (and b!1338381 res!888110) b!1338382))

(declare-fun m!1226611 () Bool)

(assert (=> d!143885 m!1226611))

(declare-fun m!1226613 () Bool)

(assert (=> d!143885 m!1226613))

(declare-fun m!1226615 () Bool)

(assert (=> d!143885 m!1226615))

(declare-fun m!1226617 () Bool)

(assert (=> d!143885 m!1226617))

(declare-fun m!1226619 () Bool)

(assert (=> b!1338381 m!1226619))

(declare-fun m!1226621 () Bool)

(assert (=> b!1338382 m!1226621))

(assert (=> b!1338276 d!143885))

(declare-fun d!143887 () Bool)

(declare-fun e!762107 () Bool)

(assert (=> d!143887 e!762107))

(declare-fun res!888112 () Bool)

(assert (=> d!143887 (=> res!888112 e!762107)))

(declare-fun lt!593621 () Bool)

(assert (=> d!143887 (= res!888112 (not lt!593621))))

(declare-fun lt!593619 () Bool)

(assert (=> d!143887 (= lt!593621 lt!593619)))

(declare-fun lt!593622 () Unit!43899)

(declare-fun e!762106 () Unit!43899)

(assert (=> d!143887 (= lt!593622 e!762106)))

(declare-fun c!126198 () Bool)

(assert (=> d!143887 (= c!126198 lt!593619)))

(assert (=> d!143887 (= lt!593619 (containsKey!739 (toList!10897 (+!4725 lt!593547 (tuple2!24095 lt!593548 zeroValue!1262))) lt!593551))))

(assert (=> d!143887 (= (contains!9004 (+!4725 lt!593547 (tuple2!24095 lt!593548 zeroValue!1262)) lt!593551) lt!593621)))

(declare-fun b!1338383 () Bool)

(declare-fun lt!593620 () Unit!43899)

(assert (=> b!1338383 (= e!762106 lt!593620)))

(assert (=> b!1338383 (= lt!593620 (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 (+!4725 lt!593547 (tuple2!24095 lt!593548 zeroValue!1262))) lt!593551))))

(assert (=> b!1338383 (isDefined!524 (getValueByKey!721 (toList!10897 (+!4725 lt!593547 (tuple2!24095 lt!593548 zeroValue!1262))) lt!593551))))

(declare-fun b!1338384 () Bool)

(declare-fun Unit!43905 () Unit!43899)

(assert (=> b!1338384 (= e!762106 Unit!43905)))

(declare-fun b!1338385 () Bool)

(assert (=> b!1338385 (= e!762107 (isDefined!524 (getValueByKey!721 (toList!10897 (+!4725 lt!593547 (tuple2!24095 lt!593548 zeroValue!1262))) lt!593551)))))

(assert (= (and d!143887 c!126198) b!1338383))

(assert (= (and d!143887 (not c!126198)) b!1338384))

(assert (= (and d!143887 (not res!888112)) b!1338385))

(declare-fun m!1226623 () Bool)

(assert (=> d!143887 m!1226623))

(declare-fun m!1226625 () Bool)

(assert (=> b!1338383 m!1226625))

(declare-fun m!1226627 () Bool)

(assert (=> b!1338383 m!1226627))

(assert (=> b!1338383 m!1226627))

(declare-fun m!1226629 () Bool)

(assert (=> b!1338383 m!1226629))

(assert (=> b!1338385 m!1226627))

(assert (=> b!1338385 m!1226627))

(assert (=> b!1338385 m!1226629))

(assert (=> b!1338276 d!143887))

(declare-fun d!143889 () Bool)

(assert (=> d!143889 (= (apply!1071 lt!593538 lt!593539) (get!22176 (getValueByKey!721 (toList!10897 lt!593538) lt!593539)))))

(declare-fun bs!38320 () Bool)

(assert (= bs!38320 d!143889))

(declare-fun m!1226631 () Bool)

(assert (=> bs!38320 m!1226631))

(assert (=> bs!38320 m!1226631))

(declare-fun m!1226633 () Bool)

(assert (=> bs!38320 m!1226633))

(assert (=> b!1338276 d!143889))

(declare-fun d!143891 () Bool)

(declare-fun lt!593625 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!668 (List!31261) (InoxSet (_ BitVec 64)))

(assert (=> d!143891 (= lt!593625 (select (content!668 Nil!31258) (select (arr!43850 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun e!762113 () Bool)

(assert (=> d!143891 (= lt!593625 e!762113)))

(declare-fun res!888117 () Bool)

(assert (=> d!143891 (=> (not res!888117) (not e!762113))))

(assert (=> d!143891 (= res!888117 ((_ is Cons!31257) Nil!31258))))

(assert (=> d!143891 (= (contains!9006 Nil!31258 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000)) lt!593625)))

(declare-fun b!1338390 () Bool)

(declare-fun e!762112 () Bool)

(assert (=> b!1338390 (= e!762113 e!762112)))

(declare-fun res!888118 () Bool)

(assert (=> b!1338390 (=> res!888118 e!762112)))

(assert (=> b!1338390 (= res!888118 (= (h!32466 Nil!31258) (select (arr!43850 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1338391 () Bool)

(assert (=> b!1338391 (= e!762112 (contains!9006 (t!45598 Nil!31258) (select (arr!43850 _keys!1590) #b00000000000000000000000000000000)))))

(assert (= (and d!143891 res!888117) b!1338390))

(assert (= (and b!1338390 (not res!888118)) b!1338391))

(declare-fun m!1226635 () Bool)

(assert (=> d!143891 m!1226635))

(assert (=> d!143891 m!1226359))

(declare-fun m!1226637 () Bool)

(assert (=> d!143891 m!1226637))

(assert (=> b!1338391 m!1226359))

(declare-fun m!1226639 () Bool)

(assert (=> b!1338391 m!1226639))

(assert (=> b!1338197 d!143891))

(declare-fun d!143893 () Bool)

(declare-fun isEmpty!1093 (Option!772) Bool)

(assert (=> d!143893 (= (isDefined!524 (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153)) (not (isEmpty!1093 (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))))

(declare-fun bs!38321 () Bool)

(assert (= bs!38321 d!143893))

(assert (=> bs!38321 m!1226371))

(declare-fun m!1226641 () Bool)

(assert (=> bs!38321 m!1226641))

(assert (=> b!1338207 d!143893))

(declare-fun b!1338402 () Bool)

(declare-fun e!762119 () Option!772)

(assert (=> b!1338402 (= e!762119 (getValueByKey!721 (t!45597 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) k0!1153))))

(declare-fun b!1338400 () Bool)

(declare-fun e!762118 () Option!772)

(assert (=> b!1338400 (= e!762118 (Some!771 (_2!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))))))

(declare-fun b!1338403 () Bool)

(assert (=> b!1338403 (= e!762119 None!770)))

(declare-fun b!1338401 () Bool)

(assert (=> b!1338401 (= e!762118 e!762119)))

(declare-fun c!126204 () Bool)

(assert (=> b!1338401 (= c!126204 (and ((_ is Cons!31256) (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (not (= (_1!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153))))))

(declare-fun c!126203 () Bool)

(declare-fun d!143895 () Bool)

(assert (=> d!143895 (= c!126203 (and ((_ is Cons!31256) (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (= (_1!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)))))

(assert (=> d!143895 (= (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153) e!762118)))

(assert (= (and d!143895 c!126203) b!1338400))

(assert (= (and d!143895 (not c!126203)) b!1338401))

(assert (= (and b!1338401 c!126204) b!1338402))

(assert (= (and b!1338401 (not c!126204)) b!1338403))

(declare-fun m!1226643 () Bool)

(assert (=> b!1338402 m!1226643))

(assert (=> b!1338207 d!143895))

(declare-fun d!143897 () Bool)

(assert (=> d!143897 (= (apply!1071 lt!593556 #b1000000000000000000000000000000000000000000000000000000000000000) (get!22176 (getValueByKey!721 (toList!10897 lt!593556) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38322 () Bool)

(assert (= bs!38322 d!143897))

(declare-fun m!1226645 () Bool)

(assert (=> bs!38322 m!1226645))

(assert (=> bs!38322 m!1226645))

(declare-fun m!1226647 () Bool)

(assert (=> bs!38322 m!1226647))

(assert (=> b!1338279 d!143897))

(declare-fun d!143899 () Bool)

(assert (=> d!143899 (= (validKeyInArray!0 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000)) (and (not (= (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1338198 d!143899))

(declare-fun d!143901 () Bool)

(declare-fun e!762121 () Bool)

(assert (=> d!143901 e!762121))

(declare-fun res!888119 () Bool)

(assert (=> d!143901 (=> res!888119 e!762121)))

(declare-fun lt!593628 () Bool)

(assert (=> d!143901 (= res!888119 (not lt!593628))))

(declare-fun lt!593626 () Bool)

(assert (=> d!143901 (= lt!593628 lt!593626)))

(declare-fun lt!593629 () Unit!43899)

(declare-fun e!762120 () Unit!43899)

(assert (=> d!143901 (= lt!593629 e!762120)))

(declare-fun c!126205 () Bool)

(assert (=> d!143901 (= c!126205 lt!593626)))

(assert (=> d!143901 (= lt!593626 (containsKey!739 (toList!10897 lt!593556) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143901 (= (contains!9004 lt!593556 #b0000000000000000000000000000000000000000000000000000000000000000) lt!593628)))

(declare-fun b!1338404 () Bool)

(declare-fun lt!593627 () Unit!43899)

(assert (=> b!1338404 (= e!762120 lt!593627)))

(assert (=> b!1338404 (= lt!593627 (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 lt!593556) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1338404 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593556) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1338405 () Bool)

(declare-fun Unit!43906 () Unit!43899)

(assert (=> b!1338405 (= e!762120 Unit!43906)))

(declare-fun b!1338406 () Bool)

(assert (=> b!1338406 (= e!762121 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593556) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143901 c!126205) b!1338404))

(assert (= (and d!143901 (not c!126205)) b!1338405))

(assert (= (and d!143901 (not res!888119)) b!1338406))

(declare-fun m!1226649 () Bool)

(assert (=> d!143901 m!1226649))

(declare-fun m!1226651 () Bool)

(assert (=> b!1338404 m!1226651))

(declare-fun m!1226653 () Bool)

(assert (=> b!1338404 m!1226653))

(assert (=> b!1338404 m!1226653))

(declare-fun m!1226655 () Bool)

(assert (=> b!1338404 m!1226655))

(assert (=> b!1338406 m!1226653))

(assert (=> b!1338406 m!1226653))

(assert (=> b!1338406 m!1226655))

(assert (=> bm!65008 d!143901))

(declare-fun d!143903 () Bool)

(assert (=> d!143903 (= (validKeyInArray!0 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (and (not (= (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1338295 d!143903))

(assert (=> b!1338269 d!143833))

(declare-fun d!143905 () Bool)

(assert (=> d!143905 (= (isDefined!524 (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153)) (not (isEmpty!1093 (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))))

(declare-fun bs!38323 () Bool)

(assert (= bs!38323 d!143905))

(assert (=> bs!38323 m!1226433))

(declare-fun m!1226657 () Bool)

(assert (=> bs!38323 m!1226657))

(assert (=> b!1338275 d!143905))

(declare-fun e!762123 () Option!772)

(declare-fun b!1338409 () Bool)

(assert (=> b!1338409 (= e!762123 (getValueByKey!721 (t!45597 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) k0!1153))))

(declare-fun e!762122 () Option!772)

(declare-fun b!1338407 () Bool)

(assert (=> b!1338407 (= e!762122 (Some!771 (_2!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))))))

(declare-fun b!1338410 () Bool)

(assert (=> b!1338410 (= e!762123 None!770)))

(declare-fun b!1338408 () Bool)

(assert (=> b!1338408 (= e!762122 e!762123)))

(declare-fun c!126207 () Bool)

(assert (=> b!1338408 (= c!126207 (and ((_ is Cons!31256) (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (not (= (_1!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) k0!1153))))))

(declare-fun d!143907 () Bool)

(declare-fun c!126206 () Bool)

(assert (=> d!143907 (= c!126206 (and ((_ is Cons!31256) (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (= (_1!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) k0!1153)))))

(assert (=> d!143907 (= (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153) e!762122)))

(assert (= (and d!143907 c!126206) b!1338407))

(assert (= (and d!143907 (not c!126206)) b!1338408))

(assert (= (and b!1338408 c!126207) b!1338409))

(assert (= (and b!1338408 (not c!126207)) b!1338410))

(declare-fun m!1226659 () Bool)

(assert (=> b!1338409 m!1226659))

(assert (=> b!1338275 d!143907))

(declare-fun d!143909 () Bool)

(assert (=> d!143909 (= (apply!1071 lt!593530 #b1000000000000000000000000000000000000000000000000000000000000000) (get!22176 (getValueByKey!721 (toList!10897 lt!593530) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38324 () Bool)

(assert (= bs!38324 d!143909))

(declare-fun m!1226661 () Bool)

(assert (=> bs!38324 m!1226661))

(assert (=> bs!38324 m!1226661))

(declare-fun m!1226663 () Bool)

(assert (=> bs!38324 m!1226663))

(assert (=> b!1338253 d!143909))

(declare-fun d!143911 () Bool)

(declare-fun e!762124 () Bool)

(assert (=> d!143911 e!762124))

(declare-fun res!888121 () Bool)

(assert (=> d!143911 (=> (not res!888121) (not e!762124))))

(declare-fun lt!593631 () ListLongMap!21763)

(assert (=> d!143911 (= res!888121 (contains!9004 lt!593631 (_1!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun lt!593632 () List!31260)

(assert (=> d!143911 (= lt!593631 (ListLongMap!21764 lt!593632))))

(declare-fun lt!593630 () Unit!43899)

(declare-fun lt!593633 () Unit!43899)

(assert (=> d!143911 (= lt!593630 lt!593633)))

(assert (=> d!143911 (= (getValueByKey!721 lt!593632 (_1!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143911 (= lt!593633 (lemmaContainsTupThenGetReturnValue!364 lt!593632 (_1!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143911 (= lt!593632 (insertStrictlySorted!493 (toList!10897 call!65009) (_1!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143911 (= (+!4725 call!65009 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) lt!593631)))

(declare-fun b!1338411 () Bool)

(declare-fun res!888120 () Bool)

(assert (=> b!1338411 (=> (not res!888120) (not e!762124))))

(assert (=> b!1338411 (= res!888120 (= (getValueByKey!721 (toList!10897 lt!593631) (_1!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun b!1338412 () Bool)

(assert (=> b!1338412 (= e!762124 (contains!9007 (toList!10897 lt!593631) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(assert (= (and d!143911 res!888121) b!1338411))

(assert (= (and b!1338411 res!888120) b!1338412))

(declare-fun m!1226665 () Bool)

(assert (=> d!143911 m!1226665))

(declare-fun m!1226667 () Bool)

(assert (=> d!143911 m!1226667))

(declare-fun m!1226669 () Bool)

(assert (=> d!143911 m!1226669))

(declare-fun m!1226671 () Bool)

(assert (=> d!143911 m!1226671))

(declare-fun m!1226673 () Bool)

(assert (=> b!1338411 m!1226673))

(declare-fun m!1226675 () Bool)

(assert (=> b!1338412 m!1226675))

(assert (=> b!1338290 d!143911))

(declare-fun d!143913 () Bool)

(assert (=> d!143913 (= (apply!1071 lt!593556 #b0000000000000000000000000000000000000000000000000000000000000000) (get!22176 (getValueByKey!721 (toList!10897 lt!593556) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38325 () Bool)

(assert (= bs!38325 d!143913))

(assert (=> bs!38325 m!1226653))

(assert (=> bs!38325 m!1226653))

(declare-fun m!1226677 () Bool)

(assert (=> bs!38325 m!1226677))

(assert (=> b!1338289 d!143913))

(declare-fun d!143915 () Bool)

(declare-fun e!762126 () Bool)

(assert (=> d!143915 e!762126))

(declare-fun res!888122 () Bool)

(assert (=> d!143915 (=> res!888122 e!762126)))

(declare-fun lt!593636 () Bool)

(assert (=> d!143915 (= res!888122 (not lt!593636))))

(declare-fun lt!593634 () Bool)

(assert (=> d!143915 (= lt!593636 lt!593634)))

(declare-fun lt!593637 () Unit!43899)

(declare-fun e!762125 () Unit!43899)

(assert (=> d!143915 (= lt!593637 e!762125)))

(declare-fun c!126208 () Bool)

(assert (=> d!143915 (= c!126208 lt!593634)))

(assert (=> d!143915 (= lt!593634 (containsKey!739 (toList!10897 lt!593530) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143915 (= (contains!9004 lt!593530 #b0000000000000000000000000000000000000000000000000000000000000000) lt!593636)))

(declare-fun b!1338413 () Bool)

(declare-fun lt!593635 () Unit!43899)

(assert (=> b!1338413 (= e!762125 lt!593635)))

(assert (=> b!1338413 (= lt!593635 (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 lt!593530) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1338413 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593530) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1338414 () Bool)

(declare-fun Unit!43907 () Unit!43899)

(assert (=> b!1338414 (= e!762125 Unit!43907)))

(declare-fun b!1338415 () Bool)

(assert (=> b!1338415 (= e!762126 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593530) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143915 c!126208) b!1338413))

(assert (= (and d!143915 (not c!126208)) b!1338414))

(assert (= (and d!143915 (not res!888122)) b!1338415))

(declare-fun m!1226679 () Bool)

(assert (=> d!143915 m!1226679))

(declare-fun m!1226681 () Bool)

(assert (=> b!1338413 m!1226681))

(declare-fun m!1226683 () Bool)

(assert (=> b!1338413 m!1226683))

(assert (=> b!1338413 m!1226683))

(declare-fun m!1226685 () Bool)

(assert (=> b!1338413 m!1226685))

(assert (=> b!1338415 m!1226683))

(assert (=> b!1338415 m!1226683))

(assert (=> b!1338415 m!1226685))

(assert (=> bm!65001 d!143915))

(declare-fun d!143917 () Bool)

(assert (=> d!143917 (isDefined!524 (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-fun lt!593640 () Unit!43899)

(declare-fun choose!1979 (List!31260 (_ BitVec 64)) Unit!43899)

(assert (=> d!143917 (= lt!593640 (choose!1979 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-fun e!762129 () Bool)

(assert (=> d!143917 e!762129))

(declare-fun res!888125 () Bool)

(assert (=> d!143917 (=> (not res!888125) (not e!762129))))

(declare-fun isStrictlySorted!877 (List!31260) Bool)

(assert (=> d!143917 (= res!888125 (isStrictlySorted!877 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))))

(assert (=> d!143917 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153) lt!593640)))

(declare-fun b!1338418 () Bool)

(assert (=> b!1338418 (= e!762129 (containsKey!739 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(assert (= (and d!143917 res!888125) b!1338418))

(assert (=> d!143917 m!1226371))

(assert (=> d!143917 m!1226371))

(assert (=> d!143917 m!1226373))

(declare-fun m!1226687 () Bool)

(assert (=> d!143917 m!1226687))

(declare-fun m!1226689 () Bool)

(assert (=> d!143917 m!1226689))

(assert (=> b!1338418 m!1226367))

(assert (=> b!1338205 d!143917))

(assert (=> b!1338205 d!143893))

(assert (=> b!1338205 d!143895))

(assert (=> b!1338291 d!143903))

(assert (=> b!1338196 d!143899))

(declare-fun b!1338419 () Bool)

(declare-fun e!762136 () Bool)

(declare-fun lt!593646 () ListLongMap!21763)

(assert (=> b!1338419 (= e!762136 (isEmpty!1092 lt!593646))))

(declare-fun b!1338420 () Bool)

(declare-fun res!888126 () Bool)

(declare-fun e!762130 () Bool)

(assert (=> b!1338420 (=> (not res!888126) (not e!762130))))

(assert (=> b!1338420 (= res!888126 (not (contains!9004 lt!593646 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1338421 () Bool)

(declare-fun e!762132 () ListLongMap!21763)

(declare-fun e!762135 () ListLongMap!21763)

(assert (=> b!1338421 (= e!762132 e!762135)))

(declare-fun c!126210 () Bool)

(assert (=> b!1338421 (= c!126210 (validKeyInArray!0 (select (arr!43850 _keys!1590) from!1980)))))

(declare-fun b!1338422 () Bool)

(declare-fun call!65020 () ListLongMap!21763)

(assert (=> b!1338422 (= e!762135 call!65020)))

(declare-fun b!1338423 () Bool)

(assert (=> b!1338423 (= e!762132 (ListLongMap!21764 Nil!31257))))

(declare-fun bm!65017 () Bool)

(assert (=> bm!65017 (= call!65020 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd from!1980 #b00000000000000000000000000000001) defaultEntry!1323))))

(declare-fun b!1338424 () Bool)

(declare-fun e!762134 () Bool)

(assert (=> b!1338424 (= e!762134 (validKeyInArray!0 (select (arr!43850 _keys!1590) from!1980)))))

(assert (=> b!1338424 (bvsge from!1980 #b00000000000000000000000000000000)))

(declare-fun b!1338425 () Bool)

(assert (=> b!1338425 (= e!762136 (= lt!593646 (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd from!1980 #b00000000000000000000000000000001) defaultEntry!1323)))))

(declare-fun b!1338426 () Bool)

(declare-fun e!762133 () Bool)

(assert (=> b!1338426 (= e!762130 e!762133)))

(declare-fun c!126211 () Bool)

(assert (=> b!1338426 (= c!126211 e!762134)))

(declare-fun res!888129 () Bool)

(assert (=> b!1338426 (=> (not res!888129) (not e!762134))))

(assert (=> b!1338426 (= res!888129 (bvslt from!1980 (size!44401 _keys!1590)))))

(declare-fun b!1338427 () Bool)

(assert (=> b!1338427 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44401 _keys!1590)))))

(assert (=> b!1338427 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44402 _values!1320)))))

(declare-fun e!762131 () Bool)

(assert (=> b!1338427 (= e!762131 (= (apply!1071 lt!593646 (select (arr!43850 _keys!1590) from!1980)) (get!22175 (select (arr!43851 _values!1320) from!1980) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1338428 () Bool)

(assert (=> b!1338428 (= e!762133 e!762131)))

(assert (=> b!1338428 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44401 _keys!1590)))))

(declare-fun res!888127 () Bool)

(assert (=> b!1338428 (= res!888127 (contains!9004 lt!593646 (select (arr!43850 _keys!1590) from!1980)))))

(assert (=> b!1338428 (=> (not res!888127) (not e!762131))))

(declare-fun d!143919 () Bool)

(assert (=> d!143919 e!762130))

(declare-fun res!888128 () Bool)

(assert (=> d!143919 (=> (not res!888128) (not e!762130))))

(assert (=> d!143919 (= res!888128 (not (contains!9004 lt!593646 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!143919 (= lt!593646 e!762132)))

(declare-fun c!126209 () Bool)

(assert (=> d!143919 (= c!126209 (bvsge from!1980 (size!44401 _keys!1590)))))

(assert (=> d!143919 (validMask!0 mask!1998)))

(assert (=> d!143919 (= (getCurrentListMapNoExtraKeys!6448 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) lt!593646)))

(declare-fun b!1338429 () Bool)

(declare-fun lt!593642 () Unit!43899)

(declare-fun lt!593643 () Unit!43899)

(assert (=> b!1338429 (= lt!593642 lt!593643)))

(declare-fun lt!593644 () ListLongMap!21763)

(declare-fun lt!593647 () (_ BitVec 64))

(declare-fun lt!593641 () V!54403)

(declare-fun lt!593645 () (_ BitVec 64))

(assert (=> b!1338429 (not (contains!9004 (+!4725 lt!593644 (tuple2!24095 lt!593645 lt!593641)) lt!593647))))

(assert (=> b!1338429 (= lt!593643 (addStillNotContains!509 lt!593644 lt!593645 lt!593641 lt!593647))))

(assert (=> b!1338429 (= lt!593647 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1338429 (= lt!593641 (get!22175 (select (arr!43851 _values!1320) from!1980) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1338429 (= lt!593645 (select (arr!43850 _keys!1590) from!1980))))

(assert (=> b!1338429 (= lt!593644 call!65020)))

(assert (=> b!1338429 (= e!762135 (+!4725 call!65020 (tuple2!24095 (select (arr!43850 _keys!1590) from!1980) (get!22175 (select (arr!43851 _values!1320) from!1980) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1338430 () Bool)

(assert (=> b!1338430 (= e!762133 e!762136)))

(declare-fun c!126212 () Bool)

(assert (=> b!1338430 (= c!126212 (bvslt from!1980 (size!44401 _keys!1590)))))

(assert (= (and d!143919 c!126209) b!1338423))

(assert (= (and d!143919 (not c!126209)) b!1338421))

(assert (= (and b!1338421 c!126210) b!1338429))

(assert (= (and b!1338421 (not c!126210)) b!1338422))

(assert (= (or b!1338429 b!1338422) bm!65017))

(assert (= (and d!143919 res!888128) b!1338420))

(assert (= (and b!1338420 res!888126) b!1338426))

(assert (= (and b!1338426 res!888129) b!1338424))

(assert (= (and b!1338426 c!126211) b!1338428))

(assert (= (and b!1338426 (not c!126211)) b!1338430))

(assert (= (and b!1338428 res!888127) b!1338427))

(assert (= (and b!1338430 c!126212) b!1338425))

(assert (= (and b!1338430 (not c!126212)) b!1338419))

(declare-fun b_lambda!24297 () Bool)

(assert (=> (not b_lambda!24297) (not b!1338427)))

(assert (=> b!1338427 t!45601))

(declare-fun b_and!50105 () Bool)

(assert (= b_and!50103 (and (=> t!45601 result!25357) b_and!50105)))

(declare-fun b_lambda!24299 () Bool)

(assert (=> (not b_lambda!24299) (not b!1338429)))

(assert (=> b!1338429 t!45601))

(declare-fun b_and!50107 () Bool)

(assert (= b_and!50105 (and (=> t!45601 result!25357) b_and!50107)))

(declare-fun m!1226691 () Bool)

(assert (=> b!1338420 m!1226691))

(declare-fun m!1226693 () Bool)

(assert (=> d!143919 m!1226693))

(assert (=> d!143919 m!1226317))

(declare-fun m!1226695 () Bool)

(assert (=> b!1338425 m!1226695))

(assert (=> b!1338428 m!1226311))

(assert (=> b!1338428 m!1226311))

(declare-fun m!1226697 () Bool)

(assert (=> b!1338428 m!1226697))

(assert (=> b!1338421 m!1226311))

(assert (=> b!1338421 m!1226311))

(assert (=> b!1338421 m!1226333))

(assert (=> b!1338424 m!1226311))

(assert (=> b!1338424 m!1226311))

(assert (=> b!1338424 m!1226333))

(declare-fun m!1226699 () Bool)

(assert (=> b!1338419 m!1226699))

(assert (=> b!1338427 m!1226413))

(assert (=> b!1338427 m!1226311))

(assert (=> b!1338427 m!1226311))

(declare-fun m!1226701 () Bool)

(assert (=> b!1338427 m!1226701))

(assert (=> b!1338427 m!1226413))

(assert (=> b!1338427 m!1226411))

(assert (=> b!1338427 m!1226415))

(assert (=> b!1338427 m!1226411))

(assert (=> bm!65017 m!1226695))

(assert (=> b!1338429 m!1226413))

(assert (=> b!1338429 m!1226311))

(declare-fun m!1226703 () Bool)

(assert (=> b!1338429 m!1226703))

(declare-fun m!1226705 () Bool)

(assert (=> b!1338429 m!1226705))

(declare-fun m!1226707 () Bool)

(assert (=> b!1338429 m!1226707))

(assert (=> b!1338429 m!1226703))

(declare-fun m!1226709 () Bool)

(assert (=> b!1338429 m!1226709))

(assert (=> b!1338429 m!1226413))

(assert (=> b!1338429 m!1226411))

(assert (=> b!1338429 m!1226415))

(assert (=> b!1338429 m!1226411))

(assert (=> bm!64997 d!143919))

(declare-fun d!143921 () Bool)

(declare-fun e!762137 () Bool)

(assert (=> d!143921 e!762137))

(declare-fun res!888131 () Bool)

(assert (=> d!143921 (=> (not res!888131) (not e!762137))))

(declare-fun lt!593649 () ListLongMap!21763)

(assert (=> d!143921 (= res!888131 (contains!9004 lt!593649 (_1!12057 (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun lt!593650 () List!31260)

(assert (=> d!143921 (= lt!593649 (ListLongMap!21764 lt!593650))))

(declare-fun lt!593648 () Unit!43899)

(declare-fun lt!593651 () Unit!43899)

(assert (=> d!143921 (= lt!593648 lt!593651)))

(assert (=> d!143921 (= (getValueByKey!721 lt!593650 (_1!12057 (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (Some!771 (_2!12057 (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143921 (= lt!593651 (lemmaContainsTupThenGetReturnValue!364 lt!593650 (_1!12057 (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (_2!12057 (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143921 (= lt!593650 (insertStrictlySorted!493 (toList!10897 (ite c!126174 call!65010 (ite c!126177 call!65008 call!65006))) (_1!12057 (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (_2!12057 (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143921 (= (+!4725 (ite c!126174 call!65010 (ite c!126177 call!65008 call!65006)) (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) lt!593649)))

(declare-fun b!1338431 () Bool)

(declare-fun res!888130 () Bool)

(assert (=> b!1338431 (=> (not res!888130) (not e!762137))))

(assert (=> b!1338431 (= res!888130 (= (getValueByKey!721 (toList!10897 lt!593649) (_1!12057 (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (Some!771 (_2!12057 (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))))

(declare-fun b!1338432 () Bool)

(assert (=> b!1338432 (= e!762137 (contains!9007 (toList!10897 lt!593649) (ite (or c!126174 c!126177) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (= (and d!143921 res!888131) b!1338431))

(assert (= (and b!1338431 res!888130) b!1338432))

(declare-fun m!1226711 () Bool)

(assert (=> d!143921 m!1226711))

(declare-fun m!1226713 () Bool)

(assert (=> d!143921 m!1226713))

(declare-fun m!1226715 () Bool)

(assert (=> d!143921 m!1226715))

(declare-fun m!1226717 () Bool)

(assert (=> d!143921 m!1226717))

(declare-fun m!1226719 () Bool)

(assert (=> b!1338431 m!1226719))

(declare-fun m!1226721 () Bool)

(assert (=> b!1338432 m!1226721))

(assert (=> bm!65007 d!143921))

(declare-fun d!143923 () Bool)

(declare-fun e!762139 () Bool)

(assert (=> d!143923 e!762139))

(declare-fun res!888132 () Bool)

(assert (=> d!143923 (=> res!888132 e!762139)))

(declare-fun lt!593654 () Bool)

(assert (=> d!143923 (= res!888132 (not lt!593654))))

(declare-fun lt!593652 () Bool)

(assert (=> d!143923 (= lt!593654 lt!593652)))

(declare-fun lt!593655 () Unit!43899)

(declare-fun e!762138 () Unit!43899)

(assert (=> d!143923 (= lt!593655 e!762138)))

(declare-fun c!126213 () Bool)

(assert (=> d!143923 (= c!126213 lt!593652)))

(assert (=> d!143923 (= lt!593652 (containsKey!739 (toList!10897 lt!593530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143923 (= (contains!9004 lt!593530 #b1000000000000000000000000000000000000000000000000000000000000000) lt!593654)))

(declare-fun b!1338433 () Bool)

(declare-fun lt!593653 () Unit!43899)

(assert (=> b!1338433 (= e!762138 lt!593653)))

(assert (=> b!1338433 (= lt!593653 (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 lt!593530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1338433 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1338434 () Bool)

(declare-fun Unit!43908 () Unit!43899)

(assert (=> b!1338434 (= e!762138 Unit!43908)))

(declare-fun b!1338435 () Bool)

(assert (=> b!1338435 (= e!762139 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593530) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143923 c!126213) b!1338433))

(assert (= (and d!143923 (not c!126213)) b!1338434))

(assert (= (and d!143923 (not res!888132)) b!1338435))

(declare-fun m!1226723 () Bool)

(assert (=> d!143923 m!1226723))

(declare-fun m!1226725 () Bool)

(assert (=> b!1338433 m!1226725))

(assert (=> b!1338433 m!1226661))

(assert (=> b!1338433 m!1226661))

(declare-fun m!1226727 () Bool)

(assert (=> b!1338433 m!1226727))

(assert (=> b!1338435 m!1226661))

(assert (=> b!1338435 m!1226661))

(assert (=> b!1338435 m!1226727))

(assert (=> bm!65002 d!143923))

(assert (=> b!1338265 d!143833))

(assert (=> d!143845 d!143837))

(declare-fun d!143925 () Bool)

(declare-fun e!762140 () Bool)

(assert (=> d!143925 e!762140))

(declare-fun res!888134 () Bool)

(assert (=> d!143925 (=> (not res!888134) (not e!762140))))

(declare-fun lt!593657 () ListLongMap!21763)

(assert (=> d!143925 (= res!888134 (contains!9004 lt!593657 (_1!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun lt!593658 () List!31260)

(assert (=> d!143925 (= lt!593657 (ListLongMap!21764 lt!593658))))

(declare-fun lt!593656 () Unit!43899)

(declare-fun lt!593659 () Unit!43899)

(assert (=> d!143925 (= lt!593656 lt!593659)))

(assert (=> d!143925 (= (getValueByKey!721 lt!593658 (_1!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143925 (= lt!593659 (lemmaContainsTupThenGetReturnValue!364 lt!593658 (_1!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143925 (= lt!593658 (insertStrictlySorted!493 (toList!10897 call!65002) (_1!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143925 (= (+!4725 call!65002 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) lt!593657)))

(declare-fun b!1338436 () Bool)

(declare-fun res!888133 () Bool)

(assert (=> b!1338436 (=> (not res!888133) (not e!762140))))

(assert (=> b!1338436 (= res!888133 (= (getValueByKey!721 (toList!10897 lt!593657) (_1!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun b!1338437 () Bool)

(assert (=> b!1338437 (= e!762140 (contains!9007 (toList!10897 lt!593657) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(assert (= (and d!143925 res!888134) b!1338436))

(assert (= (and b!1338436 res!888133) b!1338437))

(declare-fun m!1226729 () Bool)

(assert (=> d!143925 m!1226729))

(declare-fun m!1226731 () Bool)

(assert (=> d!143925 m!1226731))

(declare-fun m!1226733 () Bool)

(assert (=> d!143925 m!1226733))

(declare-fun m!1226735 () Bool)

(assert (=> d!143925 m!1226735))

(declare-fun m!1226737 () Bool)

(assert (=> b!1338436 m!1226737))

(declare-fun m!1226739 () Bool)

(assert (=> b!1338437 m!1226739))

(assert (=> b!1338264 d!143925))

(assert (=> b!1338308 d!143899))

(declare-fun d!143927 () Bool)

(declare-fun e!762141 () Bool)

(assert (=> d!143927 e!762141))

(declare-fun res!888136 () Bool)

(assert (=> d!143927 (=> (not res!888136) (not e!762141))))

(declare-fun lt!593661 () ListLongMap!21763)

(assert (=> d!143927 (= res!888136 (contains!9004 lt!593661 (_1!12057 (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun lt!593662 () List!31260)

(assert (=> d!143927 (= lt!593661 (ListLongMap!21764 lt!593662))))

(declare-fun lt!593660 () Unit!43899)

(declare-fun lt!593663 () Unit!43899)

(assert (=> d!143927 (= lt!593660 lt!593663)))

(assert (=> d!143927 (= (getValueByKey!721 lt!593662 (_1!12057 (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (Some!771 (_2!12057 (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143927 (= lt!593663 (lemmaContainsTupThenGetReturnValue!364 lt!593662 (_1!12057 (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (_2!12057 (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143927 (= lt!593662 (insertStrictlySorted!493 (toList!10897 (ite c!126167 call!65003 (ite c!126170 call!65001 call!64999))) (_1!12057 (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (_2!12057 (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143927 (= (+!4725 (ite c!126167 call!65003 (ite c!126170 call!65001 call!64999)) (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) lt!593661)))

(declare-fun b!1338438 () Bool)

(declare-fun res!888135 () Bool)

(assert (=> b!1338438 (=> (not res!888135) (not e!762141))))

(assert (=> b!1338438 (= res!888135 (= (getValueByKey!721 (toList!10897 lt!593661) (_1!12057 (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (Some!771 (_2!12057 (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))))

(declare-fun b!1338439 () Bool)

(assert (=> b!1338439 (= e!762141 (contains!9007 (toList!10897 lt!593661) (ite (or c!126167 c!126170) (tuple2!24095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (= (and d!143927 res!888136) b!1338438))

(assert (= (and b!1338438 res!888135) b!1338439))

(declare-fun m!1226741 () Bool)

(assert (=> d!143927 m!1226741))

(declare-fun m!1226743 () Bool)

(assert (=> d!143927 m!1226743))

(declare-fun m!1226745 () Bool)

(assert (=> d!143927 m!1226745))

(declare-fun m!1226747 () Bool)

(assert (=> d!143927 m!1226747))

(declare-fun m!1226749 () Bool)

(assert (=> b!1338438 m!1226749))

(declare-fun m!1226751 () Bool)

(assert (=> b!1338439 m!1226751))

(assert (=> bm!65000 d!143927))

(assert (=> b!1338250 d!143919))

(declare-fun d!143929 () Bool)

(assert (=> d!143929 (= (apply!1071 (+!4725 lt!593529 (tuple2!24095 lt!593516 minValue!1262)) lt!593515) (get!22176 (getValueByKey!721 (toList!10897 (+!4725 lt!593529 (tuple2!24095 lt!593516 minValue!1262))) lt!593515)))))

(declare-fun bs!38326 () Bool)

(assert (= bs!38326 d!143929))

(declare-fun m!1226753 () Bool)

(assert (=> bs!38326 m!1226753))

(assert (=> bs!38326 m!1226753))

(declare-fun m!1226755 () Bool)

(assert (=> bs!38326 m!1226755))

(assert (=> b!1338250 d!143929))

(declare-fun d!143931 () Bool)

(assert (=> d!143931 (= (apply!1071 (+!4725 lt!593510 (tuple2!24095 lt!593527 minValue!1262)) lt!593514) (apply!1071 lt!593510 lt!593514))))

(declare-fun lt!593664 () Unit!43899)

(assert (=> d!143931 (= lt!593664 (choose!1977 lt!593510 lt!593527 minValue!1262 lt!593514))))

(declare-fun e!762142 () Bool)

(assert (=> d!143931 e!762142))

(declare-fun res!888137 () Bool)

(assert (=> d!143931 (=> (not res!888137) (not e!762142))))

(assert (=> d!143931 (= res!888137 (contains!9004 lt!593510 lt!593514))))

(assert (=> d!143931 (= (addApplyDifferent!574 lt!593510 lt!593527 minValue!1262 lt!593514) lt!593664)))

(declare-fun b!1338440 () Bool)

(assert (=> b!1338440 (= e!762142 (not (= lt!593514 lt!593527)))))

(assert (= (and d!143931 res!888137) b!1338440))

(assert (=> d!143931 m!1226391))

(assert (=> d!143931 m!1226391))

(assert (=> d!143931 m!1226393))

(declare-fun m!1226757 () Bool)

(assert (=> d!143931 m!1226757))

(declare-fun m!1226759 () Bool)

(assert (=> d!143931 m!1226759))

(assert (=> d!143931 m!1226389))

(assert (=> b!1338250 d!143931))

(declare-fun d!143933 () Bool)

(declare-fun e!762143 () Bool)

(assert (=> d!143933 e!762143))

(declare-fun res!888139 () Bool)

(assert (=> d!143933 (=> (not res!888139) (not e!762143))))

(declare-fun lt!593666 () ListLongMap!21763)

(assert (=> d!143933 (= res!888139 (contains!9004 lt!593666 (_1!12057 (tuple2!24095 lt!593527 minValue!1262))))))

(declare-fun lt!593667 () List!31260)

(assert (=> d!143933 (= lt!593666 (ListLongMap!21764 lt!593667))))

(declare-fun lt!593665 () Unit!43899)

(declare-fun lt!593668 () Unit!43899)

(assert (=> d!143933 (= lt!593665 lt!593668)))

(assert (=> d!143933 (= (getValueByKey!721 lt!593667 (_1!12057 (tuple2!24095 lt!593527 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593527 minValue!1262))))))

(assert (=> d!143933 (= lt!593668 (lemmaContainsTupThenGetReturnValue!364 lt!593667 (_1!12057 (tuple2!24095 lt!593527 minValue!1262)) (_2!12057 (tuple2!24095 lt!593527 minValue!1262))))))

(assert (=> d!143933 (= lt!593667 (insertStrictlySorted!493 (toList!10897 lt!593510) (_1!12057 (tuple2!24095 lt!593527 minValue!1262)) (_2!12057 (tuple2!24095 lt!593527 minValue!1262))))))

(assert (=> d!143933 (= (+!4725 lt!593510 (tuple2!24095 lt!593527 minValue!1262)) lt!593666)))

(declare-fun b!1338441 () Bool)

(declare-fun res!888138 () Bool)

(assert (=> b!1338441 (=> (not res!888138) (not e!762143))))

(assert (=> b!1338441 (= res!888138 (= (getValueByKey!721 (toList!10897 lt!593666) (_1!12057 (tuple2!24095 lt!593527 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593527 minValue!1262)))))))

(declare-fun b!1338442 () Bool)

(assert (=> b!1338442 (= e!762143 (contains!9007 (toList!10897 lt!593666) (tuple2!24095 lt!593527 minValue!1262)))))

(assert (= (and d!143933 res!888139) b!1338441))

(assert (= (and b!1338441 res!888138) b!1338442))

(declare-fun m!1226761 () Bool)

(assert (=> d!143933 m!1226761))

(declare-fun m!1226763 () Bool)

(assert (=> d!143933 m!1226763))

(declare-fun m!1226765 () Bool)

(assert (=> d!143933 m!1226765))

(declare-fun m!1226767 () Bool)

(assert (=> d!143933 m!1226767))

(declare-fun m!1226769 () Bool)

(assert (=> b!1338441 m!1226769))

(declare-fun m!1226771 () Bool)

(assert (=> b!1338442 m!1226771))

(assert (=> b!1338250 d!143933))

(declare-fun d!143935 () Bool)

(declare-fun e!762144 () Bool)

(assert (=> d!143935 e!762144))

(declare-fun res!888141 () Bool)

(assert (=> d!143935 (=> (not res!888141) (not e!762144))))

(declare-fun lt!593670 () ListLongMap!21763)

(assert (=> d!143935 (= res!888141 (contains!9004 lt!593670 (_1!12057 (tuple2!24095 lt!593516 minValue!1262))))))

(declare-fun lt!593671 () List!31260)

(assert (=> d!143935 (= lt!593670 (ListLongMap!21764 lt!593671))))

(declare-fun lt!593669 () Unit!43899)

(declare-fun lt!593672 () Unit!43899)

(assert (=> d!143935 (= lt!593669 lt!593672)))

(assert (=> d!143935 (= (getValueByKey!721 lt!593671 (_1!12057 (tuple2!24095 lt!593516 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593516 minValue!1262))))))

(assert (=> d!143935 (= lt!593672 (lemmaContainsTupThenGetReturnValue!364 lt!593671 (_1!12057 (tuple2!24095 lt!593516 minValue!1262)) (_2!12057 (tuple2!24095 lt!593516 minValue!1262))))))

(assert (=> d!143935 (= lt!593671 (insertStrictlySorted!493 (toList!10897 lt!593529) (_1!12057 (tuple2!24095 lt!593516 minValue!1262)) (_2!12057 (tuple2!24095 lt!593516 minValue!1262))))))

(assert (=> d!143935 (= (+!4725 lt!593529 (tuple2!24095 lt!593516 minValue!1262)) lt!593670)))

(declare-fun b!1338443 () Bool)

(declare-fun res!888140 () Bool)

(assert (=> b!1338443 (=> (not res!888140) (not e!762144))))

(assert (=> b!1338443 (= res!888140 (= (getValueByKey!721 (toList!10897 lt!593670) (_1!12057 (tuple2!24095 lt!593516 minValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593516 minValue!1262)))))))

(declare-fun b!1338444 () Bool)

(assert (=> b!1338444 (= e!762144 (contains!9007 (toList!10897 lt!593670) (tuple2!24095 lt!593516 minValue!1262)))))

(assert (= (and d!143935 res!888141) b!1338443))

(assert (= (and b!1338443 res!888140) b!1338444))

(declare-fun m!1226773 () Bool)

(assert (=> d!143935 m!1226773))

(declare-fun m!1226775 () Bool)

(assert (=> d!143935 m!1226775))

(declare-fun m!1226777 () Bool)

(assert (=> d!143935 m!1226777))

(declare-fun m!1226779 () Bool)

(assert (=> d!143935 m!1226779))

(declare-fun m!1226781 () Bool)

(assert (=> b!1338443 m!1226781))

(declare-fun m!1226783 () Bool)

(assert (=> b!1338444 m!1226783))

(assert (=> b!1338250 d!143935))

(declare-fun d!143937 () Bool)

(assert (=> d!143937 (= (apply!1071 (+!4725 lt!593512 (tuple2!24095 lt!593509 zeroValue!1262)) lt!593513) (apply!1071 lt!593512 lt!593513))))

(declare-fun lt!593673 () Unit!43899)

(assert (=> d!143937 (= lt!593673 (choose!1977 lt!593512 lt!593509 zeroValue!1262 lt!593513))))

(declare-fun e!762145 () Bool)

(assert (=> d!143937 e!762145))

(declare-fun res!888142 () Bool)

(assert (=> d!143937 (=> (not res!888142) (not e!762145))))

(assert (=> d!143937 (= res!888142 (contains!9004 lt!593512 lt!593513))))

(assert (=> d!143937 (= (addApplyDifferent!574 lt!593512 lt!593509 zeroValue!1262 lt!593513) lt!593673)))

(declare-fun b!1338445 () Bool)

(assert (=> b!1338445 (= e!762145 (not (= lt!593513 lt!593509)))))

(assert (= (and d!143937 res!888142) b!1338445))

(assert (=> d!143937 m!1226387))

(assert (=> d!143937 m!1226387))

(assert (=> d!143937 m!1226405))

(declare-fun m!1226785 () Bool)

(assert (=> d!143937 m!1226785))

(declare-fun m!1226787 () Bool)

(assert (=> d!143937 m!1226787))

(assert (=> d!143937 m!1226395))

(assert (=> b!1338250 d!143937))

(declare-fun d!143939 () Bool)

(assert (=> d!143939 (contains!9004 (+!4725 lt!593521 (tuple2!24095 lt!593522 zeroValue!1262)) lt!593525)))

(declare-fun lt!593674 () Unit!43899)

(assert (=> d!143939 (= lt!593674 (choose!1978 lt!593521 lt!593522 zeroValue!1262 lt!593525))))

(assert (=> d!143939 (contains!9004 lt!593521 lt!593525)))

(assert (=> d!143939 (= (addStillContains!1197 lt!593521 lt!593522 zeroValue!1262 lt!593525) lt!593674)))

(declare-fun bs!38327 () Bool)

(assert (= bs!38327 d!143939))

(assert (=> bs!38327 m!1226385))

(assert (=> bs!38327 m!1226385))

(assert (=> bs!38327 m!1226403))

(declare-fun m!1226789 () Bool)

(assert (=> bs!38327 m!1226789))

(declare-fun m!1226791 () Bool)

(assert (=> bs!38327 m!1226791))

(assert (=> b!1338250 d!143939))

(declare-fun d!143941 () Bool)

(declare-fun e!762146 () Bool)

(assert (=> d!143941 e!762146))

(declare-fun res!888144 () Bool)

(assert (=> d!143941 (=> (not res!888144) (not e!762146))))

(declare-fun lt!593676 () ListLongMap!21763)

(assert (=> d!143941 (= res!888144 (contains!9004 lt!593676 (_1!12057 (tuple2!24095 lt!593522 zeroValue!1262))))))

(declare-fun lt!593677 () List!31260)

(assert (=> d!143941 (= lt!593676 (ListLongMap!21764 lt!593677))))

(declare-fun lt!593675 () Unit!43899)

(declare-fun lt!593678 () Unit!43899)

(assert (=> d!143941 (= lt!593675 lt!593678)))

(assert (=> d!143941 (= (getValueByKey!721 lt!593677 (_1!12057 (tuple2!24095 lt!593522 zeroValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593522 zeroValue!1262))))))

(assert (=> d!143941 (= lt!593678 (lemmaContainsTupThenGetReturnValue!364 lt!593677 (_1!12057 (tuple2!24095 lt!593522 zeroValue!1262)) (_2!12057 (tuple2!24095 lt!593522 zeroValue!1262))))))

(assert (=> d!143941 (= lt!593677 (insertStrictlySorted!493 (toList!10897 lt!593521) (_1!12057 (tuple2!24095 lt!593522 zeroValue!1262)) (_2!12057 (tuple2!24095 lt!593522 zeroValue!1262))))))

(assert (=> d!143941 (= (+!4725 lt!593521 (tuple2!24095 lt!593522 zeroValue!1262)) lt!593676)))

(declare-fun b!1338446 () Bool)

(declare-fun res!888143 () Bool)

(assert (=> b!1338446 (=> (not res!888143) (not e!762146))))

(assert (=> b!1338446 (= res!888143 (= (getValueByKey!721 (toList!10897 lt!593676) (_1!12057 (tuple2!24095 lt!593522 zeroValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593522 zeroValue!1262)))))))

(declare-fun b!1338447 () Bool)

(assert (=> b!1338447 (= e!762146 (contains!9007 (toList!10897 lt!593676) (tuple2!24095 lt!593522 zeroValue!1262)))))

(assert (= (and d!143941 res!888144) b!1338446))

(assert (= (and b!1338446 res!888143) b!1338447))

(declare-fun m!1226793 () Bool)

(assert (=> d!143941 m!1226793))

(declare-fun m!1226795 () Bool)

(assert (=> d!143941 m!1226795))

(declare-fun m!1226797 () Bool)

(assert (=> d!143941 m!1226797))

(declare-fun m!1226799 () Bool)

(assert (=> d!143941 m!1226799))

(declare-fun m!1226801 () Bool)

(assert (=> b!1338446 m!1226801))

(declare-fun m!1226803 () Bool)

(assert (=> b!1338447 m!1226803))

(assert (=> b!1338250 d!143941))

(declare-fun d!143943 () Bool)

(assert (=> d!143943 (= (apply!1071 lt!593510 lt!593514) (get!22176 (getValueByKey!721 (toList!10897 lt!593510) lt!593514)))))

(declare-fun bs!38328 () Bool)

(assert (= bs!38328 d!143943))

(declare-fun m!1226805 () Bool)

(assert (=> bs!38328 m!1226805))

(assert (=> bs!38328 m!1226805))

(declare-fun m!1226807 () Bool)

(assert (=> bs!38328 m!1226807))

(assert (=> b!1338250 d!143943))

(declare-fun d!143945 () Bool)

(assert (=> d!143945 (= (apply!1071 (+!4725 lt!593529 (tuple2!24095 lt!593516 minValue!1262)) lt!593515) (apply!1071 lt!593529 lt!593515))))

(declare-fun lt!593679 () Unit!43899)

(assert (=> d!143945 (= lt!593679 (choose!1977 lt!593529 lt!593516 minValue!1262 lt!593515))))

(declare-fun e!762147 () Bool)

(assert (=> d!143945 e!762147))

(declare-fun res!888145 () Bool)

(assert (=> d!143945 (=> (not res!888145) (not e!762147))))

(assert (=> d!143945 (= res!888145 (contains!9004 lt!593529 lt!593515))))

(assert (=> d!143945 (= (addApplyDifferent!574 lt!593529 lt!593516 minValue!1262 lt!593515) lt!593679)))

(declare-fun b!1338448 () Bool)

(assert (=> b!1338448 (= e!762147 (not (= lt!593515 lt!593516)))))

(assert (= (and d!143945 res!888145) b!1338448))

(assert (=> d!143945 m!1226397))

(assert (=> d!143945 m!1226397))

(assert (=> d!143945 m!1226399))

(declare-fun m!1226809 () Bool)

(assert (=> d!143945 m!1226809))

(declare-fun m!1226811 () Bool)

(assert (=> d!143945 m!1226811))

(assert (=> d!143945 m!1226377))

(assert (=> b!1338250 d!143945))

(declare-fun d!143947 () Bool)

(declare-fun e!762148 () Bool)

(assert (=> d!143947 e!762148))

(declare-fun res!888147 () Bool)

(assert (=> d!143947 (=> (not res!888147) (not e!762148))))

(declare-fun lt!593681 () ListLongMap!21763)

(assert (=> d!143947 (= res!888147 (contains!9004 lt!593681 (_1!12057 (tuple2!24095 lt!593509 zeroValue!1262))))))

(declare-fun lt!593682 () List!31260)

(assert (=> d!143947 (= lt!593681 (ListLongMap!21764 lt!593682))))

(declare-fun lt!593680 () Unit!43899)

(declare-fun lt!593683 () Unit!43899)

(assert (=> d!143947 (= lt!593680 lt!593683)))

(assert (=> d!143947 (= (getValueByKey!721 lt!593682 (_1!12057 (tuple2!24095 lt!593509 zeroValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593509 zeroValue!1262))))))

(assert (=> d!143947 (= lt!593683 (lemmaContainsTupThenGetReturnValue!364 lt!593682 (_1!12057 (tuple2!24095 lt!593509 zeroValue!1262)) (_2!12057 (tuple2!24095 lt!593509 zeroValue!1262))))))

(assert (=> d!143947 (= lt!593682 (insertStrictlySorted!493 (toList!10897 lt!593512) (_1!12057 (tuple2!24095 lt!593509 zeroValue!1262)) (_2!12057 (tuple2!24095 lt!593509 zeroValue!1262))))))

(assert (=> d!143947 (= (+!4725 lt!593512 (tuple2!24095 lt!593509 zeroValue!1262)) lt!593681)))

(declare-fun b!1338449 () Bool)

(declare-fun res!888146 () Bool)

(assert (=> b!1338449 (=> (not res!888146) (not e!762148))))

(assert (=> b!1338449 (= res!888146 (= (getValueByKey!721 (toList!10897 lt!593681) (_1!12057 (tuple2!24095 lt!593509 zeroValue!1262))) (Some!771 (_2!12057 (tuple2!24095 lt!593509 zeroValue!1262)))))))

(declare-fun b!1338450 () Bool)

(assert (=> b!1338450 (= e!762148 (contains!9007 (toList!10897 lt!593681) (tuple2!24095 lt!593509 zeroValue!1262)))))

(assert (= (and d!143947 res!888147) b!1338449))

(assert (= (and b!1338449 res!888146) b!1338450))

(declare-fun m!1226813 () Bool)

(assert (=> d!143947 m!1226813))

(declare-fun m!1226815 () Bool)

(assert (=> d!143947 m!1226815))

(declare-fun m!1226817 () Bool)

(assert (=> d!143947 m!1226817))

(declare-fun m!1226819 () Bool)

(assert (=> d!143947 m!1226819))

(declare-fun m!1226821 () Bool)

(assert (=> b!1338449 m!1226821))

(declare-fun m!1226823 () Bool)

(assert (=> b!1338450 m!1226823))

(assert (=> b!1338250 d!143947))

(declare-fun d!143949 () Bool)

(assert (=> d!143949 (= (apply!1071 (+!4725 lt!593510 (tuple2!24095 lt!593527 minValue!1262)) lt!593514) (get!22176 (getValueByKey!721 (toList!10897 (+!4725 lt!593510 (tuple2!24095 lt!593527 minValue!1262))) lt!593514)))))

(declare-fun bs!38329 () Bool)

(assert (= bs!38329 d!143949))

(declare-fun m!1226825 () Bool)

(assert (=> bs!38329 m!1226825))

(assert (=> bs!38329 m!1226825))

(declare-fun m!1226827 () Bool)

(assert (=> bs!38329 m!1226827))

(assert (=> b!1338250 d!143949))

(declare-fun d!143951 () Bool)

(assert (=> d!143951 (= (apply!1071 (+!4725 lt!593512 (tuple2!24095 lt!593509 zeroValue!1262)) lt!593513) (get!22176 (getValueByKey!721 (toList!10897 (+!4725 lt!593512 (tuple2!24095 lt!593509 zeroValue!1262))) lt!593513)))))

(declare-fun bs!38330 () Bool)

(assert (= bs!38330 d!143951))

(declare-fun m!1226829 () Bool)

(assert (=> bs!38330 m!1226829))

(assert (=> bs!38330 m!1226829))

(declare-fun m!1226831 () Bool)

(assert (=> bs!38330 m!1226831))

(assert (=> b!1338250 d!143951))

(declare-fun d!143953 () Bool)

(assert (=> d!143953 (= (apply!1071 lt!593529 lt!593515) (get!22176 (getValueByKey!721 (toList!10897 lt!593529) lt!593515)))))

(declare-fun bs!38331 () Bool)

(assert (= bs!38331 d!143953))

(declare-fun m!1226833 () Bool)

(assert (=> bs!38331 m!1226833))

(assert (=> bs!38331 m!1226833))

(declare-fun m!1226835 () Bool)

(assert (=> bs!38331 m!1226835))

(assert (=> b!1338250 d!143953))

(declare-fun d!143955 () Bool)

(declare-fun e!762150 () Bool)

(assert (=> d!143955 e!762150))

(declare-fun res!888148 () Bool)

(assert (=> d!143955 (=> res!888148 e!762150)))

(declare-fun lt!593686 () Bool)

(assert (=> d!143955 (= res!888148 (not lt!593686))))

(declare-fun lt!593684 () Bool)

(assert (=> d!143955 (= lt!593686 lt!593684)))

(declare-fun lt!593687 () Unit!43899)

(declare-fun e!762149 () Unit!43899)

(assert (=> d!143955 (= lt!593687 e!762149)))

(declare-fun c!126214 () Bool)

(assert (=> d!143955 (= c!126214 lt!593684)))

(assert (=> d!143955 (= lt!593684 (containsKey!739 (toList!10897 (+!4725 lt!593521 (tuple2!24095 lt!593522 zeroValue!1262))) lt!593525))))

(assert (=> d!143955 (= (contains!9004 (+!4725 lt!593521 (tuple2!24095 lt!593522 zeroValue!1262)) lt!593525) lt!593686)))

(declare-fun b!1338451 () Bool)

(declare-fun lt!593685 () Unit!43899)

(assert (=> b!1338451 (= e!762149 lt!593685)))

(assert (=> b!1338451 (= lt!593685 (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 (+!4725 lt!593521 (tuple2!24095 lt!593522 zeroValue!1262))) lt!593525))))

(assert (=> b!1338451 (isDefined!524 (getValueByKey!721 (toList!10897 (+!4725 lt!593521 (tuple2!24095 lt!593522 zeroValue!1262))) lt!593525))))

(declare-fun b!1338452 () Bool)

(declare-fun Unit!43909 () Unit!43899)

(assert (=> b!1338452 (= e!762149 Unit!43909)))

(declare-fun b!1338453 () Bool)

(assert (=> b!1338453 (= e!762150 (isDefined!524 (getValueByKey!721 (toList!10897 (+!4725 lt!593521 (tuple2!24095 lt!593522 zeroValue!1262))) lt!593525)))))

(assert (= (and d!143955 c!126214) b!1338451))

(assert (= (and d!143955 (not c!126214)) b!1338452))

(assert (= (and d!143955 (not res!888148)) b!1338453))

(declare-fun m!1226837 () Bool)

(assert (=> d!143955 m!1226837))

(declare-fun m!1226839 () Bool)

(assert (=> b!1338451 m!1226839))

(declare-fun m!1226841 () Bool)

(assert (=> b!1338451 m!1226841))

(assert (=> b!1338451 m!1226841))

(declare-fun m!1226843 () Bool)

(assert (=> b!1338451 m!1226843))

(assert (=> b!1338453 m!1226841))

(assert (=> b!1338453 m!1226841))

(assert (=> b!1338453 m!1226843))

(assert (=> b!1338250 d!143955))

(declare-fun d!143957 () Bool)

(assert (=> d!143957 (= (apply!1071 lt!593512 lt!593513) (get!22176 (getValueByKey!721 (toList!10897 lt!593512) lt!593513)))))

(declare-fun bs!38332 () Bool)

(assert (= bs!38332 d!143957))

(declare-fun m!1226845 () Bool)

(assert (=> bs!38332 m!1226845))

(assert (=> bs!38332 m!1226845))

(declare-fun m!1226847 () Bool)

(assert (=> bs!38332 m!1226847))

(assert (=> b!1338250 d!143957))

(declare-fun d!143959 () Bool)

(declare-fun e!762152 () Bool)

(assert (=> d!143959 e!762152))

(declare-fun res!888149 () Bool)

(assert (=> d!143959 (=> res!888149 e!762152)))

(declare-fun lt!593690 () Bool)

(assert (=> d!143959 (= res!888149 (not lt!593690))))

(declare-fun lt!593688 () Bool)

(assert (=> d!143959 (= lt!593690 lt!593688)))

(declare-fun lt!593691 () Unit!43899)

(declare-fun e!762151 () Unit!43899)

(assert (=> d!143959 (= lt!593691 e!762151)))

(declare-fun c!126215 () Bool)

(assert (=> d!143959 (= c!126215 lt!593688)))

(assert (=> d!143959 (= lt!593688 (containsKey!739 (toList!10897 lt!593556) (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> d!143959 (= (contains!9004 lt!593556 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) lt!593690)))

(declare-fun b!1338454 () Bool)

(declare-fun lt!593689 () Unit!43899)

(assert (=> b!1338454 (= e!762151 lt!593689)))

(assert (=> b!1338454 (= lt!593689 (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 lt!593556) (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1338454 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593556) (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun b!1338455 () Bool)

(declare-fun Unit!43910 () Unit!43899)

(assert (=> b!1338455 (= e!762151 Unit!43910)))

(declare-fun b!1338456 () Bool)

(assert (=> b!1338456 (= e!762152 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593556) (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))))

(assert (= (and d!143959 c!126215) b!1338454))

(assert (= (and d!143959 (not c!126215)) b!1338455))

(assert (= (and d!143959 (not res!888149)) b!1338456))

(assert (=> d!143959 m!1226471))

(declare-fun m!1226849 () Bool)

(assert (=> d!143959 m!1226849))

(assert (=> b!1338454 m!1226471))

(declare-fun m!1226851 () Bool)

(assert (=> b!1338454 m!1226851))

(assert (=> b!1338454 m!1226471))

(declare-fun m!1226853 () Bool)

(assert (=> b!1338454 m!1226853))

(assert (=> b!1338454 m!1226853))

(declare-fun m!1226855 () Bool)

(assert (=> b!1338454 m!1226855))

(assert (=> b!1338456 m!1226471))

(assert (=> b!1338456 m!1226853))

(assert (=> b!1338456 m!1226853))

(assert (=> b!1338456 m!1226855))

(assert (=> b!1338287 d!143959))

(declare-fun d!143961 () Bool)

(assert (=> d!143961 (isDefined!524 (getValueByKey!721 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(declare-fun lt!593692 () Unit!43899)

(assert (=> d!143961 (= lt!593692 (choose!1979 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(declare-fun e!762153 () Bool)

(assert (=> d!143961 e!762153))

(declare-fun res!888150 () Bool)

(assert (=> d!143961 (=> (not res!888150) (not e!762153))))

(assert (=> d!143961 (= res!888150 (isStrictlySorted!877 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))))

(assert (=> d!143961 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153) lt!593692)))

(declare-fun b!1338457 () Bool)

(assert (=> b!1338457 (= e!762153 (containsKey!739 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(assert (= (and d!143961 res!888150) b!1338457))

(assert (=> d!143961 m!1226433))

(assert (=> d!143961 m!1226433))

(assert (=> d!143961 m!1226435))

(declare-fun m!1226857 () Bool)

(assert (=> d!143961 m!1226857))

(declare-fun m!1226859 () Bool)

(assert (=> d!143961 m!1226859))

(assert (=> b!1338457 m!1226429))

(assert (=> b!1338273 d!143961))

(assert (=> b!1338273 d!143905))

(assert (=> b!1338273 d!143907))

(assert (=> bm!65004 d!143873))

(declare-fun d!143963 () Bool)

(assert (=> d!143963 (arrayContainsKey!0 _keys!1590 lt!593565 #b00000000000000000000000000000000)))

(declare-fun lt!593695 () Unit!43899)

(declare-fun choose!13 (array!90785 (_ BitVec 64) (_ BitVec 32)) Unit!43899)

(assert (=> d!143963 (= lt!593695 (choose!13 _keys!1590 lt!593565 #b00000000000000000000000000000000))))

(assert (=> d!143963 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!143963 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!593565 #b00000000000000000000000000000000) lt!593695)))

(declare-fun bs!38333 () Bool)

(assert (= bs!38333 d!143963))

(assert (=> bs!38333 m!1226495))

(declare-fun m!1226861 () Bool)

(assert (=> bs!38333 m!1226861))

(assert (=> b!1338305 d!143963))

(declare-fun d!143965 () Bool)

(declare-fun res!888155 () Bool)

(declare-fun e!762158 () Bool)

(assert (=> d!143965 (=> res!888155 e!762158)))

(assert (=> d!143965 (= res!888155 (= (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) lt!593565))))

(assert (=> d!143965 (= (arrayContainsKey!0 _keys!1590 lt!593565 #b00000000000000000000000000000000) e!762158)))

(declare-fun b!1338462 () Bool)

(declare-fun e!762159 () Bool)

(assert (=> b!1338462 (= e!762158 e!762159)))

(declare-fun res!888156 () Bool)

(assert (=> b!1338462 (=> (not res!888156) (not e!762159))))

(assert (=> b!1338462 (= res!888156 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44401 _keys!1590)))))

(declare-fun b!1338463 () Bool)

(assert (=> b!1338463 (= e!762159 (arrayContainsKey!0 _keys!1590 lt!593565 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!143965 (not res!888155)) b!1338462))

(assert (= (and b!1338462 res!888156) b!1338463))

(assert (=> d!143965 m!1226359))

(declare-fun m!1226863 () Bool)

(assert (=> b!1338463 m!1226863))

(assert (=> b!1338305 d!143965))

(declare-fun b!1338476 () Bool)

(declare-fun e!762166 () SeekEntryResult!10048)

(declare-fun lt!593704 () SeekEntryResult!10048)

(assert (=> b!1338476 (= e!762166 (MissingZero!10048 (index!42564 lt!593704)))))

(declare-fun b!1338477 () Bool)

(declare-fun e!762168 () SeekEntryResult!10048)

(assert (=> b!1338477 (= e!762168 (Found!10048 (index!42564 lt!593704)))))

(declare-fun b!1338478 () Bool)

(declare-fun e!762167 () SeekEntryResult!10048)

(assert (=> b!1338478 (= e!762167 e!762168)))

(declare-fun lt!593702 () (_ BitVec 64))

(assert (=> b!1338478 (= lt!593702 (select (arr!43850 _keys!1590) (index!42564 lt!593704)))))

(declare-fun c!126222 () Bool)

(assert (=> b!1338478 (= c!126222 (= lt!593702 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1338479 () Bool)

(assert (=> b!1338479 (= e!762167 Undefined!10048)))

(declare-fun d!143967 () Bool)

(declare-fun lt!593703 () SeekEntryResult!10048)

(assert (=> d!143967 (and (or ((_ is Undefined!10048) lt!593703) (not ((_ is Found!10048) lt!593703)) (and (bvsge (index!42563 lt!593703) #b00000000000000000000000000000000) (bvslt (index!42563 lt!593703) (size!44401 _keys!1590)))) (or ((_ is Undefined!10048) lt!593703) ((_ is Found!10048) lt!593703) (not ((_ is MissingZero!10048) lt!593703)) (and (bvsge (index!42562 lt!593703) #b00000000000000000000000000000000) (bvslt (index!42562 lt!593703) (size!44401 _keys!1590)))) (or ((_ is Undefined!10048) lt!593703) ((_ is Found!10048) lt!593703) ((_ is MissingZero!10048) lt!593703) (not ((_ is MissingVacant!10048) lt!593703)) (and (bvsge (index!42565 lt!593703) #b00000000000000000000000000000000) (bvslt (index!42565 lt!593703) (size!44401 _keys!1590)))) (or ((_ is Undefined!10048) lt!593703) (ite ((_ is Found!10048) lt!593703) (= (select (arr!43850 _keys!1590) (index!42563 lt!593703)) (select (arr!43850 _keys!1590) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10048) lt!593703) (= (select (arr!43850 _keys!1590) (index!42562 lt!593703)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10048) lt!593703) (= (select (arr!43850 _keys!1590) (index!42565 lt!593703)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143967 (= lt!593703 e!762167)))

(declare-fun c!126223 () Bool)

(assert (=> d!143967 (= c!126223 (and ((_ is Intermediate!10048) lt!593704) (undefined!10860 lt!593704)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!90785 (_ BitVec 32)) SeekEntryResult!10048)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!143967 (= lt!593704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) mask!1998) (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998))))

(assert (=> d!143967 (validMask!0 mask!1998)))

(assert (=> d!143967 (= (seekEntryOrOpen!0 (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) lt!593703)))

(declare-fun b!1338480 () Bool)

(declare-fun c!126224 () Bool)

(assert (=> b!1338480 (= c!126224 (= lt!593702 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1338480 (= e!762168 e!762166)))

(declare-fun b!1338481 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!90785 (_ BitVec 32)) SeekEntryResult!10048)

(assert (=> b!1338481 (= e!762166 (seekKeyOrZeroReturnVacant!0 (x!119537 lt!593704) (index!42564 lt!593704) (index!42564 lt!593704) (select (arr!43850 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998))))

(assert (= (and d!143967 c!126223) b!1338479))

(assert (= (and d!143967 (not c!126223)) b!1338478))

(assert (= (and b!1338478 c!126222) b!1338477))

(assert (= (and b!1338478 (not c!126222)) b!1338480))

(assert (= (and b!1338480 c!126224) b!1338476))

(assert (= (and b!1338480 (not c!126224)) b!1338481))

(declare-fun m!1226865 () Bool)

(assert (=> b!1338478 m!1226865))

(declare-fun m!1226867 () Bool)

(assert (=> d!143967 m!1226867))

(declare-fun m!1226869 () Bool)

(assert (=> d!143967 m!1226869))

(assert (=> d!143967 m!1226359))

(declare-fun m!1226871 () Bool)

(assert (=> d!143967 m!1226871))

(declare-fun m!1226873 () Bool)

(assert (=> d!143967 m!1226873))

(assert (=> d!143967 m!1226359))

(assert (=> d!143967 m!1226869))

(assert (=> d!143967 m!1226317))

(declare-fun m!1226875 () Bool)

(assert (=> d!143967 m!1226875))

(assert (=> b!1338481 m!1226359))

(declare-fun m!1226877 () Bool)

(assert (=> b!1338481 m!1226877))

(assert (=> b!1338305 d!143967))

(declare-fun d!143969 () Bool)

(declare-fun e!762170 () Bool)

(assert (=> d!143969 e!762170))

(declare-fun res!888157 () Bool)

(assert (=> d!143969 (=> res!888157 e!762170)))

(declare-fun lt!593707 () Bool)

(assert (=> d!143969 (= res!888157 (not lt!593707))))

(declare-fun lt!593705 () Bool)

(assert (=> d!143969 (= lt!593707 lt!593705)))

(declare-fun lt!593708 () Unit!43899)

(declare-fun e!762169 () Unit!43899)

(assert (=> d!143969 (= lt!593708 e!762169)))

(declare-fun c!126225 () Bool)

(assert (=> d!143969 (= c!126225 lt!593705)))

(assert (=> d!143969 (= lt!593705 (containsKey!739 (toList!10897 lt!593530) (select (arr!43850 _keys!1590) from!1980)))))

(assert (=> d!143969 (= (contains!9004 lt!593530 (select (arr!43850 _keys!1590) from!1980)) lt!593707)))

(declare-fun b!1338482 () Bool)

(declare-fun lt!593706 () Unit!43899)

(assert (=> b!1338482 (= e!762169 lt!593706)))

(assert (=> b!1338482 (= lt!593706 (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 lt!593530) (select (arr!43850 _keys!1590) from!1980)))))

(assert (=> b!1338482 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593530) (select (arr!43850 _keys!1590) from!1980)))))

(declare-fun b!1338483 () Bool)

(declare-fun Unit!43911 () Unit!43899)

(assert (=> b!1338483 (= e!762169 Unit!43911)))

(declare-fun b!1338484 () Bool)

(assert (=> b!1338484 (= e!762170 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593530) (select (arr!43850 _keys!1590) from!1980))))))

(assert (= (and d!143969 c!126225) b!1338482))

(assert (= (and d!143969 (not c!126225)) b!1338483))

(assert (= (and d!143969 (not res!888157)) b!1338484))

(assert (=> d!143969 m!1226311))

(declare-fun m!1226879 () Bool)

(assert (=> d!143969 m!1226879))

(assert (=> b!1338482 m!1226311))

(declare-fun m!1226881 () Bool)

(assert (=> b!1338482 m!1226881))

(assert (=> b!1338482 m!1226311))

(assert (=> b!1338482 m!1226511))

(assert (=> b!1338482 m!1226511))

(declare-fun m!1226883 () Bool)

(assert (=> b!1338482 m!1226883))

(assert (=> b!1338484 m!1226311))

(assert (=> b!1338484 m!1226511))

(assert (=> b!1338484 m!1226511))

(assert (=> b!1338484 m!1226883))

(assert (=> b!1338261 d!143969))

(declare-fun d!143971 () Bool)

(declare-fun e!762172 () Bool)

(assert (=> d!143971 e!762172))

(declare-fun res!888158 () Bool)

(assert (=> d!143971 (=> res!888158 e!762172)))

(declare-fun lt!593711 () Bool)

(assert (=> d!143971 (= res!888158 (not lt!593711))))

(declare-fun lt!593709 () Bool)

(assert (=> d!143971 (= lt!593711 lt!593709)))

(declare-fun lt!593712 () Unit!43899)

(declare-fun e!762171 () Unit!43899)

(assert (=> d!143971 (= lt!593712 e!762171)))

(declare-fun c!126226 () Bool)

(assert (=> d!143971 (= c!126226 lt!593709)))

(assert (=> d!143971 (= lt!593709 (containsKey!739 (toList!10897 lt!593556) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143971 (= (contains!9004 lt!593556 #b1000000000000000000000000000000000000000000000000000000000000000) lt!593711)))

(declare-fun b!1338485 () Bool)

(declare-fun lt!593710 () Unit!43899)

(assert (=> b!1338485 (= e!762171 lt!593710)))

(assert (=> b!1338485 (= lt!593710 (lemmaContainsKeyImpliesGetValueByKeyDefined!484 (toList!10897 lt!593556) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1338485 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593556) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1338486 () Bool)

(declare-fun Unit!43912 () Unit!43899)

(assert (=> b!1338486 (= e!762171 Unit!43912)))

(declare-fun b!1338487 () Bool)

(assert (=> b!1338487 (= e!762172 (isDefined!524 (getValueByKey!721 (toList!10897 lt!593556) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143971 c!126226) b!1338485))

(assert (= (and d!143971 (not c!126226)) b!1338486))

(assert (= (and d!143971 (not res!888158)) b!1338487))

(declare-fun m!1226885 () Bool)

(assert (=> d!143971 m!1226885))

(declare-fun m!1226887 () Bool)

(assert (=> b!1338485 m!1226887))

(assert (=> b!1338485 m!1226645))

(assert (=> b!1338485 m!1226645))

(declare-fun m!1226889 () Bool)

(assert (=> b!1338485 m!1226889))

(assert (=> b!1338487 m!1226645))

(assert (=> b!1338487 m!1226645))

(assert (=> b!1338487 m!1226889))

(assert (=> bm!65009 d!143971))

(declare-fun d!143973 () Bool)

(declare-fun res!888163 () Bool)

(declare-fun e!762177 () Bool)

(assert (=> d!143973 (=> res!888163 e!762177)))

(assert (=> d!143973 (= res!888163 (and ((_ is Cons!31256) (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (= (_1!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)))))

(assert (=> d!143973 (= (containsKey!739 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153) e!762177)))

(declare-fun b!1338492 () Bool)

(declare-fun e!762178 () Bool)

(assert (=> b!1338492 (= e!762177 e!762178)))

(declare-fun res!888164 () Bool)

(assert (=> b!1338492 (=> (not res!888164) (not e!762178))))

(assert (=> b!1338492 (= res!888164 (and (or (not ((_ is Cons!31256) (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) (bvsle (_1!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)) ((_ is Cons!31256) (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (bvslt (_1!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)))))

(declare-fun b!1338493 () Bool)

(assert (=> b!1338493 (= e!762178 (containsKey!739 (t!45597 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) k0!1153))))

(assert (= (and d!143973 (not res!888163)) b!1338492))

(assert (= (and b!1338492 res!888164) b!1338493))

(declare-fun m!1226891 () Bool)

(assert (=> b!1338493 m!1226891))

(assert (=> d!143843 d!143973))

(declare-fun d!143975 () Bool)

(declare-fun res!888165 () Bool)

(declare-fun e!762179 () Bool)

(assert (=> d!143975 (=> res!888165 e!762179)))

(assert (=> d!143975 (= res!888165 (and ((_ is Cons!31256) (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (= (_1!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) k0!1153)))))

(assert (=> d!143975 (= (containsKey!739 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153) e!762179)))

(declare-fun b!1338494 () Bool)

(declare-fun e!762180 () Bool)

(assert (=> b!1338494 (= e!762179 e!762180)))

(declare-fun res!888166 () Bool)

(assert (=> b!1338494 (=> (not res!888166) (not e!762180))))

(assert (=> b!1338494 (= res!888166 (and (or (not ((_ is Cons!31256) (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) (bvsle (_1!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) k0!1153)) ((_ is Cons!31256) (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (bvslt (_1!12057 (h!32465 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) k0!1153)))))

(declare-fun b!1338495 () Bool)

(assert (=> b!1338495 (= e!762180 (containsKey!739 (t!45597 (toList!10897 (getCurrentListMap!5801 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) k0!1153))))

(assert (= (and d!143975 (not res!888165)) b!1338494))

(assert (= (and b!1338494 res!888166) b!1338495))

(declare-fun m!1226893 () Bool)

(assert (=> b!1338495 m!1226893))

(assert (=> d!143847 d!143975))

(assert (=> d!143849 d!143837))

(declare-fun d!143977 () Bool)

(assert (=> d!143977 (= (apply!1071 lt!593530 #b0000000000000000000000000000000000000000000000000000000000000000) (get!22176 (getValueByKey!721 (toList!10897 lt!593530) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38334 () Bool)

(assert (= bs!38334 d!143977))

(assert (=> bs!38334 m!1226683))

(assert (=> bs!38334 m!1226683))

(declare-fun m!1226895 () Bool)

(assert (=> bs!38334 m!1226895))

(assert (=> b!1338263 d!143977))

(declare-fun b!1338496 () Bool)

(declare-fun e!762183 () Bool)

(declare-fun e!762181 () Bool)

(assert (=> b!1338496 (= e!762183 e!762181)))

(declare-fun lt!593715 () (_ BitVec 64))

(assert (=> b!1338496 (= lt!593715 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!593714 () Unit!43899)

(assert (=> b!1338496 (= lt!593714 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!593715 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1338496 (arrayContainsKey!0 _keys!1590 lt!593715 #b00000000000000000000000000000000)))

(declare-fun lt!593713 () Unit!43899)

(assert (=> b!1338496 (= lt!593713 lt!593714)))

(declare-fun res!888167 () Bool)

(assert (=> b!1338496 (= res!888167 (= (seekEntryOrOpen!0 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1590 mask!1998) (Found!10048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1338496 (=> (not res!888167) (not e!762181))))

(declare-fun b!1338497 () Bool)

(declare-fun call!65021 () Bool)

(assert (=> b!1338497 (= e!762183 call!65021)))

(declare-fun d!143979 () Bool)

(declare-fun res!888168 () Bool)

(declare-fun e!762182 () Bool)

(assert (=> d!143979 (=> res!888168 e!762182)))

(assert (=> d!143979 (= res!888168 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44401 _keys!1590)))))

(assert (=> d!143979 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998) e!762182)))

(declare-fun b!1338498 () Bool)

(assert (=> b!1338498 (= e!762181 call!65021)))

(declare-fun bm!65018 () Bool)

(assert (=> bm!65018 (= call!65021 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(declare-fun b!1338499 () Bool)

(assert (=> b!1338499 (= e!762182 e!762183)))

(declare-fun c!126227 () Bool)

(assert (=> b!1338499 (= c!126227 (validKeyInArray!0 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!143979 (not res!888168)) b!1338499))

(assert (= (and b!1338499 c!126227) b!1338496))

(assert (= (and b!1338499 (not c!126227)) b!1338497))

(assert (= (and b!1338496 res!888167) b!1338498))

(assert (= (or b!1338498 b!1338497) bm!65018))

(assert (=> b!1338496 m!1226503))

(declare-fun m!1226897 () Bool)

(assert (=> b!1338496 m!1226897))

(declare-fun m!1226899 () Bool)

(assert (=> b!1338496 m!1226899))

(assert (=> b!1338496 m!1226503))

(declare-fun m!1226901 () Bool)

(assert (=> b!1338496 m!1226901))

(declare-fun m!1226903 () Bool)

(assert (=> bm!65018 m!1226903))

(assert (=> b!1338499 m!1226503))

(assert (=> b!1338499 m!1226503))

(assert (=> b!1338499 m!1226505))

(assert (=> bm!65012 d!143979))

(declare-fun d!143981 () Bool)

(assert (=> d!143981 (= (apply!1071 lt!593556 (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (get!22176 (getValueByKey!721 (toList!10897 lt!593556) (select (arr!43850 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))))

(declare-fun bs!38335 () Bool)

(assert (= bs!38335 d!143981))

(assert (=> bs!38335 m!1226471))

(assert (=> bs!38335 m!1226853))

(assert (=> bs!38335 m!1226853))

(declare-fun m!1226905 () Bool)

(assert (=> bs!38335 m!1226905))

(assert (=> b!1338283 d!143981))

(declare-fun d!143983 () Bool)

(declare-fun c!126228 () Bool)

(assert (=> d!143983 (= c!126228 ((_ is ValueCellFull!17589) (select (arr!43851 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun e!762184 () V!54403)

(assert (=> d!143983 (= (get!22175 (select (arr!43851 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) e!762184)))

(declare-fun b!1338500 () Bool)

(assert (=> b!1338500 (= e!762184 (get!22177 (select (arr!43851 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1338501 () Bool)

(assert (=> b!1338501 (= e!762184 (get!22178 (select (arr!43851 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3762 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143983 c!126228) b!1338500))

(assert (= (and d!143983 (not c!126228)) b!1338501))

(assert (=> b!1338500 m!1226475))

(assert (=> b!1338500 m!1226411))

(declare-fun m!1226907 () Bool)

(assert (=> b!1338500 m!1226907))

(assert (=> b!1338501 m!1226475))

(assert (=> b!1338501 m!1226411))

(declare-fun m!1226909 () Bool)

(assert (=> b!1338501 m!1226909))

(assert (=> b!1338283 d!143983))

(declare-fun mapIsEmpty!57157 () Bool)

(declare-fun mapRes!57157 () Bool)

(assert (=> mapIsEmpty!57157 mapRes!57157))

(declare-fun condMapEmpty!57157 () Bool)

(declare-fun mapDefault!57157 () ValueCell!17589)

(assert (=> mapNonEmpty!57156 (= condMapEmpty!57157 (= mapRest!57156 ((as const (Array (_ BitVec 32) ValueCell!17589)) mapDefault!57157)))))

(declare-fun e!762186 () Bool)

(assert (=> mapNonEmpty!57156 (= tp!108856 (and e!762186 mapRes!57157))))

(declare-fun b!1338502 () Bool)

(declare-fun e!762185 () Bool)

(assert (=> b!1338502 (= e!762185 tp_is_empty!36975)))

(declare-fun b!1338503 () Bool)

(assert (=> b!1338503 (= e!762186 tp_is_empty!36975)))

(declare-fun mapNonEmpty!57157 () Bool)

(declare-fun tp!108857 () Bool)

(assert (=> mapNonEmpty!57157 (= mapRes!57157 (and tp!108857 e!762185))))

(declare-fun mapKey!57157 () (_ BitVec 32))

(declare-fun mapValue!57157 () ValueCell!17589)

(declare-fun mapRest!57157 () (Array (_ BitVec 32) ValueCell!17589))

(assert (=> mapNonEmpty!57157 (= mapRest!57156 (store mapRest!57157 mapKey!57157 mapValue!57157))))

(assert (= (and mapNonEmpty!57156 condMapEmpty!57157) mapIsEmpty!57157))

(assert (= (and mapNonEmpty!57156 (not condMapEmpty!57157)) mapNonEmpty!57157))

(assert (= (and mapNonEmpty!57157 ((_ is ValueCellFull!17589) mapValue!57157)) b!1338502))

(assert (= (and mapNonEmpty!57156 ((_ is ValueCellFull!17589) mapDefault!57157)) b!1338503))

(declare-fun m!1226911 () Bool)

(assert (=> mapNonEmpty!57157 m!1226911))

(declare-fun b_lambda!24301 () Bool)

(assert (= b_lambda!24299 (or (and start!112872 b_free!31065) b_lambda!24301)))

(declare-fun b_lambda!24303 () Bool)

(assert (= b_lambda!24295 (or (and start!112872 b_free!31065) b_lambda!24303)))

(declare-fun b_lambda!24305 () Bool)

(assert (= b_lambda!24297 (or (and start!112872 b_free!31065) b_lambda!24305)))

(declare-fun b_lambda!24307 () Bool)

(assert (= b_lambda!24293 (or (and start!112872 b_free!31065) b_lambda!24307)))

(check-sat (not d!143877) (not b!1338421) (not d!143981) (not b!1338437) (not d!143891) (not b!1338435) (not d!143859) (not d!143921) (not b!1338374) (not d!143889) (not b!1338377) (not b!1338364) (not b!1338501) (not b!1338372) (not d!143919) (not d!143885) tp_is_empty!36975 (not d!143961) (not b!1338429) (not d!143949) (not b!1338442) (not d!143867) (not b!1338499) (not d!143879) (not d!143955) (not d!143897) (not b!1338446) (not b_lambda!24301) (not b!1338326) (not d!143913) (not b!1338463) (not bm!65017) (not b!1338404) (not b!1338373) (not b!1338484) (not b!1338425) (not b!1338447) (not b!1338383) (not b_lambda!24307) (not b!1338418) (not b!1338436) (not bm!65016) (not d!143915) (not d!143881) (not b!1338493) (not b!1338339) (not d!143883) (not d!143875) (not b!1338431) (not b!1338336) (not d!143937) (not b_lambda!24291) b_and!50107 (not b!1338482) (not b!1338320) (not b_lambda!24303) (not d!143957) (not b!1338496) (not b_lambda!24289) (not d!143977) (not b!1338449) (not b!1338485) (not d!143925) (not d!143893) (not d!143855) (not b!1338495) (not d!143963) (not b!1338412) (not b!1338337) (not d!143929) (not b!1338419) (not b!1338391) (not d!143945) (not b!1338382) (not b!1338420) (not b!1338385) (not b!1338438) (not b!1338428) (not d!143909) (not d!143865) (not d!143943) (not d!143969) (not b!1338376) (not d!143959) (not d!143947) (not bm!65018) (not d!143905) (not b_next!31065) (not b!1338381) (not d!143887) (not d!143917) (not d!143967) (not d!143861) (not b!1338453) (not d!143935) (not d!143901) (not bm!65013) (not d!143869) (not d!143871) (not b!1338365) (not mapNonEmpty!57157) (not b!1338456) (not b!1338366) (not b!1338481) (not d!143911) (not b!1338424) (not b!1338338) (not b!1338439) (not d!143971) (not d!143941) (not b!1338402) (not b!1338327) (not b!1338319) (not b!1338415) (not b!1338411) (not b!1338406) (not b!1338454) (not b!1338451) (not d!143863) (not d!143951) (not b!1338369) (not b!1338413) (not b!1338441) (not b!1338409) (not d!143927) (not b!1338450) (not d!143931) (not b!1338427) (not b_lambda!24305) (not d!143953) (not b!1338321) (not b!1338370) (not b!1338457) (not b!1338500) (not d!143873) (not b!1338432) (not b!1338487) (not d!143923) (not b!1338433) (not b!1338443) (not b!1338444) (not d!143933) (not d!143939))
(check-sat b_and!50107 (not b_next!31065))
