; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112268 () Bool)

(assert start!112268)

(declare-fun b_free!30627 () Bool)

(declare-fun b_next!30627 () Bool)

(assert (=> start!112268 (= b_free!30627 (not b_next!30627))))

(declare-fun tp!107518 () Bool)

(declare-fun b_and!49319 () Bool)

(assert (=> start!112268 (= tp!107518 b_and!49319)))

(declare-fun b!1329374 () Bool)

(declare-fun res!882148 () Bool)

(declare-fun e!757878 () Bool)

(assert (=> b!1329374 (=> (not res!882148) (not e!757878))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!89929 0))(
  ( (array!89930 (arr!43426 (Array (_ BitVec 32) (_ BitVec 64))) (size!43977 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89929)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1329374 (= res!882148 (not (= (select (arr!43426 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1329375 () Bool)

(declare-fun res!882142 () Bool)

(assert (=> b!1329375 (=> (not res!882142) (not e!757878))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329375 (= res!882142 (validKeyInArray!0 (select (arr!43426 _keys!1590) from!1980)))))

(declare-fun b!1329376 () Bool)

(declare-fun e!757877 () Bool)

(declare-fun tp_is_empty!36537 () Bool)

(assert (=> b!1329376 (= e!757877 tp_is_empty!36537)))

(declare-fun b!1329377 () Bool)

(declare-fun res!882146 () Bool)

(assert (=> b!1329377 (=> (not res!882146) (not e!757878))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89929 (_ BitVec 32)) Bool)

(assert (=> b!1329377 (= res!882146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329378 () Bool)

(declare-fun res!882149 () Bool)

(assert (=> b!1329378 (=> (not res!882149) (not e!757878))))

(declare-datatypes ((V!53819 0))(
  ( (V!53820 (val!18343 Int)) )
))
(declare-datatypes ((ValueCell!17370 0))(
  ( (ValueCellFull!17370 (v!20978 V!53819)) (EmptyCell!17370) )
))
(declare-datatypes ((array!89931 0))(
  ( (array!89932 (arr!43427 (Array (_ BitVec 32) ValueCell!17370)) (size!43978 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89931)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1329378 (= res!882149 (and (= (size!43978 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43977 _keys!1590) (size!43978 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329379 () Bool)

(declare-fun res!882141 () Bool)

(assert (=> b!1329379 (=> (not res!882141) (not e!757878))))

(assert (=> b!1329379 (= res!882141 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329380 () Bool)

(declare-fun res!882144 () Bool)

(assert (=> b!1329380 (=> (not res!882144) (not e!757878))))

(declare-datatypes ((List!30950 0))(
  ( (Nil!30947) (Cons!30946 (h!32155 (_ BitVec 64)) (t!44997 List!30950)) )
))
(declare-fun arrayNoDuplicates!0 (array!89929 (_ BitVec 32) List!30950) Bool)

(assert (=> b!1329380 (= res!882144 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30947))))

(declare-fun b!1329381 () Bool)

(assert (=> b!1329381 (= e!757878 (not true))))

(declare-datatypes ((tuple2!23760 0))(
  ( (tuple2!23761 (_1!11890 (_ BitVec 64)) (_2!11890 V!53819)) )
))
(declare-datatypes ((List!30951 0))(
  ( (Nil!30948) (Cons!30947 (h!32156 tuple2!23760) (t!44998 List!30951)) )
))
(declare-datatypes ((ListLongMap!21429 0))(
  ( (ListLongMap!21430 (toList!10730 List!30951)) )
))
(declare-fun lt!590893 () ListLongMap!21429)

(declare-fun contains!8830 (ListLongMap!21429 (_ BitVec 64)) Bool)

(assert (=> b!1329381 (contains!8830 lt!590893 k0!1153)))

(declare-datatypes ((Unit!43681 0))(
  ( (Unit!43682) )
))
(declare-fun lt!590894 () Unit!43681)

(declare-fun minValue!1262 () V!53819)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!232 ((_ BitVec 64) (_ BitVec 64) V!53819 ListLongMap!21429) Unit!43681)

(assert (=> b!1329381 (= lt!590894 (lemmaInListMapAfterAddingDiffThenInBefore!232 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590893))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!53819)

(declare-fun +!4627 (ListLongMap!21429 tuple2!23760) ListLongMap!21429)

(declare-fun getCurrentListMapNoExtraKeys!6345 (array!89929 array!89931 (_ BitVec 32) (_ BitVec 32) V!53819 V!53819 (_ BitVec 32) Int) ListLongMap!21429)

(declare-fun get!21921 (ValueCell!17370 V!53819) V!53819)

(declare-fun dynLambda!3664 (Int (_ BitVec 64)) V!53819)

(assert (=> b!1329381 (= lt!590893 (+!4627 (getCurrentListMapNoExtraKeys!6345 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23761 (select (arr!43426 _keys!1590) from!1980) (get!21921 (select (arr!43427 _values!1320) from!1980) (dynLambda!3664 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329382 () Bool)

(declare-fun e!757879 () Bool)

(declare-fun mapRes!56479 () Bool)

(assert (=> b!1329382 (= e!757879 (and e!757877 mapRes!56479))))

(declare-fun condMapEmpty!56479 () Bool)

(declare-fun mapDefault!56479 () ValueCell!17370)

(assert (=> b!1329382 (= condMapEmpty!56479 (= (arr!43427 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17370)) mapDefault!56479)))))

(declare-fun mapIsEmpty!56479 () Bool)

(assert (=> mapIsEmpty!56479 mapRes!56479))

(declare-fun res!882147 () Bool)

(assert (=> start!112268 (=> (not res!882147) (not e!757878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112268 (= res!882147 (validMask!0 mask!1998))))

(assert (=> start!112268 e!757878))

(declare-fun array_inv!32715 (array!89931) Bool)

(assert (=> start!112268 (and (array_inv!32715 _values!1320) e!757879)))

(assert (=> start!112268 true))

(declare-fun array_inv!32716 (array!89929) Bool)

(assert (=> start!112268 (array_inv!32716 _keys!1590)))

(assert (=> start!112268 tp!107518))

(assert (=> start!112268 tp_is_empty!36537))

(declare-fun b!1329383 () Bool)

(declare-fun e!757876 () Bool)

(assert (=> b!1329383 (= e!757876 tp_is_empty!36537)))

(declare-fun mapNonEmpty!56479 () Bool)

(declare-fun tp!107519 () Bool)

(assert (=> mapNonEmpty!56479 (= mapRes!56479 (and tp!107519 e!757876))))

(declare-fun mapKey!56479 () (_ BitVec 32))

(declare-fun mapRest!56479 () (Array (_ BitVec 32) ValueCell!17370))

(declare-fun mapValue!56479 () ValueCell!17370)

(assert (=> mapNonEmpty!56479 (= (arr!43427 _values!1320) (store mapRest!56479 mapKey!56479 mapValue!56479))))

(declare-fun b!1329384 () Bool)

(declare-fun res!882143 () Bool)

(assert (=> b!1329384 (=> (not res!882143) (not e!757878))))

(declare-fun getCurrentListMap!5662 (array!89929 array!89931 (_ BitVec 32) (_ BitVec 32) V!53819 V!53819 (_ BitVec 32) Int) ListLongMap!21429)

(assert (=> b!1329384 (= res!882143 (contains!8830 (getCurrentListMap!5662 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1329385 () Bool)

(declare-fun res!882145 () Bool)

(assert (=> b!1329385 (=> (not res!882145) (not e!757878))))

(assert (=> b!1329385 (= res!882145 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43977 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!112268 res!882147) b!1329378))

(assert (= (and b!1329378 res!882149) b!1329377))

(assert (= (and b!1329377 res!882146) b!1329380))

(assert (= (and b!1329380 res!882144) b!1329385))

(assert (= (and b!1329385 res!882145) b!1329384))

(assert (= (and b!1329384 res!882143) b!1329374))

(assert (= (and b!1329374 res!882148) b!1329375))

(assert (= (and b!1329375 res!882142) b!1329379))

(assert (= (and b!1329379 res!882141) b!1329381))

(assert (= (and b!1329382 condMapEmpty!56479) mapIsEmpty!56479))

(assert (= (and b!1329382 (not condMapEmpty!56479)) mapNonEmpty!56479))

(get-info :version)

(assert (= (and mapNonEmpty!56479 ((_ is ValueCellFull!17370) mapValue!56479)) b!1329383))

(assert (= (and b!1329382 ((_ is ValueCellFull!17370) mapDefault!56479)) b!1329376))

(assert (= start!112268 b!1329382))

(declare-fun b_lambda!23897 () Bool)

(assert (=> (not b_lambda!23897) (not b!1329381)))

(declare-fun t!44996 () Bool)

(declare-fun tb!11851 () Bool)

(assert (=> (and start!112268 (= defaultEntry!1323 defaultEntry!1323) t!44996) tb!11851))

(declare-fun result!24765 () Bool)

(assert (=> tb!11851 (= result!24765 tp_is_empty!36537)))

(assert (=> b!1329381 t!44996))

(declare-fun b_and!49321 () Bool)

(assert (= b_and!49319 (and (=> t!44996 result!24765) b_and!49321)))

(declare-fun m!1218169 () Bool)

(assert (=> start!112268 m!1218169))

(declare-fun m!1218171 () Bool)

(assert (=> start!112268 m!1218171))

(declare-fun m!1218173 () Bool)

(assert (=> start!112268 m!1218173))

(declare-fun m!1218175 () Bool)

(assert (=> b!1329374 m!1218175))

(declare-fun m!1218177 () Bool)

(assert (=> b!1329380 m!1218177))

(declare-fun m!1218179 () Bool)

(assert (=> b!1329381 m!1218179))

(declare-fun m!1218181 () Bool)

(assert (=> b!1329381 m!1218181))

(assert (=> b!1329381 m!1218179))

(declare-fun m!1218183 () Bool)

(assert (=> b!1329381 m!1218183))

(declare-fun m!1218185 () Bool)

(assert (=> b!1329381 m!1218185))

(assert (=> b!1329381 m!1218181))

(declare-fun m!1218187 () Bool)

(assert (=> b!1329381 m!1218187))

(assert (=> b!1329381 m!1218175))

(declare-fun m!1218189 () Bool)

(assert (=> b!1329381 m!1218189))

(assert (=> b!1329381 m!1218185))

(declare-fun m!1218191 () Bool)

(assert (=> b!1329381 m!1218191))

(declare-fun m!1218193 () Bool)

(assert (=> b!1329384 m!1218193))

(assert (=> b!1329384 m!1218193))

(declare-fun m!1218195 () Bool)

(assert (=> b!1329384 m!1218195))

(assert (=> b!1329375 m!1218175))

(assert (=> b!1329375 m!1218175))

(declare-fun m!1218197 () Bool)

(assert (=> b!1329375 m!1218197))

(declare-fun m!1218199 () Bool)

(assert (=> b!1329377 m!1218199))

(declare-fun m!1218201 () Bool)

(assert (=> mapNonEmpty!56479 m!1218201))

(check-sat b_and!49321 (not b_lambda!23897) tp_is_empty!36537 (not b!1329381) (not b!1329380) (not b!1329384) (not mapNonEmpty!56479) (not start!112268) (not b!1329375) (not b_next!30627) (not b!1329377))
(check-sat b_and!49321 (not b_next!30627))
