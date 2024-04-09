; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111204 () Bool)

(assert start!111204)

(declare-fun b_free!30003 () Bool)

(declare-fun b_next!30003 () Bool)

(assert (=> start!111204 (= b_free!30003 (not b_next!30003))))

(declare-fun tp!105331 () Bool)

(declare-fun b_and!48221 () Bool)

(assert (=> start!111204 (= tp!105331 b_and!48221)))

(declare-fun mapIsEmpty!55228 () Bool)

(declare-fun mapRes!55228 () Bool)

(assert (=> mapIsEmpty!55228 mapRes!55228))

(declare-fun b!1316196 () Bool)

(declare-fun e!750860 () Bool)

(declare-fun tp_is_empty!35733 () Bool)

(assert (=> b!1316196 (= e!750860 tp_is_empty!35733)))

(declare-fun b!1316197 () Bool)

(declare-fun res!873851 () Bool)

(declare-fun e!750857 () Bool)

(assert (=> b!1316197 (=> (not res!873851) (not e!750857))))

(declare-datatypes ((array!88383 0))(
  ( (array!88384 (arr!42667 (Array (_ BitVec 32) (_ BitVec 64))) (size!43218 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88383)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88383 (_ BitVec 32)) Bool)

(assert (=> b!1316197 (= res!873851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!873854 () Bool)

(assert (=> start!111204 (=> (not res!873854) (not e!750857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111204 (= res!873854 (validMask!0 mask!2040))))

(assert (=> start!111204 e!750857))

(assert (=> start!111204 tp!105331))

(declare-fun array_inv!32191 (array!88383) Bool)

(assert (=> start!111204 (array_inv!32191 _keys!1628)))

(assert (=> start!111204 true))

(assert (=> start!111204 tp_is_empty!35733))

(declare-datatypes ((V!52747 0))(
  ( (V!52748 (val!17941 Int)) )
))
(declare-datatypes ((ValueCell!16968 0))(
  ( (ValueCellFull!16968 (v!20566 V!52747)) (EmptyCell!16968) )
))
(declare-datatypes ((array!88385 0))(
  ( (array!88386 (arr!42668 (Array (_ BitVec 32) ValueCell!16968)) (size!43219 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88385)

(declare-fun e!750856 () Bool)

(declare-fun array_inv!32192 (array!88385) Bool)

(assert (=> start!111204 (and (array_inv!32192 _values!1354) e!750856)))

(declare-fun mapNonEmpty!55228 () Bool)

(declare-fun tp!105332 () Bool)

(assert (=> mapNonEmpty!55228 (= mapRes!55228 (and tp!105332 e!750860))))

(declare-fun mapKey!55228 () (_ BitVec 32))

(declare-fun mapRest!55228 () (Array (_ BitVec 32) ValueCell!16968))

(declare-fun mapValue!55228 () ValueCell!16968)

(assert (=> mapNonEmpty!55228 (= (arr!42668 _values!1354) (store mapRest!55228 mapKey!55228 mapValue!55228))))

(declare-fun b!1316198 () Bool)

(declare-fun res!873848 () Bool)

(assert (=> b!1316198 (=> (not res!873848) (not e!750857))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1316198 (= res!873848 (and (= (size!43219 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43218 _keys!1628) (size!43219 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1316199 () Bool)

(declare-fun res!873850 () Bool)

(assert (=> b!1316199 (=> (not res!873850) (not e!750857))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(assert (=> b!1316199 (= res!873850 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43218 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun b!1316200 () Bool)

(declare-fun minValue!1296 () V!52747)

(declare-fun zeroValue!1296 () V!52747)

(declare-datatypes ((tuple2!23296 0))(
  ( (tuple2!23297 (_1!11658 (_ BitVec 64)) (_2!11658 V!52747)) )
))
(declare-datatypes ((List!30464 0))(
  ( (Nil!30461) (Cons!30460 (h!31669 tuple2!23296) (t!44077 List!30464)) )
))
(declare-datatypes ((ListLongMap!20965 0))(
  ( (ListLongMap!20966 (toList!10498 List!30464)) )
))
(declare-fun contains!8584 (ListLongMap!20965 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5454 (array!88383 array!88385 (_ BitVec 32) (_ BitVec 32) V!52747 V!52747 (_ BitVec 32) Int) ListLongMap!20965)

(assert (=> b!1316200 (= e!750857 (not (contains!8584 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))))

(declare-fun b!1316201 () Bool)

(declare-fun res!873853 () Bool)

(assert (=> b!1316201 (=> (not res!873853) (not e!750857))))

(assert (=> b!1316201 (= res!873853 (contains!8584 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1316202 () Bool)

(declare-fun res!873847 () Bool)

(assert (=> b!1316202 (=> (not res!873847) (not e!750857))))

(declare-datatypes ((List!30465 0))(
  ( (Nil!30462) (Cons!30461 (h!31670 (_ BitVec 64)) (t!44078 List!30465)) )
))
(declare-fun arrayNoDuplicates!0 (array!88383 (_ BitVec 32) List!30465) Bool)

(assert (=> b!1316202 (= res!873847 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30462))))

(declare-fun b!1316203 () Bool)

(declare-fun e!750858 () Bool)

(assert (=> b!1316203 (= e!750858 tp_is_empty!35733)))

(declare-fun b!1316204 () Bool)

(declare-fun res!873849 () Bool)

(assert (=> b!1316204 (=> (not res!873849) (not e!750857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1316204 (= res!873849 (not (validKeyInArray!0 (select (arr!42667 _keys!1628) from!2020))))))

(declare-fun b!1316205 () Bool)

(assert (=> b!1316205 (= e!750856 (and e!750858 mapRes!55228))))

(declare-fun condMapEmpty!55228 () Bool)

(declare-fun mapDefault!55228 () ValueCell!16968)

(assert (=> b!1316205 (= condMapEmpty!55228 (= (arr!42668 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16968)) mapDefault!55228)))))

(declare-fun b!1316206 () Bool)

(declare-fun res!873852 () Bool)

(assert (=> b!1316206 (=> (not res!873852) (not e!750857))))

(assert (=> b!1316206 (= res!873852 (not (= (select (arr!42667 _keys!1628) from!2020) k0!1175)))))

(assert (= (and start!111204 res!873854) b!1316198))

(assert (= (and b!1316198 res!873848) b!1316197))

(assert (= (and b!1316197 res!873851) b!1316202))

(assert (= (and b!1316202 res!873847) b!1316199))

(assert (= (and b!1316199 res!873850) b!1316201))

(assert (= (and b!1316201 res!873853) b!1316206))

(assert (= (and b!1316206 res!873852) b!1316204))

(assert (= (and b!1316204 res!873849) b!1316200))

(assert (= (and b!1316205 condMapEmpty!55228) mapIsEmpty!55228))

(assert (= (and b!1316205 (not condMapEmpty!55228)) mapNonEmpty!55228))

(get-info :version)

(assert (= (and mapNonEmpty!55228 ((_ is ValueCellFull!16968) mapValue!55228)) b!1316196))

(assert (= (and b!1316205 ((_ is ValueCellFull!16968) mapDefault!55228)) b!1316203))

(assert (= start!111204 b!1316205))

(declare-fun m!1204149 () Bool)

(assert (=> mapNonEmpty!55228 m!1204149))

(declare-fun m!1204151 () Bool)

(assert (=> b!1316202 m!1204151))

(declare-fun m!1204153 () Bool)

(assert (=> b!1316201 m!1204153))

(assert (=> b!1316201 m!1204153))

(declare-fun m!1204155 () Bool)

(assert (=> b!1316201 m!1204155))

(declare-fun m!1204157 () Bool)

(assert (=> b!1316197 m!1204157))

(declare-fun m!1204159 () Bool)

(assert (=> b!1316200 m!1204159))

(assert (=> b!1316200 m!1204159))

(declare-fun m!1204161 () Bool)

(assert (=> b!1316200 m!1204161))

(declare-fun m!1204163 () Bool)

(assert (=> start!111204 m!1204163))

(declare-fun m!1204165 () Bool)

(assert (=> start!111204 m!1204165))

(declare-fun m!1204167 () Bool)

(assert (=> start!111204 m!1204167))

(declare-fun m!1204169 () Bool)

(assert (=> b!1316206 m!1204169))

(assert (=> b!1316204 m!1204169))

(assert (=> b!1316204 m!1204169))

(declare-fun m!1204171 () Bool)

(assert (=> b!1316204 m!1204171))

(check-sat (not b_next!30003) (not b!1316202) (not b!1316204) (not b!1316201) (not b!1316200) (not start!111204) tp_is_empty!35733 (not b!1316197) b_and!48221 (not mapNonEmpty!55228))
(check-sat b_and!48221 (not b_next!30003))
(get-model)

(declare-fun d!142431 () Bool)

(declare-fun e!750881 () Bool)

(assert (=> d!142431 e!750881))

(declare-fun res!873881 () Bool)

(assert (=> d!142431 (=> res!873881 e!750881)))

(declare-fun lt!585952 () Bool)

(assert (=> d!142431 (= res!873881 (not lt!585952))))

(declare-fun lt!585949 () Bool)

(assert (=> d!142431 (= lt!585952 lt!585949)))

(declare-datatypes ((Unit!43342 0))(
  ( (Unit!43343) )
))
(declare-fun lt!585951 () Unit!43342)

(declare-fun e!750880 () Unit!43342)

(assert (=> d!142431 (= lt!585951 e!750880)))

(declare-fun c!125492 () Bool)

(assert (=> d!142431 (= c!125492 lt!585949)))

(declare-fun containsKey!731 (List!30464 (_ BitVec 64)) Bool)

(assert (=> d!142431 (= lt!585949 (containsKey!731 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175))))

(assert (=> d!142431 (= (contains!8584 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175) lt!585952)))

(declare-fun b!1316246 () Bool)

(declare-fun lt!585950 () Unit!43342)

(assert (=> b!1316246 (= e!750880 lt!585950)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!476 (List!30464 (_ BitVec 64)) Unit!43342)

(assert (=> b!1316246 (= lt!585950 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175))))

(declare-datatypes ((Option!764 0))(
  ( (Some!763 (v!20568 V!52747)) (None!762) )
))
(declare-fun isDefined!516 (Option!764) Bool)

(declare-fun getValueByKey!713 (List!30464 (_ BitVec 64)) Option!764)

(assert (=> b!1316246 (isDefined!516 (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175))))

(declare-fun b!1316247 () Bool)

(declare-fun Unit!43344 () Unit!43342)

(assert (=> b!1316247 (= e!750880 Unit!43344)))

(declare-fun b!1316248 () Bool)

(assert (=> b!1316248 (= e!750881 (isDefined!516 (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175)))))

(assert (= (and d!142431 c!125492) b!1316246))

(assert (= (and d!142431 (not c!125492)) b!1316247))

(assert (= (and d!142431 (not res!873881)) b!1316248))

(declare-fun m!1204197 () Bool)

(assert (=> d!142431 m!1204197))

(declare-fun m!1204199 () Bool)

(assert (=> b!1316246 m!1204199))

(declare-fun m!1204201 () Bool)

(assert (=> b!1316246 m!1204201))

(assert (=> b!1316246 m!1204201))

(declare-fun m!1204203 () Bool)

(assert (=> b!1316246 m!1204203))

(assert (=> b!1316248 m!1204201))

(assert (=> b!1316248 m!1204201))

(assert (=> b!1316248 m!1204203))

(assert (=> b!1316200 d!142431))

(declare-fun b!1316291 () Bool)

(declare-fun e!750916 () Bool)

(declare-fun call!64643 () Bool)

(assert (=> b!1316291 (= e!750916 (not call!64643))))

(declare-fun bm!64640 () Bool)

(declare-fun call!64644 () ListLongMap!20965)

(declare-fun call!64645 () ListLongMap!20965)

(assert (=> bm!64640 (= call!64644 call!64645)))

(declare-fun b!1316292 () Bool)

(declare-fun e!750918 () Unit!43342)

(declare-fun lt!586007 () Unit!43342)

(assert (=> b!1316292 (= e!750918 lt!586007)))

(declare-fun lt!586014 () ListLongMap!20965)

(declare-fun getCurrentListMapNoExtraKeys!6193 (array!88383 array!88385 (_ BitVec 32) (_ BitVec 32) V!52747 V!52747 (_ BitVec 32) Int) ListLongMap!20965)

(assert (=> b!1316292 (= lt!586014 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))))

(declare-fun lt!586000 () (_ BitVec 64))

(assert (=> b!1316292 (= lt!586000 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!586018 () (_ BitVec 64))

(assert (=> b!1316292 (= lt!586018 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020)))))

(declare-fun lt!586011 () Unit!43342)

(declare-fun addStillContains!1132 (ListLongMap!20965 (_ BitVec 64) V!52747 (_ BitVec 64)) Unit!43342)

(assert (=> b!1316292 (= lt!586011 (addStillContains!1132 lt!586014 lt!586000 zeroValue!1296 lt!586018))))

(declare-fun +!4478 (ListLongMap!20965 tuple2!23296) ListLongMap!20965)

(assert (=> b!1316292 (contains!8584 (+!4478 lt!586014 (tuple2!23297 lt!586000 zeroValue!1296)) lt!586018)))

(declare-fun lt!586006 () Unit!43342)

(assert (=> b!1316292 (= lt!586006 lt!586011)))

(declare-fun lt!586001 () ListLongMap!20965)

(assert (=> b!1316292 (= lt!586001 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))))

(declare-fun lt!586015 () (_ BitVec 64))

(assert (=> b!1316292 (= lt!586015 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!585998 () (_ BitVec 64))

(assert (=> b!1316292 (= lt!585998 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020)))))

(declare-fun lt!586009 () Unit!43342)

(declare-fun addApplyDifferent!566 (ListLongMap!20965 (_ BitVec 64) V!52747 (_ BitVec 64)) Unit!43342)

(assert (=> b!1316292 (= lt!586009 (addApplyDifferent!566 lt!586001 lt!586015 minValue!1296 lt!585998))))

(declare-fun apply!1063 (ListLongMap!20965 (_ BitVec 64)) V!52747)

(assert (=> b!1316292 (= (apply!1063 (+!4478 lt!586001 (tuple2!23297 lt!586015 minValue!1296)) lt!585998) (apply!1063 lt!586001 lt!585998))))

(declare-fun lt!586008 () Unit!43342)

(assert (=> b!1316292 (= lt!586008 lt!586009)))

(declare-fun lt!586003 () ListLongMap!20965)

(assert (=> b!1316292 (= lt!586003 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))))

(declare-fun lt!586010 () (_ BitVec 64))

(assert (=> b!1316292 (= lt!586010 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!586016 () (_ BitVec 64))

(assert (=> b!1316292 (= lt!586016 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020)))))

(declare-fun lt!586013 () Unit!43342)

(assert (=> b!1316292 (= lt!586013 (addApplyDifferent!566 lt!586003 lt!586010 zeroValue!1296 lt!586016))))

(assert (=> b!1316292 (= (apply!1063 (+!4478 lt!586003 (tuple2!23297 lt!586010 zeroValue!1296)) lt!586016) (apply!1063 lt!586003 lt!586016))))

(declare-fun lt!586004 () Unit!43342)

(assert (=> b!1316292 (= lt!586004 lt!586013)))

(declare-fun lt!585999 () ListLongMap!20965)

(assert (=> b!1316292 (= lt!585999 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))))

(declare-fun lt!586012 () (_ BitVec 64))

(assert (=> b!1316292 (= lt!586012 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!586002 () (_ BitVec 64))

(assert (=> b!1316292 (= lt!586002 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020)))))

(assert (=> b!1316292 (= lt!586007 (addApplyDifferent!566 lt!585999 lt!586012 minValue!1296 lt!586002))))

(assert (=> b!1316292 (= (apply!1063 (+!4478 lt!585999 (tuple2!23297 lt!586012 minValue!1296)) lt!586002) (apply!1063 lt!585999 lt!586002))))

(declare-fun b!1316293 () Bool)

(declare-fun e!750915 () Bool)

(assert (=> b!1316293 (= e!750915 (validKeyInArray!0 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))))))

(declare-fun bm!64641 () Bool)

(declare-fun call!64646 () ListLongMap!20965)

(declare-fun call!64648 () ListLongMap!20965)

(assert (=> bm!64641 (= call!64646 call!64648)))

(declare-fun b!1316294 () Bool)

(declare-fun e!750908 () Bool)

(assert (=> b!1316294 (= e!750908 e!750916)))

(declare-fun c!125510 () Bool)

(assert (=> b!1316294 (= c!125510 (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1316295 () Bool)

(declare-fun e!750909 () Bool)

(declare-fun lt!586017 () ListLongMap!20965)

(assert (=> b!1316295 (= e!750909 (= (apply!1063 lt!586017 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1296))))

(declare-fun b!1316296 () Bool)

(declare-fun e!750920 () ListLongMap!20965)

(assert (=> b!1316296 (= e!750920 call!64646)))

(declare-fun b!1316297 () Bool)

(declare-fun e!750910 () ListLongMap!20965)

(assert (=> b!1316297 (= e!750910 (+!4478 call!64648 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))

(declare-fun b!1316298 () Bool)

(declare-fun e!750912 () Bool)

(assert (=> b!1316298 (= e!750912 (= (apply!1063 lt!586017 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1296))))

(declare-fun bm!64642 () Bool)

(assert (=> bm!64642 (= call!64645 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))))

(declare-fun b!1316299 () Bool)

(declare-fun Unit!43345 () Unit!43342)

(assert (=> b!1316299 (= e!750918 Unit!43345)))

(declare-fun b!1316300 () Bool)

(declare-fun e!750913 () Bool)

(assert (=> b!1316300 (= e!750913 (validKeyInArray!0 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))))))

(declare-fun b!1316301 () Bool)

(declare-fun e!750919 () Bool)

(assert (=> b!1316301 (= e!750919 e!750912)))

(declare-fun res!873903 () Bool)

(declare-fun call!64647 () Bool)

(assert (=> b!1316301 (= res!873903 call!64647)))

(assert (=> b!1316301 (=> (not res!873903) (not e!750912))))

(declare-fun b!1316302 () Bool)

(declare-fun e!750911 () ListLongMap!20965)

(assert (=> b!1316302 (= e!750910 e!750911)))

(declare-fun c!125508 () Bool)

(assert (=> b!1316302 (= c!125508 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1316303 () Bool)

(declare-fun call!64649 () ListLongMap!20965)

(assert (=> b!1316303 (= e!750920 call!64649)))

(declare-fun bm!64643 () Bool)

(assert (=> bm!64643 (= call!64643 (contains!8584 lt!586017 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!125505 () Bool)

(declare-fun bm!64644 () Bool)

(assert (=> bm!64644 (= call!64648 (+!4478 (ite c!125505 call!64645 (ite c!125508 call!64644 call!64649)) (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(declare-fun b!1316304 () Bool)

(declare-fun res!873905 () Bool)

(assert (=> b!1316304 (=> (not res!873905) (not e!750908))))

(assert (=> b!1316304 (= res!873905 e!750919)))

(declare-fun c!125509 () Bool)

(assert (=> b!1316304 (= c!125509 (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1316305 () Bool)

(declare-fun e!750917 () Bool)

(declare-fun e!750914 () Bool)

(assert (=> b!1316305 (= e!750917 e!750914)))

(declare-fun res!873908 () Bool)

(assert (=> b!1316305 (=> (not res!873908) (not e!750914))))

(assert (=> b!1316305 (= res!873908 (contains!8584 lt!586017 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))))))

(assert (=> b!1316305 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2020) (size!43218 _keys!1628)))))

(declare-fun bm!64645 () Bool)

(assert (=> bm!64645 (= call!64647 (contains!8584 lt!586017 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1316306 () Bool)

(declare-fun c!125507 () Bool)

(assert (=> b!1316306 (= c!125507 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1316306 (= e!750911 e!750920)))

(declare-fun d!142433 () Bool)

(assert (=> d!142433 e!750908))

(declare-fun res!873904 () Bool)

(assert (=> d!142433 (=> (not res!873904) (not e!750908))))

(assert (=> d!142433 (= res!873904 (or (bvsge (bvadd #b00000000000000000000000000000001 from!2020) (size!43218 _keys!1628)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2020) (size!43218 _keys!1628)))))))

(declare-fun lt!585997 () ListLongMap!20965)

(assert (=> d!142433 (= lt!586017 lt!585997)))

(declare-fun lt!586005 () Unit!43342)

(assert (=> d!142433 (= lt!586005 e!750918)))

(declare-fun c!125506 () Bool)

(assert (=> d!142433 (= c!125506 e!750915)))

(declare-fun res!873907 () Bool)

(assert (=> d!142433 (=> (not res!873907) (not e!750915))))

(assert (=> d!142433 (= res!873907 (bvslt (bvadd #b00000000000000000000000000000001 from!2020) (size!43218 _keys!1628)))))

(assert (=> d!142433 (= lt!585997 e!750910)))

(assert (=> d!142433 (= c!125505 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!142433 (validMask!0 mask!2040)))

(assert (=> d!142433 (= (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) lt!586017)))

(declare-fun b!1316307 () Bool)

(declare-fun get!21493 (ValueCell!16968 V!52747) V!52747)

(declare-fun dynLambda!3515 (Int (_ BitVec 64)) V!52747)

(assert (=> b!1316307 (= e!750914 (= (apply!1063 lt!586017 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))) (get!21493 (select (arr!42668 _values!1354) (bvadd #b00000000000000000000000000000001 from!2020)) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1316307 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2020) (size!43219 _values!1354)))))

(assert (=> b!1316307 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2020) (size!43218 _keys!1628)))))

(declare-fun b!1316308 () Bool)

(assert (=> b!1316308 (= e!750916 e!750909)))

(declare-fun res!873906 () Bool)

(assert (=> b!1316308 (= res!873906 call!64643)))

(assert (=> b!1316308 (=> (not res!873906) (not e!750909))))

(declare-fun b!1316309 () Bool)

(assert (=> b!1316309 (= e!750919 (not call!64647))))

(declare-fun b!1316310 () Bool)

(declare-fun res!873901 () Bool)

(assert (=> b!1316310 (=> (not res!873901) (not e!750908))))

(assert (=> b!1316310 (= res!873901 e!750917)))

(declare-fun res!873902 () Bool)

(assert (=> b!1316310 (=> res!873902 e!750917)))

(assert (=> b!1316310 (= res!873902 (not e!750913))))

(declare-fun res!873900 () Bool)

(assert (=> b!1316310 (=> (not res!873900) (not e!750913))))

(assert (=> b!1316310 (= res!873900 (bvslt (bvadd #b00000000000000000000000000000001 from!2020) (size!43218 _keys!1628)))))

(declare-fun bm!64646 () Bool)

(assert (=> bm!64646 (= call!64649 call!64644)))

(declare-fun b!1316311 () Bool)

(assert (=> b!1316311 (= e!750911 call!64646)))

(assert (= (and d!142433 c!125505) b!1316297))

(assert (= (and d!142433 (not c!125505)) b!1316302))

(assert (= (and b!1316302 c!125508) b!1316311))

(assert (= (and b!1316302 (not c!125508)) b!1316306))

(assert (= (and b!1316306 c!125507) b!1316296))

(assert (= (and b!1316306 (not c!125507)) b!1316303))

(assert (= (or b!1316296 b!1316303) bm!64646))

(assert (= (or b!1316311 bm!64646) bm!64640))

(assert (= (or b!1316311 b!1316296) bm!64641))

(assert (= (or b!1316297 bm!64640) bm!64642))

(assert (= (or b!1316297 bm!64641) bm!64644))

(assert (= (and d!142433 res!873907) b!1316293))

(assert (= (and d!142433 c!125506) b!1316292))

(assert (= (and d!142433 (not c!125506)) b!1316299))

(assert (= (and d!142433 res!873904) b!1316310))

(assert (= (and b!1316310 res!873900) b!1316300))

(assert (= (and b!1316310 (not res!873902)) b!1316305))

(assert (= (and b!1316305 res!873908) b!1316307))

(assert (= (and b!1316310 res!873901) b!1316304))

(assert (= (and b!1316304 c!125509) b!1316301))

(assert (= (and b!1316304 (not c!125509)) b!1316309))

(assert (= (and b!1316301 res!873903) b!1316298))

(assert (= (or b!1316301 b!1316309) bm!64645))

(assert (= (and b!1316304 res!873905) b!1316294))

(assert (= (and b!1316294 c!125510) b!1316308))

(assert (= (and b!1316294 (not c!125510)) b!1316291))

(assert (= (and b!1316308 res!873906) b!1316295))

(assert (= (or b!1316308 b!1316291) bm!64643))

(declare-fun b_lambda!23373 () Bool)

(assert (=> (not b_lambda!23373) (not b!1316307)))

(declare-fun t!44082 () Bool)

(declare-fun tb!11419 () Bool)

(assert (=> (and start!111204 (= defaultEntry!1357 defaultEntry!1357) t!44082) tb!11419))

(declare-fun result!23873 () Bool)

(assert (=> tb!11419 (= result!23873 tp_is_empty!35733)))

(assert (=> b!1316307 t!44082))

(declare-fun b_and!48225 () Bool)

(assert (= b_and!48221 (and (=> t!44082 result!23873) b_and!48225)))

(declare-fun m!1204205 () Bool)

(assert (=> b!1316305 m!1204205))

(assert (=> b!1316305 m!1204205))

(declare-fun m!1204207 () Bool)

(assert (=> b!1316305 m!1204207))

(assert (=> d!142433 m!1204163))

(declare-fun m!1204209 () Bool)

(assert (=> b!1316297 m!1204209))

(assert (=> b!1316293 m!1204205))

(assert (=> b!1316293 m!1204205))

(declare-fun m!1204211 () Bool)

(assert (=> b!1316293 m!1204211))

(declare-fun m!1204213 () Bool)

(assert (=> b!1316295 m!1204213))

(assert (=> b!1316307 m!1204205))

(declare-fun m!1204215 () Bool)

(assert (=> b!1316307 m!1204215))

(declare-fun m!1204217 () Bool)

(assert (=> b!1316307 m!1204217))

(declare-fun m!1204219 () Bool)

(assert (=> b!1316307 m!1204219))

(assert (=> b!1316307 m!1204217))

(assert (=> b!1316307 m!1204219))

(declare-fun m!1204221 () Bool)

(assert (=> b!1316307 m!1204221))

(assert (=> b!1316307 m!1204205))

(assert (=> b!1316300 m!1204205))

(assert (=> b!1316300 m!1204205))

(assert (=> b!1316300 m!1204211))

(declare-fun m!1204223 () Bool)

(assert (=> b!1316292 m!1204223))

(assert (=> b!1316292 m!1204205))

(declare-fun m!1204225 () Bool)

(assert (=> b!1316292 m!1204225))

(declare-fun m!1204227 () Bool)

(assert (=> b!1316292 m!1204227))

(declare-fun m!1204229 () Bool)

(assert (=> b!1316292 m!1204229))

(declare-fun m!1204231 () Bool)

(assert (=> b!1316292 m!1204231))

(declare-fun m!1204233 () Bool)

(assert (=> b!1316292 m!1204233))

(declare-fun m!1204235 () Bool)

(assert (=> b!1316292 m!1204235))

(declare-fun m!1204237 () Bool)

(assert (=> b!1316292 m!1204237))

(assert (=> b!1316292 m!1204235))

(declare-fun m!1204239 () Bool)

(assert (=> b!1316292 m!1204239))

(declare-fun m!1204241 () Bool)

(assert (=> b!1316292 m!1204241))

(declare-fun m!1204243 () Bool)

(assert (=> b!1316292 m!1204243))

(declare-fun m!1204245 () Bool)

(assert (=> b!1316292 m!1204245))

(declare-fun m!1204247 () Bool)

(assert (=> b!1316292 m!1204247))

(assert (=> b!1316292 m!1204233))

(declare-fun m!1204249 () Bool)

(assert (=> b!1316292 m!1204249))

(assert (=> b!1316292 m!1204223))

(declare-fun m!1204251 () Bool)

(assert (=> b!1316292 m!1204251))

(assert (=> b!1316292 m!1204241))

(declare-fun m!1204253 () Bool)

(assert (=> b!1316292 m!1204253))

(assert (=> bm!64642 m!1204227))

(declare-fun m!1204255 () Bool)

(assert (=> bm!64644 m!1204255))

(declare-fun m!1204257 () Bool)

(assert (=> bm!64643 m!1204257))

(declare-fun m!1204259 () Bool)

(assert (=> bm!64645 m!1204259))

(declare-fun m!1204261 () Bool)

(assert (=> b!1316298 m!1204261))

(assert (=> b!1316200 d!142433))

(declare-fun d!142435 () Bool)

(declare-fun e!750922 () Bool)

(assert (=> d!142435 e!750922))

(declare-fun res!873909 () Bool)

(assert (=> d!142435 (=> res!873909 e!750922)))

(declare-fun lt!586022 () Bool)

(assert (=> d!142435 (= res!873909 (not lt!586022))))

(declare-fun lt!586019 () Bool)

(assert (=> d!142435 (= lt!586022 lt!586019)))

(declare-fun lt!586021 () Unit!43342)

(declare-fun e!750921 () Unit!43342)

(assert (=> d!142435 (= lt!586021 e!750921)))

(declare-fun c!125511 () Bool)

(assert (=> d!142435 (= c!125511 lt!586019)))

(assert (=> d!142435 (= lt!586019 (containsKey!731 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175))))

(assert (=> d!142435 (= (contains!8584 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175) lt!586022)))

(declare-fun b!1316314 () Bool)

(declare-fun lt!586020 () Unit!43342)

(assert (=> b!1316314 (= e!750921 lt!586020)))

(assert (=> b!1316314 (= lt!586020 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175))))

(assert (=> b!1316314 (isDefined!516 (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175))))

(declare-fun b!1316315 () Bool)

(declare-fun Unit!43346 () Unit!43342)

(assert (=> b!1316315 (= e!750921 Unit!43346)))

(declare-fun b!1316316 () Bool)

(assert (=> b!1316316 (= e!750922 (isDefined!516 (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175)))))

(assert (= (and d!142435 c!125511) b!1316314))

(assert (= (and d!142435 (not c!125511)) b!1316315))

(assert (= (and d!142435 (not res!873909)) b!1316316))

(declare-fun m!1204263 () Bool)

(assert (=> d!142435 m!1204263))

(declare-fun m!1204265 () Bool)

(assert (=> b!1316314 m!1204265))

(declare-fun m!1204267 () Bool)

(assert (=> b!1316314 m!1204267))

(assert (=> b!1316314 m!1204267))

(declare-fun m!1204269 () Bool)

(assert (=> b!1316314 m!1204269))

(assert (=> b!1316316 m!1204267))

(assert (=> b!1316316 m!1204267))

(assert (=> b!1316316 m!1204269))

(assert (=> b!1316201 d!142435))

(declare-fun b!1316317 () Bool)

(declare-fun e!750931 () Bool)

(declare-fun call!64650 () Bool)

(assert (=> b!1316317 (= e!750931 (not call!64650))))

(declare-fun bm!64647 () Bool)

(declare-fun call!64651 () ListLongMap!20965)

(declare-fun call!64652 () ListLongMap!20965)

(assert (=> bm!64647 (= call!64651 call!64652)))

(declare-fun b!1316318 () Bool)

(declare-fun e!750933 () Unit!43342)

(declare-fun lt!586033 () Unit!43342)

(assert (=> b!1316318 (= e!750933 lt!586033)))

(declare-fun lt!586040 () ListLongMap!20965)

(assert (=> b!1316318 (= lt!586040 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))))

(declare-fun lt!586026 () (_ BitVec 64))

(assert (=> b!1316318 (= lt!586026 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!586044 () (_ BitVec 64))

(assert (=> b!1316318 (= lt!586044 (select (arr!42667 _keys!1628) from!2020))))

(declare-fun lt!586037 () Unit!43342)

(assert (=> b!1316318 (= lt!586037 (addStillContains!1132 lt!586040 lt!586026 zeroValue!1296 lt!586044))))

(assert (=> b!1316318 (contains!8584 (+!4478 lt!586040 (tuple2!23297 lt!586026 zeroValue!1296)) lt!586044)))

(declare-fun lt!586032 () Unit!43342)

(assert (=> b!1316318 (= lt!586032 lt!586037)))

(declare-fun lt!586027 () ListLongMap!20965)

(assert (=> b!1316318 (= lt!586027 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))))

(declare-fun lt!586041 () (_ BitVec 64))

(assert (=> b!1316318 (= lt!586041 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!586024 () (_ BitVec 64))

(assert (=> b!1316318 (= lt!586024 (select (arr!42667 _keys!1628) from!2020))))

(declare-fun lt!586035 () Unit!43342)

(assert (=> b!1316318 (= lt!586035 (addApplyDifferent!566 lt!586027 lt!586041 minValue!1296 lt!586024))))

(assert (=> b!1316318 (= (apply!1063 (+!4478 lt!586027 (tuple2!23297 lt!586041 minValue!1296)) lt!586024) (apply!1063 lt!586027 lt!586024))))

(declare-fun lt!586034 () Unit!43342)

(assert (=> b!1316318 (= lt!586034 lt!586035)))

(declare-fun lt!586029 () ListLongMap!20965)

(assert (=> b!1316318 (= lt!586029 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))))

(declare-fun lt!586036 () (_ BitVec 64))

(assert (=> b!1316318 (= lt!586036 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!586042 () (_ BitVec 64))

(assert (=> b!1316318 (= lt!586042 (select (arr!42667 _keys!1628) from!2020))))

(declare-fun lt!586039 () Unit!43342)

(assert (=> b!1316318 (= lt!586039 (addApplyDifferent!566 lt!586029 lt!586036 zeroValue!1296 lt!586042))))

(assert (=> b!1316318 (= (apply!1063 (+!4478 lt!586029 (tuple2!23297 lt!586036 zeroValue!1296)) lt!586042) (apply!1063 lt!586029 lt!586042))))

(declare-fun lt!586030 () Unit!43342)

(assert (=> b!1316318 (= lt!586030 lt!586039)))

(declare-fun lt!586025 () ListLongMap!20965)

(assert (=> b!1316318 (= lt!586025 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))))

(declare-fun lt!586038 () (_ BitVec 64))

(assert (=> b!1316318 (= lt!586038 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!586028 () (_ BitVec 64))

(assert (=> b!1316318 (= lt!586028 (select (arr!42667 _keys!1628) from!2020))))

(assert (=> b!1316318 (= lt!586033 (addApplyDifferent!566 lt!586025 lt!586038 minValue!1296 lt!586028))))

(assert (=> b!1316318 (= (apply!1063 (+!4478 lt!586025 (tuple2!23297 lt!586038 minValue!1296)) lt!586028) (apply!1063 lt!586025 lt!586028))))

(declare-fun b!1316319 () Bool)

(declare-fun e!750930 () Bool)

(assert (=> b!1316319 (= e!750930 (validKeyInArray!0 (select (arr!42667 _keys!1628) from!2020)))))

(declare-fun bm!64648 () Bool)

(declare-fun call!64653 () ListLongMap!20965)

(declare-fun call!64655 () ListLongMap!20965)

(assert (=> bm!64648 (= call!64653 call!64655)))

(declare-fun b!1316320 () Bool)

(declare-fun e!750923 () Bool)

(assert (=> b!1316320 (= e!750923 e!750931)))

(declare-fun c!125517 () Bool)

(assert (=> b!1316320 (= c!125517 (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1316321 () Bool)

(declare-fun e!750924 () Bool)

(declare-fun lt!586043 () ListLongMap!20965)

(assert (=> b!1316321 (= e!750924 (= (apply!1063 lt!586043 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1296))))

(declare-fun b!1316322 () Bool)

(declare-fun e!750935 () ListLongMap!20965)

(assert (=> b!1316322 (= e!750935 call!64653)))

(declare-fun b!1316323 () Bool)

(declare-fun e!750925 () ListLongMap!20965)

(assert (=> b!1316323 (= e!750925 (+!4478 call!64655 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))

(declare-fun b!1316324 () Bool)

(declare-fun e!750927 () Bool)

(assert (=> b!1316324 (= e!750927 (= (apply!1063 lt!586043 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1296))))

(declare-fun bm!64649 () Bool)

(assert (=> bm!64649 (= call!64652 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))))

(declare-fun b!1316325 () Bool)

(declare-fun Unit!43347 () Unit!43342)

(assert (=> b!1316325 (= e!750933 Unit!43347)))

(declare-fun b!1316326 () Bool)

(declare-fun e!750928 () Bool)

(assert (=> b!1316326 (= e!750928 (validKeyInArray!0 (select (arr!42667 _keys!1628) from!2020)))))

(declare-fun b!1316327 () Bool)

(declare-fun e!750934 () Bool)

(assert (=> b!1316327 (= e!750934 e!750927)))

(declare-fun res!873913 () Bool)

(declare-fun call!64654 () Bool)

(assert (=> b!1316327 (= res!873913 call!64654)))

(assert (=> b!1316327 (=> (not res!873913) (not e!750927))))

(declare-fun b!1316328 () Bool)

(declare-fun e!750926 () ListLongMap!20965)

(assert (=> b!1316328 (= e!750925 e!750926)))

(declare-fun c!125515 () Bool)

(assert (=> b!1316328 (= c!125515 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1316329 () Bool)

(declare-fun call!64656 () ListLongMap!20965)

(assert (=> b!1316329 (= e!750935 call!64656)))

(declare-fun bm!64650 () Bool)

(assert (=> bm!64650 (= call!64650 (contains!8584 lt!586043 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!125512 () Bool)

(declare-fun bm!64651 () Bool)

(assert (=> bm!64651 (= call!64655 (+!4478 (ite c!125512 call!64652 (ite c!125515 call!64651 call!64656)) (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(declare-fun b!1316330 () Bool)

(declare-fun res!873915 () Bool)

(assert (=> b!1316330 (=> (not res!873915) (not e!750923))))

(assert (=> b!1316330 (= res!873915 e!750934)))

(declare-fun c!125516 () Bool)

(assert (=> b!1316330 (= c!125516 (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1316331 () Bool)

(declare-fun e!750932 () Bool)

(declare-fun e!750929 () Bool)

(assert (=> b!1316331 (= e!750932 e!750929)))

(declare-fun res!873918 () Bool)

(assert (=> b!1316331 (=> (not res!873918) (not e!750929))))

(assert (=> b!1316331 (= res!873918 (contains!8584 lt!586043 (select (arr!42667 _keys!1628) from!2020)))))

(assert (=> b!1316331 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43218 _keys!1628)))))

(declare-fun bm!64652 () Bool)

(assert (=> bm!64652 (= call!64654 (contains!8584 lt!586043 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1316332 () Bool)

(declare-fun c!125514 () Bool)

(assert (=> b!1316332 (= c!125514 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1316332 (= e!750926 e!750935)))

(declare-fun d!142437 () Bool)

(assert (=> d!142437 e!750923))

(declare-fun res!873914 () Bool)

(assert (=> d!142437 (=> (not res!873914) (not e!750923))))

(assert (=> d!142437 (= res!873914 (or (bvsge from!2020 (size!43218 _keys!1628)) (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43218 _keys!1628)))))))

(declare-fun lt!586023 () ListLongMap!20965)

(assert (=> d!142437 (= lt!586043 lt!586023)))

(declare-fun lt!586031 () Unit!43342)

(assert (=> d!142437 (= lt!586031 e!750933)))

(declare-fun c!125513 () Bool)

(assert (=> d!142437 (= c!125513 e!750930)))

(declare-fun res!873917 () Bool)

(assert (=> d!142437 (=> (not res!873917) (not e!750930))))

(assert (=> d!142437 (= res!873917 (bvslt from!2020 (size!43218 _keys!1628)))))

(assert (=> d!142437 (= lt!586023 e!750925)))

(assert (=> d!142437 (= c!125512 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!142437 (validMask!0 mask!2040)))

(assert (=> d!142437 (= (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) lt!586043)))

(declare-fun b!1316333 () Bool)

(assert (=> b!1316333 (= e!750929 (= (apply!1063 lt!586043 (select (arr!42667 _keys!1628) from!2020)) (get!21493 (select (arr!42668 _values!1354) from!2020) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1316333 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43219 _values!1354)))))

(assert (=> b!1316333 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43218 _keys!1628)))))

(declare-fun b!1316334 () Bool)

(assert (=> b!1316334 (= e!750931 e!750924)))

(declare-fun res!873916 () Bool)

(assert (=> b!1316334 (= res!873916 call!64650)))

(assert (=> b!1316334 (=> (not res!873916) (not e!750924))))

(declare-fun b!1316335 () Bool)

(assert (=> b!1316335 (= e!750934 (not call!64654))))

(declare-fun b!1316336 () Bool)

(declare-fun res!873911 () Bool)

(assert (=> b!1316336 (=> (not res!873911) (not e!750923))))

(assert (=> b!1316336 (= res!873911 e!750932)))

(declare-fun res!873912 () Bool)

(assert (=> b!1316336 (=> res!873912 e!750932)))

(assert (=> b!1316336 (= res!873912 (not e!750928))))

(declare-fun res!873910 () Bool)

(assert (=> b!1316336 (=> (not res!873910) (not e!750928))))

(assert (=> b!1316336 (= res!873910 (bvslt from!2020 (size!43218 _keys!1628)))))

(declare-fun bm!64653 () Bool)

(assert (=> bm!64653 (= call!64656 call!64651)))

(declare-fun b!1316337 () Bool)

(assert (=> b!1316337 (= e!750926 call!64653)))

(assert (= (and d!142437 c!125512) b!1316323))

(assert (= (and d!142437 (not c!125512)) b!1316328))

(assert (= (and b!1316328 c!125515) b!1316337))

(assert (= (and b!1316328 (not c!125515)) b!1316332))

(assert (= (and b!1316332 c!125514) b!1316322))

(assert (= (and b!1316332 (not c!125514)) b!1316329))

(assert (= (or b!1316322 b!1316329) bm!64653))

(assert (= (or b!1316337 bm!64653) bm!64647))

(assert (= (or b!1316337 b!1316322) bm!64648))

(assert (= (or b!1316323 bm!64647) bm!64649))

(assert (= (or b!1316323 bm!64648) bm!64651))

(assert (= (and d!142437 res!873917) b!1316319))

(assert (= (and d!142437 c!125513) b!1316318))

(assert (= (and d!142437 (not c!125513)) b!1316325))

(assert (= (and d!142437 res!873914) b!1316336))

(assert (= (and b!1316336 res!873910) b!1316326))

(assert (= (and b!1316336 (not res!873912)) b!1316331))

(assert (= (and b!1316331 res!873918) b!1316333))

(assert (= (and b!1316336 res!873911) b!1316330))

(assert (= (and b!1316330 c!125516) b!1316327))

(assert (= (and b!1316330 (not c!125516)) b!1316335))

(assert (= (and b!1316327 res!873913) b!1316324))

(assert (= (or b!1316327 b!1316335) bm!64652))

(assert (= (and b!1316330 res!873915) b!1316320))

(assert (= (and b!1316320 c!125517) b!1316334))

(assert (= (and b!1316320 (not c!125517)) b!1316317))

(assert (= (and b!1316334 res!873916) b!1316321))

(assert (= (or b!1316334 b!1316317) bm!64650))

(declare-fun b_lambda!23375 () Bool)

(assert (=> (not b_lambda!23375) (not b!1316333)))

(assert (=> b!1316333 t!44082))

(declare-fun b_and!48227 () Bool)

(assert (= b_and!48225 (and (=> t!44082 result!23873) b_and!48227)))

(assert (=> b!1316331 m!1204169))

(assert (=> b!1316331 m!1204169))

(declare-fun m!1204271 () Bool)

(assert (=> b!1316331 m!1204271))

(assert (=> d!142437 m!1204163))

(declare-fun m!1204273 () Bool)

(assert (=> b!1316323 m!1204273))

(assert (=> b!1316319 m!1204169))

(assert (=> b!1316319 m!1204169))

(assert (=> b!1316319 m!1204171))

(declare-fun m!1204275 () Bool)

(assert (=> b!1316321 m!1204275))

(assert (=> b!1316333 m!1204169))

(declare-fun m!1204277 () Bool)

(assert (=> b!1316333 m!1204277))

(declare-fun m!1204279 () Bool)

(assert (=> b!1316333 m!1204279))

(assert (=> b!1316333 m!1204219))

(assert (=> b!1316333 m!1204279))

(assert (=> b!1316333 m!1204219))

(declare-fun m!1204281 () Bool)

(assert (=> b!1316333 m!1204281))

(assert (=> b!1316333 m!1204169))

(assert (=> b!1316326 m!1204169))

(assert (=> b!1316326 m!1204169))

(assert (=> b!1316326 m!1204171))

(declare-fun m!1204283 () Bool)

(assert (=> b!1316318 m!1204283))

(assert (=> b!1316318 m!1204169))

(declare-fun m!1204285 () Bool)

(assert (=> b!1316318 m!1204285))

(declare-fun m!1204287 () Bool)

(assert (=> b!1316318 m!1204287))

(declare-fun m!1204289 () Bool)

(assert (=> b!1316318 m!1204289))

(declare-fun m!1204291 () Bool)

(assert (=> b!1316318 m!1204291))

(declare-fun m!1204293 () Bool)

(assert (=> b!1316318 m!1204293))

(declare-fun m!1204295 () Bool)

(assert (=> b!1316318 m!1204295))

(declare-fun m!1204297 () Bool)

(assert (=> b!1316318 m!1204297))

(assert (=> b!1316318 m!1204295))

(declare-fun m!1204299 () Bool)

(assert (=> b!1316318 m!1204299))

(declare-fun m!1204301 () Bool)

(assert (=> b!1316318 m!1204301))

(declare-fun m!1204303 () Bool)

(assert (=> b!1316318 m!1204303))

(declare-fun m!1204305 () Bool)

(assert (=> b!1316318 m!1204305))

(declare-fun m!1204307 () Bool)

(assert (=> b!1316318 m!1204307))

(assert (=> b!1316318 m!1204293))

(declare-fun m!1204309 () Bool)

(assert (=> b!1316318 m!1204309))

(assert (=> b!1316318 m!1204283))

(declare-fun m!1204311 () Bool)

(assert (=> b!1316318 m!1204311))

(assert (=> b!1316318 m!1204301))

(declare-fun m!1204313 () Bool)

(assert (=> b!1316318 m!1204313))

(assert (=> bm!64649 m!1204287))

(declare-fun m!1204315 () Bool)

(assert (=> bm!64651 m!1204315))

(declare-fun m!1204317 () Bool)

(assert (=> bm!64650 m!1204317))

(declare-fun m!1204319 () Bool)

(assert (=> bm!64652 m!1204319))

(declare-fun m!1204321 () Bool)

(assert (=> b!1316324 m!1204321))

(assert (=> b!1316201 d!142437))

(declare-fun b!1316346 () Bool)

(declare-fun e!750943 () Bool)

(declare-fun e!750942 () Bool)

(assert (=> b!1316346 (= e!750943 e!750942)))

(declare-fun c!125520 () Bool)

(assert (=> b!1316346 (= c!125520 (validKeyInArray!0 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000)))))

(declare-fun b!1316347 () Bool)

(declare-fun e!750944 () Bool)

(declare-fun call!64659 () Bool)

(assert (=> b!1316347 (= e!750944 call!64659)))

(declare-fun b!1316348 () Bool)

(assert (=> b!1316348 (= e!750942 call!64659)))

(declare-fun d!142439 () Bool)

(declare-fun res!873924 () Bool)

(assert (=> d!142439 (=> res!873924 e!750943)))

(assert (=> d!142439 (= res!873924 (bvsge #b00000000000000000000000000000000 (size!43218 _keys!1628)))))

(assert (=> d!142439 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040) e!750943)))

(declare-fun b!1316349 () Bool)

(assert (=> b!1316349 (= e!750942 e!750944)))

(declare-fun lt!586052 () (_ BitVec 64))

(assert (=> b!1316349 (= lt!586052 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000))))

(declare-fun lt!586053 () Unit!43342)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!88383 (_ BitVec 64) (_ BitVec 32)) Unit!43342)

(assert (=> b!1316349 (= lt!586053 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1628 lt!586052 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!88383 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1316349 (arrayContainsKey!0 _keys!1628 lt!586052 #b00000000000000000000000000000000)))

(declare-fun lt!586051 () Unit!43342)

(assert (=> b!1316349 (= lt!586051 lt!586053)))

(declare-fun res!873923 () Bool)

(declare-datatypes ((SeekEntryResult!10032 0))(
  ( (MissingZero!10032 (index!42498 (_ BitVec 32))) (Found!10032 (index!42499 (_ BitVec 32))) (Intermediate!10032 (undefined!10844 Bool) (index!42500 (_ BitVec 32)) (x!117017 (_ BitVec 32))) (Undefined!10032) (MissingVacant!10032 (index!42501 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!88383 (_ BitVec 32)) SeekEntryResult!10032)

(assert (=> b!1316349 (= res!873923 (= (seekEntryOrOpen!0 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) _keys!1628 mask!2040) (Found!10032 #b00000000000000000000000000000000)))))

(assert (=> b!1316349 (=> (not res!873923) (not e!750944))))

(declare-fun bm!64656 () Bool)

(assert (=> bm!64656 (= call!64659 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1628 mask!2040))))

(assert (= (and d!142439 (not res!873924)) b!1316346))

(assert (= (and b!1316346 c!125520) b!1316349))

(assert (= (and b!1316346 (not c!125520)) b!1316348))

(assert (= (and b!1316349 res!873923) b!1316347))

(assert (= (or b!1316347 b!1316348) bm!64656))

(declare-fun m!1204323 () Bool)

(assert (=> b!1316346 m!1204323))

(assert (=> b!1316346 m!1204323))

(declare-fun m!1204325 () Bool)

(assert (=> b!1316346 m!1204325))

(assert (=> b!1316349 m!1204323))

(declare-fun m!1204327 () Bool)

(assert (=> b!1316349 m!1204327))

(declare-fun m!1204329 () Bool)

(assert (=> b!1316349 m!1204329))

(assert (=> b!1316349 m!1204323))

(declare-fun m!1204331 () Bool)

(assert (=> b!1316349 m!1204331))

(declare-fun m!1204333 () Bool)

(assert (=> bm!64656 m!1204333))

(assert (=> b!1316197 d!142439))

(declare-fun bm!64659 () Bool)

(declare-fun call!64662 () Bool)

(declare-fun c!125523 () Bool)

(assert (=> bm!64659 (= call!64662 (arrayNoDuplicates!0 _keys!1628 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125523 (Cons!30461 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) Nil!30462) Nil!30462)))))

(declare-fun b!1316360 () Bool)

(declare-fun e!750955 () Bool)

(declare-fun contains!8586 (List!30465 (_ BitVec 64)) Bool)

(assert (=> b!1316360 (= e!750955 (contains!8586 Nil!30462 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000)))))

(declare-fun b!1316361 () Bool)

(declare-fun e!750956 () Bool)

(declare-fun e!750953 () Bool)

(assert (=> b!1316361 (= e!750956 e!750953)))

(assert (=> b!1316361 (= c!125523 (validKeyInArray!0 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000)))))

(declare-fun b!1316362 () Bool)

(declare-fun e!750954 () Bool)

(assert (=> b!1316362 (= e!750954 e!750956)))

(declare-fun res!873933 () Bool)

(assert (=> b!1316362 (=> (not res!873933) (not e!750956))))

(assert (=> b!1316362 (= res!873933 (not e!750955))))

(declare-fun res!873932 () Bool)

(assert (=> b!1316362 (=> (not res!873932) (not e!750955))))

(assert (=> b!1316362 (= res!873932 (validKeyInArray!0 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000)))))

(declare-fun b!1316363 () Bool)

(assert (=> b!1316363 (= e!750953 call!64662)))

(declare-fun b!1316364 () Bool)

(assert (=> b!1316364 (= e!750953 call!64662)))

(declare-fun d!142441 () Bool)

(declare-fun res!873931 () Bool)

(assert (=> d!142441 (=> res!873931 e!750954)))

(assert (=> d!142441 (= res!873931 (bvsge #b00000000000000000000000000000000 (size!43218 _keys!1628)))))

(assert (=> d!142441 (= (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30462) e!750954)))

(assert (= (and d!142441 (not res!873931)) b!1316362))

(assert (= (and b!1316362 res!873932) b!1316360))

(assert (= (and b!1316362 res!873933) b!1316361))

(assert (= (and b!1316361 c!125523) b!1316363))

(assert (= (and b!1316361 (not c!125523)) b!1316364))

(assert (= (or b!1316363 b!1316364) bm!64659))

(assert (=> bm!64659 m!1204323))

(declare-fun m!1204335 () Bool)

(assert (=> bm!64659 m!1204335))

(assert (=> b!1316360 m!1204323))

(assert (=> b!1316360 m!1204323))

(declare-fun m!1204337 () Bool)

(assert (=> b!1316360 m!1204337))

(assert (=> b!1316361 m!1204323))

(assert (=> b!1316361 m!1204323))

(assert (=> b!1316361 m!1204325))

(assert (=> b!1316362 m!1204323))

(assert (=> b!1316362 m!1204323))

(assert (=> b!1316362 m!1204325))

(assert (=> b!1316202 d!142441))

(declare-fun d!142443 () Bool)

(assert (=> d!142443 (= (validKeyInArray!0 (select (arr!42667 _keys!1628) from!2020)) (and (not (= (select (arr!42667 _keys!1628) from!2020) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!42667 _keys!1628) from!2020) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1316204 d!142443))

(declare-fun d!142445 () Bool)

(assert (=> d!142445 (= (validMask!0 mask!2040) (and (or (= mask!2040 #b00000000000000000000000000000111) (= mask!2040 #b00000000000000000000000000001111) (= mask!2040 #b00000000000000000000000000011111) (= mask!2040 #b00000000000000000000000000111111) (= mask!2040 #b00000000000000000000000001111111) (= mask!2040 #b00000000000000000000000011111111) (= mask!2040 #b00000000000000000000000111111111) (= mask!2040 #b00000000000000000000001111111111) (= mask!2040 #b00000000000000000000011111111111) (= mask!2040 #b00000000000000000000111111111111) (= mask!2040 #b00000000000000000001111111111111) (= mask!2040 #b00000000000000000011111111111111) (= mask!2040 #b00000000000000000111111111111111) (= mask!2040 #b00000000000000001111111111111111) (= mask!2040 #b00000000000000011111111111111111) (= mask!2040 #b00000000000000111111111111111111) (= mask!2040 #b00000000000001111111111111111111) (= mask!2040 #b00000000000011111111111111111111) (= mask!2040 #b00000000000111111111111111111111) (= mask!2040 #b00000000001111111111111111111111) (= mask!2040 #b00000000011111111111111111111111) (= mask!2040 #b00000000111111111111111111111111) (= mask!2040 #b00000001111111111111111111111111) (= mask!2040 #b00000011111111111111111111111111) (= mask!2040 #b00000111111111111111111111111111) (= mask!2040 #b00001111111111111111111111111111) (= mask!2040 #b00011111111111111111111111111111) (= mask!2040 #b00111111111111111111111111111111)) (bvsle mask!2040 #b00111111111111111111111111111111)))))

(assert (=> start!111204 d!142445))

(declare-fun d!142447 () Bool)

(assert (=> d!142447 (= (array_inv!32191 _keys!1628) (bvsge (size!43218 _keys!1628) #b00000000000000000000000000000000))))

(assert (=> start!111204 d!142447))

(declare-fun d!142449 () Bool)

(assert (=> d!142449 (= (array_inv!32192 _values!1354) (bvsge (size!43219 _values!1354) #b00000000000000000000000000000000))))

(assert (=> start!111204 d!142449))

(declare-fun mapIsEmpty!55234 () Bool)

(declare-fun mapRes!55234 () Bool)

(assert (=> mapIsEmpty!55234 mapRes!55234))

(declare-fun b!1316372 () Bool)

(declare-fun e!750962 () Bool)

(assert (=> b!1316372 (= e!750962 tp_is_empty!35733)))

(declare-fun b!1316371 () Bool)

(declare-fun e!750961 () Bool)

(assert (=> b!1316371 (= e!750961 tp_is_empty!35733)))

(declare-fun condMapEmpty!55234 () Bool)

(declare-fun mapDefault!55234 () ValueCell!16968)

(assert (=> mapNonEmpty!55228 (= condMapEmpty!55234 (= mapRest!55228 ((as const (Array (_ BitVec 32) ValueCell!16968)) mapDefault!55234)))))

(assert (=> mapNonEmpty!55228 (= tp!105332 (and e!750962 mapRes!55234))))

(declare-fun mapNonEmpty!55234 () Bool)

(declare-fun tp!105341 () Bool)

(assert (=> mapNonEmpty!55234 (= mapRes!55234 (and tp!105341 e!750961))))

(declare-fun mapRest!55234 () (Array (_ BitVec 32) ValueCell!16968))

(declare-fun mapKey!55234 () (_ BitVec 32))

(declare-fun mapValue!55234 () ValueCell!16968)

(assert (=> mapNonEmpty!55234 (= mapRest!55228 (store mapRest!55234 mapKey!55234 mapValue!55234))))

(assert (= (and mapNonEmpty!55228 condMapEmpty!55234) mapIsEmpty!55234))

(assert (= (and mapNonEmpty!55228 (not condMapEmpty!55234)) mapNonEmpty!55234))

(assert (= (and mapNonEmpty!55234 ((_ is ValueCellFull!16968) mapValue!55234)) b!1316371))

(assert (= (and mapNonEmpty!55228 ((_ is ValueCellFull!16968) mapDefault!55234)) b!1316372))

(declare-fun m!1204339 () Bool)

(assert (=> mapNonEmpty!55234 m!1204339))

(declare-fun b_lambda!23377 () Bool)

(assert (= b_lambda!23375 (or (and start!111204 b_free!30003) b_lambda!23377)))

(declare-fun b_lambda!23379 () Bool)

(assert (= b_lambda!23373 (or (and start!111204 b_free!30003) b_lambda!23379)))

(check-sat (not bm!64652) (not bm!64656) (not mapNonEmpty!55234) (not b!1316248) (not b!1316298) (not b!1316300) (not b!1316326) (not b!1316324) (not bm!64650) b_and!48227 (not b!1316360) (not bm!64645) (not b!1316246) (not b_next!30003) (not b!1316349) (not b_lambda!23379) (not b!1316292) (not bm!64644) (not b!1316307) (not d!142435) (not b!1316293) (not bm!64649) (not b!1316297) (not b!1316323) (not b!1316318) (not d!142431) (not b!1316331) (not bm!64643) (not b!1316316) (not d!142437) (not b!1316305) (not bm!64659) (not b!1316295) tp_is_empty!35733 (not b!1316314) (not d!142433) (not b!1316362) (not b_lambda!23377) (not bm!64651) (not b!1316346) (not b!1316319) (not b!1316333) (not bm!64642) (not b!1316361) (not b!1316321))
(check-sat b_and!48227 (not b_next!30003))
(get-model)

(declare-fun d!142451 () Bool)

(assert (=> d!142451 (= (validKeyInArray!0 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000)) (and (not (= (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1316361 d!142451))

(assert (=> b!1316362 d!142451))

(declare-fun d!142453 () Bool)

(declare-fun e!750964 () Bool)

(assert (=> d!142453 e!750964))

(declare-fun res!873934 () Bool)

(assert (=> d!142453 (=> res!873934 e!750964)))

(declare-fun lt!586057 () Bool)

(assert (=> d!142453 (= res!873934 (not lt!586057))))

(declare-fun lt!586054 () Bool)

(assert (=> d!142453 (= lt!586057 lt!586054)))

(declare-fun lt!586056 () Unit!43342)

(declare-fun e!750963 () Unit!43342)

(assert (=> d!142453 (= lt!586056 e!750963)))

(declare-fun c!125524 () Bool)

(assert (=> d!142453 (= c!125524 lt!586054)))

(assert (=> d!142453 (= lt!586054 (containsKey!731 (toList!10498 lt!586017) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!142453 (= (contains!8584 lt!586017 #b1000000000000000000000000000000000000000000000000000000000000000) lt!586057)))

(declare-fun b!1316373 () Bool)

(declare-fun lt!586055 () Unit!43342)

(assert (=> b!1316373 (= e!750963 lt!586055)))

(assert (=> b!1316373 (= lt!586055 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 lt!586017) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1316373 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586017) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1316374 () Bool)

(declare-fun Unit!43348 () Unit!43342)

(assert (=> b!1316374 (= e!750963 Unit!43348)))

(declare-fun b!1316375 () Bool)

(assert (=> b!1316375 (= e!750964 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586017) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142453 c!125524) b!1316373))

(assert (= (and d!142453 (not c!125524)) b!1316374))

(assert (= (and d!142453 (not res!873934)) b!1316375))

(declare-fun m!1204341 () Bool)

(assert (=> d!142453 m!1204341))

(declare-fun m!1204343 () Bool)

(assert (=> b!1316373 m!1204343))

(declare-fun m!1204345 () Bool)

(assert (=> b!1316373 m!1204345))

(assert (=> b!1316373 m!1204345))

(declare-fun m!1204347 () Bool)

(assert (=> b!1316373 m!1204347))

(assert (=> b!1316375 m!1204345))

(assert (=> b!1316375 m!1204345))

(assert (=> b!1316375 m!1204347))

(assert (=> bm!64643 d!142453))

(declare-fun d!142455 () Bool)

(declare-fun e!750967 () Bool)

(assert (=> d!142455 e!750967))

(declare-fun res!873940 () Bool)

(assert (=> d!142455 (=> (not res!873940) (not e!750967))))

(declare-fun lt!586068 () ListLongMap!20965)

(assert (=> d!142455 (= res!873940 (contains!8584 lt!586068 (_1!11658 (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))))

(declare-fun lt!586067 () List!30464)

(assert (=> d!142455 (= lt!586068 (ListLongMap!20966 lt!586067))))

(declare-fun lt!586066 () Unit!43342)

(declare-fun lt!586069 () Unit!43342)

(assert (=> d!142455 (= lt!586066 lt!586069)))

(assert (=> d!142455 (= (getValueByKey!713 lt!586067 (_1!11658 (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))) (Some!763 (_2!11658 (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!356 (List!30464 (_ BitVec 64) V!52747) Unit!43342)

(assert (=> d!142455 (= lt!586069 (lemmaContainsTupThenGetReturnValue!356 lt!586067 (_1!11658 (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))) (_2!11658 (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))))

(declare-fun insertStrictlySorted!485 (List!30464 (_ BitVec 64) V!52747) List!30464)

(assert (=> d!142455 (= lt!586067 (insertStrictlySorted!485 (toList!10498 (ite c!125505 call!64645 (ite c!125508 call!64644 call!64649))) (_1!11658 (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))) (_2!11658 (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))))

(assert (=> d!142455 (= (+!4478 (ite c!125505 call!64645 (ite c!125508 call!64644 call!64649)) (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))) lt!586068)))

(declare-fun b!1316380 () Bool)

(declare-fun res!873939 () Bool)

(assert (=> b!1316380 (=> (not res!873939) (not e!750967))))

(assert (=> b!1316380 (= res!873939 (= (getValueByKey!713 (toList!10498 lt!586068) (_1!11658 (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))) (Some!763 (_2!11658 (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))))

(declare-fun b!1316381 () Bool)

(declare-fun contains!8587 (List!30464 tuple2!23296) Bool)

(assert (=> b!1316381 (= e!750967 (contains!8587 (toList!10498 lt!586068) (ite (or c!125505 c!125508) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(assert (= (and d!142455 res!873940) b!1316380))

(assert (= (and b!1316380 res!873939) b!1316381))

(declare-fun m!1204349 () Bool)

(assert (=> d!142455 m!1204349))

(declare-fun m!1204351 () Bool)

(assert (=> d!142455 m!1204351))

(declare-fun m!1204353 () Bool)

(assert (=> d!142455 m!1204353))

(declare-fun m!1204355 () Bool)

(assert (=> d!142455 m!1204355))

(declare-fun m!1204357 () Bool)

(assert (=> b!1316380 m!1204357))

(declare-fun m!1204359 () Bool)

(assert (=> b!1316381 m!1204359))

(assert (=> bm!64644 d!142455))

(declare-fun d!142457 () Bool)

(assert (=> d!142457 (= (validKeyInArray!0 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))) (and (not (= (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1316300 d!142457))

(declare-fun d!142459 () Bool)

(declare-fun get!21494 (Option!764) V!52747)

(assert (=> d!142459 (= (apply!1063 lt!586043 (select (arr!42667 _keys!1628) from!2020)) (get!21494 (getValueByKey!713 (toList!10498 lt!586043) (select (arr!42667 _keys!1628) from!2020))))))

(declare-fun bs!37592 () Bool)

(assert (= bs!37592 d!142459))

(assert (=> bs!37592 m!1204169))

(declare-fun m!1204361 () Bool)

(assert (=> bs!37592 m!1204361))

(assert (=> bs!37592 m!1204361))

(declare-fun m!1204363 () Bool)

(assert (=> bs!37592 m!1204363))

(assert (=> b!1316333 d!142459))

(declare-fun d!142461 () Bool)

(declare-fun c!125527 () Bool)

(assert (=> d!142461 (= c!125527 ((_ is ValueCellFull!16968) (select (arr!42668 _values!1354) from!2020)))))

(declare-fun e!750970 () V!52747)

(assert (=> d!142461 (= (get!21493 (select (arr!42668 _values!1354) from!2020) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000)) e!750970)))

(declare-fun b!1316386 () Bool)

(declare-fun get!21495 (ValueCell!16968 V!52747) V!52747)

(assert (=> b!1316386 (= e!750970 (get!21495 (select (arr!42668 _values!1354) from!2020) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1316387 () Bool)

(declare-fun get!21496 (ValueCell!16968 V!52747) V!52747)

(assert (=> b!1316387 (= e!750970 (get!21496 (select (arr!42668 _values!1354) from!2020) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142461 c!125527) b!1316386))

(assert (= (and d!142461 (not c!125527)) b!1316387))

(assert (=> b!1316386 m!1204279))

(assert (=> b!1316386 m!1204219))

(declare-fun m!1204365 () Bool)

(assert (=> b!1316386 m!1204365))

(assert (=> b!1316387 m!1204279))

(assert (=> b!1316387 m!1204219))

(declare-fun m!1204367 () Bool)

(assert (=> b!1316387 m!1204367))

(assert (=> b!1316333 d!142461))

(declare-fun d!142463 () Bool)

(declare-fun res!873945 () Bool)

(declare-fun e!750975 () Bool)

(assert (=> d!142463 (=> res!873945 e!750975)))

(assert (=> d!142463 (= res!873945 (and ((_ is Cons!30460) (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))) (= (_1!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)))) k0!1175)))))

(assert (=> d!142463 (= (containsKey!731 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175) e!750975)))

(declare-fun b!1316392 () Bool)

(declare-fun e!750976 () Bool)

(assert (=> b!1316392 (= e!750975 e!750976)))

(declare-fun res!873946 () Bool)

(assert (=> b!1316392 (=> (not res!873946) (not e!750976))))

(assert (=> b!1316392 (= res!873946 (and (or (not ((_ is Cons!30460) (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)))) (bvsle (_1!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)))) k0!1175)) ((_ is Cons!30460) (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))) (bvslt (_1!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)))) k0!1175)))))

(declare-fun b!1316393 () Bool)

(assert (=> b!1316393 (= e!750976 (containsKey!731 (t!44077 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))) k0!1175))))

(assert (= (and d!142463 (not res!873945)) b!1316392))

(assert (= (and b!1316392 res!873946) b!1316393))

(declare-fun m!1204369 () Bool)

(assert (=> b!1316393 m!1204369))

(assert (=> d!142431 d!142463))

(declare-fun d!142465 () Bool)

(assert (=> d!142465 (contains!8584 (+!4478 lt!586040 (tuple2!23297 lt!586026 zeroValue!1296)) lt!586044)))

(declare-fun lt!586072 () Unit!43342)

(declare-fun choose!1951 (ListLongMap!20965 (_ BitVec 64) V!52747 (_ BitVec 64)) Unit!43342)

(assert (=> d!142465 (= lt!586072 (choose!1951 lt!586040 lt!586026 zeroValue!1296 lt!586044))))

(assert (=> d!142465 (contains!8584 lt!586040 lt!586044)))

(assert (=> d!142465 (= (addStillContains!1132 lt!586040 lt!586026 zeroValue!1296 lt!586044) lt!586072)))

(declare-fun bs!37593 () Bool)

(assert (= bs!37593 d!142465))

(assert (=> bs!37593 m!1204283))

(assert (=> bs!37593 m!1204283))

(assert (=> bs!37593 m!1204311))

(declare-fun m!1204371 () Bool)

(assert (=> bs!37593 m!1204371))

(declare-fun m!1204373 () Bool)

(assert (=> bs!37593 m!1204373))

(assert (=> b!1316318 d!142465))

(declare-fun d!142467 () Bool)

(assert (=> d!142467 (= (apply!1063 (+!4478 lt!586027 (tuple2!23297 lt!586041 minValue!1296)) lt!586024) (apply!1063 lt!586027 lt!586024))))

(declare-fun lt!586075 () Unit!43342)

(declare-fun choose!1952 (ListLongMap!20965 (_ BitVec 64) V!52747 (_ BitVec 64)) Unit!43342)

(assert (=> d!142467 (= lt!586075 (choose!1952 lt!586027 lt!586041 minValue!1296 lt!586024))))

(declare-fun e!750979 () Bool)

(assert (=> d!142467 e!750979))

(declare-fun res!873949 () Bool)

(assert (=> d!142467 (=> (not res!873949) (not e!750979))))

(assert (=> d!142467 (= res!873949 (contains!8584 lt!586027 lt!586024))))

(assert (=> d!142467 (= (addApplyDifferent!566 lt!586027 lt!586041 minValue!1296 lt!586024) lt!586075)))

(declare-fun b!1316398 () Bool)

(assert (=> b!1316398 (= e!750979 (not (= lt!586024 lt!586041)))))

(assert (= (and d!142467 res!873949) b!1316398))

(declare-fun m!1204375 () Bool)

(assert (=> d!142467 m!1204375))

(assert (=> d!142467 m!1204295))

(declare-fun m!1204377 () Bool)

(assert (=> d!142467 m!1204377))

(assert (=> d!142467 m!1204295))

(assert (=> d!142467 m!1204299))

(assert (=> d!142467 m!1204297))

(assert (=> b!1316318 d!142467))

(declare-fun d!142469 () Bool)

(declare-fun e!750981 () Bool)

(assert (=> d!142469 e!750981))

(declare-fun res!873950 () Bool)

(assert (=> d!142469 (=> res!873950 e!750981)))

(declare-fun lt!586079 () Bool)

(assert (=> d!142469 (= res!873950 (not lt!586079))))

(declare-fun lt!586076 () Bool)

(assert (=> d!142469 (= lt!586079 lt!586076)))

(declare-fun lt!586078 () Unit!43342)

(declare-fun e!750980 () Unit!43342)

(assert (=> d!142469 (= lt!586078 e!750980)))

(declare-fun c!125528 () Bool)

(assert (=> d!142469 (= c!125528 lt!586076)))

(assert (=> d!142469 (= lt!586076 (containsKey!731 (toList!10498 (+!4478 lt!586040 (tuple2!23297 lt!586026 zeroValue!1296))) lt!586044))))

(assert (=> d!142469 (= (contains!8584 (+!4478 lt!586040 (tuple2!23297 lt!586026 zeroValue!1296)) lt!586044) lt!586079)))

(declare-fun b!1316399 () Bool)

(declare-fun lt!586077 () Unit!43342)

(assert (=> b!1316399 (= e!750980 lt!586077)))

(assert (=> b!1316399 (= lt!586077 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 (+!4478 lt!586040 (tuple2!23297 lt!586026 zeroValue!1296))) lt!586044))))

(assert (=> b!1316399 (isDefined!516 (getValueByKey!713 (toList!10498 (+!4478 lt!586040 (tuple2!23297 lt!586026 zeroValue!1296))) lt!586044))))

(declare-fun b!1316400 () Bool)

(declare-fun Unit!43349 () Unit!43342)

(assert (=> b!1316400 (= e!750980 Unit!43349)))

(declare-fun b!1316401 () Bool)

(assert (=> b!1316401 (= e!750981 (isDefined!516 (getValueByKey!713 (toList!10498 (+!4478 lt!586040 (tuple2!23297 lt!586026 zeroValue!1296))) lt!586044)))))

(assert (= (and d!142469 c!125528) b!1316399))

(assert (= (and d!142469 (not c!125528)) b!1316400))

(assert (= (and d!142469 (not res!873950)) b!1316401))

(declare-fun m!1204379 () Bool)

(assert (=> d!142469 m!1204379))

(declare-fun m!1204381 () Bool)

(assert (=> b!1316399 m!1204381))

(declare-fun m!1204383 () Bool)

(assert (=> b!1316399 m!1204383))

(assert (=> b!1316399 m!1204383))

(declare-fun m!1204385 () Bool)

(assert (=> b!1316399 m!1204385))

(assert (=> b!1316401 m!1204383))

(assert (=> b!1316401 m!1204383))

(assert (=> b!1316401 m!1204385))

(assert (=> b!1316318 d!142469))

(declare-fun d!142471 () Bool)

(assert (=> d!142471 (= (apply!1063 (+!4478 lt!586029 (tuple2!23297 lt!586036 zeroValue!1296)) lt!586042) (apply!1063 lt!586029 lt!586042))))

(declare-fun lt!586080 () Unit!43342)

(assert (=> d!142471 (= lt!586080 (choose!1952 lt!586029 lt!586036 zeroValue!1296 lt!586042))))

(declare-fun e!750982 () Bool)

(assert (=> d!142471 e!750982))

(declare-fun res!873951 () Bool)

(assert (=> d!142471 (=> (not res!873951) (not e!750982))))

(assert (=> d!142471 (= res!873951 (contains!8584 lt!586029 lt!586042))))

(assert (=> d!142471 (= (addApplyDifferent!566 lt!586029 lt!586036 zeroValue!1296 lt!586042) lt!586080)))

(declare-fun b!1316402 () Bool)

(assert (=> b!1316402 (= e!750982 (not (= lt!586042 lt!586036)))))

(assert (= (and d!142471 res!873951) b!1316402))

(declare-fun m!1204387 () Bool)

(assert (=> d!142471 m!1204387))

(assert (=> d!142471 m!1204293))

(declare-fun m!1204389 () Bool)

(assert (=> d!142471 m!1204389))

(assert (=> d!142471 m!1204293))

(assert (=> d!142471 m!1204309))

(assert (=> d!142471 m!1204305))

(assert (=> b!1316318 d!142471))

(declare-fun d!142473 () Bool)

(declare-fun e!750983 () Bool)

(assert (=> d!142473 e!750983))

(declare-fun res!873953 () Bool)

(assert (=> d!142473 (=> (not res!873953) (not e!750983))))

(declare-fun lt!586083 () ListLongMap!20965)

(assert (=> d!142473 (= res!873953 (contains!8584 lt!586083 (_1!11658 (tuple2!23297 lt!586036 zeroValue!1296))))))

(declare-fun lt!586082 () List!30464)

(assert (=> d!142473 (= lt!586083 (ListLongMap!20966 lt!586082))))

(declare-fun lt!586081 () Unit!43342)

(declare-fun lt!586084 () Unit!43342)

(assert (=> d!142473 (= lt!586081 lt!586084)))

(assert (=> d!142473 (= (getValueByKey!713 lt!586082 (_1!11658 (tuple2!23297 lt!586036 zeroValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586036 zeroValue!1296))))))

(assert (=> d!142473 (= lt!586084 (lemmaContainsTupThenGetReturnValue!356 lt!586082 (_1!11658 (tuple2!23297 lt!586036 zeroValue!1296)) (_2!11658 (tuple2!23297 lt!586036 zeroValue!1296))))))

(assert (=> d!142473 (= lt!586082 (insertStrictlySorted!485 (toList!10498 lt!586029) (_1!11658 (tuple2!23297 lt!586036 zeroValue!1296)) (_2!11658 (tuple2!23297 lt!586036 zeroValue!1296))))))

(assert (=> d!142473 (= (+!4478 lt!586029 (tuple2!23297 lt!586036 zeroValue!1296)) lt!586083)))

(declare-fun b!1316403 () Bool)

(declare-fun res!873952 () Bool)

(assert (=> b!1316403 (=> (not res!873952) (not e!750983))))

(assert (=> b!1316403 (= res!873952 (= (getValueByKey!713 (toList!10498 lt!586083) (_1!11658 (tuple2!23297 lt!586036 zeroValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586036 zeroValue!1296)))))))

(declare-fun b!1316404 () Bool)

(assert (=> b!1316404 (= e!750983 (contains!8587 (toList!10498 lt!586083) (tuple2!23297 lt!586036 zeroValue!1296)))))

(assert (= (and d!142473 res!873953) b!1316403))

(assert (= (and b!1316403 res!873952) b!1316404))

(declare-fun m!1204391 () Bool)

(assert (=> d!142473 m!1204391))

(declare-fun m!1204393 () Bool)

(assert (=> d!142473 m!1204393))

(declare-fun m!1204395 () Bool)

(assert (=> d!142473 m!1204395))

(declare-fun m!1204397 () Bool)

(assert (=> d!142473 m!1204397))

(declare-fun m!1204399 () Bool)

(assert (=> b!1316403 m!1204399))

(declare-fun m!1204401 () Bool)

(assert (=> b!1316404 m!1204401))

(assert (=> b!1316318 d!142473))

(declare-fun d!142475 () Bool)

(assert (=> d!142475 (= (apply!1063 lt!586027 lt!586024) (get!21494 (getValueByKey!713 (toList!10498 lt!586027) lt!586024)))))

(declare-fun bs!37594 () Bool)

(assert (= bs!37594 d!142475))

(declare-fun m!1204403 () Bool)

(assert (=> bs!37594 m!1204403))

(assert (=> bs!37594 m!1204403))

(declare-fun m!1204405 () Bool)

(assert (=> bs!37594 m!1204405))

(assert (=> b!1316318 d!142475))

(declare-fun d!142477 () Bool)

(assert (=> d!142477 (= (apply!1063 lt!586029 lt!586042) (get!21494 (getValueByKey!713 (toList!10498 lt!586029) lt!586042)))))

(declare-fun bs!37595 () Bool)

(assert (= bs!37595 d!142477))

(declare-fun m!1204407 () Bool)

(assert (=> bs!37595 m!1204407))

(assert (=> bs!37595 m!1204407))

(declare-fun m!1204409 () Bool)

(assert (=> bs!37595 m!1204409))

(assert (=> b!1316318 d!142477))

(declare-fun d!142479 () Bool)

(assert (=> d!142479 (= (apply!1063 (+!4478 lt!586027 (tuple2!23297 lt!586041 minValue!1296)) lt!586024) (get!21494 (getValueByKey!713 (toList!10498 (+!4478 lt!586027 (tuple2!23297 lt!586041 minValue!1296))) lt!586024)))))

(declare-fun bs!37596 () Bool)

(assert (= bs!37596 d!142479))

(declare-fun m!1204411 () Bool)

(assert (=> bs!37596 m!1204411))

(assert (=> bs!37596 m!1204411))

(declare-fun m!1204413 () Bool)

(assert (=> bs!37596 m!1204413))

(assert (=> b!1316318 d!142479))

(declare-fun d!142481 () Bool)

(declare-fun e!750984 () Bool)

(assert (=> d!142481 e!750984))

(declare-fun res!873955 () Bool)

(assert (=> d!142481 (=> (not res!873955) (not e!750984))))

(declare-fun lt!586087 () ListLongMap!20965)

(assert (=> d!142481 (= res!873955 (contains!8584 lt!586087 (_1!11658 (tuple2!23297 lt!586038 minValue!1296))))))

(declare-fun lt!586086 () List!30464)

(assert (=> d!142481 (= lt!586087 (ListLongMap!20966 lt!586086))))

(declare-fun lt!586085 () Unit!43342)

(declare-fun lt!586088 () Unit!43342)

(assert (=> d!142481 (= lt!586085 lt!586088)))

(assert (=> d!142481 (= (getValueByKey!713 lt!586086 (_1!11658 (tuple2!23297 lt!586038 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586038 minValue!1296))))))

(assert (=> d!142481 (= lt!586088 (lemmaContainsTupThenGetReturnValue!356 lt!586086 (_1!11658 (tuple2!23297 lt!586038 minValue!1296)) (_2!11658 (tuple2!23297 lt!586038 minValue!1296))))))

(assert (=> d!142481 (= lt!586086 (insertStrictlySorted!485 (toList!10498 lt!586025) (_1!11658 (tuple2!23297 lt!586038 minValue!1296)) (_2!11658 (tuple2!23297 lt!586038 minValue!1296))))))

(assert (=> d!142481 (= (+!4478 lt!586025 (tuple2!23297 lt!586038 minValue!1296)) lt!586087)))

(declare-fun b!1316405 () Bool)

(declare-fun res!873954 () Bool)

(assert (=> b!1316405 (=> (not res!873954) (not e!750984))))

(assert (=> b!1316405 (= res!873954 (= (getValueByKey!713 (toList!10498 lt!586087) (_1!11658 (tuple2!23297 lt!586038 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586038 minValue!1296)))))))

(declare-fun b!1316406 () Bool)

(assert (=> b!1316406 (= e!750984 (contains!8587 (toList!10498 lt!586087) (tuple2!23297 lt!586038 minValue!1296)))))

(assert (= (and d!142481 res!873955) b!1316405))

(assert (= (and b!1316405 res!873954) b!1316406))

(declare-fun m!1204415 () Bool)

(assert (=> d!142481 m!1204415))

(declare-fun m!1204417 () Bool)

(assert (=> d!142481 m!1204417))

(declare-fun m!1204419 () Bool)

(assert (=> d!142481 m!1204419))

(declare-fun m!1204421 () Bool)

(assert (=> d!142481 m!1204421))

(declare-fun m!1204423 () Bool)

(assert (=> b!1316405 m!1204423))

(declare-fun m!1204425 () Bool)

(assert (=> b!1316406 m!1204425))

(assert (=> b!1316318 d!142481))

(declare-fun d!142483 () Bool)

(declare-fun e!750985 () Bool)

(assert (=> d!142483 e!750985))

(declare-fun res!873957 () Bool)

(assert (=> d!142483 (=> (not res!873957) (not e!750985))))

(declare-fun lt!586091 () ListLongMap!20965)

(assert (=> d!142483 (= res!873957 (contains!8584 lt!586091 (_1!11658 (tuple2!23297 lt!586041 minValue!1296))))))

(declare-fun lt!586090 () List!30464)

(assert (=> d!142483 (= lt!586091 (ListLongMap!20966 lt!586090))))

(declare-fun lt!586089 () Unit!43342)

(declare-fun lt!586092 () Unit!43342)

(assert (=> d!142483 (= lt!586089 lt!586092)))

(assert (=> d!142483 (= (getValueByKey!713 lt!586090 (_1!11658 (tuple2!23297 lt!586041 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586041 minValue!1296))))))

(assert (=> d!142483 (= lt!586092 (lemmaContainsTupThenGetReturnValue!356 lt!586090 (_1!11658 (tuple2!23297 lt!586041 minValue!1296)) (_2!11658 (tuple2!23297 lt!586041 minValue!1296))))))

(assert (=> d!142483 (= lt!586090 (insertStrictlySorted!485 (toList!10498 lt!586027) (_1!11658 (tuple2!23297 lt!586041 minValue!1296)) (_2!11658 (tuple2!23297 lt!586041 minValue!1296))))))

(assert (=> d!142483 (= (+!4478 lt!586027 (tuple2!23297 lt!586041 minValue!1296)) lt!586091)))

(declare-fun b!1316407 () Bool)

(declare-fun res!873956 () Bool)

(assert (=> b!1316407 (=> (not res!873956) (not e!750985))))

(assert (=> b!1316407 (= res!873956 (= (getValueByKey!713 (toList!10498 lt!586091) (_1!11658 (tuple2!23297 lt!586041 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586041 minValue!1296)))))))

(declare-fun b!1316408 () Bool)

(assert (=> b!1316408 (= e!750985 (contains!8587 (toList!10498 lt!586091) (tuple2!23297 lt!586041 minValue!1296)))))

(assert (= (and d!142483 res!873957) b!1316407))

(assert (= (and b!1316407 res!873956) b!1316408))

(declare-fun m!1204427 () Bool)

(assert (=> d!142483 m!1204427))

(declare-fun m!1204429 () Bool)

(assert (=> d!142483 m!1204429))

(declare-fun m!1204431 () Bool)

(assert (=> d!142483 m!1204431))

(declare-fun m!1204433 () Bool)

(assert (=> d!142483 m!1204433))

(declare-fun m!1204435 () Bool)

(assert (=> b!1316407 m!1204435))

(declare-fun m!1204437 () Bool)

(assert (=> b!1316408 m!1204437))

(assert (=> b!1316318 d!142483))

(declare-fun d!142485 () Bool)

(assert (=> d!142485 (= (apply!1063 lt!586025 lt!586028) (get!21494 (getValueByKey!713 (toList!10498 lt!586025) lt!586028)))))

(declare-fun bs!37597 () Bool)

(assert (= bs!37597 d!142485))

(declare-fun m!1204439 () Bool)

(assert (=> bs!37597 m!1204439))

(assert (=> bs!37597 m!1204439))

(declare-fun m!1204441 () Bool)

(assert (=> bs!37597 m!1204441))

(assert (=> b!1316318 d!142485))

(declare-fun d!142487 () Bool)

(assert (=> d!142487 (= (apply!1063 (+!4478 lt!586025 (tuple2!23297 lt!586038 minValue!1296)) lt!586028) (apply!1063 lt!586025 lt!586028))))

(declare-fun lt!586093 () Unit!43342)

(assert (=> d!142487 (= lt!586093 (choose!1952 lt!586025 lt!586038 minValue!1296 lt!586028))))

(declare-fun e!750986 () Bool)

(assert (=> d!142487 e!750986))

(declare-fun res!873958 () Bool)

(assert (=> d!142487 (=> (not res!873958) (not e!750986))))

(assert (=> d!142487 (= res!873958 (contains!8584 lt!586025 lt!586028))))

(assert (=> d!142487 (= (addApplyDifferent!566 lt!586025 lt!586038 minValue!1296 lt!586028) lt!586093)))

(declare-fun b!1316409 () Bool)

(assert (=> b!1316409 (= e!750986 (not (= lt!586028 lt!586038)))))

(assert (= (and d!142487 res!873958) b!1316409))

(declare-fun m!1204443 () Bool)

(assert (=> d!142487 m!1204443))

(assert (=> d!142487 m!1204301))

(declare-fun m!1204445 () Bool)

(assert (=> d!142487 m!1204445))

(assert (=> d!142487 m!1204301))

(assert (=> d!142487 m!1204313))

(assert (=> d!142487 m!1204289))

(assert (=> b!1316318 d!142487))

(declare-fun b!1316434 () Bool)

(declare-fun res!873968 () Bool)

(declare-fun e!751007 () Bool)

(assert (=> b!1316434 (=> (not res!873968) (not e!751007))))

(declare-fun lt!586114 () ListLongMap!20965)

(assert (=> b!1316434 (= res!873968 (not (contains!8584 lt!586114 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1316435 () Bool)

(declare-fun e!751002 () ListLongMap!20965)

(declare-fun e!751005 () ListLongMap!20965)

(assert (=> b!1316435 (= e!751002 e!751005)))

(declare-fun c!125539 () Bool)

(assert (=> b!1316435 (= c!125539 (validKeyInArray!0 (select (arr!42667 _keys!1628) from!2020)))))

(declare-fun d!142489 () Bool)

(assert (=> d!142489 e!751007))

(declare-fun res!873970 () Bool)

(assert (=> d!142489 (=> (not res!873970) (not e!751007))))

(assert (=> d!142489 (= res!873970 (not (contains!8584 lt!586114 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!142489 (= lt!586114 e!751002)))

(declare-fun c!125540 () Bool)

(assert (=> d!142489 (= c!125540 (bvsge from!2020 (size!43218 _keys!1628)))))

(assert (=> d!142489 (validMask!0 mask!2040)))

(assert (=> d!142489 (= (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) lt!586114)))

(declare-fun b!1316436 () Bool)

(declare-fun e!751001 () Bool)

(declare-fun e!751004 () Bool)

(assert (=> b!1316436 (= e!751001 e!751004)))

(assert (=> b!1316436 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43218 _keys!1628)))))

(declare-fun res!873967 () Bool)

(assert (=> b!1316436 (= res!873967 (contains!8584 lt!586114 (select (arr!42667 _keys!1628) from!2020)))))

(assert (=> b!1316436 (=> (not res!873967) (not e!751004))))

(declare-fun b!1316437 () Bool)

(declare-fun e!751003 () Bool)

(assert (=> b!1316437 (= e!751003 (validKeyInArray!0 (select (arr!42667 _keys!1628) from!2020)))))

(assert (=> b!1316437 (bvsge from!2020 #b00000000000000000000000000000000)))

(declare-fun b!1316438 () Bool)

(assert (=> b!1316438 (= e!751002 (ListLongMap!20966 Nil!30461))))

(declare-fun b!1316439 () Bool)

(assert (=> b!1316439 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43218 _keys!1628)))))

(assert (=> b!1316439 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43219 _values!1354)))))

(assert (=> b!1316439 (= e!751004 (= (apply!1063 lt!586114 (select (arr!42667 _keys!1628) from!2020)) (get!21493 (select (arr!42668 _values!1354) from!2020) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!751006 () Bool)

(declare-fun b!1316440 () Bool)

(assert (=> b!1316440 (= e!751006 (= lt!586114 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd from!2020 #b00000000000000000000000000000001) defaultEntry!1357)))))

(declare-fun b!1316441 () Bool)

(declare-fun lt!586110 () Unit!43342)

(declare-fun lt!586113 () Unit!43342)

(assert (=> b!1316441 (= lt!586110 lt!586113)))

(declare-fun lt!586112 () (_ BitVec 64))

(declare-fun lt!586109 () (_ BitVec 64))

(declare-fun lt!586111 () ListLongMap!20965)

(declare-fun lt!586108 () V!52747)

(assert (=> b!1316441 (not (contains!8584 (+!4478 lt!586111 (tuple2!23297 lt!586112 lt!586108)) lt!586109))))

(declare-fun addStillNotContains!501 (ListLongMap!20965 (_ BitVec 64) V!52747 (_ BitVec 64)) Unit!43342)

(assert (=> b!1316441 (= lt!586113 (addStillNotContains!501 lt!586111 lt!586112 lt!586108 lt!586109))))

(assert (=> b!1316441 (= lt!586109 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1316441 (= lt!586108 (get!21493 (select (arr!42668 _values!1354) from!2020) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1316441 (= lt!586112 (select (arr!42667 _keys!1628) from!2020))))

(declare-fun call!64665 () ListLongMap!20965)

(assert (=> b!1316441 (= lt!586111 call!64665)))

(assert (=> b!1316441 (= e!751005 (+!4478 call!64665 (tuple2!23297 (select (arr!42667 _keys!1628) from!2020) (get!21493 (select (arr!42668 _values!1354) from!2020) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!64662 () Bool)

(assert (=> bm!64662 (= call!64665 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd from!2020 #b00000000000000000000000000000001) defaultEntry!1357))))

(declare-fun b!1316442 () Bool)

(assert (=> b!1316442 (= e!751007 e!751001)))

(declare-fun c!125538 () Bool)

(assert (=> b!1316442 (= c!125538 e!751003)))

(declare-fun res!873969 () Bool)

(assert (=> b!1316442 (=> (not res!873969) (not e!751003))))

(assert (=> b!1316442 (= res!873969 (bvslt from!2020 (size!43218 _keys!1628)))))

(declare-fun b!1316443 () Bool)

(declare-fun isEmpty!1076 (ListLongMap!20965) Bool)

(assert (=> b!1316443 (= e!751006 (isEmpty!1076 lt!586114))))

(declare-fun b!1316444 () Bool)

(assert (=> b!1316444 (= e!751001 e!751006)))

(declare-fun c!125537 () Bool)

(assert (=> b!1316444 (= c!125537 (bvslt from!2020 (size!43218 _keys!1628)))))

(declare-fun b!1316445 () Bool)

(assert (=> b!1316445 (= e!751005 call!64665)))

(assert (= (and d!142489 c!125540) b!1316438))

(assert (= (and d!142489 (not c!125540)) b!1316435))

(assert (= (and b!1316435 c!125539) b!1316441))

(assert (= (and b!1316435 (not c!125539)) b!1316445))

(assert (= (or b!1316441 b!1316445) bm!64662))

(assert (= (and d!142489 res!873970) b!1316434))

(assert (= (and b!1316434 res!873968) b!1316442))

(assert (= (and b!1316442 res!873969) b!1316437))

(assert (= (and b!1316442 c!125538) b!1316436))

(assert (= (and b!1316442 (not c!125538)) b!1316444))

(assert (= (and b!1316436 res!873967) b!1316439))

(assert (= (and b!1316444 c!125537) b!1316440))

(assert (= (and b!1316444 (not c!125537)) b!1316443))

(declare-fun b_lambda!23381 () Bool)

(assert (=> (not b_lambda!23381) (not b!1316439)))

(assert (=> b!1316439 t!44082))

(declare-fun b_and!48229 () Bool)

(assert (= b_and!48227 (and (=> t!44082 result!23873) b_and!48229)))

(declare-fun b_lambda!23383 () Bool)

(assert (=> (not b_lambda!23383) (not b!1316441)))

(assert (=> b!1316441 t!44082))

(declare-fun b_and!48231 () Bool)

(assert (= b_and!48229 (and (=> t!44082 result!23873) b_and!48231)))

(declare-fun m!1204447 () Bool)

(assert (=> bm!64662 m!1204447))

(assert (=> b!1316437 m!1204169))

(assert (=> b!1316437 m!1204169))

(assert (=> b!1316437 m!1204171))

(assert (=> b!1316440 m!1204447))

(declare-fun m!1204449 () Bool)

(assert (=> b!1316434 m!1204449))

(assert (=> b!1316436 m!1204169))

(assert (=> b!1316436 m!1204169))

(declare-fun m!1204451 () Bool)

(assert (=> b!1316436 m!1204451))

(assert (=> b!1316435 m!1204169))

(assert (=> b!1316435 m!1204169))

(assert (=> b!1316435 m!1204171))

(assert (=> b!1316439 m!1204169))

(declare-fun m!1204453 () Bool)

(assert (=> b!1316439 m!1204453))

(assert (=> b!1316439 m!1204279))

(assert (=> b!1316439 m!1204279))

(assert (=> b!1316439 m!1204219))

(assert (=> b!1316439 m!1204281))

(assert (=> b!1316439 m!1204169))

(assert (=> b!1316439 m!1204219))

(assert (=> b!1316441 m!1204279))

(declare-fun m!1204455 () Bool)

(assert (=> b!1316441 m!1204455))

(declare-fun m!1204457 () Bool)

(assert (=> b!1316441 m!1204457))

(declare-fun m!1204459 () Bool)

(assert (=> b!1316441 m!1204459))

(assert (=> b!1316441 m!1204279))

(assert (=> b!1316441 m!1204219))

(assert (=> b!1316441 m!1204281))

(declare-fun m!1204461 () Bool)

(assert (=> b!1316441 m!1204461))

(assert (=> b!1316441 m!1204457))

(assert (=> b!1316441 m!1204169))

(assert (=> b!1316441 m!1204219))

(declare-fun m!1204463 () Bool)

(assert (=> d!142489 m!1204463))

(assert (=> d!142489 m!1204163))

(declare-fun m!1204465 () Bool)

(assert (=> b!1316443 m!1204465))

(assert (=> b!1316318 d!142489))

(declare-fun d!142491 () Bool)

(assert (=> d!142491 (= (apply!1063 (+!4478 lt!586029 (tuple2!23297 lt!586036 zeroValue!1296)) lt!586042) (get!21494 (getValueByKey!713 (toList!10498 (+!4478 lt!586029 (tuple2!23297 lt!586036 zeroValue!1296))) lt!586042)))))

(declare-fun bs!37598 () Bool)

(assert (= bs!37598 d!142491))

(declare-fun m!1204467 () Bool)

(assert (=> bs!37598 m!1204467))

(assert (=> bs!37598 m!1204467))

(declare-fun m!1204469 () Bool)

(assert (=> bs!37598 m!1204469))

(assert (=> b!1316318 d!142491))

(declare-fun d!142493 () Bool)

(assert (=> d!142493 (= (apply!1063 (+!4478 lt!586025 (tuple2!23297 lt!586038 minValue!1296)) lt!586028) (get!21494 (getValueByKey!713 (toList!10498 (+!4478 lt!586025 (tuple2!23297 lt!586038 minValue!1296))) lt!586028)))))

(declare-fun bs!37599 () Bool)

(assert (= bs!37599 d!142493))

(declare-fun m!1204471 () Bool)

(assert (=> bs!37599 m!1204471))

(assert (=> bs!37599 m!1204471))

(declare-fun m!1204473 () Bool)

(assert (=> bs!37599 m!1204473))

(assert (=> b!1316318 d!142493))

(declare-fun d!142495 () Bool)

(declare-fun e!751008 () Bool)

(assert (=> d!142495 e!751008))

(declare-fun res!873972 () Bool)

(assert (=> d!142495 (=> (not res!873972) (not e!751008))))

(declare-fun lt!586117 () ListLongMap!20965)

(assert (=> d!142495 (= res!873972 (contains!8584 lt!586117 (_1!11658 (tuple2!23297 lt!586026 zeroValue!1296))))))

(declare-fun lt!586116 () List!30464)

(assert (=> d!142495 (= lt!586117 (ListLongMap!20966 lt!586116))))

(declare-fun lt!586115 () Unit!43342)

(declare-fun lt!586118 () Unit!43342)

(assert (=> d!142495 (= lt!586115 lt!586118)))

(assert (=> d!142495 (= (getValueByKey!713 lt!586116 (_1!11658 (tuple2!23297 lt!586026 zeroValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586026 zeroValue!1296))))))

(assert (=> d!142495 (= lt!586118 (lemmaContainsTupThenGetReturnValue!356 lt!586116 (_1!11658 (tuple2!23297 lt!586026 zeroValue!1296)) (_2!11658 (tuple2!23297 lt!586026 zeroValue!1296))))))

(assert (=> d!142495 (= lt!586116 (insertStrictlySorted!485 (toList!10498 lt!586040) (_1!11658 (tuple2!23297 lt!586026 zeroValue!1296)) (_2!11658 (tuple2!23297 lt!586026 zeroValue!1296))))))

(assert (=> d!142495 (= (+!4478 lt!586040 (tuple2!23297 lt!586026 zeroValue!1296)) lt!586117)))

(declare-fun b!1316446 () Bool)

(declare-fun res!873971 () Bool)

(assert (=> b!1316446 (=> (not res!873971) (not e!751008))))

(assert (=> b!1316446 (= res!873971 (= (getValueByKey!713 (toList!10498 lt!586117) (_1!11658 (tuple2!23297 lt!586026 zeroValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586026 zeroValue!1296)))))))

(declare-fun b!1316447 () Bool)

(assert (=> b!1316447 (= e!751008 (contains!8587 (toList!10498 lt!586117) (tuple2!23297 lt!586026 zeroValue!1296)))))

(assert (= (and d!142495 res!873972) b!1316446))

(assert (= (and b!1316446 res!873971) b!1316447))

(declare-fun m!1204475 () Bool)

(assert (=> d!142495 m!1204475))

(declare-fun m!1204477 () Bool)

(assert (=> d!142495 m!1204477))

(declare-fun m!1204479 () Bool)

(assert (=> d!142495 m!1204479))

(declare-fun m!1204481 () Bool)

(assert (=> d!142495 m!1204481))

(declare-fun m!1204483 () Bool)

(assert (=> b!1316446 m!1204483))

(declare-fun m!1204485 () Bool)

(assert (=> b!1316447 m!1204485))

(assert (=> b!1316318 d!142495))

(declare-fun bm!64663 () Bool)

(declare-fun call!64666 () Bool)

(declare-fun c!125541 () Bool)

(assert (=> bm!64663 (= call!64666 (arrayNoDuplicates!0 _keys!1628 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!125541 (Cons!30461 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!125523 (Cons!30461 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) Nil!30462) Nil!30462)) (ite c!125523 (Cons!30461 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) Nil!30462) Nil!30462))))))

(declare-fun b!1316448 () Bool)

(declare-fun e!751011 () Bool)

(assert (=> b!1316448 (= e!751011 (contains!8586 (ite c!125523 (Cons!30461 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) Nil!30462) Nil!30462) (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1316449 () Bool)

(declare-fun e!751012 () Bool)

(declare-fun e!751009 () Bool)

(assert (=> b!1316449 (= e!751012 e!751009)))

(assert (=> b!1316449 (= c!125541 (validKeyInArray!0 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1316450 () Bool)

(declare-fun e!751010 () Bool)

(assert (=> b!1316450 (= e!751010 e!751012)))

(declare-fun res!873975 () Bool)

(assert (=> b!1316450 (=> (not res!873975) (not e!751012))))

(assert (=> b!1316450 (= res!873975 (not e!751011))))

(declare-fun res!873974 () Bool)

(assert (=> b!1316450 (=> (not res!873974) (not e!751011))))

(assert (=> b!1316450 (= res!873974 (validKeyInArray!0 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1316451 () Bool)

(assert (=> b!1316451 (= e!751009 call!64666)))

(declare-fun b!1316452 () Bool)

(assert (=> b!1316452 (= e!751009 call!64666)))

(declare-fun d!142497 () Bool)

(declare-fun res!873973 () Bool)

(assert (=> d!142497 (=> res!873973 e!751010)))

(assert (=> d!142497 (= res!873973 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!43218 _keys!1628)))))

(assert (=> d!142497 (= (arrayNoDuplicates!0 _keys!1628 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125523 (Cons!30461 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) Nil!30462) Nil!30462)) e!751010)))

(assert (= (and d!142497 (not res!873973)) b!1316450))

(assert (= (and b!1316450 res!873974) b!1316448))

(assert (= (and b!1316450 res!873975) b!1316449))

(assert (= (and b!1316449 c!125541) b!1316451))

(assert (= (and b!1316449 (not c!125541)) b!1316452))

(assert (= (or b!1316451 b!1316452) bm!64663))

(declare-fun m!1204487 () Bool)

(assert (=> bm!64663 m!1204487))

(declare-fun m!1204489 () Bool)

(assert (=> bm!64663 m!1204489))

(assert (=> b!1316448 m!1204487))

(assert (=> b!1316448 m!1204487))

(declare-fun m!1204491 () Bool)

(assert (=> b!1316448 m!1204491))

(assert (=> b!1316449 m!1204487))

(assert (=> b!1316449 m!1204487))

(declare-fun m!1204493 () Bool)

(assert (=> b!1316449 m!1204493))

(assert (=> b!1316450 m!1204487))

(assert (=> b!1316450 m!1204487))

(assert (=> b!1316450 m!1204493))

(assert (=> bm!64659 d!142497))

(assert (=> b!1316319 d!142443))

(assert (=> b!1316346 d!142451))

(declare-fun d!142499 () Bool)

(declare-fun lt!586121 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!658 (List!30465) (InoxSet (_ BitVec 64)))

(assert (=> d!142499 (= lt!586121 (select (content!658 Nil!30462) (select (arr!42667 _keys!1628) #b00000000000000000000000000000000)))))

(declare-fun e!751018 () Bool)

(assert (=> d!142499 (= lt!586121 e!751018)))

(declare-fun res!873981 () Bool)

(assert (=> d!142499 (=> (not res!873981) (not e!751018))))

(assert (=> d!142499 (= res!873981 ((_ is Cons!30461) Nil!30462))))

(assert (=> d!142499 (= (contains!8586 Nil!30462 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000)) lt!586121)))

(declare-fun b!1316457 () Bool)

(declare-fun e!751017 () Bool)

(assert (=> b!1316457 (= e!751018 e!751017)))

(declare-fun res!873980 () Bool)

(assert (=> b!1316457 (=> res!873980 e!751017)))

(assert (=> b!1316457 (= res!873980 (= (h!31670 Nil!30462) (select (arr!42667 _keys!1628) #b00000000000000000000000000000000)))))

(declare-fun b!1316458 () Bool)

(assert (=> b!1316458 (= e!751017 (contains!8586 (t!44078 Nil!30462) (select (arr!42667 _keys!1628) #b00000000000000000000000000000000)))))

(assert (= (and d!142499 res!873981) b!1316457))

(assert (= (and b!1316457 (not res!873980)) b!1316458))

(declare-fun m!1204495 () Bool)

(assert (=> d!142499 m!1204495))

(assert (=> d!142499 m!1204323))

(declare-fun m!1204497 () Bool)

(assert (=> d!142499 m!1204497))

(assert (=> b!1316458 m!1204323))

(declare-fun m!1204499 () Bool)

(assert (=> b!1316458 m!1204499))

(assert (=> b!1316360 d!142499))

(declare-fun d!142501 () Bool)

(assert (=> d!142501 (= (apply!1063 lt!586043 #b0000000000000000000000000000000000000000000000000000000000000000) (get!21494 (getValueByKey!713 (toList!10498 lt!586043) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37600 () Bool)

(assert (= bs!37600 d!142501))

(declare-fun m!1204501 () Bool)

(assert (=> bs!37600 m!1204501))

(assert (=> bs!37600 m!1204501))

(declare-fun m!1204503 () Bool)

(assert (=> bs!37600 m!1204503))

(assert (=> b!1316324 d!142501))

(declare-fun d!142503 () Bool)

(declare-fun e!751020 () Bool)

(assert (=> d!142503 e!751020))

(declare-fun res!873982 () Bool)

(assert (=> d!142503 (=> res!873982 e!751020)))

(declare-fun lt!586125 () Bool)

(assert (=> d!142503 (= res!873982 (not lt!586125))))

(declare-fun lt!586122 () Bool)

(assert (=> d!142503 (= lt!586125 lt!586122)))

(declare-fun lt!586124 () Unit!43342)

(declare-fun e!751019 () Unit!43342)

(assert (=> d!142503 (= lt!586124 e!751019)))

(declare-fun c!125542 () Bool)

(assert (=> d!142503 (= c!125542 lt!586122)))

(assert (=> d!142503 (= lt!586122 (containsKey!731 (toList!10498 lt!586017) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!142503 (= (contains!8584 lt!586017 #b0000000000000000000000000000000000000000000000000000000000000000) lt!586125)))

(declare-fun b!1316459 () Bool)

(declare-fun lt!586123 () Unit!43342)

(assert (=> b!1316459 (= e!751019 lt!586123)))

(assert (=> b!1316459 (= lt!586123 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 lt!586017) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1316459 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586017) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1316460 () Bool)

(declare-fun Unit!43350 () Unit!43342)

(assert (=> b!1316460 (= e!751019 Unit!43350)))

(declare-fun b!1316461 () Bool)

(assert (=> b!1316461 (= e!751020 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586017) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142503 c!125542) b!1316459))

(assert (= (and d!142503 (not c!125542)) b!1316460))

(assert (= (and d!142503 (not res!873982)) b!1316461))

(declare-fun m!1204505 () Bool)

(assert (=> d!142503 m!1204505))

(declare-fun m!1204507 () Bool)

(assert (=> b!1316459 m!1204507))

(declare-fun m!1204509 () Bool)

(assert (=> b!1316459 m!1204509))

(assert (=> b!1316459 m!1204509))

(declare-fun m!1204511 () Bool)

(assert (=> b!1316459 m!1204511))

(assert (=> b!1316461 m!1204509))

(assert (=> b!1316461 m!1204509))

(assert (=> b!1316461 m!1204511))

(assert (=> bm!64645 d!142503))

(assert (=> bm!64649 d!142489))

(declare-fun d!142505 () Bool)

(assert (=> d!142505 (= (apply!1063 lt!586017 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))) (get!21494 (getValueByKey!713 (toList!10498 lt!586017) (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020)))))))

(declare-fun bs!37601 () Bool)

(assert (= bs!37601 d!142505))

(assert (=> bs!37601 m!1204205))

(declare-fun m!1204513 () Bool)

(assert (=> bs!37601 m!1204513))

(assert (=> bs!37601 m!1204513))

(declare-fun m!1204515 () Bool)

(assert (=> bs!37601 m!1204515))

(assert (=> b!1316307 d!142505))

(declare-fun d!142507 () Bool)

(declare-fun c!125543 () Bool)

(assert (=> d!142507 (= c!125543 ((_ is ValueCellFull!16968) (select (arr!42668 _values!1354) (bvadd #b00000000000000000000000000000001 from!2020))))))

(declare-fun e!751021 () V!52747)

(assert (=> d!142507 (= (get!21493 (select (arr!42668 _values!1354) (bvadd #b00000000000000000000000000000001 from!2020)) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000)) e!751021)))

(declare-fun b!1316462 () Bool)

(assert (=> b!1316462 (= e!751021 (get!21495 (select (arr!42668 _values!1354) (bvadd #b00000000000000000000000000000001 from!2020)) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1316463 () Bool)

(assert (=> b!1316463 (= e!751021 (get!21496 (select (arr!42668 _values!1354) (bvadd #b00000000000000000000000000000001 from!2020)) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142507 c!125543) b!1316462))

(assert (= (and d!142507 (not c!125543)) b!1316463))

(assert (=> b!1316462 m!1204217))

(assert (=> b!1316462 m!1204219))

(declare-fun m!1204517 () Bool)

(assert (=> b!1316462 m!1204517))

(assert (=> b!1316463 m!1204217))

(assert (=> b!1316463 m!1204219))

(declare-fun m!1204519 () Bool)

(assert (=> b!1316463 m!1204519))

(assert (=> b!1316307 d!142507))

(declare-fun d!142509 () Bool)

(declare-fun res!873983 () Bool)

(declare-fun e!751022 () Bool)

(assert (=> d!142509 (=> res!873983 e!751022)))

(assert (=> d!142509 (= res!873983 (and ((_ is Cons!30460) (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))) (= (_1!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)))) k0!1175)))))

(assert (=> d!142509 (= (containsKey!731 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175) e!751022)))

(declare-fun b!1316464 () Bool)

(declare-fun e!751023 () Bool)

(assert (=> b!1316464 (= e!751022 e!751023)))

(declare-fun res!873984 () Bool)

(assert (=> b!1316464 (=> (not res!873984) (not e!751023))))

(assert (=> b!1316464 (= res!873984 (and (or (not ((_ is Cons!30460) (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)))) (bvsle (_1!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)))) k0!1175)) ((_ is Cons!30460) (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))) (bvslt (_1!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)))) k0!1175)))))

(declare-fun b!1316465 () Bool)

(assert (=> b!1316465 (= e!751023 (containsKey!731 (t!44077 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))) k0!1175))))

(assert (= (and d!142509 (not res!873983)) b!1316464))

(assert (= (and b!1316464 res!873984) b!1316465))

(declare-fun m!1204521 () Bool)

(assert (=> b!1316465 m!1204521))

(assert (=> d!142435 d!142509))

(assert (=> d!142437 d!142445))

(declare-fun d!142511 () Bool)

(assert (=> d!142511 (= (apply!1063 lt!586043 #b1000000000000000000000000000000000000000000000000000000000000000) (get!21494 (getValueByKey!713 (toList!10498 lt!586043) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37602 () Bool)

(assert (= bs!37602 d!142511))

(declare-fun m!1204523 () Bool)

(assert (=> bs!37602 m!1204523))

(assert (=> bs!37602 m!1204523))

(declare-fun m!1204525 () Bool)

(assert (=> bs!37602 m!1204525))

(assert (=> b!1316321 d!142511))

(declare-fun d!142513 () Bool)

(assert (=> d!142513 (arrayContainsKey!0 _keys!1628 lt!586052 #b00000000000000000000000000000000)))

(declare-fun lt!586128 () Unit!43342)

(declare-fun choose!13 (array!88383 (_ BitVec 64) (_ BitVec 32)) Unit!43342)

(assert (=> d!142513 (= lt!586128 (choose!13 _keys!1628 lt!586052 #b00000000000000000000000000000000))))

(assert (=> d!142513 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!142513 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1628 lt!586052 #b00000000000000000000000000000000) lt!586128)))

(declare-fun bs!37603 () Bool)

(assert (= bs!37603 d!142513))

(assert (=> bs!37603 m!1204329))

(declare-fun m!1204527 () Bool)

(assert (=> bs!37603 m!1204527))

(assert (=> b!1316349 d!142513))

(declare-fun d!142515 () Bool)

(declare-fun res!873989 () Bool)

(declare-fun e!751028 () Bool)

(assert (=> d!142515 (=> res!873989 e!751028)))

(assert (=> d!142515 (= res!873989 (= (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) lt!586052))))

(assert (=> d!142515 (= (arrayContainsKey!0 _keys!1628 lt!586052 #b00000000000000000000000000000000) e!751028)))

(declare-fun b!1316470 () Bool)

(declare-fun e!751029 () Bool)

(assert (=> b!1316470 (= e!751028 e!751029)))

(declare-fun res!873990 () Bool)

(assert (=> b!1316470 (=> (not res!873990) (not e!751029))))

(assert (=> b!1316470 (= res!873990 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!43218 _keys!1628)))))

(declare-fun b!1316471 () Bool)

(assert (=> b!1316471 (= e!751029 (arrayContainsKey!0 _keys!1628 lt!586052 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!142515 (not res!873989)) b!1316470))

(assert (= (and b!1316470 res!873990) b!1316471))

(assert (=> d!142515 m!1204323))

(declare-fun m!1204529 () Bool)

(assert (=> b!1316471 m!1204529))

(assert (=> b!1316349 d!142515))

(declare-fun b!1316484 () Bool)

(declare-fun e!751037 () SeekEntryResult!10032)

(declare-fun lt!586136 () SeekEntryResult!10032)

(assert (=> b!1316484 (= e!751037 (Found!10032 (index!42500 lt!586136)))))

(declare-fun b!1316485 () Bool)

(declare-fun e!751036 () SeekEntryResult!10032)

(assert (=> b!1316485 (= e!751036 e!751037)))

(declare-fun lt!586135 () (_ BitVec 64))

(assert (=> b!1316485 (= lt!586135 (select (arr!42667 _keys!1628) (index!42500 lt!586136)))))

(declare-fun c!125552 () Bool)

(assert (=> b!1316485 (= c!125552 (= lt!586135 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000)))))

(declare-fun b!1316486 () Bool)

(declare-fun c!125550 () Bool)

(assert (=> b!1316486 (= c!125550 (= lt!586135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!751038 () SeekEntryResult!10032)

(assert (=> b!1316486 (= e!751037 e!751038)))

(declare-fun d!142517 () Bool)

(declare-fun lt!586137 () SeekEntryResult!10032)

(assert (=> d!142517 (and (or ((_ is Undefined!10032) lt!586137) (not ((_ is Found!10032) lt!586137)) (and (bvsge (index!42499 lt!586137) #b00000000000000000000000000000000) (bvslt (index!42499 lt!586137) (size!43218 _keys!1628)))) (or ((_ is Undefined!10032) lt!586137) ((_ is Found!10032) lt!586137) (not ((_ is MissingZero!10032) lt!586137)) (and (bvsge (index!42498 lt!586137) #b00000000000000000000000000000000) (bvslt (index!42498 lt!586137) (size!43218 _keys!1628)))) (or ((_ is Undefined!10032) lt!586137) ((_ is Found!10032) lt!586137) ((_ is MissingZero!10032) lt!586137) (not ((_ is MissingVacant!10032) lt!586137)) (and (bvsge (index!42501 lt!586137) #b00000000000000000000000000000000) (bvslt (index!42501 lt!586137) (size!43218 _keys!1628)))) (or ((_ is Undefined!10032) lt!586137) (ite ((_ is Found!10032) lt!586137) (= (select (arr!42667 _keys!1628) (index!42499 lt!586137)) (select (arr!42667 _keys!1628) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10032) lt!586137) (= (select (arr!42667 _keys!1628) (index!42498 lt!586137)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10032) lt!586137) (= (select (arr!42667 _keys!1628) (index!42501 lt!586137)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!142517 (= lt!586137 e!751036)))

(declare-fun c!125551 () Bool)

(assert (=> d!142517 (= c!125551 (and ((_ is Intermediate!10032) lt!586136) (undefined!10844 lt!586136)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!88383 (_ BitVec 32)) SeekEntryResult!10032)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!142517 (= lt!586136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) mask!2040) (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) _keys!1628 mask!2040))))

(assert (=> d!142517 (validMask!0 mask!2040)))

(assert (=> d!142517 (= (seekEntryOrOpen!0 (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) _keys!1628 mask!2040) lt!586137)))

(declare-fun b!1316487 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!88383 (_ BitVec 32)) SeekEntryResult!10032)

(assert (=> b!1316487 (= e!751038 (seekKeyOrZeroReturnVacant!0 (x!117017 lt!586136) (index!42500 lt!586136) (index!42500 lt!586136) (select (arr!42667 _keys!1628) #b00000000000000000000000000000000) _keys!1628 mask!2040))))

(declare-fun b!1316488 () Bool)

(assert (=> b!1316488 (= e!751038 (MissingZero!10032 (index!42500 lt!586136)))))

(declare-fun b!1316489 () Bool)

(assert (=> b!1316489 (= e!751036 Undefined!10032)))

(assert (= (and d!142517 c!125551) b!1316489))

(assert (= (and d!142517 (not c!125551)) b!1316485))

(assert (= (and b!1316485 c!125552) b!1316484))

(assert (= (and b!1316485 (not c!125552)) b!1316486))

(assert (= (and b!1316486 c!125550) b!1316488))

(assert (= (and b!1316486 (not c!125550)) b!1316487))

(declare-fun m!1204531 () Bool)

(assert (=> b!1316485 m!1204531))

(declare-fun m!1204533 () Bool)

(assert (=> d!142517 m!1204533))

(declare-fun m!1204535 () Bool)

(assert (=> d!142517 m!1204535))

(assert (=> d!142517 m!1204323))

(declare-fun m!1204537 () Bool)

(assert (=> d!142517 m!1204537))

(declare-fun m!1204539 () Bool)

(assert (=> d!142517 m!1204539))

(assert (=> d!142517 m!1204323))

(assert (=> d!142517 m!1204535))

(declare-fun m!1204541 () Bool)

(assert (=> d!142517 m!1204541))

(assert (=> d!142517 m!1204163))

(assert (=> b!1316487 m!1204323))

(declare-fun m!1204543 () Bool)

(assert (=> b!1316487 m!1204543))

(assert (=> b!1316349 d!142517))

(declare-fun b!1316490 () Bool)

(declare-fun e!751040 () Bool)

(declare-fun e!751039 () Bool)

(assert (=> b!1316490 (= e!751040 e!751039)))

(declare-fun c!125553 () Bool)

(assert (=> b!1316490 (= c!125553 (validKeyInArray!0 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1316491 () Bool)

(declare-fun e!751041 () Bool)

(declare-fun call!64667 () Bool)

(assert (=> b!1316491 (= e!751041 call!64667)))

(declare-fun b!1316492 () Bool)

(assert (=> b!1316492 (= e!751039 call!64667)))

(declare-fun d!142519 () Bool)

(declare-fun res!873992 () Bool)

(assert (=> d!142519 (=> res!873992 e!751040)))

(assert (=> d!142519 (= res!873992 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!43218 _keys!1628)))))

(assert (=> d!142519 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1628 mask!2040) e!751040)))

(declare-fun b!1316493 () Bool)

(assert (=> b!1316493 (= e!751039 e!751041)))

(declare-fun lt!586139 () (_ BitVec 64))

(assert (=> b!1316493 (= lt!586139 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!586140 () Unit!43342)

(assert (=> b!1316493 (= lt!586140 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1628 lt!586139 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1316493 (arrayContainsKey!0 _keys!1628 lt!586139 #b00000000000000000000000000000000)))

(declare-fun lt!586138 () Unit!43342)

(assert (=> b!1316493 (= lt!586138 lt!586140)))

(declare-fun res!873991 () Bool)

(assert (=> b!1316493 (= res!873991 (= (seekEntryOrOpen!0 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1628 mask!2040) (Found!10032 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1316493 (=> (not res!873991) (not e!751041))))

(declare-fun bm!64664 () Bool)

(assert (=> bm!64664 (= call!64667 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1628 mask!2040))))

(assert (= (and d!142519 (not res!873992)) b!1316490))

(assert (= (and b!1316490 c!125553) b!1316493))

(assert (= (and b!1316490 (not c!125553)) b!1316492))

(assert (= (and b!1316493 res!873991) b!1316491))

(assert (= (or b!1316491 b!1316492) bm!64664))

(assert (=> b!1316490 m!1204487))

(assert (=> b!1316490 m!1204487))

(assert (=> b!1316490 m!1204493))

(assert (=> b!1316493 m!1204487))

(declare-fun m!1204545 () Bool)

(assert (=> b!1316493 m!1204545))

(declare-fun m!1204547 () Bool)

(assert (=> b!1316493 m!1204547))

(assert (=> b!1316493 m!1204487))

(declare-fun m!1204549 () Bool)

(assert (=> b!1316493 m!1204549))

(declare-fun m!1204551 () Bool)

(assert (=> bm!64664 m!1204551))

(assert (=> bm!64656 d!142519))

(assert (=> d!142433 d!142445))

(declare-fun d!142521 () Bool)

(declare-fun e!751043 () Bool)

(assert (=> d!142521 e!751043))

(declare-fun res!873993 () Bool)

(assert (=> d!142521 (=> res!873993 e!751043)))

(declare-fun lt!586144 () Bool)

(assert (=> d!142521 (= res!873993 (not lt!586144))))

(declare-fun lt!586141 () Bool)

(assert (=> d!142521 (= lt!586144 lt!586141)))

(declare-fun lt!586143 () Unit!43342)

(declare-fun e!751042 () Unit!43342)

(assert (=> d!142521 (= lt!586143 e!751042)))

(declare-fun c!125554 () Bool)

(assert (=> d!142521 (= c!125554 lt!586141)))

(assert (=> d!142521 (= lt!586141 (containsKey!731 (toList!10498 lt!586017) (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))))))

(assert (=> d!142521 (= (contains!8584 lt!586017 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))) lt!586144)))

(declare-fun b!1316494 () Bool)

(declare-fun lt!586142 () Unit!43342)

(assert (=> b!1316494 (= e!751042 lt!586142)))

(assert (=> b!1316494 (= lt!586142 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 lt!586017) (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))))))

(assert (=> b!1316494 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586017) (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))))))

(declare-fun b!1316495 () Bool)

(declare-fun Unit!43351 () Unit!43342)

(assert (=> b!1316495 (= e!751042 Unit!43351)))

(declare-fun b!1316496 () Bool)

(assert (=> b!1316496 (= e!751043 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586017) (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020)))))))

(assert (= (and d!142521 c!125554) b!1316494))

(assert (= (and d!142521 (not c!125554)) b!1316495))

(assert (= (and d!142521 (not res!873993)) b!1316496))

(assert (=> d!142521 m!1204205))

(declare-fun m!1204553 () Bool)

(assert (=> d!142521 m!1204553))

(assert (=> b!1316494 m!1204205))

(declare-fun m!1204555 () Bool)

(assert (=> b!1316494 m!1204555))

(assert (=> b!1316494 m!1204205))

(assert (=> b!1316494 m!1204513))

(assert (=> b!1316494 m!1204513))

(declare-fun m!1204557 () Bool)

(assert (=> b!1316494 m!1204557))

(assert (=> b!1316496 m!1204205))

(assert (=> b!1316496 m!1204513))

(assert (=> b!1316496 m!1204513))

(assert (=> b!1316496 m!1204557))

(assert (=> b!1316305 d!142521))

(declare-fun d!142523 () Bool)

(declare-fun e!751044 () Bool)

(assert (=> d!142523 e!751044))

(declare-fun res!873995 () Bool)

(assert (=> d!142523 (=> (not res!873995) (not e!751044))))

(declare-fun lt!586147 () ListLongMap!20965)

(assert (=> d!142523 (= res!873995 (contains!8584 lt!586147 (_1!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(declare-fun lt!586146 () List!30464)

(assert (=> d!142523 (= lt!586147 (ListLongMap!20966 lt!586146))))

(declare-fun lt!586145 () Unit!43342)

(declare-fun lt!586148 () Unit!43342)

(assert (=> d!142523 (= lt!586145 lt!586148)))

(assert (=> d!142523 (= (getValueByKey!713 lt!586146 (_1!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(assert (=> d!142523 (= lt!586148 (lemmaContainsTupThenGetReturnValue!356 lt!586146 (_1!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)) (_2!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(assert (=> d!142523 (= lt!586146 (insertStrictlySorted!485 (toList!10498 call!64655) (_1!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)) (_2!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(assert (=> d!142523 (= (+!4478 call!64655 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)) lt!586147)))

(declare-fun b!1316497 () Bool)

(declare-fun res!873994 () Bool)

(assert (=> b!1316497 (=> (not res!873994) (not e!751044))))

(assert (=> b!1316497 (= res!873994 (= (getValueByKey!713 (toList!10498 lt!586147) (_1!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))))

(declare-fun b!1316498 () Bool)

(assert (=> b!1316498 (= e!751044 (contains!8587 (toList!10498 lt!586147) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))

(assert (= (and d!142523 res!873995) b!1316497))

(assert (= (and b!1316497 res!873994) b!1316498))

(declare-fun m!1204559 () Bool)

(assert (=> d!142523 m!1204559))

(declare-fun m!1204561 () Bool)

(assert (=> d!142523 m!1204561))

(declare-fun m!1204563 () Bool)

(assert (=> d!142523 m!1204563))

(declare-fun m!1204565 () Bool)

(assert (=> d!142523 m!1204565))

(declare-fun m!1204567 () Bool)

(assert (=> b!1316497 m!1204567))

(declare-fun m!1204569 () Bool)

(assert (=> b!1316498 m!1204569))

(assert (=> b!1316323 d!142523))

(declare-fun d!142525 () Bool)

(assert (=> d!142525 (isDefined!516 (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175))))

(declare-fun lt!586151 () Unit!43342)

(declare-fun choose!1953 (List!30464 (_ BitVec 64)) Unit!43342)

(assert (=> d!142525 (= lt!586151 (choose!1953 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175))))

(declare-fun e!751047 () Bool)

(assert (=> d!142525 e!751047))

(declare-fun res!873998 () Bool)

(assert (=> d!142525 (=> (not res!873998) (not e!751047))))

(declare-fun isStrictlySorted!872 (List!30464) Bool)

(assert (=> d!142525 (= res!873998 (isStrictlySorted!872 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))))))

(assert (=> d!142525 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175) lt!586151)))

(declare-fun b!1316501 () Bool)

(assert (=> b!1316501 (= e!751047 (containsKey!731 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175))))

(assert (= (and d!142525 res!873998) b!1316501))

(assert (=> d!142525 m!1204267))

(assert (=> d!142525 m!1204267))

(assert (=> d!142525 m!1204269))

(declare-fun m!1204571 () Bool)

(assert (=> d!142525 m!1204571))

(declare-fun m!1204573 () Bool)

(assert (=> d!142525 m!1204573))

(assert (=> b!1316501 m!1204263))

(assert (=> b!1316314 d!142525))

(declare-fun d!142527 () Bool)

(declare-fun isEmpty!1077 (Option!764) Bool)

(assert (=> d!142527 (= (isDefined!516 (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175)) (not (isEmpty!1077 (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175))))))

(declare-fun bs!37604 () Bool)

(assert (= bs!37604 d!142527))

(assert (=> bs!37604 m!1204267))

(declare-fun m!1204575 () Bool)

(assert (=> bs!37604 m!1204575))

(assert (=> b!1316314 d!142527))

(declare-fun b!1316510 () Bool)

(declare-fun e!751052 () Option!764)

(assert (=> b!1316510 (= e!751052 (Some!763 (_2!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))))))))

(declare-fun d!142529 () Bool)

(declare-fun c!125559 () Bool)

(assert (=> d!142529 (= c!125559 (and ((_ is Cons!30460) (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))) (= (_1!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)))) k0!1175)))))

(assert (=> d!142529 (= (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)) k0!1175) e!751052)))

(declare-fun e!751053 () Option!764)

(declare-fun b!1316512 () Bool)

(assert (=> b!1316512 (= e!751053 (getValueByKey!713 (t!44077 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))) k0!1175))))

(declare-fun b!1316511 () Bool)

(assert (=> b!1316511 (= e!751052 e!751053)))

(declare-fun c!125560 () Bool)

(assert (=> b!1316511 (= c!125560 (and ((_ is Cons!30460) (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357))) (not (= (_1!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357)))) k0!1175))))))

(declare-fun b!1316513 () Bool)

(assert (=> b!1316513 (= e!751053 None!762)))

(assert (= (and d!142529 c!125559) b!1316510))

(assert (= (and d!142529 (not c!125559)) b!1316511))

(assert (= (and b!1316511 c!125560) b!1316512))

(assert (= (and b!1316511 (not c!125560)) b!1316513))

(declare-fun m!1204577 () Bool)

(assert (=> b!1316512 m!1204577))

(assert (=> b!1316314 d!142529))

(declare-fun d!142531 () Bool)

(assert (=> d!142531 (isDefined!516 (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175))))

(declare-fun lt!586152 () Unit!43342)

(assert (=> d!142531 (= lt!586152 (choose!1953 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175))))

(declare-fun e!751054 () Bool)

(assert (=> d!142531 e!751054))

(declare-fun res!873999 () Bool)

(assert (=> d!142531 (=> (not res!873999) (not e!751054))))

(assert (=> d!142531 (= res!873999 (isStrictlySorted!872 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))))))

(assert (=> d!142531 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175) lt!586152)))

(declare-fun b!1316514 () Bool)

(assert (=> b!1316514 (= e!751054 (containsKey!731 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175))))

(assert (= (and d!142531 res!873999) b!1316514))

(assert (=> d!142531 m!1204201))

(assert (=> d!142531 m!1204201))

(assert (=> d!142531 m!1204203))

(declare-fun m!1204579 () Bool)

(assert (=> d!142531 m!1204579))

(declare-fun m!1204581 () Bool)

(assert (=> d!142531 m!1204581))

(assert (=> b!1316514 m!1204197))

(assert (=> b!1316246 d!142531))

(declare-fun d!142533 () Bool)

(assert (=> d!142533 (= (isDefined!516 (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175)) (not (isEmpty!1077 (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175))))))

(declare-fun bs!37605 () Bool)

(assert (= bs!37605 d!142533))

(assert (=> bs!37605 m!1204201))

(declare-fun m!1204583 () Bool)

(assert (=> bs!37605 m!1204583))

(assert (=> b!1316246 d!142533))

(declare-fun e!751055 () Option!764)

(declare-fun b!1316515 () Bool)

(assert (=> b!1316515 (= e!751055 (Some!763 (_2!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))))))))

(declare-fun c!125561 () Bool)

(declare-fun d!142535 () Bool)

(assert (=> d!142535 (= c!125561 (and ((_ is Cons!30460) (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))) (= (_1!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)))) k0!1175)))))

(assert (=> d!142535 (= (getValueByKey!713 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)) k0!1175) e!751055)))

(declare-fun b!1316517 () Bool)

(declare-fun e!751056 () Option!764)

(assert (=> b!1316517 (= e!751056 (getValueByKey!713 (t!44077 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))) k0!1175))))

(declare-fun b!1316516 () Bool)

(assert (=> b!1316516 (= e!751055 e!751056)))

(declare-fun c!125562 () Bool)

(assert (=> b!1316516 (= c!125562 (and ((_ is Cons!30460) (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357))) (not (= (_1!11658 (h!31669 (toList!10498 (getCurrentListMap!5454 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357)))) k0!1175))))))

(declare-fun b!1316518 () Bool)

(assert (=> b!1316518 (= e!751056 None!762)))

(assert (= (and d!142535 c!125561) b!1316515))

(assert (= (and d!142535 (not c!125561)) b!1316516))

(assert (= (and b!1316516 c!125562) b!1316517))

(assert (= (and b!1316516 (not c!125562)) b!1316518))

(declare-fun m!1204585 () Bool)

(assert (=> b!1316517 m!1204585))

(assert (=> b!1316246 d!142535))

(declare-fun d!142537 () Bool)

(assert (=> d!142537 (= (apply!1063 lt!586017 #b1000000000000000000000000000000000000000000000000000000000000000) (get!21494 (getValueByKey!713 (toList!10498 lt!586017) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37606 () Bool)

(assert (= bs!37606 d!142537))

(assert (=> bs!37606 m!1204345))

(assert (=> bs!37606 m!1204345))

(declare-fun m!1204587 () Bool)

(assert (=> bs!37606 m!1204587))

(assert (=> b!1316295 d!142537))

(declare-fun d!142539 () Bool)

(declare-fun e!751058 () Bool)

(assert (=> d!142539 e!751058))

(declare-fun res!874000 () Bool)

(assert (=> d!142539 (=> res!874000 e!751058)))

(declare-fun lt!586156 () Bool)

(assert (=> d!142539 (= res!874000 (not lt!586156))))

(declare-fun lt!586153 () Bool)

(assert (=> d!142539 (= lt!586156 lt!586153)))

(declare-fun lt!586155 () Unit!43342)

(declare-fun e!751057 () Unit!43342)

(assert (=> d!142539 (= lt!586155 e!751057)))

(declare-fun c!125563 () Bool)

(assert (=> d!142539 (= c!125563 lt!586153)))

(assert (=> d!142539 (= lt!586153 (containsKey!731 (toList!10498 lt!586043) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!142539 (= (contains!8584 lt!586043 #b1000000000000000000000000000000000000000000000000000000000000000) lt!586156)))

(declare-fun b!1316519 () Bool)

(declare-fun lt!586154 () Unit!43342)

(assert (=> b!1316519 (= e!751057 lt!586154)))

(assert (=> b!1316519 (= lt!586154 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 lt!586043) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1316519 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586043) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1316520 () Bool)

(declare-fun Unit!43352 () Unit!43342)

(assert (=> b!1316520 (= e!751057 Unit!43352)))

(declare-fun b!1316521 () Bool)

(assert (=> b!1316521 (= e!751058 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586043) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142539 c!125563) b!1316519))

(assert (= (and d!142539 (not c!125563)) b!1316520))

(assert (= (and d!142539 (not res!874000)) b!1316521))

(declare-fun m!1204589 () Bool)

(assert (=> d!142539 m!1204589))

(declare-fun m!1204591 () Bool)

(assert (=> b!1316519 m!1204591))

(assert (=> b!1316519 m!1204523))

(assert (=> b!1316519 m!1204523))

(declare-fun m!1204593 () Bool)

(assert (=> b!1316519 m!1204593))

(assert (=> b!1316521 m!1204523))

(assert (=> b!1316521 m!1204523))

(assert (=> b!1316521 m!1204593))

(assert (=> bm!64650 d!142539))

(declare-fun d!142541 () Bool)

(assert (=> d!142541 (= (apply!1063 (+!4478 lt!586003 (tuple2!23297 lt!586010 zeroValue!1296)) lt!586016) (apply!1063 lt!586003 lt!586016))))

(declare-fun lt!586157 () Unit!43342)

(assert (=> d!142541 (= lt!586157 (choose!1952 lt!586003 lt!586010 zeroValue!1296 lt!586016))))

(declare-fun e!751059 () Bool)

(assert (=> d!142541 e!751059))

(declare-fun res!874001 () Bool)

(assert (=> d!142541 (=> (not res!874001) (not e!751059))))

(assert (=> d!142541 (= res!874001 (contains!8584 lt!586003 lt!586016))))

(assert (=> d!142541 (= (addApplyDifferent!566 lt!586003 lt!586010 zeroValue!1296 lt!586016) lt!586157)))

(declare-fun b!1316522 () Bool)

(assert (=> b!1316522 (= e!751059 (not (= lt!586016 lt!586010)))))

(assert (= (and d!142541 res!874001) b!1316522))

(declare-fun m!1204595 () Bool)

(assert (=> d!142541 m!1204595))

(assert (=> d!142541 m!1204233))

(declare-fun m!1204597 () Bool)

(assert (=> d!142541 m!1204597))

(assert (=> d!142541 m!1204233))

(assert (=> d!142541 m!1204249))

(assert (=> d!142541 m!1204245))

(assert (=> b!1316292 d!142541))

(declare-fun d!142543 () Bool)

(declare-fun e!751060 () Bool)

(assert (=> d!142543 e!751060))

(declare-fun res!874003 () Bool)

(assert (=> d!142543 (=> (not res!874003) (not e!751060))))

(declare-fun lt!586160 () ListLongMap!20965)

(assert (=> d!142543 (= res!874003 (contains!8584 lt!586160 (_1!11658 (tuple2!23297 lt!586010 zeroValue!1296))))))

(declare-fun lt!586159 () List!30464)

(assert (=> d!142543 (= lt!586160 (ListLongMap!20966 lt!586159))))

(declare-fun lt!586158 () Unit!43342)

(declare-fun lt!586161 () Unit!43342)

(assert (=> d!142543 (= lt!586158 lt!586161)))

(assert (=> d!142543 (= (getValueByKey!713 lt!586159 (_1!11658 (tuple2!23297 lt!586010 zeroValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586010 zeroValue!1296))))))

(assert (=> d!142543 (= lt!586161 (lemmaContainsTupThenGetReturnValue!356 lt!586159 (_1!11658 (tuple2!23297 lt!586010 zeroValue!1296)) (_2!11658 (tuple2!23297 lt!586010 zeroValue!1296))))))

(assert (=> d!142543 (= lt!586159 (insertStrictlySorted!485 (toList!10498 lt!586003) (_1!11658 (tuple2!23297 lt!586010 zeroValue!1296)) (_2!11658 (tuple2!23297 lt!586010 zeroValue!1296))))))

(assert (=> d!142543 (= (+!4478 lt!586003 (tuple2!23297 lt!586010 zeroValue!1296)) lt!586160)))

(declare-fun b!1316523 () Bool)

(declare-fun res!874002 () Bool)

(assert (=> b!1316523 (=> (not res!874002) (not e!751060))))

(assert (=> b!1316523 (= res!874002 (= (getValueByKey!713 (toList!10498 lt!586160) (_1!11658 (tuple2!23297 lt!586010 zeroValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586010 zeroValue!1296)))))))

(declare-fun b!1316524 () Bool)

(assert (=> b!1316524 (= e!751060 (contains!8587 (toList!10498 lt!586160) (tuple2!23297 lt!586010 zeroValue!1296)))))

(assert (= (and d!142543 res!874003) b!1316523))

(assert (= (and b!1316523 res!874002) b!1316524))

(declare-fun m!1204599 () Bool)

(assert (=> d!142543 m!1204599))

(declare-fun m!1204601 () Bool)

(assert (=> d!142543 m!1204601))

(declare-fun m!1204603 () Bool)

(assert (=> d!142543 m!1204603))

(declare-fun m!1204605 () Bool)

(assert (=> d!142543 m!1204605))

(declare-fun m!1204607 () Bool)

(assert (=> b!1316523 m!1204607))

(declare-fun m!1204609 () Bool)

(assert (=> b!1316524 m!1204609))

(assert (=> b!1316292 d!142543))

(declare-fun d!142545 () Bool)

(declare-fun e!751062 () Bool)

(assert (=> d!142545 e!751062))

(declare-fun res!874004 () Bool)

(assert (=> d!142545 (=> res!874004 e!751062)))

(declare-fun lt!586165 () Bool)

(assert (=> d!142545 (= res!874004 (not lt!586165))))

(declare-fun lt!586162 () Bool)

(assert (=> d!142545 (= lt!586165 lt!586162)))

(declare-fun lt!586164 () Unit!43342)

(declare-fun e!751061 () Unit!43342)

(assert (=> d!142545 (= lt!586164 e!751061)))

(declare-fun c!125564 () Bool)

(assert (=> d!142545 (= c!125564 lt!586162)))

(assert (=> d!142545 (= lt!586162 (containsKey!731 (toList!10498 (+!4478 lt!586014 (tuple2!23297 lt!586000 zeroValue!1296))) lt!586018))))

(assert (=> d!142545 (= (contains!8584 (+!4478 lt!586014 (tuple2!23297 lt!586000 zeroValue!1296)) lt!586018) lt!586165)))

(declare-fun b!1316525 () Bool)

(declare-fun lt!586163 () Unit!43342)

(assert (=> b!1316525 (= e!751061 lt!586163)))

(assert (=> b!1316525 (= lt!586163 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 (+!4478 lt!586014 (tuple2!23297 lt!586000 zeroValue!1296))) lt!586018))))

(assert (=> b!1316525 (isDefined!516 (getValueByKey!713 (toList!10498 (+!4478 lt!586014 (tuple2!23297 lt!586000 zeroValue!1296))) lt!586018))))

(declare-fun b!1316526 () Bool)

(declare-fun Unit!43353 () Unit!43342)

(assert (=> b!1316526 (= e!751061 Unit!43353)))

(declare-fun b!1316527 () Bool)

(assert (=> b!1316527 (= e!751062 (isDefined!516 (getValueByKey!713 (toList!10498 (+!4478 lt!586014 (tuple2!23297 lt!586000 zeroValue!1296))) lt!586018)))))

(assert (= (and d!142545 c!125564) b!1316525))

(assert (= (and d!142545 (not c!125564)) b!1316526))

(assert (= (and d!142545 (not res!874004)) b!1316527))

(declare-fun m!1204611 () Bool)

(assert (=> d!142545 m!1204611))

(declare-fun m!1204613 () Bool)

(assert (=> b!1316525 m!1204613))

(declare-fun m!1204615 () Bool)

(assert (=> b!1316525 m!1204615))

(assert (=> b!1316525 m!1204615))

(declare-fun m!1204617 () Bool)

(assert (=> b!1316525 m!1204617))

(assert (=> b!1316527 m!1204615))

(assert (=> b!1316527 m!1204615))

(assert (=> b!1316527 m!1204617))

(assert (=> b!1316292 d!142545))

(declare-fun d!142547 () Bool)

(declare-fun e!751063 () Bool)

(assert (=> d!142547 e!751063))

(declare-fun res!874006 () Bool)

(assert (=> d!142547 (=> (not res!874006) (not e!751063))))

(declare-fun lt!586168 () ListLongMap!20965)

(assert (=> d!142547 (= res!874006 (contains!8584 lt!586168 (_1!11658 (tuple2!23297 lt!586000 zeroValue!1296))))))

(declare-fun lt!586167 () List!30464)

(assert (=> d!142547 (= lt!586168 (ListLongMap!20966 lt!586167))))

(declare-fun lt!586166 () Unit!43342)

(declare-fun lt!586169 () Unit!43342)

(assert (=> d!142547 (= lt!586166 lt!586169)))

(assert (=> d!142547 (= (getValueByKey!713 lt!586167 (_1!11658 (tuple2!23297 lt!586000 zeroValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586000 zeroValue!1296))))))

(assert (=> d!142547 (= lt!586169 (lemmaContainsTupThenGetReturnValue!356 lt!586167 (_1!11658 (tuple2!23297 lt!586000 zeroValue!1296)) (_2!11658 (tuple2!23297 lt!586000 zeroValue!1296))))))

(assert (=> d!142547 (= lt!586167 (insertStrictlySorted!485 (toList!10498 lt!586014) (_1!11658 (tuple2!23297 lt!586000 zeroValue!1296)) (_2!11658 (tuple2!23297 lt!586000 zeroValue!1296))))))

(assert (=> d!142547 (= (+!4478 lt!586014 (tuple2!23297 lt!586000 zeroValue!1296)) lt!586168)))

(declare-fun b!1316528 () Bool)

(declare-fun res!874005 () Bool)

(assert (=> b!1316528 (=> (not res!874005) (not e!751063))))

(assert (=> b!1316528 (= res!874005 (= (getValueByKey!713 (toList!10498 lt!586168) (_1!11658 (tuple2!23297 lt!586000 zeroValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586000 zeroValue!1296)))))))

(declare-fun b!1316529 () Bool)

(assert (=> b!1316529 (= e!751063 (contains!8587 (toList!10498 lt!586168) (tuple2!23297 lt!586000 zeroValue!1296)))))

(assert (= (and d!142547 res!874006) b!1316528))

(assert (= (and b!1316528 res!874005) b!1316529))

(declare-fun m!1204619 () Bool)

(assert (=> d!142547 m!1204619))

(declare-fun m!1204621 () Bool)

(assert (=> d!142547 m!1204621))

(declare-fun m!1204623 () Bool)

(assert (=> d!142547 m!1204623))

(declare-fun m!1204625 () Bool)

(assert (=> d!142547 m!1204625))

(declare-fun m!1204627 () Bool)

(assert (=> b!1316528 m!1204627))

(declare-fun m!1204629 () Bool)

(assert (=> b!1316529 m!1204629))

(assert (=> b!1316292 d!142547))

(declare-fun d!142549 () Bool)

(assert (=> d!142549 (= (apply!1063 (+!4478 lt!585999 (tuple2!23297 lt!586012 minValue!1296)) lt!586002) (get!21494 (getValueByKey!713 (toList!10498 (+!4478 lt!585999 (tuple2!23297 lt!586012 minValue!1296))) lt!586002)))))

(declare-fun bs!37607 () Bool)

(assert (= bs!37607 d!142549))

(declare-fun m!1204631 () Bool)

(assert (=> bs!37607 m!1204631))

(assert (=> bs!37607 m!1204631))

(declare-fun m!1204633 () Bool)

(assert (=> bs!37607 m!1204633))

(assert (=> b!1316292 d!142549))

(declare-fun b!1316530 () Bool)

(declare-fun res!874008 () Bool)

(declare-fun e!751070 () Bool)

(assert (=> b!1316530 (=> (not res!874008) (not e!751070))))

(declare-fun lt!586176 () ListLongMap!20965)

(assert (=> b!1316530 (= res!874008 (not (contains!8584 lt!586176 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1316531 () Bool)

(declare-fun e!751065 () ListLongMap!20965)

(declare-fun e!751068 () ListLongMap!20965)

(assert (=> b!1316531 (= e!751065 e!751068)))

(declare-fun c!125567 () Bool)

(assert (=> b!1316531 (= c!125567 (validKeyInArray!0 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))))))

(declare-fun d!142551 () Bool)

(assert (=> d!142551 e!751070))

(declare-fun res!874010 () Bool)

(assert (=> d!142551 (=> (not res!874010) (not e!751070))))

(assert (=> d!142551 (= res!874010 (not (contains!8584 lt!586176 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!142551 (= lt!586176 e!751065)))

(declare-fun c!125568 () Bool)

(assert (=> d!142551 (= c!125568 (bvsge (bvadd #b00000000000000000000000000000001 from!2020) (size!43218 _keys!1628)))))

(assert (=> d!142551 (validMask!0 mask!2040)))

(assert (=> d!142551 (= (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) lt!586176)))

(declare-fun b!1316532 () Bool)

(declare-fun e!751064 () Bool)

(declare-fun e!751067 () Bool)

(assert (=> b!1316532 (= e!751064 e!751067)))

(assert (=> b!1316532 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2020) (size!43218 _keys!1628)))))

(declare-fun res!874007 () Bool)

(assert (=> b!1316532 (= res!874007 (contains!8584 lt!586176 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))))))

(assert (=> b!1316532 (=> (not res!874007) (not e!751067))))

(declare-fun b!1316533 () Bool)

(declare-fun e!751066 () Bool)

(assert (=> b!1316533 (= e!751066 (validKeyInArray!0 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))))))

(assert (=> b!1316533 (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000)))

(declare-fun b!1316534 () Bool)

(assert (=> b!1316534 (= e!751065 (ListLongMap!20966 Nil!30461))))

(declare-fun b!1316535 () Bool)

(assert (=> b!1316535 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2020) (size!43218 _keys!1628)))))

(assert (=> b!1316535 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2020) (size!43219 _values!1354)))))

(assert (=> b!1316535 (= e!751067 (= (apply!1063 lt!586176 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020))) (get!21493 (select (arr!42668 _values!1354) (bvadd #b00000000000000000000000000000001 from!2020)) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!751069 () Bool)

(declare-fun b!1316536 () Bool)

(assert (=> b!1316536 (= e!751069 (= lt!586176 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020 #b00000000000000000000000000000001) defaultEntry!1357)))))

(declare-fun b!1316537 () Bool)

(declare-fun lt!586172 () Unit!43342)

(declare-fun lt!586175 () Unit!43342)

(assert (=> b!1316537 (= lt!586172 lt!586175)))

(declare-fun lt!586171 () (_ BitVec 64))

(declare-fun lt!586174 () (_ BitVec 64))

(declare-fun lt!586173 () ListLongMap!20965)

(declare-fun lt!586170 () V!52747)

(assert (=> b!1316537 (not (contains!8584 (+!4478 lt!586173 (tuple2!23297 lt!586174 lt!586170)) lt!586171))))

(assert (=> b!1316537 (= lt!586175 (addStillNotContains!501 lt!586173 lt!586174 lt!586170 lt!586171))))

(assert (=> b!1316537 (= lt!586171 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1316537 (= lt!586170 (get!21493 (select (arr!42668 _values!1354) (bvadd #b00000000000000000000000000000001 from!2020)) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1316537 (= lt!586174 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020)))))

(declare-fun call!64668 () ListLongMap!20965)

(assert (=> b!1316537 (= lt!586173 call!64668)))

(assert (=> b!1316537 (= e!751068 (+!4478 call!64668 (tuple2!23297 (select (arr!42667 _keys!1628) (bvadd #b00000000000000000000000000000001 from!2020)) (get!21493 (select (arr!42668 _values!1354) (bvadd #b00000000000000000000000000000001 from!2020)) (dynLambda!3515 defaultEntry!1357 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!64665 () Bool)

(assert (=> bm!64665 (= call!64668 (getCurrentListMapNoExtraKeys!6193 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020 #b00000000000000000000000000000001) defaultEntry!1357))))

(declare-fun b!1316538 () Bool)

(assert (=> b!1316538 (= e!751070 e!751064)))

(declare-fun c!125566 () Bool)

(assert (=> b!1316538 (= c!125566 e!751066)))

(declare-fun res!874009 () Bool)

(assert (=> b!1316538 (=> (not res!874009) (not e!751066))))

(assert (=> b!1316538 (= res!874009 (bvslt (bvadd #b00000000000000000000000000000001 from!2020) (size!43218 _keys!1628)))))

(declare-fun b!1316539 () Bool)

(assert (=> b!1316539 (= e!751069 (isEmpty!1076 lt!586176))))

(declare-fun b!1316540 () Bool)

(assert (=> b!1316540 (= e!751064 e!751069)))

(declare-fun c!125565 () Bool)

(assert (=> b!1316540 (= c!125565 (bvslt (bvadd #b00000000000000000000000000000001 from!2020) (size!43218 _keys!1628)))))

(declare-fun b!1316541 () Bool)

(assert (=> b!1316541 (= e!751068 call!64668)))

(assert (= (and d!142551 c!125568) b!1316534))

(assert (= (and d!142551 (not c!125568)) b!1316531))

(assert (= (and b!1316531 c!125567) b!1316537))

(assert (= (and b!1316531 (not c!125567)) b!1316541))

(assert (= (or b!1316537 b!1316541) bm!64665))

(assert (= (and d!142551 res!874010) b!1316530))

(assert (= (and b!1316530 res!874008) b!1316538))

(assert (= (and b!1316538 res!874009) b!1316533))

(assert (= (and b!1316538 c!125566) b!1316532))

(assert (= (and b!1316538 (not c!125566)) b!1316540))

(assert (= (and b!1316532 res!874007) b!1316535))

(assert (= (and b!1316540 c!125565) b!1316536))

(assert (= (and b!1316540 (not c!125565)) b!1316539))

(declare-fun b_lambda!23385 () Bool)

(assert (=> (not b_lambda!23385) (not b!1316535)))

(assert (=> b!1316535 t!44082))

(declare-fun b_and!48233 () Bool)

(assert (= b_and!48231 (and (=> t!44082 result!23873) b_and!48233)))

(declare-fun b_lambda!23387 () Bool)

(assert (=> (not b_lambda!23387) (not b!1316537)))

(assert (=> b!1316537 t!44082))

(declare-fun b_and!48235 () Bool)

(assert (= b_and!48233 (and (=> t!44082 result!23873) b_and!48235)))

(declare-fun m!1204635 () Bool)

(assert (=> bm!64665 m!1204635))

(assert (=> b!1316533 m!1204205))

(assert (=> b!1316533 m!1204205))

(assert (=> b!1316533 m!1204211))

(assert (=> b!1316536 m!1204635))

(declare-fun m!1204637 () Bool)

(assert (=> b!1316530 m!1204637))

(assert (=> b!1316532 m!1204205))

(assert (=> b!1316532 m!1204205))

(declare-fun m!1204639 () Bool)

(assert (=> b!1316532 m!1204639))

(assert (=> b!1316531 m!1204205))

(assert (=> b!1316531 m!1204205))

(assert (=> b!1316531 m!1204211))

(assert (=> b!1316535 m!1204205))

(declare-fun m!1204641 () Bool)

(assert (=> b!1316535 m!1204641))

(assert (=> b!1316535 m!1204217))

(assert (=> b!1316535 m!1204217))

(assert (=> b!1316535 m!1204219))

(assert (=> b!1316535 m!1204221))

(assert (=> b!1316535 m!1204205))

(assert (=> b!1316535 m!1204219))

(assert (=> b!1316537 m!1204217))

(declare-fun m!1204643 () Bool)

(assert (=> b!1316537 m!1204643))

(declare-fun m!1204645 () Bool)

(assert (=> b!1316537 m!1204645))

(declare-fun m!1204647 () Bool)

(assert (=> b!1316537 m!1204647))

(assert (=> b!1316537 m!1204217))

(assert (=> b!1316537 m!1204219))

(assert (=> b!1316537 m!1204221))

(declare-fun m!1204649 () Bool)

(assert (=> b!1316537 m!1204649))

(assert (=> b!1316537 m!1204645))

(assert (=> b!1316537 m!1204205))

(assert (=> b!1316537 m!1204219))

(declare-fun m!1204651 () Bool)

(assert (=> d!142551 m!1204651))

(assert (=> d!142551 m!1204163))

(declare-fun m!1204653 () Bool)

(assert (=> b!1316539 m!1204653))

(assert (=> b!1316292 d!142551))

(declare-fun d!142553 () Bool)

(assert (=> d!142553 (= (apply!1063 (+!4478 lt!586001 (tuple2!23297 lt!586015 minValue!1296)) lt!585998) (get!21494 (getValueByKey!713 (toList!10498 (+!4478 lt!586001 (tuple2!23297 lt!586015 minValue!1296))) lt!585998)))))

(declare-fun bs!37608 () Bool)

(assert (= bs!37608 d!142553))

(declare-fun m!1204655 () Bool)

(assert (=> bs!37608 m!1204655))

(assert (=> bs!37608 m!1204655))

(declare-fun m!1204657 () Bool)

(assert (=> bs!37608 m!1204657))

(assert (=> b!1316292 d!142553))

(declare-fun d!142555 () Bool)

(assert (=> d!142555 (= (apply!1063 (+!4478 lt!586003 (tuple2!23297 lt!586010 zeroValue!1296)) lt!586016) (get!21494 (getValueByKey!713 (toList!10498 (+!4478 lt!586003 (tuple2!23297 lt!586010 zeroValue!1296))) lt!586016)))))

(declare-fun bs!37609 () Bool)

(assert (= bs!37609 d!142555))

(declare-fun m!1204659 () Bool)

(assert (=> bs!37609 m!1204659))

(assert (=> bs!37609 m!1204659))

(declare-fun m!1204661 () Bool)

(assert (=> bs!37609 m!1204661))

(assert (=> b!1316292 d!142555))

(declare-fun d!142557 () Bool)

(assert (=> d!142557 (= (apply!1063 lt!585999 lt!586002) (get!21494 (getValueByKey!713 (toList!10498 lt!585999) lt!586002)))))

(declare-fun bs!37610 () Bool)

(assert (= bs!37610 d!142557))

(declare-fun m!1204663 () Bool)

(assert (=> bs!37610 m!1204663))

(assert (=> bs!37610 m!1204663))

(declare-fun m!1204665 () Bool)

(assert (=> bs!37610 m!1204665))

(assert (=> b!1316292 d!142557))

(declare-fun d!142559 () Bool)

(assert (=> d!142559 (= (apply!1063 lt!586003 lt!586016) (get!21494 (getValueByKey!713 (toList!10498 lt!586003) lt!586016)))))

(declare-fun bs!37611 () Bool)

(assert (= bs!37611 d!142559))

(declare-fun m!1204667 () Bool)

(assert (=> bs!37611 m!1204667))

(assert (=> bs!37611 m!1204667))

(declare-fun m!1204669 () Bool)

(assert (=> bs!37611 m!1204669))

(assert (=> b!1316292 d!142559))

(declare-fun d!142561 () Bool)

(assert (=> d!142561 (= (apply!1063 (+!4478 lt!586001 (tuple2!23297 lt!586015 minValue!1296)) lt!585998) (apply!1063 lt!586001 lt!585998))))

(declare-fun lt!586177 () Unit!43342)

(assert (=> d!142561 (= lt!586177 (choose!1952 lt!586001 lt!586015 minValue!1296 lt!585998))))

(declare-fun e!751071 () Bool)

(assert (=> d!142561 e!751071))

(declare-fun res!874011 () Bool)

(assert (=> d!142561 (=> (not res!874011) (not e!751071))))

(assert (=> d!142561 (= res!874011 (contains!8584 lt!586001 lt!585998))))

(assert (=> d!142561 (= (addApplyDifferent!566 lt!586001 lt!586015 minValue!1296 lt!585998) lt!586177)))

(declare-fun b!1316542 () Bool)

(assert (=> b!1316542 (= e!751071 (not (= lt!585998 lt!586015)))))

(assert (= (and d!142561 res!874011) b!1316542))

(declare-fun m!1204671 () Bool)

(assert (=> d!142561 m!1204671))

(assert (=> d!142561 m!1204235))

(declare-fun m!1204673 () Bool)

(assert (=> d!142561 m!1204673))

(assert (=> d!142561 m!1204235))

(assert (=> d!142561 m!1204239))

(assert (=> d!142561 m!1204237))

(assert (=> b!1316292 d!142561))

(declare-fun d!142563 () Bool)

(declare-fun e!751072 () Bool)

(assert (=> d!142563 e!751072))

(declare-fun res!874013 () Bool)

(assert (=> d!142563 (=> (not res!874013) (not e!751072))))

(declare-fun lt!586180 () ListLongMap!20965)

(assert (=> d!142563 (= res!874013 (contains!8584 lt!586180 (_1!11658 (tuple2!23297 lt!586012 minValue!1296))))))

(declare-fun lt!586179 () List!30464)

(assert (=> d!142563 (= lt!586180 (ListLongMap!20966 lt!586179))))

(declare-fun lt!586178 () Unit!43342)

(declare-fun lt!586181 () Unit!43342)

(assert (=> d!142563 (= lt!586178 lt!586181)))

(assert (=> d!142563 (= (getValueByKey!713 lt!586179 (_1!11658 (tuple2!23297 lt!586012 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586012 minValue!1296))))))

(assert (=> d!142563 (= lt!586181 (lemmaContainsTupThenGetReturnValue!356 lt!586179 (_1!11658 (tuple2!23297 lt!586012 minValue!1296)) (_2!11658 (tuple2!23297 lt!586012 minValue!1296))))))

(assert (=> d!142563 (= lt!586179 (insertStrictlySorted!485 (toList!10498 lt!585999) (_1!11658 (tuple2!23297 lt!586012 minValue!1296)) (_2!11658 (tuple2!23297 lt!586012 minValue!1296))))))

(assert (=> d!142563 (= (+!4478 lt!585999 (tuple2!23297 lt!586012 minValue!1296)) lt!586180)))

(declare-fun b!1316543 () Bool)

(declare-fun res!874012 () Bool)

(assert (=> b!1316543 (=> (not res!874012) (not e!751072))))

(assert (=> b!1316543 (= res!874012 (= (getValueByKey!713 (toList!10498 lt!586180) (_1!11658 (tuple2!23297 lt!586012 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586012 minValue!1296)))))))

(declare-fun b!1316544 () Bool)

(assert (=> b!1316544 (= e!751072 (contains!8587 (toList!10498 lt!586180) (tuple2!23297 lt!586012 minValue!1296)))))

(assert (= (and d!142563 res!874013) b!1316543))

(assert (= (and b!1316543 res!874012) b!1316544))

(declare-fun m!1204675 () Bool)

(assert (=> d!142563 m!1204675))

(declare-fun m!1204677 () Bool)

(assert (=> d!142563 m!1204677))

(declare-fun m!1204679 () Bool)

(assert (=> d!142563 m!1204679))

(declare-fun m!1204681 () Bool)

(assert (=> d!142563 m!1204681))

(declare-fun m!1204683 () Bool)

(assert (=> b!1316543 m!1204683))

(declare-fun m!1204685 () Bool)

(assert (=> b!1316544 m!1204685))

(assert (=> b!1316292 d!142563))

(declare-fun d!142565 () Bool)

(assert (=> d!142565 (= (apply!1063 (+!4478 lt!585999 (tuple2!23297 lt!586012 minValue!1296)) lt!586002) (apply!1063 lt!585999 lt!586002))))

(declare-fun lt!586182 () Unit!43342)

(assert (=> d!142565 (= lt!586182 (choose!1952 lt!585999 lt!586012 minValue!1296 lt!586002))))

(declare-fun e!751073 () Bool)

(assert (=> d!142565 e!751073))

(declare-fun res!874014 () Bool)

(assert (=> d!142565 (=> (not res!874014) (not e!751073))))

(assert (=> d!142565 (= res!874014 (contains!8584 lt!585999 lt!586002))))

(assert (=> d!142565 (= (addApplyDifferent!566 lt!585999 lt!586012 minValue!1296 lt!586002) lt!586182)))

(declare-fun b!1316545 () Bool)

(assert (=> b!1316545 (= e!751073 (not (= lt!586002 lt!586012)))))

(assert (= (and d!142565 res!874014) b!1316545))

(declare-fun m!1204687 () Bool)

(assert (=> d!142565 m!1204687))

(assert (=> d!142565 m!1204241))

(declare-fun m!1204689 () Bool)

(assert (=> d!142565 m!1204689))

(assert (=> d!142565 m!1204241))

(assert (=> d!142565 m!1204253))

(assert (=> d!142565 m!1204229))

(assert (=> b!1316292 d!142565))

(declare-fun d!142567 () Bool)

(assert (=> d!142567 (= (apply!1063 lt!586001 lt!585998) (get!21494 (getValueByKey!713 (toList!10498 lt!586001) lt!585998)))))

(declare-fun bs!37612 () Bool)

(assert (= bs!37612 d!142567))

(declare-fun m!1204691 () Bool)

(assert (=> bs!37612 m!1204691))

(assert (=> bs!37612 m!1204691))

(declare-fun m!1204693 () Bool)

(assert (=> bs!37612 m!1204693))

(assert (=> b!1316292 d!142567))

(declare-fun d!142569 () Bool)

(declare-fun e!751074 () Bool)

(assert (=> d!142569 e!751074))

(declare-fun res!874016 () Bool)

(assert (=> d!142569 (=> (not res!874016) (not e!751074))))

(declare-fun lt!586185 () ListLongMap!20965)

(assert (=> d!142569 (= res!874016 (contains!8584 lt!586185 (_1!11658 (tuple2!23297 lt!586015 minValue!1296))))))

(declare-fun lt!586184 () List!30464)

(assert (=> d!142569 (= lt!586185 (ListLongMap!20966 lt!586184))))

(declare-fun lt!586183 () Unit!43342)

(declare-fun lt!586186 () Unit!43342)

(assert (=> d!142569 (= lt!586183 lt!586186)))

(assert (=> d!142569 (= (getValueByKey!713 lt!586184 (_1!11658 (tuple2!23297 lt!586015 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586015 minValue!1296))))))

(assert (=> d!142569 (= lt!586186 (lemmaContainsTupThenGetReturnValue!356 lt!586184 (_1!11658 (tuple2!23297 lt!586015 minValue!1296)) (_2!11658 (tuple2!23297 lt!586015 minValue!1296))))))

(assert (=> d!142569 (= lt!586184 (insertStrictlySorted!485 (toList!10498 lt!586001) (_1!11658 (tuple2!23297 lt!586015 minValue!1296)) (_2!11658 (tuple2!23297 lt!586015 minValue!1296))))))

(assert (=> d!142569 (= (+!4478 lt!586001 (tuple2!23297 lt!586015 minValue!1296)) lt!586185)))

(declare-fun b!1316546 () Bool)

(declare-fun res!874015 () Bool)

(assert (=> b!1316546 (=> (not res!874015) (not e!751074))))

(assert (=> b!1316546 (= res!874015 (= (getValueByKey!713 (toList!10498 lt!586185) (_1!11658 (tuple2!23297 lt!586015 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 lt!586015 minValue!1296)))))))

(declare-fun b!1316547 () Bool)

(assert (=> b!1316547 (= e!751074 (contains!8587 (toList!10498 lt!586185) (tuple2!23297 lt!586015 minValue!1296)))))

(assert (= (and d!142569 res!874016) b!1316546))

(assert (= (and b!1316546 res!874015) b!1316547))

(declare-fun m!1204695 () Bool)

(assert (=> d!142569 m!1204695))

(declare-fun m!1204697 () Bool)

(assert (=> d!142569 m!1204697))

(declare-fun m!1204699 () Bool)

(assert (=> d!142569 m!1204699))

(declare-fun m!1204701 () Bool)

(assert (=> d!142569 m!1204701))

(declare-fun m!1204703 () Bool)

(assert (=> b!1316546 m!1204703))

(declare-fun m!1204705 () Bool)

(assert (=> b!1316547 m!1204705))

(assert (=> b!1316292 d!142569))

(declare-fun d!142571 () Bool)

(assert (=> d!142571 (contains!8584 (+!4478 lt!586014 (tuple2!23297 lt!586000 zeroValue!1296)) lt!586018)))

(declare-fun lt!586187 () Unit!43342)

(assert (=> d!142571 (= lt!586187 (choose!1951 lt!586014 lt!586000 zeroValue!1296 lt!586018))))

(assert (=> d!142571 (contains!8584 lt!586014 lt!586018)))

(assert (=> d!142571 (= (addStillContains!1132 lt!586014 lt!586000 zeroValue!1296 lt!586018) lt!586187)))

(declare-fun bs!37613 () Bool)

(assert (= bs!37613 d!142571))

(assert (=> bs!37613 m!1204223))

(assert (=> bs!37613 m!1204223))

(assert (=> bs!37613 m!1204251))

(declare-fun m!1204707 () Bool)

(assert (=> bs!37613 m!1204707))

(declare-fun m!1204709 () Bool)

(assert (=> bs!37613 m!1204709))

(assert (=> b!1316292 d!142571))

(assert (=> b!1316326 d!142443))

(assert (=> b!1316293 d!142457))

(assert (=> bm!64642 d!142551))

(declare-fun d!142573 () Bool)

(declare-fun e!751076 () Bool)

(assert (=> d!142573 e!751076))

(declare-fun res!874017 () Bool)

(assert (=> d!142573 (=> res!874017 e!751076)))

(declare-fun lt!586191 () Bool)

(assert (=> d!142573 (= res!874017 (not lt!586191))))

(declare-fun lt!586188 () Bool)

(assert (=> d!142573 (= lt!586191 lt!586188)))

(declare-fun lt!586190 () Unit!43342)

(declare-fun e!751075 () Unit!43342)

(assert (=> d!142573 (= lt!586190 e!751075)))

(declare-fun c!125569 () Bool)

(assert (=> d!142573 (= c!125569 lt!586188)))

(assert (=> d!142573 (= lt!586188 (containsKey!731 (toList!10498 lt!586043) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!142573 (= (contains!8584 lt!586043 #b0000000000000000000000000000000000000000000000000000000000000000) lt!586191)))

(declare-fun b!1316548 () Bool)

(declare-fun lt!586189 () Unit!43342)

(assert (=> b!1316548 (= e!751075 lt!586189)))

(assert (=> b!1316548 (= lt!586189 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 lt!586043) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1316548 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586043) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1316549 () Bool)

(declare-fun Unit!43354 () Unit!43342)

(assert (=> b!1316549 (= e!751075 Unit!43354)))

(declare-fun b!1316550 () Bool)

(assert (=> b!1316550 (= e!751076 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586043) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142573 c!125569) b!1316548))

(assert (= (and d!142573 (not c!125569)) b!1316549))

(assert (= (and d!142573 (not res!874017)) b!1316550))

(declare-fun m!1204711 () Bool)

(assert (=> d!142573 m!1204711))

(declare-fun m!1204713 () Bool)

(assert (=> b!1316548 m!1204713))

(assert (=> b!1316548 m!1204501))

(assert (=> b!1316548 m!1204501))

(declare-fun m!1204715 () Bool)

(assert (=> b!1316548 m!1204715))

(assert (=> b!1316550 m!1204501))

(assert (=> b!1316550 m!1204501))

(assert (=> b!1316550 m!1204715))

(assert (=> bm!64652 d!142573))

(declare-fun d!142575 () Bool)

(declare-fun e!751077 () Bool)

(assert (=> d!142575 e!751077))

(declare-fun res!874019 () Bool)

(assert (=> d!142575 (=> (not res!874019) (not e!751077))))

(declare-fun lt!586194 () ListLongMap!20965)

(assert (=> d!142575 (= res!874019 (contains!8584 lt!586194 (_1!11658 (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))))

(declare-fun lt!586193 () List!30464)

(assert (=> d!142575 (= lt!586194 (ListLongMap!20966 lt!586193))))

(declare-fun lt!586192 () Unit!43342)

(declare-fun lt!586195 () Unit!43342)

(assert (=> d!142575 (= lt!586192 lt!586195)))

(assert (=> d!142575 (= (getValueByKey!713 lt!586193 (_1!11658 (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))) (Some!763 (_2!11658 (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))))

(assert (=> d!142575 (= lt!586195 (lemmaContainsTupThenGetReturnValue!356 lt!586193 (_1!11658 (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))) (_2!11658 (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))))

(assert (=> d!142575 (= lt!586193 (insertStrictlySorted!485 (toList!10498 (ite c!125512 call!64652 (ite c!125515 call!64651 call!64656))) (_1!11658 (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))) (_2!11658 (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))))

(assert (=> d!142575 (= (+!4478 (ite c!125512 call!64652 (ite c!125515 call!64651 call!64656)) (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))) lt!586194)))

(declare-fun b!1316551 () Bool)

(declare-fun res!874018 () Bool)

(assert (=> b!1316551 (=> (not res!874018) (not e!751077))))

(assert (=> b!1316551 (= res!874018 (= (getValueByKey!713 (toList!10498 lt!586194) (_1!11658 (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))) (Some!763 (_2!11658 (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))))

(declare-fun b!1316552 () Bool)

(assert (=> b!1316552 (= e!751077 (contains!8587 (toList!10498 lt!586194) (ite (or c!125512 c!125515) (tuple2!23297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1296) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(assert (= (and d!142575 res!874019) b!1316551))

(assert (= (and b!1316551 res!874018) b!1316552))

(declare-fun m!1204717 () Bool)

(assert (=> d!142575 m!1204717))

(declare-fun m!1204719 () Bool)

(assert (=> d!142575 m!1204719))

(declare-fun m!1204721 () Bool)

(assert (=> d!142575 m!1204721))

(declare-fun m!1204723 () Bool)

(assert (=> d!142575 m!1204723))

(declare-fun m!1204725 () Bool)

(assert (=> b!1316551 m!1204725))

(declare-fun m!1204727 () Bool)

(assert (=> b!1316552 m!1204727))

(assert (=> bm!64651 d!142575))

(assert (=> b!1316316 d!142527))

(assert (=> b!1316316 d!142529))

(assert (=> b!1316248 d!142533))

(assert (=> b!1316248 d!142535))

(declare-fun d!142577 () Bool)

(declare-fun e!751078 () Bool)

(assert (=> d!142577 e!751078))

(declare-fun res!874021 () Bool)

(assert (=> d!142577 (=> (not res!874021) (not e!751078))))

(declare-fun lt!586198 () ListLongMap!20965)

(assert (=> d!142577 (= res!874021 (contains!8584 lt!586198 (_1!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(declare-fun lt!586197 () List!30464)

(assert (=> d!142577 (= lt!586198 (ListLongMap!20966 lt!586197))))

(declare-fun lt!586196 () Unit!43342)

(declare-fun lt!586199 () Unit!43342)

(assert (=> d!142577 (= lt!586196 lt!586199)))

(assert (=> d!142577 (= (getValueByKey!713 lt!586197 (_1!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(assert (=> d!142577 (= lt!586199 (lemmaContainsTupThenGetReturnValue!356 lt!586197 (_1!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)) (_2!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(assert (=> d!142577 (= lt!586197 (insertStrictlySorted!485 (toList!10498 call!64648) (_1!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)) (_2!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))))))

(assert (=> d!142577 (= (+!4478 call!64648 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)) lt!586198)))

(declare-fun b!1316553 () Bool)

(declare-fun res!874020 () Bool)

(assert (=> b!1316553 (=> (not res!874020) (not e!751078))))

(assert (=> b!1316553 (= res!874020 (= (getValueByKey!713 (toList!10498 lt!586198) (_1!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296))) (Some!763 (_2!11658 (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))))

(declare-fun b!1316554 () Bool)

(assert (=> b!1316554 (= e!751078 (contains!8587 (toList!10498 lt!586198) (tuple2!23297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1296)))))

(assert (= (and d!142577 res!874021) b!1316553))

(assert (= (and b!1316553 res!874020) b!1316554))

(declare-fun m!1204729 () Bool)

(assert (=> d!142577 m!1204729))

(declare-fun m!1204731 () Bool)

(assert (=> d!142577 m!1204731))

(declare-fun m!1204733 () Bool)

(assert (=> d!142577 m!1204733))

(declare-fun m!1204735 () Bool)

(assert (=> d!142577 m!1204735))

(declare-fun m!1204737 () Bool)

(assert (=> b!1316553 m!1204737))

(declare-fun m!1204739 () Bool)

(assert (=> b!1316554 m!1204739))

(assert (=> b!1316297 d!142577))

(declare-fun d!142579 () Bool)

(assert (=> d!142579 (= (apply!1063 lt!586017 #b0000000000000000000000000000000000000000000000000000000000000000) (get!21494 (getValueByKey!713 (toList!10498 lt!586017) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37614 () Bool)

(assert (= bs!37614 d!142579))

(assert (=> bs!37614 m!1204509))

(assert (=> bs!37614 m!1204509))

(declare-fun m!1204741 () Bool)

(assert (=> bs!37614 m!1204741))

(assert (=> b!1316298 d!142579))

(declare-fun d!142581 () Bool)

(declare-fun e!751080 () Bool)

(assert (=> d!142581 e!751080))

(declare-fun res!874022 () Bool)

(assert (=> d!142581 (=> res!874022 e!751080)))

(declare-fun lt!586203 () Bool)

(assert (=> d!142581 (= res!874022 (not lt!586203))))

(declare-fun lt!586200 () Bool)

(assert (=> d!142581 (= lt!586203 lt!586200)))

(declare-fun lt!586202 () Unit!43342)

(declare-fun e!751079 () Unit!43342)

(assert (=> d!142581 (= lt!586202 e!751079)))

(declare-fun c!125570 () Bool)

(assert (=> d!142581 (= c!125570 lt!586200)))

(assert (=> d!142581 (= lt!586200 (containsKey!731 (toList!10498 lt!586043) (select (arr!42667 _keys!1628) from!2020)))))

(assert (=> d!142581 (= (contains!8584 lt!586043 (select (arr!42667 _keys!1628) from!2020)) lt!586203)))

(declare-fun b!1316555 () Bool)

(declare-fun lt!586201 () Unit!43342)

(assert (=> b!1316555 (= e!751079 lt!586201)))

(assert (=> b!1316555 (= lt!586201 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!10498 lt!586043) (select (arr!42667 _keys!1628) from!2020)))))

(assert (=> b!1316555 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586043) (select (arr!42667 _keys!1628) from!2020)))))

(declare-fun b!1316556 () Bool)

(declare-fun Unit!43355 () Unit!43342)

(assert (=> b!1316556 (= e!751079 Unit!43355)))

(declare-fun b!1316557 () Bool)

(assert (=> b!1316557 (= e!751080 (isDefined!516 (getValueByKey!713 (toList!10498 lt!586043) (select (arr!42667 _keys!1628) from!2020))))))

(assert (= (and d!142581 c!125570) b!1316555))

(assert (= (and d!142581 (not c!125570)) b!1316556))

(assert (= (and d!142581 (not res!874022)) b!1316557))

(assert (=> d!142581 m!1204169))

(declare-fun m!1204743 () Bool)

(assert (=> d!142581 m!1204743))

(assert (=> b!1316555 m!1204169))

(declare-fun m!1204745 () Bool)

(assert (=> b!1316555 m!1204745))

(assert (=> b!1316555 m!1204169))

(assert (=> b!1316555 m!1204361))

(assert (=> b!1316555 m!1204361))

(declare-fun m!1204747 () Bool)

(assert (=> b!1316555 m!1204747))

(assert (=> b!1316557 m!1204169))

(assert (=> b!1316557 m!1204361))

(assert (=> b!1316557 m!1204361))

(assert (=> b!1316557 m!1204747))

(assert (=> b!1316331 d!142581))

(declare-fun mapIsEmpty!55235 () Bool)

(declare-fun mapRes!55235 () Bool)

(assert (=> mapIsEmpty!55235 mapRes!55235))

(declare-fun b!1316559 () Bool)

(declare-fun e!751082 () Bool)

(assert (=> b!1316559 (= e!751082 tp_is_empty!35733)))

(declare-fun b!1316558 () Bool)

(declare-fun e!751081 () Bool)

(assert (=> b!1316558 (= e!751081 tp_is_empty!35733)))

(declare-fun condMapEmpty!55235 () Bool)

(declare-fun mapDefault!55235 () ValueCell!16968)

(assert (=> mapNonEmpty!55234 (= condMapEmpty!55235 (= mapRest!55234 ((as const (Array (_ BitVec 32) ValueCell!16968)) mapDefault!55235)))))

(assert (=> mapNonEmpty!55234 (= tp!105341 (and e!751082 mapRes!55235))))

(declare-fun mapNonEmpty!55235 () Bool)

(declare-fun tp!105342 () Bool)

(assert (=> mapNonEmpty!55235 (= mapRes!55235 (and tp!105342 e!751081))))

(declare-fun mapRest!55235 () (Array (_ BitVec 32) ValueCell!16968))

(declare-fun mapKey!55235 () (_ BitVec 32))

(declare-fun mapValue!55235 () ValueCell!16968)

(assert (=> mapNonEmpty!55235 (= mapRest!55234 (store mapRest!55235 mapKey!55235 mapValue!55235))))

(assert (= (and mapNonEmpty!55234 condMapEmpty!55235) mapIsEmpty!55235))

(assert (= (and mapNonEmpty!55234 (not condMapEmpty!55235)) mapNonEmpty!55235))

(assert (= (and mapNonEmpty!55235 ((_ is ValueCellFull!16968) mapValue!55235)) b!1316558))

(assert (= (and mapNonEmpty!55234 ((_ is ValueCellFull!16968) mapDefault!55235)) b!1316559))

(declare-fun m!1204749 () Bool)

(assert (=> mapNonEmpty!55235 m!1204749))

(declare-fun b_lambda!23389 () Bool)

(assert (= b_lambda!23385 (or (and start!111204 b_free!30003) b_lambda!23389)))

(declare-fun b_lambda!23391 () Bool)

(assert (= b_lambda!23387 (or (and start!111204 b_free!30003) b_lambda!23391)))

(declare-fun b_lambda!23393 () Bool)

(assert (= b_lambda!23381 (or (and start!111204 b_free!30003) b_lambda!23393)))

(declare-fun b_lambda!23395 () Bool)

(assert (= b_lambda!23383 (or (and start!111204 b_free!30003) b_lambda!23395)))

(check-sat (not b!1316461) (not b!1316399) (not d!142565) (not b!1316393) (not bm!64665) (not d!142467) (not b_next!30003) (not b!1316497) (not b!1316458) (not b!1316550) (not b!1316439) (not d!142539) (not d!142523) (not d!142471) (not bm!64663) (not d!142491) (not d!142577) (not d!142511) (not b!1316543) (not b!1316436) (not b!1316501) (not d!142581) (not b!1316447) (not b_lambda!23393) (not b!1316435) (not b_lambda!23389) (not b!1316523) (not d!142525) (not b!1316407) (not d!142501) (not b_lambda!23379) (not d!142475) (not d!142483) (not d!142489) (not b!1316463) (not b!1316403) (not b!1316537) (not d!142545) (not b!1316524) (not bm!64662) (not b!1316406) (not d!142505) (not b_lambda!23391) (not b!1316443) (not d!142487) (not d!142473) (not d!142517) (not d!142465) (not b!1316450) (not b!1316459) (not b!1316532) (not b!1316530) (not d!142533) (not b!1316544) (not d!142551) (not b!1316557) (not b!1316512) (not b!1316380) (not d!142553) (not b!1316494) (not b!1316437) (not d!142547) (not b!1316535) (not d!142453) (not b!1316536) (not b!1316490) (not b!1316387) (not b!1316547) (not b!1316553) (not d!142563) (not b!1316528) (not d!142521) (not b!1316539) (not b!1316527) (not b!1316375) (not b!1316448) (not d!142513) (not d!142569) (not d!142559) (not b!1316471) (not b!1316521) (not d!142579) (not b!1316408) (not b!1316449) (not d!142459) (not b!1316517) (not d!142495) (not d!142477) (not b!1316531) (not b!1316548) (not d!142531) (not b!1316434) (not b!1316533) (not d!142567) (not b!1316496) (not b!1316440) (not b!1316386) (not d!142527) (not b!1316525) (not b!1316555) tp_is_empty!35733 b_and!48235 (not b!1316462) (not b!1316405) (not b!1316465) (not bm!64664) (not d!142541) (not d!142575) (not b!1316529) (not b!1316487) (not d!142573) (not b!1316551) (not b!1316373) (not d!142455) (not b_lambda!23377) (not b!1316519) (not d!142493) (not d!142499) (not d!142479) (not b!1316546) (not b!1316554) (not d!142537) (not mapNonEmpty!55235) (not d!142555) (not b!1316514) (not d!142481) (not b!1316446) (not d!142549) (not d!142543) (not b!1316493) (not b!1316381) (not d!142571) (not d!142557) (not d!142503) (not b!1316552) (not b!1316401) (not b!1316404) (not d!142469) (not b!1316441) (not d!142561) (not b_lambda!23395) (not d!142485) (not b!1316498))
(check-sat b_and!48235 (not b_next!30003))
